; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230860 () Bool)

(assert start!230860)

(declare-fun b!2345202 () Bool)

(declare-fun res!998662 () Bool)

(declare-fun e!1500308 () Bool)

(assert (=> b!2345202 (=> (not res!998662) (not e!1500308))))

(declare-datatypes ((C!13924 0))(
  ( (C!13925 (val!8122 Int)) )
))
(declare-datatypes ((Regex!6883 0))(
  ( (ElementMatch!6883 (c!373317 C!13924)) (Concat!11505 (regOne!14278 Regex!6883) (regTwo!14278 Regex!6883)) (EmptyExpr!6883) (Star!6883 (reg!7212 Regex!6883)) (EmptyLang!6883) (Union!6883 (regOne!14279 Regex!6883) (regTwo!14279 Regex!6883)) )
))
(declare-fun r!26197 () Regex!6883)

(declare-fun nullable!1962 (Regex!6883) Bool)

(assert (=> b!2345202 (= res!998662 (not (nullable!1962 (regTwo!14278 r!26197))))))

(declare-fun res!998665 () Bool)

(assert (=> start!230860 (=> (not res!998665) (not e!1500308))))

(declare-fun validRegex!2628 (Regex!6883) Bool)

(assert (=> start!230860 (= res!998665 (validRegex!2628 r!26197))))

(assert (=> start!230860 e!1500308))

(declare-fun e!1500307 () Bool)

(assert (=> start!230860 e!1500307))

(declare-fun tp_is_empty!11077 () Bool)

(assert (=> start!230860 tp_is_empty!11077))

(declare-fun b!2345203 () Bool)

(declare-fun res!998666 () Bool)

(assert (=> b!2345203 (=> (not res!998666) (not e!1500308))))

(declare-fun c!13498 () C!13924)

(declare-fun derivativeStep!1622 (Regex!6883 C!13924) Regex!6883)

(assert (=> b!2345203 (= res!998666 (not (nullable!1962 (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197)))))))

(declare-fun b!2345204 () Bool)

(declare-fun res!998660 () Bool)

(assert (=> b!2345204 (=> (not res!998660) (not e!1500308))))

(assert (=> b!2345204 (= res!998660 (nullable!1962 (regOne!14278 r!26197)))))

(declare-fun b!2345205 () Bool)

(declare-fun tp!744521 () Bool)

(declare-fun tp!744517 () Bool)

(assert (=> b!2345205 (= e!1500307 (and tp!744521 tp!744517))))

(declare-fun b!2345206 () Bool)

(declare-fun res!998663 () Bool)

(assert (=> b!2345206 (=> (not res!998663) (not e!1500308))))

(assert (=> b!2345206 (= res!998663 (not (nullable!1962 r!26197)))))

(declare-fun b!2345207 () Bool)

(declare-fun tp!744519 () Bool)

(assert (=> b!2345207 (= e!1500307 tp!744519)))

(declare-fun b!2345208 () Bool)

(declare-fun res!998659 () Bool)

(assert (=> b!2345208 (=> (not res!998659) (not e!1500308))))

(assert (=> b!2345208 (= res!998659 (nullable!1962 (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)))))

(declare-fun b!2345209 () Bool)

(declare-datatypes ((List!27942 0))(
  ( (Nil!27844) (Cons!27844 (h!33245 C!13924) (t!207801 List!27942)) )
))
(declare-fun contains!4823 (List!27942 C!13924) Bool)

(declare-fun usedCharacters!442 (Regex!6883) List!27942)

(assert (=> b!2345209 (= e!1500308 (not (contains!4823 (usedCharacters!442 r!26197) c!13498)))))

(assert (=> b!2345209 (contains!4823 (usedCharacters!442 (regTwo!14278 r!26197)) c!13498)))

(declare-datatypes ((Unit!40766 0))(
  ( (Unit!40767) )
))
(declare-fun lt!862887 () Unit!40766)

(declare-fun lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC!6 (Regex!6883 C!13924) Unit!40766)

(assert (=> b!2345209 (= lt!862887 (lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC!6 (regTwo!14278 r!26197) c!13498))))

(declare-fun b!2345210 () Bool)

(declare-fun res!998664 () Bool)

(assert (=> b!2345210 (=> (not res!998664) (not e!1500308))))

(assert (=> b!2345210 (= res!998664 (nullable!1962 (derivativeStep!1622 r!26197 c!13498)))))

(declare-fun b!2345211 () Bool)

(assert (=> b!2345211 (= e!1500307 tp_is_empty!11077)))

(declare-fun b!2345212 () Bool)

(declare-fun res!998661 () Bool)

(assert (=> b!2345212 (=> (not res!998661) (not e!1500308))))

(get-info :version)

(assert (=> b!2345212 (= res!998661 (and (not ((_ is EmptyExpr!6883) r!26197)) (not ((_ is EmptyLang!6883) r!26197)) (not ((_ is ElementMatch!6883) r!26197)) (not ((_ is Union!6883) r!26197)) (not ((_ is Star!6883) r!26197))))))

(declare-fun b!2345213 () Bool)

(declare-fun res!998667 () Bool)

(assert (=> b!2345213 (=> (not res!998667) (not e!1500308))))

(assert (=> b!2345213 (= res!998667 (validRegex!2628 (regTwo!14278 r!26197)))))

(declare-fun b!2345214 () Bool)

(declare-fun tp!744518 () Bool)

(declare-fun tp!744520 () Bool)

(assert (=> b!2345214 (= e!1500307 (and tp!744518 tp!744520))))

(assert (= (and start!230860 res!998665) b!2345206))

(assert (= (and b!2345206 res!998663) b!2345210))

(assert (= (and b!2345210 res!998664) b!2345212))

(assert (= (and b!2345212 res!998661) b!2345204))

(assert (= (and b!2345204 res!998660) b!2345203))

(assert (= (and b!2345203 res!998666) b!2345208))

(assert (= (and b!2345208 res!998659) b!2345213))

(assert (= (and b!2345213 res!998667) b!2345202))

(assert (= (and b!2345202 res!998662) b!2345209))

(assert (= (and start!230860 ((_ is ElementMatch!6883) r!26197)) b!2345211))

(assert (= (and start!230860 ((_ is Concat!11505) r!26197)) b!2345214))

(assert (= (and start!230860 ((_ is Star!6883) r!26197)) b!2345207))

(assert (= (and start!230860 ((_ is Union!6883) r!26197)) b!2345205))

(declare-fun m!2766815 () Bool)

(assert (=> b!2345204 m!2766815))

(declare-fun m!2766817 () Bool)

(assert (=> start!230860 m!2766817))

(declare-fun m!2766819 () Bool)

(assert (=> b!2345202 m!2766819))

(declare-fun m!2766821 () Bool)

(assert (=> b!2345206 m!2766821))

(declare-fun m!2766823 () Bool)

(assert (=> b!2345210 m!2766823))

(assert (=> b!2345210 m!2766823))

(declare-fun m!2766825 () Bool)

(assert (=> b!2345210 m!2766825))

(declare-fun m!2766827 () Bool)

(assert (=> b!2345208 m!2766827))

(assert (=> b!2345208 m!2766827))

(declare-fun m!2766829 () Bool)

(assert (=> b!2345208 m!2766829))

(declare-fun m!2766831 () Bool)

(assert (=> b!2345209 m!2766831))

(declare-fun m!2766833 () Bool)

(assert (=> b!2345209 m!2766833))

(declare-fun m!2766835 () Bool)

(assert (=> b!2345209 m!2766835))

(assert (=> b!2345209 m!2766835))

(declare-fun m!2766837 () Bool)

(assert (=> b!2345209 m!2766837))

(assert (=> b!2345209 m!2766831))

(declare-fun m!2766839 () Bool)

(assert (=> b!2345209 m!2766839))

(declare-fun m!2766841 () Bool)

(assert (=> b!2345213 m!2766841))

(declare-fun m!2766843 () Bool)

(assert (=> b!2345203 m!2766843))

(declare-fun m!2766845 () Bool)

(assert (=> b!2345203 m!2766845))

(check-sat tp_is_empty!11077 (not b!2345202) (not b!2345213) (not b!2345206) (not b!2345210) (not start!230860) (not b!2345208) (not b!2345209) (not b!2345203) (not b!2345207) (not b!2345204) (not b!2345205) (not b!2345214))
(check-sat)
(get-model)

(declare-fun b!2345233 () Bool)

(declare-fun e!1500329 () Bool)

(declare-fun call!141973 () Bool)

(assert (=> b!2345233 (= e!1500329 call!141973)))

(declare-fun bm!141968 () Bool)

(declare-fun c!373322 () Bool)

(assert (=> bm!141968 (= call!141973 (validRegex!2628 (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(declare-fun b!2345234 () Bool)

(declare-fun e!1500323 () Bool)

(assert (=> b!2345234 (= e!1500323 e!1500329)))

(declare-fun res!998680 () Bool)

(assert (=> b!2345234 (=> (not res!998680) (not e!1500329))))

(declare-fun call!141975 () Bool)

(assert (=> b!2345234 (= res!998680 call!141975)))

(declare-fun d!691885 () Bool)

(declare-fun res!998682 () Bool)

(declare-fun e!1500324 () Bool)

(assert (=> d!691885 (=> res!998682 e!1500324)))

(assert (=> d!691885 (= res!998682 ((_ is ElementMatch!6883) (regTwo!14278 r!26197)))))

(assert (=> d!691885 (= (validRegex!2628 (regTwo!14278 r!26197)) e!1500324)))

(declare-fun call!141974 () Bool)

(declare-fun bm!141969 () Bool)

(declare-fun c!373323 () Bool)

(assert (=> bm!141969 (= call!141974 (validRegex!2628 (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(declare-fun bm!141970 () Bool)

(assert (=> bm!141970 (= call!141975 call!141974)))

(declare-fun b!2345235 () Bool)

(declare-fun res!998678 () Bool)

(declare-fun e!1500325 () Bool)

(assert (=> b!2345235 (=> (not res!998678) (not e!1500325))))

(assert (=> b!2345235 (= res!998678 call!141975)))

(declare-fun e!1500328 () Bool)

(assert (=> b!2345235 (= e!1500328 e!1500325)))

(declare-fun b!2345236 () Bool)

(declare-fun e!1500326 () Bool)

(assert (=> b!2345236 (= e!1500326 call!141974)))

(declare-fun b!2345237 () Bool)

(assert (=> b!2345237 (= e!1500325 call!141973)))

(declare-fun b!2345238 () Bool)

(declare-fun e!1500327 () Bool)

(assert (=> b!2345238 (= e!1500327 e!1500326)))

(declare-fun res!998679 () Bool)

(assert (=> b!2345238 (= res!998679 (not (nullable!1962 (reg!7212 (regTwo!14278 r!26197)))))))

(assert (=> b!2345238 (=> (not res!998679) (not e!1500326))))

(declare-fun b!2345239 () Bool)

(assert (=> b!2345239 (= e!1500327 e!1500328)))

(assert (=> b!2345239 (= c!373322 ((_ is Union!6883) (regTwo!14278 r!26197)))))

(declare-fun b!2345240 () Bool)

(declare-fun res!998681 () Bool)

(assert (=> b!2345240 (=> res!998681 e!1500323)))

(assert (=> b!2345240 (= res!998681 (not ((_ is Concat!11505) (regTwo!14278 r!26197))))))

(assert (=> b!2345240 (= e!1500328 e!1500323)))

(declare-fun b!2345241 () Bool)

(assert (=> b!2345241 (= e!1500324 e!1500327)))

(assert (=> b!2345241 (= c!373323 ((_ is Star!6883) (regTwo!14278 r!26197)))))

(assert (= (and d!691885 (not res!998682)) b!2345241))

(assert (= (and b!2345241 c!373323) b!2345238))

(assert (= (and b!2345241 (not c!373323)) b!2345239))

(assert (= (and b!2345238 res!998679) b!2345236))

(assert (= (and b!2345239 c!373322) b!2345235))

(assert (= (and b!2345239 (not c!373322)) b!2345240))

(assert (= (and b!2345235 res!998678) b!2345237))

(assert (= (and b!2345240 (not res!998681)) b!2345234))

(assert (= (and b!2345234 res!998680) b!2345233))

(assert (= (or b!2345237 b!2345233) bm!141968))

(assert (= (or b!2345235 b!2345234) bm!141970))

(assert (= (or b!2345236 bm!141970) bm!141969))

(declare-fun m!2766849 () Bool)

(assert (=> bm!141968 m!2766849))

(declare-fun m!2766851 () Bool)

(assert (=> bm!141969 m!2766851))

(declare-fun m!2766853 () Bool)

(assert (=> b!2345238 m!2766853))

(assert (=> b!2345213 d!691885))

(declare-fun b!2345242 () Bool)

(declare-fun e!1500336 () Bool)

(declare-fun call!141976 () Bool)

(assert (=> b!2345242 (= e!1500336 call!141976)))

(declare-fun bm!141971 () Bool)

(declare-fun c!373324 () Bool)

(assert (=> bm!141971 (= call!141976 (validRegex!2628 (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))

(declare-fun b!2345243 () Bool)

(declare-fun e!1500330 () Bool)

(assert (=> b!2345243 (= e!1500330 e!1500336)))

(declare-fun res!998685 () Bool)

(assert (=> b!2345243 (=> (not res!998685) (not e!1500336))))

(declare-fun call!141978 () Bool)

(assert (=> b!2345243 (= res!998685 call!141978)))

(declare-fun d!691891 () Bool)

(declare-fun res!998687 () Bool)

(declare-fun e!1500331 () Bool)

(assert (=> d!691891 (=> res!998687 e!1500331)))

(assert (=> d!691891 (= res!998687 ((_ is ElementMatch!6883) r!26197))))

(assert (=> d!691891 (= (validRegex!2628 r!26197) e!1500331)))

(declare-fun c!373325 () Bool)

(declare-fun call!141977 () Bool)

(declare-fun bm!141972 () Bool)

(assert (=> bm!141972 (= call!141977 (validRegex!2628 (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))

(declare-fun bm!141973 () Bool)

(assert (=> bm!141973 (= call!141978 call!141977)))

(declare-fun b!2345244 () Bool)

(declare-fun res!998683 () Bool)

(declare-fun e!1500332 () Bool)

(assert (=> b!2345244 (=> (not res!998683) (not e!1500332))))

(assert (=> b!2345244 (= res!998683 call!141978)))

(declare-fun e!1500335 () Bool)

(assert (=> b!2345244 (= e!1500335 e!1500332)))

(declare-fun b!2345245 () Bool)

(declare-fun e!1500333 () Bool)

(assert (=> b!2345245 (= e!1500333 call!141977)))

(declare-fun b!2345246 () Bool)

(assert (=> b!2345246 (= e!1500332 call!141976)))

(declare-fun b!2345247 () Bool)

(declare-fun e!1500334 () Bool)

(assert (=> b!2345247 (= e!1500334 e!1500333)))

(declare-fun res!998684 () Bool)

(assert (=> b!2345247 (= res!998684 (not (nullable!1962 (reg!7212 r!26197))))))

(assert (=> b!2345247 (=> (not res!998684) (not e!1500333))))

(declare-fun b!2345248 () Bool)

(assert (=> b!2345248 (= e!1500334 e!1500335)))

(assert (=> b!2345248 (= c!373324 ((_ is Union!6883) r!26197))))

(declare-fun b!2345249 () Bool)

(declare-fun res!998686 () Bool)

(assert (=> b!2345249 (=> res!998686 e!1500330)))

(assert (=> b!2345249 (= res!998686 (not ((_ is Concat!11505) r!26197)))))

(assert (=> b!2345249 (= e!1500335 e!1500330)))

(declare-fun b!2345250 () Bool)

(assert (=> b!2345250 (= e!1500331 e!1500334)))

(assert (=> b!2345250 (= c!373325 ((_ is Star!6883) r!26197))))

(assert (= (and d!691891 (not res!998687)) b!2345250))

(assert (= (and b!2345250 c!373325) b!2345247))

(assert (= (and b!2345250 (not c!373325)) b!2345248))

(assert (= (and b!2345247 res!998684) b!2345245))

(assert (= (and b!2345248 c!373324) b!2345244))

(assert (= (and b!2345248 (not c!373324)) b!2345249))

(assert (= (and b!2345244 res!998683) b!2345246))

(assert (= (and b!2345249 (not res!998686)) b!2345243))

(assert (= (and b!2345243 res!998685) b!2345242))

(assert (= (or b!2345246 b!2345242) bm!141971))

(assert (= (or b!2345244 b!2345243) bm!141973))

(assert (= (or b!2345245 bm!141973) bm!141972))

(declare-fun m!2766855 () Bool)

(assert (=> bm!141971 m!2766855))

(declare-fun m!2766857 () Bool)

(assert (=> bm!141972 m!2766857))

(declare-fun m!2766859 () Bool)

(assert (=> b!2345247 m!2766859))

(assert (=> start!230860 d!691891))

(declare-fun d!691893 () Bool)

(declare-fun nullableFct!515 (Regex!6883) Bool)

(assert (=> d!691893 (= (nullable!1962 (regTwo!14278 r!26197)) (nullableFct!515 (regTwo!14278 r!26197)))))

(declare-fun bs!460146 () Bool)

(assert (= bs!460146 d!691893))

(declare-fun m!2766861 () Bool)

(assert (=> bs!460146 m!2766861))

(assert (=> b!2345202 d!691893))

(declare-fun d!691895 () Bool)

(assert (=> d!691895 (= (nullable!1962 (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))) (nullableFct!515 (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))))))

(declare-fun bs!460147 () Bool)

(assert (= bs!460147 d!691895))

(declare-fun m!2766863 () Bool)

(assert (=> bs!460147 m!2766863))

(assert (=> b!2345203 d!691895))

(declare-fun b!2345309 () Bool)

(declare-fun e!1500374 () Regex!6883)

(assert (=> b!2345309 (= e!1500374 (ite (= c!13498 (c!373317 (regOne!14278 r!26197))) EmptyExpr!6883 EmptyLang!6883))))

(declare-fun b!2345310 () Bool)

(declare-fun e!1500372 () Regex!6883)

(declare-fun call!141999 () Regex!6883)

(assert (=> b!2345310 (= e!1500372 (Union!6883 (Concat!11505 call!141999 (regTwo!14278 (regOne!14278 r!26197))) EmptyLang!6883))))

(declare-fun b!2345311 () Bool)

(declare-fun e!1500373 () Regex!6883)

(assert (=> b!2345311 (= e!1500373 EmptyLang!6883)))

(declare-fun b!2345312 () Bool)

(declare-fun c!373354 () Bool)

(assert (=> b!2345312 (= c!373354 (nullable!1962 (regOne!14278 (regOne!14278 r!26197))))))

(declare-fun e!1500370 () Regex!6883)

(assert (=> b!2345312 (= e!1500370 e!1500372)))

(declare-fun b!2345313 () Bool)

(declare-fun e!1500371 () Regex!6883)

(declare-fun call!142001 () Regex!6883)

(declare-fun call!142002 () Regex!6883)

(assert (=> b!2345313 (= e!1500371 (Union!6883 call!142001 call!142002))))

(declare-fun bm!141994 () Bool)

(declare-fun call!142000 () Regex!6883)

(assert (=> bm!141994 (= call!142000 call!142002)))

(declare-fun bm!141995 () Bool)

(assert (=> bm!141995 (= call!141999 call!142000)))

(declare-fun b!2345314 () Bool)

(assert (=> b!2345314 (= e!1500371 e!1500370)))

(declare-fun c!373353 () Bool)

(assert (=> b!2345314 (= c!373353 ((_ is Star!6883) (regOne!14278 r!26197)))))

(declare-fun b!2345315 () Bool)

(assert (=> b!2345315 (= e!1500372 (Union!6883 (Concat!11505 call!141999 (regTwo!14278 (regOne!14278 r!26197))) call!142001))))

(declare-fun b!2345316 () Bool)

(assert (=> b!2345316 (= e!1500370 (Concat!11505 call!142000 (regOne!14278 r!26197)))))

(declare-fun d!691897 () Bool)

(declare-fun lt!862897 () Regex!6883)

(assert (=> d!691897 (validRegex!2628 lt!862897)))

(assert (=> d!691897 (= lt!862897 e!1500373)))

(declare-fun c!373351 () Bool)

(assert (=> d!691897 (= c!373351 (or ((_ is EmptyExpr!6883) (regOne!14278 r!26197)) ((_ is EmptyLang!6883) (regOne!14278 r!26197))))))

(assert (=> d!691897 (validRegex!2628 (regOne!14278 r!26197))))

(assert (=> d!691897 (= (derivativeStep!1622 (regOne!14278 r!26197) c!13498) lt!862897)))

(declare-fun b!2345317 () Bool)

(assert (=> b!2345317 (= e!1500373 e!1500374)))

(declare-fun c!373355 () Bool)

(assert (=> b!2345317 (= c!373355 ((_ is ElementMatch!6883) (regOne!14278 r!26197)))))

(declare-fun bm!141996 () Bool)

(declare-fun c!373352 () Bool)

(assert (=> bm!141996 (= call!142002 (derivativeStep!1622 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197)))) c!13498))))

(declare-fun bm!141997 () Bool)

(assert (=> bm!141997 (= call!142001 (derivativeStep!1622 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197))) c!13498))))

(declare-fun b!2345318 () Bool)

(assert (=> b!2345318 (= c!373352 ((_ is Union!6883) (regOne!14278 r!26197)))))

(assert (=> b!2345318 (= e!1500374 e!1500371)))

(assert (= (and d!691897 c!373351) b!2345311))

(assert (= (and d!691897 (not c!373351)) b!2345317))

(assert (= (and b!2345317 c!373355) b!2345309))

(assert (= (and b!2345317 (not c!373355)) b!2345318))

(assert (= (and b!2345318 c!373352) b!2345313))

(assert (= (and b!2345318 (not c!373352)) b!2345314))

(assert (= (and b!2345314 c!373353) b!2345316))

(assert (= (and b!2345314 (not c!373353)) b!2345312))

(assert (= (and b!2345312 c!373354) b!2345315))

(assert (= (and b!2345312 (not c!373354)) b!2345310))

(assert (= (or b!2345315 b!2345310) bm!141995))

(assert (= (or b!2345316 bm!141995) bm!141994))

(assert (= (or b!2345313 bm!141994) bm!141996))

(assert (= (or b!2345313 b!2345315) bm!141997))

(declare-fun m!2766887 () Bool)

(assert (=> b!2345312 m!2766887))

(declare-fun m!2766889 () Bool)

(assert (=> d!691897 m!2766889))

(declare-fun m!2766891 () Bool)

(assert (=> d!691897 m!2766891))

(declare-fun m!2766893 () Bool)

(assert (=> bm!141996 m!2766893))

(declare-fun m!2766895 () Bool)

(assert (=> bm!141997 m!2766895))

(assert (=> b!2345203 d!691897))

(declare-fun d!691905 () Bool)

(assert (=> d!691905 (= (nullable!1962 (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)) (nullableFct!515 (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)))))

(declare-fun bs!460148 () Bool)

(assert (= bs!460148 d!691905))

(assert (=> bs!460148 m!2766827))

(declare-fun m!2766897 () Bool)

(assert (=> bs!460148 m!2766897))

(assert (=> b!2345208 d!691905))

(declare-fun b!2345319 () Bool)

(declare-fun e!1500379 () Regex!6883)

(assert (=> b!2345319 (= e!1500379 (ite (= c!13498 (c!373317 (regTwo!14278 r!26197))) EmptyExpr!6883 EmptyLang!6883))))

(declare-fun b!2345320 () Bool)

(declare-fun e!1500377 () Regex!6883)

(declare-fun call!142003 () Regex!6883)

(assert (=> b!2345320 (= e!1500377 (Union!6883 (Concat!11505 call!142003 (regTwo!14278 (regTwo!14278 r!26197))) EmptyLang!6883))))

(declare-fun b!2345321 () Bool)

(declare-fun e!1500378 () Regex!6883)

(assert (=> b!2345321 (= e!1500378 EmptyLang!6883)))

(declare-fun b!2345322 () Bool)

(declare-fun c!373359 () Bool)

(assert (=> b!2345322 (= c!373359 (nullable!1962 (regOne!14278 (regTwo!14278 r!26197))))))

(declare-fun e!1500375 () Regex!6883)

(assert (=> b!2345322 (= e!1500375 e!1500377)))

(declare-fun b!2345323 () Bool)

(declare-fun e!1500376 () Regex!6883)

(declare-fun call!142005 () Regex!6883)

(declare-fun call!142006 () Regex!6883)

(assert (=> b!2345323 (= e!1500376 (Union!6883 call!142005 call!142006))))

(declare-fun bm!141998 () Bool)

(declare-fun call!142004 () Regex!6883)

(assert (=> bm!141998 (= call!142004 call!142006)))

(declare-fun bm!141999 () Bool)

(assert (=> bm!141999 (= call!142003 call!142004)))

(declare-fun b!2345324 () Bool)

(assert (=> b!2345324 (= e!1500376 e!1500375)))

(declare-fun c!373358 () Bool)

(assert (=> b!2345324 (= c!373358 ((_ is Star!6883) (regTwo!14278 r!26197)))))

(declare-fun b!2345325 () Bool)

(assert (=> b!2345325 (= e!1500377 (Union!6883 (Concat!11505 call!142003 (regTwo!14278 (regTwo!14278 r!26197))) call!142005))))

(declare-fun b!2345326 () Bool)

(assert (=> b!2345326 (= e!1500375 (Concat!11505 call!142004 (regTwo!14278 r!26197)))))

(declare-fun d!691907 () Bool)

(declare-fun lt!862898 () Regex!6883)

(assert (=> d!691907 (validRegex!2628 lt!862898)))

(assert (=> d!691907 (= lt!862898 e!1500378)))

(declare-fun c!373356 () Bool)

(assert (=> d!691907 (= c!373356 (or ((_ is EmptyExpr!6883) (regTwo!14278 r!26197)) ((_ is EmptyLang!6883) (regTwo!14278 r!26197))))))

(assert (=> d!691907 (validRegex!2628 (regTwo!14278 r!26197))))

(assert (=> d!691907 (= (derivativeStep!1622 (regTwo!14278 r!26197) c!13498) lt!862898)))

(declare-fun b!2345327 () Bool)

(assert (=> b!2345327 (= e!1500378 e!1500379)))

(declare-fun c!373360 () Bool)

(assert (=> b!2345327 (= c!373360 ((_ is ElementMatch!6883) (regTwo!14278 r!26197)))))

(declare-fun c!373357 () Bool)

(declare-fun bm!142000 () Bool)

(assert (=> bm!142000 (= call!142006 (derivativeStep!1622 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))) c!13498))))

(declare-fun bm!142001 () Bool)

(assert (=> bm!142001 (= call!142005 (derivativeStep!1622 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))) c!13498))))

(declare-fun b!2345328 () Bool)

(assert (=> b!2345328 (= c!373357 ((_ is Union!6883) (regTwo!14278 r!26197)))))

(assert (=> b!2345328 (= e!1500379 e!1500376)))

(assert (= (and d!691907 c!373356) b!2345321))

(assert (= (and d!691907 (not c!373356)) b!2345327))

(assert (= (and b!2345327 c!373360) b!2345319))

(assert (= (and b!2345327 (not c!373360)) b!2345328))

(assert (= (and b!2345328 c!373357) b!2345323))

(assert (= (and b!2345328 (not c!373357)) b!2345324))

(assert (= (and b!2345324 c!373358) b!2345326))

(assert (= (and b!2345324 (not c!373358)) b!2345322))

(assert (= (and b!2345322 c!373359) b!2345325))

(assert (= (and b!2345322 (not c!373359)) b!2345320))

(assert (= (or b!2345325 b!2345320) bm!141999))

(assert (= (or b!2345326 bm!141999) bm!141998))

(assert (= (or b!2345323 bm!141998) bm!142000))

(assert (= (or b!2345323 b!2345325) bm!142001))

(declare-fun m!2766899 () Bool)

(assert (=> b!2345322 m!2766899))

(declare-fun m!2766901 () Bool)

(assert (=> d!691907 m!2766901))

(assert (=> d!691907 m!2766841))

(declare-fun m!2766903 () Bool)

(assert (=> bm!142000 m!2766903))

(declare-fun m!2766907 () Bool)

(assert (=> bm!142001 m!2766907))

(assert (=> b!2345208 d!691907))

(declare-fun d!691909 () Bool)

(assert (=> d!691909 (= (nullable!1962 r!26197) (nullableFct!515 r!26197))))

(declare-fun bs!460150 () Bool)

(assert (= bs!460150 d!691909))

(declare-fun m!2766909 () Bool)

(assert (=> bs!460150 m!2766909))

(assert (=> b!2345206 d!691909))

(declare-fun d!691913 () Bool)

(assert (=> d!691913 (= (nullable!1962 (derivativeStep!1622 r!26197 c!13498)) (nullableFct!515 (derivativeStep!1622 r!26197 c!13498)))))

(declare-fun bs!460151 () Bool)

(assert (= bs!460151 d!691913))

(assert (=> bs!460151 m!2766823))

(declare-fun m!2766911 () Bool)

(assert (=> bs!460151 m!2766911))

(assert (=> b!2345210 d!691913))

(declare-fun b!2345329 () Bool)

(declare-fun e!1500384 () Regex!6883)

(assert (=> b!2345329 (= e!1500384 (ite (= c!13498 (c!373317 r!26197)) EmptyExpr!6883 EmptyLang!6883))))

(declare-fun b!2345330 () Bool)

(declare-fun e!1500382 () Regex!6883)

(declare-fun call!142007 () Regex!6883)

(assert (=> b!2345330 (= e!1500382 (Union!6883 (Concat!11505 call!142007 (regTwo!14278 r!26197)) EmptyLang!6883))))

(declare-fun b!2345331 () Bool)

(declare-fun e!1500383 () Regex!6883)

(assert (=> b!2345331 (= e!1500383 EmptyLang!6883)))

(declare-fun b!2345332 () Bool)

(declare-fun c!373365 () Bool)

(assert (=> b!2345332 (= c!373365 (nullable!1962 (regOne!14278 r!26197)))))

(declare-fun e!1500380 () Regex!6883)

(assert (=> b!2345332 (= e!1500380 e!1500382)))

(declare-fun b!2345333 () Bool)

(declare-fun e!1500381 () Regex!6883)

(declare-fun call!142009 () Regex!6883)

(declare-fun call!142010 () Regex!6883)

(assert (=> b!2345333 (= e!1500381 (Union!6883 call!142009 call!142010))))

(declare-fun bm!142002 () Bool)

(declare-fun call!142008 () Regex!6883)

(assert (=> bm!142002 (= call!142008 call!142010)))

(declare-fun bm!142003 () Bool)

(assert (=> bm!142003 (= call!142007 call!142008)))

(declare-fun b!2345334 () Bool)

(assert (=> b!2345334 (= e!1500381 e!1500380)))

(declare-fun c!373364 () Bool)

(assert (=> b!2345334 (= c!373364 ((_ is Star!6883) r!26197))))

(declare-fun b!2345335 () Bool)

(assert (=> b!2345335 (= e!1500382 (Union!6883 (Concat!11505 call!142007 (regTwo!14278 r!26197)) call!142009))))

(declare-fun b!2345336 () Bool)

(assert (=> b!2345336 (= e!1500380 (Concat!11505 call!142008 r!26197))))

(declare-fun d!691915 () Bool)

(declare-fun lt!862902 () Regex!6883)

(assert (=> d!691915 (validRegex!2628 lt!862902)))

(assert (=> d!691915 (= lt!862902 e!1500383)))

(declare-fun c!373362 () Bool)

(assert (=> d!691915 (= c!373362 (or ((_ is EmptyExpr!6883) r!26197) ((_ is EmptyLang!6883) r!26197)))))

(assert (=> d!691915 (validRegex!2628 r!26197)))

(assert (=> d!691915 (= (derivativeStep!1622 r!26197 c!13498) lt!862902)))

(declare-fun b!2345337 () Bool)

(assert (=> b!2345337 (= e!1500383 e!1500384)))

(declare-fun c!373366 () Bool)

(assert (=> b!2345337 (= c!373366 ((_ is ElementMatch!6883) r!26197))))

(declare-fun c!373363 () Bool)

(declare-fun bm!142004 () Bool)

(assert (=> bm!142004 (= call!142010 (derivativeStep!1622 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197))) c!13498))))

