; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291600 () Bool)

(assert start!291600)

(declare-fun b!3051293 () Bool)

(assert (=> b!3051293 true))

(assert (=> b!3051293 true))

(assert (=> b!3051293 true))

(declare-fun lambda!113654 () Int)

(declare-fun lambda!113653 () Int)

(assert (=> b!3051293 (not (= lambda!113654 lambda!113653))))

(assert (=> b!3051293 true))

(assert (=> b!3051293 true))

(assert (=> b!3051293 true))

(declare-fun b!3051289 () Bool)

(declare-fun e!1911591 () Bool)

(declare-fun tp!965760 () Bool)

(declare-fun tp!965756 () Bool)

(assert (=> b!3051289 (= e!1911591 (and tp!965760 tp!965756))))

(declare-fun b!3051290 () Bool)

(declare-fun res!1253403 () Bool)

(declare-fun e!1911589 () Bool)

(assert (=> b!3051290 (=> res!1253403 e!1911589)))

(declare-datatypes ((C!19104 0))(
  ( (C!19105 (val!11588 Int)) )
))
(declare-datatypes ((Regex!9459 0))(
  ( (ElementMatch!9459 (c!505655 C!19104)) (Concat!14780 (regOne!19430 Regex!9459) (regTwo!19430 Regex!9459)) (EmptyExpr!9459) (Star!9459 (reg!9788 Regex!9459)) (EmptyLang!9459) (Union!9459 (regOne!19431 Regex!9459) (regTwo!19431 Regex!9459)) )
))
(declare-fun lt!1048291 () Regex!9459)

(declare-datatypes ((List!35324 0))(
  ( (Nil!35200) (Cons!35200 (h!40620 C!19104) (t!234389 List!35324)) )
))
(declare-datatypes ((tuple2!34144 0))(
  ( (tuple2!34145 (_1!20204 List!35324) (_2!20204 List!35324)) )
))
(declare-fun lt!1048285 () tuple2!34144)

(declare-fun matchR!4341 (Regex!9459 List!35324) Bool)

(assert (=> b!3051290 (= res!1253403 (not (matchR!4341 lt!1048291 (_2!20204 lt!1048285))))))

(declare-fun b!3051291 () Bool)

(declare-fun tp!965757 () Bool)

(assert (=> b!3051291 (= e!1911591 tp!965757)))

(declare-fun b!3051292 () Bool)

(declare-datatypes ((Unit!49351 0))(
  ( (Unit!49352) )
))
(declare-fun e!1911584 () Unit!49351)

(declare-fun Unit!49353 () Unit!49351)

(assert (=> b!3051292 (= e!1911584 Unit!49353)))

(declare-fun lt!1048294 () Unit!49351)

(declare-fun r!17423 () Regex!9459)

(declare-fun mainMatchTheorem!1596 (Regex!9459 List!35324) Unit!49351)

(assert (=> b!3051292 (= lt!1048294 (mainMatchTheorem!1596 (reg!9788 r!17423) (_1!20204 lt!1048285)))))

(assert (=> b!3051292 false))

(declare-fun e!1911585 () Bool)

(declare-fun e!1911588 () Bool)

(assert (=> b!3051293 (= e!1911585 e!1911588)))

(declare-fun res!1253406 () Bool)

(assert (=> b!3051293 (=> res!1253406 e!1911588)))

(declare-fun lt!1048298 () Bool)

(assert (=> b!3051293 (= res!1253406 (not lt!1048298))))

(declare-fun Exists!1723 (Int) Bool)

(assert (=> b!3051293 (= (Exists!1723 lambda!113653) (Exists!1723 lambda!113654))))

(declare-fun lt!1048287 () Unit!49351)

(declare-fun s!11993 () List!35324)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!340 (Regex!9459 List!35324) Unit!49351)

(assert (=> b!3051293 (= lt!1048287 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!340 (reg!9788 r!17423) s!11993))))

(assert (=> b!3051293 (= lt!1048298 (Exists!1723 lambda!113653))))

(declare-datatypes ((Option!6804 0))(
  ( (None!6803) (Some!6803 (v!34937 tuple2!34144)) )
))
(declare-fun lt!1048297 () Option!6804)

(declare-fun isDefined!5355 (Option!6804) Bool)

(assert (=> b!3051293 (= lt!1048298 (isDefined!5355 lt!1048297))))

(declare-fun lt!1048286 () Regex!9459)

(declare-fun findConcatSeparation!1198 (Regex!9459 Regex!9459 List!35324 List!35324 List!35324) Option!6804)

(assert (=> b!3051293 (= lt!1048297 (findConcatSeparation!1198 (reg!9788 r!17423) lt!1048286 Nil!35200 s!11993 s!11993))))

(declare-fun lt!1048284 () Unit!49351)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!976 (Regex!9459 Regex!9459 List!35324) Unit!49351)

(assert (=> b!3051293 (= lt!1048284 (lemmaFindConcatSeparationEquivalentToExists!976 (reg!9788 r!17423) lt!1048286 s!11993))))

(assert (=> b!3051293 (= lt!1048286 (Star!9459 (reg!9788 r!17423)))))

(declare-fun b!3051294 () Bool)

(declare-fun e!1911590 () Bool)

(assert (=> b!3051294 (= e!1911590 e!1911589)))

(declare-fun res!1253404 () Bool)

(assert (=> b!3051294 (=> res!1253404 e!1911589)))

(declare-fun lt!1048292 () Regex!9459)

(assert (=> b!3051294 (= res!1253404 (not (= lt!1048292 lt!1048291)))))

(declare-fun lt!1048288 () Regex!9459)

(assert (=> b!3051294 (= lt!1048291 (Star!9459 lt!1048288))))

(assert (=> b!3051294 (matchR!4341 lt!1048292 (_2!20204 lt!1048285))))

(declare-fun simplify!414 (Regex!9459) Regex!9459)

(assert (=> b!3051294 (= lt!1048292 (simplify!414 lt!1048286))))

(declare-fun lt!1048289 () Unit!49351)

(declare-fun lemmaSimplifySound!260 (Regex!9459 List!35324) Unit!49351)

(assert (=> b!3051294 (= lt!1048289 (lemmaSimplifySound!260 lt!1048286 (_2!20204 lt!1048285)))))

(declare-fun lt!1048295 () Unit!49351)

(assert (=> b!3051294 (= lt!1048295 e!1911584)))

(declare-fun c!505654 () Bool)

(declare-fun size!26543 (List!35324) Int)

(assert (=> b!3051294 (= c!505654 (= (size!26543 (_2!20204 lt!1048285)) (size!26543 s!11993)))))

(assert (=> b!3051294 (matchR!4341 lt!1048288 (_1!20204 lt!1048285))))

(assert (=> b!3051294 (= lt!1048288 (simplify!414 (reg!9788 r!17423)))))

(declare-fun lt!1048296 () Unit!49351)

(assert (=> b!3051294 (= lt!1048296 (lemmaSimplifySound!260 (reg!9788 r!17423) (_1!20204 lt!1048285)))))

(declare-fun b!3051295 () Bool)

(declare-fun Unit!49354 () Unit!49351)

(assert (=> b!3051295 (= e!1911584 Unit!49354)))

(declare-fun b!3051296 () Bool)

(declare-fun e!1911587 () Bool)

(declare-fun tp_is_empty!16481 () Bool)

(declare-fun tp!965758 () Bool)

(assert (=> b!3051296 (= e!1911587 (and tp_is_empty!16481 tp!965758))))

(declare-fun res!1253399 () Bool)

(declare-fun e!1911586 () Bool)

(assert (=> start!291600 (=> (not res!1253399) (not e!1911586))))

(declare-fun validRegex!4192 (Regex!9459) Bool)

(assert (=> start!291600 (= res!1253399 (validRegex!4192 r!17423))))

(assert (=> start!291600 e!1911586))

(assert (=> start!291600 e!1911591))

(assert (=> start!291600 e!1911587))

(declare-fun b!3051297 () Bool)

(declare-fun tp!965761 () Bool)

(declare-fun tp!965759 () Bool)

(assert (=> b!3051297 (= e!1911591 (and tp!965761 tp!965759))))

(declare-fun b!3051298 () Bool)

(declare-fun res!1253400 () Bool)

(assert (=> b!3051298 (=> res!1253400 e!1911585)))

(declare-fun isEmpty!19511 (List!35324) Bool)

(assert (=> b!3051298 (= res!1253400 (isEmpty!19511 s!11993))))

(declare-fun b!3051299 () Bool)

(assert (=> b!3051299 (= e!1911588 e!1911590)))

(declare-fun res!1253402 () Bool)

(assert (=> b!3051299 (=> res!1253402 e!1911590)))

(assert (=> b!3051299 (= res!1253402 (not (matchR!4341 (reg!9788 r!17423) (_1!20204 lt!1048285))))))

(declare-fun get!11000 (Option!6804) tuple2!34144)

(assert (=> b!3051299 (= lt!1048285 (get!11000 lt!1048297))))

(declare-fun b!3051300 () Bool)

(declare-fun res!1253405 () Bool)

(assert (=> b!3051300 (=> res!1253405 e!1911590)))

(assert (=> b!3051300 (= res!1253405 (not (matchR!4341 lt!1048286 (_2!20204 lt!1048285))))))

(declare-fun b!3051301 () Bool)

(assert (=> b!3051301 (= e!1911589 (validRegex!4192 lt!1048291))))

(declare-fun b!3051302 () Bool)

(assert (=> b!3051302 (= e!1911586 (not e!1911585))))

(declare-fun res!1253401 () Bool)

(assert (=> b!3051302 (=> res!1253401 e!1911585)))

(declare-fun lt!1048290 () Bool)

(get-info :version)

(assert (=> b!3051302 (= res!1253401 (or (not lt!1048290) ((_ is Concat!14780) r!17423) ((_ is Union!9459) r!17423) (not ((_ is Star!9459) r!17423))))))

(declare-fun matchRSpec!1596 (Regex!9459 List!35324) Bool)

(assert (=> b!3051302 (= lt!1048290 (matchRSpec!1596 r!17423 s!11993))))

(assert (=> b!3051302 (= lt!1048290 (matchR!4341 r!17423 s!11993))))

(declare-fun lt!1048293 () Unit!49351)

(assert (=> b!3051302 (= lt!1048293 (mainMatchTheorem!1596 r!17423 s!11993))))

(declare-fun b!3051303 () Bool)

(assert (=> b!3051303 (= e!1911591 tp_is_empty!16481)))

(assert (= (and start!291600 res!1253399) b!3051302))

(assert (= (and b!3051302 (not res!1253401)) b!3051298))

(assert (= (and b!3051298 (not res!1253400)) b!3051293))

(assert (= (and b!3051293 (not res!1253406)) b!3051299))

(assert (= (and b!3051299 (not res!1253402)) b!3051300))

(assert (= (and b!3051300 (not res!1253405)) b!3051294))

(assert (= (and b!3051294 c!505654) b!3051292))

(assert (= (and b!3051294 (not c!505654)) b!3051295))

(assert (= (and b!3051294 (not res!1253404)) b!3051290))

(assert (= (and b!3051290 (not res!1253403)) b!3051301))

(assert (= (and start!291600 ((_ is ElementMatch!9459) r!17423)) b!3051303))

(assert (= (and start!291600 ((_ is Concat!14780) r!17423)) b!3051289))

(assert (= (and start!291600 ((_ is Star!9459) r!17423)) b!3051291))

(assert (= (and start!291600 ((_ is Union!9459) r!17423)) b!3051297))

(assert (= (and start!291600 ((_ is Cons!35200) s!11993)) b!3051296))

(declare-fun m!3377983 () Bool)

(assert (=> b!3051302 m!3377983))

(declare-fun m!3377985 () Bool)

(assert (=> b!3051302 m!3377985))

(declare-fun m!3377987 () Bool)

(assert (=> b!3051302 m!3377987))

(declare-fun m!3377989 () Bool)

(assert (=> b!3051294 m!3377989))

(declare-fun m!3377991 () Bool)

(assert (=> b!3051294 m!3377991))

(declare-fun m!3377993 () Bool)

(assert (=> b!3051294 m!3377993))

(declare-fun m!3377995 () Bool)

(assert (=> b!3051294 m!3377995))

(declare-fun m!3377997 () Bool)

(assert (=> b!3051294 m!3377997))

(declare-fun m!3377999 () Bool)

(assert (=> b!3051294 m!3377999))

(declare-fun m!3378001 () Bool)

(assert (=> b!3051294 m!3378001))

(declare-fun m!3378003 () Bool)

(assert (=> b!3051294 m!3378003))

(declare-fun m!3378005 () Bool)

(assert (=> b!3051300 m!3378005))

(declare-fun m!3378007 () Bool)

(assert (=> start!291600 m!3378007))

(declare-fun m!3378009 () Bool)

(assert (=> b!3051292 m!3378009))

(declare-fun m!3378011 () Bool)

(assert (=> b!3051299 m!3378011))

(declare-fun m!3378013 () Bool)

(assert (=> b!3051299 m!3378013))

(declare-fun m!3378015 () Bool)

(assert (=> b!3051301 m!3378015))

(declare-fun m!3378017 () Bool)

(assert (=> b!3051293 m!3378017))

(declare-fun m!3378019 () Bool)

(assert (=> b!3051293 m!3378019))

(declare-fun m!3378021 () Bool)

(assert (=> b!3051293 m!3378021))

(declare-fun m!3378023 () Bool)

(assert (=> b!3051293 m!3378023))

(declare-fun m!3378025 () Bool)

(assert (=> b!3051293 m!3378025))

(declare-fun m!3378027 () Bool)

(assert (=> b!3051293 m!3378027))

(assert (=> b!3051293 m!3378019))

(declare-fun m!3378029 () Bool)

(assert (=> b!3051298 m!3378029))

(declare-fun m!3378031 () Bool)

(assert (=> b!3051290 m!3378031))

(check-sat (not b!3051301) (not b!3051300) (not b!3051293) (not b!3051296) (not b!3051291) (not start!291600) (not b!3051292) (not b!3051297) tp_is_empty!16481 (not b!3051294) (not b!3051298) (not b!3051289) (not b!3051302) (not b!3051290) (not b!3051299))
(check-sat)
(get-model)

(declare-fun d!854429 () Bool)

(assert (=> d!854429 (= (matchR!4341 (reg!9788 r!17423) (_1!20204 lt!1048285)) (matchRSpec!1596 (reg!9788 r!17423) (_1!20204 lt!1048285)))))

(declare-fun lt!1048311 () Unit!49351)

(declare-fun choose!18072 (Regex!9459 List!35324) Unit!49351)

(assert (=> d!854429 (= lt!1048311 (choose!18072 (reg!9788 r!17423) (_1!20204 lt!1048285)))))

(assert (=> d!854429 (validRegex!4192 (reg!9788 r!17423))))

(assert (=> d!854429 (= (mainMatchTheorem!1596 (reg!9788 r!17423) (_1!20204 lt!1048285)) lt!1048311)))

(declare-fun bs!532289 () Bool)

(assert (= bs!532289 d!854429))

(assert (=> bs!532289 m!3378011))

(declare-fun m!3378053 () Bool)

