; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534070 () Bool)

(assert start!534070)

(declare-fun res!2150577 () Bool)

(declare-fun e!3152680 () Bool)

(assert (=> start!534070 (=> (not res!2150577) (not e!3152680))))

(declare-fun i!658 () Int)

(assert (=> start!534070 (= res!2150577 (<= 0 i!658))))

(assert (=> start!534070 e!3152680))

(assert (=> start!534070 true))

(declare-fun e!3152679 () Bool)

(assert (=> start!534070 e!3152679))

(declare-fun b!5049437 () Bool)

(declare-fun e!3152677 () Bool)

(declare-fun e!3152678 () Bool)

(assert (=> b!5049437 (= e!3152677 e!3152678)))

(declare-fun res!2150579 () Bool)

(assert (=> b!5049437 (=> (not res!2150579) (not e!3152678))))

(declare-fun lt!2086347 () Int)

(assert (=> b!5049437 (= res!2150579 (<= (- i!658 1) lt!2086347))))

(declare-datatypes ((T!104586 0))(
  ( (T!104587 (val!23572 Int)) )
))
(declare-datatypes ((List!58482 0))(
  ( (Nil!58358) (Cons!58358 (h!64806 T!104586) (t!371121 List!58482)) )
))
(declare-fun l!2763 () List!58482)

(declare-fun size!38983 (List!58482) Int)

(assert (=> b!5049437 (= lt!2086347 (size!38983 (t!371121 l!2763)))))

(declare-fun lt!2086348 () Int)

(declare-fun b!5049438 () Bool)

(declare-fun drop!2678 (List!58482 Int) List!58482)

(declare-fun slice!895 (List!58482 Int Int) List!58482)

(assert (=> b!5049438 (= e!3152678 (not (= (drop!2678 l!2763 i!658) (slice!895 l!2763 i!658 lt!2086348))))))

(assert (=> b!5049438 (= (drop!2678 (t!371121 l!2763) (- i!658 1)) (slice!895 (t!371121 l!2763) (- i!658 1) lt!2086347))))

(declare-datatypes ((Unit!149555 0))(
  ( (Unit!149556) )
))
(declare-fun lt!2086349 () Unit!149555)

(declare-fun dropLemma!84 (List!58482 Int) Unit!149555)

(assert (=> b!5049438 (= lt!2086349 (dropLemma!84 (t!371121 l!2763) (- i!658 1)))))

(declare-fun b!5049439 () Bool)

(declare-fun tp_is_empty!36899 () Bool)

(declare-fun tp!1412061 () Bool)

(assert (=> b!5049439 (= e!3152679 (and tp_is_empty!36899 tp!1412061))))

(declare-fun b!5049436 () Bool)

(assert (=> b!5049436 (= e!3152680 e!3152677)))

(declare-fun res!2150578 () Bool)

(assert (=> b!5049436 (=> (not res!2150578) (not e!3152677))))

(get-info :version)

(assert (=> b!5049436 (= res!2150578 (and (<= i!658 lt!2086348) (not ((_ is Nil!58358) l!2763)) (not (= i!658 0)) (<= 0 (- i!658 1))))))

(assert (=> b!5049436 (= lt!2086348 (size!38983 l!2763))))

(assert (= (and start!534070 res!2150577) b!5049436))

(assert (= (and b!5049436 res!2150578) b!5049437))

(assert (= (and b!5049437 res!2150579) b!5049438))

(assert (= (and start!534070 ((_ is Cons!58358) l!2763)) b!5049439))

(declare-fun m!6084224 () Bool)

(assert (=> b!5049437 m!6084224))

(declare-fun m!6084226 () Bool)

(assert (=> b!5049438 m!6084226))

(declare-fun m!6084228 () Bool)

(assert (=> b!5049438 m!6084228))

(declare-fun m!6084230 () Bool)

(assert (=> b!5049438 m!6084230))

(declare-fun m!6084232 () Bool)

(assert (=> b!5049438 m!6084232))

(declare-fun m!6084234 () Bool)

(assert (=> b!5049438 m!6084234))

(declare-fun m!6084236 () Bool)

(assert (=> b!5049436 m!6084236))

(check-sat (not b!5049438) tp_is_empty!36899 (not b!5049439) (not b!5049437) (not b!5049436))
(check-sat)
(get-model)

(declare-fun d!1624811 () Bool)

(declare-fun lt!2086352 () Int)

(assert (=> d!1624811 (>= lt!2086352 0)))

