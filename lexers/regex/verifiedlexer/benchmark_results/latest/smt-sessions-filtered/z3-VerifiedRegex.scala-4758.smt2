; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245384 () Bool)

(assert start!245384)

(declare-fun b!2516602 () Bool)

(declare-fun e!1594254 () Bool)

(declare-fun tp!804330 () Bool)

(declare-fun tp!804326 () Bool)

(assert (=> b!2516602 (= e!1594254 (and tp!804330 tp!804326))))

(declare-fun b!2516603 () Bool)

(declare-fun tp!804325 () Bool)

(assert (=> b!2516603 (= e!1594254 tp!804325)))

(declare-fun b!2516604 () Bool)

(declare-datatypes ((C!15140 0))(
  ( (C!15141 (val!9222 Int)) )
))
(declare-datatypes ((Regex!7491 0))(
  ( (ElementMatch!7491 (c!401137 C!15140)) (Concat!12187 (regOne!15494 Regex!7491) (regTwo!15494 Regex!7491)) (EmptyExpr!7491) (Star!7491 (reg!7820 Regex!7491)) (EmptyLang!7491) (Union!7491 (regOne!15495 Regex!7491) (regTwo!15495 Regex!7491)) )
))
(declare-fun lt!899002 () Regex!7491)

(declare-fun e!1594251 () Bool)

(declare-fun r!27340 () Regex!7491)

(declare-fun c!14016 () C!15140)

(get-info :version)

(assert (=> b!2516604 (= e!1594251 (and (not ((_ is EmptyExpr!7491) r!27340)) (not ((_ is EmptyLang!7491) r!27340)) ((_ is ElementMatch!7491) r!27340) (= c!14016 (c!401137 r!27340)) (not (= lt!899002 EmptyExpr!7491))))))

(declare-fun b!2516605 () Bool)

(declare-fun e!1594252 () Bool)

(assert (=> b!2516605 (= e!1594252 e!1594251)))

(declare-fun res!1063738 () Bool)

(assert (=> b!2516605 (=> (not res!1063738) (not e!1594251))))

(declare-datatypes ((List!29556 0))(
  ( (Nil!29456) (Cons!29456 (h!34876 C!15140) (t!211255 List!29556)) )
))
(declare-fun tl!4068 () List!29556)

(declare-fun nullable!2408 (Regex!7491) Bool)

(declare-fun derivative!186 (Regex!7491 List!29556) Regex!7491)

(assert (=> b!2516605 (= res!1063738 (nullable!2408 (derivative!186 lt!899002 tl!4068)))))

(declare-fun derivativeStep!2060 (Regex!7491 C!15140) Regex!7491)

(assert (=> b!2516605 (= lt!899002 (derivativeStep!2060 r!27340 c!14016))))

(declare-fun b!2516606 () Bool)

(declare-fun tp!804328 () Bool)

(declare-fun tp!804329 () Bool)

(assert (=> b!2516606 (= e!1594254 (and tp!804328 tp!804329))))

(declare-fun b!2516607 () Bool)

(declare-fun e!1594253 () Bool)

(declare-fun tp_is_empty!12837 () Bool)

(declare-fun tp!804327 () Bool)

(assert (=> b!2516607 (= e!1594253 (and tp_is_empty!12837 tp!804327))))

(declare-fun res!1063737 () Bool)

(assert (=> start!245384 (=> (not res!1063737) (not e!1594252))))

(declare-fun validRegex!3117 (Regex!7491) Bool)

(assert (=> start!245384 (= res!1063737 (validRegex!3117 r!27340))))

(assert (=> start!245384 e!1594252))

(assert (=> start!245384 e!1594254))

(assert (=> start!245384 tp_is_empty!12837))

(assert (=> start!245384 e!1594253))

(declare-fun b!2516608 () Bool)

(assert (=> b!2516608 (= e!1594254 tp_is_empty!12837)))

(assert (= (and start!245384 res!1063737) b!2516605))

(assert (= (and b!2516605 res!1063738) b!2516604))

(assert (= (and start!245384 ((_ is ElementMatch!7491) r!27340)) b!2516608))

