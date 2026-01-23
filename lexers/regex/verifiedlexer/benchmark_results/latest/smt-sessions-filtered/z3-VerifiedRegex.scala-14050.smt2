; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741746 () Bool)

(assert start!741746)

(declare-fun b!7810216 () Bool)

(declare-fun e!4622719 () Bool)

(declare-fun tp!2301318 () Bool)

(declare-fun tp!2301319 () Bool)

(assert (=> b!7810216 (= e!4622719 (and tp!2301318 tp!2301319))))

(declare-fun b!7810217 () Bool)

(declare-fun e!4622721 () Bool)

(declare-datatypes ((C!42116 0))(
  ( (C!42117 (val!31498 Int)) )
))
(declare-datatypes ((Regex!20895 0))(
  ( (ElementMatch!20895 (c!1438182 C!42116)) (Concat!29740 (regOne!42302 Regex!20895) (regTwo!42302 Regex!20895)) (EmptyExpr!20895) (Star!20895 (reg!21224 Regex!20895)) (EmptyLang!20895) (Union!20895 (regOne!42303 Regex!20895) (regTwo!42303 Regex!20895)) )
))
(declare-fun r1!6206 () Regex!20895)

(declare-fun r2!6144 () Regex!20895)

(declare-fun validRegex!11309 (Regex!20895) Bool)

(assert (=> b!7810217 (= e!4622721 (not (validRegex!11309 (Union!20895 r1!6206 r2!6144))))))

(declare-fun b!7810218 () Bool)

(declare-fun tp!2301321 () Bool)

(declare-fun tp!2301312 () Bool)

(assert (=> b!7810218 (= e!4622719 (and tp!2301321 tp!2301312))))

(declare-fun b!7810219 () Bool)

(declare-fun e!4622720 () Bool)

(declare-fun tp!2301317 () Bool)

(declare-fun tp!2301313 () Bool)

(assert (=> b!7810219 (= e!4622720 (and tp!2301317 tp!2301313))))

(declare-fun b!7810220 () Bool)

(declare-fun tp_is_empty!52145 () Bool)

(assert (=> b!7810220 (= e!4622720 tp_is_empty!52145)))

(declare-fun res!3110266 () Bool)

(assert (=> start!741746 (=> (not res!3110266) (not e!4622721))))

(assert (=> start!741746 (= res!3110266 (validRegex!11309 r1!6206))))

(assert (=> start!741746 e!4622721))

(assert (=> start!741746 e!4622719))

(assert (=> start!741746 e!4622720))

(declare-fun b!7810221 () Bool)

(declare-fun tp!2301315 () Bool)

(declare-fun tp!2301314 () Bool)

(assert (=> b!7810221 (= e!4622720 (and tp!2301315 tp!2301314))))

(declare-fun b!7810222 () Bool)

(declare-fun tp!2301316 () Bool)

(assert (=> b!7810222 (= e!4622720 tp!2301316)))

(declare-fun b!7810223 () Bool)

(declare-fun tp!2301320 () Bool)

(assert (=> b!7810223 (= e!4622719 tp!2301320)))

(declare-fun b!7810224 () Bool)

(declare-fun res!3110265 () Bool)

(assert (=> b!7810224 (=> (not res!3110265) (not e!4622721))))

(assert (=> b!7810224 (= res!3110265 (validRegex!11309 r2!6144))))

(declare-fun b!7810225 () Bool)

(assert (=> b!7810225 (= e!4622719 tp_is_empty!52145)))

(assert (= (and start!741746 res!3110266) b!7810224))

(assert (= (and b!7810224 res!3110265) b!7810217))

(get-info :version)

(assert (= (and start!741746 ((_ is ElementMatch!20895) r1!6206)) b!7810225))

(assert (= (and start!741746 ((_ is Concat!29740) r1!6206)) b!7810216))

(assert (= (and start!741746 ((_ is Star!20895) r1!6206)) b!7810223))

(assert (= (and start!741746 ((_ is Union!20895) r1!6206)) b!7810218))

(assert (= (and start!741746 ((_ is ElementMatch!20895) r2!6144)) b!7810220))

(assert (= (and start!741746 ((_ is Concat!29740) r2!6144)) b!7810219))

(assert (= (and start!741746 ((_ is Star!20895) r2!6144)) b!7810222))

