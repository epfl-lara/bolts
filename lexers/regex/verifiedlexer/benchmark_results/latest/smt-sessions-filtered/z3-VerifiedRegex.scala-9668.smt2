; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507118 () Bool)

(assert start!507118)

(declare-fun b_free!130397 () Bool)

(declare-fun b_next!131187 () Bool)

(assert (=> start!507118 (= b_free!130397 (not b_next!131187))))

(declare-fun tp!1366072 () Bool)

(declare-fun b_and!342237 () Bool)

(assert (=> start!507118 (= tp!1366072 b_and!342237)))

(declare-fun b!4855302 () Bool)

(declare-fun e!3035605 () Bool)

(declare-fun tp_is_empty!35487 () Bool)

(declare-fun tp!1366073 () Bool)

(assert (=> b!4855302 (= e!3035605 (and tp_is_empty!35487 tp!1366073))))

(declare-fun res!2072707 () Bool)

(declare-fun e!3035604 () Bool)

(assert (=> start!507118 (=> (not res!2072707) (not e!3035604))))

(declare-datatypes ((B!2913 0))(
  ( (B!2914 (val!22384 Int)) )
))
(declare-datatypes ((List!55852 0))(
  ( (Nil!55728) (Cons!55728 (h!62176 B!2913) (t!363366 List!55852)) )
))
(declare-fun l1!1483 () List!55852)

(get-info :version)

(assert (=> start!507118 (= res!2072707 (not ((_ is Cons!55728) l1!1483)))))

(assert (=> start!507118 e!3035604))

(assert (=> start!507118 e!3035605))

(declare-fun e!3035606 () Bool)

(assert (=> start!507118 e!3035606))

(assert (=> start!507118 tp!1366072))

(declare-fun b!4855301 () Bool)

(declare-fun e!3035603 () Bool)

(declare-fun l2!1452 () List!55852)

(declare-fun p!2075 () Int)

(declare-fun exists!1232 (List!55852 Int) Bool)

(assert (=> b!4855301 (= e!3035603 (exists!1232 l2!1452 p!2075))))

(declare-fun b!4855303 () Bool)

(declare-fun tp!1366071 () Bool)

(assert (=> b!4855303 (= e!3035606 (and tp_is_empty!35487 tp!1366071))))

(declare-fun b!4855300 () Bool)

(declare-fun ++!12113 (List!55852 List!55852) List!55852)

(assert (=> b!4855300 (= e!3035604 (not (= (exists!1232 (++!12113 l1!1483 l2!1452) p!2075) e!3035603)))))

(declare-fun res!2072706 () Bool)

(assert (=> b!4855300 (=> res!2072706 e!3035603)))

(assert (=> b!4855300 (= res!2072706 (exists!1232 l1!1483 p!2075))))

(assert (= (and start!507118 res!2072707) b!4855300))

(assert (= (and b!4855300 (not res!2072706)) b!4855301))

(assert (= (and start!507118 ((_ is Cons!55728) l1!1483)) b!4855302))

(assert (= (and start!507118 ((_ is Cons!55728) l2!1452)) b!4855303))

(declare-fun m!5853022 () Bool)

(assert (=> b!4855301 m!5853022))

(declare-fun m!5853024 () Bool)

(assert (=> b!4855300 m!5853024))

(assert (=> b!4855300 m!5853024))

(declare-fun m!5853026 () Bool)

(assert (=> b!4855300 m!5853026))

(declare-fun m!5853028 () Bool)

(assert (=> b!4855300 m!5853028))

(check-sat (not b!4855300) (not b!4855302) (not b_next!131187) tp_is_empty!35487 b_and!342237 (not b!4855303) (not b!4855301))
(check-sat b_and!342237 (not b_next!131187))
(get-model)

(declare-fun d!1558439 () Bool)

(assert (=> d!1558439 true))

(declare-fun order!25145 () Int)

(declare-fun lambda!243101 () Int)

(declare-fun dynLambda!22393 (Int Int) Int)

(assert (=> d!1558439 (< (dynLambda!22393 order!25145 p!2075) (dynLambda!22393 order!25145 lambda!243101))))

(declare-fun forall!13017 (List!55852 Int) Bool)

