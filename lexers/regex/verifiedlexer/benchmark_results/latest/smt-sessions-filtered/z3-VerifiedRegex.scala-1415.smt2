; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74230 () Bool)

(assert start!74230)

(declare-fun b!835301 () Bool)

(declare-fun e!549514 () Bool)

(declare-fun tp!261864 () Bool)

(declare-fun tp!261863 () Bool)

(assert (=> b!835301 (= e!549514 (and tp!261864 tp!261863))))

(declare-fun b!835302 () Bool)

(declare-fun res!382448 () Bool)

(declare-fun e!549515 () Bool)

(assert (=> b!835302 (=> (not res!382448) (not e!549515))))

(declare-datatypes ((C!4748 0))(
  ( (C!4749 (val!2622 Int)) )
))
(declare-datatypes ((Regex!2089 0))(
  ( (ElementMatch!2089 (c!136332 C!4748)) (Concat!3820 (regOne!4690 Regex!2089) (regTwo!4690 Regex!2089)) (EmptyExpr!2089) (Star!2089 (reg!2418 Regex!2089)) (EmptyLang!2089) (Union!2089 (regOne!4691 Regex!2089) (regTwo!4691 Regex!2089)) )
))
(declare-fun r!27177 () Regex!2089)

(declare-fun c!13916 () C!4748)

(declare-datatypes ((List!8915 0))(
  ( (Nil!8899) (Cons!8899 (h!14300 C!4748) (t!93207 List!8915)) )
))
(declare-fun contains!1680 (List!8915 C!4748) Bool)

(declare-fun firstChars!60 (Regex!2089) List!8915)

(assert (=> b!835302 (= res!382448 (contains!1680 (firstChars!60 r!27177) c!13916))))

(declare-fun b!835303 () Bool)

(assert (=> b!835303 (= e!549515 (not (contains!1680 (firstChars!60 (regOne!4690 r!27177)) c!13916)))))

(declare-fun b!835304 () Bool)

(declare-fun tp!261861 () Bool)

(assert (=> b!835304 (= e!549514 tp!261861)))

(declare-fun b!835305 () Bool)

(declare-fun tp_is_empty!3901 () Bool)

(assert (=> b!835305 (= e!549514 tp_is_empty!3901)))

(declare-fun res!382447 () Bool)

(assert (=> start!74230 (=> (not res!382447) (not e!549515))))

(declare-fun validRegex!642 (Regex!2089) Bool)

(assert (=> start!74230 (= res!382447 (validRegex!642 r!27177))))

(assert (=> start!74230 e!549515))

(assert (=> start!74230 e!549514))

(assert (=> start!74230 tp_is_empty!3901))

(declare-fun b!835306 () Bool)

(declare-fun res!382445 () Bool)

(assert (=> b!835306 (=> (not res!382445) (not e!549515))))

(get-info :version)

(assert (=> b!835306 (= res!382445 (and (not ((_ is EmptyExpr!2089) r!27177)) (not ((_ is EmptyLang!2089) r!27177)) (not ((_ is ElementMatch!2089) r!27177)) (not ((_ is Star!2089) r!27177)) (not ((_ is Union!2089) r!27177))))))

(declare-fun b!835307 () Bool)

(declare-fun tp!261862 () Bool)

(declare-fun tp!261860 () Bool)

(assert (=> b!835307 (= e!549514 (and tp!261862 tp!261860))))

(declare-fun b!835308 () Bool)

(declare-fun res!382446 () Bool)

(assert (=> b!835308 (=> (not res!382446) (not e!549515))))

(assert (=> b!835308 (= res!382446 (validRegex!642 (regOne!4690 r!27177)))))

(declare-fun b!835309 () Bool)

(declare-fun res!382449 () Bool)

(assert (=> b!835309 (=> (not res!382449) (not e!549515))))

(declare-fun nullable!540 (Regex!2089) Bool)

(assert (=> b!835309 (= res!382449 (not (nullable!540 (regOne!4690 r!27177))))))

(assert (= (and start!74230 res!382447) b!835302))

(assert (= (and b!835302 res!382448) b!835306))

(assert (= (and b!835306 res!382445) b!835309))

(assert (= (and b!835309 res!382449) b!835308))

(assert (= (and b!835308 res!382446) b!835303))

(assert (= (and start!74230 ((_ is ElementMatch!2089) r!27177)) b!835305))

(assert (= (and start!74230 ((_ is Concat!3820) r!27177)) b!835307))

