concrete StructuralKam of Structural = CatKam **
  open MorphoKam, ResKam, ParadigmsKam,
  (C = ConstructX), Prelude in {

	 flags optimize=all ;
   lin
      this_Quant  = {s = \\n,g,c => mkQuant Close n g Nom } ;
	    that_Quant  = {s = \\n,g,c => mkQuant Far n g Nom } ;
}
