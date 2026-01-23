; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517816 () Bool)

(assert start!517816)

(declare-fun b!4930513 () Bool)

(declare-fun e!3080463 () Bool)

(declare-fun tp_is_empty!35951 () Bool)

(declare-fun tp!1384179 () Bool)

(assert (=> b!4930513 (= e!3080463 (and tp_is_empty!35951 tp!1384179))))

(declare-fun b!4930514 () Bool)

(declare-fun e!3080465 () Bool)

(declare-fun e!3080470 () Bool)

(assert (=> b!4930514 (= e!3080465 e!3080470)))

(declare-fun res!2104048 () Bool)

(assert (=> b!4930514 (=> res!2104048 e!3080470)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27004 0))(
  ( (C!27005 (val!22836 Int)) )
))
(declare-datatypes ((Regex!13387 0))(
  ( (ElementMatch!13387 (c!840243 C!27004)) (Concat!21960 (regOne!27286 Regex!13387) (regTwo!27286 Regex!13387)) (EmptyExpr!13387) (Star!13387 (reg!13716 Regex!13387)) (EmptyLang!13387) (Union!13387 (regOne!27287 Regex!13387) (regTwo!27287 Regex!13387)) )
))
(declare-datatypes ((List!56855 0))(
  ( (Nil!56731) (Cons!56731 (h!63179 Regex!13387) (t!367331 List!56855)) )
))
(declare-datatypes ((Context!6058 0))(
  ( (Context!6059 (exprs!3529 List!56855)) )
))
(declare-fun z!3568 () (InoxSet Context!6058))

(declare-fun lostCauseZipper!705 ((InoxSet Context!6058)) Bool)

(assert (=> b!4930514 (= res!2104048 (lostCauseZipper!705 z!3568))))

(declare-datatypes ((List!56856 0))(
  ( (Nil!56732) (Cons!56732 (h!63180 C!27004) (t!367332 List!56856)) )
))
(declare-fun testedSuffix!70 () List!56856)

(declare-fun lt!2029654 () List!56856)

(assert (=> b!4930514 (and (= testedSuffix!70 lt!2029654) (= lt!2029654 testedSuffix!70))))

(declare-fun testedP!110 () List!56856)

(declare-datatypes ((Unit!147361 0))(
  ( (Unit!147362) )
))
(declare-fun lt!2029652 () Unit!147361)

(declare-fun lt!2029653 () List!56856)

(declare-fun lemmaSamePrefixThenSameSuffix!2383 (List!56856 List!56856 List!56856 List!56856 List!56856) Unit!147361)

(assert (=> b!4930514 (= lt!2029652 (lemmaSamePrefixThenSameSuffix!2383 testedP!110 testedSuffix!70 testedP!110 lt!2029654 lt!2029653))))

(declare-fun getSuffix!2969 (List!56856 List!56856) List!56856)

(assert (=> b!4930514 (= lt!2029654 (getSuffix!2969 lt!2029653 testedP!110))))

(declare-fun b!4930515 () Bool)

(declare-fun res!2104044 () Bool)

(declare-fun e!3080468 () Bool)

(assert (=> b!4930515 (=> (not res!2104044) (not e!3080468))))

(declare-fun testedPSize!70 () Int)

(declare-fun size!37541 (List!56856) Int)

(assert (=> b!4930515 (= res!2104044 (= testedPSize!70 (size!37541 testedP!110)))))

(declare-fun b!4930516 () Bool)

(declare-fun res!2104047 () Bool)

(assert (=> b!4930516 (=> (not res!2104047) (not e!3080468))))

(declare-fun totalInputSize!132 () Int)

(declare-datatypes ((IArray!29853 0))(
  ( (IArray!29854 (innerList!14984 List!56856)) )
))
(declare-datatypes ((Conc!14896 0))(
  ( (Node!14896 (left!41378 Conc!14896) (right!41708 Conc!14896) (csize!30022 Int) (cheight!15107 Int)) (Leaf!24777 (xs!18220 IArray!29853) (csize!30023 Int)) (Empty!14896) )
))
(declare-datatypes ((BalanceConc!29222 0))(
  ( (BalanceConc!29223 (c!840244 Conc!14896)) )
))
(declare-fun totalInput!685 () BalanceConc!29222)

