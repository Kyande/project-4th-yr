--# -path=.:../abstract:../../prelude:../common

--1 A Simple Kamba Resource Morphology
--
-- This resource morphology contains definitions needed in the resource
-- syntax. To build a lexicon, it is better to use $ParadigmsKam$, which
-- gives a higher-level access to this module.

resource MorphoKam = open Prelude, (Predef=Predef), ResKam in {

  flags optimize=all ;
--$Nouns--
oper
  CommonNoun : Type = { s : Number => Str ; g : Gender } ;

  numForms : Str -> Str -> Number => Str = \singular, plural ->
    table {Sg => singular ; Pl => plural};

  mkNoun : (Number => Str) -> Gender -> CommonNoun =
    \number_format, gender -> {s = number_format ; g = gender };

  mkNounIrreg : Str -> Str -> Gender -> CommonNoun =
    \noun_sg, noun_pl, gender ->
      mkNoun (numForms noun_sg noun_pl) gender;

  mkNounReg : Str -> Gender -> CommonNoun =
    \noun_sg, gender -> let noun_pl = case gender of {
    g1_2	=> case Predef.take 2 noun_sg of {
      "mw"	=> Predef.drop 2 noun_sg ;
      _		=> "a" + Predef.drop 2 noun_sg
    };
    g3_4	=> case Predef.take 2 noun_sg of {
      "mũ" => "mĩ" + Predef.drop 2 noun_sg ;
      "mw" => "mĩ" + Predef.drop 3 noun_sg
    };
    g5_6	=> case Predef.take 1 noun_sg of {
      "ĩ"	=> "ma" + Predef.drop 1 noun_sg ;
      _	=> "ma" + noun_sg
    };
    g7_8	=> case Predef.take 2 noun_sg of {
      "kĩ" => "i" + Predef.drop 2 noun_sg;
      "ky" => "s" + Predef.drop 1 noun_sg
    };
    g9_10	=> noun_sg;
    g11_10	=> "n" + Predef.drop 1 noun_sg;
    g12_13	=> "tũ" + Predef.drop 2 noun_sg;
    g14_6	=> "ma" + Predef.drop 1 noun_sg;
    g15_6	=> "ma" + Predef.drop 2 noun_sg;
    g16_17	=> "kũ" + Predef.drop 2 noun_sg
  };
  in mkNounIrreg noun_sg noun_pl gender;

--$Adjectives--
oper
  Adj = {s : AForm => Str} ;

  consonantAdjprefix : Number -> Gender -> Str -> Str = \n,g,adjective ->
      case <n,g> of {
      <Sg,g1_2> => "mũ" ;
      <Pl,g1_2> => "a" ;
      <Sg,g3_4> => "mũ" ;
      <Pl,g3_4> => "mĩ" ;
      <Sg,g5_6> => "ĩ" ;
      <Pl,g5_6> => "ma" ;
      <Sg,g7_8> => "kĩ" ;
      <Pl,g7_8> => "n" ;
      <Sg,g9_10> => "n" ;
      <Pl,g9_10> => "n" ;
      <Sg,g11_10> => "mũ" ;
      <Pl,g11_10> => "n" ;
      <Sg,g12_13> => "ka" ;
      <Pl,g12_13> => "tũ" ;
      <Sg,g14_6> => "mũ" ;
      <Pl,g14_6> => "ma" ;
      <Sg,g15_6> => "kũ" ;
      <Pl,g15_6> => "ma" ;
      <Sg,g16_17> => "va" ;
      <Pl,g16_17> => "kũ"
   } ;

  vowelAdjprefix : Number -> Gender -> Str -> Str = \n,g,adjective ->
    case <n,g> of {
     <Sg,g1_2> => "mw" ;
     <Pl,g1_2> => "a" ;
     <Sg,g3_4> => "mw" ;
     <Pl,g3_4> => "my" ;
     <Sg,g5_6> => "y" ;
     <Pl,g5_6> => "ma" ;
     <Sg,g7_8> => "ky" ;
     <Pl,g7_8> => "nz" ;
     <Sg,g9_10> => "nz" ;
     <Pl,g9_10> => "nz" ;
     <Sg,g11_10> => "mw" ;
     <Pl,g11_10> => "nz" ;
     <Sg,g12_13> => "ka" ;
     <Pl,g12_13> => "tw" ;
     <Sg,g14_6> => "mw" ;
     <Pl,g14_6> => "ma" ;
     <Sg,g15_6> => "kw" ;
     <Pl,g15_6> => "ma" ;
     <Sg,g16_17> => "va" ;
     <Pl,g16_17> => "kũ"
    } ;

  mkAdjective : Str -> Adj = \adjective ->
    {
        s = table {
        AF n g  => case Predef.take 1 adjective of {
        "a"|"e"|"i"|"o"|"u"|"ĩ"|"ũ" => vowelAdjprefix n g adjective + adjective ;
        _ => consonantAdjprefix n g adjective + adjective
      };
      AA => adjective
      }
    } ;
--$Pronouns--
-- oper

--$Deteminers--
oper
  mkDetPl : Gender -> Str = 
    \g -> case <g> of {
      <g1_2>   => "a" ;
      <g3_4>   => "" ;
      <g5_6>   => "ma" ;
      <g7_8>   => "" ;
      <g9_10>  => "" ;
      <g11_10> => "" ;
      <g12_13> => "tũ" ;
      <g14_6>  => "ma" ;
      <g15_6>  => "ma" ;
      <g16_17> => "kũ"
    } ;

  mkDetSg : Gender -> Str =
    \g -> case <g> of {
      <g1_2>   => "ũ" ;
      <g3_4>   => "ũ" ;
      <g5_6>   => "yĩ" ;
      <g7_8>   => "kĩ" ;
      <g9_10>  => "" ;
      <g11_10> => "ũ" ;
      <g12_13> => "ka" ;
      <g14_6>  => "ũ" ;
      <g15_6>  => "kũ" ;
      <g16_17> => "va" 
    } ;

--$Quantifiers--
oper 
  mkQuant : Spatial -> Number -> Gender -> Case -> Str =
    \sp,n,g,c -> case <sp, n, g> of {
            <Close, Sg, g1_2>   => "ũũ" ;
            <Close, Pl, g1_2>   => "aa" ;
            <Close, Sg, g3_4>   => "ũũ" ;
            <Close, Pl, g3_4>   => "ĩĩ" ;
            <Close, Sg, g5_6>   => "yĩĩ" ;
            <Close, Pl, g5_6>   => "aa" ;
            <Close, Sg, g7_8>   => "kĩĩ" ;
            <Close, Pl, g7_8>   => "ii" ;
            <Close, Sg, g9_10>  => "ĩĩ" ;
            <Close, Pl, g9_10>  => "ii" ;
            <Close, Sg, g11_10> => "ũũ" ;
            <Close, Pl, g11_10> => "ii" ;
            <Close, Sg, g12_13> => "kaa" ;
            <Close, Pl, g12_13> => "tũũ" ;
            <Close, Sg, g14_6>  => "ũũ" ;
            <Close, Pl, g14_6>  => "aa" ;
            <Close, Sg, g15_6>  => "kũũ" ;
            <Close, Pl, g15_6>  => "aa" ;
            <Close, Sg, g16_17> => "vaa" ;
            <Close, Pl, g16_17> => "kũũ" ;
            <Far, Sg, g1_2>   => "ũya" ;
            <Far, Pl, g1_2>   => "aya" ;
            <Far, Sg, g3_4>   => "ũya" ;
            <Far, Pl, g3_4>   => "ĩya" ;
            <Far, Sg, g5_6>   => "yĩya" ;
            <Far, Pl, g5_6>   => "aya" ;
            <Far, Sg, g7_8>   => "kĩya" ;
            <Far, Pl, g7_8>   => "iya" ;
            <Far, Sg, g9_10>  => "ĩya" ;
            <Far, Pl, g9_10>  => "iya" ;
            <Far, Sg, g11_10> => "ũya" ;
            <Far, Pl, g11_10> => "iya" ;
            <Far, Sg, g12_13> => "kaya" ;
            <Far, Pl, g12_13> => "tũya" ;
            <Far, Sg, g14_6>  => "ũya" ;
            <Far, Pl, g14_6>  => "aya" ;
            <Far, Sg, g15_6>  => "kũya" ;
            <Far, Pl, g15_6>  => "aya" ;
            <Far, Sg, g16_17> => "vaya" ;
            <Far, Pl, g16_17> => "kũya"
        } ;
--$Verbs--
oper
  Verb = { s : VForm => Str };
  mkVerb : Str -> Verb = \verb -> {
    s = table {
      VInf => "ku" + verb;
      VImper n p => case <n, p> of {
        <Sg, P2> => verb;
        <_, _> => verb + "i"
      };
      VPres n g p => "nĩ" + verbPrefix n g p + init verb + "ĩte";
      VPast n g p => "nĩ" + verbPrefix n g p + init verb + "ie";
      VFut n g p  => "nĩ" + verbPrefix n g p + "ka" + init verb + "a"
    }
  };

  verbPrefix : Number -> Gender -> Person -> Str = \n, g, p ->
    case <n, g, p> of {
      <Sg, g1_2, P1> => "na" ;
      <Pl, g1_2, P1> => "twa" ;
      <Sg, g1_2, P2> => "wa" ;
      <Pl, g1_2, P2> => "mwa" ;
      <Sg, g1_2, P3> => "wa" ;
      <Pl, g1_2, P3> => "ma" ;
      <Sg, g3_4, _> => "wa" ;
      <Pl, g3_4, _> => "ya" ;
      <Sg, g5_6, _> => "ya" ;
      <Pl, g5_6, _> => "ma" ;
      <Sg, g7_8, _> => "kya" ;
      <Pl, g7_8, _> => "sya" ;
      <Sg, g9_10, _> => "ya" ;
      <Pl, g9_10, _> => "sya" ;
      <Sg, g11_10, _> => "wa" ;
      <Pl, g11_10, _> => "sya" ;
      <Sg, g12_13, _> => "ka" ;
      <Pl, g12_13, _> => "twa" ;
      <Sg, g14_6, _> => "wa" ;
      <Pl, g14_6, _> => "ma" ;
      <Sg, g15_6, _> => "kwa" ;
      <Pl, g15_6, _> => "ma" ;
      <Sg, g16_17, _> => "va" ;
      <Pl, g16_17, _> => "kwa"
    };
 
} ;