(assert (=> bs!532289 m!3378053))

(declare-fun m!3378055 () Bool)

(assert (=> bs!532289 m!3378055))

(declare-fun m!3378057 () Bool)

(assert (=> bs!532289 m!3378057))

(assert (=> b!3051292 d!854429))

(declare-fun bs!532291 () Bool)

(declare-fun b!3051595 () Bool)

(assert (= bs!532291 (and b!3051595 b!3051293)))

(declare-fun lambda!113661 () Int)

(assert (=> bs!532291 (not (= lambda!113661 lambda!113653))))

(assert (=> bs!532291 (= (= r!17423 lt!1048286) (= lambda!113661 lambda!113654))))

(assert (=> b!3051595 true))

(assert (=> b!3051595 true))

(declare-fun bs!532292 () Bool)

(declare-fun b!3051592 () Bool)

(assert (= bs!532292 (and b!3051592 b!3051293)))

(declare-fun lambda!113664 () Int)

(assert (=> bs!532292 (not (= lambda!113664 lambda!113653))))

(assert (=> bs!532292 (not (= lambda!113664 lambda!113654))))

(declare-fun bs!532293 () Bool)

(assert (= bs!532293 (and b!3051592 b!3051595)))

(assert (=> bs!532293 (not (= lambda!113664 lambda!113661))))

(assert (=> b!3051592 true))

(assert (=> b!3051592 true))

(declare-fun bm!210161 () Bool)

(declare-fun call!210166 () Bool)

(assert (=> bm!210161 (= call!210166 (isEmpty!19511 s!11993))))

(declare-fun b!3051587 () Bool)

(declare-fun res!1253510 () Bool)

(declare-fun e!1911753 () Bool)

(assert (=> b!3051587 (=> res!1253510 e!1911753)))

(assert (=> b!3051587 (= res!1253510 call!210166)))

(declare-fun e!1911751 () Bool)

(assert (=> b!3051587 (= e!1911751 e!1911753)))

(declare-fun c!505744 () Bool)

(declare-fun bm!210162 () Bool)

(declare-fun call!210167 () Bool)

(assert (=> bm!210162 (= call!210167 (Exists!1723 (ite c!505744 lambda!113661 lambda!113664)))))

(declare-fun b!3051588 () Bool)

(declare-fun c!505745 () Bool)

(assert (=> b!3051588 (= c!505745 ((_ is Union!9459) r!17423))))

(declare-fun e!1911750 () Bool)

(declare-fun e!1911754 () Bool)

(assert (=> b!3051588 (= e!1911750 e!1911754)))

(declare-fun b!3051589 () Bool)

(declare-fun e!1911752 () Bool)

(declare-fun e!1911755 () Bool)

(assert (=> b!3051589 (= e!1911752 e!1911755)))

(declare-fun res!1253511 () Bool)

(assert (=> b!3051589 (= res!1253511 (not ((_ is EmptyLang!9459) r!17423)))))

(assert (=> b!3051589 (=> (not res!1253511) (not e!1911755))))

(declare-fun b!3051590 () Bool)

(assert (=> b!3051590 (= e!1911754 e!1911751)))

(assert (=> b!3051590 (= c!505744 ((_ is Star!9459) r!17423))))

(declare-fun b!3051591 () Bool)

(assert (=> b!3051591 (= e!1911752 call!210166)))

(assert (=> b!3051592 (= e!1911751 call!210167)))

(declare-fun d!854439 () Bool)

(declare-fun c!505747 () Bool)

(assert (=> d!854439 (= c!505747 ((_ is EmptyExpr!9459) r!17423))))

(assert (=> d!854439 (= (matchRSpec!1596 r!17423 s!11993) e!1911752)))

(declare-fun b!3051593 () Bool)

(assert (=> b!3051593 (= e!1911750 (= s!11993 (Cons!35200 (c!505655 r!17423) Nil!35200)))))

(declare-fun b!3051594 () Bool)

(declare-fun c!505746 () Bool)

(assert (=> b!3051594 (= c!505746 ((_ is ElementMatch!9459) r!17423))))

(assert (=> b!3051594 (= e!1911755 e!1911750)))

(assert (=> b!3051595 (= e!1911753 call!210167)))

(declare-fun b!3051596 () Bool)

(declare-fun e!1911749 () Bool)

(assert (=> b!3051596 (= e!1911749 (matchRSpec!1596 (regTwo!19431 r!17423) s!11993))))

(declare-fun b!3051597 () Bool)

(assert (=> b!3051597 (= e!1911754 e!1911749)))

(declare-fun res!1253512 () Bool)

(assert (=> b!3051597 (= res!1253512 (matchRSpec!1596 (regOne!19431 r!17423) s!11993))))

(assert (=> b!3051597 (=> res!1253512 e!1911749)))

(assert (= (and d!854439 c!505747) b!3051591))

(assert (= (and d!854439 (not c!505747)) b!3051589))

(assert (= (and b!3051589 res!1253511) b!3051594))

(assert (= (and b!3051594 c!505746) b!3051593))

(assert (= (and b!3051594 (not c!505746)) b!3051588))

(assert (= (and b!3051588 c!505745) b!3051597))

(assert (= (and b!3051588 (not c!505745)) b!3051590))

(assert (= (and b!3051597 (not res!1253512)) b!3051596))

(assert (= (and b!3051590 c!505744) b!3051587))

(assert (= (and b!3051590 (not c!505744)) b!3051592))

(assert (= (and b!3051587 (not res!1253510)) b!3051595))

(assert (= (or b!3051595 b!3051592) bm!210162))

(assert (= (or b!3051591 b!3051587) bm!210161))

(assert (=> bm!210161 m!3378029))

(declare-fun m!3378137 () Bool)

(assert (=> bm!210162 m!3378137))

(declare-fun m!3378139 () Bool)

(assert (=> b!3051596 m!3378139))

(declare-fun m!3378141 () Bool)

(assert (=> b!3051597 m!3378141))

(assert (=> b!3051302 d!854439))

(declare-fun b!3051682 () Bool)

(declare-fun e!1911806 () Bool)

(declare-fun derivativeStep!2702 (Regex!9459 C!19104) Regex!9459)

(declare-fun head!6761 (List!35324) C!19104)

(declare-fun tail!4987 (List!35324) List!35324)

(assert (=> b!3051682 (= e!1911806 (matchR!4341 (derivativeStep!2702 r!17423 (head!6761 s!11993)) (tail!4987 s!11993)))))

(declare-fun b!3051683 () Bool)

(declare-fun e!1911807 () Bool)

(assert (=> b!3051683 (= e!1911807 (= (head!6761 s!11993) (c!505655 r!17423)))))

(declare-fun b!3051684 () Bool)

(declare-fun e!1911801 () Bool)

(declare-fun e!1911804 () Bool)

(assert (=> b!3051684 (= e!1911801 e!1911804)))

(declare-fun res!1253565 () Bool)

(assert (=> b!3051684 (=> res!1253565 e!1911804)))

(declare-fun call!210177 () Bool)

(assert (=> b!3051684 (= res!1253565 call!210177)))

(declare-fun d!854459 () Bool)

(declare-fun e!1911802 () Bool)

(assert (=> d!854459 e!1911802))

(declare-fun c!505767 () Bool)

(assert (=> d!854459 (= c!505767 ((_ is EmptyExpr!9459) r!17423))))

(declare-fun lt!1048355 () Bool)

(assert (=> d!854459 (= lt!1048355 e!1911806)))

(declare-fun c!505768 () Bool)

(assert (=> d!854459 (= c!505768 (isEmpty!19511 s!11993))))

(assert (=> d!854459 (validRegex!4192 r!17423)))

(assert (=> d!854459 (= (matchR!4341 r!17423 s!11993) lt!1048355)))

(declare-fun b!3051685 () Bool)

(declare-fun res!1253564 () Bool)

(assert (=> b!3051685 (=> (not res!1253564) (not e!1911807))))

(assert (=> b!3051685 (= res!1253564 (not call!210177))))

(declare-fun b!3051686 () Bool)

(assert (=> b!3051686 (= e!1911804 (not (= (head!6761 s!11993) (c!505655 r!17423))))))

(declare-fun b!3051687 () Bool)

(assert (=> b!3051687 (= e!1911802 (= lt!1048355 call!210177))))

(declare-fun b!3051688 () Bool)

(declare-fun e!1911803 () Bool)

(assert (=> b!3051688 (= e!1911803 e!1911801)))

(declare-fun res!1253561 () Bool)

(assert (=> b!3051688 (=> (not res!1253561) (not e!1911801))))

(assert (=> b!3051688 (= res!1253561 (not lt!1048355))))

(declare-fun b!3051689 () Bool)

(declare-fun nullable!3105 (Regex!9459) Bool)

(assert (=> b!3051689 (= e!1911806 (nullable!3105 r!17423))))

(declare-fun b!3051690 () Bool)

(declare-fun res!1253560 () Bool)

(assert (=> b!3051690 (=> res!1253560 e!1911803)))

(assert (=> b!3051690 (= res!1253560 (not ((_ is ElementMatch!9459) r!17423)))))

(declare-fun e!1911805 () Bool)

(assert (=> b!3051690 (= e!1911805 e!1911803)))

(declare-fun b!3051691 () Bool)

(declare-fun res!1253559 () Bool)

(assert (=> b!3051691 (=> (not res!1253559) (not e!1911807))))

(assert (=> b!3051691 (= res!1253559 (isEmpty!19511 (tail!4987 s!11993)))))

(declare-fun b!3051692 () Bool)

(declare-fun res!1253566 () Bool)

(assert (=> b!3051692 (=> res!1253566 e!1911804)))

(assert (=> b!3051692 (= res!1253566 (not (isEmpty!19511 (tail!4987 s!11993))))))

(declare-fun b!3051693 () Bool)

(declare-fun res!1253563 () Bool)

(assert (=> b!3051693 (=> res!1253563 e!1911803)))

(assert (=> b!3051693 (= res!1253563 e!1911807)))

(declare-fun res!1253562 () Bool)

(assert (=> b!3051693 (=> (not res!1253562) (not e!1911807))))

(assert (=> b!3051693 (= res!1253562 lt!1048355)))

(declare-fun bm!210172 () Bool)

(assert (=> bm!210172 (= call!210177 (isEmpty!19511 s!11993))))

(declare-fun b!3051694 () Bool)

(assert (=> b!3051694 (= e!1911802 e!1911805)))

(declare-fun c!505769 () Bool)

(assert (=> b!3051694 (= c!505769 ((_ is EmptyLang!9459) r!17423))))

(declare-fun b!3051695 () Bool)

(assert (=> b!3051695 (= e!1911805 (not lt!1048355))))

(assert (= (and d!854459 c!505768) b!3051689))

(assert (= (and d!854459 (not c!505768)) b!3051682))

(assert (= (and d!854459 c!505767) b!3051687))

(assert (= (and d!854459 (not c!505767)) b!3051694))

(assert (= (and b!3051694 c!505769) b!3051695))

(assert (= (and b!3051694 (not c!505769)) b!3051690))

(assert (= (and b!3051690 (not res!1253560)) b!3051693))

(assert (= (and b!3051693 res!1253562) b!3051685))

(assert (= (and b!3051685 res!1253564) b!3051691))

(assert (= (and b!3051691 res!1253559) b!3051683))

(assert (= (and b!3051693 (not res!1253563)) b!3051688))

(assert (= (and b!3051688 res!1253561) b!3051684))

(assert (= (and b!3051684 (not res!1253565)) b!3051692))

(assert (= (and b!3051692 (not res!1253566)) b!3051686))

(assert (= (or b!3051687 b!3051684 b!3051685) bm!210172))

(declare-fun m!3378185 () Bool)

(assert (=> b!3051692 m!3378185))

(assert (=> b!3051692 m!3378185))

(declare-fun m!3378187 () Bool)

(assert (=> b!3051692 m!3378187))

(assert (=> d!854459 m!3378029))

(assert (=> d!854459 m!3378007))

(assert (=> b!3051691 m!3378185))

(assert (=> b!3051691 m!3378185))

(assert (=> b!3051691 m!3378187))

(declare-fun m!3378191 () Bool)

(assert (=> b!3051686 m!3378191))

(declare-fun m!3378193 () Bool)

(assert (=> b!3051689 m!3378193))

(assert (=> b!3051682 m!3378191))

(assert (=> b!3051682 m!3378191))

(declare-fun m!3378195 () Bool)

(assert (=> b!3051682 m!3378195))

(assert (=> b!3051682 m!3378185))

(assert (=> b!3051682 m!3378195))

(assert (=> b!3051682 m!3378185))

(declare-fun m!3378199 () Bool)

(assert (=> b!3051682 m!3378199))

(assert (=> b!3051683 m!3378191))

(assert (=> bm!210172 m!3378029))

(assert (=> b!3051302 d!854459))

(declare-fun d!854473 () Bool)

(assert (=> d!854473 (= (matchR!4341 r!17423 s!11993) (matchRSpec!1596 r!17423 s!11993))))

(declare-fun lt!1048356 () Unit!49351)

(assert (=> d!854473 (= lt!1048356 (choose!18072 r!17423 s!11993))))

(assert (=> d!854473 (validRegex!4192 r!17423)))

(assert (=> d!854473 (= (mainMatchTheorem!1596 r!17423 s!11993) lt!1048356)))

(declare-fun bs!532300 () Bool)

(assert (= bs!532300 d!854473))

(assert (=> bs!532300 m!3377985))

(assert (=> bs!532300 m!3377983))

(declare-fun m!3378201 () Bool)

(assert (=> bs!532300 m!3378201))

(assert (=> bs!532300 m!3378007))

(assert (=> b!3051302 d!854473))

(declare-fun d!854475 () Bool)

(declare-fun res!1253589 () Bool)

(declare-fun e!1911831 () Bool)

(assert (=> d!854475 (=> res!1253589 e!1911831)))

(assert (=> d!854475 (= res!1253589 ((_ is ElementMatch!9459) r!17423))))

(assert (=> d!854475 (= (validRegex!4192 r!17423) e!1911831)))

(declare-fun b!3051724 () Bool)

(declare-fun e!1911828 () Bool)

(declare-fun e!1911830 () Bool)

(assert (=> b!3051724 (= e!1911828 e!1911830)))

(declare-fun res!1253588 () Bool)

(assert (=> b!3051724 (= res!1253588 (not (nullable!3105 (reg!9788 r!17423))))))

(assert (=> b!3051724 (=> (not res!1253588) (not e!1911830))))

(declare-fun b!3051725 () Bool)

(declare-fun e!1911826 () Bool)

(assert (=> b!3051725 (= e!1911828 e!1911826)))

(declare-fun c!505774 () Bool)

(assert (=> b!3051725 (= c!505774 ((_ is Union!9459) r!17423))))

(declare-fun bm!210179 () Bool)

(declare-fun call!210186 () Bool)

(assert (=> bm!210179 (= call!210186 (validRegex!4192 (ite c!505774 (regOne!19431 r!17423) (regTwo!19430 r!17423))))))

(declare-fun call!210184 () Bool)

(declare-fun bm!210180 () Bool)

(declare-fun c!505775 () Bool)

