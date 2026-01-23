; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245344 () Bool)

(assert start!245344)

(declare-fun b!2516126 () Bool)

(declare-fun e!1594010 () Bool)

(declare-fun tp!804104 () Bool)

(declare-fun tp!804103 () Bool)

(assert (=> b!2516126 (= e!1594010 (and tp!804104 tp!804103))))

(declare-fun b!2516127 () Bool)

(declare-fun e!1594008 () Bool)

(declare-fun e!1594009 () Bool)

(assert (=> b!2516127 (= e!1594008 e!1594009)))

(declare-fun res!1063654 () Bool)

(assert (=> b!2516127 (=> (not res!1063654) (not e!1594009))))

(declare-datatypes ((C!15132 0))(
  ( (C!15133 (val!9218 Int)) )
))
(declare-datatypes ((Regex!7487 0))(
  ( (ElementMatch!7487 (c!401037 C!15132)) (Concat!12183 (regOne!15486 Regex!7487) (regTwo!15486 Regex!7487)) (EmptyExpr!7487) (Star!7487 (reg!7816 Regex!7487)) (EmptyLang!7487) (Union!7487 (regOne!15487 Regex!7487) (regTwo!15487 Regex!7487)) )
))
(declare-fun lt!898966 () Regex!7487)

(declare-datatypes ((List!29552 0))(
  ( (Nil!29452) (Cons!29452 (h!34872 C!15132) (t!211251 List!29552)) )
))
(declare-fun tl!4068 () List!29552)

(declare-fun nullable!2404 (Regex!7487) Bool)

(declare-fun derivative!182 (Regex!7487 List!29552) Regex!7487)

(assert (=> b!2516127 (= res!1063654 (nullable!2404 (derivative!182 lt!898966 tl!4068)))))

(declare-fun r!27340 () Regex!7487)

(declare-fun c!14016 () C!15132)

(declare-fun derivativeStep!2056 (Regex!7487 C!15132) Regex!7487)

(assert (=> b!2516127 (= lt!898966 (derivativeStep!2056 r!27340 c!14016))))

(declare-fun b!2516128 () Bool)

(declare-fun tp_is_empty!12829 () Bool)

(assert (=> b!2516128 (= e!1594010 tp_is_empty!12829)))

(declare-fun b!2516129 () Bool)

(get-info :version)

(assert (=> b!2516129 (= e!1594009 (and ((_ is EmptyExpr!7487) r!27340) (not (= lt!898966 EmptyLang!7487))))))

(declare-fun res!1063653 () Bool)

(assert (=> start!245344 (=> (not res!1063653) (not e!1594008))))

(declare-fun validRegex!3113 (Regex!7487) Bool)

(assert (=> start!245344 (= res!1063653 (validRegex!3113 r!27340))))

(assert (=> start!245344 e!1594008))

(assert (=> start!245344 e!1594010))

(assert (=> start!245344 tp_is_empty!12829))

(declare-fun e!1594007 () Bool)

(assert (=> start!245344 e!1594007))

(declare-fun b!2516130 () Bool)

(declare-fun tp!804105 () Bool)

(assert (=> b!2516130 (= e!1594010 tp!804105)))

(declare-fun b!2516131 () Bool)

(declare-fun tp!804102 () Bool)

(declare-fun tp!804101 () Bool)

(assert (=> b!2516131 (= e!1594010 (and tp!804102 tp!804101))))

(declare-fun b!2516132 () Bool)

(declare-fun tp!804106 () Bool)

(assert (=> b!2516132 (= e!1594007 (and tp_is_empty!12829 tp!804106))))

(assert (= (and start!245344 res!1063653) b!2516127))

(assert (= (and b!2516127 res!1063654) b!2516129))

(assert (= (and start!245344 ((_ is ElementMatch!7487) r!27340)) b!2516128))

(assert (= (and start!245344 ((_ is Concat!12183) r!27340)) b!2516131))

(assert (= (and start!245344 ((_ is Star!7487) r!27340)) b!2516130))

(assert (= (and start!245344 ((_ is Union!7487) r!27340)) b!2516126))

