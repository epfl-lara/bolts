; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733380 () Bool)

(assert start!733380)

(declare-fun b!7610404 () Bool)

(declare-fun res!3046976 () Bool)

(declare-fun e!4526355 () Bool)

(assert (=> b!7610404 (=> (not res!3046976) (not e!4526355))))

(declare-datatypes ((C!40764 0))(
  ( (C!40765 (val!30822 Int)) )
))
(declare-datatypes ((Regex!20219 0))(
  ( (ElementMatch!20219 (c!1403260 C!40764)) (Concat!29064 (regOne!40950 Regex!20219) (regTwo!40950 Regex!20219)) (EmptyExpr!20219) (Star!20219 (reg!20548 Regex!20219)) (EmptyLang!20219) (Union!20219 (regOne!40951 Regex!20219) (regTwo!40951 Regex!20219)) )
))
(declare-fun r!19218 () Regex!20219)

(declare-fun nullable!8840 (Regex!20219) Bool)

(assert (=> b!7610404 (= res!3046976 (not (nullable!8840 (regOne!40951 r!19218))))))

(declare-fun b!7610405 () Bool)

(declare-fun e!4526354 () Bool)

(declare-fun tp!2220669 () Bool)

(declare-fun tp!2220666 () Bool)

(assert (=> b!7610405 (= e!4526354 (and tp!2220669 tp!2220666))))

(declare-fun b!7610406 () Bool)

(declare-fun tp_is_empty!50793 () Bool)

(assert (=> b!7610406 (= e!4526354 tp_is_empty!50793)))

(declare-fun b!7610407 () Bool)

(declare-fun tp!2220665 () Bool)

(assert (=> b!7610407 (= e!4526354 tp!2220665)))

(declare-fun b!7610408 () Bool)

(declare-fun tp!2220668 () Bool)

(declare-fun tp!2220667 () Bool)

(assert (=> b!7610408 (= e!4526354 (and tp!2220668 tp!2220667))))

(declare-fun b!7610409 () Bool)

(declare-fun res!3046978 () Bool)

(assert (=> b!7610409 (=> (not res!3046978) (not e!4526355))))

(declare-fun validRegex!10641 (Regex!20219) Bool)

(assert (=> b!7610409 (= res!3046978 (validRegex!10641 (regTwo!40951 r!19218)))))

(declare-fun res!3046975 () Bool)

(assert (=> start!733380 (=> (not res!3046975) (not e!4526355))))

(assert (=> start!733380 (= res!3046975 (validRegex!10641 r!19218))))

(assert (=> start!733380 e!4526355))

(assert (=> start!733380 e!4526354))

(declare-fun b!7610410 () Bool)

(declare-fun res!3046980 () Bool)

(assert (=> b!7610410 (=> (not res!3046980) (not e!4526355))))

(assert (=> b!7610410 (= res!3046980 (nullable!8840 r!19218))))

(declare-fun b!7610411 () Bool)

(declare-fun res!3046979 () Bool)

(assert (=> b!7610411 (=> (not res!3046979) (not e!4526355))))

(get-info :version)

(assert (=> b!7610411 (= res!3046979 (and (not ((_ is ElementMatch!20219) r!19218)) (not ((_ is Star!20219) r!19218)) ((_ is Union!20219) r!19218)))))

(declare-fun b!7610412 () Bool)

(declare-fun res!3046977 () Bool)

(assert (=> b!7610412 (=> (not res!3046977) (not e!4526355))))

(assert (=> b!7610412 (= res!3046977 (nullable!8840 (regTwo!40951 r!19218)))))

(declare-fun b!7610413 () Bool)

(declare-fun lostCause!1897 (Regex!20219) Bool)

(assert (=> b!7610413 (= e!4526355 (not (not (lostCause!1897 r!19218))))))

(assert (=> b!7610413 (not (lostCause!1897 (regTwo!40951 r!19218)))))

(declare-datatypes ((Unit!167270 0))(
  ( (Unit!167271) )
))
(declare-fun lt!2654988 () Unit!167270)

(declare-fun lemmaNullableThenNotLostCause!108 (Regex!20219) Unit!167270)

(assert (=> b!7610413 (= lt!2654988 (lemmaNullableThenNotLostCause!108 (regTwo!40951 r!19218)))))

(assert (= (and start!733380 res!3046975) b!7610410))

(assert (= (and b!7610410 res!3046980) b!7610411))

(assert (= (and b!7610411 res!3046979) b!7610404))

(assert (= (and b!7610404 res!3046976) b!7610409))

(assert (= (and b!7610409 res!3046978) b!7610412))

(assert (= (and b!7610412 res!3046977) b!7610413))

(assert (= (and start!733380 ((_ is ElementMatch!20219) r!19218)) b!7610406))

(assert (= (and start!733380 ((_ is Concat!29064) r!19218)) b!7610408))

(assert (= (and start!733380 ((_ is Star!20219) r!19218)) b!7610407))

(assert (= (and start!733380 ((_ is Union!20219) r!19218)) b!7610405))

(declare-fun m!8147966 () Bool)

(assert (=> b!7610413 m!8147966))

(declare-fun m!8147968 () Bool)

(assert (=> b!7610413 m!8147968))

(declare-fun m!8147970 () Bool)

(assert (=> b!7610413 m!8147970))

(declare-fun m!8147972 () Bool)

(assert (=> start!733380 m!8147972))

(declare-fun m!8147974 () Bool)

(assert (=> b!7610410 m!8147974))

(declare-fun m!8147976 () Bool)

(assert (=> b!7610404 m!8147976))

(declare-fun m!8147978 () Bool)

(assert (=> b!7610412 m!8147978))

(declare-fun m!8147980 () Bool)

(assert (=> b!7610409 m!8147980))

(check-sat tp_is_empty!50793 (not b!7610404) (not b!7610407) (not b!7610409) (not b!7610408) (not b!7610405) (not b!7610413) (not start!733380) (not b!7610412) (not b!7610410))
(check-sat)
(get-model)

(declare-fun d!2322217 () Bool)

(declare-fun lostCauseFct!543 (Regex!20219) Bool)

(assert (=> d!2322217 (= (lostCause!1897 r!19218) (lostCauseFct!543 r!19218))))

(declare-fun bs!1942843 () Bool)

(assert (= bs!1942843 d!2322217))

(declare-fun m!8147982 () Bool)

(assert (=> bs!1942843 m!8147982))

(assert (=> b!7610413 d!2322217))

(declare-fun d!2322219 () Bool)

(assert (=> d!2322219 (= (lostCause!1897 (regTwo!40951 r!19218)) (lostCauseFct!543 (regTwo!40951 r!19218)))))

(declare-fun bs!1942844 () Bool)

(assert (= bs!1942844 d!2322219))

(declare-fun m!8147984 () Bool)

(assert (=> bs!1942844 m!8147984))

(assert (=> b!7610413 d!2322219))

(declare-fun d!2322221 () Bool)

(assert (=> d!2322221 (not (lostCause!1897 (regTwo!40951 r!19218)))))

(declare-fun lt!2654991 () Unit!167270)

(declare-fun choose!58740 (Regex!20219) Unit!167270)

(assert (=> d!2322221 (= lt!2654991 (choose!58740 (regTwo!40951 r!19218)))))

(assert (=> d!2322221 (validRegex!10641 (regTwo!40951 r!19218))))

(assert (=> d!2322221 (= (lemmaNullableThenNotLostCause!108 (regTwo!40951 r!19218)) lt!2654991)))

(declare-fun bs!1942845 () Bool)

(assert (= bs!1942845 d!2322221))

(assert (=> bs!1942845 m!8147968))

(declare-fun m!8147986 () Bool)

(assert (=> bs!1942845 m!8147986))

(assert (=> bs!1942845 m!8147980))

(assert (=> b!7610413 d!2322221))

(declare-fun bm!698930 () Bool)

(declare-fun call!698936 () Bool)

(declare-fun c!1403268 () Bool)

(assert (=> bm!698930 (= call!698936 (validRegex!10641 (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218))))))

(declare-fun b!7610438 () Bool)

(declare-fun e!4526382 () Bool)

(declare-fun e!4526376 () Bool)

(assert (=> b!7610438 (= e!4526382 e!4526376)))

(assert (=> b!7610438 (= c!1403268 ((_ is Union!20219) r!19218))))

(declare-fun b!7610439 () Bool)

(declare-fun e!4526378 () Bool)

(assert (=> b!7610439 (= e!4526382 e!4526378)))

(declare-fun res!3046997 () Bool)

(assert (=> b!7610439 (= res!3046997 (not (nullable!8840 (reg!20548 r!19218))))))

(assert (=> b!7610439 (=> (not res!3046997) (not e!4526378))))

(declare-fun b!7610440 () Bool)

(declare-fun res!3046998 () Bool)

(declare-fun e!4526379 () Bool)

(assert (=> b!7610440 (=> res!3046998 e!4526379)))

(assert (=> b!7610440 (= res!3046998 (not ((_ is Concat!29064) r!19218)))))

(assert (=> b!7610440 (= e!4526376 e!4526379)))

(declare-fun d!2322225 () Bool)

(declare-fun res!3046996 () Bool)

(declare-fun e!4526377 () Bool)

(assert (=> d!2322225 (=> res!3046996 e!4526377)))

(assert (=> d!2322225 (= res!3046996 ((_ is ElementMatch!20219) r!19218))))

(assert (=> d!2322225 (= (validRegex!10641 r!19218) e!4526377)))

(declare-fun bm!698931 () Bool)

(declare-fun c!1403267 () Bool)

(declare-fun call!698935 () Bool)

(assert (=> bm!698931 (= call!698935 (validRegex!10641 (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218)))))))

(declare-fun b!7610441 () Bool)

(assert (=> b!7610441 (= e!4526378 call!698935)))

(declare-fun b!7610442 () Bool)

(declare-fun e!4526380 () Bool)

(assert (=> b!7610442 (= e!4526380 call!698936)))

(declare-fun bm!698932 () Bool)

(declare-fun call!698937 () Bool)

(assert (=> bm!698932 (= call!698937 call!698935)))

(declare-fun b!7610445 () Bool)

(assert (=> b!7610445 (= e!4526377 e!4526382)))

(assert (=> b!7610445 (= c!1403267 ((_ is Star!20219) r!19218))))

(declare-fun b!7610446 () Bool)

(declare-fun res!3046999 () Bool)

(assert (=> b!7610446 (=> (not res!3046999) (not e!4526380))))

(assert (=> b!7610446 (= res!3046999 call!698937)))

(assert (=> b!7610446 (= e!4526376 e!4526380)))

(declare-fun b!7610447 () Bool)

(declare-fun e!4526381 () Bool)

(assert (=> b!7610447 (= e!4526379 e!4526381)))

(declare-fun res!3046995 () Bool)

(assert (=> b!7610447 (=> (not res!3046995) (not e!4526381))))

(assert (=> b!7610447 (= res!3046995 call!698937)))

(declare-fun b!7610448 () Bool)

(assert (=> b!7610448 (= e!4526381 call!698936)))

(assert (= (and d!2322225 (not res!3046996)) b!7610445))

(assert (= (and b!7610445 c!1403267) b!7610439))

(assert (= (and b!7610445 (not c!1403267)) b!7610438))

(assert (= (and b!7610439 res!3046997) b!7610441))

(assert (= (and b!7610438 c!1403268) b!7610446))

(assert (= (and b!7610438 (not c!1403268)) b!7610440))

(assert (= (and b!7610446 res!3046999) b!7610442))

(assert (= (and b!7610440 (not res!3046998)) b!7610447))

(assert (= (and b!7610447 res!3046995) b!7610448))

(assert (= (or b!7610446 b!7610447) bm!698932))

(assert (= (or b!7610442 b!7610448) bm!698930))

(assert (= (or b!7610441 bm!698932) bm!698931))

(declare-fun m!8147992 () Bool)

(assert (=> bm!698930 m!8147992))

(declare-fun m!8147994 () Bool)

(assert (=> b!7610439 m!8147994))

(declare-fun m!8147996 () Bool)

(assert (=> bm!698931 m!8147996))

(assert (=> start!733380 d!2322225))

(declare-fun bm!698933 () Bool)

(declare-fun call!698939 () Bool)

(declare-fun c!1403272 () Bool)

(assert (=> bm!698933 (= call!698939 (validRegex!10641 (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))))))

(declare-fun b!7610459 () Bool)

(declare-fun e!4526397 () Bool)

(declare-fun e!4526391 () Bool)

(assert (=> b!7610459 (= e!4526397 e!4526391)))

(assert (=> b!7610459 (= c!1403272 ((_ is Union!20219) (regTwo!40951 r!19218)))))

(declare-fun b!7610460 () Bool)

(declare-fun e!4526393 () Bool)

(assert (=> b!7610460 (= e!4526397 e!4526393)))

(declare-fun res!3047008 () Bool)

(assert (=> b!7610460 (= res!3047008 (not (nullable!8840 (reg!20548 (regTwo!40951 r!19218)))))))

