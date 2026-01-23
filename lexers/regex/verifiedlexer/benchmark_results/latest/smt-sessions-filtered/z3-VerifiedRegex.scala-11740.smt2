; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663568 () Bool)

(assert start!663568)

(declare-fun b!6876249 () Bool)

(assert (=> b!6876249 true))

(declare-fun e!4144366 () Bool)

(declare-datatypes ((C!33724 0))(
  ( (C!33725 (val!26564 Int)) )
))
(declare-datatypes ((Regex!16727 0))(
  ( (ElementMatch!16727 (c!1279477 C!33724)) (Concat!25572 (regOne!33966 Regex!16727) (regTwo!33966 Regex!16727)) (EmptyExpr!16727) (Star!16727 (reg!17056 Regex!16727)) (EmptyLang!16727) (Union!16727 (regOne!33967 Regex!16727) (regTwo!33967 Regex!16727)) )
))
(declare-datatypes ((List!66465 0))(
  ( (Nil!66341) (Cons!66341 (h!72789 Regex!16727) (t!380208 List!66465)) )
))
(declare-datatypes ((Context!12222 0))(
  ( (Context!12223 (exprs!6611 List!66465)) )
))
(declare-datatypes ((List!66466 0))(
  ( (Nil!66342) (Cons!66342 (h!72790 Context!12222) (t!380209 List!66466)) )
))
(declare-fun zl!1520 () List!66466)

(declare-fun lambda!389287 () Int)

(declare-fun exists!2857 (List!66466 Int) Bool)

(assert (=> b!6876249 (= e!4144366 (not (exists!2857 zl!1520 lambda!389287)))))

(declare-fun b!6876250 () Bool)

(declare-fun e!4144367 () Bool)

(declare-fun tp_is_empty!42707 () Bool)

(assert (=> b!6876250 (= e!4144367 tp_is_empty!42707)))

(declare-fun b!6876251 () Bool)

(declare-fun e!4144365 () Bool)

(declare-fun tp!1889457 () Bool)

(assert (=> b!6876251 (= e!4144365 tp!1889457)))

(declare-fun b!6876252 () Bool)

(declare-fun tp!1889455 () Bool)

(declare-fun tp!1889459 () Bool)

(assert (=> b!6876252 (= e!4144367 (and tp!1889455 tp!1889459))))

(declare-fun b!6876253 () Bool)

(declare-fun tp!1889460 () Bool)

(declare-fun e!4144368 () Bool)

(declare-fun inv!85064 (Context!12222) Bool)

(assert (=> b!6876253 (= e!4144368 (and (inv!85064 (h!72790 zl!1520)) e!4144365 tp!1889460))))

(declare-fun b!6876255 () Bool)

(declare-fun tp!1889461 () Bool)

(assert (=> b!6876255 (= e!4144367 tp!1889461)))

(declare-fun b!6876256 () Bool)

(declare-fun res!2803812 () Bool)

(assert (=> b!6876256 (=> (not res!2803812) (not e!4144366))))

(get-info :version)

(assert (=> b!6876256 (= res!2803812 ((_ is Cons!66342) zl!1520))))

(declare-fun b!6876257 () Bool)

(declare-fun res!2803814 () Bool)

(assert (=> b!6876257 (=> (not res!2803814) (not e!4144366))))

(declare-fun r!11177 () Regex!16727)

(declare-fun contains!20383 (List!66465 Regex!16727) Bool)

(declare-fun unfocusZipperList!2144 (List!66466) List!66465)

(assert (=> b!6876257 (= res!2803814 (not (contains!20383 (unfocusZipperList!2144 (t!380209 zl!1520)) r!11177)))))

(declare-fun res!2803813 () Bool)

(assert (=> start!663568 (=> (not res!2803813) (not e!4144366))))

(assert (=> start!663568 (= res!2803813 (contains!20383 (unfocusZipperList!2144 zl!1520) r!11177))))

(assert (=> start!663568 e!4144366))

(assert (=> start!663568 e!4144368))

(assert (=> start!663568 e!4144367))

(declare-fun b!6876254 () Bool)

(declare-fun tp!1889458 () Bool)

(declare-fun tp!1889456 () Bool)

(assert (=> b!6876254 (= e!4144367 (and tp!1889458 tp!1889456))))

(assert (= (and start!663568 res!2803813) b!6876256))

(assert (= (and b!6876256 res!2803812) b!6876257))

(assert (= (and b!6876257 res!2803814) b!6876249))

(assert (= b!6876253 b!6876251))

(assert (= (and start!663568 ((_ is Cons!66342) zl!1520)) b!6876253))

(assert (= (and start!663568 ((_ is ElementMatch!16727) r!11177)) b!6876250))

(assert (= (and start!663568 ((_ is Concat!25572) r!11177)) b!6876254))

(assert (= (and start!663568 ((_ is Star!16727) r!11177)) b!6876255))

(assert (= (and start!663568 ((_ is Union!16727) r!11177)) b!6876252))

(declare-fun m!7604356 () Bool)

(assert (=> b!6876249 m!7604356))

(declare-fun m!7604358 () Bool)

(assert (=> b!6876253 m!7604358))

(declare-fun m!7604360 () Bool)

(assert (=> b!6876257 m!7604360))

(assert (=> b!6876257 m!7604360))

(declare-fun m!7604362 () Bool)

(assert (=> b!6876257 m!7604362))

(declare-fun m!7604364 () Bool)

(assert (=> start!663568 m!7604364))

(assert (=> start!663568 m!7604364))

(declare-fun m!7604366 () Bool)

(assert (=> start!663568 m!7604366))

(check-sat (not b!6876253) (not b!6876255) (not b!6876252) (not b!6876249) (not b!6876257) (not start!663568) (not b!6876251) tp_is_empty!42707 (not b!6876254))
(check-sat)
(get-model)

(declare-fun d!2159349 () Bool)

(declare-fun lt!2459155 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13031 (List!66465) (InoxSet Regex!16727))

(assert (=> d!2159349 (= lt!2459155 (select (content!13031 (unfocusZipperList!2144 zl!1520)) r!11177))))

(declare-fun e!4144377 () Bool)

(assert (=> d!2159349 (= lt!2459155 e!4144377)))

(declare-fun res!2803823 () Bool)

(assert (=> d!2159349 (=> (not res!2803823) (not e!4144377))))

(assert (=> d!2159349 (= res!2803823 ((_ is Cons!66341) (unfocusZipperList!2144 zl!1520)))))

(assert (=> d!2159349 (= (contains!20383 (unfocusZipperList!2144 zl!1520) r!11177) lt!2459155)))

(declare-fun b!6876268 () Bool)

(declare-fun e!4144378 () Bool)

(assert (=> b!6876268 (= e!4144377 e!4144378)))

(declare-fun res!2803824 () Bool)

(assert (=> b!6876268 (=> res!2803824 e!4144378)))

(assert (=> b!6876268 (= res!2803824 (= (h!72789 (unfocusZipperList!2144 zl!1520)) r!11177))))

(declare-fun b!6876269 () Bool)

(assert (=> b!6876269 (= e!4144378 (contains!20383 (t!380208 (unfocusZipperList!2144 zl!1520)) r!11177))))

(assert (= (and d!2159349 res!2803823) b!6876268))

(assert (= (and b!6876268 (not res!2803824)) b!6876269))

(assert (=> d!2159349 m!7604364))

(declare-fun m!7604368 () Bool)

(assert (=> d!2159349 m!7604368))

(declare-fun m!7604370 () Bool)

(assert (=> d!2159349 m!7604370))

(declare-fun m!7604372 () Bool)

(assert (=> b!6876269 m!7604372))

(assert (=> start!663568 d!2159349))

(declare-fun d!2159353 () Bool)

(declare-fun lt!2459161 () List!66465)

(declare-fun lambda!389292 () Int)

(declare-fun forall!15925 (List!66465 Int) Bool)

(assert (=> d!2159353 (forall!15925 lt!2459161 lambda!389292)))

(declare-fun e!4144385 () List!66465)

(assert (=> d!2159353 (= lt!2459161 e!4144385)))

(declare-fun c!1279482 () Bool)

(assert (=> d!2159353 (= c!1279482 ((_ is Cons!66342) zl!1520))))

(assert (=> d!2159353 (= (unfocusZipperList!2144 zl!1520) lt!2459161)))

(declare-fun b!6876280 () Bool)

(declare-fun generalisedConcat!2308 (List!66465) Regex!16727)

(assert (=> b!6876280 (= e!4144385 (Cons!66341 (generalisedConcat!2308 (exprs!6611 (h!72790 zl!1520))) (unfocusZipperList!2144 (t!380209 zl!1520))))))

(declare-fun b!6876281 () Bool)

(assert (=> b!6876281 (= e!4144385 Nil!66341)))

(assert (= (and d!2159353 c!1279482) b!6876280))

(assert (= (and d!2159353 (not c!1279482)) b!6876281))

(declare-fun m!7604380 () Bool)

(assert (=> d!2159353 m!7604380))

(declare-fun m!7604382 () Bool)

(assert (=> b!6876280 m!7604382))

(assert (=> b!6876280 m!7604360))

(assert (=> start!663568 d!2159353))

(declare-fun d!2159357 () Bool)

(declare-fun lt!2459163 () Bool)

(assert (=> d!2159357 (= lt!2459163 (select (content!13031 (unfocusZipperList!2144 (t!380209 zl!1520))) r!11177))))

(declare-fun e!4144387 () Bool)

(assert (=> d!2159357 (= lt!2459163 e!4144387)))

(declare-fun res!2803827 () Bool)

(assert (=> d!2159357 (=> (not res!2803827) (not e!4144387))))

(assert (=> d!2159357 (= res!2803827 ((_ is Cons!66341) (unfocusZipperList!2144 (t!380209 zl!1520))))))

(assert (=> d!2159357 (= (contains!20383 (unfocusZipperList!2144 (t!380209 zl!1520)) r!11177) lt!2459163)))

(declare-fun b!6876284 () Bool)

(declare-fun e!4144388 () Bool)

(assert (=> b!6876284 (= e!4144387 e!4144388)))

(declare-fun res!2803828 () Bool)

(assert (=> b!6876284 (=> res!2803828 e!4144388)))

(assert (=> b!6876284 (= res!2803828 (= (h!72789 (unfocusZipperList!2144 (t!380209 zl!1520))) r!11177))))

(declare-fun b!6876285 () Bool)

(assert (=> b!6876285 (= e!4144388 (contains!20383 (t!380208 (unfocusZipperList!2144 (t!380209 zl!1520))) r!11177))))

(assert (= (and d!2159357 res!2803827) b!6876284))

(assert (= (and b!6876284 (not res!2803828)) b!6876285))

(assert (=> d!2159357 m!7604360))

(declare-fun m!7604384 () Bool)

(assert (=> d!2159357 m!7604384))

(declare-fun m!7604386 () Bool)

(assert (=> d!2159357 m!7604386))

(declare-fun m!7604388 () Bool)

(assert (=> b!6876285 m!7604388))

(assert (=> b!6876257 d!2159357))

(declare-fun bs!1837810 () Bool)

(declare-fun d!2159359 () Bool)

(assert (= bs!1837810 (and d!2159359 d!2159353)))

(declare-fun lambda!389294 () Int)

(assert (=> bs!1837810 (= lambda!389294 lambda!389292)))

(declare-fun lt!2459164 () List!66465)

(assert (=> d!2159359 (forall!15925 lt!2459164 lambda!389294)))

(declare-fun e!4144389 () List!66465)

(assert (=> d!2159359 (= lt!2459164 e!4144389)))

(declare-fun c!1279484 () Bool)

(assert (=> d!2159359 (= c!1279484 ((_ is Cons!66342) (t!380209 zl!1520)))))

(assert (=> d!2159359 (= (unfocusZipperList!2144 (t!380209 zl!1520)) lt!2459164)))

(declare-fun b!6876286 () Bool)

(assert (=> b!6876286 (= e!4144389 (Cons!66341 (generalisedConcat!2308 (exprs!6611 (h!72790 (t!380209 zl!1520)))) (unfocusZipperList!2144 (t!380209 (t!380209 zl!1520)))))))

(declare-fun b!6876287 () Bool)

(assert (=> b!6876287 (= e!4144389 Nil!66341)))

(assert (= (and d!2159359 c!1279484) b!6876286))

