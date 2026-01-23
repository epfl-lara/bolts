; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730360 () Bool)

(assert start!730360)

(declare-fun b!7554410 () Bool)

(declare-fun res!3027795 () Bool)

(declare-fun e!4499582 () Bool)

(assert (=> b!7554410 (=> res!3027795 e!4499582)))

(declare-datatypes ((C!40244 0))(
  ( (C!40245 (val!30562 Int)) )
))
(declare-datatypes ((Regex!19959 0))(
  ( (ElementMatch!19959 (c!1394286 C!40244)) (Concat!28804 (regOne!40430 Regex!19959) (regTwo!40430 Regex!19959)) (EmptyExpr!19959) (Star!19959 (reg!20288 Regex!19959)) (EmptyLang!19959) (Union!19959 (regOne!40431 Regex!19959) (regTwo!40431 Regex!19959)) )
))
(declare-fun r!24333 () Regex!19959)

(declare-fun lostCause!1747 (Regex!19959) Bool)

(assert (=> b!7554410 (= res!3027795 (not (lostCause!1747 r!24333)))))

(declare-fun b!7554412 () Bool)

(declare-fun e!4499583 () Bool)

(declare-fun tp!2197991 () Bool)

(declare-fun tp!2197989 () Bool)

(assert (=> b!7554412 (= e!4499583 (and tp!2197991 tp!2197989))))

(declare-fun b!7554413 () Bool)

(declare-fun lt!2647696 () Int)

(declare-fun lt!2647699 () Int)

(assert (=> b!7554413 (= e!4499582 (<= lt!2647696 lt!2647699))))

(declare-fun baseR!101 () Regex!19959)

(declare-datatypes ((List!72842 0))(
  ( (Nil!72718) (Cons!72718 (h!79166 C!40244) (t!387567 List!72842)) )
))
(declare-fun testedP!423 () List!72842)

(declare-fun lt!2647700 () Regex!19959)

(declare-fun matchR!9561 (Regex!19959 List!72842) Bool)

(assert (=> b!7554413 (= (matchR!9561 baseR!101 testedP!423) (matchR!9561 lt!2647700 Nil!72718))))

(declare-datatypes ((Unit!166852 0))(
  ( (Unit!166853) )
))
(declare-fun lt!2647698 () Unit!166852)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!260 (Regex!19959 List!72842) Unit!166852)

(assert (=> b!7554413 (= lt!2647698 (lemmaMatchRIsSameAsWholeDerivativeAndNil!260 baseR!101 testedP!423))))

(declare-fun b!7554414 () Bool)

(declare-fun res!3027791 () Bool)

(declare-fun e!4499581 () Bool)

(assert (=> b!7554414 (=> (not res!3027791) (not e!4499581))))

(declare-fun validRegex!10387 (Regex!19959) Bool)

(assert (=> b!7554414 (= res!3027791 (validRegex!10387 r!24333))))

(declare-fun b!7554415 () Bool)

(declare-fun e!4499587 () Bool)

(assert (=> b!7554415 (= e!4499581 e!4499587)))

(declare-fun res!3027789 () Bool)

(assert (=> b!7554415 (=> (not res!3027789) (not e!4499587))))

(assert (=> b!7554415 (= res!3027789 (>= lt!2647699 lt!2647696))))

(declare-fun size!42455 (List!72842) Int)

(assert (=> b!7554415 (= lt!2647696 (size!42455 testedP!423))))

(declare-fun knownP!30 () List!72842)

(assert (=> b!7554415 (= lt!2647699 (size!42455 knownP!30))))

(declare-fun b!7554416 () Bool)

(declare-fun tp!2197990 () Bool)

(declare-fun tp!2197992 () Bool)

(assert (=> b!7554416 (= e!4499583 (and tp!2197990 tp!2197992))))

(declare-fun b!7554417 () Bool)

(declare-fun e!4499585 () Bool)

(assert (=> b!7554417 (= e!4499585 e!4499582)))

(declare-fun res!3027794 () Bool)

(assert (=> b!7554417 (=> res!3027794 e!4499582)))

