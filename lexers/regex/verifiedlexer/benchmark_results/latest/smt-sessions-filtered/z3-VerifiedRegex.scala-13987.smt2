; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740166 () Bool)

(assert start!740166)

(declare-fun b!7773229 () Bool)

(declare-fun e!4605457 () Bool)

(declare-fun tp!2283860 () Bool)

(declare-fun tp!2283857 () Bool)

(assert (=> b!7773229 (= e!4605457 (and tp!2283860 tp!2283857))))

(declare-fun b!7773230 () Bool)

(declare-fun res!3098516 () Bool)

(declare-fun e!4605455 () Bool)

(assert (=> b!7773230 (=> (not res!3098516) (not e!4605455))))

(declare-datatypes ((C!41864 0))(
  ( (C!41865 (val!31372 Int)) )
))
(declare-datatypes ((List!73608 0))(
  ( (Nil!73484) (Cons!73484 (h!79932 C!41864) (t!388343 List!73608)) )
))
(declare-fun s!14292 () List!73608)

(get-info :version)

(assert (=> b!7773230 (= res!3098516 ((_ is Cons!73484) s!14292))))

(declare-fun b!7773231 () Bool)

(declare-fun e!4605454 () Bool)

(assert (=> b!7773231 (= e!4605454 e!4605455)))

(declare-fun res!3098514 () Bool)

(assert (=> b!7773231 (=> (not res!3098514) (not e!4605455))))

(declare-datatypes ((Regex!20769 0))(
  ( (ElementMatch!20769 (c!1432636 C!41864)) (Concat!29614 (regOne!42050 Regex!20769) (regTwo!42050 Regex!20769)) (EmptyExpr!20769) (Star!20769 (reg!21098 Regex!20769)) (EmptyLang!20769) (Union!20769 (regOne!42051 Regex!20769) (regTwo!42051 Regex!20769)) )
))
(declare-fun lt!2671666 () Regex!20769)

(declare-fun matchR!10229 (Regex!20769 List!73608) Bool)

(assert (=> b!7773231 (= res!3098514 (matchR!10229 lt!2671666 s!14292))))

(declare-fun r1!6279 () Regex!20769)

(declare-fun r2!6217 () Regex!20769)

(assert (=> b!7773231 (= lt!2671666 (Concat!29614 r1!6279 r2!6217))))

(declare-fun b!7773232 () Bool)

(declare-fun res!3098515 () Bool)

(assert (=> b!7773232 (=> (not res!3098515) (not e!4605454))))

(declare-fun validRegex!11183 (Regex!20769) Bool)

(assert (=> b!7773232 (= res!3098515 (validRegex!11183 r2!6217))))

(declare-fun b!7773233 () Bool)

(declare-fun e!4605453 () Bool)

(declare-fun tp!2283862 () Bool)

(declare-fun tp!2283853 () Bool)

(assert (=> b!7773233 (= e!4605453 (and tp!2283862 tp!2283853))))

(declare-fun b!7773234 () Bool)

(declare-fun tp!2283859 () Bool)

(assert (=> b!7773234 (= e!4605457 tp!2283859)))

(declare-fun res!3098513 () Bool)

(assert (=> start!740166 (=> (not res!3098513) (not e!4605454))))

(assert (=> start!740166 (= res!3098513 (validRegex!11183 r1!6279))))

(assert (=> start!740166 e!4605454))

(assert (=> start!740166 e!4605457))

(assert (=> start!740166 e!4605453))

(declare-fun e!4605456 () Bool)

(assert (=> start!740166 e!4605456))

(declare-fun b!7773235 () Bool)

(declare-fun tp!2283855 () Bool)

(assert (=> b!7773235 (= e!4605453 tp!2283855)))

(declare-fun b!7773236 () Bool)

(declare-fun derivativeStep!6112 (Regex!20769 C!41864) Regex!20769)

(assert (=> b!7773236 (= e!4605455 (not (validRegex!11183 (derivativeStep!6112 lt!2671666 (h!79932 s!14292)))))))

(declare-fun b!7773237 () Bool)

(declare-fun tp_is_empty!51893 () Bool)

(assert (=> b!7773237 (= e!4605457 tp_is_empty!51893)))

(declare-fun b!7773238 () Bool)

(declare-fun tp!2283863 () Bool)

(declare-fun tp!2283854 () Bool)

(assert (=> b!7773238 (= e!4605457 (and tp!2283863 tp!2283854))))

(declare-fun b!7773239 () Bool)

(declare-fun tp!2283856 () Bool)

(declare-fun tp!2283861 () Bool)

(assert (=> b!7773239 (= e!4605453 (and tp!2283856 tp!2283861))))

(declare-fun b!7773240 () Bool)

(assert (=> b!7773240 (= e!4605453 tp_is_empty!51893)))

(declare-fun b!7773241 () Bool)

(declare-fun tp!2283858 () Bool)

(assert (=> b!7773241 (= e!4605456 (and tp_is_empty!51893 tp!2283858))))

(assert (= (and start!740166 res!3098513) b!7773232))

(assert (= (and b!7773232 res!3098515) b!7773231))

(assert (= (and b!7773231 res!3098514) b!7773230))

(assert (= (and b!7773230 res!3098516) b!7773236))

(assert (= (and start!740166 ((_ is ElementMatch!20769) r1!6279)) b!7773237))

(assert (= (and start!740166 ((_ is Concat!29614) r1!6279)) b!7773238))

(assert (= (and start!740166 ((_ is Star!20769) r1!6279)) b!7773234))

(assert (= (and start!740166 ((_ is Union!20769) r1!6279)) b!7773229))

(assert (= (and start!740166 ((_ is ElementMatch!20769) r2!6217)) b!7773240))

(assert (= (and start!740166 ((_ is Concat!29614) r2!6217)) b!7773233))

(assert (= (and start!740166 ((_ is Star!20769) r2!6217)) b!7773235))

(assert (= (and start!740166 ((_ is Union!20769) r2!6217)) b!7773239))

(assert (= (and start!740166 ((_ is Cons!73484) s!14292)) b!7773241))

(declare-fun m!8225824 () Bool)

(assert (=> b!7773231 m!8225824))

