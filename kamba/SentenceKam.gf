concrete SentenceKam of Sentence = CatKam ** open Prelude, ResKam in {

 flags optimize=all_subs ;

 lin
    PredVP np vp = {
        s = \\t, a, b => 
            np.s ! Nom ++ vp.s ! t ! a ! b ! np.a
    } ;

}
