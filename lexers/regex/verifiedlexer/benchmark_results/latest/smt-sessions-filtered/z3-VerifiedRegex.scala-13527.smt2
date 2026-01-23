; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728536 () Bool)

(assert start!728536)

(declare-fun b!7529622 () Bool)

(declare-fun e!4487700 () Bool)

(declare-fun tp_is_empty!50053 () Bool)

(declare-fun tp!2188671 () Bool)

(assert (=> b!7529622 (= e!4487700 (and tp_is_empty!50053 tp!2188671))))

(declare-fun b!7529623 () Bool)

(declare-fun res!3017730 () Bool)

(declare-fun e!4487702 () Bool)

(assert (=> b!7529623 (=> (not res!3017730) (not e!4487702))))

(declare-datatypes ((C!40024 0))(
  ( (C!40025 (val!30452 Int)) )
))
(declare-datatypes ((Regex!19849 0))(
  ( (ElementMatch!19849 (c!1390738 C!40024)) (Concat!28694 (regOne!40210 Regex!19849) (regTwo!40210 Regex!19849)) (EmptyExpr!19849) (Star!19849 (reg!20178 Regex!19849)) (EmptyLang!19849) (Union!19849 (regOne!40211 Regex!19849) (regTwo!40211 Regex!19849)) )
))
(declare-fun r!24333 () Regex!19849)

(declare-fun validRegex!10277 (Regex!19849) Bool)

(assert (=> b!7529623 (= res!3017730 (validRegex!10277 r!24333))))

(declare-fun b!7529624 () Bool)

(declare-fun res!3017729 () Bool)

(assert (=> b!7529624 (=> (not res!3017729) (not e!4487702))))

(declare-datatypes ((List!72732 0))(
  ( (Nil!72608) (Cons!72608 (h!79056 C!40024) (t!387439 List!72732)) )
))
(declare-fun knownP!30 () List!72732)

(declare-fun testedP!423 () List!72732)

(declare-fun size!42345 (List!72732) Int)

(assert (=> b!7529624 (= res!3017729 (>= (size!42345 knownP!30) (size!42345 testedP!423)))))

(declare-fun b!7529625 () Bool)

(declare-fun e!4487701 () Bool)

(declare-fun tp!2188680 () Bool)

(declare-fun tp!2188674 () Bool)

(assert (=> b!7529625 (= e!4487701 (and tp!2188680 tp!2188674))))

(declare-fun b!7529626 () Bool)

(declare-fun res!3017725 () Bool)

(assert (=> b!7529626 (=> (not res!3017725) (not e!4487702))))

(declare-fun input!7874 () List!72732)

(declare-fun isPrefix!6055 (List!72732 List!72732) Bool)

(assert (=> b!7529626 (= res!3017725 (isPrefix!6055 knownP!30 input!7874))))

(declare-fun res!3017728 () Bool)

(assert (=> start!728536 (=> (not res!3017728) (not e!4487702))))

(declare-fun baseR!101 () Regex!19849)

(assert (=> start!728536 (= res!3017728 (validRegex!10277 baseR!101))))

(assert (=> start!728536 e!4487702))

(declare-fun e!4487707 () Bool)

(assert (=> start!728536 e!4487707))

(declare-fun e!4487706 () Bool)

(assert (=> start!728536 e!4487706))

(assert (=> start!728536 e!4487700))

(declare-fun e!4487705 () Bool)

(assert (=> start!728536 e!4487705))

(assert (=> start!728536 e!4487701))

(declare-fun b!7529627 () Bool)

(assert (=> b!7529627 (= e!4487707 tp_is_empty!50053)))

(declare-fun b!7529628 () Bool)

(declare-fun e!4487704 () Bool)

(assert (=> b!7529628 (= e!4487702 (not e!4487704))))

(declare-fun res!3017722 () Bool)

(assert (=> b!7529628 (=> res!3017722 e!4487704)))

(declare-fun matchR!9451 (Regex!19849 List!72732) Bool)

