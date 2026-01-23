; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!737188 () Bool)

(assert start!737188)

(declare-fun b!7715459 () Bool)

(assert (=> b!7715459 true))

(assert (=> b!7715459 true))

(declare-fun bs!1962664 () Bool)

(declare-fun b!7715464 () Bool)

(assert (= bs!1962664 (and b!7715464 b!7715459)))

(declare-fun lambda!470831 () Int)

(declare-fun lambda!470830 () Int)

(assert (=> bs!1962664 (not (= lambda!470831 lambda!470830))))

(assert (=> b!7715464 true))

(assert (=> b!7715464 true))

(declare-fun b!7715458 () Bool)

(declare-fun e!4576943 () Bool)

(declare-fun tp!2263925 () Bool)

(assert (=> b!7715458 (= e!4576943 tp!2263925)))

(declare-fun res!3078239 () Bool)

(declare-fun e!4576947 () Bool)

(assert (=> start!737188 (=> (not res!3078239) (not e!4576947))))

(declare-datatypes ((C!41388 0))(
  ( (C!41389 (val!31134 Int)) )
))
(declare-datatypes ((Regex!20531 0))(
  ( (ElementMatch!20531 (c!1422258 C!41388)) (Concat!29376 (regOne!41574 Regex!20531) (regTwo!41574 Regex!20531)) (EmptyExpr!20531) (Star!20531 (reg!20860 Regex!20531)) (EmptyLang!20531) (Union!20531 (regOne!41575 Regex!20531) (regTwo!41575 Regex!20531)) )
))
(declare-fun r!14126 () Regex!20531)

(declare-fun validRegex!10949 (Regex!20531) Bool)

(assert (=> start!737188 (= res!3078239 (validRegex!10949 r!14126))))

(assert (=> start!737188 e!4576947))

(assert (=> start!737188 e!4576943))

(declare-fun e!4576945 () Bool)

(assert (=> start!737188 e!4576945))

(declare-fun e!4576941 () Bool)

(assert (=> b!7715459 (= e!4576947 (not e!4576941))))

(declare-fun res!3078242 () Bool)

(assert (=> b!7715459 (=> res!3078242 e!4576941)))

(declare-fun lt!2665489 () Bool)

(assert (=> b!7715459 (= res!3078242 lt!2665489)))

(declare-fun Exists!4656 (Int) Bool)

(assert (=> b!7715459 (= lt!2665489 (Exists!4656 lambda!470830))))

(declare-datatypes ((List!73382 0))(
  ( (Nil!73258) (Cons!73258 (h!79706 C!41388) (t!388117 List!73382)) )
))
(declare-fun s!9605 () List!73382)

(declare-datatypes ((tuple2!69524 0))(
  ( (tuple2!69525 (_1!38065 List!73382) (_2!38065 List!73382)) )
))
(declare-datatypes ((Option!17556 0))(
  ( (None!17555) (Some!17555 (v!54690 tuple2!69524)) )
))
(declare-fun isDefined!14172 (Option!17556) Bool)

(declare-fun findConcatSeparation!3586 (Regex!20531 Regex!20531 List!73382 List!73382 List!73382) Option!17556)

(assert (=> b!7715459 (= lt!2665489 (isDefined!14172 (findConcatSeparation!3586 (reg!20860 r!14126) r!14126 Nil!73258 s!9605 s!9605)))))

(declare-datatypes ((Unit!168116 0))(
  ( (Unit!168117) )
))
(declare-fun lt!2665485 () Unit!168116)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3344 (Regex!20531 Regex!20531 List!73382) Unit!168116)

(assert (=> b!7715459 (= lt!2665485 (lemmaFindConcatSeparationEquivalentToExists!3344 (reg!20860 r!14126) r!14126 s!9605))))

(declare-fun b!7715460 () Bool)

(declare-fun res!3078238 () Bool)

(assert (=> b!7715460 (=> (not res!3078238) (not e!4576947))))

(get-info :version)

(assert (=> b!7715460 (= res!3078238 (and (not ((_ is EmptyExpr!20531) r!14126)) (not ((_ is EmptyLang!20531) r!14126)) (not ((_ is ElementMatch!20531) r!14126)) (not ((_ is Union!20531) r!14126)) ((_ is Star!20531) r!14126)))))

