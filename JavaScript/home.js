//loading
$("document").ready(function(){
    $("#loading").fadeOut(1000)
})

/////////////////////////message section
/////////////////////////message section
let typed = new Typed('.message-h2', {
    strings: [' DOCTOR ADVICE.','HOSIPTAL VISION.' ,'HOSIPTAL MISSION.'],
    smartBackspace: true, // Default value
    typeSpeed: 150, //speed 1000 ms = 1s
    backSpeed: 100,
    loop: true,
});
///////////////////////owl carusal for partner section 


$(document).ready(function(){
    var owl = $('.owl-carousel1');
    owl.owlCarousel({
        items:1,
        loop:true,
        margin:10,
        autoplay:true,
        autoplayTimeout:1500,
        autoplayHoverPause:true
    });
    $('.play').on('click',function(){
        owl.trigger('play.owl.autoplay',[1000])
    })
    $('.stop').on('click',function(){
        owl.trigger('stop.owl.autoplay')
    })
});
$(document).ready(function(){
    var owl = $('.owl-carousel');
    owl.owlCarousel({
        items:5,
        loop:true,
        margin:10,
        autoplay:true,
        autoplayTimeout:1000,
        autoplayHoverPause:true
    });
    $('.play').on('click',function(){
        owl.trigger('play.owl.autoplay',[1000])
    })
    $('.stop').on('click',function(){
        owl.trigger('stop.owl.autoplay')
    })
});