(assert (=> b!7610460 (=> (not res!3047008) (not e!4526393))))

(declare-fun b!7610461 () Bool)

(declare-fun res!3047009 () Bool)

(declare-fun e!4526394 () Bool)

(assert (=> b!7610461 (=> res!3047009 e!4526394)))

(assert (=> b!7610461 (= res!3047009 (not ((_ is Concat!29064) (regTwo!40951 r!19218))))))

(assert (=> b!7610461 (= e!4526391 e!4526394)))

(declare-fun d!2322231 () Bool)

(declare-fun res!3047007 () Bool)

(declare-fun e!4526392 () Bool)

(assert (=> d!2322231 (=> res!3047007 e!4526392)))

(assert (=> d!2322231 (= res!3047007 ((_ is ElementMatch!20219) (regTwo!40951 r!19218)))))

(assert (=> d!2322231 (= (validRegex!10641 (regTwo!40951 r!19218)) e!4526392)))

(declare-fun bm!698934 () Bool)

(declare-fun call!698938 () Bool)

(declare-fun c!1403271 () Bool)

(assert (=> bm!698934 (= call!698938 (validRegex!10641 (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218))))))))

(declare-fun b!7610462 () Bool)

(assert (=> b!7610462 (= e!4526393 call!698938)))

(declare-fun b!7610463 () Bool)

(declare-fun e!4526395 () Bool)

(assert (=> b!7610463 (= e!4526395 call!698939)))

(declare-fun bm!698935 () Bool)

(declare-fun call!698940 () Bool)

(assert (=> bm!698935 (= call!698940 call!698938)))

(declare-fun b!7610464 () Bool)

(assert (=> b!7610464 (= e!4526392 e!4526397)))

(assert (=> b!7610464 (= c!1403271 ((_ is Star!20219) (regTwo!40951 r!19218)))))

(declare-fun b!7610465 () Bool)

(declare-fun res!3047010 () Bool)

(assert (=> b!7610465 (=> (not res!3047010) (not e!4526395))))

(assert (=> b!7610465 (= res!3047010 call!698940)))

(assert (=> b!7610465 (= e!4526391 e!4526395)))

(declare-fun b!7610466 () Bool)

(declare-fun e!4526396 () Bool)

(assert (=> b!7610466 (= e!4526394 e!4526396)))

(declare-fun res!3047006 () Bool)

(assert (=> b!7610466 (=> (not res!3047006) (not e!4526396))))

(assert (=> b!7610466 (= res!3047006 call!698940)))

(declare-fun b!7610467 () Bool)

(assert (=> b!7610467 (= e!4526396 call!698939)))

(assert (= (and d!2322231 (not res!3047007)) b!7610464))

(assert (= (and b!7610464 c!1403271) b!7610460))

(assert (= (and b!7610464 (not c!1403271)) b!7610459))

(assert (= (and b!7610460 res!3047008) b!7610462))

(assert (= (and b!7610459 c!1403272) b!7610465))

(assert (= (and b!7610459 (not c!1403272)) b!7610461))

(assert (= (and b!7610465 res!3047010) b!7610463))

(assert (= (and b!7610461 (not res!3047009)) b!7610466))

(assert (= (and b!7610466 res!3047006) b!7610467))

(assert (= (or b!7610465 b!7610466) bm!698935))

(assert (= (or b!7610463 b!7610467) bm!698933))

(assert (= (or b!7610462 bm!698935) bm!698934))

(declare-fun m!8147998 () Bool)

(assert (=> bm!698933 m!8147998))

(declare-fun m!8148000 () Bool)

(assert (=> b!7610460 m!8148000))

(declare-fun m!8148002 () Bool)

(assert (=> bm!698934 m!8148002))

(assert (=> b!7610409 d!2322231))

(declare-fun d!2322233 () Bool)

(declare-fun nullableFct!3523 (Regex!20219) Bool)

(assert (=> d!2322233 (= (nullable!8840 (regOne!40951 r!19218)) (nullableFct!3523 (regOne!40951 r!19218)))))

(declare-fun bs!1942848 () Bool)

(assert (= bs!1942848 d!2322233))

(declare-fun m!8148004 () Bool)

(assert (=> bs!1942848 m!8148004))

(assert (=> b!7610404 d!2322233))

(declare-fun d!2322235 () Bool)

(assert (=> d!2322235 (= (nullable!8840 r!19218) (nullableFct!3523 r!19218))))

(declare-fun bs!1942849 () Bool)

(assert (= bs!1942849 d!2322235))

(declare-fun m!8148006 () Bool)

(assert (=> bs!1942849 m!8148006))

(assert (=> b!7610410 d!2322235))

(declare-fun d!2322237 () Bool)

(assert (=> d!2322237 (= (nullable!8840 (regTwo!40951 r!19218)) (nullableFct!3523 (regTwo!40951 r!19218)))))

(declare-fun bs!1942850 () Bool)

(assert (= bs!1942850 d!2322237))

(declare-fun m!8148008 () Bool)

(assert (=> bs!1942850 m!8148008))

(assert (=> b!7610412 d!2322237))

(declare-fun b!7610478 () Bool)

(declare-fun e!4526400 () Bool)

(assert (=> b!7610478 (= e!4526400 tp_is_empty!50793)))

(declare-fun b!7610480 () Bool)

(declare-fun tp!2220683 () Bool)

(assert (=> b!7610480 (= e!4526400 tp!2220683)))

(declare-fun b!7610481 () Bool)

(declare-fun tp!2220680 () Bool)

(declare-fun tp!2220681 () Bool)

(assert (=> b!7610481 (= e!4526400 (and tp!2220680 tp!2220681))))

(declare-fun b!7610479 () Bool)

(declare-fun tp!2220684 () Bool)

(declare-fun tp!2220682 () Bool)

(assert (=> b!7610479 (= e!4526400 (and tp!2220684 tp!2220682))))

(assert (=> b!7610408 (= tp!2220668 e!4526400)))

(assert (= (and b!7610408 ((_ is ElementMatch!20219) (regOne!40950 r!19218))) b!7610478))

(assert (= (and b!7610408 ((_ is Concat!29064) (regOne!40950 r!19218))) b!7610479))

(assert (= (and b!7610408 ((_ is Star!20219) (regOne!40950 r!19218))) b!7610480))

(assert (= (and b!7610408 ((_ is Union!20219) (regOne!40950 r!19218))) b!7610481))

(declare-fun b!7610482 () Bool)

(declare-fun e!4526401 () Bool)

(assert (=> b!7610482 (= e!4526401 tp_is_empty!50793)))

(declare-fun b!7610484 () Bool)

(declare-fun tp!2220688 () Bool)

(assert (=> b!7610484 (= e!4526401 tp!2220688)))

(declare-fun b!7610485 () Bool)

(declare-fun tp!2220685 () Bool)

(declare-fun tp!2220686 () Bool)

(assert (=> b!7610485 (= e!4526401 (and tp!2220685 tp!2220686))))

(declare-fun b!7610483 () Bool)

(declare-fun tp!2220689 () Bool)

(declare-fun tp!2220687 () Bool)

(assert (=> b!7610483 (= e!4526401 (and tp!2220689 tp!2220687))))

(assert (=> b!7610408 (= tp!2220667 e!4526401)))

(assert (= (and b!7610408 ((_ is ElementMatch!20219) (regTwo!40950 r!19218))) b!7610482))

(assert (= (and b!7610408 ((_ is Concat!29064) (regTwo!40950 r!19218))) b!7610483))

(assert (= (and b!7610408 ((_ is Star!20219) (regTwo!40950 r!19218))) b!7610484))

(assert (= (and b!7610408 ((_ is Union!20219) (regTwo!40950 r!19218))) b!7610485))

(declare-fun b!7610486 () Bool)

(declare-fun e!4526402 () Bool)

(assert (=> b!7610486 (= e!4526402 tp_is_empty!50793)))

(declare-fun b!7610488 () Bool)

(declare-fun tp!2220693 () Bool)

(assert (=> b!7610488 (= e!4526402 tp!2220693)))

(declare-fun b!7610489 () Bool)

(declare-fun tp!2220690 () Bool)

(declare-fun tp!2220691 () Bool)

(assert (=> b!7610489 (= e!4526402 (and tp!2220690 tp!2220691))))

(declare-fun b!7610487 () Bool)

(declare-fun tp!2220694 () Bool)

(declare-fun tp!2220692 () Bool)

(assert (=> b!7610487 (= e!4526402 (and tp!2220694 tp!2220692))))

(assert (=> b!7610405 (= tp!2220669 e!4526402)))

(assert (= (and b!7610405 ((_ is ElementMatch!20219) (regOne!40951 r!19218))) b!7610486))

(assert (= (and b!7610405 ((_ is Concat!29064) (regOne!40951 r!19218))) b!7610487))

(assert (= (and b!7610405 ((_ is Star!20219) (regOne!40951 r!19218))) b!7610488))

(assert (= (and b!7610405 ((_ is Union!20219) (regOne!40951 r!19218))) b!7610489))

(declare-fun b!7610490 () Bool)

(declare-fun e!4526403 () Bool)

(assert (=> b!7610490 (= e!4526403 tp_is_empty!50793)))

(declare-fun b!7610492 () Bool)

(declare-fun tp!2220698 () Bool)

(assert (=> b!7610492 (= e!4526403 tp!2220698)))

(declare-fun b!7610493 () Bool)

(declare-fun tp!2220695 () Bool)

(declare-fun tp!2220696 () Bool)

(assert (=> b!7610493 (= e!4526403 (and tp!2220695 tp!2220696))))

(declare-fun b!7610491 () Bool)

(declare-fun tp!2220699 () Bool)

(declare-fun tp!2220697 () Bool)

(assert (=> b!7610491 (= e!4526403 (and tp!2220699 tp!2220697))))

(assert (=> b!7610405 (= tp!2220666 e!4526403)))

(assert (= (and b!7610405 ((_ is ElementMatch!20219) (regTwo!40951 r!19218))) b!7610490))

(assert (= (and b!7610405 ((_ is Concat!29064) (regTwo!40951 r!19218))) b!7610491))

(assert (= (and b!7610405 ((_ is Star!20219) (regTwo!40951 r!19218))) b!7610492))

(assert (= (and b!7610405 ((_ is Union!20219) (regTwo!40951 r!19218))) b!7610493))

(declare-fun b!7610494 () Bool)

(declare-fun e!4526404 () Bool)

(assert (=> b!7610494 (= e!4526404 tp_is_empty!50793)))

(declare-fun b!7610496 () Bool)

(declare-fun tp!2220703 () Bool)

(assert (=> b!7610496 (= e!4526404 tp!2220703)))

(declare-fun b!7610497 () Bool)

(declare-fun tp!2220700 () Bool)

(declare-fun tp!2220701 () Bool)

(assert (=> b!7610497 (= e!4526404 (and tp!2220700 tp!2220701))))

(declare-fun b!7610495 () Bool)

(declare-fun tp!2220704 () Bool)

(declare-fun tp!2220702 () Bool)

(assert (=> b!7610495 (= e!4526404 (and tp!2220704 tp!2220702))))

(assert (=> b!7610407 (= tp!2220665 e!4526404)))

(assert (= (and b!7610407 ((_ is ElementMatch!20219) (reg!20548 r!19218))) b!7610494))

(assert (= (and b!7610407 ((_ is Concat!29064) (reg!20548 r!19218))) b!7610495))

(assert (= (and b!7610407 ((_ is Star!20219) (reg!20548 r!19218))) b!7610496))

(assert (= (and b!7610407 ((_ is Union!20219) (reg!20548 r!19218))) b!7610497))

(check-sat (not b!7610489) (not bm!698934) tp_is_empty!50793 (not bm!698933) (not b!7610439) (not b!7610484) (not b!7610495) (not d!2322233) (not bm!698931) (not b!7610491) (not b!7610481) (not d!2322217) (not d!2322235) (not b!7610483) (not b!7610496) (not d!2322237) (not b!7610479) (not b!7610485) (not b!7610492) (not b!7610460) (not b!7610497) (not b!7610488) (not d!2322219) (not b!7610487) (not b!7610480) (not bm!698930) (not b!7610493) (not d!2322221))
(check-sat)
(get-model)

(assert (=> d!2322221 d!2322219))

(declare-fun d!2322249 () Bool)

(assert (=> d!2322249 (not (lostCause!1897 (regTwo!40951 r!19218)))))

(assert (=> d!2322249 true))

(declare-fun _$98!309 () Unit!167270)

(assert (=> d!2322249 (= (choose!58740 (regTwo!40951 r!19218)) _$98!309)))

(declare-fun bs!1942855 () Bool)

(assert (= bs!1942855 d!2322249))

(assert (=> bs!1942855 m!8147968))

(assert (=> d!2322221 d!2322249))

(assert (=> d!2322221 d!2322231))

(declare-fun d!2322251 () Bool)