(declare-fun e!3152683 () Int)

(assert (=> d!1624811 (= lt!2086352 e!3152683)))

(declare-fun c!865966 () Bool)

(assert (=> d!1624811 (= c!865966 ((_ is Nil!58358) (t!371121 l!2763)))))

(assert (=> d!1624811 (= (size!38983 (t!371121 l!2763)) lt!2086352)))

(declare-fun b!5049444 () Bool)

(assert (=> b!5049444 (= e!3152683 0)))

(declare-fun b!5049445 () Bool)

(assert (=> b!5049445 (= e!3152683 (+ 1 (size!38983 (t!371121 (t!371121 l!2763)))))))

(assert (= (and d!1624811 c!865966) b!5049444))

(assert (= (and d!1624811 (not c!865966)) b!5049445))

(declare-fun m!6084240 () Bool)

(assert (=> b!5049445 m!6084240))

(assert (=> b!5049437 d!1624811))

(declare-fun d!1624815 () Bool)

(declare-fun take!865 (List!58482 Int) List!58482)

(assert (=> d!1624815 (= (slice!895 l!2763 i!658 lt!2086348) (take!865 (drop!2678 l!2763 i!658) (- lt!2086348 i!658)))))

(declare-fun bs!1189221 () Bool)

(assert (= bs!1189221 d!1624815))

(assert (=> bs!1189221 m!6084226))

(assert (=> bs!1189221 m!6084226))

(declare-fun m!6084242 () Bool)

(assert (=> bs!1189221 m!6084242))

(assert (=> b!5049438 d!1624815))

(declare-fun d!1624817 () Bool)

(assert (=> d!1624817 (= (slice!895 (t!371121 l!2763) (- i!658 1) lt!2086347) (take!865 (drop!2678 (t!371121 l!2763) (- i!658 1)) (- lt!2086347 (- i!658 1))))))

(declare-fun bs!1189222 () Bool)

(assert (= bs!1189222 d!1624817))

(assert (=> bs!1189222 m!6084234))

(assert (=> bs!1189222 m!6084234))

(declare-fun m!6084244 () Bool)

(assert (=> bs!1189222 m!6084244))

(assert (=> b!5049438 d!1624817))

(declare-fun b!5049491 () Bool)

(declare-fun e!3152710 () Int)

(assert (=> b!5049491 (= e!3152710 0)))

(declare-fun b!5049492 () Bool)

(declare-fun e!3152714 () Int)

(declare-fun call!351931 () Int)

(assert (=> b!5049492 (= e!3152714 call!351931)))

(declare-fun b!5049493 () Bool)

(declare-fun e!3152709 () List!58482)

(declare-fun e!3152715 () List!58482)

(assert (=> b!5049493 (= e!3152709 e!3152715)))

(declare-fun c!865989 () Bool)

(assert (=> b!5049493 (= c!865989 (<= i!658 0))))

(declare-fun b!5049494 () Bool)

(assert (=> b!5049494 (= e!3152714 e!3152710)))

(declare-fun c!865990 () Bool)

(assert (=> b!5049494 (= c!865990 (>= i!658 call!351931))))

(declare-fun bm!351926 () Bool)

(assert (=> bm!351926 (= call!351931 (size!38983 l!2763))))

(declare-fun d!1624819 () Bool)

(declare-fun e!3152711 () Bool)

(assert (=> d!1624819 e!3152711))

(declare-fun res!2150587 () Bool)

(assert (=> d!1624819 (=> (not res!2150587) (not e!3152711))))

(declare-fun lt!2086358 () List!58482)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10380 (List!58482) (InoxSet T!104586))

(assert (=> d!1624819 (= res!2150587 (= ((_ map implies) (content!10380 lt!2086358) (content!10380 l!2763)) ((as const (InoxSet T!104586)) true)))))

(assert (=> d!1624819 (= lt!2086358 e!3152709)))

(declare-fun c!865988 () Bool)

(assert (=> d!1624819 (= c!865988 ((_ is Nil!58358) l!2763))))

(assert (=> d!1624819 (= (drop!2678 l!2763 i!658) lt!2086358)))

(declare-fun b!5049495 () Bool)

(assert (=> b!5049495 (= e!3152715 l!2763)))

(declare-fun b!5049498 () Bool)

(assert (=> b!5049498 (= e!3152710 (- call!351931 i!658))))

(declare-fun b!5049499 () Bool)

(assert (=> b!5049499 (= e!3152711 (= (size!38983 lt!2086358) e!3152714))))

