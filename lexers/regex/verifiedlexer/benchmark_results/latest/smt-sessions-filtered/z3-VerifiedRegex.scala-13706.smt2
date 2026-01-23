; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733276 () Bool)

(assert start!733276)

(declare-fun res!3046294 () Bool)

(declare-fun e!4525334 () Bool)

(assert (=> start!733276 (=> (not res!3046294) (not e!4525334))))

(declare-datatypes ((C!40740 0))(
  ( (C!40741 (val!30810 Int)) )
))
(declare-datatypes ((Regex!20207 0))(
  ( (ElementMatch!20207 (c!1402982 C!40740)) (Concat!29052 (regOne!40926 Regex!20207) (regTwo!40926 Regex!20207)) (EmptyExpr!20207) (Star!20207 (reg!20536 Regex!20207)) (EmptyLang!20207) (Union!20207 (regOne!40927 Regex!20207) (regTwo!40927 Regex!20207)) )
))
(declare-fun r!19218 () Regex!20207)

(declare-fun validRegex!10629 (Regex!20207) Bool)

(assert (=> start!733276 (= res!3046294 (validRegex!10629 r!19218))))

(assert (=> start!733276 e!4525334))

(declare-fun e!4525335 () Bool)

(assert (=> start!733276 e!4525335))

(declare-fun b!7608286 () Bool)

(declare-fun tp!2219566 () Bool)

(assert (=> b!7608286 (= e!4525335 tp!2219566)))

(declare-fun b!7608287 () Bool)

(assert (=> b!7608287 (= e!4525334 (not (validRegex!10629 (regOne!40927 r!19218))))))

(declare-fun b!7608288 () Bool)

(declare-fun res!3046293 () Bool)

(assert (=> b!7608288 (=> (not res!3046293) (not e!4525334))))

(declare-fun nullable!8828 (Regex!20207) Bool)

(assert (=> b!7608288 (= res!3046293 (nullable!8828 r!19218))))

(declare-fun b!7608289 () Bool)

(declare-fun tp!2219567 () Bool)

(declare-fun tp!2219568 () Bool)

(assert (=> b!7608289 (= e!4525335 (and tp!2219567 tp!2219568))))

(declare-fun b!7608290 () Bool)

(declare-fun res!3046296 () Bool)

(assert (=> b!7608290 (=> (not res!3046296) (not e!4525334))))

(assert (=> b!7608290 (= res!3046296 (nullable!8828 (regOne!40927 r!19218)))))

(declare-fun b!7608291 () Bool)

(declare-fun tp!2219569 () Bool)

(declare-fun tp!2219565 () Bool)

(assert (=> b!7608291 (= e!4525335 (and tp!2219569 tp!2219565))))

(declare-fun b!7608292 () Bool)

(declare-fun res!3046295 () Bool)

(assert (=> b!7608292 (=> (not res!3046295) (not e!4525334))))

(get-info :version)

(assert (=> b!7608292 (= res!3046295 (and (not ((_ is ElementMatch!20207) r!19218)) (not ((_ is Star!20207) r!19218)) ((_ is Union!20207) r!19218)))))

(declare-fun b!7608293 () Bool)

(declare-fun tp_is_empty!50769 () Bool)

(assert (=> b!7608293 (= e!4525335 tp_is_empty!50769)))

(assert (= (and start!733276 res!3046294) b!7608288))

(assert (= (and b!7608288 res!3046293) b!7608292))

(assert (= (and b!7608292 res!3046295) b!7608290))

(assert (= (and b!7608290 res!3046296) b!7608287))

(assert (= (and start!733276 ((_ is ElementMatch!20207) r!19218)) b!7608293))

(assert (= (and start!733276 ((_ is Concat!29052) r!19218)) b!7608291))

(assert (= (and start!733276 ((_ is Star!20207) r!19218)) b!7608286))

(assert (= (and start!733276 ((_ is Union!20207) r!19218)) b!7608289))

(declare-fun m!8147350 () Bool)

(assert (=> start!733276 m!8147350))

(declare-fun m!8147352 () Bool)

(assert (=> b!7608287 m!8147352))

(declare-fun m!8147354 () Bool)

(assert (=> b!7608288 m!8147354))

(declare-fun m!8147356 () Bool)

(assert (=> b!7608290 m!8147356))

(check-sat tp_is_empty!50769 (not b!7608288) (not b!7608291) (not b!7608290) (not b!7608286) (not b!7608287) (not b!7608289) (not start!733276))
(check-sat)
(get-model)

