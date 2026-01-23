; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293484 () Bool)

(assert start!293484)

(declare-fun b!3081280 () Bool)

(declare-fun res!1264210 () Bool)

(declare-fun e!1927382 () Bool)

(assert (=> b!3081280 (=> res!1264210 e!1927382)))

(declare-datatypes ((C!19264 0))(
  ( (C!19265 (val!11668 Int)) )
))
(declare-datatypes ((Regex!9539 0))(
  ( (ElementMatch!9539 (c!513067 C!19264)) (Concat!14860 (regOne!19590 Regex!9539) (regTwo!19590 Regex!9539)) (EmptyExpr!9539) (Star!9539 (reg!9868 Regex!9539)) (EmptyLang!9539) (Union!9539 (regOne!19591 Regex!9539) (regTwo!19591 Regex!9539)) )
))
(declare-fun lt!1053312 () Regex!9539)

(declare-fun isEmptyExpr!596 (Regex!9539) Bool)

(assert (=> b!3081280 (= res!1264210 (isEmptyExpr!596 lt!1053312))))

(declare-fun b!3081281 () Bool)

(declare-fun res!1264208 () Bool)

(assert (=> b!3081281 (=> res!1264208 e!1927382)))

(declare-fun isEmptyLang!590 (Regex!9539) Bool)

(assert (=> b!3081281 (= res!1264208 (isEmptyLang!590 lt!1053312))))

(declare-fun b!3081283 () Bool)

(declare-fun e!1927383 () Bool)

(declare-fun e!1927385 () Bool)

(assert (=> b!3081283 (= e!1927383 (not e!1927385))))

(declare-fun res!1264209 () Bool)

(assert (=> b!3081283 (=> res!1264209 e!1927385)))

(declare-fun lt!1053310 () Bool)

(declare-fun r!17423 () Regex!9539)

(get-info :version)

(assert (=> b!3081283 (= res!1264209 (or lt!1053310 (not ((_ is Concat!14860) r!17423))))))

(declare-datatypes ((List!35404 0))(
  ( (Nil!35280) (Cons!35280 (h!40700 C!19264) (t!234469 List!35404)) )
))
(declare-fun s!11993 () List!35404)

(declare-fun matchRSpec!1676 (Regex!9539 List!35404) Bool)

(assert (=> b!3081283 (= lt!1053310 (matchRSpec!1676 r!17423 s!11993))))

(declare-fun matchR!4421 (Regex!9539 List!35404) Bool)

(assert (=> b!3081283 (= lt!1053310 (matchR!4421 r!17423 s!11993))))

(declare-datatypes ((Unit!49517 0))(
  ( (Unit!49518) )
))
(declare-fun lt!1053307 () Unit!49517)

(declare-fun mainMatchTheorem!1676 (Regex!9539 List!35404) Unit!49517)

(assert (=> b!3081283 (= lt!1053307 (mainMatchTheorem!1676 r!17423 s!11993))))

(declare-fun b!3081284 () Bool)

(declare-fun e!1927379 () Bool)

(declare-fun tp!970491 () Bool)

(assert (=> b!3081284 (= e!1927379 tp!970491)))

(declare-fun b!3081285 () Bool)

(declare-fun res!1264213 () Bool)

(assert (=> b!3081285 (=> res!1264213 e!1927382)))

(declare-fun lt!1053308 () Regex!9539)

(assert (=> b!3081285 (= res!1264213 (isEmptyExpr!596 lt!1053308))))

(declare-fun b!3081286 () Bool)

(declare-fun e!1927381 () Bool)

(declare-fun e!1927380 () Bool)

(assert (=> b!3081286 (= e!1927381 e!1927380)))

(declare-fun res!1264212 () Bool)

(assert (=> b!3081286 (=> res!1264212 e!1927380)))

(declare-fun validRegex!4272 (Regex!9539) Bool)

(assert (=> b!3081286 (= res!1264212 (not (validRegex!4272 lt!1053308)))))

(declare-fun lt!1053311 () Regex!9539)

(assert (=> b!3081286 (matchRSpec!1676 lt!1053311 s!11993)))

(declare-fun lt!1053309 () Unit!49517)

(assert (=> b!3081286 (= lt!1053309 (mainMatchTheorem!1676 lt!1053311 s!11993))))

(declare-fun b!3081287 () Bool)

(declare-fun tp!970493 () Bool)

(declare-fun tp!970488 () Bool)

(assert (=> b!3081287 (= e!1927379 (and tp!970493 tp!970488))))

(declare-fun b!3081288 () Bool)

(declare-fun tp_is_empty!16641 () Bool)

(assert (=> b!3081288 (= e!1927379 tp_is_empty!16641)))

(declare-fun b!3081289 () Bool)

(declare-fun tp!970490 () Bool)

(declare-fun tp!970492 () Bool)

(assert (=> b!3081289 (= e!1927379 (and tp!970490 tp!970492))))

(declare-fun res!1264206 () Bool)

(assert (=> start!293484 (=> (not res!1264206) (not e!1927383))))

(assert (=> start!293484 (= res!1264206 (validRegex!4272 r!17423))))

(assert (=> start!293484 e!1927383))

(assert (=> start!293484 e!1927379))

(declare-fun e!1927384 () Bool)

(assert (=> start!293484 e!1927384))

(declare-fun b!3081282 () Bool)

(declare-fun res!1264207 () Bool)

(assert (=> b!3081282 (=> res!1264207 e!1927385)))

(declare-fun isEmpty!19615 (List!35404) Bool)

(assert (=> b!3081282 (= res!1264207 (isEmpty!19615 s!11993))))

(declare-fun b!3081290 () Bool)

(assert (=> b!3081290 (= e!1927385 e!1927382)))

(declare-fun res!1264211 () Bool)

(assert (=> b!3081290 (=> res!1264211 e!1927382)))

(assert (=> b!3081290 (= res!1264211 (isEmptyLang!590 lt!1053308))))

(declare-fun simplify!494 (Regex!9539) Regex!9539)

(assert (=> b!3081290 (= lt!1053312 (simplify!494 (regTwo!19590 r!17423)))))

(assert (=> b!3081290 (= lt!1053308 (simplify!494 (regOne!19590 r!17423)))))

(declare-fun b!3081291 () Bool)

(assert (=> b!3081291 (= e!1927382 e!1927381)))

(declare-fun res!1264214 () Bool)

(assert (=> b!3081291 (=> res!1264214 e!1927381)))

(assert (=> b!3081291 (= res!1264214 (not (matchR!4421 lt!1053311 s!11993)))))

(assert (=> b!3081291 (= lt!1053311 (Concat!14860 lt!1053308 lt!1053312))))

(declare-fun b!3081292 () Bool)

(assert (=> b!3081292 (= e!1927380 (validRegex!4272 lt!1053312))))

(declare-fun b!3081293 () Bool)

(declare-fun tp!970489 () Bool)

(assert (=> b!3081293 (= e!1927384 (and tp_is_empty!16641 tp!970489))))

(assert (= (and start!293484 res!1264206) b!3081283))

(assert (= (and b!3081283 (not res!1264209)) b!3081282))

(assert (= (and b!3081282 (not res!1264207)) b!3081290))

(assert (= (and b!3081290 (not res!1264211)) b!3081281))

(assert (= (and b!3081281 (not res!1264208)) b!3081285))

(assert (= (and b!3081285 (not res!1264213)) b!3081280))

(assert (= (and b!3081280 (not res!1264210)) b!3081291))

(assert (= (and b!3081291 (not res!1264214)) b!3081286))

(assert (= (and b!3081286 (not res!1264212)) b!3081292))

(assert (= (and start!293484 ((_ is ElementMatch!9539) r!17423)) b!3081288))

(assert (= (and start!293484 ((_ is Concat!14860) r!17423)) b!3081289))

(assert (= (and start!293484 ((_ is Star!9539) r!17423)) b!3081284))

(assert (= (and start!293484 ((_ is Union!9539) r!17423)) b!3081287))

(assert (= (and start!293484 ((_ is Cons!35280) s!11993)) b!3081293))

(declare-fun m!3390261 () Bool)

(assert (=> b!3081282 m!3390261))

(declare-fun m!3390263 () Bool)

(assert (=> start!293484 m!3390263))

(declare-fun m!3390265 () Bool)

(assert (=> b!3081285 m!3390265))

(declare-fun m!3390267 () Bool)

(assert (=> b!3081292 m!3390267))

(declare-fun m!3390269 () Bool)

(assert (=> b!3081291 m!3390269))

(declare-fun m!3390271 () Bool)

(assert (=> b!3081281 m!3390271))

(declare-fun m!3390273 () Bool)

(assert (=> b!3081286 m!3390273))

(declare-fun m!3390275 () Bool)

(assert (=> b!3081286 m!3390275))

(declare-fun m!3390277 () Bool)

(assert (=> b!3081286 m!3390277))

(declare-fun m!3390279 () Bool)

(assert (=> b!3081290 m!3390279))

(declare-fun m!3390281 () Bool)

(assert (=> b!3081290 m!3390281))

(declare-fun m!3390283 () Bool)

(assert (=> b!3081290 m!3390283))

(declare-fun m!3390285 () Bool)

(assert (=> b!3081280 m!3390285))

(declare-fun m!3390287 () Bool)

(assert (=> b!3081283 m!3390287))

(declare-fun m!3390289 () Bool)

(assert (=> b!3081283 m!3390289))

(declare-fun m!3390291 () Bool)

(assert (=> b!3081283 m!3390291))

(check-sat (not b!3081290) tp_is_empty!16641 (not b!3081280) (not start!293484) (not b!3081293) (not b!3081285) (not b!3081289) (not b!3081287) (not b!3081284) (not b!3081286) (not b!3081282) (not b!3081292) (not b!3081281) (not b!3081291) (not b!3081283))
(check-sat)
(get-model)

(declare-fun b!3081630 () Bool)

(assert (=> b!3081630 true))

(assert (=> b!3081630 true))

(declare-fun bs!532916 () Bool)

(declare-fun b!3081627 () Bool)

(assert (= bs!532916 (and b!3081627 b!3081630)))

(declare-fun lambda!114328 () Int)

(declare-fun lambda!114327 () Int)

(assert (=> bs!532916 (not (= lambda!114328 lambda!114327))))

(assert (=> b!3081627 true))

(assert (=> b!3081627 true))

(declare-fun b!3081620 () Bool)