(declare-fun m!8225826 () Bool)

(assert (=> b!7773232 m!8225826))

(declare-fun m!8225828 () Bool)

(assert (=> start!740166 m!8225828))

(declare-fun m!8225830 () Bool)

(assert (=> b!7773236 m!8225830))

(assert (=> b!7773236 m!8225830))

(declare-fun m!8225832 () Bool)

(assert (=> b!7773236 m!8225832))

(check-sat (not b!7773236) (not b!7773229) (not b!7773231) (not b!7773233) (not b!7773241) (not b!7773232) tp_is_empty!51893 (not b!7773239) (not b!7773235) (not start!740166) (not b!7773238) (not b!7773234))
(check-sat)
(get-model)

(declare-fun c!1432648 () Bool)

(declare-fun bm!720452 () Bool)

(declare-fun c!1432647 () Bool)

(declare-fun call!720458 () Bool)

(assert (=> bm!720452 (= call!720458 (validRegex!11183 (ite c!1432648 (reg!21098 r2!6217) (ite c!1432647 (regOne!42051 r2!6217) (regOne!42050 r2!6217)))))))

(declare-fun bm!720453 () Bool)

(declare-fun call!720459 () Bool)

(assert (=> bm!720453 (= call!720459 (validRegex!11183 (ite c!1432647 (regTwo!42051 r2!6217) (regTwo!42050 r2!6217))))))

(declare-fun bm!720454 () Bool)

(declare-fun call!720457 () Bool)

(assert (=> bm!720454 (= call!720457 call!720458)))

(declare-fun b!7773288 () Bool)

(declare-fun e!4605488 () Bool)

(assert (=> b!7773288 (= e!4605488 call!720459)))

(declare-fun b!7773289 () Bool)

(declare-fun e!4605487 () Bool)

(declare-fun e!4605489 () Bool)

(assert (=> b!7773289 (= e!4605487 e!4605489)))

(assert (=> b!7773289 (= c!1432648 ((_ is Star!20769) r2!6217))))

(declare-fun b!7773290 () Bool)

(declare-fun e!4605491 () Bool)

(assert (=> b!7773290 (= e!4605491 call!720458)))

(declare-fun b!7773291 () Bool)

(declare-fun res!3098543 () Bool)

(declare-fun e!4605486 () Bool)

(assert (=> b!7773291 (=> res!3098543 e!4605486)))

(assert (=> b!7773291 (= res!3098543 (not ((_ is Concat!29614) r2!6217)))))

(declare-fun e!4605490 () Bool)

(assert (=> b!7773291 (= e!4605490 e!4605486)))

(declare-fun b!7773293 () Bool)

(assert (=> b!7773293 (= e!4605489 e!4605490)))

(assert (=> b!7773293 (= c!1432647 ((_ is Union!20769) r2!6217))))

(declare-fun b!7773294 () Bool)

(declare-fun res!3098544 () Bool)

(assert (=> b!7773294 (=> (not res!3098544) (not e!4605488))))

(assert (=> b!7773294 (= res!3098544 call!720457)))

(assert (=> b!7773294 (= e!4605490 e!4605488)))

(declare-fun b!7773295 () Bool)

(assert (=> b!7773295 (= e!4605489 e!4605491)))

(declare-fun res!3098545 () Bool)

(declare-fun nullable!9159 (Regex!20769) Bool)

(assert (=> b!7773295 (= res!3098545 (not (nullable!9159 (reg!21098 r2!6217))))))

(assert (=> b!7773295 (=> (not res!3098545) (not e!4605491))))

(declare-fun b!7773296 () Bool)

(declare-fun e!4605492 () Bool)

(assert (=> b!7773296 (= e!4605492 call!720459)))

(declare-fun d!2344662 () Bool)

(declare-fun res!3098547 () Bool)

(assert (=> d!2344662 (=> res!3098547 e!4605487)))

(assert (=> d!2344662 (= res!3098547 ((_ is ElementMatch!20769) r2!6217))))

(assert (=> d!2344662 (= (validRegex!11183 r2!6217) e!4605487)))

(declare-fun b!7773292 () Bool)

(assert (=> b!7773292 (= e!4605486 e!4605492)))

(declare-fun res!3098546 () Bool)

(assert (=> b!7773292 (=> (not res!3098546) (not e!4605492))))

(assert (=> b!7773292 (= res!3098546 call!720457)))

(assert (= (and d!2344662 (not res!3098547)) b!7773289))

(assert (= (and b!7773289 c!1432648) b!7773295))

(assert (= (and b!7773289 (not c!1432648)) b!7773293))

(assert (= (and b!7773295 res!3098545) b!7773290))

(assert (= (and b!7773293 c!1432647) b!7773294))

(assert (= (and b!7773293 (not c!1432647)) b!7773291))

(assert (= (and b!7773294 res!3098544) b!7773288))

(assert (= (and b!7773291 (not res!3098543)) b!7773292))

(assert (= (and b!7773292 res!3098546) b!7773296))

(assert (= (or b!7773294 b!7773292) bm!720454))

(assert (= (or b!7773288 b!7773296) bm!720453))

(assert (= (or b!7773290 bm!720454) bm!720452))

(declare-fun m!8225834 () Bool)

(assert (=> bm!720452 m!8225834))

(declare-fun m!8225836 () Bool)

(assert (=> bm!720453 m!8225836))

(declare-fun m!8225838 () Bool)

(assert (=> b!7773295 m!8225838))

(assert (=> b!7773232 d!2344662))

(declare-fun b!7773384 () Bool)

(declare-fun res!3098599 () Bool)

(declare-fun e!4605554 () Bool)

(assert (=> b!7773384 (=> (not res!3098599) (not e!4605554))))

(declare-fun isEmpty!42159 (List!73608) Bool)

(declare-fun tail!15435 (List!73608) List!73608)

(assert (=> b!7773384 (= res!3098599 (isEmpty!42159 (tail!15435 s!14292)))))

(declare-fun b!7773385 () Bool)

(declare-fun e!4605550 () Bool)

(declare-fun e!4605555 () Bool)

(assert (=> b!7773385 (= e!4605550 e!4605555)))

(declare-fun res!3098603 () Bool)