(assert (= (and start!245384 ((_ is Concat!12187) r!27340)) b!2516606))

(assert (= (and start!245384 ((_ is Star!7491) r!27340)) b!2516603))

(assert (= (and start!245384 ((_ is Union!7491) r!27340)) b!2516602))

(assert (= (and start!245384 ((_ is Cons!29456) tl!4068)) b!2516607))

(declare-fun m!2873337 () Bool)

(assert (=> b!2516605 m!2873337))

(assert (=> b!2516605 m!2873337))

(declare-fun m!2873339 () Bool)

(assert (=> b!2516605 m!2873339))

(declare-fun m!2873341 () Bool)

(assert (=> b!2516605 m!2873341))

(declare-fun m!2873343 () Bool)

(assert (=> start!245384 m!2873343))

(check-sat (not b!2516603) (not b!2516606) (not b!2516602) tp_is_empty!12837 (not b!2516607) (not b!2516605) (not start!245384))
(check-sat)
(get-model)

(declare-fun d!717407 () Bool)

(declare-fun nullableFct!649 (Regex!7491) Bool)

(assert (=> d!717407 (= (nullable!2408 (derivative!186 lt!899002 tl!4068)) (nullableFct!649 (derivative!186 lt!899002 tl!4068)))))

(declare-fun bs!468904 () Bool)

(assert (= bs!468904 d!717407))

(assert (=> bs!468904 m!2873337))

(declare-fun m!2873345 () Bool)

(assert (=> bs!468904 m!2873345))

(assert (=> b!2516605 d!717407))

(declare-fun d!717411 () Bool)

(declare-fun lt!899005 () Regex!7491)

(assert (=> d!717411 (validRegex!3117 lt!899005)))

(declare-fun e!1594271 () Regex!7491)

(assert (=> d!717411 (= lt!899005 e!1594271)))

(declare-fun c!401144 () Bool)

(assert (=> d!717411 (= c!401144 ((_ is Cons!29456) tl!4068))))

(assert (=> d!717411 (validRegex!3117 lt!899002)))

(assert (=> d!717411 (= (derivative!186 lt!899002 tl!4068) lt!899005)))

(declare-fun b!2516631 () Bool)

(assert (=> b!2516631 (= e!1594271 (derivative!186 (derivativeStep!2060 lt!899002 (h!34876 tl!4068)) (t!211255 tl!4068)))))

(declare-fun b!2516632 () Bool)

(assert (=> b!2516632 (= e!1594271 lt!899002)))

(assert (= (and d!717411 c!401144) b!2516631))

(assert (= (and d!717411 (not c!401144)) b!2516632))

(declare-fun m!2873347 () Bool)

(assert (=> d!717411 m!2873347))

(declare-fun m!2873349 () Bool)

(assert (=> d!717411 m!2873349))

(declare-fun m!2873351 () Bool)

(assert (=> b!2516631 m!2873351))

(assert (=> b!2516631 m!2873351))

(declare-fun m!2873353 () Bool)

(assert (=> b!2516631 m!2873353))

(assert (=> b!2516605 d!717411))

(declare-fun b!2516668 () Bool)

(declare-fun e!1594293 () Regex!7491)

(declare-fun call!156441 () Regex!7491)

(assert (=> b!2516668 (= e!1594293 (Concat!12187 call!156441 r!27340))))

(declare-fun b!2516669 () Bool)

(declare-fun e!1594292 () Regex!7491)

(declare-fun call!156444 () Regex!7491)

(declare-fun call!156442 () Regex!7491)

(assert (=> b!2516669 (= e!1594292 (Union!7491 call!156444 call!156442))))

(declare-fun d!717413 () Bool)

(declare-fun lt!899011 () Regex!7491)

(assert (=> d!717413 (validRegex!3117 lt!899011)))

(declare-fun e!1594294 () Regex!7491)

(assert (=> d!717413 (= lt!899011 e!1594294)))

(declare-fun c!401162 () Bool)

(assert (=> d!717413 (= c!401162 (or ((_ is EmptyExpr!7491) r!27340) ((_ is EmptyLang!7491) r!27340)))))

