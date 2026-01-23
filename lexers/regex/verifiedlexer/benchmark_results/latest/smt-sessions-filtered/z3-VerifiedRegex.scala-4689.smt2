; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243536 () Bool)

(assert start!243536)

(declare-fun b!2492986 () Bool)

(declare-fun e!1582200 () Bool)

(declare-fun tp_is_empty!12561 () Bool)

(assert (=> b!2492986 (= e!1582200 tp_is_empty!12561)))

(declare-fun b!2492987 () Bool)

(declare-fun e!1582197 () Bool)

(declare-datatypes ((C!14864 0))(
  ( (C!14865 (val!9084 Int)) )
))
(declare-datatypes ((Regex!7353 0))(
  ( (ElementMatch!7353 (c!396341 C!14864)) (Concat!12049 (regOne!15218 Regex!7353) (regTwo!15218 Regex!7353)) (EmptyExpr!7353) (Star!7353 (reg!7682 Regex!7353)) (EmptyLang!7353) (Union!7353 (regOne!15219 Regex!7353) (regTwo!15219 Regex!7353)) )
))
(declare-fun r!27340 () Regex!7353)

(declare-fun validRegex!2979 (Regex!7353) Bool)

(assert (=> b!2492987 (= e!1582197 (not (validRegex!2979 (reg!7682 r!27340))))))

(declare-fun b!2492988 () Bool)

(declare-fun res!1054590 () Bool)

(assert (=> b!2492988 (=> (not res!1054590) (not e!1582197))))

(get-info :version)

(assert (=> b!2492988 (= res!1054590 (and (not ((_ is EmptyExpr!7353) r!27340)) (not ((_ is EmptyLang!7353) r!27340)) (not ((_ is ElementMatch!7353) r!27340)) (not ((_ is Union!7353) r!27340)) ((_ is Star!7353) r!27340)))))

(declare-fun b!2492989 () Bool)

(declare-fun tp!798501 () Bool)

(declare-fun tp!798498 () Bool)

(assert (=> b!2492989 (= e!1582200 (and tp!798501 tp!798498))))

(declare-fun b!2492990 () Bool)

(declare-fun e!1582198 () Bool)

(assert (=> b!2492990 (= e!1582198 e!1582197)))

(declare-fun res!1054589 () Bool)

(assert (=> b!2492990 (=> (not res!1054589) (not e!1582197))))

(declare-fun lt!894098 () Regex!7353)

(declare-datatypes ((List!29418 0))(
  ( (Nil!29318) (Cons!29318 (h!34738 C!14864) (t!211117 List!29418)) )
))
(declare-fun tl!4068 () List!29418)

(declare-fun nullable!2270 (Regex!7353) Bool)

(declare-fun derivative!48 (Regex!7353 List!29418) Regex!7353)

(assert (=> b!2492990 (= res!1054589 (nullable!2270 (derivative!48 lt!894098 tl!4068)))))

(declare-fun c!14016 () C!14864)

(declare-fun derivativeStep!1922 (Regex!7353 C!14864) Regex!7353)

(assert (=> b!2492990 (= lt!894098 (derivativeStep!1922 r!27340 c!14016))))

(declare-fun res!1054588 () Bool)

(assert (=> start!243536 (=> (not res!1054588) (not e!1582198))))

(assert (=> start!243536 (= res!1054588 (validRegex!2979 r!27340))))

(assert (=> start!243536 e!1582198))

(assert (=> start!243536 e!1582200))

(assert (=> start!243536 tp_is_empty!12561))

(declare-fun e!1582199 () Bool)

(assert (=> start!243536 e!1582199))

(declare-fun b!2492991 () Bool)

(declare-fun tp!798500 () Bool)

(declare-fun tp!798499 () Bool)

(assert (=> b!2492991 (= e!1582200 (and tp!798500 tp!798499))))

(declare-fun b!2492992 () Bool)

(declare-fun tp!798502 () Bool)

(assert (=> b!2492992 (= e!1582199 (and tp_is_empty!12561 tp!798502))))

(declare-fun b!2492993 () Bool)

(declare-fun tp!798497 () Bool)

(assert (=> b!2492993 (= e!1582200 tp!798497)))

(declare-fun b!2492994 () Bool)

(declare-fun res!1054587 () Bool)

(assert (=> b!2492994 (=> (not res!1054587) (not e!1582197))))

(assert (=> b!2492994 (= res!1054587 (= lt!894098 (Concat!12049 (derivativeStep!1922 (reg!7682 r!27340) c!14016) (Star!7353 (reg!7682 r!27340)))))))

