; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243690 () Bool)

(assert start!243690)

(declare-fun b!2495147 () Bool)

(declare-fun e!1583320 () Bool)

(declare-fun e!1583319 () Bool)

(assert (=> b!2495147 (= e!1583320 e!1583319)))

(declare-fun res!1055315 () Bool)

(assert (=> b!2495147 (=> (not res!1055315) (not e!1583319))))

(declare-datatypes ((C!14902 0))(
  ( (C!14903 (val!9103 Int)) )
))
(declare-datatypes ((Regex!7372 0))(
  ( (ElementMatch!7372 (c!396760 C!14902)) (Concat!12068 (regOne!15256 Regex!7372) (regTwo!15256 Regex!7372)) (EmptyExpr!7372) (Star!7372 (reg!7701 Regex!7372)) (EmptyLang!7372) (Union!7372 (regOne!15257 Regex!7372) (regTwo!15257 Regex!7372)) )
))
(declare-fun lt!894479 () Regex!7372)

(declare-fun lt!894478 () Regex!7372)

(declare-fun lt!894480 () Regex!7372)

(assert (=> b!2495147 (= res!1055315 (= lt!894478 (Concat!12068 lt!894479 lt!894480)))))

(declare-fun r!27340 () Regex!7372)

(assert (=> b!2495147 (= lt!894480 (Star!7372 (reg!7701 r!27340)))))

(declare-fun c!14016 () C!14902)

(declare-fun derivativeStep!1941 (Regex!7372 C!14902) Regex!7372)

(assert (=> b!2495147 (= lt!894479 (derivativeStep!1941 (reg!7701 r!27340) c!14016))))

(declare-fun b!2495148 () Bool)

(declare-fun e!1583317 () Bool)

(declare-fun validRegex!2998 (Regex!7372) Bool)

(assert (=> b!2495148 (= e!1583317 (validRegex!2998 lt!894479))))

(declare-datatypes ((List!29437 0))(
  ( (Nil!29337) (Cons!29337 (h!34757 C!14902) (t!211136 List!29437)) )
))
(declare-fun tl!4068 () List!29437)

(declare-datatypes ((tuple2!29362 0))(
  ( (tuple2!29363 (_1!17223 List!29437) (_2!17223 List!29437)) )
))
(declare-datatypes ((Option!5801 0))(
  ( (None!5800) (Some!5800 (v!31731 tuple2!29362)) )
))
(declare-fun isDefined!4623 (Option!5801) Bool)

(declare-fun findConcatSeparation!823 (Regex!7372 Regex!7372 List!29437 List!29437 List!29437) Option!5801)

(assert (=> b!2495148 (isDefined!4623 (findConcatSeparation!823 lt!894479 lt!894480 Nil!29337 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43013 0))(
  ( (Unit!43014) )
))
(declare-fun lt!894482 () Unit!43013)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!105 (Regex!7372 Regex!7372 List!29437) Unit!43013)

(assert (=> b!2495148 (= lt!894482 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!105 lt!894479 lt!894480 tl!4068))))

(declare-fun b!2495149 () Bool)

(declare-fun e!1583315 () Bool)

(assert (=> b!2495149 (= e!1583315 e!1583320)))

(declare-fun res!1055314 () Bool)

(assert (=> b!2495149 (=> (not res!1055314) (not e!1583320))))

(declare-fun lt!894477 () Regex!7372)

(declare-fun nullable!2289 (Regex!7372) Bool)

(assert (=> b!2495149 (= res!1055314 (nullable!2289 lt!894477))))

(declare-fun derivative!67 (Regex!7372 List!29437) Regex!7372)

(assert (=> b!2495149 (= lt!894477 (derivative!67 lt!894478 tl!4068))))

(assert (=> b!2495149 (= lt!894478 (derivativeStep!1941 r!27340 c!14016))))

(declare-fun res!1055313 () Bool)

(assert (=> start!243690 (=> (not res!1055313) (not e!1583315))))

(assert (=> start!243690 (= res!1055313 (validRegex!2998 r!27340))))

(assert (=> start!243690 e!1583315))

(declare-fun e!1583318 () Bool)

(assert (=> start!243690 e!1583318))

(declare-fun tp_is_empty!12599 () Bool)

(assert (=> start!243690 tp_is_empty!12599))

(declare-fun e!1583316 () Bool)

(assert (=> start!243690 e!1583316))

(declare-fun b!2495150 () Bool)

(declare-fun tp!799220 () Bool)

(declare-fun tp!799219 () Bool)

(assert (=> b!2495150 (= e!1583318 (and tp!799220 tp!799219))))

(declare-fun b!2495151 () Bool)

(declare-fun tp!799223 () Bool)

(assert (=> b!2495151 (= e!1583318 tp!799223)))

(declare-fun b!2495152 () Bool)

(declare-fun tp!799221 () Bool)

(assert (=> b!2495152 (= e!1583316 (and tp_is_empty!12599 tp!799221))))

(declare-fun b!2495153 () Bool)

(assert (=> b!2495153 (= e!1583319 (not e!1583317))))

(declare-fun res!1055317 () Bool)

(assert (=> b!2495153 (=> res!1055317 e!1583317)))

(declare-fun lt!894481 () Bool)

(assert (=> b!2495153 (= res!1055317 (not lt!894481))))

(declare-fun matchR!3381 (Regex!7372 List!29437) Bool)

(assert (=> b!2495153 (= lt!894481 (matchR!3381 lt!894477 Nil!29337))))

(assert (=> b!2495153 (= lt!894481 (matchR!3381 lt!894478 tl!4068))))

(declare-fun lt!894483 () Unit!43013)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!27 (Regex!7372 List!29437) Unit!43013)

(assert (=> b!2495153 (= lt!894483 (lemmaMatchRIsSameAsWholeDerivativeAndNil!27 lt!894478 tl!4068))))

(declare-fun b!2495154 () Bool)

(declare-fun tp!799222 () Bool)

(declare-fun tp!799224 () Bool)

(assert (=> b!2495154 (= e!1583318 (and tp!799222 tp!799224))))

(declare-fun b!2495155 () Bool)

(declare-fun res!1055316 () Bool)

(assert (=> b!2495155 (=> (not res!1055316) (not e!1583320))))

(assert (=> b!2495155 (= res!1055316 (and (not (is-EmptyExpr!7372 r!27340)) (not (is-EmptyLang!7372 r!27340)) (not (is-ElementMatch!7372 r!27340)) (not (is-Union!7372 r!27340)) (is-Star!7372 r!27340)))))

(declare-fun b!2495156 () Bool)

(declare-fun res!1055318 () Bool)

(assert (=> b!2495156 (=> (not res!1055318) (not e!1583319))))

(assert (=> b!2495156 (= res!1055318 (not (nullable!2289 (derivative!67 lt!894479 tl!4068))))))

(declare-fun b!2495157 () Bool)

(assert (=> b!2495157 (= e!1583318 tp_is_empty!12599)))

(assert (= (and start!243690 res!1055313) b!2495149))

(assert (= (and b!2495149 res!1055314) b!2495155))

(assert (= (and b!2495155 res!1055316) b!2495147))

(assert (= (and b!2495147 res!1055315) b!2495156))

(assert (= (and b!2495156 res!1055318) b!2495153))

(assert (= (and b!2495153 (not res!1055317)) b!2495148))

(assert (= (and start!243690 (is-ElementMatch!7372 r!27340)) b!2495157))

(assert (= (and start!243690 (is-Concat!12068 r!27340)) b!2495150))

(assert (= (and start!243690 (is-Star!7372 r!27340)) b!2495151))

(assert (= (and start!243690 (is-Union!7372 r!27340)) b!2495154))

(assert (= (and start!243690 (is-Cons!29337 tl!4068)) b!2495152))

(declare-fun m!2859977 () Bool)

(assert (=> b!2495149 m!2859977))

(declare-fun m!2859979 () Bool)

(assert (=> b!2495149 m!2859979))

(declare-fun m!2859981 () Bool)

(assert (=> b!2495149 m!2859981))

(declare-fun m!2859983 () Bool)

