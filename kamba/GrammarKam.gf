-- -- # -path=.:../abstract:../common:prelude

-- concrete GrammarKam of Grammar =
--   NounKam,
--   VerbKam,
--   AdjectiveKam,
--   AdverbKam,
--   NumeralKam,
--   SentenceKam,
--   QuestionKam,
--   RelativeKam,
--   ConjunctionKam,
--   PhraseKam,
--   TextX - [Pol,PPos,PNeg,SC,CAdv],
--   StructuralKam,
--   IdiomKam,
--   TenseX - [Pol,PPos,PNeg,SC,CAdv]
--   ** open ResKam, Prelude in {

-- flags startcat = Phr ; unlexer = text ; lexer = text ;

-- -- lin
-- --   PPos = {s = [] ; p = CPos} ;
-- --   PNeg = {s = [] ; p = CNeg True} ; -- contracted: don't


-- }