(assert (=> d!1558439 (= (exists!1232 (++!12113 l1!1483 l2!1452) p!2075) (not (forall!13017 (++!12113 l1!1483 l2!1452) lambda!243101)))))

(declare-fun bs!1173679 () Bool)

(assert (= bs!1173679 d!1558439))

(assert (=> bs!1173679 m!5853024))

(declare-fun m!5853034 () Bool)

(assert (=> bs!1173679 m!5853034))

(assert (=> b!4855300 d!1558439))

(declare-fun b!4855330 () Bool)

(declare-fun e!3035617 () List!55852)

(assert (=> b!4855330 (= e!3035617 l2!1452)))

(declare-fun d!1558445 () Bool)

(declare-fun e!3035618 () Bool)

(assert (=> d!1558445 e!3035618))

(declare-fun res!2072719 () Bool)

(assert (=> d!1558445 (=> (not res!2072719) (not e!3035618))))

(declare-fun lt!1991231 () List!55852)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9926 (List!55852) (InoxSet B!2913))

(assert (=> d!1558445 (= res!2072719 (= (content!9926 lt!1991231) ((_ map or) (content!9926 l1!1483) (content!9926 l2!1452))))))

(assert (=> d!1558445 (= lt!1991231 e!3035617)))

(declare-fun c!825971 () Bool)

(assert (=> d!1558445 (= c!825971 ((_ is Nil!55728) l1!1483))))

(assert (=> d!1558445 (= (++!12113 l1!1483 l2!1452) lt!1991231)))

(declare-fun b!4855331 () Bool)

(assert (=> b!4855331 (= e!3035617 (Cons!55728 (h!62176 l1!1483) (++!12113 (t!363366 l1!1483) l2!1452)))))

(declare-fun b!4855332 () Bool)

(declare-fun res!2072718 () Bool)

(assert (=> b!4855332 (=> (not res!2072718) (not e!3035618))))

(declare-fun size!36692 (List!55852) Int)

(assert (=> b!4855332 (= res!2072718 (= (size!36692 lt!1991231) (+ (size!36692 l1!1483) (size!36692 l2!1452))))))

(declare-fun b!4855333 () Bool)

(assert (=> b!4855333 (= e!3035618 (or (not (= l2!1452 Nil!55728)) (= lt!1991231 l1!1483)))))

(assert (= (and d!1558445 c!825971) b!4855330))

(assert (= (and d!1558445 (not c!825971)) b!4855331))

(assert (= (and d!1558445 res!2072719) b!4855332))

(assert (= (and b!4855332 res!2072718) b!4855333))

(declare-fun m!5853052 () Bool)

(assert (=> d!1558445 m!5853052))

(declare-fun m!5853054 () Bool)

(assert (=> d!1558445 m!5853054))

(declare-fun m!5853056 () Bool)

(assert (=> d!1558445 m!5853056))

(declare-fun m!5853058 () Bool)

(assert (=> b!4855331 m!5853058))

(declare-fun m!5853060 () Bool)

(assert (=> b!4855332 m!5853060))

(declare-fun m!5853062 () Bool)

(assert (=> b!4855332 m!5853062))

(declare-fun m!5853064 () Bool)

(assert (=> b!4855332 m!5853064))

(assert (=> b!4855300 d!1558445))

(declare-fun bs!1173683 () Bool)

(declare-fun d!1558449 () Bool)

(assert (= bs!1173683 (and d!1558449 d!1558439)))

(declare-fun lambda!243103 () Int)

(assert (=> bs!1173683 (= lambda!243103 lambda!243101)))

(assert (=> d!1558449 true))

(assert (=> d!1558449 (< (dynLambda!22393 order!25145 p!2075) (dynLambda!22393 order!25145 lambda!243103))))

(assert (=> d!1558449 (= (exists!1232 l1!1483 p!2075) (not (forall!13017 l1!1483 lambda!243103)))))

(declare-fun bs!1173684 () Bool)

(assert (= bs!1173684 d!1558449))

(declare-fun m!5853066 () Bool)

(assert (=> bs!1173684 m!5853066))

(assert (=> b!4855300 d!1558449))

(declare-fun bs!1173685 () Bool)

(declare-fun d!1558451 () Bool)

