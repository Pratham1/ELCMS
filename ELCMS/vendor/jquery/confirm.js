$('#reg_Password, #reg_confirm_pwd').on('keyup', function () {
  if ($('#reg_Password').val() == $('#reg_confirm_pwd').val()) {
    $('#message').html('Matching').css('color', 'green');
	$('#btn_register').attr('disabled',false);
  } else {
	$('#btn_register').attr('disabled',true);
    $('#message').html('Not Matching').css('color', 'red');
  }
});