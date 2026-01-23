; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520896 () Bool)

(assert start!520896)

(declare-fun b!4946947 () Bool)

(declare-datatypes ((Unit!147794 0))(
  ( (Unit!147795) )
))
(declare-fun e!3090922 () Unit!147794)

(declare-fun Unit!147796 () Unit!147794)

(assert (=> b!4946947 (= e!3090922 Unit!147796)))

(declare-fun b!4946948 () Bool)

(declare-fun e!3090920 () Bool)

(declare-fun e!3090926 () Bool)

(assert (=> b!4946948 (= e!3090920 e!3090926)))

(declare-fun res!2110947 () Bool)

(assert (=> b!4946948 (=> (not res!2110947) (not e!3090926))))

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2040234 () Int)

(assert (=> b!4946948 (= res!2110947 (= testedPSize!70 lt!2040234))))

(declare-datatypes ((C!27224 0))(
  ( (C!27225 (val!22946 Int)) )
))
(declare-datatypes ((List!57115 0))(
  ( (Nil!56991) (Cons!56991 (h!63439 C!27224) (t!367651 List!57115)) )
))
(declare-fun testedP!110 () List!57115)

(declare-fun size!37819 (List!57115) Int)

(assert (=> b!4946948 (= lt!2040234 (size!37819 testedP!110))))

(declare-fun b!4946949 () Bool)

(declare-fun e!3090931 () Bool)

(declare-fun e!3090928 () Bool)

(assert (=> b!4946949 (= e!3090931 e!3090928)))

(declare-fun res!2110948 () Bool)

(assert (=> b!4946949 (=> res!2110948 e!3090928)))

(declare-fun lt!2040248 () Int)

(assert (=> b!4946949 (= res!2110948 (>= lt!2040234 lt!2040248))))

(declare-fun lt!2040238 () Unit!147794)

(assert (=> b!4946949 (= lt!2040238 e!3090922)))

(declare-fun c!844161 () Bool)

(assert (=> b!4946949 (= c!844161 (= lt!2040234 lt!2040248))))

(declare-fun lt!2040245 () List!57115)

(assert (=> b!4946949 (<= lt!2040234 (size!37819 lt!2040245))))

(declare-fun lt!2040233 () Unit!147794)

(declare-fun lemmaIsPrefixThenSmallerEqSize!748 (List!57115 List!57115) Unit!147794)

(assert (=> b!4946949 (= lt!2040233 (lemmaIsPrefixThenSmallerEqSize!748 testedP!110 lt!2040245))))

(declare-fun b!4946950 () Bool)

(declare-fun e!3090923 () Bool)

(assert (=> b!4946950 (= e!3090928 e!3090923)))

(declare-fun res!2110942 () Bool)

(assert (=> b!4946950 (=> res!2110942 e!3090923)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13487 0))(
  ( (ElementMatch!13487 (c!844162 C!27224)) (Concat!22060 (regOne!27486 Regex!13487) (regTwo!27486 Regex!13487)) (EmptyExpr!13487) (Star!13487 (reg!13816 Regex!13487)) (EmptyLang!13487) (Union!13487 (regOne!27487 Regex!13487) (regTwo!27487 Regex!13487)) )
))
(declare-datatypes ((List!57116 0))(
  ( (Nil!56992) (Cons!56992 (h!63440 Regex!13487) (t!367652 List!57116)) )
))
(declare-datatypes ((Context!6258 0))(
  ( (Context!6259 (exprs!3629 List!57116)) )
))
(declare-fun z!3568 () (InoxSet Context!6258))

(declare-fun nullableZipper!858 ((InoxSet Context!6258)) Bool)

(assert (=> b!4946950 (= res!2110942 (not (nullableZipper!858 z!3568)))))

(declare-fun lt!2040242 () List!57115)

(declare-fun lt!2040243 () List!57115)

(declare-fun ++!12472 (List!57115 List!57115) List!57115)

(assert (=> b!4946950 (= (++!12472 lt!2040242 lt!2040243) lt!2040245)))

(declare-fun lt!2040235 () C!27224)

(assert (=> b!4946950 (= lt!2040242 (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991)))))

(declare-fun lt!2040246 () Unit!147794)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1432 (List!57115 C!27224 List!57115 List!57115) Unit!147794)

(assert (=> b!4946950 (= lt!2040246 (lemmaMoveElementToOtherListKeepsConcatEq!1432 testedP!110 lt!2040235 lt!2040243 lt!2040245))))

(declare-fun testedSuffix!70 () List!57115)

(declare-fun tail!9748 (List!57115) List!57115)

(assert (=> b!4946950 (= lt!2040243 (tail!9748 testedSuffix!70))))

(declare-fun lt!2040244 () List!57115)

(declare-fun isPrefix!5093 (List!57115 List!57115) Bool)

(declare-fun head!10613 (List!57115) C!27224)

(assert (=> b!4946950 (isPrefix!5093 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991)) lt!2040245)))

(declare-fun lt!2040249 () Unit!147794)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!822 (List!57115 List!57115) Unit!147794)

(assert (=> b!4946950 (= lt!2040249 (lemmaAddHeadSuffixToPrefixStillPrefix!822 testedP!110 lt!2040245))))

(declare-fun b!4946951 () Bool)

(declare-fun e!3090929 () Bool)

(declare-fun tp_is_empty!36171 () Bool)

(declare-fun tp!1387622 () Bool)

(assert (=> b!4946951 (= e!3090929 (and tp_is_empty!36171 tp!1387622))))

(declare-fun setRes!28076 () Bool)

(declare-fun setElem!28076 () Context!6258)

(declare-fun e!3090932 () Bool)

(declare-fun setNonEmpty!28076 () Bool)

(declare-fun tp!1387625 () Bool)

(declare-fun inv!74250 (Context!6258) Bool)

(assert (=> setNonEmpty!28076 (= setRes!28076 (and tp!1387625 (inv!74250 setElem!28076) e!3090932))))

(declare-fun setRest!28076 () (InoxSet Context!6258))

(assert (=> setNonEmpty!28076 (= z!3568 ((_ map or) (store ((as const (Array Context!6258 Bool)) false) setElem!28076 true) setRest!28076))))

(declare-fun b!4946952 () Bool)

(declare-fun e!3090925 () Bool)

(declare-fun e!3090927 () Bool)

(assert (=> b!4946952 (= e!3090925 (not e!3090927))))

(declare-fun res!2110938 () Bool)

(assert (=> b!4946952 (=> res!2110938 e!3090927)))

(assert (=> b!4946952 (= res!2110938 (not (isPrefix!5093 testedP!110 lt!2040245)))))

(declare-fun lt!2040237 () List!57115)

(assert (=> b!4946952 (isPrefix!5093 testedP!110 lt!2040237)))

(declare-fun lt!2040252 () Unit!147794)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3317 (List!57115 List!57115) Unit!147794)

(assert (=> b!4946952 (= lt!2040252 (lemmaConcatTwoListThenFirstIsPrefix!3317 testedP!110 testedSuffix!70))))

(declare-fun b!4946953 () Bool)

(declare-fun Unit!147797 () Unit!147794)

(assert (=> b!4946953 (= e!3090922 Unit!147797)))

(declare-fun lt!2040251 () Unit!147794)

(declare-fun lemmaIsPrefixRefl!3433 (List!57115 List!57115) Unit!147794)

(assert (=> b!4946953 (= lt!2040251 (lemmaIsPrefixRefl!3433 lt!2040245 lt!2040245))))

(assert (=> b!4946953 (isPrefix!5093 lt!2040245 lt!2040245)))

(declare-fun lt!2040250 () Unit!147794)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1185 (List!57115 List!57115 List!57115) Unit!147794)

(assert (=> b!4946953 (= lt!2040250 (lemmaIsPrefixSameLengthThenSameList!1185 lt!2040245 testedP!110 lt!2040245))))

(assert (=> b!4946953 false))

(declare-fun b!4946954 () Bool)

(assert (=> b!4946954 (= e!3090923 (< (- lt!2040248 (size!37819 lt!2040242)) (- lt!2040248 lt!2040234)))))

(declare-fun b!4946955 () Bool)

(declare-fun tp!1387621 () Bool)

(assert (=> b!4946955 (= e!3090932 tp!1387621)))

(declare-fun res!2110945 () Bool)

(assert (=> start!520896 (=> (not res!2110945) (not e!3090920))))

(assert (=> start!520896 (= res!2110945 (= lt!2040237 lt!2040245))))

(declare-datatypes ((IArray!30073 0))(
  ( (IArray!30074 (innerList!15094 List!57115)) )
))
(declare-datatypes ((Conc!15006 0))(
  ( (Node!15006 (left!41575 Conc!15006) (right!41905 Conc!15006) (csize!30242 Int) (cheight!15217 Int)) (Leaf!24942 (xs!18332 IArray!30073) (csize!30243 Int)) (Empty!15006) )
))
(declare-datatypes ((BalanceConc!29442 0))(
  ( (BalanceConc!29443 (c!844163 Conc!15006)) )
))
(declare-fun totalInput!685 () BalanceConc!29442)

(declare-fun list!18169 (BalanceConc!29442) List!57115)

(assert (=> start!520896 (= lt!2040245 (list!18169 totalInput!685))))

(assert (=> start!520896 (= lt!2040237 (++!12472 testedP!110 testedSuffix!70))))

(assert (=> start!520896 e!3090920))

(assert (=> start!520896 e!3090929))

(declare-fun condSetEmpty!28076 () Bool)

(assert (=> start!520896 (= condSetEmpty!28076 (= z!3568 ((as const (Array Context!6258 Bool)) false)))))

(assert (=> start!520896 setRes!28076))

(assert (=> start!520896 true))

(declare-fun e!3090924 () Bool)

(declare-fun inv!74251 (BalanceConc!29442) Bool)

(assert (=> start!520896 (and (inv!74251 totalInput!685) e!3090924)))

(declare-fun e!3090933 () Bool)

(assert (=> start!520896 e!3090933))

(declare-fun b!4946956 () Bool)

(declare-fun e!3090930 () Bool)

(assert (=> b!4946956 (= e!3090930 e!3090931)))

(declare-fun res!2110940 () Bool)

(assert (=> b!4946956 (=> res!2110940 e!3090931)))

(assert (=> b!4946956 (= res!2110940 (not (= lt!2040235 (head!10613 testedSuffix!70))))))

(declare-fun apply!13827 (BalanceConc!29442 Int) C!27224)

(assert (=> b!4946956 (= lt!2040235 (apply!13827 totalInput!685 testedPSize!70))))

(declare-fun drop!2294 (List!57115 Int) List!57115)

(declare-fun apply!13828 (List!57115 Int) C!27224)

(assert (=> b!4946956 (= (head!10613 (drop!2294 lt!2040245 testedPSize!70)) (apply!13828 lt!2040245 testedPSize!70))))

(declare-fun lt!2040239 () Unit!147794)

(declare-fun lemmaDropApply!1348 (List!57115 Int) Unit!147794)

(assert (=> b!4946956 (= lt!2040239 (lemmaDropApply!1348 lt!2040245 testedPSize!70))))

(declare-fun lt!2040240 () List!57115)

(declare-fun lt!2040241 () List!57115)

(assert (=> b!4946956 (not (or (not (= lt!2040240 testedP!110)) (not (= lt!2040241 testedSuffix!70))))))

(declare-fun lt!2040253 () Unit!147794)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!731 (List!57115 List!57115 List!57115 List!57115) Unit!147794)

(assert (=> b!4946956 (= lt!2040253 (lemmaConcatSameAndSameSizesThenSameLists!731 lt!2040240 lt!2040241 testedP!110 testedSuffix!70))))

(declare-fun b!4946957 () Bool)

(declare-fun tp!1387624 () Bool)

(declare-fun inv!74252 (Conc!15006) Bool)

(assert (=> b!4946957 (= e!3090924 (and (inv!74252 (c!844163 totalInput!685)) tp!1387624))))

(declare-fun b!4946958 () Bool)

(declare-fun e!3090921 () Bool)

(assert (=> b!4946958 (= e!3090921 e!3090930)))

(declare-fun res!2110941 () Bool)

(assert (=> b!4946958 (=> res!2110941 e!3090930)))

(assert (=> b!4946958 (= res!2110941 (not (= (++!12472 lt!2040240 lt!2040241) lt!2040245)))))

(declare-datatypes ((tuple2!61548 0))(
  ( (tuple2!61549 (_1!34077 BalanceConc!29442) (_2!34077 BalanceConc!29442)) )
))
(declare-fun lt!2040236 () tuple2!61548)

(assert (=> b!4946958 (= lt!2040241 (list!18169 (_2!34077 lt!2040236)))))

(assert (=> b!4946958 (= lt!2040240 (list!18169 (_1!34077 lt!2040236)))))

(declare-fun splitAt!404 (BalanceConc!29442 Int) tuple2!61548)

(assert (=> b!4946958 (= lt!2040236 (splitAt!404 totalInput!685 testedPSize!70))))

(declare-fun b!4946959 () Bool)

(declare-fun res!2110943 () Bool)