(declare-fun d!2322001 () Bool)

(declare-fun nullableFct!3511 (Regex!20207) Bool)

(assert (=> d!2322001 (= (nullable!8828 (regOne!40927 r!19218)) (nullableFct!3511 (regOne!40927 r!19218)))))

(declare-fun bs!1942787 () Bool)

(assert (= bs!1942787 d!2322001))

(declare-fun m!8147358 () Bool)

(assert (=> bs!1942787 m!8147358))

(assert (=> b!7608290 d!2322001))

(declare-fun b!7608339 () Bool)

(declare-fun e!4525372 () Bool)

(declare-fun e!4525377 () Bool)

(assert (=> b!7608339 (= e!4525372 e!4525377)))

(declare-fun c!1402994 () Bool)

(assert (=> b!7608339 (= c!1402994 ((_ is Union!20207) (regOne!40927 r!19218)))))

(declare-fun d!2322003 () Bool)

(declare-fun res!3046325 () Bool)

(declare-fun e!4525375 () Bool)

(assert (=> d!2322003 (=> res!3046325 e!4525375)))

(assert (=> d!2322003 (= res!3046325 ((_ is ElementMatch!20207) (regOne!40927 r!19218)))))

(assert (=> d!2322003 (= (validRegex!10629 (regOne!40927 r!19218)) e!4525375)))

(declare-fun bm!698583 () Bool)

(declare-fun call!698588 () Bool)

(assert (=> bm!698583 (= call!698588 (validRegex!10629 (ite c!1402994 (regTwo!40927 (regOne!40927 r!19218)) (regTwo!40926 (regOne!40927 r!19218)))))))

(declare-fun b!7608340 () Bool)

(declare-fun e!4525374 () Bool)

(declare-fun call!698589 () Bool)

(assert (=> b!7608340 (= e!4525374 call!698589)))

(declare-fun b!7608341 () Bool)

(assert (=> b!7608341 (= e!4525375 e!4525372)))

(declare-fun c!1402993 () Bool)

(assert (=> b!7608341 (= c!1402993 ((_ is Star!20207) (regOne!40927 r!19218)))))

(declare-fun b!7608342 () Bool)

(declare-fun e!4525376 () Bool)

(declare-fun e!4525373 () Bool)

(assert (=> b!7608342 (= e!4525376 e!4525373)))

(declare-fun res!3046323 () Bool)

(assert (=> b!7608342 (=> (not res!3046323) (not e!4525373))))

(declare-fun call!698590 () Bool)

(assert (=> b!7608342 (= res!3046323 call!698590)))

(declare-fun b!7608343 () Bool)

(assert (=> b!7608343 (= e!4525373 call!698588)))

(declare-fun b!7608344 () Bool)

(declare-fun res!3046326 () Bool)

(declare-fun e!4525371 () Bool)

(assert (=> b!7608344 (=> (not res!3046326) (not e!4525371))))

(assert (=> b!7608344 (= res!3046326 call!698590)))

(assert (=> b!7608344 (= e!4525377 e!4525371)))

(declare-fun b!7608345 () Bool)

(assert (=> b!7608345 (= e!4525371 call!698588)))

(declare-fun bm!698584 () Bool)

(assert (=> bm!698584 (= call!698590 call!698589)))

(declare-fun b!7608346 () Bool)

(declare-fun res!3046322 () Bool)

(assert (=> b!7608346 (=> res!3046322 e!4525376)))

(assert (=> b!7608346 (= res!3046322 (not ((_ is Concat!29052) (regOne!40927 r!19218))))))

(assert (=> b!7608346 (= e!4525377 e!4525376)))

(declare-fun bm!698585 () Bool)

(assert (=> bm!698585 (= call!698589 (validRegex!10629 (ite c!1402993 (reg!20536 (regOne!40927 r!19218)) (ite c!1402994 (regOne!40927 (regOne!40927 r!19218)) (regOne!40926 (regOne!40927 r!19218))))))))

(declare-fun b!7608347 () Bool)

(assert (=> b!7608347 (= e!4525372 e!4525374)))

(declare-fun res!3046324 () Bool)

(assert (=> b!7608347 (= res!3046324 (not (nullable!8828 (reg!20536 (regOne!40927 r!19218)))))))

(assert (=> b!7608347 (=> (not res!3046324) (not e!4525374))))

(assert (= (and d!2322003 (not res!3046325)) b!7608341))

(assert (= (and b!7608341 c!1402993) b!7608347))

