; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87026 () Bool)

(assert start!87026)

(declare-fun b!981161 () Bool)

(declare-fun e!631238 () Bool)

(declare-fun tp!299787 () Bool)

(declare-fun tp!299791 () Bool)

(assert (=> b!981161 (= e!631238 (and tp!299787 tp!299791))))

(declare-fun b!981162 () Bool)

(declare-fun tp!299792 () Bool)

(declare-fun tp!299788 () Bool)

(assert (=> b!981162 (= e!631238 (and tp!299792 tp!299788))))

(declare-fun b!981163 () Bool)

(declare-fun e!631237 () Bool)

(declare-fun tp_is_empty!5113 () Bool)

(declare-fun tp!299789 () Bool)

(assert (=> b!981163 (= e!631237 (and tp_is_empty!5113 tp!299789))))

(declare-fun res!445270 () Bool)

(declare-fun e!631236 () Bool)

(assert (=> start!87026 (=> (not res!445270) (not e!631236))))

(declare-datatypes ((C!6040 0))(
  ( (C!6041 (val!3268 Int)) )
))
(declare-datatypes ((Regex!2735 0))(
  ( (ElementMatch!2735 (c!160452 C!6040)) (Concat!4568 (regOne!5982 Regex!2735) (regTwo!5982 Regex!2735)) (EmptyExpr!2735) (Star!2735 (reg!3064 Regex!2735)) (EmptyLang!2735) (Union!2735 (regOne!5983 Regex!2735) (regTwo!5983 Regex!2735)) )
))
(declare-fun r!15766 () Regex!2735)

(declare-fun validRegex!1204 (Regex!2735) Bool)

(assert (=> start!87026 (= res!445270 (validRegex!1204 r!15766))))

(assert (=> start!87026 e!631236))

(assert (=> start!87026 e!631238))

(assert (=> start!87026 e!631237))

(declare-fun b!981164 () Bool)

(assert (=> b!981164 (= e!631238 tp_is_empty!5113)))

(declare-fun b!981165 () Bool)

(declare-fun e!631239 () Bool)

(assert (=> b!981165 (= e!631236 (not e!631239))))

(declare-fun res!445269 () Bool)

(assert (=> b!981165 (=> res!445269 e!631239)))

(declare-fun lt!350060 () Bool)

(get-info :version)

(assert (=> b!981165 (= res!445269 (or (not lt!350060) (and ((_ is Concat!4568) r!15766) ((_ is EmptyExpr!2735) (regOne!5982 r!15766))) (and ((_ is Concat!4568) r!15766) ((_ is EmptyExpr!2735) (regTwo!5982 r!15766))) (not ((_ is Concat!4568) r!15766))))))

(declare-datatypes ((List!9965 0))(
  ( (Nil!9949) (Cons!9949 (h!15350 C!6040) (t!101011 List!9965)) )
))
(declare-fun s!10566 () List!9965)

(declare-fun matchRSpec!534 (Regex!2735 List!9965) Bool)

(assert (=> b!981165 (= lt!350060 (matchRSpec!534 r!15766 s!10566))))

(declare-fun matchR!1271 (Regex!2735 List!9965) Bool)

(assert (=> b!981165 (= lt!350060 (matchR!1271 r!15766 s!10566))))

(declare-datatypes ((Unit!15129 0))(
  ( (Unit!15130) )
))
(declare-fun lt!350061 () Unit!15129)

(declare-fun mainMatchTheorem!534 (Regex!2735 List!9965) Unit!15129)

(assert (=> b!981165 (= lt!350061 (mainMatchTheorem!534 r!15766 s!10566))))

(declare-fun b!981166 () Bool)

(assert (=> b!981166 (= e!631239 (validRegex!1204 (regOne!5982 r!15766)))))

(declare-fun b!981167 () Bool)

(declare-fun tp!299790 () Bool)

(assert (=> b!981167 (= e!631238 tp!299790)))

(assert (= (and start!87026 res!445270) b!981165))

(assert (= (and b!981165 (not res!445269)) b!981166))

(assert (= (and start!87026 ((_ is ElementMatch!2735) r!15766)) b!981164))

(assert (= (and start!87026 ((_ is Concat!4568) r!15766)) b!981161))

(assert (= (and start!87026 ((_ is Star!2735) r!15766)) b!981167))

