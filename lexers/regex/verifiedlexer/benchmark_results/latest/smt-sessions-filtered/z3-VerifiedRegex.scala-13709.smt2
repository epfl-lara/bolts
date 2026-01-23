; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733336 () Bool)

(assert start!733336)

(declare-fun b!7609358 () Bool)

(declare-fun res!3046642 () Bool)

(declare-fun e!4525863 () Bool)

(assert (=> b!7609358 (=> (not res!3046642) (not e!4525863))))

(declare-datatypes ((C!40752 0))(
  ( (C!40753 (val!30816 Int)) )
))
(declare-datatypes ((Regex!20213 0))(
  ( (ElementMatch!20213 (c!1403124 C!40752)) (Concat!29058 (regOne!40938 Regex!20213) (regTwo!40938 Regex!20213)) (EmptyExpr!20213) (Star!20213 (reg!20542 Regex!20213)) (EmptyLang!20213) (Union!20213 (regOne!40939 Regex!20213) (regTwo!40939 Regex!20213)) )
))
(declare-fun r!19218 () Regex!20213)

(get-info :version)

(assert (=> b!7609358 (= res!3046642 (and (not ((_ is ElementMatch!20213) r!19218)) (not ((_ is Star!20213) r!19218)) ((_ is Union!20213) r!19218)))))

(declare-fun b!7609359 () Bool)

(declare-fun e!4525862 () Bool)

(declare-fun tp!2220115 () Bool)

(declare-fun tp!2220117 () Bool)

(assert (=> b!7609359 (= e!4525862 (and tp!2220115 tp!2220117))))

(declare-fun b!7609360 () Bool)

(declare-fun tp!2220119 () Bool)

(declare-fun tp!2220118 () Bool)

(assert (=> b!7609360 (= e!4525862 (and tp!2220119 tp!2220118))))

(declare-fun res!3046641 () Bool)

(assert (=> start!733336 (=> (not res!3046641) (not e!4525863))))

(declare-fun validRegex!10635 (Regex!20213) Bool)

(assert (=> start!733336 (= res!3046641 (validRegex!10635 r!19218))))

(assert (=> start!733336 e!4525863))

(assert (=> start!733336 e!4525862))

(declare-fun b!7609361 () Bool)

(declare-fun tp!2220116 () Bool)

(assert (=> b!7609361 (= e!4525862 tp!2220116)))

(declare-fun b!7609362 () Bool)

(declare-fun res!3046643 () Bool)

(assert (=> b!7609362 (=> (not res!3046643) (not e!4525863))))

(declare-fun nullable!8834 (Regex!20213) Bool)

(assert (=> b!7609362 (= res!3046643 (not (nullable!8834 (regOne!40939 r!19218))))))

(declare-fun b!7609363 () Bool)

(declare-fun tp_is_empty!50781 () Bool)

(assert (=> b!7609363 (= e!4525862 tp_is_empty!50781)))

(declare-fun b!7609364 () Bool)

(assert (=> b!7609364 (= e!4525863 (not (validRegex!10635 (regTwo!40939 r!19218))))))

(declare-fun b!7609365 () Bool)

(declare-fun res!3046644 () Bool)

(assert (=> b!7609365 (=> (not res!3046644) (not e!4525863))))

(assert (=> b!7609365 (= res!3046644 (nullable!8834 r!19218))))

(assert (= (and start!733336 res!3046641) b!7609365))

(assert (= (and b!7609365 res!3046644) b!7609358))

(assert (= (and b!7609358 res!3046642) b!7609362))

(assert (= (and b!7609362 res!3046643) b!7609364))

(assert (= (and start!733336 ((_ is ElementMatch!20213) r!19218)) b!7609363))

(assert (= (and start!733336 ((_ is Concat!29058) r!19218)) b!7609360))

(assert (= (and start!733336 ((_ is Star!20213) r!19218)) b!7609361))

(assert (= (and start!733336 ((_ is Union!20213) r!19218)) b!7609359))

(declare-fun m!8147670 () Bool)

(assert (=> start!733336 m!8147670))

(declare-fun m!8147672 () Bool)

(assert (=> b!7609362 m!8147672))

(declare-fun m!8147674 () Bool)

(assert (=> b!7609364 m!8147674))

(declare-fun m!8147676 () Bool)

(assert (=> b!7609365 m!8147676))

(check-sat (not start!733336) (not b!7609359) (not b!7609365) (not b!7609360) (not b!7609362) (not b!7609364) (not b!7609361) tp_is_empty!50781)
(check-sat)
(get-model)

