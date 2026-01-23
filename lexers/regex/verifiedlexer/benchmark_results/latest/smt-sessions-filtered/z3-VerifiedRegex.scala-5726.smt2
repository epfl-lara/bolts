; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284452 () Bool)

(assert start!284452)

(declare-fun b!2922045 () Bool)

(declare-fun e!1843380 () Bool)

(declare-fun tp_is_empty!15569 () Bool)

(declare-fun tp!937524 () Bool)

(assert (=> b!2922045 (= e!1843380 (and tp_is_empty!15569 tp!937524))))

(declare-fun b!2922046 () Bool)

(declare-fun e!1843376 () Bool)

(declare-fun tp!937527 () Bool)

(declare-fun tp!937528 () Bool)

(assert (=> b!2922046 (= e!1843376 (and tp!937527 tp!937528))))

(declare-fun b!2922047 () Bool)

(assert (=> b!2922047 (= e!1843376 tp_is_empty!15569)))

(declare-fun res!1206236 () Bool)

(declare-fun e!1843377 () Bool)

(assert (=> start!284452 (=> (not res!1206236) (not e!1843377))))

(declare-datatypes ((C!18192 0))(
  ( (C!18193 (val!11132 Int)) )
))
(declare-datatypes ((Regex!9003 0))(
  ( (ElementMatch!9003 (c!476885 C!18192)) (Concat!14324 (regOne!18518 Regex!9003) (regTwo!18518 Regex!9003)) (EmptyExpr!9003) (Star!9003 (reg!9332 Regex!9003)) (EmptyLang!9003) (Union!9003 (regOne!18519 Regex!9003) (regTwo!18519 Regex!9003)) )
))
(declare-fun r!17423 () Regex!9003)

(declare-fun validRegex!3736 (Regex!9003) Bool)

(assert (=> start!284452 (= res!1206236 (validRegex!3736 r!17423))))

(assert (=> start!284452 e!1843377))

(assert (=> start!284452 e!1843376))

(assert (=> start!284452 e!1843380))

(declare-fun b!2922048 () Bool)

(declare-fun e!1843378 () Bool)

(declare-fun e!1843379 () Bool)

(assert (=> b!2922048 (= e!1843378 e!1843379)))

(declare-fun res!1206235 () Bool)

(assert (=> b!2922048 (=> res!1206235 e!1843379)))

(declare-fun lt!1025942 () Bool)

(assert (=> b!2922048 (= res!1206235 lt!1025942)))

(declare-fun e!1843381 () Bool)

(assert (=> b!2922048 e!1843381))

(declare-fun res!1206237 () Bool)

(assert (=> b!2922048 (=> res!1206237 e!1843381)))

(assert (=> b!2922048 (= res!1206237 lt!1025942)))

(declare-datatypes ((List!34868 0))(
  ( (Nil!34744) (Cons!34744 (h!40164 C!18192) (t!233933 List!34868)) )
))
(declare-fun s!11993 () List!34868)

(declare-fun matchR!3885 (Regex!9003 List!34868) Bool)

(assert (=> b!2922048 (= lt!1025942 (matchR!3885 (regOne!18519 r!17423) s!11993))))

(declare-datatypes ((Unit!48345 0))(
  ( (Unit!48346) )
))
(declare-fun lt!1025945 () Unit!48345)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!252 (Regex!9003 Regex!9003 List!34868) Unit!48345)

(assert (=> b!2922048 (= lt!1025945 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!252 (regOne!18519 r!17423) (regTwo!18519 r!17423) s!11993))))

(declare-fun b!2922049 () Bool)

(assert (=> b!2922049 (= e!1843381 (matchR!3885 (regTwo!18519 r!17423) s!11993))))

(declare-fun b!2922050 () Bool)

(declare-fun tp!937526 () Bool)

(declare-fun tp!937525 () Bool)

(assert (=> b!2922050 (= e!1843376 (and tp!937526 tp!937525))))

(declare-fun b!2922051 () Bool)

(assert (=> b!2922051 (= e!1843377 (not e!1843378))))

(declare-fun res!1206238 () Bool)

(assert (=> b!2922051 (=> res!1206238 e!1843378)))

(declare-fun lt!1025943 () Bool)

(get-info :version)

(assert (=> b!2922051 (= res!1206238 (or (not lt!1025943) ((_ is Concat!14324) r!17423) (not ((_ is Union!9003) r!17423))))))

(declare-fun matchRSpec!1140 (Regex!9003 List!34868) Bool)

(assert (=> b!2922051 (= lt!1025943 (matchRSpec!1140 r!17423 s!11993))))

(assert (=> b!2922051 (= lt!1025943 (matchR!3885 r!17423 s!11993))))

(declare-fun lt!1025944 () Unit!48345)

(declare-fun mainMatchTheorem!1140 (Regex!9003 List!34868) Unit!48345)

(assert (=> b!2922051 (= lt!1025944 (mainMatchTheorem!1140 r!17423 s!11993))))

(declare-fun b!2922052 () Bool)

(declare-fun tp!937529 () Bool)

(assert (=> b!2922052 (= e!1843376 tp!937529)))

(declare-fun b!2922053 () Bool)

(assert (=> b!2922053 (= e!1843379 (validRegex!3736 (regTwo!18519 r!17423)))))

(declare-fun simplify!32 (Regex!9003) Regex!9003)

(assert (=> b!2922053 (= (matchR!3885 (regTwo!18519 r!17423) s!11993) (matchR!3885 (simplify!32 (regTwo!18519 r!17423)) s!11993))))

(declare-fun lt!1025941 () Unit!48345)

(declare-fun lemmaSimplifySound!30 (Regex!9003 List!34868) Unit!48345)

(assert (=> b!2922053 (= lt!1025941 (lemmaSimplifySound!30 (regTwo!18519 r!17423) s!11993))))

(assert (= (and start!284452 res!1206236) b!2922051))

(assert (= (and b!2922051 (not res!1206238)) b!2922048))

(assert (= (and b!2922048 (not res!1206237)) b!2922049))

(assert (= (and b!2922048 (not res!1206235)) b!2922053))

(assert (= (and start!284452 ((_ is ElementMatch!9003) r!17423)) b!2922047))

(assert (= (and start!284452 ((_ is Concat!14324) r!17423)) b!2922046))

(assert (= (and start!284452 ((_ is Star!9003) r!17423)) b!2922052))

(assert (= (and start!284452 ((_ is Union!9003) r!17423)) b!2922050))

(assert (= (and start!284452 ((_ is Cons!34744) s!11993)) b!2922045))

(declare-fun m!3317491 () Bool)

(assert (=> b!2922049 m!3317491))

(declare-fun m!3317493 () Bool)

(assert (=> b!2922048 m!3317493))

(declare-fun m!3317495 () Bool)

(assert (=> b!2922048 m!3317495))

(declare-fun m!3317497 () Bool)

(assert (=> b!2922051 m!3317497))

(declare-fun m!3317499 () Bool)

(assert (=> b!2922051 m!3317499))

(declare-fun m!3317501 () Bool)

(assert (=> b!2922051 m!3317501))

(declare-fun m!3317503 () Bool)

(assert (=> b!2922053 m!3317503))

(declare-fun m!3317505 () Bool)

(assert (=> b!2922053 m!3317505))

(assert (=> b!2922053 m!3317505))

(declare-fun m!3317507 () Bool)

(assert (=> b!2922053 m!3317507))

(assert (=> b!2922053 m!3317491))

(declare-fun m!3317509 () Bool)

(assert (=> b!2922053 m!3317509))

(declare-fun m!3317511 () Bool)

(assert (=> start!284452 m!3317511))

(check-sat (not b!2922048) (not b!2922053) (not b!2922049) (not start!284452) (not b!2922046) (not b!2922052) (not b!2922050) (not b!2922051) (not b!2922045) tp_is_empty!15569)
(check-sat)
(get-model)

(declare-fun b!2922072 () Bool)

(declare-fun e!1843401 () Bool)

(declare-fun call!191315 () Bool)

(assert (=> b!2922072 (= e!1843401 call!191315)))

(declare-fun c!476890 () Bool)

(declare-fun call!191313 () Bool)

(declare-fun bm!191308 () Bool)

(declare-fun c!476891 () Bool)

(assert (=> bm!191308 (= call!191313 (validRegex!3736 (ite c!476890 (reg!9332 r!17423) (ite c!476891 (regOne!18519 r!17423) (regTwo!18518 r!17423)))))))

(declare-fun bm!191309 () Bool)

(declare-fun call!191314 () Bool)

(assert (=> bm!191309 (= call!191314 (validRegex!3736 (ite c!476891 (regTwo!18519 r!17423) (regOne!18518 r!17423))))))

(declare-fun b!2922073 () Bool)

(declare-fun res!1206252 () Bool)

(declare-fun e!1843397 () Bool)

(assert (=> b!2922073 (=> (not res!1206252) (not e!1843397))))

(assert (=> b!2922073 (= res!1206252 call!191315)))

(declare-fun e!1843399 () Bool)

(assert (=> b!2922073 (= e!1843399 e!1843397)))

(declare-fun bm!191310 () Bool)

(assert (=> bm!191310 (= call!191315 call!191313)))

(declare-fun b!2922074 () Bool)

(declare-fun e!1843398 () Bool)

