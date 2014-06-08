$(document).ready(function(){
	$('#new_step').hide();
	$('#new-step-link').click(function(e) {
		e.preventDefault();
		$('#new_step').toggle();
		return false;
	});
	$('#new_step').bind('ajax:success', function(e, response) {
		$("#steps-list").append('<li>'+response+'</li>');
		$("#new_step").hide();
		$("#new_step")[0].reset();
	});
});