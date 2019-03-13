--# -path=.:prelude

concrete LexiconKam of Lexicon = CatKam **
  open ParadigmsKam, 
  -- IrregKam, 
  Prelude in {

flags
  optimize=values ;

lin

  person_N = regN "mũndũ" mu_a animate;
  elder_N = regN "mũtumĩa" mu_a animate;
  guest_N = regN "mũeni" mu_a animate;
  youth_N = regN "mwanake" mu_a animate;
  traveller_N = regN "mũendi" mu_a animate;
  kamba_N = regN "mũkamba" mu_a animate;
  farmer_N = regN "mũĩmĩ" mu_a animate;
  speaker_N = regN "mũneeni" mu_a animate;
  employee_N = regN "mũandĩkwa" mu_a animate;
  carpenter_N = regN "mwasũvya" mu_a animate;
  tree_N = regN "mũtĩ" mu_mi inanimate;
  pole_N = regN "mũkonzo" mu_mi inanimate;
  day_N = regN "mũthenya" mu_mi inanimate;
  lion_N = regN "mũnyambũ" mu_mi animate;
  home_N = regN "mũsyĩ" mu_mi inanimate;
  flour_N = regN "mũtu" mu_mi inanimate;
  thorn_N = regN "mwĩwa" mu_mi inanimate;
  body_N = regN "mwĩĩ" mu_mi inanimate;
  year_N = mkN "mwaka" "myaka" mu_mi inanimate;
  door_N = regN "mũomo" mu_mi inanimate;
  millet_N = mkN "mwee" "myee" mu_mi inanimate;
  fire_N = mkN "mwaki" "myaki" mu_mi inanimate;
  stone_N = regN "ĩvia" i_ma inanimate;
  tin_N = regN "ĩleve" i_ma inanimate;
  spear_N = regN "ĩtumo" i_ma inanimate;
  book_N = regN "ĩvuku" i_ma inanimate;
  pumpkin_N = regN "ĩlenge" i_ma inanimate;
  tooth_N = regN "ĩeo" i_ma inanimate;
  cloud_N = regN "ĩtu" i_ma inanimate;
  sheep_N = regN "ĩlondu" i_ma inanimate;
  lake_N = regN "ĩia" i_ma inanimate;
  egg_N = regN "ĩtumbĩ" i_ma inanimate;
  milk_N = mkN "ĩia" "ĩia" i_ma inanimate;
  eye_N = mkN "itho" "metho" i_ma inanimate;
  hat_N = regN "kĩlele" ki_i inanimate;
  shoe_N = regN "kĩatu" ki_i inanimate;
  chair_N = regN "kĩvĩla" ki_i inanimate;
  basket_N = regN "kĩkavu" ki_i inanimate;
  hill_N = regN "kĩima" ki_i inanimate;
  boy_N = regN "kĩmwana" ki_i animate;
  thief_N = regN "kĩng'ei" ki_i animate;
  well_N = regN "kĩthima" ki_i inanimate;
  water_N = regN "kĩwu" ki_i inanimate;
  something_N = mkN "kĩndũ" "syĩndũ" ki_i inanimate;
  spoon_N = mkN "kĩko" "syĩko" ki_i inanimate;
  toe_N = regN "kyaa" ki_i inanimate;
  house_N = regN "nyũmba" n_n inanimate;
  market_N = regN "ndũnyũ" n_n inanimate;
  path_N, road_N = regN "nzĩa" n_n inanimate;
  elephant_N = regN "nzou" n_n animate;
  cow_N = regN "ng'ombe" n_n animate;
  goat_N = regN "mbũi" n_n animate;
  pot_N = regN "nyũngũ" n_n animate;
  ground_N = regN "nthĩ" n_n animate;
  rain_N = regN "mbua" n_n animate;
  rope_N = mkN "ũlii" "ndii" u_n inanimate;
  feather_N = mkN "ũsĩa" "nzĩa" u_n inanimate;
  tongue_N = regN "ũĩmĩ" u_n inanimate;
  knife_N = mkN "ũvyũ" "mbyũ" u_n inanimate;
  river_N = mkN "ũsĩ" "mbũsĩ" u_n inanimate;
  fence_N = mkN "wiio" "mbiio" u_n inanimate;
  child_N = mkN "kana" "twana" ka_tu animate;
  pond_N = regN "kalila" ka_tu inanimate;
  hillock_N = regN "kalĩma" ka_tu inanimate;
  cent_N = regN "kalwela" ka_tu inanimate;
  sapling_N = regN "kamũtĩ" ka_tu animate;
  bow_N = regN "ũta" u_ma inanimate;
  night_N = regN "ũtukũ" u_ma inanimate;
  shelf_N = regN "ũta" u_ma inanimate;
  food_N = mkN "lĩu" "malĩu" u_ma inanimate;
  mouth_N = mkN "kanyẅa" "makanyẅa" u_ma inanimate;
  thing_N = mkN "ũndũ" "maũndũ" u_ma inanimate;
  ear_N = regN "kũtũ" ku_ma inanimate;
  leg_N = mkN "kũũ" "maũũ" ku_ma inanimate;
  foot_N = mkN "kũũ" "maũũ" ku_ma inanimate;
  arm_N = mkN "kẅoko" "moko" ku_ma inanimate;
  place_N = regN "vandũ" va_ku inanimate;
  famine_N = regN "yua" i_ma inanimate;

} ;
