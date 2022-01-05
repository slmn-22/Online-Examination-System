/*
Author       : Code-Theme
Template Name: Find Houses - HTML5 Template
Version      : 1.0
*/

"use strict";

jQuery(document).on('ready', function ($) {

	
	


	/*----------------------------------
	//------ SMOOTHSCROLL ------//
	-----------------------------------*/
	smoothScroll.init({
		speed: 1000, // Integer. How fast to complete the scroll in milliseconds
		offset: 200, // Integer. How far to offset the scrolling anchor location in pixels

	});

	
	/*----------------------------------
	
	/*----------------------------------
	//----- JQUERY COUNTER UP -----//
	-----------------------------------*/
	$('.counter').counterUp({
		delay: 10,
		time: 5000,
		offset: 100,
		beginAt: 0,
		formatter: function (n) {
			return n.replace(/,/g, '.');
		}
	});



	

	

}(jQuery));
