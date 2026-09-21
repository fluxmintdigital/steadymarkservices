(function () {
  var form = document.getElementById('request-work-form');
  if (!form) return;
  var params = new URLSearchParams(window.location.search);
  var allowed = ['repair', 'turn', 'punch', 'recurring', 'unsure'];
  var requested = params.get('context');
  if (allowed.indexOf(requested) !== -1) {
    var radio = form.querySelector('input[name="context"][value="' + requested + '"]');
    if (radio) radio.checked = true;
  }
  form.addEventListener('submit', function (event) {
    var honeypot = form.querySelector('#website');
    var status = document.getElementById('form-status');
    if (honeypot && honeypot.value) { event.preventDefault(); return; }
    if (!form.checkValidity()) {
      event.preventDefault();
      status.textContent = 'Please complete the required fields before preparing the request.';
      form.reportValidity();
      return;
    }
    status.textContent = 'Preparing an email with the details you provided…';
  });
}());