(assert (= (and start!74230 ((_ is Star!2089) r!27177)) b!835304))

(assert (= (and start!74230 ((_ is Union!2089) r!27177)) b!835301))

(declare-fun m!1069987 () Bool)

(assert (=> start!74230 m!1069987))

(declare-fun m!1069989 () Bool)

(assert (=> b!835303 m!1069989))

(assert (=> b!835303 m!1069989))

(declare-fun m!1069991 () Bool)

(assert (=> b!835303 m!1069991))

(declare-fun m!1069993 () Bool)

(assert (=> b!835309 m!1069993))

(declare-fun m!1069995 () Bool)

(assert (=> b!835302 m!1069995))

(assert (=> b!835302 m!1069995))

(declare-fun m!1069997 () Bool)

(assert (=> b!835302 m!1069997))

(declare-fun m!1069999 () Bool)

(assert (=> b!835308 m!1069999))

(check-sat (not b!835303) (not b!835302) (not b!835309) (not b!835308) (not b!835307) (not b!835301) (not start!74230) (not b!835304) tp_is_empty!3901)
(check-sat)
(get-model)

(declare-fun b!835334 () Bool)

(declare-fun res!382469 () Bool)

(declare-fun e!549538 () Bool)

(assert (=> b!835334 (=> (not res!382469) (not e!549538))))

(declare-fun call!49960 () Bool)

(assert (=> b!835334 (= res!382469 call!49960)))

(declare-fun e!549541 () Bool)

(assert (=> b!835334 (= e!549541 e!549538)))

(declare-fun d!260872 () Bool)

(declare-fun res!382470 () Bool)

(declare-fun e!549537 () Bool)

(assert (=> d!260872 (=> res!382470 e!549537)))

(assert (=> d!260872 (= res!382470 ((_ is ElementMatch!2089) (regOne!4690 r!27177)))))

(assert (=> d!260872 (= (validRegex!642 (regOne!4690 r!27177)) e!549537)))

(declare-fun bm!49955 () Bool)

(declare-fun c!136337 () Bool)

(assert (=> bm!49955 (= call!49960 (validRegex!642 (ite c!136337 (regOne!4691 (regOne!4690 r!27177)) (regTwo!4690 (regOne!4690 r!27177)))))))

(declare-fun b!835335 () Bool)

(declare-fun call!49962 () Bool)

(assert (=> b!835335 (= e!549538 call!49962)))

(declare-fun bm!49956 () Bool)

(declare-fun call!49961 () Bool)

(assert (=> bm!49956 (= call!49962 call!49961)))

(declare-fun b!835336 () Bool)

(declare-fun e!549542 () Bool)

(declare-fun e!549539 () Bool)

(assert (=> b!835336 (= e!549542 e!549539)))

(declare-fun res!382467 () Bool)

(assert (=> b!835336 (=> (not res!382467) (not e!549539))))

(assert (=> b!835336 (= res!382467 call!49962)))

(declare-fun b!835337 () Bool)

(declare-fun res!382466 () Bool)

(assert (=> b!835337 (=> res!382466 e!549542)))

(assert (=> b!835337 (= res!382466 (not ((_ is Concat!3820) (regOne!4690 r!27177))))))

(assert (=> b!835337 (= e!549541 e!549542)))

(declare-fun b!835338 () Bool)

(declare-fun e!549540 () Bool)

(assert (=> b!835338 (= e!549540 call!49961)))

(declare-fun b!835339 () Bool)

(declare-fun e!549536 () Bool)

(assert (=> b!835339 (= e!549536 e!549541)))

(assert (=> b!835339 (= c!136337 ((_ is Union!2089) (regOne!4690 r!27177)))))

(declare-fun b!835340 () Bool)

(assert (=> b!835340 (= e!549539 call!49960)))

(declare-fun b!835341 () Bool)

(assert (=> b!835341 (= e!549536 e!549540)))

(declare-fun res!382468 () Bool)

(assert (=> b!835341 (= res!382468 (not (nullable!540 (reg!2418 (regOne!4690 r!27177)))))))

(assert (=> b!835341 (=> (not res!382468) (not e!549540))))

(declare-fun bm!49957 () Bool)

(declare-fun c!136338 () Bool)

(assert (=> bm!49957 (= call!49961 (validRegex!642 (ite c!136338 (reg!2418 (regOne!4690 r!27177)) (ite c!136337 (regTwo!4691 (regOne!4690 r!27177)) (regOne!4690 (regOne!4690 r!27177))))))))

