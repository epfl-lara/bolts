; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731302 () Bool)

(assert start!731302)

(declare-fun b!7573336 () Bool)

(declare-fun e!4508399 () Bool)

(declare-fun e!4508400 () Bool)

(assert (=> b!7573336 (= e!4508399 e!4508400)))

(declare-fun res!3033777 () Bool)

(assert (=> b!7573336 (=> res!3033777 e!4508400)))

(declare-datatypes ((C!40390 0))(
  ( (C!40391 (val!30635 Int)) )
))
(declare-datatypes ((Regex!20032 0))(
  ( (ElementMatch!20032 (c!1397193 C!40390)) (Concat!28877 (regOne!40576 Regex!20032) (regTwo!40576 Regex!20032)) (EmptyExpr!20032) (Star!20032 (reg!20361 Regex!20032)) (EmptyLang!20032) (Union!20032 (regOne!40577 Regex!20032) (regTwo!40577 Regex!20032)) )
))
(declare-fun r!22341 () Regex!20032)

(declare-datatypes ((List!72915 0))(
  ( (Nil!72791) (Cons!72791 (h!79239 C!40390) (t!387650 List!72915)) )
))
(declare-fun s!13436 () List!72915)

(declare-fun matchR!9628 (Regex!20032 List!72915) Bool)

(assert (=> b!7573336 (= res!3033777 (not (matchR!9628 (Union!20032 (regOne!40577 r!22341) (regTwo!40577 r!22341)) s!13436)))))

(assert (=> b!7573336 (not (matchR!9628 (regTwo!40577 r!22341) s!13436))))

(declare-datatypes ((Unit!167020 0))(
  ( (Unit!167021) )
))
(declare-fun lt!2651628 () Unit!167020)

(declare-fun lemmaLostCauseCannotMatch!70 (Regex!20032 List!72915) Unit!167020)

(assert (=> b!7573336 (= lt!2651628 (lemmaLostCauseCannotMatch!70 (regTwo!40577 r!22341) s!13436))))

(assert (=> b!7573336 (not (matchR!9628 (regOne!40577 r!22341) s!13436))))

(declare-fun lt!2651625 () Unit!167020)

(assert (=> b!7573336 (= lt!2651625 (lemmaLostCauseCannotMatch!70 (regOne!40577 r!22341) s!13436))))

(declare-fun b!7573337 () Bool)

(declare-fun e!4508396 () Bool)

(assert (=> b!7573337 (= e!4508396 (not e!4508399))))

(declare-fun res!3033779 () Bool)

(assert (=> b!7573337 (=> res!3033779 e!4508399)))

(assert (=> b!7573337 (= res!3033779 (or (is-EmptyLang!20032 r!22341) (is-EmptyExpr!20032 r!22341) (is-ElementMatch!20032 r!22341) (not (is-Union!20032 r!22341))))))

(declare-fun matchRSpec!4351 (Regex!20032 List!72915) Bool)

(assert (=> b!7573337 (= (matchR!9628 r!22341 s!13436) (matchRSpec!4351 r!22341 s!13436))))

(declare-fun lt!2651627 () Unit!167020)

(declare-fun mainMatchTheorem!4345 (Regex!20032 List!72915) Unit!167020)

(assert (=> b!7573337 (= lt!2651627 (mainMatchTheorem!4345 r!22341 s!13436))))

(declare-fun b!7573338 () Bool)

(assert (=> b!7573338 (= e!4508400 true)))

(assert (=> b!7573338 false))

(declare-fun lt!2651626 () Unit!167020)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!337 (Regex!20032 Regex!20032 List!72915) Unit!167020)

(assert (=> b!7573338 (= lt!2651626 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!337 (regOne!40577 r!22341) (regTwo!40577 r!22341) s!13436))))

(declare-fun b!7573339 () Bool)

(declare-fun e!4508398 () Bool)

(declare-fun tp!2206841 () Bool)

(declare-fun tp!2206843 () Bool)

(assert (=> b!7573339 (= e!4508398 (and tp!2206841 tp!2206843))))

(declare-fun b!7573340 () Bool)

