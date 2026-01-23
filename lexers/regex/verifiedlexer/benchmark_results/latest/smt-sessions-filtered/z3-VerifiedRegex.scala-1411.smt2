; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74098 () Bool)

(assert start!74098)

(declare-fun b!832260 () Bool)

(declare-fun e!548031 () Bool)

(declare-datatypes ((C!4732 0))(
  ( (C!4733 (val!2614 Int)) )
))
(declare-datatypes ((Regex!2081 0))(
  ( (ElementMatch!2081 (c!135618 C!4732)) (Concat!3812 (regOne!4674 Regex!2081) (regTwo!4674 Regex!2081)) (EmptyExpr!2081) (Star!2081 (reg!2410 Regex!2081)) (EmptyLang!2081) (Union!2081 (regOne!4675 Regex!2081) (regTwo!4675 Regex!2081)) )
))
(declare-fun r!27177 () Regex!2081)

(declare-fun c!13916 () C!4732)

(declare-datatypes ((List!8907 0))(
  ( (Nil!8891) (Cons!8891 (h!14292 C!4732) (t!93199 List!8907)) )
))
(declare-fun contains!1672 (List!8907 C!4732) Bool)

(declare-fun firstChars!52 (Regex!2081) List!8907)

(assert (=> b!832260 (= e!548031 (not (contains!1672 (firstChars!52 (regTwo!4674 r!27177)) c!13916)))))

(declare-fun b!832261 () Bool)

(declare-fun res!381749 () Bool)

(assert (=> b!832261 (=> (not res!381749) (not e!548031))))

(get-info :version)

(assert (=> b!832261 (= res!381749 (and (not ((_ is EmptyExpr!2081) r!27177)) (not ((_ is EmptyLang!2081) r!27177)) (not ((_ is ElementMatch!2081) r!27177)) (not ((_ is Star!2081) r!27177)) (not ((_ is Union!2081) r!27177))))))

(declare-fun b!832262 () Bool)

(declare-fun e!548030 () Bool)

(declare-fun tp!260710 () Bool)

(declare-fun tp!260714 () Bool)

(assert (=> b!832262 (= e!548030 (and tp!260710 tp!260714))))

(declare-fun b!832263 () Bool)

(declare-fun tp!260712 () Bool)

(assert (=> b!832263 (= e!548030 tp!260712)))

(declare-fun res!381745 () Bool)

(assert (=> start!74098 (=> (not res!381745) (not e!548031))))

(declare-fun validRegex!634 (Regex!2081) Bool)

(assert (=> start!74098 (= res!381745 (validRegex!634 r!27177))))

(assert (=> start!74098 e!548031))

(assert (=> start!74098 e!548030))

(declare-fun tp_is_empty!3885 () Bool)

(assert (=> start!74098 tp_is_empty!3885))

(declare-fun b!832264 () Bool)

(declare-fun tp!260713 () Bool)

(declare-fun tp!260711 () Bool)

(assert (=> b!832264 (= e!548030 (and tp!260713 tp!260711))))

(declare-fun b!832265 () Bool)

(assert (=> b!832265 (= e!548030 tp_is_empty!3885)))

(declare-fun b!832266 () Bool)

(declare-fun res!381748 () Bool)

(assert (=> b!832266 (=> (not res!381748) (not e!548031))))

(assert (=> b!832266 (= res!381748 (contains!1672 (firstChars!52 r!27177) c!13916))))

(declare-fun b!832267 () Bool)

(declare-fun res!381747 () Bool)

(assert (=> b!832267 (=> (not res!381747) (not e!548031))))

(assert (=> b!832267 (= res!381747 (not (contains!1672 (firstChars!52 (regOne!4674 r!27177)) c!13916)))))

(declare-fun b!832268 () Bool)

(declare-fun res!381746 () Bool)

(assert (=> b!832268 (=> (not res!381746) (not e!548031))))

(assert (=> b!832268 (= res!381746 (validRegex!634 (regTwo!4674 r!27177)))))

(declare-fun b!832269 () Bool)

(declare-fun res!381744 () Bool)

(assert (=> b!832269 (=> (not res!381744) (not e!548031))))

(declare-fun nullable!532 (Regex!2081) Bool)

(assert (=> b!832269 (= res!381744 (nullable!532 (regOne!4674 r!27177)))))

(assert (= (and start!74098 res!381745) b!832266))

(assert (= (and b!832266 res!381748) b!832261))

(assert (= (and b!832261 res!381749) b!832269))

(assert (= (and b!832269 res!381744) b!832267))

(assert (= (and b!832267 res!381747) b!832268))

(assert (= (and b!832268 res!381746) b!832260))

(assert (= (and start!74098 ((_ is ElementMatch!2081) r!27177)) b!832265))

(assert (= (and start!74098 ((_ is Concat!3812) r!27177)) b!832262))

(assert (= (and start!74098 ((_ is Star!2081) r!27177)) b!832263))

(assert (= (and start!74098 ((_ is Union!2081) r!27177)) b!832264))

(declare-fun m!1068323 () Bool)

(assert (=> b!832266 m!1068323))

(assert (=> b!832266 m!1068323))

(declare-fun m!1068325 () Bool)

(assert (=> b!832266 m!1068325))

(declare-fun m!1068327 () Bool)

(assert (=> b!832268 m!1068327))

(declare-fun m!1068329 () Bool)

(assert (=> b!832260 m!1068329))

(assert (=> b!832260 m!1068329))

(declare-fun m!1068331 () Bool)

(assert (=> b!832260 m!1068331))

(declare-fun m!1068333 () Bool)

(assert (=> b!832267 m!1068333))

(assert (=> b!832267 m!1068333))

(declare-fun m!1068335 () Bool)

(assert (=> b!832267 m!1068335))

(declare-fun m!1068337 () Bool)

(assert (=> b!832269 m!1068337))

(declare-fun m!1068339 () Bool)

(assert (=> start!74098 m!1068339))

(check-sat (not b!832260) (not b!832266) (not start!74098) (not b!832262) (not b!832269) (not b!832263) (not b!832264) (not b!832268) (not b!832267) tp_is_empty!3885)
(check-sat)
(get-model)

(declare-fun d!260364 () Bool)

(declare-fun lt!317778 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1319 (List!8907) (InoxSet C!4732))

(assert (=> d!260364 (= lt!317778 (select (content!1319 (firstChars!52 (regTwo!4674 r!27177))) c!13916))))

(declare-fun e!548037 () Bool)

(assert (=> d!260364 (= lt!317778 e!548037)))

(declare-fun res!381755 () Bool)

(assert (=> d!260364 (=> (not res!381755) (not e!548037))))

(assert (=> d!260364 (= res!381755 ((_ is Cons!8891) (firstChars!52 (regTwo!4674 r!27177))))))

(assert (=> d!260364 (= (contains!1672 (firstChars!52 (regTwo!4674 r!27177)) c!13916) lt!317778)))

(declare-fun b!832274 () Bool)

(declare-fun e!548036 () Bool)

(assert (=> b!832274 (= e!548037 e!548036)))

(declare-fun res!381754 () Bool)

(assert (=> b!832274 (=> res!381754 e!548036)))

(assert (=> b!832274 (= res!381754 (= (h!14292 (firstChars!52 (regTwo!4674 r!27177))) c!13916))))

(declare-fun b!832275 () Bool)

(assert (=> b!832275 (= e!548036 (contains!1672 (t!93199 (firstChars!52 (regTwo!4674 r!27177))) c!13916))))

(assert (= (and d!260364 res!381755) b!832274))

(assert (= (and b!832274 (not res!381754)) b!832275))

(assert (=> d!260364 m!1068329))

(declare-fun m!1068341 () Bool)

(assert (=> d!260364 m!1068341))

(declare-fun m!1068343 () Bool)

(assert (=> d!260364 m!1068343))

(declare-fun m!1068345 () Bool)

(assert (=> b!832275 m!1068345))

(assert (=> b!832260 d!260364))

(declare-fun b!832322 () Bool)

(declare-fun e!548068 () List!8907)

(assert (=> b!832322 (= e!548068 (Cons!8891 (c!135618 (regTwo!4674 r!27177)) Nil!8891))))

(declare-fun d!260368 () Bool)

(declare-fun c!135640 () Bool)

(assert (=> d!260368 (= c!135640 (or ((_ is EmptyExpr!2081) (regTwo!4674 r!27177)) ((_ is EmptyLang!2081) (regTwo!4674 r!27177))))))

(declare-fun e!548067 () List!8907)

(assert (=> d!260368 (= (firstChars!52 (regTwo!4674 r!27177)) e!548067)))

(declare-fun b!832323 () Bool)

(declare-fun c!135641 () Bool)

(assert (=> b!832323 (= c!135641 (nullable!532 (regOne!4674 (regTwo!4674 r!27177))))))

(declare-fun e!548066 () List!8907)

(declare-fun e!548064 () List!8907)

(assert (=> b!832323 (= e!548066 e!548064)))

(declare-fun c!135643 () Bool)

(declare-fun bm!49293 () Bool)

(declare-fun call!49301 () List!8907)

(declare-fun c!135639 () Bool)