(assert (=> b!7554417 (= res!3027794 (not (= lt!2647700 r!24333)))))

(declare-fun derivative!489 (Regex!19959 List!72842) Regex!19959)

(assert (=> b!7554417 (= lt!2647700 (derivative!489 baseR!101 testedP!423))))

(declare-fun b!7554418 () Bool)

(declare-fun e!4499579 () Bool)

(declare-fun tp_is_empty!50273 () Bool)

(assert (=> b!7554418 (= e!4499579 tp_is_empty!50273)))

(declare-fun b!7554419 () Bool)

(declare-fun tp!2197998 () Bool)

(declare-fun tp!2197997 () Bool)

(assert (=> b!7554419 (= e!4499579 (and tp!2197998 tp!2197997))))

(declare-fun b!7554411 () Bool)

(declare-fun res!3027788 () Bool)

(assert (=> b!7554411 (=> (not res!3027788) (not e!4499581))))

(declare-fun input!7874 () List!72842)

(declare-fun isPrefix!6165 (List!72842 List!72842) Bool)

(assert (=> b!7554411 (= res!3027788 (isPrefix!6165 testedP!423 input!7874))))

(declare-fun res!3027793 () Bool)

(assert (=> start!730360 (=> (not res!3027793) (not e!4499581))))

(assert (=> start!730360 (= res!3027793 (validRegex!10387 baseR!101))))

(assert (=> start!730360 e!4499581))

(assert (=> start!730360 e!4499579))

(declare-fun e!4499584 () Bool)

(assert (=> start!730360 e!4499584))

(declare-fun e!4499580 () Bool)

(assert (=> start!730360 e!4499580))

(declare-fun e!4499586 () Bool)

(assert (=> start!730360 e!4499586))

(assert (=> start!730360 e!4499583))

(declare-fun b!7554420 () Bool)

(declare-fun tp!2197996 () Bool)

(assert (=> b!7554420 (= e!4499579 tp!2197996)))

(declare-fun b!7554421 () Bool)

(declare-fun tp!2197994 () Bool)

(assert (=> b!7554421 (= e!4499586 (and tp_is_empty!50273 tp!2197994))))

(declare-fun b!7554422 () Bool)

(declare-fun tp!2197999 () Bool)

(assert (=> b!7554422 (= e!4499584 (and tp_is_empty!50273 tp!2197999))))

(declare-fun b!7554423 () Bool)

(assert (=> b!7554423 (= e!4499583 tp_is_empty!50273)))

(declare-fun b!7554424 () Bool)

(declare-fun tp!2197995 () Bool)

(declare-fun tp!2198000 () Bool)

(assert (=> b!7554424 (= e!4499579 (and tp!2197995 tp!2198000))))

(declare-fun b!7554425 () Bool)

(declare-fun tp!2198001 () Bool)

(assert (=> b!7554425 (= e!4499580 (and tp_is_empty!50273 tp!2198001))))

(declare-fun b!7554426 () Bool)

(declare-fun res!3027792 () Bool)

(assert (=> b!7554426 (=> (not res!3027792) (not e!4499581))))

(assert (=> b!7554426 (= res!3027792 (isPrefix!6165 knownP!30 input!7874))))

(declare-fun b!7554427 () Bool)

(assert (=> b!7554427 (= e!4499587 (not e!4499585))))

(declare-fun res!3027796 () Bool)

(assert (=> b!7554427 (=> res!3027796 e!4499585)))

(declare-fun getSuffix!3643 (List!72842 List!72842) List!72842)

(assert (=> b!7554427 (= res!3027796 (not (matchR!9561 r!24333 (getSuffix!3643 knownP!30 testedP!423))))))

(assert (=> b!7554427 (isPrefix!6165 testedP!423 knownP!30)))

(declare-fun lt!2647697 () Unit!166852)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!913 (List!72842 List!72842 List!72842) Unit!166852)

(assert (=> b!7554427 (= lt!2647697 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!913 knownP!30 testedP!423 input!7874))))

(declare-fun b!7554428 () Bool)

