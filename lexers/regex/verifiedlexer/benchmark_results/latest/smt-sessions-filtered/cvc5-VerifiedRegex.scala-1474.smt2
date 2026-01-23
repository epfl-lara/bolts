; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!78964 () Bool)

(assert start!78964)

(declare-fun b!873433 () Bool)

(assert (=> b!873433 true))

(assert (=> b!873433 true))

(declare-fun lambda!26218 () Int)

(declare-fun lambda!26217 () Int)

(assert (=> b!873433 (not (= lambda!26218 lambda!26217))))

(assert (=> b!873433 true))

(assert (=> b!873433 true))

(declare-fun b!873430 () Bool)

(declare-fun e!574380 () Bool)

(declare-fun tp!276394 () Bool)

(declare-fun tp!276396 () Bool)

(assert (=> b!873430 (= e!574380 (and tp!276394 tp!276396))))

(declare-fun b!873431 () Bool)

(declare-fun tp_is_empty!4055 () Bool)

(assert (=> b!873431 (= e!574380 tp_is_empty!4055)))

(declare-fun b!873432 () Bool)

(declare-fun e!574381 () Bool)

(declare-fun tp!276393 () Bool)

(assert (=> b!873432 (= e!574381 (and tp_is_empty!4055 tp!276393))))

(declare-fun res!397122 () Bool)

(declare-fun e!574378 () Bool)

(assert (=> start!78964 (=> (not res!397122) (not e!574378))))

(declare-datatypes ((C!4982 0))(
  ( (C!4983 (val!2739 Int)) )
))
(declare-datatypes ((Regex!2206 0))(
  ( (ElementMatch!2206 (c!141267 C!4982)) (Concat!4039 (regOne!4924 Regex!2206) (regTwo!4924 Regex!2206)) (EmptyExpr!2206) (Star!2206 (reg!2535 Regex!2206)) (EmptyLang!2206) (Union!2206 (regOne!4925 Regex!2206) (regTwo!4925 Regex!2206)) )
))
(declare-fun r!15766 () Regex!2206)

(declare-fun validRegex!675 (Regex!2206) Bool)

(assert (=> start!78964 (= res!397122 (validRegex!675 r!15766))))

(assert (=> start!78964 e!574378))

(assert (=> start!78964 e!574380))

(assert (=> start!78964 e!574381))

(declare-fun e!574379 () Bool)

(assert (=> b!873433 (= e!574379 true)))

(declare-fun Exists!5 (Int) Bool)

(assert (=> b!873433 (= (Exists!5 lambda!26217) (Exists!5 lambda!26218))))

(declare-datatypes ((Unit!13991 0))(
  ( (Unit!13992) )
))
(declare-fun lt!329346 () Unit!13991)

(declare-datatypes ((List!9436 0))(
  ( (Nil!9420) (Cons!9420 (h!14821 C!4982) (t!100482 List!9436)) )
))
(declare-fun s!10566 () List!9436)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1 (Regex!2206 Regex!2206 List!9436) Unit!13991)

(assert (=> b!873433 (= lt!329346 (lemmaExistCutMatchRandMatchRSpecEquivalent!1 EmptyExpr!2206 (regTwo!4924 r!15766) s!10566))))

(declare-datatypes ((tuple2!10510 0))(
  ( (tuple2!10511 (_1!6081 List!9436) (_2!6081 List!9436)) )
))
(declare-datatypes ((Option!1897 0))(
  ( (None!1896) (Some!1896 (v!19313 tuple2!10510)) )
))
(declare-fun isDefined!1539 (Option!1897) Bool)

(declare-fun findConcatSeparation!3 (Regex!2206 Regex!2206 List!9436 List!9436 List!9436) Option!1897)

(assert (=> b!873433 (= (isDefined!1539 (findConcatSeparation!3 EmptyExpr!2206 (regTwo!4924 r!15766) Nil!9420 s!10566 s!10566)) (Exists!5 lambda!26217))))

(declare-fun lt!329349 () Unit!13991)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3 (Regex!2206 Regex!2206 List!9436) Unit!13991)

(assert (=> b!873433 (= lt!329349 (lemmaFindConcatSeparationEquivalentToExists!3 EmptyExpr!2206 (regTwo!4924 r!15766) s!10566))))

(declare-fun b!873434 () Bool)

(declare-fun tp!276397 () Bool)

(assert (=> b!873434 (= e!574380 tp!276397)))

(declare-fun b!873435 () Bool)

(assert (=> b!873435 (= e!574378 (not e!574379))))

(declare-fun res!397121 () Bool)

(assert (=> b!873435 (=> res!397121 e!574379)))

(declare-fun lt!329348 () Bool)

(assert (=> b!873435 (= res!397121 (or (not lt!329348) (not (is-Concat!4039 r!15766)) (not (is-EmptyExpr!2206 (regOne!4924 r!15766)))))))

(declare-fun matchRSpec!7 (Regex!2206 List!9436) Bool)

(assert (=> b!873435 (= lt!329348 (matchRSpec!7 r!15766 s!10566))))

(declare-fun matchR!744 (Regex!2206 List!9436) Bool)

(assert (=> b!873435 (= lt!329348 (matchR!744 r!15766 s!10566))))

(declare-fun lt!329347 () Unit!13991)

(declare-fun mainMatchTheorem!7 (Regex!2206 List!9436) Unit!13991)

(assert (=> b!873435 (= lt!329347 (mainMatchTheorem!7 r!15766 s!10566))))

(declare-fun b!873436 () Bool)

(declare-fun tp!276398 () Bool)

(declare-fun tp!276395 () Bool)

(assert (=> b!873436 (= e!574380 (and tp!276398 tp!276395))))

(assert (= (and start!78964 res!397122) b!873435))

(assert (= (and b!873435 (not res!397121)) b!873433))

(assert (= (and start!78964 (is-ElementMatch!2206 r!15766)) b!873431))

(assert (= (and start!78964 (is-Concat!4039 r!15766)) b!873436))

(assert (= (and start!78964 (is-Star!2206 r!15766)) b!873434))

(assert (= (and start!78964 (is-Union!2206 r!15766)) b!873430))

(assert (= (and start!78964 (is-Cons!9420 s!10566)) b!873432))

(declare-fun m!1125925 () Bool)

(assert (=> start!78964 m!1125925))

(declare-fun m!1125927 () Bool)

(assert (=> b!873433 m!1125927))

(declare-fun m!1125929 () Bool)

(assert (=> b!873433 m!1125929))

(declare-fun m!1125931 () Bool)

(assert (=> b!873433 m!1125931))

(declare-fun m!1125933 () Bool)

(assert (=> b!873433 m!1125933))

(declare-fun m!1125935 () Bool)

(assert (=> b!873433 m!1125935))

(assert (=> b!873433 m!1125927))

(declare-fun m!1125937 () Bool)

(assert (=> b!873433 m!1125937))

(assert (=> b!873433 m!1125937))

(declare-fun m!1125939 () Bool)

(assert (=> b!873435 m!1125939))

(declare-fun m!1125941 () Bool)

(assert (=> b!873435 m!1125941))

(declare-fun m!1125943 () Bool)

(assert (=> b!873435 m!1125943))

(push 1)

(assert (not b!873434))

(assert (not start!78964))

(assert (not b!873436))

(assert (not b!873435))

(assert (not b!873432))

(assert (not b!873430))

(assert (not b!873433))

(assert tp_is_empty!4055)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

