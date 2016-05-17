$(document).ready(function() {
	$("#btnUpload").click(function() {
		getSubmitDateTime();
		checkform();
	})
	
	$("#btnSubmit").click(function() {
		$("#form").submit();
	})
});

function getSubmitDateTime() {
	var date = new Date();
	var month = new Array();
	month[0] = "January";
	month[1] = "February";
	month[2] = "March";
	month[3] = "April";
	month[4] = "May";
	month[5] = "June";
	month[6] = "July";
	month[7] = "August";
	month[8] = "September";
	month[9] = "October";
	month[10] = "November";
	month[11] = "December";

	var hours = date.getHours();
	var minutes = date.getMinutes();
	var ampm = hours >= 12 ? 'pm' : 'am';
	hours = hours % 12;
	hours = hours ? hours : 12; // the hour '0' should be '12'
	minutes = minutes < 10 ? '0' + minutes : minutes;
	var strTime = hours + ':' + minutes + ' ' + ampm;

	$("#date").html(
			month[date.getMonth()] + " " + date.getDate() + ", "
					+ date.getFullYear());
	$("#time").html(hours + ":" + minutes + " " + ampm);
}

function getCategory() {
	var $categories = $("[name^='sCategory']");

	$categories.each(function(index) {
		$("#docList").append(
				"<li>" + $categories.eq(index).children(":selected").text()
						+ "</li>");
	});
}

function checkform() {

	var valid = 0;
	var isBlank = false;
	var $input = $("input:text, select").not("input[id='txtAddressLine2']");
	var $select = $("select");
	var $formGroup;
	var $this;
	var $parentDiv;

	$input.each(function (index, element) {
	    $this = $(element);
	    $formGroup = $this.closest("div[class=form-group]");
	    $parentDiv = $this.parent();
	    if ($this.val() == "" || $this.val() == "-Select-") {
	        $formGroup.addClass("has-error has-feedback");
	        $parentDiv.append('<span class="glyphicon glyphicon-remove form-control-feedback"></span>');
	        $parentDiv.append('<span class="help-inline text-danger">This field is required</span>');
	        isBlank = true;
	    } else {
	        $formGroup.removeClass("has-error").addClass("has-success");
	        $this.next("span[id^=errorIcon]").remove();
	        $this.next("span[class=help-inline]").remove();
	        isBlank = false;
	    }
	})

	if (valid == 0) {
	    getCategory();
	    $('#confirmModal').modal('show');
		// setTimeout("submitForm()", 10000);
	} else {
		return false;
	}
}

function checkPhone() {

}