% https://youtu.be/LOILZ_D3aRg

\language "english"
\version "2.18.2"

chExceptionMusic = {
  <c e  g  b >1-\markup       { "ma" \super "7"  }
  <c ef g  bf>1-\markup       { "mi" \super "7"  }
  <c ef g  bf d' f'>1-\markup { "mi" \super "11" }
  <c ef gf bf>1-\markup       { "mi" \super { "7"  \hspace #0.4 \raise #0.4 \smaller{\flat}  "5"  }}
  <c e g bf d' fs'>1-\markup    {    \super { "9"  \hspace #0.4 \raise #0.4 \smaller{\sharp} "11" }}
  <c e g bf d' fs' a'>1-\markup {    \super { "13" \hspace #0.4 \raise #0.4 \smaller{\sharp} "11" }}
}

chExceptions = #(sequential-music-to-chord-exceptions chExceptionMusic #t)

\paper {
  indent = 0
}

\header {
  tagline = ""
}

<<
  \new ChordNames {
    \chordmode {
      \set chordNameExceptions = #chExceptions
      d2:maj7 b2:7.9-
      e2:m7 a2:7
      d1:maj7
      g1:9.11+
      cs2:7.9-.5+ fs2:7.9-.5+
      b2:7.13 b2:7.5+
      e2:13sus4 e2:13.9-
      e2:m7 a2:7
      d2:maj7 b2:7.9-
      e2:m7 a2:7
      d1:maj7
      g1:13.11+
      a2:maj7 fs2:m7
      b2:m7 e2:7.9-
      e1:m11
      a1:7
      d1:6
      a2:m7 d2:7
      g2:6 e2:m9
      a2:m7 d2:7.9-

      g2:6 e2:m9
      a2:m7 d2:7.9-
      g2:6 g2:7/f
      c2:6/e c2:m6/ef
      g2:6/d e2:m7
      a2:7 d2:7
    }
  }
  \new Staff {
    \clef "treble_8"
    \new Voice = "melody" {
      \key d \major
      fs4 g4 a8 b4 a8
      g4 fs8 e8~ e8 fs4 g8
      a4 b4 cs'4 d'4
      cs'2. b4
      \break
      d'4 d'4 d'8 d'4 d'8
      b8 b4. r4 b4
      cs'8 cs'4 cs'8 cs'4 cs'4
      a1
      \break
      fs4 g4 a8 b4 a8
      g4 fs8 e8~ e8 fs4 g8
      a4 b4 cs'4 d'4
      e'2. d'4
      \break
      cs'4 e'4 a4 cs'4
      b4 d'4 gs8 gs8 b4
      a1
      a4 g4 fs4 e4
      \break
      d1
      r1
      \break

      \key g \major
      g4 e8 fs8~ fs8 fs4 e8
      g4 a8 b8~ b8 b4.
      g4 e8 fs8~ fs8 fs4 e8
      \break
      g4 a8 b8~ b8 b4.
      d'8 g8 r4 d'8 g8 r4
      d'8 g8 r4 d'8 g8 r4
      \break
      d'4 c'8 b8 a4 g4
      a2. r4
    }
  }
  \new Lyrics \lyricsto "melody" {
    Things have come to a pret -- ty pass.
    Our ro -- mance is grow -- ing flat.
    For you like this and the oth -- er
    while I go for this and that.

    Good -- ness knows what the end will be.
    Oh, I don't know where I'm at.
    It looks as if we two will nev -- er be one.
    Some -- thing must be done.

    You say ee -- ther and I say eye -- ther.
    You say nee -- ther and I say ny -- ther.
    Ee -- ther, eye -- ther, nee -- ther, ny -- ther!
    Let's call the whole thing off.
  }
  \new Staff {
    \clef "treble_8"
    \new Voice = "guitar" {
      \key d \major

      <d a cs' fs'>2^\markup { \fret-diagram-terse #"x;5;7;6;7;x;" } % Dma7
      <b, a c' fs'>2^\markup { \fret-diagram-terse #"7;x;7;5;7;x;" } % B7b9
      <e g d' e'>2^\markup   { \fret-diagram-terse #"x;7;5;7;5;x;" } % Emi7
      <a, g cs' e'>2^\markup { \fret-diagram-terse #"5;x;5;6;5;x;" } % A7

      <a, d a cs' fs'>1^\markup { \fret-diagram-terse #"x;o;o;2;2;2;" } % Dma7
      <g, b, d a cs'>1^\markup  { \fret-diagram-terse #"3;2;o;2;2;x;" } % G9#11
      <cs es b d'>2^\markup     { \fret-diagram-terse #"x;4;3;4;3;x;" } % C#7b9 (#5)
      <fs as e' g'>2^\markup    { \fret-diagram-terse #"x;x;4;3;5;3;" } % F#7b9 (#5)

      <b, a ds' gs'>2^\markup   { \fret-diagram-terse #"x;2;x;2;4;4;" } % B7.13
      <b, a ds' fss'>2^\markup  { \fret-diagram-terse #"x;2;x;2;4;3;" } % B7.#5

      s1 s1

      <d a cs' fs'>2^\markup { \fret-diagram-terse #"x;5;7;6;7;x;" } % Dma7
      <b, a c' fs'>2^\markup { \fret-diagram-terse #"7;x;7;5;7;x;" } % B7b9
      <e g d' e'>2^\markup   { \fret-diagram-terse #"x;7;5;7;5;x;" } % Emi7
      <a, g cs' e'>2^\markup { \fret-diagram-terse #"5;x;5;6;5;x;" } % A7

      <a, d a cs' fs'>1^\markup { \fret-diagram-terse #"x;o;o;2;2;2;" } % Dma7

      s1 s1 s1 s1 s1 s1 s1

      \key g \major

      <g, g b e'>2^\markup   { \fret-diagram-terse #"3;x;5;4;5;x;" } % G6
      <e g d' fs'>2^\markup  { \fret-diagram-terse #"x;7;5;7;7;x;" } % Emi9
      <a, g c' e'>2^\markup  { \fret-diagram-terse #"5;x;5;5;5;x;" } % Ami7
      <d fs c' ef'>2^\markup { \fret-diagram-terse #"x;5;4;5;4;x;" } % D7b9

      <g, g b e'>2^\markup   { \fret-diagram-terse #"3;x;5;4;5;x;" } % G6
      <e g d' fs'>2^\markup  { \fret-diagram-terse #"x;7;5;7;7;x;" } % Emi9
      <a, g c' e'>2^\markup  { \fret-diagram-terse #"5;x;5;5;5;x;" } % Ami7
      <d fs c' ef'>2^\markup { \fret-diagram-terse #"x;5;4;5;4;x;" } % D7b9

      <g b e' g'>2^\markup   { \fret-diagram-terse #"x;10;9;9;8;x;"  } % G6
      <f b f' g'>2^\markup   { \fret-diagram-terse #"x;8;9;10;8;x;"  } % G7/F
      <e c' e' a'>2^\markup  { \fret-diagram-terse #"x;7;10;9;10;x;" } % C6/E
      <ef a ef' g'>2^\markup { \fret-diagram-terse #"x;6;7;8;8;x;"   } % Cmi6/Eb

      <d g b e'>2^\markup    { \fret-diagram-terse #"x;5;5;4;5;x;" } % G6/D
      <e b d' g'>2^\markup   { \fret-diagram-terse #"x;7;9;7;8;x;" } % Emi7
      <a, g cs' e'>2^\markup { \fret-diagram-terse #"5;x;5;6;5;x;" } % A7
      <d a c' fs'>2^\markup  { \fret-diagram-terse #"x;5;7;5;7;x;" } % D7
    }
  }
>>