(assert (=> bm!210180 (= call!210184 (validRegex!4192 (ite c!505775 (reg!9788 r!17423) (ite c!505774 (regTwo!19431 r!17423) (regOne!19430 r!17423)))))))

(declare-fun b!3051726 () Bool)

(declare-fun e!1911827 () Bool)

(assert (=> b!3051726 (= e!1911827 call!210186)))

(declare-fun bm!210181 () Bool)

(declare-fun call!210185 () Bool)

(assert (=> bm!210181 (= call!210185 call!210184)))

(declare-fun b!3051727 () Bool)

(declare-fun res!1253590 () Bool)

(declare-fun e!1911829 () Bool)

(assert (=> b!3051727 (=> (not res!1253590) (not e!1911829))))

(assert (=> b!3051727 (= res!1253590 call!210186)))

(assert (=> b!3051727 (= e!1911826 e!1911829)))

(declare-fun b!3051728 () Bool)

(assert (=> b!3051728 (= e!1911831 e!1911828)))

(assert (=> b!3051728 (= c!505775 ((_ is Star!9459) r!17423))))

(declare-fun b!3051729 () Bool)

(declare-fun e!1911832 () Bool)

(assert (=> b!3051729 (= e!1911832 e!1911827)))

(declare-fun res!1253587 () Bool)

(assert (=> b!3051729 (=> (not res!1253587) (not e!1911827))))

(assert (=> b!3051729 (= res!1253587 call!210185)))

(declare-fun b!3051730 () Bool)

(declare-fun res!1253591 () Bool)

(assert (=> b!3051730 (=> res!1253591 e!1911832)))

(assert (=> b!3051730 (= res!1253591 (not ((_ is Concat!14780) r!17423)))))

(assert (=> b!3051730 (= e!1911826 e!1911832)))

(declare-fun b!3051731 () Bool)

(assert (=> b!3051731 (= e!1911829 call!210185)))

(declare-fun b!3051732 () Bool)

(assert (=> b!3051732 (= e!1911830 call!210184)))

(assert (= (and d!854475 (not res!1253589)) b!3051728))

(assert (= (and b!3051728 c!505775) b!3051724))

(assert (= (and b!3051728 (not c!505775)) b!3051725))

(assert (= (and b!3051724 res!1253588) b!3051732))

(assert (= (and b!3051725 c!505774) b!3051727))

(assert (= (and b!3051725 (not c!505774)) b!3051730))

(assert (= (and b!3051727 res!1253590) b!3051731))

(assert (= (and b!3051730 (not res!1253591)) b!3051729))

(assert (= (and b!3051729 res!1253587) b!3051726))

(assert (= (or b!3051727 b!3051726) bm!210179))

(assert (= (or b!3051731 b!3051729) bm!210181))

(assert (= (or b!3051732 bm!210181) bm!210180))

(declare-fun m!3378203 () Bool)

(assert (=> b!3051724 m!3378203))

(declare-fun m!3378205 () Bool)

(assert (=> bm!210179 m!3378205))

(declare-fun m!3378207 () Bool)

(assert (=> bm!210180 m!3378207))

(assert (=> start!291600 d!854475))

(declare-fun d!854477 () Bool)

(declare-fun res!1253594 () Bool)

(declare-fun e!1911838 () Bool)

(assert (=> d!854477 (=> res!1253594 e!1911838)))

(assert (=> d!854477 (= res!1253594 ((_ is ElementMatch!9459) lt!1048291))))

(assert (=> d!854477 (= (validRegex!4192 lt!1048291) e!1911838)))

(declare-fun b!3051733 () Bool)

(declare-fun e!1911835 () Bool)

(declare-fun e!1911837 () Bool)

(assert (=> b!3051733 (= e!1911835 e!1911837)))

(declare-fun res!1253593 () Bool)

(assert (=> b!3051733 (= res!1253593 (not (nullable!3105 (reg!9788 lt!1048291))))))

(assert (=> b!3051733 (=> (not res!1253593) (not e!1911837))))

(declare-fun b!3051734 () Bool)

(declare-fun e!1911833 () Bool)

(assert (=> b!3051734 (= e!1911835 e!1911833)))

(declare-fun c!505776 () Bool)

(assert (=> b!3051734 (= c!505776 ((_ is Union!9459) lt!1048291))))

(declare-fun bm!210182 () Bool)

(declare-fun call!210189 () Bool)

(assert (=> bm!210182 (= call!210189 (validRegex!4192 (ite c!505776 (regOne!19431 lt!1048291) (regTwo!19430 lt!1048291))))))

(declare-fun call!210187 () Bool)

(declare-fun bm!210183 () Bool)

(declare-fun c!505777 () Bool)

(assert (=> bm!210183 (= call!210187 (validRegex!4192 (ite c!505777 (reg!9788 lt!1048291) (ite c!505776 (regTwo!19431 lt!1048291) (regOne!19430 lt!1048291)))))))

(declare-fun b!3051735 () Bool)

(declare-fun e!1911834 () Bool)

(assert (=> b!3051735 (= e!1911834 call!210189)))

(declare-fun bm!210184 () Bool)

(declare-fun call!210188 () Bool)

(assert (=> bm!210184 (= call!210188 call!210187)))

(declare-fun b!3051736 () Bool)

(declare-fun res!1253595 () Bool)

(declare-fun e!1911836 () Bool)

(assert (=> b!3051736 (=> (not res!1253595) (not e!1911836))))

(assert (=> b!3051736 (= res!1253595 call!210189)))

(assert (=> b!3051736 (= e!1911833 e!1911836)))

(declare-fun b!3051737 () Bool)

(assert (=> b!3051737 (= e!1911838 e!1911835)))

(assert (=> b!3051737 (= c!505777 ((_ is Star!9459) lt!1048291))))

(declare-fun b!3051738 () Bool)

(declare-fun e!1911839 () Bool)

(assert (=> b!3051738 (= e!1911839 e!1911834)))

(declare-fun res!1253592 () Bool)

(assert (=> b!3051738 (=> (not res!1253592) (not e!1911834))))

(assert (=> b!3051738 (= res!1253592 call!210188)))

(declare-fun b!3051739 () Bool)

(declare-fun res!1253596 () Bool)

(assert (=> b!3051739 (=> res!1253596 e!1911839)))

(assert (=> b!3051739 (= res!1253596 (not ((_ is Concat!14780) lt!1048291)))))

(assert (=> b!3051739 (= e!1911833 e!1911839)))

(declare-fun b!3051740 () Bool)

(assert (=> b!3051740 (= e!1911836 call!210188)))

(declare-fun b!3051741 () Bool)

(assert (=> b!3051741 (= e!1911837 call!210187)))

(assert (= (and d!854477 (not res!1253594)) b!3051737))

(assert (= (and b!3051737 c!505777) b!3051733))

(assert (= (and b!3051737 (not c!505777)) b!3051734))

(assert (= (and b!3051733 res!1253593) b!3051741))

(assert (= (and b!3051734 c!505776) b!3051736))

(assert (= (and b!3051734 (not c!505776)) b!3051739))

(assert (= (and b!3051736 res!1253595) b!3051740))

(assert (= (and b!3051739 (not res!1253596)) b!3051738))

(assert (= (and b!3051738 res!1253592) b!3051735))

(assert (= (or b!3051736 b!3051735) bm!210182))

(assert (= (or b!3051740 b!3051738) bm!210184))

(assert (= (or b!3051741 bm!210184) bm!210183))

(declare-fun m!3378215 () Bool)

(assert (=> b!3051733 m!3378215))

(declare-fun m!3378217 () Bool)

(assert (=> bm!210182 m!3378217))

(declare-fun m!3378221 () Bool)

(assert (=> bm!210183 m!3378221))

(assert (=> b!3051301 d!854477))

(declare-fun b!3051742 () Bool)

(declare-fun e!1911845 () Bool)

(assert (=> b!3051742 (= e!1911845 (matchR!4341 (derivativeStep!2702 lt!1048291 (head!6761 (_2!20204 lt!1048285))) (tail!4987 (_2!20204 lt!1048285))))))

(declare-fun b!3051743 () Bool)

(declare-fun e!1911846 () Bool)

(assert (=> b!3051743 (= e!1911846 (= (head!6761 (_2!20204 lt!1048285)) (c!505655 lt!1048291)))))

(declare-fun b!3051744 () Bool)

(declare-fun e!1911840 () Bool)

(declare-fun e!1911843 () Bool)

(assert (=> b!3051744 (= e!1911840 e!1911843)))

(declare-fun res!1253603 () Bool)

(assert (=> b!3051744 (=> res!1253603 e!1911843)))

(declare-fun call!210190 () Bool)

(assert (=> b!3051744 (= res!1253603 call!210190)))

(declare-fun d!854483 () Bool)

(declare-fun e!1911841 () Bool)

(assert (=> d!854483 e!1911841))

(declare-fun c!505778 () Bool)

(assert (=> d!854483 (= c!505778 ((_ is EmptyExpr!9459) lt!1048291))))

(declare-fun lt!1048360 () Bool)

(assert (=> d!854483 (= lt!1048360 e!1911845)))

(declare-fun c!505779 () Bool)

(assert (=> d!854483 (= c!505779 (isEmpty!19511 (_2!20204 lt!1048285)))))

(assert (=> d!854483 (validRegex!4192 lt!1048291)))

(assert (=> d!854483 (= (matchR!4341 lt!1048291 (_2!20204 lt!1048285)) lt!1048360)))

(declare-fun b!3051745 () Bool)

(declare-fun res!1253602 () Bool)

(assert (=> b!3051745 (=> (not res!1253602) (not e!1911846))))

(assert (=> b!3051745 (= res!1253602 (not call!210190))))

(declare-fun b!3051746 () Bool)

(assert (=> b!3051746 (= e!1911843 (not (= (head!6761 (_2!20204 lt!1048285)) (c!505655 lt!1048291))))))

(declare-fun b!3051747 () Bool)

(assert (=> b!3051747 (= e!1911841 (= lt!1048360 call!210190))))

(declare-fun b!3051748 () Bool)

(declare-fun e!1911842 () Bool)

(assert (=> b!3051748 (= e!1911842 e!1911840)))

(declare-fun res!1253599 () Bool)

(assert (=> b!3051748 (=> (not res!1253599) (not e!1911840))))

(assert (=> b!3051748 (= res!1253599 (not lt!1048360))))

(declare-fun b!3051749 () Bool)

(assert (=> b!3051749 (= e!1911845 (nullable!3105 lt!1048291))))

(declare-fun b!3051750 () Bool)

(declare-fun res!1253598 () Bool)

(assert (=> b!3051750 (=> res!1253598 e!1911842)))

(assert (=> b!3051750 (= res!1253598 (not ((_ is ElementMatch!9459) lt!1048291)))))

(declare-fun e!1911844 () Bool)

(assert (=> b!3051750 (= e!1911844 e!1911842)))

(declare-fun b!3051751 () Bool)

(declare-fun res!1253597 () Bool)

(assert (=> b!3051751 (=> (not res!1253597) (not e!1911846))))

(assert (=> b!3051751 (= res!1253597 (isEmpty!19511 (tail!4987 (_2!20204 lt!1048285))))))

(declare-fun b!3051752 () Bool)

(declare-fun res!1253604 () Bool)

(assert (=> b!3051752 (=> res!1253604 e!1911843)))

(assert (=> b!3051752 (= res!1253604 (not (isEmpty!19511 (tail!4987 (_2!20204 lt!1048285)))))))

(declare-fun b!3051753 () Bool)

(declare-fun res!1253601 () Bool)

(assert (=> b!3051753 (=> res!1253601 e!1911842)))

(assert (=> b!3051753 (= res!1253601 e!1911846)))

(declare-fun res!1253600 () Bool)

(assert (=> b!3051753 (=> (not res!1253600) (not e!1911846))))

(assert (=> b!3051753 (= res!1253600 lt!1048360)))

(declare-fun bm!210185 () Bool)

(assert (=> bm!210185 (= call!210190 (isEmpty!19511 (_2!20204 lt!1048285)))))

(declare-fun b!3051754 () Bool)

(assert (=> b!3051754 (= e!1911841 e!1911844)))

(declare-fun c!505780 () Bool)

(assert (=> b!3051754 (= c!505780 ((_ is EmptyLang!9459) lt!1048291))))

(declare-fun b!3051755 () Bool)

(assert (=> b!3051755 (= e!1911844 (not lt!1048360))))

(assert (= (and d!854483 c!505779) b!3051749))

(assert (= (and d!854483 (not c!505779)) b!3051742))

(assert (= (and d!854483 c!505778) b!3051747))

(assert (= (and d!854483 (not c!505778)) b!3051754))

(assert (= (and b!3051754 c!505780) b!3051755))

(assert (= (and b!3051754 (not c!505780)) b!3051750))

(assert (= (and b!3051750 (not res!1253598)) b!3051753))

(assert (= (and b!3051753 res!1253600) b!3051745))

(assert (= (and b!3051745 res!1253602) b!3051751))

(assert (= (and b!3051751 res!1253597) b!3051743))

(assert (= (and b!3051753 (not res!1253601)) b!3051748))

(assert (= (and b!3051748 res!1253599) b!3051744))

(assert (= (and b!3051744 (not res!1253603)) b!3051752))

(assert (= (and b!3051752 (not res!1253604)) b!3051746))

(assert (= (or b!3051747 b!3051744 b!3051745) bm!210185))

(declare-fun m!3378223 () Bool)

(assert (=> b!3051752 m!3378223))

(assert (=> b!3051752 m!3378223))

(declare-fun m!3378225 () Bool)

(assert (=> b!3051752 m!3378225))

(declare-fun m!3378227 () Bool)

(assert (=> d!854483 m!3378227))

(assert (=> d!854483 m!3378015))

(assert (=> b!3051751 m!3378223))

(assert (=> b!3051751 m!3378223))

(assert (=> b!3051751 m!3378225))

(declare-fun m!3378229 () Bool)

(assert (=> b!3051746 m!3378229))

(declare-fun m!3378231 () Bool)

(assert (=> b!3051749 m!3378231))

(assert (=> b!3051742 m!3378229))

(assert (=> b!3051742 m!3378229))

(declare-fun m!3378233 () Bool)

(assert (=> b!3051742 m!3378233))

(assert (=> b!3051742 m!3378223))

(assert (=> b!3051742 m!3378233))

(assert (=> b!3051742 m!3378223))

(declare-fun m!3378235 () Bool)

(assert (=> b!3051742 m!3378235))

(assert (=> b!3051743 m!3378229))

(assert (=> bm!210185 m!3378227))

(assert (=> b!3051290 d!854483))

(declare-fun b!3051756 () Bool)

(declare-fun e!1911852 () Bool)

(assert (=> b!3051756 (= e!1911852 (matchR!4341 (derivativeStep!2702 lt!1048286 (head!6761 (_2!20204 lt!1048285))) (tail!4987 (_2!20204 lt!1048285))))))

(declare-fun b!3051757 () Bool)

(declare-fun e!1911853 () Bool)

(assert (=> b!3051757 (= e!1911853 (= (head!6761 (_2!20204 lt!1048285)) (c!505655 lt!1048286)))))