(assert (=> bm!49293 (= call!49301 (firstChars!52 (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))

(declare-fun b!832324 () Bool)

(declare-fun e!548065 () List!8907)

(assert (=> b!832324 (= e!548065 e!548066)))

(assert (=> b!832324 (= c!135643 ((_ is Union!2081) (regTwo!4674 r!27177)))))

(declare-fun b!832325 () Bool)

(declare-fun call!49299 () List!8907)

(assert (=> b!832325 (= e!548064 call!49299)))

(declare-fun b!832326 () Bool)

(assert (=> b!832326 (= c!135639 ((_ is Star!2081) (regTwo!4674 r!27177)))))

(assert (=> b!832326 (= e!548068 e!548065)))

(declare-fun bm!49294 () Bool)

(declare-fun call!49300 () List!8907)

(assert (=> bm!49294 (= call!49300 call!49301)))

(declare-fun bm!49295 () Bool)

(declare-fun call!49302 () List!8907)

(assert (=> bm!49295 (= call!49302 call!49300)))

(declare-fun b!832327 () Bool)

(assert (=> b!832327 (= e!548066 call!49299)))

(declare-fun b!832328 () Bool)

(assert (=> b!832328 (= e!548064 call!49302)))

(declare-fun b!832329 () Bool)

(assert (=> b!832329 (= e!548067 e!548068)))

(declare-fun c!135642 () Bool)

(assert (=> b!832329 (= c!135642 ((_ is ElementMatch!2081) (regTwo!4674 r!27177)))))

(declare-fun b!832330 () Bool)

(assert (=> b!832330 (= e!548065 call!49301)))

(declare-fun b!832331 () Bool)

(assert (=> b!832331 (= e!548067 Nil!8891)))

(declare-fun call!49298 () List!8907)

(declare-fun bm!49296 () Bool)

(declare-fun ++!2307 (List!8907 List!8907) List!8907)

(assert (=> bm!49296 (= call!49299 (++!2307 (ite c!135643 call!49298 call!49302) (ite c!135643 call!49300 call!49298)))))

(declare-fun bm!49297 () Bool)

(assert (=> bm!49297 (= call!49298 (firstChars!52 (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))

(assert (= (and d!260368 c!135640) b!832331))

(assert (= (and d!260368 (not c!135640)) b!832329))

(assert (= (and b!832329 c!135642) b!832322))

(assert (= (and b!832329 (not c!135642)) b!832326))

(assert (= (and b!832326 c!135639) b!832330))

(assert (= (and b!832326 (not c!135639)) b!832324))

(assert (= (and b!832324 c!135643) b!832327))

(assert (= (and b!832324 (not c!135643)) b!832323))

(assert (= (and b!832323 c!135641) b!832325))

(assert (= (and b!832323 (not c!135641)) b!832328))

(assert (= (or b!832325 b!832328) bm!49295))

(assert (= (or b!832327 bm!49295) bm!49294))

(assert (= (or b!832327 b!832325) bm!49297))

(assert (= (or b!832327 b!832325) bm!49296))

(assert (= (or b!832330 bm!49294) bm!49293))

(declare-fun m!1068353 () Bool)

(assert (=> b!832323 m!1068353))

(declare-fun m!1068355 () Bool)

(assert (=> bm!49293 m!1068355))

(declare-fun m!1068357 () Bool)

(assert (=> bm!49296 m!1068357))

(declare-fun m!1068359 () Bool)

(assert (=> bm!49297 m!1068359))

(assert (=> b!832260 d!260368))

(declare-fun d!260372 () Bool)

(declare-fun nullableFct!169 (Regex!2081) Bool)

(assert (=> d!260372 (= (nullable!532 (regOne!4674 r!27177)) (nullableFct!169 (regOne!4674 r!27177)))))

(declare-fun bs!229672 () Bool)

(assert (= bs!229672 d!260372))

(declare-fun m!1068361 () Bool)

(assert (=> bs!229672 m!1068361))

(assert (=> b!832269 d!260372))

(declare-fun bm!49315 () Bool)

(declare-fun call!49321 () Bool)

(declare-fun call!49322 () Bool)

(assert (=> bm!49315 (= call!49321 call!49322)))

(declare-fun b!832378 () Bool)

(declare-fun e!548105 () Bool)

(declare-fun e!548102 () Bool)

(assert (=> b!832378 (= e!548105 e!548102)))

(declare-fun c!135657 () Bool)

(assert (=> b!832378 (= c!135657 ((_ is Union!2081) r!27177))))

(declare-fun b!832379 () Bool)

(declare-fun e!548108 () Bool)

(assert (=> b!832379 (= e!548105 e!548108)))

(declare-fun res!381786 () Bool)

(assert (=> b!832379 (= res!381786 (not (nullable!532 (reg!2410 r!27177))))))

(assert (=> b!832379 (=> (not res!381786) (not e!548108))))

(declare-fun b!832380 () Bool)

(declare-fun res!381785 () Bool)

(declare-fun e!548103 () Bool)

(assert (=> b!832380 (=> (not res!381785) (not e!548103))))

(declare-fun call!49320 () Bool)

(assert (=> b!832380 (= res!381785 call!49320)))

(assert (=> b!832380 (= e!548102 e!548103)))

(declare-fun b!832381 () Bool)

(declare-fun e!548104 () Bool)

(assert (=> b!832381 (= e!548104 call!49320)))

(declare-fun c!135658 () Bool)

(declare-fun bm!49316 () Bool)

(assert (=> bm!49316 (= call!49322 (validRegex!634 (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))

(declare-fun d!260374 () Bool)

(declare-fun res!381784 () Bool)

(declare-fun e!548107 () Bool)

(assert (=> d!260374 (=> res!381784 e!548107)))

(assert (=> d!260374 (= res!381784 ((_ is ElementMatch!2081) r!27177))))

(assert (=> d!260374 (= (validRegex!634 r!27177) e!548107)))

(declare-fun b!832382 () Bool)

(declare-fun e!548106 () Bool)

(assert (=> b!832382 (= e!548106 e!548104)))

(declare-fun res!381783 () Bool)

(assert (=> b!832382 (=> (not res!381783) (not e!548104))))

(assert (=> b!832382 (= res!381783 call!49321)))

(declare-fun b!832383 () Bool)

(declare-fun res!381782 () Bool)

(assert (=> b!832383 (=> res!381782 e!548106)))

(assert (=> b!832383 (= res!381782 (not ((_ is Concat!3812) r!27177)))))

(assert (=> b!832383 (= e!548102 e!548106)))

(declare-fun b!832384 () Bool)

(assert (=> b!832384 (= e!548103 call!49321)))

(declare-fun bm!49317 () Bool)

(assert (=> bm!49317 (= call!49320 (validRegex!634 (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))

(declare-fun b!832385 () Bool)

(assert (=> b!832385 (= e!548107 e!548105)))

(assert (=> b!832385 (= c!135658 ((_ is Star!2081) r!27177))))

(declare-fun b!832386 () Bool)

(assert (=> b!832386 (= e!548108 call!49322)))

(assert (= (and d!260374 (not res!381784)) b!832385))

(assert (= (and b!832385 c!135658) b!832379))

(assert (= (and b!832385 (not c!135658)) b!832378))

(assert (= (and b!832379 res!381786) b!832386))

(assert (= (and b!832378 c!135657) b!832380))

(assert (= (and b!832378 (not c!135657)) b!832383))

(assert (= (and b!832380 res!381785) b!832384))

(assert (= (and b!832383 (not res!381782)) b!832382))

(assert (= (and b!832382 res!381783) b!832381))

(assert (= (or b!832380 b!832381) bm!49317))

(assert (= (or b!832384 b!832382) bm!49315))

(assert (= (or b!832386 bm!49315) bm!49316))

(declare-fun m!1068371 () Bool)

(assert (=> b!832379 m!1068371))

(declare-fun m!1068373 () Bool)

(assert (=> bm!49316 m!1068373))

(declare-fun m!1068375 () Bool)

(assert (=> bm!49317 m!1068375))

(assert (=> start!74098 d!260374))

(declare-fun d!260378 () Bool)

(declare-fun lt!317782 () Bool)

(assert (=> d!260378 (= lt!317782 (select (content!1319 (firstChars!52 (regOne!4674 r!27177))) c!13916))))

(declare-fun e!548117 () Bool)

(assert (=> d!260378 (= lt!317782 e!548117)))

(declare-fun res!381793 () Bool)

(assert (=> d!260378 (=> (not res!381793) (not e!548117))))

(assert (=> d!260378 (= res!381793 ((_ is Cons!8891) (firstChars!52 (regOne!4674 r!27177))))))

(assert (=> d!260378 (= (contains!1672 (firstChars!52 (regOne!4674 r!27177)) c!13916) lt!317782)))

(declare-fun b!832396 () Bool)

(declare-fun e!548116 () Bool)

(assert (=> b!832396 (= e!548117 e!548116)))

(declare-fun res!381792 () Bool)

(assert (=> b!832396 (=> res!381792 e!548116)))

(assert (=> b!832396 (= res!381792 (= (h!14292 (firstChars!52 (regOne!4674 r!27177))) c!13916))))

(declare-fun b!832397 () Bool)

(assert (=> b!832397 (= e!548116 (contains!1672 (t!93199 (firstChars!52 (regOne!4674 r!27177))) c!13916))))

(assert (= (and d!260378 res!381793) b!832396))

(assert (= (and b!832396 (not res!381792)) b!832397))

(assert (=> d!260378 m!1068333))

(declare-fun m!1068377 () Bool)

(assert (=> d!260378 m!1068377))

(declare-fun m!1068379 () Bool)

(assert (=> d!260378 m!1068379))

(declare-fun m!1068381 () Bool)

(assert (=> b!832397 m!1068381))

(assert (=> b!832267 d!260378))

(declare-fun b!832398 () Bool)

(declare-fun e!548122 () List!8907)

(assert (=> b!832398 (= e!548122 (Cons!8891 (c!135618 (regOne!4674 r!27177)) Nil!8891))))

(declare-fun d!260380 () Bool)

(declare-fun c!135662 () Bool)

(assert (=> d!260380 (= c!135662 (or ((_ is EmptyExpr!2081) (regOne!4674 r!27177)) ((_ is EmptyLang!2081) (regOne!4674 r!27177))))))

(declare-fun e!548121 () List!8907)

(assert (=> d!260380 (= (firstChars!52 (regOne!4674 r!27177)) e!548121)))

(declare-fun b!832399 () Bool)

(declare-fun c!135663 () Bool)

(assert (=> b!832399 (= c!135663 (nullable!532 (regOne!4674 (regOne!4674 r!27177))))))

(declare-fun e!548120 () List!8907)

(declare-fun e!548118 () List!8907)

(assert (=> b!832399 (= e!548120 e!548118)))

(declare-fun c!135665 () Bool)

(declare-fun call!49329 () List!8907)

(declare-fun bm!49321 () Bool)

(declare-fun c!135661 () Bool)

(assert (=> bm!49321 (= call!49329 (firstChars!52 (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))))))

(declare-fun b!832400 () Bool)

(declare-fun e!548119 () List!8907)

(assert (=> b!832400 (= e!548119 e!548120)))

(assert (=> b!832400 (= c!135665 ((_ is Union!2081) (regOne!4674 r!27177)))))

(declare-fun b!832401 () Bool)

(declare-fun call!49327 () List!8907)

(assert (=> b!832401 (= e!548118 call!49327)))

(declare-fun b!832402 () Bool)

(assert (=> b!832402 (= c!135661 ((_ is Star!2081) (regOne!4674 r!27177)))))

(assert (=> b!832402 (= e!548122 e!548119)))

(declare-fun bm!49322 () Bool)

(declare-fun call!49328 () List!8907)

(assert (=> bm!49322 (= call!49328 call!49329)))

(declare-fun bm!49323 () Bool)

(declare-fun call!49330 () List!8907)

(assert (=> bm!49323 (= call!49330 call!49328)))

(declare-fun b!832403 () Bool)

(assert (=> b!832403 (= e!548120 call!49327)))

(declare-fun b!832404 () Bool)

(assert (=> b!832404 (= e!548118 call!49330)))

(declare-fun b!832405 () Bool)

(assert (=> b!832405 (= e!548121 e!548122)))

(declare-fun c!135664 () Bool)

(assert (=> b!832405 (= c!135664 ((_ is ElementMatch!2081) (regOne!4674 r!27177)))))

(declare-fun b!832406 () Bool)

(assert (=> b!832406 (= e!548119 call!49329)))

(declare-fun b!832407 () Bool)

(assert (=> b!832407 (= e!548121 Nil!8891)))

(declare-fun call!49326 () List!8907)

(declare-fun bm!49324 () Bool)

(assert (=> bm!49324 (= call!49327 (++!2307 (ite c!135665 call!49326 call!49330) (ite c!135665 call!49328 call!49326)))))

(declare-fun bm!49325 () Bool)

(assert (=> bm!49325 (= call!49326 (firstChars!52 (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))))))

(assert (= (and d!260380 c!135662) b!832407))

(assert (= (and d!260380 (not c!135662)) b!832405))

(assert (= (and b!832405 c!135664) b!832398))

(assert (= (and b!832405 (not c!135664)) b!832402))

(assert (= (and b!832402 c!135661) b!832406))

(assert (= (and b!832402 (not c!135661)) b!832400))

(assert (= (and b!832400 c!135665) b!832403))

(assert (= (and b!832400 (not c!135665)) b!832399))

(assert (= (and b!832399 c!135663) b!832401))

(assert (= (and b!832399 (not c!135663)) b!832404))

(assert (= (or b!832401 b!832404) bm!49323))

(assert (= (or b!832403 bm!49323) bm!49322))

(assert (= (or b!832403 b!832401) bm!49325))

(assert (= (or b!832403 b!832401) bm!49324))

(assert (= (or b!832406 bm!49322) bm!49321))

(declare-fun m!1068389 () Bool)

(assert (=> b!832399 m!1068389))

(declare-fun m!1068391 () Bool)

(assert (=> bm!49321 m!1068391))

(declare-fun m!1068393 () Bool)

(assert (=> bm!49324 m!1068393))

(declare-fun m!1068395 () Bool)

(assert (=> bm!49325 m!1068395))

(assert (=> b!832267 d!260380))

(declare-fun bm!49326 () Bool)

(declare-fun call!49332 () Bool)

(declare-fun call!49333 () Bool)

(assert (=> bm!49326 (= call!49332 call!49333)))

(declare-fun b!832408 () Bool)

(declare-fun e!548126 () Bool)

(declare-fun e!548123 () Bool)

(assert (=> b!832408 (= e!548126 e!548123)))

(declare-fun c!135666 () Bool)

(assert (=> b!832408 (= c!135666 ((_ is Union!2081) (regTwo!4674 r!27177)))))

(declare-fun b!832409 () Bool)

(declare-fun e!548129 () Bool)

(assert (=> b!832409 (= e!548126 e!548129)))

(declare-fun res!381798 () Bool)

(assert (=> b!832409 (= res!381798 (not (nullable!532 (reg!2410 (regTwo!4674 r!27177)))))))

(assert (=> b!832409 (=> (not res!381798) (not e!548129))))

(declare-fun b!832410 () Bool)

(declare-fun res!381797 () Bool)

(declare-fun e!548124 () Bool)

(assert (=> b!832410 (=> (not res!381797) (not e!548124))))

(declare-fun call!49331 () Bool)

(assert (=> b!832410 (= res!381797 call!49331)))

(assert (=> b!832410 (= e!548123 e!548124)))

(declare-fun b!832411 () Bool)

(declare-fun e!548125 () Bool)

(assert (=> b!832411 (= e!548125 call!49331)))

(declare-fun bm!49327 () Bool)

(declare-fun c!135667 () Bool)

(assert (=> bm!49327 (= call!49333 (validRegex!634 (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))

(declare-fun d!260384 () Bool)

(declare-fun res!381796 () Bool)

(declare-fun e!548128 () Bool)

(assert (=> d!260384 (=> res!381796 e!548128)))

(assert (=> d!260384 (= res!381796 ((_ is ElementMatch!2081) (regTwo!4674 r!27177)))))

(assert (=> d!260384 (= (validRegex!634 (regTwo!4674 r!27177)) e!548128)))

(declare-fun b!832412 () Bool)

(declare-fun e!548127 () Bool)

(assert (=> b!832412 (= e!548127 e!548125)))

(declare-fun res!381795 () Bool)

(assert (=> b!832412 (=> (not res!381795) (not e!548125))))

(assert (=> b!832412 (= res!381795 call!49332)))

(declare-fun b!832413 () Bool)

(declare-fun res!381794 () Bool)

(assert (=> b!832413 (=> res!381794 e!548127)))

(assert (=> b!832413 (= res!381794 (not ((_ is Concat!3812) (regTwo!4674 r!27177))))))

(assert (=> b!832413 (= e!548123 e!548127)))

(declare-fun b!832414 () Bool)

(assert (=> b!832414 (= e!548124 call!49332)))

(declare-fun bm!49328 () Bool)

(assert (=> bm!49328 (= call!49331 (validRegex!634 (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))

(declare-fun b!832415 () Bool)

(assert (=> b!832415 (= e!548128 e!548126)))

(assert (=> b!832415 (= c!135667 ((_ is Star!2081) (regTwo!4674 r!27177)))))

(declare-fun b!832416 () Bool)

(assert (=> b!832416 (= e!548129 call!49333)))

(assert (= (and d!260384 (not res!381796)) b!832415))

(assert (= (and b!832415 c!135667) b!832409))

(assert (= (and b!832415 (not c!135667)) b!832408))

(assert (= (and b!832409 res!381798) b!832416))

(assert (= (and b!832408 c!135666) b!832410))

(assert (= (and b!832408 (not c!135666)) b!832413))

(assert (= (and b!832410 res!381797) b!832414))

(assert (= (and b!832413 (not res!381794)) b!832412))

(assert (= (and b!832412 res!381795) b!832411))

(assert (= (or b!832410 b!832411) bm!49328))

(assert (= (or b!832414 b!832412) bm!49326))

(assert (= (or b!832416 bm!49326) bm!49327))

(declare-fun m!1068405 () Bool)

(assert (=> b!832409 m!1068405))

(declare-fun m!1068407 () Bool)

(assert (=> bm!49327 m!1068407))

(declare-fun m!1068409 () Bool)

(assert (=> bm!49328 m!1068409))

(assert (=> b!832268 d!260384))

(declare-fun d!260390 () Bool)

(declare-fun lt!317784 () Bool)

(assert (=> d!260390 (= lt!317784 (select (content!1319 (firstChars!52 r!27177)) c!13916))))

(declare-fun e!548138 () Bool)

(assert (=> d!260390 (= lt!317784 e!548138)))

(declare-fun res!381802 () Bool)

(assert (=> d!260390 (=> (not res!381802) (not e!548138))))

(assert (=> d!260390 (= res!381802 ((_ is Cons!8891) (firstChars!52 r!27177)))))

(assert (=> d!260390 (= (contains!1672 (firstChars!52 r!27177) c!13916) lt!317784)))

(declare-fun b!832429 () Bool)

(declare-fun e!548137 () Bool)

(assert (=> b!832429 (= e!548138 e!548137)))

(declare-fun res!381801 () Bool)

(assert (=> b!832429 (=> res!381801 e!548137)))

(assert (=> b!832429 (= res!381801 (= (h!14292 (firstChars!52 r!27177)) c!13916))))

(declare-fun b!832430 () Bool)

(assert (=> b!832430 (= e!548137 (contains!1672 (t!93199 (firstChars!52 r!27177)) c!13916))))

(assert (= (and d!260390 res!381802) b!832429))

(assert (= (and b!832429 (not res!381801)) b!832430))

(assert (=> d!260390 m!1068323))

(declare-fun m!1068411 () Bool)

(assert (=> d!260390 m!1068411))

(declare-fun m!1068413 () Bool)

(assert (=> d!260390 m!1068413))

(declare-fun m!1068415 () Bool)

(assert (=> b!832430 m!1068415))

(assert (=> b!832266 d!260390))

(declare-fun b!832431 () Bool)

(declare-fun e!548143 () List!8907)

(assert (=> b!832431 (= e!548143 (Cons!8891 (c!135618 r!27177) Nil!8891))))

(declare-fun d!260392 () Bool)

(declare-fun c!135674 () Bool)

(assert (=> d!260392 (= c!135674 (or ((_ is EmptyExpr!2081) r!27177) ((_ is EmptyLang!2081) r!27177)))))

(declare-fun e!548142 () List!8907)

(assert (=> d!260392 (= (firstChars!52 r!27177) e!548142)))

(declare-fun b!832432 () Bool)

(declare-fun c!135675 () Bool)

(assert (=> b!832432 (= c!135675 (nullable!532 (regOne!4674 r!27177)))))

(declare-fun e!548141 () List!8907)

(declare-fun e!548139 () List!8907)

(assert (=> b!832432 (= e!548141 e!548139)))

(declare-fun bm!49334 () Bool)

(declare-fun c!135677 () Bool)

(declare-fun c!135673 () Bool)

(declare-fun call!49342 () List!8907)

(assert (=> bm!49334 (= call!49342 (firstChars!52 (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))

(declare-fun b!832433 () Bool)

(declare-fun e!548140 () List!8907)

(assert (=> b!832433 (= e!548140 e!548141)))

(assert (=> b!832433 (= c!135677 ((_ is Union!2081) r!27177))))

(declare-fun b!832434 () Bool)

(declare-fun call!49340 () List!8907)

(assert (=> b!832434 (= e!548139 call!49340)))

(declare-fun b!832435 () Bool)

(assert (=> b!832435 (= c!135673 ((_ is Star!2081) r!27177))))

(assert (=> b!832435 (= e!548143 e!548140)))

(declare-fun bm!49335 () Bool)

(declare-fun call!49341 () List!8907)

(assert (=> bm!49335 (= call!49341 call!49342)))

(declare-fun bm!49336 () Bool)

(declare-fun call!49343 () List!8907)

(assert (=> bm!49336 (= call!49343 call!49341)))

(declare-fun b!832436 () Bool)

(assert (=> b!832436 (= e!548141 call!49340)))

(declare-fun b!832437 () Bool)

(assert (=> b!832437 (= e!548139 call!49343)))

(declare-fun b!832438 () Bool)

(assert (=> b!832438 (= e!548142 e!548143)))

(declare-fun c!135676 () Bool)

(assert (=> b!832438 (= c!135676 ((_ is ElementMatch!2081) r!27177))))

(declare-fun b!832439 () Bool)

(assert (=> b!832439 (= e!548140 call!49342)))

(declare-fun b!832440 () Bool)

(assert (=> b!832440 (= e!548142 Nil!8891)))

(declare-fun call!49339 () List!8907)

(declare-fun bm!49337 () Bool)

(assert (=> bm!49337 (= call!49340 (++!2307 (ite c!135677 call!49339 call!49343) (ite c!135677 call!49341 call!49339)))))

(declare-fun bm!49338 () Bool)

(assert (=> bm!49338 (= call!49339 (firstChars!52 (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))

(assert (= (and d!260392 c!135674) b!832440))

(assert (= (and d!260392 (not c!135674)) b!832438))

(assert (= (and b!832438 c!135676) b!832431))

(assert (= (and b!832438 (not c!135676)) b!832435))

(assert (= (and b!832435 c!135673) b!832439))

(assert (= (and b!832435 (not c!135673)) b!832433))

(assert (= (and b!832433 c!135677) b!832436))

(assert (= (and b!832433 (not c!135677)) b!832432))

(assert (= (and b!832432 c!135675) b!832434))

(assert (= (and b!832432 (not c!135675)) b!832437))

(assert (= (or b!832434 b!832437) bm!49336))

(assert (= (or b!832436 bm!49336) bm!49335))

(assert (= (or b!832436 b!832434) bm!49338))

(assert (= (or b!832436 b!832434) bm!49337))

(assert (= (or b!832439 bm!49335) bm!49334))

(assert (=> b!832432 m!1068337))

(declare-fun m!1068423 () Bool)

(assert (=> bm!49334 m!1068423))

(declare-fun m!1068429 () Bool)

(assert (=> bm!49337 m!1068429))

(declare-fun m!1068433 () Bool)

(assert (=> bm!49338 m!1068433))

(assert (=> b!832266 d!260392))

(declare-fun b!832474 () Bool)

(declare-fun e!548160 () Bool)

(declare-fun tp!260729 () Bool)

(assert (=> b!832474 (= e!548160 tp!260729)))

(declare-fun b!832475 () Bool)

(declare-fun tp!260728 () Bool)

(declare-fun tp!260727 () Bool)

(assert (=> b!832475 (= e!548160 (and tp!260728 tp!260727))))

(declare-fun b!832473 () Bool)

(declare-fun tp!260726 () Bool)

(declare-fun tp!260725 () Bool)

(assert (=> b!832473 (= e!548160 (and tp!260726 tp!260725))))

(declare-fun b!832472 () Bool)

(assert (=> b!832472 (= e!548160 tp_is_empty!3885)))

(assert (=> b!832263 (= tp!260712 e!548160)))

(assert (= (and b!832263 ((_ is ElementMatch!2081) (reg!2410 r!27177))) b!832472))

(assert (= (and b!832263 ((_ is Concat!3812) (reg!2410 r!27177))) b!832473))

(assert (= (and b!832263 ((_ is Star!2081) (reg!2410 r!27177))) b!832474))

(assert (= (and b!832263 ((_ is Union!2081) (reg!2410 r!27177))) b!832475))

(declare-fun b!832478 () Bool)

(declare-fun e!548161 () Bool)

(declare-fun tp!260734 () Bool)

(assert (=> b!832478 (= e!548161 tp!260734)))

(declare-fun b!832479 () Bool)

(declare-fun tp!260733 () Bool)

(declare-fun tp!260732 () Bool)

(assert (=> b!832479 (= e!548161 (and tp!260733 tp!260732))))

(declare-fun b!832477 () Bool)

(declare-fun tp!260731 () Bool)

(declare-fun tp!260730 () Bool)

(assert (=> b!832477 (= e!548161 (and tp!260731 tp!260730))))

(declare-fun b!832476 () Bool)

(assert (=> b!832476 (= e!548161 tp_is_empty!3885)))

(assert (=> b!832264 (= tp!260713 e!548161)))

(assert (= (and b!832264 ((_ is ElementMatch!2081) (regOne!4675 r!27177))) b!832476))

(assert (= (and b!832264 ((_ is Concat!3812) (regOne!4675 r!27177))) b!832477))

(assert (= (and b!832264 ((_ is Star!2081) (regOne!4675 r!27177))) b!832478))

(assert (= (and b!832264 ((_ is Union!2081) (regOne!4675 r!27177))) b!832479))

(declare-fun b!832488 () Bool)

(declare-fun e!548164 () Bool)

(declare-fun tp!260739 () Bool)

(assert (=> b!832488 (= e!548164 tp!260739)))

(declare-fun b!832489 () Bool)

(declare-fun tp!260738 () Bool)

(declare-fun tp!260737 () Bool)

(assert (=> b!832489 (= e!548164 (and tp!260738 tp!260737))))

(declare-fun b!832487 () Bool)

(declare-fun tp!260736 () Bool)

(declare-fun tp!260735 () Bool)

(assert (=> b!832487 (= e!548164 (and tp!260736 tp!260735))))

(declare-fun b!832486 () Bool)

(assert (=> b!832486 (= e!548164 tp_is_empty!3885)))

(assert (=> b!832264 (= tp!260711 e!548164)))

(assert (= (and b!832264 ((_ is ElementMatch!2081) (regTwo!4675 r!27177))) b!832486))

(assert (= (and b!832264 ((_ is Concat!3812) (regTwo!4675 r!27177))) b!832487))

(assert (= (and b!832264 ((_ is Star!2081) (regTwo!4675 r!27177))) b!832488))

(assert (= (and b!832264 ((_ is Union!2081) (regTwo!4675 r!27177))) b!832489))

(declare-fun b!832494 () Bool)

(declare-fun e!548165 () Bool)

(declare-fun tp!260750 () Bool)

(assert (=> b!832494 (= e!548165 tp!260750)))

(declare-fun b!832495 () Bool)

(declare-fun tp!260749 () Bool)

(declare-fun tp!260748 () Bool)

(assert (=> b!832495 (= e!548165 (and tp!260749 tp!260748))))

(declare-fun b!832493 () Bool)

(declare-fun tp!260747 () Bool)

(declare-fun tp!260746 () Bool)

(assert (=> b!832493 (= e!548165 (and tp!260747 tp!260746))))

(declare-fun b!832492 () Bool)

(assert (=> b!832492 (= e!548165 tp_is_empty!3885)))

(assert (=> b!832262 (= tp!260710 e!548165)))

(assert (= (and b!832262 ((_ is ElementMatch!2081) (regOne!4674 r!27177))) b!832492))

(assert (= (and b!832262 ((_ is Concat!3812) (regOne!4674 r!27177))) b!832493))

(assert (= (and b!832262 ((_ is Star!2081) (regOne!4674 r!27177))) b!832494))

(assert (= (and b!832262 ((_ is Union!2081) (regOne!4674 r!27177))) b!832495))

(declare-fun b!832500 () Bool)

(declare-fun e!548166 () Bool)

(declare-fun tp!260759 () Bool)

(assert (=> b!832500 (= e!548166 tp!260759)))

(declare-fun b!832501 () Bool)

(declare-fun tp!260758 () Bool)

(declare-fun tp!260757 () Bool)

(assert (=> b!832501 (= e!548166 (and tp!260758 tp!260757))))

(declare-fun b!832499 () Bool)

(declare-fun tp!260756 () Bool)

(declare-fun tp!260755 () Bool)

(assert (=> b!832499 (= e!548166 (and tp!260756 tp!260755))))

(declare-fun b!832498 () Bool)

(assert (=> b!832498 (= e!548166 tp_is_empty!3885)))

(assert (=> b!832262 (= tp!260714 e!548166)))

(assert (= (and b!832262 ((_ is ElementMatch!2081) (regTwo!4674 r!27177))) b!832498))

(assert (= (and b!832262 ((_ is Concat!3812) (regTwo!4674 r!27177))) b!832499))

(assert (= (and b!832262 ((_ is Star!2081) (regTwo!4674 r!27177))) b!832500))

(assert (= (and b!832262 ((_ is Union!2081) (regTwo!4674 r!27177))) b!832501))

(check-sat (not b!832323) (not b!832473) (not b!832495) (not bm!49334) (not bm!49324) (not b!832494) (not bm!49328) (not b!832474) (not b!832479) (not b!832379) (not b!832399) (not bm!49337) (not b!832487) (not b!832489) (not b!832499) (not b!832488) (not b!832432) (not b!832475) (not d!260378) (not bm!49325) (not b!832275) (not d!260390) (not d!260364) (not b!832397) (not bm!49296) (not bm!49327) (not bm!49321) (not bm!49338) (not bm!49316) (not b!832501) (not b!832430) (not d!260372) (not b!832477) (not b!832493) (not bm!49317) (not b!832409) (not bm!49293) (not bm!49297) tp_is_empty!3885 (not b!832500) (not b!832478))
(check-sat)
(get-model)

(declare-fun d!260400 () Bool)

(declare-fun c!135687 () Bool)

(assert (=> d!260400 (= c!135687 ((_ is Nil!8891) (firstChars!52 r!27177)))))

(declare-fun e!548174 () (InoxSet C!4732))

(assert (=> d!260400 (= (content!1319 (firstChars!52 r!27177)) e!548174)))

(declare-fun b!832526 () Bool)

(assert (=> b!832526 (= e!548174 ((as const (Array C!4732 Bool)) false))))

(declare-fun b!832527 () Bool)

(assert (=> b!832527 (= e!548174 ((_ map or) (store ((as const (Array C!4732 Bool)) false) (h!14292 (firstChars!52 r!27177)) true) (content!1319 (t!93199 (firstChars!52 r!27177)))))))

(assert (= (and d!260400 c!135687) b!832526))

(assert (= (and d!260400 (not c!135687)) b!832527))

(declare-fun m!1068449 () Bool)

(assert (=> b!832527 m!1068449))

(declare-fun m!1068451 () Bool)

(assert (=> b!832527 m!1068451))

(assert (=> d!260390 d!260400))

(declare-fun bm!49347 () Bool)

(declare-fun call!49353 () Bool)

(declare-fun call!49354 () Bool)

(assert (=> bm!49347 (= call!49353 call!49354)))

(declare-fun b!832528 () Bool)

(declare-fun e!548178 () Bool)

(declare-fun e!548175 () Bool)

(assert (=> b!832528 (= e!548178 e!548175)))

(declare-fun c!135688 () Bool)

(assert (=> b!832528 (= c!135688 ((_ is Union!2081) (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))

(declare-fun b!832529 () Bool)

(declare-fun e!548181 () Bool)

(assert (=> b!832529 (= e!548178 e!548181)))

(declare-fun res!381814 () Bool)

(assert (=> b!832529 (= res!381814 (not (nullable!532 (reg!2410 (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))))

(assert (=> b!832529 (=> (not res!381814) (not e!548181))))

(declare-fun b!832530 () Bool)

(declare-fun res!381813 () Bool)

(declare-fun e!548176 () Bool)

(assert (=> b!832530 (=> (not res!381813) (not e!548176))))

(declare-fun call!49352 () Bool)

(assert (=> b!832530 (= res!381813 call!49352)))

(assert (=> b!832530 (= e!548175 e!548176)))

(declare-fun b!832531 () Bool)

(declare-fun e!548177 () Bool)

(assert (=> b!832531 (= e!548177 call!49352)))

(declare-fun c!135689 () Bool)

(declare-fun bm!49348 () Bool)

(assert (=> bm!49348 (= call!49354 (validRegex!634 (ite c!135689 (reg!2410 (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))) (ite c!135688 (regTwo!4675 (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))) (regOne!4674 (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177)))))))))))

(declare-fun d!260402 () Bool)

(declare-fun res!381812 () Bool)

(declare-fun e!548180 () Bool)

(assert (=> d!260402 (=> res!381812 e!548180)))

(assert (=> d!260402 (= res!381812 ((_ is ElementMatch!2081) (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))

(assert (=> d!260402 (= (validRegex!634 (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))) e!548180)))

(declare-fun b!832532 () Bool)

(declare-fun e!548179 () Bool)

(assert (=> b!832532 (= e!548179 e!548177)))

(declare-fun res!381811 () Bool)

(assert (=> b!832532 (=> (not res!381811) (not e!548177))))

(assert (=> b!832532 (= res!381811 call!49353)))

(declare-fun b!832533 () Bool)

(declare-fun res!381810 () Bool)

(assert (=> b!832533 (=> res!381810 e!548179)))

(assert (=> b!832533 (= res!381810 (not ((_ is Concat!3812) (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177)))))))))

(assert (=> b!832533 (= e!548175 e!548179)))

(declare-fun b!832534 () Bool)

(assert (=> b!832534 (= e!548176 call!49353)))

(declare-fun bm!49349 () Bool)

(assert (=> bm!49349 (= call!49352 (validRegex!634 (ite c!135688 (regOne!4675 (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))) (regTwo!4674 (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))))

(declare-fun b!832535 () Bool)

(assert (=> b!832535 (= e!548180 e!548178)))

(assert (=> b!832535 (= c!135689 ((_ is Star!2081) (ite c!135667 (reg!2410 (regTwo!4674 r!27177)) (ite c!135666 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))

(declare-fun b!832536 () Bool)

(assert (=> b!832536 (= e!548181 call!49354)))

(assert (= (and d!260402 (not res!381812)) b!832535))

(assert (= (and b!832535 c!135689) b!832529))

(assert (= (and b!832535 (not c!135689)) b!832528))

(assert (= (and b!832529 res!381814) b!832536))

(assert (= (and b!832528 c!135688) b!832530))

(assert (= (and b!832528 (not c!135688)) b!832533))

(assert (= (and b!832530 res!381813) b!832534))

(assert (= (and b!832533 (not res!381810)) b!832532))

(assert (= (and b!832532 res!381811) b!832531))

(assert (= (or b!832530 b!832531) bm!49349))

(assert (= (or b!832534 b!832532) bm!49347))

(assert (= (or b!832536 bm!49347) bm!49348))

(declare-fun m!1068453 () Bool)

(assert (=> b!832529 m!1068453))

(declare-fun m!1068455 () Bool)

(assert (=> bm!49348 m!1068455))

(declare-fun m!1068457 () Bool)

(assert (=> bm!49349 m!1068457))

(assert (=> bm!49327 d!260402))

(declare-fun bm!49350 () Bool)

(declare-fun call!49356 () Bool)

(declare-fun call!49357 () Bool)

(assert (=> bm!49350 (= call!49356 call!49357)))

(declare-fun b!832537 () Bool)

(declare-fun e!548185 () Bool)

(declare-fun e!548182 () Bool)

(assert (=> b!832537 (= e!548185 e!548182)))

(declare-fun c!135690 () Bool)

(assert (=> b!832537 (= c!135690 ((_ is Union!2081) (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))

(declare-fun b!832538 () Bool)

(declare-fun e!548188 () Bool)

(assert (=> b!832538 (= e!548185 e!548188)))

(declare-fun res!381819 () Bool)

(assert (=> b!832538 (= res!381819 (not (nullable!532 (reg!2410 (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))))

(assert (=> b!832538 (=> (not res!381819) (not e!548188))))

(declare-fun b!832539 () Bool)

(declare-fun res!381818 () Bool)

(declare-fun e!548183 () Bool)

(assert (=> b!832539 (=> (not res!381818) (not e!548183))))

(declare-fun call!49355 () Bool)

(assert (=> b!832539 (= res!381818 call!49355)))

(assert (=> b!832539 (= e!548182 e!548183)))

(declare-fun b!832540 () Bool)

(declare-fun e!548184 () Bool)

(assert (=> b!832540 (= e!548184 call!49355)))

(declare-fun bm!49351 () Bool)

(declare-fun c!135691 () Bool)

(assert (=> bm!49351 (= call!49357 (validRegex!634 (ite c!135691 (reg!2410 (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177))) (ite c!135690 (regTwo!4675 (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177))) (regOne!4674 (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177)))))))))

(declare-fun d!260404 () Bool)

(declare-fun res!381817 () Bool)

(declare-fun e!548187 () Bool)

(assert (=> d!260404 (=> res!381817 e!548187)))

(assert (=> d!260404 (= res!381817 ((_ is ElementMatch!2081) (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))

(assert (=> d!260404 (= (validRegex!634 (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177))) e!548187)))

(declare-fun b!832541 () Bool)

(declare-fun e!548186 () Bool)

(assert (=> b!832541 (= e!548186 e!548184)))

(declare-fun res!381816 () Bool)

(assert (=> b!832541 (=> (not res!381816) (not e!548184))))

(assert (=> b!832541 (= res!381816 call!49356)))

(declare-fun b!832542 () Bool)

(declare-fun res!381815 () Bool)

(assert (=> b!832542 (=> res!381815 e!548186)))

(assert (=> b!832542 (= res!381815 (not ((_ is Concat!3812) (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177)))))))

(assert (=> b!832542 (= e!548182 e!548186)))

(declare-fun b!832543 () Bool)

(assert (=> b!832543 (= e!548183 call!49356)))

(declare-fun bm!49352 () Bool)

(assert (=> bm!49352 (= call!49355 (validRegex!634 (ite c!135690 (regOne!4675 (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177))) (regTwo!4674 (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))))

(declare-fun b!832544 () Bool)

(assert (=> b!832544 (= e!548187 e!548185)))

(assert (=> b!832544 (= c!135691 ((_ is Star!2081) (ite c!135657 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))

(declare-fun b!832545 () Bool)

(assert (=> b!832545 (= e!548188 call!49357)))

(assert (= (and d!260404 (not res!381817)) b!832544))

(assert (= (and b!832544 c!135691) b!832538))

(assert (= (and b!832544 (not c!135691)) b!832537))

(assert (= (and b!832538 res!381819) b!832545))

(assert (= (and b!832537 c!135690) b!832539))

(assert (= (and b!832537 (not c!135690)) b!832542))

(assert (= (and b!832539 res!381818) b!832543))

(assert (= (and b!832542 (not res!381815)) b!832541))

(assert (= (and b!832541 res!381816) b!832540))

(assert (= (or b!832539 b!832540) bm!49352))

(assert (= (or b!832543 b!832541) bm!49350))

(assert (= (or b!832545 bm!49350) bm!49351))

(declare-fun m!1068459 () Bool)

(assert (=> b!832538 m!1068459))

(declare-fun m!1068461 () Bool)

(assert (=> bm!49351 m!1068461))

(declare-fun m!1068463 () Bool)

(assert (=> bm!49352 m!1068463))

(assert (=> bm!49317 d!260404))

(declare-fun b!832546 () Bool)

(declare-fun e!548193 () List!8907)

(assert (=> b!832546 (= e!548193 (Cons!8891 (c!135618 (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))) Nil!8891))))

(declare-fun d!260406 () Bool)

(declare-fun c!135693 () Bool)

(assert (=> d!260406 (= c!135693 (or ((_ is EmptyExpr!2081) (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))) ((_ is EmptyLang!2081) (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177))))))))

(declare-fun e!548192 () List!8907)

(assert (=> d!260406 (= (firstChars!52 (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))) e!548192)))

(declare-fun b!832547 () Bool)

(declare-fun c!135694 () Bool)

(assert (=> b!832547 (= c!135694 (nullable!532 (regOne!4674 (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177))))))))

(declare-fun e!548191 () List!8907)

(declare-fun e!548189 () List!8907)

(assert (=> b!832547 (= e!548191 e!548189)))

(declare-fun call!49361 () List!8907)

(declare-fun c!135696 () Bool)

(declare-fun bm!49353 () Bool)

(declare-fun c!135692 () Bool)

(assert (=> bm!49353 (= call!49361 (firstChars!52 (ite c!135692 (reg!2410 (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))) (ite c!135696 (regTwo!4675 (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))) (regOne!4674 (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177))))))))))

(declare-fun b!832548 () Bool)

(declare-fun e!548190 () List!8907)

(assert (=> b!832548 (= e!548190 e!548191)))

(assert (=> b!832548 (= c!135696 ((_ is Union!2081) (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))))))

(declare-fun b!832549 () Bool)

(declare-fun call!49359 () List!8907)

(assert (=> b!832549 (= e!548189 call!49359)))

(declare-fun b!832550 () Bool)

(assert (=> b!832550 (= c!135692 ((_ is Star!2081) (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))))))

(assert (=> b!832550 (= e!548193 e!548190)))

(declare-fun bm!49354 () Bool)

(declare-fun call!49360 () List!8907)

(assert (=> bm!49354 (= call!49360 call!49361)))

(declare-fun bm!49355 () Bool)

(declare-fun call!49362 () List!8907)

(assert (=> bm!49355 (= call!49362 call!49360)))

(declare-fun b!832551 () Bool)

(assert (=> b!832551 (= e!548191 call!49359)))

(declare-fun b!832552 () Bool)

(assert (=> b!832552 (= e!548189 call!49362)))

(declare-fun b!832553 () Bool)

(assert (=> b!832553 (= e!548192 e!548193)))

(declare-fun c!135695 () Bool)

(assert (=> b!832553 (= c!135695 ((_ is ElementMatch!2081) (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))))))

(declare-fun b!832554 () Bool)

(assert (=> b!832554 (= e!548190 call!49361)))

(declare-fun b!832555 () Bool)

(assert (=> b!832555 (= e!548192 Nil!8891)))

(declare-fun bm!49356 () Bool)

(declare-fun call!49358 () List!8907)

(assert (=> bm!49356 (= call!49359 (++!2307 (ite c!135696 call!49358 call!49362) (ite c!135696 call!49360 call!49358)))))

(declare-fun bm!49357 () Bool)

(assert (=> bm!49357 (= call!49358 (firstChars!52 (ite c!135696 (regOne!4675 (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))) (regTwo!4674 (ite c!135665 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))))))))

(assert (= (and d!260406 c!135693) b!832555))

(assert (= (and d!260406 (not c!135693)) b!832553))

(assert (= (and b!832553 c!135695) b!832546))

(assert (= (and b!832553 (not c!135695)) b!832550))

(assert (= (and b!832550 c!135692) b!832554))

(assert (= (and b!832550 (not c!135692)) b!832548))

(assert (= (and b!832548 c!135696) b!832551))

(assert (= (and b!832548 (not c!135696)) b!832547))

(assert (= (and b!832547 c!135694) b!832549))

(assert (= (and b!832547 (not c!135694)) b!832552))

(assert (= (or b!832549 b!832552) bm!49355))

(assert (= (or b!832551 bm!49355) bm!49354))

(assert (= (or b!832551 b!832549) bm!49357))

(assert (= (or b!832551 b!832549) bm!49356))

(assert (= (or b!832554 bm!49354) bm!49353))

(declare-fun m!1068465 () Bool)

(assert (=> b!832547 m!1068465))

(declare-fun m!1068467 () Bool)

(assert (=> bm!49353 m!1068467))

(declare-fun m!1068469 () Bool)

(assert (=> bm!49356 m!1068469))

(declare-fun m!1068471 () Bool)

(assert (=> bm!49357 m!1068471))

(assert (=> bm!49325 d!260406))

(declare-fun d!260408 () Bool)

(declare-fun c!135697 () Bool)

(assert (=> d!260408 (= c!135697 ((_ is Nil!8891) (firstChars!52 (regOne!4674 r!27177))))))

(declare-fun e!548194 () (InoxSet C!4732))

(assert (=> d!260408 (= (content!1319 (firstChars!52 (regOne!4674 r!27177))) e!548194)))

(declare-fun b!832556 () Bool)

(assert (=> b!832556 (= e!548194 ((as const (Array C!4732 Bool)) false))))

(declare-fun b!832557 () Bool)

(assert (=> b!832557 (= e!548194 ((_ map or) (store ((as const (Array C!4732 Bool)) false) (h!14292 (firstChars!52 (regOne!4674 r!27177))) true) (content!1319 (t!93199 (firstChars!52 (regOne!4674 r!27177))))))))

(assert (= (and d!260408 c!135697) b!832556))

(assert (= (and d!260408 (not c!135697)) b!832557))

(declare-fun m!1068473 () Bool)

(assert (=> b!832557 m!1068473))

(declare-fun m!1068475 () Bool)

(assert (=> b!832557 m!1068475))

(assert (=> d!260378 d!260408))

(declare-fun b!832558 () Bool)

(declare-fun e!548199 () List!8907)

(assert (=> b!832558 (= e!548199 (Cons!8891 (c!135618 (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))) Nil!8891))))

(declare-fun d!260410 () Bool)

(declare-fun c!135699 () Bool)

(assert (=> d!260410 (= c!135699 (or ((_ is EmptyExpr!2081) (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))) ((_ is EmptyLang!2081) (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177)))))))

(declare-fun e!548198 () List!8907)

(assert (=> d!260410 (= (firstChars!52 (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))) e!548198)))

(declare-fun b!832559 () Bool)

(declare-fun c!135700 () Bool)

(assert (=> b!832559 (= c!135700 (nullable!532 (regOne!4674 (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177)))))))

(declare-fun e!548197 () List!8907)

(declare-fun e!548195 () List!8907)

(assert (=> b!832559 (= e!548197 e!548195)))

(declare-fun c!135702 () Bool)

(declare-fun bm!49358 () Bool)

(declare-fun c!135698 () Bool)

(declare-fun call!49366 () List!8907)

(assert (=> bm!49358 (= call!49366 (firstChars!52 (ite c!135698 (reg!2410 (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))) (ite c!135702 (regTwo!4675 (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))) (regOne!4674 (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177)))))))))

(declare-fun b!832560 () Bool)

(declare-fun e!548196 () List!8907)

(assert (=> b!832560 (= e!548196 e!548197)))

(assert (=> b!832560 (= c!135702 ((_ is Union!2081) (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))

(declare-fun b!832561 () Bool)

(declare-fun call!49364 () List!8907)

(assert (=> b!832561 (= e!548195 call!49364)))

(declare-fun b!832562 () Bool)

(assert (=> b!832562 (= c!135698 ((_ is Star!2081) (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))

(assert (=> b!832562 (= e!548199 e!548196)))

(declare-fun bm!49359 () Bool)

(declare-fun call!49365 () List!8907)

(assert (=> bm!49359 (= call!49365 call!49366)))

(declare-fun bm!49360 () Bool)

(declare-fun call!49367 () List!8907)

(assert (=> bm!49360 (= call!49367 call!49365)))

(declare-fun b!832563 () Bool)

(assert (=> b!832563 (= e!548197 call!49364)))

(declare-fun b!832564 () Bool)

(assert (=> b!832564 (= e!548195 call!49367)))

(declare-fun b!832565 () Bool)

(assert (=> b!832565 (= e!548198 e!548199)))

(declare-fun c!135701 () Bool)

(assert (=> b!832565 (= c!135701 ((_ is ElementMatch!2081) (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))

(declare-fun b!832566 () Bool)

(assert (=> b!832566 (= e!548196 call!49366)))

(declare-fun b!832567 () Bool)

(assert (=> b!832567 (= e!548198 Nil!8891)))

(declare-fun bm!49361 () Bool)

(declare-fun call!49363 () List!8907)

(assert (=> bm!49361 (= call!49364 (++!2307 (ite c!135702 call!49363 call!49367) (ite c!135702 call!49365 call!49363)))))

(declare-fun bm!49362 () Bool)

(assert (=> bm!49362 (= call!49363 (firstChars!52 (ite c!135702 (regOne!4675 (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))) (regTwo!4674 (ite c!135677 (regOne!4675 r!27177) (regTwo!4674 r!27177))))))))

(assert (= (and d!260410 c!135699) b!832567))

(assert (= (and d!260410 (not c!135699)) b!832565))

(assert (= (and b!832565 c!135701) b!832558))

(assert (= (and b!832565 (not c!135701)) b!832562))

(assert (= (and b!832562 c!135698) b!832566))

(assert (= (and b!832562 (not c!135698)) b!832560))

(assert (= (and b!832560 c!135702) b!832563))

(assert (= (and b!832560 (not c!135702)) b!832559))

(assert (= (and b!832559 c!135700) b!832561))

(assert (= (and b!832559 (not c!135700)) b!832564))

(assert (= (or b!832561 b!832564) bm!49360))

(assert (= (or b!832563 bm!49360) bm!49359))

(assert (= (or b!832563 b!832561) bm!49362))

(assert (= (or b!832563 b!832561) bm!49361))

(assert (= (or b!832566 bm!49359) bm!49358))

(declare-fun m!1068477 () Bool)

(assert (=> b!832559 m!1068477))

(declare-fun m!1068479 () Bool)

(assert (=> bm!49358 m!1068479))

(declare-fun m!1068481 () Bool)

(assert (=> bm!49361 m!1068481))

(declare-fun m!1068483 () Bool)

(assert (=> bm!49362 m!1068483))

(assert (=> bm!49338 d!260410))

(declare-fun e!548204 () Bool)

(declare-fun lt!317788 () List!8907)

(declare-fun b!832579 () Bool)

(assert (=> b!832579 (= e!548204 (or (not (= (ite c!135677 call!49341 call!49339) Nil!8891)) (= lt!317788 (ite c!135677 call!49339 call!49343))))))

(declare-fun b!832577 () Bool)

(declare-fun e!548205 () List!8907)

(assert (=> b!832577 (= e!548205 (Cons!8891 (h!14292 (ite c!135677 call!49339 call!49343)) (++!2307 (t!93199 (ite c!135677 call!49339 call!49343)) (ite c!135677 call!49341 call!49339))))))

(declare-fun b!832576 () Bool)

(assert (=> b!832576 (= e!548205 (ite c!135677 call!49341 call!49339))))

(declare-fun d!260412 () Bool)

(assert (=> d!260412 e!548204))

(declare-fun res!381825 () Bool)

(assert (=> d!260412 (=> (not res!381825) (not e!548204))))

(assert (=> d!260412 (= res!381825 (= (content!1319 lt!317788) ((_ map or) (content!1319 (ite c!135677 call!49339 call!49343)) (content!1319 (ite c!135677 call!49341 call!49339)))))))

(assert (=> d!260412 (= lt!317788 e!548205)))

(declare-fun c!135705 () Bool)

(assert (=> d!260412 (= c!135705 ((_ is Nil!8891) (ite c!135677 call!49339 call!49343)))))

(assert (=> d!260412 (= (++!2307 (ite c!135677 call!49339 call!49343) (ite c!135677 call!49341 call!49339)) lt!317788)))

(declare-fun b!832578 () Bool)

(declare-fun res!381824 () Bool)

(assert (=> b!832578 (=> (not res!381824) (not e!548204))))

(declare-fun size!7483 (List!8907) Int)

(assert (=> b!832578 (= res!381824 (= (size!7483 lt!317788) (+ (size!7483 (ite c!135677 call!49339 call!49343)) (size!7483 (ite c!135677 call!49341 call!49339)))))))

(assert (= (and d!260412 c!135705) b!832576))

(assert (= (and d!260412 (not c!135705)) b!832577))

(assert (= (and d!260412 res!381825) b!832578))

(assert (= (and b!832578 res!381824) b!832579))

(declare-fun m!1068485 () Bool)

(assert (=> b!832577 m!1068485))

(declare-fun m!1068487 () Bool)

(assert (=> d!260412 m!1068487))

(declare-fun m!1068489 () Bool)

(assert (=> d!260412 m!1068489))

(declare-fun m!1068491 () Bool)

(assert (=> d!260412 m!1068491))

(declare-fun m!1068493 () Bool)

(assert (=> b!832578 m!1068493))

(declare-fun m!1068495 () Bool)

(assert (=> b!832578 m!1068495))

(declare-fun m!1068497 () Bool)

(assert (=> b!832578 m!1068497))

(assert (=> bm!49337 d!260412))

(declare-fun d!260414 () Bool)

(declare-fun lt!317789 () Bool)

(assert (=> d!260414 (= lt!317789 (select (content!1319 (t!93199 (firstChars!52 (regTwo!4674 r!27177)))) c!13916))))

(declare-fun e!548207 () Bool)

(assert (=> d!260414 (= lt!317789 e!548207)))

(declare-fun res!381827 () Bool)

(assert (=> d!260414 (=> (not res!381827) (not e!548207))))

(assert (=> d!260414 (= res!381827 ((_ is Cons!8891) (t!93199 (firstChars!52 (regTwo!4674 r!27177)))))))

(assert (=> d!260414 (= (contains!1672 (t!93199 (firstChars!52 (regTwo!4674 r!27177))) c!13916) lt!317789)))

(declare-fun b!832580 () Bool)

(declare-fun e!548206 () Bool)

(assert (=> b!832580 (= e!548207 e!548206)))

(declare-fun res!381826 () Bool)

(assert (=> b!832580 (=> res!381826 e!548206)))

(assert (=> b!832580 (= res!381826 (= (h!14292 (t!93199 (firstChars!52 (regTwo!4674 r!27177)))) c!13916))))

(declare-fun b!832581 () Bool)

(assert (=> b!832581 (= e!548206 (contains!1672 (t!93199 (t!93199 (firstChars!52 (regTwo!4674 r!27177)))) c!13916))))

(assert (= (and d!260414 res!381827) b!832580))

(assert (= (and b!832580 (not res!381826)) b!832581))

(declare-fun m!1068499 () Bool)

(assert (=> d!260414 m!1068499))

(declare-fun m!1068501 () Bool)

(assert (=> d!260414 m!1068501))

(declare-fun m!1068503 () Bool)

(assert (=> b!832581 m!1068503))

(assert (=> b!832275 d!260414))

(declare-fun e!548208 () Bool)

(declare-fun lt!317790 () List!8907)

(declare-fun b!832585 () Bool)

(assert (=> b!832585 (= e!548208 (or (not (= (ite c!135643 call!49300 call!49298) Nil!8891)) (= lt!317790 (ite c!135643 call!49298 call!49302))))))

(declare-fun e!548209 () List!8907)

(declare-fun b!832583 () Bool)

(assert (=> b!832583 (= e!548209 (Cons!8891 (h!14292 (ite c!135643 call!49298 call!49302)) (++!2307 (t!93199 (ite c!135643 call!49298 call!49302)) (ite c!135643 call!49300 call!49298))))))

(declare-fun b!832582 () Bool)

(assert (=> b!832582 (= e!548209 (ite c!135643 call!49300 call!49298))))

(declare-fun d!260416 () Bool)

(assert (=> d!260416 e!548208))

(declare-fun res!381829 () Bool)

(assert (=> d!260416 (=> (not res!381829) (not e!548208))))

(assert (=> d!260416 (= res!381829 (= (content!1319 lt!317790) ((_ map or) (content!1319 (ite c!135643 call!49298 call!49302)) (content!1319 (ite c!135643 call!49300 call!49298)))))))

(assert (=> d!260416 (= lt!317790 e!548209)))

(declare-fun c!135706 () Bool)

(assert (=> d!260416 (= c!135706 ((_ is Nil!8891) (ite c!135643 call!49298 call!49302)))))

(assert (=> d!260416 (= (++!2307 (ite c!135643 call!49298 call!49302) (ite c!135643 call!49300 call!49298)) lt!317790)))

(declare-fun b!832584 () Bool)

(declare-fun res!381828 () Bool)

(assert (=> b!832584 (=> (not res!381828) (not e!548208))))

(assert (=> b!832584 (= res!381828 (= (size!7483 lt!317790) (+ (size!7483 (ite c!135643 call!49298 call!49302)) (size!7483 (ite c!135643 call!49300 call!49298)))))))

(assert (= (and d!260416 c!135706) b!832582))

(assert (= (and d!260416 (not c!135706)) b!832583))

(assert (= (and d!260416 res!381829) b!832584))

(assert (= (and b!832584 res!381828) b!832585))

(declare-fun m!1068505 () Bool)

(assert (=> b!832583 m!1068505))

(declare-fun m!1068507 () Bool)

(assert (=> d!260416 m!1068507))

(declare-fun m!1068509 () Bool)

(assert (=> d!260416 m!1068509))

(declare-fun m!1068511 () Bool)

(assert (=> d!260416 m!1068511))

(declare-fun m!1068513 () Bool)

(assert (=> b!832584 m!1068513))

(declare-fun m!1068515 () Bool)

(assert (=> b!832584 m!1068515))

(declare-fun m!1068517 () Bool)

(assert (=> b!832584 m!1068517))

(assert (=> bm!49296 d!260416))

(declare-fun d!260418 () Bool)

(declare-fun lt!317791 () Bool)

(assert (=> d!260418 (= lt!317791 (select (content!1319 (t!93199 (firstChars!52 (regOne!4674 r!27177)))) c!13916))))

(declare-fun e!548211 () Bool)

(assert (=> d!260418 (= lt!317791 e!548211)))

(declare-fun res!381831 () Bool)

(assert (=> d!260418 (=> (not res!381831) (not e!548211))))

(assert (=> d!260418 (= res!381831 ((_ is Cons!8891) (t!93199 (firstChars!52 (regOne!4674 r!27177)))))))

(assert (=> d!260418 (= (contains!1672 (t!93199 (firstChars!52 (regOne!4674 r!27177))) c!13916) lt!317791)))

(declare-fun b!832586 () Bool)

(declare-fun e!548210 () Bool)

(assert (=> b!832586 (= e!548211 e!548210)))

(declare-fun res!381830 () Bool)

(assert (=> b!832586 (=> res!381830 e!548210)))

(assert (=> b!832586 (= res!381830 (= (h!14292 (t!93199 (firstChars!52 (regOne!4674 r!27177)))) c!13916))))

(declare-fun b!832587 () Bool)

(assert (=> b!832587 (= e!548210 (contains!1672 (t!93199 (t!93199 (firstChars!52 (regOne!4674 r!27177)))) c!13916))))

(assert (= (and d!260418 res!381831) b!832586))

(assert (= (and b!832586 (not res!381830)) b!832587))

(assert (=> d!260418 m!1068475))

(declare-fun m!1068519 () Bool)

(assert (=> d!260418 m!1068519))

(declare-fun m!1068521 () Bool)

(assert (=> b!832587 m!1068521))

(assert (=> b!832397 d!260418))

(declare-fun bm!49363 () Bool)

(declare-fun call!49369 () Bool)

(declare-fun call!49370 () Bool)

(assert (=> bm!49363 (= call!49369 call!49370)))

(declare-fun b!832588 () Bool)

(declare-fun e!548215 () Bool)

(declare-fun e!548212 () Bool)

(assert (=> b!832588 (= e!548215 e!548212)))

(declare-fun c!135707 () Bool)

(assert (=> b!832588 (= c!135707 ((_ is Union!2081) (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))

(declare-fun b!832589 () Bool)

(declare-fun e!548218 () Bool)

(assert (=> b!832589 (= e!548215 e!548218)))

(declare-fun res!381836 () Bool)

(assert (=> b!832589 (= res!381836 (not (nullable!532 (reg!2410 (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))))

(assert (=> b!832589 (=> (not res!381836) (not e!548218))))

(declare-fun b!832590 () Bool)

(declare-fun res!381835 () Bool)

(declare-fun e!548213 () Bool)

(assert (=> b!832590 (=> (not res!381835) (not e!548213))))

(declare-fun call!49368 () Bool)

(assert (=> b!832590 (= res!381835 call!49368)))

(assert (=> b!832590 (= e!548212 e!548213)))

(declare-fun b!832591 () Bool)

(declare-fun e!548214 () Bool)

(assert (=> b!832591 (= e!548214 call!49368)))

(declare-fun bm!49364 () Bool)

(declare-fun c!135708 () Bool)

(assert (=> bm!49364 (= call!49370 (validRegex!634 (ite c!135708 (reg!2410 (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))) (ite c!135707 (regTwo!4675 (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))) (regOne!4674 (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177))))))))))

(declare-fun d!260420 () Bool)

(declare-fun res!381834 () Bool)

(declare-fun e!548217 () Bool)

(assert (=> d!260420 (=> res!381834 e!548217)))

(assert (=> d!260420 (= res!381834 ((_ is ElementMatch!2081) (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))

(assert (=> d!260420 (= (validRegex!634 (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))) e!548217)))

(declare-fun b!832592 () Bool)

(declare-fun e!548216 () Bool)

(assert (=> b!832592 (= e!548216 e!548214)))

(declare-fun res!381833 () Bool)

(assert (=> b!832592 (=> (not res!381833) (not e!548214))))

(assert (=> b!832592 (= res!381833 call!49369)))

(declare-fun b!832593 () Bool)

(declare-fun res!381832 () Bool)

(assert (=> b!832593 (=> res!381832 e!548216)))

(assert (=> b!832593 (= res!381832 (not ((_ is Concat!3812) (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177))))))))

(assert (=> b!832593 (= e!548212 e!548216)))

(declare-fun b!832594 () Bool)

(assert (=> b!832594 (= e!548213 call!49369)))

(declare-fun bm!49365 () Bool)

(assert (=> bm!49365 (= call!49368 (validRegex!634 (ite c!135707 (regOne!4675 (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))) (regTwo!4674 (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))))

(declare-fun b!832595 () Bool)

(assert (=> b!832595 (= e!548217 e!548215)))

(assert (=> b!832595 (= c!135708 ((_ is Star!2081) (ite c!135666 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))

(declare-fun b!832596 () Bool)

(assert (=> b!832596 (= e!548218 call!49370)))

(assert (= (and d!260420 (not res!381834)) b!832595))

(assert (= (and b!832595 c!135708) b!832589))

(assert (= (and b!832595 (not c!135708)) b!832588))

(assert (= (and b!832589 res!381836) b!832596))

(assert (= (and b!832588 c!135707) b!832590))

(assert (= (and b!832588 (not c!135707)) b!832593))

(assert (= (and b!832590 res!381835) b!832594))

(assert (= (and b!832593 (not res!381832)) b!832592))

(assert (= (and b!832592 res!381833) b!832591))

(assert (= (or b!832590 b!832591) bm!49365))

(assert (= (or b!832594 b!832592) bm!49363))

(assert (= (or b!832596 bm!49363) bm!49364))

(declare-fun m!1068523 () Bool)

(assert (=> b!832589 m!1068523))

(declare-fun m!1068525 () Bool)

(assert (=> bm!49364 m!1068525))

(declare-fun m!1068527 () Bool)

(assert (=> bm!49365 m!1068527))

(assert (=> bm!49328 d!260420))

(declare-fun e!548223 () List!8907)

(declare-fun b!832597 () Bool)

(assert (=> b!832597 (= e!548223 (Cons!8891 (c!135618 (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))) Nil!8891))))

(declare-fun c!135710 () Bool)

(declare-fun d!260422 () Bool)

(assert (=> d!260422 (= c!135710 (or ((_ is EmptyExpr!2081) (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))) ((_ is EmptyLang!2081) (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177)))))))))

(declare-fun e!548222 () List!8907)

(assert (=> d!260422 (= (firstChars!52 (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))) e!548222)))

(declare-fun c!135711 () Bool)

(declare-fun b!832598 () Bool)

(assert (=> b!832598 (= c!135711 (nullable!532 (regOne!4674 (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177)))))))))

(declare-fun e!548221 () List!8907)

(declare-fun e!548219 () List!8907)

(assert (=> b!832598 (= e!548221 e!548219)))

(declare-fun c!135713 () Bool)

(declare-fun bm!49366 () Bool)

(declare-fun c!135709 () Bool)

(declare-fun call!49374 () List!8907)

(assert (=> bm!49366 (= call!49374 (firstChars!52 (ite c!135709 (reg!2410 (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))) (ite c!135713 (regTwo!4675 (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))) (regOne!4674 (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177)))))))))))

(declare-fun b!832599 () Bool)

(declare-fun e!548220 () List!8907)

(assert (=> b!832599 (= e!548220 e!548221)))

(assert (=> b!832599 (= c!135713 ((_ is Union!2081) (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))))))

(declare-fun b!832600 () Bool)

(declare-fun call!49372 () List!8907)

(assert (=> b!832600 (= e!548219 call!49372)))

(declare-fun b!832601 () Bool)

(assert (=> b!832601 (= c!135709 ((_ is Star!2081) (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))))))

(assert (=> b!832601 (= e!548223 e!548220)))

(declare-fun bm!49367 () Bool)

(declare-fun call!49373 () List!8907)

(assert (=> bm!49367 (= call!49373 call!49374)))

(declare-fun bm!49368 () Bool)

(declare-fun call!49375 () List!8907)

(assert (=> bm!49368 (= call!49375 call!49373)))

(declare-fun b!832602 () Bool)

(assert (=> b!832602 (= e!548221 call!49372)))

(declare-fun b!832603 () Bool)

(assert (=> b!832603 (= e!548219 call!49375)))

(declare-fun b!832604 () Bool)

(assert (=> b!832604 (= e!548222 e!548223)))

(declare-fun c!135712 () Bool)

(assert (=> b!832604 (= c!135712 ((_ is ElementMatch!2081) (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))))))

(declare-fun b!832605 () Bool)

(assert (=> b!832605 (= e!548220 call!49374)))

(declare-fun b!832606 () Bool)

(assert (=> b!832606 (= e!548222 Nil!8891)))

(declare-fun bm!49369 () Bool)

(declare-fun call!49371 () List!8907)

(assert (=> bm!49369 (= call!49372 (++!2307 (ite c!135713 call!49371 call!49375) (ite c!135713 call!49373 call!49371)))))

(declare-fun bm!49370 () Bool)

(assert (=> bm!49370 (= call!49371 (firstChars!52 (ite c!135713 (regOne!4675 (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))) (regTwo!4674 (ite c!135661 (reg!2410 (regOne!4674 r!27177)) (ite c!135665 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177))))))))))

(assert (= (and d!260422 c!135710) b!832606))

(assert (= (and d!260422 (not c!135710)) b!832604))

(assert (= (and b!832604 c!135712) b!832597))

(assert (= (and b!832604 (not c!135712)) b!832601))

(assert (= (and b!832601 c!135709) b!832605))

(assert (= (and b!832601 (not c!135709)) b!832599))

(assert (= (and b!832599 c!135713) b!832602))

(assert (= (and b!832599 (not c!135713)) b!832598))

(assert (= (and b!832598 c!135711) b!832600))

(assert (= (and b!832598 (not c!135711)) b!832603))

(assert (= (or b!832600 b!832603) bm!49368))

(assert (= (or b!832602 bm!49368) bm!49367))

(assert (= (or b!832602 b!832600) bm!49370))

(assert (= (or b!832602 b!832600) bm!49369))

(assert (= (or b!832605 bm!49367) bm!49366))

(declare-fun m!1068529 () Bool)

(assert (=> b!832598 m!1068529))

(declare-fun m!1068531 () Bool)

(assert (=> bm!49366 m!1068531))

(declare-fun m!1068533 () Bool)

(assert (=> bm!49369 m!1068533))

(declare-fun m!1068535 () Bool)

(assert (=> bm!49370 m!1068535))

(assert (=> bm!49321 d!260422))

(declare-fun b!832607 () Bool)

(declare-fun e!548228 () List!8907)

(assert (=> b!832607 (= e!548228 (Cons!8891 (c!135618 (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))) Nil!8891))))

(declare-fun d!260424 () Bool)

(declare-fun c!135715 () Bool)

(assert (=> d!260424 (= c!135715 (or ((_ is EmptyExpr!2081) (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))) ((_ is EmptyLang!2081) (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177))))))))

(declare-fun e!548227 () List!8907)

(assert (=> d!260424 (= (firstChars!52 (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))) e!548227)))

(declare-fun b!832608 () Bool)

(declare-fun c!135716 () Bool)

(assert (=> b!832608 (= c!135716 (nullable!532 (regOne!4674 (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177))))))))

(declare-fun e!548226 () List!8907)

(declare-fun e!548224 () List!8907)

(assert (=> b!832608 (= e!548226 e!548224)))

(declare-fun call!49379 () List!8907)

(declare-fun c!135714 () Bool)

(declare-fun bm!49371 () Bool)

(declare-fun c!135718 () Bool)

(assert (=> bm!49371 (= call!49379 (firstChars!52 (ite c!135714 (reg!2410 (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))) (ite c!135718 (regTwo!4675 (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))) (regOne!4674 (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177))))))))))