(assert (=> b!4946959 (=> res!2110943 e!3090921)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4946959 (= res!2110943 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4946960 () Bool)

(assert (=> b!4946960 (= e!3090926 e!3090925)))

(declare-fun res!2110939 () Bool)

(assert (=> b!4946960 (=> (not res!2110939) (not e!3090925))))

(assert (=> b!4946960 (= res!2110939 (= totalInputSize!132 lt!2040248))))

(declare-fun size!37820 (BalanceConc!29442) Int)

(assert (=> b!4946960 (= lt!2040248 (size!37820 totalInput!685))))

(declare-fun b!4946961 () Bool)

(declare-fun tp!1387623 () Bool)

(assert (=> b!4946961 (= e!3090933 (and tp_is_empty!36171 tp!1387623))))

(declare-fun setIsEmpty!28076 () Bool)

(assert (=> setIsEmpty!28076 setRes!28076))

(declare-fun b!4946962 () Bool)

(declare-fun res!2110946 () Bool)

(assert (=> b!4946962 (=> res!2110946 e!3090930)))

(assert (=> b!4946962 (= res!2110946 (not (= (size!37820 (_1!34077 lt!2040236)) testedPSize!70)))))

(declare-fun b!4946963 () Bool)

(assert (=> b!4946963 (= e!3090927 e!3090921)))

(declare-fun res!2110944 () Bool)

(assert (=> b!4946963 (=> res!2110944 e!3090921)))

(declare-fun lostCauseZipper!805 ((InoxSet Context!6258)) Bool)

(assert (=> b!4946963 (= res!2110944 (lostCauseZipper!805 z!3568))))

(assert (=> b!4946963 (and (= testedSuffix!70 lt!2040244) (= lt!2040244 testedSuffix!70))))

(declare-fun lt!2040247 () Unit!147794)

(declare-fun lemmaSamePrefixThenSameSuffix!2485 (List!57115 List!57115 List!57115 List!57115 List!57115) Unit!147794)

(assert (=> b!4946963 (= lt!2040247 (lemmaSamePrefixThenSameSuffix!2485 testedP!110 testedSuffix!70 testedP!110 lt!2040244 lt!2040245))))

(declare-fun getSuffix!3075 (List!57115 List!57115) List!57115)

(assert (=> b!4946963 (= lt!2040244 (getSuffix!3075 lt!2040245 testedP!110))))

(assert (= (and start!520896 res!2110945) b!4946948))

(assert (= (and b!4946948 res!2110947) b!4946960))

(assert (= (and b!4946960 res!2110939) b!4946952))

(assert (= (and b!4946952 (not res!2110938)) b!4946963))

(assert (= (and b!4946963 (not res!2110944)) b!4946959))

(assert (= (and b!4946959 (not res!2110943)) b!4946958))

(assert (= (and b!4946958 (not res!2110941)) b!4946962))

(assert (= (and b!4946962 (not res!2110946)) b!4946956))

(assert (= (and b!4946956 (not res!2110940)) b!4946949))

(assert (= (and b!4946949 c!844161) b!4946953))

(assert (= (and b!4946949 (not c!844161)) b!4946947))

(assert (= (and b!4946949 (not res!2110948)) b!4946950))

(assert (= (and b!4946950 (not res!2110942)) b!4946954))

(get-info :version)

(assert (= (and start!520896 ((_ is Cons!56991) testedP!110)) b!4946951))

(assert (= (and start!520896 condSetEmpty!28076) setIsEmpty!28076))

(assert (= (and start!520896 (not condSetEmpty!28076)) setNonEmpty!28076))

(assert (= setNonEmpty!28076 b!4946955))

(assert (= start!520896 b!4946957))

(assert (= (and start!520896 ((_ is Cons!56991) testedSuffix!70)) b!4946961))

(declare-fun m!5970264 () Bool)

(assert (=> b!4946953 m!5970264))

(declare-fun m!5970266 () Bool)

(assert (=> b!4946953 m!5970266))

(declare-fun m!5970268 () Bool)

(assert (=> b!4946953 m!5970268))

(declare-fun m!5970270 () Bool)

(assert (=> b!4946958 m!5970270))

(declare-fun m!5970272 () Bool)

(assert (=> b!4946958 m!5970272))

(declare-fun m!5970274 () Bool)

(assert (=> b!4946958 m!5970274))

(declare-fun m!5970276 () Bool)

(assert (=> b!4946958 m!5970276))

(declare-fun m!5970278 () Bool)

(assert (=> start!520896 m!5970278))

(declare-fun m!5970280 () Bool)

(assert (=> start!520896 m!5970280))

(declare-fun m!5970282 () Bool)

(assert (=> start!520896 m!5970282))

(declare-fun m!5970284 () Bool)

(assert (=> b!4946963 m!5970284))

(declare-fun m!5970286 () Bool)

(assert (=> b!4946963 m!5970286))

(declare-fun m!5970288 () Bool)

(assert (=> b!4946963 m!5970288))

(declare-fun m!5970290 () Bool)

(assert (=> setNonEmpty!28076 m!5970290))

(declare-fun m!5970292 () Bool)

(assert (=> b!4946960 m!5970292))

(declare-fun m!5970294 () Bool)

(assert (=> b!4946956 m!5970294))

(declare-fun m!5970296 () Bool)

(assert (=> b!4946956 m!5970296))

(declare-fun m!5970298 () Bool)

(assert (=> b!4946956 m!5970298))

(declare-fun m!5970300 () Bool)

(assert (=> b!4946956 m!5970300))

(declare-fun m!5970302 () Bool)

(assert (=> b!4946956 m!5970302))

(declare-fun m!5970304 () Bool)

(assert (=> b!4946956 m!5970304))

(assert (=> b!4946956 m!5970296))

(declare-fun m!5970306 () Bool)

(assert (=> b!4946956 m!5970306))

(declare-fun m!5970308 () Bool)

(assert (=> b!4946949 m!5970308))

(declare-fun m!5970310 () Bool)

(assert (=> b!4946949 m!5970310))

(declare-fun m!5970312 () Bool)

(assert (=> b!4946950 m!5970312))

(declare-fun m!5970314 () Bool)

(assert (=> b!4946950 m!5970314))

(declare-fun m!5970316 () Bool)

(assert (=> b!4946950 m!5970316))

(declare-fun m!5970318 () Bool)

(assert (=> b!4946950 m!5970318))

(declare-fun m!5970320 () Bool)

(assert (=> b!4946950 m!5970320))

(declare-fun m!5970322 () Bool)

(assert (=> b!4946950 m!5970322))

(declare-fun m!5970324 () Bool)

(assert (=> b!4946950 m!5970324))

(assert (=> b!4946950 m!5970316))

(declare-fun m!5970326 () Bool)

(assert (=> b!4946950 m!5970326))

(declare-fun m!5970328 () Bool)

(assert (=> b!4946950 m!5970328))

(declare-fun m!5970330 () Bool)

(assert (=> b!4946948 m!5970330))

(declare-fun m!5970332 () Bool)

(assert (=> b!4946954 m!5970332))

(declare-fun m!5970334 () Bool)

(assert (=> b!4946962 m!5970334))

(declare-fun m!5970336 () Bool)

(assert (=> b!4946957 m!5970336))

(declare-fun m!5970338 () Bool)

(assert (=> b!4946952 m!5970338))

(declare-fun m!5970340 () Bool)

(assert (=> b!4946952 m!5970340))

(declare-fun m!5970342 () Bool)

(assert (=> b!4946952 m!5970342))

(check-sat (not b!4946958) tp_is_empty!36171 (not b!4946961) (not b!4946950) (not b!4946951) (not b!4946954) (not b!4946957) (not b!4946956) (not b!4946962) (not b!4946948) (not setNonEmpty!28076) (not b!4946949) (not b!4946955) (not b!4946952) (not start!520896) (not b!4946953) (not b!4946960) (not b!4946963))
(check-sat)
(get-model)

(declare-fun d!1592696 () Bool)

(assert (=> d!1592696 (isPrefix!5093 lt!2040245 lt!2040245)))

(declare-fun lt!2040256 () Unit!147794)

(declare-fun choose!36494 (List!57115 List!57115) Unit!147794)

(assert (=> d!1592696 (= lt!2040256 (choose!36494 lt!2040245 lt!2040245))))

(assert (=> d!1592696 (= (lemmaIsPrefixRefl!3433 lt!2040245 lt!2040245) lt!2040256)))

(declare-fun bs!1181765 () Bool)

(assert (= bs!1181765 d!1592696))

(assert (=> bs!1181765 m!5970266))

(declare-fun m!5970348 () Bool)

(assert (=> bs!1181765 m!5970348))

(assert (=> b!4946953 d!1592696))

(declare-fun b!4946984 () Bool)

(declare-fun e!3090947 () Bool)

(assert (=> b!4946984 (= e!3090947 (>= (size!37819 lt!2040245) (size!37819 lt!2040245)))))

(declare-fun d!1592698 () Bool)

(assert (=> d!1592698 e!3090947))

(declare-fun res!2110962 () Bool)

(assert (=> d!1592698 (=> res!2110962 e!3090947)))

(declare-fun lt!2040259 () Bool)

(assert (=> d!1592698 (= res!2110962 (not lt!2040259))))

(declare-fun e!3090948 () Bool)

(assert (=> d!1592698 (= lt!2040259 e!3090948)))

(declare-fun res!2110961 () Bool)

(assert (=> d!1592698 (=> res!2110961 e!3090948)))

(assert (=> d!1592698 (= res!2110961 ((_ is Nil!56991) lt!2040245))))

(assert (=> d!1592698 (= (isPrefix!5093 lt!2040245 lt!2040245) lt!2040259)))

(declare-fun b!4946983 () Bool)

(declare-fun e!3090946 () Bool)

(assert (=> b!4946983 (= e!3090946 (isPrefix!5093 (tail!9748 lt!2040245) (tail!9748 lt!2040245)))))

(declare-fun b!4946982 () Bool)

(declare-fun res!2110960 () Bool)

(assert (=> b!4946982 (=> (not res!2110960) (not e!3090946))))

(assert (=> b!4946982 (= res!2110960 (= (head!10613 lt!2040245) (head!10613 lt!2040245)))))

(declare-fun b!4946981 () Bool)

(assert (=> b!4946981 (= e!3090948 e!3090946)))

(declare-fun res!2110963 () Bool)

(assert (=> b!4946981 (=> (not res!2110963) (not e!3090946))))

(assert (=> b!4946981 (= res!2110963 (not ((_ is Nil!56991) lt!2040245)))))

(assert (= (and d!1592698 (not res!2110961)) b!4946981))

(assert (= (and b!4946981 res!2110963) b!4946982))

(assert (= (and b!4946982 res!2110960) b!4946983))

(assert (= (and d!1592698 (not res!2110962)) b!4946984))

(assert (=> b!4946984 m!5970308))

(assert (=> b!4946984 m!5970308))

(declare-fun m!5970350 () Bool)

(assert (=> b!4946983 m!5970350))

(assert (=> b!4946983 m!5970350))

(assert (=> b!4946983 m!5970350))

(assert (=> b!4946983 m!5970350))

(declare-fun m!5970352 () Bool)

(assert (=> b!4946983 m!5970352))

(declare-fun m!5970354 () Bool)

(assert (=> b!4946982 m!5970354))

(assert (=> b!4946982 m!5970354))

(assert (=> b!4946953 d!1592698))

(declare-fun d!1592700 () Bool)

(assert (=> d!1592700 (= lt!2040245 testedP!110)))

(declare-fun lt!2040262 () Unit!147794)

(declare-fun choose!36496 (List!57115 List!57115 List!57115) Unit!147794)

(assert (=> d!1592700 (= lt!2040262 (choose!36496 lt!2040245 testedP!110 lt!2040245))))

(assert (=> d!1592700 (isPrefix!5093 lt!2040245 lt!2040245)))

(assert (=> d!1592700 (= (lemmaIsPrefixSameLengthThenSameList!1185 lt!2040245 testedP!110 lt!2040245) lt!2040262)))

(declare-fun bs!1181766 () Bool)

(assert (= bs!1181766 d!1592700))

(declare-fun m!5970356 () Bool)

(assert (=> bs!1181766 m!5970356))

(assert (=> bs!1181766 m!5970266))

(assert (=> b!4946953 d!1592700))

(declare-fun bs!1181789 () Bool)

(declare-fun b!4947138 () Bool)

(declare-fun d!1592702 () Bool)

(assert (= bs!1181789 (and b!4947138 d!1592702)))

(declare-fun lambda!246713 () Int)

(declare-fun lambda!246712 () Int)

(assert (=> bs!1181789 (not (= lambda!246713 lambda!246712))))

(declare-fun bs!1181790 () Bool)

(declare-fun b!4947139 () Bool)

(assert (= bs!1181790 (and b!4947139 d!1592702)))

(declare-fun lambda!246714 () Int)

(assert (=> bs!1181790 (not (= lambda!246714 lambda!246712))))

(declare-fun bs!1181791 () Bool)

(assert (= bs!1181791 (and b!4947139 b!4947138)))

(assert (=> bs!1181791 (= lambda!246714 lambda!246713)))

(declare-fun bm!345233 () Bool)

(declare-fun call!345238 () Bool)

(declare-datatypes ((List!57118 0))(
  ( (Nil!56994) (Cons!56994 (h!63442 Context!6258) (t!367654 List!57118)) )
))
(declare-fun lt!2040374 () List!57118)

(declare-fun lt!2040376 () List!57118)

(declare-fun c!844220 () Bool)

(declare-fun exists!1337 (List!57118 Int) Bool)

(assert (=> bm!345233 (= call!345238 (exists!1337 (ite c!844220 lt!2040376 lt!2040374) (ite c!844220 lambda!246713 lambda!246714)))))

(declare-fun e!3091048 () Unit!147794)

(declare-fun Unit!147800 () Unit!147794)

(assert (=> b!4947138 (= e!3091048 Unit!147800)))

(declare-fun call!345239 () List!57118)

(assert (=> b!4947138 (= lt!2040376 call!345239)))

(declare-fun lt!2040372 () Unit!147794)

(declare-fun lemmaNotForallThenExists!238 (List!57118 Int) Unit!147794)

(assert (=> b!4947138 (= lt!2040372 (lemmaNotForallThenExists!238 lt!2040376 lambda!246712))))

(assert (=> b!4947138 call!345238))

(declare-fun lt!2040377 () Unit!147794)

(assert (=> b!4947138 (= lt!2040377 lt!2040372)))

(declare-fun lt!2040375 () Bool)

(declare-datatypes ((Option!14218 0))(
  ( (None!14217) (Some!14217 (v!50193 List!57115)) )
))
(declare-fun isEmpty!30662 (Option!14218) Bool)

(declare-fun getLanguageWitness!687 ((InoxSet Context!6258)) Option!14218)

(assert (=> d!1592702 (= lt!2040375 (isEmpty!30662 (getLanguageWitness!687 z!3568)))))

(declare-fun forall!13267 ((InoxSet Context!6258) Int) Bool)

(assert (=> d!1592702 (= lt!2040375 (forall!13267 z!3568 lambda!246712))))

(declare-fun lt!2040373 () Unit!147794)

(assert (=> d!1592702 (= lt!2040373 e!3091048)))

(assert (=> d!1592702 (= c!844220 (not (forall!13267 z!3568 lambda!246712)))))

(assert (=> d!1592702 (= (lostCauseZipper!805 z!3568) lt!2040375)))

(declare-fun Unit!147801 () Unit!147794)

(assert (=> b!4947139 (= e!3091048 Unit!147801)))

(assert (=> b!4947139 (= lt!2040374 call!345239)))

(declare-fun lt!2040370 () Unit!147794)

(declare-fun lemmaForallThenNotExists!221 (List!57118 Int) Unit!147794)

(assert (=> b!4947139 (= lt!2040370 (lemmaForallThenNotExists!221 lt!2040374 lambda!246712))))

(assert (=> b!4947139 (not call!345238)))

(declare-fun lt!2040371 () Unit!147794)

(assert (=> b!4947139 (= lt!2040371 lt!2040370)))

(declare-fun bm!345234 () Bool)

(declare-fun toList!8000 ((InoxSet Context!6258)) List!57118)

(assert (=> bm!345234 (= call!345239 (toList!8000 z!3568))))

(assert (= (and d!1592702 c!844220) b!4947138))

(assert (= (and d!1592702 (not c!844220)) b!4947139))

(assert (= (or b!4947138 b!4947139) bm!345233))

(assert (= (or b!4947138 b!4947139) bm!345234))

(declare-fun m!5970554 () Bool)

(assert (=> bm!345234 m!5970554))

(declare-fun m!5970556 () Bool)

(assert (=> b!4947139 m!5970556))

(declare-fun m!5970558 () Bool)

(assert (=> bm!345233 m!5970558))

(declare-fun m!5970560 () Bool)

(assert (=> d!1592702 m!5970560))

(assert (=> d!1592702 m!5970560))

(declare-fun m!5970562 () Bool)

(assert (=> d!1592702 m!5970562))

(declare-fun m!5970564 () Bool)

(assert (=> d!1592702 m!5970564))

(assert (=> d!1592702 m!5970564))

(declare-fun m!5970566 () Bool)

(assert (=> b!4947138 m!5970566))

(assert (=> b!4946963 d!1592702))

(declare-fun d!1592780 () Bool)

(assert (=> d!1592780 (= testedSuffix!70 lt!2040244)))

(declare-fun lt!2040380 () Unit!147794)

(declare-fun choose!36497 (List!57115 List!57115 List!57115 List!57115 List!57115) Unit!147794)

(assert (=> d!1592780 (= lt!2040380 (choose!36497 testedP!110 testedSuffix!70 testedP!110 lt!2040244 lt!2040245))))

(assert (=> d!1592780 (isPrefix!5093 testedP!110 lt!2040245)))

(assert (=> d!1592780 (= (lemmaSamePrefixThenSameSuffix!2485 testedP!110 testedSuffix!70 testedP!110 lt!2040244 lt!2040245) lt!2040380)))

(declare-fun bs!1181792 () Bool)

(assert (= bs!1181792 d!1592780))

(declare-fun m!5970568 () Bool)

(assert (=> bs!1181792 m!5970568))

(assert (=> bs!1181792 m!5970338))

(assert (=> b!4946963 d!1592780))

(declare-fun d!1592782 () Bool)

(declare-fun lt!2040383 () List!57115)

(assert (=> d!1592782 (= (++!12472 testedP!110 lt!2040383) lt!2040245)))

(declare-fun e!3091051 () List!57115)

(assert (=> d!1592782 (= lt!2040383 e!3091051)))

(declare-fun c!844223 () Bool)

(assert (=> d!1592782 (= c!844223 ((_ is Cons!56991) testedP!110))))

(assert (=> d!1592782 (>= (size!37819 lt!2040245) (size!37819 testedP!110))))

(assert (=> d!1592782 (= (getSuffix!3075 lt!2040245 testedP!110) lt!2040383)))

(declare-fun b!4947144 () Bool)

(assert (=> b!4947144 (= e!3091051 (getSuffix!3075 (tail!9748 lt!2040245) (t!367651 testedP!110)))))

(declare-fun b!4947145 () Bool)

(assert (=> b!4947145 (= e!3091051 lt!2040245)))

(assert (= (and d!1592782 c!844223) b!4947144))

(assert (= (and d!1592782 (not c!844223)) b!4947145))

(declare-fun m!5970570 () Bool)

(assert (=> d!1592782 m!5970570))

(assert (=> d!1592782 m!5970308))

(assert (=> d!1592782 m!5970330))

(assert (=> b!4947144 m!5970350))

(assert (=> b!4947144 m!5970350))

(declare-fun m!5970572 () Bool)

(assert (=> b!4947144 m!5970572))

(assert (=> b!4946963 d!1592782))

(declare-fun d!1592784 () Bool)

(declare-fun lt!2040386 () Int)

(assert (=> d!1592784 (= lt!2040386 (size!37819 (list!18169 (_1!34077 lt!2040236))))))

(declare-fun size!37822 (Conc!15006) Int)

(assert (=> d!1592784 (= lt!2040386 (size!37822 (c!844163 (_1!34077 lt!2040236))))))

(assert (=> d!1592784 (= (size!37820 (_1!34077 lt!2040236)) lt!2040386)))

(declare-fun bs!1181793 () Bool)

(assert (= bs!1181793 d!1592784))

(assert (=> bs!1181793 m!5970274))

(assert (=> bs!1181793 m!5970274))

(declare-fun m!5970574 () Bool)

(assert (=> bs!1181793 m!5970574))

(declare-fun m!5970576 () Bool)

(assert (=> bs!1181793 m!5970576))

(assert (=> b!4946962 d!1592784))

(declare-fun d!1592786 () Bool)

(declare-fun lt!2040389 () Int)

(assert (=> d!1592786 (>= lt!2040389 0)))

(declare-fun e!3091054 () Int)

(assert (=> d!1592786 (= lt!2040389 e!3091054)))

(declare-fun c!844226 () Bool)

(assert (=> d!1592786 (= c!844226 ((_ is Nil!56991) lt!2040242))))

(assert (=> d!1592786 (= (size!37819 lt!2040242) lt!2040389)))

(declare-fun b!4947150 () Bool)

(assert (=> b!4947150 (= e!3091054 0)))

(declare-fun b!4947151 () Bool)

(assert (=> b!4947151 (= e!3091054 (+ 1 (size!37819 (t!367651 lt!2040242))))))

(assert (= (and d!1592786 c!844226) b!4947150))

(assert (= (and d!1592786 (not c!844226)) b!4947151))

(declare-fun m!5970578 () Bool)

(assert (=> b!4947151 m!5970578))

(assert (=> b!4946954 d!1592786))

(declare-fun d!1592788 () Bool)

(declare-fun list!18171 (Conc!15006) List!57115)

(assert (=> d!1592788 (= (list!18169 totalInput!685) (list!18171 (c!844163 totalInput!685)))))

(declare-fun bs!1181794 () Bool)

(assert (= bs!1181794 d!1592788))

(declare-fun m!5970580 () Bool)

(assert (=> bs!1181794 m!5970580))

(assert (=> start!520896 d!1592788))

(declare-fun b!4947163 () Bool)

(declare-fun lt!2040392 () List!57115)

(declare-fun e!3091059 () Bool)

(assert (=> b!4947163 (= e!3091059 (or (not (= testedSuffix!70 Nil!56991)) (= lt!2040392 testedP!110)))))

(declare-fun b!4947160 () Bool)

(declare-fun e!3091060 () List!57115)

(assert (=> b!4947160 (= e!3091060 testedSuffix!70)))

(declare-fun b!4947161 () Bool)

(assert (=> b!4947161 (= e!3091060 (Cons!56991 (h!63439 testedP!110) (++!12472 (t!367651 testedP!110) testedSuffix!70)))))

(declare-fun d!1592790 () Bool)

(assert (=> d!1592790 e!3091059))

(declare-fun res!2111024 () Bool)

(assert (=> d!1592790 (=> (not res!2111024) (not e!3091059))))

(declare-fun content!10151 (List!57115) (InoxSet C!27224))

(assert (=> d!1592790 (= res!2111024 (= (content!10151 lt!2040392) ((_ map or) (content!10151 testedP!110) (content!10151 testedSuffix!70))))))

(assert (=> d!1592790 (= lt!2040392 e!3091060)))

(declare-fun c!844229 () Bool)

(assert (=> d!1592790 (= c!844229 ((_ is Nil!56991) testedP!110))))

(assert (=> d!1592790 (= (++!12472 testedP!110 testedSuffix!70) lt!2040392)))

(declare-fun b!4947162 () Bool)

(declare-fun res!2111025 () Bool)

(assert (=> b!4947162 (=> (not res!2111025) (not e!3091059))))

(assert (=> b!4947162 (= res!2111025 (= (size!37819 lt!2040392) (+ (size!37819 testedP!110) (size!37819 testedSuffix!70))))))

(assert (= (and d!1592790 c!844229) b!4947160))

(assert (= (and d!1592790 (not c!844229)) b!4947161))

(assert (= (and d!1592790 res!2111024) b!4947162))

(assert (= (and b!4947162 res!2111025) b!4947163))

(declare-fun m!5970582 () Bool)

(assert (=> b!4947161 m!5970582))

(declare-fun m!5970584 () Bool)

(assert (=> d!1592790 m!5970584))

(declare-fun m!5970586 () Bool)

(assert (=> d!1592790 m!5970586))

(declare-fun m!5970588 () Bool)

(assert (=> d!1592790 m!5970588))

(declare-fun m!5970590 () Bool)

(assert (=> b!4947162 m!5970590))

(assert (=> b!4947162 m!5970330))

(declare-fun m!5970592 () Bool)

(assert (=> b!4947162 m!5970592))

(assert (=> start!520896 d!1592790))

(declare-fun d!1592792 () Bool)

(declare-fun isBalanced!4156 (Conc!15006) Bool)

(assert (=> d!1592792 (= (inv!74251 totalInput!685) (isBalanced!4156 (c!844163 totalInput!685)))))

(declare-fun bs!1181795 () Bool)

(assert (= bs!1181795 d!1592792))

(declare-fun m!5970594 () Bool)

(assert (=> bs!1181795 m!5970594))

(assert (=> start!520896 d!1592792))

(declare-fun b!4947167 () Bool)

(declare-fun e!3091062 () Bool)

(assert (=> b!4947167 (= e!3091062 (>= (size!37819 lt!2040245) (size!37819 testedP!110)))))

(declare-fun d!1592794 () Bool)

(assert (=> d!1592794 e!3091062))

(declare-fun res!2111028 () Bool)

(assert (=> d!1592794 (=> res!2111028 e!3091062)))

(declare-fun lt!2040393 () Bool)

(assert (=> d!1592794 (= res!2111028 (not lt!2040393))))

(declare-fun e!3091063 () Bool)

(assert (=> d!1592794 (= lt!2040393 e!3091063)))

(declare-fun res!2111027 () Bool)

(assert (=> d!1592794 (=> res!2111027 e!3091063)))

(assert (=> d!1592794 (= res!2111027 ((_ is Nil!56991) testedP!110))))

(assert (=> d!1592794 (= (isPrefix!5093 testedP!110 lt!2040245) lt!2040393)))

(declare-fun b!4947166 () Bool)

(declare-fun e!3091061 () Bool)

(assert (=> b!4947166 (= e!3091061 (isPrefix!5093 (tail!9748 testedP!110) (tail!9748 lt!2040245)))))

(declare-fun b!4947165 () Bool)

(declare-fun res!2111026 () Bool)

(assert (=> b!4947165 (=> (not res!2111026) (not e!3091061))))

(assert (=> b!4947165 (= res!2111026 (= (head!10613 testedP!110) (head!10613 lt!2040245)))))

(declare-fun b!4947164 () Bool)

(assert (=> b!4947164 (= e!3091063 e!3091061)))

(declare-fun res!2111029 () Bool)

(assert (=> b!4947164 (=> (not res!2111029) (not e!3091061))))

(assert (=> b!4947164 (= res!2111029 (not ((_ is Nil!56991) lt!2040245)))))

(assert (= (and d!1592794 (not res!2111027)) b!4947164))

(assert (= (and b!4947164 res!2111029) b!4947165))

(assert (= (and b!4947165 res!2111026) b!4947166))

(assert (= (and d!1592794 (not res!2111028)) b!4947167))

(assert (=> b!4947167 m!5970308))

(assert (=> b!4947167 m!5970330))

(declare-fun m!5970596 () Bool)

(assert (=> b!4947166 m!5970596))

(assert (=> b!4947166 m!5970350))

(assert (=> b!4947166 m!5970596))

(assert (=> b!4947166 m!5970350))

(declare-fun m!5970598 () Bool)

(assert (=> b!4947166 m!5970598))

(declare-fun m!5970600 () Bool)

(assert (=> b!4947165 m!5970600))

(assert (=> b!4947165 m!5970354))

(assert (=> b!4946952 d!1592794))

(declare-fun b!4947171 () Bool)

(declare-fun e!3091065 () Bool)

(assert (=> b!4947171 (= e!3091065 (>= (size!37819 lt!2040237) (size!37819 testedP!110)))))

(declare-fun d!1592796 () Bool)

(assert (=> d!1592796 e!3091065))

(declare-fun res!2111032 () Bool)

(assert (=> d!1592796 (=> res!2111032 e!3091065)))

(declare-fun lt!2040394 () Bool)

(assert (=> d!1592796 (= res!2111032 (not lt!2040394))))

(declare-fun e!3091066 () Bool)

(assert (=> d!1592796 (= lt!2040394 e!3091066)))

(declare-fun res!2111031 () Bool)

(assert (=> d!1592796 (=> res!2111031 e!3091066)))

(assert (=> d!1592796 (= res!2111031 ((_ is Nil!56991) testedP!110))))

(assert (=> d!1592796 (= (isPrefix!5093 testedP!110 lt!2040237) lt!2040394)))

(declare-fun b!4947170 () Bool)

(declare-fun e!3091064 () Bool)

(assert (=> b!4947170 (= e!3091064 (isPrefix!5093 (tail!9748 testedP!110) (tail!9748 lt!2040237)))))

(declare-fun b!4947169 () Bool)

(declare-fun res!2111030 () Bool)

(assert (=> b!4947169 (=> (not res!2111030) (not e!3091064))))

(assert (=> b!4947169 (= res!2111030 (= (head!10613 testedP!110) (head!10613 lt!2040237)))))

(declare-fun b!4947168 () Bool)

(assert (=> b!4947168 (= e!3091066 e!3091064)))

(declare-fun res!2111033 () Bool)

(assert (=> b!4947168 (=> (not res!2111033) (not e!3091064))))

(assert (=> b!4947168 (= res!2111033 (not ((_ is Nil!56991) lt!2040237)))))

(assert (= (and d!1592796 (not res!2111031)) b!4947168))

(assert (= (and b!4947168 res!2111033) b!4947169))

(assert (= (and b!4947169 res!2111030) b!4947170))

(assert (= (and d!1592796 (not res!2111032)) b!4947171))

(declare-fun m!5970602 () Bool)

(assert (=> b!4947171 m!5970602))

(assert (=> b!4947171 m!5970330))

(assert (=> b!4947170 m!5970596))

(declare-fun m!5970604 () Bool)

(assert (=> b!4947170 m!5970604))

(assert (=> b!4947170 m!5970596))

(assert (=> b!4947170 m!5970604))

(declare-fun m!5970606 () Bool)

(assert (=> b!4947170 m!5970606))

(assert (=> b!4947169 m!5970600))

(declare-fun m!5970608 () Bool)

(assert (=> b!4947169 m!5970608))

(assert (=> b!4946952 d!1592796))

(declare-fun d!1592798 () Bool)

(assert (=> d!1592798 (isPrefix!5093 testedP!110 (++!12472 testedP!110 testedSuffix!70))))

(declare-fun lt!2040397 () Unit!147794)

(declare-fun choose!36498 (List!57115 List!57115) Unit!147794)

(assert (=> d!1592798 (= lt!2040397 (choose!36498 testedP!110 testedSuffix!70))))

(assert (=> d!1592798 (= (lemmaConcatTwoListThenFirstIsPrefix!3317 testedP!110 testedSuffix!70) lt!2040397)))

(declare-fun bs!1181796 () Bool)

(assert (= bs!1181796 d!1592798))

(assert (=> bs!1181796 m!5970280))

(assert (=> bs!1181796 m!5970280))

(declare-fun m!5970610 () Bool)

(assert (=> bs!1181796 m!5970610))

(declare-fun m!5970612 () Bool)

(assert (=> bs!1181796 m!5970612))

(assert (=> b!4946952 d!1592798))

(declare-fun d!1592800 () Bool)

(declare-fun lambda!246717 () Int)

(declare-fun forall!13268 (List!57116 Int) Bool)

(assert (=> d!1592800 (= (inv!74250 setElem!28076) (forall!13268 (exprs!3629 setElem!28076) lambda!246717))))

(declare-fun bs!1181797 () Bool)

(assert (= bs!1181797 d!1592800))

(declare-fun m!5970614 () Bool)

(assert (=> bs!1181797 m!5970614))

(assert (=> setNonEmpty!28076 d!1592800))

(declare-fun d!1592802 () Bool)

(declare-fun lt!2040398 () Int)

(assert (=> d!1592802 (>= lt!2040398 0)))

(declare-fun e!3091067 () Int)

(assert (=> d!1592802 (= lt!2040398 e!3091067)))

(declare-fun c!844230 () Bool)

(assert (=> d!1592802 (= c!844230 ((_ is Nil!56991) lt!2040245))))

(assert (=> d!1592802 (= (size!37819 lt!2040245) lt!2040398)))

(declare-fun b!4947172 () Bool)

(assert (=> b!4947172 (= e!3091067 0)))

(declare-fun b!4947173 () Bool)

(assert (=> b!4947173 (= e!3091067 (+ 1 (size!37819 (t!367651 lt!2040245))))))

(assert (= (and d!1592802 c!844230) b!4947172))

(assert (= (and d!1592802 (not c!844230)) b!4947173))

(declare-fun m!5970616 () Bool)

(assert (=> b!4947173 m!5970616))

(assert (=> b!4946949 d!1592802))

(declare-fun d!1592804 () Bool)

(assert (=> d!1592804 (<= (size!37819 testedP!110) (size!37819 lt!2040245))))

(declare-fun lt!2040401 () Unit!147794)

(declare-fun choose!36499 (List!57115 List!57115) Unit!147794)

(assert (=> d!1592804 (= lt!2040401 (choose!36499 testedP!110 lt!2040245))))

(assert (=> d!1592804 (isPrefix!5093 testedP!110 lt!2040245)))

(assert (=> d!1592804 (= (lemmaIsPrefixThenSmallerEqSize!748 testedP!110 lt!2040245) lt!2040401)))

(declare-fun bs!1181798 () Bool)

(assert (= bs!1181798 d!1592804))

(assert (=> bs!1181798 m!5970330))

(assert (=> bs!1181798 m!5970308))

(declare-fun m!5970618 () Bool)

(assert (=> bs!1181798 m!5970618))

(assert (=> bs!1181798 m!5970338))

(assert (=> b!4946949 d!1592804))

(declare-fun d!1592806 () Bool)

(declare-fun lt!2040402 () Int)

(assert (=> d!1592806 (>= lt!2040402 0)))

(declare-fun e!3091068 () Int)

(assert (=> d!1592806 (= lt!2040402 e!3091068)))

(declare-fun c!844231 () Bool)

(assert (=> d!1592806 (= c!844231 ((_ is Nil!56991) testedP!110))))

(assert (=> d!1592806 (= (size!37819 testedP!110) lt!2040402)))

(declare-fun b!4947174 () Bool)

(assert (=> b!4947174 (= e!3091068 0)))

(declare-fun b!4947175 () Bool)

(assert (=> b!4947175 (= e!3091068 (+ 1 (size!37819 (t!367651 testedP!110))))))

(assert (= (and d!1592806 c!844231) b!4947174))

(assert (= (and d!1592806 (not c!844231)) b!4947175))

(declare-fun m!5970620 () Bool)

(assert (=> b!4947175 m!5970620))

(assert (=> b!4946948 d!1592806))

(declare-fun lt!2040403 () List!57115)

(declare-fun e!3091069 () Bool)

(declare-fun b!4947179 () Bool)

(assert (=> b!4947179 (= e!3091069 (or (not (= lt!2040241 Nil!56991)) (= lt!2040403 lt!2040240)))))

(declare-fun b!4947176 () Bool)

(declare-fun e!3091070 () List!57115)

(assert (=> b!4947176 (= e!3091070 lt!2040241)))

(declare-fun b!4947177 () Bool)

(assert (=> b!4947177 (= e!3091070 (Cons!56991 (h!63439 lt!2040240) (++!12472 (t!367651 lt!2040240) lt!2040241)))))

(declare-fun d!1592808 () Bool)

(assert (=> d!1592808 e!3091069))

(declare-fun res!2111034 () Bool)

(assert (=> d!1592808 (=> (not res!2111034) (not e!3091069))))

(assert (=> d!1592808 (= res!2111034 (= (content!10151 lt!2040403) ((_ map or) (content!10151 lt!2040240) (content!10151 lt!2040241))))))

(assert (=> d!1592808 (= lt!2040403 e!3091070)))

(declare-fun c!844232 () Bool)

(assert (=> d!1592808 (= c!844232 ((_ is Nil!56991) lt!2040240))))

(assert (=> d!1592808 (= (++!12472 lt!2040240 lt!2040241) lt!2040403)))

(declare-fun b!4947178 () Bool)

(declare-fun res!2111035 () Bool)

(assert (=> b!4947178 (=> (not res!2111035) (not e!3091069))))

(assert (=> b!4947178 (= res!2111035 (= (size!37819 lt!2040403) (+ (size!37819 lt!2040240) (size!37819 lt!2040241))))))

(assert (= (and d!1592808 c!844232) b!4947176))

(assert (= (and d!1592808 (not c!844232)) b!4947177))

(assert (= (and d!1592808 res!2111034) b!4947178))

(assert (= (and b!4947178 res!2111035) b!4947179))

(declare-fun m!5970622 () Bool)

(assert (=> b!4947177 m!5970622))

(declare-fun m!5970624 () Bool)

(assert (=> d!1592808 m!5970624))

(declare-fun m!5970626 () Bool)

(assert (=> d!1592808 m!5970626))

(declare-fun m!5970628 () Bool)

(assert (=> d!1592808 m!5970628))

(declare-fun m!5970630 () Bool)

(assert (=> b!4947178 m!5970630))

(declare-fun m!5970632 () Bool)

(assert (=> b!4947178 m!5970632))

(declare-fun m!5970634 () Bool)

(assert (=> b!4947178 m!5970634))

(assert (=> b!4946958 d!1592808))

(declare-fun d!1592810 () Bool)

(assert (=> d!1592810 (= (list!18169 (_2!34077 lt!2040236)) (list!18171 (c!844163 (_2!34077 lt!2040236))))))

(declare-fun bs!1181799 () Bool)

(assert (= bs!1181799 d!1592810))

(declare-fun m!5970636 () Bool)

(assert (=> bs!1181799 m!5970636))

(assert (=> b!4946958 d!1592810))

(declare-fun d!1592812 () Bool)

(assert (=> d!1592812 (= (list!18169 (_1!34077 lt!2040236)) (list!18171 (c!844163 (_1!34077 lt!2040236))))))

(declare-fun bs!1181800 () Bool)

(assert (= bs!1181800 d!1592812))

(declare-fun m!5970638 () Bool)

(assert (=> bs!1181800 m!5970638))

(assert (=> b!4946958 d!1592812))

(declare-fun d!1592814 () Bool)

(declare-fun e!3091073 () Bool)

(assert (=> d!1592814 e!3091073))

(declare-fun res!2111041 () Bool)

(assert (=> d!1592814 (=> (not res!2111041) (not e!3091073))))

(declare-fun lt!2040408 () tuple2!61548)

(assert (=> d!1592814 (= res!2111041 (isBalanced!4156 (c!844163 (_1!34077 lt!2040408))))))

(declare-datatypes ((tuple2!61554 0))(
  ( (tuple2!61555 (_1!34080 Conc!15006) (_2!34080 Conc!15006)) )
))
(declare-fun lt!2040409 () tuple2!61554)

(assert (=> d!1592814 (= lt!2040408 (tuple2!61549 (BalanceConc!29443 (_1!34080 lt!2040409)) (BalanceConc!29443 (_2!34080 lt!2040409))))))

(declare-fun splitAt!406 (Conc!15006 Int) tuple2!61554)

(assert (=> d!1592814 (= lt!2040409 (splitAt!406 (c!844163 totalInput!685) testedPSize!70))))

(assert (=> d!1592814 (isBalanced!4156 (c!844163 totalInput!685))))

(assert (=> d!1592814 (= (splitAt!404 totalInput!685 testedPSize!70) lt!2040408)))

(declare-fun b!4947184 () Bool)

(declare-fun res!2111040 () Bool)

(assert (=> b!4947184 (=> (not res!2111040) (not e!3091073))))

(assert (=> b!4947184 (= res!2111040 (isBalanced!4156 (c!844163 (_2!34077 lt!2040408))))))

(declare-fun b!4947185 () Bool)

(declare-datatypes ((tuple2!61556 0))(
  ( (tuple2!61557 (_1!34081 List!57115) (_2!34081 List!57115)) )
))
(declare-fun splitAtIndex!150 (List!57115 Int) tuple2!61556)

(assert (=> b!4947185 (= e!3091073 (= (tuple2!61557 (list!18169 (_1!34077 lt!2040408)) (list!18169 (_2!34077 lt!2040408))) (splitAtIndex!150 (list!18169 totalInput!685) testedPSize!70)))))

(assert (= (and d!1592814 res!2111041) b!4947184))

(assert (= (and b!4947184 res!2111040) b!4947185))

(declare-fun m!5970640 () Bool)

(assert (=> d!1592814 m!5970640))

(declare-fun m!5970642 () Bool)

(assert (=> d!1592814 m!5970642))

(assert (=> d!1592814 m!5970594))

(declare-fun m!5970644 () Bool)

(assert (=> b!4947184 m!5970644))

(declare-fun m!5970646 () Bool)

(assert (=> b!4947185 m!5970646))

(declare-fun m!5970648 () Bool)

(assert (=> b!4947185 m!5970648))

(assert (=> b!4947185 m!5970278))

(assert (=> b!4947185 m!5970278))

(declare-fun m!5970650 () Bool)

(assert (=> b!4947185 m!5970650))

(assert (=> b!4946958 d!1592814))

(declare-fun d!1592816 () Bool)

(assert (=> d!1592816 (isPrefix!5093 (++!12472 testedP!110 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991)) lt!2040245)))

(declare-fun lt!2040412 () Unit!147794)

(declare-fun choose!36500 (List!57115 List!57115) Unit!147794)

(assert (=> d!1592816 (= lt!2040412 (choose!36500 testedP!110 lt!2040245))))

(assert (=> d!1592816 (isPrefix!5093 testedP!110 lt!2040245)))

(assert (=> d!1592816 (= (lemmaAddHeadSuffixToPrefixStillPrefix!822 testedP!110 lt!2040245) lt!2040412)))

(declare-fun bs!1181801 () Bool)

(assert (= bs!1181801 d!1592816))

(declare-fun m!5970652 () Bool)

(assert (=> bs!1181801 m!5970652))

(declare-fun m!5970654 () Bool)

(assert (=> bs!1181801 m!5970654))

(declare-fun m!5970656 () Bool)

(assert (=> bs!1181801 m!5970656))

(assert (=> bs!1181801 m!5970654))

(assert (=> bs!1181801 m!5970288))

(assert (=> bs!1181801 m!5970288))

(declare-fun m!5970658 () Bool)

(assert (=> bs!1181801 m!5970658))

(assert (=> bs!1181801 m!5970338))

(assert (=> b!4946950 d!1592816))

(declare-fun bs!1181802 () Bool)

(declare-fun d!1592818 () Bool)

(assert (= bs!1181802 (and d!1592818 d!1592702)))

(declare-fun lambda!246720 () Int)

(assert (=> bs!1181802 (not (= lambda!246720 lambda!246712))))

(declare-fun bs!1181803 () Bool)

(assert (= bs!1181803 (and d!1592818 b!4947138)))

(assert (=> bs!1181803 (not (= lambda!246720 lambda!246713))))

(declare-fun bs!1181804 () Bool)

(assert (= bs!1181804 (and d!1592818 b!4947139)))

(assert (=> bs!1181804 (not (= lambda!246720 lambda!246714))))

(declare-fun exists!1338 ((InoxSet Context!6258) Int) Bool)

(assert (=> d!1592818 (= (nullableZipper!858 z!3568) (exists!1338 z!3568 lambda!246720))))

(declare-fun bs!1181805 () Bool)

(assert (= bs!1181805 d!1592818))

(declare-fun m!5970660 () Bool)

(assert (=> bs!1181805 m!5970660))

(assert (=> b!4946950 d!1592818))

(declare-fun d!1592820 () Bool)

(assert (=> d!1592820 (= (++!12472 (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991)) lt!2040243) lt!2040245)))

(declare-fun lt!2040415 () Unit!147794)

(declare-fun choose!36501 (List!57115 C!27224 List!57115 List!57115) Unit!147794)

(assert (=> d!1592820 (= lt!2040415 (choose!36501 testedP!110 lt!2040235 lt!2040243 lt!2040245))))

(assert (=> d!1592820 (= (++!12472 testedP!110 (Cons!56991 lt!2040235 lt!2040243)) lt!2040245)))

(assert (=> d!1592820 (= (lemmaMoveElementToOtherListKeepsConcatEq!1432 testedP!110 lt!2040235 lt!2040243 lt!2040245) lt!2040415)))

(declare-fun bs!1181806 () Bool)

(assert (= bs!1181806 d!1592820))

(assert (=> bs!1181806 m!5970324))

(assert (=> bs!1181806 m!5970324))

(declare-fun m!5970662 () Bool)

(assert (=> bs!1181806 m!5970662))

(declare-fun m!5970664 () Bool)

(assert (=> bs!1181806 m!5970664))

(declare-fun m!5970666 () Bool)

(assert (=> bs!1181806 m!5970666))

(assert (=> b!4946950 d!1592820))

(declare-fun d!1592822 () Bool)

(assert (=> d!1592822 (= (head!10613 lt!2040244) (h!63439 lt!2040244))))

(assert (=> b!4946950 d!1592822))

(declare-fun e!3091074 () Bool)

(declare-fun lt!2040416 () List!57115)

(declare-fun b!4947189 () Bool)

(assert (=> b!4947189 (= e!3091074 (or (not (= lt!2040243 Nil!56991)) (= lt!2040416 lt!2040242)))))

(declare-fun b!4947186 () Bool)

(declare-fun e!3091075 () List!57115)

(assert (=> b!4947186 (= e!3091075 lt!2040243)))

(declare-fun b!4947187 () Bool)

(assert (=> b!4947187 (= e!3091075 (Cons!56991 (h!63439 lt!2040242) (++!12472 (t!367651 lt!2040242) lt!2040243)))))

(declare-fun d!1592824 () Bool)

(assert (=> d!1592824 e!3091074))

(declare-fun res!2111042 () Bool)

(assert (=> d!1592824 (=> (not res!2111042) (not e!3091074))))

(assert (=> d!1592824 (= res!2111042 (= (content!10151 lt!2040416) ((_ map or) (content!10151 lt!2040242) (content!10151 lt!2040243))))))

(assert (=> d!1592824 (= lt!2040416 e!3091075)))

(declare-fun c!844235 () Bool)

(assert (=> d!1592824 (= c!844235 ((_ is Nil!56991) lt!2040242))))

(assert (=> d!1592824 (= (++!12472 lt!2040242 lt!2040243) lt!2040416)))

(declare-fun b!4947188 () Bool)

(declare-fun res!2111043 () Bool)

(assert (=> b!4947188 (=> (not res!2111043) (not e!3091074))))

(assert (=> b!4947188 (= res!2111043 (= (size!37819 lt!2040416) (+ (size!37819 lt!2040242) (size!37819 lt!2040243))))))

(assert (= (and d!1592824 c!844235) b!4947186))

(assert (= (and d!1592824 (not c!844235)) b!4947187))

(assert (= (and d!1592824 res!2111042) b!4947188))

(assert (= (and b!4947188 res!2111043) b!4947189))

(declare-fun m!5970668 () Bool)

(assert (=> b!4947187 m!5970668))

(declare-fun m!5970670 () Bool)

(assert (=> d!1592824 m!5970670))

(declare-fun m!5970672 () Bool)

(assert (=> d!1592824 m!5970672))

(declare-fun m!5970674 () Bool)

(assert (=> d!1592824 m!5970674))

(declare-fun m!5970676 () Bool)

(assert (=> b!4947188 m!5970676))

(assert (=> b!4947188 m!5970332))

(declare-fun m!5970678 () Bool)

(assert (=> b!4947188 m!5970678))

(assert (=> b!4946950 d!1592824))

(declare-fun e!3091077 () Bool)

(declare-fun b!4947193 () Bool)

(assert (=> b!4947193 (= e!3091077 (>= (size!37819 lt!2040245) (size!37819 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991)))))))

(declare-fun d!1592826 () Bool)

(assert (=> d!1592826 e!3091077))

(declare-fun res!2111046 () Bool)

(assert (=> d!1592826 (=> res!2111046 e!3091077)))

(declare-fun lt!2040417 () Bool)

(assert (=> d!1592826 (= res!2111046 (not lt!2040417))))

(declare-fun e!3091078 () Bool)

(assert (=> d!1592826 (= lt!2040417 e!3091078)))

(declare-fun res!2111045 () Bool)

(assert (=> d!1592826 (=> res!2111045 e!3091078)))

(assert (=> d!1592826 (= res!2111045 ((_ is Nil!56991) (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))))))

(assert (=> d!1592826 (= (isPrefix!5093 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991)) lt!2040245) lt!2040417)))

(declare-fun b!4947192 () Bool)

(declare-fun e!3091076 () Bool)

(assert (=> b!4947192 (= e!3091076 (isPrefix!5093 (tail!9748 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))) (tail!9748 lt!2040245)))))

(declare-fun b!4947191 () Bool)

(declare-fun res!2111044 () Bool)

(assert (=> b!4947191 (=> (not res!2111044) (not e!3091076))))

(assert (=> b!4947191 (= res!2111044 (= (head!10613 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))) (head!10613 lt!2040245)))))

(declare-fun b!4947190 () Bool)

(assert (=> b!4947190 (= e!3091078 e!3091076)))

(declare-fun res!2111047 () Bool)

(assert (=> b!4947190 (=> (not res!2111047) (not e!3091076))))

(assert (=> b!4947190 (= res!2111047 (not ((_ is Nil!56991) lt!2040245)))))

(assert (= (and d!1592826 (not res!2111045)) b!4947190))

(assert (= (and b!4947190 res!2111047) b!4947191))

(assert (= (and b!4947191 res!2111044) b!4947192))

(assert (= (and d!1592826 (not res!2111046)) b!4947193))

(assert (=> b!4947193 m!5970308))

(assert (=> b!4947193 m!5970316))

(declare-fun m!5970680 () Bool)

(assert (=> b!4947193 m!5970680))

(assert (=> b!4947192 m!5970316))

(declare-fun m!5970682 () Bool)

(assert (=> b!4947192 m!5970682))

(assert (=> b!4947192 m!5970350))

(assert (=> b!4947192 m!5970682))

(assert (=> b!4947192 m!5970350))

(declare-fun m!5970684 () Bool)

(assert (=> b!4947192 m!5970684))

(assert (=> b!4947191 m!5970316))

(declare-fun m!5970686 () Bool)

(assert (=> b!4947191 m!5970686))

(assert (=> b!4947191 m!5970354))

(assert (=> b!4946950 d!1592826))

(declare-fun e!3091079 () Bool)

(declare-fun lt!2040418 () List!57115)

(declare-fun b!4947197 () Bool)

(assert (=> b!4947197 (= e!3091079 (or (not (= (Cons!56991 lt!2040235 Nil!56991) Nil!56991)) (= lt!2040418 testedP!110)))))

(declare-fun b!4947194 () Bool)

(declare-fun e!3091080 () List!57115)

(assert (=> b!4947194 (= e!3091080 (Cons!56991 lt!2040235 Nil!56991))))

(declare-fun b!4947195 () Bool)

(assert (=> b!4947195 (= e!3091080 (Cons!56991 (h!63439 testedP!110) (++!12472 (t!367651 testedP!110) (Cons!56991 lt!2040235 Nil!56991))))))

(declare-fun d!1592828 () Bool)

(assert (=> d!1592828 e!3091079))

(declare-fun res!2111048 () Bool)

(assert (=> d!1592828 (=> (not res!2111048) (not e!3091079))))

(assert (=> d!1592828 (= res!2111048 (= (content!10151 lt!2040418) ((_ map or) (content!10151 testedP!110) (content!10151 (Cons!56991 lt!2040235 Nil!56991)))))))

(assert (=> d!1592828 (= lt!2040418 e!3091080)))

(declare-fun c!844236 () Bool)

(assert (=> d!1592828 (= c!844236 ((_ is Nil!56991) testedP!110))))

(assert (=> d!1592828 (= (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991)) lt!2040418)))

(declare-fun b!4947196 () Bool)

(declare-fun res!2111049 () Bool)

(assert (=> b!4947196 (=> (not res!2111049) (not e!3091079))))

(assert (=> b!4947196 (= res!2111049 (= (size!37819 lt!2040418) (+ (size!37819 testedP!110) (size!37819 (Cons!56991 lt!2040235 Nil!56991)))))))

(assert (= (and d!1592828 c!844236) b!4947194))

(assert (= (and d!1592828 (not c!844236)) b!4947195))

(assert (= (and d!1592828 res!2111048) b!4947196))

(assert (= (and b!4947196 res!2111049) b!4947197))

