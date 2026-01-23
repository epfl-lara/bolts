; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740130 () Bool)

(assert start!740130)

(declare-fun b!7772307 () Bool)

(declare-fun e!4605024 () Bool)

(declare-fun tp_is_empty!51881 () Bool)

(declare-fun tp!2283348 () Bool)

(assert (=> b!7772307 (= e!4605024 (and tp_is_empty!51881 tp!2283348))))

(declare-datatypes ((C!41852 0))(
  ( (C!41853 (val!31366 Int)) )
))
(declare-datatypes ((List!73604 0))(
  ( (Nil!73480) (Cons!73480 (h!79928 C!41852) (t!388339 List!73604)) )
))
(declare-fun s!14904 () List!73604)

(declare-datatypes ((Regex!20763 0))(
  ( (ElementMatch!20763 (c!1432536 C!41852)) (Concat!29608 (regOne!42038 Regex!20763) (regTwo!42038 Regex!20763)) (EmptyExpr!20763) (Star!20763 (reg!21092 Regex!20763)) (EmptyLang!20763) (Union!20763 (regOne!42039 Regex!20763) (regTwo!42039 Regex!20763)) )
))
(declare-fun r!25924 () Regex!20763)

(declare-fun b!7772308 () Bool)

(declare-fun lt!2671640 () Regex!20763)

(declare-fun e!4605025 () Bool)

(declare-fun matchR!10225 (Regex!20763 List!73604) Bool)

(assert (=> b!7772308 (= e!4605025 (not (matchR!10225 (Concat!29608 r!25924 lt!2671640) s!14904)))))

(declare-fun b!7772309 () Bool)

(declare-fun e!4605023 () Bool)

(declare-fun tp!2283344 () Bool)

(declare-fun tp!2283346 () Bool)

(assert (=> b!7772309 (= e!4605023 (and tp!2283344 tp!2283346))))

(declare-fun b!7772310 () Bool)

(declare-fun tp!2283345 () Bool)

(assert (=> b!7772310 (= e!4605023 tp!2283345)))

(declare-fun b!7772311 () Bool)

(declare-fun res!3098212 () Bool)

(assert (=> b!7772311 (=> (not res!3098212) (not e!4605025))))

(assert (=> b!7772311 (= res!3098212 (matchR!10225 lt!2671640 s!14904))))

(declare-fun b!7772312 () Bool)

(declare-fun tp!2283347 () Bool)

(declare-fun tp!2283349 () Bool)

(assert (=> b!7772312 (= e!4605023 (and tp!2283347 tp!2283349))))

(declare-fun b!7772313 () Bool)

(declare-fun res!3098214 () Bool)

(assert (=> b!7772313 (=> (not res!3098214) (not e!4605025))))

(get-info :version)

(assert (=> b!7772313 (= res!3098214 (not ((_ is Cons!73480) s!14904)))))

(declare-fun b!7772314 () Bool)

(assert (=> b!7772314 (= e!4605023 tp_is_empty!51881)))

(declare-fun b!7772315 () Bool)

(declare-fun res!3098211 () Bool)

(assert (=> b!7772315 (=> (not res!3098211) (not e!4605025))))

(declare-fun isEmpty!42155 (List!73604) Bool)

(assert (=> b!7772315 (= res!3098211 (not (isEmpty!42155 s!14904)))))

(declare-fun res!3098213 () Bool)

(assert (=> start!740130 (=> (not res!3098213) (not e!4605025))))

(declare-fun validRegex!11177 (Regex!20763) Bool)

(assert (=> start!740130 (= res!3098213 (validRegex!11177 lt!2671640))))

(assert (=> start!740130 (= lt!2671640 (Star!20763 r!25924))))

(assert (=> start!740130 e!4605025))

(assert (=> start!740130 e!4605023))

(assert (=> start!740130 e!4605024))

(assert (= (and start!740130 res!3098213) b!7772311))

(assert (= (and b!7772311 res!3098212) b!7772313))

(assert (= (and b!7772313 res!3098214) b!7772315))

(assert (= (and b!7772315 res!3098211) b!7772308))

