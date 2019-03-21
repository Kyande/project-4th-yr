--# -path=.:../abstract:../common:../prelude

concrete LangKam of Lang = 
  GrammarKam,
  LexiconKam
  ** {

flags startcat = Phr ; unlexer = text ; lexer = text ;

} ;