(declare-fun bm!142005 () Bool)

(assert (=> bm!142005 (= call!142009 (derivativeStep!1622 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197)) c!13498))))

(declare-fun b!2345338 () Bool)

(assert (=> b!2345338 (= c!373363 ((_ is Union!6883) r!26197))))

(assert (=> b!2345338 (= e!1500384 e!1500381)))

(assert (= (and d!691915 c!373362) b!2345331))

(assert (= (and d!691915 (not c!373362)) b!2345337))

(assert (= (and b!2345337 c!373366) b!2345329))

(assert (= (and b!2345337 (not c!373366)) b!2345338))

(assert (= (and b!2345338 c!373363) b!2345333))

(assert (= (and b!2345338 (not c!373363)) b!2345334))

(assert (= (and b!2345334 c!373364) b!2345336))

(assert (= (and b!2345334 (not c!373364)) b!2345332))

(assert (= (and b!2345332 c!373365) b!2345335))

(assert (= (and b!2345332 (not c!373365)) b!2345330))

(assert (= (or b!2345335 b!2345330) bm!142003))

(assert (= (or b!2345336 bm!142003) bm!142002))

(assert (= (or b!2345333 bm!142002) bm!142004))

(assert (= (or b!2345333 b!2345335) bm!142005))

(assert (=> b!2345332 m!2766815))

(declare-fun m!2766913 () Bool)

(assert (=> d!691915 m!2766913))

(assert (=> d!691915 m!2766817))

(declare-fun m!2766915 () Bool)

(assert (=> bm!142004 m!2766915))

(declare-fun m!2766917 () Bool)

(assert (=> bm!142005 m!2766917))

(assert (=> b!2345210 d!691915))

(declare-fun d!691917 () Bool)

(declare-fun lt!862905 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3777 (List!27942) (InoxSet C!13924))

(assert (=> d!691917 (= lt!862905 (select (content!3777 (usedCharacters!442 r!26197)) c!13498))))

(declare-fun e!1500398 () Bool)

(assert (=> d!691917 (= lt!862905 e!1500398)))

(declare-fun res!998701 () Bool)

(assert (=> d!691917 (=> (not res!998701) (not e!1500398))))

(assert (=> d!691917 (= res!998701 ((_ is Cons!27844) (usedCharacters!442 r!26197)))))

(assert (=> d!691917 (= (contains!4823 (usedCharacters!442 r!26197) c!13498) lt!862905)))

(declare-fun b!2345359 () Bool)

(declare-fun e!1500397 () Bool)

(assert (=> b!2345359 (= e!1500398 e!1500397)))

(declare-fun res!998700 () Bool)

(assert (=> b!2345359 (=> res!998700 e!1500397)))

(assert (=> b!2345359 (= res!998700 (= (h!33245 (usedCharacters!442 r!26197)) c!13498))))

(declare-fun b!2345360 () Bool)

(assert (=> b!2345360 (= e!1500397 (contains!4823 (t!207801 (usedCharacters!442 r!26197)) c!13498))))

(assert (= (and d!691917 res!998701) b!2345359))

(assert (= (and b!2345359 (not res!998700)) b!2345360))

(assert (=> d!691917 m!2766831))

(declare-fun m!2766919 () Bool)

(assert (=> d!691917 m!2766919))

(declare-fun m!2766921 () Bool)

(assert (=> d!691917 m!2766921))

(declare-fun m!2766923 () Bool)

(assert (=> b!2345360 m!2766923))

(assert (=> b!2345209 d!691917))

(declare-fun d!691919 () Bool)

(declare-fun lt!862906 () Bool)

(assert (=> d!691919 (= lt!862906 (select (content!3777 (usedCharacters!442 (regTwo!14278 r!26197))) c!13498))))

(declare-fun e!1500400 () Bool)

(assert (=> d!691919 (= lt!862906 e!1500400)))

(declare-fun res!998703 () Bool)

(assert (=> d!691919 (=> (not res!998703) (not e!1500400))))

(assert (=> d!691919 (= res!998703 ((_ is Cons!27844) (usedCharacters!442 (regTwo!14278 r!26197))))))

(assert (=> d!691919 (= (contains!4823 (usedCharacters!442 (regTwo!14278 r!26197)) c!13498) lt!862906)))

(declare-fun b!2345361 () Bool)

(declare-fun e!1500399 () Bool)

(assert (=> b!2345361 (= e!1500400 e!1500399)))

(declare-fun res!998702 () Bool)

(assert (=> b!2345361 (=> res!998702 e!1500399)))

(assert (=> b!2345361 (= res!998702 (= (h!33245 (usedCharacters!442 (regTwo!14278 r!26197))) c!13498))))

(declare-fun b!2345362 () Bool)

(assert (=> b!2345362 (= e!1500399 (contains!4823 (t!207801 (usedCharacters!442 (regTwo!14278 r!26197))) c!13498))))

(assert (= (and d!691919 res!998703) b!2345361))

(assert (= (and b!2345361 (not res!998702)) b!2345362))

(assert (=> d!691919 m!2766835))

(declare-fun m!2766925 () Bool)

(assert (=> d!691919 m!2766925))

(declare-fun m!2766927 () Bool)

(assert (=> d!691919 m!2766927))

(declare-fun m!2766929 () Bool)

(assert (=> b!2345362 m!2766929))

(assert (=> b!2345209 d!691919))

(declare-fun d!691921 () Bool)

(assert (=> d!691921 (contains!4823 (usedCharacters!442 (regTwo!14278 r!26197)) c!13498)))

(declare-fun lt!862909 () Unit!40766)

(declare-fun choose!13640 (Regex!6883 C!13924) Unit!40766)

(assert (=> d!691921 (= lt!862909 (choose!13640 (regTwo!14278 r!26197) c!13498))))

(assert (=> d!691921 (validRegex!2628 (regTwo!14278 r!26197))))

(assert (=> d!691921 (= (lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC!6 (regTwo!14278 r!26197) c!13498) lt!862909)))

(declare-fun bs!460152 () Bool)

(assert (= bs!460152 d!691921))

(assert (=> bs!460152 m!2766835))

(assert (=> bs!460152 m!2766835))

(assert (=> bs!460152 m!2766837))

(declare-fun m!2766937 () Bool)

(assert (=> bs!460152 m!2766937))

(assert (=> bs!460152 m!2766841))

(assert (=> b!2345209 d!691921))

(declare-fun b!2345423 () Bool)

(declare-fun e!1500436 () List!27942)

(declare-fun call!142047 () List!27942)

(assert (=> b!2345423 (= e!1500436 call!142047)))

(declare-fun b!2345424 () Bool)

(declare-fun e!1500439 () List!27942)

(declare-fun call!142048 () List!27942)

(assert (=> b!2345424 (= e!1500439 call!142048)))

(declare-fun bm!142040 () Bool)

(declare-fun call!142045 () List!27942)

(declare-fun call!142046 () List!27942)

(declare-fun ++!6868 (List!27942 List!27942) List!27942)

(assert (=> bm!142040 (= call!142048 (++!6868 call!142045 call!142046))))

(declare-fun b!2345425 () Bool)

(declare-fun c!373403 () Bool)

(assert (=> b!2345425 (= c!373403 ((_ is Star!6883) r!26197))))

(declare-fun e!1500437 () List!27942)

(assert (=> b!2345425 (= e!1500437 e!1500436)))

(declare-fun bm!142041 () Bool)

(assert (=> bm!142041 (= call!142045 call!142047)))

(declare-fun d!691925 () Bool)

(declare-fun c!373401 () Bool)

(assert (=> d!691925 (= c!373401 (or ((_ is EmptyExpr!6883) r!26197) ((_ is EmptyLang!6883) r!26197)))))

(declare-fun e!1500438 () List!27942)

(assert (=> d!691925 (= (usedCharacters!442 r!26197) e!1500438)))

(declare-fun b!2345426 () Bool)

(assert (=> b!2345426 (= e!1500438 e!1500437)))

(declare-fun c!373404 () Bool)

(assert (=> b!2345426 (= c!373404 ((_ is ElementMatch!6883) r!26197))))

(declare-fun bm!142042 () Bool)

(declare-fun c!373402 () Bool)

(assert (=> bm!142042 (= call!142047 (usedCharacters!442 (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))

(declare-fun bm!142043 () Bool)

(assert (=> bm!142043 (= call!142046 (usedCharacters!442 (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))

(declare-fun b!2345427 () Bool)

(assert (=> b!2345427 (= e!1500439 call!142048)))

(declare-fun b!2345428 () Bool)

(assert (=> b!2345428 (= e!1500436 e!1500439)))

(assert (=> b!2345428 (= c!373402 ((_ is Union!6883) r!26197))))

(declare-fun b!2345429 () Bool)

(assert (=> b!2345429 (= e!1500438 Nil!27844)))

(declare-fun b!2345430 () Bool)

(assert (=> b!2345430 (= e!1500437 (Cons!27844 (c!373317 r!26197) Nil!27844))))

(assert (= (and d!691925 c!373401) b!2345429))

(assert (= (and d!691925 (not c!373401)) b!2345426))

(assert (= (and b!2345426 c!373404) b!2345430))

(assert (= (and b!2345426 (not c!373404)) b!2345425))

(assert (= (and b!2345425 c!373403) b!2345423))

(assert (= (and b!2345425 (not c!373403)) b!2345428))

(assert (= (and b!2345428 c!373402) b!2345427))

(assert (= (and b!2345428 (not c!373402)) b!2345424))

(assert (= (or b!2345427 b!2345424) bm!142043))

(assert (= (or b!2345427 b!2345424) bm!142041))

(assert (= (or b!2345427 b!2345424) bm!142040))

(assert (= (or b!2345423 bm!142041) bm!142042))

(declare-fun m!2766955 () Bool)

(assert (=> bm!142040 m!2766955))

(declare-fun m!2766957 () Bool)

(assert (=> bm!142042 m!2766957))

(declare-fun m!2766959 () Bool)

(assert (=> bm!142043 m!2766959))

(assert (=> b!2345209 d!691925))

(declare-fun b!2345431 () Bool)

(declare-fun e!1500440 () List!27942)

(declare-fun call!142051 () List!27942)

(assert (=> b!2345431 (= e!1500440 call!142051)))

(declare-fun b!2345432 () Bool)

(declare-fun e!1500443 () List!27942)

(declare-fun call!142052 () List!27942)

(assert (=> b!2345432 (= e!1500443 call!142052)))

(declare-fun bm!142044 () Bool)

(declare-fun call!142049 () List!27942)

(declare-fun call!142050 () List!27942)

(assert (=> bm!142044 (= call!142052 (++!6868 call!142049 call!142050))))

(declare-fun b!2345433 () Bool)

(declare-fun c!373407 () Bool)

(assert (=> b!2345433 (= c!373407 ((_ is Star!6883) (regTwo!14278 r!26197)))))

(declare-fun e!1500441 () List!27942)

(assert (=> b!2345433 (= e!1500441 e!1500440)))

(declare-fun bm!142045 () Bool)

(assert (=> bm!142045 (= call!142049 call!142051)))

(declare-fun d!691935 () Bool)

(declare-fun c!373405 () Bool)

(assert (=> d!691935 (= c!373405 (or ((_ is EmptyExpr!6883) (regTwo!14278 r!26197)) ((_ is EmptyLang!6883) (regTwo!14278 r!26197))))))

(declare-fun e!1500442 () List!27942)

(assert (=> d!691935 (= (usedCharacters!442 (regTwo!14278 r!26197)) e!1500442)))

(declare-fun b!2345434 () Bool)

(assert (=> b!2345434 (= e!1500442 e!1500441)))

(declare-fun c!373408 () Bool)

(assert (=> b!2345434 (= c!373408 ((_ is ElementMatch!6883) (regTwo!14278 r!26197)))))

(declare-fun c!373406 () Bool)

(declare-fun bm!142046 () Bool)

(assert (=> bm!142046 (= call!142051 (usedCharacters!442 (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(declare-fun bm!142047 () Bool)

(assert (=> bm!142047 (= call!142050 (usedCharacters!442 (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(declare-fun b!2345435 () Bool)

(assert (=> b!2345435 (= e!1500443 call!142052)))

(declare-fun b!2345436 () Bool)

(assert (=> b!2345436 (= e!1500440 e!1500443)))

(assert (=> b!2345436 (= c!373406 ((_ is Union!6883) (regTwo!14278 r!26197)))))

(declare-fun b!2345437 () Bool)

(assert (=> b!2345437 (= e!1500442 Nil!27844)))

(declare-fun b!2345438 () Bool)

(assert (=> b!2345438 (= e!1500441 (Cons!27844 (c!373317 (regTwo!14278 r!26197)) Nil!27844))))

(assert (= (and d!691935 c!373405) b!2345437))

(assert (= (and d!691935 (not c!373405)) b!2345434))

(assert (= (and b!2345434 c!373408) b!2345438))

(assert (= (and b!2345434 (not c!373408)) b!2345433))

(assert (= (and b!2345433 c!373407) b!2345431))

(assert (= (and b!2345433 (not c!373407)) b!2345436))

(assert (= (and b!2345436 c!373406) b!2345435))

(assert (= (and b!2345436 (not c!373406)) b!2345432))

(assert (= (or b!2345435 b!2345432) bm!142047))

(assert (= (or b!2345435 b!2345432) bm!142045))

(assert (= (or b!2345435 b!2345432) bm!142044))

(assert (= (or b!2345431 bm!142045) bm!142046))

(declare-fun m!2766961 () Bool)

(assert (=> bm!142044 m!2766961))

(declare-fun m!2766963 () Bool)

(assert (=> bm!142046 m!2766963))

(declare-fun m!2766965 () Bool)

(assert (=> bm!142047 m!2766965))

(assert (=> b!2345209 d!691935))

(declare-fun d!691937 () Bool)

(assert (=> d!691937 (= (nullable!1962 (regOne!14278 r!26197)) (nullableFct!515 (regOne!14278 r!26197)))))

(declare-fun bs!460155 () Bool)

(assert (= bs!460155 d!691937))

(declare-fun m!2766967 () Bool)

(assert (=> bs!460155 m!2766967))

(assert (=> b!2345204 d!691937))

(declare-fun b!2345467 () Bool)

(declare-fun e!1500460 () Bool)

(assert (=> b!2345467 (= e!1500460 tp_is_empty!11077)))

(declare-fun b!2345468 () Bool)

(declare-fun tp!744533 () Bool)

(declare-fun tp!744535 () Bool)

(assert (=> b!2345468 (= e!1500460 (and tp!744533 tp!744535))))

(declare-fun b!2345469 () Bool)

(declare-fun tp!744536 () Bool)

(assert (=> b!2345469 (= e!1500460 tp!744536)))

(assert (=> b!2345207 (= tp!744519 e!1500460)))

(declare-fun b!2345470 () Bool)

(declare-fun tp!744534 () Bool)

(declare-fun tp!744532 () Bool)

(assert (=> b!2345470 (= e!1500460 (and tp!744534 tp!744532))))

(assert (= (and b!2345207 ((_ is ElementMatch!6883) (reg!7212 r!26197))) b!2345467))

(assert (= (and b!2345207 ((_ is Concat!11505) (reg!7212 r!26197))) b!2345468))

(assert (= (and b!2345207 ((_ is Star!6883) (reg!7212 r!26197))) b!2345469))

(assert (= (and b!2345207 ((_ is Union!6883) (reg!7212 r!26197))) b!2345470))

(declare-fun b!2345481 () Bool)

(declare-fun e!1500466 () Bool)

(assert (=> b!2345481 (= e!1500466 tp_is_empty!11077)))

(declare-fun b!2345482 () Bool)

(declare-fun tp!744538 () Bool)

(declare-fun tp!744540 () Bool)

(assert (=> b!2345482 (= e!1500466 (and tp!744538 tp!744540))))

(declare-fun b!2345483 () Bool)

(declare-fun tp!744541 () Bool)

(assert (=> b!2345483 (= e!1500466 tp!744541)))

(assert (=> b!2345205 (= tp!744521 e!1500466)))

(declare-fun b!2345484 () Bool)

(declare-fun tp!744539 () Bool)

(declare-fun tp!744537 () Bool)

(assert (=> b!2345484 (= e!1500466 (and tp!744539 tp!744537))))

(assert (= (and b!2345205 ((_ is ElementMatch!6883) (regOne!14279 r!26197))) b!2345481))

(assert (= (and b!2345205 ((_ is Concat!11505) (regOne!14279 r!26197))) b!2345482))

(assert (= (and b!2345205 ((_ is Star!6883) (regOne!14279 r!26197))) b!2345483))

(assert (= (and b!2345205 ((_ is Union!6883) (regOne!14279 r!26197))) b!2345484))

(declare-fun b!2345485 () Bool)

(declare-fun e!1500467 () Bool)

(assert (=> b!2345485 (= e!1500467 tp_is_empty!11077)))

(declare-fun b!2345486 () Bool)

(declare-fun tp!744543 () Bool)

(declare-fun tp!744545 () Bool)

(assert (=> b!2345486 (= e!1500467 (and tp!744543 tp!744545))))

(declare-fun b!2345487 () Bool)

(declare-fun tp!744546 () Bool)

(assert (=> b!2345487 (= e!1500467 tp!744546)))

(assert (=> b!2345205 (= tp!744517 e!1500467)))

(declare-fun b!2345488 () Bool)

(declare-fun tp!744544 () Bool)

(declare-fun tp!744542 () Bool)

(assert (=> b!2345488 (= e!1500467 (and tp!744544 tp!744542))))

(assert (= (and b!2345205 ((_ is ElementMatch!6883) (regTwo!14279 r!26197))) b!2345485))

(assert (= (and b!2345205 ((_ is Concat!11505) (regTwo!14279 r!26197))) b!2345486))

(assert (= (and b!2345205 ((_ is Star!6883) (regTwo!14279 r!26197))) b!2345487))

(assert (= (and b!2345205 ((_ is Union!6883) (regTwo!14279 r!26197))) b!2345488))

(declare-fun b!2345489 () Bool)

(declare-fun e!1500468 () Bool)

(assert (=> b!2345489 (= e!1500468 tp_is_empty!11077)))

(declare-fun b!2345490 () Bool)

(declare-fun tp!744548 () Bool)

(declare-fun tp!744550 () Bool)

(assert (=> b!2345490 (= e!1500468 (and tp!744548 tp!744550))))

(declare-fun b!2345491 () Bool)

(declare-fun tp!744551 () Bool)

(assert (=> b!2345491 (= e!1500468 tp!744551)))

(assert (=> b!2345214 (= tp!744518 e!1500468)))

(declare-fun b!2345492 () Bool)

(declare-fun tp!744549 () Bool)

(declare-fun tp!744547 () Bool)

(assert (=> b!2345492 (= e!1500468 (and tp!744549 tp!744547))))

(assert (= (and b!2345214 ((_ is ElementMatch!6883) (regOne!14278 r!26197))) b!2345489))

(assert (= (and b!2345214 ((_ is Concat!11505) (regOne!14278 r!26197))) b!2345490))

(assert (= (and b!2345214 ((_ is Star!6883) (regOne!14278 r!26197))) b!2345491))

(assert (= (and b!2345214 ((_ is Union!6883) (regOne!14278 r!26197))) b!2345492))

(declare-fun b!2345493 () Bool)

(declare-fun e!1500469 () Bool)

(assert (=> b!2345493 (= e!1500469 tp_is_empty!11077)))

(declare-fun b!2345494 () Bool)

(declare-fun tp!744553 () Bool)

(declare-fun tp!744555 () Bool)

(assert (=> b!2345494 (= e!1500469 (and tp!744553 tp!744555))))

(declare-fun b!2345495 () Bool)

(declare-fun tp!744556 () Bool)

(assert (=> b!2345495 (= e!1500469 tp!744556)))

(assert (=> b!2345214 (= tp!744520 e!1500469)))

(declare-fun b!2345496 () Bool)

(declare-fun tp!744554 () Bool)

(declare-fun tp!744552 () Bool)

(assert (=> b!2345496 (= e!1500469 (and tp!744554 tp!744552))))

(assert (= (and b!2345214 ((_ is ElementMatch!6883) (regTwo!14278 r!26197))) b!2345493))

(assert (= (and b!2345214 ((_ is Concat!11505) (regTwo!14278 r!26197))) b!2345494))

(assert (= (and b!2345214 ((_ is Star!6883) (regTwo!14278 r!26197))) b!2345495))

(assert (= (and b!2345214 ((_ is Union!6883) (regTwo!14278 r!26197))) b!2345496))

(check-sat (not bm!142043) (not d!691915) (not bm!141972) (not bm!142044) (not b!2345487) (not d!691913) (not b!2345494) (not b!2345488) tp_is_empty!11077 (not b!2345482) (not d!691921) (not b!2345490) (not b!2345362) (not b!2345332) (not d!691909) (not b!2345491) (not b!2345484) (not b!2345322) (not bm!142001) (not bm!142046) (not b!2345238) (not bm!141996) (not b!2345469) (not b!2345470) (not b!2345496) (not bm!141971) (not d!691895) (not b!2345360) (not d!691919) (not bm!142047) (not b!2345486) (not bm!141997) (not bm!141968) (not b!2345312) (not d!691893) (not bm!141969) (not b!2345247) (not d!691897) (not d!691907) (not d!691917) (not b!2345468) (not bm!142000) (not bm!142040) (not b!2345492) (not b!2345495) (not bm!142042) (not bm!142004) (not d!691937) (not bm!142005) (not b!2345483) (not d!691905))
(check-sat)
(get-model)

(declare-fun b!2345527 () Bool)

(declare-fun e!1500477 () List!27942)

(declare-fun call!142065 () List!27942)

(assert (=> b!2345527 (= e!1500477 call!142065)))

(declare-fun b!2345528 () Bool)

(declare-fun e!1500480 () List!27942)

(declare-fun call!142066 () List!27942)

(assert (=> b!2345528 (= e!1500480 call!142066)))

(declare-fun bm!142058 () Bool)

(declare-fun call!142063 () List!27942)

(declare-fun call!142064 () List!27942)

(assert (=> bm!142058 (= call!142066 (++!6868 call!142063 call!142064))))

(declare-fun b!2345529 () Bool)

(declare-fun c!373420 () Bool)

(assert (=> b!2345529 (= c!373420 ((_ is Star!6883) (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))

(declare-fun e!1500478 () List!27942)

(assert (=> b!2345529 (= e!1500478 e!1500477)))

(declare-fun bm!142059 () Bool)

(assert (=> bm!142059 (= call!142063 call!142065)))

(declare-fun d!691949 () Bool)

(declare-fun c!373418 () Bool)

(assert (=> d!691949 (= c!373418 (or ((_ is EmptyExpr!6883) (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))) ((_ is EmptyLang!6883) (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197)))))))

(declare-fun e!1500479 () List!27942)

(assert (=> d!691949 (= (usedCharacters!442 (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))) e!1500479)))

(declare-fun b!2345530 () Bool)

(assert (=> b!2345530 (= e!1500479 e!1500478)))

(declare-fun c!373421 () Bool)

(assert (=> b!2345530 (= c!373421 ((_ is ElementMatch!6883) (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))

(declare-fun bm!142060 () Bool)

(declare-fun c!373419 () Bool)

(assert (=> bm!142060 (= call!142065 (usedCharacters!442 (ite c!373420 (reg!7212 (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))) (ite c!373419 (regOne!14279 (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))) (regOne!14278 (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197)))))))))

(declare-fun bm!142061 () Bool)

(assert (=> bm!142061 (= call!142064 (usedCharacters!442 (ite c!373419 (regTwo!14279 (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))) (regTwo!14278 (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))))

(declare-fun b!2345531 () Bool)

(assert (=> b!2345531 (= e!1500480 call!142066)))

(declare-fun b!2345532 () Bool)

(assert (=> b!2345532 (= e!1500477 e!1500480)))

(assert (=> b!2345532 (= c!373419 ((_ is Union!6883) (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))

(declare-fun b!2345533 () Bool)

(assert (=> b!2345533 (= e!1500479 Nil!27844)))

(declare-fun b!2345534 () Bool)

(assert (=> b!2345534 (= e!1500478 (Cons!27844 (c!373317 (ite c!373402 (regTwo!14279 r!26197) (regTwo!14278 r!26197))) Nil!27844))))

(assert (= (and d!691949 c!373418) b!2345533))

(assert (= (and d!691949 (not c!373418)) b!2345530))

(assert (= (and b!2345530 c!373421) b!2345534))

(assert (= (and b!2345530 (not c!373421)) b!2345529))

(assert (= (and b!2345529 c!373420) b!2345527))

(assert (= (and b!2345529 (not c!373420)) b!2345532))

(assert (= (and b!2345532 c!373419) b!2345531))

(assert (= (and b!2345532 (not c!373419)) b!2345528))

(assert (= (or b!2345531 b!2345528) bm!142061))

(assert (= (or b!2345531 b!2345528) bm!142059))

(assert (= (or b!2345531 b!2345528) bm!142058))

(assert (= (or b!2345527 bm!142059) bm!142060))

(declare-fun m!2766995 () Bool)

(assert (=> bm!142058 m!2766995))

(declare-fun m!2766997 () Bool)

(assert (=> bm!142060 m!2766997))

(declare-fun m!2766999 () Bool)

(assert (=> bm!142061 m!2766999))

(assert (=> bm!142043 d!691949))

(assert (=> d!691921 d!691919))

(assert (=> d!691921 d!691935))

(declare-fun d!691951 () Bool)

(assert (=> d!691951 (contains!4823 (usedCharacters!442 (regTwo!14278 r!26197)) c!13498)))

(assert (=> d!691951 true))

(declare-fun _$131!65 () Unit!40766)

(assert (=> d!691951 (= (choose!13640 (regTwo!14278 r!26197) c!13498) _$131!65)))

(declare-fun bs!460159 () Bool)

(assert (= bs!460159 d!691951))

(assert (=> bs!460159 m!2766835))

(assert (=> bs!460159 m!2766835))

(assert (=> bs!460159 m!2766837))

(assert (=> d!691921 d!691951))

(assert (=> d!691921 d!691885))

(declare-fun b!2345535 () Bool)

(declare-fun e!1500485 () Regex!6883)

(assert (=> b!2345535 (= e!1500485 (ite (= c!13498 (c!373317 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197))))) EmptyExpr!6883 EmptyLang!6883))))

(declare-fun call!142067 () Regex!6883)

(declare-fun e!1500483 () Regex!6883)

(declare-fun b!2345536 () Bool)

(assert (=> b!2345536 (= e!1500483 (Union!6883 (Concat!11505 call!142067 (regTwo!14278 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197))))) EmptyLang!6883))))

(declare-fun b!2345537 () Bool)

(declare-fun e!1500484 () Regex!6883)

(assert (=> b!2345537 (= e!1500484 EmptyLang!6883)))

(declare-fun c!373426 () Bool)

(declare-fun b!2345538 () Bool)

(assert (=> b!2345538 (= c!373426 (nullable!1962 (regOne!14278 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197))))))))

(declare-fun e!1500481 () Regex!6883)

(assert (=> b!2345538 (= e!1500481 e!1500483)))

(declare-fun b!2345539 () Bool)

(declare-fun e!1500482 () Regex!6883)

(declare-fun call!142069 () Regex!6883)

(declare-fun call!142070 () Regex!6883)

(assert (=> b!2345539 (= e!1500482 (Union!6883 call!142069 call!142070))))

(declare-fun bm!142062 () Bool)

(declare-fun call!142068 () Regex!6883)

(assert (=> bm!142062 (= call!142068 call!142070)))

(declare-fun bm!142063 () Bool)

(assert (=> bm!142063 (= call!142067 call!142068)))

(declare-fun b!2345540 () Bool)

(assert (=> b!2345540 (= e!1500482 e!1500481)))

(declare-fun c!373425 () Bool)

(assert (=> b!2345540 (= c!373425 ((_ is Star!6883) (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197)))))))

(declare-fun b!2345541 () Bool)

(assert (=> b!2345541 (= e!1500483 (Union!6883 (Concat!11505 call!142067 (regTwo!14278 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197))))) call!142069))))

(declare-fun b!2345542 () Bool)

(assert (=> b!2345542 (= e!1500481 (Concat!11505 call!142068 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197)))))))

(declare-fun d!691953 () Bool)

(declare-fun lt!862912 () Regex!6883)

(assert (=> d!691953 (validRegex!2628 lt!862912)))

(assert (=> d!691953 (= lt!862912 e!1500484)))

(declare-fun c!373423 () Bool)

(assert (=> d!691953 (= c!373423 (or ((_ is EmptyExpr!6883) (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197)))) ((_ is EmptyLang!6883) (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197))))))))

