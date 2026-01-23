; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693810 () Bool)

(assert start!693810)

(declare-fun b_free!133745 () Bool)

(declare-fun b_next!134535 () Bool)

(assert (=> start!693810 (= b_free!133745 (not b_next!134535))))

(declare-fun tp!1961637 () Bool)

(declare-fun b_and!350841 () Bool)

(assert (=> start!693810 (= tp!1961637 b_and!350841)))

(declare-fun setIsEmpty!51264 () Bool)

(declare-fun setRes!51264 () Bool)

(assert (=> setIsEmpty!51264 setRes!51264))

(declare-fun b!7123348 () Bool)

(declare-fun e!4280527 () Bool)

(declare-fun tp_is_empty!45455 () Bool)

(declare-fun tp!1961638 () Bool)

(assert (=> b!7123348 (= e!4280527 (and tp_is_empty!45455 tp!1961638))))

(declare-fun b!7123349 () Bool)

(declare-fun e!4280525 () Bool)

(declare-datatypes ((B!3309 0))(
  ( (B!3310 (val!27977 Int)) )
))
(declare-datatypes ((List!69024 0))(
  ( (Nil!68900) (Cons!68900 (h!75348 B!3309) (t!382935 List!69024)) )
))
(declare-fun l2!759 () List!69024)

(declare-fun size!41442 (List!69024) Int)

(assert (=> b!7123349 (= e!4280525 (< (size!41442 (t!382935 l2!759)) (size!41442 l2!759)))))

(declare-fun res!2906401 () Bool)

(declare-fun e!4280528 () Bool)

(assert (=> start!693810 (=> (not res!2906401) (not e!4280528))))

(declare-fun l1!770 () List!69024)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2562452 () (InoxSet B!3309))

(declare-fun toList!11127 ((InoxSet B!3309)) List!69024)

(assert (=> start!693810 (= res!2906401 (= l1!770 (toList!11127 lt!2562452)))))

(declare-datatypes ((A!651 0))(
  ( (A!652 (val!27978 Int)) )
))
(declare-fun s1!424 () (InoxSet A!651))

(declare-fun s2!395 () (InoxSet A!651))

(declare-fun f!607 () Int)

(declare-fun map!16434 ((InoxSet A!651) Int) (InoxSet B!3309))

(assert (=> start!693810 (= lt!2562452 ((_ map or) (map!16434 s1!424 f!607) (map!16434 s2!395 f!607)))))

(assert (=> start!693810 e!4280528))

(declare-fun condSetEmpty!51265 () Bool)

(assert (=> start!693810 (= condSetEmpty!51265 (= s1!424 ((as const (Array A!651 Bool)) false)))))

(assert (=> start!693810 setRes!51264))

(assert (=> start!693810 e!4280527))

(declare-fun e!4280526 () Bool)

(assert (=> start!693810 e!4280526))

(declare-fun condSetEmpty!51264 () Bool)

(assert (=> start!693810 (= condSetEmpty!51264 (= s2!395 ((as const (Array A!651 Bool)) false)))))

(declare-fun setRes!51265 () Bool)

(assert (=> start!693810 setRes!51265))

(assert (=> start!693810 tp!1961637))

(declare-fun b!7123350 () Bool)

(declare-fun res!2906403 () Bool)

(declare-fun e!4280529 () Bool)

(assert (=> b!7123350 (=> (not res!2906403) (not e!4280529))))

(get-info :version)

(assert (=> b!7123350 (= res!2906403 ((_ is Cons!68900) l2!759))))

(declare-fun setIsEmpty!51265 () Bool)

(assert (=> setIsEmpty!51265 setRes!51265))

(declare-fun setNonEmpty!51264 () Bool)

(declare-fun tp!1961636 () Bool)

(declare-fun tp_is_empty!45453 () Bool)

(assert (=> setNonEmpty!51264 (= setRes!51265 (and tp!1961636 tp_is_empty!45453))))

(declare-fun setElem!51264 () A!651)

(declare-fun setRest!51264 () (InoxSet A!651))

(assert (=> setNonEmpty!51264 (= s2!395 ((_ map or) (store ((as const (Array A!651 Bool)) false) setElem!51264 true) setRest!51264))))