(declare-fun b!3051758 () Bool)

(declare-fun e!1911847 () Bool)

(declare-fun e!1911850 () Bool)

(assert (=> b!3051758 (= e!1911847 e!1911850)))

(declare-fun res!1253611 () Bool)

(assert (=> b!3051758 (=> res!1253611 e!1911850)))

(declare-fun call!210191 () Bool)

(assert (=> b!3051758 (= res!1253611 call!210191)))

(declare-fun d!854485 () Bool)

(declare-fun e!1911848 () Bool)

(assert (=> d!854485 e!1911848))

(declare-fun c!505781 () Bool)

(assert (=> d!854485 (= c!505781 ((_ is EmptyExpr!9459) lt!1048286))))

(declare-fun lt!1048361 () Bool)

(assert (=> d!854485 (= lt!1048361 e!1911852)))

(declare-fun c!505782 () Bool)

(assert (=> d!854485 (= c!505782 (isEmpty!19511 (_2!20204 lt!1048285)))))

(assert (=> d!854485 (validRegex!4192 lt!1048286)))

(assert (=> d!854485 (= (matchR!4341 lt!1048286 (_2!20204 lt!1048285)) lt!1048361)))

(declare-fun b!3051759 () Bool)

(declare-fun res!1253610 () Bool)

(assert (=> b!3051759 (=> (not res!1253610) (not e!1911853))))

(assert (=> b!3051759 (= res!1253610 (not call!210191))))

(declare-fun b!3051760 () Bool)

(assert (=> b!3051760 (= e!1911850 (not (= (head!6761 (_2!20204 lt!1048285)) (c!505655 lt!1048286))))))

(declare-fun b!3051761 () Bool)

(assert (=> b!3051761 (= e!1911848 (= lt!1048361 call!210191))))

(declare-fun b!3051762 () Bool)

(declare-fun e!1911849 () Bool)

(assert (=> b!3051762 (= e!1911849 e!1911847)))

(declare-fun res!1253607 () Bool)

(assert (=> b!3051762 (=> (not res!1253607) (not e!1911847))))

(assert (=> b!3051762 (= res!1253607 (not lt!1048361))))

(declare-fun b!3051763 () Bool)

(assert (=> b!3051763 (= e!1911852 (nullable!3105 lt!1048286))))

(declare-fun b!3051764 () Bool)

(declare-fun res!1253606 () Bool)

(assert (=> b!3051764 (=> res!1253606 e!1911849)))

(assert (=> b!3051764 (= res!1253606 (not ((_ is ElementMatch!9459) lt!1048286)))))

(declare-fun e!1911851 () Bool)

(assert (=> b!3051764 (= e!1911851 e!1911849)))

(declare-fun b!3051765 () Bool)

(declare-fun res!1253605 () Bool)

(assert (=> b!3051765 (=> (not res!1253605) (not e!1911853))))

(assert (=> b!3051765 (= res!1253605 (isEmpty!19511 (tail!4987 (_2!20204 lt!1048285))))))

(declare-fun b!3051766 () Bool)

(declare-fun res!1253612 () Bool)

(assert (=> b!3051766 (=> res!1253612 e!1911850)))

(assert (=> b!3051766 (= res!1253612 (not (isEmpty!19511 (tail!4987 (_2!20204 lt!1048285)))))))

(declare-fun b!3051767 () Bool)

(declare-fun res!1253609 () Bool)

(assert (=> b!3051767 (=> res!1253609 e!1911849)))

(assert (=> b!3051767 (= res!1253609 e!1911853)))

(declare-fun res!1253608 () Bool)

(assert (=> b!3051767 (=> (not res!1253608) (not e!1911853))))

(assert (=> b!3051767 (= res!1253608 lt!1048361)))

(declare-fun bm!210186 () Bool)

(assert (=> bm!210186 (= call!210191 (isEmpty!19511 (_2!20204 lt!1048285)))))

(declare-fun b!3051768 () Bool)

(assert (=> b!3051768 (= e!1911848 e!1911851)))

(declare-fun c!505783 () Bool)

(assert (=> b!3051768 (= c!505783 ((_ is EmptyLang!9459) lt!1048286))))

(declare-fun b!3051769 () Bool)

(assert (=> b!3051769 (= e!1911851 (not lt!1048361))))

(assert (= (and d!854485 c!505782) b!3051763))

(assert (= (and d!854485 (not c!505782)) b!3051756))

(assert (= (and d!854485 c!505781) b!3051761))

(assert (= (and d!854485 (not c!505781)) b!3051768))

(assert (= (and b!3051768 c!505783) b!3051769))

(assert (= (and b!3051768 (not c!505783)) b!3051764))

(assert (= (and b!3051764 (not res!1253606)) b!3051767))

(assert (= (and b!3051767 res!1253608) b!3051759))

(assert (= (and b!3051759 res!1253610) b!3051765))

(assert (= (and b!3051765 res!1253605) b!3051757))

(assert (= (and b!3051767 (not res!1253609)) b!3051762))

(assert (= (and b!3051762 res!1253607) b!3051758))

(assert (= (and b!3051758 (not res!1253611)) b!3051766))

(assert (= (and b!3051766 (not res!1253612)) b!3051760))

(assert (= (or b!3051761 b!3051758 b!3051759) bm!210186))

(assert (=> b!3051766 m!3378223))

(assert (=> b!3051766 m!3378223))

(assert (=> b!3051766 m!3378225))

(assert (=> d!854485 m!3378227))

(declare-fun m!3378237 () Bool)

(assert (=> d!854485 m!3378237))

(assert (=> b!3051765 m!3378223))

(assert (=> b!3051765 m!3378223))

(assert (=> b!3051765 m!3378225))

(assert (=> b!3051760 m!3378229))

(declare-fun m!3378239 () Bool)

(assert (=> b!3051763 m!3378239))

(assert (=> b!3051756 m!3378229))

(assert (=> b!3051756 m!3378229))

(declare-fun m!3378241 () Bool)

(assert (=> b!3051756 m!3378241))

(assert (=> b!3051756 m!3378223))

(assert (=> b!3051756 m!3378241))

(assert (=> b!3051756 m!3378223))

(declare-fun m!3378243 () Bool)

(assert (=> b!3051756 m!3378243))

(assert (=> b!3051757 m!3378229))

(assert (=> bm!210186 m!3378227))

(assert (=> b!3051300 d!854485))

(declare-fun b!3051770 () Bool)

(declare-fun e!1911859 () Bool)

(assert (=> b!3051770 (= e!1911859 (matchR!4341 (derivativeStep!2702 lt!1048288 (head!6761 (_1!20204 lt!1048285))) (tail!4987 (_1!20204 lt!1048285))))))

(declare-fun b!3051771 () Bool)

(declare-fun e!1911860 () Bool)

(assert (=> b!3051771 (= e!1911860 (= (head!6761 (_1!20204 lt!1048285)) (c!505655 lt!1048288)))))

(declare-fun b!3051772 () Bool)

(declare-fun e!1911854 () Bool)

(declare-fun e!1911857 () Bool)

(assert (=> b!3051772 (= e!1911854 e!1911857)))

(declare-fun res!1253619 () Bool)

(assert (=> b!3051772 (=> res!1253619 e!1911857)))

(declare-fun call!210192 () Bool)

(assert (=> b!3051772 (= res!1253619 call!210192)))

(declare-fun d!854487 () Bool)

(declare-fun e!1911855 () Bool)

(assert (=> d!854487 e!1911855))

(declare-fun c!505784 () Bool)

(assert (=> d!854487 (= c!505784 ((_ is EmptyExpr!9459) lt!1048288))))

(declare-fun lt!1048362 () Bool)

(assert (=> d!854487 (= lt!1048362 e!1911859)))

(declare-fun c!505785 () Bool)

(assert (=> d!854487 (= c!505785 (isEmpty!19511 (_1!20204 lt!1048285)))))

(assert (=> d!854487 (validRegex!4192 lt!1048288)))

(assert (=> d!854487 (= (matchR!4341 lt!1048288 (_1!20204 lt!1048285)) lt!1048362)))

(declare-fun b!3051773 () Bool)

(declare-fun res!1253618 () Bool)

(assert (=> b!3051773 (=> (not res!1253618) (not e!1911860))))

(assert (=> b!3051773 (= res!1253618 (not call!210192))))

(declare-fun b!3051774 () Bool)

(assert (=> b!3051774 (= e!1911857 (not (= (head!6761 (_1!20204 lt!1048285)) (c!505655 lt!1048288))))))

(declare-fun b!3051775 () Bool)

(assert (=> b!3051775 (= e!1911855 (= lt!1048362 call!210192))))

(declare-fun b!3051776 () Bool)

(declare-fun e!1911856 () Bool)

(assert (=> b!3051776 (= e!1911856 e!1911854)))

(declare-fun res!1253615 () Bool)

(assert (=> b!3051776 (=> (not res!1253615) (not e!1911854))))

(assert (=> b!3051776 (= res!1253615 (not lt!1048362))))

(declare-fun b!3051777 () Bool)

(assert (=> b!3051777 (= e!1911859 (nullable!3105 lt!1048288))))

(declare-fun b!3051778 () Bool)

(declare-fun res!1253614 () Bool)

(assert (=> b!3051778 (=> res!1253614 e!1911856)))

(assert (=> b!3051778 (= res!1253614 (not ((_ is ElementMatch!9459) lt!1048288)))))

(declare-fun e!1911858 () Bool)

(assert (=> b!3051778 (= e!1911858 e!1911856)))

(declare-fun b!3051779 () Bool)

(declare-fun res!1253613 () Bool)

(assert (=> b!3051779 (=> (not res!1253613) (not e!1911860))))

(assert (=> b!3051779 (= res!1253613 (isEmpty!19511 (tail!4987 (_1!20204 lt!1048285))))))

(declare-fun b!3051780 () Bool)

(declare-fun res!1253620 () Bool)

(assert (=> b!3051780 (=> res!1253620 e!1911857)))

(assert (=> b!3051780 (= res!1253620 (not (isEmpty!19511 (tail!4987 (_1!20204 lt!1048285)))))))

(declare-fun b!3051781 () Bool)

(declare-fun res!1253617 () Bool)

(assert (=> b!3051781 (=> res!1253617 e!1911856)))

(assert (=> b!3051781 (= res!1253617 e!1911860)))

(declare-fun res!1253616 () Bool)

(assert (=> b!3051781 (=> (not res!1253616) (not e!1911860))))

(assert (=> b!3051781 (= res!1253616 lt!1048362)))

(declare-fun bm!210187 () Bool)

(assert (=> bm!210187 (= call!210192 (isEmpty!19511 (_1!20204 lt!1048285)))))

(declare-fun b!3051782 () Bool)

(assert (=> b!3051782 (= e!1911855 e!1911858)))

(declare-fun c!505786 () Bool)

(assert (=> b!3051782 (= c!505786 ((_ is EmptyLang!9459) lt!1048288))))

(declare-fun b!3051783 () Bool)

(assert (=> b!3051783 (= e!1911858 (not lt!1048362))))

(assert (= (and d!854487 c!505785) b!3051777))

(assert (= (and d!854487 (not c!505785)) b!3051770))

(assert (= (and d!854487 c!505784) b!3051775))

(assert (= (and d!854487 (not c!505784)) b!3051782))

(assert (= (and b!3051782 c!505786) b!3051783))

(assert (= (and b!3051782 (not c!505786)) b!3051778))

(assert (= (and b!3051778 (not res!1253614)) b!3051781))

(assert (= (and b!3051781 res!1253616) b!3051773))

(assert (= (and b!3051773 res!1253618) b!3051779))

(assert (= (and b!3051779 res!1253613) b!3051771))

(assert (= (and b!3051781 (not res!1253617)) b!3051776))

(assert (= (and b!3051776 res!1253615) b!3051772))

(assert (= (and b!3051772 (not res!1253619)) b!3051780))

(assert (= (and b!3051780 (not res!1253620)) b!3051774))

(assert (= (or b!3051775 b!3051772 b!3051773) bm!210187))

(declare-fun m!3378245 () Bool)

(assert (=> b!3051780 m!3378245))

(assert (=> b!3051780 m!3378245))

(declare-fun m!3378247 () Bool)

(assert (=> b!3051780 m!3378247))

(declare-fun m!3378249 () Bool)

(assert (=> d!854487 m!3378249))

(declare-fun m!3378251 () Bool)

(assert (=> d!854487 m!3378251))

(assert (=> b!3051779 m!3378245))

(assert (=> b!3051779 m!3378245))

(assert (=> b!3051779 m!3378247))

(declare-fun m!3378253 () Bool)

(assert (=> b!3051774 m!3378253))

(declare-fun m!3378255 () Bool)

(assert (=> b!3051777 m!3378255))

(assert (=> b!3051770 m!3378253))

(assert (=> b!3051770 m!3378253))

(declare-fun m!3378257 () Bool)

(assert (=> b!3051770 m!3378257))

(assert (=> b!3051770 m!3378245))

(assert (=> b!3051770 m!3378257))

(assert (=> b!3051770 m!3378245))

(declare-fun m!3378259 () Bool)

(assert (=> b!3051770 m!3378259))

(assert (=> b!3051771 m!3378253))

(assert (=> bm!210187 m!3378249))

(assert (=> b!3051294 d!854487))

(declare-fun d!854489 () Bool)

(assert (=> d!854489 (= (matchR!4341 lt!1048286 (_2!20204 lt!1048285)) (matchR!4341 (simplify!414 lt!1048286) (_2!20204 lt!1048285)))))

(declare-fun lt!1048370 () Unit!49351)

(declare-fun choose!18077 (Regex!9459 List!35324) Unit!49351)

(assert (=> d!854489 (= lt!1048370 (choose!18077 lt!1048286 (_2!20204 lt!1048285)))))

(assert (=> d!854489 (validRegex!4192 lt!1048286)))

(assert (=> d!854489 (= (lemmaSimplifySound!260 lt!1048286 (_2!20204 lt!1048285)) lt!1048370)))

(declare-fun bs!532312 () Bool)

(assert (= bs!532312 d!854489))

(assert (=> bs!532312 m!3377995))

(declare-fun m!3378281 () Bool)

(assert (=> bs!532312 m!3378281))

(assert (=> bs!532312 m!3378005))

(declare-fun m!3378283 () Bool)

(assert (=> bs!532312 m!3378283))

(assert (=> bs!532312 m!3377995))

(assert (=> bs!532312 m!3378237))

(assert (=> b!3051294 d!854489))

(declare-fun d!854499 () Bool)

(assert (=> d!854499 (= (matchR!4341 (reg!9788 r!17423) (_1!20204 lt!1048285)) (matchR!4341 (simplify!414 (reg!9788 r!17423)) (_1!20204 lt!1048285)))))

(declare-fun lt!1048371 () Unit!49351)

(assert (=> d!854499 (= lt!1048371 (choose!18077 (reg!9788 r!17423) (_1!20204 lt!1048285)))))

(assert (=> d!854499 (validRegex!4192 (reg!9788 r!17423))))

(assert (=> d!854499 (= (lemmaSimplifySound!260 (reg!9788 r!17423) (_1!20204 lt!1048285)) lt!1048371)))

