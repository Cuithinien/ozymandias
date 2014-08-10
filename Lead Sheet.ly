\version "2.18.2"

\header {
  title = "Ozymandias"
  composer = "Aliosha Bielenberg"
  copyright = "This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License."
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    \Voice
    \consists "Melody_engraver"
  }
}

global = {
  \key f \major
  \time 4/4
  \tempo 4=138
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  f1 bes/f e:dim a:m/e d:m g:m/d c d:m f:m bes:m/f e:7dim aes/ees d:dim g:dim/des c:sus4 f:m f bes/f e:dim a:m/e d:m g:m/d c:7 f
}

melody = \relative f' {
  \global
  % Music follows here.
  f4. g8 bes a g f d'4. c8 bes4 a g r8 d' bes c a bes a4. e4. f4 d e8 f \tuplet 3/2 { g4 a g } bes4. d4. c4 a8 g4. c,4 d8 e f2 r f4. g8 bes aes g f des'4. c8 bes4 aes g r8 des'8 bes c aes bes aes4. e4. f4 d8 e f4 \tuplet 3/2 { g aes g } bes4. des4. c4 aes8 g ~ g2 d8 e f2 r f4. g8 bes a g f d'4. c8 bes4 a g r8 d' bes c a bes a4. e4. f4 d8 e f4 \tuplet 3/2 { g a g } bes4. d4. c4 a8 g4. a8 g f e f2
}

verse = \lyricmode {
  % Lyrics follow here.
  I once came up -- on a tra -- vel -- ler who "said:" "“A" sha -- ttered vi -- sage lies in the sands with a wrink -- led lip and a sneer of cold com -- \skip4 \skip4 mand On the ped -- es -- tal these words ap -- "pear:" "‘My" name is Oz -- ym -- an -- di -- as King of Kings \skip4 \skip4 look up -- on my works ye might -- y and de -- "spair!’" But a -- round the de -- cay of that wreck the lone and le -- vel sands stretch far a -- way No -- \skip4 thing be -- side re -- mains but the de -- sert bound -- \skip4 less and "bare”"
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \melody }
    \addlyrics { \verse }
  >>
  \layout { }
  \midi { }
}
