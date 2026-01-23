; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518420 () Bool)

(assert start!518420)

(declare-fun b!4933721 () Bool)

(declare-fun e!3082637 () Bool)

(declare-fun e!3082641 () Bool)

(assert (=> b!4933721 (= e!3082637 (not e!3082641))))

(declare-fun res!2105633 () Bool)

(assert (=> b!4933721 (=> res!2105633 e!3082641)))

(declare-datatypes ((C!27072 0))(
  ( (C!27073 (val!22870 Int)) )
))
(declare-datatypes ((List!56936 0))(
  ( (Nil!56812) (Cons!56812 (h!63260 C!27072) (t!367416 List!56936)) )
))
(declare-fun testedP!110 () List!56936)

(declare-fun lt!2031879 () List!56936)

(declare-fun isPrefix!5019 (List!56936 List!56936) Bool)

(assert (=> b!4933721 (= res!2105633 (not (isPrefix!5019 testedP!110 lt!2031879)))))

(declare-fun lt!2031881 () List!56936)

(assert (=> b!4933721 (isPrefix!5019 testedP!110 lt!2031881)))

(declare-datatypes ((Unit!147477 0))(
  ( (Unit!147478) )
))
(declare-fun lt!2031880 () Unit!147477)

(declare-fun testedSuffix!70 () List!56936)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3243 (List!56936 List!56936) Unit!147477)

(assert (=> b!4933721 (= lt!2031880 (lemmaConcatTwoListThenFirstIsPrefix!3243 testedP!110 testedSuffix!70))))

(declare-fun b!4933722 () Bool)

(declare-fun e!3082647 () Bool)

(assert (=> b!4933722 (= e!3082641 e!3082647)))

(declare-fun res!2105625 () Bool)

(assert (=> b!4933722 (=> res!2105625 e!3082647)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13421 0))(
  ( (ElementMatch!13421 (c!840849 C!27072)) (Concat!21994 (regOne!27354 Regex!13421) (regTwo!27354 Regex!13421)) (EmptyExpr!13421) (Star!13421 (reg!13750 Regex!13421)) (EmptyLang!13421) (Union!13421 (regOne!27355 Regex!13421) (regTwo!27355 Regex!13421)) )
))
(declare-datatypes ((List!56937 0))(
  ( (Nil!56813) (Cons!56813 (h!63261 Regex!13421) (t!367417 List!56937)) )
))
(declare-datatypes ((Context!6126 0))(
  ( (Context!6127 (exprs!3563 List!56937)) )
))
(declare-fun z!3568 () (InoxSet Context!6126))

(declare-fun lostCauseZipper!739 ((InoxSet Context!6126)) Bool)

(assert (=> b!4933722 (= res!2105625 (lostCauseZipper!739 z!3568))))

(declare-fun lt!2031885 () List!56936)

(assert (=> b!4933722 (and (= testedSuffix!70 lt!2031885) (= lt!2031885 testedSuffix!70))))

(declare-fun lt!2031877 () Unit!147477)

(declare-fun lemmaSamePrefixThenSameSuffix!2417 (List!56936 List!56936 List!56936 List!56936 List!56936) Unit!147477)

(assert (=> b!4933722 (= lt!2031877 (lemmaSamePrefixThenSameSuffix!2417 testedP!110 testedSuffix!70 testedP!110 lt!2031885 lt!2031879))))

(declare-fun getSuffix!3003 (List!56936 List!56936) List!56936)

(assert (=> b!4933722 (= lt!2031885 (getSuffix!3003 lt!2031879 testedP!110))))

(declare-fun b!4933723 () Bool)

(declare-fun e!3082642 () Bool)

(declare-fun e!3082648 () Bool)

(assert (=> b!4933723 (= e!3082642 e!3082648)))

(declare-fun res!2105626 () Bool)

(assert (=> b!4933723 (=> res!2105626 e!3082648)))

(declare-fun lt!2031890 () C!27072)

(declare-fun head!10558 (List!56936) C!27072)

(assert (=> b!4933723 (= res!2105626 (not (= lt!2031890 (head!10558 testedSuffix!70))))))

(declare-datatypes ((IArray!29921 0))(
  ( (IArray!29922 (innerList!15018 List!56936)) )
))
(declare-datatypes ((Conc!14930 0))(
  ( (Node!14930 (left!41429 Conc!14930) (right!41759 Conc!14930) (csize!30090 Int) (cheight!15141 Int)) (Leaf!24828 (xs!18254 IArray!29921) (csize!30091 Int)) (Empty!14930) )
))
(declare-datatypes ((BalanceConc!29290 0))(
  ( (BalanceConc!29291 (c!840850 Conc!14930)) )
))
(declare-fun totalInput!685 () BalanceConc!29290)

(declare-fun testedPSize!70 () Int)

(declare-fun apply!13722 (BalanceConc!29290 Int) C!27072)

(assert (=> b!4933723 (= lt!2031890 (apply!13722 totalInput!685 testedPSize!70))))

(declare-fun drop!2252 (List!56936 Int) List!56936)

(declare-fun apply!13723 (List!56936 Int) C!27072)

(assert (=> b!4933723 (= (head!10558 (drop!2252 lt!2031879 testedPSize!70)) (apply!13723 lt!2031879 testedPSize!70))))

(declare-fun lt!2031874 () Unit!147477)

(declare-fun lemmaDropApply!1310 (List!56936 Int) Unit!147477)

(assert (=> b!4933723 (= lt!2031874 (lemmaDropApply!1310 lt!2031879 testedPSize!70))))

(declare-fun lt!2031892 () List!56936)

(declare-fun lt!2031875 () List!56936)

(assert (=> b!4933723 (not (or (not (= lt!2031875 testedP!110)) (not (= lt!2031892 testedSuffix!70))))))

(declare-fun lt!2031893 () Unit!147477)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!687 (List!56936 List!56936 List!56936 List!56936) Unit!147477)

(assert (=> b!4933723 (= lt!2031893 (lemmaConcatSameAndSameSizesThenSameLists!687 lt!2031875 lt!2031892 testedP!110 testedSuffix!70))))

(declare-fun b!4933724 () Bool)

(declare-fun e!3082640 () Bool)

(declare-fun tp_is_empty!36019 () Bool)

(declare-fun tp!1385040 () Bool)

(assert (=> b!4933724 (= e!3082640 (and tp_is_empty!36019 tp!1385040))))

(declare-fun b!4933725 () Bool)

(declare-fun res!2105628 () Bool)

(assert (=> b!4933725 (=> res!2105628 e!3082642)))

(declare-datatypes ((tuple2!61302 0))(
  ( (tuple2!61303 (_1!33954 BalanceConc!29290) (_2!33954 BalanceConc!29290)) )
))
(declare-fun lt!2031891 () tuple2!61302)

(declare-fun size!37622 (BalanceConc!29290) Int)

(assert (=> b!4933725 (= res!2105628 (not (= (size!37622 (_1!33954 lt!2031891)) testedPSize!70)))))

(declare-fun setNonEmpty!27746 () Bool)

(declare-fun e!3082643 () Bool)

(declare-fun setElem!27746 () Context!6126)

(declare-fun tp!1385041 () Bool)

(declare-fun setRes!27746 () Bool)

(declare-fun inv!73792 (Context!6126) Bool)

(assert (=> setNonEmpty!27746 (= setRes!27746 (and tp!1385041 (inv!73792 setElem!27746) e!3082643))))

(declare-fun setRest!27746 () (InoxSet Context!6126))

(assert (=> setNonEmpty!27746 (= z!3568 ((_ map or) (store ((as const (Array Context!6126 Bool)) false) setElem!27746 true) setRest!27746))))

(declare-fun b!4933726 () Bool)

(declare-fun e!3082649 () Bool)

(declare-fun e!3082645 () Bool)

(assert (=> b!4933726 (= e!3082649 e!3082645)))

(declare-fun res!2105631 () Bool)

(assert (=> b!4933726 (=> (not res!2105631) (not e!3082645))))

(declare-fun lt!2031888 () Int)

(assert (=> b!4933726 (= res!2105631 (= testedPSize!70 lt!2031888))))

(declare-fun size!37623 (List!56936) Int)

(assert (=> b!4933726 (= lt!2031888 (size!37623 testedP!110))))

(declare-fun b!4933727 () Bool)

(assert (=> b!4933727 (= e!3082647 e!3082642)))

(declare-fun res!2105632 () Bool)

(assert (=> b!4933727 (=> res!2105632 e!3082642)))

(declare-fun ++!12386 (List!56936 List!56936) List!56936)

(assert (=> b!4933727 (= res!2105632 (not (= (++!12386 lt!2031875 lt!2031892) lt!2031879)))))

(declare-fun list!18038 (BalanceConc!29290) List!56936)

(assert (=> b!4933727 (= lt!2031892 (list!18038 (_2!33954 lt!2031891)))))

(assert (=> b!4933727 (= lt!2031875 (list!18038 (_1!33954 lt!2031891)))))

(declare-fun splitAt!319 (BalanceConc!29290 Int) tuple2!61302)

(assert (=> b!4933727 (= lt!2031891 (splitAt!319 totalInput!685 testedPSize!70))))

(declare-fun b!4933728 () Bool)

(declare-fun e!3082638 () Unit!147477)

(declare-fun Unit!147479 () Unit!147477)

(assert (=> b!4933728 (= e!3082638 Unit!147479)))

(declare-fun b!4933729 () Bool)

(declare-fun e!3082646 () Bool)

(declare-fun tp!1385042 () Bool)

(assert (=> b!4933729 (= e!3082646 (and tp_is_empty!36019 tp!1385042))))

(declare-fun b!4933730 () Bool)

(declare-fun e!3082650 () Bool)

(assert (=> b!4933730 (= e!3082650 (not (= testedSuffix!70 Nil!56812)))))

(declare-fun res!2105627 () Bool)

(assert (=> start!518420 (=> (not res!2105627) (not e!3082649))))

(assert (=> start!518420 (= res!2105627 (= lt!2031881 lt!2031879))))

(assert (=> start!518420 (= lt!2031879 (list!18038 totalInput!685))))

(assert (=> start!518420 (= lt!2031881 (++!12386 testedP!110 testedSuffix!70))))

(assert (=> start!518420 e!3082649))

(assert (=> start!518420 e!3082646))

(declare-fun condSetEmpty!27746 () Bool)

(assert (=> start!518420 (= condSetEmpty!27746 (= z!3568 ((as const (Array Context!6126 Bool)) false)))))

(assert (=> start!518420 setRes!27746))

(assert (=> start!518420 true))

(declare-fun e!3082644 () Bool)

(declare-fun inv!73793 (BalanceConc!29290) Bool)

(assert (=> start!518420 (and (inv!73793 totalInput!685) e!3082644)))

(assert (=> start!518420 e!3082640))

(declare-fun b!4933731 () Bool)

(declare-fun res!2105634 () Bool)