(assert (= bs!1173685 (and d!1558451 d!1558439)))

(declare-fun lambda!243104 () Int)

(assert (=> bs!1173685 (= lambda!243104 lambda!243101)))

(declare-fun bs!1173686 () Bool)

(assert (= bs!1173686 (and d!1558451 d!1558449)))

(assert (=> bs!1173686 (= lambda!243104 lambda!243103)))

(assert (=> d!1558451 true))

(assert (=> d!1558451 (< (dynLambda!22393 order!25145 p!2075) (dynLambda!22393 order!25145 lambda!243104))))

(assert (=> d!1558451 (= (exists!1232 l2!1452 p!2075) (not (forall!13017 l2!1452 lambda!243104)))))

(declare-fun bs!1173687 () Bool)

(assert (= bs!1173687 d!1558451))

(declare-fun m!5853068 () Bool)

(assert (=> bs!1173687 m!5853068))

(assert (=> b!4855301 d!1558451))

(declare-fun b!4855342 () Bool)

(declare-fun e!3035625 () Bool)

(declare-fun tp!1366080 () Bool)

(assert (=> b!4855342 (= e!3035625 (and tp_is_empty!35487 tp!1366080))))

(assert (=> b!4855303 (= tp!1366071 e!3035625)))

(assert (= (and b!4855303 ((_ is Cons!55728) (t!363366 l2!1452))) b!4855342))

(declare-fun b!4855343 () Bool)

(declare-fun e!3035626 () Bool)

(declare-fun tp!1366081 () Bool)

(assert (=> b!4855343 (= e!3035626 (and tp_is_empty!35487 tp!1366081))))

(assert (=> b!4855302 (= tp!1366073 e!3035626)))

(assert (= (and b!4855302 ((_ is Cons!55728) (t!363366 l1!1483))) b!4855343))

(check-sat (not d!1558439) (not b_next!131187) tp_is_empty!35487 (not b!4855332) (not d!1558451) b_and!342237 (not b!4855342) (not b!4855331) (not b!4855343) (not d!1558445) (not d!1558449))
(check-sat b_and!342237 (not b_next!131187))
(get-model)

(declare-fun d!1558453 () Bool)

(declare-fun res!2072724 () Bool)

(declare-fun e!3035631 () Bool)

(assert (=> d!1558453 (=> res!2072724 e!3035631)))

(assert (=> d!1558453 (= res!2072724 ((_ is Nil!55728) l1!1483))))

(assert (=> d!1558453 (= (forall!13017 l1!1483 lambda!243103) e!3035631)))

(declare-fun b!4855348 () Bool)

(declare-fun e!3035632 () Bool)

(assert (=> b!4855348 (= e!3035631 e!3035632)))

(declare-fun res!2072725 () Bool)

(assert (=> b!4855348 (=> (not res!2072725) (not e!3035632))))

(declare-fun dynLambda!22394 (Int B!2913) Bool)

(assert (=> b!4855348 (= res!2072725 (dynLambda!22394 lambda!243103 (h!62176 l1!1483)))))

(declare-fun b!4855349 () Bool)

(assert (=> b!4855349 (= e!3035632 (forall!13017 (t!363366 l1!1483) lambda!243103))))

(assert (= (and d!1558453 (not res!2072724)) b!4855348))

(assert (= (and b!4855348 res!2072725) b!4855349))

(declare-fun b_lambda!193273 () Bool)

(assert (=> (not b_lambda!193273) (not b!4855348)))

(declare-fun m!5853070 () Bool)

(assert (=> b!4855348 m!5853070))

(declare-fun m!5853072 () Bool)

(assert (=> b!4855349 m!5853072))

(assert (=> d!1558449 d!1558453))

(declare-fun d!1558455 () Bool)

(declare-fun c!825974 () Bool)

(assert (=> d!1558455 (= c!825974 ((_ is Nil!55728) lt!1991231))))

(declare-fun e!3035635 () (InoxSet B!2913))

(assert (=> d!1558455 (= (content!9926 lt!1991231) e!3035635)))

(declare-fun b!4855354 () Bool)

(assert (=> b!4855354 (= e!3035635 ((as const (Array B!2913 Bool)) false))))

(declare-fun b!4855355 () Bool)