(assert (= (and start!740130 ((_ is ElementMatch!20763) r!25924)) b!7772314))

(assert (= (and start!740130 ((_ is Concat!29608) r!25924)) b!7772312))

(assert (= (and start!740130 ((_ is Star!20763) r!25924)) b!7772310))

(assert (= (and start!740130 ((_ is Union!20763) r!25924)) b!7772309))

(assert (= (and start!740130 ((_ is Cons!73480) s!14904)) b!7772307))

(declare-fun m!8225626 () Bool)

(assert (=> b!7772308 m!8225626))

(declare-fun m!8225628 () Bool)

(assert (=> b!7772311 m!8225628))

(declare-fun m!8225630 () Bool)

(assert (=> b!7772315 m!8225630))

(declare-fun m!8225632 () Bool)

(assert (=> start!740130 m!8225632))

(check-sat (not b!7772311) (not b!7772309) (not b!7772315) (not b!7772307) (not start!740130) (not b!7772312) (not b!7772308) tp_is_empty!51881 (not b!7772310))
(check-sat)
(get-model)

(declare-fun b!7772334 () Bool)

(declare-fun e!4605045 () Bool)

(declare-fun call!720363 () Bool)

(assert (=> b!7772334 (= e!4605045 call!720363)))

(declare-fun b!7772335 () Bool)

(declare-fun e!4605042 () Bool)

(declare-fun call!720364 () Bool)

(assert (=> b!7772335 (= e!4605042 call!720364)))

(declare-fun b!7772336 () Bool)

(declare-fun res!3098229 () Bool)

(assert (=> b!7772336 (=> (not res!3098229) (not e!4605045))))

(declare-fun call!720365 () Bool)

(assert (=> b!7772336 (= res!3098229 call!720365)))

(declare-fun e!4605046 () Bool)

(assert (=> b!7772336 (= e!4605046 e!4605045)))

(declare-fun b!7772337 () Bool)

(declare-fun e!4605041 () Bool)

(assert (=> b!7772337 (= e!4605041 e!4605046)))

(declare-fun c!1432542 () Bool)

(assert (=> b!7772337 (= c!1432542 ((_ is Union!20763) lt!2671640))))

(declare-fun b!7772338 () Bool)

(declare-fun e!4605043 () Bool)

(assert (=> b!7772338 (= e!4605043 e!4605041)))

(declare-fun c!1432541 () Bool)

(assert (=> b!7772338 (= c!1432541 ((_ is Star!20763) lt!2671640))))

(declare-fun b!7772339 () Bool)

(assert (=> b!7772339 (= e!4605041 e!4605042)))

(declare-fun res!3098226 () Bool)

(declare-fun nullable!9152 (Regex!20763) Bool)

(assert (=> b!7772339 (= res!3098226 (not (nullable!9152 (reg!21092 lt!2671640))))))

(assert (=> b!7772339 (=> (not res!3098226) (not e!4605042))))

(declare-fun b!7772340 () Bool)

(declare-fun res!3098225 () Bool)

(declare-fun e!4605044 () Bool)

(assert (=> b!7772340 (=> res!3098225 e!4605044)))

(assert (=> b!7772340 (= res!3098225 (not ((_ is Concat!29608) lt!2671640)))))

(assert (=> b!7772340 (= e!4605046 e!4605044)))

(declare-fun d!2344613 () Bool)

(declare-fun res!3098228 () Bool)

(assert (=> d!2344613 (=> res!3098228 e!4605043)))

(assert (=> d!2344613 (= res!3098228 ((_ is ElementMatch!20763) lt!2671640))))

(assert (=> d!2344613 (= (validRegex!11177 lt!2671640) e!4605043)))

(declare-fun bm!720358 () Bool)

(assert (=> bm!720358 (= call!720365 call!720364)))

(declare-fun b!7772341 () Bool)

(declare-fun e!4605040 () Bool)

(assert (=> b!7772341 (= e!4605040 call!720365)))

(declare-fun b!7772342 () Bool)

(assert (=> b!7772342 (= e!4605044 e!4605040)))