(assert (=> b!2922074 (= e!1843398 call!191313)))

(declare-fun d!838631 () Bool)

(declare-fun res!1206253 () Bool)

(declare-fun e!1843402 () Bool)

(assert (=> d!838631 (=> res!1206253 e!1843402)))

(assert (=> d!838631 (= res!1206253 ((_ is ElementMatch!9003) r!17423))))

(assert (=> d!838631 (= (validRegex!3736 r!17423) e!1843402)))

(declare-fun b!2922075 () Bool)

(declare-fun e!1843396 () Bool)

(assert (=> b!2922075 (= e!1843396 e!1843399)))

(assert (=> b!2922075 (= c!476891 ((_ is Union!9003) r!17423))))

(declare-fun b!2922076 () Bool)

(declare-fun res!1206251 () Bool)

(declare-fun e!1843400 () Bool)

(assert (=> b!2922076 (=> res!1206251 e!1843400)))

(assert (=> b!2922076 (= res!1206251 (not ((_ is Concat!14324) r!17423)))))

(assert (=> b!2922076 (= e!1843399 e!1843400)))

(declare-fun b!2922077 () Bool)

(assert (=> b!2922077 (= e!1843400 e!1843401)))

(declare-fun res!1206250 () Bool)

(assert (=> b!2922077 (=> (not res!1206250) (not e!1843401))))

(assert (=> b!2922077 (= res!1206250 call!191314)))

(declare-fun b!2922078 () Bool)

(assert (=> b!2922078 (= e!1843396 e!1843398)))

(declare-fun res!1206249 () Bool)

(declare-fun nullable!2823 (Regex!9003) Bool)

(assert (=> b!2922078 (= res!1206249 (not (nullable!2823 (reg!9332 r!17423))))))

(assert (=> b!2922078 (=> (not res!1206249) (not e!1843398))))

(declare-fun b!2922079 () Bool)

(assert (=> b!2922079 (= e!1843397 call!191314)))

(declare-fun b!2922080 () Bool)

(assert (=> b!2922080 (= e!1843402 e!1843396)))

(assert (=> b!2922080 (= c!476890 ((_ is Star!9003) r!17423))))

(assert (= (and d!838631 (not res!1206253)) b!2922080))

(assert (= (and b!2922080 c!476890) b!2922078))

(assert (= (and b!2922080 (not c!476890)) b!2922075))

(assert (= (and b!2922078 res!1206249) b!2922074))

(assert (= (and b!2922075 c!476891) b!2922073))

(assert (= (and b!2922075 (not c!476891)) b!2922076))

(assert (= (and b!2922073 res!1206252) b!2922079))

(assert (= (and b!2922076 (not res!1206251)) b!2922077))

(assert (= (and b!2922077 res!1206250) b!2922072))

(assert (= (or b!2922073 b!2922072) bm!191310))

(assert (= (or b!2922079 b!2922077) bm!191309))

(assert (= (or b!2922074 bm!191310) bm!191308))

(declare-fun m!3317513 () Bool)

(assert (=> bm!191308 m!3317513))

(declare-fun m!3317515 () Bool)

(assert (=> bm!191309 m!3317515))

(declare-fun m!3317517 () Bool)

(assert (=> b!2922078 m!3317517))

(assert (=> start!284452 d!838631))

(declare-fun b!2922302 () Bool)

(assert (=> b!2922302 true))

(assert (=> b!2922302 true))

(declare-fun bs!524972 () Bool)

(declare-fun b!2922312 () Bool)

(assert (= bs!524972 (and b!2922312 b!2922302)))

(declare-fun lambda!108672 () Int)

(declare-fun lambda!108671 () Int)

(assert (=> bs!524972 (not (= lambda!108672 lambda!108671))))

(assert (=> b!2922312 true))

(assert (=> b!2922312 true))

(declare-fun e!1843533 () Bool)

(declare-fun call!191358 () Bool)

(assert (=> b!2922302 (= e!1843533 call!191358)))

(declare-fun b!2922303 () Bool)

(declare-fun e!1843539 () Bool)

(declare-fun e!1843534 () Bool)

(assert (=> b!2922303 (= e!1843539 e!1843534)))

(declare-fun res!1206337 () Bool)

(assert (=> b!2922303 (= res!1206337 (not ((_ is EmptyLang!9003) r!17423)))))

(assert (=> b!2922303 (=> (not res!1206337) (not e!1843534))))

(declare-fun b!2922304 () Bool)

(declare-fun call!191357 () Bool)

(assert (=> b!2922304 (= e!1843539 call!191357)))

(declare-fun d!838635 () Bool)

(declare-fun c!476963 () Bool)

(assert (=> d!838635 (= c!476963 ((_ is EmptyExpr!9003) r!17423))))

(assert (=> d!838635 (= (matchRSpec!1140 r!17423 s!11993) e!1843539)))

(declare-fun c!476964 () Bool)

(declare-fun bm!191352 () Bool)

(declare-fun Exists!1372 (Int) Bool)

(assert (=> bm!191352 (= call!191358 (Exists!1372 (ite c!476964 lambda!108671 lambda!108672)))))

(declare-fun b!2922305 () Bool)

(declare-fun res!1206338 () Bool)

(assert (=> b!2922305 (=> res!1206338 e!1843533)))

(assert (=> b!2922305 (= res!1206338 call!191357)))

(declare-fun e!1843538 () Bool)

(assert (=> b!2922305 (= e!1843538 e!1843533)))

(declare-fun b!2922306 () Bool)

(declare-fun e!1843535 () Bool)

(assert (=> b!2922306 (= e!1843535 (= s!11993 (Cons!34744 (c!476885 r!17423) Nil!34744)))))

(declare-fun b!2922307 () Bool)

(declare-fun e!1843537 () Bool)

(assert (=> b!2922307 (= e!1843537 e!1843538)))

(assert (=> b!2922307 (= c!476964 ((_ is Star!9003) r!17423))))

(declare-fun b!2922308 () Bool)

(declare-fun e!1843536 () Bool)

(assert (=> b!2922308 (= e!1843536 (matchRSpec!1140 (regTwo!18519 r!17423) s!11993))))

(declare-fun b!2922309 () Bool)

(declare-fun c!476962 () Bool)

(assert (=> b!2922309 (= c!476962 ((_ is ElementMatch!9003) r!17423))))

(assert (=> b!2922309 (= e!1843534 e!1843535)))

(declare-fun b!2922310 () Bool)

(assert (=> b!2922310 (= e!1843537 e!1843536)))

(declare-fun res!1206339 () Bool)

(assert (=> b!2922310 (= res!1206339 (matchRSpec!1140 (regOne!18519 r!17423) s!11993))))

(assert (=> b!2922310 (=> res!1206339 e!1843536)))

(declare-fun b!2922311 () Bool)

(declare-fun c!476961 () Bool)

(assert (=> b!2922311 (= c!476961 ((_ is Union!9003) r!17423))))

(assert (=> b!2922311 (= e!1843535 e!1843537)))

(assert (=> b!2922312 (= e!1843538 call!191358)))

(declare-fun bm!191353 () Bool)

(declare-fun isEmpty!18993 (List!34868) Bool)

(assert (=> bm!191353 (= call!191357 (isEmpty!18993 s!11993))))

(assert (= (and d!838635 c!476963) b!2922304))

(assert (= (and d!838635 (not c!476963)) b!2922303))

(assert (= (and b!2922303 res!1206337) b!2922309))

(assert (= (and b!2922309 c!476962) b!2922306))

(assert (= (and b!2922309 (not c!476962)) b!2922311))

(assert (= (and b!2922311 c!476961) b!2922310))

(assert (= (and b!2922311 (not c!476961)) b!2922307))

(assert (= (and b!2922310 (not res!1206339)) b!2922308))

(assert (= (and b!2922307 c!476964) b!2922305))

(assert (= (and b!2922307 (not c!476964)) b!2922312))

(assert (= (and b!2922305 (not res!1206338)) b!2922302))

(assert (= (or b!2922302 b!2922312) bm!191352))

(assert (= (or b!2922304 b!2922305) bm!191353))

(declare-fun m!3317571 () Bool)

(assert (=> bm!191352 m!3317571))

(declare-fun m!3317573 () Bool)

(assert (=> b!2922308 m!3317573))

(declare-fun m!3317575 () Bool)

(assert (=> b!2922310 m!3317575))

(declare-fun m!3317577 () Bool)

(assert (=> bm!191353 m!3317577))

(assert (=> b!2922051 d!838635))

(declare-fun b!2922355 () Bool)

(declare-fun res!1206367 () Bool)

(declare-fun e!1843564 () Bool)

(assert (=> b!2922355 (=> res!1206367 e!1843564)))

(declare-fun tail!4722 (List!34868) List!34868)

(assert (=> b!2922355 (= res!1206367 (not (isEmpty!18993 (tail!4722 s!11993))))))

(declare-fun b!2922356 () Bool)

(declare-fun e!1843559 () Bool)

(assert (=> b!2922356 (= e!1843559 e!1843564)))

(declare-fun res!1206372 () Bool)

(assert (=> b!2922356 (=> res!1206372 e!1843564)))

(declare-fun call!191365 () Bool)

(assert (=> b!2922356 (= res!1206372 call!191365)))

(declare-fun b!2922357 () Bool)

(declare-fun e!1843560 () Bool)