(assert (=> d!717413 (validRegex!3117 r!27340)))

(assert (=> d!717413 (= (derivativeStep!2060 r!27340 c!14016) lt!899011)))

(declare-fun b!2516670 () Bool)

(declare-fun e!1594295 () Regex!7491)

(assert (=> b!2516670 (= e!1594295 (ite (= c!14016 (c!401137 r!27340)) EmptyExpr!7491 EmptyLang!7491))))

(declare-fun b!2516671 () Bool)

(assert (=> b!2516671 (= e!1594294 e!1594295)))

(declare-fun c!401164 () Bool)

(assert (=> b!2516671 (= c!401164 ((_ is ElementMatch!7491) r!27340))))

(declare-fun bm!156436 () Bool)

(assert (=> bm!156436 (= call!156441 call!156444)))

(declare-fun b!2516672 () Bool)

(assert (=> b!2516672 (= e!1594294 EmptyLang!7491)))

(declare-fun bm!156437 () Bool)

(declare-fun call!156443 () Regex!7491)

(assert (=> bm!156437 (= call!156443 call!156441)))

(declare-fun b!2516673 () Bool)

(assert (=> b!2516673 (= e!1594292 e!1594293)))

(declare-fun c!401163 () Bool)

(assert (=> b!2516673 (= c!401163 ((_ is Star!7491) r!27340))))

(declare-fun b!2516674 () Bool)

(declare-fun e!1594296 () Regex!7491)

(assert (=> b!2516674 (= e!1594296 (Union!7491 (Concat!12187 call!156443 (regTwo!15494 r!27340)) call!156442))))

(declare-fun bm!156438 () Bool)

(declare-fun c!401160 () Bool)

(assert (=> bm!156438 (= call!156444 (derivativeStep!2060 (ite c!401160 (regOne!15495 r!27340) (ite c!401163 (reg!7820 r!27340) (regOne!15494 r!27340))) c!14016))))

(declare-fun b!2516675 () Bool)

(declare-fun c!401161 () Bool)

(assert (=> b!2516675 (= c!401161 (nullable!2408 (regOne!15494 r!27340)))))

(assert (=> b!2516675 (= e!1594293 e!1594296)))

(declare-fun bm!156439 () Bool)

(assert (=> bm!156439 (= call!156442 (derivativeStep!2060 (ite c!401160 (regTwo!15495 r!27340) (regTwo!15494 r!27340)) c!14016))))

(declare-fun b!2516676 () Bool)

(assert (=> b!2516676 (= c!401160 ((_ is Union!7491) r!27340))))

(assert (=> b!2516676 (= e!1594295 e!1594292)))

(declare-fun b!2516677 () Bool)

(assert (=> b!2516677 (= e!1594296 (Union!7491 (Concat!12187 call!156443 (regTwo!15494 r!27340)) EmptyLang!7491))))

(assert (= (and d!717413 c!401162) b!2516672))

(assert (= (and d!717413 (not c!401162)) b!2516671))

(assert (= (and b!2516671 c!401164) b!2516670))

(assert (= (and b!2516671 (not c!401164)) b!2516676))

(assert (= (and b!2516676 c!401160) b!2516669))

(assert (= (and b!2516676 (not c!401160)) b!2516673))

(assert (= (and b!2516673 c!401163) b!2516668))

(assert (= (and b!2516673 (not c!401163)) b!2516675))

(assert (= (and b!2516675 c!401161) b!2516674))

(assert (= (and b!2516675 (not c!401161)) b!2516677))

(assert (= (or b!2516674 b!2516677) bm!156437))

(assert (= (or b!2516668 bm!156437) bm!156436))

(assert (= (or b!2516669 b!2516674) bm!156439))

(assert (= (or b!2516669 bm!156436) bm!156438))

(declare-fun m!2873371 () Bool)

(assert (=> d!717413 m!2873371))

(assert (=> d!717413 m!2873343))

(declare-fun m!2873373 () Bool)

(assert (=> bm!156438 m!2873373))

(declare-fun m!2873375 () Bool)

(assert (=> b!2516675 m!2873375))

(declare-fun m!2873377 () Bool)

