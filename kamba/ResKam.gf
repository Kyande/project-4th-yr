--# -path=.:../abstract:../common:../../prelude

--1 Kamba auxiliary operations.

-- This module contains operations that are needed to make the
-- resource syntax work. To define everything that is needed to
-- implement $Test$, it moreover contains regular lexical
-- patterns needed for $Lex$.

resource ResKam = ParamX ** open Prelude in {

  flags optimize=all ;

  --For $Noun$
  -- Some parameters, such as $Number$, are inherited from $ParamX$.

  --2 For $Noun$

  -- This is case as needed when inflecting nouns.

    param Case    = Nom | Loc ;

    -- param Animacy = AN | IN;

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

    param VForm = VInf | 
                  VImper Number Person | 
                  VPres Number Gender Person | 
                  VPast Number Gender Person | 
                  VFut Number Gender Person;
  
  --2 For Adjectives

    param AForm = AF Number Gender | AA ;
  
  --2 For Agreements

    param Spatial = Close | Far ;

    oper
      Agr = { n : Number ; g : Gender ; p : Person } ;
      agreement : Number -> Gender -> Person -> Agr =
        \n,g,p -> {n = n ; g = g ; p = p} ;
}