(assert (= (and b!7608341 (not c!1402993)) b!7608339))

(assert (= (and b!7608347 res!3046324) b!7608340))

(assert (= (and b!7608339 c!1402994) b!7608344))

(assert (= (and b!7608339 (not c!1402994)) b!7608346))

(assert (= (and b!7608344 res!3046326) b!7608345))

(assert (= (and b!7608346 (not res!3046322)) b!7608342))

(assert (= (and b!7608342 res!3046323) b!7608343))

(assert (= (or b!7608344 b!7608342) bm!698584))

(assert (= (or b!7608345 b!7608343) bm!698583))

(assert (= (or b!7608340 bm!698584) bm!698585))

(declare-fun m!8147370 () Bool)

(assert (=> bm!698583 m!8147370))

(declare-fun m!8147372 () Bool)

(assert (=> bm!698585 m!8147372))

(declare-fun m!8147374 () Bool)

(assert (=> b!7608347 m!8147374))

(assert (=> b!7608287 d!2322003))

(declare-fun b!7608357 () Bool)

(declare-fun e!4525386 () Bool)

(declare-fun e!4525391 () Bool)

(assert (=> b!7608357 (= e!4525386 e!4525391)))

(declare-fun c!1402998 () Bool)

(assert (=> b!7608357 (= c!1402998 ((_ is Union!20207) r!19218))))

(declare-fun d!2322011 () Bool)

(declare-fun res!3046335 () Bool)

(declare-fun e!4525389 () Bool)

(assert (=> d!2322011 (=> res!3046335 e!4525389)))

(assert (=> d!2322011 (= res!3046335 ((_ is ElementMatch!20207) r!19218))))

(assert (=> d!2322011 (= (validRegex!10629 r!19218) e!4525389)))

(declare-fun bm!698589 () Bool)

(declare-fun call!698594 () Bool)

(assert (=> bm!698589 (= call!698594 (validRegex!10629 (ite c!1402998 (regTwo!40927 r!19218) (regTwo!40926 r!19218))))))

(declare-fun b!7608358 () Bool)

(declare-fun e!4525388 () Bool)

(declare-fun call!698595 () Bool)

(assert (=> b!7608358 (= e!4525388 call!698595)))

(declare-fun b!7608359 () Bool)

(assert (=> b!7608359 (= e!4525389 e!4525386)))

(declare-fun c!1402997 () Bool)

(assert (=> b!7608359 (= c!1402997 ((_ is Star!20207) r!19218))))

(declare-fun b!7608360 () Bool)

(declare-fun e!4525390 () Bool)

(declare-fun e!4525387 () Bool)

(assert (=> b!7608360 (= e!4525390 e!4525387)))

(declare-fun res!3046333 () Bool)

(assert (=> b!7608360 (=> (not res!3046333) (not e!4525387))))

(declare-fun call!698596 () Bool)

(assert (=> b!7608360 (= res!3046333 call!698596)))

(declare-fun b!7608361 () Bool)

(assert (=> b!7608361 (= e!4525387 call!698594)))

(declare-fun b!7608362 () Bool)

(declare-fun res!3046336 () Bool)

(declare-fun e!4525385 () Bool)

(assert (=> b!7608362 (=> (not res!3046336) (not e!4525385))))

(assert (=> b!7608362 (= res!3046336 call!698596)))

(assert (=> b!7608362 (= e!4525391 e!4525385)))

(declare-fun b!7608363 () Bool)

(assert (=> b!7608363 (= e!4525385 call!698594)))

(declare-fun bm!698590 () Bool)

(assert (=> bm!698590 (= call!698596 call!698595)))

(declare-fun b!7608364 () Bool)

(declare-fun res!3046332 () Bool)

(assert (=> b!7608364 (=> res!3046332 e!4525390)))

(assert (=> b!7608364 (= res!3046332 (not ((_ is Concat!29052) r!19218)))))

(assert (=> b!7608364 (= e!4525391 e!4525390)))

(declare-fun bm!698591 () Bool)

(assert (=> bm!698591 (= call!698595 (validRegex!10629 (ite c!1402997 (reg!20536 r!19218) (ite c!1402998 (regOne!40927 r!19218) (regOne!40926 r!19218)))))))

(declare-fun b!7608365 () Bool)

(assert (=> b!7608365 (= e!4525386 e!4525388)))

(declare-fun res!3046334 () Bool)

(assert (=> b!7608365 (= res!3046334 (not (nullable!8828 (reg!20536 r!19218))))))