(declare-fun m!5970688 () Bool)

(assert (=> b!4947195 m!5970688))

(declare-fun m!5970690 () Bool)

(assert (=> d!1592828 m!5970690))

(assert (=> d!1592828 m!5970586))

(declare-fun m!5970692 () Bool)

(assert (=> d!1592828 m!5970692))

(declare-fun m!5970694 () Bool)

(assert (=> b!4947196 m!5970694))

(assert (=> b!4947196 m!5970330))

(declare-fun m!5970696 () Bool)

(assert (=> b!4947196 m!5970696))

(assert (=> b!4946950 d!1592828))

(declare-fun lt!2040419 () List!57115)

(declare-fun e!3091081 () Bool)

(declare-fun b!4947201 () Bool)

(assert (=> b!4947201 (= e!3091081 (or (not (= (Cons!56991 (head!10613 lt!2040244) Nil!56991) Nil!56991)) (= lt!2040419 testedP!110)))))

(declare-fun b!4947198 () Bool)

(declare-fun e!3091082 () List!57115)

(assert (=> b!4947198 (= e!3091082 (Cons!56991 (head!10613 lt!2040244) Nil!56991))))

(declare-fun b!4947199 () Bool)

(assert (=> b!4947199 (= e!3091082 (Cons!56991 (h!63439 testedP!110) (++!12472 (t!367651 testedP!110) (Cons!56991 (head!10613 lt!2040244) Nil!56991))))))

(declare-fun d!1592830 () Bool)

(assert (=> d!1592830 e!3091081))

(declare-fun res!2111050 () Bool)

(assert (=> d!1592830 (=> (not res!2111050) (not e!3091081))))

(assert (=> d!1592830 (= res!2111050 (= (content!10151 lt!2040419) ((_ map or) (content!10151 testedP!110) (content!10151 (Cons!56991 (head!10613 lt!2040244) Nil!56991)))))))

(assert (=> d!1592830 (= lt!2040419 e!3091082)))

(declare-fun c!844237 () Bool)

(assert (=> d!1592830 (= c!844237 ((_ is Nil!56991) testedP!110))))

(assert (=> d!1592830 (= (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991)) lt!2040419)))

(declare-fun b!4947200 () Bool)

(declare-fun res!2111051 () Bool)

(assert (=> b!4947200 (=> (not res!2111051) (not e!3091081))))

(assert (=> b!4947200 (= res!2111051 (= (size!37819 lt!2040419) (+ (size!37819 testedP!110) (size!37819 (Cons!56991 (head!10613 lt!2040244) Nil!56991)))))))

(assert (= (and d!1592830 c!844237) b!4947198))

(assert (= (and d!1592830 (not c!844237)) b!4947199))

(assert (= (and d!1592830 res!2111050) b!4947200))

(assert (= (and b!4947200 res!2111051) b!4947201))

(declare-fun m!5970698 () Bool)

(assert (=> b!4947199 m!5970698))

(declare-fun m!5970700 () Bool)

(assert (=> d!1592830 m!5970700))

(assert (=> d!1592830 m!5970586))

(declare-fun m!5970702 () Bool)

(assert (=> d!1592830 m!5970702))

(declare-fun m!5970704 () Bool)

(assert (=> b!4947200 m!5970704))

(assert (=> b!4947200 m!5970330))

(declare-fun m!5970706 () Bool)

(assert (=> b!4947200 m!5970706))

(assert (=> b!4946950 d!1592830))

(declare-fun d!1592832 () Bool)

(assert (=> d!1592832 (= (tail!9748 testedSuffix!70) (t!367651 testedSuffix!70))))

(assert (=> b!4946950 d!1592832))

(declare-fun d!1592834 () Bool)

(declare-fun lt!2040420 () Int)

(assert (=> d!1592834 (= lt!2040420 (size!37819 (list!18169 totalInput!685)))))

(assert (=> d!1592834 (= lt!2040420 (size!37822 (c!844163 totalInput!685)))))

(assert (=> d!1592834 (= (size!37820 totalInput!685) lt!2040420)))

(declare-fun bs!1181807 () Bool)

(assert (= bs!1181807 d!1592834))

(assert (=> bs!1181807 m!5970278))

(assert (=> bs!1181807 m!5970278))

(declare-fun m!5970708 () Bool)

(assert (=> bs!1181807 m!5970708))

(declare-fun m!5970710 () Bool)

(assert (=> bs!1181807 m!5970710))

(assert (=> b!4946960 d!1592834))

(declare-fun d!1592836 () Bool)

(assert (=> d!1592836 (= (head!10613 testedSuffix!70) (h!63439 testedSuffix!70))))

(assert (=> b!4946956 d!1592836))

(declare-fun b!4947220 () Bool)

(declare-fun e!3091095 () List!57115)

(assert (=> b!4947220 (= e!3091095 (drop!2294 (t!367651 lt!2040245) (- testedPSize!70 1)))))

(declare-fun b!4947221 () Bool)

(declare-fun e!3091097 () List!57115)

(assert (=> b!4947221 (= e!3091097 Nil!56991)))

(declare-fun b!4947222 () Bool)

(assert (=> b!4947222 (= e!3091097 e!3091095)))

(declare-fun c!844248 () Bool)

(assert (=> b!4947222 (= c!844248 (<= testedPSize!70 0))))

(declare-fun b!4947223 () Bool)

(declare-fun e!3091096 () Bool)

(declare-fun lt!2040423 () List!57115)

(declare-fun e!3091093 () Int)

(assert (=> b!4947223 (= e!3091096 (= (size!37819 lt!2040423) e!3091093))))

(declare-fun c!844249 () Bool)

(assert (=> b!4947223 (= c!844249 (<= testedPSize!70 0))))

(declare-fun bm!345237 () Bool)

(declare-fun call!345242 () Int)

(assert (=> bm!345237 (= call!345242 (size!37819 lt!2040245))))

(declare-fun b!4947224 () Bool)

(assert (=> b!4947224 (= e!3091095 lt!2040245)))

(declare-fun b!4947225 () Bool)

(declare-fun e!3091094 () Int)

(assert (=> b!4947225 (= e!3091093 e!3091094)))

(declare-fun c!844247 () Bool)

(assert (=> b!4947225 (= c!844247 (>= testedPSize!70 call!345242))))

(declare-fun b!4947226 () Bool)

(assert (=> b!4947226 (= e!3091094 0)))

(declare-fun d!1592838 () Bool)

(assert (=> d!1592838 e!3091096))

(declare-fun res!2111054 () Bool)

(assert (=> d!1592838 (=> (not res!2111054) (not e!3091096))))

(assert (=> d!1592838 (= res!2111054 (= ((_ map implies) (content!10151 lt!2040423) (content!10151 lt!2040245)) ((as const (InoxSet C!27224)) true)))))

(assert (=> d!1592838 (= lt!2040423 e!3091097)))

(declare-fun c!844246 () Bool)

(assert (=> d!1592838 (= c!844246 ((_ is Nil!56991) lt!2040245))))

(assert (=> d!1592838 (= (drop!2294 lt!2040245 testedPSize!70) lt!2040423)))

(declare-fun b!4947227 () Bool)

(assert (=> b!4947227 (= e!3091094 (- call!345242 testedPSize!70))))

(declare-fun b!4947228 () Bool)

(assert (=> b!4947228 (= e!3091093 call!345242)))

(assert (= (and d!1592838 c!844246) b!4947221))

(assert (= (and d!1592838 (not c!844246)) b!4947222))

(assert (= (and b!4947222 c!844248) b!4947224))

(assert (= (and b!4947222 (not c!844248)) b!4947220))

(assert (= (and d!1592838 res!2111054) b!4947223))

(assert (= (and b!4947223 c!844249) b!4947228))

(assert (= (and b!4947223 (not c!844249)) b!4947225))

(assert (= (and b!4947225 c!844247) b!4947226))

(assert (= (and b!4947225 (not c!844247)) b!4947227))

(assert (= (or b!4947228 b!4947225 b!4947227) bm!345237))

(declare-fun m!5970712 () Bool)

(assert (=> b!4947220 m!5970712))

(declare-fun m!5970714 () Bool)

(assert (=> b!4947223 m!5970714))

(assert (=> bm!345237 m!5970308))

(declare-fun m!5970716 () Bool)

(assert (=> d!1592838 m!5970716))

(declare-fun m!5970718 () Bool)

(assert (=> d!1592838 m!5970718))

(assert (=> b!4946956 d!1592838))

(declare-fun d!1592840 () Bool)

(assert (=> d!1592840 (and (= lt!2040240 testedP!110) (= lt!2040241 testedSuffix!70))))

(declare-fun lt!2040426 () Unit!147794)

(declare-fun choose!36502 (List!57115 List!57115 List!57115 List!57115) Unit!147794)

(assert (=> d!1592840 (= lt!2040426 (choose!36502 lt!2040240 lt!2040241 testedP!110 testedSuffix!70))))

(assert (=> d!1592840 (= (++!12472 lt!2040240 lt!2040241) (++!12472 testedP!110 testedSuffix!70))))

(assert (=> d!1592840 (= (lemmaConcatSameAndSameSizesThenSameLists!731 lt!2040240 lt!2040241 testedP!110 testedSuffix!70) lt!2040426)))

(declare-fun bs!1181808 () Bool)

(assert (= bs!1181808 d!1592840))

(declare-fun m!5970720 () Bool)

(assert (=> bs!1181808 m!5970720))

(assert (=> bs!1181808 m!5970270))

(assert (=> bs!1181808 m!5970280))

(assert (=> b!4946956 d!1592840))

(declare-fun d!1592842 () Bool)

(assert (=> d!1592842 (= (head!10613 (drop!2294 lt!2040245 testedPSize!70)) (h!63439 (drop!2294 lt!2040245 testedPSize!70)))))

(assert (=> b!4946956 d!1592842))

(declare-fun d!1592844 () Bool)

(declare-fun lt!2040429 () C!27224)

(declare-fun contains!19494 (List!57115 C!27224) Bool)

(assert (=> d!1592844 (contains!19494 lt!2040245 lt!2040429)))

(declare-fun e!3091103 () C!27224)

(assert (=> d!1592844 (= lt!2040429 e!3091103)))

(declare-fun c!844252 () Bool)

(assert (=> d!1592844 (= c!844252 (= testedPSize!70 0))))

(declare-fun e!3091102 () Bool)

(assert (=> d!1592844 e!3091102))

(declare-fun res!2111057 () Bool)

(assert (=> d!1592844 (=> (not res!2111057) (not e!3091102))))

(assert (=> d!1592844 (= res!2111057 (<= 0 testedPSize!70))))

(assert (=> d!1592844 (= (apply!13828 lt!2040245 testedPSize!70) lt!2040429)))

(declare-fun b!4947235 () Bool)

(assert (=> b!4947235 (= e!3091102 (< testedPSize!70 (size!37819 lt!2040245)))))

(declare-fun b!4947236 () Bool)

(assert (=> b!4947236 (= e!3091103 (head!10613 lt!2040245))))

(declare-fun b!4947237 () Bool)

(assert (=> b!4947237 (= e!3091103 (apply!13828 (tail!9748 lt!2040245) (- testedPSize!70 1)))))

(assert (= (and d!1592844 res!2111057) b!4947235))

(assert (= (and d!1592844 c!844252) b!4947236))

(assert (= (and d!1592844 (not c!844252)) b!4947237))

(declare-fun m!5970722 () Bool)

(assert (=> d!1592844 m!5970722))

(assert (=> b!4947235 m!5970308))

(assert (=> b!4947236 m!5970354))

(assert (=> b!4947237 m!5970350))

(assert (=> b!4947237 m!5970350))

(declare-fun m!5970724 () Bool)

(assert (=> b!4947237 m!5970724))

(assert (=> b!4946956 d!1592844))

(declare-fun d!1592846 () Bool)

(assert (=> d!1592846 (= (head!10613 (drop!2294 lt!2040245 testedPSize!70)) (apply!13828 lt!2040245 testedPSize!70))))

(declare-fun lt!2040432 () Unit!147794)

(declare-fun choose!36503 (List!57115 Int) Unit!147794)

(assert (=> d!1592846 (= lt!2040432 (choose!36503 lt!2040245 testedPSize!70))))

(declare-fun e!3091106 () Bool)

(assert (=> d!1592846 e!3091106))

(declare-fun res!2111060 () Bool)

(assert (=> d!1592846 (=> (not res!2111060) (not e!3091106))))

(assert (=> d!1592846 (= res!2111060 (>= testedPSize!70 0))))

(assert (=> d!1592846 (= (lemmaDropApply!1348 lt!2040245 testedPSize!70) lt!2040432)))

(declare-fun b!4947240 () Bool)

(assert (=> b!4947240 (= e!3091106 (< testedPSize!70 (size!37819 lt!2040245)))))

(assert (= (and d!1592846 res!2111060) b!4947240))

(assert (=> d!1592846 m!5970296))

(assert (=> d!1592846 m!5970296))

(assert (=> d!1592846 m!5970298))

(assert (=> d!1592846 m!5970302))

(declare-fun m!5970726 () Bool)

(assert (=> d!1592846 m!5970726))

(assert (=> b!4947240 m!5970308))

(assert (=> b!4946956 d!1592846))

(declare-fun d!1592848 () Bool)

(declare-fun lt!2040435 () C!27224)

(assert (=> d!1592848 (= lt!2040435 (apply!13828 (list!18169 totalInput!685) testedPSize!70))))

(declare-fun apply!13830 (Conc!15006 Int) C!27224)

(assert (=> d!1592848 (= lt!2040435 (apply!13830 (c!844163 totalInput!685) testedPSize!70))))

(declare-fun e!3091109 () Bool)

(assert (=> d!1592848 e!3091109))

(declare-fun res!2111063 () Bool)

(assert (=> d!1592848 (=> (not res!2111063) (not e!3091109))))

(assert (=> d!1592848 (= res!2111063 (<= 0 testedPSize!70))))

(assert (=> d!1592848 (= (apply!13827 totalInput!685 testedPSize!70) lt!2040435)))

(declare-fun b!4947243 () Bool)

(assert (=> b!4947243 (= e!3091109 (< testedPSize!70 (size!37820 totalInput!685)))))

(assert (= (and d!1592848 res!2111063) b!4947243))

(assert (=> d!1592848 m!5970278))

(assert (=> d!1592848 m!5970278))

(declare-fun m!5970728 () Bool)

(assert (=> d!1592848 m!5970728))

(declare-fun m!5970730 () Bool)

(assert (=> d!1592848 m!5970730))

(assert (=> b!4947243 m!5970292))

(assert (=> b!4946956 d!1592848))

(declare-fun d!1592850 () Bool)

(declare-fun c!844255 () Bool)

(assert (=> d!1592850 (= c!844255 ((_ is Node!15006) (c!844163 totalInput!685)))))

(declare-fun e!3091114 () Bool)

(assert (=> d!1592850 (= (inv!74252 (c!844163 totalInput!685)) e!3091114)))

(declare-fun b!4947250 () Bool)

(declare-fun inv!74256 (Conc!15006) Bool)

(assert (=> b!4947250 (= e!3091114 (inv!74256 (c!844163 totalInput!685)))))

(declare-fun b!4947251 () Bool)

(declare-fun e!3091115 () Bool)

(assert (=> b!4947251 (= e!3091114 e!3091115)))

(declare-fun res!2111066 () Bool)

(assert (=> b!4947251 (= res!2111066 (not ((_ is Leaf!24942) (c!844163 totalInput!685))))))

(assert (=> b!4947251 (=> res!2111066 e!3091115)))

(declare-fun b!4947252 () Bool)

(declare-fun inv!74257 (Conc!15006) Bool)

(assert (=> b!4947252 (= e!3091115 (inv!74257 (c!844163 totalInput!685)))))

(assert (= (and d!1592850 c!844255) b!4947250))

(assert (= (and d!1592850 (not c!844255)) b!4947251))

(assert (= (and b!4947251 (not res!2111066)) b!4947252))

(declare-fun m!5970732 () Bool)

(assert (=> b!4947250 m!5970732))

(declare-fun m!5970734 () Bool)

(assert (=> b!4947252 m!5970734))

(assert (=> b!4946957 d!1592850))

(declare-fun b!4947257 () Bool)

(declare-fun e!3091118 () Bool)

(declare-fun tp!1387653 () Bool)

(assert (=> b!4947257 (= e!3091118 (and tp_is_empty!36171 tp!1387653))))

(assert (=> b!4946961 (= tp!1387623 e!3091118)))

(assert (= (and b!4946961 ((_ is Cons!56991) (t!367651 testedSuffix!70))) b!4947257))

(declare-fun b!4947262 () Bool)

(declare-fun e!3091121 () Bool)

(declare-fun tp!1387658 () Bool)

(declare-fun tp!1387659 () Bool)

(assert (=> b!4947262 (= e!3091121 (and tp!1387658 tp!1387659))))

(assert (=> b!4946955 (= tp!1387621 e!3091121)))

(assert (= (and b!4946955 ((_ is Cons!56992) (exprs!3629 setElem!28076))) b!4947262))

(declare-fun b!4947263 () Bool)

(declare-fun e!3091122 () Bool)

(declare-fun tp!1387660 () Bool)

(assert (=> b!4947263 (= e!3091122 (and tp_is_empty!36171 tp!1387660))))

(assert (=> b!4946951 (= tp!1387622 e!3091122)))

(assert (= (and b!4946951 ((_ is Cons!56991) (t!367651 testedP!110))) b!4947263))

(declare-fun b!4947272 () Bool)

(declare-fun tp!1387669 () Bool)

(declare-fun e!3091128 () Bool)

(declare-fun tp!1387668 () Bool)

(assert (=> b!4947272 (= e!3091128 (and (inv!74252 (left!41575 (c!844163 totalInput!685))) tp!1387668 (inv!74252 (right!41905 (c!844163 totalInput!685))) tp!1387669))))

(declare-fun b!4947274 () Bool)

(declare-fun e!3091127 () Bool)

(declare-fun tp!1387667 () Bool)

(assert (=> b!4947274 (= e!3091127 tp!1387667)))

(declare-fun b!4947273 () Bool)

(declare-fun inv!74258 (IArray!30073) Bool)

(assert (=> b!4947273 (= e!3091128 (and (inv!74258 (xs!18332 (c!844163 totalInput!685))) e!3091127))))

(assert (=> b!4946957 (= tp!1387624 (and (inv!74252 (c!844163 totalInput!685)) e!3091128))))

(assert (= (and b!4946957 ((_ is Node!15006) (c!844163 totalInput!685))) b!4947272))

(assert (= b!4947273 b!4947274))

(assert (= (and b!4946957 ((_ is Leaf!24942) (c!844163 totalInput!685))) b!4947273))

(declare-fun m!5970736 () Bool)

(assert (=> b!4947272 m!5970736))

(declare-fun m!5970738 () Bool)

(assert (=> b!4947272 m!5970738))

(declare-fun m!5970740 () Bool)

(assert (=> b!4947273 m!5970740))

(assert (=> b!4946957 m!5970336))

(declare-fun condSetEmpty!28082 () Bool)

(assert (=> setNonEmpty!28076 (= condSetEmpty!28082 (= setRest!28076 ((as const (Array Context!6258 Bool)) false)))))

(declare-fun setRes!28082 () Bool)

(assert (=> setNonEmpty!28076 (= tp!1387625 setRes!28082)))

(declare-fun setIsEmpty!28082 () Bool)

(assert (=> setIsEmpty!28082 setRes!28082))

(declare-fun e!3091131 () Bool)

(declare-fun tp!1387674 () Bool)

(declare-fun setNonEmpty!28082 () Bool)

(declare-fun setElem!28082 () Context!6258)

(assert (=> setNonEmpty!28082 (= setRes!28082 (and tp!1387674 (inv!74250 setElem!28082) e!3091131))))

(declare-fun setRest!28082 () (InoxSet Context!6258))

(assert (=> setNonEmpty!28082 (= setRest!28076 ((_ map or) (store ((as const (Array Context!6258 Bool)) false) setElem!28082 true) setRest!28082))))

(declare-fun b!4947279 () Bool)

(declare-fun tp!1387675 () Bool)

(assert (=> b!4947279 (= e!3091131 tp!1387675)))

(assert (= (and setNonEmpty!28076 condSetEmpty!28082) setIsEmpty!28082))

(assert (= (and setNonEmpty!28076 (not condSetEmpty!28082)) setNonEmpty!28082))

(assert (= setNonEmpty!28082 b!4947279))

(declare-fun m!5970742 () Bool)

(assert (=> setNonEmpty!28082 m!5970742))

(check-sat (not b!4947273) (not b!4947195) (not b!4947250) (not d!1592814) (not b!4947193) (not d!1592696) (not b!4947170) (not d!1592838) (not b!4947167) (not d!1592798) (not b!4947274) (not d!1592800) (not d!1592846) (not b!4947161) (not b!4947175) (not setNonEmpty!28082) (not d!1592784) (not d!1592820) tp_is_empty!36171 (not d!1592818) (not d!1592702) (not b!4947237) (not b!4947240) (not b!4947144) (not b!4947187) (not d!1592792) (not b!4947191) (not b!4947272) (not d!1592780) (not b!4947177) (not d!1592790) (not b!4947151) (not b!4947192) (not b!4946984) (not b!4947196) (not b!4947138) (not d!1592830) (not b!4947169) (not b!4947220) (not b!4946983) (not b!4947243) (not d!1592810) (not b!4947257) (not bm!345237) (not d!1592812) (not b!4947223) (not d!1592816) (not bm!345234) (not d!1592848) (not d!1592828) (not d!1592788) (not b!4947173) (not b!4947166) (not b!4947185) (not b!4947184) (not b!4947262) (not b!4947263) (not b!4946957) (not b!4947235) (not b!4947199) (not b!4947139) (not b!4947200) (not b!4947252) (not d!1592700) (not d!1592844) (not b!4947178) (not b!4947188) (not b!4947279) (not d!1592834) (not d!1592808) (not d!1592804) (not d!1592824) (not b!4947162) (not d!1592840) (not b!4947236) (not b!4946982) (not bm!345233) (not b!4947165) (not d!1592782) (not b!4947171))
(check-sat)
(get-model)

(declare-fun d!1592930 () Bool)

(declare-fun lt!2040461 () Int)

(assert (=> d!1592930 (>= lt!2040461 0)))

(declare-fun e!3091191 () Int)

(assert (=> d!1592930 (= lt!2040461 e!3091191)))

(declare-fun c!844282 () Bool)

(assert (=> d!1592930 (= c!844282 ((_ is Nil!56991) (t!367651 lt!2040245)))))

(assert (=> d!1592930 (= (size!37819 (t!367651 lt!2040245)) lt!2040461)))

(declare-fun b!4947382 () Bool)

(assert (=> b!4947382 (= e!3091191 0)))

(declare-fun b!4947383 () Bool)

(assert (=> b!4947383 (= e!3091191 (+ 1 (size!37819 (t!367651 (t!367651 lt!2040245)))))))

(assert (= (and d!1592930 c!844282) b!4947382))

(assert (= (and d!1592930 (not c!844282)) b!4947383))

(declare-fun m!5970880 () Bool)

(assert (=> b!4947383 m!5970880))

(assert (=> b!4947173 d!1592930))

(declare-fun d!1592932 () Bool)

(declare-fun lt!2040466 () Bool)

(assert (=> d!1592932 (= lt!2040466 (exists!1337 (toList!8000 z!3568) lambda!246720))))

(declare-fun choose!36506 ((InoxSet Context!6258) Int) Bool)

(assert (=> d!1592932 (= lt!2040466 (choose!36506 z!3568 lambda!246720))))

(assert (=> d!1592932 (= (exists!1338 z!3568 lambda!246720) lt!2040466)))

(declare-fun bs!1181823 () Bool)

(assert (= bs!1181823 d!1592932))

(assert (=> bs!1181823 m!5970554))

(assert (=> bs!1181823 m!5970554))

(declare-fun m!5970896 () Bool)

(assert (=> bs!1181823 m!5970896))

(declare-fun m!5970898 () Bool)

(assert (=> bs!1181823 m!5970898))

(assert (=> d!1592818 d!1592932))

(declare-fun d!1592938 () Bool)

(declare-fun c!844286 () Bool)

(assert (=> d!1592938 (= c!844286 ((_ is Nil!56991) lt!2040418))))

(declare-fun e!3091198 () (InoxSet C!27224))

(assert (=> d!1592938 (= (content!10151 lt!2040418) e!3091198)))

(declare-fun b!4947394 () Bool)

(assert (=> b!4947394 (= e!3091198 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947395 () Bool)

(assert (=> b!4947395 (= e!3091198 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040418) true) (content!10151 (t!367651 lt!2040418))))))

(assert (= (and d!1592938 c!844286) b!4947394))

(assert (= (and d!1592938 (not c!844286)) b!4947395))

(declare-fun m!5970902 () Bool)

(assert (=> b!4947395 m!5970902))

(declare-fun m!5970904 () Bool)

(assert (=> b!4947395 m!5970904))

(assert (=> d!1592828 d!1592938))

(declare-fun d!1592944 () Bool)

(declare-fun c!844287 () Bool)

(assert (=> d!1592944 (= c!844287 ((_ is Nil!56991) testedP!110))))

(declare-fun e!3091199 () (InoxSet C!27224))

(assert (=> d!1592944 (= (content!10151 testedP!110) e!3091199)))

(declare-fun b!4947396 () Bool)

(assert (=> b!4947396 (= e!3091199 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947397 () Bool)

(assert (=> b!4947397 (= e!3091199 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 testedP!110) true) (content!10151 (t!367651 testedP!110))))))

(assert (= (and d!1592944 c!844287) b!4947396))

(assert (= (and d!1592944 (not c!844287)) b!4947397))

(declare-fun m!5970906 () Bool)

(assert (=> b!4947397 m!5970906))

(declare-fun m!5970908 () Bool)

(assert (=> b!4947397 m!5970908))

(assert (=> d!1592828 d!1592944))

(declare-fun d!1592946 () Bool)

(declare-fun c!844288 () Bool)

(assert (=> d!1592946 (= c!844288 ((_ is Nil!56991) (Cons!56991 lt!2040235 Nil!56991)))))

(declare-fun e!3091200 () (InoxSet C!27224))

(assert (=> d!1592946 (= (content!10151 (Cons!56991 lt!2040235 Nil!56991)) e!3091200)))

(declare-fun b!4947398 () Bool)

(assert (=> b!4947398 (= e!3091200 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947399 () Bool)

(assert (=> b!4947399 (= e!3091200 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 (Cons!56991 lt!2040235 Nil!56991)) true) (content!10151 (t!367651 (Cons!56991 lt!2040235 Nil!56991)))))))

(assert (= (and d!1592946 c!844288) b!4947398))

(assert (= (and d!1592946 (not c!844288)) b!4947399))

(declare-fun m!5970910 () Bool)

(assert (=> b!4947399 m!5970910))

(declare-fun m!5970912 () Bool)

(assert (=> b!4947399 m!5970912))

(assert (=> d!1592828 d!1592946))

(declare-fun b!4947411 () Bool)

(declare-fun e!3091206 () List!57115)

(assert (=> b!4947411 (= e!3091206 (++!12472 (list!18171 (left!41575 (c!844163 (_1!34077 lt!2040236)))) (list!18171 (right!41905 (c!844163 (_1!34077 lt!2040236))))))))

(declare-fun d!1592948 () Bool)

(declare-fun c!844293 () Bool)

(assert (=> d!1592948 (= c!844293 ((_ is Empty!15006) (c!844163 (_1!34077 lt!2040236))))))

(declare-fun e!3091205 () List!57115)

(assert (=> d!1592948 (= (list!18171 (c!844163 (_1!34077 lt!2040236))) e!3091205)))

(declare-fun b!4947409 () Bool)

(assert (=> b!4947409 (= e!3091205 e!3091206)))

(declare-fun c!844294 () Bool)

(assert (=> b!4947409 (= c!844294 ((_ is Leaf!24942) (c!844163 (_1!34077 lt!2040236))))))

(declare-fun b!4947410 () Bool)

(declare-fun list!18172 (IArray!30073) List!57115)

(assert (=> b!4947410 (= e!3091206 (list!18172 (xs!18332 (c!844163 (_1!34077 lt!2040236)))))))

(declare-fun b!4947408 () Bool)

(assert (=> b!4947408 (= e!3091205 Nil!56991)))

(assert (= (and d!1592948 c!844293) b!4947408))

(assert (= (and d!1592948 (not c!844293)) b!4947409))

(assert (= (and b!4947409 c!844294) b!4947410))

(assert (= (and b!4947409 (not c!844294)) b!4947411))

(declare-fun m!5970918 () Bool)

(assert (=> b!4947411 m!5970918))

(declare-fun m!5970920 () Bool)

(assert (=> b!4947411 m!5970920))

(assert (=> b!4947411 m!5970918))

(assert (=> b!4947411 m!5970920))

(declare-fun m!5970922 () Bool)

(assert (=> b!4947411 m!5970922))

(declare-fun m!5970924 () Bool)

(assert (=> b!4947410 m!5970924))

(assert (=> d!1592812 d!1592948))

(assert (=> d!1592846 d!1592842))

(assert (=> d!1592846 d!1592838))

(assert (=> d!1592846 d!1592844))

(declare-fun d!1592954 () Bool)

(assert (=> d!1592954 (= (head!10613 (drop!2294 lt!2040245 testedPSize!70)) (apply!13828 lt!2040245 testedPSize!70))))

(assert (=> d!1592954 true))

(declare-fun _$27!1687 () Unit!147794)

(assert (=> d!1592954 (= (choose!36503 lt!2040245 testedPSize!70) _$27!1687)))

(declare-fun bs!1181834 () Bool)

(assert (= bs!1181834 d!1592954))

(assert (=> bs!1181834 m!5970296))

(assert (=> bs!1181834 m!5970296))

(assert (=> bs!1181834 m!5970298))

(assert (=> bs!1181834 m!5970302))

(assert (=> d!1592846 d!1592954))

(declare-fun d!1592966 () Bool)

(declare-fun c!844300 () Bool)

(assert (=> d!1592966 (= c!844300 ((_ is Nil!56991) lt!2040416))))

(declare-fun e!3091214 () (InoxSet C!27224))

(assert (=> d!1592966 (= (content!10151 lt!2040416) e!3091214)))

(declare-fun b!4947425 () Bool)

(assert (=> b!4947425 (= e!3091214 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947426 () Bool)

(assert (=> b!4947426 (= e!3091214 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040416) true) (content!10151 (t!367651 lt!2040416))))))

(assert (= (and d!1592966 c!844300) b!4947425))

(assert (= (and d!1592966 (not c!844300)) b!4947426))

(declare-fun m!5970950 () Bool)

(assert (=> b!4947426 m!5970950))

(declare-fun m!5970952 () Bool)

(assert (=> b!4947426 m!5970952))

(assert (=> d!1592824 d!1592966))

(declare-fun d!1592970 () Bool)

(declare-fun c!844301 () Bool)

(assert (=> d!1592970 (= c!844301 ((_ is Nil!56991) lt!2040242))))

(declare-fun e!3091215 () (InoxSet C!27224))

(assert (=> d!1592970 (= (content!10151 lt!2040242) e!3091215)))

(declare-fun b!4947427 () Bool)

(assert (=> b!4947427 (= e!3091215 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947428 () Bool)

(assert (=> b!4947428 (= e!3091215 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040242) true) (content!10151 (t!367651 lt!2040242))))))

(assert (= (and d!1592970 c!844301) b!4947427))

(assert (= (and d!1592970 (not c!844301)) b!4947428))

(declare-fun m!5970954 () Bool)

(assert (=> b!4947428 m!5970954))

(declare-fun m!5970956 () Bool)

(assert (=> b!4947428 m!5970956))

(assert (=> d!1592824 d!1592970))

(declare-fun d!1592972 () Bool)

(declare-fun c!844302 () Bool)

(assert (=> d!1592972 (= c!844302 ((_ is Nil!56991) lt!2040243))))

(declare-fun e!3091216 () (InoxSet C!27224))

(assert (=> d!1592972 (= (content!10151 lt!2040243) e!3091216)))

(declare-fun b!4947429 () Bool)

(assert (=> b!4947429 (= e!3091216 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947430 () Bool)

(assert (=> b!4947430 (= e!3091216 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040243) true) (content!10151 (t!367651 lt!2040243))))))

(assert (= (and d!1592972 c!844302) b!4947429))

(assert (= (and d!1592972 (not c!844302)) b!4947430))

(declare-fun m!5970958 () Bool)

(assert (=> b!4947430 m!5970958))

(declare-fun m!5970960 () Bool)

(assert (=> b!4947430 m!5970960))

(assert (=> d!1592824 d!1592972))

(assert (=> bm!345237 d!1592802))

(declare-fun d!1592974 () Bool)

(declare-fun lt!2040476 () Int)

(assert (=> d!1592974 (>= lt!2040476 0)))

(declare-fun e!3091217 () Int)