(assert (=> b!4933731 (=> res!2105634 e!3082647)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4933731 (= res!2105634 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4933732 () Bool)

(declare-fun tp!1385043 () Bool)

(assert (=> b!4933732 (= e!3082643 tp!1385043)))

(declare-fun setIsEmpty!27746 () Bool)

(assert (=> setIsEmpty!27746 setRes!27746))

(declare-fun b!4933733 () Bool)

(declare-fun Unit!147480 () Unit!147477)

(assert (=> b!4933733 (= e!3082638 Unit!147480)))

(declare-fun lt!2031886 () Unit!147477)

(declare-fun lemmaIsPrefixRefl!3385 (List!56936 List!56936) Unit!147477)

(assert (=> b!4933733 (= lt!2031886 (lemmaIsPrefixRefl!3385 lt!2031879 lt!2031879))))

(assert (=> b!4933733 (isPrefix!5019 lt!2031879 lt!2031879)))

(declare-fun lt!2031889 () Unit!147477)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1143 (List!56936 List!56936 List!56936) Unit!147477)

(assert (=> b!4933733 (= lt!2031889 (lemmaIsPrefixSameLengthThenSameList!1143 lt!2031879 testedP!110 lt!2031879))))

(assert (=> b!4933733 false))

(declare-fun b!4933734 () Bool)

(declare-fun e!3082639 () Bool)

(assert (=> b!4933734 (= e!3082639 e!3082650)))

(declare-fun res!2105624 () Bool)

(assert (=> b!4933734 (=> res!2105624 e!3082650)))

(declare-fun nullableZipper!826 ((InoxSet Context!6126)) Bool)

(assert (=> b!4933734 (= res!2105624 (not (nullableZipper!826 z!3568)))))

(declare-fun lt!2031882 () List!56936)

(assert (=> b!4933734 (= (++!12386 (++!12386 testedP!110 (Cons!56812 lt!2031890 Nil!56812)) lt!2031882) lt!2031879)))

(declare-fun lt!2031887 () Unit!147477)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1401 (List!56936 C!27072 List!56936 List!56936) Unit!147477)

(assert (=> b!4933734 (= lt!2031887 (lemmaMoveElementToOtherListKeepsConcatEq!1401 testedP!110 lt!2031890 lt!2031882 lt!2031879))))

(declare-fun tail!9697 (List!56936) List!56936)

(assert (=> b!4933734 (= lt!2031882 (tail!9697 testedSuffix!70))))

(assert (=> b!4933734 (isPrefix!5019 (++!12386 testedP!110 (Cons!56812 (head!10558 lt!2031885) Nil!56812)) lt!2031879)))

(declare-fun lt!2031878 () Unit!147477)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!789 (List!56936 List!56936) Unit!147477)

(assert (=> b!4933734 (= lt!2031878 (lemmaAddHeadSuffixToPrefixStillPrefix!789 testedP!110 lt!2031879))))

(declare-fun b!4933735 () Bool)

(assert (=> b!4933735 (= e!3082648 e!3082639)))

(declare-fun res!2105630 () Bool)

(assert (=> b!4933735 (=> res!2105630 e!3082639)))

(declare-fun lt!2031884 () Int)

(assert (=> b!4933735 (= res!2105630 (>= lt!2031888 lt!2031884))))

(declare-fun lt!2031883 () Unit!147477)

(assert (=> b!4933735 (= lt!2031883 e!3082638)))

(declare-fun c!840848 () Bool)

(assert (=> b!4933735 (= c!840848 (= lt!2031888 lt!2031884))))

(assert (=> b!4933735 (<= lt!2031888 (size!37623 lt!2031879))))

(declare-fun lt!2031876 () Unit!147477)

(declare-fun lemmaIsPrefixThenSmallerEqSize!707 (List!56936 List!56936) Unit!147477)

(assert (=> b!4933735 (= lt!2031876 (lemmaIsPrefixThenSmallerEqSize!707 testedP!110 lt!2031879))))

(declare-fun b!4933736 () Bool)

(assert (=> b!4933736 (= e!3082645 e!3082637)))

(declare-fun res!2105629 () Bool)

(assert (=> b!4933736 (=> (not res!2105629) (not e!3082637))))

(assert (=> b!4933736 (= res!2105629 (= totalInputSize!132 lt!2031884))))

(assert (=> b!4933736 (= lt!2031884 (size!37622 totalInput!685))))

(declare-fun b!4933737 () Bool)

(declare-fun tp!1385039 () Bool)

(declare-fun inv!73794 (Conc!14930) Bool)

(assert (=> b!4933737 (= e!3082644 (and (inv!73794 (c!840850 totalInput!685)) tp!1385039))))

(assert (= (and start!518420 res!2105627) b!4933726))

(assert (= (and b!4933726 res!2105631) b!4933736))

(assert (= (and b!4933736 res!2105629) b!4933721))

(assert (= (and b!4933721 (not res!2105633)) b!4933722))

(assert (= (and b!4933722 (not res!2105625)) b!4933731))

(assert (= (and b!4933731 (not res!2105634)) b!4933727))

(assert (= (and b!4933727 (not res!2105632)) b!4933725))

(assert (= (and b!4933725 (not res!2105628)) b!4933723))

(assert (= (and b!4933723 (not res!2105626)) b!4933735))

(assert (= (and b!4933735 c!840848) b!4933733))

(assert (= (and b!4933735 (not c!840848)) b!4933728))

(assert (= (and b!4933735 (not res!2105630)) b!4933734))

(assert (= (and b!4933734 (not res!2105624)) b!4933730))

(get-info :version)

(assert (= (and start!518420 ((_ is Cons!56812) testedP!110)) b!4933729))

(assert (= (and start!518420 condSetEmpty!27746) setIsEmpty!27746))

(assert (= (and start!518420 (not condSetEmpty!27746)) setNonEmpty!27746))

(assert (= setNonEmpty!27746 b!4933732))

(assert (= start!518420 b!4933737))

(assert (= (and start!518420 ((_ is Cons!56812) testedSuffix!70)) b!4933724))

(declare-fun m!5954294 () Bool)

(assert (=> b!4933736 m!5954294))

(declare-fun m!5954296 () Bool)

(assert (=> start!518420 m!5954296))

(declare-fun m!5954298 () Bool)

(assert (=> start!518420 m!5954298))

(declare-fun m!5954300 () Bool)

(assert (=> start!518420 m!5954300))

(declare-fun m!5954302 () Bool)

(assert (=> b!4933735 m!5954302))

(declare-fun m!5954304 () Bool)

(assert (=> b!4933735 m!5954304))

(declare-fun m!5954306 () Bool)

(assert (=> b!4933725 m!5954306))

(declare-fun m!5954308 () Bool)

(assert (=> b!4933722 m!5954308))

(declare-fun m!5954310 () Bool)

(assert (=> b!4933722 m!5954310))

(declare-fun m!5954312 () Bool)

(assert (=> b!4933722 m!5954312))

(declare-fun m!5954314 () Bool)

(assert (=> b!4933733 m!5954314))

(declare-fun m!5954316 () Bool)

(assert (=> b!4933733 m!5954316))

(declare-fun m!5954318 () Bool)

(assert (=> b!4933733 m!5954318))

(declare-fun m!5954320 () Bool)

(assert (=> b!4933737 m!5954320))

(declare-fun m!5954322 () Bool)

(assert (=> setNonEmpty!27746 m!5954322))

(declare-fun m!5954324 () Bool)

(assert (=> b!4933727 m!5954324))

(declare-fun m!5954326 () Bool)

(assert (=> b!4933727 m!5954326))

(declare-fun m!5954328 () Bool)

(assert (=> b!4933727 m!5954328))

(declare-fun m!5954330 () Bool)

(assert (=> b!4933727 m!5954330))

(declare-fun m!5954332 () Bool)

(assert (=> b!4933721 m!5954332))

(declare-fun m!5954334 () Bool)

(assert (=> b!4933721 m!5954334))

(declare-fun m!5954336 () Bool)

(assert (=> b!4933721 m!5954336))

(declare-fun m!5954338 () Bool)

(assert (=> b!4933723 m!5954338))

(declare-fun m!5954340 () Bool)

(assert (=> b!4933723 m!5954340))

(declare-fun m!5954342 () Bool)

(assert (=> b!4933723 m!5954342))

(declare-fun m!5954344 () Bool)

(assert (=> b!4933723 m!5954344))

(assert (=> b!4933723 m!5954342))

(declare-fun m!5954346 () Bool)

(assert (=> b!4933723 m!5954346))

(declare-fun m!5954348 () Bool)

(assert (=> b!4933723 m!5954348))

(declare-fun m!5954350 () Bool)

(assert (=> b!4933723 m!5954350))

(declare-fun m!5954352 () Bool)

(assert (=> b!4933734 m!5954352))

(declare-fun m!5954354 () Bool)

(assert (=> b!4933734 m!5954354))

(declare-fun m!5954356 () Bool)

(assert (=> b!4933734 m!5954356))

(declare-fun m!5954358 () Bool)

(assert (=> b!4933734 m!5954358))

(assert (=> b!4933734 m!5954358))

(declare-fun m!5954360 () Bool)

(assert (=> b!4933734 m!5954360))

(declare-fun m!5954362 () Bool)

(assert (=> b!4933734 m!5954362))

(assert (=> b!4933734 m!5954352))

(declare-fun m!5954364 () Bool)

(assert (=> b!4933734 m!5954364))

(declare-fun m!5954366 () Bool)

(assert (=> b!4933734 m!5954366))

(declare-fun m!5954368 () Bool)

(assert (=> b!4933734 m!5954368))

(declare-fun m!5954370 () Bool)

(assert (=> b!4933726 m!5954370))

(check-sat (not b!4933729) (not b!4933735) (not b!4933734) (not b!4933736) (not b!4933727) (not start!518420) (not b!4933721) (not b!4933723) (not b!4933724) (not b!4933732) (not b!4933733) (not b!4933725) (not b!4933737) (not b!4933726) (not b!4933722) (not setNonEmpty!27746) tp_is_empty!36019)
(check-sat)
(get-model)

(declare-fun bs!1180537 () Bool)

(declare-fun b!4933871 () Bool)

(declare-fun d!1588090 () Bool)

(assert (= bs!1180537 (and b!4933871 d!1588090)))

(declare-fun lambda!245721 () Int)

(declare-fun lambda!245720 () Int)

(assert (=> bs!1180537 (not (= lambda!245721 lambda!245720))))

(declare-fun bs!1180538 () Bool)

(declare-fun b!4933872 () Bool)

(assert (= bs!1180538 (and b!4933872 d!1588090)))

(declare-fun lambda!245722 () Int)

(assert (=> bs!1180538 (not (= lambda!245722 lambda!245720))))

(declare-fun bs!1180539 () Bool)

(assert (= bs!1180539 (and b!4933872 b!4933871)))

(assert (=> bs!1180539 (= lambda!245722 lambda!245721)))

(declare-fun lt!2032003 () Bool)

(declare-datatypes ((Option!14181 0))(
  ( (None!14180) (Some!14180 (v!50150 List!56936)) )
))
(declare-fun isEmpty!30606 (Option!14181) Bool)

(declare-fun getLanguageWitness!639 ((InoxSet Context!6126)) Option!14181)

(assert (=> d!1588090 (= lt!2032003 (isEmpty!30606 (getLanguageWitness!639 z!3568)))))

(declare-fun forall!13181 ((InoxSet Context!6126) Int) Bool)

