; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243476 () Bool)

(assert start!243476)

(declare-fun b!2492106 () Bool)

(declare-fun e!1581815 () Bool)

(declare-datatypes ((C!14836 0))(
  ( (C!14837 (val!9070 Int)) )
))
(declare-datatypes ((Regex!7339 0))(
  ( (ElementMatch!7339 (c!396201 C!14836)) (Concat!12035 (regOne!15190 Regex!7339) (regTwo!15190 Regex!7339)) (EmptyExpr!7339) (Star!7339 (reg!7668 Regex!7339)) (EmptyLang!7339) (Union!7339 (regOne!15191 Regex!7339) (regTwo!15191 Regex!7339)) )
))
(declare-fun r!27340 () Regex!7339)

(declare-fun c!14016 () C!14836)

(declare-fun validRegex!2965 (Regex!7339) Bool)

(declare-fun derivativeStep!1908 (Regex!7339 C!14836) Regex!7339)

(assert (=> b!2492106 (= e!1581815 (not (validRegex!2965 (derivativeStep!1908 (regTwo!15191 r!27340) c!14016))))))

(declare-fun b!2492107 () Bool)

(declare-fun e!1581814 () Bool)

(declare-fun tp_is_empty!12533 () Bool)

(declare-fun tp!798094 () Bool)

(assert (=> b!2492107 (= e!1581814 (and tp_is_empty!12533 tp!798094))))

(declare-fun b!2492108 () Bool)

(declare-fun e!1581816 () Bool)

(declare-fun tp!798093 () Bool)

(declare-fun tp!798098 () Bool)

(assert (=> b!2492108 (= e!1581816 (and tp!798093 tp!798098))))

(declare-fun b!2492109 () Bool)

(declare-fun tp!798097 () Bool)

(assert (=> b!2492109 (= e!1581816 tp!798097)))

(declare-fun b!2492110 () Bool)

(declare-fun res!1054309 () Bool)

(assert (=> b!2492110 (=> (not res!1054309) (not e!1581815))))

(get-info :version)

(assert (=> b!2492110 (= res!1054309 (and (not ((_ is EmptyExpr!7339) r!27340)) (not ((_ is EmptyLang!7339) r!27340)) (not ((_ is ElementMatch!7339) r!27340)) ((_ is Union!7339) r!27340)))))

(declare-fun b!2492111 () Bool)

(declare-fun res!1054310 () Bool)

(assert (=> b!2492111 (=> (not res!1054310) (not e!1581815))))

(declare-datatypes ((List!29404 0))(
  ( (Nil!29304) (Cons!29304 (h!34724 C!14836) (t!211103 List!29404)) )
))
(declare-fun tl!4068 () List!29404)

(declare-fun nullable!2256 (Regex!7339) Bool)

(declare-fun derivative!34 (Regex!7339 List!29404) Regex!7339)

(assert (=> b!2492111 (= res!1054310 (nullable!2256 (derivative!34 (derivativeStep!1908 r!27340 c!14016) tl!4068)))))

(declare-fun b!2492112 () Bool)

(assert (=> b!2492112 (= e!1581816 tp_is_empty!12533)))

(declare-fun b!2492113 () Bool)

(declare-fun res!1054311 () Bool)

(assert (=> b!2492113 (=> (not res!1054311) (not e!1581815))))

(assert (=> b!2492113 (= res!1054311 (not (nullable!2256 (derivative!34 (derivativeStep!1908 (regOne!15191 r!27340) c!14016) tl!4068))))))

(declare-fun b!2492114 () Bool)

(declare-fun tp!798096 () Bool)

(declare-fun tp!798095 () Bool)

(assert (=> b!2492114 (= e!1581816 (and tp!798096 tp!798095))))

(declare-fun res!1054312 () Bool)

(assert (=> start!243476 (=> (not res!1054312) (not e!1581815))))

(assert (=> start!243476 (= res!1054312 (validRegex!2965 r!27340))))

(assert (=> start!243476 e!1581815))

(assert (=> start!243476 e!1581816))

(assert (=> start!243476 tp_is_empty!12533))

(assert (=> start!243476 e!1581814))

(assert (= (and start!243476 res!1054312) b!2492111))

(assert (= (and b!2492111 res!1054310) b!2492110))

(assert (= (and b!2492110 res!1054309) b!2492113))

(assert (= (and b!2492113 res!1054311) b!2492106))

(assert (= (and start!243476 ((_ is ElementMatch!7339) r!27340)) b!2492112))

(assert (= (and start!243476 ((_ is Concat!12035) r!27340)) b!2492114))

(assert (= (and start!243476 ((_ is Star!7339) r!27340)) b!2492109))

(assert (= (and start!243476 ((_ is Union!7339) r!27340)) b!2492108))

(assert (= (and start!243476 ((_ is Cons!29304) tl!4068)) b!2492107))

(declare-fun m!2858399 () Bool)

(assert (=> b!2492106 m!2858399))

(assert (=> b!2492106 m!2858399))

(declare-fun m!2858401 () Bool)

(assert (=> b!2492106 m!2858401))

(declare-fun m!2858403 () Bool)

(assert (=> b!2492111 m!2858403))

(assert (=> b!2492111 m!2858403))

(declare-fun m!2858405 () Bool)

(assert (=> b!2492111 m!2858405))

(assert (=> b!2492111 m!2858405))

(declare-fun m!2858407 () Bool)

(assert (=> b!2492111 m!2858407))

(declare-fun m!2858409 () Bool)

(assert (=> b!2492113 m!2858409))

(assert (=> b!2492113 m!2858409))

(declare-fun m!2858411 () Bool)

(assert (=> b!2492113 m!2858411))

