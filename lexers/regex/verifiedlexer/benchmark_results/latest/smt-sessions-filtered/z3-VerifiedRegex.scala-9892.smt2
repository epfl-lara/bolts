; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518112 () Bool)

(assert start!518112)

(declare-fun b!4932327 () Bool)

(declare-fun e!3081670 () Bool)

(declare-fun tp!1384739 () Bool)

(assert (=> b!4932327 (= e!3081670 tp!1384739)))

(declare-fun b!4932328 () Bool)

(declare-fun res!2104983 () Bool)

(declare-fun e!3081675 () Bool)

(assert (=> b!4932328 (=> res!2104983 e!3081675)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4932328 (= res!2104983 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4932329 () Bool)

(declare-fun e!3081668 () Bool)

(assert (=> b!4932329 (= e!3081668 e!3081675)))

(declare-fun res!2104981 () Bool)

(assert (=> b!4932329 (=> res!2104981 e!3081675)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27052 0))(
  ( (C!27053 (val!22860 Int)) )
))
(declare-datatypes ((Regex!13411 0))(
  ( (ElementMatch!13411 (c!840545 C!27052)) (Concat!21984 (regOne!27334 Regex!13411) (regTwo!27334 Regex!13411)) (EmptyExpr!13411) (Star!13411 (reg!13740 Regex!13411)) (EmptyLang!13411) (Union!13411 (regOne!27335 Regex!13411) (regTwo!27335 Regex!13411)) )
))
(declare-datatypes ((List!56910 0))(
  ( (Nil!56786) (Cons!56786 (h!63234 Regex!13411) (t!367390 List!56910)) )
))
(declare-datatypes ((Context!6106 0))(
  ( (Context!6107 (exprs!3553 List!56910)) )
))
(declare-fun z!3568 () (InoxSet Context!6106))

(declare-fun lostCauseZipper!729 ((InoxSet Context!6106)) Bool)

(assert (=> b!4932329 (= res!2104981 (lostCauseZipper!729 z!3568))))

(declare-datatypes ((List!56911 0))(
  ( (Nil!56787) (Cons!56787 (h!63235 C!27052) (t!367391 List!56911)) )
))
(declare-fun testedSuffix!70 () List!56911)

(declare-fun lt!2030807 () List!56911)

(assert (=> b!4932329 (and (= testedSuffix!70 lt!2030807) (= lt!2030807 testedSuffix!70))))

(declare-fun testedP!110 () List!56911)

(declare-fun lt!2030810 () List!56911)

(declare-datatypes ((Unit!147425 0))(
  ( (Unit!147426) )
))
(declare-fun lt!2030806 () Unit!147425)

(declare-fun lemmaSamePrefixThenSameSuffix!2407 (List!56911 List!56911 List!56911 List!56911 List!56911) Unit!147425)

(assert (=> b!4932329 (= lt!2030806 (lemmaSamePrefixThenSameSuffix!2407 testedP!110 testedSuffix!70 testedP!110 lt!2030807 lt!2030810))))

(declare-fun getSuffix!2993 (List!56911 List!56911) List!56911)

(assert (=> b!4932329 (= lt!2030807 (getSuffix!2993 lt!2030810 testedP!110))))

(declare-fun b!4932330 () Bool)

(declare-fun e!3081676 () Bool)

(declare-datatypes ((IArray!29901 0))(
  ( (IArray!29902 (innerList!15008 List!56911)) )
))
(declare-datatypes ((Conc!14920 0))(
  ( (Node!14920 (left!41414 Conc!14920) (right!41744 Conc!14920) (csize!30070 Int) (cheight!15131 Int)) (Leaf!24813 (xs!18244 IArray!29901) (csize!30071 Int)) (Empty!14920) )
))
(declare-datatypes ((BalanceConc!29270 0))(
  ( (BalanceConc!29271 (c!840546 Conc!14920)) )
))
(declare-fun totalInput!685 () BalanceConc!29270)

(declare-fun tp!1384742 () Bool)

(declare-fun inv!73731 (Conc!14920) Bool)

(assert (=> b!4932330 (= e!3081676 (and (inv!73731 (c!840546 totalInput!685)) tp!1384742))))

(declare-fun b!4932331 () Bool)

(declare-fun e!3081671 () Bool)

(declare-fun e!3081666 () Bool)

(assert (=> b!4932331 (= e!3081671 e!3081666)))

(declare-fun res!2104978 () Bool)

(assert (=> b!4932331 (=> (not res!2104978) (not e!3081666))))

(declare-fun lt!2030814 () Int)

(assert (=> b!4932331 (= res!2104978 (= testedPSize!70 lt!2030814))))

(declare-fun size!37596 (List!56911) Int)

(assert (=> b!4932331 (= lt!2030814 (size!37596 testedP!110))))

(declare-fun res!2104984 () Bool)

(assert (=> start!518112 (=> (not res!2104984) (not e!3081671))))

(declare-fun lt!2030811 () List!56911)

(assert (=> start!518112 (= res!2104984 (= lt!2030811 lt!2030810))))

(declare-fun list!18022 (BalanceConc!29270) List!56911)

(assert (=> start!518112 (= lt!2030810 (list!18022 totalInput!685))))

(declare-fun ++!12376 (List!56911 List!56911) List!56911)

(assert (=> start!518112 (= lt!2030811 (++!12376 testedP!110 testedSuffix!70))))

(assert (=> start!518112 e!3081671))

(declare-fun e!3081669 () Bool)

(assert (=> start!518112 e!3081669))

(declare-fun condSetEmpty!27698 () Bool)

(assert (=> start!518112 (= condSetEmpty!27698 (= z!3568 ((as const (Array Context!6106 Bool)) false)))))

(declare-fun setRes!27698 () Bool)

(assert (=> start!518112 setRes!27698))

(assert (=> start!518112 true))

(declare-fun inv!73732 (BalanceConc!29270) Bool)

(assert (=> start!518112 (and (inv!73732 totalInput!685) e!3081676)))

(declare-fun e!3081667 () Bool)

(assert (=> start!518112 e!3081667))

(declare-fun b!4932332 () Bool)

(declare-fun e!3081672 () Unit!147425)

(declare-fun Unit!147427 () Unit!147425)

(assert (=> b!4932332 (= e!3081672 Unit!147427)))

(declare-fun lt!2030808 () Unit!147425)

(declare-fun lemmaIsPrefixRefl!3375 (List!56911 List!56911) Unit!147425)

(assert (=> b!4932332 (= lt!2030808 (lemmaIsPrefixRefl!3375 lt!2030810 lt!2030810))))

(declare-fun isPrefix!5009 (List!56911 List!56911) Bool)

(assert (=> b!4932332 (isPrefix!5009 lt!2030810 lt!2030810)))

(declare-fun lt!2030804 () Unit!147425)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1133 (List!56911 List!56911 List!56911) Unit!147425)

