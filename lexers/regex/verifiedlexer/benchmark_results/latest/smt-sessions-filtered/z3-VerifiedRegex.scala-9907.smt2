; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519436 () Bool)

(assert start!519436)

(declare-fun b!4938605 () Bool)

(declare-fun res!2107608 () Bool)

(declare-fun e!3085745 () Bool)

(assert (=> b!4938605 (=> res!2107608 e!3085745)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4938605 (= res!2107608 (= testedPSize!70 totalInputSize!132))))

(declare-fun e!3085734 () Bool)

(declare-fun setNonEmpty!27852 () Bool)

(declare-datatypes ((C!27112 0))(
  ( (C!27113 (val!22890 Int)) )
))
(declare-datatypes ((Regex!13441 0))(
  ( (ElementMatch!13441 (c!842144 C!27112)) (Concat!22014 (regOne!27394 Regex!13441) (regTwo!27394 Regex!13441)) (EmptyExpr!13441) (Star!13441 (reg!13770 Regex!13441)) (EmptyLang!13441) (Union!13441 (regOne!27395 Regex!13441) (regTwo!27395 Regex!13441)) )
))
(declare-datatypes ((List!56990 0))(
  ( (Nil!56866) (Cons!56866 (h!63314 Regex!13441) (t!367490 List!56990)) )
))
(declare-datatypes ((Context!6166 0))(
  ( (Context!6167 (exprs!3583 List!56990)) )
))
(declare-fun setElem!27852 () Context!6166)

(declare-fun setRes!27852 () Bool)

(declare-fun tp!1385812 () Bool)

(declare-fun inv!73924 (Context!6166) Bool)

(assert (=> setNonEmpty!27852 (= setRes!27852 (and tp!1385812 (inv!73924 setElem!27852) e!3085734))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6166))

(declare-fun setRest!27852 () (InoxSet Context!6166))

(assert (=> setNonEmpty!27852 (= z!3568 ((_ map or) (store ((as const (Array Context!6166 Bool)) false) setElem!27852 true) setRest!27852))))

(declare-fun b!4938606 () Bool)

(declare-fun e!3085735 () Bool)

(declare-fun tp_is_empty!36059 () Bool)

(declare-fun tp!1385809 () Bool)

(assert (=> b!4938606 (= e!3085735 (and tp_is_empty!36059 tp!1385809))))

(declare-fun b!4938607 () Bool)

(declare-fun e!3085743 () Bool)

(declare-fun e!3085738 () Bool)

(assert (=> b!4938607 (= e!3085743 e!3085738)))

(declare-fun res!2107605 () Bool)

(assert (=> b!4938607 (=> res!2107605 e!3085738)))

(declare-fun lt!2035378 () Int)

(declare-fun lt!2035391 () Int)

(assert (=> b!4938607 (= res!2107605 (>= lt!2035378 lt!2035391))))

(declare-datatypes ((Unit!147597 0))(
  ( (Unit!147598) )
))
(declare-fun lt!2035385 () Unit!147597)

(declare-fun e!3085736 () Unit!147597)

(assert (=> b!4938607 (= lt!2035385 e!3085736)))

(declare-fun c!842143 () Bool)

(assert (=> b!4938607 (= c!842143 (= lt!2035378 lt!2035391))))

(declare-datatypes ((List!56991 0))(
  ( (Nil!56867) (Cons!56867 (h!63315 C!27112) (t!367491 List!56991)) )
))
(declare-fun lt!2035393 () List!56991)

(declare-fun size!37676 (List!56991) Int)

(assert (=> b!4938607 (<= lt!2035378 (size!37676 lt!2035393))))

(declare-fun lt!2035387 () Unit!147597)

(declare-fun testedP!110 () List!56991)

(declare-fun lemmaIsPrefixThenSmallerEqSize!727 (List!56991 List!56991) Unit!147597)

(assert (=> b!4938607 (= lt!2035387 (lemmaIsPrefixThenSmallerEqSize!727 testedP!110 lt!2035393))))

(declare-fun b!4938608 () Bool)

(declare-fun tp!1385813 () Bool)

(assert (=> b!4938608 (= e!3085734 tp!1385813)))

(declare-fun b!4938609 () Bool)

(declare-fun e!3085733 () Bool)

(assert (=> b!4938609 (= e!3085745 e!3085733)))

(declare-fun res!2107612 () Bool)