(declare-fun bm!698767 () Bool)

(declare-fun call!698773 () Bool)

(declare-fun call!698774 () Bool)

(assert (=> bm!698767 (= call!698773 call!698774)))

(declare-fun b!7609412 () Bool)

(declare-fun res!3046671 () Bool)

(declare-fun e!4525905 () Bool)

(assert (=> b!7609412 (=> res!3046671 e!4525905)))

(assert (=> b!7609412 (= res!3046671 (not ((_ is Concat!29058) (regTwo!40939 r!19218))))))

(declare-fun e!4525904 () Bool)

(assert (=> b!7609412 (= e!4525904 e!4525905)))

(declare-fun b!7609413 () Bool)

(declare-fun e!4525903 () Bool)

(declare-fun call!698772 () Bool)

(assert (=> b!7609413 (= e!4525903 call!698772)))

(declare-fun b!7609414 () Bool)

(declare-fun e!4525899 () Bool)

(declare-fun e!4525902 () Bool)

(assert (=> b!7609414 (= e!4525899 e!4525902)))

(declare-fun res!3046674 () Bool)

(assert (=> b!7609414 (= res!3046674 (not (nullable!8834 (reg!20542 (regTwo!40939 r!19218)))))))

(assert (=> b!7609414 (=> (not res!3046674) (not e!4525902))))

(declare-fun c!1403135 () Bool)

(declare-fun bm!698768 () Bool)

(declare-fun c!1403136 () Bool)

(assert (=> bm!698768 (= call!698774 (validRegex!10635 (ite c!1403136 (reg!20542 (regTwo!40939 r!19218)) (ite c!1403135 (regOne!40939 (regTwo!40939 r!19218)) (regOne!40938 (regTwo!40939 r!19218))))))))

(declare-fun b!7609415 () Bool)

(declare-fun e!4525901 () Bool)

(assert (=> b!7609415 (= e!4525901 e!4525899)))

(assert (=> b!7609415 (= c!1403136 ((_ is Star!20213) (regTwo!40939 r!19218)))))

(declare-fun bm!698769 () Bool)

(assert (=> bm!698769 (= call!698772 (validRegex!10635 (ite c!1403135 (regTwo!40939 (regTwo!40939 r!19218)) (regTwo!40938 (regTwo!40939 r!19218)))))))

(declare-fun b!7609416 () Bool)

(assert (=> b!7609416 (= e!4525899 e!4525904)))

(assert (=> b!7609416 (= c!1403135 ((_ is Union!20213) (regTwo!40939 r!19218)))))

(declare-fun b!7609417 () Bool)

(assert (=> b!7609417 (= e!4525902 call!698774)))

(declare-fun d!2322116 () Bool)

(declare-fun res!3046670 () Bool)

(assert (=> d!2322116 (=> res!3046670 e!4525901)))

(assert (=> d!2322116 (= res!3046670 ((_ is ElementMatch!20213) (regTwo!40939 r!19218)))))

(assert (=> d!2322116 (= (validRegex!10635 (regTwo!40939 r!19218)) e!4525901)))

(declare-fun b!7609411 () Bool)

(declare-fun e!4525900 () Bool)

(assert (=> b!7609411 (= e!4525905 e!4525900)))

(declare-fun res!3046673 () Bool)

(assert (=> b!7609411 (=> (not res!3046673) (not e!4525900))))

(assert (=> b!7609411 (= res!3046673 call!698773)))

(declare-fun b!7609418 () Bool)

(declare-fun res!3046672 () Bool)

(assert (=> b!7609418 (=> (not res!3046672) (not e!4525903))))

(assert (=> b!7609418 (= res!3046672 call!698773)))

(assert (=> b!7609418 (= e!4525904 e!4525903)))

(declare-fun b!7609419 () Bool)

(assert (=> b!7609419 (= e!4525900 call!698772)))

(assert (= (and d!2322116 (not res!3046670)) b!7609415))

(assert (= (and b!7609415 c!1403136) b!7609414))

(assert (= (and b!7609415 (not c!1403136)) b!7609416))

(assert (= (and b!7609414 res!3046674) b!7609417))

(assert (= (and b!7609416 c!1403135) b!7609418))

(assert (= (and b!7609416 (not c!1403135)) b!7609412))

(assert (= (and b!7609418 res!3046672) b!7609413))

(assert (= (and b!7609412 (not res!3046671)) b!7609411))

