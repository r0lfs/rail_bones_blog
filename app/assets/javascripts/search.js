$('#user_search').keyup(function() {
	let search_term = $(this).val()
	console.log(search_term)
	if (search_term.length > 0 ) {
		console.log(search_term);
		$.post(
			'users/search', 
			{search_term: search_term},
			function (results) {
				$('#results').html(results);
			}
		);
	}	
});