(assert (=> b!4932332 (= lt!2030804 (lemmaIsPrefixSameLengthThenSameList!1133 lt!2030810 testedP!110 lt!2030810))))

(assert (=> b!4932332 false))

(declare-fun b!4932333 () Bool)

(declare-fun e!3081665 () Bool)

(assert (=> b!4932333 (= e!3081665 (not e!3081668))))

(declare-fun res!2104980 () Bool)

(assert (=> b!4932333 (=> res!2104980 e!3081668)))

(assert (=> b!4932333 (= res!2104980 (not (isPrefix!5009 testedP!110 lt!2030810)))))

(assert (=> b!4932333 (isPrefix!5009 testedP!110 lt!2030811)))

(declare-fun lt!2030815 () Unit!147425)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3233 (List!56911 List!56911) Unit!147425)

(assert (=> b!4932333 (= lt!2030815 (lemmaConcatTwoListThenFirstIsPrefix!3233 testedP!110 testedSuffix!70))))

(declare-fun b!4932334 () Bool)

(declare-fun e!3081673 () Bool)

(declare-fun e!3081674 () Bool)

(assert (=> b!4932334 (= e!3081673 e!3081674)))

(declare-fun res!2104976 () Bool)

(assert (=> b!4932334 (=> res!2104976 e!3081674)))

(declare-fun apply!13697 (BalanceConc!29270 Int) C!27052)

(declare-fun head!10548 (List!56911) C!27052)

(assert (=> b!4932334 (= res!2104976 (not (= (apply!13697 totalInput!685 testedPSize!70) (head!10548 testedSuffix!70))))))

(declare-fun drop!2242 (List!56911 Int) List!56911)

(declare-fun apply!13698 (List!56911 Int) C!27052)

(assert (=> b!4932334 (= (head!10548 (drop!2242 lt!2030810 testedPSize!70)) (apply!13698 lt!2030810 testedPSize!70))))

(declare-fun lt!2030809 () Unit!147425)

(declare-fun lemmaDropApply!1300 (List!56911 Int) Unit!147425)

(assert (=> b!4932334 (= lt!2030809 (lemmaDropApply!1300 lt!2030810 testedPSize!70))))