(assert (= (and start!741746 ((_ is Union!20895) r2!6144)) b!7810221))

(declare-fun m!8241728 () Bool)

(assert (=> b!7810217 m!8241728))

(declare-fun m!8241730 () Bool)

(assert (=> start!741746 m!8241730))

(declare-fun m!8241732 () Bool)

(assert (=> b!7810224 m!8241732))

(check-sat (not b!7810219) (not b!7810218) (not start!741746) (not b!7810221) tp_is_empty!52145 (not b!7810223) (not b!7810217) (not b!7810222) (not b!7810224) (not b!7810216))
(check-sat)
(get-model)

(declare-fun b!7810339 () Bool)

(declare-fun e!4622788 () Bool)

(declare-fun call!724487 () Bool)

(assert (=> b!7810339 (= e!4622788 call!724487)))

(declare-fun b!7810340 () Bool)

(declare-fun e!4622789 () Bool)

(declare-fun call!724486 () Bool)

(assert (=> b!7810340 (= e!4622789 call!724486)))

(declare-fun b!7810341 () Bool)

(declare-fun e!4622786 () Bool)

(assert (=> b!7810341 (= e!4622786 e!4622789)))

(declare-fun res!3110306 () Bool)

(assert (=> b!7810341 (=> (not res!3110306) (not e!4622789))))

(declare-fun call!724488 () Bool)

(assert (=> b!7810341 (= res!3110306 call!724488)))

(declare-fun c!1438197 () Bool)

(declare-fun c!1438198 () Bool)

(declare-fun bm!724481 () Bool)

(assert (=> bm!724481 (= call!724487 (validRegex!11309 (ite c!1438197 (reg!21224 r2!6144) (ite c!1438198 (regOne!42303 r2!6144) (regOne!42302 r2!6144)))))))

(declare-fun bm!724482 () Bool)

(assert (=> bm!724482 (= call!724486 (validRegex!11309 (ite c!1438198 (regTwo!42303 r2!6144) (regTwo!42302 r2!6144))))))

(declare-fun b!7810343 () Bool)

(declare-fun e!4622783 () Bool)

(assert (=> b!7810343 (= e!4622783 e!4622788)))

(declare-fun res!3110302 () Bool)

(declare-fun nullable!9279 (Regex!20895) Bool)

(assert (=> b!7810343 (= res!3110302 (not (nullable!9279 (reg!21224 r2!6144))))))

(assert (=> b!7810343 (=> (not res!3110302) (not e!4622788))))

(declare-fun bm!724483 () Bool)

(assert (=> bm!724483 (= call!724488 call!724487)))

(declare-fun b!7810344 () Bool)

(declare-fun e!4622785 () Bool)

(assert (=> b!7810344 (= e!4622785 e!4622783)))

(assert (=> b!7810344 (= c!1438197 ((_ is Star!20895) r2!6144))))

(declare-fun b!7810345 () Bool)

(declare-fun e!4622787 () Bool)

(assert (=> b!7810345 (= e!4622787 call!724486)))

(declare-fun b!7810342 () Bool)

(declare-fun res!3110305 () Bool)

(assert (=> b!7810342 (=> (not res!3110305) (not e!4622787))))

(assert (=> b!7810342 (= res!3110305 call!724488)))

(declare-fun e!4622784 () Bool)

(assert (=> b!7810342 (= e!4622784 e!4622787)))

(declare-fun d!2348713 () Bool)

(declare-fun res!3110303 () Bool)

(assert (=> d!2348713 (=> res!3110303 e!4622785)))

(assert (=> d!2348713 (= res!3110303 ((_ is ElementMatch!20895) r2!6144))))

(assert (=> d!2348713 (= (validRegex!11309 r2!6144) e!4622785)))

(declare-fun b!7810346 () Bool)

(declare-fun res!3110304 () Bool)

(assert (=> b!7810346 (=> res!3110304 e!4622786)))

(assert (=> b!7810346 (= res!3110304 (not ((_ is Concat!29740) r2!6144)))))

(assert (=> b!7810346 (= e!4622784 e!4622786)))

(declare-fun b!7810347 () Bool)

(assert (=> b!7810347 (= e!4622783 e!4622784)))