(declare-fun c!513160 () Bool)

(assert (=> b!3081620 (= c!513160 ((_ is Union!9539) r!17423))))

(declare-fun e!1927567 () Bool)

(declare-fun e!1927571 () Bool)

(assert (=> b!3081620 (= e!1927567 e!1927571)))

(declare-fun d!857531 () Bool)

(declare-fun c!513159 () Bool)

(assert (=> d!857531 (= c!513159 ((_ is EmptyExpr!9539) r!17423))))

(declare-fun e!1927568 () Bool)

(assert (=> d!857531 (= (matchRSpec!1676 r!17423 s!11993) e!1927568)))

(declare-fun b!3081621 () Bool)

(declare-fun call!214832 () Bool)

(assert (=> b!3081621 (= e!1927568 call!214832)))

(declare-fun bm!214827 () Bool)

(assert (=> bm!214827 (= call!214832 (isEmpty!19615 s!11993))))

(declare-fun b!3081622 () Bool)

(declare-fun e!1927570 () Bool)

(assert (=> b!3081622 (= e!1927570 (matchRSpec!1676 (regTwo!19591 r!17423) s!11993))))

(declare-fun call!214833 () Bool)

(declare-fun bm!214828 () Bool)

(declare-fun c!513161 () Bool)

(declare-fun Exists!1802 (Int) Bool)

(assert (=> bm!214828 (= call!214833 (Exists!1802 (ite c!513161 lambda!114327 lambda!114328)))))

(declare-fun b!3081623 () Bool)

(assert (=> b!3081623 (= e!1927567 (= s!11993 (Cons!35280 (c!513067 r!17423) Nil!35280)))))

(declare-fun b!3081624 () Bool)

(declare-fun e!1927569 () Bool)

(assert (=> b!3081624 (= e!1927568 e!1927569)))

(declare-fun res!1264323 () Bool)

(assert (=> b!3081624 (= res!1264323 (not ((_ is EmptyLang!9539) r!17423)))))

(assert (=> b!3081624 (=> (not res!1264323) (not e!1927569))))

(declare-fun b!3081625 () Bool)

(assert (=> b!3081625 (= e!1927571 e!1927570)))

(declare-fun res!1264322 () Bool)

(assert (=> b!3081625 (= res!1264322 (matchRSpec!1676 (regOne!19591 r!17423) s!11993))))

(assert (=> b!3081625 (=> res!1264322 e!1927570)))

(declare-fun b!3081626 () Bool)

(declare-fun res!1264324 () Bool)

(declare-fun e!1927566 () Bool)

(assert (=> b!3081626 (=> res!1264324 e!1927566)))

(assert (=> b!3081626 (= res!1264324 call!214832)))

(declare-fun e!1927565 () Bool)

(assert (=> b!3081626 (= e!1927565 e!1927566)))

(assert (=> b!3081627 (= e!1927565 call!214833)))

(declare-fun b!3081628 () Bool)

(declare-fun c!513158 () Bool)

(assert (=> b!3081628 (= c!513158 ((_ is ElementMatch!9539) r!17423))))

(assert (=> b!3081628 (= e!1927569 e!1927567)))

(declare-fun b!3081629 () Bool)

(assert (=> b!3081629 (= e!1927571 e!1927565)))

(assert (=> b!3081629 (= c!513161 ((_ is Star!9539) r!17423))))

(assert (=> b!3081630 (= e!1927566 call!214833)))

(assert (= (and d!857531 c!513159) b!3081621))

(assert (= (and d!857531 (not c!513159)) b!3081624))

(assert (= (and b!3081624 res!1264323) b!3081628))

(assert (= (and b!3081628 c!513158) b!3081623))

(assert (= (and b!3081628 (not c!513158)) b!3081620))

(assert (= (and b!3081620 c!513160) b!3081625))

(assert (= (and b!3081620 (not c!513160)) b!3081629))

(assert (= (and b!3081625 (not res!1264322)) b!3081622))

(assert (= (and b!3081629 c!513161) b!3081626))

(assert (= (and b!3081629 (not c!513161)) b!3081627))

(assert (= (and b!3081626 (not res!1264324)) b!3081630))

(assert (= (or b!3081630 b!3081627) bm!214828))

(assert (= (or b!3081621 b!3081626) bm!214827))

(assert (=> bm!214827 m!3390261))

(declare-fun m!3390387 () Bool)

(assert (=> b!3081622 m!3390387))

(declare-fun m!3390389 () Bool)

(assert (=> bm!214828 m!3390389))

(declare-fun m!3390391 () Bool)

(assert (=> b!3081625 m!3390391))

(assert (=> b!3081283 d!857531))

(declare-fun d!857563 () Bool)

(declare-fun e!1927589 () Bool)

(assert (=> d!857563 e!1927589))

(declare-fun c!513169 () Bool)

(assert (=> d!857563 (= c!513169 ((_ is EmptyExpr!9539) r!17423))))

(declare-fun lt!1053347 () Bool)

(declare-fun e!1927588 () Bool)

(assert (=> d!857563 (= lt!1053347 e!1927588)))

(declare-fun c!513170 () Bool)

(assert (=> d!857563 (= c!513170 (isEmpty!19615 s!11993))))

(assert (=> d!857563 (validRegex!4272 r!17423)))

(assert (=> d!857563 (= (matchR!4421 r!17423 s!11993) lt!1053347)))

(declare-fun b!3081663 () Bool)

(declare-fun nullable!3185 (Regex!9539) Bool)

(assert (=> b!3081663 (= e!1927588 (nullable!3185 r!17423))))

(declare-fun b!3081664 () Bool)

(declare-fun res!1264345 () Bool)

(declare-fun e!1927587 () Bool)

(assert (=> b!3081664 (=> (not res!1264345) (not e!1927587))))

(declare-fun call!214836 () Bool)

(assert (=> b!3081664 (= res!1264345 (not call!214836))))

(declare-fun b!3081665 () Bool)

(declare-fun res!1264346 () Bool)

(declare-fun e!1927590 () Bool)

(assert (=> b!3081665 (=> res!1264346 e!1927590)))

(declare-fun tail!5066 (List!35404) List!35404)

(assert (=> b!3081665 (= res!1264346 (not (isEmpty!19615 (tail!5066 s!11993))))))

(declare-fun b!3081666 () Bool)

(declare-fun e!1927592 () Bool)

(assert (=> b!3081666 (= e!1927589 e!1927592)))

(declare-fun c!513168 () Bool)

(assert (=> b!3081666 (= c!513168 ((_ is EmptyLang!9539) r!17423))))

(declare-fun b!3081667 () Bool)

(declare-fun derivativeStep!2781 (Regex!9539 C!19264) Regex!9539)

(declare-fun head!6840 (List!35404) C!19264)

(assert (=> b!3081667 (= e!1927588 (matchR!4421 (derivativeStep!2781 r!17423 (head!6840 s!11993)) (tail!5066 s!11993)))))

(declare-fun b!3081668 () Bool)

(assert (=> b!3081668 (= e!1927587 (= (head!6840 s!11993) (c!513067 r!17423)))))

(declare-fun b!3081669 () Bool)

(assert (=> b!3081669 (= e!1927590 (not (= (head!6840 s!11993) (c!513067 r!17423))))))

(declare-fun bm!214831 () Bool)

(assert (=> bm!214831 (= call!214836 (isEmpty!19615 s!11993))))

(declare-fun b!3081670 () Bool)

(declare-fun res!1264344 () Bool)

(declare-fun e!1927586 () Bool)

(assert (=> b!3081670 (=> res!1264344 e!1927586)))

(assert (=> b!3081670 (= res!1264344 e!1927587)))

(declare-fun res!1264343 () Bool)

(assert (=> b!3081670 (=> (not res!1264343) (not e!1927587))))

(assert (=> b!3081670 (= res!1264343 lt!1053347)))

(declare-fun b!3081671 () Bool)

(assert (=> b!3081671 (= e!1927592 (not lt!1053347))))

(declare-fun b!3081672 () Bool)

(declare-fun e!1927591 () Bool)

(assert (=> b!3081672 (= e!1927591 e!1927590)))

(declare-fun res!1264341 () Bool)

(assert (=> b!3081672 (=> res!1264341 e!1927590)))

(assert (=> b!3081672 (= res!1264341 call!214836)))

(declare-fun b!3081673 () Bool)

(assert (=> b!3081673 (= e!1927586 e!1927591)))

(declare-fun res!1264347 () Bool)

(assert (=> b!3081673 (=> (not res!1264347) (not e!1927591))))

(assert (=> b!3081673 (= res!1264347 (not lt!1053347))))

(declare-fun b!3081674 () Bool)

(declare-fun res!1264348 () Bool)

(assert (=> b!3081674 (=> res!1264348 e!1927586)))

(assert (=> b!3081674 (= res!1264348 (not ((_ is ElementMatch!9539) r!17423)))))

(assert (=> b!3081674 (= e!1927592 e!1927586)))

(declare-fun b!3081675 () Bool)

(declare-fun res!1264342 () Bool)

(assert (=> b!3081675 (=> (not res!1264342) (not e!1927587))))

(assert (=> b!3081675 (= res!1264342 (isEmpty!19615 (tail!5066 s!11993)))))

(declare-fun b!3081676 () Bool)

(assert (=> b!3081676 (= e!1927589 (= lt!1053347 call!214836))))

(assert (= (and d!857563 c!513170) b!3081663))

(assert (= (and d!857563 (not c!513170)) b!3081667))

(assert (= (and d!857563 c!513169) b!3081676))

(assert (= (and d!857563 (not c!513169)) b!3081666))

(assert (= (and b!3081666 c!513168) b!3081671))

(assert (= (and b!3081666 (not c!513168)) b!3081674))

(assert (= (and b!3081674 (not res!1264348)) b!3081670))

(assert (= (and b!3081670 res!1264343) b!3081664))

(assert (= (and b!3081664 res!1264345) b!3081675))

(assert (= (and b!3081675 res!1264342) b!3081668))

(assert (= (and b!3081670 (not res!1264344)) b!3081673))

(assert (= (and b!3081673 res!1264347) b!3081672))

(assert (= (and b!3081672 (not res!1264341)) b!3081665))

(assert (= (and b!3081665 (not res!1264346)) b!3081669))

(assert (= (or b!3081676 b!3081664 b!3081672) bm!214831))

(declare-fun m!3390393 () Bool)

