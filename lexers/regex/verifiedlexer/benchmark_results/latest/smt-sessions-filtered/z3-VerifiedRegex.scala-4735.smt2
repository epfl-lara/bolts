; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244684 () Bool)

(assert start!244684)

(declare-fun b!2508228 () Bool)

(declare-fun e!1589980 () Bool)

(declare-fun tp!802285 () Bool)

(assert (=> b!2508228 (= e!1589980 tp!802285)))

(declare-fun b!2508229 () Bool)

(declare-fun tp!802284 () Bool)

(declare-fun tp!802286 () Bool)

(assert (=> b!2508229 (= e!1589980 (and tp!802284 tp!802286))))

(declare-fun b!2508230 () Bool)

(declare-fun res!1060472 () Bool)

(declare-fun e!1589981 () Bool)

(assert (=> b!2508230 (=> (not res!1060472) (not e!1589981))))

(declare-datatypes ((C!15048 0))(
  ( (C!15049 (val!9176 Int)) )
))
(declare-datatypes ((Regex!7445 0))(
  ( (ElementMatch!7445 (c!399443 C!15048)) (Concat!12141 (regOne!15402 Regex!7445) (regTwo!15402 Regex!7445)) (EmptyExpr!7445) (Star!7445 (reg!7774 Regex!7445)) (EmptyLang!7445) (Union!7445 (regOne!15403 Regex!7445) (regTwo!15403 Regex!7445)) )
))
(declare-fun r!27340 () Regex!7445)

(declare-fun nullable!2362 (Regex!7445) Bool)

(assert (=> b!2508230 (= res!1060472 (not (nullable!2362 (regOne!15402 r!27340))))))

(declare-fun b!2508231 () Bool)

(declare-fun res!1060470 () Bool)

(assert (=> b!2508231 (=> (not res!1060470) (not e!1589981))))

(declare-datatypes ((List!29510 0))(
  ( (Nil!29410) (Cons!29410 (h!34830 C!15048) (t!211209 List!29510)) )
))
(declare-fun tl!4068 () List!29510)

(declare-fun c!14016 () C!15048)

(declare-fun derivative!140 (Regex!7445 List!29510) Regex!7445)

(declare-fun derivativeStep!2014 (Regex!7445 C!15048) Regex!7445)

(assert (=> b!2508231 (= res!1060470 (nullable!2362 (derivative!140 (derivativeStep!2014 r!27340 c!14016) tl!4068)))))

(declare-fun b!2508232 () Bool)

(declare-fun res!1060471 () Bool)

(assert (=> b!2508232 (=> (not res!1060471) (not e!1589981))))

(get-info :version)

(assert (=> b!2508232 (= res!1060471 (and (not ((_ is EmptyExpr!7445) r!27340)) (not ((_ is EmptyLang!7445) r!27340)) (not ((_ is ElementMatch!7445) r!27340)) (not ((_ is Union!7445) r!27340)) (not ((_ is Star!7445) r!27340))))))

(declare-fun b!2508233 () Bool)

(declare-fun tp_is_empty!12745 () Bool)

(assert (=> b!2508233 (= e!1589980 tp_is_empty!12745)))

(declare-fun res!1060469 () Bool)

(assert (=> start!244684 (=> (not res!1060469) (not e!1589981))))

(declare-fun validRegex!3071 (Regex!7445) Bool)

(assert (=> start!244684 (= res!1060469 (validRegex!3071 r!27340))))

(assert (=> start!244684 e!1589981))

(assert (=> start!244684 e!1589980))

(assert (=> start!244684 tp_is_empty!12745))

(declare-fun e!1589982 () Bool)

(assert (=> start!244684 e!1589982))

(declare-fun b!2508234 () Bool)

(declare-fun tp!802282 () Bool)

(declare-fun tp!802281 () Bool)

(assert (=> b!2508234 (= e!1589980 (and tp!802282 tp!802281))))