(assert (= (and start!243536 res!1054588) b!2492990))

(assert (= (and b!2492990 res!1054589) b!2492988))

(assert (= (and b!2492988 res!1054590) b!2492994))

(assert (= (and b!2492994 res!1054587) b!2492987))

(assert (= (and start!243536 ((_ is ElementMatch!7353) r!27340)) b!2492986))

(assert (= (and start!243536 ((_ is Concat!12049) r!27340)) b!2492991))

(assert (= (and start!243536 ((_ is Star!7353) r!27340)) b!2492993))

(assert (= (and start!243536 ((_ is Union!7353) r!27340)) b!2492989))

(assert (= (and start!243536 ((_ is Cons!29318) tl!4068)) b!2492992))

(declare-fun m!2858933 () Bool)

(assert (=> b!2492987 m!2858933))

(declare-fun m!2858935 () Bool)

(assert (=> b!2492990 m!2858935))

(assert (=> b!2492990 m!2858935))

(declare-fun m!2858937 () Bool)

(assert (=> b!2492990 m!2858937))

(declare-fun m!2858939 () Bool)

(assert (=> b!2492990 m!2858939))

(declare-fun m!2858941 () Bool)

(assert (=> start!243536 m!2858941))

(declare-fun m!2858943 () Bool)

(assert (=> b!2492994 m!2858943))

(check-sat (not b!2492993) tp_is_empty!12561 (not b!2492994) (not b!2492991) (not start!243536) (not b!2492987) (not b!2492990) (not b!2492992) (not b!2492989))
(check-sat)
(get-model)

(declare-fun b!2493048 () Bool)

(declare-fun e!1582236 () Regex!7353)

(declare-fun call!153436 () Regex!7353)

(declare-fun call!153438 () Regex!7353)

(assert (=> b!2493048 (= e!1582236 (Union!7353 call!153436 call!153438))))

(declare-fun b!2493049 () Bool)

(declare-fun c!396361 () Bool)

(assert (=> b!2493049 (= c!396361 ((_ is Union!7353) (reg!7682 r!27340)))))

(declare-fun e!1582238 () Regex!7353)

(assert (=> b!2493049 (= e!1582238 e!1582236)))

(declare-fun b!2493050 () Bool)

(declare-fun e!1582239 () Regex!7353)

(declare-fun call!153437 () Regex!7353)

(assert (=> b!2493050 (= e!1582239 (Concat!12049 call!153437 (reg!7682 r!27340)))))

(declare-fun bm!153430 () Bool)

(declare-fun c!396362 () Bool)

(assert (=> bm!153430 (= call!153438 (derivativeStep!1922 (ite c!396361 (regTwo!15219 (reg!7682 r!27340)) (ite c!396362 (reg!7682 (reg!7682 r!27340)) (regOne!15218 (reg!7682 r!27340)))) c!14016))))

(declare-fun d!714576 () Bool)

(declare-fun lt!894104 () Regex!7353)

(assert (=> d!714576 (validRegex!2979 lt!894104)))

(declare-fun e!1582237 () Regex!7353)

(assert (=> d!714576 (= lt!894104 e!1582237)))

(declare-fun c!396363 () Bool)

(assert (=> d!714576 (= c!396363 (or ((_ is EmptyExpr!7353) (reg!7682 r!27340)) ((_ is EmptyLang!7353) (reg!7682 r!27340))))))

(assert (=> d!714576 (validRegex!2979 (reg!7682 r!27340))))

(assert (=> d!714576 (= (derivativeStep!1922 (reg!7682 r!27340) c!14016) lt!894104)))

(declare-fun b!2493051 () Bool)

(assert (=> b!2493051 (= e!1582238 (ite (= c!14016 (c!396341 (reg!7682 r!27340))) EmptyExpr!7353 EmptyLang!7353))))

(declare-fun bm!153431 () Bool)

(assert (=> bm!153431 (= call!153437 call!153438)))

(declare-fun b!2493052 () Bool)

(assert (=> b!2493052 (= e!1582237 EmptyLang!7353)))

(declare-fun e!1582235 () Regex!7353)

(declare-fun b!2493053 () Bool)

(declare-fun call!153435 () Regex!7353)

(assert (=> b!2493053 (= e!1582235 (Union!7353 (Concat!12049 call!153435 (regTwo!15218 (reg!7682 r!27340))) call!153436))))

(declare-fun bm!153432 () Bool)

(assert (=> bm!153432 (= call!153436 (derivativeStep!1922 (ite c!396361 (regOne!15219 (reg!7682 r!27340)) (regTwo!15218 (reg!7682 r!27340))) c!14016))))