(assert (=> d!1592974 (= lt!2040476 e!3091217)))

(declare-fun c!844303 () Bool)

(assert (=> d!1592974 (= c!844303 ((_ is Nil!56991) lt!2040403))))

(assert (=> d!1592974 (= (size!37819 lt!2040403) lt!2040476)))

(declare-fun b!4947431 () Bool)

(assert (=> b!4947431 (= e!3091217 0)))

(declare-fun b!4947432 () Bool)

(assert (=> b!4947432 (= e!3091217 (+ 1 (size!37819 (t!367651 lt!2040403))))))

(assert (= (and d!1592974 c!844303) b!4947431))

(assert (= (and d!1592974 (not c!844303)) b!4947432))

(declare-fun m!5970962 () Bool)

(assert (=> b!4947432 m!5970962))

(assert (=> b!4947178 d!1592974))

(declare-fun d!1592976 () Bool)

(declare-fun lt!2040477 () Int)

(assert (=> d!1592976 (>= lt!2040477 0)))

(declare-fun e!3091218 () Int)

(assert (=> d!1592976 (= lt!2040477 e!3091218)))

(declare-fun c!844304 () Bool)

(assert (=> d!1592976 (= c!844304 ((_ is Nil!56991) lt!2040240))))

(assert (=> d!1592976 (= (size!37819 lt!2040240) lt!2040477)))

(declare-fun b!4947433 () Bool)

(assert (=> b!4947433 (= e!3091218 0)))

(declare-fun b!4947434 () Bool)

(assert (=> b!4947434 (= e!3091218 (+ 1 (size!37819 (t!367651 lt!2040240))))))

(assert (= (and d!1592976 c!844304) b!4947433))

(assert (= (and d!1592976 (not c!844304)) b!4947434))

(declare-fun m!5970964 () Bool)

(assert (=> b!4947434 m!5970964))

(assert (=> b!4947178 d!1592976))

(declare-fun d!1592978 () Bool)

(declare-fun lt!2040478 () Int)

(assert (=> d!1592978 (>= lt!2040478 0)))

(declare-fun e!3091219 () Int)

(assert (=> d!1592978 (= lt!2040478 e!3091219)))

(declare-fun c!844305 () Bool)

(assert (=> d!1592978 (= c!844305 ((_ is Nil!56991) lt!2040241))))

(assert (=> d!1592978 (= (size!37819 lt!2040241) lt!2040478)))

(declare-fun b!4947435 () Bool)

(assert (=> b!4947435 (= e!3091219 0)))

(declare-fun b!4947436 () Bool)

(assert (=> b!4947436 (= e!3091219 (+ 1 (size!37819 (t!367651 lt!2040241))))))

(assert (= (and d!1592978 c!844305) b!4947435))

(assert (= (and d!1592978 (not c!844305)) b!4947436))

(declare-fun m!5970966 () Bool)

(assert (=> b!4947436 m!5970966))

(assert (=> b!4947178 d!1592978))

(declare-fun b!4947437 () Bool)

(declare-fun e!3091222 () List!57115)

(assert (=> b!4947437 (= e!3091222 (drop!2294 (t!367651 (t!367651 lt!2040245)) (- (- testedPSize!70 1) 1)))))

(declare-fun b!4947438 () Bool)

(declare-fun e!3091224 () List!57115)

(assert (=> b!4947438 (= e!3091224 Nil!56991)))

(declare-fun b!4947439 () Bool)

(assert (=> b!4947439 (= e!3091224 e!3091222)))

(declare-fun c!844308 () Bool)

(assert (=> b!4947439 (= c!844308 (<= (- testedPSize!70 1) 0))))

(declare-fun b!4947440 () Bool)

(declare-fun e!3091223 () Bool)

(declare-fun lt!2040479 () List!57115)

(declare-fun e!3091220 () Int)

(assert (=> b!4947440 (= e!3091223 (= (size!37819 lt!2040479) e!3091220))))

(declare-fun c!844309 () Bool)

(assert (=> b!4947440 (= c!844309 (<= (- testedPSize!70 1) 0))))

(declare-fun bm!345238 () Bool)

(declare-fun call!345243 () Int)

(assert (=> bm!345238 (= call!345243 (size!37819 (t!367651 lt!2040245)))))

(declare-fun b!4947441 () Bool)

(assert (=> b!4947441 (= e!3091222 (t!367651 lt!2040245))))

(declare-fun b!4947442 () Bool)

(declare-fun e!3091221 () Int)

(assert (=> b!4947442 (= e!3091220 e!3091221)))

(declare-fun c!844307 () Bool)

(assert (=> b!4947442 (= c!844307 (>= (- testedPSize!70 1) call!345243))))

(declare-fun b!4947443 () Bool)

(assert (=> b!4947443 (= e!3091221 0)))

(declare-fun d!1592980 () Bool)

(assert (=> d!1592980 e!3091223))

(declare-fun res!2111122 () Bool)

(assert (=> d!1592980 (=> (not res!2111122) (not e!3091223))))

(assert (=> d!1592980 (= res!2111122 (= ((_ map implies) (content!10151 lt!2040479) (content!10151 (t!367651 lt!2040245))) ((as const (InoxSet C!27224)) true)))))

(assert (=> d!1592980 (= lt!2040479 e!3091224)))

(declare-fun c!844306 () Bool)

(assert (=> d!1592980 (= c!844306 ((_ is Nil!56991) (t!367651 lt!2040245)))))

(assert (=> d!1592980 (= (drop!2294 (t!367651 lt!2040245) (- testedPSize!70 1)) lt!2040479)))

(declare-fun b!4947444 () Bool)

(assert (=> b!4947444 (= e!3091221 (- call!345243 (- testedPSize!70 1)))))

(declare-fun b!4947445 () Bool)

(assert (=> b!4947445 (= e!3091220 call!345243)))

(assert (= (and d!1592980 c!844306) b!4947438))

(assert (= (and d!1592980 (not c!844306)) b!4947439))

(assert (= (and b!4947439 c!844308) b!4947441))

(assert (= (and b!4947439 (not c!844308)) b!4947437))

(assert (= (and d!1592980 res!2111122) b!4947440))

(assert (= (and b!4947440 c!844309) b!4947445))

(assert (= (and b!4947440 (not c!844309)) b!4947442))

(assert (= (and b!4947442 c!844307) b!4947443))

(assert (= (and b!4947442 (not c!844307)) b!4947444))

(assert (= (or b!4947445 b!4947442 b!4947444) bm!345238))

(declare-fun m!5970968 () Bool)

(assert (=> b!4947437 m!5970968))

(declare-fun m!5970970 () Bool)

(assert (=> b!4947440 m!5970970))

(assert (=> bm!345238 m!5970616))

(declare-fun m!5970972 () Bool)

(assert (=> d!1592980 m!5970972))

(declare-fun m!5970974 () Bool)

(assert (=> d!1592980 m!5970974))

(assert (=> b!4947220 d!1592980))

(assert (=> b!4947243 d!1592834))

(declare-fun d!1592982 () Bool)

(declare-fun lt!2040480 () C!27224)

(assert (=> d!1592982 (contains!19494 (tail!9748 lt!2040245) lt!2040480)))

(declare-fun e!3091226 () C!27224)

(assert (=> d!1592982 (= lt!2040480 e!3091226)))

(declare-fun c!844310 () Bool)

(assert (=> d!1592982 (= c!844310 (= (- testedPSize!70 1) 0))))

(declare-fun e!3091225 () Bool)

(assert (=> d!1592982 e!3091225))

(declare-fun res!2111123 () Bool)

(assert (=> d!1592982 (=> (not res!2111123) (not e!3091225))))

(assert (=> d!1592982 (= res!2111123 (<= 0 (- testedPSize!70 1)))))

(assert (=> d!1592982 (= (apply!13828 (tail!9748 lt!2040245) (- testedPSize!70 1)) lt!2040480)))

(declare-fun b!4947446 () Bool)

(assert (=> b!4947446 (= e!3091225 (< (- testedPSize!70 1) (size!37819 (tail!9748 lt!2040245))))))

(declare-fun b!4947447 () Bool)

(assert (=> b!4947447 (= e!3091226 (head!10613 (tail!9748 lt!2040245)))))

(declare-fun b!4947448 () Bool)

(assert (=> b!4947448 (= e!3091226 (apply!13828 (tail!9748 (tail!9748 lt!2040245)) (- (- testedPSize!70 1) 1)))))

(assert (= (and d!1592982 res!2111123) b!4947446))

(assert (= (and d!1592982 c!844310) b!4947447))

(assert (= (and d!1592982 (not c!844310)) b!4947448))

(assert (=> d!1592982 m!5970350))

(declare-fun m!5970976 () Bool)

(assert (=> d!1592982 m!5970976))

(assert (=> b!4947446 m!5970350))

(declare-fun m!5970978 () Bool)

(assert (=> b!4947446 m!5970978))

(assert (=> b!4947447 m!5970350))

(declare-fun m!5970980 () Bool)

(assert (=> b!4947447 m!5970980))

(assert (=> b!4947448 m!5970350))

(declare-fun m!5970982 () Bool)

(assert (=> b!4947448 m!5970982))

(assert (=> b!4947448 m!5970982))

(declare-fun m!5970984 () Bool)

(assert (=> b!4947448 m!5970984))

(assert (=> b!4947237 d!1592982))

(declare-fun d!1592984 () Bool)

(assert (=> d!1592984 (= (tail!9748 lt!2040245) (t!367651 lt!2040245))))

(assert (=> b!4947237 d!1592984))

(declare-fun d!1592986 () Bool)

(declare-fun c!844311 () Bool)

(assert (=> d!1592986 (= c!844311 ((_ is Nil!56991) lt!2040423))))

(declare-fun e!3091227 () (InoxSet C!27224))

(assert (=> d!1592986 (= (content!10151 lt!2040423) e!3091227)))

(declare-fun b!4947449 () Bool)

(assert (=> b!4947449 (= e!3091227 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947450 () Bool)

(assert (=> b!4947450 (= e!3091227 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040423) true) (content!10151 (t!367651 lt!2040423))))))

(assert (= (and d!1592986 c!844311) b!4947449))

(assert (= (and d!1592986 (not c!844311)) b!4947450))

(declare-fun m!5970986 () Bool)

(assert (=> b!4947450 m!5970986))

(declare-fun m!5970988 () Bool)

(assert (=> b!4947450 m!5970988))

(assert (=> d!1592838 d!1592986))

(declare-fun d!1592988 () Bool)

(declare-fun c!844312 () Bool)

(assert (=> d!1592988 (= c!844312 ((_ is Nil!56991) lt!2040245))))

(declare-fun e!3091228 () (InoxSet C!27224))

(assert (=> d!1592988 (= (content!10151 lt!2040245) e!3091228)))

(declare-fun b!4947451 () Bool)

(assert (=> b!4947451 (= e!3091228 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947452 () Bool)

(assert (=> b!4947452 (= e!3091228 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040245) true) (content!10151 (t!367651 lt!2040245))))))

(assert (= (and d!1592988 c!844312) b!4947451))

(assert (= (and d!1592988 (not c!844312)) b!4947452))

(declare-fun m!5970990 () Bool)

(assert (=> b!4947452 m!5970990))

(assert (=> b!4947452 m!5970974))

(assert (=> d!1592838 d!1592988))

(declare-fun lt!2040481 () List!57115)

(declare-fun b!4947456 () Bool)

(declare-fun e!3091229 () Bool)

(assert (=> b!4947456 (= e!3091229 (or (not (= lt!2040243 Nil!56991)) (= lt!2040481 (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991)))))))

(declare-fun b!4947453 () Bool)

(declare-fun e!3091230 () List!57115)

(assert (=> b!4947453 (= e!3091230 lt!2040243)))

(declare-fun b!4947454 () Bool)

(assert (=> b!4947454 (= e!3091230 (Cons!56991 (h!63439 (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991))) (++!12472 (t!367651 (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991))) lt!2040243)))))

(declare-fun d!1592990 () Bool)

(assert (=> d!1592990 e!3091229))

(declare-fun res!2111124 () Bool)

(assert (=> d!1592990 (=> (not res!2111124) (not e!3091229))))

(assert (=> d!1592990 (= res!2111124 (= (content!10151 lt!2040481) ((_ map or) (content!10151 (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991))) (content!10151 lt!2040243))))))

(assert (=> d!1592990 (= lt!2040481 e!3091230)))

(declare-fun c!844313 () Bool)

(assert (=> d!1592990 (= c!844313 ((_ is Nil!56991) (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991))))))

(assert (=> d!1592990 (= (++!12472 (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991)) lt!2040243) lt!2040481)))

(declare-fun b!4947455 () Bool)

(declare-fun res!2111125 () Bool)

(assert (=> b!4947455 (=> (not res!2111125) (not e!3091229))))

(assert (=> b!4947455 (= res!2111125 (= (size!37819 lt!2040481) (+ (size!37819 (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991))) (size!37819 lt!2040243))))))

(assert (= (and d!1592990 c!844313) b!4947453))

(assert (= (and d!1592990 (not c!844313)) b!4947454))

(assert (= (and d!1592990 res!2111124) b!4947455))

(assert (= (and b!4947455 res!2111125) b!4947456))

(declare-fun m!5970992 () Bool)

(assert (=> b!4947454 m!5970992))

(declare-fun m!5970994 () Bool)

(assert (=> d!1592990 m!5970994))

(assert (=> d!1592990 m!5970324))

(declare-fun m!5970996 () Bool)

(assert (=> d!1592990 m!5970996))

(assert (=> d!1592990 m!5970674))

(declare-fun m!5970998 () Bool)

(assert (=> b!4947455 m!5970998))

(assert (=> b!4947455 m!5970324))

(declare-fun m!5971000 () Bool)

(assert (=> b!4947455 m!5971000))

(assert (=> b!4947455 m!5970678))

(assert (=> d!1592820 d!1592990))

(assert (=> d!1592820 d!1592828))

(declare-fun d!1592992 () Bool)

(assert (=> d!1592992 (= (++!12472 (++!12472 testedP!110 (Cons!56991 lt!2040235 Nil!56991)) lt!2040243) lt!2040245)))

(assert (=> d!1592992 true))

(declare-fun _$68!828 () Unit!147794)

(assert (=> d!1592992 (= (choose!36501 testedP!110 lt!2040235 lt!2040243 lt!2040245) _$68!828)))

(declare-fun bs!1181835 () Bool)

(assert (= bs!1181835 d!1592992))

(assert (=> bs!1181835 m!5970324))

(assert (=> bs!1181835 m!5970324))

(assert (=> bs!1181835 m!5970662))

(assert (=> d!1592820 d!1592992))

(declare-fun lt!2040482 () List!57115)

(declare-fun b!4947460 () Bool)

(declare-fun e!3091231 () Bool)

(assert (=> b!4947460 (= e!3091231 (or (not (= (Cons!56991 lt!2040235 lt!2040243) Nil!56991)) (= lt!2040482 testedP!110)))))

(declare-fun b!4947457 () Bool)

(declare-fun e!3091232 () List!57115)

(assert (=> b!4947457 (= e!3091232 (Cons!56991 lt!2040235 lt!2040243))))

(declare-fun b!4947458 () Bool)

(assert (=> b!4947458 (= e!3091232 (Cons!56991 (h!63439 testedP!110) (++!12472 (t!367651 testedP!110) (Cons!56991 lt!2040235 lt!2040243))))))

(declare-fun d!1592994 () Bool)

(assert (=> d!1592994 e!3091231))

(declare-fun res!2111126 () Bool)

(assert (=> d!1592994 (=> (not res!2111126) (not e!3091231))))

(assert (=> d!1592994 (= res!2111126 (= (content!10151 lt!2040482) ((_ map or) (content!10151 testedP!110) (content!10151 (Cons!56991 lt!2040235 lt!2040243)))))))

(assert (=> d!1592994 (= lt!2040482 e!3091232)))

(declare-fun c!844314 () Bool)

(assert (=> d!1592994 (= c!844314 ((_ is Nil!56991) testedP!110))))

(assert (=> d!1592994 (= (++!12472 testedP!110 (Cons!56991 lt!2040235 lt!2040243)) lt!2040482)))

(declare-fun b!4947459 () Bool)

(declare-fun res!2111127 () Bool)

(assert (=> b!4947459 (=> (not res!2111127) (not e!3091231))))

(assert (=> b!4947459 (= res!2111127 (= (size!37819 lt!2040482) (+ (size!37819 testedP!110) (size!37819 (Cons!56991 lt!2040235 lt!2040243)))))))

(assert (= (and d!1592994 c!844314) b!4947457))

(assert (= (and d!1592994 (not c!844314)) b!4947458))

(assert (= (and d!1592994 res!2111126) b!4947459))

(assert (= (and b!4947459 res!2111127) b!4947460))

(declare-fun m!5971002 () Bool)

(assert (=> b!4947458 m!5971002))

(declare-fun m!5971004 () Bool)

(assert (=> d!1592994 m!5971004))

(assert (=> d!1592994 m!5970586))

(declare-fun m!5971006 () Bool)

(assert (=> d!1592994 m!5971006))

(declare-fun m!5971008 () Bool)

(assert (=> b!4947459 m!5971008))

(assert (=> b!4947459 m!5970330))

(declare-fun m!5971010 () Bool)

(assert (=> b!4947459 m!5971010))

(assert (=> d!1592820 d!1592994))

(declare-fun e!3091233 () Bool)

(declare-fun b!4947464 () Bool)

(declare-fun lt!2040483 () List!57115)

(assert (=> b!4947464 (= e!3091233 (or (not (= testedSuffix!70 Nil!56991)) (= lt!2040483 (t!367651 testedP!110))))))

(declare-fun b!4947461 () Bool)

(declare-fun e!3091234 () List!57115)

(assert (=> b!4947461 (= e!3091234 testedSuffix!70)))

(declare-fun b!4947462 () Bool)

(assert (=> b!4947462 (= e!3091234 (Cons!56991 (h!63439 (t!367651 testedP!110)) (++!12472 (t!367651 (t!367651 testedP!110)) testedSuffix!70)))))

(declare-fun d!1592996 () Bool)

(assert (=> d!1592996 e!3091233))

(declare-fun res!2111128 () Bool)

(assert (=> d!1592996 (=> (not res!2111128) (not e!3091233))))

(assert (=> d!1592996 (= res!2111128 (= (content!10151 lt!2040483) ((_ map or) (content!10151 (t!367651 testedP!110)) (content!10151 testedSuffix!70))))))

(assert (=> d!1592996 (= lt!2040483 e!3091234)))

(declare-fun c!844315 () Bool)

(assert (=> d!1592996 (= c!844315 ((_ is Nil!56991) (t!367651 testedP!110)))))

(assert (=> d!1592996 (= (++!12472 (t!367651 testedP!110) testedSuffix!70) lt!2040483)))

(declare-fun b!4947463 () Bool)

(declare-fun res!2111129 () Bool)

(assert (=> b!4947463 (=> (not res!2111129) (not e!3091233))))

(assert (=> b!4947463 (= res!2111129 (= (size!37819 lt!2040483) (+ (size!37819 (t!367651 testedP!110)) (size!37819 testedSuffix!70))))))

(assert (= (and d!1592996 c!844315) b!4947461))

(assert (= (and d!1592996 (not c!844315)) b!4947462))

(assert (= (and d!1592996 res!2111128) b!4947463))

(assert (= (and b!4947463 res!2111129) b!4947464))

(declare-fun m!5971012 () Bool)

(assert (=> b!4947462 m!5971012))

(declare-fun m!5971014 () Bool)

(assert (=> d!1592996 m!5971014))

(assert (=> d!1592996 m!5970908))

(assert (=> d!1592996 m!5970588))

(declare-fun m!5971016 () Bool)

(assert (=> b!4947463 m!5971016))

(assert (=> b!4947463 m!5970620))

(assert (=> b!4947463 m!5970592))

(assert (=> b!4947161 d!1592996))

(declare-fun d!1592998 () Bool)

(assert (=> d!1592998 (= testedSuffix!70 lt!2040244)))

(assert (=> d!1592998 true))

(declare-fun _$63!1225 () Unit!147794)

(assert (=> d!1592998 (= (choose!36497 testedP!110 testedSuffix!70 testedP!110 lt!2040244 lt!2040245) _$63!1225)))

(assert (=> d!1592780 d!1592998))

(assert (=> d!1592780 d!1592794))

(declare-fun bs!1181836 () Bool)

(declare-fun d!1593000 () Bool)

(assert (= bs!1181836 (and d!1593000 d!1592702)))

(declare-fun lambda!246732 () Int)

(assert (=> bs!1181836 (not (= lambda!246732 lambda!246712))))

(declare-fun bs!1181837 () Bool)

(assert (= bs!1181837 (and d!1593000 b!4947138)))

(assert (=> bs!1181837 (not (= lambda!246732 lambda!246713))))

(declare-fun bs!1181838 () Bool)

(assert (= bs!1181838 (and d!1593000 b!4947139)))

(assert (=> bs!1181838 (not (= lambda!246732 lambda!246714))))

(declare-fun bs!1181839 () Bool)

(assert (= bs!1181839 (and d!1593000 d!1592818)))

(assert (=> bs!1181839 (not (= lambda!246732 lambda!246720))))

(assert (=> d!1593000 true))

(declare-fun order!26005 () Int)

(declare-fun dynLambda!23037 (Int Int) Int)

(assert (=> d!1593000 (< (dynLambda!23037 order!26005 lambda!246712) (dynLambda!23037 order!26005 lambda!246732))))

(assert (=> d!1593000 (not (exists!1337 lt!2040374 lambda!246732))))

(declare-fun lt!2040490 () Unit!147794)

(declare-fun choose!36507 (List!57118 Int) Unit!147794)

(assert (=> d!1593000 (= lt!2040490 (choose!36507 lt!2040374 lambda!246712))))

(declare-fun forall!13270 (List!57118 Int) Bool)

(assert (=> d!1593000 (forall!13270 lt!2040374 lambda!246712)))

(assert (=> d!1593000 (= (lemmaForallThenNotExists!221 lt!2040374 lambda!246712) lt!2040490)))

(declare-fun bs!1181840 () Bool)

(assert (= bs!1181840 d!1593000))

(declare-fun m!5971018 () Bool)

(assert (=> bs!1181840 m!5971018))

(declare-fun m!5971022 () Bool)

(assert (=> bs!1181840 m!5971022))

(declare-fun m!5971028 () Bool)

(assert (=> bs!1181840 m!5971028))

(assert (=> b!4947139 d!1593000))

(declare-fun d!1593002 () Bool)

(assert (=> d!1593002 (and (= lt!2040240 testedP!110) (= lt!2040241 testedSuffix!70))))

(assert (=> d!1593002 true))

(declare-fun _$50!434 () Unit!147794)

(assert (=> d!1593002 (= (choose!36502 lt!2040240 lt!2040241 testedP!110 testedSuffix!70) _$50!434)))

(assert (=> d!1592840 d!1593002))

(assert (=> d!1592840 d!1592808))

(assert (=> d!1592840 d!1592790))

(declare-fun d!1593010 () Bool)

(assert (=> d!1593010 (= lt!2040245 testedP!110)))

(assert (=> d!1593010 true))

(declare-fun _$60!899 () Unit!147794)

(assert (=> d!1593010 (= (choose!36496 lt!2040245 testedP!110 lt!2040245) _$60!899)))

(assert (=> d!1592700 d!1593010))

(assert (=> d!1592700 d!1592698))

(declare-fun d!1593012 () Bool)

(declare-fun e!3091251 () Bool)

(assert (=> d!1593012 e!3091251))

(declare-fun res!2111135 () Bool)

(assert (=> d!1593012 (=> (not res!2111135) (not e!3091251))))

(declare-fun lt!2040495 () List!57118)

(declare-fun noDuplicate!1002 (List!57118) Bool)

(assert (=> d!1593012 (= res!2111135 (noDuplicate!1002 lt!2040495))))

(declare-fun choose!36508 ((InoxSet Context!6258)) List!57118)

(assert (=> d!1593012 (= lt!2040495 (choose!36508 z!3568))))

(assert (=> d!1593012 (= (toList!8000 z!3568) lt!2040495)))

(declare-fun b!4947490 () Bool)

(declare-fun content!10153 (List!57118) (InoxSet Context!6258))

(assert (=> b!4947490 (= e!3091251 (= (content!10153 lt!2040495) z!3568))))

(assert (= (and d!1593012 res!2111135) b!4947490))

(declare-fun m!5971042 () Bool)

(assert (=> d!1593012 m!5971042))

(declare-fun m!5971044 () Bool)

(assert (=> d!1593012 m!5971044))

(declare-fun m!5971046 () Bool)

(assert (=> b!4947490 m!5971046))

(assert (=> bm!345234 d!1593012))

(assert (=> b!4947235 d!1592802))

(declare-fun d!1593014 () Bool)

(declare-fun lt!2040496 () Int)

(assert (=> d!1593014 (>= lt!2040496 0)))

(declare-fun e!3091252 () Int)

(assert (=> d!1593014 (= lt!2040496 e!3091252)))

(declare-fun c!844325 () Bool)

(assert (=> d!1593014 (= c!844325 ((_ is Nil!56991) lt!2040419))))

(assert (=> d!1593014 (= (size!37819 lt!2040419) lt!2040496)))

(declare-fun b!4947491 () Bool)

(assert (=> b!4947491 (= e!3091252 0)))

(declare-fun b!4947492 () Bool)

(assert (=> b!4947492 (= e!3091252 (+ 1 (size!37819 (t!367651 lt!2040419))))))

(assert (= (and d!1593014 c!844325) b!4947491))

(assert (= (and d!1593014 (not c!844325)) b!4947492))

(declare-fun m!5971048 () Bool)

(assert (=> b!4947492 m!5971048))

(assert (=> b!4947200 d!1593014))

(assert (=> b!4947200 d!1592806))

(declare-fun d!1593016 () Bool)

(declare-fun lt!2040497 () Int)

(assert (=> d!1593016 (>= lt!2040497 0)))

(declare-fun e!3091253 () Int)

(assert (=> d!1593016 (= lt!2040497 e!3091253)))

(declare-fun c!844326 () Bool)

(assert (=> d!1593016 (= c!844326 ((_ is Nil!56991) (Cons!56991 (head!10613 lt!2040244) Nil!56991)))))

(assert (=> d!1593016 (= (size!37819 (Cons!56991 (head!10613 lt!2040244) Nil!56991)) lt!2040497)))

(declare-fun b!4947493 () Bool)

(assert (=> b!4947493 (= e!3091253 0)))

(declare-fun b!4947494 () Bool)

(assert (=> b!4947494 (= e!3091253 (+ 1 (size!37819 (t!367651 (Cons!56991 (head!10613 lt!2040244) Nil!56991)))))))

(assert (= (and d!1593016 c!844326) b!4947493))

(assert (= (and d!1593016 (not c!844326)) b!4947494))

(declare-fun m!5971050 () Bool)

(assert (=> b!4947494 m!5971050))

(assert (=> b!4947200 d!1593016))

(declare-fun d!1593018 () Bool)

(assert (=> d!1593018 (= (list!18169 (_1!34077 lt!2040408)) (list!18171 (c!844163 (_1!34077 lt!2040408))))))

(declare-fun bs!1181843 () Bool)

(assert (= bs!1181843 d!1593018))

(declare-fun m!5971052 () Bool)

(assert (=> bs!1181843 m!5971052))

(assert (=> b!4947185 d!1593018))

(declare-fun d!1593020 () Bool)

(assert (=> d!1593020 (= (list!18169 (_2!34077 lt!2040408)) (list!18171 (c!844163 (_2!34077 lt!2040408))))))

(declare-fun bs!1181844 () Bool)

(assert (= bs!1181844 d!1593020))

(declare-fun m!5971054 () Bool)

(assert (=> bs!1181844 m!5971054))

(assert (=> b!4947185 d!1593020))

(declare-fun b!4947558 () Bool)

(declare-fun e!3091287 () tuple2!61556)

(assert (=> b!4947558 (= e!3091287 (tuple2!61557 Nil!56991 (list!18169 totalInput!685)))))

(declare-fun lt!2040512 () tuple2!61556)

(declare-fun e!3091285 () Bool)

(declare-fun b!4947559 () Bool)

(assert (=> b!4947559 (= e!3091285 (= (_2!34081 lt!2040512) (drop!2294 (list!18169 totalInput!685) testedPSize!70)))))

(declare-fun d!1593022 () Bool)

(assert (=> d!1593022 e!3091285))

(declare-fun res!2111155 () Bool)

(assert (=> d!1593022 (=> (not res!2111155) (not e!3091285))))

(assert (=> d!1593022 (= res!2111155 (= (++!12472 (_1!34081 lt!2040512) (_2!34081 lt!2040512)) (list!18169 totalInput!685)))))

(declare-fun e!3091286 () tuple2!61556)

(assert (=> d!1593022 (= lt!2040512 e!3091286)))

(declare-fun c!844350 () Bool)

(assert (=> d!1593022 (= c!844350 ((_ is Nil!56991) (list!18169 totalInput!685)))))

(assert (=> d!1593022 (= (splitAtIndex!150 (list!18169 totalInput!685) testedPSize!70) lt!2040512)))

(declare-fun b!4947560 () Bool)

(declare-fun lt!2040513 () tuple2!61556)

(assert (=> b!4947560 (= lt!2040513 (splitAtIndex!150 (t!367651 (list!18169 totalInput!685)) (- testedPSize!70 1)))))

(assert (=> b!4947560 (= e!3091287 (tuple2!61557 (Cons!56991 (h!63439 (list!18169 totalInput!685)) (_1!34081 lt!2040513)) (_2!34081 lt!2040513)))))

(declare-fun b!4947561 () Bool)

(assert (=> b!4947561 (= e!3091286 e!3091287)))

(declare-fun c!844349 () Bool)

(assert (=> b!4947561 (= c!844349 (<= testedPSize!70 0))))

(declare-fun b!4947562 () Bool)

(declare-fun res!2111156 () Bool)

(assert (=> b!4947562 (=> (not res!2111156) (not e!3091285))))

(declare-fun take!591 (List!57115 Int) List!57115)

(assert (=> b!4947562 (= res!2111156 (= (_1!34081 lt!2040512) (take!591 (list!18169 totalInput!685) testedPSize!70)))))

(declare-fun b!4947563 () Bool)

(assert (=> b!4947563 (= e!3091286 (tuple2!61557 Nil!56991 Nil!56991))))

(assert (= (and d!1593022 c!844350) b!4947563))

(assert (= (and d!1593022 (not c!844350)) b!4947561))

(assert (= (and b!4947561 c!844349) b!4947558))

(assert (= (and b!4947561 (not c!844349)) b!4947560))

(assert (= (and d!1593022 res!2111155) b!4947562))

(assert (= (and b!4947562 res!2111156) b!4947559))

(assert (=> b!4947559 m!5970278))

(declare-fun m!5971108 () Bool)

(assert (=> b!4947559 m!5971108))

(declare-fun m!5971110 () Bool)

(assert (=> d!1593022 m!5971110))

(declare-fun m!5971112 () Bool)

(assert (=> b!4947560 m!5971112))

(assert (=> b!4947562 m!5970278))

(declare-fun m!5971114 () Bool)

(assert (=> b!4947562 m!5971114))

(assert (=> b!4947185 d!1593022))

(assert (=> b!4947185 d!1592788))

(declare-fun e!3091289 () Bool)

(declare-fun b!4947567 () Bool)

(assert (=> b!4947567 (= e!3091289 (>= (size!37819 (tail!9748 lt!2040245)) (size!37819 (tail!9748 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))))))))

(declare-fun d!1593044 () Bool)

(assert (=> d!1593044 e!3091289))

(declare-fun res!2111159 () Bool)

(assert (=> d!1593044 (=> res!2111159 e!3091289)))

(declare-fun lt!2040514 () Bool)

(assert (=> d!1593044 (= res!2111159 (not lt!2040514))))

(declare-fun e!3091290 () Bool)

(assert (=> d!1593044 (= lt!2040514 e!3091290)))

(declare-fun res!2111158 () Bool)

(assert (=> d!1593044 (=> res!2111158 e!3091290)))

(assert (=> d!1593044 (= res!2111158 ((_ is Nil!56991) (tail!9748 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991)))))))

(assert (=> d!1593044 (= (isPrefix!5093 (tail!9748 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))) (tail!9748 lt!2040245)) lt!2040514)))

(declare-fun e!3091288 () Bool)

(declare-fun b!4947566 () Bool)

(assert (=> b!4947566 (= e!3091288 (isPrefix!5093 (tail!9748 (tail!9748 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991)))) (tail!9748 (tail!9748 lt!2040245))))))

(declare-fun b!4947565 () Bool)

(declare-fun res!2111157 () Bool)

(assert (=> b!4947565 (=> (not res!2111157) (not e!3091288))))

(assert (=> b!4947565 (= res!2111157 (= (head!10613 (tail!9748 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991)))) (head!10613 (tail!9748 lt!2040245))))))

