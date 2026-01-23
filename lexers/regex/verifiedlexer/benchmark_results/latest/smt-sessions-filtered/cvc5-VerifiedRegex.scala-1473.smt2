; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!78960 () Bool)

(assert start!78960)

(declare-fun b!873367 () Bool)

(assert (=> b!873367 true))

(assert (=> b!873367 true))

(declare-fun b!873364 () Bool)

(declare-fun e!574347 () Bool)

(declare-fun tp!276357 () Bool)

(assert (=> b!873364 (= e!574347 tp!276357)))

(declare-fun b!873365 () Bool)

(declare-fun e!574349 () Bool)

(declare-fun tp_is_empty!4051 () Bool)

(declare-fun tp!276362 () Bool)

(assert (=> b!873365 (= e!574349 (and tp_is_empty!4051 tp!276362))))

(declare-fun b!873366 () Bool)

(declare-fun tp!276361 () Bool)

(declare-fun tp!276359 () Bool)

(assert (=> b!873366 (= e!574347 (and tp!276361 tp!276359))))

(declare-fun res!397093 () Bool)

(declare-fun e!574348 () Bool)

(assert (=> start!78960 (=> (not res!397093) (not e!574348))))

(declare-datatypes ((C!4978 0))(
  ( (C!4979 (val!2737 Int)) )
))
(declare-datatypes ((Regex!2204 0))(
  ( (ElementMatch!2204 (c!141265 C!4978)) (Concat!4037 (regOne!4920 Regex!2204) (regTwo!4920 Regex!2204)) (EmptyExpr!2204) (Star!2204 (reg!2533 Regex!2204)) (EmptyLang!2204) (Union!2204 (regOne!4921 Regex!2204) (regTwo!4921 Regex!2204)) )
))
(declare-fun r!15766 () Regex!2204)

(declare-fun validRegex!673 (Regex!2204) Bool)

(assert (=> start!78960 (= res!397093 (validRegex!673 r!15766))))

(assert (=> start!78960 e!574348))

(assert (=> start!78960 e!574347))

(assert (=> start!78960 e!574349))

(declare-fun e!574346 () Bool)

(assert (=> b!873367 (= e!574346 true)))

(declare-datatypes ((List!9434 0))(
  ( (Nil!9418) (Cons!9418 (h!14819 C!4978) (t!100480 List!9434)) )
))
(declare-fun s!10566 () List!9434)

(declare-fun lambda!26207 () Int)

(declare-datatypes ((tuple2!10506 0))(
  ( (tuple2!10507 (_1!6079 List!9434) (_2!6079 List!9434)) )
))
(declare-datatypes ((Option!1895 0))(
  ( (None!1894) (Some!1894 (v!19311 tuple2!10506)) )
))
(declare-fun isDefined!1537 (Option!1895) Bool)

(declare-fun findConcatSeparation!1 (Regex!2204 Regex!2204 List!9434 List!9434 List!9434) Option!1895)

(declare-fun Exists!3 (Int) Bool)

(assert (=> b!873367 (= (isDefined!1537 (findConcatSeparation!1 EmptyExpr!2204 (regTwo!4920 r!15766) Nil!9418 s!10566 s!10566)) (Exists!3 lambda!26207))))

(declare-datatypes ((Unit!13987 0))(
  ( (Unit!13988) )
))
(declare-fun lt!329327 () Unit!13987)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1 (Regex!2204 Regex!2204 List!9434) Unit!13987)

(assert (=> b!873367 (= lt!329327 (lemmaFindConcatSeparationEquivalentToExists!1 EmptyExpr!2204 (regTwo!4920 r!15766) s!10566))))

(declare-fun b!873368 () Bool)

(declare-fun tp!276358 () Bool)

(declare-fun tp!276360 () Bool)

(assert (=> b!873368 (= e!574347 (and tp!276358 tp!276360))))

(declare-fun b!873369 () Bool)

(assert (=> b!873369 (= e!574348 (not e!574346))))

(declare-fun res!397094 () Bool)

(assert (=> b!873369 (=> res!397094 e!574346)))

(declare-fun lt!329326 () Bool)

(assert (=> b!873369 (= res!397094 (or (not lt!329326) (not (is-Concat!4037 r!15766)) (not (is-EmptyExpr!2204 (regOne!4920 r!15766)))))))

(declare-fun matchRSpec!5 (Regex!2204 List!9434) Bool)

(assert (=> b!873369 (= lt!329326 (matchRSpec!5 r!15766 s!10566))))

(declare-fun matchR!742 (Regex!2204 List!9434) Bool)

(assert (=> b!873369 (= lt!329326 (matchR!742 r!15766 s!10566))))

(declare-fun lt!329328 () Unit!13987)

(declare-fun mainMatchTheorem!5 (Regex!2204 List!9434) Unit!13987)

(assert (=> b!873369 (= lt!329328 (mainMatchTheorem!5 r!15766 s!10566))))

(declare-fun b!873370 () Bool)

(assert (=> b!873370 (= e!574347 tp_is_empty!4051)))

(assert (= (and start!78960 res!397093) b!873369))

(assert (= (and b!873369 (not res!397094)) b!873367))

(assert (= (and start!78960 (is-ElementMatch!2204 r!15766)) b!873370))

(assert (= (and start!78960 (is-Concat!4037 r!15766)) b!873368))

(assert (= (and start!78960 (is-Star!2204 r!15766)) b!873364))

(assert (= (and start!78960 (is-Union!2204 r!15766)) b!873366))

(assert (= (and start!78960 (is-Cons!9418 s!10566)) b!873365))

(declare-fun m!1125893 () Bool)

(assert (=> start!78960 m!1125893))

(declare-fun m!1125895 () Bool)

(assert (=> b!873367 m!1125895))

(assert (=> b!873367 m!1125895))

(declare-fun m!1125897 () Bool)

(assert (=> b!873367 m!1125897))

(declare-fun m!1125899 () Bool)

(assert (=> b!873367 m!1125899))

(declare-fun m!1125901 () Bool)

(assert (=> b!873367 m!1125901))

(declare-fun m!1125903 () Bool)

(assert (=> b!873369 m!1125903))

(declare-fun m!1125905 () Bool)

(assert (=> b!873369 m!1125905))

(declare-fun m!1125907 () Bool)

(assert (=> b!873369 m!1125907))

(push 1)

(assert (not b!873369))

(assert (not start!78960))

(assert (not b!873366))

(assert (not b!873364))

(assert tp_is_empty!4051)

(assert (not b!873368))

(assert (not b!873367))

(assert (not b!873365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

