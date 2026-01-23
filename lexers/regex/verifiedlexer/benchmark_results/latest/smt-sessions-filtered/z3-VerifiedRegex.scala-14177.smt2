; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743638 () Bool)

(assert start!743638)

(declare-fun b!7861235 () Bool)

(declare-fun e!4645587 () Bool)

(declare-fun tp!2329876 () Bool)

(assert (=> b!7861235 (= e!4645587 tp!2329876)))

(declare-fun res!3125130 () Bool)

(declare-fun e!4645588 () Bool)

(assert (=> start!743638 (=> (not res!3125130) (not e!4645588))))

(declare-datatypes ((C!42580 0))(
  ( (C!42581 (val!31752 Int)) )
))
(declare-datatypes ((Regex!21127 0))(
  ( (ElementMatch!21127 (c!1444573 C!42580)) (Concat!29972 (regOne!42766 Regex!21127) (regTwo!42766 Regex!21127)) (EmptyExpr!21127) (Star!21127 (reg!21456 Regex!21127)) (EmptyLang!21127) (Union!21127 (regOne!42767 Regex!21127) (regTwo!42767 Regex!21127)) )
))
(declare-fun r1!6218 () Regex!21127)

(declare-fun validRegex!11537 (Regex!21127) Bool)

(assert (=> start!743638 (= res!3125130 (validRegex!11537 r1!6218))))

(assert (=> start!743638 e!4645588))

(assert (=> start!743638 e!4645587))

(declare-fun e!4645589 () Bool)

(assert (=> start!743638 e!4645589))

(declare-fun e!4645586 () Bool)

(assert (=> start!743638 e!4645586))

(declare-fun b!7861236 () Bool)

(declare-fun res!3125134 () Bool)

(assert (=> b!7861236 (=> (not res!3125134) (not e!4645588))))

(declare-datatypes ((List!73986 0))(
  ( (Nil!73862) (Cons!73862 (h!80310 C!42580) (t!388721 List!73986)) )
))
(declare-fun s!14237 () List!73986)

(declare-fun matchR!10563 (Regex!21127 List!73986) Bool)

(assert (=> b!7861236 (= res!3125134 (matchR!10563 r1!6218 s!14237))))

(declare-fun b!7861237 () Bool)

(declare-fun res!3125133 () Bool)

(assert (=> b!7861237 (=> (not res!3125133) (not e!4645588))))

(declare-fun r2!6156 () Regex!21127)

(declare-fun nullable!9397 (Regex!21127) Bool)

(assert (=> b!7861237 (= res!3125133 (nullable!9397 r2!6156))))

(declare-fun b!7861238 () Bool)

(declare-fun tp!2329878 () Bool)

(declare-fun tp!2329881 () Bool)

(assert (=> b!7861238 (= e!4645587 (and tp!2329878 tp!2329881))))

(declare-fun b!7861239 () Bool)

(declare-fun res!3125132 () Bool)

(assert (=> b!7861239 (=> (not res!3125132) (not e!4645588))))

(get-info :version)

(assert (=> b!7861239 (= res!3125132 ((_ is Cons!73862) s!14237))))

(declare-fun b!7861240 () Bool)

(declare-fun tp!2329874 () Bool)

(declare-fun tp!2329883 () Bool)

(assert (=> b!7861240 (= e!4645589 (and tp!2329874 tp!2329883))))

(declare-fun b!7861241 () Bool)

(declare-fun tp_is_empty!52653 () Bool)

(assert (=> b!7861241 (= e!4645587 tp_is_empty!52653)))

(declare-fun b!7861242 () Bool)

(assert (=> b!7861242 (= e!4645589 tp_is_empty!52653)))

(declare-fun b!7861243 () Bool)

(declare-fun tp!2329879 () Bool)

(declare-fun tp!2329884 () Bool)

(assert (=> b!7861243 (= e!4645589 (and tp!2329879 tp!2329884))))

(declare-fun b!7861244 () Bool)

(declare-fun derivativeStep!6360 (Regex!21127 C!42580) Regex!21127)

(assert (=> b!7861244 (= e!4645588 (not (= (derivativeStep!6360 (Concat!29972 r2!6156 r1!6218) (h!80310 s!14237)) (Union!21127 (Concat!29972 (derivativeStep!6360 r2!6156 (h!80310 s!14237)) r1!6218) (derivativeStep!6360 r1!6218 (h!80310 s!14237))))))))

(declare-fun b!7861245 () Bool)

(declare-fun res!3125131 () Bool)

(assert (=> b!7861245 (=> (not res!3125131) (not e!4645588))))

(assert (=> b!7861245 (= res!3125131 (validRegex!11537 r2!6156))))

(declare-fun b!7861246 () Bool)

(declare-fun tp!2329880 () Bool)

(assert (=> b!7861246 (= e!4645586 (and tp_is_empty!52653 tp!2329880))))

(declare-fun b!7861247 () Bool)

(declare-fun tp!2329877 () Bool)

(declare-fun tp!2329882 () Bool)

(assert (=> b!7861247 (= e!4645587 (and tp!2329877 tp!2329882))))

(declare-fun b!7861248 () Bool)

(declare-fun tp!2329875 () Bool)

(assert (=> b!7861248 (= e!4645589 tp!2329875)))

(assert (= (and start!743638 res!3125130) b!7861245))

(assert (= (and b!7861245 res!3125131) b!7861236))

(assert (= (and b!7861236 res!3125134) b!7861237))

(assert (= (and b!7861237 res!3125133) b!7861239))

(assert (= (and b!7861239 res!3125132) b!7861244))

(assert (= (and start!743638 ((_ is ElementMatch!21127) r1!6218)) b!7861241))

(assert (= (and start!743638 ((_ is Concat!29972) r1!6218)) b!7861247))

(assert (= (and start!743638 ((_ is Star!21127) r1!6218)) b!7861235))

(assert (= (and start!743638 ((_ is Union!21127) r1!6218)) b!7861238))

(assert (= (and start!743638 ((_ is ElementMatch!21127) r2!6156)) b!7861242))

(assert (= (and start!743638 ((_ is Concat!29972) r2!6156)) b!7861243))

(assert (= (and start!743638 ((_ is Star!21127) r2!6156)) b!7861248))

(assert (= (and start!743638 ((_ is Union!21127) r2!6156)) b!7861240))

(assert (= (and start!743638 ((_ is Cons!73862) s!14237)) b!7861246))

(declare-fun m!8262418 () Bool)

(assert (=> b!7861245 m!8262418))

(declare-fun m!8262420 () Bool)

(assert (=> b!7861237 m!8262420))

(declare-fun m!8262422 () Bool)

(assert (=> start!743638 m!8262422))

(declare-fun m!8262424 () Bool)

(assert (=> b!7861236 m!8262424))

(declare-fun m!8262426 () Bool)

(assert (=> b!7861244 m!8262426))

(declare-fun m!8262428 () Bool)

(assert (=> b!7861244 m!8262428))

(declare-fun m!8262430 () Bool)

(assert (=> b!7861244 m!8262430))