(declare-fun b!4947564 () Bool)

(assert (=> b!4947564 (= e!3091290 e!3091288)))

(declare-fun res!2111160 () Bool)

(assert (=> b!4947564 (=> (not res!2111160) (not e!3091288))))

(assert (=> b!4947564 (= res!2111160 (not ((_ is Nil!56991) (tail!9748 lt!2040245))))))

(assert (= (and d!1593044 (not res!2111158)) b!4947564))

(assert (= (and b!4947564 res!2111160) b!4947565))

(assert (= (and b!4947565 res!2111157) b!4947566))

(assert (= (and d!1593044 (not res!2111159)) b!4947567))

(assert (=> b!4947567 m!5970350))

(assert (=> b!4947567 m!5970978))

(assert (=> b!4947567 m!5970682))

(declare-fun m!5971116 () Bool)

(assert (=> b!4947567 m!5971116))

(assert (=> b!4947566 m!5970682))

(declare-fun m!5971118 () Bool)

(assert (=> b!4947566 m!5971118))

(assert (=> b!4947566 m!5970350))

(assert (=> b!4947566 m!5970982))

(assert (=> b!4947566 m!5971118))

(assert (=> b!4947566 m!5970982))

(declare-fun m!5971120 () Bool)

(assert (=> b!4947566 m!5971120))

(assert (=> b!4947565 m!5970682))

(declare-fun m!5971122 () Bool)

(assert (=> b!4947565 m!5971122))

(assert (=> b!4947565 m!5970350))

(assert (=> b!4947565 m!5970980))

(assert (=> b!4947192 d!1593044))

(declare-fun d!1593046 () Bool)

(assert (=> d!1593046 (= (tail!9748 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))) (t!367651 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))))))

(assert (=> b!4947192 d!1593046))

(assert (=> b!4947192 d!1592984))

(declare-fun d!1593048 () Bool)

(declare-fun c!844351 () Bool)

(assert (=> d!1593048 (= c!844351 ((_ is Nil!56991) lt!2040403))))

(declare-fun e!3091291 () (InoxSet C!27224))

(assert (=> d!1593048 (= (content!10151 lt!2040403) e!3091291)))

(declare-fun b!4947568 () Bool)

(assert (=> b!4947568 (= e!3091291 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947569 () Bool)

(assert (=> b!4947569 (= e!3091291 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040403) true) (content!10151 (t!367651 lt!2040403))))))

(assert (= (and d!1593048 c!844351) b!4947568))

(assert (= (and d!1593048 (not c!844351)) b!4947569))

(declare-fun m!5971124 () Bool)

(assert (=> b!4947569 m!5971124))

(declare-fun m!5971126 () Bool)

(assert (=> b!4947569 m!5971126))

(assert (=> d!1592808 d!1593048))

(declare-fun d!1593050 () Bool)

(declare-fun c!844352 () Bool)

(assert (=> d!1593050 (= c!844352 ((_ is Nil!56991) lt!2040240))))

(declare-fun e!3091292 () (InoxSet C!27224))

(assert (=> d!1593050 (= (content!10151 lt!2040240) e!3091292)))

(declare-fun b!4947570 () Bool)

(assert (=> b!4947570 (= e!3091292 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947571 () Bool)

(assert (=> b!4947571 (= e!3091292 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040240) true) (content!10151 (t!367651 lt!2040240))))))

(assert (= (and d!1593050 c!844352) b!4947570))

(assert (= (and d!1593050 (not c!844352)) b!4947571))

(declare-fun m!5971128 () Bool)

(assert (=> b!4947571 m!5971128))

(declare-fun m!5971130 () Bool)

(assert (=> b!4947571 m!5971130))

(assert (=> d!1592808 d!1593050))

(declare-fun d!1593052 () Bool)

(declare-fun c!844353 () Bool)

(assert (=> d!1593052 (= c!844353 ((_ is Nil!56991) lt!2040241))))

(declare-fun e!3091293 () (InoxSet C!27224))

(assert (=> d!1593052 (= (content!10151 lt!2040241) e!3091293)))

(declare-fun b!4947572 () Bool)

(assert (=> b!4947572 (= e!3091293 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947573 () Bool)

(assert (=> b!4947573 (= e!3091293 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040241) true) (content!10151 (t!367651 lt!2040241))))))

(assert (= (and d!1593052 c!844353) b!4947572))

(assert (= (and d!1593052 (not c!844353)) b!4947573))

(declare-fun m!5971132 () Bool)

(assert (=> b!4947573 m!5971132))

(declare-fun m!5971134 () Bool)

(assert (=> b!4947573 m!5971134))

(assert (=> d!1592808 d!1593052))

(declare-fun b!4947586 () Bool)

(declare-fun e!3091298 () Bool)

(declare-fun isEmpty!30664 (Conc!15006) Bool)

(assert (=> b!4947586 (= e!3091298 (not (isEmpty!30664 (right!41905 (c!844163 totalInput!685)))))))

(declare-fun b!4947587 () Bool)

(declare-fun res!2111175 () Bool)

(assert (=> b!4947587 (=> (not res!2111175) (not e!3091298))))

(assert (=> b!4947587 (= res!2111175 (isBalanced!4156 (left!41575 (c!844163 totalInput!685))))))

(declare-fun b!4947588 () Bool)

(declare-fun res!2111176 () Bool)

(assert (=> b!4947588 (=> (not res!2111176) (not e!3091298))))

(assert (=> b!4947588 (= res!2111176 (not (isEmpty!30664 (left!41575 (c!844163 totalInput!685)))))))

(declare-fun b!4947589 () Bool)

(declare-fun e!3091299 () Bool)

(assert (=> b!4947589 (= e!3091299 e!3091298)))

(declare-fun res!2111173 () Bool)

(assert (=> b!4947589 (=> (not res!2111173) (not e!3091298))))

(declare-fun height!2004 (Conc!15006) Int)

(assert (=> b!4947589 (= res!2111173 (<= (- 1) (- (height!2004 (left!41575 (c!844163 totalInput!685))) (height!2004 (right!41905 (c!844163 totalInput!685))))))))

(declare-fun b!4947590 () Bool)

(declare-fun res!2111178 () Bool)

(assert (=> b!4947590 (=> (not res!2111178) (not e!3091298))))

(assert (=> b!4947590 (= res!2111178 (isBalanced!4156 (right!41905 (c!844163 totalInput!685))))))

(declare-fun b!4947591 () Bool)

(declare-fun res!2111174 () Bool)

(assert (=> b!4947591 (=> (not res!2111174) (not e!3091298))))

(assert (=> b!4947591 (= res!2111174 (<= (- (height!2004 (left!41575 (c!844163 totalInput!685))) (height!2004 (right!41905 (c!844163 totalInput!685)))) 1))))

(declare-fun d!1593054 () Bool)

(declare-fun res!2111177 () Bool)

(assert (=> d!1593054 (=> res!2111177 e!3091299)))

(assert (=> d!1593054 (= res!2111177 (not ((_ is Node!15006) (c!844163 totalInput!685))))))

(assert (=> d!1593054 (= (isBalanced!4156 (c!844163 totalInput!685)) e!3091299)))

(assert (= (and d!1593054 (not res!2111177)) b!4947589))

(assert (= (and b!4947589 res!2111173) b!4947591))

(assert (= (and b!4947591 res!2111174) b!4947587))

(assert (= (and b!4947587 res!2111175) b!4947590))

(assert (= (and b!4947590 res!2111178) b!4947588))

(assert (= (and b!4947588 res!2111176) b!4947586))

(declare-fun m!5971136 () Bool)

(assert (=> b!4947591 m!5971136))

(declare-fun m!5971138 () Bool)

(assert (=> b!4947591 m!5971138))

(declare-fun m!5971140 () Bool)

(assert (=> b!4947586 m!5971140))

(assert (=> b!4947589 m!5971136))

(assert (=> b!4947589 m!5971138))

(declare-fun m!5971142 () Bool)

(assert (=> b!4947590 m!5971142))

(declare-fun m!5971144 () Bool)

(assert (=> b!4947587 m!5971144))

(declare-fun m!5971146 () Bool)

(assert (=> b!4947588 m!5971146))

(assert (=> d!1592792 d!1593054))

(declare-fun bs!1181845 () Bool)

(declare-fun d!1593056 () Bool)

(assert (= bs!1181845 (and d!1593056 d!1592702)))

(declare-fun lambda!246735 () Int)

(assert (=> bs!1181845 (not (= lambda!246735 lambda!246712))))

(declare-fun bs!1181846 () Bool)

(assert (= bs!1181846 (and d!1593056 d!1592818)))

(assert (=> bs!1181846 (not (= lambda!246735 lambda!246720))))

(declare-fun bs!1181847 () Bool)

(assert (= bs!1181847 (and d!1593056 b!4947139)))

(assert (=> bs!1181847 (not (= lambda!246735 lambda!246714))))

(declare-fun bs!1181848 () Bool)

(assert (= bs!1181848 (and d!1593056 b!4947138)))

(assert (=> bs!1181848 (not (= lambda!246735 lambda!246713))))

(declare-fun bs!1181849 () Bool)

(assert (= bs!1181849 (and d!1593056 d!1593000)))

(assert (=> bs!1181849 (= lambda!246735 lambda!246732)))

(assert (=> d!1593056 true))

(assert (=> d!1593056 (< (dynLambda!23037 order!26005 lambda!246712) (dynLambda!23037 order!26005 lambda!246735))))

(assert (=> d!1593056 (exists!1337 lt!2040376 lambda!246735)))

(declare-fun lt!2040517 () Unit!147794)

(declare-fun choose!36510 (List!57118 Int) Unit!147794)

(assert (=> d!1593056 (= lt!2040517 (choose!36510 lt!2040376 lambda!246712))))

(assert (=> d!1593056 (not (forall!13270 lt!2040376 lambda!246712))))

(assert (=> d!1593056 (= (lemmaNotForallThenExists!238 lt!2040376 lambda!246712) lt!2040517)))

(declare-fun bs!1181850 () Bool)

(assert (= bs!1181850 d!1593056))

(declare-fun m!5971148 () Bool)

(assert (=> bs!1181850 m!5971148))

(declare-fun m!5971150 () Bool)

(assert (=> bs!1181850 m!5971150))

(declare-fun m!5971152 () Bool)

(assert (=> bs!1181850 m!5971152))

(assert (=> b!4947138 d!1593056))

(declare-fun d!1593058 () Bool)

(declare-fun lt!2040518 () Int)

(assert (=> d!1593058 (>= lt!2040518 0)))

(declare-fun e!3091302 () Int)

(assert (=> d!1593058 (= lt!2040518 e!3091302)))

(declare-fun c!844354 () Bool)

(assert (=> d!1593058 (= c!844354 ((_ is Nil!56991) (t!367651 testedP!110)))))

(assert (=> d!1593058 (= (size!37819 (t!367651 testedP!110)) lt!2040518)))

(declare-fun b!4947592 () Bool)

(assert (=> b!4947592 (= e!3091302 0)))

(declare-fun b!4947593 () Bool)

(assert (=> b!4947593 (= e!3091302 (+ 1 (size!37819 (t!367651 (t!367651 testedP!110)))))))

(assert (= (and d!1593058 c!844354) b!4947592))

(assert (= (and d!1593058 (not c!844354)) b!4947593))

(declare-fun m!5971154 () Bool)

(assert (=> b!4947593 m!5971154))

(assert (=> b!4947175 d!1593058))

(declare-fun lt!2040519 () List!57115)

(declare-fun b!4947597 () Bool)

(declare-fun e!3091303 () Bool)

(assert (=> b!4947597 (= e!3091303 (or (not (= (Cons!56991 lt!2040235 Nil!56991) Nil!56991)) (= lt!2040519 (t!367651 testedP!110))))))

(declare-fun b!4947594 () Bool)

(declare-fun e!3091304 () List!57115)

(assert (=> b!4947594 (= e!3091304 (Cons!56991 lt!2040235 Nil!56991))))

(declare-fun b!4947595 () Bool)

(assert (=> b!4947595 (= e!3091304 (Cons!56991 (h!63439 (t!367651 testedP!110)) (++!12472 (t!367651 (t!367651 testedP!110)) (Cons!56991 lt!2040235 Nil!56991))))))

(declare-fun d!1593060 () Bool)

(assert (=> d!1593060 e!3091303))

(declare-fun res!2111179 () Bool)

(assert (=> d!1593060 (=> (not res!2111179) (not e!3091303))))

(assert (=> d!1593060 (= res!2111179 (= (content!10151 lt!2040519) ((_ map or) (content!10151 (t!367651 testedP!110)) (content!10151 (Cons!56991 lt!2040235 Nil!56991)))))))

(assert (=> d!1593060 (= lt!2040519 e!3091304)))

(declare-fun c!844355 () Bool)

(assert (=> d!1593060 (= c!844355 ((_ is Nil!56991) (t!367651 testedP!110)))))

(assert (=> d!1593060 (= (++!12472 (t!367651 testedP!110) (Cons!56991 lt!2040235 Nil!56991)) lt!2040519)))

(declare-fun b!4947596 () Bool)

(declare-fun res!2111180 () Bool)

(assert (=> b!4947596 (=> (not res!2111180) (not e!3091303))))

(assert (=> b!4947596 (= res!2111180 (= (size!37819 lt!2040519) (+ (size!37819 (t!367651 testedP!110)) (size!37819 (Cons!56991 lt!2040235 Nil!56991)))))))

(assert (= (and d!1593060 c!844355) b!4947594))

(assert (= (and d!1593060 (not c!844355)) b!4947595))

(assert (= (and d!1593060 res!2111179) b!4947596))

(assert (= (and b!4947596 res!2111180) b!4947597))

(declare-fun m!5971156 () Bool)

(assert (=> b!4947595 m!5971156))

(declare-fun m!5971158 () Bool)

(assert (=> d!1593060 m!5971158))

(assert (=> d!1593060 m!5970908))

(assert (=> d!1593060 m!5970692))

(declare-fun m!5971160 () Bool)

(assert (=> b!4947596 m!5971160))

(assert (=> b!4947596 m!5970620))

(assert (=> b!4947596 m!5970696))

(assert (=> b!4947195 d!1593060))

(declare-fun b!4947601 () Bool)

(declare-fun e!3091306 () Bool)

(assert (=> b!4947601 (= e!3091306 (>= (size!37819 (tail!9748 lt!2040245)) (size!37819 (tail!9748 testedP!110))))))

(declare-fun d!1593062 () Bool)

(assert (=> d!1593062 e!3091306))

(declare-fun res!2111183 () Bool)

(assert (=> d!1593062 (=> res!2111183 e!3091306)))

(declare-fun lt!2040520 () Bool)

(assert (=> d!1593062 (= res!2111183 (not lt!2040520))))

(declare-fun e!3091307 () Bool)

(assert (=> d!1593062 (= lt!2040520 e!3091307)))

(declare-fun res!2111182 () Bool)

(assert (=> d!1593062 (=> res!2111182 e!3091307)))

(assert (=> d!1593062 (= res!2111182 ((_ is Nil!56991) (tail!9748 testedP!110)))))

(assert (=> d!1593062 (= (isPrefix!5093 (tail!9748 testedP!110) (tail!9748 lt!2040245)) lt!2040520)))

(declare-fun b!4947600 () Bool)

(declare-fun e!3091305 () Bool)

(assert (=> b!4947600 (= e!3091305 (isPrefix!5093 (tail!9748 (tail!9748 testedP!110)) (tail!9748 (tail!9748 lt!2040245))))))

(declare-fun b!4947599 () Bool)

(declare-fun res!2111181 () Bool)

(assert (=> b!4947599 (=> (not res!2111181) (not e!3091305))))

(assert (=> b!4947599 (= res!2111181 (= (head!10613 (tail!9748 testedP!110)) (head!10613 (tail!9748 lt!2040245))))))

(declare-fun b!4947598 () Bool)

(assert (=> b!4947598 (= e!3091307 e!3091305)))

(declare-fun res!2111184 () Bool)

(assert (=> b!4947598 (=> (not res!2111184) (not e!3091305))))

(assert (=> b!4947598 (= res!2111184 (not ((_ is Nil!56991) (tail!9748 lt!2040245))))))

(assert (= (and d!1593062 (not res!2111182)) b!4947598))

(assert (= (and b!4947598 res!2111184) b!4947599))

(assert (= (and b!4947599 res!2111181) b!4947600))

(assert (= (and d!1593062 (not res!2111183)) b!4947601))

(assert (=> b!4947601 m!5970350))

(assert (=> b!4947601 m!5970978))

(assert (=> b!4947601 m!5970596))

(declare-fun m!5971162 () Bool)

(assert (=> b!4947601 m!5971162))

(assert (=> b!4947600 m!5970596))

(declare-fun m!5971164 () Bool)

(assert (=> b!4947600 m!5971164))

(assert (=> b!4947600 m!5970350))

(assert (=> b!4947600 m!5970982))

(assert (=> b!4947600 m!5971164))

(assert (=> b!4947600 m!5970982))

(declare-fun m!5971166 () Bool)

(assert (=> b!4947600 m!5971166))

(assert (=> b!4947599 m!5970596))

(declare-fun m!5971168 () Bool)

(assert (=> b!4947599 m!5971168))

(assert (=> b!4947599 m!5970350))

(assert (=> b!4947599 m!5970980))

(assert (=> b!4947166 d!1593062))

(declare-fun d!1593064 () Bool)

(assert (=> d!1593064 (= (tail!9748 testedP!110) (t!367651 testedP!110))))

(assert (=> b!4947166 d!1593064))

(assert (=> b!4947166 d!1592984))

(declare-fun bs!1181851 () Bool)

(declare-fun d!1593066 () Bool)

(assert (= bs!1181851 (and d!1593066 d!1592800)))

(declare-fun lambda!246736 () Int)

(assert (=> bs!1181851 (= lambda!246736 lambda!246717)))

(assert (=> d!1593066 (= (inv!74250 setElem!28082) (forall!13268 (exprs!3629 setElem!28082) lambda!246736))))

(declare-fun bs!1181852 () Bool)

(assert (= bs!1181852 d!1593066))

(declare-fun m!5971170 () Bool)

(assert (=> bs!1181852 m!5971170))

(assert (=> setNonEmpty!28082 d!1593066))

(declare-fun d!1593068 () Bool)

(declare-fun lt!2040521 () Int)

(assert (=> d!1593068 (>= lt!2040521 0)))

(declare-fun e!3091308 () Int)

(assert (=> d!1593068 (= lt!2040521 e!3091308)))

(declare-fun c!844356 () Bool)

(assert (=> d!1593068 (= c!844356 ((_ is Nil!56991) lt!2040237))))

(assert (=> d!1593068 (= (size!37819 lt!2040237) lt!2040521)))

(declare-fun b!4947602 () Bool)

(assert (=> b!4947602 (= e!3091308 0)))

(declare-fun b!4947603 () Bool)

(assert (=> b!4947603 (= e!3091308 (+ 1 (size!37819 (t!367651 lt!2040237))))))

(assert (= (and d!1593068 c!844356) b!4947602))

(assert (= (and d!1593068 (not c!844356)) b!4947603))

(declare-fun m!5971172 () Bool)

(assert (=> b!4947603 m!5971172))

(assert (=> b!4947171 d!1593068))

(assert (=> b!4947171 d!1592806))

(declare-fun d!1593070 () Bool)

(assert (=> d!1593070 (= (inv!74258 (xs!18332 (c!844163 totalInput!685))) (<= (size!37819 (innerList!15094 (xs!18332 (c!844163 totalInput!685)))) 2147483647))))

(declare-fun bs!1181853 () Bool)

(assert (= bs!1181853 d!1593070))

(declare-fun m!5971174 () Bool)

(assert (=> bs!1181853 m!5971174))

(assert (=> b!4947273 d!1593070))

(declare-fun b!4947607 () Bool)

(declare-fun lt!2040522 () List!57115)

(declare-fun e!3091309 () Bool)

(assert (=> b!4947607 (= e!3091309 (or (not (= lt!2040243 Nil!56991)) (= lt!2040522 (t!367651 lt!2040242))))))

(declare-fun b!4947604 () Bool)

(declare-fun e!3091310 () List!57115)

(assert (=> b!4947604 (= e!3091310 lt!2040243)))

(declare-fun b!4947605 () Bool)

(assert (=> b!4947605 (= e!3091310 (Cons!56991 (h!63439 (t!367651 lt!2040242)) (++!12472 (t!367651 (t!367651 lt!2040242)) lt!2040243)))))

(declare-fun d!1593072 () Bool)

(assert (=> d!1593072 e!3091309))

(declare-fun res!2111185 () Bool)

(assert (=> d!1593072 (=> (not res!2111185) (not e!3091309))))

(assert (=> d!1593072 (= res!2111185 (= (content!10151 lt!2040522) ((_ map or) (content!10151 (t!367651 lt!2040242)) (content!10151 lt!2040243))))))

(assert (=> d!1593072 (= lt!2040522 e!3091310)))

(declare-fun c!844357 () Bool)

(assert (=> d!1593072 (= c!844357 ((_ is Nil!56991) (t!367651 lt!2040242)))))

(assert (=> d!1593072 (= (++!12472 (t!367651 lt!2040242) lt!2040243) lt!2040522)))

(declare-fun b!4947606 () Bool)

(declare-fun res!2111186 () Bool)

(assert (=> b!4947606 (=> (not res!2111186) (not e!3091309))))

(assert (=> b!4947606 (= res!2111186 (= (size!37819 lt!2040522) (+ (size!37819 (t!367651 lt!2040242)) (size!37819 lt!2040243))))))

(assert (= (and d!1593072 c!844357) b!4947604))

(assert (= (and d!1593072 (not c!844357)) b!4947605))

(assert (= (and d!1593072 res!2111185) b!4947606))

(assert (= (and b!4947606 res!2111186) b!4947607))

(declare-fun m!5971176 () Bool)

(assert (=> b!4947605 m!5971176))

(declare-fun m!5971178 () Bool)

(assert (=> d!1593072 m!5971178))

(assert (=> d!1593072 m!5970956))

(assert (=> d!1593072 m!5970674))

(declare-fun m!5971180 () Bool)

(assert (=> b!4947606 m!5971180))

(assert (=> b!4947606 m!5970578))

(assert (=> b!4947606 m!5970678))

(assert (=> b!4947187 d!1593072))

(declare-fun d!1593074 () Bool)

(assert (=> d!1593074 (= (head!10613 testedP!110) (h!63439 testedP!110))))

(assert (=> b!4947169 d!1593074))

(declare-fun d!1593076 () Bool)

(assert (=> d!1593076 (= (head!10613 lt!2040237) (h!63439 lt!2040237))))

(assert (=> b!4947169 d!1593076))

(declare-fun d!1593078 () Bool)

(declare-fun res!2111193 () Bool)

(declare-fun e!3091313 () Bool)

(assert (=> d!1593078 (=> (not res!2111193) (not e!3091313))))

(assert (=> d!1593078 (= res!2111193 (= (csize!30242 (c!844163 totalInput!685)) (+ (size!37822 (left!41575 (c!844163 totalInput!685))) (size!37822 (right!41905 (c!844163 totalInput!685))))))))

(assert (=> d!1593078 (= (inv!74256 (c!844163 totalInput!685)) e!3091313)))

(declare-fun b!4947614 () Bool)

(declare-fun res!2111194 () Bool)

(assert (=> b!4947614 (=> (not res!2111194) (not e!3091313))))

(assert (=> b!4947614 (= res!2111194 (and (not (= (left!41575 (c!844163 totalInput!685)) Empty!15006)) (not (= (right!41905 (c!844163 totalInput!685)) Empty!15006))))))

(declare-fun b!4947615 () Bool)

(declare-fun res!2111195 () Bool)

(assert (=> b!4947615 (=> (not res!2111195) (not e!3091313))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4947615 (= res!2111195 (= (cheight!15217 (c!844163 totalInput!685)) (+ (max!0 (height!2004 (left!41575 (c!844163 totalInput!685))) (height!2004 (right!41905 (c!844163 totalInput!685)))) 1)))))

(declare-fun b!4947616 () Bool)

(assert (=> b!4947616 (= e!3091313 (<= 0 (cheight!15217 (c!844163 totalInput!685))))))

(assert (= (and d!1593078 res!2111193) b!4947614))

(assert (= (and b!4947614 res!2111194) b!4947615))

(assert (= (and b!4947615 res!2111195) b!4947616))

(declare-fun m!5971182 () Bool)

(assert (=> d!1593078 m!5971182))

(declare-fun m!5971184 () Bool)

(assert (=> d!1593078 m!5971184))

(assert (=> b!4947615 m!5971136))

(assert (=> b!4947615 m!5971138))

(assert (=> b!4947615 m!5971136))

(assert (=> b!4947615 m!5971138))

(declare-fun m!5971186 () Bool)

(assert (=> b!4947615 m!5971186))

(assert (=> b!4947250 d!1593078))

(declare-fun b!4947620 () Bool)

(declare-fun e!3091315 () Bool)

(assert (=> b!4947620 (= e!3091315 (>= (size!37819 (tail!9748 lt!2040245)) (size!37819 (tail!9748 lt!2040245))))))

(declare-fun d!1593080 () Bool)

(assert (=> d!1593080 e!3091315))

(declare-fun res!2111198 () Bool)

(assert (=> d!1593080 (=> res!2111198 e!3091315)))

(declare-fun lt!2040523 () Bool)

(assert (=> d!1593080 (= res!2111198 (not lt!2040523))))

(declare-fun e!3091316 () Bool)

(assert (=> d!1593080 (= lt!2040523 e!3091316)))

(declare-fun res!2111197 () Bool)

(assert (=> d!1593080 (=> res!2111197 e!3091316)))

(assert (=> d!1593080 (= res!2111197 ((_ is Nil!56991) (tail!9748 lt!2040245)))))

(assert (=> d!1593080 (= (isPrefix!5093 (tail!9748 lt!2040245) (tail!9748 lt!2040245)) lt!2040523)))

(declare-fun b!4947619 () Bool)

(declare-fun e!3091314 () Bool)

(assert (=> b!4947619 (= e!3091314 (isPrefix!5093 (tail!9748 (tail!9748 lt!2040245)) (tail!9748 (tail!9748 lt!2040245))))))

(declare-fun b!4947618 () Bool)

(declare-fun res!2111196 () Bool)

(assert (=> b!4947618 (=> (not res!2111196) (not e!3091314))))

(assert (=> b!4947618 (= res!2111196 (= (head!10613 (tail!9748 lt!2040245)) (head!10613 (tail!9748 lt!2040245))))))

(declare-fun b!4947617 () Bool)

(assert (=> b!4947617 (= e!3091316 e!3091314)))

(declare-fun res!2111199 () Bool)

(assert (=> b!4947617 (=> (not res!2111199) (not e!3091314))))

(assert (=> b!4947617 (= res!2111199 (not ((_ is Nil!56991) (tail!9748 lt!2040245))))))

(assert (= (and d!1593080 (not res!2111197)) b!4947617))

(assert (= (and b!4947617 res!2111199) b!4947618))

(assert (= (and b!4947618 res!2111196) b!4947619))

(assert (= (and d!1593080 (not res!2111198)) b!4947620))

(assert (=> b!4947620 m!5970350))

(assert (=> b!4947620 m!5970978))

(assert (=> b!4947620 m!5970350))

(assert (=> b!4947620 m!5970978))

(assert (=> b!4947619 m!5970350))

(assert (=> b!4947619 m!5970982))

(assert (=> b!4947619 m!5970350))

(assert (=> b!4947619 m!5970982))

(assert (=> b!4947619 m!5970982))

(assert (=> b!4947619 m!5970982))

(declare-fun m!5971188 () Bool)

(assert (=> b!4947619 m!5971188))

(assert (=> b!4947618 m!5970350))

(assert (=> b!4947618 m!5970980))

(assert (=> b!4947618 m!5970350))

(assert (=> b!4947618 m!5970980))

(assert (=> b!4946983 d!1593080))

(assert (=> b!4946983 d!1592984))

(assert (=> b!4946957 d!1592850))

(assert (=> d!1592804 d!1592806))

(assert (=> d!1592804 d!1592802))

(declare-fun d!1593082 () Bool)

(assert (=> d!1593082 (<= (size!37819 testedP!110) (size!37819 lt!2040245))))

(assert (=> d!1593082 true))

(declare-fun _$64!637 () Unit!147794)

(assert (=> d!1593082 (= (choose!36499 testedP!110 lt!2040245) _$64!637)))

(declare-fun bs!1181854 () Bool)

(assert (= bs!1181854 d!1593082))

(assert (=> bs!1181854 m!5970330))

(assert (=> bs!1181854 m!5970308))

(assert (=> d!1592804 d!1593082))

(assert (=> d!1592804 d!1592794))

(declare-fun d!1593084 () Bool)

(declare-fun res!2111204 () Bool)

(declare-fun e!3091319 () Bool)

(assert (=> d!1593084 (=> (not res!2111204) (not e!3091319))))

(assert (=> d!1593084 (= res!2111204 (<= (size!37819 (list!18172 (xs!18332 (c!844163 totalInput!685)))) 512))))

(assert (=> d!1593084 (= (inv!74257 (c!844163 totalInput!685)) e!3091319)))

(declare-fun b!4947625 () Bool)

(declare-fun res!2111205 () Bool)

(assert (=> b!4947625 (=> (not res!2111205) (not e!3091319))))

(assert (=> b!4947625 (= res!2111205 (= (csize!30243 (c!844163 totalInput!685)) (size!37819 (list!18172 (xs!18332 (c!844163 totalInput!685))))))))

(declare-fun b!4947626 () Bool)

(assert (=> b!4947626 (= e!3091319 (and (> (csize!30243 (c!844163 totalInput!685)) 0) (<= (csize!30243 (c!844163 totalInput!685)) 512)))))

(assert (= (and d!1593084 res!2111204) b!4947625))

(assert (= (and b!4947625 res!2111205) b!4947626))

(declare-fun m!5971190 () Bool)

(assert (=> d!1593084 m!5971190))

(assert (=> d!1593084 m!5971190))

(declare-fun m!5971192 () Bool)

(assert (=> d!1593084 m!5971192))

(assert (=> b!4947625 m!5971190))

(assert (=> b!4947625 m!5971190))

(assert (=> b!4947625 m!5971192))

(assert (=> b!4947252 d!1593084))

(declare-fun d!1593086 () Bool)

(declare-fun lt!2040524 () C!27224)

(assert (=> d!1593086 (contains!19494 (list!18169 totalInput!685) lt!2040524)))

(declare-fun e!3091321 () C!27224)

(assert (=> d!1593086 (= lt!2040524 e!3091321)))

(declare-fun c!844358 () Bool)

(assert (=> d!1593086 (= c!844358 (= testedPSize!70 0))))

(declare-fun e!3091320 () Bool)

(assert (=> d!1593086 e!3091320))

(declare-fun res!2111206 () Bool)

(assert (=> d!1593086 (=> (not res!2111206) (not e!3091320))))

(assert (=> d!1593086 (= res!2111206 (<= 0 testedPSize!70))))

(assert (=> d!1593086 (= (apply!13828 (list!18169 totalInput!685) testedPSize!70) lt!2040524)))

(declare-fun b!4947627 () Bool)

(assert (=> b!4947627 (= e!3091320 (< testedPSize!70 (size!37819 (list!18169 totalInput!685))))))

(declare-fun b!4947628 () Bool)

(assert (=> b!4947628 (= e!3091321 (head!10613 (list!18169 totalInput!685)))))

(declare-fun b!4947629 () Bool)

(assert (=> b!4947629 (= e!3091321 (apply!13828 (tail!9748 (list!18169 totalInput!685)) (- testedPSize!70 1)))))

(assert (= (and d!1593086 res!2111206) b!4947627))

(assert (= (and d!1593086 c!844358) b!4947628))

(assert (= (and d!1593086 (not c!844358)) b!4947629))

(assert (=> d!1593086 m!5970278))

(declare-fun m!5971194 () Bool)

(assert (=> d!1593086 m!5971194))

(assert (=> b!4947627 m!5970278))

(assert (=> b!4947627 m!5970708))

(assert (=> b!4947628 m!5970278))

(declare-fun m!5971196 () Bool)

(assert (=> b!4947628 m!5971196))

(assert (=> b!4947629 m!5970278))

(declare-fun m!5971198 () Bool)

(assert (=> b!4947629 m!5971198))

(assert (=> b!4947629 m!5971198))

(declare-fun m!5971200 () Bool)

(assert (=> b!4947629 m!5971200))

(assert (=> d!1592848 d!1593086))

(assert (=> d!1592848 d!1592788))

(declare-fun b!4947644 () Bool)

(declare-fun e!3091331 () Int)

(assert (=> b!4947644 (= e!3091331 testedPSize!70)))

(declare-fun b!4947646 () Bool)

(declare-fun e!3091332 () C!27224)

(declare-fun call!345250 () C!27224)

