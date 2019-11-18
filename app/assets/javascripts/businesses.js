$(document).on("turbolinks:load", function() {
    console.log("Fire");
    $("#category_sel").change(function() {
        console.log("Hit");
        $("#business_category").val($("#category_sel option:selected").val());
    })
});