(declare-fun lt!2030813 () List!56911)

(declare-fun lt!2030800 () List!56911)

(assert (=> b!4932334 (not (or (not (= lt!2030813 testedP!110)) (not (= lt!2030800 testedSuffix!70))))))

(declare-fun lt!2030805 () Unit!147425)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!677 (List!56911 List!56911 List!56911 List!56911) Unit!147425)

(assert (=> b!4932334 (= lt!2030805 (lemmaConcatSameAndSameSizesThenSameLists!677 lt!2030813 lt!2030800 testedP!110 testedSuffix!70))))

(declare-fun setIsEmpty!27698 () Bool)

(assert (=> setIsEmpty!27698 setRes!27698))

(declare-fun b!4932335 () Bool)

(declare-fun tp_is_empty!35999 () Bool)

(declare-fun tp!1384741 () Bool)

(assert (=> b!4932335 (= e!3081669 (and tp_is_empty!35999 tp!1384741))))

(declare-fun b!4932336 () Bool)

(assert (=> b!4932336 (= e!3081675 e!3081673)))

(declare-fun res!2104982 () Bool)

(assert (=> b!4932336 (=> res!2104982 e!3081673)))

(assert (=> b!4932336 (= res!2104982 (not (= (++!12376 lt!2030813 lt!2030800) lt!2030810)))))

(declare-datatypes ((tuple2!61258 0))(
  ( (tuple2!61259 (_1!33932 BalanceConc!29270) (_2!33932 BalanceConc!29270)) )
))
(declare-fun lt!2030801 () tuple2!61258)

(assert (=> b!4932336 (= lt!2030800 (list!18022 (_2!33932 lt!2030801)))))

(assert (=> b!4932336 (= lt!2030813 (list!18022 (_1!33932 lt!2030801)))))

(declare-fun splitAt!303 (BalanceConc!29270 Int) tuple2!61258)

(assert (=> b!4932336 (= lt!2030801 (splitAt!303 totalInput!685 testedPSize!70))))

(declare-fun tp!1384740 () Bool)

(declare-fun setNonEmpty!27698 () Bool)

(declare-fun setElem!27698 () Context!6106)

(declare-fun inv!73733 (Context!6106) Bool)

(assert (=> setNonEmpty!27698 (= setRes!27698 (and tp!1384740 (inv!73733 setElem!27698) e!3081670))))

(declare-fun setRest!27698 () (InoxSet Context!6106))

(assert (=> setNonEmpty!27698 (= z!3568 ((_ map or) (store ((as const (Array Context!6106 Bool)) false) setElem!27698 true) setRest!27698))))

(declare-fun b!4932337 () Bool)

(assert (=> b!4932337 (= e!3081666 e!3081665)))

(declare-fun res!2104979 () Bool)

(assert (=> b!4932337 (=> (not res!2104979) (not e!3081665))))

(declare-fun lt!2030812 () Int)

(assert (=> b!4932337 (= res!2104979 (= totalInputSize!132 lt!2030812))))

(declare-fun size!37597 (BalanceConc!29270) Int)

(assert (=> b!4932337 (= lt!2030812 (size!37597 totalInput!685))))

(declare-fun b!4932338 () Bool)

(declare-fun Unit!147428 () Unit!147425)

(assert (=> b!4932338 (= e!3081672 Unit!147428)))

(declare-fun b!4932339 () Bool)

(declare-fun tp!1384743 () Bool)

(assert (=> b!4932339 (= e!3081667 (and tp_is_empty!35999 tp!1384743))))

(declare-fun b!4932340 () Bool)

(assert (=> b!4932340 (= e!3081674 true)))

(declare-fun lt!2030803 () Unit!147425)

(assert (=> b!4932340 (= lt!2030803 e!3081672)))

(declare-fun c!840544 () Bool)

(assert (=> b!4932340 (= c!840544 (= lt!2030814 lt!2030812))))

(assert (=> b!4932340 (<= lt!2030814 (size!37596 lt!2030810))))

(declare-fun lt!2030802 () Unit!147425)

(declare-fun lemmaIsPrefixThenSmallerEqSize!697 (List!56911 List!56911) Unit!147425)

(assert (=> b!4932340 (= lt!2030802 (lemmaIsPrefixThenSmallerEqSize!697 testedP!110 lt!2030810))))

(declare-fun b!4932341 () Bool)

(declare-fun res!2104977 () Bool)

(assert (=> b!4932341 (=> res!2104977 e!3081673)))

(assert (=> b!4932341 (= res!2104977 (not (= (size!37597 (_1!33932 lt!2030801)) testedPSize!70)))))

