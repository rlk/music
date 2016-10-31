\language "english"

\paper {
  indent = 0
}

\header {
  tagline = ""
}

mychords = \chordmode{
  g2:6 e2:m9 a2:m7 d2:7.9-
  g2:6 e2:m9 a2:m7 d2:7.9-
  g2:6 g2:7/f c2:6/e c2:m6/ef
  g2:6/d e2:m7 a2:7 d2:7
}

<<
  \new ChordNames {
    \mychords
  }
  \new Staff <<
    \clef "treble_8"
    \key g \major
    \new Voice = "guitar" {
      <g, g b e'>2^\markup { \fret-diagram-terse #"3;x;5;4;5;x;" }
      <e g d' fs'>2^\markup { \fret-diagram-terse #"x;7;5;7;7;x;" }
      <a, g c' e'>2^\markup { \fret-diagram-terse #"5;x;5;5;5;x;" }
      <d fs c' ef'>2^\markup { \fret-diagram-terse #"x;5;4;5;4;x;" }

      <g, g b e'>2^\markup { \fret-diagram-terse #"3;x;5;4;5;x;" }
      <e g d' fs'>2^\markup { \fret-diagram-terse #"x;7;5;7;7;x;" }
      <a, g c' e'>2^\markup { \fret-diagram-terse #"5;x;5;5;5;x;" }
      <d fs c' ef'>2^\markup { \fret-diagram-terse #"x;5;4;5;4;x;" }
      \break

      <g b e' g'>2^\markup { \fret-diagram-terse #"x;10;9;9;8;x;" }
      <f b f' g'>2^\markup { \fret-diagram-terse #"x;8;9;10;8;x;" }
      <e c' e' a'>2^\markup { \fret-diagram-terse #"x;7;10;9;10;x;" }
      <ef a ef' g'>2^\markup { \fret-diagram-terse #"x;6;7;8;8;x;" }

      <d g b e'>2^\markup { \fret-diagram-terse #"x;5;5;4;5;x;" }
      <e b d' g'>2^\markup { \fret-diagram-terse #"x;7;9;7;8;x;" }
      <a, g cs' e'>2^\markup { \fret-diagram-terse #"5;x;5;6;5;x;" }
      <d a c' fs'>2^\markup { \fret-diagram-terse #"x;5;7;5;7;x;" }
      \break
    }
  >>
>>