(assert (=> d!1588090 (= lt!2032003 (forall!13181 z!3568 lambda!245720))))

(declare-fun lt!2032006 () Unit!147477)

(declare-fun e!3082739 () Unit!147477)

(assert (=> d!1588090 (= lt!2032006 e!3082739)))

(declare-fun c!840906 () Bool)

(assert (=> d!1588090 (= c!840906 (not (forall!13181 z!3568 lambda!245720)))))

(assert (=> d!1588090 (= (lostCauseZipper!739 z!3568) lt!2032003)))

(declare-fun Unit!147483 () Unit!147477)

(assert (=> b!4933872 (= e!3082739 Unit!147483)))

(declare-datatypes ((List!56939 0))(
  ( (Nil!56815) (Cons!56815 (h!63263 Context!6126) (t!367419 List!56939)) )
))
(declare-fun lt!2032001 () List!56939)

(declare-fun call!344253 () List!56939)

(assert (=> b!4933872 (= lt!2032001 call!344253)))

(declare-fun lt!2032005 () Unit!147477)

(declare-fun lemmaForallThenNotExists!184 (List!56939 Int) Unit!147477)

(assert (=> b!4933872 (= lt!2032005 (lemmaForallThenNotExists!184 lt!2032001 lambda!245720))))

(declare-fun call!344252 () Bool)

(assert (=> b!4933872 (not call!344252)))

(declare-fun lt!2032007 () Unit!147477)

(assert (=> b!4933872 (= lt!2032007 lt!2032005)))

(declare-fun Unit!147484 () Unit!147477)

(assert (=> b!4933871 (= e!3082739 Unit!147484)))

(declare-fun lt!2032004 () List!56939)

(assert (=> b!4933871 (= lt!2032004 call!344253)))

(declare-fun lt!2032002 () Unit!147477)

(declare-fun lemmaNotForallThenExists!201 (List!56939 Int) Unit!147477)

(assert (=> b!4933871 (= lt!2032002 (lemmaNotForallThenExists!201 lt!2032004 lambda!245720))))

(assert (=> b!4933871 call!344252))

(declare-fun lt!2032000 () Unit!147477)

(assert (=> b!4933871 (= lt!2032000 lt!2032002)))

(declare-fun bm!344247 () Bool)

(declare-fun exists!1272 (List!56939 Int) Bool)

(assert (=> bm!344247 (= call!344252 (exists!1272 (ite c!840906 lt!2032004 lt!2032001) (ite c!840906 lambda!245721 lambda!245722)))))

(declare-fun bm!344248 () Bool)

(declare-fun toList!7963 ((InoxSet Context!6126)) List!56939)

(assert (=> bm!344248 (= call!344253 (toList!7963 z!3568))))

(assert (= (and d!1588090 c!840906) b!4933871))

(assert (= (and d!1588090 (not c!840906)) b!4933872))

(assert (= (or b!4933871 b!4933872) bm!344247))

(assert (= (or b!4933871 b!4933872) bm!344248))

(declare-fun m!5954562 () Bool)

(assert (=> b!4933872 m!5954562))

(declare-fun m!5954564 () Bool)

(assert (=> bm!344248 m!5954564))

(declare-fun m!5954566 () Bool)

(assert (=> b!4933871 m!5954566))

(declare-fun m!5954568 () Bool)

(assert (=> bm!344247 m!5954568))

(declare-fun m!5954570 () Bool)

(assert (=> d!1588090 m!5954570))

(assert (=> d!1588090 m!5954570))

(declare-fun m!5954572 () Bool)

(assert (=> d!1588090 m!5954572))

(declare-fun m!5954574 () Bool)

(assert (=> d!1588090 m!5954574))

(assert (=> d!1588090 m!5954574))

(assert (=> b!4933722 d!1588090))

(declare-fun d!1588170 () Bool)

(assert (=> d!1588170 (= testedSuffix!70 lt!2031885)))

(declare-fun lt!2032010 () Unit!147477)

(declare-fun choose!36207 (List!56936 List!56936 List!56936 List!56936 List!56936) Unit!147477)

(assert (=> d!1588170 (= lt!2032010 (choose!36207 testedP!110 testedSuffix!70 testedP!110 lt!2031885 lt!2031879))))

(assert (=> d!1588170 (isPrefix!5019 testedP!110 lt!2031879)))

(assert (=> d!1588170 (= (lemmaSamePrefixThenSameSuffix!2417 testedP!110 testedSuffix!70 testedP!110 lt!2031885 lt!2031879) lt!2032010)))

(declare-fun bs!1180540 () Bool)

(assert (= bs!1180540 d!1588170))

(declare-fun m!5954584 () Bool)

(assert (=> bs!1180540 m!5954584))

(assert (=> bs!1180540 m!5954332))

(assert (=> b!4933722 d!1588170))

(declare-fun d!1588172 () Bool)

(declare-fun lt!2032013 () List!56936)

(assert (=> d!1588172 (= (++!12386 testedP!110 lt!2032013) lt!2031879)))

(declare-fun e!3082758 () List!56936)

(assert (=> d!1588172 (= lt!2032013 e!3082758)))

(declare-fun c!840909 () Bool)

(assert (=> d!1588172 (= c!840909 ((_ is Cons!56812) testedP!110))))

(assert (=> d!1588172 (>= (size!37623 lt!2031879) (size!37623 testedP!110))))

(assert (=> d!1588172 (= (getSuffix!3003 lt!2031879 testedP!110) lt!2032013)))

(declare-fun b!4933904 () Bool)

(assert (=> b!4933904 (= e!3082758 (getSuffix!3003 (tail!9697 lt!2031879) (t!367416 testedP!110)))))

(declare-fun b!4933905 () Bool)

(assert (=> b!4933905 (= e!3082758 lt!2031879)))

(assert (= (and d!1588172 c!840909) b!4933904))

(assert (= (and d!1588172 (not c!840909)) b!4933905))

(declare-fun m!5954586 () Bool)

(assert (=> d!1588172 m!5954586))

(assert (=> d!1588172 m!5954302))

(assert (=> d!1588172 m!5954370))

(declare-fun m!5954588 () Bool)

(assert (=> b!4933904 m!5954588))

(assert (=> b!4933904 m!5954588))

(declare-fun m!5954590 () Bool)

(assert (=> b!4933904 m!5954590))

(assert (=> b!4933722 d!1588172))

(declare-fun b!4933925 () Bool)

(declare-fun e!3082772 () List!56936)

(assert (=> b!4933925 (= e!3082772 lt!2031879)))

(declare-fun b!4933926 () Bool)

(declare-fun e!3082773 () Bool)

(declare-fun lt!2032016 () List!56936)

(declare-fun e!3082769 () Int)

(assert (=> b!4933926 (= e!3082773 (= (size!37623 lt!2032016) e!3082769))))

(declare-fun c!840919 () Bool)

(assert (=> b!4933926 (= c!840919 (<= testedPSize!70 0))))

(declare-fun bm!344251 () Bool)

(declare-fun call!344256 () Int)

(assert (=> bm!344251 (= call!344256 (size!37623 lt!2031879))))

(declare-fun b!4933927 () Bool)

(declare-fun e!3082770 () Int)

(assert (=> b!4933927 (= e!3082769 e!3082770)))

(declare-fun c!840918 () Bool)

(assert (=> b!4933927 (= c!840918 (>= testedPSize!70 call!344256))))

(declare-fun b!4933928 () Bool)

(assert (=> b!4933928 (= e!3082769 call!344256)))

(declare-fun d!1588174 () Bool)

(assert (=> d!1588174 e!3082773))

(declare-fun res!2105696 () Bool)

(assert (=> d!1588174 (=> (not res!2105696) (not e!3082773))))

(declare-fun content!10098 (List!56936) (InoxSet C!27072))

(assert (=> d!1588174 (= res!2105696 (= ((_ map implies) (content!10098 lt!2032016) (content!10098 lt!2031879)) ((as const (InoxSet C!27072)) true)))))

(declare-fun e!3082771 () List!56936)

(assert (=> d!1588174 (= lt!2032016 e!3082771)))

(declare-fun c!840921 () Bool)

(assert (=> d!1588174 (= c!840921 ((_ is Nil!56812) lt!2031879))))

(assert (=> d!1588174 (= (drop!2252 lt!2031879 testedPSize!70) lt!2032016)))

(declare-fun b!4933924 () Bool)

(assert (=> b!4933924 (= e!3082770 0)))

(declare-fun b!4933929 () Bool)

(assert (=> b!4933929 (= e!3082770 (- call!344256 testedPSize!70))))

(declare-fun b!4933930 () Bool)

(assert (=> b!4933930 (= e!3082771 e!3082772)))

(declare-fun c!840920 () Bool)

(assert (=> b!4933930 (= c!840920 (<= testedPSize!70 0))))

(declare-fun b!4933931 () Bool)

(assert (=> b!4933931 (= e!3082771 Nil!56812)))

(declare-fun b!4933932 () Bool)

(assert (=> b!4933932 (= e!3082772 (drop!2252 (t!367416 lt!2031879) (- testedPSize!70 1)))))

(assert (= (and d!1588174 c!840921) b!4933931))

(assert (= (and d!1588174 (not c!840921)) b!4933930))

(assert (= (and b!4933930 c!840920) b!4933925))

(assert (= (and b!4933930 (not c!840920)) b!4933932))

(assert (= (and d!1588174 res!2105696) b!4933926))

(assert (= (and b!4933926 c!840919) b!4933928))

(assert (= (and b!4933926 (not c!840919)) b!4933927))

(assert (= (and b!4933927 c!840918) b!4933924))

(assert (= (and b!4933927 (not c!840918)) b!4933929))

(assert (= (or b!4933928 b!4933927 b!4933929) bm!344251))

(declare-fun m!5954592 () Bool)

(assert (=> b!4933926 m!5954592))

(assert (=> bm!344251 m!5954302))

(declare-fun m!5954594 () Bool)

(assert (=> d!1588174 m!5954594))

(declare-fun m!5954596 () Bool)

(assert (=> d!1588174 m!5954596))

(declare-fun m!5954598 () Bool)

(assert (=> b!4933932 m!5954598))

(assert (=> b!4933723 d!1588174))

(declare-fun d!1588176 () Bool)

(assert (=> d!1588176 (= (head!10558 testedSuffix!70) (h!63260 testedSuffix!70))))

(assert (=> b!4933723 d!1588176))

(declare-fun d!1588178 () Bool)

(assert (=> d!1588178 (= (head!10558 (drop!2252 lt!2031879 testedPSize!70)) (h!63260 (drop!2252 lt!2031879 testedPSize!70)))))

(assert (=> b!4933723 d!1588178))

(declare-fun d!1588180 () Bool)

(declare-fun lt!2032019 () C!27072)

(declare-fun contains!19470 (List!56936 C!27072) Bool)

(assert (=> d!1588180 (contains!19470 lt!2031879 lt!2032019)))

(declare-fun e!3082779 () C!27072)

(assert (=> d!1588180 (= lt!2032019 e!3082779)))

(declare-fun c!840924 () Bool)

(assert (=> d!1588180 (= c!840924 (= testedPSize!70 0))))

(declare-fun e!3082778 () Bool)

(assert (=> d!1588180 e!3082778))

