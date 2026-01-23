; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749654 () Bool)

(assert start!749654)

(declare-fun b!7942663 () Bool)

(declare-fun res!3150720 () Bool)

(declare-fun e!4686377 () Bool)

(assert (=> b!7942663 (=> (not res!3150720) (not e!4686377))))

(declare-datatypes ((C!43166 0))(
  ( (C!43167 (val!32131 Int)) )
))
(declare-datatypes ((List!74643 0))(
  ( (Nil!74519) (Cons!74519 (h!80967 C!43166) (t!390386 List!74643)) )
))
(declare-fun testedP!447 () List!74643)

(declare-fun input!7927 () List!74643)

(declare-fun isPrefix!6514 (List!74643 List!74643) Bool)

(assert (=> b!7942663 (= res!3150720 (isPrefix!6514 testedP!447 input!7927))))

(declare-fun b!7942664 () Bool)

(assert (=> b!7942664 (= e!4686377 false)))

(declare-fun lt!2697060 () Int)

(declare-fun size!43350 (List!74643) Int)

(assert (=> b!7942664 (= lt!2697060 (size!43350 input!7927))))

(declare-fun lt!2697061 () Int)

(assert (=> b!7942664 (= lt!2697061 (size!43350 testedP!447))))

(declare-fun b!7942665 () Bool)

(declare-fun e!4686376 () Bool)

(declare-fun tp_is_empty!53371 () Bool)

(assert (=> b!7942665 (= e!4686376 tp_is_empty!53371)))

(declare-fun b!7942667 () Bool)

(declare-fun tp!2361829 () Bool)

(declare-fun tp!2361833 () Bool)

(assert (=> b!7942667 (= e!4686376 (and tp!2361829 tp!2361833))))

(declare-fun b!7942668 () Bool)

(declare-fun e!4686380 () Bool)

(declare-fun tp!2361831 () Bool)

(declare-fun tp!2361832 () Bool)

(assert (=> b!7942668 (= e!4686380 (and tp!2361831 tp!2361832))))

(declare-fun b!7942669 () Bool)

(declare-fun e!4686379 () Bool)

(declare-fun tp!2361827 () Bool)

(assert (=> b!7942669 (= e!4686379 (and tp_is_empty!53371 tp!2361827))))

(declare-fun b!7942670 () Bool)

(assert (=> b!7942670 (= e!4686380 tp_is_empty!53371)))

(declare-fun b!7942671 () Bool)

(declare-fun res!3150721 () Bool)

(assert (=> b!7942671 (=> (not res!3150721) (not e!4686377))))

(declare-datatypes ((Regex!21414 0))(
  ( (ElementMatch!21414 (c!1459205 C!43166)) (Concat!30413 (regOne!43340 Regex!21414) (regTwo!43340 Regex!21414)) (EmptyExpr!21414) (Star!21414 (reg!21743 Regex!21414)) (EmptyLang!21414) (Union!21414 (regOne!43341 Regex!21414) (regTwo!43341 Regex!21414)) )
))
(declare-fun baseR!116 () Regex!21414)

(declare-fun r!24602 () Regex!21414)

(declare-fun derivative!600 (Regex!21414 List!74643) Regex!21414)

(assert (=> b!7942671 (= res!3150721 (= (derivative!600 baseR!116 testedP!447) r!24602))))

(declare-fun res!3150719 () Bool)

(assert (=> start!749654 (=> (not res!3150719) (not e!4686377))))

(declare-fun validRegex!11718 (Regex!21414) Bool)

(assert (=> start!749654 (= res!3150719 (validRegex!11718 baseR!116))))

(assert (=> start!749654 e!4686377))

(assert (=> start!749654 e!4686380))

(declare-fun e!4686378 () Bool)

(assert (=> start!749654 e!4686378))

(assert (=> start!749654 e!4686379))

(assert (=> start!749654 e!4686376))

(declare-fun b!7942666 () Bool)

(declare-fun tp!2361823 () Bool)

(declare-fun tp!2361826 () Bool)

(assert (=> b!7942666 (= e!4686376 (and tp!2361823 tp!2361826))))

(declare-fun b!7942672 () Bool)

(declare-fun tp!2361825 () Bool)

(assert (=> b!7942672 (= e!4686380 tp!2361825)))

(declare-fun b!7942673 () Bool)

(declare-fun tp!2361834 () Bool)

(assert (=> b!7942673 (= e!4686376 tp!2361834)))

(declare-fun b!7942674 () Bool)

(declare-fun tp!2361830 () Bool)

(declare-fun tp!2361828 () Bool)

(assert (=> b!7942674 (= e!4686380 (and tp!2361830 tp!2361828))))

(declare-fun b!7942675 () Bool)

(declare-fun tp!2361824 () Bool)

(assert (=> b!7942675 (= e!4686378 (and tp_is_empty!53371 tp!2361824))))

(assert (= (and start!749654 res!3150719) b!7942663))

(assert (= (and b!7942663 res!3150720) b!7942671))

(assert (= (and b!7942671 res!3150721) b!7942664))

(assert (= (and start!749654 (is-ElementMatch!21414 baseR!116)) b!7942670))

(assert (= (and start!749654 (is-Concat!30413 baseR!116)) b!7942668))

(assert (= (and start!749654 (is-Star!21414 baseR!116)) b!7942672))

(assert (= (and start!749654 (is-Union!21414 baseR!116)) b!7942674))

(assert (= (and start!749654 (is-Cons!74519 testedP!447)) b!7942675))

(assert (= (and start!749654 (is-Cons!74519 input!7927)) b!7942669))

(assert (= (and start!749654 (is-ElementMatch!21414 r!24602)) b!7942665))

(assert (= (and start!749654 (is-Concat!30413 r!24602)) b!7942666))

(assert (= (and start!749654 (is-Star!21414 r!24602)) b!7942673))

(assert (= (and start!749654 (is-Union!21414 r!24602)) b!7942667))

(declare-fun m!8330834 () Bool)

(assert (=> b!7942663 m!8330834))

(declare-fun m!8330836 () Bool)

(assert (=> b!7942664 m!8330836))

(declare-fun m!8330838 () Bool)

(assert (=> b!7942664 m!8330838))

(declare-fun m!8330840 () Bool)

(assert (=> b!7942671 m!8330840))

(declare-fun m!8330842 () Bool)

(assert (=> start!749654 m!8330842))

(push 1)

(assert (not b!7942666))

(assert (not b!7942675))

(assert (not b!7942673))

(assert (not b!7942667))

(assert (not b!7942672))

(assert (not b!7942663))

(assert (not b!7942674))

(assert (not b!7942668))

(assert (not start!749654))

(assert (not b!7942664))

(assert (not b!7942669))

(assert (not b!7942671))

(assert tp_is_empty!53371)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

