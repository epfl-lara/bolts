; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282158 () Bool)

(assert start!282158)

(declare-fun b!2895406 () Bool)

(declare-fun e!1829366 () Bool)

(declare-fun tp!929375 () Bool)

(assert (=> b!2895406 (= e!1829366 tp!929375)))

(declare-fun b!2895407 () Bool)

(declare-fun tp_is_empty!15281 () Bool)

(assert (=> b!2895407 (= e!1829366 tp_is_empty!15281)))

(declare-fun b!2895408 () Bool)

(declare-fun tp!929377 () Bool)

(declare-fun tp!929378 () Bool)

(assert (=> b!2895408 (= e!1829366 (and tp!929377 tp!929378))))

(declare-fun b!2895409 () Bool)

(declare-fun res!1197571 () Bool)

(declare-fun e!1829367 () Bool)

(assert (=> b!2895409 (=> (not res!1197571) (not e!1829367))))

(declare-datatypes ((C!17876 0))(
  ( (C!17877 (val!10972 Int)) )
))
(declare-datatypes ((Regex!8847 0))(
  ( (ElementMatch!8847 (c!471168 C!17876)) (Concat!14168 (regOne!18206 Regex!8847) (regTwo!18206 Regex!8847)) (EmptyExpr!8847) (Star!8847 (reg!9176 Regex!8847)) (EmptyLang!8847) (Union!8847 (regOne!18207 Regex!8847) (regTwo!18207 Regex!8847)) )
))
(declare-fun r!23079 () Regex!8847)

(declare-datatypes ((List!34648 0))(
  ( (Nil!34524) (Cons!34524 (h!39944 C!17876) (t!233691 List!34648)) )
))
(declare-datatypes ((Option!6520 0))(
  ( (None!6519) (Some!6519 (v!34645 List!34648)) )
))
(declare-fun isDefined!5084 (Option!6520) Bool)

(declare-fun getLanguageWitness!554 (Regex!8847) Option!6520)

(assert (=> b!2895409 (= res!1197571 (isDefined!5084 (getLanguageWitness!554 r!23079)))))

(declare-fun b!2895410 () Bool)

(declare-fun res!1197569 () Bool)

(assert (=> b!2895410 (=> (not res!1197569) (not e!1829367))))

(get-info :version)

(assert (=> b!2895410 (= res!1197569 ((_ is Some!6519) (getLanguageWitness!554 (regOne!18206 r!23079))))))

(declare-fun b!2895412 () Bool)

(declare-fun res!1197567 () Bool)

(assert (=> b!2895412 (=> (not res!1197567) (not e!1829367))))

(assert (=> b!2895412 (= res!1197567 ((_ is Some!6519) (getLanguageWitness!554 (regTwo!18206 r!23079))))))

(declare-fun res!1197568 () Bool)

(assert (=> start!282158 (=> (not res!1197568) (not e!1829367))))

(declare-fun validRegex!3620 (Regex!8847) Bool)

(assert (=> start!282158 (= res!1197568 (validRegex!3620 r!23079))))

(assert (=> start!282158 e!1829367))

(assert (=> start!282158 e!1829366))

(declare-fun b!2895411 () Bool)

(assert (=> b!2895411 (= e!1829367 (not (validRegex!3620 (regOne!18206 r!23079))))))

(declare-fun b!2895413 () Bool)

(declare-fun res!1197570 () Bool)

(assert (=> b!2895413 (=> (not res!1197570) (not e!1829367))))

(assert (=> b!2895413 (= res!1197570 (and (not ((_ is EmptyExpr!8847) r!23079)) (not ((_ is EmptyLang!8847) r!23079)) (not ((_ is ElementMatch!8847) r!23079)) (not ((_ is Star!8847) r!23079)) (not ((_ is Union!8847) r!23079))))))

(declare-fun b!2895414 () Bool)

(declare-fun tp!929376 () Bool)

(declare-fun tp!929379 () Bool)

(assert (=> b!2895414 (= e!1829366 (and tp!929376 tp!929379))))

(assert (= (and start!282158 res!1197568) b!2895409))

(assert (= (and b!2895409 res!1197571) b!2895413))

(assert (= (and b!2895413 res!1197570) b!2895410))

(assert (= (and b!2895410 res!1197569) b!2895412))

(assert (= (and b!2895412 res!1197567) b!2895411))

(assert (= (and start!282158 ((_ is ElementMatch!8847) r!23079)) b!2895407))

(assert (= (and start!282158 ((_ is Concat!14168) r!23079)) b!2895414))

(assert (= (and start!282158 ((_ is Star!8847) r!23079)) b!2895406))

(assert (= (and start!282158 ((_ is Union!8847) r!23079)) b!2895408))

(declare-fun m!3303995 () Bool)

(assert (=> b!2895410 m!3303995))

(declare-fun m!3303997 () Bool)

(assert (=> b!2895409 m!3303997))

(assert (=> b!2895409 m!3303997))

(declare-fun m!3303999 () Bool)

(assert (=> b!2895409 m!3303999))

(declare-fun m!3304001 () Bool)

(assert (=> b!2895411 m!3304001))

(declare-fun m!3304003 () Bool)

(assert (=> b!2895412 m!3304003))

(declare-fun m!3304005 () Bool)