(check-sat (not b!7861235) tp_is_empty!52653 (not b!7861244) (not b!7861248) (not b!7861247) (not b!7861237) (not b!7861246) (not b!7861240) (not b!7861245) (not b!7861238) (not b!7861236) (not start!743638) (not b!7861243))
(check-sat)
(get-model)

(declare-fun b!7861277 () Bool)

(declare-fun e!4645607 () Bool)

(declare-fun e!4645610 () Bool)

(assert (=> b!7861277 (= e!4645607 e!4645610)))

(declare-fun res!3125158 () Bool)

(assert (=> b!7861277 (=> res!3125158 e!4645610)))

(declare-fun call!728801 () Bool)

(assert (=> b!7861277 (= res!3125158 call!728801)))

(declare-fun b!7861278 () Bool)

(declare-fun e!4645606 () Bool)

(assert (=> b!7861278 (= e!4645606 (nullable!9397 r1!6218))))

(declare-fun b!7861279 () Bool)

(declare-fun head!16075 (List!73986) C!42580)

(assert (=> b!7861279 (= e!4645610 (not (= (head!16075 s!14237) (c!1444573 r1!6218))))))

(declare-fun b!7861280 () Bool)

(declare-fun e!4645609 () Bool)

(declare-fun e!4645605 () Bool)

(assert (=> b!7861280 (= e!4645609 e!4645605)))

(declare-fun c!1444581 () Bool)

(assert (=> b!7861280 (= c!1444581 ((_ is EmptyLang!21127) r1!6218))))

(declare-fun bm!728796 () Bool)

(declare-fun isEmpty!42364 (List!73986) Bool)

(assert (=> bm!728796 (= call!728801 (isEmpty!42364 s!14237))))

(declare-fun b!7861281 () Bool)

(declare-fun tail!15618 (List!73986) List!73986)

(assert (=> b!7861281 (= e!4645606 (matchR!10563 (derivativeStep!6360 r1!6218 (head!16075 s!14237)) (tail!15618 s!14237)))))

(declare-fun b!7861282 () Bool)

(declare-fun lt!2680406 () Bool)

(assert (=> b!7861282 (= e!4645609 (= lt!2680406 call!728801))))

(declare-fun d!2354438 () Bool)

(assert (=> d!2354438 e!4645609))

(declare-fun c!1444580 () Bool)

(assert (=> d!2354438 (= c!1444580 ((_ is EmptyExpr!21127) r1!6218))))

(assert (=> d!2354438 (= lt!2680406 e!4645606)))

(declare-fun c!1444582 () Bool)

(assert (=> d!2354438 (= c!1444582 (isEmpty!42364 s!14237))))

(assert (=> d!2354438 (validRegex!11537 r1!6218)))

(assert (=> d!2354438 (= (matchR!10563 r1!6218 s!14237) lt!2680406)))

(declare-fun b!7861283 () Bool)

(assert (=> b!7861283 (= e!4645605 (not lt!2680406))))

(declare-fun b!7861284 () Bool)

(declare-fun res!3125152 () Bool)

(assert (=> b!7861284 (=> res!3125152 e!4645610)))

(assert (=> b!7861284 (= res!3125152 (not (isEmpty!42364 (tail!15618 s!14237))))))

(declare-fun b!7861285 () Bool)

(declare-fun res!3125151 () Bool)

(declare-fun e!4645604 () Bool)

(assert (=> b!7861285 (=> (not res!3125151) (not e!4645604))))

(assert (=> b!7861285 (= res!3125151 (isEmpty!42364 (tail!15618 s!14237)))))

(declare-fun b!7861286 () Bool)

(declare-fun res!3125153 () Bool)

(assert (=> b!7861286 (=> (not res!3125153) (not e!4645604))))

(assert (=> b!7861286 (= res!3125153 (not call!728801))))

(declare-fun b!7861287 () Bool)

(declare-fun res!3125154 () Bool)

(declare-fun e!4645608 () Bool)

(assert (=> b!7861287 (=> res!3125154 e!4645608)))

(assert (=> b!7861287 (= res!3125154 e!4645604)))

(declare-fun res!3125155 () Bool)

(assert (=> b!7861287 (=> (not res!3125155) (not e!4645604))))

(assert (=> b!7861287 (= res!3125155 lt!2680406)))

(declare-fun b!7861288 () Bool)

(declare-fun res!3125157 () Bool)

(assert (=> b!7861288 (=> res!3125157 e!4645608)))

(assert (=> b!7861288 (= res!3125157 (not ((_ is ElementMatch!21127) r1!6218)))))

(assert (=> b!7861288 (= e!4645605 e!4645608)))

(declare-fun b!7861289 () Bool)

(assert (=> b!7861289 (= e!4645608 e!4645607)))

(declare-fun res!3125156 () Bool)

(assert (=> b!7861289 (=> (not res!3125156) (not e!4645607))))

(assert (=> b!7861289 (= res!3125156 (not lt!2680406))))

(declare-fun b!7861290 () Bool)

(assert (=> b!7861290 (= e!4645604 (= (head!16075 s!14237) (c!1444573 r1!6218)))))

(assert (= (and d!2354438 c!1444582) b!7861278))

(assert (= (and d!2354438 (not c!1444582)) b!7861281))

(assert (= (and d!2354438 c!1444580) b!7861282))

(assert (= (and d!2354438 (not c!1444580)) b!7861280))

(assert (= (and b!7861280 c!1444581) b!7861283))

(assert (= (and b!7861280 (not c!1444581)) b!7861288))

(assert (= (and b!7861288 (not res!3125157)) b!7861287))

(assert (= (and b!7861287 res!3125155) b!7861286))

(assert (= (and b!7861286 res!3125153) b!7861285))

(assert (= (and b!7861285 res!3125151) b!7861290))

(assert (= (and b!7861287 (not res!3125154)) b!7861289))

(assert (= (and b!7861289 res!3125156) b!7861277))

(assert (= (and b!7861277 (not res!3125158)) b!7861284))

(assert (= (and b!7861284 (not res!3125152)) b!7861279))

(assert (= (or b!7861282 b!7861277 b!7861286) bm!728796))

(declare-fun m!8262432 () Bool)

(assert (=> b!7861278 m!8262432))

(declare-fun m!8262434 () Bool)

(assert (=> b!7861285 m!8262434))

(assert (=> b!7861285 m!8262434))

(declare-fun m!8262436 () Bool)

(assert (=> b!7861285 m!8262436))

(assert (=> b!7861284 m!8262434))

(assert (=> b!7861284 m!8262434))

(assert (=> b!7861284 m!8262436))

(declare-fun m!8262438 () Bool)

(assert (=> d!2354438 m!8262438))

(assert (=> d!2354438 m!8262422))

(declare-fun m!8262440 () Bool)

(assert (=> b!7861290 m!8262440))

(assert (=> b!7861281 m!8262440))

(assert (=> b!7861281 m!8262440))

(declare-fun m!8262442 () Bool)

(assert (=> b!7861281 m!8262442))

(assert (=> b!7861281 m!8262434))

(assert (=> b!7861281 m!8262442))

