; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728530 () Bool)

(assert start!728530)

(declare-fun b!7529446 () Bool)

(declare-fun e!4487632 () Bool)

(declare-fun tp_is_empty!50047 () Bool)

(assert (=> b!7529446 (= e!4487632 tp_is_empty!50047)))

(declare-fun b!7529448 () Bool)

(declare-fun e!4487637 () Bool)

(declare-fun tp!2188558 () Bool)

(assert (=> b!7529448 (= e!4487637 (and tp_is_empty!50047 tp!2188558))))

(declare-fun b!7529449 () Bool)

(declare-fun tp!2188563 () Bool)

(assert (=> b!7529449 (= e!4487632 tp!2188563)))

(declare-fun b!7529450 () Bool)

(declare-fun e!4487633 () Bool)

(declare-fun e!4487635 () Bool)

(assert (=> b!7529450 (= e!4487633 (not e!4487635))))

(declare-fun res!3017651 () Bool)

(assert (=> b!7529450 (=> res!3017651 e!4487635)))

(declare-datatypes ((C!40018 0))(
  ( (C!40019 (val!30449 Int)) )
))
(declare-datatypes ((List!72729 0))(
  ( (Nil!72605) (Cons!72605 (h!79053 C!40018) (t!387436 List!72729)) )
))
(declare-fun testedP!423 () List!72729)

(declare-datatypes ((Regex!19846 0))(
  ( (ElementMatch!19846 (c!1390735 C!40018)) (Concat!28691 (regOne!40204 Regex!19846) (regTwo!40204 Regex!19846)) (EmptyExpr!19846) (Star!19846 (reg!20175 Regex!19846)) (EmptyLang!19846) (Union!19846 (regOne!40205 Regex!19846) (regTwo!40205 Regex!19846)) )
))
(declare-fun r!24333 () Regex!19846)

(declare-fun knownP!30 () List!72729)

(declare-fun matchR!9448 (Regex!19846 List!72729) Bool)

(declare-fun getSuffix!3532 (List!72729 List!72729) List!72729)

(assert (=> b!7529450 (= res!3017651 (not (matchR!9448 r!24333 (getSuffix!3532 knownP!30 testedP!423))))))

(declare-fun isPrefix!6052 (List!72729 List!72729) Bool)

(assert (=> b!7529450 (isPrefix!6052 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166606 0))(
  ( (Unit!166607) )
))
(declare-fun lt!2640084 () Unit!166606)

(declare-fun input!7874 () List!72729)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!802 (List!72729 List!72729 List!72729) Unit!166606)

(assert (=> b!7529450 (= lt!2640084 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!802 knownP!30 testedP!423 input!7874))))

(declare-fun b!7529451 () Bool)

(assert (=> b!7529451 (= e!4487635 true)))

(declare-fun lt!2640083 () Bool)

(declare-fun lostCause!1638 (Regex!19846) Bool)

(assert (=> b!7529451 (= lt!2640083 (lostCause!1638 r!24333))))

(declare-fun b!7529452 () Bool)

(declare-fun e!4487638 () Bool)

(declare-fun tp!2188556 () Bool)

(assert (=> b!7529452 (= e!4487638 tp!2188556)))

(declare-fun b!7529453 () Bool)

(declare-fun res!3017648 () Bool)

(assert (=> b!7529453 (=> (not res!3017648) (not e!4487633))))

(assert (=> b!7529453 (= res!3017648 (isPrefix!6052 knownP!30 input!7874))))

(declare-fun b!7529454 () Bool)

(declare-fun res!3017647 () Bool)

(assert (=> b!7529454 (=> (not res!3017647) (not e!4487633))))

(declare-fun size!42342 (List!72729) Int)

(assert (=> b!7529454 (= res!3017647 (>= (size!42342 knownP!30) (size!42342 testedP!423)))))

(declare-fun b!7529455 () Bool)

(declare-fun res!3017645 () Bool)

(assert (=> b!7529455 (=> (not res!3017645) (not e!4487633))))

(declare-fun validRegex!10274 (Regex!19846) Bool)

(assert (=> b!7529455 (= res!3017645 (validRegex!10274 r!24333))))

(declare-fun b!7529456 () Bool)

(declare-fun tp!2188560 () Bool)

(declare-fun tp!2188566 () Bool)

(assert (=> b!7529456 (= e!4487638 (and tp!2188560 tp!2188566))))

(declare-fun b!7529457 () Bool)

(declare-fun res!3017646 () Bool)

(assert (=> b!7529457 (=> res!3017646 e!4487635)))

(declare-fun baseR!101 () Regex!19846)

(declare-fun derivative!378 (Regex!19846 List!72729) Regex!19846)

