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

});