(assert (= (and b!7609411 res!3046673) b!7609419))

(assert (= (or b!7609418 b!7609411) bm!698767))

(assert (= (or b!7609413 b!7609419) bm!698769))

(assert (= (or b!7609417 bm!698767) bm!698768))

(declare-fun m!8147684 () Bool)

(assert (=> b!7609414 m!8147684))

(declare-fun m!8147686 () Bool)

(assert (=> bm!698768 m!8147686))

(declare-fun m!8147688 () Bool)

(assert (=> bm!698769 m!8147688))

(assert (=> b!7609364 d!2322116))

(declare-fun bm!698770 () Bool)

(declare-fun call!698776 () Bool)

(declare-fun call!698777 () Bool)

(assert (=> bm!698770 (= call!698776 call!698777)))

(declare-fun b!7609421 () Bool)

(declare-fun res!3046676 () Bool)

(declare-fun e!4525912 () Bool)

(assert (=> b!7609421 (=> res!3046676 e!4525912)))

(assert (=> b!7609421 (= res!3046676 (not ((_ is Concat!29058) r!19218)))))

(declare-fun e!4525911 () Bool)

(assert (=> b!7609421 (= e!4525911 e!4525912)))

(declare-fun b!7609422 () Bool)

(declare-fun e!4525910 () Bool)

(declare-fun call!698775 () Bool)

(assert (=> b!7609422 (= e!4525910 call!698775)))

(declare-fun b!7609423 () Bool)

(declare-fun e!4525906 () Bool)

(declare-fun e!4525909 () Bool)

(assert (=> b!7609423 (= e!4525906 e!4525909)))

(declare-fun res!3046679 () Bool)

(assert (=> b!7609423 (= res!3046679 (not (nullable!8834 (reg!20542 r!19218))))))

(assert (=> b!7609423 (=> (not res!3046679) (not e!4525909))))

(declare-fun c!1403137 () Bool)

(declare-fun bm!698771 () Bool)

(declare-fun c!1403138 () Bool)

(assert (=> bm!698771 (= call!698777 (validRegex!10635 (ite c!1403138 (reg!20542 r!19218) (ite c!1403137 (regOne!40939 r!19218) (regOne!40938 r!19218)))))))

(declare-fun b!7609424 () Bool)

(declare-fun e!4525908 () Bool)

(assert (=> b!7609424 (= e!4525908 e!4525906)))

(assert (=> b!7609424 (= c!1403138 ((_ is Star!20213) r!19218))))

(declare-fun bm!698772 () Bool)

(assert (=> bm!698772 (= call!698775 (validRegex!10635 (ite c!1403137 (regTwo!40939 r!19218) (regTwo!40938 r!19218))))))

(declare-fun b!7609425 () Bool)

(assert (=> b!7609425 (= e!4525906 e!4525911)))

(assert (=> b!7609425 (= c!1403137 ((_ is Union!20213) r!19218))))

(declare-fun b!7609426 () Bool)

(assert (=> b!7609426 (= e!4525909 call!698777)))

(declare-fun d!2322120 () Bool)

(declare-fun res!3046675 () Bool)

(assert (=> d!2322120 (=> res!3046675 e!4525908)))

(assert (=> d!2322120 (= res!3046675 ((_ is ElementMatch!20213) r!19218))))

(assert (=> d!2322120 (= (validRegex!10635 r!19218) e!4525908)))

(declare-fun b!7609420 () Bool)

(declare-fun e!4525907 () Bool)

(assert (=> b!7609420 (= e!4525912 e!4525907)))

(declare-fun res!3046678 () Bool)

(assert (=> b!7609420 (=> (not res!3046678) (not e!4525907))))

(assert (=> b!7609420 (= res!3046678 call!698776)))

(declare-fun b!7609427 () Bool)

(declare-fun res!3046677 () Bool)

(assert (=> b!7609427 (=> (not res!3046677) (not e!4525910))))

(assert (=> b!7609427 (= res!3046677 call!698776)))

(assert (=> b!7609427 (= e!4525911 e!4525910)))

(declare-fun b!7609428 () Bool)

(assert (=> b!7609428 (= e!4525907 call!698775)))

(assert (= (and d!2322120 (not res!3046675)) b!7609424))

(assert (= (and b!7609424 c!1403138) b!7609423))

(assert (= (and b!7609424 (not c!1403138)) b!7609425))

(assert (= (and b!7609423 res!3046679) b!7609426))

(assert (= (and b!7609425 c!1403137) b!7609427))

