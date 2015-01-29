$(document).ready(function() {
 $(".question_list").on('submit', 'form.question_update_form', function(event){
    event.preventDefault();
    var $target = $(event.target);
    console.log($target)
    $.ajax({
      type: 'PUT',
      url: $target.attr('action'),
      data: $target.serialize()
    }).done(function(response) {
      $target.closest("li").html(response);
    })
 });

  $(".question_list").on('submit', 'form.question_delete_form', function(event){
    event.preventDefault();
    var $target = $(event.target);
    console.log($target)
    $.ajax({
      type: 'DELETE',
      url: $target.attr('action'),
    }).done(function(response) {
      $target.closest("li").remove();
    })
 });
});
