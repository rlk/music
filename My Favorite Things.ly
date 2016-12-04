\language "english"
\include "Definitions.ly"

#(set-global-staff-size 18)

\paper {
	#(set-paper-size "letter")
}

\layout {
	indent = 0
}

\header {
	title = "My Favorite Things"
	composer = "Richard Rodgers"
	tagline = "Lilypond engraving by github.com/rlk"
}

\score {
	<<
		\new ChordNames \chordmode {
			\set chordNameExceptions = #chExceptions
			\set chordChanges = ##t
			\time 3/4

			e2.:m7 fs2.:m7 e2.:m7 fs2.:m7 \break
			c2.:maj7 c2.:maj7 c2.:maj7 c2.:maj7 \break
			a2.:m7 d2.:7 g2.:maj7 c2.:maj7 \break
			g2.:maj7 c2.:maj7 fs2.:m7.5- b2.:7 \break

			e2.:maj7 fs2.:m7 e2.:maj7 fs2.:m7 \break
			a2.:maj7 a2.:maj7 a2.:maj7 a2.:maj7 \break
			a2.:m7 d2.:7 g2.:maj7 c2.:maj7 \break
			g2.:maj7 c2.:maj7 fs2.:m7.5- b2.:7.9- \break

			e2.:m7 e2.:m7 fs2.:m7.5- b2.:7 \break
			e2.:m7 e2.:m7 c2.:maj7 c2.:maj7 \break
			c2.:maj7 c2.:maj7 a2.:7 a2.:7 \break
			g2.:maj7 c2.:maj7 a2.:m7 d2.:7 \break
			g2.:6 c2.:maj7 g2.:6 c2.:maj7 \break
			g2.:maj7 c2.:maj7 fs2.:m7.5- b2.:7 \break
		}
		\new Lyrics \lyricmode {
			\markup \fret-diagram-terse $"x;7;9;7;8;x;"   % Emi7
			\markup \fret-diagram-terse $"x;9;11;9;10;x;" % F#mi7
			\markup \fret-diagram-terse $"x;7;9;7;8;x;"   % Emi7
			\markup \fret-diagram-terse $"x;9;11;9;10;x;" % F#mi7

			\markup \fret-diagram-terse $"x;3;5;4;5;x;" _2. _2. _2. % Cma7

			\markup \fret-diagram-terse $"5;x;5;5;5;x;" % Ami7
			\markup \fret-diagram-terse $"x;5;7;5;7;x;" % D7
			\markup \fret-diagram-terse $"3;x;4;4;3;x;" % Gma7
			\markup \fret-diagram-terse $"x;3;5;4;5;x;" % Cma7

			\markup \fret-diagram-terse $"3;x;4;4;3;x;"   % Gma7
			\markup \fret-diagram-terse $"x;3;5;4;5;x;"   % Cma7
			\markup \fret-diagram-terse $"x;9;10;9;10;x;" % F#mi7b5
			\markup \fret-diagram-terse $"7;x;7;8;7;x;"   % B7

			\markup \fret-diagram-terse $"x;7;9;8;9;x;"   % Ema7
			\markup \fret-diagram-terse $"x;9;11;9;10;x;" % F#mi7
			\markup \fret-diagram-terse $"x;7;9;8;9;x;"   % Ema7
			\markup \fret-diagram-terse $"x;9;11;9;10;x;" % F#mi7

			\markup \fret-diagram-terse $"5;x;6;6;5;x;" _2. _2. _2. % Ama7

			\markup \fret-diagram-terse $"5;x;5;5;5;x;" % Ami7
			\markup \fret-diagram-terse $"x;5;7;5;7;x;" % D7
			\markup \fret-diagram-terse $"3;x;4;4;3;x;" % Gma7
			\markup \fret-diagram-terse $"x;3;5;4;5;x;" % Cma7

			\markup \fret-diagram-terse $"3;x;4;4;3;x;"   % Gma7
			\markup \fret-diagram-terse $"x;3;5;4;5;x;"   % Cma7
			\markup \fret-diagram-terse $"x;9;10;9;10;x;" % F#mi7b5
			\markup \fret-diagram-terse $"7;x;7;8;7;x;"   % B7

			\markup \fret-diagram-terse $"x;7;9;7;8;x;" _2. % Emi7
			\markup \fret-diagram-terse $"x;9;10;9;10;x;" % F#mi7b5
			\markup \fret-diagram-terse $"7;x;7;8;7;x;"   % B7

			\markup \fret-diagram-terse $"x;7;9;7;8;x;" _2. % Emi7
			\markup \fret-diagram-terse $"x;3;5;4;5;x;" _2. % Cma7

			\markup \fret-diagram-terse $"x;3;5;4;5;x;" _2. % Cma7
			\markup \fret-diagram-terse $"5;x;5;6;5;x;" _2. % A7

			\markup \fret-diagram-terse $"3;x;4;4;3;x;" % Gma7
			\markup \fret-diagram-terse $"x;3;5;4;5;x;" % Cma7
			\markup \fret-diagram-terse $"5;x;5;5;5;x;" % Ami7
			\markup \fret-diagram-terse $"x;5;7;5;7;x;" % D7

			\markup \fret-diagram-terse $"3;x;5;4;5;x;" % G6
			\markup \fret-diagram-terse $"x;3;5;4;5;x;" % Cma7
			\markup \fret-diagram-terse $"3;x;5;4;5;x;" % G6
			\markup \fret-diagram-terse $"x;3;5;4;5;x;" % Cma7

			\markup \fret-diagram-terse $"3;x;4;4;3;x;"   % Gma7
			\markup \fret-diagram-terse $"x;3;5;4;5;x;"   % Cma7
			\markup \fret-diagram-terse $"x;9;10;9;10;x;" % F#mi7b5
			\markup \fret-diagram-terse $"7;x;7;8;7;x;"   % B7
		}
		\new Staff {
			\clef "treble_8"
			\key e \minor
			\time 3/4
			\new Voice = "melody" {
				\repeat volta 2 {
					\repeat volta 2 {
						e4 b4 b4 fs4 e4. e8 b,4 e4 e4 fs4 e2
						e4 b4 b4 fs4 e4. e8 b,4 e4 e4 fs4 e2
						e4 b4 a4 e4 fs4 d4 d4 a4 g4 c2.
						b,4 c4 d4 e4 fs4 g4 a4 b4 a4 ds2.
					}
					e4 b4 b4 fs4 e4. e8 b,4 e4 e4 fs4 e2
					e4 b4 b4 fs4 e4. e8 b,4 e4 e4 fs4 e2
					e4 b4 a4 e4 fs4 d4 d4 a4 g4 c2.
					b,4 c4 d4 e4 fs4 g4 a4 as4 b4 c'2.

					r4 b4 b4 b2 e4 r4 a4 a4 a2 ds4
					r4 g4 g4 g2 b,4 e2.~ e2 e4
					e4 fs4 e4 fs4 e4 fs4 g4 a4 g4 a2 g4
					b4 c'4 b4 c'2.~ c'2. b2.
					g2.~ g2.~ g2.~ g2.
					r2. r2. r2. r2.
				}
			}
		}
		\new Lyrics \lyricsto "melody" {
			<<
				\new Lyrics {
					\set stanza = $"1. "
					Rain drops on ros -- es and whisk -- ers on kit -- tens.
					Bright cop -- per ket -- tles and warm wool -- en mit -- tens.
					Brown pap -- er pack -- ag -- es tied up with strings.
					These are a few of my fa -- vo -- rite things.
				}
				\new Lyrics {
					\set stanza = $"2. "
					Cream col -- ored po -- nies and crisp ap -- ple stru -- del.
					Door bells and sleigh bells and schnit -- zel with nood -- les.
					Wild geese that fly with the moon on their wings.
					These are a few of my fa -- vo -- rite things.
				}
			>>
			\new Lyrics {
				\set stanza = $"3. "
				Girls in white dres -- ses with blue sat -- in sash -- es.
				Snow flakes that stay on my nose and eye -- lash -- es.
				Sil -- ver white win -- ters that melt in -- to springs.
				These are a few of my fa -- vo -- rite things.

				When the dog bites, when the bee stings
				when I'm feel -- ing sad
				I sim -- ply re -- mem -- ber my fa -- vo -- rite things
				and then I don't feel so bad.
			}
		}
	>>
}