(assert (= (and b!7609425 (not c!1403137)) b!7609421))

(assert (= (and b!7609427 res!3046677) b!7609422))

(assert (= (and b!7609421 (not res!3046676)) b!7609420))

(assert (= (and b!7609420 res!3046678) b!7609428))

(assert (= (or b!7609427 b!7609420) bm!698770))

(assert (= (or b!7609422 b!7609428) bm!698772))

(assert (= (or b!7609426 bm!698770) bm!698771))

(declare-fun m!8147692 () Bool)

(assert (=> b!7609423 m!8147692))

(declare-fun m!8147694 () Bool)

(assert (=> bm!698771 m!8147694))

(declare-fun m!8147696 () Bool)

(assert (=> bm!698772 m!8147696))

(assert (=> start!733336 d!2322120))

(declare-fun d!2322124 () Bool)

(declare-fun nullableFct!3518 (Regex!20213) Bool)

(assert (=> d!2322124 (= (nullable!8834 (regOne!40939 r!19218)) (nullableFct!3518 (regOne!40939 r!19218)))))

(declare-fun bs!1942819 () Bool)

(assert (= bs!1942819 d!2322124))

(declare-fun m!8147706 () Bool)

(assert (=> bs!1942819 m!8147706))

(assert (=> b!7609362 d!2322124))

(declare-fun d!2322128 () Bool)

(assert (=> d!2322128 (= (nullable!8834 r!19218) (nullableFct!3518 r!19218))))

(declare-fun bs!1942820 () Bool)

(assert (= bs!1942820 d!2322128))

(declare-fun m!8147708 () Bool)

(assert (=> bs!1942820 m!8147708))

(assert (=> b!7609365 d!2322128))

(declare-fun e!4525925 () Bool)

(assert (=> b!7609359 (= tp!2220115 e!4525925)))

(declare-fun b!7609463 () Bool)

(declare-fun tp!2220147 () Bool)

(declare-fun tp!2220145 () Bool)

(assert (=> b!7609463 (= e!4525925 (and tp!2220147 tp!2220145))))

(declare-fun b!7609462 () Bool)

(assert (=> b!7609462 (= e!4525925 tp_is_empty!50781)))

(declare-fun b!7609465 () Bool)

(declare-fun tp!2220146 () Bool)

(declare-fun tp!2220148 () Bool)

(assert (=> b!7609465 (= e!4525925 (and tp!2220146 tp!2220148))))

(declare-fun b!7609464 () Bool)

(declare-fun tp!2220149 () Bool)

(assert (=> b!7609464 (= e!4525925 tp!2220149)))

(assert (= (and b!7609359 ((_ is ElementMatch!20213) (regOne!40939 r!19218))) b!7609462))

(assert (= (and b!7609359 ((_ is Concat!29058) (regOne!40939 r!19218))) b!7609463))

(assert (= (and b!7609359 ((_ is Star!20213) (regOne!40939 r!19218))) b!7609464))

(assert (= (and b!7609359 ((_ is Union!20213) (regOne!40939 r!19218))) b!7609465))

(declare-fun e!4525927 () Bool)

(assert (=> b!7609359 (= tp!2220117 e!4525927)))

(declare-fun b!7609471 () Bool)

(declare-fun tp!2220157 () Bool)

(declare-fun tp!2220155 () Bool)

(assert (=> b!7609471 (= e!4525927 (and tp!2220157 tp!2220155))))

(declare-fun b!7609470 () Bool)

(assert (=> b!7609470 (= e!4525927 tp_is_empty!50781)))

(declare-fun b!7609473 () Bool)

(declare-fun tp!2220156 () Bool)

(declare-fun tp!2220158 () Bool)

(assert (=> b!7609473 (= e!4525927 (and tp!2220156 tp!2220158))))

(declare-fun b!7609472 () Bool)

(declare-fun tp!2220159 () Bool)

(assert (=> b!7609472 (= e!4525927 tp!2220159)))

(assert (= (and b!7609359 ((_ is ElementMatch!20213) (regTwo!40939 r!19218))) b!7609470))

(assert (= (and b!7609359 ((_ is Concat!29058) (regTwo!40939 r!19218))) b!7609471))

(assert (= (and b!7609359 ((_ is Star!20213) (regTwo!40939 r!19218))) b!7609472))

(assert (= (and b!7609359 ((_ is Union!20213) (regTwo!40939 r!19218))) b!7609473))

(declare-fun e!4525929 () Bool)

(assert (=> b!7609361 (= tp!2220116 e!4525929)))

