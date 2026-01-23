; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534202 () Bool)

(assert start!534202)

(declare-fun b!5050377 () Bool)

(declare-fun res!2150837 () Bool)

(declare-fun e!3153201 () Bool)

(assert (=> b!5050377 (=> (not res!2150837) (not e!3153201))))

(declare-fun i!705 () Int)

(declare-datatypes ((T!104740 0))(
  ( (T!104741 (val!23594 Int)) )
))
(declare-datatypes ((List!58504 0))(
  ( (Nil!58380) (Cons!58380 (h!64828 T!104740) (t!371143 List!58504)) )
))
(declare-fun l!2779 () List!58504)

(declare-fun size!39003 (List!58504) Int)

(assert (=> b!5050377 (= res!2150837 (<= i!705 (size!39003 l!2779)))))

(declare-fun b!5050378 () Bool)

(declare-fun take!885 (List!58504 Int) List!58504)

(declare-fun slice!907 (List!58504 Int Int) List!58504)

(assert (=> b!5050378 (= e!3153201 (not (= (take!885 l!2779 i!705) (slice!907 l!2779 0 i!705))))))

(assert (=> b!5050378 (= (take!885 (t!371143 l!2779) (- i!705 1)) (slice!907 (t!371143 l!2779) 0 (- i!705 1)))))

(declare-datatypes ((Unit!149567 0))(
  ( (Unit!149568) )
))
(declare-fun lt!2086519 () Unit!149567)

(declare-fun takeSliceLemma!12 (List!58504 Int) Unit!149567)

(assert (=> b!5050378 (= lt!2086519 (takeSliceLemma!12 (t!371143 l!2779) (- i!705 1)))))

(declare-fun b!5050379 () Bool)

(declare-fun e!3153202 () Bool)

(declare-fun tp_is_empty!36943 () Bool)

(declare-fun tp!1412173 () Bool)

(assert (=> b!5050379 (= e!3153202 (and tp_is_empty!36943 tp!1412173))))

(declare-fun res!2150835 () Bool)

(assert (=> start!534202 (=> (not res!2150835) (not e!3153201))))

(assert (=> start!534202 (= res!2150835 (<= 0 i!705))))

(assert (=> start!534202 e!3153201))

(assert (=> start!534202 true))

(assert (=> start!534202 e!3153202))

(declare-fun b!5050380 () Bool)

(declare-fun res!2150834 () Bool)

(assert (=> b!5050380 (=> (not res!2150834) (not e!3153201))))

(get-info :version)

(assert (=> b!5050380 (= res!2150834 (and (not ((_ is Nil!58380) l!2779)) (not (= i!705 0)) (<= 0 (- i!705 1))))))

(declare-fun b!5050381 () Bool)

(declare-fun res!2150836 () Bool)

(assert (=> b!5050381 (=> (not res!2150836) (not e!3153201))))

(assert (=> b!5050381 (= res!2150836 (<= (- i!705 1) (size!39003 (t!371143 l!2779))))))

(assert (= (and start!534202 res!2150835) b!5050377))

(assert (= (and b!5050377 res!2150837) b!5050380))

(assert (= (and b!5050380 res!2150834) b!5050381))

(assert (= (and b!5050381 res!2150836) b!5050378))

(assert (= (and start!534202 ((_ is Cons!58380) l!2779)) b!5050379))

(declare-fun m!6084696 () Bool)

(assert (=> b!5050377 m!6084696))

(declare-fun m!6084698 () Bool)

(assert (=> b!5050378 m!6084698))

(declare-fun m!6084700 () Bool)

(assert (=> b!5050378 m!6084700))

(declare-fun m!6084702 () Bool)

(assert (=> b!5050378 m!6084702))

(declare-fun m!6084704 () Bool)

(assert (=> b!5050378 m!6084704))

(declare-fun m!6084706 () Bool)

(assert (=> b!5050378 m!6084706))

(declare-fun m!6084708 () Bool)

(assert (=> b!5050381 m!6084708))

(check-sat tp_is_empty!36943 (not b!5050378) (not b!5050377) (not b!5050379) (not b!5050381))
(check-sat)
(get-model)

(declare-fun d!1624972 () Bool)

(declare-fun lt!2086524 () Int)

(assert (=> d!1624972 (>= lt!2086524 0)))

(declare-fun e!3153207 () Int)

(assert (=> d!1624972 (= lt!2086524 e!3153207)))

(declare-fun c!866240 () Bool)

(assert (=> d!1624972 (= c!866240 ((_ is Nil!58380) (t!371143 l!2779)))))

(assert (=> d!1624972 (= (size!39003 (t!371143 l!2779)) lt!2086524)))

(declare-fun b!5050390 () Bool)

(assert (=> b!5050390 (= e!3153207 0)))

(declare-fun b!5050391 () Bool)

(assert (=> b!5050391 (= e!3153207 (+ 1 (size!39003 (t!371143 (t!371143 l!2779)))))))

(assert (= (and d!1624972 c!866240) b!5050390))

(assert (= (and d!1624972 (not c!866240)) b!5050391))

(declare-fun m!6084710 () Bool)

(assert (=> b!5050391 m!6084710))

(assert (=> b!5050381 d!1624972))

(declare-fun d!1624976 () Bool)

(declare-fun lt!2086525 () Int)

(assert (=> d!1624976 (>= lt!2086525 0)))

(declare-fun e!3153208 () Int)

(assert (=> d!1624976 (= lt!2086525 e!3153208)))

(declare-fun c!866241 () Bool)

(assert (=> d!1624976 (= c!866241 ((_ is Nil!58380) l!2779))))

