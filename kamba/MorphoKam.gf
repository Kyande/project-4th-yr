--# -path=.:../../prelude

--1 A Simple Kamba Resource Morphology


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
		g1_2	=> case Predef.take 2 noun_sg of {
			"mw"	=> Predef.drop 2 noun_sg ;
			_		=> "a" + Predef.drop 2 noun_sg
		};
		g3_4	=> case Predef.take 2 noun_sg of {
			"mu" => "mi" + Predef.drop 2 noun_sg ;
			"mw" => "mi" + Predef.drop 3 noun_sg 
		};
		g5_6	=> case Predef.take 1 noun_sg of {
			"i"	=> "ma" + Predef.drop 1 noun_sg ;
			_	=> "ma" + noun_sg
		};
		g7_8	=> case Predef.take 2 noun_sg of {
			"ki" => Predef.drop 1 noun_sg;
			"ky" => "s" + Predef.drop 1 noun_sg
		};
		g9_10	=> noun_sg;
		g11_10	=> "n" + Predef.drop 1 noun_sg;
		g12_13	=> "tu" + Predef.drop 2 noun_sg;
		g14_6	=> "ma" + Predef.drop 1 noun_sg;
		g15_6	=> "ma" + Predef.drop 2 noun_sg;
		g16_17	=> "ku" + Predef.drop 2 noun_sg
	};
	in mkNounIrreg noun_sg noun_pl gender animacy;

} ;