(assert (=> b!7608365 (=> (not res!3046334) (not e!4525388))))

(assert (= (and d!2322011 (not res!3046335)) b!7608359))

(assert (= (and b!7608359 c!1402997) b!7608365))

(assert (= (and b!7608359 (not c!1402997)) b!7608357))

(assert (= (and b!7608365 res!3046334) b!7608358))

(assert (= (and b!7608357 c!1402998) b!7608362))

(assert (= (and b!7608357 (not c!1402998)) b!7608364))

(assert (= (and b!7608362 res!3046336) b!7608363))

(assert (= (and b!7608364 (not res!3046332)) b!7608360))

(assert (= (and b!7608360 res!3046333) b!7608361))

(assert (= (or b!7608362 b!7608360) bm!698590))

(assert (= (or b!7608363 b!7608361) bm!698589))

(assert (= (or b!7608358 bm!698590) bm!698591))

(declare-fun m!8147382 () Bool)

(assert (=> bm!698589 m!8147382))

(declare-fun m!8147384 () Bool)

(assert (=> bm!698591 m!8147384))

(declare-fun m!8147386 () Bool)

(assert (=> b!7608365 m!8147386))

(assert (=> start!733276 d!2322011))

(declare-fun d!2322013 () Bool)

(assert (=> d!2322013 (= (nullable!8828 r!19218) (nullableFct!3511 r!19218))))

(declare-fun bs!1942790 () Bool)

(assert (= bs!1942790 d!2322013))

(declare-fun m!8147388 () Bool)

(assert (=> bs!1942790 m!8147388))

(assert (=> b!7608288 d!2322013))

(declare-fun b!7608391 () Bool)

(declare-fun e!4525397 () Bool)

(declare-fun tp!2219598 () Bool)

(declare-fun tp!2219595 () Bool)

(assert (=> b!7608391 (= e!4525397 (and tp!2219598 tp!2219595))))

(assert (=> b!7608289 (= tp!2219567 e!4525397)))

(declare-fun b!7608390 () Bool)

(assert (=> b!7608390 (= e!4525397 tp_is_empty!50769)))

(declare-fun b!7608392 () Bool)

(declare-fun tp!2219599 () Bool)

(assert (=> b!7608392 (= e!4525397 tp!2219599)))

(declare-fun b!7608393 () Bool)

(declare-fun tp!2219597 () Bool)

(declare-fun tp!2219596 () Bool)

(assert (=> b!7608393 (= e!4525397 (and tp!2219597 tp!2219596))))

(assert (= (and b!7608289 ((_ is ElementMatch!20207) (regOne!40927 r!19218))) b!7608390))

(assert (= (and b!7608289 ((_ is Concat!29052) (regOne!40927 r!19218))) b!7608391))

(assert (= (and b!7608289 ((_ is Star!20207) (regOne!40927 r!19218))) b!7608392))

(assert (= (and b!7608289 ((_ is Union!20207) (regOne!40927 r!19218))) b!7608393))

(declare-fun b!7608399 () Bool)

(declare-fun e!4525399 () Bool)

(declare-fun tp!2219608 () Bool)

(declare-fun tp!2219605 () Bool)

(assert (=> b!7608399 (= e!4525399 (and tp!2219608 tp!2219605))))

(assert (=> b!7608289 (= tp!2219568 e!4525399)))

(declare-fun b!7608398 () Bool)

(assert (=> b!7608398 (= e!4525399 tp_is_empty!50769)))

(declare-fun b!7608400 () Bool)

(declare-fun tp!2219609 () Bool)

(assert (=> b!7608400 (= e!4525399 tp!2219609)))

(declare-fun b!7608401 () Bool)

(declare-fun tp!2219607 () Bool)

(declare-fun tp!2219606 () Bool)

(assert (=> b!7608401 (= e!4525399 (and tp!2219607 tp!2219606))))

(assert (= (and b!7608289 ((_ is ElementMatch!20207) (regTwo!40927 r!19218))) b!7608398))

(assert (= (and b!7608289 ((_ is Concat!29052) (regTwo!40927 r!19218))) b!7608399))

(assert (= (and b!7608289 ((_ is Star!20207) (regTwo!40927 r!19218))) b!7608400))

(assert (= (and b!7608289 ((_ is Union!20207) (regTwo!40927 r!19218))) b!7608401))

(declare-fun b!7608407 () Bool)

(declare-fun e!4525401 () Bool)

