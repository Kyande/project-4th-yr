--# -path=.:prelude

concrete LexiconKam of Lexicon = CatKam **
  open ParadigmsKam, 
  -- IrregKam, 
  Prelude in {

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
  hat_N = regN "ilele" ki_i inanimate;
  shoe_N = regN "kiatu" ki_i inanimate;
  chair_N = regN "kivila" ki_i inanimate;
  basket_N = regN "kikavu" ki_i inanimate;
  hill_N = regN "kiima" ki_i inanimate;
  boy_N = regN "kimwana" ki_i animate;
  thief_N = regN "king'ei" ki_i animate;
  -- market_N = regN "king'ang'a" ki_i inanimate;
  well_N = regN "kithima" ki_i inanimate;
  water_N = regN "kiwu" ki_i inanimate;
  something_N = regN "kindu" ky_sy inanimate;
  spoon_N = regN "kiko" ky_sy inanimate;
  house_N = regN "nyumba" n_n inanimate;
  market_N = regN "ndunyu" n_n inanimate;
  path_N, road_N = regN "nzia" n_n inanimate;
  elephant_N = regN "nzou" n_n animate;
  cow_N = regN "ng'ombe" n_n animate;
  goat_N = regN "mbui" n_n animate;
  pot_N = regN "nyungu" n_n animate;
  ground_N = regN "nthi" n_n animate;
  rain_N = regN "mbua" n_n animate;
  rope_N = mkN "ulii" "ndii" u_n inanimate;
  feather_N = mkN "usia" "nzia" u_n inanimate;
  tongue_N = regN "uimi" u_n inanimate;
  knife_N = mkN "uvyu" "mbyu" u_n inanimate;
  river_N = mkN "usi" "mbusi" u_n inanimate;
  fence_N = mkN "wiio" "mbiio" u_n inanimate;
  child_N = mkN "kana" "twana" ka_tu animate;
  pond_N = regN "kalila" ka_tu inanimate;
  hillock_N = regN "kalima" ka_tu inanimate;
  cent_N = regN "kalwela" ka_tu inanimate;
  sapling_N = regN "kamuti" ka_tu animate;
  bow_N = regN "uta" u_ma inanimate;
  night_N = regN "utuku" u_ma inanimate;
  shelf_N = regN "uta" u_ma inanimate;
  food_N = mkN "liu" "maliu" u_ma inanimate;
  mouth_N = mkN "kanywa" "makanywa" u_ma inanimate;
  thing_N = mkN "undu" "maundu" u_ma inanimate;
  ear_N = regN "kutu" ku_ma inanimate;
  leg_N = mkN "kuu" "mauu" ku_ma inanimate;
  foot_N = mkN "kuu" "mauu" ku_ma inanimate;
  arm_N = mkN "kwoko" "moko" ku_ma inanimate;
  place_N = regN "vandu" va_ku inanimate;

} ;