(assert (=> b!7810347 (= c!1438198 ((_ is Union!20895) r2!6144))))

(assert (= (and d!2348713 (not res!3110303)) b!7810344))

(assert (= (and b!7810344 c!1438197) b!7810343))

(assert (= (and b!7810344 (not c!1438197)) b!7810347))

(assert (= (and b!7810343 res!3110302) b!7810339))

(assert (= (and b!7810347 c!1438198) b!7810342))

(assert (= (and b!7810347 (not c!1438198)) b!7810346))

(assert (= (and b!7810342 res!3110305) b!7810345))

(assert (= (and b!7810346 (not res!3110304)) b!7810341))

(assert (= (and b!7810341 res!3110306) b!7810340))

(assert (= (or b!7810342 b!7810341) bm!724483))

(assert (= (or b!7810345 b!7810340) bm!724482))

(assert (= (or b!7810339 bm!724483) bm!724481))

(declare-fun m!8241752 () Bool)

(assert (=> bm!724481 m!8241752))

(declare-fun m!8241754 () Bool)

(assert (=> bm!724482 m!8241754))

(declare-fun m!8241756 () Bool)

(assert (=> b!7810343 m!8241756))

(assert (=> b!7810224 d!2348713))

(declare-fun b!7810348 () Bool)

(declare-fun e!4622795 () Bool)

(declare-fun call!724490 () Bool)

(assert (=> b!7810348 (= e!4622795 call!724490)))

(declare-fun b!7810349 () Bool)

(declare-fun e!4622796 () Bool)

(declare-fun call!724489 () Bool)

(assert (=> b!7810349 (= e!4622796 call!724489)))

(declare-fun b!7810350 () Bool)

(declare-fun e!4622793 () Bool)

(assert (=> b!7810350 (= e!4622793 e!4622796)))

(declare-fun res!3110311 () Bool)

(assert (=> b!7810350 (=> (not res!3110311) (not e!4622796))))

(declare-fun call!724491 () Bool)

(assert (=> b!7810350 (= res!3110311 call!724491)))

(declare-fun bm!724484 () Bool)

(declare-fun c!1438200 () Bool)

(declare-fun c!1438199 () Bool)

(assert (=> bm!724484 (= call!724490 (validRegex!11309 (ite c!1438199 (reg!21224 (Union!20895 r1!6206 r2!6144)) (ite c!1438200 (regOne!42303 (Union!20895 r1!6206 r2!6144)) (regOne!42302 (Union!20895 r1!6206 r2!6144))))))))

(declare-fun bm!724485 () Bool)

(assert (=> bm!724485 (= call!724489 (validRegex!11309 (ite c!1438200 (regTwo!42303 (Union!20895 r1!6206 r2!6144)) (regTwo!42302 (Union!20895 r1!6206 r2!6144)))))))

(declare-fun b!7810352 () Bool)

(declare-fun e!4622790 () Bool)

(assert (=> b!7810352 (= e!4622790 e!4622795)))

(declare-fun res!3110307 () Bool)

(assert (=> b!7810352 (= res!3110307 (not (nullable!9279 (reg!21224 (Union!20895 r1!6206 r2!6144)))))))

(assert (=> b!7810352 (=> (not res!3110307) (not e!4622795))))

(declare-fun bm!724486 () Bool)

(assert (=> bm!724486 (= call!724491 call!724490)))

(declare-fun b!7810353 () Bool)

(declare-fun e!4622792 () Bool)

(assert (=> b!7810353 (= e!4622792 e!4622790)))

(assert (=> b!7810353 (= c!1438199 ((_ is Star!20895) (Union!20895 r1!6206 r2!6144)))))

(declare-fun b!7810354 () Bool)

(declare-fun e!4622794 () Bool)

(assert (=> b!7810354 (= e!4622794 call!724489)))

(declare-fun b!7810351 () Bool)

(declare-fun res!3110310 () Bool)

(assert (=> b!7810351 (=> (not res!3110310) (not e!4622794))))

(assert (=> b!7810351 (= res!3110310 call!724491)))

(declare-fun e!4622791 () Bool)

(assert (=> b!7810351 (= e!4622791 e!4622794)))

(declare-fun d!2348719 () Bool)

(declare-fun res!3110308 () Bool)