(declare-fun res!2105699 () Bool)

(assert (=> d!1588180 (=> (not res!2105699) (not e!3082778))))

(assert (=> d!1588180 (= res!2105699 (<= 0 testedPSize!70))))

(assert (=> d!1588180 (= (apply!13723 lt!2031879 testedPSize!70) lt!2032019)))

(declare-fun b!4933939 () Bool)

(assert (=> b!4933939 (= e!3082778 (< testedPSize!70 (size!37623 lt!2031879)))))

(declare-fun b!4933940 () Bool)

(assert (=> b!4933940 (= e!3082779 (head!10558 lt!2031879))))

(declare-fun b!4933941 () Bool)

(assert (=> b!4933941 (= e!3082779 (apply!13723 (tail!9697 lt!2031879) (- testedPSize!70 1)))))

(assert (= (and d!1588180 res!2105699) b!4933939))

(assert (= (and d!1588180 c!840924) b!4933940))

(assert (= (and d!1588180 (not c!840924)) b!4933941))

(declare-fun m!5954600 () Bool)

(assert (=> d!1588180 m!5954600))

(assert (=> b!4933939 m!5954302))

(declare-fun m!5954602 () Bool)

(assert (=> b!4933940 m!5954602))

(assert (=> b!4933941 m!5954588))

(assert (=> b!4933941 m!5954588))

(declare-fun m!5954604 () Bool)

(assert (=> b!4933941 m!5954604))

(assert (=> b!4933723 d!1588180))

(declare-fun d!1588182 () Bool)

(assert (=> d!1588182 (= (head!10558 (drop!2252 lt!2031879 testedPSize!70)) (apply!13723 lt!2031879 testedPSize!70))))

(declare-fun lt!2032022 () Unit!147477)

(declare-fun choose!36209 (List!56936 Int) Unit!147477)

(assert (=> d!1588182 (= lt!2032022 (choose!36209 lt!2031879 testedPSize!70))))

(declare-fun e!3082782 () Bool)

(assert (=> d!1588182 e!3082782))

(declare-fun res!2105702 () Bool)

(assert (=> d!1588182 (=> (not res!2105702) (not e!3082782))))

(assert (=> d!1588182 (= res!2105702 (>= testedPSize!70 0))))

(assert (=> d!1588182 (= (lemmaDropApply!1310 lt!2031879 testedPSize!70) lt!2032022)))

(declare-fun b!4933944 () Bool)

(assert (=> b!4933944 (= e!3082782 (< testedPSize!70 (size!37623 lt!2031879)))))

(assert (= (and d!1588182 res!2105702) b!4933944))

(assert (=> d!1588182 m!5954342))

(assert (=> d!1588182 m!5954342))

(assert (=> d!1588182 m!5954344))

(assert (=> d!1588182 m!5954338))

(declare-fun m!5954606 () Bool)

(assert (=> d!1588182 m!5954606))

(assert (=> b!4933944 m!5954302))

(assert (=> b!4933723 d!1588182))

(declare-fun d!1588184 () Bool)

(assert (=> d!1588184 (and (= lt!2031875 testedP!110) (= lt!2031892 testedSuffix!70))))

(declare-fun lt!2032025 () Unit!147477)

(declare-fun choose!36210 (List!56936 List!56936 List!56936 List!56936) Unit!147477)

(assert (=> d!1588184 (= lt!2032025 (choose!36210 lt!2031875 lt!2031892 testedP!110 testedSuffix!70))))

(assert (=> d!1588184 (= (++!12386 lt!2031875 lt!2031892) (++!12386 testedP!110 testedSuffix!70))))

(assert (=> d!1588184 (= (lemmaConcatSameAndSameSizesThenSameLists!687 lt!2031875 lt!2031892 testedP!110 testedSuffix!70) lt!2032025)))

(declare-fun bs!1180541 () Bool)

(assert (= bs!1180541 d!1588184))

(declare-fun m!5954608 () Bool)

(assert (=> bs!1180541 m!5954608))

(assert (=> bs!1180541 m!5954324))

(assert (=> bs!1180541 m!5954298))

(assert (=> b!4933723 d!1588184))

(declare-fun d!1588186 () Bool)

(declare-fun lt!2032028 () C!27072)

(assert (=> d!1588186 (= lt!2032028 (apply!13723 (list!18038 totalInput!685) testedPSize!70))))

(declare-fun apply!13725 (Conc!14930 Int) C!27072)

(assert (=> d!1588186 (= lt!2032028 (apply!13725 (c!840850 totalInput!685) testedPSize!70))))

(declare-fun e!3082785 () Bool)

(assert (=> d!1588186 e!3082785))

(declare-fun res!2105705 () Bool)

(assert (=> d!1588186 (=> (not res!2105705) (not e!3082785))))

(assert (=> d!1588186 (= res!2105705 (<= 0 testedPSize!70))))

(assert (=> d!1588186 (= (apply!13722 totalInput!685 testedPSize!70) lt!2032028)))

(declare-fun b!4933947 () Bool)

(assert (=> b!4933947 (= e!3082785 (< testedPSize!70 (size!37622 totalInput!685)))))

(assert (= (and d!1588186 res!2105705) b!4933947))

(assert (=> d!1588186 m!5954296))

(assert (=> d!1588186 m!5954296))

(declare-fun m!5954610 () Bool)

(assert (=> d!1588186 m!5954610))

(declare-fun m!5954612 () Bool)

(assert (=> d!1588186 m!5954612))

(assert (=> b!4933947 m!5954294))

(assert (=> b!4933723 d!1588186))

(declare-fun d!1588188 () Bool)

(assert (=> d!1588188 (isPrefix!5019 lt!2031879 lt!2031879)))

(declare-fun lt!2032031 () Unit!147477)

(declare-fun choose!36211 (List!56936 List!56936) Unit!147477)

(assert (=> d!1588188 (= lt!2032031 (choose!36211 lt!2031879 lt!2031879))))

(assert (=> d!1588188 (= (lemmaIsPrefixRefl!3385 lt!2031879 lt!2031879) lt!2032031)))

(declare-fun bs!1180542 () Bool)

(assert (= bs!1180542 d!1588188))

(assert (=> bs!1180542 m!5954316))

(declare-fun m!5954614 () Bool)

(assert (=> bs!1180542 m!5954614))

(assert (=> b!4933733 d!1588188))

(declare-fun d!1588190 () Bool)

(declare-fun e!3082794 () Bool)

(assert (=> d!1588190 e!3082794))

(declare-fun res!2105717 () Bool)

(assert (=> d!1588190 (=> res!2105717 e!3082794)))

(declare-fun lt!2032034 () Bool)

(assert (=> d!1588190 (= res!2105717 (not lt!2032034))))

(declare-fun e!3082793 () Bool)

(assert (=> d!1588190 (= lt!2032034 e!3082793)))

(declare-fun res!2105714 () Bool)

(assert (=> d!1588190 (=> res!2105714 e!3082793)))

(assert (=> d!1588190 (= res!2105714 ((_ is Nil!56812) lt!2031879))))

(assert (=> d!1588190 (= (isPrefix!5019 lt!2031879 lt!2031879) lt!2032034)))

(declare-fun b!4933959 () Bool)

(assert (=> b!4933959 (= e!3082794 (>= (size!37623 lt!2031879) (size!37623 lt!2031879)))))

(declare-fun b!4933956 () Bool)

(declare-fun e!3082792 () Bool)

(assert (=> b!4933956 (= e!3082793 e!3082792)))

(declare-fun res!2105716 () Bool)

(assert (=> b!4933956 (=> (not res!2105716) (not e!3082792))))

(assert (=> b!4933956 (= res!2105716 (not ((_ is Nil!56812) lt!2031879)))))

(declare-fun b!4933957 () Bool)

(declare-fun res!2105715 () Bool)

(assert (=> b!4933957 (=> (not res!2105715) (not e!3082792))))

(assert (=> b!4933957 (= res!2105715 (= (head!10558 lt!2031879) (head!10558 lt!2031879)))))

(declare-fun b!4933958 () Bool)

(assert (=> b!4933958 (= e!3082792 (isPrefix!5019 (tail!9697 lt!2031879) (tail!9697 lt!2031879)))))

(assert (= (and d!1588190 (not res!2105714)) b!4933956))

(assert (= (and b!4933956 res!2105716) b!4933957))

(assert (= (and b!4933957 res!2105715) b!4933958))

(assert (= (and d!1588190 (not res!2105717)) b!4933959))

(assert (=> b!4933959 m!5954302))

(assert (=> b!4933959 m!5954302))

(assert (=> b!4933957 m!5954602))

(assert (=> b!4933957 m!5954602))

(assert (=> b!4933958 m!5954588))

(assert (=> b!4933958 m!5954588))

(assert (=> b!4933958 m!5954588))

(assert (=> b!4933958 m!5954588))

(declare-fun m!5954616 () Bool)

(assert (=> b!4933958 m!5954616))

(assert (=> b!4933733 d!1588190))

(declare-fun d!1588192 () Bool)

(assert (=> d!1588192 (= lt!2031879 testedP!110)))

(declare-fun lt!2032037 () Unit!147477)

(declare-fun choose!36213 (List!56936 List!56936 List!56936) Unit!147477)

(assert (=> d!1588192 (= lt!2032037 (choose!36213 lt!2031879 testedP!110 lt!2031879))))

(assert (=> d!1588192 (isPrefix!5019 lt!2031879 lt!2031879)))

(assert (=> d!1588192 (= (lemmaIsPrefixSameLengthThenSameList!1143 lt!2031879 testedP!110 lt!2031879) lt!2032037)))

(declare-fun bs!1180543 () Bool)

(assert (= bs!1180543 d!1588192))

(declare-fun m!5954618 () Bool)

(assert (=> bs!1180543 m!5954618))

(assert (=> bs!1180543 m!5954316))

(assert (=> b!4933733 d!1588192))

(declare-fun d!1588194 () Bool)

(declare-fun e!3082797 () Bool)

(assert (=> d!1588194 e!3082797))

(declare-fun res!2105721 () Bool)

(assert (=> d!1588194 (=> res!2105721 e!3082797)))

(declare-fun lt!2032038 () Bool)

(assert (=> d!1588194 (= res!2105721 (not lt!2032038))))

(declare-fun e!3082796 () Bool)

(assert (=> d!1588194 (= lt!2032038 e!3082796)))

(declare-fun res!2105718 () Bool)

(assert (=> d!1588194 (=> res!2105718 e!3082796)))

(assert (=> d!1588194 (= res!2105718 ((_ is Nil!56812) testedP!110))))

(assert (=> d!1588194 (= (isPrefix!5019 testedP!110 lt!2031879) lt!2032038)))

(declare-fun b!4933963 () Bool)

(assert (=> b!4933963 (= e!3082797 (>= (size!37623 lt!2031879) (size!37623 testedP!110)))))

(declare-fun b!4933960 () Bool)

(declare-fun e!3082795 () Bool)

(assert (=> b!4933960 (= e!3082796 e!3082795)))

(declare-fun res!2105720 () Bool)

(assert (=> b!4933960 (=> (not res!2105720) (not e!3082795))))

(assert (=> b!4933960 (= res!2105720 (not ((_ is Nil!56812) lt!2031879)))))