(assert (=> b!7861281 m!8262434))

(declare-fun m!8262444 () Bool)

(assert (=> b!7861281 m!8262444))

(assert (=> b!7861279 m!8262440))

(assert (=> bm!728796 m!8262438))

(assert (=> b!7861236 d!2354438))

(declare-fun d!2354442 () Bool)

(declare-fun nullableFct!3708 (Regex!21127) Bool)

(assert (=> d!2354442 (= (nullable!9397 r2!6156) (nullableFct!3708 r2!6156))))

(declare-fun bs!1967201 () Bool)

(assert (= bs!1967201 d!2354442))

(declare-fun m!8262446 () Bool)

(assert (=> bs!1967201 m!8262446))

(assert (=> b!7861237 d!2354442))

(declare-fun bm!728803 () Bool)

(declare-fun call!728808 () Bool)

(declare-fun c!1444588 () Bool)

(assert (=> bm!728803 (= call!728808 (validRegex!11537 (ite c!1444588 (regTwo!42767 r1!6218) (regTwo!42766 r1!6218))))))

(declare-fun d!2354444 () Bool)

(declare-fun res!3125172 () Bool)

(declare-fun e!4645629 () Bool)

(assert (=> d!2354444 (=> res!3125172 e!4645629)))

(assert (=> d!2354444 (= res!3125172 ((_ is ElementMatch!21127) r1!6218))))

(assert (=> d!2354444 (= (validRegex!11537 r1!6218) e!4645629)))

(declare-fun b!7861309 () Bool)

(declare-fun e!4645628 () Bool)

(declare-fun e!4645626 () Bool)

(assert (=> b!7861309 (= e!4645628 e!4645626)))

(declare-fun res!3125171 () Bool)

(assert (=> b!7861309 (= res!3125171 (not (nullable!9397 (reg!21456 r1!6218))))))

(assert (=> b!7861309 (=> (not res!3125171) (not e!4645626))))

(declare-fun b!7861310 () Bool)

(declare-fun e!4645625 () Bool)

(assert (=> b!7861310 (= e!4645625 call!728808)))

(declare-fun b!7861311 () Bool)

(declare-fun e!4645630 () Bool)

(assert (=> b!7861311 (= e!4645630 call!728808)))

(declare-fun b!7861312 () Bool)

(declare-fun res!3125170 () Bool)

(assert (=> b!7861312 (=> (not res!3125170) (not e!4645625))))

(declare-fun call!728809 () Bool)

(assert (=> b!7861312 (= res!3125170 call!728809)))

(declare-fun e!4645631 () Bool)

(assert (=> b!7861312 (= e!4645631 e!4645625)))

(declare-fun b!7861313 () Bool)

(assert (=> b!7861313 (= e!4645629 e!4645628)))

(declare-fun c!1444587 () Bool)

(assert (=> b!7861313 (= c!1444587 ((_ is Star!21127) r1!6218))))

(declare-fun b!7861314 () Bool)

(declare-fun call!728810 () Bool)

(assert (=> b!7861314 (= e!4645626 call!728810)))

(declare-fun b!7861315 () Bool)

(declare-fun e!4645627 () Bool)

(assert (=> b!7861315 (= e!4645627 e!4645630)))

(declare-fun res!3125173 () Bool)

(assert (=> b!7861315 (=> (not res!3125173) (not e!4645630))))

(assert (=> b!7861315 (= res!3125173 call!728809)))

(declare-fun bm!728804 () Bool)

(assert (=> bm!728804 (= call!728810 (validRegex!11537 (ite c!1444587 (reg!21456 r1!6218) (ite c!1444588 (regOne!42767 r1!6218) (regOne!42766 r1!6218)))))))

(declare-fun b!7861316 () Bool)

(assert (=> b!7861316 (= e!4645628 e!4645631)))

(assert (=> b!7861316 (= c!1444588 ((_ is Union!21127) r1!6218))))

(declare-fun bm!728805 () Bool)

(assert (=> bm!728805 (= call!728809 call!728810)))

(declare-fun b!7861317 () Bool)

(declare-fun res!3125169 () Bool)

(assert (=> b!7861317 (=> res!3125169 e!4645627)))

(assert (=> b!7861317 (= res!3125169 (not ((_ is Concat!29972) r1!6218)))))

(assert (=> b!7861317 (= e!4645631 e!4645627)))

(assert (= (and d!2354444 (not res!3125172)) b!7861313))

(assert (= (and b!7861313 c!1444587) b!7861309))

(assert (= (and b!7861313 (not c!1444587)) b!7861316))

(assert (= (and b!7861309 res!3125171) b!7861314))

(assert (= (and b!7861316 c!1444588) b!7861312))

(assert (= (and b!7861316 (not c!1444588)) b!7861317))

(assert (= (and b!7861312 res!3125170) b!7861310))

(assert (= (and b!7861317 (not res!3125169)) b!7861315))

(assert (= (and b!7861315 res!3125173) b!7861311))

(assert (= (or b!7861310 b!7861311) bm!728803))

(assert (= (or b!7861312 b!7861315) bm!728805))

(assert (= (or b!7861314 bm!728805) bm!728804))

(declare-fun m!8262448 () Bool)

(assert (=> bm!728803 m!8262448))

(declare-fun m!8262450 () Bool)

(assert (=> b!7861309 m!8262450))

(declare-fun m!8262452 () Bool)

(assert (=> bm!728804 m!8262452))

(assert (=> start!743638 d!2354444))

(declare-fun bm!728822 () Bool)

(declare-fun c!1444613 () Bool)

(declare-fun c!1444610 () Bool)

(declare-fun call!728827 () Regex!21127)

(assert (=> bm!728822 (= call!728827 (derivativeStep!6360 (ite c!1444613 (regTwo!42767 (Concat!29972 r2!6156 r1!6218)) (ite c!1444610 (regTwo!42766 (Concat!29972 r2!6156 r1!6218)) (regOne!42766 (Concat!29972 r2!6156 r1!6218)))) (h!80310 s!14237)))))

(declare-fun bm!728823 () Bool)

(declare-fun call!728828 () Regex!21127)

(assert (=> bm!728823 (= call!728828 call!728827)))

(declare-fun b!7861358 () Bool)

(declare-fun e!4645654 () Regex!21127)

(assert (=> b!7861358 (= e!4645654 (ite (= (h!80310 s!14237) (c!1444573 (Concat!29972 r2!6156 r1!6218))) EmptyExpr!21127 EmptyLang!21127))))

(declare-fun b!7861359 () Bool)

(declare-fun e!4645653 () Regex!21127)

(declare-fun call!728829 () Regex!21127)

(assert (=> b!7861359 (= e!4645653 (Concat!29972 call!728829 (Concat!29972 r2!6156 r1!6218)))))

(declare-fun b!7861360 () Bool)

(declare-fun e!4645655 () Regex!21127)

(assert (=> b!7861360 (= e!4645655 e!4645654)))

(declare-fun c!1444611 () Bool)

(assert (=> b!7861360 (= c!1444611 ((_ is ElementMatch!21127) (Concat!29972 r2!6156 r1!6218)))))

