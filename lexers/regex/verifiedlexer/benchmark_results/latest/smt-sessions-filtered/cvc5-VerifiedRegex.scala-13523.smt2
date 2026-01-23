; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728518 () Bool)

(assert start!728518)

(declare-fun b!7529136 () Bool)

(declare-fun res!3017537 () Bool)

(declare-fun e!4487524 () Bool)

(assert (=> b!7529136 (=> (not res!3017537) (not e!4487524))))

(declare-datatypes ((C!40006 0))(
  ( (C!40007 (val!30443 Int)) )
))
(declare-datatypes ((List!72723 0))(
  ( (Nil!72599) (Cons!72599 (h!79047 C!40006) (t!387430 List!72723)) )
))
(declare-fun testedP!423 () List!72723)

(declare-fun input!7874 () List!72723)

(declare-fun isPrefix!6046 (List!72723 List!72723) Bool)

(assert (=> b!7529136 (= res!3017537 (isPrefix!6046 testedP!423 input!7874))))

(declare-fun b!7529137 () Bool)

(declare-fun e!4487526 () Bool)

(declare-fun tp_is_empty!50035 () Bool)

(declare-fun tp!2188332 () Bool)

(assert (=> b!7529137 (= e!4487526 (and tp_is_empty!50035 tp!2188332))))

(declare-fun b!7529138 () Bool)

(declare-fun e!4487523 () Bool)

(declare-fun tp!2188324 () Bool)

(declare-fun tp!2188330 () Bool)

(assert (=> b!7529138 (= e!4487523 (and tp!2188324 tp!2188330))))

(declare-fun b!7529139 () Bool)

(declare-fun e!4487525 () Bool)

(declare-fun tp!2188331 () Bool)

(declare-fun tp!2188321 () Bool)

(assert (=> b!7529139 (= e!4487525 (and tp!2188331 tp!2188321))))

(declare-fun b!7529140 () Bool)

(declare-fun tp!2188325 () Bool)

(assert (=> b!7529140 (= e!4487523 tp!2188325)))

(declare-fun b!7529141 () Bool)

(assert (=> b!7529141 (= e!4487525 tp_is_empty!50035)))

(declare-fun b!7529143 () Bool)

(declare-fun res!3017535 () Bool)

(assert (=> b!7529143 (=> (not res!3017535) (not e!4487524))))

(declare-fun knownP!30 () List!72723)

(assert (=> b!7529143 (= res!3017535 (isPrefix!6046 knownP!30 input!7874))))

(declare-fun b!7529144 () Bool)

(declare-fun tp!2188320 () Bool)

(declare-fun tp!2188322 () Bool)

(assert (=> b!7529144 (= e!4487525 (and tp!2188320 tp!2188322))))

(declare-fun b!7529145 () Bool)

(assert (=> b!7529145 (= e!4487524 (not true))))

(assert (=> b!7529145 (isPrefix!6046 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166594 0))(
  ( (Unit!166595) )
))
(declare-fun lt!2640051 () Unit!166594)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!796 (List!72723 List!72723 List!72723) Unit!166594)

(assert (=> b!7529145 (= lt!2640051 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!796 knownP!30 testedP!423 input!7874))))

(declare-fun b!7529146 () Bool)

(declare-fun e!4487527 () Bool)

(declare-fun tp!2188329 () Bool)

(assert (=> b!7529146 (= e!4487527 (and tp_is_empty!50035 tp!2188329))))

(declare-fun b!7529147 () Bool)

(declare-fun tp!2188323 () Bool)

(declare-fun tp!2188326 () Bool)

(assert (=> b!7529147 (= e!4487523 (and tp!2188323 tp!2188326))))

(declare-fun b!7529148 () Bool)

(declare-fun e!4487522 () Bool)

(declare-fun tp!2188328 () Bool)

(assert (=> b!7529148 (= e!4487522 (and tp_is_empty!50035 tp!2188328))))

(declare-fun b!7529142 () Bool)

(declare-fun res!3017533 () Bool)

(assert (=> b!7529142 (=> (not res!3017533) (not e!4487524))))

(declare-datatypes ((Regex!19840 0))(
  ( (ElementMatch!19840 (c!1390729 C!40006)) (Concat!28685 (regOne!40192 Regex!19840) (regTwo!40192 Regex!19840)) (EmptyExpr!19840) (Star!19840 (reg!20169 Regex!19840)) (EmptyLang!19840) (Union!19840 (regOne!40193 Regex!19840) (regTwo!40193 Regex!19840)) )
))
(declare-fun baseR!101 () Regex!19840)

