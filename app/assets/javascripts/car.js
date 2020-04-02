$(function() {
  
  $('.car-show__box__images__sub__image').click(function(){
  $('.car-show__box__images__main__image').attr('src',$(this).attr('src'))
  
  });
});