(declare-fun getSuffix!3535 (List!72732 List!72732) List!72732)

(assert (=> b!7529628 (= res!3017722 (not (matchR!9451 r!24333 (getSuffix!3535 knownP!30 testedP!423))))))

(assert (=> b!7529628 (isPrefix!6055 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166612 0))(
  ( (Unit!166613) )
))
(declare-fun lt!2640106 () Unit!166612)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!805 (List!72732 List!72732 List!72732) Unit!166612)

(assert (=> b!7529628 (= lt!2640106 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!805 knownP!30 testedP!423 input!7874))))

(declare-fun b!7529629 () Bool)

(declare-fun tp!2188681 () Bool)

(assert (=> b!7529629 (= e!4487706 (and tp_is_empty!50053 tp!2188681))))

(declare-fun b!7529630 () Bool)

(declare-fun res!3017723 () Bool)

(assert (=> b!7529630 (=> (not res!3017723) (not e!4487702))))

(assert (=> b!7529630 (= res!3017723 (isPrefix!6055 testedP!423 input!7874))))

(declare-fun b!7529631 () Bool)

(declare-fun e!4487703 () Bool)

(assert (=> b!7529631 (= e!4487703 true)))

(declare-fun lt!2640108 () Regex!19849)

(assert (=> b!7529631 (= (matchR!9451 baseR!101 testedP!423) (matchR!9451 lt!2640108 Nil!72608))))

(declare-fun lt!2640107 () Unit!166612)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!252 (Regex!19849 List!72732) Unit!166612)

(assert (=> b!7529631 (= lt!2640107 (lemmaMatchRIsSameAsWholeDerivativeAndNil!252 baseR!101 testedP!423))))

(declare-fun b!7529632 () Bool)

(declare-fun res!3017726 () Bool)

(assert (=> b!7529632 (=> res!3017726 e!4487703)))

(declare-fun lostCause!1641 (Regex!19849) Bool)

(assert (=> b!7529632 (= res!3017726 (not (lostCause!1641 r!24333)))))

(declare-fun b!7529633 () Bool)

(declare-fun res!3017724 () Bool)

(assert (=> b!7529633 (=> (not res!3017724) (not e!4487702))))

(assert (=> b!7529633 (= res!3017724 (matchR!9451 baseR!101 knownP!30))))

(declare-fun b!7529634 () Bool)

(declare-fun tp!2188676 () Bool)

(assert (=> b!7529634 (= e!4487705 (and tp_is_empty!50053 tp!2188676))))

(declare-fun b!7529635 () Bool)

(declare-fun tp!2188678 () Bool)

(assert (=> b!7529635 (= e!4487701 tp!2188678)))

(declare-fun b!7529636 () Bool)

(declare-fun tp!2188679 () Bool)

(assert (=> b!7529636 (= e!4487707 tp!2188679)))

(declare-fun b!7529637 () Bool)

(declare-fun tp!2188673 () Bool)

(declare-fun tp!2188672 () Bool)

(assert (=> b!7529637 (= e!4487707 (and tp!2188673 tp!2188672))))

(declare-fun b!7529638 () Bool)

(assert (=> b!7529638 (= e!4487704 e!4487703)))

(declare-fun res!3017727 () Bool)

(assert (=> b!7529638 (=> res!3017727 e!4487703)))

(assert (=> b!7529638 (= res!3017727 (not (= lt!2640108 r!24333)))))

(declare-fun derivative!381 (Regex!19849 List!72732) Regex!19849)

(assert (=> b!7529638 (= lt!2640108 (derivative!381 baseR!101 testedP!423))))

(declare-fun b!7529639 () Bool)

(assert (=> b!7529639 (= e!4487701 tp_is_empty!50053)))

(declare-fun b!7529640 () Bool)

(declare-fun tp!2188677 () Bool)

(declare-fun tp!2188683 () Bool)