(assert (=> b!3081663 m!3390393))

(declare-fun m!3390395 () Bool)

(assert (=> b!3081665 m!3390395))

(assert (=> b!3081665 m!3390395))

(declare-fun m!3390397 () Bool)

(assert (=> b!3081665 m!3390397))

(assert (=> d!857563 m!3390261))

(assert (=> d!857563 m!3390263))

(assert (=> bm!214831 m!3390261))

(declare-fun m!3390399 () Bool)

(assert (=> b!3081669 m!3390399))

(assert (=> b!3081668 m!3390399))

(assert (=> b!3081667 m!3390399))

(assert (=> b!3081667 m!3390399))

(declare-fun m!3390401 () Bool)

(assert (=> b!3081667 m!3390401))

(assert (=> b!3081667 m!3390395))

(assert (=> b!3081667 m!3390401))

(assert (=> b!3081667 m!3390395))

(declare-fun m!3390403 () Bool)

(assert (=> b!3081667 m!3390403))

(assert (=> b!3081675 m!3390395))

(assert (=> b!3081675 m!3390395))

(assert (=> b!3081675 m!3390397))

(assert (=> b!3081283 d!857563))

(declare-fun d!857565 () Bool)

(assert (=> d!857565 (= (matchR!4421 r!17423 s!11993) (matchRSpec!1676 r!17423 s!11993))))

(declare-fun lt!1053350 () Unit!49517)

(declare-fun choose!18266 (Regex!9539 List!35404) Unit!49517)

(assert (=> d!857565 (= lt!1053350 (choose!18266 r!17423 s!11993))))

(assert (=> d!857565 (validRegex!4272 r!17423)))

(assert (=> d!857565 (= (mainMatchTheorem!1676 r!17423 s!11993) lt!1053350)))

(declare-fun bs!532917 () Bool)

(assert (= bs!532917 d!857565))

(assert (=> bs!532917 m!3390289))

(assert (=> bs!532917 m!3390287))

(declare-fun m!3390405 () Bool)

(assert (=> bs!532917 m!3390405))

(assert (=> bs!532917 m!3390263))

(assert (=> b!3081283 d!857565))

(declare-fun b!3081695 () Bool)

(declare-fun e!1927610 () Bool)

(declare-fun call!214843 () Bool)

(assert (=> b!3081695 (= e!1927610 call!214843)))

(declare-fun d!857567 () Bool)

(declare-fun res!1264361 () Bool)

(declare-fun e!1927613 () Bool)

(assert (=> d!857567 (=> res!1264361 e!1927613)))

(assert (=> d!857567 (= res!1264361 ((_ is ElementMatch!9539) r!17423))))

(assert (=> d!857567 (= (validRegex!4272 r!17423) e!1927613)))

(declare-fun bm!214838 () Bool)

(declare-fun call!214844 () Bool)

(assert (=> bm!214838 (= call!214843 call!214844)))

(declare-fun b!3081696 () Bool)

(declare-fun res!1264359 () Bool)

(declare-fun e!1927608 () Bool)

(assert (=> b!3081696 (=> (not res!1264359) (not e!1927608))))

(assert (=> b!3081696 (= res!1264359 call!214843)))

(declare-fun e!1927609 () Bool)

(assert (=> b!3081696 (= e!1927609 e!1927608)))

(declare-fun b!3081697 () Bool)

(declare-fun e!1927612 () Bool)

(assert (=> b!3081697 (= e!1927612 call!214844)))

(declare-fun b!3081698 () Bool)

(declare-fun call!214845 () Bool)

(assert (=> b!3081698 (= e!1927608 call!214845)))

(declare-fun b!3081699 () Bool)

(declare-fun e!1927607 () Bool)

(assert (=> b!3081699 (= e!1927607 e!1927612)))

(declare-fun res!1264363 () Bool)

(assert (=> b!3081699 (= res!1264363 (not (nullable!3185 (reg!9868 r!17423))))))

(assert (=> b!3081699 (=> (not res!1264363) (not e!1927612))))

(declare-fun b!3081700 () Bool)

(declare-fun res!1264362 () Bool)

(declare-fun e!1927611 () Bool)

(assert (=> b!3081700 (=> res!1264362 e!1927611)))

(assert (=> b!3081700 (= res!1264362 (not ((_ is Concat!14860) r!17423)))))

(assert (=> b!3081700 (= e!1927609 e!1927611)))

(declare-fun c!513176 () Bool)

(declare-fun bm!214839 () Bool)

(declare-fun c!513175 () Bool)

(assert (=> bm!214839 (= call!214844 (validRegex!4272 (ite c!513175 (reg!9868 r!17423) (ite c!513176 (regOne!19591 r!17423) (regTwo!19590 r!17423)))))))

(declare-fun b!3081701 () Bool)

(assert (=> b!3081701 (= e!1927611 e!1927610)))

(declare-fun res!1264360 () Bool)

(assert (=> b!3081701 (=> (not res!1264360) (not e!1927610))))

(assert (=> b!3081701 (= res!1264360 call!214845)))

(declare-fun b!3081702 () Bool)

(assert (=> b!3081702 (= e!1927613 e!1927607)))

(assert (=> b!3081702 (= c!513175 ((_ is Star!9539) r!17423))))

(declare-fun b!3081703 () Bool)

(assert (=> b!3081703 (= e!1927607 e!1927609)))

(assert (=> b!3081703 (= c!513176 ((_ is Union!9539) r!17423))))

(declare-fun bm!214840 () Bool)

(assert (=> bm!214840 (= call!214845 (validRegex!4272 (ite c!513176 (regTwo!19591 r!17423) (regOne!19590 r!17423))))))

(assert (= (and d!857567 (not res!1264361)) b!3081702))

(assert (= (and b!3081702 c!513175) b!3081699))

(assert (= (and b!3081702 (not c!513175)) b!3081703))

(assert (= (and b!3081699 res!1264363) b!3081697))

(assert (= (and b!3081703 c!513176) b!3081696))

(assert (= (and b!3081703 (not c!513176)) b!3081700))

(assert (= (and b!3081696 res!1264359) b!3081698))

(assert (= (and b!3081700 (not res!1264362)) b!3081701))

(assert (= (and b!3081701 res!1264360) b!3081695))

(assert (= (or b!3081696 b!3081695) bm!214838))

(assert (= (or b!3081698 b!3081701) bm!214840))

(assert (= (or b!3081697 bm!214838) bm!214839))

(declare-fun m!3390407 () Bool)

(assert (=> b!3081699 m!3390407))

(declare-fun m!3390409 () Bool)

(assert (=> bm!214839 m!3390409))

(declare-fun m!3390411 () Bool)

(assert (=> bm!214840 m!3390411))

(assert (=> start!293484 d!857567))

(declare-fun d!857569 () Bool)

(assert (=> d!857569 (= (isEmpty!19615 s!11993) ((_ is Nil!35280) s!11993))))

(assert (=> b!3081282 d!857569))

(declare-fun d!857571 () Bool)

(assert (=> d!857571 (= (isEmptyLang!590 lt!1053312) ((_ is EmptyLang!9539) lt!1053312))))

(assert (=> b!3081281 d!857571))

(declare-fun b!3081704 () Bool)

(declare-fun e!1927617 () Bool)

(declare-fun call!214846 () Bool)

(assert (=> b!3081704 (= e!1927617 call!214846)))

(declare-fun d!857573 () Bool)

(declare-fun res!1264366 () Bool)

(declare-fun e!1927620 () Bool)

(assert (=> d!857573 (=> res!1264366 e!1927620)))

(assert (=> d!857573 (= res!1264366 ((_ is ElementMatch!9539) lt!1053312))))

(assert (=> d!857573 (= (validRegex!4272 lt!1053312) e!1927620)))

(declare-fun bm!214841 () Bool)

(declare-fun call!214847 () Bool)

(assert (=> bm!214841 (= call!214846 call!214847)))

(declare-fun b!3081705 () Bool)

(declare-fun res!1264364 () Bool)

(declare-fun e!1927615 () Bool)

(assert (=> b!3081705 (=> (not res!1264364) (not e!1927615))))

(assert (=> b!3081705 (= res!1264364 call!214846)))

(declare-fun e!1927616 () Bool)

(assert (=> b!3081705 (= e!1927616 e!1927615)))

(declare-fun b!3081706 () Bool)

(declare-fun e!1927619 () Bool)

(assert (=> b!3081706 (= e!1927619 call!214847)))

(declare-fun b!3081707 () Bool)

(declare-fun call!214848 () Bool)

(assert (=> b!3081707 (= e!1927615 call!214848)))

(declare-fun b!3081708 () Bool)

(declare-fun e!1927614 () Bool)

(assert (=> b!3081708 (= e!1927614 e!1927619)))

(declare-fun res!1264368 () Bool)

(assert (=> b!3081708 (= res!1264368 (not (nullable!3185 (reg!9868 lt!1053312))))))

(assert (=> b!3081708 (=> (not res!1264368) (not e!1927619))))

(declare-fun b!3081709 () Bool)

(declare-fun res!1264367 () Bool)

(declare-fun e!1927618 () Bool)

(assert (=> b!3081709 (=> res!1264367 e!1927618)))

(assert (=> b!3081709 (= res!1264367 (not ((_ is Concat!14860) lt!1053312)))))

(assert (=> b!3081709 (= e!1927616 e!1927618)))

(declare-fun c!513178 () Bool)

(declare-fun c!513177 () Bool)

(declare-fun bm!214842 () Bool)

(assert (=> bm!214842 (= call!214847 (validRegex!4272 (ite c!513177 (reg!9868 lt!1053312) (ite c!513178 (regOne!19591 lt!1053312) (regTwo!19590 lt!1053312)))))))

(declare-fun b!3081710 () Bool)

(assert (=> b!3081710 (= e!1927618 e!1927617)))

(declare-fun res!1264365 () Bool)

(assert (=> b!3081710 (=> (not res!1264365) (not e!1927617))))

(assert (=> b!3081710 (= res!1264365 call!214848)))

(declare-fun b!3081711 () Bool)

(assert (=> b!3081711 (= e!1927620 e!1927614)))

(assert (=> b!3081711 (= c!513177 ((_ is Star!9539) lt!1053312))))

(declare-fun b!3081712 () Bool)

(assert (=> b!3081712 (= e!1927614 e!1927616)))

