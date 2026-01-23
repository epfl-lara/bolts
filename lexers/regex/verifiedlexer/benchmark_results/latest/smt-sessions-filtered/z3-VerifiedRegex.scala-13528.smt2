; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728540 () Bool)

(assert start!728540)

(declare-fun b!7529742 () Bool)

(declare-fun e!4487752 () Bool)

(declare-fun tp_is_empty!50057 () Bool)

(assert (=> b!7529742 (= e!4487752 tp_is_empty!50057)))

(declare-fun b!7529743 () Bool)

(declare-fun res!3017776 () Bool)

(declare-fun e!4487749 () Bool)

(assert (=> b!7529743 (=> (not res!3017776) (not e!4487749))))

(declare-datatypes ((C!40028 0))(
  ( (C!40029 (val!30454 Int)) )
))
(declare-datatypes ((Regex!19851 0))(
  ( (ElementMatch!19851 (c!1390740 C!40028)) (Concat!28696 (regOne!40214 Regex!19851) (regTwo!40214 Regex!19851)) (EmptyExpr!19851) (Star!19851 (reg!20180 Regex!19851)) (EmptyLang!19851) (Union!19851 (regOne!40215 Regex!19851) (regTwo!40215 Regex!19851)) )
))
(declare-fun baseR!101 () Regex!19851)

(declare-datatypes ((List!72734 0))(
  ( (Nil!72610) (Cons!72610 (h!79058 C!40028) (t!387441 List!72734)) )
))
(declare-fun knownP!30 () List!72734)

(declare-fun matchR!9453 (Regex!19851 List!72734) Bool)

(assert (=> b!7529743 (= res!3017776 (matchR!9453 baseR!101 knownP!30))))

(declare-fun b!7529744 () Bool)

(declare-fun res!3017784 () Bool)

(assert (=> b!7529744 (=> (not res!3017784) (not e!4487749))))

(declare-fun testedP!423 () List!72734)

(declare-fun size!42347 (List!72734) Int)

(assert (=> b!7529744 (= res!3017784 (>= (size!42347 knownP!30) (size!42347 testedP!423)))))

(declare-fun b!7529745 () Bool)

(declare-fun res!3017783 () Bool)

(declare-fun e!4487754 () Bool)

(assert (=> b!7529745 (=> res!3017783 e!4487754)))

(declare-fun r!24333 () Regex!19851)

(declare-fun lostCause!1643 (Regex!19851) Bool)

(assert (=> b!7529745 (= res!3017783 (not (lostCause!1643 r!24333)))))

(declare-fun b!7529746 () Bool)

(declare-fun e!4487748 () Bool)

(declare-fun tp!2188752 () Bool)

(assert (=> b!7529746 (= e!4487748 (and tp_is_empty!50057 tp!2188752))))

(declare-fun b!7529747 () Bool)

(declare-fun e!4487755 () Bool)

(assert (=> b!7529747 (= e!4487755 e!4487754)))

(declare-fun res!3017779 () Bool)

(assert (=> b!7529747 (=> res!3017779 e!4487754)))

(declare-fun lt!2640136 () Regex!19851)

(assert (=> b!7529747 (= res!3017779 (not (= lt!2640136 r!24333)))))

(declare-fun derivative!383 (Regex!19851 List!72734) Regex!19851)

(assert (=> b!7529747 (= lt!2640136 (derivative!383 baseR!101 testedP!423))))

(declare-fun b!7529748 () Bool)

(declare-fun e!4487750 () Bool)

(declare-fun tp!2188754 () Bool)

(declare-fun tp!2188759 () Bool)

(assert (=> b!7529748 (= e!4487750 (and tp!2188754 tp!2188759))))

(declare-fun b!7529749 () Bool)

(declare-fun tp!2188751 () Bool)

(assert (=> b!7529749 (= e!4487750 tp!2188751)))

(declare-fun b!7529750 () Bool)

(declare-fun e!4487753 () Bool)

(declare-fun tp!2188758 () Bool)

(assert (=> b!7529750 (= e!4487753 (and tp_is_empty!50057 tp!2188758))))

