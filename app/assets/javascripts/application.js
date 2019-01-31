// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks

//= require jquery
//= require bootstrap-sprockets

//= require_tree .
$(document).on('click','button','.post_like', function(){
	// post_id = this.dataset.postId
	// alert(post_id)
	$(this).next('.comments').toggle('show');
});




// $(function() {
//   $("#submit_post").on("click", function(event) {
//     event.preventDefault();
//     $.ajax({
//     	alert('calling submit')
//        type: "POST",
//        url: "your_controller_url",
//        data: "your_form_data"
//        success: function(result) {
//          // Append the result to a table or list, $("list").append(result)
//       // },
//     });
//   });
// });




// $(document).on('click', '.post_like', function(){
// 	post_id = this.dataset.postId

// 	$.ajax({
// 		url: "posts/"+post_id+"/likes",
// 		method: 'get', 
// 		success: function(result){
			

		
// 	  	alert('in success')
// 	  	 $('.post_like').text('Unlike')
// 		},
// 		error: function(error) {
// 			alert('calling like function')
// 		}
// 	});
// })

// $(document).on('click', '.post_unlike', function(){
// 	post_id = this.dataset.postId

// 	$.ajax({
// 		url: "posts/"+post_id+"/unlike",
// 		method: 'get', 
// 		success: function(result){
			

		
// 	  	alert('in success')
// 	  	 $('.post_unlike').text('like')
// 		},
// 		error: function(error) {
// 			alert('calling dislike function')
// 		}
// 	});
// })