(assert (=> start!282158 m!3304005))

(check-sat (not start!282158) tp_is_empty!15281 (not b!2895409) (not b!2895414) (not b!2895411) (not b!2895410) (not b!2895406) (not b!2895408) (not b!2895412))
(check-sat)
(get-model)

(declare-fun b!2895460 () Bool)

(declare-fun e!1829408 () Bool)

(declare-fun e!1829407 () Bool)

(assert (=> b!2895460 (= e!1829408 e!1829407)))

(declare-fun c!471179 () Bool)

(assert (=> b!2895460 (= c!471179 ((_ is Star!8847) r!23079))))

(declare-fun b!2895461 () Bool)

(declare-fun e!1829409 () Bool)

(declare-fun call!188315 () Bool)

(assert (=> b!2895461 (= e!1829409 call!188315)))

(declare-fun b!2895462 () Bool)

(declare-fun e!1829405 () Bool)

(assert (=> b!2895462 (= e!1829405 call!188315)))

(declare-fun b!2895463 () Bool)

(declare-fun e!1829403 () Bool)

(assert (=> b!2895463 (= e!1829403 e!1829409)))

(declare-fun res!1197597 () Bool)

(assert (=> b!2895463 (=> (not res!1197597) (not e!1829409))))

(declare-fun call!188314 () Bool)

(assert (=> b!2895463 (= res!1197597 call!188314)))

(declare-fun b!2895464 () Bool)

(declare-fun res!1197600 () Bool)

(assert (=> b!2895464 (=> res!1197600 e!1829403)))

(assert (=> b!2895464 (= res!1197600 (not ((_ is Concat!14168) r!23079)))))

(declare-fun e!1829406 () Bool)

(assert (=> b!2895464 (= e!1829406 e!1829403)))

(declare-fun bm!188309 () Bool)

(declare-fun call!188316 () Bool)

(assert (=> bm!188309 (= call!188315 call!188316)))

(declare-fun b!2895465 () Bool)

(assert (=> b!2895465 (= e!1829407 e!1829406)))

(declare-fun c!471180 () Bool)

(assert (=> b!2895465 (= c!471180 ((_ is Union!8847) r!23079))))

(declare-fun bm!188310 () Bool)

(assert (=> bm!188310 (= call!188316 (validRegex!3620 (ite c!471179 (reg!9176 r!23079) (ite c!471180 (regTwo!18207 r!23079) (regTwo!18206 r!23079)))))))

(declare-fun b!2895466 () Bool)

(declare-fun e!1829404 () Bool)

(assert (=> b!2895466 (= e!1829407 e!1829404)))

(declare-fun res!1197601 () Bool)

(declare-fun nullable!2747 (Regex!8847) Bool)

(assert (=> b!2895466 (= res!1197601 (not (nullable!2747 (reg!9176 r!23079))))))

(assert (=> b!2895466 (=> (not res!1197601) (not e!1829404))))

(declare-fun b!2895467 () Bool)

(declare-fun res!1197599 () Bool)

(assert (=> b!2895467 (=> (not res!1197599) (not e!1829405))))

(assert (=> b!2895467 (= res!1197599 call!188314)))

(assert (=> b!2895467 (= e!1829406 e!1829405)))

(declare-fun bm!188311 () Bool)

(assert (=> bm!188311 (= call!188314 (validRegex!3620 (ite c!471180 (regOne!18207 r!23079) (regOne!18206 r!23079))))))

(declare-fun b!2895468 () Bool)

(assert (=> b!2895468 (= e!1829404 call!188316)))

(declare-fun d!834833 () Bool)

(declare-fun res!1197598 () Bool)

(assert (=> d!834833 (=> res!1197598 e!1829408)))

(assert (=> d!834833 (= res!1197598 ((_ is ElementMatch!8847) r!23079))))

(assert (=> d!834833 (= (validRegex!3620 r!23079) e!1829408)))

(assert (= (and d!834833 (not res!1197598)) b!2895460))

(assert (= (and b!2895460 c!471179) b!2895466))

(assert (= (and b!2895460 (not c!471179)) b!2895465))

(assert (= (and b!2895466 res!1197601) b!2895468))

(assert (= (and b!2895465 c!471180) b!2895467))

(assert (= (and b!2895465 (not c!471180)) b!2895464))

(assert (= (and b!2895467 res!1197599) b!2895462))

(assert (= (and b!2895464 (not res!1197600)) b!2895463))

(assert (= (and b!2895463 res!1197597) b!2895461))

(assert (= (or b!2895462 b!2895461) bm!188309))

(assert (= (or b!2895467 b!2895463) bm!188311))

(assert (= (or b!2895468 bm!188309) bm!188310))

(declare-fun m!3304013 () Bool)

(assert (=> bm!188310 m!3304013))

(declare-fun m!3304015 () Bool)

(assert (=> b!2895466 m!3304015))

(declare-fun m!3304017 () Bool)

(assert (=> bm!188311 m!3304017))

(assert (=> start!282158 d!834833))

(declare-fun b!2895542 () Bool)

(declare-fun e!1829450 () Option!6520)

(assert (=> b!2895542 (= e!1829450 (Some!6519 Nil!34524))))

(declare-fun b!2895543 () Bool)

