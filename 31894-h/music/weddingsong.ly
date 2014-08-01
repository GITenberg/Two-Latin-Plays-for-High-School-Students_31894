\version "2.10.25" 
\include "english.ly"


melody = \relative ef'
<<
  { 
  \tempo 4=90  
  \autoBeamOff
  \once \override Score.MetronomeMark #'transparent = ##t
  \clef treble
  \key af \major
  \time 2/4
  ef8. c'16 c8 bf | bf8. af16 af8 af | af8. g16 fs8 g | df'4 df |
  df,16 ef g bf bf8 df | c4 bf | \acciaccatura c8 bf8 af f af | ef2 |
  \acciaccatura ef8 c8. ef16 af8 c | bf8. af16 af8 af |
     \acciaccatura bf af8. g16 fs8 g | df2 |
  df16 ef g bf bf8 df | c8. bf16 bf8 c |
    bf8 \melisma af \melismaEnd g af | ef'4 ef |
  c,8. ef16 af8 c | df8. c16 c8 c | c8. bf16 a8 bf | f'4 f |
  ef8 ef16 ef c8 af | g4 f |
  f'4 df8 bf | af4( g4) | df'4 df8 c8 | af4. af8  }

  \addlyrics
    {
  Hes -- pe -- re, qui cæ -- lo fer -- tur cru -- de -- li -- or
    ig -- nis?
  Qui na -- tam pos -- sis com -- plex -- u avel -- le -- re
    ma -- tris,
  Complex -- u ma -- tris re -- ti -- nen -- tem avel -- le -- re
    na -- tam
  Et iu -- ve -- ni ar -- den -- ti cas -- tam do -- na __ re
    pu -- el -- lam.
  Quid fa -- ci -- unt hos -- tes cap -- ta cru -- de -- li -- us ur -- be?
  Hy -- men O Hy -- me -- næ -- e,
  Hy -- men ad -- es O Hy -- me -- næ -- e.
    } 
  >>
  \score { 
    \new Staff \melody 
    \layout {
       \context {
       \Score
       \remove Bar_number_engraver
  }  } 
  \midi { 
    \context { \Score %{tempoWholesPerMinute = #(ly:make-moment 60 4)%} } 
  }
}