(declare-fun c!865987 () Bool)

(assert (=> b!5049499 (= c!865987 (<= i!658 0))))

(declare-fun b!5049500 () Bool)

(assert (=> b!5049500 (= e!3152709 Nil!58358)))

(declare-fun b!5049501 () Bool)

(assert (=> b!5049501 (= e!3152715 (drop!2678 (t!371121 l!2763) (- i!658 1)))))

(assert (= (and d!1624819 c!865988) b!5049500))

(assert (= (and d!1624819 (not c!865988)) b!5049493))

(assert (= (and b!5049493 c!865989) b!5049495))

(assert (= (and b!5049493 (not c!865989)) b!5049501))

(assert (= (and d!1624819 res!2150587) b!5049499))

(assert (= (and b!5049499 c!865987) b!5049492))

(assert (= (and b!5049499 (not c!865987)) b!5049494))

(assert (= (and b!5049494 c!865990) b!5049491))

(assert (= (and b!5049494 (not c!865990)) b!5049498))

(assert (= (or b!5049492 b!5049494 b!5049498) bm!351926))

(assert (=> bm!351926 m!6084236))

(declare-fun m!6084254 () Bool)

(assert (=> d!1624819 m!6084254))

(declare-fun m!6084256 () Bool)

(assert (=> d!1624819 m!6084256))

(declare-fun m!6084258 () Bool)

(assert (=> b!5049499 m!6084258))

(assert (=> b!5049501 m!6084234))

(assert (=> b!5049438 d!1624819))

(declare-fun d!1624825 () Bool)

(assert (=> d!1624825 (= (drop!2678 (t!371121 l!2763) (- i!658 1)) (slice!895 (t!371121 l!2763) (- i!658 1) (size!38983 (t!371121 l!2763))))))

(declare-fun lt!2086367 () Unit!149555)

(declare-fun choose!37282 (List!58482 Int) Unit!149555)

(assert (=> d!1624825 (= lt!2086367 (choose!37282 (t!371121 l!2763) (- i!658 1)))))

(declare-fun e!3152726 () Bool)

(assert (=> d!1624825 e!3152726))

(declare-fun res!2150592 () Bool)

(assert (=> d!1624825 (=> (not res!2150592) (not e!3152726))))

(assert (=> d!1624825 (= res!2150592 (<= 0 (- i!658 1)))))

(assert (=> d!1624825 (= (dropLemma!84 (t!371121 l!2763) (- i!658 1)) lt!2086367)))

(declare-fun b!5049518 () Bool)

(assert (=> b!5049518 (= e!3152726 (<= (- i!658 1) (size!38983 (t!371121 l!2763))))))

(assert (= (and d!1624825 res!2150592) b!5049518))

(assert (=> d!1624825 m!6084234))

(assert (=> d!1624825 m!6084224))

(assert (=> d!1624825 m!6084224))

(declare-fun m!6084274 () Bool)

(assert (=> d!1624825 m!6084274))

(declare-fun m!6084276 () Bool)

(assert (=> d!1624825 m!6084276))

(assert (=> b!5049518 m!6084224))

(assert (=> b!5049438 d!1624825))

(declare-fun b!5049523 () Bool)

(declare-fun e!3152730 () Int)

(assert (=> b!5049523 (= e!3152730 0)))

(declare-fun b!5049524 () Bool)

(declare-fun e!3152732 () Int)

(declare-fun call!351933 () Int)

(assert (=> b!5049524 (= e!3152732 call!351933)))

(declare-fun b!5049525 () Bool)

(declare-fun e!3152729 () List!58482)

(declare-fun e!3152733 () List!58482)

(assert (=> b!5049525 (= e!3152729 e!3152733)))

(declare-fun c!866001 () Bool)

(assert (=> b!5049525 (= c!866001 (<= (- i!658 1) 0))))

(declare-fun b!5049526 () Bool)

(assert (=> b!5049526 (= e!3152732 e!3152730)))

(declare-fun c!866002 () Bool)

(assert (=> b!5049526 (= c!866002 (>= (- i!658 1) call!351933))))

(declare-fun bm!351928 () Bool)

(assert (=> bm!351928 (= call!351933 (size!38983 (t!371121 l!2763)))))

(declare-fun d!1624833 () Bool)

(declare-fun e!3152731 () Bool)

(assert (=> d!1624833 e!3152731))

(declare-fun res!2150593 () Bool)