(declare-fun res!3098227 () Bool)

(assert (=> b!7772342 (=> (not res!3098227) (not e!4605040))))

(assert (=> b!7772342 (= res!3098227 call!720363)))

(declare-fun bm!720359 () Bool)

(assert (=> bm!720359 (= call!720363 (validRegex!11177 (ite c!1432542 (regTwo!42039 lt!2671640) (regOne!42038 lt!2671640))))))

(declare-fun bm!720360 () Bool)

(assert (=> bm!720360 (= call!720364 (validRegex!11177 (ite c!1432541 (reg!21092 lt!2671640) (ite c!1432542 (regOne!42039 lt!2671640) (regTwo!42038 lt!2671640)))))))

(assert (= (and d!2344613 (not res!3098228)) b!7772338))

(assert (= (and b!7772338 c!1432541) b!7772339))

(assert (= (and b!7772338 (not c!1432541)) b!7772337))

(assert (= (and b!7772339 res!3098226) b!7772335))

(assert (= (and b!7772337 c!1432542) b!7772336))

(assert (= (and b!7772337 (not c!1432542)) b!7772340))

(assert (= (and b!7772336 res!3098229) b!7772334))

(assert (= (and b!7772340 (not res!3098225)) b!7772342))

(assert (= (and b!7772342 res!3098227) b!7772341))

(assert (= (or b!7772334 b!7772342) bm!720359))

(assert (= (or b!7772336 b!7772341) bm!720358))

(assert (= (or b!7772335 bm!720358) bm!720360))

(declare-fun m!8225634 () Bool)

(assert (=> b!7772339 m!8225634))

(declare-fun m!8225636 () Bool)

(assert (=> bm!720359 m!8225636))

(declare-fun m!8225638 () Bool)

(assert (=> bm!720360 m!8225638))

(assert (=> start!740130 d!2344613))

(declare-fun b!7772400 () Bool)

(declare-fun e!4605078 () Bool)

(declare-fun e!4605079 () Bool)

(assert (=> b!7772400 (= e!4605078 e!4605079)))

(declare-fun res!3098262 () Bool)

(assert (=> b!7772400 (=> (not res!3098262) (not e!4605079))))

(declare-fun lt!2671645 () Bool)

(assert (=> b!7772400 (= res!3098262 (not lt!2671645))))

(declare-fun b!7772401 () Bool)

(declare-fun e!4605076 () Bool)

(assert (=> b!7772401 (= e!4605076 (nullable!9152 (Concat!29608 r!25924 lt!2671640)))))

(declare-fun b!7772402 () Bool)

(declare-fun e!4605075 () Bool)

(assert (=> b!7772402 (= e!4605075 (not lt!2671645))))

(declare-fun b!7772403 () Bool)

(declare-fun e!4605080 () Bool)

(declare-fun call!720368 () Bool)

(assert (=> b!7772403 (= e!4605080 (= lt!2671645 call!720368))))

(declare-fun b!7772404 () Bool)

(declare-fun derivativeStep!6107 (Regex!20763 C!41852) Regex!20763)

(declare-fun head!15889 (List!73604) C!41852)

(declare-fun tail!15430 (List!73604) List!73604)

(assert (=> b!7772404 (= e!4605076 (matchR!10225 (derivativeStep!6107 (Concat!29608 r!25924 lt!2671640) (head!15889 s!14904)) (tail!15430 s!14904)))))

(declare-fun b!7772405 () Bool)

(declare-fun e!4605077 () Bool)

(assert (=> b!7772405 (= e!4605077 (= (head!15889 s!14904) (c!1432536 (Concat!29608 r!25924 lt!2671640))))))

(declare-fun b!7772406 () Bool)

(declare-fun res!3098267 () Bool)

(assert (=> b!7772406 (=> res!3098267 e!4605078)))

(assert (=> b!7772406 (= res!3098267 e!4605077)))

(declare-fun res!3098263 () Bool)

(assert (=> b!7772406 (=> (not res!3098263) (not e!4605077))))

