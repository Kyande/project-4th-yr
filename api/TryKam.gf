--# -path=.:../kamba:../common:../abstract:../prelude

resource TryKam = SyntaxKam-[mkAdN], LexiconKam, ParadigmsKam - [mkAdv,mkAdN,mkOrd,mkQuant] ** 
  open (P = ParadigmsKam) in {

oper

  mkAdv = overload SyntaxKam {
    mkAdv : Str -> Adv = P.mkAdv ;
  } ;

  mkAdN = overload {
    mkAdN : CAdv -> AdN = SyntaxKam.mkAdN ;
    mkAdN : Str -> AdN = P.mkAdN ;
  } ;

  mkOrd = overload SyntaxKam {
    mkOrd : Str -> Ord = P.mkOrd ;
  } ;


}

