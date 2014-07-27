$(document).ready(function() {
	$('#micropost_content').on('keyup', function(e){
		var value  = 140 - $('#micropost_content').val().length
		$('#word-count').text(value)
	})
})