(assert (=> d!2348719 (=> res!3110308 e!4622792)))

(assert (=> d!2348719 (= res!3110308 ((_ is ElementMatch!20895) (Union!20895 r1!6206 r2!6144)))))

(assert (=> d!2348719 (= (validRegex!11309 (Union!20895 r1!6206 r2!6144)) e!4622792)))

(declare-fun b!7810355 () Bool)

(declare-fun res!3110309 () Bool)

(assert (=> b!7810355 (=> res!3110309 e!4622793)))

(assert (=> b!7810355 (= res!3110309 (not ((_ is Concat!29740) (Union!20895 r1!6206 r2!6144))))))

(assert (=> b!7810355 (= e!4622791 e!4622793)))

(declare-fun b!7810356 () Bool)

(assert (=> b!7810356 (= e!4622790 e!4622791)))

(assert (=> b!7810356 (= c!1438200 ((_ is Union!20895) (Union!20895 r1!6206 r2!6144)))))

(assert (= (and d!2348719 (not res!3110308)) b!7810353))

(assert (= (and b!7810353 c!1438199) b!7810352))

(assert (= (and b!7810353 (not c!1438199)) b!7810356))

(assert (= (and b!7810352 res!3110307) b!7810348))

(assert (= (and b!7810356 c!1438200) b!7810351))

(assert (= (and b!7810356 (not c!1438200)) b!7810355))

(assert (= (and b!7810351 res!3110310) b!7810354))

(assert (= (and b!7810355 (not res!3110309)) b!7810350))

(assert (= (and b!7810350 res!3110311) b!7810349))

(assert (= (or b!7810351 b!7810350) bm!724486))

(assert (= (or b!7810354 b!7810349) bm!724485))

(assert (= (or b!7810348 bm!724486) bm!724484))

(declare-fun m!8241758 () Bool)

(assert (=> bm!724484 m!8241758))

(declare-fun m!8241760 () Bool)

(assert (=> bm!724485 m!8241760))

(declare-fun m!8241762 () Bool)

(assert (=> b!7810352 m!8241762))

(assert (=> b!7810217 d!2348719))

(declare-fun b!7810357 () Bool)

(declare-fun e!4622802 () Bool)

(declare-fun call!724493 () Bool)

(assert (=> b!7810357 (= e!4622802 call!724493)))

(declare-fun b!7810358 () Bool)

(declare-fun e!4622803 () Bool)

(declare-fun call!724492 () Bool)

(assert (=> b!7810358 (= e!4622803 call!724492)))

(declare-fun b!7810359 () Bool)

(declare-fun e!4622800 () Bool)

(assert (=> b!7810359 (= e!4622800 e!4622803)))

(declare-fun res!3110316 () Bool)

(assert (=> b!7810359 (=> (not res!3110316) (not e!4622803))))

(declare-fun call!724494 () Bool)

(assert (=> b!7810359 (= res!3110316 call!724494)))

(declare-fun c!1438202 () Bool)

(declare-fun bm!724487 () Bool)

(declare-fun c!1438201 () Bool)

(assert (=> bm!724487 (= call!724493 (validRegex!11309 (ite c!1438201 (reg!21224 r1!6206) (ite c!1438202 (regOne!42303 r1!6206) (regOne!42302 r1!6206)))))))

(declare-fun bm!724488 () Bool)

(assert (=> bm!724488 (= call!724492 (validRegex!11309 (ite c!1438202 (regTwo!42303 r1!6206) (regTwo!42302 r1!6206))))))

(declare-fun b!7810361 () Bool)

(declare-fun e!4622797 () Bool)

(assert (=> b!7810361 (= e!4622797 e!4622802)))

(declare-fun res!3110312 () Bool)

(assert (=> b!7810361 (= res!3110312 (not (nullable!9279 (reg!21224 r1!6206))))))

(assert (=> b!7810361 (=> (not res!3110312) (not e!4622802))))

(declare-fun bm!724489 () Bool)

(assert (=> bm!724489 (= call!724494 call!724493)))

(declare-fun b!7810362 () Bool)

(declare-fun e!4622799 () Bool)

(assert (=> b!7810362 (= e!4622799 e!4622797)))

(assert (=> b!7810362 (= c!1438201 ((_ is Star!20895) r1!6206))))

