$(document).ready(function() {

  // Hide modal on submit.
  $('#modal-window').click(function(e) {
      $('form').submit(function() {
        $('#modal-window').modal('hide');
      });
  });
});