(assert (=> b!7529457 (= res!3017646 (not (= (derivative!378 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7529458 () Bool)

(declare-fun res!3017649 () Bool)

(assert (=> b!7529458 (=> (not res!3017649) (not e!4487633))))

(assert (=> b!7529458 (= res!3017649 (matchR!9448 baseR!101 knownP!30))))

(declare-fun b!7529459 () Bool)

(declare-fun e!4487636 () Bool)

(declare-fun tp!2188561 () Bool)

(assert (=> b!7529459 (= e!4487636 (and tp_is_empty!50047 tp!2188561))))

(declare-fun b!7529447 () Bool)

(declare-fun tp!2188557 () Bool)

(declare-fun tp!2188562 () Bool)

(assert (=> b!7529447 (= e!4487638 (and tp!2188557 tp!2188562))))

(declare-fun res!3017650 () Bool)

(assert (=> start!728530 (=> (not res!3017650) (not e!4487633))))

(assert (=> start!728530 (= res!3017650 (validRegex!10274 baseR!101))))

(assert (=> start!728530 e!4487633))

(assert (=> start!728530 e!4487632))

(assert (=> start!728530 e!4487636))

(declare-fun e!4487634 () Bool)

(assert (=> start!728530 e!4487634))

(assert (=> start!728530 e!4487637))

(assert (=> start!728530 e!4487638))

(declare-fun b!7529460 () Bool)

(declare-fun tp!2188564 () Bool)

(assert (=> b!7529460 (= e!4487634 (and tp_is_empty!50047 tp!2188564))))

(declare-fun b!7529461 () Bool)

(declare-fun tp!2188554 () Bool)

(declare-fun tp!2188555 () Bool)

(assert (=> b!7529461 (= e!4487632 (and tp!2188554 tp!2188555))))

(declare-fun b!7529462 () Bool)

(assert (=> b!7529462 (= e!4487638 tp_is_empty!50047)))

(declare-fun b!7529463 () Bool)

(declare-fun tp!2188565 () Bool)

(declare-fun tp!2188559 () Bool)

(assert (=> b!7529463 (= e!4487632 (and tp!2188565 tp!2188559))))

(declare-fun b!7529464 () Bool)

(declare-fun res!3017652 () Bool)

(assert (=> b!7529464 (=> (not res!3017652) (not e!4487633))))

(assert (=> b!7529464 (= res!3017652 (isPrefix!6052 testedP!423 input!7874))))

(assert (= (and start!728530 res!3017650) b!7529455))

(assert (= (and b!7529455 res!3017645) b!7529464))

(assert (= (and b!7529464 res!3017652) b!7529453))

(assert (= (and b!7529453 res!3017648) b!7529454))

(assert (= (and b!7529454 res!3017647) b!7529458))

(assert (= (and b!7529458 res!3017649) b!7529450))

(assert (= (and b!7529450 (not res!3017651)) b!7529457))

(assert (= (and b!7529457 (not res!3017646)) b!7529451))

(assert (= (and start!728530 (is-ElementMatch!19846 baseR!101)) b!7529446))

(assert (= (and start!728530 (is-Concat!28691 baseR!101)) b!7529461))

(assert (= (and start!728530 (is-Star!19846 baseR!101)) b!7529449))

(assert (= (and start!728530 (is-Union!19846 baseR!101)) b!7529463))

(assert (= (and start!728530 (is-Cons!72605 input!7874)) b!7529459))

(assert (= (and start!728530 (is-Cons!72605 knownP!30)) b!7529460))

(assert (= (and start!728530 (is-Cons!72605 testedP!423)) b!7529448))

(assert (= (and start!728530 (is-ElementMatch!19846 r!24333)) b!7529462))

(assert (= (and start!728530 (is-Concat!28691 r!24333)) b!7529447))

(assert (= (and start!728530 (is-Star!19846 r!24333)) b!7529452))

(assert (= (and start!728530 (is-Union!19846 r!24333)) b!7529456))

(declare-fun m!8103310 () Bool)

(assert (=> b!7529458 m!8103310))

(declare-fun m!8103312 () Bool)

(assert (=> b!7529450 m!8103312))

(assert (=> b!7529450 m!8103312))

(declare-fun m!8103314 () Bool)

(assert (=> b!7529450 m!8103314))

(declare-fun m!8103316 () Bool)

(assert (=> b!7529450 m!8103316))

(declare-fun m!8103318 () Bool)

(assert (=> b!7529450 m!8103318))

(declare-fun m!8103320 () Bool)

(assert (=> b!7529455 m!8103320))

(declare-fun m!8103322 () Bool)

(assert (=> start!728530 m!8103322))

(declare-fun m!8103324 () Bool)

(assert (=> b!7529454 m!8103324))

(declare-fun m!8103326 () Bool)

(assert (=> b!7529454 m!8103326))

(declare-fun m!8103328 () Bool)

(assert (=> b!7529453 m!8103328))

(declare-fun m!8103330 () Bool)

(assert (=> b!7529451 m!8103330))

(declare-fun m!8103332 () Bool)

(assert (=> b!7529457 m!8103332))

(declare-fun m!8103334 () Bool)

(assert (=> b!7529464 m!8103334))

(push 1)

(assert (not b!7529451))

(assert (not start!728530))

(assert (not b!7529461))

(assert (not b!7529464))

(assert (not b!7529454))

(assert (not b!7529449))

(assert (not b!7529463))

(assert (not b!7529460))

(assert (not b!7529453))

(assert tp_is_empty!50047)

(assert (not b!7529456))

(assert (not b!7529459))

(assert (not b!7529457))

(assert (not b!7529452))

(assert (not b!7529447))

(assert (not b!7529455))

(assert (not b!7529448))

(assert (not b!7529450))

(assert (not b!7529458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