(assert (=> b!7773385 (=> (not res!3098603) (not e!4605555))))

(declare-fun lt!2671672 () Bool)

(assert (=> b!7773385 (= res!3098603 (not lt!2671672))))

(declare-fun b!7773386 () Bool)

(declare-fun head!15894 (List!73608) C!41864)

(assert (=> b!7773386 (= e!4605554 (= (head!15894 s!14292) (c!1432636 lt!2671666)))))

(declare-fun bm!720473 () Bool)

(declare-fun call!720478 () Bool)

(assert (=> bm!720473 (= call!720478 (isEmpty!42159 s!14292))))

(declare-fun b!7773387 () Bool)

(declare-fun e!4605553 () Bool)

(assert (=> b!7773387 (= e!4605553 (not (= (head!15894 s!14292) (c!1432636 lt!2671666))))))

(declare-fun b!7773388 () Bool)

(declare-fun e!4605549 () Bool)

(assert (=> b!7773388 (= e!4605549 (matchR!10229 (derivativeStep!6112 lt!2671666 (head!15894 s!14292)) (tail!15435 s!14292)))))

(declare-fun b!7773389 () Bool)

(declare-fun e!4605551 () Bool)

(assert (=> b!7773389 (= e!4605551 (= lt!2671672 call!720478))))

(declare-fun b!7773390 () Bool)

(declare-fun e!4605552 () Bool)

(assert (=> b!7773390 (= e!4605552 (not lt!2671672))))

(declare-fun b!7773391 () Bool)

(declare-fun res!3098604 () Bool)

(assert (=> b!7773391 (=> (not res!3098604) (not e!4605554))))

(assert (=> b!7773391 (= res!3098604 (not call!720478))))

(declare-fun b!7773392 () Bool)

(declare-fun res!3098602 () Bool)

(assert (=> b!7773392 (=> res!3098602 e!4605550)))

(assert (=> b!7773392 (= res!3098602 e!4605554)))

(declare-fun res!3098598 () Bool)

(assert (=> b!7773392 (=> (not res!3098598) (not e!4605554))))

(assert (=> b!7773392 (= res!3098598 lt!2671672)))

(declare-fun d!2344664 () Bool)

(assert (=> d!2344664 e!4605551))

(declare-fun c!1432669 () Bool)

(assert (=> d!2344664 (= c!1432669 ((_ is EmptyExpr!20769) lt!2671666))))

(assert (=> d!2344664 (= lt!2671672 e!4605549)))

(declare-fun c!1432670 () Bool)

(assert (=> d!2344664 (= c!1432670 (isEmpty!42159 s!14292))))

(assert (=> d!2344664 (validRegex!11183 lt!2671666)))

(assert (=> d!2344664 (= (matchR!10229 lt!2671666 s!14292) lt!2671672)))

(declare-fun b!7773393 () Bool)

(assert (=> b!7773393 (= e!4605549 (nullable!9159 lt!2671666))))

(declare-fun b!7773394 () Bool)

(declare-fun res!3098600 () Bool)

(assert (=> b!7773394 (=> res!3098600 e!4605550)))

(assert (=> b!7773394 (= res!3098600 (not ((_ is ElementMatch!20769) lt!2671666)))))

(assert (=> b!7773394 (= e!4605552 e!4605550)))

(declare-fun b!7773395 () Bool)

(assert (=> b!7773395 (= e!4605551 e!4605552)))

(declare-fun c!1432668 () Bool)

(assert (=> b!7773395 (= c!1432668 ((_ is EmptyLang!20769) lt!2671666))))

(declare-fun b!7773396 () Bool)

(declare-fun res!3098597 () Bool)

(assert (=> b!7773396 (=> res!3098597 e!4605553)))

(assert (=> b!7773396 (= res!3098597 (not (isEmpty!42159 (tail!15435 s!14292))))))

(declare-fun b!7773397 () Bool)

(assert (=> b!7773397 (= e!4605555 e!4605553)))

(declare-fun res!3098601 () Bool)

(assert (=> b!7773397 (=> res!3098601 e!4605553)))

(assert (=> b!7773397 (= res!3098601 call!720478)))

(assert (= (and d!2344664 c!1432670) b!7773393))

(assert (= (and d!2344664 (not c!1432670)) b!7773388))

(assert (= (and d!2344664 c!1432669) b!7773389))

(assert (= (and d!2344664 (not c!1432669)) b!7773395))

(assert (= (and b!7773395 c!1432668) b!7773390))

(assert (= (and b!7773395 (not c!1432668)) b!7773394))

(assert (= (and b!7773394 (not res!3098600)) b!7773392))

(assert (= (and b!7773392 res!3098598) b!7773391))

(assert (= (and b!7773391 res!3098604) b!7773384))

(assert (= (and b!7773384 res!3098599) b!7773386))

(assert (= (and b!7773392 (not res!3098602)) b!7773385))

(assert (= (and b!7773385 res!3098603) b!7773397))

(assert (= (and b!7773397 (not res!3098601)) b!7773396))

(assert (= (and b!7773396 (not res!3098597)) b!7773387))

(assert (= (or b!7773389 b!7773391 b!7773397) bm!720473))

(declare-fun m!8225874 () Bool)

(assert (=> bm!720473 m!8225874))

(declare-fun m!8225876 () Bool)

(assert (=> b!7773393 m!8225876))

(declare-fun m!8225878 () Bool)

(assert (=> b!7773387 m!8225878))

(assert (=> d!2344664 m!8225874))

(declare-fun m!8225880 () Bool)

(assert (=> d!2344664 m!8225880))

(declare-fun m!8225882 () Bool)

(assert (=> b!7773396 m!8225882))

(assert (=> b!7773396 m!8225882))

(declare-fun m!8225884 () Bool)

(assert (=> b!7773396 m!8225884))

(assert (=> b!7773386 m!8225878))

(assert (=> b!7773388 m!8225878))

(assert (=> b!7773388 m!8225878))

(declare-fun m!8225886 () Bool)

(assert (=> b!7773388 m!8225886))

(assert (=> b!7773388 m!8225882))

(assert (=> b!7773388 m!8225886))

(assert (=> b!7773388 m!8225882))

(declare-fun m!8225888 () Bool)