(assert (= (and d!2159359 (not c!1279484)) b!6876287))

(declare-fun m!7604402 () Bool)

(assert (=> d!2159359 m!7604402))

(declare-fun m!7604404 () Bool)

(assert (=> b!6876286 m!7604404))

(declare-fun m!7604406 () Bool)

(assert (=> b!6876286 m!7604406))

(assert (=> b!6876257 d!2159359))

(declare-fun bs!1837812 () Bool)

(declare-fun d!2159365 () Bool)

(assert (= bs!1837812 (and d!2159365 d!2159353)))

(declare-fun lambda!389300 () Int)

(assert (=> bs!1837812 (= lambda!389300 lambda!389292)))

(declare-fun bs!1837813 () Bool)

(assert (= bs!1837813 (and d!2159365 d!2159359)))

(assert (=> bs!1837813 (= lambda!389300 lambda!389294)))

(assert (=> d!2159365 (= (inv!85064 (h!72790 zl!1520)) (forall!15925 (exprs!6611 (h!72790 zl!1520)) lambda!389300))))

(declare-fun bs!1837814 () Bool)

(assert (= bs!1837814 d!2159365))

(declare-fun m!7604412 () Bool)

(assert (=> bs!1837814 m!7604412))

(assert (=> b!6876253 d!2159365))

(declare-fun bs!1837817 () Bool)

(declare-fun d!2159369 () Bool)

(assert (= bs!1837817 (and d!2159369 b!6876249)))

(declare-fun lambda!389304 () Int)

(assert (=> bs!1837817 (not (= lambda!389304 lambda!389287))))

(assert (=> d!2159369 true))

(declare-fun order!27759 () Int)

(declare-fun dynLambda!26562 (Int Int) Int)

(assert (=> d!2159369 (< (dynLambda!26562 order!27759 lambda!389287) (dynLambda!26562 order!27759 lambda!389304))))

(declare-fun forall!15928 (List!66466 Int) Bool)

(assert (=> d!2159369 (= (exists!2857 zl!1520 lambda!389287) (not (forall!15928 zl!1520 lambda!389304)))))

(declare-fun bs!1837818 () Bool)

(assert (= bs!1837818 d!2159369))

(declare-fun m!7604416 () Bool)

(assert (=> bs!1837818 m!7604416))

(assert (=> b!6876249 d!2159369))

(declare-fun b!6876304 () Bool)

(declare-fun e!4144397 () Bool)

(declare-fun tp!1889466 () Bool)

(declare-fun tp!1889467 () Bool)

(assert (=> b!6876304 (= e!4144397 (and tp!1889466 tp!1889467))))

(assert (=> b!6876251 (= tp!1889457 e!4144397)))

(assert (= (and b!6876251 ((_ is Cons!66341) (exprs!6611 (h!72790 zl!1520)))) b!6876304))

(declare-fun b!6876328 () Bool)

(declare-fun e!4144403 () Bool)

(declare-fun tp!1889497 () Bool)

(assert (=> b!6876328 (= e!4144403 tp!1889497)))

(declare-fun b!6876329 () Bool)

(declare-fun tp!1889496 () Bool)

(declare-fun tp!1889495 () Bool)

(assert (=> b!6876329 (= e!4144403 (and tp!1889496 tp!1889495))))

(declare-fun b!6876327 () Bool)

(declare-fun tp!1889494 () Bool)

(declare-fun tp!1889498 () Bool)

(assert (=> b!6876327 (= e!4144403 (and tp!1889494 tp!1889498))))

(declare-fun b!6876326 () Bool)

(assert (=> b!6876326 (= e!4144403 tp_is_empty!42707)))

(assert (=> b!6876252 (= tp!1889455 e!4144403)))

(assert (= (and b!6876252 ((_ is ElementMatch!16727) (regOne!33967 r!11177))) b!6876326))

(assert (= (and b!6876252 ((_ is Concat!25572) (regOne!33967 r!11177))) b!6876327))

(assert (= (and b!6876252 ((_ is Star!16727) (regOne!33967 r!11177))) b!6876328))

(assert (= (and b!6876252 ((_ is Union!16727) (regOne!33967 r!11177))) b!6876329))

(declare-fun b!6876333 () Bool)

(declare-fun e!4144404 () Bool)

(declare-fun tp!1889502 () Bool)

(assert (=> b!6876333 (= e!4144404 tp!1889502)))

(declare-fun b!6876334 () Bool)

(declare-fun tp!1889501 () Bool)

(declare-fun tp!1889500 () Bool)

(assert (=> b!6876334 (= e!4144404 (and tp!1889501 tp!1889500))))

(declare-fun b!6876331 () Bool)

(declare-fun tp!1889499 () Bool)

(declare-fun tp!1889503 () Bool)

(assert (=> b!6876331 (= e!4144404 (and tp!1889499 tp!1889503))))

(declare-fun b!6876330 () Bool)

(assert (=> b!6876330 (= e!4144404 tp_is_empty!42707)))

(assert (=> b!6876252 (= tp!1889459 e!4144404)))

(assert (= (and b!6876252 ((_ is ElementMatch!16727) (regTwo!33967 r!11177))) b!6876330))

(assert (= (and b!6876252 ((_ is Concat!25572) (regTwo!33967 r!11177))) b!6876331))

(assert (= (and b!6876252 ((_ is Star!16727) (regTwo!33967 r!11177))) b!6876333))

(assert (= (and b!6876252 ((_ is Union!16727) (regTwo!33967 r!11177))) b!6876334))

(declare-fun b!6876355 () Bool)

(declare-fun e!4144416 () Bool)

(declare-fun tp!1889522 () Bool)

(assert (=> b!6876355 (= e!4144416 tp!1889522)))

(declare-fun e!4144415 () Bool)

(declare-fun b!6876354 () Bool)

(declare-fun tp!1889523 () Bool)

(assert (=> b!6876354 (= e!4144415 (and (inv!85064 (h!72790 (t!380209 zl!1520))) e!4144416 tp!1889523))))

(assert (=> b!6876253 (= tp!1889460 e!4144415)))

(assert (= b!6876354 b!6876355))

(assert (= (and b!6876253 ((_ is Cons!66342) (t!380209 zl!1520))) b!6876354))

(declare-fun m!7604420 () Bool)

(assert (=> b!6876354 m!7604420))

(declare-fun b!6876360 () Bool)

(declare-fun e!4144417 () Bool)

(declare-fun tp!1889527 () Bool)

(assert (=> b!6876360 (= e!4144417 tp!1889527)))

(declare-fun b!6876361 () Bool)

(declare-fun tp!1889526 () Bool)

(declare-fun tp!1889525 () Bool)

(assert (=> b!6876361 (= e!4144417 (and tp!1889526 tp!1889525))))

(declare-fun b!6876357 () Bool)

(declare-fun tp!1889524 () Bool)

(declare-fun tp!1889528 () Bool)

(assert (=> b!6876357 (= e!4144417 (and tp!1889524 tp!1889528))))

(declare-fun b!6876356 () Bool)

(assert (=> b!6876356 (= e!4144417 tp_is_empty!42707)))

(assert (=> b!6876255 (= tp!1889461 e!4144417)))

(assert (= (and b!6876255 ((_ is ElementMatch!16727) (reg!17056 r!11177))) b!6876356))

(assert (= (and b!6876255 ((_ is Concat!25572) (reg!17056 r!11177))) b!6876357))

(assert (= (and b!6876255 ((_ is Star!16727) (reg!17056 r!11177))) b!6876360))

(assert (= (and b!6876255 ((_ is Union!16727) (reg!17056 r!11177))) b!6876361))

(declare-fun b!6876368 () Bool)

(declare-fun e!4144421 () Bool)

(declare-fun tp!1889539 () Bool)

(assert (=> b!6876368 (= e!4144421 tp!1889539)))

(declare-fun b!6876369 () Bool)

(declare-fun tp!1889538 () Bool)

(declare-fun tp!1889537 () Bool)

(assert (=> b!6876369 (= e!4144421 (and tp!1889538 tp!1889537))))

(declare-fun b!6876367 () Bool)

(declare-fun tp!1889536 () Bool)

(declare-fun tp!1889540 () Bool)

(assert (=> b!6876367 (= e!4144421 (and tp!1889536 tp!1889540))))

(declare-fun b!6876366 () Bool)

(assert (=> b!6876366 (= e!4144421 tp_is_empty!42707)))

(assert (=> b!6876254 (= tp!1889458 e!4144421)))

(assert (= (and b!6876254 ((_ is ElementMatch!16727) (regOne!33966 r!11177))) b!6876366))

(assert (= (and b!6876254 ((_ is Concat!25572) (regOne!33966 r!11177))) b!6876367))

(assert (= (and b!6876254 ((_ is Star!16727) (regOne!33966 r!11177))) b!6876368))

(assert (= (and b!6876254 ((_ is Union!16727) (regOne!33966 r!11177))) b!6876369))

(declare-fun b!6876376 () Bool)

(declare-fun e!4144423 () Bool)

(declare-fun tp!1889549 () Bool)

(assert (=> b!6876376 (= e!4144423 tp!1889549)))

(declare-fun b!6876377 () Bool)

(declare-fun tp!1889548 () Bool)

(declare-fun tp!1889547 () Bool)

(assert (=> b!6876377 (= e!4144423 (and tp!1889548 tp!1889547))))

(declare-fun b!6876375 () Bool)

(declare-fun tp!1889546 () Bool)

(declare-fun tp!1889550 () Bool)

(assert (=> b!6876375 (= e!4144423 (and tp!1889546 tp!1889550))))

(declare-fun b!6876374 () Bool)

(assert (=> b!6876374 (= e!4144423 tp_is_empty!42707)))

(assert (=> b!6876254 (= tp!1889456 e!4144423)))

(assert (= (and b!6876254 ((_ is ElementMatch!16727) (regTwo!33966 r!11177))) b!6876374))

(assert (= (and b!6876254 ((_ is Concat!25572) (regTwo!33966 r!11177))) b!6876375))

(assert (= (and b!6876254 ((_ is Star!16727) (regTwo!33966 r!11177))) b!6876376))

(assert (= (and b!6876254 ((_ is Union!16727) (regTwo!33966 r!11177))) b!6876377))

(check-sat (not b!6876327) (not d!2159359) (not b!6876357) (not b!6876361) (not b!6876329) (not b!6876285) (not b!6876304) tp_is_empty!42707 (not b!6876334) (not b!6876328) (not b!6876333) (not b!6876375) (not b!6876367) (not b!6876377) (not d!2159365) (not b!6876376) (not b!6876369) (not b!6876269) (not b!6876280) (not d!2159369) (not b!6876355) (not d!2159353) (not b!6876331) (not d!2159349) (not d!2159357) (not b!6876286) (not b!6876360) (not b!6876368) (not b!6876354))
(check-sat)
(get-model)

(declare-fun bs!1837822 () Bool)

(declare-fun d!2159373 () Bool)

(assert (= bs!1837822 (and d!2159373 d!2159353)))

(declare-fun lambda!389308 () Int)

(assert (=> bs!1837822 (= lambda!389308 lambda!389292)))

(declare-fun bs!1837823 () Bool)

(assert (= bs!1837823 (and d!2159373 d!2159359)))

(assert (=> bs!1837823 (= lambda!389308 lambda!389294)))

(declare-fun bs!1837824 () Bool)

(assert (= bs!1837824 (and d!2159373 d!2159365)))

(assert (=> bs!1837824 (= lambda!389308 lambda!389300)))

(assert (=> d!2159373 (= (inv!85064 (h!72790 (t!380209 zl!1520))) (forall!15925 (exprs!6611 (h!72790 (t!380209 zl!1520))) lambda!389308))))

(declare-fun bs!1837825 () Bool)

(assert (= bs!1837825 d!2159373))

(declare-fun m!7604424 () Bool)

(assert (=> bs!1837825 m!7604424))

(assert (=> b!6876354 d!2159373))

(declare-fun d!2159375 () Bool)

(declare-fun c!1279488 () Bool)

(assert (=> d!2159375 (= c!1279488 ((_ is Nil!66341) (unfocusZipperList!2144 zl!1520)))))

(declare-fun e!4144427 () (InoxSet Regex!16727))

(assert (=> d!2159375 (= (content!13031 (unfocusZipperList!2144 zl!1520)) e!4144427)))

(declare-fun b!6876386 () Bool)

