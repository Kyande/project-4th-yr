--# -path=.:../kamba:../common:../abstract:../prelude

resource SymbolicKam = Symbolic with 
  (Symbol = SymbolKam),
  (Grammar = GrammarKam) ;

