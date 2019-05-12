concrete NounKam of Noun = CatKam ** open MorphoKam, ResKam, Prelude in {

  lin
    UseN noun = {
      s   = noun.s ;
      s1  = noun.s ;
      s2  = noun.s ;
      g   = noun.g ;
      hasAdj  = False ;
    } ;

    DetCN det cn =
      let
        g = cn.g ;
        num = det.n ;
        mod = cn.hasAdj
      in case <mod> of {
        	<False> => {
                s = \\c => cn.s ! num ++ det.s ! g ! c ;
                a = agreement num g P3 ;
                n = num
                } ;
        	<True> => {
                s = \\c => cn.s1 ! num ++ det.s ! g ! c  ++ cn.s2 ! num  ;
                a = agreement num g P3 ;
                n = num
                }
    };

    AdjCN ap cn =
      let
        g = cn.g;
        mod = cn.hasAdj
      in {
        s  = \\n =>  cn.s ! n ++  ap.s ! (AF n g) ;
        s1 = \\n =>  cn.s1 ! n;
        s2=case <mod> of {
        <False> => \\n =>  ap.s ! (AF n g);
        <True> => \\n =>  cn.s2 ! n ++ ap.s ! (AF n g)
      };
      g = g ;
      hasAdj=True
    } ;

    NumSg = {s = \\_ => [] ; n = Sg} ;
    NumPl = {s = \\_ => [] ; n = Pl} ;

    DetQuant quant num = {
      s = \\g,c => quant.s ! num.n ! g ! c ++ num.s ! g ;
      n = num.n 
    } ;
} ;