(assert (= (and start!245344 ((_ is Cons!29452) tl!4068)) b!2516132))

(declare-fun m!2873209 () Bool)

(assert (=> b!2516127 m!2873209))

(assert (=> b!2516127 m!2873209))

(declare-fun m!2873211 () Bool)

(assert (=> b!2516127 m!2873211))

(declare-fun m!2873213 () Bool)

(assert (=> b!2516127 m!2873213))

(declare-fun m!2873215 () Bool)

(assert (=> start!245344 m!2873215))

(check-sat tp_is_empty!12829 (not b!2516132) (not b!2516127) (not start!245344) (not b!2516130) (not b!2516131) (not b!2516126))
(check-sat)
(get-model)

(declare-fun d!717377 () Bool)

(declare-fun nullableFct!646 (Regex!7487) Bool)

(assert (=> d!717377 (= (nullable!2404 (derivative!182 lt!898966 tl!4068)) (nullableFct!646 (derivative!182 lt!898966 tl!4068)))))

(declare-fun bs!468897 () Bool)

(assert (= bs!468897 d!717377))

(assert (=> bs!468897 m!2873209))

(declare-fun m!2873219 () Bool)

(assert (=> bs!468897 m!2873219))

(assert (=> b!2516127 d!717377))

(declare-fun d!717379 () Bool)

(declare-fun lt!898972 () Regex!7487)

(assert (=> d!717379 (validRegex!3113 lt!898972)))

(declare-fun e!1594016 () Regex!7487)

(assert (=> d!717379 (= lt!898972 e!1594016)))

(declare-fun c!401043 () Bool)

(assert (=> d!717379 (= c!401043 ((_ is Cons!29452) tl!4068))))

(assert (=> d!717379 (validRegex!3113 lt!898966)))

(assert (=> d!717379 (= (derivative!182 lt!898966 tl!4068) lt!898972)))

(declare-fun b!2516143 () Bool)

(assert (=> b!2516143 (= e!1594016 (derivative!182 (derivativeStep!2056 lt!898966 (h!34872 tl!4068)) (t!211251 tl!4068)))))

(declare-fun b!2516144 () Bool)

(assert (=> b!2516144 (= e!1594016 lt!898966)))

(assert (= (and d!717379 c!401043) b!2516143))

(assert (= (and d!717379 (not c!401043)) b!2516144))

(declare-fun m!2873229 () Bool)

(assert (=> d!717379 m!2873229))

(declare-fun m!2873231 () Bool)

(assert (=> d!717379 m!2873231))

(declare-fun m!2873233 () Bool)

(assert (=> b!2516143 m!2873233))

(assert (=> b!2516143 m!2873233))

(declare-fun m!2873235 () Bool)

(assert (=> b!2516143 m!2873235))

(assert (=> b!2516127 d!717379))

(declare-fun d!717383 () Bool)

(declare-fun lt!898978 () Regex!7487)

(assert (=> d!717383 (validRegex!3113 lt!898978)))

(declare-fun e!1594057 () Regex!7487)

(assert (=> d!717383 (= lt!898978 e!1594057)))

(declare-fun c!401076 () Bool)

(assert (=> d!717383 (= c!401076 (or ((_ is EmptyExpr!7487) r!27340) ((_ is EmptyLang!7487) r!27340)))))

(assert (=> d!717383 (validRegex!3113 r!27340)))

(assert (=> d!717383 (= (derivativeStep!2056 r!27340 c!14016) lt!898978)))

(declare-fun b!2516213 () Bool)

(declare-fun e!1594058 () Regex!7487)

(declare-fun call!156367 () Regex!7487)

(assert (=> b!2516213 (= e!1594058 (Concat!12183 call!156367 r!27340))))

(declare-fun bm!156359 () Bool)

(declare-fun call!156366 () Regex!7487)

(assert (=> bm!156359 (= call!156366 call!156367)))

(declare-fun b!2516214 () Bool)

(declare-fun e!1594059 () Regex!7487)

(assert (=> b!2516214 (= e!1594057 e!1594059)))