(declare-fun e!1829452 () Option!6520)

(declare-fun lt!1021550 () Option!6520)

(assert (=> b!2895543 (= e!1829452 lt!1021550)))

(declare-fun b!2895544 () Bool)

(declare-fun e!1829455 () Option!6520)

(declare-fun e!1829454 () Option!6520)

(assert (=> b!2895544 (= e!1829455 e!1829454)))

(declare-fun lt!1021549 () Option!6520)

(declare-fun call!188329 () Option!6520)

(assert (=> b!2895544 (= lt!1021549 call!188329)))

(declare-fun c!471220 () Bool)

(assert (=> b!2895544 (= c!471220 ((_ is Some!6519) lt!1021549))))

(declare-fun b!2895545 () Bool)

(declare-fun e!1829453 () Option!6520)

(declare-fun e!1829451 () Option!6520)

(assert (=> b!2895545 (= e!1829453 e!1829451)))

(declare-fun c!471218 () Bool)

(assert (=> b!2895545 (= c!471218 ((_ is Star!8847) (regTwo!18206 r!23079)))))

(declare-fun b!2895546 () Bool)

(declare-fun e!1829456 () Option!6520)

(assert (=> b!2895546 (= e!1829456 None!6519)))

(declare-fun b!2895547 () Bool)

(assert (=> b!2895547 (= e!1829452 call!188329)))

(declare-fun b!2895548 () Bool)

(declare-fun e!1829449 () Option!6520)

(declare-fun lt!1021551 () Option!6520)

(declare-fun ++!8244 (List!34648 List!34648) List!34648)

(assert (=> b!2895548 (= e!1829449 (Some!6519 (++!8244 (v!34645 lt!1021549) (v!34645 lt!1021551))))))

(declare-fun d!834837 () Bool)

(declare-fun c!471216 () Bool)

(assert (=> d!834837 (= c!471216 ((_ is EmptyExpr!8847) (regTwo!18206 r!23079)))))

(assert (=> d!834837 (= (getLanguageWitness!554 (regTwo!18206 r!23079)) e!1829450)))

(declare-fun b!2895549 () Bool)

(declare-fun c!471221 () Bool)

(assert (=> b!2895549 (= c!471221 ((_ is ElementMatch!8847) (regTwo!18206 r!23079)))))

(assert (=> b!2895549 (= e!1829456 e!1829453)))

(declare-fun b!2895550 () Bool)

(declare-fun c!471222 () Bool)

(assert (=> b!2895550 (= c!471222 ((_ is Some!6519) lt!1021551))))

(declare-fun call!188328 () Option!6520)

(assert (=> b!2895550 (= lt!1021551 call!188328)))

(assert (=> b!2895550 (= e!1829454 e!1829449)))

(declare-fun b!2895551 () Bool)

(declare-fun c!471215 () Bool)

(assert (=> b!2895551 (= c!471215 ((_ is Union!8847) (regTwo!18206 r!23079)))))

(assert (=> b!2895551 (= e!1829451 e!1829455)))

(declare-fun b!2895552 () Bool)

(assert (=> b!2895552 (= e!1829453 (Some!6519 (Cons!34524 (c!471168 (regTwo!18206 r!23079)) Nil!34524)))))

(declare-fun b!2895553 () Bool)

(assert (=> b!2895553 (= e!1829450 e!1829456)))

(declare-fun c!471217 () Bool)

(assert (=> b!2895553 (= c!471217 ((_ is EmptyLang!8847) (regTwo!18206 r!23079)))))

(declare-fun b!2895554 () Bool)

(assert (=> b!2895554 (= e!1829451 (Some!6519 Nil!34524))))

(declare-fun bm!188323 () Bool)

(assert (=> bm!188323 (= call!188328 (getLanguageWitness!554 (ite c!471215 (regOne!18207 (regTwo!18206 r!23079)) (regTwo!18206 (regTwo!18206 r!23079)))))))

(declare-fun b!2895555 () Bool)

(assert (=> b!2895555 (= e!1829454 None!6519)))

(declare-fun b!2895556 () Bool)

(assert (=> b!2895556 (= e!1829455 e!1829452)))

(assert (=> b!2895556 (= lt!1021550 call!188328)))

(declare-fun c!471219 () Bool)

(assert (=> b!2895556 (= c!471219 ((_ is Some!6519) lt!1021550))))

(declare-fun bm!188324 () Bool)

(assert (=> bm!188324 (= call!188329 (getLanguageWitness!554 (ite c!471215 (regTwo!18207 (regTwo!18206 r!23079)) (regOne!18206 (regTwo!18206 r!23079)))))))

(declare-fun b!2895557 () Bool)

(assert (=> b!2895557 (= e!1829449 None!6519)))

(assert (= (and d!834837 c!471216) b!2895542))

(assert (= (and d!834837 (not c!471216)) b!2895553))

(assert (= (and b!2895553 c!471217) b!2895546))

(assert (= (and b!2895553 (not c!471217)) b!2895549))

(assert (= (and b!2895549 c!471221) b!2895552))

(assert (= (and b!2895549 (not c!471221)) b!2895545))

(assert (= (and b!2895545 c!471218) b!2895554))

(assert (= (and b!2895545 (not c!471218)) b!2895551))