(assert (=> start!243690 m!2859983))

(declare-fun m!2859985 () Bool)

(assert (=> b!2495153 m!2859985))

(declare-fun m!2859987 () Bool)

(assert (=> b!2495153 m!2859987))

(declare-fun m!2859989 () Bool)

(assert (=> b!2495153 m!2859989))

(declare-fun m!2859991 () Bool)

(assert (=> b!2495148 m!2859991))

(declare-fun m!2859993 () Bool)

(assert (=> b!2495148 m!2859993))

(assert (=> b!2495148 m!2859993))

(declare-fun m!2859995 () Bool)

(assert (=> b!2495148 m!2859995))

(declare-fun m!2859997 () Bool)

(assert (=> b!2495148 m!2859997))

(declare-fun m!2859999 () Bool)

(assert (=> b!2495156 m!2859999))

(assert (=> b!2495156 m!2859999))

(declare-fun m!2860001 () Bool)

(assert (=> b!2495156 m!2860001))

(declare-fun m!2860003 () Bool)

(assert (=> b!2495147 m!2860003))

(push 1)

(assert (not b!2495154))

(assert (not b!2495156))

(assert (not b!2495147))

(assert (not b!2495152))

(assert (not b!2495150))

(assert (not b!2495148))

(assert (not b!2495153))

(assert (not b!2495151))

(assert (not start!243690))

(assert tp_is_empty!12599)

(assert (not b!2495149))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2495209 () Bool)

(declare-fun e!1583356 () Bool)

(declare-fun call!153729 () Bool)

(assert (=> b!2495209 (= e!1583356 call!153729)))

(declare-fun b!2495210 () Bool)

(declare-fun e!1583357 () Bool)

(declare-fun e!1583359 () Bool)

(assert (=> b!2495210 (= e!1583357 e!1583359)))

(declare-fun c!396766 () Bool)

(assert (=> b!2495210 (= c!396766 (is-Star!7372 r!27340))))

(declare-fun b!2495211 () Bool)

(declare-fun e!1583354 () Bool)

(declare-fun call!153728 () Bool)

(assert (=> b!2495211 (= e!1583354 call!153728)))

(declare-fun b!2495212 () Bool)

(declare-fun e!1583355 () Bool)

(declare-fun e!1583358 () Bool)

(assert (=> b!2495212 (= e!1583355 e!1583358)))

(declare-fun res!1055350 () Bool)

(assert (=> b!2495212 (=> (not res!1055350) (not e!1583358))))

(assert (=> b!2495212 (= res!1055350 call!153729)))

(declare-fun d!714776 () Bool)

(declare-fun res!1055351 () Bool)

(assert (=> d!714776 (=> res!1055351 e!1583357)))

(assert (=> d!714776 (= res!1055351 (is-ElementMatch!7372 r!27340))))

(assert (=> d!714776 (= (validRegex!2998 r!27340) e!1583357)))

(declare-fun b!2495213 () Bool)

(declare-fun res!1055349 () Bool)

(assert (=> b!2495213 (=> (not res!1055349) (not e!1583356))))

(declare-fun call!153730 () Bool)

(assert (=> b!2495213 (= res!1055349 call!153730)))

(declare-fun e!1583353 () Bool)

(assert (=> b!2495213 (= e!1583353 e!1583356)))

(declare-fun bm!153723 () Bool)

(assert (=> bm!153723 (= call!153730 call!153728)))

(declare-fun b!2495214 () Bool)

(assert (=> b!2495214 (= e!1583359 e!1583354)))

(declare-fun res!1055347 () Bool)

(assert (=> b!2495214 (= res!1055347 (not (nullable!2289 (reg!7701 r!27340))))))

(assert (=> b!2495214 (=> (not res!1055347) (not e!1583354))))

(declare-fun b!2495215 () Bool)

(assert (=> b!2495215 (= e!1583359 e!1583353)))

(declare-fun c!396767 () Bool)

(assert (=> b!2495215 (= c!396767 (is-Union!7372 r!27340))))

(declare-fun bm!153724 () Bool)

(assert (=> bm!153724 (= call!153728 (validRegex!2998 (ite c!396766 (reg!7701 r!27340) (ite c!396767 (regOne!15257 r!27340) (regTwo!15256 r!27340)))))))

(declare-fun b!2495216 () Bool)

(assert (=> b!2495216 (= e!1583358 call!153730)))

(declare-fun bm!153725 () Bool)

(assert (=> bm!153725 (= call!153729 (validRegex!2998 (ite c!396767 (regTwo!15257 r!27340) (regOne!15256 r!27340))))))

(declare-fun b!2495217 () Bool)

(declare-fun res!1055348 () Bool)

(assert (=> b!2495217 (=> res!1055348 e!1583355)))

(assert (=> b!2495217 (= res!1055348 (not (is-Concat!12068 r!27340)))))

(assert (=> b!2495217 (= e!1583353 e!1583355)))

(assert (= (and d!714776 (not res!1055351)) b!2495210))

(assert (= (and b!2495210 c!396766) b!2495214))

(assert (= (and b!2495210 (not c!396766)) b!2495215))

(assert (= (and b!2495214 res!1055347) b!2495211))

(assert (= (and b!2495215 c!396767) b!2495213))

(assert (= (and b!2495215 (not c!396767)) b!2495217))

(assert (= (and b!2495213 res!1055349) b!2495209))

(assert (= (and b!2495217 (not res!1055348)) b!2495212))

(assert (= (and b!2495212 res!1055350) b!2495216))

(assert (= (or b!2495213 b!2495216) bm!153723))

(assert (= (or b!2495209 b!2495212) bm!153725))

(assert (= (or b!2495211 bm!153723) bm!153724))

(declare-fun m!2860033 () Bool)

(assert (=> b!2495214 m!2860033))

(declare-fun m!2860035 () Bool)

(assert (=> bm!153724 m!2860035))

(declare-fun m!2860037 () Bool)

(assert (=> bm!153725 m!2860037))

(assert (=> start!243690 d!714776))

(declare-fun b!2495218 () Bool)

(declare-fun e!1583363 () Bool)

(declare-fun call!153732 () Bool)

(assert (=> b!2495218 (= e!1583363 call!153732)))

(declare-fun b!2495219 () Bool)

(declare-fun e!1583364 () Bool)

(declare-fun e!1583366 () Bool)

(assert (=> b!2495219 (= e!1583364 e!1583366)))

(declare-fun c!396768 () Bool)

(assert (=> b!2495219 (= c!396768 (is-Star!7372 lt!894479))))

(declare-fun b!2495220 () Bool)

(declare-fun e!1583361 () Bool)

(declare-fun call!153731 () Bool)

(assert (=> b!2495220 (= e!1583361 call!153731)))

(declare-fun b!2495221 () Bool)

(declare-fun e!1583362 () Bool)

(declare-fun e!1583365 () Bool)

(assert (=> b!2495221 (= e!1583362 e!1583365)))

(declare-fun res!1055355 () Bool)

(assert (=> b!2495221 (=> (not res!1055355) (not e!1583365))))

(assert (=> b!2495221 (= res!1055355 call!153732)))

(declare-fun d!714780 () Bool)

(declare-fun res!1055356 () Bool)

(assert (=> d!714780 (=> res!1055356 e!1583364)))

(assert (=> d!714780 (= res!1055356 (is-ElementMatch!7372 lt!894479))))

(assert (=> d!714780 (= (validRegex!2998 lt!894479) e!1583364)))

(declare-fun b!2495222 () Bool)

(declare-fun res!1055354 () Bool)

(assert (=> b!2495222 (=> (not res!1055354) (not e!1583363))))

(declare-fun call!153733 () Bool)

(assert (=> b!2495222 (= res!1055354 call!153733)))

(declare-fun e!1583360 () Bool)

(assert (=> b!2495222 (= e!1583360 e!1583363)))

(declare-fun bm!153726 () Bool)

(assert (=> bm!153726 (= call!153733 call!153731)))

(declare-fun b!2495223 () Bool)

(assert (=> b!2495223 (= e!1583366 e!1583361)))

(declare-fun res!1055352 () Bool)