(declare-fun lt!1025973 () Bool)

(assert (=> b!2922357 (= e!1843560 (not lt!1025973))))

(declare-fun b!2922358 () Bool)

(declare-fun e!1843561 () Bool)

(assert (=> b!2922358 (= e!1843561 (= lt!1025973 call!191365))))

(declare-fun b!2922359 () Bool)

(declare-fun e!1843563 () Bool)

(assert (=> b!2922359 (= e!1843563 (nullable!2823 r!17423))))

(declare-fun b!2922360 () Bool)

(declare-fun e!1843562 () Bool)

(assert (=> b!2922360 (= e!1843562 e!1843559)))

(declare-fun res!1206368 () Bool)

(assert (=> b!2922360 (=> (not res!1206368) (not e!1843559))))

(assert (=> b!2922360 (= res!1206368 (not lt!1025973))))

(declare-fun b!2922361 () Bool)

(assert (=> b!2922361 (= e!1843561 e!1843560)))

(declare-fun c!476971 () Bool)

(assert (=> b!2922361 (= c!476971 ((_ is EmptyLang!9003) r!17423))))

(declare-fun d!838649 () Bool)

(assert (=> d!838649 e!1843561))

(declare-fun c!476973 () Bool)

(assert (=> d!838649 (= c!476973 ((_ is EmptyExpr!9003) r!17423))))

(assert (=> d!838649 (= lt!1025973 e!1843563)))

(declare-fun c!476972 () Bool)

(assert (=> d!838649 (= c!476972 (isEmpty!18993 s!11993))))

(assert (=> d!838649 (validRegex!3736 r!17423)))

(assert (=> d!838649 (= (matchR!3885 r!17423 s!11993) lt!1025973)))

(declare-fun b!2922362 () Bool)

(declare-fun head!6496 (List!34868) C!18192)

(assert (=> b!2922362 (= e!1843564 (not (= (head!6496 s!11993) (c!476885 r!17423))))))

(declare-fun b!2922363 () Bool)

(declare-fun res!1206366 () Bool)

(assert (=> b!2922363 (=> res!1206366 e!1843562)))

(assert (=> b!2922363 (= res!1206366 (not ((_ is ElementMatch!9003) r!17423)))))

(assert (=> b!2922363 (= e!1843560 e!1843562)))

(declare-fun b!2922364 () Bool)

(declare-fun res!1206370 () Bool)

(declare-fun e!1843558 () Bool)

(assert (=> b!2922364 (=> (not res!1206370) (not e!1843558))))

(assert (=> b!2922364 (= res!1206370 (isEmpty!18993 (tail!4722 s!11993)))))

(declare-fun b!2922365 () Bool)

(assert (=> b!2922365 (= e!1843558 (= (head!6496 s!11993) (c!476885 r!17423)))))

(declare-fun b!2922366 () Bool)

(declare-fun res!1206369 () Bool)

(assert (=> b!2922366 (=> res!1206369 e!1843562)))

(assert (=> b!2922366 (= res!1206369 e!1843558)))

(declare-fun res!1206371 () Bool)

(assert (=> b!2922366 (=> (not res!1206371) (not e!1843558))))

(assert (=> b!2922366 (= res!1206371 lt!1025973)))

(declare-fun bm!191360 () Bool)

(assert (=> bm!191360 (= call!191365 (isEmpty!18993 s!11993))))

(declare-fun b!2922367 () Bool)

(declare-fun res!1206373 () Bool)

(assert (=> b!2922367 (=> (not res!1206373) (not e!1843558))))

(assert (=> b!2922367 (= res!1206373 (not call!191365))))

(declare-fun b!2922368 () Bool)

(declare-fun derivativeStep!2437 (Regex!9003 C!18192) Regex!9003)

(assert (=> b!2922368 (= e!1843563 (matchR!3885 (derivativeStep!2437 r!17423 (head!6496 s!11993)) (tail!4722 s!11993)))))

(assert (= (and d!838649 c!476972) b!2922359))

(assert (= (and d!838649 (not c!476972)) b!2922368))

(assert (= (and d!838649 c!476973) b!2922358))

(assert (= (and d!838649 (not c!476973)) b!2922361))

(assert (= (and b!2922361 c!476971) b!2922357))

(assert (= (and b!2922361 (not c!476971)) b!2922363))

(assert (= (and b!2922363 (not res!1206366)) b!2922366))

(assert (= (and b!2922366 res!1206371) b!2922367))

(assert (= (and b!2922367 res!1206373) b!2922364))

(assert (= (and b!2922364 res!1206370) b!2922365))

(assert (= (and b!2922366 (not res!1206369)) b!2922360))

(assert (= (and b!2922360 res!1206368) b!2922356))

(assert (= (and b!2922356 (not res!1206372)) b!2922355))

(assert (= (and b!2922355 (not res!1206367)) b!2922362))

(assert (= (or b!2922358 b!2922356 b!2922367) bm!191360))

(declare-fun m!3317579 () Bool)

(assert (=> b!2922365 m!3317579))

(assert (=> b!2922362 m!3317579))

(declare-fun m!3317581 () Bool)

(assert (=> b!2922364 m!3317581))

(assert (=> b!2922364 m!3317581))

(declare-fun m!3317583 () Bool)

(assert (=> b!2922364 m!3317583))

(assert (=> b!2922368 m!3317579))

(assert (=> b!2922368 m!3317579))

(declare-fun m!3317585 () Bool)

(assert (=> b!2922368 m!3317585))

(assert (=> b!2922368 m!3317581))

(assert (=> b!2922368 m!3317585))

(assert (=> b!2922368 m!3317581))

(declare-fun m!3317587 () Bool)

(assert (=> b!2922368 m!3317587))

(assert (=> bm!191360 m!3317577))

(assert (=> d!838649 m!3317577))

(assert (=> d!838649 m!3317511))

(assert (=> b!2922355 m!3317581))

(assert (=> b!2922355 m!3317581))

(assert (=> b!2922355 m!3317583))

(declare-fun m!3317589 () Bool)

(assert (=> b!2922359 m!3317589))

(assert (=> b!2922051 d!838649))

(declare-fun d!838651 () Bool)

(assert (=> d!838651 (= (matchR!3885 r!17423 s!11993) (matchRSpec!1140 r!17423 s!11993))))

(declare-fun lt!1025976 () Unit!48345)

(declare-fun choose!17232 (Regex!9003 List!34868) Unit!48345)

(assert (=> d!838651 (= lt!1025976 (choose!17232 r!17423 s!11993))))

(assert (=> d!838651 (validRegex!3736 r!17423)))

(assert (=> d!838651 (= (mainMatchTheorem!1140 r!17423 s!11993) lt!1025976)))

(declare-fun bs!524973 () Bool)

(assert (= bs!524973 d!838651))

(assert (=> bs!524973 m!3317499))

(assert (=> bs!524973 m!3317497))

(declare-fun m!3317591 () Bool)

(assert (=> bs!524973 m!3317591))

(assert (=> bs!524973 m!3317511))

(assert (=> b!2922051 d!838651))

(declare-fun b!2922384 () Bool)

(declare-fun res!1206378 () Bool)

(declare-fun e!1843578 () Bool)

(assert (=> b!2922384 (=> res!1206378 e!1843578)))

(assert (=> b!2922384 (= res!1206378 (not (isEmpty!18993 (tail!4722 s!11993))))))

(declare-fun b!2922385 () Bool)

(declare-fun e!1843573 () Bool)

(assert (=> b!2922385 (= e!1843573 e!1843578)))

(declare-fun res!1206383 () Bool)

(assert (=> b!2922385 (=> res!1206383 e!1843578)))

(declare-fun call!191368 () Bool)

(assert (=> b!2922385 (= res!1206383 call!191368)))

(declare-fun b!2922386 () Bool)

(declare-fun e!1843574 () Bool)

(declare-fun lt!1025977 () Bool)

(assert (=> b!2922386 (= e!1843574 (not lt!1025977))))

(declare-fun b!2922387 () Bool)

(declare-fun e!1843575 () Bool)

(assert (=> b!2922387 (= e!1843575 (= lt!1025977 call!191368))))

(declare-fun b!2922388 () Bool)

(declare-fun e!1843577 () Bool)

(assert (=> b!2922388 (= e!1843577 (nullable!2823 (regOne!18519 r!17423)))))

(declare-fun b!2922389 () Bool)

(declare-fun e!1843576 () Bool)

(assert (=> b!2922389 (= e!1843576 e!1843573)))

(declare-fun res!1206379 () Bool)

(assert (=> b!2922389 (=> (not res!1206379) (not e!1843573))))

(assert (=> b!2922389 (= res!1206379 (not lt!1025977))))

(declare-fun b!2922390 () Bool)

(assert (=> b!2922390 (= e!1843575 e!1843574)))

(declare-fun c!476978 () Bool)

(assert (=> b!2922390 (= c!476978 ((_ is EmptyLang!9003) (regOne!18519 r!17423)))))

(declare-fun d!838653 () Bool)

(assert (=> d!838653 e!1843575))

(declare-fun c!476980 () Bool)

(assert (=> d!838653 (= c!476980 ((_ is EmptyExpr!9003) (regOne!18519 r!17423)))))

(assert (=> d!838653 (= lt!1025977 e!1843577)))

(declare-fun c!476979 () Bool)