(assert (=> bm!156439 m!2873377))

(assert (=> b!2516605 d!717413))

(declare-fun bm!156455 () Bool)

(declare-fun c!401179 () Bool)

(declare-fun call!156459 () Bool)

(declare-fun c!401180 () Bool)

(assert (=> bm!156455 (= call!156459 (validRegex!3117 (ite c!401180 (reg!7820 r!27340) (ite c!401179 (regOne!15495 r!27340) (regTwo!15494 r!27340)))))))

(declare-fun b!2516716 () Bool)

(declare-fun res!1063765 () Bool)

(declare-fun e!1594325 () Bool)

(assert (=> b!2516716 (=> (not res!1063765) (not e!1594325))))

(declare-fun call!156461 () Bool)

(assert (=> b!2516716 (= res!1063765 call!156461)))

(declare-fun e!1594321 () Bool)

(assert (=> b!2516716 (= e!1594321 e!1594325)))

(declare-fun b!2516717 () Bool)

(declare-fun e!1594322 () Bool)

(declare-fun e!1594326 () Bool)

(assert (=> b!2516717 (= e!1594322 e!1594326)))

(declare-fun res!1063766 () Bool)

(assert (=> b!2516717 (=> (not res!1063766) (not e!1594326))))

(declare-fun call!156460 () Bool)

(assert (=> b!2516717 (= res!1063766 call!156460)))

(declare-fun b!2516718 () Bool)

(declare-fun e!1594327 () Bool)

(declare-fun e!1594324 () Bool)

(assert (=> b!2516718 (= e!1594327 e!1594324)))

(declare-fun res!1063764 () Bool)

(assert (=> b!2516718 (= res!1063764 (not (nullable!2408 (reg!7820 r!27340))))))

(assert (=> b!2516718 (=> (not res!1063764) (not e!1594324))))

(declare-fun b!2516719 () Bool)

(assert (=> b!2516719 (= e!1594325 call!156460)))

(declare-fun b!2516720 () Bool)

(declare-fun res!1063767 () Bool)

(assert (=> b!2516720 (=> res!1063767 e!1594322)))

(assert (=> b!2516720 (= res!1063767 (not ((_ is Concat!12187) r!27340)))))

(assert (=> b!2516720 (= e!1594321 e!1594322)))

(declare-fun bm!156456 () Bool)

(assert (=> bm!156456 (= call!156461 call!156459)))

(declare-fun b!2516721 () Bool)

(assert (=> b!2516721 (= e!1594327 e!1594321)))

(assert (=> b!2516721 (= c!401179 ((_ is Union!7491) r!27340))))

(declare-fun b!2516722 () Bool)

(assert (=> b!2516722 (= e!1594326 call!156461)))

(declare-fun b!2516723 () Bool)

(assert (=> b!2516723 (= e!1594324 call!156459)))

(declare-fun b!2516724 () Bool)

(declare-fun e!1594323 () Bool)

(assert (=> b!2516724 (= e!1594323 e!1594327)))

(assert (=> b!2516724 (= c!401180 ((_ is Star!7491) r!27340))))

(declare-fun bm!156454 () Bool)

(assert (=> bm!156454 (= call!156460 (validRegex!3117 (ite c!401179 (regTwo!15495 r!27340) (regOne!15494 r!27340))))))

(declare-fun d!717421 () Bool)

(declare-fun res!1063768 () Bool)

(assert (=> d!717421 (=> res!1063768 e!1594323)))

(assert (=> d!717421 (= res!1063768 ((_ is ElementMatch!7491) r!27340))))

(assert (=> d!717421 (= (validRegex!3117 r!27340) e!1594323)))

(assert (= (and d!717421 (not res!1063768)) b!2516724))

(assert (= (and b!2516724 c!401180) b!2516718))

(assert (= (and b!2516724 (not c!401180)) b!2516721))

(assert (= (and b!2516718 res!1063764) b!2516723))

(assert (= (and b!2516721 c!401179) b!2516716))

(assert (= (and b!2516721 (not c!401179)) b!2516720))

(assert (= (and b!2516716 res!1063765) b!2516719))

(assert (= (and b!2516720 (not res!1063767)) b!2516717))