(assert (= (and start!87026 ((_ is Union!2735) r!15766)) b!981162))

(assert (= (and start!87026 ((_ is Cons!9949) s!10566)) b!981163))

(declare-fun m!1180359 () Bool)

(assert (=> start!87026 m!1180359))

(declare-fun m!1180361 () Bool)

(assert (=> b!981165 m!1180361))

(declare-fun m!1180363 () Bool)

(assert (=> b!981165 m!1180363))

(declare-fun m!1180365 () Bool)

(assert (=> b!981165 m!1180365))

(declare-fun m!1180367 () Bool)

(assert (=> b!981166 m!1180367))

(check-sat (not b!981162) tp_is_empty!5113 (not start!87026) (not b!981167) (not b!981166) (not b!981165) (not b!981163) (not b!981161))
(check-sat)
(get-model)

(declare-fun b!981204 () Bool)

(declare-fun e!631269 () Bool)

(declare-fun call!63096 () Bool)

(assert (=> b!981204 (= e!631269 call!63096)))

(declare-fun b!981205 () Bool)

(declare-fun e!631272 () Bool)

(assert (=> b!981205 (= e!631272 e!631269)))

(declare-fun res!445294 () Bool)

(declare-fun nullable!851 (Regex!2735) Bool)

(assert (=> b!981205 (= res!445294 (not (nullable!851 (reg!3064 r!15766))))))

(assert (=> b!981205 (=> (not res!445294) (not e!631269))))

(declare-fun b!981206 () Bool)

(declare-fun res!445292 () Bool)

(declare-fun e!631273 () Bool)

(assert (=> b!981206 (=> res!445292 e!631273)))

(assert (=> b!981206 (= res!445292 (not ((_ is Concat!4568) r!15766)))))

(declare-fun e!631270 () Bool)

(assert (=> b!981206 (= e!631270 e!631273)))

(declare-fun b!981207 () Bool)

(declare-fun e!631268 () Bool)

(assert (=> b!981207 (= e!631268 e!631272)))

(declare-fun c!160462 () Bool)

(assert (=> b!981207 (= c!160462 ((_ is Star!2735) r!15766))))

(declare-fun d!288307 () Bool)

(declare-fun res!445291 () Bool)

(assert (=> d!288307 (=> res!445291 e!631268)))

(assert (=> d!288307 (= res!445291 ((_ is ElementMatch!2735) r!15766))))

(assert (=> d!288307 (= (validRegex!1204 r!15766) e!631268)))

(declare-fun bm!63091 () Bool)

(declare-fun call!63098 () Bool)

(assert (=> bm!63091 (= call!63098 call!63096)))

(declare-fun b!981208 () Bool)

(declare-fun e!631271 () Bool)

(assert (=> b!981208 (= e!631273 e!631271)))

(declare-fun res!445293 () Bool)

(assert (=> b!981208 (=> (not res!445293) (not e!631271))))

(assert (=> b!981208 (= res!445293 call!63098)))

(declare-fun bm!63092 () Bool)

(declare-fun call!63097 () Bool)

(declare-fun c!160461 () Bool)

(assert (=> bm!63092 (= call!63097 (validRegex!1204 (ite c!160461 (regTwo!5983 r!15766) (regTwo!5982 r!15766))))))

(declare-fun b!981209 () Bool)

(assert (=> b!981209 (= e!631272 e!631270)))

(assert (=> b!981209 (= c!160461 ((_ is Union!2735) r!15766))))

(declare-fun b!981210 () Bool)

(assert (=> b!981210 (= e!631271 call!63097)))

(declare-fun bm!63093 () Bool)

(assert (=> bm!63093 (= call!63096 (validRegex!1204 (ite c!160462 (reg!3064 r!15766) (ite c!160461 (regOne!5983 r!15766) (regOne!5982 r!15766)))))))

(declare-fun b!981211 () Bool)

(declare-fun res!445295 () Bool)

(declare-fun e!631274 () Bool)

(assert (=> b!981211 (=> (not res!445295) (not e!631274))))

(assert (=> b!981211 (= res!445295 call!63098)))

(assert (=> b!981211 (= e!631270 e!631274)))

(declare-fun b!981212 () Bool)

(assert (=> b!981212 (= e!631274 call!63097)))