(declare-fun b!835342 () Bool)

(assert (=> b!835342 (= e!549537 e!549536)))

(assert (=> b!835342 (= c!136338 ((_ is Star!2089) (regOne!4690 r!27177)))))

(assert (= (and d!260872 (not res!382470)) b!835342))

(assert (= (and b!835342 c!136338) b!835341))

(assert (= (and b!835342 (not c!136338)) b!835339))

(assert (= (and b!835341 res!382468) b!835338))

(assert (= (and b!835339 c!136337) b!835334))

(assert (= (and b!835339 (not c!136337)) b!835337))

(assert (= (and b!835334 res!382469) b!835335))

(assert (= (and b!835337 (not res!382466)) b!835336))

(assert (= (and b!835336 res!382467) b!835340))

(assert (= (or b!835334 b!835340) bm!49955))

(assert (= (or b!835335 b!835336) bm!49956))

(assert (= (or b!835338 bm!49956) bm!49957))

(declare-fun m!1070007 () Bool)

(assert (=> bm!49955 m!1070007))

(declare-fun m!1070009 () Bool)

(assert (=> b!835341 m!1070009))

(declare-fun m!1070011 () Bool)

(assert (=> bm!49957 m!1070011))

(assert (=> b!835308 d!260872))

(declare-fun b!835343 () Bool)

(declare-fun res!382474 () Bool)

(declare-fun e!549545 () Bool)

(assert (=> b!835343 (=> (not res!382474) (not e!549545))))

(declare-fun call!49963 () Bool)

(assert (=> b!835343 (= res!382474 call!49963)))

(declare-fun e!549548 () Bool)

(assert (=> b!835343 (= e!549548 e!549545)))

(declare-fun d!260878 () Bool)

(declare-fun res!382475 () Bool)

(declare-fun e!549544 () Bool)

(assert (=> d!260878 (=> res!382475 e!549544)))

(assert (=> d!260878 (= res!382475 ((_ is ElementMatch!2089) r!27177))))

(assert (=> d!260878 (= (validRegex!642 r!27177) e!549544)))

(declare-fun bm!49958 () Bool)

(declare-fun c!136339 () Bool)

(assert (=> bm!49958 (= call!49963 (validRegex!642 (ite c!136339 (regOne!4691 r!27177) (regTwo!4690 r!27177))))))

(declare-fun b!835344 () Bool)

(declare-fun call!49965 () Bool)

(assert (=> b!835344 (= e!549545 call!49965)))

(declare-fun bm!49959 () Bool)

(declare-fun call!49964 () Bool)

(assert (=> bm!49959 (= call!49965 call!49964)))

(declare-fun b!835345 () Bool)

(declare-fun e!549549 () Bool)

(declare-fun e!549546 () Bool)

(assert (=> b!835345 (= e!549549 e!549546)))

(declare-fun res!382472 () Bool)

(assert (=> b!835345 (=> (not res!382472) (not e!549546))))

(assert (=> b!835345 (= res!382472 call!49965)))

(declare-fun b!835346 () Bool)

(declare-fun res!382471 () Bool)

(assert (=> b!835346 (=> res!382471 e!549549)))

(assert (=> b!835346 (= res!382471 (not ((_ is Concat!3820) r!27177)))))

(assert (=> b!835346 (= e!549548 e!549549)))

(declare-fun b!835347 () Bool)

(declare-fun e!549547 () Bool)

(assert (=> b!835347 (= e!549547 call!49964)))

(declare-fun b!835348 () Bool)

(declare-fun e!549543 () Bool)

(assert (=> b!835348 (= e!549543 e!549548)))

(assert (=> b!835348 (= c!136339 ((_ is Union!2089) r!27177))))

(declare-fun b!835349 () Bool)

(assert (=> b!835349 (= e!549546 call!49963)))

(declare-fun b!835350 () Bool)

(assert (=> b!835350 (= e!549543 e!549547)))

(declare-fun res!382473 () Bool)

(assert (=> b!835350 (= res!382473 (not (nullable!540 (reg!2418 r!27177))))))

(assert (=> b!835350 (=> (not res!382473) (not e!549547))))

(declare-fun c!136340 () Bool)

(declare-fun bm!49960 () Bool)