(assert (= (and b!2516717 res!1063766) b!2516722))

(assert (= (or b!2516716 b!2516722) bm!156456))

(assert (= (or b!2516719 b!2516717) bm!156454))

(assert (= (or b!2516723 bm!156456) bm!156455))

(declare-fun m!2873379 () Bool)

(assert (=> bm!156455 m!2873379))

(declare-fun m!2873381 () Bool)

(assert (=> b!2516718 m!2873381))

(declare-fun m!2873383 () Bool)

(assert (=> bm!156454 m!2873383))

(assert (=> start!245384 d!717421))

(declare-fun b!2516735 () Bool)

(declare-fun e!1594330 () Bool)

(assert (=> b!2516735 (= e!1594330 tp_is_empty!12837)))

(declare-fun b!2516738 () Bool)

(declare-fun tp!804342 () Bool)

(declare-fun tp!804341 () Bool)

(assert (=> b!2516738 (= e!1594330 (and tp!804342 tp!804341))))

(declare-fun b!2516737 () Bool)

(declare-fun tp!804345 () Bool)

(assert (=> b!2516737 (= e!1594330 tp!804345)))

(assert (=> b!2516603 (= tp!804325 e!1594330)))

(declare-fun b!2516736 () Bool)

(declare-fun tp!804343 () Bool)

(declare-fun tp!804344 () Bool)

(assert (=> b!2516736 (= e!1594330 (and tp!804343 tp!804344))))

(assert (= (and b!2516603 ((_ is ElementMatch!7491) (reg!7820 r!27340))) b!2516735))

(assert (= (and b!2516603 ((_ is Concat!12187) (reg!7820 r!27340))) b!2516736))

(assert (= (and b!2516603 ((_ is Star!7491) (reg!7820 r!27340))) b!2516737))

(assert (= (and b!2516603 ((_ is Union!7491) (reg!7820 r!27340))) b!2516738))

(declare-fun b!2516739 () Bool)

(declare-fun e!1594331 () Bool)

(assert (=> b!2516739 (= e!1594331 tp_is_empty!12837)))

(declare-fun b!2516742 () Bool)

(declare-fun tp!804347 () Bool)

(declare-fun tp!804346 () Bool)

(assert (=> b!2516742 (= e!1594331 (and tp!804347 tp!804346))))

(declare-fun b!2516741 () Bool)

(declare-fun tp!804350 () Bool)

(assert (=> b!2516741 (= e!1594331 tp!804350)))

(assert (=> b!2516602 (= tp!804330 e!1594331)))

(declare-fun b!2516740 () Bool)

(declare-fun tp!804348 () Bool)

(declare-fun tp!804349 () Bool)

(assert (=> b!2516740 (= e!1594331 (and tp!804348 tp!804349))))

(assert (= (and b!2516602 ((_ is ElementMatch!7491) (regOne!15495 r!27340))) b!2516739))

(assert (= (and b!2516602 ((_ is Concat!12187) (regOne!15495 r!27340))) b!2516740))

(assert (= (and b!2516602 ((_ is Star!7491) (regOne!15495 r!27340))) b!2516741))

(assert (= (and b!2516602 ((_ is Union!7491) (regOne!15495 r!27340))) b!2516742))

(declare-fun b!2516743 () Bool)

(declare-fun e!1594332 () Bool)

(assert (=> b!2516743 (= e!1594332 tp_is_empty!12837)))

(declare-fun b!2516746 () Bool)

(declare-fun tp!804352 () Bool)

(declare-fun tp!804351 () Bool)

(assert (=> b!2516746 (= e!1594332 (and tp!804352 tp!804351))))

(declare-fun b!2516745 () Bool)

(declare-fun tp!804355 () Bool)

(assert (=> b!2516745 (= e!1594332 tp!804355)))

(assert (=> b!2516602 (= tp!804326 e!1594332)))

(declare-fun b!2516744 () Bool)

(declare-fun tp!804353 () Bool)

(declare-fun tp!804354 () Bool)

(assert (=> b!2516744 (= e!1594332 (and tp!804353 tp!804354))))

