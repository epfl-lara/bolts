; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!87184 () Bool)

(assert start!87184)

(declare-fun b!983344 () Bool)

(assert (=> b!983344 true))

(assert (=> b!983344 true))

(declare-fun lambda!35078 () Int)

(declare-fun lambda!35077 () Int)

(assert (=> b!983344 (not (= lambda!35078 lambda!35077))))

(assert (=> b!983344 true))

(assert (=> b!983344 true))

(declare-fun b!983340 () Bool)

(declare-fun e!632404 () Bool)

(declare-fun tp_is_empty!5131 () Bool)

(assert (=> b!983340 (= e!632404 tp_is_empty!5131)))

(declare-fun b!983341 () Bool)

(declare-fun e!632401 () Bool)

(declare-datatypes ((C!6058 0))(
  ( (C!6059 (val!3277 Int)) )
))
(declare-datatypes ((Regex!2744 0))(
  ( (ElementMatch!2744 (c!160827 C!6058)) (Concat!4577 (regOne!6000 Regex!2744) (regTwo!6000 Regex!2744)) (EmptyExpr!2744) (Star!2744 (reg!3073 Regex!2744)) (EmptyLang!2744) (Union!2744 (regOne!6001 Regex!2744) (regTwo!6001 Regex!2744)) )
))
(declare-fun r!15766 () Regex!2744)

(declare-fun validRegex!1213 (Regex!2744) Bool)

(assert (=> b!983341 (= e!632401 (validRegex!1213 (regOne!6000 r!15766)))))

(declare-fun b!983342 () Bool)

(declare-fun e!632402 () Bool)

(declare-fun e!632400 () Bool)

(assert (=> b!983342 (= e!632402 (not e!632400))))

(declare-fun res!446191 () Bool)

(assert (=> b!983342 (=> res!446191 e!632400)))

(declare-fun lt!350292 () Bool)

(assert (=> b!983342 (= res!446191 (or (not lt!350292) (and (is-Concat!4577 r!15766) (is-EmptyExpr!2744 (regOne!6000 r!15766))) (and (is-Concat!4577 r!15766) (is-EmptyExpr!2744 (regTwo!6000 r!15766))) (not (is-Concat!4577 r!15766))))))

(declare-datatypes ((List!9974 0))(
  ( (Nil!9958) (Cons!9958 (h!15359 C!6058) (t!101020 List!9974)) )
))
(declare-fun s!10566 () List!9974)

(declare-fun matchRSpec!543 (Regex!2744 List!9974) Bool)

(assert (=> b!983342 (= lt!350292 (matchRSpec!543 r!15766 s!10566))))

(declare-fun matchR!1280 (Regex!2744 List!9974) Bool)

(assert (=> b!983342 (= lt!350292 (matchR!1280 r!15766 s!10566))))

(declare-datatypes ((Unit!15147 0))(
  ( (Unit!15148) )
))
(declare-fun lt!350294 () Unit!15147)

(declare-fun mainMatchTheorem!543 (Regex!2744 List!9974) Unit!15147)

(assert (=> b!983342 (= lt!350294 (mainMatchTheorem!543 r!15766 s!10566))))

(declare-fun b!983343 () Bool)

(declare-fun tp!300331 () Bool)

(declare-fun tp!300333 () Bool)

(assert (=> b!983343 (= e!632404 (and tp!300331 tp!300333))))

(declare-fun e!632403 () Bool)

(assert (=> b!983344 (= e!632400 e!632403)))

(declare-fun res!446195 () Bool)

(assert (=> b!983344 (=> res!446195 e!632403)))

(declare-fun isEmpty!6287 (List!9974) Bool)

(assert (=> b!983344 (= res!446195 (isEmpty!6287 s!10566))))

(declare-fun Exists!481 (Int) Bool)

(assert (=> b!983344 (= (Exists!481 lambda!35077) (Exists!481 lambda!35078))))

(declare-fun lt!350297 () Unit!15147)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!231 (Regex!2744 Regex!2744 List!9974) Unit!15147)

(assert (=> b!983344 (= lt!350297 (lemmaExistCutMatchRandMatchRSpecEquivalent!231 (regOne!6000 r!15766) (regTwo!6000 r!15766) s!10566))))

(declare-datatypes ((tuple2!11334 0))(
  ( (tuple2!11335 (_1!6493 List!9974) (_2!6493 List!9974)) )
))
(declare-datatypes ((Option!2309 0))(
  ( (None!2308) (Some!2308 (v!19725 tuple2!11334)) )
))
(declare-fun lt!350293 () Option!2309)

(declare-fun isDefined!1951 (Option!2309) Bool)

(assert (=> b!983344 (= (isDefined!1951 lt!350293) (Exists!481 lambda!35077))))

(declare-fun findConcatSeparation!415 (Regex!2744 Regex!2744 List!9974 List!9974 List!9974) Option!2309)

(assert (=> b!983344 (= lt!350293 (findConcatSeparation!415 (regOne!6000 r!15766) (regTwo!6000 r!15766) Nil!9958 s!10566 s!10566))))

(declare-fun lt!350295 () Unit!15147)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!415 (Regex!2744 Regex!2744 List!9974) Unit!15147)

(assert (=> b!983344 (= lt!350295 (lemmaFindConcatSeparationEquivalentToExists!415 (regOne!6000 r!15766) (regTwo!6000 r!15766) s!10566))))

(declare-fun b!983345 () Bool)

(declare-fun e!632405 () Bool)

(declare-fun tp!300334 () Bool)

(assert (=> b!983345 (= e!632405 (and tp_is_empty!5131 tp!300334))))

(declare-fun b!983346 () Bool)

(declare-fun tp!300332 () Bool)

(assert (=> b!983346 (= e!632404 tp!300332)))

(declare-fun res!446193 () Bool)

(assert (=> start!87184 (=> (not res!446193) (not e!632402))))

(assert (=> start!87184 (= res!446193 (validRegex!1213 r!15766))))

(assert (=> start!87184 e!632402))

(assert (=> start!87184 e!632404))

(assert (=> start!87184 e!632405))

(declare-fun b!983347 () Bool)

(declare-fun tp!300330 () Bool)

(declare-fun tp!300329 () Bool)

(assert (=> b!983347 (= e!632404 (and tp!300330 tp!300329))))

(declare-fun b!983348 () Bool)

(declare-fun res!446192 () Bool)

(assert (=> b!983348 (=> res!446192 e!632401)))

(declare-fun lt!350296 () tuple2!11334)

(assert (=> b!983348 (= res!446192 (not (matchR!1280 (regTwo!6000 r!15766) (_2!6493 lt!350296))))))

(declare-fun b!983349 () Bool)

(assert (=> b!983349 (= e!632403 e!632401)))

(declare-fun res!446194 () Bool)

(assert (=> b!983349 (=> res!446194 e!632401)))

(assert (=> b!983349 (= res!446194 (not (matchR!1280 (regOne!6000 r!15766) (_1!6493 lt!350296))))))

(declare-fun get!3459 (Option!2309) tuple2!11334)

(assert (=> b!983349 (= lt!350296 (get!3459 lt!350293))))

(assert (= (and start!87184 res!446193) b!983342))

(assert (= (and b!983342 (not res!446191)) b!983344))

(assert (= (and b!983344 (not res!446195)) b!983349))

(assert (= (and b!983349 (not res!446194)) b!983348))

(assert (= (and b!983348 (not res!446192)) b!983341))

(assert (= (and start!87184 (is-ElementMatch!2744 r!15766)) b!983340))

(assert (= (and start!87184 (is-Concat!4577 r!15766)) b!983347))

(assert (= (and start!87184 (is-Star!2744 r!15766)) b!983346))

(assert (= (and start!87184 (is-Union!2744 r!15766)) b!983343))

(assert (= (and start!87184 (is-Cons!9958 s!10566)) b!983345))

(declare-fun m!1181101 () Bool)

(assert (=> start!87184 m!1181101))

(declare-fun m!1181103 () Bool)

(assert (=> b!983344 m!1181103))

(declare-fun m!1181105 () Bool)

(assert (=> b!983344 m!1181105))

(declare-fun m!1181107 () Bool)

(assert (=> b!983344 m!1181107))

