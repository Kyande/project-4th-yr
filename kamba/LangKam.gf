--# -path=.:../abstract:../common:../api

concrete LangKam of Lang =
  GrammarKam,
  LexiconKam
  ,ConstructionKam
  ,DocumentationKam --# notpresent
  ,MarkupKam - [stringMark]
  ** {



} ;
