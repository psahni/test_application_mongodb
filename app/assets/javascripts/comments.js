$(function(){
  $('#new_comment').on('ajax:error', function(evt, xhr, res){    
      if($('div.comment_error').length)
        $('div.comment_error').attr('id', 'flash_error').html(xhr.responseText).slideDown();
      else{
        $errors = JSON.parse(xhr.responseText);
        $('#comment-errors').html(App.errorTemplate($errors))
      }
   });
 });