(assert (=> bm!49960 (= call!49964 (validRegex!642 (ite c!136340 (reg!2418 r!27177) (ite c!136339 (regTwo!4691 r!27177) (regOne!4690 r!27177)))))))

(declare-fun b!835351 () Bool)

(assert (=> b!835351 (= e!549544 e!549543)))

(assert (=> b!835351 (= c!136340 ((_ is Star!2089) r!27177))))

(assert (= (and d!260878 (not res!382475)) b!835351))

(assert (= (and b!835351 c!136340) b!835350))

(assert (= (and b!835351 (not c!136340)) b!835348))

(assert (= (and b!835350 res!382473) b!835347))

(assert (= (and b!835348 c!136339) b!835343))

(assert (= (and b!835348 (not c!136339)) b!835346))

(assert (= (and b!835343 res!382474) b!835344))

(assert (= (and b!835346 (not res!382471)) b!835345))

(assert (= (and b!835345 res!382472) b!835349))

(assert (= (or b!835343 b!835349) bm!49958))

(assert (= (or b!835344 b!835345) bm!49959))

(assert (= (or b!835347 bm!49959) bm!49960))

(declare-fun m!1070013 () Bool)

(assert (=> bm!49958 m!1070013))

(declare-fun m!1070015 () Bool)

(assert (=> b!835350 m!1070015))

(declare-fun m!1070017 () Bool)

(assert (=> bm!49960 m!1070017))

(assert (=> start!74230 d!260878))

(declare-fun d!260880 () Bool)

(declare-fun lt!317905 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1328 (List!8915) (InoxSet C!4748))

(assert (=> d!260880 (= lt!317905 (select (content!1328 (firstChars!60 r!27177)) c!13916))))

(declare-fun e!549564 () Bool)

(assert (=> d!260880 (= lt!317905 e!549564)))

(declare-fun res!382480 () Bool)

(assert (=> d!260880 (=> (not res!382480) (not e!549564))))

(assert (=> d!260880 (= res!382480 ((_ is Cons!8899) (firstChars!60 r!27177)))))

(assert (=> d!260880 (= (contains!1680 (firstChars!60 r!27177) c!13916) lt!317905)))

(declare-fun b!835376 () Bool)

(declare-fun e!549565 () Bool)

(assert (=> b!835376 (= e!549564 e!549565)))

(declare-fun res!382481 () Bool)

(assert (=> b!835376 (=> res!382481 e!549565)))

(assert (=> b!835376 (= res!382481 (= (h!14300 (firstChars!60 r!27177)) c!13916))))

(declare-fun b!835377 () Bool)

(assert (=> b!835377 (= e!549565 (contains!1680 (t!93207 (firstChars!60 r!27177)) c!13916))))

(assert (= (and d!260880 res!382480) b!835376))

(assert (= (and b!835376 (not res!382481)) b!835377))

(assert (=> d!260880 m!1069995))

(declare-fun m!1070019 () Bool)

(assert (=> d!260880 m!1070019))

(declare-fun m!1070021 () Bool)

(assert (=> d!260880 m!1070021))

(declare-fun m!1070023 () Bool)

(assert (=> b!835377 m!1070023))

(assert (=> b!835302 d!260880))

(declare-fun b!835438 () Bool)

(declare-fun e!549606 () List!8915)

(declare-fun e!549602 () List!8915)

(assert (=> b!835438 (= e!549606 e!549602)))

(declare-fun c!136376 () Bool)

(assert (=> b!835438 (= c!136376 ((_ is ElementMatch!2089) r!27177))))

(declare-fun b!835439 () Bool)

(declare-fun e!549605 () List!8915)

(declare-fun call!49998 () List!8915)

(assert (=> b!835439 (= e!549605 call!49998)))

(declare-fun bm!49993 () Bool)

(declare-fun call!50000 () List!8915)

(assert (=> bm!49993 (= call!49998 call!50000)))

(declare-fun b!835440 () Bool)

(assert (=> b!835440 (= e!549606 Nil!8899)))

(declare-fun c!136378 () Bool)

(declare-fun call!50001 () List!8915)

(declare-fun c!136375 () Bool)

(declare-fun bm!49995 () Bool)

(assert (=> bm!49995 (= call!50001 (firstChars!60 (ite c!136375 (reg!2418 r!27177) (ite c!136378 (regTwo!4691 r!27177) (regOne!4690 r!27177)))))))

(declare-fun bm!49996 () Bool)

(declare-fun call!49999 () List!8915)

