; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740250 () Bool)

(assert start!740250)

(declare-fun b!7775297 () Bool)

(declare-fun e!4606419 () Bool)

(declare-fun tp!2284829 () Bool)

(declare-fun tp!2284828 () Bool)

(assert (=> b!7775297 (= e!4606419 (and tp!2284829 tp!2284828))))

(declare-fun b!7775298 () Bool)

(declare-fun e!4606414 () Bool)

(declare-fun tp!2284835 () Bool)

(declare-fun tp!2284826 () Bool)

(assert (=> b!7775298 (= e!4606414 (and tp!2284835 tp!2284826))))

(declare-fun b!7775299 () Bool)

(declare-fun e!4606418 () Bool)

(declare-fun e!4606413 () Bool)

(assert (=> b!7775299 (= e!4606418 e!4606413)))

(declare-fun res!3099270 () Bool)

(assert (=> b!7775299 (=> (not res!3099270) (not e!4606413))))

(declare-datatypes ((C!41900 0))(
  ( (C!41901 (val!31390 Int)) )
))
(declare-datatypes ((Regex!20787 0))(
  ( (ElementMatch!20787 (c!1432902 C!41900)) (Concat!29632 (regOne!42086 Regex!20787) (regTwo!42086 Regex!20787)) (EmptyExpr!20787) (Star!20787 (reg!21116 Regex!20787)) (EmptyLang!20787) (Union!20787 (regOne!42087 Regex!20787) (regTwo!42087 Regex!20787)) )
))
(declare-fun lt!2671933 () Regex!20787)

(declare-fun lt!2671931 () Regex!20787)

(declare-fun lt!2671934 () Regex!20787)

(assert (=> b!7775299 (= res!3099270 (= lt!2671933 (Union!20787 lt!2671931 lt!2671934)))))

(declare-fun r2!6217 () Regex!20787)

(declare-datatypes ((List!73626 0))(
  ( (Nil!73502) (Cons!73502 (h!79950 C!41900) (t!388361 List!73626)) )
))
(declare-fun s!14292 () List!73626)

(declare-fun derivativeStep!6130 (Regex!20787 C!41900) Regex!20787)

(assert (=> b!7775299 (= lt!2671934 (derivativeStep!6130 r2!6217 (h!79950 s!14292)))))

(declare-fun lt!2671930 () Regex!20787)

(assert (=> b!7775299 (= lt!2671931 (Concat!29632 lt!2671930 r2!6217))))

(declare-fun r1!6279 () Regex!20787)

(assert (=> b!7775299 (= lt!2671930 (derivativeStep!6130 r1!6279 (h!79950 s!14292)))))

(declare-fun b!7775300 () Bool)

(declare-fun tp!2284833 () Bool)

(assert (=> b!7775300 (= e!4606419 tp!2284833)))

(declare-fun b!7775301 () Bool)

(declare-fun res!3099272 () Bool)

(declare-fun e!4606417 () Bool)

(assert (=> b!7775301 (=> (not res!3099272) (not e!4606417))))

(declare-fun validRegex!11201 (Regex!20787) Bool)

(assert (=> b!7775301 (= res!3099272 (validRegex!11201 r2!6217))))

(declare-fun b!7775302 () Bool)

(declare-fun e!4606416 () Bool)

(assert (=> b!7775302 (= e!4606413 (not e!4606416))))

(declare-fun res!3099276 () Bool)

(assert (=> b!7775302 (=> res!3099276 e!4606416)))

(declare-fun lt!2671929 () Bool)

(assert (=> b!7775302 (= res!3099276 (not lt!2671929))))

(declare-fun e!4606421 () Bool)

(assert (=> b!7775302 e!4606421))

(declare-fun res!3099268 () Bool)

(assert (=> b!7775302 (=> res!3099268 e!4606421)))

(assert (=> b!7775302 (= res!3099268 lt!2671929)))

(declare-fun matchR!10247 (Regex!20787 List!73626) Bool)

(assert (=> b!7775302 (= lt!2671929 (matchR!10247 lt!2671931 (t!388361 s!14292)))))