(declare-fun b!7123351 () Bool)

(assert (=> b!7123351 (= e!4280529 (not e!4280525))))

(declare-fun res!2906404 () Bool)

(assert (=> b!7123351 (=> res!2906404 e!4280525)))

(declare-fun lt!2562453 () List!69024)

(declare-fun subseq!763 (List!69024 List!69024) Bool)

(assert (=> b!7123351 (= res!2906404 (not (subseq!763 (t!382935 l2!759) lt!2562453)))))

(declare-datatypes ((Unit!162763 0))(
  ( (Unit!162764) )
))
(declare-fun lt!2562451 () Unit!162763)

(declare-fun subseqTail!36 (List!69024 List!69024) Unit!162763)

(assert (=> b!7123351 (= lt!2562451 (subseqTail!36 l2!759 lt!2562453))))

(declare-fun lt!2562449 () (InoxSet B!3309))

(assert (=> b!7123351 (= (select lt!2562452 (h!75348 l2!759)) (select lt!2562449 (h!75348 l2!759)))))

(declare-fun lt!2562450 () Unit!162763)

(declare-fun lemmaMapAssociativeElem!24 ((InoxSet A!651) (InoxSet A!651) Int B!3309) Unit!162763)

(assert (=> b!7123351 (= lt!2562450 (lemmaMapAssociativeElem!24 s1!424 s2!395 f!607 (h!75348 l2!759)))))

(declare-fun b!7123352 () Bool)

(assert (=> b!7123352 (= e!4280528 e!4280529)))

(declare-fun res!2906402 () Bool)

(assert (=> b!7123352 (=> (not res!2906402) (not e!4280529))))

(assert (=> b!7123352 (= res!2906402 (subseq!763 l2!759 lt!2562453))))

(assert (=> b!7123352 (= lt!2562453 (toList!11127 lt!2562449))))

(assert (=> b!7123352 (= lt!2562449 (map!16434 ((_ map or) s1!424 s2!395) f!607))))

(declare-fun b!7123353 () Bool)

(declare-fun tp!1961639 () Bool)

(assert (=> b!7123353 (= e!4280526 (and tp_is_empty!45455 tp!1961639))))

(declare-fun setNonEmpty!51265 () Bool)

(declare-fun tp!1961635 () Bool)

(assert (=> setNonEmpty!51265 (= setRes!51264 (and tp!1961635 tp_is_empty!45453))))

(declare-fun setElem!51265 () A!651)

(declare-fun setRest!51265 () (InoxSet A!651))

(assert (=> setNonEmpty!51265 (= s1!424 ((_ map or) (store ((as const (Array A!651 Bool)) false) setElem!51265 true) setRest!51265))))

(assert (= (and start!693810 res!2906401) b!7123352))

(assert (= (and b!7123352 res!2906402) b!7123350))

(assert (= (and b!7123350 res!2906403) b!7123351))

(assert (= (and b!7123351 (not res!2906404)) b!7123349))

(assert (= (and start!693810 condSetEmpty!51265) setIsEmpty!51264))

(assert (= (and start!693810 (not condSetEmpty!51265)) setNonEmpty!51265))

(assert (= (and start!693810 ((_ is Cons!68900) l2!759)) b!7123348))

(assert (= (and start!693810 ((_ is Cons!68900) l1!770)) b!7123353))

(assert (= (and start!693810 condSetEmpty!51264) setIsEmpty!51265))

(assert (= (and start!693810 (not condSetEmpty!51264)) setNonEmpty!51264))

(declare-fun m!7840656 () Bool)

(assert (=> b!7123349 m!7840656))

(declare-fun m!7840658 () Bool)

(assert (=> b!7123349 m!7840658))

(declare-fun m!7840660 () Bool)

(assert (=> start!693810 m!7840660))

(declare-fun m!7840662 () Bool)

(assert (=> start!693810 m!7840662))

(declare-fun m!7840664 () Bool)

(assert (=> start!693810 m!7840664))

(declare-fun m!7840666 () Bool)

(assert (=> b!7123351 m!7840666))

(declare-fun m!7840668 () Bool)

(assert (=> b!7123351 m!7840668))