(declare-fun bm!153433 () Bool)

(assert (=> bm!153433 (= call!153435 call!153437)))

(declare-fun b!2493054 () Bool)

(assert (=> b!2493054 (= e!1582237 e!1582238)))

(declare-fun c!396364 () Bool)

(assert (=> b!2493054 (= c!396364 ((_ is ElementMatch!7353) (reg!7682 r!27340)))))

(declare-fun b!2493055 () Bool)

(assert (=> b!2493055 (= e!1582235 (Union!7353 (Concat!12049 call!153435 (regTwo!15218 (reg!7682 r!27340))) EmptyLang!7353))))

(declare-fun b!2493056 () Bool)

(declare-fun c!396365 () Bool)

(assert (=> b!2493056 (= c!396365 (nullable!2270 (regOne!15218 (reg!7682 r!27340))))))

(assert (=> b!2493056 (= e!1582239 e!1582235)))

(declare-fun b!2493057 () Bool)

(assert (=> b!2493057 (= e!1582236 e!1582239)))

(assert (=> b!2493057 (= c!396362 ((_ is Star!7353) (reg!7682 r!27340)))))

(assert (= (and d!714576 c!396363) b!2493052))

(assert (= (and d!714576 (not c!396363)) b!2493054))

(assert (= (and b!2493054 c!396364) b!2493051))

(assert (= (and b!2493054 (not c!396364)) b!2493049))

(assert (= (and b!2493049 c!396361) b!2493048))

(assert (= (and b!2493049 (not c!396361)) b!2493057))

(assert (= (and b!2493057 c!396362) b!2493050))

(assert (= (and b!2493057 (not c!396362)) b!2493056))

(assert (= (and b!2493056 c!396365) b!2493053))

(assert (= (and b!2493056 (not c!396365)) b!2493055))

(assert (= (or b!2493053 b!2493055) bm!153433))

(assert (= (or b!2493050 bm!153433) bm!153431))

(assert (= (or b!2493048 bm!153431) bm!153430))

(assert (= (or b!2493048 b!2493053) bm!153432))

(declare-fun m!2858961 () Bool)

(assert (=> bm!153430 m!2858961))

(declare-fun m!2858963 () Bool)

(assert (=> d!714576 m!2858963))

(assert (=> d!714576 m!2858933))

(declare-fun m!2858965 () Bool)

(assert (=> bm!153432 m!2858965))

(declare-fun m!2858967 () Bool)

(assert (=> b!2493056 m!2858967))

(assert (=> b!2492994 d!714576))

(declare-fun call!153454 () Bool)

(declare-fun c!396380 () Bool)

(declare-fun bm!153448 () Bool)

(declare-fun c!396381 () Bool)

(assert (=> bm!153448 (= call!153454 (validRegex!2979 (ite c!396380 (reg!7682 (reg!7682 r!27340)) (ite c!396381 (regTwo!15219 (reg!7682 r!27340)) (regOne!15218 (reg!7682 r!27340))))))))

(declare-fun b!2493096 () Bool)

(declare-fun e!1582269 () Bool)

(assert (=> b!2493096 (= e!1582269 call!153454)))

(declare-fun b!2493097 () Bool)

(declare-fun e!1582270 () Bool)

(declare-fun call!153455 () Bool)

(assert (=> b!2493097 (= e!1582270 call!153455)))

(declare-fun bm!153449 () Bool)

(assert (=> bm!153449 (= call!153455 (validRegex!2979 (ite c!396381 (regOne!15219 (reg!7682 r!27340)) (regTwo!15218 (reg!7682 r!27340)))))))

(declare-fun b!2493098 () Bool)

(declare-fun res!1054617 () Bool)

(declare-fun e!1582268 () Bool)

(assert (=> b!2493098 (=> res!1054617 e!1582268)))

(assert (=> b!2493098 (= res!1054617 (not ((_ is Concat!12049) (reg!7682 r!27340))))))

(declare-fun e!1582265 () Bool)

(assert (=> b!2493098 (= e!1582265 e!1582268)))

(declare-fun bm!153450 () Bool)

(declare-fun call!153453 () Bool)

(assert (=> bm!153450 (= call!153453 call!153454)))

(declare-fun b!2493099 () Bool)

(assert (=> b!2493099 (= e!1582268 e!1582270)))

(declare-fun res!1054619 () Bool)

(assert (=> b!2493099 (=> (not res!1054619) (not e!1582270))))