(assert (=> d!2322251 (= (nullable!8840 (reg!20548 r!19218)) (nullableFct!3523 (reg!20548 r!19218)))))

(declare-fun bs!1942856 () Bool)

(assert (= bs!1942856 d!2322251))

(declare-fun m!8148030 () Bool)

(assert (=> bs!1942856 m!8148030))

(assert (=> b!7610439 d!2322251))

(declare-fun d!2322253 () Bool)

(assert (=> d!2322253 (= (nullable!8840 (reg!20548 (regTwo!40951 r!19218))) (nullableFct!3523 (reg!20548 (regTwo!40951 r!19218))))))

(declare-fun bs!1942857 () Bool)

(assert (= bs!1942857 d!2322253))

(declare-fun m!8148032 () Bool)

(assert (=> bs!1942857 m!8148032))

(assert (=> b!7610460 d!2322253))

(declare-fun b!7610560 () Bool)

(declare-fun e!4526438 () Bool)

(declare-fun e!4526441 () Bool)

(assert (=> b!7610560 (= e!4526438 e!4526441)))

(declare-fun res!3047034 () Bool)

(declare-fun call!698957 () Bool)

(assert (=> b!7610560 (= res!3047034 call!698957)))

(assert (=> b!7610560 (=> res!3047034 e!4526441)))

(declare-fun b!7610561 () Bool)

(declare-fun e!4526443 () Bool)

(declare-fun e!4526439 () Bool)

(assert (=> b!7610561 (= e!4526443 e!4526439)))

(declare-fun res!3047035 () Bool)

(assert (=> b!7610561 (=> (not res!3047035) (not e!4526439))))

(assert (=> b!7610561 (= res!3047035 (and (not ((_ is EmptyLang!20219) r!19218)) (not ((_ is ElementMatch!20219) r!19218))))))

(declare-fun b!7610562 () Bool)

(declare-fun call!698958 () Bool)

(assert (=> b!7610562 (= e!4526441 call!698958)))

(declare-fun b!7610563 () Bool)

(declare-fun e!4526442 () Bool)

(assert (=> b!7610563 (= e!4526438 e!4526442)))

(declare-fun res!3047032 () Bool)

(assert (=> b!7610563 (= res!3047032 call!698958)))

(assert (=> b!7610563 (=> (not res!3047032) (not e!4526442))))

(declare-fun b!7610564 () Bool)

(declare-fun e!4526440 () Bool)

(assert (=> b!7610564 (= e!4526439 e!4526440)))

(declare-fun res!3047033 () Bool)

(assert (=> b!7610564 (=> res!3047033 e!4526440)))

(assert (=> b!7610564 (= res!3047033 ((_ is Star!20219) r!19218))))

(declare-fun b!7610565 () Bool)

(assert (=> b!7610565 (= e!4526440 e!4526438)))

(declare-fun c!1403279 () Bool)

(assert (=> b!7610565 (= c!1403279 ((_ is Union!20219) r!19218))))

(declare-fun bm!698952 () Bool)

(assert (=> bm!698952 (= call!698957 (nullable!8840 (ite c!1403279 (regOne!40951 r!19218) (regTwo!40950 r!19218))))))

(declare-fun b!7610566 () Bool)

(assert (=> b!7610566 (= e!4526442 call!698957)))

(declare-fun d!2322255 () Bool)

(declare-fun res!3047031 () Bool)

(assert (=> d!2322255 (=> res!3047031 e!4526443)))

(assert (=> d!2322255 (= res!3047031 ((_ is EmptyExpr!20219) r!19218))))

(assert (=> d!2322255 (= (nullableFct!3523 r!19218) e!4526443)))

(declare-fun bm!698953 () Bool)

(assert (=> bm!698953 (= call!698958 (nullable!8840 (ite c!1403279 (regTwo!40951 r!19218) (regOne!40950 r!19218))))))

(assert (= (and d!2322255 (not res!3047031)) b!7610561))

(assert (= (and b!7610561 res!3047035) b!7610564))

(assert (= (and b!7610564 (not res!3047033)) b!7610565))

(assert (= (and b!7610565 c!1403279) b!7610560))

(assert (= (and b!7610565 (not c!1403279)) b!7610563))

(assert (= (and b!7610560 (not res!3047034)) b!7610562))

(assert (= (and b!7610563 res!3047032) b!7610566))

(assert (= (or b!7610562 b!7610563) bm!698953))

(assert (= (or b!7610560 b!7610566) bm!698952))

(declare-fun m!8148034 () Bool)

(assert (=> bm!698952 m!8148034))

(declare-fun m!8148036 () Bool)

(assert (=> bm!698953 m!8148036))

(assert (=> d!2322235 d!2322255))

(declare-fun call!698960 () Bool)

(declare-fun c!1403281 () Bool)

(declare-fun bm!698954 () Bool)

(assert (=> bm!698954 (= call!698960 (validRegex!10641 (ite c!1403281 (regTwo!40951 (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218)))) (regTwo!40950 (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218)))))))))

(declare-fun b!7610567 () Bool)

(declare-fun e!4526450 () Bool)

(declare-fun e!4526444 () Bool)

(assert (=> b!7610567 (= e!4526450 e!4526444)))

(assert (=> b!7610567 (= c!1403281 ((_ is Union!20219) (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218)))))))

(declare-fun b!7610568 () Bool)

(declare-fun e!4526446 () Bool)

(assert (=> b!7610568 (= e!4526450 e!4526446)))

(declare-fun res!3047038 () Bool)

(assert (=> b!7610568 (= res!3047038 (not (nullable!8840 (reg!20548 (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218)))))))))

(assert (=> b!7610568 (=> (not res!3047038) (not e!4526446))))

(declare-fun b!7610569 () Bool)

(declare-fun res!3047039 () Bool)

(declare-fun e!4526447 () Bool)

(assert (=> b!7610569 (=> res!3047039 e!4526447)))

(assert (=> b!7610569 (= res!3047039 (not ((_ is Concat!29064) (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218))))))))

(assert (=> b!7610569 (= e!4526444 e!4526447)))

(declare-fun d!2322257 () Bool)

(declare-fun res!3047037 () Bool)

(declare-fun e!4526445 () Bool)

(assert (=> d!2322257 (=> res!3047037 e!4526445)))

(assert (=> d!2322257 (= res!3047037 ((_ is ElementMatch!20219) (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218)))))))

(assert (=> d!2322257 (= (validRegex!10641 (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218)))) e!4526445)))

(declare-fun call!698959 () Bool)

(declare-fun bm!698955 () Bool)

(declare-fun c!1403280 () Bool)

(assert (=> bm!698955 (= call!698959 (validRegex!10641 (ite c!1403280 (reg!20548 (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218)))) (ite c!1403281 (regOne!40951 (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218)))) (regOne!40950 (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218))))))))))

(declare-fun b!7610570 () Bool)

(assert (=> b!7610570 (= e!4526446 call!698959)))

(declare-fun b!7610571 () Bool)

(declare-fun e!4526448 () Bool)

(assert (=> b!7610571 (= e!4526448 call!698960)))

(declare-fun bm!698956 () Bool)

(declare-fun call!698961 () Bool)

(assert (=> bm!698956 (= call!698961 call!698959)))

(declare-fun b!7610572 () Bool)

(assert (=> b!7610572 (= e!4526445 e!4526450)))

(assert (=> b!7610572 (= c!1403280 ((_ is Star!20219) (ite c!1403267 (reg!20548 r!19218) (ite c!1403268 (regOne!40951 r!19218) (regOne!40950 r!19218)))))))

(declare-fun b!7610573 () Bool)

(declare-fun res!3047040 () Bool)

(assert (=> b!7610573 (=> (not res!3047040) (not e!4526448))))

(assert (=> b!7610573 (= res!3047040 call!698961)))

(assert (=> b!7610573 (= e!4526444 e!4526448)))

(declare-fun b!7610574 () Bool)

(declare-fun e!4526449 () Bool)

(assert (=> b!7610574 (= e!4526447 e!4526449)))

(declare-fun res!3047036 () Bool)

(assert (=> b!7610574 (=> (not res!3047036) (not e!4526449))))

(assert (=> b!7610574 (= res!3047036 call!698961)))

(declare-fun b!7610575 () Bool)

(assert (=> b!7610575 (= e!4526449 call!698960)))

(assert (= (and d!2322257 (not res!3047037)) b!7610572))

(assert (= (and b!7610572 c!1403280) b!7610568))

(assert (= (and b!7610572 (not c!1403280)) b!7610567))

(assert (= (and b!7610568 res!3047038) b!7610570))

(assert (= (and b!7610567 c!1403281) b!7610573))

(assert (= (and b!7610567 (not c!1403281)) b!7610569))

(assert (= (and b!7610573 res!3047040) b!7610571))

(assert (= (and b!7610569 (not res!3047039)) b!7610574))

(assert (= (and b!7610574 res!3047036) b!7610575))

(assert (= (or b!7610573 b!7610574) bm!698956))

(assert (= (or b!7610571 b!7610575) bm!698954))

(assert (= (or b!7610570 bm!698956) bm!698955))

(declare-fun m!8148038 () Bool)

(assert (=> bm!698954 m!8148038))

(declare-fun m!8148040 () Bool)

(assert (=> b!7610568 m!8148040))

(declare-fun m!8148042 () Bool)

(assert (=> bm!698955 m!8148042))

(assert (=> bm!698931 d!2322257))

(declare-fun b!7610590 () Bool)

(declare-fun e!4526463 () Bool)

(declare-fun e!4526465 () Bool)

(assert (=> b!7610590 (= e!4526463 e!4526465)))

(declare-fun res!3047054 () Bool)

(assert (=> b!7610590 (=> (not res!3047054) (not e!4526465))))

(assert (=> b!7610590 (= res!3047054 (and (not ((_ is ElementMatch!20219) r!19218)) (not ((_ is Star!20219) r!19218))))))

(declare-fun d!2322259 () Bool)

(declare-fun lt!2654997 () Bool)

(declare-datatypes ((List!73081 0))(
  ( (Nil!72957) (Cons!72957 (h!79405 C!40764) (t!387816 List!73081)) )
))
(declare-datatypes ((Option!17329 0))(
  ( (None!17328) (Some!17328 (v!54463 List!73081)) )
))
(declare-fun isEmpty!41586 (Option!17329) Bool)

(declare-fun getLanguageWitness!1134 (Regex!20219) Option!17329)

(assert (=> d!2322259 (= lt!2654997 (isEmpty!41586 (getLanguageWitness!1134 r!19218)))))

(declare-fun e!4526464 () Bool)

(assert (=> d!2322259 (= lt!2654997 e!4526464)))

(declare-fun res!3047055 () Bool)

(assert (=> d!2322259 (=> (not res!3047055) (not e!4526464))))

(assert (=> d!2322259 (= res!3047055 (not ((_ is EmptyExpr!20219) r!19218)))))

(assert (=> d!2322259 (= (lostCauseFct!543 r!19218) lt!2654997)))

(declare-fun b!7610591 () Bool)

(declare-fun e!4526466 () Bool)

(declare-fun e!4526467 () Bool)

(assert (=> b!7610591 (= e!4526466 e!4526467)))

(declare-fun res!3047053 () Bool)

(declare-fun call!698967 () Bool)

(assert (=> b!7610591 (= res!3047053 call!698967)))

(assert (=> b!7610591 (=> (not res!3047053) (not e!4526467))))

(declare-fun b!7610592 () Bool)

(declare-fun e!4526468 () Bool)

(assert (=> b!7610592 (= e!4526466 e!4526468)))

(declare-fun res!3047052 () Bool)

(assert (=> b!7610592 (= res!3047052 call!698967)))

(assert (=> b!7610592 (=> res!3047052 e!4526468)))

(declare-fun b!7610593 () Bool)

(assert (=> b!7610593 (= e!4526465 e!4526466)))

(declare-fun c!1403284 () Bool)

(assert (=> b!7610593 (= c!1403284 ((_ is Union!20219) r!19218))))

(declare-fun b!7610594 () Bool)

(declare-fun call!698966 () Bool)

(assert (=> b!7610594 (= e!4526468 call!698966)))

(declare-fun bm!698961 () Bool)

(assert (=> bm!698961 (= call!698967 (lostCause!1897 (ite c!1403284 (regOne!40951 r!19218) (regOne!40950 r!19218))))))

(declare-fun b!7610595 () Bool)

(assert (=> b!7610595 (= e!4526467 call!698966)))

(declare-fun bm!698962 () Bool)

(assert (=> bm!698962 (= call!698966 (lostCause!1897 (ite c!1403284 (regTwo!40951 r!19218) (regTwo!40950 r!19218))))))

(declare-fun b!7610596 () Bool)

(assert (=> b!7610596 (= e!4526464 e!4526463)))

(declare-fun res!3047051 () Bool)

(assert (=> b!7610596 (=> res!3047051 e!4526463)))

(assert (=> b!7610596 (= res!3047051 ((_ is EmptyLang!20219) r!19218))))