(declare-fun m!7840670 () Bool)

(assert (=> b!7123351 m!7840670))

(declare-fun m!7840672 () Bool)

(assert (=> b!7123351 m!7840672))

(declare-fun m!7840674 () Bool)

(assert (=> b!7123351 m!7840674))

(declare-fun m!7840676 () Bool)

(assert (=> b!7123352 m!7840676))

(declare-fun m!7840678 () Bool)

(assert (=> b!7123352 m!7840678))

(declare-fun m!7840680 () Bool)

(assert (=> b!7123352 m!7840680))

(check-sat (not b!7123351) (not b!7123348) (not setNonEmpty!51265) (not setNonEmpty!51264) tp_is_empty!45455 b_and!350841 (not b_next!134535) (not start!693810) (not b!7123352) tp_is_empty!45453 (not b!7123353) (not b!7123349))
(check-sat b_and!350841 (not b_next!134535))
(get-model)

(declare-fun b!7123379 () Bool)

(declare-fun e!4280555 () Bool)

(assert (=> b!7123379 (= e!4280555 (subseq!763 (t!382935 l2!759) (t!382935 lt!2562453)))))

(declare-fun b!7123378 () Bool)

(declare-fun e!4280553 () Bool)

(declare-fun e!4280554 () Bool)

(assert (=> b!7123378 (= e!4280553 e!4280554)))

(declare-fun res!2906429 () Bool)

(assert (=> b!7123378 (=> res!2906429 e!4280554)))

(assert (=> b!7123378 (= res!2906429 e!4280555)))

(declare-fun res!2906430 () Bool)

(assert (=> b!7123378 (=> (not res!2906430) (not e!4280555))))

(assert (=> b!7123378 (= res!2906430 (= (h!75348 l2!759) (h!75348 lt!2562453)))))

(declare-fun b!7123380 () Bool)

(assert (=> b!7123380 (= e!4280554 (subseq!763 l2!759 (t!382935 lt!2562453)))))

(declare-fun d!2222959 () Bool)

(declare-fun res!2906428 () Bool)

(declare-fun e!4280556 () Bool)

(assert (=> d!2222959 (=> res!2906428 e!4280556)))

(assert (=> d!2222959 (= res!2906428 ((_ is Nil!68900) l2!759))))

(assert (=> d!2222959 (= (subseq!763 l2!759 lt!2562453) e!4280556)))

(declare-fun b!7123377 () Bool)

(assert (=> b!7123377 (= e!4280556 e!4280553)))

(declare-fun res!2906431 () Bool)

(assert (=> b!7123377 (=> (not res!2906431) (not e!4280553))))

(assert (=> b!7123377 (= res!2906431 ((_ is Cons!68900) lt!2562453))))

(assert (= (and d!2222959 (not res!2906428)) b!7123377))

(assert (= (and b!7123377 res!2906431) b!7123378))

(assert (= (and b!7123378 res!2906430) b!7123379))

(assert (= (and b!7123378 (not res!2906429)) b!7123380))

(declare-fun m!7840696 () Bool)

(assert (=> b!7123379 m!7840696))

(declare-fun m!7840698 () Bool)

(assert (=> b!7123380 m!7840698))

(assert (=> b!7123352 d!2222959))

(declare-fun d!2222967 () Bool)

(declare-fun e!4280559 () Bool)

(assert (=> d!2222967 e!4280559))

(declare-fun res!2906434 () Bool)

(assert (=> d!2222967 (=> (not res!2906434) (not e!4280559))))

(declare-fun lt!2562459 () List!69024)

(declare-fun noDuplicate!2799 (List!69024) Bool)

(assert (=> d!2222967 (= res!2906434 (noDuplicate!2799 lt!2562459))))

(declare-fun choose!55036 ((InoxSet B!3309)) List!69024)

(assert (=> d!2222967 (= lt!2562459 (choose!55036 lt!2562449))))

(assert (=> d!2222967 (= (toList!11127 lt!2562449) lt!2562459)))

(declare-fun b!7123383 () Bool)

(declare-fun content!14098 (List!69024) (InoxSet B!3309))