(assert (=> b!2492113 m!2858411))

(declare-fun m!2858413 () Bool)

(assert (=> b!2492113 m!2858413))

(declare-fun m!2858415 () Bool)

(assert (=> start!243476 m!2858415))

(check-sat (not b!2492111) (not start!243476) (not b!2492107) tp_is_empty!12533 (not b!2492113) (not b!2492114) (not b!2492106) (not b!2492109) (not b!2492108))
(check-sat)
(get-model)

(declare-fun d!714513 () Bool)

(declare-fun nullableFct!559 (Regex!7339) Bool)

(assert (=> d!714513 (= (nullable!2256 (derivative!34 (derivativeStep!1908 (regOne!15191 r!27340) c!14016) tl!4068)) (nullableFct!559 (derivative!34 (derivativeStep!1908 (regOne!15191 r!27340) c!14016) tl!4068)))))

(declare-fun bs!468380 () Bool)

(assert (= bs!468380 d!714513))

(assert (=> bs!468380 m!2858411))

(declare-fun m!2858423 () Bool)

(assert (=> bs!468380 m!2858423))

(assert (=> b!2492113 d!714513))

(declare-fun d!714517 () Bool)

(declare-fun lt!894001 () Regex!7339)

(assert (=> d!714517 (validRegex!2965 lt!894001)))

(declare-fun e!1581857 () Regex!7339)

(assert (=> d!714517 (= lt!894001 e!1581857)))

(declare-fun c!396222 () Bool)

(assert (=> d!714517 (= c!396222 ((_ is Cons!29304) tl!4068))))

(assert (=> d!714517 (validRegex!2965 (derivativeStep!1908 (regOne!15191 r!27340) c!14016))))

(assert (=> d!714517 (= (derivative!34 (derivativeStep!1908 (regOne!15191 r!27340) c!14016) tl!4068) lt!894001)))

(declare-fun b!2492175 () Bool)

(assert (=> b!2492175 (= e!1581857 (derivative!34 (derivativeStep!1908 (derivativeStep!1908 (regOne!15191 r!27340) c!14016) (h!34724 tl!4068)) (t!211103 tl!4068)))))

(declare-fun b!2492176 () Bool)

(assert (=> b!2492176 (= e!1581857 (derivativeStep!1908 (regOne!15191 r!27340) c!14016))))

(assert (= (and d!714517 c!396222) b!2492175))

(assert (= (and d!714517 (not c!396222)) b!2492176))

(declare-fun m!2858431 () Bool)

(assert (=> d!714517 m!2858431))

(assert (=> d!714517 m!2858409))

(declare-fun m!2858433 () Bool)

(assert (=> d!714517 m!2858433))

(assert (=> b!2492175 m!2858409))

(declare-fun m!2858435 () Bool)

(assert (=> b!2492175 m!2858435))

(assert (=> b!2492175 m!2858435))

(declare-fun m!2858437 () Bool)

(assert (=> b!2492175 m!2858437))

(assert (=> b!2492113 d!714517))

(declare-fun b!2492270 () Bool)

(declare-fun e!1581897 () Regex!7339)

(declare-fun call!153348 () Regex!7339)

(declare-fun call!153346 () Regex!7339)

(assert (=> b!2492270 (= e!1581897 (Union!7339 call!153348 call!153346))))

(declare-fun d!714521 () Bool)

(declare-fun lt!894011 () Regex!7339)

(assert (=> d!714521 (validRegex!2965 lt!894011)))

(declare-fun e!1581900 () Regex!7339)

(assert (=> d!714521 (= lt!894011 e!1581900)))

(declare-fun c!396256 () Bool)

(assert (=> d!714521 (= c!396256 (or ((_ is EmptyExpr!7339) (regOne!15191 r!27340)) ((_ is EmptyLang!7339) (regOne!15191 r!27340))))))

(assert (=> d!714521 (validRegex!2965 (regOne!15191 r!27340))))

(assert (=> d!714521 (= (derivativeStep!1908 (regOne!15191 r!27340) c!14016) lt!894011)))

(declare-fun bm!153341 () Bool)

(declare-fun call!153347 () Regex!7339)

(declare-fun call!153349 () Regex!7339)

(assert (=> bm!153341 (= call!153347 call!153349)))

(declare-fun b!2492271 () Bool)

(declare-fun e!1581901 () Regex!7339)

(assert (=> b!2492271 (= e!1581901 (Concat!12035 call!153349 (regOne!15191 r!27340)))))

(declare-fun bm!153342 () Bool)

(assert (=> bm!153342 (= call!153349 call!153346)))

(declare-fun b!2492272 () Bool)

(assert (=> b!2492272 (= e!1581900 EmptyLang!7339)))

(declare-fun b!2492273 () Bool)

(assert (=> b!2492273 (= e!1581897 e!1581901)))

(declare-fun c!396253 () Bool)

(assert (=> b!2492273 (= c!396253 ((_ is Star!7339) (regOne!15191 r!27340)))))

(declare-fun b!2492274 () Bool)

(declare-fun e!1581899 () Regex!7339)

(assert (=> b!2492274 (= e!1581900 e!1581899)))

(declare-fun c!396255 () Bool)

(assert (=> b!2492274 (= c!396255 ((_ is ElementMatch!7339) (regOne!15191 r!27340)))))

(declare-fun b!2492275 () Bool)

(declare-fun e!1581898 () Regex!7339)

(assert (=> b!2492275 (= e!1581898 (Union!7339 (Concat!12035 call!153347 (regTwo!15190 (regOne!15191 r!27340))) EmptyLang!7339))))

(declare-fun b!2492276 () Bool)

(declare-fun c!396254 () Bool)