(declare-fun m!1181109 () Bool)

(assert (=> b!983344 m!1181109))

(declare-fun m!1181111 () Bool)

(assert (=> b!983344 m!1181111))

(assert (=> b!983344 m!1181107))

(declare-fun m!1181113 () Bool)

(assert (=> b!983344 m!1181113))

(declare-fun m!1181115 () Bool)

(assert (=> b!983344 m!1181115))

(declare-fun m!1181117 () Bool)

(assert (=> b!983349 m!1181117))

(declare-fun m!1181119 () Bool)

(assert (=> b!983349 m!1181119))

(declare-fun m!1181121 () Bool)

(assert (=> b!983342 m!1181121))

(declare-fun m!1181123 () Bool)

(assert (=> b!983342 m!1181123))

(declare-fun m!1181125 () Bool)

(assert (=> b!983342 m!1181125))

(declare-fun m!1181127 () Bool)

(assert (=> b!983341 m!1181127))

(declare-fun m!1181129 () Bool)

(assert (=> b!983348 m!1181129))

(push 1)

(assert (not start!87184))

(assert (not b!983346))

(assert tp_is_empty!5131)

(assert (not b!983349))

(assert (not b!983344))

(assert (not b!983341))

(assert (not b!983343))

(assert (not b!983342))

(assert (not b!983347))

(assert (not b!983348))