(assert (=> b!7772406 (= res!3098263 lt!2671645)))

(declare-fun b!7772407 () Bool)

(declare-fun res!3098269 () Bool)

(declare-fun e!4605081 () Bool)

(assert (=> b!7772407 (=> res!3098269 e!4605081)))

(assert (=> b!7772407 (= res!3098269 (not (isEmpty!42155 (tail!15430 s!14904))))))

(declare-fun bm!720363 () Bool)

(assert (=> bm!720363 (= call!720368 (isEmpty!42155 s!14904))))

(declare-fun b!7772399 () Bool)

(declare-fun res!3098265 () Bool)

(assert (=> b!7772399 (=> (not res!3098265) (not e!4605077))))

(assert (=> b!7772399 (= res!3098265 (isEmpty!42155 (tail!15430 s!14904)))))

(declare-fun d!2344617 () Bool)

(assert (=> d!2344617 e!4605080))

(declare-fun c!1432555 () Bool)

(assert (=> d!2344617 (= c!1432555 ((_ is EmptyExpr!20763) (Concat!29608 r!25924 lt!2671640)))))

(assert (=> d!2344617 (= lt!2671645 e!4605076)))

(declare-fun c!1432556 () Bool)

(assert (=> d!2344617 (= c!1432556 (isEmpty!42155 s!14904))))

(assert (=> d!2344617 (validRegex!11177 (Concat!29608 r!25924 lt!2671640))))

(assert (=> d!2344617 (= (matchR!10225 (Concat!29608 r!25924 lt!2671640) s!14904) lt!2671645)))

(declare-fun b!7772408 () Bool)

(assert (=> b!7772408 (= e!4605079 e!4605081)))

(declare-fun res!3098268 () Bool)

(assert (=> b!7772408 (=> res!3098268 e!4605081)))

(assert (=> b!7772408 (= res!3098268 call!720368)))

(declare-fun b!7772409 () Bool)

(assert (=> b!7772409 (= e!4605080 e!4605075)))

(declare-fun c!1432557 () Bool)

(assert (=> b!7772409 (= c!1432557 ((_ is EmptyLang!20763) (Concat!29608 r!25924 lt!2671640)))))

(declare-fun b!7772410 () Bool)

(declare-fun res!3098266 () Bool)

(assert (=> b!7772410 (=> res!3098266 e!4605078)))

(assert (=> b!7772410 (= res!3098266 (not ((_ is ElementMatch!20763) (Concat!29608 r!25924 lt!2671640))))))

(assert (=> b!7772410 (= e!4605075 e!4605078)))

(declare-fun b!7772411 () Bool)

(declare-fun res!3098264 () Bool)

(assert (=> b!7772411 (=> (not res!3098264) (not e!4605077))))

(assert (=> b!7772411 (= res!3098264 (not call!720368))))

(declare-fun b!7772412 () Bool)

(assert (=> b!7772412 (= e!4605081 (not (= (head!15889 s!14904) (c!1432536 (Concat!29608 r!25924 lt!2671640)))))))

(assert (= (and d!2344617 c!1432556) b!7772401))

(assert (= (and d!2344617 (not c!1432556)) b!7772404))

(assert (= (and d!2344617 c!1432555) b!7772403))

(assert (= (and d!2344617 (not c!1432555)) b!7772409))

(assert (= (and b!7772409 c!1432557) b!7772402))

(assert (= (and b!7772409 (not c!1432557)) b!7772410))

(assert (= (and b!7772410 (not res!3098266)) b!7772406))

(assert (= (and b!7772406 res!3098263) b!7772411))

(assert (= (and b!7772411 res!3098264) b!7772399))

(assert (= (and b!7772399 res!3098265) b!7772405))

(assert (= (and b!7772406 (not res!3098267)) b!7772400))

(assert (= (and b!7772400 res!3098262) b!7772408))

(assert (= (and b!7772408 (not res!3098268)) b!7772407))

(assert (= (and b!7772407 (not res!3098269)) b!7772412))

(assert (= (or b!7772403 b!7772408 b!7772411) bm!720363))

