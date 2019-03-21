--# -path=.:../abstract:../../prelude:../common
resource ParadigmsKam = open 
  (Predef=Predef), 
  Prelude, 
  MorphoKam,
  CatKam
  in {
-- To abstract over gender names, we define the following identifiers.

oper
  Gender : Type ; 

  animate   : Gender ;
  inanimate : Gender ;

-- To abstract over number names, we define the following.

  Number : Type ; 

  singular : Number ;
  plural   : Number ;

-- To abstract over case names, we define the following.

  Case : Type ;

  nominative : Case ;
  locative   : Case ;

-- To abstract over nounclass names, we define the following.
  
  Nounclass : Type ;
  m_wa, m_mi : Nounclass ;
 ji_ma, e_ma, ma_ma, ki_vi, e_e, u_u, u_ma, u_e : Nounclass ;

--2 Nouns

-- Worst case: give all forms and the semantic gender.
-- mkN  : (oeil,yeux : Str) -> Nounclass -> Gender -> N ;

-- The regular function captures the variants for nouns ending with
-- "s","sh","x","z" or "y": "kiss - kisses", "flash - flashes"; 
-- "fly - flies" (but "toy - toys"),

--  regN : Str -> Nounclass -> Gender -> N ;

regN :  Str -> Str -> {s : Number => Str}  = \msichana,wasichana -> {    s = table {Sg => msichana ; Pl => wasichana;} } ;


-- In practice the worst case is just: give singular and plural nominative.

-- mk2N : (man,men : Str) -> N ;

-- All nouns created by the previous functions are marked as
-- $nonhuman$. If you want a $human$ noun, wrap it with the following
-- function:

  genderN : Gender -> N -> N ;

--2 Definitions of paradigms
--
-- The definitions should not bother the user of the API. So they are
-- hidden from the document.
--.

  Gender = MorphoKam.Gender ; 
  Number = MorphoKam.Number ;
  Case = MorphoKam.Case ;
  Nounclass = MorphoKam.Nounclass ;
  animate = AN ; 
  inanimate = IN ;
  singular = Sg ;
  plural = Pl ;
  nominative = Nom ;
  locative = Loc ;
  m_wa = nc1_2 ;
  m_mi = nc3_4 ;
  ji_ma = nc5_6 ;
  e_ma = nc5a_6 ;
  ma_ma = nc6 ; 
  ki_vi = nc7_8 ;
  e_e = nc9_10 ; 
  u_u = nc11 ; 
  u_ma = nc11_6 ; 
  u_e = nc11_10 ;

-- The order of sentence is needed already in $VP$.

    Order = ODir | OQuest ;

};
