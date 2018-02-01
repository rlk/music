
// Load named Javscript source file and invoke the callback.

function include(source, callback) {
	var script = document.createElement('script');

	script.setAttribute('type', 'text/javascript');
	script.setAttribute('src', source);

	script.onreadystatechange = callback;
	script.onload             = callback;

	var head = document.getElementsByTagName('head')[0];

	head.appendChild(script);
}

// Iterate over all elements of class "abc" and render the text of each as ABC

function render() {
	var engraverParams = { staffwidth: 880 };
	var renderParams = { oneSvgPerLine: true };
	var header = [
		'%%titlefont      "Times New Roman" 21',
		'%%subtitlefont   "Times New Roman" 13',
		'%%composerfont   "Times New Roman" Italic 13',
		'%%vocalfont      "Times New Roman" 13',
		'%%wordsfont      "Times New Roman" 13',
		'%%partsfont      "Times New Roman" 13',
		'%%tempofont      "Times New Roman" 13',
		'%%infofont       "Times New Roman" 13',
		'%%textfont       "Times New Roman" 13',
		'%%gchordfont     "Times New Roman" 13',
		'%%historyfont    "Times New Roman" Italic 13',
		'%%annotationfont "Times New Roman" Italic 13',
		'%%stretchlast',
	].join('\n');

	var abcs = document.getElementsByClassName('abc');

	for (var i = 0; i < abcs.length; i++) {
		var div = document.createElement('div');
		var abc = abcs.item(i);

		abc.parentElement.insertBefore(div, abc);

		ABCJS.renderAbc(div, header + abc.text, {}, engraverParams, renderParams);
	}
}

// Ensure ABC.js is loaded and render all ABC elements.

if (typeof ABCJS === 'undefined')
	include('etc/abcjs_basic_3.1.2-min.js', render);
else
	render();