(assert (= (and d!288307 (not res!445291)) b!981207))

(assert (= (and b!981207 c!160462) b!981205))

(assert (= (and b!981207 (not c!160462)) b!981209))

(assert (= (and b!981205 res!445294) b!981204))

(assert (= (and b!981209 c!160461) b!981211))

(assert (= (and b!981209 (not c!160461)) b!981206))

(assert (= (and b!981211 res!445295) b!981212))

(assert (= (and b!981206 (not res!445292)) b!981208))

(assert (= (and b!981208 res!445293) b!981210))

(assert (= (or b!981212 b!981210) bm!63092))

(assert (= (or b!981211 b!981208) bm!63091))

(assert (= (or b!981204 bm!63091) bm!63093))

(declare-fun m!1180369 () Bool)

(assert (=> b!981205 m!1180369))

(declare-fun m!1180371 () Bool)

(assert (=> bm!63092 m!1180371))

(declare-fun m!1180373 () Bool)

(assert (=> bm!63093 m!1180373))

(assert (=> start!87026 d!288307))

(declare-fun b!981222 () Bool)

(declare-fun e!631283 () Bool)

(declare-fun call!63102 () Bool)

(assert (=> b!981222 (= e!631283 call!63102)))

(declare-fun b!981223 () Bool)

(declare-fun e!631286 () Bool)

(assert (=> b!981223 (= e!631286 e!631283)))

(declare-fun res!445304 () Bool)

(assert (=> b!981223 (= res!445304 (not (nullable!851 (reg!3064 (regOne!5982 r!15766)))))))

(assert (=> b!981223 (=> (not res!445304) (not e!631283))))

(declare-fun b!981224 () Bool)

(declare-fun res!445302 () Bool)

(declare-fun e!631287 () Bool)

(assert (=> b!981224 (=> res!445302 e!631287)))

(assert (=> b!981224 (= res!445302 (not ((_ is Concat!4568) (regOne!5982 r!15766))))))

(declare-fun e!631284 () Bool)

(assert (=> b!981224 (= e!631284 e!631287)))

(declare-fun b!981225 () Bool)

(declare-fun e!631282 () Bool)

(assert (=> b!981225 (= e!631282 e!631286)))

(declare-fun c!160466 () Bool)

(assert (=> b!981225 (= c!160466 ((_ is Star!2735) (regOne!5982 r!15766)))))

(declare-fun d!288311 () Bool)

(declare-fun res!445301 () Bool)

(assert (=> d!288311 (=> res!445301 e!631282)))

(assert (=> d!288311 (= res!445301 ((_ is ElementMatch!2735) (regOne!5982 r!15766)))))

(assert (=> d!288311 (= (validRegex!1204 (regOne!5982 r!15766)) e!631282)))

(declare-fun bm!63097 () Bool)

(declare-fun call!63104 () Bool)

(assert (=> bm!63097 (= call!63104 call!63102)))

(declare-fun b!981226 () Bool)

(declare-fun e!631285 () Bool)

(assert (=> b!981226 (= e!631287 e!631285)))

(declare-fun res!445303 () Bool)

(assert (=> b!981226 (=> (not res!445303) (not e!631285))))

(assert (=> b!981226 (= res!445303 call!63104)))

(declare-fun bm!63098 () Bool)

(declare-fun call!63103 () Bool)

(declare-fun c!160465 () Bool)

(assert (=> bm!63098 (= call!63103 (validRegex!1204 (ite c!160465 (regTwo!5983 (regOne!5982 r!15766)) (regTwo!5982 (regOne!5982 r!15766)))))))

(declare-fun b!981227 () Bool)

(assert (=> b!981227 (= e!631286 e!631284)))

(assert (=> b!981227 (= c!160465 ((_ is Union!2735) (regOne!5982 r!15766)))))

(declare-fun b!981228 () Bool)

(assert (=> b!981228 (= e!631285 call!63103)))

(declare-fun bm!63099 () Bool)

(assert (=> bm!63099 (= call!63102 (validRegex!1204 (ite c!160466 (reg!3064 (regOne!5982 r!15766)) (ite c!160465 (regOne!5983 (regOne!5982 r!15766)) (regOne!5982 (regOne!5982 r!15766))))))))

(declare-fun b!981229 () Bool)

(declare-fun res!445305 () Bool)