(assert (=> d!838653 (= c!476979 (isEmpty!18993 s!11993))))

(assert (=> d!838653 (validRegex!3736 (regOne!18519 r!17423))))

(assert (=> d!838653 (= (matchR!3885 (regOne!18519 r!17423) s!11993) lt!1025977)))

(declare-fun b!2922391 () Bool)

(assert (=> b!2922391 (= e!1843578 (not (= (head!6496 s!11993) (c!476885 (regOne!18519 r!17423)))))))

(declare-fun b!2922392 () Bool)

(declare-fun res!1206377 () Bool)

(assert (=> b!2922392 (=> res!1206377 e!1843576)))

(assert (=> b!2922392 (= res!1206377 (not ((_ is ElementMatch!9003) (regOne!18519 r!17423))))))

(assert (=> b!2922392 (= e!1843574 e!1843576)))

(declare-fun b!2922393 () Bool)

(declare-fun res!1206381 () Bool)

(declare-fun e!1843572 () Bool)

(assert (=> b!2922393 (=> (not res!1206381) (not e!1843572))))

(assert (=> b!2922393 (= res!1206381 (isEmpty!18993 (tail!4722 s!11993)))))

(declare-fun b!2922394 () Bool)

(assert (=> b!2922394 (= e!1843572 (= (head!6496 s!11993) (c!476885 (regOne!18519 r!17423))))))

(declare-fun b!2922395 () Bool)

(declare-fun res!1206380 () Bool)

(assert (=> b!2922395 (=> res!1206380 e!1843576)))

(assert (=> b!2922395 (= res!1206380 e!1843572)))

(declare-fun res!1206382 () Bool)

(assert (=> b!2922395 (=> (not res!1206382) (not e!1843572))))

(assert (=> b!2922395 (= res!1206382 lt!1025977)))

(declare-fun bm!191363 () Bool)

(assert (=> bm!191363 (= call!191368 (isEmpty!18993 s!11993))))

(declare-fun b!2922396 () Bool)

(declare-fun res!1206384 () Bool)

(assert (=> b!2922396 (=> (not res!1206384) (not e!1843572))))

(assert (=> b!2922396 (= res!1206384 (not call!191368))))

(declare-fun b!2922397 () Bool)

(assert (=> b!2922397 (= e!1843577 (matchR!3885 (derivativeStep!2437 (regOne!18519 r!17423) (head!6496 s!11993)) (tail!4722 s!11993)))))

(assert (= (and d!838653 c!476979) b!2922388))

(assert (= (and d!838653 (not c!476979)) b!2922397))

(assert (= (and d!838653 c!476980) b!2922387))

(assert (= (and d!838653 (not c!476980)) b!2922390))

(assert (= (and b!2922390 c!476978) b!2922386))

(assert (= (and b!2922390 (not c!476978)) b!2922392))

(assert (= (and b!2922392 (not res!1206377)) b!2922395))

(assert (= (and b!2922395 res!1206382) b!2922396))

(assert (= (and b!2922396 res!1206384) b!2922393))

(assert (= (and b!2922393 res!1206381) b!2922394))

(assert (= (and b!2922395 (not res!1206380)) b!2922389))

(assert (= (and b!2922389 res!1206379) b!2922385))

(assert (= (and b!2922385 (not res!1206383)) b!2922384))

(assert (= (and b!2922384 (not res!1206378)) b!2922391))

(assert (= (or b!2922387 b!2922385 b!2922396) bm!191363))

(assert (=> b!2922394 m!3317579))

(assert (=> b!2922391 m!3317579))

(assert (=> b!2922393 m!3317581))

(assert (=> b!2922393 m!3317581))

(assert (=> b!2922393 m!3317583))

(assert (=> b!2922397 m!3317579))

(assert (=> b!2922397 m!3317579))

(declare-fun m!3317599 () Bool)

(assert (=> b!2922397 m!3317599))

(assert (=> b!2922397 m!3317581))

(assert (=> b!2922397 m!3317599))

(assert (=> b!2922397 m!3317581))

(declare-fun m!3317601 () Bool)

(assert (=> b!2922397 m!3317601))

(assert (=> bm!191363 m!3317577))

(assert (=> d!838653 m!3317577))

(declare-fun m!3317603 () Bool)

(assert (=> d!838653 m!3317603))

(assert (=> b!2922384 m!3317581))

(assert (=> b!2922384 m!3317581))

(assert (=> b!2922384 m!3317583))

(declare-fun m!3317605 () Bool)

(assert (=> b!2922388 m!3317605))

(assert (=> b!2922048 d!838653))

(declare-fun d!838657 () Bool)

(declare-fun e!1843591 () Bool)

(assert (=> d!838657 e!1843591))

(declare-fun res!1206397 () Bool)

(assert (=> d!838657 (=> res!1206397 e!1843591)))

(assert (=> d!838657 (= res!1206397 (matchR!3885 (regOne!18519 r!17423) s!11993))))

(declare-fun lt!1025981 () Unit!48345)

(declare-fun choose!17233 (Regex!9003 Regex!9003 List!34868) Unit!48345)

(assert (=> d!838657 (= lt!1025981 (choose!17233 (regOne!18519 r!17423) (regTwo!18519 r!17423) s!11993))))

(declare-fun e!1843590 () Bool)

(assert (=> d!838657 e!1843590))

(declare-fun res!1206398 () Bool)

(assert (=> d!838657 (=> (not res!1206398) (not e!1843590))))

(assert (=> d!838657 (= res!1206398 (validRegex!3736 (regOne!18519 r!17423)))))

(assert (=> d!838657 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!252 (regOne!18519 r!17423) (regTwo!18519 r!17423) s!11993) lt!1025981)))

(declare-fun b!2922416 () Bool)

(assert (=> b!2922416 (= e!1843590 (validRegex!3736 (regTwo!18519 r!17423)))))

(declare-fun b!2922417 () Bool)

(assert (=> b!2922417 (= e!1843591 (matchR!3885 (regTwo!18519 r!17423) s!11993))))

(assert (= (and d!838657 res!1206398) b!2922416))

(assert (= (and d!838657 (not res!1206397)) b!2922417))

(assert (=> d!838657 m!3317493))

(declare-fun m!3317613 () Bool)

(assert (=> d!838657 m!3317613))

(assert (=> d!838657 m!3317603))

(assert (=> b!2922416 m!3317503))

(assert (=> b!2922417 m!3317491))

(assert (=> b!2922048 d!838657))

(declare-fun b!2922418 () Bool)

(declare-fun e!1843597 () Bool)

(declare-fun call!191372 () Bool)

(assert (=> b!2922418 (= e!1843597 call!191372)))

(declare-fun bm!191365 () Bool)

(declare-fun c!476984 () Bool)

(declare-fun call!191370 () Bool)

(declare-fun c!476985 () Bool)

(assert (=> bm!191365 (= call!191370 (validRegex!3736 (ite c!476984 (reg!9332 (regTwo!18519 r!17423)) (ite c!476985 (regOne!18519 (regTwo!18519 r!17423)) (regTwo!18518 (regTwo!18519 r!17423))))))))

(declare-fun bm!191366 () Bool)

(declare-fun call!191371 () Bool)

(assert (=> bm!191366 (= call!191371 (validRegex!3736 (ite c!476985 (regTwo!18519 (regTwo!18519 r!17423)) (regOne!18518 (regTwo!18519 r!17423)))))))

(declare-fun b!2922419 () Bool)

(declare-fun res!1206402 () Bool)

(declare-fun e!1843593 () Bool)

(assert (=> b!2922419 (=> (not res!1206402) (not e!1843593))))

(assert (=> b!2922419 (= res!1206402 call!191372)))

(declare-fun e!1843595 () Bool)

(assert (=> b!2922419 (= e!1843595 e!1843593)))

(declare-fun bm!191367 () Bool)

(assert (=> bm!191367 (= call!191372 call!191370)))

(declare-fun b!2922420 () Bool)

(declare-fun e!1843594 () Bool)

(assert (=> b!2922420 (= e!1843594 call!191370)))

(declare-fun d!838661 () Bool)

(declare-fun res!1206403 () Bool)

(declare-fun e!1843598 () Bool)

(assert (=> d!838661 (=> res!1206403 e!1843598)))

(assert (=> d!838661 (= res!1206403 ((_ is ElementMatch!9003) (regTwo!18519 r!17423)))))

(assert (=> d!838661 (= (validRegex!3736 (regTwo!18519 r!17423)) e!1843598)))

(declare-fun b!2922421 () Bool)

(declare-fun e!1843592 () Bool)

(assert (=> b!2922421 (= e!1843592 e!1843595)))

(assert (=> b!2922421 (= c!476985 ((_ is Union!9003) (regTwo!18519 r!17423)))))

(declare-fun b!2922422 () Bool)

(declare-fun res!1206401 () Bool)

(declare-fun e!1843596 () Bool)

(assert (=> b!2922422 (=> res!1206401 e!1843596)))

(assert (=> b!2922422 (= res!1206401 (not ((_ is Concat!14324) (regTwo!18519 r!17423))))))

(assert (=> b!2922422 (= e!1843595 e!1843596)))

(declare-fun b!2922423 () Bool)

(assert (=> b!2922423 (= e!1843596 e!1843597)))

(declare-fun res!1206400 () Bool)