(assert (=> bm!49996 (= call!49999 (firstChars!60 (ite c!136378 (regOne!4691 r!27177) (regTwo!4690 r!27177))))))

(declare-fun b!835441 () Bool)

(assert (=> b!835441 (= c!136375 ((_ is Star!2089) r!27177))))

(declare-fun e!549603 () List!8915)

(assert (=> b!835441 (= e!549602 e!549603)))

(declare-fun b!835442 () Bool)

(declare-fun e!549604 () List!8915)

(assert (=> b!835442 (= e!549603 e!549604)))

(assert (=> b!835442 (= c!136378 ((_ is Union!2089) r!27177))))

(declare-fun b!835443 () Bool)

(declare-fun call!50002 () List!8915)

(assert (=> b!835443 (= e!549605 call!50002)))

(declare-fun b!835444 () Bool)

(assert (=> b!835444 (= e!549603 call!50001)))

(declare-fun b!835445 () Bool)

(assert (=> b!835445 (= e!549604 call!50002)))

(declare-fun bm!49994 () Bool)

(assert (=> bm!49994 (= call!50000 call!50001)))

(declare-fun d!260882 () Bool)

(declare-fun c!136379 () Bool)

(assert (=> d!260882 (= c!136379 (or ((_ is EmptyExpr!2089) r!27177) ((_ is EmptyLang!2089) r!27177)))))

(assert (=> d!260882 (= (firstChars!60 r!27177) e!549606)))

(declare-fun b!835446 () Bool)

(declare-fun c!136377 () Bool)

(assert (=> b!835446 (= c!136377 (nullable!540 (regOne!4690 r!27177)))))

(assert (=> b!835446 (= e!549604 e!549605)))

(declare-fun b!835447 () Bool)

(assert (=> b!835447 (= e!549602 (Cons!8899 (c!136332 r!27177) Nil!8899))))

(declare-fun bm!49997 () Bool)

(declare-fun ++!2316 (List!8915 List!8915) List!8915)

(assert (=> bm!49997 (= call!50002 (++!2316 (ite c!136378 call!49999 call!49998) (ite c!136378 call!50000 call!49999)))))

(assert (= (and d!260882 c!136379) b!835440))

(assert (= (and d!260882 (not c!136379)) b!835438))

(assert (= (and b!835438 c!136376) b!835447))

(assert (= (and b!835438 (not c!136376)) b!835441))

(assert (= (and b!835441 c!136375) b!835444))

(assert (= (and b!835441 (not c!136375)) b!835442))

(assert (= (and b!835442 c!136378) b!835445))

(assert (= (and b!835442 (not c!136378)) b!835446))

(assert (= (and b!835446 c!136377) b!835443))

(assert (= (and b!835446 (not c!136377)) b!835439))

(assert (= (or b!835443 b!835439) bm!49993))

(assert (= (or b!835445 bm!49993) bm!49994))

(assert (= (or b!835445 b!835443) bm!49996))

(assert (= (or b!835445 b!835443) bm!49997))

(assert (= (or b!835444 bm!49994) bm!49995))

(declare-fun m!1070047 () Bool)

(assert (=> bm!49995 m!1070047))

(declare-fun m!1070049 () Bool)

(assert (=> bm!49996 m!1070049))

(assert (=> b!835446 m!1069993))

(declare-fun m!1070051 () Bool)

(assert (=> bm!49997 m!1070051))

(assert (=> b!835302 d!260882))

(declare-fun d!260892 () Bool)

(declare-fun nullableFct!177 (Regex!2089) Bool)

(assert (=> d!260892 (= (nullable!540 (regOne!4690 r!27177)) (nullableFct!177 (regOne!4690 r!27177)))))

(declare-fun bs!229717 () Bool)

(assert (= bs!229717 d!260892))

(declare-fun m!1070053 () Bool)

(assert (=> bs!229717 m!1070053))

(assert (=> b!835309 d!260892))

(declare-fun d!260894 () Bool)

(declare-fun lt!317907 () Bool)

(assert (=> d!260894 (= lt!317907 (select (content!1328 (firstChars!60 (regOne!4690 r!27177))) c!13916))))

(declare-fun e!549607 () Bool)

(assert (=> d!260894 (= lt!317907 e!549607)))

(declare-fun res!382494 () Bool)

(assert (=> d!260894 (=> (not res!382494) (not e!549607))))

(assert (=> d!260894 (= res!382494 ((_ is Cons!8899) (firstChars!60 (regOne!4690 r!27177))))))

