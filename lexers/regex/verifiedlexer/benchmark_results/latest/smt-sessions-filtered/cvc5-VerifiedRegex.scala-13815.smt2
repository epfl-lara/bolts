; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735402 () Bool)

(assert start!735402)

(declare-fun b!7638400 () Bool)

(assert (=> b!7638400 true))

(assert (=> b!7638400 true))

(declare-fun b!7638396 () Bool)

(declare-fun e!4540551 () Bool)

(declare-fun lambda!469542 () Int)

(declare-fun Exists!4578 (Int) Bool)

(assert (=> b!7638396 (= e!4540551 (Exists!4578 lambda!469542))))

(declare-fun lt!2660320 () Bool)

(assert (=> b!7638396 lt!2660320))

(declare-datatypes ((Unit!167844 0))(
  ( (Unit!167845) )
))
(declare-fun lt!2660321 () Unit!167844)

(declare-datatypes ((C!41174 0))(
  ( (C!41175 (val!31027 Int)) )
))
(declare-datatypes ((Regex!20424 0))(
  ( (ElementMatch!20424 (c!1407025 C!41174)) (Concat!29269 (regOne!41360 Regex!20424) (regTwo!41360 Regex!20424)) (EmptyExpr!20424) (Star!20424 (reg!20753 Regex!20424)) (EmptyLang!20424) (Union!20424 (regOne!41361 Regex!20424) (regTwo!41361 Regex!20424)) )
))
(declare-fun r!14126 () Regex!20424)

(declare-datatypes ((List!73275 0))(
  ( (Nil!73151) (Cons!73151 (h!79599 C!41174) (t!388010 List!73275)) )
))
(declare-fun s!9605 () List!73275)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!287 (Regex!20424 Regex!20424 List!73275) Unit!167844)

(assert (=> b!7638396 (= lt!2660321 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!287 (regOne!41360 r!14126) (regTwo!41360 r!14126) s!9605))))

(declare-fun res!3059532 () Bool)

(declare-fun e!4540550 () Bool)

(assert (=> start!735402 (=> (not res!3059532) (not e!4540550))))

(declare-fun validRegex!10842 (Regex!20424) Bool)

(assert (=> start!735402 (= res!3059532 (validRegex!10842 r!14126))))

(assert (=> start!735402 e!4540550))

(declare-fun e!4540549 () Bool)

(assert (=> start!735402 e!4540549))

(declare-fun e!4540548 () Bool)

(assert (=> start!735402 e!4540548))

(declare-fun b!7638397 () Bool)

(declare-fun res!3059533 () Bool)

(assert (=> b!7638397 (=> (not res!3059533) (not e!4540550))))

(assert (=> b!7638397 (= res!3059533 (and (not (is-EmptyExpr!20424 r!14126)) (not (is-EmptyLang!20424 r!14126)) (not (is-ElementMatch!20424 r!14126)) (not (is-Union!20424 r!14126)) (not (is-Star!20424 r!14126))))))

(declare-fun b!7638398 () Bool)

(declare-fun tp_is_empty!51203 () Bool)

(assert (=> b!7638398 (= e!4540549 tp_is_empty!51203)))

(declare-fun b!7638399 () Bool)

(declare-fun tp!2229576 () Bool)

(declare-fun tp!2229575 () Bool)

(assert (=> b!7638399 (= e!4540549 (and tp!2229576 tp!2229575))))

(assert (=> b!7638400 (= e!4540550 (not e!4540551))))

(declare-fun res!3059531 () Bool)

(assert (=> b!7638400 (=> res!3059531 e!4540551)))

(declare-fun matchR!9927 (Regex!20424 List!73275) Bool)

(assert (=> b!7638400 (= res!3059531 (not (matchR!9927 r!14126 s!9605)))))

(assert (=> b!7638400 (= lt!2660320 (Exists!4578 lambda!469542))))

(declare-datatypes ((tuple2!69406 0))(
  ( (tuple2!69407 (_1!38006 List!73275) (_2!38006 List!73275)) )
))
(declare-datatypes ((Option!17497 0))(
  ( (None!17496) (Some!17496 (v!54631 tuple2!69406)) )
))
(declare-fun isDefined!14113 (Option!17497) Bool)

(declare-fun findConcatSeparation!3527 (Regex!20424 Regex!20424 List!73275 List!73275 List!73275) Option!17497)

(assert (=> b!7638400 (= lt!2660320 (isDefined!14113 (findConcatSeparation!3527 (regOne!41360 r!14126) (regTwo!41360 r!14126) Nil!73151 s!9605 s!9605)))))

(declare-fun lt!2660319 () Unit!167844)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3285 (Regex!20424 Regex!20424 List!73275) Unit!167844)

(assert (=> b!7638400 (= lt!2660319 (lemmaFindConcatSeparationEquivalentToExists!3285 (regOne!41360 r!14126) (regTwo!41360 r!14126) s!9605))))

(declare-fun b!7638401 () Bool)

(declare-fun tp!2229577 () Bool)

(declare-fun tp!2229579 () Bool)

(assert (=> b!7638401 (= e!4540549 (and tp!2229577 tp!2229579))))

(declare-fun b!7638402 () Bool)

(declare-fun tp!2229574 () Bool)

(assert (=> b!7638402 (= e!4540548 (and tp_is_empty!51203 tp!2229574))))

(declare-fun b!7638403 () Bool)

(declare-fun tp!2229578 () Bool)

(assert (=> b!7638403 (= e!4540549 tp!2229578)))

(assert (= (and start!735402 res!3059532) b!7638397))

(assert (= (and b!7638397 res!3059533) b!7638400))

(assert (= (and b!7638400 (not res!3059531)) b!7638396))

(assert (= (and start!735402 (is-ElementMatch!20424 r!14126)) b!7638398))

(assert (= (and start!735402 (is-Concat!29269 r!14126)) b!7638401))

(assert (= (and start!735402 (is-Star!20424 r!14126)) b!7638403))

(assert (= (and start!735402 (is-Union!20424 r!14126)) b!7638399))

(assert (= (and start!735402 (is-Cons!73151 s!9605)) b!7638402))

(declare-fun m!8162178 () Bool)

(assert (=> b!7638396 m!8162178))

(declare-fun m!8162180 () Bool)

(assert (=> b!7638396 m!8162180))

(declare-fun m!8162182 () Bool)

(assert (=> start!735402 m!8162182))

(declare-fun m!8162184 () Bool)

(assert (=> b!7638400 m!8162184))

(declare-fun m!8162186 () Bool)

(assert (=> b!7638400 m!8162186))

(declare-fun m!8162188 () Bool)

(assert (=> b!7638400 m!8162188))

(assert (=> b!7638400 m!8162186))

(declare-fun m!8162190 () Bool)

(assert (=> b!7638400 m!8162190))

(assert (=> b!7638400 m!8162178))

(push 1)

(assert (not b!7638399))

(assert (not b!7638396))

(assert (not b!7638402))

(assert (not b!7638400))

(assert (not b!7638401))

(assert (not b!7638403))

(assert (not start!735402))

(assert tp_is_empty!51203)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

