; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281806 () Bool)

(assert start!281806)

(declare-fun b!2888128 () Bool)

(declare-fun e!1825981 () Bool)

(declare-fun tp!926548 () Bool)

(declare-fun tp!926545 () Bool)

(assert (=> b!2888128 (= e!1825981 (and tp!926548 tp!926545))))

(declare-fun res!1195919 () Bool)

(declare-fun e!1825980 () Bool)

(assert (=> start!281806 (=> (not res!1195919) (not e!1825980))))

(declare-datatypes ((C!17820 0))(
  ( (C!17821 (val!10944 Int)) )
))
(declare-datatypes ((Regex!8819 0))(
  ( (ElementMatch!8819 (c!469484 C!17820)) (Concat!14140 (regOne!18150 Regex!8819) (regTwo!18150 Regex!8819)) (EmptyExpr!8819) (Star!8819 (reg!9148 Regex!8819)) (EmptyLang!8819) (Union!8819 (regOne!18151 Regex!8819) (regTwo!18151 Regex!8819)) )
))
(declare-fun r!23079 () Regex!8819)

(declare-fun validRegex!3592 (Regex!8819) Bool)

(assert (=> start!281806 (= res!1195919 (validRegex!3592 r!23079))))

(assert (=> start!281806 e!1825980))

(assert (=> start!281806 e!1825981))

(declare-fun b!2888129 () Bool)

(declare-fun res!1195918 () Bool)

(declare-fun e!1825979 () Bool)

(assert (=> b!2888129 (=> (not res!1195918) (not e!1825979))))

(get-info :version)

(assert (=> b!2888129 (= res!1195918 (and (not ((_ is EmptyExpr!8819) r!23079)) (not ((_ is EmptyLang!8819) r!23079)) (not ((_ is ElementMatch!8819) r!23079)) ((_ is Star!8819) r!23079)))))

(declare-fun b!2888130 () Bool)

(declare-datatypes ((List!34620 0))(
  ( (Nil!34496) (Cons!34496 (h!39916 C!17820) (t!233663 List!34620)) )
))
(declare-datatypes ((Option!6492 0))(
  ( (None!6491) (Some!6491 (v!34617 List!34620)) )
))
(declare-fun lt!1020818 () Option!6492)

(declare-fun matchR!3795 (Regex!8819 List!34620) Bool)

(declare-fun get!10437 (Option!6492) List!34620)

(assert (=> b!2888130 (= e!1825979 (not (matchR!3795 r!23079 (get!10437 lt!1020818))))))

(declare-fun b!2888131 () Bool)

(declare-fun tp!926546 () Bool)

(assert (=> b!2888131 (= e!1825981 tp!926546)))

(declare-fun b!2888132 () Bool)

(declare-fun tp!926547 () Bool)

(declare-fun tp!926549 () Bool)

(assert (=> b!2888132 (= e!1825981 (and tp!926547 tp!926549))))

(declare-fun b!2888133 () Bool)

(assert (=> b!2888133 (= e!1825980 e!1825979)))

(declare-fun res!1195917 () Bool)

(assert (=> b!2888133 (=> (not res!1195917) (not e!1825979))))

(declare-fun isDefined!5056 (Option!6492) Bool)

(assert (=> b!2888133 (= res!1195917 (isDefined!5056 lt!1020818))))

(declare-fun getLanguageWitness!526 (Regex!8819) Option!6492)

(assert (=> b!2888133 (= lt!1020818 (getLanguageWitness!526 r!23079))))

(declare-fun b!2888134 () Bool)

(declare-fun tp_is_empty!15225 () Bool)

(assert (=> b!2888134 (= e!1825981 tp_is_empty!15225)))

(assert (= (and start!281806 res!1195919) b!2888133))

(assert (= (and b!2888133 res!1195917) b!2888129))

(assert (= (and b!2888129 res!1195918) b!2888130))

(assert (= (and start!281806 ((_ is ElementMatch!8819) r!23079)) b!2888134))

(assert (= (and start!281806 ((_ is Concat!14140) r!23079)) b!2888128))

(assert (= (and start!281806 ((_ is Star!8819) r!23079)) b!2888131))

(assert (= (and start!281806 ((_ is Union!8819) r!23079)) b!2888132))

(declare-fun m!3301737 () Bool)

(assert (=> start!281806 m!3301737))

(declare-fun m!3301739 () Bool)

(assert (=> b!2888130 m!3301739))

(assert (=> b!2888130 m!3301739))

(declare-fun m!3301741 () Bool)

(assert (=> b!2888130 m!3301741))

(declare-fun m!3301743 () Bool)

(assert (=> b!2888133 m!3301743))

(declare-fun m!3301745 () Bool)

(assert (=> b!2888133 m!3301745))

(check-sat (not b!2888133) (not start!281806) (not b!2888132) (not b!2888128) (not b!2888130) tp_is_empty!15225 (not b!2888131))
(check-sat)
(get-model)

(declare-fun b!2888219 () Bool)

(declare-fun e!1826034 () Bool)

(declare-fun nullable!2720 (Regex!8819) Bool)

(assert (=> b!2888219 (= e!1826034 (nullable!2720 r!23079))))

(declare-fun b!2888220 () Bool)

(declare-fun e!1826037 () Bool)

(declare-fun head!6380 (List!34620) C!17820)

(assert (=> b!2888220 (= e!1826037 (= (head!6380 (get!10437 lt!1020818)) (c!469484 r!23079)))))

(declare-fun b!2888221 () Bool)

(declare-fun e!1826030 () Bool)

(declare-fun e!1826035 () Bool)

(assert (=> b!2888221 (= e!1826030 e!1826035)))

(declare-fun res!1195951 () Bool)

(assert (=> b!2888221 (=> res!1195951 e!1826035)))

(declare-fun call!187444 () Bool)

(assert (=> b!2888221 (= res!1195951 call!187444)))

(declare-fun b!2888222 () Bool)

(declare-fun e!1826036 () Bool)

(assert (=> b!2888222 (= e!1826036 e!1826030)))

(declare-fun res!1195954 () Bool)

(assert (=> b!2888222 (=> (not res!1195954) (not e!1826030))))

(declare-fun lt!1020825 () Bool)

(assert (=> b!2888222 (= res!1195954 (not lt!1020825))))

(declare-fun b!2888223 () Bool)

(declare-fun res!1195952 () Bool)

(assert (=> b!2888223 (=> res!1195952 e!1826036)))

(assert (=> b!2888223 (= res!1195952 e!1826037)))

(declare-fun res!1195957 () Bool)

(assert (=> b!2888223 (=> (not res!1195957) (not e!1826037))))

(assert (=> b!2888223 (= res!1195957 lt!1020825)))

(declare-fun bm!187439 () Bool)

(declare-fun isEmpty!18792 (List!34620) Bool)

(assert (=> bm!187439 (= call!187444 (isEmpty!18792 (get!10437 lt!1020818)))))

(declare-fun b!2888224 () Bool)

(declare-fun res!1195955 () Bool)

(assert (=> b!2888224 (=> (not res!1195955) (not e!1826037))))

(declare-fun tail!4605 (List!34620) List!34620)

(assert (=> b!2888224 (= res!1195955 (isEmpty!18792 (tail!4605 (get!10437 lt!1020818))))))

(declare-fun d!834175 () Bool)

(declare-fun e!1826031 () Bool)

(assert (=> d!834175 e!1826031))

(declare-fun c!469511 () Bool)

(assert (=> d!834175 (= c!469511 ((_ is EmptyExpr!8819) r!23079))))

(assert (=> d!834175 (= lt!1020825 e!1826034)))

(declare-fun c!469513 () Bool)

(assert (=> d!834175 (= c!469513 (isEmpty!18792 (get!10437 lt!1020818)))))

(assert (=> d!834175 (validRegex!3592 r!23079)))

(assert (=> d!834175 (= (matchR!3795 r!23079 (get!10437 lt!1020818)) lt!1020825)))

(declare-fun b!2888218 () Bool)

(declare-fun derivativeStep!2351 (Regex!8819 C!17820) Regex!8819)

(assert (=> b!2888218 (= e!1826034 (matchR!3795 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (tail!4605 (get!10437 lt!1020818))))))

(declare-fun b!2888225 () Bool)

(declare-fun res!1195956 () Bool)

(assert (=> b!2888225 (=> (not res!1195956) (not e!1826037))))

(assert (=> b!2888225 (= res!1195956 (not call!187444))))

(declare-fun b!2888226 () Bool)

(assert (=> b!2888226 (= e!1826031 (= lt!1020825 call!187444))))

(declare-fun b!2888227 () Bool)

(declare-fun res!1195953 () Bool)

(assert (=> b!2888227 (=> res!1195953 e!1826036)))

(assert (=> b!2888227 (= res!1195953 (not ((_ is ElementMatch!8819) r!23079)))))

(declare-fun e!1826029 () Bool)

(assert (=> b!2888227 (= e!1826029 e!1826036)))

(declare-fun b!2888228 () Bool)

(assert (=> b!2888228 (= e!1826035 (not (= (head!6380 (get!10437 lt!1020818)) (c!469484 r!23079))))))

(declare-fun b!2888229 () Bool)

(assert (=> b!2888229 (= e!1826029 (not lt!1020825))))

(declare-fun b!2888230 () Bool)

(assert (=> b!2888230 (= e!1826031 e!1826029)))

(declare-fun c!469509 () Bool)

(assert (=> b!2888230 (= c!469509 ((_ is EmptyLang!8819) r!23079))))

(declare-fun b!2888231 () Bool)

(declare-fun res!1195958 () Bool)

(assert (=> b!2888231 (=> res!1195958 e!1826035)))

(assert (=> b!2888231 (= res!1195958 (not (isEmpty!18792 (tail!4605 (get!10437 lt!1020818)))))))

(assert (= (and d!834175 c!469513) b!2888219))

(assert (= (and d!834175 (not c!469513)) b!2888218))

(assert (= (and d!834175 c!469511) b!2888226))

(assert (= (and d!834175 (not c!469511)) b!2888230))

(assert (= (and b!2888230 c!469509) b!2888229))

(assert (= (and b!2888230 (not c!469509)) b!2888227))

(assert (= (and b!2888227 (not res!1195953)) b!2888223))

(assert (= (and b!2888223 res!1195957) b!2888225))

(assert (= (and b!2888225 res!1195956) b!2888224))

(assert (= (and b!2888224 res!1195955) b!2888220))

(assert (= (and b!2888223 (not res!1195952)) b!2888222))

(assert (= (and b!2888222 res!1195954) b!2888221))

(assert (= (and b!2888221 (not res!1195951)) b!2888231))

(assert (= (and b!2888231 (not res!1195958)) b!2888228))

(assert (= (or b!2888226 b!2888225 b!2888221) bm!187439))

(assert (=> b!2888231 m!3301739))

(declare-fun m!3301755 () Bool)

(assert (=> b!2888231 m!3301755))

(assert (=> b!2888231 m!3301755))

(declare-fun m!3301757 () Bool)

(assert (=> b!2888231 m!3301757))

(assert (=> d!834175 m!3301739))

(declare-fun m!3301759 () Bool)

(assert (=> d!834175 m!3301759))

(assert (=> d!834175 m!3301737))

(assert (=> b!2888218 m!3301739))

(declare-fun m!3301761 () Bool)

(assert (=> b!2888218 m!3301761))

(assert (=> b!2888218 m!3301761))

(declare-fun m!3301763 () Bool)

(assert (=> b!2888218 m!3301763))

(assert (=> b!2888218 m!3301739))

(assert (=> b!2888218 m!3301755))

(assert (=> b!2888218 m!3301763))

(assert (=> b!2888218 m!3301755))

(declare-fun m!3301765 () Bool)

(assert (=> b!2888218 m!3301765))

(declare-fun m!3301767 () Bool)

(assert (=> b!2888219 m!3301767))

(assert (=> bm!187439 m!3301739))

(assert (=> bm!187439 m!3301759))

(assert (=> b!2888224 m!3301739))

(assert (=> b!2888224 m!3301755))

(assert (=> b!2888224 m!3301755))

(assert (=> b!2888224 m!3301757))

(assert (=> b!2888220 m!3301739))

(assert (=> b!2888220 m!3301761))

(assert (=> b!2888228 m!3301739))

(assert (=> b!2888228 m!3301761))

(assert (=> b!2888130 d!834175))

(declare-fun d!834181 () Bool)

(assert (=> d!834181 (= (get!10437 lt!1020818) (v!34617 lt!1020818))))

(assert (=> b!2888130 d!834181))

(declare-fun b!2888270 () Bool)

(declare-fun e!1826065 () Bool)

(declare-fun e!1826067 () Bool)

(assert (=> b!2888270 (= e!1826065 e!1826067)))

(declare-fun res!1195973 () Bool)

(assert (=> b!2888270 (=> (not res!1195973) (not e!1826067))))

(declare-fun call!187458 () Bool)

(assert (=> b!2888270 (= res!1195973 call!187458)))

(declare-fun b!2888271 () Bool)

(declare-fun e!1826063 () Bool)

(declare-fun call!187459 () Bool)

(assert (=> b!2888271 (= e!1826063 call!187459)))

(declare-fun b!2888272 () Bool)

(declare-fun e!1826066 () Bool)

(assert (=> b!2888272 (= e!1826066 e!1826063)))

(declare-fun res!1195972 () Bool)

(assert (=> b!2888272 (= res!1195972 (not (nullable!2720 (reg!9148 r!23079))))))

(assert (=> b!2888272 (=> (not res!1195972) (not e!1826063))))

(declare-fun b!2888273 () Bool)

(declare-fun call!187457 () Bool)

(assert (=> b!2888273 (= e!1826067 call!187457)))

(declare-fun b!2888274 () Bool)

(declare-fun e!1826068 () Bool)

(assert (=> b!2888274 (= e!1826068 call!187457)))

(declare-fun b!2888275 () Bool)

(declare-fun res!1195970 () Bool)

(assert (=> b!2888275 (=> res!1195970 e!1826065)))

(assert (=> b!2888275 (= res!1195970 (not ((_ is Concat!14140) r!23079)))))

(declare-fun e!1826064 () Bool)

(assert (=> b!2888275 (= e!1826064 e!1826065)))

(declare-fun b!2888276 () Bool)

(declare-fun e!1826062 () Bool)

(assert (=> b!2888276 (= e!1826062 e!1826066)))

(declare-fun c!469529 () Bool)

(assert (=> b!2888276 (= c!469529 ((_ is Star!8819) r!23079))))

(declare-fun bm!187453 () Bool)

(declare-fun c!469528 () Bool)

(assert (=> bm!187453 (= call!187459 (validRegex!3592 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))

(declare-fun b!2888277 () Bool)

(declare-fun res!1195969 () Bool)

(assert (=> b!2888277 (=> (not res!1195969) (not e!1826068))))

(assert (=> b!2888277 (= res!1195969 call!187458)))

(assert (=> b!2888277 (= e!1826064 e!1826068)))

(declare-fun bm!187454 () Bool)

(assert (=> bm!187454 (= call!187458 (validRegex!3592 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))

(declare-fun b!2888278 () Bool)

(assert (=> b!2888278 (= e!1826066 e!1826064)))

(assert (=> b!2888278 (= c!469528 ((_ is Union!8819) r!23079))))

(declare-fun d!834183 () Bool)

(declare-fun res!1195971 () Bool)

(assert (=> d!834183 (=> res!1195971 e!1826062)))

(assert (=> d!834183 (= res!1195971 ((_ is ElementMatch!8819) r!23079))))

(assert (=> d!834183 (= (validRegex!3592 r!23079) e!1826062)))

(declare-fun bm!187452 () Bool)

(assert (=> bm!187452 (= call!187457 call!187459)))

(assert (= (and d!834183 (not res!1195971)) b!2888276))

(assert (= (and b!2888276 c!469529) b!2888272))

(assert (= (and b!2888276 (not c!469529)) b!2888278))

(assert (= (and b!2888272 res!1195972) b!2888271))

(assert (= (and b!2888278 c!469528) b!2888277))

(assert (= (and b!2888278 (not c!469528)) b!2888275))

(assert (= (and b!2888277 res!1195969) b!2888274))

(assert (= (and b!2888275 (not res!1195970)) b!2888270))

(assert (= (and b!2888270 res!1195973) b!2888273))

(assert (= (or b!2888274 b!2888273) bm!187452))

(assert (= (or b!2888277 b!2888270) bm!187454))

(assert (= (or b!2888271 bm!187452) bm!187453))

(declare-fun m!3301775 () Bool)

(assert (=> b!2888272 m!3301775))

(declare-fun m!3301777 () Bool)

(assert (=> bm!187453 m!3301777))

(declare-fun m!3301779 () Bool)

(assert (=> bm!187454 m!3301779))

(assert (=> start!281806 d!834183))

(declare-fun d!834187 () Bool)

(declare-fun isEmpty!18795 (Option!6492) Bool)

(assert (=> d!834187 (= (isDefined!5056 lt!1020818) (not (isEmpty!18795 lt!1020818)))))

(declare-fun bs!523848 () Bool)

(assert (= bs!523848 d!834187))

(declare-fun m!3301781 () Bool)

(assert (=> bs!523848 m!3301781))

(assert (=> b!2888133 d!834187))

(declare-fun b!2888353 () Bool)

(declare-fun e!1826109 () Option!6492)

(declare-fun e!1826108 () Option!6492)

(assert (=> b!2888353 (= e!1826109 e!1826108)))

(declare-fun c!469560 () Bool)

(assert (=> b!2888353 (= c!469560 ((_ is Star!8819) r!23079))))

(declare-fun b!2888354 () Bool)

(declare-fun e!1826110 () Option!6492)

(assert (=> b!2888354 (= e!1826110 None!6491)))

(declare-fun b!2888355 () Bool)

(declare-fun e!1826113 () Option!6492)

(declare-fun e!1826107 () Option!6492)

(assert (=> b!2888355 (= e!1826113 e!1826107)))

(declare-fun lt!1020841 () Option!6492)

(declare-fun call!187468 () Option!6492)

(assert (=> b!2888355 (= lt!1020841 call!187468)))

(declare-fun c!469561 () Bool)

(assert (=> b!2888355 (= c!469561 ((_ is Some!6491) lt!1020841))))

(declare-fun b!2888356 () Bool)

(declare-fun e!1826112 () Option!6492)

(assert (=> b!2888356 (= e!1826112 None!6491)))

(declare-fun bm!187462 () Bool)

(declare-fun c!469556 () Bool)

(assert (=> bm!187462 (= call!187468 (getLanguageWitness!526 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))

(declare-fun b!2888357 () Bool)

(declare-fun c!469562 () Bool)

(assert (=> b!2888357 (= c!469562 ((_ is ElementMatch!8819) r!23079))))

(assert (=> b!2888357 (= e!1826112 e!1826109)))

(declare-fun b!2888358 () Bool)

(declare-fun e!1826106 () Option!6492)

(assert (=> b!2888358 (= e!1826106 call!187468)))

(declare-fun bm!187463 () Bool)

(declare-fun call!187467 () Option!6492)

(assert (=> bm!187463 (= call!187467 (getLanguageWitness!526 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))

(declare-fun b!2888360 () Bool)

(declare-fun c!469557 () Bool)

(declare-fun lt!1020842 () Option!6492)

(assert (=> b!2888360 (= c!469557 ((_ is Some!6491) lt!1020842))))

(assert (=> b!2888360 (= lt!1020842 call!187467)))

(assert (=> b!2888360 (= e!1826107 e!1826110)))

(declare-fun b!2888361 () Bool)

(declare-fun e!1826111 () Option!6492)

(assert (=> b!2888361 (= e!1826111 (Some!6491 Nil!34496))))

(declare-fun b!2888362 () Bool)

(declare-fun lt!1020840 () Option!6492)

(assert (=> b!2888362 (= e!1826106 lt!1020840)))

(declare-fun b!2888363 () Bool)

(assert (=> b!2888363 (= e!1826111 e!1826112)))

(declare-fun c!469558 () Bool)

(assert (=> b!2888363 (= c!469558 ((_ is EmptyLang!8819) r!23079))))

(declare-fun b!2888364 () Bool)

(declare-fun ++!8219 (List!34620 List!34620) List!34620)

(assert (=> b!2888364 (= e!1826110 (Some!6491 (++!8219 (v!34617 lt!1020841) (v!34617 lt!1020842))))))

(declare-fun b!2888365 () Bool)

(assert (=> b!2888365 (= e!1826108 (Some!6491 Nil!34496))))

(declare-fun b!2888366 () Bool)

(assert (=> b!2888366 (= e!1826113 e!1826106)))

(assert (=> b!2888366 (= lt!1020840 call!187467)))

(declare-fun c!469555 () Bool)

(assert (=> b!2888366 (= c!469555 ((_ is Some!6491) lt!1020840))))

(declare-fun b!2888367 () Bool)

(assert (=> b!2888367 (= e!1826107 None!6491)))

(declare-fun b!2888368 () Bool)

(assert (=> b!2888368 (= e!1826109 (Some!6491 (Cons!34496 (c!469484 r!23079) Nil!34496)))))

(declare-fun d!834189 () Bool)

(declare-fun c!469559 () Bool)

(assert (=> d!834189 (= c!469559 ((_ is EmptyExpr!8819) r!23079))))

(assert (=> d!834189 (= (getLanguageWitness!526 r!23079) e!1826111)))

(declare-fun b!2888359 () Bool)

(assert (=> b!2888359 (= c!469556 ((_ is Union!8819) r!23079))))

(assert (=> b!2888359 (= e!1826108 e!1826113)))

(assert (= (and d!834189 c!469559) b!2888361))

(assert (= (and d!834189 (not c!469559)) b!2888363))

(assert (= (and b!2888363 c!469558) b!2888356))

(assert (= (and b!2888363 (not c!469558)) b!2888357))

(assert (= (and b!2888357 c!469562) b!2888368))

(assert (= (and b!2888357 (not c!469562)) b!2888353))

(assert (= (and b!2888353 c!469560) b!2888365))

(assert (= (and b!2888353 (not c!469560)) b!2888359))

(assert (= (and b!2888359 c!469556) b!2888366))

(assert (= (and b!2888359 (not c!469556)) b!2888355))

(assert (= (and b!2888366 c!469555) b!2888362))

(assert (= (and b!2888366 (not c!469555)) b!2888358))

(assert (= (and b!2888355 c!469561) b!2888360))

(assert (= (and b!2888355 (not c!469561)) b!2888367))

(assert (= (and b!2888360 c!469557) b!2888364))

(assert (= (and b!2888360 (not c!469557)) b!2888354))

(assert (= (or b!2888358 b!2888355) bm!187462))

(assert (= (or b!2888366 b!2888360) bm!187463))

(declare-fun m!3301797 () Bool)

(assert (=> bm!187462 m!3301797))

(declare-fun m!3301799 () Bool)

(assert (=> bm!187463 m!3301799))

(declare-fun m!3301801 () Bool)

(assert (=> b!2888364 m!3301801))

(assert (=> b!2888133 d!834189))

(declare-fun b!2888410 () Bool)

(declare-fun e!1826123 () Bool)

(declare-fun tp!926598 () Bool)

(declare-fun tp!926599 () Bool)

(assert (=> b!2888410 (= e!1826123 (and tp!926598 tp!926599))))

(declare-fun b!2888409 () Bool)

(assert (=> b!2888409 (= e!1826123 tp_is_empty!15225)))

(assert (=> b!2888128 (= tp!926548 e!1826123)))

(declare-fun b!2888412 () Bool)

(declare-fun tp!926595 () Bool)

(declare-fun tp!926596 () Bool)

(assert (=> b!2888412 (= e!1826123 (and tp!926595 tp!926596))))

(declare-fun b!2888411 () Bool)

(declare-fun tp!926597 () Bool)

(assert (=> b!2888411 (= e!1826123 tp!926597)))

(assert (= (and b!2888128 ((_ is ElementMatch!8819) (regOne!18150 r!23079))) b!2888409))

(assert (= (and b!2888128 ((_ is Concat!14140) (regOne!18150 r!23079))) b!2888410))

(assert (= (and b!2888128 ((_ is Star!8819) (regOne!18150 r!23079))) b!2888411))

(assert (= (and b!2888128 ((_ is Union!8819) (regOne!18150 r!23079))) b!2888412))

(declare-fun b!2888414 () Bool)

(declare-fun e!1826124 () Bool)

(declare-fun tp!926603 () Bool)

(declare-fun tp!926604 () Bool)

(assert (=> b!2888414 (= e!1826124 (and tp!926603 tp!926604))))

(declare-fun b!2888413 () Bool)

(assert (=> b!2888413 (= e!1826124 tp_is_empty!15225)))

(assert (=> b!2888128 (= tp!926545 e!1826124)))

(declare-fun b!2888416 () Bool)

(declare-fun tp!926600 () Bool)

(declare-fun tp!926601 () Bool)

(assert (=> b!2888416 (= e!1826124 (and tp!926600 tp!926601))))

(declare-fun b!2888415 () Bool)

(declare-fun tp!926602 () Bool)

(assert (=> b!2888415 (= e!1826124 tp!926602)))

(assert (= (and b!2888128 ((_ is ElementMatch!8819) (regTwo!18150 r!23079))) b!2888413))

(assert (= (and b!2888128 ((_ is Concat!14140) (regTwo!18150 r!23079))) b!2888414))

(assert (= (and b!2888128 ((_ is Star!8819) (regTwo!18150 r!23079))) b!2888415))

(assert (= (and b!2888128 ((_ is Union!8819) (regTwo!18150 r!23079))) b!2888416))

(declare-fun b!2888418 () Bool)

(declare-fun e!1826125 () Bool)

(declare-fun tp!926608 () Bool)

(declare-fun tp!926609 () Bool)

(assert (=> b!2888418 (= e!1826125 (and tp!926608 tp!926609))))

(declare-fun b!2888417 () Bool)

(assert (=> b!2888417 (= e!1826125 tp_is_empty!15225)))

(assert (=> b!2888131 (= tp!926546 e!1826125)))

(declare-fun b!2888420 () Bool)

(declare-fun tp!926605 () Bool)

(declare-fun tp!926606 () Bool)

(assert (=> b!2888420 (= e!1826125 (and tp!926605 tp!926606))))

(declare-fun b!2888419 () Bool)

(declare-fun tp!926607 () Bool)

(assert (=> b!2888419 (= e!1826125 tp!926607)))

(assert (= (and b!2888131 ((_ is ElementMatch!8819) (reg!9148 r!23079))) b!2888417))

(assert (= (and b!2888131 ((_ is Concat!14140) (reg!9148 r!23079))) b!2888418))

(assert (= (and b!2888131 ((_ is Star!8819) (reg!9148 r!23079))) b!2888419))

(assert (= (and b!2888131 ((_ is Union!8819) (reg!9148 r!23079))) b!2888420))

(declare-fun b!2888422 () Bool)

(declare-fun e!1826126 () Bool)

(declare-fun tp!926613 () Bool)

(declare-fun tp!926614 () Bool)

(assert (=> b!2888422 (= e!1826126 (and tp!926613 tp!926614))))

(declare-fun b!2888421 () Bool)

(assert (=> b!2888421 (= e!1826126 tp_is_empty!15225)))

(assert (=> b!2888132 (= tp!926547 e!1826126)))

(declare-fun b!2888424 () Bool)

(declare-fun tp!926610 () Bool)

(declare-fun tp!926611 () Bool)

(assert (=> b!2888424 (= e!1826126 (and tp!926610 tp!926611))))

(declare-fun b!2888423 () Bool)

(declare-fun tp!926612 () Bool)

(assert (=> b!2888423 (= e!1826126 tp!926612)))

(assert (= (and b!2888132 ((_ is ElementMatch!8819) (regOne!18151 r!23079))) b!2888421))

(assert (= (and b!2888132 ((_ is Concat!14140) (regOne!18151 r!23079))) b!2888422))

(assert (= (and b!2888132 ((_ is Star!8819) (regOne!18151 r!23079))) b!2888423))

(assert (= (and b!2888132 ((_ is Union!8819) (regOne!18151 r!23079))) b!2888424))

(declare-fun b!2888426 () Bool)

(declare-fun e!1826127 () Bool)

(declare-fun tp!926618 () Bool)

(declare-fun tp!926619 () Bool)

(assert (=> b!2888426 (= e!1826127 (and tp!926618 tp!926619))))

(declare-fun b!2888425 () Bool)

(assert (=> b!2888425 (= e!1826127 tp_is_empty!15225)))

(assert (=> b!2888132 (= tp!926549 e!1826127)))

(declare-fun b!2888428 () Bool)

(declare-fun tp!926615 () Bool)

(declare-fun tp!926616 () Bool)

(assert (=> b!2888428 (= e!1826127 (and tp!926615 tp!926616))))

(declare-fun b!2888427 () Bool)

(declare-fun tp!926617 () Bool)

(assert (=> b!2888427 (= e!1826127 tp!926617)))

(assert (= (and b!2888132 ((_ is ElementMatch!8819) (regTwo!18151 r!23079))) b!2888425))

(assert (= (and b!2888132 ((_ is Concat!14140) (regTwo!18151 r!23079))) b!2888426))

(assert (= (and b!2888132 ((_ is Star!8819) (regTwo!18151 r!23079))) b!2888427))

(assert (= (and b!2888132 ((_ is Union!8819) (regTwo!18151 r!23079))) b!2888428))

(check-sat (not b!2888428) (not d!834187) (not b!2888219) (not b!2888410) (not b!2888228) (not bm!187462) (not d!834175) (not b!2888423) tp_is_empty!15225 (not b!2888416) (not b!2888426) (not b!2888419) (not b!2888422) (not b!2888220) (not b!2888427) (not b!2888420) (not bm!187454) (not b!2888415) (not bm!187439) (not bm!187463) (not b!2888411) (not b!2888412) (not b!2888231) (not b!2888424) (not b!2888218) (not b!2888414) (not b!2888272) (not bm!187453) (not b!2888418) (not b!2888364) (not b!2888224))
(check-sat)
(get-model)

(declare-fun d!834193 () Bool)

(assert (=> d!834193 (= (isEmpty!18792 (get!10437 lt!1020818)) ((_ is Nil!34496) (get!10437 lt!1020818)))))

(assert (=> bm!187439 d!834193))

(declare-fun b!2888429 () Bool)

(declare-fun e!1826131 () Option!6492)

(declare-fun e!1826130 () Option!6492)

(assert (=> b!2888429 (= e!1826131 e!1826130)))

(declare-fun c!469568 () Bool)

(assert (=> b!2888429 (= c!469568 ((_ is Star!8819) (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))

(declare-fun b!2888430 () Bool)

(declare-fun e!1826132 () Option!6492)

(assert (=> b!2888430 (= e!1826132 None!6491)))

(declare-fun b!2888431 () Bool)

(declare-fun e!1826135 () Option!6492)

(declare-fun e!1826129 () Option!6492)

(assert (=> b!2888431 (= e!1826135 e!1826129)))

(declare-fun lt!1020844 () Option!6492)

(declare-fun call!187470 () Option!6492)

(assert (=> b!2888431 (= lt!1020844 call!187470)))

(declare-fun c!469569 () Bool)

(assert (=> b!2888431 (= c!469569 ((_ is Some!6491) lt!1020844))))

(declare-fun b!2888432 () Bool)

(declare-fun e!1826134 () Option!6492)

(assert (=> b!2888432 (= e!1826134 None!6491)))

(declare-fun c!469564 () Bool)

(declare-fun bm!187464 () Bool)

(assert (=> bm!187464 (= call!187470 (getLanguageWitness!526 (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(declare-fun b!2888433 () Bool)

(declare-fun c!469570 () Bool)

(assert (=> b!2888433 (= c!469570 ((_ is ElementMatch!8819) (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))

(assert (=> b!2888433 (= e!1826134 e!1826131)))

(declare-fun b!2888434 () Bool)

(declare-fun e!1826128 () Option!6492)

(assert (=> b!2888434 (= e!1826128 call!187470)))

(declare-fun call!187469 () Option!6492)

(declare-fun bm!187465 () Bool)

(assert (=> bm!187465 (= call!187469 (getLanguageWitness!526 (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(declare-fun b!2888436 () Bool)

(declare-fun c!469565 () Bool)

(declare-fun lt!1020845 () Option!6492)

(assert (=> b!2888436 (= c!469565 ((_ is Some!6491) lt!1020845))))

(assert (=> b!2888436 (= lt!1020845 call!187469)))

(assert (=> b!2888436 (= e!1826129 e!1826132)))

(declare-fun b!2888437 () Bool)

(declare-fun e!1826133 () Option!6492)

(assert (=> b!2888437 (= e!1826133 (Some!6491 Nil!34496))))

(declare-fun b!2888438 () Bool)

(declare-fun lt!1020843 () Option!6492)

(assert (=> b!2888438 (= e!1826128 lt!1020843)))

(declare-fun b!2888439 () Bool)

(assert (=> b!2888439 (= e!1826133 e!1826134)))

(declare-fun c!469566 () Bool)

(assert (=> b!2888439 (= c!469566 ((_ is EmptyLang!8819) (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))

(declare-fun b!2888440 () Bool)

(assert (=> b!2888440 (= e!1826132 (Some!6491 (++!8219 (v!34617 lt!1020844) (v!34617 lt!1020845))))))

(declare-fun b!2888441 () Bool)

(assert (=> b!2888441 (= e!1826130 (Some!6491 Nil!34496))))

(declare-fun b!2888442 () Bool)

(assert (=> b!2888442 (= e!1826135 e!1826128)))

(assert (=> b!2888442 (= lt!1020843 call!187469)))

(declare-fun c!469563 () Bool)

(assert (=> b!2888442 (= c!469563 ((_ is Some!6491) lt!1020843))))

(declare-fun b!2888443 () Bool)

(assert (=> b!2888443 (= e!1826129 None!6491)))

(declare-fun b!2888444 () Bool)

(assert (=> b!2888444 (= e!1826131 (Some!6491 (Cons!34496 (c!469484 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) Nil!34496)))))

(declare-fun d!834195 () Bool)

(declare-fun c!469567 () Bool)

(assert (=> d!834195 (= c!469567 ((_ is EmptyExpr!8819) (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))

(assert (=> d!834195 (= (getLanguageWitness!526 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) e!1826133)))

(declare-fun b!2888435 () Bool)

(assert (=> b!2888435 (= c!469564 ((_ is Union!8819) (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))

(assert (=> b!2888435 (= e!1826130 e!1826135)))

(assert (= (and d!834195 c!469567) b!2888437))

(assert (= (and d!834195 (not c!469567)) b!2888439))

(assert (= (and b!2888439 c!469566) b!2888432))

(assert (= (and b!2888439 (not c!469566)) b!2888433))

(assert (= (and b!2888433 c!469570) b!2888444))

(assert (= (and b!2888433 (not c!469570)) b!2888429))

(assert (= (and b!2888429 c!469568) b!2888441))

(assert (= (and b!2888429 (not c!469568)) b!2888435))

(assert (= (and b!2888435 c!469564) b!2888442))

(assert (= (and b!2888435 (not c!469564)) b!2888431))

(assert (= (and b!2888442 c!469563) b!2888438))

(assert (= (and b!2888442 (not c!469563)) b!2888434))

(assert (= (and b!2888431 c!469569) b!2888436))

(assert (= (and b!2888431 (not c!469569)) b!2888443))

(assert (= (and b!2888436 c!469565) b!2888440))

(assert (= (and b!2888436 (not c!469565)) b!2888430))

(assert (= (or b!2888434 b!2888431) bm!187464))

(assert (= (or b!2888442 b!2888436) bm!187465))

(declare-fun m!3301803 () Bool)

(assert (=> bm!187464 m!3301803))

(declare-fun m!3301805 () Bool)

(assert (=> bm!187465 m!3301805))

(declare-fun m!3301807 () Bool)

(assert (=> b!2888440 m!3301807))

(assert (=> bm!187463 d!834195))

(declare-fun b!2888445 () Bool)

(declare-fun e!1826139 () Bool)

(declare-fun e!1826141 () Bool)

(assert (=> b!2888445 (= e!1826139 e!1826141)))

(declare-fun res!1196002 () Bool)

(assert (=> b!2888445 (=> (not res!1196002) (not e!1826141))))

(declare-fun call!187472 () Bool)

(assert (=> b!2888445 (= res!1196002 call!187472)))

(declare-fun b!2888446 () Bool)

(declare-fun e!1826137 () Bool)

(declare-fun call!187473 () Bool)

(assert (=> b!2888446 (= e!1826137 call!187473)))

(declare-fun b!2888447 () Bool)

(declare-fun e!1826140 () Bool)

(assert (=> b!2888447 (= e!1826140 e!1826137)))

(declare-fun res!1196001 () Bool)

(assert (=> b!2888447 (= res!1196001 (not (nullable!2720 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))))

(assert (=> b!2888447 (=> (not res!1196001) (not e!1826137))))

(declare-fun b!2888448 () Bool)

(declare-fun call!187471 () Bool)

(assert (=> b!2888448 (= e!1826141 call!187471)))

(declare-fun b!2888449 () Bool)

(declare-fun e!1826142 () Bool)

(assert (=> b!2888449 (= e!1826142 call!187471)))

(declare-fun b!2888450 () Bool)

(declare-fun res!1195999 () Bool)

(assert (=> b!2888450 (=> res!1195999 e!1826139)))

(assert (=> b!2888450 (= res!1195999 (not ((_ is Concat!14140) (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))))

(declare-fun e!1826138 () Bool)

(assert (=> b!2888450 (= e!1826138 e!1826139)))

(declare-fun b!2888451 () Bool)

(declare-fun e!1826136 () Bool)

(assert (=> b!2888451 (= e!1826136 e!1826140)))

(declare-fun c!469572 () Bool)

(assert (=> b!2888451 (= c!469572 ((_ is Star!8819) (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))

(declare-fun c!469571 () Bool)

(declare-fun bm!187467 () Bool)

(assert (=> bm!187467 (= call!187473 (validRegex!3592 (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))))))

(declare-fun b!2888452 () Bool)

(declare-fun res!1195998 () Bool)

(assert (=> b!2888452 (=> (not res!1195998) (not e!1826142))))

(assert (=> b!2888452 (= res!1195998 call!187472)))

(assert (=> b!2888452 (= e!1826138 e!1826142)))

(declare-fun bm!187468 () Bool)

(assert (=> bm!187468 (= call!187472 (validRegex!3592 (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))))

(declare-fun b!2888453 () Bool)

(assert (=> b!2888453 (= e!1826140 e!1826138)))

(assert (=> b!2888453 (= c!469571 ((_ is Union!8819) (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))

(declare-fun d!834197 () Bool)

(declare-fun res!1196000 () Bool)

(assert (=> d!834197 (=> res!1196000 e!1826136)))

(assert (=> d!834197 (= res!1196000 ((_ is ElementMatch!8819) (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))

(assert (=> d!834197 (= (validRegex!3592 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) e!1826136)))

(declare-fun bm!187466 () Bool)

(assert (=> bm!187466 (= call!187471 call!187473)))

(assert (= (and d!834197 (not res!1196000)) b!2888451))

(assert (= (and b!2888451 c!469572) b!2888447))

(assert (= (and b!2888451 (not c!469572)) b!2888453))

(assert (= (and b!2888447 res!1196001) b!2888446))

(assert (= (and b!2888453 c!469571) b!2888452))

(assert (= (and b!2888453 (not c!469571)) b!2888450))

(assert (= (and b!2888452 res!1195998) b!2888449))

(assert (= (and b!2888450 (not res!1195999)) b!2888445))

(assert (= (and b!2888445 res!1196002) b!2888448))

(assert (= (or b!2888449 b!2888448) bm!187466))

(assert (= (or b!2888452 b!2888445) bm!187468))

(assert (= (or b!2888446 bm!187466) bm!187467))

(declare-fun m!3301809 () Bool)

(assert (=> b!2888447 m!3301809))

(declare-fun m!3301811 () Bool)

(assert (=> bm!187467 m!3301811))

(declare-fun m!3301813 () Bool)

(assert (=> bm!187468 m!3301813))

(assert (=> bm!187454 d!834197))

(declare-fun b!2888455 () Bool)

(declare-fun e!1826146 () Bool)

(assert (=> b!2888455 (= e!1826146 (nullable!2720 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(declare-fun b!2888456 () Bool)

(declare-fun e!1826149 () Bool)

(assert (=> b!2888456 (= e!1826149 (= (head!6380 (tail!4605 (get!10437 lt!1020818))) (c!469484 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))))))

(declare-fun b!2888457 () Bool)

(declare-fun e!1826144 () Bool)

(declare-fun e!1826147 () Bool)

(assert (=> b!2888457 (= e!1826144 e!1826147)))

(declare-fun res!1196003 () Bool)

(assert (=> b!2888457 (=> res!1196003 e!1826147)))

(declare-fun call!187474 () Bool)

(assert (=> b!2888457 (= res!1196003 call!187474)))

(declare-fun b!2888458 () Bool)

(declare-fun e!1826148 () Bool)

(assert (=> b!2888458 (= e!1826148 e!1826144)))

(declare-fun res!1196006 () Bool)

(assert (=> b!2888458 (=> (not res!1196006) (not e!1826144))))

(declare-fun lt!1020846 () Bool)

(assert (=> b!2888458 (= res!1196006 (not lt!1020846))))

(declare-fun b!2888459 () Bool)

(declare-fun res!1196004 () Bool)

(assert (=> b!2888459 (=> res!1196004 e!1826148)))

(assert (=> b!2888459 (= res!1196004 e!1826149)))

(declare-fun res!1196009 () Bool)

(assert (=> b!2888459 (=> (not res!1196009) (not e!1826149))))

(assert (=> b!2888459 (= res!1196009 lt!1020846)))

(declare-fun bm!187469 () Bool)

(assert (=> bm!187469 (= call!187474 (isEmpty!18792 (tail!4605 (get!10437 lt!1020818))))))

(declare-fun b!2888460 () Bool)

(declare-fun res!1196007 () Bool)

(assert (=> b!2888460 (=> (not res!1196007) (not e!1826149))))

(assert (=> b!2888460 (= res!1196007 (isEmpty!18792 (tail!4605 (tail!4605 (get!10437 lt!1020818)))))))

(declare-fun d!834199 () Bool)

(declare-fun e!1826145 () Bool)

(assert (=> d!834199 e!1826145))

(declare-fun c!469574 () Bool)

(assert (=> d!834199 (= c!469574 ((_ is EmptyExpr!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(assert (=> d!834199 (= lt!1020846 e!1826146)))

(declare-fun c!469575 () Bool)

(assert (=> d!834199 (= c!469575 (isEmpty!18792 (tail!4605 (get!10437 lt!1020818))))))

(assert (=> d!834199 (validRegex!3592 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))))

(assert (=> d!834199 (= (matchR!3795 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (tail!4605 (get!10437 lt!1020818))) lt!1020846)))

(declare-fun b!2888454 () Bool)

(assert (=> b!2888454 (= e!1826146 (matchR!3795 (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818)))) (tail!4605 (tail!4605 (get!10437 lt!1020818)))))))

(declare-fun b!2888461 () Bool)

(declare-fun res!1196008 () Bool)

(assert (=> b!2888461 (=> (not res!1196008) (not e!1826149))))

(assert (=> b!2888461 (= res!1196008 (not call!187474))))

(declare-fun b!2888462 () Bool)

(assert (=> b!2888462 (= e!1826145 (= lt!1020846 call!187474))))

(declare-fun b!2888463 () Bool)

(declare-fun res!1196005 () Bool)

(assert (=> b!2888463 (=> res!1196005 e!1826148)))

(assert (=> b!2888463 (= res!1196005 (not ((_ is ElementMatch!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))))))

(declare-fun e!1826143 () Bool)

(assert (=> b!2888463 (= e!1826143 e!1826148)))

(declare-fun b!2888464 () Bool)

(assert (=> b!2888464 (= e!1826147 (not (= (head!6380 (tail!4605 (get!10437 lt!1020818))) (c!469484 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))))

(declare-fun b!2888465 () Bool)

(assert (=> b!2888465 (= e!1826143 (not lt!1020846))))

(declare-fun b!2888466 () Bool)

(assert (=> b!2888466 (= e!1826145 e!1826143)))

(declare-fun c!469573 () Bool)

(assert (=> b!2888466 (= c!469573 ((_ is EmptyLang!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(declare-fun b!2888467 () Bool)

(declare-fun res!1196010 () Bool)

(assert (=> b!2888467 (=> res!1196010 e!1826147)))

(assert (=> b!2888467 (= res!1196010 (not (isEmpty!18792 (tail!4605 (tail!4605 (get!10437 lt!1020818))))))))

(assert (= (and d!834199 c!469575) b!2888455))

(assert (= (and d!834199 (not c!469575)) b!2888454))

(assert (= (and d!834199 c!469574) b!2888462))

(assert (= (and d!834199 (not c!469574)) b!2888466))

(assert (= (and b!2888466 c!469573) b!2888465))

(assert (= (and b!2888466 (not c!469573)) b!2888463))

(assert (= (and b!2888463 (not res!1196005)) b!2888459))

(assert (= (and b!2888459 res!1196009) b!2888461))

(assert (= (and b!2888461 res!1196008) b!2888460))

(assert (= (and b!2888460 res!1196007) b!2888456))

(assert (= (and b!2888459 (not res!1196004)) b!2888458))

(assert (= (and b!2888458 res!1196006) b!2888457))

(assert (= (and b!2888457 (not res!1196003)) b!2888467))

(assert (= (and b!2888467 (not res!1196010)) b!2888464))

(assert (= (or b!2888462 b!2888461 b!2888457) bm!187469))

(assert (=> b!2888467 m!3301755))

(declare-fun m!3301815 () Bool)

(assert (=> b!2888467 m!3301815))

(assert (=> b!2888467 m!3301815))

(declare-fun m!3301817 () Bool)

(assert (=> b!2888467 m!3301817))

(assert (=> d!834199 m!3301755))

(assert (=> d!834199 m!3301757))

(assert (=> d!834199 m!3301763))

(declare-fun m!3301819 () Bool)

(assert (=> d!834199 m!3301819))

(assert (=> b!2888454 m!3301755))

(declare-fun m!3301821 () Bool)

(assert (=> b!2888454 m!3301821))

(assert (=> b!2888454 m!3301763))

(assert (=> b!2888454 m!3301821))

(declare-fun m!3301823 () Bool)

(assert (=> b!2888454 m!3301823))

(assert (=> b!2888454 m!3301755))

(assert (=> b!2888454 m!3301815))

(assert (=> b!2888454 m!3301823))

(assert (=> b!2888454 m!3301815))

(declare-fun m!3301825 () Bool)

(assert (=> b!2888454 m!3301825))

(assert (=> b!2888455 m!3301763))

(declare-fun m!3301827 () Bool)

(assert (=> b!2888455 m!3301827))

(assert (=> bm!187469 m!3301755))

(assert (=> bm!187469 m!3301757))

(assert (=> b!2888460 m!3301755))

(assert (=> b!2888460 m!3301815))

(assert (=> b!2888460 m!3301815))

(assert (=> b!2888460 m!3301817))

(assert (=> b!2888456 m!3301755))

(assert (=> b!2888456 m!3301821))

(assert (=> b!2888464 m!3301755))

(assert (=> b!2888464 m!3301821))

(assert (=> b!2888218 d!834199))

(declare-fun b!2888488 () Bool)

(declare-fun e!1826160 () Regex!8819)

(declare-fun call!187484 () Regex!8819)

(declare-fun call!187483 () Regex!8819)

(assert (=> b!2888488 (= e!1826160 (Union!8819 call!187484 call!187483))))

(declare-fun b!2888489 () Bool)

(declare-fun c!469590 () Bool)

(assert (=> b!2888489 (= c!469590 (nullable!2720 (regOne!18150 r!23079)))))

(declare-fun e!1826164 () Regex!8819)

(declare-fun e!1826161 () Regex!8819)

(assert (=> b!2888489 (= e!1826164 e!1826161)))

(declare-fun b!2888490 () Bool)

(declare-fun call!187486 () Regex!8819)

(assert (=> b!2888490 (= e!1826161 (Union!8819 (Concat!14140 call!187486 (regTwo!18150 r!23079)) EmptyLang!8819))))

(declare-fun b!2888491 () Bool)

(declare-fun call!187485 () Regex!8819)

(assert (=> b!2888491 (= e!1826164 (Concat!14140 call!187485 r!23079))))

(declare-fun b!2888492 () Bool)

(declare-fun e!1826163 () Regex!8819)

(declare-fun e!1826162 () Regex!8819)

(assert (=> b!2888492 (= e!1826163 e!1826162)))

(declare-fun c!469586 () Bool)

(assert (=> b!2888492 (= c!469586 ((_ is ElementMatch!8819) r!23079))))

(declare-fun d!834201 () Bool)

(declare-fun lt!1020849 () Regex!8819)

(assert (=> d!834201 (validRegex!3592 lt!1020849)))

(assert (=> d!834201 (= lt!1020849 e!1826163)))

(declare-fun c!469589 () Bool)

(assert (=> d!834201 (= c!469589 (or ((_ is EmptyExpr!8819) r!23079) ((_ is EmptyLang!8819) r!23079)))))

(assert (=> d!834201 (validRegex!3592 r!23079)))

(assert (=> d!834201 (= (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) lt!1020849)))

(declare-fun b!2888493 () Bool)

(declare-fun c!469587 () Bool)

(assert (=> b!2888493 (= c!469587 ((_ is Union!8819) r!23079))))

(assert (=> b!2888493 (= e!1826162 e!1826160)))

(declare-fun bm!187478 () Bool)

(declare-fun c!469588 () Bool)

(assert (=> bm!187478 (= call!187484 (derivativeStep!2351 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079))) (head!6380 (get!10437 lt!1020818))))))

(declare-fun bm!187479 () Bool)

(assert (=> bm!187479 (= call!187486 call!187485)))

(declare-fun bm!187480 () Bool)

(assert (=> bm!187480 (= call!187483 (derivativeStep!2351 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079)) (head!6380 (get!10437 lt!1020818))))))

(declare-fun b!2888494 () Bool)

(assert (=> b!2888494 (= e!1826160 e!1826164)))

(assert (=> b!2888494 (= c!469588 ((_ is Star!8819) r!23079))))

(declare-fun b!2888495 () Bool)

(assert (=> b!2888495 (= e!1826161 (Union!8819 (Concat!14140 call!187486 (regTwo!18150 r!23079)) call!187483))))

(declare-fun b!2888496 () Bool)

(assert (=> b!2888496 (= e!1826162 (ite (= (head!6380 (get!10437 lt!1020818)) (c!469484 r!23079)) EmptyExpr!8819 EmptyLang!8819))))

(declare-fun b!2888497 () Bool)

(assert (=> b!2888497 (= e!1826163 EmptyLang!8819)))

(declare-fun bm!187481 () Bool)

(assert (=> bm!187481 (= call!187485 call!187484)))

(assert (= (and d!834201 c!469589) b!2888497))

(assert (= (and d!834201 (not c!469589)) b!2888492))

(assert (= (and b!2888492 c!469586) b!2888496))

(assert (= (and b!2888492 (not c!469586)) b!2888493))

(assert (= (and b!2888493 c!469587) b!2888488))

(assert (= (and b!2888493 (not c!469587)) b!2888494))

(assert (= (and b!2888494 c!469588) b!2888491))

(assert (= (and b!2888494 (not c!469588)) b!2888489))

(assert (= (and b!2888489 c!469590) b!2888495))

(assert (= (and b!2888489 (not c!469590)) b!2888490))

(assert (= (or b!2888495 b!2888490) bm!187479))

(assert (= (or b!2888491 bm!187479) bm!187481))

(assert (= (or b!2888488 bm!187481) bm!187478))

(assert (= (or b!2888488 b!2888495) bm!187480))

(declare-fun m!3301829 () Bool)

(assert (=> b!2888489 m!3301829))

(declare-fun m!3301831 () Bool)

(assert (=> d!834201 m!3301831))

(assert (=> d!834201 m!3301737))

(assert (=> bm!187478 m!3301761))

(declare-fun m!3301833 () Bool)

(assert (=> bm!187478 m!3301833))

(assert (=> bm!187480 m!3301761))

(declare-fun m!3301835 () Bool)

(assert (=> bm!187480 m!3301835))

(assert (=> b!2888218 d!834201))

(declare-fun d!834203 () Bool)

(assert (=> d!834203 (= (head!6380 (get!10437 lt!1020818)) (h!39916 (get!10437 lt!1020818)))))

(assert (=> b!2888218 d!834203))

(declare-fun d!834207 () Bool)

(assert (=> d!834207 (= (tail!4605 (get!10437 lt!1020818)) (t!233663 (get!10437 lt!1020818)))))

(assert (=> b!2888218 d!834207))

(declare-fun d!834209 () Bool)

(declare-fun nullableFct!837 (Regex!8819) Bool)

(assert (=> d!834209 (= (nullable!2720 (reg!9148 r!23079)) (nullableFct!837 (reg!9148 r!23079)))))

(declare-fun bs!523849 () Bool)

(assert (= bs!523849 d!834209))

(declare-fun m!3301843 () Bool)

(assert (=> bs!523849 m!3301843))

(assert (=> b!2888272 d!834209))

(declare-fun d!834213 () Bool)

(assert (=> d!834213 (= (isEmpty!18792 (tail!4605 (get!10437 lt!1020818))) ((_ is Nil!34496) (tail!4605 (get!10437 lt!1020818))))))

(assert (=> b!2888224 d!834213))

(assert (=> b!2888224 d!834207))

(assert (=> d!834175 d!834193))

(assert (=> d!834175 d!834183))

(assert (=> b!2888228 d!834203))

(declare-fun d!834215 () Bool)

(assert (=> d!834215 (= (nullable!2720 r!23079) (nullableFct!837 r!23079))))

(declare-fun bs!523850 () Bool)

(assert (= bs!523850 d!834215))

(declare-fun m!3301845 () Bool)

(assert (=> bs!523850 m!3301845))

(assert (=> b!2888219 d!834215))

(assert (=> b!2888220 d!834203))

(declare-fun b!2888541 () Bool)

(declare-fun e!1826192 () List!34620)

(assert (=> b!2888541 (= e!1826192 (Cons!34496 (h!39916 (v!34617 lt!1020841)) (++!8219 (t!233663 (v!34617 lt!1020841)) (v!34617 lt!1020842))))))

(declare-fun d!834217 () Bool)

(declare-fun e!1826191 () Bool)

(assert (=> d!834217 e!1826191))

(declare-fun res!1196025 () Bool)

(assert (=> d!834217 (=> (not res!1196025) (not e!1826191))))

(declare-fun lt!1020855 () List!34620)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4727 (List!34620) (InoxSet C!17820))

(assert (=> d!834217 (= res!1196025 (= (content!4727 lt!1020855) ((_ map or) (content!4727 (v!34617 lt!1020841)) (content!4727 (v!34617 lt!1020842)))))))

(assert (=> d!834217 (= lt!1020855 e!1826192)))

(declare-fun c!469605 () Bool)

(assert (=> d!834217 (= c!469605 ((_ is Nil!34496) (v!34617 lt!1020841)))))

(assert (=> d!834217 (= (++!8219 (v!34617 lt!1020841) (v!34617 lt!1020842)) lt!1020855)))

(declare-fun b!2888543 () Bool)

(assert (=> b!2888543 (= e!1826191 (or (not (= (v!34617 lt!1020842) Nil!34496)) (= lt!1020855 (v!34617 lt!1020841))))))

(declare-fun b!2888540 () Bool)

(assert (=> b!2888540 (= e!1826192 (v!34617 lt!1020842))))

(declare-fun b!2888542 () Bool)

(declare-fun res!1196026 () Bool)

(assert (=> b!2888542 (=> (not res!1196026) (not e!1826191))))

(declare-fun size!26346 (List!34620) Int)

(assert (=> b!2888542 (= res!1196026 (= (size!26346 lt!1020855) (+ (size!26346 (v!34617 lt!1020841)) (size!26346 (v!34617 lt!1020842)))))))

(assert (= (and d!834217 c!469605) b!2888540))

(assert (= (and d!834217 (not c!469605)) b!2888541))

(assert (= (and d!834217 res!1196025) b!2888542))

(assert (= (and b!2888542 res!1196026) b!2888543))

(declare-fun m!3301861 () Bool)

(assert (=> b!2888541 m!3301861))

(declare-fun m!3301863 () Bool)

(assert (=> d!834217 m!3301863))

(declare-fun m!3301865 () Bool)

(assert (=> d!834217 m!3301865))

(declare-fun m!3301867 () Bool)

(assert (=> d!834217 m!3301867))

(declare-fun m!3301869 () Bool)

(assert (=> b!2888542 m!3301869))

(declare-fun m!3301871 () Bool)

(assert (=> b!2888542 m!3301871))

(declare-fun m!3301873 () Bool)

(assert (=> b!2888542 m!3301873))

(assert (=> b!2888364 d!834217))

(assert (=> b!2888231 d!834213))

(assert (=> b!2888231 d!834207))

(declare-fun d!834231 () Bool)

(assert (=> d!834231 (= (isEmpty!18795 lt!1020818) (not ((_ is Some!6491) lt!1020818)))))

(assert (=> d!834187 d!834231))

(declare-fun b!2888544 () Bool)

(declare-fun e!1826196 () Bool)

(declare-fun e!1826198 () Bool)

(assert (=> b!2888544 (= e!1826196 e!1826198)))

(declare-fun res!1196031 () Bool)

(assert (=> b!2888544 (=> (not res!1196031) (not e!1826198))))

(declare-fun call!187496 () Bool)

(assert (=> b!2888544 (= res!1196031 call!187496)))

(declare-fun b!2888545 () Bool)

(declare-fun e!1826194 () Bool)

(declare-fun call!187497 () Bool)

(assert (=> b!2888545 (= e!1826194 call!187497)))

(declare-fun b!2888546 () Bool)

(declare-fun e!1826197 () Bool)

(assert (=> b!2888546 (= e!1826197 e!1826194)))

(declare-fun res!1196030 () Bool)

(assert (=> b!2888546 (= res!1196030 (not (nullable!2720 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))))

(assert (=> b!2888546 (=> (not res!1196030) (not e!1826194))))

(declare-fun b!2888547 () Bool)

(declare-fun call!187495 () Bool)

(assert (=> b!2888547 (= e!1826198 call!187495)))

(declare-fun b!2888548 () Bool)

(declare-fun e!1826199 () Bool)

(assert (=> b!2888548 (= e!1826199 call!187495)))

(declare-fun b!2888549 () Bool)

(declare-fun res!1196028 () Bool)

(assert (=> b!2888549 (=> res!1196028 e!1826196)))

(assert (=> b!2888549 (= res!1196028 (not ((_ is Concat!14140) (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))))

(declare-fun e!1826195 () Bool)

(assert (=> b!2888549 (= e!1826195 e!1826196)))

(declare-fun b!2888550 () Bool)

(declare-fun e!1826193 () Bool)

(assert (=> b!2888550 (= e!1826193 e!1826197)))

(declare-fun c!469607 () Bool)

(assert (=> b!2888550 (= c!469607 ((_ is Star!8819) (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))

(declare-fun bm!187491 () Bool)

(declare-fun c!469606 () Bool)

(assert (=> bm!187491 (= call!187497 (validRegex!3592 (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))))))

(declare-fun b!2888551 () Bool)

(declare-fun res!1196027 () Bool)

(assert (=> b!2888551 (=> (not res!1196027) (not e!1826199))))

(assert (=> b!2888551 (= res!1196027 call!187496)))

(assert (=> b!2888551 (= e!1826195 e!1826199)))

(declare-fun bm!187492 () Bool)

(assert (=> bm!187492 (= call!187496 (validRegex!3592 (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))))

(declare-fun b!2888552 () Bool)

(assert (=> b!2888552 (= e!1826197 e!1826195)))

(assert (=> b!2888552 (= c!469606 ((_ is Union!8819) (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))

(declare-fun d!834233 () Bool)

(declare-fun res!1196029 () Bool)

(assert (=> d!834233 (=> res!1196029 e!1826193)))

(assert (=> d!834233 (= res!1196029 ((_ is ElementMatch!8819) (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))

(assert (=> d!834233 (= (validRegex!3592 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) e!1826193)))

(declare-fun bm!187490 () Bool)

(assert (=> bm!187490 (= call!187495 call!187497)))

(assert (= (and d!834233 (not res!1196029)) b!2888550))

(assert (= (and b!2888550 c!469607) b!2888546))

(assert (= (and b!2888550 (not c!469607)) b!2888552))

(assert (= (and b!2888546 res!1196030) b!2888545))

(assert (= (and b!2888552 c!469606) b!2888551))

(assert (= (and b!2888552 (not c!469606)) b!2888549))

(assert (= (and b!2888551 res!1196027) b!2888548))

(assert (= (and b!2888549 (not res!1196028)) b!2888544))

(assert (= (and b!2888544 res!1196031) b!2888547))

(assert (= (or b!2888548 b!2888547) bm!187490))

(assert (= (or b!2888551 b!2888544) bm!187492))

(assert (= (or b!2888545 bm!187490) bm!187491))

(declare-fun m!3301875 () Bool)

(assert (=> b!2888546 m!3301875))

(declare-fun m!3301877 () Bool)

(assert (=> bm!187491 m!3301877))

(declare-fun m!3301879 () Bool)

(assert (=> bm!187492 m!3301879))

(assert (=> bm!187453 d!834233))

(declare-fun b!2888553 () Bool)

(declare-fun e!1826203 () Option!6492)

(declare-fun e!1826202 () Option!6492)

(assert (=> b!2888553 (= e!1826203 e!1826202)))

(declare-fun c!469613 () Bool)

(assert (=> b!2888553 (= c!469613 ((_ is Star!8819) (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))

(declare-fun b!2888554 () Bool)

(declare-fun e!1826204 () Option!6492)

(assert (=> b!2888554 (= e!1826204 None!6491)))

(declare-fun b!2888555 () Bool)

(declare-fun e!1826207 () Option!6492)

(declare-fun e!1826201 () Option!6492)

(assert (=> b!2888555 (= e!1826207 e!1826201)))

(declare-fun lt!1020857 () Option!6492)

(declare-fun call!187499 () Option!6492)

(assert (=> b!2888555 (= lt!1020857 call!187499)))

(declare-fun c!469614 () Bool)

(assert (=> b!2888555 (= c!469614 ((_ is Some!6491) lt!1020857))))

(declare-fun b!2888556 () Bool)

(declare-fun e!1826206 () Option!6492)

(assert (=> b!2888556 (= e!1826206 None!6491)))

(declare-fun c!469609 () Bool)

(declare-fun bm!187493 () Bool)

(assert (=> bm!187493 (= call!187499 (getLanguageWitness!526 (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(declare-fun b!2888557 () Bool)

(declare-fun c!469615 () Bool)

(assert (=> b!2888557 (= c!469615 ((_ is ElementMatch!8819) (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))

(assert (=> b!2888557 (= e!1826206 e!1826203)))

(declare-fun b!2888558 () Bool)

(declare-fun e!1826200 () Option!6492)

(assert (=> b!2888558 (= e!1826200 call!187499)))

(declare-fun bm!187494 () Bool)

(declare-fun call!187498 () Option!6492)

(assert (=> bm!187494 (= call!187498 (getLanguageWitness!526 (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(declare-fun b!2888560 () Bool)

(declare-fun c!469610 () Bool)

(declare-fun lt!1020858 () Option!6492)

(assert (=> b!2888560 (= c!469610 ((_ is Some!6491) lt!1020858))))

(assert (=> b!2888560 (= lt!1020858 call!187498)))

(assert (=> b!2888560 (= e!1826201 e!1826204)))

(declare-fun b!2888561 () Bool)

(declare-fun e!1826205 () Option!6492)

(assert (=> b!2888561 (= e!1826205 (Some!6491 Nil!34496))))

(declare-fun b!2888562 () Bool)

(declare-fun lt!1020856 () Option!6492)

(assert (=> b!2888562 (= e!1826200 lt!1020856)))

(declare-fun b!2888563 () Bool)

(assert (=> b!2888563 (= e!1826205 e!1826206)))

(declare-fun c!469611 () Bool)

(assert (=> b!2888563 (= c!469611 ((_ is EmptyLang!8819) (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))

(declare-fun b!2888564 () Bool)

(assert (=> b!2888564 (= e!1826204 (Some!6491 (++!8219 (v!34617 lt!1020857) (v!34617 lt!1020858))))))

(declare-fun b!2888565 () Bool)

(assert (=> b!2888565 (= e!1826202 (Some!6491 Nil!34496))))

(declare-fun b!2888566 () Bool)

(assert (=> b!2888566 (= e!1826207 e!1826200)))

(assert (=> b!2888566 (= lt!1020856 call!187498)))

(declare-fun c!469608 () Bool)

(assert (=> b!2888566 (= c!469608 ((_ is Some!6491) lt!1020856))))

(declare-fun b!2888567 () Bool)

(assert (=> b!2888567 (= e!1826201 None!6491)))

(declare-fun b!2888568 () Bool)

(assert (=> b!2888568 (= e!1826203 (Some!6491 (Cons!34496 (c!469484 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) Nil!34496)))))

(declare-fun d!834235 () Bool)

(declare-fun c!469612 () Bool)

(assert (=> d!834235 (= c!469612 ((_ is EmptyExpr!8819) (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))

(assert (=> d!834235 (= (getLanguageWitness!526 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) e!1826205)))

(declare-fun b!2888559 () Bool)

(assert (=> b!2888559 (= c!469609 ((_ is Union!8819) (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))

(assert (=> b!2888559 (= e!1826202 e!1826207)))

(assert (= (and d!834235 c!469612) b!2888561))

(assert (= (and d!834235 (not c!469612)) b!2888563))

(assert (= (and b!2888563 c!469611) b!2888556))

(assert (= (and b!2888563 (not c!469611)) b!2888557))

(assert (= (and b!2888557 c!469615) b!2888568))

(assert (= (and b!2888557 (not c!469615)) b!2888553))

(assert (= (and b!2888553 c!469613) b!2888565))

(assert (= (and b!2888553 (not c!469613)) b!2888559))

(assert (= (and b!2888559 c!469609) b!2888566))

(assert (= (and b!2888559 (not c!469609)) b!2888555))

(assert (= (and b!2888566 c!469608) b!2888562))

(assert (= (and b!2888566 (not c!469608)) b!2888558))

(assert (= (and b!2888555 c!469614) b!2888560))

(assert (= (and b!2888555 (not c!469614)) b!2888567))

(assert (= (and b!2888560 c!469610) b!2888564))

(assert (= (and b!2888560 (not c!469610)) b!2888554))

(assert (= (or b!2888558 b!2888555) bm!187493))

(assert (= (or b!2888566 b!2888560) bm!187494))

(declare-fun m!3301881 () Bool)

(assert (=> bm!187493 m!3301881))

(declare-fun m!3301883 () Bool)

(assert (=> bm!187494 m!3301883))

(declare-fun m!3301885 () Bool)

(assert (=> b!2888564 m!3301885))

(assert (=> bm!187462 d!834235))

(declare-fun b!2888574 () Bool)

(declare-fun e!1826210 () Bool)

(declare-fun tp!926623 () Bool)

(declare-fun tp!926624 () Bool)

(assert (=> b!2888574 (= e!1826210 (and tp!926623 tp!926624))))

(declare-fun b!2888573 () Bool)

(assert (=> b!2888573 (= e!1826210 tp_is_empty!15225)))

(assert (=> b!2888412 (= tp!926595 e!1826210)))

(declare-fun b!2888576 () Bool)

(declare-fun tp!926620 () Bool)

(declare-fun tp!926621 () Bool)

(assert (=> b!2888576 (= e!1826210 (and tp!926620 tp!926621))))

(declare-fun b!2888575 () Bool)

(declare-fun tp!926622 () Bool)

(assert (=> b!2888575 (= e!1826210 tp!926622)))

(assert (= (and b!2888412 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18150 r!23079)))) b!2888573))

(assert (= (and b!2888412 ((_ is Concat!14140) (regOne!18151 (regOne!18150 r!23079)))) b!2888574))

(assert (= (and b!2888412 ((_ is Star!8819) (regOne!18151 (regOne!18150 r!23079)))) b!2888575))

(assert (= (and b!2888412 ((_ is Union!8819) (regOne!18151 (regOne!18150 r!23079)))) b!2888576))

(declare-fun b!2888578 () Bool)

(declare-fun e!1826211 () Bool)

(declare-fun tp!926628 () Bool)

(declare-fun tp!926629 () Bool)

(assert (=> b!2888578 (= e!1826211 (and tp!926628 tp!926629))))

(declare-fun b!2888577 () Bool)

(assert (=> b!2888577 (= e!1826211 tp_is_empty!15225)))

(assert (=> b!2888412 (= tp!926596 e!1826211)))

(declare-fun b!2888580 () Bool)

(declare-fun tp!926625 () Bool)

(declare-fun tp!926626 () Bool)

(assert (=> b!2888580 (= e!1826211 (and tp!926625 tp!926626))))

(declare-fun b!2888579 () Bool)

(declare-fun tp!926627 () Bool)

(assert (=> b!2888579 (= e!1826211 tp!926627)))

(assert (= (and b!2888412 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18150 r!23079)))) b!2888577))

(assert (= (and b!2888412 ((_ is Concat!14140) (regTwo!18151 (regOne!18150 r!23079)))) b!2888578))

(assert (= (and b!2888412 ((_ is Star!8819) (regTwo!18151 (regOne!18150 r!23079)))) b!2888579))

(assert (= (and b!2888412 ((_ is Union!8819) (regTwo!18151 (regOne!18150 r!23079)))) b!2888580))

(declare-fun b!2888584 () Bool)

(declare-fun e!1826214 () Bool)

(declare-fun tp!926633 () Bool)

(declare-fun tp!926634 () Bool)

(assert (=> b!2888584 (= e!1826214 (and tp!926633 tp!926634))))

(declare-fun b!2888583 () Bool)

(assert (=> b!2888583 (= e!1826214 tp_is_empty!15225)))

(assert (=> b!2888422 (= tp!926613 e!1826214)))

(declare-fun b!2888587 () Bool)

(declare-fun tp!926630 () Bool)

(declare-fun tp!926631 () Bool)

(assert (=> b!2888587 (= e!1826214 (and tp!926630 tp!926631))))

(declare-fun b!2888585 () Bool)

(declare-fun tp!926632 () Bool)

(assert (=> b!2888585 (= e!1826214 tp!926632)))

(assert (= (and b!2888422 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18151 r!23079)))) b!2888583))

(assert (= (and b!2888422 ((_ is Concat!14140) (regOne!18150 (regOne!18151 r!23079)))) b!2888584))

(assert (= (and b!2888422 ((_ is Star!8819) (regOne!18150 (regOne!18151 r!23079)))) b!2888585))

(assert (= (and b!2888422 ((_ is Union!8819) (regOne!18150 (regOne!18151 r!23079)))) b!2888587))

(declare-fun b!2888590 () Bool)

(declare-fun e!1826215 () Bool)

(declare-fun tp!926638 () Bool)

(declare-fun tp!926639 () Bool)

(assert (=> b!2888590 (= e!1826215 (and tp!926638 tp!926639))))

(declare-fun b!2888589 () Bool)

(assert (=> b!2888589 (= e!1826215 tp_is_empty!15225)))

(assert (=> b!2888422 (= tp!926614 e!1826215)))

(declare-fun b!2888592 () Bool)

(declare-fun tp!926635 () Bool)

(declare-fun tp!926636 () Bool)

(assert (=> b!2888592 (= e!1826215 (and tp!926635 tp!926636))))

(declare-fun b!2888591 () Bool)

(declare-fun tp!926637 () Bool)

(assert (=> b!2888591 (= e!1826215 tp!926637)))

(assert (= (and b!2888422 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18151 r!23079)))) b!2888589))

(assert (= (and b!2888422 ((_ is Concat!14140) (regTwo!18150 (regOne!18151 r!23079)))) b!2888590))

(assert (= (and b!2888422 ((_ is Star!8819) (regTwo!18150 (regOne!18151 r!23079)))) b!2888591))

(assert (= (and b!2888422 ((_ is Union!8819) (regTwo!18150 (regOne!18151 r!23079)))) b!2888592))

(declare-fun b!2888594 () Bool)

(declare-fun e!1826216 () Bool)

(declare-fun tp!926643 () Bool)

(declare-fun tp!926644 () Bool)

(assert (=> b!2888594 (= e!1826216 (and tp!926643 tp!926644))))

(declare-fun b!2888593 () Bool)

(assert (=> b!2888593 (= e!1826216 tp_is_empty!15225)))

(assert (=> b!2888427 (= tp!926617 e!1826216)))

(declare-fun b!2888596 () Bool)

(declare-fun tp!926640 () Bool)

(declare-fun tp!926641 () Bool)

(assert (=> b!2888596 (= e!1826216 (and tp!926640 tp!926641))))

(declare-fun b!2888595 () Bool)

(declare-fun tp!926642 () Bool)

(assert (=> b!2888595 (= e!1826216 tp!926642)))

(assert (= (and b!2888427 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18151 r!23079)))) b!2888593))

(assert (= (and b!2888427 ((_ is Concat!14140) (reg!9148 (regTwo!18151 r!23079)))) b!2888594))

(assert (= (and b!2888427 ((_ is Star!8819) (reg!9148 (regTwo!18151 r!23079)))) b!2888595))

(assert (= (and b!2888427 ((_ is Union!8819) (reg!9148 (regTwo!18151 r!23079)))) b!2888596))

(declare-fun b!2888598 () Bool)

(declare-fun e!1826217 () Bool)

(declare-fun tp!926648 () Bool)

(declare-fun tp!926649 () Bool)

(assert (=> b!2888598 (= e!1826217 (and tp!926648 tp!926649))))

(declare-fun b!2888597 () Bool)

(assert (=> b!2888597 (= e!1826217 tp_is_empty!15225)))

(assert (=> b!2888418 (= tp!926608 e!1826217)))

(declare-fun b!2888600 () Bool)

(declare-fun tp!926645 () Bool)

(declare-fun tp!926646 () Bool)

(assert (=> b!2888600 (= e!1826217 (and tp!926645 tp!926646))))

(declare-fun b!2888599 () Bool)

(declare-fun tp!926647 () Bool)

(assert (=> b!2888599 (= e!1826217 tp!926647)))

(assert (= (and b!2888418 ((_ is ElementMatch!8819) (regOne!18150 (reg!9148 r!23079)))) b!2888597))

(assert (= (and b!2888418 ((_ is Concat!14140) (regOne!18150 (reg!9148 r!23079)))) b!2888598))

(assert (= (and b!2888418 ((_ is Star!8819) (regOne!18150 (reg!9148 r!23079)))) b!2888599))

(assert (= (and b!2888418 ((_ is Union!8819) (regOne!18150 (reg!9148 r!23079)))) b!2888600))

(declare-fun b!2888602 () Bool)

(declare-fun e!1826218 () Bool)

(declare-fun tp!926653 () Bool)

(declare-fun tp!926654 () Bool)

(assert (=> b!2888602 (= e!1826218 (and tp!926653 tp!926654))))

(declare-fun b!2888601 () Bool)

(assert (=> b!2888601 (= e!1826218 tp_is_empty!15225)))

(assert (=> b!2888418 (= tp!926609 e!1826218)))

(declare-fun b!2888604 () Bool)

(declare-fun tp!926650 () Bool)

(declare-fun tp!926651 () Bool)

(assert (=> b!2888604 (= e!1826218 (and tp!926650 tp!926651))))

(declare-fun b!2888603 () Bool)

(declare-fun tp!926652 () Bool)

(assert (=> b!2888603 (= e!1826218 tp!926652)))

(assert (= (and b!2888418 ((_ is ElementMatch!8819) (regTwo!18150 (reg!9148 r!23079)))) b!2888601))

(assert (= (and b!2888418 ((_ is Concat!14140) (regTwo!18150 (reg!9148 r!23079)))) b!2888602))

(assert (= (and b!2888418 ((_ is Star!8819) (regTwo!18150 (reg!9148 r!23079)))) b!2888603))

(assert (= (and b!2888418 ((_ is Union!8819) (regTwo!18150 (reg!9148 r!23079)))) b!2888604))

(declare-fun b!2888606 () Bool)

(declare-fun e!1826219 () Bool)

(declare-fun tp!926658 () Bool)

(declare-fun tp!926659 () Bool)

(assert (=> b!2888606 (= e!1826219 (and tp!926658 tp!926659))))

(declare-fun b!2888605 () Bool)

(assert (=> b!2888605 (= e!1826219 tp_is_empty!15225)))

(assert (=> b!2888426 (= tp!926618 e!1826219)))

(declare-fun b!2888608 () Bool)

(declare-fun tp!926655 () Bool)

(declare-fun tp!926656 () Bool)

(assert (=> b!2888608 (= e!1826219 (and tp!926655 tp!926656))))

(declare-fun b!2888607 () Bool)

(declare-fun tp!926657 () Bool)

(assert (=> b!2888607 (= e!1826219 tp!926657)))

(assert (= (and b!2888426 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18151 r!23079)))) b!2888605))

(assert (= (and b!2888426 ((_ is Concat!14140) (regOne!18150 (regTwo!18151 r!23079)))) b!2888606))

(assert (= (and b!2888426 ((_ is Star!8819) (regOne!18150 (regTwo!18151 r!23079)))) b!2888607))

(assert (= (and b!2888426 ((_ is Union!8819) (regOne!18150 (regTwo!18151 r!23079)))) b!2888608))

(declare-fun b!2888610 () Bool)

(declare-fun e!1826220 () Bool)

(declare-fun tp!926663 () Bool)

(declare-fun tp!926664 () Bool)

(assert (=> b!2888610 (= e!1826220 (and tp!926663 tp!926664))))

(declare-fun b!2888609 () Bool)

(assert (=> b!2888609 (= e!1826220 tp_is_empty!15225)))

(assert (=> b!2888426 (= tp!926619 e!1826220)))

(declare-fun b!2888612 () Bool)

(declare-fun tp!926660 () Bool)

(declare-fun tp!926661 () Bool)

(assert (=> b!2888612 (= e!1826220 (and tp!926660 tp!926661))))

(declare-fun b!2888611 () Bool)

(declare-fun tp!926662 () Bool)

(assert (=> b!2888611 (= e!1826220 tp!926662)))

(assert (= (and b!2888426 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18151 r!23079)))) b!2888609))

(assert (= (and b!2888426 ((_ is Concat!14140) (regTwo!18150 (regTwo!18151 r!23079)))) b!2888610))

(assert (= (and b!2888426 ((_ is Star!8819) (regTwo!18150 (regTwo!18151 r!23079)))) b!2888611))

(assert (= (and b!2888426 ((_ is Union!8819) (regTwo!18150 (regTwo!18151 r!23079)))) b!2888612))

(declare-fun b!2888614 () Bool)

(declare-fun e!1826221 () Bool)

(declare-fun tp!926668 () Bool)

(declare-fun tp!926669 () Bool)

(assert (=> b!2888614 (= e!1826221 (and tp!926668 tp!926669))))

(declare-fun b!2888613 () Bool)

(assert (=> b!2888613 (= e!1826221 tp_is_empty!15225)))

(assert (=> b!2888415 (= tp!926602 e!1826221)))

(declare-fun b!2888616 () Bool)

(declare-fun tp!926665 () Bool)

(declare-fun tp!926666 () Bool)

(assert (=> b!2888616 (= e!1826221 (and tp!926665 tp!926666))))

(declare-fun b!2888615 () Bool)

(declare-fun tp!926667 () Bool)

(assert (=> b!2888615 (= e!1826221 tp!926667)))

(assert (= (and b!2888415 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18150 r!23079)))) b!2888613))

(assert (= (and b!2888415 ((_ is Concat!14140) (reg!9148 (regTwo!18150 r!23079)))) b!2888614))

(assert (= (and b!2888415 ((_ is Star!8819) (reg!9148 (regTwo!18150 r!23079)))) b!2888615))

(assert (= (and b!2888415 ((_ is Union!8819) (reg!9148 (regTwo!18150 r!23079)))) b!2888616))

(declare-fun b!2888618 () Bool)

(declare-fun e!1826222 () Bool)

(declare-fun tp!926673 () Bool)

(declare-fun tp!926674 () Bool)

(assert (=> b!2888618 (= e!1826222 (and tp!926673 tp!926674))))

(declare-fun b!2888617 () Bool)

(assert (=> b!2888617 (= e!1826222 tp_is_empty!15225)))

(assert (=> b!2888420 (= tp!926605 e!1826222)))

(declare-fun b!2888620 () Bool)

(declare-fun tp!926670 () Bool)

(declare-fun tp!926671 () Bool)

(assert (=> b!2888620 (= e!1826222 (and tp!926670 tp!926671))))

(declare-fun b!2888619 () Bool)

(declare-fun tp!926672 () Bool)

(assert (=> b!2888619 (= e!1826222 tp!926672)))

(assert (= (and b!2888420 ((_ is ElementMatch!8819) (regOne!18151 (reg!9148 r!23079)))) b!2888617))

(assert (= (and b!2888420 ((_ is Concat!14140) (regOne!18151 (reg!9148 r!23079)))) b!2888618))

(assert (= (and b!2888420 ((_ is Star!8819) (regOne!18151 (reg!9148 r!23079)))) b!2888619))

(assert (= (and b!2888420 ((_ is Union!8819) (regOne!18151 (reg!9148 r!23079)))) b!2888620))

(declare-fun b!2888622 () Bool)

(declare-fun e!1826223 () Bool)

(declare-fun tp!926678 () Bool)

(declare-fun tp!926679 () Bool)

(assert (=> b!2888622 (= e!1826223 (and tp!926678 tp!926679))))

(declare-fun b!2888621 () Bool)

(assert (=> b!2888621 (= e!1826223 tp_is_empty!15225)))

(assert (=> b!2888420 (= tp!926606 e!1826223)))

(declare-fun b!2888624 () Bool)

(declare-fun tp!926675 () Bool)

(declare-fun tp!926676 () Bool)

(assert (=> b!2888624 (= e!1826223 (and tp!926675 tp!926676))))

(declare-fun b!2888623 () Bool)

(declare-fun tp!926677 () Bool)

(assert (=> b!2888623 (= e!1826223 tp!926677)))

(assert (= (and b!2888420 ((_ is ElementMatch!8819) (regTwo!18151 (reg!9148 r!23079)))) b!2888621))

(assert (= (and b!2888420 ((_ is Concat!14140) (regTwo!18151 (reg!9148 r!23079)))) b!2888622))

(assert (= (and b!2888420 ((_ is Star!8819) (regTwo!18151 (reg!9148 r!23079)))) b!2888623))

(assert (= (and b!2888420 ((_ is Union!8819) (regTwo!18151 (reg!9148 r!23079)))) b!2888624))

(declare-fun b!2888626 () Bool)

(declare-fun e!1826224 () Bool)

(declare-fun tp!926683 () Bool)

(declare-fun tp!926684 () Bool)

(assert (=> b!2888626 (= e!1826224 (and tp!926683 tp!926684))))

(declare-fun b!2888625 () Bool)

(assert (=> b!2888625 (= e!1826224 tp_is_empty!15225)))

(assert (=> b!2888411 (= tp!926597 e!1826224)))

(declare-fun b!2888628 () Bool)

(declare-fun tp!926680 () Bool)

(declare-fun tp!926681 () Bool)

(assert (=> b!2888628 (= e!1826224 (and tp!926680 tp!926681))))

(declare-fun b!2888627 () Bool)

(declare-fun tp!926682 () Bool)

(assert (=> b!2888627 (= e!1826224 tp!926682)))

(assert (= (and b!2888411 ((_ is ElementMatch!8819) (reg!9148 (regOne!18150 r!23079)))) b!2888625))

(assert (= (and b!2888411 ((_ is Concat!14140) (reg!9148 (regOne!18150 r!23079)))) b!2888626))

(assert (= (and b!2888411 ((_ is Star!8819) (reg!9148 (regOne!18150 r!23079)))) b!2888627))

(assert (= (and b!2888411 ((_ is Union!8819) (reg!9148 (regOne!18150 r!23079)))) b!2888628))

(declare-fun b!2888630 () Bool)

(declare-fun e!1826225 () Bool)

(declare-fun tp!926688 () Bool)

(declare-fun tp!926689 () Bool)

(assert (=> b!2888630 (= e!1826225 (and tp!926688 tp!926689))))

(declare-fun b!2888629 () Bool)

(assert (=> b!2888629 (= e!1826225 tp_is_empty!15225)))

(assert (=> b!2888416 (= tp!926600 e!1826225)))

(declare-fun b!2888632 () Bool)

(declare-fun tp!926685 () Bool)

(declare-fun tp!926686 () Bool)

(assert (=> b!2888632 (= e!1826225 (and tp!926685 tp!926686))))

(declare-fun b!2888631 () Bool)

(declare-fun tp!926687 () Bool)

(assert (=> b!2888631 (= e!1826225 tp!926687)))

(assert (= (and b!2888416 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18150 r!23079)))) b!2888629))

(assert (= (and b!2888416 ((_ is Concat!14140) (regOne!18151 (regTwo!18150 r!23079)))) b!2888630))

(assert (= (and b!2888416 ((_ is Star!8819) (regOne!18151 (regTwo!18150 r!23079)))) b!2888631))

(assert (= (and b!2888416 ((_ is Union!8819) (regOne!18151 (regTwo!18150 r!23079)))) b!2888632))

(declare-fun b!2888638 () Bool)

(declare-fun e!1826228 () Bool)

(declare-fun tp!926693 () Bool)

(declare-fun tp!926694 () Bool)

(assert (=> b!2888638 (= e!1826228 (and tp!926693 tp!926694))))

(declare-fun b!2888637 () Bool)

(assert (=> b!2888637 (= e!1826228 tp_is_empty!15225)))

(assert (=> b!2888416 (= tp!926601 e!1826228)))

(declare-fun b!2888640 () Bool)

(declare-fun tp!926690 () Bool)

(declare-fun tp!926691 () Bool)

(assert (=> b!2888640 (= e!1826228 (and tp!926690 tp!926691))))

(declare-fun b!2888639 () Bool)

(declare-fun tp!926692 () Bool)

(assert (=> b!2888639 (= e!1826228 tp!926692)))

(assert (= (and b!2888416 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18150 r!23079)))) b!2888637))

(assert (= (and b!2888416 ((_ is Concat!14140) (regTwo!18151 (regTwo!18150 r!23079)))) b!2888638))

(assert (= (and b!2888416 ((_ is Star!8819) (regTwo!18151 (regTwo!18150 r!23079)))) b!2888639))

(assert (= (and b!2888416 ((_ is Union!8819) (regTwo!18151 (regTwo!18150 r!23079)))) b!2888640))

(declare-fun b!2888642 () Bool)

(declare-fun e!1826229 () Bool)

(declare-fun tp!926698 () Bool)

(declare-fun tp!926699 () Bool)

(assert (=> b!2888642 (= e!1826229 (and tp!926698 tp!926699))))

(declare-fun b!2888641 () Bool)

(assert (=> b!2888641 (= e!1826229 tp_is_empty!15225)))

(assert (=> b!2888423 (= tp!926612 e!1826229)))

(declare-fun b!2888644 () Bool)

(declare-fun tp!926695 () Bool)

(declare-fun tp!926696 () Bool)

(assert (=> b!2888644 (= e!1826229 (and tp!926695 tp!926696))))

(declare-fun b!2888643 () Bool)

(declare-fun tp!926697 () Bool)

(assert (=> b!2888643 (= e!1826229 tp!926697)))

(assert (= (and b!2888423 ((_ is ElementMatch!8819) (reg!9148 (regOne!18151 r!23079)))) b!2888641))

(assert (= (and b!2888423 ((_ is Concat!14140) (reg!9148 (regOne!18151 r!23079)))) b!2888642))

(assert (= (and b!2888423 ((_ is Star!8819) (reg!9148 (regOne!18151 r!23079)))) b!2888643))

(assert (= (and b!2888423 ((_ is Union!8819) (reg!9148 (regOne!18151 r!23079)))) b!2888644))

(declare-fun b!2888646 () Bool)

(declare-fun e!1826230 () Bool)

(declare-fun tp!926703 () Bool)

(declare-fun tp!926704 () Bool)

(assert (=> b!2888646 (= e!1826230 (and tp!926703 tp!926704))))

(declare-fun b!2888645 () Bool)

(assert (=> b!2888645 (= e!1826230 tp_is_empty!15225)))

(assert (=> b!2888428 (= tp!926615 e!1826230)))

(declare-fun b!2888648 () Bool)

(declare-fun tp!926700 () Bool)

(declare-fun tp!926701 () Bool)

(assert (=> b!2888648 (= e!1826230 (and tp!926700 tp!926701))))

(declare-fun b!2888647 () Bool)

(declare-fun tp!926702 () Bool)

(assert (=> b!2888647 (= e!1826230 tp!926702)))

(assert (= (and b!2888428 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18151 r!23079)))) b!2888645))

(assert (= (and b!2888428 ((_ is Concat!14140) (regOne!18151 (regTwo!18151 r!23079)))) b!2888646))

(assert (= (and b!2888428 ((_ is Star!8819) (regOne!18151 (regTwo!18151 r!23079)))) b!2888647))

(assert (= (and b!2888428 ((_ is Union!8819) (regOne!18151 (regTwo!18151 r!23079)))) b!2888648))

(declare-fun b!2888650 () Bool)

(declare-fun e!1826231 () Bool)

(declare-fun tp!926708 () Bool)

(declare-fun tp!926709 () Bool)

(assert (=> b!2888650 (= e!1826231 (and tp!926708 tp!926709))))

(declare-fun b!2888649 () Bool)

(assert (=> b!2888649 (= e!1826231 tp_is_empty!15225)))

(assert (=> b!2888428 (= tp!926616 e!1826231)))

(declare-fun b!2888652 () Bool)

(declare-fun tp!926705 () Bool)

(declare-fun tp!926706 () Bool)

(assert (=> b!2888652 (= e!1826231 (and tp!926705 tp!926706))))

(declare-fun b!2888651 () Bool)

(declare-fun tp!926707 () Bool)

(assert (=> b!2888651 (= e!1826231 tp!926707)))

(assert (= (and b!2888428 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18151 r!23079)))) b!2888649))

(assert (= (and b!2888428 ((_ is Concat!14140) (regTwo!18151 (regTwo!18151 r!23079)))) b!2888650))

(assert (= (and b!2888428 ((_ is Star!8819) (regTwo!18151 (regTwo!18151 r!23079)))) b!2888651))

(assert (= (and b!2888428 ((_ is Union!8819) (regTwo!18151 (regTwo!18151 r!23079)))) b!2888652))

(declare-fun b!2888654 () Bool)

(declare-fun e!1826232 () Bool)

(declare-fun tp!926713 () Bool)

(declare-fun tp!926714 () Bool)

(assert (=> b!2888654 (= e!1826232 (and tp!926713 tp!926714))))

(declare-fun b!2888653 () Bool)

(assert (=> b!2888653 (= e!1826232 tp_is_empty!15225)))

(assert (=> b!2888414 (= tp!926603 e!1826232)))

(declare-fun b!2888656 () Bool)

(declare-fun tp!926710 () Bool)

(declare-fun tp!926711 () Bool)

(assert (=> b!2888656 (= e!1826232 (and tp!926710 tp!926711))))

(declare-fun b!2888655 () Bool)

(declare-fun tp!926712 () Bool)

(assert (=> b!2888655 (= e!1826232 tp!926712)))

(assert (= (and b!2888414 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18150 r!23079)))) b!2888653))

(assert (= (and b!2888414 ((_ is Concat!14140) (regOne!18150 (regTwo!18150 r!23079)))) b!2888654))

(assert (= (and b!2888414 ((_ is Star!8819) (regOne!18150 (regTwo!18150 r!23079)))) b!2888655))

(assert (= (and b!2888414 ((_ is Union!8819) (regOne!18150 (regTwo!18150 r!23079)))) b!2888656))

(declare-fun b!2888658 () Bool)

(declare-fun e!1826233 () Bool)

(declare-fun tp!926718 () Bool)

(declare-fun tp!926719 () Bool)

(assert (=> b!2888658 (= e!1826233 (and tp!926718 tp!926719))))

(declare-fun b!2888657 () Bool)

(assert (=> b!2888657 (= e!1826233 tp_is_empty!15225)))

(assert (=> b!2888414 (= tp!926604 e!1826233)))

(declare-fun b!2888660 () Bool)

(declare-fun tp!926715 () Bool)

(declare-fun tp!926716 () Bool)

(assert (=> b!2888660 (= e!1826233 (and tp!926715 tp!926716))))

(declare-fun b!2888659 () Bool)

(declare-fun tp!926717 () Bool)

(assert (=> b!2888659 (= e!1826233 tp!926717)))

(assert (= (and b!2888414 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18150 r!23079)))) b!2888657))

(assert (= (and b!2888414 ((_ is Concat!14140) (regTwo!18150 (regTwo!18150 r!23079)))) b!2888658))

(assert (= (and b!2888414 ((_ is Star!8819) (regTwo!18150 (regTwo!18150 r!23079)))) b!2888659))

(assert (= (and b!2888414 ((_ is Union!8819) (regTwo!18150 (regTwo!18150 r!23079)))) b!2888660))

(declare-fun b!2888662 () Bool)

(declare-fun e!1826234 () Bool)

(declare-fun tp!926723 () Bool)

(declare-fun tp!926724 () Bool)

(assert (=> b!2888662 (= e!1826234 (and tp!926723 tp!926724))))

(declare-fun b!2888661 () Bool)

(assert (=> b!2888661 (= e!1826234 tp_is_empty!15225)))

(assert (=> b!2888419 (= tp!926607 e!1826234)))

(declare-fun b!2888664 () Bool)

(declare-fun tp!926720 () Bool)

(declare-fun tp!926721 () Bool)

(assert (=> b!2888664 (= e!1826234 (and tp!926720 tp!926721))))

(declare-fun b!2888663 () Bool)

(declare-fun tp!926722 () Bool)

(assert (=> b!2888663 (= e!1826234 tp!926722)))

(assert (= (and b!2888419 ((_ is ElementMatch!8819) (reg!9148 (reg!9148 r!23079)))) b!2888661))

(assert (= (and b!2888419 ((_ is Concat!14140) (reg!9148 (reg!9148 r!23079)))) b!2888662))

(assert (= (and b!2888419 ((_ is Star!8819) (reg!9148 (reg!9148 r!23079)))) b!2888663))

(assert (= (and b!2888419 ((_ is Union!8819) (reg!9148 (reg!9148 r!23079)))) b!2888664))

(declare-fun b!2888666 () Bool)

(declare-fun e!1826235 () Bool)

(declare-fun tp!926728 () Bool)

(declare-fun tp!926729 () Bool)

(assert (=> b!2888666 (= e!1826235 (and tp!926728 tp!926729))))

(declare-fun b!2888665 () Bool)

(assert (=> b!2888665 (= e!1826235 tp_is_empty!15225)))

(assert (=> b!2888424 (= tp!926610 e!1826235)))

(declare-fun b!2888668 () Bool)

(declare-fun tp!926725 () Bool)

(declare-fun tp!926726 () Bool)

(assert (=> b!2888668 (= e!1826235 (and tp!926725 tp!926726))))

(declare-fun b!2888667 () Bool)

(declare-fun tp!926727 () Bool)

(assert (=> b!2888667 (= e!1826235 tp!926727)))

(assert (= (and b!2888424 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18151 r!23079)))) b!2888665))

(assert (= (and b!2888424 ((_ is Concat!14140) (regOne!18151 (regOne!18151 r!23079)))) b!2888666))

(assert (= (and b!2888424 ((_ is Star!8819) (regOne!18151 (regOne!18151 r!23079)))) b!2888667))

(assert (= (and b!2888424 ((_ is Union!8819) (regOne!18151 (regOne!18151 r!23079)))) b!2888668))

(declare-fun b!2888686 () Bool)

(declare-fun e!1826244 () Bool)

(declare-fun tp!926733 () Bool)

(declare-fun tp!926734 () Bool)

(assert (=> b!2888686 (= e!1826244 (and tp!926733 tp!926734))))

(declare-fun b!2888685 () Bool)

(assert (=> b!2888685 (= e!1826244 tp_is_empty!15225)))

(assert (=> b!2888424 (= tp!926611 e!1826244)))

(declare-fun b!2888688 () Bool)

(declare-fun tp!926730 () Bool)

(declare-fun tp!926731 () Bool)

(assert (=> b!2888688 (= e!1826244 (and tp!926730 tp!926731))))

(declare-fun b!2888687 () Bool)

(declare-fun tp!926732 () Bool)

(assert (=> b!2888687 (= e!1826244 tp!926732)))

(assert (= (and b!2888424 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18151 r!23079)))) b!2888685))

(assert (= (and b!2888424 ((_ is Concat!14140) (regTwo!18151 (regOne!18151 r!23079)))) b!2888686))

(assert (= (and b!2888424 ((_ is Star!8819) (regTwo!18151 (regOne!18151 r!23079)))) b!2888687))

(assert (= (and b!2888424 ((_ is Union!8819) (regTwo!18151 (regOne!18151 r!23079)))) b!2888688))

(declare-fun b!2888690 () Bool)

(declare-fun e!1826245 () Bool)

(declare-fun tp!926738 () Bool)

(declare-fun tp!926739 () Bool)

(assert (=> b!2888690 (= e!1826245 (and tp!926738 tp!926739))))

(declare-fun b!2888689 () Bool)

(assert (=> b!2888689 (= e!1826245 tp_is_empty!15225)))

(assert (=> b!2888410 (= tp!926598 e!1826245)))

(declare-fun b!2888692 () Bool)

(declare-fun tp!926735 () Bool)

(declare-fun tp!926736 () Bool)

(assert (=> b!2888692 (= e!1826245 (and tp!926735 tp!926736))))

(declare-fun b!2888691 () Bool)

(declare-fun tp!926737 () Bool)

(assert (=> b!2888691 (= e!1826245 tp!926737)))

(assert (= (and b!2888410 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18150 r!23079)))) b!2888689))

(assert (= (and b!2888410 ((_ is Concat!14140) (regOne!18150 (regOne!18150 r!23079)))) b!2888690))

(assert (= (and b!2888410 ((_ is Star!8819) (regOne!18150 (regOne!18150 r!23079)))) b!2888691))

(assert (= (and b!2888410 ((_ is Union!8819) (regOne!18150 (regOne!18150 r!23079)))) b!2888692))

(declare-fun b!2888694 () Bool)

(declare-fun e!1826246 () Bool)

(declare-fun tp!926743 () Bool)

(declare-fun tp!926744 () Bool)

(assert (=> b!2888694 (= e!1826246 (and tp!926743 tp!926744))))

(declare-fun b!2888693 () Bool)

(assert (=> b!2888693 (= e!1826246 tp_is_empty!15225)))

(assert (=> b!2888410 (= tp!926599 e!1826246)))

(declare-fun b!2888696 () Bool)

(declare-fun tp!926740 () Bool)

(declare-fun tp!926741 () Bool)

(assert (=> b!2888696 (= e!1826246 (and tp!926740 tp!926741))))

(declare-fun b!2888695 () Bool)

(declare-fun tp!926742 () Bool)

(assert (=> b!2888695 (= e!1826246 tp!926742)))

(assert (= (and b!2888410 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18150 r!23079)))) b!2888693))

(assert (= (and b!2888410 ((_ is Concat!14140) (regTwo!18150 (regOne!18150 r!23079)))) b!2888694))

(assert (= (and b!2888410 ((_ is Star!8819) (regTwo!18150 (regOne!18150 r!23079)))) b!2888695))

(assert (= (and b!2888410 ((_ is Union!8819) (regTwo!18150 (regOne!18150 r!23079)))) b!2888696))

(check-sat (not b!2888575) (not b!2888592) (not b!2888647) (not bm!187491) (not b!2888595) (not b!2888447) (not b!2888690) (not bm!187464) (not b!2888611) (not b!2888663) (not bm!187493) (not b!2888455) (not b!2888460) (not bm!187492) (not b!2888631) (not b!2888579) (not d!834217) (not b!2888622) (not b!2888654) (not b!2888602) (not b!2888607) (not b!2888668) (not b!2888638) (not b!2888464) (not b!2888574) (not b!2888467) (not b!2888600) (not b!2888591) (not b!2888687) (not b!2888541) (not b!2888692) (not bm!187469) (not b!2888615) (not b!2888686) (not b!2888619) (not b!2888599) (not b!2888542) (not b!2888587) (not b!2888664) (not b!2888650) (not b!2888620) (not b!2888580) (not d!834199) (not b!2888644) (not b!2888632) (not b!2888652) (not b!2888616) (not b!2888659) (not b!2888660) (not bm!187478) (not b!2888454) (not b!2888626) (not b!2888643) (not d!834215) (not b!2888655) (not b!2888648) (not b!2888546) (not b!2888630) (not b!2888628) (not bm!187480) (not b!2888578) (not d!834201) (not b!2888596) (not b!2888585) (not b!2888651) (not b!2888662) (not b!2888594) (not b!2888656) (not b!2888695) (not b!2888627) (not b!2888624) (not b!2888598) (not b!2888456) (not b!2888618) (not bm!187465) (not b!2888688) (not b!2888608) (not b!2888691) (not b!2888623) tp_is_empty!15225 (not b!2888666) (not b!2888603) (not b!2888489) (not b!2888694) (not b!2888584) (not b!2888639) (not b!2888696) (not bm!187468) (not b!2888612) (not b!2888604) (not bm!187494) (not b!2888564) (not b!2888610) (not b!2888658) (not b!2888576) (not b!2888642) (not b!2888646) (not b!2888606) (not b!2888640) (not b!2888590) (not d!834209) (not b!2888667) (not b!2888440) (not b!2888614) (not bm!187467))
(check-sat)
(get-model)

(assert (=> bm!187469 d!834213))

(declare-fun b!2888841 () Bool)

(declare-fun e!1826297 () Option!6492)

(declare-fun e!1826296 () Option!6492)

(assert (=> b!2888841 (= e!1826297 e!1826296)))

(declare-fun c!469650 () Bool)

(assert (=> b!2888841 (= c!469650 ((_ is Star!8819) (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(declare-fun b!2888842 () Bool)

(declare-fun e!1826298 () Option!6492)

(assert (=> b!2888842 (= e!1826298 None!6491)))

(declare-fun b!2888843 () Bool)

(declare-fun e!1826301 () Option!6492)

(declare-fun e!1826295 () Option!6492)

(assert (=> b!2888843 (= e!1826301 e!1826295)))

(declare-fun lt!1020870 () Option!6492)

(declare-fun call!187516 () Option!6492)

(assert (=> b!2888843 (= lt!1020870 call!187516)))

(declare-fun c!469651 () Bool)

(assert (=> b!2888843 (= c!469651 ((_ is Some!6491) lt!1020870))))

(declare-fun b!2888844 () Bool)

(declare-fun e!1826300 () Option!6492)

(assert (=> b!2888844 (= e!1826300 None!6491)))

(declare-fun bm!187510 () Bool)

(declare-fun c!469646 () Bool)

(assert (=> bm!187510 (= call!187516 (getLanguageWitness!526 (ite c!469646 (regTwo!18151 (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))) (regOne!18150 (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))))

(declare-fun c!469652 () Bool)

(declare-fun b!2888845 () Bool)

(assert (=> b!2888845 (= c!469652 ((_ is ElementMatch!8819) (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(assert (=> b!2888845 (= e!1826300 e!1826297)))

(declare-fun b!2888846 () Bool)

(declare-fun e!1826294 () Option!6492)

(assert (=> b!2888846 (= e!1826294 call!187516)))

(declare-fun bm!187511 () Bool)

(declare-fun call!187515 () Option!6492)

(assert (=> bm!187511 (= call!187515 (getLanguageWitness!526 (ite c!469646 (regOne!18151 (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))) (regTwo!18150 (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))))

(declare-fun b!2888848 () Bool)

(declare-fun c!469647 () Bool)

(declare-fun lt!1020871 () Option!6492)

(assert (=> b!2888848 (= c!469647 ((_ is Some!6491) lt!1020871))))

(assert (=> b!2888848 (= lt!1020871 call!187515)))

(assert (=> b!2888848 (= e!1826295 e!1826298)))

(declare-fun b!2888849 () Bool)

(declare-fun e!1826299 () Option!6492)

(assert (=> b!2888849 (= e!1826299 (Some!6491 Nil!34496))))

(declare-fun b!2888850 () Bool)

(declare-fun lt!1020869 () Option!6492)

(assert (=> b!2888850 (= e!1826294 lt!1020869)))

(declare-fun b!2888851 () Bool)

(assert (=> b!2888851 (= e!1826299 e!1826300)))

(declare-fun c!469648 () Bool)

(assert (=> b!2888851 (= c!469648 ((_ is EmptyLang!8819) (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(declare-fun b!2888852 () Bool)

(assert (=> b!2888852 (= e!1826298 (Some!6491 (++!8219 (v!34617 lt!1020870) (v!34617 lt!1020871))))))

(declare-fun b!2888853 () Bool)

(assert (=> b!2888853 (= e!1826296 (Some!6491 Nil!34496))))

(declare-fun b!2888854 () Bool)

(assert (=> b!2888854 (= e!1826301 e!1826294)))

(assert (=> b!2888854 (= lt!1020869 call!187515)))

(declare-fun c!469645 () Bool)

(assert (=> b!2888854 (= c!469645 ((_ is Some!6491) lt!1020869))))

(declare-fun b!2888855 () Bool)

(assert (=> b!2888855 (= e!1826295 None!6491)))

(declare-fun b!2888856 () Bool)

(assert (=> b!2888856 (= e!1826297 (Some!6491 (Cons!34496 (c!469484 (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))) Nil!34496)))))

(declare-fun d!834249 () Bool)

(declare-fun c!469649 () Bool)

(assert (=> d!834249 (= c!469649 ((_ is EmptyExpr!8819) (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(assert (=> d!834249 (= (getLanguageWitness!526 (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))) e!1826299)))

(declare-fun b!2888847 () Bool)

(assert (=> b!2888847 (= c!469646 ((_ is Union!8819) (ite c!469564 (regTwo!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(assert (=> b!2888847 (= e!1826296 e!1826301)))

(assert (= (and d!834249 c!469649) b!2888849))

(assert (= (and d!834249 (not c!469649)) b!2888851))

(assert (= (and b!2888851 c!469648) b!2888844))

(assert (= (and b!2888851 (not c!469648)) b!2888845))

(assert (= (and b!2888845 c!469652) b!2888856))

(assert (= (and b!2888845 (not c!469652)) b!2888841))

(assert (= (and b!2888841 c!469650) b!2888853))

(assert (= (and b!2888841 (not c!469650)) b!2888847))

(assert (= (and b!2888847 c!469646) b!2888854))

(assert (= (and b!2888847 (not c!469646)) b!2888843))

(assert (= (and b!2888854 c!469645) b!2888850))

(assert (= (and b!2888854 (not c!469645)) b!2888846))

(assert (= (and b!2888843 c!469651) b!2888848))

(assert (= (and b!2888843 (not c!469651)) b!2888855))

(assert (= (and b!2888848 c!469647) b!2888852))

(assert (= (and b!2888848 (not c!469647)) b!2888842))

(assert (= (or b!2888846 b!2888843) bm!187510))

(assert (= (or b!2888854 b!2888848) bm!187511))

(declare-fun m!3301931 () Bool)

(assert (=> bm!187510 m!3301931))

(declare-fun m!3301933 () Bool)

(assert (=> bm!187511 m!3301933))

(declare-fun m!3301935 () Bool)

(assert (=> b!2888852 m!3301935))

(assert (=> bm!187464 d!834249))

(declare-fun d!834251 () Bool)

(assert (=> d!834251 (= (nullable!2720 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))) (nullableFct!837 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))))

(declare-fun bs!523853 () Bool)

(assert (= bs!523853 d!834251))

(declare-fun m!3301937 () Bool)

(assert (=> bs!523853 m!3301937))

(assert (=> b!2888447 d!834251))

(declare-fun b!2888857 () Bool)

(declare-fun e!1826305 () Bool)

(declare-fun e!1826307 () Bool)

(assert (=> b!2888857 (= e!1826305 e!1826307)))

(declare-fun res!1196050 () Bool)

(assert (=> b!2888857 (=> (not res!1196050) (not e!1826307))))

(declare-fun call!187518 () Bool)

(assert (=> b!2888857 (= res!1196050 call!187518)))

(declare-fun b!2888858 () Bool)

(declare-fun e!1826303 () Bool)

(declare-fun call!187519 () Bool)

(assert (=> b!2888858 (= e!1826303 call!187519)))

(declare-fun b!2888859 () Bool)

(declare-fun e!1826306 () Bool)

(assert (=> b!2888859 (= e!1826306 e!1826303)))

(declare-fun res!1196049 () Bool)

(assert (=> b!2888859 (= res!1196049 (not (nullable!2720 (reg!9148 lt!1020849))))))

(assert (=> b!2888859 (=> (not res!1196049) (not e!1826303))))

(declare-fun b!2888860 () Bool)

(declare-fun call!187517 () Bool)

(assert (=> b!2888860 (= e!1826307 call!187517)))

(declare-fun b!2888861 () Bool)

(declare-fun e!1826308 () Bool)

(assert (=> b!2888861 (= e!1826308 call!187517)))

(declare-fun b!2888862 () Bool)

(declare-fun res!1196047 () Bool)

(assert (=> b!2888862 (=> res!1196047 e!1826305)))

(assert (=> b!2888862 (= res!1196047 (not ((_ is Concat!14140) lt!1020849)))))

(declare-fun e!1826304 () Bool)

(assert (=> b!2888862 (= e!1826304 e!1826305)))

(declare-fun b!2888863 () Bool)

(declare-fun e!1826302 () Bool)

(assert (=> b!2888863 (= e!1826302 e!1826306)))

(declare-fun c!469654 () Bool)

(assert (=> b!2888863 (= c!469654 ((_ is Star!8819) lt!1020849))))

(declare-fun bm!187513 () Bool)

(declare-fun c!469653 () Bool)

(assert (=> bm!187513 (= call!187519 (validRegex!3592 (ite c!469654 (reg!9148 lt!1020849) (ite c!469653 (regTwo!18151 lt!1020849) (regTwo!18150 lt!1020849)))))))

(declare-fun b!2888864 () Bool)

(declare-fun res!1196046 () Bool)

(assert (=> b!2888864 (=> (not res!1196046) (not e!1826308))))

(assert (=> b!2888864 (= res!1196046 call!187518)))

(assert (=> b!2888864 (= e!1826304 e!1826308)))

(declare-fun bm!187514 () Bool)

(assert (=> bm!187514 (= call!187518 (validRegex!3592 (ite c!469653 (regOne!18151 lt!1020849) (regOne!18150 lt!1020849))))))

(declare-fun b!2888865 () Bool)

(assert (=> b!2888865 (= e!1826306 e!1826304)))

(assert (=> b!2888865 (= c!469653 ((_ is Union!8819) lt!1020849))))

(declare-fun d!834253 () Bool)

(declare-fun res!1196048 () Bool)

(assert (=> d!834253 (=> res!1196048 e!1826302)))

(assert (=> d!834253 (= res!1196048 ((_ is ElementMatch!8819) lt!1020849))))

(assert (=> d!834253 (= (validRegex!3592 lt!1020849) e!1826302)))

(declare-fun bm!187512 () Bool)

(assert (=> bm!187512 (= call!187517 call!187519)))

(assert (= (and d!834253 (not res!1196048)) b!2888863))

(assert (= (and b!2888863 c!469654) b!2888859))

(assert (= (and b!2888863 (not c!469654)) b!2888865))

(assert (= (and b!2888859 res!1196049) b!2888858))

(assert (= (and b!2888865 c!469653) b!2888864))

(assert (= (and b!2888865 (not c!469653)) b!2888862))

(assert (= (and b!2888864 res!1196046) b!2888861))

(assert (= (and b!2888862 (not res!1196047)) b!2888857))

(assert (= (and b!2888857 res!1196050) b!2888860))

(assert (= (or b!2888861 b!2888860) bm!187512))

(assert (= (or b!2888864 b!2888857) bm!187514))

(assert (= (or b!2888858 bm!187512) bm!187513))

(declare-fun m!3301939 () Bool)

(assert (=> b!2888859 m!3301939))

(declare-fun m!3301941 () Bool)

(assert (=> bm!187513 m!3301941))

(declare-fun m!3301943 () Bool)

(assert (=> bm!187514 m!3301943))

(assert (=> d!834201 d!834253))

(assert (=> d!834201 d!834183))

(declare-fun b!2888866 () Bool)

(declare-fun e!1826309 () Regex!8819)

(declare-fun call!187521 () Regex!8819)

(declare-fun call!187520 () Regex!8819)

(assert (=> b!2888866 (= e!1826309 (Union!8819 call!187521 call!187520))))

(declare-fun b!2888867 () Bool)

(declare-fun c!469659 () Bool)

(assert (=> b!2888867 (= c!469659 (nullable!2720 (regOne!18150 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))

(declare-fun e!1826313 () Regex!8819)

(declare-fun e!1826310 () Regex!8819)

(assert (=> b!2888867 (= e!1826313 e!1826310)))

(declare-fun b!2888868 () Bool)

(declare-fun call!187523 () Regex!8819)

(assert (=> b!2888868 (= e!1826310 (Union!8819 (Concat!14140 call!187523 (regTwo!18150 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) EmptyLang!8819))))

(declare-fun call!187522 () Regex!8819)

(declare-fun b!2888869 () Bool)

(assert (=> b!2888869 (= e!1826313 (Concat!14140 call!187522 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))

(declare-fun b!2888870 () Bool)

(declare-fun e!1826312 () Regex!8819)

(declare-fun e!1826311 () Regex!8819)

(assert (=> b!2888870 (= e!1826312 e!1826311)))

(declare-fun c!469655 () Bool)

(assert (=> b!2888870 (= c!469655 ((_ is ElementMatch!8819) (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))

(declare-fun d!834255 () Bool)

(declare-fun lt!1020872 () Regex!8819)

(assert (=> d!834255 (validRegex!3592 lt!1020872)))

(assert (=> d!834255 (= lt!1020872 e!1826312)))

(declare-fun c!469658 () Bool)

(assert (=> d!834255 (= c!469658 (or ((_ is EmptyExpr!8819) (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079))) ((_ is EmptyLang!8819) (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))

(assert (=> d!834255 (validRegex!3592 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))

(assert (=> d!834255 (= (derivativeStep!2351 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079)) (head!6380 (get!10437 lt!1020818))) lt!1020872)))

(declare-fun b!2888871 () Bool)

(declare-fun c!469656 () Bool)

(assert (=> b!2888871 (= c!469656 ((_ is Union!8819) (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))

(assert (=> b!2888871 (= e!1826311 e!1826309)))

(declare-fun bm!187515 () Bool)

(declare-fun c!469657 () Bool)

(assert (=> bm!187515 (= call!187521 (derivativeStep!2351 (ite c!469656 (regOne!18151 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079))) (ite c!469657 (reg!9148 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079))) (regOne!18150 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))) (head!6380 (get!10437 lt!1020818))))))

(declare-fun bm!187516 () Bool)

(assert (=> bm!187516 (= call!187523 call!187522)))

(declare-fun bm!187517 () Bool)

(assert (=> bm!187517 (= call!187520 (derivativeStep!2351 (ite c!469656 (regTwo!18151 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (head!6380 (get!10437 lt!1020818))))))

(declare-fun b!2888872 () Bool)

(assert (=> b!2888872 (= e!1826309 e!1826313)))

(assert (=> b!2888872 (= c!469657 ((_ is Star!8819) (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))

(declare-fun b!2888873 () Bool)

(assert (=> b!2888873 (= e!1826310 (Union!8819 (Concat!14140 call!187523 (regTwo!18150 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) call!187520))))

(declare-fun b!2888874 () Bool)

(assert (=> b!2888874 (= e!1826311 (ite (= (head!6380 (get!10437 lt!1020818)) (c!469484 (ite c!469587 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) EmptyExpr!8819 EmptyLang!8819))))

(declare-fun b!2888875 () Bool)

(assert (=> b!2888875 (= e!1826312 EmptyLang!8819)))

(declare-fun bm!187518 () Bool)

(assert (=> bm!187518 (= call!187522 call!187521)))

(assert (= (and d!834255 c!469658) b!2888875))

(assert (= (and d!834255 (not c!469658)) b!2888870))

(assert (= (and b!2888870 c!469655) b!2888874))

(assert (= (and b!2888870 (not c!469655)) b!2888871))

(assert (= (and b!2888871 c!469656) b!2888866))

(assert (= (and b!2888871 (not c!469656)) b!2888872))

(assert (= (and b!2888872 c!469657) b!2888869))

(assert (= (and b!2888872 (not c!469657)) b!2888867))

(assert (= (and b!2888867 c!469659) b!2888873))

(assert (= (and b!2888867 (not c!469659)) b!2888868))

(assert (= (or b!2888873 b!2888868) bm!187516))

(assert (= (or b!2888869 bm!187516) bm!187518))

(assert (= (or b!2888866 bm!187518) bm!187515))

(assert (= (or b!2888866 b!2888873) bm!187517))

(declare-fun m!3301945 () Bool)

(assert (=> b!2888867 m!3301945))

(declare-fun m!3301947 () Bool)

(assert (=> d!834255 m!3301947))

(declare-fun m!3301949 () Bool)

(assert (=> d!834255 m!3301949))

(assert (=> bm!187515 m!3301761))

(declare-fun m!3301951 () Bool)

(assert (=> bm!187515 m!3301951))

(assert (=> bm!187517 m!3301761))

(declare-fun m!3301953 () Bool)

(assert (=> bm!187517 m!3301953))

(assert (=> bm!187480 d!834255))

(declare-fun d!834257 () Bool)

(assert (=> d!834257 (= (isEmpty!18792 (tail!4605 (tail!4605 (get!10437 lt!1020818)))) ((_ is Nil!34496) (tail!4605 (tail!4605 (get!10437 lt!1020818)))))))

(assert (=> b!2888460 d!834257))

(declare-fun d!834259 () Bool)

(assert (=> d!834259 (= (tail!4605 (tail!4605 (get!10437 lt!1020818))) (t!233663 (tail!4605 (get!10437 lt!1020818))))))

(assert (=> b!2888460 d!834259))

(declare-fun b!2888876 () Bool)

(declare-fun e!1826314 () Regex!8819)

(declare-fun call!187525 () Regex!8819)

(declare-fun call!187524 () Regex!8819)

(assert (=> b!2888876 (= e!1826314 (Union!8819 call!187525 call!187524))))

(declare-fun b!2888877 () Bool)

(declare-fun c!469664 () Bool)

(assert (=> b!2888877 (= c!469664 (nullable!2720 (regOne!18150 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079))))))))

(declare-fun e!1826318 () Regex!8819)

(declare-fun e!1826315 () Regex!8819)

(assert (=> b!2888877 (= e!1826318 e!1826315)))

(declare-fun b!2888878 () Bool)

(declare-fun call!187527 () Regex!8819)

(assert (=> b!2888878 (= e!1826315 (Union!8819 (Concat!14140 call!187527 (regTwo!18150 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079))))) EmptyLang!8819))))

(declare-fun b!2888879 () Bool)

(declare-fun call!187526 () Regex!8819)

(assert (=> b!2888879 (= e!1826318 (Concat!14140 call!187526 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079)))))))

(declare-fun b!2888880 () Bool)

(declare-fun e!1826317 () Regex!8819)

(declare-fun e!1826316 () Regex!8819)

(assert (=> b!2888880 (= e!1826317 e!1826316)))

(declare-fun c!469660 () Bool)

(assert (=> b!2888880 (= c!469660 ((_ is ElementMatch!8819) (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079)))))))

(declare-fun d!834261 () Bool)

(declare-fun lt!1020873 () Regex!8819)

(assert (=> d!834261 (validRegex!3592 lt!1020873)))

(assert (=> d!834261 (= lt!1020873 e!1826317)))

(declare-fun c!469663 () Bool)

(assert (=> d!834261 (= c!469663 (or ((_ is EmptyExpr!8819) (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079)))) ((_ is EmptyLang!8819) (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079))))))))

(assert (=> d!834261 (validRegex!3592 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079))))))

(assert (=> d!834261 (= (derivativeStep!2351 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079))) (head!6380 (get!10437 lt!1020818))) lt!1020873)))

(declare-fun c!469661 () Bool)

(declare-fun b!2888881 () Bool)

(assert (=> b!2888881 (= c!469661 ((_ is Union!8819) (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079)))))))

(assert (=> b!2888881 (= e!1826316 e!1826314)))

(declare-fun bm!187519 () Bool)

(declare-fun c!469662 () Bool)

(assert (=> bm!187519 (= call!187525 (derivativeStep!2351 (ite c!469661 (regOne!18151 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079)))) (ite c!469662 (reg!9148 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079)))) (regOne!18150 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079)))))) (head!6380 (get!10437 lt!1020818))))))

(declare-fun bm!187520 () Bool)

(assert (=> bm!187520 (= call!187527 call!187526)))

(declare-fun bm!187521 () Bool)

(assert (=> bm!187521 (= call!187524 (derivativeStep!2351 (ite c!469661 (regTwo!18151 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079)))) (regTwo!18150 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079))))) (head!6380 (get!10437 lt!1020818))))))

(declare-fun b!2888882 () Bool)

(assert (=> b!2888882 (= e!1826314 e!1826318)))

(assert (=> b!2888882 (= c!469662 ((_ is Star!8819) (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079)))))))

(declare-fun b!2888883 () Bool)

(assert (=> b!2888883 (= e!1826315 (Union!8819 (Concat!14140 call!187527 (regTwo!18150 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079))))) call!187524))))

(declare-fun b!2888884 () Bool)

(assert (=> b!2888884 (= e!1826316 (ite (= (head!6380 (get!10437 lt!1020818)) (c!469484 (ite c!469587 (regOne!18151 r!23079) (ite c!469588 (reg!9148 r!23079) (regOne!18150 r!23079))))) EmptyExpr!8819 EmptyLang!8819))))

(declare-fun b!2888885 () Bool)

(assert (=> b!2888885 (= e!1826317 EmptyLang!8819)))

(declare-fun bm!187522 () Bool)

(assert (=> bm!187522 (= call!187526 call!187525)))

(assert (= (and d!834261 c!469663) b!2888885))

(assert (= (and d!834261 (not c!469663)) b!2888880))

(assert (= (and b!2888880 c!469660) b!2888884))

(assert (= (and b!2888880 (not c!469660)) b!2888881))

(assert (= (and b!2888881 c!469661) b!2888876))

(assert (= (and b!2888881 (not c!469661)) b!2888882))

(assert (= (and b!2888882 c!469662) b!2888879))

(assert (= (and b!2888882 (not c!469662)) b!2888877))

(assert (= (and b!2888877 c!469664) b!2888883))

(assert (= (and b!2888877 (not c!469664)) b!2888878))

(assert (= (or b!2888883 b!2888878) bm!187520))

(assert (= (or b!2888879 bm!187520) bm!187522))

(assert (= (or b!2888876 bm!187522) bm!187519))

(assert (= (or b!2888876 b!2888883) bm!187521))

(declare-fun m!3301955 () Bool)

(assert (=> b!2888877 m!3301955))

(declare-fun m!3301957 () Bool)

(assert (=> d!834261 m!3301957))

(declare-fun m!3301959 () Bool)

(assert (=> d!834261 m!3301959))

(assert (=> bm!187519 m!3301761))

(declare-fun m!3301961 () Bool)

(assert (=> bm!187519 m!3301961))

(assert (=> bm!187521 m!3301761))

(declare-fun m!3301963 () Bool)

(assert (=> bm!187521 m!3301963))

(assert (=> bm!187478 d!834261))

(declare-fun d!834263 () Bool)

(assert (=> d!834263 (= (head!6380 (tail!4605 (get!10437 lt!1020818))) (h!39916 (tail!4605 (get!10437 lt!1020818))))))

(assert (=> b!2888464 d!834263))

(declare-fun bm!187527 () Bool)

(declare-fun call!187533 () Bool)

(declare-fun c!469667 () Bool)

(assert (=> bm!187527 (= call!187533 (nullable!2720 (ite c!469667 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))

(declare-fun b!2888900 () Bool)

(declare-fun e!1826335 () Bool)

(assert (=> b!2888900 (= e!1826335 call!187533)))

(declare-fun b!2888901 () Bool)

(declare-fun e!1826333 () Bool)

(declare-fun e!1826336 () Bool)

(assert (=> b!2888901 (= e!1826333 e!1826336)))

(declare-fun res!1196061 () Bool)

(assert (=> b!2888901 (=> (not res!1196061) (not e!1826336))))

(assert (=> b!2888901 (= res!1196061 (and (not ((_ is EmptyLang!8819) r!23079)) (not ((_ is ElementMatch!8819) r!23079))))))

(declare-fun bm!187528 () Bool)

(declare-fun call!187532 () Bool)

(assert (=> bm!187528 (= call!187532 (nullable!2720 (ite c!469667 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))

(declare-fun b!2888902 () Bool)

(declare-fun e!1826332 () Bool)

(declare-fun e!1826331 () Bool)

(assert (=> b!2888902 (= e!1826332 e!1826331)))

(declare-fun res!1196065 () Bool)

(assert (=> b!2888902 (= res!1196065 call!187533)))

(assert (=> b!2888902 (=> res!1196065 e!1826331)))

(declare-fun b!2888903 () Bool)

(assert (=> b!2888903 (= e!1826332 e!1826335)))

(declare-fun res!1196063 () Bool)

(assert (=> b!2888903 (= res!1196063 call!187532)))

(assert (=> b!2888903 (=> (not res!1196063) (not e!1826335))))

(declare-fun b!2888904 () Bool)

(assert (=> b!2888904 (= e!1826331 call!187532)))

(declare-fun d!834265 () Bool)

(declare-fun res!1196064 () Bool)

(assert (=> d!834265 (=> res!1196064 e!1826333)))

(assert (=> d!834265 (= res!1196064 ((_ is EmptyExpr!8819) r!23079))))

(assert (=> d!834265 (= (nullableFct!837 r!23079) e!1826333)))

(declare-fun b!2888905 () Bool)

(declare-fun e!1826334 () Bool)

(assert (=> b!2888905 (= e!1826336 e!1826334)))

(declare-fun res!1196062 () Bool)

(assert (=> b!2888905 (=> res!1196062 e!1826334)))

(assert (=> b!2888905 (= res!1196062 ((_ is Star!8819) r!23079))))

(declare-fun b!2888906 () Bool)

(assert (=> b!2888906 (= e!1826334 e!1826332)))

(assert (=> b!2888906 (= c!469667 ((_ is Union!8819) r!23079))))

(assert (= (and d!834265 (not res!1196064)) b!2888901))

(assert (= (and b!2888901 res!1196061) b!2888905))

(assert (= (and b!2888905 (not res!1196062)) b!2888906))

(assert (= (and b!2888906 c!469667) b!2888902))

(assert (= (and b!2888906 (not c!469667)) b!2888903))

(assert (= (and b!2888902 (not res!1196065)) b!2888904))

(assert (= (and b!2888903 res!1196063) b!2888900))

(assert (= (or b!2888902 b!2888900) bm!187527))

(assert (= (or b!2888904 b!2888903) bm!187528))

(declare-fun m!3301965 () Bool)

(assert (=> bm!187527 m!3301965))

(declare-fun m!3301967 () Bool)

(assert (=> bm!187528 m!3301967))

(assert (=> d!834215 d!834265))

(declare-fun bm!187529 () Bool)

(declare-fun call!187535 () Bool)

(declare-fun c!469668 () Bool)

(assert (=> bm!187529 (= call!187535 (nullable!2720 (ite c!469668 (regOne!18151 (reg!9148 r!23079)) (regTwo!18150 (reg!9148 r!23079)))))))

(declare-fun b!2888907 () Bool)

(declare-fun e!1826341 () Bool)

(assert (=> b!2888907 (= e!1826341 call!187535)))

(declare-fun b!2888908 () Bool)

(declare-fun e!1826339 () Bool)

(declare-fun e!1826342 () Bool)

(assert (=> b!2888908 (= e!1826339 e!1826342)))

(declare-fun res!1196066 () Bool)

(assert (=> b!2888908 (=> (not res!1196066) (not e!1826342))))

(assert (=> b!2888908 (= res!1196066 (and (not ((_ is EmptyLang!8819) (reg!9148 r!23079))) (not ((_ is ElementMatch!8819) (reg!9148 r!23079)))))))

(declare-fun bm!187530 () Bool)

(declare-fun call!187534 () Bool)

(assert (=> bm!187530 (= call!187534 (nullable!2720 (ite c!469668 (regTwo!18151 (reg!9148 r!23079)) (regOne!18150 (reg!9148 r!23079)))))))

(declare-fun b!2888909 () Bool)

(declare-fun e!1826338 () Bool)

(declare-fun e!1826337 () Bool)

(assert (=> b!2888909 (= e!1826338 e!1826337)))

(declare-fun res!1196070 () Bool)

(assert (=> b!2888909 (= res!1196070 call!187535)))

(assert (=> b!2888909 (=> res!1196070 e!1826337)))

(declare-fun b!2888910 () Bool)

(assert (=> b!2888910 (= e!1826338 e!1826341)))

(declare-fun res!1196068 () Bool)

(assert (=> b!2888910 (= res!1196068 call!187534)))

(assert (=> b!2888910 (=> (not res!1196068) (not e!1826341))))

(declare-fun b!2888911 () Bool)

(assert (=> b!2888911 (= e!1826337 call!187534)))

(declare-fun d!834267 () Bool)

(declare-fun res!1196069 () Bool)

(assert (=> d!834267 (=> res!1196069 e!1826339)))

(assert (=> d!834267 (= res!1196069 ((_ is EmptyExpr!8819) (reg!9148 r!23079)))))

(assert (=> d!834267 (= (nullableFct!837 (reg!9148 r!23079)) e!1826339)))

(declare-fun b!2888912 () Bool)

(declare-fun e!1826340 () Bool)

(assert (=> b!2888912 (= e!1826342 e!1826340)))

(declare-fun res!1196067 () Bool)

(assert (=> b!2888912 (=> res!1196067 e!1826340)))

(assert (=> b!2888912 (= res!1196067 ((_ is Star!8819) (reg!9148 r!23079)))))

(declare-fun b!2888913 () Bool)

(assert (=> b!2888913 (= e!1826340 e!1826338)))

(assert (=> b!2888913 (= c!469668 ((_ is Union!8819) (reg!9148 r!23079)))))

(assert (= (and d!834267 (not res!1196069)) b!2888908))

(assert (= (and b!2888908 res!1196066) b!2888912))

(assert (= (and b!2888912 (not res!1196067)) b!2888913))

(assert (= (and b!2888913 c!469668) b!2888909))

(assert (= (and b!2888913 (not c!469668)) b!2888910))

(assert (= (and b!2888909 (not res!1196070)) b!2888911))

(assert (= (and b!2888910 res!1196068) b!2888907))

(assert (= (or b!2888909 b!2888907) bm!187529))

(assert (= (or b!2888911 b!2888910) bm!187530))

(declare-fun m!3301969 () Bool)

(assert (=> bm!187529 m!3301969))

(declare-fun m!3301971 () Bool)

(assert (=> bm!187530 m!3301971))

(assert (=> d!834209 d!834267))

(declare-fun b!2888914 () Bool)

(declare-fun e!1826346 () Option!6492)

(declare-fun e!1826345 () Option!6492)

(assert (=> b!2888914 (= e!1826346 e!1826345)))

(declare-fun c!469674 () Bool)

(assert (=> b!2888914 (= c!469674 ((_ is Star!8819) (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(declare-fun b!2888915 () Bool)

(declare-fun e!1826347 () Option!6492)

(assert (=> b!2888915 (= e!1826347 None!6491)))

(declare-fun b!2888916 () Bool)

(declare-fun e!1826350 () Option!6492)

(declare-fun e!1826344 () Option!6492)

(assert (=> b!2888916 (= e!1826350 e!1826344)))

(declare-fun lt!1020875 () Option!6492)

(declare-fun call!187537 () Option!6492)

(assert (=> b!2888916 (= lt!1020875 call!187537)))

(declare-fun c!469675 () Bool)

(assert (=> b!2888916 (= c!469675 ((_ is Some!6491) lt!1020875))))

(declare-fun b!2888917 () Bool)

(declare-fun e!1826349 () Option!6492)

(assert (=> b!2888917 (= e!1826349 None!6491)))

(declare-fun bm!187531 () Bool)

(declare-fun c!469670 () Bool)

(assert (=> bm!187531 (= call!187537 (getLanguageWitness!526 (ite c!469670 (regTwo!18151 (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))) (regOne!18150 (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))))

(declare-fun b!2888918 () Bool)

(declare-fun c!469676 () Bool)

(assert (=> b!2888918 (= c!469676 ((_ is ElementMatch!8819) (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(assert (=> b!2888918 (= e!1826349 e!1826346)))

(declare-fun b!2888919 () Bool)

(declare-fun e!1826343 () Option!6492)

(assert (=> b!2888919 (= e!1826343 call!187537)))

(declare-fun bm!187532 () Bool)

(declare-fun call!187536 () Option!6492)

(assert (=> bm!187532 (= call!187536 (getLanguageWitness!526 (ite c!469670 (regOne!18151 (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))) (regTwo!18150 (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))))

(declare-fun b!2888921 () Bool)

(declare-fun c!469671 () Bool)

(declare-fun lt!1020876 () Option!6492)

(assert (=> b!2888921 (= c!469671 ((_ is Some!6491) lt!1020876))))

(assert (=> b!2888921 (= lt!1020876 call!187536)))

(assert (=> b!2888921 (= e!1826344 e!1826347)))

(declare-fun b!2888922 () Bool)

(declare-fun e!1826348 () Option!6492)

(assert (=> b!2888922 (= e!1826348 (Some!6491 Nil!34496))))

(declare-fun b!2888923 () Bool)

(declare-fun lt!1020874 () Option!6492)

(assert (=> b!2888923 (= e!1826343 lt!1020874)))

(declare-fun b!2888924 () Bool)

(assert (=> b!2888924 (= e!1826348 e!1826349)))

(declare-fun c!469672 () Bool)

(assert (=> b!2888924 (= c!469672 ((_ is EmptyLang!8819) (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(declare-fun b!2888925 () Bool)

(assert (=> b!2888925 (= e!1826347 (Some!6491 (++!8219 (v!34617 lt!1020875) (v!34617 lt!1020876))))))

(declare-fun b!2888926 () Bool)

(assert (=> b!2888926 (= e!1826345 (Some!6491 Nil!34496))))

(declare-fun b!2888927 () Bool)

(assert (=> b!2888927 (= e!1826350 e!1826343)))

(assert (=> b!2888927 (= lt!1020874 call!187536)))

(declare-fun c!469669 () Bool)

(assert (=> b!2888927 (= c!469669 ((_ is Some!6491) lt!1020874))))

(declare-fun b!2888928 () Bool)

(assert (=> b!2888928 (= e!1826344 None!6491)))

(declare-fun b!2888929 () Bool)

(assert (=> b!2888929 (= e!1826346 (Some!6491 (Cons!34496 (c!469484 (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))) Nil!34496)))))

(declare-fun c!469673 () Bool)

(declare-fun d!834269 () Bool)

(assert (=> d!834269 (= c!469673 ((_ is EmptyExpr!8819) (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(assert (=> d!834269 (= (getLanguageWitness!526 (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))) e!1826348)))

(declare-fun b!2888920 () Bool)

(assert (=> b!2888920 (= c!469670 ((_ is Union!8819) (ite c!469564 (regOne!18151 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))) (regTwo!18150 (ite c!469556 (regOne!18151 r!23079) (regTwo!18150 r!23079))))))))

(assert (=> b!2888920 (= e!1826345 e!1826350)))

(assert (= (and d!834269 c!469673) b!2888922))

(assert (= (and d!834269 (not c!469673)) b!2888924))

(assert (= (and b!2888924 c!469672) b!2888917))

(assert (= (and b!2888924 (not c!469672)) b!2888918))

(assert (= (and b!2888918 c!469676) b!2888929))

(assert (= (and b!2888918 (not c!469676)) b!2888914))

(assert (= (and b!2888914 c!469674) b!2888926))

(assert (= (and b!2888914 (not c!469674)) b!2888920))

(assert (= (and b!2888920 c!469670) b!2888927))

(assert (= (and b!2888920 (not c!469670)) b!2888916))

(assert (= (and b!2888927 c!469669) b!2888923))

(assert (= (and b!2888927 (not c!469669)) b!2888919))

(assert (= (and b!2888916 c!469675) b!2888921))

(assert (= (and b!2888916 (not c!469675)) b!2888928))

(assert (= (and b!2888921 c!469671) b!2888925))

(assert (= (and b!2888921 (not c!469671)) b!2888915))

(assert (= (or b!2888919 b!2888916) bm!187531))

(assert (= (or b!2888927 b!2888921) bm!187532))

(declare-fun m!3301973 () Bool)

(assert (=> bm!187531 m!3301973))

(declare-fun m!3301975 () Bool)

(assert (=> bm!187532 m!3301975))

(declare-fun m!3301977 () Bool)

(assert (=> b!2888925 m!3301977))

(assert (=> bm!187465 d!834269))

(declare-fun b!2888930 () Bool)

(declare-fun e!1826354 () Bool)

(declare-fun e!1826356 () Bool)

(assert (=> b!2888930 (= e!1826354 e!1826356)))

(declare-fun res!1196075 () Bool)

(assert (=> b!2888930 (=> (not res!1196075) (not e!1826356))))

(declare-fun call!187539 () Bool)

(assert (=> b!2888930 (= res!1196075 call!187539)))

(declare-fun b!2888931 () Bool)

(declare-fun e!1826352 () Bool)

(declare-fun call!187540 () Bool)

(assert (=> b!2888931 (= e!1826352 call!187540)))

(declare-fun b!2888932 () Bool)

(declare-fun e!1826355 () Bool)

(assert (=> b!2888932 (= e!1826355 e!1826352)))

(declare-fun res!1196074 () Bool)

(assert (=> b!2888932 (= res!1196074 (not (nullable!2720 (reg!9148 (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))))))))

(assert (=> b!2888932 (=> (not res!1196074) (not e!1826352))))

(declare-fun b!2888933 () Bool)

(declare-fun call!187538 () Bool)

(assert (=> b!2888933 (= e!1826356 call!187538)))

(declare-fun b!2888934 () Bool)

(declare-fun e!1826357 () Bool)

(assert (=> b!2888934 (= e!1826357 call!187538)))

(declare-fun b!2888935 () Bool)

(declare-fun res!1196072 () Bool)

(assert (=> b!2888935 (=> res!1196072 e!1826354)))

(assert (=> b!2888935 (= res!1196072 (not ((_ is Concat!14140) (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))))))

(declare-fun e!1826353 () Bool)

(assert (=> b!2888935 (= e!1826353 e!1826354)))

(declare-fun b!2888936 () Bool)

(declare-fun e!1826351 () Bool)

(assert (=> b!2888936 (= e!1826351 e!1826355)))

(declare-fun c!469678 () Bool)

(assert (=> b!2888936 (= c!469678 ((_ is Star!8819) (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))))))

(declare-fun bm!187534 () Bool)

(declare-fun c!469677 () Bool)

(assert (=> bm!187534 (= call!187540 (validRegex!3592 (ite c!469678 (reg!9148 (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))) (ite c!469677 (regTwo!18151 (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))) (regTwo!18150 (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))))))))

(declare-fun b!2888937 () Bool)

(declare-fun res!1196071 () Bool)

(assert (=> b!2888937 (=> (not res!1196071) (not e!1826357))))

(assert (=> b!2888937 (= res!1196071 call!187539)))

(assert (=> b!2888937 (= e!1826353 e!1826357)))

(declare-fun bm!187535 () Bool)

(assert (=> bm!187535 (= call!187539 (validRegex!3592 (ite c!469677 (regOne!18151 (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))) (regOne!18150 (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))))))))

(declare-fun b!2888938 () Bool)

(assert (=> b!2888938 (= e!1826355 e!1826353)))

(assert (=> b!2888938 (= c!469677 ((_ is Union!8819) (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))))))

(declare-fun d!834271 () Bool)

(declare-fun res!1196073 () Bool)

(assert (=> d!834271 (=> res!1196073 e!1826351)))

(assert (=> d!834271 (= res!1196073 ((_ is ElementMatch!8819) (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))))))

(assert (=> d!834271 (= (validRegex!3592 (ite c!469572 (reg!9148 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (ite c!469571 (regTwo!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))) e!1826351)))

(declare-fun bm!187533 () Bool)

(assert (=> bm!187533 (= call!187538 call!187540)))

(assert (= (and d!834271 (not res!1196073)) b!2888936))

(assert (= (and b!2888936 c!469678) b!2888932))

(assert (= (and b!2888936 (not c!469678)) b!2888938))

(assert (= (and b!2888932 res!1196074) b!2888931))

(assert (= (and b!2888938 c!469677) b!2888937))

(assert (= (and b!2888938 (not c!469677)) b!2888935))

(assert (= (and b!2888937 res!1196071) b!2888934))

(assert (= (and b!2888935 (not res!1196072)) b!2888930))

(assert (= (and b!2888930 res!1196075) b!2888933))

(assert (= (or b!2888934 b!2888933) bm!187533))

(assert (= (or b!2888937 b!2888930) bm!187535))

(assert (= (or b!2888931 bm!187533) bm!187534))

(declare-fun m!3301979 () Bool)

(assert (=> b!2888932 m!3301979))

(declare-fun m!3301981 () Bool)

(assert (=> bm!187534 m!3301981))

(declare-fun m!3301983 () Bool)

(assert (=> bm!187535 m!3301983))

(assert (=> bm!187467 d!834271))

(assert (=> b!2888467 d!834257))

(assert (=> b!2888467 d!834259))

(declare-fun b!2888940 () Bool)

(declare-fun e!1826359 () List!34620)

(assert (=> b!2888940 (= e!1826359 (Cons!34496 (h!39916 (t!233663 (v!34617 lt!1020841))) (++!8219 (t!233663 (t!233663 (v!34617 lt!1020841))) (v!34617 lt!1020842))))))

(declare-fun d!834273 () Bool)

(declare-fun e!1826358 () Bool)

(assert (=> d!834273 e!1826358))

(declare-fun res!1196076 () Bool)

(assert (=> d!834273 (=> (not res!1196076) (not e!1826358))))

(declare-fun lt!1020877 () List!34620)

(assert (=> d!834273 (= res!1196076 (= (content!4727 lt!1020877) ((_ map or) (content!4727 (t!233663 (v!34617 lt!1020841))) (content!4727 (v!34617 lt!1020842)))))))

(assert (=> d!834273 (= lt!1020877 e!1826359)))

(declare-fun c!469679 () Bool)

(assert (=> d!834273 (= c!469679 ((_ is Nil!34496) (t!233663 (v!34617 lt!1020841))))))

(assert (=> d!834273 (= (++!8219 (t!233663 (v!34617 lt!1020841)) (v!34617 lt!1020842)) lt!1020877)))

(declare-fun b!2888942 () Bool)

(assert (=> b!2888942 (= e!1826358 (or (not (= (v!34617 lt!1020842) Nil!34496)) (= lt!1020877 (t!233663 (v!34617 lt!1020841)))))))

(declare-fun b!2888939 () Bool)

(assert (=> b!2888939 (= e!1826359 (v!34617 lt!1020842))))

(declare-fun b!2888941 () Bool)

(declare-fun res!1196077 () Bool)

(assert (=> b!2888941 (=> (not res!1196077) (not e!1826358))))

(assert (=> b!2888941 (= res!1196077 (= (size!26346 lt!1020877) (+ (size!26346 (t!233663 (v!34617 lt!1020841))) (size!26346 (v!34617 lt!1020842)))))))

(assert (= (and d!834273 c!469679) b!2888939))

(assert (= (and d!834273 (not c!469679)) b!2888940))

(assert (= (and d!834273 res!1196076) b!2888941))

(assert (= (and b!2888941 res!1196077) b!2888942))

(declare-fun m!3301985 () Bool)

(assert (=> b!2888940 m!3301985))

(declare-fun m!3301987 () Bool)

(assert (=> d!834273 m!3301987))

(declare-fun m!3301989 () Bool)

(assert (=> d!834273 m!3301989))

(assert (=> d!834273 m!3301867))

(declare-fun m!3301991 () Bool)

(assert (=> b!2888941 m!3301991))

(declare-fun m!3301993 () Bool)

(assert (=> b!2888941 m!3301993))

(assert (=> b!2888941 m!3301873))

(assert (=> b!2888541 d!834273))

(declare-fun d!834275 () Bool)

(assert (=> d!834275 (= (nullable!2720 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))) (nullableFct!837 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))))

(declare-fun bs!523854 () Bool)

(assert (= bs!523854 d!834275))

(declare-fun m!3301995 () Bool)

(assert (=> bs!523854 m!3301995))

(assert (=> b!2888546 d!834275))

(declare-fun b!2888943 () Bool)

(declare-fun e!1826363 () Option!6492)

(declare-fun e!1826362 () Option!6492)

(assert (=> b!2888943 (= e!1826363 e!1826362)))

(declare-fun c!469685 () Bool)

(assert (=> b!2888943 (= c!469685 ((_ is Star!8819) (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(declare-fun b!2888944 () Bool)

(declare-fun e!1826364 () Option!6492)

(assert (=> b!2888944 (= e!1826364 None!6491)))

(declare-fun b!2888945 () Bool)

(declare-fun e!1826367 () Option!6492)

(declare-fun e!1826361 () Option!6492)

(assert (=> b!2888945 (= e!1826367 e!1826361)))

(declare-fun lt!1020879 () Option!6492)

(declare-fun call!187542 () Option!6492)

(assert (=> b!2888945 (= lt!1020879 call!187542)))

(declare-fun c!469686 () Bool)

(assert (=> b!2888945 (= c!469686 ((_ is Some!6491) lt!1020879))))

(declare-fun b!2888946 () Bool)

(declare-fun e!1826366 () Option!6492)

(assert (=> b!2888946 (= e!1826366 None!6491)))

(declare-fun bm!187536 () Bool)

(declare-fun c!469681 () Bool)

(assert (=> bm!187536 (= call!187542 (getLanguageWitness!526 (ite c!469681 (regTwo!18151 (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))) (regOne!18150 (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))))

(declare-fun b!2888947 () Bool)

(declare-fun c!469687 () Bool)

(assert (=> b!2888947 (= c!469687 ((_ is ElementMatch!8819) (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(assert (=> b!2888947 (= e!1826366 e!1826363)))

(declare-fun b!2888948 () Bool)

(declare-fun e!1826360 () Option!6492)

(assert (=> b!2888948 (= e!1826360 call!187542)))

(declare-fun call!187541 () Option!6492)

(declare-fun bm!187537 () Bool)

(assert (=> bm!187537 (= call!187541 (getLanguageWitness!526 (ite c!469681 (regOne!18151 (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))) (regTwo!18150 (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))))

(declare-fun b!2888950 () Bool)

(declare-fun c!469682 () Bool)

(declare-fun lt!1020880 () Option!6492)

(assert (=> b!2888950 (= c!469682 ((_ is Some!6491) lt!1020880))))

(assert (=> b!2888950 (= lt!1020880 call!187541)))

(assert (=> b!2888950 (= e!1826361 e!1826364)))

(declare-fun b!2888951 () Bool)

(declare-fun e!1826365 () Option!6492)

(assert (=> b!2888951 (= e!1826365 (Some!6491 Nil!34496))))

(declare-fun b!2888952 () Bool)

(declare-fun lt!1020878 () Option!6492)

(assert (=> b!2888952 (= e!1826360 lt!1020878)))

(declare-fun b!2888953 () Bool)

(assert (=> b!2888953 (= e!1826365 e!1826366)))

(declare-fun c!469683 () Bool)

(assert (=> b!2888953 (= c!469683 ((_ is EmptyLang!8819) (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(declare-fun b!2888954 () Bool)

(assert (=> b!2888954 (= e!1826364 (Some!6491 (++!8219 (v!34617 lt!1020879) (v!34617 lt!1020880))))))

(declare-fun b!2888955 () Bool)

(assert (=> b!2888955 (= e!1826362 (Some!6491 Nil!34496))))

(declare-fun b!2888956 () Bool)

(assert (=> b!2888956 (= e!1826367 e!1826360)))

(assert (=> b!2888956 (= lt!1020878 call!187541)))

(declare-fun c!469680 () Bool)

(assert (=> b!2888956 (= c!469680 ((_ is Some!6491) lt!1020878))))

(declare-fun b!2888957 () Bool)

(assert (=> b!2888957 (= e!1826361 None!6491)))

(declare-fun b!2888958 () Bool)

(assert (=> b!2888958 (= e!1826363 (Some!6491 (Cons!34496 (c!469484 (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))) Nil!34496)))))

(declare-fun d!834277 () Bool)

(declare-fun c!469684 () Bool)

(assert (=> d!834277 (= c!469684 ((_ is EmptyExpr!8819) (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(assert (=> d!834277 (= (getLanguageWitness!526 (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))) e!1826365)))

(declare-fun b!2888949 () Bool)

(assert (=> b!2888949 (= c!469681 ((_ is Union!8819) (ite c!469609 (regTwo!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(assert (=> b!2888949 (= e!1826362 e!1826367)))

(assert (= (and d!834277 c!469684) b!2888951))

(assert (= (and d!834277 (not c!469684)) b!2888953))

(assert (= (and b!2888953 c!469683) b!2888946))

(assert (= (and b!2888953 (not c!469683)) b!2888947))

(assert (= (and b!2888947 c!469687) b!2888958))

(assert (= (and b!2888947 (not c!469687)) b!2888943))

(assert (= (and b!2888943 c!469685) b!2888955))

(assert (= (and b!2888943 (not c!469685)) b!2888949))

(assert (= (and b!2888949 c!469681) b!2888956))

(assert (= (and b!2888949 (not c!469681)) b!2888945))

(assert (= (and b!2888956 c!469680) b!2888952))

(assert (= (and b!2888956 (not c!469680)) b!2888948))

(assert (= (and b!2888945 c!469686) b!2888950))

(assert (= (and b!2888945 (not c!469686)) b!2888957))

(assert (= (and b!2888950 c!469682) b!2888954))

(assert (= (and b!2888950 (not c!469682)) b!2888944))

(assert (= (or b!2888948 b!2888945) bm!187536))

(assert (= (or b!2888956 b!2888950) bm!187537))

(declare-fun m!3301997 () Bool)

(assert (=> bm!187536 m!3301997))

(declare-fun m!3301999 () Bool)

(assert (=> bm!187537 m!3301999))

(declare-fun m!3302001 () Bool)

(assert (=> b!2888954 m!3302001))

(assert (=> bm!187493 d!834277))

(declare-fun b!2888959 () Bool)

(declare-fun e!1826371 () Bool)

(declare-fun e!1826373 () Bool)

(assert (=> b!2888959 (= e!1826371 e!1826373)))

(declare-fun res!1196082 () Bool)

(assert (=> b!2888959 (=> (not res!1196082) (not e!1826373))))

(declare-fun call!187544 () Bool)

(assert (=> b!2888959 (= res!1196082 call!187544)))

(declare-fun b!2888960 () Bool)

(declare-fun e!1826369 () Bool)

(declare-fun call!187545 () Bool)

(assert (=> b!2888960 (= e!1826369 call!187545)))

(declare-fun b!2888961 () Bool)

(declare-fun e!1826372 () Bool)

(assert (=> b!2888961 (= e!1826372 e!1826369)))

(declare-fun res!1196081 () Bool)

(assert (=> b!2888961 (= res!1196081 (not (nullable!2720 (reg!9148 (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))))))

(assert (=> b!2888961 (=> (not res!1196081) (not e!1826369))))

(declare-fun b!2888962 () Bool)

(declare-fun call!187543 () Bool)

(assert (=> b!2888962 (= e!1826373 call!187543)))

(declare-fun b!2888963 () Bool)

(declare-fun e!1826374 () Bool)

(assert (=> b!2888963 (= e!1826374 call!187543)))

(declare-fun b!2888964 () Bool)

(declare-fun res!1196079 () Bool)

(assert (=> b!2888964 (=> res!1196079 e!1826371)))

(assert (=> b!2888964 (= res!1196079 (not ((_ is Concat!14140) (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))))))

(declare-fun e!1826370 () Bool)

(assert (=> b!2888964 (= e!1826370 e!1826371)))

(declare-fun b!2888965 () Bool)

(declare-fun e!1826368 () Bool)

(assert (=> b!2888965 (= e!1826368 e!1826372)))

(declare-fun c!469689 () Bool)

(assert (=> b!2888965 (= c!469689 ((_ is Star!8819) (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))))

(declare-fun c!469688 () Bool)

(declare-fun bm!187539 () Bool)

(assert (=> bm!187539 (= call!187545 (validRegex!3592 (ite c!469689 (reg!9148 (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))) (ite c!469688 (regTwo!18151 (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))) (regTwo!18150 (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079)))))))))))

(declare-fun b!2888966 () Bool)

(declare-fun res!1196078 () Bool)

(assert (=> b!2888966 (=> (not res!1196078) (not e!1826374))))

(assert (=> b!2888966 (= res!1196078 call!187544)))

(assert (=> b!2888966 (= e!1826370 e!1826374)))

(declare-fun bm!187540 () Bool)

(assert (=> bm!187540 (= call!187544 (validRegex!3592 (ite c!469688 (regOne!18151 (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))) (regOne!18150 (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))))))

(declare-fun b!2888967 () Bool)

(assert (=> b!2888967 (= e!1826372 e!1826370)))

(assert (=> b!2888967 (= c!469688 ((_ is Union!8819) (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))))

(declare-fun d!834279 () Bool)

(declare-fun res!1196080 () Bool)

(assert (=> d!834279 (=> res!1196080 e!1826368)))

(assert (=> d!834279 (= res!1196080 ((_ is ElementMatch!8819) (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))))))

(assert (=> d!834279 (= (validRegex!3592 (ite c!469571 (regOne!18151 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))) (regOne!18150 (ite c!469528 (regOne!18151 r!23079) (regOne!18150 r!23079))))) e!1826368)))

(declare-fun bm!187538 () Bool)

(assert (=> bm!187538 (= call!187543 call!187545)))

(assert (= (and d!834279 (not res!1196080)) b!2888965))

(assert (= (and b!2888965 c!469689) b!2888961))

(assert (= (and b!2888965 (not c!469689)) b!2888967))

(assert (= (and b!2888961 res!1196081) b!2888960))

(assert (= (and b!2888967 c!469688) b!2888966))

(assert (= (and b!2888967 (not c!469688)) b!2888964))

(assert (= (and b!2888966 res!1196078) b!2888963))

(assert (= (and b!2888964 (not res!1196079)) b!2888959))

(assert (= (and b!2888959 res!1196082) b!2888962))

(assert (= (or b!2888963 b!2888962) bm!187538))

(assert (= (or b!2888966 b!2888959) bm!187540))

(assert (= (or b!2888960 bm!187538) bm!187539))

(declare-fun m!3302003 () Bool)

(assert (=> b!2888961 m!3302003))

(declare-fun m!3302005 () Bool)

(assert (=> bm!187539 m!3302005))

(declare-fun m!3302007 () Bool)

(assert (=> bm!187540 m!3302007))

(assert (=> bm!187468 d!834279))

(declare-fun d!834281 () Bool)

(declare-fun lt!1020883 () Int)

(assert (=> d!834281 (>= lt!1020883 0)))

(declare-fun e!1826377 () Int)

(assert (=> d!834281 (= lt!1020883 e!1826377)))

(declare-fun c!469692 () Bool)

(assert (=> d!834281 (= c!469692 ((_ is Nil!34496) lt!1020855))))

(assert (=> d!834281 (= (size!26346 lt!1020855) lt!1020883)))

(declare-fun b!2888972 () Bool)

(assert (=> b!2888972 (= e!1826377 0)))

(declare-fun b!2888973 () Bool)

(assert (=> b!2888973 (= e!1826377 (+ 1 (size!26346 (t!233663 lt!1020855))))))

(assert (= (and d!834281 c!469692) b!2888972))

(assert (= (and d!834281 (not c!469692)) b!2888973))

(declare-fun m!3302009 () Bool)

(assert (=> b!2888973 m!3302009))

(assert (=> b!2888542 d!834281))

(declare-fun d!834283 () Bool)

(declare-fun lt!1020884 () Int)

(assert (=> d!834283 (>= lt!1020884 0)))

(declare-fun e!1826378 () Int)

(assert (=> d!834283 (= lt!1020884 e!1826378)))

(declare-fun c!469693 () Bool)

(assert (=> d!834283 (= c!469693 ((_ is Nil!34496) (v!34617 lt!1020841)))))

(assert (=> d!834283 (= (size!26346 (v!34617 lt!1020841)) lt!1020884)))

(declare-fun b!2888974 () Bool)

(assert (=> b!2888974 (= e!1826378 0)))

(declare-fun b!2888975 () Bool)

(assert (=> b!2888975 (= e!1826378 (+ 1 (size!26346 (t!233663 (v!34617 lt!1020841)))))))

(assert (= (and d!834283 c!469693) b!2888974))

(assert (= (and d!834283 (not c!469693)) b!2888975))

(assert (=> b!2888975 m!3301993))

(assert (=> b!2888542 d!834283))

(declare-fun d!834285 () Bool)

(declare-fun lt!1020885 () Int)

(assert (=> d!834285 (>= lt!1020885 0)))

(declare-fun e!1826379 () Int)

(assert (=> d!834285 (= lt!1020885 e!1826379)))

(declare-fun c!469694 () Bool)

(assert (=> d!834285 (= c!469694 ((_ is Nil!34496) (v!34617 lt!1020842)))))

(assert (=> d!834285 (= (size!26346 (v!34617 lt!1020842)) lt!1020885)))

(declare-fun b!2888976 () Bool)

(assert (=> b!2888976 (= e!1826379 0)))

(declare-fun b!2888977 () Bool)

(assert (=> b!2888977 (= e!1826379 (+ 1 (size!26346 (t!233663 (v!34617 lt!1020842)))))))

(assert (= (and d!834285 c!469694) b!2888976))

(assert (= (and d!834285 (not c!469694)) b!2888977))

(declare-fun m!3302011 () Bool)

(assert (=> b!2888977 m!3302011))

(assert (=> b!2888542 d!834285))

(declare-fun b!2888979 () Bool)

(declare-fun e!1826381 () List!34620)

(assert (=> b!2888979 (= e!1826381 (Cons!34496 (h!39916 (v!34617 lt!1020844)) (++!8219 (t!233663 (v!34617 lt!1020844)) (v!34617 lt!1020845))))))

(declare-fun d!834287 () Bool)

(declare-fun e!1826380 () Bool)

(assert (=> d!834287 e!1826380))

(declare-fun res!1196083 () Bool)

(assert (=> d!834287 (=> (not res!1196083) (not e!1826380))))

(declare-fun lt!1020886 () List!34620)

(assert (=> d!834287 (= res!1196083 (= (content!4727 lt!1020886) ((_ map or) (content!4727 (v!34617 lt!1020844)) (content!4727 (v!34617 lt!1020845)))))))

(assert (=> d!834287 (= lt!1020886 e!1826381)))

(declare-fun c!469695 () Bool)

(assert (=> d!834287 (= c!469695 ((_ is Nil!34496) (v!34617 lt!1020844)))))

(assert (=> d!834287 (= (++!8219 (v!34617 lt!1020844) (v!34617 lt!1020845)) lt!1020886)))

(declare-fun b!2888981 () Bool)

(assert (=> b!2888981 (= e!1826380 (or (not (= (v!34617 lt!1020845) Nil!34496)) (= lt!1020886 (v!34617 lt!1020844))))))

(declare-fun b!2888978 () Bool)

(assert (=> b!2888978 (= e!1826381 (v!34617 lt!1020845))))

(declare-fun b!2888980 () Bool)

(declare-fun res!1196084 () Bool)

(assert (=> b!2888980 (=> (not res!1196084) (not e!1826380))))

(assert (=> b!2888980 (= res!1196084 (= (size!26346 lt!1020886) (+ (size!26346 (v!34617 lt!1020844)) (size!26346 (v!34617 lt!1020845)))))))

(assert (= (and d!834287 c!469695) b!2888978))

(assert (= (and d!834287 (not c!469695)) b!2888979))

(assert (= (and d!834287 res!1196083) b!2888980))

(assert (= (and b!2888980 res!1196084) b!2888981))

(declare-fun m!3302013 () Bool)

(assert (=> b!2888979 m!3302013))

(declare-fun m!3302015 () Bool)

(assert (=> d!834287 m!3302015))

(declare-fun m!3302017 () Bool)

(assert (=> d!834287 m!3302017))

(declare-fun m!3302019 () Bool)

(assert (=> d!834287 m!3302019))

(declare-fun m!3302021 () Bool)

(assert (=> b!2888980 m!3302021))

(declare-fun m!3302023 () Bool)

(assert (=> b!2888980 m!3302023))

(declare-fun m!3302025 () Bool)

(assert (=> b!2888980 m!3302025))

(assert (=> b!2888440 d!834287))

(declare-fun d!834289 () Bool)

(declare-fun c!469698 () Bool)

(assert (=> d!834289 (= c!469698 ((_ is Nil!34496) lt!1020855))))

(declare-fun e!1826384 () (InoxSet C!17820))

(assert (=> d!834289 (= (content!4727 lt!1020855) e!1826384)))

(declare-fun b!2888986 () Bool)

(assert (=> b!2888986 (= e!1826384 ((as const (Array C!17820 Bool)) false))))

(declare-fun b!2888987 () Bool)

(assert (=> b!2888987 (= e!1826384 ((_ map or) (store ((as const (Array C!17820 Bool)) false) (h!39916 lt!1020855) true) (content!4727 (t!233663 lt!1020855))))))

(assert (= (and d!834289 c!469698) b!2888986))

(assert (= (and d!834289 (not c!469698)) b!2888987))

(declare-fun m!3302027 () Bool)

(assert (=> b!2888987 m!3302027))

(declare-fun m!3302029 () Bool)

(assert (=> b!2888987 m!3302029))

(assert (=> d!834217 d!834289))

(declare-fun d!834291 () Bool)

(declare-fun c!469699 () Bool)

(assert (=> d!834291 (= c!469699 ((_ is Nil!34496) (v!34617 lt!1020841)))))

(declare-fun e!1826385 () (InoxSet C!17820))

(assert (=> d!834291 (= (content!4727 (v!34617 lt!1020841)) e!1826385)))

(declare-fun b!2888988 () Bool)

(assert (=> b!2888988 (= e!1826385 ((as const (Array C!17820 Bool)) false))))

(declare-fun b!2888989 () Bool)

(assert (=> b!2888989 (= e!1826385 ((_ map or) (store ((as const (Array C!17820 Bool)) false) (h!39916 (v!34617 lt!1020841)) true) (content!4727 (t!233663 (v!34617 lt!1020841)))))))

(assert (= (and d!834291 c!469699) b!2888988))

(assert (= (and d!834291 (not c!469699)) b!2888989))

(declare-fun m!3302031 () Bool)

(assert (=> b!2888989 m!3302031))

(assert (=> b!2888989 m!3301989))

(assert (=> d!834217 d!834291))

(declare-fun d!834293 () Bool)

(declare-fun c!469700 () Bool)

(assert (=> d!834293 (= c!469700 ((_ is Nil!34496) (v!34617 lt!1020842)))))

(declare-fun e!1826386 () (InoxSet C!17820))

(assert (=> d!834293 (= (content!4727 (v!34617 lt!1020842)) e!1826386)))

(declare-fun b!2888990 () Bool)

(assert (=> b!2888990 (= e!1826386 ((as const (Array C!17820 Bool)) false))))

(declare-fun b!2888991 () Bool)

(assert (=> b!2888991 (= e!1826386 ((_ map or) (store ((as const (Array C!17820 Bool)) false) (h!39916 (v!34617 lt!1020842)) true) (content!4727 (t!233663 (v!34617 lt!1020842)))))))

(assert (= (and d!834293 c!469700) b!2888990))

(assert (= (and d!834293 (not c!469700)) b!2888991))

(declare-fun m!3302033 () Bool)

(assert (=> b!2888991 m!3302033))

(declare-fun m!3302035 () Bool)

(assert (=> b!2888991 m!3302035))

(assert (=> d!834217 d!834293))

(declare-fun b!2888992 () Bool)

(declare-fun e!1826390 () Option!6492)

(declare-fun e!1826389 () Option!6492)

(assert (=> b!2888992 (= e!1826390 e!1826389)))

(declare-fun c!469706 () Bool)

(assert (=> b!2888992 (= c!469706 ((_ is Star!8819) (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(declare-fun b!2888993 () Bool)

(declare-fun e!1826391 () Option!6492)

(assert (=> b!2888993 (= e!1826391 None!6491)))

(declare-fun b!2888994 () Bool)

(declare-fun e!1826394 () Option!6492)

(declare-fun e!1826388 () Option!6492)

(assert (=> b!2888994 (= e!1826394 e!1826388)))

(declare-fun lt!1020888 () Option!6492)

(declare-fun call!187547 () Option!6492)

(assert (=> b!2888994 (= lt!1020888 call!187547)))

(declare-fun c!469707 () Bool)

(assert (=> b!2888994 (= c!469707 ((_ is Some!6491) lt!1020888))))

(declare-fun b!2888995 () Bool)

(declare-fun e!1826393 () Option!6492)

(assert (=> b!2888995 (= e!1826393 None!6491)))

(declare-fun bm!187541 () Bool)

(declare-fun c!469702 () Bool)

(assert (=> bm!187541 (= call!187547 (getLanguageWitness!526 (ite c!469702 (regTwo!18151 (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))) (regOne!18150 (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))))

(declare-fun c!469708 () Bool)

(declare-fun b!2888996 () Bool)

(assert (=> b!2888996 (= c!469708 ((_ is ElementMatch!8819) (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(assert (=> b!2888996 (= e!1826393 e!1826390)))

(declare-fun b!2888997 () Bool)

(declare-fun e!1826387 () Option!6492)

(assert (=> b!2888997 (= e!1826387 call!187547)))

(declare-fun bm!187542 () Bool)

(declare-fun call!187546 () Option!6492)

(assert (=> bm!187542 (= call!187546 (getLanguageWitness!526 (ite c!469702 (regOne!18151 (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))) (regTwo!18150 (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))))

(declare-fun b!2888999 () Bool)

(declare-fun c!469703 () Bool)

(declare-fun lt!1020889 () Option!6492)

(assert (=> b!2888999 (= c!469703 ((_ is Some!6491) lt!1020889))))

(assert (=> b!2888999 (= lt!1020889 call!187546)))

(assert (=> b!2888999 (= e!1826388 e!1826391)))

(declare-fun b!2889000 () Bool)

(declare-fun e!1826392 () Option!6492)

(assert (=> b!2889000 (= e!1826392 (Some!6491 Nil!34496))))

(declare-fun b!2889001 () Bool)

(declare-fun lt!1020887 () Option!6492)

(assert (=> b!2889001 (= e!1826387 lt!1020887)))

(declare-fun b!2889002 () Bool)

(assert (=> b!2889002 (= e!1826392 e!1826393)))

(declare-fun c!469704 () Bool)

(assert (=> b!2889002 (= c!469704 ((_ is EmptyLang!8819) (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(declare-fun b!2889003 () Bool)

(assert (=> b!2889003 (= e!1826391 (Some!6491 (++!8219 (v!34617 lt!1020888) (v!34617 lt!1020889))))))

(declare-fun b!2889004 () Bool)

(assert (=> b!2889004 (= e!1826389 (Some!6491 Nil!34496))))

(declare-fun b!2889005 () Bool)

(assert (=> b!2889005 (= e!1826394 e!1826387)))

(assert (=> b!2889005 (= lt!1020887 call!187546)))

(declare-fun c!469701 () Bool)

(assert (=> b!2889005 (= c!469701 ((_ is Some!6491) lt!1020887))))

(declare-fun b!2889006 () Bool)

(assert (=> b!2889006 (= e!1826388 None!6491)))

(declare-fun b!2889007 () Bool)

(assert (=> b!2889007 (= e!1826390 (Some!6491 (Cons!34496 (c!469484 (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))) Nil!34496)))))

(declare-fun c!469705 () Bool)

(declare-fun d!834295 () Bool)

(assert (=> d!834295 (= c!469705 ((_ is EmptyExpr!8819) (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(assert (=> d!834295 (= (getLanguageWitness!526 (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))) e!1826392)))

(declare-fun b!2888998 () Bool)

(assert (=> b!2888998 (= c!469702 ((_ is Union!8819) (ite c!469609 (regOne!18151 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))) (regTwo!18150 (ite c!469556 (regTwo!18151 r!23079) (regOne!18150 r!23079))))))))

(assert (=> b!2888998 (= e!1826389 e!1826394)))

(assert (= (and d!834295 c!469705) b!2889000))

(assert (= (and d!834295 (not c!469705)) b!2889002))

(assert (= (and b!2889002 c!469704) b!2888995))

(assert (= (and b!2889002 (not c!469704)) b!2888996))

(assert (= (and b!2888996 c!469708) b!2889007))

(assert (= (and b!2888996 (not c!469708)) b!2888992))

(assert (= (and b!2888992 c!469706) b!2889004))

(assert (= (and b!2888992 (not c!469706)) b!2888998))

(assert (= (and b!2888998 c!469702) b!2889005))

(assert (= (and b!2888998 (not c!469702)) b!2888994))

(assert (= (and b!2889005 c!469701) b!2889001))

(assert (= (and b!2889005 (not c!469701)) b!2888997))

(assert (= (and b!2888994 c!469707) b!2888999))

(assert (= (and b!2888994 (not c!469707)) b!2889006))

(assert (= (and b!2888999 c!469703) b!2889003))

(assert (= (and b!2888999 (not c!469703)) b!2888993))

(assert (= (or b!2888997 b!2888994) bm!187541))

(assert (= (or b!2889005 b!2888999) bm!187542))

(declare-fun m!3302037 () Bool)

(assert (=> bm!187541 m!3302037))

(declare-fun m!3302039 () Bool)

(assert (=> bm!187542 m!3302039))

(declare-fun m!3302041 () Bool)

(assert (=> b!2889003 m!3302041))

(assert (=> bm!187494 d!834295))

(assert (=> d!834199 d!834213))

(declare-fun b!2889008 () Bool)

(declare-fun e!1826398 () Bool)

(declare-fun e!1826400 () Bool)

(assert (=> b!2889008 (= e!1826398 e!1826400)))

(declare-fun res!1196089 () Bool)

(assert (=> b!2889008 (=> (not res!1196089) (not e!1826400))))

(declare-fun call!187549 () Bool)

(assert (=> b!2889008 (= res!1196089 call!187549)))

(declare-fun b!2889009 () Bool)

(declare-fun e!1826396 () Bool)

(declare-fun call!187550 () Bool)

(assert (=> b!2889009 (= e!1826396 call!187550)))

(declare-fun b!2889010 () Bool)

(declare-fun e!1826399 () Bool)

(assert (=> b!2889010 (= e!1826399 e!1826396)))

(declare-fun res!1196088 () Bool)

(assert (=> b!2889010 (= res!1196088 (not (nullable!2720 (reg!9148 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))))

(assert (=> b!2889010 (=> (not res!1196088) (not e!1826396))))

(declare-fun b!2889011 () Bool)

(declare-fun call!187548 () Bool)

(assert (=> b!2889011 (= e!1826400 call!187548)))

(declare-fun b!2889012 () Bool)

(declare-fun e!1826401 () Bool)

(assert (=> b!2889012 (= e!1826401 call!187548)))

(declare-fun b!2889013 () Bool)

(declare-fun res!1196086 () Bool)

(assert (=> b!2889013 (=> res!1196086 e!1826398)))

(assert (=> b!2889013 (= res!1196086 (not ((_ is Concat!14140) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))))))

(declare-fun e!1826397 () Bool)

(assert (=> b!2889013 (= e!1826397 e!1826398)))

(declare-fun b!2889014 () Bool)

(declare-fun e!1826395 () Bool)

(assert (=> b!2889014 (= e!1826395 e!1826399)))

(declare-fun c!469710 () Bool)

(assert (=> b!2889014 (= c!469710 ((_ is Star!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(declare-fun c!469709 () Bool)

(declare-fun bm!187544 () Bool)

(assert (=> bm!187544 (= call!187550 (validRegex!3592 (ite c!469710 (reg!9148 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))) (ite c!469709 (regTwo!18151 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))) (regTwo!18150 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))))))))

(declare-fun b!2889015 () Bool)

(declare-fun res!1196085 () Bool)

(assert (=> b!2889015 (=> (not res!1196085) (not e!1826401))))

(assert (=> b!2889015 (= res!1196085 call!187549)))

(assert (=> b!2889015 (= e!1826397 e!1826401)))

(declare-fun bm!187545 () Bool)

(assert (=> bm!187545 (= call!187549 (validRegex!3592 (ite c!469709 (regOne!18151 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))) (regOne!18150 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))))

(declare-fun b!2889016 () Bool)

(assert (=> b!2889016 (= e!1826399 e!1826397)))

(assert (=> b!2889016 (= c!469709 ((_ is Union!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(declare-fun d!834297 () Bool)

(declare-fun res!1196087 () Bool)

(assert (=> d!834297 (=> res!1196087 e!1826395)))

(assert (=> d!834297 (= res!1196087 ((_ is ElementMatch!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(assert (=> d!834297 (= (validRegex!3592 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))) e!1826395)))

(declare-fun bm!187543 () Bool)

(assert (=> bm!187543 (= call!187548 call!187550)))

(assert (= (and d!834297 (not res!1196087)) b!2889014))

(assert (= (and b!2889014 c!469710) b!2889010))

(assert (= (and b!2889014 (not c!469710)) b!2889016))

(assert (= (and b!2889010 res!1196088) b!2889009))

(assert (= (and b!2889016 c!469709) b!2889015))

(assert (= (and b!2889016 (not c!469709)) b!2889013))

(assert (= (and b!2889015 res!1196085) b!2889012))

(assert (= (and b!2889013 (not res!1196086)) b!2889008))

(assert (= (and b!2889008 res!1196089) b!2889011))

(assert (= (or b!2889012 b!2889011) bm!187543))

(assert (= (or b!2889015 b!2889008) bm!187545))

(assert (= (or b!2889009 bm!187543) bm!187544))

(declare-fun m!3302043 () Bool)

(assert (=> b!2889010 m!3302043))

(declare-fun m!3302045 () Bool)

(assert (=> bm!187544 m!3302045))

(declare-fun m!3302047 () Bool)

(assert (=> bm!187545 m!3302047))

(assert (=> d!834199 d!834297))

(declare-fun d!834299 () Bool)

(assert (=> d!834299 (= (nullable!2720 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))) (nullableFct!837 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(declare-fun bs!523855 () Bool)

(assert (= bs!523855 d!834299))

(assert (=> bs!523855 m!3301763))

(declare-fun m!3302049 () Bool)

(assert (=> bs!523855 m!3302049))

(assert (=> b!2888455 d!834299))

(declare-fun b!2889017 () Bool)

(declare-fun e!1826405 () Bool)

(declare-fun e!1826407 () Bool)

(assert (=> b!2889017 (= e!1826405 e!1826407)))

(declare-fun res!1196094 () Bool)

(assert (=> b!2889017 (=> (not res!1196094) (not e!1826407))))

(declare-fun call!187552 () Bool)

(assert (=> b!2889017 (= res!1196094 call!187552)))

(declare-fun b!2889018 () Bool)

(declare-fun e!1826403 () Bool)

(declare-fun call!187553 () Bool)

(assert (=> b!2889018 (= e!1826403 call!187553)))

(declare-fun b!2889019 () Bool)

(declare-fun e!1826406 () Bool)

(assert (=> b!2889019 (= e!1826406 e!1826403)))

(declare-fun res!1196093 () Bool)

(assert (=> b!2889019 (= res!1196093 (not (nullable!2720 (reg!9148 (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))))))

(assert (=> b!2889019 (=> (not res!1196093) (not e!1826403))))

(declare-fun b!2889020 () Bool)

(declare-fun call!187551 () Bool)

(assert (=> b!2889020 (= e!1826407 call!187551)))

(declare-fun b!2889021 () Bool)

(declare-fun e!1826408 () Bool)

(assert (=> b!2889021 (= e!1826408 call!187551)))

(declare-fun b!2889022 () Bool)

(declare-fun res!1196091 () Bool)

(assert (=> b!2889022 (=> res!1196091 e!1826405)))

(assert (=> b!2889022 (= res!1196091 (not ((_ is Concat!14140) (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))))))

(declare-fun e!1826404 () Bool)

(assert (=> b!2889022 (= e!1826404 e!1826405)))

(declare-fun b!2889023 () Bool)

(declare-fun e!1826402 () Bool)

(assert (=> b!2889023 (= e!1826402 e!1826406)))

(declare-fun c!469712 () Bool)

(assert (=> b!2889023 (= c!469712 ((_ is Star!8819) (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))))

(declare-fun c!469711 () Bool)

(declare-fun bm!187547 () Bool)

(assert (=> bm!187547 (= call!187553 (validRegex!3592 (ite c!469712 (reg!9148 (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))) (ite c!469711 (regTwo!18151 (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))) (regTwo!18150 (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))))))))

(declare-fun b!2889024 () Bool)

(declare-fun res!1196090 () Bool)

(assert (=> b!2889024 (=> (not res!1196090) (not e!1826408))))

(assert (=> b!2889024 (= res!1196090 call!187552)))

(assert (=> b!2889024 (= e!1826404 e!1826408)))

(declare-fun bm!187548 () Bool)

(assert (=> bm!187548 (= call!187552 (validRegex!3592 (ite c!469711 (regOne!18151 (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))) (regOne!18150 (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))))))

(declare-fun b!2889025 () Bool)

(assert (=> b!2889025 (= e!1826406 e!1826404)))

(assert (=> b!2889025 (= c!469711 ((_ is Union!8819) (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))))

(declare-fun d!834301 () Bool)

(declare-fun res!1196092 () Bool)

(assert (=> d!834301 (=> res!1196092 e!1826402)))

(assert (=> d!834301 (= res!1196092 ((_ is ElementMatch!8819) (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))))

(assert (=> d!834301 (= (validRegex!3592 (ite c!469606 (regOne!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regOne!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))) e!1826402)))

(declare-fun bm!187546 () Bool)

(assert (=> bm!187546 (= call!187551 call!187553)))

(assert (= (and d!834301 (not res!1196092)) b!2889023))

(assert (= (and b!2889023 c!469712) b!2889019))

(assert (= (and b!2889023 (not c!469712)) b!2889025))

(assert (= (and b!2889019 res!1196093) b!2889018))

(assert (= (and b!2889025 c!469711) b!2889024))

(assert (= (and b!2889025 (not c!469711)) b!2889022))

(assert (= (and b!2889024 res!1196090) b!2889021))

(assert (= (and b!2889022 (not res!1196091)) b!2889017))

(assert (= (and b!2889017 res!1196094) b!2889020))

(assert (= (or b!2889021 b!2889020) bm!187546))

(assert (= (or b!2889024 b!2889017) bm!187548))

(assert (= (or b!2889018 bm!187546) bm!187547))

(declare-fun m!3302051 () Bool)

(assert (=> b!2889019 m!3302051))

(declare-fun m!3302053 () Bool)

(assert (=> bm!187547 m!3302053))

(declare-fun m!3302055 () Bool)

(assert (=> bm!187548 m!3302055))

(assert (=> bm!187492 d!834301))

(declare-fun b!2889026 () Bool)

(declare-fun e!1826412 () Bool)

(declare-fun e!1826414 () Bool)

(assert (=> b!2889026 (= e!1826412 e!1826414)))

(declare-fun res!1196099 () Bool)

(assert (=> b!2889026 (=> (not res!1196099) (not e!1826414))))

(declare-fun call!187555 () Bool)

(assert (=> b!2889026 (= res!1196099 call!187555)))

(declare-fun b!2889027 () Bool)

(declare-fun e!1826410 () Bool)

(declare-fun call!187556 () Bool)

(assert (=> b!2889027 (= e!1826410 call!187556)))

(declare-fun b!2889028 () Bool)

(declare-fun e!1826413 () Bool)

(assert (=> b!2889028 (= e!1826413 e!1826410)))

(declare-fun res!1196098 () Bool)

(assert (=> b!2889028 (= res!1196098 (not (nullable!2720 (reg!9148 (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))))))))

(assert (=> b!2889028 (=> (not res!1196098) (not e!1826410))))

(declare-fun b!2889029 () Bool)

(declare-fun call!187554 () Bool)

(assert (=> b!2889029 (= e!1826414 call!187554)))

(declare-fun b!2889030 () Bool)

(declare-fun e!1826415 () Bool)

(assert (=> b!2889030 (= e!1826415 call!187554)))

(declare-fun b!2889031 () Bool)

(declare-fun res!1196096 () Bool)

(assert (=> b!2889031 (=> res!1196096 e!1826412)))

(assert (=> b!2889031 (= res!1196096 (not ((_ is Concat!14140) (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))))))

(declare-fun e!1826411 () Bool)

(assert (=> b!2889031 (= e!1826411 e!1826412)))

(declare-fun b!2889032 () Bool)

(declare-fun e!1826409 () Bool)

(assert (=> b!2889032 (= e!1826409 e!1826413)))

(declare-fun c!469714 () Bool)

(assert (=> b!2889032 (= c!469714 ((_ is Star!8819) (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))))))

(declare-fun bm!187550 () Bool)

(declare-fun c!469713 () Bool)

(assert (=> bm!187550 (= call!187556 (validRegex!3592 (ite c!469714 (reg!9148 (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))) (ite c!469713 (regTwo!18151 (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))) (regTwo!18150 (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))))))))))))

(declare-fun b!2889033 () Bool)

(declare-fun res!1196095 () Bool)

(assert (=> b!2889033 (=> (not res!1196095) (not e!1826415))))

(assert (=> b!2889033 (= res!1196095 call!187555)))

(assert (=> b!2889033 (= e!1826411 e!1826415)))

(declare-fun bm!187551 () Bool)

(assert (=> bm!187551 (= call!187555 (validRegex!3592 (ite c!469713 (regOne!18151 (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))) (regOne!18150 (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))))))))

(declare-fun b!2889034 () Bool)

(assert (=> b!2889034 (= e!1826413 e!1826411)))

(assert (=> b!2889034 (= c!469713 ((_ is Union!8819) (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))))))

(declare-fun d!834303 () Bool)

(declare-fun res!1196097 () Bool)

(assert (=> d!834303 (=> res!1196097 e!1826409)))

(assert (=> d!834303 (= res!1196097 ((_ is ElementMatch!8819) (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))))))

(assert (=> d!834303 (= (validRegex!3592 (ite c!469607 (reg!9148 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (ite c!469606 (regTwo!18151 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079)))) (regTwo!18150 (ite c!469529 (reg!9148 r!23079) (ite c!469528 (regTwo!18151 r!23079) (regTwo!18150 r!23079))))))) e!1826409)))

(declare-fun bm!187549 () Bool)

(assert (=> bm!187549 (= call!187554 call!187556)))

(assert (= (and d!834303 (not res!1196097)) b!2889032))

(assert (= (and b!2889032 c!469714) b!2889028))

(assert (= (and b!2889032 (not c!469714)) b!2889034))

(assert (= (and b!2889028 res!1196098) b!2889027))

(assert (= (and b!2889034 c!469713) b!2889033))

(assert (= (and b!2889034 (not c!469713)) b!2889031))

(assert (= (and b!2889033 res!1196095) b!2889030))

(assert (= (and b!2889031 (not res!1196096)) b!2889026))

(assert (= (and b!2889026 res!1196099) b!2889029))

(assert (= (or b!2889030 b!2889029) bm!187549))

(assert (= (or b!2889033 b!2889026) bm!187551))

(assert (= (or b!2889027 bm!187549) bm!187550))

(declare-fun m!3302057 () Bool)

(assert (=> b!2889028 m!3302057))

(declare-fun m!3302059 () Bool)

(assert (=> bm!187550 m!3302059))

(declare-fun m!3302061 () Bool)

(assert (=> bm!187551 m!3302061))

(assert (=> bm!187491 d!834303))

(declare-fun b!2889036 () Bool)

(declare-fun e!1826419 () Bool)

(assert (=> b!2889036 (= e!1826419 (nullable!2720 (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818))))))))

(declare-fun b!2889037 () Bool)

(declare-fun e!1826422 () Bool)

(assert (=> b!2889037 (= e!1826422 (= (head!6380 (tail!4605 (tail!4605 (get!10437 lt!1020818)))) (c!469484 (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818)))))))))

(declare-fun b!2889038 () Bool)

(declare-fun e!1826417 () Bool)

(declare-fun e!1826420 () Bool)

(assert (=> b!2889038 (= e!1826417 e!1826420)))

(declare-fun res!1196100 () Bool)

(assert (=> b!2889038 (=> res!1196100 e!1826420)))

(declare-fun call!187557 () Bool)

(assert (=> b!2889038 (= res!1196100 call!187557)))

(declare-fun b!2889039 () Bool)

(declare-fun e!1826421 () Bool)

(assert (=> b!2889039 (= e!1826421 e!1826417)))

(declare-fun res!1196103 () Bool)

(assert (=> b!2889039 (=> (not res!1196103) (not e!1826417))))

(declare-fun lt!1020890 () Bool)

(assert (=> b!2889039 (= res!1196103 (not lt!1020890))))

(declare-fun b!2889040 () Bool)

(declare-fun res!1196101 () Bool)

(assert (=> b!2889040 (=> res!1196101 e!1826421)))

(assert (=> b!2889040 (= res!1196101 e!1826422)))

(declare-fun res!1196106 () Bool)

(assert (=> b!2889040 (=> (not res!1196106) (not e!1826422))))

(assert (=> b!2889040 (= res!1196106 lt!1020890)))

(declare-fun bm!187552 () Bool)

(assert (=> bm!187552 (= call!187557 (isEmpty!18792 (tail!4605 (tail!4605 (get!10437 lt!1020818)))))))

(declare-fun b!2889041 () Bool)

(declare-fun res!1196104 () Bool)

(assert (=> b!2889041 (=> (not res!1196104) (not e!1826422))))

(assert (=> b!2889041 (= res!1196104 (isEmpty!18792 (tail!4605 (tail!4605 (tail!4605 (get!10437 lt!1020818))))))))

(declare-fun d!834305 () Bool)

(declare-fun e!1826418 () Bool)

(assert (=> d!834305 e!1826418))

(declare-fun c!469716 () Bool)

(assert (=> d!834305 (= c!469716 ((_ is EmptyExpr!8819) (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818))))))))

(assert (=> d!834305 (= lt!1020890 e!1826419)))

(declare-fun c!469717 () Bool)

(assert (=> d!834305 (= c!469717 (isEmpty!18792 (tail!4605 (tail!4605 (get!10437 lt!1020818)))))))

(assert (=> d!834305 (validRegex!3592 (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818)))))))

(assert (=> d!834305 (= (matchR!3795 (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818)))) (tail!4605 (tail!4605 (get!10437 lt!1020818)))) lt!1020890)))

(declare-fun b!2889035 () Bool)

(assert (=> b!2889035 (= e!1826419 (matchR!3795 (derivativeStep!2351 (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818)))) (head!6380 (tail!4605 (tail!4605 (get!10437 lt!1020818))))) (tail!4605 (tail!4605 (tail!4605 (get!10437 lt!1020818))))))))

(declare-fun b!2889042 () Bool)

(declare-fun res!1196105 () Bool)

(assert (=> b!2889042 (=> (not res!1196105) (not e!1826422))))

(assert (=> b!2889042 (= res!1196105 (not call!187557))))

(declare-fun b!2889043 () Bool)

(assert (=> b!2889043 (= e!1826418 (= lt!1020890 call!187557))))

(declare-fun b!2889044 () Bool)

(declare-fun res!1196102 () Bool)

(assert (=> b!2889044 (=> res!1196102 e!1826421)))

(assert (=> b!2889044 (= res!1196102 (not ((_ is ElementMatch!8819) (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818)))))))))

(declare-fun e!1826416 () Bool)

(assert (=> b!2889044 (= e!1826416 e!1826421)))

(declare-fun b!2889045 () Bool)

(assert (=> b!2889045 (= e!1826420 (not (= (head!6380 (tail!4605 (tail!4605 (get!10437 lt!1020818)))) (c!469484 (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818))))))))))

(declare-fun b!2889046 () Bool)

(assert (=> b!2889046 (= e!1826416 (not lt!1020890))))

(declare-fun b!2889047 () Bool)

(assert (=> b!2889047 (= e!1826418 e!1826416)))

(declare-fun c!469715 () Bool)

(assert (=> b!2889047 (= c!469715 ((_ is EmptyLang!8819) (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818))))))))

(declare-fun b!2889048 () Bool)

(declare-fun res!1196107 () Bool)

(assert (=> b!2889048 (=> res!1196107 e!1826420)))

(assert (=> b!2889048 (= res!1196107 (not (isEmpty!18792 (tail!4605 (tail!4605 (tail!4605 (get!10437 lt!1020818)))))))))

(assert (= (and d!834305 c!469717) b!2889036))

(assert (= (and d!834305 (not c!469717)) b!2889035))

(assert (= (and d!834305 c!469716) b!2889043))

(assert (= (and d!834305 (not c!469716)) b!2889047))

(assert (= (and b!2889047 c!469715) b!2889046))

(assert (= (and b!2889047 (not c!469715)) b!2889044))

(assert (= (and b!2889044 (not res!1196102)) b!2889040))

(assert (= (and b!2889040 res!1196106) b!2889042))

(assert (= (and b!2889042 res!1196105) b!2889041))

(assert (= (and b!2889041 res!1196104) b!2889037))

(assert (= (and b!2889040 (not res!1196101)) b!2889039))

(assert (= (and b!2889039 res!1196103) b!2889038))

(assert (= (and b!2889038 (not res!1196100)) b!2889048))

(assert (= (and b!2889048 (not res!1196107)) b!2889045))

(assert (= (or b!2889043 b!2889042 b!2889038) bm!187552))

(assert (=> b!2889048 m!3301815))

(declare-fun m!3302063 () Bool)

(assert (=> b!2889048 m!3302063))

(assert (=> b!2889048 m!3302063))

(declare-fun m!3302065 () Bool)

(assert (=> b!2889048 m!3302065))

(assert (=> d!834305 m!3301815))

(assert (=> d!834305 m!3301817))

(assert (=> d!834305 m!3301823))

(declare-fun m!3302067 () Bool)

(assert (=> d!834305 m!3302067))

(assert (=> b!2889035 m!3301815))

(declare-fun m!3302069 () Bool)

(assert (=> b!2889035 m!3302069))

(assert (=> b!2889035 m!3301823))

(assert (=> b!2889035 m!3302069))

(declare-fun m!3302071 () Bool)

(assert (=> b!2889035 m!3302071))

(assert (=> b!2889035 m!3301815))

(assert (=> b!2889035 m!3302063))

(assert (=> b!2889035 m!3302071))

(assert (=> b!2889035 m!3302063))

(declare-fun m!3302073 () Bool)

(assert (=> b!2889035 m!3302073))

(assert (=> b!2889036 m!3301823))

(declare-fun m!3302075 () Bool)

(assert (=> b!2889036 m!3302075))

(assert (=> bm!187552 m!3301815))

(assert (=> bm!187552 m!3301817))

(assert (=> b!2889041 m!3301815))

(assert (=> b!2889041 m!3302063))

(assert (=> b!2889041 m!3302063))

(assert (=> b!2889041 m!3302065))

(assert (=> b!2889037 m!3301815))

(assert (=> b!2889037 m!3302069))

(assert (=> b!2889045 m!3301815))

(assert (=> b!2889045 m!3302069))

(assert (=> b!2888454 d!834305))

(declare-fun b!2889049 () Bool)

(declare-fun e!1826423 () Regex!8819)

(declare-fun call!187559 () Regex!8819)

(declare-fun call!187558 () Regex!8819)

(assert (=> b!2889049 (= e!1826423 (Union!8819 call!187559 call!187558))))

(declare-fun b!2889050 () Bool)

(declare-fun c!469722 () Bool)

(assert (=> b!2889050 (= c!469722 (nullable!2720 (regOne!18150 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))))))

(declare-fun e!1826427 () Regex!8819)

(declare-fun e!1826424 () Regex!8819)

(assert (=> b!2889050 (= e!1826427 e!1826424)))

(declare-fun call!187561 () Regex!8819)

(declare-fun b!2889051 () Bool)

(assert (=> b!2889051 (= e!1826424 (Union!8819 (Concat!14140 call!187561 (regTwo!18150 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))) EmptyLang!8819))))

(declare-fun call!187560 () Regex!8819)

(declare-fun b!2889052 () Bool)

(assert (=> b!2889052 (= e!1826427 (Concat!14140 call!187560 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(declare-fun b!2889053 () Bool)

(declare-fun e!1826426 () Regex!8819)

(declare-fun e!1826425 () Regex!8819)

(assert (=> b!2889053 (= e!1826426 e!1826425)))

(declare-fun c!469718 () Bool)

(assert (=> b!2889053 (= c!469718 ((_ is ElementMatch!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(declare-fun d!834307 () Bool)

(declare-fun lt!1020891 () Regex!8819)

(assert (=> d!834307 (validRegex!3592 lt!1020891)))

(assert (=> d!834307 (= lt!1020891 e!1826426)))

(declare-fun c!469721 () Bool)

(assert (=> d!834307 (= c!469721 (or ((_ is EmptyExpr!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))) ((_ is EmptyLang!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))))))

(assert (=> d!834307 (validRegex!3592 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))))

(assert (=> d!834307 (= (derivativeStep!2351 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))) (head!6380 (tail!4605 (get!10437 lt!1020818)))) lt!1020891)))

(declare-fun b!2889054 () Bool)

(declare-fun c!469719 () Bool)

(assert (=> b!2889054 (= c!469719 ((_ is Union!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(assert (=> b!2889054 (= e!1826425 e!1826423)))

(declare-fun bm!187553 () Bool)

(declare-fun c!469720 () Bool)

(assert (=> bm!187553 (= call!187559 (derivativeStep!2351 (ite c!469719 (regOne!18151 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))) (ite c!469720 (reg!9148 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))) (regOne!18150 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))) (head!6380 (tail!4605 (get!10437 lt!1020818)))))))

(declare-fun bm!187554 () Bool)

(assert (=> bm!187554 (= call!187561 call!187560)))

(declare-fun bm!187555 () Bool)

(assert (=> bm!187555 (= call!187558 (derivativeStep!2351 (ite c!469719 (regTwo!18151 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))) (regTwo!18150 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))) (head!6380 (tail!4605 (get!10437 lt!1020818)))))))

(declare-fun b!2889055 () Bool)

(assert (=> b!2889055 (= e!1826423 e!1826427)))

(assert (=> b!2889055 (= c!469720 ((_ is Star!8819) (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818)))))))

(declare-fun b!2889056 () Bool)

(assert (=> b!2889056 (= e!1826424 (Union!8819 (Concat!14140 call!187561 (regTwo!18150 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))) call!187558))))

(declare-fun b!2889057 () Bool)

(assert (=> b!2889057 (= e!1826425 (ite (= (head!6380 (tail!4605 (get!10437 lt!1020818))) (c!469484 (derivativeStep!2351 r!23079 (head!6380 (get!10437 lt!1020818))))) EmptyExpr!8819 EmptyLang!8819))))

(declare-fun b!2889058 () Bool)

(assert (=> b!2889058 (= e!1826426 EmptyLang!8819)))

(declare-fun bm!187556 () Bool)

(assert (=> bm!187556 (= call!187560 call!187559)))

(assert (= (and d!834307 c!469721) b!2889058))

(assert (= (and d!834307 (not c!469721)) b!2889053))

(assert (= (and b!2889053 c!469718) b!2889057))

(assert (= (and b!2889053 (not c!469718)) b!2889054))

(assert (= (and b!2889054 c!469719) b!2889049))

(assert (= (and b!2889054 (not c!469719)) b!2889055))

(assert (= (and b!2889055 c!469720) b!2889052))

(assert (= (and b!2889055 (not c!469720)) b!2889050))

(assert (= (and b!2889050 c!469722) b!2889056))

(assert (= (and b!2889050 (not c!469722)) b!2889051))

(assert (= (or b!2889056 b!2889051) bm!187554))

(assert (= (or b!2889052 bm!187554) bm!187556))

(assert (= (or b!2889049 bm!187556) bm!187553))

(assert (= (or b!2889049 b!2889056) bm!187555))

(declare-fun m!3302077 () Bool)

(assert (=> b!2889050 m!3302077))

(declare-fun m!3302079 () Bool)

(assert (=> d!834307 m!3302079))

(assert (=> d!834307 m!3301763))

(assert (=> d!834307 m!3301819))

(assert (=> bm!187553 m!3301821))

(declare-fun m!3302081 () Bool)

(assert (=> bm!187553 m!3302081))

(assert (=> bm!187555 m!3301821))

(declare-fun m!3302083 () Bool)

(assert (=> bm!187555 m!3302083))

(assert (=> b!2888454 d!834307))

(assert (=> b!2888454 d!834263))

(assert (=> b!2888454 d!834259))

(assert (=> b!2888456 d!834263))

(declare-fun d!834309 () Bool)

(assert (=> d!834309 (= (nullable!2720 (regOne!18150 r!23079)) (nullableFct!837 (regOne!18150 r!23079)))))

(declare-fun bs!523856 () Bool)

(assert (= bs!523856 d!834309))

(declare-fun m!3302085 () Bool)

(assert (=> bs!523856 m!3302085))

(assert (=> b!2888489 d!834309))

(declare-fun b!2889060 () Bool)

(declare-fun e!1826429 () List!34620)

(assert (=> b!2889060 (= e!1826429 (Cons!34496 (h!39916 (v!34617 lt!1020857)) (++!8219 (t!233663 (v!34617 lt!1020857)) (v!34617 lt!1020858))))))

(declare-fun d!834311 () Bool)

(declare-fun e!1826428 () Bool)

(assert (=> d!834311 e!1826428))

(declare-fun res!1196108 () Bool)

(assert (=> d!834311 (=> (not res!1196108) (not e!1826428))))

(declare-fun lt!1020892 () List!34620)

(assert (=> d!834311 (= res!1196108 (= (content!4727 lt!1020892) ((_ map or) (content!4727 (v!34617 lt!1020857)) (content!4727 (v!34617 lt!1020858)))))))

(assert (=> d!834311 (= lt!1020892 e!1826429)))

(declare-fun c!469723 () Bool)

(assert (=> d!834311 (= c!469723 ((_ is Nil!34496) (v!34617 lt!1020857)))))

(assert (=> d!834311 (= (++!8219 (v!34617 lt!1020857) (v!34617 lt!1020858)) lt!1020892)))

(declare-fun b!2889062 () Bool)

(assert (=> b!2889062 (= e!1826428 (or (not (= (v!34617 lt!1020858) Nil!34496)) (= lt!1020892 (v!34617 lt!1020857))))))

(declare-fun b!2889059 () Bool)

(assert (=> b!2889059 (= e!1826429 (v!34617 lt!1020858))))

(declare-fun b!2889061 () Bool)

(declare-fun res!1196109 () Bool)

(assert (=> b!2889061 (=> (not res!1196109) (not e!1826428))))

(assert (=> b!2889061 (= res!1196109 (= (size!26346 lt!1020892) (+ (size!26346 (v!34617 lt!1020857)) (size!26346 (v!34617 lt!1020858)))))))

(assert (= (and d!834311 c!469723) b!2889059))

(assert (= (and d!834311 (not c!469723)) b!2889060))

(assert (= (and d!834311 res!1196108) b!2889061))

(assert (= (and b!2889061 res!1196109) b!2889062))

(declare-fun m!3302087 () Bool)

(assert (=> b!2889060 m!3302087))

(declare-fun m!3302089 () Bool)

(assert (=> d!834311 m!3302089))

(declare-fun m!3302091 () Bool)

(assert (=> d!834311 m!3302091))

(declare-fun m!3302093 () Bool)

(assert (=> d!834311 m!3302093))

(declare-fun m!3302095 () Bool)

(assert (=> b!2889061 m!3302095))

(declare-fun m!3302097 () Bool)

(assert (=> b!2889061 m!3302097))

(declare-fun m!3302099 () Bool)

(assert (=> b!2889061 m!3302099))

(assert (=> b!2888564 d!834311))

(declare-fun b!2889064 () Bool)

(declare-fun e!1826430 () Bool)

(declare-fun tp!926873 () Bool)

(declare-fun tp!926874 () Bool)

(assert (=> b!2889064 (= e!1826430 (and tp!926873 tp!926874))))

(declare-fun b!2889063 () Bool)

(assert (=> b!2889063 (= e!1826430 tp_is_empty!15225)))

(assert (=> b!2888622 (= tp!926678 e!1826430)))

(declare-fun b!2889066 () Bool)

(declare-fun tp!926870 () Bool)

(declare-fun tp!926871 () Bool)

(assert (=> b!2889066 (= e!1826430 (and tp!926870 tp!926871))))

(declare-fun b!2889065 () Bool)

(declare-fun tp!926872 () Bool)

(assert (=> b!2889065 (= e!1826430 tp!926872)))

(assert (= (and b!2888622 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18151 (reg!9148 r!23079))))) b!2889063))

(assert (= (and b!2888622 ((_ is Concat!14140) (regOne!18150 (regTwo!18151 (reg!9148 r!23079))))) b!2889064))

(assert (= (and b!2888622 ((_ is Star!8819) (regOne!18150 (regTwo!18151 (reg!9148 r!23079))))) b!2889065))

(assert (= (and b!2888622 ((_ is Union!8819) (regOne!18150 (regTwo!18151 (reg!9148 r!23079))))) b!2889066))

(declare-fun b!2889068 () Bool)

(declare-fun e!1826431 () Bool)

(declare-fun tp!926878 () Bool)

(declare-fun tp!926879 () Bool)

(assert (=> b!2889068 (= e!1826431 (and tp!926878 tp!926879))))

(declare-fun b!2889067 () Bool)

(assert (=> b!2889067 (= e!1826431 tp_is_empty!15225)))

(assert (=> b!2888622 (= tp!926679 e!1826431)))

(declare-fun b!2889070 () Bool)

(declare-fun tp!926875 () Bool)

(declare-fun tp!926876 () Bool)

(assert (=> b!2889070 (= e!1826431 (and tp!926875 tp!926876))))

(declare-fun b!2889069 () Bool)

(declare-fun tp!926877 () Bool)

(assert (=> b!2889069 (= e!1826431 tp!926877)))

(assert (= (and b!2888622 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18151 (reg!9148 r!23079))))) b!2889067))

(assert (= (and b!2888622 ((_ is Concat!14140) (regTwo!18150 (regTwo!18151 (reg!9148 r!23079))))) b!2889068))

(assert (= (and b!2888622 ((_ is Star!8819) (regTwo!18150 (regTwo!18151 (reg!9148 r!23079))))) b!2889069))

(assert (= (and b!2888622 ((_ is Union!8819) (regTwo!18150 (regTwo!18151 (reg!9148 r!23079))))) b!2889070))

(declare-fun b!2889072 () Bool)

(declare-fun e!1826432 () Bool)

(declare-fun tp!926883 () Bool)

(declare-fun tp!926884 () Bool)

(assert (=> b!2889072 (= e!1826432 (and tp!926883 tp!926884))))

(declare-fun b!2889071 () Bool)

(assert (=> b!2889071 (= e!1826432 tp_is_empty!15225)))

(assert (=> b!2888631 (= tp!926687 e!1826432)))

(declare-fun b!2889074 () Bool)

(declare-fun tp!926880 () Bool)

(declare-fun tp!926881 () Bool)

(assert (=> b!2889074 (= e!1826432 (and tp!926880 tp!926881))))

(declare-fun b!2889073 () Bool)

(declare-fun tp!926882 () Bool)

(assert (=> b!2889073 (= e!1826432 tp!926882)))

(assert (= (and b!2888631 ((_ is ElementMatch!8819) (reg!9148 (regOne!18151 (regTwo!18150 r!23079))))) b!2889071))

(assert (= (and b!2888631 ((_ is Concat!14140) (reg!9148 (regOne!18151 (regTwo!18150 r!23079))))) b!2889072))

(assert (= (and b!2888631 ((_ is Star!8819) (reg!9148 (regOne!18151 (regTwo!18150 r!23079))))) b!2889073))

(assert (= (and b!2888631 ((_ is Union!8819) (reg!9148 (regOne!18151 (regTwo!18150 r!23079))))) b!2889074))

(declare-fun b!2889076 () Bool)

(declare-fun e!1826433 () Bool)

(declare-fun tp!926888 () Bool)

(declare-fun tp!926889 () Bool)

(assert (=> b!2889076 (= e!1826433 (and tp!926888 tp!926889))))

(declare-fun b!2889075 () Bool)

(assert (=> b!2889075 (= e!1826433 tp_is_empty!15225)))

(assert (=> b!2888640 (= tp!926690 e!1826433)))

(declare-fun b!2889078 () Bool)

(declare-fun tp!926885 () Bool)

(declare-fun tp!926886 () Bool)

(assert (=> b!2889078 (= e!1826433 (and tp!926885 tp!926886))))

(declare-fun b!2889077 () Bool)

(declare-fun tp!926887 () Bool)

(assert (=> b!2889077 (= e!1826433 tp!926887)))

(assert (= (and b!2888640 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889075))

(assert (= (and b!2888640 ((_ is Concat!14140) (regOne!18151 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889076))

(assert (= (and b!2888640 ((_ is Star!8819) (regOne!18151 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889077))

(assert (= (and b!2888640 ((_ is Union!8819) (regOne!18151 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889078))

(declare-fun b!2889080 () Bool)

(declare-fun e!1826434 () Bool)

(declare-fun tp!926893 () Bool)

(declare-fun tp!926894 () Bool)

(assert (=> b!2889080 (= e!1826434 (and tp!926893 tp!926894))))

(declare-fun b!2889079 () Bool)

(assert (=> b!2889079 (= e!1826434 tp_is_empty!15225)))

(assert (=> b!2888640 (= tp!926691 e!1826434)))

(declare-fun b!2889082 () Bool)

(declare-fun tp!926890 () Bool)

(declare-fun tp!926891 () Bool)

(assert (=> b!2889082 (= e!1826434 (and tp!926890 tp!926891))))

(declare-fun b!2889081 () Bool)

(declare-fun tp!926892 () Bool)

(assert (=> b!2889081 (= e!1826434 tp!926892)))

(assert (= (and b!2888640 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889079))

(assert (= (and b!2888640 ((_ is Concat!14140) (regTwo!18151 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889080))

(assert (= (and b!2888640 ((_ is Star!8819) (regTwo!18151 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889081))

(assert (= (and b!2888640 ((_ is Union!8819) (regTwo!18151 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889082))

(declare-fun b!2889084 () Bool)

(declare-fun e!1826435 () Bool)

(declare-fun tp!926898 () Bool)

(declare-fun tp!926899 () Bool)

(assert (=> b!2889084 (= e!1826435 (and tp!926898 tp!926899))))

(declare-fun b!2889083 () Bool)

(assert (=> b!2889083 (= e!1826435 tp_is_empty!15225)))

(assert (=> b!2888691 (= tp!926737 e!1826435)))

(declare-fun b!2889086 () Bool)

(declare-fun tp!926895 () Bool)

(declare-fun tp!926896 () Bool)

(assert (=> b!2889086 (= e!1826435 (and tp!926895 tp!926896))))

(declare-fun b!2889085 () Bool)

(declare-fun tp!926897 () Bool)

(assert (=> b!2889085 (= e!1826435 tp!926897)))

(assert (= (and b!2888691 ((_ is ElementMatch!8819) (reg!9148 (regOne!18150 (regOne!18150 r!23079))))) b!2889083))

(assert (= (and b!2888691 ((_ is Concat!14140) (reg!9148 (regOne!18150 (regOne!18150 r!23079))))) b!2889084))

(assert (= (and b!2888691 ((_ is Star!8819) (reg!9148 (regOne!18150 (regOne!18150 r!23079))))) b!2889085))

(assert (= (and b!2888691 ((_ is Union!8819) (reg!9148 (regOne!18150 (regOne!18150 r!23079))))) b!2889086))

(declare-fun b!2889088 () Bool)

(declare-fun e!1826436 () Bool)

(declare-fun tp!926903 () Bool)

(declare-fun tp!926904 () Bool)

(assert (=> b!2889088 (= e!1826436 (and tp!926903 tp!926904))))

(declare-fun b!2889087 () Bool)

(assert (=> b!2889087 (= e!1826436 tp_is_empty!15225)))

(assert (=> b!2888652 (= tp!926705 e!1826436)))

(declare-fun b!2889090 () Bool)

(declare-fun tp!926900 () Bool)

(declare-fun tp!926901 () Bool)

(assert (=> b!2889090 (= e!1826436 (and tp!926900 tp!926901))))

(declare-fun b!2889089 () Bool)

(declare-fun tp!926902 () Bool)

(assert (=> b!2889089 (= e!1826436 tp!926902)))

(assert (= (and b!2888652 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889087))

(assert (= (and b!2888652 ((_ is Concat!14140) (regOne!18151 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889088))

(assert (= (and b!2888652 ((_ is Star!8819) (regOne!18151 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889089))

(assert (= (and b!2888652 ((_ is Union!8819) (regOne!18151 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889090))

(declare-fun b!2889092 () Bool)

(declare-fun e!1826437 () Bool)

(declare-fun tp!926908 () Bool)

(declare-fun tp!926909 () Bool)

(assert (=> b!2889092 (= e!1826437 (and tp!926908 tp!926909))))

(declare-fun b!2889091 () Bool)

(assert (=> b!2889091 (= e!1826437 tp_is_empty!15225)))

(assert (=> b!2888652 (= tp!926706 e!1826437)))

(declare-fun b!2889094 () Bool)

(declare-fun tp!926905 () Bool)

(declare-fun tp!926906 () Bool)

(assert (=> b!2889094 (= e!1826437 (and tp!926905 tp!926906))))

(declare-fun b!2889093 () Bool)

(declare-fun tp!926907 () Bool)

(assert (=> b!2889093 (= e!1826437 tp!926907)))

(assert (= (and b!2888652 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889091))

(assert (= (and b!2888652 ((_ is Concat!14140) (regTwo!18151 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889092))

(assert (= (and b!2888652 ((_ is Star!8819) (regTwo!18151 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889093))

(assert (= (and b!2888652 ((_ is Union!8819) (regTwo!18151 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889094))

(declare-fun b!2889096 () Bool)

(declare-fun e!1826438 () Bool)

(declare-fun tp!926913 () Bool)

(declare-fun tp!926914 () Bool)

(assert (=> b!2889096 (= e!1826438 (and tp!926913 tp!926914))))

(declare-fun b!2889095 () Bool)

(assert (=> b!2889095 (= e!1826438 tp_is_empty!15225)))

(assert (=> b!2888615 (= tp!926667 e!1826438)))

(declare-fun b!2889098 () Bool)

(declare-fun tp!926910 () Bool)

(declare-fun tp!926911 () Bool)

(assert (=> b!2889098 (= e!1826438 (and tp!926910 tp!926911))))

(declare-fun b!2889097 () Bool)

(declare-fun tp!926912 () Bool)

(assert (=> b!2889097 (= e!1826438 tp!926912)))

(assert (= (and b!2888615 ((_ is ElementMatch!8819) (reg!9148 (reg!9148 (regTwo!18150 r!23079))))) b!2889095))

(assert (= (and b!2888615 ((_ is Concat!14140) (reg!9148 (reg!9148 (regTwo!18150 r!23079))))) b!2889096))

(assert (= (and b!2888615 ((_ is Star!8819) (reg!9148 (reg!9148 (regTwo!18150 r!23079))))) b!2889097))

(assert (= (and b!2888615 ((_ is Union!8819) (reg!9148 (reg!9148 (regTwo!18150 r!23079))))) b!2889098))

(declare-fun b!2889100 () Bool)

(declare-fun e!1826439 () Bool)

(declare-fun tp!926918 () Bool)

(declare-fun tp!926919 () Bool)

(assert (=> b!2889100 (= e!1826439 (and tp!926918 tp!926919))))

(declare-fun b!2889099 () Bool)

(assert (=> b!2889099 (= e!1826439 tp_is_empty!15225)))

(assert (=> b!2888659 (= tp!926717 e!1826439)))

(declare-fun b!2889102 () Bool)

(declare-fun tp!926915 () Bool)

(declare-fun tp!926916 () Bool)

(assert (=> b!2889102 (= e!1826439 (and tp!926915 tp!926916))))

(declare-fun b!2889101 () Bool)

(declare-fun tp!926917 () Bool)

(assert (=> b!2889101 (= e!1826439 tp!926917)))

(assert (= (and b!2888659 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889099))

(assert (= (and b!2888659 ((_ is Concat!14140) (reg!9148 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889100))

(assert (= (and b!2888659 ((_ is Star!8819) (reg!9148 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889101))

(assert (= (and b!2888659 ((_ is Union!8819) (reg!9148 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889102))

(declare-fun b!2889104 () Bool)

(declare-fun e!1826440 () Bool)

(declare-fun tp!926923 () Bool)

(declare-fun tp!926924 () Bool)

(assert (=> b!2889104 (= e!1826440 (and tp!926923 tp!926924))))

(declare-fun b!2889103 () Bool)

(assert (=> b!2889103 (= e!1826440 tp_is_empty!15225)))

(assert (=> b!2888624 (= tp!926675 e!1826440)))

(declare-fun b!2889106 () Bool)

(declare-fun tp!926920 () Bool)

(declare-fun tp!926921 () Bool)

(assert (=> b!2889106 (= e!1826440 (and tp!926920 tp!926921))))

(declare-fun b!2889105 () Bool)

(declare-fun tp!926922 () Bool)

(assert (=> b!2889105 (= e!1826440 tp!926922)))

(assert (= (and b!2888624 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18151 (reg!9148 r!23079))))) b!2889103))

(assert (= (and b!2888624 ((_ is Concat!14140) (regOne!18151 (regTwo!18151 (reg!9148 r!23079))))) b!2889104))

(assert (= (and b!2888624 ((_ is Star!8819) (regOne!18151 (regTwo!18151 (reg!9148 r!23079))))) b!2889105))

(assert (= (and b!2888624 ((_ is Union!8819) (regOne!18151 (regTwo!18151 (reg!9148 r!23079))))) b!2889106))

(declare-fun b!2889108 () Bool)

(declare-fun e!1826441 () Bool)

(declare-fun tp!926928 () Bool)

(declare-fun tp!926929 () Bool)

(assert (=> b!2889108 (= e!1826441 (and tp!926928 tp!926929))))

(declare-fun b!2889107 () Bool)

(assert (=> b!2889107 (= e!1826441 tp_is_empty!15225)))

(assert (=> b!2888624 (= tp!926676 e!1826441)))

(declare-fun b!2889110 () Bool)

(declare-fun tp!926925 () Bool)

(declare-fun tp!926926 () Bool)

(assert (=> b!2889110 (= e!1826441 (and tp!926925 tp!926926))))

(declare-fun b!2889109 () Bool)

(declare-fun tp!926927 () Bool)

(assert (=> b!2889109 (= e!1826441 tp!926927)))

(assert (= (and b!2888624 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18151 (reg!9148 r!23079))))) b!2889107))

(assert (= (and b!2888624 ((_ is Concat!14140) (regTwo!18151 (regTwo!18151 (reg!9148 r!23079))))) b!2889108))

(assert (= (and b!2888624 ((_ is Star!8819) (regTwo!18151 (regTwo!18151 (reg!9148 r!23079))))) b!2889109))

(assert (= (and b!2888624 ((_ is Union!8819) (regTwo!18151 (regTwo!18151 (reg!9148 r!23079))))) b!2889110))

(declare-fun b!2889112 () Bool)

(declare-fun e!1826442 () Bool)

(declare-fun tp!926933 () Bool)

(declare-fun tp!926934 () Bool)

(assert (=> b!2889112 (= e!1826442 (and tp!926933 tp!926934))))

(declare-fun b!2889111 () Bool)

(assert (=> b!2889111 (= e!1826442 tp_is_empty!15225)))

(assert (=> b!2888606 (= tp!926658 e!1826442)))

(declare-fun b!2889114 () Bool)

(declare-fun tp!926930 () Bool)

(declare-fun tp!926931 () Bool)

(assert (=> b!2889114 (= e!1826442 (and tp!926930 tp!926931))))

(declare-fun b!2889113 () Bool)

(declare-fun tp!926932 () Bool)

(assert (=> b!2889113 (= e!1826442 tp!926932)))

(assert (= (and b!2888606 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18150 (regTwo!18151 r!23079))))) b!2889111))

(assert (= (and b!2888606 ((_ is Concat!14140) (regOne!18150 (regOne!18150 (regTwo!18151 r!23079))))) b!2889112))

(assert (= (and b!2888606 ((_ is Star!8819) (regOne!18150 (regOne!18150 (regTwo!18151 r!23079))))) b!2889113))

(assert (= (and b!2888606 ((_ is Union!8819) (regOne!18150 (regOne!18150 (regTwo!18151 r!23079))))) b!2889114))

(declare-fun b!2889116 () Bool)

(declare-fun e!1826443 () Bool)

(declare-fun tp!926938 () Bool)

(declare-fun tp!926939 () Bool)

(assert (=> b!2889116 (= e!1826443 (and tp!926938 tp!926939))))

(declare-fun b!2889115 () Bool)

(assert (=> b!2889115 (= e!1826443 tp_is_empty!15225)))

(assert (=> b!2888606 (= tp!926659 e!1826443)))

(declare-fun b!2889118 () Bool)

(declare-fun tp!926935 () Bool)

(declare-fun tp!926936 () Bool)

(assert (=> b!2889118 (= e!1826443 (and tp!926935 tp!926936))))

(declare-fun b!2889117 () Bool)

(declare-fun tp!926937 () Bool)

(assert (=> b!2889117 (= e!1826443 tp!926937)))

(assert (= (and b!2888606 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18150 (regTwo!18151 r!23079))))) b!2889115))

(assert (= (and b!2888606 ((_ is Concat!14140) (regTwo!18150 (regOne!18150 (regTwo!18151 r!23079))))) b!2889116))

(assert (= (and b!2888606 ((_ is Star!8819) (regTwo!18150 (regOne!18150 (regTwo!18151 r!23079))))) b!2889117))

(assert (= (and b!2888606 ((_ is Union!8819) (regTwo!18150 (regOne!18150 (regTwo!18151 r!23079))))) b!2889118))

(declare-fun b!2889120 () Bool)

(declare-fun e!1826444 () Bool)

(declare-fun tp!926943 () Bool)

(declare-fun tp!926944 () Bool)

(assert (=> b!2889120 (= e!1826444 (and tp!926943 tp!926944))))

(declare-fun b!2889119 () Bool)

(assert (=> b!2889119 (= e!1826444 tp_is_empty!15225)))

(assert (=> b!2888608 (= tp!926655 e!1826444)))

(declare-fun b!2889122 () Bool)

(declare-fun tp!926940 () Bool)

(declare-fun tp!926941 () Bool)

(assert (=> b!2889122 (= e!1826444 (and tp!926940 tp!926941))))

(declare-fun b!2889121 () Bool)

(declare-fun tp!926942 () Bool)

(assert (=> b!2889121 (= e!1826444 tp!926942)))

(assert (= (and b!2888608 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18150 (regTwo!18151 r!23079))))) b!2889119))

(assert (= (and b!2888608 ((_ is Concat!14140) (regOne!18151 (regOne!18150 (regTwo!18151 r!23079))))) b!2889120))

(assert (= (and b!2888608 ((_ is Star!8819) (regOne!18151 (regOne!18150 (regTwo!18151 r!23079))))) b!2889121))

(assert (= (and b!2888608 ((_ is Union!8819) (regOne!18151 (regOne!18150 (regTwo!18151 r!23079))))) b!2889122))

(declare-fun b!2889124 () Bool)

(declare-fun e!1826445 () Bool)

(declare-fun tp!926948 () Bool)

(declare-fun tp!926949 () Bool)

(assert (=> b!2889124 (= e!1826445 (and tp!926948 tp!926949))))

(declare-fun b!2889123 () Bool)

(assert (=> b!2889123 (= e!1826445 tp_is_empty!15225)))

(assert (=> b!2888608 (= tp!926656 e!1826445)))

(declare-fun b!2889126 () Bool)

(declare-fun tp!926945 () Bool)

(declare-fun tp!926946 () Bool)

(assert (=> b!2889126 (= e!1826445 (and tp!926945 tp!926946))))

(declare-fun b!2889125 () Bool)

(declare-fun tp!926947 () Bool)

(assert (=> b!2889125 (= e!1826445 tp!926947)))

(assert (= (and b!2888608 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18150 (regTwo!18151 r!23079))))) b!2889123))

(assert (= (and b!2888608 ((_ is Concat!14140) (regTwo!18151 (regOne!18150 (regTwo!18151 r!23079))))) b!2889124))

(assert (= (and b!2888608 ((_ is Star!8819) (regTwo!18151 (regOne!18150 (regTwo!18151 r!23079))))) b!2889125))

(assert (= (and b!2888608 ((_ is Union!8819) (regTwo!18151 (regOne!18150 (regTwo!18151 r!23079))))) b!2889126))

(declare-fun b!2889128 () Bool)

(declare-fun e!1826446 () Bool)

(declare-fun tp!926953 () Bool)

(declare-fun tp!926954 () Bool)

(assert (=> b!2889128 (= e!1826446 (and tp!926953 tp!926954))))

(declare-fun b!2889127 () Bool)

(assert (=> b!2889127 (= e!1826446 tp_is_empty!15225)))

(assert (=> b!2888599 (= tp!926647 e!1826446)))

(declare-fun b!2889130 () Bool)

(declare-fun tp!926950 () Bool)

(declare-fun tp!926951 () Bool)

(assert (=> b!2889130 (= e!1826446 (and tp!926950 tp!926951))))

(declare-fun b!2889129 () Bool)

(declare-fun tp!926952 () Bool)

(assert (=> b!2889129 (= e!1826446 tp!926952)))

(assert (= (and b!2888599 ((_ is ElementMatch!8819) (reg!9148 (regOne!18150 (reg!9148 r!23079))))) b!2889127))

(assert (= (and b!2888599 ((_ is Concat!14140) (reg!9148 (regOne!18150 (reg!9148 r!23079))))) b!2889128))

(assert (= (and b!2888599 ((_ is Star!8819) (reg!9148 (regOne!18150 (reg!9148 r!23079))))) b!2889129))

(assert (= (and b!2888599 ((_ is Union!8819) (reg!9148 (regOne!18150 (reg!9148 r!23079))))) b!2889130))

(declare-fun b!2889132 () Bool)

(declare-fun e!1826447 () Bool)

(declare-fun tp!926958 () Bool)

(declare-fun tp!926959 () Bool)

(assert (=> b!2889132 (= e!1826447 (and tp!926958 tp!926959))))

(declare-fun b!2889131 () Bool)

(assert (=> b!2889131 (= e!1826447 tp_is_empty!15225)))

(assert (=> b!2888590 (= tp!926638 e!1826447)))

(declare-fun b!2889134 () Bool)

(declare-fun tp!926955 () Bool)

(declare-fun tp!926956 () Bool)

(assert (=> b!2889134 (= e!1826447 (and tp!926955 tp!926956))))

(declare-fun b!2889133 () Bool)

(declare-fun tp!926957 () Bool)

(assert (=> b!2889133 (= e!1826447 tp!926957)))

(assert (= (and b!2888590 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18150 (regOne!18151 r!23079))))) b!2889131))

(assert (= (and b!2888590 ((_ is Concat!14140) (regOne!18150 (regTwo!18150 (regOne!18151 r!23079))))) b!2889132))

(assert (= (and b!2888590 ((_ is Star!8819) (regOne!18150 (regTwo!18150 (regOne!18151 r!23079))))) b!2889133))

(assert (= (and b!2888590 ((_ is Union!8819) (regOne!18150 (regTwo!18150 (regOne!18151 r!23079))))) b!2889134))

(declare-fun b!2889136 () Bool)

(declare-fun e!1826448 () Bool)

(declare-fun tp!926963 () Bool)

(declare-fun tp!926964 () Bool)

(assert (=> b!2889136 (= e!1826448 (and tp!926963 tp!926964))))

(declare-fun b!2889135 () Bool)

(assert (=> b!2889135 (= e!1826448 tp_is_empty!15225)))

(assert (=> b!2888590 (= tp!926639 e!1826448)))

(declare-fun b!2889138 () Bool)

(declare-fun tp!926960 () Bool)

(declare-fun tp!926961 () Bool)

(assert (=> b!2889138 (= e!1826448 (and tp!926960 tp!926961))))

(declare-fun b!2889137 () Bool)

(declare-fun tp!926962 () Bool)

(assert (=> b!2889137 (= e!1826448 tp!926962)))

(assert (= (and b!2888590 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18150 (regOne!18151 r!23079))))) b!2889135))

(assert (= (and b!2888590 ((_ is Concat!14140) (regTwo!18150 (regTwo!18150 (regOne!18151 r!23079))))) b!2889136))

(assert (= (and b!2888590 ((_ is Star!8819) (regTwo!18150 (regTwo!18150 (regOne!18151 r!23079))))) b!2889137))

(assert (= (and b!2888590 ((_ is Union!8819) (regTwo!18150 (regTwo!18150 (regOne!18151 r!23079))))) b!2889138))

(declare-fun b!2889140 () Bool)

(declare-fun e!1826449 () Bool)

(declare-fun tp!926968 () Bool)

(declare-fun tp!926969 () Bool)

(assert (=> b!2889140 (= e!1826449 (and tp!926968 tp!926969))))

(declare-fun b!2889139 () Bool)

(assert (=> b!2889139 (= e!1826449 tp_is_empty!15225)))

(assert (=> b!2888667 (= tp!926727 e!1826449)))

(declare-fun b!2889142 () Bool)

(declare-fun tp!926965 () Bool)

(declare-fun tp!926966 () Bool)

(assert (=> b!2889142 (= e!1826449 (and tp!926965 tp!926966))))

(declare-fun b!2889141 () Bool)

(declare-fun tp!926967 () Bool)

(assert (=> b!2889141 (= e!1826449 tp!926967)))

(assert (= (and b!2888667 ((_ is ElementMatch!8819) (reg!9148 (regOne!18151 (regOne!18151 r!23079))))) b!2889139))

(assert (= (and b!2888667 ((_ is Concat!14140) (reg!9148 (regOne!18151 (regOne!18151 r!23079))))) b!2889140))

(assert (= (and b!2888667 ((_ is Star!8819) (reg!9148 (regOne!18151 (regOne!18151 r!23079))))) b!2889141))

(assert (= (and b!2888667 ((_ is Union!8819) (reg!9148 (regOne!18151 (regOne!18151 r!23079))))) b!2889142))

(declare-fun b!2889144 () Bool)

(declare-fun e!1826450 () Bool)

(declare-fun tp!926973 () Bool)

(declare-fun tp!926974 () Bool)

(assert (=> b!2889144 (= e!1826450 (and tp!926973 tp!926974))))

(declare-fun b!2889143 () Bool)

(assert (=> b!2889143 (= e!1826450 tp_is_empty!15225)))

(assert (=> b!2888642 (= tp!926698 e!1826450)))

(declare-fun b!2889146 () Bool)

(declare-fun tp!926970 () Bool)

(declare-fun tp!926971 () Bool)

(assert (=> b!2889146 (= e!1826450 (and tp!926970 tp!926971))))

(declare-fun b!2889145 () Bool)

(declare-fun tp!926972 () Bool)

(assert (=> b!2889145 (= e!1826450 tp!926972)))

(assert (= (and b!2888642 ((_ is ElementMatch!8819) (regOne!18150 (reg!9148 (regOne!18151 r!23079))))) b!2889143))

(assert (= (and b!2888642 ((_ is Concat!14140) (regOne!18150 (reg!9148 (regOne!18151 r!23079))))) b!2889144))

(assert (= (and b!2888642 ((_ is Star!8819) (regOne!18150 (reg!9148 (regOne!18151 r!23079))))) b!2889145))

(assert (= (and b!2888642 ((_ is Union!8819) (regOne!18150 (reg!9148 (regOne!18151 r!23079))))) b!2889146))

(declare-fun b!2889148 () Bool)

(declare-fun e!1826451 () Bool)

(declare-fun tp!926978 () Bool)

(declare-fun tp!926979 () Bool)

(assert (=> b!2889148 (= e!1826451 (and tp!926978 tp!926979))))

(declare-fun b!2889147 () Bool)

(assert (=> b!2889147 (= e!1826451 tp_is_empty!15225)))

(assert (=> b!2888642 (= tp!926699 e!1826451)))

(declare-fun b!2889150 () Bool)

(declare-fun tp!926975 () Bool)

(declare-fun tp!926976 () Bool)

(assert (=> b!2889150 (= e!1826451 (and tp!926975 tp!926976))))

(declare-fun b!2889149 () Bool)

(declare-fun tp!926977 () Bool)

(assert (=> b!2889149 (= e!1826451 tp!926977)))

(assert (= (and b!2888642 ((_ is ElementMatch!8819) (regTwo!18150 (reg!9148 (regOne!18151 r!23079))))) b!2889147))

(assert (= (and b!2888642 ((_ is Concat!14140) (regTwo!18150 (reg!9148 (regOne!18151 r!23079))))) b!2889148))

(assert (= (and b!2888642 ((_ is Star!8819) (regTwo!18150 (reg!9148 (regOne!18151 r!23079))))) b!2889149))

(assert (= (and b!2888642 ((_ is Union!8819) (regTwo!18150 (reg!9148 (regOne!18151 r!23079))))) b!2889150))

(declare-fun b!2889152 () Bool)

(declare-fun e!1826452 () Bool)

(declare-fun tp!926983 () Bool)

(declare-fun tp!926984 () Bool)

(assert (=> b!2889152 (= e!1826452 (and tp!926983 tp!926984))))

(declare-fun b!2889151 () Bool)

(assert (=> b!2889151 (= e!1826452 tp_is_empty!15225)))

(assert (=> b!2888592 (= tp!926635 e!1826452)))

(declare-fun b!2889154 () Bool)

(declare-fun tp!926980 () Bool)

(declare-fun tp!926981 () Bool)

(assert (=> b!2889154 (= e!1826452 (and tp!926980 tp!926981))))

(declare-fun b!2889153 () Bool)

(declare-fun tp!926982 () Bool)

(assert (=> b!2889153 (= e!1826452 tp!926982)))

(assert (= (and b!2888592 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18150 (regOne!18151 r!23079))))) b!2889151))

(assert (= (and b!2888592 ((_ is Concat!14140) (regOne!18151 (regTwo!18150 (regOne!18151 r!23079))))) b!2889152))

(assert (= (and b!2888592 ((_ is Star!8819) (regOne!18151 (regTwo!18150 (regOne!18151 r!23079))))) b!2889153))

(assert (= (and b!2888592 ((_ is Union!8819) (regOne!18151 (regTwo!18150 (regOne!18151 r!23079))))) b!2889154))

(declare-fun b!2889156 () Bool)

(declare-fun e!1826453 () Bool)

(declare-fun tp!926988 () Bool)

(declare-fun tp!926989 () Bool)

(assert (=> b!2889156 (= e!1826453 (and tp!926988 tp!926989))))

(declare-fun b!2889155 () Bool)

(assert (=> b!2889155 (= e!1826453 tp_is_empty!15225)))

(assert (=> b!2888592 (= tp!926636 e!1826453)))

(declare-fun b!2889158 () Bool)

(declare-fun tp!926985 () Bool)

(declare-fun tp!926986 () Bool)

(assert (=> b!2889158 (= e!1826453 (and tp!926985 tp!926986))))

(declare-fun b!2889157 () Bool)

(declare-fun tp!926987 () Bool)

(assert (=> b!2889157 (= e!1826453 tp!926987)))

(assert (= (and b!2888592 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18150 (regOne!18151 r!23079))))) b!2889155))

(assert (= (and b!2888592 ((_ is Concat!14140) (regTwo!18151 (regTwo!18150 (regOne!18151 r!23079))))) b!2889156))

(assert (= (and b!2888592 ((_ is Star!8819) (regTwo!18151 (regTwo!18150 (regOne!18151 r!23079))))) b!2889157))

(assert (= (and b!2888592 ((_ is Union!8819) (regTwo!18151 (regTwo!18150 (regOne!18151 r!23079))))) b!2889158))

(declare-fun b!2889160 () Bool)

(declare-fun e!1826454 () Bool)

(declare-fun tp!926993 () Bool)

(declare-fun tp!926994 () Bool)

(assert (=> b!2889160 (= e!1826454 (and tp!926993 tp!926994))))

(declare-fun b!2889159 () Bool)

(assert (=> b!2889159 (= e!1826454 tp_is_empty!15225)))

(assert (=> b!2888644 (= tp!926695 e!1826454)))

(declare-fun b!2889162 () Bool)

(declare-fun tp!926990 () Bool)

(declare-fun tp!926991 () Bool)

(assert (=> b!2889162 (= e!1826454 (and tp!926990 tp!926991))))

(declare-fun b!2889161 () Bool)

(declare-fun tp!926992 () Bool)

(assert (=> b!2889161 (= e!1826454 tp!926992)))

(assert (= (and b!2888644 ((_ is ElementMatch!8819) (regOne!18151 (reg!9148 (regOne!18151 r!23079))))) b!2889159))

(assert (= (and b!2888644 ((_ is Concat!14140) (regOne!18151 (reg!9148 (regOne!18151 r!23079))))) b!2889160))

(assert (= (and b!2888644 ((_ is Star!8819) (regOne!18151 (reg!9148 (regOne!18151 r!23079))))) b!2889161))

(assert (= (and b!2888644 ((_ is Union!8819) (regOne!18151 (reg!9148 (regOne!18151 r!23079))))) b!2889162))

(declare-fun b!2889164 () Bool)

(declare-fun e!1826455 () Bool)

(declare-fun tp!926998 () Bool)

(declare-fun tp!926999 () Bool)

(assert (=> b!2889164 (= e!1826455 (and tp!926998 tp!926999))))

(declare-fun b!2889163 () Bool)

(assert (=> b!2889163 (= e!1826455 tp_is_empty!15225)))

(assert (=> b!2888644 (= tp!926696 e!1826455)))

(declare-fun b!2889166 () Bool)

(declare-fun tp!926995 () Bool)

(declare-fun tp!926996 () Bool)

(assert (=> b!2889166 (= e!1826455 (and tp!926995 tp!926996))))

(declare-fun b!2889165 () Bool)

(declare-fun tp!926997 () Bool)

(assert (=> b!2889165 (= e!1826455 tp!926997)))

(assert (= (and b!2888644 ((_ is ElementMatch!8819) (regTwo!18151 (reg!9148 (regOne!18151 r!23079))))) b!2889163))

(assert (= (and b!2888644 ((_ is Concat!14140) (regTwo!18151 (reg!9148 (regOne!18151 r!23079))))) b!2889164))

(assert (= (and b!2888644 ((_ is Star!8819) (regTwo!18151 (reg!9148 (regOne!18151 r!23079))))) b!2889165))

(assert (= (and b!2888644 ((_ is Union!8819) (regTwo!18151 (reg!9148 (regOne!18151 r!23079))))) b!2889166))

(declare-fun b!2889168 () Bool)

(declare-fun e!1826456 () Bool)

(declare-fun tp!927003 () Bool)

(declare-fun tp!927004 () Bool)

(assert (=> b!2889168 (= e!1826456 (and tp!927003 tp!927004))))

(declare-fun b!2889167 () Bool)

(assert (=> b!2889167 (= e!1826456 tp_is_empty!15225)))

(assert (=> b!2888574 (= tp!926623 e!1826456)))

(declare-fun b!2889170 () Bool)

(declare-fun tp!927000 () Bool)

(declare-fun tp!927001 () Bool)

(assert (=> b!2889170 (= e!1826456 (and tp!927000 tp!927001))))

(declare-fun b!2889169 () Bool)

(declare-fun tp!927002 () Bool)

(assert (=> b!2889169 (= e!1826456 tp!927002)))

(assert (= (and b!2888574 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18151 (regOne!18150 r!23079))))) b!2889167))

(assert (= (and b!2888574 ((_ is Concat!14140) (regOne!18150 (regOne!18151 (regOne!18150 r!23079))))) b!2889168))

(assert (= (and b!2888574 ((_ is Star!8819) (regOne!18150 (regOne!18151 (regOne!18150 r!23079))))) b!2889169))

(assert (= (and b!2888574 ((_ is Union!8819) (regOne!18150 (regOne!18151 (regOne!18150 r!23079))))) b!2889170))

(declare-fun b!2889172 () Bool)

(declare-fun e!1826457 () Bool)

(declare-fun tp!927008 () Bool)

(declare-fun tp!927009 () Bool)

(assert (=> b!2889172 (= e!1826457 (and tp!927008 tp!927009))))

(declare-fun b!2889171 () Bool)

(assert (=> b!2889171 (= e!1826457 tp_is_empty!15225)))

(assert (=> b!2888574 (= tp!926624 e!1826457)))

(declare-fun b!2889174 () Bool)

(declare-fun tp!927005 () Bool)

(declare-fun tp!927006 () Bool)

(assert (=> b!2889174 (= e!1826457 (and tp!927005 tp!927006))))

(declare-fun b!2889173 () Bool)

(declare-fun tp!927007 () Bool)

(assert (=> b!2889173 (= e!1826457 tp!927007)))

(assert (= (and b!2888574 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18151 (regOne!18150 r!23079))))) b!2889171))

(assert (= (and b!2888574 ((_ is Concat!14140) (regTwo!18150 (regOne!18151 (regOne!18150 r!23079))))) b!2889172))

(assert (= (and b!2888574 ((_ is Star!8819) (regTwo!18150 (regOne!18151 (regOne!18150 r!23079))))) b!2889173))

(assert (= (and b!2888574 ((_ is Union!8819) (regTwo!18150 (regOne!18151 (regOne!18150 r!23079))))) b!2889174))

(declare-fun b!2889176 () Bool)

(declare-fun e!1826458 () Bool)

(declare-fun tp!927013 () Bool)

(declare-fun tp!927014 () Bool)

(assert (=> b!2889176 (= e!1826458 (and tp!927013 tp!927014))))

(declare-fun b!2889175 () Bool)

(assert (=> b!2889175 (= e!1826458 tp_is_empty!15225)))

(assert (=> b!2888695 (= tp!926742 e!1826458)))

(declare-fun b!2889178 () Bool)

(declare-fun tp!927010 () Bool)

(declare-fun tp!927011 () Bool)

(assert (=> b!2889178 (= e!1826458 (and tp!927010 tp!927011))))

(declare-fun b!2889177 () Bool)

(declare-fun tp!927012 () Bool)

(assert (=> b!2889177 (= e!1826458 tp!927012)))

(assert (= (and b!2888695 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18150 (regOne!18150 r!23079))))) b!2889175))

(assert (= (and b!2888695 ((_ is Concat!14140) (reg!9148 (regTwo!18150 (regOne!18150 r!23079))))) b!2889176))

(assert (= (and b!2888695 ((_ is Star!8819) (reg!9148 (regTwo!18150 (regOne!18150 r!23079))))) b!2889177))

(assert (= (and b!2888695 ((_ is Union!8819) (reg!9148 (regTwo!18150 (regOne!18150 r!23079))))) b!2889178))

(declare-fun b!2889180 () Bool)

(declare-fun e!1826459 () Bool)

(declare-fun tp!927018 () Bool)

(declare-fun tp!927019 () Bool)

(assert (=> b!2889180 (= e!1826459 (and tp!927018 tp!927019))))

(declare-fun b!2889179 () Bool)

(assert (=> b!2889179 (= e!1826459 tp_is_empty!15225)))

(assert (=> b!2888626 (= tp!926683 e!1826459)))

(declare-fun b!2889182 () Bool)

(declare-fun tp!927015 () Bool)

(declare-fun tp!927016 () Bool)

(assert (=> b!2889182 (= e!1826459 (and tp!927015 tp!927016))))

(declare-fun b!2889181 () Bool)

(declare-fun tp!927017 () Bool)

(assert (=> b!2889181 (= e!1826459 tp!927017)))

(assert (= (and b!2888626 ((_ is ElementMatch!8819) (regOne!18150 (reg!9148 (regOne!18150 r!23079))))) b!2889179))

(assert (= (and b!2888626 ((_ is Concat!14140) (regOne!18150 (reg!9148 (regOne!18150 r!23079))))) b!2889180))

(assert (= (and b!2888626 ((_ is Star!8819) (regOne!18150 (reg!9148 (regOne!18150 r!23079))))) b!2889181))

(assert (= (and b!2888626 ((_ is Union!8819) (regOne!18150 (reg!9148 (regOne!18150 r!23079))))) b!2889182))

(declare-fun b!2889184 () Bool)

(declare-fun e!1826460 () Bool)

(declare-fun tp!927023 () Bool)

(declare-fun tp!927024 () Bool)

(assert (=> b!2889184 (= e!1826460 (and tp!927023 tp!927024))))

(declare-fun b!2889183 () Bool)

(assert (=> b!2889183 (= e!1826460 tp_is_empty!15225)))

(assert (=> b!2888626 (= tp!926684 e!1826460)))

(declare-fun b!2889186 () Bool)

(declare-fun tp!927020 () Bool)

(declare-fun tp!927021 () Bool)

(assert (=> b!2889186 (= e!1826460 (and tp!927020 tp!927021))))

(declare-fun b!2889185 () Bool)

(declare-fun tp!927022 () Bool)

(assert (=> b!2889185 (= e!1826460 tp!927022)))

(assert (= (and b!2888626 ((_ is ElementMatch!8819) (regTwo!18150 (reg!9148 (regOne!18150 r!23079))))) b!2889183))

(assert (= (and b!2888626 ((_ is Concat!14140) (regTwo!18150 (reg!9148 (regOne!18150 r!23079))))) b!2889184))

(assert (= (and b!2888626 ((_ is Star!8819) (regTwo!18150 (reg!9148 (regOne!18150 r!23079))))) b!2889185))

(assert (= (and b!2888626 ((_ is Union!8819) (regTwo!18150 (reg!9148 (regOne!18150 r!23079))))) b!2889186))

(declare-fun b!2889188 () Bool)

(declare-fun e!1826461 () Bool)

(declare-fun tp!927028 () Bool)

(declare-fun tp!927029 () Bool)

(assert (=> b!2889188 (= e!1826461 (and tp!927028 tp!927029))))

(declare-fun b!2889187 () Bool)

(assert (=> b!2889187 (= e!1826461 tp_is_empty!15225)))

(assert (=> b!2888576 (= tp!926620 e!1826461)))

(declare-fun b!2889190 () Bool)

(declare-fun tp!927025 () Bool)

(declare-fun tp!927026 () Bool)

(assert (=> b!2889190 (= e!1826461 (and tp!927025 tp!927026))))

(declare-fun b!2889189 () Bool)

(declare-fun tp!927027 () Bool)

(assert (=> b!2889189 (= e!1826461 tp!927027)))

(assert (= (and b!2888576 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18151 (regOne!18150 r!23079))))) b!2889187))

(assert (= (and b!2888576 ((_ is Concat!14140) (regOne!18151 (regOne!18151 (regOne!18150 r!23079))))) b!2889188))

(assert (= (and b!2888576 ((_ is Star!8819) (regOne!18151 (regOne!18151 (regOne!18150 r!23079))))) b!2889189))

(assert (= (and b!2888576 ((_ is Union!8819) (regOne!18151 (regOne!18151 (regOne!18150 r!23079))))) b!2889190))

(declare-fun b!2889192 () Bool)

(declare-fun e!1826462 () Bool)

(declare-fun tp!927033 () Bool)

(declare-fun tp!927034 () Bool)

(assert (=> b!2889192 (= e!1826462 (and tp!927033 tp!927034))))

(declare-fun b!2889191 () Bool)

(assert (=> b!2889191 (= e!1826462 tp_is_empty!15225)))

(assert (=> b!2888576 (= tp!926621 e!1826462)))

(declare-fun b!2889194 () Bool)

(declare-fun tp!927030 () Bool)

(declare-fun tp!927031 () Bool)

(assert (=> b!2889194 (= e!1826462 (and tp!927030 tp!927031))))

(declare-fun b!2889193 () Bool)

(declare-fun tp!927032 () Bool)

(assert (=> b!2889193 (= e!1826462 tp!927032)))

(assert (= (and b!2888576 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18151 (regOne!18150 r!23079))))) b!2889191))

(assert (= (and b!2888576 ((_ is Concat!14140) (regTwo!18151 (regOne!18151 (regOne!18150 r!23079))))) b!2889192))

(assert (= (and b!2888576 ((_ is Star!8819) (regTwo!18151 (regOne!18151 (regOne!18150 r!23079))))) b!2889193))

(assert (= (and b!2888576 ((_ is Union!8819) (regTwo!18151 (regOne!18151 (regOne!18150 r!23079))))) b!2889194))

(declare-fun b!2889196 () Bool)

(declare-fun e!1826463 () Bool)

(declare-fun tp!927038 () Bool)

(declare-fun tp!927039 () Bool)

(assert (=> b!2889196 (= e!1826463 (and tp!927038 tp!927039))))

(declare-fun b!2889195 () Bool)

(assert (=> b!2889195 (= e!1826463 tp_is_empty!15225)))

(assert (=> b!2888619 (= tp!926672 e!1826463)))

(declare-fun b!2889198 () Bool)

(declare-fun tp!927035 () Bool)

(declare-fun tp!927036 () Bool)

(assert (=> b!2889198 (= e!1826463 (and tp!927035 tp!927036))))

(declare-fun b!2889197 () Bool)

(declare-fun tp!927037 () Bool)

(assert (=> b!2889197 (= e!1826463 tp!927037)))

(assert (= (and b!2888619 ((_ is ElementMatch!8819) (reg!9148 (regOne!18151 (reg!9148 r!23079))))) b!2889195))

(assert (= (and b!2888619 ((_ is Concat!14140) (reg!9148 (regOne!18151 (reg!9148 r!23079))))) b!2889196))

(assert (= (and b!2888619 ((_ is Star!8819) (reg!9148 (regOne!18151 (reg!9148 r!23079))))) b!2889197))

(assert (= (and b!2888619 ((_ is Union!8819) (reg!9148 (regOne!18151 (reg!9148 r!23079))))) b!2889198))

(declare-fun b!2889200 () Bool)

(declare-fun e!1826464 () Bool)

(declare-fun tp!927043 () Bool)

(declare-fun tp!927044 () Bool)

(assert (=> b!2889200 (= e!1826464 (and tp!927043 tp!927044))))

(declare-fun b!2889199 () Bool)

(assert (=> b!2889199 (= e!1826464 tp_is_empty!15225)))

(assert (=> b!2888628 (= tp!926680 e!1826464)))

(declare-fun b!2889202 () Bool)

(declare-fun tp!927040 () Bool)

(declare-fun tp!927041 () Bool)

(assert (=> b!2889202 (= e!1826464 (and tp!927040 tp!927041))))

(declare-fun b!2889201 () Bool)

(declare-fun tp!927042 () Bool)

(assert (=> b!2889201 (= e!1826464 tp!927042)))

(assert (= (and b!2888628 ((_ is ElementMatch!8819) (regOne!18151 (reg!9148 (regOne!18150 r!23079))))) b!2889199))

(assert (= (and b!2888628 ((_ is Concat!14140) (regOne!18151 (reg!9148 (regOne!18150 r!23079))))) b!2889200))

(assert (= (and b!2888628 ((_ is Star!8819) (regOne!18151 (reg!9148 (regOne!18150 r!23079))))) b!2889201))

(assert (= (and b!2888628 ((_ is Union!8819) (regOne!18151 (reg!9148 (regOne!18150 r!23079))))) b!2889202))

(declare-fun b!2889204 () Bool)

(declare-fun e!1826465 () Bool)

(declare-fun tp!927048 () Bool)

(declare-fun tp!927049 () Bool)

(assert (=> b!2889204 (= e!1826465 (and tp!927048 tp!927049))))

(declare-fun b!2889203 () Bool)

(assert (=> b!2889203 (= e!1826465 tp_is_empty!15225)))

(assert (=> b!2888628 (= tp!926681 e!1826465)))

(declare-fun b!2889206 () Bool)

(declare-fun tp!927045 () Bool)

(declare-fun tp!927046 () Bool)

(assert (=> b!2889206 (= e!1826465 (and tp!927045 tp!927046))))

(declare-fun b!2889205 () Bool)

(declare-fun tp!927047 () Bool)

(assert (=> b!2889205 (= e!1826465 tp!927047)))

(assert (= (and b!2888628 ((_ is ElementMatch!8819) (regTwo!18151 (reg!9148 (regOne!18150 r!23079))))) b!2889203))

(assert (= (and b!2888628 ((_ is Concat!14140) (regTwo!18151 (reg!9148 (regOne!18150 r!23079))))) b!2889204))

(assert (= (and b!2888628 ((_ is Star!8819) (regTwo!18151 (reg!9148 (regOne!18150 r!23079))))) b!2889205))

(assert (= (and b!2888628 ((_ is Union!8819) (regTwo!18151 (reg!9148 (regOne!18150 r!23079))))) b!2889206))

(declare-fun b!2889208 () Bool)

(declare-fun e!1826466 () Bool)

(declare-fun tp!927053 () Bool)

(declare-fun tp!927054 () Bool)

(assert (=> b!2889208 (= e!1826466 (and tp!927053 tp!927054))))

(declare-fun b!2889207 () Bool)

(assert (=> b!2889207 (= e!1826466 tp_is_empty!15225)))

(assert (=> b!2888686 (= tp!926733 e!1826466)))

(declare-fun b!2889210 () Bool)

(declare-fun tp!927050 () Bool)

(declare-fun tp!927051 () Bool)

(assert (=> b!2889210 (= e!1826466 (and tp!927050 tp!927051))))

(declare-fun b!2889209 () Bool)

(declare-fun tp!927052 () Bool)

(assert (=> b!2889209 (= e!1826466 tp!927052)))

(assert (= (and b!2888686 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18151 (regOne!18151 r!23079))))) b!2889207))

(assert (= (and b!2888686 ((_ is Concat!14140) (regOne!18150 (regTwo!18151 (regOne!18151 r!23079))))) b!2889208))

(assert (= (and b!2888686 ((_ is Star!8819) (regOne!18150 (regTwo!18151 (regOne!18151 r!23079))))) b!2889209))

(assert (= (and b!2888686 ((_ is Union!8819) (regOne!18150 (regTwo!18151 (regOne!18151 r!23079))))) b!2889210))

(declare-fun b!2889212 () Bool)

(declare-fun e!1826467 () Bool)

(declare-fun tp!927058 () Bool)

(declare-fun tp!927059 () Bool)

(assert (=> b!2889212 (= e!1826467 (and tp!927058 tp!927059))))

(declare-fun b!2889211 () Bool)

(assert (=> b!2889211 (= e!1826467 tp_is_empty!15225)))

(assert (=> b!2888686 (= tp!926734 e!1826467)))

(declare-fun b!2889214 () Bool)

(declare-fun tp!927055 () Bool)

(declare-fun tp!927056 () Bool)

(assert (=> b!2889214 (= e!1826467 (and tp!927055 tp!927056))))

(declare-fun b!2889213 () Bool)

(declare-fun tp!927057 () Bool)

(assert (=> b!2889213 (= e!1826467 tp!927057)))

(assert (= (and b!2888686 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18151 (regOne!18151 r!23079))))) b!2889211))

(assert (= (and b!2888686 ((_ is Concat!14140) (regTwo!18150 (regTwo!18151 (regOne!18151 r!23079))))) b!2889212))

(assert (= (and b!2888686 ((_ is Star!8819) (regTwo!18150 (regTwo!18151 (regOne!18151 r!23079))))) b!2889213))

(assert (= (and b!2888686 ((_ is Union!8819) (regTwo!18150 (regTwo!18151 (regOne!18151 r!23079))))) b!2889214))

(declare-fun b!2889216 () Bool)

(declare-fun e!1826468 () Bool)

(declare-fun tp!927063 () Bool)

(declare-fun tp!927064 () Bool)

(assert (=> b!2889216 (= e!1826468 (and tp!927063 tp!927064))))

(declare-fun b!2889215 () Bool)

(assert (=> b!2889215 (= e!1826468 tp_is_empty!15225)))

(assert (=> b!2888688 (= tp!926730 e!1826468)))

(declare-fun b!2889218 () Bool)

(declare-fun tp!927060 () Bool)

(declare-fun tp!927061 () Bool)

(assert (=> b!2889218 (= e!1826468 (and tp!927060 tp!927061))))

(declare-fun b!2889217 () Bool)

(declare-fun tp!927062 () Bool)

(assert (=> b!2889217 (= e!1826468 tp!927062)))

(assert (= (and b!2888688 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18151 (regOne!18151 r!23079))))) b!2889215))

(assert (= (and b!2888688 ((_ is Concat!14140) (regOne!18151 (regTwo!18151 (regOne!18151 r!23079))))) b!2889216))

(assert (= (and b!2888688 ((_ is Star!8819) (regOne!18151 (regTwo!18151 (regOne!18151 r!23079))))) b!2889217))

(assert (= (and b!2888688 ((_ is Union!8819) (regOne!18151 (regTwo!18151 (regOne!18151 r!23079))))) b!2889218))

(declare-fun b!2889220 () Bool)

(declare-fun e!1826469 () Bool)

(declare-fun tp!927068 () Bool)

(declare-fun tp!927069 () Bool)

(assert (=> b!2889220 (= e!1826469 (and tp!927068 tp!927069))))

(declare-fun b!2889219 () Bool)

(assert (=> b!2889219 (= e!1826469 tp_is_empty!15225)))

(assert (=> b!2888688 (= tp!926731 e!1826469)))

(declare-fun b!2889222 () Bool)

(declare-fun tp!927065 () Bool)

(declare-fun tp!927066 () Bool)

(assert (=> b!2889222 (= e!1826469 (and tp!927065 tp!927066))))

(declare-fun b!2889221 () Bool)

(declare-fun tp!927067 () Bool)

(assert (=> b!2889221 (= e!1826469 tp!927067)))

(assert (= (and b!2888688 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18151 (regOne!18151 r!23079))))) b!2889219))

(assert (= (and b!2888688 ((_ is Concat!14140) (regTwo!18151 (regTwo!18151 (regOne!18151 r!23079))))) b!2889220))

(assert (= (and b!2888688 ((_ is Star!8819) (regTwo!18151 (regTwo!18151 (regOne!18151 r!23079))))) b!2889221))

(assert (= (and b!2888688 ((_ is Union!8819) (regTwo!18151 (regTwo!18151 (regOne!18151 r!23079))))) b!2889222))

(declare-fun b!2889224 () Bool)

(declare-fun e!1826470 () Bool)

(declare-fun tp!927073 () Bool)

(declare-fun tp!927074 () Bool)

(assert (=> b!2889224 (= e!1826470 (and tp!927073 tp!927074))))

(declare-fun b!2889223 () Bool)

(assert (=> b!2889223 (= e!1826470 tp_is_empty!15225)))

(assert (=> b!2888612 (= tp!926660 e!1826470)))

(declare-fun b!2889226 () Bool)

(declare-fun tp!927070 () Bool)

(declare-fun tp!927071 () Bool)

(assert (=> b!2889226 (= e!1826470 (and tp!927070 tp!927071))))

(declare-fun b!2889225 () Bool)

(declare-fun tp!927072 () Bool)

(assert (=> b!2889225 (= e!1826470 tp!927072)))

(assert (= (and b!2888612 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889223))

(assert (= (and b!2888612 ((_ is Concat!14140) (regOne!18151 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889224))

(assert (= (and b!2888612 ((_ is Star!8819) (regOne!18151 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889225))

(assert (= (and b!2888612 ((_ is Union!8819) (regOne!18151 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889226))

(declare-fun b!2889228 () Bool)

(declare-fun e!1826471 () Bool)

(declare-fun tp!927078 () Bool)

(declare-fun tp!927079 () Bool)

(assert (=> b!2889228 (= e!1826471 (and tp!927078 tp!927079))))

(declare-fun b!2889227 () Bool)

(assert (=> b!2889227 (= e!1826471 tp_is_empty!15225)))

(assert (=> b!2888612 (= tp!926661 e!1826471)))

(declare-fun b!2889230 () Bool)

(declare-fun tp!927075 () Bool)

(declare-fun tp!927076 () Bool)

(assert (=> b!2889230 (= e!1826471 (and tp!927075 tp!927076))))

(declare-fun b!2889229 () Bool)

(declare-fun tp!927077 () Bool)

(assert (=> b!2889229 (= e!1826471 tp!927077)))

(assert (= (and b!2888612 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889227))

(assert (= (and b!2888612 ((_ is Concat!14140) (regTwo!18151 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889228))

(assert (= (and b!2888612 ((_ is Star!8819) (regTwo!18151 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889229))

(assert (= (and b!2888612 ((_ is Union!8819) (regTwo!18151 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889230))

(declare-fun b!2889232 () Bool)

(declare-fun e!1826472 () Bool)

(declare-fun tp!927083 () Bool)

(declare-fun tp!927084 () Bool)

(assert (=> b!2889232 (= e!1826472 (and tp!927083 tp!927084))))

(declare-fun b!2889231 () Bool)

(assert (=> b!2889231 (= e!1826472 tp_is_empty!15225)))

(assert (=> b!2888603 (= tp!926652 e!1826472)))

(declare-fun b!2889234 () Bool)

(declare-fun tp!927080 () Bool)

(declare-fun tp!927081 () Bool)

(assert (=> b!2889234 (= e!1826472 (and tp!927080 tp!927081))))

(declare-fun b!2889233 () Bool)

(declare-fun tp!927082 () Bool)

(assert (=> b!2889233 (= e!1826472 tp!927082)))

(assert (= (and b!2888603 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18150 (reg!9148 r!23079))))) b!2889231))

(assert (= (and b!2888603 ((_ is Concat!14140) (reg!9148 (regTwo!18150 (reg!9148 r!23079))))) b!2889232))

(assert (= (and b!2888603 ((_ is Star!8819) (reg!9148 (regTwo!18150 (reg!9148 r!23079))))) b!2889233))

(assert (= (and b!2888603 ((_ is Union!8819) (reg!9148 (regTwo!18150 (reg!9148 r!23079))))) b!2889234))

(declare-fun b!2889236 () Bool)

(declare-fun e!1826473 () Bool)

(declare-fun tp!927088 () Bool)

(declare-fun tp!927089 () Bool)

(assert (=> b!2889236 (= e!1826473 (and tp!927088 tp!927089))))

(declare-fun b!2889235 () Bool)

(assert (=> b!2889235 (= e!1826473 tp_is_empty!15225)))

(assert (=> b!2888654 (= tp!926713 e!1826473)))

(declare-fun b!2889238 () Bool)

(declare-fun tp!927085 () Bool)

(declare-fun tp!927086 () Bool)

(assert (=> b!2889238 (= e!1826473 (and tp!927085 tp!927086))))

(declare-fun b!2889237 () Bool)

(declare-fun tp!927087 () Bool)

(assert (=> b!2889237 (= e!1826473 tp!927087)))

(assert (= (and b!2888654 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18150 (regTwo!18150 r!23079))))) b!2889235))

(assert (= (and b!2888654 ((_ is Concat!14140) (regOne!18150 (regOne!18150 (regTwo!18150 r!23079))))) b!2889236))

(assert (= (and b!2888654 ((_ is Star!8819) (regOne!18150 (regOne!18150 (regTwo!18150 r!23079))))) b!2889237))

(assert (= (and b!2888654 ((_ is Union!8819) (regOne!18150 (regOne!18150 (regTwo!18150 r!23079))))) b!2889238))

(declare-fun b!2889240 () Bool)

(declare-fun e!1826474 () Bool)

(declare-fun tp!927093 () Bool)

(declare-fun tp!927094 () Bool)

(assert (=> b!2889240 (= e!1826474 (and tp!927093 tp!927094))))

(declare-fun b!2889239 () Bool)

(assert (=> b!2889239 (= e!1826474 tp_is_empty!15225)))

(assert (=> b!2888654 (= tp!926714 e!1826474)))

(declare-fun b!2889242 () Bool)

(declare-fun tp!927090 () Bool)

(declare-fun tp!927091 () Bool)

(assert (=> b!2889242 (= e!1826474 (and tp!927090 tp!927091))))

(declare-fun b!2889241 () Bool)

(declare-fun tp!927092 () Bool)

(assert (=> b!2889241 (= e!1826474 tp!927092)))

(assert (= (and b!2888654 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18150 (regTwo!18150 r!23079))))) b!2889239))

(assert (= (and b!2888654 ((_ is Concat!14140) (regTwo!18150 (regOne!18150 (regTwo!18150 r!23079))))) b!2889240))

(assert (= (and b!2888654 ((_ is Star!8819) (regTwo!18150 (regOne!18150 (regTwo!18150 r!23079))))) b!2889241))

(assert (= (and b!2888654 ((_ is Union!8819) (regTwo!18150 (regOne!18150 (regTwo!18150 r!23079))))) b!2889242))

(declare-fun b!2889244 () Bool)

(declare-fun e!1826475 () Bool)

(declare-fun tp!927098 () Bool)

(declare-fun tp!927099 () Bool)

(assert (=> b!2889244 (= e!1826475 (and tp!927098 tp!927099))))

(declare-fun b!2889243 () Bool)

(assert (=> b!2889243 (= e!1826475 tp_is_empty!15225)))

(assert (=> b!2888610 (= tp!926663 e!1826475)))

(declare-fun b!2889246 () Bool)

(declare-fun tp!927095 () Bool)

(declare-fun tp!927096 () Bool)

(assert (=> b!2889246 (= e!1826475 (and tp!927095 tp!927096))))

(declare-fun b!2889245 () Bool)

(declare-fun tp!927097 () Bool)

(assert (=> b!2889245 (= e!1826475 tp!927097)))

(assert (= (and b!2888610 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889243))

(assert (= (and b!2888610 ((_ is Concat!14140) (regOne!18150 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889244))

(assert (= (and b!2888610 ((_ is Star!8819) (regOne!18150 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889245))

(assert (= (and b!2888610 ((_ is Union!8819) (regOne!18150 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889246))

(declare-fun b!2889248 () Bool)

(declare-fun e!1826476 () Bool)

(declare-fun tp!927103 () Bool)

(declare-fun tp!927104 () Bool)

(assert (=> b!2889248 (= e!1826476 (and tp!927103 tp!927104))))

(declare-fun b!2889247 () Bool)

(assert (=> b!2889247 (= e!1826476 tp_is_empty!15225)))

(assert (=> b!2888610 (= tp!926664 e!1826476)))

(declare-fun b!2889250 () Bool)

(declare-fun tp!927100 () Bool)

(declare-fun tp!927101 () Bool)

(assert (=> b!2889250 (= e!1826476 (and tp!927100 tp!927101))))

(declare-fun b!2889249 () Bool)

(declare-fun tp!927102 () Bool)

(assert (=> b!2889249 (= e!1826476 tp!927102)))

(assert (= (and b!2888610 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889247))

(assert (= (and b!2888610 ((_ is Concat!14140) (regTwo!18150 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889248))

(assert (= (and b!2888610 ((_ is Star!8819) (regTwo!18150 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889249))

(assert (= (and b!2888610 ((_ is Union!8819) (regTwo!18150 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889250))

(declare-fun b!2889252 () Bool)

(declare-fun e!1826477 () Bool)

(declare-fun tp!927108 () Bool)

(declare-fun tp!927109 () Bool)

(assert (=> b!2889252 (= e!1826477 (and tp!927108 tp!927109))))

(declare-fun b!2889251 () Bool)

(assert (=> b!2889251 (= e!1826477 tp_is_empty!15225)))

(assert (=> b!2888656 (= tp!926710 e!1826477)))

(declare-fun b!2889254 () Bool)

(declare-fun tp!927105 () Bool)

(declare-fun tp!927106 () Bool)

(assert (=> b!2889254 (= e!1826477 (and tp!927105 tp!927106))))

(declare-fun b!2889253 () Bool)

(declare-fun tp!927107 () Bool)

(assert (=> b!2889253 (= e!1826477 tp!927107)))

(assert (= (and b!2888656 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18150 (regTwo!18150 r!23079))))) b!2889251))

(assert (= (and b!2888656 ((_ is Concat!14140) (regOne!18151 (regOne!18150 (regTwo!18150 r!23079))))) b!2889252))

(assert (= (and b!2888656 ((_ is Star!8819) (regOne!18151 (regOne!18150 (regTwo!18150 r!23079))))) b!2889253))

(assert (= (and b!2888656 ((_ is Union!8819) (regOne!18151 (regOne!18150 (regTwo!18150 r!23079))))) b!2889254))

(declare-fun b!2889256 () Bool)

(declare-fun e!1826478 () Bool)

(declare-fun tp!927113 () Bool)

(declare-fun tp!927114 () Bool)

(assert (=> b!2889256 (= e!1826478 (and tp!927113 tp!927114))))

(declare-fun b!2889255 () Bool)

(assert (=> b!2889255 (= e!1826478 tp_is_empty!15225)))

(assert (=> b!2888656 (= tp!926711 e!1826478)))

(declare-fun b!2889258 () Bool)

(declare-fun tp!927110 () Bool)

(declare-fun tp!927111 () Bool)

(assert (=> b!2889258 (= e!1826478 (and tp!927110 tp!927111))))

(declare-fun b!2889257 () Bool)

(declare-fun tp!927112 () Bool)

(assert (=> b!2889257 (= e!1826478 tp!927112)))

(assert (= (and b!2888656 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18150 (regTwo!18150 r!23079))))) b!2889255))

(assert (= (and b!2888656 ((_ is Concat!14140) (regTwo!18151 (regOne!18150 (regTwo!18150 r!23079))))) b!2889256))

(assert (= (and b!2888656 ((_ is Star!8819) (regTwo!18151 (regOne!18150 (regTwo!18150 r!23079))))) b!2889257))

(assert (= (and b!2888656 ((_ is Union!8819) (regTwo!18151 (regOne!18150 (regTwo!18150 r!23079))))) b!2889258))

(declare-fun b!2889260 () Bool)

(declare-fun e!1826479 () Bool)

(declare-fun tp!927118 () Bool)

(declare-fun tp!927119 () Bool)

(assert (=> b!2889260 (= e!1826479 (and tp!927118 tp!927119))))

(declare-fun b!2889259 () Bool)

(assert (=> b!2889259 (= e!1826479 tp_is_empty!15225)))

(assert (=> b!2888662 (= tp!926723 e!1826479)))

(declare-fun b!2889262 () Bool)

(declare-fun tp!927115 () Bool)

(declare-fun tp!927116 () Bool)

(assert (=> b!2889262 (= e!1826479 (and tp!927115 tp!927116))))

(declare-fun b!2889261 () Bool)

(declare-fun tp!927117 () Bool)

(assert (=> b!2889261 (= e!1826479 tp!927117)))

(assert (= (and b!2888662 ((_ is ElementMatch!8819) (regOne!18150 (reg!9148 (reg!9148 r!23079))))) b!2889259))

(assert (= (and b!2888662 ((_ is Concat!14140) (regOne!18150 (reg!9148 (reg!9148 r!23079))))) b!2889260))

(assert (= (and b!2888662 ((_ is Star!8819) (regOne!18150 (reg!9148 (reg!9148 r!23079))))) b!2889261))

(assert (= (and b!2888662 ((_ is Union!8819) (regOne!18150 (reg!9148 (reg!9148 r!23079))))) b!2889262))

(declare-fun b!2889264 () Bool)

(declare-fun e!1826480 () Bool)

(declare-fun tp!927123 () Bool)

(declare-fun tp!927124 () Bool)

(assert (=> b!2889264 (= e!1826480 (and tp!927123 tp!927124))))

(declare-fun b!2889263 () Bool)

(assert (=> b!2889263 (= e!1826480 tp_is_empty!15225)))

(assert (=> b!2888662 (= tp!926724 e!1826480)))

(declare-fun b!2889266 () Bool)

(declare-fun tp!927120 () Bool)

(declare-fun tp!927121 () Bool)

(assert (=> b!2889266 (= e!1826480 (and tp!927120 tp!927121))))

(declare-fun b!2889265 () Bool)

(declare-fun tp!927122 () Bool)

(assert (=> b!2889265 (= e!1826480 tp!927122)))

(assert (= (and b!2888662 ((_ is ElementMatch!8819) (regTwo!18150 (reg!9148 (reg!9148 r!23079))))) b!2889263))

(assert (= (and b!2888662 ((_ is Concat!14140) (regTwo!18150 (reg!9148 (reg!9148 r!23079))))) b!2889264))

(assert (= (and b!2888662 ((_ is Star!8819) (regTwo!18150 (reg!9148 (reg!9148 r!23079))))) b!2889265))

(assert (= (and b!2888662 ((_ is Union!8819) (regTwo!18150 (reg!9148 (reg!9148 r!23079))))) b!2889266))

(declare-fun b!2889268 () Bool)

(declare-fun e!1826481 () Bool)

(declare-fun tp!927128 () Bool)

(declare-fun tp!927129 () Bool)

(assert (=> b!2889268 (= e!1826481 (and tp!927128 tp!927129))))

(declare-fun b!2889267 () Bool)

(assert (=> b!2889267 (= e!1826481 tp_is_empty!15225)))

(assert (=> b!2888664 (= tp!926720 e!1826481)))

(declare-fun b!2889270 () Bool)

(declare-fun tp!927125 () Bool)

(declare-fun tp!927126 () Bool)

(assert (=> b!2889270 (= e!1826481 (and tp!927125 tp!927126))))

(declare-fun b!2889269 () Bool)

(declare-fun tp!927127 () Bool)

(assert (=> b!2889269 (= e!1826481 tp!927127)))

(assert (= (and b!2888664 ((_ is ElementMatch!8819) (regOne!18151 (reg!9148 (reg!9148 r!23079))))) b!2889267))

(assert (= (and b!2888664 ((_ is Concat!14140) (regOne!18151 (reg!9148 (reg!9148 r!23079))))) b!2889268))

(assert (= (and b!2888664 ((_ is Star!8819) (regOne!18151 (reg!9148 (reg!9148 r!23079))))) b!2889269))

(assert (= (and b!2888664 ((_ is Union!8819) (regOne!18151 (reg!9148 (reg!9148 r!23079))))) b!2889270))

(declare-fun b!2889272 () Bool)

(declare-fun e!1826482 () Bool)

(declare-fun tp!927133 () Bool)

(declare-fun tp!927134 () Bool)

(assert (=> b!2889272 (= e!1826482 (and tp!927133 tp!927134))))

(declare-fun b!2889271 () Bool)

(assert (=> b!2889271 (= e!1826482 tp_is_empty!15225)))

(assert (=> b!2888664 (= tp!926721 e!1826482)))

(declare-fun b!2889274 () Bool)

(declare-fun tp!927130 () Bool)

(declare-fun tp!927131 () Bool)

(assert (=> b!2889274 (= e!1826482 (and tp!927130 tp!927131))))

(declare-fun b!2889273 () Bool)

(declare-fun tp!927132 () Bool)

(assert (=> b!2889273 (= e!1826482 tp!927132)))

(assert (= (and b!2888664 ((_ is ElementMatch!8819) (regTwo!18151 (reg!9148 (reg!9148 r!23079))))) b!2889271))

(assert (= (and b!2888664 ((_ is Concat!14140) (regTwo!18151 (reg!9148 (reg!9148 r!23079))))) b!2889272))

(assert (= (and b!2888664 ((_ is Star!8819) (regTwo!18151 (reg!9148 (reg!9148 r!23079))))) b!2889273))

(assert (= (and b!2888664 ((_ is Union!8819) (regTwo!18151 (reg!9148 (reg!9148 r!23079))))) b!2889274))

(declare-fun b!2889276 () Bool)

(declare-fun e!1826483 () Bool)

(declare-fun tp!927138 () Bool)

(declare-fun tp!927139 () Bool)

(assert (=> b!2889276 (= e!1826483 (and tp!927138 tp!927139))))

(declare-fun b!2889275 () Bool)

(assert (=> b!2889275 (= e!1826483 tp_is_empty!15225)))

(assert (=> b!2888596 (= tp!926640 e!1826483)))

(declare-fun b!2889278 () Bool)

(declare-fun tp!927135 () Bool)

(declare-fun tp!927136 () Bool)

(assert (=> b!2889278 (= e!1826483 (and tp!927135 tp!927136))))

(declare-fun b!2889277 () Bool)

(declare-fun tp!927137 () Bool)

(assert (=> b!2889277 (= e!1826483 tp!927137)))

(assert (= (and b!2888596 ((_ is ElementMatch!8819) (regOne!18151 (reg!9148 (regTwo!18151 r!23079))))) b!2889275))

(assert (= (and b!2888596 ((_ is Concat!14140) (regOne!18151 (reg!9148 (regTwo!18151 r!23079))))) b!2889276))

(assert (= (and b!2888596 ((_ is Star!8819) (regOne!18151 (reg!9148 (regTwo!18151 r!23079))))) b!2889277))

(assert (= (and b!2888596 ((_ is Union!8819) (regOne!18151 (reg!9148 (regTwo!18151 r!23079))))) b!2889278))

(declare-fun b!2889280 () Bool)

(declare-fun e!1826484 () Bool)

(declare-fun tp!927143 () Bool)

(declare-fun tp!927144 () Bool)

(assert (=> b!2889280 (= e!1826484 (and tp!927143 tp!927144))))

(declare-fun b!2889279 () Bool)

(assert (=> b!2889279 (= e!1826484 tp_is_empty!15225)))

(assert (=> b!2888596 (= tp!926641 e!1826484)))

(declare-fun b!2889282 () Bool)

(declare-fun tp!927140 () Bool)

(declare-fun tp!927141 () Bool)

(assert (=> b!2889282 (= e!1826484 (and tp!927140 tp!927141))))

(declare-fun b!2889281 () Bool)

(declare-fun tp!927142 () Bool)

(assert (=> b!2889281 (= e!1826484 tp!927142)))

(assert (= (and b!2888596 ((_ is ElementMatch!8819) (regTwo!18151 (reg!9148 (regTwo!18151 r!23079))))) b!2889279))

(assert (= (and b!2888596 ((_ is Concat!14140) (regTwo!18151 (reg!9148 (regTwo!18151 r!23079))))) b!2889280))

(assert (= (and b!2888596 ((_ is Star!8819) (regTwo!18151 (reg!9148 (regTwo!18151 r!23079))))) b!2889281))

(assert (= (and b!2888596 ((_ is Union!8819) (regTwo!18151 (reg!9148 (regTwo!18151 r!23079))))) b!2889282))

(declare-fun b!2889284 () Bool)

(declare-fun e!1826485 () Bool)

(declare-fun tp!927148 () Bool)

(declare-fun tp!927149 () Bool)

(assert (=> b!2889284 (= e!1826485 (and tp!927148 tp!927149))))

(declare-fun b!2889283 () Bool)

(assert (=> b!2889283 (= e!1826485 tp_is_empty!15225)))

(assert (=> b!2888587 (= tp!926630 e!1826485)))

(declare-fun b!2889286 () Bool)

(declare-fun tp!927145 () Bool)

(declare-fun tp!927146 () Bool)

(assert (=> b!2889286 (= e!1826485 (and tp!927145 tp!927146))))

(declare-fun b!2889285 () Bool)

(declare-fun tp!927147 () Bool)

(assert (=> b!2889285 (= e!1826485 tp!927147)))

(assert (= (and b!2888587 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18150 (regOne!18151 r!23079))))) b!2889283))

(assert (= (and b!2888587 ((_ is Concat!14140) (regOne!18151 (regOne!18150 (regOne!18151 r!23079))))) b!2889284))

(assert (= (and b!2888587 ((_ is Star!8819) (regOne!18151 (regOne!18150 (regOne!18151 r!23079))))) b!2889285))

(assert (= (and b!2888587 ((_ is Union!8819) (regOne!18151 (regOne!18150 (regOne!18151 r!23079))))) b!2889286))

(declare-fun b!2889288 () Bool)

(declare-fun e!1826486 () Bool)

(declare-fun tp!927153 () Bool)

(declare-fun tp!927154 () Bool)

(assert (=> b!2889288 (= e!1826486 (and tp!927153 tp!927154))))

(declare-fun b!2889287 () Bool)

(assert (=> b!2889287 (= e!1826486 tp_is_empty!15225)))

(assert (=> b!2888587 (= tp!926631 e!1826486)))

(declare-fun b!2889290 () Bool)

(declare-fun tp!927150 () Bool)

(declare-fun tp!927151 () Bool)

(assert (=> b!2889290 (= e!1826486 (and tp!927150 tp!927151))))

(declare-fun b!2889289 () Bool)

(declare-fun tp!927152 () Bool)

(assert (=> b!2889289 (= e!1826486 tp!927152)))

(assert (= (and b!2888587 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18150 (regOne!18151 r!23079))))) b!2889287))

(assert (= (and b!2888587 ((_ is Concat!14140) (regTwo!18151 (regOne!18150 (regOne!18151 r!23079))))) b!2889288))

(assert (= (and b!2888587 ((_ is Star!8819) (regTwo!18151 (regOne!18150 (regOne!18151 r!23079))))) b!2889289))

(assert (= (and b!2888587 ((_ is Union!8819) (regTwo!18151 (regOne!18150 (regOne!18151 r!23079))))) b!2889290))

(declare-fun b!2889292 () Bool)

(declare-fun e!1826487 () Bool)

(declare-fun tp!927158 () Bool)

(declare-fun tp!927159 () Bool)

(assert (=> b!2889292 (= e!1826487 (and tp!927158 tp!927159))))

(declare-fun b!2889291 () Bool)

(assert (=> b!2889291 (= e!1826487 tp_is_empty!15225)))

(assert (=> b!2888594 (= tp!926643 e!1826487)))

(declare-fun b!2889294 () Bool)

(declare-fun tp!927155 () Bool)

(declare-fun tp!927156 () Bool)

(assert (=> b!2889294 (= e!1826487 (and tp!927155 tp!927156))))

(declare-fun b!2889293 () Bool)

(declare-fun tp!927157 () Bool)

(assert (=> b!2889293 (= e!1826487 tp!927157)))

(assert (= (and b!2888594 ((_ is ElementMatch!8819) (regOne!18150 (reg!9148 (regTwo!18151 r!23079))))) b!2889291))

(assert (= (and b!2888594 ((_ is Concat!14140) (regOne!18150 (reg!9148 (regTwo!18151 r!23079))))) b!2889292))

(assert (= (and b!2888594 ((_ is Star!8819) (regOne!18150 (reg!9148 (regTwo!18151 r!23079))))) b!2889293))

(assert (= (and b!2888594 ((_ is Union!8819) (regOne!18150 (reg!9148 (regTwo!18151 r!23079))))) b!2889294))

(declare-fun b!2889296 () Bool)

(declare-fun e!1826488 () Bool)

(declare-fun tp!927163 () Bool)

(declare-fun tp!927164 () Bool)

(assert (=> b!2889296 (= e!1826488 (and tp!927163 tp!927164))))

(declare-fun b!2889295 () Bool)

(assert (=> b!2889295 (= e!1826488 tp_is_empty!15225)))

(assert (=> b!2888594 (= tp!926644 e!1826488)))

(declare-fun b!2889298 () Bool)

(declare-fun tp!927160 () Bool)

(declare-fun tp!927161 () Bool)

(assert (=> b!2889298 (= e!1826488 (and tp!927160 tp!927161))))

(declare-fun b!2889297 () Bool)

(declare-fun tp!927162 () Bool)

(assert (=> b!2889297 (= e!1826488 tp!927162)))

(assert (= (and b!2888594 ((_ is ElementMatch!8819) (regTwo!18150 (reg!9148 (regTwo!18151 r!23079))))) b!2889295))

(assert (= (and b!2888594 ((_ is Concat!14140) (regTwo!18150 (reg!9148 (regTwo!18151 r!23079))))) b!2889296))

(assert (= (and b!2888594 ((_ is Star!8819) (regTwo!18150 (reg!9148 (regTwo!18151 r!23079))))) b!2889297))

(assert (= (and b!2888594 ((_ is Union!8819) (regTwo!18150 (reg!9148 (regTwo!18151 r!23079))))) b!2889298))

(declare-fun b!2889300 () Bool)

(declare-fun e!1826489 () Bool)

(declare-fun tp!927168 () Bool)

(declare-fun tp!927169 () Bool)

(assert (=> b!2889300 (= e!1826489 (and tp!927168 tp!927169))))

(declare-fun b!2889299 () Bool)

(assert (=> b!2889299 (= e!1826489 tp_is_empty!15225)))

(assert (=> b!2888585 (= tp!926632 e!1826489)))

(declare-fun b!2889302 () Bool)

(declare-fun tp!927165 () Bool)

(declare-fun tp!927166 () Bool)

(assert (=> b!2889302 (= e!1826489 (and tp!927165 tp!927166))))

(declare-fun b!2889301 () Bool)

(declare-fun tp!927167 () Bool)

(assert (=> b!2889301 (= e!1826489 tp!927167)))

(assert (= (and b!2888585 ((_ is ElementMatch!8819) (reg!9148 (regOne!18150 (regOne!18151 r!23079))))) b!2889299))

(assert (= (and b!2888585 ((_ is Concat!14140) (reg!9148 (regOne!18150 (regOne!18151 r!23079))))) b!2889300))

(assert (= (and b!2888585 ((_ is Star!8819) (reg!9148 (regOne!18150 (regOne!18151 r!23079))))) b!2889301))

(assert (= (and b!2888585 ((_ is Union!8819) (reg!9148 (regOne!18150 (regOne!18151 r!23079))))) b!2889302))

(declare-fun b!2889304 () Bool)

(declare-fun e!1826490 () Bool)

(declare-fun tp!927173 () Bool)

(declare-fun tp!927174 () Bool)

(assert (=> b!2889304 (= e!1826490 (and tp!927173 tp!927174))))

(declare-fun b!2889303 () Bool)

(assert (=> b!2889303 (= e!1826490 tp_is_empty!15225)))

(assert (=> b!2888580 (= tp!926625 e!1826490)))

(declare-fun b!2889306 () Bool)

(declare-fun tp!927170 () Bool)

(declare-fun tp!927171 () Bool)

(assert (=> b!2889306 (= e!1826490 (and tp!927170 tp!927171))))

(declare-fun b!2889305 () Bool)

(declare-fun tp!927172 () Bool)

(assert (=> b!2889305 (= e!1826490 tp!927172)))

(assert (= (and b!2888580 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18151 (regOne!18150 r!23079))))) b!2889303))

(assert (= (and b!2888580 ((_ is Concat!14140) (regOne!18151 (regTwo!18151 (regOne!18150 r!23079))))) b!2889304))

(assert (= (and b!2888580 ((_ is Star!8819) (regOne!18151 (regTwo!18151 (regOne!18150 r!23079))))) b!2889305))

(assert (= (and b!2888580 ((_ is Union!8819) (regOne!18151 (regTwo!18151 (regOne!18150 r!23079))))) b!2889306))

(declare-fun b!2889308 () Bool)

(declare-fun e!1826491 () Bool)

(declare-fun tp!927178 () Bool)

(declare-fun tp!927179 () Bool)

(assert (=> b!2889308 (= e!1826491 (and tp!927178 tp!927179))))

(declare-fun b!2889307 () Bool)

(assert (=> b!2889307 (= e!1826491 tp_is_empty!15225)))

(assert (=> b!2888580 (= tp!926626 e!1826491)))

(declare-fun b!2889310 () Bool)

(declare-fun tp!927175 () Bool)

(declare-fun tp!927176 () Bool)

(assert (=> b!2889310 (= e!1826491 (and tp!927175 tp!927176))))

(declare-fun b!2889309 () Bool)

(declare-fun tp!927177 () Bool)

(assert (=> b!2889309 (= e!1826491 tp!927177)))

(assert (= (and b!2888580 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18151 (regOne!18150 r!23079))))) b!2889307))

(assert (= (and b!2888580 ((_ is Concat!14140) (regTwo!18151 (regTwo!18151 (regOne!18150 r!23079))))) b!2889308))

(assert (= (and b!2888580 ((_ is Star!8819) (regTwo!18151 (regTwo!18151 (regOne!18150 r!23079))))) b!2889309))

(assert (= (and b!2888580 ((_ is Union!8819) (regTwo!18151 (regTwo!18151 (regOne!18150 r!23079))))) b!2889310))

(declare-fun b!2889312 () Bool)

(declare-fun e!1826492 () Bool)

(declare-fun tp!927183 () Bool)

(declare-fun tp!927184 () Bool)

(assert (=> b!2889312 (= e!1826492 (and tp!927183 tp!927184))))

(declare-fun b!2889311 () Bool)

(assert (=> b!2889311 (= e!1826492 tp_is_empty!15225)))

(assert (=> b!2888578 (= tp!926628 e!1826492)))

(declare-fun b!2889314 () Bool)

(declare-fun tp!927180 () Bool)

(declare-fun tp!927181 () Bool)

(assert (=> b!2889314 (= e!1826492 (and tp!927180 tp!927181))))

(declare-fun b!2889313 () Bool)

(declare-fun tp!927182 () Bool)

(assert (=> b!2889313 (= e!1826492 tp!927182)))

(assert (= (and b!2888578 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18151 (regOne!18150 r!23079))))) b!2889311))

(assert (= (and b!2888578 ((_ is Concat!14140) (regOne!18150 (regTwo!18151 (regOne!18150 r!23079))))) b!2889312))

(assert (= (and b!2888578 ((_ is Star!8819) (regOne!18150 (regTwo!18151 (regOne!18150 r!23079))))) b!2889313))

(assert (= (and b!2888578 ((_ is Union!8819) (regOne!18150 (regTwo!18151 (regOne!18150 r!23079))))) b!2889314))

(declare-fun b!2889316 () Bool)

(declare-fun e!1826493 () Bool)

(declare-fun tp!927188 () Bool)

(declare-fun tp!927189 () Bool)

(assert (=> b!2889316 (= e!1826493 (and tp!927188 tp!927189))))

(declare-fun b!2889315 () Bool)

(assert (=> b!2889315 (= e!1826493 tp_is_empty!15225)))

(assert (=> b!2888578 (= tp!926629 e!1826493)))

(declare-fun b!2889318 () Bool)

(declare-fun tp!927185 () Bool)

(declare-fun tp!927186 () Bool)

(assert (=> b!2889318 (= e!1826493 (and tp!927185 tp!927186))))

(declare-fun b!2889317 () Bool)

(declare-fun tp!927187 () Bool)

(assert (=> b!2889317 (= e!1826493 tp!927187)))

(assert (= (and b!2888578 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18151 (regOne!18150 r!23079))))) b!2889315))

(assert (= (and b!2888578 ((_ is Concat!14140) (regTwo!18150 (regTwo!18151 (regOne!18150 r!23079))))) b!2889316))

(assert (= (and b!2888578 ((_ is Star!8819) (regTwo!18150 (regTwo!18151 (regOne!18150 r!23079))))) b!2889317))

(assert (= (and b!2888578 ((_ is Union!8819) (regTwo!18150 (regTwo!18151 (regOne!18150 r!23079))))) b!2889318))

(declare-fun b!2889320 () Bool)

(declare-fun e!1826494 () Bool)

(declare-fun tp!927193 () Bool)

(declare-fun tp!927194 () Bool)

(assert (=> b!2889320 (= e!1826494 (and tp!927193 tp!927194))))

(declare-fun b!2889319 () Bool)

(assert (=> b!2889319 (= e!1826494 tp_is_empty!15225)))

(assert (=> b!2888630 (= tp!926688 e!1826494)))

(declare-fun b!2889322 () Bool)

(declare-fun tp!927190 () Bool)

(declare-fun tp!927191 () Bool)

(assert (=> b!2889322 (= e!1826494 (and tp!927190 tp!927191))))

(declare-fun b!2889321 () Bool)

(declare-fun tp!927192 () Bool)

(assert (=> b!2889321 (= e!1826494 tp!927192)))

(assert (= (and b!2888630 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18151 (regTwo!18150 r!23079))))) b!2889319))

(assert (= (and b!2888630 ((_ is Concat!14140) (regOne!18150 (regOne!18151 (regTwo!18150 r!23079))))) b!2889320))

(assert (= (and b!2888630 ((_ is Star!8819) (regOne!18150 (regOne!18151 (regTwo!18150 r!23079))))) b!2889321))

(assert (= (and b!2888630 ((_ is Union!8819) (regOne!18150 (regOne!18151 (regTwo!18150 r!23079))))) b!2889322))

(declare-fun b!2889324 () Bool)

(declare-fun e!1826495 () Bool)

(declare-fun tp!927198 () Bool)

(declare-fun tp!927199 () Bool)

(assert (=> b!2889324 (= e!1826495 (and tp!927198 tp!927199))))

(declare-fun b!2889323 () Bool)

(assert (=> b!2889323 (= e!1826495 tp_is_empty!15225)))

(assert (=> b!2888630 (= tp!926689 e!1826495)))

(declare-fun b!2889326 () Bool)

(declare-fun tp!927195 () Bool)

(declare-fun tp!927196 () Bool)

(assert (=> b!2889326 (= e!1826495 (and tp!927195 tp!927196))))

(declare-fun b!2889325 () Bool)

(declare-fun tp!927197 () Bool)

(assert (=> b!2889325 (= e!1826495 tp!927197)))

(assert (= (and b!2888630 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18151 (regTwo!18150 r!23079))))) b!2889323))

(assert (= (and b!2888630 ((_ is Concat!14140) (regTwo!18150 (regOne!18151 (regTwo!18150 r!23079))))) b!2889324))

(assert (= (and b!2888630 ((_ is Star!8819) (regTwo!18150 (regOne!18151 (regTwo!18150 r!23079))))) b!2889325))

(assert (= (and b!2888630 ((_ is Union!8819) (regTwo!18150 (regOne!18151 (regTwo!18150 r!23079))))) b!2889326))

(declare-fun b!2889328 () Bool)

(declare-fun e!1826496 () Bool)

(declare-fun tp!927203 () Bool)

(declare-fun tp!927204 () Bool)

(assert (=> b!2889328 (= e!1826496 (and tp!927203 tp!927204))))

(declare-fun b!2889327 () Bool)

(assert (=> b!2889327 (= e!1826496 tp_is_empty!15225)))

(assert (=> b!2888639 (= tp!926692 e!1826496)))

(declare-fun b!2889330 () Bool)

(declare-fun tp!927200 () Bool)

(declare-fun tp!927201 () Bool)

(assert (=> b!2889330 (= e!1826496 (and tp!927200 tp!927201))))

(declare-fun b!2889329 () Bool)

(declare-fun tp!927202 () Bool)

(assert (=> b!2889329 (= e!1826496 tp!927202)))

(assert (= (and b!2888639 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889327))

(assert (= (and b!2888639 ((_ is Concat!14140) (reg!9148 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889328))

(assert (= (and b!2888639 ((_ is Star!8819) (reg!9148 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889329))

(assert (= (and b!2888639 ((_ is Union!8819) (reg!9148 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889330))

(declare-fun b!2889332 () Bool)

(declare-fun e!1826497 () Bool)

(declare-fun tp!927208 () Bool)

(declare-fun tp!927209 () Bool)

(assert (=> b!2889332 (= e!1826497 (and tp!927208 tp!927209))))

(declare-fun b!2889331 () Bool)

(assert (=> b!2889331 (= e!1826497 tp_is_empty!15225)))

(assert (=> b!2888646 (= tp!926703 e!1826497)))

(declare-fun b!2889334 () Bool)

(declare-fun tp!927205 () Bool)

(declare-fun tp!927206 () Bool)

(assert (=> b!2889334 (= e!1826497 (and tp!927205 tp!927206))))

(declare-fun b!2889333 () Bool)

(declare-fun tp!927207 () Bool)

(assert (=> b!2889333 (= e!1826497 tp!927207)))

(assert (= (and b!2888646 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18151 (regTwo!18151 r!23079))))) b!2889331))

(assert (= (and b!2888646 ((_ is Concat!14140) (regOne!18150 (regOne!18151 (regTwo!18151 r!23079))))) b!2889332))

(assert (= (and b!2888646 ((_ is Star!8819) (regOne!18150 (regOne!18151 (regTwo!18151 r!23079))))) b!2889333))

(assert (= (and b!2888646 ((_ is Union!8819) (regOne!18150 (regOne!18151 (regTwo!18151 r!23079))))) b!2889334))

(declare-fun b!2889336 () Bool)

(declare-fun e!1826498 () Bool)

(declare-fun tp!927213 () Bool)

(declare-fun tp!927214 () Bool)

(assert (=> b!2889336 (= e!1826498 (and tp!927213 tp!927214))))

(declare-fun b!2889335 () Bool)

(assert (=> b!2889335 (= e!1826498 tp_is_empty!15225)))

(assert (=> b!2888646 (= tp!926704 e!1826498)))

(declare-fun b!2889338 () Bool)

(declare-fun tp!927210 () Bool)

(declare-fun tp!927211 () Bool)

(assert (=> b!2889338 (= e!1826498 (and tp!927210 tp!927211))))

(declare-fun b!2889337 () Bool)

(declare-fun tp!927212 () Bool)

(assert (=> b!2889337 (= e!1826498 tp!927212)))

(assert (= (and b!2888646 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18151 (regTwo!18151 r!23079))))) b!2889335))

(assert (= (and b!2888646 ((_ is Concat!14140) (regTwo!18150 (regOne!18151 (regTwo!18151 r!23079))))) b!2889336))

(assert (= (and b!2888646 ((_ is Star!8819) (regTwo!18150 (regOne!18151 (regTwo!18151 r!23079))))) b!2889337))

(assert (= (and b!2888646 ((_ is Union!8819) (regTwo!18150 (regOne!18151 (regTwo!18151 r!23079))))) b!2889338))

(declare-fun b!2889340 () Bool)

(declare-fun e!1826499 () Bool)

(declare-fun tp!927218 () Bool)

(declare-fun tp!927219 () Bool)

(assert (=> b!2889340 (= e!1826499 (and tp!927218 tp!927219))))

(declare-fun b!2889339 () Bool)

(assert (=> b!2889339 (= e!1826499 tp_is_empty!15225)))

(assert (=> b!2888690 (= tp!926738 e!1826499)))

(declare-fun b!2889342 () Bool)

(declare-fun tp!927215 () Bool)

(declare-fun tp!927216 () Bool)

(assert (=> b!2889342 (= e!1826499 (and tp!927215 tp!927216))))

(declare-fun b!2889341 () Bool)

(declare-fun tp!927217 () Bool)

(assert (=> b!2889341 (= e!1826499 tp!927217)))

(assert (= (and b!2888690 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18150 (regOne!18150 r!23079))))) b!2889339))

(assert (= (and b!2888690 ((_ is Concat!14140) (regOne!18150 (regOne!18150 (regOne!18150 r!23079))))) b!2889340))

(assert (= (and b!2888690 ((_ is Star!8819) (regOne!18150 (regOne!18150 (regOne!18150 r!23079))))) b!2889341))

(assert (= (and b!2888690 ((_ is Union!8819) (regOne!18150 (regOne!18150 (regOne!18150 r!23079))))) b!2889342))

(declare-fun b!2889344 () Bool)

(declare-fun e!1826500 () Bool)

(declare-fun tp!927223 () Bool)

(declare-fun tp!927224 () Bool)

(assert (=> b!2889344 (= e!1826500 (and tp!927223 tp!927224))))

(declare-fun b!2889343 () Bool)

(assert (=> b!2889343 (= e!1826500 tp_is_empty!15225)))

(assert (=> b!2888690 (= tp!926739 e!1826500)))

(declare-fun b!2889346 () Bool)

(declare-fun tp!927220 () Bool)

(declare-fun tp!927221 () Bool)

(assert (=> b!2889346 (= e!1826500 (and tp!927220 tp!927221))))

(declare-fun b!2889345 () Bool)

(declare-fun tp!927222 () Bool)

(assert (=> b!2889345 (= e!1826500 tp!927222)))

(assert (= (and b!2888690 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18150 (regOne!18150 r!23079))))) b!2889343))

(assert (= (and b!2888690 ((_ is Concat!14140) (regTwo!18150 (regOne!18150 (regOne!18150 r!23079))))) b!2889344))

(assert (= (and b!2888690 ((_ is Star!8819) (regTwo!18150 (regOne!18150 (regOne!18150 r!23079))))) b!2889345))

(assert (= (and b!2888690 ((_ is Union!8819) (regTwo!18150 (regOne!18150 (regOne!18150 r!23079))))) b!2889346))

(declare-fun b!2889348 () Bool)

(declare-fun e!1826501 () Bool)

(declare-fun tp!927228 () Bool)

(declare-fun tp!927229 () Bool)

(assert (=> b!2889348 (= e!1826501 (and tp!927228 tp!927229))))

(declare-fun b!2889347 () Bool)

(assert (=> b!2889347 (= e!1826501 tp_is_empty!15225)))

(assert (=> b!2888648 (= tp!926700 e!1826501)))

(declare-fun b!2889350 () Bool)

(declare-fun tp!927225 () Bool)

(declare-fun tp!927226 () Bool)

(assert (=> b!2889350 (= e!1826501 (and tp!927225 tp!927226))))

(declare-fun b!2889349 () Bool)

(declare-fun tp!927227 () Bool)

(assert (=> b!2889349 (= e!1826501 tp!927227)))

(assert (= (and b!2888648 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18151 (regTwo!18151 r!23079))))) b!2889347))

(assert (= (and b!2888648 ((_ is Concat!14140) (regOne!18151 (regOne!18151 (regTwo!18151 r!23079))))) b!2889348))

(assert (= (and b!2888648 ((_ is Star!8819) (regOne!18151 (regOne!18151 (regTwo!18151 r!23079))))) b!2889349))

(assert (= (and b!2888648 ((_ is Union!8819) (regOne!18151 (regOne!18151 (regTwo!18151 r!23079))))) b!2889350))

(declare-fun b!2889352 () Bool)

(declare-fun e!1826502 () Bool)

(declare-fun tp!927233 () Bool)

(declare-fun tp!927234 () Bool)

(assert (=> b!2889352 (= e!1826502 (and tp!927233 tp!927234))))

(declare-fun b!2889351 () Bool)

(assert (=> b!2889351 (= e!1826502 tp_is_empty!15225)))

(assert (=> b!2888648 (= tp!926701 e!1826502)))

(declare-fun b!2889354 () Bool)

(declare-fun tp!927230 () Bool)

(declare-fun tp!927231 () Bool)

(assert (=> b!2889354 (= e!1826502 (and tp!927230 tp!927231))))

(declare-fun b!2889353 () Bool)

(declare-fun tp!927232 () Bool)

(assert (=> b!2889353 (= e!1826502 tp!927232)))

(assert (= (and b!2888648 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18151 (regTwo!18151 r!23079))))) b!2889351))

(assert (= (and b!2888648 ((_ is Concat!14140) (regTwo!18151 (regOne!18151 (regTwo!18151 r!23079))))) b!2889352))

(assert (= (and b!2888648 ((_ is Star!8819) (regTwo!18151 (regOne!18151 (regTwo!18151 r!23079))))) b!2889353))

(assert (= (and b!2888648 ((_ is Union!8819) (regTwo!18151 (regOne!18151 (regTwo!18151 r!23079))))) b!2889354))

(declare-fun b!2889356 () Bool)

(declare-fun e!1826503 () Bool)

(declare-fun tp!927238 () Bool)

(declare-fun tp!927239 () Bool)

(assert (=> b!2889356 (= e!1826503 (and tp!927238 tp!927239))))

(declare-fun b!2889355 () Bool)

(assert (=> b!2889355 (= e!1826503 tp_is_empty!15225)))

(assert (=> b!2888651 (= tp!926707 e!1826503)))

(declare-fun b!2889358 () Bool)

(declare-fun tp!927235 () Bool)

(declare-fun tp!927236 () Bool)

(assert (=> b!2889358 (= e!1826503 (and tp!927235 tp!927236))))

(declare-fun b!2889357 () Bool)

(declare-fun tp!927237 () Bool)

(assert (=> b!2889357 (= e!1826503 tp!927237)))

(assert (= (and b!2888651 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889355))

(assert (= (and b!2888651 ((_ is Concat!14140) (reg!9148 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889356))

(assert (= (and b!2888651 ((_ is Star!8819) (reg!9148 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889357))

(assert (= (and b!2888651 ((_ is Union!8819) (reg!9148 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889358))

(declare-fun b!2889360 () Bool)

(declare-fun e!1826504 () Bool)

(declare-fun tp!927243 () Bool)

(declare-fun tp!927244 () Bool)

(assert (=> b!2889360 (= e!1826504 (and tp!927243 tp!927244))))

(declare-fun b!2889359 () Bool)

(assert (=> b!2889359 (= e!1826504 tp_is_empty!15225)))

(assert (=> b!2888614 (= tp!926668 e!1826504)))

(declare-fun b!2889362 () Bool)

(declare-fun tp!927240 () Bool)

(declare-fun tp!927241 () Bool)

(assert (=> b!2889362 (= e!1826504 (and tp!927240 tp!927241))))

(declare-fun b!2889361 () Bool)

(declare-fun tp!927242 () Bool)

(assert (=> b!2889361 (= e!1826504 tp!927242)))

(assert (= (and b!2888614 ((_ is ElementMatch!8819) (regOne!18150 (reg!9148 (regTwo!18150 r!23079))))) b!2889359))

(assert (= (and b!2888614 ((_ is Concat!14140) (regOne!18150 (reg!9148 (regTwo!18150 r!23079))))) b!2889360))

(assert (= (and b!2888614 ((_ is Star!8819) (regOne!18150 (reg!9148 (regTwo!18150 r!23079))))) b!2889361))

(assert (= (and b!2888614 ((_ is Union!8819) (regOne!18150 (reg!9148 (regTwo!18150 r!23079))))) b!2889362))

(declare-fun b!2889364 () Bool)

(declare-fun e!1826505 () Bool)

(declare-fun tp!927248 () Bool)

(declare-fun tp!927249 () Bool)

(assert (=> b!2889364 (= e!1826505 (and tp!927248 tp!927249))))

(declare-fun b!2889363 () Bool)

(assert (=> b!2889363 (= e!1826505 tp_is_empty!15225)))

(assert (=> b!2888614 (= tp!926669 e!1826505)))

(declare-fun b!2889366 () Bool)

(declare-fun tp!927245 () Bool)

(declare-fun tp!927246 () Bool)

(assert (=> b!2889366 (= e!1826505 (and tp!927245 tp!927246))))

(declare-fun b!2889365 () Bool)

(declare-fun tp!927247 () Bool)

(assert (=> b!2889365 (= e!1826505 tp!927247)))

(assert (= (and b!2888614 ((_ is ElementMatch!8819) (regTwo!18150 (reg!9148 (regTwo!18150 r!23079))))) b!2889363))

(assert (= (and b!2888614 ((_ is Concat!14140) (regTwo!18150 (reg!9148 (regTwo!18150 r!23079))))) b!2889364))

(assert (= (and b!2888614 ((_ is Star!8819) (regTwo!18150 (reg!9148 (regTwo!18150 r!23079))))) b!2889365))

(assert (= (and b!2888614 ((_ is Union!8819) (regTwo!18150 (reg!9148 (regTwo!18150 r!23079))))) b!2889366))

(declare-fun b!2889368 () Bool)

(declare-fun e!1826506 () Bool)

(declare-fun tp!927253 () Bool)

(declare-fun tp!927254 () Bool)

(assert (=> b!2889368 (= e!1826506 (and tp!927253 tp!927254))))

(declare-fun b!2889367 () Bool)

(assert (=> b!2889367 (= e!1826506 tp_is_empty!15225)))

(assert (=> b!2888658 (= tp!926718 e!1826506)))

(declare-fun b!2889370 () Bool)

(declare-fun tp!927250 () Bool)

(declare-fun tp!927251 () Bool)

(assert (=> b!2889370 (= e!1826506 (and tp!927250 tp!927251))))

(declare-fun b!2889369 () Bool)

(declare-fun tp!927252 () Bool)

(assert (=> b!2889369 (= e!1826506 tp!927252)))

(assert (= (and b!2888658 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889367))

(assert (= (and b!2888658 ((_ is Concat!14140) (regOne!18150 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889368))

(assert (= (and b!2888658 ((_ is Star!8819) (regOne!18150 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889369))

(assert (= (and b!2888658 ((_ is Union!8819) (regOne!18150 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889370))

(declare-fun b!2889372 () Bool)

(declare-fun e!1826507 () Bool)

(declare-fun tp!927258 () Bool)

(declare-fun tp!927259 () Bool)

(assert (=> b!2889372 (= e!1826507 (and tp!927258 tp!927259))))

(declare-fun b!2889371 () Bool)

(assert (=> b!2889371 (= e!1826507 tp_is_empty!15225)))

(assert (=> b!2888658 (= tp!926719 e!1826507)))

(declare-fun b!2889374 () Bool)

(declare-fun tp!927255 () Bool)

(declare-fun tp!927256 () Bool)

(assert (=> b!2889374 (= e!1826507 (and tp!927255 tp!927256))))

(declare-fun b!2889373 () Bool)

(declare-fun tp!927257 () Bool)

(assert (=> b!2889373 (= e!1826507 tp!927257)))

(assert (= (and b!2888658 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889371))

(assert (= (and b!2888658 ((_ is Concat!14140) (regTwo!18150 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889372))

(assert (= (and b!2888658 ((_ is Star!8819) (regTwo!18150 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889373))

(assert (= (and b!2888658 ((_ is Union!8819) (regTwo!18150 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889374))

(declare-fun b!2889376 () Bool)

(declare-fun e!1826508 () Bool)

(declare-fun tp!927263 () Bool)

(declare-fun tp!927264 () Bool)

(assert (=> b!2889376 (= e!1826508 (and tp!927263 tp!927264))))

(declare-fun b!2889375 () Bool)

(assert (=> b!2889375 (= e!1826508 tp_is_empty!15225)))

(assert (=> b!2888623 (= tp!926677 e!1826508)))

(declare-fun b!2889378 () Bool)

(declare-fun tp!927260 () Bool)

(declare-fun tp!927261 () Bool)

(assert (=> b!2889378 (= e!1826508 (and tp!927260 tp!927261))))

(declare-fun b!2889377 () Bool)

(declare-fun tp!927262 () Bool)

(assert (=> b!2889377 (= e!1826508 tp!927262)))

(assert (= (and b!2888623 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18151 (reg!9148 r!23079))))) b!2889375))

(assert (= (and b!2888623 ((_ is Concat!14140) (reg!9148 (regTwo!18151 (reg!9148 r!23079))))) b!2889376))

(assert (= (and b!2888623 ((_ is Star!8819) (reg!9148 (regTwo!18151 (reg!9148 r!23079))))) b!2889377))

(assert (= (and b!2888623 ((_ is Union!8819) (reg!9148 (regTwo!18151 (reg!9148 r!23079))))) b!2889378))

(declare-fun b!2889380 () Bool)

(declare-fun e!1826509 () Bool)

(declare-fun tp!927268 () Bool)

(declare-fun tp!927269 () Bool)

(assert (=> b!2889380 (= e!1826509 (and tp!927268 tp!927269))))

(declare-fun b!2889379 () Bool)

(assert (=> b!2889379 (= e!1826509 tp_is_empty!15225)))

(assert (=> b!2888632 (= tp!926685 e!1826509)))

(declare-fun b!2889382 () Bool)

(declare-fun tp!927265 () Bool)

(declare-fun tp!927266 () Bool)

(assert (=> b!2889382 (= e!1826509 (and tp!927265 tp!927266))))

(declare-fun b!2889381 () Bool)

(declare-fun tp!927267 () Bool)

(assert (=> b!2889381 (= e!1826509 tp!927267)))

(assert (= (and b!2888632 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18151 (regTwo!18150 r!23079))))) b!2889379))

(assert (= (and b!2888632 ((_ is Concat!14140) (regOne!18151 (regOne!18151 (regTwo!18150 r!23079))))) b!2889380))

(assert (= (and b!2888632 ((_ is Star!8819) (regOne!18151 (regOne!18151 (regTwo!18150 r!23079))))) b!2889381))

(assert (= (and b!2888632 ((_ is Union!8819) (regOne!18151 (regOne!18151 (regTwo!18150 r!23079))))) b!2889382))

(declare-fun b!2889384 () Bool)

(declare-fun e!1826510 () Bool)

(declare-fun tp!927273 () Bool)

(declare-fun tp!927274 () Bool)

(assert (=> b!2889384 (= e!1826510 (and tp!927273 tp!927274))))

(declare-fun b!2889383 () Bool)

(assert (=> b!2889383 (= e!1826510 tp_is_empty!15225)))

(assert (=> b!2888632 (= tp!926686 e!1826510)))

(declare-fun b!2889386 () Bool)

(declare-fun tp!927270 () Bool)

(declare-fun tp!927271 () Bool)

(assert (=> b!2889386 (= e!1826510 (and tp!927270 tp!927271))))

(declare-fun b!2889385 () Bool)

(declare-fun tp!927272 () Bool)

(assert (=> b!2889385 (= e!1826510 tp!927272)))

(assert (= (and b!2888632 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18151 (regTwo!18150 r!23079))))) b!2889383))

(assert (= (and b!2888632 ((_ is Concat!14140) (regTwo!18151 (regOne!18151 (regTwo!18150 r!23079))))) b!2889384))

(assert (= (and b!2888632 ((_ is Star!8819) (regTwo!18151 (regOne!18151 (regTwo!18150 r!23079))))) b!2889385))

(assert (= (and b!2888632 ((_ is Union!8819) (regTwo!18151 (regOne!18151 (regTwo!18150 r!23079))))) b!2889386))

(declare-fun b!2889388 () Bool)

(declare-fun e!1826511 () Bool)

(declare-fun tp!927278 () Bool)

(declare-fun tp!927279 () Bool)

(assert (=> b!2889388 (= e!1826511 (and tp!927278 tp!927279))))

(declare-fun b!2889387 () Bool)

(assert (=> b!2889387 (= e!1826511 tp_is_empty!15225)))

(assert (=> b!2888607 (= tp!926657 e!1826511)))

(declare-fun b!2889390 () Bool)

(declare-fun tp!927275 () Bool)

(declare-fun tp!927276 () Bool)

(assert (=> b!2889390 (= e!1826511 (and tp!927275 tp!927276))))

(declare-fun b!2889389 () Bool)

(declare-fun tp!927277 () Bool)

(assert (=> b!2889389 (= e!1826511 tp!927277)))

(assert (= (and b!2888607 ((_ is ElementMatch!8819) (reg!9148 (regOne!18150 (regTwo!18151 r!23079))))) b!2889387))

(assert (= (and b!2888607 ((_ is Concat!14140) (reg!9148 (regOne!18150 (regTwo!18151 r!23079))))) b!2889388))

(assert (= (and b!2888607 ((_ is Star!8819) (reg!9148 (regOne!18150 (regTwo!18151 r!23079))))) b!2889389))

(assert (= (and b!2888607 ((_ is Union!8819) (reg!9148 (regOne!18150 (regTwo!18151 r!23079))))) b!2889390))

(declare-fun b!2889392 () Bool)

(declare-fun e!1826512 () Bool)

(declare-fun tp!927283 () Bool)

(declare-fun tp!927284 () Bool)

(assert (=> b!2889392 (= e!1826512 (and tp!927283 tp!927284))))

(declare-fun b!2889391 () Bool)

(assert (=> b!2889391 (= e!1826512 tp_is_empty!15225)))

(assert (=> b!2888598 (= tp!926648 e!1826512)))

(declare-fun b!2889394 () Bool)

(declare-fun tp!927280 () Bool)

(declare-fun tp!927281 () Bool)

(assert (=> b!2889394 (= e!1826512 (and tp!927280 tp!927281))))

(declare-fun b!2889393 () Bool)

(declare-fun tp!927282 () Bool)

(assert (=> b!2889393 (= e!1826512 tp!927282)))

(assert (= (and b!2888598 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18150 (reg!9148 r!23079))))) b!2889391))

(assert (= (and b!2888598 ((_ is Concat!14140) (regOne!18150 (regOne!18150 (reg!9148 r!23079))))) b!2889392))

(assert (= (and b!2888598 ((_ is Star!8819) (regOne!18150 (regOne!18150 (reg!9148 r!23079))))) b!2889393))

(assert (= (and b!2888598 ((_ is Union!8819) (regOne!18150 (regOne!18150 (reg!9148 r!23079))))) b!2889394))

(declare-fun b!2889396 () Bool)

(declare-fun e!1826513 () Bool)

(declare-fun tp!927288 () Bool)

(declare-fun tp!927289 () Bool)

(assert (=> b!2889396 (= e!1826513 (and tp!927288 tp!927289))))

(declare-fun b!2889395 () Bool)

(assert (=> b!2889395 (= e!1826513 tp_is_empty!15225)))

(assert (=> b!2888598 (= tp!926649 e!1826513)))

(declare-fun b!2889398 () Bool)

(declare-fun tp!927285 () Bool)

(declare-fun tp!927286 () Bool)

(assert (=> b!2889398 (= e!1826513 (and tp!927285 tp!927286))))

(declare-fun b!2889397 () Bool)

(declare-fun tp!927287 () Bool)

(assert (=> b!2889397 (= e!1826513 tp!927287)))

(assert (= (and b!2888598 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18150 (reg!9148 r!23079))))) b!2889395))

(assert (= (and b!2888598 ((_ is Concat!14140) (regTwo!18150 (regOne!18150 (reg!9148 r!23079))))) b!2889396))

(assert (= (and b!2888598 ((_ is Star!8819) (regTwo!18150 (regOne!18150 (reg!9148 r!23079))))) b!2889397))

(assert (= (and b!2888598 ((_ is Union!8819) (regTwo!18150 (regOne!18150 (reg!9148 r!23079))))) b!2889398))

(declare-fun b!2889400 () Bool)

(declare-fun e!1826514 () Bool)

(declare-fun tp!927293 () Bool)

(declare-fun tp!927294 () Bool)

(assert (=> b!2889400 (= e!1826514 (and tp!927293 tp!927294))))

(declare-fun b!2889399 () Bool)

(assert (=> b!2889399 (= e!1826514 tp_is_empty!15225)))

(assert (=> b!2888692 (= tp!926735 e!1826514)))

(declare-fun b!2889402 () Bool)

(declare-fun tp!927290 () Bool)

(declare-fun tp!927291 () Bool)

(assert (=> b!2889402 (= e!1826514 (and tp!927290 tp!927291))))

(declare-fun b!2889401 () Bool)

(declare-fun tp!927292 () Bool)

(assert (=> b!2889401 (= e!1826514 tp!927292)))

(assert (= (and b!2888692 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18150 (regOne!18150 r!23079))))) b!2889399))

(assert (= (and b!2888692 ((_ is Concat!14140) (regOne!18151 (regOne!18150 (regOne!18150 r!23079))))) b!2889400))

(assert (= (and b!2888692 ((_ is Star!8819) (regOne!18151 (regOne!18150 (regOne!18150 r!23079))))) b!2889401))

(assert (= (and b!2888692 ((_ is Union!8819) (regOne!18151 (regOne!18150 (regOne!18150 r!23079))))) b!2889402))

(declare-fun b!2889404 () Bool)

(declare-fun e!1826515 () Bool)

(declare-fun tp!927298 () Bool)

(declare-fun tp!927299 () Bool)

(assert (=> b!2889404 (= e!1826515 (and tp!927298 tp!927299))))

(declare-fun b!2889403 () Bool)

(assert (=> b!2889403 (= e!1826515 tp_is_empty!15225)))

(assert (=> b!2888692 (= tp!926736 e!1826515)))

(declare-fun b!2889406 () Bool)

(declare-fun tp!927295 () Bool)

(declare-fun tp!927296 () Bool)

(assert (=> b!2889406 (= e!1826515 (and tp!927295 tp!927296))))

(declare-fun b!2889405 () Bool)

(declare-fun tp!927297 () Bool)

(assert (=> b!2889405 (= e!1826515 tp!927297)))

(assert (= (and b!2888692 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18150 (regOne!18150 r!23079))))) b!2889403))

(assert (= (and b!2888692 ((_ is Concat!14140) (regTwo!18151 (regOne!18150 (regOne!18150 r!23079))))) b!2889404))

(assert (= (and b!2888692 ((_ is Star!8819) (regTwo!18151 (regOne!18150 (regOne!18150 r!23079))))) b!2889405))

(assert (= (and b!2888692 ((_ is Union!8819) (regTwo!18151 (regOne!18150 (regOne!18150 r!23079))))) b!2889406))

(declare-fun b!2889408 () Bool)

(declare-fun e!1826516 () Bool)

(declare-fun tp!927303 () Bool)

(declare-fun tp!927304 () Bool)

(assert (=> b!2889408 (= e!1826516 (and tp!927303 tp!927304))))

(declare-fun b!2889407 () Bool)

(assert (=> b!2889407 (= e!1826516 tp_is_empty!15225)))

(assert (=> b!2888616 (= tp!926665 e!1826516)))

(declare-fun b!2889410 () Bool)

(declare-fun tp!927300 () Bool)

(declare-fun tp!927301 () Bool)

(assert (=> b!2889410 (= e!1826516 (and tp!927300 tp!927301))))

(declare-fun b!2889409 () Bool)

(declare-fun tp!927302 () Bool)

(assert (=> b!2889409 (= e!1826516 tp!927302)))

(assert (= (and b!2888616 ((_ is ElementMatch!8819) (regOne!18151 (reg!9148 (regTwo!18150 r!23079))))) b!2889407))

(assert (= (and b!2888616 ((_ is Concat!14140) (regOne!18151 (reg!9148 (regTwo!18150 r!23079))))) b!2889408))

(assert (= (and b!2888616 ((_ is Star!8819) (regOne!18151 (reg!9148 (regTwo!18150 r!23079))))) b!2889409))

(assert (= (and b!2888616 ((_ is Union!8819) (regOne!18151 (reg!9148 (regTwo!18150 r!23079))))) b!2889410))

(declare-fun b!2889412 () Bool)

(declare-fun e!1826517 () Bool)

(declare-fun tp!927308 () Bool)

(declare-fun tp!927309 () Bool)

(assert (=> b!2889412 (= e!1826517 (and tp!927308 tp!927309))))

(declare-fun b!2889411 () Bool)

(assert (=> b!2889411 (= e!1826517 tp_is_empty!15225)))

(assert (=> b!2888616 (= tp!926666 e!1826517)))

(declare-fun b!2889414 () Bool)

(declare-fun tp!927305 () Bool)

(declare-fun tp!927306 () Bool)

(assert (=> b!2889414 (= e!1826517 (and tp!927305 tp!927306))))

(declare-fun b!2889413 () Bool)

(declare-fun tp!927307 () Bool)

(assert (=> b!2889413 (= e!1826517 tp!927307)))

(assert (= (and b!2888616 ((_ is ElementMatch!8819) (regTwo!18151 (reg!9148 (regTwo!18150 r!23079))))) b!2889411))

(assert (= (and b!2888616 ((_ is Concat!14140) (regTwo!18151 (reg!9148 (regTwo!18150 r!23079))))) b!2889412))

(assert (= (and b!2888616 ((_ is Star!8819) (regTwo!18151 (reg!9148 (regTwo!18150 r!23079))))) b!2889413))

(assert (= (and b!2888616 ((_ is Union!8819) (regTwo!18151 (reg!9148 (regTwo!18150 r!23079))))) b!2889414))

(declare-fun b!2889416 () Bool)

(declare-fun e!1826518 () Bool)

(declare-fun tp!927313 () Bool)

(declare-fun tp!927314 () Bool)

(assert (=> b!2889416 (= e!1826518 (and tp!927313 tp!927314))))

(declare-fun b!2889415 () Bool)

(assert (=> b!2889415 (= e!1826518 tp_is_empty!15225)))

(assert (=> b!2888660 (= tp!926715 e!1826518)))

(declare-fun b!2889418 () Bool)

(declare-fun tp!927310 () Bool)

(declare-fun tp!927311 () Bool)

(assert (=> b!2889418 (= e!1826518 (and tp!927310 tp!927311))))

(declare-fun b!2889417 () Bool)

(declare-fun tp!927312 () Bool)

(assert (=> b!2889417 (= e!1826518 tp!927312)))

(assert (= (and b!2888660 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889415))

(assert (= (and b!2888660 ((_ is Concat!14140) (regOne!18151 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889416))

(assert (= (and b!2888660 ((_ is Star!8819) (regOne!18151 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889417))

(assert (= (and b!2888660 ((_ is Union!8819) (regOne!18151 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889418))

(declare-fun b!2889420 () Bool)

(declare-fun e!1826519 () Bool)

(declare-fun tp!927318 () Bool)

(declare-fun tp!927319 () Bool)

(assert (=> b!2889420 (= e!1826519 (and tp!927318 tp!927319))))

(declare-fun b!2889419 () Bool)

(assert (=> b!2889419 (= e!1826519 tp_is_empty!15225)))

(assert (=> b!2888660 (= tp!926716 e!1826519)))

(declare-fun b!2889422 () Bool)

(declare-fun tp!927315 () Bool)

(declare-fun tp!927316 () Bool)

(assert (=> b!2889422 (= e!1826519 (and tp!927315 tp!927316))))

(declare-fun b!2889421 () Bool)

(declare-fun tp!927317 () Bool)

(assert (=> b!2889421 (= e!1826519 tp!927317)))

(assert (= (and b!2888660 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889419))

(assert (= (and b!2888660 ((_ is Concat!14140) (regTwo!18151 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889420))

(assert (= (and b!2888660 ((_ is Star!8819) (regTwo!18151 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889421))

(assert (= (and b!2888660 ((_ is Union!8819) (regTwo!18151 (regTwo!18150 (regTwo!18150 r!23079))))) b!2889422))

(declare-fun b!2889424 () Bool)

(declare-fun e!1826520 () Bool)

(declare-fun tp!927323 () Bool)

(declare-fun tp!927324 () Bool)

(assert (=> b!2889424 (= e!1826520 (and tp!927323 tp!927324))))

(declare-fun b!2889423 () Bool)

(assert (=> b!2889423 (= e!1826520 tp_is_empty!15225)))

(assert (=> b!2888600 (= tp!926645 e!1826520)))

(declare-fun b!2889426 () Bool)

(declare-fun tp!927320 () Bool)

(declare-fun tp!927321 () Bool)

(assert (=> b!2889426 (= e!1826520 (and tp!927320 tp!927321))))

(declare-fun b!2889425 () Bool)

(declare-fun tp!927322 () Bool)

(assert (=> b!2889425 (= e!1826520 tp!927322)))

(assert (= (and b!2888600 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18150 (reg!9148 r!23079))))) b!2889423))

(assert (= (and b!2888600 ((_ is Concat!14140) (regOne!18151 (regOne!18150 (reg!9148 r!23079))))) b!2889424))

(assert (= (and b!2888600 ((_ is Star!8819) (regOne!18151 (regOne!18150 (reg!9148 r!23079))))) b!2889425))

(assert (= (and b!2888600 ((_ is Union!8819) (regOne!18151 (regOne!18150 (reg!9148 r!23079))))) b!2889426))

(declare-fun b!2889428 () Bool)

(declare-fun e!1826521 () Bool)

(declare-fun tp!927328 () Bool)

(declare-fun tp!927329 () Bool)

(assert (=> b!2889428 (= e!1826521 (and tp!927328 tp!927329))))

(declare-fun b!2889427 () Bool)

(assert (=> b!2889427 (= e!1826521 tp_is_empty!15225)))

(assert (=> b!2888600 (= tp!926646 e!1826521)))

(declare-fun b!2889430 () Bool)

(declare-fun tp!927325 () Bool)

(declare-fun tp!927326 () Bool)

(assert (=> b!2889430 (= e!1826521 (and tp!927325 tp!927326))))

(declare-fun b!2889429 () Bool)

(declare-fun tp!927327 () Bool)

(assert (=> b!2889429 (= e!1826521 tp!927327)))

(assert (= (and b!2888600 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18150 (reg!9148 r!23079))))) b!2889427))

(assert (= (and b!2888600 ((_ is Concat!14140) (regTwo!18151 (regOne!18150 (reg!9148 r!23079))))) b!2889428))

(assert (= (and b!2888600 ((_ is Star!8819) (regTwo!18151 (regOne!18150 (reg!9148 r!23079))))) b!2889429))

(assert (= (and b!2888600 ((_ is Union!8819) (regTwo!18151 (regOne!18150 (reg!9148 r!23079))))) b!2889430))

(declare-fun b!2889432 () Bool)

(declare-fun e!1826522 () Bool)

(declare-fun tp!927333 () Bool)

(declare-fun tp!927334 () Bool)

(assert (=> b!2889432 (= e!1826522 (and tp!927333 tp!927334))))

(declare-fun b!2889431 () Bool)

(assert (=> b!2889431 (= e!1826522 tp_is_empty!15225)))

(assert (=> b!2888591 (= tp!926637 e!1826522)))

(declare-fun b!2889434 () Bool)

(declare-fun tp!927330 () Bool)

(declare-fun tp!927331 () Bool)

(assert (=> b!2889434 (= e!1826522 (and tp!927330 tp!927331))))

(declare-fun b!2889433 () Bool)

(declare-fun tp!927332 () Bool)

(assert (=> b!2889433 (= e!1826522 tp!927332)))

(assert (= (and b!2888591 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18150 (regOne!18151 r!23079))))) b!2889431))

(assert (= (and b!2888591 ((_ is Concat!14140) (reg!9148 (regTwo!18150 (regOne!18151 r!23079))))) b!2889432))

(assert (= (and b!2888591 ((_ is Star!8819) (reg!9148 (regTwo!18150 (regOne!18151 r!23079))))) b!2889433))

(assert (= (and b!2888591 ((_ is Union!8819) (reg!9148 (regTwo!18150 (regOne!18151 r!23079))))) b!2889434))

(declare-fun b!2889436 () Bool)

(declare-fun e!1826523 () Bool)

(declare-fun tp!927338 () Bool)

(declare-fun tp!927339 () Bool)

(assert (=> b!2889436 (= e!1826523 (and tp!927338 tp!927339))))

(declare-fun b!2889435 () Bool)

(assert (=> b!2889435 (= e!1826523 tp_is_empty!15225)))

(assert (=> b!2888666 (= tp!926728 e!1826523)))

(declare-fun b!2889438 () Bool)

(declare-fun tp!927335 () Bool)

(declare-fun tp!927336 () Bool)

(assert (=> b!2889438 (= e!1826523 (and tp!927335 tp!927336))))

(declare-fun b!2889437 () Bool)

(declare-fun tp!927337 () Bool)

(assert (=> b!2889437 (= e!1826523 tp!927337)))

(assert (= (and b!2888666 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18151 (regOne!18151 r!23079))))) b!2889435))

(assert (= (and b!2888666 ((_ is Concat!14140) (regOne!18150 (regOne!18151 (regOne!18151 r!23079))))) b!2889436))

(assert (= (and b!2888666 ((_ is Star!8819) (regOne!18150 (regOne!18151 (regOne!18151 r!23079))))) b!2889437))

(assert (= (and b!2888666 ((_ is Union!8819) (regOne!18150 (regOne!18151 (regOne!18151 r!23079))))) b!2889438))

(declare-fun b!2889440 () Bool)

(declare-fun e!1826524 () Bool)

(declare-fun tp!927343 () Bool)

(declare-fun tp!927344 () Bool)

(assert (=> b!2889440 (= e!1826524 (and tp!927343 tp!927344))))

(declare-fun b!2889439 () Bool)

(assert (=> b!2889439 (= e!1826524 tp_is_empty!15225)))

(assert (=> b!2888666 (= tp!926729 e!1826524)))

(declare-fun b!2889442 () Bool)

(declare-fun tp!927340 () Bool)

(declare-fun tp!927341 () Bool)

(assert (=> b!2889442 (= e!1826524 (and tp!927340 tp!927341))))

(declare-fun b!2889441 () Bool)

(declare-fun tp!927342 () Bool)

(assert (=> b!2889441 (= e!1826524 tp!927342)))

(assert (= (and b!2888666 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18151 (regOne!18151 r!23079))))) b!2889439))

(assert (= (and b!2888666 ((_ is Concat!14140) (regTwo!18150 (regOne!18151 (regOne!18151 r!23079))))) b!2889440))

(assert (= (and b!2888666 ((_ is Star!8819) (regTwo!18150 (regOne!18151 (regOne!18151 r!23079))))) b!2889441))

(assert (= (and b!2888666 ((_ is Union!8819) (regTwo!18150 (regOne!18151 (regOne!18151 r!23079))))) b!2889442))

(declare-fun b!2889444 () Bool)

(declare-fun e!1826525 () Bool)

(declare-fun tp!927348 () Bool)

(declare-fun tp!927349 () Bool)

(assert (=> b!2889444 (= e!1826525 (and tp!927348 tp!927349))))

(declare-fun b!2889443 () Bool)

(assert (=> b!2889443 (= e!1826525 tp_is_empty!15225)))

(assert (=> b!2888668 (= tp!926725 e!1826525)))

(declare-fun b!2889446 () Bool)

(declare-fun tp!927345 () Bool)

(declare-fun tp!927346 () Bool)

(assert (=> b!2889446 (= e!1826525 (and tp!927345 tp!927346))))

(declare-fun b!2889445 () Bool)

(declare-fun tp!927347 () Bool)

(assert (=> b!2889445 (= e!1826525 tp!927347)))

(assert (= (and b!2888668 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18151 (regOne!18151 r!23079))))) b!2889443))

(assert (= (and b!2888668 ((_ is Concat!14140) (regOne!18151 (regOne!18151 (regOne!18151 r!23079))))) b!2889444))

(assert (= (and b!2888668 ((_ is Star!8819) (regOne!18151 (regOne!18151 (regOne!18151 r!23079))))) b!2889445))

(assert (= (and b!2888668 ((_ is Union!8819) (regOne!18151 (regOne!18151 (regOne!18151 r!23079))))) b!2889446))

(declare-fun b!2889448 () Bool)

(declare-fun e!1826526 () Bool)

(declare-fun tp!927353 () Bool)

(declare-fun tp!927354 () Bool)

(assert (=> b!2889448 (= e!1826526 (and tp!927353 tp!927354))))

(declare-fun b!2889447 () Bool)

(assert (=> b!2889447 (= e!1826526 tp_is_empty!15225)))

(assert (=> b!2888668 (= tp!926726 e!1826526)))

(declare-fun b!2889450 () Bool)

(declare-fun tp!927350 () Bool)

(declare-fun tp!927351 () Bool)

(assert (=> b!2889450 (= e!1826526 (and tp!927350 tp!927351))))

(declare-fun b!2889449 () Bool)

(declare-fun tp!927352 () Bool)

(assert (=> b!2889449 (= e!1826526 tp!927352)))

(assert (= (and b!2888668 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18151 (regOne!18151 r!23079))))) b!2889447))

(assert (= (and b!2888668 ((_ is Concat!14140) (regTwo!18151 (regOne!18151 (regOne!18151 r!23079))))) b!2889448))

(assert (= (and b!2888668 ((_ is Star!8819) (regTwo!18151 (regOne!18151 (regOne!18151 r!23079))))) b!2889449))

(assert (= (and b!2888668 ((_ is Union!8819) (regTwo!18151 (regOne!18151 (regOne!18151 r!23079))))) b!2889450))

(declare-fun b!2889452 () Bool)

(declare-fun e!1826527 () Bool)

(declare-fun tp!927358 () Bool)

(declare-fun tp!927359 () Bool)

(assert (=> b!2889452 (= e!1826527 (and tp!927358 tp!927359))))

(declare-fun b!2889451 () Bool)

(assert (=> b!2889451 (= e!1826527 tp_is_empty!15225)))

(assert (=> b!2888643 (= tp!926697 e!1826527)))

(declare-fun b!2889454 () Bool)

(declare-fun tp!927355 () Bool)

(declare-fun tp!927356 () Bool)

(assert (=> b!2889454 (= e!1826527 (and tp!927355 tp!927356))))

(declare-fun b!2889453 () Bool)

(declare-fun tp!927357 () Bool)

(assert (=> b!2889453 (= e!1826527 tp!927357)))

(assert (= (and b!2888643 ((_ is ElementMatch!8819) (reg!9148 (reg!9148 (regOne!18151 r!23079))))) b!2889451))

(assert (= (and b!2888643 ((_ is Concat!14140) (reg!9148 (reg!9148 (regOne!18151 r!23079))))) b!2889452))

(assert (= (and b!2888643 ((_ is Star!8819) (reg!9148 (reg!9148 (regOne!18151 r!23079))))) b!2889453))

(assert (= (and b!2888643 ((_ is Union!8819) (reg!9148 (reg!9148 (regOne!18151 r!23079))))) b!2889454))

(declare-fun b!2889456 () Bool)

(declare-fun e!1826528 () Bool)

(declare-fun tp!927363 () Bool)

(declare-fun tp!927364 () Bool)

(assert (=> b!2889456 (= e!1826528 (and tp!927363 tp!927364))))

(declare-fun b!2889455 () Bool)

(assert (=> b!2889455 (= e!1826528 tp_is_empty!15225)))

(assert (=> b!2888575 (= tp!926622 e!1826528)))

(declare-fun b!2889458 () Bool)

(declare-fun tp!927360 () Bool)

(declare-fun tp!927361 () Bool)

(assert (=> b!2889458 (= e!1826528 (and tp!927360 tp!927361))))

(declare-fun b!2889457 () Bool)

(declare-fun tp!927362 () Bool)

(assert (=> b!2889457 (= e!1826528 tp!927362)))

(assert (= (and b!2888575 ((_ is ElementMatch!8819) (reg!9148 (regOne!18151 (regOne!18150 r!23079))))) b!2889455))

(assert (= (and b!2888575 ((_ is Concat!14140) (reg!9148 (regOne!18151 (regOne!18150 r!23079))))) b!2889456))

(assert (= (and b!2888575 ((_ is Star!8819) (reg!9148 (regOne!18151 (regOne!18150 r!23079))))) b!2889457))

(assert (= (and b!2888575 ((_ is Union!8819) (reg!9148 (regOne!18151 (regOne!18150 r!23079))))) b!2889458))

(declare-fun b!2889460 () Bool)

(declare-fun e!1826529 () Bool)

(declare-fun tp!927368 () Bool)

(declare-fun tp!927369 () Bool)

(assert (=> b!2889460 (= e!1826529 (and tp!927368 tp!927369))))

(declare-fun b!2889459 () Bool)

(assert (=> b!2889459 (= e!1826529 tp_is_empty!15225)))

(assert (=> b!2888627 (= tp!926682 e!1826529)))

(declare-fun b!2889462 () Bool)

(declare-fun tp!927365 () Bool)

(declare-fun tp!927366 () Bool)

(assert (=> b!2889462 (= e!1826529 (and tp!927365 tp!927366))))

(declare-fun b!2889461 () Bool)

(declare-fun tp!927367 () Bool)

(assert (=> b!2889461 (= e!1826529 tp!927367)))

(assert (= (and b!2888627 ((_ is ElementMatch!8819) (reg!9148 (reg!9148 (regOne!18150 r!23079))))) b!2889459))

(assert (= (and b!2888627 ((_ is Concat!14140) (reg!9148 (reg!9148 (regOne!18150 r!23079))))) b!2889460))

(assert (= (and b!2888627 ((_ is Star!8819) (reg!9148 (reg!9148 (regOne!18150 r!23079))))) b!2889461))

(assert (= (and b!2888627 ((_ is Union!8819) (reg!9148 (reg!9148 (regOne!18150 r!23079))))) b!2889462))

(declare-fun b!2889464 () Bool)

(declare-fun e!1826530 () Bool)

(declare-fun tp!927373 () Bool)

(declare-fun tp!927374 () Bool)

(assert (=> b!2889464 (= e!1826530 (and tp!927373 tp!927374))))

(declare-fun b!2889463 () Bool)

(assert (=> b!2889463 (= e!1826530 tp_is_empty!15225)))

(assert (=> b!2888694 (= tp!926743 e!1826530)))

(declare-fun b!2889466 () Bool)

(declare-fun tp!927370 () Bool)

(declare-fun tp!927371 () Bool)

(assert (=> b!2889466 (= e!1826530 (and tp!927370 tp!927371))))

(declare-fun b!2889465 () Bool)

(declare-fun tp!927372 () Bool)

(assert (=> b!2889465 (= e!1826530 tp!927372)))

(assert (= (and b!2888694 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18150 (regOne!18150 r!23079))))) b!2889463))

(assert (= (and b!2888694 ((_ is Concat!14140) (regOne!18150 (regTwo!18150 (regOne!18150 r!23079))))) b!2889464))

(assert (= (and b!2888694 ((_ is Star!8819) (regOne!18150 (regTwo!18150 (regOne!18150 r!23079))))) b!2889465))

(assert (= (and b!2888694 ((_ is Union!8819) (regOne!18150 (regTwo!18150 (regOne!18150 r!23079))))) b!2889466))

(declare-fun b!2889468 () Bool)

(declare-fun e!1826531 () Bool)

(declare-fun tp!927378 () Bool)

(declare-fun tp!927379 () Bool)

(assert (=> b!2889468 (= e!1826531 (and tp!927378 tp!927379))))

(declare-fun b!2889467 () Bool)

(assert (=> b!2889467 (= e!1826531 tp_is_empty!15225)))

(assert (=> b!2888694 (= tp!926744 e!1826531)))

(declare-fun b!2889470 () Bool)

(declare-fun tp!927375 () Bool)

(declare-fun tp!927376 () Bool)

(assert (=> b!2889470 (= e!1826531 (and tp!927375 tp!927376))))

(declare-fun b!2889469 () Bool)

(declare-fun tp!927377 () Bool)

(assert (=> b!2889469 (= e!1826531 tp!927377)))

(assert (= (and b!2888694 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18150 (regOne!18150 r!23079))))) b!2889467))

(assert (= (and b!2888694 ((_ is Concat!14140) (regTwo!18150 (regTwo!18150 (regOne!18150 r!23079))))) b!2889468))

(assert (= (and b!2888694 ((_ is Star!8819) (regTwo!18150 (regTwo!18150 (regOne!18150 r!23079))))) b!2889469))

(assert (= (and b!2888694 ((_ is Union!8819) (regTwo!18150 (regTwo!18150 (regOne!18150 r!23079))))) b!2889470))

(declare-fun b!2889472 () Bool)

(declare-fun e!1826532 () Bool)

(declare-fun tp!927383 () Bool)

(declare-fun tp!927384 () Bool)

(assert (=> b!2889472 (= e!1826532 (and tp!927383 tp!927384))))

(declare-fun b!2889471 () Bool)

(assert (=> b!2889471 (= e!1826532 tp_is_empty!15225)))

(assert (=> b!2888687 (= tp!926732 e!1826532)))

(declare-fun b!2889474 () Bool)

(declare-fun tp!927380 () Bool)

(declare-fun tp!927381 () Bool)

(assert (=> b!2889474 (= e!1826532 (and tp!927380 tp!927381))))

(declare-fun b!2889473 () Bool)

(declare-fun tp!927382 () Bool)

(assert (=> b!2889473 (= e!1826532 tp!927382)))

(assert (= (and b!2888687 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18151 (regOne!18151 r!23079))))) b!2889471))

(assert (= (and b!2888687 ((_ is Concat!14140) (reg!9148 (regTwo!18151 (regOne!18151 r!23079))))) b!2889472))

(assert (= (and b!2888687 ((_ is Star!8819) (reg!9148 (regTwo!18151 (regOne!18151 r!23079))))) b!2889473))

(assert (= (and b!2888687 ((_ is Union!8819) (reg!9148 (regTwo!18151 (regOne!18151 r!23079))))) b!2889474))

(declare-fun b!2889476 () Bool)

(declare-fun e!1826533 () Bool)

(declare-fun tp!927388 () Bool)

(declare-fun tp!927389 () Bool)

(assert (=> b!2889476 (= e!1826533 (and tp!927388 tp!927389))))

(declare-fun b!2889475 () Bool)

(assert (=> b!2889475 (= e!1826533 tp_is_empty!15225)))

(assert (=> b!2888696 (= tp!926740 e!1826533)))

(declare-fun b!2889478 () Bool)

(declare-fun tp!927385 () Bool)

(declare-fun tp!927386 () Bool)

(assert (=> b!2889478 (= e!1826533 (and tp!927385 tp!927386))))

(declare-fun b!2889477 () Bool)

(declare-fun tp!927387 () Bool)

(assert (=> b!2889477 (= e!1826533 tp!927387)))

(assert (= (and b!2888696 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18150 (regOne!18150 r!23079))))) b!2889475))

(assert (= (and b!2888696 ((_ is Concat!14140) (regOne!18151 (regTwo!18150 (regOne!18150 r!23079))))) b!2889476))

(assert (= (and b!2888696 ((_ is Star!8819) (regOne!18151 (regTwo!18150 (regOne!18150 r!23079))))) b!2889477))

(assert (= (and b!2888696 ((_ is Union!8819) (regOne!18151 (regTwo!18150 (regOne!18150 r!23079))))) b!2889478))

(declare-fun b!2889480 () Bool)

(declare-fun e!1826534 () Bool)

(declare-fun tp!927393 () Bool)

(declare-fun tp!927394 () Bool)

(assert (=> b!2889480 (= e!1826534 (and tp!927393 tp!927394))))

(declare-fun b!2889479 () Bool)

(assert (=> b!2889479 (= e!1826534 tp_is_empty!15225)))

(assert (=> b!2888696 (= tp!926741 e!1826534)))

(declare-fun b!2889482 () Bool)

(declare-fun tp!927390 () Bool)

(declare-fun tp!927391 () Bool)

(assert (=> b!2889482 (= e!1826534 (and tp!927390 tp!927391))))

(declare-fun b!2889481 () Bool)

(declare-fun tp!927392 () Bool)

(assert (=> b!2889481 (= e!1826534 tp!927392)))

(assert (= (and b!2888696 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18150 (regOne!18150 r!23079))))) b!2889479))

(assert (= (and b!2888696 ((_ is Concat!14140) (regTwo!18151 (regTwo!18150 (regOne!18150 r!23079))))) b!2889480))

(assert (= (and b!2888696 ((_ is Star!8819) (regTwo!18151 (regTwo!18150 (regOne!18150 r!23079))))) b!2889481))

(assert (= (and b!2888696 ((_ is Union!8819) (regTwo!18151 (regTwo!18150 (regOne!18150 r!23079))))) b!2889482))

(declare-fun b!2889484 () Bool)

(declare-fun e!1826535 () Bool)

(declare-fun tp!927398 () Bool)

(declare-fun tp!927399 () Bool)

(assert (=> b!2889484 (= e!1826535 (and tp!927398 tp!927399))))

(declare-fun b!2889483 () Bool)

(assert (=> b!2889483 (= e!1826535 tp_is_empty!15225)))

(assert (=> b!2888618 (= tp!926673 e!1826535)))

(declare-fun b!2889486 () Bool)

(declare-fun tp!927395 () Bool)

(declare-fun tp!927396 () Bool)

(assert (=> b!2889486 (= e!1826535 (and tp!927395 tp!927396))))

(declare-fun b!2889485 () Bool)

(declare-fun tp!927397 () Bool)

(assert (=> b!2889485 (= e!1826535 tp!927397)))

(assert (= (and b!2888618 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18151 (reg!9148 r!23079))))) b!2889483))

(assert (= (and b!2888618 ((_ is Concat!14140) (regOne!18150 (regOne!18151 (reg!9148 r!23079))))) b!2889484))

(assert (= (and b!2888618 ((_ is Star!8819) (regOne!18150 (regOne!18151 (reg!9148 r!23079))))) b!2889485))

(assert (= (and b!2888618 ((_ is Union!8819) (regOne!18150 (regOne!18151 (reg!9148 r!23079))))) b!2889486))

(declare-fun b!2889488 () Bool)

(declare-fun e!1826536 () Bool)

(declare-fun tp!927403 () Bool)

(declare-fun tp!927404 () Bool)

(assert (=> b!2889488 (= e!1826536 (and tp!927403 tp!927404))))

(declare-fun b!2889487 () Bool)

(assert (=> b!2889487 (= e!1826536 tp_is_empty!15225)))

(assert (=> b!2888618 (= tp!926674 e!1826536)))

(declare-fun b!2889490 () Bool)

(declare-fun tp!927400 () Bool)

(declare-fun tp!927401 () Bool)

(assert (=> b!2889490 (= e!1826536 (and tp!927400 tp!927401))))

(declare-fun b!2889489 () Bool)

(declare-fun tp!927402 () Bool)

(assert (=> b!2889489 (= e!1826536 tp!927402)))

(assert (= (and b!2888618 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18151 (reg!9148 r!23079))))) b!2889487))

(assert (= (and b!2888618 ((_ is Concat!14140) (regTwo!18150 (regOne!18151 (reg!9148 r!23079))))) b!2889488))

(assert (= (and b!2888618 ((_ is Star!8819) (regTwo!18150 (regOne!18151 (reg!9148 r!23079))))) b!2889489))

(assert (= (and b!2888618 ((_ is Union!8819) (regTwo!18150 (regOne!18151 (reg!9148 r!23079))))) b!2889490))

(declare-fun b!2889492 () Bool)

(declare-fun e!1826537 () Bool)

(declare-fun tp!927408 () Bool)

(declare-fun tp!927409 () Bool)

(assert (=> b!2889492 (= e!1826537 (and tp!927408 tp!927409))))

(declare-fun b!2889491 () Bool)

(assert (=> b!2889491 (= e!1826537 tp_is_empty!15225)))

(assert (=> b!2888602 (= tp!926653 e!1826537)))

(declare-fun b!2889494 () Bool)

(declare-fun tp!927405 () Bool)

(declare-fun tp!927406 () Bool)

(assert (=> b!2889494 (= e!1826537 (and tp!927405 tp!927406))))

(declare-fun b!2889493 () Bool)

(declare-fun tp!927407 () Bool)

(assert (=> b!2889493 (= e!1826537 tp!927407)))

(assert (= (and b!2888602 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18150 (reg!9148 r!23079))))) b!2889491))

(assert (= (and b!2888602 ((_ is Concat!14140) (regOne!18150 (regTwo!18150 (reg!9148 r!23079))))) b!2889492))

(assert (= (and b!2888602 ((_ is Star!8819) (regOne!18150 (regTwo!18150 (reg!9148 r!23079))))) b!2889493))

(assert (= (and b!2888602 ((_ is Union!8819) (regOne!18150 (regTwo!18150 (reg!9148 r!23079))))) b!2889494))

(declare-fun b!2889496 () Bool)

(declare-fun e!1826538 () Bool)

(declare-fun tp!927413 () Bool)

(declare-fun tp!927414 () Bool)

(assert (=> b!2889496 (= e!1826538 (and tp!927413 tp!927414))))

(declare-fun b!2889495 () Bool)

(assert (=> b!2889495 (= e!1826538 tp_is_empty!15225)))

(assert (=> b!2888602 (= tp!926654 e!1826538)))

(declare-fun b!2889498 () Bool)

(declare-fun tp!927410 () Bool)

(declare-fun tp!927411 () Bool)

(assert (=> b!2889498 (= e!1826538 (and tp!927410 tp!927411))))

(declare-fun b!2889497 () Bool)

(declare-fun tp!927412 () Bool)

(assert (=> b!2889497 (= e!1826538 tp!927412)))

(assert (= (and b!2888602 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18150 (reg!9148 r!23079))))) b!2889495))

(assert (= (and b!2888602 ((_ is Concat!14140) (regTwo!18150 (regTwo!18150 (reg!9148 r!23079))))) b!2889496))

(assert (= (and b!2888602 ((_ is Star!8819) (regTwo!18150 (regTwo!18150 (reg!9148 r!23079))))) b!2889497))

(assert (= (and b!2888602 ((_ is Union!8819) (regTwo!18150 (regTwo!18150 (reg!9148 r!23079))))) b!2889498))

(declare-fun b!2889500 () Bool)

(declare-fun e!1826539 () Bool)

(declare-fun tp!927418 () Bool)

(declare-fun tp!927419 () Bool)

(assert (=> b!2889500 (= e!1826539 (and tp!927418 tp!927419))))

(declare-fun b!2889499 () Bool)

(assert (=> b!2889499 (= e!1826539 tp_is_empty!15225)))

(assert (=> b!2888655 (= tp!926712 e!1826539)))

(declare-fun b!2889502 () Bool)

(declare-fun tp!927415 () Bool)

(declare-fun tp!927416 () Bool)

(assert (=> b!2889502 (= e!1826539 (and tp!927415 tp!927416))))

(declare-fun b!2889501 () Bool)

(declare-fun tp!927417 () Bool)

(assert (=> b!2889501 (= e!1826539 tp!927417)))

(assert (= (and b!2888655 ((_ is ElementMatch!8819) (reg!9148 (regOne!18150 (regTwo!18150 r!23079))))) b!2889499))

(assert (= (and b!2888655 ((_ is Concat!14140) (reg!9148 (regOne!18150 (regTwo!18150 r!23079))))) b!2889500))

(assert (= (and b!2888655 ((_ is Star!8819) (reg!9148 (regOne!18150 (regTwo!18150 r!23079))))) b!2889501))

(assert (= (and b!2888655 ((_ is Union!8819) (reg!9148 (regOne!18150 (regTwo!18150 r!23079))))) b!2889502))

(declare-fun b!2889504 () Bool)

(declare-fun e!1826540 () Bool)

(declare-fun tp!927423 () Bool)

(declare-fun tp!927424 () Bool)

(assert (=> b!2889504 (= e!1826540 (and tp!927423 tp!927424))))

(declare-fun b!2889503 () Bool)

(assert (=> b!2889503 (= e!1826540 tp_is_empty!15225)))

(assert (=> b!2888620 (= tp!926670 e!1826540)))

(declare-fun b!2889506 () Bool)

(declare-fun tp!927420 () Bool)

(declare-fun tp!927421 () Bool)

(assert (=> b!2889506 (= e!1826540 (and tp!927420 tp!927421))))

(declare-fun b!2889505 () Bool)

(declare-fun tp!927422 () Bool)

(assert (=> b!2889505 (= e!1826540 tp!927422)))

(assert (= (and b!2888620 ((_ is ElementMatch!8819) (regOne!18151 (regOne!18151 (reg!9148 r!23079))))) b!2889503))

(assert (= (and b!2888620 ((_ is Concat!14140) (regOne!18151 (regOne!18151 (reg!9148 r!23079))))) b!2889504))

(assert (= (and b!2888620 ((_ is Star!8819) (regOne!18151 (regOne!18151 (reg!9148 r!23079))))) b!2889505))

(assert (= (and b!2888620 ((_ is Union!8819) (regOne!18151 (regOne!18151 (reg!9148 r!23079))))) b!2889506))

(declare-fun b!2889508 () Bool)

(declare-fun e!1826541 () Bool)

(declare-fun tp!927428 () Bool)

(declare-fun tp!927429 () Bool)

(assert (=> b!2889508 (= e!1826541 (and tp!927428 tp!927429))))

(declare-fun b!2889507 () Bool)

(assert (=> b!2889507 (= e!1826541 tp_is_empty!15225)))

(assert (=> b!2888620 (= tp!926671 e!1826541)))

(declare-fun b!2889510 () Bool)

(declare-fun tp!927425 () Bool)

(declare-fun tp!927426 () Bool)

(assert (=> b!2889510 (= e!1826541 (and tp!927425 tp!927426))))

(declare-fun b!2889509 () Bool)

(declare-fun tp!927427 () Bool)

(assert (=> b!2889509 (= e!1826541 tp!927427)))

(assert (= (and b!2888620 ((_ is ElementMatch!8819) (regTwo!18151 (regOne!18151 (reg!9148 r!23079))))) b!2889507))

(assert (= (and b!2888620 ((_ is Concat!14140) (regTwo!18151 (regOne!18151 (reg!9148 r!23079))))) b!2889508))

(assert (= (and b!2888620 ((_ is Star!8819) (regTwo!18151 (regOne!18151 (reg!9148 r!23079))))) b!2889509))

(assert (= (and b!2888620 ((_ is Union!8819) (regTwo!18151 (regOne!18151 (reg!9148 r!23079))))) b!2889510))

(declare-fun b!2889512 () Bool)

(declare-fun e!1826542 () Bool)

(declare-fun tp!927433 () Bool)

(declare-fun tp!927434 () Bool)

(assert (=> b!2889512 (= e!1826542 (and tp!927433 tp!927434))))

(declare-fun b!2889511 () Bool)

(assert (=> b!2889511 (= e!1826542 tp_is_empty!15225)))

(assert (=> b!2888584 (= tp!926633 e!1826542)))

(declare-fun b!2889514 () Bool)

(declare-fun tp!927430 () Bool)

(declare-fun tp!927431 () Bool)

(assert (=> b!2889514 (= e!1826542 (and tp!927430 tp!927431))))

(declare-fun b!2889513 () Bool)

(declare-fun tp!927432 () Bool)

(assert (=> b!2889513 (= e!1826542 tp!927432)))

(assert (= (and b!2888584 ((_ is ElementMatch!8819) (regOne!18150 (regOne!18150 (regOne!18151 r!23079))))) b!2889511))

(assert (= (and b!2888584 ((_ is Concat!14140) (regOne!18150 (regOne!18150 (regOne!18151 r!23079))))) b!2889512))

(assert (= (and b!2888584 ((_ is Star!8819) (regOne!18150 (regOne!18150 (regOne!18151 r!23079))))) b!2889513))

(assert (= (and b!2888584 ((_ is Union!8819) (regOne!18150 (regOne!18150 (regOne!18151 r!23079))))) b!2889514))

(declare-fun b!2889516 () Bool)

(declare-fun e!1826543 () Bool)

(declare-fun tp!927438 () Bool)

(declare-fun tp!927439 () Bool)

(assert (=> b!2889516 (= e!1826543 (and tp!927438 tp!927439))))

(declare-fun b!2889515 () Bool)

(assert (=> b!2889515 (= e!1826543 tp_is_empty!15225)))

(assert (=> b!2888584 (= tp!926634 e!1826543)))

(declare-fun b!2889518 () Bool)

(declare-fun tp!927435 () Bool)

(declare-fun tp!927436 () Bool)

(assert (=> b!2889518 (= e!1826543 (and tp!927435 tp!927436))))

(declare-fun b!2889517 () Bool)

(declare-fun tp!927437 () Bool)

(assert (=> b!2889517 (= e!1826543 tp!927437)))

(assert (= (and b!2888584 ((_ is ElementMatch!8819) (regTwo!18150 (regOne!18150 (regOne!18151 r!23079))))) b!2889515))

(assert (= (and b!2888584 ((_ is Concat!14140) (regTwo!18150 (regOne!18150 (regOne!18151 r!23079))))) b!2889516))

(assert (= (and b!2888584 ((_ is Star!8819) (regTwo!18150 (regOne!18150 (regOne!18151 r!23079))))) b!2889517))

(assert (= (and b!2888584 ((_ is Union!8819) (regTwo!18150 (regOne!18150 (regOne!18151 r!23079))))) b!2889518))

(declare-fun b!2889520 () Bool)

(declare-fun e!1826544 () Bool)

(declare-fun tp!927443 () Bool)

(declare-fun tp!927444 () Bool)

(assert (=> b!2889520 (= e!1826544 (and tp!927443 tp!927444))))

(declare-fun b!2889519 () Bool)

(assert (=> b!2889519 (= e!1826544 tp_is_empty!15225)))

(assert (=> b!2888611 (= tp!926662 e!1826544)))

(declare-fun b!2889522 () Bool)

(declare-fun tp!927440 () Bool)

(declare-fun tp!927441 () Bool)

(assert (=> b!2889522 (= e!1826544 (and tp!927440 tp!927441))))

(declare-fun b!2889521 () Bool)

(declare-fun tp!927442 () Bool)

(assert (=> b!2889521 (= e!1826544 tp!927442)))

(assert (= (and b!2888611 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889519))

(assert (= (and b!2888611 ((_ is Concat!14140) (reg!9148 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889520))

(assert (= (and b!2888611 ((_ is Star!8819) (reg!9148 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889521))

(assert (= (and b!2888611 ((_ is Union!8819) (reg!9148 (regTwo!18150 (regTwo!18151 r!23079))))) b!2889522))

(declare-fun b!2889524 () Bool)

(declare-fun e!1826545 () Bool)

(declare-fun tp!927448 () Bool)

(declare-fun tp!927449 () Bool)

(assert (=> b!2889524 (= e!1826545 (and tp!927448 tp!927449))))

(declare-fun b!2889523 () Bool)

(assert (=> b!2889523 (= e!1826545 tp_is_empty!15225)))

(assert (=> b!2888663 (= tp!926722 e!1826545)))

(declare-fun b!2889526 () Bool)

(declare-fun tp!927445 () Bool)

(declare-fun tp!927446 () Bool)

(assert (=> b!2889526 (= e!1826545 (and tp!927445 tp!927446))))

(declare-fun b!2889525 () Bool)

(declare-fun tp!927447 () Bool)

(assert (=> b!2889525 (= e!1826545 tp!927447)))

(assert (= (and b!2888663 ((_ is ElementMatch!8819) (reg!9148 (reg!9148 (reg!9148 r!23079))))) b!2889523))

(assert (= (and b!2888663 ((_ is Concat!14140) (reg!9148 (reg!9148 (reg!9148 r!23079))))) b!2889524))

(assert (= (and b!2888663 ((_ is Star!8819) (reg!9148 (reg!9148 (reg!9148 r!23079))))) b!2889525))

(assert (= (and b!2888663 ((_ is Union!8819) (reg!9148 (reg!9148 (reg!9148 r!23079))))) b!2889526))

(declare-fun b!2889528 () Bool)

(declare-fun e!1826546 () Bool)

(declare-fun tp!927453 () Bool)

(declare-fun tp!927454 () Bool)

(assert (=> b!2889528 (= e!1826546 (and tp!927453 tp!927454))))

(declare-fun b!2889527 () Bool)

(assert (=> b!2889527 (= e!1826546 tp_is_empty!15225)))

(assert (=> b!2888604 (= tp!926650 e!1826546)))

(declare-fun b!2889530 () Bool)

(declare-fun tp!927450 () Bool)

(declare-fun tp!927451 () Bool)

(assert (=> b!2889530 (= e!1826546 (and tp!927450 tp!927451))))

(declare-fun b!2889529 () Bool)

(declare-fun tp!927452 () Bool)

(assert (=> b!2889529 (= e!1826546 tp!927452)))

(assert (= (and b!2888604 ((_ is ElementMatch!8819) (regOne!18151 (regTwo!18150 (reg!9148 r!23079))))) b!2889527))

(assert (= (and b!2888604 ((_ is Concat!14140) (regOne!18151 (regTwo!18150 (reg!9148 r!23079))))) b!2889528))

(assert (= (and b!2888604 ((_ is Star!8819) (regOne!18151 (regTwo!18150 (reg!9148 r!23079))))) b!2889529))

(assert (= (and b!2888604 ((_ is Union!8819) (regOne!18151 (regTwo!18150 (reg!9148 r!23079))))) b!2889530))

(declare-fun b!2889532 () Bool)

(declare-fun e!1826547 () Bool)

(declare-fun tp!927458 () Bool)

(declare-fun tp!927459 () Bool)

(assert (=> b!2889532 (= e!1826547 (and tp!927458 tp!927459))))

(declare-fun b!2889531 () Bool)

(assert (=> b!2889531 (= e!1826547 tp_is_empty!15225)))

(assert (=> b!2888604 (= tp!926651 e!1826547)))

(declare-fun b!2889534 () Bool)

(declare-fun tp!927455 () Bool)

(declare-fun tp!927456 () Bool)

(assert (=> b!2889534 (= e!1826547 (and tp!927455 tp!927456))))

(declare-fun b!2889533 () Bool)

(declare-fun tp!927457 () Bool)

(assert (=> b!2889533 (= e!1826547 tp!927457)))

(assert (= (and b!2888604 ((_ is ElementMatch!8819) (regTwo!18151 (regTwo!18150 (reg!9148 r!23079))))) b!2889531))

(assert (= (and b!2888604 ((_ is Concat!14140) (regTwo!18151 (regTwo!18150 (reg!9148 r!23079))))) b!2889532))

(assert (= (and b!2888604 ((_ is Star!8819) (regTwo!18151 (regTwo!18150 (reg!9148 r!23079))))) b!2889533))

(assert (= (and b!2888604 ((_ is Union!8819) (regTwo!18151 (regTwo!18150 (reg!9148 r!23079))))) b!2889534))

(declare-fun b!2889536 () Bool)

(declare-fun e!1826548 () Bool)

(declare-fun tp!927463 () Bool)

(declare-fun tp!927464 () Bool)

(assert (=> b!2889536 (= e!1826548 (and tp!927463 tp!927464))))

(declare-fun b!2889535 () Bool)

(assert (=> b!2889535 (= e!1826548 tp_is_empty!15225)))

(assert (=> b!2888595 (= tp!926642 e!1826548)))

(declare-fun b!2889538 () Bool)

(declare-fun tp!927460 () Bool)

(declare-fun tp!927461 () Bool)

(assert (=> b!2889538 (= e!1826548 (and tp!927460 tp!927461))))

(declare-fun b!2889537 () Bool)

(declare-fun tp!927462 () Bool)

(assert (=> b!2889537 (= e!1826548 tp!927462)))

(assert (= (and b!2888595 ((_ is ElementMatch!8819) (reg!9148 (reg!9148 (regTwo!18151 r!23079))))) b!2889535))

(assert (= (and b!2888595 ((_ is Concat!14140) (reg!9148 (reg!9148 (regTwo!18151 r!23079))))) b!2889536))

(assert (= (and b!2888595 ((_ is Star!8819) (reg!9148 (reg!9148 (regTwo!18151 r!23079))))) b!2889537))

(assert (= (and b!2888595 ((_ is Union!8819) (reg!9148 (reg!9148 (regTwo!18151 r!23079))))) b!2889538))

(declare-fun b!2889540 () Bool)

(declare-fun e!1826549 () Bool)

(declare-fun tp!927468 () Bool)

(declare-fun tp!927469 () Bool)

(assert (=> b!2889540 (= e!1826549 (and tp!927468 tp!927469))))

(declare-fun b!2889539 () Bool)

(assert (=> b!2889539 (= e!1826549 tp_is_empty!15225)))

(assert (=> b!2888638 (= tp!926693 e!1826549)))

(declare-fun b!2889542 () Bool)

(declare-fun tp!927465 () Bool)

(declare-fun tp!927466 () Bool)

(assert (=> b!2889542 (= e!1826549 (and tp!927465 tp!927466))))

(declare-fun b!2889541 () Bool)

(declare-fun tp!927467 () Bool)

(assert (=> b!2889541 (= e!1826549 tp!927467)))

(assert (= (and b!2888638 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889539))

(assert (= (and b!2888638 ((_ is Concat!14140) (regOne!18150 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889540))

(assert (= (and b!2888638 ((_ is Star!8819) (regOne!18150 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889541))

(assert (= (and b!2888638 ((_ is Union!8819) (regOne!18150 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889542))

(declare-fun b!2889544 () Bool)

(declare-fun e!1826550 () Bool)

(declare-fun tp!927473 () Bool)

(declare-fun tp!927474 () Bool)

(assert (=> b!2889544 (= e!1826550 (and tp!927473 tp!927474))))

(declare-fun b!2889543 () Bool)

(assert (=> b!2889543 (= e!1826550 tp_is_empty!15225)))

(assert (=> b!2888638 (= tp!926694 e!1826550)))

(declare-fun b!2889546 () Bool)

(declare-fun tp!927470 () Bool)

(declare-fun tp!927471 () Bool)

(assert (=> b!2889546 (= e!1826550 (and tp!927470 tp!927471))))

(declare-fun b!2889545 () Bool)

(declare-fun tp!927472 () Bool)

(assert (=> b!2889545 (= e!1826550 tp!927472)))

(assert (= (and b!2888638 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889543))

(assert (= (and b!2888638 ((_ is Concat!14140) (regTwo!18150 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889544))

(assert (= (and b!2888638 ((_ is Star!8819) (regTwo!18150 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889545))

(assert (= (and b!2888638 ((_ is Union!8819) (regTwo!18150 (regTwo!18151 (regTwo!18150 r!23079))))) b!2889546))

(declare-fun b!2889548 () Bool)

(declare-fun e!1826551 () Bool)

(declare-fun tp!927478 () Bool)

(declare-fun tp!927479 () Bool)

(assert (=> b!2889548 (= e!1826551 (and tp!927478 tp!927479))))

(declare-fun b!2889547 () Bool)

(assert (=> b!2889547 (= e!1826551 tp_is_empty!15225)))

(assert (=> b!2888647 (= tp!926702 e!1826551)))

(declare-fun b!2889550 () Bool)

(declare-fun tp!927475 () Bool)

(declare-fun tp!927476 () Bool)

(assert (=> b!2889550 (= e!1826551 (and tp!927475 tp!927476))))

(declare-fun b!2889549 () Bool)

(declare-fun tp!927477 () Bool)

(assert (=> b!2889549 (= e!1826551 tp!927477)))

(assert (= (and b!2888647 ((_ is ElementMatch!8819) (reg!9148 (regOne!18151 (regTwo!18151 r!23079))))) b!2889547))

(assert (= (and b!2888647 ((_ is Concat!14140) (reg!9148 (regOne!18151 (regTwo!18151 r!23079))))) b!2889548))

(assert (= (and b!2888647 ((_ is Star!8819) (reg!9148 (regOne!18151 (regTwo!18151 r!23079))))) b!2889549))

(assert (= (and b!2888647 ((_ is Union!8819) (reg!9148 (regOne!18151 (regTwo!18151 r!23079))))) b!2889550))

(declare-fun b!2889552 () Bool)

(declare-fun e!1826552 () Bool)

(declare-fun tp!927483 () Bool)

(declare-fun tp!927484 () Bool)

(assert (=> b!2889552 (= e!1826552 (and tp!927483 tp!927484))))

(declare-fun b!2889551 () Bool)

(assert (=> b!2889551 (= e!1826552 tp_is_empty!15225)))

(assert (=> b!2888650 (= tp!926708 e!1826552)))

(declare-fun b!2889554 () Bool)

(declare-fun tp!927480 () Bool)

(declare-fun tp!927481 () Bool)

(assert (=> b!2889554 (= e!1826552 (and tp!927480 tp!927481))))

(declare-fun b!2889553 () Bool)

(declare-fun tp!927482 () Bool)

(assert (=> b!2889553 (= e!1826552 tp!927482)))

(assert (= (and b!2888650 ((_ is ElementMatch!8819) (regOne!18150 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889551))

(assert (= (and b!2888650 ((_ is Concat!14140) (regOne!18150 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889552))

(assert (= (and b!2888650 ((_ is Star!8819) (regOne!18150 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889553))

(assert (= (and b!2888650 ((_ is Union!8819) (regOne!18150 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889554))

(declare-fun b!2889556 () Bool)

(declare-fun e!1826553 () Bool)

(declare-fun tp!927488 () Bool)

(declare-fun tp!927489 () Bool)

(assert (=> b!2889556 (= e!1826553 (and tp!927488 tp!927489))))

(declare-fun b!2889555 () Bool)

(assert (=> b!2889555 (= e!1826553 tp_is_empty!15225)))

(assert (=> b!2888650 (= tp!926709 e!1826553)))

(declare-fun b!2889558 () Bool)

(declare-fun tp!927485 () Bool)

(declare-fun tp!927486 () Bool)

(assert (=> b!2889558 (= e!1826553 (and tp!927485 tp!927486))))

(declare-fun b!2889557 () Bool)

(declare-fun tp!927487 () Bool)

(assert (=> b!2889557 (= e!1826553 tp!927487)))

(assert (= (and b!2888650 ((_ is ElementMatch!8819) (regTwo!18150 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889555))

(assert (= (and b!2888650 ((_ is Concat!14140) (regTwo!18150 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889556))

(assert (= (and b!2888650 ((_ is Star!8819) (regTwo!18150 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889557))

(assert (= (and b!2888650 ((_ is Union!8819) (regTwo!18150 (regTwo!18151 (regTwo!18151 r!23079))))) b!2889558))

(declare-fun b!2889560 () Bool)

(declare-fun e!1826554 () Bool)

(declare-fun tp!927493 () Bool)

(declare-fun tp!927494 () Bool)

(assert (=> b!2889560 (= e!1826554 (and tp!927493 tp!927494))))

(declare-fun b!2889559 () Bool)

(assert (=> b!2889559 (= e!1826554 tp_is_empty!15225)))

(assert (=> b!2888579 (= tp!926627 e!1826554)))

(declare-fun b!2889562 () Bool)

(declare-fun tp!927490 () Bool)

(declare-fun tp!927491 () Bool)

(assert (=> b!2889562 (= e!1826554 (and tp!927490 tp!927491))))

(declare-fun b!2889561 () Bool)

(declare-fun tp!927492 () Bool)

(assert (=> b!2889561 (= e!1826554 tp!927492)))

(assert (= (and b!2888579 ((_ is ElementMatch!8819) (reg!9148 (regTwo!18151 (regOne!18150 r!23079))))) b!2889559))

(assert (= (and b!2888579 ((_ is Concat!14140) (reg!9148 (regTwo!18151 (regOne!18150 r!23079))))) b!2889560))

(assert (= (and b!2888579 ((_ is Star!8819) (reg!9148 (regTwo!18151 (regOne!18150 r!23079))))) b!2889561))

(assert (= (and b!2888579 ((_ is Union!8819) (reg!9148 (regTwo!18151 (regOne!18150 r!23079))))) b!2889562))

(check-sat (not b!2889122) (not b!2889458) (not b!2889321) (not bm!187555) (not b!2889212) (not b!2889358) (not b!2889540) (not bm!187544) (not b!2889457) (not b!2889309) (not b!2889154) (not b!2889505) (not b!2889465) (not b!2889514) (not d!834273) (not b!2889072) (not b!2889534) (not b!2889389) (not d!834307) (not bm!187541) (not b!2889249) (not b!2889456) (not b!2889150) (not b!2889220) (not b!2889100) (not b!2889225) (not b!2889193) (not b!2889346) (not b!2889285) (not b!2889477) (not b!2889204) (not b!2889221) (not b!2889490) (not b!2889132) (not b!2889161) (not b!2889336) (not b!2889208) (not b!2889180) (not b!2889138) (not b!2889304) (not bm!187548) (not b!2889081) (not b!2889352) (not b!2889357) (not b!2889489) (not b!2889421) (not b!2889316) (not b!2889470) (not b!2889288) (not b!2889330) (not b!2889218) (not b!2889537) (not b!2889394) (not b!2889541) (not b!2889332) (not d!834299) (not b!2889196) (not b!2889149) (not b!2889556) (not b!2889469) (not b!2889238) (not b!2889124) (not b!2889064) (not b!2889378) (not b!2889388) (not b!2889297) (not b!2889460) (not b!2889116) (not b!2889344) (not b!2889326) (not b!2889101) (not b!2889252) (not b!2889446) (not b!2889317) (not b!2889302) (not b!2889548) (not b!2889200) (not d!834305) (not b!2889070) (not b!2889312) (not b!2889440) (not b!2889420) (not b!2889084) (not b!2889205) (not b!2889345) (not b!2889320) (not b!2889498) (not b!2889214) (not b!2889140) (not b!2889266) (not b!2889028) (not bm!187539) (not b!2889430) (not b!2889144) (not b!2889448) (not b!2889410) (not b!2889468) (not b!2889048) (not b!2889003) (not bm!187529) (not b!2889306) (not b!2889085) (not b!2889382) (not b!2889450) (not b!2889494) (not b!2889429) (not b!2889181) (not b!2889522) (not d!834255) (not b!2888852) (not b!2889213) (not b!2889328) (not b!2889166) (not b!2889546) (not b!2889036) (not b!2889364) (not b!2889262) (not b!2889496) (not b!2889102) (not b!2889392) (not b!2889130) (not bm!187531) (not b!2889380) (not b!2889509) (not b!2889426) (not b!2889449) (not b!2889274) (not b!2889182) (not b!2889178) (not b!2889406) (not b!2889512) (not b!2889292) (not bm!187514) (not b!2889402) (not b!2889417) (not b!2889254) (not b!2888991) (not b!2889294) (not b!2889381) (not b!2889281) (not b!2889554) (not b!2889113) (not b!2889245) (not b!2889146) (not bm!187527) (not b!2889117) (not b!2889405) (not b!2889086) (not b!2889369) (not b!2889128) (not b!2889202) (not b!2889296) (not b!2889482) (not b!2889078) (not b!2889097) (not b!2889114) (not b!2889453) (not b!2889174) (not b!2889521) (not b!2889258) (not b!2889354) (not b!2889061) (not b!2889065) (not b!2889481) (not b!2889533) (not b!2889436) (not b!2889289) (not b!2889080) (not d!834275) (not b!2889549) (not bm!187540) (not b!2889374) (not b!2889226) (not b!2889544) (not b!2889525) (not b!2889230) (not bm!187528) (not b!2889545) (not b!2889341) (not b!2889192) (not b!2889516) (not b!2889305) (not b!2889076) (not bm!187553) (not b!2888979) (not b!2889201) (not b!2889094) (not b!2889558) (not b!2889228) (not b!2889253) (not b!2889248) (not b!2889133) (not b!2889338) (not b!2889454) (not b!2889444) (not bm!187519) (not b!2889244) (not bm!187537) (not b!2889492) (not b!2888987) (not bm!187545) (not b!2889145) (not b!2889461) (not b!2889137) (not b!2889552) (not b!2889126) (not b!2889438) (not b!2889077) (not b!2889176) (not b!2889073) (not b!2889422) (not b!2889257) (not b!2889237) (not b!2889356) (not b!2889177) (not b!2889530) (not b!2888941) (not b!2889265) (not b!2889445) (not b!2888877) (not b!2889234) (not b!2889325) (not b!2889109) (not b!2889190) (not b!2889158) (not b!2889197) (not b!2889241) (not b!2888954) (not b!2889261) (not b!2889553) (not b!2889396) (not b!2889106) (not b!2889092) (not b!2889462) (not b!2889168) (not b!2889561) (not b!2889529) (not b!2889324) (not b!2889314) (not b!2889397) (not b!2889089) (not b!2889508) (not b!2889361) (not b!2889409) (not b!2889060) (not b!2889256) (not b!2889277) (not b!2889164) (not b!2889088) (not b!2889506) (not b!2889526) (not b!2889504) (not b!2889264) (not b!2889390) (not b!2889045) (not b!2889082) (not b!2889210) (not b!2889385) (not b!2889286) (not b!2889093) (not b!2889242) (not b!2889484) (not b!2889517) (not b!2889313) (not b!2889156) (not b!2889348) (not b!2889090) (not b!2889368) (not b!2889074) (not b!2889120) (not b!2889270) (not bm!187530) (not b!2889282) (not b!2889198) (not b!2889194) (not bm!187517) (not b!2889510) (not bm!187515) (not b!2888989) (not b!2889209) (not b!2889185) (not b!2889298) (not b!2889472) (not b!2888940) (not b!2889216) (not b!2889184) (not b!2889377) (not b!2889148) (not b!2889157) (not b!2889342) (not b!2889416) (not b!2889404) (not b!2889136) (not b!2889334) (not b!2889425) (not bm!187534) (not b!2889188) (not b!2889413) (not b!2889532) (not b!2889240) (not b!2889442) (not b!2889550) (not b!2889518) (not bm!187551) (not bm!187550) (not b!2889562) (not b!2889473) (not b!2889142) (not b!2889452) (not b!2889474) (not b!2889424) (not b!2889365) (not b!2889362) (not bm!187532) (not b!2889121) (not b!2889096) (not d!834261) (not b!2889393) (not b!2889501) (not b!2889105) (not b!2889408) (not b!2889360) (not b!2889108) (not b!2888867) (not b!2889333) (not b!2889386) (not b!2889069) (not b!2889478) (not b!2889173) (not b!2889434) (not b!2889165) (not b!2889502) (not b!2889280) (not b!2889276) (not b!2889301) (not b!2889520) (not b!2889528) (not b!2889384) (not b!2889129) (not b!2889433) (not b!2889480) (not bm!187511) (not b!2888932) (not b!2889376) (not b!2889269) (not b!2889268) (not b!2889464) (not b!2889110) (not b!2889160) (not b!2889169) (not b!2889217) (not b!2889486) (not b!2889485) (not b!2889513) (not b!2889308) (not b!2889366) tp_is_empty!15225 (not b!2889224) (not b!2889524) (not b!2889414) (not b!2889329) (not b!2889536) (not b!2889322) (not bm!187521) (not b!2889068) (not b!2889497) (not b!2889037) (not b!2889162) (not b!2888961) (not b!2889229) (not b!2889488) (not b!2889340) (not d!834287) (not b!2889170) (not b!2889035) (not b!2889370) (not b!2889300) (not b!2889493) (not b!2889273) (not b!2889542) (not b!2889441) (not b!2889250) (not b!2888975) (not bm!187513) (not b!2889118) (not b!2888980) (not b!2889112) (not b!2889104) (not bm!187536) (not b!2889134) (not b!2889412) (not b!2889260) (not b!2889290) (not b!2889400) (not b!2889278) (not b!2889418) (not b!2889206) (not b!2889232) (not bm!187510) (not b!2888925) (not b!2889066) (not b!2889189) (not b!2889172) (not b!2889349) (not b!2889318) (not d!834311) (not b!2889222) (not b!2889236) (not bm!187552) (not b!2889398) (not b!2889141) (not b!2889500) (not b!2889152) (not b!2889401) (not b!2889186) (not b!2889246) (not d!834309) (not b!2889284) (not b!2889125) (not b!2889310) (not b!2889538) (not b!2888859) (not bm!187535) (not b!2889153) (not b!2889557) (not b!2889437) (not b!2889010) (not b!2888977) (not b!2889466) (not d!834251) (not b!2889428) (not b!2889098) (not b!2889560) (not b!2889019) (not b!2889373) (not b!2889476) (not b!2889050) (not b!2888973) (not b!2889337) (not b!2889353) (not b!2889350) (not bm!187542) (not b!2889432) (not b!2889272) (not b!2889372) (not b!2889233) (not b!2889293) (not b!2889041) (not bm!187547))
(check-sat)