(assert (=> d!260894 (= (contains!1680 (firstChars!60 (regOne!4690 r!27177)) c!13916) lt!317907)))

(declare-fun b!835448 () Bool)

(declare-fun e!549608 () Bool)

(assert (=> b!835448 (= e!549607 e!549608)))

(declare-fun res!382495 () Bool)

(assert (=> b!835448 (=> res!382495 e!549608)))

(assert (=> b!835448 (= res!382495 (= (h!14300 (firstChars!60 (regOne!4690 r!27177))) c!13916))))

(declare-fun b!835449 () Bool)

(assert (=> b!835449 (= e!549608 (contains!1680 (t!93207 (firstChars!60 (regOne!4690 r!27177))) c!13916))))

(assert (= (and d!260894 res!382494) b!835448))

(assert (= (and b!835448 (not res!382495)) b!835449))

(assert (=> d!260894 m!1069989))

(declare-fun m!1070055 () Bool)

(assert (=> d!260894 m!1070055))

(declare-fun m!1070057 () Bool)

(assert (=> d!260894 m!1070057))

(declare-fun m!1070059 () Bool)

(assert (=> b!835449 m!1070059))

(assert (=> b!835303 d!260894))

(declare-fun b!835450 () Bool)

(declare-fun e!549613 () List!8915)

(declare-fun e!549609 () List!8915)

(assert (=> b!835450 (= e!549613 e!549609)))

(declare-fun c!136381 () Bool)

(assert (=> b!835450 (= c!136381 ((_ is ElementMatch!2089) (regOne!4690 r!27177)))))

(declare-fun b!835451 () Bool)

(declare-fun e!549612 () List!8915)

(declare-fun call!50007 () List!8915)

(assert (=> b!835451 (= e!549612 call!50007)))

(declare-fun bm!50002 () Bool)

(declare-fun call!50009 () List!8915)

(assert (=> bm!50002 (= call!50007 call!50009)))

(declare-fun b!835452 () Bool)

(assert (=> b!835452 (= e!549613 Nil!8899)))

(declare-fun call!50010 () List!8915)

(declare-fun bm!50004 () Bool)

(declare-fun c!136380 () Bool)

(declare-fun c!136383 () Bool)

(assert (=> bm!50004 (= call!50010 (firstChars!60 (ite c!136380 (reg!2418 (regOne!4690 r!27177)) (ite c!136383 (regTwo!4691 (regOne!4690 r!27177)) (regOne!4690 (regOne!4690 r!27177))))))))

(declare-fun bm!50005 () Bool)

(declare-fun call!50008 () List!8915)

(assert (=> bm!50005 (= call!50008 (firstChars!60 (ite c!136383 (regOne!4691 (regOne!4690 r!27177)) (regTwo!4690 (regOne!4690 r!27177)))))))

(declare-fun b!835453 () Bool)

(assert (=> b!835453 (= c!136380 ((_ is Star!2089) (regOne!4690 r!27177)))))

(declare-fun e!549610 () List!8915)

(assert (=> b!835453 (= e!549609 e!549610)))

(declare-fun b!835454 () Bool)

(declare-fun e!549611 () List!8915)

(assert (=> b!835454 (= e!549610 e!549611)))

(assert (=> b!835454 (= c!136383 ((_ is Union!2089) (regOne!4690 r!27177)))))

(declare-fun b!835455 () Bool)

(declare-fun call!50011 () List!8915)

(assert (=> b!835455 (= e!549612 call!50011)))

(declare-fun b!835456 () Bool)

(assert (=> b!835456 (= e!549610 call!50010)))

(declare-fun b!835457 () Bool)

(assert (=> b!835457 (= e!549611 call!50011)))

(declare-fun bm!50003 () Bool)

(assert (=> bm!50003 (= call!50009 call!50010)))

(declare-fun d!260896 () Bool)

(declare-fun c!136384 () Bool)

(assert (=> d!260896 (= c!136384 (or ((_ is EmptyExpr!2089) (regOne!4690 r!27177)) ((_ is EmptyLang!2089) (regOne!4690 r!27177))))))

(assert (=> d!260896 (= (firstChars!60 (regOne!4690 r!27177)) e!549613)))

(declare-fun b!835458 () Bool)

(declare-fun c!136382 () Bool)

(assert (=> b!835458 (= c!136382 (nullable!540 (regOne!4690 (regOne!4690 r!27177))))))