(assert (=> d!1624976 (= (size!39003 l!2779) lt!2086525)))

(declare-fun b!5050392 () Bool)

(assert (=> b!5050392 (= e!3153208 0)))

(declare-fun b!5050393 () Bool)

(assert (=> b!5050393 (= e!3153208 (+ 1 (size!39003 (t!371143 l!2779))))))

(assert (= (and d!1624976 c!866241) b!5050392))

(assert (= (and d!1624976 (not c!866241)) b!5050393))

(assert (=> b!5050393 m!6084708))

(assert (=> b!5050377 d!1624976))

(declare-fun d!1624978 () Bool)

(declare-fun e!3153226 () Bool)

(assert (=> d!1624978 e!3153226))

(declare-fun res!2150842 () Bool)

(assert (=> d!1624978 (=> (not res!2150842) (not e!3153226))))

(declare-fun lt!2086531 () List!58504)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10392 (List!58504) (InoxSet T!104740))

(assert (=> d!1624978 (= res!2150842 (= ((_ map implies) (content!10392 lt!2086531) (content!10392 l!2779)) ((as const (InoxSet T!104740)) true)))))

(declare-fun e!3153229 () List!58504)

(assert (=> d!1624978 (= lt!2086531 e!3153229)))

(declare-fun c!866257 () Bool)

(assert (=> d!1624978 (= c!866257 (or ((_ is Nil!58380) l!2779) (<= i!705 0)))))

(assert (=> d!1624978 (= (take!885 l!2779 i!705) lt!2086531)))

(declare-fun b!5050424 () Bool)

(declare-fun e!3153228 () Int)

(assert (=> b!5050424 (= e!3153226 (= (size!39003 lt!2086531) e!3153228))))

(declare-fun c!866255 () Bool)

(assert (=> b!5050424 (= c!866255 (<= i!705 0))))

(declare-fun b!5050425 () Bool)

(declare-fun e!3153227 () Int)

(assert (=> b!5050425 (= e!3153228 e!3153227)))

(declare-fun c!866256 () Bool)

(assert (=> b!5050425 (= c!866256 (>= i!705 (size!39003 l!2779)))))

(declare-fun b!5050426 () Bool)

(assert (=> b!5050426 (= e!3153229 (Cons!58380 (h!64828 l!2779) (take!885 (t!371143 l!2779) (- i!705 1))))))

(declare-fun b!5050427 () Bool)

(assert (=> b!5050427 (= e!3153227 i!705)))

(declare-fun b!5050428 () Bool)

(assert (=> b!5050428 (= e!3153227 (size!39003 l!2779))))

(declare-fun b!5050429 () Bool)

(assert (=> b!5050429 (= e!3153228 0)))

(declare-fun b!5050430 () Bool)

(assert (=> b!5050430 (= e!3153229 Nil!58380)))

(assert (= (and d!1624978 c!866257) b!5050430))

(assert (= (and d!1624978 (not c!866257)) b!5050426))

(assert (= (and d!1624978 res!2150842) b!5050424))

(assert (= (and b!5050424 c!866255) b!5050429))

(assert (= (and b!5050424 (not c!866255)) b!5050425))

(assert (= (and b!5050425 c!866256) b!5050428))

(assert (= (and b!5050425 (not c!866256)) b!5050427))

(assert (=> b!5050425 m!6084696))

(assert (=> b!5050426 m!6084706))

(assert (=> b!5050428 m!6084696))

(declare-fun m!6084712 () Bool)

(assert (=> d!1624978 m!6084712))

(declare-fun m!6084714 () Bool)

(assert (=> d!1624978 m!6084714))

(declare-fun m!6084716 () Bool)

(assert (=> b!5050424 m!6084716))

(assert (=> b!5050378 d!1624978))

(declare-fun d!1624982 () Bool)

(declare-fun drop!2684 (List!58504 Int) List!58504)

(assert (=> d!1624982 (= (slice!907 (t!371143 l!2779) 0 (- i!705 1)) (take!885 (drop!2684 (t!371143 l!2779) 0) (- (- i!705 1) 0)))))

(declare-fun bs!1189252 () Bool)

(assert (= bs!1189252 d!1624982))

(declare-fun m!6084724 () Bool)

(assert (=> bs!1189252 m!6084724))

(assert (=> bs!1189252 m!6084724))

(declare-fun m!6084726 () Bool)

(assert (=> bs!1189252 m!6084726))

(assert (=> b!5050378 d!1624982))

(declare-fun d!1624986 () Bool)

(assert (=> d!1624986 (= (take!885 (t!371143 l!2779) (- i!705 1)) (slice!907 (t!371143 l!2779) 0 (- i!705 1)))))

(declare-fun lt!2086537 () Unit!149567)

(declare-fun choose!37285 (List!58504 Int) Unit!149567)

(assert (=> d!1624986 (= lt!2086537 (choose!37285 (t!371143 l!2779) (- i!705 1)))))

(declare-fun e!3153238 () Bool)

(assert (=> d!1624986 e!3153238))

(declare-fun res!2150848 () Bool)

(assert (=> d!1624986 (=> (not res!2150848) (not e!3153238))))

(assert (=> d!1624986 (= res!2150848 (<= 0 (- i!705 1)))))

(assert (=> d!1624986 (= (takeSliceLemma!12 (t!371143 l!2779) (- i!705 1)) lt!2086537)))

(declare-fun b!5050442 () Bool)

(assert (=> b!5050442 (= e!3153238 (<= (- i!705 1) (size!39003 (t!371143 l!2779))))))

