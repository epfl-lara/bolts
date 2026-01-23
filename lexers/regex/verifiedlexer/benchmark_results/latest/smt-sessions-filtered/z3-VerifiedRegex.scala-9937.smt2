; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!521240 () Bool)

(assert start!521240)

(declare-fun b!4948714 () Bool)

(declare-fun e!3091994 () Bool)

(declare-fun e!3091991 () Bool)

(assert (=> b!4948714 (= e!3091994 (not e!3091991))))

(declare-fun res!2111580 () Bool)

(assert (=> b!4948714 (=> res!2111580 e!3091991)))

(declare-datatypes ((C!27232 0))(
  ( (C!27233 (val!22950 Int)) )
))
(declare-datatypes ((List!57127 0))(
  ( (Nil!57003) (Cons!57003 (h!63451 C!27232) (t!367673 List!57127)) )
))
(declare-fun testedP!110 () List!57127)

(declare-fun lt!2041510 () List!57127)

(declare-fun isPrefix!5097 (List!57127 List!57127) Bool)

(assert (=> b!4948714 (= res!2111580 (not (isPrefix!5097 testedP!110 lt!2041510)))))

(declare-fun lt!2041508 () List!57127)

(assert (=> b!4948714 (isPrefix!5097 testedP!110 lt!2041508)))

(declare-datatypes ((Unit!147830 0))(
  ( (Unit!147831) )
))
(declare-fun lt!2041498 () Unit!147830)

(declare-fun testedSuffix!70 () List!57127)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3321 (List!57127 List!57127) Unit!147830)

(assert (=> b!4948714 (= lt!2041498 (lemmaConcatTwoListThenFirstIsPrefix!3321 testedP!110 testedSuffix!70))))

(declare-fun b!4948715 () Bool)

(declare-fun e!3091993 () Bool)

(declare-fun e!3091981 () Bool)

(assert (=> b!4948715 (= e!3091993 e!3091981)))

(declare-fun res!2111577 () Bool)

(assert (=> b!4948715 (=> res!2111577 e!3091981)))

(declare-fun lt!2041511 () Int)

(assert (=> b!4948715 (= res!2111577 (= lt!2041511 0))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13491 0))(
  ( (ElementMatch!13491 (c!844684 C!27232)) (Concat!22064 (regOne!27494 Regex!13491) (regTwo!27494 Regex!13491)) (EmptyExpr!13491) (Star!13491 (reg!13820 Regex!13491)) (EmptyLang!13491) (Union!13491 (regOne!27495 Regex!13491) (regTwo!27495 Regex!13491)) )
))
(declare-datatypes ((List!57128 0))(
  ( (Nil!57004) (Cons!57004 (h!63452 Regex!13491) (t!367674 List!57128)) )
))
(declare-datatypes ((Context!6266 0))(
  ( (Context!6267 (exprs!3633 List!57128)) )
))
(declare-fun z!3568 () (InoxSet Context!6266))

(declare-fun lt!2041496 () List!57127)

(declare-datatypes ((IArray!30081 0))(
  ( (IArray!30082 (innerList!15098 List!57127)) )
))
(declare-datatypes ((Conc!15010 0))(
  ( (Node!15010 (left!41589 Conc!15010) (right!41919 Conc!15010) (csize!30250 Int) (cheight!15221 Int)) (Leaf!24948 (xs!18336 IArray!30081) (csize!30251 Int)) (Empty!15010) )
))
(declare-datatypes ((BalanceConc!29450 0))(
  ( (BalanceConc!29451 (c!844685 Conc!15010)) )
))
(declare-fun totalInput!685 () BalanceConc!29450)

(declare-fun lt!2041491 () C!27232)

(declare-fun lt!2041504 () List!57127)

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(declare-fun findLongestMatchInnerZipperFast!105 ((InoxSet Context!6266) List!57127 Int List!57127 BalanceConc!29450 Int) Int)

(declare-fun derivationStepZipper!613 ((InoxSet Context!6266) C!27232) (InoxSet Context!6266))

(assert (=> b!4948715 (= lt!2041511 (findLongestMatchInnerZipperFast!105 (derivationStepZipper!613 z!3568 lt!2041491) lt!2041496 (+ 1 testedPSize!70) lt!2041504 totalInput!685 totalInputSize!132))))

(declare-fun b!4948716 () Bool)

(declare-fun e!3091992 () Bool)

(assert (=> b!4948716 (= e!3091991 e!3091992)))

(declare-fun res!2111581 () Bool)

(assert (=> b!4948716 (=> res!2111581 e!3091992)))

(declare-fun lostCauseZipper!809 ((InoxSet Context!6266)) Bool)

(assert (=> b!4948716 (= res!2111581 (lostCauseZipper!809 z!3568))))

(declare-fun lt!2041497 () List!57127)

(assert (=> b!4948716 (and (= testedSuffix!70 lt!2041497) (= lt!2041497 testedSuffix!70))))

(declare-fun lt!2041495 () Unit!147830)

(declare-fun lemmaSamePrefixThenSameSuffix!2489 (List!57127 List!57127 List!57127 List!57127 List!57127) Unit!147830)

(assert (=> b!4948716 (= lt!2041495 (lemmaSamePrefixThenSameSuffix!2489 testedP!110 testedSuffix!70 testedP!110 lt!2041497 lt!2041510))))

(declare-fun getSuffix!3079 (List!57127 List!57127) List!57127)

(assert (=> b!4948716 (= lt!2041497 (getSuffix!3079 lt!2041510 testedP!110))))

(declare-fun b!4948717 () Bool)

(declare-fun e!3091987 () Bool)

(declare-fun e!3091986 () Bool)

(assert (=> b!4948717 (= e!3091987 e!3091986)))

(declare-fun res!2111584 () Bool)

(assert (=> b!4948717 (=> res!2111584 e!3091986)))

(declare-fun head!10617 (List!57127) C!27232)

(assert (=> b!4948717 (= res!2111584 (not (= lt!2041491 (head!10617 testedSuffix!70))))))

(declare-fun apply!13841 (BalanceConc!29450 Int) C!27232)

(assert (=> b!4948717 (= lt!2041491 (apply!13841 totalInput!685 testedPSize!70))))

(declare-fun drop!2298 (List!57127 Int) List!57127)

(declare-fun apply!13842 (List!57127 Int) C!27232)

(assert (=> b!4948717 (= (head!10617 (drop!2298 lt!2041510 testedPSize!70)) (apply!13842 lt!2041510 testedPSize!70))))

(declare-fun lt!2041492 () Unit!147830)

(declare-fun lemmaDropApply!1352 (List!57127 Int) Unit!147830)

(assert (=> b!4948717 (= lt!2041492 (lemmaDropApply!1352 lt!2041510 testedPSize!70))))

(declare-fun lt!2041502 () List!57127)

(declare-fun lt!2041506 () List!57127)

(assert (=> b!4948717 (not (or (not (= lt!2041506 testedP!110)) (not (= lt!2041502 testedSuffix!70))))))

(declare-fun lt!2041509 () Unit!147830)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!735 (List!57127 List!57127 List!57127 List!57127) Unit!147830)

(assert (=> b!4948717 (= lt!2041509 (lemmaConcatSameAndSameSizesThenSameLists!735 lt!2041506 lt!2041502 testedP!110 testedSuffix!70))))

(declare-fun b!4948718 () Bool)

(declare-fun e!3091990 () Bool)

(declare-fun tp!1387845 () Bool)

(declare-fun inv!74280 (Conc!15010) Bool)

(assert (=> b!4948718 (= e!3091990 (and (inv!74280 (c!844685 totalInput!685)) tp!1387845))))

(declare-fun b!4948719 () Bool)

(declare-fun e!3091982 () Bool)

(assert (=> b!4948719 (= e!3091986 e!3091982)))

(declare-fun res!2111574 () Bool)

(assert (=> b!4948719 (=> res!2111574 e!3091982)))

(declare-fun lt!2041501 () Int)

(declare-fun lt!2041499 () Int)

(assert (=> b!4948719 (= res!2111574 (>= lt!2041501 lt!2041499))))

(declare-fun lt!2041500 () Unit!147830)

(declare-fun e!3091985 () Unit!147830)

(assert (=> b!4948719 (= lt!2041500 e!3091985)))

(declare-fun c!844683 () Bool)

(assert (=> b!4948719 (= c!844683 (= lt!2041501 lt!2041499))))

(declare-fun size!37831 (List!57127) Int)

(assert (=> b!4948719 (<= lt!2041501 (size!37831 lt!2041510))))

(declare-fun lt!2041494 () Unit!147830)

(declare-fun lemmaIsPrefixThenSmallerEqSize!752 (List!57127 List!57127) Unit!147830)

(assert (=> b!4948719 (= lt!2041494 (lemmaIsPrefixThenSmallerEqSize!752 testedP!110 lt!2041510))))

(declare-fun b!4948721 () Bool)

(declare-fun res!2111573 () Bool)

(assert (=> b!4948721 (=> res!2111573 e!3091992)))

(assert (=> b!4948721 (= res!2111573 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4948722 () Bool)

(declare-datatypes ((tuple2!61574 0))(
  ( (tuple2!61575 (_1!34090 List!57127) (_2!34090 List!57127)) )
))
(declare-fun findLongestMatchInnerZipper!80 ((InoxSet Context!6266) List!57127 Int List!57127 List!57127 Int) tuple2!61574)

(assert (=> b!4948722 (= e!3091981 (= (size!37831 (_1!34090 (findLongestMatchInnerZipper!80 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2041510 totalInputSize!132))) lt!2041511))))

(declare-fun setIsEmpty!28102 () Bool)

(declare-fun setRes!28102 () Bool)

(assert (=> setIsEmpty!28102 setRes!28102))

(declare-fun b!4948723 () Bool)

(declare-fun e!3091983 () Bool)

(declare-fun e!3091988 () Bool)

(assert (=> b!4948723 (= e!3091983 e!3091988)))

(declare-fun res!2111582 () Bool)

(assert (=> b!4948723 (=> (not res!2111582) (not e!3091988))))

(assert (=> b!4948723 (= res!2111582 (= testedPSize!70 lt!2041501))))

(assert (=> b!4948723 (= lt!2041501 (size!37831 testedP!110))))

(declare-fun b!4948724 () Bool)

(declare-fun Unit!147832 () Unit!147830)

(assert (=> b!4948724 (= e!3091985 Unit!147832)))

(declare-fun lt!2041507 () Unit!147830)

(declare-fun lemmaIsPrefixRefl!3437 (List!57127 List!57127) Unit!147830)

(assert (=> b!4948724 (= lt!2041507 (lemmaIsPrefixRefl!3437 lt!2041510 lt!2041510))))

(assert (=> b!4948724 (isPrefix!5097 lt!2041510 lt!2041510)))

(declare-fun lt!2041503 () Unit!147830)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1189 (List!57127 List!57127 List!57127) Unit!147830)

(assert (=> b!4948724 (= lt!2041503 (lemmaIsPrefixSameLengthThenSameList!1189 lt!2041510 testedP!110 lt!2041510))))

(assert (=> b!4948724 false))

(declare-fun b!4948725 () Bool)

(declare-fun e!3091984 () Bool)

(declare-fun tp_is_empty!36179 () Bool)

(declare-fun tp!1387841 () Bool)

(assert (=> b!4948725 (= e!3091984 (and tp_is_empty!36179 tp!1387841))))

(declare-fun b!4948726 () Bool)

(assert (=> b!4948726 (= e!3091982 e!3091993)))

(declare-fun res!2111579 () Bool)

(assert (=> b!4948726 (=> res!2111579 e!3091993)))

(declare-fun nullableZipper!862 ((InoxSet Context!6266)) Bool)

(assert (=> b!4948726 (= res!2111579 (not (nullableZipper!862 z!3568)))))

(declare-fun ++!12478 (List!57127 List!57127) List!57127)

(assert (=> b!4948726 (= (++!12478 lt!2041496 lt!2041504) lt!2041510)))

(assert (=> b!4948726 (= lt!2041496 (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003)))))

(declare-fun lt!2041505 () Unit!147830)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1436 (List!57127 C!27232 List!57127 List!57127) Unit!147830)

(assert (=> b!4948726 (= lt!2041505 (lemmaMoveElementToOtherListKeepsConcatEq!1436 testedP!110 lt!2041491 lt!2041504 lt!2041510))))

(declare-fun tail!9752 (List!57127) List!57127)

(assert (=> b!4948726 (= lt!2041504 (tail!9752 testedSuffix!70))))

(assert (=> b!4948726 (isPrefix!5097 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003)) lt!2041510)))

(declare-fun lt!2041493 () Unit!147830)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!826 (List!57127 List!57127) Unit!147830)

(assert (=> b!4948726 (= lt!2041493 (lemmaAddHeadSuffixToPrefixStillPrefix!826 testedP!110 lt!2041510))))

(declare-fun res!2111576 () Bool)

(assert (=> start!521240 (=> (not res!2111576) (not e!3091983))))

(assert (=> start!521240 (= res!2111576 (= lt!2041508 lt!2041510))))

(declare-fun list!18179 (BalanceConc!29450) List!57127)

(assert (=> start!521240 (= lt!2041510 (list!18179 totalInput!685))))

(assert (=> start!521240 (= lt!2041508 (++!12478 testedP!110 testedSuffix!70))))

(assert (=> start!521240 e!3091983))

(assert (=> start!521240 e!3091984))

(declare-fun condSetEmpty!28102 () Bool)

(assert (=> start!521240 (= condSetEmpty!28102 (= z!3568 ((as const (Array Context!6266 Bool)) false)))))

(assert (=> start!521240 setRes!28102))

(assert (=> start!521240 true))

(declare-fun inv!74281 (BalanceConc!29450) Bool)

(assert (=> start!521240 (and (inv!74281 totalInput!685) e!3091990)))

(declare-fun e!3091995 () Bool)

(assert (=> start!521240 e!3091995))

(declare-fun b!4948720 () Bool)

(assert (=> b!4948720 (= e!3091988 e!3091994)))

(declare-fun res!2111578 () Bool)

(assert (=> b!4948720 (=> (not res!2111578) (not e!3091994))))

(assert (=> b!4948720 (= res!2111578 (= totalInputSize!132 lt!2041499))))

(declare-fun size!37832 (BalanceConc!29450) Int)

(assert (=> b!4948720 (= lt!2041499 (size!37832 totalInput!685))))

(declare-fun e!3091989 () Bool)

(declare-fun tp!1387844 () Bool)

(declare-fun setElem!28102 () Context!6266)

(declare-fun setNonEmpty!28102 () Bool)

(declare-fun inv!74282 (Context!6266) Bool)

(assert (=> setNonEmpty!28102 (= setRes!28102 (and tp!1387844 (inv!74282 setElem!28102) e!3091989))))

(declare-fun setRest!28102 () (InoxSet Context!6266))

(assert (=> setNonEmpty!28102 (= z!3568 ((_ map or) (store ((as const (Array Context!6266 Bool)) false) setElem!28102 true) setRest!28102))))

(declare-fun b!4948727 () Bool)

(declare-fun tp!1387843 () Bool)

(assert (=> b!4948727 (= e!3091989 tp!1387843)))

(declare-fun b!4948728 () Bool)

(declare-fun res!2111583 () Bool)

(assert (=> b!4948728 (=> res!2111583 e!3091987)))

(declare-datatypes ((tuple2!61576 0))(
  ( (tuple2!61577 (_1!34091 BalanceConc!29450) (_2!34091 BalanceConc!29450)) )
))
(declare-fun lt!2041490 () tuple2!61576)

(assert (=> b!4948728 (= res!2111583 (not (= (size!37832 (_1!34091 lt!2041490)) testedPSize!70)))))

(declare-fun b!4948729 () Bool)

(assert (=> b!4948729 (= e!3091992 e!3091987)))

(declare-fun res!2111575 () Bool)

(assert (=> b!4948729 (=> res!2111575 e!3091987)))

(assert (=> b!4948729 (= res!2111575 (not (= (++!12478 lt!2041506 lt!2041502) lt!2041510)))))

(assert (=> b!4948729 (= lt!2041502 (list!18179 (_2!34091 lt!2041490)))))

(assert (=> b!4948729 (= lt!2041506 (list!18179 (_1!34091 lt!2041490)))))

(declare-fun splitAt!412 (BalanceConc!29450 Int) tuple2!61576)

(assert (=> b!4948729 (= lt!2041490 (splitAt!412 totalInput!685 testedPSize!70))))

(declare-fun b!4948730 () Bool)

(declare-fun tp!1387842 () Bool)

(assert (=> b!4948730 (= e!3091995 (and tp_is_empty!36179 tp!1387842))))

(declare-fun b!4948731 () Bool)

(declare-fun Unit!147833 () Unit!147830)

(assert (=> b!4948731 (= e!3091985 Unit!147833)))

(assert (= (and start!521240 res!2111576) b!4948723))

(assert (= (and b!4948723 res!2111582) b!4948720))

(assert (= (and b!4948720 res!2111578) b!4948714))

(assert (= (and b!4948714 (not res!2111580)) b!4948716))

(assert (= (and b!4948716 (not res!2111581)) b!4948721))

(assert (= (and b!4948721 (not res!2111573)) b!4948729))

(assert (= (and b!4948729 (not res!2111575)) b!4948728))

(assert (= (and b!4948728 (not res!2111583)) b!4948717))

(assert (= (and b!4948717 (not res!2111584)) b!4948719))

(assert (= (and b!4948719 c!844683) b!4948724))

(assert (= (and b!4948719 (not c!844683)) b!4948731))

(assert (= (and b!4948719 (not res!2111574)) b!4948726))

(assert (= (and b!4948726 (not res!2111579)) b!4948715))

(assert (= (and b!4948715 (not res!2111577)) b!4948722))

(get-info :version)

(assert (= (and start!521240 ((_ is Cons!57003) testedP!110)) b!4948725))

(assert (= (and start!521240 condSetEmpty!28102) setIsEmpty!28102))

(assert (= (and start!521240 (not condSetEmpty!28102)) setNonEmpty!28102))

(assert (= setNonEmpty!28102 b!4948727))

(assert (= start!521240 b!4948718))

(assert (= (and start!521240 ((_ is Cons!57003) testedSuffix!70)) b!4948730))

(declare-fun m!5972466 () Bool)

(assert (=> setNonEmpty!28102 m!5972466))

(declare-fun m!5972468 () Bool)

(assert (=> b!4948720 m!5972468))

(declare-fun m!5972470 () Bool)

(assert (=> b!4948729 m!5972470))

(declare-fun m!5972472 () Bool)

(assert (=> b!4948729 m!5972472))

(declare-fun m!5972474 () Bool)

(assert (=> b!4948729 m!5972474))

(declare-fun m!5972476 () Bool)

(assert (=> b!4948729 m!5972476))

(declare-fun m!5972478 () Bool)

(assert (=> b!4948714 m!5972478))

(declare-fun m!5972480 () Bool)

(assert (=> b!4948714 m!5972480))

(declare-fun m!5972482 () Bool)

(assert (=> b!4948714 m!5972482))

(declare-fun m!5972484 () Bool)

(assert (=> b!4948728 m!5972484))

(declare-fun m!5972486 () Bool)

(assert (=> b!4948723 m!5972486))

(declare-fun m!5972488 () Bool)

(assert (=> b!4948715 m!5972488))

(assert (=> b!4948715 m!5972488))

(declare-fun m!5972490 () Bool)

(assert (=> b!4948715 m!5972490))

(declare-fun m!5972492 () Bool)

(assert (=> b!4948717 m!5972492))

(declare-fun m!5972494 () Bool)

(assert (=> b!4948717 m!5972494))

(declare-fun m!5972496 () Bool)

(assert (=> b!4948717 m!5972496))

(declare-fun m!5972498 () Bool)

(assert (=> b!4948717 m!5972498))

(declare-fun m!5972500 () Bool)

(assert (=> b!4948717 m!5972500))

(declare-fun m!5972502 () Bool)

(assert (=> b!4948717 m!5972502))

(assert (=> b!4948717 m!5972492))

(declare-fun m!5972504 () Bool)

(assert (=> b!4948717 m!5972504))

(declare-fun m!5972506 () Bool)

(assert (=> b!4948719 m!5972506))

(declare-fun m!5972508 () Bool)

(assert (=> b!4948719 m!5972508))

(declare-fun m!5972510 () Bool)

(assert (=> b!4948722 m!5972510))

(declare-fun m!5972512 () Bool)

(assert (=> b!4948722 m!5972512))

(declare-fun m!5972514 () Bool)

(assert (=> b!4948724 m!5972514))

(declare-fun m!5972516 () Bool)

(assert (=> b!4948724 m!5972516))

(declare-fun m!5972518 () Bool)

(assert (=> b!4948724 m!5972518))

(declare-fun m!5972520 () Bool)

(assert (=> start!521240 m!5972520))

(declare-fun m!5972522 () Bool)

(assert (=> start!521240 m!5972522))

(declare-fun m!5972524 () Bool)

(assert (=> start!521240 m!5972524))

(declare-fun m!5972526 () Bool)

(assert (=> b!4948716 m!5972526))

(declare-fun m!5972528 () Bool)

(assert (=> b!4948716 m!5972528))

(declare-fun m!5972530 () Bool)

(assert (=> b!4948716 m!5972530))

(declare-fun m!5972532 () Bool)

(assert (=> b!4948718 m!5972532))

(declare-fun m!5972534 () Bool)

(assert (=> b!4948726 m!5972534))

(declare-fun m!5972536 () Bool)

(assert (=> b!4948726 m!5972536))

(declare-fun m!5972538 () Bool)

(assert (=> b!4948726 m!5972538))

(declare-fun m!5972540 () Bool)

(assert (=> b!4948726 m!5972540))

(declare-fun m!5972542 () Bool)

(assert (=> b!4948726 m!5972542))

(declare-fun m!5972544 () Bool)

(assert (=> b!4948726 m!5972544))

(declare-fun m!5972546 () Bool)

(assert (=> b!4948726 m!5972546))

(declare-fun m!5972548 () Bool)

(assert (=> b!4948726 m!5972548))

(assert (=> b!4948726 m!5972546))

(declare-fun m!5972550 () Bool)

(assert (=> b!4948726 m!5972550))

(check-sat (not start!521240) (not b!4948714) (not b!4948729) (not b!4948726) (not b!4948716) tp_is_empty!36179 (not b!4948723) (not b!4948719) (not b!4948725) (not b!4948730) (not b!4948722) (not b!4948724) (not b!4948727) (not setNonEmpty!28102) (not b!4948718) (not b!4948717) (not b!4948715) (not b!4948728) (not b!4948720))
(check-sat)
(get-model)

(declare-fun d!1593432 () Bool)

(declare-fun lt!2041514 () Int)

(assert (=> d!1593432 (>= lt!2041514 0)))

(declare-fun e!3091998 () Int)

(assert (=> d!1593432 (= lt!2041514 e!3091998)))

(declare-fun c!844688 () Bool)

(assert (=> d!1593432 (= c!844688 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593432 (= (size!37831 testedP!110) lt!2041514)))

(declare-fun b!4948736 () Bool)

(assert (=> b!4948736 (= e!3091998 0)))

(declare-fun b!4948737 () Bool)

(assert (=> b!4948737 (= e!3091998 (+ 1 (size!37831 (t!367673 testedP!110))))))

(assert (= (and d!1593432 c!844688) b!4948736))

(assert (= (and d!1593432 (not c!844688)) b!4948737))

(declare-fun m!5972552 () Bool)

(assert (=> b!4948737 m!5972552))

(assert (=> b!4948723 d!1593432))

(declare-fun b!4948747 () Bool)

(declare-fun res!2111594 () Bool)

(declare-fun e!3092005 () Bool)

(assert (=> b!4948747 (=> (not res!2111594) (not e!3092005))))

(assert (=> b!4948747 (= res!2111594 (= (head!10617 testedP!110) (head!10617 lt!2041510)))))

(declare-fun b!4948749 () Bool)

(declare-fun e!3092007 () Bool)

(assert (=> b!4948749 (= e!3092007 (>= (size!37831 lt!2041510) (size!37831 testedP!110)))))

(declare-fun b!4948748 () Bool)

(assert (=> b!4948748 (= e!3092005 (isPrefix!5097 (tail!9752 testedP!110) (tail!9752 lt!2041510)))))

(declare-fun b!4948746 () Bool)

(declare-fun e!3092006 () Bool)

(assert (=> b!4948746 (= e!3092006 e!3092005)))

(declare-fun res!2111596 () Bool)

(assert (=> b!4948746 (=> (not res!2111596) (not e!3092005))))

(assert (=> b!4948746 (= res!2111596 (not ((_ is Nil!57003) lt!2041510)))))

(declare-fun d!1593434 () Bool)

(assert (=> d!1593434 e!3092007))

(declare-fun res!2111593 () Bool)

(assert (=> d!1593434 (=> res!2111593 e!3092007)))

(declare-fun lt!2041517 () Bool)

(assert (=> d!1593434 (= res!2111593 (not lt!2041517))))

(assert (=> d!1593434 (= lt!2041517 e!3092006)))

(declare-fun res!2111595 () Bool)

(assert (=> d!1593434 (=> res!2111595 e!3092006)))

(assert (=> d!1593434 (= res!2111595 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593434 (= (isPrefix!5097 testedP!110 lt!2041510) lt!2041517)))

(assert (= (and d!1593434 (not res!2111595)) b!4948746))

(assert (= (and b!4948746 res!2111596) b!4948747))

(assert (= (and b!4948747 res!2111594) b!4948748))

(assert (= (and d!1593434 (not res!2111593)) b!4948749))

(declare-fun m!5972554 () Bool)

(assert (=> b!4948747 m!5972554))

(declare-fun m!5972556 () Bool)

(assert (=> b!4948747 m!5972556))

(assert (=> b!4948749 m!5972506))

(assert (=> b!4948749 m!5972486))

(declare-fun m!5972558 () Bool)

(assert (=> b!4948748 m!5972558))

(declare-fun m!5972560 () Bool)

(assert (=> b!4948748 m!5972560))

(assert (=> b!4948748 m!5972558))

(assert (=> b!4948748 m!5972560))

(declare-fun m!5972562 () Bool)

(assert (=> b!4948748 m!5972562))

(assert (=> b!4948714 d!1593434))

(declare-fun b!4948751 () Bool)

(declare-fun res!2111598 () Bool)

(declare-fun e!3092008 () Bool)

(assert (=> b!4948751 (=> (not res!2111598) (not e!3092008))))

(assert (=> b!4948751 (= res!2111598 (= (head!10617 testedP!110) (head!10617 lt!2041508)))))

(declare-fun b!4948753 () Bool)

(declare-fun e!3092010 () Bool)

(assert (=> b!4948753 (= e!3092010 (>= (size!37831 lt!2041508) (size!37831 testedP!110)))))

(declare-fun b!4948752 () Bool)

(assert (=> b!4948752 (= e!3092008 (isPrefix!5097 (tail!9752 testedP!110) (tail!9752 lt!2041508)))))

(declare-fun b!4948750 () Bool)

(declare-fun e!3092009 () Bool)

(assert (=> b!4948750 (= e!3092009 e!3092008)))

(declare-fun res!2111600 () Bool)

(assert (=> b!4948750 (=> (not res!2111600) (not e!3092008))))

(assert (=> b!4948750 (= res!2111600 (not ((_ is Nil!57003) lt!2041508)))))

(declare-fun d!1593436 () Bool)

(assert (=> d!1593436 e!3092010))

(declare-fun res!2111597 () Bool)

(assert (=> d!1593436 (=> res!2111597 e!3092010)))

(declare-fun lt!2041518 () Bool)

(assert (=> d!1593436 (= res!2111597 (not lt!2041518))))

(assert (=> d!1593436 (= lt!2041518 e!3092009)))

(declare-fun res!2111599 () Bool)

(assert (=> d!1593436 (=> res!2111599 e!3092009)))

(assert (=> d!1593436 (= res!2111599 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593436 (= (isPrefix!5097 testedP!110 lt!2041508) lt!2041518)))

(assert (= (and d!1593436 (not res!2111599)) b!4948750))

(assert (= (and b!4948750 res!2111600) b!4948751))

(assert (= (and b!4948751 res!2111598) b!4948752))

(assert (= (and d!1593436 (not res!2111597)) b!4948753))

(assert (=> b!4948751 m!5972554))

(declare-fun m!5972564 () Bool)

(assert (=> b!4948751 m!5972564))

(declare-fun m!5972566 () Bool)

(assert (=> b!4948753 m!5972566))

(assert (=> b!4948753 m!5972486))

(assert (=> b!4948752 m!5972558))

(declare-fun m!5972568 () Bool)

(assert (=> b!4948752 m!5972568))

(assert (=> b!4948752 m!5972558))

(assert (=> b!4948752 m!5972568))

(declare-fun m!5972570 () Bool)

(assert (=> b!4948752 m!5972570))

(assert (=> b!4948714 d!1593436))

(declare-fun d!1593438 () Bool)

(assert (=> d!1593438 (isPrefix!5097 testedP!110 (++!12478 testedP!110 testedSuffix!70))))

(declare-fun lt!2041521 () Unit!147830)

(declare-fun choose!36536 (List!57127 List!57127) Unit!147830)

(assert (=> d!1593438 (= lt!2041521 (choose!36536 testedP!110 testedSuffix!70))))

(assert (=> d!1593438 (= (lemmaConcatTwoListThenFirstIsPrefix!3321 testedP!110 testedSuffix!70) lt!2041521)))

(declare-fun bs!1181941 () Bool)

(assert (= bs!1181941 d!1593438))

(assert (=> bs!1181941 m!5972522))

(assert (=> bs!1181941 m!5972522))

(declare-fun m!5972572 () Bool)

(assert (=> bs!1181941 m!5972572))

(declare-fun m!5972574 () Bool)

(assert (=> bs!1181941 m!5972574))

(assert (=> b!4948714 d!1593438))

(declare-fun d!1593440 () Bool)

(assert (=> d!1593440 (isPrefix!5097 lt!2041510 lt!2041510)))

(declare-fun lt!2041524 () Unit!147830)

(declare-fun choose!36537 (List!57127 List!57127) Unit!147830)

(assert (=> d!1593440 (= lt!2041524 (choose!36537 lt!2041510 lt!2041510))))

(assert (=> d!1593440 (= (lemmaIsPrefixRefl!3437 lt!2041510 lt!2041510) lt!2041524)))

(declare-fun bs!1181942 () Bool)

(assert (= bs!1181942 d!1593440))

(assert (=> bs!1181942 m!5972516))

(declare-fun m!5972576 () Bool)

(assert (=> bs!1181942 m!5972576))

(assert (=> b!4948724 d!1593440))

(declare-fun b!4948755 () Bool)

(declare-fun res!2111602 () Bool)

(declare-fun e!3092011 () Bool)

(assert (=> b!4948755 (=> (not res!2111602) (not e!3092011))))

(assert (=> b!4948755 (= res!2111602 (= (head!10617 lt!2041510) (head!10617 lt!2041510)))))

(declare-fun b!4948757 () Bool)

(declare-fun e!3092013 () Bool)

(assert (=> b!4948757 (= e!3092013 (>= (size!37831 lt!2041510) (size!37831 lt!2041510)))))

(declare-fun b!4948756 () Bool)

(assert (=> b!4948756 (= e!3092011 (isPrefix!5097 (tail!9752 lt!2041510) (tail!9752 lt!2041510)))))

(declare-fun b!4948754 () Bool)

(declare-fun e!3092012 () Bool)

(assert (=> b!4948754 (= e!3092012 e!3092011)))

(declare-fun res!2111604 () Bool)

(assert (=> b!4948754 (=> (not res!2111604) (not e!3092011))))

(assert (=> b!4948754 (= res!2111604 (not ((_ is Nil!57003) lt!2041510)))))

(declare-fun d!1593442 () Bool)

(assert (=> d!1593442 e!3092013))

(declare-fun res!2111601 () Bool)

(assert (=> d!1593442 (=> res!2111601 e!3092013)))

(declare-fun lt!2041525 () Bool)

(assert (=> d!1593442 (= res!2111601 (not lt!2041525))))

(assert (=> d!1593442 (= lt!2041525 e!3092012)))

(declare-fun res!2111603 () Bool)

(assert (=> d!1593442 (=> res!2111603 e!3092012)))

(assert (=> d!1593442 (= res!2111603 ((_ is Nil!57003) lt!2041510))))

(assert (=> d!1593442 (= (isPrefix!5097 lt!2041510 lt!2041510) lt!2041525)))

(assert (= (and d!1593442 (not res!2111603)) b!4948754))

(assert (= (and b!4948754 res!2111604) b!4948755))

(assert (= (and b!4948755 res!2111602) b!4948756))

(assert (= (and d!1593442 (not res!2111601)) b!4948757))

(assert (=> b!4948755 m!5972556))

(assert (=> b!4948755 m!5972556))

(assert (=> b!4948757 m!5972506))

(assert (=> b!4948757 m!5972506))

(assert (=> b!4948756 m!5972560))

(assert (=> b!4948756 m!5972560))

(assert (=> b!4948756 m!5972560))

(assert (=> b!4948756 m!5972560))

(declare-fun m!5972578 () Bool)

(assert (=> b!4948756 m!5972578))

(assert (=> b!4948724 d!1593442))

(declare-fun d!1593444 () Bool)

(assert (=> d!1593444 (= lt!2041510 testedP!110)))

(declare-fun lt!2041528 () Unit!147830)

(declare-fun choose!36538 (List!57127 List!57127 List!57127) Unit!147830)

(assert (=> d!1593444 (= lt!2041528 (choose!36538 lt!2041510 testedP!110 lt!2041510))))

(assert (=> d!1593444 (isPrefix!5097 lt!2041510 lt!2041510)))

(assert (=> d!1593444 (= (lemmaIsPrefixSameLengthThenSameList!1189 lt!2041510 testedP!110 lt!2041510) lt!2041528)))

(declare-fun bs!1181943 () Bool)

(assert (= bs!1181943 d!1593444))

(declare-fun m!5972580 () Bool)

(assert (=> bs!1181943 m!5972580))

(assert (=> bs!1181943 m!5972516))

(assert (=> b!4948724 d!1593444))

(declare-fun bm!345458 () Bool)

(declare-fun call!345467 () List!57127)

(declare-fun call!345464 () C!27232)

(assert (=> bm!345458 (= call!345467 (++!12478 lt!2041496 (Cons!57003 call!345464 Nil!57003)))))

(declare-fun b!4948812 () Bool)

(declare-fun e!3092042 () Int)

(assert (=> b!4948812 (= e!3092042 0)))

(declare-fun bm!345459 () Bool)

(declare-fun lt!2041747 () List!57127)

(declare-fun call!345470 () Unit!147830)

(declare-fun lt!2041771 () List!57127)

(declare-fun lt!2041769 () List!57127)

(declare-fun lt!2041756 () List!57127)

(declare-fun c!844718 () Bool)

(assert (=> bm!345459 (= call!345470 (lemmaIsPrefixRefl!3437 (ite c!844718 lt!2041747 lt!2041769) (ite c!844718 lt!2041756 lt!2041771)))))

(declare-fun b!4948813 () Bool)

(declare-fun c!844720 () Bool)

(declare-fun call!345463 () Bool)

(assert (=> b!4948813 (= c!844720 call!345463)))

(declare-fun lt!2041751 () Unit!147830)

(declare-fun lt!2041774 () Unit!147830)

(assert (=> b!4948813 (= lt!2041751 lt!2041774)))

(declare-fun lt!2041770 () List!57127)

(assert (=> b!4948813 (= lt!2041770 lt!2041496)))

(declare-fun call!345472 () Unit!147830)

(assert (=> b!4948813 (= lt!2041774 call!345472)))

(declare-fun call!345469 () List!57127)

(assert (=> b!4948813 (= lt!2041770 call!345469)))

(declare-fun lt!2041759 () Unit!147830)

(declare-fun lt!2041763 () Unit!147830)

(assert (=> b!4948813 (= lt!2041759 lt!2041763)))

(declare-fun call!345465 () Bool)

(assert (=> b!4948813 call!345465))

(assert (=> b!4948813 (= lt!2041763 call!345470)))

(assert (=> b!4948813 (= lt!2041756 call!345469)))

(assert (=> b!4948813 (= lt!2041747 call!345469)))

(declare-fun e!3092044 () Int)

(declare-fun e!3092045 () Int)

(assert (=> b!4948813 (= e!3092044 e!3092045)))

(declare-fun call!345468 () Int)

(declare-fun bm!345460 () Bool)

(declare-fun call!345471 () (InoxSet Context!6266))

(declare-fun call!345466 () List!57127)

(assert (=> bm!345460 (= call!345468 (findLongestMatchInnerZipperFast!105 call!345471 call!345467 (+ 1 testedPSize!70 1) call!345466 totalInput!685 totalInputSize!132))))

(declare-fun b!4948814 () Bool)

(declare-fun c!844723 () Bool)

(assert (=> b!4948814 (= c!844723 call!345463)))

(declare-fun lt!2041779 () Unit!147830)

(declare-fun lt!2041746 () Unit!147830)

(assert (=> b!4948814 (= lt!2041779 lt!2041746)))

(declare-fun lt!2041762 () List!57127)

(declare-fun lt!2041778 () C!27232)

(declare-fun lt!2041764 () List!57127)

(assert (=> b!4948814 (= (++!12478 (++!12478 lt!2041496 (Cons!57003 lt!2041778 Nil!57003)) lt!2041764) lt!2041762)))

(assert (=> b!4948814 (= lt!2041746 (lemmaMoveElementToOtherListKeepsConcatEq!1436 lt!2041496 lt!2041778 lt!2041764 lt!2041762))))

(assert (=> b!4948814 (= lt!2041762 (list!18179 totalInput!685))))

(assert (=> b!4948814 (= lt!2041764 (tail!9752 lt!2041504))))

(assert (=> b!4948814 (= lt!2041778 (apply!13841 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun lt!2041772 () Unit!147830)

(declare-fun lt!2041744 () Unit!147830)

(assert (=> b!4948814 (= lt!2041772 lt!2041744)))

(declare-fun lt!2041745 () List!57127)

(assert (=> b!4948814 (isPrefix!5097 (++!12478 lt!2041496 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003)) lt!2041745)))

(assert (=> b!4948814 (= lt!2041744 (lemmaAddHeadSuffixToPrefixStillPrefix!826 lt!2041496 lt!2041745))))

(assert (=> b!4948814 (= lt!2041745 (list!18179 totalInput!685))))

(declare-fun lt!2041767 () Unit!147830)

(declare-fun e!3092041 () Unit!147830)

(assert (=> b!4948814 (= lt!2041767 e!3092041)))

(declare-fun c!844721 () Bool)

(assert (=> b!4948814 (= c!844721 (= (size!37831 lt!2041496) (size!37832 totalInput!685)))))

(declare-fun lt!2041739 () Unit!147830)

(declare-fun lt!2041768 () Unit!147830)

(assert (=> b!4948814 (= lt!2041739 lt!2041768)))

(declare-fun lt!2041753 () List!57127)

(assert (=> b!4948814 (<= (size!37831 lt!2041496) (size!37831 lt!2041753))))

(assert (=> b!4948814 (= lt!2041768 (lemmaIsPrefixThenSmallerEqSize!752 lt!2041496 lt!2041753))))

(assert (=> b!4948814 (= lt!2041753 (list!18179 totalInput!685))))

(declare-fun lt!2041776 () Unit!147830)

(declare-fun lt!2041761 () Unit!147830)

(assert (=> b!4948814 (= lt!2041776 lt!2041761)))

(declare-fun lt!2041758 () List!57127)

(assert (=> b!4948814 (= (head!10617 (drop!2298 lt!2041758 (+ 1 testedPSize!70))) (apply!13842 lt!2041758 (+ 1 testedPSize!70)))))

(assert (=> b!4948814 (= lt!2041761 (lemmaDropApply!1352 lt!2041758 (+ 1 testedPSize!70)))))

(assert (=> b!4948814 (= lt!2041758 (list!18179 totalInput!685))))

(declare-fun lt!2041743 () Unit!147830)

(declare-fun lt!2041752 () Unit!147830)

(assert (=> b!4948814 (= lt!2041743 lt!2041752)))

(declare-fun lt!2041777 () List!57127)

(declare-fun lt!2041741 () List!57127)

(assert (=> b!4948814 (and (= lt!2041777 lt!2041496) (= lt!2041741 lt!2041504))))

(assert (=> b!4948814 (= lt!2041752 (lemmaConcatSameAndSameSizesThenSameLists!735 lt!2041777 lt!2041741 lt!2041496 lt!2041504))))

(declare-fun lt!2041775 () tuple2!61576)

(assert (=> b!4948814 (= lt!2041741 (list!18179 (_2!34091 lt!2041775)))))

(assert (=> b!4948814 (= lt!2041777 call!345469)))

(assert (=> b!4948814 (= lt!2041775 (splitAt!412 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun e!3092046 () Int)

(assert (=> b!4948814 (= e!3092044 e!3092046)))

(declare-fun bm!345461 () Bool)

(assert (=> bm!345461 (= call!345463 (nullableZipper!862 (derivationStepZipper!613 z!3568 lt!2041491)))))

(declare-fun b!4948815 () Bool)

(assert (=> b!4948815 (= e!3092045 0)))

(declare-fun bm!345462 () Bool)

(assert (=> bm!345462 (= call!345465 (isPrefix!5097 (ite c!844718 lt!2041747 lt!2041769) (ite c!844718 lt!2041756 lt!2041771)))))

(declare-fun bm!345463 () Bool)

(declare-fun c!844722 () Bool)

(assert (=> bm!345463 (= c!844722 c!844718)))

(declare-fun lt!2041748 () List!57127)

(declare-fun e!3092043 () List!57127)

(assert (=> bm!345463 (= call!345472 (lemmaIsPrefixSameLengthThenSameList!1189 (ite c!844718 lt!2041770 lt!2041748) lt!2041496 e!3092043))))

(declare-fun b!4948816 () Bool)

(assert (=> b!4948816 (= e!3092046 call!345468)))

(declare-fun b!4948817 () Bool)

(assert (=> b!4948817 (= e!3092045 (+ 1 testedPSize!70))))

(declare-fun d!1593446 () Bool)

(declare-fun lt!2041760 () Int)

(assert (=> d!1593446 (= (size!37831 (_1!34090 (findLongestMatchInnerZipper!80 (derivationStepZipper!613 z!3568 lt!2041491) lt!2041496 (+ 1 testedPSize!70) lt!2041504 (list!18179 totalInput!685) totalInputSize!132))) lt!2041760)))

(assert (=> d!1593446 (= lt!2041760 e!3092042)))

(declare-fun c!844719 () Bool)

(assert (=> d!1593446 (= c!844719 (lostCauseZipper!809 (derivationStepZipper!613 z!3568 lt!2041491)))))

(declare-fun lt!2041755 () Unit!147830)

(declare-fun Unit!147840 () Unit!147830)

(assert (=> d!1593446 (= lt!2041755 Unit!147840)))

(assert (=> d!1593446 (= (getSuffix!3079 (list!18179 totalInput!685) lt!2041496) lt!2041504)))

(declare-fun lt!2041766 () Unit!147830)

(declare-fun lt!2041750 () Unit!147830)

(assert (=> d!1593446 (= lt!2041766 lt!2041750)))

(declare-fun lt!2041742 () List!57127)

(assert (=> d!1593446 (= lt!2041504 lt!2041742)))

(assert (=> d!1593446 (= lt!2041750 (lemmaSamePrefixThenSameSuffix!2489 lt!2041496 lt!2041504 lt!2041496 lt!2041742 (list!18179 totalInput!685)))))

(assert (=> d!1593446 (= lt!2041742 (getSuffix!3079 (list!18179 totalInput!685) lt!2041496))))

(declare-fun lt!2041740 () Unit!147830)

(declare-fun lt!2041749 () Unit!147830)

(assert (=> d!1593446 (= lt!2041740 lt!2041749)))

(assert (=> d!1593446 (isPrefix!5097 lt!2041496 (++!12478 lt!2041496 lt!2041504))))

(assert (=> d!1593446 (= lt!2041749 (lemmaConcatTwoListThenFirstIsPrefix!3321 lt!2041496 lt!2041504))))

(assert (=> d!1593446 (= (++!12478 lt!2041496 lt!2041504) (list!18179 totalInput!685))))

(assert (=> d!1593446 (= (findLongestMatchInnerZipperFast!105 (derivationStepZipper!613 z!3568 lt!2041491) lt!2041496 (+ 1 testedPSize!70) lt!2041504 totalInput!685 totalInputSize!132) lt!2041760)))

(declare-fun bm!345464 () Bool)

(assert (=> bm!345464 (= call!345471 (derivationStepZipper!613 (derivationStepZipper!613 z!3568 lt!2041491) call!345464))))

(declare-fun b!4948818 () Bool)

(assert (=> b!4948818 (= e!3092042 e!3092044)))

(assert (=> b!4948818 (= c!844718 (= (+ 1 testedPSize!70) totalInputSize!132))))

(declare-fun b!4948819 () Bool)

(assert (=> b!4948819 (= e!3092043 call!345469)))

(declare-fun b!4948820 () Bool)

(assert (=> b!4948820 (= e!3092043 (list!18179 totalInput!685))))

(declare-fun b!4948821 () Bool)

(declare-fun Unit!147841 () Unit!147830)

(assert (=> b!4948821 (= e!3092041 Unit!147841)))

(declare-fun bm!345465 () Bool)

(assert (=> bm!345465 (= call!345469 (list!18179 (ite c!844718 totalInput!685 (_1!34091 lt!2041775))))))

(declare-fun b!4948822 () Bool)

(declare-fun lt!2041754 () Int)

(assert (=> b!4948822 (= e!3092046 (ite (= lt!2041754 0) (+ 1 testedPSize!70) lt!2041754))))

(assert (=> b!4948822 (= lt!2041754 call!345468)))

(declare-fun b!4948823 () Bool)

(declare-fun Unit!147842 () Unit!147830)

(assert (=> b!4948823 (= e!3092041 Unit!147842)))

(assert (=> b!4948823 (= lt!2041769 (list!18179 totalInput!685))))

(assert (=> b!4948823 (= lt!2041771 (list!18179 totalInput!685))))

(declare-fun lt!2041757 () Unit!147830)

(assert (=> b!4948823 (= lt!2041757 call!345470)))

(assert (=> b!4948823 call!345465))

(declare-fun lt!2041765 () Unit!147830)

(assert (=> b!4948823 (= lt!2041765 lt!2041757)))

(assert (=> b!4948823 (= lt!2041748 (list!18179 totalInput!685))))

(declare-fun lt!2041780 () Unit!147830)

(assert (=> b!4948823 (= lt!2041780 call!345472)))

(assert (=> b!4948823 (= lt!2041748 lt!2041496)))

(declare-fun lt!2041773 () Unit!147830)

(assert (=> b!4948823 (= lt!2041773 lt!2041780)))

(assert (=> b!4948823 false))

(declare-fun bm!345466 () Bool)

(assert (=> bm!345466 (= call!345464 (apply!13841 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun bm!345467 () Bool)

(assert (=> bm!345467 (= call!345466 (tail!9752 lt!2041504))))

(assert (= (and d!1593446 c!844719) b!4948812))

(assert (= (and d!1593446 (not c!844719)) b!4948818))

(assert (= (and b!4948818 c!844718) b!4948813))

(assert (= (and b!4948818 (not c!844718)) b!4948814))

(assert (= (and b!4948813 c!844720) b!4948817))

(assert (= (and b!4948813 (not c!844720)) b!4948815))

(assert (= (and b!4948814 c!844721) b!4948823))

(assert (= (and b!4948814 (not c!844721)) b!4948821))

(assert (= (and b!4948814 c!844723) b!4948822))

(assert (= (and b!4948814 (not c!844723)) b!4948816))

(assert (= (or b!4948822 b!4948816) bm!345467))

(assert (= (or b!4948822 b!4948816) bm!345466))

(assert (= (or b!4948822 b!4948816) bm!345464))

(assert (= (or b!4948822 b!4948816) bm!345458))

(assert (= (or b!4948822 b!4948816) bm!345460))

(assert (= (or b!4948813 b!4948823) bm!345462))

(assert (= (or b!4948813 b!4948814) bm!345461))

(assert (= (or b!4948813 b!4948814) bm!345465))

(assert (= (or b!4948813 b!4948823) bm!345459))

(assert (= (or b!4948813 b!4948823) bm!345463))

(assert (= (and bm!345463 c!844722) b!4948819))

(assert (= (and bm!345463 (not c!844722)) b!4948820))

(declare-fun m!5972652 () Bool)

(assert (=> bm!345465 m!5972652))

(declare-fun m!5972654 () Bool)

(assert (=> bm!345462 m!5972654))

(assert (=> bm!345464 m!5972488))

(declare-fun m!5972656 () Bool)

(assert (=> bm!345464 m!5972656))

(declare-fun m!5972658 () Bool)

(assert (=> b!4948814 m!5972658))

(declare-fun m!5972660 () Bool)

(assert (=> b!4948814 m!5972660))

(declare-fun m!5972662 () Bool)

(assert (=> b!4948814 m!5972662))

(declare-fun m!5972664 () Bool)

(assert (=> b!4948814 m!5972664))

(assert (=> b!4948814 m!5972520))

(declare-fun m!5972666 () Bool)

(assert (=> b!4948814 m!5972666))

(declare-fun m!5972668 () Bool)

(assert (=> b!4948814 m!5972668))

(declare-fun m!5972670 () Bool)

(assert (=> b!4948814 m!5972670))

(declare-fun m!5972672 () Bool)

(assert (=> b!4948814 m!5972672))

(declare-fun m!5972674 () Bool)

(assert (=> b!4948814 m!5972674))

(declare-fun m!5972676 () Bool)

(assert (=> b!4948814 m!5972676))

(declare-fun m!5972678 () Bool)

(assert (=> b!4948814 m!5972678))

(assert (=> b!4948814 m!5972666))

(declare-fun m!5972680 () Bool)

(assert (=> b!4948814 m!5972680))

(declare-fun m!5972682 () Bool)

(assert (=> b!4948814 m!5972682))

(assert (=> b!4948814 m!5972468))

(declare-fun m!5972684 () Bool)

(assert (=> b!4948814 m!5972684))

(declare-fun m!5972686 () Bool)

(assert (=> b!4948814 m!5972686))

(declare-fun m!5972688 () Bool)

(assert (=> b!4948814 m!5972688))

(declare-fun m!5972690 () Bool)

(assert (=> b!4948814 m!5972690))

(declare-fun m!5972692 () Bool)

(assert (=> b!4948814 m!5972692))

(assert (=> b!4948814 m!5972690))

(assert (=> b!4948814 m!5972684))

(assert (=> b!4948814 m!5972672))

(declare-fun m!5972694 () Bool)

(assert (=> b!4948814 m!5972694))

(declare-fun m!5972696 () Bool)

(assert (=> b!4948814 m!5972696))

(declare-fun m!5972698 () Bool)

(assert (=> bm!345459 m!5972698))

(assert (=> bm!345461 m!5972488))

(declare-fun m!5972700 () Bool)

(assert (=> bm!345461 m!5972700))

(assert (=> bm!345466 m!5972662))

(assert (=> bm!345467 m!5972676))

(assert (=> b!4948820 m!5972520))

(declare-fun m!5972702 () Bool)

(assert (=> d!1593446 m!5972702))

(assert (=> d!1593446 m!5972520))

(declare-fun m!5972704 () Bool)

(assert (=> d!1593446 m!5972704))

(declare-fun m!5972706 () Bool)

(assert (=> d!1593446 m!5972706))

(assert (=> d!1593446 m!5972520))

(assert (=> d!1593446 m!5972544))

(declare-fun m!5972708 () Bool)

(assert (=> d!1593446 m!5972708))

(assert (=> d!1593446 m!5972488))

(assert (=> d!1593446 m!5972520))

(declare-fun m!5972710 () Bool)

(assert (=> d!1593446 m!5972710))

(assert (=> d!1593446 m!5972488))

(declare-fun m!5972712 () Bool)

(assert (=> d!1593446 m!5972712))

(assert (=> d!1593446 m!5972544))

(assert (=> d!1593446 m!5972520))

(declare-fun m!5972714 () Bool)

(assert (=> d!1593446 m!5972714))

(assert (=> b!4948823 m!5972520))

(declare-fun m!5972716 () Bool)

(assert (=> bm!345458 m!5972716))

(declare-fun m!5972718 () Bool)

(assert (=> bm!345460 m!5972718))

(declare-fun m!5972720 () Bool)

(assert (=> bm!345463 m!5972720))

(assert (=> b!4948715 d!1593446))

(declare-fun d!1593450 () Bool)

(assert (=> d!1593450 true))

(declare-fun lambda!246811 () Int)

(declare-fun flatMap!276 ((InoxSet Context!6266) Int) (InoxSet Context!6266))

(assert (=> d!1593450 (= (derivationStepZipper!613 z!3568 lt!2041491) (flatMap!276 z!3568 lambda!246811))))

(declare-fun bs!1181951 () Bool)

(assert (= bs!1181951 d!1593450))

(declare-fun m!5972806 () Bool)

(assert (=> bs!1181951 m!5972806))

(assert (=> b!4948715 d!1593450))

(declare-fun bs!1181955 () Bool)

(declare-fun b!4948968 () Bool)

(declare-fun d!1593486 () Bool)

(assert (= bs!1181955 (and b!4948968 d!1593486)))

(declare-fun lambda!246828 () Int)

(declare-fun lambda!246827 () Int)

(assert (=> bs!1181955 (not (= lambda!246828 lambda!246827))))

(declare-fun bs!1181956 () Bool)

(declare-fun b!4948969 () Bool)

(assert (= bs!1181956 (and b!4948969 d!1593486)))

(declare-fun lambda!246829 () Int)

(assert (=> bs!1181956 (not (= lambda!246829 lambda!246827))))

(declare-fun bs!1181957 () Bool)

(assert (= bs!1181957 (and b!4948969 b!4948968)))

(assert (=> bs!1181957 (= lambda!246829 lambda!246828)))

(declare-fun e!3092134 () Unit!147830)

(declare-fun Unit!147845 () Unit!147830)

(assert (=> b!4948969 (= e!3092134 Unit!147845)))

(declare-datatypes ((List!57130 0))(
  ( (Nil!57006) (Cons!57006 (h!63454 Context!6266) (t!367676 List!57130)) )
))
(declare-fun lt!2041925 () List!57130)

(declare-fun call!345505 () List!57130)

(assert (=> b!4948969 (= lt!2041925 call!345505)))

(declare-fun lt!2041927 () Unit!147830)

(declare-fun lemmaForallThenNotExists!225 (List!57130 Int) Unit!147830)

(assert (=> b!4948969 (= lt!2041927 (lemmaForallThenNotExists!225 lt!2041925 lambda!246827))))

(declare-fun call!345504 () Bool)

(assert (=> b!4948969 (not call!345504)))

(declare-fun lt!2041926 () Unit!147830)

(assert (=> b!4948969 (= lt!2041926 lt!2041927)))

(declare-fun bm!345500 () Bool)

(declare-fun toList!8004 ((InoxSet Context!6266)) List!57130)

(assert (=> bm!345500 (= call!345505 (toList!8004 z!3568))))

(declare-fun lt!2041922 () Bool)

(declare-datatypes ((Option!14222 0))(
  ( (None!14221) (Some!14221 (v!50199 List!57127)) )
))
(declare-fun isEmpty!30671 (Option!14222) Bool)

(declare-fun getLanguageWitness!693 ((InoxSet Context!6266)) Option!14222)

(assert (=> d!1593486 (= lt!2041922 (isEmpty!30671 (getLanguageWitness!693 z!3568)))))

(declare-fun forall!13277 ((InoxSet Context!6266) Int) Bool)

(assert (=> d!1593486 (= lt!2041922 (forall!13277 z!3568 lambda!246827))))

(declare-fun lt!2041921 () Unit!147830)

(assert (=> d!1593486 (= lt!2041921 e!3092134)))

(declare-fun c!844780 () Bool)

(assert (=> d!1593486 (= c!844780 (not (forall!13277 z!3568 lambda!246827)))))

(assert (=> d!1593486 (= (lostCauseZipper!809 z!3568) lt!2041922)))

(declare-fun bm!345499 () Bool)

(declare-fun lt!2041928 () List!57130)

(declare-fun exists!1345 (List!57130 Int) Bool)

(assert (=> bm!345499 (= call!345504 (exists!1345 (ite c!844780 lt!2041928 lt!2041925) (ite c!844780 lambda!246828 lambda!246829)))))

(declare-fun Unit!147846 () Unit!147830)

(assert (=> b!4948968 (= e!3092134 Unit!147846)))

(assert (=> b!4948968 (= lt!2041928 call!345505)))

(declare-fun lt!2041923 () Unit!147830)

(declare-fun lemmaNotForallThenExists!242 (List!57130 Int) Unit!147830)

(assert (=> b!4948968 (= lt!2041923 (lemmaNotForallThenExists!242 lt!2041928 lambda!246827))))

(assert (=> b!4948968 call!345504))

(declare-fun lt!2041924 () Unit!147830)

(assert (=> b!4948968 (= lt!2041924 lt!2041923)))

(assert (= (and d!1593486 c!844780) b!4948968))

(assert (= (and d!1593486 (not c!844780)) b!4948969))

(assert (= (or b!4948968 b!4948969) bm!345499))

(assert (= (or b!4948968 b!4948969) bm!345500))

(declare-fun m!5972874 () Bool)

(assert (=> b!4948968 m!5972874))

(declare-fun m!5972876 () Bool)

(assert (=> bm!345499 m!5972876))

(declare-fun m!5972878 () Bool)

(assert (=> bm!345500 m!5972878))

(declare-fun m!5972880 () Bool)

(assert (=> b!4948969 m!5972880))

(declare-fun m!5972882 () Bool)

(assert (=> d!1593486 m!5972882))

(assert (=> d!1593486 m!5972882))

(declare-fun m!5972884 () Bool)

(assert (=> d!1593486 m!5972884))

(declare-fun m!5972886 () Bool)

(assert (=> d!1593486 m!5972886))

(assert (=> d!1593486 m!5972886))

(assert (=> b!4948716 d!1593486))

(declare-fun d!1593508 () Bool)

(assert (=> d!1593508 (= testedSuffix!70 lt!2041497)))

(declare-fun lt!2041931 () Unit!147830)

(declare-fun choose!36542 (List!57127 List!57127 List!57127 List!57127 List!57127) Unit!147830)

(assert (=> d!1593508 (= lt!2041931 (choose!36542 testedP!110 testedSuffix!70 testedP!110 lt!2041497 lt!2041510))))

(assert (=> d!1593508 (isPrefix!5097 testedP!110 lt!2041510)))

(assert (=> d!1593508 (= (lemmaSamePrefixThenSameSuffix!2489 testedP!110 testedSuffix!70 testedP!110 lt!2041497 lt!2041510) lt!2041931)))

(declare-fun bs!1181958 () Bool)

(assert (= bs!1181958 d!1593508))

(declare-fun m!5972888 () Bool)

(assert (=> bs!1181958 m!5972888))

(assert (=> bs!1181958 m!5972478))

(assert (=> b!4948716 d!1593508))

(declare-fun d!1593510 () Bool)

(declare-fun lt!2041944 () List!57127)

(assert (=> d!1593510 (= (++!12478 testedP!110 lt!2041944) lt!2041510)))

(declare-fun e!3092139 () List!57127)

(assert (=> d!1593510 (= lt!2041944 e!3092139)))

(declare-fun c!844789 () Bool)

(assert (=> d!1593510 (= c!844789 ((_ is Cons!57003) testedP!110))))

(assert (=> d!1593510 (>= (size!37831 lt!2041510) (size!37831 testedP!110))))

(assert (=> d!1593510 (= (getSuffix!3079 lt!2041510 testedP!110) lt!2041944)))

(declare-fun b!4948978 () Bool)

(assert (=> b!4948978 (= e!3092139 (getSuffix!3079 (tail!9752 lt!2041510) (t!367673 testedP!110)))))

(declare-fun b!4948979 () Bool)

(assert (=> b!4948979 (= e!3092139 lt!2041510)))

(assert (= (and d!1593510 c!844789) b!4948978))

(assert (= (and d!1593510 (not c!844789)) b!4948979))

(declare-fun m!5972890 () Bool)

(assert (=> d!1593510 m!5972890))

(assert (=> d!1593510 m!5972506))

(assert (=> d!1593510 m!5972486))

(assert (=> b!4948978 m!5972560))

(assert (=> b!4948978 m!5972560))

(declare-fun m!5972892 () Bool)

(assert (=> b!4948978 m!5972892))

(assert (=> b!4948716 d!1593510))

(declare-fun d!1593512 () Bool)

(assert (=> d!1593512 (= (++!12478 (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003)) lt!2041504) lt!2041510)))

(declare-fun lt!2041953 () Unit!147830)

(declare-fun choose!36544 (List!57127 C!27232 List!57127 List!57127) Unit!147830)

(assert (=> d!1593512 (= lt!2041953 (choose!36544 testedP!110 lt!2041491 lt!2041504 lt!2041510))))

(assert (=> d!1593512 (= (++!12478 testedP!110 (Cons!57003 lt!2041491 lt!2041504)) lt!2041510)))

(assert (=> d!1593512 (= (lemmaMoveElementToOtherListKeepsConcatEq!1436 testedP!110 lt!2041491 lt!2041504 lt!2041510) lt!2041953)))

(declare-fun bs!1181959 () Bool)

(assert (= bs!1181959 d!1593512))

(assert (=> bs!1181959 m!5972542))

(assert (=> bs!1181959 m!5972542))

(declare-fun m!5972894 () Bool)

(assert (=> bs!1181959 m!5972894))

(declare-fun m!5972896 () Bool)

(assert (=> bs!1181959 m!5972896))

(declare-fun m!5972898 () Bool)

(assert (=> bs!1181959 m!5972898))

(assert (=> b!4948726 d!1593512))

(declare-fun d!1593514 () Bool)

(assert (=> d!1593514 (isPrefix!5097 (++!12478 testedP!110 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003)) lt!2041510)))

(declare-fun lt!2041964 () Unit!147830)

(declare-fun choose!36545 (List!57127 List!57127) Unit!147830)

(assert (=> d!1593514 (= lt!2041964 (choose!36545 testedP!110 lt!2041510))))

(assert (=> d!1593514 (isPrefix!5097 testedP!110 lt!2041510)))

(assert (=> d!1593514 (= (lemmaAddHeadSuffixToPrefixStillPrefix!826 testedP!110 lt!2041510) lt!2041964)))

(declare-fun bs!1181966 () Bool)

(assert (= bs!1181966 d!1593514))

(assert (=> bs!1181966 m!5972530))

(declare-fun m!5972910 () Bool)

(assert (=> bs!1181966 m!5972910))

(assert (=> bs!1181966 m!5972478))

(declare-fun m!5972916 () Bool)

(assert (=> bs!1181966 m!5972916))

(declare-fun m!5972918 () Bool)

(assert (=> bs!1181966 m!5972918))

(assert (=> bs!1181966 m!5972916))

(assert (=> bs!1181966 m!5972530))

(declare-fun m!5972920 () Bool)

(assert (=> bs!1181966 m!5972920))

(assert (=> b!4948726 d!1593514))

(declare-fun bs!1181968 () Bool)

(declare-fun d!1593518 () Bool)

(assert (= bs!1181968 (and d!1593518 d!1593486)))

(declare-fun lambda!246847 () Int)

(assert (=> bs!1181968 (not (= lambda!246847 lambda!246827))))

(declare-fun bs!1181969 () Bool)

(assert (= bs!1181969 (and d!1593518 b!4948968)))

(assert (=> bs!1181969 (not (= lambda!246847 lambda!246828))))

(declare-fun bs!1181970 () Bool)

(assert (= bs!1181970 (and d!1593518 b!4948969)))

(assert (=> bs!1181970 (not (= lambda!246847 lambda!246829))))

(declare-fun exists!1346 ((InoxSet Context!6266) Int) Bool)

(assert (=> d!1593518 (= (nullableZipper!862 z!3568) (exists!1346 z!3568 lambda!246847))))

(declare-fun bs!1181971 () Bool)

(assert (= bs!1181971 d!1593518))

(declare-fun m!5972924 () Bool)

(assert (=> bs!1181971 m!5972924))

(assert (=> b!4948726 d!1593518))

(declare-fun b!4948996 () Bool)

(declare-fun e!3092152 () List!57127)

(assert (=> b!4948996 (= e!3092152 (Cons!57003 (head!10617 lt!2041497) Nil!57003))))

(declare-fun b!4948999 () Bool)

(declare-fun lt!2041973 () List!57127)

(declare-fun e!3092153 () Bool)

(assert (=> b!4948999 (= e!3092153 (or (not (= (Cons!57003 (head!10617 lt!2041497) Nil!57003) Nil!57003)) (= lt!2041973 testedP!110)))))

(declare-fun b!4948997 () Bool)

(assert (=> b!4948997 (= e!3092152 (Cons!57003 (h!63451 testedP!110) (++!12478 (t!367673 testedP!110) (Cons!57003 (head!10617 lt!2041497) Nil!57003))))))

(declare-fun d!1593522 () Bool)

(assert (=> d!1593522 e!3092153))

(declare-fun res!2111661 () Bool)

(assert (=> d!1593522 (=> (not res!2111661) (not e!3092153))))

(declare-fun content!10157 (List!57127) (InoxSet C!27232))

(assert (=> d!1593522 (= res!2111661 (= (content!10157 lt!2041973) ((_ map or) (content!10157 testedP!110) (content!10157 (Cons!57003 (head!10617 lt!2041497) Nil!57003)))))))

(assert (=> d!1593522 (= lt!2041973 e!3092152)))

(declare-fun c!844802 () Bool)

(assert (=> d!1593522 (= c!844802 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593522 (= (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003)) lt!2041973)))

(declare-fun b!4948998 () Bool)

(declare-fun res!2111662 () Bool)

(assert (=> b!4948998 (=> (not res!2111662) (not e!3092153))))

(assert (=> b!4948998 (= res!2111662 (= (size!37831 lt!2041973) (+ (size!37831 testedP!110) (size!37831 (Cons!57003 (head!10617 lt!2041497) Nil!57003)))))))

(assert (= (and d!1593522 c!844802) b!4948996))

(assert (= (and d!1593522 (not c!844802)) b!4948997))

(assert (= (and d!1593522 res!2111661) b!4948998))

(assert (= (and b!4948998 res!2111662) b!4948999))

(declare-fun m!5972930 () Bool)

(assert (=> b!4948997 m!5972930))

(declare-fun m!5972932 () Bool)

(assert (=> d!1593522 m!5972932))

(declare-fun m!5972934 () Bool)

(assert (=> d!1593522 m!5972934))

(declare-fun m!5972936 () Bool)

(assert (=> d!1593522 m!5972936))

(declare-fun m!5972938 () Bool)

(assert (=> b!4948998 m!5972938))

(assert (=> b!4948998 m!5972486))

(declare-fun m!5972940 () Bool)

(assert (=> b!4948998 m!5972940))

(assert (=> b!4948726 d!1593522))

(declare-fun b!4949000 () Bool)

(declare-fun e!3092154 () List!57127)

(assert (=> b!4949000 (= e!3092154 lt!2041504)))

(declare-fun b!4949003 () Bool)

(declare-fun e!3092155 () Bool)

(declare-fun lt!2041974 () List!57127)

(assert (=> b!4949003 (= e!3092155 (or (not (= lt!2041504 Nil!57003)) (= lt!2041974 lt!2041496)))))

(declare-fun b!4949001 () Bool)

(assert (=> b!4949001 (= e!3092154 (Cons!57003 (h!63451 lt!2041496) (++!12478 (t!367673 lt!2041496) lt!2041504)))))

(declare-fun d!1593526 () Bool)

(assert (=> d!1593526 e!3092155))

(declare-fun res!2111663 () Bool)

(assert (=> d!1593526 (=> (not res!2111663) (not e!3092155))))

(assert (=> d!1593526 (= res!2111663 (= (content!10157 lt!2041974) ((_ map or) (content!10157 lt!2041496) (content!10157 lt!2041504))))))

(assert (=> d!1593526 (= lt!2041974 e!3092154)))

(declare-fun c!844803 () Bool)

(assert (=> d!1593526 (= c!844803 ((_ is Nil!57003) lt!2041496))))

(assert (=> d!1593526 (= (++!12478 lt!2041496 lt!2041504) lt!2041974)))

(declare-fun b!4949002 () Bool)

(declare-fun res!2111664 () Bool)

(assert (=> b!4949002 (=> (not res!2111664) (not e!3092155))))

(assert (=> b!4949002 (= res!2111664 (= (size!37831 lt!2041974) (+ (size!37831 lt!2041496) (size!37831 lt!2041504))))))

(assert (= (and d!1593526 c!844803) b!4949000))

(assert (= (and d!1593526 (not c!844803)) b!4949001))

(assert (= (and d!1593526 res!2111663) b!4949002))

(assert (= (and b!4949002 res!2111664) b!4949003))

(declare-fun m!5972942 () Bool)

(assert (=> b!4949001 m!5972942))

(declare-fun m!5972944 () Bool)

(assert (=> d!1593526 m!5972944))

(declare-fun m!5972946 () Bool)

(assert (=> d!1593526 m!5972946))

(declare-fun m!5972948 () Bool)

(assert (=> d!1593526 m!5972948))

(declare-fun m!5972950 () Bool)

(assert (=> b!4949002 m!5972950))

(assert (=> b!4949002 m!5972688))

(declare-fun m!5972952 () Bool)

(assert (=> b!4949002 m!5972952))

(assert (=> b!4948726 d!1593526))

(declare-fun d!1593528 () Bool)

(assert (=> d!1593528 (= (tail!9752 testedSuffix!70) (t!367673 testedSuffix!70))))

(assert (=> b!4948726 d!1593528))

(declare-fun b!4949010 () Bool)

(declare-fun e!3092160 () List!57127)

(assert (=> b!4949010 (= e!3092160 (Cons!57003 lt!2041491 Nil!57003))))

(declare-fun e!3092161 () Bool)

(declare-fun b!4949013 () Bool)

(declare-fun lt!2041975 () List!57127)

(assert (=> b!4949013 (= e!3092161 (or (not (= (Cons!57003 lt!2041491 Nil!57003) Nil!57003)) (= lt!2041975 testedP!110)))))

(declare-fun b!4949011 () Bool)

(assert (=> b!4949011 (= e!3092160 (Cons!57003 (h!63451 testedP!110) (++!12478 (t!367673 testedP!110) (Cons!57003 lt!2041491 Nil!57003))))))

(declare-fun d!1593530 () Bool)

(assert (=> d!1593530 e!3092161))

(declare-fun res!2111667 () Bool)

(assert (=> d!1593530 (=> (not res!2111667) (not e!3092161))))

(assert (=> d!1593530 (= res!2111667 (= (content!10157 lt!2041975) ((_ map or) (content!10157 testedP!110) (content!10157 (Cons!57003 lt!2041491 Nil!57003)))))))

(assert (=> d!1593530 (= lt!2041975 e!3092160)))

(declare-fun c!844806 () Bool)

(assert (=> d!1593530 (= c!844806 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593530 (= (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003)) lt!2041975)))

(declare-fun b!4949012 () Bool)

(declare-fun res!2111668 () Bool)

(assert (=> b!4949012 (=> (not res!2111668) (not e!3092161))))

(assert (=> b!4949012 (= res!2111668 (= (size!37831 lt!2041975) (+ (size!37831 testedP!110) (size!37831 (Cons!57003 lt!2041491 Nil!57003)))))))

(assert (= (and d!1593530 c!844806) b!4949010))

(assert (= (and d!1593530 (not c!844806)) b!4949011))

(assert (= (and d!1593530 res!2111667) b!4949012))

(assert (= (and b!4949012 res!2111668) b!4949013))

(declare-fun m!5972954 () Bool)

(assert (=> b!4949011 m!5972954))

(declare-fun m!5972956 () Bool)

(assert (=> d!1593530 m!5972956))

(assert (=> d!1593530 m!5972934))

(declare-fun m!5972960 () Bool)

(assert (=> d!1593530 m!5972960))

(declare-fun m!5972964 () Bool)

(assert (=> b!4949012 m!5972964))

(assert (=> b!4949012 m!5972486))

(declare-fun m!5972966 () Bool)

(assert (=> b!4949012 m!5972966))

(assert (=> b!4948726 d!1593530))

(declare-fun b!4949020 () Bool)

(declare-fun res!2111671 () Bool)

(declare-fun e!3092165 () Bool)

(assert (=> b!4949020 (=> (not res!2111671) (not e!3092165))))

(assert (=> b!4949020 (= res!2111671 (= (head!10617 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))) (head!10617 lt!2041510)))))

(declare-fun b!4949022 () Bool)

(declare-fun e!3092167 () Bool)

(assert (=> b!4949022 (= e!3092167 (>= (size!37831 lt!2041510) (size!37831 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003)))))))

(declare-fun b!4949021 () Bool)

(assert (=> b!4949021 (= e!3092165 (isPrefix!5097 (tail!9752 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))) (tail!9752 lt!2041510)))))

(declare-fun b!4949019 () Bool)

(declare-fun e!3092166 () Bool)

(assert (=> b!4949019 (= e!3092166 e!3092165)))

(declare-fun res!2111673 () Bool)

(assert (=> b!4949019 (=> (not res!2111673) (not e!3092165))))

(assert (=> b!4949019 (= res!2111673 (not ((_ is Nil!57003) lt!2041510)))))

(declare-fun d!1593534 () Bool)

(assert (=> d!1593534 e!3092167))

(declare-fun res!2111670 () Bool)

(assert (=> d!1593534 (=> res!2111670 e!3092167)))

(declare-fun lt!2041977 () Bool)

(assert (=> d!1593534 (= res!2111670 (not lt!2041977))))

(assert (=> d!1593534 (= lt!2041977 e!3092166)))

(declare-fun res!2111672 () Bool)

(assert (=> d!1593534 (=> res!2111672 e!3092166)))

(assert (=> d!1593534 (= res!2111672 ((_ is Nil!57003) (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))))))

(assert (=> d!1593534 (= (isPrefix!5097 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003)) lt!2041510) lt!2041977)))

(assert (= (and d!1593534 (not res!2111672)) b!4949019))

(assert (= (and b!4949019 res!2111673) b!4949020))

(assert (= (and b!4949020 res!2111671) b!4949021))

(assert (= (and d!1593534 (not res!2111670)) b!4949022))

(assert (=> b!4949020 m!5972546))

(declare-fun m!5972970 () Bool)

(assert (=> b!4949020 m!5972970))

(assert (=> b!4949020 m!5972556))

(assert (=> b!4949022 m!5972506))

(assert (=> b!4949022 m!5972546))

(declare-fun m!5972972 () Bool)

(assert (=> b!4949022 m!5972972))

(assert (=> b!4949021 m!5972546))

(declare-fun m!5972974 () Bool)

(assert (=> b!4949021 m!5972974))

(assert (=> b!4949021 m!5972560))

(assert (=> b!4949021 m!5972974))

(assert (=> b!4949021 m!5972560))

(declare-fun m!5972976 () Bool)

(assert (=> b!4949021 m!5972976))

(assert (=> b!4948726 d!1593534))

(declare-fun d!1593538 () Bool)

(assert (=> d!1593538 (= (head!10617 lt!2041497) (h!63451 lt!2041497))))

(assert (=> b!4948726 d!1593538))

(declare-fun d!1593540 () Bool)

(assert (=> d!1593540 (= (head!10617 (drop!2298 lt!2041510 testedPSize!70)) (h!63451 (drop!2298 lt!2041510 testedPSize!70)))))

(assert (=> b!4948717 d!1593540))

(declare-fun d!1593542 () Bool)

(declare-fun lt!2041988 () C!27232)

(declare-fun contains!19498 (List!57127 C!27232) Bool)

(assert (=> d!1593542 (contains!19498 lt!2041510 lt!2041988)))

(declare-fun e!3092175 () C!27232)

(assert (=> d!1593542 (= lt!2041988 e!3092175)))

(declare-fun c!844813 () Bool)

(assert (=> d!1593542 (= c!844813 (= testedPSize!70 0))))

(declare-fun e!3092176 () Bool)

(assert (=> d!1593542 e!3092176))

(declare-fun res!2111678 () Bool)

(assert (=> d!1593542 (=> (not res!2111678) (not e!3092176))))

(assert (=> d!1593542 (= res!2111678 (<= 0 testedPSize!70))))

(assert (=> d!1593542 (= (apply!13842 lt!2041510 testedPSize!70) lt!2041988)))

(declare-fun b!4949035 () Bool)

(assert (=> b!4949035 (= e!3092176 (< testedPSize!70 (size!37831 lt!2041510)))))

(declare-fun b!4949036 () Bool)

(assert (=> b!4949036 (= e!3092175 (head!10617 lt!2041510))))

(declare-fun b!4949037 () Bool)

(assert (=> b!4949037 (= e!3092175 (apply!13842 (tail!9752 lt!2041510) (- testedPSize!70 1)))))

(assert (= (and d!1593542 res!2111678) b!4949035))

(assert (= (and d!1593542 c!844813) b!4949036))

(assert (= (and d!1593542 (not c!844813)) b!4949037))

(declare-fun m!5972998 () Bool)

(assert (=> d!1593542 m!5972998))

(assert (=> b!4949035 m!5972506))

(assert (=> b!4949036 m!5972556))

(assert (=> b!4949037 m!5972560))

(assert (=> b!4949037 m!5972560))

(declare-fun m!5973000 () Bool)

(assert (=> b!4949037 m!5973000))

(assert (=> b!4948717 d!1593542))

(declare-fun d!1593554 () Bool)

(assert (=> d!1593554 (= (head!10617 testedSuffix!70) (h!63451 testedSuffix!70))))

(assert (=> b!4948717 d!1593554))

(declare-fun d!1593556 () Bool)

(assert (=> d!1593556 (and (= lt!2041506 testedP!110) (= lt!2041502 testedSuffix!70))))

(declare-fun lt!2041994 () Unit!147830)

(declare-fun choose!36547 (List!57127 List!57127 List!57127 List!57127) Unit!147830)

(assert (=> d!1593556 (= lt!2041994 (choose!36547 lt!2041506 lt!2041502 testedP!110 testedSuffix!70))))

(assert (=> d!1593556 (= (++!12478 lt!2041506 lt!2041502) (++!12478 testedP!110 testedSuffix!70))))

(assert (=> d!1593556 (= (lemmaConcatSameAndSameSizesThenSameLists!735 lt!2041506 lt!2041502 testedP!110 testedSuffix!70) lt!2041994)))

(declare-fun bs!1181977 () Bool)

(assert (= bs!1181977 d!1593556))

(declare-fun m!5973020 () Bool)

(assert (=> bs!1181977 m!5973020))

(assert (=> bs!1181977 m!5972470))

(assert (=> bs!1181977 m!5972522))

(assert (=> b!4948717 d!1593556))

(declare-fun d!1593566 () Bool)

(assert (=> d!1593566 (= (head!10617 (drop!2298 lt!2041510 testedPSize!70)) (apply!13842 lt!2041510 testedPSize!70))))

(declare-fun lt!2042000 () Unit!147830)

(declare-fun choose!36548 (List!57127 Int) Unit!147830)

(assert (=> d!1593566 (= lt!2042000 (choose!36548 lt!2041510 testedPSize!70))))

(declare-fun e!3092190 () Bool)

(assert (=> d!1593566 e!3092190))

(declare-fun res!2111689 () Bool)

(assert (=> d!1593566 (=> (not res!2111689) (not e!3092190))))

(assert (=> d!1593566 (= res!2111689 (>= testedPSize!70 0))))

(assert (=> d!1593566 (= (lemmaDropApply!1352 lt!2041510 testedPSize!70) lt!2042000)))

(declare-fun b!4949057 () Bool)

(assert (=> b!4949057 (= e!3092190 (< testedPSize!70 (size!37831 lt!2041510)))))

(assert (= (and d!1593566 res!2111689) b!4949057))

(assert (=> d!1593566 m!5972492))

(assert (=> d!1593566 m!5972492))

(assert (=> d!1593566 m!5972494))

(assert (=> d!1593566 m!5972504))

(declare-fun m!5973024 () Bool)

(assert (=> d!1593566 m!5973024))

(assert (=> b!4949057 m!5972506))

(assert (=> b!4948717 d!1593566))

(declare-fun b!4949094 () Bool)

(declare-fun e!3092216 () Int)

(assert (=> b!4949094 (= e!3092216 0)))

(declare-fun bm!345509 () Bool)

(declare-fun call!345514 () Int)

(assert (=> bm!345509 (= call!345514 (size!37831 lt!2041510))))

(declare-fun b!4949096 () Bool)

(declare-fun e!3092215 () List!57127)

(assert (=> b!4949096 (= e!3092215 (drop!2298 (t!367673 lt!2041510) (- testedPSize!70 1)))))

(declare-fun b!4949097 () Bool)

(declare-fun e!3092212 () List!57127)

(assert (=> b!4949097 (= e!3092212 e!3092215)))

(declare-fun c!844824 () Bool)

(assert (=> b!4949097 (= c!844824 (<= testedPSize!70 0))))

(declare-fun b!4949098 () Bool)

(declare-fun e!3092213 () Int)

(assert (=> b!4949098 (= e!3092213 call!345514)))

(declare-fun b!4949099 () Bool)

(assert (=> b!4949099 (= e!3092212 Nil!57003)))

(declare-fun b!4949100 () Bool)

(assert (=> b!4949100 (= e!3092215 lt!2041510)))

(declare-fun b!4949095 () Bool)

(assert (=> b!4949095 (= e!3092213 e!3092216)))

(declare-fun c!844825 () Bool)

(assert (=> b!4949095 (= c!844825 (>= testedPSize!70 call!345514))))

(declare-fun d!1593568 () Bool)

(declare-fun e!3092214 () Bool)

(assert (=> d!1593568 e!3092214))

(declare-fun res!2111692 () Bool)

(assert (=> d!1593568 (=> (not res!2111692) (not e!3092214))))

(declare-fun lt!2042003 () List!57127)

(assert (=> d!1593568 (= res!2111692 (= ((_ map implies) (content!10157 lt!2042003) (content!10157 lt!2041510)) ((as const (InoxSet C!27232)) true)))))

(assert (=> d!1593568 (= lt!2042003 e!3092212)))

(declare-fun c!844823 () Bool)

(assert (=> d!1593568 (= c!844823 ((_ is Nil!57003) lt!2041510))))

(assert (=> d!1593568 (= (drop!2298 lt!2041510 testedPSize!70) lt!2042003)))

(declare-fun b!4949101 () Bool)

(assert (=> b!4949101 (= e!3092216 (- call!345514 testedPSize!70))))

(declare-fun b!4949102 () Bool)

(assert (=> b!4949102 (= e!3092214 (= (size!37831 lt!2042003) e!3092213))))

(declare-fun c!844822 () Bool)

(assert (=> b!4949102 (= c!844822 (<= testedPSize!70 0))))

(assert (= (and d!1593568 c!844823) b!4949099))

(assert (= (and d!1593568 (not c!844823)) b!4949097))

(assert (= (and b!4949097 c!844824) b!4949100))

(assert (= (and b!4949097 (not c!844824)) b!4949096))

(assert (= (and d!1593568 res!2111692) b!4949102))

(assert (= (and b!4949102 c!844822) b!4949098))

(assert (= (and b!4949102 (not c!844822)) b!4949095))

(assert (= (and b!4949095 c!844825) b!4949094))

(assert (= (and b!4949095 (not c!844825)) b!4949101))

(assert (= (or b!4949098 b!4949095 b!4949101) bm!345509))

(assert (=> bm!345509 m!5972506))

(declare-fun m!5973034 () Bool)

(assert (=> b!4949096 m!5973034))

(declare-fun m!5973036 () Bool)

(assert (=> d!1593568 m!5973036))

(declare-fun m!5973038 () Bool)

(assert (=> d!1593568 m!5973038))

(declare-fun m!5973040 () Bool)

(assert (=> b!4949102 m!5973040))

(assert (=> b!4948717 d!1593568))

(declare-fun d!1593570 () Bool)

(declare-fun lt!2042006 () C!27232)

(assert (=> d!1593570 (= lt!2042006 (apply!13842 (list!18179 totalInput!685) testedPSize!70))))

(declare-fun apply!13844 (Conc!15010 Int) C!27232)

(assert (=> d!1593570 (= lt!2042006 (apply!13844 (c!844685 totalInput!685) testedPSize!70))))

(declare-fun e!3092219 () Bool)

(assert (=> d!1593570 e!3092219))

(declare-fun res!2111695 () Bool)

(assert (=> d!1593570 (=> (not res!2111695) (not e!3092219))))

(assert (=> d!1593570 (= res!2111695 (<= 0 testedPSize!70))))

(assert (=> d!1593570 (= (apply!13841 totalInput!685 testedPSize!70) lt!2042006)))

(declare-fun b!4949105 () Bool)

(assert (=> b!4949105 (= e!3092219 (< testedPSize!70 (size!37832 totalInput!685)))))

(assert (= (and d!1593570 res!2111695) b!4949105))

(assert (=> d!1593570 m!5972520))

(assert (=> d!1593570 m!5972520))

(declare-fun m!5973042 () Bool)

(assert (=> d!1593570 m!5973042))

(declare-fun m!5973044 () Bool)

(assert (=> d!1593570 m!5973044))

(assert (=> b!4949105 m!5972468))

(assert (=> b!4948717 d!1593570))

(declare-fun d!1593572 () Bool)

(declare-fun lambda!246850 () Int)

(declare-fun forall!13278 (List!57128 Int) Bool)

(assert (=> d!1593572 (= (inv!74282 setElem!28102) (forall!13278 (exprs!3633 setElem!28102) lambda!246850))))

(declare-fun bs!1181979 () Bool)

(assert (= bs!1181979 d!1593572))

(declare-fun m!5973046 () Bool)

(assert (=> bs!1181979 m!5973046))

(assert (=> setNonEmpty!28102 d!1593572))

(declare-fun d!1593574 () Bool)

(declare-fun c!844828 () Bool)

(assert (=> d!1593574 (= c!844828 ((_ is Node!15010) (c!844685 totalInput!685)))))

(declare-fun e!3092224 () Bool)

(assert (=> d!1593574 (= (inv!74280 (c!844685 totalInput!685)) e!3092224)))

(declare-fun b!4949112 () Bool)

(declare-fun inv!74286 (Conc!15010) Bool)

(assert (=> b!4949112 (= e!3092224 (inv!74286 (c!844685 totalInput!685)))))

(declare-fun b!4949113 () Bool)

(declare-fun e!3092225 () Bool)

(assert (=> b!4949113 (= e!3092224 e!3092225)))

(declare-fun res!2111698 () Bool)

(assert (=> b!4949113 (= res!2111698 (not ((_ is Leaf!24948) (c!844685 totalInput!685))))))

(assert (=> b!4949113 (=> res!2111698 e!3092225)))

(declare-fun b!4949114 () Bool)

(declare-fun inv!74287 (Conc!15010) Bool)

(assert (=> b!4949114 (= e!3092225 (inv!74287 (c!844685 totalInput!685)))))

(assert (= (and d!1593574 c!844828) b!4949112))

(assert (= (and d!1593574 (not c!844828)) b!4949113))

(assert (= (and b!4949113 (not res!2111698)) b!4949114))

(declare-fun m!5973048 () Bool)

(assert (=> b!4949112 m!5973048))

(declare-fun m!5973050 () Bool)

(assert (=> b!4949114 m!5973050))

(assert (=> b!4948718 d!1593574))

(declare-fun d!1593576 () Bool)

(declare-fun list!18181 (Conc!15010) List!57127)

(assert (=> d!1593576 (= (list!18179 totalInput!685) (list!18181 (c!844685 totalInput!685)))))

(declare-fun bs!1181980 () Bool)

(assert (= bs!1181980 d!1593576))

(declare-fun m!5973052 () Bool)

(assert (=> bs!1181980 m!5973052))

(assert (=> start!521240 d!1593576))

(declare-fun b!4949115 () Bool)

(declare-fun e!3092226 () List!57127)

(assert (=> b!4949115 (= e!3092226 testedSuffix!70)))

(declare-fun lt!2042007 () List!57127)

(declare-fun e!3092227 () Bool)

(declare-fun b!4949118 () Bool)

(assert (=> b!4949118 (= e!3092227 (or (not (= testedSuffix!70 Nil!57003)) (= lt!2042007 testedP!110)))))

(declare-fun b!4949116 () Bool)

(assert (=> b!4949116 (= e!3092226 (Cons!57003 (h!63451 testedP!110) (++!12478 (t!367673 testedP!110) testedSuffix!70)))))

(declare-fun d!1593578 () Bool)

(assert (=> d!1593578 e!3092227))

(declare-fun res!2111699 () Bool)

(assert (=> d!1593578 (=> (not res!2111699) (not e!3092227))))

(assert (=> d!1593578 (= res!2111699 (= (content!10157 lt!2042007) ((_ map or) (content!10157 testedP!110) (content!10157 testedSuffix!70))))))

(assert (=> d!1593578 (= lt!2042007 e!3092226)))

(declare-fun c!844829 () Bool)

(assert (=> d!1593578 (= c!844829 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593578 (= (++!12478 testedP!110 testedSuffix!70) lt!2042007)))

(declare-fun b!4949117 () Bool)

(declare-fun res!2111700 () Bool)

(assert (=> b!4949117 (=> (not res!2111700) (not e!3092227))))

(assert (=> b!4949117 (= res!2111700 (= (size!37831 lt!2042007) (+ (size!37831 testedP!110) (size!37831 testedSuffix!70))))))

(assert (= (and d!1593578 c!844829) b!4949115))

(assert (= (and d!1593578 (not c!844829)) b!4949116))

(assert (= (and d!1593578 res!2111699) b!4949117))

(assert (= (and b!4949117 res!2111700) b!4949118))

(declare-fun m!5973054 () Bool)

(assert (=> b!4949116 m!5973054))

(declare-fun m!5973056 () Bool)

(assert (=> d!1593578 m!5973056))

(assert (=> d!1593578 m!5972934))

(declare-fun m!5973058 () Bool)

(assert (=> d!1593578 m!5973058))

(declare-fun m!5973060 () Bool)

(assert (=> b!4949117 m!5973060))

(assert (=> b!4949117 m!5972486))

(declare-fun m!5973062 () Bool)

(assert (=> b!4949117 m!5973062))

(assert (=> start!521240 d!1593578))

(declare-fun d!1593580 () Bool)

(declare-fun isBalanced!4160 (Conc!15010) Bool)

(assert (=> d!1593580 (= (inv!74281 totalInput!685) (isBalanced!4160 (c!844685 totalInput!685)))))

(declare-fun bs!1181981 () Bool)

(assert (= bs!1181981 d!1593580))

(declare-fun m!5973064 () Bool)

(assert (=> bs!1181981 m!5973064))

(assert (=> start!521240 d!1593580))

(declare-fun d!1593582 () Bool)

(declare-fun lt!2042008 () Int)

(assert (=> d!1593582 (>= lt!2042008 0)))

(declare-fun e!3092228 () Int)

(assert (=> d!1593582 (= lt!2042008 e!3092228)))

(declare-fun c!844830 () Bool)

(assert (=> d!1593582 (= c!844830 ((_ is Nil!57003) lt!2041510))))

(assert (=> d!1593582 (= (size!37831 lt!2041510) lt!2042008)))

(declare-fun b!4949119 () Bool)

(assert (=> b!4949119 (= e!3092228 0)))

(declare-fun b!4949120 () Bool)

(assert (=> b!4949120 (= e!3092228 (+ 1 (size!37831 (t!367673 lt!2041510))))))

(assert (= (and d!1593582 c!844830) b!4949119))

(assert (= (and d!1593582 (not c!844830)) b!4949120))

(declare-fun m!5973066 () Bool)

(assert (=> b!4949120 m!5973066))

(assert (=> b!4948719 d!1593582))

(declare-fun d!1593584 () Bool)

(assert (=> d!1593584 (<= (size!37831 testedP!110) (size!37831 lt!2041510))))

(declare-fun lt!2042011 () Unit!147830)

(declare-fun choose!36549 (List!57127 List!57127) Unit!147830)

(assert (=> d!1593584 (= lt!2042011 (choose!36549 testedP!110 lt!2041510))))

(assert (=> d!1593584 (isPrefix!5097 testedP!110 lt!2041510)))

(assert (=> d!1593584 (= (lemmaIsPrefixThenSmallerEqSize!752 testedP!110 lt!2041510) lt!2042011)))

(declare-fun bs!1181982 () Bool)

(assert (= bs!1181982 d!1593584))

(assert (=> bs!1181982 m!5972486))

(assert (=> bs!1181982 m!5972506))

(declare-fun m!5973068 () Bool)

(assert (=> bs!1181982 m!5973068))

(assert (=> bs!1181982 m!5972478))

(assert (=> b!4948719 d!1593584))

(declare-fun d!1593586 () Bool)

(declare-fun lt!2042014 () Int)

(assert (=> d!1593586 (= lt!2042014 (size!37831 (list!18179 (_1!34091 lt!2041490))))))

(declare-fun size!37834 (Conc!15010) Int)

(assert (=> d!1593586 (= lt!2042014 (size!37834 (c!844685 (_1!34091 lt!2041490))))))

(assert (=> d!1593586 (= (size!37832 (_1!34091 lt!2041490)) lt!2042014)))

(declare-fun bs!1181983 () Bool)

(assert (= bs!1181983 d!1593586))

(assert (=> bs!1181983 m!5972474))

(assert (=> bs!1181983 m!5972474))

(declare-fun m!5973070 () Bool)

(assert (=> bs!1181983 m!5973070))

(declare-fun m!5973072 () Bool)

(assert (=> bs!1181983 m!5973072))

(assert (=> b!4948728 d!1593586))

(declare-fun d!1593588 () Bool)

(declare-fun lt!2042015 () Int)

(assert (=> d!1593588 (= lt!2042015 (size!37831 (list!18179 totalInput!685)))))

(assert (=> d!1593588 (= lt!2042015 (size!37834 (c!844685 totalInput!685)))))

(assert (=> d!1593588 (= (size!37832 totalInput!685) lt!2042015)))

(declare-fun bs!1181984 () Bool)

(assert (= bs!1181984 d!1593588))

(assert (=> bs!1181984 m!5972520))

(assert (=> bs!1181984 m!5972520))

(declare-fun m!5973074 () Bool)

(assert (=> bs!1181984 m!5973074))

(declare-fun m!5973076 () Bool)

(assert (=> bs!1181984 m!5973076))

(assert (=> b!4948720 d!1593588))

(declare-fun b!4949121 () Bool)

(declare-fun e!3092229 () List!57127)

(assert (=> b!4949121 (= e!3092229 lt!2041502)))

(declare-fun e!3092230 () Bool)

(declare-fun b!4949124 () Bool)

(declare-fun lt!2042016 () List!57127)

(assert (=> b!4949124 (= e!3092230 (or (not (= lt!2041502 Nil!57003)) (= lt!2042016 lt!2041506)))))

(declare-fun b!4949122 () Bool)

(assert (=> b!4949122 (= e!3092229 (Cons!57003 (h!63451 lt!2041506) (++!12478 (t!367673 lt!2041506) lt!2041502)))))

(declare-fun d!1593590 () Bool)

(assert (=> d!1593590 e!3092230))

(declare-fun res!2111701 () Bool)

(assert (=> d!1593590 (=> (not res!2111701) (not e!3092230))))

(assert (=> d!1593590 (= res!2111701 (= (content!10157 lt!2042016) ((_ map or) (content!10157 lt!2041506) (content!10157 lt!2041502))))))

(assert (=> d!1593590 (= lt!2042016 e!3092229)))

(declare-fun c!844831 () Bool)

(assert (=> d!1593590 (= c!844831 ((_ is Nil!57003) lt!2041506))))

(assert (=> d!1593590 (= (++!12478 lt!2041506 lt!2041502) lt!2042016)))

(declare-fun b!4949123 () Bool)

(declare-fun res!2111702 () Bool)

(assert (=> b!4949123 (=> (not res!2111702) (not e!3092230))))

(assert (=> b!4949123 (= res!2111702 (= (size!37831 lt!2042016) (+ (size!37831 lt!2041506) (size!37831 lt!2041502))))))

(assert (= (and d!1593590 c!844831) b!4949121))

(assert (= (and d!1593590 (not c!844831)) b!4949122))

(assert (= (and d!1593590 res!2111701) b!4949123))

(assert (= (and b!4949123 res!2111702) b!4949124))

(declare-fun m!5973078 () Bool)

(assert (=> b!4949122 m!5973078))

(declare-fun m!5973080 () Bool)

(assert (=> d!1593590 m!5973080))

(declare-fun m!5973082 () Bool)

(assert (=> d!1593590 m!5973082))

(declare-fun m!5973084 () Bool)

(assert (=> d!1593590 m!5973084))

(declare-fun m!5973086 () Bool)

(assert (=> b!4949123 m!5973086))

(declare-fun m!5973088 () Bool)

(assert (=> b!4949123 m!5973088))

(declare-fun m!5973090 () Bool)

(assert (=> b!4949123 m!5973090))

(assert (=> b!4948729 d!1593590))

(declare-fun d!1593592 () Bool)

(assert (=> d!1593592 (= (list!18179 (_2!34091 lt!2041490)) (list!18181 (c!844685 (_2!34091 lt!2041490))))))

(declare-fun bs!1181985 () Bool)

(assert (= bs!1181985 d!1593592))

(declare-fun m!5973092 () Bool)

(assert (=> bs!1181985 m!5973092))

(assert (=> b!4948729 d!1593592))

(declare-fun d!1593594 () Bool)

(assert (=> d!1593594 (= (list!18179 (_1!34091 lt!2041490)) (list!18181 (c!844685 (_1!34091 lt!2041490))))))

(declare-fun bs!1181986 () Bool)

(assert (= bs!1181986 d!1593594))

(declare-fun m!5973094 () Bool)

(assert (=> bs!1181986 m!5973094))

(assert (=> b!4948729 d!1593594))

(declare-fun d!1593596 () Bool)

(declare-fun e!3092233 () Bool)

(assert (=> d!1593596 e!3092233))

(declare-fun res!2111708 () Bool)

(assert (=> d!1593596 (=> (not res!2111708) (not e!3092233))))

(declare-fun lt!2042022 () tuple2!61576)

(assert (=> d!1593596 (= res!2111708 (isBalanced!4160 (c!844685 (_1!34091 lt!2042022))))))

(declare-datatypes ((tuple2!61580 0))(
  ( (tuple2!61581 (_1!34093 Conc!15010) (_2!34093 Conc!15010)) )
))
(declare-fun lt!2042021 () tuple2!61580)

(assert (=> d!1593596 (= lt!2042022 (tuple2!61577 (BalanceConc!29451 (_1!34093 lt!2042021)) (BalanceConc!29451 (_2!34093 lt!2042021))))))

(declare-fun splitAt!414 (Conc!15010 Int) tuple2!61580)

(assert (=> d!1593596 (= lt!2042021 (splitAt!414 (c!844685 totalInput!685) testedPSize!70))))

(assert (=> d!1593596 (isBalanced!4160 (c!844685 totalInput!685))))

(assert (=> d!1593596 (= (splitAt!412 totalInput!685 testedPSize!70) lt!2042022)))

(declare-fun b!4949129 () Bool)

(declare-fun res!2111707 () Bool)

(assert (=> b!4949129 (=> (not res!2111707) (not e!3092233))))

(assert (=> b!4949129 (= res!2111707 (isBalanced!4160 (c!844685 (_2!34091 lt!2042022))))))

(declare-fun b!4949130 () Bool)

(declare-fun splitAtIndex!154 (List!57127 Int) tuple2!61574)

(assert (=> b!4949130 (= e!3092233 (= (tuple2!61575 (list!18179 (_1!34091 lt!2042022)) (list!18179 (_2!34091 lt!2042022))) (splitAtIndex!154 (list!18179 totalInput!685) testedPSize!70)))))

(assert (= (and d!1593596 res!2111708) b!4949129))

(assert (= (and b!4949129 res!2111707) b!4949130))

(declare-fun m!5973096 () Bool)

(assert (=> d!1593596 m!5973096))

(declare-fun m!5973098 () Bool)

(assert (=> d!1593596 m!5973098))

(assert (=> d!1593596 m!5973064))

(declare-fun m!5973100 () Bool)

(assert (=> b!4949129 m!5973100))

(declare-fun m!5973102 () Bool)

(assert (=> b!4949130 m!5973102))

(declare-fun m!5973104 () Bool)

(assert (=> b!4949130 m!5973104))

(assert (=> b!4949130 m!5972520))

(assert (=> b!4949130 m!5972520))

(declare-fun m!5973106 () Bool)

(assert (=> b!4949130 m!5973106))

(assert (=> b!4948729 d!1593596))

(declare-fun d!1593598 () Bool)

(declare-fun lt!2042023 () Int)

(assert (=> d!1593598 (>= lt!2042023 0)))

(declare-fun e!3092234 () Int)

(assert (=> d!1593598 (= lt!2042023 e!3092234)))

(declare-fun c!844832 () Bool)

(assert (=> d!1593598 (= c!844832 ((_ is Nil!57003) (_1!34090 (findLongestMatchInnerZipper!80 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2041510 totalInputSize!132))))))

(assert (=> d!1593598 (= (size!37831 (_1!34090 (findLongestMatchInnerZipper!80 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2041510 totalInputSize!132))) lt!2042023)))

(declare-fun b!4949131 () Bool)

(assert (=> b!4949131 (= e!3092234 0)))

(declare-fun b!4949132 () Bool)

(assert (=> b!4949132 (= e!3092234 (+ 1 (size!37831 (t!367673 (_1!34090 (findLongestMatchInnerZipper!80 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2041510 totalInputSize!132))))))))

(assert (= (and d!1593598 c!844832) b!4949131))

(assert (= (and d!1593598 (not c!844832)) b!4949132))

(declare-fun m!5973108 () Bool)

(assert (=> b!4949132 m!5973108))

(assert (=> b!4948722 d!1593598))

(declare-fun bm!345526 () Bool)

(declare-fun call!345537 () List!57127)

(assert (=> bm!345526 (= call!345537 (tail!9752 testedSuffix!70))))

(declare-fun b!4949161 () Bool)

(declare-fun c!844849 () Bool)

(declare-fun call!345533 () Bool)

(assert (=> b!4949161 (= c!844849 call!345533)))

(declare-fun lt!2042088 () Unit!147830)

(declare-fun lt!2042079 () Unit!147830)

(assert (=> b!4949161 (= lt!2042088 lt!2042079)))

(assert (=> b!4949161 (= lt!2041510 testedP!110)))

(declare-fun call!345536 () Unit!147830)

(assert (=> b!4949161 (= lt!2042079 call!345536)))

(declare-fun lt!2042085 () Unit!147830)

(declare-fun lt!2042078 () Unit!147830)

(assert (=> b!4949161 (= lt!2042085 lt!2042078)))

(declare-fun call!345531 () Bool)

(assert (=> b!4949161 call!345531))

(declare-fun call!345538 () Unit!147830)

(assert (=> b!4949161 (= lt!2042078 call!345538)))

(declare-fun e!3092255 () tuple2!61574)

(declare-fun e!3092254 () tuple2!61574)

(assert (=> b!4949161 (= e!3092255 e!3092254)))

(declare-fun b!4949162 () Bool)

(declare-fun e!3092257 () tuple2!61574)

(declare-fun lt!2042076 () tuple2!61574)

(assert (=> b!4949162 (= e!3092257 lt!2042076)))

(declare-fun bm!345527 () Bool)

(assert (=> bm!345527 (= call!345533 (nullableZipper!862 z!3568))))

(declare-fun b!4949163 () Bool)

(declare-fun c!844847 () Bool)

(assert (=> b!4949163 (= c!844847 call!345533)))

(declare-fun lt!2042086 () Unit!147830)

(declare-fun lt!2042099 () Unit!147830)

(assert (=> b!4949163 (= lt!2042086 lt!2042099)))

(declare-fun lt!2042083 () List!57127)

(declare-fun lt!2042090 () C!27232)

(assert (=> b!4949163 (= (++!12478 (++!12478 testedP!110 (Cons!57003 lt!2042090 Nil!57003)) lt!2042083) lt!2041510)))

(assert (=> b!4949163 (= lt!2042099 (lemmaMoveElementToOtherListKeepsConcatEq!1436 testedP!110 lt!2042090 lt!2042083 lt!2041510))))

(assert (=> b!4949163 (= lt!2042083 (tail!9752 testedSuffix!70))))

(assert (=> b!4949163 (= lt!2042090 (head!10617 testedSuffix!70))))

(declare-fun lt!2042098 () Unit!147830)

(declare-fun lt!2042077 () Unit!147830)

(assert (=> b!4949163 (= lt!2042098 lt!2042077)))

(assert (=> b!4949163 (isPrefix!5097 (++!12478 testedP!110 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003)) lt!2041510)))

(assert (=> b!4949163 (= lt!2042077 (lemmaAddHeadSuffixToPrefixStillPrefix!826 testedP!110 lt!2041510))))

(declare-fun lt!2042101 () List!57127)

(assert (=> b!4949163 (= lt!2042101 (++!12478 testedP!110 (Cons!57003 (head!10617 testedSuffix!70) Nil!57003)))))

(declare-fun lt!2042091 () Unit!147830)

(declare-fun e!3092251 () Unit!147830)

(assert (=> b!4949163 (= lt!2042091 e!3092251)))

(declare-fun c!844845 () Bool)

(assert (=> b!4949163 (= c!844845 (= (size!37831 testedP!110) (size!37831 lt!2041510)))))

(declare-fun lt!2042096 () Unit!147830)

(declare-fun lt!2042100 () Unit!147830)

(assert (=> b!4949163 (= lt!2042096 lt!2042100)))

(assert (=> b!4949163 (<= (size!37831 testedP!110) (size!37831 lt!2041510))))

(assert (=> b!4949163 (= lt!2042100 (lemmaIsPrefixThenSmallerEqSize!752 testedP!110 lt!2041510))))

(declare-fun e!3092253 () tuple2!61574)

(assert (=> b!4949163 (= e!3092255 e!3092253)))

(declare-fun b!4949164 () Bool)

(assert (=> b!4949164 (= e!3092257 (tuple2!61575 testedP!110 testedSuffix!70))))

(declare-fun bm!345528 () Bool)

(assert (=> bm!345528 (= call!345538 (lemmaIsPrefixRefl!3437 lt!2041510 lt!2041510))))

(declare-fun b!4949166 () Bool)

(assert (=> b!4949166 (= e!3092254 (tuple2!61575 testedP!110 Nil!57003))))

(declare-fun b!4949167 () Bool)

(declare-fun e!3092252 () tuple2!61574)

(assert (=> b!4949167 (= e!3092252 e!3092255)))

(declare-fun c!844848 () Bool)

(assert (=> b!4949167 (= c!844848 (= testedPSize!70 totalInputSize!132))))

(declare-fun bm!345529 () Bool)

(declare-fun call!345535 () tuple2!61574)

(declare-fun call!345532 () (InoxSet Context!6266))

(assert (=> bm!345529 (= call!345535 (findLongestMatchInnerZipper!80 call!345532 lt!2042101 (+ testedPSize!70 1) call!345537 lt!2041510 totalInputSize!132))))

(declare-fun b!4949168 () Bool)

(declare-fun e!3092258 () Bool)

(declare-fun lt!2042089 () tuple2!61574)

(assert (=> b!4949168 (= e!3092258 (>= (size!37831 (_1!34090 lt!2042089)) (size!37831 testedP!110)))))

(declare-fun bm!345530 () Bool)

(assert (=> bm!345530 (= call!345531 (isPrefix!5097 lt!2041510 lt!2041510))))

(declare-fun b!4949169 () Bool)

(assert (=> b!4949169 (= e!3092253 call!345535)))

(declare-fun b!4949170 () Bool)

(declare-fun e!3092256 () Bool)

(assert (=> b!4949170 (= e!3092256 e!3092258)))

(declare-fun res!2111713 () Bool)

(assert (=> b!4949170 (=> res!2111713 e!3092258)))

(declare-fun isEmpty!30672 (List!57127) Bool)

(assert (=> b!4949170 (= res!2111713 (isEmpty!30672 (_1!34090 lt!2042089)))))

(declare-fun bm!345531 () Bool)

(declare-fun call!345534 () C!27232)

(assert (=> bm!345531 (= call!345534 (head!10617 testedSuffix!70))))

(declare-fun bm!345532 () Bool)

(assert (=> bm!345532 (= call!345532 (derivationStepZipper!613 z!3568 call!345534))))

(declare-fun bm!345533 () Bool)

(assert (=> bm!345533 (= call!345536 (lemmaIsPrefixSameLengthThenSameList!1189 lt!2041510 testedP!110 lt!2041510))))

(declare-fun b!4949171 () Bool)

(assert (=> b!4949171 (= e!3092254 (tuple2!61575 Nil!57003 lt!2041510))))

(declare-fun d!1593600 () Bool)

(assert (=> d!1593600 e!3092256))

(declare-fun res!2111714 () Bool)

(assert (=> d!1593600 (=> (not res!2111714) (not e!3092256))))

(assert (=> d!1593600 (= res!2111714 (= (++!12478 (_1!34090 lt!2042089) (_2!34090 lt!2042089)) lt!2041510))))

(assert (=> d!1593600 (= lt!2042089 e!3092252)))

(declare-fun c!844850 () Bool)

(assert (=> d!1593600 (= c!844850 (lostCauseZipper!809 z!3568))))

(declare-fun lt!2042093 () Unit!147830)

(declare-fun Unit!147847 () Unit!147830)

(assert (=> d!1593600 (= lt!2042093 Unit!147847)))

(assert (=> d!1593600 (= (getSuffix!3079 lt!2041510 testedP!110) testedSuffix!70)))

(declare-fun lt!2042094 () Unit!147830)

(declare-fun lt!2042095 () Unit!147830)

(assert (=> d!1593600 (= lt!2042094 lt!2042095)))

(declare-fun lt!2042080 () List!57127)

(assert (=> d!1593600 (= testedSuffix!70 lt!2042080)))

(assert (=> d!1593600 (= lt!2042095 (lemmaSamePrefixThenSameSuffix!2489 testedP!110 testedSuffix!70 testedP!110 lt!2042080 lt!2041510))))

(assert (=> d!1593600 (= lt!2042080 (getSuffix!3079 lt!2041510 testedP!110))))

(declare-fun lt!2042084 () Unit!147830)

(declare-fun lt!2042092 () Unit!147830)

(assert (=> d!1593600 (= lt!2042084 lt!2042092)))

(assert (=> d!1593600 (isPrefix!5097 testedP!110 (++!12478 testedP!110 testedSuffix!70))))

(assert (=> d!1593600 (= lt!2042092 (lemmaConcatTwoListThenFirstIsPrefix!3321 testedP!110 testedSuffix!70))))

(assert (=> d!1593600 (= (++!12478 testedP!110 testedSuffix!70) lt!2041510)))

(assert (=> d!1593600 (= (findLongestMatchInnerZipper!80 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2041510 totalInputSize!132) lt!2042089)))

(declare-fun b!4949165 () Bool)

(assert (=> b!4949165 (= e!3092253 e!3092257)))

(assert (=> b!4949165 (= lt!2042076 call!345535)))

(declare-fun c!844846 () Bool)

(assert (=> b!4949165 (= c!844846 (isEmpty!30672 (_1!34090 lt!2042076)))))

(declare-fun b!4949172 () Bool)

(declare-fun Unit!147848 () Unit!147830)

(assert (=> b!4949172 (= e!3092251 Unit!147848)))

(declare-fun lt!2042081 () Unit!147830)

(assert (=> b!4949172 (= lt!2042081 call!345538)))

(assert (=> b!4949172 call!345531))

(declare-fun lt!2042087 () Unit!147830)

(assert (=> b!4949172 (= lt!2042087 lt!2042081)))

(declare-fun lt!2042097 () Unit!147830)

(assert (=> b!4949172 (= lt!2042097 call!345536)))

(assert (=> b!4949172 (= lt!2041510 testedP!110)))

(declare-fun lt!2042082 () Unit!147830)

(assert (=> b!4949172 (= lt!2042082 lt!2042097)))

(assert (=> b!4949172 false))

(declare-fun b!4949173 () Bool)

(assert (=> b!4949173 (= e!3092252 (tuple2!61575 Nil!57003 lt!2041510))))

(declare-fun b!4949174 () Bool)

(declare-fun Unit!147849 () Unit!147830)

(assert (=> b!4949174 (= e!3092251 Unit!147849)))

(assert (= (and d!1593600 c!844850) b!4949173))

(assert (= (and d!1593600 (not c!844850)) b!4949167))

(assert (= (and b!4949167 c!844848) b!4949161))

(assert (= (and b!4949167 (not c!844848)) b!4949163))

(assert (= (and b!4949161 c!844849) b!4949166))

(assert (= (and b!4949161 (not c!844849)) b!4949171))

(assert (= (and b!4949163 c!844845) b!4949172))

(assert (= (and b!4949163 (not c!844845)) b!4949174))

(assert (= (and b!4949163 c!844847) b!4949165))

(assert (= (and b!4949163 (not c!844847)) b!4949169))

(assert (= (and b!4949165 c!844846) b!4949164))

(assert (= (and b!4949165 (not c!844846)) b!4949162))

(assert (= (or b!4949165 b!4949169) bm!345526))

(assert (= (or b!4949165 b!4949169) bm!345531))

(assert (= (or b!4949165 b!4949169) bm!345532))

(assert (= (or b!4949165 b!4949169) bm!345529))

(assert (= (or b!4949161 b!4949172) bm!345528))

(assert (= (or b!4949161 b!4949172) bm!345530))

(assert (= (or b!4949161 b!4949172) bm!345533))

(assert (= (or b!4949161 b!4949163) bm!345527))

(assert (= (and d!1593600 res!2111714) b!4949170))

(assert (= (and b!4949170 (not res!2111713)) b!4949168))

(assert (=> bm!345527 m!5972534))

(assert (=> d!1593600 m!5972530))

(assert (=> d!1593600 m!5972522))

(assert (=> d!1593600 m!5972482))

(assert (=> d!1593600 m!5972522))

(assert (=> d!1593600 m!5972572))

(assert (=> d!1593600 m!5972526))

(declare-fun m!5973110 () Bool)

(assert (=> d!1593600 m!5973110))

(declare-fun m!5973112 () Bool)

(assert (=> d!1593600 m!5973112))

(assert (=> bm!345533 m!5972518))

(declare-fun m!5973114 () Bool)

(assert (=> bm!345532 m!5973114))

(assert (=> bm!345526 m!5972548))

(assert (=> bm!345531 m!5972498))

(declare-fun m!5973116 () Bool)

(assert (=> b!4949168 m!5973116))

(assert (=> b!4949168 m!5972486))

(declare-fun m!5973118 () Bool)

(assert (=> b!4949170 m!5973118))

(declare-fun m!5973120 () Bool)

(assert (=> b!4949165 m!5973120))

(assert (=> bm!345528 m!5972514))

(declare-fun m!5973122 () Bool)

(assert (=> bm!345529 m!5973122))

(assert (=> bm!345530 m!5972516))

(declare-fun m!5973124 () Bool)

(assert (=> b!4949163 m!5973124))

(declare-fun m!5973126 () Bool)

(assert (=> b!4949163 m!5973126))

(assert (=> b!4949163 m!5972530))

(assert (=> b!4949163 m!5972508))

(declare-fun m!5973128 () Bool)

(assert (=> b!4949163 m!5973128))

(assert (=> b!4949163 m!5972486))

(assert (=> b!4949163 m!5972498))

(assert (=> b!4949163 m!5972916))

(assert (=> b!4949163 m!5972918))

(declare-fun m!5973130 () Bool)

(assert (=> b!4949163 m!5973130))

(assert (=> b!4949163 m!5972538))

(assert (=> b!4949163 m!5972548))

(assert (=> b!4949163 m!5972530))

(assert (=> b!4949163 m!5972920))

(assert (=> b!4949163 m!5972506))

(assert (=> b!4949163 m!5972916))

(assert (=> b!4949163 m!5973124))

(assert (=> b!4948722 d!1593600))

(declare-fun tp!1387879 () Bool)

(declare-fun tp!1387878 () Bool)

(declare-fun b!4949183 () Bool)

(declare-fun e!3092264 () Bool)

(assert (=> b!4949183 (= e!3092264 (and (inv!74280 (left!41589 (c!844685 totalInput!685))) tp!1387878 (inv!74280 (right!41919 (c!844685 totalInput!685))) tp!1387879))))

(declare-fun b!4949185 () Bool)

(declare-fun e!3092263 () Bool)

(declare-fun tp!1387877 () Bool)

(assert (=> b!4949185 (= e!3092263 tp!1387877)))

(declare-fun b!4949184 () Bool)

(declare-fun inv!74288 (IArray!30081) Bool)

(assert (=> b!4949184 (= e!3092264 (and (inv!74288 (xs!18336 (c!844685 totalInput!685))) e!3092263))))

(assert (=> b!4948718 (= tp!1387845 (and (inv!74280 (c!844685 totalInput!685)) e!3092264))))

(assert (= (and b!4948718 ((_ is Node!15010) (c!844685 totalInput!685))) b!4949183))

(assert (= b!4949184 b!4949185))

(assert (= (and b!4948718 ((_ is Leaf!24948) (c!844685 totalInput!685))) b!4949184))

(declare-fun m!5973132 () Bool)

(assert (=> b!4949183 m!5973132))

(declare-fun m!5973134 () Bool)

(assert (=> b!4949183 m!5973134))

(declare-fun m!5973136 () Bool)

(assert (=> b!4949184 m!5973136))

(assert (=> b!4948718 m!5972532))

(declare-fun b!4949190 () Bool)

(declare-fun e!3092267 () Bool)

(declare-fun tp!1387884 () Bool)

(declare-fun tp!1387885 () Bool)

(assert (=> b!4949190 (= e!3092267 (and tp!1387884 tp!1387885))))

(assert (=> b!4948727 (= tp!1387843 e!3092267)))

(assert (= (and b!4948727 ((_ is Cons!57004) (exprs!3633 setElem!28102))) b!4949190))

(declare-fun b!4949195 () Bool)

(declare-fun e!3092270 () Bool)

(declare-fun tp!1387888 () Bool)

(assert (=> b!4949195 (= e!3092270 (and tp_is_empty!36179 tp!1387888))))

(assert (=> b!4948725 (= tp!1387841 e!3092270)))

(assert (= (and b!4948725 ((_ is Cons!57003) (t!367673 testedP!110))) b!4949195))

(declare-fun b!4949196 () Bool)

(declare-fun e!3092271 () Bool)

(declare-fun tp!1387889 () Bool)

(assert (=> b!4949196 (= e!3092271 (and tp_is_empty!36179 tp!1387889))))

(assert (=> b!4948730 (= tp!1387842 e!3092271)))

(assert (= (and b!4948730 ((_ is Cons!57003) (t!367673 testedSuffix!70))) b!4949196))

(declare-fun condSetEmpty!28108 () Bool)

(assert (=> setNonEmpty!28102 (= condSetEmpty!28108 (= setRest!28102 ((as const (Array Context!6266 Bool)) false)))))

(declare-fun setRes!28108 () Bool)

(assert (=> setNonEmpty!28102 (= tp!1387844 setRes!28108)))

(declare-fun setIsEmpty!28108 () Bool)

(assert (=> setIsEmpty!28108 setRes!28108))

(declare-fun tp!1387894 () Bool)

(declare-fun e!3092274 () Bool)

(declare-fun setElem!28108 () Context!6266)

(declare-fun setNonEmpty!28108 () Bool)

(assert (=> setNonEmpty!28108 (= setRes!28108 (and tp!1387894 (inv!74282 setElem!28108) e!3092274))))

(declare-fun setRest!28108 () (InoxSet Context!6266))

(assert (=> setNonEmpty!28108 (= setRest!28102 ((_ map or) (store ((as const (Array Context!6266 Bool)) false) setElem!28108 true) setRest!28108))))

(declare-fun b!4949201 () Bool)

(declare-fun tp!1387895 () Bool)

(assert (=> b!4949201 (= e!3092274 tp!1387895)))

(assert (= (and setNonEmpty!28102 condSetEmpty!28108) setIsEmpty!28108))

(assert (= (and setNonEmpty!28102 (not condSetEmpty!28108)) setNonEmpty!28108))

(assert (= setNonEmpty!28108 b!4949201))

(declare-fun m!5973138 () Bool)

(assert (=> setNonEmpty!28108 m!5973138))

(check-sat (not b!4949120) (not bm!345465) (not bm!345529) (not b!4949105) (not b!4949132) (not d!1593594) (not b!4948978) (not b!4949011) (not d!1593568) (not b!4949170) (not b!4948756) (not b!4948747) (not d!1593440) (not b!4949102) (not b!4948751) (not d!1593542) (not d!1593588) (not b!4949168) (not d!1593446) (not b!4948997) (not b!4949122) (not bm!345509) (not d!1593556) (not b!4948718) (not b!4949022) (not d!1593522) (not b!4949096) (not b!4949117) (not bm!345461) (not b!4949184) (not d!1593510) (not b!4948737) (not b!4948755) (not d!1593586) (not b!4949057) (not bm!345528) (not bm!345526) (not b!4949036) (not d!1593570) (not b!4948752) (not b!4949001) (not b!4949190) (not b!4949002) (not b!4949129) (not b!4948748) (not d!1593566) (not d!1593438) (not bm!345531) (not b!4948823) (not b!4949185) (not b!4949123) (not b!4949183) (not b!4948969) (not d!1593514) (not bm!345527) (not b!4949201) (not bm!345459) (not bm!345467) (not b!4949020) (not bm!345458) (not bm!345530) (not d!1593584) tp_is_empty!36179 (not b!4949165) (not b!4949114) (not b!4949196) (not b!4949035) (not b!4948749) (not bm!345466) (not d!1593596) (not b!4948820) (not bm!345460) (not b!4948753) (not bm!345533) (not d!1593600) (not d!1593518) (not b!4949112) (not d!1593508) (not bm!345464) (not bm!345499) (not b!4948968) (not d!1593512) (not d!1593576) (not bm!345463) (not setNonEmpty!28108) (not bm!345462) (not d!1593572) (not d!1593530) (not bm!345532) (not b!4949195) (not d!1593580) (not b!4949037) (not d!1593590) (not d!1593592) (not b!4948998) (not d!1593444) (not bm!345500) (not b!4949130) (not b!4948757) (not d!1593450) (not d!1593526) (not b!4949116) (not b!4948814) (not b!4949021) (not d!1593578) (not d!1593486) (not b!4949163) (not b!4949012))
(check-sat)
(get-model)

(declare-fun b!4949203 () Bool)

(declare-fun res!2111716 () Bool)

(declare-fun e!3092275 () Bool)

(assert (=> b!4949203 (=> (not res!2111716) (not e!3092275))))

(assert (=> b!4949203 (= res!2111716 (= (head!10617 (tail!9752 lt!2041510)) (head!10617 (tail!9752 lt!2041510))))))

(declare-fun b!4949205 () Bool)

(declare-fun e!3092277 () Bool)

(assert (=> b!4949205 (= e!3092277 (>= (size!37831 (tail!9752 lt!2041510)) (size!37831 (tail!9752 lt!2041510))))))

(declare-fun b!4949204 () Bool)

(assert (=> b!4949204 (= e!3092275 (isPrefix!5097 (tail!9752 (tail!9752 lt!2041510)) (tail!9752 (tail!9752 lt!2041510))))))

(declare-fun b!4949202 () Bool)

(declare-fun e!3092276 () Bool)

(assert (=> b!4949202 (= e!3092276 e!3092275)))

(declare-fun res!2111718 () Bool)

(assert (=> b!4949202 (=> (not res!2111718) (not e!3092275))))

(assert (=> b!4949202 (= res!2111718 (not ((_ is Nil!57003) (tail!9752 lt!2041510))))))

(declare-fun d!1593602 () Bool)

(assert (=> d!1593602 e!3092277))

(declare-fun res!2111715 () Bool)

(assert (=> d!1593602 (=> res!2111715 e!3092277)))

(declare-fun lt!2042102 () Bool)

(assert (=> d!1593602 (= res!2111715 (not lt!2042102))))

(assert (=> d!1593602 (= lt!2042102 e!3092276)))

(declare-fun res!2111717 () Bool)

(assert (=> d!1593602 (=> res!2111717 e!3092276)))

(assert (=> d!1593602 (= res!2111717 ((_ is Nil!57003) (tail!9752 lt!2041510)))))

(assert (=> d!1593602 (= (isPrefix!5097 (tail!9752 lt!2041510) (tail!9752 lt!2041510)) lt!2042102)))

(assert (= (and d!1593602 (not res!2111717)) b!4949202))

(assert (= (and b!4949202 res!2111718) b!4949203))

(assert (= (and b!4949203 res!2111716) b!4949204))

(assert (= (and d!1593602 (not res!2111715)) b!4949205))

(assert (=> b!4949203 m!5972560))

(declare-fun m!5973140 () Bool)

(assert (=> b!4949203 m!5973140))

(assert (=> b!4949203 m!5972560))

(assert (=> b!4949203 m!5973140))

(assert (=> b!4949205 m!5972560))

(declare-fun m!5973142 () Bool)

(assert (=> b!4949205 m!5973142))

(assert (=> b!4949205 m!5972560))

(assert (=> b!4949205 m!5973142))

(assert (=> b!4949204 m!5972560))

(declare-fun m!5973144 () Bool)

(assert (=> b!4949204 m!5973144))

(assert (=> b!4949204 m!5972560))

(assert (=> b!4949204 m!5973144))

(assert (=> b!4949204 m!5973144))

(assert (=> b!4949204 m!5973144))

(declare-fun m!5973146 () Bool)

(assert (=> b!4949204 m!5973146))

(assert (=> b!4948756 d!1593602))

(declare-fun d!1593604 () Bool)

(assert (=> d!1593604 (= (tail!9752 lt!2041510) (t!367673 lt!2041510))))

(assert (=> b!4948756 d!1593604))

(declare-fun d!1593606 () Bool)

(assert (=> d!1593606 (= (head!10617 lt!2041510) (h!63451 lt!2041510))))

(assert (=> b!4949036 d!1593606))

(assert (=> bm!345528 d!1593440))

(declare-fun d!1593608 () Bool)

(assert (=> d!1593608 (and (= lt!2041506 testedP!110) (= lt!2041502 testedSuffix!70))))

(assert (=> d!1593608 true))

(declare-fun _$50!437 () Unit!147830)

(assert (=> d!1593608 (= (choose!36547 lt!2041506 lt!2041502 testedP!110 testedSuffix!70) _$50!437)))

(assert (=> d!1593556 d!1593608))

(assert (=> d!1593556 d!1593590))

(assert (=> d!1593556 d!1593578))

(declare-fun d!1593610 () Bool)

(declare-fun lt!2042103 () Int)

(assert (=> d!1593610 (>= lt!2042103 0)))

(declare-fun e!3092278 () Int)

(assert (=> d!1593610 (= lt!2042103 e!3092278)))

(declare-fun c!844851 () Bool)

(assert (=> d!1593610 (= c!844851 ((_ is Nil!57003) (t!367673 lt!2041510)))))

(assert (=> d!1593610 (= (size!37831 (t!367673 lt!2041510)) lt!2042103)))

(declare-fun b!4949206 () Bool)

(assert (=> b!4949206 (= e!3092278 0)))

(declare-fun b!4949207 () Bool)

(assert (=> b!4949207 (= e!3092278 (+ 1 (size!37831 (t!367673 (t!367673 lt!2041510)))))))

(assert (= (and d!1593610 c!844851) b!4949206))

(assert (= (and d!1593610 (not c!844851)) b!4949207))

(declare-fun m!5973148 () Bool)

(assert (=> b!4949207 m!5973148))

(assert (=> b!4949120 d!1593610))

(declare-fun d!1593612 () Bool)

(declare-fun choose!36550 ((InoxSet Context!6266) Int) (InoxSet Context!6266))

(assert (=> d!1593612 (= (flatMap!276 z!3568 lambda!246811) (choose!36550 z!3568 lambda!246811))))

(declare-fun bs!1181987 () Bool)

(assert (= bs!1181987 d!1593612))

(declare-fun m!5973150 () Bool)

(assert (=> bs!1181987 m!5973150))

(assert (=> d!1593450 d!1593612))

(assert (=> b!4949105 d!1593588))

(declare-fun b!4949230 () Bool)

(declare-fun res!2111732 () Bool)

(declare-fun e!3092288 () Bool)

(assert (=> b!4949230 (=> (not res!2111732) (not e!3092288))))

(assert (=> b!4949230 (= res!2111732 (isBalanced!4160 (right!41919 (c!844685 totalInput!685))))))

(declare-fun b!4949231 () Bool)

(declare-fun isEmpty!30673 (Conc!15010) Bool)

(assert (=> b!4949231 (= e!3092288 (not (isEmpty!30673 (right!41919 (c!844685 totalInput!685)))))))

(declare-fun b!4949232 () Bool)

(declare-fun res!2111735 () Bool)

(assert (=> b!4949232 (=> (not res!2111735) (not e!3092288))))

(assert (=> b!4949232 (= res!2111735 (isBalanced!4160 (left!41589 (c!844685 totalInput!685))))))

(declare-fun b!4949233 () Bool)

(declare-fun e!3092289 () Bool)

(assert (=> b!4949233 (= e!3092289 e!3092288)))

(declare-fun res!2111734 () Bool)

(assert (=> b!4949233 (=> (not res!2111734) (not e!3092288))))

(declare-fun height!2005 (Conc!15010) Int)

(assert (=> b!4949233 (= res!2111734 (<= (- 1) (- (height!2005 (left!41589 (c!844685 totalInput!685))) (height!2005 (right!41919 (c!844685 totalInput!685))))))))

(declare-fun d!1593616 () Bool)

(declare-fun res!2111736 () Bool)

(assert (=> d!1593616 (=> res!2111736 e!3092289)))

(assert (=> d!1593616 (= res!2111736 (not ((_ is Node!15010) (c!844685 totalInput!685))))))

(assert (=> d!1593616 (= (isBalanced!4160 (c!844685 totalInput!685)) e!3092289)))

(declare-fun b!4949234 () Bool)

(declare-fun res!2111733 () Bool)

(assert (=> b!4949234 (=> (not res!2111733) (not e!3092288))))

(assert (=> b!4949234 (= res!2111733 (not (isEmpty!30673 (left!41589 (c!844685 totalInput!685)))))))

(declare-fun b!4949235 () Bool)

(declare-fun res!2111731 () Bool)

(assert (=> b!4949235 (=> (not res!2111731) (not e!3092288))))

(assert (=> b!4949235 (= res!2111731 (<= (- (height!2005 (left!41589 (c!844685 totalInput!685))) (height!2005 (right!41919 (c!844685 totalInput!685)))) 1))))

(assert (= (and d!1593616 (not res!2111736)) b!4949233))

(assert (= (and b!4949233 res!2111734) b!4949235))

(assert (= (and b!4949235 res!2111731) b!4949232))

(assert (= (and b!4949232 res!2111735) b!4949230))

(assert (= (and b!4949230 res!2111732) b!4949234))

(assert (= (and b!4949234 res!2111733) b!4949231))

(declare-fun m!5973164 () Bool)

(assert (=> b!4949235 m!5973164))

(declare-fun m!5973166 () Bool)

(assert (=> b!4949235 m!5973166))

(declare-fun m!5973168 () Bool)

(assert (=> b!4949234 m!5973168))

(declare-fun m!5973170 () Bool)

(assert (=> b!4949230 m!5973170))

(declare-fun m!5973172 () Bool)

(assert (=> b!4949231 m!5973172))

(declare-fun m!5973174 () Bool)

(assert (=> b!4949232 m!5973174))

(assert (=> b!4949233 m!5973164))

(assert (=> b!4949233 m!5973166))

(assert (=> d!1593580 d!1593616))

(declare-fun bm!345534 () Bool)

(declare-fun call!345545 () List!57127)

(assert (=> bm!345534 (= call!345545 (tail!9752 call!345537))))

(declare-fun b!4949236 () Bool)

(declare-fun c!844861 () Bool)

(declare-fun call!345541 () Bool)

(assert (=> b!4949236 (= c!844861 call!345541)))

(declare-fun lt!2042116 () Unit!147830)

(declare-fun lt!2042107 () Unit!147830)

(assert (=> b!4949236 (= lt!2042116 lt!2042107)))

(assert (=> b!4949236 (= lt!2041510 lt!2042101)))

(declare-fun call!345544 () Unit!147830)

(assert (=> b!4949236 (= lt!2042107 call!345544)))

(declare-fun lt!2042113 () Unit!147830)

(declare-fun lt!2042106 () Unit!147830)

(assert (=> b!4949236 (= lt!2042113 lt!2042106)))

(declare-fun call!345539 () Bool)

(assert (=> b!4949236 call!345539))

(declare-fun call!345546 () Unit!147830)

(assert (=> b!4949236 (= lt!2042106 call!345546)))

(declare-fun e!3092294 () tuple2!61574)

(declare-fun e!3092293 () tuple2!61574)

(assert (=> b!4949236 (= e!3092294 e!3092293)))

(declare-fun b!4949237 () Bool)

(declare-fun e!3092296 () tuple2!61574)

(declare-fun lt!2042104 () tuple2!61574)

(assert (=> b!4949237 (= e!3092296 lt!2042104)))

(declare-fun bm!345535 () Bool)

(assert (=> bm!345535 (= call!345541 (nullableZipper!862 call!345532))))

(declare-fun b!4949238 () Bool)

(declare-fun c!844859 () Bool)

(assert (=> b!4949238 (= c!844859 call!345541)))

(declare-fun lt!2042114 () Unit!147830)

(declare-fun lt!2042127 () Unit!147830)

(assert (=> b!4949238 (= lt!2042114 lt!2042127)))

(declare-fun lt!2042111 () List!57127)

(declare-fun lt!2042118 () C!27232)

(assert (=> b!4949238 (= (++!12478 (++!12478 lt!2042101 (Cons!57003 lt!2042118 Nil!57003)) lt!2042111) lt!2041510)))

(assert (=> b!4949238 (= lt!2042127 (lemmaMoveElementToOtherListKeepsConcatEq!1436 lt!2042101 lt!2042118 lt!2042111 lt!2041510))))

(assert (=> b!4949238 (= lt!2042111 (tail!9752 call!345537))))

(assert (=> b!4949238 (= lt!2042118 (head!10617 call!345537))))

(declare-fun lt!2042126 () Unit!147830)

(declare-fun lt!2042105 () Unit!147830)

(assert (=> b!4949238 (= lt!2042126 lt!2042105)))

(assert (=> b!4949238 (isPrefix!5097 (++!12478 lt!2042101 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 lt!2042101)) Nil!57003)) lt!2041510)))

(assert (=> b!4949238 (= lt!2042105 (lemmaAddHeadSuffixToPrefixStillPrefix!826 lt!2042101 lt!2041510))))

(declare-fun lt!2042129 () List!57127)

(assert (=> b!4949238 (= lt!2042129 (++!12478 lt!2042101 (Cons!57003 (head!10617 call!345537) Nil!57003)))))

(declare-fun lt!2042119 () Unit!147830)

(declare-fun e!3092290 () Unit!147830)

(assert (=> b!4949238 (= lt!2042119 e!3092290)))

(declare-fun c!844857 () Bool)

(assert (=> b!4949238 (= c!844857 (= (size!37831 lt!2042101) (size!37831 lt!2041510)))))

(declare-fun lt!2042124 () Unit!147830)

(declare-fun lt!2042128 () Unit!147830)

(assert (=> b!4949238 (= lt!2042124 lt!2042128)))

(assert (=> b!4949238 (<= (size!37831 lt!2042101) (size!37831 lt!2041510))))

(assert (=> b!4949238 (= lt!2042128 (lemmaIsPrefixThenSmallerEqSize!752 lt!2042101 lt!2041510))))

(declare-fun e!3092292 () tuple2!61574)

(assert (=> b!4949238 (= e!3092294 e!3092292)))

(declare-fun b!4949239 () Bool)

(assert (=> b!4949239 (= e!3092296 (tuple2!61575 lt!2042101 call!345537))))

(declare-fun bm!345536 () Bool)

(assert (=> bm!345536 (= call!345546 (lemmaIsPrefixRefl!3437 lt!2041510 lt!2041510))))

(declare-fun b!4949241 () Bool)

(assert (=> b!4949241 (= e!3092293 (tuple2!61575 lt!2042101 Nil!57003))))

(declare-fun b!4949242 () Bool)

(declare-fun e!3092291 () tuple2!61574)

(assert (=> b!4949242 (= e!3092291 e!3092294)))

(declare-fun c!844860 () Bool)

(assert (=> b!4949242 (= c!844860 (= (+ testedPSize!70 1) totalInputSize!132))))

(declare-fun call!345540 () (InoxSet Context!6266))

(declare-fun bm!345537 () Bool)

(declare-fun call!345543 () tuple2!61574)

(assert (=> bm!345537 (= call!345543 (findLongestMatchInnerZipper!80 call!345540 lt!2042129 (+ testedPSize!70 1 1) call!345545 lt!2041510 totalInputSize!132))))

(declare-fun b!4949243 () Bool)

(declare-fun e!3092297 () Bool)

(declare-fun lt!2042117 () tuple2!61574)

(assert (=> b!4949243 (= e!3092297 (>= (size!37831 (_1!34090 lt!2042117)) (size!37831 lt!2042101)))))

(declare-fun bm!345538 () Bool)

(assert (=> bm!345538 (= call!345539 (isPrefix!5097 lt!2041510 lt!2041510))))

(declare-fun b!4949244 () Bool)

(assert (=> b!4949244 (= e!3092292 call!345543)))

(declare-fun b!4949245 () Bool)

(declare-fun e!3092295 () Bool)

(assert (=> b!4949245 (= e!3092295 e!3092297)))

(declare-fun res!2111737 () Bool)

(assert (=> b!4949245 (=> res!2111737 e!3092297)))

(assert (=> b!4949245 (= res!2111737 (isEmpty!30672 (_1!34090 lt!2042117)))))

(declare-fun bm!345539 () Bool)

(declare-fun call!345542 () C!27232)

(assert (=> bm!345539 (= call!345542 (head!10617 call!345537))))

(declare-fun bm!345540 () Bool)

(assert (=> bm!345540 (= call!345540 (derivationStepZipper!613 call!345532 call!345542))))

(declare-fun bm!345541 () Bool)

(assert (=> bm!345541 (= call!345544 (lemmaIsPrefixSameLengthThenSameList!1189 lt!2041510 lt!2042101 lt!2041510))))

(declare-fun b!4949246 () Bool)

(assert (=> b!4949246 (= e!3092293 (tuple2!61575 Nil!57003 lt!2041510))))

(declare-fun d!1593624 () Bool)

(assert (=> d!1593624 e!3092295))

(declare-fun res!2111738 () Bool)

(assert (=> d!1593624 (=> (not res!2111738) (not e!3092295))))

(assert (=> d!1593624 (= res!2111738 (= (++!12478 (_1!34090 lt!2042117) (_2!34090 lt!2042117)) lt!2041510))))

(assert (=> d!1593624 (= lt!2042117 e!3092291)))

(declare-fun c!844862 () Bool)

(assert (=> d!1593624 (= c!844862 (lostCauseZipper!809 call!345532))))

(declare-fun lt!2042121 () Unit!147830)

(declare-fun Unit!147850 () Unit!147830)

(assert (=> d!1593624 (= lt!2042121 Unit!147850)))

(assert (=> d!1593624 (= (getSuffix!3079 lt!2041510 lt!2042101) call!345537)))

(declare-fun lt!2042122 () Unit!147830)

(declare-fun lt!2042123 () Unit!147830)

(assert (=> d!1593624 (= lt!2042122 lt!2042123)))

(declare-fun lt!2042108 () List!57127)

(assert (=> d!1593624 (= call!345537 lt!2042108)))

(assert (=> d!1593624 (= lt!2042123 (lemmaSamePrefixThenSameSuffix!2489 lt!2042101 call!345537 lt!2042101 lt!2042108 lt!2041510))))

(assert (=> d!1593624 (= lt!2042108 (getSuffix!3079 lt!2041510 lt!2042101))))

(declare-fun lt!2042112 () Unit!147830)

(declare-fun lt!2042120 () Unit!147830)

(assert (=> d!1593624 (= lt!2042112 lt!2042120)))

(assert (=> d!1593624 (isPrefix!5097 lt!2042101 (++!12478 lt!2042101 call!345537))))

(assert (=> d!1593624 (= lt!2042120 (lemmaConcatTwoListThenFirstIsPrefix!3321 lt!2042101 call!345537))))

(assert (=> d!1593624 (= (++!12478 lt!2042101 call!345537) lt!2041510)))

(assert (=> d!1593624 (= (findLongestMatchInnerZipper!80 call!345532 lt!2042101 (+ testedPSize!70 1) call!345537 lt!2041510 totalInputSize!132) lt!2042117)))

(declare-fun b!4949240 () Bool)

(assert (=> b!4949240 (= e!3092292 e!3092296)))

(assert (=> b!4949240 (= lt!2042104 call!345543)))

(declare-fun c!844858 () Bool)

(assert (=> b!4949240 (= c!844858 (isEmpty!30672 (_1!34090 lt!2042104)))))

(declare-fun b!4949247 () Bool)

(declare-fun Unit!147851 () Unit!147830)

(assert (=> b!4949247 (= e!3092290 Unit!147851)))

(declare-fun lt!2042109 () Unit!147830)

(assert (=> b!4949247 (= lt!2042109 call!345546)))

(assert (=> b!4949247 call!345539))

(declare-fun lt!2042115 () Unit!147830)

(assert (=> b!4949247 (= lt!2042115 lt!2042109)))

(declare-fun lt!2042125 () Unit!147830)

(assert (=> b!4949247 (= lt!2042125 call!345544)))

(assert (=> b!4949247 (= lt!2041510 lt!2042101)))

(declare-fun lt!2042110 () Unit!147830)

(assert (=> b!4949247 (= lt!2042110 lt!2042125)))

(assert (=> b!4949247 false))

(declare-fun b!4949248 () Bool)

(assert (=> b!4949248 (= e!3092291 (tuple2!61575 Nil!57003 lt!2041510))))

(declare-fun b!4949249 () Bool)

(declare-fun Unit!147852 () Unit!147830)

(assert (=> b!4949249 (= e!3092290 Unit!147852)))

(assert (= (and d!1593624 c!844862) b!4949248))

(assert (= (and d!1593624 (not c!844862)) b!4949242))

(assert (= (and b!4949242 c!844860) b!4949236))

(assert (= (and b!4949242 (not c!844860)) b!4949238))

(assert (= (and b!4949236 c!844861) b!4949241))

(assert (= (and b!4949236 (not c!844861)) b!4949246))

(assert (= (and b!4949238 c!844857) b!4949247))

(assert (= (and b!4949238 (not c!844857)) b!4949249))

(assert (= (and b!4949238 c!844859) b!4949240))

(assert (= (and b!4949238 (not c!844859)) b!4949244))

(assert (= (and b!4949240 c!844858) b!4949239))

(assert (= (and b!4949240 (not c!844858)) b!4949237))

(assert (= (or b!4949240 b!4949244) bm!345534))

(assert (= (or b!4949240 b!4949244) bm!345539))

(assert (= (or b!4949240 b!4949244) bm!345540))

(assert (= (or b!4949240 b!4949244) bm!345537))

(assert (= (or b!4949236 b!4949247) bm!345536))

(assert (= (or b!4949236 b!4949247) bm!345538))

(assert (= (or b!4949236 b!4949247) bm!345541))

(assert (= (or b!4949236 b!4949238) bm!345535))

(assert (= (and d!1593624 res!2111738) b!4949245))

(assert (= (and b!4949245 (not res!2111737)) b!4949243))

(declare-fun m!5973176 () Bool)

(assert (=> bm!345535 m!5973176))

(declare-fun m!5973178 () Bool)

(assert (=> d!1593624 m!5973178))

(declare-fun m!5973180 () Bool)

(assert (=> d!1593624 m!5973180))

(declare-fun m!5973182 () Bool)

(assert (=> d!1593624 m!5973182))

(assert (=> d!1593624 m!5973180))

(declare-fun m!5973184 () Bool)

(assert (=> d!1593624 m!5973184))

(declare-fun m!5973186 () Bool)

(assert (=> d!1593624 m!5973186))

(declare-fun m!5973188 () Bool)

(assert (=> d!1593624 m!5973188))

(declare-fun m!5973190 () Bool)

(assert (=> d!1593624 m!5973190))

(declare-fun m!5973192 () Bool)

(assert (=> bm!345541 m!5973192))

(declare-fun m!5973194 () Bool)

(assert (=> bm!345540 m!5973194))

(declare-fun m!5973196 () Bool)

(assert (=> bm!345534 m!5973196))

(declare-fun m!5973198 () Bool)

(assert (=> bm!345539 m!5973198))

(declare-fun m!5973200 () Bool)

(assert (=> b!4949243 m!5973200))

(declare-fun m!5973202 () Bool)

(assert (=> b!4949243 m!5973202))

(declare-fun m!5973204 () Bool)

(assert (=> b!4949245 m!5973204))

(declare-fun m!5973206 () Bool)

(assert (=> b!4949240 m!5973206))

(assert (=> bm!345536 m!5972514))

(declare-fun m!5973208 () Bool)

(assert (=> bm!345537 m!5973208))

(assert (=> bm!345538 m!5972516))

(declare-fun m!5973210 () Bool)

(assert (=> b!4949238 m!5973210))

(declare-fun m!5973212 () Bool)

(assert (=> b!4949238 m!5973212))

(assert (=> b!4949238 m!5973178))

(declare-fun m!5973214 () Bool)

(assert (=> b!4949238 m!5973214))

(declare-fun m!5973216 () Bool)

(assert (=> b!4949238 m!5973216))

(assert (=> b!4949238 m!5973202))

(assert (=> b!4949238 m!5973198))

(declare-fun m!5973218 () Bool)

(assert (=> b!4949238 m!5973218))

(declare-fun m!5973220 () Bool)

(assert (=> b!4949238 m!5973220))

(declare-fun m!5973222 () Bool)

(assert (=> b!4949238 m!5973222))

(declare-fun m!5973224 () Bool)

(assert (=> b!4949238 m!5973224))

(assert (=> b!4949238 m!5973196))

(assert (=> b!4949238 m!5973178))

(declare-fun m!5973226 () Bool)

(assert (=> b!4949238 m!5973226))

(assert (=> b!4949238 m!5972506))

(assert (=> b!4949238 m!5973218))

(assert (=> b!4949238 m!5973210))

(assert (=> bm!345529 d!1593624))

(declare-fun d!1593626 () Bool)

(declare-fun lt!2042132 () C!27232)

(assert (=> d!1593626 (contains!19498 lt!2041758 lt!2042132)))

(declare-fun e!3092300 () C!27232)

(assert (=> d!1593626 (= lt!2042132 e!3092300)))

(declare-fun c!844863 () Bool)

(assert (=> d!1593626 (= c!844863 (= (+ 1 testedPSize!70) 0))))

(declare-fun e!3092301 () Bool)

(assert (=> d!1593626 e!3092301))

(declare-fun res!2111739 () Bool)

(assert (=> d!1593626 (=> (not res!2111739) (not e!3092301))))

(assert (=> d!1593626 (= res!2111739 (<= 0 (+ 1 testedPSize!70)))))

(assert (=> d!1593626 (= (apply!13842 lt!2041758 (+ 1 testedPSize!70)) lt!2042132)))

(declare-fun b!4949250 () Bool)

(assert (=> b!4949250 (= e!3092301 (< (+ 1 testedPSize!70) (size!37831 lt!2041758)))))

(declare-fun b!4949251 () Bool)

(assert (=> b!4949251 (= e!3092300 (head!10617 lt!2041758))))

(declare-fun b!4949252 () Bool)

(assert (=> b!4949252 (= e!3092300 (apply!13842 (tail!9752 lt!2041758) (- (+ 1 testedPSize!70) 1)))))

(assert (= (and d!1593626 res!2111739) b!4949250))

(assert (= (and d!1593626 c!844863) b!4949251))

(assert (= (and d!1593626 (not c!844863)) b!4949252))

(declare-fun m!5973228 () Bool)

(assert (=> d!1593626 m!5973228))

(declare-fun m!5973230 () Bool)

(assert (=> b!4949250 m!5973230))

(declare-fun m!5973232 () Bool)

(assert (=> b!4949251 m!5973232))

(declare-fun m!5973234 () Bool)

(assert (=> b!4949252 m!5973234))

(assert (=> b!4949252 m!5973234))

(declare-fun m!5973236 () Bool)

(assert (=> b!4949252 m!5973236))

(assert (=> b!4948814 d!1593626))

(declare-fun b!4949253 () Bool)

(declare-fun e!3092302 () List!57127)

(assert (=> b!4949253 (= e!3092302 lt!2041764)))

(declare-fun lt!2042133 () List!57127)

(declare-fun b!4949256 () Bool)

(declare-fun e!3092303 () Bool)

(assert (=> b!4949256 (= e!3092303 (or (not (= lt!2041764 Nil!57003)) (= lt!2042133 (++!12478 lt!2041496 (Cons!57003 lt!2041778 Nil!57003)))))))

(declare-fun b!4949254 () Bool)

(assert (=> b!4949254 (= e!3092302 (Cons!57003 (h!63451 (++!12478 lt!2041496 (Cons!57003 lt!2041778 Nil!57003))) (++!12478 (t!367673 (++!12478 lt!2041496 (Cons!57003 lt!2041778 Nil!57003))) lt!2041764)))))

(declare-fun d!1593628 () Bool)

(assert (=> d!1593628 e!3092303))

(declare-fun res!2111740 () Bool)

(assert (=> d!1593628 (=> (not res!2111740) (not e!3092303))))

(assert (=> d!1593628 (= res!2111740 (= (content!10157 lt!2042133) ((_ map or) (content!10157 (++!12478 lt!2041496 (Cons!57003 lt!2041778 Nil!57003))) (content!10157 lt!2041764))))))

(assert (=> d!1593628 (= lt!2042133 e!3092302)))

(declare-fun c!844864 () Bool)

(assert (=> d!1593628 (= c!844864 ((_ is Nil!57003) (++!12478 lt!2041496 (Cons!57003 lt!2041778 Nil!57003))))))

(assert (=> d!1593628 (= (++!12478 (++!12478 lt!2041496 (Cons!57003 lt!2041778 Nil!57003)) lt!2041764) lt!2042133)))

(declare-fun b!4949255 () Bool)

(declare-fun res!2111741 () Bool)

(assert (=> b!4949255 (=> (not res!2111741) (not e!3092303))))

(assert (=> b!4949255 (= res!2111741 (= (size!37831 lt!2042133) (+ (size!37831 (++!12478 lt!2041496 (Cons!57003 lt!2041778 Nil!57003))) (size!37831 lt!2041764))))))

(assert (= (and d!1593628 c!844864) b!4949253))

(assert (= (and d!1593628 (not c!844864)) b!4949254))

(assert (= (and d!1593628 res!2111740) b!4949255))

(assert (= (and b!4949255 res!2111741) b!4949256))

(declare-fun m!5973238 () Bool)

(assert (=> b!4949254 m!5973238))

(declare-fun m!5973240 () Bool)

(assert (=> d!1593628 m!5973240))

(assert (=> d!1593628 m!5972684))

(declare-fun m!5973242 () Bool)

(assert (=> d!1593628 m!5973242))

(declare-fun m!5973244 () Bool)

(assert (=> d!1593628 m!5973244))

(declare-fun m!5973246 () Bool)

(assert (=> b!4949255 m!5973246))

(assert (=> b!4949255 m!5972684))

(declare-fun m!5973248 () Bool)

(assert (=> b!4949255 m!5973248))

(declare-fun m!5973250 () Bool)

(assert (=> b!4949255 m!5973250))

(assert (=> b!4948814 d!1593628))

(declare-fun b!4949257 () Bool)

(declare-fun e!3092304 () List!57127)

(assert (=> b!4949257 (= e!3092304 (Cons!57003 lt!2041778 Nil!57003))))

(declare-fun lt!2042135 () List!57127)

(declare-fun b!4949260 () Bool)

(declare-fun e!3092305 () Bool)

(assert (=> b!4949260 (= e!3092305 (or (not (= (Cons!57003 lt!2041778 Nil!57003) Nil!57003)) (= lt!2042135 lt!2041496)))))

(declare-fun b!4949258 () Bool)

(assert (=> b!4949258 (= e!3092304 (Cons!57003 (h!63451 lt!2041496) (++!12478 (t!367673 lt!2041496) (Cons!57003 lt!2041778 Nil!57003))))))

(declare-fun d!1593630 () Bool)

(assert (=> d!1593630 e!3092305))

(declare-fun res!2111742 () Bool)

(assert (=> d!1593630 (=> (not res!2111742) (not e!3092305))))

(assert (=> d!1593630 (= res!2111742 (= (content!10157 lt!2042135) ((_ map or) (content!10157 lt!2041496) (content!10157 (Cons!57003 lt!2041778 Nil!57003)))))))

(assert (=> d!1593630 (= lt!2042135 e!3092304)))

(declare-fun c!844865 () Bool)

(assert (=> d!1593630 (= c!844865 ((_ is Nil!57003) lt!2041496))))

(assert (=> d!1593630 (= (++!12478 lt!2041496 (Cons!57003 lt!2041778 Nil!57003)) lt!2042135)))

(declare-fun b!4949259 () Bool)

(declare-fun res!2111743 () Bool)

(assert (=> b!4949259 (=> (not res!2111743) (not e!3092305))))

(assert (=> b!4949259 (= res!2111743 (= (size!37831 lt!2042135) (+ (size!37831 lt!2041496) (size!37831 (Cons!57003 lt!2041778 Nil!57003)))))))

(assert (= (and d!1593630 c!844865) b!4949257))

(assert (= (and d!1593630 (not c!844865)) b!4949258))

(assert (= (and d!1593630 res!2111742) b!4949259))

(assert (= (and b!4949259 res!2111743) b!4949260))

(declare-fun m!5973252 () Bool)

(assert (=> b!4949258 m!5973252))

(declare-fun m!5973254 () Bool)

(assert (=> d!1593630 m!5973254))

(assert (=> d!1593630 m!5972946))

(declare-fun m!5973256 () Bool)

(assert (=> d!1593630 m!5973256))

(declare-fun m!5973258 () Bool)

(assert (=> b!4949259 m!5973258))

(assert (=> b!4949259 m!5972688))

(declare-fun m!5973260 () Bool)

(assert (=> b!4949259 m!5973260))

(assert (=> b!4948814 d!1593630))

(declare-fun d!1593632 () Bool)

(assert (=> d!1593632 (= (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) (h!63451 (getSuffix!3079 lt!2041745 lt!2041496)))))

(assert (=> b!4948814 d!1593632))

(declare-fun d!1593634 () Bool)

(assert (=> d!1593634 (= (head!10617 (drop!2298 lt!2041758 (+ 1 testedPSize!70))) (h!63451 (drop!2298 lt!2041758 (+ 1 testedPSize!70))))))

(assert (=> b!4948814 d!1593634))

(declare-fun d!1593636 () Bool)

(assert (=> d!1593636 (isPrefix!5097 (++!12478 lt!2041496 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003)) lt!2041745)))

(declare-fun lt!2042136 () Unit!147830)

(assert (=> d!1593636 (= lt!2042136 (choose!36545 lt!2041496 lt!2041745))))

(assert (=> d!1593636 (isPrefix!5097 lt!2041496 lt!2041745)))

(assert (=> d!1593636 (= (lemmaAddHeadSuffixToPrefixStillPrefix!826 lt!2041496 lt!2041745) lt!2042136)))

(declare-fun bs!1181990 () Bool)

(assert (= bs!1181990 d!1593636))

(assert (=> bs!1181990 m!5972672))

(declare-fun m!5973262 () Bool)

(assert (=> bs!1181990 m!5973262))

(declare-fun m!5973264 () Bool)

(assert (=> bs!1181990 m!5973264))

(assert (=> bs!1181990 m!5972690))

(assert (=> bs!1181990 m!5972692))

(assert (=> bs!1181990 m!5972690))

(assert (=> bs!1181990 m!5972672))

(assert (=> bs!1181990 m!5972694))

(assert (=> b!4948814 d!1593636))

(declare-fun b!4949263 () Bool)

(declare-fun e!3092310 () Int)

(assert (=> b!4949263 (= e!3092310 0)))

(declare-fun bm!345542 () Bool)

(declare-fun call!345547 () Int)

(assert (=> bm!345542 (= call!345547 (size!37831 lt!2041758))))

(declare-fun b!4949265 () Bool)

(declare-fun e!3092309 () List!57127)

(assert (=> b!4949265 (= e!3092309 (drop!2298 (t!367673 lt!2041758) (- (+ 1 testedPSize!70) 1)))))

(declare-fun b!4949266 () Bool)

(declare-fun e!3092306 () List!57127)

(assert (=> b!4949266 (= e!3092306 e!3092309)))

(declare-fun c!844868 () Bool)

(assert (=> b!4949266 (= c!844868 (<= (+ 1 testedPSize!70) 0))))

(declare-fun b!4949267 () Bool)

(declare-fun e!3092307 () Int)

(assert (=> b!4949267 (= e!3092307 call!345547)))

(declare-fun b!4949268 () Bool)

(assert (=> b!4949268 (= e!3092306 Nil!57003)))

(declare-fun b!4949269 () Bool)

(assert (=> b!4949269 (= e!3092309 lt!2041758)))

(declare-fun b!4949264 () Bool)

(assert (=> b!4949264 (= e!3092307 e!3092310)))

(declare-fun c!844869 () Bool)

(assert (=> b!4949264 (= c!844869 (>= (+ 1 testedPSize!70) call!345547))))

(declare-fun d!1593638 () Bool)

(declare-fun e!3092308 () Bool)

(assert (=> d!1593638 e!3092308))

(declare-fun res!2111744 () Bool)

(assert (=> d!1593638 (=> (not res!2111744) (not e!3092308))))

(declare-fun lt!2042137 () List!57127)

(assert (=> d!1593638 (= res!2111744 (= ((_ map implies) (content!10157 lt!2042137) (content!10157 lt!2041758)) ((as const (InoxSet C!27232)) true)))))

(assert (=> d!1593638 (= lt!2042137 e!3092306)))

(declare-fun c!844867 () Bool)

(assert (=> d!1593638 (= c!844867 ((_ is Nil!57003) lt!2041758))))

(assert (=> d!1593638 (= (drop!2298 lt!2041758 (+ 1 testedPSize!70)) lt!2042137)))

(declare-fun b!4949270 () Bool)

(assert (=> b!4949270 (= e!3092310 (- call!345547 (+ 1 testedPSize!70)))))

(declare-fun b!4949271 () Bool)

(assert (=> b!4949271 (= e!3092308 (= (size!37831 lt!2042137) e!3092307))))

(declare-fun c!844866 () Bool)

(assert (=> b!4949271 (= c!844866 (<= (+ 1 testedPSize!70) 0))))

(assert (= (and d!1593638 c!844867) b!4949268))

(assert (= (and d!1593638 (not c!844867)) b!4949266))

(assert (= (and b!4949266 c!844868) b!4949269))

(assert (= (and b!4949266 (not c!844868)) b!4949265))

(assert (= (and d!1593638 res!2111744) b!4949271))

(assert (= (and b!4949271 c!844866) b!4949267))

(assert (= (and b!4949271 (not c!844866)) b!4949264))

(assert (= (and b!4949264 c!844869) b!4949263))

(assert (= (and b!4949264 (not c!844869)) b!4949270))

(assert (= (or b!4949267 b!4949264 b!4949270) bm!345542))

(assert (=> bm!345542 m!5973230))

(declare-fun m!5973272 () Bool)

(assert (=> b!4949265 m!5973272))

(declare-fun m!5973274 () Bool)

(assert (=> d!1593638 m!5973274))

(declare-fun m!5973276 () Bool)

(assert (=> d!1593638 m!5973276))

(declare-fun m!5973278 () Bool)

(assert (=> b!4949271 m!5973278))

(assert (=> b!4948814 d!1593638))

(declare-fun d!1593642 () Bool)

(declare-fun lt!2042139 () Int)

(assert (=> d!1593642 (>= lt!2042139 0)))

(declare-fun e!3092313 () Int)

(assert (=> d!1593642 (= lt!2042139 e!3092313)))

(declare-fun c!844871 () Bool)

(assert (=> d!1593642 (= c!844871 ((_ is Nil!57003) lt!2041753))))

(assert (=> d!1593642 (= (size!37831 lt!2041753) lt!2042139)))

(declare-fun b!4949275 () Bool)

(assert (=> b!4949275 (= e!3092313 0)))

(declare-fun b!4949276 () Bool)

(assert (=> b!4949276 (= e!3092313 (+ 1 (size!37831 (t!367673 lt!2041753))))))

(assert (= (and d!1593642 c!844871) b!4949275))

(assert (= (and d!1593642 (not c!844871)) b!4949276))

(declare-fun m!5973280 () Bool)

(assert (=> b!4949276 m!5973280))

(assert (=> b!4948814 d!1593642))

(declare-fun d!1593644 () Bool)

(declare-fun lt!2042140 () List!57127)

(assert (=> d!1593644 (= (++!12478 lt!2041496 lt!2042140) lt!2041745)))

(declare-fun e!3092314 () List!57127)

(assert (=> d!1593644 (= lt!2042140 e!3092314)))

(declare-fun c!844872 () Bool)

(assert (=> d!1593644 (= c!844872 ((_ is Cons!57003) lt!2041496))))

(assert (=> d!1593644 (>= (size!37831 lt!2041745) (size!37831 lt!2041496))))

(assert (=> d!1593644 (= (getSuffix!3079 lt!2041745 lt!2041496) lt!2042140)))

(declare-fun b!4949278 () Bool)

(assert (=> b!4949278 (= e!3092314 (getSuffix!3079 (tail!9752 lt!2041745) (t!367673 lt!2041496)))))

(declare-fun b!4949279 () Bool)

(assert (=> b!4949279 (= e!3092314 lt!2041745)))

(assert (= (and d!1593644 c!844872) b!4949278))

(assert (= (and d!1593644 (not c!844872)) b!4949279))

(declare-fun m!5973282 () Bool)

(assert (=> d!1593644 m!5973282))

(declare-fun m!5973284 () Bool)

(assert (=> d!1593644 m!5973284))

(assert (=> d!1593644 m!5972688))

(declare-fun m!5973286 () Bool)

(assert (=> b!4949278 m!5973286))

(assert (=> b!4949278 m!5973286))

(declare-fun m!5973288 () Bool)

(assert (=> b!4949278 m!5973288))

(assert (=> b!4948814 d!1593644))

(declare-fun d!1593646 () Bool)

(assert (=> d!1593646 (<= (size!37831 lt!2041496) (size!37831 lt!2041753))))

(declare-fun lt!2042141 () Unit!147830)

(assert (=> d!1593646 (= lt!2042141 (choose!36549 lt!2041496 lt!2041753))))

(assert (=> d!1593646 (isPrefix!5097 lt!2041496 lt!2041753)))

(assert (=> d!1593646 (= (lemmaIsPrefixThenSmallerEqSize!752 lt!2041496 lt!2041753) lt!2042141)))

(declare-fun bs!1181994 () Bool)

(assert (= bs!1181994 d!1593646))

(assert (=> bs!1181994 m!5972688))

(assert (=> bs!1181994 m!5972658))

(declare-fun m!5973292 () Bool)

(assert (=> bs!1181994 m!5973292))

(declare-fun m!5973296 () Bool)

(assert (=> bs!1181994 m!5973296))

(assert (=> b!4948814 d!1593646))

(declare-fun d!1593648 () Bool)

(declare-fun lt!2042142 () Int)

(assert (=> d!1593648 (>= lt!2042142 0)))

(declare-fun e!3092315 () Int)

(assert (=> d!1593648 (= lt!2042142 e!3092315)))

(declare-fun c!844873 () Bool)

(assert (=> d!1593648 (= c!844873 ((_ is Nil!57003) lt!2041496))))

(assert (=> d!1593648 (= (size!37831 lt!2041496) lt!2042142)))

(declare-fun b!4949280 () Bool)

(assert (=> b!4949280 (= e!3092315 0)))

(declare-fun b!4949281 () Bool)

(assert (=> b!4949281 (= e!3092315 (+ 1 (size!37831 (t!367673 lt!2041496))))))

(assert (= (and d!1593648 c!844873) b!4949280))

(assert (= (and d!1593648 (not c!844873)) b!4949281))

(declare-fun m!5973302 () Bool)

(assert (=> b!4949281 m!5973302))

(assert (=> b!4948814 d!1593648))

(declare-fun d!1593650 () Bool)

(declare-fun e!3092316 () Bool)

(assert (=> d!1593650 e!3092316))

(declare-fun res!2111748 () Bool)

(assert (=> d!1593650 (=> (not res!2111748) (not e!3092316))))

(declare-fun lt!2042144 () tuple2!61576)

(assert (=> d!1593650 (= res!2111748 (isBalanced!4160 (c!844685 (_1!34091 lt!2042144))))))

(declare-fun lt!2042143 () tuple2!61580)

(assert (=> d!1593650 (= lt!2042144 (tuple2!61577 (BalanceConc!29451 (_1!34093 lt!2042143)) (BalanceConc!29451 (_2!34093 lt!2042143))))))

(assert (=> d!1593650 (= lt!2042143 (splitAt!414 (c!844685 totalInput!685) (+ 1 testedPSize!70)))))

(assert (=> d!1593650 (isBalanced!4160 (c!844685 totalInput!685))))

(assert (=> d!1593650 (= (splitAt!412 totalInput!685 (+ 1 testedPSize!70)) lt!2042144)))

(declare-fun b!4949282 () Bool)

(declare-fun res!2111747 () Bool)

(assert (=> b!4949282 (=> (not res!2111747) (not e!3092316))))

(assert (=> b!4949282 (= res!2111747 (isBalanced!4160 (c!844685 (_2!34091 lt!2042144))))))

(declare-fun b!4949283 () Bool)

(assert (=> b!4949283 (= e!3092316 (= (tuple2!61575 (list!18179 (_1!34091 lt!2042144)) (list!18179 (_2!34091 lt!2042144))) (splitAtIndex!154 (list!18179 totalInput!685) (+ 1 testedPSize!70))))))

(assert (= (and d!1593650 res!2111748) b!4949282))

(assert (= (and b!4949282 res!2111747) b!4949283))

(declare-fun m!5973304 () Bool)

(assert (=> d!1593650 m!5973304))

(declare-fun m!5973306 () Bool)

(assert (=> d!1593650 m!5973306))

(assert (=> d!1593650 m!5973064))

(declare-fun m!5973308 () Bool)

(assert (=> b!4949282 m!5973308))

(declare-fun m!5973310 () Bool)

(assert (=> b!4949283 m!5973310))

(declare-fun m!5973312 () Bool)

(assert (=> b!4949283 m!5973312))

(assert (=> b!4949283 m!5972520))

(assert (=> b!4949283 m!5972520))

(declare-fun m!5973314 () Bool)

(assert (=> b!4949283 m!5973314))

(assert (=> b!4948814 d!1593650))

(declare-fun d!1593654 () Bool)

(declare-fun lt!2042145 () C!27232)

(assert (=> d!1593654 (= lt!2042145 (apply!13842 (list!18179 totalInput!685) (+ 1 testedPSize!70)))))

(assert (=> d!1593654 (= lt!2042145 (apply!13844 (c!844685 totalInput!685) (+ 1 testedPSize!70)))))

(declare-fun e!3092317 () Bool)

(assert (=> d!1593654 e!3092317))

(declare-fun res!2111749 () Bool)

(assert (=> d!1593654 (=> (not res!2111749) (not e!3092317))))

(assert (=> d!1593654 (= res!2111749 (<= 0 (+ 1 testedPSize!70)))))

(assert (=> d!1593654 (= (apply!13841 totalInput!685 (+ 1 testedPSize!70)) lt!2042145)))

(declare-fun b!4949284 () Bool)

(assert (=> b!4949284 (= e!3092317 (< (+ 1 testedPSize!70) (size!37832 totalInput!685)))))

(assert (= (and d!1593654 res!2111749) b!4949284))

(assert (=> d!1593654 m!5972520))

(assert (=> d!1593654 m!5972520))

(declare-fun m!5973316 () Bool)

(assert (=> d!1593654 m!5973316))

(declare-fun m!5973318 () Bool)

(assert (=> d!1593654 m!5973318))

(assert (=> b!4949284 m!5972468))

(assert (=> b!4948814 d!1593654))

(declare-fun b!4949286 () Bool)

(declare-fun res!2111751 () Bool)

(declare-fun e!3092318 () Bool)

(assert (=> b!4949286 (=> (not res!2111751) (not e!3092318))))

(assert (=> b!4949286 (= res!2111751 (= (head!10617 (++!12478 lt!2041496 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003))) (head!10617 lt!2041745)))))

(declare-fun b!4949288 () Bool)

(declare-fun e!3092320 () Bool)

(assert (=> b!4949288 (= e!3092320 (>= (size!37831 lt!2041745) (size!37831 (++!12478 lt!2041496 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003)))))))

(declare-fun b!4949287 () Bool)

(assert (=> b!4949287 (= e!3092318 (isPrefix!5097 (tail!9752 (++!12478 lt!2041496 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003))) (tail!9752 lt!2041745)))))

(declare-fun b!4949285 () Bool)

(declare-fun e!3092319 () Bool)

(assert (=> b!4949285 (= e!3092319 e!3092318)))

(declare-fun res!2111753 () Bool)

(assert (=> b!4949285 (=> (not res!2111753) (not e!3092318))))

(assert (=> b!4949285 (= res!2111753 (not ((_ is Nil!57003) lt!2041745)))))

(declare-fun d!1593656 () Bool)

(assert (=> d!1593656 e!3092320))

(declare-fun res!2111750 () Bool)

(assert (=> d!1593656 (=> res!2111750 e!3092320)))

(declare-fun lt!2042146 () Bool)

(assert (=> d!1593656 (= res!2111750 (not lt!2042146))))

(assert (=> d!1593656 (= lt!2042146 e!3092319)))

(declare-fun res!2111752 () Bool)

(assert (=> d!1593656 (=> res!2111752 e!3092319)))

(assert (=> d!1593656 (= res!2111752 ((_ is Nil!57003) (++!12478 lt!2041496 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003))))))

(assert (=> d!1593656 (= (isPrefix!5097 (++!12478 lt!2041496 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003)) lt!2041745) lt!2042146)))

(assert (= (and d!1593656 (not res!2111752)) b!4949285))

(assert (= (and b!4949285 res!2111753) b!4949286))

(assert (= (and b!4949286 res!2111751) b!4949287))

(assert (= (and d!1593656 (not res!2111750)) b!4949288))

(assert (=> b!4949286 m!5972690))

(declare-fun m!5973320 () Bool)

(assert (=> b!4949286 m!5973320))

(declare-fun m!5973322 () Bool)

(assert (=> b!4949286 m!5973322))

(assert (=> b!4949288 m!5973284))

(assert (=> b!4949288 m!5972690))

(declare-fun m!5973324 () Bool)

(assert (=> b!4949288 m!5973324))

(assert (=> b!4949287 m!5972690))

(declare-fun m!5973326 () Bool)

(assert (=> b!4949287 m!5973326))

(assert (=> b!4949287 m!5973286))

(assert (=> b!4949287 m!5973326))

(assert (=> b!4949287 m!5973286))

(declare-fun m!5973328 () Bool)

(assert (=> b!4949287 m!5973328))

(assert (=> b!4948814 d!1593656))

(declare-fun d!1593660 () Bool)

(assert (=> d!1593660 (and (= lt!2041777 lt!2041496) (= lt!2041741 lt!2041504))))

(declare-fun lt!2042147 () Unit!147830)

(assert (=> d!1593660 (= lt!2042147 (choose!36547 lt!2041777 lt!2041741 lt!2041496 lt!2041504))))

(assert (=> d!1593660 (= (++!12478 lt!2041777 lt!2041741) (++!12478 lt!2041496 lt!2041504))))

(assert (=> d!1593660 (= (lemmaConcatSameAndSameSizesThenSameLists!735 lt!2041777 lt!2041741 lt!2041496 lt!2041504) lt!2042147)))

(declare-fun bs!1182000 () Bool)

(assert (= bs!1182000 d!1593660))

(declare-fun m!5973330 () Bool)

(assert (=> bs!1182000 m!5973330))

(declare-fun m!5973332 () Bool)

(assert (=> bs!1182000 m!5973332))

(assert (=> bs!1182000 m!5972544))

(assert (=> b!4948814 d!1593660))

(assert (=> b!4948814 d!1593576))

(declare-fun d!1593662 () Bool)

(assert (=> d!1593662 (= (++!12478 (++!12478 lt!2041496 (Cons!57003 lt!2041778 Nil!57003)) lt!2041764) lt!2041762)))

(declare-fun lt!2042148 () Unit!147830)

(assert (=> d!1593662 (= lt!2042148 (choose!36544 lt!2041496 lt!2041778 lt!2041764 lt!2041762))))

(assert (=> d!1593662 (= (++!12478 lt!2041496 (Cons!57003 lt!2041778 lt!2041764)) lt!2041762)))

(assert (=> d!1593662 (= (lemmaMoveElementToOtherListKeepsConcatEq!1436 lt!2041496 lt!2041778 lt!2041764 lt!2041762) lt!2042148)))

(declare-fun bs!1182002 () Bool)

(assert (= bs!1182002 d!1593662))

(assert (=> bs!1182002 m!5972684))

(assert (=> bs!1182002 m!5972684))

(assert (=> bs!1182002 m!5972686))

(declare-fun m!5973336 () Bool)

(assert (=> bs!1182002 m!5973336))

(declare-fun m!5973338 () Bool)

(assert (=> bs!1182002 m!5973338))

(assert (=> b!4948814 d!1593662))

(declare-fun d!1593666 () Bool)

(assert (=> d!1593666 (= (head!10617 (drop!2298 lt!2041758 (+ 1 testedPSize!70))) (apply!13842 lt!2041758 (+ 1 testedPSize!70)))))

(declare-fun lt!2042149 () Unit!147830)

(assert (=> d!1593666 (= lt!2042149 (choose!36548 lt!2041758 (+ 1 testedPSize!70)))))

(declare-fun e!3092321 () Bool)

(assert (=> d!1593666 e!3092321))

(declare-fun res!2111754 () Bool)

(assert (=> d!1593666 (=> (not res!2111754) (not e!3092321))))

(assert (=> d!1593666 (= res!2111754 (>= (+ 1 testedPSize!70) 0))))

(assert (=> d!1593666 (= (lemmaDropApply!1352 lt!2041758 (+ 1 testedPSize!70)) lt!2042149)))

(declare-fun b!4949289 () Bool)

(assert (=> b!4949289 (= e!3092321 (< (+ 1 testedPSize!70) (size!37831 lt!2041758)))))

(assert (= (and d!1593666 res!2111754) b!4949289))

(assert (=> d!1593666 m!5972666))

(assert (=> d!1593666 m!5972666))

(assert (=> d!1593666 m!5972680))

(assert (=> d!1593666 m!5972696))

(declare-fun m!5973340 () Bool)

(assert (=> d!1593666 m!5973340))

(assert (=> b!4949289 m!5973230))

(assert (=> b!4948814 d!1593666))

(declare-fun d!1593668 () Bool)

(assert (=> d!1593668 (= (list!18179 (_2!34091 lt!2041775)) (list!18181 (c!844685 (_2!34091 lt!2041775))))))

(declare-fun bs!1182003 () Bool)

(assert (= bs!1182003 d!1593668))

(declare-fun m!5973342 () Bool)

(assert (=> bs!1182003 m!5973342))

(assert (=> b!4948814 d!1593668))

(declare-fun d!1593670 () Bool)

(assert (=> d!1593670 (= (tail!9752 lt!2041504) (t!367673 lt!2041504))))

(assert (=> b!4948814 d!1593670))

(declare-fun b!4949290 () Bool)

(declare-fun e!3092322 () List!57127)

(assert (=> b!4949290 (= e!3092322 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003))))

(declare-fun lt!2042150 () List!57127)

(declare-fun b!4949293 () Bool)

(declare-fun e!3092323 () Bool)

(assert (=> b!4949293 (= e!3092323 (or (not (= (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003) Nil!57003)) (= lt!2042150 lt!2041496)))))

(declare-fun b!4949291 () Bool)

(assert (=> b!4949291 (= e!3092322 (Cons!57003 (h!63451 lt!2041496) (++!12478 (t!367673 lt!2041496) (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003))))))

(declare-fun d!1593672 () Bool)

(assert (=> d!1593672 e!3092323))

(declare-fun res!2111755 () Bool)

(assert (=> d!1593672 (=> (not res!2111755) (not e!3092323))))

(assert (=> d!1593672 (= res!2111755 (= (content!10157 lt!2042150) ((_ map or) (content!10157 lt!2041496) (content!10157 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003)))))))

(assert (=> d!1593672 (= lt!2042150 e!3092322)))

(declare-fun c!844874 () Bool)

(assert (=> d!1593672 (= c!844874 ((_ is Nil!57003) lt!2041496))))

(assert (=> d!1593672 (= (++!12478 lt!2041496 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003)) lt!2042150)))

(declare-fun b!4949292 () Bool)

(declare-fun res!2111756 () Bool)

(assert (=> b!4949292 (=> (not res!2111756) (not e!3092323))))

(assert (=> b!4949292 (= res!2111756 (= (size!37831 lt!2042150) (+ (size!37831 lt!2041496) (size!37831 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041745 lt!2041496)) Nil!57003)))))))

(assert (= (and d!1593672 c!844874) b!4949290))

(assert (= (and d!1593672 (not c!844874)) b!4949291))

(assert (= (and d!1593672 res!2111755) b!4949292))

(assert (= (and b!4949292 res!2111756) b!4949293))

(declare-fun m!5973344 () Bool)

(assert (=> b!4949291 m!5973344))

(declare-fun m!5973346 () Bool)

(assert (=> d!1593672 m!5973346))

(assert (=> d!1593672 m!5972946))

(declare-fun m!5973350 () Bool)

(assert (=> d!1593672 m!5973350))

(declare-fun m!5973352 () Bool)

(assert (=> b!4949292 m!5973352))

(assert (=> b!4949292 m!5972688))

(declare-fun m!5973354 () Bool)

(assert (=> b!4949292 m!5973354))

(assert (=> b!4948814 d!1593672))

(assert (=> b!4948814 d!1593588))

(declare-fun d!1593676 () Bool)

(declare-fun lt!2042151 () Int)

(assert (=> d!1593676 (>= lt!2042151 0)))

(declare-fun e!3092325 () Int)

(assert (=> d!1593676 (= lt!2042151 e!3092325)))

(declare-fun c!844875 () Bool)

(assert (=> d!1593676 (= c!844875 ((_ is Nil!57003) lt!2041973))))

(assert (=> d!1593676 (= (size!37831 lt!2041973) lt!2042151)))

(declare-fun b!4949294 () Bool)

(assert (=> b!4949294 (= e!3092325 0)))

(declare-fun b!4949296 () Bool)

(assert (=> b!4949296 (= e!3092325 (+ 1 (size!37831 (t!367673 lt!2041973))))))

(assert (= (and d!1593676 c!844875) b!4949294))

(assert (= (and d!1593676 (not c!844875)) b!4949296))

(declare-fun m!5973356 () Bool)

(assert (=> b!4949296 m!5973356))

(assert (=> b!4948998 d!1593676))

(assert (=> b!4948998 d!1593432))

(declare-fun d!1593678 () Bool)

(declare-fun lt!2042152 () Int)

(assert (=> d!1593678 (>= lt!2042152 0)))

(declare-fun e!3092326 () Int)

(assert (=> d!1593678 (= lt!2042152 e!3092326)))

(declare-fun c!844877 () Bool)

(assert (=> d!1593678 (= c!844877 ((_ is Nil!57003) (Cons!57003 (head!10617 lt!2041497) Nil!57003)))))

(assert (=> d!1593678 (= (size!37831 (Cons!57003 (head!10617 lt!2041497) Nil!57003)) lt!2042152)))

(declare-fun b!4949298 () Bool)

(assert (=> b!4949298 (= e!3092326 0)))

(declare-fun b!4949299 () Bool)

(assert (=> b!4949299 (= e!3092326 (+ 1 (size!37831 (t!367673 (Cons!57003 (head!10617 lt!2041497) Nil!57003)))))))

(assert (= (and d!1593678 c!844877) b!4949298))

(assert (= (and d!1593678 (not c!844877)) b!4949299))

(declare-fun m!5973360 () Bool)

(assert (=> b!4949299 m!5973360))

(assert (=> b!4948998 d!1593678))

(declare-fun d!1593680 () Bool)

(assert (=> d!1593680 (= (inv!74288 (xs!18336 (c!844685 totalInput!685))) (<= (size!37831 (innerList!15098 (xs!18336 (c!844685 totalInput!685)))) 2147483647))))

(declare-fun bs!1182005 () Bool)

(assert (= bs!1182005 d!1593680))

(declare-fun m!5973372 () Bool)

(assert (=> bs!1182005 m!5973372))

(assert (=> b!4949184 d!1593680))

(declare-fun d!1593688 () Bool)

(assert (=> d!1593688 (= (list!18179 (_1!34091 lt!2042022)) (list!18181 (c!844685 (_1!34091 lt!2042022))))))

(declare-fun bs!1182006 () Bool)

(assert (= bs!1182006 d!1593688))

(declare-fun m!5973374 () Bool)

(assert (=> bs!1182006 m!5973374))

(assert (=> b!4949130 d!1593688))

(declare-fun d!1593690 () Bool)

(assert (=> d!1593690 (= (list!18179 (_2!34091 lt!2042022)) (list!18181 (c!844685 (_2!34091 lt!2042022))))))

(declare-fun bs!1182007 () Bool)

(assert (= bs!1182007 d!1593690))

(declare-fun m!5973376 () Bool)

(assert (=> bs!1182007 m!5973376))

(assert (=> b!4949130 d!1593690))

(declare-fun d!1593692 () Bool)

(declare-fun e!3092339 () Bool)

(assert (=> d!1593692 e!3092339))

(declare-fun res!2111766 () Bool)

(assert (=> d!1593692 (=> (not res!2111766) (not e!3092339))))

(declare-fun lt!2042162 () tuple2!61574)

(assert (=> d!1593692 (= res!2111766 (= (++!12478 (_1!34090 lt!2042162) (_2!34090 lt!2042162)) (list!18179 totalInput!685)))))

(declare-fun e!3092340 () tuple2!61574)

(assert (=> d!1593692 (= lt!2042162 e!3092340)))

(declare-fun c!844884 () Bool)

(assert (=> d!1593692 (= c!844884 ((_ is Nil!57003) (list!18179 totalInput!685)))))

(assert (=> d!1593692 (= (splitAtIndex!154 (list!18179 totalInput!685) testedPSize!70) lt!2042162)))

(declare-fun b!4949320 () Bool)

(declare-fun e!3092338 () tuple2!61574)

(assert (=> b!4949320 (= e!3092338 (tuple2!61575 Nil!57003 (list!18179 totalInput!685)))))

(declare-fun b!4949321 () Bool)

(declare-fun res!2111765 () Bool)

(assert (=> b!4949321 (=> (not res!2111765) (not e!3092339))))

(declare-fun take!593 (List!57127 Int) List!57127)

(assert (=> b!4949321 (= res!2111765 (= (_1!34090 lt!2042162) (take!593 (list!18179 totalInput!685) testedPSize!70)))))

(declare-fun b!4949322 () Bool)

(assert (=> b!4949322 (= e!3092340 e!3092338)))

(declare-fun c!844885 () Bool)

(assert (=> b!4949322 (= c!844885 (<= testedPSize!70 0))))

(declare-fun b!4949323 () Bool)

(assert (=> b!4949323 (= e!3092339 (= (_2!34090 lt!2042162) (drop!2298 (list!18179 totalInput!685) testedPSize!70)))))

(declare-fun b!4949324 () Bool)

(assert (=> b!4949324 (= e!3092340 (tuple2!61575 Nil!57003 Nil!57003))))

(declare-fun b!4949325 () Bool)

(declare-fun lt!2042161 () tuple2!61574)

(assert (=> b!4949325 (= lt!2042161 (splitAtIndex!154 (t!367673 (list!18179 totalInput!685)) (- testedPSize!70 1)))))

(assert (=> b!4949325 (= e!3092338 (tuple2!61575 (Cons!57003 (h!63451 (list!18179 totalInput!685)) (_1!34090 lt!2042161)) (_2!34090 lt!2042161)))))

(assert (= (and d!1593692 c!844884) b!4949324))

(assert (= (and d!1593692 (not c!844884)) b!4949322))

(assert (= (and b!4949322 c!844885) b!4949320))

(assert (= (and b!4949322 (not c!844885)) b!4949325))

(assert (= (and d!1593692 res!2111766) b!4949321))

(assert (= (and b!4949321 res!2111765) b!4949323))

(declare-fun m!5973396 () Bool)

(assert (=> d!1593692 m!5973396))

(assert (=> b!4949321 m!5972520))

(declare-fun m!5973398 () Bool)

(assert (=> b!4949321 m!5973398))

(assert (=> b!4949323 m!5972520))

(declare-fun m!5973400 () Bool)

(assert (=> b!4949323 m!5973400))

(declare-fun m!5973402 () Bool)

(assert (=> b!4949325 m!5973402))

(assert (=> b!4949130 d!1593692))

(assert (=> b!4949130 d!1593576))

(declare-fun bs!1182009 () Bool)

(declare-fun d!1593702 () Bool)

(assert (= bs!1182009 (and d!1593702 d!1593486)))

(declare-fun lambda!246857 () Int)

(assert (=> bs!1182009 (not (= lambda!246857 lambda!246827))))

(declare-fun bs!1182010 () Bool)

(assert (= bs!1182010 (and d!1593702 b!4948968)))

(assert (=> bs!1182010 (not (= lambda!246857 lambda!246828))))

(declare-fun bs!1182011 () Bool)

(assert (= bs!1182011 (and d!1593702 b!4948969)))

(assert (=> bs!1182011 (not (= lambda!246857 lambda!246829))))

(declare-fun bs!1182012 () Bool)

(assert (= bs!1182012 (and d!1593702 d!1593518)))

(assert (=> bs!1182012 (not (= lambda!246857 lambda!246847))))

(assert (=> d!1593702 true))

(declare-fun order!26009 () Int)

(declare-fun dynLambda!23041 (Int Int) Int)

(assert (=> d!1593702 (< (dynLambda!23041 order!26009 lambda!246827) (dynLambda!23041 order!26009 lambda!246857))))

(assert (=> d!1593702 (exists!1345 lt!2041928 lambda!246857)))

(declare-fun lt!2042169 () Unit!147830)

(declare-fun choose!36555 (List!57130 Int) Unit!147830)

(assert (=> d!1593702 (= lt!2042169 (choose!36555 lt!2041928 lambda!246827))))

(declare-fun forall!13280 (List!57130 Int) Bool)

(assert (=> d!1593702 (not (forall!13280 lt!2041928 lambda!246827))))

(assert (=> d!1593702 (= (lemmaNotForallThenExists!242 lt!2041928 lambda!246827) lt!2042169)))

(declare-fun bs!1182013 () Bool)

(assert (= bs!1182013 d!1593702))

(declare-fun m!5973414 () Bool)

(assert (=> bs!1182013 m!5973414))

(declare-fun m!5973416 () Bool)

(assert (=> bs!1182013 m!5973416))

(declare-fun m!5973418 () Bool)

(assert (=> bs!1182013 m!5973418))

(assert (=> b!4948968 d!1593702))

(declare-fun b!4949343 () Bool)

(declare-fun res!2111780 () Bool)

(declare-fun e!3092354 () Bool)

(assert (=> b!4949343 (=> (not res!2111780) (not e!3092354))))

(assert (=> b!4949343 (= res!2111780 (= (head!10617 (tail!9752 testedP!110)) (head!10617 (tail!9752 lt!2041510))))))

(declare-fun b!4949345 () Bool)

(declare-fun e!3092356 () Bool)

(assert (=> b!4949345 (= e!3092356 (>= (size!37831 (tail!9752 lt!2041510)) (size!37831 (tail!9752 testedP!110))))))

(declare-fun b!4949344 () Bool)

(assert (=> b!4949344 (= e!3092354 (isPrefix!5097 (tail!9752 (tail!9752 testedP!110)) (tail!9752 (tail!9752 lt!2041510))))))

(declare-fun b!4949342 () Bool)

(declare-fun e!3092355 () Bool)

(assert (=> b!4949342 (= e!3092355 e!3092354)))

(declare-fun res!2111782 () Bool)

(assert (=> b!4949342 (=> (not res!2111782) (not e!3092354))))

(assert (=> b!4949342 (= res!2111782 (not ((_ is Nil!57003) (tail!9752 lt!2041510))))))

(declare-fun d!1593708 () Bool)

(assert (=> d!1593708 e!3092356))

(declare-fun res!2111779 () Bool)

(assert (=> d!1593708 (=> res!2111779 e!3092356)))

(declare-fun lt!2042171 () Bool)

(assert (=> d!1593708 (= res!2111779 (not lt!2042171))))

(assert (=> d!1593708 (= lt!2042171 e!3092355)))

(declare-fun res!2111781 () Bool)

(assert (=> d!1593708 (=> res!2111781 e!3092355)))

(assert (=> d!1593708 (= res!2111781 ((_ is Nil!57003) (tail!9752 testedP!110)))))

(assert (=> d!1593708 (= (isPrefix!5097 (tail!9752 testedP!110) (tail!9752 lt!2041510)) lt!2042171)))

(assert (= (and d!1593708 (not res!2111781)) b!4949342))

(assert (= (and b!4949342 res!2111782) b!4949343))

(assert (= (and b!4949343 res!2111780) b!4949344))

(assert (= (and d!1593708 (not res!2111779)) b!4949345))

(assert (=> b!4949343 m!5972558))

(declare-fun m!5973432 () Bool)

(assert (=> b!4949343 m!5973432))

(assert (=> b!4949343 m!5972560))

(assert (=> b!4949343 m!5973140))

(assert (=> b!4949345 m!5972560))

(assert (=> b!4949345 m!5973142))

(assert (=> b!4949345 m!5972558))

(declare-fun m!5973434 () Bool)

(assert (=> b!4949345 m!5973434))

(assert (=> b!4949344 m!5972558))

(declare-fun m!5973436 () Bool)

(assert (=> b!4949344 m!5973436))

(assert (=> b!4949344 m!5972560))

(assert (=> b!4949344 m!5973144))

(assert (=> b!4949344 m!5973436))

(assert (=> b!4949344 m!5973144))

(declare-fun m!5973438 () Bool)

(assert (=> b!4949344 m!5973438))

(assert (=> b!4948748 d!1593708))

(declare-fun d!1593712 () Bool)

(assert (=> d!1593712 (= (tail!9752 testedP!110) (t!367673 testedP!110))))

(assert (=> b!4948748 d!1593712))

(assert (=> b!4948748 d!1593604))

(assert (=> b!4949022 d!1593582))

(declare-fun d!1593714 () Bool)

(declare-fun lt!2042173 () Int)

(assert (=> d!1593714 (>= lt!2042173 0)))

(declare-fun e!3092358 () Int)

(assert (=> d!1593714 (= lt!2042173 e!3092358)))

(declare-fun c!844888 () Bool)

(assert (=> d!1593714 (= c!844888 ((_ is Nil!57003) (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))))))

(assert (=> d!1593714 (= (size!37831 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))) lt!2042173)))

(declare-fun b!4949348 () Bool)

(assert (=> b!4949348 (= e!3092358 0)))

(declare-fun b!4949349 () Bool)

(assert (=> b!4949349 (= e!3092358 (+ 1 (size!37831 (t!367673 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))))))))

(assert (= (and d!1593714 c!844888) b!4949348))

(assert (= (and d!1593714 (not c!844888)) b!4949349))

(declare-fun m!5973444 () Bool)

(assert (=> b!4949349 m!5973444))

(assert (=> b!4949022 d!1593714))

(declare-fun d!1593716 () Bool)

(declare-fun lt!2042205 () Bool)

(assert (=> d!1593716 (= lt!2042205 (select (content!10157 lt!2041510) lt!2041988))))

(declare-fun e!3092372 () Bool)

(assert (=> d!1593716 (= lt!2042205 e!3092372)))

(declare-fun res!2111790 () Bool)

(assert (=> d!1593716 (=> (not res!2111790) (not e!3092372))))

(assert (=> d!1593716 (= res!2111790 ((_ is Cons!57003) lt!2041510))))

(assert (=> d!1593716 (= (contains!19498 lt!2041510 lt!2041988) lt!2042205)))

(declare-fun b!4949370 () Bool)

(declare-fun e!3092373 () Bool)

(assert (=> b!4949370 (= e!3092372 e!3092373)))

(declare-fun res!2111789 () Bool)

(assert (=> b!4949370 (=> res!2111789 e!3092373)))

(assert (=> b!4949370 (= res!2111789 (= (h!63451 lt!2041510) lt!2041988))))

(declare-fun b!4949371 () Bool)

(assert (=> b!4949371 (= e!3092373 (contains!19498 (t!367673 lt!2041510) lt!2041988))))

(assert (= (and d!1593716 res!2111790) b!4949370))

(assert (= (and b!4949370 (not res!2111789)) b!4949371))

(assert (=> d!1593716 m!5973038))

(declare-fun m!5973456 () Bool)

(assert (=> d!1593716 m!5973456))

(declare-fun m!5973458 () Bool)

(assert (=> b!4949371 m!5973458))

(assert (=> d!1593542 d!1593716))

(declare-fun d!1593726 () Bool)

(assert (=> d!1593726 (= (isEmpty!30672 (_1!34090 lt!2042089)) ((_ is Nil!57003) (_1!34090 lt!2042089)))))

(assert (=> b!4949170 d!1593726))

(declare-fun d!1593728 () Bool)

(assert (=> d!1593728 (= (ite c!844718 lt!2041770 lt!2041748) lt!2041496)))

(declare-fun lt!2042206 () Unit!147830)

(assert (=> d!1593728 (= lt!2042206 (choose!36538 (ite c!844718 lt!2041770 lt!2041748) lt!2041496 e!3092043))))

(assert (=> d!1593728 (isPrefix!5097 (ite c!844718 lt!2041770 lt!2041748) e!3092043)))

(assert (=> d!1593728 (= (lemmaIsPrefixSameLengthThenSameList!1189 (ite c!844718 lt!2041770 lt!2041748) lt!2041496 e!3092043) lt!2042206)))

(declare-fun bs!1182016 () Bool)

(assert (= bs!1182016 d!1593728))

(declare-fun m!5973460 () Bool)

(assert (=> bs!1182016 m!5973460))

(declare-fun m!5973462 () Bool)

(assert (=> bs!1182016 m!5973462))

(assert (=> bm!345463 d!1593728))

(declare-fun b!4949372 () Bool)

(declare-fun res!2111792 () Bool)

(declare-fun e!3092374 () Bool)

(assert (=> b!4949372 (=> (not res!2111792) (not e!3092374))))

(assert (=> b!4949372 (= res!2111792 (isBalanced!4160 (right!41919 (c!844685 (_1!34091 lt!2042022)))))))

(declare-fun b!4949373 () Bool)

(assert (=> b!4949373 (= e!3092374 (not (isEmpty!30673 (right!41919 (c!844685 (_1!34091 lt!2042022))))))))

(declare-fun b!4949374 () Bool)

(declare-fun res!2111795 () Bool)

(assert (=> b!4949374 (=> (not res!2111795) (not e!3092374))))

(assert (=> b!4949374 (= res!2111795 (isBalanced!4160 (left!41589 (c!844685 (_1!34091 lt!2042022)))))))

(declare-fun b!4949375 () Bool)

(declare-fun e!3092375 () Bool)

(assert (=> b!4949375 (= e!3092375 e!3092374)))

(declare-fun res!2111794 () Bool)

(assert (=> b!4949375 (=> (not res!2111794) (not e!3092374))))

(assert (=> b!4949375 (= res!2111794 (<= (- 1) (- (height!2005 (left!41589 (c!844685 (_1!34091 lt!2042022)))) (height!2005 (right!41919 (c!844685 (_1!34091 lt!2042022)))))))))

(declare-fun d!1593730 () Bool)

(declare-fun res!2111796 () Bool)

(assert (=> d!1593730 (=> res!2111796 e!3092375)))

(assert (=> d!1593730 (= res!2111796 (not ((_ is Node!15010) (c!844685 (_1!34091 lt!2042022)))))))

(assert (=> d!1593730 (= (isBalanced!4160 (c!844685 (_1!34091 lt!2042022))) e!3092375)))

(declare-fun b!4949376 () Bool)

(declare-fun res!2111793 () Bool)

(assert (=> b!4949376 (=> (not res!2111793) (not e!3092374))))

(assert (=> b!4949376 (= res!2111793 (not (isEmpty!30673 (left!41589 (c!844685 (_1!34091 lt!2042022))))))))

(declare-fun b!4949377 () Bool)

(declare-fun res!2111791 () Bool)

(assert (=> b!4949377 (=> (not res!2111791) (not e!3092374))))

(assert (=> b!4949377 (= res!2111791 (<= (- (height!2005 (left!41589 (c!844685 (_1!34091 lt!2042022)))) (height!2005 (right!41919 (c!844685 (_1!34091 lt!2042022))))) 1))))

(assert (= (and d!1593730 (not res!2111796)) b!4949375))

(assert (= (and b!4949375 res!2111794) b!4949377))

(assert (= (and b!4949377 res!2111791) b!4949374))

(assert (= (and b!4949374 res!2111795) b!4949372))

(assert (= (and b!4949372 res!2111792) b!4949376))

(assert (= (and b!4949376 res!2111793) b!4949373))

(declare-fun m!5973464 () Bool)

(assert (=> b!4949377 m!5973464))

(declare-fun m!5973466 () Bool)

(assert (=> b!4949377 m!5973466))

(declare-fun m!5973468 () Bool)

(assert (=> b!4949376 m!5973468))

(declare-fun m!5973470 () Bool)

(assert (=> b!4949372 m!5973470))

(declare-fun m!5973472 () Bool)

(assert (=> b!4949373 m!5973472))

(declare-fun m!5973474 () Bool)

(assert (=> b!4949374 m!5973474))

(assert (=> b!4949375 m!5973464))

(assert (=> b!4949375 m!5973466))

(assert (=> d!1593596 d!1593730))

(declare-fun b!4949506 () Bool)

(declare-fun lt!2042292 () tuple2!61574)

(declare-fun call!345580 () tuple2!61574)

(assert (=> b!4949506 (= lt!2042292 call!345580)))

(declare-fun e!3092448 () tuple2!61574)

(declare-fun call!345581 () List!57127)

(assert (=> b!4949506 (= e!3092448 (tuple2!61575 call!345581 (_2!34090 lt!2042292)))))

(declare-fun b!4949507 () Bool)

(declare-fun e!3092450 () tuple2!61574)

(assert (=> b!4949507 (= e!3092450 e!3092448)))

(declare-fun c!844953 () Bool)

(declare-fun call!345583 () Int)

(assert (=> b!4949507 (= c!844953 (< testedPSize!70 call!345583))))

(declare-fun b!4949508 () Bool)

(declare-fun e!3092446 () tuple2!61580)

(declare-fun e!3092443 () tuple2!61580)

(assert (=> b!4949508 (= e!3092446 e!3092443)))

(declare-fun c!844954 () Bool)

(assert (=> b!4949508 (= c!844954 (= testedPSize!70 (csize!30251 (c!844685 totalInput!685))))))

(declare-fun lt!2042289 () List!57127)

(declare-fun bm!345573 () Bool)

(declare-fun lt!2042288 () List!57127)

(declare-fun lt!2042296 () tuple2!61574)

(assert (=> bm!345573 (= call!345581 (++!12478 (ite c!844953 (_2!34090 lt!2042296) lt!2042288) (ite c!844953 lt!2042289 (_1!34090 lt!2042292))))))

(declare-fun lt!2042291 () List!57127)

(declare-fun bm!345574 () Bool)

(declare-fun c!844955 () Bool)

(assert (=> bm!345574 (= call!345583 (size!37831 (ite c!844955 lt!2042291 lt!2042288)))))

(declare-fun lt!2042287 () tuple2!61580)

(declare-fun e!3092451 () Bool)

(declare-fun b!4949509 () Bool)

(assert (=> b!4949509 (= e!3092451 (= (tuple2!61575 (list!18181 (_1!34093 lt!2042287)) (list!18181 (_2!34093 lt!2042287))) (splitAtIndex!154 (list!18181 (c!844685 totalInput!685)) testedPSize!70)))))

(declare-fun bm!345575 () Bool)

(declare-fun c!844960 () Bool)

(declare-fun c!844951 () Bool)

(assert (=> bm!345575 (= c!844960 c!844951)))

(declare-fun call!345578 () tuple2!61580)

(declare-fun e!3092444 () Int)

(assert (=> bm!345575 (= call!345578 (splitAt!414 (ite c!844951 (left!41589 (c!844685 totalInput!685)) (right!41919 (c!844685 totalInput!685))) e!3092444))))

(declare-fun d!1593732 () Bool)

(assert (=> d!1593732 e!3092451))

(declare-fun res!2111830 () Bool)

(assert (=> d!1593732 (=> (not res!2111830) (not e!3092451))))

(assert (=> d!1593732 (= res!2111830 (isBalanced!4160 (_1!34093 lt!2042287)))))

(declare-fun e!3092449 () tuple2!61580)

(assert (=> d!1593732 (= lt!2042287 e!3092449)))

(declare-fun c!844950 () Bool)

(assert (=> d!1593732 (= c!844950 ((_ is Empty!15010) (c!844685 totalInput!685)))))

(assert (=> d!1593732 (isBalanced!4160 (c!844685 totalInput!685))))

(assert (=> d!1593732 (= (splitAt!414 (c!844685 totalInput!685) testedPSize!70) lt!2042287)))

(declare-fun b!4949510 () Bool)

(declare-fun res!2111829 () Bool)

(assert (=> b!4949510 (=> (not res!2111829) (not e!3092451))))

(assert (=> b!4949510 (= res!2111829 (isBalanced!4160 (_2!34093 lt!2042287)))))

(declare-fun bm!345576 () Bool)

(declare-fun c!844957 () Bool)

(assert (=> bm!345576 (= c!844957 c!844955)))

(declare-fun e!3092447 () List!57127)

(declare-fun call!345579 () tuple2!61574)

(declare-fun e!3092442 () Int)

(assert (=> bm!345576 (= call!345579 (splitAtIndex!154 e!3092447 (ite c!844955 testedPSize!70 e!3092442)))))

(declare-fun b!4949511 () Bool)

(assert (=> b!4949511 (= e!3092444 (- testedPSize!70 (size!37834 (left!41589 (c!844685 totalInput!685)))))))

(declare-fun b!4949512 () Bool)

(declare-fun e!3092445 () tuple2!61580)

(declare-fun e!3092440 () tuple2!61580)

(assert (=> b!4949512 (= e!3092445 e!3092440)))

(assert (=> b!4949512 (= c!844951 (< testedPSize!70 (size!37834 (left!41589 (c!844685 totalInput!685)))))))

(declare-fun b!4949513 () Bool)

(assert (=> b!4949513 (= e!3092442 testedPSize!70)))

(declare-fun b!4949514 () Bool)

(declare-fun lt!2042290 () tuple2!61580)

(assert (=> b!4949514 (= lt!2042290 call!345578)))

(declare-fun call!345582 () Conc!15010)

(assert (=> b!4949514 (= e!3092440 (tuple2!61581 call!345582 (_2!34093 lt!2042290)))))

(declare-fun b!4949515 () Bool)

(assert (=> b!4949515 (= e!3092442 (- testedPSize!70 call!345583))))

(declare-fun b!4949516 () Bool)

(assert (=> b!4949516 (= e!3092446 (tuple2!61581 Empty!15010 (c!844685 totalInput!685)))))

(declare-fun b!4949517 () Bool)

(assert (=> b!4949517 (= e!3092447 (ite c!844953 lt!2042288 lt!2042289))))

(declare-fun b!4949518 () Bool)

(assert (=> b!4949518 (= lt!2042296 call!345580)))

(assert (=> b!4949518 (= e!3092448 (tuple2!61575 (_1!34090 lt!2042296) call!345581))))

(declare-fun b!4949519 () Bool)

(declare-fun e!3092441 () tuple2!61580)

(assert (=> b!4949519 (= e!3092449 e!3092441)))

(assert (=> b!4949519 (= c!844955 ((_ is Leaf!24948) (c!844685 totalInput!685)))))

(declare-fun b!4949520 () Bool)

(declare-fun list!18182 (IArray!30081) List!57127)

(assert (=> b!4949520 (= e!3092447 (list!18182 (xs!18336 (c!844685 totalInput!685))))))

(declare-fun b!4949521 () Bool)

(assert (=> b!4949521 (= e!3092443 (tuple2!61581 (c!844685 totalInput!685) Empty!15010))))

(declare-fun bm!345577 () Bool)

(declare-fun c!844952 () Bool)

(assert (=> bm!345577 (= c!844952 c!844953)))

(assert (=> bm!345577 (= call!345580 call!345579)))

(declare-fun b!4949522 () Bool)

(assert (=> b!4949522 (= e!3092445 (tuple2!61581 (left!41589 (c!844685 totalInput!685)) (right!41919 (c!844685 totalInput!685))))))

(declare-fun b!4949523 () Bool)

(declare-fun c!844959 () Bool)

(assert (=> b!4949523 (= c!844959 (<= testedPSize!70 0))))

(assert (=> b!4949523 (= e!3092441 e!3092446)))

(declare-fun b!4949524 () Bool)

(declare-fun c!844956 () Bool)

(assert (=> b!4949524 (= c!844956 (= (size!37834 (left!41589 (c!844685 totalInput!685))) testedPSize!70))))

(declare-fun lt!2042286 () Unit!147830)

(declare-fun lt!2042295 () Unit!147830)

(assert (=> b!4949524 (= lt!2042286 lt!2042295)))

(assert (=> b!4949524 (= (splitAtIndex!154 (++!12478 lt!2042288 lt!2042289) testedPSize!70) e!3092450)))

(declare-fun c!844958 () Bool)

(assert (=> b!4949524 (= c!844958 (= call!345583 testedPSize!70))))

(declare-fun splitAtLemma!43 (List!57127 List!57127 Int) Unit!147830)

(assert (=> b!4949524 (= lt!2042295 (splitAtLemma!43 lt!2042288 lt!2042289 testedPSize!70))))

(assert (=> b!4949524 (= lt!2042289 (list!18181 (right!41919 (c!844685 totalInput!685))))))

(assert (=> b!4949524 (= lt!2042288 (list!18181 (left!41589 (c!844685 totalInput!685))))))

(assert (=> b!4949524 (= e!3092441 e!3092445)))

(declare-fun bm!345578 () Bool)

(declare-fun lt!2042293 () tuple2!61580)

(declare-fun ++!12479 (Conc!15010 Conc!15010) Conc!15010)

(assert (=> bm!345578 (= call!345582 (++!12479 (ite c!844951 (_2!34093 lt!2042293) (left!41589 (c!844685 totalInput!685))) (ite c!844951 (right!41919 (c!844685 totalInput!685)) (_1!34093 lt!2042290))))))

(declare-fun b!4949525 () Bool)

(declare-fun lt!2042297 () Unit!147830)

(declare-fun lt!2042294 () Unit!147830)

(assert (=> b!4949525 (= lt!2042297 lt!2042294)))

(declare-fun slice!802 (List!57127 Int Int) List!57127)

(assert (=> b!4949525 (= (drop!2298 lt!2042291 testedPSize!70) (slice!802 lt!2042291 testedPSize!70 call!345583))))

(declare-fun dropLemma!43 (List!57127 Int) Unit!147830)

(assert (=> b!4949525 (= lt!2042294 (dropLemma!43 lt!2042291 testedPSize!70))))

(assert (=> b!4949525 (= lt!2042291 (list!18182 (xs!18336 (c!844685 totalInput!685))))))

(declare-fun lt!2042285 () tuple2!61574)

(assert (=> b!4949525 (= lt!2042285 call!345579)))

(declare-fun slice!803 (IArray!30081 Int Int) IArray!30081)

(assert (=> b!4949525 (= e!3092443 (tuple2!61581 (Leaf!24948 (slice!803 (xs!18336 (c!844685 totalInput!685)) 0 testedPSize!70) testedPSize!70) (Leaf!24948 (slice!803 (xs!18336 (c!844685 totalInput!685)) testedPSize!70 (csize!30251 (c!844685 totalInput!685))) (- (csize!30251 (c!844685 totalInput!685)) testedPSize!70))))))

(declare-fun b!4949526 () Bool)

(assert (=> b!4949526 (= e!3092444 testedPSize!70)))

(declare-fun b!4949527 () Bool)

(assert (=> b!4949527 (= e!3092450 (tuple2!61575 lt!2042288 lt!2042289))))

(declare-fun b!4949528 () Bool)

(assert (=> b!4949528 (= e!3092449 (tuple2!61581 (c!844685 totalInput!685) (c!844685 totalInput!685)))))

(declare-fun b!4949529 () Bool)

(assert (=> b!4949529 (= lt!2042293 call!345578)))

(assert (=> b!4949529 (= e!3092440 (tuple2!61581 (_1!34093 lt!2042293) call!345582))))

(assert (= (and d!1593732 c!844950) b!4949528))

(assert (= (and d!1593732 (not c!844950)) b!4949519))

(assert (= (and b!4949519 c!844955) b!4949523))

(assert (= (and b!4949519 (not c!844955)) b!4949524))

(assert (= (and b!4949523 c!844959) b!4949516))

(assert (= (and b!4949523 (not c!844959)) b!4949508))

(assert (= (and b!4949508 c!844954) b!4949521))

(assert (= (and b!4949508 (not c!844954)) b!4949525))

(assert (= (and b!4949524 c!844958) b!4949527))

(assert (= (and b!4949524 (not c!844958)) b!4949507))

(assert (= (and b!4949507 c!844953) b!4949518))

(assert (= (and b!4949507 (not c!844953)) b!4949506))

(assert (= (or b!4949518 b!4949506) bm!345573))

(assert (= (or b!4949518 b!4949506) bm!345577))

(assert (= (and bm!345577 c!844952) b!4949513))

(assert (= (and bm!345577 (not c!844952)) b!4949515))

(assert (= (and b!4949524 c!844956) b!4949522))

(assert (= (and b!4949524 (not c!844956)) b!4949512))

(assert (= (and b!4949512 c!844951) b!4949529))

(assert (= (and b!4949512 (not c!844951)) b!4949514))

(assert (= (or b!4949529 b!4949514) bm!345578))

(assert (= (or b!4949529 b!4949514) bm!345575))

(assert (= (and bm!345575 c!844960) b!4949526))

(assert (= (and bm!345575 (not c!844960)) b!4949511))

(assert (= (or b!4949525 b!4949507 b!4949515 b!4949524) bm!345574))

(assert (= (or b!4949525 bm!345577) bm!345576))

(assert (= (and bm!345576 c!844957) b!4949520))

(assert (= (and bm!345576 (not c!844957)) b!4949517))

(assert (= (and d!1593732 res!2111830) b!4949510))

(assert (= (and b!4949510 res!2111829) b!4949509))

(declare-fun m!5973670 () Bool)

(assert (=> b!4949524 m!5973670))

(declare-fun m!5973672 () Bool)

(assert (=> b!4949524 m!5973672))

(declare-fun m!5973674 () Bool)

(assert (=> b!4949524 m!5973674))

(declare-fun m!5973676 () Bool)

(assert (=> b!4949524 m!5973676))

(declare-fun m!5973678 () Bool)

(assert (=> b!4949524 m!5973678))

(assert (=> b!4949524 m!5973676))

(declare-fun m!5973680 () Bool)

(assert (=> b!4949524 m!5973680))

(declare-fun m!5973682 () Bool)

(assert (=> b!4949509 m!5973682))

(declare-fun m!5973684 () Bool)

(assert (=> b!4949509 m!5973684))

(assert (=> b!4949509 m!5973052))

(assert (=> b!4949509 m!5973052))

(declare-fun m!5973686 () Bool)

(assert (=> b!4949509 m!5973686))

(declare-fun m!5973688 () Bool)

(assert (=> b!4949520 m!5973688))

(declare-fun m!5973690 () Bool)

(assert (=> b!4949525 m!5973690))

(declare-fun m!5973692 () Bool)

(assert (=> b!4949525 m!5973692))

(assert (=> b!4949525 m!5973688))

(declare-fun m!5973694 () Bool)

(assert (=> b!4949525 m!5973694))

(declare-fun m!5973696 () Bool)

(assert (=> b!4949525 m!5973696))

(declare-fun m!5973698 () Bool)

(assert (=> b!4949525 m!5973698))

(declare-fun m!5973700 () Bool)

(assert (=> bm!345574 m!5973700))

(assert (=> b!4949511 m!5973674))

(declare-fun m!5973702 () Bool)

(assert (=> d!1593732 m!5973702))

(assert (=> d!1593732 m!5973064))

(declare-fun m!5973704 () Bool)

(assert (=> b!4949510 m!5973704))

(declare-fun m!5973706 () Bool)

(assert (=> bm!345575 m!5973706))

(assert (=> b!4949512 m!5973674))

(declare-fun m!5973708 () Bool)

(assert (=> bm!345576 m!5973708))

(declare-fun m!5973710 () Bool)

(assert (=> bm!345578 m!5973710))

(declare-fun m!5973712 () Bool)

(assert (=> bm!345573 m!5973712))

(assert (=> d!1593596 d!1593732))

(assert (=> d!1593596 d!1593616))

(declare-fun d!1593782 () Bool)

(declare-fun lt!2042298 () Int)

(assert (=> d!1593782 (>= lt!2042298 0)))

(declare-fun e!3092452 () Int)

(assert (=> d!1593782 (= lt!2042298 e!3092452)))

(declare-fun c!844961 () Bool)

(assert (=> d!1593782 (= c!844961 ((_ is Nil!57003) lt!2041508))))

(assert (=> d!1593782 (= (size!37831 lt!2041508) lt!2042298)))

(declare-fun b!4949530 () Bool)

(assert (=> b!4949530 (= e!3092452 0)))

(declare-fun b!4949531 () Bool)

(assert (=> b!4949531 (= e!3092452 (+ 1 (size!37831 (t!367673 lt!2041508))))))

(assert (= (and d!1593782 c!844961) b!4949530))

(assert (= (and d!1593782 (not c!844961)) b!4949531))

(declare-fun m!5973714 () Bool)

(assert (=> b!4949531 m!5973714))

(assert (=> b!4948753 d!1593782))

(assert (=> b!4948753 d!1593432))

(assert (=> bm!345509 d!1593582))

(declare-fun d!1593784 () Bool)

(assert (=> d!1593784 (= testedSuffix!70 lt!2041497)))

(assert (=> d!1593784 true))

(declare-fun _$63!1231 () Unit!147830)

(assert (=> d!1593784 (= (choose!36542 testedP!110 testedSuffix!70 testedP!110 lt!2041497 lt!2041510) _$63!1231)))

(assert (=> d!1593508 d!1593784))

(assert (=> d!1593508 d!1593434))

(declare-fun d!1593786 () Bool)

(assert (=> d!1593786 (= (list!18179 (ite c!844718 totalInput!685 (_1!34091 lt!2041775))) (list!18181 (c!844685 (ite c!844718 totalInput!685 (_1!34091 lt!2041775)))))))

(declare-fun bs!1182062 () Bool)

(assert (= bs!1182062 d!1593786))

(declare-fun m!5973716 () Bool)

(assert (=> bs!1182062 m!5973716))

(assert (=> bm!345465 d!1593786))

(declare-fun d!1593788 () Bool)

(declare-fun lt!2042299 () Int)

(assert (=> d!1593788 (>= lt!2042299 0)))

(declare-fun e!3092453 () Int)

(assert (=> d!1593788 (= lt!2042299 e!3092453)))

(declare-fun c!844962 () Bool)

(assert (=> d!1593788 (= c!844962 ((_ is Nil!57003) lt!2042007))))

(assert (=> d!1593788 (= (size!37831 lt!2042007) lt!2042299)))

(declare-fun b!4949532 () Bool)

(assert (=> b!4949532 (= e!3092453 0)))

(declare-fun b!4949533 () Bool)

(assert (=> b!4949533 (= e!3092453 (+ 1 (size!37831 (t!367673 lt!2042007))))))

(assert (= (and d!1593788 c!844962) b!4949532))

(assert (= (and d!1593788 (not c!844962)) b!4949533))

(declare-fun m!5973718 () Bool)

(assert (=> b!4949533 m!5973718))

(assert (=> b!4949117 d!1593788))

(assert (=> b!4949117 d!1593432))

(declare-fun d!1593790 () Bool)

(declare-fun lt!2042300 () Int)

(assert (=> d!1593790 (>= lt!2042300 0)))

(declare-fun e!3092454 () Int)

(assert (=> d!1593790 (= lt!2042300 e!3092454)))

(declare-fun c!844963 () Bool)

(assert (=> d!1593790 (= c!844963 ((_ is Nil!57003) testedSuffix!70))))

(assert (=> d!1593790 (= (size!37831 testedSuffix!70) lt!2042300)))

(declare-fun b!4949534 () Bool)

(assert (=> b!4949534 (= e!3092454 0)))

(declare-fun b!4949535 () Bool)

(assert (=> b!4949535 (= e!3092454 (+ 1 (size!37831 (t!367673 testedSuffix!70))))))

(assert (= (and d!1593790 c!844963) b!4949534))

(assert (= (and d!1593790 (not c!844963)) b!4949535))

(declare-fun m!5973720 () Bool)

(assert (=> b!4949535 m!5973720))

(assert (=> b!4949117 d!1593790))

(declare-fun d!1593792 () Bool)

(declare-fun c!844964 () Bool)

(assert (=> d!1593792 (= c!844964 ((_ is Node!15010) (left!41589 (c!844685 totalInput!685))))))

(declare-fun e!3092455 () Bool)

(assert (=> d!1593792 (= (inv!74280 (left!41589 (c!844685 totalInput!685))) e!3092455)))

(declare-fun b!4949536 () Bool)

(assert (=> b!4949536 (= e!3092455 (inv!74286 (left!41589 (c!844685 totalInput!685))))))

(declare-fun b!4949537 () Bool)

(declare-fun e!3092456 () Bool)

(assert (=> b!4949537 (= e!3092455 e!3092456)))

(declare-fun res!2111831 () Bool)

(assert (=> b!4949537 (= res!2111831 (not ((_ is Leaf!24948) (left!41589 (c!844685 totalInput!685)))))))

(assert (=> b!4949537 (=> res!2111831 e!3092456)))

(declare-fun b!4949538 () Bool)

(assert (=> b!4949538 (= e!3092456 (inv!74287 (left!41589 (c!844685 totalInput!685))))))

(assert (= (and d!1593792 c!844964) b!4949536))

(assert (= (and d!1593792 (not c!844964)) b!4949537))

(assert (= (and b!4949537 (not res!2111831)) b!4949538))

(declare-fun m!5973722 () Bool)

(assert (=> b!4949536 m!5973722))

(declare-fun m!5973724 () Bool)

(assert (=> b!4949538 m!5973724))

(assert (=> b!4949183 d!1593792))

(declare-fun d!1593794 () Bool)

(declare-fun c!844965 () Bool)

(assert (=> d!1593794 (= c!844965 ((_ is Node!15010) (right!41919 (c!844685 totalInput!685))))))

(declare-fun e!3092457 () Bool)

(assert (=> d!1593794 (= (inv!74280 (right!41919 (c!844685 totalInput!685))) e!3092457)))

(declare-fun b!4949539 () Bool)

(assert (=> b!4949539 (= e!3092457 (inv!74286 (right!41919 (c!844685 totalInput!685))))))

(declare-fun b!4949540 () Bool)

(declare-fun e!3092458 () Bool)

(assert (=> b!4949540 (= e!3092457 e!3092458)))

(declare-fun res!2111832 () Bool)

(assert (=> b!4949540 (= res!2111832 (not ((_ is Leaf!24948) (right!41919 (c!844685 totalInput!685)))))))

(assert (=> b!4949540 (=> res!2111832 e!3092458)))

(declare-fun b!4949541 () Bool)

(assert (=> b!4949541 (= e!3092458 (inv!74287 (right!41919 (c!844685 totalInput!685))))))

(assert (= (and d!1593794 c!844965) b!4949539))

(assert (= (and d!1593794 (not c!844965)) b!4949540))

(assert (= (and b!4949540 (not res!2111832)) b!4949541))

(declare-fun m!5973726 () Bool)

(assert (=> b!4949539 m!5973726))

(declare-fun m!5973728 () Bool)

(assert (=> b!4949541 m!5973728))

(assert (=> b!4949183 d!1593794))

(assert (=> b!4948755 d!1593606))

(declare-fun d!1593796 () Bool)

(declare-fun lt!2042303 () Bool)

(assert (=> d!1593796 (= lt!2042303 (exists!1345 (toList!8004 z!3568) lambda!246847))))

(declare-fun choose!36557 ((InoxSet Context!6266) Int) Bool)

(assert (=> d!1593796 (= lt!2042303 (choose!36557 z!3568 lambda!246847))))

(assert (=> d!1593796 (= (exists!1346 z!3568 lambda!246847) lt!2042303)))

(declare-fun bs!1182063 () Bool)

(assert (= bs!1182063 d!1593796))

(assert (=> bs!1182063 m!5972878))

(assert (=> bs!1182063 m!5972878))

(declare-fun m!5973730 () Bool)

(assert (=> bs!1182063 m!5973730))

(declare-fun m!5973732 () Bool)

(assert (=> bs!1182063 m!5973732))

(assert (=> d!1593518 d!1593796))

(declare-fun b!4949542 () Bool)

(declare-fun e!3092459 () List!57127)

(assert (=> b!4949542 (= e!3092459 (Cons!57003 call!345464 Nil!57003))))

(declare-fun lt!2042304 () List!57127)

(declare-fun e!3092460 () Bool)

(declare-fun b!4949545 () Bool)

(assert (=> b!4949545 (= e!3092460 (or (not (= (Cons!57003 call!345464 Nil!57003) Nil!57003)) (= lt!2042304 lt!2041496)))))

(declare-fun b!4949543 () Bool)

(assert (=> b!4949543 (= e!3092459 (Cons!57003 (h!63451 lt!2041496) (++!12478 (t!367673 lt!2041496) (Cons!57003 call!345464 Nil!57003))))))

(declare-fun d!1593798 () Bool)

(assert (=> d!1593798 e!3092460))

(declare-fun res!2111833 () Bool)

(assert (=> d!1593798 (=> (not res!2111833) (not e!3092460))))

(assert (=> d!1593798 (= res!2111833 (= (content!10157 lt!2042304) ((_ map or) (content!10157 lt!2041496) (content!10157 (Cons!57003 call!345464 Nil!57003)))))))

(assert (=> d!1593798 (= lt!2042304 e!3092459)))

(declare-fun c!844966 () Bool)

(assert (=> d!1593798 (= c!844966 ((_ is Nil!57003) lt!2041496))))

(assert (=> d!1593798 (= (++!12478 lt!2041496 (Cons!57003 call!345464 Nil!57003)) lt!2042304)))

(declare-fun b!4949544 () Bool)

(declare-fun res!2111834 () Bool)

(assert (=> b!4949544 (=> (not res!2111834) (not e!3092460))))

(assert (=> b!4949544 (= res!2111834 (= (size!37831 lt!2042304) (+ (size!37831 lt!2041496) (size!37831 (Cons!57003 call!345464 Nil!57003)))))))

(assert (= (and d!1593798 c!844966) b!4949542))

(assert (= (and d!1593798 (not c!844966)) b!4949543))

(assert (= (and d!1593798 res!2111833) b!4949544))

(assert (= (and b!4949544 res!2111834) b!4949545))

(declare-fun m!5973734 () Bool)

(assert (=> b!4949543 m!5973734))

(declare-fun m!5973736 () Bool)

(assert (=> d!1593798 m!5973736))

(assert (=> d!1593798 m!5972946))

(declare-fun m!5973738 () Bool)

(assert (=> d!1593798 m!5973738))

(declare-fun m!5973740 () Bool)

(assert (=> b!4949544 m!5973740))

(assert (=> b!4949544 m!5972688))

(declare-fun m!5973742 () Bool)

(assert (=> b!4949544 m!5973742))

(assert (=> bm!345458 d!1593798))

(assert (=> bm!345467 d!1593670))

(assert (=> b!4949035 d!1593582))

(assert (=> b!4948718 d!1593574))

(declare-fun b!4949547 () Bool)

(declare-fun res!2111836 () Bool)

(declare-fun e!3092461 () Bool)

(assert (=> b!4949547 (=> (not res!2111836) (not e!3092461))))

(assert (=> b!4949547 (= res!2111836 (= (head!10617 (ite c!844718 lt!2041747 lt!2041769)) (head!10617 (ite c!844718 lt!2041756 lt!2041771))))))

(declare-fun b!4949549 () Bool)

(declare-fun e!3092463 () Bool)

(assert (=> b!4949549 (= e!3092463 (>= (size!37831 (ite c!844718 lt!2041756 lt!2041771)) (size!37831 (ite c!844718 lt!2041747 lt!2041769))))))

(declare-fun b!4949548 () Bool)

(assert (=> b!4949548 (= e!3092461 (isPrefix!5097 (tail!9752 (ite c!844718 lt!2041747 lt!2041769)) (tail!9752 (ite c!844718 lt!2041756 lt!2041771))))))

(declare-fun b!4949546 () Bool)

(declare-fun e!3092462 () Bool)

(assert (=> b!4949546 (= e!3092462 e!3092461)))

(declare-fun res!2111838 () Bool)

(assert (=> b!4949546 (=> (not res!2111838) (not e!3092461))))

(assert (=> b!4949546 (= res!2111838 (not ((_ is Nil!57003) (ite c!844718 lt!2041756 lt!2041771))))))

(declare-fun d!1593800 () Bool)

(assert (=> d!1593800 e!3092463))

(declare-fun res!2111835 () Bool)

(assert (=> d!1593800 (=> res!2111835 e!3092463)))

(declare-fun lt!2042305 () Bool)

(assert (=> d!1593800 (= res!2111835 (not lt!2042305))))

(assert (=> d!1593800 (= lt!2042305 e!3092462)))

(declare-fun res!2111837 () Bool)

(assert (=> d!1593800 (=> res!2111837 e!3092462)))

(assert (=> d!1593800 (= res!2111837 ((_ is Nil!57003) (ite c!844718 lt!2041747 lt!2041769)))))

(assert (=> d!1593800 (= (isPrefix!5097 (ite c!844718 lt!2041747 lt!2041769) (ite c!844718 lt!2041756 lt!2041771)) lt!2042305)))

(assert (= (and d!1593800 (not res!2111837)) b!4949546))

(assert (= (and b!4949546 res!2111838) b!4949547))

(assert (= (and b!4949547 res!2111836) b!4949548))

(assert (= (and d!1593800 (not res!2111835)) b!4949549))

(declare-fun m!5973744 () Bool)

(assert (=> b!4949547 m!5973744))

(declare-fun m!5973746 () Bool)

(assert (=> b!4949547 m!5973746))

(declare-fun m!5973748 () Bool)

(assert (=> b!4949549 m!5973748))

(declare-fun m!5973750 () Bool)

(assert (=> b!4949549 m!5973750))

(declare-fun m!5973752 () Bool)

(assert (=> b!4949548 m!5973752))

(declare-fun m!5973754 () Bool)

(assert (=> b!4949548 m!5973754))

(assert (=> b!4949548 m!5973752))

(assert (=> b!4949548 m!5973754))

(declare-fun m!5973756 () Bool)

(assert (=> b!4949548 m!5973756))

(assert (=> bm!345462 d!1593800))

(declare-fun d!1593802 () Bool)

(declare-fun lt!2042306 () Int)

(assert (=> d!1593802 (>= lt!2042306 0)))

(declare-fun e!3092464 () Int)

(assert (=> d!1593802 (= lt!2042306 e!3092464)))

(declare-fun c!844967 () Bool)

(assert (=> d!1593802 (= c!844967 ((_ is Nil!57003) lt!2041974))))

(assert (=> d!1593802 (= (size!37831 lt!2041974) lt!2042306)))

(declare-fun b!4949550 () Bool)

(assert (=> b!4949550 (= e!3092464 0)))

(declare-fun b!4949551 () Bool)

(assert (=> b!4949551 (= e!3092464 (+ 1 (size!37831 (t!367673 lt!2041974))))))

(assert (= (and d!1593802 c!844967) b!4949550))

(assert (= (and d!1593802 (not c!844967)) b!4949551))

(declare-fun m!5973758 () Bool)

(assert (=> b!4949551 m!5973758))

(assert (=> b!4949002 d!1593802))

(assert (=> b!4949002 d!1593648))

(declare-fun d!1593804 () Bool)

(declare-fun lt!2042307 () Int)

(assert (=> d!1593804 (>= lt!2042307 0)))

(declare-fun e!3092465 () Int)

(assert (=> d!1593804 (= lt!2042307 e!3092465)))

(declare-fun c!844968 () Bool)

(assert (=> d!1593804 (= c!844968 ((_ is Nil!57003) lt!2041504))))

(assert (=> d!1593804 (= (size!37831 lt!2041504) lt!2042307)))

(declare-fun b!4949552 () Bool)

(assert (=> b!4949552 (= e!3092465 0)))

(declare-fun b!4949553 () Bool)

(assert (=> b!4949553 (= e!3092465 (+ 1 (size!37831 (t!367673 lt!2041504))))))

(assert (= (and d!1593804 c!844968) b!4949552))

(assert (= (and d!1593804 (not c!844968)) b!4949553))

(declare-fun m!5973760 () Bool)

(assert (=> b!4949553 m!5973760))

(assert (=> b!4949002 d!1593804))

(declare-fun d!1593806 () Bool)

(declare-fun c!844971 () Bool)

(assert (=> d!1593806 (= c!844971 ((_ is Nil!57003) lt!2042007))))

(declare-fun e!3092468 () (InoxSet C!27232))

(assert (=> d!1593806 (= (content!10157 lt!2042007) e!3092468)))

(declare-fun b!4949558 () Bool)

(assert (=> b!4949558 (= e!3092468 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949559 () Bool)

(assert (=> b!4949559 (= e!3092468 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2042007) true) (content!10157 (t!367673 lt!2042007))))))

(assert (= (and d!1593806 c!844971) b!4949558))

(assert (= (and d!1593806 (not c!844971)) b!4949559))

(declare-fun m!5973762 () Bool)

(assert (=> b!4949559 m!5973762))

(declare-fun m!5973764 () Bool)

(assert (=> b!4949559 m!5973764))

(assert (=> d!1593578 d!1593806))

(declare-fun d!1593808 () Bool)

(declare-fun c!844972 () Bool)

(assert (=> d!1593808 (= c!844972 ((_ is Nil!57003) testedP!110))))

(declare-fun e!3092469 () (InoxSet C!27232))

(assert (=> d!1593808 (= (content!10157 testedP!110) e!3092469)))

(declare-fun b!4949560 () Bool)

(assert (=> b!4949560 (= e!3092469 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949561 () Bool)

(assert (=> b!4949561 (= e!3092469 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 testedP!110) true) (content!10157 (t!367673 testedP!110))))))

(assert (= (and d!1593808 c!844972) b!4949560))

(assert (= (and d!1593808 (not c!844972)) b!4949561))

(declare-fun m!5973766 () Bool)

(assert (=> b!4949561 m!5973766))

(declare-fun m!5973768 () Bool)

(assert (=> b!4949561 m!5973768))

(assert (=> d!1593578 d!1593808))

(declare-fun d!1593810 () Bool)

(declare-fun c!844973 () Bool)

(assert (=> d!1593810 (= c!844973 ((_ is Nil!57003) testedSuffix!70))))

(declare-fun e!3092470 () (InoxSet C!27232))

(assert (=> d!1593810 (= (content!10157 testedSuffix!70) e!3092470)))

(declare-fun b!4949562 () Bool)

(assert (=> b!4949562 (= e!3092470 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949563 () Bool)

(assert (=> b!4949563 (= e!3092470 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 testedSuffix!70) true) (content!10157 (t!367673 testedSuffix!70))))))

(assert (= (and d!1593810 c!844973) b!4949562))

(assert (= (and d!1593810 (not c!844973)) b!4949563))

(declare-fun m!5973770 () Bool)

(assert (=> b!4949563 m!5973770))

(declare-fun m!5973772 () Bool)

(assert (=> b!4949563 m!5973772))

(assert (=> d!1593578 d!1593810))

(assert (=> d!1593566 d!1593540))

(assert (=> d!1593566 d!1593568))

(assert (=> d!1593566 d!1593542))

(declare-fun d!1593812 () Bool)

(assert (=> d!1593812 (= (head!10617 (drop!2298 lt!2041510 testedPSize!70)) (apply!13842 lt!2041510 testedPSize!70))))

(assert (=> d!1593812 true))

(declare-fun _$27!1690 () Unit!147830)

(assert (=> d!1593812 (= (choose!36548 lt!2041510 testedPSize!70) _$27!1690)))

(declare-fun bs!1182064 () Bool)

(assert (= bs!1182064 d!1593812))

(assert (=> bs!1182064 m!5972492))

(assert (=> bs!1182064 m!5972492))

(assert (=> bs!1182064 m!5972494))

(assert (=> bs!1182064 m!5972504))

(assert (=> d!1593566 d!1593812))

(assert (=> d!1593514 d!1593510))

(assert (=> d!1593514 d!1593434))

(declare-fun b!4949564 () Bool)

(declare-fun e!3092471 () List!57127)

(assert (=> b!4949564 (= e!3092471 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003))))

(declare-fun lt!2042308 () List!57127)

(declare-fun e!3092472 () Bool)

(declare-fun b!4949567 () Bool)

(assert (=> b!4949567 (= e!3092472 (or (not (= (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003) Nil!57003)) (= lt!2042308 testedP!110)))))

(declare-fun b!4949565 () Bool)

(assert (=> b!4949565 (= e!3092471 (Cons!57003 (h!63451 testedP!110) (++!12478 (t!367673 testedP!110) (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003))))))

(declare-fun d!1593814 () Bool)

(assert (=> d!1593814 e!3092472))

(declare-fun res!2111839 () Bool)

(assert (=> d!1593814 (=> (not res!2111839) (not e!3092472))))

(assert (=> d!1593814 (= res!2111839 (= (content!10157 lt!2042308) ((_ map or) (content!10157 testedP!110) (content!10157 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003)))))))

(assert (=> d!1593814 (= lt!2042308 e!3092471)))

(declare-fun c!844974 () Bool)

(assert (=> d!1593814 (= c!844974 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593814 (= (++!12478 testedP!110 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003)) lt!2042308)))

(declare-fun b!4949566 () Bool)

(declare-fun res!2111840 () Bool)

(assert (=> b!4949566 (=> (not res!2111840) (not e!3092472))))

(assert (=> b!4949566 (= res!2111840 (= (size!37831 lt!2042308) (+ (size!37831 testedP!110) (size!37831 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003)))))))

(assert (= (and d!1593814 c!844974) b!4949564))

(assert (= (and d!1593814 (not c!844974)) b!4949565))

(assert (= (and d!1593814 res!2111839) b!4949566))

(assert (= (and b!4949566 res!2111840) b!4949567))

(declare-fun m!5973774 () Bool)

(assert (=> b!4949565 m!5973774))

(declare-fun m!5973776 () Bool)

(assert (=> d!1593814 m!5973776))

(assert (=> d!1593814 m!5972934))

(declare-fun m!5973778 () Bool)

(assert (=> d!1593814 m!5973778))

(declare-fun m!5973780 () Bool)

(assert (=> b!4949566 m!5973780))

(assert (=> b!4949566 m!5972486))

(declare-fun m!5973782 () Bool)

(assert (=> b!4949566 m!5973782))

(assert (=> d!1593514 d!1593814))

(declare-fun d!1593816 () Bool)

(assert (=> d!1593816 (= (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) (h!63451 (getSuffix!3079 lt!2041510 testedP!110)))))

(assert (=> d!1593514 d!1593816))

(declare-fun b!4949569 () Bool)

(declare-fun res!2111842 () Bool)

(declare-fun e!3092473 () Bool)

(assert (=> b!4949569 (=> (not res!2111842) (not e!3092473))))

(assert (=> b!4949569 (= res!2111842 (= (head!10617 (++!12478 testedP!110 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003))) (head!10617 lt!2041510)))))

(declare-fun b!4949571 () Bool)

(declare-fun e!3092475 () Bool)

(assert (=> b!4949571 (= e!3092475 (>= (size!37831 lt!2041510) (size!37831 (++!12478 testedP!110 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003)))))))

(declare-fun b!4949570 () Bool)

(assert (=> b!4949570 (= e!3092473 (isPrefix!5097 (tail!9752 (++!12478 testedP!110 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003))) (tail!9752 lt!2041510)))))

(declare-fun b!4949568 () Bool)

(declare-fun e!3092474 () Bool)

(assert (=> b!4949568 (= e!3092474 e!3092473)))

(declare-fun res!2111844 () Bool)

(assert (=> b!4949568 (=> (not res!2111844) (not e!3092473))))

(assert (=> b!4949568 (= res!2111844 (not ((_ is Nil!57003) lt!2041510)))))

(declare-fun d!1593818 () Bool)

(assert (=> d!1593818 e!3092475))

(declare-fun res!2111841 () Bool)

(assert (=> d!1593818 (=> res!2111841 e!3092475)))

(declare-fun lt!2042309 () Bool)

(assert (=> d!1593818 (= res!2111841 (not lt!2042309))))

(assert (=> d!1593818 (= lt!2042309 e!3092474)))

(declare-fun res!2111843 () Bool)

(assert (=> d!1593818 (=> res!2111843 e!3092474)))

(assert (=> d!1593818 (= res!2111843 ((_ is Nil!57003) (++!12478 testedP!110 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003))))))

(assert (=> d!1593818 (= (isPrefix!5097 (++!12478 testedP!110 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003)) lt!2041510) lt!2042309)))

(assert (= (and d!1593818 (not res!2111843)) b!4949568))

(assert (= (and b!4949568 res!2111844) b!4949569))

(assert (= (and b!4949569 res!2111842) b!4949570))

(assert (= (and d!1593818 (not res!2111841)) b!4949571))

(assert (=> b!4949569 m!5972916))

(declare-fun m!5973784 () Bool)

(assert (=> b!4949569 m!5973784))

(assert (=> b!4949569 m!5972556))

(assert (=> b!4949571 m!5972506))

(assert (=> b!4949571 m!5972916))

(declare-fun m!5973786 () Bool)

(assert (=> b!4949571 m!5973786))

(assert (=> b!4949570 m!5972916))

(declare-fun m!5973788 () Bool)

(assert (=> b!4949570 m!5973788))

(assert (=> b!4949570 m!5972560))

(assert (=> b!4949570 m!5973788))

(assert (=> b!4949570 m!5972560))

(declare-fun m!5973790 () Bool)

(assert (=> b!4949570 m!5973790))

(assert (=> d!1593514 d!1593818))

(declare-fun d!1593820 () Bool)

(assert (=> d!1593820 (isPrefix!5097 (++!12478 testedP!110 (Cons!57003 (head!10617 (getSuffix!3079 lt!2041510 testedP!110)) Nil!57003)) lt!2041510)))

(assert (=> d!1593820 true))

(declare-fun _$65!1727 () Unit!147830)

(assert (=> d!1593820 (= (choose!36545 testedP!110 lt!2041510) _$65!1727)))

(declare-fun bs!1182065 () Bool)

(assert (= bs!1182065 d!1593820))

(assert (=> bs!1182065 m!5972530))

(assert (=> bs!1182065 m!5972530))

(assert (=> bs!1182065 m!5972920))

(assert (=> bs!1182065 m!5972916))

(assert (=> bs!1182065 m!5972916))

(assert (=> bs!1182065 m!5972918))

(assert (=> d!1593514 d!1593820))

(declare-fun d!1593822 () Bool)

(declare-fun c!844975 () Bool)

(assert (=> d!1593822 (= c!844975 ((_ is Nil!57003) lt!2042003))))

(declare-fun e!3092476 () (InoxSet C!27232))

(assert (=> d!1593822 (= (content!10157 lt!2042003) e!3092476)))

(declare-fun b!4949572 () Bool)

(assert (=> b!4949572 (= e!3092476 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949573 () Bool)

(assert (=> b!4949573 (= e!3092476 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2042003) true) (content!10157 (t!367673 lt!2042003))))))

(assert (= (and d!1593822 c!844975) b!4949572))

(assert (= (and d!1593822 (not c!844975)) b!4949573))

(declare-fun m!5973792 () Bool)

(assert (=> b!4949573 m!5973792))

(declare-fun m!5973794 () Bool)

(assert (=> b!4949573 m!5973794))

(assert (=> d!1593568 d!1593822))

(declare-fun d!1593824 () Bool)

(declare-fun c!844976 () Bool)

(assert (=> d!1593824 (= c!844976 ((_ is Nil!57003) lt!2041510))))

(declare-fun e!3092477 () (InoxSet C!27232))

(assert (=> d!1593824 (= (content!10157 lt!2041510) e!3092477)))

(declare-fun b!4949574 () Bool)

(assert (=> b!4949574 (= e!3092477 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949575 () Bool)

(assert (=> b!4949575 (= e!3092477 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2041510) true) (content!10157 (t!367673 lt!2041510))))))

(assert (= (and d!1593824 c!844976) b!4949574))

(assert (= (and d!1593824 (not c!844976)) b!4949575))

(declare-fun m!5973796 () Bool)

(assert (=> b!4949575 m!5973796))

(declare-fun m!5973798 () Bool)

(assert (=> b!4949575 m!5973798))

(assert (=> d!1593568 d!1593824))

(declare-fun d!1593826 () Bool)

(declare-fun lt!2042310 () Int)

(assert (=> d!1593826 (>= lt!2042310 0)))

(declare-fun e!3092478 () Int)

(assert (=> d!1593826 (= lt!2042310 e!3092478)))

(declare-fun c!844977 () Bool)

(assert (=> d!1593826 (= c!844977 ((_ is Nil!57003) lt!2042003))))

(assert (=> d!1593826 (= (size!37831 lt!2042003) lt!2042310)))

(declare-fun b!4949576 () Bool)

(assert (=> b!4949576 (= e!3092478 0)))

(declare-fun b!4949577 () Bool)

(assert (=> b!4949577 (= e!3092478 (+ 1 (size!37831 (t!367673 lt!2042003))))))

(assert (= (and d!1593826 c!844977) b!4949576))

(assert (= (and d!1593826 (not c!844977)) b!4949577))

(declare-fun m!5973800 () Bool)

(assert (=> b!4949577 m!5973800))

(assert (=> b!4949102 d!1593826))

(declare-fun bm!345579 () Bool)

(declare-fun call!345588 () List!57127)

(declare-fun call!345585 () C!27232)

(assert (=> bm!345579 (= call!345588 (++!12478 call!345467 (Cons!57003 call!345585 Nil!57003)))))

(declare-fun b!4949578 () Bool)

(declare-fun e!3092480 () Int)

(assert (=> b!4949578 (= e!3092480 0)))

(declare-fun lt!2042328 () List!57127)

(declare-fun lt!2042341 () List!57127)

(declare-fun lt!2042319 () List!57127)

(declare-fun bm!345580 () Bool)

(declare-fun lt!2042343 () List!57127)

(declare-fun call!345591 () Unit!147830)

(declare-fun c!844978 () Bool)

(assert (=> bm!345580 (= call!345591 (lemmaIsPrefixRefl!3437 (ite c!844978 lt!2042319 lt!2042341) (ite c!844978 lt!2042328 lt!2042343)))))

(declare-fun b!4949579 () Bool)

(declare-fun c!844980 () Bool)

(declare-fun call!345584 () Bool)

(assert (=> b!4949579 (= c!844980 call!345584)))

(declare-fun lt!2042323 () Unit!147830)

(declare-fun lt!2042346 () Unit!147830)

(assert (=> b!4949579 (= lt!2042323 lt!2042346)))

(declare-fun lt!2042342 () List!57127)

(assert (=> b!4949579 (= lt!2042342 call!345467)))

(declare-fun call!345593 () Unit!147830)

(assert (=> b!4949579 (= lt!2042346 call!345593)))

(declare-fun call!345590 () List!57127)

(assert (=> b!4949579 (= lt!2042342 call!345590)))

(declare-fun lt!2042331 () Unit!147830)

(declare-fun lt!2042335 () Unit!147830)

(assert (=> b!4949579 (= lt!2042331 lt!2042335)))

(declare-fun call!345586 () Bool)

(assert (=> b!4949579 call!345586))

(assert (=> b!4949579 (= lt!2042335 call!345591)))

(assert (=> b!4949579 (= lt!2042328 call!345590)))

(assert (=> b!4949579 (= lt!2042319 call!345590)))

(declare-fun e!3092482 () Int)

(declare-fun e!3092483 () Int)

(assert (=> b!4949579 (= e!3092482 e!3092483)))

(declare-fun call!345589 () Int)

(declare-fun call!345587 () List!57127)

(declare-fun call!345592 () (InoxSet Context!6266))

(declare-fun bm!345581 () Bool)

(assert (=> bm!345581 (= call!345589 (findLongestMatchInnerZipperFast!105 call!345592 call!345588 (+ 1 testedPSize!70 1 1) call!345587 totalInput!685 totalInputSize!132))))

(declare-fun b!4949580 () Bool)

(declare-fun c!844983 () Bool)

(assert (=> b!4949580 (= c!844983 call!345584)))

(declare-fun lt!2042351 () Unit!147830)

(declare-fun lt!2042318 () Unit!147830)

(assert (=> b!4949580 (= lt!2042351 lt!2042318)))

(declare-fun lt!2042334 () List!57127)

(declare-fun lt!2042350 () C!27232)

(declare-fun lt!2042336 () List!57127)

(assert (=> b!4949580 (= (++!12478 (++!12478 call!345467 (Cons!57003 lt!2042350 Nil!57003)) lt!2042336) lt!2042334)))

(assert (=> b!4949580 (= lt!2042318 (lemmaMoveElementToOtherListKeepsConcatEq!1436 call!345467 lt!2042350 lt!2042336 lt!2042334))))

(assert (=> b!4949580 (= lt!2042334 (list!18179 totalInput!685))))

(assert (=> b!4949580 (= lt!2042336 (tail!9752 call!345466))))

(assert (=> b!4949580 (= lt!2042350 (apply!13841 totalInput!685 (+ 1 testedPSize!70 1)))))

(declare-fun lt!2042344 () Unit!147830)

(declare-fun lt!2042316 () Unit!147830)

(assert (=> b!4949580 (= lt!2042344 lt!2042316)))

(declare-fun lt!2042317 () List!57127)

(assert (=> b!4949580 (isPrefix!5097 (++!12478 call!345467 (Cons!57003 (head!10617 (getSuffix!3079 lt!2042317 call!345467)) Nil!57003)) lt!2042317)))

(assert (=> b!4949580 (= lt!2042316 (lemmaAddHeadSuffixToPrefixStillPrefix!826 call!345467 lt!2042317))))

(assert (=> b!4949580 (= lt!2042317 (list!18179 totalInput!685))))

(declare-fun lt!2042339 () Unit!147830)

(declare-fun e!3092479 () Unit!147830)

(assert (=> b!4949580 (= lt!2042339 e!3092479)))

(declare-fun c!844981 () Bool)

(assert (=> b!4949580 (= c!844981 (= (size!37831 call!345467) (size!37832 totalInput!685)))))

(declare-fun lt!2042311 () Unit!147830)

(declare-fun lt!2042340 () Unit!147830)

(assert (=> b!4949580 (= lt!2042311 lt!2042340)))

(declare-fun lt!2042325 () List!57127)

(assert (=> b!4949580 (<= (size!37831 call!345467) (size!37831 lt!2042325))))

(assert (=> b!4949580 (= lt!2042340 (lemmaIsPrefixThenSmallerEqSize!752 call!345467 lt!2042325))))

(assert (=> b!4949580 (= lt!2042325 (list!18179 totalInput!685))))

(declare-fun lt!2042348 () Unit!147830)

(declare-fun lt!2042333 () Unit!147830)

(assert (=> b!4949580 (= lt!2042348 lt!2042333)))

(declare-fun lt!2042330 () List!57127)

(assert (=> b!4949580 (= (head!10617 (drop!2298 lt!2042330 (+ 1 testedPSize!70 1))) (apply!13842 lt!2042330 (+ 1 testedPSize!70 1)))))

(assert (=> b!4949580 (= lt!2042333 (lemmaDropApply!1352 lt!2042330 (+ 1 testedPSize!70 1)))))

(assert (=> b!4949580 (= lt!2042330 (list!18179 totalInput!685))))

(declare-fun lt!2042315 () Unit!147830)

(declare-fun lt!2042324 () Unit!147830)

(assert (=> b!4949580 (= lt!2042315 lt!2042324)))

(declare-fun lt!2042313 () List!57127)

(declare-fun lt!2042349 () List!57127)

(assert (=> b!4949580 (and (= lt!2042349 call!345467) (= lt!2042313 call!345466))))

(assert (=> b!4949580 (= lt!2042324 (lemmaConcatSameAndSameSizesThenSameLists!735 lt!2042349 lt!2042313 call!345467 call!345466))))

(declare-fun lt!2042347 () tuple2!61576)

(assert (=> b!4949580 (= lt!2042313 (list!18179 (_2!34091 lt!2042347)))))

(assert (=> b!4949580 (= lt!2042349 call!345590)))

(assert (=> b!4949580 (= lt!2042347 (splitAt!412 totalInput!685 (+ 1 testedPSize!70 1)))))

(declare-fun e!3092484 () Int)

(assert (=> b!4949580 (= e!3092482 e!3092484)))

(declare-fun bm!345582 () Bool)

(assert (=> bm!345582 (= call!345584 (nullableZipper!862 call!345471))))

(declare-fun b!4949581 () Bool)

(assert (=> b!4949581 (= e!3092483 0)))

(declare-fun bm!345583 () Bool)

(assert (=> bm!345583 (= call!345586 (isPrefix!5097 (ite c!844978 lt!2042319 lt!2042341) (ite c!844978 lt!2042328 lt!2042343)))))

(declare-fun bm!345584 () Bool)

(declare-fun c!844982 () Bool)

(assert (=> bm!345584 (= c!844982 c!844978)))

(declare-fun lt!2042320 () List!57127)

(declare-fun e!3092481 () List!57127)

(assert (=> bm!345584 (= call!345593 (lemmaIsPrefixSameLengthThenSameList!1189 (ite c!844978 lt!2042342 lt!2042320) call!345467 e!3092481))))

(declare-fun b!4949582 () Bool)

(assert (=> b!4949582 (= e!3092484 call!345589)))

(declare-fun b!4949583 () Bool)

(assert (=> b!4949583 (= e!3092483 (+ 1 testedPSize!70 1))))

(declare-fun d!1593828 () Bool)

(declare-fun lt!2042332 () Int)

(assert (=> d!1593828 (= (size!37831 (_1!34090 (findLongestMatchInnerZipper!80 call!345471 call!345467 (+ 1 testedPSize!70 1) call!345466 (list!18179 totalInput!685) totalInputSize!132))) lt!2042332)))

(assert (=> d!1593828 (= lt!2042332 e!3092480)))

(declare-fun c!844979 () Bool)

(assert (=> d!1593828 (= c!844979 (lostCauseZipper!809 call!345471))))

(declare-fun lt!2042327 () Unit!147830)

(declare-fun Unit!147861 () Unit!147830)

(assert (=> d!1593828 (= lt!2042327 Unit!147861)))

(assert (=> d!1593828 (= (getSuffix!3079 (list!18179 totalInput!685) call!345467) call!345466)))

(declare-fun lt!2042338 () Unit!147830)

(declare-fun lt!2042322 () Unit!147830)

(assert (=> d!1593828 (= lt!2042338 lt!2042322)))

(declare-fun lt!2042314 () List!57127)

(assert (=> d!1593828 (= call!345466 lt!2042314)))

(assert (=> d!1593828 (= lt!2042322 (lemmaSamePrefixThenSameSuffix!2489 call!345467 call!345466 call!345467 lt!2042314 (list!18179 totalInput!685)))))

(assert (=> d!1593828 (= lt!2042314 (getSuffix!3079 (list!18179 totalInput!685) call!345467))))

(declare-fun lt!2042312 () Unit!147830)

(declare-fun lt!2042321 () Unit!147830)

(assert (=> d!1593828 (= lt!2042312 lt!2042321)))

(assert (=> d!1593828 (isPrefix!5097 call!345467 (++!12478 call!345467 call!345466))))

(assert (=> d!1593828 (= lt!2042321 (lemmaConcatTwoListThenFirstIsPrefix!3321 call!345467 call!345466))))

(assert (=> d!1593828 (= (++!12478 call!345467 call!345466) (list!18179 totalInput!685))))

(assert (=> d!1593828 (= (findLongestMatchInnerZipperFast!105 call!345471 call!345467 (+ 1 testedPSize!70 1) call!345466 totalInput!685 totalInputSize!132) lt!2042332)))

(declare-fun bm!345585 () Bool)

(assert (=> bm!345585 (= call!345592 (derivationStepZipper!613 call!345471 call!345585))))

(declare-fun b!4949584 () Bool)

(assert (=> b!4949584 (= e!3092480 e!3092482)))

(assert (=> b!4949584 (= c!844978 (= (+ 1 testedPSize!70 1) totalInputSize!132))))

(declare-fun b!4949585 () Bool)

(assert (=> b!4949585 (= e!3092481 call!345590)))

(declare-fun b!4949586 () Bool)

(assert (=> b!4949586 (= e!3092481 (list!18179 totalInput!685))))

(declare-fun b!4949587 () Bool)

(declare-fun Unit!147862 () Unit!147830)

(assert (=> b!4949587 (= e!3092479 Unit!147862)))

(declare-fun bm!345586 () Bool)

(assert (=> bm!345586 (= call!345590 (list!18179 (ite c!844978 totalInput!685 (_1!34091 lt!2042347))))))

(declare-fun b!4949588 () Bool)

(declare-fun lt!2042326 () Int)

(assert (=> b!4949588 (= e!3092484 (ite (= lt!2042326 0) (+ 1 testedPSize!70 1) lt!2042326))))

(assert (=> b!4949588 (= lt!2042326 call!345589)))

(declare-fun b!4949589 () Bool)

(declare-fun Unit!147863 () Unit!147830)

(assert (=> b!4949589 (= e!3092479 Unit!147863)))

(assert (=> b!4949589 (= lt!2042341 (list!18179 totalInput!685))))

(assert (=> b!4949589 (= lt!2042343 (list!18179 totalInput!685))))

(declare-fun lt!2042329 () Unit!147830)

(assert (=> b!4949589 (= lt!2042329 call!345591)))

(assert (=> b!4949589 call!345586))

(declare-fun lt!2042337 () Unit!147830)

(assert (=> b!4949589 (= lt!2042337 lt!2042329)))

(assert (=> b!4949589 (= lt!2042320 (list!18179 totalInput!685))))

(declare-fun lt!2042352 () Unit!147830)

(assert (=> b!4949589 (= lt!2042352 call!345593)))

(assert (=> b!4949589 (= lt!2042320 call!345467)))

(declare-fun lt!2042345 () Unit!147830)

(assert (=> b!4949589 (= lt!2042345 lt!2042352)))

(assert (=> b!4949589 false))

(declare-fun bm!345587 () Bool)

(assert (=> bm!345587 (= call!345585 (apply!13841 totalInput!685 (+ 1 testedPSize!70 1)))))

(declare-fun bm!345588 () Bool)

(assert (=> bm!345588 (= call!345587 (tail!9752 call!345466))))

(assert (= (and d!1593828 c!844979) b!4949578))

(assert (= (and d!1593828 (not c!844979)) b!4949584))

(assert (= (and b!4949584 c!844978) b!4949579))

(assert (= (and b!4949584 (not c!844978)) b!4949580))

(assert (= (and b!4949579 c!844980) b!4949583))

(assert (= (and b!4949579 (not c!844980)) b!4949581))

(assert (= (and b!4949580 c!844981) b!4949589))

(assert (= (and b!4949580 (not c!844981)) b!4949587))

(assert (= (and b!4949580 c!844983) b!4949588))

(assert (= (and b!4949580 (not c!844983)) b!4949582))

(assert (= (or b!4949588 b!4949582) bm!345588))

(assert (= (or b!4949588 b!4949582) bm!345587))

(assert (= (or b!4949588 b!4949582) bm!345585))

(assert (= (or b!4949588 b!4949582) bm!345579))

(assert (= (or b!4949588 b!4949582) bm!345581))

(assert (= (or b!4949579 b!4949589) bm!345583))

(assert (= (or b!4949579 b!4949580) bm!345582))

(assert (= (or b!4949579 b!4949580) bm!345586))

(assert (= (or b!4949579 b!4949589) bm!345580))

(assert (= (or b!4949579 b!4949589) bm!345584))

(assert (= (and bm!345584 c!844982) b!4949585))

(assert (= (and bm!345584 (not c!844982)) b!4949586))

(declare-fun m!5973802 () Bool)

(assert (=> bm!345586 m!5973802))

(declare-fun m!5973804 () Bool)

(assert (=> bm!345583 m!5973804))

(declare-fun m!5973806 () Bool)

(assert (=> bm!345585 m!5973806))

(declare-fun m!5973808 () Bool)

(assert (=> b!4949580 m!5973808))

(declare-fun m!5973810 () Bool)

(assert (=> b!4949580 m!5973810))

(declare-fun m!5973812 () Bool)

(assert (=> b!4949580 m!5973812))

(declare-fun m!5973814 () Bool)

(assert (=> b!4949580 m!5973814))

(assert (=> b!4949580 m!5972520))

(declare-fun m!5973816 () Bool)

(assert (=> b!4949580 m!5973816))

(declare-fun m!5973818 () Bool)

(assert (=> b!4949580 m!5973818))

(declare-fun m!5973820 () Bool)

(assert (=> b!4949580 m!5973820))

(declare-fun m!5973822 () Bool)

(assert (=> b!4949580 m!5973822))

(declare-fun m!5973824 () Bool)

(assert (=> b!4949580 m!5973824))

(declare-fun m!5973826 () Bool)

(assert (=> b!4949580 m!5973826))

(declare-fun m!5973828 () Bool)

(assert (=> b!4949580 m!5973828))

(assert (=> b!4949580 m!5973816))

(declare-fun m!5973830 () Bool)

(assert (=> b!4949580 m!5973830))

(declare-fun m!5973832 () Bool)

(assert (=> b!4949580 m!5973832))

(assert (=> b!4949580 m!5972468))

(declare-fun m!5973834 () Bool)

(assert (=> b!4949580 m!5973834))

(declare-fun m!5973836 () Bool)

(assert (=> b!4949580 m!5973836))

(declare-fun m!5973838 () Bool)

(assert (=> b!4949580 m!5973838))

(declare-fun m!5973840 () Bool)

(assert (=> b!4949580 m!5973840))

(declare-fun m!5973842 () Bool)

(assert (=> b!4949580 m!5973842))

(assert (=> b!4949580 m!5973840))

(assert (=> b!4949580 m!5973834))

(assert (=> b!4949580 m!5973822))

(declare-fun m!5973844 () Bool)

(assert (=> b!4949580 m!5973844))

(declare-fun m!5973846 () Bool)

(assert (=> b!4949580 m!5973846))

(declare-fun m!5973848 () Bool)

(assert (=> bm!345580 m!5973848))

(declare-fun m!5973850 () Bool)

(assert (=> bm!345582 m!5973850))

(assert (=> bm!345587 m!5973812))

(assert (=> bm!345588 m!5973826))

(assert (=> b!4949586 m!5972520))

(declare-fun m!5973852 () Bool)

(assert (=> d!1593828 m!5973852))

(assert (=> d!1593828 m!5972520))

(declare-fun m!5973854 () Bool)

(assert (=> d!1593828 m!5973854))

(declare-fun m!5973856 () Bool)

(assert (=> d!1593828 m!5973856))

(assert (=> d!1593828 m!5972520))

(declare-fun m!5973858 () Bool)

(assert (=> d!1593828 m!5973858))

(declare-fun m!5973860 () Bool)

(assert (=> d!1593828 m!5973860))

(assert (=> d!1593828 m!5972520))

(declare-fun m!5973862 () Bool)

(assert (=> d!1593828 m!5973862))

(declare-fun m!5973864 () Bool)

(assert (=> d!1593828 m!5973864))

(assert (=> d!1593828 m!5973858))

(assert (=> d!1593828 m!5972520))

(declare-fun m!5973866 () Bool)

(assert (=> d!1593828 m!5973866))

(assert (=> b!4949589 m!5972520))

(declare-fun m!5973868 () Bool)

(assert (=> bm!345579 m!5973868))

(declare-fun m!5973870 () Bool)

(assert (=> bm!345581 m!5973870))

(declare-fun m!5973872 () Bool)

(assert (=> bm!345584 m!5973872))

(assert (=> bm!345460 d!1593828))

(declare-fun b!4949590 () Bool)

(declare-fun e!3092485 () List!57127)

(assert (=> b!4949590 (= e!3092485 (Cons!57003 (head!10617 lt!2041497) Nil!57003))))

(declare-fun b!4949593 () Bool)

(declare-fun e!3092486 () Bool)

(declare-fun lt!2042353 () List!57127)

(assert (=> b!4949593 (= e!3092486 (or (not (= (Cons!57003 (head!10617 lt!2041497) Nil!57003) Nil!57003)) (= lt!2042353 (t!367673 testedP!110))))))

(declare-fun b!4949591 () Bool)

(assert (=> b!4949591 (= e!3092485 (Cons!57003 (h!63451 (t!367673 testedP!110)) (++!12478 (t!367673 (t!367673 testedP!110)) (Cons!57003 (head!10617 lt!2041497) Nil!57003))))))

(declare-fun d!1593830 () Bool)

(assert (=> d!1593830 e!3092486))

(declare-fun res!2111845 () Bool)

(assert (=> d!1593830 (=> (not res!2111845) (not e!3092486))))

(assert (=> d!1593830 (= res!2111845 (= (content!10157 lt!2042353) ((_ map or) (content!10157 (t!367673 testedP!110)) (content!10157 (Cons!57003 (head!10617 lt!2041497) Nil!57003)))))))

(assert (=> d!1593830 (= lt!2042353 e!3092485)))

(declare-fun c!844984 () Bool)

(assert (=> d!1593830 (= c!844984 ((_ is Nil!57003) (t!367673 testedP!110)))))

(assert (=> d!1593830 (= (++!12478 (t!367673 testedP!110) (Cons!57003 (head!10617 lt!2041497) Nil!57003)) lt!2042353)))

(declare-fun b!4949592 () Bool)

(declare-fun res!2111846 () Bool)

(assert (=> b!4949592 (=> (not res!2111846) (not e!3092486))))

(assert (=> b!4949592 (= res!2111846 (= (size!37831 lt!2042353) (+ (size!37831 (t!367673 testedP!110)) (size!37831 (Cons!57003 (head!10617 lt!2041497) Nil!57003)))))))

(assert (= (and d!1593830 c!844984) b!4949590))

(assert (= (and d!1593830 (not c!844984)) b!4949591))

(assert (= (and d!1593830 res!2111845) b!4949592))

(assert (= (and b!4949592 res!2111846) b!4949593))

(declare-fun m!5973874 () Bool)

(assert (=> b!4949591 m!5973874))

(declare-fun m!5973876 () Bool)

(assert (=> d!1593830 m!5973876))

(assert (=> d!1593830 m!5973768))

(assert (=> d!1593830 m!5972936))

(declare-fun m!5973878 () Bool)

(assert (=> b!4949592 m!5973878))

(assert (=> b!4949592 m!5972552))

(assert (=> b!4949592 m!5972940))

(assert (=> b!4948997 d!1593830))

(declare-fun b!4949605 () Bool)

(declare-fun e!3092492 () List!57127)

(assert (=> b!4949605 (= e!3092492 (++!12478 (list!18181 (left!41589 (c!844685 (_1!34091 lt!2041490)))) (list!18181 (right!41919 (c!844685 (_1!34091 lt!2041490))))))))

(declare-fun b!4949602 () Bool)

(declare-fun e!3092491 () List!57127)

(assert (=> b!4949602 (= e!3092491 Nil!57003)))

(declare-fun b!4949603 () Bool)

(assert (=> b!4949603 (= e!3092491 e!3092492)))

(declare-fun c!844990 () Bool)

(assert (=> b!4949603 (= c!844990 ((_ is Leaf!24948) (c!844685 (_1!34091 lt!2041490))))))

(declare-fun d!1593832 () Bool)

(declare-fun c!844989 () Bool)

(assert (=> d!1593832 (= c!844989 ((_ is Empty!15010) (c!844685 (_1!34091 lt!2041490))))))

(assert (=> d!1593832 (= (list!18181 (c!844685 (_1!34091 lt!2041490))) e!3092491)))

(declare-fun b!4949604 () Bool)

(assert (=> b!4949604 (= e!3092492 (list!18182 (xs!18336 (c!844685 (_1!34091 lt!2041490)))))))

(assert (= (and d!1593832 c!844989) b!4949602))

(assert (= (and d!1593832 (not c!844989)) b!4949603))

(assert (= (and b!4949603 c!844990) b!4949604))

(assert (= (and b!4949603 (not c!844990)) b!4949605))

(declare-fun m!5973880 () Bool)

(assert (=> b!4949605 m!5973880))

(declare-fun m!5973882 () Bool)

(assert (=> b!4949605 m!5973882))

(assert (=> b!4949605 m!5973880))

(assert (=> b!4949605 m!5973882))

(declare-fun m!5973884 () Bool)

(assert (=> b!4949605 m!5973884))

(declare-fun m!5973886 () Bool)

(assert (=> b!4949604 m!5973886))

(assert (=> d!1593594 d!1593832))

(declare-fun d!1593834 () Bool)

(assert (=> d!1593834 (= (head!10617 testedP!110) (h!63451 testedP!110))))

(assert (=> b!4948747 d!1593834))

(assert (=> b!4948747 d!1593606))

(declare-fun d!1593836 () Bool)

(declare-fun lt!2042354 () Int)

(assert (=> d!1593836 (>= lt!2042354 0)))

(declare-fun e!3092493 () Int)

(assert (=> d!1593836 (= lt!2042354 e!3092493)))

(declare-fun c!844991 () Bool)

(assert (=> d!1593836 (= c!844991 ((_ is Nil!57003) (t!367673 testedP!110)))))

(assert (=> d!1593836 (= (size!37831 (t!367673 testedP!110)) lt!2042354)))

(declare-fun b!4949606 () Bool)

(assert (=> b!4949606 (= e!3092493 0)))

(declare-fun b!4949607 () Bool)

(assert (=> b!4949607 (= e!3092493 (+ 1 (size!37831 (t!367673 (t!367673 testedP!110)))))))

(assert (= (and d!1593836 c!844991) b!4949606))

(assert (= (and d!1593836 (not c!844991)) b!4949607))

(declare-fun m!5973888 () Bool)

(assert (=> b!4949607 m!5973888))

(assert (=> b!4948737 d!1593836))

(declare-fun bs!1182066 () Bool)

(declare-fun d!1593838 () Bool)

(assert (= bs!1182066 (and d!1593838 d!1593450)))

(declare-fun lambda!246871 () Int)

(assert (=> bs!1182066 (= (= call!345464 lt!2041491) (= lambda!246871 lambda!246811))))

(assert (=> d!1593838 true))

(assert (=> d!1593838 (= (derivationStepZipper!613 (derivationStepZipper!613 z!3568 lt!2041491) call!345464) (flatMap!276 (derivationStepZipper!613 z!3568 lt!2041491) lambda!246871))))

(declare-fun bs!1182067 () Bool)

(assert (= bs!1182067 d!1593838))

(assert (=> bs!1182067 m!5972488))

(declare-fun m!5973890 () Bool)

(assert (=> bs!1182067 m!5973890))

(assert (=> bm!345464 d!1593838))

(assert (=> bm!345533 d!1593444))

(declare-fun b!4949608 () Bool)

(declare-fun res!2111848 () Bool)

(declare-fun e!3092494 () Bool)

(assert (=> b!4949608 (=> (not res!2111848) (not e!3092494))))

(assert (=> b!4949608 (= res!2111848 (isBalanced!4160 (right!41919 (c!844685 (_2!34091 lt!2042022)))))))

(declare-fun b!4949609 () Bool)

(assert (=> b!4949609 (= e!3092494 (not (isEmpty!30673 (right!41919 (c!844685 (_2!34091 lt!2042022))))))))

(declare-fun b!4949610 () Bool)

(declare-fun res!2111851 () Bool)

(assert (=> b!4949610 (=> (not res!2111851) (not e!3092494))))

(assert (=> b!4949610 (= res!2111851 (isBalanced!4160 (left!41589 (c!844685 (_2!34091 lt!2042022)))))))

(declare-fun b!4949611 () Bool)

(declare-fun e!3092495 () Bool)

(assert (=> b!4949611 (= e!3092495 e!3092494)))

(declare-fun res!2111850 () Bool)

(assert (=> b!4949611 (=> (not res!2111850) (not e!3092494))))

(assert (=> b!4949611 (= res!2111850 (<= (- 1) (- (height!2005 (left!41589 (c!844685 (_2!34091 lt!2042022)))) (height!2005 (right!41919 (c!844685 (_2!34091 lt!2042022)))))))))

(declare-fun d!1593840 () Bool)

(declare-fun res!2111852 () Bool)

(assert (=> d!1593840 (=> res!2111852 e!3092495)))

(assert (=> d!1593840 (= res!2111852 (not ((_ is Node!15010) (c!844685 (_2!34091 lt!2042022)))))))

(assert (=> d!1593840 (= (isBalanced!4160 (c!844685 (_2!34091 lt!2042022))) e!3092495)))

(declare-fun b!4949612 () Bool)

(declare-fun res!2111849 () Bool)

(assert (=> b!4949612 (=> (not res!2111849) (not e!3092494))))

(assert (=> b!4949612 (= res!2111849 (not (isEmpty!30673 (left!41589 (c!844685 (_2!34091 lt!2042022))))))))

(declare-fun b!4949613 () Bool)

(declare-fun res!2111847 () Bool)

(assert (=> b!4949613 (=> (not res!2111847) (not e!3092494))))

(assert (=> b!4949613 (= res!2111847 (<= (- (height!2005 (left!41589 (c!844685 (_2!34091 lt!2042022)))) (height!2005 (right!41919 (c!844685 (_2!34091 lt!2042022))))) 1))))

(assert (= (and d!1593840 (not res!2111852)) b!4949611))

(assert (= (and b!4949611 res!2111850) b!4949613))

(assert (= (and b!4949613 res!2111847) b!4949610))

(assert (= (and b!4949610 res!2111851) b!4949608))

(assert (= (and b!4949608 res!2111848) b!4949612))

(assert (= (and b!4949612 res!2111849) b!4949609))

(declare-fun m!5973892 () Bool)

(assert (=> b!4949613 m!5973892))

(declare-fun m!5973894 () Bool)

(assert (=> b!4949613 m!5973894))

(declare-fun m!5973896 () Bool)

(assert (=> b!4949612 m!5973896))

(declare-fun m!5973898 () Bool)

(assert (=> b!4949608 m!5973898))

(declare-fun m!5973900 () Bool)

(assert (=> b!4949609 m!5973900))

(declare-fun m!5973902 () Bool)

(assert (=> b!4949610 m!5973902))

(assert (=> b!4949611 m!5973892))

(assert (=> b!4949611 m!5973894))

(assert (=> b!4949129 d!1593840))

(declare-fun d!1593842 () Bool)

(declare-fun res!2111859 () Bool)

(declare-fun e!3092498 () Bool)

(assert (=> d!1593842 (=> (not res!2111859) (not e!3092498))))

(assert (=> d!1593842 (= res!2111859 (= (csize!30250 (c!844685 totalInput!685)) (+ (size!37834 (left!41589 (c!844685 totalInput!685))) (size!37834 (right!41919 (c!844685 totalInput!685))))))))

(assert (=> d!1593842 (= (inv!74286 (c!844685 totalInput!685)) e!3092498)))

(declare-fun b!4949620 () Bool)

(declare-fun res!2111860 () Bool)

(assert (=> b!4949620 (=> (not res!2111860) (not e!3092498))))

(assert (=> b!4949620 (= res!2111860 (and (not (= (left!41589 (c!844685 totalInput!685)) Empty!15010)) (not (= (right!41919 (c!844685 totalInput!685)) Empty!15010))))))

(declare-fun b!4949621 () Bool)

(declare-fun res!2111861 () Bool)

(assert (=> b!4949621 (=> (not res!2111861) (not e!3092498))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4949621 (= res!2111861 (= (cheight!15221 (c!844685 totalInput!685)) (+ (max!0 (height!2005 (left!41589 (c!844685 totalInput!685))) (height!2005 (right!41919 (c!844685 totalInput!685)))) 1)))))

(declare-fun b!4949622 () Bool)

(assert (=> b!4949622 (= e!3092498 (<= 0 (cheight!15221 (c!844685 totalInput!685))))))

(assert (= (and d!1593842 res!2111859) b!4949620))

(assert (= (and b!4949620 res!2111860) b!4949621))

(assert (= (and b!4949621 res!2111861) b!4949622))

(assert (=> d!1593842 m!5973674))

(declare-fun m!5973904 () Bool)

(assert (=> d!1593842 m!5973904))

(assert (=> b!4949621 m!5973164))

(assert (=> b!4949621 m!5973166))

(assert (=> b!4949621 m!5973164))

(assert (=> b!4949621 m!5973166))

(declare-fun m!5973906 () Bool)

(assert (=> b!4949621 m!5973906))

(assert (=> b!4949112 d!1593842))

(declare-fun d!1593844 () Bool)

(declare-fun lt!2042355 () Int)

(assert (=> d!1593844 (>= lt!2042355 0)))

(declare-fun e!3092499 () Int)

(assert (=> d!1593844 (= lt!2042355 e!3092499)))

(declare-fun c!844992 () Bool)

(assert (=> d!1593844 (= c!844992 ((_ is Nil!57003) lt!2041975))))

(assert (=> d!1593844 (= (size!37831 lt!2041975) lt!2042355)))

(declare-fun b!4949623 () Bool)

(assert (=> b!4949623 (= e!3092499 0)))

(declare-fun b!4949624 () Bool)

(assert (=> b!4949624 (= e!3092499 (+ 1 (size!37831 (t!367673 lt!2041975))))))

(assert (= (and d!1593844 c!844992) b!4949623))

(assert (= (and d!1593844 (not c!844992)) b!4949624))

(declare-fun m!5973908 () Bool)

(assert (=> b!4949624 m!5973908))

(assert (=> b!4949012 d!1593844))

(assert (=> b!4949012 d!1593432))

(declare-fun d!1593846 () Bool)

(declare-fun lt!2042356 () Int)

(assert (=> d!1593846 (>= lt!2042356 0)))

(declare-fun e!3092500 () Int)

(assert (=> d!1593846 (= lt!2042356 e!3092500)))

(declare-fun c!844993 () Bool)

(assert (=> d!1593846 (= c!844993 ((_ is Nil!57003) (Cons!57003 lt!2041491 Nil!57003)))))

(assert (=> d!1593846 (= (size!37831 (Cons!57003 lt!2041491 Nil!57003)) lt!2042356)))

(declare-fun b!4949625 () Bool)

(assert (=> b!4949625 (= e!3092500 0)))

(declare-fun b!4949626 () Bool)

(assert (=> b!4949626 (= e!3092500 (+ 1 (size!37831 (t!367673 (Cons!57003 lt!2041491 Nil!57003)))))))

(assert (= (and d!1593846 c!844993) b!4949625))

(assert (= (and d!1593846 (not c!844993)) b!4949626))

(declare-fun m!5973910 () Bool)

(assert (=> b!4949626 m!5973910))

(assert (=> b!4949012 d!1593846))

(declare-fun b!4949628 () Bool)

(declare-fun res!2111863 () Bool)

(declare-fun e!3092501 () Bool)

(assert (=> b!4949628 (=> (not res!2111863) (not e!3092501))))

(assert (=> b!4949628 (= res!2111863 (= (head!10617 (tail!9752 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003)))) (head!10617 (tail!9752 lt!2041510))))))

(declare-fun b!4949630 () Bool)

(declare-fun e!3092503 () Bool)

(assert (=> b!4949630 (= e!3092503 (>= (size!37831 (tail!9752 lt!2041510)) (size!37831 (tail!9752 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))))))))

(declare-fun b!4949629 () Bool)

(assert (=> b!4949629 (= e!3092501 (isPrefix!5097 (tail!9752 (tail!9752 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003)))) (tail!9752 (tail!9752 lt!2041510))))))

(declare-fun b!4949627 () Bool)

(declare-fun e!3092502 () Bool)

(assert (=> b!4949627 (= e!3092502 e!3092501)))

(declare-fun res!2111865 () Bool)

(assert (=> b!4949627 (=> (not res!2111865) (not e!3092501))))

(assert (=> b!4949627 (= res!2111865 (not ((_ is Nil!57003) (tail!9752 lt!2041510))))))

(declare-fun d!1593848 () Bool)

(assert (=> d!1593848 e!3092503))

(declare-fun res!2111862 () Bool)

(assert (=> d!1593848 (=> res!2111862 e!3092503)))

(declare-fun lt!2042357 () Bool)

(assert (=> d!1593848 (= res!2111862 (not lt!2042357))))

(assert (=> d!1593848 (= lt!2042357 e!3092502)))

(declare-fun res!2111864 () Bool)

(assert (=> d!1593848 (=> res!2111864 e!3092502)))

(assert (=> d!1593848 (= res!2111864 ((_ is Nil!57003) (tail!9752 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003)))))))

(assert (=> d!1593848 (= (isPrefix!5097 (tail!9752 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))) (tail!9752 lt!2041510)) lt!2042357)))

(assert (= (and d!1593848 (not res!2111864)) b!4949627))

(assert (= (and b!4949627 res!2111865) b!4949628))

(assert (= (and b!4949628 res!2111863) b!4949629))

(assert (= (and d!1593848 (not res!2111862)) b!4949630))

(assert (=> b!4949628 m!5972974))

(declare-fun m!5973912 () Bool)

(assert (=> b!4949628 m!5973912))

(assert (=> b!4949628 m!5972560))

(assert (=> b!4949628 m!5973140))

(assert (=> b!4949630 m!5972560))

(assert (=> b!4949630 m!5973142))

(assert (=> b!4949630 m!5972974))

(declare-fun m!5973914 () Bool)

(assert (=> b!4949630 m!5973914))

(assert (=> b!4949629 m!5972974))

(declare-fun m!5973916 () Bool)

(assert (=> b!4949629 m!5973916))

(assert (=> b!4949629 m!5972560))

(assert (=> b!4949629 m!5973144))

(assert (=> b!4949629 m!5973916))

(assert (=> b!4949629 m!5973144))

(declare-fun m!5973918 () Bool)

(assert (=> b!4949629 m!5973918))

(assert (=> b!4949021 d!1593848))

(declare-fun d!1593850 () Bool)

(assert (=> d!1593850 (= (tail!9752 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))) (t!367673 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))))))

(assert (=> b!4949021 d!1593850))

(assert (=> b!4949021 d!1593604))

(declare-fun b!4949634 () Bool)

(declare-fun e!3092505 () List!57127)

(assert (=> b!4949634 (= e!3092505 (++!12478 (list!18181 (left!41589 (c!844685 totalInput!685))) (list!18181 (right!41919 (c!844685 totalInput!685)))))))

(declare-fun b!4949631 () Bool)

(declare-fun e!3092504 () List!57127)

(assert (=> b!4949631 (= e!3092504 Nil!57003)))

(declare-fun b!4949632 () Bool)

(assert (=> b!4949632 (= e!3092504 e!3092505)))

(declare-fun c!844995 () Bool)

(assert (=> b!4949632 (= c!844995 ((_ is Leaf!24948) (c!844685 totalInput!685)))))

(declare-fun d!1593852 () Bool)

(declare-fun c!844994 () Bool)

(assert (=> d!1593852 (= c!844994 ((_ is Empty!15010) (c!844685 totalInput!685)))))

(assert (=> d!1593852 (= (list!18181 (c!844685 totalInput!685)) e!3092504)))

(declare-fun b!4949633 () Bool)

(assert (=> b!4949633 (= e!3092505 (list!18182 (xs!18336 (c!844685 totalInput!685))))))

(assert (= (and d!1593852 c!844994) b!4949631))

(assert (= (and d!1593852 (not c!844994)) b!4949632))

(assert (= (and b!4949632 c!844995) b!4949633))

(assert (= (and b!4949632 (not c!844995)) b!4949634))

(assert (=> b!4949634 m!5973680))

(assert (=> b!4949634 m!5973670))

(assert (=> b!4949634 m!5973680))

(assert (=> b!4949634 m!5973670))

(declare-fun m!5973920 () Bool)

(assert (=> b!4949634 m!5973920))

(assert (=> b!4949633 m!5973688))

(assert (=> d!1593576 d!1593852))

(declare-fun bs!1182068 () Bool)

(declare-fun d!1593854 () Bool)

(assert (= bs!1182068 (and d!1593854 d!1593572)))

(declare-fun lambda!246872 () Int)

(assert (=> bs!1182068 (= lambda!246872 lambda!246850)))

(assert (=> d!1593854 (= (inv!74282 setElem!28108) (forall!13278 (exprs!3633 setElem!28108) lambda!246872))))

(declare-fun bs!1182069 () Bool)

(assert (= bs!1182069 d!1593854))

(declare-fun m!5973922 () Bool)

(assert (=> bs!1182069 m!5973922))

(assert (=> setNonEmpty!28108 d!1593854))

(declare-fun b!4949638 () Bool)

(declare-fun res!2111867 () Bool)

(declare-fun e!3092506 () Bool)

(assert (=> b!4949638 (=> (not res!2111867) (not e!3092506))))

(assert (=> b!4949638 (= res!2111867 (= (head!10617 (tail!9752 testedP!110)) (head!10617 (tail!9752 lt!2041508))))))

(declare-fun b!4949640 () Bool)

(declare-fun e!3092508 () Bool)

(assert (=> b!4949640 (= e!3092508 (>= (size!37831 (tail!9752 lt!2041508)) (size!37831 (tail!9752 testedP!110))))))

(declare-fun b!4949639 () Bool)

(assert (=> b!4949639 (= e!3092506 (isPrefix!5097 (tail!9752 (tail!9752 testedP!110)) (tail!9752 (tail!9752 lt!2041508))))))

(declare-fun b!4949637 () Bool)

(declare-fun e!3092507 () Bool)

(assert (=> b!4949637 (= e!3092507 e!3092506)))

(declare-fun res!2111869 () Bool)

(assert (=> b!4949637 (=> (not res!2111869) (not e!3092506))))

(assert (=> b!4949637 (= res!2111869 (not ((_ is Nil!57003) (tail!9752 lt!2041508))))))

(declare-fun d!1593856 () Bool)

(assert (=> d!1593856 e!3092508))

(declare-fun res!2111866 () Bool)

(assert (=> d!1593856 (=> res!2111866 e!3092508)))

(declare-fun lt!2042360 () Bool)

(assert (=> d!1593856 (= res!2111866 (not lt!2042360))))

(assert (=> d!1593856 (= lt!2042360 e!3092507)))

(declare-fun res!2111868 () Bool)

(assert (=> d!1593856 (=> res!2111868 e!3092507)))

(assert (=> d!1593856 (= res!2111868 ((_ is Nil!57003) (tail!9752 testedP!110)))))

(assert (=> d!1593856 (= (isPrefix!5097 (tail!9752 testedP!110) (tail!9752 lt!2041508)) lt!2042360)))

(assert (= (and d!1593856 (not res!2111868)) b!4949637))

(assert (= (and b!4949637 res!2111869) b!4949638))

(assert (= (and b!4949638 res!2111867) b!4949639))

(assert (= (and d!1593856 (not res!2111866)) b!4949640))

(assert (=> b!4949638 m!5972558))

(assert (=> b!4949638 m!5973432))

(assert (=> b!4949638 m!5972568))

(declare-fun m!5973924 () Bool)

(assert (=> b!4949638 m!5973924))

(assert (=> b!4949640 m!5972568))

(declare-fun m!5973926 () Bool)

(assert (=> b!4949640 m!5973926))

(assert (=> b!4949640 m!5972558))

(assert (=> b!4949640 m!5973434))

(assert (=> b!4949639 m!5972558))

(assert (=> b!4949639 m!5973436))

(assert (=> b!4949639 m!5972568))

(declare-fun m!5973928 () Bool)

(assert (=> b!4949639 m!5973928))

(assert (=> b!4949639 m!5973436))

(assert (=> b!4949639 m!5973928))

(declare-fun m!5973930 () Bool)

(assert (=> b!4949639 m!5973930))

(assert (=> b!4948752 d!1593856))

(assert (=> b!4948752 d!1593712))

(declare-fun d!1593858 () Bool)

(assert (=> d!1593858 (= (tail!9752 lt!2041508) (t!367673 lt!2041508))))

(assert (=> b!4948752 d!1593858))

(declare-fun d!1593860 () Bool)

(declare-fun e!3092525 () Bool)

(assert (=> d!1593860 e!3092525))

(declare-fun res!2111872 () Bool)

(assert (=> d!1593860 (=> (not res!2111872) (not e!3092525))))

(declare-fun lt!2042383 () List!57130)

(declare-fun noDuplicate!1004 (List!57130) Bool)

(assert (=> d!1593860 (= res!2111872 (noDuplicate!1004 lt!2042383))))

(declare-fun choose!36559 ((InoxSet Context!6266)) List!57130)

(assert (=> d!1593860 (= lt!2042383 (choose!36559 z!3568))))

(assert (=> d!1593860 (= (toList!8004 z!3568) lt!2042383)))

(declare-fun b!4949669 () Bool)

(declare-fun content!10159 (List!57130) (InoxSet Context!6266))

(assert (=> b!4949669 (= e!3092525 (= (content!10159 lt!2042383) z!3568))))

(assert (= (and d!1593860 res!2111872) b!4949669))

(declare-fun m!5973932 () Bool)

(assert (=> d!1593860 m!5973932))

(declare-fun m!5973934 () Bool)

(assert (=> d!1593860 m!5973934))

(declare-fun m!5973936 () Bool)

(assert (=> b!4949669 m!5973936))

(assert (=> bm!345500 d!1593860))

(assert (=> bm!345526 d!1593528))

(declare-fun d!1593862 () Bool)

(declare-fun lt!2042384 () List!57127)

(assert (=> d!1593862 (= (++!12478 (t!367673 testedP!110) lt!2042384) (tail!9752 lt!2041510))))

(declare-fun e!3092526 () List!57127)

(assert (=> d!1593862 (= lt!2042384 e!3092526)))

(declare-fun c!845010 () Bool)

(assert (=> d!1593862 (= c!845010 ((_ is Cons!57003) (t!367673 testedP!110)))))

(assert (=> d!1593862 (>= (size!37831 (tail!9752 lt!2041510)) (size!37831 (t!367673 testedP!110)))))

(assert (=> d!1593862 (= (getSuffix!3079 (tail!9752 lt!2041510) (t!367673 testedP!110)) lt!2042384)))

(declare-fun b!4949670 () Bool)

(assert (=> b!4949670 (= e!3092526 (getSuffix!3079 (tail!9752 (tail!9752 lt!2041510)) (t!367673 (t!367673 testedP!110))))))

(declare-fun b!4949671 () Bool)

(assert (=> b!4949671 (= e!3092526 (tail!9752 lt!2041510))))

(assert (= (and d!1593862 c!845010) b!4949670))

(assert (= (and d!1593862 (not c!845010)) b!4949671))

(declare-fun m!5973938 () Bool)

(assert (=> d!1593862 m!5973938))

(assert (=> d!1593862 m!5972560))

(assert (=> d!1593862 m!5973142))

(assert (=> d!1593862 m!5972552))

(assert (=> b!4949670 m!5972560))

(assert (=> b!4949670 m!5973144))

(assert (=> b!4949670 m!5973144))

(declare-fun m!5973940 () Bool)

(assert (=> b!4949670 m!5973940))

(assert (=> b!4948978 d!1593862))

(assert (=> b!4948978 d!1593604))

(declare-fun b!4949680 () Bool)

(declare-fun e!3092531 () List!57127)

(assert (=> b!4949680 (= e!3092531 testedSuffix!70)))

(declare-fun b!4949683 () Bool)

(declare-fun lt!2042389 () List!57127)

(declare-fun e!3092532 () Bool)

(assert (=> b!4949683 (= e!3092532 (or (not (= testedSuffix!70 Nil!57003)) (= lt!2042389 (t!367673 testedP!110))))))

(declare-fun b!4949681 () Bool)

(assert (=> b!4949681 (= e!3092531 (Cons!57003 (h!63451 (t!367673 testedP!110)) (++!12478 (t!367673 (t!367673 testedP!110)) testedSuffix!70)))))

(declare-fun d!1593864 () Bool)

(assert (=> d!1593864 e!3092532))

(declare-fun res!2111873 () Bool)

(assert (=> d!1593864 (=> (not res!2111873) (not e!3092532))))

(assert (=> d!1593864 (= res!2111873 (= (content!10157 lt!2042389) ((_ map or) (content!10157 (t!367673 testedP!110)) (content!10157 testedSuffix!70))))))

(assert (=> d!1593864 (= lt!2042389 e!3092531)))

(declare-fun c!845015 () Bool)

(assert (=> d!1593864 (= c!845015 ((_ is Nil!57003) (t!367673 testedP!110)))))

(assert (=> d!1593864 (= (++!12478 (t!367673 testedP!110) testedSuffix!70) lt!2042389)))

(declare-fun b!4949682 () Bool)

(declare-fun res!2111874 () Bool)

(assert (=> b!4949682 (=> (not res!2111874) (not e!3092532))))

(assert (=> b!4949682 (= res!2111874 (= (size!37831 lt!2042389) (+ (size!37831 (t!367673 testedP!110)) (size!37831 testedSuffix!70))))))

(assert (= (and d!1593864 c!845015) b!4949680))

(assert (= (and d!1593864 (not c!845015)) b!4949681))

(assert (= (and d!1593864 res!2111873) b!4949682))

(assert (= (and b!4949682 res!2111874) b!4949683))

(declare-fun m!5973942 () Bool)

(assert (=> b!4949681 m!5973942))

(declare-fun m!5973944 () Bool)

(assert (=> d!1593864 m!5973944))

(assert (=> d!1593864 m!5973768))

(assert (=> d!1593864 m!5973058))

(declare-fun m!5973946 () Bool)

(assert (=> b!4949682 m!5973946))

(assert (=> b!4949682 m!5972552))

(assert (=> b!4949682 m!5973062))

(assert (=> b!4949116 d!1593864))

(declare-fun d!1593866 () Bool)

(assert (=> d!1593866 (= (isEmpty!30671 (getLanguageWitness!693 z!3568)) (not ((_ is Some!14221) (getLanguageWitness!693 z!3568))))))

(assert (=> d!1593486 d!1593866))

(declare-fun bs!1182070 () Bool)

(declare-fun d!1593868 () Bool)

(assert (= bs!1182070 (and d!1593868 d!1593702)))

(declare-fun lambda!246879 () Int)

(assert (=> bs!1182070 (not (= lambda!246879 lambda!246857))))

(declare-fun bs!1182071 () Bool)

(assert (= bs!1182071 (and d!1593868 d!1593518)))

(assert (=> bs!1182071 (not (= lambda!246879 lambda!246847))))

(declare-fun bs!1182072 () Bool)

(assert (= bs!1182072 (and d!1593868 d!1593486)))

(assert (=> bs!1182072 (not (= lambda!246879 lambda!246827))))

(declare-fun bs!1182073 () Bool)

(assert (= bs!1182073 (and d!1593868 b!4948969)))

(assert (=> bs!1182073 (= lambda!246879 lambda!246829)))

(declare-fun bs!1182074 () Bool)

(assert (= bs!1182074 (and d!1593868 b!4948968)))

(assert (=> bs!1182074 (= lambda!246879 lambda!246828)))

(declare-fun lt!2042392 () Option!14222)

(declare-fun isDefined!11183 (Option!14222) Bool)

(assert (=> d!1593868 (= (isDefined!11183 lt!2042392) (exists!1346 z!3568 lambda!246879))))

(declare-fun e!3092541 () Option!14222)

(assert (=> d!1593868 (= lt!2042392 e!3092541)))

(declare-fun c!845028 () Bool)

(assert (=> d!1593868 (= c!845028 (exists!1346 z!3568 lambda!246879))))

(assert (=> d!1593868 (= (getLanguageWitness!693 z!3568) lt!2042392)))

(declare-fun b!4949700 () Bool)

(declare-fun getLanguageWitness!695 (Context!6266) Option!14222)

(declare-fun getWitness!649 ((InoxSet Context!6266) Int) Context!6266)

(assert (=> b!4949700 (= e!3092541 (getLanguageWitness!695 (getWitness!649 z!3568 lambda!246879)))))

(declare-fun b!4949701 () Bool)

(assert (=> b!4949701 (= e!3092541 None!14221)))

(assert (= (and d!1593868 c!845028) b!4949700))

(assert (= (and d!1593868 (not c!845028)) b!4949701))

(declare-fun m!5973948 () Bool)

(assert (=> d!1593868 m!5973948))

(declare-fun m!5973950 () Bool)

(assert (=> d!1593868 m!5973950))

(assert (=> d!1593868 m!5973950))

(declare-fun m!5973952 () Bool)

(assert (=> b!4949700 m!5973952))

(assert (=> b!4949700 m!5973952))

(declare-fun m!5973954 () Bool)

(assert (=> b!4949700 m!5973954))

(assert (=> d!1593486 d!1593868))

(declare-fun d!1593870 () Bool)

(declare-fun lt!2042395 () Bool)

(assert (=> d!1593870 (= lt!2042395 (forall!13280 (toList!8004 z!3568) lambda!246827))))

(declare-fun choose!36560 ((InoxSet Context!6266) Int) Bool)

(assert (=> d!1593870 (= lt!2042395 (choose!36560 z!3568 lambda!246827))))

(assert (=> d!1593870 (= (forall!13277 z!3568 lambda!246827) lt!2042395)))

(declare-fun bs!1182075 () Bool)

(assert (= bs!1182075 d!1593870))

(assert (=> bs!1182075 m!5972878))

(assert (=> bs!1182075 m!5972878))

(declare-fun m!5973956 () Bool)

(assert (=> bs!1182075 m!5973956))

(declare-fun m!5973958 () Bool)

(assert (=> bs!1182075 m!5973958))

(assert (=> d!1593486 d!1593870))

(declare-fun d!1593872 () Bool)

(declare-fun c!845029 () Bool)

(assert (=> d!1593872 (= c!845029 ((_ is Nil!57003) lt!2041975))))

(declare-fun e!3092542 () (InoxSet C!27232))

(assert (=> d!1593872 (= (content!10157 lt!2041975) e!3092542)))

(declare-fun b!4949702 () Bool)

(assert (=> b!4949702 (= e!3092542 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949703 () Bool)

(assert (=> b!4949703 (= e!3092542 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2041975) true) (content!10157 (t!367673 lt!2041975))))))

(assert (= (and d!1593872 c!845029) b!4949702))

(assert (= (and d!1593872 (not c!845029)) b!4949703))

(declare-fun m!5973960 () Bool)

(assert (=> b!4949703 m!5973960))

(declare-fun m!5973962 () Bool)

(assert (=> b!4949703 m!5973962))

(assert (=> d!1593530 d!1593872))

(assert (=> d!1593530 d!1593808))

(declare-fun d!1593874 () Bool)

(declare-fun c!845030 () Bool)

(assert (=> d!1593874 (= c!845030 ((_ is Nil!57003) (Cons!57003 lt!2041491 Nil!57003)))))

(declare-fun e!3092543 () (InoxSet C!27232))

(assert (=> d!1593874 (= (content!10157 (Cons!57003 lt!2041491 Nil!57003)) e!3092543)))

(declare-fun b!4949704 () Bool)

(assert (=> b!4949704 (= e!3092543 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949705 () Bool)

(assert (=> b!4949705 (= e!3092543 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 (Cons!57003 lt!2041491 Nil!57003)) true) (content!10157 (t!367673 (Cons!57003 lt!2041491 Nil!57003)))))))

(assert (= (and d!1593874 c!845030) b!4949704))

(assert (= (and d!1593874 (not c!845030)) b!4949705))

(declare-fun m!5973964 () Bool)

(assert (=> b!4949705 m!5973964))

(declare-fun m!5973966 () Bool)

(assert (=> b!4949705 m!5973966))

(assert (=> d!1593530 d!1593874))

(assert (=> d!1593440 d!1593442))

(declare-fun d!1593876 () Bool)

(assert (=> d!1593876 (isPrefix!5097 lt!2041510 lt!2041510)))

(assert (=> d!1593876 true))

(declare-fun _$45!2248 () Unit!147830)

(assert (=> d!1593876 (= (choose!36537 lt!2041510 lt!2041510) _$45!2248)))

(declare-fun bs!1182076 () Bool)

(assert (= bs!1182076 d!1593876))

(assert (=> bs!1182076 m!5972516))

(assert (=> d!1593440 d!1593876))

(declare-fun b!4949709 () Bool)

(declare-fun e!3092545 () List!57127)

(assert (=> b!4949709 (= e!3092545 (++!12478 (list!18181 (left!41589 (c!844685 (_2!34091 lt!2041490)))) (list!18181 (right!41919 (c!844685 (_2!34091 lt!2041490))))))))

(declare-fun b!4949706 () Bool)

(declare-fun e!3092544 () List!57127)

(assert (=> b!4949706 (= e!3092544 Nil!57003)))

(declare-fun b!4949707 () Bool)

(assert (=> b!4949707 (= e!3092544 e!3092545)))

(declare-fun c!845032 () Bool)

(assert (=> b!4949707 (= c!845032 ((_ is Leaf!24948) (c!844685 (_2!34091 lt!2041490))))))

(declare-fun d!1593878 () Bool)

(declare-fun c!845031 () Bool)

(assert (=> d!1593878 (= c!845031 ((_ is Empty!15010) (c!844685 (_2!34091 lt!2041490))))))

(assert (=> d!1593878 (= (list!18181 (c!844685 (_2!34091 lt!2041490))) e!3092544)))

(declare-fun b!4949708 () Bool)

(assert (=> b!4949708 (= e!3092545 (list!18182 (xs!18336 (c!844685 (_2!34091 lt!2041490)))))))

(assert (= (and d!1593878 c!845031) b!4949706))

(assert (= (and d!1593878 (not c!845031)) b!4949707))

(assert (= (and b!4949707 c!845032) b!4949708))

(assert (= (and b!4949707 (not c!845032)) b!4949709))

(declare-fun m!5973968 () Bool)

(assert (=> b!4949709 m!5973968))

(declare-fun m!5973970 () Bool)

(assert (=> b!4949709 m!5973970))

(assert (=> b!4949709 m!5973968))

(assert (=> b!4949709 m!5973970))

(declare-fun m!5973972 () Bool)

(assert (=> b!4949709 m!5973972))

(declare-fun m!5973974 () Bool)

(assert (=> b!4949708 m!5973974))

(assert (=> d!1593592 d!1593878))

(assert (=> bm!345466 d!1593654))

(declare-fun d!1593880 () Bool)

(declare-fun c!845033 () Bool)

(assert (=> d!1593880 (= c!845033 ((_ is Nil!57003) lt!2041974))))

(declare-fun e!3092546 () (InoxSet C!27232))

(assert (=> d!1593880 (= (content!10157 lt!2041974) e!3092546)))

(declare-fun b!4949710 () Bool)

(assert (=> b!4949710 (= e!3092546 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949711 () Bool)

(assert (=> b!4949711 (= e!3092546 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2041974) true) (content!10157 (t!367673 lt!2041974))))))

(assert (= (and d!1593880 c!845033) b!4949710))

(assert (= (and d!1593880 (not c!845033)) b!4949711))

(declare-fun m!5973976 () Bool)

(assert (=> b!4949711 m!5973976))

(declare-fun m!5973978 () Bool)

(assert (=> b!4949711 m!5973978))

(assert (=> d!1593526 d!1593880))

(declare-fun d!1593882 () Bool)

(declare-fun c!845036 () Bool)

(assert (=> d!1593882 (= c!845036 ((_ is Nil!57003) lt!2041496))))

(declare-fun e!3092549 () (InoxSet C!27232))

(assert (=> d!1593882 (= (content!10157 lt!2041496) e!3092549)))

(declare-fun b!4949712 () Bool)

(assert (=> b!4949712 (= e!3092549 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949713 () Bool)

(assert (=> b!4949713 (= e!3092549 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2041496) true) (content!10157 (t!367673 lt!2041496))))))

(assert (= (and d!1593882 c!845036) b!4949712))

(assert (= (and d!1593882 (not c!845036)) b!4949713))

(declare-fun m!5973980 () Bool)

(assert (=> b!4949713 m!5973980))

(declare-fun m!5973982 () Bool)

(assert (=> b!4949713 m!5973982))

(assert (=> d!1593526 d!1593882))

(declare-fun d!1593884 () Bool)

(declare-fun c!845046 () Bool)

(assert (=> d!1593884 (= c!845046 ((_ is Nil!57003) lt!2041504))))

(declare-fun e!3092560 () (InoxSet C!27232))

(assert (=> d!1593884 (= (content!10157 lt!2041504) e!3092560)))

(declare-fun b!4949738 () Bool)

(assert (=> b!4949738 (= e!3092560 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949739 () Bool)

(assert (=> b!4949739 (= e!3092560 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2041504) true) (content!10157 (t!367673 lt!2041504))))))

(assert (= (and d!1593884 c!845046) b!4949738))

(assert (= (and d!1593884 (not c!845046)) b!4949739))

(declare-fun m!5973984 () Bool)

(assert (=> b!4949739 m!5973984))

(declare-fun m!5973986 () Bool)

(assert (=> b!4949739 m!5973986))

(assert (=> d!1593526 d!1593884))

(assert (=> b!4949163 d!1593432))

(assert (=> b!4949163 d!1593514))

(assert (=> b!4949163 d!1593510))

(declare-fun b!4949740 () Bool)

(declare-fun e!3092561 () List!57127)

(assert (=> b!4949740 (= e!3092561 (Cons!57003 (head!10617 testedSuffix!70) Nil!57003))))

(declare-fun b!4949743 () Bool)

(declare-fun e!3092562 () Bool)

(declare-fun lt!2042409 () List!57127)

(assert (=> b!4949743 (= e!3092562 (or (not (= (Cons!57003 (head!10617 testedSuffix!70) Nil!57003) Nil!57003)) (= lt!2042409 testedP!110)))))

(declare-fun b!4949741 () Bool)

(assert (=> b!4949741 (= e!3092561 (Cons!57003 (h!63451 testedP!110) (++!12478 (t!367673 testedP!110) (Cons!57003 (head!10617 testedSuffix!70) Nil!57003))))))

(declare-fun d!1593886 () Bool)

(assert (=> d!1593886 e!3092562))

(declare-fun res!2111881 () Bool)

(assert (=> d!1593886 (=> (not res!2111881) (not e!3092562))))

(assert (=> d!1593886 (= res!2111881 (= (content!10157 lt!2042409) ((_ map or) (content!10157 testedP!110) (content!10157 (Cons!57003 (head!10617 testedSuffix!70) Nil!57003)))))))

(assert (=> d!1593886 (= lt!2042409 e!3092561)))

(declare-fun c!845047 () Bool)

(assert (=> d!1593886 (= c!845047 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593886 (= (++!12478 testedP!110 (Cons!57003 (head!10617 testedSuffix!70) Nil!57003)) lt!2042409)))

(declare-fun b!4949742 () Bool)

(declare-fun res!2111882 () Bool)

(assert (=> b!4949742 (=> (not res!2111882) (not e!3092562))))

(assert (=> b!4949742 (= res!2111882 (= (size!37831 lt!2042409) (+ (size!37831 testedP!110) (size!37831 (Cons!57003 (head!10617 testedSuffix!70) Nil!57003)))))))

(assert (= (and d!1593886 c!845047) b!4949740))

(assert (= (and d!1593886 (not c!845047)) b!4949741))

(assert (= (and d!1593886 res!2111881) b!4949742))

(assert (= (and b!4949742 res!2111882) b!4949743))

(declare-fun m!5973988 () Bool)

(assert (=> b!4949741 m!5973988))

(declare-fun m!5973990 () Bool)

(assert (=> d!1593886 m!5973990))

(assert (=> d!1593886 m!5972934))

(declare-fun m!5973992 () Bool)

(assert (=> d!1593886 m!5973992))

(declare-fun m!5973994 () Bool)

(assert (=> b!4949742 m!5973994))

(assert (=> b!4949742 m!5972486))

(declare-fun m!5973996 () Bool)

(assert (=> b!4949742 m!5973996))

(assert (=> b!4949163 d!1593886))

(assert (=> b!4949163 d!1593554))

(assert (=> b!4949163 d!1593814))

(declare-fun b!4949744 () Bool)

(declare-fun e!3092563 () List!57127)

(assert (=> b!4949744 (= e!3092563 (Cons!57003 lt!2042090 Nil!57003))))

(declare-fun e!3092564 () Bool)

(declare-fun b!4949747 () Bool)

(declare-fun lt!2042410 () List!57127)

(assert (=> b!4949747 (= e!3092564 (or (not (= (Cons!57003 lt!2042090 Nil!57003) Nil!57003)) (= lt!2042410 testedP!110)))))

(declare-fun b!4949745 () Bool)

(assert (=> b!4949745 (= e!3092563 (Cons!57003 (h!63451 testedP!110) (++!12478 (t!367673 testedP!110) (Cons!57003 lt!2042090 Nil!57003))))))

(declare-fun d!1593888 () Bool)

(assert (=> d!1593888 e!3092564))

(declare-fun res!2111883 () Bool)

(assert (=> d!1593888 (=> (not res!2111883) (not e!3092564))))

(assert (=> d!1593888 (= res!2111883 (= (content!10157 lt!2042410) ((_ map or) (content!10157 testedP!110) (content!10157 (Cons!57003 lt!2042090 Nil!57003)))))))

(assert (=> d!1593888 (= lt!2042410 e!3092563)))

(declare-fun c!845048 () Bool)

(assert (=> d!1593888 (= c!845048 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593888 (= (++!12478 testedP!110 (Cons!57003 lt!2042090 Nil!57003)) lt!2042410)))

(declare-fun b!4949746 () Bool)

(declare-fun res!2111884 () Bool)

(assert (=> b!4949746 (=> (not res!2111884) (not e!3092564))))

(assert (=> b!4949746 (= res!2111884 (= (size!37831 lt!2042410) (+ (size!37831 testedP!110) (size!37831 (Cons!57003 lt!2042090 Nil!57003)))))))

(assert (= (and d!1593888 c!845048) b!4949744))

(assert (= (and d!1593888 (not c!845048)) b!4949745))

(assert (= (and d!1593888 res!2111883) b!4949746))

(assert (= (and b!4949746 res!2111884) b!4949747))

(declare-fun m!5973998 () Bool)

(assert (=> b!4949745 m!5973998))

(declare-fun m!5974000 () Bool)

(assert (=> d!1593888 m!5974000))

(assert (=> d!1593888 m!5972934))

(declare-fun m!5974002 () Bool)

(assert (=> d!1593888 m!5974002))

(declare-fun m!5974004 () Bool)

(assert (=> b!4949746 m!5974004))

(assert (=> b!4949746 m!5972486))

(declare-fun m!5974006 () Bool)

(assert (=> b!4949746 m!5974006))

(assert (=> b!4949163 d!1593888))

(assert (=> b!4949163 d!1593818))

(assert (=> b!4949163 d!1593584))

(assert (=> b!4949163 d!1593528))

(assert (=> b!4949163 d!1593582))

(assert (=> b!4949163 d!1593816))

(declare-fun d!1593890 () Bool)

(assert (=> d!1593890 (= (++!12478 (++!12478 testedP!110 (Cons!57003 lt!2042090 Nil!57003)) lt!2042083) lt!2041510)))

(declare-fun lt!2042411 () Unit!147830)

(assert (=> d!1593890 (= lt!2042411 (choose!36544 testedP!110 lt!2042090 lt!2042083 lt!2041510))))

(assert (=> d!1593890 (= (++!12478 testedP!110 (Cons!57003 lt!2042090 lt!2042083)) lt!2041510)))

(assert (=> d!1593890 (= (lemmaMoveElementToOtherListKeepsConcatEq!1436 testedP!110 lt!2042090 lt!2042083 lt!2041510) lt!2042411)))

(declare-fun bs!1182077 () Bool)

(assert (= bs!1182077 d!1593890))

(assert (=> bs!1182077 m!5973124))

(assert (=> bs!1182077 m!5973124))

(assert (=> bs!1182077 m!5973126))

(declare-fun m!5974008 () Bool)

(assert (=> bs!1182077 m!5974008))

(declare-fun m!5974010 () Bool)

(assert (=> bs!1182077 m!5974010))

(assert (=> b!4949163 d!1593890))

(declare-fun b!4949748 () Bool)

(declare-fun e!3092565 () List!57127)

(assert (=> b!4949748 (= e!3092565 lt!2042083)))

(declare-fun e!3092566 () Bool)

(declare-fun lt!2042412 () List!57127)

(declare-fun b!4949751 () Bool)

(assert (=> b!4949751 (= e!3092566 (or (not (= lt!2042083 Nil!57003)) (= lt!2042412 (++!12478 testedP!110 (Cons!57003 lt!2042090 Nil!57003)))))))

(declare-fun b!4949749 () Bool)

(assert (=> b!4949749 (= e!3092565 (Cons!57003 (h!63451 (++!12478 testedP!110 (Cons!57003 lt!2042090 Nil!57003))) (++!12478 (t!367673 (++!12478 testedP!110 (Cons!57003 lt!2042090 Nil!57003))) lt!2042083)))))

(declare-fun d!1593892 () Bool)

(assert (=> d!1593892 e!3092566))

(declare-fun res!2111885 () Bool)

(assert (=> d!1593892 (=> (not res!2111885) (not e!3092566))))

(assert (=> d!1593892 (= res!2111885 (= (content!10157 lt!2042412) ((_ map or) (content!10157 (++!12478 testedP!110 (Cons!57003 lt!2042090 Nil!57003))) (content!10157 lt!2042083))))))

(assert (=> d!1593892 (= lt!2042412 e!3092565)))

(declare-fun c!845049 () Bool)

(assert (=> d!1593892 (= c!845049 ((_ is Nil!57003) (++!12478 testedP!110 (Cons!57003 lt!2042090 Nil!57003))))))

(assert (=> d!1593892 (= (++!12478 (++!12478 testedP!110 (Cons!57003 lt!2042090 Nil!57003)) lt!2042083) lt!2042412)))

(declare-fun b!4949750 () Bool)

(declare-fun res!2111886 () Bool)

(assert (=> b!4949750 (=> (not res!2111886) (not e!3092566))))

(assert (=> b!4949750 (= res!2111886 (= (size!37831 lt!2042412) (+ (size!37831 (++!12478 testedP!110 (Cons!57003 lt!2042090 Nil!57003))) (size!37831 lt!2042083))))))

(assert (= (and d!1593892 c!845049) b!4949748))

(assert (= (and d!1593892 (not c!845049)) b!4949749))

(assert (= (and d!1593892 res!2111885) b!4949750))

(assert (= (and b!4949750 res!2111886) b!4949751))

(declare-fun m!5974024 () Bool)

(assert (=> b!4949749 m!5974024))

(declare-fun m!5974026 () Bool)

(assert (=> d!1593892 m!5974026))

(assert (=> d!1593892 m!5973124))

(declare-fun m!5974030 () Bool)

(assert (=> d!1593892 m!5974030))

(declare-fun m!5974032 () Bool)

(assert (=> d!1593892 m!5974032))

(declare-fun m!5974034 () Bool)

(assert (=> b!4949750 m!5974034))

(assert (=> b!4949750 m!5973124))

(declare-fun m!5974038 () Bool)

(assert (=> b!4949750 m!5974038))

(declare-fun m!5974040 () Bool)

(assert (=> b!4949750 m!5974040))

(assert (=> b!4949163 d!1593892))

(declare-fun d!1593894 () Bool)

(declare-fun lt!2042413 () Int)

(assert (=> d!1593894 (>= lt!2042413 0)))

(declare-fun e!3092567 () Int)

(assert (=> d!1593894 (= lt!2042413 e!3092567)))

(declare-fun c!845050 () Bool)

(assert (=> d!1593894 (= c!845050 ((_ is Nil!57003) (list!18179 totalInput!685)))))

(assert (=> d!1593894 (= (size!37831 (list!18179 totalInput!685)) lt!2042413)))

(declare-fun b!4949752 () Bool)

(assert (=> b!4949752 (= e!3092567 0)))

(declare-fun b!4949753 () Bool)

(assert (=> b!4949753 (= e!3092567 (+ 1 (size!37831 (t!367673 (list!18179 totalInput!685)))))))

(assert (= (and d!1593894 c!845050) b!4949752))

(assert (= (and d!1593894 (not c!845050)) b!4949753))

(declare-fun m!5974052 () Bool)

(assert (=> b!4949753 m!5974052))

(assert (=> d!1593588 d!1593894))

(assert (=> d!1593588 d!1593576))

(declare-fun d!1593896 () Bool)

(declare-fun lt!2042416 () Int)

(assert (=> d!1593896 (= lt!2042416 (size!37831 (list!18181 (c!844685 totalInput!685))))))

(assert (=> d!1593896 (= lt!2042416 (ite ((_ is Empty!15010) (c!844685 totalInput!685)) 0 (ite ((_ is Leaf!24948) (c!844685 totalInput!685)) (csize!30251 (c!844685 totalInput!685)) (csize!30250 (c!844685 totalInput!685)))))))

(assert (=> d!1593896 (= (size!37834 (c!844685 totalInput!685)) lt!2042416)))

(declare-fun bs!1182078 () Bool)

(assert (= bs!1182078 d!1593896))

(assert (=> bs!1182078 m!5973052))

(assert (=> bs!1182078 m!5973052))

(declare-fun m!5974078 () Bool)

(assert (=> bs!1182078 m!5974078))

(assert (=> d!1593588 d!1593896))

(declare-fun b!4949760 () Bool)

(declare-fun e!3092570 () List!57127)

(assert (=> b!4949760 (= e!3092570 lt!2041504)))

(declare-fun e!3092571 () Bool)

(declare-fun lt!2042417 () List!57127)

(declare-fun b!4949763 () Bool)

(assert (=> b!4949763 (= e!3092571 (or (not (= lt!2041504 Nil!57003)) (= lt!2042417 (t!367673 lt!2041496))))))

(declare-fun b!4949761 () Bool)

(assert (=> b!4949761 (= e!3092570 (Cons!57003 (h!63451 (t!367673 lt!2041496)) (++!12478 (t!367673 (t!367673 lt!2041496)) lt!2041504)))))

(declare-fun d!1593908 () Bool)

(assert (=> d!1593908 e!3092571))

(declare-fun res!2111893 () Bool)

(assert (=> d!1593908 (=> (not res!2111893) (not e!3092571))))

(assert (=> d!1593908 (= res!2111893 (= (content!10157 lt!2042417) ((_ map or) (content!10157 (t!367673 lt!2041496)) (content!10157 lt!2041504))))))

(assert (=> d!1593908 (= lt!2042417 e!3092570)))

(declare-fun c!845051 () Bool)

(assert (=> d!1593908 (= c!845051 ((_ is Nil!57003) (t!367673 lt!2041496)))))

(assert (=> d!1593908 (= (++!12478 (t!367673 lt!2041496) lt!2041504) lt!2042417)))

(declare-fun b!4949762 () Bool)

(declare-fun res!2111894 () Bool)

(assert (=> b!4949762 (=> (not res!2111894) (not e!3092571))))

(assert (=> b!4949762 (= res!2111894 (= (size!37831 lt!2042417) (+ (size!37831 (t!367673 lt!2041496)) (size!37831 lt!2041504))))))

(assert (= (and d!1593908 c!845051) b!4949760))

(assert (= (and d!1593908 (not c!845051)) b!4949761))

(assert (= (and d!1593908 res!2111893) b!4949762))

(assert (= (and b!4949762 res!2111894) b!4949763))

(declare-fun m!5974080 () Bool)

(assert (=> b!4949761 m!5974080))

(declare-fun m!5974082 () Bool)

(assert (=> d!1593908 m!5974082))

(assert (=> d!1593908 m!5973982))

(assert (=> d!1593908 m!5972948))

(declare-fun m!5974084 () Bool)

(assert (=> b!4949762 m!5974084))

(assert (=> b!4949762 m!5973302))

(assert (=> b!4949762 m!5972952))

(assert (=> b!4949001 d!1593908))

(assert (=> bm!345530 d!1593442))

(declare-fun d!1593910 () Bool)

(declare-fun lt!2042418 () Int)

(assert (=> d!1593910 (>= lt!2042418 0)))

(declare-fun e!3092572 () Int)

(assert (=> d!1593910 (= lt!2042418 e!3092572)))

(declare-fun c!845052 () Bool)

(assert (=> d!1593910 (= c!845052 ((_ is Nil!57003) lt!2042016))))

(assert (=> d!1593910 (= (size!37831 lt!2042016) lt!2042418)))

(declare-fun b!4949764 () Bool)

(assert (=> b!4949764 (= e!3092572 0)))

(declare-fun b!4949765 () Bool)

(assert (=> b!4949765 (= e!3092572 (+ 1 (size!37831 (t!367673 lt!2042016))))))

(assert (= (and d!1593910 c!845052) b!4949764))

(assert (= (and d!1593910 (not c!845052)) b!4949765))

(declare-fun m!5974086 () Bool)

(assert (=> b!4949765 m!5974086))

(assert (=> b!4949123 d!1593910))

(declare-fun d!1593912 () Bool)

(declare-fun lt!2042419 () Int)

(assert (=> d!1593912 (>= lt!2042419 0)))

(declare-fun e!3092573 () Int)

(assert (=> d!1593912 (= lt!2042419 e!3092573)))

(declare-fun c!845053 () Bool)

(assert (=> d!1593912 (= c!845053 ((_ is Nil!57003) lt!2041506))))

(assert (=> d!1593912 (= (size!37831 lt!2041506) lt!2042419)))

(declare-fun b!4949766 () Bool)

(assert (=> b!4949766 (= e!3092573 0)))

(declare-fun b!4949767 () Bool)

(assert (=> b!4949767 (= e!3092573 (+ 1 (size!37831 (t!367673 lt!2041506))))))

(assert (= (and d!1593912 c!845053) b!4949766))

(assert (= (and d!1593912 (not c!845053)) b!4949767))

(declare-fun m!5974088 () Bool)

(assert (=> b!4949767 m!5974088))

(assert (=> b!4949123 d!1593912))

(declare-fun d!1593914 () Bool)

(declare-fun lt!2042420 () Int)

(assert (=> d!1593914 (>= lt!2042420 0)))

(declare-fun e!3092574 () Int)

(assert (=> d!1593914 (= lt!2042420 e!3092574)))

(declare-fun c!845054 () Bool)

(assert (=> d!1593914 (= c!845054 ((_ is Nil!57003) lt!2041502))))

(assert (=> d!1593914 (= (size!37831 lt!2041502) lt!2042420)))

(declare-fun b!4949768 () Bool)

(assert (=> b!4949768 (= e!3092574 0)))

(declare-fun b!4949769 () Bool)

(assert (=> b!4949769 (= e!3092574 (+ 1 (size!37831 (t!367673 lt!2041502))))))

(assert (= (and d!1593914 c!845054) b!4949768))

(assert (= (and d!1593914 (not c!845054)) b!4949769))

(declare-fun m!5974090 () Bool)

(assert (=> b!4949769 m!5974090))

(assert (=> b!4949123 d!1593914))

(assert (=> b!4949057 d!1593582))

(declare-fun bs!1182080 () Bool)

(declare-fun d!1593916 () Bool)

(assert (= bs!1182080 (and d!1593916 d!1593450)))

(declare-fun lambda!246880 () Int)

(assert (=> bs!1182080 (= (= call!345534 lt!2041491) (= lambda!246880 lambda!246811))))

(declare-fun bs!1182081 () Bool)

(assert (= bs!1182081 (and d!1593916 d!1593838)))

(assert (=> bs!1182081 (= (= call!345534 call!345464) (= lambda!246880 lambda!246871))))

(assert (=> d!1593916 true))

(assert (=> d!1593916 (= (derivationStepZipper!613 z!3568 call!345534) (flatMap!276 z!3568 lambda!246880))))

(declare-fun bs!1182082 () Bool)

(assert (= bs!1182082 d!1593916))

(declare-fun m!5974092 () Bool)

(assert (=> bs!1182082 m!5974092))

(assert (=> bm!345532 d!1593916))

(declare-fun b!4949774 () Bool)

(declare-fun e!3092577 () List!57127)

(assert (=> b!4949774 (= e!3092577 lt!2041944)))

(declare-fun e!3092578 () Bool)

(declare-fun b!4949777 () Bool)

(declare-fun lt!2042422 () List!57127)

(assert (=> b!4949777 (= e!3092578 (or (not (= lt!2041944 Nil!57003)) (= lt!2042422 testedP!110)))))

(declare-fun b!4949775 () Bool)

(assert (=> b!4949775 (= e!3092577 (Cons!57003 (h!63451 testedP!110) (++!12478 (t!367673 testedP!110) lt!2041944)))))

(declare-fun d!1593920 () Bool)

(assert (=> d!1593920 e!3092578))

(declare-fun res!2111897 () Bool)

(assert (=> d!1593920 (=> (not res!2111897) (not e!3092578))))

(assert (=> d!1593920 (= res!2111897 (= (content!10157 lt!2042422) ((_ map or) (content!10157 testedP!110) (content!10157 lt!2041944))))))

(assert (=> d!1593920 (= lt!2042422 e!3092577)))

(declare-fun c!845056 () Bool)

(assert (=> d!1593920 (= c!845056 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593920 (= (++!12478 testedP!110 lt!2041944) lt!2042422)))

(declare-fun b!4949776 () Bool)

(declare-fun res!2111898 () Bool)

(assert (=> b!4949776 (=> (not res!2111898) (not e!3092578))))

(assert (=> b!4949776 (= res!2111898 (= (size!37831 lt!2042422) (+ (size!37831 testedP!110) (size!37831 lt!2041944))))))

(assert (= (and d!1593920 c!845056) b!4949774))

(assert (= (and d!1593920 (not c!845056)) b!4949775))

(assert (= (and d!1593920 res!2111897) b!4949776))

(assert (= (and b!4949776 res!2111898) b!4949777))

(declare-fun m!5974100 () Bool)

(assert (=> b!4949775 m!5974100))

(declare-fun m!5974104 () Bool)

(assert (=> d!1593920 m!5974104))

(assert (=> d!1593920 m!5972934))

(declare-fun m!5974106 () Bool)

(assert (=> d!1593920 m!5974106))

(declare-fun m!5974110 () Bool)

(assert (=> b!4949776 m!5974110))

(assert (=> b!4949776 m!5972486))

(declare-fun m!5974112 () Bool)

(assert (=> b!4949776 m!5974112))

(assert (=> d!1593510 d!1593920))

(assert (=> d!1593510 d!1593582))

(assert (=> d!1593510 d!1593432))

(declare-fun d!1593924 () Bool)

(declare-fun lt!2042424 () Int)

(assert (=> d!1593924 (>= lt!2042424 0)))

(declare-fun e!3092582 () Int)

(assert (=> d!1593924 (= lt!2042424 e!3092582)))

(declare-fun c!845057 () Bool)

(assert (=> d!1593924 (= c!845057 ((_ is Nil!57003) (t!367673 (_1!34090 (findLongestMatchInnerZipper!80 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2041510 totalInputSize!132)))))))

(assert (=> d!1593924 (= (size!37831 (t!367673 (_1!34090 (findLongestMatchInnerZipper!80 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2041510 totalInputSize!132)))) lt!2042424)))

(declare-fun b!4949782 () Bool)

(assert (=> b!4949782 (= e!3092582 0)))

(declare-fun b!4949783 () Bool)

(assert (=> b!4949783 (= e!3092582 (+ 1 (size!37831 (t!367673 (t!367673 (_1!34090 (findLongestMatchInnerZipper!80 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2041510 totalInputSize!132)))))))))

(assert (= (and d!1593924 c!845057) b!4949782))

(assert (= (and d!1593924 (not c!845057)) b!4949783))

(declare-fun m!5974114 () Bool)

(assert (=> b!4949783 m!5974114))

(assert (=> b!4949132 d!1593924))

(declare-fun b!4949784 () Bool)

(declare-fun e!3092583 () List!57127)

(assert (=> b!4949784 (= e!3092583 (Cons!57003 lt!2041491 Nil!57003))))

(declare-fun lt!2042425 () List!57127)

(declare-fun b!4949787 () Bool)

(declare-fun e!3092584 () Bool)

(assert (=> b!4949787 (= e!3092584 (or (not (= (Cons!57003 lt!2041491 Nil!57003) Nil!57003)) (= lt!2042425 (t!367673 testedP!110))))))

(declare-fun b!4949785 () Bool)

(assert (=> b!4949785 (= e!3092583 (Cons!57003 (h!63451 (t!367673 testedP!110)) (++!12478 (t!367673 (t!367673 testedP!110)) (Cons!57003 lt!2041491 Nil!57003))))))

(declare-fun d!1593926 () Bool)

(assert (=> d!1593926 e!3092584))

(declare-fun res!2111903 () Bool)

(assert (=> d!1593926 (=> (not res!2111903) (not e!3092584))))

(assert (=> d!1593926 (= res!2111903 (= (content!10157 lt!2042425) ((_ map or) (content!10157 (t!367673 testedP!110)) (content!10157 (Cons!57003 lt!2041491 Nil!57003)))))))

(assert (=> d!1593926 (= lt!2042425 e!3092583)))

(declare-fun c!845058 () Bool)

(assert (=> d!1593926 (= c!845058 ((_ is Nil!57003) (t!367673 testedP!110)))))

(assert (=> d!1593926 (= (++!12478 (t!367673 testedP!110) (Cons!57003 lt!2041491 Nil!57003)) lt!2042425)))

(declare-fun b!4949786 () Bool)

(declare-fun res!2111904 () Bool)

(assert (=> b!4949786 (=> (not res!2111904) (not e!3092584))))

(assert (=> b!4949786 (= res!2111904 (= (size!37831 lt!2042425) (+ (size!37831 (t!367673 testedP!110)) (size!37831 (Cons!57003 lt!2041491 Nil!57003)))))))

(assert (= (and d!1593926 c!845058) b!4949784))

(assert (= (and d!1593926 (not c!845058)) b!4949785))

(assert (= (and d!1593926 res!2111903) b!4949786))

(assert (= (and b!4949786 res!2111904) b!4949787))

(declare-fun m!5974124 () Bool)

(assert (=> b!4949785 m!5974124))

(declare-fun m!5974126 () Bool)

(assert (=> d!1593926 m!5974126))

(assert (=> d!1593926 m!5973768))

(assert (=> d!1593926 m!5972960))

(declare-fun m!5974128 () Bool)

(assert (=> b!4949786 m!5974128))

(assert (=> b!4949786 m!5972552))

(assert (=> b!4949786 m!5972966))

(assert (=> b!4949011 d!1593926))

(declare-fun d!1593930 () Bool)

(assert (=> d!1593930 (= (head!10617 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))) (h!63451 (++!12478 testedP!110 (Cons!57003 (head!10617 lt!2041497) Nil!57003))))))

(assert (=> b!4949020 d!1593930))

(assert (=> b!4949020 d!1593606))

(assert (=> b!4948823 d!1593576))

(declare-fun b!4949792 () Bool)

(declare-fun e!3092591 () Int)

(assert (=> b!4949792 (= e!3092591 0)))

(declare-fun bm!345607 () Bool)

(declare-fun call!345612 () Int)

(assert (=> bm!345607 (= call!345612 (size!37831 (t!367673 lt!2041510)))))

(declare-fun b!4949794 () Bool)

(declare-fun e!3092590 () List!57127)

(assert (=> b!4949794 (= e!3092590 (drop!2298 (t!367673 (t!367673 lt!2041510)) (- (- testedPSize!70 1) 1)))))

(declare-fun b!4949795 () Bool)

(declare-fun e!3092587 () List!57127)

(assert (=> b!4949795 (= e!3092587 e!3092590)))

(declare-fun c!845063 () Bool)

(assert (=> b!4949795 (= c!845063 (<= (- testedPSize!70 1) 0))))

(declare-fun b!4949796 () Bool)

(declare-fun e!3092588 () Int)

(assert (=> b!4949796 (= e!3092588 call!345612)))

(declare-fun b!4949797 () Bool)

(assert (=> b!4949797 (= e!3092587 Nil!57003)))

(declare-fun b!4949798 () Bool)

(assert (=> b!4949798 (= e!3092590 (t!367673 lt!2041510))))

(declare-fun b!4949793 () Bool)

(assert (=> b!4949793 (= e!3092588 e!3092591)))

(declare-fun c!845064 () Bool)

(assert (=> b!4949793 (= c!845064 (>= (- testedPSize!70 1) call!345612))))

(declare-fun d!1593932 () Bool)

(declare-fun e!3092589 () Bool)

(assert (=> d!1593932 e!3092589))

(declare-fun res!2111905 () Bool)

(assert (=> d!1593932 (=> (not res!2111905) (not e!3092589))))

(declare-fun lt!2042426 () List!57127)

(assert (=> d!1593932 (= res!2111905 (= ((_ map implies) (content!10157 lt!2042426) (content!10157 (t!367673 lt!2041510))) ((as const (InoxSet C!27232)) true)))))

(assert (=> d!1593932 (= lt!2042426 e!3092587)))

(declare-fun c!845062 () Bool)

(assert (=> d!1593932 (= c!845062 ((_ is Nil!57003) (t!367673 lt!2041510)))))

(assert (=> d!1593932 (= (drop!2298 (t!367673 lt!2041510) (- testedPSize!70 1)) lt!2042426)))

(declare-fun b!4949799 () Bool)

(assert (=> b!4949799 (= e!3092591 (- call!345612 (- testedPSize!70 1)))))

(declare-fun b!4949800 () Bool)

(assert (=> b!4949800 (= e!3092589 (= (size!37831 lt!2042426) e!3092588))))

(declare-fun c!845061 () Bool)

(assert (=> b!4949800 (= c!845061 (<= (- testedPSize!70 1) 0))))

(assert (= (and d!1593932 c!845062) b!4949797))

(assert (= (and d!1593932 (not c!845062)) b!4949795))

(assert (= (and b!4949795 c!845063) b!4949798))

(assert (= (and b!4949795 (not c!845063)) b!4949794))

(assert (= (and d!1593932 res!2111905) b!4949800))

(assert (= (and b!4949800 c!845061) b!4949796))

(assert (= (and b!4949800 (not c!845061)) b!4949793))

(assert (= (and b!4949793 c!845064) b!4949792))

(assert (= (and b!4949793 (not c!845064)) b!4949799))

(assert (= (or b!4949796 b!4949793 b!4949799) bm!345607))

(assert (=> bm!345607 m!5973066))

(declare-fun m!5974138 () Bool)

(assert (=> b!4949794 m!5974138))

(declare-fun m!5974140 () Bool)

(assert (=> d!1593932 m!5974140))

(assert (=> d!1593932 m!5973798))

(declare-fun m!5974142 () Bool)

(assert (=> b!4949800 m!5974142))

(assert (=> b!4949096 d!1593932))

(assert (=> b!4948751 d!1593834))

(declare-fun d!1593938 () Bool)

(assert (=> d!1593938 (= (head!10617 lt!2041508) (h!63451 lt!2041508))))

(assert (=> b!4948751 d!1593938))

(declare-fun d!1593940 () Bool)

(declare-fun lt!2042428 () Int)

(assert (=> d!1593940 (>= lt!2042428 0)))

(declare-fun e!3092597 () Int)

(assert (=> d!1593940 (= lt!2042428 e!3092597)))

(declare-fun c!845069 () Bool)

(assert (=> d!1593940 (= c!845069 ((_ is Nil!57003) (list!18179 (_1!34091 lt!2041490))))))

(assert (=> d!1593940 (= (size!37831 (list!18179 (_1!34091 lt!2041490))) lt!2042428)))

(declare-fun b!4949810 () Bool)

(assert (=> b!4949810 (= e!3092597 0)))

(declare-fun b!4949811 () Bool)

(assert (=> b!4949811 (= e!3092597 (+ 1 (size!37831 (t!367673 (list!18179 (_1!34091 lt!2041490))))))))

(assert (= (and d!1593940 c!845069) b!4949810))

(assert (= (and d!1593940 (not c!845069)) b!4949811))

(declare-fun m!5974144 () Bool)

(assert (=> b!4949811 m!5974144))

(assert (=> d!1593586 d!1593940))

(assert (=> d!1593586 d!1593594))

(declare-fun d!1593942 () Bool)

(declare-fun lt!2042429 () Int)

(assert (=> d!1593942 (= lt!2042429 (size!37831 (list!18181 (c!844685 (_1!34091 lt!2041490)))))))

(assert (=> d!1593942 (= lt!2042429 (ite ((_ is Empty!15010) (c!844685 (_1!34091 lt!2041490))) 0 (ite ((_ is Leaf!24948) (c!844685 (_1!34091 lt!2041490))) (csize!30251 (c!844685 (_1!34091 lt!2041490))) (csize!30250 (c!844685 (_1!34091 lt!2041490))))))))

(assert (=> d!1593942 (= (size!37834 (c!844685 (_1!34091 lt!2041490))) lt!2042429)))

(declare-fun bs!1182083 () Bool)

(assert (= bs!1182083 d!1593942))

(assert (=> bs!1182083 m!5973094))

(assert (=> bs!1182083 m!5973094))

(declare-fun m!5974154 () Bool)

(assert (=> bs!1182083 m!5974154))

(assert (=> d!1593586 d!1593942))

(declare-fun d!1593946 () Bool)

(declare-fun c!845070 () Bool)

(assert (=> d!1593946 (= c!845070 ((_ is Nil!57003) lt!2042016))))

(declare-fun e!3092601 () (InoxSet C!27232))

(assert (=> d!1593946 (= (content!10157 lt!2042016) e!3092601)))

(declare-fun b!4949816 () Bool)

(assert (=> b!4949816 (= e!3092601 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949817 () Bool)

(assert (=> b!4949817 (= e!3092601 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2042016) true) (content!10157 (t!367673 lt!2042016))))))

(assert (= (and d!1593946 c!845070) b!4949816))

(assert (= (and d!1593946 (not c!845070)) b!4949817))

(declare-fun m!5974156 () Bool)

(assert (=> b!4949817 m!5974156))

(declare-fun m!5974158 () Bool)

(assert (=> b!4949817 m!5974158))

(assert (=> d!1593590 d!1593946))

(declare-fun d!1593948 () Bool)

(declare-fun c!845071 () Bool)

(assert (=> d!1593948 (= c!845071 ((_ is Nil!57003) lt!2041506))))

(declare-fun e!3092602 () (InoxSet C!27232))

(assert (=> d!1593948 (= (content!10157 lt!2041506) e!3092602)))

(declare-fun b!4949818 () Bool)

(assert (=> b!4949818 (= e!3092602 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949819 () Bool)

(assert (=> b!4949819 (= e!3092602 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2041506) true) (content!10157 (t!367673 lt!2041506))))))

(assert (= (and d!1593948 c!845071) b!4949818))

(assert (= (and d!1593948 (not c!845071)) b!4949819))

(declare-fun m!5974162 () Bool)

(assert (=> b!4949819 m!5974162))

(declare-fun m!5974166 () Bool)

(assert (=> b!4949819 m!5974166))

(assert (=> d!1593590 d!1593948))

(declare-fun d!1593950 () Bool)

(declare-fun c!845072 () Bool)

(assert (=> d!1593950 (= c!845072 ((_ is Nil!57003) lt!2041502))))

(declare-fun e!3092603 () (InoxSet C!27232))

(assert (=> d!1593950 (= (content!10157 lt!2041502) e!3092603)))

(declare-fun b!4949820 () Bool)

(assert (=> b!4949820 (= e!3092603 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4949821 () Bool)

(assert (=> b!4949821 (= e!3092603 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2041502) true) (content!10157 (t!367673 lt!2041502))))))

(assert (= (and d!1593950 c!845072) b!4949820))

(assert (= (and d!1593950 (not c!845072)) b!4949821))

(declare-fun m!5974172 () Bool)

(assert (=> b!4949821 m!5974172))

(declare-fun m!5974174 () Bool)

(assert (=> b!4949821 m!5974174))

(assert (=> d!1593590 d!1593950))

(assert (=> b!4948820 d!1593576))

(declare-fun bs!1182084 () Bool)

(declare-fun d!1593956 () Bool)

(assert (= bs!1182084 (and d!1593956 d!1593702)))

(declare-fun lambda!246883 () Int)

(assert (=> bs!1182084 (= (= (ite c!844780 lambda!246828 lambda!246829) lambda!246827) (= lambda!246883 lambda!246857))))

(declare-fun bs!1182085 () Bool)

(assert (= bs!1182085 (and d!1593956 d!1593868)))

(assert (=> bs!1182085 (not (= lambda!246883 lambda!246879))))

(declare-fun bs!1182086 () Bool)

(assert (= bs!1182086 (and d!1593956 d!1593518)))

(assert (=> bs!1182086 (not (= lambda!246883 lambda!246847))))

(declare-fun bs!1182087 () Bool)

(assert (= bs!1182087 (and d!1593956 d!1593486)))

(assert (=> bs!1182087 (not (= lambda!246883 lambda!246827))))

(declare-fun bs!1182088 () Bool)

(assert (= bs!1182088 (and d!1593956 b!4948969)))

(assert (=> bs!1182088 (not (= lambda!246883 lambda!246829))))

(declare-fun bs!1182089 () Bool)

(assert (= bs!1182089 (and d!1593956 b!4948968)))

(assert (=> bs!1182089 (not (= lambda!246883 lambda!246828))))

(assert (=> d!1593956 true))

(assert (=> d!1593956 (< (dynLambda!23041 order!26009 (ite c!844780 lambda!246828 lambda!246829)) (dynLambda!23041 order!26009 lambda!246883))))

(assert (=> d!1593956 (= (exists!1345 (ite c!844780 lt!2041928 lt!2041925) (ite c!844780 lambda!246828 lambda!246829)) (not (forall!13280 (ite c!844780 lt!2041928 lt!2041925) lambda!246883)))))

(declare-fun bs!1182090 () Bool)

(assert (= bs!1182090 d!1593956))

(declare-fun m!5974186 () Bool)

(assert (=> bs!1182090 m!5974186))

(assert (=> bm!345499 d!1593956))

(declare-fun d!1593966 () Bool)

(declare-fun res!2111929 () Bool)

(declare-fun e!3092618 () Bool)

(assert (=> d!1593966 (=> res!2111929 e!3092618)))

(assert (=> d!1593966 (= res!2111929 ((_ is Nil!57004) (exprs!3633 setElem!28102)))))

(assert (=> d!1593966 (= (forall!13278 (exprs!3633 setElem!28102) lambda!246850) e!3092618)))

(declare-fun b!4949842 () Bool)

(declare-fun e!3092619 () Bool)

(assert (=> b!4949842 (= e!3092618 e!3092619)))

(declare-fun res!2111930 () Bool)

(assert (=> b!4949842 (=> (not res!2111930) (not e!3092619))))

(declare-fun dynLambda!23043 (Int Regex!13491) Bool)

(assert (=> b!4949842 (= res!2111930 (dynLambda!23043 lambda!246850 (h!63452 (exprs!3633 setElem!28102))))))

(declare-fun b!4949843 () Bool)

(assert (=> b!4949843 (= e!3092619 (forall!13278 (t!367674 (exprs!3633 setElem!28102)) lambda!246850))))

(assert (= (and d!1593966 (not res!2111929)) b!4949842))

(assert (= (and b!4949842 res!2111930) b!4949843))

(declare-fun b_lambda!196429 () Bool)

(assert (=> (not b_lambda!196429) (not b!4949842)))

(declare-fun m!5974206 () Bool)

(assert (=> b!4949842 m!5974206))

(declare-fun m!5974208 () Bool)

(assert (=> b!4949843 m!5974208))

(assert (=> d!1593572 d!1593966))

(assert (=> d!1593600 d!1593510))

(declare-fun b!4949851 () Bool)

(declare-fun res!2111932 () Bool)

(declare-fun e!3092623 () Bool)

(assert (=> b!4949851 (=> (not res!2111932) (not e!3092623))))

(assert (=> b!4949851 (= res!2111932 (= (head!10617 testedP!110) (head!10617 (++!12478 testedP!110 testedSuffix!70))))))

(declare-fun b!4949853 () Bool)

(declare-fun e!3092625 () Bool)

(assert (=> b!4949853 (= e!3092625 (>= (size!37831 (++!12478 testedP!110 testedSuffix!70)) (size!37831 testedP!110)))))

(declare-fun b!4949852 () Bool)

(assert (=> b!4949852 (= e!3092623 (isPrefix!5097 (tail!9752 testedP!110) (tail!9752 (++!12478 testedP!110 testedSuffix!70))))))

(declare-fun b!4949850 () Bool)

(declare-fun e!3092624 () Bool)

(assert (=> b!4949850 (= e!3092624 e!3092623)))

(declare-fun res!2111934 () Bool)

(assert (=> b!4949850 (=> (not res!2111934) (not e!3092623))))

(assert (=> b!4949850 (= res!2111934 (not ((_ is Nil!57003) (++!12478 testedP!110 testedSuffix!70))))))

(declare-fun d!1593974 () Bool)

(assert (=> d!1593974 e!3092625))

(declare-fun res!2111931 () Bool)

(assert (=> d!1593974 (=> res!2111931 e!3092625)))

(declare-fun lt!2042437 () Bool)

(assert (=> d!1593974 (= res!2111931 (not lt!2042437))))

(assert (=> d!1593974 (= lt!2042437 e!3092624)))

(declare-fun res!2111933 () Bool)

(assert (=> d!1593974 (=> res!2111933 e!3092624)))

(assert (=> d!1593974 (= res!2111933 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1593974 (= (isPrefix!5097 testedP!110 (++!12478 testedP!110 testedSuffix!70)) lt!2042437)))

(assert (= (and d!1593974 (not res!2111933)) b!4949850))

(assert (= (and b!4949850 res!2111934) b!4949851))

(assert (= (and b!4949851 res!2111932) b!4949852))

(assert (= (and d!1593974 (not res!2111931)) b!4949853))

(assert (=> b!4949851 m!5972554))

(assert (=> b!4949851 m!5972522))

(declare-fun m!5974214 () Bool)

(assert (=> b!4949851 m!5974214))

(assert (=> b!4949853 m!5972522))

(declare-fun m!5974216 () Bool)

(assert (=> b!4949853 m!5974216))

(assert (=> b!4949853 m!5972486))

(assert (=> b!4949852 m!5972558))

(assert (=> b!4949852 m!5972522))

(declare-fun m!5974222 () Bool)

(assert (=> b!4949852 m!5974222))

(assert (=> b!4949852 m!5972558))

(assert (=> b!4949852 m!5974222))

(declare-fun m!5974224 () Bool)

(assert (=> b!4949852 m!5974224))

(assert (=> d!1593600 d!1593974))

(declare-fun b!4949855 () Bool)

(declare-fun e!3092627 () List!57127)

(assert (=> b!4949855 (= e!3092627 (_2!34090 lt!2042089))))

(declare-fun b!4949858 () Bool)

(declare-fun e!3092628 () Bool)

(declare-fun lt!2042439 () List!57127)

(assert (=> b!4949858 (= e!3092628 (or (not (= (_2!34090 lt!2042089) Nil!57003)) (= lt!2042439 (_1!34090 lt!2042089))))))

(declare-fun b!4949856 () Bool)

(assert (=> b!4949856 (= e!3092627 (Cons!57003 (h!63451 (_1!34090 lt!2042089)) (++!12478 (t!367673 (_1!34090 lt!2042089)) (_2!34090 lt!2042089))))))

(declare-fun d!1593982 () Bool)

(assert (=> d!1593982 e!3092628))

(declare-fun res!2111936 () Bool)

(assert (=> d!1593982 (=> (not res!2111936) (not e!3092628))))

(assert (=> d!1593982 (= res!2111936 (= (content!10157 lt!2042439) ((_ map or) (content!10157 (_1!34090 lt!2042089)) (content!10157 (_2!34090 lt!2042089)))))))

(assert (=> d!1593982 (= lt!2042439 e!3092627)))

(declare-fun c!845077 () Bool)

(assert (=> d!1593982 (= c!845077 ((_ is Nil!57003) (_1!34090 lt!2042089)))))

(assert (=> d!1593982 (= (++!12478 (_1!34090 lt!2042089) (_2!34090 lt!2042089)) lt!2042439)))

(declare-fun b!4949857 () Bool)

(declare-fun res!2111937 () Bool)

(assert (=> b!4949857 (=> (not res!2111937) (not e!3092628))))

(assert (=> b!4949857 (= res!2111937 (= (size!37831 lt!2042439) (+ (size!37831 (_1!34090 lt!2042089)) (size!37831 (_2!34090 lt!2042089)))))))

(assert (= (and d!1593982 c!845077) b!4949855))

(assert (= (and d!1593982 (not c!845077)) b!4949856))

(assert (= (and d!1593982 res!2111936) b!4949857))

(assert (= (and b!4949857 res!2111937) b!4949858))

(declare-fun m!5974226 () Bool)

(assert (=> b!4949856 m!5974226))

(declare-fun m!5974228 () Bool)

(assert (=> d!1593982 m!5974228))

(declare-fun m!5974230 () Bool)

(assert (=> d!1593982 m!5974230))

(declare-fun m!5974232 () Bool)

(assert (=> d!1593982 m!5974232))

(declare-fun m!5974234 () Bool)

(assert (=> b!4949857 m!5974234))

(assert (=> b!4949857 m!5973116))

(declare-fun m!5974236 () Bool)

(assert (=> b!4949857 m!5974236))

(assert (=> d!1593600 d!1593982))

(assert (=> d!1593600 d!1593486))

(assert (=> d!1593600 d!1593438))

(assert (=> d!1593600 d!1593578))

(declare-fun d!1593984 () Bool)

(assert (=> d!1593984 (= testedSuffix!70 lt!2042080)))

(declare-fun lt!2042440 () Unit!147830)

(assert (=> d!1593984 (= lt!2042440 (choose!36542 testedP!110 testedSuffix!70 testedP!110 lt!2042080 lt!2041510))))

(assert (=> d!1593984 (isPrefix!5097 testedP!110 lt!2041510)))

(assert (=> d!1593984 (= (lemmaSamePrefixThenSameSuffix!2489 testedP!110 testedSuffix!70 testedP!110 lt!2042080 lt!2041510) lt!2042440)))

(declare-fun bs!1182091 () Bool)

(assert (= bs!1182091 d!1593984))

(declare-fun m!5974238 () Bool)

(assert (=> bs!1182091 m!5974238))

(assert (=> bs!1182091 m!5972478))

(assert (=> d!1593600 d!1593984))

(assert (=> b!4948757 d!1593582))

(declare-fun d!1593986 () Bool)

(declare-fun lt!2042441 () C!27232)

(assert (=> d!1593986 (contains!19498 (tail!9752 lt!2041510) lt!2042441)))

(declare-fun e!3092629 () C!27232)

(assert (=> d!1593986 (= lt!2042441 e!3092629)))

(declare-fun c!845078 () Bool)

(assert (=> d!1593986 (= c!845078 (= (- testedPSize!70 1) 0))))

(declare-fun e!3092630 () Bool)

(assert (=> d!1593986 e!3092630))

(declare-fun res!2111938 () Bool)

(assert (=> d!1593986 (=> (not res!2111938) (not e!3092630))))

(assert (=> d!1593986 (= res!2111938 (<= 0 (- testedPSize!70 1)))))

(assert (=> d!1593986 (= (apply!13842 (tail!9752 lt!2041510) (- testedPSize!70 1)) lt!2042441)))

(declare-fun b!4949859 () Bool)

(assert (=> b!4949859 (= e!3092630 (< (- testedPSize!70 1) (size!37831 (tail!9752 lt!2041510))))))

(declare-fun b!4949860 () Bool)

(assert (=> b!4949860 (= e!3092629 (head!10617 (tail!9752 lt!2041510)))))

(declare-fun b!4949861 () Bool)

(assert (=> b!4949861 (= e!3092629 (apply!13842 (tail!9752 (tail!9752 lt!2041510)) (- (- testedPSize!70 1) 1)))))

(assert (= (and d!1593986 res!2111938) b!4949859))

(assert (= (and d!1593986 c!845078) b!4949860))

(assert (= (and d!1593986 (not c!845078)) b!4949861))

(assert (=> d!1593986 m!5972560))

(declare-fun m!5974240 () Bool)

(assert (=> d!1593986 m!5974240))

(assert (=> b!4949859 m!5972560))

(assert (=> b!4949859 m!5973142))

(assert (=> b!4949860 m!5972560))

(assert (=> b!4949860 m!5973140))

(assert (=> b!4949861 m!5972560))

(assert (=> b!4949861 m!5973144))

(assert (=> b!4949861 m!5973144))

(declare-fun m!5974242 () Bool)

(assert (=> b!4949861 m!5974242))

(assert (=> b!4949037 d!1593986))

(assert (=> b!4949037 d!1593604))

(declare-fun d!1593988 () Bool)

(assert (=> d!1593988 (= (isEmpty!30672 (_1!34090 lt!2042076)) ((_ is Nil!57003) (_1!34090 lt!2042076)))))

(assert (=> b!4949165 d!1593988))

(declare-fun b!4949864 () Bool)

(declare-fun e!3092633 () List!57127)

(assert (=> b!4949864 (= e!3092633 lt!2041502)))

(declare-fun b!4949867 () Bool)

(declare-fun lt!2042444 () List!57127)

(declare-fun e!3092634 () Bool)

(assert (=> b!4949867 (= e!3092634 (or (not (= lt!2041502 Nil!57003)) (= lt!2042444 (t!367673 lt!2041506))))))

(declare-fun b!4949865 () Bool)

(assert (=> b!4949865 (= e!3092633 (Cons!57003 (h!63451 (t!367673 lt!2041506)) (++!12478 (t!367673 (t!367673 lt!2041506)) lt!2041502)))))

(declare-fun d!1593990 () Bool)

(assert (=> d!1593990 e!3092634))

(declare-fun res!2111941 () Bool)

(assert (=> d!1593990 (=> (not res!2111941) (not e!3092634))))

(assert (=> d!1593990 (= res!2111941 (= (content!10157 lt!2042444) ((_ map or) (content!10157 (t!367673 lt!2041506)) (content!10157 lt!2041502))))))

(assert (=> d!1593990 (= lt!2042444 e!3092633)))

(declare-fun c!845079 () Bool)

(assert (=> d!1593990 (= c!845079 ((_ is Nil!57003) (t!367673 lt!2041506)))))

(assert (=> d!1593990 (= (++!12478 (t!367673 lt!2041506) lt!2041502) lt!2042444)))

(declare-fun b!4949866 () Bool)

(declare-fun res!2111942 () Bool)

(assert (=> b!4949866 (=> (not res!2111942) (not e!3092634))))

(assert (=> b!4949866 (= res!2111942 (= (size!37831 lt!2042444) (+ (size!37831 (t!367673 lt!2041506)) (size!37831 lt!2041502))))))

(assert (= (and d!1593990 c!845079) b!4949864))

(assert (= (and d!1593990 (not c!845079)) b!4949865))

(assert (= (and d!1593990 res!2111941) b!4949866))

(assert (= (and b!4949866 res!2111942) b!4949867))

(declare-fun m!5974244 () Bool)

(assert (=> b!4949865 m!5974244))

(declare-fun m!5974246 () Bool)

(assert (=> d!1593990 m!5974246))

(assert (=> d!1593990 m!5974166))

(assert (=> d!1593990 m!5973084))

(declare-fun m!5974248 () Bool)

(assert (=> b!4949866 m!5974248))

(assert (=> b!4949866 m!5974088))

(assert (=> b!4949866 m!5973090))

(assert (=> b!4949122 d!1593990))

(declare-fun d!1593992 () Bool)

(assert (=> d!1593992 (isPrefix!5097 (ite c!844718 lt!2041747 lt!2041769) (ite c!844718 lt!2041756 lt!2041771))))

(declare-fun lt!2042446 () Unit!147830)

(assert (=> d!1593992 (= lt!2042446 (choose!36537 (ite c!844718 lt!2041747 lt!2041769) (ite c!844718 lt!2041756 lt!2041771)))))

(assert (=> d!1593992 (= (lemmaIsPrefixRefl!3437 (ite c!844718 lt!2041747 lt!2041769) (ite c!844718 lt!2041756 lt!2041771)) lt!2042446)))

(declare-fun bs!1182092 () Bool)

(assert (= bs!1182092 d!1593992))

(assert (=> bs!1182092 m!5972654))

(declare-fun m!5974252 () Bool)

(assert (=> bs!1182092 m!5974252))

(assert (=> bm!345459 d!1593992))

(declare-fun d!1593994 () Bool)

(declare-fun lt!2042447 () Int)

(assert (=> d!1593994 (>= lt!2042447 0)))

(declare-fun e!3092638 () Int)

(assert (=> d!1593994 (= lt!2042447 e!3092638)))

(declare-fun c!845082 () Bool)

(assert (=> d!1593994 (= c!845082 ((_ is Nil!57003) (_1!34090 (findLongestMatchInnerZipper!80 (derivationStepZipper!613 z!3568 lt!2041491) lt!2041496 (+ 1 testedPSize!70) lt!2041504 (list!18179 totalInput!685) totalInputSize!132))))))

(assert (=> d!1593994 (= (size!37831 (_1!34090 (findLongestMatchInnerZipper!80 (derivationStepZipper!613 z!3568 lt!2041491) lt!2041496 (+ 1 testedPSize!70) lt!2041504 (list!18179 totalInput!685) totalInputSize!132))) lt!2042447)))

(declare-fun b!4949873 () Bool)

(assert (=> b!4949873 (= e!3092638 0)))

(declare-fun b!4949874 () Bool)

(assert (=> b!4949874 (= e!3092638 (+ 1 (size!37831 (t!367673 (_1!34090 (findLongestMatchInnerZipper!80 (derivationStepZipper!613 z!3568 lt!2041491) lt!2041496 (+ 1 testedPSize!70) lt!2041504 (list!18179 totalInput!685) totalInputSize!132))))))))

(assert (= (and d!1593994 c!845082) b!4949873))

(assert (= (and d!1593994 (not c!845082)) b!4949874))

(declare-fun m!5974258 () Bool)

(assert (=> b!4949874 m!5974258))

(assert (=> d!1593446 d!1593994))

(declare-fun bm!345609 () Bool)

(declare-fun call!345620 () List!57127)

(assert (=> bm!345609 (= call!345620 (tail!9752 lt!2041504))))

(declare-fun b!4949875 () Bool)

(declare-fun c!845087 () Bool)

(declare-fun call!345616 () Bool)

(assert (=> b!4949875 (= c!845087 call!345616)))

(declare-fun lt!2042460 () Unit!147830)

(declare-fun lt!2042451 () Unit!147830)

(assert (=> b!4949875 (= lt!2042460 lt!2042451)))

(assert (=> b!4949875 (= (list!18179 totalInput!685) lt!2041496)))

(declare-fun call!345619 () Unit!147830)

(assert (=> b!4949875 (= lt!2042451 call!345619)))

(declare-fun lt!2042457 () Unit!147830)

(declare-fun lt!2042450 () Unit!147830)

(assert (=> b!4949875 (= lt!2042457 lt!2042450)))

(declare-fun call!345614 () Bool)

(assert (=> b!4949875 call!345614))

(declare-fun call!345621 () Unit!147830)

(assert (=> b!4949875 (= lt!2042450 call!345621)))

(declare-fun e!3092643 () tuple2!61574)

(declare-fun e!3092642 () tuple2!61574)

(assert (=> b!4949875 (= e!3092643 e!3092642)))

(declare-fun b!4949876 () Bool)

(declare-fun e!3092645 () tuple2!61574)

(declare-fun lt!2042448 () tuple2!61574)

(assert (=> b!4949876 (= e!3092645 lt!2042448)))

(declare-fun bm!345610 () Bool)

(assert (=> bm!345610 (= call!345616 (nullableZipper!862 (derivationStepZipper!613 z!3568 lt!2041491)))))

(declare-fun b!4949877 () Bool)

(declare-fun c!845085 () Bool)

(assert (=> b!4949877 (= c!845085 call!345616)))

(declare-fun lt!2042458 () Unit!147830)

(declare-fun lt!2042471 () Unit!147830)

(assert (=> b!4949877 (= lt!2042458 lt!2042471)))

(declare-fun lt!2042455 () List!57127)

(declare-fun lt!2042462 () C!27232)

(assert (=> b!4949877 (= (++!12478 (++!12478 lt!2041496 (Cons!57003 lt!2042462 Nil!57003)) lt!2042455) (list!18179 totalInput!685))))

(assert (=> b!4949877 (= lt!2042471 (lemmaMoveElementToOtherListKeepsConcatEq!1436 lt!2041496 lt!2042462 lt!2042455 (list!18179 totalInput!685)))))

(assert (=> b!4949877 (= lt!2042455 (tail!9752 lt!2041504))))

(assert (=> b!4949877 (= lt!2042462 (head!10617 lt!2041504))))

(declare-fun lt!2042470 () Unit!147830)

(declare-fun lt!2042449 () Unit!147830)

(assert (=> b!4949877 (= lt!2042470 lt!2042449)))

(assert (=> b!4949877 (isPrefix!5097 (++!12478 lt!2041496 (Cons!57003 (head!10617 (getSuffix!3079 (list!18179 totalInput!685) lt!2041496)) Nil!57003)) (list!18179 totalInput!685))))

(assert (=> b!4949877 (= lt!2042449 (lemmaAddHeadSuffixToPrefixStillPrefix!826 lt!2041496 (list!18179 totalInput!685)))))

(declare-fun lt!2042473 () List!57127)

(assert (=> b!4949877 (= lt!2042473 (++!12478 lt!2041496 (Cons!57003 (head!10617 lt!2041504) Nil!57003)))))

(declare-fun lt!2042463 () Unit!147830)

(declare-fun e!3092639 () Unit!147830)

(assert (=> b!4949877 (= lt!2042463 e!3092639)))

(declare-fun c!845083 () Bool)

(assert (=> b!4949877 (= c!845083 (= (size!37831 lt!2041496) (size!37831 (list!18179 totalInput!685))))))

(declare-fun lt!2042468 () Unit!147830)

(declare-fun lt!2042472 () Unit!147830)

(assert (=> b!4949877 (= lt!2042468 lt!2042472)))

(assert (=> b!4949877 (<= (size!37831 lt!2041496) (size!37831 (list!18179 totalInput!685)))))

(assert (=> b!4949877 (= lt!2042472 (lemmaIsPrefixThenSmallerEqSize!752 lt!2041496 (list!18179 totalInput!685)))))

(declare-fun e!3092641 () tuple2!61574)

(assert (=> b!4949877 (= e!3092643 e!3092641)))

(declare-fun b!4949878 () Bool)

(assert (=> b!4949878 (= e!3092645 (tuple2!61575 lt!2041496 lt!2041504))))

(declare-fun bm!345611 () Bool)

(assert (=> bm!345611 (= call!345621 (lemmaIsPrefixRefl!3437 (list!18179 totalInput!685) (list!18179 totalInput!685)))))

(declare-fun b!4949880 () Bool)

(assert (=> b!4949880 (= e!3092642 (tuple2!61575 lt!2041496 Nil!57003))))

(declare-fun b!4949881 () Bool)

(declare-fun e!3092640 () tuple2!61574)

(assert (=> b!4949881 (= e!3092640 e!3092643)))

(declare-fun c!845086 () Bool)

(assert (=> b!4949881 (= c!845086 (= (+ 1 testedPSize!70) totalInputSize!132))))

(declare-fun call!345615 () (InoxSet Context!6266))

(declare-fun call!345618 () tuple2!61574)

(declare-fun bm!345612 () Bool)

(assert (=> bm!345612 (= call!345618 (findLongestMatchInnerZipper!80 call!345615 lt!2042473 (+ 1 testedPSize!70 1) call!345620 (list!18179 totalInput!685) totalInputSize!132))))

(declare-fun b!4949882 () Bool)

(declare-fun e!3092646 () Bool)

(declare-fun lt!2042461 () tuple2!61574)

(assert (=> b!4949882 (= e!3092646 (>= (size!37831 (_1!34090 lt!2042461)) (size!37831 lt!2041496)))))

(declare-fun bm!345613 () Bool)

(assert (=> bm!345613 (= call!345614 (isPrefix!5097 (list!18179 totalInput!685) (list!18179 totalInput!685)))))

(declare-fun b!4949883 () Bool)

(assert (=> b!4949883 (= e!3092641 call!345618)))

(declare-fun b!4949884 () Bool)

(declare-fun e!3092644 () Bool)

(assert (=> b!4949884 (= e!3092644 e!3092646)))

(declare-fun res!2111944 () Bool)

(assert (=> b!4949884 (=> res!2111944 e!3092646)))

(assert (=> b!4949884 (= res!2111944 (isEmpty!30672 (_1!34090 lt!2042461)))))

(declare-fun bm!345614 () Bool)

(declare-fun call!345617 () C!27232)

(assert (=> bm!345614 (= call!345617 (head!10617 lt!2041504))))

(declare-fun bm!345615 () Bool)

(assert (=> bm!345615 (= call!345615 (derivationStepZipper!613 (derivationStepZipper!613 z!3568 lt!2041491) call!345617))))

(declare-fun bm!345616 () Bool)

(assert (=> bm!345616 (= call!345619 (lemmaIsPrefixSameLengthThenSameList!1189 (list!18179 totalInput!685) lt!2041496 (list!18179 totalInput!685)))))

(declare-fun b!4949885 () Bool)

(assert (=> b!4949885 (= e!3092642 (tuple2!61575 Nil!57003 (list!18179 totalInput!685)))))

(declare-fun d!1593998 () Bool)

(assert (=> d!1593998 e!3092644))

(declare-fun res!2111945 () Bool)

(assert (=> d!1593998 (=> (not res!2111945) (not e!3092644))))

(assert (=> d!1593998 (= res!2111945 (= (++!12478 (_1!34090 lt!2042461) (_2!34090 lt!2042461)) (list!18179 totalInput!685)))))

(assert (=> d!1593998 (= lt!2042461 e!3092640)))

(declare-fun c!845088 () Bool)

(assert (=> d!1593998 (= c!845088 (lostCauseZipper!809 (derivationStepZipper!613 z!3568 lt!2041491)))))

(declare-fun lt!2042465 () Unit!147830)

(declare-fun Unit!147867 () Unit!147830)

(assert (=> d!1593998 (= lt!2042465 Unit!147867)))

(assert (=> d!1593998 (= (getSuffix!3079 (list!18179 totalInput!685) lt!2041496) lt!2041504)))

(declare-fun lt!2042466 () Unit!147830)

(declare-fun lt!2042467 () Unit!147830)

(assert (=> d!1593998 (= lt!2042466 lt!2042467)))

(declare-fun lt!2042452 () List!57127)

(assert (=> d!1593998 (= lt!2041504 lt!2042452)))

(assert (=> d!1593998 (= lt!2042467 (lemmaSamePrefixThenSameSuffix!2489 lt!2041496 lt!2041504 lt!2041496 lt!2042452 (list!18179 totalInput!685)))))

(assert (=> d!1593998 (= lt!2042452 (getSuffix!3079 (list!18179 totalInput!685) lt!2041496))))

(declare-fun lt!2042456 () Unit!147830)

(declare-fun lt!2042464 () Unit!147830)

(assert (=> d!1593998 (= lt!2042456 lt!2042464)))

(assert (=> d!1593998 (isPrefix!5097 lt!2041496 (++!12478 lt!2041496 lt!2041504))))

(assert (=> d!1593998 (= lt!2042464 (lemmaConcatTwoListThenFirstIsPrefix!3321 lt!2041496 lt!2041504))))

(assert (=> d!1593998 (= (++!12478 lt!2041496 lt!2041504) (list!18179 totalInput!685))))

(assert (=> d!1593998 (= (findLongestMatchInnerZipper!80 (derivationStepZipper!613 z!3568 lt!2041491) lt!2041496 (+ 1 testedPSize!70) lt!2041504 (list!18179 totalInput!685) totalInputSize!132) lt!2042461)))

(declare-fun b!4949879 () Bool)

(assert (=> b!4949879 (= e!3092641 e!3092645)))

(assert (=> b!4949879 (= lt!2042448 call!345618)))

(declare-fun c!845084 () Bool)

(assert (=> b!4949879 (= c!845084 (isEmpty!30672 (_1!34090 lt!2042448)))))

(declare-fun b!4949886 () Bool)

(declare-fun Unit!147868 () Unit!147830)

(assert (=> b!4949886 (= e!3092639 Unit!147868)))

(declare-fun lt!2042453 () Unit!147830)

(assert (=> b!4949886 (= lt!2042453 call!345621)))

(assert (=> b!4949886 call!345614))

(declare-fun lt!2042459 () Unit!147830)

(assert (=> b!4949886 (= lt!2042459 lt!2042453)))

(declare-fun lt!2042469 () Unit!147830)

(assert (=> b!4949886 (= lt!2042469 call!345619)))

(assert (=> b!4949886 (= (list!18179 totalInput!685) lt!2041496)))

(declare-fun lt!2042454 () Unit!147830)

(assert (=> b!4949886 (= lt!2042454 lt!2042469)))

(assert (=> b!4949886 false))

(declare-fun b!4949887 () Bool)

(assert (=> b!4949887 (= e!3092640 (tuple2!61575 Nil!57003 (list!18179 totalInput!685)))))

(declare-fun b!4949888 () Bool)

(declare-fun Unit!147869 () Unit!147830)

(assert (=> b!4949888 (= e!3092639 Unit!147869)))

(assert (= (and d!1593998 c!845088) b!4949887))

(assert (= (and d!1593998 (not c!845088)) b!4949881))

(assert (= (and b!4949881 c!845086) b!4949875))

(assert (= (and b!4949881 (not c!845086)) b!4949877))

(assert (= (and b!4949875 c!845087) b!4949880))

(assert (= (and b!4949875 (not c!845087)) b!4949885))

(assert (= (and b!4949877 c!845083) b!4949886))

(assert (= (and b!4949877 (not c!845083)) b!4949888))

(assert (= (and b!4949877 c!845085) b!4949879))

(assert (= (and b!4949877 (not c!845085)) b!4949883))

(assert (= (and b!4949879 c!845084) b!4949878))

(assert (= (and b!4949879 (not c!845084)) b!4949876))

(assert (= (or b!4949879 b!4949883) bm!345609))

(assert (= (or b!4949879 b!4949883) bm!345614))

(assert (= (or b!4949879 b!4949883) bm!345615))

(assert (= (or b!4949879 b!4949883) bm!345612))

(assert (= (or b!4949875 b!4949886) bm!345611))

(assert (= (or b!4949875 b!4949886) bm!345613))

(assert (= (or b!4949875 b!4949886) bm!345616))

(assert (= (or b!4949875 b!4949877) bm!345610))

(assert (= (and d!1593998 res!2111945) b!4949884))

(assert (= (and b!4949884 (not res!2111944)) b!4949882))

(assert (=> bm!345610 m!5972488))

(assert (=> bm!345610 m!5972700))

(assert (=> d!1593998 m!5972520))

(assert (=> d!1593998 m!5972704))

(assert (=> d!1593998 m!5972544))

(assert (=> d!1593998 m!5972706))

(assert (=> d!1593998 m!5972544))

(assert (=> d!1593998 m!5972708))

(assert (=> d!1593998 m!5972488))

(assert (=> d!1593998 m!5972712))

(assert (=> d!1593998 m!5972520))

(declare-fun m!5974274 () Bool)

(assert (=> d!1593998 m!5974274))

(declare-fun m!5974276 () Bool)

(assert (=> d!1593998 m!5974276))

(assert (=> bm!345616 m!5972520))

(assert (=> bm!345616 m!5972520))

(declare-fun m!5974278 () Bool)

(assert (=> bm!345616 m!5974278))

(assert (=> bm!345615 m!5972488))

(declare-fun m!5974280 () Bool)

(assert (=> bm!345615 m!5974280))

(assert (=> bm!345609 m!5972676))

(declare-fun m!5974282 () Bool)

(assert (=> bm!345614 m!5974282))

(declare-fun m!5974284 () Bool)

(assert (=> b!4949882 m!5974284))

(assert (=> b!4949882 m!5972688))

(declare-fun m!5974286 () Bool)

(assert (=> b!4949884 m!5974286))

(declare-fun m!5974288 () Bool)

(assert (=> b!4949879 m!5974288))

(assert (=> bm!345611 m!5972520))

(assert (=> bm!345611 m!5972520))

(declare-fun m!5974290 () Bool)

(assert (=> bm!345611 m!5974290))

(assert (=> bm!345612 m!5972520))

(declare-fun m!5974292 () Bool)

(assert (=> bm!345612 m!5974292))

(assert (=> bm!345613 m!5972520))

(assert (=> bm!345613 m!5972520))

(declare-fun m!5974294 () Bool)

(assert (=> bm!345613 m!5974294))

(declare-fun m!5974296 () Bool)

(assert (=> b!4949877 m!5974296))

(declare-fun m!5974298 () Bool)

(assert (=> b!4949877 m!5974298))

(assert (=> b!4949877 m!5972520))

(assert (=> b!4949877 m!5972704))

(assert (=> b!4949877 m!5972520))

(declare-fun m!5974300 () Bool)

(assert (=> b!4949877 m!5974300))

(declare-fun m!5974304 () Bool)

(assert (=> b!4949877 m!5974304))

(assert (=> b!4949877 m!5972688))

(assert (=> b!4949877 m!5974282))

(declare-fun m!5974306 () Bool)

(assert (=> b!4949877 m!5974306))

(assert (=> b!4949877 m!5972520))

(declare-fun m!5974308 () Bool)

(assert (=> b!4949877 m!5974308))

(assert (=> b!4949877 m!5972520))

(declare-fun m!5974310 () Bool)

(assert (=> b!4949877 m!5974310))

(assert (=> b!4949877 m!5972520))

(declare-fun m!5974314 () Bool)

(assert (=> b!4949877 m!5974314))

(assert (=> b!4949877 m!5972676))

(assert (=> b!4949877 m!5972704))

(declare-fun m!5974316 () Bool)

(assert (=> b!4949877 m!5974316))

(assert (=> b!4949877 m!5972520))

(assert (=> b!4949877 m!5973074))

(assert (=> b!4949877 m!5974306))

(assert (=> b!4949877 m!5974296))

(assert (=> d!1593446 d!1593998))

(declare-fun d!1594014 () Bool)

(assert (=> d!1594014 (isPrefix!5097 lt!2041496 (++!12478 lt!2041496 lt!2041504))))

(declare-fun lt!2042478 () Unit!147830)

(assert (=> d!1594014 (= lt!2042478 (choose!36536 lt!2041496 lt!2041504))))

(assert (=> d!1594014 (= (lemmaConcatTwoListThenFirstIsPrefix!3321 lt!2041496 lt!2041504) lt!2042478)))

(declare-fun bs!1182096 () Bool)

(assert (= bs!1182096 d!1594014))

(assert (=> bs!1182096 m!5972544))

(assert (=> bs!1182096 m!5972544))

(assert (=> bs!1182096 m!5972708))

(declare-fun m!5974322 () Bool)

(assert (=> bs!1182096 m!5974322))

(assert (=> d!1593446 d!1594014))

(declare-fun d!1594016 () Bool)

(assert (=> d!1594016 (= lt!2041504 lt!2041742)))

(declare-fun lt!2042479 () Unit!147830)

(assert (=> d!1594016 (= lt!2042479 (choose!36542 lt!2041496 lt!2041504 lt!2041496 lt!2041742 (list!18179 totalInput!685)))))

(assert (=> d!1594016 (isPrefix!5097 lt!2041496 (list!18179 totalInput!685))))

(assert (=> d!1594016 (= (lemmaSamePrefixThenSameSuffix!2489 lt!2041496 lt!2041504 lt!2041496 lt!2041742 (list!18179 totalInput!685)) lt!2042479)))

(declare-fun bs!1182097 () Bool)

(assert (= bs!1182097 d!1594016))

(assert (=> bs!1182097 m!5972520))

(declare-fun m!5974326 () Bool)

(assert (=> bs!1182097 m!5974326))

(assert (=> bs!1182097 m!5972520))

(declare-fun m!5974328 () Bool)

(assert (=> bs!1182097 m!5974328))

(assert (=> d!1593446 d!1594016))

(declare-fun b!4949898 () Bool)

(declare-fun res!2111949 () Bool)

(declare-fun e!3092652 () Bool)

(assert (=> b!4949898 (=> (not res!2111949) (not e!3092652))))

(assert (=> b!4949898 (= res!2111949 (= (head!10617 lt!2041496) (head!10617 (++!12478 lt!2041496 lt!2041504))))))

(declare-fun b!4949900 () Bool)

(declare-fun e!3092654 () Bool)

(assert (=> b!4949900 (= e!3092654 (>= (size!37831 (++!12478 lt!2041496 lt!2041504)) (size!37831 lt!2041496)))))

(declare-fun b!4949899 () Bool)

(assert (=> b!4949899 (= e!3092652 (isPrefix!5097 (tail!9752 lt!2041496) (tail!9752 (++!12478 lt!2041496 lt!2041504))))))

(declare-fun b!4949897 () Bool)

(declare-fun e!3092653 () Bool)

(assert (=> b!4949897 (= e!3092653 e!3092652)))

(declare-fun res!2111951 () Bool)

(assert (=> b!4949897 (=> (not res!2111951) (not e!3092652))))

(assert (=> b!4949897 (= res!2111951 (not ((_ is Nil!57003) (++!12478 lt!2041496 lt!2041504))))))

(declare-fun d!1594020 () Bool)

(assert (=> d!1594020 e!3092654))

(declare-fun res!2111948 () Bool)

(assert (=> d!1594020 (=> res!2111948 e!3092654)))

(declare-fun lt!2042480 () Bool)

(assert (=> d!1594020 (= res!2111948 (not lt!2042480))))

(assert (=> d!1594020 (= lt!2042480 e!3092653)))

(declare-fun res!2111950 () Bool)

(assert (=> d!1594020 (=> res!2111950 e!3092653)))

(assert (=> d!1594020 (= res!2111950 ((_ is Nil!57003) lt!2041496))))

(assert (=> d!1594020 (= (isPrefix!5097 lt!2041496 (++!12478 lt!2041496 lt!2041504)) lt!2042480)))

(assert (= (and d!1594020 (not res!2111950)) b!4949897))

(assert (= (and b!4949897 res!2111951) b!4949898))

(assert (= (and b!4949898 res!2111949) b!4949899))

(assert (= (and d!1594020 (not res!2111948)) b!4949900))

(declare-fun m!5974330 () Bool)

(assert (=> b!4949898 m!5974330))

(assert (=> b!4949898 m!5972544))

(declare-fun m!5974332 () Bool)

(assert (=> b!4949898 m!5974332))

(assert (=> b!4949900 m!5972544))

(declare-fun m!5974334 () Bool)

(assert (=> b!4949900 m!5974334))

(assert (=> b!4949900 m!5972688))

(declare-fun m!5974336 () Bool)

(assert (=> b!4949899 m!5974336))

(assert (=> b!4949899 m!5972544))

(declare-fun m!5974338 () Bool)

(assert (=> b!4949899 m!5974338))

(assert (=> b!4949899 m!5974336))

(assert (=> b!4949899 m!5974338))

(declare-fun m!5974340 () Bool)

(assert (=> b!4949899 m!5974340))

(assert (=> d!1593446 d!1594020))

(assert (=> d!1593446 d!1593576))

(declare-fun d!1594022 () Bool)

(declare-fun lt!2042481 () List!57127)

(assert (=> d!1594022 (= (++!12478 lt!2041496 lt!2042481) (list!18179 totalInput!685))))

(declare-fun e!3092655 () List!57127)

(assert (=> d!1594022 (= lt!2042481 e!3092655)))

(declare-fun c!845092 () Bool)

(assert (=> d!1594022 (= c!845092 ((_ is Cons!57003) lt!2041496))))

(assert (=> d!1594022 (>= (size!37831 (list!18179 totalInput!685)) (size!37831 lt!2041496))))

(assert (=> d!1594022 (= (getSuffix!3079 (list!18179 totalInput!685) lt!2041496) lt!2042481)))

(declare-fun b!4949901 () Bool)

(assert (=> b!4949901 (= e!3092655 (getSuffix!3079 (tail!9752 (list!18179 totalInput!685)) (t!367673 lt!2041496)))))

(declare-fun b!4949902 () Bool)

(assert (=> b!4949902 (= e!3092655 (list!18179 totalInput!685))))

(assert (= (and d!1594022 c!845092) b!4949901))

(assert (= (and d!1594022 (not c!845092)) b!4949902))

(declare-fun m!5974342 () Bool)

(assert (=> d!1594022 m!5974342))

(assert (=> d!1594022 m!5972520))

(assert (=> d!1594022 m!5973074))

(assert (=> d!1594022 m!5972688))

(assert (=> b!4949901 m!5972520))

(declare-fun m!5974344 () Bool)

(assert (=> b!4949901 m!5974344))

(assert (=> b!4949901 m!5974344))

(declare-fun m!5974346 () Bool)

(assert (=> b!4949901 m!5974346))

(assert (=> d!1593446 d!1594022))

(assert (=> d!1593446 d!1593526))

(declare-fun bs!1182098 () Bool)

(declare-fun d!1594024 () Bool)

(assert (= bs!1182098 (and d!1594024 d!1593702)))

(declare-fun lambda!246885 () Int)

(assert (=> bs!1182098 (not (= lambda!246885 lambda!246857))))

(declare-fun bs!1182099 () Bool)

(assert (= bs!1182099 (and d!1594024 d!1593956)))

(assert (=> bs!1182099 (not (= lambda!246885 lambda!246883))))

(declare-fun bs!1182100 () Bool)

(assert (= bs!1182100 (and d!1594024 d!1593868)))

(assert (=> bs!1182100 (not (= lambda!246885 lambda!246879))))

(declare-fun bs!1182101 () Bool)

(assert (= bs!1182101 (and d!1594024 d!1593518)))

(assert (=> bs!1182101 (not (= lambda!246885 lambda!246847))))

(declare-fun bs!1182102 () Bool)

(assert (= bs!1182102 (and d!1594024 d!1593486)))

(assert (=> bs!1182102 (= lambda!246885 lambda!246827)))

(declare-fun bs!1182103 () Bool)

(assert (= bs!1182103 (and d!1594024 b!4948969)))

(assert (=> bs!1182103 (not (= lambda!246885 lambda!246829))))

(declare-fun bs!1182104 () Bool)

(assert (= bs!1182104 (and d!1594024 b!4948968)))

(assert (=> bs!1182104 (not (= lambda!246885 lambda!246828))))

(declare-fun bs!1182105 () Bool)

(declare-fun b!4949903 () Bool)

(assert (= bs!1182105 (and b!4949903 d!1593702)))

(declare-fun lambda!246886 () Int)

(assert (=> bs!1182105 (not (= lambda!246886 lambda!246857))))

(declare-fun bs!1182106 () Bool)

(assert (= bs!1182106 (and b!4949903 d!1593956)))

(assert (=> bs!1182106 (not (= lambda!246886 lambda!246883))))

(declare-fun bs!1182107 () Bool)

(assert (= bs!1182107 (and b!4949903 d!1594024)))

(assert (=> bs!1182107 (not (= lambda!246886 lambda!246885))))

(declare-fun bs!1182108 () Bool)

(assert (= bs!1182108 (and b!4949903 d!1593868)))

(assert (=> bs!1182108 (= lambda!246886 lambda!246879)))

(declare-fun bs!1182109 () Bool)

(assert (= bs!1182109 (and b!4949903 d!1593518)))

(assert (=> bs!1182109 (not (= lambda!246886 lambda!246847))))

(declare-fun bs!1182110 () Bool)

(assert (= bs!1182110 (and b!4949903 d!1593486)))

(assert (=> bs!1182110 (not (= lambda!246886 lambda!246827))))

(declare-fun bs!1182111 () Bool)

(assert (= bs!1182111 (and b!4949903 b!4948969)))

(assert (=> bs!1182111 (= lambda!246886 lambda!246829)))

(declare-fun bs!1182112 () Bool)

(assert (= bs!1182112 (and b!4949903 b!4948968)))

(assert (=> bs!1182112 (= lambda!246886 lambda!246828)))

(declare-fun bs!1182113 () Bool)

(declare-fun b!4949904 () Bool)

(assert (= bs!1182113 (and b!4949904 d!1593702)))

(declare-fun lambda!246887 () Int)

(assert (=> bs!1182113 (not (= lambda!246887 lambda!246857))))

(declare-fun bs!1182114 () Bool)

(assert (= bs!1182114 (and b!4949904 d!1594024)))

(assert (=> bs!1182114 (not (= lambda!246887 lambda!246885))))

(declare-fun bs!1182115 () Bool)

(assert (= bs!1182115 (and b!4949904 d!1593868)))

(assert (=> bs!1182115 (= lambda!246887 lambda!246879)))

(declare-fun bs!1182116 () Bool)

(assert (= bs!1182116 (and b!4949904 d!1593518)))

(assert (=> bs!1182116 (not (= lambda!246887 lambda!246847))))

(declare-fun bs!1182117 () Bool)

(assert (= bs!1182117 (and b!4949904 d!1593486)))

(assert (=> bs!1182117 (not (= lambda!246887 lambda!246827))))

(declare-fun bs!1182118 () Bool)

(assert (= bs!1182118 (and b!4949904 b!4948969)))

(assert (=> bs!1182118 (= lambda!246887 lambda!246829)))

(declare-fun bs!1182119 () Bool)

(assert (= bs!1182119 (and b!4949904 b!4948968)))

(assert (=> bs!1182119 (= lambda!246887 lambda!246828)))

(declare-fun bs!1182120 () Bool)

(assert (= bs!1182120 (and b!4949904 d!1593956)))

(assert (=> bs!1182120 (not (= lambda!246887 lambda!246883))))

(declare-fun bs!1182121 () Bool)

(assert (= bs!1182121 (and b!4949904 b!4949903)))

(assert (=> bs!1182121 (= lambda!246887 lambda!246886)))

(declare-fun e!3092656 () Unit!147830)

(declare-fun Unit!147870 () Unit!147830)

(assert (=> b!4949904 (= e!3092656 Unit!147870)))

(declare-fun lt!2042486 () List!57130)

(declare-fun call!345623 () List!57130)

(assert (=> b!4949904 (= lt!2042486 call!345623)))

(declare-fun lt!2042488 () Unit!147830)

(assert (=> b!4949904 (= lt!2042488 (lemmaForallThenNotExists!225 lt!2042486 lambda!246885))))

(declare-fun call!345622 () Bool)

(assert (=> b!4949904 (not call!345622)))

(declare-fun lt!2042487 () Unit!147830)

(assert (=> b!4949904 (= lt!2042487 lt!2042488)))

(declare-fun bm!345618 () Bool)

(assert (=> bm!345618 (= call!345623 (toList!8004 (derivationStepZipper!613 z!3568 lt!2041491)))))

(declare-fun lt!2042483 () Bool)

(assert (=> d!1594024 (= lt!2042483 (isEmpty!30671 (getLanguageWitness!693 (derivationStepZipper!613 z!3568 lt!2041491))))))

(assert (=> d!1594024 (= lt!2042483 (forall!13277 (derivationStepZipper!613 z!3568 lt!2041491) lambda!246885))))

(declare-fun lt!2042482 () Unit!147830)

(assert (=> d!1594024 (= lt!2042482 e!3092656)))

(declare-fun c!845093 () Bool)

(assert (=> d!1594024 (= c!845093 (not (forall!13277 (derivationStepZipper!613 z!3568 lt!2041491) lambda!246885)))))

(assert (=> d!1594024 (= (lostCauseZipper!809 (derivationStepZipper!613 z!3568 lt!2041491)) lt!2042483)))

(declare-fun lt!2042489 () List!57130)

(declare-fun bm!345617 () Bool)

(assert (=> bm!345617 (= call!345622 (exists!1345 (ite c!845093 lt!2042489 lt!2042486) (ite c!845093 lambda!246886 lambda!246887)))))

(declare-fun Unit!147871 () Unit!147830)

(assert (=> b!4949903 (= e!3092656 Unit!147871)))

(assert (=> b!4949903 (= lt!2042489 call!345623)))

(declare-fun lt!2042484 () Unit!147830)

(assert (=> b!4949903 (= lt!2042484 (lemmaNotForallThenExists!242 lt!2042489 lambda!246885))))

(assert (=> b!4949903 call!345622))

(declare-fun lt!2042485 () Unit!147830)

(assert (=> b!4949903 (= lt!2042485 lt!2042484)))

(assert (= (and d!1594024 c!845093) b!4949903))

(assert (= (and d!1594024 (not c!845093)) b!4949904))

(assert (= (or b!4949903 b!4949904) bm!345617))

(assert (= (or b!4949903 b!4949904) bm!345618))

(declare-fun m!5974348 () Bool)

(assert (=> b!4949903 m!5974348))

(declare-fun m!5974350 () Bool)

(assert (=> bm!345617 m!5974350))

(assert (=> bm!345618 m!5972488))

(declare-fun m!5974352 () Bool)

(assert (=> bm!345618 m!5974352))

(declare-fun m!5974354 () Bool)

(assert (=> b!4949904 m!5974354))

(assert (=> d!1594024 m!5972488))

(declare-fun m!5974356 () Bool)

(assert (=> d!1594024 m!5974356))

(assert (=> d!1594024 m!5974356))

(declare-fun m!5974358 () Bool)

(assert (=> d!1594024 m!5974358))

(assert (=> d!1594024 m!5972488))

(declare-fun m!5974360 () Bool)

(assert (=> d!1594024 m!5974360))

(assert (=> d!1594024 m!5972488))

(assert (=> d!1594024 m!5974360))

(assert (=> d!1593446 d!1594024))

(assert (=> bm!345527 d!1593518))

(assert (=> d!1593438 d!1593974))

(assert (=> d!1593438 d!1593578))

(declare-fun d!1594026 () Bool)

(assert (=> d!1594026 (isPrefix!5097 testedP!110 (++!12478 testedP!110 testedSuffix!70))))

(assert (=> d!1594026 true))

(declare-fun _$46!1924 () Unit!147830)

(assert (=> d!1594026 (= (choose!36536 testedP!110 testedSuffix!70) _$46!1924)))

(declare-fun bs!1182122 () Bool)

(assert (= bs!1182122 d!1594026))

(assert (=> bs!1182122 m!5972522))

(assert (=> bs!1182122 m!5972522))

(assert (=> bs!1182122 m!5972572))

(assert (=> d!1593438 d!1594026))

(declare-fun d!1594028 () Bool)

(assert (=> d!1594028 (= lt!2041510 testedP!110)))

(assert (=> d!1594028 true))

(declare-fun _$60!905 () Unit!147830)

(assert (=> d!1594028 (= (choose!36538 lt!2041510 testedP!110 lt!2041510) _$60!905)))

(assert (=> d!1593444 d!1594028))

(assert (=> d!1593444 d!1593442))

(declare-fun d!1594030 () Bool)

(declare-fun lt!2042494 () Int)

(assert (=> d!1594030 (>= lt!2042494 0)))

(declare-fun e!3092665 () Int)

(assert (=> d!1594030 (= lt!2042494 e!3092665)))

(declare-fun c!845100 () Bool)

(assert (=> d!1594030 (= c!845100 ((_ is Nil!57003) (_1!34090 lt!2042089)))))

(assert (=> d!1594030 (= (size!37831 (_1!34090 lt!2042089)) lt!2042494)))

(declare-fun b!4949919 () Bool)

(assert (=> b!4949919 (= e!3092665 0)))

(declare-fun b!4949920 () Bool)

(assert (=> b!4949920 (= e!3092665 (+ 1 (size!37831 (t!367673 (_1!34090 lt!2042089)))))))

(assert (= (and d!1594030 c!845100) b!4949919))

(assert (= (and d!1594030 (not c!845100)) b!4949920))

(declare-fun m!5974362 () Bool)

(assert (=> b!4949920 m!5974362))

(assert (=> b!4949168 d!1594030))

(assert (=> b!4949168 d!1593432))

(declare-fun bs!1182123 () Bool)

(declare-fun d!1594032 () Bool)

(assert (= bs!1182123 (and d!1594032 d!1593702)))

(declare-fun lambda!246888 () Int)

(assert (=> bs!1182123 (not (= lambda!246888 lambda!246857))))

(declare-fun bs!1182124 () Bool)

(assert (= bs!1182124 (and d!1594032 d!1594024)))

(assert (=> bs!1182124 (not (= lambda!246888 lambda!246885))))

(declare-fun bs!1182125 () Bool)

(assert (= bs!1182125 (and d!1594032 d!1593868)))

(assert (=> bs!1182125 (not (= lambda!246888 lambda!246879))))

(declare-fun bs!1182126 () Bool)

(assert (= bs!1182126 (and d!1594032 d!1593486)))

(assert (=> bs!1182126 (not (= lambda!246888 lambda!246827))))

(declare-fun bs!1182127 () Bool)

(assert (= bs!1182127 (and d!1594032 b!4948969)))

(assert (=> bs!1182127 (not (= lambda!246888 lambda!246829))))

(declare-fun bs!1182128 () Bool)

(assert (= bs!1182128 (and d!1594032 b!4948968)))

(assert (=> bs!1182128 (not (= lambda!246888 lambda!246828))))

(declare-fun bs!1182129 () Bool)

(assert (= bs!1182129 (and d!1594032 d!1593956)))

(assert (=> bs!1182129 (not (= lambda!246888 lambda!246883))))

(declare-fun bs!1182130 () Bool)

(assert (= bs!1182130 (and d!1594032 b!4949903)))

(assert (=> bs!1182130 (not (= lambda!246888 lambda!246886))))

(declare-fun bs!1182131 () Bool)

(assert (= bs!1182131 (and d!1594032 b!4949904)))

(assert (=> bs!1182131 (not (= lambda!246888 lambda!246887))))

(declare-fun bs!1182132 () Bool)

(assert (= bs!1182132 (and d!1594032 d!1593518)))

(assert (=> bs!1182132 (= lambda!246888 lambda!246847)))

(assert (=> d!1594032 (= (nullableZipper!862 (derivationStepZipper!613 z!3568 lt!2041491)) (exists!1346 (derivationStepZipper!613 z!3568 lt!2041491) lambda!246888))))

(declare-fun bs!1182133 () Bool)

(assert (= bs!1182133 d!1594032))

(assert (=> bs!1182133 m!5972488))

(declare-fun m!5974364 () Bool)

(assert (=> bs!1182133 m!5974364))

(assert (=> bm!345461 d!1594032))

(declare-fun b!4949921 () Bool)

(declare-fun e!3092666 () List!57127)

(assert (=> b!4949921 (= e!3092666 lt!2041504)))

(declare-fun e!3092667 () Bool)

(declare-fun b!4949924 () Bool)

(declare-fun lt!2042495 () List!57127)

(assert (=> b!4949924 (= e!3092667 (or (not (= lt!2041504 Nil!57003)) (= lt!2042495 (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003)))))))

(declare-fun b!4949922 () Bool)

(assert (=> b!4949922 (= e!3092666 (Cons!57003 (h!63451 (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003))) (++!12478 (t!367673 (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003))) lt!2041504)))))

(declare-fun d!1594034 () Bool)

(assert (=> d!1594034 e!3092667))

(declare-fun res!2111954 () Bool)

(assert (=> d!1594034 (=> (not res!2111954) (not e!3092667))))

(assert (=> d!1594034 (= res!2111954 (= (content!10157 lt!2042495) ((_ map or) (content!10157 (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003))) (content!10157 lt!2041504))))))

(assert (=> d!1594034 (= lt!2042495 e!3092666)))

(declare-fun c!845101 () Bool)

(assert (=> d!1594034 (= c!845101 ((_ is Nil!57003) (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003))))))

(assert (=> d!1594034 (= (++!12478 (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003)) lt!2041504) lt!2042495)))

(declare-fun b!4949923 () Bool)

(declare-fun res!2111955 () Bool)

(assert (=> b!4949923 (=> (not res!2111955) (not e!3092667))))

(assert (=> b!4949923 (= res!2111955 (= (size!37831 lt!2042495) (+ (size!37831 (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003))) (size!37831 lt!2041504))))))

(assert (= (and d!1594034 c!845101) b!4949921))

(assert (= (and d!1594034 (not c!845101)) b!4949922))

(assert (= (and d!1594034 res!2111954) b!4949923))

(assert (= (and b!4949923 res!2111955) b!4949924))

(declare-fun m!5974366 () Bool)

(assert (=> b!4949922 m!5974366))

(declare-fun m!5974368 () Bool)

(assert (=> d!1594034 m!5974368))

(assert (=> d!1594034 m!5972542))

(declare-fun m!5974370 () Bool)

(assert (=> d!1594034 m!5974370))

(assert (=> d!1594034 m!5972948))

(declare-fun m!5974372 () Bool)

(assert (=> b!4949923 m!5974372))

(assert (=> b!4949923 m!5972542))

(declare-fun m!5974374 () Bool)

(assert (=> b!4949923 m!5974374))

(assert (=> b!4949923 m!5972952))

(assert (=> d!1593512 d!1594034))

(assert (=> d!1593512 d!1593530))

(declare-fun d!1594036 () Bool)

(assert (=> d!1594036 (= (++!12478 (++!12478 testedP!110 (Cons!57003 lt!2041491 Nil!57003)) lt!2041504) lt!2041510)))

(assert (=> d!1594036 true))

(declare-fun _$68!834 () Unit!147830)

(assert (=> d!1594036 (= (choose!36544 testedP!110 lt!2041491 lt!2041504 lt!2041510) _$68!834)))

(declare-fun bs!1182134 () Bool)

(assert (= bs!1182134 d!1594036))

(assert (=> bs!1182134 m!5972542))

(assert (=> bs!1182134 m!5972542))

(assert (=> bs!1182134 m!5972894))

(assert (=> d!1593512 d!1594036))

(declare-fun b!4949932 () Bool)

(declare-fun e!3092672 () List!57127)

(assert (=> b!4949932 (= e!3092672 (Cons!57003 lt!2041491 lt!2041504))))

(declare-fun e!3092673 () Bool)

(declare-fun lt!2042498 () List!57127)

(declare-fun b!4949935 () Bool)

(assert (=> b!4949935 (= e!3092673 (or (not (= (Cons!57003 lt!2041491 lt!2041504) Nil!57003)) (= lt!2042498 testedP!110)))))

(declare-fun b!4949933 () Bool)

(assert (=> b!4949933 (= e!3092672 (Cons!57003 (h!63451 testedP!110) (++!12478 (t!367673 testedP!110) (Cons!57003 lt!2041491 lt!2041504))))))

(declare-fun d!1594038 () Bool)

(assert (=> d!1594038 e!3092673))

(declare-fun res!2111957 () Bool)

(assert (=> d!1594038 (=> (not res!2111957) (not e!3092673))))

(assert (=> d!1594038 (= res!2111957 (= (content!10157 lt!2042498) ((_ map or) (content!10157 testedP!110) (content!10157 (Cons!57003 lt!2041491 lt!2041504)))))))

(assert (=> d!1594038 (= lt!2042498 e!3092672)))

(declare-fun c!845105 () Bool)

(assert (=> d!1594038 (= c!845105 ((_ is Nil!57003) testedP!110))))

(assert (=> d!1594038 (= (++!12478 testedP!110 (Cons!57003 lt!2041491 lt!2041504)) lt!2042498)))

(declare-fun b!4949934 () Bool)

(declare-fun res!2111958 () Bool)

(assert (=> b!4949934 (=> (not res!2111958) (not e!3092673))))

(assert (=> b!4949934 (= res!2111958 (= (size!37831 lt!2042498) (+ (size!37831 testedP!110) (size!37831 (Cons!57003 lt!2041491 lt!2041504)))))))

(assert (= (and d!1594038 c!845105) b!4949932))

(assert (= (and d!1594038 (not c!845105)) b!4949933))

(assert (= (and d!1594038 res!2111957) b!4949934))

(assert (= (and b!4949934 res!2111958) b!4949935))

(declare-fun m!5974384 () Bool)

(assert (=> b!4949933 m!5974384))

(declare-fun m!5974386 () Bool)

(assert (=> d!1594038 m!5974386))

(assert (=> d!1594038 m!5972934))

(declare-fun m!5974390 () Bool)

(assert (=> d!1594038 m!5974390))

(declare-fun m!5974392 () Bool)

(assert (=> b!4949934 m!5974392))

(assert (=> b!4949934 m!5972486))

(declare-fun m!5974394 () Bool)

(assert (=> b!4949934 m!5974394))

(assert (=> d!1593512 d!1594038))

(assert (=> d!1593584 d!1593432))

(assert (=> d!1593584 d!1593582))

(declare-fun d!1594044 () Bool)

(assert (=> d!1594044 (<= (size!37831 testedP!110) (size!37831 lt!2041510))))

(assert (=> d!1594044 true))

(declare-fun _$64!643 () Unit!147830)

(assert (=> d!1594044 (= (choose!36549 testedP!110 lt!2041510) _$64!643)))

(declare-fun bs!1182136 () Bool)

(assert (= bs!1182136 d!1594044))

(assert (=> bs!1182136 m!5972486))

(assert (=> bs!1182136 m!5972506))

(assert (=> d!1593584 d!1594044))

(assert (=> d!1593584 d!1593434))

(declare-fun d!1594048 () Bool)

(declare-fun lt!2042502 () C!27232)

(assert (=> d!1594048 (contains!19498 (list!18179 totalInput!685) lt!2042502)))

(declare-fun e!3092678 () C!27232)

(assert (=> d!1594048 (= lt!2042502 e!3092678)))

(declare-fun c!845108 () Bool)

(assert (=> d!1594048 (= c!845108 (= testedPSize!70 0))))

(declare-fun e!3092679 () Bool)

(assert (=> d!1594048 e!3092679))

(declare-fun res!2111963 () Bool)

(assert (=> d!1594048 (=> (not res!2111963) (not e!3092679))))

(assert (=> d!1594048 (= res!2111963 (<= 0 testedPSize!70))))

(assert (=> d!1594048 (= (apply!13842 (list!18179 totalInput!685) testedPSize!70) lt!2042502)))

(declare-fun b!4949944 () Bool)

(assert (=> b!4949944 (= e!3092679 (< testedPSize!70 (size!37831 (list!18179 totalInput!685))))))

(declare-fun b!4949945 () Bool)

(assert (=> b!4949945 (= e!3092678 (head!10617 (list!18179 totalInput!685)))))

(declare-fun b!4949946 () Bool)

(assert (=> b!4949946 (= e!3092678 (apply!13842 (tail!9752 (list!18179 totalInput!685)) (- testedPSize!70 1)))))

(assert (= (and d!1594048 res!2111963) b!4949944))

(assert (= (and d!1594048 c!845108) b!4949945))

(assert (= (and d!1594048 (not c!845108)) b!4949946))

(assert (=> d!1594048 m!5972520))

(declare-fun m!5974420 () Bool)

(assert (=> d!1594048 m!5974420))

(assert (=> b!4949944 m!5972520))

(assert (=> b!4949944 m!5973074))

(assert (=> b!4949945 m!5972520))

(declare-fun m!5974422 () Bool)

(assert (=> b!4949945 m!5974422))

(assert (=> b!4949946 m!5972520))

(assert (=> b!4949946 m!5974344))

(assert (=> b!4949946 m!5974344))

(declare-fun m!5974424 () Bool)

(assert (=> b!4949946 m!5974424))

(assert (=> d!1593570 d!1594048))

(assert (=> d!1593570 d!1593576))

(declare-fun bm!345625 () Bool)

(declare-fun c!845137 () Bool)

(declare-fun c!845135 () Bool)

(assert (=> bm!345625 (= c!845137 c!845135)))

(declare-fun e!3092722 () Int)

(declare-fun call!345630 () C!27232)

(assert (=> bm!345625 (= call!345630 (apply!13844 (ite c!845135 (left!41589 (c!844685 totalInput!685)) (right!41919 (c!844685 totalInput!685))) e!3092722))))

(declare-fun b!4950022 () Bool)

(declare-fun e!3092723 () C!27232)

(declare-fun e!3092724 () C!27232)

(assert (=> b!4950022 (= e!3092723 e!3092724)))

(declare-fun lt!2042532 () Bool)

(declare-fun appendIndex!389 (List!57127 List!57127 Int) Bool)

(assert (=> b!4950022 (= lt!2042532 (appendIndex!389 (list!18181 (left!41589 (c!844685 totalInput!685))) (list!18181 (right!41919 (c!844685 totalInput!685))) testedPSize!70))))

(assert (=> b!4950022 (= c!845135 (< testedPSize!70 (size!37834 (left!41589 (c!844685 totalInput!685)))))))

(declare-fun b!4950023 () Bool)

(assert (=> b!4950023 (= e!3092724 call!345630)))

(declare-fun b!4950024 () Bool)

(assert (=> b!4950024 (= e!3092724 call!345630)))

(declare-fun b!4950025 () Bool)

(declare-fun apply!13846 (IArray!30081 Int) C!27232)

(assert (=> b!4950025 (= e!3092723 (apply!13846 (xs!18336 (c!844685 totalInput!685)) testedPSize!70))))

(declare-fun b!4950026 () Bool)

(assert (=> b!4950026 (= e!3092722 testedPSize!70)))

(declare-fun b!4950027 () Bool)

(assert (=> b!4950027 (= e!3092722 (- testedPSize!70 (size!37834 (left!41589 (c!844685 totalInput!685)))))))

(declare-fun b!4950028 () Bool)

(declare-fun e!3092721 () Bool)

(assert (=> b!4950028 (= e!3092721 (< testedPSize!70 (size!37834 (c!844685 totalInput!685))))))

(declare-fun d!1594052 () Bool)

(declare-fun lt!2042531 () C!27232)

(assert (=> d!1594052 (= lt!2042531 (apply!13842 (list!18181 (c!844685 totalInput!685)) testedPSize!70))))

(assert (=> d!1594052 (= lt!2042531 e!3092723)))

(declare-fun c!845136 () Bool)

(assert (=> d!1594052 (= c!845136 ((_ is Leaf!24948) (c!844685 totalInput!685)))))

(assert (=> d!1594052 e!3092721))

(declare-fun res!2111987 () Bool)

(assert (=> d!1594052 (=> (not res!2111987) (not e!3092721))))

(assert (=> d!1594052 (= res!2111987 (<= 0 testedPSize!70))))

(assert (=> d!1594052 (= (apply!13844 (c!844685 totalInput!685) testedPSize!70) lt!2042531)))

(assert (= (and d!1594052 res!2111987) b!4950028))

(assert (= (and d!1594052 c!845136) b!4950025))

(assert (= (and d!1594052 (not c!845136)) b!4950022))

(assert (= (and b!4950022 c!845135) b!4950024))

(assert (= (and b!4950022 (not c!845135)) b!4950023))

(assert (= (or b!4950024 b!4950023) bm!345625))

(assert (= (and bm!345625 c!845137) b!4950026))

(assert (= (and bm!345625 (not c!845137)) b!4950027))

(assert (=> b!4950028 m!5973076))

(assert (=> b!4950022 m!5973680))

(assert (=> b!4950022 m!5973670))

(assert (=> b!4950022 m!5973680))

(assert (=> b!4950022 m!5973670))

(declare-fun m!5974584 () Bool)

(assert (=> b!4950022 m!5974584))

(assert (=> b!4950022 m!5973674))

(declare-fun m!5974586 () Bool)

(assert (=> b!4950025 m!5974586))

(declare-fun m!5974588 () Bool)

(assert (=> bm!345625 m!5974588))

(assert (=> b!4950027 m!5973674))

(assert (=> d!1594052 m!5973052))

(assert (=> d!1594052 m!5973052))

(declare-fun m!5974590 () Bool)

(assert (=> d!1594052 m!5974590))

(assert (=> d!1593570 d!1594052))

(declare-fun d!1594118 () Bool)

(declare-fun res!2111996 () Bool)

(declare-fun e!3092730 () Bool)

(assert (=> d!1594118 (=> (not res!2111996) (not e!3092730))))

(assert (=> d!1594118 (= res!2111996 (<= (size!37831 (list!18182 (xs!18336 (c!844685 totalInput!685)))) 512))))

(assert (=> d!1594118 (= (inv!74287 (c!844685 totalInput!685)) e!3092730)))

(declare-fun b!4950037 () Bool)

(declare-fun res!2111997 () Bool)

(assert (=> b!4950037 (=> (not res!2111997) (not e!3092730))))

(assert (=> b!4950037 (= res!2111997 (= (csize!30251 (c!844685 totalInput!685)) (size!37831 (list!18182 (xs!18336 (c!844685 totalInput!685))))))))

(declare-fun b!4950038 () Bool)

(assert (=> b!4950038 (= e!3092730 (and (> (csize!30251 (c!844685 totalInput!685)) 0) (<= (csize!30251 (c!844685 totalInput!685)) 512)))))

(assert (= (and d!1594118 res!2111996) b!4950037))

(assert (= (and b!4950037 res!2111997) b!4950038))

(assert (=> d!1594118 m!5973688))

(assert (=> d!1594118 m!5973688))

(declare-fun m!5974594 () Bool)

(assert (=> d!1594118 m!5974594))

(assert (=> b!4950037 m!5973688))

(assert (=> b!4950037 m!5973688))

(assert (=> b!4950037 m!5974594))

(assert (=> b!4949114 d!1594118))

(assert (=> b!4948749 d!1593582))

(assert (=> b!4948749 d!1593432))

(assert (=> bm!345531 d!1593554))

(declare-fun d!1594124 () Bool)

(declare-fun c!845138 () Bool)

(assert (=> d!1594124 (= c!845138 ((_ is Nil!57003) lt!2041973))))

(declare-fun e!3092731 () (InoxSet C!27232))

(assert (=> d!1594124 (= (content!10157 lt!2041973) e!3092731)))

(declare-fun b!4950039 () Bool)

(assert (=> b!4950039 (= e!3092731 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4950040 () Bool)

(assert (=> b!4950040 (= e!3092731 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 lt!2041973) true) (content!10157 (t!367673 lt!2041973))))))

(assert (= (and d!1594124 c!845138) b!4950039))

(assert (= (and d!1594124 (not c!845138)) b!4950040))

(declare-fun m!5974596 () Bool)

(assert (=> b!4950040 m!5974596))

(declare-fun m!5974598 () Bool)

(assert (=> b!4950040 m!5974598))

(assert (=> d!1593522 d!1594124))

(assert (=> d!1593522 d!1593808))

(declare-fun d!1594126 () Bool)

(declare-fun c!845139 () Bool)

(assert (=> d!1594126 (= c!845139 ((_ is Nil!57003) (Cons!57003 (head!10617 lt!2041497) Nil!57003)))))

(declare-fun e!3092732 () (InoxSet C!27232))

(assert (=> d!1594126 (= (content!10157 (Cons!57003 (head!10617 lt!2041497) Nil!57003)) e!3092732)))

(declare-fun b!4950041 () Bool)

(assert (=> b!4950041 (= e!3092732 ((as const (Array C!27232 Bool)) false))))

(declare-fun b!4950042 () Bool)

(assert (=> b!4950042 (= e!3092732 ((_ map or) (store ((as const (Array C!27232 Bool)) false) (h!63451 (Cons!57003 (head!10617 lt!2041497) Nil!57003)) true) (content!10157 (t!367673 (Cons!57003 (head!10617 lt!2041497) Nil!57003)))))))

(assert (= (and d!1594126 c!845139) b!4950041))

(assert (= (and d!1594126 (not c!845139)) b!4950042))

(declare-fun m!5974600 () Bool)

(assert (=> b!4950042 m!5974600))

(declare-fun m!5974602 () Bool)

(assert (=> b!4950042 m!5974602))

(assert (=> d!1593522 d!1594126))

(declare-fun bs!1182162 () Bool)

(declare-fun d!1594128 () Bool)

(assert (= bs!1182162 (and d!1594128 d!1593702)))

(declare-fun lambda!246896 () Int)

(assert (=> bs!1182162 (= lambda!246896 lambda!246857)))

(declare-fun bs!1182163 () Bool)

(assert (= bs!1182163 (and d!1594128 d!1594032)))

(assert (=> bs!1182163 (not (= lambda!246896 lambda!246888))))

(declare-fun bs!1182164 () Bool)

(assert (= bs!1182164 (and d!1594128 d!1594024)))

(assert (=> bs!1182164 (not (= lambda!246896 lambda!246885))))

(declare-fun bs!1182165 () Bool)

(assert (= bs!1182165 (and d!1594128 d!1593868)))

(assert (=> bs!1182165 (not (= lambda!246896 lambda!246879))))

(declare-fun bs!1182166 () Bool)

(assert (= bs!1182166 (and d!1594128 d!1593486)))

(assert (=> bs!1182166 (not (= lambda!246896 lambda!246827))))

(declare-fun bs!1182167 () Bool)

(assert (= bs!1182167 (and d!1594128 b!4948969)))

(assert (=> bs!1182167 (not (= lambda!246896 lambda!246829))))

(declare-fun bs!1182168 () Bool)

(assert (= bs!1182168 (and d!1594128 b!4948968)))

(assert (=> bs!1182168 (not (= lambda!246896 lambda!246828))))

(declare-fun bs!1182169 () Bool)

(assert (= bs!1182169 (and d!1594128 d!1593956)))

(assert (=> bs!1182169 (= (= lambda!246827 (ite c!844780 lambda!246828 lambda!246829)) (= lambda!246896 lambda!246883))))

(declare-fun bs!1182170 () Bool)

(assert (= bs!1182170 (and d!1594128 b!4949903)))

(assert (=> bs!1182170 (not (= lambda!246896 lambda!246886))))

(declare-fun bs!1182171 () Bool)

(assert (= bs!1182171 (and d!1594128 b!4949904)))

(assert (=> bs!1182171 (not (= lambda!246896 lambda!246887))))

(declare-fun bs!1182172 () Bool)

(assert (= bs!1182172 (and d!1594128 d!1593518)))

(assert (=> bs!1182172 (not (= lambda!246896 lambda!246847))))

(assert (=> d!1594128 true))

(assert (=> d!1594128 (< (dynLambda!23041 order!26009 lambda!246827) (dynLambda!23041 order!26009 lambda!246896))))

(assert (=> d!1594128 (not (exists!1345 lt!2041925 lambda!246896))))

(declare-fun lt!2042537 () Unit!147830)

(declare-fun choose!36561 (List!57130 Int) Unit!147830)

(assert (=> d!1594128 (= lt!2042537 (choose!36561 lt!2041925 lambda!246827))))

(assert (=> d!1594128 (forall!13280 lt!2041925 lambda!246827)))

(assert (=> d!1594128 (= (lemmaForallThenNotExists!225 lt!2041925 lambda!246827) lt!2042537)))

(declare-fun bs!1182174 () Bool)

(assert (= bs!1182174 d!1594128))

(declare-fun m!5974618 () Bool)

(assert (=> bs!1182174 m!5974618))

(declare-fun m!5974620 () Bool)

(assert (=> bs!1182174 m!5974620))

(declare-fun m!5974622 () Bool)

(assert (=> bs!1182174 m!5974622))

(assert (=> b!4948969 d!1594128))

(declare-fun b!4950070 () Bool)

(declare-fun e!3092746 () Bool)

(declare-fun tp!1387906 () Bool)

(declare-fun tp!1387908 () Bool)

(assert (=> b!4950070 (= e!3092746 (and tp!1387906 tp!1387908))))

(declare-fun b!4950071 () Bool)

(declare-fun tp!1387909 () Bool)

(assert (=> b!4950071 (= e!3092746 tp!1387909)))

(assert (=> b!4949190 (= tp!1387884 e!3092746)))

(declare-fun b!4950069 () Bool)

(assert (=> b!4950069 (= e!3092746 tp_is_empty!36179)))

(declare-fun b!4950072 () Bool)

(declare-fun tp!1387910 () Bool)

(declare-fun tp!1387907 () Bool)

(assert (=> b!4950072 (= e!3092746 (and tp!1387910 tp!1387907))))

(assert (= (and b!4949190 ((_ is ElementMatch!13491) (h!63452 (exprs!3633 setElem!28102)))) b!4950069))

(assert (= (and b!4949190 ((_ is Concat!22064) (h!63452 (exprs!3633 setElem!28102)))) b!4950070))

(assert (= (and b!4949190 ((_ is Star!13491) (h!63452 (exprs!3633 setElem!28102)))) b!4950071))

(assert (= (and b!4949190 ((_ is Union!13491) (h!63452 (exprs!3633 setElem!28102)))) b!4950072))

(declare-fun b!4950077 () Bool)

(declare-fun e!3092749 () Bool)

(declare-fun tp!1387911 () Bool)

(declare-fun tp!1387912 () Bool)

(assert (=> b!4950077 (= e!3092749 (and tp!1387911 tp!1387912))))

(assert (=> b!4949190 (= tp!1387885 e!3092749)))

(assert (= (and b!4949190 ((_ is Cons!57004) (t!367674 (exprs!3633 setElem!28102)))) b!4950077))

(declare-fun condSetEmpty!28109 () Bool)

(assert (=> setNonEmpty!28108 (= condSetEmpty!28109 (= setRest!28108 ((as const (Array Context!6266 Bool)) false)))))

(declare-fun setRes!28109 () Bool)

(assert (=> setNonEmpty!28108 (= tp!1387894 setRes!28109)))

(declare-fun setIsEmpty!28109 () Bool)

(assert (=> setIsEmpty!28109 setRes!28109))

(declare-fun e!3092750 () Bool)

(declare-fun setNonEmpty!28109 () Bool)

(declare-fun tp!1387913 () Bool)

(declare-fun setElem!28109 () Context!6266)

(assert (=> setNonEmpty!28109 (= setRes!28109 (and tp!1387913 (inv!74282 setElem!28109) e!3092750))))

(declare-fun setRest!28109 () (InoxSet Context!6266))

(assert (=> setNonEmpty!28109 (= setRest!28108 ((_ map or) (store ((as const (Array Context!6266 Bool)) false) setElem!28109 true) setRest!28109))))

(declare-fun b!4950078 () Bool)

(declare-fun tp!1387914 () Bool)

(assert (=> b!4950078 (= e!3092750 tp!1387914)))

(assert (= (and setNonEmpty!28108 condSetEmpty!28109) setIsEmpty!28109))

(assert (= (and setNonEmpty!28108 (not condSetEmpty!28109)) setNonEmpty!28109))

(assert (= setNonEmpty!28109 b!4950078))

(declare-fun m!5974654 () Bool)

(assert (=> setNonEmpty!28109 m!5974654))

(declare-fun b!4950081 () Bool)

(declare-fun e!3092753 () Bool)

(declare-fun tp!1387917 () Bool)

(declare-fun tp!1387916 () Bool)

(assert (=> b!4950081 (= e!3092753 (and (inv!74280 (left!41589 (left!41589 (c!844685 totalInput!685)))) tp!1387916 (inv!74280 (right!41919 (left!41589 (c!844685 totalInput!685)))) tp!1387917))))

(declare-fun b!4950083 () Bool)

(declare-fun e!3092752 () Bool)

(declare-fun tp!1387915 () Bool)

(assert (=> b!4950083 (= e!3092752 tp!1387915)))

(declare-fun b!4950082 () Bool)

(assert (=> b!4950082 (= e!3092753 (and (inv!74288 (xs!18336 (left!41589 (c!844685 totalInput!685)))) e!3092752))))

(assert (=> b!4949183 (= tp!1387878 (and (inv!74280 (left!41589 (c!844685 totalInput!685))) e!3092753))))

(assert (= (and b!4949183 ((_ is Node!15010) (left!41589 (c!844685 totalInput!685)))) b!4950081))

(assert (= b!4950082 b!4950083))

(assert (= (and b!4949183 ((_ is Leaf!24948) (left!41589 (c!844685 totalInput!685)))) b!4950082))

(declare-fun m!5974664 () Bool)

(assert (=> b!4950081 m!5974664))

(declare-fun m!5974666 () Bool)

(assert (=> b!4950081 m!5974666))

(declare-fun m!5974668 () Bool)

(assert (=> b!4950082 m!5974668))

(assert (=> b!4949183 m!5973132))

(declare-fun e!3092757 () Bool)

(declare-fun tp!1387919 () Bool)

(declare-fun tp!1387920 () Bool)

(declare-fun b!4950086 () Bool)

(assert (=> b!4950086 (= e!3092757 (and (inv!74280 (left!41589 (right!41919 (c!844685 totalInput!685)))) tp!1387919 (inv!74280 (right!41919 (right!41919 (c!844685 totalInput!685)))) tp!1387920))))

(declare-fun b!4950091 () Bool)

(declare-fun e!3092756 () Bool)

(declare-fun tp!1387918 () Bool)

(assert (=> b!4950091 (= e!3092756 tp!1387918)))

(declare-fun b!4950087 () Bool)

(assert (=> b!4950087 (= e!3092757 (and (inv!74288 (xs!18336 (right!41919 (c!844685 totalInput!685)))) e!3092756))))

(assert (=> b!4949183 (= tp!1387879 (and (inv!74280 (right!41919 (c!844685 totalInput!685))) e!3092757))))

(assert (= (and b!4949183 ((_ is Node!15010) (right!41919 (c!844685 totalInput!685)))) b!4950086))

(assert (= b!4950087 b!4950091))

(assert (= (and b!4949183 ((_ is Leaf!24948) (right!41919 (c!844685 totalInput!685)))) b!4950087))

(declare-fun m!5974670 () Bool)

(assert (=> b!4950086 m!5974670))

(declare-fun m!5974672 () Bool)

(assert (=> b!4950086 m!5974672))

(declare-fun m!5974674 () Bool)

(assert (=> b!4950087 m!5974674))

(assert (=> b!4949183 m!5973134))

(declare-fun b!4950093 () Bool)

(declare-fun e!3092759 () Bool)

(declare-fun tp!1387921 () Bool)

(declare-fun tp!1387922 () Bool)

(assert (=> b!4950093 (= e!3092759 (and tp!1387921 tp!1387922))))

(assert (=> b!4949201 (= tp!1387895 e!3092759)))

(assert (= (and b!4949201 ((_ is Cons!57004) (exprs!3633 setElem!28108))) b!4950093))

(declare-fun b!4950094 () Bool)

(declare-fun e!3092760 () Bool)

(declare-fun tp!1387923 () Bool)

(assert (=> b!4950094 (= e!3092760 (and tp_is_empty!36179 tp!1387923))))

(assert (=> b!4949195 (= tp!1387888 e!3092760)))

(assert (= (and b!4949195 ((_ is Cons!57003) (t!367673 (t!367673 testedP!110)))) b!4950094))

(declare-fun b!4950095 () Bool)

(declare-fun e!3092761 () Bool)

(declare-fun tp!1387924 () Bool)

(assert (=> b!4950095 (= e!3092761 (and tp_is_empty!36179 tp!1387924))))

(assert (=> b!4949185 (= tp!1387877 e!3092761)))

(assert (= (and b!4949185 ((_ is Cons!57003) (innerList!15098 (xs!18336 (c!844685 totalInput!685))))) b!4950095))

(declare-fun b!4950098 () Bool)

(declare-fun e!3092763 () Bool)

(declare-fun tp!1387925 () Bool)

(assert (=> b!4950098 (= e!3092763 (and tp_is_empty!36179 tp!1387925))))

(assert (=> b!4949196 (= tp!1387889 e!3092763)))

(assert (= (and b!4949196 ((_ is Cons!57003) (t!367673 (t!367673 testedSuffix!70)))) b!4950098))

(declare-fun b_lambda!196431 () Bool)

(assert (= b_lambda!196429 (or d!1593572 b_lambda!196431)))

(declare-fun bs!1182175 () Bool)

(declare-fun d!1594156 () Bool)

(assert (= bs!1182175 (and d!1594156 d!1593572)))

(declare-fun validRegex!5958 (Regex!13491) Bool)

(assert (=> bs!1182175 (= (dynLambda!23043 lambda!246850 (h!63452 (exprs!3633 setElem!28102))) (validRegex!5958 (h!63452 (exprs!3633 setElem!28102))))))

(declare-fun m!5974684 () Bool)

(assert (=> bs!1182175 m!5974684))

(assert (=> b!4949842 d!1594156))

(check-sat (not b!4949233) (not bm!345588) (not d!1593820) (not bm!345583) (not b!4949794) (not bm!345586) (not d!1593654) (not b!4949708) (not b!4949536) (not d!1593892) (not d!1594016) (not b!4949859) (not d!1593842) (not b!4949851) (not d!1593728) (not d!1594034) (not b!4949509) (not b!4949589) (not d!1593992) (not b!4950077) (not b!4949231) (not b!4949853) (not d!1594014) (not d!1594118) (not bm!345578) (not b!4949746) (not bm!345537) (not bm!345534) (not b!4949282) (not b!4949640) (not b!4949251) (not b!4949524) (not b!4949592) (not b!4949289) (not bs!1182175) (not bm!345539) (not d!1593626) (not b!4949865) (not b!4949899) (not b!4949551) (not b!4949258) (not b!4949934) (not d!1593896) (not bm!345585) (not d!1593942) (not b!4949821) (not b!4949204) (not b!4949271) (not d!1593854) (not b!4949373) (not b!4949538) (not d!1593650) (not b!4949321) (not b!4949344) (not b!4949769) (not b!4949207) (not bm!345536) (not b!4949520) (not d!1593812) (not b!4949549) (not b!4949533) (not b!4949565) (not d!1593956) (not d!1593986) (not b!4949613) (not d!1593796) (not d!1593932) (not b!4949511) (not b!4949901) (not bm!345609) (not b!4949255) (not d!1593636) (not b!4949944) (not b!4950042) (not b!4949879) (not b!4949230) (not b!4949753) (not d!1593814) (not bm!345576) (not b!4949900) (not d!1593868) (not b!4949713) (not d!1593638) (not b!4949325) (not b!4949291) (not b!4949376) (not b!4949278) (not bm!345612) (not d!1593916) (not b!4949547) (not b!4949639) (not d!1594052) (not b!4949705) (not d!1593838) (not b!4949283) (not b!4950093) (not bm!345540) (not b!4949563) (not d!1593702) (not b!4949296) (not b!4949800) (not d!1594128) (not d!1593690) (not b!4949183) (not d!1593644) (not b!4949633) (not d!1594038) (not b!4949709) (not b!4949626) (not b!4949510) (not b!4949566) (not bm!345587) (not b!4950071) (not b!4949629) (not d!1593870) (not bm!345582) (not b!4949604) (not b!4949235) (not d!1594026) (not bm!345581) (not b!4949923) (not b!4949525) (not d!1594024) (not b_lambda!196431) (not b!4949286) (not b!4949877) (not b!4949946) (not b!4949762) (not bm!345538) (not d!1594044) (not b!4950040) (not b!4949866) (not b!4949591) (not b!4949745) (not d!1593624) (not bm!345574) (not d!1593908) (not bm!345614) (not d!1593920) (not b!4949669) (not d!1593990) (not b!4949343) (not b!4949609) (not b!4949535) (not b!4949904) (not b!4949634) (not b!4949610) (not b!4949573) (not d!1593680) tp_is_empty!36179 (not b!4949512) (not setNonEmpty!28109) (not b!4949252) (not d!1593688) (not b!4949374) (not d!1593998) (not b!4949843) (not b!4949580) (not bm!345573) (not d!1593926) (not b!4949638) (not b!4949903) (not b!4949786) (not b!4949299) (not d!1593716) (not b!4949577) (not b!4949243) (not b!4949284) (not b!4949586) (not b!4949245) (not d!1593876) (not b!4950028) (not d!1593630) (not b!4949857) (not b!4949544) (not d!1593732) (not b!4950086) (not bm!345535) (not bm!345625) (not b!4949240) (not b!4950095) (not d!1593662) (not b!4949884) (not b!4950022) (not b!4949543) (not b!4949575) (not b!4949742) (not b!4950027) (not b!4949292) (not b!4949860) (not b!4949608) (not b!4950091) (not b!4949861) (not b!4949711) (not b!4949541) (not d!1593628) (not b!4949607) (not b!4949238) (not d!1593672) (not b!4949852) (not b!4949776) (not bm!345611) (not bm!345610) (not b!4949630) (not b!4949531) (not b!4949281) (not d!1594048) (not bm!345616) (not b!4950098) (not d!1594022) (not b!4949811) (not d!1593888) (not bm!345618) (not d!1594032) (not b!4950094) (not b!4949749) (not b!4949761) (not d!1593668) (not b!4950072) (not b!4949265) (not d!1593692) (not b!4949670) (not d!1593864) (not b!4949817) (not b!4949882) (not b!4949287) (not bm!345541) (not b!4949569) (not b!4950025) (not b!4949548) (not b!4949371) (not b!4950081) (not b!4949775) (not b!4950078) (not b!4949682) (not d!1593646) (not b!4949874) (not b!4949765) (not b!4949703) (not b!4950082) (not bm!345584) (not b!4949561) (not d!1593828) (not b!4949232) (not b!4949739) (not bm!345613) (not b!4949922) (not b!4949254) (not bm!345542) (not b!4950083) (not bm!345575) (not b!4949898) (not d!1593886) (not b!4949570) (not b!4949605) (not d!1593862) (not b!4949783) (not d!1593984) (not b!4949624) (not b!4949349) (not b!4949819) (not d!1593830) (not b!4949372) (not d!1593982) (not bm!345615) (not b!4950070) (not bm!345580) (not b!4949785) (not b!4950037) (not b!4949234) (not bm!345607) (not b!4949856) (not b!4949559) (not b!4949741) (not d!1593786) (not b!4949700) (not b!4949377) (not b!4949933) (not b!4949288) (not b!4949681) (not b!4949345) (not d!1593666) (not b!4949611) (not d!1593860) (not bm!345579) (not b!4949276) (not b!4949205) (not d!1593612) (not b!4949612) (not d!1593660) (not bm!345617) (not b!4949750) (not b!4949767) (not b!4949259) (not b!4949203) (not b!4949323) (not b!4949250) (not b!4949553) (not b!4950087) (not b!4949945) (not b!4949628) (not b!4949621) (not b!4949920) (not d!1594036) (not d!1593890) (not b!4949571) (not d!1593798) (not b!4949375) (not b!4949539))
(check-sat)