(assert (=> b!835458 (= e!549611 e!549612)))

(declare-fun b!835459 () Bool)

(assert (=> b!835459 (= e!549609 (Cons!8899 (c!136332 (regOne!4690 r!27177)) Nil!8899))))

(declare-fun bm!50006 () Bool)

(assert (=> bm!50006 (= call!50011 (++!2316 (ite c!136383 call!50008 call!50007) (ite c!136383 call!50009 call!50008)))))

(assert (= (and d!260896 c!136384) b!835452))

(assert (= (and d!260896 (not c!136384)) b!835450))

(assert (= (and b!835450 c!136381) b!835459))

(assert (= (and b!835450 (not c!136381)) b!835453))

(assert (= (and b!835453 c!136380) b!835456))

(assert (= (and b!835453 (not c!136380)) b!835454))

(assert (= (and b!835454 c!136383) b!835457))

(assert (= (and b!835454 (not c!136383)) b!835458))

(assert (= (and b!835458 c!136382) b!835455))

(assert (= (and b!835458 (not c!136382)) b!835451))

(assert (= (or b!835455 b!835451) bm!50002))

(assert (= (or b!835457 bm!50002) bm!50003))

(assert (= (or b!835457 b!835455) bm!50005))

(assert (= (or b!835457 b!835455) bm!50006))

(assert (= (or b!835456 bm!50003) bm!50004))

(declare-fun m!1070061 () Bool)

(assert (=> bm!50004 m!1070061))

(declare-fun m!1070063 () Bool)

(assert (=> bm!50005 m!1070063))

(declare-fun m!1070065 () Bool)

(assert (=> b!835458 m!1070065))

(declare-fun m!1070067 () Bool)

(assert (=> bm!50006 m!1070067))

(assert (=> b!835303 d!260896))

(declare-fun b!835482 () Bool)

(declare-fun e!549623 () Bool)

(declare-fun tp!261877 () Bool)

(declare-fun tp!261879 () Bool)

(assert (=> b!835482 (= e!549623 (and tp!261877 tp!261879))))

(assert (=> b!835301 (= tp!261864 e!549623)))

(declare-fun b!835479 () Bool)

(assert (=> b!835479 (= e!549623 tp_is_empty!3901)))

(declare-fun b!835480 () Bool)

(declare-fun tp!261878 () Bool)

(declare-fun tp!261875 () Bool)

(assert (=> b!835480 (= e!549623 (and tp!261878 tp!261875))))

(declare-fun b!835481 () Bool)

(declare-fun tp!261876 () Bool)

(assert (=> b!835481 (= e!549623 tp!261876)))

(assert (= (and b!835301 ((_ is ElementMatch!2089) (regOne!4691 r!27177))) b!835479))

(assert (= (and b!835301 ((_ is Concat!3820) (regOne!4691 r!27177))) b!835480))

(assert (= (and b!835301 ((_ is Star!2089) (regOne!4691 r!27177))) b!835481))

(assert (= (and b!835301 ((_ is Union!2089) (regOne!4691 r!27177))) b!835482))

(declare-fun b!835495 () Bool)

(declare-fun e!549631 () Bool)

(declare-fun tp!261882 () Bool)

(declare-fun tp!261884 () Bool)

(assert (=> b!835495 (= e!549631 (and tp!261882 tp!261884))))

(assert (=> b!835301 (= tp!261863 e!549631)))

(declare-fun b!835492 () Bool)

(assert (=> b!835492 (= e!549631 tp_is_empty!3901)))

(declare-fun b!835493 () Bool)

(declare-fun tp!261883 () Bool)

(declare-fun tp!261880 () Bool)

(assert (=> b!835493 (= e!549631 (and tp!261883 tp!261880))))

(declare-fun b!835494 () Bool)

(declare-fun tp!261881 () Bool)

(assert (=> b!835494 (= e!549631 tp!261881)))

(assert (= (and b!835301 ((_ is ElementMatch!2089) (regTwo!4691 r!27177))) b!835492))

(assert (= (and b!835301 ((_ is Concat!3820) (regTwo!4691 r!27177))) b!835493))

(assert (= (and b!835301 ((_ is Star!2089) (regTwo!4691 r!27177))) b!835494))

(assert (= (and b!835301 ((_ is Union!2089) (regTwo!4691 r!27177))) b!835495))

(declare-fun b!835499 () Bool)