(assert (=> b!4855355 (= e!3035635 ((_ map or) (store ((as const (Array B!2913 Bool)) false) (h!62176 lt!1991231) true) (content!9926 (t!363366 lt!1991231))))))

(assert (= (and d!1558455 c!825974) b!4855354))

(assert (= (and d!1558455 (not c!825974)) b!4855355))

(declare-fun m!5853074 () Bool)

(assert (=> b!4855355 m!5853074))

(declare-fun m!5853076 () Bool)

(assert (=> b!4855355 m!5853076))

(assert (=> d!1558445 d!1558455))

(declare-fun d!1558457 () Bool)

(declare-fun c!825975 () Bool)

(assert (=> d!1558457 (= c!825975 ((_ is Nil!55728) l1!1483))))

(declare-fun e!3035636 () (InoxSet B!2913))

(assert (=> d!1558457 (= (content!9926 l1!1483) e!3035636)))

(declare-fun b!4855356 () Bool)

(assert (=> b!4855356 (= e!3035636 ((as const (Array B!2913 Bool)) false))))

(declare-fun b!4855357 () Bool)

(assert (=> b!4855357 (= e!3035636 ((_ map or) (store ((as const (Array B!2913 Bool)) false) (h!62176 l1!1483) true) (content!9926 (t!363366 l1!1483))))))

(assert (= (and d!1558457 c!825975) b!4855356))

(assert (= (and d!1558457 (not c!825975)) b!4855357))

(declare-fun m!5853078 () Bool)

(assert (=> b!4855357 m!5853078))

(declare-fun m!5853080 () Bool)

(assert (=> b!4855357 m!5853080))

(assert (=> d!1558445 d!1558457))

(declare-fun d!1558459 () Bool)

(declare-fun c!825976 () Bool)

(assert (=> d!1558459 (= c!825976 ((_ is Nil!55728) l2!1452))))

(declare-fun e!3035637 () (InoxSet B!2913))

(assert (=> d!1558459 (= (content!9926 l2!1452) e!3035637)))

(declare-fun b!4855358 () Bool)

(assert (=> b!4855358 (= e!3035637 ((as const (Array B!2913 Bool)) false))))

(declare-fun b!4855359 () Bool)

(assert (=> b!4855359 (= e!3035637 ((_ map or) (store ((as const (Array B!2913 Bool)) false) (h!62176 l2!1452) true) (content!9926 (t!363366 l2!1452))))))

(assert (= (and d!1558459 c!825976) b!4855358))

(assert (= (and d!1558459 (not c!825976)) b!4855359))

(declare-fun m!5853082 () Bool)

(assert (=> b!4855359 m!5853082))

(declare-fun m!5853084 () Bool)

(assert (=> b!4855359 m!5853084))

(assert (=> d!1558445 d!1558459))

(declare-fun d!1558461 () Bool)

(declare-fun res!2072726 () Bool)

(declare-fun e!3035638 () Bool)

(assert (=> d!1558461 (=> res!2072726 e!3035638)))

(assert (=> d!1558461 (= res!2072726 ((_ is Nil!55728) (++!12113 l1!1483 l2!1452)))))

(assert (=> d!1558461 (= (forall!13017 (++!12113 l1!1483 l2!1452) lambda!243101) e!3035638)))

(declare-fun b!4855360 () Bool)

(declare-fun e!3035639 () Bool)

(assert (=> b!4855360 (= e!3035638 e!3035639)))

(declare-fun res!2072727 () Bool)

(assert (=> b!4855360 (=> (not res!2072727) (not e!3035639))))

(assert (=> b!4855360 (= res!2072727 (dynLambda!22394 lambda!243101 (h!62176 (++!12113 l1!1483 l2!1452))))))

(declare-fun b!4855361 () Bool)

(assert (=> b!4855361 (= e!3035639 (forall!13017 (t!363366 (++!12113 l1!1483 l2!1452)) lambda!243101))))

(assert (= (and d!1558461 (not res!2072726)) b!4855360))

(assert (= (and b!4855360 res!2072727) b!4855361))

(declare-fun b_lambda!193275 () Bool)

(assert (=> (not b_lambda!193275) (not b!4855360)))

(declare-fun m!5853086 () Bool)