(assert (=> b!3081712 (= c!513178 ((_ is Union!9539) lt!1053312))))

(declare-fun bm!214843 () Bool)

(assert (=> bm!214843 (= call!214848 (validRegex!4272 (ite c!513178 (regTwo!19591 lt!1053312) (regOne!19590 lt!1053312))))))

(assert (= (and d!857573 (not res!1264366)) b!3081711))

(assert (= (and b!3081711 c!513177) b!3081708))

(assert (= (and b!3081711 (not c!513177)) b!3081712))

(assert (= (and b!3081708 res!1264368) b!3081706))

(assert (= (and b!3081712 c!513178) b!3081705))

(assert (= (and b!3081712 (not c!513178)) b!3081709))

(assert (= (and b!3081705 res!1264364) b!3081707))

(assert (= (and b!3081709 (not res!1264367)) b!3081710))

(assert (= (and b!3081710 res!1264365) b!3081704))

(assert (= (or b!3081705 b!3081704) bm!214841))

(assert (= (or b!3081707 b!3081710) bm!214843))

(assert (= (or b!3081706 bm!214841) bm!214842))

(declare-fun m!3390413 () Bool)

(assert (=> b!3081708 m!3390413))

(declare-fun m!3390415 () Bool)

(assert (=> bm!214842 m!3390415))

(declare-fun m!3390417 () Bool)

(assert (=> bm!214843 m!3390417))

(assert (=> b!3081292 d!857573))

(declare-fun d!857575 () Bool)

(declare-fun e!1927624 () Bool)

(assert (=> d!857575 e!1927624))

(declare-fun c!513180 () Bool)

(assert (=> d!857575 (= c!513180 ((_ is EmptyExpr!9539) lt!1053311))))

(declare-fun lt!1053351 () Bool)

(declare-fun e!1927623 () Bool)

(assert (=> d!857575 (= lt!1053351 e!1927623)))

(declare-fun c!513181 () Bool)

(assert (=> d!857575 (= c!513181 (isEmpty!19615 s!11993))))

(assert (=> d!857575 (validRegex!4272 lt!1053311)))

(assert (=> d!857575 (= (matchR!4421 lt!1053311 s!11993) lt!1053351)))

(declare-fun b!3081713 () Bool)

(assert (=> b!3081713 (= e!1927623 (nullable!3185 lt!1053311))))

(declare-fun b!3081714 () Bool)

(declare-fun res!1264373 () Bool)

(declare-fun e!1927622 () Bool)

(assert (=> b!3081714 (=> (not res!1264373) (not e!1927622))))

(declare-fun call!214849 () Bool)

(assert (=> b!3081714 (= res!1264373 (not call!214849))))

(declare-fun b!3081715 () Bool)

(declare-fun res!1264374 () Bool)

(declare-fun e!1927625 () Bool)

(assert (=> b!3081715 (=> res!1264374 e!1927625)))

(assert (=> b!3081715 (= res!1264374 (not (isEmpty!19615 (tail!5066 s!11993))))))

(declare-fun b!3081716 () Bool)

(declare-fun e!1927627 () Bool)

(assert (=> b!3081716 (= e!1927624 e!1927627)))

(declare-fun c!513179 () Bool)

(assert (=> b!3081716 (= c!513179 ((_ is EmptyLang!9539) lt!1053311))))

(declare-fun b!3081717 () Bool)

(assert (=> b!3081717 (= e!1927623 (matchR!4421 (derivativeStep!2781 lt!1053311 (head!6840 s!11993)) (tail!5066 s!11993)))))

(declare-fun b!3081718 () Bool)

(assert (=> b!3081718 (= e!1927622 (= (head!6840 s!11993) (c!513067 lt!1053311)))))

(declare-fun b!3081719 () Bool)

(assert (=> b!3081719 (= e!1927625 (not (= (head!6840 s!11993) (c!513067 lt!1053311))))))

(declare-fun bm!214844 () Bool)

(assert (=> bm!214844 (= call!214849 (isEmpty!19615 s!11993))))

(declare-fun b!3081720 () Bool)

(declare-fun res!1264372 () Bool)

(declare-fun e!1927621 () Bool)

(assert (=> b!3081720 (=> res!1264372 e!1927621)))

(assert (=> b!3081720 (= res!1264372 e!1927622)))

(declare-fun res!1264371 () Bool)

(assert (=> b!3081720 (=> (not res!1264371) (not e!1927622))))

(assert (=> b!3081720 (= res!1264371 lt!1053351)))

(declare-fun b!3081721 () Bool)

(assert (=> b!3081721 (= e!1927627 (not lt!1053351))))

(declare-fun b!3081722 () Bool)

(declare-fun e!1927626 () Bool)

(assert (=> b!3081722 (= e!1927626 e!1927625)))

(declare-fun res!1264369 () Bool)

(assert (=> b!3081722 (=> res!1264369 e!1927625)))

(assert (=> b!3081722 (= res!1264369 call!214849)))

(declare-fun b!3081723 () Bool)

(assert (=> b!3081723 (= e!1927621 e!1927626)))

(declare-fun res!1264375 () Bool)

(assert (=> b!3081723 (=> (not res!1264375) (not e!1927626))))

(assert (=> b!3081723 (= res!1264375 (not lt!1053351))))

(declare-fun b!3081724 () Bool)

(declare-fun res!1264376 () Bool)

(assert (=> b!3081724 (=> res!1264376 e!1927621)))

(assert (=> b!3081724 (= res!1264376 (not ((_ is ElementMatch!9539) lt!1053311)))))

(assert (=> b!3081724 (= e!1927627 e!1927621)))

(declare-fun b!3081725 () Bool)

(declare-fun res!1264370 () Bool)

(assert (=> b!3081725 (=> (not res!1264370) (not e!1927622))))

(assert (=> b!3081725 (= res!1264370 (isEmpty!19615 (tail!5066 s!11993)))))

(declare-fun b!3081726 () Bool)

(assert (=> b!3081726 (= e!1927624 (= lt!1053351 call!214849))))

(assert (= (and d!857575 c!513181) b!3081713))

(assert (= (and d!857575 (not c!513181)) b!3081717))

(assert (= (and d!857575 c!513180) b!3081726))

(assert (= (and d!857575 (not c!513180)) b!3081716))

(assert (= (and b!3081716 c!513179) b!3081721))

(assert (= (and b!3081716 (not c!513179)) b!3081724))

(assert (= (and b!3081724 (not res!1264376)) b!3081720))

(assert (= (and b!3081720 res!1264371) b!3081714))

(assert (= (and b!3081714 res!1264373) b!3081725))

(assert (= (and b!3081725 res!1264370) b!3081718))

(assert (= (and b!3081720 (not res!1264372)) b!3081723))

(assert (= (and b!3081723 res!1264375) b!3081722))

(assert (= (and b!3081722 (not res!1264369)) b!3081715))

(assert (= (and b!3081715 (not res!1264374)) b!3081719))

(assert (= (or b!3081726 b!3081714 b!3081722) bm!214844))

(declare-fun m!3390419 () Bool)

(assert (=> b!3081713 m!3390419))

(assert (=> b!3081715 m!3390395))

(assert (=> b!3081715 m!3390395))

(assert (=> b!3081715 m!3390397))

(assert (=> d!857575 m!3390261))

(declare-fun m!3390421 () Bool)

(assert (=> d!857575 m!3390421))

(assert (=> bm!214844 m!3390261))

(assert (=> b!3081719 m!3390399))

(assert (=> b!3081718 m!3390399))

(assert (=> b!3081717 m!3390399))

(assert (=> b!3081717 m!3390399))

(declare-fun m!3390423 () Bool)

(assert (=> b!3081717 m!3390423))

(assert (=> b!3081717 m!3390395))

(assert (=> b!3081717 m!3390423))

(assert (=> b!3081717 m!3390395))

(declare-fun m!3390425 () Bool)

(assert (=> b!3081717 m!3390425))

(assert (=> b!3081725 m!3390395))

(assert (=> b!3081725 m!3390395))

(assert (=> b!3081725 m!3390397))

(assert (=> b!3081291 d!857575))

(declare-fun b!3081727 () Bool)

(declare-fun e!1927631 () Bool)

(declare-fun call!214850 () Bool)

(assert (=> b!3081727 (= e!1927631 call!214850)))

(declare-fun d!857577 () Bool)

(declare-fun res!1264379 () Bool)

(declare-fun e!1927634 () Bool)

(assert (=> d!857577 (=> res!1264379 e!1927634)))

(assert (=> d!857577 (= res!1264379 ((_ is ElementMatch!9539) lt!1053308))))

(assert (=> d!857577 (= (validRegex!4272 lt!1053308) e!1927634)))

(declare-fun bm!214845 () Bool)

(declare-fun call!214851 () Bool)

(assert (=> bm!214845 (= call!214850 call!214851)))

(declare-fun b!3081728 () Bool)

(declare-fun res!1264377 () Bool)

(declare-fun e!1927629 () Bool)

(assert (=> b!3081728 (=> (not res!1264377) (not e!1927629))))

(assert (=> b!3081728 (= res!1264377 call!214850)))

(declare-fun e!1927630 () Bool)

(assert (=> b!3081728 (= e!1927630 e!1927629)))

(declare-fun b!3081729 () Bool)

(declare-fun e!1927633 () Bool)

(assert (=> b!3081729 (= e!1927633 call!214851)))

(declare-fun b!3081730 () Bool)

(declare-fun call!214852 () Bool)

(assert (=> b!3081730 (= e!1927629 call!214852)))

(declare-fun b!3081731 () Bool)

(declare-fun e!1927628 () Bool)

(assert (=> b!3081731 (= e!1927628 e!1927633)))

(declare-fun res!1264381 () Bool)

(assert (=> b!3081731 (= res!1264381 (not (nullable!3185 (reg!9868 lt!1053308))))))

(assert (=> b!3081731 (=> (not res!1264381) (not e!1927633))))

(declare-fun b!3081732 () Bool)

(declare-fun res!1264380 () Bool)

(declare-fun e!1927632 () Bool)

(assert (=> b!3081732 (=> res!1264380 e!1927632)))

(assert (=> b!3081732 (= res!1264380 (not ((_ is Concat!14860) lt!1053308)))))

(assert (=> b!3081732 (= e!1927630 e!1927632)))

(declare-fun c!513183 () Bool)

(declare-fun bm!214846 () Bool)

(declare-fun c!513182 () Bool)