(declare-fun e!549632 () Bool)

(declare-fun tp!261887 () Bool)

(declare-fun tp!261889 () Bool)

(assert (=> b!835499 (= e!549632 (and tp!261887 tp!261889))))

(assert (=> b!835307 (= tp!261862 e!549632)))

(declare-fun b!835496 () Bool)

(assert (=> b!835496 (= e!549632 tp_is_empty!3901)))

(declare-fun b!835497 () Bool)

(declare-fun tp!261888 () Bool)

(declare-fun tp!261885 () Bool)

(assert (=> b!835497 (= e!549632 (and tp!261888 tp!261885))))

(declare-fun b!835498 () Bool)

(declare-fun tp!261886 () Bool)

(assert (=> b!835498 (= e!549632 tp!261886)))

(assert (= (and b!835307 ((_ is ElementMatch!2089) (regOne!4690 r!27177))) b!835496))

(assert (= (and b!835307 ((_ is Concat!3820) (regOne!4690 r!27177))) b!835497))

(assert (= (and b!835307 ((_ is Star!2089) (regOne!4690 r!27177))) b!835498))

(assert (= (and b!835307 ((_ is Union!2089) (regOne!4690 r!27177))) b!835499))

(declare-fun b!835503 () Bool)

(declare-fun e!549633 () Bool)

(declare-fun tp!261892 () Bool)

(declare-fun tp!261894 () Bool)

(assert (=> b!835503 (= e!549633 (and tp!261892 tp!261894))))

(assert (=> b!835307 (= tp!261860 e!549633)))

(declare-fun b!835500 () Bool)

(assert (=> b!835500 (= e!549633 tp_is_empty!3901)))

(declare-fun b!835501 () Bool)

(declare-fun tp!261893 () Bool)

(declare-fun tp!261890 () Bool)

(assert (=> b!835501 (= e!549633 (and tp!261893 tp!261890))))

(declare-fun b!835502 () Bool)

(declare-fun tp!261891 () Bool)

(assert (=> b!835502 (= e!549633 tp!261891)))

(assert (= (and b!835307 ((_ is ElementMatch!2089) (regTwo!4690 r!27177))) b!835500))

(assert (= (and b!835307 ((_ is Concat!3820) (regTwo!4690 r!27177))) b!835501))

(assert (= (and b!835307 ((_ is Star!2089) (regTwo!4690 r!27177))) b!835502))

(assert (= (and b!835307 ((_ is Union!2089) (regTwo!4690 r!27177))) b!835503))

(declare-fun b!835507 () Bool)

(declare-fun e!549634 () Bool)

(declare-fun tp!261897 () Bool)

(declare-fun tp!261899 () Bool)

(assert (=> b!835507 (= e!549634 (and tp!261897 tp!261899))))

(assert (=> b!835304 (= tp!261861 e!549634)))

(declare-fun b!835504 () Bool)

(assert (=> b!835504 (= e!549634 tp_is_empty!3901)))

(declare-fun b!835505 () Bool)

(declare-fun tp!261898 () Bool)

(declare-fun tp!261895 () Bool)

(assert (=> b!835505 (= e!549634 (and tp!261898 tp!261895))))

(declare-fun b!835506 () Bool)

(declare-fun tp!261896 () Bool)

(assert (=> b!835506 (= e!549634 tp!261896)))

(assert (= (and b!835304 ((_ is ElementMatch!2089) (reg!2418 r!27177))) b!835504))

(assert (= (and b!835304 ((_ is Concat!3820) (reg!2418 r!27177))) b!835505))

(assert (= (and b!835304 ((_ is Star!2089) (reg!2418 r!27177))) b!835506))

(assert (= (and b!835304 ((_ is Union!2089) (reg!2418 r!27177))) b!835507))

(check-sat (not bm!50005) (not bm!49955) (not bm!49957) (not b!835480) (not b!835493) (not b!835482) (not b!835503) (not b!835498) (not b!835446) (not b!835499) (not b!835341) (not b!835494) (not d!260892) (not d!260880) (not b!835495) (not b!835506) (not bm!50006) (not bm!49995) (not bm!49997) (not b!835497) (not bm!50004) (not b!835502) (not bm!49958) (not b!835481) (not b!835505) (not b!835449) (not b!835501) (not bm!49960) (not b!835458) (not bm!49996) (not d!260894) (not b!835507) tp_is_empty!3901 (not b!835350) (not b!835377))
(check-sat)