(assert (= (and d!1624986 res!2150848) b!5050442))

(assert (=> d!1624986 m!6084706))

(assert (=> d!1624986 m!6084704))

(declare-fun m!6084732 () Bool)

(assert (=> d!1624986 m!6084732))

(assert (=> b!5050442 m!6084708))

(assert (=> b!5050378 d!1624986))

(declare-fun d!1624990 () Bool)

(assert (=> d!1624990 (= (slice!907 l!2779 0 i!705) (take!885 (drop!2684 l!2779 0) (- i!705 0)))))

(declare-fun bs!1189254 () Bool)

(assert (= bs!1189254 d!1624990))

(declare-fun m!6084736 () Bool)

(assert (=> bs!1189254 m!6084736))

(assert (=> bs!1189254 m!6084736))

(declare-fun m!6084740 () Bool)

(assert (=> bs!1189254 m!6084740))

(assert (=> b!5050378 d!1624990))

(declare-fun d!1624994 () Bool)

(declare-fun e!3153240 () Bool)

(assert (=> d!1624994 e!3153240))

(declare-fun res!2150850 () Bool)

(assert (=> d!1624994 (=> (not res!2150850) (not e!3153240))))

(declare-fun lt!2086539 () List!58504)

(assert (=> d!1624994 (= res!2150850 (= ((_ map implies) (content!10392 lt!2086539) (content!10392 (t!371143 l!2779))) ((as const (InoxSet T!104740)) true)))))

(declare-fun e!3153243 () List!58504)

(assert (=> d!1624994 (= lt!2086539 e!3153243)))

(declare-fun c!866263 () Bool)

(assert (=> d!1624994 (= c!866263 (or ((_ is Nil!58380) (t!371143 l!2779)) (<= (- i!705 1) 0)))))

(assert (=> d!1624994 (= (take!885 (t!371143 l!2779) (- i!705 1)) lt!2086539)))

(declare-fun b!5050444 () Bool)

(declare-fun e!3153242 () Int)

(assert (=> b!5050444 (= e!3153240 (= (size!39003 lt!2086539) e!3153242))))

(declare-fun c!866261 () Bool)

(assert (=> b!5050444 (= c!866261 (<= (- i!705 1) 0))))

(declare-fun b!5050445 () Bool)

(declare-fun e!3153241 () Int)

(assert (=> b!5050445 (= e!3153242 e!3153241)))

(declare-fun c!866262 () Bool)

(assert (=> b!5050445 (= c!866262 (>= (- i!705 1) (size!39003 (t!371143 l!2779))))))

(declare-fun b!5050446 () Bool)

(assert (=> b!5050446 (= e!3153243 (Cons!58380 (h!64828 (t!371143 l!2779)) (take!885 (t!371143 (t!371143 l!2779)) (- (- i!705 1) 1))))))

(declare-fun b!5050447 () Bool)

(assert (=> b!5050447 (= e!3153241 (- i!705 1))))

(declare-fun b!5050448 () Bool)

(assert (=> b!5050448 (= e!3153241 (size!39003 (t!371143 l!2779)))))

(declare-fun b!5050449 () Bool)

(assert (=> b!5050449 (= e!3153242 0)))

(declare-fun b!5050450 () Bool)

(assert (=> b!5050450 (= e!3153243 Nil!58380)))

(assert (= (and d!1624994 c!866263) b!5050450))

(assert (= (and d!1624994 (not c!866263)) b!5050446))

(assert (= (and d!1624994 res!2150850) b!5050444))

(assert (= (and b!5050444 c!866261) b!5050449))

(assert (= (and b!5050444 (not c!866261)) b!5050445))

(assert (= (and b!5050445 c!866262) b!5050448))

(assert (= (and b!5050445 (not c!866262)) b!5050447))

(assert (=> b!5050445 m!6084708))

(declare-fun m!6084744 () Bool)

(assert (=> b!5050446 m!6084744))

(assert (=> b!5050448 m!6084708))

(declare-fun m!6084748 () Bool)

(assert (=> d!1624994 m!6084748))

(declare-fun m!6084750 () Bool)

(assert (=> d!1624994 m!6084750))

(declare-fun m!6084754 () Bool)

(assert (=> b!5050444 m!6084754))

(assert (=> b!5050378 d!1624994))

(declare-fun b!5050468 () Bool)

(declare-fun e!3153253 () Bool)

(declare-fun tp!1412178 () Bool)

(assert (=> b!5050468 (= e!3153253 (and tp_is_empty!36943 tp!1412178))))

(assert (=> b!5050379 (= tp!1412173 e!3153253)))

(assert (= (and b!5050379 ((_ is Cons!58380) (t!371143 l!2779))) b!5050468))

(check-sat (not d!1624994) (not d!1624978) (not d!1624982) (not b!5050442) (not b!5050445) (not b!5050444) (not b!5050468) tp_is_empty!36943 (not b!5050425) (not d!1624990) (not b!5050391) (not b!5050426) (not b!5050424) (not d!1624986) (not b!5050446) (not b!5050393) (not b!5050448) (not b!5050428))
(check-sat)
(get-model)

(declare-fun d!1625000 () Bool)

(declare-fun c!866270 () Bool)

(assert (=> d!1625000 (= c!866270 ((_ is Nil!58380) lt!2086531))))

(declare-fun e!3153257 () (InoxSet T!104740))

(assert (=> d!1625000 (= (content!10392 lt!2086531) e!3153257)))

(declare-fun b!5050474 () Bool)

(assert (=> b!5050474 (= e!3153257 ((as const (Array T!104740 Bool)) false))))