(declare-fun size!37542 (BalanceConc!29222) Int)

(assert (=> b!4930516 (= res!2104047 (= totalInputSize!132 (size!37542 totalInput!685)))))

(declare-fun b!4930517 () Bool)

(declare-fun e!3080464 () Bool)

(declare-fun tp!1384181 () Bool)

(assert (=> b!4930517 (= e!3080464 tp!1384181)))

(declare-fun setNonEmpty!27602 () Bool)

(declare-fun setRes!27602 () Bool)

(declare-fun tp!1384180 () Bool)

(declare-fun setElem!27602 () Context!6058)

(declare-fun inv!73602 (Context!6058) Bool)

(assert (=> setNonEmpty!27602 (= setRes!27602 (and tp!1384180 (inv!73602 setElem!27602) e!3080464))))

(declare-fun setRest!27602 () (InoxSet Context!6058))

(assert (=> setNonEmpty!27602 (= z!3568 ((_ map or) (store ((as const (Array Context!6058 Bool)) false) setElem!27602 true) setRest!27602))))

(declare-fun b!4930518 () Bool)

(declare-fun e!3080467 () Bool)

(declare-fun tp!1384183 () Bool)

(assert (=> b!4930518 (= e!3080467 (and tp_is_empty!35951 tp!1384183))))

(declare-fun b!4930519 () Bool)

(declare-fun e!3080466 () Bool)

(declare-fun tp!1384182 () Bool)

(declare-fun inv!73603 (Conc!14896) Bool)

(assert (=> b!4930519 (= e!3080466 (and (inv!73603 (c!840244 totalInput!685)) tp!1384182))))

(declare-fun res!2104045 () Bool)

(assert (=> start!517816 (=> (not res!2104045) (not e!3080468))))

(declare-fun lt!2029656 () List!56856)

(assert (=> start!517816 (= res!2104045 (= lt!2029656 lt!2029653))))

(declare-fun list!17991 (BalanceConc!29222) List!56856)

(assert (=> start!517816 (= lt!2029653 (list!17991 totalInput!685))))

(declare-fun ++!12352 (List!56856 List!56856) List!56856)

(assert (=> start!517816 (= lt!2029656 (++!12352 testedP!110 testedSuffix!70))))

(assert (=> start!517816 e!3080468))

(assert (=> start!517816 e!3080463))

(declare-fun condSetEmpty!27602 () Bool)

(assert (=> start!517816 (= condSetEmpty!27602 (= z!3568 ((as const (Array Context!6058 Bool)) false)))))

(assert (=> start!517816 setRes!27602))

(assert (=> start!517816 true))

(declare-fun inv!73604 (BalanceConc!29222) Bool)

(assert (=> start!517816 (and (inv!73604 totalInput!685) e!3080466)))

(assert (=> start!517816 e!3080467))

(declare-fun b!4930520 () Bool)

(declare-fun res!2104046 () Bool)

(assert (=> b!4930520 (=> res!2104046 e!3080470)))

(assert (=> b!4930520 (= res!2104046 (not (= testedPSize!70 totalInputSize!132)))))

(declare-fun b!4930521 () Bool)

(declare-fun e!3080469 () Bool)

(assert (=> b!4930521 (= e!3080470 e!3080469)))

(declare-fun res!2104049 () Bool)

(assert (=> b!4930521 (=> res!2104049 e!3080469)))

(assert (=> b!4930521 (= res!2104049 (not (= testedP!110 lt!2029653)))))

(assert (=> b!4930521 (= lt!2029653 testedP!110)))

(declare-fun lt!2029657 () Unit!147361)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1127 (List!56856 List!56856 List!56856) Unit!147361)

(assert (=> b!4930521 (= lt!2029657 (lemmaIsPrefixSameLengthThenSameList!1127 lt!2029653 testedP!110 lt!2029653))))

(declare-fun isPrefix!4985 (List!56856 List!56856) Bool)

(assert (=> b!4930521 (isPrefix!4985 lt!2029653 lt!2029653)))

(declare-fun lt!2029659 () Unit!147361)

(declare-fun lemmaIsPrefixRefl!3367 (List!56856 List!56856) Unit!147361)