(declare-fun m!8225640 () Bool)

(assert (=> b!7772407 m!8225640))

(assert (=> b!7772407 m!8225640))

(declare-fun m!8225642 () Bool)

(assert (=> b!7772407 m!8225642))

(declare-fun m!8225644 () Bool)

(assert (=> b!7772401 m!8225644))

(declare-fun m!8225646 () Bool)

(assert (=> b!7772412 m!8225646))

(assert (=> b!7772404 m!8225646))

(assert (=> b!7772404 m!8225646))

(declare-fun m!8225648 () Bool)

(assert (=> b!7772404 m!8225648))

(assert (=> b!7772404 m!8225640))

(assert (=> b!7772404 m!8225648))

(assert (=> b!7772404 m!8225640))

(declare-fun m!8225650 () Bool)

(assert (=> b!7772404 m!8225650))

(assert (=> b!7772399 m!8225640))

(assert (=> b!7772399 m!8225640))

(assert (=> b!7772399 m!8225642))

(assert (=> d!2344617 m!8225630))

(declare-fun m!8225652 () Bool)

(assert (=> d!2344617 m!8225652))

(assert (=> b!7772405 m!8225646))

(assert (=> bm!720363 m!8225630))

(assert (=> b!7772308 d!2344617))

(declare-fun d!2344619 () Bool)

(assert (=> d!2344619 (= (isEmpty!42155 s!14904) ((_ is Nil!73480) s!14904))))

(assert (=> b!7772315 d!2344619))

(declare-fun b!7772414 () Bool)

(declare-fun e!4605085 () Bool)

(declare-fun e!4605086 () Bool)

(assert (=> b!7772414 (= e!4605085 e!4605086)))

(declare-fun res!3098270 () Bool)

(assert (=> b!7772414 (=> (not res!3098270) (not e!4605086))))

(declare-fun lt!2671646 () Bool)

(assert (=> b!7772414 (= res!3098270 (not lt!2671646))))

(declare-fun b!7772415 () Bool)

(declare-fun e!4605083 () Bool)

(assert (=> b!7772415 (= e!4605083 (nullable!9152 lt!2671640))))

(declare-fun b!7772416 () Bool)

(declare-fun e!4605082 () Bool)

(assert (=> b!7772416 (= e!4605082 (not lt!2671646))))

(declare-fun b!7772417 () Bool)

(declare-fun e!4605087 () Bool)

(declare-fun call!720371 () Bool)

(assert (=> b!7772417 (= e!4605087 (= lt!2671646 call!720371))))

(declare-fun b!7772418 () Bool)

(assert (=> b!7772418 (= e!4605083 (matchR!10225 (derivativeStep!6107 lt!2671640 (head!15889 s!14904)) (tail!15430 s!14904)))))

(declare-fun b!7772419 () Bool)

(declare-fun e!4605084 () Bool)

(assert (=> b!7772419 (= e!4605084 (= (head!15889 s!14904) (c!1432536 lt!2671640)))))

(declare-fun b!7772420 () Bool)

(declare-fun res!3098275 () Bool)

(assert (=> b!7772420 (=> res!3098275 e!4605085)))

(assert (=> b!7772420 (= res!3098275 e!4605084)))

(declare-fun res!3098271 () Bool)

(assert (=> b!7772420 (=> (not res!3098271) (not e!4605084))))

(assert (=> b!7772420 (= res!3098271 lt!2671646)))

(declare-fun b!7772421 () Bool)

(declare-fun res!3098277 () Bool)

(declare-fun e!4605088 () Bool)

(assert (=> b!7772421 (=> res!3098277 e!4605088)))

(assert (=> b!7772421 (= res!3098277 (not (isEmpty!42155 (tail!15430 s!14904))))))

(declare-fun bm!720366 () Bool)

(assert (=> bm!720366 (= call!720371 (isEmpty!42155 s!14904))))

(declare-fun b!7772413 () Bool)

(declare-fun res!3098273 () Bool)

(assert (=> b!7772413 (=> (not res!3098273) (not e!4605084))))

