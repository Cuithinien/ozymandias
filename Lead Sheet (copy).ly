\version "2.18.2"

\header {
  title = "Ozymandias"
  composer = "Aliosha Bielenberg"
  copyright = "CC BY 4.0"
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
  f1 bes e:7dim a:m d:m g:m c d:m f:m bes:m e:7dim aes d:dim g:dim c:sus4 f:m f bes e:7dim a:m d:m g:m c:7 f
}

melody = \relative f' {
  \global
  % Music follows here.
  f4. g8 bes a g f | % 2
  d'4. c8 bes4 a | % 3
  g4 r8 d' bes c a bes | % 4
  a4. e f4 | % 5
  d4 e8 f \times 2/3 {
    g4 a g
  }
  | % 6
  bes4. d c4 | % 7
  a8 g4. c,4 d8 e | % 8
  f2 r | % 9
  f4. g8 bes as g f | \barNumberCheck #10
  des'4. c8 bes4 as | % 11
  g4 r8 des' bes c as bes | % 12
  as4. e f4 | % 13
  d8 e f4 \times 2/3 {
    g4 as g
  }
  | % 14
  bes4. des c4 | % 15
  as8 g2 r8 d e | % 16
  f2 r | % 17
  f4. g8 bes a g f | % 18
  d'4. c8 bes4 a | % 19
  g4 r8 d' bes c a bes | \barNumberCheck #20
  a4. e f4 | % 21
  d8 e f4 \times 2/3 {
    g4 a g
  }
  | % 22
  bes4. d c4 | % 23
  a8 g4. a8 g f e | % 24
  f2 r \bar "|."
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