(assert (=> bm!214846 (= call!214851 (validRegex!4272 (ite c!513182 (reg!9868 lt!1053308) (ite c!513183 (regOne!19591 lt!1053308) (regTwo!19590 lt!1053308)))))))

(declare-fun b!3081733 () Bool)

(assert (=> b!3081733 (= e!1927632 e!1927631)))

(declare-fun res!1264378 () Bool)

(assert (=> b!3081733 (=> (not res!1264378) (not e!1927631))))

(assert (=> b!3081733 (= res!1264378 call!214852)))

(declare-fun b!3081734 () Bool)

(assert (=> b!3081734 (= e!1927634 e!1927628)))

(assert (=> b!3081734 (= c!513182 ((_ is Star!9539) lt!1053308))))

(declare-fun b!3081735 () Bool)

(assert (=> b!3081735 (= e!1927628 e!1927630)))

(assert (=> b!3081735 (= c!513183 ((_ is Union!9539) lt!1053308))))

(declare-fun bm!214847 () Bool)

(assert (=> bm!214847 (= call!214852 (validRegex!4272 (ite c!513183 (regTwo!19591 lt!1053308) (regOne!19590 lt!1053308))))))

(assert (= (and d!857577 (not res!1264379)) b!3081734))

(assert (= (and b!3081734 c!513182) b!3081731))

(assert (= (and b!3081734 (not c!513182)) b!3081735))

(assert (= (and b!3081731 res!1264381) b!3081729))

(assert (= (and b!3081735 c!513183) b!3081728))

(assert (= (and b!3081735 (not c!513183)) b!3081732))

(assert (= (and b!3081728 res!1264377) b!3081730))

(assert (= (and b!3081732 (not res!1264380)) b!3081733))

(assert (= (and b!3081733 res!1264378) b!3081727))

(assert (= (or b!3081728 b!3081727) bm!214845))

(assert (= (or b!3081730 b!3081733) bm!214847))

(assert (= (or b!3081729 bm!214845) bm!214846))

(declare-fun m!3390427 () Bool)

(assert (=> b!3081731 m!3390427))

(declare-fun m!3390429 () Bool)

(assert (=> bm!214846 m!3390429))

(declare-fun m!3390431 () Bool)

(assert (=> bm!214847 m!3390431))

(assert (=> b!3081286 d!857577))

(declare-fun bs!532918 () Bool)

(declare-fun b!3081746 () Bool)

(assert (= bs!532918 (and b!3081746 b!3081630)))

(declare-fun lambda!114329 () Int)

(assert (=> bs!532918 (= (and (= (reg!9868 lt!1053311) (reg!9868 r!17423)) (= lt!1053311 r!17423)) (= lambda!114329 lambda!114327))))

(declare-fun bs!532919 () Bool)

(assert (= bs!532919 (and b!3081746 b!3081627)))

(assert (=> bs!532919 (not (= lambda!114329 lambda!114328))))

(assert (=> b!3081746 true))

(assert (=> b!3081746 true))

(declare-fun bs!532920 () Bool)

(declare-fun b!3081743 () Bool)

(assert (= bs!532920 (and b!3081743 b!3081630)))

(declare-fun lambda!114330 () Int)

(assert (=> bs!532920 (not (= lambda!114330 lambda!114327))))

(declare-fun bs!532921 () Bool)

(assert (= bs!532921 (and b!3081743 b!3081627)))

(assert (=> bs!532921 (= (and (= (regOne!19590 lt!1053311) (regOne!19590 r!17423)) (= (regTwo!19590 lt!1053311) (regTwo!19590 r!17423))) (= lambda!114330 lambda!114328))))

(declare-fun bs!532922 () Bool)

(assert (= bs!532922 (and b!3081743 b!3081746)))

(assert (=> bs!532922 (not (= lambda!114330 lambda!114329))))

(assert (=> b!3081743 true))

(assert (=> b!3081743 true))

(declare-fun b!3081736 () Bool)

(declare-fun c!513186 () Bool)

(assert (=> b!3081736 (= c!513186 ((_ is Union!9539) lt!1053311))))

(declare-fun e!1927637 () Bool)

(declare-fun e!1927641 () Bool)

(assert (=> b!3081736 (= e!1927637 e!1927641)))

(declare-fun d!857579 () Bool)

(declare-fun c!513185 () Bool)

(assert (=> d!857579 (= c!513185 ((_ is EmptyExpr!9539) lt!1053311))))

(declare-fun e!1927638 () Bool)

(assert (=> d!857579 (= (matchRSpec!1676 lt!1053311 s!11993) e!1927638)))

(declare-fun b!3081737 () Bool)

(declare-fun call!214853 () Bool)

(assert (=> b!3081737 (= e!1927638 call!214853)))

(declare-fun bm!214848 () Bool)

(assert (=> bm!214848 (= call!214853 (isEmpty!19615 s!11993))))

(declare-fun b!3081738 () Bool)

(declare-fun e!1927640 () Bool)

(assert (=> b!3081738 (= e!1927640 (matchRSpec!1676 (regTwo!19591 lt!1053311) s!11993))))

(declare-fun call!214854 () Bool)

(declare-fun bm!214849 () Bool)

(declare-fun c!513187 () Bool)

(assert (=> bm!214849 (= call!214854 (Exists!1802 (ite c!513187 lambda!114329 lambda!114330)))))

(declare-fun b!3081739 () Bool)

(assert (=> b!3081739 (= e!1927637 (= s!11993 (Cons!35280 (c!513067 lt!1053311) Nil!35280)))))

(declare-fun b!3081740 () Bool)

(declare-fun e!1927639 () Bool)

(assert (=> b!3081740 (= e!1927638 e!1927639)))

(declare-fun res!1264383 () Bool)

(assert (=> b!3081740 (= res!1264383 (not ((_ is EmptyLang!9539) lt!1053311)))))

(assert (=> b!3081740 (=> (not res!1264383) (not e!1927639))))

(declare-fun b!3081741 () Bool)

(assert (=> b!3081741 (= e!1927641 e!1927640)))

(declare-fun res!1264382 () Bool)

(assert (=> b!3081741 (= res!1264382 (matchRSpec!1676 (regOne!19591 lt!1053311) s!11993))))

(assert (=> b!3081741 (=> res!1264382 e!1927640)))

(declare-fun b!3081742 () Bool)

(declare-fun res!1264384 () Bool)

(declare-fun e!1927636 () Bool)

(assert (=> b!3081742 (=> res!1264384 e!1927636)))

(assert (=> b!3081742 (= res!1264384 call!214853)))

(declare-fun e!1927635 () Bool)

(assert (=> b!3081742 (= e!1927635 e!1927636)))

(assert (=> b!3081743 (= e!1927635 call!214854)))

(declare-fun b!3081744 () Bool)

(declare-fun c!513184 () Bool)

(assert (=> b!3081744 (= c!513184 ((_ is ElementMatch!9539) lt!1053311))))

(assert (=> b!3081744 (= e!1927639 e!1927637)))

(declare-fun b!3081745 () Bool)

(assert (=> b!3081745 (= e!1927641 e!1927635)))

(assert (=> b!3081745 (= c!513187 ((_ is Star!9539) lt!1053311))))

(assert (=> b!3081746 (= e!1927636 call!214854)))

(assert (= (and d!857579 c!513185) b!3081737))

(assert (= (and d!857579 (not c!513185)) b!3081740))

(assert (= (and b!3081740 res!1264383) b!3081744))

(assert (= (and b!3081744 c!513184) b!3081739))

(assert (= (and b!3081744 (not c!513184)) b!3081736))

(assert (= (and b!3081736 c!513186) b!3081741))

(assert (= (and b!3081736 (not c!513186)) b!3081745))

(assert (= (and b!3081741 (not res!1264382)) b!3081738))

(assert (= (and b!3081745 c!513187) b!3081742))

(assert (= (and b!3081745 (not c!513187)) b!3081743))

(assert (= (and b!3081742 (not res!1264384)) b!3081746))

(assert (= (or b!3081746 b!3081743) bm!214849))

(assert (= (or b!3081737 b!3081742) bm!214848))

(assert (=> bm!214848 m!3390261))

(declare-fun m!3390433 () Bool)

(assert (=> b!3081738 m!3390433))

(declare-fun m!3390435 () Bool)

(assert (=> bm!214849 m!3390435))

(declare-fun m!3390437 () Bool)

(assert (=> b!3081741 m!3390437))

(assert (=> b!3081286 d!857579))

(declare-fun d!857581 () Bool)

(assert (=> d!857581 (= (matchR!4421 lt!1053311 s!11993) (matchRSpec!1676 lt!1053311 s!11993))))

(declare-fun lt!1053352 () Unit!49517)

(assert (=> d!857581 (= lt!1053352 (choose!18266 lt!1053311 s!11993))))

(assert (=> d!857581 (validRegex!4272 lt!1053311)))

(assert (=> d!857581 (= (mainMatchTheorem!1676 lt!1053311 s!11993) lt!1053352)))

(declare-fun bs!532923 () Bool)

(assert (= bs!532923 d!857581))

(assert (=> bs!532923 m!3390269))

(assert (=> bs!532923 m!3390275))

(declare-fun m!3390439 () Bool)

(assert (=> bs!532923 m!3390439))

(assert (=> bs!532923 m!3390421))

(assert (=> b!3081286 d!857581))

(declare-fun d!857583 () Bool)

(assert (=> d!857583 (= (isEmptyExpr!596 lt!1053308) ((_ is EmptyExpr!9539) lt!1053308))))

(assert (=> b!3081285 d!857583))

(declare-fun d!857585 () Bool)

(assert (=> d!857585 (= (isEmptyExpr!596 lt!1053312) ((_ is EmptyExpr!9539) lt!1053312))))

(assert (=> b!3081280 d!857585))

(declare-fun d!857587 () Bool)

(assert (=> d!857587 (= (isEmptyLang!590 lt!1053308) ((_ is EmptyLang!9539) lt!1053308))))

(assert (=> b!3081290 d!857587))

(declare-fun b!3081797 () Bool)

(declare-fun e!1927676 () Regex!9539)

(assert (=> b!3081797 (= e!1927676 EmptyLang!9539)))

(declare-fun b!3081798 () Bool)

(declare-fun c!513215 () Bool)

(declare-fun e!1927674 () Bool)

(assert (=> b!3081798 (= c!513215 e!1927674)))