(assert (=> b!2495223 (= res!1055352 (not (nullable!2289 (reg!7701 lt!894479))))))

(assert (=> b!2495223 (=> (not res!1055352) (not e!1583361))))

(declare-fun b!2495224 () Bool)

(assert (=> b!2495224 (= e!1583366 e!1583360)))

(declare-fun c!396769 () Bool)

(assert (=> b!2495224 (= c!396769 (is-Union!7372 lt!894479))))

(declare-fun bm!153727 () Bool)

(assert (=> bm!153727 (= call!153731 (validRegex!2998 (ite c!396768 (reg!7701 lt!894479) (ite c!396769 (regOne!15257 lt!894479) (regTwo!15256 lt!894479)))))))

(declare-fun b!2495225 () Bool)

(assert (=> b!2495225 (= e!1583365 call!153733)))

(declare-fun bm!153728 () Bool)

(assert (=> bm!153728 (= call!153732 (validRegex!2998 (ite c!396769 (regTwo!15257 lt!894479) (regOne!15256 lt!894479))))))

(declare-fun b!2495226 () Bool)

(declare-fun res!1055353 () Bool)

(assert (=> b!2495226 (=> res!1055353 e!1583362)))

(assert (=> b!2495226 (= res!1055353 (not (is-Concat!12068 lt!894479)))))

(assert (=> b!2495226 (= e!1583360 e!1583362)))

(assert (= (and d!714780 (not res!1055356)) b!2495219))

(assert (= (and b!2495219 c!396768) b!2495223))

(assert (= (and b!2495219 (not c!396768)) b!2495224))

(assert (= (and b!2495223 res!1055352) b!2495220))

(assert (= (and b!2495224 c!396769) b!2495222))

(assert (= (and b!2495224 (not c!396769)) b!2495226))

(assert (= (and b!2495222 res!1055354) b!2495218))

(assert (= (and b!2495226 (not res!1055353)) b!2495221))

(assert (= (and b!2495221 res!1055355) b!2495225))

(assert (= (or b!2495222 b!2495225) bm!153726))

(assert (= (or b!2495218 b!2495221) bm!153728))

(assert (= (or b!2495220 bm!153726) bm!153727))

(declare-fun m!2860039 () Bool)

(assert (=> b!2495223 m!2860039))

(declare-fun m!2860041 () Bool)

(assert (=> bm!153727 m!2860041))

(declare-fun m!2860043 () Bool)

(assert (=> bm!153728 m!2860043))

(assert (=> b!2495148 d!714780))

(declare-fun d!714782 () Bool)

(declare-fun isEmpty!16804 (Option!5801) Bool)

(assert (=> d!714782 (= (isDefined!4623 (findConcatSeparation!823 lt!894479 lt!894480 Nil!29337 tl!4068 tl!4068)) (not (isEmpty!16804 (findConcatSeparation!823 lt!894479 lt!894480 Nil!29337 tl!4068 tl!4068))))))

(declare-fun bs!468446 () Bool)

(assert (= bs!468446 d!714782))

(assert (=> bs!468446 m!2859993))

(declare-fun m!2860045 () Bool)

(assert (=> bs!468446 m!2860045))

(assert (=> b!2495148 d!714782))

(declare-fun b!2495301 () Bool)

(declare-fun e!1583409 () Bool)

(declare-fun lt!894518 () Option!5801)

(declare-fun ++!7158 (List!29437 List!29437) List!29437)

(declare-fun get!9075 (Option!5801) tuple2!29362)

(assert (=> b!2495301 (= e!1583409 (= (++!7158 (_1!17223 (get!9075 lt!894518)) (_2!17223 (get!9075 lt!894518))) tl!4068))))

(declare-fun b!2495302 () Bool)

(declare-fun e!1583408 () Bool)

(assert (=> b!2495302 (= e!1583408 (not (isDefined!4623 lt!894518)))))

(declare-fun b!2495303 () Bool)

(declare-fun lt!894519 () Unit!43013)

(declare-fun lt!894520 () Unit!43013)

(assert (=> b!2495303 (= lt!894519 lt!894520)))