(assert (=> d!691953 (validRegex!2628 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197))))))

(assert (=> d!691953 (= (derivativeStep!1622 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197))) c!13498) lt!862912)))

(declare-fun b!2345543 () Bool)

(assert (=> b!2345543 (= e!1500484 e!1500485)))

(declare-fun c!373427 () Bool)

(assert (=> b!2345543 (= c!373427 ((_ is ElementMatch!6883) (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197)))))))

(declare-fun bm!142064 () Bool)

(declare-fun c!373424 () Bool)

(assert (=> bm!142064 (= call!142070 (derivativeStep!1622 (ite c!373424 (regTwo!14279 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197)))) (ite c!373425 (reg!7212 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197)))) (regOne!14278 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197)))))) c!13498))))

(declare-fun bm!142065 () Bool)

(assert (=> bm!142065 (= call!142069 (derivativeStep!1622 (ite c!373424 (regOne!14279 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197)))) (regTwo!14278 (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197))))) c!13498))))

(declare-fun b!2345544 () Bool)

(assert (=> b!2345544 (= c!373424 ((_ is Union!6883) (ite c!373363 (regTwo!14279 r!26197) (ite c!373364 (reg!7212 r!26197) (regOne!14278 r!26197)))))))

(assert (=> b!2345544 (= e!1500485 e!1500482)))

(assert (= (and d!691953 c!373423) b!2345537))

(assert (= (and d!691953 (not c!373423)) b!2345543))

(assert (= (and b!2345543 c!373427) b!2345535))

(assert (= (and b!2345543 (not c!373427)) b!2345544))

(assert (= (and b!2345544 c!373424) b!2345539))

(assert (= (and b!2345544 (not c!373424)) b!2345540))

(assert (= (and b!2345540 c!373425) b!2345542))

(assert (= (and b!2345540 (not c!373425)) b!2345538))

(assert (= (and b!2345538 c!373426) b!2345541))

(assert (= (and b!2345538 (not c!373426)) b!2345536))

(assert (= (or b!2345541 b!2345536) bm!142063))

(assert (= (or b!2345542 bm!142063) bm!142062))

(assert (= (or b!2345539 bm!142062) bm!142064))

(assert (= (or b!2345539 b!2345541) bm!142065))

(declare-fun m!2767001 () Bool)

(assert (=> b!2345538 m!2767001))

(declare-fun m!2767003 () Bool)

(assert (=> d!691953 m!2767003))

(declare-fun m!2767005 () Bool)

(assert (=> d!691953 m!2767005))

(declare-fun m!2767007 () Bool)

(assert (=> bm!142064 m!2767007))

(declare-fun m!2767009 () Bool)

(assert (=> bm!142065 m!2767009))

(assert (=> bm!142004 d!691953))

(declare-fun b!2345545 () Bool)

(declare-fun e!1500486 () List!27942)

(declare-fun call!142073 () List!27942)

(assert (=> b!2345545 (= e!1500486 call!142073)))

(declare-fun b!2345546 () Bool)

(declare-fun e!1500489 () List!27942)

(declare-fun call!142074 () List!27942)

(assert (=> b!2345546 (= e!1500489 call!142074)))

(declare-fun bm!142066 () Bool)

(declare-fun call!142071 () List!27942)

(declare-fun call!142072 () List!27942)

(assert (=> bm!142066 (= call!142074 (++!6868 call!142071 call!142072))))

(declare-fun c!373430 () Bool)

(declare-fun b!2345547 () Bool)

(assert (=> b!2345547 (= c!373430 ((_ is Star!6883) (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))

(declare-fun e!1500487 () List!27942)

(assert (=> b!2345547 (= e!1500487 e!1500486)))

(declare-fun bm!142067 () Bool)

(assert (=> bm!142067 (= call!142071 call!142073)))

(declare-fun d!691955 () Bool)

(declare-fun c!373428 () Bool)

(assert (=> d!691955 (= c!373428 (or ((_ is EmptyExpr!6883) (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))) ((_ is EmptyLang!6883) (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197))))))))

(declare-fun e!1500488 () List!27942)

(assert (=> d!691955 (= (usedCharacters!442 (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))) e!1500488)))

(declare-fun b!2345548 () Bool)

(assert (=> b!2345548 (= e!1500488 e!1500487)))

(declare-fun c!373431 () Bool)

(assert (=> b!2345548 (= c!373431 ((_ is ElementMatch!6883) (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))

(declare-fun c!373429 () Bool)

(declare-fun bm!142068 () Bool)

(assert (=> bm!142068 (= call!142073 (usedCharacters!442 (ite c!373430 (reg!7212 (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))) (ite c!373429 (regOne!14279 (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))) (regOne!14278 (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197))))))))))

(declare-fun bm!142069 () Bool)

(assert (=> bm!142069 (= call!142072 (usedCharacters!442 (ite c!373429 (regTwo!14279 (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))) (regTwo!14278 (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))))

(declare-fun b!2345549 () Bool)

(assert (=> b!2345549 (= e!1500489 call!142074)))

(declare-fun b!2345550 () Bool)

(assert (=> b!2345550 (= e!1500486 e!1500489)))

(assert (=> b!2345550 (= c!373429 ((_ is Union!6883) (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))

(declare-fun b!2345551 () Bool)

(assert (=> b!2345551 (= e!1500488 Nil!27844)))

(declare-fun b!2345552 () Bool)

(assert (=> b!2345552 (= e!1500487 (Cons!27844 (c!373317 (ite c!373403 (reg!7212 r!26197) (ite c!373402 (regOne!14279 r!26197) (regOne!14278 r!26197)))) Nil!27844))))

(assert (= (and d!691955 c!373428) b!2345551))

(assert (= (and d!691955 (not c!373428)) b!2345548))

(assert (= (and b!2345548 c!373431) b!2345552))

(assert (= (and b!2345548 (not c!373431)) b!2345547))

(assert (= (and b!2345547 c!373430) b!2345545))

(assert (= (and b!2345547 (not c!373430)) b!2345550))

(assert (= (and b!2345550 c!373429) b!2345549))

(assert (= (and b!2345550 (not c!373429)) b!2345546))

(assert (= (or b!2345549 b!2345546) bm!142069))

(assert (= (or b!2345549 b!2345546) bm!142067))

(assert (= (or b!2345549 b!2345546) bm!142066))

(assert (= (or b!2345545 bm!142067) bm!142068))

(declare-fun m!2767011 () Bool)

(assert (=> bm!142066 m!2767011))

(declare-fun m!2767013 () Bool)

(assert (=> bm!142068 m!2767013))

(declare-fun m!2767015 () Bool)

(assert (=> bm!142069 m!2767015))

(assert (=> bm!142042 d!691955))

(declare-fun d!691957 () Bool)

(declare-fun lt!862913 () Bool)

(assert (=> d!691957 (= lt!862913 (select (content!3777 (t!207801 (usedCharacters!442 r!26197))) c!13498))))

(declare-fun e!1500491 () Bool)

(assert (=> d!691957 (= lt!862913 e!1500491)))

(declare-fun res!998725 () Bool)

(assert (=> d!691957 (=> (not res!998725) (not e!1500491))))

(assert (=> d!691957 (= res!998725 ((_ is Cons!27844) (t!207801 (usedCharacters!442 r!26197))))))

(assert (=> d!691957 (= (contains!4823 (t!207801 (usedCharacters!442 r!26197)) c!13498) lt!862913)))

(declare-fun b!2345553 () Bool)

(declare-fun e!1500490 () Bool)

(assert (=> b!2345553 (= e!1500491 e!1500490)))

(declare-fun res!998724 () Bool)

(assert (=> b!2345553 (=> res!998724 e!1500490)))

(assert (=> b!2345553 (= res!998724 (= (h!33245 (t!207801 (usedCharacters!442 r!26197))) c!13498))))

(declare-fun b!2345554 () Bool)

(assert (=> b!2345554 (= e!1500490 (contains!4823 (t!207801 (t!207801 (usedCharacters!442 r!26197))) c!13498))))

(assert (= (and d!691957 res!998725) b!2345553))

(assert (= (and b!2345553 (not res!998724)) b!2345554))

(declare-fun m!2767017 () Bool)

(assert (=> d!691957 m!2767017))

(declare-fun m!2767019 () Bool)

(assert (=> d!691957 m!2767019))

(declare-fun m!2767021 () Bool)

(assert (=> b!2345554 m!2767021))

(assert (=> b!2345360 d!691957))

(declare-fun b!2345555 () Bool)

(declare-fun e!1500496 () Regex!6883)

(assert (=> b!2345555 (= e!1500496 (ite (= c!13498 (c!373317 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197))))) EmptyExpr!6883 EmptyLang!6883))))

(declare-fun call!142075 () Regex!6883)

(declare-fun e!1500494 () Regex!6883)

(declare-fun b!2345556 () Bool)

(assert (=> b!2345556 (= e!1500494 (Union!6883 (Concat!11505 call!142075 (regTwo!14278 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197))))) EmptyLang!6883))))

(declare-fun b!2345557 () Bool)

(declare-fun e!1500495 () Regex!6883)

(assert (=> b!2345557 (= e!1500495 EmptyLang!6883)))

(declare-fun b!2345558 () Bool)

(declare-fun c!373435 () Bool)

(assert (=> b!2345558 (= c!373435 (nullable!1962 (regOne!14278 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197))))))))

(declare-fun e!1500492 () Regex!6883)

(assert (=> b!2345558 (= e!1500492 e!1500494)))

(declare-fun b!2345559 () Bool)

(declare-fun e!1500493 () Regex!6883)

(declare-fun call!142077 () Regex!6883)

(declare-fun call!142078 () Regex!6883)

(assert (=> b!2345559 (= e!1500493 (Union!6883 call!142077 call!142078))))

(declare-fun bm!142070 () Bool)

(declare-fun call!142076 () Regex!6883)

(assert (=> bm!142070 (= call!142076 call!142078)))

(declare-fun bm!142071 () Bool)

(assert (=> bm!142071 (= call!142075 call!142076)))

(declare-fun b!2345560 () Bool)

(assert (=> b!2345560 (= e!1500493 e!1500492)))

(declare-fun c!373434 () Bool)

(assert (=> b!2345560 (= c!373434 ((_ is Star!6883) (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))))))

(declare-fun b!2345561 () Bool)

(assert (=> b!2345561 (= e!1500494 (Union!6883 (Concat!11505 call!142075 (regTwo!14278 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197))))) call!142077))))

(declare-fun b!2345562 () Bool)

(assert (=> b!2345562 (= e!1500492 (Concat!11505 call!142076 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))))))

(declare-fun d!691959 () Bool)

(declare-fun lt!862914 () Regex!6883)

(assert (=> d!691959 (validRegex!2628 lt!862914)))

(assert (=> d!691959 (= lt!862914 e!1500495)))

(declare-fun c!373432 () Bool)

(assert (=> d!691959 (= c!373432 (or ((_ is EmptyExpr!6883) (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))) ((_ is EmptyLang!6883) (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197))))))))

(assert (=> d!691959 (validRegex!2628 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197))))))

(assert (=> d!691959 (= (derivativeStep!1622 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197))) c!13498) lt!862914)))

(declare-fun b!2345563 () Bool)

(assert (=> b!2345563 (= e!1500495 e!1500496)))

(declare-fun c!373436 () Bool)

(assert (=> b!2345563 (= c!373436 ((_ is ElementMatch!6883) (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))))))

(declare-fun c!373433 () Bool)

(declare-fun bm!142072 () Bool)

(assert (=> bm!142072 (= call!142078 (derivativeStep!1622 (ite c!373433 (regTwo!14279 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))) (ite c!373434 (reg!7212 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))) (regOne!14278 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))))) c!13498))))

(declare-fun bm!142073 () Bool)

(assert (=> bm!142073 (= call!142077 (derivativeStep!1622 (ite c!373433 (regOne!14279 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))) (regTwo!14278 (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197))))) c!13498))))

(declare-fun b!2345564 () Bool)

(assert (=> b!2345564 (= c!373433 ((_ is Union!6883) (ite c!373352 (regOne!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))))))

(assert (=> b!2345564 (= e!1500496 e!1500493)))

(assert (= (and d!691959 c!373432) b!2345557))

(assert (= (and d!691959 (not c!373432)) b!2345563))

(assert (= (and b!2345563 c!373436) b!2345555))

(assert (= (and b!2345563 (not c!373436)) b!2345564))

(assert (= (and b!2345564 c!373433) b!2345559))

(assert (= (and b!2345564 (not c!373433)) b!2345560))

(assert (= (and b!2345560 c!373434) b!2345562))

(assert (= (and b!2345560 (not c!373434)) b!2345558))

(assert (= (and b!2345558 c!373435) b!2345561))

(assert (= (and b!2345558 (not c!373435)) b!2345556))

(assert (= (or b!2345561 b!2345556) bm!142071))

(assert (= (or b!2345562 bm!142071) bm!142070))

(assert (= (or b!2345559 bm!142070) bm!142072))

(assert (= (or b!2345559 b!2345561) bm!142073))

(declare-fun m!2767023 () Bool)

(assert (=> b!2345558 m!2767023))

(declare-fun m!2767025 () Bool)

(assert (=> d!691959 m!2767025))

(declare-fun m!2767027 () Bool)

(assert (=> d!691959 m!2767027))

(declare-fun m!2767029 () Bool)

(assert (=> bm!142072 m!2767029))

(declare-fun m!2767031 () Bool)

(assert (=> bm!142073 m!2767031))

(assert (=> bm!141997 d!691959))

(declare-fun e!1500501 () Regex!6883)

(declare-fun b!2345565 () Bool)

(assert (=> b!2345565 (= e!1500501 (ite (= c!13498 (c!373317 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197)))) EmptyExpr!6883 EmptyLang!6883))))

(declare-fun b!2345566 () Bool)

(declare-fun call!142079 () Regex!6883)

(declare-fun e!1500499 () Regex!6883)

(assert (=> b!2345566 (= e!1500499 (Union!6883 (Concat!11505 call!142079 (regTwo!14278 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197)))) EmptyLang!6883))))

(declare-fun b!2345567 () Bool)

(declare-fun e!1500500 () Regex!6883)

(assert (=> b!2345567 (= e!1500500 EmptyLang!6883)))

(declare-fun b!2345568 () Bool)

(declare-fun c!373440 () Bool)

(assert (=> b!2345568 (= c!373440 (nullable!1962 (regOne!14278 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197)))))))

(declare-fun e!1500497 () Regex!6883)

(assert (=> b!2345568 (= e!1500497 e!1500499)))

(declare-fun b!2345569 () Bool)

(declare-fun e!1500498 () Regex!6883)

(declare-fun call!142081 () Regex!6883)

(declare-fun call!142082 () Regex!6883)

(assert (=> b!2345569 (= e!1500498 (Union!6883 call!142081 call!142082))))

(declare-fun bm!142074 () Bool)

(declare-fun call!142080 () Regex!6883)

(assert (=> bm!142074 (= call!142080 call!142082)))

(declare-fun bm!142075 () Bool)

(assert (=> bm!142075 (= call!142079 call!142080)))

(declare-fun b!2345570 () Bool)

(assert (=> b!2345570 (= e!1500498 e!1500497)))

(declare-fun c!373439 () Bool)

(assert (=> b!2345570 (= c!373439 ((_ is Star!6883) (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197))))))

(declare-fun b!2345571 () Bool)

(assert (=> b!2345571 (= e!1500499 (Union!6883 (Concat!11505 call!142079 (regTwo!14278 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197)))) call!142081))))

(declare-fun b!2345572 () Bool)

(assert (=> b!2345572 (= e!1500497 (Concat!11505 call!142080 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197))))))

(declare-fun d!691961 () Bool)

(declare-fun lt!862915 () Regex!6883)

(assert (=> d!691961 (validRegex!2628 lt!862915)))

(assert (=> d!691961 (= lt!862915 e!1500500)))

(declare-fun c!373437 () Bool)

(assert (=> d!691961 (= c!373437 (or ((_ is EmptyExpr!6883) (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197))) ((_ is EmptyLang!6883) (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197)))))))

(assert (=> d!691961 (validRegex!2628 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197)))))

(assert (=> d!691961 (= (derivativeStep!1622 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197)) c!13498) lt!862915)))

(declare-fun b!2345573 () Bool)

(assert (=> b!2345573 (= e!1500500 e!1500501)))

(declare-fun c!373441 () Bool)

(assert (=> b!2345573 (= c!373441 ((_ is ElementMatch!6883) (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197))))))

(declare-fun c!373438 () Bool)

(declare-fun bm!142076 () Bool)

(assert (=> bm!142076 (= call!142082 (derivativeStep!1622 (ite c!373438 (regTwo!14279 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197))) (ite c!373439 (reg!7212 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197))) (regOne!14278 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197))))) c!13498))))

(declare-fun bm!142077 () Bool)

(assert (=> bm!142077 (= call!142081 (derivativeStep!1622 (ite c!373438 (regOne!14279 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197))) (regTwo!14278 (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197)))) c!13498))))

(declare-fun b!2345574 () Bool)

(assert (=> b!2345574 (= c!373438 ((_ is Union!6883) (ite c!373363 (regOne!14279 r!26197) (regTwo!14278 r!26197))))))

(assert (=> b!2345574 (= e!1500501 e!1500498)))

(assert (= (and d!691961 c!373437) b!2345567))

(assert (= (and d!691961 (not c!373437)) b!2345573))

(assert (= (and b!2345573 c!373441) b!2345565))

(assert (= (and b!2345573 (not c!373441)) b!2345574))

(assert (= (and b!2345574 c!373438) b!2345569))

(assert (= (and b!2345574 (not c!373438)) b!2345570))

(assert (= (and b!2345570 c!373439) b!2345572))