(declare-fun b!7810363 () Bool)

(declare-fun e!4622801 () Bool)

(assert (=> b!7810363 (= e!4622801 call!724492)))

(declare-fun b!7810360 () Bool)

(declare-fun res!3110315 () Bool)

(assert (=> b!7810360 (=> (not res!3110315) (not e!4622801))))

(assert (=> b!7810360 (= res!3110315 call!724494)))

(declare-fun e!4622798 () Bool)

(assert (=> b!7810360 (= e!4622798 e!4622801)))

(declare-fun d!2348721 () Bool)

(declare-fun res!3110313 () Bool)

(assert (=> d!2348721 (=> res!3110313 e!4622799)))

(assert (=> d!2348721 (= res!3110313 ((_ is ElementMatch!20895) r1!6206))))

(assert (=> d!2348721 (= (validRegex!11309 r1!6206) e!4622799)))

(declare-fun b!7810364 () Bool)

(declare-fun res!3110314 () Bool)

(assert (=> b!7810364 (=> res!3110314 e!4622800)))

(assert (=> b!7810364 (= res!3110314 (not ((_ is Concat!29740) r1!6206)))))

(assert (=> b!7810364 (= e!4622798 e!4622800)))

(declare-fun b!7810365 () Bool)

(assert (=> b!7810365 (= e!4622797 e!4622798)))

(assert (=> b!7810365 (= c!1438202 ((_ is Union!20895) r1!6206))))

(assert (= (and d!2348721 (not res!3110313)) b!7810362))

(assert (= (and b!7810362 c!1438201) b!7810361))

(assert (= (and b!7810362 (not c!1438201)) b!7810365))

(assert (= (and b!7810361 res!3110312) b!7810357))

(assert (= (and b!7810365 c!1438202) b!7810360))

(assert (= (and b!7810365 (not c!1438202)) b!7810364))

(assert (= (and b!7810360 res!3110315) b!7810363))

(assert (= (and b!7810364 (not res!3110314)) b!7810359))

(assert (= (and b!7810359 res!3110316) b!7810358))

(assert (= (or b!7810360 b!7810359) bm!724489))

(assert (= (or b!7810363 b!7810358) bm!724488))

(assert (= (or b!7810357 bm!724489) bm!724487))

(declare-fun m!8241764 () Bool)

(assert (=> bm!724487 m!8241764))

(declare-fun m!8241766 () Bool)

(assert (=> bm!724488 m!8241766))

(declare-fun m!8241768 () Bool)

(assert (=> b!7810361 m!8241768))

(assert (=> start!741746 d!2348721))

(declare-fun b!7810376 () Bool)

(declare-fun e!4622806 () Bool)

(assert (=> b!7810376 (= e!4622806 tp_is_empty!52145)))

(declare-fun b!7810378 () Bool)

(declare-fun tp!2301393 () Bool)

(assert (=> b!7810378 (= e!4622806 tp!2301393)))

(declare-fun b!7810377 () Bool)

(declare-fun tp!2301395 () Bool)

(declare-fun tp!2301394 () Bool)

(assert (=> b!7810377 (= e!4622806 (and tp!2301395 tp!2301394))))

(assert (=> b!7810218 (= tp!2301321 e!4622806)))

(declare-fun b!7810379 () Bool)

(declare-fun tp!2301396 () Bool)

(declare-fun tp!2301392 () Bool)

(assert (=> b!7810379 (= e!4622806 (and tp!2301396 tp!2301392))))

(assert (= (and b!7810218 ((_ is ElementMatch!20895) (regOne!42303 r1!6206))) b!7810376))

(assert (= (and b!7810218 ((_ is Concat!29740) (regOne!42303 r1!6206))) b!7810377))

(assert (= (and b!7810218 ((_ is Star!20895) (regOne!42303 r1!6206))) b!7810378))

(assert (= (and b!7810218 ((_ is Union!20895) (regOne!42303 r1!6206))) b!7810379))

(declare-fun b!7810380 () Bool)

(declare-fun e!4622807 () Bool)

(assert (=> b!7810380 (= e!4622807 tp_is_empty!52145)))

(declare-fun b!7810382 () Bool)

(declare-fun tp!2301398 () Bool)

(assert (=> b!7810382 (= e!4622807 tp!2301398)))