(assert (=> b!4947646 (= e!3091332 call!345250)))

(declare-fun b!4947647 () Bool)

(declare-fun e!3091333 () C!27224)

(assert (=> b!4947647 (= e!3091333 e!3091332)))

(declare-fun lt!2040530 () Bool)

(declare-fun appendIndex!387 (List!57115 List!57115 Int) Bool)

(assert (=> b!4947647 (= lt!2040530 (appendIndex!387 (list!18171 (left!41575 (c!844163 totalInput!685))) (list!18171 (right!41905 (c!844163 totalInput!685))) testedPSize!70))))

(declare-fun c!844366 () Bool)

(assert (=> b!4947647 (= c!844366 (< testedPSize!70 (size!37822 (left!41575 (c!844163 totalInput!685)))))))

(declare-fun bm!345245 () Bool)

(declare-fun c!844365 () Bool)

(assert (=> bm!345245 (= c!844365 c!844366)))

(assert (=> bm!345245 (= call!345250 (apply!13830 (ite c!844366 (left!41575 (c!844163 totalInput!685)) (right!41905 (c!844163 totalInput!685))) e!3091331))))

(declare-fun b!4947648 () Bool)

(declare-fun e!3091330 () Bool)

(assert (=> b!4947648 (= e!3091330 (< testedPSize!70 (size!37822 (c!844163 totalInput!685))))))

(declare-fun b!4947649 () Bool)

(declare-fun apply!13832 (IArray!30073 Int) C!27224)

(assert (=> b!4947649 (= e!3091333 (apply!13832 (xs!18332 (c!844163 totalInput!685)) testedPSize!70))))

(declare-fun b!4947650 () Bool)

(assert (=> b!4947650 (= e!3091331 (- testedPSize!70 (size!37822 (left!41575 (c!844163 totalInput!685)))))))

(declare-fun d!1593088 () Bool)

(declare-fun lt!2040529 () C!27224)

(assert (=> d!1593088 (= lt!2040529 (apply!13828 (list!18171 (c!844163 totalInput!685)) testedPSize!70))))

(assert (=> d!1593088 (= lt!2040529 e!3091333)))

(declare-fun c!844367 () Bool)

(assert (=> d!1593088 (= c!844367 ((_ is Leaf!24942) (c!844163 totalInput!685)))))

(assert (=> d!1593088 e!3091330))

(declare-fun res!2111209 () Bool)

(assert (=> d!1593088 (=> (not res!2111209) (not e!3091330))))

(assert (=> d!1593088 (= res!2111209 (<= 0 testedPSize!70))))

(assert (=> d!1593088 (= (apply!13830 (c!844163 totalInput!685) testedPSize!70) lt!2040529)))

(declare-fun b!4947645 () Bool)

(assert (=> b!4947645 (= e!3091332 call!345250)))

(assert (= (and d!1593088 res!2111209) b!4947648))

(assert (= (and d!1593088 c!844367) b!4947649))

(assert (= (and d!1593088 (not c!844367)) b!4947647))

(assert (= (and b!4947647 c!844366) b!4947645))

(assert (= (and b!4947647 (not c!844366)) b!4947646))

(assert (= (or b!4947645 b!4947646) bm!345245))

(assert (= (and bm!345245 c!844365) b!4947644))

(assert (= (and bm!345245 (not c!844365)) b!4947650))

(assert (=> b!4947648 m!5970710))

(assert (=> d!1593088 m!5970580))

(assert (=> d!1593088 m!5970580))

(declare-fun m!5971202 () Bool)

(assert (=> d!1593088 m!5971202))

(assert (=> b!4947650 m!5971182))

(declare-fun m!5971204 () Bool)

(assert (=> bm!345245 m!5971204))

(declare-fun m!5971206 () Bool)

(assert (=> b!4947647 m!5971206))

(declare-fun m!5971208 () Bool)

(assert (=> b!4947647 m!5971208))

(assert (=> b!4947647 m!5971206))

(assert (=> b!4947647 m!5971208))

(declare-fun m!5971210 () Bool)

(assert (=> b!4947647 m!5971210))

(assert (=> b!4947647 m!5971182))

(declare-fun m!5971212 () Bool)

(assert (=> b!4947649 m!5971212))

(assert (=> d!1592848 d!1593088))

(declare-fun d!1593090 () Bool)

(declare-fun c!844368 () Bool)

(assert (=> d!1593090 (= c!844368 ((_ is Nil!56991) lt!2040419))))

(declare-fun e!3091334 () (InoxSet C!27224))

(assert (=> d!1593090 (= (content!10151 lt!2040419) e!3091334)))

(declare-fun b!4947651 () Bool)

(assert (=> b!4947651 (= e!3091334 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947652 () Bool)

(assert (=> b!4947652 (= e!3091334 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040419) true) (content!10151 (t!367651 lt!2040419))))))

(assert (= (and d!1593090 c!844368) b!4947651))

(assert (= (and d!1593090 (not c!844368)) b!4947652))

(declare-fun m!5971214 () Bool)

(assert (=> b!4947652 m!5971214))

(declare-fun m!5971216 () Bool)

(assert (=> b!4947652 m!5971216))

(assert (=> d!1592830 d!1593090))

(assert (=> d!1592830 d!1592944))

(declare-fun d!1593092 () Bool)

(declare-fun c!844369 () Bool)

(assert (=> d!1593092 (= c!844369 ((_ is Nil!56991) (Cons!56991 (head!10613 lt!2040244) Nil!56991)))))

(declare-fun e!3091335 () (InoxSet C!27224))

(assert (=> d!1593092 (= (content!10151 (Cons!56991 (head!10613 lt!2040244) Nil!56991)) e!3091335)))

(declare-fun b!4947653 () Bool)

(assert (=> b!4947653 (= e!3091335 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947654 () Bool)

(assert (=> b!4947654 (= e!3091335 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 (Cons!56991 (head!10613 lt!2040244) Nil!56991)) true) (content!10151 (t!367651 (Cons!56991 (head!10613 lt!2040244) Nil!56991)))))))

(assert (= (and d!1593092 c!844369) b!4947653))

(assert (= (and d!1593092 (not c!844369)) b!4947654))

(declare-fun m!5971218 () Bool)

(assert (=> b!4947654 m!5971218))

(declare-fun m!5971220 () Bool)

(assert (=> b!4947654 m!5971220))

(assert (=> d!1592830 d!1593092))

(declare-fun b!4947658 () Bool)

(declare-fun e!3091337 () List!57115)

(assert (=> b!4947658 (= e!3091337 (++!12472 (list!18171 (left!41575 (c!844163 totalInput!685))) (list!18171 (right!41905 (c!844163 totalInput!685)))))))

(declare-fun d!1593094 () Bool)

(declare-fun c!844370 () Bool)

(assert (=> d!1593094 (= c!844370 ((_ is Empty!15006) (c!844163 totalInput!685)))))

(declare-fun e!3091336 () List!57115)

(assert (=> d!1593094 (= (list!18171 (c!844163 totalInput!685)) e!3091336)))

(declare-fun b!4947656 () Bool)

(assert (=> b!4947656 (= e!3091336 e!3091337)))

(declare-fun c!844371 () Bool)

(assert (=> b!4947656 (= c!844371 ((_ is Leaf!24942) (c!844163 totalInput!685)))))

(declare-fun b!4947657 () Bool)

(assert (=> b!4947657 (= e!3091337 (list!18172 (xs!18332 (c!844163 totalInput!685))))))

(declare-fun b!4947655 () Bool)

(assert (=> b!4947655 (= e!3091336 Nil!56991)))

(assert (= (and d!1593094 c!844370) b!4947655))

(assert (= (and d!1593094 (not c!844370)) b!4947656))

(assert (= (and b!4947656 c!844371) b!4947657))

(assert (= (and b!4947656 (not c!844371)) b!4947658))

(assert (=> b!4947658 m!5971206))

(assert (=> b!4947658 m!5971208))

(assert (=> b!4947658 m!5971206))

(assert (=> b!4947658 m!5971208))

(declare-fun m!5971222 () Bool)

(assert (=> b!4947658 m!5971222))

(assert (=> b!4947657 m!5971190))

(assert (=> d!1592788 d!1593094))

(declare-fun d!1593096 () Bool)

(declare-fun lt!2040531 () Int)

(assert (=> d!1593096 (>= lt!2040531 0)))

(declare-fun e!3091338 () Int)

(assert (=> d!1593096 (= lt!2040531 e!3091338)))

(declare-fun c!844372 () Bool)

(assert (=> d!1593096 (= c!844372 ((_ is Nil!56991) lt!2040423))))

(assert (=> d!1593096 (= (size!37819 lt!2040423) lt!2040531)))

(declare-fun b!4947659 () Bool)

(assert (=> b!4947659 (= e!3091338 0)))

(declare-fun b!4947660 () Bool)

(assert (=> b!4947660 (= e!3091338 (+ 1 (size!37819 (t!367651 lt!2040423))))))

(assert (= (and d!1593096 c!844372) b!4947659))

(assert (= (and d!1593096 (not c!844372)) b!4947660))

(declare-fun m!5971224 () Bool)

(assert (=> b!4947660 m!5971224))

(assert (=> b!4947223 d!1593096))

(declare-fun b!4947664 () Bool)

(declare-fun e!3091340 () Bool)

(assert (=> b!4947664 (= e!3091340 (>= (size!37819 (++!12472 testedP!110 testedSuffix!70)) (size!37819 testedP!110)))))

(declare-fun d!1593098 () Bool)

(assert (=> d!1593098 e!3091340))

(declare-fun res!2111212 () Bool)

(assert (=> d!1593098 (=> res!2111212 e!3091340)))

(declare-fun lt!2040532 () Bool)

(assert (=> d!1593098 (= res!2111212 (not lt!2040532))))

(declare-fun e!3091341 () Bool)

(assert (=> d!1593098 (= lt!2040532 e!3091341)))

(declare-fun res!2111211 () Bool)

(assert (=> d!1593098 (=> res!2111211 e!3091341)))

(assert (=> d!1593098 (= res!2111211 ((_ is Nil!56991) testedP!110))))

(assert (=> d!1593098 (= (isPrefix!5093 testedP!110 (++!12472 testedP!110 testedSuffix!70)) lt!2040532)))

(declare-fun b!4947663 () Bool)

(declare-fun e!3091339 () Bool)

(assert (=> b!4947663 (= e!3091339 (isPrefix!5093 (tail!9748 testedP!110) (tail!9748 (++!12472 testedP!110 testedSuffix!70))))))

(declare-fun b!4947662 () Bool)

(declare-fun res!2111210 () Bool)

(assert (=> b!4947662 (=> (not res!2111210) (not e!3091339))))

(assert (=> b!4947662 (= res!2111210 (= (head!10613 testedP!110) (head!10613 (++!12472 testedP!110 testedSuffix!70))))))

(declare-fun b!4947661 () Bool)

(assert (=> b!4947661 (= e!3091341 e!3091339)))

(declare-fun res!2111213 () Bool)

(assert (=> b!4947661 (=> (not res!2111213) (not e!3091339))))

(assert (=> b!4947661 (= res!2111213 (not ((_ is Nil!56991) (++!12472 testedP!110 testedSuffix!70))))))

(assert (= (and d!1593098 (not res!2111211)) b!4947661))

(assert (= (and b!4947661 res!2111213) b!4947662))

(assert (= (and b!4947662 res!2111210) b!4947663))

(assert (= (and d!1593098 (not res!2111212)) b!4947664))

(assert (=> b!4947664 m!5970280))

(declare-fun m!5971226 () Bool)

(assert (=> b!4947664 m!5971226))

(assert (=> b!4947664 m!5970330))

(assert (=> b!4947663 m!5970596))

(assert (=> b!4947663 m!5970280))

(declare-fun m!5971228 () Bool)

(assert (=> b!4947663 m!5971228))

(assert (=> b!4947663 m!5970596))

(assert (=> b!4947663 m!5971228))

(declare-fun m!5971230 () Bool)

(assert (=> b!4947663 m!5971230))

(assert (=> b!4947662 m!5970600))

(assert (=> b!4947662 m!5970280))

(declare-fun m!5971232 () Bool)

(assert (=> b!4947662 m!5971232))

(assert (=> d!1592798 d!1593098))

(assert (=> d!1592798 d!1592790))

(declare-fun d!1593100 () Bool)

(assert (=> d!1593100 (isPrefix!5093 testedP!110 (++!12472 testedP!110 testedSuffix!70))))

(assert (=> d!1593100 true))

(declare-fun _$46!1921 () Unit!147794)

(assert (=> d!1593100 (= (choose!36498 testedP!110 testedSuffix!70) _$46!1921)))

(declare-fun bs!1181855 () Bool)

(assert (= bs!1181855 d!1593100))

(assert (=> bs!1181855 m!5970280))

(assert (=> bs!1181855 m!5970280))

(assert (=> bs!1181855 m!5970610))

(assert (=> d!1592798 d!1593100))

(declare-fun b!4947684 () Bool)

(declare-fun e!3091350 () Bool)

(declare-fun lt!2040543 () List!57115)

(assert (=> b!4947684 (= e!3091350 (or (not (= lt!2040241 Nil!56991)) (= lt!2040543 (t!367651 lt!2040240))))))

(declare-fun b!4947681 () Bool)

(declare-fun e!3091351 () List!57115)

(assert (=> b!4947681 (= e!3091351 lt!2040241)))

(declare-fun b!4947682 () Bool)

(assert (=> b!4947682 (= e!3091351 (Cons!56991 (h!63439 (t!367651 lt!2040240)) (++!12472 (t!367651 (t!367651 lt!2040240)) lt!2040241)))))

(declare-fun d!1593102 () Bool)

(assert (=> d!1593102 e!3091350))

(declare-fun res!2111214 () Bool)

(assert (=> d!1593102 (=> (not res!2111214) (not e!3091350))))

(assert (=> d!1593102 (= res!2111214 (= (content!10151 lt!2040543) ((_ map or) (content!10151 (t!367651 lt!2040240)) (content!10151 lt!2040241))))))

(assert (=> d!1593102 (= lt!2040543 e!3091351)))

(declare-fun c!844381 () Bool)

(assert (=> d!1593102 (= c!844381 ((_ is Nil!56991) (t!367651 lt!2040240)))))

(assert (=> d!1593102 (= (++!12472 (t!367651 lt!2040240) lt!2040241) lt!2040543)))

(declare-fun b!4947683 () Bool)

(declare-fun res!2111215 () Bool)

(assert (=> b!4947683 (=> (not res!2111215) (not e!3091350))))

(assert (=> b!4947683 (= res!2111215 (= (size!37819 lt!2040543) (+ (size!37819 (t!367651 lt!2040240)) (size!37819 lt!2040241))))))

(assert (= (and d!1593102 c!844381) b!4947681))

(assert (= (and d!1593102 (not c!844381)) b!4947682))

(assert (= (and d!1593102 res!2111214) b!4947683))

(assert (= (and b!4947683 res!2111215) b!4947684))

(declare-fun m!5971234 () Bool)

(assert (=> b!4947682 m!5971234))

(declare-fun m!5971236 () Bool)

(assert (=> d!1593102 m!5971236))

(assert (=> d!1593102 m!5971130))

(assert (=> d!1593102 m!5970628))

(declare-fun m!5971238 () Bool)

(assert (=> b!4947683 m!5971238))

(assert (=> b!4947683 m!5970964))

(assert (=> b!4947683 m!5970634))

(assert (=> b!4947177 d!1593102))

(declare-fun d!1593104 () Bool)

(assert (=> d!1593104 (= (head!10613 lt!2040245) (h!63439 lt!2040245))))

(assert (=> b!4947236 d!1593104))

(declare-fun b!4947688 () Bool)

(declare-fun e!3091353 () List!57115)

(assert (=> b!4947688 (= e!3091353 (++!12472 (list!18171 (left!41575 (c!844163 (_2!34077 lt!2040236)))) (list!18171 (right!41905 (c!844163 (_2!34077 lt!2040236))))))))

(declare-fun d!1593106 () Bool)

(declare-fun c!844382 () Bool)

(assert (=> d!1593106 (= c!844382 ((_ is Empty!15006) (c!844163 (_2!34077 lt!2040236))))))

(declare-fun e!3091352 () List!57115)

(assert (=> d!1593106 (= (list!18171 (c!844163 (_2!34077 lt!2040236))) e!3091352)))

(declare-fun b!4947686 () Bool)

(assert (=> b!4947686 (= e!3091352 e!3091353)))

(declare-fun c!844383 () Bool)

(assert (=> b!4947686 (= c!844383 ((_ is Leaf!24942) (c!844163 (_2!34077 lt!2040236))))))

(declare-fun b!4947687 () Bool)

(assert (=> b!4947687 (= e!3091353 (list!18172 (xs!18332 (c!844163 (_2!34077 lt!2040236)))))))

(declare-fun b!4947685 () Bool)

(assert (=> b!4947685 (= e!3091352 Nil!56991)))

(assert (= (and d!1593106 c!844382) b!4947685))

(assert (= (and d!1593106 (not c!844382)) b!4947686))

(assert (= (and b!4947686 c!844383) b!4947687))

(assert (= (and b!4947686 (not c!844383)) b!4947688))

(declare-fun m!5971240 () Bool)

(assert (=> b!4947688 m!5971240))

(declare-fun m!5971242 () Bool)

(assert (=> b!4947688 m!5971242))

(assert (=> b!4947688 m!5971240))

(assert (=> b!4947688 m!5971242))

(declare-fun m!5971244 () Bool)

(assert (=> b!4947688 m!5971244))

(declare-fun m!5971246 () Bool)

(assert (=> b!4947687 m!5971246))

(assert (=> d!1592810 d!1593106))

(declare-fun d!1593108 () Bool)

(declare-fun lt!2040556 () Int)

(assert (=> d!1593108 (>= lt!2040556 0)))

(declare-fun e!3091358 () Int)

(assert (=> d!1593108 (= lt!2040556 e!3091358)))

(declare-fun c!844388 () Bool)

(assert (=> d!1593108 (= c!844388 ((_ is Nil!56991) lt!2040392))))

(assert (=> d!1593108 (= (size!37819 lt!2040392) lt!2040556)))

(declare-fun b!4947697 () Bool)

(assert (=> b!4947697 (= e!3091358 0)))

(declare-fun b!4947698 () Bool)

(assert (=> b!4947698 (= e!3091358 (+ 1 (size!37819 (t!367651 lt!2040392))))))

(assert (= (and d!1593108 c!844388) b!4947697))

(assert (= (and d!1593108 (not c!844388)) b!4947698))

(declare-fun m!5971248 () Bool)

(assert (=> b!4947698 m!5971248))

(assert (=> b!4947162 d!1593108))

(assert (=> b!4947162 d!1592806))

(declare-fun d!1593110 () Bool)

(declare-fun lt!2040557 () Int)

(assert (=> d!1593110 (>= lt!2040557 0)))

(declare-fun e!3091359 () Int)

(assert (=> d!1593110 (= lt!2040557 e!3091359)))

(declare-fun c!844389 () Bool)

(assert (=> d!1593110 (= c!844389 ((_ is Nil!56991) testedSuffix!70))))

(assert (=> d!1593110 (= (size!37819 testedSuffix!70) lt!2040557)))

(declare-fun b!4947699 () Bool)

(assert (=> b!4947699 (= e!3091359 0)))

(declare-fun b!4947700 () Bool)

(assert (=> b!4947700 (= e!3091359 (+ 1 (size!37819 (t!367651 testedSuffix!70))))))

(assert (= (and d!1593110 c!844389) b!4947699))

(assert (= (and d!1593110 (not c!844389)) b!4947700))

(declare-fun m!5971250 () Bool)

(assert (=> b!4947700 m!5971250))

(assert (=> b!4947162 d!1593110))

(assert (=> b!4947240 d!1592802))

(declare-fun d!1593112 () Bool)

(declare-fun lt!2040558 () Int)

(assert (=> d!1593112 (>= lt!2040558 0)))

(declare-fun e!3091362 () Int)

(assert (=> d!1593112 (= lt!2040558 e!3091362)))

(declare-fun c!844392 () Bool)

(assert (=> d!1593112 (= c!844392 ((_ is Nil!56991) (t!367651 lt!2040242)))))

(assert (=> d!1593112 (= (size!37819 (t!367651 lt!2040242)) lt!2040558)))

(declare-fun b!4947705 () Bool)

(assert (=> b!4947705 (= e!3091362 0)))

(declare-fun b!4947706 () Bool)

(assert (=> b!4947706 (= e!3091362 (+ 1 (size!37819 (t!367651 (t!367651 lt!2040242)))))))

(assert (= (and d!1593112 c!844392) b!4947705))

(assert (= (and d!1593112 (not c!844392)) b!4947706))

(declare-fun m!5971252 () Bool)

(assert (=> b!4947706 m!5971252))

(assert (=> b!4947151 d!1593112))

(declare-fun bs!1181856 () Bool)

(declare-fun d!1593114 () Bool)

(assert (= bs!1181856 (and d!1593114 d!1592702)))

(declare-fun lambda!246739 () Int)

(assert (=> bs!1181856 (not (= lambda!246739 lambda!246712))))

(declare-fun bs!1181857 () Bool)

(assert (= bs!1181857 (and d!1593114 b!4947139)))

(assert (=> bs!1181857 (not (= lambda!246739 lambda!246714))))

(declare-fun bs!1181858 () Bool)

(assert (= bs!1181858 (and d!1593114 b!4947138)))

(assert (=> bs!1181858 (not (= lambda!246739 lambda!246713))))

(declare-fun bs!1181859 () Bool)

(assert (= bs!1181859 (and d!1593114 d!1593000)))

(assert (=> bs!1181859 (= (= (ite c!844220 lambda!246713 lambda!246714) lambda!246712) (= lambda!246739 lambda!246732))))

(declare-fun bs!1181860 () Bool)

(assert (= bs!1181860 (and d!1593114 d!1593056)))

(assert (=> bs!1181860 (= (= (ite c!844220 lambda!246713 lambda!246714) lambda!246712) (= lambda!246739 lambda!246735))))

(declare-fun bs!1181861 () Bool)

(assert (= bs!1181861 (and d!1593114 d!1592818)))

(assert (=> bs!1181861 (not (= lambda!246739 lambda!246720))))

(assert (=> d!1593114 true))

(assert (=> d!1593114 (< (dynLambda!23037 order!26005 (ite c!844220 lambda!246713 lambda!246714)) (dynLambda!23037 order!26005 lambda!246739))))

(assert (=> d!1593114 (= (exists!1337 (ite c!844220 lt!2040376 lt!2040374) (ite c!844220 lambda!246713 lambda!246714)) (not (forall!13270 (ite c!844220 lt!2040376 lt!2040374) lambda!246739)))))

(declare-fun bs!1181862 () Bool)

(assert (= bs!1181862 d!1593114))

(declare-fun m!5971254 () Bool)

(assert (=> bs!1181862 m!5971254))

(assert (=> bm!345233 d!1593114))

(declare-fun d!1593116 () Bool)

(declare-fun lt!2040563 () Int)

(assert (=> d!1593116 (>= lt!2040563 0)))

(declare-fun e!3091369 () Int)

(assert (=> d!1593116 (= lt!2040563 e!3091369)))

(declare-fun c!844399 () Bool)

(assert (=> d!1593116 (= c!844399 ((_ is Nil!56991) (list!18169 (_1!34077 lt!2040236))))))

(assert (=> d!1593116 (= (size!37819 (list!18169 (_1!34077 lt!2040236))) lt!2040563)))

(declare-fun b!4947719 () Bool)

(assert (=> b!4947719 (= e!3091369 0)))

(declare-fun b!4947720 () Bool)

(assert (=> b!4947720 (= e!3091369 (+ 1 (size!37819 (t!367651 (list!18169 (_1!34077 lt!2040236))))))))

(assert (= (and d!1593116 c!844399) b!4947719))

(assert (= (and d!1593116 (not c!844399)) b!4947720))

(declare-fun m!5971256 () Bool)

(assert (=> b!4947720 m!5971256))

(assert (=> d!1592784 d!1593116))

(assert (=> d!1592784 d!1592812))

(declare-fun d!1593118 () Bool)

(declare-fun lt!2040566 () Int)

(assert (=> d!1593118 (= lt!2040566 (size!37819 (list!18171 (c!844163 (_1!34077 lt!2040236)))))))

(assert (=> d!1593118 (= lt!2040566 (ite ((_ is Empty!15006) (c!844163 (_1!34077 lt!2040236))) 0 (ite ((_ is Leaf!24942) (c!844163 (_1!34077 lt!2040236))) (csize!30243 (c!844163 (_1!34077 lt!2040236))) (csize!30242 (c!844163 (_1!34077 lt!2040236))))))))

(assert (=> d!1593118 (= (size!37822 (c!844163 (_1!34077 lt!2040236))) lt!2040566)))

(declare-fun bs!1181863 () Bool)

(assert (= bs!1181863 d!1593118))

(assert (=> bs!1181863 m!5970638))

(assert (=> bs!1181863 m!5970638))

(declare-fun m!5971258 () Bool)

(assert (=> bs!1181863 m!5971258))

(assert (=> d!1592784 d!1593118))

(declare-fun lt!2040567 () List!57115)

(declare-fun e!3091372 () Bool)

(declare-fun b!4947728 () Bool)

(assert (=> b!4947728 (= e!3091372 (or (not (= lt!2040383 Nil!56991)) (= lt!2040567 testedP!110)))))

(declare-fun b!4947725 () Bool)

(declare-fun e!3091373 () List!57115)

(assert (=> b!4947725 (= e!3091373 lt!2040383)))

(declare-fun b!4947726 () Bool)

(assert (=> b!4947726 (= e!3091373 (Cons!56991 (h!63439 testedP!110) (++!12472 (t!367651 testedP!110) lt!2040383)))))

(declare-fun d!1593120 () Bool)

(assert (=> d!1593120 e!3091372))

(declare-fun res!2111216 () Bool)

(assert (=> d!1593120 (=> (not res!2111216) (not e!3091372))))

(assert (=> d!1593120 (= res!2111216 (= (content!10151 lt!2040567) ((_ map or) (content!10151 testedP!110) (content!10151 lt!2040383))))))

(assert (=> d!1593120 (= lt!2040567 e!3091373)))

(declare-fun c!844402 () Bool)

(assert (=> d!1593120 (= c!844402 ((_ is Nil!56991) testedP!110))))

(assert (=> d!1593120 (= (++!12472 testedP!110 lt!2040383) lt!2040567)))

(declare-fun b!4947727 () Bool)

(declare-fun res!2111217 () Bool)

(assert (=> b!4947727 (=> (not res!2111217) (not e!3091372))))

(assert (=> b!4947727 (= res!2111217 (= (size!37819 lt!2040567) (+ (size!37819 testedP!110) (size!37819 lt!2040383))))))

(assert (= (and d!1593120 c!844402) b!4947725))

(assert (= (and d!1593120 (not c!844402)) b!4947726))

(assert (= (and d!1593120 res!2111216) b!4947727))

(assert (= (and b!4947727 res!2111217) b!4947728))

(declare-fun m!5971260 () Bool)

(assert (=> b!4947726 m!5971260))

(declare-fun m!5971262 () Bool)

(assert (=> d!1593120 m!5971262))

(assert (=> d!1593120 m!5970586))

(declare-fun m!5971264 () Bool)

(assert (=> d!1593120 m!5971264))

(declare-fun m!5971266 () Bool)

(assert (=> b!4947727 m!5971266))

(assert (=> b!4947727 m!5970330))

(declare-fun m!5971268 () Bool)

(assert (=> b!4947727 m!5971268))

(assert (=> d!1592782 d!1593120))

(assert (=> d!1592782 d!1592802))

(assert (=> d!1592782 d!1592806))

(assert (=> b!4947167 d!1592802))

(assert (=> b!4947167 d!1592806))

(assert (=> d!1592696 d!1592698))

(declare-fun d!1593122 () Bool)

(assert (=> d!1593122 (isPrefix!5093 lt!2040245 lt!2040245)))

(assert (=> d!1593122 true))

(declare-fun _$45!2245 () Unit!147794)

(assert (=> d!1593122 (= (choose!36494 lt!2040245 lt!2040245) _$45!2245)))

(declare-fun bs!1181864 () Bool)

(assert (= bs!1181864 d!1593122))

(assert (=> bs!1181864 m!5970266))

(assert (=> d!1592696 d!1593122))

(declare-fun d!1593124 () Bool)

(declare-fun res!2111226 () Bool)

(declare-fun e!3091380 () Bool)

(assert (=> d!1593124 (=> res!2111226 e!3091380)))

(assert (=> d!1593124 (= res!2111226 ((_ is Nil!56992) (exprs!3629 setElem!28076)))))

(assert (=> d!1593124 (= (forall!13268 (exprs!3629 setElem!28076) lambda!246717) e!3091380)))

(declare-fun b!4947737 () Bool)

(declare-fun e!3091381 () Bool)

(assert (=> b!4947737 (= e!3091380 e!3091381)))

(declare-fun res!2111227 () Bool)

(assert (=> b!4947737 (=> (not res!2111227) (not e!3091381))))

(declare-fun dynLambda!23038 (Int Regex!13487) Bool)

(assert (=> b!4947737 (= res!2111227 (dynLambda!23038 lambda!246717 (h!63440 (exprs!3629 setElem!28076))))))

(declare-fun b!4947738 () Bool)

(assert (=> b!4947738 (= e!3091381 (forall!13268 (t!367652 (exprs!3629 setElem!28076)) lambda!246717))))

(assert (= (and d!1593124 (not res!2111226)) b!4947737))

(assert (= (and b!4947737 res!2111227) b!4947738))

(declare-fun b_lambda!196421 () Bool)

(assert (=> (not b_lambda!196421) (not b!4947737)))

(declare-fun m!5971270 () Bool)

(assert (=> b!4947737 m!5971270))

(declare-fun m!5971272 () Bool)

(assert (=> b!4947738 m!5971272))

(assert (=> d!1592800 d!1593124))

(assert (=> b!4947193 d!1592802))

(declare-fun d!1593126 () Bool)

(declare-fun lt!2040568 () Int)

(assert (=> d!1593126 (>= lt!2040568 0)))

(declare-fun e!3091382 () Int)

(assert (=> d!1593126 (= lt!2040568 e!3091382)))

(declare-fun c!844403 () Bool)

(assert (=> d!1593126 (= c!844403 ((_ is Nil!56991) (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))))))

(assert (=> d!1593126 (= (size!37819 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))) lt!2040568)))

(declare-fun b!4947739 () Bool)

(assert (=> b!4947739 (= e!3091382 0)))

(declare-fun b!4947740 () Bool)

(assert (=> b!4947740 (= e!3091382 (+ 1 (size!37819 (t!367651 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))))))))

(assert (= (and d!1593126 c!844403) b!4947739))

(assert (= (and d!1593126 (not c!844403)) b!4947740))

(declare-fun m!5971274 () Bool)

(assert (=> b!4947740 m!5971274))

(assert (=> b!4947193 d!1593126))

(declare-fun b!4947744 () Bool)

(declare-fun e!3091384 () Bool)

(assert (=> b!4947744 (= e!3091384 (>= (size!37819 (tail!9748 lt!2040237)) (size!37819 (tail!9748 testedP!110))))))

(declare-fun d!1593128 () Bool)

(assert (=> d!1593128 e!3091384))

(declare-fun res!2111230 () Bool)

(assert (=> d!1593128 (=> res!2111230 e!3091384)))

(declare-fun lt!2040569 () Bool)

(assert (=> d!1593128 (= res!2111230 (not lt!2040569))))

(declare-fun e!3091385 () Bool)

(assert (=> d!1593128 (= lt!2040569 e!3091385)))

(declare-fun res!2111229 () Bool)

(assert (=> d!1593128 (=> res!2111229 e!3091385)))

(assert (=> d!1593128 (= res!2111229 ((_ is Nil!56991) (tail!9748 testedP!110)))))

(assert (=> d!1593128 (= (isPrefix!5093 (tail!9748 testedP!110) (tail!9748 lt!2040237)) lt!2040569)))

(declare-fun b!4947743 () Bool)

(declare-fun e!3091383 () Bool)

(assert (=> b!4947743 (= e!3091383 (isPrefix!5093 (tail!9748 (tail!9748 testedP!110)) (tail!9748 (tail!9748 lt!2040237))))))

(declare-fun b!4947742 () Bool)

(declare-fun res!2111228 () Bool)

(assert (=> b!4947742 (=> (not res!2111228) (not e!3091383))))

(assert (=> b!4947742 (= res!2111228 (= (head!10613 (tail!9748 testedP!110)) (head!10613 (tail!9748 lt!2040237))))))

(declare-fun b!4947741 () Bool)

(assert (=> b!4947741 (= e!3091385 e!3091383)))

(declare-fun res!2111231 () Bool)

(assert (=> b!4947741 (=> (not res!2111231) (not e!3091383))))

