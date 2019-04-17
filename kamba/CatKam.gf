--# -path=.:../abstract:../../prelude:../common
concrete CatKam of Cat = CommonX ** open ResKam, Prelude in {

  flags optimize=all_subs ;

  lincat

    N     = { s : Number => Str; g : Gender } ;
    A     = { s : Degree => AForm => Str} ;
    AP    = { s : AForm => Str } ;
    -- Pron  = { s :Number => Str ; p : Person};
    Det   = { s : Gender => Case => Str ; n : Number } ;
    Quant = { s : Number => Gender => Case => Str} ;
    CN    = { s,s1,s2 : Number => Str; g : Gender ; hasAdj : Bool } ;
    NP    = { s: Case => Str ; n : Number } ;

};