(assert (=> b!2493099 (= res!1054619 call!153453)))

(declare-fun b!2493100 () Bool)

(declare-fun e!1582266 () Bool)

(assert (=> b!2493100 (= e!1582266 e!1582265)))

(assert (=> b!2493100 (= c!396381 ((_ is Union!7353) (reg!7682 r!27340)))))

(declare-fun b!2493102 () Bool)

(assert (=> b!2493102 (= e!1582266 e!1582269)))

(declare-fun res!1054616 () Bool)

(assert (=> b!2493102 (= res!1054616 (not (nullable!2270 (reg!7682 (reg!7682 r!27340)))))))

(assert (=> b!2493102 (=> (not res!1054616) (not e!1582269))))

(declare-fun d!714584 () Bool)

(declare-fun res!1054620 () Bool)

(declare-fun e!1582267 () Bool)

(assert (=> d!714584 (=> res!1054620 e!1582267)))

(assert (=> d!714584 (= res!1054620 ((_ is ElementMatch!7353) (reg!7682 r!27340)))))

(assert (=> d!714584 (= (validRegex!2979 (reg!7682 r!27340)) e!1582267)))

(declare-fun b!2493101 () Bool)

(assert (=> b!2493101 (= e!1582267 e!1582266)))

(assert (=> b!2493101 (= c!396380 ((_ is Star!7353) (reg!7682 r!27340)))))

(declare-fun b!2493103 () Bool)

(declare-fun e!1582264 () Bool)

(assert (=> b!2493103 (= e!1582264 call!153453)))

(declare-fun b!2493104 () Bool)

(declare-fun res!1054618 () Bool)

(assert (=> b!2493104 (=> (not res!1054618) (not e!1582264))))

(assert (=> b!2493104 (= res!1054618 call!153455)))

(assert (=> b!2493104 (= e!1582265 e!1582264)))

(assert (= (and d!714584 (not res!1054620)) b!2493101))

(assert (= (and b!2493101 c!396380) b!2493102))

(assert (= (and b!2493101 (not c!396380)) b!2493100))

(assert (= (and b!2493102 res!1054616) b!2493096))

(assert (= (and b!2493100 c!396381) b!2493104))

(assert (= (and b!2493100 (not c!396381)) b!2493098))

(assert (= (and b!2493104 res!1054618) b!2493103))

(assert (= (and b!2493098 (not res!1054617)) b!2493099))

(assert (= (and b!2493099 res!1054619) b!2493097))

(assert (= (or b!2493104 b!2493097) bm!153449))

(assert (= (or b!2493103 b!2493099) bm!153450))

(assert (= (or b!2493096 bm!153450) bm!153448))

(declare-fun m!2858969 () Bool)

(assert (=> bm!153448 m!2858969))

(declare-fun m!2858971 () Bool)

(assert (=> bm!153449 m!2858971))

(declare-fun m!2858973 () Bool)

(assert (=> b!2493102 m!2858973))

(assert (=> b!2492987 d!714584))

(declare-fun call!153457 () Bool)

(declare-fun bm!153451 () Bool)

(declare-fun c!396383 () Bool)

(declare-fun c!396382 () Bool)

(assert (=> bm!153451 (= call!153457 (validRegex!2979 (ite c!396382 (reg!7682 r!27340) (ite c!396383 (regTwo!15219 r!27340) (regOne!15218 r!27340)))))))

(declare-fun b!2493105 () Bool)

(declare-fun e!1582276 () Bool)

(assert (=> b!2493105 (= e!1582276 call!153457)))

(declare-fun b!2493106 () Bool)

(declare-fun e!1582277 () Bool)

(declare-fun call!153458 () Bool)

(assert (=> b!2493106 (= e!1582277 call!153458)))

(declare-fun bm!153452 () Bool)

(assert (=> bm!153452 (= call!153458 (validRegex!2979 (ite c!396383 (regOne!15219 r!27340) (regTwo!15218 r!27340))))))

(declare-fun b!2493107 () Bool)

(declare-fun res!1054622 () Bool)

(declare-fun e!1582275 () Bool)

(assert (=> b!2493107 (=> res!1054622 e!1582275)))

(assert (=> b!2493107 (= res!1054622 (not ((_ is Concat!12049) r!27340)))))

(declare-fun e!1582272 () Bool)

(assert (=> b!2493107 (= e!1582272 e!1582275)))

(declare-fun bm!153453 () Bool)

(declare-fun call!153456 () Bool)

(assert (=> bm!153453 (= call!153456 call!153457)))

(declare-fun b!2493108 () Bool)

