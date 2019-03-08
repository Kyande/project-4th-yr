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
	g3_4 |
	g5_6 |
	g7_8 |
	g9_10 |
	g11_10 |
	g12_13 |
	g14_6 |
	g15_6 |
	g16_17;

--2 For $Verb$


}