(assert (=> b!4938609 (=> res!2107612 e!3085733)))

(declare-fun lt!2035375 () List!56991)

(declare-fun lt!2035382 () List!56991)

(declare-fun ++!12410 (List!56991 List!56991) List!56991)

(assert (=> b!4938609 (= res!2107612 (not (= (++!12410 lt!2035375 lt!2035382) lt!2035393)))))

(declare-datatypes ((IArray!29961 0))(
  ( (IArray!29962 (innerList!15038 List!56991)) )
))
(declare-datatypes ((Conc!14950 0))(
  ( (Node!14950 (left!41475 Conc!14950) (right!41805 Conc!14950) (csize!30130 Int) (cheight!15161 Int)) (Leaf!24858 (xs!18274 IArray!29961) (csize!30131 Int)) (Empty!14950) )
))
(declare-datatypes ((BalanceConc!29330 0))(
  ( (BalanceConc!29331 (c!842145 Conc!14950)) )
))
(declare-datatypes ((tuple2!61398 0))(
  ( (tuple2!61399 (_1!34002 BalanceConc!29330) (_2!34002 BalanceConc!29330)) )
))
(declare-fun lt!2035384 () tuple2!61398)

(declare-fun list!18076 (BalanceConc!29330) List!56991)

(assert (=> b!4938609 (= lt!2035382 (list!18076 (_2!34002 lt!2035384)))))

(assert (=> b!4938609 (= lt!2035375 (list!18076 (_1!34002 lt!2035384)))))

(declare-fun totalInput!685 () BalanceConc!29330)

(declare-fun splitAt!353 (BalanceConc!29330 Int) tuple2!61398)

(assert (=> b!4938609 (= lt!2035384 (splitAt!353 totalInput!685 testedPSize!70))))

(declare-fun b!4938610 () Bool)

(declare-fun e!3085739 () Bool)

(assert (=> b!4938610 (= e!3085738 e!3085739)))

(declare-fun res!2107610 () Bool)

(assert (=> b!4938610 (=> res!2107610 e!3085739)))

(declare-fun nullableZipper!846 ((InoxSet Context!6166)) Bool)

(assert (=> b!4938610 (= res!2107610 (nullableZipper!846 z!3568))))

(declare-fun lt!2035376 () List!56991)

(declare-fun lt!2035374 () List!56991)

(assert (=> b!4938610 (= (++!12410 lt!2035376 lt!2035374) lt!2035393)))

(declare-fun lt!2035394 () C!27112)

(assert (=> b!4938610 (= lt!2035376 (++!12410 testedP!110 (Cons!56867 lt!2035394 Nil!56867)))))

(declare-fun lt!2035380 () Unit!147597)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1421 (List!56991 C!27112 List!56991 List!56991) Unit!147597)

(assert (=> b!4938610 (= lt!2035380 (lemmaMoveElementToOtherListKeepsConcatEq!1421 testedP!110 lt!2035394 lt!2035374 lt!2035393))))

(declare-fun testedSuffix!70 () List!56991)

(declare-fun tail!9717 (List!56991) List!56991)

(assert (=> b!4938610 (= lt!2035374 (tail!9717 testedSuffix!70))))

(declare-fun lt!2035383 () List!56991)

(declare-fun isPrefix!5039 (List!56991 List!56991) Bool)

(declare-fun head!10578 (List!56991) C!27112)

(assert (=> b!4938610 (isPrefix!5039 (++!12410 testedP!110 (Cons!56867 (head!10578 lt!2035383) Nil!56867)) lt!2035393)))

(declare-fun lt!2035386 () Unit!147597)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!809 (List!56991 List!56991) Unit!147597)

(assert (=> b!4938610 (= lt!2035386 (lemmaAddHeadSuffixToPrefixStillPrefix!809 testedP!110 lt!2035393))))

(declare-fun b!4938611 () Bool)

(declare-fun e!3085740 () Bool)

(declare-fun e!3085744 () Bool)

(assert (=> b!4938611 (= e!3085740 e!3085744)))

(declare-fun res!2107613 () Bool)

(assert (=> b!4938611 (=> (not res!2107613) (not e!3085744))))

(assert (=> b!4938611 (= res!2107613 (= testedPSize!70 lt!2035378))))

(assert (=> b!4938611 (= lt!2035378 (size!37676 testedP!110))))