(assert (= (and b!2895551 c!471215) b!2895556))

(assert (= (and b!2895551 (not c!471215)) b!2895544))

(assert (= (and b!2895556 c!471219) b!2895543))

(assert (= (and b!2895556 (not c!471219)) b!2895547))

(assert (= (and b!2895544 c!471220) b!2895550))

(assert (= (and b!2895544 (not c!471220)) b!2895555))

(assert (= (and b!2895550 c!471222) b!2895548))

(assert (= (and b!2895550 (not c!471222)) b!2895557))

(assert (= (or b!2895547 b!2895544) bm!188324))

(assert (= (or b!2895556 b!2895550) bm!188323))

(declare-fun m!3304027 () Bool)

(assert (=> b!2895548 m!3304027))

(declare-fun m!3304029 () Bool)

(assert (=> bm!188323 m!3304029))

(declare-fun m!3304031 () Bool)

(assert (=> bm!188324 m!3304031))

(assert (=> b!2895412 d!834837))

(declare-fun b!2895574 () Bool)

(declare-fun e!1829470 () Bool)

(declare-fun e!1829469 () Bool)

(assert (=> b!2895574 (= e!1829470 e!1829469)))

(declare-fun c!471231 () Bool)

(assert (=> b!2895574 (= c!471231 ((_ is Star!8847) (regOne!18206 r!23079)))))

(declare-fun b!2895575 () Bool)

(declare-fun e!1829471 () Bool)

(declare-fun call!188333 () Bool)

(assert (=> b!2895575 (= e!1829471 call!188333)))

(declare-fun b!2895576 () Bool)

(declare-fun e!1829467 () Bool)

(assert (=> b!2895576 (= e!1829467 call!188333)))

(declare-fun b!2895577 () Bool)

(declare-fun e!1829465 () Bool)

(assert (=> b!2895577 (= e!1829465 e!1829471)))

(declare-fun res!1197607 () Bool)

(assert (=> b!2895577 (=> (not res!1197607) (not e!1829471))))

(declare-fun call!188332 () Bool)

(assert (=> b!2895577 (= res!1197607 call!188332)))

(declare-fun b!2895578 () Bool)

(declare-fun res!1197610 () Bool)

(assert (=> b!2895578 (=> res!1197610 e!1829465)))

(assert (=> b!2895578 (= res!1197610 (not ((_ is Concat!14168) (regOne!18206 r!23079))))))

(declare-fun e!1829468 () Bool)

(assert (=> b!2895578 (= e!1829468 e!1829465)))

(declare-fun bm!188327 () Bool)

(declare-fun call!188334 () Bool)

(assert (=> bm!188327 (= call!188333 call!188334)))

(declare-fun b!2895579 () Bool)

(assert (=> b!2895579 (= e!1829469 e!1829468)))

(declare-fun c!471232 () Bool)

(assert (=> b!2895579 (= c!471232 ((_ is Union!8847) (regOne!18206 r!23079)))))

(declare-fun bm!188328 () Bool)

(assert (=> bm!188328 (= call!188334 (validRegex!3620 (ite c!471231 (reg!9176 (regOne!18206 r!23079)) (ite c!471232 (regTwo!18207 (regOne!18206 r!23079)) (regTwo!18206 (regOne!18206 r!23079))))))))

(declare-fun b!2895580 () Bool)

(declare-fun e!1829466 () Bool)

(assert (=> b!2895580 (= e!1829469 e!1829466)))

(declare-fun res!1197611 () Bool)

(assert (=> b!2895580 (= res!1197611 (not (nullable!2747 (reg!9176 (regOne!18206 r!23079)))))))

(assert (=> b!2895580 (=> (not res!1197611) (not e!1829466))))

(declare-fun b!2895581 () Bool)

(declare-fun res!1197609 () Bool)

(assert (=> b!2895581 (=> (not res!1197609) (not e!1829467))))

(assert (=> b!2895581 (= res!1197609 call!188332)))

(assert (=> b!2895581 (= e!1829468 e!1829467)))

(declare-fun bm!188329 () Bool)

(assert (=> bm!188329 (= call!188332 (validRegex!3620 (ite c!471232 (regOne!18207 (regOne!18206 r!23079)) (regOne!18206 (regOne!18206 r!23079)))))))

(declare-fun b!2895582 () Bool)

(assert (=> b!2895582 (= e!1829466 call!188334)))

(declare-fun d!834843 () Bool)

(declare-fun res!1197608 () Bool)

(assert (=> d!834843 (=> res!1197608 e!1829470)))

(assert (=> d!834843 (= res!1197608 ((_ is ElementMatch!8847) (regOne!18206 r!23079)))))

(assert (=> d!834843 (= (validRegex!3620 (regOne!18206 r!23079)) e!1829470)))

(assert (= (and d!834843 (not res!1197608)) b!2895574))

(assert (= (and b!2895574 c!471231) b!2895580))

(assert (= (and b!2895574 (not c!471231)) b!2895579))

(assert (= (and b!2895580 res!1197611) b!2895582))

(assert (= (and b!2895579 c!471232) b!2895581))

(assert (= (and b!2895579 (not c!471232)) b!2895578))

(assert (= (and b!2895581 res!1197609) b!2895576))