(assert (=> b!6876386 (= e!4144427 ((as const (Array Regex!16727 Bool)) false))))

(declare-fun b!6876387 () Bool)

(assert (=> b!6876387 (= e!4144427 ((_ map or) (store ((as const (Array Regex!16727 Bool)) false) (h!72789 (unfocusZipperList!2144 zl!1520)) true) (content!13031 (t!380208 (unfocusZipperList!2144 zl!1520)))))))

(assert (= (and d!2159375 c!1279488) b!6876386))

(assert (= (and d!2159375 (not c!1279488)) b!6876387))

(declare-fun m!7604426 () Bool)

(assert (=> b!6876387 m!7604426))

(declare-fun m!7604428 () Bool)

(assert (=> b!6876387 m!7604428))

(assert (=> d!2159349 d!2159375))

(declare-fun bs!1837826 () Bool)

(declare-fun d!2159377 () Bool)

(assert (= bs!1837826 (and d!2159377 d!2159353)))

(declare-fun lambda!389311 () Int)

(assert (=> bs!1837826 (= lambda!389311 lambda!389292)))

(declare-fun bs!1837827 () Bool)

(assert (= bs!1837827 (and d!2159377 d!2159359)))

(assert (=> bs!1837827 (= lambda!389311 lambda!389294)))

(declare-fun bs!1837828 () Bool)

(assert (= bs!1837828 (and d!2159377 d!2159365)))

(assert (=> bs!1837828 (= lambda!389311 lambda!389300)))

(declare-fun bs!1837829 () Bool)

(assert (= bs!1837829 (and d!2159377 d!2159373)))

(assert (=> bs!1837829 (= lambda!389311 lambda!389308)))

(declare-fun b!6876409 () Bool)

(declare-fun e!4144444 () Bool)

(declare-fun isEmpty!38658 (List!66465) Bool)

(assert (=> b!6876409 (= e!4144444 (isEmpty!38658 (t!380208 (exprs!6611 (h!72790 (t!380209 zl!1520))))))))

(declare-fun b!6876410 () Bool)

(declare-fun e!4144442 () Bool)

(declare-fun e!4144443 () Bool)

(assert (=> b!6876410 (= e!4144442 e!4144443)))

(declare-fun c!1279500 () Bool)

(assert (=> b!6876410 (= c!1279500 (isEmpty!38658 (exprs!6611 (h!72790 (t!380209 zl!1520)))))))

(declare-fun b!6876411 () Bool)

(declare-fun e!4144445 () Bool)

(declare-fun lt!2459169 () Regex!16727)

(declare-fun head!13800 (List!66465) Regex!16727)

(assert (=> b!6876411 (= e!4144445 (= lt!2459169 (head!13800 (exprs!6611 (h!72790 (t!380209 zl!1520))))))))

(declare-fun b!6876412 () Bool)

(declare-fun e!4144440 () Regex!16727)

(assert (=> b!6876412 (= e!4144440 EmptyExpr!16727)))

(declare-fun b!6876413 () Bool)

(declare-fun isEmptyExpr!2023 (Regex!16727) Bool)

(assert (=> b!6876413 (= e!4144443 (isEmptyExpr!2023 lt!2459169))))

(declare-fun b!6876414 () Bool)

(declare-fun e!4144441 () Regex!16727)

(assert (=> b!6876414 (= e!4144441 e!4144440)))

(declare-fun c!1279499 () Bool)

(assert (=> b!6876414 (= c!1279499 ((_ is Cons!66341) (exprs!6611 (h!72790 (t!380209 zl!1520)))))))

(declare-fun b!6876415 () Bool)

(assert (=> b!6876415 (= e!4144440 (Concat!25572 (h!72789 (exprs!6611 (h!72790 (t!380209 zl!1520)))) (generalisedConcat!2308 (t!380208 (exprs!6611 (h!72790 (t!380209 zl!1520)))))))))

(declare-fun b!6876408 () Bool)

(assert (=> b!6876408 (= e!4144441 (h!72789 (exprs!6611 (h!72790 (t!380209 zl!1520)))))))

(assert (=> d!2159377 e!4144442))

(declare-fun res!2803835 () Bool)

(assert (=> d!2159377 (=> (not res!2803835) (not e!4144442))))

(declare-fun validRegex!8452 (Regex!16727) Bool)

(assert (=> d!2159377 (= res!2803835 (validRegex!8452 lt!2459169))))

(assert (=> d!2159377 (= lt!2459169 e!4144441)))

(declare-fun c!1279498 () Bool)

(assert (=> d!2159377 (= c!1279498 e!4144444)))

(declare-fun res!2803836 () Bool)

(assert (=> d!2159377 (=> (not res!2803836) (not e!4144444))))

(assert (=> d!2159377 (= res!2803836 ((_ is Cons!66341) (exprs!6611 (h!72790 (t!380209 zl!1520)))))))

(assert (=> d!2159377 (forall!15925 (exprs!6611 (h!72790 (t!380209 zl!1520))) lambda!389311)))

(assert (=> d!2159377 (= (generalisedConcat!2308 (exprs!6611 (h!72790 (t!380209 zl!1520)))) lt!2459169)))

(declare-fun b!6876416 () Bool)

(assert (=> b!6876416 (= e!4144443 e!4144445)))

(declare-fun c!1279497 () Bool)

(declare-fun tail!12852 (List!66465) List!66465)

(assert (=> b!6876416 (= c!1279497 (isEmpty!38658 (tail!12852 (exprs!6611 (h!72790 (t!380209 zl!1520))))))))

(declare-fun b!6876417 () Bool)

(declare-fun isConcat!1546 (Regex!16727) Bool)

(assert (=> b!6876417 (= e!4144445 (isConcat!1546 lt!2459169))))

(assert (= (and d!2159377 res!2803836) b!6876409))

(assert (= (and d!2159377 c!1279498) b!6876408))

(assert (= (and d!2159377 (not c!1279498)) b!6876414))

(assert (= (and b!6876414 c!1279499) b!6876415))

(assert (= (and b!6876414 (not c!1279499)) b!6876412))

(assert (= (and d!2159377 res!2803835) b!6876410))

(assert (= (and b!6876410 c!1279500) b!6876413))

(assert (= (and b!6876410 (not c!1279500)) b!6876416))

(assert (= (and b!6876416 c!1279497) b!6876411))

(assert (= (and b!6876416 (not c!1279497)) b!6876417))

(declare-fun m!7604430 () Bool)

(assert (=> d!2159377 m!7604430))

(declare-fun m!7604432 () Bool)

(assert (=> d!2159377 m!7604432))

(declare-fun m!7604434 () Bool)

(assert (=> b!6876417 m!7604434))

(declare-fun m!7604436 () Bool)

(assert (=> b!6876410 m!7604436))

(declare-fun m!7604438 () Bool)

(assert (=> b!6876411 m!7604438))

(declare-fun m!7604440 () Bool)

(assert (=> b!6876413 m!7604440))

(declare-fun m!7604442 () Bool)

(assert (=> b!6876415 m!7604442))

(declare-fun m!7604444 () Bool)

(assert (=> b!6876409 m!7604444))

(declare-fun m!7604446 () Bool)

(assert (=> b!6876416 m!7604446))

(assert (=> b!6876416 m!7604446))

(declare-fun m!7604448 () Bool)

(assert (=> b!6876416 m!7604448))

(assert (=> b!6876286 d!2159377))

(declare-fun bs!1837830 () Bool)

(declare-fun d!2159379 () Bool)

(assert (= bs!1837830 (and d!2159379 d!2159373)))

(declare-fun lambda!389312 () Int)

(assert (=> bs!1837830 (= lambda!389312 lambda!389308)))

(declare-fun bs!1837831 () Bool)

(assert (= bs!1837831 (and d!2159379 d!2159359)))

(assert (=> bs!1837831 (= lambda!389312 lambda!389294)))

(declare-fun bs!1837832 () Bool)

(assert (= bs!1837832 (and d!2159379 d!2159365)))

(assert (=> bs!1837832 (= lambda!389312 lambda!389300)))

(declare-fun bs!1837833 () Bool)

(assert (= bs!1837833 (and d!2159379 d!2159377)))

(assert (=> bs!1837833 (= lambda!389312 lambda!389311)))

(declare-fun bs!1837834 () Bool)

(assert (= bs!1837834 (and d!2159379 d!2159353)))

(assert (=> bs!1837834 (= lambda!389312 lambda!389292)))

(declare-fun lt!2459170 () List!66465)

(assert (=> d!2159379 (forall!15925 lt!2459170 lambda!389312)))

(declare-fun e!4144446 () List!66465)

(assert (=> d!2159379 (= lt!2459170 e!4144446)))

(declare-fun c!1279501 () Bool)

(assert (=> d!2159379 (= c!1279501 ((_ is Cons!66342) (t!380209 (t!380209 zl!1520))))))

(assert (=> d!2159379 (= (unfocusZipperList!2144 (t!380209 (t!380209 zl!1520))) lt!2459170)))

(declare-fun b!6876418 () Bool)

(assert (=> b!6876418 (= e!4144446 (Cons!66341 (generalisedConcat!2308 (exprs!6611 (h!72790 (t!380209 (t!380209 zl!1520))))) (unfocusZipperList!2144 (t!380209 (t!380209 (t!380209 zl!1520))))))))

(declare-fun b!6876419 () Bool)

(assert (=> b!6876419 (= e!4144446 Nil!66341)))

(assert (= (and d!2159379 c!1279501) b!6876418))

(assert (= (and d!2159379 (not c!1279501)) b!6876419))

(declare-fun m!7604450 () Bool)

(assert (=> d!2159379 m!7604450))

(declare-fun m!7604452 () Bool)

(assert (=> b!6876418 m!7604452))

(declare-fun m!7604454 () Bool)

(assert (=> b!6876418 m!7604454))

(assert (=> b!6876286 d!2159379))

(declare-fun d!2159381 () Bool)

(declare-fun res!2803841 () Bool)

(declare-fun e!4144451 () Bool)

(assert (=> d!2159381 (=> res!2803841 e!4144451)))

(assert (=> d!2159381 (= res!2803841 ((_ is Nil!66341) lt!2459161))))

(assert (=> d!2159381 (= (forall!15925 lt!2459161 lambda!389292) e!4144451)))

(declare-fun b!6876424 () Bool)

(declare-fun e!4144452 () Bool)

(assert (=> b!6876424 (= e!4144451 e!4144452)))

(declare-fun res!2803842 () Bool)

(assert (=> b!6876424 (=> (not res!2803842) (not e!4144452))))

(declare-fun dynLambda!26564 (Int Regex!16727) Bool)

(assert (=> b!6876424 (= res!2803842 (dynLambda!26564 lambda!389292 (h!72789 lt!2459161)))))

(declare-fun b!6876425 () Bool)

(assert (=> b!6876425 (= e!4144452 (forall!15925 (t!380208 lt!2459161) lambda!389292))))

(assert (= (and d!2159381 (not res!2803841)) b!6876424))

(assert (= (and b!6876424 res!2803842) b!6876425))

(declare-fun b_lambda!260219 () Bool)

(assert (=> (not b_lambda!260219) (not b!6876424)))

(declare-fun m!7604456 () Bool)

(assert (=> b!6876424 m!7604456))

(declare-fun m!7604458 () Bool)

(assert (=> b!6876425 m!7604458))

(assert (=> d!2159353 d!2159381))

(declare-fun d!2159385 () Bool)

(declare-fun c!1279502 () Bool)

(assert (=> d!2159385 (= c!1279502 ((_ is Nil!66341) (unfocusZipperList!2144 (t!380209 zl!1520))))))

(declare-fun e!4144457 () (InoxSet Regex!16727))

(assert (=> d!2159385 (= (content!13031 (unfocusZipperList!2144 (t!380209 zl!1520))) e!4144457)))

(declare-fun b!6876430 () Bool)

(assert (=> b!6876430 (= e!4144457 ((as const (Array Regex!16727 Bool)) false))))

(declare-fun b!6876431 () Bool)

(assert (=> b!6876431 (= e!4144457 ((_ map or) (store ((as const (Array Regex!16727 Bool)) false) (h!72789 (unfocusZipperList!2144 (t!380209 zl!1520))) true) (content!13031 (t!380208 (unfocusZipperList!2144 (t!380209 zl!1520))))))))

(assert (= (and d!2159385 c!1279502) b!6876430))