(assert (= (and d!2322259 res!3047055) b!7610596))

(assert (= (and b!7610596 (not res!3047051)) b!7610590))

(assert (= (and b!7610590 res!3047054) b!7610593))

(assert (= (and b!7610593 c!1403284) b!7610591))

(assert (= (and b!7610593 (not c!1403284)) b!7610592))

(assert (= (and b!7610591 res!3047053) b!7610595))

(assert (= (and b!7610592 (not res!3047052)) b!7610594))

(assert (= (or b!7610591 b!7610592) bm!698961))

(assert (= (or b!7610595 b!7610594) bm!698962))

(declare-fun m!8148044 () Bool)

(assert (=> d!2322259 m!8148044))

(assert (=> d!2322259 m!8148044))

(declare-fun m!8148046 () Bool)

(assert (=> d!2322259 m!8148046))

(declare-fun m!8148048 () Bool)

(assert (=> bm!698961 m!8148048))

(declare-fun m!8148050 () Bool)

(assert (=> bm!698962 m!8148050))

(assert (=> d!2322217 d!2322259))

(declare-fun c!1403286 () Bool)

(declare-fun bm!698963 () Bool)

(declare-fun call!698969 () Bool)

(assert (=> bm!698963 (= call!698969 (validRegex!10641 (ite c!1403286 (regTwo!40951 (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218))) (regTwo!40950 (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218))))))))

(declare-fun b!7610597 () Bool)

(declare-fun e!4526475 () Bool)

(declare-fun e!4526469 () Bool)

(assert (=> b!7610597 (= e!4526475 e!4526469)))

(assert (=> b!7610597 (= c!1403286 ((_ is Union!20219) (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218))))))

(declare-fun b!7610598 () Bool)

(declare-fun e!4526471 () Bool)

(assert (=> b!7610598 (= e!4526475 e!4526471)))

(declare-fun res!3047058 () Bool)

(assert (=> b!7610598 (= res!3047058 (not (nullable!8840 (reg!20548 (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218))))))))

(assert (=> b!7610598 (=> (not res!3047058) (not e!4526471))))

(declare-fun b!7610599 () Bool)

(declare-fun res!3047059 () Bool)

(declare-fun e!4526472 () Bool)

(assert (=> b!7610599 (=> res!3047059 e!4526472)))

(assert (=> b!7610599 (= res!3047059 (not ((_ is Concat!29064) (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218)))))))

(assert (=> b!7610599 (= e!4526469 e!4526472)))

(declare-fun d!2322261 () Bool)

(declare-fun res!3047057 () Bool)

(declare-fun e!4526470 () Bool)

(assert (=> d!2322261 (=> res!3047057 e!4526470)))

(assert (=> d!2322261 (= res!3047057 ((_ is ElementMatch!20219) (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218))))))

(assert (=> d!2322261 (= (validRegex!10641 (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218))) e!4526470)))

(declare-fun call!698968 () Bool)

(declare-fun bm!698964 () Bool)

(declare-fun c!1403285 () Bool)

(assert (=> bm!698964 (= call!698968 (validRegex!10641 (ite c!1403285 (reg!20548 (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218))) (ite c!1403286 (regOne!40951 (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218))) (regOne!40950 (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218)))))))))

(declare-fun b!7610600 () Bool)

(assert (=> b!7610600 (= e!4526471 call!698968)))

(declare-fun b!7610601 () Bool)

(declare-fun e!4526473 () Bool)

(assert (=> b!7610601 (= e!4526473 call!698969)))

(declare-fun bm!698965 () Bool)

(declare-fun call!698970 () Bool)

(assert (=> bm!698965 (= call!698970 call!698968)))

(declare-fun b!7610602 () Bool)

(assert (=> b!7610602 (= e!4526470 e!4526475)))

(assert (=> b!7610602 (= c!1403285 ((_ is Star!20219) (ite c!1403268 (regTwo!40951 r!19218) (regTwo!40950 r!19218))))))

(declare-fun b!7610603 () Bool)

(declare-fun res!3047060 () Bool)

(assert (=> b!7610603 (=> (not res!3047060) (not e!4526473))))

(assert (=> b!7610603 (= res!3047060 call!698970)))

(assert (=> b!7610603 (= e!4526469 e!4526473)))

(declare-fun b!7610604 () Bool)

(declare-fun e!4526474 () Bool)

(assert (=> b!7610604 (= e!4526472 e!4526474)))

(declare-fun res!3047056 () Bool)

(assert (=> b!7610604 (=> (not res!3047056) (not e!4526474))))

(assert (=> b!7610604 (= res!3047056 call!698970)))

(declare-fun b!7610605 () Bool)

(assert (=> b!7610605 (= e!4526474 call!698969)))

(assert (= (and d!2322261 (not res!3047057)) b!7610602))

(assert (= (and b!7610602 c!1403285) b!7610598))

(assert (= (and b!7610602 (not c!1403285)) b!7610597))

(assert (= (and b!7610598 res!3047058) b!7610600))

(assert (= (and b!7610597 c!1403286) b!7610603))

(assert (= (and b!7610597 (not c!1403286)) b!7610599))

(assert (= (and b!7610603 res!3047060) b!7610601))

(assert (= (and b!7610599 (not res!3047059)) b!7610604))

(assert (= (and b!7610604 res!3047056) b!7610605))

(assert (= (or b!7610603 b!7610604) bm!698965))

(assert (= (or b!7610601 b!7610605) bm!698963))

(assert (= (or b!7610600 bm!698965) bm!698964))

(declare-fun m!8148052 () Bool)

(assert (=> bm!698963 m!8148052))

(declare-fun m!8148054 () Bool)

(assert (=> b!7610598 m!8148054))

(declare-fun m!8148056 () Bool)

(assert (=> bm!698964 m!8148056))

(assert (=> bm!698930 d!2322261))

(declare-fun call!698972 () Bool)

(declare-fun bm!698966 () Bool)

(declare-fun c!1403288 () Bool)

(assert (=> bm!698966 (= call!698972 (validRegex!10641 (ite c!1403288 (regTwo!40951 (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))) (regTwo!40950 (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))))))))

(declare-fun b!7610606 () Bool)

(declare-fun e!4526482 () Bool)

(declare-fun e!4526476 () Bool)

(assert (=> b!7610606 (= e!4526482 e!4526476)))

(assert (=> b!7610606 (= c!1403288 ((_ is Union!20219) (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))))))

(declare-fun b!7610607 () Bool)

(declare-fun e!4526478 () Bool)

(assert (=> b!7610607 (= e!4526482 e!4526478)))

(declare-fun res!3047063 () Bool)

(assert (=> b!7610607 (= res!3047063 (not (nullable!8840 (reg!20548 (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))))))))

(assert (=> b!7610607 (=> (not res!3047063) (not e!4526478))))

(declare-fun b!7610608 () Bool)

(declare-fun res!3047064 () Bool)

(declare-fun e!4526479 () Bool)

(assert (=> b!7610608 (=> res!3047064 e!4526479)))

(assert (=> b!7610608 (= res!3047064 (not ((_ is Concat!29064) (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218))))))))

(assert (=> b!7610608 (= e!4526476 e!4526479)))

(declare-fun d!2322263 () Bool)

(declare-fun res!3047062 () Bool)

(declare-fun e!4526477 () Bool)

(assert (=> d!2322263 (=> res!3047062 e!4526477)))

(assert (=> d!2322263 (= res!3047062 ((_ is ElementMatch!20219) (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))))))

(assert (=> d!2322263 (= (validRegex!10641 (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))) e!4526477)))

(declare-fun call!698971 () Bool)

(declare-fun c!1403287 () Bool)

(declare-fun bm!698967 () Bool)

(assert (=> bm!698967 (= call!698971 (validRegex!10641 (ite c!1403287 (reg!20548 (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))) (ite c!1403288 (regOne!40951 (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))) (regOne!40950 (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218))))))))))

(declare-fun b!7610609 () Bool)

(assert (=> b!7610609 (= e!4526478 call!698971)))

(declare-fun b!7610610 () Bool)

(declare-fun e!4526480 () Bool)

(assert (=> b!7610610 (= e!4526480 call!698972)))

(declare-fun bm!698968 () Bool)

(declare-fun call!698973 () Bool)

(assert (=> bm!698968 (= call!698973 call!698971)))

(declare-fun b!7610611 () Bool)

(assert (=> b!7610611 (= e!4526477 e!4526482)))

(assert (=> b!7610611 (= c!1403287 ((_ is Star!20219) (ite c!1403272 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))))))

(declare-fun b!7610612 () Bool)

(declare-fun res!3047065 () Bool)

(assert (=> b!7610612 (=> (not res!3047065) (not e!4526480))))

(assert (=> b!7610612 (= res!3047065 call!698973)))

(assert (=> b!7610612 (= e!4526476 e!4526480)))

(declare-fun b!7610613 () Bool)

(declare-fun e!4526481 () Bool)

(assert (=> b!7610613 (= e!4526479 e!4526481)))

(declare-fun res!3047061 () Bool)

(assert (=> b!7610613 (=> (not res!3047061) (not e!4526481))))

(assert (=> b!7610613 (= res!3047061 call!698973)))

(declare-fun b!7610614 () Bool)

(assert (=> b!7610614 (= e!4526481 call!698972)))

(assert (= (and d!2322263 (not res!3047062)) b!7610611))

(assert (= (and b!7610611 c!1403287) b!7610607))

(assert (= (and b!7610611 (not c!1403287)) b!7610606))

(assert (= (and b!7610607 res!3047063) b!7610609))

(assert (= (and b!7610606 c!1403288) b!7610612))

(assert (= (and b!7610606 (not c!1403288)) b!7610608))

(assert (= (and b!7610612 res!3047065) b!7610610))

(assert (= (and b!7610608 (not res!3047064)) b!7610613))

(assert (= (and b!7610613 res!3047061) b!7610614))

(assert (= (or b!7610612 b!7610613) bm!698968))

(assert (= (or b!7610610 b!7610614) bm!698966))

(assert (= (or b!7610609 bm!698968) bm!698967))

(declare-fun m!8148058 () Bool)

(assert (=> bm!698966 m!8148058))

(declare-fun m!8148060 () Bool)

(assert (=> b!7610607 m!8148060))

(declare-fun m!8148062 () Bool)

(assert (=> bm!698967 m!8148062))

(assert (=> bm!698933 d!2322263))

(declare-fun b!7610615 () Bool)

(declare-fun e!4526483 () Bool)

(declare-fun e!4526486 () Bool)

(assert (=> b!7610615 (= e!4526483 e!4526486)))

(declare-fun res!3047069 () Bool)

(declare-fun call!698974 () Bool)

(assert (=> b!7610615 (= res!3047069 call!698974)))

(assert (=> b!7610615 (=> res!3047069 e!4526486)))

(declare-fun b!7610616 () Bool)

(declare-fun e!4526488 () Bool)

(declare-fun e!4526484 () Bool)

(assert (=> b!7610616 (= e!4526488 e!4526484)))

(declare-fun res!3047070 () Bool)

(assert (=> b!7610616 (=> (not res!3047070) (not e!4526484))))

(assert (=> b!7610616 (= res!3047070 (and (not ((_ is EmptyLang!20219) (regOne!40951 r!19218))) (not ((_ is ElementMatch!20219) (regOne!40951 r!19218)))))))

(declare-fun b!7610617 () Bool)

(declare-fun call!698975 () Bool)

(assert (=> b!7610617 (= e!4526486 call!698975)))

(declare-fun b!7610618 () Bool)

(declare-fun e!4526487 () Bool)

(assert (=> b!7610618 (= e!4526483 e!4526487)))

(declare-fun res!3047067 () Bool)

(assert (=> b!7610618 (= res!3047067 call!698975)))

(assert (=> b!7610618 (=> (not res!3047067) (not e!4526487))))

(declare-fun b!7610619 () Bool)

(declare-fun e!4526485 () Bool)

(assert (=> b!7610619 (= e!4526484 e!4526485)))

(declare-fun res!3047068 () Bool)

(assert (=> b!7610619 (=> res!3047068 e!4526485)))

(assert (=> b!7610619 (= res!3047068 ((_ is Star!20219) (regOne!40951 r!19218)))))

(declare-fun b!7610620 () Bool)

(assert (=> b!7610620 (= e!4526485 e!4526483)))

(declare-fun c!1403289 () Bool)

(assert (=> b!7610620 (= c!1403289 ((_ is Union!20219) (regOne!40951 r!19218)))))

(declare-fun bm!698969 () Bool)

(assert (=> bm!698969 (= call!698974 (nullable!8840 (ite c!1403289 (regOne!40951 (regOne!40951 r!19218)) (regTwo!40950 (regOne!40951 r!19218)))))))

(declare-fun b!7610621 () Bool)

(assert (=> b!7610621 (= e!4526487 call!698974)))

(declare-fun d!2322265 () Bool)

(declare-fun res!3047066 () Bool)