(declare-fun b!7861361 () Bool)

(assert (=> b!7861361 (= e!4645655 EmptyLang!21127)))

(declare-fun e!4645656 () Regex!21127)

(declare-fun b!7861362 () Bool)

(assert (=> b!7861362 (= e!4645656 (Union!21127 (Concat!29972 call!728828 (regTwo!42766 (Concat!29972 r2!6156 r1!6218))) EmptyLang!21127))))

(declare-fun b!7861363 () Bool)

(assert (=> b!7861363 (= c!1444610 (nullable!9397 (regOne!42766 (Concat!29972 r2!6156 r1!6218))))))

(assert (=> b!7861363 (= e!4645653 e!4645656)))

(declare-fun b!7861364 () Bool)

(assert (=> b!7861364 (= e!4645656 (Union!21127 (Concat!29972 call!728829 (regTwo!42766 (Concat!29972 r2!6156 r1!6218))) call!728828))))

(declare-fun b!7861365 () Bool)

(declare-fun e!4645652 () Regex!21127)

(assert (=> b!7861365 (= e!4645652 e!4645653)))

(declare-fun c!1444609 () Bool)

(assert (=> b!7861365 (= c!1444609 ((_ is Star!21127) (Concat!29972 r2!6156 r1!6218)))))

(declare-fun b!7861366 () Bool)

(declare-fun call!728830 () Regex!21127)

(assert (=> b!7861366 (= e!4645652 (Union!21127 call!728830 call!728827))))

(declare-fun bm!728824 () Bool)

(assert (=> bm!728824 (= call!728829 call!728830)))

(declare-fun d!2354446 () Bool)

(declare-fun lt!2680411 () Regex!21127)

(assert (=> d!2354446 (validRegex!11537 lt!2680411)))

(assert (=> d!2354446 (= lt!2680411 e!4645655)))

(declare-fun c!1444612 () Bool)

(assert (=> d!2354446 (= c!1444612 (or ((_ is EmptyExpr!21127) (Concat!29972 r2!6156 r1!6218)) ((_ is EmptyLang!21127) (Concat!29972 r2!6156 r1!6218))))))

(assert (=> d!2354446 (validRegex!11537 (Concat!29972 r2!6156 r1!6218))))

(assert (=> d!2354446 (= (derivativeStep!6360 (Concat!29972 r2!6156 r1!6218) (h!80310 s!14237)) lt!2680411)))

(declare-fun b!7861367 () Bool)

(assert (=> b!7861367 (= c!1444613 ((_ is Union!21127) (Concat!29972 r2!6156 r1!6218)))))

(assert (=> b!7861367 (= e!4645654 e!4645652)))

(declare-fun bm!728825 () Bool)

(assert (=> bm!728825 (= call!728830 (derivativeStep!6360 (ite c!1444613 (regOne!42767 (Concat!29972 r2!6156 r1!6218)) (ite c!1444609 (reg!21456 (Concat!29972 r2!6156 r1!6218)) (regOne!42766 (Concat!29972 r2!6156 r1!6218)))) (h!80310 s!14237)))))

(assert (= (and d!2354446 c!1444612) b!7861361))

(assert (= (and d!2354446 (not c!1444612)) b!7861360))

(assert (= (and b!7861360 c!1444611) b!7861358))

(assert (= (and b!7861360 (not c!1444611)) b!7861367))

(assert (= (and b!7861367 c!1444613) b!7861366))

(assert (= (and b!7861367 (not c!1444613)) b!7861365))

(assert (= (and b!7861365 c!1444609) b!7861359))

(assert (= (and b!7861365 (not c!1444609)) b!7861363))

(assert (= (and b!7861363 c!1444610) b!7861364))

(assert (= (and b!7861363 (not c!1444610)) b!7861362))

(assert (= (or b!7861364 b!7861362) bm!728823))

(assert (= (or b!7861359 b!7861364) bm!728824))

(assert (= (or b!7861366 bm!728823) bm!728822))

(assert (= (or b!7861366 bm!728824) bm!728825))

(declare-fun m!8262454 () Bool)

(assert (=> bm!728822 m!8262454))

(declare-fun m!8262456 () Bool)

(assert (=> b!7861363 m!8262456))

(declare-fun m!8262458 () Bool)

(assert (=> d!2354446 m!8262458))

(declare-fun m!8262460 () Bool)

(assert (=> d!2354446 m!8262460))

(declare-fun m!8262462 () Bool)

(assert (=> bm!728825 m!8262462))

(assert (=> b!7861244 d!2354446))

(declare-fun c!1444618 () Bool)

(declare-fun c!1444615 () Bool)

(declare-fun call!728831 () Regex!21127)

(declare-fun bm!728826 () Bool)

(assert (=> bm!728826 (= call!728831 (derivativeStep!6360 (ite c!1444618 (regTwo!42767 r2!6156) (ite c!1444615 (regTwo!42766 r2!6156) (regOne!42766 r2!6156))) (h!80310 s!14237)))))

(declare-fun bm!728827 () Bool)

(declare-fun call!728832 () Regex!21127)

(assert (=> bm!728827 (= call!728832 call!728831)))

(declare-fun b!7861368 () Bool)

(declare-fun e!4645659 () Regex!21127)

(assert (=> b!7861368 (= e!4645659 (ite (= (h!80310 s!14237) (c!1444573 r2!6156)) EmptyExpr!21127 EmptyLang!21127))))

(declare-fun b!7861369 () Bool)

(declare-fun e!4645658 () Regex!21127)

(declare-fun call!728833 () Regex!21127)

(assert (=> b!7861369 (= e!4645658 (Concat!29972 call!728833 r2!6156))))

(declare-fun b!7861370 () Bool)

(declare-fun e!4645660 () Regex!21127)

(assert (=> b!7861370 (= e!4645660 e!4645659)))

(declare-fun c!1444616 () Bool)

(assert (=> b!7861370 (= c!1444616 ((_ is ElementMatch!21127) r2!6156))))

(declare-fun b!7861371 () Bool)

(assert (=> b!7861371 (= e!4645660 EmptyLang!21127)))

(declare-fun b!7861372 () Bool)

(declare-fun e!4645661 () Regex!21127)

(assert (=> b!7861372 (= e!4645661 (Union!21127 (Concat!29972 call!728832 (regTwo!42766 r2!6156)) EmptyLang!21127))))

(declare-fun b!7861373 () Bool)

(assert (=> b!7861373 (= c!1444615 (nullable!9397 (regOne!42766 r2!6156)))))

(assert (=> b!7861373 (= e!4645658 e!4645661)))

(declare-fun b!7861374 () Bool)

(assert (=> b!7861374 (= e!4645661 (Union!21127 (Concat!29972 call!728833 (regTwo!42766 r2!6156)) call!728832))))

(declare-fun b!7861375 () Bool)

(declare-fun e!4645657 () Regex!21127)

(assert (=> b!7861375 (= e!4645657 e!4645658)))

(declare-fun c!1444614 () Bool)