(assert (=> b!2492276 (= c!396254 ((_ is Union!7339) (regOne!15191 r!27340)))))

(assert (=> b!2492276 (= e!1581899 e!1581897)))

(declare-fun bm!153343 () Bool)

(assert (=> bm!153343 (= call!153348 (derivativeStep!1908 (ite c!396254 (regOne!15191 (regOne!15191 r!27340)) (regTwo!15190 (regOne!15191 r!27340))) c!14016))))

(declare-fun b!2492277 () Bool)

(declare-fun c!396252 () Bool)

(assert (=> b!2492277 (= c!396252 (nullable!2256 (regOne!15190 (regOne!15191 r!27340))))))

(assert (=> b!2492277 (= e!1581901 e!1581898)))

(declare-fun bm!153344 () Bool)

(assert (=> bm!153344 (= call!153346 (derivativeStep!1908 (ite c!396254 (regTwo!15191 (regOne!15191 r!27340)) (ite c!396253 (reg!7668 (regOne!15191 r!27340)) (regOne!15190 (regOne!15191 r!27340)))) c!14016))))

(declare-fun b!2492278 () Bool)

(assert (=> b!2492278 (= e!1581899 (ite (= c!14016 (c!396201 (regOne!15191 r!27340))) EmptyExpr!7339 EmptyLang!7339))))

(declare-fun b!2492279 () Bool)

(assert (=> b!2492279 (= e!1581898 (Union!7339 (Concat!12035 call!153347 (regTwo!15190 (regOne!15191 r!27340))) call!153348))))

(assert (= (and d!714521 c!396256) b!2492272))

(assert (= (and d!714521 (not c!396256)) b!2492274))

(assert (= (and b!2492274 c!396255) b!2492278))

(assert (= (and b!2492274 (not c!396255)) b!2492276))

(assert (= (and b!2492276 c!396254) b!2492270))

(assert (= (and b!2492276 (not c!396254)) b!2492273))

(assert (= (and b!2492273 c!396253) b!2492271))

(assert (= (and b!2492273 (not c!396253)) b!2492277))

(assert (= (and b!2492277 c!396252) b!2492279))

(assert (= (and b!2492277 (not c!396252)) b!2492275))

(assert (= (or b!2492279 b!2492275) bm!153341))

(assert (= (or b!2492271 bm!153341) bm!153342))

(assert (= (or b!2492270 bm!153342) bm!153344))

(assert (= (or b!2492270 b!2492279) bm!153343))

(declare-fun m!2858487 () Bool)

(assert (=> d!714521 m!2858487))

(declare-fun m!2858489 () Bool)

(assert (=> d!714521 m!2858489))

(declare-fun m!2858491 () Bool)

(assert (=> bm!153343 m!2858491))

(declare-fun m!2858493 () Bool)

(assert (=> b!2492277 m!2858493))

(declare-fun m!2858495 () Bool)

(assert (=> bm!153344 m!2858495))

(assert (=> b!2492113 d!714521))

(declare-fun b!2492298 () Bool)

(declare-fun e!1581920 () Bool)

(declare-fun call!153357 () Bool)

(assert (=> b!2492298 (= e!1581920 call!153357)))

(declare-fun b!2492299 () Bool)

(declare-fun e!1581916 () Bool)

(declare-fun call!153356 () Bool)

(assert (=> b!2492299 (= e!1581916 call!153356)))

(declare-fun b!2492300 () Bool)

(declare-fun res!1054347 () Bool)

(declare-fun e!1581919 () Bool)

(assert (=> b!2492300 (=> res!1054347 e!1581919)))

(assert (=> b!2492300 (= res!1054347 (not ((_ is Concat!12035) (derivativeStep!1908 (regTwo!15191 r!27340) c!14016))))))

(declare-fun e!1581917 () Bool)

(assert (=> b!2492300 (= e!1581917 e!1581919)))

(declare-fun b!2492301 () Bool)

(declare-fun e!1581918 () Bool)

(declare-fun e!1581922 () Bool)

(assert (=> b!2492301 (= e!1581918 e!1581922)))

(declare-fun res!1054344 () Bool)

(assert (=> b!2492301 (= res!1054344 (not (nullable!2256 (reg!7668 (derivativeStep!1908 (regTwo!15191 r!27340) c!14016)))))))

(assert (=> b!2492301 (=> (not res!1054344) (not e!1581922))))

(declare-fun b!2492302 () Bool)

(declare-fun call!153358 () Bool)

(assert (=> b!2492302 (= e!1581922 call!153358)))

(declare-fun bm!153351 () Bool)

(assert (=> bm!153351 (= call!153357 call!153358)))

(declare-fun d!714535 () Bool)

(declare-fun res!1054343 () Bool)

(declare-fun e!1581921 () Bool)

(assert (=> d!714535 (=> res!1054343 e!1581921)))

(assert (=> d!714535 (= res!1054343 ((_ is ElementMatch!7339) (derivativeStep!1908 (regTwo!15191 r!27340) c!14016)))))

(assert (=> d!714535 (= (validRegex!2965 (derivativeStep!1908 (regTwo!15191 r!27340) c!14016)) e!1581921)))

(declare-fun c!396262 () Bool)

(declare-fun bm!153352 () Bool)

(assert (=> bm!153352 (= call!153356 (validRegex!2965 (ite c!396262 (regTwo!15191 (derivativeStep!1908 (regTwo!15191 r!27340) c!14016)) (regOne!15190 (derivativeStep!1908 (regTwo!15191 r!27340) c!14016)))))))

(declare-fun b!2492303 () Bool)

(assert (=> b!2492303 (= e!1581918 e!1581917)))