(declare-fun b!7609479 () Bool)

(declare-fun tp!2220167 () Bool)

(declare-fun tp!2220165 () Bool)

(assert (=> b!7609479 (= e!4525929 (and tp!2220167 tp!2220165))))

(declare-fun b!7609478 () Bool)

(assert (=> b!7609478 (= e!4525929 tp_is_empty!50781)))

(declare-fun b!7609481 () Bool)

(declare-fun tp!2220166 () Bool)

(declare-fun tp!2220168 () Bool)

(assert (=> b!7609481 (= e!4525929 (and tp!2220166 tp!2220168))))

(declare-fun b!7609480 () Bool)

(declare-fun tp!2220169 () Bool)

(assert (=> b!7609480 (= e!4525929 tp!2220169)))

(assert (= (and b!7609361 ((_ is ElementMatch!20213) (reg!20542 r!19218))) b!7609478))

(assert (= (and b!7609361 ((_ is Concat!29058) (reg!20542 r!19218))) b!7609479))

(assert (= (and b!7609361 ((_ is Star!20213) (reg!20542 r!19218))) b!7609480))

(assert (= (and b!7609361 ((_ is Union!20213) (reg!20542 r!19218))) b!7609481))

(declare-fun e!4525931 () Bool)

(assert (=> b!7609360 (= tp!2220119 e!4525931)))

(declare-fun b!7609487 () Bool)

(declare-fun tp!2220177 () Bool)

(declare-fun tp!2220175 () Bool)

(assert (=> b!7609487 (= e!4525931 (and tp!2220177 tp!2220175))))

(declare-fun b!7609486 () Bool)

(assert (=> b!7609486 (= e!4525931 tp_is_empty!50781)))

(declare-fun b!7609489 () Bool)

(declare-fun tp!2220176 () Bool)

(declare-fun tp!2220178 () Bool)

(assert (=> b!7609489 (= e!4525931 (and tp!2220176 tp!2220178))))

(declare-fun b!7609488 () Bool)

(declare-fun tp!2220179 () Bool)

(assert (=> b!7609488 (= e!4525931 tp!2220179)))

(assert (= (and b!7609360 ((_ is ElementMatch!20213) (regOne!40938 r!19218))) b!7609486))

(assert (= (and b!7609360 ((_ is Concat!29058) (regOne!40938 r!19218))) b!7609487))

(assert (= (and b!7609360 ((_ is Star!20213) (regOne!40938 r!19218))) b!7609488))

(assert (= (and b!7609360 ((_ is Union!20213) (regOne!40938 r!19218))) b!7609489))

(declare-fun e!4525933 () Bool)

(assert (=> b!7609360 (= tp!2220118 e!4525933)))

(declare-fun b!7609495 () Bool)

(declare-fun tp!2220187 () Bool)

(declare-fun tp!2220185 () Bool)

(assert (=> b!7609495 (= e!4525933 (and tp!2220187 tp!2220185))))

(declare-fun b!7609494 () Bool)

(assert (=> b!7609494 (= e!4525933 tp_is_empty!50781)))

(declare-fun b!7609497 () Bool)

(declare-fun tp!2220186 () Bool)

(declare-fun tp!2220188 () Bool)

(assert (=> b!7609497 (= e!4525933 (and tp!2220186 tp!2220188))))

(declare-fun b!7609496 () Bool)

(declare-fun tp!2220189 () Bool)

(assert (=> b!7609496 (= e!4525933 tp!2220189)))

(assert (= (and b!7609360 ((_ is ElementMatch!20213) (regTwo!40938 r!19218))) b!7609494))

(assert (= (and b!7609360 ((_ is Concat!29058) (regTwo!40938 r!19218))) b!7609495))

(assert (= (and b!7609360 ((_ is Star!20213) (regTwo!40938 r!19218))) b!7609496))

(assert (= (and b!7609360 ((_ is Union!20213) (regTwo!40938 r!19218))) b!7609497))

(check-sat (not b!7609481) (not d!2322124) (not b!7609473) (not b!7609489) (not b!7609463) (not b!7609480) (not bm!698768) (not b!7609479) (not b!7609488) (not bm!698769) (not b!7609472) (not b!7609423) (not b!7609471) (not d!2322128) (not bm!698772) tp_is_empty!50781 (not b!7609464) (not b!7609497) (not b!7609495) (not b!7609496) (not b!7609465) (not b!7609414) (not bm!698771) (not b!7609487))
(check-sat)