(assert (=> b!7772413 (= res!3098273 (isEmpty!42155 (tail!15430 s!14904)))))

(declare-fun d!2344621 () Bool)

(assert (=> d!2344621 e!4605087))

(declare-fun c!1432558 () Bool)

(assert (=> d!2344621 (= c!1432558 ((_ is EmptyExpr!20763) lt!2671640))))

(assert (=> d!2344621 (= lt!2671646 e!4605083)))

(declare-fun c!1432559 () Bool)

(assert (=> d!2344621 (= c!1432559 (isEmpty!42155 s!14904))))

(assert (=> d!2344621 (validRegex!11177 lt!2671640)))

(assert (=> d!2344621 (= (matchR!10225 lt!2671640 s!14904) lt!2671646)))

(declare-fun b!7772422 () Bool)

(assert (=> b!7772422 (= e!4605086 e!4605088)))

(declare-fun res!3098276 () Bool)

(assert (=> b!7772422 (=> res!3098276 e!4605088)))

(assert (=> b!7772422 (= res!3098276 call!720371)))

(declare-fun b!7772423 () Bool)

(assert (=> b!7772423 (= e!4605087 e!4605082)))

(declare-fun c!1432560 () Bool)

(assert (=> b!7772423 (= c!1432560 ((_ is EmptyLang!20763) lt!2671640))))

(declare-fun b!7772424 () Bool)

(declare-fun res!3098274 () Bool)

(assert (=> b!7772424 (=> res!3098274 e!4605085)))

(assert (=> b!7772424 (= res!3098274 (not ((_ is ElementMatch!20763) lt!2671640)))))

(assert (=> b!7772424 (= e!4605082 e!4605085)))

(declare-fun b!7772425 () Bool)

(declare-fun res!3098272 () Bool)

(assert (=> b!7772425 (=> (not res!3098272) (not e!4605084))))

(assert (=> b!7772425 (= res!3098272 (not call!720371))))

(declare-fun b!7772426 () Bool)

(assert (=> b!7772426 (= e!4605088 (not (= (head!15889 s!14904) (c!1432536 lt!2671640))))))

(assert (= (and d!2344621 c!1432559) b!7772415))

(assert (= (and d!2344621 (not c!1432559)) b!7772418))

(assert (= (and d!2344621 c!1432558) b!7772417))

(assert (= (and d!2344621 (not c!1432558)) b!7772423))

(assert (= (and b!7772423 c!1432560) b!7772416))

(assert (= (and b!7772423 (not c!1432560)) b!7772424))

(assert (= (and b!7772424 (not res!3098274)) b!7772420))

(assert (= (and b!7772420 res!3098271) b!7772425))

(assert (= (and b!7772425 res!3098272) b!7772413))

(assert (= (and b!7772413 res!3098273) b!7772419))

(assert (= (and b!7772420 (not res!3098275)) b!7772414))

(assert (= (and b!7772414 res!3098270) b!7772422))

(assert (= (and b!7772422 (not res!3098276)) b!7772421))

(assert (= (and b!7772421 (not res!3098277)) b!7772426))

(assert (= (or b!7772417 b!7772422 b!7772425) bm!720366))

(assert (=> b!7772421 m!8225640))

(assert (=> b!7772421 m!8225640))

(assert (=> b!7772421 m!8225642))

(declare-fun m!8225654 () Bool)

(assert (=> b!7772415 m!8225654))

(assert (=> b!7772426 m!8225646))

(assert (=> b!7772418 m!8225646))

(assert (=> b!7772418 m!8225646))

(declare-fun m!8225656 () Bool)

(assert (=> b!7772418 m!8225656))

(assert (=> b!7772418 m!8225640))

(assert (=> b!7772418 m!8225656))

(assert (=> b!7772418 m!8225640))

(declare-fun m!8225658 () Bool)

(assert (=> b!7772418 m!8225658))

(assert (=> b!7772413 m!8225640))

(assert (=> b!7772413 m!8225640))

(assert (=> b!7772413 m!8225642))

(assert (=> d!2344621 m!8225630))

(assert (=> d!2344621 m!8225632))

