; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79572 () Bool)

(assert start!79572)

(declare-fun b!880559 () Bool)

(assert (=> b!880559 true))

(assert (=> b!880559 true))

(declare-fun lambda!26900 () Int)

(declare-fun lambda!26899 () Int)

(assert (=> b!880559 (not (= lambda!26900 lambda!26899))))

(assert (=> b!880559 true))

(assert (=> b!880559 true))

(declare-fun b!880556 () Bool)

(declare-fun e!578119 () Bool)

(declare-fun tp!278205 () Bool)

(declare-fun tp!278206 () Bool)

(assert (=> b!880556 (= e!578119 (and tp!278205 tp!278206))))

(declare-fun b!880557 () Bool)

(declare-fun e!578118 () Bool)

(declare-fun e!578121 () Bool)

(assert (=> b!880557 (= e!578118 (not e!578121))))

(declare-fun res!400434 () Bool)

(assert (=> b!880557 (=> res!400434 e!578121)))

(declare-fun lt!330606 () Bool)

(declare-datatypes ((C!5082 0))(
  ( (C!5083 (val!2789 Int)) )
))
(declare-datatypes ((Regex!2256 0))(
  ( (ElementMatch!2256 (c!142337 C!5082)) (Concat!4089 (regOne!5024 Regex!2256) (regTwo!5024 Regex!2256)) (EmptyExpr!2256) (Star!2256 (reg!2585 Regex!2256)) (EmptyLang!2256) (Union!2256 (regOne!5025 Regex!2256) (regTwo!5025 Regex!2256)) )
))
(declare-fun r!15766 () Regex!2256)

(assert (=> b!880557 (= res!400434 (or (not lt!330606) (and (is-Concat!4089 r!15766) (is-EmptyExpr!2256 (regOne!5024 r!15766))) (and (is-Concat!4089 r!15766) (is-EmptyExpr!2256 (regTwo!5024 r!15766))) (not (is-Concat!4089 r!15766))))))

(declare-datatypes ((List!9486 0))(
  ( (Nil!9470) (Cons!9470 (h!14871 C!5082) (t!100532 List!9486)) )
))
(declare-fun s!10566 () List!9486)

(declare-fun matchRSpec!57 (Regex!2256 List!9486) Bool)

(assert (=> b!880557 (= lt!330606 (matchRSpec!57 r!15766 s!10566))))

(declare-fun matchR!794 (Regex!2256 List!9486) Bool)

(assert (=> b!880557 (= lt!330606 (matchR!794 r!15766 s!10566))))

(declare-datatypes ((Unit!14091 0))(
  ( (Unit!14092) )
))
(declare-fun lt!330607 () Unit!14091)

(declare-fun mainMatchTheorem!57 (Regex!2256 List!9486) Unit!14091)

(assert (=> b!880557 (= lt!330607 (mainMatchTheorem!57 r!15766 s!10566))))

(declare-fun b!880558 () Bool)

(declare-fun tp_is_empty!4155 () Bool)

(assert (=> b!880558 (= e!578119 tp_is_empty!4155)))

(assert (=> b!880559 (= e!578121 true)))

(declare-fun Exists!51 (Int) Bool)

(assert (=> b!880559 (= (Exists!51 lambda!26899) (Exists!51 lambda!26900))))

(declare-fun lt!330604 () Unit!14091)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!41 (Regex!2256 Regex!2256 List!9486) Unit!14091)

(assert (=> b!880559 (= lt!330604 (lemmaExistCutMatchRandMatchRSpecEquivalent!41 (regOne!5024 r!15766) (regTwo!5024 r!15766) s!10566))))

(declare-datatypes ((tuple2!10598 0))(
  ( (tuple2!10599 (_1!6125 List!9486) (_2!6125 List!9486)) )
))
(declare-datatypes ((Option!1941 0))(
  ( (None!1940) (Some!1940 (v!19357 tuple2!10598)) )
))
(declare-fun isDefined!1583 (Option!1941) Bool)

(declare-fun findConcatSeparation!47 (Regex!2256 Regex!2256 List!9486 List!9486 List!9486) Option!1941)

(assert (=> b!880559 (= (isDefined!1583 (findConcatSeparation!47 (regOne!5024 r!15766) (regTwo!5024 r!15766) Nil!9470 s!10566 s!10566)) (Exists!51 lambda!26899))))

(declare-fun lt!330605 () Unit!14091)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!47 (Regex!2256 Regex!2256 List!9486) Unit!14091)

(assert (=> b!880559 (= lt!330605 (lemmaFindConcatSeparationEquivalentToExists!47 (regOne!5024 r!15766) (regTwo!5024 r!15766) s!10566))))

(declare-fun res!400433 () Bool)

(assert (=> start!79572 (=> (not res!400433) (not e!578118))))

(declare-fun validRegex!725 (Regex!2256) Bool)

(assert (=> start!79572 (= res!400433 (validRegex!725 r!15766))))

(assert (=> start!79572 e!578118))

(assert (=> start!79572 e!578119))

(declare-fun e!578120 () Bool)

(assert (=> start!79572 e!578120))

(declare-fun b!880560 () Bool)

(declare-fun tp!278208 () Bool)

(assert (=> b!880560 (= e!578119 tp!278208)))

(declare-fun b!880561 () Bool)

(declare-fun tp!278207 () Bool)

(declare-fun tp!278209 () Bool)

(assert (=> b!880561 (= e!578119 (and tp!278207 tp!278209))))

(declare-fun b!880562 () Bool)

(declare-fun tp!278210 () Bool)

(assert (=> b!880562 (= e!578120 (and tp_is_empty!4155 tp!278210))))

(assert (= (and start!79572 res!400433) b!880557))

(assert (= (and b!880557 (not res!400434)) b!880559))

(assert (= (and start!79572 (is-ElementMatch!2256 r!15766)) b!880558))

(assert (= (and start!79572 (is-Concat!4089 r!15766)) b!880556))

(assert (= (and start!79572 (is-Star!2256 r!15766)) b!880560))

(assert (= (and start!79572 (is-Union!2256 r!15766)) b!880561))

(assert (= (and start!79572 (is-Cons!9470 s!10566)) b!880562))

(declare-fun m!1129139 () Bool)

(assert (=> b!880557 m!1129139))

(declare-fun m!1129141 () Bool)

(assert (=> b!880557 m!1129141))

(declare-fun m!1129143 () Bool)

(assert (=> b!880557 m!1129143))

(declare-fun m!1129145 () Bool)

(assert (=> b!880559 m!1129145))

(assert (=> b!880559 m!1129145))

(declare-fun m!1129147 () Bool)

(assert (=> b!880559 m!1129147))

(declare-fun m!1129149 () Bool)

(assert (=> b!880559 m!1129149))

(declare-fun m!1129151 () Bool)

(assert (=> b!880559 m!1129151))

(declare-fun m!1129153 () Bool)

(assert (=> b!880559 m!1129153))

(declare-fun m!1129155 () Bool)

(assert (=> b!880559 m!1129155))

(assert (=> b!880559 m!1129147))

(declare-fun m!1129157 () Bool)

(assert (=> start!79572 m!1129157))

(push 1)

(assert (not b!880560))

(assert (not start!79572))

(assert (not b!880559))

(assert (not b!880557))

(assert tp_is_empty!4155)

(assert (not b!880561))

(assert (not b!880556))

(assert (not b!880562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