(assert (= (and start!518112 res!2104984) b!4932331))

(assert (= (and b!4932331 res!2104978) b!4932337))

(assert (= (and b!4932337 res!2104979) b!4932333))

(assert (= (and b!4932333 (not res!2104980)) b!4932329))

(assert (= (and b!4932329 (not res!2104981)) b!4932328))

(assert (= (and b!4932328 (not res!2104983)) b!4932336))

(assert (= (and b!4932336 (not res!2104982)) b!4932341))

(assert (= (and b!4932341 (not res!2104977)) b!4932334))

(assert (= (and b!4932334 (not res!2104976)) b!4932340))

(assert (= (and b!4932340 c!840544) b!4932332))

(assert (= (and b!4932340 (not c!840544)) b!4932338))

(get-info :version)

(assert (= (and start!518112 ((_ is Cons!56787) testedP!110)) b!4932335))

(assert (= (and start!518112 condSetEmpty!27698) setIsEmpty!27698))

(assert (= (and start!518112 (not condSetEmpty!27698)) setNonEmpty!27698))

(assert (= setNonEmpty!27698 b!4932327))

(assert (= start!518112 b!4932330))

(assert (= (and start!518112 ((_ is Cons!56787) testedSuffix!70)) b!4932339))

(declare-fun m!5952516 () Bool)

(assert (=> start!518112 m!5952516))

(declare-fun m!5952518 () Bool)

(assert (=> start!518112 m!5952518))

(declare-fun m!5952520 () Bool)

(assert (=> start!518112 m!5952520))

(declare-fun m!5952522 () Bool)

(assert (=> b!4932337 m!5952522))

(declare-fun m!5952524 () Bool)

(assert (=> b!4932336 m!5952524))

(declare-fun m!5952526 () Bool)

(assert (=> b!4932336 m!5952526))

(declare-fun m!5952528 () Bool)

(assert (=> b!4932336 m!5952528))

(declare-fun m!5952530 () Bool)

(assert (=> b!4932336 m!5952530))

(declare-fun m!5952532 () Bool)

(assert (=> b!4932329 m!5952532))

(declare-fun m!5952534 () Bool)

(assert (=> b!4932329 m!5952534))

(declare-fun m!5952536 () Bool)

(assert (=> b!4932329 m!5952536))

(declare-fun m!5952538 () Bool)

(assert (=> setNonEmpty!27698 m!5952538))

(declare-fun m!5952540 () Bool)

(assert (=> b!4932332 m!5952540))

(declare-fun m!5952542 () Bool)

(assert (=> b!4932332 m!5952542))

(declare-fun m!5952544 () Bool)

(assert (=> b!4932332 m!5952544))

(declare-fun m!5952546 () Bool)

(assert (=> b!4932331 m!5952546))

(declare-fun m!5952548 () Bool)

(assert (=> b!4932334 m!5952548))

(declare-fun m!5952550 () Bool)

(assert (=> b!4932334 m!5952550))

(declare-fun m!5952552 () Bool)

(assert (=> b!4932334 m!5952552))

(declare-fun m!5952554 () Bool)

(assert (=> b!4932334 m!5952554))

(declare-fun m!5952556 () Bool)

(assert (=> b!4932334 m!5952556))

(assert (=> b!4932334 m!5952548))

(declare-fun m!5952558 () Bool)

(assert (=> b!4932334 m!5952558))

(declare-fun m!5952560 () Bool)

(assert (=> b!4932334 m!5952560))

(declare-fun m!5952562 () Bool)

(assert (=> b!4932341 m!5952562))

(declare-fun m!5952564 () Bool)

(assert (=> b!4932340 m!5952564))

(declare-fun m!5952566 () Bool)

(assert (=> b!4932340 m!5952566))

(declare-fun m!5952568 () Bool)

(assert (=> b!4932330 m!5952568))

(declare-fun m!5952570 () Bool)

(assert (=> b!4932333 m!5952570))

(declare-fun m!5952572 () Bool)

(assert (=> b!4932333 m!5952572))

(declare-fun m!5952574 () Bool)

(assert (=> b!4932333 m!5952574))

(check-sat (not b!4932335) (not b!4932333) (not b!4932336) (not b!4932329) (not b!4932341) (not b!4932339) (not b!4932327) (not b!4932337) (not b!4932332) (not b!4932330) (not setNonEmpty!27698) (not b!4932340) (not b!4932334) tp_is_empty!35999 (not b!4932331) (not start!518112))
(check-sat)