(assert (= (and d!2159385 (not c!1279502)) b!6876431))

(declare-fun m!7604460 () Bool)

(assert (=> b!6876431 m!7604460))

(declare-fun m!7604462 () Bool)

(assert (=> b!6876431 m!7604462))

(assert (=> d!2159357 d!2159385))

(declare-fun d!2159387 () Bool)

(declare-fun res!2803847 () Bool)

(declare-fun e!4144458 () Bool)

(assert (=> d!2159387 (=> res!2803847 e!4144458)))

(assert (=> d!2159387 (= res!2803847 ((_ is Nil!66341) lt!2459164))))

(assert (=> d!2159387 (= (forall!15925 lt!2459164 lambda!389294) e!4144458)))

(declare-fun b!6876432 () Bool)

(declare-fun e!4144459 () Bool)

(assert (=> b!6876432 (= e!4144458 e!4144459)))

(declare-fun res!2803848 () Bool)

(assert (=> b!6876432 (=> (not res!2803848) (not e!4144459))))

(assert (=> b!6876432 (= res!2803848 (dynLambda!26564 lambda!389294 (h!72789 lt!2459164)))))

(declare-fun b!6876433 () Bool)

(assert (=> b!6876433 (= e!4144459 (forall!15925 (t!380208 lt!2459164) lambda!389294))))

(assert (= (and d!2159387 (not res!2803847)) b!6876432))

(assert (= (and b!6876432 res!2803848) b!6876433))

(declare-fun b_lambda!260221 () Bool)

(assert (=> (not b_lambda!260221) (not b!6876432)))

(declare-fun m!7604464 () Bool)

(assert (=> b!6876432 m!7604464))

(declare-fun m!7604466 () Bool)

(assert (=> b!6876433 m!7604466))

(assert (=> d!2159359 d!2159387))

(declare-fun d!2159389 () Bool)

(declare-fun res!2803849 () Bool)

(declare-fun e!4144461 () Bool)

(assert (=> d!2159389 (=> res!2803849 e!4144461)))

(assert (=> d!2159389 (= res!2803849 ((_ is Nil!66341) (exprs!6611 (h!72790 zl!1520))))))

(assert (=> d!2159389 (= (forall!15925 (exprs!6611 (h!72790 zl!1520)) lambda!389300) e!4144461)))

(declare-fun b!6876434 () Bool)

(declare-fun e!4144462 () Bool)

(assert (=> b!6876434 (= e!4144461 e!4144462)))

(declare-fun res!2803850 () Bool)

(assert (=> b!6876434 (=> (not res!2803850) (not e!4144462))))

(assert (=> b!6876434 (= res!2803850 (dynLambda!26564 lambda!389300 (h!72789 (exprs!6611 (h!72790 zl!1520)))))))

(declare-fun b!6876435 () Bool)

(assert (=> b!6876435 (= e!4144462 (forall!15925 (t!380208 (exprs!6611 (h!72790 zl!1520))) lambda!389300))))

(assert (= (and d!2159389 (not res!2803849)) b!6876434))

(assert (= (and b!6876434 res!2803850) b!6876435))

(declare-fun b_lambda!260223 () Bool)

(assert (=> (not b_lambda!260223) (not b!6876434)))

(declare-fun m!7604468 () Bool)

(assert (=> b!6876434 m!7604468))

(declare-fun m!7604470 () Bool)

(assert (=> b!6876435 m!7604470))

(assert (=> d!2159365 d!2159389))

(declare-fun d!2159391 () Bool)

(declare-fun res!2803859 () Bool)

(declare-fun e!4144470 () Bool)

(assert (=> d!2159391 (=> res!2803859 e!4144470)))

(assert (=> d!2159391 (= res!2803859 ((_ is Nil!66342) zl!1520))))

(assert (=> d!2159391 (= (forall!15928 zl!1520 lambda!389304) e!4144470)))

(declare-fun b!6876444 () Bool)

(declare-fun e!4144471 () Bool)

(assert (=> b!6876444 (= e!4144470 e!4144471)))

(declare-fun res!2803860 () Bool)

(assert (=> b!6876444 (=> (not res!2803860) (not e!4144471))))

(declare-fun dynLambda!26565 (Int Context!12222) Bool)

(assert (=> b!6876444 (= res!2803860 (dynLambda!26565 lambda!389304 (h!72790 zl!1520)))))

(declare-fun b!6876445 () Bool)

(assert (=> b!6876445 (= e!4144471 (forall!15928 (t!380209 zl!1520) lambda!389304))))

(assert (= (and d!2159391 (not res!2803859)) b!6876444))

(assert (= (and b!6876444 res!2803860) b!6876445))

(declare-fun b_lambda!260227 () Bool)

(assert (=> (not b_lambda!260227) (not b!6876444)))

(declare-fun m!7604484 () Bool)

(assert (=> b!6876444 m!7604484))

(declare-fun m!7604486 () Bool)

(assert (=> b!6876445 m!7604486))

(assert (=> d!2159369 d!2159391))

(declare-fun d!2159399 () Bool)

(declare-fun lt!2459172 () Bool)

(assert (=> d!2159399 (= lt!2459172 (select (content!13031 (t!380208 (unfocusZipperList!2144 (t!380209 zl!1520)))) r!11177))))

(declare-fun e!4144472 () Bool)

(assert (=> d!2159399 (= lt!2459172 e!4144472)))

(declare-fun res!2803861 () Bool)

(assert (=> d!2159399 (=> (not res!2803861) (not e!4144472))))

(assert (=> d!2159399 (= res!2803861 ((_ is Cons!66341) (t!380208 (unfocusZipperList!2144 (t!380209 zl!1520)))))))

(assert (=> d!2159399 (= (contains!20383 (t!380208 (unfocusZipperList!2144 (t!380209 zl!1520))) r!11177) lt!2459172)))

(declare-fun b!6876446 () Bool)

(declare-fun e!4144473 () Bool)

(assert (=> b!6876446 (= e!4144472 e!4144473)))

(declare-fun res!2803862 () Bool)

(assert (=> b!6876446 (=> res!2803862 e!4144473)))

(assert (=> b!6876446 (= res!2803862 (= (h!72789 (t!380208 (unfocusZipperList!2144 (t!380209 zl!1520)))) r!11177))))

(declare-fun b!6876447 () Bool)

(assert (=> b!6876447 (= e!4144473 (contains!20383 (t!380208 (t!380208 (unfocusZipperList!2144 (t!380209 zl!1520)))) r!11177))))

(assert (= (and d!2159399 res!2803861) b!6876446))

(assert (= (and b!6876446 (not res!2803862)) b!6876447))

(assert (=> d!2159399 m!7604462))

(declare-fun m!7604488 () Bool)

(assert (=> d!2159399 m!7604488))

(declare-fun m!7604490 () Bool)

(assert (=> b!6876447 m!7604490))

(assert (=> b!6876285 d!2159399))

(declare-fun d!2159401 () Bool)

(declare-fun lt!2459173 () Bool)

(assert (=> d!2159401 (= lt!2459173 (select (content!13031 (t!380208 (unfocusZipperList!2144 zl!1520))) r!11177))))

(declare-fun e!4144474 () Bool)

(assert (=> d!2159401 (= lt!2459173 e!4144474)))

(declare-fun res!2803863 () Bool)

(assert (=> d!2159401 (=> (not res!2803863) (not e!4144474))))

(assert (=> d!2159401 (= res!2803863 ((_ is Cons!66341) (t!380208 (unfocusZipperList!2144 zl!1520))))))

(assert (=> d!2159401 (= (contains!20383 (t!380208 (unfocusZipperList!2144 zl!1520)) r!11177) lt!2459173)))

(declare-fun b!6876448 () Bool)

(declare-fun e!4144475 () Bool)

(assert (=> b!6876448 (= e!4144474 e!4144475)))

(declare-fun res!2803864 () Bool)

(assert (=> b!6876448 (=> res!2803864 e!4144475)))

(assert (=> b!6876448 (= res!2803864 (= (h!72789 (t!380208 (unfocusZipperList!2144 zl!1520))) r!11177))))

(declare-fun b!6876449 () Bool)

(assert (=> b!6876449 (= e!4144475 (contains!20383 (t!380208 (t!380208 (unfocusZipperList!2144 zl!1520))) r!11177))))

(assert (= (and d!2159401 res!2803863) b!6876448))

(assert (= (and b!6876448 (not res!2803864)) b!6876449))

(assert (=> d!2159401 m!7604428))

(declare-fun m!7604492 () Bool)

(assert (=> d!2159401 m!7604492))

(declare-fun m!7604494 () Bool)

(assert (=> b!6876449 m!7604494))

(assert (=> b!6876269 d!2159401))

(declare-fun bs!1837839 () Bool)

(declare-fun d!2159403 () Bool)

(assert (= bs!1837839 (and d!2159403 d!2159373)))

(declare-fun lambda!389314 () Int)

(assert (=> bs!1837839 (= lambda!389314 lambda!389308)))

(declare-fun bs!1837840 () Bool)

(assert (= bs!1837840 (and d!2159403 d!2159379)))

(assert (=> bs!1837840 (= lambda!389314 lambda!389312)))

(declare-fun bs!1837841 () Bool)

(assert (= bs!1837841 (and d!2159403 d!2159359)))

(assert (=> bs!1837841 (= lambda!389314 lambda!389294)))

(declare-fun bs!1837842 () Bool)

(assert (= bs!1837842 (and d!2159403 d!2159365)))

(assert (=> bs!1837842 (= lambda!389314 lambda!389300)))

(declare-fun bs!1837843 () Bool)

(assert (= bs!1837843 (and d!2159403 d!2159377)))

(assert (=> bs!1837843 (= lambda!389314 lambda!389311)))

(declare-fun bs!1837844 () Bool)

(assert (= bs!1837844 (and d!2159403 d!2159353)))

(assert (=> bs!1837844 (= lambda!389314 lambda!389292)))

(declare-fun b!6876451 () Bool)

(declare-fun e!4144480 () Bool)

(assert (=> b!6876451 (= e!4144480 (isEmpty!38658 (t!380208 (exprs!6611 (h!72790 zl!1520)))))))

(declare-fun b!6876452 () Bool)

(declare-fun e!4144478 () Bool)

(declare-fun e!4144479 () Bool)

(assert (=> b!6876452 (= e!4144478 e!4144479)))

(declare-fun c!1279506 () Bool)

(assert (=> b!6876452 (= c!1279506 (isEmpty!38658 (exprs!6611 (h!72790 zl!1520))))))

(declare-fun b!6876453 () Bool)

(declare-fun e!4144481 () Bool)

(declare-fun lt!2459174 () Regex!16727)

(assert (=> b!6876453 (= e!4144481 (= lt!2459174 (head!13800 (exprs!6611 (h!72790 zl!1520)))))))

(declare-fun b!6876454 () Bool)

(declare-fun e!4144476 () Regex!16727)

(assert (=> b!6876454 (= e!4144476 EmptyExpr!16727)))

(declare-fun b!6876455 () Bool)

(assert (=> b!6876455 (= e!4144479 (isEmptyExpr!2023 lt!2459174))))

(declare-fun b!6876456 () Bool)

(declare-fun e!4144477 () Regex!16727)

(assert (=> b!6876456 (= e!4144477 e!4144476)))

(declare-fun c!1279505 () Bool)

(assert (=> b!6876456 (= c!1279505 ((_ is Cons!66341) (exprs!6611 (h!72790 zl!1520))))))

(declare-fun b!6876457 () Bool)

(assert (=> b!6876457 (= e!4144476 (Concat!25572 (h!72789 (exprs!6611 (h!72790 zl!1520))) (generalisedConcat!2308 (t!380208 (exprs!6611 (h!72790 zl!1520))))))))

(declare-fun b!6876450 () Bool)

(assert (=> b!6876450 (= e!4144477 (h!72789 (exprs!6611 (h!72790 zl!1520))))))

(assert (=> d!2159403 e!4144478))

(declare-fun res!2803865 () Bool)

(assert (=> d!2159403 (=> (not res!2803865) (not e!4144478))))

(assert (=> d!2159403 (= res!2803865 (validRegex!8452 lt!2459174))))

(assert (=> d!2159403 (= lt!2459174 e!4144477)))

(declare-fun c!1279504 () Bool)

(assert (=> d!2159403 (= c!1279504 e!4144480)))

(declare-fun res!2803866 () Bool)

