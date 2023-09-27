/*
Template Name: Color Admin - Responsive Admin Dashboard Template build with Twitter Bootstrap 5
Version: 5.1.4
Author: Sean Ngu
Website: http://www.seantheme.com/color-admin/
 */

var handleDataTableResponsive = function() {
	"use strict";

	if ($('#data-table-responsive').length !== 0) {
		$('#data-table-responsive').DataTable({
			responsive : true
		});
	}

	if ($('#data-table-responsive2').length !== 0) {
		$('#data-table-responsive2').DataTable({
			responsive : true
		});
	}

	if ($('#data-table-responsive3').length !== 0) {
		$('#data-table-responsive3').DataTable({
			responsive : true
		});
	}

	if ($('#data-table-responsive4').length !== 0) {
		$('#data-table-responsive4').DataTable({
			responsive : true
		});
	}

	if ($('#data-table-responsive5').length !== 0) {
		$('#data-table-responsive5').DataTable({
			responsive : true
		});
	}

	if ($('#data-table-responsive6').length !== 0) {
		$('#data-table-responsive6').DataTable({
			responsive : true
		});
	}

	if ($('#data-table-responsive7').length !== 0) {
		$('#data-table-responsive7').DataTable({
			responsive : true
		});
	}

	if ($('#data-table-responsive8').length !== 0) {
		$('#data-table-responsive8').DataTable({
			responsive : true
		});
	}

	if ($('#data-table-responsive9').length !== 0) {
		$('#data-table-responsive9').DataTable({
			responsive : true
		});

		if ($('#data-table-responsive10').length !== 0) {
			$('#data-table-responsive10').DataTable({
				responsive : true
			});
		}
	}
};

var TableManageResponsive = function() {
	"use strict";
	return {
		// main function
		init : function() {
			handleDataTableResponsive();
		}
	};
}();

$(document).ready(function() {
	TableManageResponsive.init();
});