(declare-fun b!4933961 () Bool)

(declare-fun res!2105719 () Bool)

(assert (=> b!4933961 (=> (not res!2105719) (not e!3082795))))

(assert (=> b!4933961 (= res!2105719 (= (head!10558 testedP!110) (head!10558 lt!2031879)))))

(declare-fun b!4933962 () Bool)

(assert (=> b!4933962 (= e!3082795 (isPrefix!5019 (tail!9697 testedP!110) (tail!9697 lt!2031879)))))

(assert (= (and d!1588194 (not res!2105718)) b!4933960))

(assert (= (and b!4933960 res!2105720) b!4933961))

(assert (= (and b!4933961 res!2105719) b!4933962))

(assert (= (and d!1588194 (not res!2105721)) b!4933963))

(assert (=> b!4933963 m!5954302))

(assert (=> b!4933963 m!5954370))

(declare-fun m!5954620 () Bool)

(assert (=> b!4933961 m!5954620))

(assert (=> b!4933961 m!5954602))

(declare-fun m!5954622 () Bool)

(assert (=> b!4933962 m!5954622))

(assert (=> b!4933962 m!5954588))

(assert (=> b!4933962 m!5954622))

(assert (=> b!4933962 m!5954588))

(declare-fun m!5954624 () Bool)

(assert (=> b!4933962 m!5954624))

(assert (=> b!4933721 d!1588194))

(declare-fun d!1588196 () Bool)

(declare-fun e!3082800 () Bool)

(assert (=> d!1588196 e!3082800))

(declare-fun res!2105725 () Bool)

(assert (=> d!1588196 (=> res!2105725 e!3082800)))

(declare-fun lt!2032039 () Bool)

(assert (=> d!1588196 (= res!2105725 (not lt!2032039))))

(declare-fun e!3082799 () Bool)

(assert (=> d!1588196 (= lt!2032039 e!3082799)))

(declare-fun res!2105722 () Bool)

(assert (=> d!1588196 (=> res!2105722 e!3082799)))

(assert (=> d!1588196 (= res!2105722 ((_ is Nil!56812) testedP!110))))

(assert (=> d!1588196 (= (isPrefix!5019 testedP!110 lt!2031881) lt!2032039)))

(declare-fun b!4933967 () Bool)

(assert (=> b!4933967 (= e!3082800 (>= (size!37623 lt!2031881) (size!37623 testedP!110)))))

(declare-fun b!4933964 () Bool)

(declare-fun e!3082798 () Bool)

(assert (=> b!4933964 (= e!3082799 e!3082798)))

(declare-fun res!2105724 () Bool)

(assert (=> b!4933964 (=> (not res!2105724) (not e!3082798))))

(assert (=> b!4933964 (= res!2105724 (not ((_ is Nil!56812) lt!2031881)))))

(declare-fun b!4933965 () Bool)

(declare-fun res!2105723 () Bool)

(assert (=> b!4933965 (=> (not res!2105723) (not e!3082798))))

(assert (=> b!4933965 (= res!2105723 (= (head!10558 testedP!110) (head!10558 lt!2031881)))))

(declare-fun b!4933966 () Bool)

(assert (=> b!4933966 (= e!3082798 (isPrefix!5019 (tail!9697 testedP!110) (tail!9697 lt!2031881)))))

(assert (= (and d!1588196 (not res!2105722)) b!4933964))

(assert (= (and b!4933964 res!2105724) b!4933965))

(assert (= (and b!4933965 res!2105723) b!4933966))

(assert (= (and d!1588196 (not res!2105725)) b!4933967))

(declare-fun m!5954626 () Bool)

(assert (=> b!4933967 m!5954626))

(assert (=> b!4933967 m!5954370))

(assert (=> b!4933965 m!5954620))

(declare-fun m!5954628 () Bool)

(assert (=> b!4933965 m!5954628))

(assert (=> b!4933966 m!5954622))

(declare-fun m!5954630 () Bool)

(assert (=> b!4933966 m!5954630))

(assert (=> b!4933966 m!5954622))

(assert (=> b!4933966 m!5954630))

(declare-fun m!5954632 () Bool)

(assert (=> b!4933966 m!5954632))

(assert (=> b!4933721 d!1588196))

(declare-fun d!1588198 () Bool)

(assert (=> d!1588198 (isPrefix!5019 testedP!110 (++!12386 testedP!110 testedSuffix!70))))

(declare-fun lt!2032042 () Unit!147477)

(declare-fun choose!36215 (List!56936 List!56936) Unit!147477)

(assert (=> d!1588198 (= lt!2032042 (choose!36215 testedP!110 testedSuffix!70))))

(assert (=> d!1588198 (= (lemmaConcatTwoListThenFirstIsPrefix!3243 testedP!110 testedSuffix!70) lt!2032042)))

(declare-fun bs!1180544 () Bool)

(assert (= bs!1180544 d!1588198))

(assert (=> bs!1180544 m!5954298))

(assert (=> bs!1180544 m!5954298))

(declare-fun m!5954634 () Bool)

(assert (=> bs!1180544 m!5954634))

(declare-fun m!5954636 () Bool)

(assert (=> bs!1180544 m!5954636))

(assert (=> b!4933721 d!1588198))

(declare-fun d!1588200 () Bool)

(declare-fun lt!2032045 () Int)

(assert (=> d!1588200 (= lt!2032045 (size!37623 (list!18038 totalInput!685)))))

(declare-fun size!37625 (Conc!14930) Int)

(assert (=> d!1588200 (= lt!2032045 (size!37625 (c!840850 totalInput!685)))))

(assert (=> d!1588200 (= (size!37622 totalInput!685) lt!2032045)))

(declare-fun bs!1180545 () Bool)

(assert (= bs!1180545 d!1588200))

(assert (=> bs!1180545 m!5954296))

(assert (=> bs!1180545 m!5954296))

(declare-fun m!5954638 () Bool)

(assert (=> bs!1180545 m!5954638))

(declare-fun m!5954640 () Bool)

(assert (=> bs!1180545 m!5954640))

(assert (=> b!4933736 d!1588200))

(declare-fun d!1588202 () Bool)

(declare-fun c!840927 () Bool)

(assert (=> d!1588202 (= c!840927 ((_ is Node!14930) (c!840850 totalInput!685)))))

(declare-fun e!3082805 () Bool)

(assert (=> d!1588202 (= (inv!73794 (c!840850 totalInput!685)) e!3082805)))

(declare-fun b!4933974 () Bool)

(declare-fun inv!73797 (Conc!14930) Bool)

(assert (=> b!4933974 (= e!3082805 (inv!73797 (c!840850 totalInput!685)))))

(declare-fun b!4933975 () Bool)

(declare-fun e!3082806 () Bool)

(assert (=> b!4933975 (= e!3082805 e!3082806)))

(declare-fun res!2105728 () Bool)

(assert (=> b!4933975 (= res!2105728 (not ((_ is Leaf!24828) (c!840850 totalInput!685))))))

(assert (=> b!4933975 (=> res!2105728 e!3082806)))

(declare-fun b!4933976 () Bool)

(declare-fun inv!73798 (Conc!14930) Bool)

(assert (=> b!4933976 (= e!3082806 (inv!73798 (c!840850 totalInput!685)))))

(assert (= (and d!1588202 c!840927) b!4933974))

(assert (= (and d!1588202 (not c!840927)) b!4933975))

(assert (= (and b!4933975 (not res!2105728)) b!4933976))

(declare-fun m!5954642 () Bool)

(assert (=> b!4933974 m!5954642))

(declare-fun m!5954644 () Bool)

(assert (=> b!4933976 m!5954644))

(assert (=> b!4933737 d!1588202))

(declare-fun d!1588204 () Bool)

(declare-fun list!18040 (Conc!14930) List!56936)

(assert (=> d!1588204 (= (list!18038 totalInput!685) (list!18040 (c!840850 totalInput!685)))))

(declare-fun bs!1180546 () Bool)

(assert (= bs!1180546 d!1588204))

(declare-fun m!5954646 () Bool)

(assert (=> bs!1180546 m!5954646))

(assert (=> start!518420 d!1588204))

(declare-fun b!4933987 () Bool)

(declare-fun res!2105734 () Bool)

(declare-fun e!3082812 () Bool)

(assert (=> b!4933987 (=> (not res!2105734) (not e!3082812))))

(declare-fun lt!2032048 () List!56936)

(assert (=> b!4933987 (= res!2105734 (= (size!37623 lt!2032048) (+ (size!37623 testedP!110) (size!37623 testedSuffix!70))))))

(declare-fun d!1588206 () Bool)

(assert (=> d!1588206 e!3082812))

(declare-fun res!2105733 () Bool)

(assert (=> d!1588206 (=> (not res!2105733) (not e!3082812))))

(assert (=> d!1588206 (= res!2105733 (= (content!10098 lt!2032048) ((_ map or) (content!10098 testedP!110) (content!10098 testedSuffix!70))))))

(declare-fun e!3082811 () List!56936)

(assert (=> d!1588206 (= lt!2032048 e!3082811)))

(declare-fun c!840930 () Bool)

(assert (=> d!1588206 (= c!840930 ((_ is Nil!56812) testedP!110))))

(assert (=> d!1588206 (= (++!12386 testedP!110 testedSuffix!70) lt!2032048)))

(declare-fun b!4933988 () Bool)

(assert (=> b!4933988 (= e!3082812 (or (not (= testedSuffix!70 Nil!56812)) (= lt!2032048 testedP!110)))))

(declare-fun b!4933985 () Bool)

(assert (=> b!4933985 (= e!3082811 testedSuffix!70)))

(declare-fun b!4933986 () Bool)

(assert (=> b!4933986 (= e!3082811 (Cons!56812 (h!63260 testedP!110) (++!12386 (t!367416 testedP!110) testedSuffix!70)))))

(assert (= (and d!1588206 c!840930) b!4933985))

(assert (= (and d!1588206 (not c!840930)) b!4933986))

(assert (= (and d!1588206 res!2105733) b!4933987))

(assert (= (and b!4933987 res!2105734) b!4933988))

(declare-fun m!5954648 () Bool)

(assert (=> b!4933987 m!5954648))

(assert (=> b!4933987 m!5954370))

(declare-fun m!5954650 () Bool)

(assert (=> b!4933987 m!5954650))

(declare-fun m!5954652 () Bool)

(assert (=> d!1588206 m!5954652))

(declare-fun m!5954654 () Bool)

(assert (=> d!1588206 m!5954654))

(declare-fun m!5954656 () Bool)

(assert (=> d!1588206 m!5954656))

(declare-fun m!5954658 () Bool)

(assert (=> b!4933986 m!5954658))

(assert (=> start!518420 d!1588206))

(declare-fun d!1588208 () Bool)

(declare-fun isBalanced!4113 (Conc!14930) Bool)

(assert (=> d!1588208 (= (inv!73793 totalInput!685) (isBalanced!4113 (c!840850 totalInput!685)))))

(declare-fun bs!1180547 () Bool)

(assert (= bs!1180547 d!1588208))

(declare-fun m!5954660 () Bool)

(assert (=> bs!1180547 m!5954660))

(assert (=> start!518420 d!1588208))