(declare-fun bs!532313 () Bool)

(assert (= bs!532313 d!854499))

(assert (=> bs!532313 m!3377989))

(declare-fun m!3378285 () Bool)

(assert (=> bs!532313 m!3378285))

(assert (=> bs!532313 m!3378011))

(declare-fun m!3378287 () Bool)

(assert (=> bs!532313 m!3378287))

(assert (=> bs!532313 m!3377989))

(assert (=> bs!532313 m!3378057))

(assert (=> b!3051294 d!854499))

(declare-fun b!3051896 () Bool)

(declare-fun e!1911919 () Regex!9459)

(declare-fun e!1911917 () Regex!9459)

(assert (=> b!3051896 (= e!1911919 e!1911917)))

(declare-fun c!505823 () Bool)

(assert (=> b!3051896 (= c!505823 ((_ is Star!9459) (reg!9788 r!17423)))))

(declare-fun b!3051897 () Bool)

(declare-fun c!505816 () Bool)

(declare-fun call!210216 () Bool)

(assert (=> b!3051897 (= c!505816 call!210216)))

(declare-fun e!1911923 () Regex!9459)

(declare-fun e!1911926 () Regex!9459)

(assert (=> b!3051897 (= e!1911923 e!1911926)))

(declare-fun b!3051898 () Bool)

(declare-fun e!1911922 () Regex!9459)

(declare-fun lt!1048387 () Regex!9459)

(assert (=> b!3051898 (= e!1911922 lt!1048387)))

(declare-fun b!3051899 () Bool)

(declare-fun c!505821 () Bool)

(declare-fun call!210214 () Bool)

(assert (=> b!3051899 (= c!505821 call!210214)))

(declare-fun e!1911915 () Regex!9459)

(assert (=> b!3051899 (= e!1911922 e!1911915)))

(declare-fun b!3051900 () Bool)

(declare-fun lt!1048388 () Regex!9459)

(assert (=> b!3051900 (= e!1911915 lt!1048388)))

(declare-fun bm!210206 () Bool)

(declare-fun call!210215 () Regex!9459)

(declare-fun c!505824 () Bool)

(assert (=> bm!210206 (= call!210215 (simplify!414 (ite c!505823 (reg!9788 (reg!9788 r!17423)) (ite c!505824 (regTwo!19431 (reg!9788 r!17423)) (regOne!19430 (reg!9788 r!17423))))))))

(declare-fun bm!210207 () Bool)

(declare-fun lt!1048389 () Regex!9459)

(declare-fun isEmptyLang!510 (Regex!9459) Bool)

(assert (=> bm!210207 (= call!210214 (isEmptyLang!510 (ite c!505824 lt!1048387 lt!1048389)))))

(declare-fun bm!210208 () Bool)

(declare-fun call!210211 () Regex!9459)

(assert (=> bm!210208 (= call!210211 call!210215)))

(declare-fun b!3051901 () Bool)

(declare-fun e!1911928 () Bool)

(assert (=> b!3051901 (= e!1911928 call!210216)))

(declare-fun b!3051902 () Bool)

(declare-fun e!1911920 () Regex!9459)

(assert (=> b!3051902 (= e!1911920 (reg!9788 r!17423))))

(declare-fun b!3051903 () Bool)

(declare-fun e!1911927 () Bool)

(declare-fun call!210212 () Bool)

(assert (=> b!3051903 (= e!1911927 call!210212)))

(declare-fun b!3051904 () Bool)

(declare-fun c!505822 () Bool)

(assert (=> b!3051904 (= c!505822 ((_ is EmptyExpr!9459) (reg!9788 r!17423)))))

(assert (=> b!3051904 (= e!1911920 e!1911919)))

(declare-fun b!3051905 () Bool)

(assert (=> b!3051905 (= e!1911915 (Union!9459 lt!1048388 lt!1048387))))

(declare-fun b!3051906 () Bool)

(declare-fun e!1911925 () Bool)

(declare-fun lt!1048386 () Regex!9459)

(assert (=> b!3051906 (= e!1911925 (= (nullable!3105 lt!1048386) (nullable!3105 (reg!9788 r!17423))))))

(declare-fun b!3051907 () Bool)

(declare-fun e!1911924 () Regex!9459)

(assert (=> b!3051907 (= e!1911924 EmptyLang!9459)))

(declare-fun d!854501 () Bool)

(assert (=> d!854501 e!1911925))

(declare-fun res!1253645 () Bool)

(assert (=> d!854501 (=> (not res!1253645) (not e!1911925))))

(assert (=> d!854501 (= res!1253645 (validRegex!4192 lt!1048386))))

(assert (=> d!854501 (= lt!1048386 e!1911924)))

(declare-fun c!505818 () Bool)

(assert (=> d!854501 (= c!505818 ((_ is EmptyLang!9459) (reg!9788 r!17423)))))

(assert (=> d!854501 (validRegex!4192 (reg!9788 r!17423))))

(assert (=> d!854501 (= (simplify!414 (reg!9788 r!17423)) lt!1048386)))

(declare-fun b!3051908 () Bool)

(declare-fun e!1911921 () Regex!9459)

(assert (=> b!3051908 (= e!1911921 EmptyExpr!9459)))

(declare-fun b!3051909 () Bool)

(declare-fun e!1911916 () Regex!9459)

(declare-fun lt!1048384 () Regex!9459)

(assert (=> b!3051909 (= e!1911916 (Concat!14780 lt!1048389 lt!1048384))))

(declare-fun b!3051910 () Bool)

(declare-fun e!1911918 () Regex!9459)

(assert (=> b!3051910 (= e!1911918 e!1911923)))

(assert (=> b!3051910 (= lt!1048389 call!210211)))

(declare-fun call!210213 () Regex!9459)

(assert (=> b!3051910 (= lt!1048384 call!210213)))

(declare-fun res!1253646 () Bool)

(assert (=> b!3051910 (= res!1253646 call!210214)))

(assert (=> b!3051910 (=> res!1253646 e!1911927)))

(declare-fun c!505817 () Bool)

(assert (=> b!3051910 (= c!505817 e!1911927)))

(declare-fun b!3051911 () Bool)

(assert (=> b!3051911 (= e!1911923 EmptyLang!9459)))

(declare-fun bm!210209 () Bool)

(declare-fun call!210217 () Bool)

(assert (=> bm!210209 (= call!210212 call!210217)))

(declare-fun b!3051912 () Bool)

(assert (=> b!3051912 (= e!1911918 e!1911922)))

(assert (=> b!3051912 (= lt!1048388 call!210213)))

(assert (=> b!3051912 (= lt!1048387 call!210211)))

(declare-fun c!505820 () Bool)

(assert (=> b!3051912 (= c!505820 call!210212)))

(declare-fun b!3051913 () Bool)

(assert (=> b!3051913 (= e!1911926 e!1911916)))

(declare-fun c!505814 () Bool)

(declare-fun isEmptyExpr!516 (Regex!9459) Bool)

(assert (=> b!3051913 (= c!505814 (isEmptyExpr!516 lt!1048384))))

(declare-fun lt!1048385 () Regex!9459)

(declare-fun bm!210210 () Bool)

(assert (=> bm!210210 (= call!210217 (isEmptyLang!510 (ite c!505823 lt!1048385 (ite c!505824 lt!1048388 lt!1048384))))))

(declare-fun b!3051914 () Bool)

(declare-fun c!505819 () Bool)

(assert (=> b!3051914 (= c!505819 e!1911928)))

(declare-fun res!1253644 () Bool)

(assert (=> b!3051914 (=> res!1253644 e!1911928)))

(assert (=> b!3051914 (= res!1253644 call!210217)))

(assert (=> b!3051914 (= lt!1048385 call!210215)))

(assert (=> b!3051914 (= e!1911917 e!1911921)))

(declare-fun bm!210211 () Bool)

(assert (=> bm!210211 (= call!210213 (simplify!414 (ite c!505824 (regOne!19431 (reg!9788 r!17423)) (regTwo!19430 (reg!9788 r!17423)))))))

(declare-fun b!3051915 () Bool)

(assert (=> b!3051915 (= e!1911921 (Star!9459 lt!1048385))))

(declare-fun b!3051916 () Bool)

(assert (=> b!3051916 (= e!1911919 EmptyExpr!9459)))

(declare-fun bm!210212 () Bool)

(assert (=> bm!210212 (= call!210216 (isEmptyExpr!516 (ite c!505823 lt!1048385 lt!1048389)))))

(declare-fun b!3051917 () Bool)

(assert (=> b!3051917 (= e!1911926 lt!1048384)))

(declare-fun b!3051918 () Bool)

(assert (=> b!3051918 (= e!1911916 lt!1048389)))

(declare-fun b!3051919 () Bool)

(assert (=> b!3051919 (= e!1911924 e!1911920)))

(declare-fun c!505815 () Bool)

(assert (=> b!3051919 (= c!505815 ((_ is ElementMatch!9459) (reg!9788 r!17423)))))

(declare-fun b!3051920 () Bool)

(assert (=> b!3051920 (= c!505824 ((_ is Union!9459) (reg!9788 r!17423)))))

(assert (=> b!3051920 (= e!1911917 e!1911918)))

(assert (= (and d!854501 c!505818) b!3051907))

(assert (= (and d!854501 (not c!505818)) b!3051919))

(assert (= (and b!3051919 c!505815) b!3051902))

(assert (= (and b!3051919 (not c!505815)) b!3051904))

(assert (= (and b!3051904 c!505822) b!3051916))

(assert (= (and b!3051904 (not c!505822)) b!3051896))

(assert (= (and b!3051896 c!505823) b!3051914))

(assert (= (and b!3051896 (not c!505823)) b!3051920))

(assert (= (and b!3051914 (not res!1253644)) b!3051901))

(assert (= (and b!3051914 c!505819) b!3051908))

(assert (= (and b!3051914 (not c!505819)) b!3051915))

(assert (= (and b!3051920 c!505824) b!3051912))

(assert (= (and b!3051920 (not c!505824)) b!3051910))

(assert (= (and b!3051912 c!505820) b!3051898))

(assert (= (and b!3051912 (not c!505820)) b!3051899))

(assert (= (and b!3051899 c!505821) b!3051900))

(assert (= (and b!3051899 (not c!505821)) b!3051905))

(assert (= (and b!3051910 (not res!1253646)) b!3051903))

(assert (= (and b!3051910 c!505817) b!3051911))

(assert (= (and b!3051910 (not c!505817)) b!3051897))

(assert (= (and b!3051897 c!505816) b!3051917))

(assert (= (and b!3051897 (not c!505816)) b!3051913))

(assert (= (and b!3051913 c!505814) b!3051918))

(assert (= (and b!3051913 (not c!505814)) b!3051909))

(assert (= (or b!3051912 b!3051910) bm!210211))

(assert (= (or b!3051912 b!3051910) bm!210208))

(assert (= (or b!3051899 b!3051910) bm!210207))

(assert (= (or b!3051912 b!3051903) bm!210209))

(assert (= (or b!3051901 b!3051897) bm!210212))

(assert (= (or b!3051914 bm!210208) bm!210206))

(assert (= (or b!3051914 bm!210209) bm!210210))

(assert (= (and d!854501 res!1253645) b!3051906))

(declare-fun m!3378289 () Bool)

(assert (=> b!3051913 m!3378289))

(declare-fun m!3378291 () Bool)

(assert (=> bm!210210 m!3378291))

(declare-fun m!3378293 () Bool)

(assert (=> bm!210207 m!3378293))

(declare-fun m!3378295 () Bool)

(assert (=> b!3051906 m!3378295))

(assert (=> b!3051906 m!3378203))

(declare-fun m!3378297 () Bool)

(assert (=> bm!210211 m!3378297))

(declare-fun m!3378299 () Bool)

(assert (=> d!854501 m!3378299))

(assert (=> d!854501 m!3378057))

(declare-fun m!3378301 () Bool)

(assert (=> bm!210206 m!3378301))

(declare-fun m!3378303 () Bool)

(assert (=> bm!210212 m!3378303))

(assert (=> b!3051294 d!854501))

(declare-fun b!3051921 () Bool)

(declare-fun e!1911934 () Bool)

(assert (=> b!3051921 (= e!1911934 (matchR!4341 (derivativeStep!2702 lt!1048292 (head!6761 (_2!20204 lt!1048285))) (tail!4987 (_2!20204 lt!1048285))))))

(declare-fun b!3051922 () Bool)

(declare-fun e!1911935 () Bool)

(assert (=> b!3051922 (= e!1911935 (= (head!6761 (_2!20204 lt!1048285)) (c!505655 lt!1048292)))))

(declare-fun b!3051923 () Bool)

(declare-fun e!1911929 () Bool)

(declare-fun e!1911932 () Bool)

(assert (=> b!3051923 (= e!1911929 e!1911932)))

(declare-fun res!1253653 () Bool)

(assert (=> b!3051923 (=> res!1253653 e!1911932)))

(declare-fun call!210218 () Bool)

(assert (=> b!3051923 (= res!1253653 call!210218)))

(declare-fun d!854503 () Bool)

(declare-fun e!1911930 () Bool)

(assert (=> d!854503 e!1911930))

(declare-fun c!505825 () Bool)

(assert (=> d!854503 (= c!505825 ((_ is EmptyExpr!9459) lt!1048292))))

(declare-fun lt!1048390 () Bool)

(assert (=> d!854503 (= lt!1048390 e!1911934)))

(declare-fun c!505826 () Bool)

(assert (=> d!854503 (= c!505826 (isEmpty!19511 (_2!20204 lt!1048285)))))

(assert (=> d!854503 (validRegex!4192 lt!1048292)))

(assert (=> d!854503 (= (matchR!4341 lt!1048292 (_2!20204 lt!1048285)) lt!1048390)))

(declare-fun b!3051924 () Bool)

(declare-fun res!1253652 () Bool)

(assert (=> b!3051924 (=> (not res!1253652) (not e!1911935))))

(assert (=> b!3051924 (= res!1253652 (not call!210218))))

(declare-fun b!3051925 () Bool)

(assert (=> b!3051925 (= e!1911932 (not (= (head!6761 (_2!20204 lt!1048285)) (c!505655 lt!1048292))))))

(declare-fun b!3051926 () Bool)

(assert (=> b!3051926 (= e!1911930 (= lt!1048390 call!210218))))

(declare-fun b!3051927 () Bool)

(declare-fun e!1911931 () Bool)

(assert (=> b!3051927 (= e!1911931 e!1911929)))

(declare-fun res!1253649 () Bool)

(assert (=> b!3051927 (=> (not res!1253649) (not e!1911929))))

(assert (=> b!3051927 (= res!1253649 (not lt!1048390))))

(declare-fun b!3051928 () Bool)

(assert (=> b!3051928 (= e!1911934 (nullable!3105 lt!1048292))))

(declare-fun b!3051929 () Bool)

(declare-fun res!1253648 () Bool)

(assert (=> b!3051929 (=> res!1253648 e!1911931)))

(assert (=> b!3051929 (= res!1253648 (not ((_ is ElementMatch!9459) lt!1048292)))))

