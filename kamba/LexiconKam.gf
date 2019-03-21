--# -path=.:../abstract:../../prelude:../common
concrete LexiconKam of Lexicon = CatKam **
  open ParadigmsKam, Prelude in {

flags
  optimize=values ;

lin

  person_N = regN "mũndũ" mu_a ;
  elder_N = regN "mũtumĩa" mu_a ;
  guest_N = regN "mũeni" mu_a ;
  youth_N = regN "mwanake" mu_a ;
  traveller_N = regN "mũendi" mu_a ;
  kamba_N = regN "mũkamba" mu_a ;
  farmer_N = regN "mũĩmĩ" mu_a ;
  speaker_N = regN "mũneeni" mu_a ;
  employee_N = regN "mũandĩkwa" mu_a ;
  carpenter_N = regN "mwasũvya" mu_a ;
  tree_N = regN "mũtĩ" mu_mi ;
  pole_N = regN "mũkonzo" mu_mi ;
  day_N = regN "mũthenya" mu_mi ;
  lion_N = regN "mũnyambũ" mu_mi ;
  home_N = regN "mũsyĩ" mu_mi ;
  flour_N = regN "mũtu" mu_mi ;
  thorn_N = regN "mwĩwa" mu_mi ;
  body_N = regN "mwĩĩ" mu_mi ;
  year_N = mkN "mwaka" "myaka" mu_mi ;
  door_N = regN "mũomo" mu_mi ;
  millet_N = mkN "mwee" "myee" mu_mi ;
  fire_N = mkN "mwaki" "myaki" mu_mi ;
  stone_N = regN "ĩvia" i_ma ;
  tin_N = regN "ĩleve" i_ma ;
  spear_N = regN "ĩtumo" i_ma ;
  book_N = regN "ĩvuku" i_ma ;
  pumpkin_N = regN "ĩlenge" i_ma ;
  tooth_N = regN "ĩeo" i_ma ;
  cloud_N = regN "ĩtu" i_ma ;
  sheep_N = regN "ĩlondu" i_ma ;
  lake_N = regN "ĩia" i_ma ;
  egg_N = regN "ĩtumbĩ" i_ma ;
  milk_N = mkN "ĩia" "ĩia" i_ma ;
  eye_N = mkN "itho" "metho" i_ma ;
  hat_N = regN "kĩlele" ki_i ;
  shoe_N = regN "kĩatu" ki_i ;
  chair_N = regN "kĩvĩla" ki_i ;
  basket_N = regN "kĩkavu" ki_i ;
  hill_N = regN "kĩima" ki_i ;
  boy_N = regN "kĩmwana" ki_i ;
  thief_N = regN "kĩng'ei" ki_i ;
  well_N = regN "kĩthima" ki_i ;
  water_N = regN "kĩwu" ki_i ;
  something_N = mkN "kĩndũ" "syĩndũ" ki_i ;
  spoon_N = mkN "kĩko" "syĩko" ki_i ;
  toe_N = regN "kyaa" ki_i ;
  house_N = regN "nyũmba" n_n ;
  market_N = regN "ndũnyũ" n_n ;
  path_N, road_N = regN "nzĩa" n_n ;
  elephant_N = regN "nzou" n_n ;
  cow_N = regN "ng'ombe" n_n ;
  goat_N = regN "mbũi" n_n ;
  pot_N = regN "nyũngũ" n_n ;
  ground_N = regN "nthĩ" n_n ;
  rain_N = regN "mbua" n_n ;
  rope_N = mkN "ũlii" "ndii" u_n ;
  feather_N = mkN "ũsĩa" "nzĩa" u_n ;
  tongue_N = regN "ũĩmĩ" u_n ;
  knife_N = mkN "ũvyũ" "mbyũ" u_n ;
  river_N = mkN "ũsĩ" "mbũsĩ" u_n ;
  fence_N = mkN "wiio" "mbiio" u_n ;
  child_N = mkN "kana" "twana" ka_tu ;
  pond_N = regN "kalila" ka_tu ;
  hillock_N = regN "kalĩma" ka_tu ;
  cent_N = regN "kalwela" ka_tu ;
  sapling_N = regN "kamũtĩ" ka_tu ;
  bow_N = regN "ũta" u_ma ;
  night_N = regN "ũtukũ" u_ma ;
  shelf_N = regN "ũta" u_ma ;
  food_N = mkN "lĩu" "malĩu" u_ma ;
  mouth_N = mkN "kanyẅa" "makanyẅa" u_ma ;
  thing_N = mkN "ũndũ" "maũndũ" u_ma ;
  ear_N = regN "kũtũ" ku_ma ;
  leg_N = mkN "kũũ" "maũũ" ku_ma ;
  foot_N = mkN "kũũ" "maũũ" ku_ma ;
  arm_N = mkN "kẅoko" "moko" ku_ma ;
  place_N = regN "vandũ" va_ku ;
  famine_N = regN "yua" i_ma ;

  new_A = regA "eũ" ;
  black_A = regA "iũ" ;
  old_A = regA "kũũ";

} ;
