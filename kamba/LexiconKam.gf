--# -path=.:prelude

concrete LexiconKam of Lexicon = CatKam **
  open ParadigmsKam, IrregKam, Prelude in {

flags
  optimize=values ;

lin

  person_N = regN "mundu" mu_a animate;
  elder_N = regN "mutumia" mu_a animate;
  guest_N = regN "mueni" mu_a animate;
  youth_N = regN "mwanake" mw_a animate;
  traveller_N = regN "muendi" mu_a animate;
  kamba_N = regN "mukamba" mu_a animate;
  farmer_N = regN "muimi" mu_a animate;
  speaker_N = regN "muneeni" mu_a animate;
  employee_N = regN "muandikwa" mu_a animate;
  carpenter_N = regN "mwasuvya" mw_a animate;
  tree_N = regN "muti" mu_mi inanimate;
  pole_N = regN "mukonzo" mu_mi inanimate;
  day_N = regN "muthenya" mu_mi inanimate;
  lion_N = regN "munyambu" mu_mi animate;
  home_N = regN "musyi" mu_mi inanimate;
  flour_N = regN "mutu" mu_mi inanimate;
  thorn_N = regN "mwiwa" mu_mi inanimate;
  body_N = regN "mwii" mu_mi inanimate;
  year_N = regN "mwaka" mw_my inanimate;
  door_N = regN "muomo" mu_mi inanimate;
  millet_N = regN "mwee" mw_my inanimate;
  fire_N = regN "mwaki" mw_my inanimate;
  stone_N = regN "ivia" i_ma inanimate;
  tin_N = regN "ileve" i_ma inanimate;
  spear_N = regN "itumo" i_ma inanimate;
  book_N = regN "ivuku" i_ma inanimate;
  pumpkin_N = regN "ilenge" i_ma inanimate;
  tooth_N = regN "ieo" i_ma inanimate;
  cloud_N = regN "itu" i_ma inanimate;
  sheep_N = regN "ilondu" i_ma inanimate;
  lake_N = regN "iia" i_ma inanimate;
  egg_N = regN "itumbi" i_ma inanimate;
  milk_N = mkN "iia" "iia" i_ma inanimate;
  eye_N = mkN "itho" "metho" i_ma inanimate;

} ;
