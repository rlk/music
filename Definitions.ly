
% These exceptions produce chord names similar to the Stadards Real Book

chExceptionMusic = {
  <c e  g  b >1-\markup       { "ma" \super "7"  }
  <c ef g  a>1-\markup        { "mi" \super "6"  }
  <c ef g  bf>1-\markup       { "mi" \super "7"  }
  <c ef g  bf d'>1-\markup    { "mi" \super "9"  }
  <c ef g  bf d' f'>1-\markup { "mi" \super "11" }
  <c ef gf bf>1-\markup       { "mi" \super { "7"  \hspace #0.4 \raise #0.4 \smaller{\flat}  "5"  }}
  <c e g bf d' fs'>1-\markup    {    \super { "9"  \hspace #0.4 \raise #0.4 \smaller{\sharp} "11" }}
  <c e g bf d' fs' a'>1-\markup {    \super { "13" \hspace #0.4 \raise #0.4 \smaller{\sharp} "11" }}
}

chExceptions = #(sequential-music-to-chord-exceptions chExceptionMusic #t)

% Prefer the use of the Lilypond scheme $ syntax to the # syntax for string
% literals due to SubLilyPond detecting ; in a # string as a comment.
