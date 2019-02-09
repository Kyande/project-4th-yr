--# -path=.:../common:../abstract

resource MakeStructuralKam = open CatKam, ParadigmsKam, ResKam, MorphoKam, Prelude in {

oper
  mkSubj : Str -> Subj = \x ->
    lin Subj {s = x} ;
  mkNP : Str -> ParadigmsKam.Number -> NP = \s,n ->
    lin NP (regNP s n) ;
  mkIDet : Str -> ParadigmsKam.Number -> IDet = \s,n ->
    lin IDet {s = s ; n = n} ;
  mkIQuant : Str -> Str -> IQuant = \s,n ->
    lin IQuant {s = table {Sg => s ; Pl => n}} ;

}