(assert (=> b!2495303 (= (++!7158 (++!7158 Nil!29337 (Cons!29337 (h!34757 tl!4068) Nil!29337)) (t!211136 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!716 (List!29437 C!14902 List!29437 List!29437) Unit!43013)

(assert (=> b!2495303 (= lt!894520 (lemmaMoveElementToOtherListKeepsConcatEq!716 Nil!29337 (h!34757 tl!4068) (t!211136 tl!4068) tl!4068))))

(declare-fun e!1583406 () Option!5801)

(assert (=> b!2495303 (= e!1583406 (findConcatSeparation!823 lt!894479 lt!894480 (++!7158 Nil!29337 (Cons!29337 (h!34757 tl!4068) Nil!29337)) (t!211136 tl!4068) tl!4068))))

(declare-fun b!2495304 () Bool)

(declare-fun e!1583405 () Option!5801)

(assert (=> b!2495304 (= e!1583405 e!1583406)))

(declare-fun c!396786 () Bool)

(assert (=> b!2495304 (= c!396786 (is-Nil!29337 tl!4068))))

(declare-fun b!2495305 () Bool)

(declare-fun res!1055403 () Bool)

(assert (=> b!2495305 (=> (not res!1055403) (not e!1583409))))

(assert (=> b!2495305 (= res!1055403 (matchR!3381 lt!894480 (_2!17223 (get!9075 lt!894518))))))

(declare-fun d!714784 () Bool)

(assert (=> d!714784 e!1583408))

(declare-fun res!1055401 () Bool)

(assert (=> d!714784 (=> res!1055401 e!1583408)))

(assert (=> d!714784 (= res!1055401 e!1583409)))

(declare-fun res!1055400 () Bool)

(assert (=> d!714784 (=> (not res!1055400) (not e!1583409))))

(assert (=> d!714784 (= res!1055400 (isDefined!4623 lt!894518))))

(assert (=> d!714784 (= lt!894518 e!1583405)))

(declare-fun c!396787 () Bool)

(declare-fun e!1583407 () Bool)

(assert (=> d!714784 (= c!396787 e!1583407)))

(declare-fun res!1055399 () Bool)

(assert (=> d!714784 (=> (not res!1055399) (not e!1583407))))

(assert (=> d!714784 (= res!1055399 (matchR!3381 lt!894479 Nil!29337))))

(assert (=> d!714784 (validRegex!2998 lt!894479)))

(assert (=> d!714784 (= (findConcatSeparation!823 lt!894479 lt!894480 Nil!29337 tl!4068 tl!4068) lt!894518)))

(declare-fun b!2495306 () Bool)

(assert (=> b!2495306 (= e!1583406 None!5800)))

(declare-fun b!2495307 () Bool)

(declare-fun res!1055402 () Bool)

(assert (=> b!2495307 (=> (not res!1055402) (not e!1583409))))

(assert (=> b!2495307 (= res!1055402 (matchR!3381 lt!894479 (_1!17223 (get!9075 lt!894518))))))

(declare-fun b!2495308 () Bool)

(assert (=> b!2495308 (= e!1583407 (matchR!3381 lt!894480 tl!4068))))

(declare-fun b!2495309 () Bool)

(assert (=> b!2495309 (= e!1583405 (Some!5800 (tuple2!29363 Nil!29337 tl!4068)))))

(assert (= (and d!714784 res!1055399) b!2495308))

(assert (= (and d!714784 c!396787) b!2495309))

(assert (= (and d!714784 (not c!396787)) b!2495304))

(assert (= (and b!2495304 c!396786) b!2495306))

(assert (= (and b!2495304 (not c!396786)) b!2495303))

(assert (= (and d!714784 res!1055400) b!2495307))

(assert (= (and b!2495307 res!1055402) b!2495305))

(assert (= (and b!2495305 res!1055403) b!2495301))

(assert (= (and d!714784 (not res!1055401)) b!2495302))

(declare-fun m!2860081 () Bool)

(assert (=> b!2495301 m!2860081))

(declare-fun m!2860083 () Bool)

(assert (=> b!2495301 m!2860083))

(declare-fun m!2860085 () Bool)

(assert (=> b!2495308 m!2860085))

(declare-fun m!2860087 () Bool)

(assert (=> b!2495303 m!2860087))

(assert (=> b!2495303 m!2860087))

(declare-fun m!2860089 () Bool)

(assert (=> b!2495303 m!2860089))

(declare-fun m!2860091 () Bool)

(assert (=> b!2495303 m!2860091))

(assert (=> b!2495303 m!2860087))

(declare-fun m!2860093 () Bool)

(assert (=> b!2495303 m!2860093))

(assert (=> b!2495305 m!2860081))

(declare-fun m!2860095 () Bool)

(assert (=> b!2495305 m!2860095))

(declare-fun m!2860097 () Bool)

(assert (=> d!714784 m!2860097))

(declare-fun m!2860099 () Bool)

(assert (=> d!714784 m!2860099))

(assert (=> d!714784 m!2859991))

(assert (=> b!2495302 m!2860097))

(assert (=> b!2495307 m!2860081))

(declare-fun m!2860101 () Bool)

(assert (=> b!2495307 m!2860101))

(assert (=> b!2495148 d!714784))

(declare-fun d!714792 () Bool)

(assert (=> d!714792 (isDefined!4623 (findConcatSeparation!823 lt!894479 lt!894480 Nil!29337 tl!4068 tl!4068))))

(declare-fun lt!894523 () Unit!43013)

(declare-fun choose!14738 (Regex!7372 Regex!7372 List!29437) Unit!43013)

(assert (=> d!714792 (= lt!894523 (choose!14738 lt!894479 lt!894480 tl!4068))))

(assert (=> d!714792 (validRegex!2998 lt!894479)))

(assert (=> d!714792 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!105 lt!894479 lt!894480 tl!4068) lt!894523)))

(declare-fun bs!468448 () Bool)

(assert (= bs!468448 d!714792))

(assert (=> bs!468448 m!2859993))

(assert (=> bs!468448 m!2859993))

(assert (=> bs!468448 m!2859995))

(declare-fun m!2860103 () Bool)

(assert (=> bs!468448 m!2860103))

(assert (=> bs!468448 m!2859991))

(assert (=> b!2495148 d!714792))

(declare-fun b!2495365 () Bool)

(declare-fun res!1055439 () Bool)

(declare-fun e!1583449 () Bool)

(assert (=> b!2495365 (=> res!1055439 e!1583449)))

(declare-fun e!1583445 () Bool)

(assert (=> b!2495365 (= res!1055439 e!1583445)))

(declare-fun res!1055441 () Bool)

(assert (=> b!2495365 (=> (not res!1055441) (not e!1583445))))

(declare-fun lt!894526 () Bool)

(assert (=> b!2495365 (= res!1055441 lt!894526)))

(declare-fun bm!153744 () Bool)

(declare-fun call!153749 () Bool)

(declare-fun isEmpty!16805 (List!29437) Bool)

(assert (=> bm!153744 (= call!153749 (isEmpty!16805 Nil!29337))))

(declare-fun b!2495366 () Bool)

(declare-fun res!1055438 () Bool)

(assert (=> b!2495366 (=> res!1055438 e!1583449)))

(assert (=> b!2495366 (= res!1055438 (not (is-ElementMatch!7372 lt!894477)))))

(declare-fun e!1583448 () Bool)

(assert (=> b!2495366 (= e!1583448 e!1583449)))

(declare-fun b!2495367 () Bool)

(declare-fun res!1055436 () Bool)

(assert (=> b!2495367 (=> (not res!1055436) (not e!1583445))))

(assert (=> b!2495367 (= res!1055436 (not call!153749))))

(declare-fun b!2495368 () Bool)

(declare-fun e!1583451 () Bool)

(assert (=> b!2495368 (= e!1583451 (= lt!894526 call!153749))))

(declare-fun b!2495369 () Bool)

(declare-fun res!1055435 () Bool)

(assert (=> b!2495369 (=> (not res!1055435) (not e!1583445))))

(declare-fun tail!3956 (List!29437) List!29437)

(assert (=> b!2495369 (= res!1055435 (isEmpty!16805 (tail!3956 Nil!29337)))))

(declare-fun b!2495370 () Bool)

(declare-fun e!1583447 () Bool)

(assert (=> b!2495370 (= e!1583447 (nullable!2289 lt!894477))))

(declare-fun b!2495371 () Bool)

(declare-fun head!5679 (List!29437) C!14902)

(assert (=> b!2495371 (= e!1583445 (= (head!5679 Nil!29337) (c!396760 lt!894477)))))

(declare-fun b!2495372 () Bool)

(declare-fun e!1583450 () Bool)

(assert (=> b!2495372 (= e!1583449 e!1583450)))

(declare-fun res!1055442 () Bool)

(assert (=> b!2495372 (=> (not res!1055442) (not e!1583450))))

(assert (=> b!2495372 (= res!1055442 (not lt!894526))))

(declare-fun b!2495373 () Bool)

(declare-fun res!1055440 () Bool)

(declare-fun e!1583446 () Bool)

(assert (=> b!2495373 (=> res!1055440 e!1583446)))

(assert (=> b!2495373 (= res!1055440 (not (isEmpty!16805 (tail!3956 Nil!29337))))))

(declare-fun b!2495374 () Bool)

(assert (=> b!2495374 (= e!1583450 e!1583446)))

(declare-fun res!1055437 () Bool)

(assert (=> b!2495374 (=> res!1055437 e!1583446)))

(assert (=> b!2495374 (= res!1055437 call!153749)))

(declare-fun d!714794 () Bool)

(assert (=> d!714794 e!1583451))

(declare-fun c!396800 () Bool)

(assert (=> d!714794 (= c!396800 (is-EmptyExpr!7372 lt!894477))))

(assert (=> d!714794 (= lt!894526 e!1583447)))

(declare-fun c!396802 () Bool)

(assert (=> d!714794 (= c!396802 (isEmpty!16805 Nil!29337))))

(assert (=> d!714794 (validRegex!2998 lt!894477)))

(assert (=> d!714794 (= (matchR!3381 lt!894477 Nil!29337) lt!894526)))

(declare-fun b!2495375 () Bool)

(assert (=> b!2495375 (= e!1583446 (not (= (head!5679 Nil!29337) (c!396760 lt!894477))))))

(declare-fun b!2495376 () Bool)

(assert (=> b!2495376 (= e!1583451 e!1583448)))

(declare-fun c!396801 () Bool)

(assert (=> b!2495376 (= c!396801 (is-EmptyLang!7372 lt!894477))))

(declare-fun b!2495377 () Bool)

(assert (=> b!2495377 (= e!1583448 (not lt!894526))))

(declare-fun b!2495378 () Bool)

(assert (=> b!2495378 (= e!1583447 (matchR!3381 (derivativeStep!1941 lt!894477 (head!5679 Nil!29337)) (tail!3956 Nil!29337)))))

(assert (= (and d!714794 c!396802) b!2495370))

(assert (= (and d!714794 (not c!396802)) b!2495378))

(assert (= (and d!714794 c!396800) b!2495368))

(assert (= (and d!714794 (not c!396800)) b!2495376))

(assert (= (and b!2495376 c!396801) b!2495377))

(assert (= (and b!2495376 (not c!396801)) b!2495366))

(assert (= (and b!2495366 (not res!1055438)) b!2495365))

(assert (= (and b!2495365 res!1055441) b!2495367))

(assert (= (and b!2495367 res!1055436) b!2495369))

(assert (= (and b!2495369 res!1055435) b!2495371))

(assert (= (and b!2495365 (not res!1055439)) b!2495372))

(assert (= (and b!2495372 res!1055442) b!2495374))

(assert (= (and b!2495374 (not res!1055437)) b!2495373))

(assert (= (and b!2495373 (not res!1055440)) b!2495375))

(assert (= (or b!2495368 b!2495367 b!2495374) bm!153744))

(assert (=> b!2495370 m!2859977))

(declare-fun m!2860113 () Bool)

(assert (=> b!2495375 m!2860113))

(declare-fun m!2860115 () Bool)

(assert (=> b!2495373 m!2860115))

(assert (=> b!2495373 m!2860115))

(declare-fun m!2860117 () Bool)

(assert (=> b!2495373 m!2860117))

(assert (=> b!2495378 m!2860113))

(assert (=> b!2495378 m!2860113))

(declare-fun m!2860119 () Bool)

(assert (=> b!2495378 m!2860119))

(assert (=> b!2495378 m!2860115))

(assert (=> b!2495378 m!2860119))

(assert (=> b!2495378 m!2860115))

(declare-fun m!2860121 () Bool)

(assert (=> b!2495378 m!2860121))

(assert (=> b!2495369 m!2860115))

(assert (=> b!2495369 m!2860115))

(assert (=> b!2495369 m!2860117))

(assert (=> b!2495371 m!2860113))

(declare-fun m!2860123 () Bool)

(assert (=> bm!153744 m!2860123))

(assert (=> d!714794 m!2860123))

(declare-fun m!2860125 () Bool)

(assert (=> d!714794 m!2860125))

(assert (=> b!2495153 d!714794))

(declare-fun b!2495379 () Bool)

(declare-fun res!1055447 () Bool)

(declare-fun e!1583456 () Bool)

(assert (=> b!2495379 (=> res!1055447 e!1583456)))

(declare-fun e!1583452 () Bool)

(assert (=> b!2495379 (= res!1055447 e!1583452)))

(declare-fun res!1055449 () Bool)

(assert (=> b!2495379 (=> (not res!1055449) (not e!1583452))))

(declare-fun lt!894527 () Bool)

(assert (=> b!2495379 (= res!1055449 lt!894527)))

(declare-fun bm!153745 () Bool)

(declare-fun call!153750 () Bool)

(assert (=> bm!153745 (= call!153750 (isEmpty!16805 tl!4068))))

(declare-fun b!2495380 () Bool)

(declare-fun res!1055446 () Bool)

(assert (=> b!2495380 (=> res!1055446 e!1583456)))

(assert (=> b!2495380 (= res!1055446 (not (is-ElementMatch!7372 lt!894478)))))

(declare-fun e!1583455 () Bool)

(assert (=> b!2495380 (= e!1583455 e!1583456)))

(declare-fun b!2495381 () Bool)

(declare-fun res!1055444 () Bool)

(assert (=> b!2495381 (=> (not res!1055444) (not e!1583452))))

(assert (=> b!2495381 (= res!1055444 (not call!153750))))

(declare-fun b!2495382 () Bool)

(declare-fun e!1583458 () Bool)

(assert (=> b!2495382 (= e!1583458 (= lt!894527 call!153750))))

(declare-fun b!2495383 () Bool)

(declare-fun res!1055443 () Bool)

(assert (=> b!2495383 (=> (not res!1055443) (not e!1583452))))

(assert (=> b!2495383 (= res!1055443 (isEmpty!16805 (tail!3956 tl!4068)))))

(declare-fun b!2495384 () Bool)

(declare-fun e!1583454 () Bool)

(assert (=> b!2495384 (= e!1583454 (nullable!2289 lt!894478))))

(declare-fun b!2495385 () Bool)

(assert (=> b!2495385 (= e!1583452 (= (head!5679 tl!4068) (c!396760 lt!894478)))))

(declare-fun b!2495386 () Bool)

(declare-fun e!1583457 () Bool)

(assert (=> b!2495386 (= e!1583456 e!1583457)))

(declare-fun res!1055450 () Bool)

(assert (=> b!2495386 (=> (not res!1055450) (not e!1583457))))

(assert (=> b!2495386 (= res!1055450 (not lt!894527))))

(declare-fun b!2495387 () Bool)

(declare-fun res!1055448 () Bool)

(declare-fun e!1583453 () Bool)

(assert (=> b!2495387 (=> res!1055448 e!1583453)))

(assert (=> b!2495387 (= res!1055448 (not (isEmpty!16805 (tail!3956 tl!4068))))))

(declare-fun b!2495388 () Bool)

(assert (=> b!2495388 (= e!1583457 e!1583453)))

(declare-fun res!1055445 () Bool)

(assert (=> b!2495388 (=> res!1055445 e!1583453)))

(assert (=> b!2495388 (= res!1055445 call!153750)))

(declare-fun d!714800 () Bool)

(assert (=> d!714800 e!1583458))

(declare-fun c!396803 () Bool)

(assert (=> d!714800 (= c!396803 (is-EmptyExpr!7372 lt!894478))))

(assert (=> d!714800 (= lt!894527 e!1583454)))

(declare-fun c!396805 () Bool)

(assert (=> d!714800 (= c!396805 (isEmpty!16805 tl!4068))))

(assert (=> d!714800 (validRegex!2998 lt!894478)))

(assert (=> d!714800 (= (matchR!3381 lt!894478 tl!4068) lt!894527)))

(declare-fun b!2495389 () Bool)

(assert (=> b!2495389 (= e!1583453 (not (= (head!5679 tl!4068) (c!396760 lt!894478))))))

(declare-fun b!2495390 () Bool)

(assert (=> b!2495390 (= e!1583458 e!1583455)))

(declare-fun c!396804 () Bool)

(assert (=> b!2495390 (= c!396804 (is-EmptyLang!7372 lt!894478))))

(declare-fun b!2495391 () Bool)

(assert (=> b!2495391 (= e!1583455 (not lt!894527))))

(declare-fun b!2495392 () Bool)

(assert (=> b!2495392 (= e!1583454 (matchR!3381 (derivativeStep!1941 lt!894478 (head!5679 tl!4068)) (tail!3956 tl!4068)))))

(assert (= (and d!714800 c!396805) b!2495384))

(assert (= (and d!714800 (not c!396805)) b!2495392))

(assert (= (and d!714800 c!396803) b!2495382))

(assert (= (and d!714800 (not c!396803)) b!2495390))

(assert (= (and b!2495390 c!396804) b!2495391))

(assert (= (and b!2495390 (not c!396804)) b!2495380))

(assert (= (and b!2495380 (not res!1055446)) b!2495379))

(assert (= (and b!2495379 res!1055449) b!2495381))

(assert (= (and b!2495381 res!1055444) b!2495383))

(assert (= (and b!2495383 res!1055443) b!2495385))

(assert (= (and b!2495379 (not res!1055447)) b!2495386))

(assert (= (and b!2495386 res!1055450) b!2495388))

(assert (= (and b!2495388 (not res!1055445)) b!2495387))

(assert (= (and b!2495387 (not res!1055448)) b!2495389))

(assert (= (or b!2495382 b!2495381 b!2495388) bm!153745))

(declare-fun m!2860127 () Bool)

(assert (=> b!2495384 m!2860127))

(declare-fun m!2860129 () Bool)

(assert (=> b!2495389 m!2860129))

(declare-fun m!2860131 () Bool)

(assert (=> b!2495387 m!2860131))

(assert (=> b!2495387 m!2860131))

(declare-fun m!2860133 () Bool)

(assert (=> b!2495387 m!2860133))

(assert (=> b!2495392 m!2860129))

(assert (=> b!2495392 m!2860129))

(declare-fun m!2860135 () Bool)

(assert (=> b!2495392 m!2860135))

(assert (=> b!2495392 m!2860131))

(assert (=> b!2495392 m!2860135))

(assert (=> b!2495392 m!2860131))

(declare-fun m!2860137 () Bool)

(assert (=> b!2495392 m!2860137))

(assert (=> b!2495383 m!2860131))

(assert (=> b!2495383 m!2860131))

(assert (=> b!2495383 m!2860133))

(assert (=> b!2495385 m!2860129))

(declare-fun m!2860139 () Bool)

(assert (=> bm!153745 m!2860139))

(assert (=> d!714800 m!2860139))

(declare-fun m!2860141 () Bool)

(assert (=> d!714800 m!2860141))

(assert (=> b!2495153 d!714800))

(declare-fun d!714802 () Bool)

(assert (=> d!714802 (= (matchR!3381 lt!894478 tl!4068) (matchR!3381 (derivative!67 lt!894478 tl!4068) Nil!29337))))

(declare-fun lt!894530 () Unit!43013)

(declare-fun choose!14739 (Regex!7372 List!29437) Unit!43013)

(assert (=> d!714802 (= lt!894530 (choose!14739 lt!894478 tl!4068))))

(assert (=> d!714802 (validRegex!2998 lt!894478)))

(assert (=> d!714802 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!27 lt!894478 tl!4068) lt!894530)))