(declare-fun b!4938612 () Bool)

(declare-fun e!3085742 () Bool)

(assert (=> b!4938612 (= e!3085744 e!3085742)))

(declare-fun res!2107606 () Bool)

(assert (=> b!4938612 (=> (not res!2107606) (not e!3085742))))

(assert (=> b!4938612 (= res!2107606 (= totalInputSize!132 lt!2035391))))

(declare-fun size!37677 (BalanceConc!29330) Int)

(assert (=> b!4938612 (= lt!2035391 (size!37677 totalInput!685))))

(declare-fun b!4938613 () Bool)

(assert (=> b!4938613 (= e!3085739 true)))

(declare-fun lt!2035388 () Int)

(assert (=> b!4938613 (= lt!2035388 (size!37676 lt!2035376))))

(declare-fun b!4938614 () Bool)

(declare-fun Unit!147599 () Unit!147597)

(assert (=> b!4938614 (= e!3085736 Unit!147599)))

(declare-fun lt!2035392 () Unit!147597)

(declare-fun lemmaIsPrefixRefl!3405 (List!56991 List!56991) Unit!147597)

(assert (=> b!4938614 (= lt!2035392 (lemmaIsPrefixRefl!3405 lt!2035393 lt!2035393))))

(assert (=> b!4938614 (isPrefix!5039 lt!2035393 lt!2035393)))

(declare-fun lt!2035390 () Unit!147597)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1163 (List!56991 List!56991 List!56991) Unit!147597)

(assert (=> b!4938614 (= lt!2035390 (lemmaIsPrefixSameLengthThenSameList!1163 lt!2035393 testedP!110 lt!2035393))))

(assert (=> b!4938614 false))

(declare-fun b!4938615 () Bool)

(declare-fun e!3085741 () Bool)

(assert (=> b!4938615 (= e!3085741 e!3085745)))

(declare-fun res!2107609 () Bool)

(assert (=> b!4938615 (=> res!2107609 e!3085745)))

(declare-fun lostCauseZipper!759 ((InoxSet Context!6166)) Bool)

(assert (=> b!4938615 (= res!2107609 (lostCauseZipper!759 z!3568))))

(assert (=> b!4938615 (and (= testedSuffix!70 lt!2035383) (= lt!2035383 testedSuffix!70))))

(declare-fun lt!2035395 () Unit!147597)

(declare-fun lemmaSamePrefixThenSameSuffix!2437 (List!56991 List!56991 List!56991 List!56991 List!56991) Unit!147597)

(assert (=> b!4938615 (= lt!2035395 (lemmaSamePrefixThenSameSuffix!2437 testedP!110 testedSuffix!70 testedP!110 lt!2035383 lt!2035393))))

(declare-fun getSuffix!3023 (List!56991 List!56991) List!56991)

(assert (=> b!4938615 (= lt!2035383 (getSuffix!3023 lt!2035393 testedP!110))))

(declare-fun b!4938616 () Bool)

(assert (=> b!4938616 (= e!3085733 e!3085743)))

(declare-fun res!2107604 () Bool)

(assert (=> b!4938616 (=> res!2107604 e!3085743)))

(assert (=> b!4938616 (= res!2107604 (not (= lt!2035394 (head!10578 testedSuffix!70))))))

(declare-fun apply!13780 (BalanceConc!29330 Int) C!27112)

(assert (=> b!4938616 (= lt!2035394 (apply!13780 totalInput!685 testedPSize!70))))

(declare-fun drop!2272 (List!56991 Int) List!56991)

(declare-fun apply!13781 (List!56991 Int) C!27112)

(assert (=> b!4938616 (= (head!10578 (drop!2272 lt!2035393 testedPSize!70)) (apply!13781 lt!2035393 testedPSize!70))))

(declare-fun lt!2035377 () Unit!147597)

(declare-fun lemmaDropApply!1330 (List!56991 Int) Unit!147597)

(assert (=> b!4938616 (= lt!2035377 (lemmaDropApply!1330 lt!2035393 testedPSize!70))))

(assert (=> b!4938616 (not (or (not (= lt!2035375 testedP!110)) (not (= lt!2035382 testedSuffix!70))))))

(declare-fun lt!2035381 () Unit!147597)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!707 (List!56991 List!56991 List!56991 List!56991) Unit!147597)