(assert (=> d!2322265 (=> res!3047066 e!4526488)))

(assert (=> d!2322265 (= res!3047066 ((_ is EmptyExpr!20219) (regOne!40951 r!19218)))))

(assert (=> d!2322265 (= (nullableFct!3523 (regOne!40951 r!19218)) e!4526488)))

(declare-fun bm!698970 () Bool)

(assert (=> bm!698970 (= call!698975 (nullable!8840 (ite c!1403289 (regTwo!40951 (regOne!40951 r!19218)) (regOne!40950 (regOne!40951 r!19218)))))))

(assert (= (and d!2322265 (not res!3047066)) b!7610616))

(assert (= (and b!7610616 res!3047070) b!7610619))

(assert (= (and b!7610619 (not res!3047068)) b!7610620))

(assert (= (and b!7610620 c!1403289) b!7610615))

(assert (= (and b!7610620 (not c!1403289)) b!7610618))

(assert (= (and b!7610615 (not res!3047069)) b!7610617))

(assert (= (and b!7610618 res!3047067) b!7610621))

(assert (= (or b!7610617 b!7610618) bm!698970))

(assert (= (or b!7610615 b!7610621) bm!698969))

(declare-fun m!8148064 () Bool)

(assert (=> bm!698969 m!8148064))

(declare-fun m!8148066 () Bool)

(assert (=> bm!698970 m!8148066))

(assert (=> d!2322233 d!2322265))

(declare-fun b!7610622 () Bool)

(declare-fun e!4526489 () Bool)

(declare-fun e!4526491 () Bool)

(assert (=> b!7610622 (= e!4526489 e!4526491)))

(declare-fun res!3047074 () Bool)

(assert (=> b!7610622 (=> (not res!3047074) (not e!4526491))))

(assert (=> b!7610622 (= res!3047074 (and (not ((_ is ElementMatch!20219) (regTwo!40951 r!19218))) (not ((_ is Star!20219) (regTwo!40951 r!19218)))))))

(declare-fun d!2322267 () Bool)

(declare-fun lt!2654998 () Bool)

(assert (=> d!2322267 (= lt!2654998 (isEmpty!41586 (getLanguageWitness!1134 (regTwo!40951 r!19218))))))

(declare-fun e!4526490 () Bool)

(assert (=> d!2322267 (= lt!2654998 e!4526490)))

(declare-fun res!3047075 () Bool)

(assert (=> d!2322267 (=> (not res!3047075) (not e!4526490))))

(assert (=> d!2322267 (= res!3047075 (not ((_ is EmptyExpr!20219) (regTwo!40951 r!19218))))))

(assert (=> d!2322267 (= (lostCauseFct!543 (regTwo!40951 r!19218)) lt!2654998)))

(declare-fun b!7610623 () Bool)

(declare-fun e!4526492 () Bool)

(declare-fun e!4526493 () Bool)

(assert (=> b!7610623 (= e!4526492 e!4526493)))

(declare-fun res!3047073 () Bool)

(declare-fun call!698977 () Bool)

(assert (=> b!7610623 (= res!3047073 call!698977)))

(assert (=> b!7610623 (=> (not res!3047073) (not e!4526493))))

(declare-fun b!7610624 () Bool)

(declare-fun e!4526494 () Bool)

(assert (=> b!7610624 (= e!4526492 e!4526494)))

(declare-fun res!3047072 () Bool)

(assert (=> b!7610624 (= res!3047072 call!698977)))

(assert (=> b!7610624 (=> res!3047072 e!4526494)))

(declare-fun b!7610625 () Bool)

(assert (=> b!7610625 (= e!4526491 e!4526492)))

(declare-fun c!1403290 () Bool)

(assert (=> b!7610625 (= c!1403290 ((_ is Union!20219) (regTwo!40951 r!19218)))))

(declare-fun b!7610626 () Bool)

(declare-fun call!698976 () Bool)

(assert (=> b!7610626 (= e!4526494 call!698976)))

(declare-fun bm!698971 () Bool)

(assert (=> bm!698971 (= call!698977 (lostCause!1897 (ite c!1403290 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218)))))))

(declare-fun b!7610627 () Bool)

(assert (=> b!7610627 (= e!4526493 call!698976)))

(declare-fun bm!698972 () Bool)

(assert (=> bm!698972 (= call!698976 (lostCause!1897 (ite c!1403290 (regTwo!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))))))

(declare-fun b!7610628 () Bool)

(assert (=> b!7610628 (= e!4526490 e!4526489)))

(declare-fun res!3047071 () Bool)

(assert (=> b!7610628 (=> res!3047071 e!4526489)))

(assert (=> b!7610628 (= res!3047071 ((_ is EmptyLang!20219) (regTwo!40951 r!19218)))))

(assert (= (and d!2322267 res!3047075) b!7610628))

(assert (= (and b!7610628 (not res!3047071)) b!7610622))

(assert (= (and b!7610622 res!3047074) b!7610625))

(assert (= (and b!7610625 c!1403290) b!7610623))

(assert (= (and b!7610625 (not c!1403290)) b!7610624))

(assert (= (and b!7610623 res!3047073) b!7610627))

(assert (= (and b!7610624 (not res!3047072)) b!7610626))

(assert (= (or b!7610623 b!7610624) bm!698971))

(assert (= (or b!7610627 b!7610626) bm!698972))

(declare-fun m!8148068 () Bool)

(assert (=> d!2322267 m!8148068))

(assert (=> d!2322267 m!8148068))

(declare-fun m!8148070 () Bool)

(assert (=> d!2322267 m!8148070))

(declare-fun m!8148072 () Bool)

(assert (=> bm!698971 m!8148072))

(declare-fun m!8148074 () Bool)

(assert (=> bm!698972 m!8148074))

(assert (=> d!2322219 d!2322267))

(declare-fun b!7610629 () Bool)

(declare-fun e!4526495 () Bool)

(declare-fun e!4526498 () Bool)

(assert (=> b!7610629 (= e!4526495 e!4526498)))

(declare-fun res!3047079 () Bool)

(declare-fun call!698978 () Bool)

(assert (=> b!7610629 (= res!3047079 call!698978)))

(assert (=> b!7610629 (=> res!3047079 e!4526498)))

(declare-fun b!7610630 () Bool)

(declare-fun e!4526500 () Bool)

(declare-fun e!4526496 () Bool)

(assert (=> b!7610630 (= e!4526500 e!4526496)))

(declare-fun res!3047080 () Bool)

(assert (=> b!7610630 (=> (not res!3047080) (not e!4526496))))

(assert (=> b!7610630 (= res!3047080 (and (not ((_ is EmptyLang!20219) (regTwo!40951 r!19218))) (not ((_ is ElementMatch!20219) (regTwo!40951 r!19218)))))))

(declare-fun b!7610631 () Bool)

(declare-fun call!698979 () Bool)

(assert (=> b!7610631 (= e!4526498 call!698979)))

(declare-fun b!7610632 () Bool)

(declare-fun e!4526499 () Bool)

(assert (=> b!7610632 (= e!4526495 e!4526499)))

(declare-fun res!3047077 () Bool)

(assert (=> b!7610632 (= res!3047077 call!698979)))

(assert (=> b!7610632 (=> (not res!3047077) (not e!4526499))))

(declare-fun b!7610633 () Bool)

(declare-fun e!4526497 () Bool)

(assert (=> b!7610633 (= e!4526496 e!4526497)))

(declare-fun res!3047078 () Bool)

(assert (=> b!7610633 (=> res!3047078 e!4526497)))

(assert (=> b!7610633 (= res!3047078 ((_ is Star!20219) (regTwo!40951 r!19218)))))

(declare-fun b!7610634 () Bool)

(assert (=> b!7610634 (= e!4526497 e!4526495)))

(declare-fun c!1403291 () Bool)

(assert (=> b!7610634 (= c!1403291 ((_ is Union!20219) (regTwo!40951 r!19218)))))

(declare-fun bm!698973 () Bool)

(assert (=> bm!698973 (= call!698978 (nullable!8840 (ite c!1403291 (regOne!40951 (regTwo!40951 r!19218)) (regTwo!40950 (regTwo!40951 r!19218)))))))

(declare-fun b!7610635 () Bool)

(assert (=> b!7610635 (= e!4526499 call!698978)))

(declare-fun d!2322269 () Bool)

(declare-fun res!3047076 () Bool)

(assert (=> d!2322269 (=> res!3047076 e!4526500)))

(assert (=> d!2322269 (= res!3047076 ((_ is EmptyExpr!20219) (regTwo!40951 r!19218)))))

(assert (=> d!2322269 (= (nullableFct!3523 (regTwo!40951 r!19218)) e!4526500)))

(declare-fun bm!698974 () Bool)

(assert (=> bm!698974 (= call!698979 (nullable!8840 (ite c!1403291 (regTwo!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218)))))))

(assert (= (and d!2322269 (not res!3047076)) b!7610630))

(assert (= (and b!7610630 res!3047080) b!7610633))

(assert (= (and b!7610633 (not res!3047078)) b!7610634))

(assert (= (and b!7610634 c!1403291) b!7610629))

(assert (= (and b!7610634 (not c!1403291)) b!7610632))

(assert (= (and b!7610629 (not res!3047079)) b!7610631))

(assert (= (and b!7610632 res!3047077) b!7610635))

(assert (= (or b!7610631 b!7610632) bm!698974))

(assert (= (or b!7610629 b!7610635) bm!698973))

(declare-fun m!8148076 () Bool)

(assert (=> bm!698973 m!8148076))

(declare-fun m!8148078 () Bool)

(assert (=> bm!698974 m!8148078))

(assert (=> d!2322237 d!2322269))

(declare-fun bm!698975 () Bool)

(declare-fun c!1403293 () Bool)

(declare-fun call!698981 () Bool)

(assert (=> bm!698975 (= call!698981 (validRegex!10641 (ite c!1403293 (regTwo!40951 (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218))))) (regTwo!40950 (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218))))))))))

(declare-fun b!7610636 () Bool)

(declare-fun e!4526507 () Bool)

(declare-fun e!4526501 () Bool)

(assert (=> b!7610636 (= e!4526507 e!4526501)))

(assert (=> b!7610636 (= c!1403293 ((_ is Union!20219) (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218))))))))

(declare-fun b!7610637 () Bool)

(declare-fun e!4526503 () Bool)

(assert (=> b!7610637 (= e!4526507 e!4526503)))

(declare-fun res!3047083 () Bool)

(assert (=> b!7610637 (= res!3047083 (not (nullable!8840 (reg!20548 (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218))))))))))

(assert (=> b!7610637 (=> (not res!3047083) (not e!4526503))))

(declare-fun b!7610638 () Bool)

(declare-fun res!3047084 () Bool)

(declare-fun e!4526504 () Bool)

(assert (=> b!7610638 (=> res!3047084 e!4526504)))

(assert (=> b!7610638 (= res!3047084 (not ((_ is Concat!29064) (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218)))))))))

(assert (=> b!7610638 (= e!4526501 e!4526504)))

(declare-fun d!2322271 () Bool)

(declare-fun res!3047082 () Bool)

(declare-fun e!4526502 () Bool)

(assert (=> d!2322271 (=> res!3047082 e!4526502)))

(assert (=> d!2322271 (= res!3047082 ((_ is ElementMatch!20219) (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218))))))))

(assert (=> d!2322271 (= (validRegex!10641 (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218))))) e!4526502)))

(declare-fun bm!698976 () Bool)

(declare-fun c!1403292 () Bool)

(declare-fun call!698980 () Bool)

(assert (=> bm!698976 (= call!698980 (validRegex!10641 (ite c!1403292 (reg!20548 (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218))))) (ite c!1403293 (regOne!40951 (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218))))) (regOne!40950 (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218)))))))))))

(declare-fun b!7610639 () Bool)

(assert (=> b!7610639 (= e!4526503 call!698980)))

(declare-fun b!7610640 () Bool)

(declare-fun e!4526505 () Bool)

(assert (=> b!7610640 (= e!4526505 call!698981)))

(declare-fun bm!698977 () Bool)

(declare-fun call!698982 () Bool)

(assert (=> bm!698977 (= call!698982 call!698980)))

(declare-fun b!7610641 () Bool)

(assert (=> b!7610641 (= e!4526502 e!4526507)))

(assert (=> b!7610641 (= c!1403292 ((_ is Star!20219) (ite c!1403271 (reg!20548 (regTwo!40951 r!19218)) (ite c!1403272 (regOne!40951 (regTwo!40951 r!19218)) (regOne!40950 (regTwo!40951 r!19218))))))))

(declare-fun b!7610642 () Bool)

(declare-fun res!3047085 () Bool)

(assert (=> b!7610642 (=> (not res!3047085) (not e!4526505))))

(assert (=> b!7610642 (= res!3047085 call!698982)))

(assert (=> b!7610642 (= e!4526501 e!4526505)))

(declare-fun b!7610643 () Bool)

(declare-fun e!4526506 () Bool)

