/**
 * 验证非空
 * @param {Object} obj
 * @return {TypeName} 
 */
function checkNull(obj) {
	if (obj == "") {
		return true;
	}
	return false;
}

//
function checkAll(check) {
	var checkinput = document.getElementsByTagName("input");

	for ( var i = 0; i < checkinput.length; i++) {
		if (checkinput[i].type == "checkbox") {
			checkinput[i].checked = check.checked;
		}
	}
}


function commCheck(val, msg) {
	var rs = checkNull(val.value);
	var $doc = $(val);

	if (rs == true) {
		$doc.next().html(msg);
	}
}

function checkdeleteMore(url) {
	var checkinput = document.getElementsByTagName("input");
	var str = "";
	for ( var i = 0; i < checkinput.length; i++) {
		if (checkinput[i].type == "checkbox") {
			if (checkinput[i].checked) {
				str += checkinput[i].value + ",";
			}
		}
	}

	return str;
}

/**
 * 验证复选框非空
 * @param {Object} obj
 * @return {TypeName} 
 */
function checkChb() {

	var checkinput = document.getElementsByTagName("input");
	var str = "";
	for ( var i = 0; i < checkinput.length; i++) {
		if (checkinput[i].type == "checkbox") {
			if (checkinput[i].checked) {
				str += checkinput[i].value + ",";
			}
		}
	}

	return str;
	}