(assert (=> d!1624833 (=> (not res!2150593) (not e!3152731))))

(declare-fun lt!2086370 () List!58482)

(assert (=> d!1624833 (= res!2150593 (= ((_ map implies) (content!10380 lt!2086370) (content!10380 (t!371121 l!2763))) ((as const (InoxSet T!104586)) true)))))

(assert (=> d!1624833 (= lt!2086370 e!3152729)))

(declare-fun c!866000 () Bool)

(assert (=> d!1624833 (= c!866000 ((_ is Nil!58358) (t!371121 l!2763)))))

(assert (=> d!1624833 (= (drop!2678 (t!371121 l!2763) (- i!658 1)) lt!2086370)))

(declare-fun b!5049527 () Bool)

(assert (=> b!5049527 (= e!3152733 (t!371121 l!2763))))

(declare-fun b!5049528 () Bool)

(assert (=> b!5049528 (= e!3152730 (- call!351933 (- i!658 1)))))

(declare-fun b!5049529 () Bool)

(assert (=> b!5049529 (= e!3152731 (= (size!38983 lt!2086370) e!3152732))))

(declare-fun c!865999 () Bool)

(assert (=> b!5049529 (= c!865999 (<= (- i!658 1) 0))))

(declare-fun b!5049530 () Bool)

(assert (=> b!5049530 (= e!3152729 Nil!58358)))

(declare-fun b!5049531 () Bool)

(assert (=> b!5049531 (= e!3152733 (drop!2678 (t!371121 (t!371121 l!2763)) (- (- i!658 1) 1)))))

(assert (= (and d!1624833 c!866000) b!5049530))

(assert (= (and d!1624833 (not c!866000)) b!5049525))

(assert (= (and b!5049525 c!866001) b!5049527))

(assert (= (and b!5049525 (not c!866001)) b!5049531))

(assert (= (and d!1624833 res!2150593) b!5049529))

(assert (= (and b!5049529 c!865999) b!5049524))

(assert (= (and b!5049529 (not c!865999)) b!5049526))

(assert (= (and b!5049526 c!866002) b!5049523))

(assert (= (and b!5049526 (not c!866002)) b!5049528))

(assert (= (or b!5049524 b!5049526 b!5049528) bm!351928))

(assert (=> bm!351928 m!6084224))

(declare-fun m!6084278 () Bool)

(assert (=> d!1624833 m!6084278))

(declare-fun m!6084280 () Bool)

(assert (=> d!1624833 m!6084280))

(declare-fun m!6084282 () Bool)

(assert (=> b!5049529 m!6084282))

(declare-fun m!6084284 () Bool)

(assert (=> b!5049531 m!6084284))

(assert (=> b!5049438 d!1624833))

(declare-fun d!1624835 () Bool)

(declare-fun lt!2086371 () Int)

(assert (=> d!1624835 (>= lt!2086371 0)))

(declare-fun e!3152737 () Int)

(assert (=> d!1624835 (= lt!2086371 e!3152737)))

(declare-fun c!866003 () Bool)

(assert (=> d!1624835 (= c!866003 ((_ is Nil!58358) l!2763))))

(assert (=> d!1624835 (= (size!38983 l!2763) lt!2086371)))

(declare-fun b!5049537 () Bool)

(assert (=> b!5049537 (= e!3152737 0)))

(declare-fun b!5049538 () Bool)

(assert (=> b!5049538 (= e!3152737 (+ 1 (size!38983 (t!371121 l!2763))))))

(assert (= (and d!1624835 c!866003) b!5049537))

(assert (= (and d!1624835 (not c!866003)) b!5049538))

(assert (=> b!5049538 m!6084224))

(assert (=> b!5049436 d!1624835))

(declare-fun b!5049543 () Bool)

(declare-fun e!3152740 () Bool)

(declare-fun tp!1412067 () Bool)

(assert (=> b!5049543 (= e!3152740 (and tp_is_empty!36899 tp!1412067))))

(assert (=> b!5049439 (= tp!1412061 e!3152740)))

(assert (= (and b!5049439 ((_ is Cons!58358) (t!371121 l!2763))) b!5049543))

(check-sat (not d!1624817) (not bm!351926) (not d!1624815) (not d!1624825) (not b!5049501) (not b!5049499) (not b!5049543) (not b!5049445) (not b!5049531) (not bm!351928) (not d!1624833) (not b!5049529) (not b!5049538) tp_is_empty!36899 (not b!5049518) (not d!1624819))
(check-sat)
