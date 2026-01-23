; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80284 () Bool)

(assert start!80284)

(declare-fun res!404565 () Bool)

(declare-fun e!583004 () Bool)

(assert (=> start!80284 (=> (not res!404565) (not e!583004))))

(declare-datatypes ((C!5170 0))(
  ( (C!5171 (val!2833 Int)) )
))
(declare-datatypes ((Regex!2300 0))(
  ( (ElementMatch!2300 (c!143935 C!5170)) (Concat!4133 (regOne!5112 Regex!2300) (regTwo!5112 Regex!2300)) (EmptyExpr!2300) (Star!2300 (reg!2629 Regex!2300)) (EmptyLang!2300) (Union!2300 (regOne!5113 Regex!2300) (regTwo!5113 Regex!2300)) )
))
(declare-fun r!15766 () Regex!2300)

(declare-fun validRegex!769 (Regex!2300) Bool)

(assert (=> start!80284 (= res!404565 (validRegex!769 r!15766))))

(assert (=> start!80284 e!583004))

(declare-fun e!583003 () Bool)

(assert (=> start!80284 e!583003))

(declare-fun e!583001 () Bool)

(assert (=> start!80284 e!583001))

(declare-fun b!889666 () Bool)

(declare-fun e!583000 () Bool)

(declare-datatypes ((List!9530 0))(
  ( (Nil!9514) (Cons!9514 (h!14915 C!5170) (t!100576 List!9530)) )
))
(declare-fun s!10566 () List!9530)

(declare-fun matchR!838 (Regex!2300 List!9530) Bool)

(assert (=> b!889666 (= e!583000 (matchR!838 (regTwo!5113 r!15766) s!10566))))

(declare-fun b!889667 () Bool)

(declare-fun tp_is_empty!4243 () Bool)

(declare-fun tp!280139 () Bool)

(assert (=> b!889667 (= e!583001 (and tp_is_empty!4243 tp!280139))))

(declare-fun b!889668 () Bool)

(declare-fun tp!280140 () Bool)

(assert (=> b!889668 (= e!583003 tp!280140)))

(declare-fun b!889669 () Bool)

(declare-fun e!583005 () Bool)

(assert (=> b!889669 (= e!583004 (not e!583005))))

(declare-fun res!404568 () Bool)

(assert (=> b!889669 (=> res!404568 e!583005)))

(declare-fun lt!332142 () Bool)

(assert (=> b!889669 (= res!404568 (or (not lt!332142) (and (is-Concat!4133 r!15766) (is-EmptyExpr!2300 (regOne!5112 r!15766))) (and (is-Concat!4133 r!15766) (is-EmptyExpr!2300 (regTwo!5112 r!15766))) (is-Concat!4133 r!15766) (not (is-Union!2300 r!15766))))))

(declare-fun matchRSpec!101 (Regex!2300 List!9530) Bool)

(assert (=> b!889669 (= lt!332142 (matchRSpec!101 r!15766 s!10566))))

(assert (=> b!889669 (= lt!332142 (matchR!838 r!15766 s!10566))))

(declare-datatypes ((Unit!14179 0))(
  ( (Unit!14180) )
))
(declare-fun lt!332144 () Unit!14179)

(declare-fun mainMatchTheorem!101 (Regex!2300 List!9530) Unit!14179)

(assert (=> b!889669 (= lt!332144 (mainMatchTheorem!101 r!15766 s!10566))))

(declare-fun b!889670 () Bool)

(assert (=> b!889670 (= e!583003 tp_is_empty!4243)))

(declare-fun b!889671 () Bool)

(declare-fun tp!280138 () Bool)

(declare-fun tp!280137 () Bool)

(assert (=> b!889671 (= e!583003 (and tp!280138 tp!280137))))

(declare-fun b!889672 () Bool)

(declare-fun tp!280141 () Bool)

(declare-fun tp!280142 () Bool)

