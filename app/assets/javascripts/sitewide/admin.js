/* Admin Tab jQuerry */
$(document).ready(function() {
    $('.tabs .tab-links a').on('click', function(e)  {
        var currentAttrValue = $(this).attr('href');
 
        // Show/Hide Tabs
        $('.tabs ' + currentAttrValue).show().siblings().hide();
 
        // Change/remove current tab to active
        $(this).parent('li').addClass('active').siblings().removeClass('active');
 
        e.preventDefault();
    });
});
/*  */
function add_notes_function() {
	var names = document.getElementById(notes_name);
	alert(names);
}





function username() {
	var username = document.getElementById('username').value;
	var usernameValue = "marques";
	if (username == usernameValue) {
		return;
	} else {
		alert('Wrong Username');
		document.getElementById('username').value = "Username";
	}
}
function password() {
	var password = document.getElementById('password').value;
	var passwordValue = "robinson";
	if (password == passwordValue) {
		return;
	} else {
		alert('Wrong Password');
		document.getElementById('password').value = "Password";
	}
}



function login() {
	var username = document.getElementById('username').value;
	var usernameValue = "marques";
	var password = document.getElementById('password').value;
	var passwordValue = "robinson";
	if (username == usernameValue && password == passwordValue) {
		return;
	} else {
		alert('Wrong Username and/or Password');
		document.getElementById('username').value = "Username";		
		document.getElementById('password').value = "Password";
		location.reload(false);
	}
}

// document.getElementById('login').onkeydown = function(event) {
//     if (event.keyCode == 13) {
//        alert('Wrong Username and/or Password');
// 			document.getElementById('username').value = "Username";		
// 			document.getElementById('password').value = "Password";
// 			location.reload(false);
//     }
// }