(assert (= (and b!2895578 (not res!1197610)) b!2895577))

(assert (= (and b!2895577 res!1197607) b!2895575))

(assert (= (or b!2895576 b!2895575) bm!188327))

(assert (= (or b!2895581 b!2895577) bm!188329))

(assert (= (or b!2895582 bm!188327) bm!188328))

(declare-fun m!3304039 () Bool)

(assert (=> bm!188328 m!3304039))

(declare-fun m!3304041 () Bool)

(assert (=> b!2895580 m!3304041))

(declare-fun m!3304043 () Bool)

(assert (=> bm!188329 m!3304043))

(assert (=> b!2895411 d!834843))

(declare-fun b!2895599 () Bool)

(declare-fun e!1829481 () Option!6520)

(assert (=> b!2895599 (= e!1829481 (Some!6519 Nil!34524))))

(declare-fun b!2895600 () Bool)

(declare-fun e!1829483 () Option!6520)

(declare-fun lt!1021559 () Option!6520)

(assert (=> b!2895600 (= e!1829483 lt!1021559)))

(declare-fun b!2895601 () Bool)

(declare-fun e!1829486 () Option!6520)

(declare-fun e!1829485 () Option!6520)

(assert (=> b!2895601 (= e!1829486 e!1829485)))

(declare-fun lt!1021558 () Option!6520)

(declare-fun call!188338 () Option!6520)

(assert (=> b!2895601 (= lt!1021558 call!188338)))

(declare-fun c!471246 () Bool)

(assert (=> b!2895601 (= c!471246 ((_ is Some!6519) lt!1021558))))

(declare-fun b!2895602 () Bool)

(declare-fun e!1829484 () Option!6520)

(declare-fun e!1829482 () Option!6520)

(assert (=> b!2895602 (= e!1829484 e!1829482)))

(declare-fun c!471244 () Bool)

(assert (=> b!2895602 (= c!471244 ((_ is Star!8847) (regOne!18206 r!23079)))))

(declare-fun b!2895603 () Bool)

(declare-fun e!1829487 () Option!6520)

(assert (=> b!2895603 (= e!1829487 None!6519)))

(declare-fun b!2895604 () Bool)

(assert (=> b!2895604 (= e!1829483 call!188338)))

(declare-fun b!2895605 () Bool)

(declare-fun e!1829480 () Option!6520)

(declare-fun lt!1021560 () Option!6520)

(assert (=> b!2895605 (= e!1829480 (Some!6519 (++!8244 (v!34645 lt!1021558) (v!34645 lt!1021560))))))

(declare-fun d!834847 () Bool)

(declare-fun c!471242 () Bool)

(assert (=> d!834847 (= c!471242 ((_ is EmptyExpr!8847) (regOne!18206 r!23079)))))

(assert (=> d!834847 (= (getLanguageWitness!554 (regOne!18206 r!23079)) e!1829481)))

(declare-fun b!2895606 () Bool)

(declare-fun c!471247 () Bool)

(assert (=> b!2895606 (= c!471247 ((_ is ElementMatch!8847) (regOne!18206 r!23079)))))

(assert (=> b!2895606 (= e!1829487 e!1829484)))

(declare-fun b!2895607 () Bool)

(declare-fun c!471248 () Bool)

(assert (=> b!2895607 (= c!471248 ((_ is Some!6519) lt!1021560))))

(declare-fun call!188337 () Option!6520)

(assert (=> b!2895607 (= lt!1021560 call!188337)))

(assert (=> b!2895607 (= e!1829485 e!1829480)))

(declare-fun b!2895608 () Bool)

(declare-fun c!471241 () Bool)

(assert (=> b!2895608 (= c!471241 ((_ is Union!8847) (regOne!18206 r!23079)))))

(assert (=> b!2895608 (= e!1829482 e!1829486)))

(declare-fun b!2895609 () Bool)

(assert (=> b!2895609 (= e!1829484 (Some!6519 (Cons!34524 (c!471168 (regOne!18206 r!23079)) Nil!34524)))))

(declare-fun b!2895610 () Bool)

(assert (=> b!2895610 (= e!1829481 e!1829487)))

(declare-fun c!471243 () Bool)

(assert (=> b!2895610 (= c!471243 ((_ is EmptyLang!8847) (regOne!18206 r!23079)))))

(declare-fun b!2895611 () Bool)

(assert (=> b!2895611 (= e!1829482 (Some!6519 Nil!34524))))

(declare-fun bm!188332 () Bool)

(assert (=> bm!188332 (= call!188337 (getLanguageWitness!554 (ite c!471241 (regOne!18207 (regOne!18206 r!23079)) (regTwo!18206 (regOne!18206 r!23079)))))))

(declare-fun b!2895612 () Bool)

(assert (=> b!2895612 (= e!1829485 None!6519)))

(declare-fun b!2895613 () Bool)

(assert (=> b!2895613 (= e!1829486 e!1829483)))

(assert (=> b!2895613 (= lt!1021559 call!188337)))

(declare-fun c!471245 () Bool)

(assert (=> b!2895613 (= c!471245 ((_ is Some!6519) lt!1021559))))

(declare-fun bm!188333 () Bool)