(assert (=> b!7773388 m!8225888))

(assert (=> b!7773384 m!8225882))

(assert (=> b!7773384 m!8225882))

(assert (=> b!7773384 m!8225884))

(assert (=> b!7773231 d!2344664))

(declare-fun c!1432671 () Bool)

(declare-fun c!1432672 () Bool)

(declare-fun bm!720474 () Bool)

(declare-fun call!720480 () Bool)

(assert (=> bm!720474 (= call!720480 (validRegex!11183 (ite c!1432672 (reg!21098 (derivativeStep!6112 lt!2671666 (h!79932 s!14292))) (ite c!1432671 (regOne!42051 (derivativeStep!6112 lt!2671666 (h!79932 s!14292))) (regOne!42050 (derivativeStep!6112 lt!2671666 (h!79932 s!14292)))))))))

(declare-fun bm!720475 () Bool)

(declare-fun call!720481 () Bool)

(assert (=> bm!720475 (= call!720481 (validRegex!11183 (ite c!1432671 (regTwo!42051 (derivativeStep!6112 lt!2671666 (h!79932 s!14292))) (regTwo!42050 (derivativeStep!6112 lt!2671666 (h!79932 s!14292))))))))

(declare-fun bm!720476 () Bool)

(declare-fun call!720479 () Bool)

(assert (=> bm!720476 (= call!720479 call!720480)))

(declare-fun b!7773398 () Bool)

(declare-fun e!4605558 () Bool)

(assert (=> b!7773398 (= e!4605558 call!720481)))

(declare-fun b!7773399 () Bool)

(declare-fun e!4605557 () Bool)

(declare-fun e!4605559 () Bool)

(assert (=> b!7773399 (= e!4605557 e!4605559)))

(assert (=> b!7773399 (= c!1432672 ((_ is Star!20769) (derivativeStep!6112 lt!2671666 (h!79932 s!14292))))))

(declare-fun b!7773400 () Bool)

(declare-fun e!4605561 () Bool)

(assert (=> b!7773400 (= e!4605561 call!720480)))

(declare-fun b!7773401 () Bool)

(declare-fun res!3098605 () Bool)

(declare-fun e!4605556 () Bool)

(assert (=> b!7773401 (=> res!3098605 e!4605556)))

(assert (=> b!7773401 (= res!3098605 (not ((_ is Concat!29614) (derivativeStep!6112 lt!2671666 (h!79932 s!14292)))))))

(declare-fun e!4605560 () Bool)

(assert (=> b!7773401 (= e!4605560 e!4605556)))

(declare-fun b!7773403 () Bool)

(assert (=> b!7773403 (= e!4605559 e!4605560)))

(assert (=> b!7773403 (= c!1432671 ((_ is Union!20769) (derivativeStep!6112 lt!2671666 (h!79932 s!14292))))))

(declare-fun b!7773404 () Bool)

(declare-fun res!3098606 () Bool)

(assert (=> b!7773404 (=> (not res!3098606) (not e!4605558))))

(assert (=> b!7773404 (= res!3098606 call!720479)))

(assert (=> b!7773404 (= e!4605560 e!4605558)))

(declare-fun b!7773405 () Bool)

(assert (=> b!7773405 (= e!4605559 e!4605561)))

(declare-fun res!3098607 () Bool)

(assert (=> b!7773405 (= res!3098607 (not (nullable!9159 (reg!21098 (derivativeStep!6112 lt!2671666 (h!79932 s!14292))))))))

(assert (=> b!7773405 (=> (not res!3098607) (not e!4605561))))

(declare-fun b!7773406 () Bool)

(declare-fun e!4605562 () Bool)

(assert (=> b!7773406 (= e!4605562 call!720481)))

(declare-fun d!2344674 () Bool)

(declare-fun res!3098609 () Bool)

(assert (=> d!2344674 (=> res!3098609 e!4605557)))

(assert (=> d!2344674 (= res!3098609 ((_ is ElementMatch!20769) (derivativeStep!6112 lt!2671666 (h!79932 s!14292))))))

(assert (=> d!2344674 (= (validRegex!11183 (derivativeStep!6112 lt!2671666 (h!79932 s!14292))) e!4605557)))

(declare-fun b!7773402 () Bool)

(assert (=> b!7773402 (= e!4605556 e!4605562)))

(declare-fun res!3098608 () Bool)

(assert (=> b!7773402 (=> (not res!3098608) (not e!4605562))))

(assert (=> b!7773402 (= res!3098608 call!720479)))

(assert (= (and d!2344674 (not res!3098609)) b!7773399))

(assert (= (and b!7773399 c!1432672) b!7773405))

(assert (= (and b!7773399 (not c!1432672)) b!7773403))

(assert (= (and b!7773405 res!3098607) b!7773400))

(assert (= (and b!7773403 c!1432671) b!7773404))

(assert (= (and b!7773403 (not c!1432671)) b!7773401))

(assert (= (and b!7773404 res!3098606) b!7773398))

(assert (= (and b!7773401 (not res!3098605)) b!7773402))

(assert (= (and b!7773402 res!3098608) b!7773406))

(assert (= (or b!7773404 b!7773402) bm!720476))

(assert (= (or b!7773398 b!7773406) bm!720475))

(assert (= (or b!7773400 bm!720476) bm!720474))

(declare-fun m!8225890 () Bool)

(assert (=> bm!720474 m!8225890))

(declare-fun m!8225892 () Bool)

(assert (=> bm!720475 m!8225892))

(declare-fun m!8225894 () Bool)

(assert (=> b!7773405 m!8225894))

(assert (=> b!7773236 d!2344674))

(declare-fun b!7773475 () Bool)

(declare-fun c!1432702 () Bool)

(assert (=> b!7773475 (= c!1432702 (nullable!9159 (regOne!42050 lt!2671666)))))

(declare-fun e!4605594 () Regex!20769)

(declare-fun e!4605592 () Regex!20769)

(assert (=> b!7773475 (= e!4605594 e!4605592)))

(declare-fun bm!720498 () Bool)

(declare-fun call!720505 () Regex!20769)

(declare-fun call!720502 () Regex!20769)

(assert (=> bm!720498 (= call!720505 call!720502)))