(assert (=> b!7861375 (= c!1444614 ((_ is Star!21127) r2!6156))))

(declare-fun b!7861376 () Bool)

(declare-fun call!728834 () Regex!21127)

(assert (=> b!7861376 (= e!4645657 (Union!21127 call!728834 call!728831))))

(declare-fun bm!728828 () Bool)

(assert (=> bm!728828 (= call!728833 call!728834)))

(declare-fun d!2354448 () Bool)

(declare-fun lt!2680412 () Regex!21127)

(assert (=> d!2354448 (validRegex!11537 lt!2680412)))

(assert (=> d!2354448 (= lt!2680412 e!4645660)))

(declare-fun c!1444617 () Bool)

(assert (=> d!2354448 (= c!1444617 (or ((_ is EmptyExpr!21127) r2!6156) ((_ is EmptyLang!21127) r2!6156)))))

(assert (=> d!2354448 (validRegex!11537 r2!6156)))

(assert (=> d!2354448 (= (derivativeStep!6360 r2!6156 (h!80310 s!14237)) lt!2680412)))

(declare-fun b!7861377 () Bool)

(assert (=> b!7861377 (= c!1444618 ((_ is Union!21127) r2!6156))))

(assert (=> b!7861377 (= e!4645659 e!4645657)))

(declare-fun bm!728829 () Bool)

(assert (=> bm!728829 (= call!728834 (derivativeStep!6360 (ite c!1444618 (regOne!42767 r2!6156) (ite c!1444614 (reg!21456 r2!6156) (regOne!42766 r2!6156))) (h!80310 s!14237)))))

(assert (= (and d!2354448 c!1444617) b!7861371))

(assert (= (and d!2354448 (not c!1444617)) b!7861370))

(assert (= (and b!7861370 c!1444616) b!7861368))

(assert (= (and b!7861370 (not c!1444616)) b!7861377))

(assert (= (and b!7861377 c!1444618) b!7861376))

(assert (= (and b!7861377 (not c!1444618)) b!7861375))

(assert (= (and b!7861375 c!1444614) b!7861369))

(assert (= (and b!7861375 (not c!1444614)) b!7861373))

(assert (= (and b!7861373 c!1444615) b!7861374))

(assert (= (and b!7861373 (not c!1444615)) b!7861372))

(assert (= (or b!7861374 b!7861372) bm!728827))

(assert (= (or b!7861369 b!7861374) bm!728828))

(assert (= (or b!7861376 bm!728827) bm!728826))

(assert (= (or b!7861376 bm!728828) bm!728829))

(declare-fun m!8262464 () Bool)

(assert (=> bm!728826 m!8262464))

(declare-fun m!8262466 () Bool)

(assert (=> b!7861373 m!8262466))

(declare-fun m!8262468 () Bool)

(assert (=> d!2354448 m!8262468))

(assert (=> d!2354448 m!8262418))

(declare-fun m!8262470 () Bool)

(assert (=> bm!728829 m!8262470))

(assert (=> b!7861244 d!2354448))

(declare-fun c!1444623 () Bool)

(declare-fun c!1444620 () Bool)

(declare-fun call!728835 () Regex!21127)

(declare-fun bm!728830 () Bool)

(assert (=> bm!728830 (= call!728835 (derivativeStep!6360 (ite c!1444623 (regTwo!42767 r1!6218) (ite c!1444620 (regTwo!42766 r1!6218) (regOne!42766 r1!6218))) (h!80310 s!14237)))))

(declare-fun bm!728831 () Bool)

(declare-fun call!728836 () Regex!21127)

(assert (=> bm!728831 (= call!728836 call!728835)))

(declare-fun b!7861378 () Bool)

(declare-fun e!4645664 () Regex!21127)

(assert (=> b!7861378 (= e!4645664 (ite (= (h!80310 s!14237) (c!1444573 r1!6218)) EmptyExpr!21127 EmptyLang!21127))))

(declare-fun b!7861379 () Bool)

(declare-fun e!4645663 () Regex!21127)

(declare-fun call!728837 () Regex!21127)

(assert (=> b!7861379 (= e!4645663 (Concat!29972 call!728837 r1!6218))))

(declare-fun b!7861380 () Bool)

(declare-fun e!4645665 () Regex!21127)

(assert (=> b!7861380 (= e!4645665 e!4645664)))

(declare-fun c!1444621 () Bool)

(assert (=> b!7861380 (= c!1444621 ((_ is ElementMatch!21127) r1!6218))))

(declare-fun b!7861381 () Bool)

(assert (=> b!7861381 (= e!4645665 EmptyLang!21127)))

(declare-fun b!7861382 () Bool)

(declare-fun e!4645666 () Regex!21127)

(assert (=> b!7861382 (= e!4645666 (Union!21127 (Concat!29972 call!728836 (regTwo!42766 r1!6218)) EmptyLang!21127))))

(declare-fun b!7861383 () Bool)

(assert (=> b!7861383 (= c!1444620 (nullable!9397 (regOne!42766 r1!6218)))))

(assert (=> b!7861383 (= e!4645663 e!4645666)))

(declare-fun b!7861384 () Bool)

(assert (=> b!7861384 (= e!4645666 (Union!21127 (Concat!29972 call!728837 (regTwo!42766 r1!6218)) call!728836))))

(declare-fun b!7861385 () Bool)

(declare-fun e!4645662 () Regex!21127)

(assert (=> b!7861385 (= e!4645662 e!4645663)))

(declare-fun c!1444619 () Bool)

(assert (=> b!7861385 (= c!1444619 ((_ is Star!21127) r1!6218))))

(declare-fun b!7861386 () Bool)

(declare-fun call!728838 () Regex!21127)

(assert (=> b!7861386 (= e!4645662 (Union!21127 call!728838 call!728835))))

(declare-fun bm!728832 () Bool)

(assert (=> bm!728832 (= call!728837 call!728838)))

(declare-fun d!2354450 () Bool)

(declare-fun lt!2680413 () Regex!21127)

(assert (=> d!2354450 (validRegex!11537 lt!2680413)))

(assert (=> d!2354450 (= lt!2680413 e!4645665)))

(declare-fun c!1444622 () Bool)

(assert (=> d!2354450 (= c!1444622 (or ((_ is EmptyExpr!21127) r1!6218) ((_ is EmptyLang!21127) r1!6218)))))

(assert (=> d!2354450 (validRegex!11537 r1!6218)))

(assert (=> d!2354450 (= (derivativeStep!6360 r1!6218 (h!80310 s!14237)) lt!2680413)))

(declare-fun b!7861387 () Bool)

(assert (=> b!7861387 (= c!1444623 ((_ is Union!21127) r1!6218))))

(assert (=> b!7861387 (= e!4645664 e!4645662)))

(declare-fun bm!728833 () Bool)

(assert (=> bm!728833 (= call!728838 (derivativeStep!6360 (ite c!1444623 (regOne!42767 r1!6218) (ite c!1444619 (reg!21456 r1!6218) (regOne!42766 r1!6218))) (h!80310 s!14237)))))

(assert (= (and d!2354450 c!1444622) b!7861381))

