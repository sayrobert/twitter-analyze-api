$(document).ready(function()
{
	console.log(wordList);



	$('#wordCloud').jQCloud(wordList, {
		width: 850,
		height: 350
	});
});