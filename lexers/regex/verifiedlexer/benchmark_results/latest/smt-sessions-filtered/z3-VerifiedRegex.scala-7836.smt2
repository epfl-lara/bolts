; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411244 () Bool)

(assert start!411244)

(declare-fun b!4280829 () Bool)

(declare-fun res!1757147 () Bool)

(declare-fun e!2657585 () Bool)

(assert (=> b!4280829 (=> (not res!1757147) (not e!2657585))))

(declare-fun i!561 () Int)

(assert (=> b!4280829 (= res!1757147 (> i!561 0))))

(declare-fun b!4280830 () Bool)

(declare-fun e!2657587 () Bool)

(declare-fun tp_is_empty!23001 () Bool)

(declare-fun tp!1309367 () Bool)

(assert (=> b!4280830 (= e!2657587 (and tp_is_empty!23001 tp!1309367))))

(declare-fun b!4280831 () Bool)

(declare-fun e!2657584 () Bool)

(assert (=> b!4280831 (= e!2657585 e!2657584)))

(declare-fun res!1757151 () Bool)

(assert (=> b!4280831 (=> res!1757151 e!2657584)))

(assert (=> b!4280831 (= res!1757151 (< (- i!561 1) 0))))

(declare-fun b!4280832 () Bool)

(declare-fun e!2657583 () Bool)

(assert (=> b!4280832 (= e!2657583 e!2657585)))

(declare-fun res!1757148 () Bool)

(assert (=> b!4280832 (=> (not res!1757148) (not e!2657585))))

(declare-datatypes ((T!80158 0))(
  ( (T!80159 (val!15296 Int)) )
))
(declare-datatypes ((List!47505 0))(
  ( (Nil!47381) (Cons!47381 (h!52801 T!80158) (t!354092 List!47505)) )
))
(declare-fun lt!1514991 () List!47505)

(declare-fun acc!244 () List!47505)

(declare-fun drop!2163 (List!47505 Int) List!47505)

(assert (=> b!4280832 (= res!1757148 (= acc!244 (drop!2163 lt!1514991 i!561)))))

(declare-datatypes ((IArray!28731 0))(
  ( (IArray!28732 (innerList!14423 List!47505)) )
))
(declare-fun arr!11 () IArray!28731)

(declare-fun list!17303 (IArray!28731) List!47505)

(assert (=> b!4280832 (= lt!1514991 (list!17303 arr!11))))

(declare-fun b!4280833 () Bool)

(declare-fun res!1757149 () Bool)

(assert (=> b!4280833 (=> (not res!1757149) (not e!2657583))))

(declare-fun size!34712 (IArray!28731) Int)

(assert (=> b!4280833 (= res!1757149 (<= i!561 (size!34712 arr!11)))))

(declare-fun b!4280834 () Bool)

(declare-fun e!2657586 () Bool)

(declare-fun tp!1309368 () Bool)

(assert (=> b!4280834 (= e!2657586 tp!1309368)))

(declare-fun res!1757150 () Bool)

(assert (=> start!411244 (=> (not res!1757150) (not e!2657583))))

(assert (=> start!411244 (= res!1757150 (<= 0 i!561))))

(assert (=> start!411244 e!2657583))

(assert (=> start!411244 true))

(declare-fun inv!62790 (IArray!28731) Bool)

(assert (=> start!411244 (and (inv!62790 arr!11) e!2657586)))

(assert (=> start!411244 e!2657587))

(declare-fun b!4280835 () Bool)

(declare-fun size!34713 (List!47505) Int)

(assert (=> b!4280835 (= e!2657584 (>= (- i!561 1) (size!34713 lt!1514991)))))

(assert (= (and start!411244 res!1757150) b!4280833))

(assert (= (and b!4280833 res!1757149) b!4280832))

(assert (= (and b!4280832 res!1757148) b!4280829))

(assert (= (and b!4280829 res!1757147) b!4280831))

(assert (= (and b!4280831 (not res!1757151)) b!4280835))

(assert (= start!411244 b!4280834))

(get-info :version)

(assert (= (and start!411244 ((_ is Cons!47381) acc!244)) b!4280830))