(declare-fun res!1264392 () Bool)

(assert (=> b!3081798 (=> res!1264392 e!1927674)))

(declare-fun call!214870 () Bool)

(assert (=> b!3081798 (= res!1264392 call!214870)))

(declare-fun lt!1053367 () Regex!9539)

(declare-fun call!214875 () Regex!9539)

(assert (=> b!3081798 (= lt!1053367 call!214875)))

(declare-fun e!1927683 () Regex!9539)

(declare-fun e!1927677 () Regex!9539)

(assert (=> b!3081798 (= e!1927683 e!1927677)))

(declare-fun b!3081799 () Bool)

(declare-fun e!1927681 () Regex!9539)

(assert (=> b!3081799 (= e!1927681 EmptyExpr!9539)))

(declare-fun b!3081800 () Bool)

(declare-fun e!1927673 () Regex!9539)

(declare-fun lt!1053368 () Regex!9539)

(assert (=> b!3081800 (= e!1927673 lt!1053368)))

(declare-fun bm!214864 () Bool)

(declare-fun c!513217 () Bool)

(declare-fun call!214869 () Bool)

(assert (=> bm!214864 (= call!214869 (isEmptyExpr!596 (ite c!513217 lt!1053367 lt!1053368)))))

(declare-fun b!3081801 () Bool)

(declare-fun e!1927671 () Regex!9539)

(declare-fun lt!1053366 () Regex!9539)

(assert (=> b!3081801 (= e!1927671 lt!1053366)))

(declare-fun b!3081802 () Bool)

(assert (=> b!3081802 (= e!1927674 call!214869)))

(declare-fun b!3081803 () Bool)

(declare-fun e!1927682 () Regex!9539)

(assert (=> b!3081803 (= e!1927682 EmptyLang!9539)))

(declare-fun b!3081804 () Bool)

(declare-fun c!513212 () Bool)

(declare-fun lt!1053370 () Regex!9539)

(assert (=> b!3081804 (= c!513212 (isEmptyExpr!596 lt!1053370))))

(assert (=> b!3081804 (= e!1927676 e!1927673)))

(declare-fun bm!214865 () Bool)

(declare-fun c!513210 () Bool)

(assert (=> bm!214865 (= call!214870 (isEmptyLang!590 (ite c!513217 lt!1053367 (ite c!513210 lt!1053366 lt!1053368))))))

(declare-fun bm!214866 () Bool)

(assert (=> bm!214866 (= call!214875 (simplify!494 (ite c!513217 (reg!9868 (regTwo!19590 r!17423)) (ite c!513210 (regTwo!19591 (regTwo!19590 r!17423)) (regOne!19590 (regTwo!19590 r!17423))))))))

(declare-fun b!3081805 () Bool)

(declare-fun e!1927672 () Regex!9539)

(assert (=> b!3081805 (= e!1927672 (Concat!14860 lt!1053370 lt!1053368))))

(declare-fun b!3081806 () Bool)

(assert (=> b!3081806 (= e!1927677 (Star!9539 lt!1053367))))

(declare-fun call!214872 () Bool)

(declare-fun bm!214867 () Bool)

(declare-fun lt!1053369 () Regex!9539)

(assert (=> bm!214867 (= call!214872 (isEmptyLang!590 (ite c!513210 lt!1053369 lt!1053370)))))

(declare-fun b!3081807 () Bool)

(declare-fun e!1927678 () Regex!9539)

(assert (=> b!3081807 (= e!1927682 e!1927678)))

(declare-fun c!513218 () Bool)

(assert (=> b!3081807 (= c!513218 ((_ is ElementMatch!9539) (regTwo!19590 r!17423)))))

(declare-fun bm!214868 () Bool)

(declare-fun call!214873 () Regex!9539)

(assert (=> bm!214868 (= call!214873 call!214875)))

(declare-fun b!3081808 () Bool)

(declare-fun e!1927675 () Regex!9539)

(assert (=> b!3081808 (= e!1927675 e!1927676)))

(assert (=> b!3081808 (= lt!1053370 call!214873)))

(declare-fun call!214871 () Regex!9539)

(assert (=> b!3081808 (= lt!1053368 call!214871)))

(declare-fun res!1264391 () Bool)

(assert (=> b!3081808 (= res!1264391 call!214872)))

(declare-fun e!1927670 () Bool)

(assert (=> b!3081808 (=> res!1264391 e!1927670)))

(declare-fun c!513220 () Bool)

(assert (=> b!3081808 (= c!513220 e!1927670)))

(declare-fun b!3081809 () Bool)

(assert (=> b!3081809 (= e!1927672 lt!1053370)))

(declare-fun b!3081810 () Bool)

(declare-fun c!513214 () Bool)

(declare-fun call!214874 () Bool)

(assert (=> b!3081810 (= c!513214 call!214874)))

(declare-fun e!1927679 () Regex!9539)

(assert (=> b!3081810 (= e!1927671 e!1927679)))

(declare-fun b!3081811 () Bool)

(assert (=> b!3081811 (= e!1927679 (Union!9539 lt!1053369 lt!1053366))))

(declare-fun b!3081812 () Bool)

(assert (=> b!3081812 (= e!1927673 e!1927672)))

(declare-fun c!513213 () Bool)

(assert (=> b!3081812 (= c!513213 call!214869)))

(declare-fun b!3081813 () Bool)

(assert (=> b!3081813 (= e!1927681 e!1927683)))

(assert (=> b!3081813 (= c!513217 ((_ is Star!9539) (regTwo!19590 r!17423)))))

(declare-fun b!3081814 () Bool)

(declare-fun c!513219 () Bool)

(assert (=> b!3081814 (= c!513219 ((_ is EmptyExpr!9539) (regTwo!19590 r!17423)))))

(assert (=> b!3081814 (= e!1927678 e!1927681)))

(declare-fun b!3081815 () Bool)

(assert (=> b!3081815 (= e!1927670 call!214874)))

(declare-fun d!857589 () Bool)

(declare-fun e!1927680 () Bool)

(assert (=> d!857589 e!1927680))

(declare-fun res!1264393 () Bool)

(assert (=> d!857589 (=> (not res!1264393) (not e!1927680))))

(declare-fun lt!1053365 () Regex!9539)

(assert (=> d!857589 (= res!1264393 (validRegex!4272 lt!1053365))))

(assert (=> d!857589 (= lt!1053365 e!1927682)))

(declare-fun c!513216 () Bool)

(assert (=> d!857589 (= c!513216 ((_ is EmptyLang!9539) (regTwo!19590 r!17423)))))

(assert (=> d!857589 (validRegex!4272 (regTwo!19590 r!17423))))

(assert (=> d!857589 (= (simplify!494 (regTwo!19590 r!17423)) lt!1053365)))

(declare-fun b!3081816 () Bool)

(assert (=> b!3081816 (= e!1927678 (regTwo!19590 r!17423))))

(declare-fun bm!214869 () Bool)

(assert (=> bm!214869 (= call!214871 (simplify!494 (ite c!513210 (regOne!19591 (regTwo!19590 r!17423)) (regTwo!19590 (regTwo!19590 r!17423)))))))

(declare-fun b!3081817 () Bool)

(assert (=> b!3081817 (= e!1927680 (= (nullable!3185 lt!1053365) (nullable!3185 (regTwo!19590 r!17423))))))

(declare-fun b!3081818 () Bool)

(assert (=> b!3081818 (= e!1927675 e!1927671)))

(assert (=> b!3081818 (= lt!1053369 call!214871)))

(assert (=> b!3081818 (= lt!1053366 call!214873)))

(declare-fun c!513211 () Bool)

(assert (=> b!3081818 (= c!513211 call!214872)))

(declare-fun bm!214870 () Bool)

(assert (=> bm!214870 (= call!214874 call!214870)))

(declare-fun b!3081819 () Bool)

(assert (=> b!3081819 (= e!1927677 EmptyExpr!9539)))

(declare-fun b!3081820 () Bool)

(assert (=> b!3081820 (= e!1927679 lt!1053369)))

(declare-fun b!3081821 () Bool)

(assert (=> b!3081821 (= c!513210 ((_ is Union!9539) (regTwo!19590 r!17423)))))

(assert (=> b!3081821 (= e!1927683 e!1927675)))

(assert (= (and d!857589 c!513216) b!3081803))

(assert (= (and d!857589 (not c!513216)) b!3081807))

(assert (= (and b!3081807 c!513218) b!3081816))

(assert (= (and b!3081807 (not c!513218)) b!3081814))

(assert (= (and b!3081814 c!513219) b!3081799))

(assert (= (and b!3081814 (not c!513219)) b!3081813))

(assert (= (and b!3081813 c!513217) b!3081798))

(assert (= (and b!3081813 (not c!513217)) b!3081821))

(assert (= (and b!3081798 (not res!1264392)) b!3081802))

(assert (= (and b!3081798 c!513215) b!3081819))

(assert (= (and b!3081798 (not c!513215)) b!3081806))

(assert (= (and b!3081821 c!513210) b!3081818))

(assert (= (and b!3081821 (not c!513210)) b!3081808))

(assert (= (and b!3081818 c!513211) b!3081801))

(assert (= (and b!3081818 (not c!513211)) b!3081810))

(assert (= (and b!3081810 c!513214) b!3081820))

(assert (= (and b!3081810 (not c!513214)) b!3081811))

(assert (= (and b!3081808 (not res!1264391)) b!3081815))

(assert (= (and b!3081808 c!513220) b!3081797))

(assert (= (and b!3081808 (not c!513220)) b!3081804))

(assert (= (and b!3081804 c!513212) b!3081800))

(assert (= (and b!3081804 (not c!513212)) b!3081812))

(assert (= (and b!3081812 c!513213) b!3081809))

(assert (= (and b!3081812 (not c!513213)) b!3081805))

(assert (= (or b!3081818 b!3081808) bm!214869))

(assert (= (or b!3081818 b!3081808) bm!214868))

(assert (= (or b!3081810 b!3081815) bm!214870))

(assert (= (or b!3081818 b!3081808) bm!214867))

(assert (= (or b!3081802 b!3081812) bm!214864))

(assert (= (or b!3081798 bm!214868) bm!214866))

(assert (= (or b!3081798 bm!214870) bm!214865))

(assert (= (and d!857589 res!1264393) b!3081817))

(declare-fun m!3390441 () Bool)