(declare-fun c!401077 () Bool)

(assert (=> b!2516214 (= c!401077 ((_ is ElementMatch!7487) r!27340))))

(declare-fun b!2516215 () Bool)

(declare-fun e!1594060 () Regex!7487)

(assert (=> b!2516215 (= e!1594060 (Union!7487 (Concat!12183 call!156366 (regTwo!15486 r!27340)) EmptyLang!7487))))

(declare-fun b!2516216 () Bool)

(declare-fun call!156364 () Regex!7487)

(assert (=> b!2516216 (= e!1594060 (Union!7487 (Concat!12183 call!156366 (regTwo!15486 r!27340)) call!156364))))

(declare-fun b!2516217 () Bool)

(declare-fun c!401074 () Bool)

(assert (=> b!2516217 (= c!401074 ((_ is Union!7487) r!27340))))

(declare-fun e!1594056 () Regex!7487)

(assert (=> b!2516217 (= e!1594059 e!1594056)))

(declare-fun c!401075 () Bool)

(declare-fun call!156365 () Regex!7487)

(declare-fun bm!156360 () Bool)

(assert (=> bm!156360 (= call!156365 (derivativeStep!2056 (ite c!401074 (regOne!15487 r!27340) (ite c!401075 (reg!7816 r!27340) (regOne!15486 r!27340))) c!14016))))

(declare-fun bm!156361 () Bool)

(assert (=> bm!156361 (= call!156367 call!156365)))

(declare-fun b!2516218 () Bool)

(assert (=> b!2516218 (= e!1594059 (ite (= c!14016 (c!401037 r!27340)) EmptyExpr!7487 EmptyLang!7487))))

(declare-fun b!2516219 () Bool)

(assert (=> b!2516219 (= e!1594057 EmptyLang!7487)))

(declare-fun b!2516220 () Bool)

(assert (=> b!2516220 (= e!1594056 e!1594058)))

(assert (=> b!2516220 (= c!401075 ((_ is Star!7487) r!27340))))

(declare-fun b!2516221 () Bool)

(declare-fun c!401073 () Bool)

(assert (=> b!2516221 (= c!401073 (nullable!2404 (regOne!15486 r!27340)))))

(assert (=> b!2516221 (= e!1594058 e!1594060)))

(declare-fun bm!156362 () Bool)

(assert (=> bm!156362 (= call!156364 (derivativeStep!2056 (ite c!401074 (regTwo!15487 r!27340) (regTwo!15486 r!27340)) c!14016))))

(declare-fun b!2516222 () Bool)

(assert (=> b!2516222 (= e!1594056 (Union!7487 call!156365 call!156364))))

(assert (= (and d!717383 c!401076) b!2516219))

(assert (= (and d!717383 (not c!401076)) b!2516214))

(assert (= (and b!2516214 c!401077) b!2516218))

(assert (= (and b!2516214 (not c!401077)) b!2516217))

(assert (= (and b!2516217 c!401074) b!2516222))

(assert (= (and b!2516217 (not c!401074)) b!2516220))

(assert (= (and b!2516220 c!401075) b!2516213))

(assert (= (and b!2516220 (not c!401075)) b!2516221))

(assert (= (and b!2516221 c!401073) b!2516216))

(assert (= (and b!2516221 (not c!401073)) b!2516215))

(assert (= (or b!2516216 b!2516215) bm!156359))

(assert (= (or b!2516213 bm!156359) bm!156361))

(assert (= (or b!2516222 b!2516216) bm!156362))

(assert (= (or b!2516222 bm!156361) bm!156360))

(declare-fun m!2873245 () Bool)

(assert (=> d!717383 m!2873245))

(assert (=> d!717383 m!2873215))

(declare-fun m!2873247 () Bool)

(assert (=> bm!156360 m!2873247))

(declare-fun m!2873249 () Bool)

(assert (=> b!2516221 m!2873249))

(declare-fun m!2873251 () Bool)

(assert (=> bm!156362 m!2873251))

(assert (=> b!2516127 d!717383))

(declare-fun c!401085 () Bool)

(declare-fun bm!156374 () Bool)

