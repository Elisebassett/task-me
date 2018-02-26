// All js related to tasks

// This is all the materialize JS that has to do with task display

$(document).on('turbolinks:load', function(){

  $('.collapsible').collapsible();
  $('ul.tabs').tabs();

  $('.checkbox').change(function(e){
  	// e.stopPropagation();
  	// console.log($(this).attr('id'));
//   	var id = $(this).closest('.task-container').attr('data-id');
//   	var complete = $(this).attr('value');
//   	console.log(id);
//   	$.ajax({
//   		url: `/task/${id}`,
//   		type: 'PATCH',
//   		data: {complete: !complete?, id: id}
//   	});
  });
});