(declare-fun b!7715461 () Bool)

(declare-fun e!4576944 () Bool)

(assert (=> b!7715461 (= e!4576944 (validRegex!10949 r!14126))))

(declare-fun b!7715462 () Bool)

(declare-fun tp_is_empty!51417 () Bool)

(declare-fun tp!2263923 () Bool)

(assert (=> b!7715462 (= e!4576945 (and tp_is_empty!51417 tp!2263923))))

(declare-fun b!7715463 () Bool)

(declare-fun res!3078244 () Bool)

(assert (=> b!7715463 (=> (not res!3078244) (not e!4576947))))

(declare-fun isEmpty!41911 (List!73382) Bool)

(assert (=> b!7715463 (= res!3078244 (not (isEmpty!41911 s!9605)))))

(declare-fun res!3078241 () Bool)

(declare-fun e!4576942 () Bool)

(assert (=> b!7715464 (=> res!3078241 e!4576942)))

(assert (=> b!7715464 (= res!3078241 (not (Exists!4656 lambda!470831)))))

(declare-fun b!7715465 () Bool)

(assert (=> b!7715465 (= e!4576941 e!4576942)))

(declare-fun res!3078243 () Bool)

(assert (=> b!7715465 (=> res!3078243 e!4576942)))

(assert (=> b!7715465 (= res!3078243 (Exists!4656 lambda!470830))))

(declare-fun lt!2665491 () Unit!168116)

(declare-fun e!4576946 () Unit!168116)

(assert (=> b!7715465 (= lt!2665491 e!4576946)))

(declare-fun c!1422257 () Bool)

(declare-fun matchR!10027 (Regex!20531 List!73382) Bool)

(assert (=> b!7715465 (= c!1422257 (matchR!10027 r!14126 s!9605))))

(declare-fun b!7715466 () Bool)

(assert (=> b!7715466 (= e!4576943 tp_is_empty!51417)))

(declare-fun b!7715467 () Bool)

(declare-fun Unit!168118 () Unit!168116)

(assert (=> b!7715467 (= e!4576946 Unit!168118)))

(declare-fun b!7715468 () Bool)

(declare-fun tp!2263920 () Bool)

(declare-fun tp!2263924 () Bool)

(assert (=> b!7715468 (= e!4576943 (and tp!2263920 tp!2263924))))

(declare-fun b!7715469 () Bool)

(declare-fun Unit!168119 () Unit!168116)

(assert (=> b!7715469 (= e!4576946 Unit!168119)))

(declare-fun lt!2665490 () Unit!168116)

(declare-fun lemmaStarAppConcat!46 (Regex!20531 List!73382) Unit!168116)

(assert (=> b!7715469 (= lt!2665490 (lemmaStarAppConcat!46 (reg!20860 r!14126) s!9605))))

(assert (=> b!7715469 (matchR!10027 (Concat!29376 (reg!20860 r!14126) r!14126) s!9605)))

(declare-fun lt!2665488 () Unit!168116)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!304 (Regex!20531 Regex!20531 List!73382) Unit!168116)

(assert (=> b!7715469 (= lt!2665488 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!304 (reg!20860 r!14126) r!14126 s!9605))))

(assert (=> b!7715469 false))

(declare-fun b!7715470 () Bool)

(declare-fun tp!2263922 () Bool)

(declare-fun tp!2263921 () Bool)

(assert (=> b!7715470 (= e!4576943 (and tp!2263922 tp!2263921))))

(declare-fun b!7715471 () Bool)

(assert (=> b!7715471 (= e!4576942 e!4576944)))

(declare-fun res!3078240 () Bool)

(assert (=> b!7715471 (=> res!3078240 e!4576944)))

(assert (=> b!7715471 (= res!3078240 (not (validRegex!10949 (reg!20860 r!14126))))))

(declare-fun lt!2665487 () tuple2!69524)

(declare-fun matchRSpec!4621 (Regex!20531 List!73382) Bool)

(assert (=> b!7715471 (= (matchR!10027 r!14126 (_2!38065 lt!2665487)) (matchRSpec!4621 r!14126 (_2!38065 lt!2665487)))))