(declare-datatypes ((Unit!168476 0))(
  ( (Unit!168477) )
))
(declare-fun lt!2671935 () Unit!168476)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!362 (Regex!20787 Regex!20787 List!73626) Unit!168476)

(assert (=> b!7775302 (= lt!2671935 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!362 lt!2671931 lt!2671934 (t!388361 s!14292)))))

(declare-fun b!7775303 () Bool)

(declare-fun res!3099273 () Bool)

(assert (=> b!7775303 (=> (not res!3099273) (not e!4606418))))

(declare-fun nullable!9175 (Regex!20787) Bool)

(assert (=> b!7775303 (= res!3099273 (nullable!9175 r1!6279))))

(declare-fun b!7775304 () Bool)

(declare-fun e!4606420 () Bool)

(declare-fun tp_is_empty!51929 () Bool)

(declare-fun tp!2284834 () Bool)

(assert (=> b!7775304 (= e!4606420 (and tp_is_empty!51929 tp!2284834))))

(declare-fun b!7775305 () Bool)

(assert (=> b!7775305 (= e!4606414 tp_is_empty!51929)))

(declare-fun b!7775306 () Bool)

(declare-fun tp!2284830 () Bool)

(declare-fun tp!2284825 () Bool)

(assert (=> b!7775306 (= e!4606414 (and tp!2284830 tp!2284825))))

(declare-fun b!7775307 () Bool)

(declare-fun e!4606415 () Bool)

(assert (=> b!7775307 (= e!4606415 e!4606418)))

(declare-fun res!3099269 () Bool)

(assert (=> b!7775307 (=> (not res!3099269) (not e!4606418))))

(assert (=> b!7775307 (= res!3099269 (matchR!10247 lt!2671933 (t!388361 s!14292)))))

(declare-fun lt!2671932 () Regex!20787)

(assert (=> b!7775307 (= lt!2671933 (derivativeStep!6130 lt!2671932 (h!79950 s!14292)))))

(declare-fun b!7775296 () Bool)

(assert (=> b!7775296 (= e!4606421 (matchR!10247 lt!2671934 (t!388361 s!14292)))))

(declare-fun res!3099275 () Bool)

(assert (=> start!740250 (=> (not res!3099275) (not e!4606417))))

(assert (=> start!740250 (= res!3099275 (validRegex!11201 r1!6279))))

(assert (=> start!740250 e!4606417))

(assert (=> start!740250 e!4606414))

(assert (=> start!740250 e!4606419))

(assert (=> start!740250 e!4606420))

(declare-fun b!7775308 () Bool)

(declare-fun res!3099274 () Bool)

(assert (=> b!7775308 (=> (not res!3099274) (not e!4606415))))

(get-info :version)

(assert (=> b!7775308 (= res!3099274 ((_ is Cons!73502) s!14292))))

(declare-fun b!7775309 () Bool)

(assert (=> b!7775309 (= e!4606419 tp_is_empty!51929)))

(declare-fun b!7775310 () Bool)

(assert (=> b!7775310 (= e!4606417 e!4606415)))

(declare-fun res!3099271 () Bool)

(assert (=> b!7775310 (=> (not res!3099271) (not e!4606415))))

(assert (=> b!7775310 (= res!3099271 (matchR!10247 lt!2671932 s!14292))))

(assert (=> b!7775310 (= lt!2671932 (Concat!29632 r1!6279 r2!6217))))

(declare-fun b!7775311 () Bool)

(declare-fun tp!2284827 () Bool)

(assert (=> b!7775311 (= e!4606414 tp!2284827)))

(declare-fun b!7775312 () Bool)

(declare-fun tp!2284832 () Bool)

(declare-fun tp!2284831 () Bool)

(assert (=> b!7775312 (= e!4606419 (and tp!2284832 tp!2284831))))

(declare-fun b!7775313 () Bool)

(assert (=> b!7775313 (= e!4606416 true)))