(declare-fun bs!468450 () Bool)

(assert (= bs!468450 d!714802))

(assert (=> bs!468450 m!2860141))

(assert (=> bs!468450 m!2859979))

(declare-fun m!2860143 () Bool)

(assert (=> bs!468450 m!2860143))

(assert (=> bs!468450 m!2859987))

(assert (=> bs!468450 m!2859979))

(declare-fun m!2860145 () Bool)

(assert (=> bs!468450 m!2860145))

(assert (=> b!2495153 d!714802))

(declare-fun d!714804 () Bool)

(declare-fun nullableFct!572 (Regex!7372) Bool)

(assert (=> d!714804 (= (nullable!2289 lt!894477) (nullableFct!572 lt!894477))))

(declare-fun bs!468451 () Bool)

(assert (= bs!468451 d!714804))

(declare-fun m!2860147 () Bool)

(assert (=> bs!468451 m!2860147))

(assert (=> b!2495149 d!714804))

(declare-fun d!714806 () Bool)

(declare-fun lt!894539 () Regex!7372)

(assert (=> d!714806 (validRegex!2998 lt!894539)))

(declare-fun e!1583471 () Regex!7372)

(assert (=> d!714806 (= lt!894539 e!1583471)))

(declare-fun c!396812 () Bool)