(assert (not b!983345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!983418 () Bool)

(declare-fun e!632447 () Bool)

(declare-fun call!63338 () Bool)

(assert (=> b!983418 (= e!632447 call!63338)))

(declare-fun b!983419 () Bool)

(declare-fun res!446233 () Bool)

(assert (=> b!983419 (=> (not res!446233) (not e!632447))))

(declare-fun call!63339 () Bool)

(assert (=> b!983419 (= res!446233 call!63339)))

(declare-fun e!632445 () Bool)

(assert (=> b!983419 (= e!632445 e!632447)))

(declare-fun b!983420 () Bool)

(declare-fun e!632449 () Bool)

(assert (=> b!983420 (= e!632449 call!63338)))

(declare-fun b!983421 () Bool)

(declare-fun res!446234 () Bool)

(declare-fun e!632446 () Bool)

(assert (=> b!983421 (=> res!446234 e!632446)))

(assert (=> b!983421 (= res!446234 (not (is-Concat!4577 (regOne!6000 r!15766))))))

(assert (=> b!983421 (= e!632445 e!632446)))

(declare-fun bm!63333 () Bool)

(declare-fun call!63340 () Bool)

(assert (=> bm!63333 (= call!63338 call!63340)))

(declare-fun bm!63334 () Bool)

(declare-fun c!160833 () Bool)

(assert (=> bm!63334 (= call!63339 (validRegex!1213 (ite c!160833 (regOne!6001 (regOne!6000 r!15766)) (regOne!6000 (regOne!6000 r!15766)))))))

(declare-fun b!983422 () Bool)

(declare-fun e!632448 () Bool)

(assert (=> b!983422 (= e!632448 e!632445)))

(assert (=> b!983422 (= c!160833 (is-Union!2744 (regOne!6000 r!15766)))))

(declare-fun b!983423 () Bool)

(declare-fun e!632444 () Bool)

(assert (=> b!983423 (= e!632444 call!63340)))

(declare-fun b!983424 () Bool)

(declare-fun e!632450 () Bool)

(assert (=> b!983424 (= e!632450 e!632448)))

(declare-fun c!160834 () Bool)

(assert (=> b!983424 (= c!160834 (is-Star!2744 (regOne!6000 r!15766)))))

(declare-fun bm!63335 () Bool)

(assert (=> bm!63335 (= call!63340 (validRegex!1213 (ite c!160834 (reg!3073 (regOne!6000 r!15766)) (ite c!160833 (regTwo!6001 (regOne!6000 r!15766)) (regTwo!6000 (regOne!6000 r!15766))))))))

(declare-fun d!288484 () Bool)

(declare-fun res!446237 () Bool)

(assert (=> d!288484 (=> res!446237 e!632450)))

(assert (=> d!288484 (= res!446237 (is-ElementMatch!2744 (regOne!6000 r!15766)))))

(assert (=> d!288484 (= (validRegex!1213 (regOne!6000 r!15766)) e!632450)))

(declare-fun b!983425 () Bool)

(assert (=> b!983425 (= e!632448 e!632444)))

(declare-fun res!446235 () Bool)

(declare-fun nullable!860 (Regex!2744) Bool)

(assert (=> b!983425 (= res!446235 (not (nullable!860 (reg!3073 (regOne!6000 r!15766)))))))

(assert (=> b!983425 (=> (not res!446235) (not e!632444))))

(declare-fun b!983426 () Bool)

(assert (=> b!983426 (= e!632446 e!632449)))

(declare-fun res!446236 () Bool)

(assert (=> b!983426 (=> (not res!446236) (not e!632449))))

(assert (=> b!983426 (= res!446236 call!63339)))

(assert (= (and d!288484 (not res!446237)) b!983424))

(assert (= (and b!983424 c!160834) b!983425))

(assert (= (and b!983424 (not c!160834)) b!983422))

(assert (= (and b!983425 res!446235) b!983423))

(assert (= (and b!983422 c!160833) b!983419))

(assert (= (and b!983422 (not c!160833)) b!983421))

(assert (= (and b!983419 res!446233) b!983418))

(assert (= (and b!983421 (not res!446234)) b!983426))

(assert (= (and b!983426 res!446236) b!983420))

(assert (= (or b!983418 b!983420) bm!63333))

(assert (= (or b!983419 b!983426) bm!63334))

(assert (= (or b!983423 bm!63333) bm!63335))

(declare-fun m!1181161 () Bool)

(assert (=> bm!63334 m!1181161))

(declare-fun m!1181163 () Bool)

(assert (=> bm!63335 m!1181163))

(declare-fun m!1181165 () Bool)

(assert (=> b!983425 m!1181165))

(assert (=> b!983341 d!288484))

(declare-fun d!288488 () Bool)

(declare-fun choose!6241 (Int) Bool)

(assert (=> d!288488 (= (Exists!481 lambda!35077) (choose!6241 lambda!35077))))

(declare-fun bs!244028 () Bool)

(assert (= bs!244028 d!288488))

(declare-fun m!1181167 () Bool)

(assert (=> bs!244028 m!1181167))

(assert (=> b!983344 d!288488))

(declare-fun d!288490 () Bool)

(assert (=> d!288490 (= (isEmpty!6287 s!10566) (is-Nil!9958 s!10566))))

(assert (=> b!983344 d!288490))

(declare-fun bs!244029 () Bool)

(declare-fun d!288492 () Bool)

(assert (= bs!244029 (and d!288492 b!983344)))

(declare-fun lambda!35089 () Int)

(assert (=> bs!244029 (= lambda!35089 lambda!35077)))

(assert (=> bs!244029 (not (= lambda!35089 lambda!35078))))

(assert (=> d!288492 true))

(assert (=> d!288492 true))

(assert (=> d!288492 true))

(assert (=> d!288492 (= (isDefined!1951 (findConcatSeparation!415 (regOne!6000 r!15766) (regTwo!6000 r!15766) Nil!9958 s!10566 s!10566)) (Exists!481 lambda!35089))))

(declare-fun lt!350318 () Unit!15147)

(declare-fun choose!6242 (Regex!2744 Regex!2744 List!9974) Unit!15147)

(assert (=> d!288492 (= lt!350318 (choose!6242 (regOne!6000 r!15766) (regTwo!6000 r!15766) s!10566))))

(assert (=> d!288492 (validRegex!1213 (regOne!6000 r!15766))))

(assert (=> d!288492 (= (lemmaFindConcatSeparationEquivalentToExists!415 (regOne!6000 r!15766) (regTwo!6000 r!15766) s!10566) lt!350318)))

(declare-fun bs!244030 () Bool)

(assert (= bs!244030 d!288492))

(assert (=> bs!244030 m!1181115))

(declare-fun m!1181169 () Bool)

(assert (=> bs!244030 m!1181169))

(declare-fun m!1181171 () Bool)

(assert (=> bs!244030 m!1181171))

(assert (=> bs!244030 m!1181115))

(assert (=> bs!244030 m!1181127))

(declare-fun m!1181173 () Bool)

(assert (=> bs!244030 m!1181173))

(assert (=> b!983344 d!288492))

(declare-fun b!983485 () Bool)

(declare-fun e!632495 () Option!2309)

(assert (=> b!983485 (= e!632495 None!2308)))

(declare-fun d!288494 () Bool)

(declare-fun e!632493 () Bool)

(assert (=> d!288494 e!632493))

(declare-fun res!446273 () Bool)

(assert (=> d!288494 (=> res!446273 e!632493)))

(declare-fun e!632491 () Bool)

(assert (=> d!288494 (= res!446273 e!632491)))

(declare-fun res!446274 () Bool)

(assert (=> d!288494 (=> (not res!446274) (not e!632491))))

(declare-fun lt!350326 () Option!2309)

(assert (=> d!288494 (= res!446274 (isDefined!1951 lt!350326))))

(declare-fun e!632492 () Option!2309)

(assert (=> d!288494 (= lt!350326 e!632492)))

(declare-fun c!160847 () Bool)

(declare-fun e!632494 () Bool)

(assert (=> d!288494 (= c!160847 e!632494)))

(declare-fun res!446272 () Bool)

(assert (=> d!288494 (=> (not res!446272) (not e!632494))))

(assert (=> d!288494 (= res!446272 (matchR!1280 (regOne!6000 r!15766) Nil!9958))))

(assert (=> d!288494 (validRegex!1213 (regOne!6000 r!15766))))

(assert (=> d!288494 (= (findConcatSeparation!415 (regOne!6000 r!15766) (regTwo!6000 r!15766) Nil!9958 s!10566 s!10566) lt!350326)))

(declare-fun b!983486 () Bool)

(assert (=> b!983486 (= e!632493 (not (isDefined!1951 lt!350326)))))

(declare-fun b!983487 () Bool)

(declare-fun res!446276 () Bool)

(assert (=> b!983487 (=> (not res!446276) (not e!632491))))

(assert (=> b!983487 (= res!446276 (matchR!1280 (regTwo!6000 r!15766) (_2!6493 (get!3459 lt!350326))))))

(declare-fun b!983488 () Bool)

(assert (=> b!983488 (= e!632492 (Some!2308 (tuple2!11335 Nil!9958 s!10566)))))

(declare-fun b!983489 () Bool)

(assert (=> b!983489 (= e!632494 (matchR!1280 (regTwo!6000 r!15766) s!10566))))

(declare-fun b!983490 () Bool)

(declare-fun res!446275 () Bool)

(assert (=> b!983490 (=> (not res!446275) (not e!632491))))

(assert (=> b!983490 (= res!446275 (matchR!1280 (regOne!6000 r!15766) (_1!6493 (get!3459 lt!350326))))))

(declare-fun b!983491 () Bool)

(assert (=> b!983491 (= e!632492 e!632495)))

(declare-fun c!160848 () Bool)

(assert (=> b!983491 (= c!160848 (is-Nil!9958 s!10566))))

(declare-fun b!983492 () Bool)

(declare-fun lt!350327 () Unit!15147)

(declare-fun lt!350325 () Unit!15147)

(assert (=> b!983492 (= lt!350327 lt!350325)))

(declare-fun ++!2706 (List!9974 List!9974) List!9974)

(assert (=> b!983492 (= (++!2706 (++!2706 Nil!9958 (Cons!9958 (h!15359 s!10566) Nil!9958)) (t!101020 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!306 (List!9974 C!6058 List!9974 List!9974) Unit!15147)

(assert (=> b!983492 (= lt!350325 (lemmaMoveElementToOtherListKeepsConcatEq!306 Nil!9958 (h!15359 s!10566) (t!101020 s!10566) s!10566))))

(assert (=> b!983492 (= e!632495 (findConcatSeparation!415 (regOne!6000 r!15766) (regTwo!6000 r!15766) (++!2706 Nil!9958 (Cons!9958 (h!15359 s!10566) Nil!9958)) (t!101020 s!10566) s!10566))))

(declare-fun b!983493 () Bool)

(assert (=> b!983493 (= e!632491 (= (++!2706 (_1!6493 (get!3459 lt!350326)) (_2!6493 (get!3459 lt!350326))) s!10566))))

(assert (= (and d!288494 res!446272) b!983489))

(assert (= (and d!288494 c!160847) b!983488))

(assert (= (and d!288494 (not c!160847)) b!983491))

(assert (= (and b!983491 c!160848) b!983485))

(assert (= (and b!983491 (not c!160848)) b!983492))

(assert (= (and d!288494 res!446274) b!983490))

(assert (= (and b!983490 res!446275) b!983487))

(assert (= (and b!983487 res!446276) b!983493))

(assert (= (and d!288494 (not res!446273)) b!983486))

(declare-fun m!1181187 () Bool)

(assert (=> b!983490 m!1181187))

(declare-fun m!1181189 () Bool)

(assert (=> b!983490 m!1181189))

(declare-fun m!1181191 () Bool)

(assert (=> b!983492 m!1181191))

(assert (=> b!983492 m!1181191))

(declare-fun m!1181193 () Bool)

(assert (=> b!983492 m!1181193))

(declare-fun m!1181195 () Bool)

(assert (=> b!983492 m!1181195))

(assert (=> b!983492 m!1181191))

(declare-fun m!1181197 () Bool)

(assert (=> b!983492 m!1181197))

(declare-fun m!1181199 () Bool)

(assert (=> b!983486 m!1181199))

(assert (=> b!983487 m!1181187))

(declare-fun m!1181201 () Bool)

(assert (=> b!983487 m!1181201))

(assert (=> b!983493 m!1181187))

(declare-fun m!1181203 () Bool)

(assert (=> b!983493 m!1181203))

(declare-fun m!1181205 () Bool)

(assert (=> b!983489 m!1181205))

(assert (=> d!288494 m!1181199))

(declare-fun m!1181207 () Bool)

(assert (=> d!288494 m!1181207))

(assert (=> d!288494 m!1181127))

(assert (=> b!983344 d!288494))

(declare-fun d!288500 () Bool)

(assert (=> d!288500 (= (Exists!481 lambda!35078) (choose!6241 lambda!35078))))

(declare-fun bs!244031 () Bool)

(assert (= bs!244031 d!288500))

(declare-fun m!1181209 () Bool)

(assert (=> bs!244031 m!1181209))

(assert (=> b!983344 d!288500))

(declare-fun d!288502 () Bool)

(declare-fun isEmpty!6289 (Option!2309) Bool)

(assert (=> d!288502 (= (isDefined!1951 lt!350293) (not (isEmpty!6289 lt!350293)))))

(declare-fun bs!244032 () Bool)

(assert (= bs!244032 d!288502))

(declare-fun m!1181211 () Bool)

(assert (=> bs!244032 m!1181211))

(assert (=> b!983344 d!288502))

(declare-fun bs!244033 () Bool)

(declare-fun d!288504 () Bool)

(assert (= bs!244033 (and d!288504 b!983344)))

(declare-fun lambda!35094 () Int)

(assert (=> bs!244033 (= lambda!35094 lambda!35077)))

(assert (=> bs!244033 (not (= lambda!35094 lambda!35078))))

(declare-fun bs!244034 () Bool)

(assert (= bs!244034 (and d!288504 d!288492)))

(assert (=> bs!244034 (= lambda!35094 lambda!35089)))

(assert (=> d!288504 true))

(assert (=> d!288504 true))

(assert (=> d!288504 true))

(declare-fun lambda!35095 () Int)

(assert (=> bs!244033 (not (= lambda!35095 lambda!35077))))

(assert (=> bs!244033 (= lambda!35095 lambda!35078)))

(assert (=> bs!244034 (not (= lambda!35095 lambda!35089))))

(declare-fun bs!244035 () Bool)

(assert (= bs!244035 d!288504))

(assert (=> bs!244035 (not (= lambda!35095 lambda!35094))))

(assert (=> d!288504 true))

(assert (=> d!288504 true))

(assert (=> d!288504 true))

(assert (=> d!288504 (= (Exists!481 lambda!35094) (Exists!481 lambda!35095))))

(declare-fun lt!350332 () Unit!15147)

(declare-fun choose!6243 (Regex!2744 Regex!2744 List!9974) Unit!15147)

(assert (=> d!288504 (= lt!350332 (choose!6243 (regOne!6000 r!15766) (regTwo!6000 r!15766) s!10566))))

(assert (=> d!288504 (validRegex!1213 (regOne!6000 r!15766))))

(assert (=> d!288504 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!231 (regOne!6000 r!15766) (regTwo!6000 r!15766) s!10566) lt!350332)))

(declare-fun m!1181213 () Bool)

(assert (=> bs!244035 m!1181213))

(declare-fun m!1181215 () Bool)

(assert (=> bs!244035 m!1181215))

(declare-fun m!1181217 () Bool)

(assert (=> bs!244035 m!1181217))

(assert (=> bs!244035 m!1181127))

(assert (=> b!983344 d!288504))

(declare-fun b!983586 () Bool)

(declare-fun e!632544 () Bool)

(declare-fun head!1819 (List!9974) C!6058)

(assert (=> b!983586 (= e!632544 (= (head!1819 (_1!6493 lt!350296)) (c!160827 (regOne!6000 r!15766))))))

(declare-fun bm!63354 () Bool)

(declare-fun call!63359 () Bool)

(assert (=> bm!63354 (= call!63359 (isEmpty!6287 (_1!6493 lt!350296)))))

(declare-fun b!983587 () Bool)

(declare-fun e!632546 () Bool)

(declare-fun lt!350337 () Bool)

(assert (=> b!983587 (= e!632546 (not lt!350337))))

(declare-fun b!983588 () Bool)

(declare-fun e!632543 () Bool)

(declare-fun e!632547 () Bool)

(assert (=> b!983588 (= e!632543 e!632547)))

(declare-fun res!446335 () Bool)

(assert (=> b!983588 (=> res!446335 e!632547)))

(assert (=> b!983588 (= res!446335 call!63359)))

(declare-fun b!983589 () Bool)

(declare-fun e!632542 () Bool)

(assert (=> b!983589 (= e!632542 e!632543)))

(declare-fun res!446339 () Bool)

(assert (=> b!983589 (=> (not res!446339) (not e!632543))))

(assert (=> b!983589 (= res!446339 (not lt!350337))))

(declare-fun b!983590 () Bool)

(assert (=> b!983590 (= e!632547 (not (= (head!1819 (_1!6493 lt!350296)) (c!160827 (regOne!6000 r!15766)))))))

(declare-fun b!983591 () Bool)

(declare-fun e!632548 () Bool)

(declare-fun derivativeStep!666 (Regex!2744 C!6058) Regex!2744)

(declare-fun tail!1381 (List!9974) List!9974)

(assert (=> b!983591 (= e!632548 (matchR!1280 (derivativeStep!666 (regOne!6000 r!15766) (head!1819 (_1!6493 lt!350296))) (tail!1381 (_1!6493 lt!350296))))))

(declare-fun b!983593 () Bool)

(declare-fun res!446337 () Bool)

(assert (=> b!983593 (=> res!446337 e!632542)))

(assert (=> b!983593 (= res!446337 (not (is-ElementMatch!2744 (regOne!6000 r!15766))))))

(assert (=> b!983593 (= e!632546 e!632542)))

(declare-fun b!983594 () Bool)

(declare-fun e!632545 () Bool)

(assert (=> b!983594 (= e!632545 e!632546)))

(declare-fun c!160867 () Bool)

(assert (=> b!983594 (= c!160867 (is-EmptyLang!2744 (regOne!6000 r!15766)))))

(declare-fun b!983595 () Bool)

(declare-fun res!446333 () Bool)

(assert (=> b!983595 (=> res!446333 e!632547)))

(assert (=> b!983595 (= res!446333 (not (isEmpty!6287 (tail!1381 (_1!6493 lt!350296)))))))

(declare-fun b!983596 () Bool)

(declare-fun res!446338 () Bool)

(assert (=> b!983596 (=> res!446338 e!632542)))

(assert (=> b!983596 (= res!446338 e!632544)))

(declare-fun res!446340 () Bool)

(assert (=> b!983596 (=> (not res!446340) (not e!632544))))

(assert (=> b!983596 (= res!446340 lt!350337)))

(declare-fun b!983592 () Bool)

(assert (=> b!983592 (= e!632545 (= lt!350337 call!63359))))

(declare-fun d!288506 () Bool)

(assert (=> d!288506 e!632545))

(declare-fun c!160869 () Bool)

(assert (=> d!288506 (= c!160869 (is-EmptyExpr!2744 (regOne!6000 r!15766)))))

(assert (=> d!288506 (= lt!350337 e!632548)))

(declare-fun c!160868 () Bool)

(assert (=> d!288506 (= c!160868 (isEmpty!6287 (_1!6493 lt!350296)))))

(assert (=> d!288506 (validRegex!1213 (regOne!6000 r!15766))))

(assert (=> d!288506 (= (matchR!1280 (regOne!6000 r!15766) (_1!6493 lt!350296)) lt!350337)))

(declare-fun b!983597 () Bool)

(assert (=> b!983597 (= e!632548 (nullable!860 (regOne!6000 r!15766)))))

(declare-fun b!983598 () Bool)

(declare-fun res!446334 () Bool)

(assert (=> b!983598 (=> (not res!446334) (not e!632544))))

(assert (=> b!983598 (= res!446334 (isEmpty!6287 (tail!1381 (_1!6493 lt!350296))))))

(declare-fun b!983599 () Bool)

(declare-fun res!446336 () Bool)

(assert (=> b!983599 (=> (not res!446336) (not e!632544))))

(assert (=> b!983599 (= res!446336 (not call!63359))))

(assert (= (and d!288506 c!160868) b!983597))

(assert (= (and d!288506 (not c!160868)) b!983591))

(assert (= (and d!288506 c!160869) b!983592))

(assert (= (and d!288506 (not c!160869)) b!983594))

(assert (= (and b!983594 c!160867) b!983587))

(assert (= (and b!983594 (not c!160867)) b!983593))

(assert (= (and b!983593 (not res!446337)) b!983596))

(assert (= (and b!983596 res!446340) b!983599))

(assert (= (and b!983599 res!446336) b!983598))

(assert (= (and b!983598 res!446334) b!983586))

(assert (= (and b!983596 (not res!446338)) b!983589))

(assert (= (and b!983589 res!446339) b!983588))

(assert (= (and b!983588 (not res!446335)) b!983595))

(assert (= (and b!983595 (not res!446333)) b!983590))

(assert (= (or b!983592 b!983588 b!983599) bm!63354))

(declare-fun m!1181249 () Bool)

(assert (=> b!983591 m!1181249))

(assert (=> b!983591 m!1181249))

(declare-fun m!1181251 () Bool)

(assert (=> b!983591 m!1181251))

(declare-fun m!1181253 () Bool)

(assert (=> b!983591 m!1181253))

(assert (=> b!983591 m!1181251))

(assert (=> b!983591 m!1181253))

(declare-fun m!1181255 () Bool)

(assert (=> b!983591 m!1181255))

(assert (=> b!983586 m!1181249))

(assert (=> b!983598 m!1181253))

(assert (=> b!983598 m!1181253))

(declare-fun m!1181257 () Bool)

(assert (=> b!983598 m!1181257))

(declare-fun m!1181259 () Bool)

(assert (=> b!983597 m!1181259))

(declare-fun m!1181261 () Bool)

(assert (=> bm!63354 m!1181261))

(assert (=> d!288506 m!1181261))

(assert (=> d!288506 m!1181127))

(assert (=> b!983595 m!1181253))

(assert (=> b!983595 m!1181253))

(assert (=> b!983595 m!1181257))

(assert (=> b!983590 m!1181249))

(assert (=> b!983349 d!288506))

(declare-fun d!288514 () Bool)

(assert (=> d!288514 (= (get!3459 lt!350293) (v!19725 lt!350293))))

(assert (=> b!983349 d!288514))

(declare-fun b!983600 () Bool)

(declare-fun e!632551 () Bool)

(assert (=> b!983600 (= e!632551 (= (head!1819 (_2!6493 lt!350296)) (c!160827 (regTwo!6000 r!15766))))))

(declare-fun bm!63355 () Bool)

(declare-fun call!63360 () Bool)

(assert (=> bm!63355 (= call!63360 (isEmpty!6287 (_2!6493 lt!350296)))))

(declare-fun b!983601 () Bool)

(declare-fun e!632553 () Bool)

(declare-fun lt!350338 () Bool)

(assert (=> b!983601 (= e!632553 (not lt!350338))))

(declare-fun b!983602 () Bool)

(declare-fun e!632550 () Bool)

(declare-fun e!632554 () Bool)

(assert (=> b!983602 (= e!632550 e!632554)))

(declare-fun res!446343 () Bool)

(assert (=> b!983602 (=> res!446343 e!632554)))

(assert (=> b!983602 (= res!446343 call!63360)))

(declare-fun b!983603 () Bool)

(declare-fun e!632549 () Bool)

(assert (=> b!983603 (= e!632549 e!632550)))

(declare-fun res!446347 () Bool)

(assert (=> b!983603 (=> (not res!446347) (not e!632550))))

(assert (=> b!983603 (= res!446347 (not lt!350338))))

(declare-fun b!983604 () Bool)

(assert (=> b!983604 (= e!632554 (not (= (head!1819 (_2!6493 lt!350296)) (c!160827 (regTwo!6000 r!15766)))))))

(declare-fun b!983605 () Bool)

(declare-fun e!632555 () Bool)

(assert (=> b!983605 (= e!632555 (matchR!1280 (derivativeStep!666 (regTwo!6000 r!15766) (head!1819 (_2!6493 lt!350296))) (tail!1381 (_2!6493 lt!350296))))))

(declare-fun b!983607 () Bool)

(declare-fun res!446345 () Bool)

(assert (=> b!983607 (=> res!446345 e!632549)))

(assert (=> b!983607 (= res!446345 (not (is-ElementMatch!2744 (regTwo!6000 r!15766))))))

(assert (=> b!983607 (= e!632553 e!632549)))

(declare-fun b!983608 () Bool)

(declare-fun e!632552 () Bool)

(assert (=> b!983608 (= e!632552 e!632553)))

(declare-fun c!160870 () Bool)

(assert (=> b!983608 (= c!160870 (is-EmptyLang!2744 (regTwo!6000 r!15766)))))

(declare-fun b!983609 () Bool)

(declare-fun res!446341 () Bool)

(assert (=> b!983609 (=> res!446341 e!632554)))

(assert (=> b!983609 (= res!446341 (not (isEmpty!6287 (tail!1381 (_2!6493 lt!350296)))))))

(declare-fun b!983610 () Bool)

(declare-fun res!446346 () Bool)

(assert (=> b!983610 (=> res!446346 e!632549)))

(assert (=> b!983610 (= res!446346 e!632551)))

(declare-fun res!446348 () Bool)

(assert (=> b!983610 (=> (not res!446348) (not e!632551))))

(assert (=> b!983610 (= res!446348 lt!350338)))

(declare-fun b!983606 () Bool)

(assert (=> b!983606 (= e!632552 (= lt!350338 call!63360))))

(declare-fun d!288516 () Bool)

(assert (=> d!288516 e!632552))

(declare-fun c!160872 () Bool)

(assert (=> d!288516 (= c!160872 (is-EmptyExpr!2744 (regTwo!6000 r!15766)))))

(assert (=> d!288516 (= lt!350338 e!632555)))

(declare-fun c!160871 () Bool)

(assert (=> d!288516 (= c!160871 (isEmpty!6287 (_2!6493 lt!350296)))))

(assert (=> d!288516 (validRegex!1213 (regTwo!6000 r!15766))))

(assert (=> d!288516 (= (matchR!1280 (regTwo!6000 r!15766) (_2!6493 lt!350296)) lt!350338)))

(declare-fun b!983611 () Bool)

(assert (=> b!983611 (= e!632555 (nullable!860 (regTwo!6000 r!15766)))))

(declare-fun b!983612 () Bool)

(declare-fun res!446342 () Bool)

(assert (=> b!983612 (=> (not res!446342) (not e!632551))))

(assert (=> b!983612 (= res!446342 (isEmpty!6287 (tail!1381 (_2!6493 lt!350296))))))

(declare-fun b!983613 () Bool)

(declare-fun res!446344 () Bool)

(assert (=> b!983613 (=> (not res!446344) (not e!632551))))

(assert (=> b!983613 (= res!446344 (not call!63360))))

(assert (= (and d!288516 c!160871) b!983611))

(assert (= (and d!288516 (not c!160871)) b!983605))

(assert (= (and d!288516 c!160872) b!983606))

(assert (= (and d!288516 (not c!160872)) b!983608))

(assert (= (and b!983608 c!160870) b!983601))

(assert (= (and b!983608 (not c!160870)) b!983607))

(assert (= (and b!983607 (not res!446345)) b!983610))

(assert (= (and b!983610 res!446348) b!983613))

(assert (= (and b!983613 res!446344) b!983612))

(assert (= (and b!983612 res!446342) b!983600))

(assert (= (and b!983610 (not res!446346)) b!983603))

(assert (= (and b!983603 res!446347) b!983602))

(assert (= (and b!983602 (not res!446343)) b!983609))

(assert (= (and b!983609 (not res!446341)) b!983604))

(assert (= (or b!983606 b!983602 b!983613) bm!63355))

(declare-fun m!1181263 () Bool)

(assert (=> b!983605 m!1181263))

(assert (=> b!983605 m!1181263))

(declare-fun m!1181265 () Bool)

(assert (=> b!983605 m!1181265))

(declare-fun m!1181267 () Bool)

(assert (=> b!983605 m!1181267))

(assert (=> b!983605 m!1181265))

(assert (=> b!983605 m!1181267))

(declare-fun m!1181269 () Bool)

(assert (=> b!983605 m!1181269))

(assert (=> b!983600 m!1181263))

(assert (=> b!983612 m!1181267))

(assert (=> b!983612 m!1181267))

(declare-fun m!1181271 () Bool)

(assert (=> b!983612 m!1181271))

(declare-fun m!1181273 () Bool)

(assert (=> b!983611 m!1181273))

(declare-fun m!1181275 () Bool)

(assert (=> bm!63355 m!1181275))

(assert (=> d!288516 m!1181275))

(declare-fun m!1181277 () Bool)

(assert (=> d!288516 m!1181277))

(assert (=> b!983609 m!1181267))

(assert (=> b!983609 m!1181267))

(assert (=> b!983609 m!1181271))

(assert (=> b!983604 m!1181263))

(assert (=> b!983348 d!288516))

(declare-fun b!983614 () Bool)

(declare-fun e!632559 () Bool)

(declare-fun call!63361 () Bool)

(assert (=> b!983614 (= e!632559 call!63361)))

(declare-fun b!983615 () Bool)

(declare-fun res!446349 () Bool)

(assert (=> b!983615 (=> (not res!446349) (not e!632559))))

(declare-fun call!63362 () Bool)

(assert (=> b!983615 (= res!446349 call!63362)))

(declare-fun e!632557 () Bool)

(assert (=> b!983615 (= e!632557 e!632559)))

(declare-fun b!983616 () Bool)

(declare-fun e!632561 () Bool)

(assert (=> b!983616 (= e!632561 call!63361)))

(declare-fun b!983617 () Bool)

(declare-fun res!446350 () Bool)

(declare-fun e!632558 () Bool)

(assert (=> b!983617 (=> res!446350 e!632558)))

(assert (=> b!983617 (= res!446350 (not (is-Concat!4577 r!15766)))))

(assert (=> b!983617 (= e!632557 e!632558)))

(declare-fun bm!63356 () Bool)

(declare-fun call!63363 () Bool)

(assert (=> bm!63356 (= call!63361 call!63363)))

(declare-fun bm!63357 () Bool)

(declare-fun c!160873 () Bool)

(assert (=> bm!63357 (= call!63362 (validRegex!1213 (ite c!160873 (regOne!6001 r!15766) (regOne!6000 r!15766))))))

(declare-fun b!983618 () Bool)

(declare-fun e!632560 () Bool)

(assert (=> b!983618 (= e!632560 e!632557)))

(assert (=> b!983618 (= c!160873 (is-Union!2744 r!15766))))

(declare-fun b!983619 () Bool)

(declare-fun e!632556 () Bool)

(assert (=> b!983619 (= e!632556 call!63363)))

(declare-fun b!983620 () Bool)

(declare-fun e!632562 () Bool)

(assert (=> b!983620 (= e!632562 e!632560)))

(declare-fun c!160874 () Bool)

(assert (=> b!983620 (= c!160874 (is-Star!2744 r!15766))))

(declare-fun bm!63358 () Bool)

(assert (=> bm!63358 (= call!63363 (validRegex!1213 (ite c!160874 (reg!3073 r!15766) (ite c!160873 (regTwo!6001 r!15766) (regTwo!6000 r!15766)))))))

(declare-fun d!288518 () Bool)

(declare-fun res!446353 () Bool)

(assert (=> d!288518 (=> res!446353 e!632562)))

(assert (=> d!288518 (= res!446353 (is-ElementMatch!2744 r!15766))))

(assert (=> d!288518 (= (validRegex!1213 r!15766) e!632562)))

(declare-fun b!983621 () Bool)

(assert (=> b!983621 (= e!632560 e!632556)))

(declare-fun res!446351 () Bool)

(assert (=> b!983621 (= res!446351 (not (nullable!860 (reg!3073 r!15766))))))

(assert (=> b!983621 (=> (not res!446351) (not e!632556))))

(declare-fun b!983622 () Bool)

(assert (=> b!983622 (= e!632558 e!632561)))

(declare-fun res!446352 () Bool)

(assert (=> b!983622 (=> (not res!446352) (not e!632561))))

(assert (=> b!983622 (= res!446352 call!63362)))

(assert (= (and d!288518 (not res!446353)) b!983620))

(assert (= (and b!983620 c!160874) b!983621))

(assert (= (and b!983620 (not c!160874)) b!983618))

(assert (= (and b!983621 res!446351) b!983619))

(assert (= (and b!983618 c!160873) b!983615))

(assert (= (and b!983618 (not c!160873)) b!983617))

(assert (= (and b!983615 res!446349) b!983614))

(assert (= (and b!983617 (not res!446350)) b!983622))

(assert (= (and b!983622 res!446352) b!983616))

(assert (= (or b!983614 b!983616) bm!63356))

(assert (= (or b!983615 b!983622) bm!63357))

(assert (= (or b!983619 bm!63356) bm!63358))

(declare-fun m!1181279 () Bool)

(assert (=> bm!63357 m!1181279))

(declare-fun m!1181281 () Bool)

(assert (=> bm!63358 m!1181281))

(declare-fun m!1181283 () Bool)

(assert (=> b!983621 m!1181283))

(assert (=> start!87184 d!288518))

(declare-fun bs!244036 () Bool)

(declare-fun b!983687 () Bool)

(assert (= bs!244036 (and b!983687 b!983344)))

(declare-fun lambda!35102 () Int)

(assert (=> bs!244036 (not (= lambda!35102 lambda!35077))))

(declare-fun bs!244037 () Bool)

(assert (= bs!244037 (and b!983687 d!288492)))

(assert (=> bs!244037 (not (= lambda!35102 lambda!35089))))

(declare-fun bs!244038 () Bool)

(assert (= bs!244038 (and b!983687 d!288504)))

(assert (=> bs!244038 (not (= lambda!35102 lambda!35095))))

(assert (=> bs!244038 (not (= lambda!35102 lambda!35094))))

(assert (=> bs!244036 (not (= lambda!35102 lambda!35078))))

(assert (=> b!983687 true))

(assert (=> b!983687 true))

(declare-fun bs!244039 () Bool)

(declare-fun b!983683 () Bool)

(assert (= bs!244039 (and b!983683 b!983344)))

(declare-fun lambda!35105 () Int)

(assert (=> bs!244039 (not (= lambda!35105 lambda!35077))))

(declare-fun bs!244040 () Bool)

(assert (= bs!244040 (and b!983683 d!288492)))

(assert (=> bs!244040 (not (= lambda!35105 lambda!35089))))

(declare-fun bs!244041 () Bool)

(assert (= bs!244041 (and b!983683 d!288504)))

(assert (=> bs!244041 (= lambda!35105 lambda!35095)))

(assert (=> bs!244041 (not (= lambda!35105 lambda!35094))))

(declare-fun bs!244042 () Bool)

(assert (= bs!244042 (and b!983683 b!983687)))

(assert (=> bs!244042 (not (= lambda!35105 lambda!35102))))

(assert (=> bs!244039 (= lambda!35105 lambda!35078)))

(assert (=> b!983683 true))

(assert (=> b!983683 true))

(declare-fun e!632597 () Bool)

(declare-fun call!63368 () Bool)

(assert (=> b!983683 (= e!632597 call!63368)))

(declare-fun b!983684 () Bool)

(declare-fun e!632603 () Bool)

(declare-fun call!63369 () Bool)

(assert (=> b!983684 (= e!632603 call!63369)))

(declare-fun b!983685 () Bool)

(declare-fun e!632601 () Bool)

(assert (=> b!983685 (= e!632601 (= s!10566 (Cons!9958 (c!160827 r!15766) Nil!9958)))))

(declare-fun b!983686 () Bool)

(declare-fun e!632600 () Bool)

(assert (=> b!983686 (= e!632600 e!632597)))

(declare-fun c!160891 () Bool)

(assert (=> b!983686 (= c!160891 (is-Star!2744 r!15766))))

(declare-fun d!288520 () Bool)

(declare-fun c!160894 () Bool)

(assert (=> d!288520 (= c!160894 (is-EmptyExpr!2744 r!15766))))

(assert (=> d!288520 (= (matchRSpec!543 r!15766 s!10566) e!632603)))

(declare-fun e!632598 () Bool)

(assert (=> b!983687 (= e!632598 call!63368)))

(declare-fun b!983688 () Bool)

(declare-fun c!160892 () Bool)

(assert (=> b!983688 (= c!160892 (is-ElementMatch!2744 r!15766))))

(declare-fun e!632599 () Bool)

(assert (=> b!983688 (= e!632599 e!632601)))

(declare-fun b!983689 () Bool)

(declare-fun e!632602 () Bool)

(assert (=> b!983689 (= e!632602 (matchRSpec!543 (regTwo!6001 r!15766) s!10566))))

(declare-fun bm!63363 () Bool)

(assert (=> bm!63363 (= call!63368 (Exists!481 (ite c!160891 lambda!35102 lambda!35105)))))

(declare-fun b!983690 () Bool)

(assert (=> b!983690 (= e!632600 e!632602)))

(declare-fun res!446382 () Bool)

(assert (=> b!983690 (= res!446382 (matchRSpec!543 (regOne!6001 r!15766) s!10566))))

(assert (=> b!983690 (=> res!446382 e!632602)))

(declare-fun bm!63364 () Bool)

(assert (=> bm!63364 (= call!63369 (isEmpty!6287 s!10566))))

(declare-fun b!983691 () Bool)

(assert (=> b!983691 (= e!632603 e!632599)))

(declare-fun res!446383 () Bool)

(assert (=> b!983691 (= res!446383 (not (is-EmptyLang!2744 r!15766)))))

(assert (=> b!983691 (=> (not res!446383) (not e!632599))))

(declare-fun b!983692 () Bool)

(declare-fun c!160893 () Bool)

(assert (=> b!983692 (= c!160893 (is-Union!2744 r!15766))))

(assert (=> b!983692 (= e!632601 e!632600)))

(declare-fun b!983693 () Bool)

(declare-fun res!446384 () Bool)

(assert (=> b!983693 (=> res!446384 e!632598)))

(assert (=> b!983693 (= res!446384 call!63369)))

(assert (=> b!983693 (= e!632597 e!632598)))

(assert (= (and d!288520 c!160894) b!983684))

(assert (= (and d!288520 (not c!160894)) b!983691))

(assert (= (and b!983691 res!446383) b!983688))

(assert (= (and b!983688 c!160892) b!983685))

(assert (= (and b!983688 (not c!160892)) b!983692))

(assert (= (and b!983692 c!160893) b!983690))

(assert (= (and b!983692 (not c!160893)) b!983686))

(assert (= (and b!983690 (not res!446382)) b!983689))

(assert (= (and b!983686 c!160891) b!983693))

(assert (= (and b!983686 (not c!160891)) b!983683))

(assert (= (and b!983693 (not res!446384)) b!983687))

(assert (= (or b!983687 b!983683) bm!63363))

(assert (= (or b!983684 b!983693) bm!63364))

(declare-fun m!1181285 () Bool)

(assert (=> b!983689 m!1181285))

(declare-fun m!1181287 () Bool)

(assert (=> bm!63363 m!1181287))

(declare-fun m!1181289 () Bool)

(assert (=> b!983690 m!1181289))

(assert (=> bm!63364 m!1181111))

(assert (=> b!983342 d!288520))

(declare-fun b!983698 () Bool)

(declare-fun e!632608 () Bool)

(assert (=> b!983698 (= e!632608 (= (head!1819 s!10566) (c!160827 r!15766)))))

(declare-fun bm!63365 () Bool)

(declare-fun call!63370 () Bool)

(assert (=> bm!63365 (= call!63370 (isEmpty!6287 s!10566))))

(declare-fun b!983699 () Bool)

(declare-fun e!632610 () Bool)

(declare-fun lt!350339 () Bool)

(assert (=> b!983699 (= e!632610 (not lt!350339))))

(declare-fun b!983700 () Bool)

(declare-fun e!632607 () Bool)

(declare-fun e!632611 () Bool)

(assert (=> b!983700 (= e!632607 e!632611)))

(declare-fun res!446391 () Bool)

(assert (=> b!983700 (=> res!446391 e!632611)))

(assert (=> b!983700 (= res!446391 call!63370)))

(declare-fun b!983701 () Bool)

(declare-fun e!632606 () Bool)

(assert (=> b!983701 (= e!632606 e!632607)))

(declare-fun res!446395 () Bool)

(assert (=> b!983701 (=> (not res!446395) (not e!632607))))

(assert (=> b!983701 (= res!446395 (not lt!350339))))

(declare-fun b!983702 () Bool)

(assert (=> b!983702 (= e!632611 (not (= (head!1819 s!10566) (c!160827 r!15766))))))

(declare-fun b!983703 () Bool)

(declare-fun e!632612 () Bool)

(assert (=> b!983703 (= e!632612 (matchR!1280 (derivativeStep!666 r!15766 (head!1819 s!10566)) (tail!1381 s!10566)))))

(declare-fun b!983705 () Bool)

(declare-fun res!446393 () Bool)

(assert (=> b!983705 (=> res!446393 e!632606)))

(assert (=> b!983705 (= res!446393 (not (is-ElementMatch!2744 r!15766)))))

(assert (=> b!983705 (= e!632610 e!632606)))

(declare-fun b!983706 () Bool)

(declare-fun e!632609 () Bool)

(assert (=> b!983706 (= e!632609 e!632610)))

(declare-fun c!160895 () Bool)

(assert (=> b!983706 (= c!160895 (is-EmptyLang!2744 r!15766))))

(declare-fun b!983707 () Bool)

(declare-fun res!446389 () Bool)

(assert (=> b!983707 (=> res!446389 e!632611)))

(assert (=> b!983707 (= res!446389 (not (isEmpty!6287 (tail!1381 s!10566))))))

(declare-fun b!983708 () Bool)

(declare-fun res!446394 () Bool)

(assert (=> b!983708 (=> res!446394 e!632606)))

(assert (=> b!983708 (= res!446394 e!632608)))

(declare-fun res!446396 () Bool)

(assert (=> b!983708 (=> (not res!446396) (not e!632608))))

(assert (=> b!983708 (= res!446396 lt!350339)))

(declare-fun b!983704 () Bool)

(assert (=> b!983704 (= e!632609 (= lt!350339 call!63370))))

(declare-fun d!288522 () Bool)

(assert (=> d!288522 e!632609))

(declare-fun c!160897 () Bool)

(assert (=> d!288522 (= c!160897 (is-EmptyExpr!2744 r!15766))))

(assert (=> d!288522 (= lt!350339 e!632612)))

(declare-fun c!160896 () Bool)

(assert (=> d!288522 (= c!160896 (isEmpty!6287 s!10566))))

(assert (=> d!288522 (validRegex!1213 r!15766)))

(assert (=> d!288522 (= (matchR!1280 r!15766 s!10566) lt!350339)))

(declare-fun b!983709 () Bool)

(assert (=> b!983709 (= e!632612 (nullable!860 r!15766))))

(declare-fun b!983710 () Bool)

(declare-fun res!446390 () Bool)

(assert (=> b!983710 (=> (not res!446390) (not e!632608))))

(assert (=> b!983710 (= res!446390 (isEmpty!6287 (tail!1381 s!10566)))))

(declare-fun b!983711 () Bool)

(declare-fun res!446392 () Bool)

(assert (=> b!983711 (=> (not res!446392) (not e!632608))))

(assert (=> b!983711 (= res!446392 (not call!63370))))

(assert (= (and d!288522 c!160896) b!983709))

(assert (= (and d!288522 (not c!160896)) b!983703))

(assert (= (and d!288522 c!160897) b!983704))

(assert (= (and d!288522 (not c!160897)) b!983706))

(assert (= (and b!983706 c!160895) b!983699))

(assert (= (and b!983706 (not c!160895)) b!983705))

(assert (= (and b!983705 (not res!446393)) b!983708))

(assert (= (and b!983708 res!446396) b!983711))

(assert (= (and b!983711 res!446392) b!983710))

(assert (= (and b!983710 res!446390) b!983698))

(assert (= (and b!983708 (not res!446394)) b!983701))

(assert (= (and b!983701 res!446395) b!983700))

(assert (= (and b!983700 (not res!446391)) b!983707))

(assert (= (and b!983707 (not res!446389)) b!983702))

(assert (= (or b!983704 b!983700 b!983711) bm!63365))

(declare-fun m!1181291 () Bool)

(assert (=> b!983703 m!1181291))

(assert (=> b!983703 m!1181291))

(declare-fun m!1181293 () Bool)

(assert (=> b!983703 m!1181293))

(declare-fun m!1181295 () Bool)

(assert (=> b!983703 m!1181295))

(assert (=> b!983703 m!1181293))

(assert (=> b!983703 m!1181295))

(declare-fun m!1181297 () Bool)

(assert (=> b!983703 m!1181297))

(assert (=> b!983698 m!1181291))

(assert (=> b!983710 m!1181295))

(assert (=> b!983710 m!1181295))

(declare-fun m!1181299 () Bool)

(assert (=> b!983710 m!1181299))

(declare-fun m!1181301 () Bool)

(assert (=> b!983709 m!1181301))

(assert (=> bm!63365 m!1181111))

(assert (=> d!288522 m!1181111))

(assert (=> d!288522 m!1181101))

(assert (=> b!983707 m!1181295))

(assert (=> b!983707 m!1181295))

(assert (=> b!983707 m!1181299))

(assert (=> b!983702 m!1181291))

(assert (=> b!983342 d!288522))

(declare-fun d!288524 () Bool)

(assert (=> d!288524 (= (matchR!1280 r!15766 s!10566) (matchRSpec!543 r!15766 s!10566))))

(declare-fun lt!350342 () Unit!15147)

(declare-fun choose!6244 (Regex!2744 List!9974) Unit!15147)

(assert (=> d!288524 (= lt!350342 (choose!6244 r!15766 s!10566))))

(assert (=> d!288524 (validRegex!1213 r!15766)))

(assert (=> d!288524 (= (mainMatchTheorem!543 r!15766 s!10566) lt!350342)))

(declare-fun bs!244043 () Bool)

(assert (= bs!244043 d!288524))

(assert (=> bs!244043 m!1181123))

(assert (=> bs!244043 m!1181121))

(declare-fun m!1181303 () Bool)

(assert (=> bs!244043 m!1181303))

(assert (=> bs!244043 m!1181101))

(assert (=> b!983342 d!288524))

(declare-fun b!983722 () Bool)

(declare-fun e!632615 () Bool)

(assert (=> b!983722 (= e!632615 tp_is_empty!5131)))

(declare-fun b!983724 () Bool)

(declare-fun tp!300367 () Bool)

(assert (=> b!983724 (= e!632615 tp!300367)))

(declare-fun b!983723 () Bool)

(declare-fun tp!300364 () Bool)

(declare-fun tp!300366 () Bool)

(assert (=> b!983723 (= e!632615 (and tp!300364 tp!300366))))

(declare-fun b!983725 () Bool)

(declare-fun tp!300365 () Bool)

(declare-fun tp!300363 () Bool)

(assert (=> b!983725 (= e!632615 (and tp!300365 tp!300363))))

(assert (=> b!983346 (= tp!300332 e!632615)))

(assert (= (and b!983346 (is-ElementMatch!2744 (reg!3073 r!15766))) b!983722))

(assert (= (and b!983346 (is-Concat!4577 (reg!3073 r!15766))) b!983723))

(assert (= (and b!983346 (is-Star!2744 (reg!3073 r!15766))) b!983724))

(assert (= (and b!983346 (is-Union!2744 (reg!3073 r!15766))) b!983725))

(declare-fun b!983730 () Bool)

(declare-fun e!632618 () Bool)

(declare-fun tp!300370 () Bool)

(assert (=> b!983730 (= e!632618 (and tp_is_empty!5131 tp!300370))))

(assert (=> b!983345 (= tp!300334 e!632618)))

(assert (= (and b!983345 (is-Cons!9958 (t!101020 s!10566))) b!983730))

(declare-fun b!983731 () Bool)

(declare-fun e!632619 () Bool)

(assert (=> b!983731 (= e!632619 tp_is_empty!5131)))

(declare-fun b!983733 () Bool)

(declare-fun tp!300375 () Bool)

(assert (=> b!983733 (= e!632619 tp!300375)))

(declare-fun b!983732 () Bool)

(declare-fun tp!300372 () Bool)

(declare-fun tp!300374 () Bool)

(assert (=> b!983732 (= e!632619 (and tp!300372 tp!300374))))

(declare-fun b!983734 () Bool)

(declare-fun tp!300373 () Bool)

(declare-fun tp!300371 () Bool)

(assert (=> b!983734 (= e!632619 (and tp!300373 tp!300371))))

(assert (=> b!983343 (= tp!300331 e!632619)))

(assert (= (and b!983343 (is-ElementMatch!2744 (regOne!6001 r!15766))) b!983731))

(assert (= (and b!983343 (is-Concat!4577 (regOne!6001 r!15766))) b!983732))

(assert (= (and b!983343 (is-Star!2744 (regOne!6001 r!15766))) b!983733))

(assert (= (and b!983343 (is-Union!2744 (regOne!6001 r!15766))) b!983734))

(declare-fun b!983735 () Bool)

(declare-fun e!632620 () Bool)

(assert (=> b!983735 (= e!632620 tp_is_empty!5131)))

(declare-fun b!983737 () Bool)

(declare-fun tp!300380 () Bool)

(assert (=> b!983737 (= e!632620 tp!300380)))

(declare-fun b!983736 () Bool)

(declare-fun tp!300377 () Bool)

(declare-fun tp!300379 () Bool)

(assert (=> b!983736 (= e!632620 (and tp!300377 tp!300379))))

(declare-fun b!983738 () Bool)

(declare-fun tp!300378 () Bool)

(declare-fun tp!300376 () Bool)

(assert (=> b!983738 (= e!632620 (and tp!300378 tp!300376))))

(assert (=> b!983343 (= tp!300333 e!632620)))

(assert (= (and b!983343 (is-ElementMatch!2744 (regTwo!6001 r!15766))) b!983735))

(assert (= (and b!983343 (is-Concat!4577 (regTwo!6001 r!15766))) b!983736))

(assert (= (and b!983343 (is-Star!2744 (regTwo!6001 r!15766))) b!983737))

(assert (= (and b!983343 (is-Union!2744 (regTwo!6001 r!15766))) b!983738))

(declare-fun b!983739 () Bool)

(declare-fun e!632621 () Bool)

(assert (=> b!983739 (= e!632621 tp_is_empty!5131)))

(declare-fun b!983741 () Bool)

(declare-fun tp!300385 () Bool)

(assert (=> b!983741 (= e!632621 tp!300385)))

(declare-fun b!983740 () Bool)

(declare-fun tp!300382 () Bool)

(declare-fun tp!300384 () Bool)

(assert (=> b!983740 (= e!632621 (and tp!300382 tp!300384))))

(declare-fun b!983742 () Bool)

(declare-fun tp!300383 () Bool)

(declare-fun tp!300381 () Bool)

(assert (=> b!983742 (= e!632621 (and tp!300383 tp!300381))))

(assert (=> b!983347 (= tp!300330 e!632621)))

(assert (= (and b!983347 (is-ElementMatch!2744 (regOne!6000 r!15766))) b!983739))

(assert (= (and b!983347 (is-Concat!4577 (regOne!6000 r!15766))) b!983740))

(assert (= (and b!983347 (is-Star!2744 (regOne!6000 r!15766))) b!983741))

(assert (= (and b!983347 (is-Union!2744 (regOne!6000 r!15766))) b!983742))

(declare-fun b!983743 () Bool)

(declare-fun e!632622 () Bool)

(assert (=> b!983743 (= e!632622 tp_is_empty!5131)))

(declare-fun b!983745 () Bool)

(declare-fun tp!300390 () Bool)

(assert (=> b!983745 (= e!632622 tp!300390)))

(declare-fun b!983744 () Bool)

(declare-fun tp!300387 () Bool)

(declare-fun tp!300389 () Bool)

(assert (=> b!983744 (= e!632622 (and tp!300387 tp!300389))))

(declare-fun b!983746 () Bool)

(declare-fun tp!300388 () Bool)

(declare-fun tp!300386 () Bool)

(assert (=> b!983746 (= e!632622 (and tp!300388 tp!300386))))

(assert (=> b!983347 (= tp!300329 e!632622)))

(assert (= (and b!983347 (is-ElementMatch!2744 (regTwo!6000 r!15766))) b!983743))

(assert (= (and b!983347 (is-Concat!4577 (regTwo!6000 r!15766))) b!983744))

(assert (= (and b!983347 (is-Star!2744 (regTwo!6000 r!15766))) b!983745))

(assert (= (and b!983347 (is-Union!2744 (regTwo!6000 r!15766))) b!983746))

(push 1)

(assert (not bm!63334))

(assert (not bm!63358))

(assert (not b!983725))

(assert (not d!288516))

(assert (not b!983611))

(assert (not b!983621))

(assert (not b!983723))

(assert (not b!983741))

(assert (not d!288492))

(assert (not b!983600))

(assert (not b!983586))

(assert (not bm!63365))

(assert (not b!983490))

(assert (not b!983707))

(assert (not b!983746))

(assert (not b!983492))

(assert (not b!983591))

(assert (not b!983612))

(assert tp_is_empty!5131)

(assert (not b!983609))

(assert (not b!983604))

(assert (not b!983734))

(assert (not b!983487))

(assert (not b!983590))

(assert (not b!983732))

(assert (not b!983703))

(assert (not b!983698))

(assert (not d!288502))

(assert (not bm!63357))

(assert (not b!983605))

(assert (not b!983737))

(assert (not d!288522))

(assert (not b!983486))

(assert (not b!983489))

(assert (not b!983710))

(assert (not d!288494))

(assert (not b!983742))

(assert (not b!983736))

(assert (not b!983689))

(assert (not d!288504))

(assert (not bm!63355))

(assert (not b!983744))

(assert (not b!983730))

(assert (not bm!63364))

(assert (not b!983738))

(assert (not b!983597))

(assert (not d!288500))

(assert (not d!288506))

(assert (not bm!63335))

(assert (not b!983733))

(assert (not b!983709))

(assert (not d!288488))

(assert (not b!983595))

(assert (not b!983598))

(assert (not bm!63363))

(assert (not bm!63354))

(assert (not b!983690))

(assert (not b!983493))

(assert (not b!983425))

(assert (not b!983745))

(assert (not b!983724))

(assert (not b!983702))

(assert (not b!983740))

(assert (not d!288524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

