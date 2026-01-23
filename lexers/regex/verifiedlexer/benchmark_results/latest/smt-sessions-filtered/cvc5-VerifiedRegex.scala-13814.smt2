; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735398 () Bool)

(assert start!735398)

(declare-fun b!7638315 () Bool)

(assert (=> b!7638315 true))

(assert (=> b!7638315 true))

(declare-fun b!7638312 () Bool)

(declare-fun e!4540515 () Bool)

(declare-fun tp!2229540 () Bool)

(declare-fun tp!2229539 () Bool)

(assert (=> b!7638312 (= e!4540515 (and tp!2229540 tp!2229539))))

(declare-fun b!7638313 () Bool)

(declare-datatypes ((Unit!167836 0))(
  ( (Unit!167837) )
))
(declare-fun e!4540514 () Unit!167836)

(declare-fun Unit!167838 () Unit!167836)

(assert (=> b!7638313 (= e!4540514 Unit!167838)))

(declare-fun lt!2660293 () Unit!167836)

(declare-datatypes ((C!41170 0))(
  ( (C!41171 (val!31025 Int)) )
))
(declare-datatypes ((Regex!20422 0))(
  ( (ElementMatch!20422 (c!1407020 C!41170)) (Concat!29267 (regOne!41356 Regex!20422) (regTwo!41356 Regex!20422)) (EmptyExpr!20422) (Star!20422 (reg!20751 Regex!20422)) (EmptyLang!20422) (Union!20422 (regOne!41357 Regex!20422) (regTwo!41357 Regex!20422)) )
))
(declare-fun r!14126 () Regex!20422)

(declare-datatypes ((List!73273 0))(
  ( (Nil!73149) (Cons!73149 (h!79597 C!41170) (t!388008 List!73273)) )
))
(declare-fun s!9605 () List!73273)

(declare-fun lemmaStarAppConcat!27 (Regex!20422 List!73273) Unit!167836)

(assert (=> b!7638313 (= lt!2660293 (lemmaStarAppConcat!27 (reg!20751 r!14126) s!9605))))

(declare-fun matchR!9925 (Regex!20422 List!73273) Bool)

(assert (=> b!7638313 (matchR!9925 (Concat!29267 (reg!20751 r!14126) r!14126) s!9605)))

(declare-fun lt!2660297 () Unit!167836)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!285 (Regex!20422 Regex!20422 List!73273) Unit!167836)

(assert (=> b!7638313 (= lt!2660297 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!285 (reg!20751 r!14126) r!14126 s!9605))))

(assert (=> b!7638313 false))

(declare-fun b!7638314 () Bool)

(declare-fun tp!2229541 () Bool)

(declare-fun tp!2229538 () Bool)

(assert (=> b!7638314 (= e!4540515 (and tp!2229541 tp!2229538))))

(declare-fun e!4540512 () Bool)

(declare-fun e!4540513 () Bool)

(assert (=> b!7638315 (= e!4540512 (not e!4540513))))

(declare-fun res!3059493 () Bool)

(assert (=> b!7638315 (=> res!3059493 e!4540513)))

(declare-fun lt!2660294 () Bool)

(assert (=> b!7638315 (= res!3059493 lt!2660294)))

(declare-fun lambda!469532 () Int)

(declare-fun Exists!4576 (Int) Bool)

(assert (=> b!7638315 (= lt!2660294 (Exists!4576 lambda!469532))))

(declare-datatypes ((tuple2!69402 0))(
  ( (tuple2!69403 (_1!38004 List!73273) (_2!38004 List!73273)) )
))
(declare-datatypes ((Option!17495 0))(
  ( (None!17494) (Some!17494 (v!54629 tuple2!69402)) )
))
(declare-fun isDefined!14111 (Option!17495) Bool)

(declare-fun findConcatSeparation!3525 (Regex!20422 Regex!20422 List!73273 List!73273 List!73273) Option!17495)

(assert (=> b!7638315 (= lt!2660294 (isDefined!14111 (findConcatSeparation!3525 (reg!20751 r!14126) r!14126 Nil!73149 s!9605 s!9605)))))

(declare-fun lt!2660295 () Unit!167836)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3283 (Regex!20422 Regex!20422 List!73273) Unit!167836)

(assert (=> b!7638315 (= lt!2660295 (lemmaFindConcatSeparationEquivalentToExists!3283 (reg!20751 r!14126) r!14126 s!9605))))

(declare-fun b!7638316 () Bool)

(declare-fun res!3059496 () Bool)