(assert (=> b!7123383 (= e!4280559 (= (content!14098 lt!2562459) lt!2562449))))

(assert (= (and d!2222967 res!2906434) b!7123383))

(declare-fun m!7840700 () Bool)

(assert (=> d!2222967 m!7840700))

(declare-fun m!7840702 () Bool)

(assert (=> d!2222967 m!7840702))

(declare-fun m!7840704 () Bool)

(assert (=> b!7123383 m!7840704))

(assert (=> b!7123352 d!2222967))

(declare-fun d!2222969 () Bool)

(declare-fun choose!55037 ((InoxSet A!651) Int) (InoxSet B!3309))

(assert (=> d!2222969 (= (map!16434 ((_ map or) s1!424 s2!395) f!607) (choose!55037 ((_ map or) s1!424 s2!395) f!607))))

(declare-fun bs!1886143 () Bool)

(assert (= bs!1886143 d!2222969))

(declare-fun m!7840706 () Bool)

(assert (=> bs!1886143 m!7840706))

(assert (=> b!7123352 d!2222969))

(declare-fun d!2222971 () Bool)

(declare-fun lt!2562464 () Int)

(assert (=> d!2222971 (>= lt!2562464 0)))

(declare-fun e!4280570 () Int)

(assert (=> d!2222971 (= lt!2562464 e!4280570)))

(declare-fun c!1329128 () Bool)

(assert (=> d!2222971 (= c!1329128 ((_ is Nil!68900) (t!382935 l2!759)))))

(assert (=> d!2222971 (= (size!41442 (t!382935 l2!759)) lt!2562464)))

(declare-fun b!7123402 () Bool)

(assert (=> b!7123402 (= e!4280570 0)))

(declare-fun b!7123403 () Bool)

(assert (=> b!7123403 (= e!4280570 (+ 1 (size!41442 (t!382935 (t!382935 l2!759)))))))

(assert (= (and d!2222971 c!1329128) b!7123402))

(assert (= (and d!2222971 (not c!1329128)) b!7123403))

(declare-fun m!7840708 () Bool)

(assert (=> b!7123403 m!7840708))

(assert (=> b!7123349 d!2222971))

(declare-fun d!2222973 () Bool)

(declare-fun lt!2562465 () Int)

(assert (=> d!2222973 (>= lt!2562465 0)))

(declare-fun e!4280571 () Int)

(assert (=> d!2222973 (= lt!2562465 e!4280571)))

(declare-fun c!1329129 () Bool)

(assert (=> d!2222973 (= c!1329129 ((_ is Nil!68900) l2!759))))

(assert (=> d!2222973 (= (size!41442 l2!759) lt!2562465)))

(declare-fun b!7123404 () Bool)

(assert (=> b!7123404 (= e!4280571 0)))

(declare-fun b!7123405 () Bool)

(assert (=> b!7123405 (= e!4280571 (+ 1 (size!41442 (t!382935 l2!759))))))

(assert (= (and d!2222973 c!1329129) b!7123404))

(assert (= (and d!2222973 (not c!1329129)) b!7123405))

(assert (=> b!7123405 m!7840656))

(assert (=> b!7123349 d!2222973))

(declare-fun d!2222975 () Bool)

(declare-fun e!4280572 () Bool)

(assert (=> d!2222975 e!4280572))

(declare-fun res!2906437 () Bool)

(assert (=> d!2222975 (=> (not res!2906437) (not e!4280572))))

(declare-fun lt!2562466 () List!69024)

(assert (=> d!2222975 (= res!2906437 (noDuplicate!2799 lt!2562466))))

(assert (=> d!2222975 (= lt!2562466 (choose!55036 lt!2562452))))

(assert (=> d!2222975 (= (toList!11127 lt!2562452) lt!2562466)))

(declare-fun b!7123406 () Bool)

(assert (=> b!7123406 (= e!4280572 (= (content!14098 lt!2562466) lt!2562452))))

(assert (= (and d!2222975 res!2906437) b!7123406))

(declare-fun m!7840710 () Bool)

(assert (=> d!2222975 m!7840710))

(declare-fun m!7840712 () Bool)

(assert (=> d!2222975 m!7840712))

(declare-fun m!7840714 () Bool)

