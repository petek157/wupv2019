$(document).on("turbolinks:load", function() {

    // $(".box").hover(function() {

    //     $(this).children(".box-image").eq(0).animate({
    //         opacity: .3,
    //       }, 300, "linear", function() {
    //         // Animation complete.
    //       });

    //       $(this).children(".box-info").eq(0).animate({
    //         opacity: 1,
    //       }, 300, "linear", function() {
    //         // Animation complete.
            
    //       });

    //     //$(this).children(".box-image").eq(0).css("opacity", ".3");
    //     //$(this).children(".box-info").eq(0).css("opacity", "1");
    // }, function() {

    //     $(this).children(".box-image").eq(0).animate({
    //         opacity: 1,
    //       }, 300, "linear", function() {
    //         // Animation complete.
            
    //       });
        
    //       $(this).children(".box-info").eq(0).animate({
    //         opacity: 0,
    //       }, 300, "linear", function() {
    //         // Animation complete.
            
    //       });

    //     //$(this).children(".box-image").eq(0).css("opacity", "1");
    //     //$(this).children(".box-info").eq(0).css("opacity", "0");
    // });

    var mMenuShowing = false
    $(".mobile-menu-icon").click(function () {
        if (mMenuShowing) {
            $("#mobile-menu").css("display", "none")
            mMenuShowing = false;
        } else {
            $("#mobile-menu").css("display", "flex")
            mMenuShowing = true;
        }
    })

    
        var slideTimer = null;
        clearInterval(slideTimer);

        var current = 0;
        //slide(current);
        slideTimer = setInterval(function() {slide(current)}, 14000);
        
        function slide(c) {

            $(".headline").eq(c).fadeOut( "slow", function() {
                
                if (c == 0) {
                    $(".c1").css("color", "#FFE373");
                    $(".c2").css("color", "white");
                    $(".c3").css("color", "white");
                } else if (c == 1) {
                    $(".c1").css("color", "#FFE373");
                    $(".c2").css("color", "white");
                    $(".c3").css("color", "white");
                } else {
                    $(".c1").css("color", "white");
                    $(".c2").css("color", "#FFE373");
                    $(".c3").css("color", "#FFE373");
                }
                if (c == $(".headline").length - 1) {
                    $(".headline").eq(0).fadeIn( "slow");
                } else {
                    $(".headline").eq(c + 1).fadeIn( "slow");
                }
                if (c == $(".headline").length - 1) {
                    current = 0;
                } else {
                    current += 1;
                }
            });
        }
    
        // $(".headline").hover( function() {
        //     clearInterval(slideTimer);
        // }, function() {
        //     slide(current);
        //     slideTimer = setInterval(function() {slide(current)}, 14000);
        // } )
    
        $(".c1").click(function() {
            clearInterval(slideTimer);
            current = 0
            slide(current);
            slideTimer = setInterval(function() {slide(current)}, 14000);
        });
    
        $(".c2").click(function() {
            clearInterval(slideTimer);
            current = 1
            slide(current);
            slideTimer = setInterval(function() {slide(current)}, 14000);
        });

        $(".c3").click(function() {
            clearInterval(slideTimer);
            current = 2
            slide(current);
            slideTimer = setInterval(function() {slide(current)}, 14000);
        });


        
});

//Business Map
function initMap(businesses) {

            

    var mlat = parseFloat(businesses[0].latitude);
    var mlng = parseFloat(businesses[0].longitude);

    var myCoords = new google.maps.LatLng(mlat, mlng);
    var mapOptions = {
    center: myCoords,
    zoom: 14,
    mapTypeControl: false,
    fullscreenControl: false,
    streetViewControl: false
    };
    var map = new google.maps.Map(document.getElementById('map'), mapOptions);
    var bounds = new google.maps.LatLngBounds();
    for (var i = 0; i < businesses.length; i++) {
        var bs = businesses[i];
        var lat = parseFloat(bs.latitude);
        var lng = parseFloat(bs.longitude);
        var myCoordsm = new google.maps.LatLng(lat, lng);

        var marker = new google.maps.Marker({
            position: myCoordsm,
            map: map,
            title: bs.name
        });

        bounds.extend(marker.getPosition());
    }

    map.fitBounds(bounds, 100);
    map.setZoom(14);
}