(declare-datatypes ((tuple2!69868 0))(
  ( (tuple2!69869 (_1!38237 List!73626) (_2!38237 List!73626)) )
))
(declare-datatypes ((Option!17728 0))(
  ( (None!17727) (Some!17727 (v!54862 tuple2!69868)) )
))
(declare-fun isDefined!14340 (Option!17728) Bool)

(declare-fun findConcatSeparation!3758 (Regex!20787 Regex!20787 List!73626 List!73626 List!73626) Option!17728)

(assert (=> b!7775313 (isDefined!14340 (findConcatSeparation!3758 lt!2671930 r2!6217 Nil!73502 (t!388361 s!14292) (t!388361 s!14292)))))

(declare-fun lt!2671936 () Unit!168476)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!348 (Regex!20787 Regex!20787 List!73626) Unit!168476)

(assert (=> b!7775313 (= lt!2671936 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!348 lt!2671930 r2!6217 (t!388361 s!14292)))))

(assert (= (and start!740250 res!3099275) b!7775301))

(assert (= (and b!7775301 res!3099272) b!7775310))

(assert (= (and b!7775310 res!3099271) b!7775308))

(assert (= (and b!7775308 res!3099274) b!7775307))

(assert (= (and b!7775307 res!3099269) b!7775303))

(assert (= (and b!7775303 res!3099273) b!7775299))

(assert (= (and b!7775299 res!3099270) b!7775302))

(assert (= (and b!7775302 (not res!3099268)) b!7775296))

(assert (= (and b!7775302 (not res!3099276)) b!7775313))

(assert (= (and start!740250 ((_ is ElementMatch!20787) r1!6279)) b!7775305))

(assert (= (and start!740250 ((_ is Concat!29632) r1!6279)) b!7775306))

(assert (= (and start!740250 ((_ is Star!20787) r1!6279)) b!7775311))

(assert (= (and start!740250 ((_ is Union!20787) r1!6279)) b!7775298))

(assert (= (and start!740250 ((_ is ElementMatch!20787) r2!6217)) b!7775309))

(assert (= (and start!740250 ((_ is Concat!29632) r2!6217)) b!7775312))

(assert (= (and start!740250 ((_ is Star!20787) r2!6217)) b!7775300))

(assert (= (and start!740250 ((_ is Union!20787) r2!6217)) b!7775297))

(assert (= (and start!740250 ((_ is Cons!73502) s!14292)) b!7775304))

(declare-fun m!8226534 () Bool)

(assert (=> b!7775307 m!8226534))

(declare-fun m!8226536 () Bool)

(assert (=> b!7775307 m!8226536))

(declare-fun m!8226538 () Bool)

(assert (=> start!740250 m!8226538))

(declare-fun m!8226540 () Bool)

(assert (=> b!7775299 m!8226540))

(declare-fun m!8226542 () Bool)

(assert (=> b!7775299 m!8226542))

(declare-fun m!8226544 () Bool)

(assert (=> b!7775303 m!8226544))

(declare-fun m!8226546 () Bool)

(assert (=> b!7775302 m!8226546))

(declare-fun m!8226548 () Bool)

(assert (=> b!7775302 m!8226548))

(declare-fun m!8226550 () Bool)

(assert (=> b!7775301 m!8226550))

(declare-fun m!8226552 () Bool)

(assert (=> b!7775296 m!8226552))

(declare-fun m!8226554 () Bool)

(assert (=> b!7775310 m!8226554))

(declare-fun m!8226556 () Bool)

(assert (=> b!7775313 m!8226556))

(assert (=> b!7775313 m!8226556))

(declare-fun m!8226558 () Bool)

(assert (=> b!7775313 m!8226558))

(declare-fun m!8226560 () Bool)

(assert (=> b!7775313 m!8226560))

(check-sat (not b!7775313) (not b!7775296) (not b!7775310) (not b!7775307) (not b!7775301) (not b!7775306) (not b!7775300) (not b!7775312) (not b!7775304) (not start!740250) (not b!7775297) (not b!7775298) tp_is_empty!51929 (not b!7775303) (not b!7775302) (not b!7775311) (not b!7775299))
(check-sat)