(assert (=> bm!188333 (= call!188338 (getLanguageWitness!554 (ite c!471241 (regTwo!18207 (regOne!18206 r!23079)) (regOne!18206 (regOne!18206 r!23079)))))))

(declare-fun b!2895614 () Bool)

(assert (=> b!2895614 (= e!1829480 None!6519)))

(assert (= (and d!834847 c!471242) b!2895599))

(assert (= (and d!834847 (not c!471242)) b!2895610))

(assert (= (and b!2895610 c!471243) b!2895603))

(assert (= (and b!2895610 (not c!471243)) b!2895606))

(assert (= (and b!2895606 c!471247) b!2895609))

(assert (= (and b!2895606 (not c!471247)) b!2895602))

(assert (= (and b!2895602 c!471244) b!2895611))

(assert (= (and b!2895602 (not c!471244)) b!2895608))

(assert (= (and b!2895608 c!471241) b!2895613))

(assert (= (and b!2895608 (not c!471241)) b!2895601))

(assert (= (and b!2895613 c!471245) b!2895600))

(assert (= (and b!2895613 (not c!471245)) b!2895604))

(assert (= (and b!2895601 c!471246) b!2895607))

(assert (= (and b!2895601 (not c!471246)) b!2895612))

(assert (= (and b!2895607 c!471248) b!2895605))

(assert (= (and b!2895607 (not c!471248)) b!2895614))

(assert (= (or b!2895604 b!2895601) bm!188333))

(assert (= (or b!2895613 b!2895607) bm!188332))

(declare-fun m!3304051 () Bool)

(assert (=> b!2895605 m!3304051))

(declare-fun m!3304053 () Bool)

(assert (=> bm!188332 m!3304053))

(declare-fun m!3304055 () Bool)

(assert (=> bm!188333 m!3304055))

(assert (=> b!2895410 d!834847))

(declare-fun d!834851 () Bool)

(declare-fun isEmpty!18833 (Option!6520) Bool)

(assert (=> d!834851 (= (isDefined!5084 (getLanguageWitness!554 r!23079)) (not (isEmpty!18833 (getLanguageWitness!554 r!23079))))))

(declare-fun bs!523942 () Bool)

(assert (= bs!523942 d!834851))

(assert (=> bs!523942 m!3303997))

(declare-fun m!3304057 () Bool)

(assert (=> bs!523942 m!3304057))

(assert (=> b!2895409 d!834851))

(declare-fun b!2895631 () Bool)

(declare-fun e!1829497 () Option!6520)

(assert (=> b!2895631 (= e!1829497 (Some!6519 Nil!34524))))

(declare-fun b!2895632 () Bool)

(declare-fun e!1829499 () Option!6520)

(declare-fun lt!1021565 () Option!6520)

(assert (=> b!2895632 (= e!1829499 lt!1021565)))

(declare-fun b!2895633 () Bool)

(declare-fun e!1829502 () Option!6520)

(declare-fun e!1829501 () Option!6520)

(assert (=> b!2895633 (= e!1829502 e!1829501)))

(declare-fun lt!1021564 () Option!6520)

(declare-fun call!188342 () Option!6520)

(assert (=> b!2895633 (= lt!1021564 call!188342)))

(declare-fun c!471262 () Bool)

(assert (=> b!2895633 (= c!471262 ((_ is Some!6519) lt!1021564))))

(declare-fun b!2895634 () Bool)

(declare-fun e!1829500 () Option!6520)

(declare-fun e!1829498 () Option!6520)

(assert (=> b!2895634 (= e!1829500 e!1829498)))

(declare-fun c!471260 () Bool)

(assert (=> b!2895634 (= c!471260 ((_ is Star!8847) r!23079))))

(declare-fun b!2895635 () Bool)

(declare-fun e!1829503 () Option!6520)

(assert (=> b!2895635 (= e!1829503 None!6519)))

(declare-fun b!2895636 () Bool)

(assert (=> b!2895636 (= e!1829499 call!188342)))

(declare-fun b!2895637 () Bool)

(declare-fun e!1829496 () Option!6520)

(declare-fun lt!1021566 () Option!6520)

(assert (=> b!2895637 (= e!1829496 (Some!6519 (++!8244 (v!34645 lt!1021564) (v!34645 lt!1021566))))))

(declare-fun d!834853 () Bool)

(declare-fun c!471258 () Bool)

(assert (=> d!834853 (= c!471258 ((_ is EmptyExpr!8847) r!23079))))

(assert (=> d!834853 (= (getLanguageWitness!554 r!23079) e!1829497)))

(declare-fun b!2895638 () Bool)

(declare-fun c!471263 () Bool)

(assert (=> b!2895638 (= c!471263 ((_ is ElementMatch!8847) r!23079))))

(assert (=> b!2895638 (= e!1829503 e!1829500)))

(declare-fun b!2895639 () Bool)

(declare-fun c!471264 () Bool)

(assert (=> b!2895639 (= c!471264 ((_ is Some!6519) lt!1021566))))

(declare-fun call!188341 () Option!6520)

(assert (=> b!2895639 (= lt!1021566 call!188341)))

(assert (=> b!2895639 (= e!1829501 e!1829496)))

(declare-fun b!2895640 () Bool)

(declare-fun c!471257 () Bool)