(declare-fun e!1911933 () Bool)

(assert (=> b!3051929 (= e!1911933 e!1911931)))

(declare-fun b!3051930 () Bool)

(declare-fun res!1253647 () Bool)

(assert (=> b!3051930 (=> (not res!1253647) (not e!1911935))))

(assert (=> b!3051930 (= res!1253647 (isEmpty!19511 (tail!4987 (_2!20204 lt!1048285))))))

(declare-fun b!3051931 () Bool)

(declare-fun res!1253654 () Bool)

(assert (=> b!3051931 (=> res!1253654 e!1911932)))

(assert (=> b!3051931 (= res!1253654 (not (isEmpty!19511 (tail!4987 (_2!20204 lt!1048285)))))))

(declare-fun b!3051932 () Bool)

(declare-fun res!1253651 () Bool)

(assert (=> b!3051932 (=> res!1253651 e!1911931)))

(assert (=> b!3051932 (= res!1253651 e!1911935)))

(declare-fun res!1253650 () Bool)

(assert (=> b!3051932 (=> (not res!1253650) (not e!1911935))))

(assert (=> b!3051932 (= res!1253650 lt!1048390)))

(declare-fun bm!210213 () Bool)

(assert (=> bm!210213 (= call!210218 (isEmpty!19511 (_2!20204 lt!1048285)))))

(declare-fun b!3051933 () Bool)

(assert (=> b!3051933 (= e!1911930 e!1911933)))

(declare-fun c!505827 () Bool)

(assert (=> b!3051933 (= c!505827 ((_ is EmptyLang!9459) lt!1048292))))

(declare-fun b!3051934 () Bool)

(assert (=> b!3051934 (= e!1911933 (not lt!1048390))))

(assert (= (and d!854503 c!505826) b!3051928))

(assert (= (and d!854503 (not c!505826)) b!3051921))

(assert (= (and d!854503 c!505825) b!3051926))

(assert (= (and d!854503 (not c!505825)) b!3051933))

(assert (= (and b!3051933 c!505827) b!3051934))

(assert (= (and b!3051933 (not c!505827)) b!3051929))

(assert (= (and b!3051929 (not res!1253648)) b!3051932))

(assert (= (and b!3051932 res!1253650) b!3051924))

(assert (= (and b!3051924 res!1253652) b!3051930))

(assert (= (and b!3051930 res!1253647) b!3051922))

(assert (= (and b!3051932 (not res!1253651)) b!3051927))

(assert (= (and b!3051927 res!1253649) b!3051923))

(assert (= (and b!3051923 (not res!1253653)) b!3051931))

(assert (= (and b!3051931 (not res!1253654)) b!3051925))

(assert (= (or b!3051926 b!3051923 b!3051924) bm!210213))

(assert (=> b!3051931 m!3378223))

(assert (=> b!3051931 m!3378223))

(assert (=> b!3051931 m!3378225))

(assert (=> d!854503 m!3378227))

(declare-fun m!3378305 () Bool)

(assert (=> d!854503 m!3378305))

(assert (=> b!3051930 m!3378223))

(assert (=> b!3051930 m!3378223))

(assert (=> b!3051930 m!3378225))

(assert (=> b!3051925 m!3378229))

(declare-fun m!3378307 () Bool)

(assert (=> b!3051928 m!3378307))

(assert (=> b!3051921 m!3378229))

(assert (=> b!3051921 m!3378229))

(declare-fun m!3378309 () Bool)

(assert (=> b!3051921 m!3378309))

(assert (=> b!3051921 m!3378223))

(assert (=> b!3051921 m!3378309))

(assert (=> b!3051921 m!3378223))

(declare-fun m!3378311 () Bool)

(assert (=> b!3051921 m!3378311))

(assert (=> b!3051922 m!3378229))

(assert (=> bm!210213 m!3378227))

(assert (=> b!3051294 d!854503))

(declare-fun d!854505 () Bool)

(declare-fun lt!1048393 () Int)

(assert (=> d!854505 (>= lt!1048393 0)))

(declare-fun e!1911938 () Int)

(assert (=> d!854505 (= lt!1048393 e!1911938)))

(declare-fun c!505830 () Bool)

(assert (=> d!854505 (= c!505830 ((_ is Nil!35200) s!11993))))

(assert (=> d!854505 (= (size!26543 s!11993) lt!1048393)))

(declare-fun b!3051939 () Bool)

(assert (=> b!3051939 (= e!1911938 0)))

(declare-fun b!3051940 () Bool)

(assert (=> b!3051940 (= e!1911938 (+ 1 (size!26543 (t!234389 s!11993))))))

(assert (= (and d!854505 c!505830) b!3051939))

(assert (= (and d!854505 (not c!505830)) b!3051940))

(declare-fun m!3378313 () Bool)

(assert (=> b!3051940 m!3378313))

(assert (=> b!3051294 d!854505))

(declare-fun d!854507 () Bool)

(declare-fun lt!1048394 () Int)

(assert (=> d!854507 (>= lt!1048394 0)))

(declare-fun e!1911939 () Int)

(assert (=> d!854507 (= lt!1048394 e!1911939)))

(declare-fun c!505831 () Bool)

(assert (=> d!854507 (= c!505831 ((_ is Nil!35200) (_2!20204 lt!1048285)))))

(assert (=> d!854507 (= (size!26543 (_2!20204 lt!1048285)) lt!1048394)))

(declare-fun b!3051941 () Bool)

(assert (=> b!3051941 (= e!1911939 0)))

(declare-fun b!3051942 () Bool)

(assert (=> b!3051942 (= e!1911939 (+ 1 (size!26543 (t!234389 (_2!20204 lt!1048285)))))))

(assert (= (and d!854507 c!505831) b!3051941))

(assert (= (and d!854507 (not c!505831)) b!3051942))

(declare-fun m!3378315 () Bool)

(assert (=> b!3051942 m!3378315))

(assert (=> b!3051294 d!854507))

(declare-fun b!3051943 () Bool)

(declare-fun e!1911944 () Regex!9459)

(declare-fun e!1911942 () Regex!9459)

(assert (=> b!3051943 (= e!1911944 e!1911942)))

(declare-fun c!505841 () Bool)

(assert (=> b!3051943 (= c!505841 ((_ is Star!9459) lt!1048286))))

(declare-fun b!3051944 () Bool)

(declare-fun c!505834 () Bool)

(declare-fun call!210224 () Bool)

(assert (=> b!3051944 (= c!505834 call!210224)))

(declare-fun e!1911948 () Regex!9459)

(declare-fun e!1911951 () Regex!9459)

(assert (=> b!3051944 (= e!1911948 e!1911951)))

(declare-fun b!3051945 () Bool)

(declare-fun e!1911947 () Regex!9459)

(declare-fun lt!1048398 () Regex!9459)

(assert (=> b!3051945 (= e!1911947 lt!1048398)))

(declare-fun b!3051946 () Bool)

(declare-fun c!505839 () Bool)

(declare-fun call!210222 () Bool)

(assert (=> b!3051946 (= c!505839 call!210222)))

(declare-fun e!1911940 () Regex!9459)

(assert (=> b!3051946 (= e!1911947 e!1911940)))

(declare-fun b!3051947 () Bool)

(declare-fun lt!1048399 () Regex!9459)

(assert (=> b!3051947 (= e!1911940 lt!1048399)))

(declare-fun bm!210214 () Bool)

(declare-fun call!210223 () Regex!9459)

(declare-fun c!505842 () Bool)

(assert (=> bm!210214 (= call!210223 (simplify!414 (ite c!505841 (reg!9788 lt!1048286) (ite c!505842 (regTwo!19431 lt!1048286) (regOne!19430 lt!1048286)))))))

(declare-fun lt!1048400 () Regex!9459)

(declare-fun bm!210215 () Bool)

(assert (=> bm!210215 (= call!210222 (isEmptyLang!510 (ite c!505842 lt!1048398 lt!1048400)))))

(declare-fun bm!210216 () Bool)

(declare-fun call!210219 () Regex!9459)

(assert (=> bm!210216 (= call!210219 call!210223)))

(declare-fun b!3051948 () Bool)

(declare-fun e!1911953 () Bool)

(assert (=> b!3051948 (= e!1911953 call!210224)))

(declare-fun b!3051949 () Bool)

(declare-fun e!1911945 () Regex!9459)

(assert (=> b!3051949 (= e!1911945 lt!1048286)))

(declare-fun b!3051950 () Bool)

(declare-fun e!1911952 () Bool)

(declare-fun call!210220 () Bool)

(assert (=> b!3051950 (= e!1911952 call!210220)))

(declare-fun b!3051951 () Bool)

(declare-fun c!505840 () Bool)

(assert (=> b!3051951 (= c!505840 ((_ is EmptyExpr!9459) lt!1048286))))

(assert (=> b!3051951 (= e!1911945 e!1911944)))

(declare-fun b!3051952 () Bool)

(assert (=> b!3051952 (= e!1911940 (Union!9459 lt!1048399 lt!1048398))))

(declare-fun b!3051953 () Bool)

(declare-fun e!1911950 () Bool)

(declare-fun lt!1048397 () Regex!9459)

(assert (=> b!3051953 (= e!1911950 (= (nullable!3105 lt!1048397) (nullable!3105 lt!1048286)))))

(declare-fun b!3051954 () Bool)

(declare-fun e!1911949 () Regex!9459)

(assert (=> b!3051954 (= e!1911949 EmptyLang!9459)))

(declare-fun d!854509 () Bool)

(assert (=> d!854509 e!1911950))

(declare-fun res!1253656 () Bool)

(assert (=> d!854509 (=> (not res!1253656) (not e!1911950))))

(assert (=> d!854509 (= res!1253656 (validRegex!4192 lt!1048397))))

(assert (=> d!854509 (= lt!1048397 e!1911949)))

(declare-fun c!505836 () Bool)

(assert (=> d!854509 (= c!505836 ((_ is EmptyLang!9459) lt!1048286))))

(assert (=> d!854509 (validRegex!4192 lt!1048286)))

(assert (=> d!854509 (= (simplify!414 lt!1048286) lt!1048397)))

(declare-fun b!3051955 () Bool)

(declare-fun e!1911946 () Regex!9459)

(assert (=> b!3051955 (= e!1911946 EmptyExpr!9459)))

(declare-fun b!3051956 () Bool)

(declare-fun e!1911941 () Regex!9459)

(declare-fun lt!1048395 () Regex!9459)

(assert (=> b!3051956 (= e!1911941 (Concat!14780 lt!1048400 lt!1048395))))

(declare-fun b!3051957 () Bool)

(declare-fun e!1911943 () Regex!9459)

(assert (=> b!3051957 (= e!1911943 e!1911948)))

(assert (=> b!3051957 (= lt!1048400 call!210219)))

(declare-fun call!210221 () Regex!9459)

(assert (=> b!3051957 (= lt!1048395 call!210221)))

(declare-fun res!1253657 () Bool)

(assert (=> b!3051957 (= res!1253657 call!210222)))

(assert (=> b!3051957 (=> res!1253657 e!1911952)))

(declare-fun c!505835 () Bool)

(assert (=> b!3051957 (= c!505835 e!1911952)))

(declare-fun b!3051958 () Bool)

(assert (=> b!3051958 (= e!1911948 EmptyLang!9459)))

(declare-fun bm!210217 () Bool)

(declare-fun call!210225 () Bool)

(assert (=> bm!210217 (= call!210220 call!210225)))

(declare-fun b!3051959 () Bool)

(assert (=> b!3051959 (= e!1911943 e!1911947)))

(assert (=> b!3051959 (= lt!1048399 call!210221)))

(assert (=> b!3051959 (= lt!1048398 call!210219)))

(declare-fun c!505838 () Bool)

(assert (=> b!3051959 (= c!505838 call!210220)))

(declare-fun b!3051960 () Bool)

(assert (=> b!3051960 (= e!1911951 e!1911941)))

(declare-fun c!505832 () Bool)

(assert (=> b!3051960 (= c!505832 (isEmptyExpr!516 lt!1048395))))

(declare-fun lt!1048396 () Regex!9459)

(declare-fun bm!210218 () Bool)

(assert (=> bm!210218 (= call!210225 (isEmptyLang!510 (ite c!505841 lt!1048396 (ite c!505842 lt!1048399 lt!1048395))))))

(declare-fun b!3051961 () Bool)

(declare-fun c!505837 () Bool)

(assert (=> b!3051961 (= c!505837 e!1911953)))

(declare-fun res!1253655 () Bool)

(assert (=> b!3051961 (=> res!1253655 e!1911953)))

(assert (=> b!3051961 (= res!1253655 call!210225)))

(assert (=> b!3051961 (= lt!1048396 call!210223)))

(assert (=> b!3051961 (= e!1911942 e!1911946)))

(declare-fun bm!210219 () Bool)

(assert (=> bm!210219 (= call!210221 (simplify!414 (ite c!505842 (regOne!19431 lt!1048286) (regTwo!19430 lt!1048286))))))

(declare-fun b!3051962 () Bool)

(assert (=> b!3051962 (= e!1911946 (Star!9459 lt!1048396))))

(declare-fun b!3051963 () Bool)

(assert (=> b!3051963 (= e!1911944 EmptyExpr!9459)))

(declare-fun bm!210220 () Bool)

(assert (=> bm!210220 (= call!210224 (isEmptyExpr!516 (ite c!505841 lt!1048396 lt!1048400)))))

(declare-fun b!3051964 () Bool)

(assert (=> b!3051964 (= e!1911951 lt!1048395)))

(declare-fun b!3051965 () Bool)

(assert (=> b!3051965 (= e!1911941 lt!1048400)))

(declare-fun b!3051966 () Bool)

(assert (=> b!3051966 (= e!1911949 e!1911945)))

(declare-fun c!505833 () Bool)

(assert (=> b!3051966 (= c!505833 ((_ is ElementMatch!9459) lt!1048286))))

(declare-fun b!3051967 () Bool)

(assert (=> b!3051967 (= c!505842 ((_ is Union!9459) lt!1048286))))

(assert (=> b!3051967 (= e!1911942 e!1911943)))

(assert (= (and d!854509 c!505836) b!3051954))

(assert (= (and d!854509 (not c!505836)) b!3051966))

(assert (= (and b!3051966 c!505833) b!3051949))

(assert (= (and b!3051966 (not c!505833)) b!3051951))

(assert (= (and b!3051951 c!505840) b!3051963))

(assert (= (and b!3051951 (not c!505840)) b!3051943))

(assert (= (and b!3051943 c!505841) b!3051961))

(assert (= (and b!3051943 (not c!505841)) b!3051967))

(assert (= (and b!3051961 (not res!1253655)) b!3051948))

(assert (= (and b!3051961 c!505837) b!3051955))

(assert (= (and b!3051961 (not c!505837)) b!3051962))

(assert (= (and b!3051967 c!505842) b!3051959))

(assert (= (and b!3051967 (not c!505842)) b!3051957))

(assert (= (and b!3051959 c!505838) b!3051945))

(assert (= (and b!3051959 (not c!505838)) b!3051946))

(assert (= (and b!3051946 c!505839) b!3051947))

(assert (= (and b!3051946 (not c!505839)) b!3051952))

