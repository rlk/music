\language "english"

chExceptionMusic = {
  <c e  g  b >1-\markup { "ma" \super "7" }
  <c ef g  bf>1-\markup { "mi" \super "7" }
  <c ef gf bf>1-\markup { "mi" \super { "7" \hspace #0.4 \raise #0.4 \smaller{\flat} "5" }}
}

chExceptions = #(sequential-music-to-chord-exceptions chExceptionMusic #t)

\paper {
	#(set-paper-size "letter")
	top-margin = 0.5\in
	bottom-margin = 0.5\in
	left-margin = 0.5\in
	right-margin = 0.5\in
}

\layout {
	indent = 0
}

\header {
	title = "My Favorite Things"
	composer = "Richard Rodgers"
	tagline = ""
}

\score {
	<<
		\chords {
			\time 3/4
			\set chordChanges = ##t
			\set chordNameExceptions = #chExceptions

			e2.:m7 fs2.:m7 e2.:m7 fs2.:m7
			c2.:maj7 c2.:maj7 c2.:maj7 c2.:maj7
			a2.:m7 d2.:7 g2.:maj7 c2.:maj7
			g2.:maj7 c2.:maj7 fs2.:m7.5- b2.:7

			e2.:maj7 fs2.:m7 e2.:maj7 fs2.:m7
			a2.:maj7 a2.:maj7 a2.:maj7 a2.:maj7
			a2.:m7 d2.:7 g2.:maj7 c2.:maj7
			g2.:maj7 c2.:maj7 fs2.:m7.5- b2.:7.9-

			e2.:m7 e2.:m7 fs2.:m7.5- b2.:7
			e2.:m7 e2.:m7 c2.:maj7 c2.:maj7
			c2.:maj7 c2.:maj7 a2.:7 a2.:7
			g2.:maj7 c2.:maj7 a2.:m7 d2.:7
			g2.:6 c2.:maj7 g2.:6 c2.:maj7
			g2.:maj7 c2.:maj7 fs2.:m7.5- b2.:7
		}
		\new Staff {
			\clef "treble_8"
			\key e \minor
			\time 3/4
			\new Voice = "melody" {
				\repeat volta 2 {
					\repeat volta 2 {
						e4 b4 b4 fs4 e4. e8 b,4 e4 e4 fs4 e2 \break
						e4 b4 b4 fs4 e4. e8 b,4 e4 e4 fs4 e2 \break
						e4 b4 a4 e4 fs4 d4 d4 a4 g4 c2. \break
						b,4 c4 d4 e4 fs4 g4 a4 b4 a4 ds2. \break
					}
					e4 b4 b4 fs4 e4. e8 b,4 e4 e4 fs4 e2 \break
					e4 b4 b4 fs4 e4. e8 b,4 e4 e4 fs4 e2 \break
					e4 b4 a4 e4 fs4 d4 d4 a4 g4 c2. \break
					b,4 c4 d4 e4 fs4 g4 a4 as4 b4 c'2. \break

					r4 b4 b4 b2 e4 r4 a4 a4 a2 ds4 \break
					r4 g4 g4 g2 b,4 e2.~ e2 e4 \break
					e4 fs4 e4 fs4 e4 fs4 g4 a4 g4 a2 g4 \break
					b4 c'4 b4 c'2.~ c'2. b2. \break
					g2.~ g2.~ g2.~ g2. \break
					r2. r2. r2. r2. \break
				}
			}
		}
		\new Lyrics \lyricsto "melody" {
			<<
				\new Lyrics {
					\set stanza = #"1. "
					Rain drops on ros -- es and whisk -- ers on kit -- tens.
					Bright cop -- per ket -- tles and warm wool -- en mit -- tens.
					Brown pap -- er pack -- ag -- es tied up with strings.
					These are a few of my fa -- vo -- rite things.
				}
				\new Lyrics {
					\set stanza = #"2. "
					Cream col -- ored po -- nies and crisp ap -- ple stru -- del.
					Door bells and sleigh bells and schnit -- zel with nood -- les.
					Wild geese that fly with the moon on their wings.
					These are a few of my fa -- vo -- rite things.
				}
			>>
			\new Lyrics {
				\set stanza = #"3. "
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