(declare-fun b!832609 () Bool)

(declare-fun e!548225 () List!8907)

(assert (=> b!832609 (= e!548225 e!548226)))

(assert (=> b!832609 (= c!135718 ((_ is Union!2081) (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))

(declare-fun b!832610 () Bool)

(declare-fun call!49377 () List!8907)

(assert (=> b!832610 (= e!548224 call!49377)))

(declare-fun b!832611 () Bool)

(assert (=> b!832611 (= c!135714 ((_ is Star!2081) (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))

(assert (=> b!832611 (= e!548228 e!548225)))

(declare-fun bm!49372 () Bool)

(declare-fun call!49378 () List!8907)

(assert (=> bm!49372 (= call!49378 call!49379)))

(declare-fun bm!49373 () Bool)

(declare-fun call!49380 () List!8907)

(assert (=> bm!49373 (= call!49380 call!49378)))

(declare-fun b!832612 () Bool)

(assert (=> b!832612 (= e!548226 call!49377)))

(declare-fun b!832613 () Bool)

(assert (=> b!832613 (= e!548224 call!49380)))

(declare-fun b!832614 () Bool)

(assert (=> b!832614 (= e!548227 e!548228)))

(declare-fun c!135717 () Bool)

(assert (=> b!832614 (= c!135717 ((_ is ElementMatch!2081) (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))

(declare-fun b!832615 () Bool)

(assert (=> b!832615 (= e!548225 call!49379)))

(declare-fun b!832616 () Bool)

(assert (=> b!832616 (= e!548227 Nil!8891)))

(declare-fun bm!49374 () Bool)

(declare-fun call!49376 () List!8907)

(assert (=> bm!49374 (= call!49377 (++!2307 (ite c!135718 call!49376 call!49380) (ite c!135718 call!49378 call!49376)))))

(declare-fun bm!49375 () Bool)

(assert (=> bm!49375 (= call!49376 (firstChars!52 (ite c!135718 (regOne!4675 (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))) (regTwo!4674 (ite c!135643 (regOne!4675 (regTwo!4674 r!27177)) (regTwo!4674 (regTwo!4674 r!27177)))))))))

(assert (= (and d!260424 c!135715) b!832616))

(assert (= (and d!260424 (not c!135715)) b!832614))

(assert (= (and b!832614 c!135717) b!832607))

(assert (= (and b!832614 (not c!135717)) b!832611))

(assert (= (and b!832611 c!135714) b!832615))

(assert (= (and b!832611 (not c!135714)) b!832609))

(assert (= (and b!832609 c!135718) b!832612))

(assert (= (and b!832609 (not c!135718)) b!832608))

(assert (= (and b!832608 c!135716) b!832610))

(assert (= (and b!832608 (not c!135716)) b!832613))

(assert (= (or b!832610 b!832613) bm!49373))

(assert (= (or b!832612 bm!49373) bm!49372))

(assert (= (or b!832612 b!832610) bm!49375))

(assert (= (or b!832612 b!832610) bm!49374))

(assert (= (or b!832615 bm!49372) bm!49371))

(declare-fun m!1068537 () Bool)

(assert (=> b!832608 m!1068537))

(declare-fun m!1068539 () Bool)

(assert (=> bm!49371 m!1068539))

(declare-fun m!1068541 () Bool)

(assert (=> bm!49374 m!1068541))

(declare-fun m!1068543 () Bool)

(assert (=> bm!49375 m!1068543))

(assert (=> bm!49297 d!260424))

(declare-fun d!260426 () Bool)

(declare-fun lt!317792 () Bool)

(assert (=> d!260426 (= lt!317792 (select (content!1319 (t!93199 (firstChars!52 r!27177))) c!13916))))

(declare-fun e!548230 () Bool)

(assert (=> d!260426 (= lt!317792 e!548230)))

(declare-fun res!381838 () Bool)

(assert (=> d!260426 (=> (not res!381838) (not e!548230))))

(assert (=> d!260426 (= res!381838 ((_ is Cons!8891) (t!93199 (firstChars!52 r!27177))))))

(assert (=> d!260426 (= (contains!1672 (t!93199 (firstChars!52 r!27177)) c!13916) lt!317792)))

(declare-fun b!832617 () Bool)

(declare-fun e!548229 () Bool)

(assert (=> b!832617 (= e!548230 e!548229)))

(declare-fun res!381837 () Bool)

(assert (=> b!832617 (=> res!381837 e!548229)))

(assert (=> b!832617 (= res!381837 (= (h!14292 (t!93199 (firstChars!52 r!27177))) c!13916))))

(declare-fun b!832618 () Bool)

(assert (=> b!832618 (= e!548229 (contains!1672 (t!93199 (t!93199 (firstChars!52 r!27177))) c!13916))))

(assert (= (and d!260426 res!381838) b!832617))

(assert (= (and b!832617 (not res!381837)) b!832618))

(assert (=> d!260426 m!1068451))

(declare-fun m!1068545 () Bool)

(assert (=> d!260426 m!1068545))

(declare-fun m!1068547 () Bool)

(assert (=> b!832618 m!1068547))

(assert (=> b!832430 d!260426))

(declare-fun d!260428 () Bool)

(assert (=> d!260428 (= (nullable!532 (regOne!4674 (regOne!4674 r!27177))) (nullableFct!169 (regOne!4674 (regOne!4674 r!27177))))))

(declare-fun bs!229674 () Bool)

(assert (= bs!229674 d!260428))

(declare-fun m!1068549 () Bool)

(assert (=> bs!229674 m!1068549))

(assert (=> b!832399 d!260428))

(assert (=> b!832432 d!260372))

(declare-fun b!832619 () Bool)

(declare-fun e!548235 () List!8907)

(assert (=> b!832619 (= e!548235 (Cons!8891 (c!135618 (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))) Nil!8891))))

(declare-fun d!260430 () Bool)

(declare-fun c!135720 () Bool)

(assert (=> d!260430 (= c!135720 (or ((_ is EmptyExpr!2081) (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))) ((_ is EmptyLang!2081) (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177))))))))

(declare-fun e!548234 () List!8907)

(assert (=> d!260430 (= (firstChars!52 (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))) e!548234)))

(declare-fun b!832620 () Bool)

(declare-fun c!135721 () Bool)

(assert (=> b!832620 (= c!135721 (nullable!532 (regOne!4674 (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177))))))))

(declare-fun e!548233 () List!8907)

(declare-fun e!548231 () List!8907)

(assert (=> b!832620 (= e!548233 e!548231)))

(declare-fun call!49384 () List!8907)

(declare-fun c!135723 () Bool)

(declare-fun c!135719 () Bool)

(declare-fun bm!49376 () Bool)

(assert (=> bm!49376 (= call!49384 (firstChars!52 (ite c!135719 (reg!2410 (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))) (ite c!135723 (regTwo!4675 (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))) (regOne!4674 (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177))))))))))