(assert (=> b!2493108 (= e!1582275 e!1582277)))

(declare-fun res!1054624 () Bool)

(assert (=> b!2493108 (=> (not res!1054624) (not e!1582277))))

(assert (=> b!2493108 (= res!1054624 call!153456)))

(declare-fun b!2493109 () Bool)

(declare-fun e!1582273 () Bool)

(assert (=> b!2493109 (= e!1582273 e!1582272)))

(assert (=> b!2493109 (= c!396383 ((_ is Union!7353) r!27340))))

(declare-fun b!2493111 () Bool)

(assert (=> b!2493111 (= e!1582273 e!1582276)))

(declare-fun res!1054621 () Bool)

(assert (=> b!2493111 (= res!1054621 (not (nullable!2270 (reg!7682 r!27340))))))

(assert (=> b!2493111 (=> (not res!1054621) (not e!1582276))))

(declare-fun d!714586 () Bool)

(declare-fun res!1054625 () Bool)

(declare-fun e!1582274 () Bool)

(assert (=> d!714586 (=> res!1054625 e!1582274)))

(assert (=> d!714586 (= res!1054625 ((_ is ElementMatch!7353) r!27340))))

(assert (=> d!714586 (= (validRegex!2979 r!27340) e!1582274)))

(declare-fun b!2493110 () Bool)

(assert (=> b!2493110 (= e!1582274 e!1582273)))

(assert (=> b!2493110 (= c!396382 ((_ is Star!7353) r!27340))))

(declare-fun b!2493112 () Bool)

(declare-fun e!1582271 () Bool)

(assert (=> b!2493112 (= e!1582271 call!153456)))

(declare-fun b!2493113 () Bool)

(declare-fun res!1054623 () Bool)

(assert (=> b!2493113 (=> (not res!1054623) (not e!1582271))))

(assert (=> b!2493113 (= res!1054623 call!153458)))

(assert (=> b!2493113 (= e!1582272 e!1582271)))

(assert (= (and d!714586 (not res!1054625)) b!2493110))

(assert (= (and b!2493110 c!396382) b!2493111))

(assert (= (and b!2493110 (not c!396382)) b!2493109))

(assert (= (and b!2493111 res!1054621) b!2493105))

(assert (= (and b!2493109 c!396383) b!2493113))

(assert (= (and b!2493109 (not c!396383)) b!2493107))

(assert (= (and b!2493113 res!1054623) b!2493112))

(assert (= (and b!2493107 (not res!1054622)) b!2493108))

(assert (= (and b!2493108 res!1054624) b!2493106))

(assert (= (or b!2493113 b!2493106) bm!153452))

(assert (= (or b!2493112 b!2493108) bm!153453))

(assert (= (or b!2493105 bm!153453) bm!153451))

(declare-fun m!2858975 () Bool)

(assert (=> bm!153451 m!2858975))

(declare-fun m!2858977 () Bool)

(assert (=> bm!153452 m!2858977))

(declare-fun m!2858979 () Bool)

(assert (=> b!2493111 m!2858979))

(assert (=> start!243536 d!714586))

(declare-fun d!714588 () Bool)

(declare-fun nullableFct!563 (Regex!7353) Bool)

(assert (=> d!714588 (= (nullable!2270 (derivative!48 lt!894098 tl!4068)) (nullableFct!563 (derivative!48 lt!894098 tl!4068)))))

(declare-fun bs!468401 () Bool)

(assert (= bs!468401 d!714588))

(assert (=> bs!468401 m!2858935))

(declare-fun m!2858981 () Bool)

(assert (=> bs!468401 m!2858981))

(assert (=> b!2492990 d!714588))

(declare-fun d!714590 () Bool)

(declare-fun lt!894111 () Regex!7353)

(assert (=> d!714590 (validRegex!2979 lt!894111)))

(declare-fun e!1582297 () Regex!7353)

(assert (=> d!714590 (= lt!894111 e!1582297)))

(declare-fun c!396398 () Bool)

(assert (=> d!714590 (= c!396398 ((_ is Cons!29318) tl!4068))))

(assert (=> d!714590 (validRegex!2979 lt!894098)))

(assert (=> d!714590 (= (derivative!48 lt!894098 tl!4068) lt!894111)))

(declare-fun b!2493147 () Bool)

(assert (=> b!2493147 (= e!1582297 (derivative!48 (derivativeStep!1922 lt!894098 (h!34738 tl!4068)) (t!211117 tl!4068)))))

(declare-fun b!2493148 () Bool)