(assert (=> b!2492303 (= c!396262 ((_ is Union!7339) (derivativeStep!1908 (regTwo!15191 r!27340) c!14016)))))

(declare-fun b!2492304 () Bool)

(declare-fun res!1054346 () Bool)

(assert (=> b!2492304 (=> (not res!1054346) (not e!1581916))))

(assert (=> b!2492304 (= res!1054346 call!153357)))

(assert (=> b!2492304 (= e!1581917 e!1581916)))

(declare-fun c!396261 () Bool)

(declare-fun bm!153353 () Bool)

(assert (=> bm!153353 (= call!153358 (validRegex!2965 (ite c!396261 (reg!7668 (derivativeStep!1908 (regTwo!15191 r!27340) c!14016)) (ite c!396262 (regOne!15191 (derivativeStep!1908 (regTwo!15191 r!27340) c!14016)) (regTwo!15190 (derivativeStep!1908 (regTwo!15191 r!27340) c!14016))))))))

(declare-fun b!2492305 () Bool)

(assert (=> b!2492305 (= e!1581919 e!1581920)))

(declare-fun res!1054345 () Bool)

(assert (=> b!2492305 (=> (not res!1054345) (not e!1581920))))

(assert (=> b!2492305 (= res!1054345 call!153356)))

(declare-fun b!2492306 () Bool)

(assert (=> b!2492306 (= e!1581921 e!1581918)))

(assert (=> b!2492306 (= c!396261 ((_ is Star!7339) (derivativeStep!1908 (regTwo!15191 r!27340) c!14016)))))

(assert (= (and d!714535 (not res!1054343)) b!2492306))

(assert (= (and b!2492306 c!396261) b!2492301))

(assert (= (and b!2492306 (not c!396261)) b!2492303))

(assert (= (and b!2492301 res!1054344) b!2492302))

(assert (= (and b!2492303 c!396262) b!2492304))

(assert (= (and b!2492303 (not c!396262)) b!2492300))

(assert (= (and b!2492304 res!1054346) b!2492299))

(assert (= (and b!2492300 (not res!1054347)) b!2492305))

(assert (= (and b!2492305 res!1054345) b!2492298))

(assert (= (or b!2492304 b!2492298) bm!153351))

(assert (= (or b!2492299 b!2492305) bm!153352))

(assert (= (or b!2492302 bm!153351) bm!153353))

(declare-fun m!2858497 () Bool)

(assert (=> b!2492301 m!2858497))

(declare-fun m!2858499 () Bool)

(assert (=> bm!153352 m!2858499))

(declare-fun m!2858501 () Bool)

(assert (=> bm!153353 m!2858501))

(assert (=> b!2492106 d!714535))

(declare-fun b!2492307 () Bool)

(declare-fun e!1581923 () Regex!7339)

(declare-fun call!153361 () Regex!7339)

(declare-fun call!153359 () Regex!7339)

(assert (=> b!2492307 (= e!1581923 (Union!7339 call!153361 call!153359))))

(declare-fun d!714537 () Bool)

(declare-fun lt!894012 () Regex!7339)

(assert (=> d!714537 (validRegex!2965 lt!894012)))

(declare-fun e!1581926 () Regex!7339)

(assert (=> d!714537 (= lt!894012 e!1581926)))

(declare-fun c!396267 () Bool)

(assert (=> d!714537 (= c!396267 (or ((_ is EmptyExpr!7339) (regTwo!15191 r!27340)) ((_ is EmptyLang!7339) (regTwo!15191 r!27340))))))

(assert (=> d!714537 (validRegex!2965 (regTwo!15191 r!27340))))

(assert (=> d!714537 (= (derivativeStep!1908 (regTwo!15191 r!27340) c!14016) lt!894012)))

(declare-fun bm!153354 () Bool)

(declare-fun call!153360 () Regex!7339)

(declare-fun call!153362 () Regex!7339)

(assert (=> bm!153354 (= call!153360 call!153362)))

(declare-fun b!2492308 () Bool)

(declare-fun e!1581927 () Regex!7339)

(assert (=> b!2492308 (= e!1581927 (Concat!12035 call!153362 (regTwo!15191 r!27340)))))

(declare-fun bm!153355 () Bool)

(assert (=> bm!153355 (= call!153362 call!153359)))

(declare-fun b!2492309 () Bool)

(assert (=> b!2492309 (= e!1581926 EmptyLang!7339)))

(declare-fun b!2492310 () Bool)

(assert (=> b!2492310 (= e!1581923 e!1581927)))

(declare-fun c!396264 () Bool)

(assert (=> b!2492310 (= c!396264 ((_ is Star!7339) (regTwo!15191 r!27340)))))

(declare-fun b!2492311 () Bool)

(declare-fun e!1581925 () Regex!7339)

(assert (=> b!2492311 (= e!1581926 e!1581925)))

(declare-fun c!396266 () Bool)

(assert (=> b!2492311 (= c!396266 ((_ is ElementMatch!7339) (regTwo!15191 r!27340)))))

(declare-fun b!2492312 () Bool)

(declare-fun e!1581924 () Regex!7339)

(assert (=> b!2492312 (= e!1581924 (Union!7339 (Concat!12035 call!153360 (regTwo!15190 (regTwo!15191 r!27340))) EmptyLang!7339))))

(declare-fun b!2492313 () Bool)

(declare-fun c!396265 () Bool)

(assert (=> b!2492313 (= c!396265 ((_ is Union!7339) (regTwo!15191 r!27340)))))

(assert (=> b!2492313 (= e!1581925 e!1581923)))

(declare-fun bm!153356 () Bool)

