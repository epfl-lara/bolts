; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733750 () Bool)

(assert start!733750)

(declare-fun b!7616608 () Bool)

(assert (=> b!7616608 true))

(assert (=> b!7616608 true))

(declare-fun b!7616606 () Bool)

(declare-fun e!4529389 () Bool)

(declare-fun tp!2224068 () Bool)

(assert (=> b!7616606 (= e!4529389 tp!2224068)))

(declare-fun b!7616607 () Bool)

(declare-fun tp!2224071 () Bool)

(declare-fun tp!2224070 () Bool)

(assert (=> b!7616607 (= e!4529389 (and tp!2224071 tp!2224070))))

(declare-fun e!4529388 () Bool)

(assert (=> b!7616608 (= e!4529388 (not true))))

(declare-datatypes ((C!40870 0))(
  ( (C!40871 (val!30875 Int)) )
))
(declare-datatypes ((Regex!20272 0))(
  ( (ElementMatch!20272 (c!1403937 C!40870)) (Concat!29117 (regOne!41056 Regex!20272) (regTwo!41056 Regex!20272)) (EmptyExpr!20272) (Star!20272 (reg!20601 Regex!20272)) (EmptyLang!20272) (Union!20272 (regOne!41057 Regex!20272) (regTwo!41057 Regex!20272)) )
))
(declare-fun r!14126 () Regex!20272)

(declare-datatypes ((List!73125 0))(
  ( (Nil!73001) (Cons!73001 (h!79449 C!40870) (t!387860 List!73125)) )
))
(declare-fun s!9605 () List!73125)

(declare-fun lambda!468150 () Int)

(declare-datatypes ((tuple2!69106 0))(
  ( (tuple2!69107 (_1!37856 List!73125) (_2!37856 List!73125)) )
))
(declare-datatypes ((Option!17347 0))(
  ( (None!17346) (Some!17346 (v!54481 tuple2!69106)) )
))
(declare-fun isDefined!13963 (Option!17347) Bool)

(declare-fun findConcatSeparation!3377 (Regex!20272 Regex!20272 List!73125 List!73125 List!73125) Option!17347)

(declare-fun Exists!4428 (Int) Bool)

(assert (=> b!7616608 (= (isDefined!13963 (findConcatSeparation!3377 (reg!20601 r!14126) r!14126 Nil!73001 s!9605 s!9605)) (Exists!4428 lambda!468150))))

(declare-datatypes ((Unit!167376 0))(
  ( (Unit!167377) )
))
(declare-fun lt!2655425 () Unit!167376)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3135 (Regex!20272 Regex!20272 List!73125) Unit!167376)

(assert (=> b!7616608 (= lt!2655425 (lemmaFindConcatSeparationEquivalentToExists!3135 (reg!20601 r!14126) r!14126 s!9605))))

(declare-fun b!7616609 () Bool)

(declare-fun tp!2224073 () Bool)

(declare-fun tp!2224069 () Bool)

(assert (=> b!7616609 (= e!4529389 (and tp!2224073 tp!2224069))))

(declare-fun res!3049077 () Bool)

(assert (=> start!733750 (=> (not res!3049077) (not e!4529388))))

(declare-fun validRegex!10692 (Regex!20272) Bool)

(assert (=> start!733750 (= res!3049077 (validRegex!10692 r!14126))))

(assert (=> start!733750 e!4529388))

(assert (=> start!733750 e!4529389))

(declare-fun e!4529390 () Bool)

(assert (=> start!733750 e!4529390))

(declare-fun b!7616610 () Bool)

(declare-fun tp_is_empty!50899 () Bool)

(declare-fun tp!2224072 () Bool)

(assert (=> b!7616610 (= e!4529390 (and tp_is_empty!50899 tp!2224072))))

(declare-fun b!7616611 () Bool)

(declare-fun res!3049079 () Bool)

(assert (=> b!7616611 (=> (not res!3049079) (not e!4529388))))

(declare-fun isEmpty!41612 (List!73125) Bool)

(assert (=> b!7616611 (= res!3049079 (not (isEmpty!41612 s!9605)))))

(declare-fun b!7616612 () Bool)

(assert (=> b!7616612 (= e!4529389 tp_is_empty!50899)))

(declare-fun b!7616613 () Bool)

(declare-fun res!3049078 () Bool)

(assert (=> b!7616613 (=> (not res!3049078) (not e!4529388))))

(assert (=> b!7616613 (= res!3049078 (and (not (is-EmptyExpr!20272 r!14126)) (not (is-EmptyLang!20272 r!14126)) (not (is-ElementMatch!20272 r!14126)) (not (is-Union!20272 r!14126)) (is-Star!20272 r!14126)))))

(assert (= (and start!733750 res!3049077) b!7616613))

(assert (= (and b!7616613 res!3049078) b!7616611))

(assert (= (and b!7616611 res!3049079) b!7616608))

(assert (= (and start!733750 (is-ElementMatch!20272 r!14126)) b!7616612))

(assert (= (and start!733750 (is-Concat!29117 r!14126)) b!7616609))

(assert (= (and start!733750 (is-Star!20272 r!14126)) b!7616606))

(assert (= (and start!733750 (is-Union!20272 r!14126)) b!7616607))

(assert (= (and start!733750 (is-Cons!73001 s!9605)) b!7616610))

(declare-fun m!8149890 () Bool)

(assert (=> b!7616608 m!8149890))

(assert (=> b!7616608 m!8149890))

(declare-fun m!8149892 () Bool)

(assert (=> b!7616608 m!8149892))

(declare-fun m!8149894 () Bool)

(assert (=> b!7616608 m!8149894))

(declare-fun m!8149896 () Bool)

(assert (=> b!7616608 m!8149896))

(declare-fun m!8149898 () Bool)

(assert (=> start!733750 m!8149898))

(declare-fun m!8149900 () Bool)

(assert (=> b!7616611 m!8149900))

(push 1)

(assert tp_is_empty!50899)

(assert (not start!733750))

(assert (not b!7616608))

(assert (not b!7616607))

(assert (not b!7616611))

(assert (not b!7616606))

(assert (not b!7616609))

(assert (not b!7616610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