(declare-fun b!832621 () Bool)

(declare-fun e!548232 () List!8907)

(assert (=> b!832621 (= e!548232 e!548233)))

(assert (=> b!832621 (= c!135723 ((_ is Union!2081) (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))

(declare-fun b!832622 () Bool)

(declare-fun call!49382 () List!8907)

(assert (=> b!832622 (= e!548231 call!49382)))

(declare-fun b!832623 () Bool)

(assert (=> b!832623 (= c!135719 ((_ is Star!2081) (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))

(assert (=> b!832623 (= e!548235 e!548232)))

(declare-fun bm!49377 () Bool)

(declare-fun call!49383 () List!8907)

(assert (=> bm!49377 (= call!49383 call!49384)))

(declare-fun bm!49378 () Bool)

(declare-fun call!49385 () List!8907)

(assert (=> bm!49378 (= call!49385 call!49383)))

(declare-fun b!832624 () Bool)

(assert (=> b!832624 (= e!548233 call!49382)))

(declare-fun b!832625 () Bool)

(assert (=> b!832625 (= e!548231 call!49385)))

(declare-fun b!832626 () Bool)

(assert (=> b!832626 (= e!548234 e!548235)))

(declare-fun c!135722 () Bool)

(assert (=> b!832626 (= c!135722 ((_ is ElementMatch!2081) (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))

(declare-fun b!832627 () Bool)

(assert (=> b!832627 (= e!548232 call!49384)))

(declare-fun b!832628 () Bool)

(assert (=> b!832628 (= e!548234 Nil!8891)))

(declare-fun call!49381 () List!8907)

(declare-fun bm!49379 () Bool)

(assert (=> bm!49379 (= call!49382 (++!2307 (ite c!135723 call!49381 call!49385) (ite c!135723 call!49383 call!49381)))))

(declare-fun bm!49380 () Bool)

(assert (=> bm!49380 (= call!49381 (firstChars!52 (ite c!135723 (regOne!4675 (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))) (regTwo!4674 (ite c!135673 (reg!2410 r!27177) (ite c!135677 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))))

(assert (= (and d!260430 c!135720) b!832628))

(assert (= (and d!260430 (not c!135720)) b!832626))

(assert (= (and b!832626 c!135722) b!832619))

(assert (= (and b!832626 (not c!135722)) b!832623))

(assert (= (and b!832623 c!135719) b!832627))

(assert (= (and b!832623 (not c!135719)) b!832621))

(assert (= (and b!832621 c!135723) b!832624))

(assert (= (and b!832621 (not c!135723)) b!832620))

(assert (= (and b!832620 c!135721) b!832622))

(assert (= (and b!832620 (not c!135721)) b!832625))

(assert (= (or b!832622 b!832625) bm!49378))

(assert (= (or b!832624 bm!49378) bm!49377))

(assert (= (or b!832624 b!832622) bm!49380))

(assert (= (or b!832624 b!832622) bm!49379))

(assert (= (or b!832627 bm!49377) bm!49376))

(declare-fun m!1068551 () Bool)

(assert (=> b!832620 m!1068551))

(declare-fun m!1068553 () Bool)

(assert (=> bm!49376 m!1068553))

(declare-fun m!1068555 () Bool)

(assert (=> bm!49379 m!1068555))

(declare-fun m!1068557 () Bool)

(assert (=> bm!49380 m!1068557))

(assert (=> bm!49334 d!260430))

(declare-fun e!548240 () List!8907)

(declare-fun b!832629 () Bool)

(assert (=> b!832629 (= e!548240 (Cons!8891 (c!135618 (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))) Nil!8891))))

(declare-fun c!135725 () Bool)

(declare-fun d!260432 () Bool)

(assert (=> d!260432 (= c!135725 (or ((_ is EmptyExpr!2081) (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))) ((_ is EmptyLang!2081) (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177)))))))))

(declare-fun e!548239 () List!8907)

(assert (=> d!260432 (= (firstChars!52 (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))) e!548239)))

(declare-fun b!832630 () Bool)

(declare-fun c!135726 () Bool)

(assert (=> b!832630 (= c!135726 (nullable!532 (regOne!4674 (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177)))))))))

(declare-fun e!548238 () List!8907)

(declare-fun e!548236 () List!8907)

(assert (=> b!832630 (= e!548238 e!548236)))

(declare-fun c!135724 () Bool)

(declare-fun call!49389 () List!8907)

(declare-fun bm!49381 () Bool)

(declare-fun c!135728 () Bool)

(assert (=> bm!49381 (= call!49389 (firstChars!52 (ite c!135724 (reg!2410 (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))) (ite c!135728 (regTwo!4675 (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))) (regOne!4674 (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177)))))))))))