(assert (=> d!2159403 (=> (not res!2803866) (not e!4144480))))

(assert (=> d!2159403 (= res!2803866 ((_ is Cons!66341) (exprs!6611 (h!72790 zl!1520))))))

(assert (=> d!2159403 (forall!15925 (exprs!6611 (h!72790 zl!1520)) lambda!389314)))

(assert (=> d!2159403 (= (generalisedConcat!2308 (exprs!6611 (h!72790 zl!1520))) lt!2459174)))

(declare-fun b!6876458 () Bool)

(assert (=> b!6876458 (= e!4144479 e!4144481)))

(declare-fun c!1279503 () Bool)

(assert (=> b!6876458 (= c!1279503 (isEmpty!38658 (tail!12852 (exprs!6611 (h!72790 zl!1520)))))))

(declare-fun b!6876459 () Bool)

(assert (=> b!6876459 (= e!4144481 (isConcat!1546 lt!2459174))))

(assert (= (and d!2159403 res!2803866) b!6876451))

(assert (= (and d!2159403 c!1279504) b!6876450))

(assert (= (and d!2159403 (not c!1279504)) b!6876456))

(assert (= (and b!6876456 c!1279505) b!6876457))

(assert (= (and b!6876456 (not c!1279505)) b!6876454))

(assert (= (and d!2159403 res!2803865) b!6876452))

(assert (= (and b!6876452 c!1279506) b!6876455))

(assert (= (and b!6876452 (not c!1279506)) b!6876458))

(assert (= (and b!6876458 c!1279503) b!6876453))

(assert (= (and b!6876458 (not c!1279503)) b!6876459))

(declare-fun m!7604496 () Bool)

(assert (=> d!2159403 m!7604496))

(declare-fun m!7604498 () Bool)

(assert (=> d!2159403 m!7604498))

(declare-fun m!7604500 () Bool)

(assert (=> b!6876459 m!7604500))

(declare-fun m!7604502 () Bool)

(assert (=> b!6876452 m!7604502))

(declare-fun m!7604504 () Bool)

(assert (=> b!6876453 m!7604504))

(declare-fun m!7604506 () Bool)

(assert (=> b!6876455 m!7604506))

(declare-fun m!7604508 () Bool)

(assert (=> b!6876457 m!7604508))

(declare-fun m!7604510 () Bool)

(assert (=> b!6876451 m!7604510))

(declare-fun m!7604512 () Bool)

(assert (=> b!6876458 m!7604512))

(assert (=> b!6876458 m!7604512))

(declare-fun m!7604514 () Bool)

(assert (=> b!6876458 m!7604514))

(assert (=> b!6876280 d!2159403))

(assert (=> b!6876280 d!2159359))

(declare-fun b!6876462 () Bool)

(declare-fun e!4144482 () Bool)

(declare-fun tp!1889559 () Bool)

(assert (=> b!6876462 (= e!4144482 tp!1889559)))

(declare-fun b!6876463 () Bool)

(declare-fun tp!1889558 () Bool)

(declare-fun tp!1889557 () Bool)

(assert (=> b!6876463 (= e!4144482 (and tp!1889558 tp!1889557))))

(declare-fun b!6876461 () Bool)

(declare-fun tp!1889556 () Bool)

(declare-fun tp!1889560 () Bool)

(assert (=> b!6876461 (= e!4144482 (and tp!1889556 tp!1889560))))

(declare-fun b!6876460 () Bool)

(assert (=> b!6876460 (= e!4144482 tp_is_empty!42707)))

(assert (=> b!6876375 (= tp!1889546 e!4144482)))

(assert (= (and b!6876375 ((_ is ElementMatch!16727) (regOne!33966 (regTwo!33966 r!11177)))) b!6876460))

(assert (= (and b!6876375 ((_ is Concat!25572) (regOne!33966 (regTwo!33966 r!11177)))) b!6876461))

(assert (= (and b!6876375 ((_ is Star!16727) (regOne!33966 (regTwo!33966 r!11177)))) b!6876462))

(assert (= (and b!6876375 ((_ is Union!16727) (regOne!33966 (regTwo!33966 r!11177)))) b!6876463))

(declare-fun b!6876466 () Bool)

(declare-fun e!4144483 () Bool)

(declare-fun tp!1889564 () Bool)

(assert (=> b!6876466 (= e!4144483 tp!1889564)))

(declare-fun b!6876467 () Bool)

(declare-fun tp!1889563 () Bool)

(declare-fun tp!1889562 () Bool)

(assert (=> b!6876467 (= e!4144483 (and tp!1889563 tp!1889562))))

(declare-fun b!6876465 () Bool)

(declare-fun tp!1889561 () Bool)

(declare-fun tp!1889565 () Bool)

(assert (=> b!6876465 (= e!4144483 (and tp!1889561 tp!1889565))))

(declare-fun b!6876464 () Bool)

(assert (=> b!6876464 (= e!4144483 tp_is_empty!42707)))

(assert (=> b!6876375 (= tp!1889550 e!4144483)))

(assert (= (and b!6876375 ((_ is ElementMatch!16727) (regTwo!33966 (regTwo!33966 r!11177)))) b!6876464))

(assert (= (and b!6876375 ((_ is Concat!25572) (regTwo!33966 (regTwo!33966 r!11177)))) b!6876465))

(assert (= (and b!6876375 ((_ is Star!16727) (regTwo!33966 (regTwo!33966 r!11177)))) b!6876466))

(assert (= (and b!6876375 ((_ is Union!16727) (regTwo!33966 (regTwo!33966 r!11177)))) b!6876467))

(declare-fun b!6876470 () Bool)

(declare-fun e!4144484 () Bool)

(declare-fun tp!1889569 () Bool)

(assert (=> b!6876470 (= e!4144484 tp!1889569)))

(declare-fun b!6876471 () Bool)

(declare-fun tp!1889568 () Bool)

(declare-fun tp!1889567 () Bool)

(assert (=> b!6876471 (= e!4144484 (and tp!1889568 tp!1889567))))

(declare-fun b!6876469 () Bool)

(declare-fun tp!1889566 () Bool)

(declare-fun tp!1889570 () Bool)

(assert (=> b!6876469 (= e!4144484 (and tp!1889566 tp!1889570))))

(declare-fun b!6876468 () Bool)

(assert (=> b!6876468 (= e!4144484 tp_is_empty!42707)))

(assert (=> b!6876376 (= tp!1889549 e!4144484)))

(assert (= (and b!6876376 ((_ is ElementMatch!16727) (reg!17056 (regTwo!33966 r!11177)))) b!6876468))

(assert (= (and b!6876376 ((_ is Concat!25572) (reg!17056 (regTwo!33966 r!11177)))) b!6876469))

(assert (= (and b!6876376 ((_ is Star!16727) (reg!17056 (regTwo!33966 r!11177)))) b!6876470))

(assert (= (and b!6876376 ((_ is Union!16727) (reg!17056 (regTwo!33966 r!11177)))) b!6876471))

(declare-fun b!6876474 () Bool)

(declare-fun e!4144485 () Bool)

(declare-fun tp!1889574 () Bool)

(assert (=> b!6876474 (= e!4144485 tp!1889574)))

(declare-fun b!6876475 () Bool)

(declare-fun tp!1889573 () Bool)

(declare-fun tp!1889572 () Bool)

(assert (=> b!6876475 (= e!4144485 (and tp!1889573 tp!1889572))))

(declare-fun b!6876473 () Bool)

(declare-fun tp!1889571 () Bool)

(declare-fun tp!1889575 () Bool)

(assert (=> b!6876473 (= e!4144485 (and tp!1889571 tp!1889575))))

(declare-fun b!6876472 () Bool)

(assert (=> b!6876472 (= e!4144485 tp_is_empty!42707)))

(assert (=> b!6876331 (= tp!1889499 e!4144485)))

(assert (= (and b!6876331 ((_ is ElementMatch!16727) (regOne!33966 (regTwo!33967 r!11177)))) b!6876472))

(assert (= (and b!6876331 ((_ is Concat!25572) (regOne!33966 (regTwo!33967 r!11177)))) b!6876473))

(assert (= (and b!6876331 ((_ is Star!16727) (regOne!33966 (regTwo!33967 r!11177)))) b!6876474))

(assert (= (and b!6876331 ((_ is Union!16727) (regOne!33966 (regTwo!33967 r!11177)))) b!6876475))

(declare-fun b!6876478 () Bool)

(declare-fun e!4144486 () Bool)

(declare-fun tp!1889579 () Bool)

(assert (=> b!6876478 (= e!4144486 tp!1889579)))

(declare-fun b!6876479 () Bool)

(declare-fun tp!1889578 () Bool)

(declare-fun tp!1889577 () Bool)

(assert (=> b!6876479 (= e!4144486 (and tp!1889578 tp!1889577))))

(declare-fun b!6876477 () Bool)

(declare-fun tp!1889576 () Bool)

(declare-fun tp!1889580 () Bool)

(assert (=> b!6876477 (= e!4144486 (and tp!1889576 tp!1889580))))

(declare-fun b!6876476 () Bool)

(assert (=> b!6876476 (= e!4144486 tp_is_empty!42707)))

(assert (=> b!6876331 (= tp!1889503 e!4144486)))

(assert (= (and b!6876331 ((_ is ElementMatch!16727) (regTwo!33966 (regTwo!33967 r!11177)))) b!6876476))

(assert (= (and b!6876331 ((_ is Concat!25572) (regTwo!33966 (regTwo!33967 r!11177)))) b!6876477))

(assert (= (and b!6876331 ((_ is Star!16727) (regTwo!33966 (regTwo!33967 r!11177)))) b!6876478))

(assert (= (and b!6876331 ((_ is Union!16727) (regTwo!33966 (regTwo!33967 r!11177)))) b!6876479))

(declare-fun b!6876482 () Bool)

(declare-fun e!4144487 () Bool)

(declare-fun tp!1889584 () Bool)

(assert (=> b!6876482 (= e!4144487 tp!1889584)))

(declare-fun b!6876483 () Bool)

(declare-fun tp!1889583 () Bool)

(declare-fun tp!1889582 () Bool)

(assert (=> b!6876483 (= e!4144487 (and tp!1889583 tp!1889582))))

(declare-fun b!6876481 () Bool)

(declare-fun tp!1889581 () Bool)

(declare-fun tp!1889585 () Bool)

(assert (=> b!6876481 (= e!4144487 (and tp!1889581 tp!1889585))))

(declare-fun b!6876480 () Bool)

(assert (=> b!6876480 (= e!4144487 tp_is_empty!42707)))

(assert (=> b!6876367 (= tp!1889536 e!4144487)))

(assert (= (and b!6876367 ((_ is ElementMatch!16727) (regOne!33966 (regOne!33966 r!11177)))) b!6876480))

(assert (= (and b!6876367 ((_ is Concat!25572) (regOne!33966 (regOne!33966 r!11177)))) b!6876481))

(assert (= (and b!6876367 ((_ is Star!16727) (regOne!33966 (regOne!33966 r!11177)))) b!6876482))

(assert (= (and b!6876367 ((_ is Union!16727) (regOne!33966 (regOne!33966 r!11177)))) b!6876483))

(declare-fun b!6876486 () Bool)

(declare-fun e!4144488 () Bool)

(declare-fun tp!1889589 () Bool)

(assert (=> b!6876486 (= e!4144488 tp!1889589)))

(declare-fun b!6876487 () Bool)

(declare-fun tp!1889588 () Bool)

(declare-fun tp!1889587 () Bool)

(assert (=> b!6876487 (= e!4144488 (and tp!1889588 tp!1889587))))

(declare-fun b!6876485 () Bool)

(declare-fun tp!1889586 () Bool)

(declare-fun tp!1889590 () Bool)

(assert (=> b!6876485 (= e!4144488 (and tp!1889586 tp!1889590))))

(declare-fun b!6876484 () Bool)

(assert (=> b!6876484 (= e!4144488 tp_is_empty!42707)))

(assert (=> b!6876367 (= tp!1889540 e!4144488)))

(assert (= (and b!6876367 ((_ is ElementMatch!16727) (regTwo!33966 (regOne!33966 r!11177)))) b!6876484))

(assert (= (and b!6876367 ((_ is Concat!25572) (regTwo!33966 (regOne!33966 r!11177)))) b!6876485))