(assert (=> b!889672 (= e!583003 (and tp!280141 tp!280142))))

(declare-fun b!889673 () Bool)

(declare-fun e!583002 () Bool)

(assert (=> b!889673 (= e!583002 true)))

(declare-fun lt!332145 () Regex!2300)

(declare-fun removeUselessConcat!37 (Regex!2300) Regex!2300)

(assert (=> b!889673 (= lt!332145 (removeUselessConcat!37 (regTwo!5113 r!15766)))))

(assert (=> b!889673 (matchR!838 (removeUselessConcat!37 (regOne!5113 r!15766)) s!10566)))

(declare-fun lt!332143 () Unit!14179)

(declare-fun lemmaRemoveUselessConcatSound!31 (Regex!2300 List!9530) Unit!14179)

(assert (=> b!889673 (= lt!332143 (lemmaRemoveUselessConcatSound!31 (regOne!5113 r!15766) s!10566))))

(declare-fun b!889674 () Bool)

(assert (=> b!889674 (= e!583005 e!583002)))

(declare-fun res!404567 () Bool)

(assert (=> b!889674 (=> res!404567 e!583002)))

(declare-fun lt!332147 () Bool)

(assert (=> b!889674 (= res!404567 (not lt!332147))))

(assert (=> b!889674 e!583000))

(declare-fun res!404566 () Bool)

(assert (=> b!889674 (=> res!404566 e!583000)))

(assert (=> b!889674 (= res!404566 lt!332147)))

(assert (=> b!889674 (= lt!332147 (matchR!838 (regOne!5113 r!15766) s!10566))))

(declare-fun lt!332146 () Unit!14179)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!11 (Regex!2300 Regex!2300 List!9530) Unit!14179)

(assert (=> b!889674 (= lt!332146 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!11 (regOne!5113 r!15766) (regTwo!5113 r!15766) s!10566))))

(assert (= (and start!80284 res!404565) b!889669))

(assert (= (and b!889669 (not res!404568)) b!889674))

(assert (= (and b!889674 (not res!404566)) b!889666))

(assert (= (and b!889674 (not res!404567)) b!889673))

(assert (= (and start!80284 (is-ElementMatch!2300 r!15766)) b!889670))

(assert (= (and start!80284 (is-Concat!4133 r!15766)) b!889671))

(assert (= (and start!80284 (is-Star!2300 r!15766)) b!889668))

(assert (= (and start!80284 (is-Union!2300 r!15766)) b!889672))

(assert (= (and start!80284 (is-Cons!9514 s!10566)) b!889667))

(declare-fun m!1133397 () Bool)

(assert (=> b!889666 m!1133397))

(declare-fun m!1133399 () Bool)

(assert (=> b!889669 m!1133399))

(declare-fun m!1133401 () Bool)

(assert (=> b!889669 m!1133401))

(declare-fun m!1133403 () Bool)

(assert (=> b!889669 m!1133403))

(declare-fun m!1133405 () Bool)

(assert (=> start!80284 m!1133405))

(declare-fun m!1133407 () Bool)

(assert (=> b!889674 m!1133407))

(declare-fun m!1133409 () Bool)

(assert (=> b!889674 m!1133409))

(declare-fun m!1133411 () Bool)

(assert (=> b!889673 m!1133411))

(declare-fun m!1133413 () Bool)

(assert (=> b!889673 m!1133413))

(assert (=> b!889673 m!1133413))

(declare-fun m!1133415 () Bool)

(assert (=> b!889673 m!1133415))

(declare-fun m!1133417 () Bool)

(assert (=> b!889673 m!1133417))

(push 1)

(assert (not b!889672))

(assert (not b!889666))

(assert (not b!889669))

(assert tp_is_empty!4243)

(assert (not start!80284))

(assert (not b!889671))

(assert (not b!889674))

(assert (not b!889673))

(assert (not b!889668))

(assert (not b!889667))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