(declare-fun b!7773476 () Bool)

(declare-fun e!4605593 () Regex!20769)

(assert (=> b!7773476 (= e!4605593 (ite (= (h!79932 s!14292) (c!1432636 lt!2671666)) EmptyExpr!20769 EmptyLang!20769))))

(declare-fun b!7773477 () Bool)

(assert (=> b!7773477 (= e!4605592 (Union!20769 (Concat!29614 call!720505 (regTwo!42050 lt!2671666)) EmptyLang!20769))))

(declare-fun c!1432698 () Bool)

(declare-fun c!1432701 () Bool)

(declare-fun bm!720499 () Bool)

(declare-fun call!720504 () Regex!20769)

(assert (=> bm!720499 (= call!720504 (derivativeStep!6112 (ite c!1432698 (regTwo!42051 lt!2671666) (ite c!1432701 (reg!21098 lt!2671666) (regOne!42050 lt!2671666))) (h!79932 s!14292)))))

(declare-fun b!7773478 () Bool)

(declare-fun e!4605596 () Regex!20769)

(assert (=> b!7773478 (= e!4605596 e!4605594)))

(assert (=> b!7773478 (= c!1432701 ((_ is Star!20769) lt!2671666))))

(declare-fun b!7773479 () Bool)

(assert (=> b!7773479 (= c!1432698 ((_ is Union!20769) lt!2671666))))

(assert (=> b!7773479 (= e!4605593 e!4605596)))

(declare-fun bm!720500 () Bool)

(assert (=> bm!720500 (= call!720502 (derivativeStep!6112 (ite c!1432698 (regOne!42051 lt!2671666) (ite c!1432702 (regTwo!42050 lt!2671666) (regOne!42050 lt!2671666))) (h!79932 s!14292)))))

(declare-fun call!720503 () Regex!20769)

(declare-fun b!7773480 () Bool)

(assert (=> b!7773480 (= e!4605592 (Union!20769 (Concat!29614 call!720503 (regTwo!42050 lt!2671666)) call!720505))))

(declare-fun b!7773481 () Bool)

(declare-fun e!4605595 () Regex!20769)

(assert (=> b!7773481 (= e!4605595 EmptyLang!20769)))

(declare-fun b!7773482 () Bool)

(assert (=> b!7773482 (= e!4605595 e!4605593)))

(declare-fun c!1432699 () Bool)

(assert (=> b!7773482 (= c!1432699 ((_ is ElementMatch!20769) lt!2671666))))

(declare-fun bm!720497 () Bool)

(assert (=> bm!720497 (= call!720503 call!720504)))

(declare-fun d!2344676 () Bool)

(declare-fun lt!2671678 () Regex!20769)

(assert (=> d!2344676 (validRegex!11183 lt!2671678)))

(assert (=> d!2344676 (= lt!2671678 e!4605595)))

(declare-fun c!1432700 () Bool)

(assert (=> d!2344676 (= c!1432700 (or ((_ is EmptyExpr!20769) lt!2671666) ((_ is EmptyLang!20769) lt!2671666)))))

(assert (=> d!2344676 (validRegex!11183 lt!2671666)))

(assert (=> d!2344676 (= (derivativeStep!6112 lt!2671666 (h!79932 s!14292)) lt!2671678)))

(declare-fun b!7773483 () Bool)

(assert (=> b!7773483 (= e!4605594 (Concat!29614 call!720503 lt!2671666))))

(declare-fun b!7773484 () Bool)

(assert (=> b!7773484 (= e!4605596 (Union!20769 call!720502 call!720504))))

(assert (= (and d!2344676 c!1432700) b!7773481))

(assert (= (and d!2344676 (not c!1432700)) b!7773482))

(assert (= (and b!7773482 c!1432699) b!7773476))

(assert (= (and b!7773482 (not c!1432699)) b!7773479))

(assert (= (and b!7773479 c!1432698) b!7773484))

(assert (= (and b!7773479 (not c!1432698)) b!7773478))

(assert (= (and b!7773478 c!1432701) b!7773483))

(assert (= (and b!7773478 (not c!1432701)) b!7773475))

(assert (= (and b!7773475 c!1432702) b!7773480))

(assert (= (and b!7773475 (not c!1432702)) b!7773477))

(assert (= (or b!7773480 b!7773477) bm!720498))

(assert (= (or b!7773483 b!7773480) bm!720497))

(assert (= (or b!7773484 bm!720497) bm!720499))

(assert (= (or b!7773484 bm!720498) bm!720500))

(declare-fun m!8225904 () Bool)

(assert (=> b!7773475 m!8225904))

(declare-fun m!8225906 () Bool)

(assert (=> bm!720499 m!8225906))

(declare-fun m!8225908 () Bool)

(assert (=> bm!720500 m!8225908))

(declare-fun m!8225910 () Bool)

(assert (=> d!2344676 m!8225910))

(assert (=> d!2344676 m!8225880))

(assert (=> b!7773236 d!2344676))

(declare-fun c!1432704 () Bool)

(declare-fun c!1432703 () Bool)

(declare-fun bm!720501 () Bool)

(declare-fun call!720507 () Bool)

(assert (=> bm!720501 (= call!720507 (validRegex!11183 (ite c!1432704 (reg!21098 r1!6279) (ite c!1432703 (regOne!42051 r1!6279) (regOne!42050 r1!6279)))))))

(declare-fun bm!720502 () Bool)

(declare-fun call!720508 () Bool)

(assert (=> bm!720502 (= call!720508 (validRegex!11183 (ite c!1432703 (regTwo!42051 r1!6279) (regTwo!42050 r1!6279))))))

(declare-fun bm!720503 () Bool)

(declare-fun call!720506 () Bool)

(assert (=> bm!720503 (= call!720506 call!720507)))

(declare-fun b!7773509 () Bool)

(declare-fun e!4605606 () Bool)

(assert (=> b!7773509 (= e!4605606 call!720508)))

(declare-fun b!7773510 () Bool)

(declare-fun e!4605605 () Bool)

(declare-fun e!4605607 () Bool)

(assert (=> b!7773510 (= e!4605605 e!4605607)))