(declare-fun b!7810381 () Bool)

(declare-fun tp!2301400 () Bool)

(declare-fun tp!2301399 () Bool)

(assert (=> b!7810381 (= e!4622807 (and tp!2301400 tp!2301399))))

(assert (=> b!7810218 (= tp!2301312 e!4622807)))

(declare-fun b!7810383 () Bool)

(declare-fun tp!2301401 () Bool)

(declare-fun tp!2301397 () Bool)

(assert (=> b!7810383 (= e!4622807 (and tp!2301401 tp!2301397))))

(assert (= (and b!7810218 ((_ is ElementMatch!20895) (regTwo!42303 r1!6206))) b!7810380))

(assert (= (and b!7810218 ((_ is Concat!29740) (regTwo!42303 r1!6206))) b!7810381))

(assert (= (and b!7810218 ((_ is Star!20895) (regTwo!42303 r1!6206))) b!7810382))

(assert (= (and b!7810218 ((_ is Union!20895) (regTwo!42303 r1!6206))) b!7810383))

(declare-fun b!7810384 () Bool)

(declare-fun e!4622808 () Bool)

(assert (=> b!7810384 (= e!4622808 tp_is_empty!52145)))

(declare-fun b!7810386 () Bool)

(declare-fun tp!2301403 () Bool)

(assert (=> b!7810386 (= e!4622808 tp!2301403)))

(declare-fun b!7810385 () Bool)

(declare-fun tp!2301405 () Bool)

(declare-fun tp!2301404 () Bool)

(assert (=> b!7810385 (= e!4622808 (and tp!2301405 tp!2301404))))

(assert (=> b!7810219 (= tp!2301317 e!4622808)))

(declare-fun b!7810387 () Bool)

(declare-fun tp!2301406 () Bool)

(declare-fun tp!2301402 () Bool)

(assert (=> b!7810387 (= e!4622808 (and tp!2301406 tp!2301402))))

(assert (= (and b!7810219 ((_ is ElementMatch!20895) (regOne!42302 r2!6144))) b!7810384))

(assert (= (and b!7810219 ((_ is Concat!29740) (regOne!42302 r2!6144))) b!7810385))

(assert (= (and b!7810219 ((_ is Star!20895) (regOne!42302 r2!6144))) b!7810386))

(assert (= (and b!7810219 ((_ is Union!20895) (regOne!42302 r2!6144))) b!7810387))

(declare-fun b!7810388 () Bool)

(declare-fun e!4622809 () Bool)

(assert (=> b!7810388 (= e!4622809 tp_is_empty!52145)))

(declare-fun b!7810390 () Bool)

(declare-fun tp!2301408 () Bool)

(assert (=> b!7810390 (= e!4622809 tp!2301408)))

(declare-fun b!7810389 () Bool)

(declare-fun tp!2301410 () Bool)

(declare-fun tp!2301409 () Bool)

(assert (=> b!7810389 (= e!4622809 (and tp!2301410 tp!2301409))))

(assert (=> b!7810219 (= tp!2301313 e!4622809)))

(declare-fun b!7810391 () Bool)

(declare-fun tp!2301411 () Bool)

(declare-fun tp!2301407 () Bool)

(assert (=> b!7810391 (= e!4622809 (and tp!2301411 tp!2301407))))

(assert (= (and b!7810219 ((_ is ElementMatch!20895) (regTwo!42302 r2!6144))) b!7810388))

(assert (= (and b!7810219 ((_ is Concat!29740) (regTwo!42302 r2!6144))) b!7810389))

(assert (= (and b!7810219 ((_ is Star!20895) (regTwo!42302 r2!6144))) b!7810390))

(assert (= (and b!7810219 ((_ is Union!20895) (regTwo!42302 r2!6144))) b!7810391))

(declare-fun b!7810392 () Bool)

(declare-fun e!4622810 () Bool)

(assert (=> b!7810392 (= e!4622810 tp_is_empty!52145)))

(declare-fun b!7810394 () Bool)

(declare-fun tp!2301413 () Bool)

(assert (=> b!7810394 (= e!4622810 tp!2301413)))

(declare-fun b!7810393 () Bool)

(declare-fun tp!2301415 () Bool)

(declare-fun tp!2301414 () Bool)