(declare-fun b!5050475 () Bool)

(assert (=> b!5050475 (= e!3153257 ((_ map or) (store ((as const (Array T!104740 Bool)) false) (h!64828 lt!2086531) true) (content!10392 (t!371143 lt!2086531))))))

(assert (= (and d!1625000 c!866270) b!5050474))

(assert (= (and d!1625000 (not c!866270)) b!5050475))

(declare-fun m!6084762 () Bool)

(assert (=> b!5050475 m!6084762))

(declare-fun m!6084764 () Bool)

(assert (=> b!5050475 m!6084764))

(assert (=> d!1624978 d!1625000))

(declare-fun d!1625002 () Bool)

(declare-fun c!866271 () Bool)

(assert (=> d!1625002 (= c!866271 ((_ is Nil!58380) l!2779))))

(declare-fun e!3153258 () (InoxSet T!104740))

(assert (=> d!1625002 (= (content!10392 l!2779) e!3153258)))

(declare-fun b!5050476 () Bool)

(assert (=> b!5050476 (= e!3153258 ((as const (Array T!104740 Bool)) false))))

(declare-fun b!5050477 () Bool)

(assert (=> b!5050477 (= e!3153258 ((_ map or) (store ((as const (Array T!104740 Bool)) false) (h!64828 l!2779) true) (content!10392 (t!371143 l!2779))))))

(assert (= (and d!1625002 c!866271) b!5050476))

(assert (= (and d!1625002 (not c!866271)) b!5050477))

(declare-fun m!6084766 () Bool)

(assert (=> b!5050477 m!6084766))

(assert (=> b!5050477 m!6084750))

(assert (=> d!1624978 d!1625002))

(declare-fun d!1625004 () Bool)

(declare-fun lt!2086542 () Int)

(assert (=> d!1625004 (>= lt!2086542 0)))

(declare-fun e!3153259 () Int)

(assert (=> d!1625004 (= lt!2086542 e!3153259)))

(declare-fun c!866272 () Bool)

(assert (=> d!1625004 (= c!866272 ((_ is Nil!58380) (t!371143 (t!371143 l!2779))))))

(assert (=> d!1625004 (= (size!39003 (t!371143 (t!371143 l!2779))) lt!2086542)))

(declare-fun b!5050478 () Bool)

(assert (=> b!5050478 (= e!3153259 0)))

(declare-fun b!5050479 () Bool)

(assert (=> b!5050479 (= e!3153259 (+ 1 (size!39003 (t!371143 (t!371143 (t!371143 l!2779))))))))

(assert (= (and d!1625004 c!866272) b!5050478))

(assert (= (and d!1625004 (not c!866272)) b!5050479))

(declare-fun m!6084768 () Bool)

(assert (=> b!5050479 m!6084768))

(assert (=> b!5050391 d!1625004))

(assert (=> b!5050428 d!1624976))

(assert (=> b!5050393 d!1624972))

(assert (=> b!5050442 d!1624972))

(declare-fun d!1625006 () Bool)

(declare-fun c!866273 () Bool)

(assert (=> d!1625006 (= c!866273 ((_ is Nil!58380) lt!2086539))))

(declare-fun e!3153260 () (InoxSet T!104740))

(assert (=> d!1625006 (= (content!10392 lt!2086539) e!3153260)))

(declare-fun b!5050480 () Bool)

(assert (=> b!5050480 (= e!3153260 ((as const (Array T!104740 Bool)) false))))

(declare-fun b!5050481 () Bool)

(assert (=> b!5050481 (= e!3153260 ((_ map or) (store ((as const (Array T!104740 Bool)) false) (h!64828 lt!2086539) true) (content!10392 (t!371143 lt!2086539))))))

(assert (= (and d!1625006 c!866273) b!5050480))

(assert (= (and d!1625006 (not c!866273)) b!5050481))

(declare-fun m!6084770 () Bool)

(assert (=> b!5050481 m!6084770))

(declare-fun m!6084772 () Bool)

(assert (=> b!5050481 m!6084772))

(assert (=> d!1624994 d!1625006))

(declare-fun d!1625008 () Bool)

(declare-fun c!866274 () Bool)

(assert (=> d!1625008 (= c!866274 ((_ is Nil!58380) (t!371143 l!2779)))))

(declare-fun e!3153261 () (InoxSet T!104740))

(assert (=> d!1625008 (= (content!10392 (t!371143 l!2779)) e!3153261)))

(declare-fun b!5050482 () Bool)

(assert (=> b!5050482 (= e!3153261 ((as const (Array T!104740 Bool)) false))))

(declare-fun b!5050483 () Bool)

(assert (=> b!5050483 (= e!3153261 ((_ map or) (store ((as const (Array T!104740 Bool)) false) (h!64828 (t!371143 l!2779)) true) (content!10392 (t!371143 (t!371143 l!2779)))))))

(assert (= (and d!1625008 c!866274) b!5050482))

(assert (= (and d!1625008 (not c!866274)) b!5050483))

(declare-fun m!6084774 () Bool)

(assert (=> b!5050483 m!6084774))

(declare-fun m!6084776 () Bool)

(assert (=> b!5050483 m!6084776))

(assert (=> d!1624994 d!1625008))

(assert (=> b!5050425 d!1624976))

(assert (=> d!1624986 d!1624994))

(assert (=> d!1624986 d!1624982))

(declare-fun d!1625010 () Bool)

(assert (=> d!1625010 (= (take!885 (t!371143 l!2779) (- i!705 1)) (slice!907 (t!371143 l!2779) 0 (- i!705 1)))))

