#!/usr/bin/env ruby
# Lightweight, dependency-free checks for the canonical Jekyll build.
require "json"
require "yaml"

ROOT = File.expand_path("..", __dir__)
errors = []

def read_json(path)
  JSON.parse(File.read(path))
rescue JSON::ParserError => e
  raise "#{path}: #{e.message}"
end

business = read_json(File.join(ROOT, "_data/business.json"))
routes = YAML.safe_load(File.read(File.join(ROOT, "_data/route_registry.yml")), permitted_classes: [], aliases: false)
services = YAML.safe_load(File.read(File.join(ROOT, "_data/service_lines.yml")), permitted_classes: [], aliases: false)
scopes = YAML.safe_load(File.read(File.join(ROOT, "_data/scopes.yml")), permitted_classes: [], aliases: false)

%w[name domain canonical_url email phone_display phone_tel founder].each do |key|
  errors << "business missing #{key}" if business[key].nil? || business[key].to_s.empty?
end

paths = routes.map { |route| route.fetch("path") }
errors << "duplicate routes" unless paths.uniq.length == paths.length
routes.each do |route|
  next unless route["index"]
  path = route["path"] == "/" ? "index.md" : File.join(route["path"], "index.md")
  errors << "missing route source #{path}" unless File.exist?(File.join(ROOT, path))
end

service_ids = services.map { |service| service.fetch("id") }
errors << "duplicate service ids" unless service_ids.uniq.length == service_ids.length
scopes.each do |scope|
  errors << "scope #{scope["id"]} points at unknown service" unless service_ids.include?(scope["service"])
end

%w[serviceGeography insuranceStatement legalEntity businessHours].each do |key|
  value = business[key] || business[key.gsub(/[A-Z]/) { |match| "_#{match.downcase}" }]
  next unless value.to_s.include?("UNRESOLVED")
  warn "UNRESOLVED: #{key}"
end

%w[assets/brand/steadymark-wordmark-primary.svg assets/brand/steadymark-wordmark-primary-white.svg assets/favicons/steadymark-favicon.svg assets/photography/hero.png].each do |asset|
  errors << "missing asset #{asset}" unless File.exist?(File.join(ROOT, asset))
end

workflow = File.join(ROOT, ".github/workflows/pages.yml")
errors << "missing GitHub Pages workflow" unless File.exist?(workflow)
if File.exist?(workflow)
  workflow_source = File.read(workflow)
  errors << "workflow does not build with Jekyll" unless workflow_source.include?("bundle exec jekyll build")
  errors << "workflow does not deploy Pages artifact" unless workflow_source.include?("actions/deploy-pages")
end
errors << "missing Request Work backend plan" unless File.exist?(File.join(ROOT, "docs/request-work-backend-integration-plan.md"))

source = Dir[File.join(ROOT, "**/*.{md,html}")].reject { |path| path.include?("steadymark-property-services-handoff") }.map { |path| File.read(path) }.join("\n")
errors << "reference images imported into production" if source.include?("assets/references")
if errors.empty?
  puts "SteadyMark launch checks passed: #{routes.length} registered routes, #{services.length} service lines, #{scopes.length} representative scopes."
else
  warn errors.map { |error| "ERROR: #{error}" }
  exit 1
end