(assert (=> b!7638316 (=> (not res!3059496) (not e!4540512))))

(assert (=> b!7638316 (= res!3059496 (and (not (is-EmptyExpr!20422 r!14126)) (not (is-EmptyLang!20422 r!14126)) (not (is-ElementMatch!20422 r!14126)) (not (is-Union!20422 r!14126)) (is-Star!20422 r!14126)))))

(declare-fun b!7638317 () Bool)

(declare-fun e!4540516 () Bool)

(declare-fun tp_is_empty!51199 () Bool)

(declare-fun tp!2229543 () Bool)

(assert (=> b!7638317 (= e!4540516 (and tp_is_empty!51199 tp!2229543))))

(declare-fun b!7638318 () Bool)

(assert (=> b!7638318 (= e!4540513 (not (Exists!4576 lambda!469532)))))

(declare-fun lt!2660296 () Unit!167836)

(assert (=> b!7638318 (= lt!2660296 e!4540514)))

(declare-fun c!1407019 () Bool)

(assert (=> b!7638318 (= c!1407019 (matchR!9925 r!14126 s!9605))))

(declare-fun b!7638319 () Bool)

(assert (=> b!7638319 (= e!4540515 tp_is_empty!51199)))

(declare-fun b!7638320 () Bool)

(declare-fun res!3059494 () Bool)

(assert (=> b!7638320 (=> (not res!3059494) (not e!4540512))))

(declare-fun isEmpty!41784 (List!73273) Bool)

(assert (=> b!7638320 (= res!3059494 (not (isEmpty!41784 s!9605)))))

(declare-fun res!3059495 () Bool)

(assert (=> start!735398 (=> (not res!3059495) (not e!4540512))))

(declare-fun validRegex!10840 (Regex!20422) Bool)

(assert (=> start!735398 (= res!3059495 (validRegex!10840 r!14126))))

(assert (=> start!735398 e!4540512))

(assert (=> start!735398 e!4540515))

(assert (=> start!735398 e!4540516))

(declare-fun b!7638321 () Bool)

(declare-fun tp!2229542 () Bool)

(assert (=> b!7638321 (= e!4540515 tp!2229542)))

(declare-fun b!7638322 () Bool)

(declare-fun Unit!167839 () Unit!167836)

(assert (=> b!7638322 (= e!4540514 Unit!167839)))

(assert (= (and start!735398 res!3059495) b!7638316))

(assert (= (and b!7638316 res!3059496) b!7638320))

(assert (= (and b!7638320 res!3059494) b!7638315))

(assert (= (and b!7638315 (not res!3059493)) b!7638318))

(assert (= (and b!7638318 c!1407019) b!7638313))

(assert (= (and b!7638318 (not c!1407019)) b!7638322))

(assert (= (and start!735398 (is-ElementMatch!20422 r!14126)) b!7638319))

(assert (= (and start!735398 (is-Concat!29267 r!14126)) b!7638312))

(assert (= (and start!735398 (is-Star!20422 r!14126)) b!7638321))

(assert (= (and start!735398 (is-Union!20422 r!14126)) b!7638314))

(assert (= (and start!735398 (is-Cons!73149 s!9605)) b!7638317))

(declare-fun m!8162138 () Bool)

(assert (=> b!7638313 m!8162138))

(declare-fun m!8162140 () Bool)

(assert (=> b!7638313 m!8162140))

(declare-fun m!8162142 () Bool)

(assert (=> b!7638313 m!8162142))

(declare-fun m!8162144 () Bool)

(assert (=> start!735398 m!8162144))

(declare-fun m!8162146 () Bool)

(assert (=> b!7638318 m!8162146))

(declare-fun m!8162148 () Bool)

(assert (=> b!7638318 m!8162148))

(declare-fun m!8162150 () Bool)

(assert (=> b!7638320 m!8162150))

(assert (=> b!7638315 m!8162146))

(declare-fun m!8162152 () Bool)

(assert (=> b!7638315 m!8162152))

(assert (=> b!7638315 m!8162152))

(declare-fun m!8162154 () Bool)

(assert (=> b!7638315 m!8162154))

(declare-fun m!8162156 () Bool)

(assert (=> b!7638315 m!8162156))

(push 1)

(assert (not b!7638321))

(assert (not b!7638315))

(assert (not b!7638312))

(assert (not b!7638317))

(assert (not b!7638313))

(assert tp_is_empty!51199)

(assert (not start!735398))

(assert (not b!7638318))

(assert (not b!7638314))

(assert (not b!7638320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