(assert (=> d!1625010 true))

(declare-fun _$11!1224 () Unit!149567)

(assert (=> d!1625010 (= (choose!37285 (t!371143 l!2779) (- i!705 1)) _$11!1224)))

(declare-fun bs!1189256 () Bool)

(assert (= bs!1189256 d!1625010))

(assert (=> bs!1189256 m!6084706))

(assert (=> bs!1189256 m!6084704))

(assert (=> d!1624986 d!1625010))

(assert (=> b!5050426 d!1624994))

(declare-fun d!1625014 () Bool)

(declare-fun e!3153266 () Bool)

(assert (=> d!1625014 e!3153266))

(declare-fun res!2150853 () Bool)

(assert (=> d!1625014 (=> (not res!2150853) (not e!3153266))))

(declare-fun lt!2086544 () List!58504)

(assert (=> d!1625014 (= res!2150853 (= ((_ map implies) (content!10392 lt!2086544) (content!10392 (drop!2684 l!2779 0))) ((as const (InoxSet T!104740)) true)))))

(declare-fun e!3153269 () List!58504)

(assert (=> d!1625014 (= lt!2086544 e!3153269)))

(declare-fun c!866280 () Bool)

(assert (=> d!1625014 (= c!866280 (or ((_ is Nil!58380) (drop!2684 l!2779 0)) (<= (- i!705 0) 0)))))

(assert (=> d!1625014 (= (take!885 (drop!2684 l!2779 0) (- i!705 0)) lt!2086544)))

(declare-fun b!5050491 () Bool)

(declare-fun e!3153268 () Int)

(assert (=> b!5050491 (= e!3153266 (= (size!39003 lt!2086544) e!3153268))))

(declare-fun c!866278 () Bool)

(assert (=> b!5050491 (= c!866278 (<= (- i!705 0) 0))))

(declare-fun b!5050492 () Bool)

(declare-fun e!3153267 () Int)

(assert (=> b!5050492 (= e!3153268 e!3153267)))

(declare-fun c!866279 () Bool)

(assert (=> b!5050492 (= c!866279 (>= (- i!705 0) (size!39003 (drop!2684 l!2779 0))))))

(declare-fun b!5050493 () Bool)

(assert (=> b!5050493 (= e!3153269 (Cons!58380 (h!64828 (drop!2684 l!2779 0)) (take!885 (t!371143 (drop!2684 l!2779 0)) (- (- i!705 0) 1))))))

(declare-fun b!5050494 () Bool)

(assert (=> b!5050494 (= e!3153267 (- i!705 0))))

(declare-fun b!5050495 () Bool)

(assert (=> b!5050495 (= e!3153267 (size!39003 (drop!2684 l!2779 0)))))

(declare-fun b!5050496 () Bool)

(assert (=> b!5050496 (= e!3153268 0)))

(declare-fun b!5050497 () Bool)

(assert (=> b!5050497 (= e!3153269 Nil!58380)))

(assert (= (and d!1625014 c!866280) b!5050497))

(assert (= (and d!1625014 (not c!866280)) b!5050493))

(assert (= (and d!1625014 res!2150853) b!5050491))

(assert (= (and b!5050491 c!866278) b!5050496))

(assert (= (and b!5050491 (not c!866278)) b!5050492))

(assert (= (and b!5050492 c!866279) b!5050495))

(assert (= (and b!5050492 (not c!866279)) b!5050494))

(assert (=> b!5050492 m!6084736))

(declare-fun m!6084788 () Bool)

(assert (=> b!5050492 m!6084788))

(declare-fun m!6084790 () Bool)

(assert (=> b!5050493 m!6084790))

(assert (=> b!5050495 m!6084736))

(assert (=> b!5050495 m!6084788))

(declare-fun m!6084792 () Bool)

(assert (=> d!1625014 m!6084792))

(assert (=> d!1625014 m!6084736))

(declare-fun m!6084794 () Bool)

(assert (=> d!1625014 m!6084794))

(declare-fun m!6084796 () Bool)

(assert (=> b!5050491 m!6084796))

(assert (=> d!1624990 d!1625014))

(declare-fun b!5050543 () Bool)

(declare-fun e!3153296 () Int)

(declare-fun call!351951 () Int)

(assert (=> b!5050543 (= e!3153296 call!351951)))

(declare-fun b!5050544 () Bool)

(declare-fun e!3153297 () Int)

(assert (=> b!5050544 (= e!3153296 e!3153297)))

(declare-fun c!866301 () Bool)

(assert (=> b!5050544 (= c!866301 (>= 0 call!351951))))

(declare-fun b!5050546 () Bool)

(declare-fun e!3153299 () List!58504)

(assert (=> b!5050546 (= e!3153299 Nil!58380)))

(declare-fun bm!351946 () Bool)

(assert (=> bm!351946 (= call!351951 (size!39003 l!2779))))

(declare-fun b!5050547 () Bool)

(assert (=> b!5050547 (= e!3153297 0)))

(declare-fun b!5050548 () Bool)

(declare-fun e!3153295 () List!58504)

(assert (=> b!5050548 (= e!3153295 (drop!2684 (t!371143 l!2779) (- 0 1)))))

(declare-fun b!5050549 () Bool)

(assert (=> b!5050549 (= e!3153295 l!2779)))

(declare-fun b!5050550 () Bool)

(assert (=> b!5050550 (= e!3153297 (- call!351951 0))))

(declare-fun b!5050551 () Bool)

(assert (=> b!5050551 (= e!3153299 e!3153295)))