(assert (=> b!4930521 (= lt!2029659 (lemmaIsPrefixRefl!3367 lt!2029653 lt!2029653))))

(declare-fun b!4930522 () Bool)

(assert (=> b!4930522 (= e!3080469 true)))

(declare-fun lt!2029655 () Bool)

(declare-fun nullableZipper!818 ((InoxSet Context!6058)) Bool)

(assert (=> b!4930522 (= lt!2029655 (nullableZipper!818 z!3568))))

(declare-fun setIsEmpty!27602 () Bool)

(assert (=> setIsEmpty!27602 setRes!27602))

(declare-fun b!4930523 () Bool)

(assert (=> b!4930523 (= e!3080468 (not e!3080465))))

(declare-fun res!2104050 () Bool)

(assert (=> b!4930523 (=> res!2104050 e!3080465)))

(assert (=> b!4930523 (= res!2104050 (not (isPrefix!4985 testedP!110 lt!2029653)))))

(assert (=> b!4930523 (isPrefix!4985 testedP!110 lt!2029656)))

(declare-fun lt!2029658 () Unit!147361)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3209 (List!56856 List!56856) Unit!147361)

(assert (=> b!4930523 (= lt!2029658 (lemmaConcatTwoListThenFirstIsPrefix!3209 testedP!110 testedSuffix!70))))

(assert (= (and start!517816 res!2104045) b!4930515))

(assert (= (and b!4930515 res!2104044) b!4930516))

(assert (= (and b!4930516 res!2104047) b!4930523))

(assert (= (and b!4930523 (not res!2104050)) b!4930514))

(assert (= (and b!4930514 (not res!2104048)) b!4930520))

(assert (= (and b!4930520 (not res!2104046)) b!4930521))

(assert (= (and b!4930521 (not res!2104049)) b!4930522))

(get-info :version)

(assert (= (and start!517816 ((_ is Cons!56732) testedP!110)) b!4930513))

(assert (= (and start!517816 condSetEmpty!27602) setIsEmpty!27602))

(assert (= (and start!517816 (not condSetEmpty!27602)) setNonEmpty!27602))

(assert (= setNonEmpty!27602 b!4930517))

(assert (= start!517816 b!4930519))

(assert (= (and start!517816 ((_ is Cons!56732) testedSuffix!70)) b!4930518))

(declare-fun m!5950626 () Bool)

(assert (=> b!4930514 m!5950626))

(declare-fun m!5950628 () Bool)

(assert (=> b!4930514 m!5950628))

(declare-fun m!5950630 () Bool)

(assert (=> b!4930514 m!5950630))

(declare-fun m!5950632 () Bool)

(assert (=> b!4930516 m!5950632))

(declare-fun m!5950634 () Bool)

(assert (=> setNonEmpty!27602 m!5950634))

(declare-fun m!5950636 () Bool)

(assert (=> start!517816 m!5950636))

(declare-fun m!5950638 () Bool)

(assert (=> start!517816 m!5950638))

(declare-fun m!5950640 () Bool)

(assert (=> start!517816 m!5950640))

(declare-fun m!5950642 () Bool)

(assert (=> b!4930519 m!5950642))

(declare-fun m!5950644 () Bool)

(assert (=> b!4930523 m!5950644))

(declare-fun m!5950646 () Bool)

(assert (=> b!4930523 m!5950646))

(declare-fun m!5950648 () Bool)

(assert (=> b!4930523 m!5950648))

(declare-fun m!5950650 () Bool)

(assert (=> b!4930515 m!5950650))

(declare-fun m!5950652 () Bool)

(assert (=> b!4930521 m!5950652))

(declare-fun m!5950654 () Bool)

(assert (=> b!4930521 m!5950654))

(declare-fun m!5950656 () Bool)

(assert (=> b!4930521 m!5950656))

(declare-fun m!5950658 () Bool)

(assert (=> b!4930522 m!5950658))

(check-sat (not b!4930517) tp_is_empty!35951 (not b!4930518) (not b!4930522) (not setNonEmpty!27602) (not b!4930516) (not b!4930519) (not start!517816) (not b!4930513) (not b!4930515) (not b!4930521) (not b!4930514) (not b!4930523))
(check-sat)
