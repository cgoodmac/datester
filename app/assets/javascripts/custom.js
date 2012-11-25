$(function(){

  $( '#add_answer' ).click(add_answer);

});

function add_answer()
{
  field = $('<div>');
  field.addClass('field group');

  box = $('<input>');
  box.attr('type', 'text');
  box.attr('name', 'answers[][answer_text]')
  field.append(box);

  cb = $('<input>');
  cb.attr('type', 'radio');
  cb.attr('name', 'answers[][is_correct]')
  field.append(cb);

  $( '#answers' ).append(field);
}