(assert (=> b!7123406 m!7840714))

(assert (=> start!693810 d!2222975))

(declare-fun d!2222977 () Bool)

(assert (=> d!2222977 (= (map!16434 s1!424 f!607) (choose!55037 s1!424 f!607))))

(declare-fun bs!1886144 () Bool)

(assert (= bs!1886144 d!2222977))

(declare-fun m!7840716 () Bool)

(assert (=> bs!1886144 m!7840716))

(assert (=> start!693810 d!2222977))

(declare-fun d!2222979 () Bool)

(assert (=> d!2222979 (= (map!16434 s2!395 f!607) (choose!55037 s2!395 f!607))))

(declare-fun bs!1886145 () Bool)

(assert (= bs!1886145 d!2222979))

(declare-fun m!7840718 () Bool)

(assert (=> bs!1886145 m!7840718))

(assert (=> start!693810 d!2222979))

(declare-fun b!7123409 () Bool)

(declare-fun e!4280575 () Bool)

(assert (=> b!7123409 (= e!4280575 (subseq!763 (t!382935 (t!382935 l2!759)) (t!382935 lt!2562453)))))

(declare-fun b!7123408 () Bool)

(declare-fun e!4280573 () Bool)

(declare-fun e!4280574 () Bool)

(assert (=> b!7123408 (= e!4280573 e!4280574)))

(declare-fun res!2906439 () Bool)

(assert (=> b!7123408 (=> res!2906439 e!4280574)))

(assert (=> b!7123408 (= res!2906439 e!4280575)))

(declare-fun res!2906440 () Bool)

(assert (=> b!7123408 (=> (not res!2906440) (not e!4280575))))

(assert (=> b!7123408 (= res!2906440 (= (h!75348 (t!382935 l2!759)) (h!75348 lt!2562453)))))

(declare-fun b!7123410 () Bool)

(assert (=> b!7123410 (= e!4280574 (subseq!763 (t!382935 l2!759) (t!382935 lt!2562453)))))

(declare-fun d!2222981 () Bool)

(declare-fun res!2906438 () Bool)

(declare-fun e!4280576 () Bool)

(assert (=> d!2222981 (=> res!2906438 e!4280576)))

(assert (=> d!2222981 (= res!2906438 ((_ is Nil!68900) (t!382935 l2!759)))))

(assert (=> d!2222981 (= (subseq!763 (t!382935 l2!759) lt!2562453) e!4280576)))

(declare-fun b!7123407 () Bool)

(assert (=> b!7123407 (= e!4280576 e!4280573)))

(declare-fun res!2906441 () Bool)

(assert (=> b!7123407 (=> (not res!2906441) (not e!4280573))))

(assert (=> b!7123407 (= res!2906441 ((_ is Cons!68900) lt!2562453))))

(assert (= (and d!2222981 (not res!2906438)) b!7123407))

(assert (= (and b!7123407 res!2906441) b!7123408))

(assert (= (and b!7123408 res!2906440) b!7123409))

(assert (= (and b!7123408 (not res!2906439)) b!7123410))

(declare-fun m!7840720 () Bool)

(assert (=> b!7123409 m!7840720))

(assert (=> b!7123410 m!7840696))

(assert (=> b!7123351 d!2222981))

(declare-fun c!1329143 () Bool)

(declare-fun bm!650771 () Bool)

(declare-fun call!650776 () Unit!162763)

(assert (=> bm!650771 (= call!650776 (subseqTail!36 (ite c!1329143 l2!759 (t!382935 l2!759)) (t!382935 lt!2562453)))))

(declare-fun b!7123445 () Bool)

(declare-fun e!4280599 () Bool)

(assert (=> b!7123445 (= e!4280599 (subseq!763 l2!759 lt!2562453))))

(declare-fun b!7123446 () Bool)

(declare-fun e!4280600 () Unit!162763)

(assert (=> b!7123446 (= e!4280600 call!650776)))

(declare-fun b!7123447 () Bool)

(declare-fun e!4280598 () Unit!162763)

(assert (=> b!7123447 (= e!4280598 call!650776)))

(declare-fun b!7123448 () Bool)