(declare-fun c!866304 () Bool)

(assert (=> b!5050551 (= c!866304 (<= 0 0))))

(declare-fun d!1625018 () Bool)

(declare-fun e!3153298 () Bool)

(assert (=> d!1625018 e!3153298))

(declare-fun res!2150859 () Bool)

(assert (=> d!1625018 (=> (not res!2150859) (not e!3153298))))

(declare-fun lt!2086550 () List!58504)

(assert (=> d!1625018 (= res!2150859 (= ((_ map implies) (content!10392 lt!2086550) (content!10392 l!2779)) ((as const (InoxSet T!104740)) true)))))

(assert (=> d!1625018 (= lt!2086550 e!3153299)))

(declare-fun c!866303 () Bool)

(assert (=> d!1625018 (= c!866303 ((_ is Nil!58380) l!2779))))

(assert (=> d!1625018 (= (drop!2684 l!2779 0) lt!2086550)))

(declare-fun b!5050545 () Bool)

(assert (=> b!5050545 (= e!3153298 (= (size!39003 lt!2086550) e!3153296))))

(declare-fun c!866302 () Bool)

(assert (=> b!5050545 (= c!866302 (<= 0 0))))

(assert (= (and d!1625018 c!866303) b!5050546))

(assert (= (and d!1625018 (not c!866303)) b!5050551))

(assert (= (and b!5050551 c!866304) b!5050549))

(assert (= (and b!5050551 (not c!866304)) b!5050548))

(assert (= (and d!1625018 res!2150859) b!5050545))

(assert (= (and b!5050545 c!866302) b!5050543))

(assert (= (and b!5050545 (not c!866302)) b!5050544))

(assert (= (and b!5050544 c!866301) b!5050547))

(assert (= (and b!5050544 (not c!866301)) b!5050550))

(assert (= (or b!5050543 b!5050544 b!5050550) bm!351946))

(assert (=> bm!351946 m!6084696))

(declare-fun m!6084804 () Bool)

(assert (=> b!5050548 m!6084804))

(declare-fun m!6084806 () Bool)

(assert (=> d!1625018 m!6084806))

(assert (=> d!1625018 m!6084714))

(declare-fun m!6084808 () Bool)

(assert (=> b!5050545 m!6084808))

(assert (=> d!1624990 d!1625018))

(assert (=> b!5050448 d!1624972))

(declare-fun d!1625022 () Bool)

(declare-fun e!3153304 () Bool)

(assert (=> d!1625022 e!3153304))

(declare-fun res!2150861 () Bool)

(assert (=> d!1625022 (=> (not res!2150861) (not e!3153304))))

(declare-fun lt!2086552 () List!58504)

(assert (=> d!1625022 (= res!2150861 (= ((_ map implies) (content!10392 lt!2086552) (content!10392 (drop!2684 (t!371143 l!2779) 0))) ((as const (InoxSet T!104740)) true)))))

(declare-fun e!3153307 () List!58504)

(assert (=> d!1625022 (= lt!2086552 e!3153307)))

(declare-fun c!866310 () Bool)

(assert (=> d!1625022 (= c!866310 (or ((_ is Nil!58380) (drop!2684 (t!371143 l!2779) 0)) (<= (- (- i!705 1) 0) 0)))))

(assert (=> d!1625022 (= (take!885 (drop!2684 (t!371143 l!2779) 0) (- (- i!705 1) 0)) lt!2086552)))

(declare-fun b!5050559 () Bool)

(declare-fun e!3153306 () Int)

(assert (=> b!5050559 (= e!3153304 (= (size!39003 lt!2086552) e!3153306))))

(declare-fun c!866308 () Bool)

(assert (=> b!5050559 (= c!866308 (<= (- (- i!705 1) 0) 0))))

(declare-fun b!5050560 () Bool)

(declare-fun e!3153305 () Int)

(assert (=> b!5050560 (= e!3153306 e!3153305)))

(declare-fun c!866309 () Bool)

(assert (=> b!5050560 (= c!866309 (>= (- (- i!705 1) 0) (size!39003 (drop!2684 (t!371143 l!2779) 0))))))

(declare-fun b!5050561 () Bool)

(assert (=> b!5050561 (= e!3153307 (Cons!58380 (h!64828 (drop!2684 (t!371143 l!2779) 0)) (take!885 (t!371143 (drop!2684 (t!371143 l!2779) 0)) (- (- (- i!705 1) 0) 1))))))

(declare-fun b!5050562 () Bool)

(assert (=> b!5050562 (= e!3153305 (- (- i!705 1) 0))))

(declare-fun b!5050563 () Bool)

(assert (=> b!5050563 (= e!3153305 (size!39003 (drop!2684 (t!371143 l!2779) 0)))))

(declare-fun b!5050564 () Bool)

(assert (=> b!5050564 (= e!3153306 0)))

(declare-fun b!5050565 () Bool)

(assert (=> b!5050565 (= e!3153307 Nil!58380)))

(assert (= (and d!1625022 c!866310) b!5050565))

(assert (= (and d!1625022 (not c!866310)) b!5050561))

(assert (= (and d!1625022 res!2150861) b!5050559))

(assert (= (and b!5050559 c!866308) b!5050564))

(assert (= (and b!5050559 (not c!866308)) b!5050560))

(assert (= (and b!5050560 c!866309) b!5050563))

(assert (= (and b!5050560 (not c!866309)) b!5050562))

(assert (=> b!5050560 m!6084724))

(declare-fun m!6084820 () Bool)

(assert (=> b!5050560 m!6084820))