(assert (=> b!7773510 (= c!1432704 ((_ is Star!20769) r1!6279))))

(declare-fun b!7773511 () Bool)

(declare-fun e!4605609 () Bool)

(assert (=> b!7773511 (= e!4605609 call!720507)))

(declare-fun b!7773512 () Bool)

(declare-fun res!3098610 () Bool)

(declare-fun e!4605604 () Bool)

(assert (=> b!7773512 (=> res!3098610 e!4605604)))

(assert (=> b!7773512 (= res!3098610 (not ((_ is Concat!29614) r1!6279)))))

(declare-fun e!4605608 () Bool)

(assert (=> b!7773512 (= e!4605608 e!4605604)))

(declare-fun b!7773514 () Bool)

(assert (=> b!7773514 (= e!4605607 e!4605608)))

(assert (=> b!7773514 (= c!1432703 ((_ is Union!20769) r1!6279))))

(declare-fun b!7773515 () Bool)

(declare-fun res!3098611 () Bool)

(assert (=> b!7773515 (=> (not res!3098611) (not e!4605606))))

(assert (=> b!7773515 (= res!3098611 call!720506)))

(assert (=> b!7773515 (= e!4605608 e!4605606)))

(declare-fun b!7773516 () Bool)

(assert (=> b!7773516 (= e!4605607 e!4605609)))

(declare-fun res!3098612 () Bool)

(assert (=> b!7773516 (= res!3098612 (not (nullable!9159 (reg!21098 r1!6279))))))

(assert (=> b!7773516 (=> (not res!3098612) (not e!4605609))))

(declare-fun b!7773517 () Bool)

(declare-fun e!4605610 () Bool)

(assert (=> b!7773517 (= e!4605610 call!720508)))

(declare-fun d!2344678 () Bool)

(declare-fun res!3098614 () Bool)

(assert (=> d!2344678 (=> res!3098614 e!4605605)))

(assert (=> d!2344678 (= res!3098614 ((_ is ElementMatch!20769) r1!6279))))

(assert (=> d!2344678 (= (validRegex!11183 r1!6279) e!4605605)))

(declare-fun b!7773513 () Bool)

(assert (=> b!7773513 (= e!4605604 e!4605610)))

(declare-fun res!3098613 () Bool)

(assert (=> b!7773513 (=> (not res!3098613) (not e!4605610))))

(assert (=> b!7773513 (= res!3098613 call!720506)))

(assert (= (and d!2344678 (not res!3098614)) b!7773510))

(assert (= (and b!7773510 c!1432704) b!7773516))

(assert (= (and b!7773510 (not c!1432704)) b!7773514))

(assert (= (and b!7773516 res!3098612) b!7773511))

(assert (= (and b!7773514 c!1432703) b!7773515))

(assert (= (and b!7773514 (not c!1432703)) b!7773512))

(assert (= (and b!7773515 res!3098611) b!7773509))

(assert (= (and b!7773512 (not res!3098610)) b!7773513))

(assert (= (and b!7773513 res!3098613) b!7773517))

(assert (= (or b!7773515 b!7773513) bm!720503))

(assert (= (or b!7773509 b!7773517) bm!720502))

(assert (= (or b!7773511 bm!720503) bm!720501))

(declare-fun m!8225912 () Bool)

(assert (=> bm!720501 m!8225912))

(declare-fun m!8225914 () Bool)

(assert (=> bm!720502 m!8225914))

(declare-fun m!8225916 () Bool)

(assert (=> b!7773516 m!8225916))

(assert (=> start!740166 d!2344678))

(declare-fun b!7773543 () Bool)

(declare-fun e!4605617 () Bool)

(declare-fun tp!2283939 () Bool)

(assert (=> b!7773543 (= e!4605617 tp!2283939)))

(declare-fun b!7773544 () Bool)

(declare-fun tp!2283941 () Bool)

(declare-fun tp!2283940 () Bool)

(assert (=> b!7773544 (= e!4605617 (and tp!2283941 tp!2283940))))

(assert (=> b!7773238 (= tp!2283863 e!4605617)))

(declare-fun b!7773542 () Bool)

(declare-fun tp!2283937 () Bool)

(declare-fun tp!2283938 () Bool)

(assert (=> b!7773542 (= e!4605617 (and tp!2283937 tp!2283938))))

(declare-fun b!7773541 () Bool)

(assert (=> b!7773541 (= e!4605617 tp_is_empty!51893)))

(assert (= (and b!7773238 ((_ is ElementMatch!20769) (regOne!42050 r1!6279))) b!7773541))

(assert (= (and b!7773238 ((_ is Concat!29614) (regOne!42050 r1!6279))) b!7773542))

(assert (= (and b!7773238 ((_ is Star!20769) (regOne!42050 r1!6279))) b!7773543))

(assert (= (and b!7773238 ((_ is Union!20769) (regOne!42050 r1!6279))) b!7773544))

(declare-fun b!7773547 () Bool)

(declare-fun e!4605618 () Bool)

(declare-fun tp!2283944 () Bool)

(assert (=> b!7773547 (= e!4605618 tp!2283944)))

(declare-fun b!7773548 () Bool)

(declare-fun tp!2283946 () Bool)

(declare-fun tp!2283945 () Bool)

(assert (=> b!7773548 (= e!4605618 (and tp!2283946 tp!2283945))))

(assert (=> b!7773238 (= tp!2283854 e!4605618)))

(declare-fun b!7773546 () Bool)

(declare-fun tp!2283942 () Bool)

(declare-fun tp!2283943 () Bool)

(assert (=> b!7773546 (= e!4605618 (and tp!2283942 tp!2283943))))

(declare-fun b!7773545 () Bool)

(assert (=> b!7773545 (= e!4605618 tp_is_empty!51893)))

(assert (= (and b!7773238 ((_ is ElementMatch!20769) (regTwo!42050 r1!6279))) b!7773545))

(assert (= (and b!7773238 ((_ is Concat!29614) (regTwo!42050 r1!6279))) b!7773546))

(assert (= (and b!7773238 ((_ is Star!20769) (regTwo!42050 r1!6279))) b!7773547))

(assert (= (and b!7773238 ((_ is Union!20769) (regTwo!42050 r1!6279))) b!7773548))

