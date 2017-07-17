// processABC
//
// Takes output and input HTML element IDs.
//
// Use the text of the input element as ABC source to be rendered to the output
// element. Ensure that abc.js is loaded and apply some common configuration
// and styling.

function processABC(tune, midi, input)
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

	var midiParams = { generateInline: true };

	function render() {
		if (midi)
			ABCJS.renderMidi(midi, source, {}, midiParams, {});
		if (tune)
			ABCJS.renderAbc(tune, header + source, {}, {}, {});
	}

	if (typeof ABCJS === 'undefined') {
		var head = document.getElementsByTagName('head')[0];
		var style;
		var script;

		function element(tag, attrs) {
			var e = document.createElement(tag);
			for (a in attrs) {
				e.setAttribute(a, attrs[a]);
			}
			return e;
		}

		if (midi) {
			style  = element('link', {    'rel': 'stylesheet',
										 'type': 'text/css',
										 'href': 'etc/abcjs-midi.css' });
			script = element('script', { 'type': 'text/javascript',
										  'src': 'etc/abcjs_basic_midi_3.1.2-min.js' });
			head.appendChild(style);
		} else {
			script = element('script', { 'type': 'text/javascript',
										  'src': 'etc/abcjs_basic_3.1.2-min.js' });
		}

		script.onreadystatechange = render;
		script.onload             = render;

		head.appendChild(script);

	} else {
		render();
	}
}