(assert (= (and b!6876367 ((_ is Star!16727) (regTwo!33966 (regOne!33966 r!11177)))) b!6876486))

(assert (= (and b!6876367 ((_ is Union!16727) (regTwo!33966 (regOne!33966 r!11177)))) b!6876487))

(declare-fun b!6876490 () Bool)

(declare-fun e!4144489 () Bool)

(declare-fun tp!1889594 () Bool)

(assert (=> b!6876490 (= e!4144489 tp!1889594)))

(declare-fun b!6876491 () Bool)

(declare-fun tp!1889593 () Bool)

(declare-fun tp!1889592 () Bool)

(assert (=> b!6876491 (= e!4144489 (and tp!1889593 tp!1889592))))

(declare-fun b!6876489 () Bool)

(declare-fun tp!1889591 () Bool)

(declare-fun tp!1889595 () Bool)

(assert (=> b!6876489 (= e!4144489 (and tp!1889591 tp!1889595))))

(declare-fun b!6876488 () Bool)

(assert (=> b!6876488 (= e!4144489 tp_is_empty!42707)))

(assert (=> b!6876368 (= tp!1889539 e!4144489)))

(assert (= (and b!6876368 ((_ is ElementMatch!16727) (reg!17056 (regOne!33966 r!11177)))) b!6876488))

(assert (= (and b!6876368 ((_ is Concat!25572) (reg!17056 (regOne!33966 r!11177)))) b!6876489))

(assert (= (and b!6876368 ((_ is Star!16727) (reg!17056 (regOne!33966 r!11177)))) b!6876490))

(assert (= (and b!6876368 ((_ is Union!16727) (reg!17056 (regOne!33966 r!11177)))) b!6876491))

(declare-fun b!6876494 () Bool)

(declare-fun e!4144490 () Bool)

(declare-fun tp!1889599 () Bool)

(assert (=> b!6876494 (= e!4144490 tp!1889599)))

(declare-fun b!6876495 () Bool)

(declare-fun tp!1889598 () Bool)

(declare-fun tp!1889597 () Bool)

(assert (=> b!6876495 (= e!4144490 (and tp!1889598 tp!1889597))))

(declare-fun b!6876493 () Bool)

(declare-fun tp!1889596 () Bool)

(declare-fun tp!1889600 () Bool)

(assert (=> b!6876493 (= e!4144490 (and tp!1889596 tp!1889600))))

(declare-fun b!6876492 () Bool)

(assert (=> b!6876492 (= e!4144490 tp_is_empty!42707)))

(assert (=> b!6876361 (= tp!1889526 e!4144490)))

(assert (= (and b!6876361 ((_ is ElementMatch!16727) (regOne!33967 (reg!17056 r!11177)))) b!6876492))

(assert (= (and b!6876361 ((_ is Concat!25572) (regOne!33967 (reg!17056 r!11177)))) b!6876493))

(assert (= (and b!6876361 ((_ is Star!16727) (regOne!33967 (reg!17056 r!11177)))) b!6876494))

(assert (= (and b!6876361 ((_ is Union!16727) (regOne!33967 (reg!17056 r!11177)))) b!6876495))

(declare-fun b!6876498 () Bool)

(declare-fun e!4144491 () Bool)

(declare-fun tp!1889604 () Bool)

(assert (=> b!6876498 (= e!4144491 tp!1889604)))

(declare-fun b!6876499 () Bool)

(declare-fun tp!1889603 () Bool)

(declare-fun tp!1889602 () Bool)

(assert (=> b!6876499 (= e!4144491 (and tp!1889603 tp!1889602))))

(declare-fun b!6876497 () Bool)

(declare-fun tp!1889601 () Bool)

(declare-fun tp!1889605 () Bool)

(assert (=> b!6876497 (= e!4144491 (and tp!1889601 tp!1889605))))

(declare-fun b!6876496 () Bool)

(assert (=> b!6876496 (= e!4144491 tp_is_empty!42707)))

(assert (=> b!6876361 (= tp!1889525 e!4144491)))

(assert (= (and b!6876361 ((_ is ElementMatch!16727) (regTwo!33967 (reg!17056 r!11177)))) b!6876496))

(assert (= (and b!6876361 ((_ is Concat!25572) (regTwo!33967 (reg!17056 r!11177)))) b!6876497))

(assert (= (and b!6876361 ((_ is Star!16727) (regTwo!33967 (reg!17056 r!11177)))) b!6876498))

(assert (= (and b!6876361 ((_ is Union!16727) (regTwo!33967 (reg!17056 r!11177)))) b!6876499))

(declare-fun b!6876512 () Bool)

(declare-fun e!4144497 () Bool)

(declare-fun tp!1889609 () Bool)

(assert (=> b!6876512 (= e!4144497 tp!1889609)))

(declare-fun b!6876513 () Bool)

(declare-fun tp!1889608 () Bool)

(declare-fun tp!1889607 () Bool)

(assert (=> b!6876513 (= e!4144497 (and tp!1889608 tp!1889607))))

(declare-fun b!6876511 () Bool)

(declare-fun tp!1889606 () Bool)

(declare-fun tp!1889610 () Bool)

(assert (=> b!6876511 (= e!4144497 (and tp!1889606 tp!1889610))))

(declare-fun b!6876509 () Bool)

(assert (=> b!6876509 (= e!4144497 tp_is_empty!42707)))

(assert (=> b!6876360 (= tp!1889527 e!4144497)))

(assert (= (and b!6876360 ((_ is ElementMatch!16727) (reg!17056 (reg!17056 r!11177)))) b!6876509))

(assert (= (and b!6876360 ((_ is Concat!25572) (reg!17056 (reg!17056 r!11177)))) b!6876511))

(assert (= (and b!6876360 ((_ is Star!16727) (reg!17056 (reg!17056 r!11177)))) b!6876512))

(assert (= (and b!6876360 ((_ is Union!16727) (reg!17056 (reg!17056 r!11177)))) b!6876513))

(declare-fun b!6876516 () Bool)

(declare-fun e!4144499 () Bool)

(declare-fun tp!1889614 () Bool)

(assert (=> b!6876516 (= e!4144499 tp!1889614)))

(declare-fun b!6876517 () Bool)

(declare-fun tp!1889613 () Bool)

(declare-fun tp!1889612 () Bool)

(assert (=> b!6876517 (= e!4144499 (and tp!1889613 tp!1889612))))

(declare-fun b!6876515 () Bool)

(declare-fun tp!1889611 () Bool)

(declare-fun tp!1889615 () Bool)

(assert (=> b!6876515 (= e!4144499 (and tp!1889611 tp!1889615))))

(declare-fun b!6876514 () Bool)

(assert (=> b!6876514 (= e!4144499 tp_is_empty!42707)))

(assert (=> b!6876377 (= tp!1889548 e!4144499)))

(assert (= (and b!6876377 ((_ is ElementMatch!16727) (regOne!33967 (regTwo!33966 r!11177)))) b!6876514))

(assert (= (and b!6876377 ((_ is Concat!25572) (regOne!33967 (regTwo!33966 r!11177)))) b!6876515))

(assert (= (and b!6876377 ((_ is Star!16727) (regOne!33967 (regTwo!33966 r!11177)))) b!6876516))

(assert (= (and b!6876377 ((_ is Union!16727) (regOne!33967 (regTwo!33966 r!11177)))) b!6876517))

(declare-fun b!6876520 () Bool)

(declare-fun e!4144500 () Bool)

(declare-fun tp!1889619 () Bool)

(assert (=> b!6876520 (= e!4144500 tp!1889619)))

(declare-fun b!6876521 () Bool)

(declare-fun tp!1889618 () Bool)

(declare-fun tp!1889617 () Bool)

(assert (=> b!6876521 (= e!4144500 (and tp!1889618 tp!1889617))))

(declare-fun b!6876519 () Bool)

(declare-fun tp!1889616 () Bool)

(declare-fun tp!1889620 () Bool)

(assert (=> b!6876519 (= e!4144500 (and tp!1889616 tp!1889620))))

(declare-fun b!6876518 () Bool)

(assert (=> b!6876518 (= e!4144500 tp_is_empty!42707)))

(assert (=> b!6876377 (= tp!1889547 e!4144500)))

(assert (= (and b!6876377 ((_ is ElementMatch!16727) (regTwo!33967 (regTwo!33966 r!11177)))) b!6876518))

(assert (= (and b!6876377 ((_ is Concat!25572) (regTwo!33967 (regTwo!33966 r!11177)))) b!6876519))

(assert (= (and b!6876377 ((_ is Star!16727) (regTwo!33967 (regTwo!33966 r!11177)))) b!6876520))

(assert (= (and b!6876377 ((_ is Union!16727) (regTwo!33967 (regTwo!33966 r!11177)))) b!6876521))

(declare-fun b!6876534 () Bool)

(declare-fun e!4144506 () Bool)

(declare-fun tp!1889624 () Bool)

(assert (=> b!6876534 (= e!4144506 tp!1889624)))

(declare-fun b!6876535 () Bool)

(declare-fun tp!1889623 () Bool)

(declare-fun tp!1889622 () Bool)

(assert (=> b!6876535 (= e!4144506 (and tp!1889623 tp!1889622))))

(declare-fun b!6876533 () Bool)

(declare-fun tp!1889621 () Bool)

(declare-fun tp!1889625 () Bool)

(assert (=> b!6876533 (= e!4144506 (and tp!1889621 tp!1889625))))

(declare-fun b!6876532 () Bool)

(assert (=> b!6876532 (= e!4144506 tp_is_empty!42707)))

(assert (=> b!6876333 (= tp!1889502 e!4144506)))

(assert (= (and b!6876333 ((_ is ElementMatch!16727) (reg!17056 (regTwo!33967 r!11177)))) b!6876532))

(assert (= (and b!6876333 ((_ is Concat!25572) (reg!17056 (regTwo!33967 r!11177)))) b!6876533))

(assert (= (and b!6876333 ((_ is Star!16727) (reg!17056 (regTwo!33967 r!11177)))) b!6876534))

(assert (= (and b!6876333 ((_ is Union!16727) (reg!17056 (regTwo!33967 r!11177)))) b!6876535))

(declare-fun b!6876538 () Bool)

(declare-fun e!4144508 () Bool)

(declare-fun tp!1889629 () Bool)

(assert (=> b!6876538 (= e!4144508 tp!1889629)))

(declare-fun b!6876539 () Bool)

(declare-fun tp!1889628 () Bool)

(declare-fun tp!1889627 () Bool)

(assert (=> b!6876539 (= e!4144508 (and tp!1889628 tp!1889627))))

(declare-fun b!6876537 () Bool)

(declare-fun tp!1889626 () Bool)

(declare-fun tp!1889630 () Bool)

(assert (=> b!6876537 (= e!4144508 (and tp!1889626 tp!1889630))))

(declare-fun b!6876536 () Bool)

(assert (=> b!6876536 (= e!4144508 tp_is_empty!42707)))

(assert (=> b!6876369 (= tp!1889538 e!4144508)))

(assert (= (and b!6876369 ((_ is ElementMatch!16727) (regOne!33967 (regOne!33966 r!11177)))) b!6876536))

(assert (= (and b!6876369 ((_ is Concat!25572) (regOne!33967 (regOne!33966 r!11177)))) b!6876537))

(assert (= (and b!6876369 ((_ is Star!16727) (regOne!33967 (regOne!33966 r!11177)))) b!6876538))

(assert (= (and b!6876369 ((_ is Union!16727) (regOne!33967 (regOne!33966 r!11177)))) b!6876539))

(declare-fun b!6876542 () Bool)

(declare-fun e!4144509 () Bool)

(declare-fun tp!1889634 () Bool)

(assert (=> b!6876542 (= e!4144509 tp!1889634)))

(declare-fun b!6876543 () Bool)

(declare-fun tp!1889633 () Bool)

(declare-fun tp!1889632 () Bool)

(assert (=> b!6876543 (= e!4144509 (and tp!1889633 tp!1889632))))

(declare-fun b!6876541 () Bool)

(declare-fun tp!1889631 () Bool)

(declare-fun tp!1889635 () Bool)

(assert (=> b!6876541 (= e!4144509 (and tp!1889631 tp!1889635))))

(declare-fun b!6876540 () Bool)

(assert (=> b!6876540 (= e!4144509 tp_is_empty!42707)))

(assert (=> b!6876369 (= tp!1889537 e!4144509)))