(assert (=> b!3081804 m!3390441))

(declare-fun m!3390443 () Bool)

(assert (=> bm!214864 m!3390443))

(declare-fun m!3390445 () Bool)

(assert (=> bm!214869 m!3390445))

(declare-fun m!3390447 () Bool)

(assert (=> bm!214865 m!3390447))

(declare-fun m!3390449 () Bool)

(assert (=> d!857589 m!3390449))

(declare-fun m!3390451 () Bool)

(assert (=> d!857589 m!3390451))

(declare-fun m!3390453 () Bool)

(assert (=> bm!214867 m!3390453))

(declare-fun m!3390455 () Bool)

(assert (=> b!3081817 m!3390455))

(declare-fun m!3390457 () Bool)

(assert (=> b!3081817 m!3390457))

(declare-fun m!3390459 () Bool)

(assert (=> bm!214866 m!3390459))

(assert (=> b!3081290 d!857589))

(declare-fun b!3081822 () Bool)

(declare-fun e!1927690 () Regex!9539)

(assert (=> b!3081822 (= e!1927690 EmptyLang!9539)))

(declare-fun b!3081823 () Bool)

(declare-fun c!513226 () Bool)

(declare-fun e!1927688 () Bool)

(assert (=> b!3081823 (= c!513226 e!1927688)))

(declare-fun res!1264395 () Bool)

(assert (=> b!3081823 (=> res!1264395 e!1927688)))

(declare-fun call!214877 () Bool)

(assert (=> b!3081823 (= res!1264395 call!214877)))

(declare-fun lt!1053373 () Regex!9539)

(declare-fun call!214882 () Regex!9539)

(assert (=> b!3081823 (= lt!1053373 call!214882)))

(declare-fun e!1927697 () Regex!9539)

(declare-fun e!1927691 () Regex!9539)

(assert (=> b!3081823 (= e!1927697 e!1927691)))

(declare-fun b!3081824 () Bool)

(declare-fun e!1927695 () Regex!9539)

(assert (=> b!3081824 (= e!1927695 EmptyExpr!9539)))

(declare-fun b!3081825 () Bool)

(declare-fun e!1927687 () Regex!9539)

(declare-fun lt!1053374 () Regex!9539)

(assert (=> b!3081825 (= e!1927687 lt!1053374)))

(declare-fun c!513228 () Bool)

(declare-fun call!214876 () Bool)

(declare-fun bm!214871 () Bool)

(assert (=> bm!214871 (= call!214876 (isEmptyExpr!596 (ite c!513228 lt!1053373 lt!1053374)))))

(declare-fun b!3081826 () Bool)

(declare-fun e!1927685 () Regex!9539)

(declare-fun lt!1053372 () Regex!9539)

(assert (=> b!3081826 (= e!1927685 lt!1053372)))

(declare-fun b!3081827 () Bool)

(assert (=> b!3081827 (= e!1927688 call!214876)))

(declare-fun b!3081828 () Bool)

(declare-fun e!1927696 () Regex!9539)

(assert (=> b!3081828 (= e!1927696 EmptyLang!9539)))

(declare-fun b!3081829 () Bool)

(declare-fun c!513223 () Bool)

(declare-fun lt!1053376 () Regex!9539)

(assert (=> b!3081829 (= c!513223 (isEmptyExpr!596 lt!1053376))))

(assert (=> b!3081829 (= e!1927690 e!1927687)))

(declare-fun bm!214872 () Bool)

(declare-fun c!513221 () Bool)

(assert (=> bm!214872 (= call!214877 (isEmptyLang!590 (ite c!513228 lt!1053373 (ite c!513221 lt!1053372 lt!1053374))))))

(declare-fun bm!214873 () Bool)

(assert (=> bm!214873 (= call!214882 (simplify!494 (ite c!513228 (reg!9868 (regOne!19590 r!17423)) (ite c!513221 (regTwo!19591 (regOne!19590 r!17423)) (regOne!19590 (regOne!19590 r!17423))))))))

(declare-fun b!3081830 () Bool)

(declare-fun e!1927686 () Regex!9539)

(assert (=> b!3081830 (= e!1927686 (Concat!14860 lt!1053376 lt!1053374))))

(declare-fun b!3081831 () Bool)

(assert (=> b!3081831 (= e!1927691 (Star!9539 lt!1053373))))

(declare-fun lt!1053375 () Regex!9539)

(declare-fun call!214879 () Bool)

(declare-fun bm!214874 () Bool)

(assert (=> bm!214874 (= call!214879 (isEmptyLang!590 (ite c!513221 lt!1053375 lt!1053376)))))

(declare-fun b!3081832 () Bool)

(declare-fun e!1927692 () Regex!9539)

(assert (=> b!3081832 (= e!1927696 e!1927692)))

(declare-fun c!513229 () Bool)

(assert (=> b!3081832 (= c!513229 ((_ is ElementMatch!9539) (regOne!19590 r!17423)))))

(declare-fun bm!214875 () Bool)

(declare-fun call!214880 () Regex!9539)

(assert (=> bm!214875 (= call!214880 call!214882)))

(declare-fun b!3081833 () Bool)

(declare-fun e!1927689 () Regex!9539)

(assert (=> b!3081833 (= e!1927689 e!1927690)))

(assert (=> b!3081833 (= lt!1053376 call!214880)))

(declare-fun call!214878 () Regex!9539)

(assert (=> b!3081833 (= lt!1053374 call!214878)))

(declare-fun res!1264394 () Bool)

(assert (=> b!3081833 (= res!1264394 call!214879)))

(declare-fun e!1927684 () Bool)

(assert (=> b!3081833 (=> res!1264394 e!1927684)))

(declare-fun c!513231 () Bool)

(assert (=> b!3081833 (= c!513231 e!1927684)))

(declare-fun b!3081834 () Bool)

(assert (=> b!3081834 (= e!1927686 lt!1053376)))

(declare-fun b!3081835 () Bool)

(declare-fun c!513225 () Bool)

(declare-fun call!214881 () Bool)

(assert (=> b!3081835 (= c!513225 call!214881)))

(declare-fun e!1927693 () Regex!9539)

(assert (=> b!3081835 (= e!1927685 e!1927693)))

(declare-fun b!3081836 () Bool)

(assert (=> b!3081836 (= e!1927693 (Union!9539 lt!1053375 lt!1053372))))

(declare-fun b!3081837 () Bool)

(assert (=> b!3081837 (= e!1927687 e!1927686)))

(declare-fun c!513224 () Bool)

(assert (=> b!3081837 (= c!513224 call!214876)))

(declare-fun b!3081838 () Bool)

(assert (=> b!3081838 (= e!1927695 e!1927697)))

(assert (=> b!3081838 (= c!513228 ((_ is Star!9539) (regOne!19590 r!17423)))))

(declare-fun b!3081839 () Bool)

(declare-fun c!513230 () Bool)

(assert (=> b!3081839 (= c!513230 ((_ is EmptyExpr!9539) (regOne!19590 r!17423)))))

(assert (=> b!3081839 (= e!1927692 e!1927695)))

(declare-fun b!3081840 () Bool)

(assert (=> b!3081840 (= e!1927684 call!214881)))

(declare-fun d!857591 () Bool)

(declare-fun e!1927694 () Bool)

(assert (=> d!857591 e!1927694))

(declare-fun res!1264396 () Bool)

(assert (=> d!857591 (=> (not res!1264396) (not e!1927694))))

(declare-fun lt!1053371 () Regex!9539)

(assert (=> d!857591 (= res!1264396 (validRegex!4272 lt!1053371))))

(assert (=> d!857591 (= lt!1053371 e!1927696)))

(declare-fun c!513227 () Bool)

(assert (=> d!857591 (= c!513227 ((_ is EmptyLang!9539) (regOne!19590 r!17423)))))

(assert (=> d!857591 (validRegex!4272 (regOne!19590 r!17423))))

(assert (=> d!857591 (= (simplify!494 (regOne!19590 r!17423)) lt!1053371)))

(declare-fun b!3081841 () Bool)

(assert (=> b!3081841 (= e!1927692 (regOne!19590 r!17423))))

(declare-fun bm!214876 () Bool)

(assert (=> bm!214876 (= call!214878 (simplify!494 (ite c!513221 (regOne!19591 (regOne!19590 r!17423)) (regTwo!19590 (regOne!19590 r!17423)))))))

(declare-fun b!3081842 () Bool)

(assert (=> b!3081842 (= e!1927694 (= (nullable!3185 lt!1053371) (nullable!3185 (regOne!19590 r!17423))))))

(declare-fun b!3081843 () Bool)

(assert (=> b!3081843 (= e!1927689 e!1927685)))

(assert (=> b!3081843 (= lt!1053375 call!214878)))

(assert (=> b!3081843 (= lt!1053372 call!214880)))

(declare-fun c!513222 () Bool)

(assert (=> b!3081843 (= c!513222 call!214879)))

(declare-fun bm!214877 () Bool)

(assert (=> bm!214877 (= call!214881 call!214877)))

(declare-fun b!3081844 () Bool)

(assert (=> b!3081844 (= e!1927691 EmptyExpr!9539)))

(declare-fun b!3081845 () Bool)

(assert (=> b!3081845 (= e!1927693 lt!1053375)))

(declare-fun b!3081846 () Bool)

(assert (=> b!3081846 (= c!513221 ((_ is Union!9539) (regOne!19590 r!17423)))))

(assert (=> b!3081846 (= e!1927697 e!1927689)))

(assert (= (and d!857591 c!513227) b!3081828))

(assert (= (and d!857591 (not c!513227)) b!3081832))

(assert (= (and b!3081832 c!513229) b!3081841))

(assert (= (and b!3081832 (not c!513229)) b!3081839))

(assert (= (and b!3081839 c!513230) b!3081824))

(assert (= (and b!3081839 (not c!513230)) b!3081838))

(assert (= (and b!3081838 c!513228) b!3081823))

(assert (= (and b!3081838 (not c!513228)) b!3081846))

(assert (= (and b!3081823 (not res!1264395)) b!3081827))

(assert (= (and b!3081823 c!513226) b!3081844))

(assert (= (and b!3081823 (not c!513226)) b!3081831))

(assert (= (and b!3081846 c!513221) b!3081843))

(assert (= (and b!3081846 (not c!513221)) b!3081833))

(assert (= (and b!3081843 c!513222) b!3081826))