(declare-fun tp!2206839 () Bool)

(assert (=> b!7573340 (= e!4508398 tp!2206839)))

(declare-fun res!3033776 () Bool)

(assert (=> start!731302 (=> (not res!3033776) (not e!4508396))))

(declare-fun validRegex!10460 (Regex!20032) Bool)

(assert (=> start!731302 (= res!3033776 (validRegex!10460 r!22341))))

(assert (=> start!731302 e!4508396))

(assert (=> start!731302 e!4508398))

(declare-fun e!4508397 () Bool)

(assert (=> start!731302 e!4508397))

(declare-fun b!7573341 () Bool)

(declare-fun res!3033775 () Bool)

(assert (=> b!7573341 (=> (not res!3033775) (not e!4508396))))

(declare-fun isEmpty!41450 (List!72915) Bool)

(assert (=> b!7573341 (= res!3033775 (not (isEmpty!41450 s!13436)))))

(declare-fun b!7573342 () Bool)

(declare-fun tp_is_empty!50419 () Bool)

(declare-fun tp!2206840 () Bool)

(assert (=> b!7573342 (= e!4508397 (and tp_is_empty!50419 tp!2206840))))

(declare-fun b!7573343 () Bool)

(assert (=> b!7573343 (= e!4508398 tp_is_empty!50419)))

(declare-fun b!7573344 () Bool)

(declare-fun tp!2206838 () Bool)

(declare-fun tp!2206842 () Bool)

(assert (=> b!7573344 (= e!4508398 (and tp!2206838 tp!2206842))))

(declare-fun b!7573345 () Bool)

(declare-fun res!3033778 () Bool)

(assert (=> b!7573345 (=> (not res!3033778) (not e!4508396))))

(declare-fun lostCause!1808 (Regex!20032) Bool)

(assert (=> b!7573345 (= res!3033778 (lostCause!1808 r!22341))))

(assert (= (and start!731302 res!3033776) b!7573345))

(assert (= (and b!7573345 res!3033778) b!7573341))

(assert (= (and b!7573341 res!3033775) b!7573337))

(assert (= (and b!7573337 (not res!3033779)) b!7573336))

(assert (= (and b!7573336 (not res!3033777)) b!7573338))

(assert (= (and start!731302 (is-ElementMatch!20032 r!22341)) b!7573343))

(assert (= (and start!731302 (is-Concat!28877 r!22341)) b!7573344))

(assert (= (and start!731302 (is-Star!20032 r!22341)) b!7573340))

(assert (= (and start!731302 (is-Union!20032 r!22341)) b!7573339))

(assert (= (and start!731302 (is-Cons!72791 s!13436)) b!7573342))

(declare-fun m!8132850 () Bool)

(assert (=> b!7573338 m!8132850))

(declare-fun m!8132852 () Bool)

(assert (=> b!7573337 m!8132852))

(declare-fun m!8132854 () Bool)

(assert (=> b!7573337 m!8132854))

(declare-fun m!8132856 () Bool)

(assert (=> b!7573337 m!8132856))

(declare-fun m!8132858 () Bool)

(assert (=> b!7573336 m!8132858))

(declare-fun m!8132860 () Bool)

(assert (=> b!7573336 m!8132860))

(declare-fun m!8132862 () Bool)

(assert (=> b!7573336 m!8132862))

(declare-fun m!8132864 () Bool)

(assert (=> b!7573336 m!8132864))

(declare-fun m!8132866 () Bool)

(assert (=> b!7573336 m!8132866))

(declare-fun m!8132868 () Bool)

(assert (=> start!731302 m!8132868))

(declare-fun m!8132870 () Bool)

(assert (=> b!7573345 m!8132870))

(declare-fun m!8132872 () Bool)

(assert (=> b!7573341 m!8132872))

(push 1)

(assert (not b!7573336))

(assert (not b!7573338))

(assert tp_is_empty!50419)

(assert (not b!7573344))

(assert (not start!731302))

(assert (not b!7573337))

(assert (not b!7573339))

(assert (not b!7573345))

(assert (not b!7573341))

(assert (not b!7573340))

(assert (not b!7573342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