(assert (=> b!2493148 (= e!1582297 lt!894098)))

(assert (= (and d!714590 c!396398) b!2493147))

(assert (= (and d!714590 (not c!396398)) b!2493148))

(declare-fun m!2859005 () Bool)

(assert (=> d!714590 m!2859005))

(declare-fun m!2859007 () Bool)

(assert (=> d!714590 m!2859007))

(declare-fun m!2859009 () Bool)

(assert (=> b!2493147 m!2859009))

(assert (=> b!2493147 m!2859009))

(declare-fun m!2859011 () Bool)

(assert (=> b!2493147 m!2859011))

(assert (=> b!2492990 d!714590))

(declare-fun b!2493157 () Bool)

(declare-fun e!1582301 () Regex!7353)

(declare-fun call!153471 () Regex!7353)

(declare-fun call!153473 () Regex!7353)

(assert (=> b!2493157 (= e!1582301 (Union!7353 call!153471 call!153473))))

(declare-fun b!2493158 () Bool)

(declare-fun c!396399 () Bool)

(assert (=> b!2493158 (= c!396399 ((_ is Union!7353) r!27340))))

(declare-fun e!1582303 () Regex!7353)

(assert (=> b!2493158 (= e!1582303 e!1582301)))

(declare-fun b!2493159 () Bool)

(declare-fun e!1582304 () Regex!7353)

(declare-fun call!153472 () Regex!7353)

(assert (=> b!2493159 (= e!1582304 (Concat!12049 call!153472 r!27340))))

(declare-fun bm!153465 () Bool)

(declare-fun c!396400 () Bool)

(assert (=> bm!153465 (= call!153473 (derivativeStep!1922 (ite c!396399 (regTwo!15219 r!27340) (ite c!396400 (reg!7682 r!27340) (regOne!15218 r!27340))) c!14016))))

(declare-fun d!714596 () Bool)

(declare-fun lt!894112 () Regex!7353)

(assert (=> d!714596 (validRegex!2979 lt!894112)))

(declare-fun e!1582302 () Regex!7353)

(assert (=> d!714596 (= lt!894112 e!1582302)))

(declare-fun c!396401 () Bool)

(assert (=> d!714596 (= c!396401 (or ((_ is EmptyExpr!7353) r!27340) ((_ is EmptyLang!7353) r!27340)))))

(assert (=> d!714596 (validRegex!2979 r!27340)))

(assert (=> d!714596 (= (derivativeStep!1922 r!27340 c!14016) lt!894112)))

(declare-fun b!2493160 () Bool)

(assert (=> b!2493160 (= e!1582303 (ite (= c!14016 (c!396341 r!27340)) EmptyExpr!7353 EmptyLang!7353))))

(declare-fun bm!153466 () Bool)

(assert (=> bm!153466 (= call!153472 call!153473)))

(declare-fun b!2493161 () Bool)

(assert (=> b!2493161 (= e!1582302 EmptyLang!7353)))

(declare-fun e!1582300 () Regex!7353)

(declare-fun call!153470 () Regex!7353)

(declare-fun b!2493162 () Bool)

(assert (=> b!2493162 (= e!1582300 (Union!7353 (Concat!12049 call!153470 (regTwo!15218 r!27340)) call!153471))))

(declare-fun bm!153467 () Bool)

(assert (=> bm!153467 (= call!153471 (derivativeStep!1922 (ite c!396399 (regOne!15219 r!27340) (regTwo!15218 r!27340)) c!14016))))

(declare-fun bm!153468 () Bool)

(assert (=> bm!153468 (= call!153470 call!153472)))

(declare-fun b!2493163 () Bool)

(assert (=> b!2493163 (= e!1582302 e!1582303)))

(declare-fun c!396402 () Bool)

(assert (=> b!2493163 (= c!396402 ((_ is ElementMatch!7353) r!27340))))

(declare-fun b!2493164 () Bool)

(assert (=> b!2493164 (= e!1582300 (Union!7353 (Concat!12049 call!153470 (regTwo!15218 r!27340)) EmptyLang!7353))))

(declare-fun b!2493165 () Bool)

(declare-fun c!396403 () Bool)

(assert (=> b!2493165 (= c!396403 (nullable!2270 (regOne!15218 r!27340)))))

(assert (=> b!2493165 (= e!1582304 e!1582300)))

(declare-fun b!2493166 () Bool)

(assert (=> b!2493166 (= e!1582301 e!1582304)))

(assert (=> b!2493166 (= c!396400 ((_ is Star!7353) r!27340))))

(assert (= (and d!714596 c!396401) b!2493161))