(assert (=> b!7772419 m!8225646))

(assert (=> bm!720366 m!8225630))

(assert (=> b!7772311 d!2344621))

(declare-fun b!7772437 () Bool)

(declare-fun e!4605091 () Bool)

(assert (=> b!7772437 (= e!4605091 tp_is_empty!51881)))

(assert (=> b!7772312 (= tp!2283347 e!4605091)))

(declare-fun b!7772440 () Bool)

(declare-fun tp!2283364 () Bool)

(declare-fun tp!2283360 () Bool)

(assert (=> b!7772440 (= e!4605091 (and tp!2283364 tp!2283360))))

(declare-fun b!7772439 () Bool)

(declare-fun tp!2283363 () Bool)

(assert (=> b!7772439 (= e!4605091 tp!2283363)))

(declare-fun b!7772438 () Bool)

(declare-fun tp!2283361 () Bool)

(declare-fun tp!2283362 () Bool)

(assert (=> b!7772438 (= e!4605091 (and tp!2283361 tp!2283362))))

(assert (= (and b!7772312 ((_ is ElementMatch!20763) (regOne!42038 r!25924))) b!7772437))

(assert (= (and b!7772312 ((_ is Concat!29608) (regOne!42038 r!25924))) b!7772438))

(assert (= (and b!7772312 ((_ is Star!20763) (regOne!42038 r!25924))) b!7772439))

(assert (= (and b!7772312 ((_ is Union!20763) (regOne!42038 r!25924))) b!7772440))

(declare-fun b!7772441 () Bool)

(declare-fun e!4605092 () Bool)

(assert (=> b!7772441 (= e!4605092 tp_is_empty!51881)))

(assert (=> b!7772312 (= tp!2283349 e!4605092)))

(declare-fun b!7772444 () Bool)

(declare-fun tp!2283369 () Bool)

(declare-fun tp!2283365 () Bool)

(assert (=> b!7772444 (= e!4605092 (and tp!2283369 tp!2283365))))

(declare-fun b!7772443 () Bool)

(declare-fun tp!2283368 () Bool)

(assert (=> b!7772443 (= e!4605092 tp!2283368)))

(declare-fun b!7772442 () Bool)

(declare-fun tp!2283366 () Bool)

(declare-fun tp!2283367 () Bool)

(assert (=> b!7772442 (= e!4605092 (and tp!2283366 tp!2283367))))

(assert (= (and b!7772312 ((_ is ElementMatch!20763) (regTwo!42038 r!25924))) b!7772441))

(assert (= (and b!7772312 ((_ is Concat!29608) (regTwo!42038 r!25924))) b!7772442))

(assert (= (and b!7772312 ((_ is Star!20763) (regTwo!42038 r!25924))) b!7772443))

(assert (= (and b!7772312 ((_ is Union!20763) (regTwo!42038 r!25924))) b!7772444))

(declare-fun b!7772449 () Bool)

(declare-fun e!4605095 () Bool)

(declare-fun tp!2283372 () Bool)

(assert (=> b!7772449 (= e!4605095 (and tp_is_empty!51881 tp!2283372))))

(assert (=> b!7772307 (= tp!2283348 e!4605095)))

(assert (= (and b!7772307 ((_ is Cons!73480) (t!388339 s!14904))) b!7772449))

(declare-fun b!7772450 () Bool)

(declare-fun e!4605096 () Bool)

(assert (=> b!7772450 (= e!4605096 tp_is_empty!51881)))

(assert (=> b!7772309 (= tp!2283344 e!4605096)))

(declare-fun b!7772453 () Bool)

(declare-fun tp!2283377 () Bool)

(declare-fun tp!2283373 () Bool)

(assert (=> b!7772453 (= e!4605096 (and tp!2283377 tp!2283373))))

(declare-fun b!7772452 () Bool)

(declare-fun tp!2283376 () Bool)

(assert (=> b!7772452 (= e!4605096 tp!2283376)))

(declare-fun b!7772451 () Bool)

(declare-fun tp!2283374 () Bool)