(declare-fun e!631288 () Bool)

(assert (=> b!981229 (=> (not res!445305) (not e!631288))))

(assert (=> b!981229 (= res!445305 call!63104)))

(assert (=> b!981229 (= e!631284 e!631288)))

(declare-fun b!981230 () Bool)

(assert (=> b!981230 (= e!631288 call!63103)))

(assert (= (and d!288311 (not res!445301)) b!981225))

(assert (= (and b!981225 c!160466) b!981223))

(assert (= (and b!981225 (not c!160466)) b!981227))

(assert (= (and b!981223 res!445304) b!981222))

(assert (= (and b!981227 c!160465) b!981229))

(assert (= (and b!981227 (not c!160465)) b!981224))

(assert (= (and b!981229 res!445305) b!981230))

(assert (= (and b!981224 (not res!445302)) b!981226))

(assert (= (and b!981226 res!445303) b!981228))

(assert (= (or b!981230 b!981228) bm!63098))

(assert (= (or b!981229 b!981226) bm!63097))

(assert (= (or b!981222 bm!63097) bm!63099))

(declare-fun m!1180381 () Bool)

(assert (=> b!981223 m!1180381))

(declare-fun m!1180383 () Bool)

(assert (=> bm!63098 m!1180383))

(declare-fun m!1180385 () Bool)

(assert (=> bm!63099 m!1180385))

(assert (=> b!981166 d!288311))

(declare-fun b!981401 () Bool)

(assert (=> b!981401 true))

(assert (=> b!981401 true))

(declare-fun bs!243940 () Bool)

(declare-fun b!981397 () Bool)

(assert (= bs!243940 (and b!981397 b!981401)))

(declare-fun lambda!34964 () Int)

(declare-fun lambda!34963 () Int)

(assert (=> bs!243940 (not (= lambda!34964 lambda!34963))))

(assert (=> b!981397 true))

(assert (=> b!981397 true))

(declare-fun b!981396 () Bool)

(declare-fun res!445372 () Bool)

(declare-fun e!631373 () Bool)

(assert (=> b!981396 (=> res!445372 e!631373)))

(declare-fun call!63121 () Bool)

(assert (=> b!981396 (= res!445372 call!63121)))

(declare-fun e!631376 () Bool)

(assert (=> b!981396 (= e!631376 e!631373)))

(declare-fun call!63122 () Bool)

(assert (=> b!981397 (= e!631376 call!63122)))

(declare-fun b!981398 () Bool)

(declare-fun e!631372 () Bool)

(declare-fun e!631371 () Bool)

(assert (=> b!981398 (= e!631372 e!631371)))

(declare-fun res!445370 () Bool)

(assert (=> b!981398 (= res!445370 (matchRSpec!534 (regOne!5983 r!15766) s!10566))))

(assert (=> b!981398 (=> res!445370 e!631371)))

(declare-fun b!981399 () Bool)

(assert (=> b!981399 (= e!631372 e!631376)))

(declare-fun c!160501 () Bool)

(assert (=> b!981399 (= c!160501 ((_ is Star!2735) r!15766))))

(declare-fun b!981400 () Bool)

(declare-fun c!160499 () Bool)

(assert (=> b!981400 (= c!160499 ((_ is Union!2735) r!15766))))

(declare-fun e!631375 () Bool)

(assert (=> b!981400 (= e!631375 e!631372)))

(assert (=> b!981401 (= e!631373 call!63122)))

(declare-fun d!288315 () Bool)

(declare-fun c!160500 () Bool)

(assert (=> d!288315 (= c!160500 ((_ is EmptyExpr!2735) r!15766))))

(declare-fun e!631374 () Bool)

(assert (=> d!288315 (= (matchRSpec!534 r!15766 s!10566) e!631374)))

(declare-fun b!981402 () Bool)

(declare-fun c!160498 () Bool)

(assert (=> b!981402 (= c!160498 ((_ is ElementMatch!2735) r!15766))))

(declare-fun e!631370 () Bool)

(assert (=> b!981402 (= e!631370 e!631375)))

(declare-fun bm!63116 () Bool)

(declare-fun Exists!472 (Int) Bool)

(assert (=> bm!63116 (= call!63122 (Exists!472 (ite c!160501 lambda!34963 lambda!34964)))))

(declare-fun b!981403 () Bool)