(declare-fun tp!2219618 () Bool)

(declare-fun tp!2219615 () Bool)

(assert (=> b!7608407 (= e!4525401 (and tp!2219618 tp!2219615))))

(assert (=> b!7608291 (= tp!2219569 e!4525401)))

(declare-fun b!7608406 () Bool)

(assert (=> b!7608406 (= e!4525401 tp_is_empty!50769)))

(declare-fun b!7608408 () Bool)

(declare-fun tp!2219619 () Bool)

(assert (=> b!7608408 (= e!4525401 tp!2219619)))

(declare-fun b!7608409 () Bool)

(declare-fun tp!2219617 () Bool)

(declare-fun tp!2219616 () Bool)

(assert (=> b!7608409 (= e!4525401 (and tp!2219617 tp!2219616))))

(assert (= (and b!7608291 ((_ is ElementMatch!20207) (regOne!40926 r!19218))) b!7608406))

(assert (= (and b!7608291 ((_ is Concat!29052) (regOne!40926 r!19218))) b!7608407))

(assert (= (and b!7608291 ((_ is Star!20207) (regOne!40926 r!19218))) b!7608408))

(assert (= (and b!7608291 ((_ is Union!20207) (regOne!40926 r!19218))) b!7608409))

(declare-fun b!7608415 () Bool)

(declare-fun e!4525403 () Bool)

(declare-fun tp!2219628 () Bool)

(declare-fun tp!2219625 () Bool)

(assert (=> b!7608415 (= e!4525403 (and tp!2219628 tp!2219625))))

(assert (=> b!7608291 (= tp!2219565 e!4525403)))

(declare-fun b!7608414 () Bool)

(assert (=> b!7608414 (= e!4525403 tp_is_empty!50769)))

(declare-fun b!7608416 () Bool)

(declare-fun tp!2219629 () Bool)

(assert (=> b!7608416 (= e!4525403 tp!2219629)))

(declare-fun b!7608417 () Bool)

(declare-fun tp!2219627 () Bool)

(declare-fun tp!2219626 () Bool)

(assert (=> b!7608417 (= e!4525403 (and tp!2219627 tp!2219626))))

(assert (= (and b!7608291 ((_ is ElementMatch!20207) (regTwo!40926 r!19218))) b!7608414))

(assert (= (and b!7608291 ((_ is Concat!29052) (regTwo!40926 r!19218))) b!7608415))

(assert (= (and b!7608291 ((_ is Star!20207) (regTwo!40926 r!19218))) b!7608416))

(assert (= (and b!7608291 ((_ is Union!20207) (regTwo!40926 r!19218))) b!7608417))

(declare-fun b!7608423 () Bool)

(declare-fun e!4525405 () Bool)

(declare-fun tp!2219638 () Bool)

(declare-fun tp!2219635 () Bool)

(assert (=> b!7608423 (= e!4525405 (and tp!2219638 tp!2219635))))

(assert (=> b!7608286 (= tp!2219566 e!4525405)))

(declare-fun b!7608422 () Bool)

(assert (=> b!7608422 (= e!4525405 tp_is_empty!50769)))

(declare-fun b!7608424 () Bool)

(declare-fun tp!2219639 () Bool)

(assert (=> b!7608424 (= e!4525405 tp!2219639)))

(declare-fun b!7608425 () Bool)

(declare-fun tp!2219637 () Bool)

(declare-fun tp!2219636 () Bool)

(assert (=> b!7608425 (= e!4525405 (and tp!2219637 tp!2219636))))

(assert (= (and b!7608286 ((_ is ElementMatch!20207) (reg!20536 r!19218))) b!7608422))

(assert (= (and b!7608286 ((_ is Concat!29052) (reg!20536 r!19218))) b!7608423))

(assert (= (and b!7608286 ((_ is Star!20207) (reg!20536 r!19218))) b!7608424))

(assert (= (and b!7608286 ((_ is Union!20207) (reg!20536 r!19218))) b!7608425))

(check-sat (not d!2322001) (not d!2322013) (not b!7608393) tp_is_empty!50769 (not bm!698583) (not b!7608425) (not bm!698589) (not b!7608399) (not b!7608423) (not b!7608416) (not b!7608408) (not b!7608392) (not b!7608415) (not b!7608417) (not b!7608400) (not b!7608365) (not b!7608424) (not b!7608347) (not b!7608409) (not bm!698591) (not b!7608401) (not b!7608407) (not b!7608391) (not bm!698585))
(check-sat)