(assert (= (and b!6876369 ((_ is ElementMatch!16727) (regTwo!33967 (regOne!33966 r!11177)))) b!6876540))

(assert (= (and b!6876369 ((_ is Concat!25572) (regTwo!33967 (regOne!33966 r!11177)))) b!6876541))

(assert (= (and b!6876369 ((_ is Star!16727) (regTwo!33967 (regOne!33966 r!11177)))) b!6876542))

(assert (= (and b!6876369 ((_ is Union!16727) (regTwo!33967 (regOne!33966 r!11177)))) b!6876543))

(declare-fun b!6876545 () Bool)

(declare-fun e!4144511 () Bool)

(declare-fun tp!1889636 () Bool)

(assert (=> b!6876545 (= e!4144511 tp!1889636)))

(declare-fun b!6876544 () Bool)

(declare-fun tp!1889637 () Bool)

(declare-fun e!4144510 () Bool)

(assert (=> b!6876544 (= e!4144510 (and (inv!85064 (h!72790 (t!380209 (t!380209 zl!1520)))) e!4144511 tp!1889637))))

(assert (=> b!6876354 (= tp!1889523 e!4144510)))

(assert (= b!6876544 b!6876545))

(assert (= (and b!6876354 ((_ is Cons!66342) (t!380209 (t!380209 zl!1520)))) b!6876544))

(declare-fun m!7604516 () Bool)

(assert (=> b!6876544 m!7604516))

(declare-fun b!6876548 () Bool)

(declare-fun e!4144512 () Bool)

(declare-fun tp!1889641 () Bool)

(assert (=> b!6876548 (= e!4144512 tp!1889641)))

(declare-fun b!6876549 () Bool)

(declare-fun tp!1889640 () Bool)

(declare-fun tp!1889639 () Bool)

(assert (=> b!6876549 (= e!4144512 (and tp!1889640 tp!1889639))))

(declare-fun b!6876547 () Bool)

(declare-fun tp!1889638 () Bool)

(declare-fun tp!1889642 () Bool)

(assert (=> b!6876547 (= e!4144512 (and tp!1889638 tp!1889642))))

(declare-fun b!6876546 () Bool)

(assert (=> b!6876546 (= e!4144512 tp_is_empty!42707)))

(assert (=> b!6876334 (= tp!1889501 e!4144512)))

(assert (= (and b!6876334 ((_ is ElementMatch!16727) (regOne!33967 (regTwo!33967 r!11177)))) b!6876546))

(assert (= (and b!6876334 ((_ is Concat!25572) (regOne!33967 (regTwo!33967 r!11177)))) b!6876547))

(assert (= (and b!6876334 ((_ is Star!16727) (regOne!33967 (regTwo!33967 r!11177)))) b!6876548))

(assert (= (and b!6876334 ((_ is Union!16727) (regOne!33967 (regTwo!33967 r!11177)))) b!6876549))

(declare-fun b!6876552 () Bool)

(declare-fun e!4144513 () Bool)

(declare-fun tp!1889646 () Bool)

(assert (=> b!6876552 (= e!4144513 tp!1889646)))

(declare-fun b!6876553 () Bool)

(declare-fun tp!1889645 () Bool)

(declare-fun tp!1889644 () Bool)

(assert (=> b!6876553 (= e!4144513 (and tp!1889645 tp!1889644))))

(declare-fun b!6876551 () Bool)

(declare-fun tp!1889643 () Bool)

(declare-fun tp!1889647 () Bool)

(assert (=> b!6876551 (= e!4144513 (and tp!1889643 tp!1889647))))

(declare-fun b!6876550 () Bool)

(assert (=> b!6876550 (= e!4144513 tp_is_empty!42707)))

(assert (=> b!6876334 (= tp!1889500 e!4144513)))

(assert (= (and b!6876334 ((_ is ElementMatch!16727) (regTwo!33967 (regTwo!33967 r!11177)))) b!6876550))

(assert (= (and b!6876334 ((_ is Concat!25572) (regTwo!33967 (regTwo!33967 r!11177)))) b!6876551))

(assert (= (and b!6876334 ((_ is Star!16727) (regTwo!33967 (regTwo!33967 r!11177)))) b!6876552))

(assert (= (and b!6876334 ((_ is Union!16727) (regTwo!33967 (regTwo!33967 r!11177)))) b!6876553))

(declare-fun b!6876556 () Bool)

(declare-fun e!4144514 () Bool)

(declare-fun tp!1889651 () Bool)

(assert (=> b!6876556 (= e!4144514 tp!1889651)))

(declare-fun b!6876557 () Bool)

(declare-fun tp!1889650 () Bool)

(declare-fun tp!1889649 () Bool)

(assert (=> b!6876557 (= e!4144514 (and tp!1889650 tp!1889649))))

(declare-fun b!6876555 () Bool)

(declare-fun tp!1889648 () Bool)

(declare-fun tp!1889652 () Bool)

(assert (=> b!6876555 (= e!4144514 (and tp!1889648 tp!1889652))))

(declare-fun b!6876554 () Bool)

(assert (=> b!6876554 (= e!4144514 tp_is_empty!42707)))

(assert (=> b!6876304 (= tp!1889466 e!4144514)))

(assert (= (and b!6876304 ((_ is ElementMatch!16727) (h!72789 (exprs!6611 (h!72790 zl!1520))))) b!6876554))

(assert (= (and b!6876304 ((_ is Concat!25572) (h!72789 (exprs!6611 (h!72790 zl!1520))))) b!6876555))

(assert (= (and b!6876304 ((_ is Star!16727) (h!72789 (exprs!6611 (h!72790 zl!1520))))) b!6876556))

(assert (= (and b!6876304 ((_ is Union!16727) (h!72789 (exprs!6611 (h!72790 zl!1520))))) b!6876557))

(declare-fun b!6876558 () Bool)

(declare-fun e!4144515 () Bool)

(declare-fun tp!1889653 () Bool)

(declare-fun tp!1889654 () Bool)

(assert (=> b!6876558 (= e!4144515 (and tp!1889653 tp!1889654))))

(assert (=> b!6876304 (= tp!1889467 e!4144515)))

(assert (= (and b!6876304 ((_ is Cons!66341) (t!380208 (exprs!6611 (h!72790 zl!1520))))) b!6876558))

(declare-fun b!6876561 () Bool)

(declare-fun e!4144516 () Bool)

(declare-fun tp!1889658 () Bool)

(assert (=> b!6876561 (= e!4144516 tp!1889658)))

(declare-fun b!6876562 () Bool)

(declare-fun tp!1889657 () Bool)

(declare-fun tp!1889656 () Bool)

(assert (=> b!6876562 (= e!4144516 (and tp!1889657 tp!1889656))))

(declare-fun b!6876560 () Bool)

(declare-fun tp!1889655 () Bool)

(declare-fun tp!1889659 () Bool)

(assert (=> b!6876560 (= e!4144516 (and tp!1889655 tp!1889659))))

(declare-fun b!6876559 () Bool)

(assert (=> b!6876559 (= e!4144516 tp_is_empty!42707)))

(assert (=> b!6876327 (= tp!1889494 e!4144516)))

(assert (= (and b!6876327 ((_ is ElementMatch!16727) (regOne!33966 (regOne!33967 r!11177)))) b!6876559))

(assert (= (and b!6876327 ((_ is Concat!25572) (regOne!33966 (regOne!33967 r!11177)))) b!6876560))

(assert (= (and b!6876327 ((_ is Star!16727) (regOne!33966 (regOne!33967 r!11177)))) b!6876561))

(assert (= (and b!6876327 ((_ is Union!16727) (regOne!33966 (regOne!33967 r!11177)))) b!6876562))

(declare-fun b!6876565 () Bool)

(declare-fun e!4144517 () Bool)

(declare-fun tp!1889663 () Bool)

(assert (=> b!6876565 (= e!4144517 tp!1889663)))

(declare-fun b!6876566 () Bool)

(declare-fun tp!1889662 () Bool)

(declare-fun tp!1889661 () Bool)

(assert (=> b!6876566 (= e!4144517 (and tp!1889662 tp!1889661))))

(declare-fun b!6876564 () Bool)

(declare-fun tp!1889660 () Bool)

(declare-fun tp!1889664 () Bool)

(assert (=> b!6876564 (= e!4144517 (and tp!1889660 tp!1889664))))

(declare-fun b!6876563 () Bool)

(assert (=> b!6876563 (= e!4144517 tp_is_empty!42707)))

(assert (=> b!6876327 (= tp!1889498 e!4144517)))

(assert (= (and b!6876327 ((_ is ElementMatch!16727) (regTwo!33966 (regOne!33967 r!11177)))) b!6876563))

(assert (= (and b!6876327 ((_ is Concat!25572) (regTwo!33966 (regOne!33967 r!11177)))) b!6876564))

(assert (= (and b!6876327 ((_ is Star!16727) (regTwo!33966 (regOne!33967 r!11177)))) b!6876565))

(assert (= (and b!6876327 ((_ is Union!16727) (regTwo!33966 (regOne!33967 r!11177)))) b!6876566))

(declare-fun b!6876567 () Bool)

(declare-fun e!4144518 () Bool)

(declare-fun tp!1889665 () Bool)

(declare-fun tp!1889666 () Bool)

(assert (=> b!6876567 (= e!4144518 (and tp!1889665 tp!1889666))))

(assert (=> b!6876355 (= tp!1889522 e!4144518)))

(assert (= (and b!6876355 ((_ is Cons!66341) (exprs!6611 (h!72790 (t!380209 zl!1520))))) b!6876567))

(declare-fun b!6876570 () Bool)

(declare-fun e!4144519 () Bool)

(declare-fun tp!1889670 () Bool)

(assert (=> b!6876570 (= e!4144519 tp!1889670)))

(declare-fun b!6876571 () Bool)

(declare-fun tp!1889669 () Bool)

(declare-fun tp!1889668 () Bool)

(assert (=> b!6876571 (= e!4144519 (and tp!1889669 tp!1889668))))

(declare-fun b!6876569 () Bool)

(declare-fun tp!1889667 () Bool)

(declare-fun tp!1889671 () Bool)

(assert (=> b!6876569 (= e!4144519 (and tp!1889667 tp!1889671))))

(declare-fun b!6876568 () Bool)

(assert (=> b!6876568 (= e!4144519 tp_is_empty!42707)))

(assert (=> b!6876328 (= tp!1889497 e!4144519)))

(assert (= (and b!6876328 ((_ is ElementMatch!16727) (reg!17056 (regOne!33967 r!11177)))) b!6876568))

(assert (= (and b!6876328 ((_ is Concat!25572) (reg!17056 (regOne!33967 r!11177)))) b!6876569))

(assert (= (and b!6876328 ((_ is Star!16727) (reg!17056 (regOne!33967 r!11177)))) b!6876570))

(assert (= (and b!6876328 ((_ is Union!16727) (reg!17056 (regOne!33967 r!11177)))) b!6876571))

(declare-fun b!6876574 () Bool)

(declare-fun e!4144520 () Bool)

(declare-fun tp!1889675 () Bool)

(assert (=> b!6876574 (= e!4144520 tp!1889675)))

(declare-fun b!6876575 () Bool)

(declare-fun tp!1889674 () Bool)

(declare-fun tp!1889673 () Bool)

(assert (=> b!6876575 (= e!4144520 (and tp!1889674 tp!1889673))))

(declare-fun b!6876573 () Bool)

(declare-fun tp!1889672 () Bool)

(declare-fun tp!1889676 () Bool)

(assert (=> b!6876573 (= e!4144520 (and tp!1889672 tp!1889676))))

(declare-fun b!6876572 () Bool)

(assert (=> b!6876572 (= e!4144520 tp_is_empty!42707)))

(assert (=> b!6876357 (= tp!1889524 e!4144520)))

(assert (= (and b!6876357 ((_ is ElementMatch!16727) (regOne!33966 (reg!17056 r!11177)))) b!6876572))

(assert (= (and b!6876357 ((_ is Concat!25572) (regOne!33966 (reg!17056 r!11177)))) b!6876573))

(assert (= (and b!6876357 ((_ is Star!16727) (regOne!33966 (reg!17056 r!11177)))) b!6876574))

(assert (= (and b!6876357 ((_ is Union!16727) (regOne!33966 (reg!17056 r!11177)))) b!6876575))

(declare-fun b!6876578 () Bool)