(assert (=> b!981403 (= e!631374 e!631370)))

(declare-fun res!445371 () Bool)

(assert (=> b!981403 (= res!445371 (not ((_ is EmptyLang!2735) r!15766)))))

(assert (=> b!981403 (=> (not res!445371) (not e!631370))))

(declare-fun bm!63117 () Bool)

(declare-fun isEmpty!6273 (List!9965) Bool)

(assert (=> bm!63117 (= call!63121 (isEmpty!6273 s!10566))))

(declare-fun b!981404 () Bool)

(assert (=> b!981404 (= e!631374 call!63121)))

(declare-fun b!981405 () Bool)

(assert (=> b!981405 (= e!631375 (= s!10566 (Cons!9949 (c!160452 r!15766) Nil!9949)))))

(declare-fun b!981406 () Bool)

(assert (=> b!981406 (= e!631371 (matchRSpec!534 (regTwo!5983 r!15766) s!10566))))

(assert (= (and d!288315 c!160500) b!981404))

(assert (= (and d!288315 (not c!160500)) b!981403))

(assert (= (and b!981403 res!445371) b!981402))

(assert (= (and b!981402 c!160498) b!981405))

(assert (= (and b!981402 (not c!160498)) b!981400))

(assert (= (and b!981400 c!160499) b!981398))

(assert (= (and b!981400 (not c!160499)) b!981399))

(assert (= (and b!981398 (not res!445370)) b!981406))

(assert (= (and b!981399 c!160501) b!981396))

(assert (= (and b!981399 (not c!160501)) b!981397))

(assert (= (and b!981396 (not res!445372)) b!981401))

(assert (= (or b!981401 b!981397) bm!63116))

(assert (= (or b!981404 b!981396) bm!63117))

(declare-fun m!1180415 () Bool)

(assert (=> b!981398 m!1180415))

(declare-fun m!1180417 () Bool)

(assert (=> bm!63116 m!1180417))

(declare-fun m!1180419 () Bool)

(assert (=> bm!63117 m!1180419))

(declare-fun m!1180421 () Bool)

(assert (=> b!981406 m!1180421))

(assert (=> b!981165 d!288315))

(declare-fun b!981439 () Bool)

(declare-fun res!445396 () Bool)

(declare-fun e!631396 () Bool)

(assert (=> b!981439 (=> (not res!445396) (not e!631396))))

(declare-fun call!63125 () Bool)

(assert (=> b!981439 (= res!445396 (not call!63125))))

(declare-fun b!981440 () Bool)

(declare-fun e!631395 () Bool)

(declare-fun lt!350070 () Bool)

(assert (=> b!981440 (= e!631395 (= lt!350070 call!63125))))

(declare-fun b!981441 () Bool)

(declare-fun e!631392 () Bool)

(declare-fun head!1810 (List!9965) C!6040)

(assert (=> b!981441 (= e!631392 (not (= (head!1810 s!10566) (c!160452 r!15766))))))

(declare-fun b!981442 () Bool)

(declare-fun e!631393 () Bool)

(assert (=> b!981442 (= e!631393 (not lt!350070))))

(declare-fun bm!63120 () Bool)

(assert (=> bm!63120 (= call!63125 (isEmpty!6273 s!10566))))

(declare-fun b!981443 () Bool)

(assert (=> b!981443 (= e!631396 (= (head!1810 s!10566) (c!160452 r!15766)))))

(declare-fun b!981444 () Bool)

(declare-fun res!445395 () Bool)

(declare-fun e!631397 () Bool)

(assert (=> b!981444 (=> res!445395 e!631397)))

(assert (=> b!981444 (= res!445395 (not ((_ is ElementMatch!2735) r!15766)))))

(assert (=> b!981444 (= e!631393 e!631397)))

(declare-fun b!981445 () Bool)

(declare-fun e!631391 () Bool)

(assert (=> b!981445 (= e!631391 e!631392)))

(declare-fun res!445394 () Bool)

(assert (=> b!981445 (=> res!445394 e!631392)))

(assert (=> b!981445 (= res!445394 call!63125)))

(declare-fun b!981446 () Bool)

(declare-fun res!445390 () Bool)

(assert (=> b!981446 (=> (not res!445390) (not e!631396))))

(declare-fun tail!1372 (List!9965) List!9965)