(assert (= (and d!2354450 (not c!1444622)) b!7861380))

(assert (= (and b!7861380 c!1444621) b!7861378))

(assert (= (and b!7861380 (not c!1444621)) b!7861387))

(assert (= (and b!7861387 c!1444623) b!7861386))

(assert (= (and b!7861387 (not c!1444623)) b!7861385))

(assert (= (and b!7861385 c!1444619) b!7861379))

(assert (= (and b!7861385 (not c!1444619)) b!7861383))

(assert (= (and b!7861383 c!1444620) b!7861384))

(assert (= (and b!7861383 (not c!1444620)) b!7861382))

(assert (= (or b!7861384 b!7861382) bm!728831))

(assert (= (or b!7861379 b!7861384) bm!728832))

(assert (= (or b!7861386 bm!728831) bm!728830))

(assert (= (or b!7861386 bm!728832) bm!728833))

(declare-fun m!8262472 () Bool)

(assert (=> bm!728830 m!8262472))

(declare-fun m!8262474 () Bool)

(assert (=> b!7861383 m!8262474))

(declare-fun m!8262476 () Bool)

(assert (=> d!2354450 m!8262476))

(assert (=> d!2354450 m!8262422))

(declare-fun m!8262478 () Bool)

(assert (=> bm!728833 m!8262478))

(assert (=> b!7861244 d!2354450))

(declare-fun bm!728834 () Bool)

(declare-fun call!728839 () Bool)

(declare-fun c!1444625 () Bool)

(assert (=> bm!728834 (= call!728839 (validRegex!11537 (ite c!1444625 (regTwo!42767 r2!6156) (regTwo!42766 r2!6156))))))

(declare-fun d!2354452 () Bool)

(declare-fun res!3125177 () Bool)

(declare-fun e!4645671 () Bool)

(assert (=> d!2354452 (=> res!3125177 e!4645671)))

(assert (=> d!2354452 (= res!3125177 ((_ is ElementMatch!21127) r2!6156))))

(assert (=> d!2354452 (= (validRegex!11537 r2!6156) e!4645671)))

(declare-fun b!7861388 () Bool)

(declare-fun e!4645670 () Bool)

(declare-fun e!4645668 () Bool)

(assert (=> b!7861388 (= e!4645670 e!4645668)))

(declare-fun res!3125176 () Bool)

(assert (=> b!7861388 (= res!3125176 (not (nullable!9397 (reg!21456 r2!6156))))))

(assert (=> b!7861388 (=> (not res!3125176) (not e!4645668))))

(declare-fun b!7861389 () Bool)

(declare-fun e!4645667 () Bool)

(assert (=> b!7861389 (= e!4645667 call!728839)))

(declare-fun b!7861390 () Bool)

(declare-fun e!4645672 () Bool)

(assert (=> b!7861390 (= e!4645672 call!728839)))

(declare-fun b!7861391 () Bool)

(declare-fun res!3125175 () Bool)

(assert (=> b!7861391 (=> (not res!3125175) (not e!4645667))))

(declare-fun call!728840 () Bool)

(assert (=> b!7861391 (= res!3125175 call!728840)))

(declare-fun e!4645673 () Bool)

(assert (=> b!7861391 (= e!4645673 e!4645667)))

(declare-fun b!7861392 () Bool)

(assert (=> b!7861392 (= e!4645671 e!4645670)))

(declare-fun c!1444624 () Bool)

(assert (=> b!7861392 (= c!1444624 ((_ is Star!21127) r2!6156))))

(declare-fun b!7861393 () Bool)

(declare-fun call!728841 () Bool)

(assert (=> b!7861393 (= e!4645668 call!728841)))

(declare-fun b!7861394 () Bool)

(declare-fun e!4645669 () Bool)

(assert (=> b!7861394 (= e!4645669 e!4645672)))

(declare-fun res!3125178 () Bool)

(assert (=> b!7861394 (=> (not res!3125178) (not e!4645672))))

(assert (=> b!7861394 (= res!3125178 call!728840)))

(declare-fun bm!728835 () Bool)

(assert (=> bm!728835 (= call!728841 (validRegex!11537 (ite c!1444624 (reg!21456 r2!6156) (ite c!1444625 (regOne!42767 r2!6156) (regOne!42766 r2!6156)))))))

(declare-fun b!7861395 () Bool)

(assert (=> b!7861395 (= e!4645670 e!4645673)))

(assert (=> b!7861395 (= c!1444625 ((_ is Union!21127) r2!6156))))

(declare-fun bm!728836 () Bool)

(assert (=> bm!728836 (= call!728840 call!728841)))

(declare-fun b!7861396 () Bool)

(declare-fun res!3125174 () Bool)

(assert (=> b!7861396 (=> res!3125174 e!4645669)))

(assert (=> b!7861396 (= res!3125174 (not ((_ is Concat!29972) r2!6156)))))

(assert (=> b!7861396 (= e!4645673 e!4645669)))

(assert (= (and d!2354452 (not res!3125177)) b!7861392))

(assert (= (and b!7861392 c!1444624) b!7861388))

(assert (= (and b!7861392 (not c!1444624)) b!7861395))

(assert (= (and b!7861388 res!3125176) b!7861393))

(assert (= (and b!7861395 c!1444625) b!7861391))

(assert (= (and b!7861395 (not c!1444625)) b!7861396))

(assert (= (and b!7861391 res!3125175) b!7861389))

(assert (= (and b!7861396 (not res!3125174)) b!7861394))

(assert (= (and b!7861394 res!3125178) b!7861390))

(assert (= (or b!7861389 b!7861390) bm!728834))

(assert (= (or b!7861391 b!7861394) bm!728836))

(assert (= (or b!7861393 bm!728836) bm!728835))

(declare-fun m!8262480 () Bool)

(assert (=> bm!728834 m!8262480))

(declare-fun m!8262482 () Bool)

(assert (=> b!7861388 m!8262482))

(declare-fun m!8262484 () Bool)

(assert (=> bm!728835 m!8262484))

(assert (=> b!7861245 d!2354452))

(declare-fun b!7861408 () Bool)

(declare-fun e!4645676 () Bool)

(declare-fun tp!2329899 () Bool)

(declare-fun tp!2329896 () Bool)

(assert (=> b!7861408 (= e!4645676 (and tp!2329899 tp!2329896))))

(declare-fun b!7861409 () Bool)

(declare-fun tp!2329897 () Bool)

(assert (=> b!7861409 (= e!4645676 tp!2329897)))

(assert (=> b!7861247 (= tp!2329877 e!4645676)))

(declare-fun b!7861410 () Bool)

(declare-fun tp!2329898 () Bool)

(declare-fun tp!2329895 () Bool)

(assert (=> b!7861410 (= e!4645676 (and tp!2329898 tp!2329895))))

(declare-fun b!7861407 () Bool)

(assert (=> b!7861407 (= e!4645676 tp_is_empty!52653)))

(assert (= (and b!7861247 ((_ is ElementMatch!21127) (regOne!42766 r1!6218))) b!7861407))

