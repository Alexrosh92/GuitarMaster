// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.ui.accordion

$(function() {
    var myId = $("#accordion");
    myId.accordion();

    ymaps.ready(init);

    var myMap,
        myPlacemark;

    function init(){
        myMap = new ymaps.Map ("map", {
            center: [55.75, 37.65],
            zoom: 15
        });

        myPlacemark = new ymaps.Placemark([55.74892, 37.6523], {
            hintContent: 'GuitarMaster',
            balloonContent: 'здесь наш офис :)'
        });

        myMap.controls.add('mapTools');
        myMap.controls.add('typeSelector');
        myMap.controls.add('zoomControl');
        myMap.geoObjects.add(myPlacemark);
    }

});