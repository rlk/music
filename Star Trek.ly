\language "english"
\version "2.18.2"
\include "Definitions.ly"

#(set-global-staff-size 18)

\paper {
  indent = 0
}

\header {
  title = "Theme from Star Trek"
  composer = "Alexander Courage & Jerry Goldsmith"
  tagline = "Lilypond engraving by github.com/rlk"
}

<<
  \new ChordNames \chordmode {
    \set chordNameExceptions = #chExceptions
    \set chordChanges = ##t
    bf1:maj7 bf1:maj7 gf1:9 gf1:9 \break
    bf1:maj7 bf1:maj7 ef1:9.11+ ef1:9.11+ \break
    c1:maj7 c1:maj7 b2:9.5- b2:9 b1:9 \break
    df1:maj7 df1:maj7 f2:7.9+ f2:7 f1:7 \break
    bf1:maj7 bf1:maj7 gf1:9 gf1:9 \break
    bf1:maj7 bf1:maj7 ef1:9.11+ d1:7.9+ \break
    ef1:maj7 ef1:m6 d1:m g1:7.5+.9- \break
    c1:m f2:9 f2:7.9- bf1:maj7 bf1:maj7
  }
  \new Lyrics \lyricmode {
    \markup { \fret-diagram-terse $"6;x;7;7;6;x;" }1 _1
    \markup { \fret-diagram-terse $"x;9;8;9;9;x;" }1 _1

    \markup { \fret-diagram-terse $"6;x;7;7;6;x;" }1 _1
    \markup { \fret-diagram-terse $"x;6;7;6;6;x;" }1 _1

    \markup { \fret-diagram-terse $"8;x;9;9;8;x;" }1 _1
    \markup { \fret-diagram-terse $"7;x;7;6;6;x;" }2
    \markup { \fret-diagram-terse $"7;x;7;6;7;x;" }2 _1

    \markup { \fret-diagram-terse $"9;x;10;10;9;x;" }1 _1
    \markup { \fret-diagram-terse $"x;8;10;8;9;x;"  }2
    \markup { \fret-diagram-terse $"x;8;10;8;10;x;" }2 _1

    \markup { \fret-diagram-terse $"6;x;7;7;6;x;" }1 _1
    \markup { \fret-diagram-terse $"x;9;8;9;9;x;" }1 _1

    \markup { \fret-diagram-terse $"6;x;7;7;6;x;" }1 _1
    \markup { \fret-diagram-terse $"x;6;7;6;6;x;" }1
    \markup { \fret-diagram-terse $"x;5;4;5;6;x;" }1

    \markup { \fret-diagram-terse $"x;6;8;7;8;x;" }1
    \markup { \fret-diagram-terse $"x;6;4;5;4;x;" }1
    \markup { \fret-diagram-terse $"x;5;7;7;6;x;" }1
    \markup { \fret-diagram-terse $"x;x;5;4;4;4;" }1

    \markup { \fret-diagram-terse $"x;3;5;5;4;x;" }1
    \markup { \fret-diagram-terse $"x;8;7;8;8;x;" }2
    \markup { \fret-diagram-terse $"x;8;7;8;7;x;" }2
    \markup { \fret-diagram-terse $"6;x;7;7;6;x;" }1
  }
  \new Staff {
    \clef "treble_8"
    f2 ef'2~ ef'4 d'4 \tuplet 3/2 { c'4 bf a} af1~ af2. gf4
    f2 f'2~ f'4 ef'4 \tuplet 3/2 { d'4 c' bf } a1~ a2. af4
    g2. a4 b4 c'4 \tuplet 3/2 { d'4 e' f' } g'2 gs'2~ gs'1
    af2. bf4 c'4 df'4 \tuplet 3/2 { ef'4 f' gf' } af'2 a'2~ a'1
    f2 ef'2~ ef'4 d'4 \tuplet 3/2 { c'4 bf a} af1~ af2. gf4
    f2 f'2~ f'4 ef'4 \tuplet 3/2 { d'4 c' bf } a1~ a2. af4
    g2. a4 bf4 c'4 \tuplet 3/2 { d'4 ef' d' } f'2~ \tuplet 3/2 { f'4 d' f' } af'2. g'4
    f'2 g2~ g2 c'2 bf1~ bf1
  }
>>