(assert (=> b!4855360 m!5853086))

(declare-fun m!5853088 () Bool)

(assert (=> b!4855361 m!5853088))

(assert (=> d!1558439 d!1558461))

(declare-fun d!1558465 () Bool)

(declare-fun lt!1991234 () Int)

(assert (=> d!1558465 (>= lt!1991234 0)))

(declare-fun e!3035646 () Int)

(assert (=> d!1558465 (= lt!1991234 e!3035646)))

(declare-fun c!825983 () Bool)

(assert (=> d!1558465 (= c!825983 ((_ is Nil!55728) lt!1991231))))

(assert (=> d!1558465 (= (size!36692 lt!1991231) lt!1991234)))

(declare-fun b!4855374 () Bool)

(assert (=> b!4855374 (= e!3035646 0)))

(declare-fun b!4855375 () Bool)

(assert (=> b!4855375 (= e!3035646 (+ 1 (size!36692 (t!363366 lt!1991231))))))

(assert (= (and d!1558465 c!825983) b!4855374))

(assert (= (and d!1558465 (not c!825983)) b!4855375))

(declare-fun m!5853098 () Bool)

(assert (=> b!4855375 m!5853098))

(assert (=> b!4855332 d!1558465))

(declare-fun d!1558471 () Bool)

(declare-fun lt!1991235 () Int)

(assert (=> d!1558471 (>= lt!1991235 0)))

(declare-fun e!3035648 () Int)

(assert (=> d!1558471 (= lt!1991235 e!3035648)))

(declare-fun c!825985 () Bool)

(assert (=> d!1558471 (= c!825985 ((_ is Nil!55728) l1!1483))))

(assert (=> d!1558471 (= (size!36692 l1!1483) lt!1991235)))

(declare-fun b!4855378 () Bool)

(assert (=> b!4855378 (= e!3035648 0)))

(declare-fun b!4855379 () Bool)

(assert (=> b!4855379 (= e!3035648 (+ 1 (size!36692 (t!363366 l1!1483))))))

(assert (= (and d!1558471 c!825985) b!4855378))

(assert (= (and d!1558471 (not c!825985)) b!4855379))

(declare-fun m!5853104 () Bool)

(assert (=> b!4855379 m!5853104))

(assert (=> b!4855332 d!1558471))

(declare-fun d!1558475 () Bool)

(declare-fun lt!1991236 () Int)

(assert (=> d!1558475 (>= lt!1991236 0)))

(declare-fun e!3035649 () Int)

(assert (=> d!1558475 (= lt!1991236 e!3035649)))

(declare-fun c!825986 () Bool)

(assert (=> d!1558475 (= c!825986 ((_ is Nil!55728) l2!1452))))

(assert (=> d!1558475 (= (size!36692 l2!1452) lt!1991236)))

(declare-fun b!4855380 () Bool)

(assert (=> b!4855380 (= e!3035649 0)))

(declare-fun b!4855381 () Bool)

(assert (=> b!4855381 (= e!3035649 (+ 1 (size!36692 (t!363366 l2!1452))))))

(assert (= (and d!1558475 c!825986) b!4855380))

(assert (= (and d!1558475 (not c!825986)) b!4855381))

(declare-fun m!5853106 () Bool)

(assert (=> b!4855381 m!5853106))

(assert (=> b!4855332 d!1558475))

(declare-fun d!1558477 () Bool)

(declare-fun res!2072728 () Bool)

(declare-fun e!3035650 () Bool)

(assert (=> d!1558477 (=> res!2072728 e!3035650)))

(assert (=> d!1558477 (= res!2072728 ((_ is Nil!55728) l2!1452))))

(assert (=> d!1558477 (= (forall!13017 l2!1452 lambda!243104) e!3035650)))

(declare-fun b!4855382 () Bool)

(declare-fun e!3035651 () Bool)

(assert (=> b!4855382 (= e!3035650 e!3035651)))

(declare-fun res!2072729 () Bool)

(assert (=> b!4855382 (=> (not res!2072729) (not e!3035651))))

(assert (=> b!4855382 (= res!2072729 (dynLambda!22394 lambda!243104 (h!62176 l2!1452)))))

(declare-fun b!4855383 () Bool)