(assert (= (and b!2345570 (not c!373439)) b!2345568))

(assert (= (and b!2345568 c!373440) b!2345571))

(assert (= (and b!2345568 (not c!373440)) b!2345566))

(assert (= (or b!2345571 b!2345566) bm!142075))

(assert (= (or b!2345572 bm!142075) bm!142074))

(assert (= (or b!2345569 bm!142074) bm!142076))

(assert (= (or b!2345569 b!2345571) bm!142077))

(declare-fun m!2767033 () Bool)

(assert (=> b!2345568 m!2767033))

(declare-fun m!2767035 () Bool)

(assert (=> d!691961 m!2767035))

(declare-fun m!2767037 () Bool)

(assert (=> d!691961 m!2767037))

(declare-fun m!2767039 () Bool)

(assert (=> bm!142076 m!2767039))

(declare-fun m!2767041 () Bool)

(assert (=> bm!142077 m!2767041))

(assert (=> bm!142005 d!691961))

(declare-fun b!2345575 () Bool)

(declare-fun e!1500506 () Regex!6883)

(assert (=> b!2345575 (= e!1500506 (ite (= c!13498 (c!373317 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))) EmptyExpr!6883 EmptyLang!6883))))

(declare-fun call!142083 () Regex!6883)

(declare-fun b!2345576 () Bool)

(declare-fun e!1500504 () Regex!6883)

(assert (=> b!2345576 (= e!1500504 (Union!6883 (Concat!11505 call!142083 (regTwo!14278 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))) EmptyLang!6883))))

(declare-fun b!2345577 () Bool)

(declare-fun e!1500505 () Regex!6883)

(assert (=> b!2345577 (= e!1500505 EmptyLang!6883)))

(declare-fun b!2345578 () Bool)

(declare-fun c!373445 () Bool)

(assert (=> b!2345578 (= c!373445 (nullable!1962 (regOne!14278 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))))))

(declare-fun e!1500502 () Regex!6883)

(assert (=> b!2345578 (= e!1500502 e!1500504)))

(declare-fun b!2345579 () Bool)

(declare-fun e!1500503 () Regex!6883)

(declare-fun call!142085 () Regex!6883)

(declare-fun call!142086 () Regex!6883)

(assert (=> b!2345579 (= e!1500503 (Union!6883 call!142085 call!142086))))

(declare-fun bm!142078 () Bool)

(declare-fun call!142084 () Regex!6883)

(assert (=> bm!142078 (= call!142084 call!142086)))

(declare-fun bm!142079 () Bool)

(assert (=> bm!142079 (= call!142083 call!142084)))

(declare-fun b!2345580 () Bool)

(assert (=> b!2345580 (= e!1500503 e!1500502)))

(declare-fun c!373444 () Bool)

