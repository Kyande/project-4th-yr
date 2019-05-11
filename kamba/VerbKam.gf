concrete VerbKam of Verb = CatKam ** open ResKam in {

flags optimize=all_subs ;

lin
	UseV verb = {
        s = \\t,ant,b,agr => 
          let
            inf  = verb.s ! VInf ;
            imper = verb.s ! VImper agr.n agr.p;
            pres = verb.s ! VPres agr.n agr.g agr.p ;
            past  = verb.s ! VPast agr.n agr.g agr.p ;
            fut = verb.s ! VFut agr.n agr.g agr.p ; 
          in
          case <t,ant,b> of {
            <_,Anter,Pos> => imper;
            <Pres,Simul,Pos> => pres  ;
            <Past,Anter,Pos> => past ;
            <Fut, Anter,Pos> => fut ;
            <_,_,_> => inf
          } ;
       s2 = \\_ => []
      } ;

}