(assert (=> b!2895640 (= c!471257 ((_ is Union!8847) r!23079))))

(assert (=> b!2895640 (= e!1829498 e!1829502)))

(declare-fun b!2895641 () Bool)

(assert (=> b!2895641 (= e!1829500 (Some!6519 (Cons!34524 (c!471168 r!23079) Nil!34524)))))

(declare-fun b!2895642 () Bool)

(assert (=> b!2895642 (= e!1829497 e!1829503)))

(declare-fun c!471259 () Bool)

(assert (=> b!2895642 (= c!471259 ((_ is EmptyLang!8847) r!23079))))

(declare-fun b!2895643 () Bool)

(assert (=> b!2895643 (= e!1829498 (Some!6519 Nil!34524))))

(declare-fun bm!188336 () Bool)

(assert (=> bm!188336 (= call!188341 (getLanguageWitness!554 (ite c!471257 (regOne!18207 r!23079) (regTwo!18206 r!23079))))))

(declare-fun b!2895644 () Bool)

(assert (=> b!2895644 (= e!1829501 None!6519)))

(declare-fun b!2895645 () Bool)

(assert (=> b!2895645 (= e!1829502 e!1829499)))

(assert (=> b!2895645 (= lt!1021565 call!188341)))

(declare-fun c!471261 () Bool)

(assert (=> b!2895645 (= c!471261 ((_ is Some!6519) lt!1021565))))

(declare-fun bm!188337 () Bool)

(assert (=> bm!188337 (= call!188342 (getLanguageWitness!554 (ite c!471257 (regTwo!18207 r!23079) (regOne!18206 r!23079))))))

(declare-fun b!2895646 () Bool)

(assert (=> b!2895646 (= e!1829496 None!6519)))

(assert (= (and d!834853 c!471258) b!2895631))

(assert (= (and d!834853 (not c!471258)) b!2895642))

(assert (= (and b!2895642 c!471259) b!2895635))

(assert (= (and b!2895642 (not c!471259)) b!2895638))

(assert (= (and b!2895638 c!471263) b!2895641))

(assert (= (and b!2895638 (not c!471263)) b!2895634))

(assert (= (and b!2895634 c!471260) b!2895643))

(assert (= (and b!2895634 (not c!471260)) b!2895640))

(assert (= (and b!2895640 c!471257) b!2895645))

(assert (= (and b!2895640 (not c!471257)) b!2895633))

(assert (= (and b!2895645 c!471261) b!2895632))

(assert (= (and b!2895645 (not c!471261)) b!2895636))

(assert (= (and b!2895633 c!471262) b!2895639))

(assert (= (and b!2895633 (not c!471262)) b!2895644))

(assert (= (and b!2895639 c!471264) b!2895637))

(assert (= (and b!2895639 (not c!471264)) b!2895646))

(assert (= (or b!2895636 b!2895633) bm!188337))

(assert (= (or b!2895645 b!2895639) bm!188336))

(declare-fun m!3304065 () Bool)

(assert (=> b!2895637 m!3304065))

(declare-fun m!3304067 () Bool)

(assert (=> bm!188336 m!3304067))

(declare-fun m!3304069 () Bool)

(assert (=> bm!188337 m!3304069))

(assert (=> b!2895409 d!834853))

(declare-fun e!1829513 () Bool)

(assert (=> b!2895406 (= tp!929375 e!1829513)))

(declare-fun b!2895688 () Bool)

(declare-fun tp!929426 () Bool)

(declare-fun tp!929427 () Bool)

(assert (=> b!2895688 (= e!1829513 (and tp!929426 tp!929427))))

(declare-fun b!2895687 () Bool)

(assert (=> b!2895687 (= e!1829513 tp_is_empty!15281)))

(declare-fun b!2895690 () Bool)

(declare-fun tp!929424 () Bool)

(declare-fun tp!929428 () Bool)

(assert (=> b!2895690 (= e!1829513 (and tp!929424 tp!929428))))

(declare-fun b!2895689 () Bool)

(declare-fun tp!929429 () Bool)

(assert (=> b!2895689 (= e!1829513 tp!929429)))

(assert (= (and b!2895406 ((_ is ElementMatch!8847) (reg!9176 r!23079))) b!2895687))

(assert (= (and b!2895406 ((_ is Concat!14168) (reg!9176 r!23079))) b!2895688))

(assert (= (and b!2895406 ((_ is Star!8847) (reg!9176 r!23079))) b!2895689))

(assert (= (and b!2895406 ((_ is Union!8847) (reg!9176 r!23079))) b!2895690))

(declare-fun e!1829514 () Bool)

(assert (=> b!2895414 (= tp!929376 e!1829514)))

(declare-fun b!2895692 () Bool)

(declare-fun tp!929431 () Bool)

(declare-fun tp!929432 () Bool)

(assert (=> b!2895692 (= e!1829514 (and tp!929431 tp!929432))))

(declare-fun b!2895691 () Bool)

(assert (=> b!2895691 (= e!1829514 tp_is_empty!15281)))

(declare-fun b!2895694 () Bool)

(declare-fun tp!929430 () Bool)

(declare-fun tp!929433 () Bool)

(assert (=> b!2895694 (= e!1829514 (and tp!929430 tp!929433))))

(declare-fun b!2895693 () Bool)

