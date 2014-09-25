$(function(){
  $('.car-card').on('click', function(){
    $(this).children('.car-detail').slideToggle();
  });
});