(assert (= (and b!3051957 (not res!1253657)) b!3051950))

(assert (= (and b!3051957 c!505835) b!3051958))

(assert (= (and b!3051957 (not c!505835)) b!3051944))

(assert (= (and b!3051944 c!505834) b!3051964))

(assert (= (and b!3051944 (not c!505834)) b!3051960))

(assert (= (and b!3051960 c!505832) b!3051965))

(assert (= (and b!3051960 (not c!505832)) b!3051956))

(assert (= (or b!3051959 b!3051957) bm!210219))

(assert (= (or b!3051959 b!3051957) bm!210216))

(assert (= (or b!3051946 b!3051957) bm!210215))

(assert (= (or b!3051959 b!3051950) bm!210217))

(assert (= (or b!3051948 b!3051944) bm!210220))

(assert (= (or b!3051961 bm!210216) bm!210214))

(assert (= (or b!3051961 bm!210217) bm!210218))

(assert (= (and d!854509 res!1253656) b!3051953))

(declare-fun m!3378317 () Bool)

(assert (=> b!3051960 m!3378317))

(declare-fun m!3378319 () Bool)

(assert (=> bm!210218 m!3378319))

(declare-fun m!3378321 () Bool)

(assert (=> bm!210215 m!3378321))

(declare-fun m!3378323 () Bool)

(assert (=> b!3051953 m!3378323))

(assert (=> b!3051953 m!3378239))

(declare-fun m!3378325 () Bool)

(assert (=> bm!210219 m!3378325))

(declare-fun m!3378327 () Bool)

(assert (=> d!854509 m!3378327))

(assert (=> d!854509 m!3378237))

(declare-fun m!3378329 () Bool)

(assert (=> bm!210214 m!3378329))

(declare-fun m!3378331 () Bool)

(assert (=> bm!210220 m!3378331))

(assert (=> b!3051294 d!854509))

(declare-fun b!3051968 () Bool)

(declare-fun e!1911959 () Bool)

(assert (=> b!3051968 (= e!1911959 (matchR!4341 (derivativeStep!2702 (reg!9788 r!17423) (head!6761 (_1!20204 lt!1048285))) (tail!4987 (_1!20204 lt!1048285))))))

(declare-fun b!3051969 () Bool)

(declare-fun e!1911960 () Bool)

(assert (=> b!3051969 (= e!1911960 (= (head!6761 (_1!20204 lt!1048285)) (c!505655 (reg!9788 r!17423))))))

(declare-fun b!3051970 () Bool)

(declare-fun e!1911954 () Bool)

(declare-fun e!1911957 () Bool)

(assert (=> b!3051970 (= e!1911954 e!1911957)))

(declare-fun res!1253664 () Bool)

(assert (=> b!3051970 (=> res!1253664 e!1911957)))

(declare-fun call!210226 () Bool)

(assert (=> b!3051970 (= res!1253664 call!210226)))

(declare-fun d!854511 () Bool)

(declare-fun e!1911955 () Bool)

(assert (=> d!854511 e!1911955))

(declare-fun c!505843 () Bool)

(assert (=> d!854511 (= c!505843 ((_ is EmptyExpr!9459) (reg!9788 r!17423)))))

(declare-fun lt!1048401 () Bool)

(assert (=> d!854511 (= lt!1048401 e!1911959)))

(declare-fun c!505844 () Bool)

(assert (=> d!854511 (= c!505844 (isEmpty!19511 (_1!20204 lt!1048285)))))

(assert (=> d!854511 (validRegex!4192 (reg!9788 r!17423))))

(assert (=> d!854511 (= (matchR!4341 (reg!9788 r!17423) (_1!20204 lt!1048285)) lt!1048401)))

(declare-fun b!3051971 () Bool)

(declare-fun res!1253663 () Bool)

(assert (=> b!3051971 (=> (not res!1253663) (not e!1911960))))

(assert (=> b!3051971 (= res!1253663 (not call!210226))))

(declare-fun b!3051972 () Bool)

(assert (=> b!3051972 (= e!1911957 (not (= (head!6761 (_1!20204 lt!1048285)) (c!505655 (reg!9788 r!17423)))))))

(declare-fun b!3051973 () Bool)

(assert (=> b!3051973 (= e!1911955 (= lt!1048401 call!210226))))

(declare-fun b!3051974 () Bool)

(declare-fun e!1911956 () Bool)

(assert (=> b!3051974 (= e!1911956 e!1911954)))

(declare-fun res!1253660 () Bool)

(assert (=> b!3051974 (=> (not res!1253660) (not e!1911954))))

(assert (=> b!3051974 (= res!1253660 (not lt!1048401))))

(declare-fun b!3051975 () Bool)

(assert (=> b!3051975 (= e!1911959 (nullable!3105 (reg!9788 r!17423)))))

(declare-fun b!3051976 () Bool)

(declare-fun res!1253659 () Bool)

(assert (=> b!3051976 (=> res!1253659 e!1911956)))

(assert (=> b!3051976 (= res!1253659 (not ((_ is ElementMatch!9459) (reg!9788 r!17423))))))

(declare-fun e!1911958 () Bool)

(assert (=> b!3051976 (= e!1911958 e!1911956)))

(declare-fun b!3051977 () Bool)

(declare-fun res!1253658 () Bool)

(assert (=> b!3051977 (=> (not res!1253658) (not e!1911960))))

(assert (=> b!3051977 (= res!1253658 (isEmpty!19511 (tail!4987 (_1!20204 lt!1048285))))))

(declare-fun b!3051978 () Bool)

(declare-fun res!1253665 () Bool)

(assert (=> b!3051978 (=> res!1253665 e!1911957)))

(assert (=> b!3051978 (= res!1253665 (not (isEmpty!19511 (tail!4987 (_1!20204 lt!1048285)))))))

(declare-fun b!3051979 () Bool)

(declare-fun res!1253662 () Bool)

(assert (=> b!3051979 (=> res!1253662 e!1911956)))

(assert (=> b!3051979 (= res!1253662 e!1911960)))

(declare-fun res!1253661 () Bool)

(assert (=> b!3051979 (=> (not res!1253661) (not e!1911960))))

(assert (=> b!3051979 (= res!1253661 lt!1048401)))

(declare-fun bm!210221 () Bool)

(assert (=> bm!210221 (= call!210226 (isEmpty!19511 (_1!20204 lt!1048285)))))

(declare-fun b!3051980 () Bool)

(assert (=> b!3051980 (= e!1911955 e!1911958)))

(declare-fun c!505845 () Bool)

(assert (=> b!3051980 (= c!505845 ((_ is EmptyLang!9459) (reg!9788 r!17423)))))

(declare-fun b!3051981 () Bool)

(assert (=> b!3051981 (= e!1911958 (not lt!1048401))))

(assert (= (and d!854511 c!505844) b!3051975))

(assert (= (and d!854511 (not c!505844)) b!3051968))

(assert (= (and d!854511 c!505843) b!3051973))

(assert (= (and d!854511 (not c!505843)) b!3051980))

(assert (= (and b!3051980 c!505845) b!3051981))

(assert (= (and b!3051980 (not c!505845)) b!3051976))

(assert (= (and b!3051976 (not res!1253659)) b!3051979))

(assert (= (and b!3051979 res!1253661) b!3051971))

(assert (= (and b!3051971 res!1253663) b!3051977))

(assert (= (and b!3051977 res!1253658) b!3051969))

(assert (= (and b!3051979 (not res!1253662)) b!3051974))

(assert (= (and b!3051974 res!1253660) b!3051970))

(assert (= (and b!3051970 (not res!1253664)) b!3051978))

(assert (= (and b!3051978 (not res!1253665)) b!3051972))

(assert (= (or b!3051973 b!3051970 b!3051971) bm!210221))

(assert (=> b!3051978 m!3378245))

(assert (=> b!3051978 m!3378245))

(assert (=> b!3051978 m!3378247))

(assert (=> d!854511 m!3378249))

(assert (=> d!854511 m!3378057))

(assert (=> b!3051977 m!3378245))

(assert (=> b!3051977 m!3378245))

(assert (=> b!3051977 m!3378247))

(assert (=> b!3051972 m!3378253))

(assert (=> b!3051975 m!3378203))

(assert (=> b!3051968 m!3378253))

(assert (=> b!3051968 m!3378253))

(declare-fun m!3378333 () Bool)

(assert (=> b!3051968 m!3378333))

(assert (=> b!3051968 m!3378245))

(assert (=> b!3051968 m!3378333))

(assert (=> b!3051968 m!3378245))

(declare-fun m!3378335 () Bool)

(assert (=> b!3051968 m!3378335))

(assert (=> b!3051969 m!3378253))

(assert (=> bm!210221 m!3378249))

(assert (=> b!3051299 d!854511))

(declare-fun d!854513 () Bool)

(assert (=> d!854513 (= (get!11000 lt!1048297) (v!34937 lt!1048297))))

(assert (=> b!3051299 d!854513))

(declare-fun bs!532314 () Bool)

(declare-fun d!854515 () Bool)

(assert (= bs!532314 (and d!854515 b!3051293)))

(declare-fun lambda!113680 () Int)

(assert (=> bs!532314 (= (= (Star!9459 (reg!9788 r!17423)) lt!1048286) (= lambda!113680 lambda!113653))))

(assert (=> bs!532314 (not (= lambda!113680 lambda!113654))))

(declare-fun bs!532315 () Bool)

(assert (= bs!532315 (and d!854515 b!3051595)))

(assert (=> bs!532315 (not (= lambda!113680 lambda!113661))))

(declare-fun bs!532316 () Bool)

(assert (= bs!532316 (and d!854515 b!3051592)))

(assert (=> bs!532316 (not (= lambda!113680 lambda!113664))))

(assert (=> d!854515 true))

(assert (=> d!854515 true))

(declare-fun bs!532317 () Bool)

(assert (= bs!532317 d!854515))

(declare-fun lambda!113681 () Int)

(assert (=> bs!532317 (not (= lambda!113681 lambda!113680))))

(assert (=> bs!532316 (not (= lambda!113681 lambda!113664))))

(assert (=> bs!532315 (= (= (Star!9459 (reg!9788 r!17423)) r!17423) (= lambda!113681 lambda!113661))))

(assert (=> bs!532314 (= (= (Star!9459 (reg!9788 r!17423)) lt!1048286) (= lambda!113681 lambda!113654))))

(assert (=> bs!532314 (not (= lambda!113681 lambda!113653))))

(assert (=> d!854515 true))

(assert (=> d!854515 true))

(assert (=> d!854515 (= (Exists!1723 lambda!113680) (Exists!1723 lambda!113681))))

(declare-fun lt!1048404 () Unit!49351)

(declare-fun choose!18078 (Regex!9459 List!35324) Unit!49351)

(assert (=> d!854515 (= lt!1048404 (choose!18078 (reg!9788 r!17423) s!11993))))

(assert (=> d!854515 (validRegex!4192 (reg!9788 r!17423))))

(assert (=> d!854515 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!340 (reg!9788 r!17423) s!11993) lt!1048404)))

(declare-fun m!3378337 () Bool)

(assert (=> bs!532317 m!3378337))

(declare-fun m!3378339 () Bool)

(assert (=> bs!532317 m!3378339))

(declare-fun m!3378341 () Bool)

(assert (=> bs!532317 m!3378341))

(assert (=> bs!532317 m!3378057))

(assert (=> b!3051293 d!854515))

(declare-fun b!3052010 () Bool)

(declare-fun res!1253689 () Bool)

(declare-fun e!1911975 () Bool)

(assert (=> b!3052010 (=> (not res!1253689) (not e!1911975))))

(declare-fun lt!1048413 () Option!6804)

(assert (=> b!3052010 (= res!1253689 (matchR!4341 lt!1048286 (_2!20204 (get!11000 lt!1048413))))))

(declare-fun b!3052011 () Bool)

(declare-fun e!1911977 () Option!6804)

(declare-fun e!1911978 () Option!6804)

(assert (=> b!3052011 (= e!1911977 e!1911978)))

(declare-fun c!505850 () Bool)

(assert (=> b!3052011 (= c!505850 ((_ is Nil!35200) s!11993))))

(declare-fun d!854517 () Bool)

(declare-fun e!1911976 () Bool)

(assert (=> d!854517 e!1911976))

(declare-fun res!1253687 () Bool)

(assert (=> d!854517 (=> res!1253687 e!1911976)))

(assert (=> d!854517 (= res!1253687 e!1911975)))

(declare-fun res!1253686 () Bool)

(assert (=> d!854517 (=> (not res!1253686) (not e!1911975))))

(assert (=> d!854517 (= res!1253686 (isDefined!5355 lt!1048413))))

(assert (=> d!854517 (= lt!1048413 e!1911977)))

(declare-fun c!505851 () Bool)

(declare-fun e!1911979 () Bool)

(assert (=> d!854517 (= c!505851 e!1911979)))

(declare-fun res!1253690 () Bool)

(assert (=> d!854517 (=> (not res!1253690) (not e!1911979))))

(assert (=> d!854517 (= res!1253690 (matchR!4341 (reg!9788 r!17423) Nil!35200))))

(assert (=> d!854517 (validRegex!4192 (reg!9788 r!17423))))

(assert (=> d!854517 (= (findConcatSeparation!1198 (reg!9788 r!17423) lt!1048286 Nil!35200 s!11993 s!11993) lt!1048413)))

(declare-fun b!3052012 () Bool)

(assert (=> b!3052012 (= e!1911978 None!6803)))

(declare-fun b!3052013 () Bool)

(assert (=> b!3052013 (= e!1911977 (Some!6803 (tuple2!34145 Nil!35200 s!11993)))))

(declare-fun b!3052014 () Bool)

(declare-fun res!1253688 () Bool)

(assert (=> b!3052014 (=> (not res!1253688) (not e!1911975))))

(assert (=> b!3052014 (= res!1253688 (matchR!4341 (reg!9788 r!17423) (_1!20204 (get!11000 lt!1048413))))))

(declare-fun b!3052015 () Bool)

(assert (=> b!3052015 (= e!1911979 (matchR!4341 lt!1048286 s!11993))))

(declare-fun b!3052016 () Bool)

(declare-fun lt!1048411 () Unit!49351)

(declare-fun lt!1048412 () Unit!49351)

(assert (=> b!3052016 (= lt!1048411 lt!1048412)))

(declare-fun ++!8448 (List!35324 List!35324) List!35324)

