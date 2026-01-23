; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248168 () Bool)

(assert start!248168)

(declare-fun b!2566274 () Bool)

(declare-fun e!1620182 () Bool)

(declare-fun tp!816841 () Bool)

(assert (=> b!2566274 (= e!1620182 tp!816841)))

(declare-fun res!1079889 () Bool)

(declare-fun e!1620181 () Bool)

(assert (=> start!248168 (=> (not res!1079889) (not e!1620181))))

(declare-datatypes ((C!15408 0))(
  ( (C!15409 (val!9356 Int)) )
))
(declare-datatypes ((Regex!7625 0))(
  ( (ElementMatch!7625 (c!412725 C!15408)) (Concat!12321 (regOne!15762 Regex!7625) (regTwo!15762 Regex!7625)) (EmptyExpr!7625) (Star!7625 (reg!7954 Regex!7625)) (EmptyLang!7625) (Union!7625 (regOne!15763 Regex!7625) (regTwo!15763 Regex!7625)) )
))
(declare-fun r!27340 () Regex!7625)

(declare-fun validRegex!3251 (Regex!7625) Bool)

(assert (=> start!248168 (= res!1079889 (validRegex!3251 r!27340))))

(assert (=> start!248168 e!1620181))

(assert (=> start!248168 e!1620182))

(declare-fun tp_is_empty!13105 () Bool)

(assert (=> start!248168 tp_is_empty!13105))

(declare-fun e!1620180 () Bool)

(assert (=> start!248168 e!1620180))

(declare-fun b!2566275 () Bool)

(declare-fun tp!816843 () Bool)

(declare-fun tp!816844 () Bool)

(assert (=> b!2566275 (= e!1620182 (and tp!816843 tp!816844))))

(declare-fun b!2566276 () Bool)

(declare-fun res!1079890 () Bool)

(assert (=> b!2566276 (=> (not res!1079890) (not e!1620181))))

(declare-datatypes ((List!29690 0))(
  ( (Nil!29590) (Cons!29590 (h!35010 C!15408) (t!211389 List!29690)) )
))
(declare-fun tl!4068 () List!29690)

(declare-fun c!14016 () C!15408)

(declare-fun nullable!2542 (Regex!7625) Bool)

(declare-fun derivative!320 (Regex!7625 List!29690) Regex!7625)

(declare-fun derivativeStep!2194 (Regex!7625 C!15408) Regex!7625)

(assert (=> b!2566276 (= res!1079890 (nullable!2542 (derivative!320 (derivativeStep!2194 r!27340 c!14016) tl!4068)))))

(declare-fun b!2566277 () Bool)

(assert (=> b!2566277 (= e!1620181 (not (validRegex!3251 (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625))))))

(declare-fun b!2566278 () Bool)

(declare-fun res!1079887 () Bool)

(assert (=> b!2566278 (=> (not res!1079887) (not e!1620181))))

(assert (=> b!2566278 (= res!1079887 (not (nullable!2542 (regOne!15762 r!27340))))))

(declare-fun b!2566279 () Bool)

(declare-fun tp!816845 () Bool)

(assert (=> b!2566279 (= e!1620180 (and tp_is_empty!13105 tp!816845))))

(declare-fun b!2566280 () Bool)

(declare-fun res!1079888 () Bool)

(assert (=> b!2566280 (=> (not res!1079888) (not e!1620181))))

(get-info :version)

(assert (=> b!2566280 (= res!1079888 (and (not ((_ is EmptyExpr!7625) r!27340)) (not ((_ is EmptyLang!7625) r!27340)) (not ((_ is ElementMatch!7625) r!27340)) (not ((_ is Union!7625) r!27340)) (not ((_ is Star!7625) r!27340))))))

(declare-fun b!2566281 () Bool)

(assert (=> b!2566281 (= e!1620182 tp_is_empty!13105)))

(declare-fun b!2566282 () Bool)

(declare-fun tp!816846 () Bool)

(declare-fun tp!816842 () Bool)

(assert (=> b!2566282 (= e!1620182 (and tp!816846 tp!816842))))

(assert (= (and start!248168 res!1079889) b!2566276))

(assert (= (and b!2566276 res!1079890) b!2566280))

(assert (= (and b!2566280 res!1079888) b!2566278))

(assert (= (and b!2566278 res!1079887) b!2566277))

(assert (= (and start!248168 ((_ is ElementMatch!7625) r!27340)) b!2566281))

(assert (= (and start!248168 ((_ is Concat!12321) r!27340)) b!2566275))

(assert (= (and start!248168 ((_ is Star!7625) r!27340)) b!2566274))

