// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require imagesloaded.pkgd.min
//= require masonry.pkgd.min
//= require fotorama
//= require sly.min
//= require jquery.the-modal
//= require_tree .


$(function(){



    $container = $('.posts');
    $container.imagesLoaded( function() {
        $container.masonry({
            columnWidth: 300,
            itemSelector: '.post',
            gutter: 20
        })
    });

    $('.fotorama').fotorama({
        arrows: false

    }).on('fotorama:ready', function(){
    });


    var $frame  = $('#frame');
    var $wrap   = $frame.parent();

    // Call Sly on frame
    $frame.sly({
        horizontal: 1,
        itemNav: 'basic',
        smart: 1,
        activateOn: 'click',
        mouseDragging: 1,
        touchDragging: 1,
        releaseSwing: 1,
        startAt: 1,
        scrollBy: 0,
        activatePageOn: 'click',
        speed: 300,
        elasticBounds: 1,
        dragHandle: 1,
        dynamicHandle: 1,
        clickBar: 1,
        nextPage: $wrap.find('.right'),
        prevPage: $wrap.find('.left')
    });



    $('.modal .close').on('click', function(e){
        e.preventDefault();
        $.modal().close();
    });

    $('[data-modal]').on('click', function(){
        $('#'+$(this).data('modal')).modal().open()
    });

    $('a.attach').on('click', function(e){
        e.preventDefault();
        $(this).siblings('[type="file"]').first().click();
    });

    $('.fotorama-wrap > .right').on('click', function(){
        $(this).siblings('.fotorama').first().data('fotorama').show('>');
    });
    $('.fotorama-wrap > .left').on('click', function(){
        $(this).siblings('.fotorama').first().data('fotorama').show('<');
    });




});


var pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

$(function(){$("#new_inquiry").submit(function(){
//    alert(1);

    var isFormValid = true;
    $("#new_inquiry .reqs").each(function(){ // Note the :text
        alert(1);

        if ($.trim($(this).val()).length == 0){
            $(this).addClass("error");
            isFormValid = false;
        } else {

            if ($(this).hasClass('email')) {
                if (!pattern.test($(this).val())) {
                    isFormValid = false;
                    alert("Неверно введен email");
                }
            }

            $(this).removeClass("error");
        }
    });

    if (!isFormValid) alert("Пожалуйста введите свое имя и email");
    if ($('#new_inquiry .email').length) {
        if (!pattern.test($('#new_inquiry .email').val())) {
            isFormValid = false;
            alert("неверно введен email");
        }  }

    return isFormValid;
});});