(assert (=> b!4938616 (= lt!2035381 (lemmaConcatSameAndSameSizesThenSameLists!707 lt!2035375 lt!2035382 testedP!110 testedSuffix!70))))

(declare-fun setIsEmpty!27852 () Bool)

(assert (=> setIsEmpty!27852 setRes!27852))

(declare-fun b!4938617 () Bool)

(declare-fun Unit!147600 () Unit!147597)

(assert (=> b!4938617 (= e!3085736 Unit!147600)))

(declare-fun b!4938618 () Bool)

(declare-fun e!3085737 () Bool)

(declare-fun tp!1385810 () Bool)

(declare-fun inv!73925 (Conc!14950) Bool)

(assert (=> b!4938618 (= e!3085737 (and (inv!73925 (c!842145 totalInput!685)) tp!1385810))))

(declare-fun b!4938619 () Bool)

(declare-fun e!3085732 () Bool)

(declare-fun tp!1385811 () Bool)

(assert (=> b!4938619 (= e!3085732 (and tp_is_empty!36059 tp!1385811))))

(declare-fun b!4938620 () Bool)

(assert (=> b!4938620 (= e!3085742 (not e!3085741))))

(declare-fun res!2107614 () Bool)

(assert (=> b!4938620 (=> res!2107614 e!3085741)))

(assert (=> b!4938620 (= res!2107614 (not (isPrefix!5039 testedP!110 lt!2035393)))))

(declare-fun lt!2035389 () List!56991)

(assert (=> b!4938620 (isPrefix!5039 testedP!110 lt!2035389)))

(declare-fun lt!2035379 () Unit!147597)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3263 (List!56991 List!56991) Unit!147597)

(assert (=> b!4938620 (= lt!2035379 (lemmaConcatTwoListThenFirstIsPrefix!3263 testedP!110 testedSuffix!70))))

(declare-fun b!4938621 () Bool)

(declare-fun res!2107607 () Bool)

(assert (=> b!4938621 (=> res!2107607 e!3085733)))

(assert (=> b!4938621 (= res!2107607 (not (= (size!37677 (_1!34002 lt!2035384)) testedPSize!70)))))

(declare-fun res!2107611 () Bool)

(assert (=> start!519436 (=> (not res!2107611) (not e!3085740))))

(assert (=> start!519436 (= res!2107611 (= lt!2035389 lt!2035393))))

(assert (=> start!519436 (= lt!2035393 (list!18076 totalInput!685))))

(assert (=> start!519436 (= lt!2035389 (++!12410 testedP!110 testedSuffix!70))))

(assert (=> start!519436 e!3085740))

(assert (=> start!519436 e!3085732))

(declare-fun condSetEmpty!27852 () Bool)

(assert (=> start!519436 (= condSetEmpty!27852 (= z!3568 ((as const (Array Context!6166 Bool)) false)))))

(assert (=> start!519436 setRes!27852))

(assert (=> start!519436 true))

(declare-fun inv!73926 (BalanceConc!29330) Bool)

(assert (=> start!519436 (and (inv!73926 totalInput!685) e!3085737)))

(assert (=> start!519436 e!3085735))

(assert (= (and start!519436 res!2107611) b!4938611))

(assert (= (and b!4938611 res!2107613) b!4938612))

(assert (= (and b!4938612 res!2107606) b!4938620))

(assert (= (and b!4938620 (not res!2107614)) b!4938615))

(assert (= (and b!4938615 (not res!2107609)) b!4938605))

(assert (= (and b!4938605 (not res!2107608)) b!4938609))

(assert (= (and b!4938609 (not res!2107612)) b!4938621))

(assert (= (and b!4938621 (not res!2107607)) b!4938616))

(assert (= (and b!4938616 (not res!2107604)) b!4938607))

(assert (= (and b!4938607 c!842143) b!4938614))

(assert (= (and b!4938607 (not c!842143)) b!4938617))

(assert (= (and b!4938607 (not res!2107605)) b!4938610))

(assert (= (and b!4938610 (not res!2107610)) b!4938613))

(get-info :version)

(assert (= (and start!519436 ((_ is Cons!56867) testedP!110)) b!4938619))

(assert (= (and start!519436 condSetEmpty!27852) setIsEmpty!27852))

(assert (= (and start!519436 (not condSetEmpty!27852)) setNonEmpty!27852))

(assert (= setNonEmpty!27852 b!4938608))

(assert (= start!519436 b!4938618))

