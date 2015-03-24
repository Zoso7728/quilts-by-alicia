/*-------------- Photo Memory Quilt -----------------*/
function small() {
	var total = 450;
	document.getElementById('total').innerHTML = "$450.00";
	document.getElementById('photo_memory_total').value = total;
	document.getElementById('photo_memory_size').value = "Small";
	document.getElementById('but-2').checked = false;
	document.getElementById('but-3').checked = false;
	if (document.getElementById('but-1').checked == false) {
		var total = 0;
		document.getElementById('total').innerHTML = "$0.00";
		document.getElementById('photo_memory_total').value = total;
		document.getElementById('photo_memory_size').value = "N/A";
	}
}

function medium() {
	var total = 600;
	document.getElementById('total').innerHTML = "$600.00";
	document.getElementById('photo_memory_total').value = total;
	document.getElementById('photo_memory_size').value = "Medium";
	document.getElementById('but-1').checked = false;
	document.getElementById('but-3').checked = false;
	if (document.getElementById('but-2').checked == false) {
		var total = 0;
		document.getElementById('total').innerHTML = "$0.00";
		document.getElementById('photo_memory_total').value = total;
		document.getElementById('photo_memory_size').value = "N/A";
	}
}

function large() {
	var total = 850;
	document.getElementById('total').innerHTML = "$850.00";
	document.getElementById('photo_memory_total').value = total;
	document.getElementById('photo_memory_size').value = "Large";
	document.getElementById('but-1').checked = false;
	document.getElementById('but-2').checked = false;
	if (document.getElementById('but-3').checked == false) {
		var total = 0;
		document.getElementById('total').innerHTML = "$0.00";
		document.getElementById('photo_memory_total').value = total;
		document.getElementById('photo_memory_size').value = "N/A";
	}
}
/*-------------- Photo Memory Quilt -----------------*/