(declare-fun b!2508235 () Bool)

(assert (=> b!2508235 (= e!1589981 (not (validRegex!3071 (regOne!15402 r!27340))))))

(declare-fun b!2508236 () Bool)

(declare-fun tp!802283 () Bool)

(assert (=> b!2508236 (= e!1589982 (and tp_is_empty!12745 tp!802283))))

(assert (= (and start!244684 res!1060469) b!2508231))

(assert (= (and b!2508231 res!1060470) b!2508232))

(assert (= (and b!2508232 res!1060471) b!2508230))

(assert (= (and b!2508230 res!1060472) b!2508235))

(assert (= (and start!244684 ((_ is ElementMatch!7445) r!27340)) b!2508233))

(assert (= (and start!244684 ((_ is Concat!12141) r!27340)) b!2508234))

(assert (= (and start!244684 ((_ is Star!7445) r!27340)) b!2508228))

(assert (= (and start!244684 ((_ is Union!7445) r!27340)) b!2508229))

(assert (= (and start!244684 ((_ is Cons!29410) tl!4068)) b!2508236))

(declare-fun m!2868141 () Bool)

(assert (=> b!2508230 m!2868141))

(declare-fun m!2868143 () Bool)

(assert (=> b!2508231 m!2868143))

(assert (=> b!2508231 m!2868143))

(declare-fun m!2868145 () Bool)

(assert (=> b!2508231 m!2868145))

(assert (=> b!2508231 m!2868145))

(declare-fun m!2868147 () Bool)

(assert (=> b!2508231 m!2868147))

(declare-fun m!2868149 () Bool)

(assert (=> start!244684 m!2868149))

(declare-fun m!2868151 () Bool)

(assert (=> b!2508235 m!2868151))

(check-sat (not b!2508231) (not b!2508229) (not b!2508228) (not b!2508230) (not b!2508234) (not b!2508236) (not b!2508235) tp_is_empty!12745 (not start!244684))
(check-sat)
(get-model)

(declare-fun d!716332 () Bool)

(declare-fun nullableFct!617 (Regex!7445) Bool)

(assert (=> d!716332 (= (nullable!2362 (regOne!15402 r!27340)) (nullableFct!617 (regOne!15402 r!27340)))))

(declare-fun bs!468712 () Bool)

(assert (= bs!468712 d!716332))

(declare-fun m!2868153 () Bool)

(assert (=> bs!468712 m!2868153))

(assert (=> b!2508230 d!716332))

(declare-fun d!716336 () Bool)