(assert (=> d!714806 (= c!396812 (is-Cons!29337 tl!4068))))

(assert (=> d!714806 (validRegex!2998 lt!894478)))

(assert (=> d!714806 (= (derivative!67 lt!894478 tl!4068) lt!894539)))

(declare-fun b!2495415 () Bool)

(assert (=> b!2495415 (= e!1583471 (derivative!67 (derivativeStep!1941 lt!894478 (h!34757 tl!4068)) (t!211136 tl!4068)))))

(declare-fun b!2495416 () Bool)

(assert (=> b!2495416 (= e!1583471 lt!894478)))

(assert (= (and d!714806 c!396812) b!2495415))

(assert (= (and d!714806 (not c!396812)) b!2495416))

(declare-fun m!2860149 () Bool)

(assert (=> d!714806 m!2860149))

(assert (=> d!714806 m!2860141))

(declare-fun m!2860151 () Bool)

(assert (=> b!2495415 m!2860151))

(assert (=> b!2495415 m!2860151))

(declare-fun m!2860153 () Bool)

(assert (=> b!2495415 m!2860153))

(assert (=> b!2495149 d!714806))

(declare-fun bm!153754 () Bool)

(declare-fun call!153760 () Regex!7372)

(declare-fun call!153761 () Regex!7372)

(assert (=> bm!153754 (= call!153760 call!153761)))

(declare-fun bm!153755 () Bool)

(declare-fun c!396829 () Bool)

(declare-fun c!396828 () Bool)

(assert (=> bm!153755 (= call!153761 (derivativeStep!1941 (ite c!396828 (regOne!15257 r!27340) (ite c!396829 (reg!7701 r!27340) (regOne!15256 r!27340))) c!14016))))

(declare-fun b!2495446 () Bool)

(declare-fun e!1583488 () Regex!7372)

(assert (=> b!2495446 (= e!1583488 EmptyLang!7372)))

(declare-fun bm!153756 () Bool)

(declare-fun call!153759 () Regex!7372)

(assert (=> bm!153756 (= call!153759 (derivativeStep!1941 (ite c!396828 (regTwo!15257 r!27340) (regTwo!15256 r!27340)) c!14016))))

(declare-fun b!2495447 () Bool)

(declare-fun e!1583487 () Regex!7372)

(assert (=> b!2495447 (= e!1583487 (ite (= c!14016 (c!396760 r!27340)) EmptyExpr!7372 EmptyLang!7372))))

(declare-fun b!2495448 () Bool)

(declare-fun e!1583489 () Regex!7372)

(assert (=> b!2495448 (= e!1583489 (Union!7372 call!153761 call!153759))))

(declare-fun b!2495449 () Bool)

(declare-fun c!396826 () Bool)

(assert (=> b!2495449 (= c!396826 (nullable!2289 (regOne!15256 r!27340)))))

(declare-fun e!1583490 () Regex!7372)

(declare-fun e!1583491 () Regex!7372)

(assert (=> b!2495449 (= e!1583490 e!1583491)))

(declare-fun b!2495450 () Bool)

(assert (=> b!2495450 (= e!1583490 (Concat!12068 call!153760 r!27340))))

(declare-fun d!714808 () Bool)

(declare-fun lt!894545 () Regex!7372)

(assert (=> d!714808 (validRegex!2998 lt!894545)))

(assert (=> d!714808 (= lt!894545 e!1583488)))

(declare-fun c!396825 () Bool)

(assert (=> d!714808 (= c!396825 (or (is-EmptyExpr!7372 r!27340) (is-EmptyLang!7372 r!27340)))))

(assert (=> d!714808 (validRegex!2998 r!27340)))

(assert (=> d!714808 (= (derivativeStep!1941 r!27340 c!14016) lt!894545)))

(declare-fun b!2495451 () Bool)

(declare-fun call!153762 () Regex!7372)

(assert (=> b!2495451 (= e!1583491 (Union!7372 (Concat!12068 call!153762 (regTwo!15256 r!27340)) EmptyLang!7372))))

(declare-fun bm!153757 () Bool)

(assert (=> bm!153757 (= call!153762 call!153760)))

(declare-fun b!2495452 () Bool)

(assert (=> b!2495452 (= c!396828 (is-Union!7372 r!27340))))

(assert (=> b!2495452 (= e!1583487 e!1583489)))

(declare-fun b!2495453 () Bool)

(assert (=> b!2495453 (= e!1583489 e!1583490)))

(assert (=> b!2495453 (= c!396829 (is-Star!7372 r!27340))))

(declare-fun b!2495454 () Bool)

(assert (=> b!2495454 (= e!1583488 e!1583487)))

(declare-fun c!396827 () Bool)

(assert (=> b!2495454 (= c!396827 (is-ElementMatch!7372 r!27340))))

(declare-fun b!2495455 () Bool)

(assert (=> b!2495455 (= e!1583491 (Union!7372 (Concat!12068 call!153762 (regTwo!15256 r!27340)) call!153759))))

(assert (= (and d!714808 c!396825) b!2495446))

(assert (= (and d!714808 (not c!396825)) b!2495454))

(assert (= (and b!2495454 c!396827) b!2495447))

(assert (= (and b!2495454 (not c!396827)) b!2495452))

(assert (= (and b!2495452 c!396828) b!2495448))

(assert (= (and b!2495452 (not c!396828)) b!2495453))

(assert (= (and b!2495453 c!396829) b!2495450))

(assert (= (and b!2495453 (not c!396829)) b!2495449))

(assert (= (and b!2495449 c!396826) b!2495455))

(assert (= (and b!2495449 (not c!396826)) b!2495451))

(assert (= (or b!2495455 b!2495451) bm!153757))

(assert (= (or b!2495450 bm!153757) bm!153754))

(assert (= (or b!2495448 b!2495455) bm!153756))

(assert (= (or b!2495448 bm!153754) bm!153755))

(declare-fun m!2860177 () Bool)

(assert (=> bm!153755 m!2860177))

(declare-fun m!2860179 () Bool)

(assert (=> bm!153756 m!2860179))

(declare-fun m!2860181 () Bool)

(assert (=> b!2495449 m!2860181))

(declare-fun m!2860183 () Bool)

(assert (=> d!714808 m!2860183))

(assert (=> d!714808 m!2859983))

(assert (=> b!2495149 d!714808))

(declare-fun d!714812 () Bool)