(assert (=> bm!153356 (= call!153361 (derivativeStep!1908 (ite c!396265 (regOne!15191 (regTwo!15191 r!27340)) (regTwo!15190 (regTwo!15191 r!27340))) c!14016))))

(declare-fun b!2492314 () Bool)

(declare-fun c!396263 () Bool)

(assert (=> b!2492314 (= c!396263 (nullable!2256 (regOne!15190 (regTwo!15191 r!27340))))))

(assert (=> b!2492314 (= e!1581927 e!1581924)))

(declare-fun bm!153357 () Bool)

(assert (=> bm!153357 (= call!153359 (derivativeStep!1908 (ite c!396265 (regTwo!15191 (regTwo!15191 r!27340)) (ite c!396264 (reg!7668 (regTwo!15191 r!27340)) (regOne!15190 (regTwo!15191 r!27340)))) c!14016))))

(declare-fun b!2492315 () Bool)

(assert (=> b!2492315 (= e!1581925 (ite (= c!14016 (c!396201 (regTwo!15191 r!27340))) EmptyExpr!7339 EmptyLang!7339))))

(declare-fun b!2492316 () Bool)

(assert (=> b!2492316 (= e!1581924 (Union!7339 (Concat!12035 call!153360 (regTwo!15190 (regTwo!15191 r!27340))) call!153361))))

(assert (= (and d!714537 c!396267) b!2492309))

(assert (= (and d!714537 (not c!396267)) b!2492311))

(assert (= (and b!2492311 c!396266) b!2492315))

(assert (= (and b!2492311 (not c!396266)) b!2492313))

(assert (= (and b!2492313 c!396265) b!2492307))

(assert (= (and b!2492313 (not c!396265)) b!2492310))

(assert (= (and b!2492310 c!396264) b!2492308))

(assert (= (and b!2492310 (not c!396264)) b!2492314))

(assert (= (and b!2492314 c!396263) b!2492316))

(assert (= (and b!2492314 (not c!396263)) b!2492312))

(assert (= (or b!2492316 b!2492312) bm!153354))

(assert (= (or b!2492308 bm!153354) bm!153355))

(assert (= (or b!2492307 bm!153355) bm!153357))

(assert (= (or b!2492307 b!2492316) bm!153356))

(declare-fun m!2858503 () Bool)

(assert (=> d!714537 m!2858503))

(declare-fun m!2858505 () Bool)

(assert (=> d!714537 m!2858505))

(declare-fun m!2858507 () Bool)

(assert (=> bm!153356 m!2858507))

(declare-fun m!2858509 () Bool)

(assert (=> b!2492314 m!2858509))

(declare-fun m!2858511 () Bool)

(assert (=> bm!153357 m!2858511))

(assert (=> b!2492106 d!714537))

(declare-fun d!714539 () Bool)

