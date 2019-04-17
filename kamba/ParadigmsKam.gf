--# -path=.:../abstract:../../prelude:../common

--1 Kamba Lexical Paradigms


resource ParadigmsKam = open(Predef=Predef), Prelude, MorphoKam,ResKam,CatKam in {

flags optimize=all ;

--2 Parameters
--
-- To abstract over gender names, we define the following identifiers.

oper
  -- Abstraction for noun classes.

  Gender : Type ;

  mu_a    : Gender ;
  mu_mi   : Gender ;
  i_ma    : Gender ;
  ki_i    : Gender ;
  n_n     : Gender ;
  u_n     : Gender ;
  ka_tu   : Gender ;
  u_ma    : Gender ;
  ku_ma   : Gender ;
  va_ku   : Gender ;

  locative   : Case ;

  --2 Nouns

  -- generate regular nouns i.e nouns that do not need special handling

  regN : Str -> Gender -> N ;
  regN = \noun, gender ->
  mkNounReg noun gender ** {lock_N = <>};

  -- generate irregular nouns i.e nouns that require special handling
  mkN : (noun_sg, noun_pl : Str) -> Gender -> N ;

  mkN = \noun_sg, noun_pl, gender ->
  mkNounIrreg noun_sg noun_pl gender ** {lock_N = <>};

  -- 3 Verbs

  -- 4 Adjectives
  regA : Str -> A ;

  compADeg : A -> A ;

  regA a = compADeg {
         s = \\_ => (mkAdjective a).s ;
         lock_A = <>} ;

  compADeg a =
  {
       s = table {
          Posit => a.s ! Posit ;
           _ => \\f => a.s ! Posit ! f ++ "ta"
       } ;
     lock_A = <>
  } ;
  --2 Prepositions
  mkPrep : Str -> Prep ;
  mkPrep p = { s = p ; lock_Prep = <> } ;
  --2 Determiners
  --2 Definitions of paradigms
  --
  -- The definitions should not bother the user of the API. So they are
  -- hidden from the document.

  Gender      = ResKam.Gender ;
  Number      = ResKam.Number ;
  -- Case        = ResKam.Case ;
  -- Animacy     = ResKam.Animacy;
  -- animate     = AN;
  -- inanimate   = IN;
  singular    = Sg;
  plural      = Pl;
  nominative  = Nom;
  locative    = Loc;
  mu_a        = g1_2 ;
  mu_mi       = g3_4 ;
  i_ma        = g5_6 ;
  ki_i        = g7_8 ;
  n_n         = g9_10 ;
  u_n         = g11_10 ; -- has a lot of irregulars.
  ka_tu       = g12_13 ; -- diminutives.
  u_ma        = g14_6 ;
  ku_ma       = g15_6 ;
  va_ku       = g16_17 ;
  Spatial     = ResKam.Spatial ;
  close       = Close ;
  far         = Far ;

} ;