(assert (=> b!4947741 (= res!2111231 (not ((_ is Nil!56991) (tail!9748 lt!2040237))))))

(assert (= (and d!1593128 (not res!2111229)) b!4947741))

(assert (= (and b!4947741 res!2111231) b!4947742))

(assert (= (and b!4947742 res!2111228) b!4947743))

(assert (= (and d!1593128 (not res!2111230)) b!4947744))

(assert (=> b!4947744 m!5970604))

(declare-fun m!5971276 () Bool)

(assert (=> b!4947744 m!5971276))

(assert (=> b!4947744 m!5970596))

(assert (=> b!4947744 m!5971162))

(assert (=> b!4947743 m!5970596))

(assert (=> b!4947743 m!5971164))

(assert (=> b!4947743 m!5970604))

(declare-fun m!5971278 () Bool)

(assert (=> b!4947743 m!5971278))

(assert (=> b!4947743 m!5971164))

(assert (=> b!4947743 m!5971278))

(declare-fun m!5971280 () Bool)

(assert (=> b!4947743 m!5971280))

(assert (=> b!4947742 m!5970596))

(assert (=> b!4947742 m!5971168))

(assert (=> b!4947742 m!5970604))

(declare-fun m!5971282 () Bool)

(assert (=> b!4947742 m!5971282))

(assert (=> b!4947170 d!1593128))

(assert (=> b!4947170 d!1593064))

(declare-fun d!1593130 () Bool)

(assert (=> d!1593130 (= (tail!9748 lt!2040237) (t!367651 lt!2040237))))

(assert (=> b!4947170 d!1593130))

(assert (=> b!4947165 d!1593074))

(assert (=> b!4947165 d!1593104))

(declare-fun d!1593132 () Bool)

(declare-fun lt!2040570 () List!57115)

(assert (=> d!1593132 (= (++!12472 (t!367651 testedP!110) lt!2040570) (tail!9748 lt!2040245))))

(declare-fun e!3091386 () List!57115)

(assert (=> d!1593132 (= lt!2040570 e!3091386)))

(declare-fun c!844404 () Bool)

(assert (=> d!1593132 (= c!844404 ((_ is Cons!56991) (t!367651 testedP!110)))))

(assert (=> d!1593132 (>= (size!37819 (tail!9748 lt!2040245)) (size!37819 (t!367651 testedP!110)))))

(assert (=> d!1593132 (= (getSuffix!3075 (tail!9748 lt!2040245) (t!367651 testedP!110)) lt!2040570)))

(declare-fun b!4947745 () Bool)

(assert (=> b!4947745 (= e!3091386 (getSuffix!3075 (tail!9748 (tail!9748 lt!2040245)) (t!367651 (t!367651 testedP!110))))))

(declare-fun b!4947746 () Bool)

(assert (=> b!4947746 (= e!3091386 (tail!9748 lt!2040245))))

(assert (= (and d!1593132 c!844404) b!4947745))

(assert (= (and d!1593132 (not c!844404)) b!4947746))

(declare-fun m!5971284 () Bool)

(assert (=> d!1593132 m!5971284))

(assert (=> d!1593132 m!5970350))

(assert (=> d!1593132 m!5970978))

(assert (=> d!1593132 m!5970620))

(assert (=> b!4947745 m!5970350))

(assert (=> b!4947745 m!5970982))

(assert (=> b!4947745 m!5970982))

(declare-fun m!5971286 () Bool)

(assert (=> b!4947745 m!5971286))

(assert (=> b!4947144 d!1593132))

(assert (=> b!4947144 d!1592984))

(declare-fun d!1593134 () Bool)

(declare-fun c!844405 () Bool)

(assert (=> d!1593134 (= c!844405 ((_ is Node!15006) (left!41575 (c!844163 totalInput!685))))))

(declare-fun e!3091387 () Bool)

(assert (=> d!1593134 (= (inv!74252 (left!41575 (c!844163 totalInput!685))) e!3091387)))

(declare-fun b!4947747 () Bool)

(assert (=> b!4947747 (= e!3091387 (inv!74256 (left!41575 (c!844163 totalInput!685))))))

(declare-fun b!4947748 () Bool)

(declare-fun e!3091388 () Bool)

(assert (=> b!4947748 (= e!3091387 e!3091388)))

(declare-fun res!2111232 () Bool)

(assert (=> b!4947748 (= res!2111232 (not ((_ is Leaf!24942) (left!41575 (c!844163 totalInput!685)))))))

(assert (=> b!4947748 (=> res!2111232 e!3091388)))

(declare-fun b!4947749 () Bool)

(assert (=> b!4947749 (= e!3091388 (inv!74257 (left!41575 (c!844163 totalInput!685))))))

(assert (= (and d!1593134 c!844405) b!4947747))

(assert (= (and d!1593134 (not c!844405)) b!4947748))

(assert (= (and b!4947748 (not res!2111232)) b!4947749))

(declare-fun m!5971288 () Bool)

(assert (=> b!4947747 m!5971288))

(declare-fun m!5971290 () Bool)

(assert (=> b!4947749 m!5971290))

(assert (=> b!4947272 d!1593134))

(declare-fun d!1593136 () Bool)

(declare-fun c!844406 () Bool)

(assert (=> d!1593136 (= c!844406 ((_ is Node!15006) (right!41905 (c!844163 totalInput!685))))))

(declare-fun e!3091389 () Bool)

(assert (=> d!1593136 (= (inv!74252 (right!41905 (c!844163 totalInput!685))) e!3091389)))

(declare-fun b!4947750 () Bool)

(assert (=> b!4947750 (= e!3091389 (inv!74256 (right!41905 (c!844163 totalInput!685))))))

(declare-fun b!4947751 () Bool)

(declare-fun e!3091390 () Bool)

(assert (=> b!4947751 (= e!3091389 e!3091390)))

(declare-fun res!2111233 () Bool)

(assert (=> b!4947751 (= res!2111233 (not ((_ is Leaf!24942) (right!41905 (c!844163 totalInput!685)))))))

(assert (=> b!4947751 (=> res!2111233 e!3091390)))

(declare-fun b!4947752 () Bool)

(assert (=> b!4947752 (= e!3091390 (inv!74257 (right!41905 (c!844163 totalInput!685))))))

(assert (= (and d!1593136 c!844406) b!4947750))

(assert (= (and d!1593136 (not c!844406)) b!4947751))

(assert (= (and b!4947751 (not res!2111233)) b!4947752))

(declare-fun m!5971292 () Bool)

(assert (=> b!4947750 m!5971292))

(declare-fun m!5971294 () Bool)

(assert (=> b!4947752 m!5971294))

(assert (=> b!4947272 d!1593136))

(declare-fun d!1593138 () Bool)

(declare-fun lt!2040573 () Bool)

(assert (=> d!1593138 (= lt!2040573 (select (content!10151 lt!2040245) lt!2040429))))

(declare-fun e!3091396 () Bool)

(assert (=> d!1593138 (= lt!2040573 e!3091396)))

(declare-fun res!2111238 () Bool)

(assert (=> d!1593138 (=> (not res!2111238) (not e!3091396))))

(assert (=> d!1593138 (= res!2111238 ((_ is Cons!56991) lt!2040245))))

(assert (=> d!1593138 (= (contains!19494 lt!2040245 lt!2040429) lt!2040573)))

(declare-fun b!4947757 () Bool)

(declare-fun e!3091395 () Bool)

(assert (=> b!4947757 (= e!3091396 e!3091395)))

(declare-fun res!2111239 () Bool)

(assert (=> b!4947757 (=> res!2111239 e!3091395)))

(assert (=> b!4947757 (= res!2111239 (= (h!63439 lt!2040245) lt!2040429))))

(declare-fun b!4947758 () Bool)

(assert (=> b!4947758 (= e!3091395 (contains!19494 (t!367651 lt!2040245) lt!2040429))))

(assert (= (and d!1593138 res!2111238) b!4947757))

(assert (= (and b!4947757 (not res!2111239)) b!4947758))

(assert (=> d!1593138 m!5970718))

(declare-fun m!5971296 () Bool)

(assert (=> d!1593138 m!5971296))

(declare-fun m!5971298 () Bool)

(assert (=> b!4947758 m!5971298))

(assert (=> d!1592844 d!1593138))

(declare-fun e!3091397 () Bool)

(declare-fun lt!2040574 () List!57115)

(declare-fun b!4947762 () Bool)

(assert (=> b!4947762 (= e!3091397 (or (not (= (Cons!56991 (head!10613 lt!2040244) Nil!56991) Nil!56991)) (= lt!2040574 (t!367651 testedP!110))))))

(declare-fun b!4947759 () Bool)

(declare-fun e!3091398 () List!57115)

(assert (=> b!4947759 (= e!3091398 (Cons!56991 (head!10613 lt!2040244) Nil!56991))))

(declare-fun b!4947760 () Bool)

(assert (=> b!4947760 (= e!3091398 (Cons!56991 (h!63439 (t!367651 testedP!110)) (++!12472 (t!367651 (t!367651 testedP!110)) (Cons!56991 (head!10613 lt!2040244) Nil!56991))))))

(declare-fun d!1593140 () Bool)

(assert (=> d!1593140 e!3091397))

(declare-fun res!2111240 () Bool)

(assert (=> d!1593140 (=> (not res!2111240) (not e!3091397))))

(assert (=> d!1593140 (= res!2111240 (= (content!10151 lt!2040574) ((_ map or) (content!10151 (t!367651 testedP!110)) (content!10151 (Cons!56991 (head!10613 lt!2040244) Nil!56991)))))))

(assert (=> d!1593140 (= lt!2040574 e!3091398)))

(declare-fun c!844407 () Bool)

(assert (=> d!1593140 (= c!844407 ((_ is Nil!56991) (t!367651 testedP!110)))))

(assert (=> d!1593140 (= (++!12472 (t!367651 testedP!110) (Cons!56991 (head!10613 lt!2040244) Nil!56991)) lt!2040574)))

(declare-fun b!4947761 () Bool)

(declare-fun res!2111241 () Bool)

(assert (=> b!4947761 (=> (not res!2111241) (not e!3091397))))

(assert (=> b!4947761 (= res!2111241 (= (size!37819 lt!2040574) (+ (size!37819 (t!367651 testedP!110)) (size!37819 (Cons!56991 (head!10613 lt!2040244) Nil!56991)))))))

(assert (= (and d!1593140 c!844407) b!4947759))

(assert (= (and d!1593140 (not c!844407)) b!4947760))

(assert (= (and d!1593140 res!2111240) b!4947761))

(assert (= (and b!4947761 res!2111241) b!4947762))

(declare-fun m!5971300 () Bool)

(assert (=> b!4947760 m!5971300))

(declare-fun m!5971302 () Bool)

(assert (=> d!1593140 m!5971302))

(assert (=> d!1593140 m!5970908))

(assert (=> d!1593140 m!5970702))

(declare-fun m!5971304 () Bool)

(assert (=> b!4947761 m!5971304))

(assert (=> b!4947761 m!5970620))

(assert (=> b!4947761 m!5970706))

(assert (=> b!4947199 d!1593140))

(declare-fun d!1593142 () Bool)

(declare-fun lt!2040588 () Int)

(assert (=> d!1593142 (>= lt!2040588 0)))

(declare-fun e!3091411 () Int)

(assert (=> d!1593142 (= lt!2040588 e!3091411)))

(declare-fun c!844419 () Bool)

(assert (=> d!1593142 (= c!844419 ((_ is Nil!56991) lt!2040418))))

(assert (=> d!1593142 (= (size!37819 lt!2040418) lt!2040588)))

(declare-fun b!4947781 () Bool)

(assert (=> b!4947781 (= e!3091411 0)))

(declare-fun b!4947782 () Bool)

(assert (=> b!4947782 (= e!3091411 (+ 1 (size!37819 (t!367651 lt!2040418))))))

(assert (= (and d!1593142 c!844419) b!4947781))

(assert (= (and d!1593142 (not c!844419)) b!4947782))

(declare-fun m!5971306 () Bool)

(assert (=> b!4947782 m!5971306))

(assert (=> b!4947196 d!1593142))

(assert (=> b!4947196 d!1592806))

(declare-fun d!1593144 () Bool)

(declare-fun lt!2040589 () Int)

(assert (=> d!1593144 (>= lt!2040589 0)))

(declare-fun e!3091412 () Int)

(assert (=> d!1593144 (= lt!2040589 e!3091412)))

(declare-fun c!844420 () Bool)

(assert (=> d!1593144 (= c!844420 ((_ is Nil!56991) (Cons!56991 lt!2040235 Nil!56991)))))

(assert (=> d!1593144 (= (size!37819 (Cons!56991 lt!2040235 Nil!56991)) lt!2040589)))

(declare-fun b!4947789 () Bool)

(assert (=> b!4947789 (= e!3091412 0)))

(declare-fun b!4947790 () Bool)

(assert (=> b!4947790 (= e!3091412 (+ 1 (size!37819 (t!367651 (Cons!56991 lt!2040235 Nil!56991)))))))

(assert (= (and d!1593144 c!844420) b!4947789))

(assert (= (and d!1593144 (not c!844420)) b!4947790))

(declare-fun m!5971308 () Bool)

(assert (=> b!4947790 m!5971308))

(assert (=> b!4947196 d!1593144))

(declare-fun b!4947791 () Bool)

(declare-fun e!3091413 () Bool)

(assert (=> b!4947791 (= e!3091413 (not (isEmpty!30664 (right!41905 (c!844163 (_2!34077 lt!2040408))))))))

(declare-fun b!4947792 () Bool)

(declare-fun res!2111246 () Bool)

(assert (=> b!4947792 (=> (not res!2111246) (not e!3091413))))

(assert (=> b!4947792 (= res!2111246 (isBalanced!4156 (left!41575 (c!844163 (_2!34077 lt!2040408)))))))

(declare-fun b!4947793 () Bool)

(declare-fun res!2111247 () Bool)

(assert (=> b!4947793 (=> (not res!2111247) (not e!3091413))))

(assert (=> b!4947793 (= res!2111247 (not (isEmpty!30664 (left!41575 (c!844163 (_2!34077 lt!2040408))))))))

(declare-fun b!4947794 () Bool)

(declare-fun e!3091414 () Bool)

(assert (=> b!4947794 (= e!3091414 e!3091413)))

(declare-fun res!2111244 () Bool)

(assert (=> b!4947794 (=> (not res!2111244) (not e!3091413))))

(assert (=> b!4947794 (= res!2111244 (<= (- 1) (- (height!2004 (left!41575 (c!844163 (_2!34077 lt!2040408)))) (height!2004 (right!41905 (c!844163 (_2!34077 lt!2040408)))))))))

(declare-fun b!4947795 () Bool)

(declare-fun res!2111249 () Bool)

(assert (=> b!4947795 (=> (not res!2111249) (not e!3091413))))

(assert (=> b!4947795 (= res!2111249 (isBalanced!4156 (right!41905 (c!844163 (_2!34077 lt!2040408)))))))

(declare-fun b!4947796 () Bool)

(declare-fun res!2111245 () Bool)

(assert (=> b!4947796 (=> (not res!2111245) (not e!3091413))))

(assert (=> b!4947796 (= res!2111245 (<= (- (height!2004 (left!41575 (c!844163 (_2!34077 lt!2040408)))) (height!2004 (right!41905 (c!844163 (_2!34077 lt!2040408))))) 1))))

(declare-fun d!1593146 () Bool)

(declare-fun res!2111248 () Bool)

(assert (=> d!1593146 (=> res!2111248 e!3091414)))

(assert (=> d!1593146 (= res!2111248 (not ((_ is Node!15006) (c!844163 (_2!34077 lt!2040408)))))))

(assert (=> d!1593146 (= (isBalanced!4156 (c!844163 (_2!34077 lt!2040408))) e!3091414)))

(assert (= (and d!1593146 (not res!2111248)) b!4947794))

(assert (= (and b!4947794 res!2111244) b!4947796))

(assert (= (and b!4947796 res!2111245) b!4947792))

(assert (= (and b!4947792 res!2111246) b!4947795))

(assert (= (and b!4947795 res!2111249) b!4947793))

(assert (= (and b!4947793 res!2111247) b!4947791))

(declare-fun m!5971310 () Bool)

(assert (=> b!4947796 m!5971310))

(declare-fun m!5971312 () Bool)

(assert (=> b!4947796 m!5971312))

(declare-fun m!5971314 () Bool)

(assert (=> b!4947791 m!5971314))

(assert (=> b!4947794 m!5971310))

(assert (=> b!4947794 m!5971312))

(declare-fun m!5971316 () Bool)

(assert (=> b!4947795 m!5971316))

(declare-fun m!5971318 () Bool)

(assert (=> b!4947792 m!5971318))

(declare-fun m!5971320 () Bool)

(assert (=> b!4947793 m!5971320))

(assert (=> b!4947184 d!1593146))

(declare-fun d!1593148 () Bool)

(assert (=> d!1593148 (= (head!10613 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))) (h!63439 (++!12472 testedP!110 (Cons!56991 (head!10613 lt!2040244) Nil!56991))))))

(assert (=> b!4947191 d!1593148))

(assert (=> b!4947191 d!1593104))

(declare-fun d!1593150 () Bool)

(declare-fun c!844421 () Bool)

(assert (=> d!1593150 (= c!844421 ((_ is Nil!56991) lt!2040392))))

(declare-fun e!3091415 () (InoxSet C!27224))

(assert (=> d!1593150 (= (content!10151 lt!2040392) e!3091415)))

(declare-fun b!4947797 () Bool)

(assert (=> b!4947797 (= e!3091415 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947798 () Bool)

(assert (=> b!4947798 (= e!3091415 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 lt!2040392) true) (content!10151 (t!367651 lt!2040392))))))

(assert (= (and d!1593150 c!844421) b!4947797))

(assert (= (and d!1593150 (not c!844421)) b!4947798))

(declare-fun m!5971322 () Bool)

(assert (=> b!4947798 m!5971322))

(declare-fun m!5971324 () Bool)

(assert (=> b!4947798 m!5971324))

(assert (=> d!1592790 d!1593150))

(assert (=> d!1592790 d!1592944))

(declare-fun d!1593152 () Bool)

(declare-fun c!844422 () Bool)

(assert (=> d!1593152 (= c!844422 ((_ is Nil!56991) testedSuffix!70))))

(declare-fun e!3091416 () (InoxSet C!27224))

(assert (=> d!1593152 (= (content!10151 testedSuffix!70) e!3091416)))

(declare-fun b!4947799 () Bool)

(assert (=> b!4947799 (= e!3091416 ((as const (Array C!27224 Bool)) false))))

(declare-fun b!4947800 () Bool)

(assert (=> b!4947800 (= e!3091416 ((_ map or) (store ((as const (Array C!27224 Bool)) false) (h!63439 testedSuffix!70) true) (content!10151 (t!367651 testedSuffix!70))))))

(assert (= (and d!1593152 c!844422) b!4947799))

(assert (= (and d!1593152 (not c!844422)) b!4947800))

(declare-fun m!5971326 () Bool)

(assert (=> b!4947800 m!5971326))

(declare-fun m!5971328 () Bool)

(assert (=> b!4947800 m!5971328))

(assert (=> d!1592790 d!1593152))

(declare-fun d!1593154 () Bool)

(assert (=> d!1593154 (= (isEmpty!30662 (getLanguageWitness!687 z!3568)) (not ((_ is Some!14217) (getLanguageWitness!687 z!3568))))))

(assert (=> d!1592702 d!1593154))

(declare-fun bs!1181866 () Bool)

(declare-fun d!1593156 () Bool)

(assert (= bs!1181866 (and d!1593156 d!1593114)))

(declare-fun lambda!246746 () Int)

(assert (=> bs!1181866 (not (= lambda!246746 lambda!246739))))

(declare-fun bs!1181867 () Bool)

(assert (= bs!1181867 (and d!1593156 d!1592702)))

(assert (=> bs!1181867 (not (= lambda!246746 lambda!246712))))

(declare-fun bs!1181868 () Bool)

(assert (= bs!1181868 (and d!1593156 b!4947139)))

(assert (=> bs!1181868 (= lambda!246746 lambda!246714)))

(declare-fun bs!1181869 () Bool)

(assert (= bs!1181869 (and d!1593156 b!4947138)))

(assert (=> bs!1181869 (= lambda!246746 lambda!246713)))

(declare-fun bs!1181870 () Bool)

(assert (= bs!1181870 (and d!1593156 d!1593000)))

(assert (=> bs!1181870 (not (= lambda!246746 lambda!246732))))

(declare-fun bs!1181871 () Bool)

(assert (= bs!1181871 (and d!1593156 d!1593056)))

(assert (=> bs!1181871 (not (= lambda!246746 lambda!246735))))

(declare-fun bs!1181872 () Bool)

(assert (= bs!1181872 (and d!1593156 d!1592818)))

(assert (=> bs!1181872 (not (= lambda!246746 lambda!246720))))

(declare-fun lt!2040597 () Option!14218)

(declare-fun isDefined!11180 (Option!14218) Bool)

(assert (=> d!1593156 (= (isDefined!11180 lt!2040597) (exists!1338 z!3568 lambda!246746))))

(declare-fun e!3091431 () Option!14218)

(assert (=> d!1593156 (= lt!2040597 e!3091431)))

(declare-fun c!844435 () Bool)

(assert (=> d!1593156 (= c!844435 (exists!1338 z!3568 lambda!246746))))

(assert (=> d!1593156 (= (getLanguageWitness!687 z!3568) lt!2040597)))

(declare-fun b!4947825 () Bool)

(declare-fun getLanguageWitness!688 (Context!6258) Option!14218)

(declare-fun getWitness!646 ((InoxSet Context!6258) Int) Context!6258)

(assert (=> b!4947825 (= e!3091431 (getLanguageWitness!688 (getWitness!646 z!3568 lambda!246746)))))

(declare-fun b!4947826 () Bool)

(assert (=> b!4947826 (= e!3091431 None!14217)))

(assert (= (and d!1593156 c!844435) b!4947825))

(assert (= (and d!1593156 (not c!844435)) b!4947826))

(declare-fun m!5971398 () Bool)

(assert (=> d!1593156 m!5971398))

(declare-fun m!5971402 () Bool)

(assert (=> d!1593156 m!5971402))

(assert (=> d!1593156 m!5971402))

(declare-fun m!5971404 () Bool)

(assert (=> b!4947825 m!5971404))

(assert (=> b!4947825 m!5971404))

(declare-fun m!5971406 () Bool)

(assert (=> b!4947825 m!5971406))

(assert (=> d!1592702 d!1593156))

(declare-fun d!1593178 () Bool)

(declare-fun lt!2040605 () Bool)

(assert (=> d!1593178 (= lt!2040605 (forall!13270 (toList!8000 z!3568) lambda!246712))))

(declare-fun choose!36512 ((InoxSet Context!6258) Int) Bool)

(assert (=> d!1593178 (= lt!2040605 (choose!36512 z!3568 lambda!246712))))

(assert (=> d!1593178 (= (forall!13267 z!3568 lambda!246712) lt!2040605)))

(declare-fun bs!1181874 () Bool)

(assert (= bs!1181874 d!1593178))

(assert (=> bs!1181874 m!5970554))

(assert (=> bs!1181874 m!5970554))

(declare-fun m!5971430 () Bool)

(assert (=> bs!1181874 m!5971430))

(declare-fun m!5971432 () Bool)

(assert (=> bs!1181874 m!5971432))

(assert (=> d!1592702 d!1593178))

(assert (=> b!4946984 d!1592802))

(declare-fun b!4947843 () Bool)

(declare-fun e!3091442 () Bool)

(assert (=> b!4947843 (= e!3091442 (not (isEmpty!30664 (right!41905 (c!844163 (_1!34077 lt!2040408))))))))

(declare-fun b!4947844 () Bool)

(declare-fun res!2111270 () Bool)

(assert (=> b!4947844 (=> (not res!2111270) (not e!3091442))))

(assert (=> b!4947844 (= res!2111270 (isBalanced!4156 (left!41575 (c!844163 (_1!34077 lt!2040408)))))))

(declare-fun b!4947845 () Bool)

(declare-fun res!2111271 () Bool)

(assert (=> b!4947845 (=> (not res!2111271) (not e!3091442))))

(assert (=> b!4947845 (= res!2111271 (not (isEmpty!30664 (left!41575 (c!844163 (_1!34077 lt!2040408))))))))

(declare-fun b!4947846 () Bool)

(declare-fun e!3091443 () Bool)

(assert (=> b!4947846 (= e!3091443 e!3091442)))

(declare-fun res!2111268 () Bool)

(assert (=> b!4947846 (=> (not res!2111268) (not e!3091442))))

(assert (=> b!4947846 (= res!2111268 (<= (- 1) (- (height!2004 (left!41575 (c!844163 (_1!34077 lt!2040408)))) (height!2004 (right!41905 (c!844163 (_1!34077 lt!2040408)))))))))

(declare-fun b!4947847 () Bool)

(declare-fun res!2111273 () Bool)

(assert (=> b!4947847 (=> (not res!2111273) (not e!3091442))))

(assert (=> b!4947847 (= res!2111273 (isBalanced!4156 (right!41905 (c!844163 (_1!34077 lt!2040408)))))))

(declare-fun b!4947848 () Bool)

(declare-fun res!2111269 () Bool)

(assert (=> b!4947848 (=> (not res!2111269) (not e!3091442))))

(assert (=> b!4947848 (= res!2111269 (<= (- (height!2004 (left!41575 (c!844163 (_1!34077 lt!2040408)))) (height!2004 (right!41905 (c!844163 (_1!34077 lt!2040408))))) 1))))

(declare-fun d!1593194 () Bool)

(declare-fun res!2111272 () Bool)

(assert (=> d!1593194 (=> res!2111272 e!3091443)))

(assert (=> d!1593194 (= res!2111272 (not ((_ is Node!15006) (c!844163 (_1!34077 lt!2040408)))))))

(assert (=> d!1593194 (= (isBalanced!4156 (c!844163 (_1!34077 lt!2040408))) e!3091443)))

(assert (= (and d!1593194 (not res!2111272)) b!4947846))

(assert (= (and b!4947846 res!2111268) b!4947848))

(assert (= (and b!4947848 res!2111269) b!4947844))

(assert (= (and b!4947844 res!2111270) b!4947847))

(assert (= (and b!4947847 res!2111273) b!4947845))

(assert (= (and b!4947845 res!2111271) b!4947843))

(declare-fun m!5971436 () Bool)

(assert (=> b!4947848 m!5971436))

(declare-fun m!5971438 () Bool)

(assert (=> b!4947848 m!5971438))

(declare-fun m!5971440 () Bool)

(assert (=> b!4947843 m!5971440))

(assert (=> b!4947846 m!5971436))

(assert (=> b!4947846 m!5971438))

(declare-fun m!5971448 () Bool)

(assert (=> b!4947847 m!5971448))

(declare-fun m!5971450 () Bool)

(assert (=> b!4947844 m!5971450))

(declare-fun m!5971452 () Bool)

(assert (=> b!4947845 m!5971452))

(assert (=> d!1592814 d!1593194))

(declare-fun b!4947976 () Bool)

(declare-fun e!3091507 () tuple2!61554)

(declare-fun e!3091518 () tuple2!61554)

(assert (=> b!4947976 (= e!3091507 e!3091518)))

(declare-fun c!844493 () Bool)

(assert (=> b!4947976 (= c!844493 ((_ is Leaf!24942) (c!844163 totalInput!685)))))

(declare-fun b!4947977 () Bool)

(declare-fun e!3091516 () Int)

(assert (=> b!4947977 (= e!3091516 testedPSize!70)))

(declare-fun b!4947979 () Bool)

(declare-fun e!3091515 () tuple2!61554)

(declare-fun e!3091513 () tuple2!61554)

(assert (=> b!4947979 (= e!3091515 e!3091513)))

(declare-fun c!844490 () Bool)

(assert (=> b!4947979 (= c!844490 (= testedPSize!70 (csize!30243 (c!844163 totalInput!685))))))

(declare-fun lt!2040646 () tuple2!61556)

(declare-fun c!844488 () Bool)

(declare-fun lt!2040651 () List!57115)

(declare-fun lt!2040652 () List!57115)

(declare-fun lt!2040656 () tuple2!61556)

(declare-fun call!345282 () List!57115)

(declare-fun bm!345276 () Bool)

(assert (=> bm!345276 (= call!345282 (++!12472 (ite c!844488 (_2!34081 lt!2040656) lt!2040652) (ite c!844488 lt!2040651 (_1!34081 lt!2040646))))))

(declare-fun b!4947980 () Bool)

(declare-fun e!3091512 () tuple2!61556)

(assert (=> b!4947980 (= e!3091512 (tuple2!61557 lt!2040652 lt!2040651))))

(declare-fun bm!345277 () Bool)

(declare-fun c!844483 () Bool)

(declare-fun c!844489 () Bool)

(assert (=> bm!345277 (= c!844483 c!844489)))

(declare-fun call!345284 () tuple2!61554)

(assert (=> bm!345277 (= call!345284 (splitAt!406 (ite c!844489 (left!41575 (c!844163 totalInput!685)) (right!41905 (c!844163 totalInput!685))) e!3091516))))

(declare-fun b!4947978 () Bool)

(declare-fun e!3091508 () Int)

(declare-fun call!345283 () Int)

(assert (=> b!4947978 (= e!3091508 (- testedPSize!70 call!345283))))

(declare-fun d!1593198 () Bool)

(declare-fun e!3091510 () Bool)

(assert (=> d!1593198 e!3091510))

(declare-fun res!2111303 () Bool)

(assert (=> d!1593198 (=> (not res!2111303) (not e!3091510))))

(declare-fun lt!2040654 () tuple2!61554)

(assert (=> d!1593198 (= res!2111303 (isBalanced!4156 (_1!34080 lt!2040654)))))

(assert (=> d!1593198 (= lt!2040654 e!3091507)))

(declare-fun c!844491 () Bool)

(assert (=> d!1593198 (= c!844491 ((_ is Empty!15006) (c!844163 totalInput!685)))))

(assert (=> d!1593198 (isBalanced!4156 (c!844163 totalInput!685))))

(assert (=> d!1593198 (= (splitAt!406 (c!844163 totalInput!685) testedPSize!70) lt!2040654)))

(declare-fun b!4947981 () Bool)

(assert (=> b!4947981 (= e!3091510 (= (tuple2!61557 (list!18171 (_1!34080 lt!2040654)) (list!18171 (_2!34080 lt!2040654))) (splitAtIndex!150 (list!18171 (c!844163 totalInput!685)) testedPSize!70)))))

(declare-fun b!4947982 () Bool)

(declare-fun e!3091514 () List!57115)

(assert (=> b!4947982 (= e!3091514 (list!18172 (xs!18332 (c!844163 totalInput!685))))))

(declare-fun b!4947983 () Bool)

(declare-fun lt!2040649 () Unit!147794)

(declare-fun lt!2040653 () Unit!147794)

(assert (=> b!4947983 (= lt!2040649 lt!2040653)))

(declare-fun lt!2040650 () List!57115)

(declare-fun slice!800 (List!57115 Int Int) List!57115)

(assert (=> b!4947983 (= (drop!2294 lt!2040650 testedPSize!70) (slice!800 lt!2040650 testedPSize!70 call!345283))))

(declare-fun dropLemma!42 (List!57115 Int) Unit!147794)

(assert (=> b!4947983 (= lt!2040653 (dropLemma!42 lt!2040650 testedPSize!70))))

(assert (=> b!4947983 (= lt!2040650 (list!18172 (xs!18332 (c!844163 totalInput!685))))))

(declare-fun lt!2040648 () tuple2!61556)

(declare-fun call!345286 () tuple2!61556)

(assert (=> b!4947983 (= lt!2040648 call!345286)))

(declare-fun slice!801 (IArray!30073 Int Int) IArray!30073)

(assert (=> b!4947983 (= e!3091513 (tuple2!61555 (Leaf!24942 (slice!801 (xs!18332 (c!844163 totalInput!685)) 0 testedPSize!70) testedPSize!70) (Leaf!24942 (slice!801 (xs!18332 (c!844163 totalInput!685)) testedPSize!70 (csize!30243 (c!844163 totalInput!685))) (- (csize!30243 (c!844163 totalInput!685)) testedPSize!70))))))

(declare-fun b!4947984 () Bool)

(assert (=> b!4947984 (= e!3091508 testedPSize!70)))

(declare-fun b!4947985 () Bool)

(declare-fun call!345285 () tuple2!61556)

(assert (=> b!4947985 (= lt!2040646 call!345285)))

(declare-fun e!3091517 () tuple2!61556)

(assert (=> b!4947985 (= e!3091517 (tuple2!61557 call!345282 (_2!34081 lt!2040646)))))

(declare-fun b!4947986 () Bool)

(declare-fun c!844487 () Bool)

(assert (=> b!4947986 (= c!844487 (= (size!37822 (left!41575 (c!844163 totalInput!685))) testedPSize!70))))