(assert (= (and b!7861247 ((_ is Concat!29972) (regOne!42766 r1!6218))) b!7861408))

(assert (= (and b!7861247 ((_ is Star!21127) (regOne!42766 r1!6218))) b!7861409))

(assert (= (and b!7861247 ((_ is Union!21127) (regOne!42766 r1!6218))) b!7861410))

(declare-fun b!7861412 () Bool)

(declare-fun e!4645677 () Bool)

(declare-fun tp!2329904 () Bool)

(declare-fun tp!2329901 () Bool)

(assert (=> b!7861412 (= e!4645677 (and tp!2329904 tp!2329901))))

(declare-fun b!7861413 () Bool)

(declare-fun tp!2329902 () Bool)

(assert (=> b!7861413 (= e!4645677 tp!2329902)))

(assert (=> b!7861247 (= tp!2329882 e!4645677)))

(declare-fun b!7861414 () Bool)

(declare-fun tp!2329903 () Bool)

(declare-fun tp!2329900 () Bool)

(assert (=> b!7861414 (= e!4645677 (and tp!2329903 tp!2329900))))

(declare-fun b!7861411 () Bool)

(assert (=> b!7861411 (= e!4645677 tp_is_empty!52653)))

(assert (= (and b!7861247 ((_ is ElementMatch!21127) (regTwo!42766 r1!6218))) b!7861411))

(assert (= (and b!7861247 ((_ is Concat!29972) (regTwo!42766 r1!6218))) b!7861412))

(assert (= (and b!7861247 ((_ is Star!21127) (regTwo!42766 r1!6218))) b!7861413))

(assert (= (and b!7861247 ((_ is Union!21127) (regTwo!42766 r1!6218))) b!7861414))

(declare-fun b!7861416 () Bool)

(declare-fun e!4645678 () Bool)

(declare-fun tp!2329909 () Bool)

(declare-fun tp!2329906 () Bool)

(assert (=> b!7861416 (= e!4645678 (and tp!2329909 tp!2329906))))

(declare-fun b!7861417 () Bool)

(declare-fun tp!2329907 () Bool)

(assert (=> b!7861417 (= e!4645678 tp!2329907)))

(assert (=> b!7861240 (= tp!2329874 e!4645678)))

(declare-fun b!7861418 () Bool)

(declare-fun tp!2329908 () Bool)

(declare-fun tp!2329905 () Bool)

(assert (=> b!7861418 (= e!4645678 (and tp!2329908 tp!2329905))))

(declare-fun b!7861415 () Bool)

(assert (=> b!7861415 (= e!4645678 tp_is_empty!52653)))

(assert (= (and b!7861240 ((_ is ElementMatch!21127) (regOne!42767 r2!6156))) b!7861415))

(assert (= (and b!7861240 ((_ is Concat!29972) (regOne!42767 r2!6156))) b!7861416))

(assert (= (and b!7861240 ((_ is Star!21127) (regOne!42767 r2!6156))) b!7861417))

(assert (= (and b!7861240 ((_ is Union!21127) (regOne!42767 r2!6156))) b!7861418))

(declare-fun b!7861420 () Bool)

(declare-fun e!4645679 () Bool)

(declare-fun tp!2329914 () Bool)

(declare-fun tp!2329911 () Bool)

(assert (=> b!7861420 (= e!4645679 (and tp!2329914 tp!2329911))))

(declare-fun b!7861421 () Bool)

(declare-fun tp!2329912 () Bool)

(assert (=> b!7861421 (= e!4645679 tp!2329912)))

(assert (=> b!7861240 (= tp!2329883 e!4645679)))

(declare-fun b!7861422 () Bool)

(declare-fun tp!2329913 () Bool)

(declare-fun tp!2329910 () Bool)

(assert (=> b!7861422 (= e!4645679 (and tp!2329913 tp!2329910))))

(declare-fun b!7861419 () Bool)

(assert (=> b!7861419 (= e!4645679 tp_is_empty!52653)))

(assert (= (and b!7861240 ((_ is ElementMatch!21127) (regTwo!42767 r2!6156))) b!7861419))

(assert (= (and b!7861240 ((_ is Concat!29972) (regTwo!42767 r2!6156))) b!7861420))

(assert (= (and b!7861240 ((_ is Star!21127) (regTwo!42767 r2!6156))) b!7861421))

(assert (= (and b!7861240 ((_ is Union!21127) (regTwo!42767 r2!6156))) b!7861422))

(declare-fun b!7861424 () Bool)

(declare-fun e!4645680 () Bool)

(declare-fun tp!2329919 () Bool)

(declare-fun tp!2329916 () Bool)

(assert (=> b!7861424 (= e!4645680 (and tp!2329919 tp!2329916))))

(declare-fun b!7861425 () Bool)

(declare-fun tp!2329917 () Bool)

(assert (=> b!7861425 (= e!4645680 tp!2329917)))

(assert (=> b!7861235 (= tp!2329876 e!4645680)))

(declare-fun b!7861426 () Bool)

(declare-fun tp!2329918 () Bool)

(declare-fun tp!2329915 () Bool)

(assert (=> b!7861426 (= e!4645680 (and tp!2329918 tp!2329915))))

(declare-fun b!7861423 () Bool)

(assert (=> b!7861423 (= e!4645680 tp_is_empty!52653)))

(assert (= (and b!7861235 ((_ is ElementMatch!21127) (reg!21456 r1!6218))) b!7861423))

(assert (= (and b!7861235 ((_ is Concat!29972) (reg!21456 r1!6218))) b!7861424))

(assert (= (and b!7861235 ((_ is Star!21127) (reg!21456 r1!6218))) b!7861425))

(assert (= (and b!7861235 ((_ is Union!21127) (reg!21456 r1!6218))) b!7861426))

(declare-fun b!7861441 () Bool)

(declare-fun e!4645688 () Bool)

(declare-fun tp!2329922 () Bool)

(assert (=> b!7861441 (= e!4645688 (and tp_is_empty!52653 tp!2329922))))

(assert (=> b!7861246 (= tp!2329880 e!4645688)))

(assert (= (and b!7861246 ((_ is Cons!73862) (t!388721 s!14237))) b!7861441))

(declare-fun b!7861443 () Bool)

(declare-fun e!4645689 () Bool)

(declare-fun tp!2329927 () Bool)

(declare-fun tp!2329924 () Bool)

(assert (=> b!7861443 (= e!4645689 (and tp!2329927 tp!2329924))))

(declare-fun b!7861444 () Bool)

(declare-fun tp!2329925 () Bool)

(assert (=> b!7861444 (= e!4645689 tp!2329925)))

(assert (=> b!7861248 (= tp!2329875 e!4645689)))

(declare-fun b!7861445 () Bool)

(declare-fun tp!2329926 () Bool)

(declare-fun tp!2329923 () Bool)

(assert (=> b!7861445 (= e!4645689 (and tp!2329926 tp!2329923))))

(declare-fun b!7861442 () Bool)

(assert (=> b!7861442 (= e!4645689 tp_is_empty!52653)))