(declare-fun c!401084 () Bool)

(declare-fun call!156379 () Bool)

(assert (=> bm!156374 (= call!156379 (validRegex!3113 (ite c!401085 (reg!7816 r!27340) (ite c!401084 (regOne!15487 r!27340) (regTwo!15486 r!27340)))))))

(declare-fun b!2516285 () Bool)

(declare-fun e!1594097 () Bool)

(declare-fun call!156380 () Bool)

(assert (=> b!2516285 (= e!1594097 call!156380)))

(declare-fun b!2516286 () Bool)

(declare-fun e!1594095 () Bool)

(assert (=> b!2516286 (= e!1594095 call!156379)))

(declare-fun b!2516287 () Bool)

(declare-fun e!1594093 () Bool)

(declare-fun call!156381 () Bool)

(assert (=> b!2516287 (= e!1594093 call!156381)))

(declare-fun b!2516288 () Bool)

(declare-fun e!1594094 () Bool)

(declare-fun e!1594092 () Bool)

(assert (=> b!2516288 (= e!1594094 e!1594092)))

(assert (=> b!2516288 (= c!401084 ((_ is Union!7487) r!27340))))

(declare-fun bm!156375 () Bool)

(assert (=> bm!156375 (= call!156381 call!156379)))

(declare-fun b!2516289 () Bool)

(declare-fun e!1594098 () Bool)

(assert (=> b!2516289 (= e!1594098 e!1594094)))

(assert (=> b!2516289 (= c!401085 ((_ is Star!7487) r!27340))))

(declare-fun b!2516290 () Bool)

(declare-fun res!1063681 () Bool)

(assert (=> b!2516290 (=> (not res!1063681) (not e!1594097))))

(assert (=> b!2516290 (= res!1063681 call!156381)))

(assert (=> b!2516290 (= e!1594092 e!1594097)))

(declare-fun b!2516291 () Bool)

(assert (=> b!2516291 (= e!1594094 e!1594095)))

(declare-fun res!1063680 () Bool)

(assert (=> b!2516291 (= res!1063680 (not (nullable!2404 (reg!7816 r!27340))))))

(assert (=> b!2516291 (=> (not res!1063680) (not e!1594095))))

(declare-fun b!2516292 () Bool)

(declare-fun e!1594096 () Bool)

(assert (=> b!2516292 (= e!1594096 e!1594093)))

(declare-fun res!1063682 () Bool)

(assert (=> b!2516292 (=> (not res!1063682) (not e!1594093))))

(assert (=> b!2516292 (= res!1063682 call!156380)))

(declare-fun d!717387 () Bool)

(declare-fun res!1063684 () Bool)

(assert (=> d!717387 (=> res!1063684 e!1594098)))

(assert (=> d!717387 (= res!1063684 ((_ is ElementMatch!7487) r!27340))))

(assert (=> d!717387 (= (validRegex!3113 r!27340) e!1594098)))

(declare-fun bm!156376 () Bool)

(assert (=> bm!156376 (= call!156380 (validRegex!3113 (ite c!401084 (regTwo!15487 r!27340) (regOne!15486 r!27340))))))

(declare-fun b!2516293 () Bool)

(declare-fun res!1063683 () Bool)

(assert (=> b!2516293 (=> res!1063683 e!1594096)))

(assert (=> b!2516293 (= res!1063683 (not ((_ is Concat!12183) r!27340)))))

(assert (=> b!2516293 (= e!1594092 e!1594096)))

(assert (= (and d!717387 (not res!1063684)) b!2516289))

(assert (= (and b!2516289 c!401085) b!2516291))

(assert (= (and b!2516289 (not c!401085)) b!2516288))

(assert (= (and b!2516291 res!1063680) b!2516286))

(assert (= (and b!2516288 c!401084) b!2516290))

(assert (= (and b!2516288 (not c!401084)) b!2516293))

(assert (= (and b!2516290 res!1063681) b!2516285))

(assert (= (and b!2516293 (not res!1063683)) b!2516292))

(assert (= (and b!2516292 res!1063682) b!2516287))