(declare-fun tp!2283375 () Bool)

(assert (=> b!7772451 (= e!4605096 (and tp!2283374 tp!2283375))))

(assert (= (and b!7772309 ((_ is ElementMatch!20763) (regOne!42039 r!25924))) b!7772450))

(assert (= (and b!7772309 ((_ is Concat!29608) (regOne!42039 r!25924))) b!7772451))

(assert (= (and b!7772309 ((_ is Star!20763) (regOne!42039 r!25924))) b!7772452))

(assert (= (and b!7772309 ((_ is Union!20763) (regOne!42039 r!25924))) b!7772453))

(declare-fun b!7772454 () Bool)

(declare-fun e!4605097 () Bool)

(assert (=> b!7772454 (= e!4605097 tp_is_empty!51881)))

(assert (=> b!7772309 (= tp!2283346 e!4605097)))

(declare-fun b!7772457 () Bool)

(declare-fun tp!2283382 () Bool)

(declare-fun tp!2283378 () Bool)

(assert (=> b!7772457 (= e!4605097 (and tp!2283382 tp!2283378))))

(declare-fun b!7772456 () Bool)

(declare-fun tp!2283381 () Bool)

(assert (=> b!7772456 (= e!4605097 tp!2283381)))

(declare-fun b!7772455 () Bool)

(declare-fun tp!2283379 () Bool)

(declare-fun tp!2283380 () Bool)

(assert (=> b!7772455 (= e!4605097 (and tp!2283379 tp!2283380))))

(assert (= (and b!7772309 ((_ is ElementMatch!20763) (regTwo!42039 r!25924))) b!7772454))

(assert (= (and b!7772309 ((_ is Concat!29608) (regTwo!42039 r!25924))) b!7772455))

(assert (= (and b!7772309 ((_ is Star!20763) (regTwo!42039 r!25924))) b!7772456))

(assert (= (and b!7772309 ((_ is Union!20763) (regTwo!42039 r!25924))) b!7772457))

(declare-fun b!7772458 () Bool)

(declare-fun e!4605098 () Bool)

(assert (=> b!7772458 (= e!4605098 tp_is_empty!51881)))

(assert (=> b!7772310 (= tp!2283345 e!4605098)))

(declare-fun b!7772461 () Bool)

(declare-fun tp!2283387 () Bool)

(declare-fun tp!2283383 () Bool)

(assert (=> b!7772461 (= e!4605098 (and tp!2283387 tp!2283383))))

(declare-fun b!7772460 () Bool)

(declare-fun tp!2283386 () Bool)

(assert (=> b!7772460 (= e!4605098 tp!2283386)))

(declare-fun b!7772459 () Bool)

(declare-fun tp!2283384 () Bool)

(declare-fun tp!2283385 () Bool)

(assert (=> b!7772459 (= e!4605098 (and tp!2283384 tp!2283385))))

(assert (= (and b!7772310 ((_ is ElementMatch!20763) (reg!21092 r!25924))) b!7772458))

(assert (= (and b!7772310 ((_ is Concat!29608) (reg!21092 r!25924))) b!7772459))

(assert (= (and b!7772310 ((_ is Star!20763) (reg!21092 r!25924))) b!7772460))

(assert (= (and b!7772310 ((_ is Union!20763) (reg!21092 r!25924))) b!7772461))

(check-sat (not bm!720366) (not b!7772449) (not b!7772407) (not b!7772426) (not b!7772456) (not d!2344617) (not b!7772444) (not b!7772405) (not b!7772442) (not b!7772339) (not b!7772415) (not b!7772438) (not b!7772457) (not b!7772452) (not b!7772460) (not d!2344621) (not b!7772418) (not b!7772440) (not bm!720363) (not b!7772439) (not b!7772421) (not b!7772451) (not b!7772401) (not bm!720359) (not b!7772455) (not b!7772459) (not b!7772461) (not b!7772419) (not b!7772404) (not b!7772453) (not bm!720360) (not b!7772413) (not b!7772399) (not b!7772412) (not b!7772443) tp_is_empty!51881)
(check-sat)
