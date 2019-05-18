concrete PhraseKam of Phrase = CatKam ** open Prelude, ResKam in {

    lin
        UttS s = s ;

        UttNP np = {
            s = np.s ! Nom
        };

        UttCN cn = {
            s = cn.s ! Sg
        } ;

        UttVP vp = { 
            s = vp.s ! Fut ! Simul ! Pos ! agreement Sg g1_2 P3 ;
        } ;

        UttAP ap = { 
            s = ap.s ! (AF Sg g1_2)
        } ;

}
