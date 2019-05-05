concrete StructuralKam of Structural = CatKam **
  open MorphoKam, ResKam, ParadigmsKam,
  (C = ConstructX), Prelude in {

	 flags optimize=all ;
   lin
      this_Quant  = {s = \\n,g,c => mkQuant Close n g Nom } ;
	    that_Quant  = {s = \\n,g,c => mkQuant Far n g Nom } ;

      --every_Det = { s = \\g,c => "kĩla"; n = Sg } ;
      many_Det  = { s = \\g,c => mkDetPl g + "ingi" ; n = Pl } ;
      few_Det   = { s = \\g,c => mkDetPl g + "nini" ; n = Pl } ;
}