(assert (=> b!981446 (= res!445390 (isEmpty!6273 (tail!1372 s!10566)))))

(declare-fun b!981447 () Bool)

(declare-fun res!445392 () Bool)

(assert (=> b!981447 (=> res!445392 e!631397)))

(assert (=> b!981447 (= res!445392 e!631396)))

(declare-fun res!445391 () Bool)

(assert (=> b!981447 (=> (not res!445391) (not e!631396))))

(assert (=> b!981447 (= res!445391 lt!350070)))

(declare-fun b!981448 () Bool)

(declare-fun e!631394 () Bool)

(assert (=> b!981448 (= e!631394 (nullable!851 r!15766))))

(declare-fun b!981449 () Bool)

(declare-fun res!445389 () Bool)

(assert (=> b!981449 (=> res!445389 e!631392)))

(assert (=> b!981449 (= res!445389 (not (isEmpty!6273 (tail!1372 s!10566))))))

(declare-fun b!981450 () Bool)

(declare-fun derivativeStep!657 (Regex!2735 C!6040) Regex!2735)

(assert (=> b!981450 (= e!631394 (matchR!1271 (derivativeStep!657 r!15766 (head!1810 s!10566)) (tail!1372 s!10566)))))

(declare-fun d!288323 () Bool)

(assert (=> d!288323 e!631395))

(declare-fun c!160508 () Bool)

(assert (=> d!288323 (= c!160508 ((_ is EmptyExpr!2735) r!15766))))

(assert (=> d!288323 (= lt!350070 e!631394)))

(declare-fun c!160510 () Bool)

(assert (=> d!288323 (= c!160510 (isEmpty!6273 s!10566))))

(assert (=> d!288323 (validRegex!1204 r!15766)))

(assert (=> d!288323 (= (matchR!1271 r!15766 s!10566) lt!350070)))

(declare-fun b!981451 () Bool)

(assert (=> b!981451 (= e!631395 e!631393)))

(declare-fun c!160509 () Bool)

(assert (=> b!981451 (= c!160509 ((_ is EmptyLang!2735) r!15766))))

(declare-fun b!981452 () Bool)

(assert (=> b!981452 (= e!631397 e!631391)))

(declare-fun res!445393 () Bool)

(assert (=> b!981452 (=> (not res!445393) (not e!631391))))

(assert (=> b!981452 (= res!445393 (not lt!350070))))

(assert (= (and d!288323 c!160510) b!981448))

(assert (= (and d!288323 (not c!160510)) b!981450))

(assert (= (and d!288323 c!160508) b!981440))

(assert (= (and d!288323 (not c!160508)) b!981451))

(assert (= (and b!981451 c!160509) b!981442))

(assert (= (and b!981451 (not c!160509)) b!981444))

(assert (= (and b!981444 (not res!445395)) b!981447))

(assert (= (and b!981447 res!445391) b!981439))

(assert (= (and b!981439 res!445396) b!981446))

(assert (= (and b!981446 res!445390) b!981443))

(assert (= (and b!981447 (not res!445392)) b!981452))

(assert (= (and b!981452 res!445393) b!981445))

(assert (= (and b!981445 (not res!445394)) b!981449))

(assert (= (and b!981449 (not res!445389)) b!981441))

(assert (= (or b!981440 b!981439 b!981445) bm!63120))

(declare-fun m!1180423 () Bool)

(assert (=> b!981449 m!1180423))

(assert (=> b!981449 m!1180423))

(declare-fun m!1180425 () Bool)

(assert (=> b!981449 m!1180425))

(declare-fun m!1180427 () Bool)

(assert (=> b!981441 m!1180427))

(declare-fun m!1180429 () Bool)

(assert (=> b!981448 m!1180429))

(assert (=> d!288323 m!1180419))

(assert (=> d!288323 m!1180359))

(assert (=> b!981446 m!1180423))

(assert (=> b!981446 m!1180423))

(assert (=> b!981446 m!1180425))

(assert (=> bm!63120 m!1180419))

(assert (=> b!981443 m!1180427))

(assert (=> b!981450 m!1180427))

(assert (=> b!981450 m!1180427))

(declare-fun m!1180431 () Bool)

(assert (=> b!981450 m!1180431))

(assert (=> b!981450 m!1180423))