(assert (=> b!3052016 (= (++!8448 (++!8448 Nil!35200 (Cons!35200 (h!40620 s!11993) Nil!35200)) (t!234389 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1055 (List!35324 C!19104 List!35324 List!35324) Unit!49351)

(assert (=> b!3052016 (= lt!1048412 (lemmaMoveElementToOtherListKeepsConcatEq!1055 Nil!35200 (h!40620 s!11993) (t!234389 s!11993) s!11993))))

(assert (=> b!3052016 (= e!1911978 (findConcatSeparation!1198 (reg!9788 r!17423) lt!1048286 (++!8448 Nil!35200 (Cons!35200 (h!40620 s!11993) Nil!35200)) (t!234389 s!11993) s!11993))))

(declare-fun b!3052017 () Bool)

(assert (=> b!3052017 (= e!1911976 (not (isDefined!5355 lt!1048413)))))

(declare-fun b!3052018 () Bool)

(assert (=> b!3052018 (= e!1911975 (= (++!8448 (_1!20204 (get!11000 lt!1048413)) (_2!20204 (get!11000 lt!1048413))) s!11993))))

(assert (= (and d!854517 res!1253690) b!3052015))

(assert (= (and d!854517 c!505851) b!3052013))

(assert (= (and d!854517 (not c!505851)) b!3052011))

(assert (= (and b!3052011 c!505850) b!3052012))

(assert (= (and b!3052011 (not c!505850)) b!3052016))

(assert (= (and d!854517 res!1253686) b!3052014))

(assert (= (and b!3052014 res!1253688) b!3052010))

(assert (= (and b!3052010 res!1253689) b!3052018))

(assert (= (and d!854517 (not res!1253687)) b!3052017))

(declare-fun m!3378343 () Bool)

(assert (=> b!3052018 m!3378343))

(declare-fun m!3378345 () Bool)

(assert (=> b!3052018 m!3378345))

(declare-fun m!3378347 () Bool)

(assert (=> d!854517 m!3378347))

(declare-fun m!3378349 () Bool)

(assert (=> d!854517 m!3378349))

(assert (=> d!854517 m!3378057))

(assert (=> b!3052017 m!3378347))

(declare-fun m!3378351 () Bool)

(assert (=> b!3052016 m!3378351))

(assert (=> b!3052016 m!3378351))

(declare-fun m!3378353 () Bool)

(assert (=> b!3052016 m!3378353))

(declare-fun m!3378355 () Bool)

(assert (=> b!3052016 m!3378355))

(assert (=> b!3052016 m!3378351))

(declare-fun m!3378357 () Bool)

(assert (=> b!3052016 m!3378357))

(assert (=> b!3052014 m!3378343))

(declare-fun m!3378359 () Bool)

(assert (=> b!3052014 m!3378359))

(declare-fun m!3378361 () Bool)

(assert (=> b!3052015 m!3378361))

(assert (=> b!3052010 m!3378343))

(declare-fun m!3378363 () Bool)

(assert (=> b!3052010 m!3378363))

(assert (=> b!3051293 d!854517))

(declare-fun d!854519 () Bool)

(declare-fun isEmpty!19513 (Option!6804) Bool)

(assert (=> d!854519 (= (isDefined!5355 lt!1048297) (not (isEmpty!19513 lt!1048297)))))

(declare-fun bs!532318 () Bool)

(assert (= bs!532318 d!854519))

(declare-fun m!3378365 () Bool)

(assert (=> bs!532318 m!3378365))

(assert (=> b!3051293 d!854519))

(declare-fun d!854521 () Bool)

(declare-fun choose!18079 (Int) Bool)

(assert (=> d!854521 (= (Exists!1723 lambda!113654) (choose!18079 lambda!113654))))

(declare-fun bs!532319 () Bool)

(assert (= bs!532319 d!854521))

(declare-fun m!3378367 () Bool)

(assert (=> bs!532319 m!3378367))

(assert (=> b!3051293 d!854521))

(declare-fun bs!532320 () Bool)

(declare-fun d!854523 () Bool)

(assert (= bs!532320 (and d!854523 d!854515)))

(declare-fun lambda!113684 () Int)

(assert (=> bs!532320 (= (= lt!1048286 (Star!9459 (reg!9788 r!17423))) (= lambda!113684 lambda!113680))))

(declare-fun bs!532321 () Bool)

(assert (= bs!532321 (and d!854523 b!3051592)))

(assert (=> bs!532321 (not (= lambda!113684 lambda!113664))))

(declare-fun bs!532322 () Bool)

(assert (= bs!532322 (and d!854523 b!3051595)))

(assert (=> bs!532322 (not (= lambda!113684 lambda!113661))))

(assert (=> bs!532320 (not (= lambda!113684 lambda!113681))))

(declare-fun bs!532323 () Bool)

(assert (= bs!532323 (and d!854523 b!3051293)))

(assert (=> bs!532323 (not (= lambda!113684 lambda!113654))))

(assert (=> bs!532323 (= lambda!113684 lambda!113653)))

(assert (=> d!854523 true))

(assert (=> d!854523 true))

(assert (=> d!854523 true))

(assert (=> d!854523 (= (isDefined!5355 (findConcatSeparation!1198 (reg!9788 r!17423) lt!1048286 Nil!35200 s!11993 s!11993)) (Exists!1723 lambda!113684))))

(declare-fun lt!1048416 () Unit!49351)

(declare-fun choose!18080 (Regex!9459 Regex!9459 List!35324) Unit!49351)

(assert (=> d!854523 (= lt!1048416 (choose!18080 (reg!9788 r!17423) lt!1048286 s!11993))))

(assert (=> d!854523 (validRegex!4192 (reg!9788 r!17423))))

(assert (=> d!854523 (= (lemmaFindConcatSeparationEquivalentToExists!976 (reg!9788 r!17423) lt!1048286 s!11993) lt!1048416)))

(declare-fun bs!532324 () Bool)

(assert (= bs!532324 d!854523))

(declare-fun m!3378369 () Bool)

(assert (=> bs!532324 m!3378369))

(assert (=> bs!532324 m!3378057))

(assert (=> bs!532324 m!3378021))

(declare-fun m!3378371 () Bool)

(assert (=> bs!532324 m!3378371))

(declare-fun m!3378373 () Bool)

(assert (=> bs!532324 m!3378373))

(assert (=> bs!532324 m!3378021))

(assert (=> b!3051293 d!854523))

(declare-fun d!854525 () Bool)

(assert (=> d!854525 (= (Exists!1723 lambda!113653) (choose!18079 lambda!113653))))

(declare-fun bs!532325 () Bool)

(assert (= bs!532325 d!854525))

(declare-fun m!3378375 () Bool)

(assert (=> bs!532325 m!3378375))

(assert (=> b!3051293 d!854525))

(declare-fun d!854527 () Bool)

(assert (=> d!854527 (= (isEmpty!19511 s!11993) ((_ is Nil!35200) s!11993))))

(assert (=> b!3051298 d!854527))

(declare-fun e!1911984 () Bool)

(assert (=> b!3051297 (= tp!965761 e!1911984)))

(declare-fun b!3052033 () Bool)

(assert (=> b!3052033 (= e!1911984 tp_is_empty!16481)))

(declare-fun b!3052035 () Bool)

(declare-fun tp!965813 () Bool)

(assert (=> b!3052035 (= e!1911984 tp!965813)))

(declare-fun b!3052034 () Bool)

(declare-fun tp!965814 () Bool)

(declare-fun tp!965811 () Bool)

(assert (=> b!3052034 (= e!1911984 (and tp!965814 tp!965811))))

(declare-fun b!3052036 () Bool)

(declare-fun tp!965812 () Bool)

(declare-fun tp!965810 () Bool)

(assert (=> b!3052036 (= e!1911984 (and tp!965812 tp!965810))))

(assert (= (and b!3051297 ((_ is ElementMatch!9459) (regOne!19431 r!17423))) b!3052033))

(assert (= (and b!3051297 ((_ is Concat!14780) (regOne!19431 r!17423))) b!3052034))

(assert (= (and b!3051297 ((_ is Star!9459) (regOne!19431 r!17423))) b!3052035))

(assert (= (and b!3051297 ((_ is Union!9459) (regOne!19431 r!17423))) b!3052036))

(declare-fun e!1911985 () Bool)

(assert (=> b!3051297 (= tp!965759 e!1911985)))

(declare-fun b!3052037 () Bool)

(assert (=> b!3052037 (= e!1911985 tp_is_empty!16481)))

(declare-fun b!3052039 () Bool)

(declare-fun tp!965818 () Bool)

(assert (=> b!3052039 (= e!1911985 tp!965818)))

(declare-fun b!3052038 () Bool)

(declare-fun tp!965819 () Bool)

(declare-fun tp!965816 () Bool)

(assert (=> b!3052038 (= e!1911985 (and tp!965819 tp!965816))))

(declare-fun b!3052040 () Bool)

(declare-fun tp!965817 () Bool)

(declare-fun tp!965815 () Bool)

(assert (=> b!3052040 (= e!1911985 (and tp!965817 tp!965815))))

(assert (= (and b!3051297 ((_ is ElementMatch!9459) (regTwo!19431 r!17423))) b!3052037))

(assert (= (and b!3051297 ((_ is Concat!14780) (regTwo!19431 r!17423))) b!3052038))

(assert (= (and b!3051297 ((_ is Star!9459) (regTwo!19431 r!17423))) b!3052039))

(assert (= (and b!3051297 ((_ is Union!9459) (regTwo!19431 r!17423))) b!3052040))

(declare-fun e!1911986 () Bool)

(assert (=> b!3051291 (= tp!965757 e!1911986)))

(declare-fun b!3052041 () Bool)

(assert (=> b!3052041 (= e!1911986 tp_is_empty!16481)))

(declare-fun b!3052043 () Bool)

(declare-fun tp!965823 () Bool)

(assert (=> b!3052043 (= e!1911986 tp!965823)))

(declare-fun b!3052042 () Bool)

(declare-fun tp!965824 () Bool)

(declare-fun tp!965821 () Bool)

(assert (=> b!3052042 (= e!1911986 (and tp!965824 tp!965821))))

(declare-fun b!3052044 () Bool)

(declare-fun tp!965822 () Bool)

(declare-fun tp!965820 () Bool)

(assert (=> b!3052044 (= e!1911986 (and tp!965822 tp!965820))))

(assert (= (and b!3051291 ((_ is ElementMatch!9459) (reg!9788 r!17423))) b!3052041))

(assert (= (and b!3051291 ((_ is Concat!14780) (reg!9788 r!17423))) b!3052042))

(assert (= (and b!3051291 ((_ is Star!9459) (reg!9788 r!17423))) b!3052043))

(assert (= (and b!3051291 ((_ is Union!9459) (reg!9788 r!17423))) b!3052044))

(declare-fun b!3052049 () Bool)

(declare-fun e!1911989 () Bool)

(declare-fun tp!965827 () Bool)

(assert (=> b!3052049 (= e!1911989 (and tp_is_empty!16481 tp!965827))))

(assert (=> b!3051296 (= tp!965758 e!1911989)))

(assert (= (and b!3051296 ((_ is Cons!35200) (t!234389 s!11993))) b!3052049))

(declare-fun e!1911990 () Bool)

(assert (=> b!3051289 (= tp!965760 e!1911990)))

(declare-fun b!3052050 () Bool)

(assert (=> b!3052050 (= e!1911990 tp_is_empty!16481)))

(declare-fun b!3052052 () Bool)

(declare-fun tp!965831 () Bool)

(assert (=> b!3052052 (= e!1911990 tp!965831)))

(declare-fun b!3052051 () Bool)

(declare-fun tp!965832 () Bool)

(declare-fun tp!965829 () Bool)

(assert (=> b!3052051 (= e!1911990 (and tp!965832 tp!965829))))

(declare-fun b!3052053 () Bool)

(declare-fun tp!965830 () Bool)

(declare-fun tp!965828 () Bool)

(assert (=> b!3052053 (= e!1911990 (and tp!965830 tp!965828))))

(assert (= (and b!3051289 ((_ is ElementMatch!9459) (regOne!19430 r!17423))) b!3052050))

(assert (= (and b!3051289 ((_ is Concat!14780) (regOne!19430 r!17423))) b!3052051))

(assert (= (and b!3051289 ((_ is Star!9459) (regOne!19430 r!17423))) b!3052052))

(assert (= (and b!3051289 ((_ is Union!9459) (regOne!19430 r!17423))) b!3052053))

(declare-fun e!1911991 () Bool)

(assert (=> b!3051289 (= tp!965756 e!1911991)))

(declare-fun b!3052054 () Bool)

(assert (=> b!3052054 (= e!1911991 tp_is_empty!16481)))

(declare-fun b!3052056 () Bool)

(declare-fun tp!965836 () Bool)

(assert (=> b!3052056 (= e!1911991 tp!965836)))

(declare-fun b!3052055 () Bool)

(declare-fun tp!965837 () Bool)

(declare-fun tp!965834 () Bool)

(assert (=> b!3052055 (= e!1911991 (and tp!965837 tp!965834))))

(declare-fun b!3052057 () Bool)

(declare-fun tp!965835 () Bool)

(declare-fun tp!965833 () Bool)

(assert (=> b!3052057 (= e!1911991 (and tp!965835 tp!965833))))

(assert (= (and b!3051289 ((_ is ElementMatch!9459) (regTwo!19430 r!17423))) b!3052054))

(assert (= (and b!3051289 ((_ is Concat!14780) (regTwo!19430 r!17423))) b!3052055))

(assert (= (and b!3051289 ((_ is Star!9459) (regTwo!19430 r!17423))) b!3052056))

(assert (= (and b!3051289 ((_ is Union!9459) (regTwo!19430 r!17423))) b!3052057))

(check-sat (not d!854519) (not d!854523) (not b!3051978) (not b!3051928) (not b!3051977) (not b!3051733) (not b!3051752) (not b!3051743) (not b!3051777) (not b!3051930) (not bm!210180) (not d!854515) (not b!3051683) (not d!854501) (not b!3052056) (not b!3051953) (not d!854429) (not b!3051751) (not bm!210220) (not b!3051906) (not d!854487) (not b!3052040) (not d!854503) (not b!3052038) (not b!3051779) (not b!3052039) (not b!3051913) (not b!3052016) tp_is_empty!16481 (not b!3052014) (not d!854511) (not d!854517) (not b!3052034) (not bm!210179) (not b!3052018) (not b!3051969) (not d!854483) (not b!3051925) (not bm!210219) (not bm!210210) (not b!3051746) (not b!3051968) (not b!3052052) (not b!3051692) (not b!3052043) (not b!3052042) (not b!3052010) (not b!3052044) (not b!3052057) (not b!3051921) (not bm!210183) (not b!3052049) (not d!854509) (not bm!210182) (not bm!210218) (not bm!210172) (not b!3051757) (not b!3051774) (not bm!210221) (not b!3051960) (not bm!210187) (not bm!210161) (not b!3051724) (not bm!210207) (not b!3052053) (not d!854489) (not b!3052036) (not d!854459) (not b!3051942) (not d!854473) (not b!3051749) (not bm!210211) (not b!3051691) (not b!3051742) (not bm!210162) (not b!3051975) (not bm!210215) (not bm!210213) (not b!3051940) (not b!3051763) (not bm!210214) (not d!854525) (not b!3052055) (not b!3051596) (not b!3051756) (not bm!210185) (not d!854521) (not b!3051682) (not b!3051972) (not b!3051686) (not b!3051597) (not b!3051760) (not b!3051780) (not b!3052035) (not b!3052015) (not b!3051931) (not bm!210212) (not d!854499) (not b!3051922) (not bm!210186) (not b!3051766) (not b!3051770) (not b!3051771) (not d!854485) (not bm!210206) (not b!3051689) (not b!3052017) (not b!3051765) (not b!3052051))
(check-sat)