(assert (= (and b!7861248 ((_ is ElementMatch!21127) (reg!21456 r2!6156))) b!7861442))

(assert (= (and b!7861248 ((_ is Concat!29972) (reg!21456 r2!6156))) b!7861443))

(assert (= (and b!7861248 ((_ is Star!21127) (reg!21456 r2!6156))) b!7861444))

(assert (= (and b!7861248 ((_ is Union!21127) (reg!21456 r2!6156))) b!7861445))

(declare-fun b!7861447 () Bool)

(declare-fun e!4645690 () Bool)

(declare-fun tp!2329932 () Bool)

(declare-fun tp!2329929 () Bool)

(assert (=> b!7861447 (= e!4645690 (and tp!2329932 tp!2329929))))

(declare-fun b!7861448 () Bool)

(declare-fun tp!2329930 () Bool)

(assert (=> b!7861448 (= e!4645690 tp!2329930)))

(assert (=> b!7861243 (= tp!2329879 e!4645690)))

(declare-fun b!7861449 () Bool)

(declare-fun tp!2329931 () Bool)

(declare-fun tp!2329928 () Bool)

(assert (=> b!7861449 (= e!4645690 (and tp!2329931 tp!2329928))))

(declare-fun b!7861446 () Bool)

(assert (=> b!7861446 (= e!4645690 tp_is_empty!52653)))

(assert (= (and b!7861243 ((_ is ElementMatch!21127) (regOne!42766 r2!6156))) b!7861446))

(assert (= (and b!7861243 ((_ is Concat!29972) (regOne!42766 r2!6156))) b!7861447))

(assert (= (and b!7861243 ((_ is Star!21127) (regOne!42766 r2!6156))) b!7861448))

(assert (= (and b!7861243 ((_ is Union!21127) (regOne!42766 r2!6156))) b!7861449))

(declare-fun b!7861451 () Bool)

(declare-fun e!4645691 () Bool)

(declare-fun tp!2329937 () Bool)

(declare-fun tp!2329934 () Bool)

(assert (=> b!7861451 (= e!4645691 (and tp!2329937 tp!2329934))))

(declare-fun b!7861452 () Bool)

(declare-fun tp!2329935 () Bool)

(assert (=> b!7861452 (= e!4645691 tp!2329935)))

(assert (=> b!7861243 (= tp!2329884 e!4645691)))

(declare-fun b!7861453 () Bool)

(declare-fun tp!2329936 () Bool)

(declare-fun tp!2329933 () Bool)

(assert (=> b!7861453 (= e!4645691 (and tp!2329936 tp!2329933))))

(declare-fun b!7861450 () Bool)

(assert (=> b!7861450 (= e!4645691 tp_is_empty!52653)))

(assert (= (and b!7861243 ((_ is ElementMatch!21127) (regTwo!42766 r2!6156))) b!7861450))

(assert (= (and b!7861243 ((_ is Concat!29972) (regTwo!42766 r2!6156))) b!7861451))

(assert (= (and b!7861243 ((_ is Star!21127) (regTwo!42766 r2!6156))) b!7861452))

(assert (= (and b!7861243 ((_ is Union!21127) (regTwo!42766 r2!6156))) b!7861453))

(declare-fun b!7861455 () Bool)

(declare-fun e!4645692 () Bool)

(declare-fun tp!2329942 () Bool)

(declare-fun tp!2329939 () Bool)

(assert (=> b!7861455 (= e!4645692 (and tp!2329942 tp!2329939))))

(declare-fun b!7861456 () Bool)

(declare-fun tp!2329940 () Bool)

(assert (=> b!7861456 (= e!4645692 tp!2329940)))

(assert (=> b!7861238 (= tp!2329878 e!4645692)))

(declare-fun b!7861457 () Bool)

(declare-fun tp!2329941 () Bool)

(declare-fun tp!2329938 () Bool)

(assert (=> b!7861457 (= e!4645692 (and tp!2329941 tp!2329938))))

(declare-fun b!7861454 () Bool)

(assert (=> b!7861454 (= e!4645692 tp_is_empty!52653)))

(assert (= (and b!7861238 ((_ is ElementMatch!21127) (regOne!42767 r1!6218))) b!7861454))

(assert (= (and b!7861238 ((_ is Concat!29972) (regOne!42767 r1!6218))) b!7861455))

(assert (= (and b!7861238 ((_ is Star!21127) (regOne!42767 r1!6218))) b!7861456))

(assert (= (and b!7861238 ((_ is Union!21127) (regOne!42767 r1!6218))) b!7861457))

(declare-fun b!7861459 () Bool)

(declare-fun e!4645693 () Bool)

(declare-fun tp!2329947 () Bool)

(declare-fun tp!2329944 () Bool)

(assert (=> b!7861459 (= e!4645693 (and tp!2329947 tp!2329944))))

(declare-fun b!7861460 () Bool)

(declare-fun tp!2329945 () Bool)

(assert (=> b!7861460 (= e!4645693 tp!2329945)))

(assert (=> b!7861238 (= tp!2329881 e!4645693)))

(declare-fun b!7861461 () Bool)

(declare-fun tp!2329946 () Bool)

(declare-fun tp!2329943 () Bool)

(assert (=> b!7861461 (= e!4645693 (and tp!2329946 tp!2329943))))

(declare-fun b!7861458 () Bool)

(assert (=> b!7861458 (= e!4645693 tp_is_empty!52653)))

(assert (= (and b!7861238 ((_ is ElementMatch!21127) (regTwo!42767 r1!6218))) b!7861458))

(assert (= (and b!7861238 ((_ is Concat!29972) (regTwo!42767 r1!6218))) b!7861459))

(assert (= (and b!7861238 ((_ is Star!21127) (regTwo!42767 r1!6218))) b!7861460))

(assert (= (and b!7861238 ((_ is Union!21127) (regTwo!42767 r1!6218))) b!7861461))

(check-sat (not bm!728803) (not b!7861279) (not b!7861460) (not b!7861414) (not bm!728796) (not bm!728835) (not b!7861447) (not b!7861412) (not b!7861443) (not b!7861441) (not b!7861388) (not b!7861373) (not b!7861457) (not b!7861408) (not bm!728822) (not b!7861383) (not b!7861413) (not b!7861455) (not b!7861421) tp_is_empty!52653 (not b!7861290) (not d!2354438) (not b!7861451) (not b!7861426) (not d!2354442) (not d!2354450) (not b!7861448) (not d!2354446) (not d!2354448) (not b!7861278) (not b!7861420) (not bm!728804) (not b!7861424) (not bm!728825) (not b!7861453) (not b!7861285) (not b!7861409) (not b!7861281) (not b!7861416) (not b!7861284) (not b!7861445) (not bm!728829) (not b!7861444) (not b!7861459) (not bm!728834) (not b!7861461) (not b!7861309) (not b!7861449) (not bm!728826) (not b!7861452) (not b!7861417) (not b!7861418) (not b!7861425) (not bm!728830) (not b!7861422) (not b!7861456) (not b!7861363) (not bm!728833) (not b!7861410))
(check-sat)