(assert (=> b!981450 m!1180431))

(assert (=> b!981450 m!1180423))

(declare-fun m!1180433 () Bool)

(assert (=> b!981450 m!1180433))

(assert (=> b!981165 d!288323))

(declare-fun d!288325 () Bool)

(assert (=> d!288325 (= (matchR!1271 r!15766 s!10566) (matchRSpec!534 r!15766 s!10566))))

(declare-fun lt!350073 () Unit!15129)

(declare-fun choose!6221 (Regex!2735 List!9965) Unit!15129)

(assert (=> d!288325 (= lt!350073 (choose!6221 r!15766 s!10566))))

(assert (=> d!288325 (validRegex!1204 r!15766)))

(assert (=> d!288325 (= (mainMatchTheorem!534 r!15766 s!10566) lt!350073)))

(declare-fun bs!243941 () Bool)

(assert (= bs!243941 d!288325))

(assert (=> bs!243941 m!1180363))

(assert (=> bs!243941 m!1180361))

(declare-fun m!1180435 () Bool)

(assert (=> bs!243941 m!1180435))

(assert (=> bs!243941 m!1180359))

(assert (=> b!981165 d!288325))

(declare-fun b!981466 () Bool)

(declare-fun e!631400 () Bool)

(declare-fun tp!299844 () Bool)

(declare-fun tp!299843 () Bool)

(assert (=> b!981466 (= e!631400 (and tp!299844 tp!299843))))

(declare-fun b!981464 () Bool)

(declare-fun tp!299845 () Bool)

(declare-fun tp!299841 () Bool)

(assert (=> b!981464 (= e!631400 (and tp!299845 tp!299841))))

(declare-fun b!981463 () Bool)

(assert (=> b!981463 (= e!631400 tp_is_empty!5113)))

(assert (=> b!981161 (= tp!299787 e!631400)))

(declare-fun b!981465 () Bool)

(declare-fun tp!299842 () Bool)

(assert (=> b!981465 (= e!631400 tp!299842)))

(assert (= (and b!981161 ((_ is ElementMatch!2735) (regOne!5982 r!15766))) b!981463))

(assert (= (and b!981161 ((_ is Concat!4568) (regOne!5982 r!15766))) b!981464))

(assert (= (and b!981161 ((_ is Star!2735) (regOne!5982 r!15766))) b!981465))

(assert (= (and b!981161 ((_ is Union!2735) (regOne!5982 r!15766))) b!981466))

(declare-fun b!981470 () Bool)

(declare-fun e!631401 () Bool)

(declare-fun tp!299849 () Bool)

(declare-fun tp!299848 () Bool)

(assert (=> b!981470 (= e!631401 (and tp!299849 tp!299848))))

(declare-fun b!981468 () Bool)

(declare-fun tp!299850 () Bool)

(declare-fun tp!299846 () Bool)

(assert (=> b!981468 (= e!631401 (and tp!299850 tp!299846))))

(declare-fun b!981467 () Bool)

(assert (=> b!981467 (= e!631401 tp_is_empty!5113)))

(assert (=> b!981161 (= tp!299791 e!631401)))

(declare-fun b!981469 () Bool)

(declare-fun tp!299847 () Bool)

(assert (=> b!981469 (= e!631401 tp!299847)))

(assert (= (and b!981161 ((_ is ElementMatch!2735) (regTwo!5982 r!15766))) b!981467))

(assert (= (and b!981161 ((_ is Concat!4568) (regTwo!5982 r!15766))) b!981468))

(assert (= (and b!981161 ((_ is Star!2735) (regTwo!5982 r!15766))) b!981469))

(assert (= (and b!981161 ((_ is Union!2735) (regTwo!5982 r!15766))) b!981470))

(declare-fun b!981475 () Bool)

(declare-fun e!631404 () Bool)

(declare-fun tp!299853 () Bool)

(assert (=> b!981475 (= e!631404 (and tp_is_empty!5113 tp!299853))))

(assert (=> b!981163 (= tp!299789 e!631404)))

(assert (= (and b!981163 ((_ is Cons!9949) (t!101011 s!10566))) b!981475))

(declare-fun b!981479 () Bool)

(declare-fun e!631405 () Bool)

(declare-fun tp!299857 () Bool)

(declare-fun tp!299856 () Bool)