(assert (= (and start!248168 ((_ is Union!7625) r!27340)) b!2566282))

(assert (= (and start!248168 ((_ is Cons!29590) tl!4068)) b!2566279))

(declare-fun m!2904403 () Bool)

(assert (=> start!248168 m!2904403))

(declare-fun m!2904405 () Bool)

(assert (=> b!2566276 m!2904405))

(assert (=> b!2566276 m!2904405))

(declare-fun m!2904407 () Bool)

(assert (=> b!2566276 m!2904407))

(assert (=> b!2566276 m!2904407))

(declare-fun m!2904409 () Bool)

(assert (=> b!2566276 m!2904409))

(declare-fun m!2904411 () Bool)

(assert (=> b!2566277 m!2904411))

(declare-fun m!2904413 () Bool)

(assert (=> b!2566277 m!2904413))

(declare-fun m!2904415 () Bool)

(assert (=> b!2566278 m!2904415))

(check-sat tp_is_empty!13105 (not b!2566274) (not b!2566278) (not b!2566279) (not start!248168) (not b!2566277) (not b!2566282) (not b!2566275) (not b!2566276))
(check-sat)
(get-model)

(declare-fun d!726604 () Bool)

(declare-fun nullableFct!766 (Regex!7625) Bool)

(assert (=> d!726604 (= (nullable!2542 (derivative!320 (derivativeStep!2194 r!27340 c!14016) tl!4068)) (nullableFct!766 (derivative!320 (derivativeStep!2194 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469934 () Bool)

(assert (= bs!469934 d!726604))

(assert (=> bs!469934 m!2904407))

(declare-fun m!2904417 () Bool)

(assert (=> bs!469934 m!2904417))

(assert (=> b!2566276 d!726604))

(declare-fun d!726606 () Bool)

(declare-fun lt!905237 () Regex!7625)

(assert (=> d!726606 (validRegex!3251 lt!905237)))

(declare-fun e!1620199 () Regex!7625)

(assert (=> d!726606 (= lt!905237 e!1620199)))

(declare-fun c!412732 () Bool)

(assert (=> d!726606 (= c!412732 ((_ is Cons!29590) tl!4068))))

(assert (=> d!726606 (validRegex!3251 (derivativeStep!2194 r!27340 c!14016))))

(assert (=> d!726606 (= (derivative!320 (derivativeStep!2194 r!27340 c!14016) tl!4068) lt!905237)))

(declare-fun b!2566305 () Bool)

(assert (=> b!2566305 (= e!1620199 (derivative!320 (derivativeStep!2194 (derivativeStep!2194 r!27340 c!14016) (h!35010 tl!4068)) (t!211389 tl!4068)))))

(declare-fun b!2566306 () Bool)

(assert (=> b!2566306 (= e!1620199 (derivativeStep!2194 r!27340 c!14016))))

(assert (= (and d!726606 c!412732) b!2566305))

(assert (= (and d!726606 (not c!412732)) b!2566306))

(declare-fun m!2904419 () Bool)

(assert (=> d!726606 m!2904419))

(assert (=> d!726606 m!2904405))

(declare-fun m!2904421 () Bool)

(assert (=> d!726606 m!2904421))

(assert (=> b!2566305 m!2904405))

(declare-fun m!2904423 () Bool)

(assert (=> b!2566305 m!2904423))

(assert (=> b!2566305 m!2904423))

(declare-fun m!2904425 () Bool)

(assert (=> b!2566305 m!2904425))

(assert (=> b!2566276 d!726606))

(declare-fun bm!165174 () Bool)

(declare-fun call!165182 () Regex!7625)

(declare-fun call!165181 () Regex!7625)

(assert (=> bm!165174 (= call!165182 call!165181)))

(declare-fun b!2566356 () Bool)

(declare-fun e!1620229 () Regex!7625)

(assert (=> b!2566356 (= e!1620229 (ite (= c!14016 (c!412725 r!27340)) EmptyExpr!7625 EmptyLang!7625))))

(declare-fun c!412758 () Bool)

(declare-fun bm!165175 () Bool)

(declare-fun c!412756 () Bool)

(assert (=> bm!165175 (= call!165181 (derivativeStep!2194 (ite c!412756 (regOne!15763 r!27340) (ite c!412758 (reg!7954 r!27340) (regOne!15762 r!27340))) c!14016))))

(declare-fun d!726608 () Bool)

(declare-fun lt!905242 () Regex!7625)

(assert (=> d!726608 (validRegex!3251 lt!905242)))

(declare-fun e!1620228 () Regex!7625)

(assert (=> d!726608 (= lt!905242 e!1620228)))

(declare-fun c!412755 () Bool)

(assert (=> d!726608 (= c!412755 (or ((_ is EmptyExpr!7625) r!27340) ((_ is EmptyLang!7625) r!27340)))))

(assert (=> d!726608 (validRegex!3251 r!27340)))

(assert (=> d!726608 (= (derivativeStep!2194 r!27340 c!14016) lt!905242)))

(declare-fun b!2566357 () Bool)

(assert (=> b!2566357 (= e!1620228 e!1620229)))

(declare-fun c!412759 () Bool)

(assert (=> b!2566357 (= c!412759 ((_ is ElementMatch!7625) r!27340))))

(declare-fun b!2566358 () Bool)

(assert (=> b!2566358 (= e!1620228 EmptyLang!7625)))

(declare-fun b!2566359 () Bool)

(declare-fun e!1620231 () Regex!7625)

(declare-fun e!1620227 () Regex!7625)

(assert (=> b!2566359 (= e!1620231 e!1620227)))

(assert (=> b!2566359 (= c!412758 ((_ is Star!7625) r!27340))))

(declare-fun b!2566360 () Bool)

(assert (=> b!2566360 (= e!1620227 (Concat!12321 call!165182 r!27340))))

(declare-fun b!2566361 () Bool)

(declare-fun call!165179 () Regex!7625)

(assert (=> b!2566361 (= e!1620231 (Union!7625 call!165181 call!165179))))

(declare-fun bm!165176 () Bool)

(declare-fun call!165180 () Regex!7625)

(assert (=> bm!165176 (= call!165180 call!165182)))

(declare-fun b!2566362 () Bool)

(declare-fun e!1620230 () Regex!7625)

(assert (=> b!2566362 (= e!1620230 (Union!7625 (Concat!12321 call!165180 (regTwo!15762 r!27340)) EmptyLang!7625))))

(declare-fun b!2566363 () Bool)

(assert (=> b!2566363 (= c!412756 ((_ is Union!7625) r!27340))))

(assert (=> b!2566363 (= e!1620229 e!1620231)))

(declare-fun b!2566364 () Bool)

(assert (=> b!2566364 (= e!1620230 (Union!7625 (Concat!12321 call!165180 (regTwo!15762 r!27340)) call!165179))))

(declare-fun b!2566365 () Bool)

(declare-fun c!412757 () Bool)

(assert (=> b!2566365 (= c!412757 (nullable!2542 (regOne!15762 r!27340)))))

(assert (=> b!2566365 (= e!1620227 e!1620230)))

(declare-fun bm!165177 () Bool)

(assert (=> bm!165177 (= call!165179 (derivativeStep!2194 (ite c!412756 (regTwo!15763 r!27340) (regTwo!15762 r!27340)) c!14016))))

(assert (= (and d!726608 c!412755) b!2566358))

(assert (= (and d!726608 (not c!412755)) b!2566357))

(assert (= (and b!2566357 c!412759) b!2566356))

(assert (= (and b!2566357 (not c!412759)) b!2566363))

(assert (= (and b!2566363 c!412756) b!2566361))

(assert (= (and b!2566363 (not c!412756)) b!2566359))

(assert (= (and b!2566359 c!412758) b!2566360))

(assert (= (and b!2566359 (not c!412758)) b!2566365))

(assert (= (and b!2566365 c!412757) b!2566364))

(assert (= (and b!2566365 (not c!412757)) b!2566362))

(assert (= (or b!2566364 b!2566362) bm!165176))

(assert (= (or b!2566360 bm!165176) bm!165174))

(assert (= (or b!2566361 b!2566364) bm!165177))

(assert (= (or b!2566361 bm!165174) bm!165175))

(declare-fun m!2904433 () Bool)

(assert (=> bm!165175 m!2904433))

(declare-fun m!2904435 () Bool)

(assert (=> d!726608 m!2904435))

(assert (=> d!726608 m!2904403))

(assert (=> b!2566365 m!2904415))

(declare-fun m!2904437 () Bool)

(assert (=> bm!165177 m!2904437))

(assert (=> b!2566276 d!726608))

(declare-fun d!726612 () Bool)

(assert (=> d!726612 (= (nullable!2542 (regOne!15762 r!27340)) (nullableFct!766 (regOne!15762 r!27340)))))

(declare-fun bs!469935 () Bool)

(assert (= bs!469935 d!726612))

(declare-fun m!2904439 () Bool)

(assert (=> bs!469935 m!2904439))

(assert (=> b!2566278 d!726612))

(declare-fun bm!165192 () Bool)

(declare-fun call!165197 () Bool)

(declare-fun call!165198 () Bool)

(assert (=> bm!165192 (= call!165197 call!165198)))

(declare-fun b!2566410 () Bool)

(declare-fun e!1620261 () Bool)

(declare-fun e!1620262 () Bool)

(assert (=> b!2566410 (= e!1620261 e!1620262)))

(declare-fun res!1079916 () Bool)

(assert (=> b!2566410 (= res!1079916 (not (nullable!2542 (reg!7954 r!27340))))))

(assert (=> b!2566410 (=> (not res!1079916) (not e!1620262))))

(declare-fun d!726614 () Bool)

(declare-fun res!1079917 () Bool)

(declare-fun e!1620265 () Bool)

(assert (=> d!726614 (=> res!1079917 e!1620265)))

(assert (=> d!726614 (= res!1079917 ((_ is ElementMatch!7625) r!27340))))

(assert (=> d!726614 (= (validRegex!3251 r!27340) e!1620265)))

(declare-fun b!2566411 () Bool)

(declare-fun e!1620259 () Bool)

(declare-fun call!165199 () Bool)

(assert (=> b!2566411 (= e!1620259 call!165199)))

(declare-fun b!2566412 () Bool)

(declare-fun res!1079919 () Bool)

(declare-fun e!1620260 () Bool)

(assert (=> b!2566412 (=> res!1079919 e!1620260)))

(assert (=> b!2566412 (= res!1079919 (not ((_ is Concat!12321) r!27340)))))

(declare-fun e!1620263 () Bool)

(assert (=> b!2566412 (= e!1620263 e!1620260)))

(declare-fun b!2566413 () Bool)

(assert (=> b!2566413 (= e!1620265 e!1620261)))

(declare-fun c!412778 () Bool)

(assert (=> b!2566413 (= c!412778 ((_ is Star!7625) r!27340))))

(declare-fun b!2566414 () Bool)

(declare-fun res!1079918 () Bool)

(declare-fun e!1620264 () Bool)

(assert (=> b!2566414 (=> (not res!1079918) (not e!1620264))))

(assert (=> b!2566414 (= res!1079918 call!165199)))

(assert (=> b!2566414 (= e!1620263 e!1620264)))

(declare-fun b!2566415 () Bool)

(assert (=> b!2566415 (= e!1620264 call!165197)))

(declare-fun b!2566416 () Bool)

(assert (=> b!2566416 (= e!1620260 e!1620259)))

(declare-fun res!1079920 () Bool)

(assert (=> b!2566416 (=> (not res!1079920) (not e!1620259))))

(assert (=> b!2566416 (= res!1079920 call!165197)))

(declare-fun b!2566417 () Bool)

(assert (=> b!2566417 (= e!1620262 call!165198)))

(declare-fun c!412777 () Bool)

(declare-fun bm!165193 () Bool)

(assert (=> bm!165193 (= call!165198 (validRegex!3251 (ite c!412778 (reg!7954 r!27340) (ite c!412777 (regTwo!15763 r!27340) (regOne!15762 r!27340)))))))

(declare-fun b!2566418 () Bool)

(assert (=> b!2566418 (= e!1620261 e!1620263)))

(assert (=> b!2566418 (= c!412777 ((_ is Union!7625) r!27340))))

(declare-fun bm!165194 () Bool)

(assert (=> bm!165194 (= call!165199 (validRegex!3251 (ite c!412777 (regOne!15763 r!27340) (regTwo!15762 r!27340))))))

(assert (= (and d!726614 (not res!1079917)) b!2566413))

(assert (= (and b!2566413 c!412778) b!2566410))

(assert (= (and b!2566413 (not c!412778)) b!2566418))

(assert (= (and b!2566410 res!1079916) b!2566417))

(assert (= (and b!2566418 c!412777) b!2566414))

(assert (= (and b!2566418 (not c!412777)) b!2566412))

(assert (= (and b!2566414 res!1079918) b!2566415))

(assert (= (and b!2566412 (not res!1079919)) b!2566416))

(assert (= (and b!2566416 res!1079920) b!2566411))

(assert (= (or b!2566414 b!2566411) bm!165194))

(assert (= (or b!2566415 b!2566416) bm!165192))

(assert (= (or b!2566417 bm!165192) bm!165193))

(declare-fun m!2904469 () Bool)

(assert (=> b!2566410 m!2904469))

(declare-fun m!2904471 () Bool)

(assert (=> bm!165193 m!2904471))

(declare-fun m!2904473 () Bool)

(assert (=> bm!165194 m!2904473))

(assert (=> start!248168 d!726614))

(declare-fun bm!165198 () Bool)

(declare-fun call!165203 () Bool)

(declare-fun call!165204 () Bool)

(assert (=> bm!165198 (= call!165203 call!165204)))

(declare-fun b!2566428 () Bool)

(declare-fun e!1620275 () Bool)

(declare-fun e!1620276 () Bool)

(assert (=> b!2566428 (= e!1620275 e!1620276)))

(declare-fun res!1079926 () Bool)

(assert (=> b!2566428 (= res!1079926 (not (nullable!2542 (reg!7954 (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625)))))))

(assert (=> b!2566428 (=> (not res!1079926) (not e!1620276))))

(declare-fun d!726626 () Bool)

(declare-fun res!1079927 () Bool)

(declare-fun e!1620279 () Bool)

(assert (=> d!726626 (=> res!1079927 e!1620279)))

(assert (=> d!726626 (= res!1079927 ((_ is ElementMatch!7625) (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625)))))

(assert (=> d!726626 (= (validRegex!3251 (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625)) e!1620279)))

(declare-fun b!2566429 () Bool)

(declare-fun e!1620273 () Bool)

(declare-fun call!165205 () Bool)

(assert (=> b!2566429 (= e!1620273 call!165205)))

(declare-fun b!2566430 () Bool)

(declare-fun res!1079929 () Bool)

(declare-fun e!1620274 () Bool)

(assert (=> b!2566430 (=> res!1079929 e!1620274)))

(assert (=> b!2566430 (= res!1079929 (not ((_ is Concat!12321) (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625))))))

(declare-fun e!1620277 () Bool)

(assert (=> b!2566430 (= e!1620277 e!1620274)))

(declare-fun b!2566431 () Bool)

(assert (=> b!2566431 (= e!1620279 e!1620275)))

(declare-fun c!412782 () Bool)

(assert (=> b!2566431 (= c!412782 ((_ is Star!7625) (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625)))))

(declare-fun b!2566432 () Bool)

(declare-fun res!1079928 () Bool)

(declare-fun e!1620278 () Bool)

(assert (=> b!2566432 (=> (not res!1079928) (not e!1620278))))

(assert (=> b!2566432 (= res!1079928 call!165205)))

(assert (=> b!2566432 (= e!1620277 e!1620278)))

(declare-fun b!2566433 () Bool)

(assert (=> b!2566433 (= e!1620278 call!165203)))

(declare-fun b!2566434 () Bool)

(assert (=> b!2566434 (= e!1620274 e!1620273)))

(declare-fun res!1079930 () Bool)

(assert (=> b!2566434 (=> (not res!1079930) (not e!1620273))))

(assert (=> b!2566434 (= res!1079930 call!165203)))

(declare-fun b!2566435 () Bool)

(assert (=> b!2566435 (= e!1620276 call!165204)))

(declare-fun bm!165199 () Bool)

(declare-fun c!412781 () Bool)

(assert (=> bm!165199 (= call!165204 (validRegex!3251 (ite c!412782 (reg!7954 (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625)) (ite c!412781 (regTwo!15763 (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625)) (regOne!15762 (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625))))))))

(declare-fun b!2566436 () Bool)

(assert (=> b!2566436 (= e!1620275 e!1620277)))

(assert (=> b!2566436 (= c!412781 ((_ is Union!7625) (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625)))))

(declare-fun bm!165200 () Bool)

(assert (=> bm!165200 (= call!165205 (validRegex!3251 (ite c!412781 (regOne!15763 (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625)) (regTwo!15762 (Union!7625 (Concat!12321 (derivativeStep!2194 (regOne!15762 r!27340) c!14016) (regTwo!15762 r!27340)) EmptyLang!7625)))))))

(assert (= (and d!726626 (not res!1079927)) b!2566431))

(assert (= (and b!2566431 c!412782) b!2566428))

(assert (= (and b!2566431 (not c!412782)) b!2566436))

(assert (= (and b!2566428 res!1079926) b!2566435))

(assert (= (and b!2566436 c!412781) b!2566432))

(assert (= (and b!2566436 (not c!412781)) b!2566430))

(assert (= (and b!2566432 res!1079928) b!2566433))

(assert (= (and b!2566430 (not res!1079929)) b!2566434))

(assert (= (and b!2566434 res!1079930) b!2566429))

(assert (= (or b!2566432 b!2566429) bm!165200))

(assert (= (or b!2566433 b!2566434) bm!165198))

(assert (= (or b!2566435 bm!165198) bm!165199))

(declare-fun m!2904481 () Bool)

(assert (=> b!2566428 m!2904481))

(declare-fun m!2904483 () Bool)

(assert (=> bm!165199 m!2904483))

(declare-fun m!2904485 () Bool)

(assert (=> bm!165200 m!2904485))

(assert (=> b!2566277 d!726626))

(declare-fun bm!165201 () Bool)

(declare-fun call!165209 () Regex!7625)

(declare-fun call!165208 () Regex!7625)

(assert (=> bm!165201 (= call!165209 call!165208)))

(declare-fun b!2566448 () Bool)

(declare-fun e!1620287 () Regex!7625)

(assert (=> b!2566448 (= e!1620287 (ite (= c!14016 (c!412725 (regOne!15762 r!27340))) EmptyExpr!7625 EmptyLang!7625))))

(declare-fun bm!165202 () Bool)

(declare-fun c!412786 () Bool)

(declare-fun c!412784 () Bool)

(assert (=> bm!165202 (= call!165208 (derivativeStep!2194 (ite c!412784 (regOne!15763 (regOne!15762 r!27340)) (ite c!412786 (reg!7954 (regOne!15762 r!27340)) (regOne!15762 (regOne!15762 r!27340)))) c!14016))))

(declare-fun d!726628 () Bool)

(declare-fun lt!905248 () Regex!7625)

(assert (=> d!726628 (validRegex!3251 lt!905248)))

(declare-fun e!1620286 () Regex!7625)

(assert (=> d!726628 (= lt!905248 e!1620286)))

(declare-fun c!412783 () Bool)

(assert (=> d!726628 (= c!412783 (or ((_ is EmptyExpr!7625) (regOne!15762 r!27340)) ((_ is EmptyLang!7625) (regOne!15762 r!27340))))))

(assert (=> d!726628 (validRegex!3251 (regOne!15762 r!27340))))

(assert (=> d!726628 (= (derivativeStep!2194 (regOne!15762 r!27340) c!14016) lt!905248)))

(declare-fun b!2566449 () Bool)

(assert (=> b!2566449 (= e!1620286 e!1620287)))

(declare-fun c!412787 () Bool)

(assert (=> b!2566449 (= c!412787 ((_ is ElementMatch!7625) (regOne!15762 r!27340)))))

(declare-fun b!2566450 () Bool)

(assert (=> b!2566450 (= e!1620286 EmptyLang!7625)))

(declare-fun b!2566451 () Bool)

(declare-fun e!1620289 () Regex!7625)

(declare-fun e!1620285 () Regex!7625)

(assert (=> b!2566451 (= e!1620289 e!1620285)))

(assert (=> b!2566451 (= c!412786 ((_ is Star!7625) (regOne!15762 r!27340)))))

(declare-fun b!2566452 () Bool)

(assert (=> b!2566452 (= e!1620285 (Concat!12321 call!165209 (regOne!15762 r!27340)))))

(declare-fun b!2566453 () Bool)

(declare-fun call!165206 () Regex!7625)

(assert (=> b!2566453 (= e!1620289 (Union!7625 call!165208 call!165206))))

(declare-fun bm!165203 () Bool)

(declare-fun call!165207 () Regex!7625)

(assert (=> bm!165203 (= call!165207 call!165209)))

(declare-fun b!2566454 () Bool)

(declare-fun e!1620288 () Regex!7625)

(assert (=> b!2566454 (= e!1620288 (Union!7625 (Concat!12321 call!165207 (regTwo!15762 (regOne!15762 r!27340))) EmptyLang!7625))))

(declare-fun b!2566455 () Bool)

(assert (=> b!2566455 (= c!412784 ((_ is Union!7625) (regOne!15762 r!27340)))))

(assert (=> b!2566455 (= e!1620287 e!1620289)))

(declare-fun b!2566456 () Bool)

(assert (=> b!2566456 (= e!1620288 (Union!7625 (Concat!12321 call!165207 (regTwo!15762 (regOne!15762 r!27340))) call!165206))))

(declare-fun b!2566457 () Bool)

(declare-fun c!412785 () Bool)

(assert (=> b!2566457 (= c!412785 (nullable!2542 (regOne!15762 (regOne!15762 r!27340))))))

(assert (=> b!2566457 (= e!1620285 e!1620288)))

(declare-fun bm!165204 () Bool)

(assert (=> bm!165204 (= call!165206 (derivativeStep!2194 (ite c!412784 (regTwo!15763 (regOne!15762 r!27340)) (regTwo!15762 (regOne!15762 r!27340))) c!14016))))

(assert (= (and d!726628 c!412783) b!2566450))

(assert (= (and d!726628 (not c!412783)) b!2566449))

(assert (= (and b!2566449 c!412787) b!2566448))

(assert (= (and b!2566449 (not c!412787)) b!2566455))

(assert (= (and b!2566455 c!412784) b!2566453))

(assert (= (and b!2566455 (not c!412784)) b!2566451))

(assert (= (and b!2566451 c!412786) b!2566452))

(assert (= (and b!2566451 (not c!412786)) b!2566457))

(assert (= (and b!2566457 c!412785) b!2566456))

(assert (= (and b!2566457 (not c!412785)) b!2566454))

(assert (= (or b!2566456 b!2566454) bm!165203))

(assert (= (or b!2566452 bm!165203) bm!165201))

(assert (= (or b!2566453 b!2566456) bm!165204))

(assert (= (or b!2566453 bm!165201) bm!165202))

(declare-fun m!2904487 () Bool)

(assert (=> bm!165202 m!2904487))

(declare-fun m!2904489 () Bool)

(assert (=> d!726628 m!2904489))

(declare-fun m!2904491 () Bool)

(assert (=> d!726628 m!2904491))

(declare-fun m!2904493 () Bool)

(assert (=> b!2566457 m!2904493))

(declare-fun m!2904495 () Bool)

(assert (=> bm!165204 m!2904495))

(assert (=> b!2566277 d!726628))

(declare-fun b!2566494 () Bool)

(declare-fun e!1620297 () Bool)

(declare-fun tp!816896 () Bool)

(assert (=> b!2566494 (= e!1620297 tp!816896)))

(assert (=> b!2566275 (= tp!816843 e!1620297)))

(declare-fun b!2566493 () Bool)

(declare-fun tp!816899 () Bool)

(declare-fun tp!816898 () Bool)

(assert (=> b!2566493 (= e!1620297 (and tp!816899 tp!816898))))

(declare-fun b!2566492 () Bool)

(assert (=> b!2566492 (= e!1620297 tp_is_empty!13105)))

(declare-fun b!2566495 () Bool)

(declare-fun tp!816895 () Bool)

(declare-fun tp!816897 () Bool)

(assert (=> b!2566495 (= e!1620297 (and tp!816895 tp!816897))))

(assert (= (and b!2566275 ((_ is ElementMatch!7625) (regOne!15762 r!27340))) b!2566492))

(assert (= (and b!2566275 ((_ is Concat!12321) (regOne!15762 r!27340))) b!2566493))

(assert (= (and b!2566275 ((_ is Star!7625) (regOne!15762 r!27340))) b!2566494))

(assert (= (and b!2566275 ((_ is Union!7625) (regOne!15762 r!27340))) b!2566495))

(declare-fun b!2566498 () Bool)

(declare-fun e!1620298 () Bool)

(declare-fun tp!816901 () Bool)

(assert (=> b!2566498 (= e!1620298 tp!816901)))

(assert (=> b!2566275 (= tp!816844 e!1620298)))

(declare-fun b!2566497 () Bool)

(declare-fun tp!816904 () Bool)

(declare-fun tp!816903 () Bool)

(assert (=> b!2566497 (= e!1620298 (and tp!816904 tp!816903))))

(declare-fun b!2566496 () Bool)

(assert (=> b!2566496 (= e!1620298 tp_is_empty!13105)))

(declare-fun b!2566499 () Bool)

(declare-fun tp!816900 () Bool)

(declare-fun tp!816902 () Bool)

(assert (=> b!2566499 (= e!1620298 (and tp!816900 tp!816902))))

(assert (= (and b!2566275 ((_ is ElementMatch!7625) (regTwo!15762 r!27340))) b!2566496))

(assert (= (and b!2566275 ((_ is Concat!12321) (regTwo!15762 r!27340))) b!2566497))

(assert (= (and b!2566275 ((_ is Star!7625) (regTwo!15762 r!27340))) b!2566498))

(assert (= (and b!2566275 ((_ is Union!7625) (regTwo!15762 r!27340))) b!2566499))

(declare-fun b!2566502 () Bool)

(declare-fun e!1620299 () Bool)

(declare-fun tp!816906 () Bool)

(assert (=> b!2566502 (= e!1620299 tp!816906)))

(assert (=> b!2566274 (= tp!816841 e!1620299)))

(declare-fun b!2566501 () Bool)

(declare-fun tp!816909 () Bool)

(declare-fun tp!816908 () Bool)

(assert (=> b!2566501 (= e!1620299 (and tp!816909 tp!816908))))

(declare-fun b!2566500 () Bool)

(assert (=> b!2566500 (= e!1620299 tp_is_empty!13105)))

(declare-fun b!2566503 () Bool)

(declare-fun tp!816905 () Bool)

(declare-fun tp!816907 () Bool)

(assert (=> b!2566503 (= e!1620299 (and tp!816905 tp!816907))))

(assert (= (and b!2566274 ((_ is ElementMatch!7625) (reg!7954 r!27340))) b!2566500))

(assert (= (and b!2566274 ((_ is Concat!12321) (reg!7954 r!27340))) b!2566501))

(assert (= (and b!2566274 ((_ is Star!7625) (reg!7954 r!27340))) b!2566502))

(assert (= (and b!2566274 ((_ is Union!7625) (reg!7954 r!27340))) b!2566503))

(declare-fun b!2566508 () Bool)

(declare-fun e!1620302 () Bool)

(declare-fun tp!816912 () Bool)

(assert (=> b!2566508 (= e!1620302 (and tp_is_empty!13105 tp!816912))))

(assert (=> b!2566279 (= tp!816845 e!1620302)))

(assert (= (and b!2566279 ((_ is Cons!29590) (t!211389 tl!4068))) b!2566508))

(declare-fun b!2566511 () Bool)

(declare-fun e!1620303 () Bool)

(declare-fun tp!816914 () Bool)

(assert (=> b!2566511 (= e!1620303 tp!816914)))

(assert (=> b!2566282 (= tp!816846 e!1620303)))

(declare-fun b!2566510 () Bool)

(declare-fun tp!816917 () Bool)

(declare-fun tp!816916 () Bool)

(assert (=> b!2566510 (= e!1620303 (and tp!816917 tp!816916))))

(declare-fun b!2566509 () Bool)

(assert (=> b!2566509 (= e!1620303 tp_is_empty!13105)))

(declare-fun b!2566512 () Bool)

(declare-fun tp!816913 () Bool)

(declare-fun tp!816915 () Bool)

(assert (=> b!2566512 (= e!1620303 (and tp!816913 tp!816915))))

(assert (= (and b!2566282 ((_ is ElementMatch!7625) (regOne!15763 r!27340))) b!2566509))

(assert (= (and b!2566282 ((_ is Concat!12321) (regOne!15763 r!27340))) b!2566510))

(assert (= (and b!2566282 ((_ is Star!7625) (regOne!15763 r!27340))) b!2566511))

(assert (= (and b!2566282 ((_ is Union!7625) (regOne!15763 r!27340))) b!2566512))

(declare-fun b!2566515 () Bool)

(declare-fun e!1620304 () Bool)

(declare-fun tp!816919 () Bool)

(assert (=> b!2566515 (= e!1620304 tp!816919)))

(assert (=> b!2566282 (= tp!816842 e!1620304)))

(declare-fun b!2566514 () Bool)

(declare-fun tp!816922 () Bool)

(declare-fun tp!816921 () Bool)

(assert (=> b!2566514 (= e!1620304 (and tp!816922 tp!816921))))

(declare-fun b!2566513 () Bool)

(assert (=> b!2566513 (= e!1620304 tp_is_empty!13105)))

(declare-fun b!2566516 () Bool)

(declare-fun tp!816918 () Bool)

(declare-fun tp!816920 () Bool)

(assert (=> b!2566516 (= e!1620304 (and tp!816918 tp!816920))))

(assert (= (and b!2566282 ((_ is ElementMatch!7625) (regTwo!15763 r!27340))) b!2566513))

(assert (= (and b!2566282 ((_ is Concat!12321) (regTwo!15763 r!27340))) b!2566514))

(assert (= (and b!2566282 ((_ is Star!7625) (regTwo!15763 r!27340))) b!2566515))

(assert (= (and b!2566282 ((_ is Union!7625) (regTwo!15763 r!27340))) b!2566516))

(check-sat tp_is_empty!13105 (not b!2566428) (not bm!165199) (not b!2566514) (not b!2566410) (not b!2566502) (not b!2566305) (not d!726606) (not b!2566365) (not b!2566493) (not bm!165200) (not bm!165177) (not b!2566499) (not b!2566515) (not b!2566494) (not b!2566497) (not b!2566508) (not b!2566511) (not d!726608) (not b!2566512) (not d!726612) (not d!726604) (not d!726628) (not b!2566503) (not b!2566501) (not b!2566457) (not b!2566495) (not b!2566516) (not b!2566510) (not bm!165175) (not bm!165202) (not b!2566498) (not bm!165194) (not bm!165204) (not bm!165193))
(check-sat)