(assert (= (or b!2516290 b!2516287) bm!156375))

(assert (= (or b!2516285 b!2516292) bm!156376))

(assert (= (or b!2516286 bm!156375) bm!156374))

(declare-fun m!2873259 () Bool)

(assert (=> bm!156374 m!2873259))

(declare-fun m!2873261 () Bool)

(assert (=> b!2516291 m!2873261))

(declare-fun m!2873263 () Bool)

(assert (=> bm!156376 m!2873263))

(assert (=> start!245344 d!717387))

(declare-fun b!2516304 () Bool)

(declare-fun e!1594101 () Bool)

(assert (=> b!2516304 (= e!1594101 tp_is_empty!12829)))

(assert (=> b!2516130 (= tp!804105 e!1594101)))

(declare-fun b!2516307 () Bool)

(declare-fun tp!804156 () Bool)

(declare-fun tp!804155 () Bool)

(assert (=> b!2516307 (= e!1594101 (and tp!804156 tp!804155))))

(declare-fun b!2516306 () Bool)

(declare-fun tp!804159 () Bool)

(assert (=> b!2516306 (= e!1594101 tp!804159)))

(declare-fun b!2516305 () Bool)

(declare-fun tp!804158 () Bool)

(declare-fun tp!804157 () Bool)

(assert (=> b!2516305 (= e!1594101 (and tp!804158 tp!804157))))

(assert (= (and b!2516130 ((_ is ElementMatch!7487) (reg!7816 r!27340))) b!2516304))

(assert (= (and b!2516130 ((_ is Concat!12183) (reg!7816 r!27340))) b!2516305))

(assert (= (and b!2516130 ((_ is Star!7487) (reg!7816 r!27340))) b!2516306))

(assert (= (and b!2516130 ((_ is Union!7487) (reg!7816 r!27340))) b!2516307))

(declare-fun b!2516308 () Bool)

(declare-fun e!1594102 () Bool)

(assert (=> b!2516308 (= e!1594102 tp_is_empty!12829)))

(assert (=> b!2516131 (= tp!804102 e!1594102)))

(declare-fun b!2516311 () Bool)

(declare-fun tp!804161 () Bool)

(declare-fun tp!804160 () Bool)

(assert (=> b!2516311 (= e!1594102 (and tp!804161 tp!804160))))

(declare-fun b!2516310 () Bool)

(declare-fun tp!804164 () Bool)

(assert (=> b!2516310 (= e!1594102 tp!804164)))

(declare-fun b!2516309 () Bool)

(declare-fun tp!804163 () Bool)

(declare-fun tp!804162 () Bool)

(assert (=> b!2516309 (= e!1594102 (and tp!804163 tp!804162))))

(assert (= (and b!2516131 ((_ is ElementMatch!7487) (regOne!15486 r!27340))) b!2516308))

(assert (= (and b!2516131 ((_ is Concat!12183) (regOne!15486 r!27340))) b!2516309))

(assert (= (and b!2516131 ((_ is Star!7487) (regOne!15486 r!27340))) b!2516310))

(assert (= (and b!2516131 ((_ is Union!7487) (regOne!15486 r!27340))) b!2516311))

(declare-fun b!2516312 () Bool)

(declare-fun e!1594103 () Bool)

(assert (=> b!2516312 (= e!1594103 tp_is_empty!12829)))

(assert (=> b!2516131 (= tp!804101 e!1594103)))

(declare-fun b!2516315 () Bool)

(declare-fun tp!804166 () Bool)

(declare-fun tp!804165 () Bool)

(assert (=> b!2516315 (= e!1594103 (and tp!804166 tp!804165))))

(declare-fun b!2516314 () Bool)

(declare-fun tp!804169 () Bool)

(assert (=> b!2516314 (= e!1594103 tp!804169)))

(declare-fun b!2516313 () Bool)

(declare-fun tp!804168 () Bool)

(declare-fun tp!804167 () Bool)

(assert (=> b!2516313 (= e!1594103 (and tp!804168 tp!804167))))