(declare-fun e!4280597 () Unit!162763)

(declare-fun Unit!162767 () Unit!162763)

(assert (=> b!7123448 (= e!4280597 Unit!162767)))

(declare-fun d!2222983 () Bool)

(declare-fun tail!13928 (List!69024) List!69024)

(assert (=> d!2222983 (subseq!763 (tail!13928 l2!759) lt!2562453)))

(declare-fun lt!2562477 () Unit!162763)

(assert (=> d!2222983 (= lt!2562477 e!4280597)))

(declare-fun c!1329145 () Bool)

(assert (=> d!2222983 (= c!1329145 (and ((_ is Cons!68900) l2!759) ((_ is Cons!68900) lt!2562453)))))

(assert (=> d!2222983 e!4280599))

(declare-fun res!2906449 () Bool)

(assert (=> d!2222983 (=> (not res!2906449) (not e!4280599))))

(declare-fun isEmpty!40012 (List!69024) Bool)

(assert (=> d!2222983 (= res!2906449 (not (isEmpty!40012 l2!759)))))

(assert (=> d!2222983 (= (subseqTail!36 l2!759 lt!2562453) lt!2562477)))

(declare-fun b!7123449 () Bool)

(declare-fun c!1329144 () Bool)

(assert (=> b!7123449 (= c!1329144 (not (isEmpty!40012 (t!382935 l2!759))))))

(assert (=> b!7123449 (= e!4280598 e!4280600)))

(declare-fun b!7123450 () Bool)

(assert (=> b!7123450 (= e!4280597 e!4280598)))

(assert (=> b!7123450 (= c!1329143 (subseq!763 l2!759 (t!382935 lt!2562453)))))

(declare-fun b!7123451 () Bool)

(declare-fun Unit!162768 () Unit!162763)

(assert (=> b!7123451 (= e!4280600 Unit!162768)))

(assert (= (and d!2222983 res!2906449) b!7123445))

(assert (= (and d!2222983 c!1329145) b!7123450))

(assert (= (and d!2222983 (not c!1329145)) b!7123448))

(assert (= (and b!7123450 c!1329143) b!7123447))

(assert (= (and b!7123450 (not c!1329143)) b!7123449))

(assert (= (and b!7123449 c!1329144) b!7123446))

(assert (= (and b!7123449 (not c!1329144)) b!7123451))

(assert (= (or b!7123447 b!7123446) bm!650771))

(declare-fun m!7840750 () Bool)

(assert (=> d!2222983 m!7840750))

(assert (=> d!2222983 m!7840750))

(declare-fun m!7840752 () Bool)

(assert (=> d!2222983 m!7840752))

(declare-fun m!7840754 () Bool)

(assert (=> d!2222983 m!7840754))

(declare-fun m!7840756 () Bool)

(assert (=> bm!650771 m!7840756))

(declare-fun m!7840758 () Bool)

(assert (=> b!7123449 m!7840758))

(assert (=> b!7123450 m!7840698))

(assert (=> b!7123445 m!7840676))

(assert (=> b!7123351 d!2222983))

(declare-fun d!2222997 () Bool)

(assert (=> d!2222997 (= (select ((_ map or) (map!16434 s1!424 f!607) (map!16434 s2!395 f!607)) (h!75348 l2!759)) (select (map!16434 ((_ map or) s1!424 s2!395) f!607) (h!75348 l2!759)))))

(declare-fun lt!2562481 () Unit!162763)

(declare-fun choose!55039 ((InoxSet A!651) (InoxSet A!651) Int B!3309) Unit!162763)

(assert (=> d!2222997 (= lt!2562481 (choose!55039 s1!424 s2!395 f!607 (h!75348 l2!759)))))

(assert (=> d!2222997 (= (lemmaMapAssociativeElem!24 s1!424 s2!395 f!607 (h!75348 l2!759)) lt!2562481)))

(declare-fun bs!1886148 () Bool)

(assert (= bs!1886148 d!2222997))

(assert (=> bs!1886148 m!7840664))

(assert (=> bs!1886148 m!7840662))

(assert (=> bs!1886148 m!7840680))

(declare-fun m!7840760 () Bool)

(assert (=> bs!1886148 m!7840760))