(declare-fun res!3027790 () Bool)

(assert (=> b!7554428 (=> (not res!3027790) (not e!4499587))))

(assert (=> b!7554428 (= res!3027790 (matchR!9561 baseR!101 knownP!30))))

(declare-fun b!7554429 () Bool)

(declare-fun tp!2197993 () Bool)

(assert (=> b!7554429 (= e!4499583 tp!2197993)))

(assert (= (and start!730360 res!3027793) b!7554414))

(assert (= (and b!7554414 res!3027791) b!7554411))

(assert (= (and b!7554411 res!3027788) b!7554426))

(assert (= (and b!7554426 res!3027792) b!7554415))

(assert (= (and b!7554415 res!3027789) b!7554428))

(assert (= (and b!7554428 res!3027790) b!7554427))

(assert (= (and b!7554427 (not res!3027796)) b!7554417))

(assert (= (and b!7554417 (not res!3027794)) b!7554410))

(assert (= (and b!7554410 (not res!3027795)) b!7554413))

(get-info :version)

(assert (= (and start!730360 ((_ is ElementMatch!19959) baseR!101)) b!7554418))

(assert (= (and start!730360 ((_ is Concat!28804) baseR!101)) b!7554424))

(assert (= (and start!730360 ((_ is Star!19959) baseR!101)) b!7554420))

(assert (= (and start!730360 ((_ is Union!19959) baseR!101)) b!7554419))

(assert (= (and start!730360 ((_ is Cons!72718) input!7874)) b!7554422))

(assert (= (and start!730360 ((_ is Cons!72718) knownP!30)) b!7554425))

(assert (= (and start!730360 ((_ is Cons!72718) testedP!423)) b!7554421))

(assert (= (and start!730360 ((_ is ElementMatch!19959) r!24333)) b!7554423))

(assert (= (and start!730360 ((_ is Concat!28804) r!24333)) b!7554416))

(assert (= (and start!730360 ((_ is Star!19959) r!24333)) b!7554429))

(assert (= (and start!730360 ((_ is Union!19959) r!24333)) b!7554412))

(declare-fun m!8120650 () Bool)

(assert (=> b!7554413 m!8120650))

(declare-fun m!8120652 () Bool)

(assert (=> b!7554413 m!8120652))

(declare-fun m!8120654 () Bool)

(assert (=> b!7554413 m!8120654))

(declare-fun m!8120656 () Bool)

(assert (=> b!7554414 m!8120656))

(declare-fun m!8120658 () Bool)

(assert (=> b!7554428 m!8120658))

(declare-fun m!8120660 () Bool)

(assert (=> b!7554426 m!8120660))

(declare-fun m!8120662 () Bool)

(assert (=> b!7554410 m!8120662))

(declare-fun m!8120664 () Bool)

(assert (=> b!7554417 m!8120664))

(declare-fun m!8120666 () Bool)

(assert (=> b!7554411 m!8120666))

(declare-fun m!8120668 () Bool)

(assert (=> b!7554415 m!8120668))

(declare-fun m!8120670 () Bool)

(assert (=> b!7554415 m!8120670))

(declare-fun m!8120672 () Bool)

(assert (=> b!7554427 m!8120672))

(assert (=> b!7554427 m!8120672))

(declare-fun m!8120674 () Bool)

(assert (=> b!7554427 m!8120674))

(declare-fun m!8120676 () Bool)

(assert (=> b!7554427 m!8120676))

(declare-fun m!8120678 () Bool)

(assert (=> b!7554427 m!8120678))

(declare-fun m!8120680 () Bool)

(assert (=> start!730360 m!8120680))

(check-sat (not b!7554417) (not b!7554419) (not b!7554412) (not b!7554425) (not b!7554422) (not b!7554411) (not b!7554421) (not b!7554420) tp_is_empty!50273 (not b!7554429) (not b!7554416) (not b!7554424) (not b!7554426) (not b!7554410) (not b!7554414) (not b!7554428) (not b!7554427) (not b!7554413) (not b!7554415) (not start!730360))
(check-sat)