(assert (= (and start!519436 ((_ is Cons!56867) testedSuffix!70)) b!4938606))

(declare-fun m!5960712 () Bool)

(assert (=> b!4938609 m!5960712))

(declare-fun m!5960714 () Bool)

(assert (=> b!4938609 m!5960714))

(declare-fun m!5960716 () Bool)

(assert (=> b!4938609 m!5960716))

(declare-fun m!5960718 () Bool)

(assert (=> b!4938609 m!5960718))

(declare-fun m!5960720 () Bool)

(assert (=> b!4938607 m!5960720))

(declare-fun m!5960722 () Bool)

(assert (=> b!4938607 m!5960722))

(declare-fun m!5960724 () Bool)

(assert (=> setNonEmpty!27852 m!5960724))

(declare-fun m!5960726 () Bool)

(assert (=> b!4938621 m!5960726))

(declare-fun m!5960728 () Bool)

(assert (=> b!4938615 m!5960728))

(declare-fun m!5960730 () Bool)

(assert (=> b!4938615 m!5960730))

(declare-fun m!5960732 () Bool)

(assert (=> b!4938615 m!5960732))

(declare-fun m!5960734 () Bool)

(assert (=> b!4938610 m!5960734))

(assert (=> b!4938610 m!5960734))

(declare-fun m!5960736 () Bool)

(assert (=> b!4938610 m!5960736))

(declare-fun m!5960738 () Bool)

(assert (=> b!4938610 m!5960738))

(declare-fun m!5960740 () Bool)

(assert (=> b!4938610 m!5960740))

(declare-fun m!5960742 () Bool)

(assert (=> b!4938610 m!5960742))

(declare-fun m!5960744 () Bool)

(assert (=> b!4938610 m!5960744))

(declare-fun m!5960746 () Bool)

(assert (=> b!4938610 m!5960746))

(declare-fun m!5960748 () Bool)

(assert (=> b!4938610 m!5960748))

(declare-fun m!5960750 () Bool)

(assert (=> b!4938610 m!5960750))

(declare-fun m!5960752 () Bool)

(assert (=> b!4938613 m!5960752))

(declare-fun m!5960754 () Bool)

(assert (=> b!4938612 m!5960754))

(declare-fun m!5960756 () Bool)

(assert (=> b!4938618 m!5960756))

(declare-fun m!5960758 () Bool)

(assert (=> b!4938620 m!5960758))

(declare-fun m!5960760 () Bool)

(assert (=> b!4938620 m!5960760))

(declare-fun m!5960762 () Bool)

(assert (=> b!4938620 m!5960762))

(declare-fun m!5960764 () Bool)

(assert (=> b!4938611 m!5960764))

(declare-fun m!5960766 () Bool)

(assert (=> start!519436 m!5960766))

(declare-fun m!5960768 () Bool)

(assert (=> start!519436 m!5960768))

(declare-fun m!5960770 () Bool)

(assert (=> start!519436 m!5960770))

(declare-fun m!5960772 () Bool)

(assert (=> b!4938614 m!5960772))

(declare-fun m!5960774 () Bool)

(assert (=> b!4938614 m!5960774))

(declare-fun m!5960776 () Bool)

(assert (=> b!4938614 m!5960776))

(declare-fun m!5960778 () Bool)

(assert (=> b!4938616 m!5960778))

(declare-fun m!5960780 () Bool)

(assert (=> b!4938616 m!5960780))

(declare-fun m!5960782 () Bool)

(assert (=> b!4938616 m!5960782))

(declare-fun m!5960784 () Bool)

(assert (=> b!4938616 m!5960784))

(declare-fun m!5960786 () Bool)

(assert (=> b!4938616 m!5960786))

(declare-fun m!5960788 () Bool)

(assert (=> b!4938616 m!5960788))

(assert (=> b!4938616 m!5960786))

(declare-fun m!5960790 () Bool)

(assert (=> b!4938616 m!5960790))

(check-sat (not b!4938619) (not b!4938607) (not start!519436) (not b!4938614) (not b!4938609) (not b!4938620) (not b!4938611) (not b!4938616) (not b!4938610) (not b!4938615) tp_is_empty!36059 (not setNonEmpty!27852) (not b!4938612) (not b!4938613) (not b!4938608) (not b!4938618) (not b!4938606) (not b!4938621))
(check-sat)