(assert (=> b!7610643 (= e!4526504 e!4526506)))

(declare-fun res!3047081 () Bool)

(assert (=> b!7610643 (=> (not res!3047081) (not e!4526506))))

(assert (=> b!7610643 (= res!3047081 call!698982)))

(declare-fun b!7610644 () Bool)

(assert (=> b!7610644 (= e!4526506 call!698981)))

(assert (= (and d!2322271 (not res!3047082)) b!7610641))

(assert (= (and b!7610641 c!1403292) b!7610637))

(assert (= (and b!7610641 (not c!1403292)) b!7610636))

(assert (= (and b!7610637 res!3047083) b!7610639))

(assert (= (and b!7610636 c!1403293) b!7610642))

(assert (= (and b!7610636 (not c!1403293)) b!7610638))

(assert (= (and b!7610642 res!3047085) b!7610640))

(assert (= (and b!7610638 (not res!3047084)) b!7610643))

(assert (= (and b!7610643 res!3047081) b!7610644))

(assert (= (or b!7610642 b!7610643) bm!698977))

(assert (= (or b!7610640 b!7610644) bm!698975))

(assert (= (or b!7610639 bm!698977) bm!698976))

(declare-fun m!8148080 () Bool)

(assert (=> bm!698975 m!8148080))

(declare-fun m!8148082 () Bool)

(assert (=> b!7610637 m!8148082))

(declare-fun m!8148084 () Bool)

(assert (=> bm!698976 m!8148084))

(assert (=> bm!698934 d!2322271))

(declare-fun b!7610645 () Bool)

(declare-fun e!4526508 () Bool)

(assert (=> b!7610645 (= e!4526508 tp_is_empty!50793)))

(declare-fun b!7610647 () Bool)

(declare-fun tp!2220743 () Bool)

(assert (=> b!7610647 (= e!4526508 tp!2220743)))

(declare-fun b!7610648 () Bool)

(declare-fun tp!2220740 () Bool)

(declare-fun tp!2220741 () Bool)

(assert (=> b!7610648 (= e!4526508 (and tp!2220740 tp!2220741))))

(declare-fun b!7610646 () Bool)

(declare-fun tp!2220744 () Bool)

(declare-fun tp!2220742 () Bool)

(assert (=> b!7610646 (= e!4526508 (and tp!2220744 tp!2220742))))

(assert (=> b!7610484 (= tp!2220688 e!4526508)))

(assert (= (and b!7610484 ((_ is ElementMatch!20219) (reg!20548 (regTwo!40950 r!19218)))) b!7610645))

(assert (= (and b!7610484 ((_ is Concat!29064) (reg!20548 (regTwo!40950 r!19218)))) b!7610646))

(assert (= (and b!7610484 ((_ is Star!20219) (reg!20548 (regTwo!40950 r!19218)))) b!7610647))

(assert (= (and b!7610484 ((_ is Union!20219) (reg!20548 (regTwo!40950 r!19218)))) b!7610648))

(declare-fun b!7610649 () Bool)

(declare-fun e!4526509 () Bool)

(assert (=> b!7610649 (= e!4526509 tp_is_empty!50793)))

(declare-fun b!7610651 () Bool)

(declare-fun tp!2220748 () Bool)

(assert (=> b!7610651 (= e!4526509 tp!2220748)))

(declare-fun b!7610652 () Bool)

(declare-fun tp!2220745 () Bool)

(declare-fun tp!2220746 () Bool)

(assert (=> b!7610652 (= e!4526509 (and tp!2220745 tp!2220746))))

(declare-fun b!7610650 () Bool)

(declare-fun tp!2220749 () Bool)

(declare-fun tp!2220747 () Bool)

(assert (=> b!7610650 (= e!4526509 (and tp!2220749 tp!2220747))))

(assert (=> b!7610479 (= tp!2220684 e!4526509)))

(assert (= (and b!7610479 ((_ is ElementMatch!20219) (regOne!40950 (regOne!40950 r!19218)))) b!7610649))

(assert (= (and b!7610479 ((_ is Concat!29064) (regOne!40950 (regOne!40950 r!19218)))) b!7610650))

(assert (= (and b!7610479 ((_ is Star!20219) (regOne!40950 (regOne!40950 r!19218)))) b!7610651))

(assert (= (and b!7610479 ((_ is Union!20219) (regOne!40950 (regOne!40950 r!19218)))) b!7610652))

(declare-fun b!7610653 () Bool)

(declare-fun e!4526510 () Bool)

(assert (=> b!7610653 (= e!4526510 tp_is_empty!50793)))

(declare-fun b!7610655 () Bool)

(declare-fun tp!2220753 () Bool)

(assert (=> b!7610655 (= e!4526510 tp!2220753)))

(declare-fun b!7610656 () Bool)

(declare-fun tp!2220750 () Bool)

(declare-fun tp!2220751 () Bool)

(assert (=> b!7610656 (= e!4526510 (and tp!2220750 tp!2220751))))

(declare-fun b!7610654 () Bool)

(declare-fun tp!2220754 () Bool)

(declare-fun tp!2220752 () Bool)

(assert (=> b!7610654 (= e!4526510 (and tp!2220754 tp!2220752))))

(assert (=> b!7610479 (= tp!2220682 e!4526510)))

(assert (= (and b!7610479 ((_ is ElementMatch!20219) (regTwo!40950 (regOne!40950 r!19218)))) b!7610653))

(assert (= (and b!7610479 ((_ is Concat!29064) (regTwo!40950 (regOne!40950 r!19218)))) b!7610654))

(assert (= (and b!7610479 ((_ is Star!20219) (regTwo!40950 (regOne!40950 r!19218)))) b!7610655))

(assert (= (and b!7610479 ((_ is Union!20219) (regTwo!40950 (regOne!40950 r!19218)))) b!7610656))

(declare-fun b!7610657 () Bool)

(declare-fun e!4526511 () Bool)

(assert (=> b!7610657 (= e!4526511 tp_is_empty!50793)))

(declare-fun b!7610659 () Bool)

(declare-fun tp!2220758 () Bool)

(assert (=> b!7610659 (= e!4526511 tp!2220758)))

(declare-fun b!7610660 () Bool)

(declare-fun tp!2220755 () Bool)

(declare-fun tp!2220756 () Bool)

(assert (=> b!7610660 (= e!4526511 (and tp!2220755 tp!2220756))))

(declare-fun b!7610658 () Bool)

(declare-fun tp!2220759 () Bool)

(declare-fun tp!2220757 () Bool)

(assert (=> b!7610658 (= e!4526511 (and tp!2220759 tp!2220757))))

(assert (=> b!7610493 (= tp!2220695 e!4526511)))

(assert (= (and b!7610493 ((_ is ElementMatch!20219) (regOne!40951 (regTwo!40951 r!19218)))) b!7610657))

(assert (= (and b!7610493 ((_ is Concat!29064) (regOne!40951 (regTwo!40951 r!19218)))) b!7610658))

(assert (= (and b!7610493 ((_ is Star!20219) (regOne!40951 (regTwo!40951 r!19218)))) b!7610659))

(assert (= (and b!7610493 ((_ is Union!20219) (regOne!40951 (regTwo!40951 r!19218)))) b!7610660))

(declare-fun b!7610661 () Bool)

(declare-fun e!4526512 () Bool)

(assert (=> b!7610661 (= e!4526512 tp_is_empty!50793)))

(declare-fun b!7610663 () Bool)

(declare-fun tp!2220763 () Bool)

(assert (=> b!7610663 (= e!4526512 tp!2220763)))

(declare-fun b!7610664 () Bool)

(declare-fun tp!2220760 () Bool)

(declare-fun tp!2220761 () Bool)

(assert (=> b!7610664 (= e!4526512 (and tp!2220760 tp!2220761))))

(declare-fun b!7610662 () Bool)

(declare-fun tp!2220764 () Bool)

(declare-fun tp!2220762 () Bool)

(assert (=> b!7610662 (= e!4526512 (and tp!2220764 tp!2220762))))

(assert (=> b!7610493 (= tp!2220696 e!4526512)))

(assert (= (and b!7610493 ((_ is ElementMatch!20219) (regTwo!40951 (regTwo!40951 r!19218)))) b!7610661))

(assert (= (and b!7610493 ((_ is Concat!29064) (regTwo!40951 (regTwo!40951 r!19218)))) b!7610662))

(assert (= (and b!7610493 ((_ is Star!20219) (regTwo!40951 (regTwo!40951 r!19218)))) b!7610663))

(assert (= (and b!7610493 ((_ is Union!20219) (regTwo!40951 (regTwo!40951 r!19218)))) b!7610664))

(declare-fun b!7610665 () Bool)

(declare-fun e!4526513 () Bool)

(assert (=> b!7610665 (= e!4526513 tp_is_empty!50793)))

(declare-fun b!7610667 () Bool)

(declare-fun tp!2220768 () Bool)

(assert (=> b!7610667 (= e!4526513 tp!2220768)))

(declare-fun b!7610668 () Bool)

(declare-fun tp!2220765 () Bool)

(declare-fun tp!2220766 () Bool)

(assert (=> b!7610668 (= e!4526513 (and tp!2220765 tp!2220766))))

(declare-fun b!7610666 () Bool)

(declare-fun tp!2220769 () Bool)

(declare-fun tp!2220767 () Bool)

(assert (=> b!7610666 (= e!4526513 (and tp!2220769 tp!2220767))))

(assert (=> b!7610480 (= tp!2220683 e!4526513)))

(assert (= (and b!7610480 ((_ is ElementMatch!20219) (reg!20548 (regOne!40950 r!19218)))) b!7610665))

(assert (= (and b!7610480 ((_ is Concat!29064) (reg!20548 (regOne!40950 r!19218)))) b!7610666))

(assert (= (and b!7610480 ((_ is Star!20219) (reg!20548 (regOne!40950 r!19218)))) b!7610667))

(assert (= (and b!7610480 ((_ is Union!20219) (reg!20548 (regOne!40950 r!19218)))) b!7610668))

(declare-fun b!7610669 () Bool)

(declare-fun e!4526514 () Bool)

(assert (=> b!7610669 (= e!4526514 tp_is_empty!50793)))

(declare-fun b!7610671 () Bool)

(declare-fun tp!2220773 () Bool)

(assert (=> b!7610671 (= e!4526514 tp!2220773)))

(declare-fun b!7610672 () Bool)

(declare-fun tp!2220770 () Bool)

(declare-fun tp!2220771 () Bool)

(assert (=> b!7610672 (= e!4526514 (and tp!2220770 tp!2220771))))

(declare-fun b!7610670 () Bool)

(declare-fun tp!2220774 () Bool)

(declare-fun tp!2220772 () Bool)

(assert (=> b!7610670 (= e!4526514 (and tp!2220774 tp!2220772))))

(assert (=> b!7610489 (= tp!2220690 e!4526514)))

(assert (= (and b!7610489 ((_ is ElementMatch!20219) (regOne!40951 (regOne!40951 r!19218)))) b!7610669))

(assert (= (and b!7610489 ((_ is Concat!29064) (regOne!40951 (regOne!40951 r!19218)))) b!7610670))

(assert (= (and b!7610489 ((_ is Star!20219) (regOne!40951 (regOne!40951 r!19218)))) b!7610671))

(assert (= (and b!7610489 ((_ is Union!20219) (regOne!40951 (regOne!40951 r!19218)))) b!7610672))

(declare-fun b!7610673 () Bool)

(declare-fun e!4526515 () Bool)

(assert (=> b!7610673 (= e!4526515 tp_is_empty!50793)))

(declare-fun b!7610675 () Bool)

(declare-fun tp!2220778 () Bool)

(assert (=> b!7610675 (= e!4526515 tp!2220778)))

(declare-fun b!7610676 () Bool)

(declare-fun tp!2220775 () Bool)

(declare-fun tp!2220776 () Bool)

(assert (=> b!7610676 (= e!4526515 (and tp!2220775 tp!2220776))))

(declare-fun b!7610674 () Bool)

(declare-fun tp!2220779 () Bool)

(declare-fun tp!2220777 () Bool)

(assert (=> b!7610674 (= e!4526515 (and tp!2220779 tp!2220777))))

(assert (=> b!7610489 (= tp!2220691 e!4526515)))

(assert (= (and b!7610489 ((_ is ElementMatch!20219) (regTwo!40951 (regOne!40951 r!19218)))) b!7610673))

(assert (= (and b!7610489 ((_ is Concat!29064) (regTwo!40951 (regOne!40951 r!19218)))) b!7610674))

(assert (= (and b!7610489 ((_ is Star!20219) (regTwo!40951 (regOne!40951 r!19218)))) b!7610675))

(assert (= (and b!7610489 ((_ is Union!20219) (regTwo!40951 (regOne!40951 r!19218)))) b!7610676))

(declare-fun b!7610677 () Bool)

(declare-fun e!4526516 () Bool)

(assert (=> b!7610677 (= e!4526516 tp_is_empty!50793)))