(assert (=> b!2922423 (=> (not res!1206400) (not e!1843597))))

(assert (=> b!2922423 (= res!1206400 call!191371)))

(declare-fun b!2922424 () Bool)

(assert (=> b!2922424 (= e!1843592 e!1843594)))

(declare-fun res!1206399 () Bool)

(assert (=> b!2922424 (= res!1206399 (not (nullable!2823 (reg!9332 (regTwo!18519 r!17423)))))))

(assert (=> b!2922424 (=> (not res!1206399) (not e!1843594))))

(declare-fun b!2922425 () Bool)

(assert (=> b!2922425 (= e!1843593 call!191371)))

(declare-fun b!2922426 () Bool)

(assert (=> b!2922426 (= e!1843598 e!1843592)))

(assert (=> b!2922426 (= c!476984 ((_ is Star!9003) (regTwo!18519 r!17423)))))

(assert (= (and d!838661 (not res!1206403)) b!2922426))

(assert (= (and b!2922426 c!476984) b!2922424))

(assert (= (and b!2922426 (not c!476984)) b!2922421))

(assert (= (and b!2922424 res!1206399) b!2922420))

(assert (= (and b!2922421 c!476985) b!2922419))

(assert (= (and b!2922421 (not c!476985)) b!2922422))

(assert (= (and b!2922419 res!1206402) b!2922425))

(assert (= (and b!2922422 (not res!1206401)) b!2922423))

(assert (= (and b!2922423 res!1206400) b!2922418))

(assert (= (or b!2922419 b!2922418) bm!191367))

(assert (= (or b!2922425 b!2922423) bm!191366))

(assert (= (or b!2922420 bm!191367) bm!191365))

(declare-fun m!3317615 () Bool)

(assert (=> bm!191365 m!3317615))

(declare-fun m!3317617 () Bool)

(assert (=> bm!191366 m!3317617))

(declare-fun m!3317619 () Bool)

(assert (=> b!2922424 m!3317619))

(assert (=> b!2922053 d!838661))

(declare-fun d!838663 () Bool)

(assert (=> d!838663 (= (matchR!3885 (regTwo!18519 r!17423) s!11993) (matchR!3885 (simplify!32 (regTwo!18519 r!17423)) s!11993))))

(declare-fun lt!1025988 () Unit!48345)

(declare-fun choose!17234 (Regex!9003 List!34868) Unit!48345)

(assert (=> d!838663 (= lt!1025988 (choose!17234 (regTwo!18519 r!17423) s!11993))))

(assert (=> d!838663 (validRegex!3736 (regTwo!18519 r!17423))))

(assert (=> d!838663 (= (lemmaSimplifySound!30 (regTwo!18519 r!17423) s!11993) lt!1025988)))

(declare-fun bs!524976 () Bool)

(assert (= bs!524976 d!838663))

(assert (=> bs!524976 m!3317505))

(assert (=> bs!524976 m!3317505))

(assert (=> bs!524976 m!3317507))

(declare-fun m!3317631 () Bool)

(assert (=> bs!524976 m!3317631))

(assert (=> bs!524976 m!3317503))

(assert (=> bs!524976 m!3317491))

(assert (=> b!2922053 d!838663))

(declare-fun b!2922441 () Bool)

(declare-fun res!1206413 () Bool)

(declare-fun e!1843612 () Bool)

(assert (=> b!2922441 (=> res!1206413 e!1843612)))

(assert (=> b!2922441 (= res!1206413 (not (isEmpty!18993 (tail!4722 s!11993))))))

(declare-fun b!2922442 () Bool)

(declare-fun e!1843607 () Bool)

(assert (=> b!2922442 (= e!1843607 e!1843612)))

(declare-fun res!1206418 () Bool)

(assert (=> b!2922442 (=> res!1206418 e!1843612)))

(declare-fun call!191374 () Bool)

(assert (=> b!2922442 (= res!1206418 call!191374)))

(declare-fun b!2922443 () Bool)

(declare-fun e!1843608 () Bool)

(declare-fun lt!1025989 () Bool)

(assert (=> b!2922443 (= e!1843608 (not lt!1025989))))

(declare-fun b!2922444 () Bool)

(declare-fun e!1843609 () Bool)

(assert (=> b!2922444 (= e!1843609 (= lt!1025989 call!191374))))

(declare-fun b!2922445 () Bool)

(declare-fun e!1843611 () Bool)

(assert (=> b!2922445 (= e!1843611 (nullable!2823 (regTwo!18519 r!17423)))))

(declare-fun b!2922446 () Bool)

(declare-fun e!1843610 () Bool)

(assert (=> b!2922446 (= e!1843610 e!1843607)))

(declare-fun res!1206414 () Bool)

(assert (=> b!2922446 (=> (not res!1206414) (not e!1843607))))

(assert (=> b!2922446 (= res!1206414 (not lt!1025989))))

(declare-fun b!2922447 () Bool)

(assert (=> b!2922447 (= e!1843609 e!1843608)))

(declare-fun c!476989 () Bool)

(assert (=> b!2922447 (= c!476989 ((_ is EmptyLang!9003) (regTwo!18519 r!17423)))))

(declare-fun d!838669 () Bool)

(assert (=> d!838669 e!1843609))

(declare-fun c!476991 () Bool)

(assert (=> d!838669 (= c!476991 ((_ is EmptyExpr!9003) (regTwo!18519 r!17423)))))

(assert (=> d!838669 (= lt!1025989 e!1843611)))

(declare-fun c!476990 () Bool)

(assert (=> d!838669 (= c!476990 (isEmpty!18993 s!11993))))

(assert (=> d!838669 (validRegex!3736 (regTwo!18519 r!17423))))

(assert (=> d!838669 (= (matchR!3885 (regTwo!18519 r!17423) s!11993) lt!1025989)))

(declare-fun b!2922448 () Bool)

(assert (=> b!2922448 (= e!1843612 (not (= (head!6496 s!11993) (c!476885 (regTwo!18519 r!17423)))))))

(declare-fun b!2922449 () Bool)

(declare-fun res!1206412 () Bool)

(assert (=> b!2922449 (=> res!1206412 e!1843610)))

(assert (=> b!2922449 (= res!1206412 (not ((_ is ElementMatch!9003) (regTwo!18519 r!17423))))))

(assert (=> b!2922449 (= e!1843608 e!1843610)))

(declare-fun b!2922450 () Bool)

(declare-fun res!1206416 () Bool)

(declare-fun e!1843606 () Bool)

(assert (=> b!2922450 (=> (not res!1206416) (not e!1843606))))

(assert (=> b!2922450 (= res!1206416 (isEmpty!18993 (tail!4722 s!11993)))))

(declare-fun b!2922451 () Bool)

(assert (=> b!2922451 (= e!1843606 (= (head!6496 s!11993) (c!476885 (regTwo!18519 r!17423))))))

(declare-fun b!2922452 () Bool)

(declare-fun res!1206415 () Bool)

(assert (=> b!2922452 (=> res!1206415 e!1843610)))

(assert (=> b!2922452 (= res!1206415 e!1843606)))

(declare-fun res!1206417 () Bool)

(assert (=> b!2922452 (=> (not res!1206417) (not e!1843606))))

(assert (=> b!2922452 (= res!1206417 lt!1025989)))

(declare-fun bm!191369 () Bool)

(assert (=> bm!191369 (= call!191374 (isEmpty!18993 s!11993))))

(declare-fun b!2922453 () Bool)

(declare-fun res!1206419 () Bool)

(assert (=> b!2922453 (=> (not res!1206419) (not e!1843606))))

(assert (=> b!2922453 (= res!1206419 (not call!191374))))

(declare-fun b!2922454 () Bool)

(assert (=> b!2922454 (= e!1843611 (matchR!3885 (derivativeStep!2437 (regTwo!18519 r!17423) (head!6496 s!11993)) (tail!4722 s!11993)))))

(assert (= (and d!838669 c!476990) b!2922445))

(assert (= (and d!838669 (not c!476990)) b!2922454))

(assert (= (and d!838669 c!476991) b!2922444))

(assert (= (and d!838669 (not c!476991)) b!2922447))

(assert (= (and b!2922447 c!476989) b!2922443))

(assert (= (and b!2922447 (not c!476989)) b!2922449))

(assert (= (and b!2922449 (not res!1206412)) b!2922452))

(assert (= (and b!2922452 res!1206417) b!2922453))

(assert (= (and b!2922453 res!1206419) b!2922450))

(assert (= (and b!2922450 res!1206416) b!2922451))

(assert (= (and b!2922452 (not res!1206415)) b!2922446))

(assert (= (and b!2922446 res!1206414) b!2922442))

(assert (= (and b!2922442 (not res!1206418)) b!2922441))

(assert (= (and b!2922441 (not res!1206413)) b!2922448))

(assert (= (or b!2922444 b!2922442 b!2922453) bm!191369))

(assert (=> b!2922451 m!3317579))

(assert (=> b!2922448 m!3317579))

(assert (=> b!2922450 m!3317581))

(assert (=> b!2922450 m!3317581))

(assert (=> b!2922450 m!3317583))

(assert (=> b!2922454 m!3317579))

(assert (=> b!2922454 m!3317579))

(declare-fun m!3317633 () Bool)

(assert (=> b!2922454 m!3317633))