(declare-fun e!4144521 () Bool)

(declare-fun tp!1889680 () Bool)

(assert (=> b!6876578 (= e!4144521 tp!1889680)))

(declare-fun b!6876579 () Bool)

(declare-fun tp!1889679 () Bool)

(declare-fun tp!1889678 () Bool)

(assert (=> b!6876579 (= e!4144521 (and tp!1889679 tp!1889678))))

(declare-fun b!6876577 () Bool)

(declare-fun tp!1889677 () Bool)

(declare-fun tp!1889681 () Bool)

(assert (=> b!6876577 (= e!4144521 (and tp!1889677 tp!1889681))))

(declare-fun b!6876576 () Bool)

(assert (=> b!6876576 (= e!4144521 tp_is_empty!42707)))

(assert (=> b!6876357 (= tp!1889528 e!4144521)))

(assert (= (and b!6876357 ((_ is ElementMatch!16727) (regTwo!33966 (reg!17056 r!11177)))) b!6876576))

(assert (= (and b!6876357 ((_ is Concat!25572) (regTwo!33966 (reg!17056 r!11177)))) b!6876577))

(assert (= (and b!6876357 ((_ is Star!16727) (regTwo!33966 (reg!17056 r!11177)))) b!6876578))

(assert (= (and b!6876357 ((_ is Union!16727) (regTwo!33966 (reg!17056 r!11177)))) b!6876579))

(declare-fun b!6876582 () Bool)

(declare-fun e!4144522 () Bool)

(declare-fun tp!1889685 () Bool)

(assert (=> b!6876582 (= e!4144522 tp!1889685)))

(declare-fun b!6876583 () Bool)

(declare-fun tp!1889684 () Bool)

(declare-fun tp!1889683 () Bool)

(assert (=> b!6876583 (= e!4144522 (and tp!1889684 tp!1889683))))

(declare-fun b!6876581 () Bool)

(declare-fun tp!1889682 () Bool)

(declare-fun tp!1889686 () Bool)

(assert (=> b!6876581 (= e!4144522 (and tp!1889682 tp!1889686))))

(declare-fun b!6876580 () Bool)

(assert (=> b!6876580 (= e!4144522 tp_is_empty!42707)))

(assert (=> b!6876329 (= tp!1889496 e!4144522)))

(assert (= (and b!6876329 ((_ is ElementMatch!16727) (regOne!33967 (regOne!33967 r!11177)))) b!6876580))

(assert (= (and b!6876329 ((_ is Concat!25572) (regOne!33967 (regOne!33967 r!11177)))) b!6876581))

(assert (= (and b!6876329 ((_ is Star!16727) (regOne!33967 (regOne!33967 r!11177)))) b!6876582))

(assert (= (and b!6876329 ((_ is Union!16727) (regOne!33967 (regOne!33967 r!11177)))) b!6876583))

(declare-fun b!6876596 () Bool)

(declare-fun e!4144529 () Bool)

(declare-fun tp!1889690 () Bool)

(assert (=> b!6876596 (= e!4144529 tp!1889690)))

(declare-fun b!6876597 () Bool)

(declare-fun tp!1889689 () Bool)

(declare-fun tp!1889688 () Bool)

(assert (=> b!6876597 (= e!4144529 (and tp!1889689 tp!1889688))))

(declare-fun b!6876595 () Bool)

(declare-fun tp!1889687 () Bool)

(declare-fun tp!1889691 () Bool)

(assert (=> b!6876595 (= e!4144529 (and tp!1889687 tp!1889691))))

(declare-fun b!6876594 () Bool)

(assert (=> b!6876594 (= e!4144529 tp_is_empty!42707)))

(assert (=> b!6876329 (= tp!1889495 e!4144529)))

(assert (= (and b!6876329 ((_ is ElementMatch!16727) (regTwo!33967 (regOne!33967 r!11177)))) b!6876594))

(assert (= (and b!6876329 ((_ is Concat!25572) (regTwo!33967 (regOne!33967 r!11177)))) b!6876595))

(assert (= (and b!6876329 ((_ is Star!16727) (regTwo!33967 (regOne!33967 r!11177)))) b!6876596))

(assert (= (and b!6876329 ((_ is Union!16727) (regTwo!33967 (regOne!33967 r!11177)))) b!6876597))

(declare-fun b_lambda!260229 () Bool)

(assert (= b_lambda!260219 (or d!2159353 b_lambda!260229)))

(declare-fun bs!1837849 () Bool)

(declare-fun d!2159405 () Bool)

(assert (= bs!1837849 (and d!2159405 d!2159353)))

(assert (=> bs!1837849 (= (dynLambda!26564 lambda!389292 (h!72789 lt!2459161)) (validRegex!8452 (h!72789 lt!2459161)))))

(declare-fun m!7604518 () Bool)

(assert (=> bs!1837849 m!7604518))

(assert (=> b!6876424 d!2159405))

(declare-fun b_lambda!260231 () Bool)

(assert (= b_lambda!260221 (or d!2159359 b_lambda!260231)))

(declare-fun bs!1837850 () Bool)

(declare-fun d!2159407 () Bool)

(assert (= bs!1837850 (and d!2159407 d!2159359)))

(assert (=> bs!1837850 (= (dynLambda!26564 lambda!389294 (h!72789 lt!2459164)) (validRegex!8452 (h!72789 lt!2459164)))))

(declare-fun m!7604520 () Bool)

(assert (=> bs!1837850 m!7604520))

(assert (=> b!6876432 d!2159407))

(declare-fun b_lambda!260233 () Bool)

(assert (= b_lambda!260223 (or d!2159365 b_lambda!260233)))

(declare-fun bs!1837851 () Bool)

(declare-fun d!2159409 () Bool)

(assert (= bs!1837851 (and d!2159409 d!2159365)))

(assert (=> bs!1837851 (= (dynLambda!26564 lambda!389300 (h!72789 (exprs!6611 (h!72790 zl!1520)))) (validRegex!8452 (h!72789 (exprs!6611 (h!72790 zl!1520)))))))

(declare-fun m!7604522 () Bool)

(assert (=> bs!1837851 m!7604522))

(assert (=> b!6876434 d!2159409))

(declare-fun b_lambda!260235 () Bool)

(assert (= b_lambda!260227 (or d!2159369 b_lambda!260235)))

(declare-fun bs!1837852 () Bool)

(declare-fun d!2159411 () Bool)

(assert (= bs!1837852 (and d!2159411 d!2159369)))

(assert (=> bs!1837852 (= (dynLambda!26565 lambda!389304 (h!72790 zl!1520)) (not (dynLambda!26565 lambda!389287 (h!72790 zl!1520))))))

(declare-fun b_lambda!260237 () Bool)

(assert (=> (not b_lambda!260237) (not bs!1837852)))

(declare-fun m!7604524 () Bool)

(assert (=> bs!1837852 m!7604524))

(assert (=> b!6876444 d!2159411))

(check-sat (not b!6876560) (not b!6876490) (not b!6876491) (not b!6876542) (not b!6876552) (not b!6876573) (not b!6876477) (not bs!1837851) (not bs!1837849) (not b!6876417) (not b!6876570) (not b!6876596) (not b!6876457) (not b!6876486) (not b!6876413) (not d!2159401) (not b!6876451) (not b!6876449) (not b!6876574) (not d!2159399) (not b!6876467) (not b!6876578) (not b!6876520) (not b!6876565) (not b!6876534) (not b!6876473) (not b!6876564) (not b!6876512) (not b!6876410) (not b!6876557) (not b!6876453) (not b!6876489) (not b!6876569) (not b!6876558) (not b!6876483) (not b!6876498) (not b!6876541) (not b!6876445) (not b!6876515) (not b!6876425) (not b!6876539) (not b!6876519) (not b!6876418) (not b!6876561) (not b_lambda!260235) (not b!6876556) (not b!6876469) (not b!6876595) (not b!6876478) (not b!6876583) (not b!6876487) (not b!6876533) (not b!6876470) (not b!6876566) (not b!6876543) (not b!6876474) (not b!6876581) (not b!6876517) (not b!6876553) (not b!6876544) (not b!6876537) (not b!6876567) (not b!6876479) (not b!6876577) (not b!6876597) (not b!6876435) (not b!6876411) (not d!2159377) (not b!6876494) (not b!6876447) (not b!6876571) (not b!6876493) (not b!6876433) (not b_lambda!260237) (not b!6876458) (not b!6876452) tp_is_empty!42707 (not b!6876431) (not b!6876465) (not b!6876549) (not b!6876482) (not b!6876497) (not b!6876575) (not b!6876455) (not b_lambda!260231) (not b!6876495) (not bs!1837850) (not b!6876409) (not b!6876485) (not b!6876499) (not b!6876538) (not d!2159403) (not b!6876551) (not b!6876579) (not b!6876481) (not b!6876521) (not b!6876547) (not b!6876471) (not b!6876548) (not b!6876461) (not b!6876513) (not b!6876555) (not b!6876562) (not b!6876545) (not b!6876466) (not b!6876475) (not b_lambda!260229) (not d!2159373) (not b!6876516) (not d!2159379) (not b!6876462) (not b!6876415) (not b!6876416) (not b!6876459) (not b!6876511) (not b!6876535) (not b!6876387) (not b!6876463) (not b_lambda!260233) (not b!6876582))
(check-sat)
(get-model)

(declare-fun b_lambda!260255 () Bool)

(assert (= b_lambda!260237 (or b!6876249 b_lambda!260255)))

(declare-fun bs!1837868 () Bool)

(declare-fun d!2159437 () Bool)

(assert (= bs!1837868 (and d!2159437 b!6876249)))

(assert (=> bs!1837868 (= (dynLambda!26565 lambda!389287 (h!72790 zl!1520)) (= (generalisedConcat!2308 (exprs!6611 (h!72790 zl!1520))) r!11177))))

(assert (=> bs!1837868 m!7604382))

(assert (=> bs!1837852 d!2159437))

(check-sat (not b!6876560) (not b!6876490) (not b!6876491) (not b!6876542) (not b!6876552) (not b!6876573) (not b!6876477) (not bs!1837851) (not bs!1837849) (not b!6876417) (not b!6876570) (not b!6876596) (not b!6876457) (not b!6876486) (not b!6876413) (not d!2159401) (not b!6876451) (not b!6876449) (not b!6876574) (not d!2159399) (not b!6876467) (not b!6876578) (not b!6876520) (not b!6876565) (not b!6876534) (not b_lambda!260255) (not b!6876473) (not b!6876564) (not b!6876512) (not b!6876410) (not b!6876557) (not b!6876453) (not b!6876489) (not b!6876569) (not b!6876558) (not b!6876483) (not b!6876498) (not b!6876541) (not b!6876445) (not b!6876515) (not b!6876425) (not b!6876539) (not b!6876519) (not b!6876418) (not b!6876561) (not b_lambda!260235) (not b!6876556) (not b!6876469) (not b!6876595) (not b!6876478) (not b!6876583) (not b!6876487) (not b!6876533) (not b!6876470) (not b!6876566) (not b!6876543) (not b!6876474) (not b!6876581) (not b!6876517) (not b!6876553) (not b!6876544) (not b!6876537) (not b!6876567) (not b!6876479) (not b!6876577) (not b!6876597) (not b!6876435) (not b!6876411) (not d!2159377) (not b!6876494) (not b!6876447) (not b!6876571) (not b!6876493) (not b!6876433) (not b!6876458) (not b!6876452) tp_is_empty!42707 (not b!6876431) (not b!6876465) (not b!6876549) (not b!6876482) (not b!6876497) (not b!6876575) (not b!6876455) (not b_lambda!260231) (not b!6876495) (not bs!1837850) (not b!6876409) (not b!6876485) (not b!6876499) (not b!6876538) (not d!2159403) (not b!6876551) (not b!6876579) (not bs!1837868) (not b!6876481) (not b!6876521) (not b!6876547) (not b!6876471) (not b!6876548) (not b!6876461) (not b!6876513) (not b!6876555) (not b!6876562) (not b!6876545) (not b!6876466) (not b!6876475) (not b_lambda!260229) (not d!2159373) (not b!6876516) (not d!2159379) (not b!6876462) (not b!6876415) (not b!6876416) (not b!6876459) (not b!6876511) (not b!6876535) (not b!6876387) (not b!6876463) (not b_lambda!260233) (not b!6876582))
(check-sat)
