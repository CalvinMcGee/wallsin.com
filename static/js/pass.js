jQuery(function($){
	$('#pass').submit(function(){
		var identifier = $('#identifier').val();
		var password = $('#password').val();
		var salt = '58756879c05c68dfac9866712fad6b63f8146f337a69afe7dd238f33649463';

		var hash = CryptoJS.SHA256(identifier + password + salt);

		window.prompt("Kopiera till utklipp: Ctrl+C eller Enter", hash);

		identifier.val();
		password.val();
	return false;
	})
})