(declare-fun lt!2040657 () Unit!147794)

(declare-fun lt!2040645 () Unit!147794)

(assert (=> b!4947986 (= lt!2040657 lt!2040645)))

(assert (=> b!4947986 (= (splitAtIndex!150 (++!12472 lt!2040652 lt!2040651) testedPSize!70) e!3091512)))

(declare-fun c!844486 () Bool)

(assert (=> b!4947986 (= c!844486 (= call!345283 testedPSize!70))))

(declare-fun splitAtLemma!42 (List!57115 List!57115 Int) Unit!147794)

(assert (=> b!4947986 (= lt!2040645 (splitAtLemma!42 lt!2040652 lt!2040651 testedPSize!70))))

(assert (=> b!4947986 (= lt!2040651 (list!18171 (right!41905 (c!844163 totalInput!685))))))

(assert (=> b!4947986 (= lt!2040652 (list!18171 (left!41575 (c!844163 totalInput!685))))))

(declare-fun e!3091509 () tuple2!61554)

(assert (=> b!4947986 (= e!3091518 e!3091509)))

(declare-fun b!4947987 () Bool)

(declare-fun lt!2040647 () tuple2!61554)

(assert (=> b!4947987 (= lt!2040647 call!345284)))

(declare-fun e!3091511 () tuple2!61554)

(declare-fun call!345281 () Conc!15006)

(assert (=> b!4947987 (= e!3091511 (tuple2!61555 (_1!34080 lt!2040647) call!345281))))

(declare-fun lt!2040655 () tuple2!61554)

(declare-fun bm!345278 () Bool)

(declare-fun ++!12474 (Conc!15006 Conc!15006) Conc!15006)

(assert (=> bm!345278 (= call!345281 (++!12474 (ite c!844489 (_2!34080 lt!2040647) (left!41575 (c!844163 totalInput!685))) (ite c!844489 (right!41905 (c!844163 totalInput!685)) (_1!34080 lt!2040655))))))

(declare-fun b!4947988 () Bool)

(declare-fun res!2111304 () Bool)

(assert (=> b!4947988 (=> (not res!2111304) (not e!3091510))))

(assert (=> b!4947988 (= res!2111304 (isBalanced!4156 (_2!34080 lt!2040654)))))

(declare-fun b!4947989 () Bool)

(assert (=> b!4947989 (= e!3091516 (- testedPSize!70 (size!37822 (left!41575 (c!844163 totalInput!685)))))))

(declare-fun b!4947990 () Bool)

(assert (=> b!4947990 (= e!3091514 (ite c!844488 lt!2040652 lt!2040651))))

(declare-fun b!4947991 () Bool)

(declare-fun c!844492 () Bool)

(assert (=> b!4947991 (= c!844492 (<= testedPSize!70 0))))

(assert (=> b!4947991 (= e!3091518 e!3091515)))

(declare-fun bm!345279 () Bool)

(assert (=> bm!345279 (= call!345283 (size!37819 (ite c!844493 lt!2040650 lt!2040652)))))

(declare-fun b!4947992 () Bool)

(assert (=> b!4947992 (= e!3091509 e!3091511)))

(assert (=> b!4947992 (= c!844489 (< testedPSize!70 (size!37822 (left!41575 (c!844163 totalInput!685)))))))

(declare-fun b!4947993 () Bool)

(assert (=> b!4947993 (= e!3091515 (tuple2!61555 Empty!15006 (c!844163 totalInput!685)))))

(declare-fun b!4947994 () Bool)

(assert (=> b!4947994 (= e!3091513 (tuple2!61555 (c!844163 totalInput!685) Empty!15006))))

(declare-fun b!4947995 () Bool)

(assert (=> b!4947995 (= e!3091509 (tuple2!61555 (left!41575 (c!844163 totalInput!685)) (right!41905 (c!844163 totalInput!685))))))

(declare-fun b!4947996 () Bool)

(assert (=> b!4947996 (= e!3091507 (tuple2!61555 (c!844163 totalInput!685) (c!844163 totalInput!685)))))

(declare-fun b!4947997 () Bool)

(assert (=> b!4947997 (= lt!2040655 call!345284)))

(assert (=> b!4947997 (= e!3091511 (tuple2!61555 call!345281 (_2!34080 lt!2040655)))))

(declare-fun bm!345280 () Bool)

(declare-fun c!844485 () Bool)

(assert (=> bm!345280 (= c!844485 c!844488)))

(assert (=> bm!345280 (= call!345285 call!345286)))

(declare-fun bm!345281 () Bool)

(declare-fun c!844484 () Bool)

(assert (=> bm!345281 (= c!844484 c!844493)))

(assert (=> bm!345281 (= call!345286 (splitAtIndex!150 e!3091514 (ite c!844493 testedPSize!70 e!3091508)))))

(declare-fun b!4947998 () Bool)

(assert (=> b!4947998 (= e!3091512 e!3091517)))

(assert (=> b!4947998 (= c!844488 (< testedPSize!70 call!345283))))

(declare-fun b!4947999 () Bool)

(assert (=> b!4947999 (= lt!2040656 call!345285)))

(assert (=> b!4947999 (= e!3091517 (tuple2!61557 (_1!34081 lt!2040656) call!345282))))

(assert (= (and d!1593198 c!844491) b!4947996))

(assert (= (and d!1593198 (not c!844491)) b!4947976))

(assert (= (and b!4947976 c!844493) b!4947991))

(assert (= (and b!4947976 (not c!844493)) b!4947986))

(assert (= (and b!4947991 c!844492) b!4947993))

(assert (= (and b!4947991 (not c!844492)) b!4947979))

(assert (= (and b!4947979 c!844490) b!4947994))

(assert (= (and b!4947979 (not c!844490)) b!4947983))

(assert (= (and b!4947986 c!844486) b!4947980))

(assert (= (and b!4947986 (not c!844486)) b!4947998))

(assert (= (and b!4947998 c!844488) b!4947999))

(assert (= (and b!4947998 (not c!844488)) b!4947985))

(assert (= (or b!4947999 b!4947985) bm!345276))

(assert (= (or b!4947999 b!4947985) bm!345280))

(assert (= (and bm!345280 c!844485) b!4947984))

(assert (= (and bm!345280 (not c!844485)) b!4947978))

(assert (= (and b!4947986 c!844487) b!4947995))

(assert (= (and b!4947986 (not c!844487)) b!4947992))

(assert (= (and b!4947992 c!844489) b!4947987))

(assert (= (and b!4947992 (not c!844489)) b!4947997))

(assert (= (or b!4947987 b!4947997) bm!345278))

(assert (= (or b!4947987 b!4947997) bm!345277))

(assert (= (and bm!345277 c!844483) b!4947977))

(assert (= (and bm!345277 (not c!844483)) b!4947989))

(assert (= (or b!4947983 b!4947978 b!4947986 b!4947998) bm!345279))

(assert (= (or b!4947983 bm!345280) bm!345281))

(assert (= (and bm!345281 c!844484) b!4947982))

(assert (= (and bm!345281 (not c!844484)) b!4947990))

(assert (= (and d!1593198 res!2111303) b!4947988))

(assert (= (and b!4947988 res!2111304) b!4947981))

(declare-fun m!5971542 () Bool)

(assert (=> b!4947981 m!5971542))

(declare-fun m!5971544 () Bool)

(assert (=> b!4947981 m!5971544))

(assert (=> b!4947981 m!5970580))

(assert (=> b!4947981 m!5970580))

(declare-fun m!5971546 () Bool)

(assert (=> b!4947981 m!5971546))

(declare-fun m!5971548 () Bool)

(assert (=> bm!345281 m!5971548))

(assert (=> b!4947982 m!5971190))

(assert (=> b!4947992 m!5971182))

(declare-fun m!5971550 () Bool)

(assert (=> bm!345277 m!5971550))

(declare-fun m!5971552 () Bool)

(assert (=> d!1593198 m!5971552))

(assert (=> d!1593198 m!5970594))

(declare-fun m!5971554 () Bool)

(assert (=> bm!345278 m!5971554))

(declare-fun m!5971556 () Bool)

(assert (=> bm!345276 m!5971556))

(declare-fun m!5971558 () Bool)

(assert (=> b!4947983 m!5971558))

(declare-fun m!5971560 () Bool)

(assert (=> b!4947983 m!5971560))

(declare-fun m!5971562 () Bool)

(assert (=> b!4947983 m!5971562))

(assert (=> b!4947983 m!5971190))

(declare-fun m!5971564 () Bool)

(assert (=> b!4947983 m!5971564))

(declare-fun m!5971566 () Bool)

(assert (=> b!4947983 m!5971566))

(declare-fun m!5971568 () Bool)

(assert (=> bm!345279 m!5971568))

(assert (=> b!4947989 m!5971182))

(declare-fun m!5971570 () Bool)

(assert (=> b!4947988 m!5971570))

(assert (=> b!4947986 m!5971208))

(declare-fun m!5971572 () Bool)

(assert (=> b!4947986 m!5971572))

(declare-fun m!5971574 () Bool)

(assert (=> b!4947986 m!5971574))

(assert (=> b!4947986 m!5971572))

(assert (=> b!4947986 m!5971206))

(assert (=> b!4947986 m!5971182))

(declare-fun m!5971576 () Bool)

(assert (=> b!4947986 m!5971576))

(assert (=> d!1592814 d!1593198))

(assert (=> d!1592814 d!1593054))

(declare-fun d!1593238 () Bool)

(declare-fun lt!2040658 () Int)

(assert (=> d!1593238 (>= lt!2040658 0)))

(declare-fun e!3091519 () Int)

(assert (=> d!1593238 (= lt!2040658 e!3091519)))

(declare-fun c!844494 () Bool)

(assert (=> d!1593238 (= c!844494 ((_ is Nil!56991) lt!2040416))))

(assert (=> d!1593238 (= (size!37819 lt!2040416) lt!2040658)))

(declare-fun b!4948000 () Bool)

(assert (=> b!4948000 (= e!3091519 0)))

(declare-fun b!4948001 () Bool)

(assert (=> b!4948001 (= e!3091519 (+ 1 (size!37819 (t!367651 lt!2040416))))))

(assert (= (and d!1593238 c!844494) b!4948000))

(assert (= (and d!1593238 (not c!844494)) b!4948001))

(declare-fun m!5971578 () Bool)

(assert (=> b!4948001 m!5971578))

(assert (=> b!4947188 d!1593238))

(assert (=> b!4947188 d!1592786))

(declare-fun d!1593240 () Bool)

(declare-fun lt!2040659 () Int)

(assert (=> d!1593240 (>= lt!2040659 0)))

(declare-fun e!3091520 () Int)

(assert (=> d!1593240 (= lt!2040659 e!3091520)))

(declare-fun c!844495 () Bool)

(assert (=> d!1593240 (= c!844495 ((_ is Nil!56991) lt!2040243))))

(assert (=> d!1593240 (= (size!37819 lt!2040243) lt!2040659)))

(declare-fun b!4948002 () Bool)

(assert (=> b!4948002 (= e!3091520 0)))

(declare-fun b!4948003 () Bool)

(assert (=> b!4948003 (= e!3091520 (+ 1 (size!37819 (t!367651 lt!2040243))))))

(assert (= (and d!1593240 c!844495) b!4948002))

(assert (= (and d!1593240 (not c!844495)) b!4948003))

(declare-fun m!5971580 () Bool)

(assert (=> b!4948003 m!5971580))

(assert (=> b!4947188 d!1593240))

(declare-fun d!1593242 () Bool)

(declare-fun lt!2040660 () Int)

(assert (=> d!1593242 (>= lt!2040660 0)))

(declare-fun e!3091521 () Int)

(assert (=> d!1593242 (= lt!2040660 e!3091521)))

(declare-fun c!844496 () Bool)

(assert (=> d!1593242 (= c!844496 ((_ is Nil!56991) (list!18169 totalInput!685)))))

(assert (=> d!1593242 (= (size!37819 (list!18169 totalInput!685)) lt!2040660)))

(declare-fun b!4948004 () Bool)

(assert (=> b!4948004 (= e!3091521 0)))

(declare-fun b!4948005 () Bool)

(assert (=> b!4948005 (= e!3091521 (+ 1 (size!37819 (t!367651 (list!18169 totalInput!685)))))))

(assert (= (and d!1593242 c!844496) b!4948004))

(assert (= (and d!1593242 (not c!844496)) b!4948005))

(declare-fun m!5971582 () Bool)

(assert (=> b!4948005 m!5971582))

(assert (=> d!1592834 d!1593242))

(assert (=> d!1592834 d!1592788))

(declare-fun d!1593244 () Bool)

(declare-fun lt!2040661 () Int)

(assert (=> d!1593244 (= lt!2040661 (size!37819 (list!18171 (c!844163 totalInput!685))))))

(assert (=> d!1593244 (= lt!2040661 (ite ((_ is Empty!15006) (c!844163 totalInput!685)) 0 (ite ((_ is Leaf!24942) (c!844163 totalInput!685)) (csize!30243 (c!844163 totalInput!685)) (csize!30242 (c!844163 totalInput!685)))))))

(assert (=> d!1593244 (= (size!37822 (c!844163 totalInput!685)) lt!2040661)))

(declare-fun bs!1181888 () Bool)

(assert (= bs!1181888 d!1593244))

(assert (=> bs!1181888 m!5970580))

(assert (=> bs!1181888 m!5970580))

(declare-fun m!5971584 () Bool)

(assert (=> bs!1181888 m!5971584))

(assert (=> d!1592834 d!1593244))

(assert (=> b!4946982 d!1593104))

(assert (=> d!1592816 d!1592782))

(declare-fun lt!2040662 () List!57115)

(declare-fun e!3091522 () Bool)

(declare-fun b!4948009 () Bool)

(assert (=> b!4948009 (= e!3091522 (or (not (= (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991) Nil!56991)) (= lt!2040662 testedP!110)))))

(declare-fun b!4948006 () Bool)

(declare-fun e!3091523 () List!57115)

(assert (=> b!4948006 (= e!3091523 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991))))

(declare-fun b!4948007 () Bool)

(assert (=> b!4948007 (= e!3091523 (Cons!56991 (h!63439 testedP!110) (++!12472 (t!367651 testedP!110) (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991))))))

(declare-fun d!1593246 () Bool)

(assert (=> d!1593246 e!3091522))

(declare-fun res!2111305 () Bool)

(assert (=> d!1593246 (=> (not res!2111305) (not e!3091522))))

(assert (=> d!1593246 (= res!2111305 (= (content!10151 lt!2040662) ((_ map or) (content!10151 testedP!110) (content!10151 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991)))))))

(assert (=> d!1593246 (= lt!2040662 e!3091523)))

(declare-fun c!844497 () Bool)

(assert (=> d!1593246 (= c!844497 ((_ is Nil!56991) testedP!110))))

(assert (=> d!1593246 (= (++!12472 testedP!110 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991)) lt!2040662)))

(declare-fun b!4948008 () Bool)

(declare-fun res!2111306 () Bool)

(assert (=> b!4948008 (=> (not res!2111306) (not e!3091522))))

(assert (=> b!4948008 (= res!2111306 (= (size!37819 lt!2040662) (+ (size!37819 testedP!110) (size!37819 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991)))))))

(assert (= (and d!1593246 c!844497) b!4948006))

(assert (= (and d!1593246 (not c!844497)) b!4948007))

(assert (= (and d!1593246 res!2111305) b!4948008))

(assert (= (and b!4948008 res!2111306) b!4948009))

(declare-fun m!5971586 () Bool)

(assert (=> b!4948007 m!5971586))

(declare-fun m!5971588 () Bool)

(assert (=> d!1593246 m!5971588))

(assert (=> d!1593246 m!5970586))

(declare-fun m!5971590 () Bool)

(assert (=> d!1593246 m!5971590))

(declare-fun m!5971592 () Bool)

(assert (=> b!4948008 m!5971592))

(assert (=> b!4948008 m!5970330))

(declare-fun m!5971594 () Bool)

(assert (=> b!4948008 m!5971594))

(assert (=> d!1592816 d!1593246))

(declare-fun b!4948013 () Bool)

(declare-fun e!3091525 () Bool)

(assert (=> b!4948013 (= e!3091525 (>= (size!37819 lt!2040245) (size!37819 (++!12472 testedP!110 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991)))))))

(declare-fun d!1593248 () Bool)

(assert (=> d!1593248 e!3091525))

(declare-fun res!2111309 () Bool)

(assert (=> d!1593248 (=> res!2111309 e!3091525)))

(declare-fun lt!2040663 () Bool)

(assert (=> d!1593248 (= res!2111309 (not lt!2040663))))

(declare-fun e!3091526 () Bool)

(assert (=> d!1593248 (= lt!2040663 e!3091526)))

(declare-fun res!2111308 () Bool)

(assert (=> d!1593248 (=> res!2111308 e!3091526)))

(assert (=> d!1593248 (= res!2111308 ((_ is Nil!56991) (++!12472 testedP!110 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991))))))

(assert (=> d!1593248 (= (isPrefix!5093 (++!12472 testedP!110 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991)) lt!2040245) lt!2040663)))

(declare-fun b!4948012 () Bool)

(declare-fun e!3091524 () Bool)

(assert (=> b!4948012 (= e!3091524 (isPrefix!5093 (tail!9748 (++!12472 testedP!110 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991))) (tail!9748 lt!2040245)))))

(declare-fun b!4948011 () Bool)

(declare-fun res!2111307 () Bool)

(assert (=> b!4948011 (=> (not res!2111307) (not e!3091524))))

(assert (=> b!4948011 (= res!2111307 (= (head!10613 (++!12472 testedP!110 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991))) (head!10613 lt!2040245)))))

(declare-fun b!4948010 () Bool)

(assert (=> b!4948010 (= e!3091526 e!3091524)))

(declare-fun res!2111310 () Bool)

(assert (=> b!4948010 (=> (not res!2111310) (not e!3091524))))

(assert (=> b!4948010 (= res!2111310 (not ((_ is Nil!56991) lt!2040245)))))

(assert (= (and d!1593248 (not res!2111308)) b!4948010))

(assert (= (and b!4948010 res!2111310) b!4948011))

(assert (= (and b!4948011 res!2111307) b!4948012))

(assert (= (and d!1593248 (not res!2111309)) b!4948013))

(assert (=> b!4948013 m!5970308))

(assert (=> b!4948013 m!5970654))

(declare-fun m!5971596 () Bool)

(assert (=> b!4948013 m!5971596))

(assert (=> b!4948012 m!5970654))

(declare-fun m!5971598 () Bool)

(assert (=> b!4948012 m!5971598))

(assert (=> b!4948012 m!5970350))

(assert (=> b!4948012 m!5971598))

(assert (=> b!4948012 m!5970350))

(declare-fun m!5971600 () Bool)

(assert (=> b!4948012 m!5971600))

(assert (=> b!4948011 m!5970654))

(declare-fun m!5971602 () Bool)

(assert (=> b!4948011 m!5971602))

(assert (=> b!4948011 m!5970354))

(assert (=> d!1592816 d!1593248))

(declare-fun d!1593250 () Bool)

(assert (=> d!1593250 (isPrefix!5093 (++!12472 testedP!110 (Cons!56991 (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) Nil!56991)) lt!2040245)))

(assert (=> d!1593250 true))

(declare-fun _$65!1724 () Unit!147794)

(assert (=> d!1593250 (= (choose!36500 testedP!110 lt!2040245) _$65!1724)))

(declare-fun bs!1181889 () Bool)

(assert (= bs!1181889 d!1593250))

(assert (=> bs!1181889 m!5970288))

(assert (=> bs!1181889 m!5970288))

(assert (=> bs!1181889 m!5970658))

(assert (=> bs!1181889 m!5970654))

(assert (=> bs!1181889 m!5970654))

(assert (=> bs!1181889 m!5970656))

(assert (=> d!1592816 d!1593250))

(assert (=> d!1592816 d!1592794))

(declare-fun d!1593252 () Bool)

(assert (=> d!1593252 (= (head!10613 (getSuffix!3075 lt!2040245 testedP!110)) (h!63439 (getSuffix!3075 lt!2040245 testedP!110)))))

(assert (=> d!1592816 d!1593252))

(declare-fun b!4948014 () Bool)

(declare-fun e!3091527 () Bool)

(declare-fun tp!1387706 () Bool)

(assert (=> b!4948014 (= e!3091527 (and tp_is_empty!36171 tp!1387706))))

(assert (=> b!4947274 (= tp!1387667 e!3091527)))

(assert (= (and b!4947274 ((_ is Cons!56991) (innerList!15094 (xs!18332 (c!844163 totalInput!685))))) b!4948014))

(declare-fun b!4948015 () Bool)

(declare-fun e!3091528 () Bool)

(declare-fun tp!1387707 () Bool)

(assert (=> b!4948015 (= e!3091528 (and tp_is_empty!36171 tp!1387707))))

(assert (=> b!4947263 (= tp!1387660 e!3091528)))

(assert (= (and b!4947263 ((_ is Cons!56991) (t!367651 (t!367651 testedP!110)))) b!4948015))

(declare-fun b!4948016 () Bool)

(declare-fun e!3091529 () Bool)

(declare-fun tp!1387708 () Bool)

(assert (=> b!4948016 (= e!3091529 (and tp_is_empty!36171 tp!1387708))))

(assert (=> b!4947257 (= tp!1387653 e!3091529)))

(assert (= (and b!4947257 ((_ is Cons!56991) (t!367651 (t!367651 testedSuffix!70)))) b!4948016))

(declare-fun tp!1387710 () Bool)

(declare-fun e!3091531 () Bool)

(declare-fun tp!1387711 () Bool)

(declare-fun b!4948017 () Bool)

(assert (=> b!4948017 (= e!3091531 (and (inv!74252 (left!41575 (left!41575 (c!844163 totalInput!685)))) tp!1387710 (inv!74252 (right!41905 (left!41575 (c!844163 totalInput!685)))) tp!1387711))))

(declare-fun b!4948019 () Bool)

(declare-fun e!3091530 () Bool)

(declare-fun tp!1387709 () Bool)

(assert (=> b!4948019 (= e!3091530 tp!1387709)))

(declare-fun b!4948018 () Bool)

(assert (=> b!4948018 (= e!3091531 (and (inv!74258 (xs!18332 (left!41575 (c!844163 totalInput!685)))) e!3091530))))

(assert (=> b!4947272 (= tp!1387668 (and (inv!74252 (left!41575 (c!844163 totalInput!685))) e!3091531))))

(assert (= (and b!4947272 ((_ is Node!15006) (left!41575 (c!844163 totalInput!685)))) b!4948017))

(assert (= b!4948018 b!4948019))

(assert (= (and b!4947272 ((_ is Leaf!24942) (left!41575 (c!844163 totalInput!685)))) b!4948018))

(declare-fun m!5971604 () Bool)

(assert (=> b!4948017 m!5971604))

(declare-fun m!5971606 () Bool)

(assert (=> b!4948017 m!5971606))

(declare-fun m!5971608 () Bool)

(assert (=> b!4948018 m!5971608))

(assert (=> b!4947272 m!5970736))

(declare-fun tp!1387713 () Bool)

(declare-fun tp!1387714 () Bool)

(declare-fun b!4948020 () Bool)

(declare-fun e!3091533 () Bool)

(assert (=> b!4948020 (= e!3091533 (and (inv!74252 (left!41575 (right!41905 (c!844163 totalInput!685)))) tp!1387713 (inv!74252 (right!41905 (right!41905 (c!844163 totalInput!685)))) tp!1387714))))

(declare-fun b!4948022 () Bool)

(declare-fun e!3091532 () Bool)

(declare-fun tp!1387712 () Bool)

(assert (=> b!4948022 (= e!3091532 tp!1387712)))

(declare-fun b!4948021 () Bool)

(assert (=> b!4948021 (= e!3091533 (and (inv!74258 (xs!18332 (right!41905 (c!844163 totalInput!685)))) e!3091532))))

(assert (=> b!4947272 (= tp!1387669 (and (inv!74252 (right!41905 (c!844163 totalInput!685))) e!3091533))))

(assert (= (and b!4947272 ((_ is Node!15006) (right!41905 (c!844163 totalInput!685)))) b!4948020))

(assert (= b!4948021 b!4948022))

(assert (= (and b!4947272 ((_ is Leaf!24942) (right!41905 (c!844163 totalInput!685)))) b!4948021))

(declare-fun m!5971610 () Bool)

(assert (=> b!4948020 m!5971610))

(declare-fun m!5971612 () Bool)

(assert (=> b!4948020 m!5971612))

(declare-fun m!5971614 () Bool)

(assert (=> b!4948021 m!5971614))

(assert (=> b!4947272 m!5970738))

(declare-fun condSetEmpty!28084 () Bool)

(assert (=> setNonEmpty!28082 (= condSetEmpty!28084 (= setRest!28082 ((as const (Array Context!6258 Bool)) false)))))

(declare-fun setRes!28084 () Bool)

(assert (=> setNonEmpty!28082 (= tp!1387674 setRes!28084)))

(declare-fun setIsEmpty!28084 () Bool)

(assert (=> setIsEmpty!28084 setRes!28084))

(declare-fun setNonEmpty!28084 () Bool)

(declare-fun tp!1387715 () Bool)

(declare-fun e!3091534 () Bool)

(declare-fun setElem!28084 () Context!6258)

(assert (=> setNonEmpty!28084 (= setRes!28084 (and tp!1387715 (inv!74250 setElem!28084) e!3091534))))

(declare-fun setRest!28084 () (InoxSet Context!6258))

(assert (=> setNonEmpty!28084 (= setRest!28082 ((_ map or) (store ((as const (Array Context!6258 Bool)) false) setElem!28084 true) setRest!28084))))

(declare-fun b!4948023 () Bool)

(declare-fun tp!1387716 () Bool)

(assert (=> b!4948023 (= e!3091534 tp!1387716)))

(assert (= (and setNonEmpty!28082 condSetEmpty!28084) setIsEmpty!28084))

(assert (= (and setNonEmpty!28082 (not condSetEmpty!28084)) setNonEmpty!28084))

(assert (= setNonEmpty!28084 b!4948023))

(declare-fun m!5971616 () Bool)

(assert (=> setNonEmpty!28084 m!5971616))

(declare-fun b!4948034 () Bool)

(declare-fun e!3091537 () Bool)

(assert (=> b!4948034 (= e!3091537 tp_is_empty!36171)))

(declare-fun b!4948036 () Bool)

(declare-fun tp!1387728 () Bool)

(assert (=> b!4948036 (= e!3091537 tp!1387728)))

(declare-fun b!4948035 () Bool)

(declare-fun tp!1387731 () Bool)

(declare-fun tp!1387730 () Bool)

(assert (=> b!4948035 (= e!3091537 (and tp!1387731 tp!1387730))))

(assert (=> b!4947262 (= tp!1387658 e!3091537)))

(declare-fun b!4948037 () Bool)

(declare-fun tp!1387727 () Bool)

(declare-fun tp!1387729 () Bool)

(assert (=> b!4948037 (= e!3091537 (and tp!1387727 tp!1387729))))

(assert (= (and b!4947262 ((_ is ElementMatch!13487) (h!63440 (exprs!3629 setElem!28076)))) b!4948034))

(assert (= (and b!4947262 ((_ is Concat!22060) (h!63440 (exprs!3629 setElem!28076)))) b!4948035))

(assert (= (and b!4947262 ((_ is Star!13487) (h!63440 (exprs!3629 setElem!28076)))) b!4948036))

(assert (= (and b!4947262 ((_ is Union!13487) (h!63440 (exprs!3629 setElem!28076)))) b!4948037))

(declare-fun b!4948038 () Bool)

(declare-fun e!3091538 () Bool)

(declare-fun tp!1387732 () Bool)

(declare-fun tp!1387733 () Bool)

(assert (=> b!4948038 (= e!3091538 (and tp!1387732 tp!1387733))))

(assert (=> b!4947262 (= tp!1387659 e!3091538)))

(assert (= (and b!4947262 ((_ is Cons!56992) (t!367652 (exprs!3629 setElem!28076)))) b!4948038))

(declare-fun b!4948039 () Bool)

(declare-fun e!3091539 () Bool)

(declare-fun tp!1387734 () Bool)

(declare-fun tp!1387735 () Bool)

(assert (=> b!4948039 (= e!3091539 (and tp!1387734 tp!1387735))))

(assert (=> b!4947279 (= tp!1387675 e!3091539)))

(assert (= (and b!4947279 ((_ is Cons!56992) (exprs!3629 setElem!28082))) b!4948039))

(declare-fun b_lambda!196427 () Bool)

(assert (= b_lambda!196421 (or d!1592800 b_lambda!196427)))

(declare-fun bs!1181890 () Bool)

(declare-fun d!1593254 () Bool)

(assert (= bs!1181890 (and d!1593254 d!1592800)))

(declare-fun validRegex!5956 (Regex!13487) Bool)

(assert (=> bs!1181890 (= (dynLambda!23038 lambda!246717 (h!63440 (exprs!3629 setElem!28076))) (validRegex!5956 (h!63440 (exprs!3629 setElem!28076))))))

(declare-fun m!5971618 () Bool)

(assert (=> bs!1181890 m!5971618))

(assert (=> b!4947737 d!1593254))

(check-sat (not b!4948013) (not b!4947795) (not b!4947660) (not d!1592994) (not b!4947448) (not b!4947494) (not b!4948021) (not b!4947740) (not b!4947434) (not b!4947650) (not d!1593084) (not b!4947726) (not b!4947648) (not b!4947649) (not b!4947848) (not b!4947687) (not b!4947586) (not b_lambda!196427) (not d!1593246) (not b!4947588) (not d!1592932) (not bm!345276) (not b!4947560) (not b!4947800) (not b!4947426) (not d!1593082) (not b!4947595) (not b!4947738) (not b!4947455) (not b!4947606) (not b!4947462) (not b!4947618) (not b!4947727) (not b!4947747) (not b!4947603) (not d!1592992) (not b!4947593) (not b!4947395) (not b!4948007) (not b!4947619) (not b!4947600) (not b!4947454) (not b!4947743) (not b!4948020) (not b!4947605) tp_is_empty!36171 (not b!4947458) (not b!4947452) (not d!1593086) (not d!1593072) (not d!1593244) (not d!1593250) (not b!4948016) (not b!4947989) (not b!4947758) (not bm!345279) (not b!4947683) (not d!1593088) (not b!4947791) (not d!1593138) (not d!1592980) (not b!4947657) (not b!4947272) (not b!4947794) (not bm!345278) (not b!4947845) (not b!4947590) (not b!4947792) (not d!1593122) (not b!4947492) (not d!1593198) (not b!4947397) (not b!4947698) (not b!4947587) (not b!4948001) (not b!4947569) (not b!4947744) (not b!4948015) (not b!4947571) (not b!4947411) (not b!4947447) (not b!4947720) (not b!4948017) (not b!4948012) (not d!1593132) (not b!4948005) (not b!4947430) (not b!4947782) (not b!4947790) (not b!4947440) (not b!4947652) (not b!4947589) (not b!4947662) (not d!1593012) (not d!1593118) (not b!4947615) (not b!4947591) (not b!4947573) (not b!4948035) (not b!4948038) (not b!4947798) (not b!4948008) (not d!1593018) (not b!4947625) (not b!4948018) (not b!4947745) (not b!4947796) (not b!4947742) (not d!1592982) (not b!4947562) (not b!4947706) (not b!4947663) (not d!1593070) (not d!1593140) (not d!1592996) (not b!4947463) (not d!1593056) (not b!4947700) (not b!4947450) (not b!4947988) (not b!4947628) (not d!1593114) (not b!4947446) (not b!4948022) (not b!4947432) (not d!1593060) (not b!4947399) (not b!4947565) (not bm!345281) (not b!4947847) (not b!4947682) (not b!4947627) (not b!4947664) (not b!4947982) (not b!4947992) (not b!4948036) (not b!4947688) (not b!4947567) (not d!1593022) (not d!1593120) (not b!4947983) (not b!4947750) (not d!1592954) (not b!4947410) (not d!1593100) (not bm!345238) (not b!4947825) (not b!4947844) (not b!4947658) (not d!1593102) (not b!4947428) (not b!4947436) (not b!4948014) (not d!1593020) (not b!4947601) (not b!4947749) (not bs!1181890) (not b!4947490) (not b!4947981) (not b!4947620) (not b!4947793) (not d!1593000) (not b!4947383) (not b!4947761) (not b!4947559) (not b!4948037) (not b!4948023) (not setNonEmpty!28084) (not b!4948011) (not b!4947566) (not b!4947437) (not b!4947752) (not d!1592990) (not bm!345245) (not b!4947629) (not b!4947459) (not d!1593066) (not d!1593078) (not d!1593156) (not b!4947846) (not b!4948039) (not d!1593178) (not b!4947599) (not b!4947986) (not b!4947647) (not bm!345277) (not b!4947843) (not b!4948019) (not b!4947596) (not b!4948003) (not b!4947760) (not b!4947654))
(check-sat)
