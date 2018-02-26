// All js related to tasks

// This is all the materialize JS that has to do with task display

$(document).on('turbolinks:load', function(){

  $('.collapsible').collapsible();
  $('ul.tabs').tabs();

  $('.checkbox').on("ajax:success", function(e){
  	console.log('checked!');
  });

  $(document).on('ajax:success', '.destroy_task', function(){
		$(this).closest('.task-container').remove();
		$('.' + window.task_container).remove(); 
	});

});