(assert (= (and d!714596 (not c!396401)) b!2493163))

(assert (= (and b!2493163 c!396402) b!2493160))

(assert (= (and b!2493163 (not c!396402)) b!2493158))

(assert (= (and b!2493158 c!396399) b!2493157))

(assert (= (and b!2493158 (not c!396399)) b!2493166))

(assert (= (and b!2493166 c!396400) b!2493159))

(assert (= (and b!2493166 (not c!396400)) b!2493165))

(assert (= (and b!2493165 c!396403) b!2493162))

(assert (= (and b!2493165 (not c!396403)) b!2493164))

(assert (= (or b!2493162 b!2493164) bm!153468))

(assert (= (or b!2493159 bm!153468) bm!153466))

(assert (= (or b!2493157 bm!153466) bm!153465))

(assert (= (or b!2493157 b!2493162) bm!153467))

(declare-fun m!2859013 () Bool)

(assert (=> bm!153465 m!2859013))

(declare-fun m!2859015 () Bool)

(assert (=> d!714596 m!2859015))

(assert (=> d!714596 m!2858941))

(declare-fun m!2859017 () Bool)

(assert (=> bm!153467 m!2859017))

(declare-fun m!2859019 () Bool)

(assert (=> b!2493165 m!2859019))

(assert (=> b!2492990 d!714596))

(declare-fun e!1582314 () Bool)

(assert (=> b!2492993 (= tp!798497 e!1582314)))

(declare-fun b!2493203 () Bool)

(declare-fun tp!798550 () Bool)

(declare-fun tp!798547 () Bool)

(assert (=> b!2493203 (= e!1582314 (and tp!798550 tp!798547))))

(declare-fun b!2493202 () Bool)

(declare-fun tp!798549 () Bool)

(assert (=> b!2493202 (= e!1582314 tp!798549)))

(declare-fun b!2493201 () Bool)

(declare-fun tp!798548 () Bool)

(declare-fun tp!798546 () Bool)

(assert (=> b!2493201 (= e!1582314 (and tp!798548 tp!798546))))

(declare-fun b!2493200 () Bool)

(assert (=> b!2493200 (= e!1582314 tp_is_empty!12561)))

(assert (= (and b!2492993 ((_ is ElementMatch!7353) (reg!7682 r!27340))) b!2493200))

(assert (= (and b!2492993 ((_ is Concat!12049) (reg!7682 r!27340))) b!2493201))

(assert (= (and b!2492993 ((_ is Star!7353) (reg!7682 r!27340))) b!2493202))

(assert (= (and b!2492993 ((_ is Union!7353) (reg!7682 r!27340))) b!2493203))

(declare-fun b!2493212 () Bool)

(declare-fun e!1582318 () Bool)

(declare-fun tp!798558 () Bool)

(assert (=> b!2493212 (= e!1582318 (and tp_is_empty!12561 tp!798558))))

(assert (=> b!2492992 (= tp!798502 e!1582318)))

(assert (= (and b!2492992 ((_ is Cons!29318) (t!211117 tl!4068))) b!2493212))

(declare-fun e!1582319 () Bool)

(assert (=> b!2492991 (= tp!798500 e!1582319)))

(declare-fun b!2493216 () Bool)

(declare-fun tp!798563 () Bool)

(declare-fun tp!798560 () Bool)

(assert (=> b!2493216 (= e!1582319 (and tp!798563 tp!798560))))

(declare-fun b!2493215 () Bool)

(declare-fun tp!798562 () Bool)

(assert (=> b!2493215 (= e!1582319 tp!798562)))

(declare-fun b!2493214 () Bool)

(declare-fun tp!798561 () Bool)

(declare-fun tp!798559 () Bool)

(assert (=> b!2493214 (= e!1582319 (and tp!798561 tp!798559))))

(declare-fun b!2493213 () Bool)

(assert (=> b!2493213 (= e!1582319 tp_is_empty!12561)))

(assert (= (and b!2492991 ((_ is ElementMatch!7353) (regOne!15218 r!27340))) b!2493213))

(assert (= (and b!2492991 ((_ is Concat!12049) (regOne!15218 r!27340))) b!2493214))

(assert (= (and b!2492991 ((_ is Star!7353) (regOne!15218 r!27340))) b!2493215))

(assert (= (and b!2492991 ((_ is Union!7353) (regOne!15218 r!27340))) b!2493216))

(declare-fun e!1582320 () Bool)

(assert (=> b!2492991 (= tp!798499 e!1582320)))

(declare-fun b!2493220 () Bool)