(assert (=> d!716336 (= (nullable!2362 (derivative!140 (derivativeStep!2014 r!27340 c!14016) tl!4068)) (nullableFct!617 (derivative!140 (derivativeStep!2014 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468713 () Bool)

(assert (= bs!468713 d!716336))

(assert (=> bs!468713 m!2868145))

(declare-fun m!2868155 () Bool)

(assert (=> bs!468713 m!2868155))

(assert (=> b!2508231 d!716336))

(declare-fun d!716338 () Bool)

(declare-fun lt!897235 () Regex!7445)

(assert (=> d!716338 (validRegex!3071 lt!897235)))

(declare-fun e!1589989 () Regex!7445)

(assert (=> d!716338 (= lt!897235 e!1589989)))

(declare-fun c!399448 () Bool)

(assert (=> d!716338 (= c!399448 ((_ is Cons!29410) tl!4068))))

(assert (=> d!716338 (validRegex!3071 (derivativeStep!2014 r!27340 c!14016))))

(assert (=> d!716338 (= (derivative!140 (derivativeStep!2014 r!27340 c!14016) tl!4068) lt!897235)))

(declare-fun b!2508247 () Bool)

(assert (=> b!2508247 (= e!1589989 (derivative!140 (derivativeStep!2014 (derivativeStep!2014 r!27340 c!14016) (h!34830 tl!4068)) (t!211209 tl!4068)))))

(declare-fun b!2508248 () Bool)

(assert (=> b!2508248 (= e!1589989 (derivativeStep!2014 r!27340 c!14016))))

(assert (= (and d!716338 c!399448) b!2508247))

(assert (= (and d!716338 (not c!399448)) b!2508248))

(declare-fun m!2868159 () Bool)

(assert (=> d!716338 m!2868159))

(assert (=> d!716338 m!2868143))

(declare-fun m!2868161 () Bool)

(assert (=> d!716338 m!2868161))

(assert (=> b!2508247 m!2868143))

(declare-fun m!2868163 () Bool)

(assert (=> b!2508247 m!2868163))

(assert (=> b!2508247 m!2868163))

(declare-fun m!2868165 () Bool)

(assert (=> b!2508247 m!2868165))

(assert (=> b!2508231 d!716338))

(declare-fun b!2508303 () Bool)

(declare-fun e!1590029 () Regex!7445)

(declare-fun e!1590030 () Regex!7445)

(assert (=> b!2508303 (= e!1590029 e!1590030)))

(declare-fun c!399470 () Bool)

(assert (=> b!2508303 (= c!399470 ((_ is ElementMatch!7445) r!27340))))

(declare-fun b!2508304 () Bool)

(declare-fun c!399469 () Bool)

(assert (=> b!2508304 (= c!399469 ((_ is Union!7445) r!27340))))

(declare-fun e!1590028 () Regex!7445)

(assert (=> b!2508304 (= e!1590030 e!1590028)))

(declare-fun b!2508305 () Bool)

(declare-fun e!1590027 () Regex!7445)

(declare-fun call!155409 () Regex!7445)

(assert (=> b!2508305 (= e!1590027 (Concat!12141 call!155409 r!27340))))

(declare-fun b!2508306 () Bool)

(assert (=> b!2508306 (= e!1590028 e!1590027)))

(declare-fun c!399467 () Bool)

(assert (=> b!2508306 (= c!399467 ((_ is Star!7445) r!27340))))

(declare-fun bm!155403 () Bool)

(declare-fun call!155408 () Regex!7445)

(assert (=> bm!155403 (= call!155408 call!155409)))

(declare-fun call!155410 () Regex!7445)

(declare-fun bm!155404 () Bool)

(assert (=> bm!155404 (= call!155410 (derivativeStep!2014 (ite c!399469 (regOne!15403 r!27340) (ite c!399467 (reg!7774 r!27340) (regOne!15402 r!27340))) c!14016))))

(declare-fun call!155411 () Regex!7445)

(declare-fun b!2508307 () Bool)

(declare-fun e!1590026 () Regex!7445)

(assert (=> b!2508307 (= e!1590026 (Union!7445 (Concat!12141 call!155408 (regTwo!15402 r!27340)) call!155411))))

(declare-fun b!2508308 () Bool)

(assert (=> b!2508308 (= e!1590030 (ite (= c!14016 (c!399443 r!27340)) EmptyExpr!7445 EmptyLang!7445))))

(declare-fun bm!155405 () Bool)

(assert (=> bm!155405 (= call!155411 (derivativeStep!2014 (ite c!399469 (regTwo!15403 r!27340) (regTwo!15402 r!27340)) c!14016))))

(declare-fun b!2508309 () Bool)

(declare-fun c!399471 () Bool)

(assert (=> b!2508309 (= c!399471 (nullable!2362 (regOne!15402 r!27340)))))

(assert (=> b!2508309 (= e!1590027 e!1590026)))

(declare-fun bm!155406 () Bool)

(assert (=> bm!155406 (= call!155409 call!155410)))

(declare-fun b!2508310 () Bool)

(assert (=> b!2508310 (= e!1590028 (Union!7445 call!155410 call!155411))))

(declare-fun d!716342 () Bool)

(declare-fun lt!897240 () Regex!7445)

(assert (=> d!716342 (validRegex!3071 lt!897240)))

(assert (=> d!716342 (= lt!897240 e!1590029)))

(declare-fun c!399468 () Bool)

(assert (=> d!716342 (= c!399468 (or ((_ is EmptyExpr!7445) r!27340) ((_ is EmptyLang!7445) r!27340)))))

(assert (=> d!716342 (validRegex!3071 r!27340)))

(assert (=> d!716342 (= (derivativeStep!2014 r!27340 c!14016) lt!897240)))

(declare-fun b!2508311 () Bool)

(assert (=> b!2508311 (= e!1590029 EmptyLang!7445)))

(declare-fun b!2508312 () Bool)

(assert (=> b!2508312 (= e!1590026 (Union!7445 (Concat!12141 call!155408 (regTwo!15402 r!27340)) EmptyLang!7445))))

(assert (= (and d!716342 c!399468) b!2508311))

(assert (= (and d!716342 (not c!399468)) b!2508303))

(assert (= (and b!2508303 c!399470) b!2508308))

(assert (= (and b!2508303 (not c!399470)) b!2508304))

(assert (= (and b!2508304 c!399469) b!2508310))

(assert (= (and b!2508304 (not c!399469)) b!2508306))

(assert (= (and b!2508306 c!399467) b!2508305))

(assert (= (and b!2508306 (not c!399467)) b!2508309))

(assert (= (and b!2508309 c!399471) b!2508307))

(assert (= (and b!2508309 (not c!399471)) b!2508312))

(assert (= (or b!2508307 b!2508312) bm!155403))

(assert (= (or b!2508305 bm!155403) bm!155406))

(assert (= (or b!2508310 b!2508307) bm!155405))

(assert (= (or b!2508310 bm!155406) bm!155404))

(declare-fun m!2868189 () Bool)

(assert (=> bm!155404 m!2868189))

(declare-fun m!2868191 () Bool)

(assert (=> bm!155405 m!2868191))

(assert (=> b!2508309 m!2868141))

(declare-fun m!2868193 () Bool)

(assert (=> d!716342 m!2868193))

(assert (=> d!716342 m!2868149))

(assert (=> b!2508231 d!716342))

(declare-fun b!2508353 () Bool)

(declare-fun e!1590058 () Bool)

(declare-fun call!155426 () Bool)

(assert (=> b!2508353 (= e!1590058 call!155426)))

(declare-fun b!2508354 () Bool)

(declare-fun res!1060504 () Bool)

(assert (=> b!2508354 (=> (not res!1060504) (not e!1590058))))

(declare-fun call!155428 () Bool)

(assert (=> b!2508354 (= res!1060504 call!155428)))

(declare-fun e!1590061 () Bool)

(assert (=> b!2508354 (= e!1590061 e!1590058)))

(declare-fun bm!155421 () Bool)

(declare-fun c!399487 () Bool)

(assert (=> bm!155421 (= call!155426 (validRegex!3071 (ite c!399487 (regTwo!15403 r!27340) (regOne!15402 r!27340))))))

(declare-fun bm!155422 () Bool)

(declare-fun call!155427 () Bool)

(assert (=> bm!155422 (= call!155428 call!155427)))

(declare-fun b!2508355 () Bool)

(declare-fun e!1590060 () Bool)

(declare-fun e!1590056 () Bool)

(assert (=> b!2508355 (= e!1590060 e!1590056)))

(declare-fun res!1060503 () Bool)

(assert (=> b!2508355 (= res!1060503 (not (nullable!2362 (reg!7774 r!27340))))))

(assert (=> b!2508355 (=> (not res!1060503) (not e!1590056))))

(declare-fun b!2508356 () Bool)

(declare-fun e!1590057 () Bool)

(declare-fun e!1590059 () Bool)

(assert (=> b!2508356 (= e!1590057 e!1590059)))

(declare-fun res!1060506 () Bool)

(assert (=> b!2508356 (=> (not res!1060506) (not e!1590059))))

(assert (=> b!2508356 (= res!1060506 call!155426)))

(declare-fun d!716352 () Bool)

(declare-fun res!1060505 () Bool)

(declare-fun e!1590062 () Bool)

(assert (=> d!716352 (=> res!1060505 e!1590062)))

(assert (=> d!716352 (= res!1060505 ((_ is ElementMatch!7445) r!27340))))

(assert (=> d!716352 (= (validRegex!3071 r!27340) e!1590062)))

(declare-fun b!2508357 () Bool)

(assert (=> b!2508357 (= e!1590060 e!1590061)))

(assert (=> b!2508357 (= c!399487 ((_ is Union!7445) r!27340))))

(declare-fun b!2508358 () Bool)

(assert (=> b!2508358 (= e!1590062 e!1590060)))

(declare-fun c!399488 () Bool)

(assert (=> b!2508358 (= c!399488 ((_ is Star!7445) r!27340))))

(declare-fun bm!155423 () Bool)

(assert (=> bm!155423 (= call!155427 (validRegex!3071 (ite c!399488 (reg!7774 r!27340) (ite c!399487 (regOne!15403 r!27340) (regTwo!15402 r!27340)))))))

(declare-fun b!2508359 () Bool)

(assert (=> b!2508359 (= e!1590056 call!155427)))

(declare-fun b!2508360 () Bool)

(declare-fun res!1060507 () Bool)

(assert (=> b!2508360 (=> res!1060507 e!1590057)))

(assert (=> b!2508360 (= res!1060507 (not ((_ is Concat!12141) r!27340)))))

(assert (=> b!2508360 (= e!1590061 e!1590057)))

(declare-fun b!2508361 () Bool)

(assert (=> b!2508361 (= e!1590059 call!155428)))

(assert (= (and d!716352 (not res!1060505)) b!2508358))

(assert (= (and b!2508358 c!399488) b!2508355))

(assert (= (and b!2508358 (not c!399488)) b!2508357))

(assert (= (and b!2508355 res!1060503) b!2508359))

(assert (= (and b!2508357 c!399487) b!2508354))

(assert (= (and b!2508357 (not c!399487)) b!2508360))

(assert (= (and b!2508354 res!1060504) b!2508353))

(assert (= (and b!2508360 (not res!1060507)) b!2508356))

(assert (= (and b!2508356 res!1060506) b!2508361))

(assert (= (or b!2508354 b!2508361) bm!155422))

(assert (= (or b!2508353 b!2508356) bm!155421))

(assert (= (or b!2508359 bm!155422) bm!155423))

(declare-fun m!2868195 () Bool)

(assert (=> bm!155421 m!2868195))

(declare-fun m!2868197 () Bool)

(assert (=> b!2508355 m!2868197))

(declare-fun m!2868199 () Bool)

(assert (=> bm!155423 m!2868199))

(assert (=> start!244684 d!716352))

(declare-fun b!2508362 () Bool)

(declare-fun e!1590065 () Bool)

(declare-fun call!155429 () Bool)

(assert (=> b!2508362 (= e!1590065 call!155429)))

(declare-fun b!2508363 () Bool)

(declare-fun res!1060509 () Bool)

(assert (=> b!2508363 (=> (not res!1060509) (not e!1590065))))

(declare-fun call!155431 () Bool)

(assert (=> b!2508363 (= res!1060509 call!155431)))

(declare-fun e!1590068 () Bool)

(assert (=> b!2508363 (= e!1590068 e!1590065)))

(declare-fun bm!155424 () Bool)

(declare-fun c!399489 () Bool)

(assert (=> bm!155424 (= call!155429 (validRegex!3071 (ite c!399489 (regTwo!15403 (regOne!15402 r!27340)) (regOne!15402 (regOne!15402 r!27340)))))))

(declare-fun bm!155425 () Bool)

(declare-fun call!155430 () Bool)

(assert (=> bm!155425 (= call!155431 call!155430)))

(declare-fun b!2508364 () Bool)

(declare-fun e!1590067 () Bool)

(declare-fun e!1590063 () Bool)

(assert (=> b!2508364 (= e!1590067 e!1590063)))

(declare-fun res!1060508 () Bool)

(assert (=> b!2508364 (= res!1060508 (not (nullable!2362 (reg!7774 (regOne!15402 r!27340)))))))

(assert (=> b!2508364 (=> (not res!1060508) (not e!1590063))))

(declare-fun b!2508365 () Bool)

(declare-fun e!1590064 () Bool)

(declare-fun e!1590066 () Bool)

(assert (=> b!2508365 (= e!1590064 e!1590066)))

(declare-fun res!1060511 () Bool)

(assert (=> b!2508365 (=> (not res!1060511) (not e!1590066))))

(assert (=> b!2508365 (= res!1060511 call!155429)))

(declare-fun d!716354 () Bool)

(declare-fun res!1060510 () Bool)

(declare-fun e!1590069 () Bool)

(assert (=> d!716354 (=> res!1060510 e!1590069)))

(assert (=> d!716354 (= res!1060510 ((_ is ElementMatch!7445) (regOne!15402 r!27340)))))

(assert (=> d!716354 (= (validRegex!3071 (regOne!15402 r!27340)) e!1590069)))

(declare-fun b!2508366 () Bool)

(assert (=> b!2508366 (= e!1590067 e!1590068)))

(assert (=> b!2508366 (= c!399489 ((_ is Union!7445) (regOne!15402 r!27340)))))

(declare-fun b!2508367 () Bool)

(assert (=> b!2508367 (= e!1590069 e!1590067)))

(declare-fun c!399490 () Bool)

(assert (=> b!2508367 (= c!399490 ((_ is Star!7445) (regOne!15402 r!27340)))))

(declare-fun bm!155426 () Bool)

(assert (=> bm!155426 (= call!155430 (validRegex!3071 (ite c!399490 (reg!7774 (regOne!15402 r!27340)) (ite c!399489 (regOne!15403 (regOne!15402 r!27340)) (regTwo!15402 (regOne!15402 r!27340))))))))

(declare-fun b!2508368 () Bool)

(assert (=> b!2508368 (= e!1590063 call!155430)))

(declare-fun b!2508369 () Bool)

(declare-fun res!1060512 () Bool)

(assert (=> b!2508369 (=> res!1060512 e!1590064)))

(assert (=> b!2508369 (= res!1060512 (not ((_ is Concat!12141) (regOne!15402 r!27340))))))

(assert (=> b!2508369 (= e!1590068 e!1590064)))

(declare-fun b!2508370 () Bool)

(assert (=> b!2508370 (= e!1590066 call!155431)))

(assert (= (and d!716354 (not res!1060510)) b!2508367))

(assert (= (and b!2508367 c!399490) b!2508364))

(assert (= (and b!2508367 (not c!399490)) b!2508366))

(assert (= (and b!2508364 res!1060508) b!2508368))

(assert (= (and b!2508366 c!399489) b!2508363))

(assert (= (and b!2508366 (not c!399489)) b!2508369))

(assert (= (and b!2508363 res!1060509) b!2508362))

(assert (= (and b!2508369 (not res!1060512)) b!2508365))

(assert (= (and b!2508365 res!1060511) b!2508370))

(assert (= (or b!2508363 b!2508370) bm!155425))

(assert (= (or b!2508362 b!2508365) bm!155424))

(assert (= (or b!2508368 bm!155425) bm!155426))

(declare-fun m!2868201 () Bool)

(assert (=> bm!155424 m!2868201))

(declare-fun m!2868203 () Bool)

(assert (=> b!2508364 m!2868203))

(declare-fun m!2868205 () Bool)

(assert (=> bm!155426 m!2868205))

(assert (=> b!2508235 d!716354))

(declare-fun b!2508375 () Bool)

(declare-fun e!1590072 () Bool)

(declare-fun tp!802289 () Bool)

(assert (=> b!2508375 (= e!1590072 (and tp_is_empty!12745 tp!802289))))

(assert (=> b!2508236 (= tp!802283 e!1590072)))

(assert (= (and b!2508236 ((_ is Cons!29410) (t!211209 tl!4068))) b!2508375))

(declare-fun b!2508386 () Bool)

(declare-fun e!1590075 () Bool)

(assert (=> b!2508386 (= e!1590075 tp_is_empty!12745)))

(declare-fun b!2508387 () Bool)

(declare-fun tp!802302 () Bool)

(declare-fun tp!802301 () Bool)

(assert (=> b!2508387 (= e!1590075 (and tp!802302 tp!802301))))

(declare-fun b!2508389 () Bool)

(declare-fun tp!802303 () Bool)

(declare-fun tp!802300 () Bool)

(assert (=> b!2508389 (= e!1590075 (and tp!802303 tp!802300))))

(assert (=> b!2508228 (= tp!802285 e!1590075)))

(declare-fun b!2508388 () Bool)

(declare-fun tp!802304 () Bool)

(assert (=> b!2508388 (= e!1590075 tp!802304)))

(assert (= (and b!2508228 ((_ is ElementMatch!7445) (reg!7774 r!27340))) b!2508386))

(assert (= (and b!2508228 ((_ is Concat!12141) (reg!7774 r!27340))) b!2508387))

(assert (= (and b!2508228 ((_ is Star!7445) (reg!7774 r!27340))) b!2508388))

(assert (= (and b!2508228 ((_ is Union!7445) (reg!7774 r!27340))) b!2508389))

(declare-fun b!2508390 () Bool)

(declare-fun e!1590076 () Bool)

(assert (=> b!2508390 (= e!1590076 tp_is_empty!12745)))

(declare-fun b!2508391 () Bool)

(declare-fun tp!802307 () Bool)

(declare-fun tp!802306 () Bool)

(assert (=> b!2508391 (= e!1590076 (and tp!802307 tp!802306))))

(declare-fun b!2508393 () Bool)

(declare-fun tp!802308 () Bool)

(declare-fun tp!802305 () Bool)

(assert (=> b!2508393 (= e!1590076 (and tp!802308 tp!802305))))

(assert (=> b!2508234 (= tp!802282 e!1590076)))

(declare-fun b!2508392 () Bool)

(declare-fun tp!802309 () Bool)

(assert (=> b!2508392 (= e!1590076 tp!802309)))

(assert (= (and b!2508234 ((_ is ElementMatch!7445) (regOne!15402 r!27340))) b!2508390))

(assert (= (and b!2508234 ((_ is Concat!12141) (regOne!15402 r!27340))) b!2508391))

(assert (= (and b!2508234 ((_ is Star!7445) (regOne!15402 r!27340))) b!2508392))

(assert (= (and b!2508234 ((_ is Union!7445) (regOne!15402 r!27340))) b!2508393))

(declare-fun b!2508394 () Bool)

(declare-fun e!1590077 () Bool)

(assert (=> b!2508394 (= e!1590077 tp_is_empty!12745)))

(declare-fun b!2508395 () Bool)

(declare-fun tp!802312 () Bool)

(declare-fun tp!802311 () Bool)

(assert (=> b!2508395 (= e!1590077 (and tp!802312 tp!802311))))

(declare-fun b!2508397 () Bool)

(declare-fun tp!802313 () Bool)

(declare-fun tp!802310 () Bool)

(assert (=> b!2508397 (= e!1590077 (and tp!802313 tp!802310))))

(assert (=> b!2508234 (= tp!802281 e!1590077)))

(declare-fun b!2508396 () Bool)

(declare-fun tp!802314 () Bool)

(assert (=> b!2508396 (= e!1590077 tp!802314)))

(assert (= (and b!2508234 ((_ is ElementMatch!7445) (regTwo!15402 r!27340))) b!2508394))

(assert (= (and b!2508234 ((_ is Concat!12141) (regTwo!15402 r!27340))) b!2508395))

(assert (= (and b!2508234 ((_ is Star!7445) (regTwo!15402 r!27340))) b!2508396))

(assert (= (and b!2508234 ((_ is Union!7445) (regTwo!15402 r!27340))) b!2508397))

(declare-fun b!2508398 () Bool)

(declare-fun e!1590078 () Bool)

(assert (=> b!2508398 (= e!1590078 tp_is_empty!12745)))

(declare-fun b!2508399 () Bool)

(declare-fun tp!802317 () Bool)

(declare-fun tp!802316 () Bool)

(assert (=> b!2508399 (= e!1590078 (and tp!802317 tp!802316))))

(declare-fun b!2508401 () Bool)

(declare-fun tp!802318 () Bool)

(declare-fun tp!802315 () Bool)

(assert (=> b!2508401 (= e!1590078 (and tp!802318 tp!802315))))

(assert (=> b!2508229 (= tp!802284 e!1590078)))

(declare-fun b!2508400 () Bool)

(declare-fun tp!802319 () Bool)

(assert (=> b!2508400 (= e!1590078 tp!802319)))

(assert (= (and b!2508229 ((_ is ElementMatch!7445) (regOne!15403 r!27340))) b!2508398))

(assert (= (and b!2508229 ((_ is Concat!12141) (regOne!15403 r!27340))) b!2508399))

(assert (= (and b!2508229 ((_ is Star!7445) (regOne!15403 r!27340))) b!2508400))

(assert (= (and b!2508229 ((_ is Union!7445) (regOne!15403 r!27340))) b!2508401))

(declare-fun b!2508402 () Bool)

(declare-fun e!1590079 () Bool)

(assert (=> b!2508402 (= e!1590079 tp_is_empty!12745)))

(declare-fun b!2508403 () Bool)

(declare-fun tp!802322 () Bool)

(declare-fun tp!802321 () Bool)

(assert (=> b!2508403 (= e!1590079 (and tp!802322 tp!802321))))

(declare-fun b!2508405 () Bool)

(declare-fun tp!802323 () Bool)

(declare-fun tp!802320 () Bool)

(assert (=> b!2508405 (= e!1590079 (and tp!802323 tp!802320))))

(assert (=> b!2508229 (= tp!802286 e!1590079)))

(declare-fun b!2508404 () Bool)

(declare-fun tp!802324 () Bool)

(assert (=> b!2508404 (= e!1590079 tp!802324)))

(assert (= (and b!2508229 ((_ is ElementMatch!7445) (regTwo!15403 r!27340))) b!2508402))

(assert (= (and b!2508229 ((_ is Concat!12141) (regTwo!15403 r!27340))) b!2508403))

(assert (= (and b!2508229 ((_ is Star!7445) (regTwo!15403 r!27340))) b!2508404))

(assert (= (and b!2508229 ((_ is Union!7445) (regTwo!15403 r!27340))) b!2508405))

(check-sat (not b!2508364) (not b!2508404) (not b!2508387) (not d!716342) (not b!2508401) (not b!2508397) (not b!2508389) (not b!2508395) (not b!2508400) (not bm!155405) tp_is_empty!12745 (not b!2508309) (not d!716332) (not d!716336) (not bm!155421) (not b!2508405) (not d!716338) (not bm!155404) (not b!2508403) (not bm!155424) (not b!2508375) (not b!2508393) (not b!2508355) (not bm!155426) (not b!2508247) (not b!2508388) (not b!2508392) (not b!2508391) (not b!2508396) (not b!2508399) (not bm!155423))
(check-sat)
