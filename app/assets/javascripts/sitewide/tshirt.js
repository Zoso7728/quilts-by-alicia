/*-------------- T-Shirt Quilt -----------------*/
function tshirt_Calculation() {
	var size_value = document.getElementById('input').value;
	if (document.getElementById('input').value == undefined) {
		var total = 0;
	}
	var total = size_value * 20;
	document.getElementById('total').innerHTML = "$" + total + ".00";
	document.getElementById('tshirt_total').value = "$" + total + ".00";
}
/*-------------- T-Shirt Quilt -----------------*/