(declare-fun tp!798568 () Bool)

(declare-fun tp!798565 () Bool)

(assert (=> b!2493220 (= e!1582320 (and tp!798568 tp!798565))))

(declare-fun b!2493219 () Bool)

(declare-fun tp!798567 () Bool)

(assert (=> b!2493219 (= e!1582320 tp!798567)))

(declare-fun b!2493218 () Bool)

(declare-fun tp!798566 () Bool)

(declare-fun tp!798564 () Bool)

(assert (=> b!2493218 (= e!1582320 (and tp!798566 tp!798564))))

(declare-fun b!2493217 () Bool)

(assert (=> b!2493217 (= e!1582320 tp_is_empty!12561)))

(assert (= (and b!2492991 ((_ is ElementMatch!7353) (regTwo!15218 r!27340))) b!2493217))

(assert (= (and b!2492991 ((_ is Concat!12049) (regTwo!15218 r!27340))) b!2493218))

(assert (= (and b!2492991 ((_ is Star!7353) (regTwo!15218 r!27340))) b!2493219))

(assert (= (and b!2492991 ((_ is Union!7353) (regTwo!15218 r!27340))) b!2493220))

(declare-fun e!1582321 () Bool)

(assert (=> b!2492989 (= tp!798501 e!1582321)))

(declare-fun b!2493224 () Bool)

(declare-fun tp!798573 () Bool)

(declare-fun tp!798570 () Bool)

(assert (=> b!2493224 (= e!1582321 (and tp!798573 tp!798570))))

(declare-fun b!2493223 () Bool)

(declare-fun tp!798572 () Bool)

(assert (=> b!2493223 (= e!1582321 tp!798572)))

(declare-fun b!2493222 () Bool)

(declare-fun tp!798571 () Bool)

(declare-fun tp!798569 () Bool)

(assert (=> b!2493222 (= e!1582321 (and tp!798571 tp!798569))))

(declare-fun b!2493221 () Bool)

(assert (=> b!2493221 (= e!1582321 tp_is_empty!12561)))

(assert (= (and b!2492989 ((_ is ElementMatch!7353) (regOne!15219 r!27340))) b!2493221))

(assert (= (and b!2492989 ((_ is Concat!12049) (regOne!15219 r!27340))) b!2493222))

(assert (= (and b!2492989 ((_ is Star!7353) (regOne!15219 r!27340))) b!2493223))

(assert (= (and b!2492989 ((_ is Union!7353) (regOne!15219 r!27340))) b!2493224))

(declare-fun e!1582322 () Bool)

(assert (=> b!2492989 (= tp!798498 e!1582322)))

(declare-fun b!2493228 () Bool)

(declare-fun tp!798578 () Bool)

(declare-fun tp!798575 () Bool)

(assert (=> b!2493228 (= e!1582322 (and tp!798578 tp!798575))))

(declare-fun b!2493227 () Bool)

(declare-fun tp!798577 () Bool)

(assert (=> b!2493227 (= e!1582322 tp!798577)))

(declare-fun b!2493226 () Bool)

(declare-fun tp!798576 () Bool)

(declare-fun tp!798574 () Bool)

(assert (=> b!2493226 (= e!1582322 (and tp!798576 tp!798574))))

(declare-fun b!2493225 () Bool)

(assert (=> b!2493225 (= e!1582322 tp_is_empty!12561)))

(assert (= (and b!2492989 ((_ is ElementMatch!7353) (regTwo!15219 r!27340))) b!2493225))

(assert (= (and b!2492989 ((_ is Concat!12049) (regTwo!15219 r!27340))) b!2493226))

(assert (= (and b!2492989 ((_ is Star!7353) (regTwo!15219 r!27340))) b!2493227))

(assert (= (and b!2492989 ((_ is Union!7353) (regTwo!15219 r!27340))) b!2493228))

(check-sat (not bm!153432) (not b!2493220) (not d!714576) (not b!2493218) (not bm!153452) (not b!2493214) (not d!714596) (not b!2493223) (not b!2493102) (not bm!153430) (not b!2493222) (not b!2493203) (not b!2493212) (not b!2493219) (not d!714588) (not b!2493227) (not b!2493216) (not b!2493226) tp_is_empty!12561 (not b!2493111) (not bm!153467) (not bm!153451) (not b!2493147) (not b!2493224) (not b!2493165) (not bm!153449) (not b!2493215) (not bm!153448) (not b!2493201) (not b!2493202) (not b!2493228) (not d!714590) (not bm!153465) (not b!2493056))
(check-sat)