(assert (=> d!714812 (= (nullable!2289 (derivative!67 lt!894479 tl!4068)) (nullableFct!572 (derivative!67 lt!894479 tl!4068)))))

(declare-fun bs!468452 () Bool)

(assert (= bs!468452 d!714812))

(assert (=> bs!468452 m!2859999))

(declare-fun m!2860185 () Bool)

(assert (=> bs!468452 m!2860185))

(assert (=> b!2495156 d!714812))

(declare-fun d!714814 () Bool)

(declare-fun lt!894546 () Regex!7372)

(assert (=> d!714814 (validRegex!2998 lt!894546)))

(declare-fun e!1583492 () Regex!7372)

(assert (=> d!714814 (= lt!894546 e!1583492)))

(declare-fun c!396830 () Bool)

(assert (=> d!714814 (= c!396830 (is-Cons!29337 tl!4068))))

(assert (=> d!714814 (validRegex!2998 lt!894479)))

(assert (=> d!714814 (= (derivative!67 lt!894479 tl!4068) lt!894546)))

(declare-fun b!2495456 () Bool)

(assert (=> b!2495456 (= e!1583492 (derivative!67 (derivativeStep!1941 lt!894479 (h!34757 tl!4068)) (t!211136 tl!4068)))))

(declare-fun b!2495457 () Bool)

(assert (=> b!2495457 (= e!1583492 lt!894479)))

(assert (= (and d!714814 c!396830) b!2495456))

(assert (= (and d!714814 (not c!396830)) b!2495457))

(declare-fun m!2860187 () Bool)

(assert (=> d!714814 m!2860187))

(assert (=> d!714814 m!2859991))

(declare-fun m!2860189 () Bool)

(assert (=> b!2495456 m!2860189))

(assert (=> b!2495456 m!2860189))

(declare-fun m!2860191 () Bool)

(assert (=> b!2495456 m!2860191))

(assert (=> b!2495156 d!714814))

(declare-fun bm!153758 () Bool)

(declare-fun call!153764 () Regex!7372)

(declare-fun call!153765 () Regex!7372)

(assert (=> bm!153758 (= call!153764 call!153765)))

(declare-fun bm!153759 () Bool)

(declare-fun c!396835 () Bool)

(declare-fun c!396834 () Bool)

(assert (=> bm!153759 (= call!153765 (derivativeStep!1941 (ite c!396834 (regOne!15257 (reg!7701 r!27340)) (ite c!396835 (reg!7701 (reg!7701 r!27340)) (regOne!15256 (reg!7701 r!27340)))) c!14016))))

(declare-fun b!2495458 () Bool)

(declare-fun e!1583494 () Regex!7372)

(assert (=> b!2495458 (= e!1583494 EmptyLang!7372)))

(declare-fun call!153763 () Regex!7372)

(declare-fun bm!153760 () Bool)

(assert (=> bm!153760 (= call!153763 (derivativeStep!1941 (ite c!396834 (regTwo!15257 (reg!7701 r!27340)) (regTwo!15256 (reg!7701 r!27340))) c!14016))))

(declare-fun b!2495459 () Bool)

(declare-fun e!1583493 () Regex!7372)

(assert (=> b!2495459 (= e!1583493 (ite (= c!14016 (c!396760 (reg!7701 r!27340))) EmptyExpr!7372 EmptyLang!7372))))

(declare-fun b!2495460 () Bool)

(declare-fun e!1583495 () Regex!7372)

(assert (=> b!2495460 (= e!1583495 (Union!7372 call!153765 call!153763))))

(declare-fun b!2495461 () Bool)

(declare-fun c!396832 () Bool)

(assert (=> b!2495461 (= c!396832 (nullable!2289 (regOne!15256 (reg!7701 r!27340))))))

(declare-fun e!1583496 () Regex!7372)

(declare-fun e!1583497 () Regex!7372)

(assert (=> b!2495461 (= e!1583496 e!1583497)))

(declare-fun b!2495462 () Bool)

(assert (=> b!2495462 (= e!1583496 (Concat!12068 call!153764 (reg!7701 r!27340)))))

(declare-fun d!714816 () Bool)

(declare-fun lt!894547 () Regex!7372)

(assert (=> d!714816 (validRegex!2998 lt!894547)))

(assert (=> d!714816 (= lt!894547 e!1583494)))

(declare-fun c!396831 () Bool)

(assert (=> d!714816 (= c!396831 (or (is-EmptyExpr!7372 (reg!7701 r!27340)) (is-EmptyLang!7372 (reg!7701 r!27340))))))

(assert (=> d!714816 (validRegex!2998 (reg!7701 r!27340))))

(assert (=> d!714816 (= (derivativeStep!1941 (reg!7701 r!27340) c!14016) lt!894547)))

(declare-fun b!2495463 () Bool)

(declare-fun call!153766 () Regex!7372)

(assert (=> b!2495463 (= e!1583497 (Union!7372 (Concat!12068 call!153766 (regTwo!15256 (reg!7701 r!27340))) EmptyLang!7372))))

(declare-fun bm!153761 () Bool)

(assert (=> bm!153761 (= call!153766 call!153764)))

(declare-fun b!2495464 () Bool)

(assert (=> b!2495464 (= c!396834 (is-Union!7372 (reg!7701 r!27340)))))

(assert (=> b!2495464 (= e!1583493 e!1583495)))

(declare-fun b!2495465 () Bool)

(assert (=> b!2495465 (= e!1583495 e!1583496)))

(assert (=> b!2495465 (= c!396835 (is-Star!7372 (reg!7701 r!27340)))))

(declare-fun b!2495466 () Bool)

(assert (=> b!2495466 (= e!1583494 e!1583493)))

(declare-fun c!396833 () Bool)

(assert (=> b!2495466 (= c!396833 (is-ElementMatch!7372 (reg!7701 r!27340)))))

(declare-fun b!2495467 () Bool)

(assert (=> b!2495467 (= e!1583497 (Union!7372 (Concat!12068 call!153766 (regTwo!15256 (reg!7701 r!27340))) call!153763))))

(assert (= (and d!714816 c!396831) b!2495458))

(assert (= (and d!714816 (not c!396831)) b!2495466))

(assert (= (and b!2495466 c!396833) b!2495459))

(assert (= (and b!2495466 (not c!396833)) b!2495464))

(assert (= (and b!2495464 c!396834) b!2495460))

(assert (= (and b!2495464 (not c!396834)) b!2495465))

(assert (= (and b!2495465 c!396835) b!2495462))

(assert (= (and b!2495465 (not c!396835)) b!2495461))

(assert (= (and b!2495461 c!396832) b!2495467))

(assert (= (and b!2495461 (not c!396832)) b!2495463))

(assert (= (or b!2495467 b!2495463) bm!153761))

(assert (= (or b!2495462 bm!153761) bm!153758))

(assert (= (or b!2495460 b!2495467) bm!153760))

(assert (= (or b!2495460 bm!153758) bm!153759))

(declare-fun m!2860193 () Bool)

(assert (=> bm!153759 m!2860193))

(declare-fun m!2860195 () Bool)

(assert (=> bm!153760 m!2860195))

(declare-fun m!2860197 () Bool)

(assert (=> b!2495461 m!2860197))

(declare-fun m!2860199 () Bool)

(assert (=> d!714816 m!2860199))

(declare-fun m!2860201 () Bool)

(assert (=> d!714816 m!2860201))

(assert (=> b!2495147 d!714816))

(declare-fun b!2495478 () Bool)

(declare-fun e!1583500 () Bool)

(assert (=> b!2495478 (= e!1583500 tp_is_empty!12599)))

(declare-fun b!2495480 () Bool)

(declare-fun tp!799254 () Bool)

(assert (=> b!2495480 (= e!1583500 tp!799254)))

(assert (=> b!2495154 (= tp!799222 e!1583500)))

(declare-fun b!2495479 () Bool)

(declare-fun tp!799256 () Bool)

(declare-fun tp!799253 () Bool)

(assert (=> b!2495479 (= e!1583500 (and tp!799256 tp!799253))))

