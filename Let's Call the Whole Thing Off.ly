% https://youtu.be/LOILZ_D3aRg

\language "english"
\version "2.18.2"
\include "Definitions.ly"

#(set-global-staff-size 18)

\paper {
  indent = 0
}

\header {
  title = "Let's Call the Whole Thing Off"
  subtitle = "From \"Shall We Dance\""
  composer = "George Gershwin & Ira Gershwin"
  tagline = "Lilypond engraving by github.com/rlk"
}

<<
  \new ChordNames \chordmode {
    \set chordNameExceptions = #chExceptions
    \set chordChanges = ##t

    d2:maj7 b2:7.9-
    e2:m7 a2:7
    d1:maj7
    \break
    g1:9.11+
    cs2:7.9-.5+ fs2:7.9-.5+
    b2:7.13 b2:7.5+
    \break
    e2:13sus4 e2:13.9-
    e2:m7 a2:7
    d2:maj7 b2:7.9-
    e2:m7 a2:7
    \break
    d1:maj7
    g1:13.11+
    a2:maj7 fs2:m7
    b2:m7 e2:7.9-
    \break
    a1:6
    a1:7
    d1:6
    a2:m7 d2:7
    \break

    g2:6 e2:m9
    a2:m7 d2:7.9-
    g2:6 e2:m9
    \break
    a2:m7 d2:7.9-
    g2:6 g2:7/f
    c2:6/e c2:m6/ef
    g2:6/d e2:m7
    \break
    a2:7 d2:7
    g2:6 e2:m9
    a2:m7 d2:7.9-
    \break
    g2:6 e2:m9
    a2:m7 d2:7.9-
    g2:6 g2:7/f
    \break
    c2:6/e c2:m6/ef
    g2:6/d e2:m7
    a2:7 d2:7
    \break

    cs1:m7.5-
    fs2:7.9- b2:m7
    e2:7.9- a2:m7
    d1:9
    \break
    cs1:m7.5-
    fs2:7.9- b2:m7
    e2:7.9- a2:m7
    d1:9
    \break
    g2:6 e2:m9
    a2:m7 d2:7.9-
    g2:6 e2:m9
    \break
    a2:m7 d2:7.9-
    g2:6 g2:7/f
    c2:6/e c2:m6/ef
    \break
    g2:6/d a4:m7 d4:7
    b2:7.5+ e2:7.9-
    a2:m7 d2:9.13
    g1:6
    \break
  }
  \new Lyrics \lyricmode {
    \markup { \fret-diagram-terse $"x;5;7;6;7;x;" }2 % Dma7
    \markup { \fret-diagram-terse $"7;x;7;5;7;x;" }2 % B7b9
    \markup { \fret-diagram-terse $"x;7;5;7;5;x;" }2 % Emi7

    \markup { \fret-diagram-terse $"5;x;5;6;5;x;" }2 % A7
    \markup { \fret-diagram-terse $"x;5;7;6;7;x;" }1 % Dma7
    \markup { \fret-diagram-terse $"x;x;5;6;6;5;" }1 % G9#11

    \markup { \fret-diagram-terse $"x;4;3;4;3;x;" }2 % C#7b9 (#5)
    \markup { \fret-diagram-terse $"x;x;4;3;5;3;" }2 % F#7b9 (#5)
    \markup { \fret-diagram-terse $"x;2;x;2;4;4;" }2 % B7.13

    \markup { \fret-diagram-terse $"x;2;x;2;4;3;" }2 % B7.#5
    \markup { \fret-diagram-terse $"x;7;7;7;7;x;" }2 % E13sus
    \markup { \fret-diagram-terse $"x;7;6;7;6;x;" }2 % E13b9
    \markup { \fret-diagram-terse $"x;7;5;7;5;x;" }2 % Emi7
    \markup { \fret-diagram-terse $"5;x;5;6;5;x;" }2 % A7

    \markup { \fret-diagram-terse $"x;5;7;6;7;x;" }2 % Dma7
    \markup { \fret-diagram-terse $"7;x;7;5;7;x;" }2 % B7b9
    \markup { \fret-diagram-terse $"x;7;5;7;5;x;" }2 % Emi7

    \markup { \fret-diagram-terse $"5;x;5;6;5;x;" }2 % A7
    \markup { \fret-diagram-terse $"x;5;7;6;7;x;" }1 % Dma7
    \markup { \fret-diagram-terse $"x;7;5;7;5;x;" }1 % G13#11

    \markup { \fret-diagram-terse $"5;x;6;6;5;x;" }2 % Ama7
    \markup { \fret-diagram-terse $"x;9;11;9;10;x;" }2 % F#mi7
    \markup { \fret-diagram-terse $"7;x;7;7;7;x;" }2 % Bmi7
    \markup { \fret-diagram-terse $"x;7;6;7;6;x;" }2 % E7b9
    \markup { \fret-diagram-terse $"5;x;7;6;7;x;" }1 % A6

    \markup { \fret-diagram-terse $"5;x;5;6;5;x;" }1 % A7
    \markup { \fret-diagram-terse $"x;5;x;7;7;7;" }1 % D6
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }2 % Ami7
    \markup { \fret-diagram-terse $"x;5;7;5;7;x;" }2 % D7

    \markup { \fret-diagram-terse $"3;x;5;4;5;x;" }2 % G6
    \markup { \fret-diagram-terse $"x;7;5;7;7;x;" }2 % Emi9
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }2 % Ami7
    \markup { \fret-diagram-terse $"x;5;4;5;4;x;" }2 % D7b9

    \markup { \fret-diagram-terse $"3;x;5;4;5;x;" }2 % G6
    \markup { \fret-diagram-terse $"x;7;5;7;7;x;" }2 % Emi9
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }2 % Ami7
    \markup { \fret-diagram-terse $"x;5;4;5;4;x;" }2 % D7b9

    \markup { \fret-diagram-terse $"x;10;9;9;8;x;"  }2 % G6
    \markup { \fret-diagram-terse $"x;8;9;10;8;x;"  }2 % G7/F
    \markup { \fret-diagram-terse $"x;7;10;9;10;x;" }2 % C6/E
    \markup { \fret-diagram-terse $"x;6;7;8;8;x;"   }2 % Cmi6/Eb

    \markup { \fret-diagram-terse $"x;5;5;4;5;x;" }2 % G6/D
    \markup { \fret-diagram-terse $"x;7;5;7;5;x;" }2 % Emi7
    \markup { \fret-diagram-terse $"5;x;5;6;5;x;" }2 % A7
    \markup { \fret-diagram-terse $"x;5;7;5;7;x;" }2 % D7

    \markup { \fret-diagram-terse $"3;x;5;4;5;x;" }2 % G6
    \markup { \fret-diagram-terse $"x;7;5;7;7;x;" }2 % Emi9
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }2 % Ami7
    \markup { \fret-diagram-terse $"x;5;4;5;4;x;" }2 % D7b9

    \markup { \fret-diagram-terse $"3;x;5;4;5;x;" }2 % G6
    \markup { \fret-diagram-terse $"x;7;5;7;7;x;" }2 % Emi9
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }2 % Ami7
    \markup { \fret-diagram-terse $"x;5;4;5;4;x;" }2 % D7b9

    \markup { \fret-diagram-terse $"x;10;9;9;8;x;"  }2 % G6
    \markup { \fret-diagram-terse $"x;8;9;10;8;x;"  }2 % G7/F
    \markup { \fret-diagram-terse $"x;7;10;9;10;x;" }2 % C6/E
    \markup { \fret-diagram-terse $"x;6;7;8;8;x;"   }2 % Cmi6/Eb

    \markup { \fret-diagram-terse $"x;5;5;4;5;x;" }2 % G6/D
    \markup { \fret-diagram-terse $"x;7;5;7;5;x;" }2 % Emi7
    \markup { \fret-diagram-terse $"5;x;5;6;5;x;" }2 % A7
    \markup { \fret-diagram-terse $"x;5;7;5;7;x;" }2 % D7

    \markup { \fret-diagram-terse $"9;x;9;9;8;x;" }1 % C#mi7b5
    \markup { \fret-diagram-terse $"x;9;8;9;8;x;" }2 % F#7b9
    \markup { \fret-diagram-terse $"7;x;7;7;7;x;" }2 % Bmi7
    \markup { \fret-diagram-terse $"x;7;6;7;6;x;" }2 % E7b9
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }2 % Ami7
    \markup { \fret-diagram-terse $"x;5;4;5;5;x;" }1 % D9

    \markup { \fret-diagram-terse $"9;x;9;9;8;x;" }1 % C#mi7b5
    \markup { \fret-diagram-terse $"x;9;8;9;8;x;" }2 % F#7b9
    \markup { \fret-diagram-terse $"7;x;7;7;7;x;" }2 % Bmi7
    \markup { \fret-diagram-terse $"x;7;6;7;6;x;" }2 % E7b9
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }2 % Ami7
    \markup { \fret-diagram-terse $"x;5;4;5;5;x;" }1 % D9

    \markup { \fret-diagram-terse $"3;x;5;4;5;x;" }2 % G6
    \markup { \fret-diagram-terse $"x;7;5;7;7;x;" }2 % Emi9
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }2 % Ami7
    \markup { \fret-diagram-terse $"x;5;4;5;4;x;" }2 % D7b9

    \markup { \fret-diagram-terse $"3;x;5;4;5;x;" }2 % G6
    \markup { \fret-diagram-terse $"x;7;5;7;7;x;" }2 % Emi9
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }2 % Ami7
    \markup { \fret-diagram-terse $"x;5;4;5;4;x;" }2 % D7b9

    \markup { \fret-diagram-terse $"x;10;9;9;8;x;"  }2 % G6
    \markup { \fret-diagram-terse $"x;8;9;10;8;x;"  }2 % G7/F
    \markup { \fret-diagram-terse $"x;7;10;9;10;x;" }2 % C6/E
    \markup { \fret-diagram-terse $"x;6;7;8;8;x;"   }2 % Cmi6/Eb

    \markup { \fret-diagram-terse $"x;5;5;4;5;x;" }2 % G6/D
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }4 % Ami7
    \markup { \fret-diagram-terse $"x;5;7;5;7;x;" }4 % D7
    \markup { \fret-diagram-terse $"7;x;7;8;8;x;" }2 % B7#5
    \markup { \fret-diagram-terse $"x;7;6;7;6;x;" }2 % E7b9
    \markup { \fret-diagram-terse $"5;x;5;5;5;x;" }2 % Ami7
    \markup { \fret-diagram-terse $"x;5;7;5;5;7;" }2 % D9 13
    \markup { \fret-diagram-terse $"3;x;5;4;5;x;" }1 % G6


  }
  \new Staff {
    \clef "treble_8"
    \new Voice = "melody" {
      \key d \major

      fs4 g4 a8 b4 a8 g4 fs8 e8~ e8
      fs4 g8 a4 b4 cs'4 d'4 cs'2.
      b4 d'4 d'4 d'8 d'4 d'8 b8 b4. r4
      b4 cs'8 cs'4 cs'8 cs'4 cs'4 a1

      fs4 g4 a8 b4 a8 g4 fs8 e8~ e8
      fs4 g8 a4 b4 cs'4 d'4 e'2.
      d'4 cs'4 e'4 a4 cs'4 b4 d'4 gs8 gs8 b4 a1
      a4 g4 fs4 e4 d1 r1

      \key g \major

      \repeat volta 2 {
        g4 e8 fs8~ fs8 fs4 e8 g4 a8 b8~ b8 b4.
        g4 e8 fs8~ fs8 fs4 e8 g4 a8 b8~ b8 b4.
        d'8 g8 r4 d'8 g8 r4 d'8 g8 r4 d'8 g8 r4
        d'4 c'8 b8 a4 g4 a2. r4

        g4 e8 fs8 fs8 fs4 e8 g4 a8 b8 b8 b4.
        g4 e8 fs8 fs8 fs4 e8 g4 a8 b8 b8 b4
        b8 d'8 g8 r8 g8 d'8 g8 r8 g8 d'8 g8 r8 g8 d'8 g8 r4
        d'4 c'8 b8 a4 g4 a2 r4

        g4 e'1 d'8 cs'8 b8 cs'8 d'4 d'4 b4 b4 c'4 c'4 a2.
        e4 e'1 d'8 cs'8 b8 cs'8 d'4 d'4 b4 b4 c'4 c'4 a2.

        d8 d8 g8 g4 e8 fs8 fs4 e8 g8 g4 a8 b8 b4.
        g8 g4 e8 fs8 fs4 e8 g8 g4 a8 b8 b4.
        d'8 g8 r4 d'8 g8 r4 d'8 d'8 g8 g8 d'8 g4.
        d'8 d'8 c'8 b8 c'8 b8 a4 b2. r4

        e'4 d'8 c'8 b4 b4 g2 r2
      }
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

    <<
      {
        You say ee -- ther and I say eye -- ther.
        You say nee -- ther and I say ny -- ther.
        Ee -- ther, eye -- ther, nee -- ther, ny -- ther!
      }
      \new Lyrics {
        \set associatedVoice = "melody"
        You say laugh -- ter and I say lawf -- ter.
        You say af -- ter and I say awf -- ter.
        Laugh -- ter, lawf -- ter, af -- ter, awf -- ter!
      }
    >>

    Let's call the whole thing off.

    <<
      {
        You like po -- ta -- to and I like po -- tah -- to.
        You like to -- ma -- to and I like to -- mah -- to.
        Po -- ta -- to, po -- tah -- to, to -- ma -- to, to -- mah -- to!
      }
      \new Lyrics {
        \set associatedVoice = "melody"
        You like va -- nil -- la and I like va -- nel -- la.
        You sa's -- pa -- ril -- la and I sa's -- pa -- rel -- la.
        Va -- nil -- la, va -- nel -- la, _ choc' -- late, _ straw -- b'ry!
      }
    >>

    Let's call the whole thing off.

    But oh! If we call the whole thing off then we must part.
    And oh! If we ev -- er part then that might break my heart.

    <<
      {
        So, if you like pa -- ja -- mas and I like pa -- jah -- mas,
        I'll wear pa -- ja -- mas and give up pa -- jah --mas.
      }
      \new Lyrics {
        \set associatedVoice = "melody"
        So, if you go for oyst -- ers and I go for erst -- ers,
        I'll or -- der oyst -- ers and can -- cel the erst -- ers.
      }
    >>

    For we know we need each oth -- er, so we
    bet -- ter call the call -- ing off off.

    Let's call the whole thing off.
  }
>>