(declare-fun m!7840762 () Bool)

(assert (=> bs!1886148 m!7840762))

(declare-fun m!7840764 () Bool)

(assert (=> bs!1886148 m!7840764))

(assert (=> b!7123351 d!2222997))

(declare-fun condSetEmpty!51272 () Bool)

(assert (=> setNonEmpty!51265 (= condSetEmpty!51272 (= setRest!51265 ((as const (Array A!651 Bool)) false)))))

(declare-fun setRes!51272 () Bool)

(assert (=> setNonEmpty!51265 (= tp!1961635 setRes!51272)))

(declare-fun setIsEmpty!51272 () Bool)

(assert (=> setIsEmpty!51272 setRes!51272))

(declare-fun setNonEmpty!51272 () Bool)

(declare-fun tp!1961650 () Bool)

(assert (=> setNonEmpty!51272 (= setRes!51272 (and tp!1961650 tp_is_empty!45453))))

(declare-fun setElem!51272 () A!651)

(declare-fun setRest!51272 () (InoxSet A!651))

(assert (=> setNonEmpty!51272 (= setRest!51265 ((_ map or) (store ((as const (Array A!651 Bool)) false) setElem!51272 true) setRest!51272))))

(assert (= (and setNonEmpty!51265 condSetEmpty!51272) setIsEmpty!51272))

(assert (= (and setNonEmpty!51265 (not condSetEmpty!51272)) setNonEmpty!51272))

(declare-fun b!7123468 () Bool)

(declare-fun e!4280608 () Bool)

(declare-fun tp!1961653 () Bool)

(assert (=> b!7123468 (= e!4280608 (and tp_is_empty!45455 tp!1961653))))

(assert (=> b!7123353 (= tp!1961639 e!4280608)))

(assert (= (and b!7123353 ((_ is Cons!68900) (t!382935 l1!770))) b!7123468))

(declare-fun b!7123469 () Bool)

(declare-fun e!4280609 () Bool)

(declare-fun tp!1961654 () Bool)

(assert (=> b!7123469 (= e!4280609 (and tp_is_empty!45455 tp!1961654))))

(assert (=> b!7123348 (= tp!1961638 e!4280609)))

(assert (= (and b!7123348 ((_ is Cons!68900) (t!382935 l2!759))) b!7123469))

(declare-fun condSetEmpty!51273 () Bool)

(assert (=> setNonEmpty!51264 (= condSetEmpty!51273 (= setRest!51264 ((as const (Array A!651 Bool)) false)))))

(declare-fun setRes!51273 () Bool)

(assert (=> setNonEmpty!51264 (= tp!1961636 setRes!51273)))

(declare-fun setIsEmpty!51273 () Bool)

(assert (=> setIsEmpty!51273 setRes!51273))

(declare-fun setNonEmpty!51273 () Bool)

(declare-fun tp!1961655 () Bool)

(assert (=> setNonEmpty!51273 (= setRes!51273 (and tp!1961655 tp_is_empty!45453))))

(declare-fun setElem!51273 () A!651)

(declare-fun setRest!51273 () (InoxSet A!651))

(assert (=> setNonEmpty!51273 (= setRest!51264 ((_ map or) (store ((as const (Array A!651 Bool)) false) setElem!51273 true) setRest!51273))))

(assert (= (and setNonEmpty!51264 condSetEmpty!51273) setIsEmpty!51273))

(assert (= (and setNonEmpty!51264 (not condSetEmpty!51273)) setNonEmpty!51273))

(check-sat (not d!2222977) (not b!7123406) (not d!2222983) (not b!7123380) (not b!7123445) (not d!2222979) tp_is_empty!45455 (not setNonEmpty!51272) (not bm!650771) (not b_next!134535) (not b!7123403) (not setNonEmpty!51273) (not d!2222967) (not d!2222975) (not b!7123409) (not b!7123405) tp_is_empty!45453 (not b!7123449) (not d!2222997) (not b!7123379) (not b!7123468) (not b!7123450) b_and!350841 (not b!7123383) (not b!7123410) (not d!2222969) (not b!7123469))
(check-sat b_and!350841 (not b_next!134535))