(assert (= (and b!2516602 ((_ is ElementMatch!7491) (regTwo!15495 r!27340))) b!2516743))

(assert (= (and b!2516602 ((_ is Concat!12187) (regTwo!15495 r!27340))) b!2516744))

(assert (= (and b!2516602 ((_ is Star!7491) (regTwo!15495 r!27340))) b!2516745))

(assert (= (and b!2516602 ((_ is Union!7491) (regTwo!15495 r!27340))) b!2516746))

(declare-fun b!2516751 () Bool)

(declare-fun e!1594335 () Bool)

(declare-fun tp!804358 () Bool)

(assert (=> b!2516751 (= e!1594335 (and tp_is_empty!12837 tp!804358))))

(assert (=> b!2516607 (= tp!804327 e!1594335)))

(assert (= (and b!2516607 ((_ is Cons!29456) (t!211255 tl!4068))) b!2516751))

(declare-fun b!2516752 () Bool)

(declare-fun e!1594336 () Bool)

(assert (=> b!2516752 (= e!1594336 tp_is_empty!12837)))

(declare-fun b!2516755 () Bool)

(declare-fun tp!804360 () Bool)

(declare-fun tp!804359 () Bool)

(assert (=> b!2516755 (= e!1594336 (and tp!804360 tp!804359))))

(declare-fun b!2516754 () Bool)

(declare-fun tp!804363 () Bool)

(assert (=> b!2516754 (= e!1594336 tp!804363)))

(assert (=> b!2516606 (= tp!804328 e!1594336)))

(declare-fun b!2516753 () Bool)

(declare-fun tp!804361 () Bool)

(declare-fun tp!804362 () Bool)

(assert (=> b!2516753 (= e!1594336 (and tp!804361 tp!804362))))

(assert (= (and b!2516606 ((_ is ElementMatch!7491) (regOne!15494 r!27340))) b!2516752))

(assert (= (and b!2516606 ((_ is Concat!12187) (regOne!15494 r!27340))) b!2516753))

(assert (= (and b!2516606 ((_ is Star!7491) (regOne!15494 r!27340))) b!2516754))

(assert (= (and b!2516606 ((_ is Union!7491) (regOne!15494 r!27340))) b!2516755))

(declare-fun b!2516756 () Bool)

(declare-fun e!1594337 () Bool)

(assert (=> b!2516756 (= e!1594337 tp_is_empty!12837)))

(declare-fun b!2516759 () Bool)

(declare-fun tp!804365 () Bool)

(declare-fun tp!804364 () Bool)

(assert (=> b!2516759 (= e!1594337 (and tp!804365 tp!804364))))

(declare-fun b!2516758 () Bool)

(declare-fun tp!804368 () Bool)

(assert (=> b!2516758 (= e!1594337 tp!804368)))

(assert (=> b!2516606 (= tp!804329 e!1594337)))

(declare-fun b!2516757 () Bool)

(declare-fun tp!804366 () Bool)

(declare-fun tp!804367 () Bool)

(assert (=> b!2516757 (= e!1594337 (and tp!804366 tp!804367))))

(assert (= (and b!2516606 ((_ is ElementMatch!7491) (regTwo!15494 r!27340))) b!2516756))

(assert (= (and b!2516606 ((_ is Concat!12187) (regTwo!15494 r!27340))) b!2516757))

(assert (= (and b!2516606 ((_ is Star!7491) (regTwo!15494 r!27340))) b!2516758))

(assert (= (and b!2516606 ((_ is Union!7491) (regTwo!15494 r!27340))) b!2516759))

(check-sat (not b!2516754) (not b!2516751) (not b!2516759) (not b!2516758) (not b!2516718) (not d!717413) (not b!2516757) (not bm!156439) (not d!717407) (not b!2516740) (not b!2516753) (not b!2516744) (not bm!156455) tp_is_empty!12837 (not b!2516746) (not b!2516736) (not b!2516745) (not b!2516631) (not bm!156438) (not b!2516742) (not b!2516738) (not bm!156454) (not b!2516755) (not b!2516675) (not b!2516741) (not d!717411) (not b!2516737))
(check-sat)
