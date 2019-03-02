--# -path=.:../abstract:../common:../../prelude

--1 Kamba auxiliary operations.

resource ResKam = ParamX ** open Prelude in {

  flags optimize=all ;


-- Some parameters, such as $Number$, are inherited from $ParamX$.

--2 For $Noun$

-- This is case as needed when inflecting nouns.

  param Case    = Nom | Loc ;
  param Animacy = AN | IN;
  param Gender  = g1_2 |
   g1a_2 |
   g3_4 |
   g3a_4 | -- has special case
   g5_6 |
   g5a_6 ; -- | -- has a lot of irregulars.
   -- g7_8 |
   -- g7a_8 |
   -- g9_10 |
   -- g11_10 |
   -- g11a_10 |
   -- g12_13 |
   -- g14_6 |
   -- g15_6 |
   -- g15a_6 |
   -- g16_17;

--2 For $Verb$

--2 For $Adjective$

--2 For $Relative$

--2 For $Numeral$

--2 Transformations between parameter types

-- For $Sentence$.

-- For $Numeral$.


}
