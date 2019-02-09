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

  ka_tu : Gender ;
  va_ku : Gender ;
  n_n   : Gender ;
  u_n   : Gender ;
  w_n   : Gender ;


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
  ka_tu       = g12_13;
  va_ku       = g16_17;
  n_n         = g9_10;
  u_n         = g11_10;
  w_n         = g11a_10;

  -- npNumber np = (fromAgr np.a).n ;

} ;