(declare-fun b!4933991 () Bool)

(declare-fun res!2105736 () Bool)

(declare-fun e!3082814 () Bool)

(assert (=> b!4933991 (=> (not res!2105736) (not e!3082814))))

(declare-fun lt!2032049 () List!56936)

(assert (=> b!4933991 (= res!2105736 (= (size!37623 lt!2032049) (+ (size!37623 lt!2031875) (size!37623 lt!2031892))))))

(declare-fun d!1588210 () Bool)

(assert (=> d!1588210 e!3082814))

(declare-fun res!2105735 () Bool)

(assert (=> d!1588210 (=> (not res!2105735) (not e!3082814))))

(assert (=> d!1588210 (= res!2105735 (= (content!10098 lt!2032049) ((_ map or) (content!10098 lt!2031875) (content!10098 lt!2031892))))))

(declare-fun e!3082813 () List!56936)

(assert (=> d!1588210 (= lt!2032049 e!3082813)))

(declare-fun c!840931 () Bool)

(assert (=> d!1588210 (= c!840931 ((_ is Nil!56812) lt!2031875))))

(assert (=> d!1588210 (= (++!12386 lt!2031875 lt!2031892) lt!2032049)))

(declare-fun b!4933992 () Bool)

(assert (=> b!4933992 (= e!3082814 (or (not (= lt!2031892 Nil!56812)) (= lt!2032049 lt!2031875)))))

(declare-fun b!4933989 () Bool)

(assert (=> b!4933989 (= e!3082813 lt!2031892)))

(declare-fun b!4933990 () Bool)

(assert (=> b!4933990 (= e!3082813 (Cons!56812 (h!63260 lt!2031875) (++!12386 (t!367416 lt!2031875) lt!2031892)))))

(assert (= (and d!1588210 c!840931) b!4933989))

(assert (= (and d!1588210 (not c!840931)) b!4933990))

(assert (= (and d!1588210 res!2105735) b!4933991))

(assert (= (and b!4933991 res!2105736) b!4933992))

(declare-fun m!5954662 () Bool)

(assert (=> b!4933991 m!5954662))

(declare-fun m!5954664 () Bool)

(assert (=> b!4933991 m!5954664))

(declare-fun m!5954666 () Bool)

(assert (=> b!4933991 m!5954666))

(declare-fun m!5954668 () Bool)

(assert (=> d!1588210 m!5954668))

(declare-fun m!5954670 () Bool)

(assert (=> d!1588210 m!5954670))

(declare-fun m!5954672 () Bool)

(assert (=> d!1588210 m!5954672))

(declare-fun m!5954674 () Bool)

(assert (=> b!4933990 m!5954674))

(assert (=> b!4933727 d!1588210))

(declare-fun d!1588212 () Bool)

(assert (=> d!1588212 (= (list!18038 (_2!33954 lt!2031891)) (list!18040 (c!840850 (_2!33954 lt!2031891))))))

(declare-fun bs!1180548 () Bool)

(assert (= bs!1180548 d!1588212))

(declare-fun m!5954676 () Bool)

(assert (=> bs!1180548 m!5954676))

(assert (=> b!4933727 d!1588212))

(declare-fun d!1588214 () Bool)

(assert (=> d!1588214 (= (list!18038 (_1!33954 lt!2031891)) (list!18040 (c!840850 (_1!33954 lt!2031891))))))

(declare-fun bs!1180549 () Bool)

(assert (= bs!1180549 d!1588214))

(declare-fun m!5954678 () Bool)

(assert (=> bs!1180549 m!5954678))

(assert (=> b!4933727 d!1588214))

(declare-fun d!1588216 () Bool)

(declare-fun e!3082817 () Bool)

(assert (=> d!1588216 e!3082817))

(declare-fun res!2105741 () Bool)

(assert (=> d!1588216 (=> (not res!2105741) (not e!3082817))))

(declare-fun lt!2032054 () tuple2!61302)

(assert (=> d!1588216 (= res!2105741 (isBalanced!4113 (c!840850 (_1!33954 lt!2032054))))))

(declare-datatypes ((tuple2!61308 0))(
  ( (tuple2!61309 (_1!33957 Conc!14930) (_2!33957 Conc!14930)) )
))
(declare-fun lt!2032055 () tuple2!61308)

(assert (=> d!1588216 (= lt!2032054 (tuple2!61303 (BalanceConc!29291 (_1!33957 lt!2032055)) (BalanceConc!29291 (_2!33957 lt!2032055))))))

(declare-fun splitAt!321 (Conc!14930 Int) tuple2!61308)

(assert (=> d!1588216 (= lt!2032055 (splitAt!321 (c!840850 totalInput!685) testedPSize!70))))

(assert (=> d!1588216 (isBalanced!4113 (c!840850 totalInput!685))))

(assert (=> d!1588216 (= (splitAt!319 totalInput!685 testedPSize!70) lt!2032054)))

(declare-fun b!4933997 () Bool)

(declare-fun res!2105742 () Bool)

(assert (=> b!4933997 (=> (not res!2105742) (not e!3082817))))

(assert (=> b!4933997 (= res!2105742 (isBalanced!4113 (c!840850 (_2!33954 lt!2032054))))))

(declare-fun b!4933998 () Bool)

(declare-datatypes ((tuple2!61310 0))(
  ( (tuple2!61311 (_1!33958 List!56936) (_2!33958 List!56936)) )
))
(declare-fun splitAtIndex!119 (List!56936 Int) tuple2!61310)

(assert (=> b!4933998 (= e!3082817 (= (tuple2!61311 (list!18038 (_1!33954 lt!2032054)) (list!18038 (_2!33954 lt!2032054))) (splitAtIndex!119 (list!18038 totalInput!685) testedPSize!70)))))

(assert (= (and d!1588216 res!2105741) b!4933997))

(assert (= (and b!4933997 res!2105742) b!4933998))

(declare-fun m!5954680 () Bool)

(assert (=> d!1588216 m!5954680))

(declare-fun m!5954682 () Bool)

(assert (=> d!1588216 m!5954682))

(assert (=> d!1588216 m!5954660))

(declare-fun m!5954684 () Bool)

(assert (=> b!4933997 m!5954684))

(declare-fun m!5954686 () Bool)

(assert (=> b!4933998 m!5954686))

(declare-fun m!5954688 () Bool)

(assert (=> b!4933998 m!5954688))

(assert (=> b!4933998 m!5954296))

(assert (=> b!4933998 m!5954296))

(declare-fun m!5954690 () Bool)

(assert (=> b!4933998 m!5954690))

(assert (=> b!4933727 d!1588216))

(declare-fun d!1588218 () Bool)

(declare-fun lt!2032056 () Int)

(assert (=> d!1588218 (= lt!2032056 (size!37623 (list!18038 (_1!33954 lt!2031891))))))

(assert (=> d!1588218 (= lt!2032056 (size!37625 (c!840850 (_1!33954 lt!2031891))))))

(assert (=> d!1588218 (= (size!37622 (_1!33954 lt!2031891)) lt!2032056)))

(declare-fun bs!1180550 () Bool)

(assert (= bs!1180550 d!1588218))

(assert (=> bs!1180550 m!5954328))

(assert (=> bs!1180550 m!5954328))

(declare-fun m!5954692 () Bool)

(assert (=> bs!1180550 m!5954692))

(declare-fun m!5954694 () Bool)

(assert (=> bs!1180550 m!5954694))

(assert (=> b!4933725 d!1588218))

(declare-fun bs!1180551 () Bool)

(declare-fun d!1588220 () Bool)

(assert (= bs!1180551 (and d!1588220 d!1588090)))

(declare-fun lambda!245725 () Int)

(assert (=> bs!1180551 (not (= lambda!245725 lambda!245720))))

(declare-fun bs!1180552 () Bool)

(assert (= bs!1180552 (and d!1588220 b!4933871)))

(assert (=> bs!1180552 (not (= lambda!245725 lambda!245721))))

(declare-fun bs!1180553 () Bool)

(assert (= bs!1180553 (and d!1588220 b!4933872)))

(assert (=> bs!1180553 (not (= lambda!245725 lambda!245722))))

(declare-fun exists!1274 ((InoxSet Context!6126) Int) Bool)

(assert (=> d!1588220 (= (nullableZipper!826 z!3568) (exists!1274 z!3568 lambda!245725))))

(declare-fun bs!1180554 () Bool)

(assert (= bs!1180554 d!1588220))

(declare-fun m!5954696 () Bool)

(assert (=> bs!1180554 m!5954696))

(assert (=> b!4933734 d!1588220))

(declare-fun b!4934001 () Bool)

(declare-fun res!2105744 () Bool)

(declare-fun e!3082819 () Bool)

(assert (=> b!4934001 (=> (not res!2105744) (not e!3082819))))

(declare-fun lt!2032057 () List!56936)

(assert (=> b!4934001 (= res!2105744 (= (size!37623 lt!2032057) (+ (size!37623 testedP!110) (size!37623 (Cons!56812 lt!2031890 Nil!56812)))))))

(declare-fun d!1588222 () Bool)

(assert (=> d!1588222 e!3082819))

(declare-fun res!2105743 () Bool)

(assert (=> d!1588222 (=> (not res!2105743) (not e!3082819))))

(assert (=> d!1588222 (= res!2105743 (= (content!10098 lt!2032057) ((_ map or) (content!10098 testedP!110) (content!10098 (Cons!56812 lt!2031890 Nil!56812)))))))

(declare-fun e!3082818 () List!56936)

(assert (=> d!1588222 (= lt!2032057 e!3082818)))

(declare-fun c!840934 () Bool)

(assert (=> d!1588222 (= c!840934 ((_ is Nil!56812) testedP!110))))

(assert (=> d!1588222 (= (++!12386 testedP!110 (Cons!56812 lt!2031890 Nil!56812)) lt!2032057)))

(declare-fun b!4934002 () Bool)

(assert (=> b!4934002 (= e!3082819 (or (not (= (Cons!56812 lt!2031890 Nil!56812) Nil!56812)) (= lt!2032057 testedP!110)))))

(declare-fun b!4933999 () Bool)

(assert (=> b!4933999 (= e!3082818 (Cons!56812 lt!2031890 Nil!56812))))

(declare-fun b!4934000 () Bool)

(assert (=> b!4934000 (= e!3082818 (Cons!56812 (h!63260 testedP!110) (++!12386 (t!367416 testedP!110) (Cons!56812 lt!2031890 Nil!56812))))))

(assert (= (and d!1588222 c!840934) b!4933999))

(assert (= (and d!1588222 (not c!840934)) b!4934000))

(assert (= (and d!1588222 res!2105743) b!4934001))

(assert (= (and b!4934001 res!2105744) b!4934002))

(declare-fun m!5954698 () Bool)

(assert (=> b!4934001 m!5954698))

(assert (=> b!4934001 m!5954370))

(declare-fun m!5954700 () Bool)

(assert (=> b!4934001 m!5954700))

(declare-fun m!5954702 () Bool)

(assert (=> d!1588222 m!5954702))

(assert (=> d!1588222 m!5954654))

(declare-fun m!5954704 () Bool)

(assert (=> d!1588222 m!5954704))

(declare-fun m!5954706 () Bool)

