--# -path=.:../abstract:../common:../../prelude

--1 Kamba auxiliary operations.

-- This module contains operations that are needed to make the
-- resource syntax work. To define everything that is needed to
-- implement $Test$, it moreover contains regular lexical
-- patterns needed for $Lex$.

resource ResEng = ParamX ** open Prelude in {

  flags optimize=all ;


-- Some parameters, such as $Number$, are inherited from $ParamX$.

--2 For $Noun$

-- This is case as needed when inflecting nouns.

  param Case    = Nom | Loc ;
  param Animacy = AN | IN;
  param Gender  = g1_2 | g1a_2 | g3_4 | g3a_4 | g5_6 | g5a_6 ;

--2 For $Verb$

--2 For $Adjective$

--2 For $Relative$

--2 For $Numeral$

--2 Transformations between parameter types

-- For $Sentence$.

-- For $Numeral$.


}
