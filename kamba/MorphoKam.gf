--# -path=.:../../prelude

--1 A Simple Kamba Resource Morphology
--
-- Kyande Michael 2019
--
-- This resource morphology contains definitions needed in the resource
-- syntax. To build a lexicon, it is better to use $ParadigmsKam$, which
-- gives a higher-level access to this module.

resource MorphoKam = open Prelude, (Predef=Predef), ResKam in {

  flags optimize=all ;

--2 Nouns

  oper
  CommonNoun : Type = {s : Number => Str ; g : Gender ; anim : Animacy } ;

  numForms : Str -> Str -> Number => Str = \one, many ->
    table {Sg => one ; Pl => many};

  mkNoun : (Number => Str) -> Gender -> Animacy -> CommonNoun =
    \number_format, gender, animacy -> {s = number_format ; g = gender ; anim =animacy};

  mkNounIrreg : Str -> Str -> Gender -> Animacy -> CommonNoun =
    \noun_sg, noun_pl, gender, animacy ->
      mkNoun (numForms noun_sg noun_pl) gender animacy;

  mkNounReg : Str -> Gender -> Animacy -> CommonNoun =
    \noun_sg, gender, animacy -> let noun_pl = case gender of {
    g1_2    => "a" + Predef.drop 2 noun_sg ;
    g1a_2   => Predef.drop 2 noun_sg ;
    g3_4    => "mi" + Predef.drop 2 noun_sg ;
    g3a_4   => case Predef.take 3 of {
      "mwi" => "mi" + Predef.drop 3 noun_sg ;
      _     => "my" + Predef.drop 2 noun_sg
    };
    g5_6    => "ma" + Predef.drop 1 noun_sg ;
    g5a_6   => "ma" + noun_sg
  };
  in mkNounIrreg noun_sg noun_pl gender animacy;

} ;