(declare-fun b!7529751 () Bool)

(assert (=> b!7529751 (= e!4487750 tp_is_empty!50057)))

(declare-fun b!7529752 () Bool)

(declare-fun tp!2188757 () Bool)

(declare-fun tp!2188755 () Bool)

(assert (=> b!7529752 (= e!4487752 (and tp!2188757 tp!2188755))))

(declare-fun res!3017778 () Bool)

(assert (=> start!728540 (=> (not res!3017778) (not e!4487749))))

(declare-fun validRegex!10279 (Regex!19851) Bool)

(assert (=> start!728540 (= res!3017778 (validRegex!10279 baseR!101))))

(assert (=> start!728540 e!4487749))

(assert (=> start!728540 e!4487752))

(assert (=> start!728540 e!4487753))

(declare-fun e!4487751 () Bool)

(assert (=> start!728540 e!4487751))

(assert (=> start!728540 e!4487748))

(assert (=> start!728540 e!4487750))

(declare-fun b!7529753 () Bool)

(declare-fun tp!2188760 () Bool)

(declare-fun tp!2188750 () Bool)

(assert (=> b!7529753 (= e!4487750 (and tp!2188760 tp!2188750))))

(declare-fun b!7529754 () Bool)

(assert (=> b!7529754 (= e!4487754 true)))

(declare-fun lt!2640135 () List!72734)

(declare-fun lt!2640137 () List!72734)

(declare-fun ++!17376 (List!72734 List!72734) List!72734)

(assert (=> b!7529754 (= lt!2640135 (++!17376 testedP!423 lt!2640137))))

(assert (=> b!7529754 (= (matchR!9453 baseR!101 testedP!423) (matchR!9453 lt!2640136 Nil!72610))))

(declare-datatypes ((Unit!166616 0))(
  ( (Unit!166617) )
))
(declare-fun lt!2640138 () Unit!166616)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!254 (Regex!19851 List!72734) Unit!166616)

(assert (=> b!7529754 (= lt!2640138 (lemmaMatchRIsSameAsWholeDerivativeAndNil!254 baseR!101 testedP!423))))

(declare-fun b!7529755 () Bool)

(declare-fun tp!2188749 () Bool)

(assert (=> b!7529755 (= e!4487751 (and tp_is_empty!50057 tp!2188749))))

(declare-fun b!7529756 () Bool)

(declare-fun res!3017780 () Bool)

(assert (=> b!7529756 (=> (not res!3017780) (not e!4487749))))

(declare-fun input!7874 () List!72734)

(declare-fun isPrefix!6057 (List!72734 List!72734) Bool)

(assert (=> b!7529756 (= res!3017780 (isPrefix!6057 knownP!30 input!7874))))

(declare-fun b!7529757 () Bool)

(declare-fun res!3017781 () Bool)

(assert (=> b!7529757 (=> (not res!3017781) (not e!4487749))))

(assert (=> b!7529757 (= res!3017781 (isPrefix!6057 testedP!423 input!7874))))

(declare-fun b!7529758 () Bool)

(assert (=> b!7529758 (= e!4487749 (not e!4487755))))

(declare-fun res!3017782 () Bool)

(assert (=> b!7529758 (=> res!3017782 e!4487755)))

(assert (=> b!7529758 (= res!3017782 (not (matchR!9453 r!24333 lt!2640137)))))

(declare-fun getSuffix!3537 (List!72734 List!72734) List!72734)

(assert (=> b!7529758 (= lt!2640137 (getSuffix!3537 knownP!30 testedP!423))))

(assert (=> b!7529758 (isPrefix!6057 testedP!423 knownP!30)))

(declare-fun lt!2640134 () Unit!166616)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!807 (List!72734 List!72734 List!72734) Unit!166616)

(assert (=> b!7529758 (= lt!2640134 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!807 knownP!30 testedP!423 input!7874))))

(declare-fun b!7529759 () Bool)

(declare-fun tp!2188756 () Bool)

(assert (=> b!7529759 (= e!4487752 tp!2188756)))

(declare-fun b!7529760 () Bool)

(declare-fun res!3017777 () Bool)