(declare-fun b!7773553 () Bool)

(declare-fun e!4605621 () Bool)

(declare-fun tp!2283949 () Bool)

(assert (=> b!7773553 (= e!4605621 (and tp_is_empty!51893 tp!2283949))))

(assert (=> b!7773241 (= tp!2283858 e!4605621)))

(assert (= (and b!7773241 ((_ is Cons!73484) (t!388343 s!14292))) b!7773553))

(declare-fun b!7773556 () Bool)

(declare-fun e!4605622 () Bool)

(declare-fun tp!2283952 () Bool)

(assert (=> b!7773556 (= e!4605622 tp!2283952)))

(declare-fun b!7773557 () Bool)

(declare-fun tp!2283954 () Bool)

(declare-fun tp!2283953 () Bool)

(assert (=> b!7773557 (= e!4605622 (and tp!2283954 tp!2283953))))

(assert (=> b!7773235 (= tp!2283855 e!4605622)))

(declare-fun b!7773555 () Bool)

(declare-fun tp!2283950 () Bool)

(declare-fun tp!2283951 () Bool)

(assert (=> b!7773555 (= e!4605622 (and tp!2283950 tp!2283951))))

(declare-fun b!7773554 () Bool)

(assert (=> b!7773554 (= e!4605622 tp_is_empty!51893)))

(assert (= (and b!7773235 ((_ is ElementMatch!20769) (reg!21098 r2!6217))) b!7773554))

(assert (= (and b!7773235 ((_ is Concat!29614) (reg!21098 r2!6217))) b!7773555))

(assert (= (and b!7773235 ((_ is Star!20769) (reg!21098 r2!6217))) b!7773556))

(assert (= (and b!7773235 ((_ is Union!20769) (reg!21098 r2!6217))) b!7773557))

(declare-fun b!7773560 () Bool)

(declare-fun e!4605623 () Bool)

(declare-fun tp!2283957 () Bool)

(assert (=> b!7773560 (= e!4605623 tp!2283957)))

(declare-fun b!7773561 () Bool)

(declare-fun tp!2283959 () Bool)

(declare-fun tp!2283958 () Bool)

(assert (=> b!7773561 (= e!4605623 (and tp!2283959 tp!2283958))))

(assert (=> b!7773229 (= tp!2283860 e!4605623)))

(declare-fun b!7773559 () Bool)

(declare-fun tp!2283955 () Bool)

(declare-fun tp!2283956 () Bool)

(assert (=> b!7773559 (= e!4605623 (and tp!2283955 tp!2283956))))

(declare-fun b!7773558 () Bool)

(assert (=> b!7773558 (= e!4605623 tp_is_empty!51893)))

(assert (= (and b!7773229 ((_ is ElementMatch!20769) (regOne!42051 r1!6279))) b!7773558))

(assert (= (and b!7773229 ((_ is Concat!29614) (regOne!42051 r1!6279))) b!7773559))

(assert (= (and b!7773229 ((_ is Star!20769) (regOne!42051 r1!6279))) b!7773560))

(assert (= (and b!7773229 ((_ is Union!20769) (regOne!42051 r1!6279))) b!7773561))

(declare-fun b!7773564 () Bool)

(declare-fun e!4605624 () Bool)

(declare-fun tp!2283962 () Bool)

(assert (=> b!7773564 (= e!4605624 tp!2283962)))

(declare-fun b!7773565 () Bool)

(declare-fun tp!2283964 () Bool)

(declare-fun tp!2283963 () Bool)

(assert (=> b!7773565 (= e!4605624 (and tp!2283964 tp!2283963))))

(assert (=> b!7773229 (= tp!2283857 e!4605624)))

(declare-fun b!7773563 () Bool)

(declare-fun tp!2283960 () Bool)

(declare-fun tp!2283961 () Bool)

(assert (=> b!7773563 (= e!4605624 (and tp!2283960 tp!2283961))))

(declare-fun b!7773562 () Bool)

(assert (=> b!7773562 (= e!4605624 tp_is_empty!51893)))

(assert (= (and b!7773229 ((_ is ElementMatch!20769) (regTwo!42051 r1!6279))) b!7773562))

(assert (= (and b!7773229 ((_ is Concat!29614) (regTwo!42051 r1!6279))) b!7773563))

(assert (= (and b!7773229 ((_ is Star!20769) (regTwo!42051 r1!6279))) b!7773564))

(assert (= (and b!7773229 ((_ is Union!20769) (regTwo!42051 r1!6279))) b!7773565))

(declare-fun b!7773568 () Bool)

(declare-fun e!4605625 () Bool)

(declare-fun tp!2283967 () Bool)

(assert (=> b!7773568 (= e!4605625 tp!2283967)))

(declare-fun b!7773569 () Bool)

(declare-fun tp!2283969 () Bool)

(declare-fun tp!2283968 () Bool)

(assert (=> b!7773569 (= e!4605625 (and tp!2283969 tp!2283968))))

(assert (=> b!7773239 (= tp!2283856 e!4605625)))

(declare-fun b!7773567 () Bool)

(declare-fun tp!2283965 () Bool)

(declare-fun tp!2283966 () Bool)

(assert (=> b!7773567 (= e!4605625 (and tp!2283965 tp!2283966))))

(declare-fun b!7773566 () Bool)

(assert (=> b!7773566 (= e!4605625 tp_is_empty!51893)))

(assert (= (and b!7773239 ((_ is ElementMatch!20769) (regOne!42051 r2!6217))) b!7773566))

(assert (= (and b!7773239 ((_ is Concat!29614) (regOne!42051 r2!6217))) b!7773567))

(assert (= (and b!7773239 ((_ is Star!20769) (regOne!42051 r2!6217))) b!7773568))

(assert (= (and b!7773239 ((_ is Union!20769) (regOne!42051 r2!6217))) b!7773569))

(declare-fun b!7773572 () Bool)

(declare-fun e!4605626 () Bool)

(declare-fun tp!2283972 () Bool)

(assert (=> b!7773572 (= e!4605626 tp!2283972)))

(declare-fun b!7773573 () Bool)

(declare-fun tp!2283974 () Bool)

(declare-fun tp!2283973 () Bool)

