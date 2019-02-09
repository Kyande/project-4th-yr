--# -path=.:../abstract:../common:../prelude

concrete CompatibilityKam of Compatibility = CatKam ** open Prelude, ResKam in {

-- from Noun 19/4/2008

lin
    NumInt n = {s,sp = \\_ => addGenitiveS n.s ; n = Pl ; hasCard = True} ;
    OrdInt n = {s    = \\c => n.s ++ (regGenitiveS "th")!c } ;

oper
    -- Note: this results in a space before 's, but there's
    -- not mauch we can do about that.
    addGenitiveS : Str -> Case => Str = \s ->
      table { Gen => s ++ "'s"; _ => s } ;

}