(assert (=> b!4934000 m!5954706))

(assert (=> b!4933734 d!1588222))

(declare-fun d!1588224 () Bool)

(assert (=> d!1588224 (= (++!12386 (++!12386 testedP!110 (Cons!56812 lt!2031890 Nil!56812)) lt!2031882) lt!2031879)))

(declare-fun lt!2032060 () Unit!147477)

(declare-fun choose!36217 (List!56936 C!27072 List!56936 List!56936) Unit!147477)

(assert (=> d!1588224 (= lt!2032060 (choose!36217 testedP!110 lt!2031890 lt!2031882 lt!2031879))))

(assert (=> d!1588224 (= (++!12386 testedP!110 (Cons!56812 lt!2031890 lt!2031882)) lt!2031879)))

(assert (=> d!1588224 (= (lemmaMoveElementToOtherListKeepsConcatEq!1401 testedP!110 lt!2031890 lt!2031882 lt!2031879) lt!2032060)))

(declare-fun bs!1180555 () Bool)

(assert (= bs!1180555 d!1588224))

(assert (=> bs!1180555 m!5954352))

(assert (=> bs!1180555 m!5954352))

(assert (=> bs!1180555 m!5954364))

(declare-fun m!5954708 () Bool)

(assert (=> bs!1180555 m!5954708))

(declare-fun m!5954710 () Bool)

(assert (=> bs!1180555 m!5954710))

(assert (=> b!4933734 d!1588224))

(declare-fun d!1588226 () Bool)

(assert (=> d!1588226 (isPrefix!5019 (++!12386 testedP!110 (Cons!56812 (head!10558 (getSuffix!3003 lt!2031879 testedP!110)) Nil!56812)) lt!2031879)))

(declare-fun lt!2032063 () Unit!147477)

(declare-fun choose!36218 (List!56936 List!56936) Unit!147477)

(assert (=> d!1588226 (= lt!2032063 (choose!36218 testedP!110 lt!2031879))))

(assert (=> d!1588226 (isPrefix!5019 testedP!110 lt!2031879)))

(assert (=> d!1588226 (= (lemmaAddHeadSuffixToPrefixStillPrefix!789 testedP!110 lt!2031879) lt!2032063)))

(declare-fun bs!1180556 () Bool)

(assert (= bs!1180556 d!1588226))

(assert (=> bs!1180556 m!5954332))

(declare-fun m!5954712 () Bool)

(assert (=> bs!1180556 m!5954712))

(assert (=> bs!1180556 m!5954712))

(declare-fun m!5954714 () Bool)

(assert (=> bs!1180556 m!5954714))

(assert (=> bs!1180556 m!5954312))

(declare-fun m!5954716 () Bool)

(assert (=> bs!1180556 m!5954716))

(declare-fun m!5954718 () Bool)

(assert (=> bs!1180556 m!5954718))

(assert (=> bs!1180556 m!5954312))

(assert (=> b!4933734 d!1588226))

(declare-fun d!1588228 () Bool)

(assert (=> d!1588228 (= (tail!9697 testedSuffix!70) (t!367416 testedSuffix!70))))

(assert (=> b!4933734 d!1588228))

(declare-fun d!1588230 () Bool)

(declare-fun e!3082822 () Bool)

(assert (=> d!1588230 e!3082822))

(declare-fun res!2105748 () Bool)

(assert (=> d!1588230 (=> res!2105748 e!3082822)))

(declare-fun lt!2032064 () Bool)

(assert (=> d!1588230 (= res!2105748 (not lt!2032064))))

(declare-fun e!3082821 () Bool)

(assert (=> d!1588230 (= lt!2032064 e!3082821)))

(declare-fun res!2105745 () Bool)

(assert (=> d!1588230 (=> res!2105745 e!3082821)))

(assert (=> d!1588230 (= res!2105745 ((_ is Nil!56812) (++!12386 testedP!110 (Cons!56812 (head!10558 lt!2031885) Nil!56812))))))

(assert (=> d!1588230 (= (isPrefix!5019 (++!12386 testedP!110 (Cons!56812 (head!10558 lt!2031885) Nil!56812)) lt!2031879) lt!2032064)))

(declare-fun b!4934006 () Bool)

(assert (=> b!4934006 (= e!3082822 (>= (size!37623 lt!2031879) (size!37623 (++!12386 testedP!110 (Cons!56812 (head!10558 lt!2031885) Nil!56812)))))))

(declare-fun b!4934003 () Bool)

(declare-fun e!3082820 () Bool)

(assert (=> b!4934003 (= e!3082821 e!3082820)))

(declare-fun res!2105747 () Bool)

(assert (=> b!4934003 (=> (not res!2105747) (not e!3082820))))

(assert (=> b!4934003 (= res!2105747 (not ((_ is Nil!56812) lt!2031879)))))

(declare-fun b!4934004 () Bool)

(declare-fun res!2105746 () Bool)

(assert (=> b!4934004 (=> (not res!2105746) (not e!3082820))))

(assert (=> b!4934004 (= res!2105746 (= (head!10558 (++!12386 testedP!110 (Cons!56812 (head!10558 lt!2031885) Nil!56812))) (head!10558 lt!2031879)))))

(declare-fun b!4934005 () Bool)

(assert (=> b!4934005 (= e!3082820 (isPrefix!5019 (tail!9697 (++!12386 testedP!110 (Cons!56812 (head!10558 lt!2031885) Nil!56812))) (tail!9697 lt!2031879)))))

(assert (= (and d!1588230 (not res!2105745)) b!4934003))

(assert (= (and b!4934003 res!2105747) b!4934004))

(assert (= (and b!4934004 res!2105746) b!4934005))

(assert (= (and d!1588230 (not res!2105748)) b!4934006))

(assert (=> b!4934006 m!5954302))

(assert (=> b!4934006 m!5954358))

(declare-fun m!5954720 () Bool)

(assert (=> b!4934006 m!5954720))

(assert (=> b!4934004 m!5954358))

(declare-fun m!5954722 () Bool)

(assert (=> b!4934004 m!5954722))

(assert (=> b!4934004 m!5954602))

(assert (=> b!4934005 m!5954358))

(declare-fun m!5954724 () Bool)

(assert (=> b!4934005 m!5954724))

(assert (=> b!4934005 m!5954588))

(assert (=> b!4934005 m!5954724))

(assert (=> b!4934005 m!5954588))

(declare-fun m!5954726 () Bool)

(assert (=> b!4934005 m!5954726))

(assert (=> b!4933734 d!1588230))

(declare-fun d!1588232 () Bool)

(assert (=> d!1588232 (= (head!10558 lt!2031885) (h!63260 lt!2031885))))

(assert (=> b!4933734 d!1588232))

(declare-fun b!4934009 () Bool)

(declare-fun res!2105750 () Bool)

(declare-fun e!3082824 () Bool)

(assert (=> b!4934009 (=> (not res!2105750) (not e!3082824))))

(declare-fun lt!2032065 () List!56936)

(assert (=> b!4934009 (= res!2105750 (= (size!37623 lt!2032065) (+ (size!37623 (++!12386 testedP!110 (Cons!56812 lt!2031890 Nil!56812))) (size!37623 lt!2031882))))))

(declare-fun d!1588234 () Bool)

(assert (=> d!1588234 e!3082824))

(declare-fun res!2105749 () Bool)

(assert (=> d!1588234 (=> (not res!2105749) (not e!3082824))))

(assert (=> d!1588234 (= res!2105749 (= (content!10098 lt!2032065) ((_ map or) (content!10098 (++!12386 testedP!110 (Cons!56812 lt!2031890 Nil!56812))) (content!10098 lt!2031882))))))

(declare-fun e!3082823 () List!56936)

(assert (=> d!1588234 (= lt!2032065 e!3082823)))

(declare-fun c!840935 () Bool)

(assert (=> d!1588234 (= c!840935 ((_ is Nil!56812) (++!12386 testedP!110 (Cons!56812 lt!2031890 Nil!56812))))))

(assert (=> d!1588234 (= (++!12386 (++!12386 testedP!110 (Cons!56812 lt!2031890 Nil!56812)) lt!2031882) lt!2032065)))

(declare-fun b!4934010 () Bool)

(assert (=> b!4934010 (= e!3082824 (or (not (= lt!2031882 Nil!56812)) (= lt!2032065 (++!12386 testedP!110 (Cons!56812 lt!2031890 Nil!56812)))))))

(declare-fun b!4934007 () Bool)

(assert (=> b!4934007 (= e!3082823 lt!2031882)))

(declare-fun b!4934008 () Bool)

(assert (=> b!4934008 (= e!3082823 (Cons!56812 (h!63260 (++!12386 testedP!110 (Cons!56812 lt!2031890 Nil!56812))) (++!12386 (t!367416 (++!12386 testedP!110 (Cons!56812 lt!2031890 Nil!56812))) lt!2031882)))))

(assert (= (and d!1588234 c!840935) b!4934007))

(assert (= (and d!1588234 (not c!840935)) b!4934008))

(assert (= (and d!1588234 res!2105749) b!4934009))

(assert (= (and b!4934009 res!2105750) b!4934010))

(declare-fun m!5954728 () Bool)

(assert (=> b!4934009 m!5954728))

(assert (=> b!4934009 m!5954352))

(declare-fun m!5954730 () Bool)

(assert (=> b!4934009 m!5954730))

(declare-fun m!5954732 () Bool)

(assert (=> b!4934009 m!5954732))

(declare-fun m!5954734 () Bool)

(assert (=> d!1588234 m!5954734))

(assert (=> d!1588234 m!5954352))

(declare-fun m!5954736 () Bool)

(assert (=> d!1588234 m!5954736))

(declare-fun m!5954738 () Bool)

(assert (=> d!1588234 m!5954738))

(declare-fun m!5954740 () Bool)

(assert (=> b!4934008 m!5954740))

(assert (=> b!4933734 d!1588234))

(declare-fun b!4934013 () Bool)

(declare-fun res!2105752 () Bool)

(declare-fun e!3082826 () Bool)

(assert (=> b!4934013 (=> (not res!2105752) (not e!3082826))))

(declare-fun lt!2032066 () List!56936)

(assert (=> b!4934013 (= res!2105752 (= (size!37623 lt!2032066) (+ (size!37623 testedP!110) (size!37623 (Cons!56812 (head!10558 lt!2031885) Nil!56812)))))))

(declare-fun d!1588236 () Bool)

(assert (=> d!1588236 e!3082826))

(declare-fun res!2105751 () Bool)

(assert (=> d!1588236 (=> (not res!2105751) (not e!3082826))))

(assert (=> d!1588236 (= res!2105751 (= (content!10098 lt!2032066) ((_ map or) (content!10098 testedP!110) (content!10098 (Cons!56812 (head!10558 lt!2031885) Nil!56812)))))))

(declare-fun e!3082825 () List!56936)

(assert (=> d!1588236 (= lt!2032066 e!3082825)))

(declare-fun c!840936 () Bool)

(assert (=> d!1588236 (= c!840936 ((_ is Nil!56812) testedP!110))))

(assert (=> d!1588236 (= (++!12386 testedP!110 (Cons!56812 (head!10558 lt!2031885) Nil!56812)) lt!2032066)))