(assert (=> b!7810393 (= e!4622810 (and tp!2301415 tp!2301414))))

(assert (=> b!7810221 (= tp!2301315 e!4622810)))

(declare-fun b!7810395 () Bool)

(declare-fun tp!2301416 () Bool)

(declare-fun tp!2301412 () Bool)

(assert (=> b!7810395 (= e!4622810 (and tp!2301416 tp!2301412))))

(assert (= (and b!7810221 ((_ is ElementMatch!20895) (regOne!42303 r2!6144))) b!7810392))

(assert (= (and b!7810221 ((_ is Concat!29740) (regOne!42303 r2!6144))) b!7810393))

(assert (= (and b!7810221 ((_ is Star!20895) (regOne!42303 r2!6144))) b!7810394))

(assert (= (and b!7810221 ((_ is Union!20895) (regOne!42303 r2!6144))) b!7810395))

(declare-fun b!7810396 () Bool)

(declare-fun e!4622811 () Bool)

(assert (=> b!7810396 (= e!4622811 tp_is_empty!52145)))

(declare-fun b!7810398 () Bool)

(declare-fun tp!2301418 () Bool)

(assert (=> b!7810398 (= e!4622811 tp!2301418)))

(declare-fun b!7810397 () Bool)

(declare-fun tp!2301420 () Bool)

(declare-fun tp!2301419 () Bool)

(assert (=> b!7810397 (= e!4622811 (and tp!2301420 tp!2301419))))

(assert (=> b!7810221 (= tp!2301314 e!4622811)))

(declare-fun b!7810399 () Bool)

(declare-fun tp!2301421 () Bool)

(declare-fun tp!2301417 () Bool)

(assert (=> b!7810399 (= e!4622811 (and tp!2301421 tp!2301417))))

(assert (= (and b!7810221 ((_ is ElementMatch!20895) (regTwo!42303 r2!6144))) b!7810396))

(assert (= (and b!7810221 ((_ is Concat!29740) (regTwo!42303 r2!6144))) b!7810397))

(assert (= (and b!7810221 ((_ is Star!20895) (regTwo!42303 r2!6144))) b!7810398))

(assert (= (and b!7810221 ((_ is Union!20895) (regTwo!42303 r2!6144))) b!7810399))

(declare-fun b!7810400 () Bool)

(declare-fun e!4622812 () Bool)

(assert (=> b!7810400 (= e!4622812 tp_is_empty!52145)))

(declare-fun b!7810402 () Bool)

(declare-fun tp!2301423 () Bool)

(assert (=> b!7810402 (= e!4622812 tp!2301423)))

(declare-fun b!7810401 () Bool)

(declare-fun tp!2301425 () Bool)

(declare-fun tp!2301424 () Bool)

(assert (=> b!7810401 (= e!4622812 (and tp!2301425 tp!2301424))))

(assert (=> b!7810216 (= tp!2301318 e!4622812)))

(declare-fun b!7810403 () Bool)

(declare-fun tp!2301426 () Bool)

(declare-fun tp!2301422 () Bool)

(assert (=> b!7810403 (= e!4622812 (and tp!2301426 tp!2301422))))

(assert (= (and b!7810216 ((_ is ElementMatch!20895) (regOne!42302 r1!6206))) b!7810400))

(assert (= (and b!7810216 ((_ is Concat!29740) (regOne!42302 r1!6206))) b!7810401))

(assert (= (and b!7810216 ((_ is Star!20895) (regOne!42302 r1!6206))) b!7810402))

(assert (= (and b!7810216 ((_ is Union!20895) (regOne!42302 r1!6206))) b!7810403))

(declare-fun b!7810404 () Bool)

(declare-fun e!4622813 () Bool)

(assert (=> b!7810404 (= e!4622813 tp_is_empty!52145)))

(declare-fun b!7810406 () Bool)

(declare-fun tp!2301428 () Bool)

(assert (=> b!7810406 (= e!4622813 tp!2301428)))

(declare-fun b!7810405 () Bool)

(declare-fun tp!2301430 () Bool)

(declare-fun tp!2301429 () Bool)

(assert (=> b!7810405 (= e!4622813 (and tp!2301430 tp!2301429))))

(assert (=> b!7810216 (= tp!2301319 e!4622813)))

