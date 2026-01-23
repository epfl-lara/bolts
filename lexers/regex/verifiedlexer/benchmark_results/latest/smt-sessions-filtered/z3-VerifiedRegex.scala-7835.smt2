; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411224 () Bool)

(assert start!411224)

(declare-fun b!4280723 () Bool)

(declare-fun e!2657518 () Bool)

(declare-fun tp!1309347 () Bool)

(assert (=> b!4280723 (= e!2657518 tp!1309347)))

(declare-fun b!4280725 () Bool)

(declare-fun e!2657516 () Bool)

(declare-fun tp_is_empty!22997 () Bool)

(declare-fun tp!1309348 () Bool)

(assert (=> b!4280725 (= e!2657516 (and tp_is_empty!22997 tp!1309348))))

(declare-fun b!4280724 () Bool)

(declare-fun e!2657517 () Bool)

(declare-fun e!2657519 () Bool)

(assert (=> b!4280724 (= e!2657517 e!2657519)))

(declare-fun res!1757115 () Bool)

(assert (=> b!4280724 (=> (not res!1757115) (not e!2657519))))

(declare-datatypes ((T!80144 0))(
  ( (T!80145 (val!15294 Int)) )
))
(declare-datatypes ((List!47503 0))(
  ( (Nil!47379) (Cons!47379 (h!52799 T!80144) (t!354090 List!47503)) )
))
(declare-fun acc!244 () List!47503)

(declare-fun lt!1514973 () List!47503)

(declare-fun i!561 () Int)

(declare-fun drop!2161 (List!47503 Int) List!47503)

(assert (=> b!4280724 (= res!1757115 (= acc!244 (drop!2161 lt!1514973 i!561)))))

(declare-datatypes ((IArray!28727 0))(
  ( (IArray!28728 (innerList!14421 List!47503)) )
))
(declare-fun arr!11 () IArray!28727)

(declare-fun list!17301 (IArray!28727) List!47503)

(assert (=> b!4280724 (= lt!1514973 (list!17301 arr!11))))

(declare-fun res!1757113 () Bool)

(assert (=> start!411224 (=> (not res!1757113) (not e!2657517))))

(assert (=> start!411224 (= res!1757113 (<= 0 i!561))))

(assert (=> start!411224 e!2657517))

(assert (=> start!411224 true))

(declare-fun inv!62785 (IArray!28727) Bool)

(assert (=> start!411224 (and (inv!62785 arr!11) e!2657518)))

(assert (=> start!411224 e!2657516))

(declare-fun b!4280726 () Bool)

(assert (=> b!4280726 (= e!2657519 (and (<= i!561 0) (not (= acc!244 lt!1514973))))))

(declare-fun b!4280727 () Bool)

(declare-fun res!1757114 () Bool)

(assert (=> b!4280727 (=> (not res!1757114) (not e!2657517))))

(declare-fun size!34707 (IArray!28727) Int)

(assert (=> b!4280727 (= res!1757114 (<= i!561 (size!34707 arr!11)))))

(assert (= (and start!411224 res!1757113) b!4280727))

(assert (= (and b!4280727 res!1757114) b!4280724))

(assert (= (and b!4280724 res!1757115) b!4280726))

(assert (= start!411224 b!4280723))

(get-info :version)

(assert (= (and start!411224 ((_ is Cons!47379) acc!244)) b!4280725))

(declare-fun m!4878463 () Bool)

(assert (=> b!4280724 m!4878463))

(declare-fun m!4878465 () Bool)

(assert (=> b!4280724 m!4878465))

(declare-fun m!4878467 () Bool)

(assert (=> start!411224 m!4878467))

(declare-fun m!4878469 () Bool)

(assert (=> b!4280727 m!4878469))

(check-sat tp_is_empty!22997 (not b!4280723) (not start!411224) (not b!4280725) (not b!4280727) (not b!4280724))
(check-sat)
(get-model)

(declare-fun b!4280773 () Bool)

(declare-fun e!2657545 () Int)

(declare-fun e!2657548 () Int)

(assert (=> b!4280773 (= e!2657545 e!2657548)))

(declare-fun c!729498 () Bool)

(declare-fun call!294329 () Int)

(assert (=> b!4280773 (= c!729498 (>= i!561 call!294329))))

(declare-fun d!1264574 () Bool)

(declare-fun e!2657549 () Bool)

(assert (=> d!1264574 e!2657549))

(declare-fun res!1757121 () Bool)

(assert (=> d!1264574 (=> (not res!1757121) (not e!2657549))))

(declare-fun lt!1514979 () List!47503)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7498 (List!47503) (InoxSet T!80144))

(assert (=> d!1264574 (= res!1757121 (= ((_ map implies) (content!7498 lt!1514979) (content!7498 lt!1514973)) ((as const (InoxSet T!80144)) true)))))

(declare-fun e!2657546 () List!47503)

(assert (=> d!1264574 (= lt!1514979 e!2657546)))

(declare-fun c!729497 () Bool)

(assert (=> d!1264574 (= c!729497 ((_ is Nil!47379) lt!1514973))))

(assert (=> d!1264574 (= (drop!2161 lt!1514973 i!561) lt!1514979)))