(assert (=> b!7529640 (= e!4487707 (and tp!2188677 tp!2188683))))

(declare-fun b!7529641 () Bool)

(declare-fun tp!2188675 () Bool)

(declare-fun tp!2188682 () Bool)

(assert (=> b!7529641 (= e!4487701 (and tp!2188675 tp!2188682))))

(assert (= (and start!728536 res!3017728) b!7529623))

(assert (= (and b!7529623 res!3017730) b!7529630))

(assert (= (and b!7529630 res!3017723) b!7529626))

(assert (= (and b!7529626 res!3017725) b!7529624))

(assert (= (and b!7529624 res!3017729) b!7529633))

(assert (= (and b!7529633 res!3017724) b!7529628))

(assert (= (and b!7529628 (not res!3017722)) b!7529638))

(assert (= (and b!7529638 (not res!3017727)) b!7529632))

(assert (= (and b!7529632 (not res!3017726)) b!7529631))

(get-info :version)

(assert (= (and start!728536 ((_ is ElementMatch!19849) baseR!101)) b!7529627))

(assert (= (and start!728536 ((_ is Concat!28694) baseR!101)) b!7529637))

(assert (= (and start!728536 ((_ is Star!19849) baseR!101)) b!7529636))

(assert (= (and start!728536 ((_ is Union!19849) baseR!101)) b!7529640))

(assert (= (and start!728536 ((_ is Cons!72608) input!7874)) b!7529629))

(assert (= (and start!728536 ((_ is Cons!72608) knownP!30)) b!7529622))

(assert (= (and start!728536 ((_ is Cons!72608) testedP!423)) b!7529634))

(assert (= (and start!728536 ((_ is ElementMatch!19849) r!24333)) b!7529639))

(assert (= (and start!728536 ((_ is Concat!28694) r!24333)) b!7529625))

(assert (= (and start!728536 ((_ is Star!19849) r!24333)) b!7529635))

(assert (= (and start!728536 ((_ is Union!19849) r!24333)) b!7529641))

(declare-fun m!8103394 () Bool)

(assert (=> b!7529626 m!8103394))

(declare-fun m!8103396 () Bool)

(assert (=> b!7529632 m!8103396))

(declare-fun m!8103398 () Bool)

(assert (=> start!728536 m!8103398))

(declare-fun m!8103400 () Bool)

(assert (=> b!7529630 m!8103400))

(declare-fun m!8103402 () Bool)

(assert (=> b!7529628 m!8103402))

(assert (=> b!7529628 m!8103402))

(declare-fun m!8103404 () Bool)

(assert (=> b!7529628 m!8103404))

(declare-fun m!8103406 () Bool)

(assert (=> b!7529628 m!8103406))

(declare-fun m!8103408 () Bool)

(assert (=> b!7529628 m!8103408))

(declare-fun m!8103410 () Bool)

(assert (=> b!7529633 m!8103410))

(declare-fun m!8103412 () Bool)

(assert (=> b!7529624 m!8103412))

(declare-fun m!8103414 () Bool)

(assert (=> b!7529624 m!8103414))

(declare-fun m!8103416 () Bool)

(assert (=> b!7529638 m!8103416))

(declare-fun m!8103418 () Bool)

(assert (=> b!7529631 m!8103418))

(declare-fun m!8103420 () Bool)

(assert (=> b!7529631 m!8103420))

(declare-fun m!8103422 () Bool)

(assert (=> b!7529631 m!8103422))

(declare-fun m!8103424 () Bool)

(assert (=> b!7529623 m!8103424))

(check-sat (not b!7529626) (not b!7529634) tp_is_empty!50053 (not b!7529622) (not b!7529640) (not b!7529623) (not b!7529633) (not b!7529641) (not b!7529638) (not b!7529629) (not b!7529630) (not b!7529635) (not b!7529637) (not b!7529636) (not b!7529628) (not b!7529624) (not b!7529625) (not b!7529632) (not b!7529631) (not start!728536))
(check-sat)