(declare-fun b!4934014 () Bool)

(assert (=> b!4934014 (= e!3082826 (or (not (= (Cons!56812 (head!10558 lt!2031885) Nil!56812) Nil!56812)) (= lt!2032066 testedP!110)))))

(declare-fun b!4934011 () Bool)

(assert (=> b!4934011 (= e!3082825 (Cons!56812 (head!10558 lt!2031885) Nil!56812))))

(declare-fun b!4934012 () Bool)

(assert (=> b!4934012 (= e!3082825 (Cons!56812 (h!63260 testedP!110) (++!12386 (t!367416 testedP!110) (Cons!56812 (head!10558 lt!2031885) Nil!56812))))))

(assert (= (and d!1588236 c!840936) b!4934011))

(assert (= (and d!1588236 (not c!840936)) b!4934012))

(assert (= (and d!1588236 res!2105751) b!4934013))

(assert (= (and b!4934013 res!2105752) b!4934014))

(declare-fun m!5954742 () Bool)

(assert (=> b!4934013 m!5954742))

(assert (=> b!4934013 m!5954370))

(declare-fun m!5954744 () Bool)

(assert (=> b!4934013 m!5954744))

(declare-fun m!5954746 () Bool)

(assert (=> d!1588236 m!5954746))

(assert (=> d!1588236 m!5954654))

(declare-fun m!5954748 () Bool)

(assert (=> d!1588236 m!5954748))

(declare-fun m!5954750 () Bool)

(assert (=> b!4934012 m!5954750))

(assert (=> b!4933734 d!1588236))

(declare-fun d!1588238 () Bool)

(declare-fun lt!2032069 () Int)

(assert (=> d!1588238 (>= lt!2032069 0)))

(declare-fun e!3082829 () Int)

(assert (=> d!1588238 (= lt!2032069 e!3082829)))

(declare-fun c!840939 () Bool)

(assert (=> d!1588238 (= c!840939 ((_ is Nil!56812) lt!2031879))))

(assert (=> d!1588238 (= (size!37623 lt!2031879) lt!2032069)))

(declare-fun b!4934019 () Bool)

(assert (=> b!4934019 (= e!3082829 0)))

(declare-fun b!4934020 () Bool)

(assert (=> b!4934020 (= e!3082829 (+ 1 (size!37623 (t!367416 lt!2031879))))))

(assert (= (and d!1588238 c!840939) b!4934019))

(assert (= (and d!1588238 (not c!840939)) b!4934020))

(declare-fun m!5954752 () Bool)

(assert (=> b!4934020 m!5954752))

(assert (=> b!4933735 d!1588238))

(declare-fun d!1588240 () Bool)

(assert (=> d!1588240 (<= (size!37623 testedP!110) (size!37623 lt!2031879))))

(declare-fun lt!2032072 () Unit!147477)

(declare-fun choose!36219 (List!56936 List!56936) Unit!147477)

(assert (=> d!1588240 (= lt!2032072 (choose!36219 testedP!110 lt!2031879))))

(assert (=> d!1588240 (isPrefix!5019 testedP!110 lt!2031879)))

(assert (=> d!1588240 (= (lemmaIsPrefixThenSmallerEqSize!707 testedP!110 lt!2031879) lt!2032072)))

(declare-fun bs!1180557 () Bool)

(assert (= bs!1180557 d!1588240))

(assert (=> bs!1180557 m!5954370))

(assert (=> bs!1180557 m!5954302))

(declare-fun m!5954754 () Bool)

(assert (=> bs!1180557 m!5954754))

(assert (=> bs!1180557 m!5954332))

(assert (=> b!4933735 d!1588240))

(declare-fun d!1588242 () Bool)

(declare-fun lambda!245728 () Int)

(declare-fun forall!13182 (List!56937 Int) Bool)

(assert (=> d!1588242 (= (inv!73792 setElem!27746) (forall!13182 (exprs!3563 setElem!27746) lambda!245728))))

(declare-fun bs!1180558 () Bool)

(assert (= bs!1180558 d!1588242))

(declare-fun m!5954756 () Bool)

(assert (=> bs!1180558 m!5954756))

(assert (=> setNonEmpty!27746 d!1588242))

(declare-fun d!1588244 () Bool)

(declare-fun lt!2032073 () Int)

(assert (=> d!1588244 (>= lt!2032073 0)))

(declare-fun e!3082830 () Int)

(assert (=> d!1588244 (= lt!2032073 e!3082830)))

(declare-fun c!840940 () Bool)

(assert (=> d!1588244 (= c!840940 ((_ is Nil!56812) testedP!110))))

(assert (=> d!1588244 (= (size!37623 testedP!110) lt!2032073)))

(declare-fun b!4934021 () Bool)

(assert (=> b!4934021 (= e!3082830 0)))

(declare-fun b!4934022 () Bool)

(assert (=> b!4934022 (= e!3082830 (+ 1 (size!37623 (t!367416 testedP!110))))))

(assert (= (and d!1588244 c!840940) b!4934021))

(assert (= (and d!1588244 (not c!840940)) b!4934022))

(declare-fun m!5954758 () Bool)

(assert (=> b!4934022 m!5954758))

(assert (=> b!4933726 d!1588244))

(declare-fun b!4934027 () Bool)

(declare-fun e!3082833 () Bool)

(declare-fun tp!1385073 () Bool)

(declare-fun tp!1385074 () Bool)

(assert (=> b!4934027 (= e!3082833 (and tp!1385073 tp!1385074))))

(assert (=> b!4933732 (= tp!1385043 e!3082833)))

(assert (= (and b!4933732 ((_ is Cons!56813) (exprs!3563 setElem!27746))) b!4934027))

(declare-fun e!3082839 () Bool)

(declare-fun b!4934036 () Bool)

(declare-fun tp!1385083 () Bool)

(declare-fun tp!1385081 () Bool)

(assert (=> b!4934036 (= e!3082839 (and (inv!73794 (left!41429 (c!840850 totalInput!685))) tp!1385083 (inv!73794 (right!41759 (c!840850 totalInput!685))) tp!1385081))))

(declare-fun b!4934038 () Bool)

(declare-fun e!3082838 () Bool)

(declare-fun tp!1385082 () Bool)

(assert (=> b!4934038 (= e!3082838 tp!1385082)))

(declare-fun b!4934037 () Bool)

(declare-fun inv!73800 (IArray!29921) Bool)

(assert (=> b!4934037 (= e!3082839 (and (inv!73800 (xs!18254 (c!840850 totalInput!685))) e!3082838))))

(assert (=> b!4933737 (= tp!1385039 (and (inv!73794 (c!840850 totalInput!685)) e!3082839))))

(assert (= (and b!4933737 ((_ is Node!14930) (c!840850 totalInput!685))) b!4934036))

(assert (= b!4934037 b!4934038))

(assert (= (and b!4933737 ((_ is Leaf!24828) (c!840850 totalInput!685))) b!4934037))

(declare-fun m!5954760 () Bool)

(assert (=> b!4934036 m!5954760))

(declare-fun m!5954762 () Bool)

(assert (=> b!4934036 m!5954762))

(declare-fun m!5954764 () Bool)

(assert (=> b!4934037 m!5954764))

(assert (=> b!4933737 m!5954320))

(declare-fun b!4934043 () Bool)

(declare-fun e!3082842 () Bool)

(declare-fun tp!1385086 () Bool)

(assert (=> b!4934043 (= e!3082842 (and tp_is_empty!36019 tp!1385086))))

(assert (=> b!4933724 (= tp!1385040 e!3082842)))

(assert (= (and b!4933724 ((_ is Cons!56812) (t!367416 testedSuffix!70))) b!4934043))

(declare-fun b!4934044 () Bool)

(declare-fun e!3082843 () Bool)

(declare-fun tp!1385087 () Bool)

(assert (=> b!4934044 (= e!3082843 (and tp_is_empty!36019 tp!1385087))))

(assert (=> b!4933729 (= tp!1385042 e!3082843)))

(assert (= (and b!4933729 ((_ is Cons!56812) (t!367416 testedP!110))) b!4934044))

(declare-fun condSetEmpty!27752 () Bool)

(assert (=> setNonEmpty!27746 (= condSetEmpty!27752 (= setRest!27746 ((as const (Array Context!6126 Bool)) false)))))

(declare-fun setRes!27752 () Bool)

(assert (=> setNonEmpty!27746 (= tp!1385041 setRes!27752)))

(declare-fun setIsEmpty!27752 () Bool)

(assert (=> setIsEmpty!27752 setRes!27752))

(declare-fun setNonEmpty!27752 () Bool)

(declare-fun tp!1385093 () Bool)

(declare-fun setElem!27752 () Context!6126)

(declare-fun e!3082846 () Bool)

(assert (=> setNonEmpty!27752 (= setRes!27752 (and tp!1385093 (inv!73792 setElem!27752) e!3082846))))

(declare-fun setRest!27752 () (InoxSet Context!6126))

(assert (=> setNonEmpty!27752 (= setRest!27746 ((_ map or) (store ((as const (Array Context!6126 Bool)) false) setElem!27752 true) setRest!27752))))

(declare-fun b!4934049 () Bool)

(declare-fun tp!1385092 () Bool)

(assert (=> b!4934049 (= e!3082846 tp!1385092)))

(assert (= (and setNonEmpty!27746 condSetEmpty!27752) setIsEmpty!27752))

(assert (= (and setNonEmpty!27746 (not condSetEmpty!27752)) setNonEmpty!27752))

(assert (= setNonEmpty!27752 b!4934049))

(declare-fun m!5954766 () Bool)

(assert (=> setNonEmpty!27752 m!5954766))

(check-sat (not b!4933959) (not d!1588170) (not b!4933939) (not d!1588210) (not b!4933947) (not d!1588182) (not b!4934049) (not b!4934043) (not b!4934000) (not bm!344251) (not b!4934044) (not b!4933987) (not b!4933872) (not b!4933997) (not d!1588218) (not b!4933986) (not d!1588240) (not b!4933990) (not b!4934027) (not b!4934013) (not d!1588208) (not d!1588090) (not b!4934038) (not b!4934009) (not b!4934022) (not b!4934001) (not b!4934006) (not b!4934020) (not b!4934008) (not d!1588220) (not d!1588224) (not b!4934036) (not d!1588186) (not d!1588198) (not b!4933974) (not bm!344247) (not d!1588204) (not d!1588206) (not d!1588242) (not bm!344248) (not b!4933904) (not b!4933963) (not b!4933991) (not d!1588184) (not b!4933965) (not b!4933966) (not b!4933958) (not d!1588172) (not b!4933967) (not b!4933998) (not b!4934037) (not d!1588180) (not b!4933957) (not b!4933932) (not d!1588236) (not b!4933940) (not setNonEmpty!27752) (not d!1588174) (not b!4934004) (not b!4933962) (not d!1588192) (not d!1588216) (not d!1588222) (not b!4933871) tp_is_empty!36019 (not d!1588234) (not b!4933961) (not b!4933944) (not d!1588212) (not d!1588200) (not b!4933941) (not b!4934012) (not d!1588188) (not b!4933976) (not d!1588226) (not b!4933737) (not b!4934005) (not d!1588214) (not b!4933926))
(check-sat)
