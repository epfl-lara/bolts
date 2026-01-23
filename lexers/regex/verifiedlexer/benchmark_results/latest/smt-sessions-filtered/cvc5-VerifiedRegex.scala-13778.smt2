; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734362 () Bool)

(assert start!734362)

(declare-fun b!7625305 () Bool)

(assert (=> b!7625305 true))

(assert (=> b!7625305 true))

(declare-fun b!7625302 () Bool)

(declare-fun e!4533707 () Bool)

(declare-fun tp!2226349 () Bool)

(declare-fun tp!2226347 () Bool)

(assert (=> b!7625302 (= e!4533707 (and tp!2226349 tp!2226347))))

(declare-fun b!7625303 () Bool)

(declare-fun tp!2226350 () Bool)

(assert (=> b!7625303 (= e!4533707 tp!2226350)))

(declare-fun b!7625304 () Bool)

(declare-fun e!4533708 () Bool)

(assert (=> b!7625304 (= e!4533708 true)))

(declare-fun lt!2657799 () Bool)

(declare-datatypes ((C!41026 0))(
  ( (C!41027 (val!30953 Int)) )
))
(declare-datatypes ((Regex!20350 0))(
  ( (ElementMatch!20350 (c!1405071 C!41026)) (Concat!29195 (regOne!41212 Regex!20350) (regTwo!41212 Regex!20350)) (EmptyExpr!20350) (Star!20350 (reg!20679 Regex!20350)) (EmptyLang!20350) (Union!20350 (regOne!41213 Regex!20350) (regTwo!41213 Regex!20350)) )
))
(declare-fun r!14126 () Regex!20350)

(declare-datatypes ((List!73201 0))(
  ( (Nil!73077) (Cons!73077 (h!79525 C!41026) (t!387936 List!73201)) )
))
(declare-fun s!9605 () List!73201)

(declare-fun matchR!9853 (Regex!20350 List!73201) Bool)

(assert (=> b!7625304 (= lt!2657799 (matchR!9853 r!14126 s!9605))))

(declare-fun e!4533706 () Bool)

(assert (=> b!7625305 (= e!4533706 (not e!4533708))))

(declare-fun res!3053370 () Bool)

(assert (=> b!7625305 (=> res!3053370 e!4533708)))

(assert (=> b!7625305 (= res!3053370 (not (matchR!9853 r!14126 s!9605)))))

(declare-fun lambda!468748 () Int)

(declare-datatypes ((tuple2!69258 0))(
  ( (tuple2!69259 (_1!37932 List!73201) (_2!37932 List!73201)) )
))
(declare-datatypes ((Option!17423 0))(
  ( (None!17422) (Some!17422 (v!54557 tuple2!69258)) )
))
(declare-fun isDefined!14039 (Option!17423) Bool)

(declare-fun findConcatSeparation!3453 (Regex!20350 Regex!20350 List!73201 List!73201 List!73201) Option!17423)

(declare-fun Exists!4504 (Int) Bool)

(assert (=> b!7625305 (= (isDefined!14039 (findConcatSeparation!3453 (regOne!41212 r!14126) (regTwo!41212 r!14126) Nil!73077 s!9605 s!9605)) (Exists!4504 lambda!468748))))

(declare-datatypes ((Unit!167628 0))(
  ( (Unit!167629) )
))
(declare-fun lt!2657800 () Unit!167628)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3211 (Regex!20350 Regex!20350 List!73201) Unit!167628)

(assert (=> b!7625305 (= lt!2657800 (lemmaFindConcatSeparationEquivalentToExists!3211 (regOne!41212 r!14126) (regTwo!41212 r!14126) s!9605))))

(declare-fun b!7625306 () Bool)

(declare-fun res!3053367 () Bool)

(assert (=> b!7625306 (=> res!3053367 e!4533708)))

(declare-fun validRegex!10768 (Regex!20350) Bool)

(assert (=> b!7625306 (= res!3053367 (not (validRegex!10768 (regOne!41212 r!14126))))))

(declare-fun b!7625307 () Bool)

(declare-fun e!4533709 () Bool)

(declare-fun tp_is_empty!51055 () Bool)

(declare-fun tp!2226346 () Bool)

(assert (=> b!7625307 (= e!4533709 (and tp_is_empty!51055 tp!2226346))))

(declare-fun res!3053369 () Bool)

(assert (=> start!734362 (=> (not res!3053369) (not e!4533706))))

(assert (=> start!734362 (= res!3053369 (validRegex!10768 r!14126))))

(assert (=> start!734362 e!4533706))

(assert (=> start!734362 e!4533707))

(assert (=> start!734362 e!4533709))

(declare-fun b!7625308 () Bool)

(declare-fun res!3053368 () Bool)

(assert (=> b!7625308 (=> res!3053368 e!4533708)))

(assert (=> b!7625308 (= res!3053368 (not (validRegex!10768 (regTwo!41212 r!14126))))))

(declare-fun b!7625309 () Bool)

(assert (=> b!7625309 (= e!4533707 tp_is_empty!51055)))

(declare-fun b!7625310 () Bool)

(declare-fun tp!2226348 () Bool)

(declare-fun tp!2226351 () Bool)

(assert (=> b!7625310 (= e!4533707 (and tp!2226348 tp!2226351))))

(declare-fun b!7625311 () Bool)

(declare-fun res!3053371 () Bool)

(assert (=> b!7625311 (=> (not res!3053371) (not e!4533706))))

(assert (=> b!7625311 (= res!3053371 (and (not (is-EmptyExpr!20350 r!14126)) (not (is-EmptyLang!20350 r!14126)) (not (is-ElementMatch!20350 r!14126)) (not (is-Union!20350 r!14126)) (not (is-Star!20350 r!14126))))))

(assert (= (and start!734362 res!3053369) b!7625311))

(assert (= (and b!7625311 res!3053371) b!7625305))

(assert (= (and b!7625305 (not res!3053370)) b!7625306))

(assert (= (and b!7625306 (not res!3053367)) b!7625308))

(assert (= (and b!7625308 (not res!3053368)) b!7625304))

(assert (= (and start!734362 (is-ElementMatch!20350 r!14126)) b!7625309))

(assert (= (and start!734362 (is-Concat!29195 r!14126)) b!7625310))

(assert (= (and start!734362 (is-Star!20350 r!14126)) b!7625303))

(assert (= (and start!734362 (is-Union!20350 r!14126)) b!7625302))

(assert (= (and start!734362 (is-Cons!73077 s!9605)) b!7625307))

(declare-fun m!8155090 () Bool)

(assert (=> start!734362 m!8155090))

(declare-fun m!8155092 () Bool)

(assert (=> b!7625305 m!8155092))

(declare-fun m!8155094 () Bool)

(assert (=> b!7625305 m!8155094))

(declare-fun m!8155096 () Bool)

(assert (=> b!7625305 m!8155096))

(assert (=> b!7625305 m!8155094))

(declare-fun m!8155098 () Bool)

(assert (=> b!7625305 m!8155098))

(declare-fun m!8155100 () Bool)

(assert (=> b!7625305 m!8155100))

(declare-fun m!8155102 () Bool)

(assert (=> b!7625308 m!8155102))

(assert (=> b!7625304 m!8155096))

(declare-fun m!8155104 () Bool)

(assert (=> b!7625306 m!8155104))

(push 1)

(assert (not b!7625304))

(assert (not start!734362))

(assert tp_is_empty!51055)

(assert (not b!7625308))

(assert (not b!7625310))

(assert (not b!7625303))

(assert (not b!7625302))

(assert (not b!7625305))

(assert (not b!7625307))

(assert (not b!7625306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