(declare-fun m!4878513 () Bool)

(assert (=> b!4280832 m!4878513))

(declare-fun m!4878515 () Bool)

(assert (=> b!4280832 m!4878515))

(declare-fun m!4878517 () Bool)

(assert (=> b!4280833 m!4878517))

(declare-fun m!4878519 () Bool)

(assert (=> start!411244 m!4878519))

(declare-fun m!4878521 () Bool)

(assert (=> b!4280835 m!4878521))

(check-sat tp_is_empty!23001 (not b!4280835) (not b!4280834) (not b!4280832) (not b!4280830) (not b!4280833) (not start!411244))
(check-sat)
(get-model)

(declare-fun d!1264589 () Bool)

(declare-fun lt!1514994 () Int)

(assert (=> d!1264589 (>= lt!1514994 0)))

(declare-fun e!2657590 () Int)

(assert (=> d!1264589 (= lt!1514994 e!2657590)))

(declare-fun c!729501 () Bool)

(assert (=> d!1264589 (= c!729501 ((_ is Nil!47381) lt!1514991))))

(assert (=> d!1264589 (= (size!34713 lt!1514991) lt!1514994)))

(declare-fun b!4280840 () Bool)

(assert (=> b!4280840 (= e!2657590 0)))

(declare-fun b!4280841 () Bool)

(assert (=> b!4280841 (= e!2657590 (+ 1 (size!34713 (t!354092 lt!1514991))))))

(assert (= (and d!1264589 c!729501) b!4280840))

(assert (= (and d!1264589 (not c!729501)) b!4280841))

(declare-fun m!4878523 () Bool)

(assert (=> b!4280841 m!4878523))

(assert (=> b!4280835 d!1264589))

(declare-fun d!1264593 () Bool)

(declare-fun lt!1514999 () Int)

(assert (=> d!1264593 (= lt!1514999 (size!34713 (list!17303 arr!11)))))

(declare-fun choose!26109 (IArray!28731) Int)

(assert (=> d!1264593 (= lt!1514999 (choose!26109 arr!11))))

(assert (=> d!1264593 (= (size!34712 arr!11) lt!1514999)))

(declare-fun bs!602725 () Bool)

(assert (= bs!602725 d!1264593))

(assert (=> bs!602725 m!4878515))

(assert (=> bs!602725 m!4878515))

(declare-fun m!4878525 () Bool)

(assert (=> bs!602725 m!4878525))

(declare-fun m!4878527 () Bool)

(assert (=> bs!602725 m!4878527))

(assert (=> b!4280833 d!1264593))

(declare-fun d!1264595 () Bool)

(assert (=> d!1264595 (= (inv!62790 arr!11) (<= (size!34713 (innerList!14423 arr!11)) 2147483647))))

(declare-fun bs!602726 () Bool)

(assert (= bs!602726 d!1264595))

(declare-fun m!4878529 () Bool)

(assert (=> bs!602726 m!4878529))

(assert (=> start!411244 d!1264595))

(declare-fun b!4280884 () Bool)

(declare-fun e!2657615 () Int)

(assert (=> b!4280884 (= e!2657615 0)))

(declare-fun b!4280885 () Bool)

(declare-fun e!2657616 () Int)

(declare-fun call!294334 () Int)

(assert (=> b!4280885 (= e!2657616 call!294334)))

(declare-fun b!4280886 () Bool)

(assert (=> b!4280886 (= e!2657615 (- call!294334 i!561))))

(declare-fun b!4280887 () Bool)

(declare-fun e!2657614 () List!47505)

(declare-fun e!2657617 () List!47505)

(assert (=> b!4280887 (= e!2657614 e!2657617)))

(declare-fun c!729524 () Bool)

(assert (=> b!4280887 (= c!729524 (<= i!561 0))))

(declare-fun b!4280888 () Bool)

(assert (=> b!4280888 (= e!2657617 lt!1514991)))

(declare-fun bm!294329 () Bool)

(assert (=> bm!294329 (= call!294334 (size!34713 lt!1514991))))

(declare-fun b!4280889 () Bool)