(assert (=> b!7773573 (= e!4605626 (and tp!2283974 tp!2283973))))

(assert (=> b!7773239 (= tp!2283861 e!4605626)))

(declare-fun b!7773571 () Bool)

(declare-fun tp!2283970 () Bool)

(declare-fun tp!2283971 () Bool)

(assert (=> b!7773571 (= e!4605626 (and tp!2283970 tp!2283971))))

(declare-fun b!7773570 () Bool)

(assert (=> b!7773570 (= e!4605626 tp_is_empty!51893)))

(assert (= (and b!7773239 ((_ is ElementMatch!20769) (regTwo!42051 r2!6217))) b!7773570))

(assert (= (and b!7773239 ((_ is Concat!29614) (regTwo!42051 r2!6217))) b!7773571))

(assert (= (and b!7773239 ((_ is Star!20769) (regTwo!42051 r2!6217))) b!7773572))

(assert (= (and b!7773239 ((_ is Union!20769) (regTwo!42051 r2!6217))) b!7773573))

(declare-fun b!7773576 () Bool)

(declare-fun e!4605627 () Bool)

(declare-fun tp!2283977 () Bool)

(assert (=> b!7773576 (= e!4605627 tp!2283977)))

(declare-fun b!7773577 () Bool)

(declare-fun tp!2283979 () Bool)

(declare-fun tp!2283978 () Bool)

(assert (=> b!7773577 (= e!4605627 (and tp!2283979 tp!2283978))))

(assert (=> b!7773234 (= tp!2283859 e!4605627)))

(declare-fun b!7773575 () Bool)

(declare-fun tp!2283975 () Bool)

(declare-fun tp!2283976 () Bool)

(assert (=> b!7773575 (= e!4605627 (and tp!2283975 tp!2283976))))

(declare-fun b!7773574 () Bool)

(assert (=> b!7773574 (= e!4605627 tp_is_empty!51893)))

(assert (= (and b!7773234 ((_ is ElementMatch!20769) (reg!21098 r1!6279))) b!7773574))

(assert (= (and b!7773234 ((_ is Concat!29614) (reg!21098 r1!6279))) b!7773575))

(assert (= (and b!7773234 ((_ is Star!20769) (reg!21098 r1!6279))) b!7773576))

(assert (= (and b!7773234 ((_ is Union!20769) (reg!21098 r1!6279))) b!7773577))

(declare-fun b!7773580 () Bool)

(declare-fun e!4605628 () Bool)

(declare-fun tp!2283982 () Bool)

(assert (=> b!7773580 (= e!4605628 tp!2283982)))

(declare-fun b!7773581 () Bool)

(declare-fun tp!2283984 () Bool)

(declare-fun tp!2283983 () Bool)

(assert (=> b!7773581 (= e!4605628 (and tp!2283984 tp!2283983))))

(assert (=> b!7773233 (= tp!2283862 e!4605628)))

(declare-fun b!7773579 () Bool)

(declare-fun tp!2283980 () Bool)

(declare-fun tp!2283981 () Bool)

(assert (=> b!7773579 (= e!4605628 (and tp!2283980 tp!2283981))))

(declare-fun b!7773578 () Bool)

(assert (=> b!7773578 (= e!4605628 tp_is_empty!51893)))

(assert (= (and b!7773233 ((_ is ElementMatch!20769) (regOne!42050 r2!6217))) b!7773578))

(assert (= (and b!7773233 ((_ is Concat!29614) (regOne!42050 r2!6217))) b!7773579))

(assert (= (and b!7773233 ((_ is Star!20769) (regOne!42050 r2!6217))) b!7773580))

(assert (= (and b!7773233 ((_ is Union!20769) (regOne!42050 r2!6217))) b!7773581))

(declare-fun b!7773584 () Bool)

(declare-fun e!4605629 () Bool)

(declare-fun tp!2283987 () Bool)

(assert (=> b!7773584 (= e!4605629 tp!2283987)))

(declare-fun b!7773585 () Bool)

(declare-fun tp!2283989 () Bool)

(declare-fun tp!2283988 () Bool)

(assert (=> b!7773585 (= e!4605629 (and tp!2283989 tp!2283988))))

(assert (=> b!7773233 (= tp!2283853 e!4605629)))

(declare-fun b!7773583 () Bool)

(declare-fun tp!2283985 () Bool)

(declare-fun tp!2283986 () Bool)

(assert (=> b!7773583 (= e!4605629 (and tp!2283985 tp!2283986))))

(declare-fun b!7773582 () Bool)

(assert (=> b!7773582 (= e!4605629 tp_is_empty!51893)))

(assert (= (and b!7773233 ((_ is ElementMatch!20769) (regTwo!42050 r2!6217))) b!7773582))

(assert (= (and b!7773233 ((_ is Concat!29614) (regTwo!42050 r2!6217))) b!7773583))

(assert (= (and b!7773233 ((_ is Star!20769) (regTwo!42050 r2!6217))) b!7773584))

(assert (= (and b!7773233 ((_ is Union!20769) (regTwo!42050 r2!6217))) b!7773585))

(check-sat (not bm!720500) (not b!7773543) (not b!7773568) (not b!7773386) (not bm!720501) (not b!7773555) (not bm!720502) (not d!2344664) (not b!7773546) (not b!7773556) (not b!7773565) (not b!7773387) (not b!7773575) (not b!7773584) (not b!7773516) (not bm!720475) (not b!7773475) (not b!7773295) (not b!7773583) (not b!7773577) (not b!7773405) (not b!7773548) (not b!7773560) tp_is_empty!51893 (not b!7773567) (not b!7773393) (not b!7773561) (not b!7773564) (not bm!720452) (not b!7773580) (not bm!720474) (not b!7773585) (not b!7773576) (not b!7773569) (not b!7773544) (not b!7773542) (not bm!720453) (not b!7773572) (not b!7773557) (not b!7773581) (not bm!720499) (not b!7773559) (not b!7773388) (not b!7773384) (not b!7773553) (not b!7773563) (not bm!720473) (not b!7773579) (not b!7773396) (not b!7773547) (not b!7773571) (not d!2344676) (not b!7773573))
(check-sat)