(assert (=> b!981479 (= e!631405 (and tp!299857 tp!299856))))

(declare-fun b!981477 () Bool)

(declare-fun tp!299858 () Bool)

(declare-fun tp!299854 () Bool)

(assert (=> b!981477 (= e!631405 (and tp!299858 tp!299854))))

(declare-fun b!981476 () Bool)

(assert (=> b!981476 (= e!631405 tp_is_empty!5113)))

(assert (=> b!981162 (= tp!299792 e!631405)))

(declare-fun b!981478 () Bool)

(declare-fun tp!299855 () Bool)

(assert (=> b!981478 (= e!631405 tp!299855)))

(assert (= (and b!981162 ((_ is ElementMatch!2735) (regOne!5983 r!15766))) b!981476))

(assert (= (and b!981162 ((_ is Concat!4568) (regOne!5983 r!15766))) b!981477))

(assert (= (and b!981162 ((_ is Star!2735) (regOne!5983 r!15766))) b!981478))

(assert (= (and b!981162 ((_ is Union!2735) (regOne!5983 r!15766))) b!981479))

(declare-fun b!981483 () Bool)

(declare-fun e!631406 () Bool)

(declare-fun tp!299862 () Bool)

(declare-fun tp!299861 () Bool)

(assert (=> b!981483 (= e!631406 (and tp!299862 tp!299861))))

(declare-fun b!981481 () Bool)

(declare-fun tp!299863 () Bool)

(declare-fun tp!299859 () Bool)

(assert (=> b!981481 (= e!631406 (and tp!299863 tp!299859))))

(declare-fun b!981480 () Bool)

(assert (=> b!981480 (= e!631406 tp_is_empty!5113)))

(assert (=> b!981162 (= tp!299788 e!631406)))

(declare-fun b!981482 () Bool)

(declare-fun tp!299860 () Bool)

(assert (=> b!981482 (= e!631406 tp!299860)))

(assert (= (and b!981162 ((_ is ElementMatch!2735) (regTwo!5983 r!15766))) b!981480))

(assert (= (and b!981162 ((_ is Concat!4568) (regTwo!5983 r!15766))) b!981481))

(assert (= (and b!981162 ((_ is Star!2735) (regTwo!5983 r!15766))) b!981482))

(assert (= (and b!981162 ((_ is Union!2735) (regTwo!5983 r!15766))) b!981483))

(declare-fun b!981487 () Bool)

(declare-fun e!631407 () Bool)

(declare-fun tp!299867 () Bool)

(declare-fun tp!299866 () Bool)

(assert (=> b!981487 (= e!631407 (and tp!299867 tp!299866))))

(declare-fun b!981485 () Bool)

(declare-fun tp!299868 () Bool)

(declare-fun tp!299864 () Bool)

(assert (=> b!981485 (= e!631407 (and tp!299868 tp!299864))))

(declare-fun b!981484 () Bool)

(assert (=> b!981484 (= e!631407 tp_is_empty!5113)))

(assert (=> b!981167 (= tp!299790 e!631407)))

(declare-fun b!981486 () Bool)

(declare-fun tp!299865 () Bool)

(assert (=> b!981486 (= e!631407 tp!299865)))

(assert (= (and b!981167 ((_ is ElementMatch!2735) (reg!3064 r!15766))) b!981484))

(assert (= (and b!981167 ((_ is Concat!4568) (reg!3064 r!15766))) b!981485))

(assert (= (and b!981167 ((_ is Star!2735) (reg!3064 r!15766))) b!981486))

(assert (= (and b!981167 ((_ is Union!2735) (reg!3064 r!15766))) b!981487))

(check-sat (not b!981475) (not b!981468) (not b!981487) (not b!981469) (not b!981464) (not b!981443) (not bm!63098) tp_is_empty!5113 (not b!981223) (not b!981406) (not bm!63117) (not b!981478) (not b!981479) (not bm!63116) (not b!981450) (not b!981483) (not bm!63092) (not b!981441) (not b!981481) (not b!981398) (not b!981486) (not b!981465) (not bm!63099) (not d!288323) (not bm!63120) (not b!981205) (not d!288325) (not b!981482) (not b!981466) (not b!981446) (not b!981448) (not bm!63093) (not b!981449) (not b!981477) (not b!981485) (not b!981470))
(check-sat)