(assert (=> b!7529760 (=> (not res!3017777) (not e!4487749))))

(assert (=> b!7529760 (= res!3017777 (validRegex!10279 r!24333))))

(declare-fun b!7529761 () Bool)

(declare-fun tp!2188753 () Bool)

(declare-fun tp!2188761 () Bool)

(assert (=> b!7529761 (= e!4487752 (and tp!2188753 tp!2188761))))

(assert (= (and start!728540 res!3017778) b!7529760))

(assert (= (and b!7529760 res!3017777) b!7529757))

(assert (= (and b!7529757 res!3017781) b!7529756))

(assert (= (and b!7529756 res!3017780) b!7529744))

(assert (= (and b!7529744 res!3017784) b!7529743))

(assert (= (and b!7529743 res!3017776) b!7529758))

(assert (= (and b!7529758 (not res!3017782)) b!7529747))

(assert (= (and b!7529747 (not res!3017779)) b!7529745))

(assert (= (and b!7529745 (not res!3017783)) b!7529754))

(get-info :version)

(assert (= (and start!728540 ((_ is ElementMatch!19851) baseR!101)) b!7529742))

(assert (= (and start!728540 ((_ is Concat!28696) baseR!101)) b!7529752))

(assert (= (and start!728540 ((_ is Star!19851) baseR!101)) b!7529759))

(assert (= (and start!728540 ((_ is Union!19851) baseR!101)) b!7529761))

(assert (= (and start!728540 ((_ is Cons!72610) input!7874)) b!7529750))

(assert (= (and start!728540 ((_ is Cons!72610) knownP!30)) b!7529755))

(assert (= (and start!728540 ((_ is Cons!72610) testedP!423)) b!7529746))

(assert (= (and start!728540 ((_ is ElementMatch!19851) r!24333)) b!7529751))

(assert (= (and start!728540 ((_ is Concat!28696) r!24333)) b!7529748))

(assert (= (and start!728540 ((_ is Star!19851) r!24333)) b!7529749))

(assert (= (and start!728540 ((_ is Union!19851) r!24333)) b!7529753))

(declare-fun m!8103460 () Bool)

(assert (=> b!7529760 m!8103460))

(declare-fun m!8103462 () Bool)

(assert (=> b!7529743 m!8103462))

(declare-fun m!8103464 () Bool)

(assert (=> b!7529745 m!8103464))

(declare-fun m!8103466 () Bool)

(assert (=> b!7529754 m!8103466))

(declare-fun m!8103468 () Bool)

(assert (=> b!7529754 m!8103468))

(declare-fun m!8103470 () Bool)

(assert (=> b!7529754 m!8103470))

(declare-fun m!8103472 () Bool)

(assert (=> b!7529754 m!8103472))

(declare-fun m!8103474 () Bool)

(assert (=> b!7529747 m!8103474))

(declare-fun m!8103476 () Bool)

(assert (=> b!7529758 m!8103476))

(declare-fun m!8103478 () Bool)

(assert (=> b!7529758 m!8103478))

(declare-fun m!8103480 () Bool)

(assert (=> b!7529758 m!8103480))

(declare-fun m!8103482 () Bool)

(assert (=> b!7529758 m!8103482))

(declare-fun m!8103484 () Bool)

(assert (=> start!728540 m!8103484))

(declare-fun m!8103486 () Bool)

(assert (=> b!7529756 m!8103486))

(declare-fun m!8103488 () Bool)

(assert (=> b!7529757 m!8103488))

(declare-fun m!8103490 () Bool)

(assert (=> b!7529744 m!8103490))

(declare-fun m!8103492 () Bool)

(assert (=> b!7529744 m!8103492))

(check-sat (not b!7529747) (not b!7529746) (not b!7529758) (not b!7529743) (not b!7529749) tp_is_empty!50057 (not b!7529754) (not b!7529760) (not b!7529745) (not b!7529757) (not b!7529759) (not start!728540) (not b!7529761) (not b!7529752) (not b!7529753) (not b!7529750) (not b!7529756) (not b!7529744) (not b!7529748) (not b!7529755))
(check-sat)