(assert (=> d!714539 (= (nullable!2256 (derivative!34 (derivativeStep!1908 r!27340 c!14016) tl!4068)) (nullableFct!559 (derivative!34 (derivativeStep!1908 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468383 () Bool)

(assert (= bs!468383 d!714539))

(assert (=> bs!468383 m!2858405))

(declare-fun m!2858513 () Bool)

(assert (=> bs!468383 m!2858513))

(assert (=> b!2492111 d!714539))

(declare-fun d!714541 () Bool)

(declare-fun lt!894013 () Regex!7339)

(assert (=> d!714541 (validRegex!2965 lt!894013)))

(declare-fun e!1581928 () Regex!7339)

(assert (=> d!714541 (= lt!894013 e!1581928)))

(declare-fun c!396268 () Bool)

(assert (=> d!714541 (= c!396268 ((_ is Cons!29304) tl!4068))))

(assert (=> d!714541 (validRegex!2965 (derivativeStep!1908 r!27340 c!14016))))

(assert (=> d!714541 (= (derivative!34 (derivativeStep!1908 r!27340 c!14016) tl!4068) lt!894013)))

(declare-fun b!2492317 () Bool)

(assert (=> b!2492317 (= e!1581928 (derivative!34 (derivativeStep!1908 (derivativeStep!1908 r!27340 c!14016) (h!34724 tl!4068)) (t!211103 tl!4068)))))

(declare-fun b!2492318 () Bool)

(assert (=> b!2492318 (= e!1581928 (derivativeStep!1908 r!27340 c!14016))))

(assert (= (and d!714541 c!396268) b!2492317))

(assert (= (and d!714541 (not c!396268)) b!2492318))

(declare-fun m!2858515 () Bool)

(assert (=> d!714541 m!2858515))

(assert (=> d!714541 m!2858403))

(declare-fun m!2858517 () Bool)

(assert (=> d!714541 m!2858517))

(assert (=> b!2492317 m!2858403))

(declare-fun m!2858519 () Bool)

(assert (=> b!2492317 m!2858519))

(assert (=> b!2492317 m!2858519))

(declare-fun m!2858521 () Bool)

(assert (=> b!2492317 m!2858521))

(assert (=> b!2492111 d!714541))

(declare-fun b!2492319 () Bool)

(declare-fun e!1581929 () Regex!7339)

(declare-fun call!153365 () Regex!7339)

(declare-fun call!153363 () Regex!7339)

(assert (=> b!2492319 (= e!1581929 (Union!7339 call!153365 call!153363))))

(declare-fun d!714543 () Bool)

(declare-fun lt!894014 () Regex!7339)

(assert (=> d!714543 (validRegex!2965 lt!894014)))

(declare-fun e!1581932 () Regex!7339)

(assert (=> d!714543 (= lt!894014 e!1581932)))

(declare-fun c!396273 () Bool)

(assert (=> d!714543 (= c!396273 (or ((_ is EmptyExpr!7339) r!27340) ((_ is EmptyLang!7339) r!27340)))))

(assert (=> d!714543 (validRegex!2965 r!27340)))

(assert (=> d!714543 (= (derivativeStep!1908 r!27340 c!14016) lt!894014)))

(declare-fun bm!153358 () Bool)

(declare-fun call!153364 () Regex!7339)

(declare-fun call!153366 () Regex!7339)

(assert (=> bm!153358 (= call!153364 call!153366)))

(declare-fun b!2492320 () Bool)

(declare-fun e!1581933 () Regex!7339)

(assert (=> b!2492320 (= e!1581933 (Concat!12035 call!153366 r!27340))))

(declare-fun bm!153359 () Bool)

(assert (=> bm!153359 (= call!153366 call!153363)))

(declare-fun b!2492321 () Bool)

(assert (=> b!2492321 (= e!1581932 EmptyLang!7339)))

(declare-fun b!2492322 () Bool)

(assert (=> b!2492322 (= e!1581929 e!1581933)))

(declare-fun c!396270 () Bool)

(assert (=> b!2492322 (= c!396270 ((_ is Star!7339) r!27340))))

(declare-fun b!2492323 () Bool)

(declare-fun e!1581931 () Regex!7339)

(assert (=> b!2492323 (= e!1581932 e!1581931)))

(declare-fun c!396272 () Bool)

(assert (=> b!2492323 (= c!396272 ((_ is ElementMatch!7339) r!27340))))

(declare-fun b!2492324 () Bool)

(declare-fun e!1581930 () Regex!7339)

(assert (=> b!2492324 (= e!1581930 (Union!7339 (Concat!12035 call!153364 (regTwo!15190 r!27340)) EmptyLang!7339))))

(declare-fun b!2492325 () Bool)

(declare-fun c!396271 () Bool)

(assert (=> b!2492325 (= c!396271 ((_ is Union!7339) r!27340))))

(assert (=> b!2492325 (= e!1581931 e!1581929)))

(declare-fun bm!153360 () Bool)

(assert (=> bm!153360 (= call!153365 (derivativeStep!1908 (ite c!396271 (regOne!15191 r!27340) (regTwo!15190 r!27340)) c!14016))))

(declare-fun b!2492326 () Bool)

(declare-fun c!396269 () Bool)

(assert (=> b!2492326 (= c!396269 (nullable!2256 (regOne!15190 r!27340)))))

(assert (=> b!2492326 (= e!1581933 e!1581930)))

(declare-fun bm!153361 () Bool)

(assert (=> bm!153361 (= call!153363 (derivativeStep!1908 (ite c!396271 (regTwo!15191 r!27340) (ite c!396270 (reg!7668 r!27340) (regOne!15190 r!27340))) c!14016))))

(declare-fun b!2492327 () Bool)

(assert (=> b!2492327 (= e!1581931 (ite (= c!14016 (c!396201 r!27340)) EmptyExpr!7339 EmptyLang!7339))))

(declare-fun b!2492328 () Bool)

(assert (=> b!2492328 (= e!1581930 (Union!7339 (Concat!12035 call!153364 (regTwo!15190 r!27340)) call!153365))))

(assert (= (and d!714543 c!396273) b!2492321))

(assert (= (and d!714543 (not c!396273)) b!2492323))

(assert (= (and b!2492323 c!396272) b!2492327))

(assert (= (and b!2492323 (not c!396272)) b!2492325))

(assert (= (and b!2492325 c!396271) b!2492319))

(assert (= (and b!2492325 (not c!396271)) b!2492322))

(assert (= (and b!2492322 c!396270) b!2492320))

(assert (= (and b!2492322 (not c!396270)) b!2492326))

(assert (= (and b!2492326 c!396269) b!2492328))

(assert (= (and b!2492326 (not c!396269)) b!2492324))

(assert (= (or b!2492328 b!2492324) bm!153358))

(assert (= (or b!2492320 bm!153358) bm!153359))

(assert (= (or b!2492319 bm!153359) bm!153361))

(assert (= (or b!2492319 b!2492328) bm!153360))

(declare-fun m!2858523 () Bool)

(assert (=> d!714543 m!2858523))

(assert (=> d!714543 m!2858415))

(declare-fun m!2858525 () Bool)

(assert (=> bm!153360 m!2858525))

(declare-fun m!2858527 () Bool)

(assert (=> b!2492326 m!2858527))

(declare-fun m!2858529 () Bool)

(assert (=> bm!153361 m!2858529))

(assert (=> b!2492111 d!714543))

(declare-fun b!2492329 () Bool)

(declare-fun e!1581938 () Bool)

(declare-fun call!153368 () Bool)

(assert (=> b!2492329 (= e!1581938 call!153368)))

(declare-fun b!2492330 () Bool)

(declare-fun e!1581934 () Bool)

(declare-fun call!153367 () Bool)

(assert (=> b!2492330 (= e!1581934 call!153367)))

(declare-fun b!2492331 () Bool)

(declare-fun res!1054352 () Bool)

(declare-fun e!1581937 () Bool)

(assert (=> b!2492331 (=> res!1054352 e!1581937)))

(assert (=> b!2492331 (= res!1054352 (not ((_ is Concat!12035) r!27340)))))

(declare-fun e!1581935 () Bool)

(assert (=> b!2492331 (= e!1581935 e!1581937)))

(declare-fun b!2492332 () Bool)

(declare-fun e!1581936 () Bool)

(declare-fun e!1581940 () Bool)

(assert (=> b!2492332 (= e!1581936 e!1581940)))

(declare-fun res!1054349 () Bool)

(assert (=> b!2492332 (= res!1054349 (not (nullable!2256 (reg!7668 r!27340))))))

(assert (=> b!2492332 (=> (not res!1054349) (not e!1581940))))

(declare-fun b!2492333 () Bool)

(declare-fun call!153369 () Bool)

(assert (=> b!2492333 (= e!1581940 call!153369)))

(declare-fun bm!153362 () Bool)

(assert (=> bm!153362 (= call!153368 call!153369)))

(declare-fun d!714545 () Bool)

(declare-fun res!1054348 () Bool)

(declare-fun e!1581939 () Bool)

(assert (=> d!714545 (=> res!1054348 e!1581939)))

(assert (=> d!714545 (= res!1054348 ((_ is ElementMatch!7339) r!27340))))

(assert (=> d!714545 (= (validRegex!2965 r!27340) e!1581939)))

(declare-fun bm!153363 () Bool)

(declare-fun c!396275 () Bool)

(assert (=> bm!153363 (= call!153367 (validRegex!2965 (ite c!396275 (regTwo!15191 r!27340) (regOne!15190 r!27340))))))

(declare-fun b!2492334 () Bool)

(assert (=> b!2492334 (= e!1581936 e!1581935)))

(assert (=> b!2492334 (= c!396275 ((_ is Union!7339) r!27340))))

(declare-fun b!2492335 () Bool)

(declare-fun res!1054351 () Bool)

(assert (=> b!2492335 (=> (not res!1054351) (not e!1581934))))

(assert (=> b!2492335 (= res!1054351 call!153368)))

(assert (=> b!2492335 (= e!1581935 e!1581934)))

(declare-fun c!396274 () Bool)

(declare-fun bm!153364 () Bool)

(assert (=> bm!153364 (= call!153369 (validRegex!2965 (ite c!396274 (reg!7668 r!27340) (ite c!396275 (regOne!15191 r!27340) (regTwo!15190 r!27340)))))))

(declare-fun b!2492336 () Bool)

(assert (=> b!2492336 (= e!1581937 e!1581938)))

(declare-fun res!1054350 () Bool)

(assert (=> b!2492336 (=> (not res!1054350) (not e!1581938))))

(assert (=> b!2492336 (= res!1054350 call!153367)))

(declare-fun b!2492337 () Bool)

(assert (=> b!2492337 (= e!1581939 e!1581936)))

(assert (=> b!2492337 (= c!396274 ((_ is Star!7339) r!27340))))

(assert (= (and d!714545 (not res!1054348)) b!2492337))

(assert (= (and b!2492337 c!396274) b!2492332))

(assert (= (and b!2492337 (not c!396274)) b!2492334))

(assert (= (and b!2492332 res!1054349) b!2492333))

(assert (= (and b!2492334 c!396275) b!2492335))

(assert (= (and b!2492334 (not c!396275)) b!2492331))

(assert (= (and b!2492335 res!1054351) b!2492330))

(assert (= (and b!2492331 (not res!1054352)) b!2492336))

(assert (= (and b!2492336 res!1054350) b!2492329))

(assert (= (or b!2492335 b!2492329) bm!153362))

(assert (= (or b!2492330 b!2492336) bm!153363))

(assert (= (or b!2492333 bm!153362) bm!153364))

(declare-fun m!2858531 () Bool)

(assert (=> b!2492332 m!2858531))

(declare-fun m!2858533 () Bool)

(assert (=> bm!153363 m!2858533))

(declare-fun m!2858535 () Bool)

(assert (=> bm!153364 m!2858535))

(assert (=> start!243476 d!714545))

(declare-fun b!2492348 () Bool)

(declare-fun e!1581943 () Bool)

(assert (=> b!2492348 (= e!1581943 tp_is_empty!12533)))

(declare-fun b!2492351 () Bool)

(declare-fun tp!798150 () Bool)

(declare-fun tp!798148 () Bool)

(assert (=> b!2492351 (= e!1581943 (and tp!798150 tp!798148))))

(declare-fun b!2492350 () Bool)

(declare-fun tp!798147 () Bool)

(assert (=> b!2492350 (= e!1581943 tp!798147)))

(declare-fun b!2492349 () Bool)

(declare-fun tp!798151 () Bool)

(declare-fun tp!798149 () Bool)

(assert (=> b!2492349 (= e!1581943 (and tp!798151 tp!798149))))

(assert (=> b!2492108 (= tp!798093 e!1581943)))

(assert (= (and b!2492108 ((_ is ElementMatch!7339) (regOne!15191 r!27340))) b!2492348))

(assert (= (and b!2492108 ((_ is Concat!12035) (regOne!15191 r!27340))) b!2492349))

(assert (= (and b!2492108 ((_ is Star!7339) (regOne!15191 r!27340))) b!2492350))

(assert (= (and b!2492108 ((_ is Union!7339) (regOne!15191 r!27340))) b!2492351))

(declare-fun b!2492352 () Bool)

(declare-fun e!1581944 () Bool)

(assert (=> b!2492352 (= e!1581944 tp_is_empty!12533)))

(declare-fun b!2492355 () Bool)

(declare-fun tp!798155 () Bool)

(declare-fun tp!798153 () Bool)

(assert (=> b!2492355 (= e!1581944 (and tp!798155 tp!798153))))

(declare-fun b!2492354 () Bool)

(declare-fun tp!798152 () Bool)

(assert (=> b!2492354 (= e!1581944 tp!798152)))

(declare-fun b!2492353 () Bool)

(declare-fun tp!798156 () Bool)

(declare-fun tp!798154 () Bool)

(assert (=> b!2492353 (= e!1581944 (and tp!798156 tp!798154))))

(assert (=> b!2492108 (= tp!798098 e!1581944)))

(assert (= (and b!2492108 ((_ is ElementMatch!7339) (regTwo!15191 r!27340))) b!2492352))

(assert (= (and b!2492108 ((_ is Concat!12035) (regTwo!15191 r!27340))) b!2492353))

(assert (= (and b!2492108 ((_ is Star!7339) (regTwo!15191 r!27340))) b!2492354))

(assert (= (and b!2492108 ((_ is Union!7339) (regTwo!15191 r!27340))) b!2492355))

(declare-fun b!2492360 () Bool)

(declare-fun e!1581947 () Bool)

(declare-fun tp!798159 () Bool)

(assert (=> b!2492360 (= e!1581947 (and tp_is_empty!12533 tp!798159))))

(assert (=> b!2492107 (= tp!798094 e!1581947)))

(assert (= (and b!2492107 ((_ is Cons!29304) (t!211103 tl!4068))) b!2492360))

(declare-fun b!2492361 () Bool)

(declare-fun e!1581948 () Bool)

(assert (=> b!2492361 (= e!1581948 tp_is_empty!12533)))

(declare-fun b!2492364 () Bool)

(declare-fun tp!798163 () Bool)

(declare-fun tp!798161 () Bool)

(assert (=> b!2492364 (= e!1581948 (and tp!798163 tp!798161))))

(declare-fun b!2492363 () Bool)

(declare-fun tp!798160 () Bool)

(assert (=> b!2492363 (= e!1581948 tp!798160)))

(declare-fun b!2492362 () Bool)

(declare-fun tp!798164 () Bool)

(declare-fun tp!798162 () Bool)

(assert (=> b!2492362 (= e!1581948 (and tp!798164 tp!798162))))

(assert (=> b!2492109 (= tp!798097 e!1581948)))

(assert (= (and b!2492109 ((_ is ElementMatch!7339) (reg!7668 r!27340))) b!2492361))

(assert (= (and b!2492109 ((_ is Concat!12035) (reg!7668 r!27340))) b!2492362))

(assert (= (and b!2492109 ((_ is Star!7339) (reg!7668 r!27340))) b!2492363))

(assert (= (and b!2492109 ((_ is Union!7339) (reg!7668 r!27340))) b!2492364))

(declare-fun b!2492365 () Bool)

(declare-fun e!1581949 () Bool)

(assert (=> b!2492365 (= e!1581949 tp_is_empty!12533)))

(declare-fun b!2492368 () Bool)

(declare-fun tp!798168 () Bool)

(declare-fun tp!798166 () Bool)

(assert (=> b!2492368 (= e!1581949 (and tp!798168 tp!798166))))

(declare-fun b!2492367 () Bool)

(declare-fun tp!798165 () Bool)

(assert (=> b!2492367 (= e!1581949 tp!798165)))

(declare-fun b!2492366 () Bool)

(declare-fun tp!798169 () Bool)

(declare-fun tp!798167 () Bool)

(assert (=> b!2492366 (= e!1581949 (and tp!798169 tp!798167))))

(assert (=> b!2492114 (= tp!798096 e!1581949)))

(assert (= (and b!2492114 ((_ is ElementMatch!7339) (regOne!15190 r!27340))) b!2492365))

(assert (= (and b!2492114 ((_ is Concat!12035) (regOne!15190 r!27340))) b!2492366))

(assert (= (and b!2492114 ((_ is Star!7339) (regOne!15190 r!27340))) b!2492367))

(assert (= (and b!2492114 ((_ is Union!7339) (regOne!15190 r!27340))) b!2492368))

(declare-fun b!2492369 () Bool)

(declare-fun e!1581950 () Bool)

(assert (=> b!2492369 (= e!1581950 tp_is_empty!12533)))

(declare-fun b!2492372 () Bool)

(declare-fun tp!798173 () Bool)

(declare-fun tp!798171 () Bool)

(assert (=> b!2492372 (= e!1581950 (and tp!798173 tp!798171))))

(declare-fun b!2492371 () Bool)

(declare-fun tp!798170 () Bool)

(assert (=> b!2492371 (= e!1581950 tp!798170)))

(declare-fun b!2492370 () Bool)

(declare-fun tp!798174 () Bool)

(declare-fun tp!798172 () Bool)

(assert (=> b!2492370 (= e!1581950 (and tp!798174 tp!798172))))

(assert (=> b!2492114 (= tp!798095 e!1581950)))

(assert (= (and b!2492114 ((_ is ElementMatch!7339) (regTwo!15190 r!27340))) b!2492369))

(assert (= (and b!2492114 ((_ is Concat!12035) (regTwo!15190 r!27340))) b!2492370))

(assert (= (and b!2492114 ((_ is Star!7339) (regTwo!15190 r!27340))) b!2492371))

(assert (= (and b!2492114 ((_ is Union!7339) (regTwo!15190 r!27340))) b!2492372))

(check-sat (not b!2492362) (not bm!153344) (not b!2492353) (not bm!153360) (not b!2492314) (not bm!153353) (not d!714543) (not b!2492366) (not b!2492351) (not b!2492364) (not bm!153356) (not bm!153361) (not b!2492301) (not b!2492175) (not bm!153343) (not b!2492354) (not bm!153363) (not d!714537) (not b!2492349) (not b!2492368) (not b!2492355) tp_is_empty!12533 (not d!714513) (not bm!153352) (not bm!153364) (not b!2492332) (not d!714541) (not b!2492371) (not b!2492372) (not b!2492370) (not b!2492277) (not b!2492350) (not bm!153357) (not b!2492317) (not b!2492326) (not b!2492360) (not d!714539) (not b!2492367) (not d!714521) (not b!2492363) (not d!714517))
(check-sat)