(assert (=> b!4855383 (= e!3035651 (forall!13017 (t!363366 l2!1452) lambda!243104))))

(assert (= (and d!1558477 (not res!2072728)) b!4855382))

(assert (= (and b!4855382 res!2072729) b!4855383))

(declare-fun b_lambda!193277 () Bool)

(assert (=> (not b_lambda!193277) (not b!4855382)))

(declare-fun m!5853108 () Bool)

(assert (=> b!4855382 m!5853108))

(declare-fun m!5853110 () Bool)

(assert (=> b!4855383 m!5853110))

(assert (=> d!1558451 d!1558477))

(declare-fun b!4855384 () Bool)

(declare-fun e!3035652 () List!55852)

(assert (=> b!4855384 (= e!3035652 l2!1452)))

(declare-fun d!1558479 () Bool)

(declare-fun e!3035653 () Bool)

(assert (=> d!1558479 e!3035653))

(declare-fun res!2072731 () Bool)

(assert (=> d!1558479 (=> (not res!2072731) (not e!3035653))))

(declare-fun lt!1991237 () List!55852)

(assert (=> d!1558479 (= res!2072731 (= (content!9926 lt!1991237) ((_ map or) (content!9926 (t!363366 l1!1483)) (content!9926 l2!1452))))))

(assert (=> d!1558479 (= lt!1991237 e!3035652)))

(declare-fun c!825987 () Bool)

(assert (=> d!1558479 (= c!825987 ((_ is Nil!55728) (t!363366 l1!1483)))))

(assert (=> d!1558479 (= (++!12113 (t!363366 l1!1483) l2!1452) lt!1991237)))

(declare-fun b!4855385 () Bool)

(assert (=> b!4855385 (= e!3035652 (Cons!55728 (h!62176 (t!363366 l1!1483)) (++!12113 (t!363366 (t!363366 l1!1483)) l2!1452)))))

(declare-fun b!4855386 () Bool)

(declare-fun res!2072730 () Bool)

(assert (=> b!4855386 (=> (not res!2072730) (not e!3035653))))

(assert (=> b!4855386 (= res!2072730 (= (size!36692 lt!1991237) (+ (size!36692 (t!363366 l1!1483)) (size!36692 l2!1452))))))

(declare-fun b!4855387 () Bool)

(assert (=> b!4855387 (= e!3035653 (or (not (= l2!1452 Nil!55728)) (= lt!1991237 (t!363366 l1!1483))))))

(assert (= (and d!1558479 c!825987) b!4855384))

(assert (= (and d!1558479 (not c!825987)) b!4855385))

(assert (= (and d!1558479 res!2072731) b!4855386))

(assert (= (and b!4855386 res!2072730) b!4855387))

(declare-fun m!5853112 () Bool)

(assert (=> d!1558479 m!5853112))

(assert (=> d!1558479 m!5853080))

(assert (=> d!1558479 m!5853056))

(declare-fun m!5853114 () Bool)

(assert (=> b!4855385 m!5853114))

(declare-fun m!5853116 () Bool)

(assert (=> b!4855386 m!5853116))

(assert (=> b!4855386 m!5853104))

(assert (=> b!4855386 m!5853064))

(assert (=> b!4855331 d!1558479))

(declare-fun b!4855392 () Bool)

(declare-fun e!3035658 () Bool)

(declare-fun tp!1366082 () Bool)

(assert (=> b!4855392 (= e!3035658 (and tp_is_empty!35487 tp!1366082))))

(assert (=> b!4855343 (= tp!1366081 e!3035658)))

(assert (= (and b!4855343 ((_ is Cons!55728) (t!363366 (t!363366 l1!1483)))) b!4855392))

(declare-fun b!4855393 () Bool)

(declare-fun e!3035659 () Bool)

(declare-fun tp!1366083 () Bool)

(assert (=> b!4855393 (= e!3035659 (and tp_is_empty!35487 tp!1366083))))

(assert (=> b!4855342 (= tp!1366080 e!3035659)))

(assert (= (and b!4855342 ((_ is Cons!55728) (t!363366 (t!363366 l2!1452)))) b!4855393))

(declare-fun b_lambda!193279 () Bool)

(assert (= b_lambda!193275 (or d!1558439 b_lambda!193279)))