(assert (=> b!2345580 (= c!373444 ((_ is Star!6883) (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(declare-fun b!2345581 () Bool)

(assert (=> b!2345581 (= e!1500504 (Union!6883 (Concat!11505 call!142083 (regTwo!14278 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))) call!142085))))

(declare-fun b!2345582 () Bool)

(assert (=> b!2345582 (= e!1500502 (Concat!11505 call!142084 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(declare-fun d!691963 () Bool)

(declare-fun lt!862916 () Regex!6883)

(assert (=> d!691963 (validRegex!2628 lt!862916)))

(assert (=> d!691963 (= lt!862916 e!1500505)))

(declare-fun c!373442 () Bool)

(assert (=> d!691963 (= c!373442 (or ((_ is EmptyExpr!6883) (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) ((_ is EmptyLang!6883) (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))))))

(assert (=> d!691963 (validRegex!2628 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))))

(assert (=> d!691963 (= (derivativeStep!1622 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))) c!13498) lt!862916)))

(declare-fun b!2345583 () Bool)

(assert (=> b!2345583 (= e!1500505 e!1500506)))

(declare-fun c!373446 () Bool)

(assert (=> b!2345583 (= c!373446 ((_ is ElementMatch!6883) (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(declare-fun c!373443 () Bool)

(declare-fun bm!142080 () Bool)

(assert (=> bm!142080 (= call!142086 (derivativeStep!1622 (ite c!373443 (regTwo!14279 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) (ite c!373444 (reg!7212 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) (regOne!14278 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))) c!13498))))

(declare-fun bm!142081 () Bool)

(assert (=> bm!142081 (= call!142085 (derivativeStep!1622 (ite c!373443 (regOne!14279 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) (regTwo!14278 (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))) c!13498))))

(declare-fun b!2345584 () Bool)

(assert (=> b!2345584 (= c!373443 ((_ is Union!6883) (ite c!373357 (regOne!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(assert (=> b!2345584 (= e!1500506 e!1500503)))

(assert (= (and d!691963 c!373442) b!2345577))

(assert (= (and d!691963 (not c!373442)) b!2345583))

(assert (= (and b!2345583 c!373446) b!2345575))

(assert (= (and b!2345583 (not c!373446)) b!2345584))

(assert (= (and b!2345584 c!373443) b!2345579))

(assert (= (and b!2345584 (not c!373443)) b!2345580))

(assert (= (and b!2345580 c!373444) b!2345582))

(assert (= (and b!2345580 (not c!373444)) b!2345578))

(assert (= (and b!2345578 c!373445) b!2345581))

(assert (= (and b!2345578 (not c!373445)) b!2345576))

(assert (= (or b!2345581 b!2345576) bm!142079))

(assert (= (or b!2345582 bm!142079) bm!142078))

(assert (= (or b!2345579 bm!142078) bm!142080))

(assert (= (or b!2345579 b!2345581) bm!142081))

(declare-fun m!2767043 () Bool)

(assert (=> b!2345578 m!2767043))

(declare-fun m!2767045 () Bool)

(assert (=> d!691963 m!2767045))

(declare-fun m!2767047 () Bool)

(assert (=> d!691963 m!2767047))

(declare-fun m!2767049 () Bool)

(assert (=> bm!142080 m!2767049))

(declare-fun m!2767051 () Bool)

(assert (=> bm!142081 m!2767051))

(assert (=> bm!142001 d!691963))

(declare-fun bm!142090 () Bool)

(declare-fun call!142096 () Bool)

(declare-fun c!373454 () Bool)

(assert (=> bm!142090 (= call!142096 (nullable!1962 (ite c!373454 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))))

(declare-fun b!2345609 () Bool)

(declare-fun e!1500526 () Bool)

(declare-fun e!1500529 () Bool)

(assert (=> b!2345609 (= e!1500526 e!1500529)))

(declare-fun res!998738 () Bool)

(assert (=> b!2345609 (=> (not res!998738) (not e!1500529))))

(assert (=> b!2345609 (= res!998738 (and (not ((_ is EmptyLang!6883) (regTwo!14278 r!26197))) (not ((_ is ElementMatch!6883) (regTwo!14278 r!26197)))))))

(declare-fun b!2345610 () Bool)

(declare-fun e!1500528 () Bool)

(declare-fun e!1500527 () Bool)

(assert (=> b!2345610 (= e!1500528 e!1500527)))

(assert (=> b!2345610 (= c!373454 ((_ is Union!6883) (regTwo!14278 r!26197)))))

(declare-fun d!691965 () Bool)

(declare-fun res!998736 () Bool)

(assert (=> d!691965 (=> res!998736 e!1500526)))

(assert (=> d!691965 (= res!998736 ((_ is EmptyExpr!6883) (regTwo!14278 r!26197)))))

(assert (=> d!691965 (= (nullableFct!515 (regTwo!14278 r!26197)) e!1500526)))

(declare-fun b!2345611 () Bool)

(declare-fun e!1500524 () Bool)

(declare-fun call!142095 () Bool)

(assert (=> b!2345611 (= e!1500524 call!142095)))

(declare-fun bm!142091 () Bool)

(assert (=> bm!142091 (= call!142095 (nullable!1962 (ite c!373454 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(declare-fun b!2345612 () Bool)

(declare-fun e!1500525 () Bool)

(assert (=> b!2345612 (= e!1500525 call!142095)))

(declare-fun b!2345613 () Bool)

(assert (=> b!2345613 (= e!1500527 e!1500525)))

(declare-fun res!998739 () Bool)

(assert (=> b!2345613 (= res!998739 call!142096)))

(assert (=> b!2345613 (=> res!998739 e!1500525)))

(declare-fun b!2345614 () Bool)

(assert (=> b!2345614 (= e!1500527 e!1500524)))

(declare-fun res!998737 () Bool)

(assert (=> b!2345614 (= res!998737 call!142096)))

(assert (=> b!2345614 (=> (not res!998737) (not e!1500524))))

(declare-fun b!2345615 () Bool)

(assert (=> b!2345615 (= e!1500529 e!1500528)))

(declare-fun res!998740 () Bool)

(assert (=> b!2345615 (=> res!998740 e!1500528)))

(assert (=> b!2345615 (= res!998740 ((_ is Star!6883) (regTwo!14278 r!26197)))))

(assert (= (and d!691965 (not res!998736)) b!2345609))

(assert (= (and b!2345609 res!998738) b!2345615))

(assert (= (and b!2345615 (not res!998740)) b!2345610))

(assert (= (and b!2345610 c!373454) b!2345613))

(assert (= (and b!2345610 (not c!373454)) b!2345614))

(assert (= (and b!2345613 (not res!998739)) b!2345612))

(assert (= (and b!2345614 res!998737) b!2345611))

(assert (= (or b!2345613 b!2345614) bm!142090))

(assert (= (or b!2345612 b!2345611) bm!142091))

(declare-fun m!2767063 () Bool)

(assert (=> bm!142090 m!2767063))

(declare-fun m!2767065 () Bool)

(assert (=> bm!142091 m!2767065))

(assert (=> d!691893 d!691965))

(declare-fun b!2345626 () Bool)

(declare-fun e!1500539 () Regex!6883)

(assert (=> b!2345626 (= e!1500539 (ite (= c!13498 (c!373317 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))) EmptyExpr!6883 EmptyLang!6883))))

(declare-fun b!2345627 () Bool)

(declare-fun call!142101 () Regex!6883)

(declare-fun e!1500537 () Regex!6883)

(assert (=> b!2345627 (= e!1500537 (Union!6883 (Concat!11505 call!142101 (regTwo!14278 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))) EmptyLang!6883))))

(declare-fun b!2345628 () Bool)

(declare-fun e!1500538 () Regex!6883)

(assert (=> b!2345628 (= e!1500538 EmptyLang!6883)))

(declare-fun b!2345629 () Bool)

(declare-fun c!373463 () Bool)

(assert (=> b!2345629 (= c!373463 (nullable!1962 (regOne!14278 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))))))

(declare-fun e!1500535 () Regex!6883)

(assert (=> b!2345629 (= e!1500535 e!1500537)))

(declare-fun b!2345630 () Bool)

(declare-fun e!1500536 () Regex!6883)

(declare-fun call!142103 () Regex!6883)

(declare-fun call!142104 () Regex!6883)

(assert (=> b!2345630 (= e!1500536 (Union!6883 call!142103 call!142104))))

(declare-fun bm!142096 () Bool)

(declare-fun call!142102 () Regex!6883)

(assert (=> bm!142096 (= call!142102 call!142104)))

(declare-fun bm!142097 () Bool)

(assert (=> bm!142097 (= call!142101 call!142102)))

(declare-fun b!2345631 () Bool)

(assert (=> b!2345631 (= e!1500536 e!1500535)))

(declare-fun c!373462 () Bool)

(assert (=> b!2345631 (= c!373462 ((_ is Star!6883) (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(declare-fun b!2345632 () Bool)

(assert (=> b!2345632 (= e!1500537 (Union!6883 (Concat!11505 call!142101 (regTwo!14278 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))) call!142103))))

(declare-fun b!2345633 () Bool)

(assert (=> b!2345633 (= e!1500535 (Concat!11505 call!142102 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(declare-fun d!691971 () Bool)

(declare-fun lt!862919 () Regex!6883)

(assert (=> d!691971 (validRegex!2628 lt!862919)))

(assert (=> d!691971 (= lt!862919 e!1500538)))

(declare-fun c!373460 () Bool)

(assert (=> d!691971 (= c!373460 (or ((_ is EmptyExpr!6883) (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) ((_ is EmptyLang!6883) (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))))))

(assert (=> d!691971 (validRegex!2628 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))))

(assert (=> d!691971 (= (derivativeStep!1622 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))) c!13498) lt!862919)))

(declare-fun b!2345634 () Bool)

(assert (=> b!2345634 (= e!1500538 e!1500539)))

(declare-fun c!373464 () Bool)

(assert (=> b!2345634 (= c!373464 ((_ is ElementMatch!6883) (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(declare-fun bm!142098 () Bool)

(declare-fun c!373461 () Bool)

(assert (=> bm!142098 (= call!142104 (derivativeStep!1622 (ite c!373461 (regTwo!14279 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) (ite c!373462 (reg!7212 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) (regOne!14278 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))) c!13498))))

(declare-fun bm!142099 () Bool)

(assert (=> bm!142099 (= call!142103 (derivativeStep!1622 (ite c!373461 (regOne!14279 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) (regTwo!14278 (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))) c!13498))))

(declare-fun b!2345635 () Bool)

(assert (=> b!2345635 (= c!373461 ((_ is Union!6883) (ite c!373357 (regTwo!14279 (regTwo!14278 r!26197)) (ite c!373358 (reg!7212 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(assert (=> b!2345635 (= e!1500539 e!1500536)))

(assert (= (and d!691971 c!373460) b!2345628))

(assert (= (and d!691971 (not c!373460)) b!2345634))

(assert (= (and b!2345634 c!373464) b!2345626))

(assert (= (and b!2345634 (not c!373464)) b!2345635))

(assert (= (and b!2345635 c!373461) b!2345630))

(assert (= (and b!2345635 (not c!373461)) b!2345631))

(assert (= (and b!2345631 c!373462) b!2345633))

(assert (= (and b!2345631 (not c!373462)) b!2345629))

(assert (= (and b!2345629 c!373463) b!2345632))

(assert (= (and b!2345629 (not c!373463)) b!2345627))

(assert (= (or b!2345632 b!2345627) bm!142097))

(assert (= (or b!2345633 bm!142097) bm!142096))

(assert (= (or b!2345630 bm!142096) bm!142098))

(assert (= (or b!2345630 b!2345632) bm!142099))

(declare-fun m!2767077 () Bool)

(assert (=> b!2345629 m!2767077))

(declare-fun m!2767079 () Bool)

(assert (=> d!691971 m!2767079))

(declare-fun m!2767081 () Bool)

(assert (=> d!691971 m!2767081))

(declare-fun m!2767083 () Bool)

(assert (=> bm!142098 m!2767083))

(declare-fun m!2767085 () Bool)

(assert (=> bm!142099 m!2767085))

(assert (=> bm!142000 d!691971))

(declare-fun bm!142100 () Bool)

(declare-fun call!142106 () Bool)

(declare-fun c!373465 () Bool)

(assert (=> bm!142100 (= call!142106 (nullable!1962 (ite c!373465 (regOne!14279 r!26197) (regOne!14278 r!26197))))))

(declare-fun b!2345636 () Bool)

(declare-fun e!1500542 () Bool)

(declare-fun e!1500545 () Bool)

(assert (=> b!2345636 (= e!1500542 e!1500545)))

(declare-fun res!998743 () Bool)

(assert (=> b!2345636 (=> (not res!998743) (not e!1500545))))

(assert (=> b!2345636 (= res!998743 (and (not ((_ is EmptyLang!6883) r!26197)) (not ((_ is ElementMatch!6883) r!26197))))))

(declare-fun b!2345637 () Bool)

(declare-fun e!1500544 () Bool)

(declare-fun e!1500543 () Bool)

(assert (=> b!2345637 (= e!1500544 e!1500543)))

(assert (=> b!2345637 (= c!373465 ((_ is Union!6883) r!26197))))

(declare-fun d!691975 () Bool)

(declare-fun res!998741 () Bool)

(assert (=> d!691975 (=> res!998741 e!1500542)))

(assert (=> d!691975 (= res!998741 ((_ is EmptyExpr!6883) r!26197))))

(assert (=> d!691975 (= (nullableFct!515 r!26197) e!1500542)))

(declare-fun b!2345638 () Bool)

(declare-fun e!1500540 () Bool)

(declare-fun call!142105 () Bool)

(assert (=> b!2345638 (= e!1500540 call!142105)))

(declare-fun bm!142101 () Bool)

(assert (=> bm!142101 (= call!142105 (nullable!1962 (ite c!373465 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))

(declare-fun b!2345639 () Bool)

(declare-fun e!1500541 () Bool)

(assert (=> b!2345639 (= e!1500541 call!142105)))

(declare-fun b!2345640 () Bool)

(assert (=> b!2345640 (= e!1500543 e!1500541)))

(declare-fun res!998744 () Bool)

(assert (=> b!2345640 (= res!998744 call!142106)))

(assert (=> b!2345640 (=> res!998744 e!1500541)))

(declare-fun b!2345641 () Bool)

(assert (=> b!2345641 (= e!1500543 e!1500540)))

(declare-fun res!998742 () Bool)

(assert (=> b!2345641 (= res!998742 call!142106)))

(assert (=> b!2345641 (=> (not res!998742) (not e!1500540))))

(declare-fun b!2345642 () Bool)

(assert (=> b!2345642 (= e!1500545 e!1500544)))

(declare-fun res!998745 () Bool)

(assert (=> b!2345642 (=> res!998745 e!1500544)))

(assert (=> b!2345642 (= res!998745 ((_ is Star!6883) r!26197))))

(assert (= (and d!691975 (not res!998741)) b!2345636))

(assert (= (and b!2345636 res!998743) b!2345642))

(assert (= (and b!2345642 (not res!998745)) b!2345637))

(assert (= (and b!2345637 c!373465) b!2345640))

(assert (= (and b!2345637 (not c!373465)) b!2345641))

(assert (= (and b!2345640 (not res!998744)) b!2345639))

(assert (= (and b!2345641 res!998742) b!2345638))

(assert (= (or b!2345640 b!2345641) bm!142100))

(assert (= (or b!2345639 b!2345638) bm!142101))

(declare-fun m!2767087 () Bool)

(assert (=> bm!142100 m!2767087))

(declare-fun m!2767089 () Bool)

(assert (=> bm!142101 m!2767089))

(assert (=> d!691909 d!691975))

(declare-fun b!2345671 () Bool)

(declare-fun e!1500560 () List!27942)

(assert (=> b!2345671 (= e!1500560 call!142050)))

(declare-fun d!691977 () Bool)

(declare-fun e!1500561 () Bool)

(assert (=> d!691977 e!1500561))

(declare-fun res!998756 () Bool)

(assert (=> d!691977 (=> (not res!998756) (not e!1500561))))

(declare-fun lt!862925 () List!27942)

(assert (=> d!691977 (= res!998756 (= (content!3777 lt!862925) ((_ map or) (content!3777 call!142049) (content!3777 call!142050))))))

(assert (=> d!691977 (= lt!862925 e!1500560)))

(declare-fun c!373475 () Bool)

(assert (=> d!691977 (= c!373475 ((_ is Nil!27844) call!142049))))

(assert (=> d!691977 (= (++!6868 call!142049 call!142050) lt!862925)))

(declare-fun b!2345672 () Bool)

(assert (=> b!2345672 (= e!1500560 (Cons!27844 (h!33245 call!142049) (++!6868 (t!207801 call!142049) call!142050)))))

(declare-fun b!2345673 () Bool)

(declare-fun res!998757 () Bool)

(assert (=> b!2345673 (=> (not res!998757) (not e!1500561))))

(declare-fun size!22029 (List!27942) Int)

(assert (=> b!2345673 (= res!998757 (= (size!22029 lt!862925) (+ (size!22029 call!142049) (size!22029 call!142050))))))

(declare-fun b!2345674 () Bool)

(assert (=> b!2345674 (= e!1500561 (or (not (= call!142050 Nil!27844)) (= lt!862925 call!142049)))))

(assert (= (and d!691977 c!373475) b!2345671))

(assert (= (and d!691977 (not c!373475)) b!2345672))

(assert (= (and d!691977 res!998756) b!2345673))

(assert (= (and b!2345673 res!998757) b!2345674))

(declare-fun m!2767111 () Bool)

(assert (=> d!691977 m!2767111))

(declare-fun m!2767113 () Bool)

(assert (=> d!691977 m!2767113))

(declare-fun m!2767115 () Bool)

(assert (=> d!691977 m!2767115))

(declare-fun m!2767117 () Bool)

(assert (=> b!2345672 m!2767117))

(declare-fun m!2767119 () Bool)

(assert (=> b!2345673 m!2767119))

(declare-fun m!2767121 () Bool)

(assert (=> b!2345673 m!2767121))

(declare-fun m!2767123 () Bool)

(assert (=> b!2345673 m!2767123))

(assert (=> bm!142044 d!691977))

(declare-fun b!2345684 () Bool)

(declare-fun e!1500575 () Bool)

(declare-fun call!142114 () Bool)

(assert (=> b!2345684 (= e!1500575 call!142114)))

(declare-fun c!373478 () Bool)

(declare-fun bm!142109 () Bool)

(assert (=> bm!142109 (= call!142114 (validRegex!2628 (ite c!373478 (regTwo!14279 (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197))) (regTwo!14278 (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))))

(declare-fun b!2345685 () Bool)

(declare-fun e!1500569 () Bool)

(assert (=> b!2345685 (= e!1500569 e!1500575)))

(declare-fun res!998765 () Bool)

(assert (=> b!2345685 (=> (not res!998765) (not e!1500575))))

(declare-fun call!142116 () Bool)

(assert (=> b!2345685 (= res!998765 call!142116)))

(declare-fun d!691983 () Bool)

(declare-fun res!998767 () Bool)

(declare-fun e!1500570 () Bool)

(assert (=> d!691983 (=> res!998767 e!1500570)))

(assert (=> d!691983 (= res!998767 ((_ is ElementMatch!6883) (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))

(assert (=> d!691983 (= (validRegex!2628 (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197))) e!1500570)))

(declare-fun c!373479 () Bool)

(declare-fun bm!142110 () Bool)

(declare-fun call!142115 () Bool)

(assert (=> bm!142110 (= call!142115 (validRegex!2628 (ite c!373479 (reg!7212 (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197))) (ite c!373478 (regOne!14279 (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197))) (regOne!14278 (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197)))))))))

(declare-fun bm!142111 () Bool)

(assert (=> bm!142111 (= call!142116 call!142115)))

(declare-fun b!2345686 () Bool)

(declare-fun res!998763 () Bool)

(declare-fun e!1500571 () Bool)

(assert (=> b!2345686 (=> (not res!998763) (not e!1500571))))

(assert (=> b!2345686 (= res!998763 call!142116)))

(declare-fun e!1500574 () Bool)

(assert (=> b!2345686 (= e!1500574 e!1500571)))

(declare-fun b!2345687 () Bool)

(declare-fun e!1500572 () Bool)

(assert (=> b!2345687 (= e!1500572 call!142115)))

(declare-fun b!2345688 () Bool)

(assert (=> b!2345688 (= e!1500571 call!142114)))

(declare-fun b!2345689 () Bool)

(declare-fun e!1500573 () Bool)

(assert (=> b!2345689 (= e!1500573 e!1500572)))

(declare-fun res!998764 () Bool)

(assert (=> b!2345689 (= res!998764 (not (nullable!1962 (reg!7212 (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))))

(assert (=> b!2345689 (=> (not res!998764) (not e!1500572))))

(declare-fun b!2345690 () Bool)

(assert (=> b!2345690 (= e!1500573 e!1500574)))

(assert (=> b!2345690 (= c!373478 ((_ is Union!6883) (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))

(declare-fun b!2345691 () Bool)

(declare-fun res!998766 () Bool)

(assert (=> b!2345691 (=> res!998766 e!1500569)))

(assert (=> b!2345691 (= res!998766 (not ((_ is Concat!11505) (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197)))))))

(assert (=> b!2345691 (= e!1500574 e!1500569)))

(declare-fun b!2345692 () Bool)

(assert (=> b!2345692 (= e!1500570 e!1500573)))

(assert (=> b!2345692 (= c!373479 ((_ is Star!6883) (ite c!373324 (regTwo!14279 r!26197) (regTwo!14278 r!26197))))))

(assert (= (and d!691983 (not res!998767)) b!2345692))

(assert (= (and b!2345692 c!373479) b!2345689))

(assert (= (and b!2345692 (not c!373479)) b!2345690))

(assert (= (and b!2345689 res!998764) b!2345687))

(assert (= (and b!2345690 c!373478) b!2345686))

(assert (= (and b!2345690 (not c!373478)) b!2345691))

(assert (= (and b!2345686 res!998763) b!2345688))

(assert (= (and b!2345691 (not res!998766)) b!2345685))

(assert (= (and b!2345685 res!998765) b!2345684))

(assert (= (or b!2345688 b!2345684) bm!142109))

(assert (= (or b!2345686 b!2345685) bm!142111))

(assert (= (or b!2345687 bm!142111) bm!142110))

(declare-fun m!2767129 () Bool)

(assert (=> bm!142109 m!2767129))

(declare-fun m!2767133 () Bool)

(assert (=> bm!142110 m!2767133))

(declare-fun m!2767135 () Bool)

(assert (=> b!2345689 m!2767135))

(assert (=> bm!141971 d!691983))

(declare-fun d!691987 () Bool)

(declare-fun c!373484 () Bool)

(assert (=> d!691987 (= c!373484 ((_ is Nil!27844) (usedCharacters!442 r!26197)))))

(declare-fun e!1500580 () (InoxSet C!13924))

(assert (=> d!691987 (= (content!3777 (usedCharacters!442 r!26197)) e!1500580)))

(declare-fun b!2345701 () Bool)

(assert (=> b!2345701 (= e!1500580 ((as const (Array C!13924 Bool)) false))))

(declare-fun b!2345702 () Bool)

(assert (=> b!2345702 (= e!1500580 ((_ map or) (store ((as const (Array C!13924 Bool)) false) (h!33245 (usedCharacters!442 r!26197)) true) (content!3777 (t!207801 (usedCharacters!442 r!26197)))))))

(assert (= (and d!691987 c!373484) b!2345701))

(assert (= (and d!691987 (not c!373484)) b!2345702))

(declare-fun m!2767137 () Bool)

(assert (=> b!2345702 m!2767137))

(assert (=> b!2345702 m!2767017))

(assert (=> d!691917 d!691987))

(declare-fun bm!142112 () Bool)

(declare-fun call!142118 () Bool)

(declare-fun c!373485 () Bool)

(assert (=> bm!142112 (= call!142118 (nullable!1962 (ite c!373485 (regOne!14279 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197)))))))

(declare-fun b!2345703 () Bool)

(declare-fun e!1500583 () Bool)

(declare-fun e!1500586 () Bool)

(assert (=> b!2345703 (= e!1500583 e!1500586)))

(declare-fun res!998770 () Bool)

(assert (=> b!2345703 (=> (not res!998770) (not e!1500586))))

(assert (=> b!2345703 (= res!998770 (and (not ((_ is EmptyLang!6883) (regOne!14278 r!26197))) (not ((_ is ElementMatch!6883) (regOne!14278 r!26197)))))))

(declare-fun b!2345704 () Bool)

(declare-fun e!1500585 () Bool)

(declare-fun e!1500584 () Bool)

(assert (=> b!2345704 (= e!1500585 e!1500584)))

(assert (=> b!2345704 (= c!373485 ((_ is Union!6883) (regOne!14278 r!26197)))))

(declare-fun d!691989 () Bool)

(declare-fun res!998768 () Bool)

(assert (=> d!691989 (=> res!998768 e!1500583)))

(assert (=> d!691989 (= res!998768 ((_ is EmptyExpr!6883) (regOne!14278 r!26197)))))

(assert (=> d!691989 (= (nullableFct!515 (regOne!14278 r!26197)) e!1500583)))

(declare-fun b!2345705 () Bool)

(declare-fun e!1500581 () Bool)

(declare-fun call!142117 () Bool)

(assert (=> b!2345705 (= e!1500581 call!142117)))

(declare-fun bm!142113 () Bool)

(assert (=> bm!142113 (= call!142117 (nullable!1962 (ite c!373485 (regTwo!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))))))

(declare-fun b!2345706 () Bool)

(declare-fun e!1500582 () Bool)

(assert (=> b!2345706 (= e!1500582 call!142117)))

(declare-fun b!2345707 () Bool)

(assert (=> b!2345707 (= e!1500584 e!1500582)))

(declare-fun res!998771 () Bool)

(assert (=> b!2345707 (= res!998771 call!142118)))

(assert (=> b!2345707 (=> res!998771 e!1500582)))

(declare-fun b!2345708 () Bool)

(assert (=> b!2345708 (= e!1500584 e!1500581)))

(declare-fun res!998769 () Bool)

(assert (=> b!2345708 (= res!998769 call!142118)))

(assert (=> b!2345708 (=> (not res!998769) (not e!1500581))))

(declare-fun b!2345709 () Bool)

(assert (=> b!2345709 (= e!1500586 e!1500585)))

(declare-fun res!998772 () Bool)

(assert (=> b!2345709 (=> res!998772 e!1500585)))

(assert (=> b!2345709 (= res!998772 ((_ is Star!6883) (regOne!14278 r!26197)))))

(assert (= (and d!691989 (not res!998768)) b!2345703))

(assert (= (and b!2345703 res!998770) b!2345709))

(assert (= (and b!2345709 (not res!998772)) b!2345704))

(assert (= (and b!2345704 c!373485) b!2345707))

(assert (= (and b!2345704 (not c!373485)) b!2345708))

(assert (= (and b!2345707 (not res!998771)) b!2345706))

(assert (= (and b!2345708 res!998769) b!2345705))

(assert (= (or b!2345707 b!2345708) bm!142112))

(assert (= (or b!2345706 b!2345705) bm!142113))

(declare-fun m!2767143 () Bool)

(assert (=> bm!142112 m!2767143))

(declare-fun m!2767145 () Bool)

(assert (=> bm!142113 m!2767145))

(assert (=> d!691937 d!691989))

(declare-fun b!2345720 () Bool)

(declare-fun e!1500598 () Bool)

(declare-fun call!142123 () Bool)

(assert (=> b!2345720 (= e!1500598 call!142123)))

(declare-fun bm!142118 () Bool)

(declare-fun c!373491 () Bool)

(assert (=> bm!142118 (= call!142123 (validRegex!2628 (ite c!373491 (regTwo!14279 lt!862897) (regTwo!14278 lt!862897))))))

(declare-fun b!2345721 () Bool)

(declare-fun e!1500592 () Bool)

(assert (=> b!2345721 (= e!1500592 e!1500598)))

(declare-fun res!998775 () Bool)

(assert (=> b!2345721 (=> (not res!998775) (not e!1500598))))

(declare-fun call!142125 () Bool)

(assert (=> b!2345721 (= res!998775 call!142125)))

(declare-fun d!691993 () Bool)

(declare-fun res!998777 () Bool)

(declare-fun e!1500593 () Bool)

(assert (=> d!691993 (=> res!998777 e!1500593)))

(assert (=> d!691993 (= res!998777 ((_ is ElementMatch!6883) lt!862897))))

(assert (=> d!691993 (= (validRegex!2628 lt!862897) e!1500593)))

(declare-fun bm!142119 () Bool)

(declare-fun call!142124 () Bool)

(declare-fun c!373492 () Bool)

(assert (=> bm!142119 (= call!142124 (validRegex!2628 (ite c!373492 (reg!7212 lt!862897) (ite c!373491 (regOne!14279 lt!862897) (regOne!14278 lt!862897)))))))

(declare-fun bm!142120 () Bool)

(assert (=> bm!142120 (= call!142125 call!142124)))

(declare-fun b!2345722 () Bool)

(declare-fun res!998773 () Bool)

(declare-fun e!1500594 () Bool)

(assert (=> b!2345722 (=> (not res!998773) (not e!1500594))))

(assert (=> b!2345722 (= res!998773 call!142125)))

(declare-fun e!1500597 () Bool)

(assert (=> b!2345722 (= e!1500597 e!1500594)))

(declare-fun b!2345723 () Bool)

(declare-fun e!1500595 () Bool)

(assert (=> b!2345723 (= e!1500595 call!142124)))

(declare-fun b!2345724 () Bool)

(assert (=> b!2345724 (= e!1500594 call!142123)))

(declare-fun b!2345725 () Bool)

(declare-fun e!1500596 () Bool)

(assert (=> b!2345725 (= e!1500596 e!1500595)))

(declare-fun res!998774 () Bool)

(assert (=> b!2345725 (= res!998774 (not (nullable!1962 (reg!7212 lt!862897))))))

(assert (=> b!2345725 (=> (not res!998774) (not e!1500595))))

(declare-fun b!2345726 () Bool)

(assert (=> b!2345726 (= e!1500596 e!1500597)))

(assert (=> b!2345726 (= c!373491 ((_ is Union!6883) lt!862897))))

(declare-fun b!2345727 () Bool)

(declare-fun res!998776 () Bool)

(assert (=> b!2345727 (=> res!998776 e!1500592)))

(assert (=> b!2345727 (= res!998776 (not ((_ is Concat!11505) lt!862897)))))

(assert (=> b!2345727 (= e!1500597 e!1500592)))

(declare-fun b!2345728 () Bool)

(assert (=> b!2345728 (= e!1500593 e!1500596)))

(assert (=> b!2345728 (= c!373492 ((_ is Star!6883) lt!862897))))

(assert (= (and d!691993 (not res!998777)) b!2345728))

(assert (= (and b!2345728 c!373492) b!2345725))

(assert (= (and b!2345728 (not c!373492)) b!2345726))

(assert (= (and b!2345725 res!998774) b!2345723))

(assert (= (and b!2345726 c!373491) b!2345722))

(assert (= (and b!2345726 (not c!373491)) b!2345727))

(assert (= (and b!2345722 res!998773) b!2345724))

(assert (= (and b!2345727 (not res!998776)) b!2345721))

(assert (= (and b!2345721 res!998775) b!2345720))

(assert (= (or b!2345724 b!2345720) bm!142118))

(assert (= (or b!2345722 b!2345721) bm!142120))

(assert (= (or b!2345723 bm!142120) bm!142119))

(declare-fun m!2767147 () Bool)

(assert (=> bm!142118 m!2767147))

(declare-fun m!2767149 () Bool)

(assert (=> bm!142119 m!2767149))

(declare-fun m!2767151 () Bool)

(assert (=> b!2345725 m!2767151))

(assert (=> d!691897 d!691993))

(declare-fun b!2345729 () Bool)

(declare-fun e!1500605 () Bool)

(declare-fun call!142126 () Bool)

(assert (=> b!2345729 (= e!1500605 call!142126)))

(declare-fun bm!142121 () Bool)

(declare-fun c!373493 () Bool)

(assert (=> bm!142121 (= call!142126 (validRegex!2628 (ite c!373493 (regTwo!14279 (regOne!14278 r!26197)) (regTwo!14278 (regOne!14278 r!26197)))))))

(declare-fun b!2345730 () Bool)

(declare-fun e!1500599 () Bool)

(assert (=> b!2345730 (= e!1500599 e!1500605)))

(declare-fun res!998780 () Bool)

(assert (=> b!2345730 (=> (not res!998780) (not e!1500605))))

(declare-fun call!142128 () Bool)

(assert (=> b!2345730 (= res!998780 call!142128)))

(declare-fun d!691995 () Bool)

(declare-fun res!998782 () Bool)

(declare-fun e!1500600 () Bool)

(assert (=> d!691995 (=> res!998782 e!1500600)))

(assert (=> d!691995 (= res!998782 ((_ is ElementMatch!6883) (regOne!14278 r!26197)))))

(assert (=> d!691995 (= (validRegex!2628 (regOne!14278 r!26197)) e!1500600)))

(declare-fun c!373494 () Bool)

(declare-fun call!142127 () Bool)

(declare-fun bm!142122 () Bool)

(assert (=> bm!142122 (= call!142127 (validRegex!2628 (ite c!373494 (reg!7212 (regOne!14278 r!26197)) (ite c!373493 (regOne!14279 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197))))))))

(declare-fun bm!142123 () Bool)

(assert (=> bm!142123 (= call!142128 call!142127)))

(declare-fun b!2345731 () Bool)

(declare-fun res!998778 () Bool)

(declare-fun e!1500601 () Bool)

(assert (=> b!2345731 (=> (not res!998778) (not e!1500601))))

(assert (=> b!2345731 (= res!998778 call!142128)))

(declare-fun e!1500604 () Bool)

(assert (=> b!2345731 (= e!1500604 e!1500601)))

(declare-fun b!2345732 () Bool)

(declare-fun e!1500602 () Bool)

(assert (=> b!2345732 (= e!1500602 call!142127)))

(declare-fun b!2345733 () Bool)

(assert (=> b!2345733 (= e!1500601 call!142126)))

(declare-fun b!2345734 () Bool)

(declare-fun e!1500603 () Bool)

(assert (=> b!2345734 (= e!1500603 e!1500602)))

(declare-fun res!998779 () Bool)

(assert (=> b!2345734 (= res!998779 (not (nullable!1962 (reg!7212 (regOne!14278 r!26197)))))))

(assert (=> b!2345734 (=> (not res!998779) (not e!1500602))))

(declare-fun b!2345735 () Bool)

(assert (=> b!2345735 (= e!1500603 e!1500604)))

(assert (=> b!2345735 (= c!373493 ((_ is Union!6883) (regOne!14278 r!26197)))))

(declare-fun b!2345736 () Bool)

(declare-fun res!998781 () Bool)

(assert (=> b!2345736 (=> res!998781 e!1500599)))

(assert (=> b!2345736 (= res!998781 (not ((_ is Concat!11505) (regOne!14278 r!26197))))))

(assert (=> b!2345736 (= e!1500604 e!1500599)))

(declare-fun b!2345737 () Bool)

(assert (=> b!2345737 (= e!1500600 e!1500603)))

(assert (=> b!2345737 (= c!373494 ((_ is Star!6883) (regOne!14278 r!26197)))))

(assert (= (and d!691995 (not res!998782)) b!2345737))

(assert (= (and b!2345737 c!373494) b!2345734))

(assert (= (and b!2345737 (not c!373494)) b!2345735))

(assert (= (and b!2345734 res!998779) b!2345732))

(assert (= (and b!2345735 c!373493) b!2345731))

(assert (= (and b!2345735 (not c!373493)) b!2345736))

(assert (= (and b!2345731 res!998778) b!2345733))

(assert (= (and b!2345736 (not res!998781)) b!2345730))

(assert (= (and b!2345730 res!998780) b!2345729))

(assert (= (or b!2345733 b!2345729) bm!142121))

(assert (= (or b!2345731 b!2345730) bm!142123))

(assert (= (or b!2345732 bm!142123) bm!142122))

(declare-fun m!2767161 () Bool)

(assert (=> bm!142121 m!2767161))

(declare-fun m!2767163 () Bool)

(assert (=> bm!142122 m!2767163))

(declare-fun m!2767165 () Bool)

(assert (=> b!2345734 m!2767165))

(assert (=> d!691897 d!691995))

(declare-fun b!2345738 () Bool)

(declare-fun e!1500612 () Bool)

(declare-fun call!142129 () Bool)

(assert (=> b!2345738 (= e!1500612 call!142129)))

(declare-fun bm!142124 () Bool)

(declare-fun c!373495 () Bool)

(assert (=> bm!142124 (= call!142129 (validRegex!2628 (ite c!373495 (regTwo!14279 (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197)))) (regTwo!14278 (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))))

(declare-fun b!2345739 () Bool)

(declare-fun e!1500606 () Bool)

(assert (=> b!2345739 (= e!1500606 e!1500612)))

(declare-fun res!998785 () Bool)

(assert (=> b!2345739 (=> (not res!998785) (not e!1500612))))

(declare-fun call!142131 () Bool)

(assert (=> b!2345739 (= res!998785 call!142131)))

(declare-fun d!692001 () Bool)

(declare-fun res!998787 () Bool)

(declare-fun e!1500607 () Bool)

(assert (=> d!692001 (=> res!998787 e!1500607)))

(assert (=> d!692001 (= res!998787 ((_ is ElementMatch!6883) (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))

(assert (=> d!692001 (= (validRegex!2628 (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197)))) e!1500607)))

(declare-fun call!142130 () Bool)

(declare-fun c!373496 () Bool)

(declare-fun bm!142125 () Bool)

(assert (=> bm!142125 (= call!142130 (validRegex!2628 (ite c!373496 (reg!7212 (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197)))) (ite c!373495 (regOne!14279 (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197)))) (regOne!14278 (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197))))))))))

(declare-fun bm!142126 () Bool)

(assert (=> bm!142126 (= call!142131 call!142130)))

(declare-fun b!2345740 () Bool)

(declare-fun res!998783 () Bool)

(declare-fun e!1500608 () Bool)

(assert (=> b!2345740 (=> (not res!998783) (not e!1500608))))

(assert (=> b!2345740 (= res!998783 call!142131)))

(declare-fun e!1500611 () Bool)

(assert (=> b!2345740 (= e!1500611 e!1500608)))

(declare-fun b!2345741 () Bool)

(declare-fun e!1500609 () Bool)

(assert (=> b!2345741 (= e!1500609 call!142130)))

(declare-fun b!2345742 () Bool)

(assert (=> b!2345742 (= e!1500608 call!142129)))

(declare-fun b!2345743 () Bool)

(declare-fun e!1500610 () Bool)

(assert (=> b!2345743 (= e!1500610 e!1500609)))

(declare-fun res!998784 () Bool)

(assert (=> b!2345743 (= res!998784 (not (nullable!1962 (reg!7212 (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))))

(assert (=> b!2345743 (=> (not res!998784) (not e!1500609))))

(declare-fun b!2345744 () Bool)

(assert (=> b!2345744 (= e!1500610 e!1500611)))

(assert (=> b!2345744 (= c!373495 ((_ is Union!6883) (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))

(declare-fun b!2345745 () Bool)

(declare-fun res!998786 () Bool)

(assert (=> b!2345745 (=> res!998786 e!1500606)))

(assert (=> b!2345745 (= res!998786 (not ((_ is Concat!11505) (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197))))))))

(assert (=> b!2345745 (= e!1500611 e!1500606)))

(declare-fun b!2345746 () Bool)

(assert (=> b!2345746 (= e!1500607 e!1500610)))

(assert (=> b!2345746 (= c!373496 ((_ is Star!6883) (ite c!373325 (reg!7212 r!26197) (ite c!373324 (regOne!14279 r!26197) (regOne!14278 r!26197)))))))

(assert (= (and d!692001 (not res!998787)) b!2345746))

(assert (= (and b!2345746 c!373496) b!2345743))

(assert (= (and b!2345746 (not c!373496)) b!2345744))

(assert (= (and b!2345743 res!998784) b!2345741))

(assert (= (and b!2345744 c!373495) b!2345740))

(assert (= (and b!2345744 (not c!373495)) b!2345745))

(assert (= (and b!2345740 res!998783) b!2345742))

(assert (= (and b!2345745 (not res!998786)) b!2345739))

(assert (= (and b!2345739 res!998785) b!2345738))

(assert (= (or b!2345742 b!2345738) bm!142124))

(assert (= (or b!2345740 b!2345739) bm!142126))

(assert (= (or b!2345741 bm!142126) bm!142125))

(declare-fun m!2767167 () Bool)

(assert (=> bm!142124 m!2767167))

(declare-fun m!2767169 () Bool)

(assert (=> bm!142125 m!2767169))

(declare-fun m!2767171 () Bool)

(assert (=> b!2345743 m!2767171))

(assert (=> bm!141972 d!692001))

(declare-fun d!692003 () Bool)

(declare-fun c!373497 () Bool)

(assert (=> d!692003 (= c!373497 ((_ is Nil!27844) (usedCharacters!442 (regTwo!14278 r!26197))))))

(declare-fun e!1500613 () (InoxSet C!13924))

(assert (=> d!692003 (= (content!3777 (usedCharacters!442 (regTwo!14278 r!26197))) e!1500613)))

(declare-fun b!2345747 () Bool)

(assert (=> b!2345747 (= e!1500613 ((as const (Array C!13924 Bool)) false))))

(declare-fun b!2345748 () Bool)

(assert (=> b!2345748 (= e!1500613 ((_ map or) (store ((as const (Array C!13924 Bool)) false) (h!33245 (usedCharacters!442 (regTwo!14278 r!26197))) true) (content!3777 (t!207801 (usedCharacters!442 (regTwo!14278 r!26197))))))))

(assert (= (and d!692003 c!373497) b!2345747))

(assert (= (and d!692003 (not c!373497)) b!2345748))

(declare-fun m!2767173 () Bool)

(assert (=> b!2345748 m!2767173))

(declare-fun m!2767175 () Bool)

(assert (=> b!2345748 m!2767175))

(assert (=> d!691919 d!692003))

(declare-fun b!2345749 () Bool)

(declare-fun e!1500614 () List!27942)

(declare-fun call!142134 () List!27942)

(assert (=> b!2345749 (= e!1500614 call!142134)))

(declare-fun b!2345750 () Bool)

(declare-fun e!1500617 () List!27942)

(declare-fun call!142135 () List!27942)

(assert (=> b!2345750 (= e!1500617 call!142135)))

(declare-fun bm!142127 () Bool)

(declare-fun call!142132 () List!27942)

(declare-fun call!142133 () List!27942)

(assert (=> bm!142127 (= call!142135 (++!6868 call!142132 call!142133))))

(declare-fun b!2345751 () Bool)

(declare-fun c!373500 () Bool)

(assert (=> b!2345751 (= c!373500 ((_ is Star!6883) (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(declare-fun e!1500615 () List!27942)

(assert (=> b!2345751 (= e!1500615 e!1500614)))

(declare-fun bm!142128 () Bool)

(assert (=> bm!142128 (= call!142132 call!142134)))

(declare-fun d!692005 () Bool)

(declare-fun c!373498 () Bool)

(assert (=> d!692005 (= c!373498 (or ((_ is EmptyExpr!6883) (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) ((_ is EmptyLang!6883) (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))))))

(declare-fun e!1500616 () List!27942)

(assert (=> d!692005 (= (usedCharacters!442 (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) e!1500616)))

(declare-fun b!2345752 () Bool)

(assert (=> b!2345752 (= e!1500616 e!1500615)))

(declare-fun c!373501 () Bool)

(assert (=> b!2345752 (= c!373501 ((_ is ElementMatch!6883) (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(declare-fun bm!142129 () Bool)

(declare-fun c!373499 () Bool)

(assert (=> bm!142129 (= call!142134 (usedCharacters!442 (ite c!373500 (reg!7212 (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) (ite c!373499 (regOne!14279 (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) (regOne!14278 (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))))))))

(declare-fun bm!142130 () Bool)

(assert (=> bm!142130 (= call!142133 (usedCharacters!442 (ite c!373499 (regTwo!14279 (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) (regTwo!14278 (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))))

(declare-fun b!2345753 () Bool)

(assert (=> b!2345753 (= e!1500617 call!142135)))

(declare-fun b!2345754 () Bool)

(assert (=> b!2345754 (= e!1500614 e!1500617)))

(assert (=> b!2345754 (= c!373499 ((_ is Union!6883) (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(declare-fun b!2345755 () Bool)

(assert (=> b!2345755 (= e!1500616 Nil!27844)))

(declare-fun b!2345756 () Bool)

(assert (=> b!2345756 (= e!1500615 (Cons!27844 (c!373317 (ite c!373406 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) Nil!27844))))

(assert (= (and d!692005 c!373498) b!2345755))

(assert (= (and d!692005 (not c!373498)) b!2345752))

(assert (= (and b!2345752 c!373501) b!2345756))

(assert (= (and b!2345752 (not c!373501)) b!2345751))

(assert (= (and b!2345751 c!373500) b!2345749))

(assert (= (and b!2345751 (not c!373500)) b!2345754))

(assert (= (and b!2345754 c!373499) b!2345753))

(assert (= (and b!2345754 (not c!373499)) b!2345750))

(assert (= (or b!2345753 b!2345750) bm!142130))

(assert (= (or b!2345753 b!2345750) bm!142128))

(assert (= (or b!2345753 b!2345750) bm!142127))

(assert (= (or b!2345749 bm!142128) bm!142129))

(declare-fun m!2767177 () Bool)

(assert (=> bm!142127 m!2767177))

(declare-fun m!2767179 () Bool)

(assert (=> bm!142129 m!2767179))

(declare-fun m!2767181 () Bool)

(assert (=> bm!142130 m!2767181))

(assert (=> bm!142047 d!692005))

(declare-fun d!692007 () Bool)

(assert (=> d!692007 (= (nullable!1962 (reg!7212 r!26197)) (nullableFct!515 (reg!7212 r!26197)))))

(declare-fun bs!460161 () Bool)

(assert (= bs!460161 d!692007))

(declare-fun m!2767183 () Bool)

(assert (=> bs!460161 m!2767183))

(assert (=> b!2345247 d!692007))

(declare-fun d!692009 () Bool)

(assert (=> d!692009 (= (nullable!1962 (regOne!14278 (regOne!14278 r!26197))) (nullableFct!515 (regOne!14278 (regOne!14278 r!26197))))))

(declare-fun bs!460162 () Bool)

(assert (= bs!460162 d!692009))

(declare-fun m!2767185 () Bool)

(assert (=> bs!460162 m!2767185))

(assert (=> b!2345312 d!692009))

(declare-fun c!373504 () Bool)

(declare-fun bm!142131 () Bool)

(declare-fun call!142137 () Bool)

(assert (=> bm!142131 (= call!142137 (nullable!1962 (ite c!373504 (regOne!14279 (derivativeStep!1622 r!26197 c!13498)) (regOne!14278 (derivativeStep!1622 r!26197 c!13498)))))))

(declare-fun b!2345767 () Bool)

(declare-fun e!1500627 () Bool)

(declare-fun e!1500631 () Bool)

(assert (=> b!2345767 (= e!1500627 e!1500631)))

(declare-fun res!998796 () Bool)

(assert (=> b!2345767 (=> (not res!998796) (not e!1500631))))

(assert (=> b!2345767 (= res!998796 (and (not ((_ is EmptyLang!6883) (derivativeStep!1622 r!26197 c!13498))) (not ((_ is ElementMatch!6883) (derivativeStep!1622 r!26197 c!13498)))))))

(declare-fun b!2345768 () Bool)

(declare-fun e!1500630 () Bool)

(declare-fun e!1500629 () Bool)

(assert (=> b!2345768 (= e!1500630 e!1500629)))

(assert (=> b!2345768 (= c!373504 ((_ is Union!6883) (derivativeStep!1622 r!26197 c!13498)))))

(declare-fun d!692011 () Bool)

(declare-fun res!998794 () Bool)

(assert (=> d!692011 (=> res!998794 e!1500627)))

(assert (=> d!692011 (= res!998794 ((_ is EmptyExpr!6883) (derivativeStep!1622 r!26197 c!13498)))))

(assert (=> d!692011 (= (nullableFct!515 (derivativeStep!1622 r!26197 c!13498)) e!1500627)))

(declare-fun b!2345769 () Bool)

(declare-fun e!1500624 () Bool)

(declare-fun call!142136 () Bool)

(assert (=> b!2345769 (= e!1500624 call!142136)))

(declare-fun bm!142132 () Bool)

(assert (=> bm!142132 (= call!142136 (nullable!1962 (ite c!373504 (regTwo!14279 (derivativeStep!1622 r!26197 c!13498)) (regTwo!14278 (derivativeStep!1622 r!26197 c!13498)))))))

(declare-fun b!2345770 () Bool)

(declare-fun e!1500626 () Bool)

(assert (=> b!2345770 (= e!1500626 call!142136)))

(declare-fun b!2345771 () Bool)

(assert (=> b!2345771 (= e!1500629 e!1500626)))

(declare-fun res!998797 () Bool)

(assert (=> b!2345771 (= res!998797 call!142137)))

(assert (=> b!2345771 (=> res!998797 e!1500626)))

(declare-fun b!2345772 () Bool)

(assert (=> b!2345772 (= e!1500629 e!1500624)))

(declare-fun res!998795 () Bool)

(assert (=> b!2345772 (= res!998795 call!142137)))

(assert (=> b!2345772 (=> (not res!998795) (not e!1500624))))

(declare-fun b!2345773 () Bool)

(assert (=> b!2345773 (= e!1500631 e!1500630)))

(declare-fun res!998798 () Bool)

(assert (=> b!2345773 (=> res!998798 e!1500630)))

(assert (=> b!2345773 (= res!998798 ((_ is Star!6883) (derivativeStep!1622 r!26197 c!13498)))))

(assert (= (and d!692011 (not res!998794)) b!2345767))

(assert (= (and b!2345767 res!998796) b!2345773))

(assert (= (and b!2345773 (not res!998798)) b!2345768))

(assert (= (and b!2345768 c!373504) b!2345771))

(assert (= (and b!2345768 (not c!373504)) b!2345772))

(assert (= (and b!2345771 (not res!998797)) b!2345770))

(assert (= (and b!2345772 res!998795) b!2345769))

(assert (= (or b!2345771 b!2345772) bm!142131))

(assert (= (or b!2345770 b!2345769) bm!142132))

(declare-fun m!2767187 () Bool)

(assert (=> bm!142131 m!2767187))

(declare-fun m!2767189 () Bool)

(assert (=> bm!142132 m!2767189))

(assert (=> d!691913 d!692011))

(declare-fun b!2345778 () Bool)

(declare-fun e!1500636 () List!27942)

(declare-fun call!142142 () List!27942)

(assert (=> b!2345778 (= e!1500636 call!142142)))

(declare-fun b!2345779 () Bool)

(declare-fun e!1500639 () List!27942)

(declare-fun call!142143 () List!27942)

(assert (=> b!2345779 (= e!1500639 call!142143)))

(declare-fun bm!142135 () Bool)

(declare-fun call!142140 () List!27942)

(declare-fun call!142141 () List!27942)

(assert (=> bm!142135 (= call!142143 (++!6868 call!142140 call!142141))))

(declare-fun b!2345780 () Bool)

(declare-fun c!373507 () Bool)

(assert (=> b!2345780 (= c!373507 ((_ is Star!6883) (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(declare-fun e!1500637 () List!27942)

(assert (=> b!2345780 (= e!1500637 e!1500636)))

(declare-fun bm!142136 () Bool)

(assert (=> bm!142136 (= call!142140 call!142142)))

(declare-fun d!692013 () Bool)

(declare-fun c!373505 () Bool)

(assert (=> d!692013 (= c!373505 (or ((_ is EmptyExpr!6883) (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) ((_ is EmptyLang!6883) (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))))))

(declare-fun e!1500638 () List!27942)

(assert (=> d!692013 (= (usedCharacters!442 (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) e!1500638)))

(declare-fun b!2345781 () Bool)

(assert (=> b!2345781 (= e!1500638 e!1500637)))

(declare-fun c!373508 () Bool)

(assert (=> b!2345781 (= c!373508 ((_ is ElementMatch!6883) (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(declare-fun bm!142137 () Bool)

(declare-fun c!373506 () Bool)

(assert (=> bm!142137 (= call!142142 (usedCharacters!442 (ite c!373507 (reg!7212 (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) (ite c!373506 (regOne!14279 (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) (regOne!14278 (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))))))))

(declare-fun bm!142138 () Bool)

(assert (=> bm!142138 (= call!142141 (usedCharacters!442 (ite c!373506 (regTwo!14279 (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) (regTwo!14278 (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))))

(declare-fun b!2345782 () Bool)

(assert (=> b!2345782 (= e!1500639 call!142143)))

(declare-fun b!2345783 () Bool)

(assert (=> b!2345783 (= e!1500636 e!1500639)))

(assert (=> b!2345783 (= c!373506 ((_ is Union!6883) (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(declare-fun b!2345784 () Bool)

(assert (=> b!2345784 (= e!1500638 Nil!27844)))

(declare-fun b!2345785 () Bool)

(assert (=> b!2345785 (= e!1500637 (Cons!27844 (c!373317 (ite c!373407 (reg!7212 (regTwo!14278 r!26197)) (ite c!373406 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) Nil!27844))))

(assert (= (and d!692013 c!373505) b!2345784))

(assert (= (and d!692013 (not c!373505)) b!2345781))

(assert (= (and b!2345781 c!373508) b!2345785))

(assert (= (and b!2345781 (not c!373508)) b!2345780))

(assert (= (and b!2345780 c!373507) b!2345778))

(assert (= (and b!2345780 (not c!373507)) b!2345783))

(assert (= (and b!2345783 c!373506) b!2345782))

(assert (= (and b!2345783 (not c!373506)) b!2345779))

(assert (= (or b!2345782 b!2345779) bm!142138))

(assert (= (or b!2345782 b!2345779) bm!142136))

(assert (= (or b!2345782 b!2345779) bm!142135))

(assert (= (or b!2345778 bm!142136) bm!142137))

(declare-fun m!2767191 () Bool)

(assert (=> bm!142135 m!2767191))

(declare-fun m!2767193 () Bool)

(assert (=> bm!142137 m!2767193))

(declare-fun m!2767195 () Bool)

(assert (=> bm!142138 m!2767195))

(assert (=> bm!142046 d!692013))

(declare-fun b!2345786 () Bool)

(declare-fun e!1500646 () Bool)

(declare-fun call!142146 () Bool)

(assert (=> b!2345786 (= e!1500646 call!142146)))

(declare-fun bm!142141 () Bool)

(declare-fun c!373509 () Bool)

(assert (=> bm!142141 (= call!142146 (validRegex!2628 (ite c!373509 (regTwo!14279 (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) (regTwo!14278 (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))))

(declare-fun b!2345787 () Bool)

(declare-fun e!1500640 () Bool)

(assert (=> b!2345787 (= e!1500640 e!1500646)))

(declare-fun res!998805 () Bool)

(assert (=> b!2345787 (=> (not res!998805) (not e!1500646))))

(declare-fun call!142148 () Bool)

(assert (=> b!2345787 (= res!998805 call!142148)))

(declare-fun d!692015 () Bool)

(declare-fun res!998807 () Bool)

(declare-fun e!1500641 () Bool)

(assert (=> d!692015 (=> res!998807 e!1500641)))

(assert (=> d!692015 (= res!998807 ((_ is ElementMatch!6883) (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(assert (=> d!692015 (= (validRegex!2628 (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) e!1500641)))

(declare-fun c!373510 () Bool)

(declare-fun bm!142142 () Bool)

(declare-fun call!142147 () Bool)

(assert (=> bm!142142 (= call!142147 (validRegex!2628 (ite c!373510 (reg!7212 (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) (ite c!373509 (regOne!14279 (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))) (regOne!14278 (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))))))))

(declare-fun bm!142143 () Bool)

(assert (=> bm!142143 (= call!142148 call!142147)))

(declare-fun b!2345788 () Bool)

(declare-fun res!998803 () Bool)

(declare-fun e!1500642 () Bool)

(assert (=> b!2345788 (=> (not res!998803) (not e!1500642))))

(assert (=> b!2345788 (= res!998803 call!142148)))

(declare-fun e!1500645 () Bool)

(assert (=> b!2345788 (= e!1500645 e!1500642)))

(declare-fun b!2345789 () Bool)

(declare-fun e!1500643 () Bool)

(assert (=> b!2345789 (= e!1500643 call!142147)))

(declare-fun b!2345790 () Bool)

(assert (=> b!2345790 (= e!1500642 call!142146)))

(declare-fun b!2345791 () Bool)

(declare-fun e!1500644 () Bool)

(assert (=> b!2345791 (= e!1500644 e!1500643)))

(declare-fun res!998804 () Bool)

(assert (=> b!2345791 (= res!998804 (not (nullable!1962 (reg!7212 (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))))

(assert (=> b!2345791 (=> (not res!998804) (not e!1500643))))

(declare-fun b!2345792 () Bool)

(assert (=> b!2345792 (= e!1500644 e!1500645)))

(assert (=> b!2345792 (= c!373509 ((_ is Union!6883) (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(declare-fun b!2345793 () Bool)

(declare-fun res!998806 () Bool)

(assert (=> b!2345793 (=> res!998806 e!1500640)))

(assert (=> b!2345793 (= res!998806 (not ((_ is Concat!11505) (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197))))))))

(assert (=> b!2345793 (= e!1500645 e!1500640)))

(declare-fun b!2345794 () Bool)

(assert (=> b!2345794 (= e!1500641 e!1500644)))

(assert (=> b!2345794 (= c!373510 ((_ is Star!6883) (ite c!373322 (regTwo!14279 (regTwo!14278 r!26197)) (regTwo!14278 (regTwo!14278 r!26197)))))))

(assert (= (and d!692015 (not res!998807)) b!2345794))

(assert (= (and b!2345794 c!373510) b!2345791))

(assert (= (and b!2345794 (not c!373510)) b!2345792))

(assert (= (and b!2345791 res!998804) b!2345789))

(assert (= (and b!2345792 c!373509) b!2345788))

(assert (= (and b!2345792 (not c!373509)) b!2345793))

(assert (= (and b!2345788 res!998803) b!2345790))

(assert (= (and b!2345793 (not res!998806)) b!2345787))

(assert (= (and b!2345787 res!998805) b!2345786))

(assert (= (or b!2345790 b!2345786) bm!142141))

(assert (= (or b!2345788 b!2345787) bm!142143))

(assert (= (or b!2345789 bm!142143) bm!142142))

(declare-fun m!2767197 () Bool)

(assert (=> bm!142141 m!2767197))

(declare-fun m!2767199 () Bool)

(assert (=> bm!142142 m!2767199))

(declare-fun m!2767201 () Bool)

(assert (=> b!2345791 m!2767201))

(assert (=> bm!141968 d!692015))

(declare-fun d!692017 () Bool)

(declare-fun lt!862926 () Bool)

(assert (=> d!692017 (= lt!862926 (select (content!3777 (t!207801 (usedCharacters!442 (regTwo!14278 r!26197)))) c!13498))))

(declare-fun e!1500648 () Bool)

(assert (=> d!692017 (= lt!862926 e!1500648)))

(declare-fun res!998809 () Bool)

(assert (=> d!692017 (=> (not res!998809) (not e!1500648))))

(assert (=> d!692017 (= res!998809 ((_ is Cons!27844) (t!207801 (usedCharacters!442 (regTwo!14278 r!26197)))))))

(assert (=> d!692017 (= (contains!4823 (t!207801 (usedCharacters!442 (regTwo!14278 r!26197))) c!13498) lt!862926)))

(declare-fun b!2345795 () Bool)

(declare-fun e!1500647 () Bool)

(assert (=> b!2345795 (= e!1500648 e!1500647)))

(declare-fun res!998808 () Bool)

(assert (=> b!2345795 (=> res!998808 e!1500647)))

(assert (=> b!2345795 (= res!998808 (= (h!33245 (t!207801 (usedCharacters!442 (regTwo!14278 r!26197)))) c!13498))))

(declare-fun b!2345796 () Bool)

(assert (=> b!2345796 (= e!1500647 (contains!4823 (t!207801 (t!207801 (usedCharacters!442 (regTwo!14278 r!26197)))) c!13498))))

(assert (= (and d!692017 res!998809) b!2345795))

(assert (= (and b!2345795 (not res!998808)) b!2345796))

(assert (=> d!692017 m!2767175))

(declare-fun m!2767203 () Bool)

(assert (=> d!692017 m!2767203))

(declare-fun m!2767205 () Bool)

(assert (=> b!2345796 m!2767205))

(assert (=> b!2345362 d!692017))

(declare-fun b!2345797 () Bool)

(declare-fun e!1500655 () Bool)

(declare-fun call!142149 () Bool)

(assert (=> b!2345797 (= e!1500655 call!142149)))

(declare-fun bm!142144 () Bool)

(declare-fun c!373511 () Bool)

(assert (=> bm!142144 (= call!142149 (validRegex!2628 (ite c!373511 (regTwo!14279 lt!862902) (regTwo!14278 lt!862902))))))

(declare-fun b!2345798 () Bool)

(declare-fun e!1500649 () Bool)

(assert (=> b!2345798 (= e!1500649 e!1500655)))

(declare-fun res!998812 () Bool)

(assert (=> b!2345798 (=> (not res!998812) (not e!1500655))))

(declare-fun call!142151 () Bool)

(assert (=> b!2345798 (= res!998812 call!142151)))

(declare-fun d!692019 () Bool)

(declare-fun res!998814 () Bool)

(declare-fun e!1500650 () Bool)

(assert (=> d!692019 (=> res!998814 e!1500650)))

(assert (=> d!692019 (= res!998814 ((_ is ElementMatch!6883) lt!862902))))

(assert (=> d!692019 (= (validRegex!2628 lt!862902) e!1500650)))

(declare-fun call!142150 () Bool)

(declare-fun c!373512 () Bool)

(declare-fun bm!142145 () Bool)

(assert (=> bm!142145 (= call!142150 (validRegex!2628 (ite c!373512 (reg!7212 lt!862902) (ite c!373511 (regOne!14279 lt!862902) (regOne!14278 lt!862902)))))))

(declare-fun bm!142146 () Bool)

(assert (=> bm!142146 (= call!142151 call!142150)))

(declare-fun b!2345799 () Bool)

(declare-fun res!998810 () Bool)

(declare-fun e!1500651 () Bool)

(assert (=> b!2345799 (=> (not res!998810) (not e!1500651))))

(assert (=> b!2345799 (= res!998810 call!142151)))

(declare-fun e!1500654 () Bool)

(assert (=> b!2345799 (= e!1500654 e!1500651)))

(declare-fun b!2345800 () Bool)

(declare-fun e!1500652 () Bool)

(assert (=> b!2345800 (= e!1500652 call!142150)))

(declare-fun b!2345801 () Bool)

(assert (=> b!2345801 (= e!1500651 call!142149)))

(declare-fun b!2345802 () Bool)

(declare-fun e!1500653 () Bool)

(assert (=> b!2345802 (= e!1500653 e!1500652)))

(declare-fun res!998811 () Bool)

(assert (=> b!2345802 (= res!998811 (not (nullable!1962 (reg!7212 lt!862902))))))

(assert (=> b!2345802 (=> (not res!998811) (not e!1500652))))

(declare-fun b!2345803 () Bool)

(assert (=> b!2345803 (= e!1500653 e!1500654)))

(assert (=> b!2345803 (= c!373511 ((_ is Union!6883) lt!862902))))

(declare-fun b!2345804 () Bool)

(declare-fun res!998813 () Bool)

(assert (=> b!2345804 (=> res!998813 e!1500649)))

(assert (=> b!2345804 (= res!998813 (not ((_ is Concat!11505) lt!862902)))))

(assert (=> b!2345804 (= e!1500654 e!1500649)))

(declare-fun b!2345805 () Bool)

(assert (=> b!2345805 (= e!1500650 e!1500653)))

(assert (=> b!2345805 (= c!373512 ((_ is Star!6883) lt!862902))))

(assert (= (and d!692019 (not res!998814)) b!2345805))

(assert (= (and b!2345805 c!373512) b!2345802))

(assert (= (and b!2345805 (not c!373512)) b!2345803))

(assert (= (and b!2345802 res!998811) b!2345800))

(assert (= (and b!2345803 c!373511) b!2345799))

(assert (= (and b!2345803 (not c!373511)) b!2345804))

(assert (= (and b!2345799 res!998810) b!2345801))

(assert (= (and b!2345804 (not res!998813)) b!2345798))

(assert (= (and b!2345798 res!998812) b!2345797))

(assert (= (or b!2345801 b!2345797) bm!142144))

(assert (= (or b!2345799 b!2345798) bm!142146))

(assert (= (or b!2345800 bm!142146) bm!142145))

(declare-fun m!2767207 () Bool)

(assert (=> bm!142144 m!2767207))

(declare-fun m!2767209 () Bool)

(assert (=> bm!142145 m!2767209))

(declare-fun m!2767211 () Bool)

(assert (=> b!2345802 m!2767211))

(assert (=> d!691915 d!692019))

(assert (=> d!691915 d!691891))

(declare-fun b!2345806 () Bool)

(declare-fun e!1500662 () Bool)

(declare-fun call!142152 () Bool)

(assert (=> b!2345806 (= e!1500662 call!142152)))

(declare-fun bm!142147 () Bool)

(declare-fun c!373513 () Bool)

(assert (=> bm!142147 (= call!142152 (validRegex!2628 (ite c!373513 (regTwo!14279 (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) (regTwo!14278 (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))))

(declare-fun b!2345807 () Bool)

(declare-fun e!1500656 () Bool)

(assert (=> b!2345807 (= e!1500656 e!1500662)))

(declare-fun res!998817 () Bool)

(assert (=> b!2345807 (=> (not res!998817) (not e!1500662))))

(declare-fun call!142154 () Bool)

(assert (=> b!2345807 (= res!998817 call!142154)))

(declare-fun d!692021 () Bool)

(declare-fun res!998819 () Bool)

(declare-fun e!1500657 () Bool)

(assert (=> d!692021 (=> res!998819 e!1500657)))

(assert (=> d!692021 (= res!998819 ((_ is ElementMatch!6883) (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(assert (=> d!692021 (= (validRegex!2628 (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) e!1500657)))

(declare-fun call!142153 () Bool)

(declare-fun c!373514 () Bool)

(declare-fun bm!142148 () Bool)

(assert (=> bm!142148 (= call!142153 (validRegex!2628 (ite c!373514 (reg!7212 (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) (ite c!373513 (regOne!14279 (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))) (regOne!14278 (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))))))))

(declare-fun bm!142149 () Bool)

(assert (=> bm!142149 (= call!142154 call!142153)))

(declare-fun b!2345808 () Bool)

(declare-fun res!998815 () Bool)

(declare-fun e!1500658 () Bool)

(assert (=> b!2345808 (=> (not res!998815) (not e!1500658))))

(assert (=> b!2345808 (= res!998815 call!142154)))

(declare-fun e!1500661 () Bool)

(assert (=> b!2345808 (= e!1500661 e!1500658)))

(declare-fun b!2345809 () Bool)

(declare-fun e!1500659 () Bool)

(assert (=> b!2345809 (= e!1500659 call!142153)))

(declare-fun b!2345810 () Bool)

(assert (=> b!2345810 (= e!1500658 call!142152)))

(declare-fun b!2345811 () Bool)

(declare-fun e!1500660 () Bool)

(assert (=> b!2345811 (= e!1500660 e!1500659)))

(declare-fun res!998816 () Bool)

(assert (=> b!2345811 (= res!998816 (not (nullable!1962 (reg!7212 (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))))

(assert (=> b!2345811 (=> (not res!998816) (not e!1500659))))

(declare-fun b!2345812 () Bool)

(assert (=> b!2345812 (= e!1500660 e!1500661)))

(assert (=> b!2345812 (= c!373513 ((_ is Union!6883) (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(declare-fun b!2345813 () Bool)

(declare-fun res!998818 () Bool)

(assert (=> b!2345813 (=> res!998818 e!1500656)))

(assert (=> b!2345813 (= res!998818 (not ((_ is Concat!11505) (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197)))))))))

(assert (=> b!2345813 (= e!1500661 e!1500656)))

(declare-fun b!2345814 () Bool)

(assert (=> b!2345814 (= e!1500657 e!1500660)))

(assert (=> b!2345814 (= c!373514 ((_ is Star!6883) (ite c!373323 (reg!7212 (regTwo!14278 r!26197)) (ite c!373322 (regOne!14279 (regTwo!14278 r!26197)) (regOne!14278 (regTwo!14278 r!26197))))))))

(assert (= (and d!692021 (not res!998819)) b!2345814))

(assert (= (and b!2345814 c!373514) b!2345811))

(assert (= (and b!2345814 (not c!373514)) b!2345812))

(assert (= (and b!2345811 res!998816) b!2345809))

(assert (= (and b!2345812 c!373513) b!2345808))

(assert (= (and b!2345812 (not c!373513)) b!2345813))

(assert (= (and b!2345808 res!998815) b!2345810))

(assert (= (and b!2345813 (not res!998818)) b!2345807))

(assert (= (and b!2345807 res!998817) b!2345806))

(assert (= (or b!2345810 b!2345806) bm!142147))

(assert (= (or b!2345808 b!2345807) bm!142149))

(assert (= (or b!2345809 bm!142149) bm!142148))

(declare-fun m!2767213 () Bool)

(assert (=> bm!142147 m!2767213))

(declare-fun m!2767215 () Bool)

(assert (=> bm!142148 m!2767215))

(declare-fun m!2767217 () Bool)

(assert (=> b!2345811 m!2767217))

(assert (=> bm!141969 d!692021))

(declare-fun bm!142152 () Bool)

(declare-fun call!142158 () Bool)

(declare-fun c!373516 () Bool)

(assert (=> bm!142152 (= call!142158 (nullable!1962 (ite c!373516 (regOne!14279 (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)) (regOne!14278 (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)))))))

(declare-fun b!2345822 () Bool)

(declare-fun e!1500671 () Bool)

(declare-fun e!1500674 () Bool)

(assert (=> b!2345822 (= e!1500671 e!1500674)))

(declare-fun res!998827 () Bool)

(assert (=> b!2345822 (=> (not res!998827) (not e!1500674))))

(assert (=> b!2345822 (= res!998827 (and (not ((_ is EmptyLang!6883) (derivativeStep!1622 (regTwo!14278 r!26197) c!13498))) (not ((_ is ElementMatch!6883) (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)))))))

(declare-fun b!2345823 () Bool)

(declare-fun e!1500673 () Bool)

(declare-fun e!1500672 () Bool)

(assert (=> b!2345823 (= e!1500673 e!1500672)))

(assert (=> b!2345823 (= c!373516 ((_ is Union!6883) (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)))))

(declare-fun d!692023 () Bool)

(declare-fun res!998825 () Bool)

(assert (=> d!692023 (=> res!998825 e!1500671)))

(assert (=> d!692023 (= res!998825 ((_ is EmptyExpr!6883) (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)))))

(assert (=> d!692023 (= (nullableFct!515 (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)) e!1500671)))

(declare-fun b!2345824 () Bool)

(declare-fun e!1500669 () Bool)

(declare-fun call!142157 () Bool)

(assert (=> b!2345824 (= e!1500669 call!142157)))

(declare-fun bm!142153 () Bool)

(assert (=> bm!142153 (= call!142157 (nullable!1962 (ite c!373516 (regTwo!14279 (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)) (regTwo!14278 (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)))))))

(declare-fun b!2345825 () Bool)

(declare-fun e!1500670 () Bool)

(assert (=> b!2345825 (= e!1500670 call!142157)))

(declare-fun b!2345826 () Bool)

(assert (=> b!2345826 (= e!1500672 e!1500670)))

(declare-fun res!998828 () Bool)

(assert (=> b!2345826 (= res!998828 call!142158)))

(assert (=> b!2345826 (=> res!998828 e!1500670)))

(declare-fun b!2345827 () Bool)

(assert (=> b!2345827 (= e!1500672 e!1500669)))

(declare-fun res!998826 () Bool)

(assert (=> b!2345827 (= res!998826 call!142158)))

(assert (=> b!2345827 (=> (not res!998826) (not e!1500669))))

(declare-fun b!2345828 () Bool)

(assert (=> b!2345828 (= e!1500674 e!1500673)))

(declare-fun res!998829 () Bool)

(assert (=> b!2345828 (=> res!998829 e!1500673)))

(assert (=> b!2345828 (= res!998829 ((_ is Star!6883) (derivativeStep!1622 (regTwo!14278 r!26197) c!13498)))))

(assert (= (and d!692023 (not res!998825)) b!2345822))

(assert (= (and b!2345822 res!998827) b!2345828))

(assert (= (and b!2345828 (not res!998829)) b!2345823))

(assert (= (and b!2345823 c!373516) b!2345826))

(assert (= (and b!2345823 (not c!373516)) b!2345827))

(assert (= (and b!2345826 (not res!998828)) b!2345825))

(assert (= (and b!2345827 res!998826) b!2345824))

(assert (= (or b!2345826 b!2345827) bm!142152))

(assert (= (or b!2345825 b!2345824) bm!142153))

(declare-fun m!2767223 () Bool)

(assert (=> bm!142152 m!2767223))

(declare-fun m!2767225 () Bool)

(assert (=> bm!142153 m!2767225))

(assert (=> d!691905 d!692023))

(assert (=> b!2345332 d!691937))

(declare-fun b!2345838 () Bool)

(declare-fun e!1500682 () List!27942)

(assert (=> b!2345838 (= e!1500682 call!142046)))

(declare-fun d!692027 () Bool)

(declare-fun e!1500683 () Bool)

(assert (=> d!692027 e!1500683))

(declare-fun res!998835 () Bool)

(assert (=> d!692027 (=> (not res!998835) (not e!1500683))))

(declare-fun lt!862927 () List!27942)

(assert (=> d!692027 (= res!998835 (= (content!3777 lt!862927) ((_ map or) (content!3777 call!142045) (content!3777 call!142046))))))

(assert (=> d!692027 (= lt!862927 e!1500682)))

(declare-fun c!373519 () Bool)

(assert (=> d!692027 (= c!373519 ((_ is Nil!27844) call!142045))))

(assert (=> d!692027 (= (++!6868 call!142045 call!142046) lt!862927)))

(declare-fun b!2345839 () Bool)

(assert (=> b!2345839 (= e!1500682 (Cons!27844 (h!33245 call!142045) (++!6868 (t!207801 call!142045) call!142046)))))

(declare-fun b!2345840 () Bool)

(declare-fun res!998836 () Bool)

(assert (=> b!2345840 (=> (not res!998836) (not e!1500683))))

(assert (=> b!2345840 (= res!998836 (= (size!22029 lt!862927) (+ (size!22029 call!142045) (size!22029 call!142046))))))

(declare-fun b!2345841 () Bool)

(assert (=> b!2345841 (= e!1500683 (or (not (= call!142046 Nil!27844)) (= lt!862927 call!142045)))))

(assert (= (and d!692027 c!373519) b!2345838))

(assert (= (and d!692027 (not c!373519)) b!2345839))

(assert (= (and d!692027 res!998835) b!2345840))

(assert (= (and b!2345840 res!998836) b!2345841))

(declare-fun m!2767227 () Bool)

(assert (=> d!692027 m!2767227))

(declare-fun m!2767229 () Bool)

(assert (=> d!692027 m!2767229))

(declare-fun m!2767231 () Bool)

(assert (=> d!692027 m!2767231))

(declare-fun m!2767233 () Bool)

(assert (=> b!2345839 m!2767233))

(declare-fun m!2767235 () Bool)

(assert (=> b!2345840 m!2767235))

(declare-fun m!2767237 () Bool)

(assert (=> b!2345840 m!2767237))

(declare-fun m!2767239 () Bool)

(assert (=> b!2345840 m!2767239))

(assert (=> bm!142040 d!692027))

(declare-fun d!692029 () Bool)

(assert (=> d!692029 (= (nullable!1962 (regOne!14278 (regTwo!14278 r!26197))) (nullableFct!515 (regOne!14278 (regTwo!14278 r!26197))))))

(declare-fun bs!460163 () Bool)

(assert (= bs!460163 d!692029))

(declare-fun m!2767241 () Bool)

(assert (=> bs!460163 m!2767241))

(assert (=> b!2345322 d!692029))

(declare-fun c!373520 () Bool)

(declare-fun bm!142157 () Bool)

(declare-fun call!142163 () Bool)

(assert (=> bm!142157 (= call!142163 (nullable!1962 (ite c!373520 (regOne!14279 (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))) (regOne!14278 (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))))))))

(declare-fun b!2345842 () Bool)

(declare-fun e!1500686 () Bool)

(declare-fun e!1500689 () Bool)

(assert (=> b!2345842 (= e!1500686 e!1500689)))

(declare-fun res!998839 () Bool)

(assert (=> b!2345842 (=> (not res!998839) (not e!1500689))))

(assert (=> b!2345842 (= res!998839 (and (not ((_ is EmptyLang!6883) (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197)))) (not ((_ is ElementMatch!6883) (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))))))))

(declare-fun b!2345843 () Bool)

(declare-fun e!1500688 () Bool)

(declare-fun e!1500687 () Bool)

(assert (=> b!2345843 (= e!1500688 e!1500687)))

(assert (=> b!2345843 (= c!373520 ((_ is Union!6883) (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))))))

(declare-fun d!692031 () Bool)

(declare-fun res!998837 () Bool)

(assert (=> d!692031 (=> res!998837 e!1500686)))

(assert (=> d!692031 (= res!998837 ((_ is EmptyExpr!6883) (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))))))

(assert (=> d!692031 (= (nullableFct!515 (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))) e!1500686)))

(declare-fun b!2345844 () Bool)

(declare-fun e!1500684 () Bool)

(declare-fun call!142162 () Bool)

(assert (=> b!2345844 (= e!1500684 call!142162)))

(declare-fun bm!142158 () Bool)

(assert (=> bm!142158 (= call!142162 (nullable!1962 (ite c!373520 (regTwo!14279 (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))) (regTwo!14278 (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))))))))

(declare-fun b!2345845 () Bool)

(declare-fun e!1500685 () Bool)

(assert (=> b!2345845 (= e!1500685 call!142162)))

(declare-fun b!2345846 () Bool)

(assert (=> b!2345846 (= e!1500687 e!1500685)))

(declare-fun res!998840 () Bool)

(assert (=> b!2345846 (= res!998840 call!142163)))

(assert (=> b!2345846 (=> res!998840 e!1500685)))

(declare-fun b!2345847 () Bool)

(assert (=> b!2345847 (= e!1500687 e!1500684)))

(declare-fun res!998838 () Bool)

(assert (=> b!2345847 (= res!998838 call!142163)))

(assert (=> b!2345847 (=> (not res!998838) (not e!1500684))))

(declare-fun b!2345848 () Bool)

(assert (=> b!2345848 (= e!1500689 e!1500688)))

(declare-fun res!998841 () Bool)

(assert (=> b!2345848 (=> res!998841 e!1500688)))

(assert (=> b!2345848 (= res!998841 ((_ is Star!6883) (Concat!11505 (derivativeStep!1622 (regOne!14278 r!26197) c!13498) (regTwo!14278 r!26197))))))

(assert (= (and d!692031 (not res!998837)) b!2345842))

(assert (= (and b!2345842 res!998839) b!2345848))

(assert (= (and b!2345848 (not res!998841)) b!2345843))

(assert (= (and b!2345843 c!373520) b!2345846))

(assert (= (and b!2345843 (not c!373520)) b!2345847))

(assert (= (and b!2345846 (not res!998840)) b!2345845))

(assert (= (and b!2345847 res!998838) b!2345844))

(assert (= (or b!2345846 b!2345847) bm!142157))

(assert (= (or b!2345845 b!2345844) bm!142158))

(declare-fun m!2767249 () Bool)

(assert (=> bm!142157 m!2767249))

(declare-fun m!2767251 () Bool)

(assert (=> bm!142158 m!2767251))

(assert (=> d!691895 d!692031))

(declare-fun b!2345858 () Bool)

(declare-fun e!1500701 () Regex!6883)

(assert (=> b!2345858 (= e!1500701 (ite (= c!13498 (c!373317 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197)))))) EmptyExpr!6883 EmptyLang!6883))))

(declare-fun b!2345859 () Bool)

(declare-fun call!142167 () Regex!6883)

(declare-fun e!1500699 () Regex!6883)

(assert (=> b!2345859 (= e!1500699 (Union!6883 (Concat!11505 call!142167 (regTwo!14278 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197)))))) EmptyLang!6883))))

(declare-fun b!2345860 () Bool)

(declare-fun e!1500700 () Regex!6883)

(assert (=> b!2345860 (= e!1500700 EmptyLang!6883)))

(declare-fun b!2345861 () Bool)

(declare-fun c!373526 () Bool)

(assert (=> b!2345861 (= c!373526 (nullable!1962 (regOne!14278 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197)))))))))

(declare-fun e!1500697 () Regex!6883)

(assert (=> b!2345861 (= e!1500697 e!1500699)))

(declare-fun b!2345862 () Bool)

(declare-fun e!1500698 () Regex!6883)

(declare-fun call!142169 () Regex!6883)

(declare-fun call!142170 () Regex!6883)

(assert (=> b!2345862 (= e!1500698 (Union!6883 call!142169 call!142170))))

(declare-fun bm!142162 () Bool)

(declare-fun call!142168 () Regex!6883)

(assert (=> bm!142162 (= call!142168 call!142170)))

(declare-fun bm!142163 () Bool)

(assert (=> bm!142163 (= call!142167 call!142168)))

(declare-fun b!2345863 () Bool)

(assert (=> b!2345863 (= e!1500698 e!1500697)))

(declare-fun c!373525 () Bool)

(assert (=> b!2345863 (= c!373525 ((_ is Star!6883) (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197))))))))

(declare-fun b!2345864 () Bool)

(assert (=> b!2345864 (= e!1500699 (Union!6883 (Concat!11505 call!142167 (regTwo!14278 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197)))))) call!142169))))

(declare-fun b!2345865 () Bool)

(assert (=> b!2345865 (= e!1500697 (Concat!11505 call!142168 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197))))))))

(declare-fun d!692035 () Bool)

(declare-fun lt!862928 () Regex!6883)

(assert (=> d!692035 (validRegex!2628 lt!862928)))

(assert (=> d!692035 (= lt!862928 e!1500700)))

(declare-fun c!373523 () Bool)

(assert (=> d!692035 (= c!373523 (or ((_ is EmptyExpr!6883) (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197))))) ((_ is EmptyLang!6883) (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197)))))))))

(assert (=> d!692035 (validRegex!2628 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197)))))))

(assert (=> d!692035 (= (derivativeStep!1622 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197)))) c!13498) lt!862928)))

(declare-fun b!2345866 () Bool)

(assert (=> b!2345866 (= e!1500700 e!1500701)))

(declare-fun c!373527 () Bool)

(assert (=> b!2345866 (= c!373527 ((_ is ElementMatch!6883) (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197))))))))

(declare-fun bm!142164 () Bool)

(declare-fun c!373524 () Bool)

(assert (=> bm!142164 (= call!142170 (derivativeStep!1622 (ite c!373524 (regTwo!14279 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197))))) (ite c!373525 (reg!7212 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197))))) (regOne!14278 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197))))))) c!13498))))

(declare-fun bm!142165 () Bool)

(assert (=> bm!142165 (= call!142169 (derivativeStep!1622 (ite c!373524 (regOne!14279 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197))))) (regTwo!14278 (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197)))))) c!13498))))

(declare-fun b!2345867 () Bool)

(assert (=> b!2345867 (= c!373524 ((_ is Union!6883) (ite c!373352 (regTwo!14279 (regOne!14278 r!26197)) (ite c!373353 (reg!7212 (regOne!14278 r!26197)) (regOne!14278 (regOne!14278 r!26197))))))))

(assert (=> b!2345867 (= e!1500701 e!1500698)))

(assert (= (and d!692035 c!373523) b!2345860))

(assert (= (and d!692035 (not c!373523)) b!2345866))

(assert (= (and b!2345866 c!373527) b!2345858))

(assert (= (and b!2345866 (not c!373527)) b!2345867))

(assert (= (and b!2345867 c!373524) b!2345862))

(assert (= (and b!2345867 (not c!373524)) b!2345863))

(assert (= (and b!2345863 c!373525) b!2345865))

(assert (= (and b!2345863 (not c!373525)) b!2345861))

(assert (= (and b!2345861 c!373526) b!2345864))

(assert (= (and b!2345861 (not c!373526)) b!2345859))

(assert (= (or b!2345864 b!2345859) bm!142163))

(assert (= (or b!2345865 bm!142163) bm!142162))

(assert (= (or b!2345862 bm!142162) bm!142164))

(assert (= (or b!2345862 b!2345864) bm!142165))

(declare-fun m!2767259 () Bool)

(assert (=> b!2345861 m!2767259))

(declare-fun m!2767261 () Bool)

(assert (=> d!692035 m!2767261))

(declare-fun m!2767263 () Bool)

(assert (=> d!692035 m!2767263))

(declare-fun m!2767265 () Bool)

(assert (=> bm!142164 m!2767265))

(declare-fun m!2767267 () Bool)

(assert (=> bm!142165 m!2767267))

(assert (=> bm!141996 d!692035))

(declare-fun b!2345877 () Bool)

(declare-fun e!1500715 () Bool)

(declare-fun call!142174 () Bool)

(assert (=> b!2345877 (= e!1500715 call!142174)))

(declare-fun bm!142169 () Bool)

(declare-fun c!373530 () Bool)

(assert (=> bm!142169 (= call!142174 (validRegex!2628 (ite c!373530 (regTwo!14279 lt!862898) (regTwo!14278 lt!862898))))))

(declare-fun b!2345878 () Bool)

(declare-fun e!1500709 () Bool)

(assert (=> b!2345878 (= e!1500709 e!1500715)))

(declare-fun res!998854 () Bool)

(assert (=> b!2345878 (=> (not res!998854) (not e!1500715))))

(declare-fun call!142176 () Bool)

(assert (=> b!2345878 (= res!998854 call!142176)))

(declare-fun d!692039 () Bool)

(declare-fun res!998856 () Bool)

(declare-fun e!1500710 () Bool)

(assert (=> d!692039 (=> res!998856 e!1500710)))

(assert (=> d!692039 (= res!998856 ((_ is ElementMatch!6883) lt!862898))))

(assert (=> d!692039 (= (validRegex!2628 lt!862898) e!1500710)))

(declare-fun bm!142170 () Bool)

(declare-fun c!373531 () Bool)

(declare-fun call!142175 () Bool)

(assert (=> bm!142170 (= call!142175 (validRegex!2628 (ite c!373531 (reg!7212 lt!862898) (ite c!373530 (regOne!14279 lt!862898) (regOne!14278 lt!862898)))))))

(declare-fun bm!142171 () Bool)

(assert (=> bm!142171 (= call!142176 call!142175)))

(declare-fun b!2345879 () Bool)

(declare-fun res!998852 () Bool)

(declare-fun e!1500711 () Bool)

(assert (=> b!2345879 (=> (not res!998852) (not e!1500711))))

(assert (=> b!2345879 (= res!998852 call!142176)))

(declare-fun e!1500714 () Bool)

(assert (=> b!2345879 (= e!1500714 e!1500711)))

(declare-fun b!2345880 () Bool)

(declare-fun e!1500712 () Bool)

(assert (=> b!2345880 (= e!1500712 call!142175)))

(declare-fun b!2345881 () Bool)

(assert (=> b!2345881 (= e!1500711 call!142174)))

(declare-fun b!2345882 () Bool)

(declare-fun e!1500713 () Bool)

(assert (=> b!2345882 (= e!1500713 e!1500712)))

(declare-fun res!998853 () Bool)

(assert (=> b!2345882 (= res!998853 (not (nullable!1962 (reg!7212 lt!862898))))))

(assert (=> b!2345882 (=> (not res!998853) (not e!1500712))))

(declare-fun b!2345883 () Bool)

(assert (=> b!2345883 (= e!1500713 e!1500714)))

(assert (=> b!2345883 (= c!373530 ((_ is Union!6883) lt!862898))))

(declare-fun b!2345884 () Bool)

(declare-fun res!998855 () Bool)

(assert (=> b!2345884 (=> res!998855 e!1500709)))

(assert (=> b!2345884 (= res!998855 (not ((_ is Concat!11505) lt!862898)))))

(assert (=> b!2345884 (= e!1500714 e!1500709)))

(declare-fun b!2345885 () Bool)

(assert (=> b!2345885 (= e!1500710 e!1500713)))

(assert (=> b!2345885 (= c!373531 ((_ is Star!6883) lt!862898))))

(assert (= (and d!692039 (not res!998856)) b!2345885))

(assert (= (and b!2345885 c!373531) b!2345882))

(assert (= (and b!2345885 (not c!373531)) b!2345883))

(assert (= (and b!2345882 res!998853) b!2345880))

(assert (= (and b!2345883 c!373530) b!2345879))

(assert (= (and b!2345883 (not c!373530)) b!2345884))

(assert (= (and b!2345879 res!998852) b!2345881))

(assert (= (and b!2345884 (not res!998855)) b!2345878))

(assert (= (and b!2345878 res!998854) b!2345877))

(assert (= (or b!2345881 b!2345877) bm!142169))

(assert (= (or b!2345879 b!2345878) bm!142171))

(assert (= (or b!2345880 bm!142171) bm!142170))

(declare-fun m!2767275 () Bool)

(assert (=> bm!142169 m!2767275))

(declare-fun m!2767277 () Bool)

(assert (=> bm!142170 m!2767277))

(declare-fun m!2767279 () Bool)

(assert (=> b!2345882 m!2767279))

(assert (=> d!691907 d!692039))

(assert (=> d!691907 d!691885))

(declare-fun d!692043 () Bool)

(assert (=> d!692043 (= (nullable!1962 (reg!7212 (regTwo!14278 r!26197))) (nullableFct!515 (reg!7212 (regTwo!14278 r!26197))))))

(declare-fun bs!460164 () Bool)

(assert (= bs!460164 d!692043))

(declare-fun m!2767281 () Bool)

(assert (=> bs!460164 m!2767281))

(assert (=> b!2345238 d!692043))

(declare-fun b!2345894 () Bool)

(declare-fun e!1500720 () Bool)

(assert (=> b!2345894 (= e!1500720 tp_is_empty!11077)))

(declare-fun b!2345895 () Bool)

(declare-fun tp!744593 () Bool)

(declare-fun tp!744595 () Bool)

(assert (=> b!2345895 (= e!1500720 (and tp!744593 tp!744595))))

(declare-fun b!2345896 () Bool)

(declare-fun tp!744596 () Bool)

(assert (=> b!2345896 (= e!1500720 tp!744596)))

(assert (=> b!2345468 (= tp!744533 e!1500720)))

(declare-fun b!2345897 () Bool)

(declare-fun tp!744594 () Bool)

(declare-fun tp!744592 () Bool)

(assert (=> b!2345897 (= e!1500720 (and tp!744594 tp!744592))))

(assert (= (and b!2345468 ((_ is ElementMatch!6883) (regOne!14278 (reg!7212 r!26197)))) b!2345894))

(assert (= (and b!2345468 ((_ is Concat!11505) (regOne!14278 (reg!7212 r!26197)))) b!2345895))

(assert (= (and b!2345468 ((_ is Star!6883) (regOne!14278 (reg!7212 r!26197)))) b!2345896))

(assert (= (and b!2345468 ((_ is Union!6883) (regOne!14278 (reg!7212 r!26197)))) b!2345897))

(declare-fun b!2345898 () Bool)

(declare-fun e!1500721 () Bool)

(assert (=> b!2345898 (= e!1500721 tp_is_empty!11077)))

(declare-fun b!2345899 () Bool)

(declare-fun tp!744598 () Bool)

(declare-fun tp!744600 () Bool)

(assert (=> b!2345899 (= e!1500721 (and tp!744598 tp!744600))))

(declare-fun b!2345900 () Bool)

(declare-fun tp!744601 () Bool)

(assert (=> b!2345900 (= e!1500721 tp!744601)))

(assert (=> b!2345468 (= tp!744535 e!1500721)))

(declare-fun b!2345901 () Bool)

(declare-fun tp!744599 () Bool)

(declare-fun tp!744597 () Bool)

(assert (=> b!2345901 (= e!1500721 (and tp!744599 tp!744597))))

(assert (= (and b!2345468 ((_ is ElementMatch!6883) (regTwo!14278 (reg!7212 r!26197)))) b!2345898))

(assert (= (and b!2345468 ((_ is Concat!11505) (regTwo!14278 (reg!7212 r!26197)))) b!2345899))

(assert (= (and b!2345468 ((_ is Star!6883) (regTwo!14278 (reg!7212 r!26197)))) b!2345900))

(assert (= (and b!2345468 ((_ is Union!6883) (regTwo!14278 (reg!7212 r!26197)))) b!2345901))

(declare-fun b!2345912 () Bool)

(declare-fun e!1500727 () Bool)

(assert (=> b!2345912 (= e!1500727 tp_is_empty!11077)))

(declare-fun b!2345913 () Bool)

(declare-fun tp!744603 () Bool)

(declare-fun tp!744605 () Bool)

(assert (=> b!2345913 (= e!1500727 (and tp!744603 tp!744605))))

(declare-fun b!2345914 () Bool)

(declare-fun tp!744606 () Bool)

(assert (=> b!2345914 (= e!1500727 tp!744606)))

(assert (=> b!2345469 (= tp!744536 e!1500727)))

(declare-fun b!2345915 () Bool)

(declare-fun tp!744604 () Bool)

(declare-fun tp!744602 () Bool)

(assert (=> b!2345915 (= e!1500727 (and tp!744604 tp!744602))))

(assert (= (and b!2345469 ((_ is ElementMatch!6883) (reg!7212 (reg!7212 r!26197)))) b!2345912))

(assert (= (and b!2345469 ((_ is Concat!11505) (reg!7212 (reg!7212 r!26197)))) b!2345913))

(assert (= (and b!2345469 ((_ is Star!6883) (reg!7212 (reg!7212 r!26197)))) b!2345914))

(assert (= (and b!2345469 ((_ is Union!6883) (reg!7212 (reg!7212 r!26197)))) b!2345915))

(declare-fun b!2345916 () Bool)

(declare-fun e!1500728 () Bool)

(assert (=> b!2345916 (= e!1500728 tp_is_empty!11077)))

(declare-fun b!2345917 () Bool)

(declare-fun tp!744608 () Bool)

(declare-fun tp!744610 () Bool)

(assert (=> b!2345917 (= e!1500728 (and tp!744608 tp!744610))))

(declare-fun b!2345918 () Bool)

(declare-fun tp!744611 () Bool)

(assert (=> b!2345918 (= e!1500728 tp!744611)))

(assert (=> b!2345495 (= tp!744556 e!1500728)))

(declare-fun b!2345919 () Bool)

(declare-fun tp!744609 () Bool)

(declare-fun tp!744607 () Bool)

(assert (=> b!2345919 (= e!1500728 (and tp!744609 tp!744607))))

(assert (= (and b!2345495 ((_ is ElementMatch!6883) (reg!7212 (regTwo!14278 r!26197)))) b!2345916))

(assert (= (and b!2345495 ((_ is Concat!11505) (reg!7212 (regTwo!14278 r!26197)))) b!2345917))

(assert (= (and b!2345495 ((_ is Star!6883) (reg!7212 (regTwo!14278 r!26197)))) b!2345918))

(assert (= (and b!2345495 ((_ is Union!6883) (reg!7212 (regTwo!14278 r!26197)))) b!2345919))

(declare-fun b!2345920 () Bool)

(declare-fun e!1500729 () Bool)

(assert (=> b!2345920 (= e!1500729 tp_is_empty!11077)))

(declare-fun b!2345921 () Bool)

(declare-fun tp!744613 () Bool)

(declare-fun tp!744615 () Bool)

(assert (=> b!2345921 (= e!1500729 (and tp!744613 tp!744615))))

(declare-fun b!2345922 () Bool)

(declare-fun tp!744616 () Bool)

(assert (=> b!2345922 (= e!1500729 tp!744616)))

(assert (=> b!2345496 (= tp!744554 e!1500729)))

(declare-fun b!2345923 () Bool)

(declare-fun tp!744614 () Bool)

(declare-fun tp!744612 () Bool)

(assert (=> b!2345923 (= e!1500729 (and tp!744614 tp!744612))))

(assert (= (and b!2345496 ((_ is ElementMatch!6883) (regOne!14279 (regTwo!14278 r!26197)))) b!2345920))

(assert (= (and b!2345496 ((_ is Concat!11505) (regOne!14279 (regTwo!14278 r!26197)))) b!2345921))

(assert (= (and b!2345496 ((_ is Star!6883) (regOne!14279 (regTwo!14278 r!26197)))) b!2345922))

(assert (= (and b!2345496 ((_ is Union!6883) (regOne!14279 (regTwo!14278 r!26197)))) b!2345923))

(declare-fun b!2345924 () Bool)

(declare-fun e!1500730 () Bool)

(assert (=> b!2345924 (= e!1500730 tp_is_empty!11077)))

(declare-fun b!2345925 () Bool)

(declare-fun tp!744618 () Bool)

(declare-fun tp!744620 () Bool)

(assert (=> b!2345925 (= e!1500730 (and tp!744618 tp!744620))))

(declare-fun b!2345926 () Bool)

(declare-fun tp!744621 () Bool)

(assert (=> b!2345926 (= e!1500730 tp!744621)))

(assert (=> b!2345496 (= tp!744552 e!1500730)))

(declare-fun b!2345927 () Bool)

(declare-fun tp!744619 () Bool)

(declare-fun tp!744617 () Bool)

(assert (=> b!2345927 (= e!1500730 (and tp!744619 tp!744617))))

(assert (= (and b!2345496 ((_ is ElementMatch!6883) (regTwo!14279 (regTwo!14278 r!26197)))) b!2345924))

(assert (= (and b!2345496 ((_ is Concat!11505) (regTwo!14279 (regTwo!14278 r!26197)))) b!2345925))

(assert (= (and b!2345496 ((_ is Star!6883) (regTwo!14279 (regTwo!14278 r!26197)))) b!2345926))

(assert (= (and b!2345496 ((_ is Union!6883) (regTwo!14279 (regTwo!14278 r!26197)))) b!2345927))

(declare-fun b!2345928 () Bool)

(declare-fun e!1500731 () Bool)

(assert (=> b!2345928 (= e!1500731 tp_is_empty!11077)))

(declare-fun b!2345929 () Bool)

(declare-fun tp!744623 () Bool)

(declare-fun tp!744625 () Bool)

(assert (=> b!2345929 (= e!1500731 (and tp!744623 tp!744625))))

(declare-fun b!2345930 () Bool)

(declare-fun tp!744626 () Bool)

(assert (=> b!2345930 (= e!1500731 tp!744626)))

(assert (=> b!2345494 (= tp!744553 e!1500731)))

(declare-fun b!2345931 () Bool)

(declare-fun tp!744624 () Bool)

(declare-fun tp!744622 () Bool)

(assert (=> b!2345931 (= e!1500731 (and tp!744624 tp!744622))))

(assert (= (and b!2345494 ((_ is ElementMatch!6883) (regOne!14278 (regTwo!14278 r!26197)))) b!2345928))

(assert (= (and b!2345494 ((_ is Concat!11505) (regOne!14278 (regTwo!14278 r!26197)))) b!2345929))

(assert (= (and b!2345494 ((_ is Star!6883) (regOne!14278 (regTwo!14278 r!26197)))) b!2345930))

(assert (= (and b!2345494 ((_ is Union!6883) (regOne!14278 (regTwo!14278 r!26197)))) b!2345931))

(declare-fun b!2345934 () Bool)

(declare-fun e!1500734 () Bool)

(assert (=> b!2345934 (= e!1500734 tp_is_empty!11077)))

(declare-fun b!2345935 () Bool)

(declare-fun tp!744628 () Bool)

(declare-fun tp!744630 () Bool)

(assert (=> b!2345935 (= e!1500734 (and tp!744628 tp!744630))))

(declare-fun b!2345936 () Bool)

(declare-fun tp!744631 () Bool)

(assert (=> b!2345936 (= e!1500734 tp!744631)))

(assert (=> b!2345494 (= tp!744555 e!1500734)))

(declare-fun b!2345937 () Bool)

(declare-fun tp!744629 () Bool)

(declare-fun tp!744627 () Bool)

(assert (=> b!2345937 (= e!1500734 (and tp!744629 tp!744627))))

(assert (= (and b!2345494 ((_ is ElementMatch!6883) (regTwo!14278 (regTwo!14278 r!26197)))) b!2345934))

(assert (= (and b!2345494 ((_ is Concat!11505) (regTwo!14278 (regTwo!14278 r!26197)))) b!2345935))

(assert (= (and b!2345494 ((_ is Star!6883) (regTwo!14278 (regTwo!14278 r!26197)))) b!2345936))

(assert (= (and b!2345494 ((_ is Union!6883) (regTwo!14278 (regTwo!14278 r!26197)))) b!2345937))

(declare-fun b!2345938 () Bool)

(declare-fun e!1500735 () Bool)

(assert (=> b!2345938 (= e!1500735 tp_is_empty!11077)))

(declare-fun b!2345939 () Bool)

(declare-fun tp!744633 () Bool)

(declare-fun tp!744635 () Bool)

(assert (=> b!2345939 (= e!1500735 (and tp!744633 tp!744635))))

(declare-fun b!2345940 () Bool)

(declare-fun tp!744636 () Bool)

(assert (=> b!2345940 (= e!1500735 tp!744636)))

(assert (=> b!2345470 (= tp!744534 e!1500735)))

(declare-fun b!2345941 () Bool)

(declare-fun tp!744634 () Bool)

(declare-fun tp!744632 () Bool)

(assert (=> b!2345941 (= e!1500735 (and tp!744634 tp!744632))))

(assert (= (and b!2345470 ((_ is ElementMatch!6883) (regOne!14279 (reg!7212 r!26197)))) b!2345938))

(assert (= (and b!2345470 ((_ is Concat!11505) (regOne!14279 (reg!7212 r!26197)))) b!2345939))

(assert (= (and b!2345470 ((_ is Star!6883) (regOne!14279 (reg!7212 r!26197)))) b!2345940))

(assert (= (and b!2345470 ((_ is Union!6883) (regOne!14279 (reg!7212 r!26197)))) b!2345941))

(declare-fun b!2345942 () Bool)

(declare-fun e!1500736 () Bool)

(assert (=> b!2345942 (= e!1500736 tp_is_empty!11077)))

(declare-fun b!2345943 () Bool)

(declare-fun tp!744638 () Bool)

(declare-fun tp!744640 () Bool)

(assert (=> b!2345943 (= e!1500736 (and tp!744638 tp!744640))))

(declare-fun b!2345944 () Bool)

(declare-fun tp!744641 () Bool)

(assert (=> b!2345944 (= e!1500736 tp!744641)))

(assert (=> b!2345470 (= tp!744532 e!1500736)))

(declare-fun b!2345945 () Bool)

(declare-fun tp!744639 () Bool)

(declare-fun tp!744637 () Bool)

(assert (=> b!2345945 (= e!1500736 (and tp!744639 tp!744637))))

(assert (= (and b!2345470 ((_ is ElementMatch!6883) (regTwo!14279 (reg!7212 r!26197)))) b!2345942))

(assert (= (and b!2345470 ((_ is Concat!11505) (regTwo!14279 (reg!7212 r!26197)))) b!2345943))

(assert (= (and b!2345470 ((_ is Star!6883) (regTwo!14279 (reg!7212 r!26197)))) b!2345944))

(assert (= (and b!2345470 ((_ is Union!6883) (regTwo!14279 (reg!7212 r!26197)))) b!2345945))

(declare-fun b!2345956 () Bool)

(declare-fun e!1500742 () Bool)

(assert (=> b!2345956 (= e!1500742 tp_is_empty!11077)))

(declare-fun b!2345957 () Bool)

(declare-fun tp!744643 () Bool)

(declare-fun tp!744645 () Bool)

(assert (=> b!2345957 (= e!1500742 (and tp!744643 tp!744645))))

(declare-fun b!2345958 () Bool)

(declare-fun tp!744646 () Bool)

(assert (=> b!2345958 (= e!1500742 tp!744646)))

(assert (=> b!2345486 (= tp!744543 e!1500742)))

(declare-fun b!2345959 () Bool)

(declare-fun tp!744644 () Bool)

(declare-fun tp!744642 () Bool)

(assert (=> b!2345959 (= e!1500742 (and tp!744644 tp!744642))))

(assert (= (and b!2345486 ((_ is ElementMatch!6883) (regOne!14278 (regTwo!14279 r!26197)))) b!2345956))

(assert (= (and b!2345486 ((_ is Concat!11505) (regOne!14278 (regTwo!14279 r!26197)))) b!2345957))

(assert (= (and b!2345486 ((_ is Star!6883) (regOne!14278 (regTwo!14279 r!26197)))) b!2345958))

(assert (= (and b!2345486 ((_ is Union!6883) (regOne!14278 (regTwo!14279 r!26197)))) b!2345959))

(declare-fun b!2345960 () Bool)

(declare-fun e!1500743 () Bool)

(assert (=> b!2345960 (= e!1500743 tp_is_empty!11077)))

(declare-fun b!2345961 () Bool)

(declare-fun tp!744648 () Bool)

(declare-fun tp!744650 () Bool)

(assert (=> b!2345961 (= e!1500743 (and tp!744648 tp!744650))))

(declare-fun b!2345962 () Bool)

(declare-fun tp!744651 () Bool)

(assert (=> b!2345962 (= e!1500743 tp!744651)))

(assert (=> b!2345486 (= tp!744545 e!1500743)))

(declare-fun b!2345963 () Bool)

(declare-fun tp!744649 () Bool)

(declare-fun tp!744647 () Bool)

(assert (=> b!2345963 (= e!1500743 (and tp!744649 tp!744647))))

(assert (= (and b!2345486 ((_ is ElementMatch!6883) (regTwo!14278 (regTwo!14279 r!26197)))) b!2345960))

(assert (= (and b!2345486 ((_ is Concat!11505) (regTwo!14278 (regTwo!14279 r!26197)))) b!2345961))

(assert (= (and b!2345486 ((_ is Star!6883) (regTwo!14278 (regTwo!14279 r!26197)))) b!2345962))

(assert (= (and b!2345486 ((_ is Union!6883) (regTwo!14278 (regTwo!14279 r!26197)))) b!2345963))

(declare-fun b!2345964 () Bool)

(declare-fun e!1500744 () Bool)

(assert (=> b!2345964 (= e!1500744 tp_is_empty!11077)))

(declare-fun b!2345965 () Bool)

(declare-fun tp!744653 () Bool)

(declare-fun tp!744655 () Bool)

(assert (=> b!2345965 (= e!1500744 (and tp!744653 tp!744655))))

(declare-fun b!2345966 () Bool)

(declare-fun tp!744656 () Bool)

(assert (=> b!2345966 (= e!1500744 tp!744656)))

(assert (=> b!2345491 (= tp!744551 e!1500744)))

(declare-fun b!2345967 () Bool)

(declare-fun tp!744654 () Bool)

(declare-fun tp!744652 () Bool)

(assert (=> b!2345967 (= e!1500744 (and tp!744654 tp!744652))))

(assert (= (and b!2345491 ((_ is ElementMatch!6883) (reg!7212 (regOne!14278 r!26197)))) b!2345964))

(assert (= (and b!2345491 ((_ is Concat!11505) (reg!7212 (regOne!14278 r!26197)))) b!2345965))

(assert (= (and b!2345491 ((_ is Star!6883) (reg!7212 (regOne!14278 r!26197)))) b!2345966))

(assert (= (and b!2345491 ((_ is Union!6883) (reg!7212 (regOne!14278 r!26197)))) b!2345967))

(declare-fun b!2345968 () Bool)

(declare-fun e!1500745 () Bool)

(assert (=> b!2345968 (= e!1500745 tp_is_empty!11077)))

(declare-fun b!2345969 () Bool)

(declare-fun tp!744658 () Bool)

(declare-fun tp!744660 () Bool)

(assert (=> b!2345969 (= e!1500745 (and tp!744658 tp!744660))))

(declare-fun b!2345970 () Bool)

(declare-fun tp!744661 () Bool)

(assert (=> b!2345970 (= e!1500745 tp!744661)))

(assert (=> b!2345482 (= tp!744538 e!1500745)))

(declare-fun b!2345971 () Bool)

(declare-fun tp!744659 () Bool)

(declare-fun tp!744657 () Bool)

(assert (=> b!2345971 (= e!1500745 (and tp!744659 tp!744657))))

(assert (= (and b!2345482 ((_ is ElementMatch!6883) (regOne!14278 (regOne!14279 r!26197)))) b!2345968))

(assert (= (and b!2345482 ((_ is Concat!11505) (regOne!14278 (regOne!14279 r!26197)))) b!2345969))

(assert (= (and b!2345482 ((_ is Star!6883) (regOne!14278 (regOne!14279 r!26197)))) b!2345970))

(assert (= (and b!2345482 ((_ is Union!6883) (regOne!14278 (regOne!14279 r!26197)))) b!2345971))

(declare-fun b!2345972 () Bool)

(declare-fun e!1500746 () Bool)

(assert (=> b!2345972 (= e!1500746 tp_is_empty!11077)))

(declare-fun b!2345973 () Bool)

(declare-fun tp!744663 () Bool)

(declare-fun tp!744665 () Bool)

(assert (=> b!2345973 (= e!1500746 (and tp!744663 tp!744665))))

(declare-fun b!2345974 () Bool)

(declare-fun tp!744666 () Bool)

(assert (=> b!2345974 (= e!1500746 tp!744666)))

(assert (=> b!2345482 (= tp!744540 e!1500746)))

(declare-fun b!2345975 () Bool)

(declare-fun tp!744664 () Bool)

(declare-fun tp!744662 () Bool)

(assert (=> b!2345975 (= e!1500746 (and tp!744664 tp!744662))))

(assert (= (and b!2345482 ((_ is ElementMatch!6883) (regTwo!14278 (regOne!14279 r!26197)))) b!2345972))

(assert (= (and b!2345482 ((_ is Concat!11505) (regTwo!14278 (regOne!14279 r!26197)))) b!2345973))

(assert (= (and b!2345482 ((_ is Star!6883) (regTwo!14278 (regOne!14279 r!26197)))) b!2345974))

(assert (= (and b!2345482 ((_ is Union!6883) (regTwo!14278 (regOne!14279 r!26197)))) b!2345975))

(declare-fun b!2345983 () Bool)

(declare-fun e!1500753 () Bool)

(assert (=> b!2345983 (= e!1500753 tp_is_empty!11077)))

(declare-fun b!2345984 () Bool)

(declare-fun tp!744668 () Bool)

(declare-fun tp!744670 () Bool)

(assert (=> b!2345984 (= e!1500753 (and tp!744668 tp!744670))))

(declare-fun b!2345985 () Bool)

(declare-fun tp!744671 () Bool)

(assert (=> b!2345985 (= e!1500753 tp!744671)))

(assert (=> b!2345490 (= tp!744548 e!1500753)))

(declare-fun b!2345986 () Bool)

(declare-fun tp!744669 () Bool)

(declare-fun tp!744667 () Bool)

(assert (=> b!2345986 (= e!1500753 (and tp!744669 tp!744667))))

(assert (= (and b!2345490 ((_ is ElementMatch!6883) (regOne!14278 (regOne!14278 r!26197)))) b!2345983))

(assert (= (and b!2345490 ((_ is Concat!11505) (regOne!14278 (regOne!14278 r!26197)))) b!2345984))

(assert (= (and b!2345490 ((_ is Star!6883) (regOne!14278 (regOne!14278 r!26197)))) b!2345985))

(assert (= (and b!2345490 ((_ is Union!6883) (regOne!14278 (regOne!14278 r!26197)))) b!2345986))

(declare-fun b!2345987 () Bool)

(declare-fun e!1500754 () Bool)

(assert (=> b!2345987 (= e!1500754 tp_is_empty!11077)))

(declare-fun b!2345988 () Bool)

(declare-fun tp!744673 () Bool)

(declare-fun tp!744675 () Bool)

(assert (=> b!2345988 (= e!1500754 (and tp!744673 tp!744675))))

(declare-fun b!2345989 () Bool)

(declare-fun tp!744676 () Bool)

(assert (=> b!2345989 (= e!1500754 tp!744676)))

(assert (=> b!2345490 (= tp!744550 e!1500754)))

(declare-fun b!2345990 () Bool)

(declare-fun tp!744674 () Bool)

(declare-fun tp!744672 () Bool)

(assert (=> b!2345990 (= e!1500754 (and tp!744674 tp!744672))))

(assert (= (and b!2345490 ((_ is ElementMatch!6883) (regTwo!14278 (regOne!14278 r!26197)))) b!2345987))

(assert (= (and b!2345490 ((_ is Concat!11505) (regTwo!14278 (regOne!14278 r!26197)))) b!2345988))

(assert (= (and b!2345490 ((_ is Star!6883) (regTwo!14278 (regOne!14278 r!26197)))) b!2345989))

(assert (= (and b!2345490 ((_ is Union!6883) (regTwo!14278 (regOne!14278 r!26197)))) b!2345990))

(declare-fun b!2345991 () Bool)

(declare-fun e!1500755 () Bool)

(assert (=> b!2345991 (= e!1500755 tp_is_empty!11077)))

(declare-fun b!2345992 () Bool)

(declare-fun tp!744678 () Bool)

(declare-fun tp!744680 () Bool)

(assert (=> b!2345992 (= e!1500755 (and tp!744678 tp!744680))))

(declare-fun b!2345993 () Bool)

(declare-fun tp!744681 () Bool)

(assert (=> b!2345993 (= e!1500755 tp!744681)))

(assert (=> b!2345484 (= tp!744539 e!1500755)))

(declare-fun b!2345994 () Bool)

(declare-fun tp!744679 () Bool)

(declare-fun tp!744677 () Bool)

(assert (=> b!2345994 (= e!1500755 (and tp!744679 tp!744677))))

(assert (= (and b!2345484 ((_ is ElementMatch!6883) (regOne!14279 (regOne!14279 r!26197)))) b!2345991))

(assert (= (and b!2345484 ((_ is Concat!11505) (regOne!14279 (regOne!14279 r!26197)))) b!2345992))

(assert (= (and b!2345484 ((_ is Star!6883) (regOne!14279 (regOne!14279 r!26197)))) b!2345993))

(assert (= (and b!2345484 ((_ is Union!6883) (regOne!14279 (regOne!14279 r!26197)))) b!2345994))

(declare-fun b!2345997 () Bool)

(declare-fun e!1500757 () Bool)

(assert (=> b!2345997 (= e!1500757 tp_is_empty!11077)))

(declare-fun b!2345998 () Bool)

(declare-fun tp!744683 () Bool)

(declare-fun tp!744685 () Bool)

(assert (=> b!2345998 (= e!1500757 (and tp!744683 tp!744685))))

(declare-fun b!2345999 () Bool)

(declare-fun tp!744686 () Bool)

(assert (=> b!2345999 (= e!1500757 tp!744686)))

(assert (=> b!2345484 (= tp!744537 e!1500757)))

(declare-fun b!2346000 () Bool)

(declare-fun tp!744684 () Bool)

(declare-fun tp!744682 () Bool)

(assert (=> b!2346000 (= e!1500757 (and tp!744684 tp!744682))))

(assert (= (and b!2345484 ((_ is ElementMatch!6883) (regTwo!14279 (regOne!14279 r!26197)))) b!2345997))

(assert (= (and b!2345484 ((_ is Concat!11505) (regTwo!14279 (regOne!14279 r!26197)))) b!2345998))

(assert (= (and b!2345484 ((_ is Star!6883) (regTwo!14279 (regOne!14279 r!26197)))) b!2345999))

(assert (= (and b!2345484 ((_ is Union!6883) (regTwo!14279 (regOne!14279 r!26197)))) b!2346000))

(declare-fun b!2346001 () Bool)

(declare-fun e!1500762 () Bool)

(assert (=> b!2346001 (= e!1500762 tp_is_empty!11077)))

(declare-fun b!2346002 () Bool)

(declare-fun tp!744688 () Bool)

(declare-fun tp!744690 () Bool)

(assert (=> b!2346002 (= e!1500762 (and tp!744688 tp!744690))))

(declare-fun b!2346003 () Bool)

(declare-fun tp!744691 () Bool)

(assert (=> b!2346003 (= e!1500762 tp!744691)))

(assert (=> b!2345487 (= tp!744546 e!1500762)))

(declare-fun b!2346004 () Bool)

(declare-fun tp!744689 () Bool)

(declare-fun tp!744687 () Bool)

(assert (=> b!2346004 (= e!1500762 (and tp!744689 tp!744687))))

(assert (= (and b!2345487 ((_ is ElementMatch!6883) (reg!7212 (regTwo!14279 r!26197)))) b!2346001))

(assert (= (and b!2345487 ((_ is Concat!11505) (reg!7212 (regTwo!14279 r!26197)))) b!2346002))

(assert (= (and b!2345487 ((_ is Star!6883) (reg!7212 (regTwo!14279 r!26197)))) b!2346003))

(assert (= (and b!2345487 ((_ is Union!6883) (reg!7212 (regTwo!14279 r!26197)))) b!2346004))

(declare-fun b!2346014 () Bool)

(declare-fun e!1500766 () Bool)

(assert (=> b!2346014 (= e!1500766 tp_is_empty!11077)))

(declare-fun b!2346015 () Bool)

(declare-fun tp!744693 () Bool)

(declare-fun tp!744695 () Bool)

(assert (=> b!2346015 (= e!1500766 (and tp!744693 tp!744695))))

(declare-fun b!2346016 () Bool)

(declare-fun tp!744696 () Bool)

(assert (=> b!2346016 (= e!1500766 tp!744696)))

(assert (=> b!2345492 (= tp!744549 e!1500766)))

(declare-fun b!2346017 () Bool)

(declare-fun tp!744694 () Bool)

(declare-fun tp!744692 () Bool)

(assert (=> b!2346017 (= e!1500766 (and tp!744694 tp!744692))))

(assert (= (and b!2345492 ((_ is ElementMatch!6883) (regOne!14279 (regOne!14278 r!26197)))) b!2346014))

(assert (= (and b!2345492 ((_ is Concat!11505) (regOne!14279 (regOne!14278 r!26197)))) b!2346015))

(assert (= (and b!2345492 ((_ is Star!6883) (regOne!14279 (regOne!14278 r!26197)))) b!2346016))

(assert (= (and b!2345492 ((_ is Union!6883) (regOne!14279 (regOne!14278 r!26197)))) b!2346017))

(declare-fun b!2346018 () Bool)

(declare-fun e!1500767 () Bool)

(assert (=> b!2346018 (= e!1500767 tp_is_empty!11077)))

(declare-fun b!2346019 () Bool)

(declare-fun tp!744698 () Bool)

(declare-fun tp!744700 () Bool)

(assert (=> b!2346019 (= e!1500767 (and tp!744698 tp!744700))))

(declare-fun b!2346020 () Bool)

(declare-fun tp!744701 () Bool)

(assert (=> b!2346020 (= e!1500767 tp!744701)))

(assert (=> b!2345492 (= tp!744547 e!1500767)))

(declare-fun b!2346021 () Bool)

(declare-fun tp!744699 () Bool)

(declare-fun tp!744697 () Bool)

(assert (=> b!2346021 (= e!1500767 (and tp!744699 tp!744697))))

(assert (= (and b!2345492 ((_ is ElementMatch!6883) (regTwo!14279 (regOne!14278 r!26197)))) b!2346018))

(assert (= (and b!2345492 ((_ is Concat!11505) (regTwo!14279 (regOne!14278 r!26197)))) b!2346019))

(assert (= (and b!2345492 ((_ is Star!6883) (regTwo!14279 (regOne!14278 r!26197)))) b!2346020))

(assert (= (and b!2345492 ((_ is Union!6883) (regTwo!14279 (regOne!14278 r!26197)))) b!2346021))

(declare-fun b!2346022 () Bool)

(declare-fun e!1500768 () Bool)

(assert (=> b!2346022 (= e!1500768 tp_is_empty!11077)))

(declare-fun b!2346023 () Bool)

(declare-fun tp!744703 () Bool)

(declare-fun tp!744705 () Bool)

(assert (=> b!2346023 (= e!1500768 (and tp!744703 tp!744705))))

(declare-fun b!2346024 () Bool)

(declare-fun tp!744706 () Bool)

(assert (=> b!2346024 (= e!1500768 tp!744706)))

(assert (=> b!2345483 (= tp!744541 e!1500768)))

(declare-fun b!2346025 () Bool)

(declare-fun tp!744704 () Bool)

(declare-fun tp!744702 () Bool)

(assert (=> b!2346025 (= e!1500768 (and tp!744704 tp!744702))))

(assert (= (and b!2345483 ((_ is ElementMatch!6883) (reg!7212 (regOne!14279 r!26197)))) b!2346022))

(assert (= (and b!2345483 ((_ is Concat!11505) (reg!7212 (regOne!14279 r!26197)))) b!2346023))

(assert (= (and b!2345483 ((_ is Star!6883) (reg!7212 (regOne!14279 r!26197)))) b!2346024))

(assert (= (and b!2345483 ((_ is Union!6883) (reg!7212 (regOne!14279 r!26197)))) b!2346025))

(declare-fun b!2346026 () Bool)

(declare-fun e!1500769 () Bool)

(assert (=> b!2346026 (= e!1500769 tp_is_empty!11077)))

(declare-fun b!2346027 () Bool)

(declare-fun tp!744708 () Bool)

(declare-fun tp!744710 () Bool)

(assert (=> b!2346027 (= e!1500769 (and tp!744708 tp!744710))))

(declare-fun b!2346028 () Bool)

(declare-fun tp!744711 () Bool)

(assert (=> b!2346028 (= e!1500769 tp!744711)))

(assert (=> b!2345488 (= tp!744544 e!1500769)))

(declare-fun b!2346029 () Bool)

(declare-fun tp!744709 () Bool)

(declare-fun tp!744707 () Bool)

(assert (=> b!2346029 (= e!1500769 (and tp!744709 tp!744707))))

(assert (= (and b!2345488 ((_ is ElementMatch!6883) (regOne!14279 (regTwo!14279 r!26197)))) b!2346026))

(assert (= (and b!2345488 ((_ is Concat!11505) (regOne!14279 (regTwo!14279 r!26197)))) b!2346027))

(assert (= (and b!2345488 ((_ is Star!6883) (regOne!14279 (regTwo!14279 r!26197)))) b!2346028))

(assert (= (and b!2345488 ((_ is Union!6883) (regOne!14279 (regTwo!14279 r!26197)))) b!2346029))

(declare-fun b!2346040 () Bool)

(declare-fun e!1500775 () Bool)

(assert (=> b!2346040 (= e!1500775 tp_is_empty!11077)))

(declare-fun b!2346041 () Bool)

(declare-fun tp!744713 () Bool)

(declare-fun tp!744715 () Bool)

(assert (=> b!2346041 (= e!1500775 (and tp!744713 tp!744715))))

(declare-fun b!2346042 () Bool)

(declare-fun tp!744716 () Bool)

(assert (=> b!2346042 (= e!1500775 tp!744716)))

(assert (=> b!2345488 (= tp!744542 e!1500775)))

(declare-fun b!2346043 () Bool)

(declare-fun tp!744714 () Bool)

(declare-fun tp!744712 () Bool)

(assert (=> b!2346043 (= e!1500775 (and tp!744714 tp!744712))))

(assert (= (and b!2345488 ((_ is ElementMatch!6883) (regTwo!14279 (regTwo!14279 r!26197)))) b!2346040))

(assert (= (and b!2345488 ((_ is Concat!11505) (regTwo!14279 (regTwo!14279 r!26197)))) b!2346041))

(assert (= (and b!2345488 ((_ is Star!6883) (regTwo!14279 (regTwo!14279 r!26197)))) b!2346042))

(assert (= (and b!2345488 ((_ is Union!6883) (regTwo!14279 (regTwo!14279 r!26197)))) b!2346043))

(check-sat (not b!2346019) tp_is_empty!11077 (not b!2345973) (not d!692029) (not bm!142170) (not b!2345998) (not bm!142065) (not bm!142121) (not bm!142158) (not b!2345901) (not b!2345796) (not b!2345673) (not b!2345899) (not d!691953) (not bm!142145) (not d!692007) (not b!2346015) (not b!2345930) (not b!2346000) (not bm!142132) (not b!2345965) (not bm!142098) (not b!2345917) (not bm!142080) (not bm!142169) (not b!2346004) (not b!2345922) (not b!2345974) (not b!2345970) (not bm!142129) (not b!2345936) (not b!2345959) (not b!2345689) (not b!2345840) (not b!2345988) (not b!2345913) (not b!2346029) (not d!692043) (not bm!142147) (not b!2346028) (not bm!142101) (not b!2345915) (not b!2345945) (not b!2345811) (not d!691977) (not b!2345748) (not b!2345940) (not b!2346017) (not b!2346020) (not bm!142125) (not bm!142066) (not bm!142127) (not b!2345861) (not d!691971) (not b!2345989) (not b!2346002) (not d!692009) (not b!2345919) (not b!2345963) (not b!2346043) (not bm!142099) (not b!2345935) (not b!2345984) (not b!2345992) (not bm!142077) (not b!2345743) (not b!2345921) (not bm!142144) (not bm!142069) (not bm!142064) (not bm!142100) (not b!2345839) (not b!2345937) (not b!2346042) (not bm!142118) (not b!2345897) (not b!2345958) (not b!2345568) (not d!692017) (not bm!142058) (not b!2345734) (not b!2345944) (not b!2345969) (not bm!142152) (not b!2345967) (not b!2345538) (not bm!142109) (not bm!142138) (not b!2345985) (not b!2345993) (not b!2345923) (not d!691951) (not b!2345966) (not bm!142124) (not b!2346025) (not b!2345914) (not b!2346041) (not d!691959) (not b!2345702) (not bm!142090) (not b!2345939) (not b!2345900) (not b!2345925) (not b!2345896) (not bm!142060) (not b!2345629) (not bm!142061) (not bm!142110) (not bm!142073) (not bm!142130) (not b!2345957) (not b!2345802) (not bm!142113) (not b!2345990) (not bm!142153) (not b!2345975) (not b!2345941) (not b!2345929) (not b!2345554) (not b!2345994) (not d!692035) (not b!2345918) (not b!2345895) (not b!2345927) (not bm!142164) (not bm!142119) (not d!691957) (not b!2345971) (not bm!142141) (not bm!142142) (not b!2345986) (not b!2345999) (not b!2345943) (not b!2345961) (not bm!142081) (not bm!142131) (not d!691961) (not bm!142072) (not b!2345962) (not bm!142068) (not b!2346024) (not bm!142122) (not bm!142135) (not d!692027) (not b!2346027) (not b!2345931) (not b!2345672) (not bm!142091) (not b!2346023) (not bm!142112) (not bm!142076) (not b!2345791) (not bm!142148) (not d!691963) (not b!2345578) (not b!2345725) (not b!2346021) (not bm!142157) (not b!2346016) (not b!2345926) (not b!2345882) (not bm!142165) (not b!2345558) (not bm!142137) (not b!2346003))
(check-sat)
