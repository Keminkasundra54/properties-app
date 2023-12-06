$(document).ready(function(){
$(".filter-search").on("click", function() {
    $(this).toggleClass("open");
    $(this).next().slideToggle();
})

$(".filter-listInr").on("click","li", function() {
    $(this).addClass("active").siblings().removeClass("active");
    $(this).closest("ul").slideUp();
    $(this).closest(".filter-listInr").find(".filter-search").removeClass("open");
    var valId = $(this).find("span").text()
    $(this).closest(".filter-listInr").find(".filter-search").text(valId)
})


$('.popupButton a').on('click',function(e){
e.preventDefault();
$('.popupSec').fadeIn();
var id = $(this).attr('data-id');
if (id) {
  $.ajax({
    url: "/api/property/get",
    method: 'post',
    data: JSON.stringify({_id: id}),
    dataType: "json",
    contentType: "application/json; charset=utf-8",
    success: function(result){
      console.log(result.data);
      if(result && result.data) {
        for (let key in result.data) {
          $('input[name="'+key+'"],textarea[name="'+key+'"]').val(result.data[key]);
        }
      }
    }
  });
}
})
$('.closeBTn').on('click',function(e){
e.preventDefault();
$('.popupSec').fadeOut(1000);

})
$(".popupSec").click(function(e){
e.preventDefault();
$(this).fadeOut(1000);
});
// Prevent events from getting pass .popup
$(".popupBoxs").click(function(e){
e.stopPropagation();
});


})