(assert (=> b!2922454 m!3317581))

(assert (=> b!2922454 m!3317633))

(assert (=> b!2922454 m!3317581))

(declare-fun m!3317635 () Bool)

(assert (=> b!2922454 m!3317635))

(assert (=> bm!191369 m!3317577))

(assert (=> d!838669 m!3317577))

(assert (=> d!838669 m!3317503))

(assert (=> b!2922441 m!3317581))

(assert (=> b!2922441 m!3317581))

(assert (=> b!2922441 m!3317583))

(declare-fun m!3317637 () Bool)

(assert (=> b!2922445 m!3317637))

(assert (=> b!2922053 d!838669))

(declare-fun b!2922459 () Bool)

(declare-fun res!1206425 () Bool)

(declare-fun e!1843623 () Bool)

(assert (=> b!2922459 (=> res!1206425 e!1843623)))

(assert (=> b!2922459 (= res!1206425 (not (isEmpty!18993 (tail!4722 s!11993))))))

(declare-fun b!2922460 () Bool)

(declare-fun e!1843618 () Bool)

(assert (=> b!2922460 (= e!1843618 e!1843623)))

(declare-fun res!1206430 () Bool)

(assert (=> b!2922460 (=> res!1206430 e!1843623)))

(declare-fun call!191375 () Bool)

(assert (=> b!2922460 (= res!1206430 call!191375)))

(declare-fun b!2922461 () Bool)

(declare-fun e!1843619 () Bool)

(declare-fun lt!1025992 () Bool)

(assert (=> b!2922461 (= e!1843619 (not lt!1025992))))

(declare-fun b!2922462 () Bool)

(declare-fun e!1843620 () Bool)

(assert (=> b!2922462 (= e!1843620 (= lt!1025992 call!191375))))

(declare-fun b!2922463 () Bool)

(declare-fun e!1843622 () Bool)

(assert (=> b!2922463 (= e!1843622 (nullable!2823 (simplify!32 (regTwo!18519 r!17423))))))

(declare-fun b!2922464 () Bool)

(declare-fun e!1843621 () Bool)

(assert (=> b!2922464 (= e!1843621 e!1843618)))

(declare-fun res!1206426 () Bool)

(assert (=> b!2922464 (=> (not res!1206426) (not e!1843618))))

(assert (=> b!2922464 (= res!1206426 (not lt!1025992))))

(declare-fun b!2922465 () Bool)

(assert (=> b!2922465 (= e!1843620 e!1843619)))

(declare-fun c!476992 () Bool)

(assert (=> b!2922465 (= c!476992 ((_ is EmptyLang!9003) (simplify!32 (regTwo!18519 r!17423))))))

(declare-fun d!838671 () Bool)

(assert (=> d!838671 e!1843620))

(declare-fun c!476994 () Bool)

(assert (=> d!838671 (= c!476994 ((_ is EmptyExpr!9003) (simplify!32 (regTwo!18519 r!17423))))))

(assert (=> d!838671 (= lt!1025992 e!1843622)))

(declare-fun c!476993 () Bool)

(assert (=> d!838671 (= c!476993 (isEmpty!18993 s!11993))))

(assert (=> d!838671 (validRegex!3736 (simplify!32 (regTwo!18519 r!17423)))))

(assert (=> d!838671 (= (matchR!3885 (simplify!32 (regTwo!18519 r!17423)) s!11993) lt!1025992)))

(declare-fun b!2922466 () Bool)

(assert (=> b!2922466 (= e!1843623 (not (= (head!6496 s!11993) (c!476885 (simplify!32 (regTwo!18519 r!17423))))))))

(declare-fun b!2922467 () Bool)

(declare-fun res!1206424 () Bool)

(assert (=> b!2922467 (=> res!1206424 e!1843621)))

(assert (=> b!2922467 (= res!1206424 (not ((_ is ElementMatch!9003) (simplify!32 (regTwo!18519 r!17423)))))))

(assert (=> b!2922467 (= e!1843619 e!1843621)))

(declare-fun b!2922468 () Bool)

(declare-fun res!1206428 () Bool)

(declare-fun e!1843617 () Bool)

(assert (=> b!2922468 (=> (not res!1206428) (not e!1843617))))

(assert (=> b!2922468 (= res!1206428 (isEmpty!18993 (tail!4722 s!11993)))))

(declare-fun b!2922469 () Bool)

(assert (=> b!2922469 (= e!1843617 (= (head!6496 s!11993) (c!476885 (simplify!32 (regTwo!18519 r!17423)))))))

(declare-fun b!2922470 () Bool)

(declare-fun res!1206427 () Bool)

(assert (=> b!2922470 (=> res!1206427 e!1843621)))

(assert (=> b!2922470 (= res!1206427 e!1843617)))

(declare-fun res!1206429 () Bool)

(assert (=> b!2922470 (=> (not res!1206429) (not e!1843617))))

(assert (=> b!2922470 (= res!1206429 lt!1025992)))

(declare-fun bm!191370 () Bool)

(assert (=> bm!191370 (= call!191375 (isEmpty!18993 s!11993))))

(declare-fun b!2922471 () Bool)

(declare-fun res!1206431 () Bool)

(assert (=> b!2922471 (=> (not res!1206431) (not e!1843617))))

(assert (=> b!2922471 (= res!1206431 (not call!191375))))

(declare-fun b!2922472 () Bool)

(assert (=> b!2922472 (= e!1843622 (matchR!3885 (derivativeStep!2437 (simplify!32 (regTwo!18519 r!17423)) (head!6496 s!11993)) (tail!4722 s!11993)))))

(assert (= (and d!838671 c!476993) b!2922463))

(assert (= (and d!838671 (not c!476993)) b!2922472))

(assert (= (and d!838671 c!476994) b!2922462))

(assert (= (and d!838671 (not c!476994)) b!2922465))

(assert (= (and b!2922465 c!476992) b!2922461))

(assert (= (and b!2922465 (not c!476992)) b!2922467))

(assert (= (and b!2922467 (not res!1206424)) b!2922470))

(assert (= (and b!2922470 res!1206429) b!2922471))

(assert (= (and b!2922471 res!1206431) b!2922468))

(assert (= (and b!2922468 res!1206428) b!2922469))

(assert (= (and b!2922470 (not res!1206427)) b!2922464))

(assert (= (and b!2922464 res!1206426) b!2922460))

(assert (= (and b!2922460 (not res!1206430)) b!2922459))

(assert (= (and b!2922459 (not res!1206425)) b!2922466))

(assert (= (or b!2922462 b!2922460 b!2922471) bm!191370))

(assert (=> b!2922469 m!3317579))

(assert (=> b!2922466 m!3317579))

(assert (=> b!2922468 m!3317581))

(assert (=> b!2922468 m!3317581))

(assert (=> b!2922468 m!3317583))

(assert (=> b!2922472 m!3317579))

(assert (=> b!2922472 m!3317505))

(assert (=> b!2922472 m!3317579))

(declare-fun m!3317641 () Bool)

(assert (=> b!2922472 m!3317641))

(assert (=> b!2922472 m!3317581))

(assert (=> b!2922472 m!3317641))

(assert (=> b!2922472 m!3317581))

(declare-fun m!3317643 () Bool)

(assert (=> b!2922472 m!3317643))

(assert (=> bm!191370 m!3317577))

(assert (=> d!838671 m!3317577))

(assert (=> d!838671 m!3317505))

(declare-fun m!3317645 () Bool)

(assert (=> d!838671 m!3317645))

(assert (=> b!2922459 m!3317581))

(assert (=> b!2922459 m!3317581))

(assert (=> b!2922459 m!3317583))

(assert (=> b!2922463 m!3317505))

(declare-fun m!3317647 () Bool)

(assert (=> b!2922463 m!3317647))

(assert (=> b!2922053 d!838671))

(declare-fun b!2922560 () Bool)

(declare-fun e!1843674 () Regex!9003)

(declare-fun lt!1026007 () Regex!9003)

(assert (=> b!2922560 (= e!1843674 lt!1026007)))

(declare-fun d!838673 () Bool)

(declare-fun e!1843675 () Bool)

(assert (=> d!838673 e!1843675))

(declare-fun res!1206441 () Bool)

(assert (=> d!838673 (=> (not res!1206441) (not e!1843675))))

(declare-fun lt!1026006 () Regex!9003)

(assert (=> d!838673 (= res!1206441 (validRegex!3736 lt!1026006))))

(declare-fun e!1843669 () Regex!9003)

(assert (=> d!838673 (= lt!1026006 e!1843669)))

(declare-fun c!477018 () Bool)

(assert (=> d!838673 (= c!477018 ((_ is EmptyLang!9003) (regTwo!18519 r!17423)))))

(assert (=> d!838673 (validRegex!3736 (regTwo!18519 r!17423))))

(assert (=> d!838673 (= (simplify!32 (regTwo!18519 r!17423)) lt!1026006)))

(declare-fun b!2922561 () Bool)

(declare-fun c!477024 () Bool)

(declare-fun call!191395 () Bool)

(assert (=> b!2922561 (= c!477024 call!191395)))

(declare-fun e!1843670 () Regex!9003)

(assert (=> b!2922561 (= e!1843670 e!1843674)))

(declare-fun b!2922562 () Bool)

(declare-fun lt!1026008 () Regex!9003)