(declare-fun matchR!9442 (Regex!19840 List!72723) Bool)

(assert (=> b!7529142 (= res!3017533 (matchR!9442 baseR!101 knownP!30))))

(declare-fun res!3017534 () Bool)

(assert (=> start!728518 (=> (not res!3017534) (not e!4487524))))

(declare-fun validRegex!10268 (Regex!19840) Bool)

(assert (=> start!728518 (= res!3017534 (validRegex!10268 baseR!101))))

(assert (=> start!728518 e!4487524))

(assert (=> start!728518 e!4487523))

(assert (=> start!728518 e!4487522))

(assert (=> start!728518 e!4487526))

(assert (=> start!728518 e!4487527))

(assert (=> start!728518 e!4487525))

(declare-fun b!7529149 () Bool)

(assert (=> b!7529149 (= e!4487523 tp_is_empty!50035)))

(declare-fun b!7529150 () Bool)

(declare-fun res!3017538 () Bool)

(assert (=> b!7529150 (=> (not res!3017538) (not e!4487524))))

(declare-fun size!42336 (List!72723) Int)

(assert (=> b!7529150 (= res!3017538 (>= (size!42336 knownP!30) (size!42336 testedP!423)))))

(declare-fun b!7529151 () Bool)

(declare-fun tp!2188327 () Bool)

(assert (=> b!7529151 (= e!4487525 tp!2188327)))

(declare-fun b!7529152 () Bool)

(declare-fun res!3017536 () Bool)

(assert (=> b!7529152 (=> (not res!3017536) (not e!4487524))))

(declare-fun r!24333 () Regex!19840)

(assert (=> b!7529152 (= res!3017536 (validRegex!10268 r!24333))))

(assert (= (and start!728518 res!3017534) b!7529152))

(assert (= (and b!7529152 res!3017536) b!7529136))

(assert (= (and b!7529136 res!3017537) b!7529143))

(assert (= (and b!7529143 res!3017535) b!7529150))

(assert (= (and b!7529150 res!3017538) b!7529142))

(assert (= (and b!7529142 res!3017533) b!7529145))

(assert (= (and start!728518 (is-ElementMatch!19840 baseR!101)) b!7529149))

(assert (= (and start!728518 (is-Concat!28685 baseR!101)) b!7529147))

(assert (= (and start!728518 (is-Star!19840 baseR!101)) b!7529140))

(assert (= (and start!728518 (is-Union!19840 baseR!101)) b!7529138))

(assert (= (and start!728518 (is-Cons!72599 input!7874)) b!7529148))

(assert (= (and start!728518 (is-Cons!72599 knownP!30)) b!7529137))

(assert (= (and start!728518 (is-Cons!72599 testedP!423)) b!7529146))

(assert (= (and start!728518 (is-ElementMatch!19840 r!24333)) b!7529141))

(assert (= (and start!728518 (is-Concat!28685 r!24333)) b!7529139))

(assert (= (and start!728518 (is-Star!19840 r!24333)) b!7529151))

(assert (= (and start!728518 (is-Union!19840 r!24333)) b!7529144))

(declare-fun m!8103190 () Bool)

(assert (=> b!7529150 m!8103190))

(declare-fun m!8103192 () Bool)

(assert (=> b!7529150 m!8103192))

(declare-fun m!8103194 () Bool)

(assert (=> b!7529143 m!8103194))

(declare-fun m!8103196 () Bool)

(assert (=> start!728518 m!8103196))

(declare-fun m!8103198 () Bool)

(assert (=> b!7529145 m!8103198))

(declare-fun m!8103200 () Bool)

(assert (=> b!7529145 m!8103200))

(declare-fun m!8103202 () Bool)

(assert (=> b!7529142 m!8103202))

(declare-fun m!8103204 () Bool)

(assert (=> b!7529136 m!8103204))

(declare-fun m!8103206 () Bool)

(assert (=> b!7529152 m!8103206))

(push 1)

(assert (not b!7529144))

(assert (not b!7529152))

(assert (not b!7529146))

(assert tp_is_empty!50035)

(assert (not b!7529139))

(assert (not b!7529136))

(assert (not b!7529143))

(assert (not b!7529142))

(assert (not b!7529137))

(assert (not b!7529145))

(assert (not b!7529151))

(assert (not b!7529147))

(assert (not b!7529148))

(assert (not b!7529140))

(assert (not b!7529150))

(assert (not start!728518))

(assert (not b!7529138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

