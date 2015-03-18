function submitCheck() {
	if (document.getElementById('photo_memory_name').value == "Sample Name") {
		alert('Pleas fill out all of the contact information and be sure to enter a width or length if specified.');
	} else if (document.getElementById('email').value == "sample@name.com") {
		alert('Pleas fill out all of the contact information and be sure to enter a width or length if specified.');
	} else if (document.getElementById('tel').value == "123-456-7890") {
		alert('Pleas fill out all of the contact information and be sure to enter a width or length if specified.');
	}
	if (document.getElementById('width').value == "0" || document.getElementById('length').value == "0") {
		alert('Pleas fill out all of the contact information and be sure to enter a width or length if specified.');
	}
}








