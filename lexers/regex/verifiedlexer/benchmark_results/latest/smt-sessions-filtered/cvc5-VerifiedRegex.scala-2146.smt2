; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107390 () Bool)

(assert start!107390)

(declare-fun bm!84180 () Bool)

(declare-fun from!613 () Int)

(declare-fun c!201303 () Bool)

(declare-datatypes ((T!22256 0))(
  ( (T!22257 (val!3955 Int)) )
))
(declare-datatypes ((List!12134 0))(
  ( (Nil!12110) (Cons!12110 (h!17511 T!22256) (t!112550 List!12134)) )
))
(declare-fun r!2028 () List!12134)

(declare-fun lt!412197 () Int)

(declare-fun until!61 () Int)

(declare-fun call!84186 () List!12134)

(declare-fun slice!518 (List!12134 Int Int) List!12134)

(assert (=> bm!84180 (= call!84186 (slice!518 r!2028 (ite c!201303 (- from!613 lt!412197) 0) (- until!61 lt!412197)))))

(declare-fun res!542853 () Bool)

(declare-fun e!773394 () Bool)

(assert (=> start!107390 (=> (not res!542853) (not e!773394))))

(assert (=> start!107390 (= res!542853 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107390 e!773394))

(assert (=> start!107390 true))

(declare-fun e!773389 () Bool)

(assert (=> start!107390 e!773389))

(declare-fun e!773391 () Bool)

(assert (=> start!107390 e!773391))

(declare-fun l!2744 () List!12134)

(declare-fun c!201304 () Bool)

(declare-fun bm!84181 () Bool)

(declare-fun call!84185 () List!12134)

(assert (=> bm!84181 (= call!84185 (slice!518 l!2744 from!613 (ite c!201304 until!61 lt!412197)))))

(declare-fun b!1205471 () Bool)

(declare-fun e!773393 () Bool)

(declare-fun lt!412198 () List!12134)

(declare-fun e!773392 () List!12134)

(assert (=> b!1205471 (= e!773393 (not (= lt!412198 e!773392)))))

(assert (=> b!1205471 (= c!201304 (<= until!61 lt!412197))))

(declare-fun b!1205472 () Bool)

(declare-fun res!542855 () Bool)

(declare-fun e!773390 () Bool)

(assert (=> b!1205472 (=> (not res!542855) (not e!773390))))

(assert (=> b!1205472 (= res!542855 (and (not (= l!2744 Nil!12110)) (not (= r!2028 Nil!12110)) (= until!61 0)))))

(declare-fun b!1205473 () Bool)

(declare-fun tp_is_empty!6113 () Bool)

(declare-fun tp!341983 () Bool)

(assert (=> b!1205473 (= e!773389 (and tp_is_empty!6113 tp!341983))))

(declare-fun b!1205474 () Bool)

(declare-fun tp!341982 () Bool)

(assert (=> b!1205474 (= e!773391 (and tp_is_empty!6113 tp!341982))))

(declare-fun b!1205475 () Bool)

(declare-fun ++!3132 (List!12134 List!12134) List!12134)

(assert (=> b!1205475 (= e!773392 (++!3132 call!84185 call!84186))))

(declare-fun b!1205476 () Bool)

(assert (=> b!1205476 (= e!773390 e!773393)))

(assert (=> b!1205476 (= c!201303 (<= lt!412197 from!613))))

(assert (=> b!1205476 (= lt!412198 (slice!518 (++!3132 l!2744 r!2028) from!613 until!61))))

(declare-fun b!1205477 () Bool)

(assert (=> b!1205477 (= e!773394 e!773390)))

(declare-fun res!542854 () Bool)

(assert (=> b!1205477 (=> (not res!542854) (not e!773390))))

(declare-fun size!9650 (List!12134) Int)

(assert (=> b!1205477 (= res!542854 (<= until!61 (+ lt!412197 (size!9650 r!2028))))))

(assert (=> b!1205477 (= lt!412197 (size!9650 l!2744))))

(declare-fun b!1205478 () Bool)

(assert (=> b!1205478 (= e!773393 (not (= lt!412198 call!84186)))))

(declare-fun b!1205479 () Bool)

(assert (=> b!1205479 (= e!773392 call!84185)))

(assert (= (and start!107390 res!542853) b!1205477))

(assert (= (and b!1205477 res!542854) b!1205472))

(assert (= (and b!1205472 res!542855) b!1205476))

(assert (= (and b!1205476 c!201303) b!1205478))

(assert (= (and b!1205476 (not c!201303)) b!1205471))

(assert (= (and b!1205471 c!201304) b!1205479))

(assert (= (and b!1205471 (not c!201304)) b!1205475))

(assert (= (or b!1205479 b!1205475) bm!84181))

(assert (= (or b!1205478 b!1205475) bm!84180))

(assert (= (and start!107390 (is-Cons!12110 l!2744)) b!1205473))

(assert (= (and start!107390 (is-Cons!12110 r!2028)) b!1205474))

(declare-fun m!1380701 () Bool)

(assert (=> bm!84181 m!1380701))

(declare-fun m!1380703 () Bool)

(assert (=> bm!84180 m!1380703))

(declare-fun m!1380705 () Bool)

(assert (=> b!1205476 m!1380705))

(assert (=> b!1205476 m!1380705))

(declare-fun m!1380707 () Bool)

(assert (=> b!1205476 m!1380707))

(declare-fun m!1380709 () Bool)

(assert (=> b!1205477 m!1380709))

(declare-fun m!1380711 () Bool)

(assert (=> b!1205477 m!1380711))

(declare-fun m!1380713 () Bool)

(assert (=> b!1205475 m!1380713))

(push 1)

(assert (not bm!84180))

(assert (not bm!84181))

(assert (not b!1205473))

(assert (not b!1205474))

(assert (not b!1205477))

(assert tp_is_empty!6113)

(assert (not b!1205475))

(assert (not b!1205476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!344457 () Bool)

(declare-fun take!143 (List!12134 Int) List!12134)

(declare-fun drop!615 (List!12134 Int) List!12134)

(assert (=> d!344457 (= (slice!518 r!2028 (ite c!201303 (- from!613 lt!412197) 0) (- until!61 lt!412197)) (take!143 (drop!615 r!2028 (ite c!201303 (- from!613 lt!412197) 0)) (- (- until!61 lt!412197) (ite c!201303 (- from!613 lt!412197) 0))))))

(declare-fun bs!288439 () Bool)

(assert (= bs!288439 d!344457))

(declare-fun m!1380729 () Bool)

(assert (=> bs!288439 m!1380729))

(assert (=> bs!288439 m!1380729))

(declare-fun m!1380731 () Bool)

(assert (=> bs!288439 m!1380731))

(assert (=> bm!84180 d!344457))

(declare-fun d!344459 () Bool)

(assert (=> d!344459 (= (slice!518 l!2744 from!613 (ite c!201304 until!61 lt!412197)) (take!143 (drop!615 l!2744 from!613) (- (ite c!201304 until!61 lt!412197) from!613)))))

(declare-fun bs!288440 () Bool)

(assert (= bs!288440 d!344459))

(declare-fun m!1380733 () Bool)

(assert (=> bs!288440 m!1380733))

(assert (=> bs!288440 m!1380733))

(declare-fun m!1380735 () Bool)

(assert (=> bs!288440 m!1380735))

(assert (=> bm!84181 d!344459))

(declare-fun b!1205517 () Bool)

(declare-fun res!542869 () Bool)

(declare-fun e!773417 () Bool)

(assert (=> b!1205517 (=> (not res!542869) (not e!773417))))

(declare-fun lt!412207 () List!12134)

(assert (=> b!1205517 (= res!542869 (= (size!9650 lt!412207) (+ (size!9650 call!84185) (size!9650 call!84186))))))

(declare-fun b!1205516 () Bool)

(declare-fun e!773418 () List!12134)

(assert (=> b!1205516 (= e!773418 (Cons!12110 (h!17511 call!84185) (++!3132 (t!112550 call!84185) call!84186)))))

(declare-fun b!1205515 () Bool)

(assert (=> b!1205515 (= e!773418 call!84186)))

(declare-fun b!1205518 () Bool)

(assert (=> b!1205518 (= e!773417 (or (not (= call!84186 Nil!12110)) (= lt!412207 call!84185)))))

(declare-fun d!344461 () Bool)

(assert (=> d!344461 e!773417))

(declare-fun res!542870 () Bool)

(assert (=> d!344461 (=> (not res!542870) (not e!773417))))

(declare-fun content!1709 (List!12134) (Set T!22256))

(assert (=> d!344461 (= res!542870 (= (content!1709 lt!412207) (set.union (content!1709 call!84185) (content!1709 call!84186))))))

(assert (=> d!344461 (= lt!412207 e!773418)))

(declare-fun c!201313 () Bool)

(assert (=> d!344461 (= c!201313 (is-Nil!12110 call!84185))))

(assert (=> d!344461 (= (++!3132 call!84185 call!84186) lt!412207)))

(assert (= (and d!344461 c!201313) b!1205515))

(assert (= (and d!344461 (not c!201313)) b!1205516))

(assert (= (and d!344461 res!542870) b!1205517))

(assert (= (and b!1205517 res!542869) b!1205518))

(declare-fun m!1380737 () Bool)

(assert (=> b!1205517 m!1380737))

(declare-fun m!1380739 () Bool)

(assert (=> b!1205517 m!1380739))

(declare-fun m!1380741 () Bool)

(assert (=> b!1205517 m!1380741))

(declare-fun m!1380743 () Bool)

(assert (=> b!1205516 m!1380743))

(declare-fun m!1380745 () Bool)

(assert (=> d!344461 m!1380745))

(declare-fun m!1380747 () Bool)

(assert (=> d!344461 m!1380747))

(declare-fun m!1380749 () Bool)

(assert (=> d!344461 m!1380749))

(assert (=> b!1205475 d!344461))

(declare-fun d!344465 () Bool)

(declare-fun lt!412210 () Int)

(assert (=> d!344465 (>= lt!412210 0)))

(declare-fun e!773421 () Int)

(assert (=> d!344465 (= lt!412210 e!773421)))

(declare-fun c!201316 () Bool)

(assert (=> d!344465 (= c!201316 (is-Nil!12110 r!2028))))

(assert (=> d!344465 (= (size!9650 r!2028) lt!412210)))

(declare-fun b!1205523 () Bool)

(assert (=> b!1205523 (= e!773421 0)))

(declare-fun b!1205524 () Bool)

(assert (=> b!1205524 (= e!773421 (+ 1 (size!9650 (t!112550 r!2028))))))

(assert (= (and d!344465 c!201316) b!1205523))

(assert (= (and d!344465 (not c!201316)) b!1205524))

(declare-fun m!1380751 () Bool)

(assert (=> b!1205524 m!1380751))

(assert (=> b!1205477 d!344465))

(declare-fun d!344467 () Bool)

(declare-fun lt!412211 () Int)

(assert (=> d!344467 (>= lt!412211 0)))

(declare-fun e!773422 () Int)

(assert (=> d!344467 (= lt!412211 e!773422)))

(declare-fun c!201317 () Bool)

(assert (=> d!344467 (= c!201317 (is-Nil!12110 l!2744))))

(assert (=> d!344467 (= (size!9650 l!2744) lt!412211)))

(declare-fun b!1205525 () Bool)

(assert (=> b!1205525 (= e!773422 0)))

(declare-fun b!1205526 () Bool)

(assert (=> b!1205526 (= e!773422 (+ 1 (size!9650 (t!112550 l!2744))))))

(assert (= (and d!344467 c!201317) b!1205525))

(assert (= (and d!344467 (not c!201317)) b!1205526))

(declare-fun m!1380753 () Bool)

(assert (=> b!1205526 m!1380753))

(assert (=> b!1205477 d!344467))

(declare-fun d!344469 () Bool)

(assert (=> d!344469 (= (slice!518 (++!3132 l!2744 r!2028) from!613 until!61) (take!143 (drop!615 (++!3132 l!2744 r!2028) from!613) (- until!61 from!613)))))

(declare-fun bs!288441 () Bool)

(assert (= bs!288441 d!344469))

(assert (=> bs!288441 m!1380705))

(declare-fun m!1380755 () Bool)

(assert (=> bs!288441 m!1380755))

(assert (=> bs!288441 m!1380755))

(declare-fun m!1380757 () Bool)

(assert (=> bs!288441 m!1380757))

(assert (=> b!1205476 d!344469))

(declare-fun b!1205531 () Bool)

(declare-fun res!542871 () Bool)

(declare-fun e!773423 () Bool)

(assert (=> b!1205531 (=> (not res!542871) (not e!773423))))

(declare-fun lt!412214 () List!12134)

(assert (=> b!1205531 (= res!542871 (= (size!9650 lt!412214) (+ (size!9650 l!2744) (size!9650 r!2028))))))

(declare-fun b!1205530 () Bool)

(declare-fun e!773424 () List!12134)

(assert (=> b!1205530 (= e!773424 (Cons!12110 (h!17511 l!2744) (++!3132 (t!112550 l!2744) r!2028)))))

(declare-fun b!1205529 () Bool)

(assert (=> b!1205529 (= e!773424 r!2028)))

(declare-fun b!1205532 () Bool)

(assert (=> b!1205532 (= e!773423 (or (not (= r!2028 Nil!12110)) (= lt!412214 l!2744)))))

(declare-fun d!344471 () Bool)

(assert (=> d!344471 e!773423))

(declare-fun res!542872 () Bool)

(assert (=> d!344471 (=> (not res!542872) (not e!773423))))

(assert (=> d!344471 (= res!542872 (= (content!1709 lt!412214) (set.union (content!1709 l!2744) (content!1709 r!2028))))))

(assert (=> d!344471 (= lt!412214 e!773424)))

(declare-fun c!201318 () Bool)

(assert (=> d!344471 (= c!201318 (is-Nil!12110 l!2744))))

(assert (=> d!344471 (= (++!3132 l!2744 r!2028) lt!412214)))

(assert (= (and d!344471 c!201318) b!1205529))

(assert (= (and d!344471 (not c!201318)) b!1205530))

(assert (= (and d!344471 res!542872) b!1205531))

(assert (= (and b!1205531 res!542871) b!1205532))

(declare-fun m!1380759 () Bool)

(assert (=> b!1205531 m!1380759))

(assert (=> b!1205531 m!1380711))

(assert (=> b!1205531 m!1380709))

(declare-fun m!1380761 () Bool)

(assert (=> b!1205530 m!1380761))

(declare-fun m!1380763 () Bool)

(assert (=> d!344471 m!1380763))

(declare-fun m!1380765 () Bool)

(assert (=> d!344471 m!1380765))

(declare-fun m!1380767 () Bool)

(assert (=> d!344471 m!1380767))

(assert (=> b!1205476 d!344471))

(declare-fun b!1205539 () Bool)

(declare-fun e!773429 () Bool)

(declare-fun tp!341992 () Bool)

(assert (=> b!1205539 (= e!773429 (and tp_is_empty!6113 tp!341992))))

(assert (=> b!1205473 (= tp!341983 e!773429)))

(assert (= (and b!1205473 (is-Cons!12110 (t!112550 l!2744))) b!1205539))

(declare-fun b!1205540 () Bool)

(declare-fun e!773432 () Bool)

(declare-fun tp!341993 () Bool)

(assert (=> b!1205540 (= e!773432 (and tp_is_empty!6113 tp!341993))))

(assert (=> b!1205474 (= tp!341982 e!773432)))

(assert (= (and b!1205474 (is-Cons!12110 (t!112550 r!2028))) b!1205540))

(push 1)

(assert (not b!1205539))

(assert (not b!1205531))

(assert (not b!1205540))

(assert (not d!344469))

(assert (not b!1205526))

(assert (not b!1205516))

(assert (not b!1205530))

(assert (not d!344457))

(assert (not d!344461))

(assert (not d!344459))

(assert (not b!1205524))

(assert (not d!344471))

(assert (not b!1205517))

(assert tp_is_empty!6113)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!344485 () Bool)

(declare-fun lt!412221 () Int)

(assert (=> d!344485 (>= lt!412221 0)))

(declare-fun e!773445 () Int)

(assert (=> d!344485 (= lt!412221 e!773445)))

(declare-fun c!201327 () Bool)

(assert (=> d!344485 (= c!201327 (is-Nil!12110 lt!412214))))

(assert (=> d!344485 (= (size!9650 lt!412214) lt!412221)))

(declare-fun b!1205567 () Bool)

(assert (=> b!1205567 (= e!773445 0)))

(declare-fun b!1205568 () Bool)

(assert (=> b!1205568 (= e!773445 (+ 1 (size!9650 (t!112550 lt!412214))))))

(assert (= (and d!344485 c!201327) b!1205567))

(assert (= (and d!344485 (not c!201327)) b!1205568))

(declare-fun m!1380809 () Bool)

(assert (=> b!1205568 m!1380809))

(assert (=> b!1205531 d!344485))

(assert (=> b!1205531 d!344467))

(assert (=> b!1205531 d!344465))

(declare-fun d!344487 () Bool)

(declare-fun c!201330 () Bool)

(assert (=> d!344487 (= c!201330 (is-Nil!12110 lt!412207))))

(declare-fun e!773448 () (Set T!22256))

(assert (=> d!344487 (= (content!1709 lt!412207) e!773448)))

(declare-fun b!1205573 () Bool)

(assert (=> b!1205573 (= e!773448 (as set.empty (Set T!22256)))))

(declare-fun b!1205574 () Bool)

(assert (=> b!1205574 (= e!773448 (set.union (set.insert (h!17511 lt!412207) (as set.empty (Set T!22256))) (content!1709 (t!112550 lt!412207))))))

(assert (= (and d!344487 c!201330) b!1205573))

(assert (= (and d!344487 (not c!201330)) b!1205574))

(declare-fun m!1380811 () Bool)

(assert (=> b!1205574 m!1380811))

(declare-fun m!1380813 () Bool)

(assert (=> b!1205574 m!1380813))

(assert (=> d!344461 d!344487))

(declare-fun d!344489 () Bool)

(declare-fun c!201331 () Bool)

(assert (=> d!344489 (= c!201331 (is-Nil!12110 call!84185))))

(declare-fun e!773449 () (Set T!22256))

(assert (=> d!344489 (= (content!1709 call!84185) e!773449)))

(declare-fun b!1205575 () Bool)

(assert (=> b!1205575 (= e!773449 (as set.empty (Set T!22256)))))

(declare-fun b!1205576 () Bool)

(assert (=> b!1205576 (= e!773449 (set.union (set.insert (h!17511 call!84185) (as set.empty (Set T!22256))) (content!1709 (t!112550 call!84185))))))

(assert (= (and d!344489 c!201331) b!1205575))

(assert (= (and d!344489 (not c!201331)) b!1205576))

(declare-fun m!1380815 () Bool)

(assert (=> b!1205576 m!1380815))

(declare-fun m!1380817 () Bool)

(assert (=> b!1205576 m!1380817))

(assert (=> d!344461 d!344489))

(declare-fun d!344491 () Bool)

(declare-fun c!201332 () Bool)

(assert (=> d!344491 (= c!201332 (is-Nil!12110 call!84186))))

(declare-fun e!773450 () (Set T!22256))

(assert (=> d!344491 (= (content!1709 call!84186) e!773450)))

(declare-fun b!1205577 () Bool)

(assert (=> b!1205577 (= e!773450 (as set.empty (Set T!22256)))))

(declare-fun b!1205578 () Bool)

(assert (=> b!1205578 (= e!773450 (set.union (set.insert (h!17511 call!84186) (as set.empty (Set T!22256))) (content!1709 (t!112550 call!84186))))))

(assert (= (and d!344491 c!201332) b!1205577))

(assert (= (and d!344491 (not c!201332)) b!1205578))

(declare-fun m!1380819 () Bool)

(assert (=> b!1205578 m!1380819))

(declare-fun m!1380821 () Bool)

(assert (=> b!1205578 m!1380821))

(assert (=> d!344461 d!344491))

(declare-fun d!344493 () Bool)

(declare-fun c!201333 () Bool)

(assert (=> d!344493 (= c!201333 (is-Nil!12110 lt!412214))))

(declare-fun e!773451 () (Set T!22256))

(assert (=> d!344493 (= (content!1709 lt!412214) e!773451)))

(declare-fun b!1205579 () Bool)

(assert (=> b!1205579 (= e!773451 (as set.empty (Set T!22256)))))

(declare-fun b!1205580 () Bool)

(assert (=> b!1205580 (= e!773451 (set.union (set.insert (h!17511 lt!412214) (as set.empty (Set T!22256))) (content!1709 (t!112550 lt!412214))))))

(assert (= (and d!344493 c!201333) b!1205579))

(assert (= (and d!344493 (not c!201333)) b!1205580))

(declare-fun m!1380823 () Bool)

(assert (=> b!1205580 m!1380823))

(declare-fun m!1380825 () Bool)

(assert (=> b!1205580 m!1380825))

(assert (=> d!344471 d!344493))

(declare-fun d!344495 () Bool)

(declare-fun c!201334 () Bool)

(assert (=> d!344495 (= c!201334 (is-Nil!12110 l!2744))))

(declare-fun e!773452 () (Set T!22256))

(assert (=> d!344495 (= (content!1709 l!2744) e!773452)))

(declare-fun b!1205581 () Bool)

(assert (=> b!1205581 (= e!773452 (as set.empty (Set T!22256)))))

(declare-fun b!1205582 () Bool)

(assert (=> b!1205582 (= e!773452 (set.union (set.insert (h!17511 l!2744) (as set.empty (Set T!22256))) (content!1709 (t!112550 l!2744))))))

(assert (= (and d!344495 c!201334) b!1205581))

(assert (= (and d!344495 (not c!201334)) b!1205582))

(declare-fun m!1380827 () Bool)

(assert (=> b!1205582 m!1380827))

(declare-fun m!1380829 () Bool)

(assert (=> b!1205582 m!1380829))

(assert (=> d!344471 d!344495))

(declare-fun d!344497 () Bool)

(declare-fun c!201335 () Bool)

(assert (=> d!344497 (= c!201335 (is-Nil!12110 r!2028))))

(declare-fun e!773453 () (Set T!22256))

(assert (=> d!344497 (= (content!1709 r!2028) e!773453)))

(declare-fun b!1205583 () Bool)

(assert (=> b!1205583 (= e!773453 (as set.empty (Set T!22256)))))

(declare-fun b!1205584 () Bool)

(assert (=> b!1205584 (= e!773453 (set.union (set.insert (h!17511 r!2028) (as set.empty (Set T!22256))) (content!1709 (t!112550 r!2028))))))

(assert (= (and d!344497 c!201335) b!1205583))

(assert (= (and d!344497 (not c!201335)) b!1205584))

(declare-fun m!1380831 () Bool)

(assert (=> b!1205584 m!1380831))

(declare-fun m!1380833 () Bool)

(assert (=> b!1205584 m!1380833))

(assert (=> d!344471 d!344497))

(declare-fun b!1205587 () Bool)

(declare-fun res!542881 () Bool)

(declare-fun e!773454 () Bool)

(assert (=> b!1205587 (=> (not res!542881) (not e!773454))))

(declare-fun lt!412222 () List!12134)

(assert (=> b!1205587 (= res!542881 (= (size!9650 lt!412222) (+ (size!9650 (t!112550 l!2744)) (size!9650 r!2028))))))

(declare-fun b!1205586 () Bool)

(declare-fun e!773455 () List!12134)

(assert (=> b!1205586 (= e!773455 (Cons!12110 (h!17511 (t!112550 l!2744)) (++!3132 (t!112550 (t!112550 l!2744)) r!2028)))))

(declare-fun b!1205585 () Bool)

(assert (=> b!1205585 (= e!773455 r!2028)))

(declare-fun b!1205588 () Bool)

(assert (=> b!1205588 (= e!773454 (or (not (= r!2028 Nil!12110)) (= lt!412222 (t!112550 l!2744))))))

(declare-fun d!344499 () Bool)

(assert (=> d!344499 e!773454))

(declare-fun res!542882 () Bool)

(assert (=> d!344499 (=> (not res!542882) (not e!773454))))

(assert (=> d!344499 (= res!542882 (= (content!1709 lt!412222) (set.union (content!1709 (t!112550 l!2744)) (content!1709 r!2028))))))

(assert (=> d!344499 (= lt!412222 e!773455)))

(declare-fun c!201336 () Bool)

(assert (=> d!344499 (= c!201336 (is-Nil!12110 (t!112550 l!2744)))))

(assert (=> d!344499 (= (++!3132 (t!112550 l!2744) r!2028) lt!412222)))

(assert (= (and d!344499 c!201336) b!1205585))

(assert (= (and d!344499 (not c!201336)) b!1205586))

(assert (= (and d!344499 res!542882) b!1205587))

(assert (= (and b!1205587 res!542881) b!1205588))

(declare-fun m!1380835 () Bool)

(assert (=> b!1205587 m!1380835))

(assert (=> b!1205587 m!1380753))

(assert (=> b!1205587 m!1380709))

(declare-fun m!1380837 () Bool)

(assert (=> b!1205586 m!1380837))

(declare-fun m!1380839 () Bool)

(assert (=> d!344499 m!1380839))

(assert (=> d!344499 m!1380829))

(assert (=> d!344499 m!1380767))

(assert (=> b!1205530 d!344499))

(declare-fun b!1205603 () Bool)

(declare-fun e!773464 () List!12134)

(assert (=> b!1205603 (= e!773464 (Cons!12110 (h!17511 (drop!615 (++!3132 l!2744 r!2028) from!613)) (take!143 (t!112550 (drop!615 (++!3132 l!2744 r!2028) from!613)) (- (- until!61 from!613) 1))))))

(declare-fun b!1205604 () Bool)

(declare-fun e!773467 () Bool)

(declare-fun lt!412225 () List!12134)

(declare-fun e!773466 () Int)

(assert (=> b!1205604 (= e!773467 (= (size!9650 lt!412225) e!773466))))

(declare-fun c!201345 () Bool)

(assert (=> b!1205604 (= c!201345 (<= (- until!61 from!613) 0))))

(declare-fun b!1205605 () Bool)

(assert (=> b!1205605 (= e!773466 0)))

(declare-fun b!1205606 () Bool)

(declare-fun e!773465 () Int)

(assert (=> b!1205606 (= e!773466 e!773465)))

(declare-fun c!201343 () Bool)

(assert (=> b!1205606 (= c!201343 (>= (- until!61 from!613) (size!9650 (drop!615 (++!3132 l!2744 r!2028) from!613))))))

(declare-fun b!1205607 () Bool)

(assert (=> b!1205607 (= e!773464 Nil!12110)))

(declare-fun d!344501 () Bool)

(assert (=> d!344501 e!773467))

(declare-fun res!542885 () Bool)

(assert (=> d!344501 (=> (not res!542885) (not e!773467))))

(assert (=> d!344501 (= res!542885 (set.subset (content!1709 lt!412225) (content!1709 (drop!615 (++!3132 l!2744 r!2028) from!613))))))

(assert (=> d!344501 (= lt!412225 e!773464)))

(declare-fun c!201344 () Bool)

(assert (=> d!344501 (= c!201344 (or (is-Nil!12110 (drop!615 (++!3132 l!2744 r!2028) from!613)) (<= (- until!61 from!613) 0)))))

(assert (=> d!344501 (= (take!143 (drop!615 (++!3132 l!2744 r!2028) from!613) (- until!61 from!613)) lt!412225)))

(declare-fun b!1205608 () Bool)

(assert (=> b!1205608 (= e!773465 (size!9650 (drop!615 (++!3132 l!2744 r!2028) from!613)))))

(declare-fun b!1205609 () Bool)

(assert (=> b!1205609 (= e!773465 (- until!61 from!613))))

(assert (= (and d!344501 c!201344) b!1205607))

(assert (= (and d!344501 (not c!201344)) b!1205603))

(assert (= (and d!344501 res!542885) b!1205604))

(assert (= (and b!1205604 c!201345) b!1205605))

(assert (= (and b!1205604 (not c!201345)) b!1205606))

(assert (= (and b!1205606 c!201343) b!1205608))

(assert (= (and b!1205606 (not c!201343)) b!1205609))

(declare-fun m!1380841 () Bool)

(assert (=> b!1205604 m!1380841))

(declare-fun m!1380843 () Bool)

(assert (=> b!1205603 m!1380843))

(assert (=> b!1205606 m!1380755))

(declare-fun m!1380845 () Bool)

(assert (=> b!1205606 m!1380845))

(declare-fun m!1380847 () Bool)

(assert (=> d!344501 m!1380847))

(assert (=> d!344501 m!1380755))

(declare-fun m!1380849 () Bool)

(assert (=> d!344501 m!1380849))

(assert (=> b!1205608 m!1380755))

(assert (=> b!1205608 m!1380845))

(assert (=> d!344469 d!344501))

(declare-fun b!1205628 () Bool)

(declare-fun e!773479 () List!12134)

(assert (=> b!1205628 (= e!773479 Nil!12110)))

(declare-fun b!1205629 () Bool)

(declare-fun e!773478 () Int)

(declare-fun call!84195 () Int)

(assert (=> b!1205629 (= e!773478 call!84195)))

(declare-fun b!1205630 () Bool)

(declare-fun e!773482 () Bool)

(declare-fun lt!412228 () List!12134)

(assert (=> b!1205630 (= e!773482 (= (size!9650 lt!412228) e!773478))))

(declare-fun c!201355 () Bool)

(assert (=> b!1205630 (= c!201355 (<= from!613 0))))

(declare-fun e!773480 () List!12134)

(declare-fun b!1205631 () Bool)

(assert (=> b!1205631 (= e!773480 (drop!615 (t!112550 (++!3132 l!2744 r!2028)) (- from!613 1)))))

(declare-fun b!1205632 () Bool)

(assert (=> b!1205632 (= e!773479 e!773480)))

(declare-fun c!201356 () Bool)

(assert (=> b!1205632 (= c!201356 (<= from!613 0))))

(declare-fun d!344503 () Bool)

(assert (=> d!344503 e!773482))

(declare-fun res!542888 () Bool)

(assert (=> d!344503 (=> (not res!542888) (not e!773482))))

(assert (=> d!344503 (= res!542888 (set.subset (content!1709 lt!412228) (content!1709 (++!3132 l!2744 r!2028))))))

(assert (=> d!344503 (= lt!412228 e!773479)))

(declare-fun c!201357 () Bool)

(assert (=> d!344503 (= c!201357 (is-Nil!12110 (++!3132 l!2744 r!2028)))))

(assert (=> d!344503 (= (drop!615 (++!3132 l!2744 r!2028) from!613) lt!412228)))

(declare-fun b!1205633 () Bool)

(declare-fun e!773481 () Int)

(assert (=> b!1205633 (= e!773478 e!773481)))

(declare-fun c!201354 () Bool)

(assert (=> b!1205633 (= c!201354 (>= from!613 call!84195))))

(declare-fun b!1205634 () Bool)

(assert (=> b!1205634 (= e!773481 0)))

(declare-fun b!1205635 () Bool)

(assert (=> b!1205635 (= e!773480 (++!3132 l!2744 r!2028))))

(declare-fun bm!84190 () Bool)

(assert (=> bm!84190 (= call!84195 (size!9650 (++!3132 l!2744 r!2028)))))

(declare-fun b!1205636 () Bool)

(assert (=> b!1205636 (= e!773481 (- call!84195 from!613))))

(assert (= (and d!344503 c!201357) b!1205628))

(assert (= (and d!344503 (not c!201357)) b!1205632))

(assert (= (and b!1205632 c!201356) b!1205635))

(assert (= (and b!1205632 (not c!201356)) b!1205631))

(assert (= (and d!344503 res!542888) b!1205630))

(assert (= (and b!1205630 c!201355) b!1205629))

(assert (= (and b!1205630 (not c!201355)) b!1205633))

(assert (= (and b!1205633 c!201354) b!1205634))

(assert (= (and b!1205633 (not c!201354)) b!1205636))

(assert (= (or b!1205629 b!1205633 b!1205636) bm!84190))

(declare-fun m!1380851 () Bool)

(assert (=> b!1205630 m!1380851))

(declare-fun m!1380853 () Bool)

(assert (=> b!1205631 m!1380853))

(declare-fun m!1380855 () Bool)

(assert (=> d!344503 m!1380855))

(assert (=> d!344503 m!1380705))

(declare-fun m!1380857 () Bool)

(assert (=> d!344503 m!1380857))

(assert (=> bm!84190 m!1380705))

(declare-fun m!1380859 () Bool)

(assert (=> bm!84190 m!1380859))

(assert (=> d!344469 d!344503))

(declare-fun d!344505 () Bool)

(declare-fun lt!412229 () Int)

(assert (=> d!344505 (>= lt!412229 0)))

(declare-fun e!773483 () Int)

(assert (=> d!344505 (= lt!412229 e!773483)))

(declare-fun c!201358 () Bool)

(assert (=> d!344505 (= c!201358 (is-Nil!12110 (t!112550 r!2028)))))

(assert (=> d!344505 (= (size!9650 (t!112550 r!2028)) lt!412229)))

(declare-fun b!1205637 () Bool)

(assert (=> b!1205637 (= e!773483 0)))

(declare-fun b!1205638 () Bool)

(assert (=> b!1205638 (= e!773483 (+ 1 (size!9650 (t!112550 (t!112550 r!2028)))))))

(assert (= (and d!344505 c!201358) b!1205637))

(assert (= (and d!344505 (not c!201358)) b!1205638))

(declare-fun m!1380861 () Bool)

(assert (=> b!1205638 m!1380861))

(assert (=> b!1205524 d!344505))

(declare-fun d!344507 () Bool)

(declare-fun lt!412230 () Int)

(assert (=> d!344507 (>= lt!412230 0)))

(declare-fun e!773484 () Int)

(assert (=> d!344507 (= lt!412230 e!773484)))

(declare-fun c!201359 () Bool)

(assert (=> d!344507 (= c!201359 (is-Nil!12110 lt!412207))))

(assert (=> d!344507 (= (size!9650 lt!412207) lt!412230)))

(declare-fun b!1205639 () Bool)

(assert (=> b!1205639 (= e!773484 0)))

(declare-fun b!1205640 () Bool)

(assert (=> b!1205640 (= e!773484 (+ 1 (size!9650 (t!112550 lt!412207))))))

(assert (= (and d!344507 c!201359) b!1205639))

(assert (= (and d!344507 (not c!201359)) b!1205640))

(declare-fun m!1380863 () Bool)

(assert (=> b!1205640 m!1380863))

(assert (=> b!1205517 d!344507))

(declare-fun d!344509 () Bool)

(declare-fun lt!412231 () Int)

(assert (=> d!344509 (>= lt!412231 0)))

(declare-fun e!773485 () Int)

(assert (=> d!344509 (= lt!412231 e!773485)))

(declare-fun c!201360 () Bool)

(assert (=> d!344509 (= c!201360 (is-Nil!12110 call!84185))))

(assert (=> d!344509 (= (size!9650 call!84185) lt!412231)))

(declare-fun b!1205641 () Bool)

(assert (=> b!1205641 (= e!773485 0)))

(declare-fun b!1205642 () Bool)

(assert (=> b!1205642 (= e!773485 (+ 1 (size!9650 (t!112550 call!84185))))))

(assert (= (and d!344509 c!201360) b!1205641))

(assert (= (and d!344509 (not c!201360)) b!1205642))

(declare-fun m!1380865 () Bool)

(assert (=> b!1205642 m!1380865))

(assert (=> b!1205517 d!344509))

(declare-fun d!344511 () Bool)

(declare-fun lt!412232 () Int)

(assert (=> d!344511 (>= lt!412232 0)))

(declare-fun e!773486 () Int)

(assert (=> d!344511 (= lt!412232 e!773486)))

(declare-fun c!201361 () Bool)

(assert (=> d!344511 (= c!201361 (is-Nil!12110 call!84186))))

(assert (=> d!344511 (= (size!9650 call!84186) lt!412232)))

(declare-fun b!1205643 () Bool)

(assert (=> b!1205643 (= e!773486 0)))

(declare-fun b!1205644 () Bool)

(assert (=> b!1205644 (= e!773486 (+ 1 (size!9650 (t!112550 call!84186))))))

(assert (= (and d!344511 c!201361) b!1205643))

(assert (= (and d!344511 (not c!201361)) b!1205644))

(declare-fun m!1380867 () Bool)

(assert (=> b!1205644 m!1380867))

(assert (=> b!1205517 d!344511))

(declare-fun b!1205645 () Bool)

(declare-fun e!773487 () List!12134)

(assert (=> b!1205645 (= e!773487 (Cons!12110 (h!17511 (drop!615 r!2028 (ite c!201303 (- from!613 lt!412197) 0))) (take!143 (t!112550 (drop!615 r!2028 (ite c!201303 (- from!613 lt!412197) 0))) (- (- (- until!61 lt!412197) (ite c!201303 (- from!613 lt!412197) 0)) 1))))))

(declare-fun b!1205646 () Bool)

(declare-fun e!773490 () Bool)

(declare-fun lt!412233 () List!12134)

(declare-fun e!773489 () Int)

(assert (=> b!1205646 (= e!773490 (= (size!9650 lt!412233) e!773489))))

(declare-fun c!201364 () Bool)

(assert (=> b!1205646 (= c!201364 (<= (- (- until!61 lt!412197) (ite c!201303 (- from!613 lt!412197) 0)) 0))))

(declare-fun b!1205647 () Bool)

(assert (=> b!1205647 (= e!773489 0)))

(declare-fun b!1205648 () Bool)

(declare-fun e!773488 () Int)

(assert (=> b!1205648 (= e!773489 e!773488)))

(declare-fun c!201362 () Bool)

(assert (=> b!1205648 (= c!201362 (>= (- (- until!61 lt!412197) (ite c!201303 (- from!613 lt!412197) 0)) (size!9650 (drop!615 r!2028 (ite c!201303 (- from!613 lt!412197) 0)))))))

(declare-fun b!1205649 () Bool)

(assert (=> b!1205649 (= e!773487 Nil!12110)))

(declare-fun d!344513 () Bool)

(assert (=> d!344513 e!773490))

(declare-fun res!542889 () Bool)

(assert (=> d!344513 (=> (not res!542889) (not e!773490))))

(assert (=> d!344513 (= res!542889 (set.subset (content!1709 lt!412233) (content!1709 (drop!615 r!2028 (ite c!201303 (- from!613 lt!412197) 0)))))))

(assert (=> d!344513 (= lt!412233 e!773487)))

(declare-fun c!201363 () Bool)

(assert (=> d!344513 (= c!201363 (or (is-Nil!12110 (drop!615 r!2028 (ite c!201303 (- from!613 lt!412197) 0))) (<= (- (- until!61 lt!412197) (ite c!201303 (- from!613 lt!412197) 0)) 0)))))

(assert (=> d!344513 (= (take!143 (drop!615 r!2028 (ite c!201303 (- from!613 lt!412197) 0)) (- (- until!61 lt!412197) (ite c!201303 (- from!613 lt!412197) 0))) lt!412233)))

(declare-fun b!1205650 () Bool)

(assert (=> b!1205650 (= e!773488 (size!9650 (drop!615 r!2028 (ite c!201303 (- from!613 lt!412197) 0))))))

(declare-fun b!1205651 () Bool)

(assert (=> b!1205651 (= e!773488 (- (- until!61 lt!412197) (ite c!201303 (- from!613 lt!412197) 0)))))

(assert (= (and d!344513 c!201363) b!1205649))

(assert (= (and d!344513 (not c!201363)) b!1205645))

(assert (= (and d!344513 res!542889) b!1205646))

(assert (= (and b!1205646 c!201364) b!1205647))

(assert (= (and b!1205646 (not c!201364)) b!1205648))

(assert (= (and b!1205648 c!201362) b!1205650))

(assert (= (and b!1205648 (not c!201362)) b!1205651))

(declare-fun m!1380869 () Bool)

(assert (=> b!1205646 m!1380869))

(declare-fun m!1380871 () Bool)

(assert (=> b!1205645 m!1380871))

(assert (=> b!1205648 m!1380729))

(declare-fun m!1380873 () Bool)

(assert (=> b!1205648 m!1380873))

(declare-fun m!1380875 () Bool)

(assert (=> d!344513 m!1380875))

(assert (=> d!344513 m!1380729))

(declare-fun m!1380877 () Bool)

(assert (=> d!344513 m!1380877))

(assert (=> b!1205650 m!1380729))

(assert (=> b!1205650 m!1380873))

(assert (=> d!344457 d!344513))

(declare-fun b!1205652 () Bool)

(declare-fun e!773492 () List!12134)

(assert (=> b!1205652 (= e!773492 Nil!12110)))

(declare-fun b!1205653 () Bool)

(declare-fun e!773491 () Int)

(declare-fun call!84196 () Int)

(assert (=> b!1205653 (= e!773491 call!84196)))

(declare-fun b!1205654 () Bool)

(declare-fun e!773495 () Bool)

(declare-fun lt!412234 () List!12134)

(assert (=> b!1205654 (= e!773495 (= (size!9650 lt!412234) e!773491))))

(declare-fun c!201366 () Bool)

(assert (=> b!1205654 (= c!201366 (<= (ite c!201303 (- from!613 lt!412197) 0) 0))))

(declare-fun e!773493 () List!12134)

(declare-fun b!1205655 () Bool)

(assert (=> b!1205655 (= e!773493 (drop!615 (t!112550 r!2028) (- (ite c!201303 (- from!613 lt!412197) 0) 1)))))

(declare-fun b!1205656 () Bool)

(assert (=> b!1205656 (= e!773492 e!773493)))

(declare-fun c!201367 () Bool)

(assert (=> b!1205656 (= c!201367 (<= (ite c!201303 (- from!613 lt!412197) 0) 0))))

(declare-fun d!344515 () Bool)

(assert (=> d!344515 e!773495))

(declare-fun res!542890 () Bool)

(assert (=> d!344515 (=> (not res!542890) (not e!773495))))

(assert (=> d!344515 (= res!542890 (set.subset (content!1709 lt!412234) (content!1709 r!2028)))))

(assert (=> d!344515 (= lt!412234 e!773492)))

(declare-fun c!201368 () Bool)

(assert (=> d!344515 (= c!201368 (is-Nil!12110 r!2028))))

(assert (=> d!344515 (= (drop!615 r!2028 (ite c!201303 (- from!613 lt!412197) 0)) lt!412234)))

(declare-fun b!1205657 () Bool)

(declare-fun e!773494 () Int)

(assert (=> b!1205657 (= e!773491 e!773494)))

(declare-fun c!201365 () Bool)

(assert (=> b!1205657 (= c!201365 (>= (ite c!201303 (- from!613 lt!412197) 0) call!84196))))

(declare-fun b!1205658 () Bool)

(assert (=> b!1205658 (= e!773494 0)))

(declare-fun b!1205659 () Bool)

(assert (=> b!1205659 (= e!773493 r!2028)))

(declare-fun bm!84191 () Bool)

(assert (=> bm!84191 (= call!84196 (size!9650 r!2028))))

(declare-fun b!1205660 () Bool)

(assert (=> b!1205660 (= e!773494 (- call!84196 (ite c!201303 (- from!613 lt!412197) 0)))))

(assert (= (and d!344515 c!201368) b!1205652))

(assert (= (and d!344515 (not c!201368)) b!1205656))

(assert (= (and b!1205656 c!201367) b!1205659))

(assert (= (and b!1205656 (not c!201367)) b!1205655))

(assert (= (and d!344515 res!542890) b!1205654))

(assert (= (and b!1205654 c!201366) b!1205653))

(assert (= (and b!1205654 (not c!201366)) b!1205657))

(assert (= (and b!1205657 c!201365) b!1205658))

(assert (= (and b!1205657 (not c!201365)) b!1205660))

(assert (= (or b!1205653 b!1205657 b!1205660) bm!84191))

(declare-fun m!1380879 () Bool)

(assert (=> b!1205654 m!1380879))

(declare-fun m!1380881 () Bool)

(assert (=> b!1205655 m!1380881))

(declare-fun m!1380883 () Bool)

(assert (=> d!344515 m!1380883))

(assert (=> d!344515 m!1380767))

(assert (=> bm!84191 m!1380709))

(assert (=> d!344457 d!344515))

(declare-fun b!1205663 () Bool)

(declare-fun res!542891 () Bool)

(declare-fun e!773496 () Bool)

(assert (=> b!1205663 (=> (not res!542891) (not e!773496))))

(declare-fun lt!412235 () List!12134)

(assert (=> b!1205663 (= res!542891 (= (size!9650 lt!412235) (+ (size!9650 (t!112550 call!84185)) (size!9650 call!84186))))))

(declare-fun b!1205662 () Bool)

(declare-fun e!773497 () List!12134)

(assert (=> b!1205662 (= e!773497 (Cons!12110 (h!17511 (t!112550 call!84185)) (++!3132 (t!112550 (t!112550 call!84185)) call!84186)))))

(declare-fun b!1205661 () Bool)

(assert (=> b!1205661 (= e!773497 call!84186)))

(declare-fun b!1205664 () Bool)

(assert (=> b!1205664 (= e!773496 (or (not (= call!84186 Nil!12110)) (= lt!412235 (t!112550 call!84185))))))

(declare-fun d!344517 () Bool)

(assert (=> d!344517 e!773496))

(declare-fun res!542892 () Bool)

(assert (=> d!344517 (=> (not res!542892) (not e!773496))))

(assert (=> d!344517 (= res!542892 (= (content!1709 lt!412235) (set.union (content!1709 (t!112550 call!84185)) (content!1709 call!84186))))))

(assert (=> d!344517 (= lt!412235 e!773497)))

(declare-fun c!201369 () Bool)

(assert (=> d!344517 (= c!201369 (is-Nil!12110 (t!112550 call!84185)))))

(assert (=> d!344517 (= (++!3132 (t!112550 call!84185) call!84186) lt!412235)))

(assert (= (and d!344517 c!201369) b!1205661))

(assert (= (and d!344517 (not c!201369)) b!1205662))

(assert (= (and d!344517 res!542892) b!1205663))

(assert (= (and b!1205663 res!542891) b!1205664))

(declare-fun m!1380885 () Bool)

(assert (=> b!1205663 m!1380885))

(assert (=> b!1205663 m!1380865))

(assert (=> b!1205663 m!1380741))

(declare-fun m!1380887 () Bool)

(assert (=> b!1205662 m!1380887))

(declare-fun m!1380889 () Bool)

(assert (=> d!344517 m!1380889))

(assert (=> d!344517 m!1380817))

(assert (=> d!344517 m!1380749))

(assert (=> b!1205516 d!344517))

(declare-fun d!344519 () Bool)

(declare-fun lt!412236 () Int)

(assert (=> d!344519 (>= lt!412236 0)))

(declare-fun e!773498 () Int)

(assert (=> d!344519 (= lt!412236 e!773498)))

(declare-fun c!201370 () Bool)

(assert (=> d!344519 (= c!201370 (is-Nil!12110 (t!112550 l!2744)))))

(assert (=> d!344519 (= (size!9650 (t!112550 l!2744)) lt!412236)))

(declare-fun b!1205665 () Bool)

(assert (=> b!1205665 (= e!773498 0)))

(declare-fun b!1205666 () Bool)

(assert (=> b!1205666 (= e!773498 (+ 1 (size!9650 (t!112550 (t!112550 l!2744)))))))

(assert (= (and d!344519 c!201370) b!1205665))

(assert (= (and d!344519 (not c!201370)) b!1205666))

(declare-fun m!1380891 () Bool)

(assert (=> b!1205666 m!1380891))

(assert (=> b!1205526 d!344519))

(declare-fun e!773499 () List!12134)

(declare-fun b!1205667 () Bool)

(assert (=> b!1205667 (= e!773499 (Cons!12110 (h!17511 (drop!615 l!2744 from!613)) (take!143 (t!112550 (drop!615 l!2744 from!613)) (- (- (ite c!201304 until!61 lt!412197) from!613) 1))))))

(declare-fun b!1205668 () Bool)

(declare-fun e!773502 () Bool)

(declare-fun lt!412237 () List!12134)

(declare-fun e!773501 () Int)

(assert (=> b!1205668 (= e!773502 (= (size!9650 lt!412237) e!773501))))

(declare-fun c!201373 () Bool)

(assert (=> b!1205668 (= c!201373 (<= (- (ite c!201304 until!61 lt!412197) from!613) 0))))

(declare-fun b!1205669 () Bool)

(assert (=> b!1205669 (= e!773501 0)))

(declare-fun b!1205670 () Bool)

(declare-fun e!773500 () Int)

(assert (=> b!1205670 (= e!773501 e!773500)))

(declare-fun c!201371 () Bool)

(assert (=> b!1205670 (= c!201371 (>= (- (ite c!201304 until!61 lt!412197) from!613) (size!9650 (drop!615 l!2744 from!613))))))

(declare-fun b!1205671 () Bool)

(assert (=> b!1205671 (= e!773499 Nil!12110)))

(declare-fun d!344521 () Bool)

(assert (=> d!344521 e!773502))

(declare-fun res!542893 () Bool)

(assert (=> d!344521 (=> (not res!542893) (not e!773502))))

(assert (=> d!344521 (= res!542893 (set.subset (content!1709 lt!412237) (content!1709 (drop!615 l!2744 from!613))))))

(assert (=> d!344521 (= lt!412237 e!773499)))

(declare-fun c!201372 () Bool)

(assert (=> d!344521 (= c!201372 (or (is-Nil!12110 (drop!615 l!2744 from!613)) (<= (- (ite c!201304 until!61 lt!412197) from!613) 0)))))

(assert (=> d!344521 (= (take!143 (drop!615 l!2744 from!613) (- (ite c!201304 until!61 lt!412197) from!613)) lt!412237)))

(declare-fun b!1205672 () Bool)

(assert (=> b!1205672 (= e!773500 (size!9650 (drop!615 l!2744 from!613)))))

(declare-fun b!1205673 () Bool)

(assert (=> b!1205673 (= e!773500 (- (ite c!201304 until!61 lt!412197) from!613))))

(assert (= (and d!344521 c!201372) b!1205671))

(assert (= (and d!344521 (not c!201372)) b!1205667))

(assert (= (and d!344521 res!542893) b!1205668))

(assert (= (and b!1205668 c!201373) b!1205669))

(assert (= (and b!1205668 (not c!201373)) b!1205670))

(assert (= (and b!1205670 c!201371) b!1205672))

(assert (= (and b!1205670 (not c!201371)) b!1205673))

(declare-fun m!1380893 () Bool)

(assert (=> b!1205668 m!1380893))

(declare-fun m!1380895 () Bool)

(assert (=> b!1205667 m!1380895))

(assert (=> b!1205670 m!1380733))

(declare-fun m!1380897 () Bool)

(assert (=> b!1205670 m!1380897))

(declare-fun m!1380899 () Bool)

(assert (=> d!344521 m!1380899))

(assert (=> d!344521 m!1380733))

(declare-fun m!1380901 () Bool)

(assert (=> d!344521 m!1380901))

(assert (=> b!1205672 m!1380733))

(assert (=> b!1205672 m!1380897))

(assert (=> d!344459 d!344521))

(declare-fun b!1205674 () Bool)

(declare-fun e!773504 () List!12134)

(assert (=> b!1205674 (= e!773504 Nil!12110)))

(declare-fun b!1205675 () Bool)

(declare-fun e!773503 () Int)

(declare-fun call!84197 () Int)

(assert (=> b!1205675 (= e!773503 call!84197)))

(declare-fun b!1205676 () Bool)

(declare-fun e!773507 () Bool)

(declare-fun lt!412238 () List!12134)

(assert (=> b!1205676 (= e!773507 (= (size!9650 lt!412238) e!773503))))

(declare-fun c!201375 () Bool)

(assert (=> b!1205676 (= c!201375 (<= from!613 0))))

(declare-fun b!1205677 () Bool)

(declare-fun e!773505 () List!12134)

(assert (=> b!1205677 (= e!773505 (drop!615 (t!112550 l!2744) (- from!613 1)))))

(declare-fun b!1205678 () Bool)

(assert (=> b!1205678 (= e!773504 e!773505)))

(declare-fun c!201376 () Bool)

(assert (=> b!1205678 (= c!201376 (<= from!613 0))))

(declare-fun d!344523 () Bool)

(assert (=> d!344523 e!773507))

(declare-fun res!542894 () Bool)

(assert (=> d!344523 (=> (not res!542894) (not e!773507))))

(assert (=> d!344523 (= res!542894 (set.subset (content!1709 lt!412238) (content!1709 l!2744)))))

(assert (=> d!344523 (= lt!412238 e!773504)))

(declare-fun c!201377 () Bool)

(assert (=> d!344523 (= c!201377 (is-Nil!12110 l!2744))))

(assert (=> d!344523 (= (drop!615 l!2744 from!613) lt!412238)))

(declare-fun b!1205679 () Bool)

(declare-fun e!773506 () Int)

(assert (=> b!1205679 (= e!773503 e!773506)))

(declare-fun c!201374 () Bool)

(assert (=> b!1205679 (= c!201374 (>= from!613 call!84197))))

(declare-fun b!1205680 () Bool)

(assert (=> b!1205680 (= e!773506 0)))

(declare-fun b!1205681 () Bool)

(assert (=> b!1205681 (= e!773505 l!2744)))

(declare-fun bm!84192 () Bool)

(assert (=> bm!84192 (= call!84197 (size!9650 l!2744))))

(declare-fun b!1205682 () Bool)

(assert (=> b!1205682 (= e!773506 (- call!84197 from!613))))

(assert (= (and d!344523 c!201377) b!1205674))

(assert (= (and d!344523 (not c!201377)) b!1205678))

(assert (= (and b!1205678 c!201376) b!1205681))

(assert (= (and b!1205678 (not c!201376)) b!1205677))

(assert (= (and d!344523 res!542894) b!1205676))

(assert (= (and b!1205676 c!201375) b!1205675))

(assert (= (and b!1205676 (not c!201375)) b!1205679))

(assert (= (and b!1205679 c!201374) b!1205680))

(assert (= (and b!1205679 (not c!201374)) b!1205682))

(assert (= (or b!1205675 b!1205679 b!1205682) bm!84192))

(declare-fun m!1380903 () Bool)

(assert (=> b!1205676 m!1380903))

(declare-fun m!1380905 () Bool)

(assert (=> b!1205677 m!1380905))

(declare-fun m!1380907 () Bool)

(assert (=> d!344523 m!1380907))

(assert (=> d!344523 m!1380765))

(assert (=> bm!84192 m!1380711))

(assert (=> d!344459 d!344523))

(declare-fun b!1205683 () Bool)

(declare-fun e!773508 () Bool)

(declare-fun tp!341998 () Bool)

(assert (=> b!1205683 (= e!773508 (and tp_is_empty!6113 tp!341998))))

(assert (=> b!1205539 (= tp!341992 e!773508)))

(assert (= (and b!1205539 (is-Cons!12110 (t!112550 (t!112550 l!2744)))) b!1205683))

(declare-fun b!1205684 () Bool)

(declare-fun e!773509 () Bool)

(declare-fun tp!341999 () Bool)

(assert (=> b!1205684 (= e!773509 (and tp_is_empty!6113 tp!341999))))

(assert (=> b!1205540 (= tp!341993 e!773509)))

(assert (= (and b!1205540 (is-Cons!12110 (t!112550 (t!112550 r!2028)))) b!1205684))

(push 1)

(assert (not bm!84191))

(assert (not b!1205663))

(assert (not b!1205666))

(assert (not d!344501))

(assert (not bm!84190))

(assert (not b!1205630))

(assert (not b!1205584))

(assert (not b!1205604))

(assert (not d!344499))

(assert (not d!344521))

(assert (not b!1205582))

(assert (not b!1205606))

(assert (not b!1205578))

(assert (not d!344503))

(assert (not b!1205646))

(assert (not b!1205648))

(assert (not b!1205580))

(assert (not b!1205655))

(assert (not b!1205642))

(assert (not b!1205638))

(assert (not b!1205667))

(assert (not b!1205683))

(assert (not d!344523))

(assert (not b!1205662))

(assert (not b!1205603))

(assert (not b!1205587))

(assert (not b!1205684))

(assert (not b!1205650))

(assert (not b!1205672))

(assert (not d!344513))

(assert (not b!1205644))

(assert (not b!1205576))

(assert (not b!1205631))

(assert (not b!1205586))

(assert (not d!344515))

(assert (not b!1205677))

(assert (not b!1205670))

(assert (not b!1205608))

(assert (not d!344517))

(assert (not b!1205574))

(assert (not b!1205645))

(assert (not b!1205640))

(assert (not b!1205568))

(assert (not b!1205654))

(assert (not bm!84192))

(assert (not b!1205676))

(assert (not b!1205668))

(assert tp_is_empty!6113)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