(declare-fun m!6084822 () Bool)

(assert (=> b!5050561 m!6084822))

(assert (=> b!5050563 m!6084724))

(assert (=> b!5050563 m!6084820))

(declare-fun m!6084824 () Bool)

(assert (=> d!1625022 m!6084824))

(assert (=> d!1625022 m!6084724))

(declare-fun m!6084826 () Bool)

(assert (=> d!1625022 m!6084826))

(declare-fun m!6084828 () Bool)

(assert (=> b!5050559 m!6084828))

(assert (=> d!1624982 d!1625022))

(declare-fun b!5050575 () Bool)

(declare-fun e!3153314 () Int)

(declare-fun call!351953 () Int)

(assert (=> b!5050575 (= e!3153314 call!351953)))

(declare-fun b!5050576 () Bool)

(declare-fun e!3153315 () Int)

(assert (=> b!5050576 (= e!3153314 e!3153315)))

(declare-fun c!866315 () Bool)

(assert (=> b!5050576 (= c!866315 (>= 0 call!351953))))

(declare-fun b!5050578 () Bool)

(declare-fun e!3153317 () List!58504)

(assert (=> b!5050578 (= e!3153317 Nil!58380)))

(declare-fun bm!351948 () Bool)

(assert (=> bm!351948 (= call!351953 (size!39003 (t!371143 l!2779)))))

(declare-fun b!5050579 () Bool)

(assert (=> b!5050579 (= e!3153315 0)))

(declare-fun b!5050580 () Bool)

(declare-fun e!3153313 () List!58504)

(assert (=> b!5050580 (= e!3153313 (drop!2684 (t!371143 (t!371143 l!2779)) (- 0 1)))))

(declare-fun b!5050581 () Bool)

(assert (=> b!5050581 (= e!3153313 (t!371143 l!2779))))

(declare-fun b!5050582 () Bool)

(assert (=> b!5050582 (= e!3153315 (- call!351953 0))))

(declare-fun b!5050583 () Bool)

(assert (=> b!5050583 (= e!3153317 e!3153313)))

(declare-fun c!866318 () Bool)

(assert (=> b!5050583 (= c!866318 (<= 0 0))))

(declare-fun d!1625026 () Bool)

(declare-fun e!3153316 () Bool)

(assert (=> d!1625026 e!3153316))

(declare-fun res!2150863 () Bool)

(assert (=> d!1625026 (=> (not res!2150863) (not e!3153316))))

(declare-fun lt!2086554 () List!58504)

(assert (=> d!1625026 (= res!2150863 (= ((_ map implies) (content!10392 lt!2086554) (content!10392 (t!371143 l!2779))) ((as const (InoxSet T!104740)) true)))))

(assert (=> d!1625026 (= lt!2086554 e!3153317)))

(declare-fun c!866317 () Bool)

(assert (=> d!1625026 (= c!866317 ((_ is Nil!58380) (t!371143 l!2779)))))

(assert (=> d!1625026 (= (drop!2684 (t!371143 l!2779) 0) lt!2086554)))

(declare-fun b!5050577 () Bool)

(assert (=> b!5050577 (= e!3153316 (= (size!39003 lt!2086554) e!3153314))))

(declare-fun c!866316 () Bool)

(assert (=> b!5050577 (= c!866316 (<= 0 0))))

(assert (= (and d!1625026 c!866317) b!5050578))

(assert (= (and d!1625026 (not c!866317)) b!5050583))

(assert (= (and b!5050583 c!866318) b!5050581))

(assert (= (and b!5050583 (not c!866318)) b!5050580))

(assert (= (and d!1625026 res!2150863) b!5050577))

(assert (= (and b!5050577 c!866316) b!5050575))

(assert (= (and b!5050577 (not c!866316)) b!5050576))

(assert (= (and b!5050576 c!866315) b!5050579))

(assert (= (and b!5050576 (not c!866315)) b!5050582))

(assert (= (or b!5050575 b!5050576 b!5050582) bm!351948))

(assert (=> bm!351948 m!6084708))

(declare-fun m!6084838 () Bool)

(assert (=> b!5050580 m!6084838))

(declare-fun m!6084840 () Bool)

(assert (=> d!1625026 m!6084840))

(assert (=> d!1625026 m!6084750))

(declare-fun m!6084842 () Bool)

(assert (=> b!5050577 m!6084842))

(assert (=> d!1624982 d!1625026))

(declare-fun d!1625032 () Bool)

(declare-fun lt!2086556 () Int)

(assert (=> d!1625032 (>= lt!2086556 0)))

(declare-fun e!3153319 () Int)

(assert (=> d!1625032 (= lt!2086556 e!3153319)))

(declare-fun c!866320 () Bool)

(assert (=> d!1625032 (= c!866320 ((_ is Nil!58380) lt!2086539))))

(assert (=> d!1625032 (= (size!39003 lt!2086539) lt!2086556)))

(declare-fun b!5050586 () Bool)

(assert (=> b!5050586 (= e!3153319 0)))

(declare-fun b!5050587 () Bool)

(assert (=> b!5050587 (= e!3153319 (+ 1 (size!39003 (t!371143 lt!2086539))))))

(assert (= (and d!1625032 c!866320) b!5050586))

(assert (= (and d!1625032 (not c!866320)) b!5050587))

(declare-fun m!6084844 () Bool)

(assert (=> b!5050587 m!6084844))

(assert (=> b!5050444 d!1625032))

(assert (=> b!5050445 d!1624972))

(declare-fun d!1625034 () Bool)

(declare-fun lt!2086557 () Int)

