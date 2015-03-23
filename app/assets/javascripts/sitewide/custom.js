/*-------------- Custom Quilt -----------------*/
/* The following two functions are for displaying and hidding the pantograph_patterns. */
function templetsclick_custom(check) {
	if (check == 1) {
		document.getElementById('custom_pantograph_patterns').value = "Templet 1";
		document.getElementById('img1').style.border = "1px solid #000000";
		document.getElementById('img3').style.border = "none";
		document.getElementById('img2').style.display = "block";
		document.getElementById('img4').style.display = "none";
	} else if (check == 2) {
		document.getElementById('img3').style.border = "1px solid #000000";
		document.getElementById('img1').style.border = "none";
		document.getElementById('img4').style.display = "block";
		document.getElementById('img2').style.display = "none";
		document.getElementById('custom_pantograph_patterns').value = "Templet 2";
	}	
}
/* Size Calculation */
function sizeCalc_custom() {
	debugger;
	var size_cost = 0;
	var quilting_cost = 0;
	var width = document.getElementById('width').value;
	var length = document.getElementById('length').value;
	var size = width * length;
	document.getElementById('size').innerHTML = size + " sq in";
	var size_cost = size * .115;
	document.getElementById('size_total').innerHTML = "$" + size_cost.toFixed(2);
	if (width > 90 && length > 90) {
		alert('Your width and length can not both be above 90 inches.');
		document.getElementById('width').value = 0;
		document.getElementById('length').value = 0;
	}
	subtotalCalc_custom();
}
/* Quilting Calculation */
function quiltingCalc_custom(check) {
	debugger;
	if (check == 1) {
		document.getElementById('meandering_section').style.display = "none";
		document.getElementById('pantograph_image1').style.display = "block";
		document.getElementById('pantograph_image2').style.display = "block";
		document.getElementById('custom_quilting').value = "Pantograph";
		if (document.getElementById('pantograph').checked == false) {
			document.getElementById('pantograph_section').style.display = "block";
			document.getElementById('meandering_section').style.display = "block";
			document.getElementById('img1').style.border = "none";
			document.getElementById('pantograph_image1').style.display = "none";
			document.getElementById('img2').style.display = "none";
			document.getElementById('img3').style.border = "none";
			document.getElementById('pantograph_image2').style.display = "none";
			document.getElementById('img4').style.display = "none";
		}
	} else if (check == 2) {
		document.getElementById('pantograph_section').style.display = "none";
		document.getElementById('custom_quilting').value = "Meandering";
		if (document.getElementById('meandering').checked == false) {
			document.getElementById('pantograph_section').style.display = "block";
			document.getElementById('meandering_section').style.display = "block";
		}
	}
	if (document.getElementById('pantograph').checked == false && document.getElementById('meandering').checked == false) {
	document.getElementById('custom_quilting').value = "N/A";
	}
}
/* Subtotal Calculation */
function subtotalCalc_custom(element) {
	debugger;
	var size_cost = 0;
	var quilting_cost = 0;
	var width = document.getElementById('width').value;
	var length = document.getElementById('length').value;
	var size = width * length;
	document.getElementById('size').innerHTML = size + " sq in";
	document.getElementById('custom_size').value = size + " sq in";
	var size_cost = size * .115;
	document.getElementById('size_total').innerHTML = "$" + size_cost.toFixed(2);
	
	document.getElementById('custom_quilting').value = "N/A";
	



	var subtotal = size_cost;
	document.getElementById('total').innerHTML = "$" + subtotal.toFixed(2);
	document.getElementById('custom_total').value = subtotal;
}
/*-------------- Custom Quilt -----------------*/