(assert (=> b!2922562 (= e!1843670 lt!1026008)))

(declare-fun b!2922563 () Bool)

(declare-fun e!1843666 () Regex!9003)

(assert (=> b!2922563 (= e!1843666 (regTwo!18519 r!17423))))

(declare-fun b!2922564 () Bool)

(declare-fun e!1843664 () Regex!9003)

(assert (=> b!2922564 (= e!1843664 EmptyExpr!9003)))

(declare-fun b!2922565 () Bool)

(declare-fun e!1843677 () Regex!9003)

(declare-fun lt!1026011 () Regex!9003)

(declare-fun lt!1026010 () Regex!9003)

(assert (=> b!2922565 (= e!1843677 (Concat!14324 lt!1026011 lt!1026010))))

(declare-fun bm!191385 () Bool)

(declare-fun call!191390 () Bool)

(declare-fun c!477021 () Bool)

(declare-fun lt!1026009 () Regex!9003)

(declare-fun isEmptyExpr!261 (Regex!9003) Bool)

(assert (=> bm!191385 (= call!191390 (isEmptyExpr!261 (ite c!477021 lt!1026009 lt!1026010)))))

(declare-fun bm!191386 () Bool)

(declare-fun call!191396 () Bool)

(declare-fun c!477027 () Bool)

(declare-fun isEmptyLang!176 (Regex!9003) Bool)

(assert (=> bm!191386 (= call!191396 (isEmptyLang!176 (ite c!477021 lt!1026009 (ite c!477027 lt!1026008 lt!1026010))))))

(declare-fun b!2922566 () Bool)

(declare-fun e!1843668 () Regex!9003)

(assert (=> b!2922566 (= e!1843668 lt!1026010)))

(declare-fun b!2922567 () Bool)

(declare-fun c!477025 () Bool)

(assert (=> b!2922567 (= c!477025 ((_ is EmptyExpr!9003) (regTwo!18519 r!17423)))))

(declare-fun e!1843667 () Regex!9003)

(assert (=> b!2922567 (= e!1843666 e!1843667)))

(declare-fun b!2922568 () Bool)

(assert (=> b!2922568 (= e!1843669 EmptyLang!9003)))

(declare-fun b!2922569 () Bool)

(declare-fun e!1843672 () Regex!9003)

(declare-fun e!1843665 () Regex!9003)

(assert (=> b!2922569 (= e!1843672 e!1843665)))

(declare-fun call!191391 () Regex!9003)

(assert (=> b!2922569 (= lt!1026011 call!191391)))

(declare-fun call!191394 () Regex!9003)

(assert (=> b!2922569 (= lt!1026010 call!191394)))

(declare-fun res!1206442 () Bool)

(declare-fun call!191392 () Bool)

(assert (=> b!2922569 (= res!1206442 call!191392)))

(declare-fun e!1843676 () Bool)

(assert (=> b!2922569 (=> res!1206442 e!1843676)))

(declare-fun c!477019 () Bool)

(assert (=> b!2922569 (= c!477019 e!1843676)))

(declare-fun b!2922570 () Bool)

(assert (=> b!2922570 (= e!1843669 e!1843666)))

(declare-fun c!477026 () Bool)

(assert (=> b!2922570 (= c!477026 ((_ is ElementMatch!9003) (regTwo!18519 r!17423)))))

(declare-fun b!2922571 () Bool)

(assert (=> b!2922571 (= e!1843664 (Star!9003 lt!1026009))))

(declare-fun b!2922572 () Bool)

(assert (=> b!2922572 (= e!1843668 e!1843677)))

(declare-fun c!477020 () Bool)

(assert (=> b!2922572 (= c!477020 call!191390)))

(declare-fun b!2922573 () Bool)

(assert (=> b!2922573 (= e!1843675 (= (nullable!2823 lt!1026006) (nullable!2823 (regTwo!18519 r!17423))))))

(declare-fun b!2922574 () Bool)

(declare-fun c!477017 () Bool)

(declare-fun e!1843671 () Bool)

(assert (=> b!2922574 (= c!477017 e!1843671)))

(declare-fun res!1206440 () Bool)

(assert (=> b!2922574 (=> res!1206440 e!1843671)))

(assert (=> b!2922574 (= res!1206440 call!191396)))

(declare-fun call!191393 () Regex!9003)

(assert (=> b!2922574 (= lt!1026009 call!191393)))

(declare-fun e!1843673 () Regex!9003)

(assert (=> b!2922574 (= e!1843673 e!1843664)))

(declare-fun b!2922575 () Bool)

(declare-fun c!477023 () Bool)

(assert (=> b!2922575 (= c!477023 (isEmptyExpr!261 lt!1026011))))

(assert (=> b!2922575 (= e!1843665 e!1843668)))

(declare-fun bm!191387 () Bool)

(assert (=> bm!191387 (= call!191394 call!191393)))

(declare-fun b!2922576 () Bool)

(assert (=> b!2922576 (= c!477027 ((_ is Union!9003) (regTwo!18519 r!17423)))))

(assert (=> b!2922576 (= e!1843673 e!1843672)))

(declare-fun bm!191388 () Bool)

(assert (=> bm!191388 (= call!191393 (simplify!32 (ite c!477021 (reg!9332 (regTwo!18519 r!17423)) (ite c!477027 (regOne!18519 (regTwo!18519 r!17423)) (regTwo!18518 (regTwo!18519 r!17423))))))))

(declare-fun b!2922577 () Bool)

(assert (=> b!2922577 (= e!1843667 e!1843673)))

(assert (=> b!2922577 (= c!477021 ((_ is Star!9003) (regTwo!18519 r!17423)))))

(declare-fun bm!191389 () Bool)

(assert (=> bm!191389 (= call!191395 call!191396)))

(declare-fun b!2922578 () Bool)

(assert (=> b!2922578 (= e!1843674 (Union!9003 lt!1026007 lt!1026008))))

(declare-fun b!2922579 () Bool)

(assert (=> b!2922579 (= e!1843667 EmptyExpr!9003)))

(declare-fun b!2922580 () Bool)

(assert (=> b!2922580 (= e!1843671 call!191390)))

(declare-fun b!2922581 () Bool)

(assert (=> b!2922581 (= e!1843672 e!1843670)))

(assert (=> b!2922581 (= lt!1026007 call!191394)))

(assert (=> b!2922581 (= lt!1026008 call!191391)))

(declare-fun c!477022 () Bool)

(assert (=> b!2922581 (= c!477022 call!191392)))

(declare-fun b!2922582 () Bool)

(assert (=> b!2922582 (= e!1843677 lt!1026011)))

(declare-fun bm!191390 () Bool)

(assert (=> bm!191390 (= call!191391 (simplify!32 (ite c!477027 (regTwo!18519 (regTwo!18519 r!17423)) (regOne!18518 (regTwo!18519 r!17423)))))))

(declare-fun b!2922583 () Bool)

(assert (=> b!2922583 (= e!1843665 EmptyLang!9003)))

(declare-fun b!2922584 () Bool)

(assert (=> b!2922584 (= e!1843676 call!191395)))

(declare-fun bm!191391 () Bool)

(assert (=> bm!191391 (= call!191392 (isEmptyLang!176 (ite c!477027 lt!1026007 lt!1026011)))))

(assert (= (and d!838673 c!477018) b!2922568))

(assert (= (and d!838673 (not c!477018)) b!2922570))

(assert (= (and b!2922570 c!477026) b!2922563))

(assert (= (and b!2922570 (not c!477026)) b!2922567))

(assert (= (and b!2922567 c!477025) b!2922579))

(assert (= (and b!2922567 (not c!477025)) b!2922577))

(assert (= (and b!2922577 c!477021) b!2922574))

(assert (= (and b!2922577 (not c!477021)) b!2922576))

(assert (= (and b!2922574 (not res!1206440)) b!2922580))

(assert (= (and b!2922574 c!477017) b!2922564))

(assert (= (and b!2922574 (not c!477017)) b!2922571))

(assert (= (and b!2922576 c!477027) b!2922581))

(assert (= (and b!2922576 (not c!477027)) b!2922569))

(assert (= (and b!2922581 c!477022) b!2922562))

(assert (= (and b!2922581 (not c!477022)) b!2922561))

(assert (= (and b!2922561 c!477024) b!2922560))

(assert (= (and b!2922561 (not c!477024)) b!2922578))

(assert (= (and b!2922569 (not res!1206442)) b!2922584))

(assert (= (and b!2922569 c!477019) b!2922583))

(assert (= (and b!2922569 (not c!477019)) b!2922575))

(assert (= (and b!2922575 c!477023) b!2922566))

(assert (= (and b!2922575 (not c!477023)) b!2922572))

(assert (= (and b!2922572 c!477020) b!2922582))

(assert (= (and b!2922572 (not c!477020)) b!2922565))

(assert (= (or b!2922581 b!2922569) bm!191387))

(assert (= (or b!2922581 b!2922569) bm!191390))

(assert (= (or b!2922561 b!2922584) bm!191389))

(assert (= (or b!2922581 b!2922569) bm!191391))

(assert (= (or b!2922580 b!2922572) bm!191385))

(assert (= (or b!2922574 bm!191387) bm!191388))

(assert (= (or b!2922574 bm!191389) bm!191386))

(assert (= (and d!838673 res!1206441) b!2922573))

