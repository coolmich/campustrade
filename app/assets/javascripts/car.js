$(function(){
  $('.car-card').on('click', function(){
    if (!(event.target.className === "img-small")){
      var txt = $(".car-detail").is(':visible') ? 'Click to view detail' : 'Click to hide detail';
      $(this).children('.car-detail').slideToggle();
      $(this).find('.car-detail-button').text(txt);
      $(this).find('.car-detail-button').toggleClass('car-detail-button-active');
    }
  });

  $('.img-small').on('click', function() {
    var image_src = $(this).attr('src');
    $(this).parent().siblings('.img-big').attr('src', image_src);
  });
});