(assert (= (and b!3081843 (not c!513222)) b!3081835))

(assert (= (and b!3081835 c!513225) b!3081845))

(assert (= (and b!3081835 (not c!513225)) b!3081836))

(assert (= (and b!3081833 (not res!1264394)) b!3081840))

(assert (= (and b!3081833 c!513231) b!3081822))

(assert (= (and b!3081833 (not c!513231)) b!3081829))

(assert (= (and b!3081829 c!513223) b!3081825))

(assert (= (and b!3081829 (not c!513223)) b!3081837))

(assert (= (and b!3081837 c!513224) b!3081834))

(assert (= (and b!3081837 (not c!513224)) b!3081830))

(assert (= (or b!3081843 b!3081833) bm!214876))

(assert (= (or b!3081843 b!3081833) bm!214875))

(assert (= (or b!3081835 b!3081840) bm!214877))

(assert (= (or b!3081843 b!3081833) bm!214874))

(assert (= (or b!3081827 b!3081837) bm!214871))

(assert (= (or b!3081823 bm!214875) bm!214873))

(assert (= (or b!3081823 bm!214877) bm!214872))

(assert (= (and d!857591 res!1264396) b!3081842))

(declare-fun m!3390461 () Bool)

(assert (=> b!3081829 m!3390461))

(declare-fun m!3390463 () Bool)

(assert (=> bm!214871 m!3390463))

(declare-fun m!3390465 () Bool)

(assert (=> bm!214876 m!3390465))

(declare-fun m!3390467 () Bool)

(assert (=> bm!214872 m!3390467))

(declare-fun m!3390469 () Bool)

(assert (=> d!857591 m!3390469))

(declare-fun m!3390471 () Bool)

(assert (=> d!857591 m!3390471))

(declare-fun m!3390473 () Bool)

(assert (=> bm!214874 m!3390473))

(declare-fun m!3390475 () Bool)

(assert (=> b!3081842 m!3390475))

(declare-fun m!3390477 () Bool)

(assert (=> b!3081842 m!3390477))

(declare-fun m!3390479 () Bool)

(assert (=> bm!214873 m!3390479))

(assert (=> b!3081290 d!857591))

(declare-fun b!3081851 () Bool)

(declare-fun e!1927700 () Bool)

(declare-fun tp!970534 () Bool)

(assert (=> b!3081851 (= e!1927700 (and tp_is_empty!16641 tp!970534))))

(assert (=> b!3081293 (= tp!970489 e!1927700)))

(assert (= (and b!3081293 ((_ is Cons!35280) (t!234469 s!11993))) b!3081851))

(declare-fun b!3081864 () Bool)

(declare-fun e!1927703 () Bool)

(declare-fun tp!970549 () Bool)

(assert (=> b!3081864 (= e!1927703 tp!970549)))

(assert (=> b!3081287 (= tp!970493 e!1927703)))

(declare-fun b!3081863 () Bool)

(declare-fun tp!970546 () Bool)

(declare-fun tp!970545 () Bool)

(assert (=> b!3081863 (= e!1927703 (and tp!970546 tp!970545))))

(declare-fun b!3081862 () Bool)

(assert (=> b!3081862 (= e!1927703 tp_is_empty!16641)))

(declare-fun b!3081865 () Bool)

(declare-fun tp!970547 () Bool)

(declare-fun tp!970548 () Bool)

(assert (=> b!3081865 (= e!1927703 (and tp!970547 tp!970548))))

(assert (= (and b!3081287 ((_ is ElementMatch!9539) (regOne!19591 r!17423))) b!3081862))

(assert (= (and b!3081287 ((_ is Concat!14860) (regOne!19591 r!17423))) b!3081863))

(assert (= (and b!3081287 ((_ is Star!9539) (regOne!19591 r!17423))) b!3081864))

(assert (= (and b!3081287 ((_ is Union!9539) (regOne!19591 r!17423))) b!3081865))

(declare-fun b!3081868 () Bool)

(declare-fun e!1927704 () Bool)

(declare-fun tp!970554 () Bool)

(assert (=> b!3081868 (= e!1927704 tp!970554)))

(assert (=> b!3081287 (= tp!970488 e!1927704)))

(declare-fun b!3081867 () Bool)

(declare-fun tp!970551 () Bool)

(declare-fun tp!970550 () Bool)

(assert (=> b!3081867 (= e!1927704 (and tp!970551 tp!970550))))

(declare-fun b!3081866 () Bool)

(assert (=> b!3081866 (= e!1927704 tp_is_empty!16641)))

(declare-fun b!3081869 () Bool)

(declare-fun tp!970552 () Bool)

(declare-fun tp!970553 () Bool)

(assert (=> b!3081869 (= e!1927704 (and tp!970552 tp!970553))))

(assert (= (and b!3081287 ((_ is ElementMatch!9539) (regTwo!19591 r!17423))) b!3081866))

(assert (= (and b!3081287 ((_ is Concat!14860) (regTwo!19591 r!17423))) b!3081867))

(assert (= (and b!3081287 ((_ is Star!9539) (regTwo!19591 r!17423))) b!3081868))

(assert (= (and b!3081287 ((_ is Union!9539) (regTwo!19591 r!17423))) b!3081869))

(declare-fun b!3081872 () Bool)

(declare-fun e!1927705 () Bool)

(declare-fun tp!970559 () Bool)

(assert (=> b!3081872 (= e!1927705 tp!970559)))

(assert (=> b!3081289 (= tp!970490 e!1927705)))

(declare-fun b!3081871 () Bool)

(declare-fun tp!970556 () Bool)

(declare-fun tp!970555 () Bool)

(assert (=> b!3081871 (= e!1927705 (and tp!970556 tp!970555))))

(declare-fun b!3081870 () Bool)

(assert (=> b!3081870 (= e!1927705 tp_is_empty!16641)))

(declare-fun b!3081873 () Bool)

(declare-fun tp!970557 () Bool)

(declare-fun tp!970558 () Bool)

(assert (=> b!3081873 (= e!1927705 (and tp!970557 tp!970558))))

(assert (= (and b!3081289 ((_ is ElementMatch!9539) (regOne!19590 r!17423))) b!3081870))

(assert (= (and b!3081289 ((_ is Concat!14860) (regOne!19590 r!17423))) b!3081871))

(assert (= (and b!3081289 ((_ is Star!9539) (regOne!19590 r!17423))) b!3081872))

(assert (= (and b!3081289 ((_ is Union!9539) (regOne!19590 r!17423))) b!3081873))

(declare-fun b!3081876 () Bool)

(declare-fun e!1927706 () Bool)

(declare-fun tp!970564 () Bool)

(assert (=> b!3081876 (= e!1927706 tp!970564)))

(assert (=> b!3081289 (= tp!970492 e!1927706)))

(declare-fun b!3081875 () Bool)

(declare-fun tp!970561 () Bool)

(declare-fun tp!970560 () Bool)

(assert (=> b!3081875 (= e!1927706 (and tp!970561 tp!970560))))

(declare-fun b!3081874 () Bool)

(assert (=> b!3081874 (= e!1927706 tp_is_empty!16641)))

(declare-fun b!3081877 () Bool)

(declare-fun tp!970562 () Bool)

(declare-fun tp!970563 () Bool)

(assert (=> b!3081877 (= e!1927706 (and tp!970562 tp!970563))))

(assert (= (and b!3081289 ((_ is ElementMatch!9539) (regTwo!19590 r!17423))) b!3081874))

(assert (= (and b!3081289 ((_ is Concat!14860) (regTwo!19590 r!17423))) b!3081875))

(assert (= (and b!3081289 ((_ is Star!9539) (regTwo!19590 r!17423))) b!3081876))

(assert (= (and b!3081289 ((_ is Union!9539) (regTwo!19590 r!17423))) b!3081877))

(declare-fun b!3081880 () Bool)

(declare-fun e!1927707 () Bool)

(declare-fun tp!970569 () Bool)

(assert (=> b!3081880 (= e!1927707 tp!970569)))

(assert (=> b!3081284 (= tp!970491 e!1927707)))

(declare-fun b!3081879 () Bool)

(declare-fun tp!970566 () Bool)

(declare-fun tp!970565 () Bool)

(assert (=> b!3081879 (= e!1927707 (and tp!970566 tp!970565))))

(declare-fun b!3081878 () Bool)

(assert (=> b!3081878 (= e!1927707 tp_is_empty!16641)))

(declare-fun b!3081881 () Bool)

(declare-fun tp!970567 () Bool)

(declare-fun tp!970568 () Bool)

(assert (=> b!3081881 (= e!1927707 (and tp!970567 tp!970568))))

(assert (= (and b!3081284 ((_ is ElementMatch!9539) (reg!9868 r!17423))) b!3081878))

(assert (= (and b!3081284 ((_ is Concat!14860) (reg!9868 r!17423))) b!3081879))

(assert (= (and b!3081284 ((_ is Star!9539) (reg!9868 r!17423))) b!3081880))

(assert (= (and b!3081284 ((_ is Union!9539) (reg!9868 r!17423))) b!3081881))

(check-sat (not b!3081667) (not b!3081875) (not b!3081851) (not bm!214873) (not bm!214871) (not b!3081725) (not b!3081699) (not b!3081718) (not d!857581) (not b!3081675) (not bm!214840) (not bm!214839) (not b!3081864) (not bm!214864) (not b!3081622) tp_is_empty!16641 (not b!3081817) (not d!857575) (not b!3081876) (not bm!214876) (not b!3081804) (not b!3081871) (not b!3081669) (not d!857565) (not b!3081719) (not b!3081738) (not b!3081842) (not d!857563) (not b!3081863) (not b!3081873) (not bm!214846) (not b!3081741) (not b!3081715) (not bm!214848) (not bm!214869) (not bm!214828) (not b!3081829) (not b!3081663) (not bm!214827) (not b!3081881) (not b!3081867) (not bm!214872) (not b!3081865) (not b!3081872) (not b!3081708) (not d!857591) (not bm!214867) (not bm!214874) (not bm!214849) (not bm!214842) (not bm!214831) (not b!3081869) (not b!3081713) (not b!3081868) (not b!3081880) (not b!3081668) (not b!3081665) (not b!3081731) (not b!3081879) (not b!3081877) (not d!857589) (not bm!214847) (not bm!214844) (not b!3081717) (not bm!214843) (not bm!214866) (not bm!214865) (not b!3081625))
(check-sat)
