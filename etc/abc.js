// processABC
//
// Takes output and input HTML element IDs.
//
// Use the text of the input element as ABC source to be rendered to the output
// element. Ensure that abc.js is loaded and apply some common configuration
// and styling.

function processABC(output, input)
{
	var source = document.getElementById(input).text;
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

	function render() {
		ABCJS.renderAbc(output, header + source, {}, {}, {});
	}

	if (typeof ABCJS === 'undefined') {
	    var head   = document.getElementsByTagName('head')[0];
	    var script = document.createElement('script');

	    script.type = 'text/javascript';
	    script.src  = 'etc/abcjs_basic_3.1.2-min.js';

	    script.onreadystatechange = render;
	    script.onload             = render;

	    head.appendChild(script);
	} else {
		render();
	}
}
