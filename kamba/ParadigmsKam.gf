--# -path=.:../abstract:../../prelude:../common

--1 Kamba Lexical Paradigms

resource ParadigmsKam = open
  (Predef=Predef),
  Prelude,
  MorphoKam,
  ResKam,
  CatKam
  in {
--2 Parameters
flags optimize=all

oper
-- To abstract over animacy types we define the following identifiers

  Animacy : Type;

  animate   : Animacy;
  inanimate : Animacy;

-- To abstract over gender names, we define the following identifiers.

  Gender : Type ;

  mu_a  : Gender ;
  mw_a  : Gender ;
  mu_mi : Gender ;
  mw_my : Gender ; -- has special case
  i_ma  : Gender ;
  y_ma  : Gender ;


-- To abstract over number names, we define the following.

  Number : Type ;

  singular : Number ;
  plural   : Number ;

-- To abstract over case names, we define the following.

  Case : Type ; --%

  nominative : Case ; --%
  locative   : Case ; --%

-- Prepositions are used in many-argument functions for rection.
-- The resource category $Prep$ is used.

-- The number of a noun phrase can be extracted with the following
-- function.

--  npNumber : NP -> Number ; -- exctract the number of a noun phrase


--2 Nouns

-- generate regular nouns i.e nouns that do not need special handling

regN : Str -> Gender -> Animacy -> N;
regN = \noun, gender, animacy ->
  mkNounReg noun gender animacy ** {lock_N = <>};
-- generate irregular nouns i.e nouns that require special handling
mkN : (noun_sg, noun_pl : Str) -> Gender -> Animacy -> N;
mkN = \noun_sg, noun_pl, gender, animacy ->
  mkNounIrreg noun_sg noun_pl gender animacy ** {lock_N = <>};


--3 Relational nouns

--3 Proper names and noun phrases

--3 Determiners and quantifiers

--2 Adjectives

--3 Two-place adjectives

--2 Adverbs

--2 Prepositions

--2 Conjunctions

--2 Verbs

--2 Definitions of paradigms
--
-- The definitions should not bother the user of the API. So they are
-- hidden from the document.

  Gender      = ResKam.Gender ;
  Number      = ResKam.Number ;
  Case        = ResKam.NPCase ;
  Animacy     = ResSwa.Animacy;
  animate     = AN;
  inanimate   = IN;
  singular    = Sg;
  plural      = Pl;
  nominative  = Nom;
  locative    = Loc;
  mu_a        = g1_2 ;
  mw_a        = g1a_2 ;
  mu_mi       = g3_4 ;
  mw_my       = g3a_4 ; -- has special case
  i_ma        = g5_6 ;
  y_ma        = g5a_6 ; -- has a lot of irregulars.

  -- npNumber np = (fromAgr np.a).n ;

} ;