(declare-fun b!2495481 () Bool)

(declare-fun tp!799255 () Bool)

(declare-fun tp!799257 () Bool)

(assert (=> b!2495481 (= e!1583500 (and tp!799255 tp!799257))))

(assert (= (and b!2495154 (is-ElementMatch!7372 (regOne!15257 r!27340))) b!2495478))

(assert (= (and b!2495154 (is-Concat!12068 (regOne!15257 r!27340))) b!2495479))

(assert (= (and b!2495154 (is-Star!7372 (regOne!15257 r!27340))) b!2495480))

(assert (= (and b!2495154 (is-Union!7372 (regOne!15257 r!27340))) b!2495481))

(declare-fun b!2495482 () Bool)

(declare-fun e!1583501 () Bool)

(assert (=> b!2495482 (= e!1583501 tp_is_empty!12599)))

(declare-fun b!2495484 () Bool)

(declare-fun tp!799259 () Bool)

(assert (=> b!2495484 (= e!1583501 tp!799259)))

(assert (=> b!2495154 (= tp!799224 e!1583501)))

(declare-fun b!2495483 () Bool)

(declare-fun tp!799261 () Bool)

(declare-fun tp!799258 () Bool)

(assert (=> b!2495483 (= e!1583501 (and tp!799261 tp!799258))))

(declare-fun b!2495485 () Bool)

(declare-fun tp!799260 () Bool)

(declare-fun tp!799262 () Bool)

(assert (=> b!2495485 (= e!1583501 (and tp!799260 tp!799262))))

(assert (= (and b!2495154 (is-ElementMatch!7372 (regTwo!15257 r!27340))) b!2495482))

(assert (= (and b!2495154 (is-Concat!12068 (regTwo!15257 r!27340))) b!2495483))

(assert (= (and b!2495154 (is-Star!7372 (regTwo!15257 r!27340))) b!2495484))

(assert (= (and b!2495154 (is-Union!7372 (regTwo!15257 r!27340))) b!2495485))

(declare-fun b!2495486 () Bool)

(declare-fun e!1583502 () Bool)

(assert (=> b!2495486 (= e!1583502 tp_is_empty!12599)))

(declare-fun b!2495488 () Bool)

(declare-fun tp!799264 () Bool)

(assert (=> b!2495488 (= e!1583502 tp!799264)))

(assert (=> b!2495150 (= tp!799220 e!1583502)))

(declare-fun b!2495487 () Bool)

(declare-fun tp!799266 () Bool)

(declare-fun tp!799263 () Bool)

(assert (=> b!2495487 (= e!1583502 (and tp!799266 tp!799263))))

(declare-fun b!2495489 () Bool)

(declare-fun tp!799265 () Bool)

(declare-fun tp!799267 () Bool)

(assert (=> b!2495489 (= e!1583502 (and tp!799265 tp!799267))))

(assert (= (and b!2495150 (is-ElementMatch!7372 (regOne!15256 r!27340))) b!2495486))

(assert (= (and b!2495150 (is-Concat!12068 (regOne!15256 r!27340))) b!2495487))

(assert (= (and b!2495150 (is-Star!7372 (regOne!15256 r!27340))) b!2495488))

(assert (= (and b!2495150 (is-Union!7372 (regOne!15256 r!27340))) b!2495489))

(declare-fun b!2495490 () Bool)

(declare-fun e!1583503 () Bool)

(assert (=> b!2495490 (= e!1583503 tp_is_empty!12599)))

(declare-fun b!2495492 () Bool)

(declare-fun tp!799269 () Bool)

(assert (=> b!2495492 (= e!1583503 tp!799269)))

(assert (=> b!2495150 (= tp!799219 e!1583503)))

(declare-fun b!2495491 () Bool)

(declare-fun tp!799271 () Bool)

(declare-fun tp!799268 () Bool)

(assert (=> b!2495491 (= e!1583503 (and tp!799271 tp!799268))))

(declare-fun b!2495493 () Bool)

(declare-fun tp!799270 () Bool)

(declare-fun tp!799272 () Bool)

(assert (=> b!2495493 (= e!1583503 (and tp!799270 tp!799272))))

(assert (= (and b!2495150 (is-ElementMatch!7372 (regTwo!15256 r!27340))) b!2495490))

(assert (= (and b!2495150 (is-Concat!12068 (regTwo!15256 r!27340))) b!2495491))

(assert (= (and b!2495150 (is-Star!7372 (regTwo!15256 r!27340))) b!2495492))

(assert (= (and b!2495150 (is-Union!7372 (regTwo!15256 r!27340))) b!2495493))

(declare-fun b!2495494 () Bool)

(declare-fun e!1583504 () Bool)

(assert (=> b!2495494 (= e!1583504 tp_is_empty!12599)))

(declare-fun b!2495496 () Bool)

(declare-fun tp!799274 () Bool)

(assert (=> b!2495496 (= e!1583504 tp!799274)))

(assert (=> b!2495151 (= tp!799223 e!1583504)))

(declare-fun b!2495495 () Bool)

(declare-fun tp!799276 () Bool)

(declare-fun tp!799273 () Bool)

(assert (=> b!2495495 (= e!1583504 (and tp!799276 tp!799273))))

(declare-fun b!2495497 () Bool)

(declare-fun tp!799275 () Bool)

(declare-fun tp!799277 () Bool)

(assert (=> b!2495497 (= e!1583504 (and tp!799275 tp!799277))))

(assert (= (and b!2495151 (is-ElementMatch!7372 (reg!7701 r!27340))) b!2495494))

(assert (= (and b!2495151 (is-Concat!12068 (reg!7701 r!27340))) b!2495495))

(assert (= (and b!2495151 (is-Star!7372 (reg!7701 r!27340))) b!2495496))

(assert (= (and b!2495151 (is-Union!7372 (reg!7701 r!27340))) b!2495497))

(declare-fun b!2495502 () Bool)

(declare-fun e!1583507 () Bool)

(declare-fun tp!799280 () Bool)

(assert (=> b!2495502 (= e!1583507 (and tp_is_empty!12599 tp!799280))))

(assert (=> b!2495152 (= tp!799221 e!1583507)))

(assert (= (and b!2495152 (is-Cons!29337 (t!211136 tl!4068))) b!2495502))

(push 1)

(assert (not d!714808))

(assert (not d!714802))

(assert (not b!2495392))

(assert (not bm!153727))

(assert (not bm!153728))

(assert (not bm!153756))

(assert (not b!2495371))

(assert (not b!2495389))

(assert (not b!2495496))

(assert (not d!714816))

(assert (not b!2495302))

(assert (not b!2495378))

(assert (not b!2495369))

(assert (not b!2495492))

(assert (not d!714782))

(assert (not b!2495305))

(assert (not b!2495491))

(assert (not d!714806))

(assert (not bm!153760))

(assert (not d!714814))

(assert (not b!2495303))

(assert (not b!2495480))

(assert (not b!2495370))

(assert (not b!2495383))

(assert (not b!2495373))

(assert (not b!2495384))

(assert (not d!714804))

(assert (not b!2495307))

(assert (not b!2495479))

(assert (not b!2495223))

(assert (not b!2495495))

(assert (not b!2495375))

(assert (not b!2495483))

(assert (not b!2495308))

(assert (not d!714792))

(assert (not bm!153755))

(assert (not b!2495461))

(assert (not d!714800))

(assert (not b!2495493))

(assert (not b!2495502))

(assert (not b!2495415))

(assert (not b!2495484))

(assert (not d!714784))

(assert (not bm!153759))

(assert (not b!2495214))

(assert (not d!714812))

(assert (not d!714794))

(assert (not bm!153725))

(assert (not b!2495301))

(assert (not b!2495485))

(assert (not b!2495487))

(assert (not b!2495449))

(assert (not bm!153724))

(assert (not bm!153745))

(assert (not b!2495497))

(assert tp_is_empty!12599)

(assert (not b!2495385))

(assert (not b!2495489))

(assert (not b!2495481))

(assert (not b!2495488))

(assert (not b!2495387))

(assert (not bm!153744))

(assert (not b!2495456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