(declare-fun bs!1173688 () Bool)

(declare-fun d!1558481 () Bool)

(assert (= bs!1173688 (and d!1558481 d!1558439)))

(assert (=> bs!1173688 (= (dynLambda!22394 lambda!243101 (h!62176 (++!12113 l1!1483 l2!1452))) (not (dynLambda!22394 p!2075 (h!62176 (++!12113 l1!1483 l2!1452)))))))

(declare-fun b_lambda!193285 () Bool)

(assert (=> (not b_lambda!193285) (not bs!1173688)))

(declare-fun t!363368 () Bool)

(declare-fun tb!257567 () Bool)

(assert (=> (and start!507118 (= p!2075 p!2075) t!363368) tb!257567))

(declare-fun result!320434 () Bool)

(assert (=> tb!257567 (= result!320434 true)))

(assert (=> bs!1173688 t!363368))

(declare-fun b_and!342239 () Bool)

(assert (= b_and!342237 (and (=> t!363368 result!320434) b_and!342239)))

(declare-fun m!5853118 () Bool)

(assert (=> bs!1173688 m!5853118))

(assert (=> b!4855360 d!1558481))

(declare-fun b_lambda!193281 () Bool)

(assert (= b_lambda!193273 (or d!1558449 b_lambda!193281)))

(declare-fun bs!1173689 () Bool)

(declare-fun d!1558483 () Bool)

(assert (= bs!1173689 (and d!1558483 d!1558449)))

(assert (=> bs!1173689 (= (dynLambda!22394 lambda!243103 (h!62176 l1!1483)) (not (dynLambda!22394 p!2075 (h!62176 l1!1483))))))

(declare-fun b_lambda!193287 () Bool)

(assert (=> (not b_lambda!193287) (not bs!1173689)))

(declare-fun t!363370 () Bool)

(declare-fun tb!257569 () Bool)

(assert (=> (and start!507118 (= p!2075 p!2075) t!363370) tb!257569))

(declare-fun result!320436 () Bool)

(assert (=> tb!257569 (= result!320436 true)))

(assert (=> bs!1173689 t!363370))

(declare-fun b_and!342241 () Bool)

(assert (= b_and!342239 (and (=> t!363370 result!320436) b_and!342241)))

(declare-fun m!5853120 () Bool)

(assert (=> bs!1173689 m!5853120))

(assert (=> b!4855348 d!1558483))

(declare-fun b_lambda!193283 () Bool)

(assert (= b_lambda!193277 (or d!1558451 b_lambda!193283)))

(declare-fun bs!1173690 () Bool)

(declare-fun d!1558485 () Bool)

(assert (= bs!1173690 (and d!1558485 d!1558451)))

(assert (=> bs!1173690 (= (dynLambda!22394 lambda!243104 (h!62176 l2!1452)) (not (dynLambda!22394 p!2075 (h!62176 l2!1452))))))

(declare-fun b_lambda!193291 () Bool)

(assert (=> (not b_lambda!193291) (not bs!1173690)))

(declare-fun t!363372 () Bool)

(declare-fun tb!257571 () Bool)

(assert (=> (and start!507118 (= p!2075 p!2075) t!363372) tb!257571))

(declare-fun result!320438 () Bool)

(assert (=> tb!257571 (= result!320438 true)))

(assert (=> bs!1173690 t!363372))

(declare-fun b_and!342243 () Bool)

(assert (= b_and!342241 (and (=> t!363372 result!320438) b_and!342243)))

(declare-fun m!5853126 () Bool)

(assert (=> bs!1173690 m!5853126))

(assert (=> b!4855382 d!1558485))

(check-sat (not b_lambda!193279) (not b!4855383) (not b!4855379) (not b_lambda!193291) (not b_next!131187) tp_is_empty!35487 (not b!4855375) (not b!4855393) (not b!4855349) (not b_lambda!193287) (not b!4855392) (not b!4855361) b_and!342243 (not b!4855357) (not b!4855386) (not b_lambda!193281) (not b!4855359) (not b!4855355) (not b_lambda!193285) (not b!4855385) (not b_lambda!193283) (not b!4855381) (not d!1558479))
(check-sat b_and!342243 (not b_next!131187))