(assert (= (and b!2516131 ((_ is ElementMatch!7487) (regTwo!15486 r!27340))) b!2516312))

(assert (= (and b!2516131 ((_ is Concat!12183) (regTwo!15486 r!27340))) b!2516313))

(assert (= (and b!2516131 ((_ is Star!7487) (regTwo!15486 r!27340))) b!2516314))

(assert (= (and b!2516131 ((_ is Union!7487) (regTwo!15486 r!27340))) b!2516315))

(declare-fun b!2516316 () Bool)

(declare-fun e!1594104 () Bool)

(assert (=> b!2516316 (= e!1594104 tp_is_empty!12829)))

(assert (=> b!2516126 (= tp!804104 e!1594104)))

(declare-fun b!2516319 () Bool)

(declare-fun tp!804171 () Bool)

(declare-fun tp!804170 () Bool)

(assert (=> b!2516319 (= e!1594104 (and tp!804171 tp!804170))))

(declare-fun b!2516318 () Bool)

(declare-fun tp!804174 () Bool)

(assert (=> b!2516318 (= e!1594104 tp!804174)))

(declare-fun b!2516317 () Bool)

(declare-fun tp!804173 () Bool)

(declare-fun tp!804172 () Bool)

(assert (=> b!2516317 (= e!1594104 (and tp!804173 tp!804172))))

(assert (= (and b!2516126 ((_ is ElementMatch!7487) (regOne!15487 r!27340))) b!2516316))

(assert (= (and b!2516126 ((_ is Concat!12183) (regOne!15487 r!27340))) b!2516317))

(assert (= (and b!2516126 ((_ is Star!7487) (regOne!15487 r!27340))) b!2516318))

(assert (= (and b!2516126 ((_ is Union!7487) (regOne!15487 r!27340))) b!2516319))

(declare-fun b!2516320 () Bool)

(declare-fun e!1594105 () Bool)

(assert (=> b!2516320 (= e!1594105 tp_is_empty!12829)))

(assert (=> b!2516126 (= tp!804103 e!1594105)))

(declare-fun b!2516323 () Bool)

(declare-fun tp!804176 () Bool)

(declare-fun tp!804175 () Bool)

(assert (=> b!2516323 (= e!1594105 (and tp!804176 tp!804175))))

(declare-fun b!2516322 () Bool)

(declare-fun tp!804179 () Bool)

(assert (=> b!2516322 (= e!1594105 tp!804179)))

(declare-fun b!2516321 () Bool)

(declare-fun tp!804178 () Bool)

(declare-fun tp!804177 () Bool)

(assert (=> b!2516321 (= e!1594105 (and tp!804178 tp!804177))))

(assert (= (and b!2516126 ((_ is ElementMatch!7487) (regTwo!15487 r!27340))) b!2516320))

(assert (= (and b!2516126 ((_ is Concat!12183) (regTwo!15487 r!27340))) b!2516321))

(assert (= (and b!2516126 ((_ is Star!7487) (regTwo!15487 r!27340))) b!2516322))

(assert (= (and b!2516126 ((_ is Union!7487) (regTwo!15487 r!27340))) b!2516323))

(declare-fun b!2516328 () Bool)

(declare-fun e!1594108 () Bool)

(declare-fun tp!804182 () Bool)

(assert (=> b!2516328 (= e!1594108 (and tp_is_empty!12829 tp!804182))))

(assert (=> b!2516132 (= tp!804106 e!1594108)))

(assert (= (and b!2516132 ((_ is Cons!29452) (t!211251 tl!4068))) b!2516328))

(check-sat (not d!717383) (not b!2516323) (not b!2516319) (not b!2516306) (not b!2516313) (not b!2516309) (not b!2516314) (not b!2516310) (not d!717377) (not b!2516311) (not b!2516315) (not bm!156362) (not b!2516322) (not bm!156360) (not b!2516305) (not bm!156374) tp_is_empty!12829 (not d!717379) (not bm!156376) (not b!2516321) (not b!2516221) (not b!2516291) (not b!2516307) (not b!2516143) (not b!2516317) (not b!2516328) (not b!2516318))
(check-sat)