(declare-fun lt!2665492 () Unit!168116)

(declare-fun mainMatchTheorem!4596 (Regex!20531 List!73382) Unit!168116)

(assert (=> b!7715471 (= lt!2665492 (mainMatchTheorem!4596 r!14126 (_2!38065 lt!2665487)))))

(assert (=> b!7715471 (= (matchR!10027 (reg!20860 r!14126) (_1!38065 lt!2665487)) (matchRSpec!4621 (reg!20860 r!14126) (_1!38065 lt!2665487)))))

(declare-fun lt!2665486 () Unit!168116)

(assert (=> b!7715471 (= lt!2665486 (mainMatchTheorem!4596 (reg!20860 r!14126) (_1!38065 lt!2665487)))))

(declare-fun pickWitness!510 (Int) tuple2!69524)

(assert (=> b!7715471 (= lt!2665487 (pickWitness!510 lambda!470831))))

(assert (= (and start!737188 res!3078239) b!7715460))

(assert (= (and b!7715460 res!3078238) b!7715463))

(assert (= (and b!7715463 res!3078244) b!7715459))

(assert (= (and b!7715459 (not res!3078242)) b!7715465))

(assert (= (and b!7715465 c!1422257) b!7715469))

(assert (= (and b!7715465 (not c!1422257)) b!7715467))

(assert (= (and b!7715465 (not res!3078243)) b!7715464))

(assert (= (and b!7715464 (not res!3078241)) b!7715471))

(assert (= (and b!7715471 (not res!3078240)) b!7715461))

(assert (= (and start!737188 ((_ is ElementMatch!20531) r!14126)) b!7715466))

(assert (= (and start!737188 ((_ is Concat!29376) r!14126)) b!7715470))

(assert (= (and start!737188 ((_ is Star!20531) r!14126)) b!7715458))

(assert (= (and start!737188 ((_ is Union!20531) r!14126)) b!7715468))

(assert (= (and start!737188 ((_ is Cons!73258) s!9605)) b!7715462))

(declare-fun m!8197336 () Bool)

(assert (=> b!7715469 m!8197336))

(declare-fun m!8197338 () Bool)

(assert (=> b!7715469 m!8197338))

(declare-fun m!8197340 () Bool)

(assert (=> b!7715469 m!8197340))

(declare-fun m!8197342 () Bool)

(assert (=> b!7715471 m!8197342))

(declare-fun m!8197344 () Bool)

(assert (=> b!7715471 m!8197344))

(declare-fun m!8197346 () Bool)

(assert (=> b!7715471 m!8197346))

(declare-fun m!8197348 () Bool)

(assert (=> b!7715471 m!8197348))

(declare-fun m!8197350 () Bool)

(assert (=> b!7715471 m!8197350))

(declare-fun m!8197352 () Bool)

(assert (=> b!7715471 m!8197352))

(declare-fun m!8197354 () Bool)

(assert (=> b!7715471 m!8197354))

(declare-fun m!8197356 () Bool)

(assert (=> b!7715471 m!8197356))

(declare-fun m!8197358 () Bool)

(assert (=> b!7715463 m!8197358))

(declare-fun m!8197360 () Bool)

(assert (=> b!7715464 m!8197360))

(declare-fun m!8197362 () Bool)

(assert (=> start!737188 m!8197362))

(declare-fun m!8197364 () Bool)

(assert (=> b!7715459 m!8197364))

(declare-fun m!8197366 () Bool)

(assert (=> b!7715459 m!8197366))

(assert (=> b!7715459 m!8197366))

(declare-fun m!8197368 () Bool)

(assert (=> b!7715459 m!8197368))

(declare-fun m!8197370 () Bool)

(assert (=> b!7715459 m!8197370))

(assert (=> b!7715461 m!8197362))

(assert (=> b!7715465 m!8197364))

(declare-fun m!8197372 () Bool)

(assert (=> b!7715465 m!8197372))

(check-sat (not start!737188) (not b!7715469) tp_is_empty!51417 (not b!7715461) (not b!7715465) (not b!7715471) (not b!7715468) (not b!7715464) (not b!7715470) (not b!7715462) (not b!7715459) (not b!7715463) (not b!7715458))
(check-sat)