(assert (=> b!4280889 (= e!2657616 e!2657615)))

(declare-fun c!729522 () Bool)

(assert (=> b!4280889 (= c!729522 (>= i!561 call!294334))))

(declare-fun d!1264597 () Bool)

(declare-fun e!2657618 () Bool)

(assert (=> d!1264597 e!2657618))

(declare-fun res!1757156 () Bool)

(assert (=> d!1264597 (=> (not res!1757156) (not e!2657618))))

(declare-fun lt!1515008 () List!47505)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7500 (List!47505) (InoxSet T!80158))

(assert (=> d!1264597 (= res!1757156 (= ((_ map implies) (content!7500 lt!1515008) (content!7500 lt!1514991)) ((as const (InoxSet T!80158)) true)))))

(assert (=> d!1264597 (= lt!1515008 e!2657614)))

(declare-fun c!729521 () Bool)

(assert (=> d!1264597 (= c!729521 ((_ is Nil!47381) lt!1514991))))

(assert (=> d!1264597 (= (drop!2163 lt!1514991 i!561) lt!1515008)))

(declare-fun b!4280890 () Bool)

(assert (=> b!4280890 (= e!2657618 (= (size!34713 lt!1515008) e!2657616))))

(declare-fun c!729523 () Bool)

(assert (=> b!4280890 (= c!729523 (<= i!561 0))))

(declare-fun b!4280891 () Bool)

(assert (=> b!4280891 (= e!2657614 Nil!47381)))

(declare-fun b!4280892 () Bool)

(assert (=> b!4280892 (= e!2657617 (drop!2163 (t!354092 lt!1514991) (- i!561 1)))))

(assert (= (and d!1264597 c!729521) b!4280891))

(assert (= (and d!1264597 (not c!729521)) b!4280887))

(assert (= (and b!4280887 c!729524) b!4280888))

(assert (= (and b!4280887 (not c!729524)) b!4280892))

(assert (= (and d!1264597 res!1757156) b!4280890))

(assert (= (and b!4280890 c!729523) b!4280885))

(assert (= (and b!4280890 (not c!729523)) b!4280889))

(assert (= (and b!4280889 c!729522) b!4280884))

(assert (= (and b!4280889 (not c!729522)) b!4280886))

(assert (= (or b!4280885 b!4280889 b!4280886) bm!294329))

(assert (=> bm!294329 m!4878521))

(declare-fun m!4878537 () Bool)

(assert (=> d!1264597 m!4878537))

(declare-fun m!4878539 () Bool)

(assert (=> d!1264597 m!4878539))

(declare-fun m!4878541 () Bool)

(assert (=> b!4280890 m!4878541))

(declare-fun m!4878543 () Bool)

(assert (=> b!4280892 m!4878543))

(assert (=> b!4280832 d!1264597))

(declare-fun d!1264603 () Bool)

(assert (=> d!1264603 (= (list!17303 arr!11) (innerList!14423 arr!11))))

(assert (=> b!4280832 d!1264603))

(declare-fun b!4280906 () Bool)

(declare-fun e!2657626 () Bool)

(declare-fun tp!1309371 () Bool)

(assert (=> b!4280906 (= e!2657626 (and tp_is_empty!23001 tp!1309371))))

(assert (=> b!4280830 (= tp!1309367 e!2657626)))

(assert (= (and b!4280830 ((_ is Cons!47381) (t!354092 acc!244))) b!4280906))

(declare-fun b!4280907 () Bool)

(declare-fun e!2657627 () Bool)

(declare-fun tp!1309372 () Bool)

(assert (=> b!4280907 (= e!2657627 (and tp_is_empty!23001 tp!1309372))))

(assert (=> b!4280834 (= tp!1309368 e!2657627)))

(assert (= (and b!4280834 ((_ is Cons!47381) (innerList!14423 arr!11))) b!4280907))

(check-sat tp_is_empty!23001 (not d!1264595) (not bm!294329) (not b!4280892) (not d!1264593) (not b!4280906) (not d!1264597) (not b!4280907) (not b!4280890) (not b!4280841))
(check-sat)