(declare-fun m!3317649 () Bool)

(assert (=> bm!191385 m!3317649))

(declare-fun m!3317651 () Bool)

(assert (=> d!838673 m!3317651))

(assert (=> d!838673 m!3317503))

(declare-fun m!3317653 () Bool)

(assert (=> b!2922573 m!3317653))

(assert (=> b!2922573 m!3317637))

(declare-fun m!3317655 () Bool)

(assert (=> bm!191388 m!3317655))

(declare-fun m!3317657 () Bool)

(assert (=> bm!191386 m!3317657))

(declare-fun m!3317659 () Bool)

(assert (=> bm!191390 m!3317659))

(declare-fun m!3317661 () Bool)

(assert (=> bm!191391 m!3317661))

(declare-fun m!3317663 () Bool)

(assert (=> b!2922575 m!3317663))

(assert (=> b!2922053 d!838673))

(assert (=> b!2922049 d!838669))

(declare-fun b!2922589 () Bool)

(declare-fun e!1843680 () Bool)

(declare-fun tp!937570 () Bool)

(assert (=> b!2922589 (= e!1843680 (and tp_is_empty!15569 tp!937570))))

(assert (=> b!2922045 (= tp!937524 e!1843680)))

(assert (= (and b!2922045 ((_ is Cons!34744) (t!233933 s!11993))) b!2922589))

(declare-fun b!2922601 () Bool)

(declare-fun e!1843683 () Bool)

(declare-fun tp!937582 () Bool)

(declare-fun tp!937585 () Bool)

(assert (=> b!2922601 (= e!1843683 (and tp!937582 tp!937585))))

(declare-fun b!2922602 () Bool)

(declare-fun tp!937583 () Bool)

(assert (=> b!2922602 (= e!1843683 tp!937583)))

(assert (=> b!2922050 (= tp!937526 e!1843683)))

(declare-fun b!2922603 () Bool)

(declare-fun tp!937584 () Bool)

(declare-fun tp!937581 () Bool)

(assert (=> b!2922603 (= e!1843683 (and tp!937584 tp!937581))))

(declare-fun b!2922600 () Bool)

(assert (=> b!2922600 (= e!1843683 tp_is_empty!15569)))

(assert (= (and b!2922050 ((_ is ElementMatch!9003) (regOne!18519 r!17423))) b!2922600))

(assert (= (and b!2922050 ((_ is Concat!14324) (regOne!18519 r!17423))) b!2922601))

(assert (= (and b!2922050 ((_ is Star!9003) (regOne!18519 r!17423))) b!2922602))

(assert (= (and b!2922050 ((_ is Union!9003) (regOne!18519 r!17423))) b!2922603))

(declare-fun b!2922605 () Bool)

(declare-fun e!1843684 () Bool)

(declare-fun tp!937587 () Bool)

(declare-fun tp!937590 () Bool)

(assert (=> b!2922605 (= e!1843684 (and tp!937587 tp!937590))))

(declare-fun b!2922606 () Bool)

(declare-fun tp!937588 () Bool)

(assert (=> b!2922606 (= e!1843684 tp!937588)))

(assert (=> b!2922050 (= tp!937525 e!1843684)))

(declare-fun b!2922607 () Bool)

(declare-fun tp!937589 () Bool)

(declare-fun tp!937586 () Bool)

(assert (=> b!2922607 (= e!1843684 (and tp!937589 tp!937586))))

(declare-fun b!2922604 () Bool)

(assert (=> b!2922604 (= e!1843684 tp_is_empty!15569)))

(assert (= (and b!2922050 ((_ is ElementMatch!9003) (regTwo!18519 r!17423))) b!2922604))

(assert (= (and b!2922050 ((_ is Concat!14324) (regTwo!18519 r!17423))) b!2922605))

(assert (= (and b!2922050 ((_ is Star!9003) (regTwo!18519 r!17423))) b!2922606))

(assert (= (and b!2922050 ((_ is Union!9003) (regTwo!18519 r!17423))) b!2922607))

(declare-fun b!2922609 () Bool)

(declare-fun e!1843685 () Bool)

(declare-fun tp!937592 () Bool)

(declare-fun tp!937595 () Bool)

(assert (=> b!2922609 (= e!1843685 (and tp!937592 tp!937595))))

(declare-fun b!2922610 () Bool)

(declare-fun tp!937593 () Bool)

(assert (=> b!2922610 (= e!1843685 tp!937593)))

(assert (=> b!2922052 (= tp!937529 e!1843685)))

(declare-fun b!2922611 () Bool)

(declare-fun tp!937594 () Bool)

(declare-fun tp!937591 () Bool)

(assert (=> b!2922611 (= e!1843685 (and tp!937594 tp!937591))))

(declare-fun b!2922608 () Bool)

(assert (=> b!2922608 (= e!1843685 tp_is_empty!15569)))

(assert (= (and b!2922052 ((_ is ElementMatch!9003) (reg!9332 r!17423))) b!2922608))

(assert (= (and b!2922052 ((_ is Concat!14324) (reg!9332 r!17423))) b!2922609))

(assert (= (and b!2922052 ((_ is Star!9003) (reg!9332 r!17423))) b!2922610))

(assert (= (and b!2922052 ((_ is Union!9003) (reg!9332 r!17423))) b!2922611))

(declare-fun b!2922613 () Bool)

(declare-fun e!1843686 () Bool)

(declare-fun tp!937597 () Bool)

(declare-fun tp!937600 () Bool)

(assert (=> b!2922613 (= e!1843686 (and tp!937597 tp!937600))))

(declare-fun b!2922614 () Bool)

(declare-fun tp!937598 () Bool)

(assert (=> b!2922614 (= e!1843686 tp!937598)))

(assert (=> b!2922046 (= tp!937527 e!1843686)))

(declare-fun b!2922615 () Bool)

(declare-fun tp!937599 () Bool)

(declare-fun tp!937596 () Bool)

(assert (=> b!2922615 (= e!1843686 (and tp!937599 tp!937596))))

(declare-fun b!2922612 () Bool)

(assert (=> b!2922612 (= e!1843686 tp_is_empty!15569)))

(assert (= (and b!2922046 ((_ is ElementMatch!9003) (regOne!18518 r!17423))) b!2922612))

(assert (= (and b!2922046 ((_ is Concat!14324) (regOne!18518 r!17423))) b!2922613))

(assert (= (and b!2922046 ((_ is Star!9003) (regOne!18518 r!17423))) b!2922614))

(assert (= (and b!2922046 ((_ is Union!9003) (regOne!18518 r!17423))) b!2922615))

(declare-fun b!2922617 () Bool)

(declare-fun e!1843687 () Bool)

(declare-fun tp!937602 () Bool)

(declare-fun tp!937605 () Bool)

(assert (=> b!2922617 (= e!1843687 (and tp!937602 tp!937605))))

(declare-fun b!2922618 () Bool)

(declare-fun tp!937603 () Bool)

(assert (=> b!2922618 (= e!1843687 tp!937603)))

(assert (=> b!2922046 (= tp!937528 e!1843687)))

(declare-fun b!2922619 () Bool)

(declare-fun tp!937604 () Bool)

(declare-fun tp!937601 () Bool)

(assert (=> b!2922619 (= e!1843687 (and tp!937604 tp!937601))))

(declare-fun b!2922616 () Bool)

(assert (=> b!2922616 (= e!1843687 tp_is_empty!15569)))

(assert (= (and b!2922046 ((_ is ElementMatch!9003) (regTwo!18518 r!17423))) b!2922616))

(assert (= (and b!2922046 ((_ is Concat!14324) (regTwo!18518 r!17423))) b!2922617))

(assert (= (and b!2922046 ((_ is Star!9003) (regTwo!18518 r!17423))) b!2922618))

(assert (= (and b!2922046 ((_ is Union!9003) (regTwo!18518 r!17423))) b!2922619))

(check-sat (not bm!191360) (not b!2922617) (not b!2922613) (not b!2922384) (not b!2922618) (not b!2922310) (not d!838669) (not bm!191353) (not b!2922416) (not bm!191363) (not b!2922368) (not b!2922607) (not b!2922575) (not bm!191370) (not bm!191308) (not b!2922394) (not b!2922359) (not bm!191391) (not b!2922610) (not b!2922424) (not b!2922472) (not b!2922308) (not b!2922393) (not d!838651) (not b!2922448) (not b!2922605) (not b!2922463) (not bm!191309) (not b!2922606) (not b!2922397) (not b!2922454) (not d!838649) (not bm!191369) (not b!2922355) (not b!2922573) (not d!838673) (not b!2922589) (not d!838671) (not b!2922459) (not b!2922388) (not b!2922364) (not b!2922614) (not b!2922078) (not b!2922615) (not bm!191352) (not b!2922466) (not b!2922611) (not b!2922417) (not d!838653) (not bm!191365) (not bm!191390) (not b!2922603) (not bm!191388) (not b!2922469) (not b!2922468) (not b!2922619) (not b!2922445) (not b!2922441) tp_is_empty!15569 (not bm!191386) (not b!2922391) (not b!2922451) (not b!2922602) (not b!2922450) (not d!838663) (not d!838657) (not b!2922601) (not b!2922609) (not b!2922362) (not bm!191385) (not bm!191366) (not b!2922365))
(check-sat)