(declare-fun tp!929434 () Bool)

(assert (=> b!2895693 (= e!1829514 tp!929434)))

(assert (= (and b!2895414 ((_ is ElementMatch!8847) (regOne!18206 r!23079))) b!2895691))

(assert (= (and b!2895414 ((_ is Concat!14168) (regOne!18206 r!23079))) b!2895692))

(assert (= (and b!2895414 ((_ is Star!8847) (regOne!18206 r!23079))) b!2895693))

(assert (= (and b!2895414 ((_ is Union!8847) (regOne!18206 r!23079))) b!2895694))

(declare-fun e!1829515 () Bool)

(assert (=> b!2895414 (= tp!929379 e!1829515)))

(declare-fun b!2895696 () Bool)

(declare-fun tp!929436 () Bool)

(declare-fun tp!929437 () Bool)

(assert (=> b!2895696 (= e!1829515 (and tp!929436 tp!929437))))

(declare-fun b!2895695 () Bool)

(assert (=> b!2895695 (= e!1829515 tp_is_empty!15281)))

(declare-fun b!2895698 () Bool)

(declare-fun tp!929435 () Bool)

(declare-fun tp!929438 () Bool)

(assert (=> b!2895698 (= e!1829515 (and tp!929435 tp!929438))))

(declare-fun b!2895697 () Bool)

(declare-fun tp!929439 () Bool)

(assert (=> b!2895697 (= e!1829515 tp!929439)))

(assert (= (and b!2895414 ((_ is ElementMatch!8847) (regTwo!18206 r!23079))) b!2895695))

(assert (= (and b!2895414 ((_ is Concat!14168) (regTwo!18206 r!23079))) b!2895696))

(assert (= (and b!2895414 ((_ is Star!8847) (regTwo!18206 r!23079))) b!2895697))

(assert (= (and b!2895414 ((_ is Union!8847) (regTwo!18206 r!23079))) b!2895698))

(declare-fun e!1829516 () Bool)

(assert (=> b!2895408 (= tp!929377 e!1829516)))

(declare-fun b!2895700 () Bool)

(declare-fun tp!929441 () Bool)

(declare-fun tp!929442 () Bool)

(assert (=> b!2895700 (= e!1829516 (and tp!929441 tp!929442))))

(declare-fun b!2895699 () Bool)

(assert (=> b!2895699 (= e!1829516 tp_is_empty!15281)))

(declare-fun b!2895702 () Bool)

(declare-fun tp!929440 () Bool)

(declare-fun tp!929443 () Bool)

(assert (=> b!2895702 (= e!1829516 (and tp!929440 tp!929443))))

(declare-fun b!2895701 () Bool)

(declare-fun tp!929444 () Bool)

(assert (=> b!2895701 (= e!1829516 tp!929444)))

(assert (= (and b!2895408 ((_ is ElementMatch!8847) (regOne!18207 r!23079))) b!2895699))

(assert (= (and b!2895408 ((_ is Concat!14168) (regOne!18207 r!23079))) b!2895700))

(assert (= (and b!2895408 ((_ is Star!8847) (regOne!18207 r!23079))) b!2895701))

(assert (= (and b!2895408 ((_ is Union!8847) (regOne!18207 r!23079))) b!2895702))

(declare-fun e!1829517 () Bool)

(assert (=> b!2895408 (= tp!929378 e!1829517)))

(declare-fun b!2895704 () Bool)

(declare-fun tp!929446 () Bool)

(declare-fun tp!929447 () Bool)

(assert (=> b!2895704 (= e!1829517 (and tp!929446 tp!929447))))

(declare-fun b!2895703 () Bool)

(assert (=> b!2895703 (= e!1829517 tp_is_empty!15281)))

(declare-fun b!2895706 () Bool)

(declare-fun tp!929445 () Bool)

(declare-fun tp!929448 () Bool)

(assert (=> b!2895706 (= e!1829517 (and tp!929445 tp!929448))))

(declare-fun b!2895705 () Bool)

(declare-fun tp!929449 () Bool)

(assert (=> b!2895705 (= e!1829517 tp!929449)))

(assert (= (and b!2895408 ((_ is ElementMatch!8847) (regTwo!18207 r!23079))) b!2895703))

(assert (= (and b!2895408 ((_ is Concat!14168) (regTwo!18207 r!23079))) b!2895704))

(assert (= (and b!2895408 ((_ is Star!8847) (regTwo!18207 r!23079))) b!2895705))

(assert (= (and b!2895408 ((_ is Union!8847) (regTwo!18207 r!23079))) b!2895706))

(check-sat (not bm!188311) (not b!2895702) (not bm!188323) (not b!2895694) (not b!2895605) (not b!2895692) (not bm!188333) (not b!2895705) (not bm!188328) (not bm!188337) (not b!2895704) (not b!2895693) (not b!2895637) tp_is_empty!15281 (not b!2895696) (not b!2895697) (not b!2895698) (not bm!188336) (not b!2895548) (not b!2895688) (not bm!188332) (not b!2895690) (not b!2895700) (not b!2895466) (not b!2895701) (not bm!188324) (not b!2895689) (not bm!188310) (not b!2895580) (not bm!188329) (not b!2895706) (not d!834851))
(check-sat)