(declare-fun b!7810407 () Bool)

(declare-fun tp!2301431 () Bool)

(declare-fun tp!2301427 () Bool)

(assert (=> b!7810407 (= e!4622813 (and tp!2301431 tp!2301427))))

(assert (= (and b!7810216 ((_ is ElementMatch!20895) (regTwo!42302 r1!6206))) b!7810404))

(assert (= (and b!7810216 ((_ is Concat!29740) (regTwo!42302 r1!6206))) b!7810405))

(assert (= (and b!7810216 ((_ is Star!20895) (regTwo!42302 r1!6206))) b!7810406))

(assert (= (and b!7810216 ((_ is Union!20895) (regTwo!42302 r1!6206))) b!7810407))

(declare-fun b!7810408 () Bool)

(declare-fun e!4622814 () Bool)

(assert (=> b!7810408 (= e!4622814 tp_is_empty!52145)))

(declare-fun b!7810410 () Bool)

(declare-fun tp!2301433 () Bool)

(assert (=> b!7810410 (= e!4622814 tp!2301433)))

(declare-fun b!7810409 () Bool)

(declare-fun tp!2301435 () Bool)

(declare-fun tp!2301434 () Bool)

(assert (=> b!7810409 (= e!4622814 (and tp!2301435 tp!2301434))))

(assert (=> b!7810222 (= tp!2301316 e!4622814)))

(declare-fun b!7810411 () Bool)

(declare-fun tp!2301436 () Bool)

(declare-fun tp!2301432 () Bool)

(assert (=> b!7810411 (= e!4622814 (and tp!2301436 tp!2301432))))

(assert (= (and b!7810222 ((_ is ElementMatch!20895) (reg!21224 r2!6144))) b!7810408))

(assert (= (and b!7810222 ((_ is Concat!29740) (reg!21224 r2!6144))) b!7810409))

(assert (= (and b!7810222 ((_ is Star!20895) (reg!21224 r2!6144))) b!7810410))

(assert (= (and b!7810222 ((_ is Union!20895) (reg!21224 r2!6144))) b!7810411))

(declare-fun b!7810412 () Bool)

(declare-fun e!4622815 () Bool)

(assert (=> b!7810412 (= e!4622815 tp_is_empty!52145)))

(declare-fun b!7810414 () Bool)

(declare-fun tp!2301438 () Bool)

(assert (=> b!7810414 (= e!4622815 tp!2301438)))

(declare-fun b!7810413 () Bool)

(declare-fun tp!2301440 () Bool)

(declare-fun tp!2301439 () Bool)

(assert (=> b!7810413 (= e!4622815 (and tp!2301440 tp!2301439))))

(assert (=> b!7810223 (= tp!2301320 e!4622815)))

(declare-fun b!7810415 () Bool)

(declare-fun tp!2301441 () Bool)

(declare-fun tp!2301437 () Bool)

(assert (=> b!7810415 (= e!4622815 (and tp!2301441 tp!2301437))))

(assert (= (and b!7810223 ((_ is ElementMatch!20895) (reg!21224 r1!6206))) b!7810412))

(assert (= (and b!7810223 ((_ is Concat!29740) (reg!21224 r1!6206))) b!7810413))

(assert (= (and b!7810223 ((_ is Star!20895) (reg!21224 r1!6206))) b!7810414))

(assert (= (and b!7810223 ((_ is Union!20895) (reg!21224 r1!6206))) b!7810415))

(check-sat (not b!7810352) (not b!7810394) (not bm!724488) (not b!7810407) (not b!7810390) (not b!7810399) (not b!7810389) (not b!7810415) (not b!7810381) (not b!7810403) (not bm!724485) (not b!7810405) (not b!7810387) (not b!7810393) (not b!7810409) (not b!7810383) (not b!7810377) (not b!7810386) (not b!7810397) (not b!7810402) (not b!7810379) (not b!7810406) tp_is_empty!52145 (not bm!724484) (not b!7810385) (not b!7810411) (not b!7810414) (not b!7810395) (not b!7810391) (not b!7810401) (not b!7810382) (not bm!724482) (not b!7810378) (not bm!724487) (not b!7810343) (not b!7810398) (not b!7810361) (not b!7810410) (not b!7810413) (not bm!724481))
(check-sat)
