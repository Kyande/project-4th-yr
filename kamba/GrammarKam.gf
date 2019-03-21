--# -path=.:../abstract:../common:prelude

concrete GrammarKam of Grammar =NounKam , AdjectiveKam , StructuralKam ,VerbKam , SentenceKam , AdverbKam
  
  ** {

flags startcat = Phr ; unlexer = text ; lexer = text ;

} ;