(declare-fun b!7610679 () Bool)

(declare-fun tp!2220783 () Bool)

(assert (=> b!7610679 (= e!4526516 tp!2220783)))

(declare-fun b!7610680 () Bool)

(declare-fun tp!2220780 () Bool)

(declare-fun tp!2220781 () Bool)

(assert (=> b!7610680 (= e!4526516 (and tp!2220780 tp!2220781))))

(declare-fun b!7610678 () Bool)

(declare-fun tp!2220784 () Bool)

(declare-fun tp!2220782 () Bool)

(assert (=> b!7610678 (= e!4526516 (and tp!2220784 tp!2220782))))

(assert (=> b!7610485 (= tp!2220685 e!4526516)))

(assert (= (and b!7610485 ((_ is ElementMatch!20219) (regOne!40951 (regTwo!40950 r!19218)))) b!7610677))

(assert (= (and b!7610485 ((_ is Concat!29064) (regOne!40951 (regTwo!40950 r!19218)))) b!7610678))

(assert (= (and b!7610485 ((_ is Star!20219) (regOne!40951 (regTwo!40950 r!19218)))) b!7610679))

(assert (= (and b!7610485 ((_ is Union!20219) (regOne!40951 (regTwo!40950 r!19218)))) b!7610680))

(declare-fun b!7610681 () Bool)

(declare-fun e!4526517 () Bool)

(assert (=> b!7610681 (= e!4526517 tp_is_empty!50793)))

(declare-fun b!7610683 () Bool)

(declare-fun tp!2220788 () Bool)

(assert (=> b!7610683 (= e!4526517 tp!2220788)))

(declare-fun b!7610684 () Bool)

(declare-fun tp!2220785 () Bool)

(declare-fun tp!2220786 () Bool)

(assert (=> b!7610684 (= e!4526517 (and tp!2220785 tp!2220786))))

(declare-fun b!7610682 () Bool)

(declare-fun tp!2220789 () Bool)

(declare-fun tp!2220787 () Bool)

(assert (=> b!7610682 (= e!4526517 (and tp!2220789 tp!2220787))))

(assert (=> b!7610485 (= tp!2220686 e!4526517)))

(assert (= (and b!7610485 ((_ is ElementMatch!20219) (regTwo!40951 (regTwo!40950 r!19218)))) b!7610681))

(assert (= (and b!7610485 ((_ is Concat!29064) (regTwo!40951 (regTwo!40950 r!19218)))) b!7610682))

(assert (= (and b!7610485 ((_ is Star!20219) (regTwo!40951 (regTwo!40950 r!19218)))) b!7610683))

(assert (= (and b!7610485 ((_ is Union!20219) (regTwo!40951 (regTwo!40950 r!19218)))) b!7610684))

(declare-fun b!7610685 () Bool)

(declare-fun e!4526518 () Bool)

(assert (=> b!7610685 (= e!4526518 tp_is_empty!50793)))

(declare-fun b!7610687 () Bool)

(declare-fun tp!2220793 () Bool)

(assert (=> b!7610687 (= e!4526518 tp!2220793)))

(declare-fun b!7610688 () Bool)

(declare-fun tp!2220790 () Bool)

(declare-fun tp!2220791 () Bool)

(assert (=> b!7610688 (= e!4526518 (and tp!2220790 tp!2220791))))

(declare-fun b!7610686 () Bool)

(declare-fun tp!2220794 () Bool)

(declare-fun tp!2220792 () Bool)

(assert (=> b!7610686 (= e!4526518 (and tp!2220794 tp!2220792))))

(assert (=> b!7610481 (= tp!2220680 e!4526518)))

(assert (= (and b!7610481 ((_ is ElementMatch!20219) (regOne!40951 (regOne!40950 r!19218)))) b!7610685))

(assert (= (and b!7610481 ((_ is Concat!29064) (regOne!40951 (regOne!40950 r!19218)))) b!7610686))

(assert (= (and b!7610481 ((_ is Star!20219) (regOne!40951 (regOne!40950 r!19218)))) b!7610687))

(assert (= (and b!7610481 ((_ is Union!20219) (regOne!40951 (regOne!40950 r!19218)))) b!7610688))

(declare-fun b!7610689 () Bool)

(declare-fun e!4526519 () Bool)

(assert (=> b!7610689 (= e!4526519 tp_is_empty!50793)))

(declare-fun b!7610691 () Bool)

(declare-fun tp!2220798 () Bool)

(assert (=> b!7610691 (= e!4526519 tp!2220798)))

(declare-fun b!7610692 () Bool)

(declare-fun tp!2220795 () Bool)

(declare-fun tp!2220796 () Bool)

(assert (=> b!7610692 (= e!4526519 (and tp!2220795 tp!2220796))))

(declare-fun b!7610690 () Bool)

(declare-fun tp!2220799 () Bool)

(declare-fun tp!2220797 () Bool)

(assert (=> b!7610690 (= e!4526519 (and tp!2220799 tp!2220797))))

(assert (=> b!7610481 (= tp!2220681 e!4526519)))

(assert (= (and b!7610481 ((_ is ElementMatch!20219) (regTwo!40951 (regOne!40950 r!19218)))) b!7610689))

(assert (= (and b!7610481 ((_ is Concat!29064) (regTwo!40951 (regOne!40950 r!19218)))) b!7610690))

(assert (= (and b!7610481 ((_ is Star!20219) (regTwo!40951 (regOne!40950 r!19218)))) b!7610691))

(assert (= (and b!7610481 ((_ is Union!20219) (regTwo!40951 (regOne!40950 r!19218)))) b!7610692))

(declare-fun b!7610693 () Bool)

(declare-fun e!4526520 () Bool)

(assert (=> b!7610693 (= e!4526520 tp_is_empty!50793)))

(declare-fun b!7610695 () Bool)

(declare-fun tp!2220803 () Bool)

(assert (=> b!7610695 (= e!4526520 tp!2220803)))

(declare-fun b!7610696 () Bool)

(declare-fun tp!2220800 () Bool)

(declare-fun tp!2220801 () Bool)

(assert (=> b!7610696 (= e!4526520 (and tp!2220800 tp!2220801))))

(declare-fun b!7610694 () Bool)

(declare-fun tp!2220804 () Bool)

(declare-fun tp!2220802 () Bool)

(assert (=> b!7610694 (= e!4526520 (and tp!2220804 tp!2220802))))

(assert (=> b!7610495 (= tp!2220704 e!4526520)))

(assert (= (and b!7610495 ((_ is ElementMatch!20219) (regOne!40950 (reg!20548 r!19218)))) b!7610693))

(assert (= (and b!7610495 ((_ is Concat!29064) (regOne!40950 (reg!20548 r!19218)))) b!7610694))

(assert (= (and b!7610495 ((_ is Star!20219) (regOne!40950 (reg!20548 r!19218)))) b!7610695))

(assert (= (and b!7610495 ((_ is Union!20219) (regOne!40950 (reg!20548 r!19218)))) b!7610696))

(declare-fun b!7610697 () Bool)

(declare-fun e!4526521 () Bool)

(assert (=> b!7610697 (= e!4526521 tp_is_empty!50793)))

(declare-fun b!7610699 () Bool)

(declare-fun tp!2220808 () Bool)

(assert (=> b!7610699 (= e!4526521 tp!2220808)))

(declare-fun b!7610700 () Bool)

(declare-fun tp!2220805 () Bool)

(declare-fun tp!2220806 () Bool)

(assert (=> b!7610700 (= e!4526521 (and tp!2220805 tp!2220806))))

(declare-fun b!7610698 () Bool)

(declare-fun tp!2220809 () Bool)

(declare-fun tp!2220807 () Bool)

(assert (=> b!7610698 (= e!4526521 (and tp!2220809 tp!2220807))))

(assert (=> b!7610495 (= tp!2220702 e!4526521)))

(assert (= (and b!7610495 ((_ is ElementMatch!20219) (regTwo!40950 (reg!20548 r!19218)))) b!7610697))

(assert (= (and b!7610495 ((_ is Concat!29064) (regTwo!40950 (reg!20548 r!19218)))) b!7610698))

(assert (= (and b!7610495 ((_ is Star!20219) (regTwo!40950 (reg!20548 r!19218)))) b!7610699))

(assert (= (and b!7610495 ((_ is Union!20219) (regTwo!40950 (reg!20548 r!19218)))) b!7610700))

(declare-fun b!7610701 () Bool)

(declare-fun e!4526522 () Bool)

(assert (=> b!7610701 (= e!4526522 tp_is_empty!50793)))

(declare-fun b!7610703 () Bool)

(declare-fun tp!2220813 () Bool)

(assert (=> b!7610703 (= e!4526522 tp!2220813)))

(declare-fun b!7610704 () Bool)

(declare-fun tp!2220810 () Bool)

(declare-fun tp!2220811 () Bool)

(assert (=> b!7610704 (= e!4526522 (and tp!2220810 tp!2220811))))

(declare-fun b!7610702 () Bool)

(declare-fun tp!2220814 () Bool)

(declare-fun tp!2220812 () Bool)

(assert (=> b!7610702 (= e!4526522 (and tp!2220814 tp!2220812))))

(assert (=> b!7610496 (= tp!2220703 e!4526522)))

(assert (= (and b!7610496 ((_ is ElementMatch!20219) (reg!20548 (reg!20548 r!19218)))) b!7610701))

(assert (= (and b!7610496 ((_ is Concat!29064) (reg!20548 (reg!20548 r!19218)))) b!7610702))

(assert (= (and b!7610496 ((_ is Star!20219) (reg!20548 (reg!20548 r!19218)))) b!7610703))

(assert (= (and b!7610496 ((_ is Union!20219) (reg!20548 (reg!20548 r!19218)))) b!7610704))

(declare-fun b!7610705 () Bool)

(declare-fun e!4526523 () Bool)

(assert (=> b!7610705 (= e!4526523 tp_is_empty!50793)))

(declare-fun b!7610707 () Bool)

(declare-fun tp!2220818 () Bool)

(assert (=> b!7610707 (= e!4526523 tp!2220818)))

(declare-fun b!7610708 () Bool)

(declare-fun tp!2220815 () Bool)

(declare-fun tp!2220816 () Bool)

(assert (=> b!7610708 (= e!4526523 (and tp!2220815 tp!2220816))))

(declare-fun b!7610706 () Bool)

(declare-fun tp!2220819 () Bool)

(declare-fun tp!2220817 () Bool)

(assert (=> b!7610706 (= e!4526523 (and tp!2220819 tp!2220817))))

(assert (=> b!7610491 (= tp!2220699 e!4526523)))

(assert (= (and b!7610491 ((_ is ElementMatch!20219) (regOne!40950 (regTwo!40951 r!19218)))) b!7610705))

(assert (= (and b!7610491 ((_ is Concat!29064) (regOne!40950 (regTwo!40951 r!19218)))) b!7610706))

(assert (= (and b!7610491 ((_ is Star!20219) (regOne!40950 (regTwo!40951 r!19218)))) b!7610707))

(assert (= (and b!7610491 ((_ is Union!20219) (regOne!40950 (regTwo!40951 r!19218)))) b!7610708))

(declare-fun b!7610709 () Bool)

(declare-fun e!4526524 () Bool)

(assert (=> b!7610709 (= e!4526524 tp_is_empty!50793)))

(declare-fun b!7610711 () Bool)

(declare-fun tp!2220823 () Bool)

(assert (=> b!7610711 (= e!4526524 tp!2220823)))

(declare-fun b!7610712 () Bool)

(declare-fun tp!2220820 () Bool)

(declare-fun tp!2220821 () Bool)

(assert (=> b!7610712 (= e!4526524 (and tp!2220820 tp!2220821))))

(declare-fun b!7610710 () Bool)

(declare-fun tp!2220824 () Bool)

(declare-fun tp!2220822 () Bool)

(assert (=> b!7610710 (= e!4526524 (and tp!2220824 tp!2220822))))

(assert (=> b!7610491 (= tp!2220697 e!4526524)))

(assert (= (and b!7610491 ((_ is ElementMatch!20219) (regTwo!40950 (regTwo!40951 r!19218)))) b!7610709))

(assert (= (and b!7610491 ((_ is Concat!29064) (regTwo!40950 (regTwo!40951 r!19218)))) b!7610710))

(assert (= (and b!7610491 ((_ is Star!20219) (regTwo!40950 (regTwo!40951 r!19218)))) b!7610711))

(assert (= (and b!7610491 ((_ is Union!20219) (regTwo!40950 (regTwo!40951 r!19218)))) b!7610712))

(declare-fun b!7610713 () Bool)

(declare-fun e!4526525 () Bool)

(assert (=> b!7610713 (= e!4526525 tp_is_empty!50793)))

(declare-fun b!7610715 () Bool)

(declare-fun tp!2220828 () Bool)

(assert (=> b!7610715 (= e!4526525 tp!2220828)))

(declare-fun b!7610716 () Bool)

(declare-fun tp!2220825 () Bool)