(assert (=> d!1625034 (>= lt!2086557 0)))

(declare-fun e!3153320 () Int)

(assert (=> d!1625034 (= lt!2086557 e!3153320)))

(declare-fun c!866321 () Bool)

(assert (=> d!1625034 (= c!866321 ((_ is Nil!58380) lt!2086531))))

(assert (=> d!1625034 (= (size!39003 lt!2086531) lt!2086557)))

(declare-fun b!5050588 () Bool)

(assert (=> b!5050588 (= e!3153320 0)))

(declare-fun b!5050589 () Bool)

(assert (=> b!5050589 (= e!3153320 (+ 1 (size!39003 (t!371143 lt!2086531))))))

(assert (= (and d!1625034 c!866321) b!5050588))

(assert (= (and d!1625034 (not c!866321)) b!5050589))

(declare-fun m!6084846 () Bool)

(assert (=> b!5050589 m!6084846))

(assert (=> b!5050424 d!1625034))

(declare-fun d!1625036 () Bool)

(declare-fun e!3153321 () Bool)

(assert (=> d!1625036 e!3153321))

(declare-fun res!2150864 () Bool)

(assert (=> d!1625036 (=> (not res!2150864) (not e!3153321))))

(declare-fun lt!2086558 () List!58504)

(assert (=> d!1625036 (= res!2150864 (= ((_ map implies) (content!10392 lt!2086558) (content!10392 (t!371143 (t!371143 l!2779)))) ((as const (InoxSet T!104740)) true)))))

(declare-fun e!3153324 () List!58504)

(assert (=> d!1625036 (= lt!2086558 e!3153324)))

(declare-fun c!866324 () Bool)

(assert (=> d!1625036 (= c!866324 (or ((_ is Nil!58380) (t!371143 (t!371143 l!2779))) (<= (- (- i!705 1) 1) 0)))))

(assert (=> d!1625036 (= (take!885 (t!371143 (t!371143 l!2779)) (- (- i!705 1) 1)) lt!2086558)))

(declare-fun b!5050590 () Bool)

(declare-fun e!3153323 () Int)

(assert (=> b!5050590 (= e!3153321 (= (size!39003 lt!2086558) e!3153323))))

(declare-fun c!866322 () Bool)

(assert (=> b!5050590 (= c!866322 (<= (- (- i!705 1) 1) 0))))

(declare-fun b!5050591 () Bool)

(declare-fun e!3153322 () Int)

(assert (=> b!5050591 (= e!3153323 e!3153322)))

(declare-fun c!866323 () Bool)

(assert (=> b!5050591 (= c!866323 (>= (- (- i!705 1) 1) (size!39003 (t!371143 (t!371143 l!2779)))))))

(declare-fun b!5050592 () Bool)

(assert (=> b!5050592 (= e!3153324 (Cons!58380 (h!64828 (t!371143 (t!371143 l!2779))) (take!885 (t!371143 (t!371143 (t!371143 l!2779))) (- (- (- i!705 1) 1) 1))))))

(declare-fun b!5050593 () Bool)

(assert (=> b!5050593 (= e!3153322 (- (- i!705 1) 1))))

(declare-fun b!5050594 () Bool)

(assert (=> b!5050594 (= e!3153322 (size!39003 (t!371143 (t!371143 l!2779))))))

(declare-fun b!5050595 () Bool)

(assert (=> b!5050595 (= e!3153323 0)))

(declare-fun b!5050596 () Bool)

(assert (=> b!5050596 (= e!3153324 Nil!58380)))

(assert (= (and d!1625036 c!866324) b!5050596))

(assert (= (and d!1625036 (not c!866324)) b!5050592))

(assert (= (and d!1625036 res!2150864) b!5050590))

(assert (= (and b!5050590 c!866322) b!5050595))

(assert (= (and b!5050590 (not c!866322)) b!5050591))

(assert (= (and b!5050591 c!866323) b!5050594))

(assert (= (and b!5050591 (not c!866323)) b!5050593))

(assert (=> b!5050591 m!6084710))

(declare-fun m!6084848 () Bool)

(assert (=> b!5050592 m!6084848))

(assert (=> b!5050594 m!6084710))

(declare-fun m!6084850 () Bool)

(assert (=> d!1625036 m!6084850))

(assert (=> d!1625036 m!6084776))

(declare-fun m!6084852 () Bool)

(assert (=> b!5050590 m!6084852))

(assert (=> b!5050446 d!1625036))

(declare-fun b!5050601 () Bool)

(declare-fun e!3153327 () Bool)

(declare-fun tp!1412180 () Bool)

(assert (=> b!5050601 (= e!3153327 (and tp_is_empty!36943 tp!1412180))))

(assert (=> b!5050468 (= tp!1412178 e!3153327)))

(assert (= (and b!5050468 ((_ is Cons!58380) (t!371143 (t!371143 l!2779)))) b!5050601))

(check-sat (not d!1625026) (not d!1625036) (not d!1625014) (not b!5050587) (not b!5050563) (not b!5050495) (not bm!351946) tp_is_empty!36943 (not b!5050493) (not b!5050545) (not b!5050577) (not b!5050477) (not b!5050594) (not b!5050491) (not b!5050475) (not b!5050580) (not b!5050559) (not bm!351948) (not d!1625010) (not b!5050590) (not b!5050591) (not b!5050483) (not b!5050589) (not b!5050479) (not b!5050601) (not d!1625018) (not b!5050481) (not d!1625022) (not b!5050592) (not b!5050560) (not b!5050492) (not b!5050548) (not b!5050561))
(check-sat)