(declare-fun b!832631 () Bool)

(declare-fun e!548237 () List!8907)

(assert (=> b!832631 (= e!548237 e!548238)))

(assert (=> b!832631 (= c!135728 ((_ is Union!2081) (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))

(declare-fun b!832632 () Bool)

(declare-fun call!49387 () List!8907)

(assert (=> b!832632 (= e!548236 call!49387)))

(declare-fun b!832633 () Bool)

(assert (=> b!832633 (= c!135724 ((_ is Star!2081) (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))

(assert (=> b!832633 (= e!548240 e!548237)))

(declare-fun bm!49382 () Bool)

(declare-fun call!49388 () List!8907)

(assert (=> bm!49382 (= call!49388 call!49389)))

(declare-fun bm!49383 () Bool)

(declare-fun call!49390 () List!8907)

(assert (=> bm!49383 (= call!49390 call!49388)))

(declare-fun b!832634 () Bool)

(assert (=> b!832634 (= e!548238 call!49387)))

(declare-fun b!832635 () Bool)

(assert (=> b!832635 (= e!548236 call!49390)))

(declare-fun b!832636 () Bool)

(assert (=> b!832636 (= e!548239 e!548240)))

(declare-fun c!135727 () Bool)

(assert (=> b!832636 (= c!135727 ((_ is ElementMatch!2081) (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))

(declare-fun b!832637 () Bool)

(assert (=> b!832637 (= e!548237 call!49389)))

(declare-fun b!832638 () Bool)

(assert (=> b!832638 (= e!548239 Nil!8891)))

(declare-fun bm!49384 () Bool)

(declare-fun call!49386 () List!8907)

(assert (=> bm!49384 (= call!49387 (++!2307 (ite c!135728 call!49386 call!49390) (ite c!135728 call!49388 call!49386)))))

(declare-fun bm!49385 () Bool)

(assert (=> bm!49385 (= call!49386 (firstChars!52 (ite c!135728 (regOne!4675 (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))) (regTwo!4674 (ite c!135639 (reg!2410 (regTwo!4674 r!27177)) (ite c!135643 (regTwo!4675 (regTwo!4674 r!27177)) (regOne!4674 (regTwo!4674 r!27177))))))))))

(assert (= (and d!260432 c!135725) b!832638))

(assert (= (and d!260432 (not c!135725)) b!832636))

(assert (= (and b!832636 c!135727) b!832629))

(assert (= (and b!832636 (not c!135727)) b!832633))

(assert (= (and b!832633 c!135724) b!832637))

(assert (= (and b!832633 (not c!135724)) b!832631))

(assert (= (and b!832631 c!135728) b!832634))

(assert (= (and b!832631 (not c!135728)) b!832630))

(assert (= (and b!832630 c!135726) b!832632))

(assert (= (and b!832630 (not c!135726)) b!832635))

(assert (= (or b!832632 b!832635) bm!49383))

(assert (= (or b!832634 bm!49383) bm!49382))

(assert (= (or b!832634 b!832632) bm!49385))

(assert (= (or b!832634 b!832632) bm!49384))

(assert (= (or b!832637 bm!49382) bm!49381))

(declare-fun m!1068559 () Bool)

(assert (=> b!832630 m!1068559))

(declare-fun m!1068561 () Bool)

(assert (=> bm!49381 m!1068561))

(declare-fun m!1068563 () Bool)

(assert (=> bm!49384 m!1068563))

(declare-fun m!1068565 () Bool)

(assert (=> bm!49385 m!1068565))

(assert (=> bm!49293 d!260432))

(declare-fun bm!49390 () Bool)

(declare-fun call!49395 () Bool)

(declare-fun c!135731 () Bool)

(assert (=> bm!49390 (= call!49395 (nullable!532 (ite c!135731 (regOne!4675 (regOne!4674 r!27177)) (regTwo!4674 (regOne!4674 r!27177)))))))

(declare-fun b!832653 () Bool)

(declare-fun e!548258 () Bool)

(declare-fun e!548256 () Bool)

(assert (=> b!832653 (= e!548258 e!548256)))

(declare-fun res!381851 () Bool)

(assert (=> b!832653 (= res!381851 call!49395)))

(assert (=> b!832653 (=> res!381851 e!548256)))

(declare-fun b!832654 () Bool)

(declare-fun e!548257 () Bool)

(declare-fun e!548253 () Bool)

(assert (=> b!832654 (= e!548257 e!548253)))

(declare-fun res!381850 () Bool)

(assert (=> b!832654 (=> res!381850 e!548253)))

(assert (=> b!832654 (= res!381850 ((_ is Star!2081) (regOne!4674 r!27177)))))

(declare-fun b!832655 () Bool)

(declare-fun call!49396 () Bool)

(assert (=> b!832655 (= e!548256 call!49396)))

(declare-fun b!832656 () Bool)

(declare-fun e!548254 () Bool)

(assert (=> b!832656 (= e!548254 e!548257)))

(declare-fun res!381849 () Bool)

(assert (=> b!832656 (=> (not res!381849) (not e!548257))))

(assert (=> b!832656 (= res!381849 (and (not ((_ is EmptyLang!2081) (regOne!4674 r!27177))) (not ((_ is ElementMatch!2081) (regOne!4674 r!27177)))))))

(declare-fun d!260434 () Bool)

(declare-fun res!381853 () Bool)

(assert (=> d!260434 (=> res!381853 e!548254)))

(assert (=> d!260434 (= res!381853 ((_ is EmptyExpr!2081) (regOne!4674 r!27177)))))

(assert (=> d!260434 (= (nullableFct!169 (regOne!4674 r!27177)) e!548254)))

(declare-fun b!832657 () Bool)

(declare-fun e!548255 () Bool)

(assert (=> b!832657 (= e!548258 e!548255)))

(declare-fun res!381852 () Bool)

(assert (=> b!832657 (= res!381852 call!49396)))

(assert (=> b!832657 (=> (not res!381852) (not e!548255))))

(declare-fun bm!49391 () Bool)

(assert (=> bm!49391 (= call!49396 (nullable!532 (ite c!135731 (regTwo!4675 (regOne!4674 r!27177)) (regOne!4674 (regOne!4674 r!27177)))))))

(declare-fun b!832658 () Bool)

(assert (=> b!832658 (= e!548253 e!548258)))

(assert (=> b!832658 (= c!135731 ((_ is Union!2081) (regOne!4674 r!27177)))))

(declare-fun b!832659 () Bool)

(assert (=> b!832659 (= e!548255 call!49395)))

(assert (= (and d!260434 (not res!381853)) b!832656))

(assert (= (and b!832656 res!381849) b!832654))

(assert (= (and b!832654 (not res!381850)) b!832658))

(assert (= (and b!832658 c!135731) b!832653))

(assert (= (and b!832658 (not c!135731)) b!832657))

(assert (= (and b!832653 (not res!381851)) b!832655))

(assert (= (and b!832657 res!381852) b!832659))

(assert (= (or b!832653 b!832659) bm!49390))

(assert (= (or b!832655 b!832657) bm!49391))

(declare-fun m!1068567 () Bool)

(assert (=> bm!49390 m!1068567))

(declare-fun m!1068569 () Bool)

(assert (=> bm!49391 m!1068569))

(assert (=> d!260372 d!260434))

(declare-fun d!260436 () Bool)

(assert (=> d!260436 (= (nullable!532 (reg!2410 r!27177)) (nullableFct!169 (reg!2410 r!27177)))))

(declare-fun bs!229675 () Bool)

(assert (= bs!229675 d!260436))

(declare-fun m!1068571 () Bool)

(assert (=> bs!229675 m!1068571))

(assert (=> b!832379 d!260436))

(declare-fun d!260438 () Bool)

(assert (=> d!260438 (= (nullable!532 (regOne!4674 (regTwo!4674 r!27177))) (nullableFct!169 (regOne!4674 (regTwo!4674 r!27177))))))

(declare-fun bs!229676 () Bool)

(assert (= bs!229676 d!260438))

(declare-fun m!1068573 () Bool)

(assert (=> bs!229676 m!1068573))

(assert (=> b!832323 d!260438))

(declare-fun d!260440 () Bool)

(assert (=> d!260440 (= (nullable!532 (reg!2410 (regTwo!4674 r!27177))) (nullableFct!169 (reg!2410 (regTwo!4674 r!27177))))))

(declare-fun bs!229677 () Bool)

(assert (= bs!229677 d!260440))

(declare-fun m!1068575 () Bool)

(assert (=> bs!229677 m!1068575))

(assert (=> b!832409 d!260440))

(declare-fun e!548259 () Bool)

(declare-fun lt!317793 () List!8907)

(declare-fun b!832663 () Bool)

(assert (=> b!832663 (= e!548259 (or (not (= (ite c!135665 call!49328 call!49326) Nil!8891)) (= lt!317793 (ite c!135665 call!49326 call!49330))))))

(declare-fun e!548260 () List!8907)

(declare-fun b!832661 () Bool)

(assert (=> b!832661 (= e!548260 (Cons!8891 (h!14292 (ite c!135665 call!49326 call!49330)) (++!2307 (t!93199 (ite c!135665 call!49326 call!49330)) (ite c!135665 call!49328 call!49326))))))

(declare-fun b!832660 () Bool)

(assert (=> b!832660 (= e!548260 (ite c!135665 call!49328 call!49326))))

(declare-fun d!260442 () Bool)

(assert (=> d!260442 e!548259))

(declare-fun res!381855 () Bool)

(assert (=> d!260442 (=> (not res!381855) (not e!548259))))

(assert (=> d!260442 (= res!381855 (= (content!1319 lt!317793) ((_ map or) (content!1319 (ite c!135665 call!49326 call!49330)) (content!1319 (ite c!135665 call!49328 call!49326)))))))

(assert (=> d!260442 (= lt!317793 e!548260)))

(declare-fun c!135732 () Bool)

(assert (=> d!260442 (= c!135732 ((_ is Nil!8891) (ite c!135665 call!49326 call!49330)))))

(assert (=> d!260442 (= (++!2307 (ite c!135665 call!49326 call!49330) (ite c!135665 call!49328 call!49326)) lt!317793)))

(declare-fun b!832662 () Bool)

(declare-fun res!381854 () Bool)

(assert (=> b!832662 (=> (not res!381854) (not e!548259))))

(assert (=> b!832662 (= res!381854 (= (size!7483 lt!317793) (+ (size!7483 (ite c!135665 call!49326 call!49330)) (size!7483 (ite c!135665 call!49328 call!49326)))))))

(assert (= (and d!260442 c!135732) b!832660))

(assert (= (and d!260442 (not c!135732)) b!832661))

(assert (= (and d!260442 res!381855) b!832662))

(assert (= (and b!832662 res!381854) b!832663))

(declare-fun m!1068577 () Bool)

(assert (=> b!832661 m!1068577))

(declare-fun m!1068579 () Bool)

(assert (=> d!260442 m!1068579))

(declare-fun m!1068581 () Bool)

(assert (=> d!260442 m!1068581))

(declare-fun m!1068583 () Bool)

(assert (=> d!260442 m!1068583))

(declare-fun m!1068585 () Bool)

(assert (=> b!832662 m!1068585))

(declare-fun m!1068587 () Bool)

(assert (=> b!832662 m!1068587))

(declare-fun m!1068589 () Bool)

(assert (=> b!832662 m!1068589))

(assert (=> bm!49324 d!260442))

(declare-fun d!260444 () Bool)

(declare-fun c!135733 () Bool)

(assert (=> d!260444 (= c!135733 ((_ is Nil!8891) (firstChars!52 (regTwo!4674 r!27177))))))

(declare-fun e!548261 () (InoxSet C!4732))

(assert (=> d!260444 (= (content!1319 (firstChars!52 (regTwo!4674 r!27177))) e!548261)))

(declare-fun b!832664 () Bool)

(assert (=> b!832664 (= e!548261 ((as const (Array C!4732 Bool)) false))))

(declare-fun b!832665 () Bool)

(assert (=> b!832665 (= e!548261 ((_ map or) (store ((as const (Array C!4732 Bool)) false) (h!14292 (firstChars!52 (regTwo!4674 r!27177))) true) (content!1319 (t!93199 (firstChars!52 (regTwo!4674 r!27177))))))))

(assert (= (and d!260444 c!135733) b!832664))

(assert (= (and d!260444 (not c!135733)) b!832665))

(declare-fun m!1068591 () Bool)

(assert (=> b!832665 m!1068591))

(assert (=> b!832665 m!1068499))

(assert (=> d!260364 d!260444))

(declare-fun bm!49392 () Bool)

(declare-fun call!49398 () Bool)

(declare-fun call!49399 () Bool)

(assert (=> bm!49392 (= call!49398 call!49399)))

(declare-fun b!832666 () Bool)

(declare-fun e!548265 () Bool)

(declare-fun e!548262 () Bool)

(assert (=> b!832666 (= e!548265 e!548262)))

(declare-fun c!135734 () Bool)

(assert (=> b!832666 (= c!135734 ((_ is Union!2081) (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))

(declare-fun b!832667 () Bool)

(declare-fun e!548268 () Bool)

(assert (=> b!832667 (= e!548265 e!548268)))

(declare-fun res!381860 () Bool)

(assert (=> b!832667 (= res!381860 (not (nullable!532 (reg!2410 (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))))

(assert (=> b!832667 (=> (not res!381860) (not e!548268))))

(declare-fun b!832668 () Bool)

(declare-fun res!381859 () Bool)

(declare-fun e!548263 () Bool)

(assert (=> b!832668 (=> (not res!381859) (not e!548263))))

(declare-fun call!49397 () Bool)

(assert (=> b!832668 (= res!381859 call!49397)))

(assert (=> b!832668 (= e!548262 e!548263)))

(declare-fun b!832669 () Bool)

(declare-fun e!548264 () Bool)

(assert (=> b!832669 (= e!548264 call!49397)))

(declare-fun c!135735 () Bool)

(declare-fun bm!49393 () Bool)

(assert (=> bm!49393 (= call!49399 (validRegex!634 (ite c!135735 (reg!2410 (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177)))) (ite c!135734 (regTwo!4675 (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177)))) (regOne!4674 (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177))))))))))

(declare-fun d!260446 () Bool)

(declare-fun res!381858 () Bool)

(declare-fun e!548267 () Bool)

(assert (=> d!260446 (=> res!381858 e!548267)))

(assert (=> d!260446 (= res!381858 ((_ is ElementMatch!2081) (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))

(assert (=> d!260446 (= (validRegex!634 (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177)))) e!548267)))

(declare-fun b!832670 () Bool)

(declare-fun e!548266 () Bool)

(assert (=> b!832670 (= e!548266 e!548264)))

(declare-fun res!381857 () Bool)

(assert (=> b!832670 (=> (not res!381857) (not e!548264))))

(assert (=> b!832670 (= res!381857 call!49398)))

(declare-fun b!832671 () Bool)

(declare-fun res!381856 () Bool)

(assert (=> b!832671 (=> res!381856 e!548266)))

(assert (=> b!832671 (= res!381856 (not ((_ is Concat!3812) (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177))))))))

(assert (=> b!832671 (= e!548262 e!548266)))

(declare-fun b!832672 () Bool)

(assert (=> b!832672 (= e!548263 call!49398)))

(declare-fun bm!49394 () Bool)

(assert (=> bm!49394 (= call!49397 (validRegex!634 (ite c!135734 (regOne!4675 (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177)))) (regTwo!4674 (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))))

(declare-fun b!832673 () Bool)

(assert (=> b!832673 (= e!548267 e!548265)))

(assert (=> b!832673 (= c!135735 ((_ is Star!2081) (ite c!135658 (reg!2410 r!27177) (ite c!135657 (regTwo!4675 r!27177) (regOne!4674 r!27177)))))))

(declare-fun b!832674 () Bool)

(assert (=> b!832674 (= e!548268 call!49399)))

(assert (= (and d!260446 (not res!381858)) b!832673))

(assert (= (and b!832673 c!135735) b!832667))

(assert (= (and b!832673 (not c!135735)) b!832666))

(assert (= (and b!832667 res!381860) b!832674))

(assert (= (and b!832666 c!135734) b!832668))

(assert (= (and b!832666 (not c!135734)) b!832671))

(assert (= (and b!832668 res!381859) b!832672))

(assert (= (and b!832671 (not res!381856)) b!832670))

(assert (= (and b!832670 res!381857) b!832669))

(assert (= (or b!832668 b!832669) bm!49394))

(assert (= (or b!832672 b!832670) bm!49392))

(assert (= (or b!832674 bm!49392) bm!49393))

(declare-fun m!1068593 () Bool)

(assert (=> b!832667 m!1068593))

(declare-fun m!1068595 () Bool)

(assert (=> bm!49393 m!1068595))

(declare-fun m!1068597 () Bool)

(assert (=> bm!49394 m!1068597))

(assert (=> bm!49316 d!260446))

(declare-fun b!832677 () Bool)

(declare-fun e!548269 () Bool)

(declare-fun tp!260789 () Bool)

(assert (=> b!832677 (= e!548269 tp!260789)))

(declare-fun b!832678 () Bool)

(declare-fun tp!260788 () Bool)

(declare-fun tp!260787 () Bool)

(assert (=> b!832678 (= e!548269 (and tp!260788 tp!260787))))

(declare-fun b!832676 () Bool)

(declare-fun tp!260786 () Bool)

(declare-fun tp!260785 () Bool)

(assert (=> b!832676 (= e!548269 (and tp!260786 tp!260785))))

(declare-fun b!832675 () Bool)

(assert (=> b!832675 (= e!548269 tp_is_empty!3885)))

(assert (=> b!832494 (= tp!260750 e!548269)))

(assert (= (and b!832494 ((_ is ElementMatch!2081) (reg!2410 (regOne!4674 r!27177)))) b!832675))

(assert (= (and b!832494 ((_ is Concat!3812) (reg!2410 (regOne!4674 r!27177)))) b!832676))

(assert (= (and b!832494 ((_ is Star!2081) (reg!2410 (regOne!4674 r!27177)))) b!832677))

(assert (= (and b!832494 ((_ is Union!2081) (reg!2410 (regOne!4674 r!27177)))) b!832678))

(declare-fun b!832681 () Bool)

(declare-fun e!548270 () Bool)

(declare-fun tp!260794 () Bool)

(assert (=> b!832681 (= e!548270 tp!260794)))

(declare-fun b!832682 () Bool)

(declare-fun tp!260793 () Bool)

(declare-fun tp!260792 () Bool)

(assert (=> b!832682 (= e!548270 (and tp!260793 tp!260792))))

(declare-fun b!832680 () Bool)

(declare-fun tp!260791 () Bool)

(declare-fun tp!260790 () Bool)

(assert (=> b!832680 (= e!548270 (and tp!260791 tp!260790))))

(declare-fun b!832679 () Bool)

(assert (=> b!832679 (= e!548270 tp_is_empty!3885)))

(assert (=> b!832495 (= tp!260749 e!548270)))

(assert (= (and b!832495 ((_ is ElementMatch!2081) (regOne!4675 (regOne!4674 r!27177)))) b!832679))

(assert (= (and b!832495 ((_ is Concat!3812) (regOne!4675 (regOne!4674 r!27177)))) b!832680))

(assert (= (and b!832495 ((_ is Star!2081) (regOne!4675 (regOne!4674 r!27177)))) b!832681))

(assert (= (and b!832495 ((_ is Union!2081) (regOne!4675 (regOne!4674 r!27177)))) b!832682))

(declare-fun b!832685 () Bool)

(declare-fun e!548271 () Bool)

(declare-fun tp!260799 () Bool)

(assert (=> b!832685 (= e!548271 tp!260799)))

(declare-fun b!832686 () Bool)

(declare-fun tp!260798 () Bool)

(declare-fun tp!260797 () Bool)

(assert (=> b!832686 (= e!548271 (and tp!260798 tp!260797))))

(declare-fun b!832684 () Bool)

(declare-fun tp!260796 () Bool)

(declare-fun tp!260795 () Bool)

(assert (=> b!832684 (= e!548271 (and tp!260796 tp!260795))))

(declare-fun b!832683 () Bool)

(assert (=> b!832683 (= e!548271 tp_is_empty!3885)))

(assert (=> b!832495 (= tp!260748 e!548271)))

(assert (= (and b!832495 ((_ is ElementMatch!2081) (regTwo!4675 (regOne!4674 r!27177)))) b!832683))

(assert (= (and b!832495 ((_ is Concat!3812) (regTwo!4675 (regOne!4674 r!27177)))) b!832684))

(assert (= (and b!832495 ((_ is Star!2081) (regTwo!4675 (regOne!4674 r!27177)))) b!832685))

(assert (= (and b!832495 ((_ is Union!2081) (regTwo!4675 (regOne!4674 r!27177)))) b!832686))

(declare-fun b!832689 () Bool)

(declare-fun e!548272 () Bool)

(declare-fun tp!260804 () Bool)

(assert (=> b!832689 (= e!548272 tp!260804)))

(declare-fun b!832690 () Bool)

(declare-fun tp!260803 () Bool)

(declare-fun tp!260802 () Bool)

(assert (=> b!832690 (= e!548272 (and tp!260803 tp!260802))))

(declare-fun b!832688 () Bool)

(declare-fun tp!260801 () Bool)

(declare-fun tp!260800 () Bool)

(assert (=> b!832688 (= e!548272 (and tp!260801 tp!260800))))

(declare-fun b!832687 () Bool)

(assert (=> b!832687 (= e!548272 tp_is_empty!3885)))

(assert (=> b!832493 (= tp!260747 e!548272)))

(assert (= (and b!832493 ((_ is ElementMatch!2081) (regOne!4674 (regOne!4674 r!27177)))) b!832687))

(assert (= (and b!832493 ((_ is Concat!3812) (regOne!4674 (regOne!4674 r!27177)))) b!832688))

(assert (= (and b!832493 ((_ is Star!2081) (regOne!4674 (regOne!4674 r!27177)))) b!832689))

(assert (= (and b!832493 ((_ is Union!2081) (regOne!4674 (regOne!4674 r!27177)))) b!832690))

(declare-fun b!832693 () Bool)

(declare-fun e!548273 () Bool)

(declare-fun tp!260809 () Bool)

(assert (=> b!832693 (= e!548273 tp!260809)))

(declare-fun b!832694 () Bool)

(declare-fun tp!260808 () Bool)

(declare-fun tp!260807 () Bool)

(assert (=> b!832694 (= e!548273 (and tp!260808 tp!260807))))

(declare-fun b!832692 () Bool)

(declare-fun tp!260806 () Bool)

(declare-fun tp!260805 () Bool)

(assert (=> b!832692 (= e!548273 (and tp!260806 tp!260805))))

(declare-fun b!832691 () Bool)

(assert (=> b!832691 (= e!548273 tp_is_empty!3885)))

(assert (=> b!832493 (= tp!260746 e!548273)))

(assert (= (and b!832493 ((_ is ElementMatch!2081) (regTwo!4674 (regOne!4674 r!27177)))) b!832691))

(assert (= (and b!832493 ((_ is Concat!3812) (regTwo!4674 (regOne!4674 r!27177)))) b!832692))

(assert (= (and b!832493 ((_ is Star!2081) (regTwo!4674 (regOne!4674 r!27177)))) b!832693))

(assert (= (and b!832493 ((_ is Union!2081) (regTwo!4674 (regOne!4674 r!27177)))) b!832694))

(declare-fun b!832697 () Bool)

(declare-fun e!548274 () Bool)

(declare-fun tp!260814 () Bool)

(assert (=> b!832697 (= e!548274 tp!260814)))

(declare-fun b!832698 () Bool)

(declare-fun tp!260813 () Bool)

(declare-fun tp!260812 () Bool)

(assert (=> b!832698 (= e!548274 (and tp!260813 tp!260812))))

(declare-fun b!832696 () Bool)

(declare-fun tp!260811 () Bool)

(declare-fun tp!260810 () Bool)

(assert (=> b!832696 (= e!548274 (and tp!260811 tp!260810))))

(declare-fun b!832695 () Bool)

(assert (=> b!832695 (= e!548274 tp_is_empty!3885)))

(assert (=> b!832477 (= tp!260731 e!548274)))

(assert (= (and b!832477 ((_ is ElementMatch!2081) (regOne!4674 (regOne!4675 r!27177)))) b!832695))

(assert (= (and b!832477 ((_ is Concat!3812) (regOne!4674 (regOne!4675 r!27177)))) b!832696))

(assert (= (and b!832477 ((_ is Star!2081) (regOne!4674 (regOne!4675 r!27177)))) b!832697))

(assert (= (and b!832477 ((_ is Union!2081) (regOne!4674 (regOne!4675 r!27177)))) b!832698))

(declare-fun b!832701 () Bool)

(declare-fun e!548275 () Bool)

(declare-fun tp!260819 () Bool)

(assert (=> b!832701 (= e!548275 tp!260819)))

(declare-fun b!832702 () Bool)

(declare-fun tp!260818 () Bool)

(declare-fun tp!260817 () Bool)

(assert (=> b!832702 (= e!548275 (and tp!260818 tp!260817))))

(declare-fun b!832700 () Bool)

(declare-fun tp!260816 () Bool)

(declare-fun tp!260815 () Bool)

(assert (=> b!832700 (= e!548275 (and tp!260816 tp!260815))))

(declare-fun b!832699 () Bool)

(assert (=> b!832699 (= e!548275 tp_is_empty!3885)))

(assert (=> b!832477 (= tp!260730 e!548275)))

(assert (= (and b!832477 ((_ is ElementMatch!2081) (regTwo!4674 (regOne!4675 r!27177)))) b!832699))

(assert (= (and b!832477 ((_ is Concat!3812) (regTwo!4674 (regOne!4675 r!27177)))) b!832700))

(assert (= (and b!832477 ((_ is Star!2081) (regTwo!4674 (regOne!4675 r!27177)))) b!832701))

(assert (= (and b!832477 ((_ is Union!2081) (regTwo!4674 (regOne!4675 r!27177)))) b!832702))

(declare-fun b!832705 () Bool)

(declare-fun e!548276 () Bool)

(declare-fun tp!260824 () Bool)

(assert (=> b!832705 (= e!548276 tp!260824)))

(declare-fun b!832706 () Bool)

(declare-fun tp!260823 () Bool)

(declare-fun tp!260822 () Bool)

(assert (=> b!832706 (= e!548276 (and tp!260823 tp!260822))))

(declare-fun b!832704 () Bool)

(declare-fun tp!260821 () Bool)

(declare-fun tp!260820 () Bool)

(assert (=> b!832704 (= e!548276 (and tp!260821 tp!260820))))

(declare-fun b!832703 () Bool)

(assert (=> b!832703 (= e!548276 tp_is_empty!3885)))

(assert (=> b!832478 (= tp!260734 e!548276)))

(assert (= (and b!832478 ((_ is ElementMatch!2081) (reg!2410 (regOne!4675 r!27177)))) b!832703))

(assert (= (and b!832478 ((_ is Concat!3812) (reg!2410 (regOne!4675 r!27177)))) b!832704))

(assert (= (and b!832478 ((_ is Star!2081) (reg!2410 (regOne!4675 r!27177)))) b!832705))

(assert (= (and b!832478 ((_ is Union!2081) (reg!2410 (regOne!4675 r!27177)))) b!832706))

(declare-fun b!832709 () Bool)

(declare-fun e!548277 () Bool)

(declare-fun tp!260829 () Bool)

(assert (=> b!832709 (= e!548277 tp!260829)))

(declare-fun b!832710 () Bool)

(declare-fun tp!260828 () Bool)

(declare-fun tp!260827 () Bool)

(assert (=> b!832710 (= e!548277 (and tp!260828 tp!260827))))

(declare-fun b!832708 () Bool)

(declare-fun tp!260826 () Bool)

(declare-fun tp!260825 () Bool)

(assert (=> b!832708 (= e!548277 (and tp!260826 tp!260825))))

(declare-fun b!832707 () Bool)

(assert (=> b!832707 (= e!548277 tp_is_empty!3885)))

(assert (=> b!832488 (= tp!260739 e!548277)))

(assert (= (and b!832488 ((_ is ElementMatch!2081) (reg!2410 (regTwo!4675 r!27177)))) b!832707))

(assert (= (and b!832488 ((_ is Concat!3812) (reg!2410 (regTwo!4675 r!27177)))) b!832708))

(assert (= (and b!832488 ((_ is Star!2081) (reg!2410 (regTwo!4675 r!27177)))) b!832709))

(assert (= (and b!832488 ((_ is Union!2081) (reg!2410 (regTwo!4675 r!27177)))) b!832710))

(declare-fun b!832713 () Bool)

(declare-fun e!548278 () Bool)

(declare-fun tp!260834 () Bool)

(assert (=> b!832713 (= e!548278 tp!260834)))

(declare-fun b!832714 () Bool)

(declare-fun tp!260833 () Bool)

(declare-fun tp!260832 () Bool)

(assert (=> b!832714 (= e!548278 (and tp!260833 tp!260832))))

(declare-fun b!832712 () Bool)

(declare-fun tp!260831 () Bool)

(declare-fun tp!260830 () Bool)

(assert (=> b!832712 (= e!548278 (and tp!260831 tp!260830))))

(declare-fun b!832711 () Bool)

(assert (=> b!832711 (= e!548278 tp_is_empty!3885)))

(assert (=> b!832479 (= tp!260733 e!548278)))

(assert (= (and b!832479 ((_ is ElementMatch!2081) (regOne!4675 (regOne!4675 r!27177)))) b!832711))

(assert (= (and b!832479 ((_ is Concat!3812) (regOne!4675 (regOne!4675 r!27177)))) b!832712))

(assert (= (and b!832479 ((_ is Star!2081) (regOne!4675 (regOne!4675 r!27177)))) b!832713))

(assert (= (and b!832479 ((_ is Union!2081) (regOne!4675 (regOne!4675 r!27177)))) b!832714))

(declare-fun b!832717 () Bool)

(declare-fun e!548279 () Bool)

(declare-fun tp!260839 () Bool)

(assert (=> b!832717 (= e!548279 tp!260839)))

(declare-fun b!832718 () Bool)

(declare-fun tp!260838 () Bool)

(declare-fun tp!260837 () Bool)

(assert (=> b!832718 (= e!548279 (and tp!260838 tp!260837))))

(declare-fun b!832716 () Bool)

(declare-fun tp!260836 () Bool)

(declare-fun tp!260835 () Bool)

(assert (=> b!832716 (= e!548279 (and tp!260836 tp!260835))))

(declare-fun b!832715 () Bool)

(assert (=> b!832715 (= e!548279 tp_is_empty!3885)))

(assert (=> b!832479 (= tp!260732 e!548279)))

(assert (= (and b!832479 ((_ is ElementMatch!2081) (regTwo!4675 (regOne!4675 r!27177)))) b!832715))

(assert (= (and b!832479 ((_ is Concat!3812) (regTwo!4675 (regOne!4675 r!27177)))) b!832716))

(assert (= (and b!832479 ((_ is Star!2081) (regTwo!4675 (regOne!4675 r!27177)))) b!832717))

(assert (= (and b!832479 ((_ is Union!2081) (regTwo!4675 (regOne!4675 r!27177)))) b!832718))

(declare-fun b!832721 () Bool)

(declare-fun e!548280 () Bool)

(declare-fun tp!260844 () Bool)

(assert (=> b!832721 (= e!548280 tp!260844)))

(declare-fun b!832722 () Bool)

(declare-fun tp!260843 () Bool)

(declare-fun tp!260842 () Bool)

(assert (=> b!832722 (= e!548280 (and tp!260843 tp!260842))))

(declare-fun b!832720 () Bool)

(declare-fun tp!260841 () Bool)

(declare-fun tp!260840 () Bool)

(assert (=> b!832720 (= e!548280 (and tp!260841 tp!260840))))

(declare-fun b!832719 () Bool)

(assert (=> b!832719 (= e!548280 tp_is_empty!3885)))

(assert (=> b!832487 (= tp!260736 e!548280)))

(assert (= (and b!832487 ((_ is ElementMatch!2081) (regOne!4674 (regTwo!4675 r!27177)))) b!832719))

(assert (= (and b!832487 ((_ is Concat!3812) (regOne!4674 (regTwo!4675 r!27177)))) b!832720))

(assert (= (and b!832487 ((_ is Star!2081) (regOne!4674 (regTwo!4675 r!27177)))) b!832721))

(assert (= (and b!832487 ((_ is Union!2081) (regOne!4674 (regTwo!4675 r!27177)))) b!832722))

(declare-fun b!832725 () Bool)

(declare-fun e!548281 () Bool)

(declare-fun tp!260849 () Bool)

(assert (=> b!832725 (= e!548281 tp!260849)))

(declare-fun b!832726 () Bool)

(declare-fun tp!260848 () Bool)

(declare-fun tp!260847 () Bool)

(assert (=> b!832726 (= e!548281 (and tp!260848 tp!260847))))

(declare-fun b!832724 () Bool)

(declare-fun tp!260846 () Bool)

(declare-fun tp!260845 () Bool)

(assert (=> b!832724 (= e!548281 (and tp!260846 tp!260845))))

(declare-fun b!832723 () Bool)

(assert (=> b!832723 (= e!548281 tp_is_empty!3885)))

(assert (=> b!832487 (= tp!260735 e!548281)))

(assert (= (and b!832487 ((_ is ElementMatch!2081) (regTwo!4674 (regTwo!4675 r!27177)))) b!832723))

(assert (= (and b!832487 ((_ is Concat!3812) (regTwo!4674 (regTwo!4675 r!27177)))) b!832724))

(assert (= (and b!832487 ((_ is Star!2081) (regTwo!4674 (regTwo!4675 r!27177)))) b!832725))

(assert (= (and b!832487 ((_ is Union!2081) (regTwo!4674 (regTwo!4675 r!27177)))) b!832726))

(declare-fun b!832729 () Bool)

(declare-fun e!548282 () Bool)

(declare-fun tp!260854 () Bool)

(assert (=> b!832729 (= e!548282 tp!260854)))

(declare-fun b!832730 () Bool)

(declare-fun tp!260853 () Bool)

(declare-fun tp!260852 () Bool)

(assert (=> b!832730 (= e!548282 (and tp!260853 tp!260852))))

(declare-fun b!832728 () Bool)

(declare-fun tp!260851 () Bool)

(declare-fun tp!260850 () Bool)

(assert (=> b!832728 (= e!548282 (and tp!260851 tp!260850))))

(declare-fun b!832727 () Bool)

(assert (=> b!832727 (= e!548282 tp_is_empty!3885)))

(assert (=> b!832500 (= tp!260759 e!548282)))

(assert (= (and b!832500 ((_ is ElementMatch!2081) (reg!2410 (regTwo!4674 r!27177)))) b!832727))

(assert (= (and b!832500 ((_ is Concat!3812) (reg!2410 (regTwo!4674 r!27177)))) b!832728))

(assert (= (and b!832500 ((_ is Star!2081) (reg!2410 (regTwo!4674 r!27177)))) b!832729))

(assert (= (and b!832500 ((_ is Union!2081) (reg!2410 (regTwo!4674 r!27177)))) b!832730))

(declare-fun b!832733 () Bool)

(declare-fun e!548283 () Bool)

(declare-fun tp!260859 () Bool)

(assert (=> b!832733 (= e!548283 tp!260859)))

(declare-fun b!832734 () Bool)

(declare-fun tp!260858 () Bool)

(declare-fun tp!260857 () Bool)

(assert (=> b!832734 (= e!548283 (and tp!260858 tp!260857))))

(declare-fun b!832732 () Bool)

(declare-fun tp!260856 () Bool)

(declare-fun tp!260855 () Bool)

(assert (=> b!832732 (= e!548283 (and tp!260856 tp!260855))))

(declare-fun b!832731 () Bool)

(assert (=> b!832731 (= e!548283 tp_is_empty!3885)))

(assert (=> b!832501 (= tp!260758 e!548283)))

(assert (= (and b!832501 ((_ is ElementMatch!2081) (regOne!4675 (regTwo!4674 r!27177)))) b!832731))

(assert (= (and b!832501 ((_ is Concat!3812) (regOne!4675 (regTwo!4674 r!27177)))) b!832732))

(assert (= (and b!832501 ((_ is Star!2081) (regOne!4675 (regTwo!4674 r!27177)))) b!832733))

(assert (= (and b!832501 ((_ is Union!2081) (regOne!4675 (regTwo!4674 r!27177)))) b!832734))

(declare-fun b!832737 () Bool)

(declare-fun e!548284 () Bool)

(declare-fun tp!260864 () Bool)

(assert (=> b!832737 (= e!548284 tp!260864)))

(declare-fun b!832738 () Bool)

(declare-fun tp!260863 () Bool)

(declare-fun tp!260862 () Bool)

(assert (=> b!832738 (= e!548284 (and tp!260863 tp!260862))))

(declare-fun b!832736 () Bool)

(declare-fun tp!260861 () Bool)

(declare-fun tp!260860 () Bool)

(assert (=> b!832736 (= e!548284 (and tp!260861 tp!260860))))

(declare-fun b!832735 () Bool)

(assert (=> b!832735 (= e!548284 tp_is_empty!3885)))

(assert (=> b!832501 (= tp!260757 e!548284)))

(assert (= (and b!832501 ((_ is ElementMatch!2081) (regTwo!4675 (regTwo!4674 r!27177)))) b!832735))

(assert (= (and b!832501 ((_ is Concat!3812) (regTwo!4675 (regTwo!4674 r!27177)))) b!832736))

(assert (= (and b!832501 ((_ is Star!2081) (regTwo!4675 (regTwo!4674 r!27177)))) b!832737))

(assert (= (and b!832501 ((_ is Union!2081) (regTwo!4675 (regTwo!4674 r!27177)))) b!832738))

(declare-fun b!832741 () Bool)

(declare-fun e!548285 () Bool)

(declare-fun tp!260869 () Bool)

(assert (=> b!832741 (= e!548285 tp!260869)))

(declare-fun b!832742 () Bool)

(declare-fun tp!260868 () Bool)

(declare-fun tp!260867 () Bool)

(assert (=> b!832742 (= e!548285 (and tp!260868 tp!260867))))

(declare-fun b!832740 () Bool)

(declare-fun tp!260866 () Bool)

(declare-fun tp!260865 () Bool)

(assert (=> b!832740 (= e!548285 (and tp!260866 tp!260865))))

(declare-fun b!832739 () Bool)

(assert (=> b!832739 (= e!548285 tp_is_empty!3885)))

(assert (=> b!832499 (= tp!260756 e!548285)))

(assert (= (and b!832499 ((_ is ElementMatch!2081) (regOne!4674 (regTwo!4674 r!27177)))) b!832739))

(assert (= (and b!832499 ((_ is Concat!3812) (regOne!4674 (regTwo!4674 r!27177)))) b!832740))

(assert (= (and b!832499 ((_ is Star!2081) (regOne!4674 (regTwo!4674 r!27177)))) b!832741))

(assert (= (and b!832499 ((_ is Union!2081) (regOne!4674 (regTwo!4674 r!27177)))) b!832742))

(declare-fun b!832745 () Bool)

(declare-fun e!548286 () Bool)

(declare-fun tp!260874 () Bool)

(assert (=> b!832745 (= e!548286 tp!260874)))

(declare-fun b!832746 () Bool)

(declare-fun tp!260873 () Bool)

(declare-fun tp!260872 () Bool)

(assert (=> b!832746 (= e!548286 (and tp!260873 tp!260872))))

(declare-fun b!832744 () Bool)

(declare-fun tp!260871 () Bool)

(declare-fun tp!260870 () Bool)

(assert (=> b!832744 (= e!548286 (and tp!260871 tp!260870))))

(declare-fun b!832743 () Bool)

(assert (=> b!832743 (= e!548286 tp_is_empty!3885)))

(assert (=> b!832499 (= tp!260755 e!548286)))

(assert (= (and b!832499 ((_ is ElementMatch!2081) (regTwo!4674 (regTwo!4674 r!27177)))) b!832743))

(assert (= (and b!832499 ((_ is Concat!3812) (regTwo!4674 (regTwo!4674 r!27177)))) b!832744))

(assert (= (and b!832499 ((_ is Star!2081) (regTwo!4674 (regTwo!4674 r!27177)))) b!832745))

(assert (= (and b!832499 ((_ is Union!2081) (regTwo!4674 (regTwo!4674 r!27177)))) b!832746))

(declare-fun b!832749 () Bool)

(declare-fun e!548287 () Bool)

(declare-fun tp!260879 () Bool)

(assert (=> b!832749 (= e!548287 tp!260879)))

(declare-fun b!832750 () Bool)

(declare-fun tp!260878 () Bool)

(declare-fun tp!260877 () Bool)

(assert (=> b!832750 (= e!548287 (and tp!260878 tp!260877))))

(declare-fun b!832748 () Bool)

(declare-fun tp!260876 () Bool)

(declare-fun tp!260875 () Bool)

(assert (=> b!832748 (= e!548287 (and tp!260876 tp!260875))))

(declare-fun b!832747 () Bool)

(assert (=> b!832747 (= e!548287 tp_is_empty!3885)))

(assert (=> b!832489 (= tp!260738 e!548287)))

(assert (= (and b!832489 ((_ is ElementMatch!2081) (regOne!4675 (regTwo!4675 r!27177)))) b!832747))

(assert (= (and b!832489 ((_ is Concat!3812) (regOne!4675 (regTwo!4675 r!27177)))) b!832748))

(assert (= (and b!832489 ((_ is Star!2081) (regOne!4675 (regTwo!4675 r!27177)))) b!832749))

(assert (= (and b!832489 ((_ is Union!2081) (regOne!4675 (regTwo!4675 r!27177)))) b!832750))

(declare-fun b!832753 () Bool)

(declare-fun e!548288 () Bool)

(declare-fun tp!260884 () Bool)

(assert (=> b!832753 (= e!548288 tp!260884)))

(declare-fun b!832754 () Bool)

(declare-fun tp!260883 () Bool)

(declare-fun tp!260882 () Bool)

(assert (=> b!832754 (= e!548288 (and tp!260883 tp!260882))))

(declare-fun b!832752 () Bool)

(declare-fun tp!260881 () Bool)

(declare-fun tp!260880 () Bool)

(assert (=> b!832752 (= e!548288 (and tp!260881 tp!260880))))

(declare-fun b!832751 () Bool)

(assert (=> b!832751 (= e!548288 tp_is_empty!3885)))

(assert (=> b!832489 (= tp!260737 e!548288)))

(assert (= (and b!832489 ((_ is ElementMatch!2081) (regTwo!4675 (regTwo!4675 r!27177)))) b!832751))

(assert (= (and b!832489 ((_ is Concat!3812) (regTwo!4675 (regTwo!4675 r!27177)))) b!832752))

(assert (= (and b!832489 ((_ is Star!2081) (regTwo!4675 (regTwo!4675 r!27177)))) b!832753))

(assert (= (and b!832489 ((_ is Union!2081) (regTwo!4675 (regTwo!4675 r!27177)))) b!832754))

(declare-fun b!832757 () Bool)

(declare-fun e!548289 () Bool)

(declare-fun tp!260889 () Bool)

(assert (=> b!832757 (= e!548289 tp!260889)))

(declare-fun b!832758 () Bool)

(declare-fun tp!260888 () Bool)

(declare-fun tp!260887 () Bool)

(assert (=> b!832758 (= e!548289 (and tp!260888 tp!260887))))

(declare-fun b!832756 () Bool)

(declare-fun tp!260886 () Bool)

(declare-fun tp!260885 () Bool)

(assert (=> b!832756 (= e!548289 (and tp!260886 tp!260885))))

(declare-fun b!832755 () Bool)

(assert (=> b!832755 (= e!548289 tp_is_empty!3885)))

(assert (=> b!832474 (= tp!260729 e!548289)))

(assert (= (and b!832474 ((_ is ElementMatch!2081) (reg!2410 (reg!2410 r!27177)))) b!832755))

(assert (= (and b!832474 ((_ is Concat!3812) (reg!2410 (reg!2410 r!27177)))) b!832756))

(assert (= (and b!832474 ((_ is Star!2081) (reg!2410 (reg!2410 r!27177)))) b!832757))

(assert (= (and b!832474 ((_ is Union!2081) (reg!2410 (reg!2410 r!27177)))) b!832758))

(declare-fun b!832761 () Bool)

(declare-fun e!548290 () Bool)

(declare-fun tp!260894 () Bool)

(assert (=> b!832761 (= e!548290 tp!260894)))

(declare-fun b!832762 () Bool)

(declare-fun tp!260893 () Bool)

(declare-fun tp!260892 () Bool)

(assert (=> b!832762 (= e!548290 (and tp!260893 tp!260892))))

(declare-fun b!832760 () Bool)

(declare-fun tp!260891 () Bool)

(declare-fun tp!260890 () Bool)

(assert (=> b!832760 (= e!548290 (and tp!260891 tp!260890))))

(declare-fun b!832759 () Bool)

(assert (=> b!832759 (= e!548290 tp_is_empty!3885)))

(assert (=> b!832475 (= tp!260728 e!548290)))

(assert (= (and b!832475 ((_ is ElementMatch!2081) (regOne!4675 (reg!2410 r!27177)))) b!832759))

(assert (= (and b!832475 ((_ is Concat!3812) (regOne!4675 (reg!2410 r!27177)))) b!832760))

(assert (= (and b!832475 ((_ is Star!2081) (regOne!4675 (reg!2410 r!27177)))) b!832761))

(assert (= (and b!832475 ((_ is Union!2081) (regOne!4675 (reg!2410 r!27177)))) b!832762))

(declare-fun b!832765 () Bool)

(declare-fun e!548291 () Bool)

(declare-fun tp!260899 () Bool)

(assert (=> b!832765 (= e!548291 tp!260899)))

(declare-fun b!832766 () Bool)

(declare-fun tp!260898 () Bool)

(declare-fun tp!260897 () Bool)

(assert (=> b!832766 (= e!548291 (and tp!260898 tp!260897))))

(declare-fun b!832764 () Bool)

(declare-fun tp!260896 () Bool)

(declare-fun tp!260895 () Bool)

(assert (=> b!832764 (= e!548291 (and tp!260896 tp!260895))))

(declare-fun b!832763 () Bool)

(assert (=> b!832763 (= e!548291 tp_is_empty!3885)))

(assert (=> b!832475 (= tp!260727 e!548291)))

(assert (= (and b!832475 ((_ is ElementMatch!2081) (regTwo!4675 (reg!2410 r!27177)))) b!832763))

(assert (= (and b!832475 ((_ is Concat!3812) (regTwo!4675 (reg!2410 r!27177)))) b!832764))

(assert (= (and b!832475 ((_ is Star!2081) (regTwo!4675 (reg!2410 r!27177)))) b!832765))

(assert (= (and b!832475 ((_ is Union!2081) (regTwo!4675 (reg!2410 r!27177)))) b!832766))

(declare-fun b!832769 () Bool)

(declare-fun e!548292 () Bool)

(declare-fun tp!260904 () Bool)

(assert (=> b!832769 (= e!548292 tp!260904)))

(declare-fun b!832770 () Bool)

(declare-fun tp!260903 () Bool)

(declare-fun tp!260902 () Bool)

(assert (=> b!832770 (= e!548292 (and tp!260903 tp!260902))))

(declare-fun b!832768 () Bool)

(declare-fun tp!260901 () Bool)

(declare-fun tp!260900 () Bool)

(assert (=> b!832768 (= e!548292 (and tp!260901 tp!260900))))

(declare-fun b!832767 () Bool)

(assert (=> b!832767 (= e!548292 tp_is_empty!3885)))

(assert (=> b!832473 (= tp!260726 e!548292)))

(assert (= (and b!832473 ((_ is ElementMatch!2081) (regOne!4674 (reg!2410 r!27177)))) b!832767))

(assert (= (and b!832473 ((_ is Concat!3812) (regOne!4674 (reg!2410 r!27177)))) b!832768))

(assert (= (and b!832473 ((_ is Star!2081) (regOne!4674 (reg!2410 r!27177)))) b!832769))

(assert (= (and b!832473 ((_ is Union!2081) (regOne!4674 (reg!2410 r!27177)))) b!832770))

(declare-fun b!832773 () Bool)

(declare-fun e!548293 () Bool)

(declare-fun tp!260909 () Bool)

(assert (=> b!832773 (= e!548293 tp!260909)))

(declare-fun b!832774 () Bool)

(declare-fun tp!260908 () Bool)

(declare-fun tp!260907 () Bool)

(assert (=> b!832774 (= e!548293 (and tp!260908 tp!260907))))

(declare-fun b!832772 () Bool)

(declare-fun tp!260906 () Bool)

(declare-fun tp!260905 () Bool)

(assert (=> b!832772 (= e!548293 (and tp!260906 tp!260905))))

(declare-fun b!832771 () Bool)

(assert (=> b!832771 (= e!548293 tp_is_empty!3885)))

(assert (=> b!832473 (= tp!260725 e!548293)))

(assert (= (and b!832473 ((_ is ElementMatch!2081) (regTwo!4674 (reg!2410 r!27177)))) b!832771))

(assert (= (and b!832473 ((_ is Concat!3812) (regTwo!4674 (reg!2410 r!27177)))) b!832772))

(assert (= (and b!832473 ((_ is Star!2081) (regTwo!4674 (reg!2410 r!27177)))) b!832773))

(assert (= (and b!832473 ((_ is Union!2081) (regTwo!4674 (reg!2410 r!27177)))) b!832774))

(check-sat (not b!832709) (not bm!49364) (not b!832769) (not b!832577) (not b!832688) (not b!832583) (not b!832694) (not b!832708) (not bm!49380) (not b!832696) (not b!832578) (not b!832736) (not b!832706) (not bm!49365) (not bm!49371) (not b!832757) (not bm!49379) (not d!260442) (not b!832686) (not bm!49393) (not b!832745) (not bm!49370) (not b!832728) (not b!832746) (not bm!49357) (not bm!49369) (not b!832662) (not bm!49352) (not bm!49349) (not b!832737) (not bm!49366) (not b!832684) (not b!832710) (not b!832721) (not d!260418) (not b!832702) (not d!260412) (not b!832750) (not b!832744) (not b!832768) (not b!832697) (not b!832557) (not b!832730) (not b!832559) (not b!832705) (not b!832581) (not b!832693) (not d!260414) (not b!832726) (not b!832754) (not b!832682) (not b!832732) (not b!832725) (not d!260416) (not b!832762) (not bm!49390) (not b!832756) (not b!832692) (not b!832734) (not d!260440) (not b!832677) (not b!832738) (not b!832698) (not b!832667) (not bm!49351) (not b!832608) (not b!832680) (not bm!49361) (not bm!49394) (not b!832665) (not b!832527) (not bm!49391) (not bm!49358) (not bm!49362) (not b!832773) (not b!832722) (not b!832690) (not bm!49375) (not b!832712) (not b!832716) (not b!832772) (not bm!49353) (not b!832681) (not b!832584) (not d!260426) (not b!832704) (not b!832729) (not b!832713) (not b!832685) (not bm!49376) (not b!832620) (not b!832766) (not b!832630) (not bm!49381) (not bm!49374) (not b!832749) (not b!832752) (not b!832761) (not bm!49356) (not bm!49384) (not b!832760) (not b!832689) (not b!832598) (not b!832720) (not b!832676) (not bm!49385) (not b!832764) (not b!832547) (not b!832618) (not b!832740) (not b!832742) (not b!832774) (not b!832701) (not b!832753) (not b!832529) (not b!832741) (not d!260438) (not b!832661) (not b!832714) tp_is_empty!3885 (not bm!49348) (not b!832589) (not b!832733) (not b!832724) (not b!832748) (not b!832700) (not b!832770) (not d!260436) (not d!260428) (not b!832587) (not b!832538) (not b!832718) (not b!832765) (not b!832678) (not b!832758) (not b!832717))
(check-sat)