(declare-fun tp!2220826 () Bool)

(assert (=> b!7610716 (= e!4526525 (and tp!2220825 tp!2220826))))

(declare-fun b!7610714 () Bool)

(declare-fun tp!2220829 () Bool)

(declare-fun tp!2220827 () Bool)

(assert (=> b!7610714 (= e!4526525 (and tp!2220829 tp!2220827))))

(assert (=> b!7610492 (= tp!2220698 e!4526525)))

(assert (= (and b!7610492 ((_ is ElementMatch!20219) (reg!20548 (regTwo!40951 r!19218)))) b!7610713))

(assert (= (and b!7610492 ((_ is Concat!29064) (reg!20548 (regTwo!40951 r!19218)))) b!7610714))

(assert (= (and b!7610492 ((_ is Star!20219) (reg!20548 (regTwo!40951 r!19218)))) b!7610715))

(assert (= (and b!7610492 ((_ is Union!20219) (reg!20548 (regTwo!40951 r!19218)))) b!7610716))

(declare-fun b!7610717 () Bool)

(declare-fun e!4526526 () Bool)

(assert (=> b!7610717 (= e!4526526 tp_is_empty!50793)))

(declare-fun b!7610719 () Bool)

(declare-fun tp!2220833 () Bool)

(assert (=> b!7610719 (= e!4526526 tp!2220833)))

(declare-fun b!7610720 () Bool)

(declare-fun tp!2220830 () Bool)

(declare-fun tp!2220831 () Bool)

(assert (=> b!7610720 (= e!4526526 (and tp!2220830 tp!2220831))))

(declare-fun b!7610718 () Bool)

(declare-fun tp!2220834 () Bool)

(declare-fun tp!2220832 () Bool)

(assert (=> b!7610718 (= e!4526526 (and tp!2220834 tp!2220832))))

(assert (=> b!7610487 (= tp!2220694 e!4526526)))

(assert (= (and b!7610487 ((_ is ElementMatch!20219) (regOne!40950 (regOne!40951 r!19218)))) b!7610717))

(assert (= (and b!7610487 ((_ is Concat!29064) (regOne!40950 (regOne!40951 r!19218)))) b!7610718))

(assert (= (and b!7610487 ((_ is Star!20219) (regOne!40950 (regOne!40951 r!19218)))) b!7610719))

(assert (= (and b!7610487 ((_ is Union!20219) (regOne!40950 (regOne!40951 r!19218)))) b!7610720))

(declare-fun b!7610721 () Bool)

(declare-fun e!4526527 () Bool)

(assert (=> b!7610721 (= e!4526527 tp_is_empty!50793)))

(declare-fun b!7610723 () Bool)

(declare-fun tp!2220838 () Bool)

(assert (=> b!7610723 (= e!4526527 tp!2220838)))

(declare-fun b!7610724 () Bool)

(declare-fun tp!2220835 () Bool)

(declare-fun tp!2220836 () Bool)

(assert (=> b!7610724 (= e!4526527 (and tp!2220835 tp!2220836))))

(declare-fun b!7610722 () Bool)

(declare-fun tp!2220839 () Bool)

(declare-fun tp!2220837 () Bool)

(assert (=> b!7610722 (= e!4526527 (and tp!2220839 tp!2220837))))

(assert (=> b!7610487 (= tp!2220692 e!4526527)))

(assert (= (and b!7610487 ((_ is ElementMatch!20219) (regTwo!40950 (regOne!40951 r!19218)))) b!7610721))

(assert (= (and b!7610487 ((_ is Concat!29064) (regTwo!40950 (regOne!40951 r!19218)))) b!7610722))

(assert (= (and b!7610487 ((_ is Star!20219) (regTwo!40950 (regOne!40951 r!19218)))) b!7610723))

(assert (= (and b!7610487 ((_ is Union!20219) (regTwo!40950 (regOne!40951 r!19218)))) b!7610724))

(declare-fun b!7610725 () Bool)

(declare-fun e!4526528 () Bool)

(assert (=> b!7610725 (= e!4526528 tp_is_empty!50793)))

(declare-fun b!7610727 () Bool)

(declare-fun tp!2220843 () Bool)

(assert (=> b!7610727 (= e!4526528 tp!2220843)))

(declare-fun b!7610728 () Bool)

(declare-fun tp!2220840 () Bool)

(declare-fun tp!2220841 () Bool)

(assert (=> b!7610728 (= e!4526528 (and tp!2220840 tp!2220841))))

(declare-fun b!7610726 () Bool)

(declare-fun tp!2220844 () Bool)

(declare-fun tp!2220842 () Bool)

(assert (=> b!7610726 (= e!4526528 (and tp!2220844 tp!2220842))))

(assert (=> b!7610488 (= tp!2220693 e!4526528)))

(assert (= (and b!7610488 ((_ is ElementMatch!20219) (reg!20548 (regOne!40951 r!19218)))) b!7610725))

(assert (= (and b!7610488 ((_ is Concat!29064) (reg!20548 (regOne!40951 r!19218)))) b!7610726))

(assert (= (and b!7610488 ((_ is Star!20219) (reg!20548 (regOne!40951 r!19218)))) b!7610727))

(assert (= (and b!7610488 ((_ is Union!20219) (reg!20548 (regOne!40951 r!19218)))) b!7610728))

(declare-fun b!7610729 () Bool)

(declare-fun e!4526529 () Bool)

(assert (=> b!7610729 (= e!4526529 tp_is_empty!50793)))

(declare-fun b!7610731 () Bool)

(declare-fun tp!2220848 () Bool)

(assert (=> b!7610731 (= e!4526529 tp!2220848)))

(declare-fun b!7610732 () Bool)

(declare-fun tp!2220845 () Bool)

(declare-fun tp!2220846 () Bool)

(assert (=> b!7610732 (= e!4526529 (and tp!2220845 tp!2220846))))

(declare-fun b!7610730 () Bool)

(declare-fun tp!2220849 () Bool)

(declare-fun tp!2220847 () Bool)

(assert (=> b!7610730 (= e!4526529 (and tp!2220849 tp!2220847))))

(assert (=> b!7610497 (= tp!2220700 e!4526529)))

(assert (= (and b!7610497 ((_ is ElementMatch!20219) (regOne!40951 (reg!20548 r!19218)))) b!7610729))

(assert (= (and b!7610497 ((_ is Concat!29064) (regOne!40951 (reg!20548 r!19218)))) b!7610730))

(assert (= (and b!7610497 ((_ is Star!20219) (regOne!40951 (reg!20548 r!19218)))) b!7610731))

(assert (= (and b!7610497 ((_ is Union!20219) (regOne!40951 (reg!20548 r!19218)))) b!7610732))

(declare-fun b!7610733 () Bool)

(declare-fun e!4526530 () Bool)

(assert (=> b!7610733 (= e!4526530 tp_is_empty!50793)))

(declare-fun b!7610735 () Bool)

(declare-fun tp!2220853 () Bool)

(assert (=> b!7610735 (= e!4526530 tp!2220853)))

(declare-fun b!7610736 () Bool)

(declare-fun tp!2220850 () Bool)

(declare-fun tp!2220851 () Bool)

(assert (=> b!7610736 (= e!4526530 (and tp!2220850 tp!2220851))))

(declare-fun b!7610734 () Bool)

(declare-fun tp!2220854 () Bool)

(declare-fun tp!2220852 () Bool)

(assert (=> b!7610734 (= e!4526530 (and tp!2220854 tp!2220852))))

(assert (=> b!7610497 (= tp!2220701 e!4526530)))

(assert (= (and b!7610497 ((_ is ElementMatch!20219) (regTwo!40951 (reg!20548 r!19218)))) b!7610733))

(assert (= (and b!7610497 ((_ is Concat!29064) (regTwo!40951 (reg!20548 r!19218)))) b!7610734))

(assert (= (and b!7610497 ((_ is Star!20219) (regTwo!40951 (reg!20548 r!19218)))) b!7610735))

(assert (= (and b!7610497 ((_ is Union!20219) (regTwo!40951 (reg!20548 r!19218)))) b!7610736))

(declare-fun b!7610737 () Bool)

(declare-fun e!4526531 () Bool)

(assert (=> b!7610737 (= e!4526531 tp_is_empty!50793)))

(declare-fun b!7610739 () Bool)

(declare-fun tp!2220858 () Bool)

(assert (=> b!7610739 (= e!4526531 tp!2220858)))

(declare-fun b!7610740 () Bool)

(declare-fun tp!2220855 () Bool)

(declare-fun tp!2220856 () Bool)

(assert (=> b!7610740 (= e!4526531 (and tp!2220855 tp!2220856))))

(declare-fun b!7610738 () Bool)

(declare-fun tp!2220859 () Bool)

(declare-fun tp!2220857 () Bool)

(assert (=> b!7610738 (= e!4526531 (and tp!2220859 tp!2220857))))

(assert (=> b!7610483 (= tp!2220689 e!4526531)))

(assert (= (and b!7610483 ((_ is ElementMatch!20219) (regOne!40950 (regTwo!40950 r!19218)))) b!7610737))

(assert (= (and b!7610483 ((_ is Concat!29064) (regOne!40950 (regTwo!40950 r!19218)))) b!7610738))

(assert (= (and b!7610483 ((_ is Star!20219) (regOne!40950 (regTwo!40950 r!19218)))) b!7610739))

(assert (= (and b!7610483 ((_ is Union!20219) (regOne!40950 (regTwo!40950 r!19218)))) b!7610740))

(declare-fun b!7610741 () Bool)

(declare-fun e!4526532 () Bool)

(assert (=> b!7610741 (= e!4526532 tp_is_empty!50793)))

(declare-fun b!7610743 () Bool)

(declare-fun tp!2220863 () Bool)

(assert (=> b!7610743 (= e!4526532 tp!2220863)))

(declare-fun b!7610744 () Bool)

(declare-fun tp!2220860 () Bool)

(declare-fun tp!2220861 () Bool)

(assert (=> b!7610744 (= e!4526532 (and tp!2220860 tp!2220861))))

(declare-fun b!7610742 () Bool)

(declare-fun tp!2220864 () Bool)

(declare-fun tp!2220862 () Bool)

(assert (=> b!7610742 (= e!4526532 (and tp!2220864 tp!2220862))))

(assert (=> b!7610483 (= tp!2220687 e!4526532)))

(assert (= (and b!7610483 ((_ is ElementMatch!20219) (regTwo!40950 (regTwo!40950 r!19218)))) b!7610741))

(assert (= (and b!7610483 ((_ is Concat!29064) (regTwo!40950 (regTwo!40950 r!19218)))) b!7610742))

(assert (= (and b!7610483 ((_ is Star!20219) (regTwo!40950 (regTwo!40950 r!19218)))) b!7610743))

(assert (= (and b!7610483 ((_ is Union!20219) (regTwo!40950 (regTwo!40950 r!19218)))) b!7610744))

(check-sat (not bm!698975) (not b!7610714) (not b!7610710) (not bm!698972) (not bm!698962) (not b!7610718) (not b!7610676) (not b!7610659) (not bm!698974) (not b!7610726) (not b!7610724) (not b!7610598) (not b!7610662) (not b!7610707) (not b!7610695) (not b!7610664) (not b!7610658) (not d!2322259) (not b!7610723) (not b!7610706) (not b!7610731) (not b!7610692) (not b!7610652) tp_is_empty!50793 (not b!7610730) (not b!7610711) (not b!7610698) (not b!7610716) (not b!7610683) (not b!7610663) (not b!7610694) (not bm!698953) (not b!7610637) (not b!7610704) (not b!7610738) (not b!7610735) (not bm!698961) (not b!7610686) (not b!7610656) (not b!7610655) (not bm!698967) (not b!7610675) (not b!7610668) (not b!7610740) (not b!7610722) (not b!7610650) (not b!7610607) (not bm!698955) (not b!7610699) (not b!7610736) (not b!7610720) (not bm!698970) (not b!7610688) (not bm!698963) (not bm!698973) (not b!7610691) (not bm!698969) (not b!7610732) (not b!7610667) (not b!7610728) (not b!7610743) (not b!7610687) (not d!2322251) (not b!7610666) (not d!2322267) (not b!7610700) (not b!7610678) (not b!7610670) (not b!7610715) (not b!7610651) (not b!7610696) (not b!7610690) (not b!7610568) (not bm!698952) (not b!7610680) (not bm!698971) (not b!7610671) (not bm!698964) (not bm!698966) (not b!7610682) (not b!7610702) (not b!7610684) (not b!7610708) (not bm!698976) (not b!7610719) (not b!7610654) (not b!7610679) (not b!7610660) (not b!7610646) (not b!7610739) (not b!7610742) (not b!7610703) (not d!2322253) (not b!7610674) (not b!7610672) (not b!7610648) (not b!7610727) (not b!7610744) (not b!7610647) (not b!7610734) (not b!7610712) (not d!2322249) (not bm!698954))
(check-sat)