(declare-fun b!4280774 () Bool)

(assert (=> b!4280774 (= e!2657548 (- call!294329 i!561))))

(declare-fun b!4280775 () Bool)

(assert (=> b!4280775 (= e!2657545 call!294329)))

(declare-fun b!4280776 () Bool)

(declare-fun size!34709 (List!47503) Int)

(assert (=> b!4280776 (= e!2657549 (= (size!34709 lt!1514979) e!2657545))))

(declare-fun c!729496 () Bool)

(assert (=> b!4280776 (= c!729496 (<= i!561 0))))

(declare-fun b!4280777 () Bool)

(declare-fun e!2657547 () List!47503)

(assert (=> b!4280777 (= e!2657546 e!2657547)))

(declare-fun c!729495 () Bool)

(assert (=> b!4280777 (= c!729495 (<= i!561 0))))

(declare-fun b!4280778 () Bool)

(assert (=> b!4280778 (= e!2657548 0)))

(declare-fun b!4280779 () Bool)

(assert (=> b!4280779 (= e!2657547 lt!1514973)))

(declare-fun b!4280780 () Bool)

(assert (=> b!4280780 (= e!2657547 (drop!2161 (t!354090 lt!1514973) (- i!561 1)))))

(declare-fun b!4280781 () Bool)

(assert (=> b!4280781 (= e!2657546 Nil!47379)))

(declare-fun bm!294324 () Bool)

(assert (=> bm!294324 (= call!294329 (size!34709 lt!1514973))))

(assert (= (and d!1264574 c!729497) b!4280781))

(assert (= (and d!1264574 (not c!729497)) b!4280777))

(assert (= (and b!4280777 c!729495) b!4280779))

(assert (= (and b!4280777 (not c!729495)) b!4280780))

(assert (= (and d!1264574 res!1757121) b!4280776))

(assert (= (and b!4280776 c!729496) b!4280775))

(assert (= (and b!4280776 (not c!729496)) b!4280773))

(assert (= (and b!4280773 c!729498) b!4280778))

(assert (= (and b!4280773 (not c!729498)) b!4280774))

(assert (= (or b!4280775 b!4280773 b!4280774) bm!294324))

(declare-fun m!4878481 () Bool)

(assert (=> d!1264574 m!4878481))

(declare-fun m!4878483 () Bool)

(assert (=> d!1264574 m!4878483))

(declare-fun m!4878485 () Bool)

(assert (=> b!4280776 m!4878485))

(declare-fun m!4878487 () Bool)

(assert (=> b!4280780 m!4878487))

(declare-fun m!4878489 () Bool)

(assert (=> bm!294324 m!4878489))

(assert (=> b!4280724 d!1264574))

(declare-fun d!1264580 () Bool)

(assert (=> d!1264580 (= (list!17301 arr!11) (innerList!14421 arr!11))))

(assert (=> b!4280724 d!1264580))

(declare-fun d!1264582 () Bool)

(assert (=> d!1264582 (= (inv!62785 arr!11) (<= (size!34709 (innerList!14421 arr!11)) 2147483647))))

(declare-fun bs!602720 () Bool)

(assert (= bs!602720 d!1264582))

(declare-fun m!4878495 () Bool)

(assert (=> bs!602720 m!4878495))

(assert (=> start!411224 d!1264582))

(declare-fun d!1264586 () Bool)

(declare-fun lt!1514985 () Int)

(assert (=> d!1264586 (= lt!1514985 (size!34709 (list!17301 arr!11)))))

(declare-fun choose!26108 (IArray!28727) Int)

(assert (=> d!1264586 (= lt!1514985 (choose!26108 arr!11))))

(assert (=> d!1264586 (= (size!34707 arr!11) lt!1514985)))

(declare-fun bs!602722 () Bool)

(assert (= bs!602722 d!1264586))

(assert (=> bs!602722 m!4878465))

(assert (=> bs!602722 m!4878465))

(declare-fun m!4878499 () Bool)

(assert (=> bs!602722 m!4878499))

(declare-fun m!4878501 () Bool)

(assert (=> bs!602722 m!4878501))

(assert (=> b!4280727 d!1264586))

(declare-fun b!4280792 () Bool)

(declare-fun e!2657556 () Bool)

(declare-fun tp!1309355 () Bool)

(assert (=> b!4280792 (= e!2657556 (and tp_is_empty!22997 tp!1309355))))

(assert (=> b!4280723 (= tp!1309347 e!2657556)))

(assert (= (and b!4280723 ((_ is Cons!47379) (innerList!14421 arr!11))) b!4280792))

(declare-fun b!4280793 () Bool)

(declare-fun e!2657557 () Bool)

(declare-fun tp!1309356 () Bool)

(assert (=> b!4280793 (= e!2657557 (and tp_is_empty!22997 tp!1309356))))

(assert (=> b!4280725 (= tp!1309348 e!2657557)))

(assert (= (and b!4280725 ((_ is Cons!47379) (t!354090 acc!244))) b!4280793))

(check-sat tp_is_empty!22997 (not d!1264574) (not d!1264582) (not b!4280792) (not b!4280793) (not d!1264586) (not b!4280780) (not bm!294324) (not b!4280776))
(check-sat)
