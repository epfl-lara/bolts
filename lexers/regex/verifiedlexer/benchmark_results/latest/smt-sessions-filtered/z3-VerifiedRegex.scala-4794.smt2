; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246772 () Bool)

(assert start!246772)

(declare-fun b!2539086 () Bool)

(declare-fun e!1605776 () Bool)

(declare-fun tp!811082 () Bool)

(assert (=> b!2539086 (= e!1605776 tp!811082)))

(declare-fun b!2539087 () Bool)

(declare-fun res!1070482 () Bool)

(declare-fun e!1605774 () Bool)

(assert (=> b!2539087 (=> (not res!1070482) (not e!1605774))))

(declare-datatypes ((C!15284 0))(
  ( (C!15285 (val!9294 Int)) )
))
(declare-datatypes ((List!29628 0))(
  ( (Nil!29528) (Cons!29528 (h!34948 C!15284) (t!211327 List!29628)) )
))
(declare-fun tl!4068 () List!29628)

(declare-datatypes ((Regex!7563 0))(
  ( (ElementMatch!7563 (c!406217 C!15284)) (Concat!12259 (regOne!15638 Regex!7563) (regTwo!15638 Regex!7563)) (EmptyExpr!7563) (Star!7563 (reg!7892 Regex!7563)) (EmptyLang!7563) (Union!7563 (regOne!15639 Regex!7563) (regTwo!15639 Regex!7563)) )
))
(declare-fun r!27340 () Regex!7563)

(declare-fun c!14016 () C!15284)

(declare-fun nullable!2480 (Regex!7563) Bool)

(declare-fun derivative!258 (Regex!7563 List!29628) Regex!7563)

(declare-fun derivativeStep!2132 (Regex!7563 C!15284) Regex!7563)

(assert (=> b!2539087 (= res!1070482 (not (nullable!2480 (derivative!258 (derivativeStep!2132 (regTwo!15639 r!27340) c!14016) tl!4068))))))

(declare-fun b!2539088 () Bool)

(declare-fun e!1605775 () Bool)

(declare-fun tp_is_empty!12981 () Bool)

(declare-fun tp!811080 () Bool)

(assert (=> b!2539088 (= e!1605775 (and tp_is_empty!12981 tp!811080))))

(declare-fun b!2539089 () Bool)

(declare-fun res!1070480 () Bool)

(assert (=> b!2539089 (=> (not res!1070480) (not e!1605774))))

(assert (=> b!2539089 (= res!1070480 (not (nullable!2480 (derivative!258 (derivativeStep!2132 (regOne!15639 r!27340) c!14016) tl!4068))))))

(declare-fun b!2539090 () Bool)

(declare-fun tp!811081 () Bool)

(declare-fun tp!811077 () Bool)

(assert (=> b!2539090 (= e!1605776 (and tp!811081 tp!811077))))

(declare-fun b!2539092 () Bool)

(declare-fun res!1070481 () Bool)

(assert (=> b!2539092 (=> (not res!1070481) (not e!1605774))))

(assert (=> b!2539092 (= res!1070481 (nullable!2480 (derivative!258 (derivativeStep!2132 r!27340 c!14016) tl!4068)))))

(declare-fun b!2539093 () Bool)

(declare-fun res!1070477 () Bool)

(assert (=> b!2539093 (=> (not res!1070477) (not e!1605774))))

(get-info :version)

(assert (=> b!2539093 (= res!1070477 (and (not ((_ is EmptyExpr!7563) r!27340)) (not ((_ is EmptyLang!7563) r!27340)) (not ((_ is ElementMatch!7563) r!27340)) ((_ is Union!7563) r!27340)))))

(declare-fun b!2539094 () Bool)

(declare-fun e!1605773 () Bool)

(assert (=> b!2539094 (= e!1605774 (not e!1605773))))

(declare-fun res!1070479 () Bool)

(assert (=> b!2539094 (=> (not res!1070479) (not e!1605773))))

(declare-fun validRegex!3189 (Regex!7563) Bool)

(assert (=> b!2539094 (= res!1070479 (validRegex!3189 (regOne!15639 r!27340)))))

(declare-fun lt!901773 () List!29628)

(declare-fun matchR!3518 (Regex!7563 List!29628) Bool)

(assert (=> b!2539094 (= (matchR!3518 (regTwo!15639 r!27340) lt!901773) (matchR!3518 (derivative!258 (regTwo!15639 r!27340) lt!901773) Nil!29528))))

(declare-datatypes ((Unit!43327 0))(
  ( (Unit!43328) )
))
(declare-fun lt!901772 () Unit!43327)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!164 (Regex!7563 List!29628) Unit!43327)

(assert (=> b!2539094 (= lt!901772 (lemmaMatchRIsSameAsWholeDerivativeAndNil!164 (regTwo!15639 r!27340) lt!901773))))

(assert (=> b!2539094 (= (matchR!3518 (regOne!15639 r!27340) lt!901773) (matchR!3518 (derivative!258 (regOne!15639 r!27340) lt!901773) Nil!29528))))

(declare-fun lt!901771 () Unit!43327)

(assert (=> b!2539094 (= lt!901771 (lemmaMatchRIsSameAsWholeDerivativeAndNil!164 (regOne!15639 r!27340) lt!901773))))

(assert (=> b!2539094 (= (matchR!3518 r!27340 lt!901773) (matchR!3518 (derivative!258 r!27340 lt!901773) Nil!29528))))

(declare-fun lt!901774 () Unit!43327)

(assert (=> b!2539094 (= lt!901774 (lemmaMatchRIsSameAsWholeDerivativeAndNil!164 r!27340 lt!901773))))

(assert (=> b!2539094 (= lt!901773 (Cons!29528 c!14016 tl!4068))))

(declare-fun b!2539095 () Bool)

(assert (=> b!2539095 (= e!1605776 tp_is_empty!12981)))

(declare-fun b!2539096 () Bool)

(assert (=> b!2539096 (= e!1605773 (validRegex!3189 (regTwo!15639 r!27340)))))

(declare-fun res!1070478 () Bool)

(assert (=> start!246772 (=> (not res!1070478) (not e!1605774))))

(assert (=> start!246772 (= res!1070478 (validRegex!3189 r!27340))))

(assert (=> start!246772 e!1605774))

(assert (=> start!246772 e!1605776))

(assert (=> start!246772 tp_is_empty!12981))

(assert (=> start!246772 e!1605775))

(declare-fun b!2539091 () Bool)

(declare-fun tp!811078 () Bool)

(declare-fun tp!811079 () Bool)

(assert (=> b!2539091 (= e!1605776 (and tp!811078 tp!811079))))

(assert (= (and start!246772 res!1070478) b!2539092))

(assert (= (and b!2539092 res!1070481) b!2539093))

(assert (= (and b!2539093 res!1070477) b!2539089))

(assert (= (and b!2539089 res!1070480) b!2539087))

(assert (= (and b!2539087 res!1070482) b!2539094))

(assert (= (and b!2539094 res!1070479) b!2539096))

(assert (= (and start!246772 ((_ is ElementMatch!7563) r!27340)) b!2539095))

(assert (= (and start!246772 ((_ is Concat!12259) r!27340)) b!2539091))

(assert (= (and start!246772 ((_ is Star!7563) r!27340)) b!2539086))

(assert (= (and start!246772 ((_ is Union!7563) r!27340)) b!2539090))

(assert (= (and start!246772 ((_ is Cons!29528) tl!4068)) b!2539088))

(declare-fun m!2886533 () Bool)

(assert (=> b!2539089 m!2886533))

(assert (=> b!2539089 m!2886533))

(declare-fun m!2886535 () Bool)

(assert (=> b!2539089 m!2886535))

(assert (=> b!2539089 m!2886535))

(declare-fun m!2886537 () Bool)

(assert (=> b!2539089 m!2886537))

(declare-fun m!2886539 () Bool)

(assert (=> b!2539092 m!2886539))

(assert (=> b!2539092 m!2886539))

(declare-fun m!2886541 () Bool)

(assert (=> b!2539092 m!2886541))

(assert (=> b!2539092 m!2886541))

(declare-fun m!2886543 () Bool)

(assert (=> b!2539092 m!2886543))

(declare-fun m!2886545 () Bool)

(assert (=> b!2539096 m!2886545))

(declare-fun m!2886547 () Bool)

(assert (=> start!246772 m!2886547))

(declare-fun m!2886549 () Bool)

(assert (=> b!2539094 m!2886549))

(declare-fun m!2886551 () Bool)

(assert (=> b!2539094 m!2886551))

(declare-fun m!2886553 () Bool)

(assert (=> b!2539094 m!2886553))

(declare-fun m!2886555 () Bool)

(assert (=> b!2539094 m!2886555))

(declare-fun m!2886557 () Bool)

(assert (=> b!2539094 m!2886557))

(declare-fun m!2886559 () Bool)

(assert (=> b!2539094 m!2886559))

(declare-fun m!2886561 () Bool)

(assert (=> b!2539094 m!2886561))

(declare-fun m!2886563 () Bool)

(assert (=> b!2539094 m!2886563))

(declare-fun m!2886565 () Bool)

(assert (=> b!2539094 m!2886565))

(declare-fun m!2886567 () Bool)

(assert (=> b!2539094 m!2886567))

(declare-fun m!2886569 () Bool)

(assert (=> b!2539094 m!2886569))

(declare-fun m!2886571 () Bool)

(assert (=> b!2539094 m!2886571))

(assert (=> b!2539094 m!2886555))

(assert (=> b!2539094 m!2886561))

(assert (=> b!2539094 m!2886565))

(declare-fun m!2886573 () Bool)

(assert (=> b!2539094 m!2886573))

(declare-fun m!2886575 () Bool)

(assert (=> b!2539087 m!2886575))

(assert (=> b!2539087 m!2886575))

(declare-fun m!2886577 () Bool)

(assert (=> b!2539087 m!2886577))

(assert (=> b!2539087 m!2886577))

(declare-fun m!2886579 () Bool)

(assert (=> b!2539087 m!2886579))

(check-sat (not b!2539090) (not start!246772) (not b!2539091) (not b!2539086) (not b!2539088) (not b!2539089) (not b!2539094) tp_is_empty!12981 (not b!2539096) (not b!2539087) (not b!2539092))
(check-sat)
(get-model)

(declare-fun b!2539168 () Bool)

(declare-fun e!1605826 () Bool)

(declare-fun e!1605825 () Bool)

(assert (=> b!2539168 (= e!1605826 e!1605825)))

(declare-fun c!406241 () Bool)

(assert (=> b!2539168 (= c!406241 ((_ is Star!7563) (regTwo!15639 r!27340)))))

(declare-fun b!2539169 () Bool)

(declare-fun res!1070510 () Bool)

(declare-fun e!1605831 () Bool)

(assert (=> b!2539169 (=> res!1070510 e!1605831)))

(assert (=> b!2539169 (= res!1070510 (not ((_ is Concat!12259) (regTwo!15639 r!27340))))))

(declare-fun e!1605827 () Bool)

(assert (=> b!2539169 (= e!1605827 e!1605831)))

(declare-fun b!2539170 () Bool)

(assert (=> b!2539170 (= e!1605825 e!1605827)))

(declare-fun c!406242 () Bool)

(assert (=> b!2539170 (= c!406242 ((_ is Union!7563) (regTwo!15639 r!27340)))))

(declare-fun bm!160288 () Bool)

(declare-fun call!160295 () Bool)

(assert (=> bm!160288 (= call!160295 (validRegex!3189 (ite c!406242 (regOne!15639 (regTwo!15639 r!27340)) (regTwo!15638 (regTwo!15639 r!27340)))))))

(declare-fun b!2539171 () Bool)

(declare-fun e!1605828 () Bool)

(assert (=> b!2539171 (= e!1605828 call!160295)))

(declare-fun b!2539172 () Bool)

(declare-fun e!1605829 () Bool)

(declare-fun call!160293 () Bool)

(assert (=> b!2539172 (= e!1605829 call!160293)))

(declare-fun bm!160289 () Bool)

(declare-fun call!160294 () Bool)

(assert (=> bm!160289 (= call!160293 call!160294)))

(declare-fun b!2539174 () Bool)

(declare-fun e!1605830 () Bool)

(assert (=> b!2539174 (= e!1605825 e!1605830)))

(declare-fun res!1070512 () Bool)

(assert (=> b!2539174 (= res!1070512 (not (nullable!2480 (reg!7892 (regTwo!15639 r!27340)))))))

(assert (=> b!2539174 (=> (not res!1070512) (not e!1605830))))

(declare-fun bm!160290 () Bool)

(assert (=> bm!160290 (= call!160294 (validRegex!3189 (ite c!406241 (reg!7892 (regTwo!15639 r!27340)) (ite c!406242 (regTwo!15639 (regTwo!15639 r!27340)) (regOne!15638 (regTwo!15639 r!27340))))))))

(declare-fun b!2539175 () Bool)

(assert (=> b!2539175 (= e!1605831 e!1605828)))

(declare-fun res!1070509 () Bool)

(assert (=> b!2539175 (=> (not res!1070509) (not e!1605828))))

(assert (=> b!2539175 (= res!1070509 call!160293)))

(declare-fun b!2539176 () Bool)

(declare-fun res!1070511 () Bool)

(assert (=> b!2539176 (=> (not res!1070511) (not e!1605829))))

(assert (=> b!2539176 (= res!1070511 call!160295)))

(assert (=> b!2539176 (= e!1605827 e!1605829)))

(declare-fun d!721141 () Bool)

(declare-fun res!1070508 () Bool)

(assert (=> d!721141 (=> res!1070508 e!1605826)))

(assert (=> d!721141 (= res!1070508 ((_ is ElementMatch!7563) (regTwo!15639 r!27340)))))

(assert (=> d!721141 (= (validRegex!3189 (regTwo!15639 r!27340)) e!1605826)))

(declare-fun b!2539173 () Bool)

(assert (=> b!2539173 (= e!1605830 call!160294)))

(assert (= (and d!721141 (not res!1070508)) b!2539168))

(assert (= (and b!2539168 c!406241) b!2539174))

(assert (= (and b!2539168 (not c!406241)) b!2539170))

(assert (= (and b!2539174 res!1070512) b!2539173))

(assert (= (and b!2539170 c!406242) b!2539176))

(assert (= (and b!2539170 (not c!406242)) b!2539169))

(assert (= (and b!2539176 res!1070511) b!2539172))

(assert (= (and b!2539169 (not res!1070510)) b!2539175))

(assert (= (and b!2539175 res!1070509) b!2539171))

(assert (= (or b!2539176 b!2539171) bm!160288))

(assert (= (or b!2539172 b!2539175) bm!160289))

(assert (= (or b!2539173 bm!160289) bm!160290))

(declare-fun m!2886597 () Bool)

(assert (=> bm!160288 m!2886597))

(declare-fun m!2886603 () Bool)

(assert (=> b!2539174 m!2886603))

(declare-fun m!2886609 () Bool)

(assert (=> bm!160290 m!2886609))

(assert (=> b!2539096 d!721141))

(declare-fun d!721151 () Bool)

(assert (=> d!721151 (= (matchR!3518 r!27340 lt!901773) (matchR!3518 (derivative!258 r!27340 lt!901773) Nil!29528))))

(declare-fun lt!901785 () Unit!43327)

(declare-fun choose!15020 (Regex!7563 List!29628) Unit!43327)

(assert (=> d!721151 (= lt!901785 (choose!15020 r!27340 lt!901773))))

(assert (=> d!721151 (validRegex!3189 r!27340)))

(assert (=> d!721151 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!164 r!27340 lt!901773) lt!901785)))

(declare-fun bs!469349 () Bool)

(assert (= bs!469349 d!721151))

(assert (=> bs!469349 m!2886565))

(assert (=> bs!469349 m!2886567))

(assert (=> bs!469349 m!2886573))

(assert (=> bs!469349 m!2886565))

(declare-fun m!2886617 () Bool)

(assert (=> bs!469349 m!2886617))

(assert (=> bs!469349 m!2886547))

(assert (=> b!2539094 d!721151))

(declare-fun d!721155 () Bool)

(declare-fun lt!901789 () Regex!7563)

(assert (=> d!721155 (validRegex!3189 lt!901789)))

(declare-fun e!1605867 () Regex!7563)

(assert (=> d!721155 (= lt!901789 e!1605867)))

(declare-fun c!406261 () Bool)

(assert (=> d!721155 (= c!406261 ((_ is Cons!29528) lt!901773))))

(assert (=> d!721155 (validRegex!3189 (regOne!15639 r!27340))))

(assert (=> d!721155 (= (derivative!258 (regOne!15639 r!27340) lt!901773) lt!901789)))

(declare-fun b!2539242 () Bool)

(assert (=> b!2539242 (= e!1605867 (derivative!258 (derivativeStep!2132 (regOne!15639 r!27340) (h!34948 lt!901773)) (t!211327 lt!901773)))))

(declare-fun b!2539243 () Bool)

(assert (=> b!2539243 (= e!1605867 (regOne!15639 r!27340))))

(assert (= (and d!721155 c!406261) b!2539242))

(assert (= (and d!721155 (not c!406261)) b!2539243))

(declare-fun m!2886633 () Bool)

(assert (=> d!721155 m!2886633))

(assert (=> d!721155 m!2886551))

(declare-fun m!2886635 () Bool)

(assert (=> b!2539242 m!2886635))

(assert (=> b!2539242 m!2886635))

(declare-fun m!2886637 () Bool)

(assert (=> b!2539242 m!2886637))

(assert (=> b!2539094 d!721155))

(declare-fun b!2539416 () Bool)

(declare-fun res!1070603 () Bool)

(declare-fun e!1605953 () Bool)

(assert (=> b!2539416 (=> res!1070603 e!1605953)))

(declare-fun e!1605955 () Bool)

(assert (=> b!2539416 (= res!1070603 e!1605955)))

(declare-fun res!1070608 () Bool)

(assert (=> b!2539416 (=> (not res!1070608) (not e!1605955))))

(declare-fun lt!901809 () Bool)

(assert (=> b!2539416 (= res!1070608 lt!901809)))

(declare-fun b!2539417 () Bool)

(declare-fun e!1605949 () Bool)

(declare-fun e!1605954 () Bool)

(assert (=> b!2539417 (= e!1605949 e!1605954)))

(declare-fun res!1070606 () Bool)

(assert (=> b!2539417 (=> res!1070606 e!1605954)))

(declare-fun call!160324 () Bool)

(assert (=> b!2539417 (= res!1070606 call!160324)))

(declare-fun b!2539418 () Bool)

(declare-fun head!5786 (List!29628) C!15284)

(assert (=> b!2539418 (= e!1605954 (not (= (head!5786 lt!901773) (c!406217 r!27340))))))

(declare-fun b!2539419 () Bool)

(declare-fun e!1605952 () Bool)

(assert (=> b!2539419 (= e!1605952 (nullable!2480 r!27340))))

(declare-fun d!721159 () Bool)

(declare-fun e!1605951 () Bool)

(assert (=> d!721159 e!1605951))

(declare-fun c!406301 () Bool)

(assert (=> d!721159 (= c!406301 ((_ is EmptyExpr!7563) r!27340))))

(assert (=> d!721159 (= lt!901809 e!1605952)))

(declare-fun c!406302 () Bool)

(declare-fun isEmpty!16982 (List!29628) Bool)

(assert (=> d!721159 (= c!406302 (isEmpty!16982 lt!901773))))

(assert (=> d!721159 (validRegex!3189 r!27340)))

(assert (=> d!721159 (= (matchR!3518 r!27340 lt!901773) lt!901809)))

(declare-fun b!2539420 () Bool)

(assert (=> b!2539420 (= e!1605951 (= lt!901809 call!160324))))

(declare-fun b!2539421 () Bool)

(assert (=> b!2539421 (= e!1605953 e!1605949)))

(declare-fun res!1070609 () Bool)

(assert (=> b!2539421 (=> (not res!1070609) (not e!1605949))))

(assert (=> b!2539421 (= res!1070609 (not lt!901809))))

(declare-fun b!2539422 () Bool)

(assert (=> b!2539422 (= e!1605955 (= (head!5786 lt!901773) (c!406217 r!27340)))))

(declare-fun b!2539423 () Bool)

(declare-fun e!1605950 () Bool)

(assert (=> b!2539423 (= e!1605951 e!1605950)))

(declare-fun c!406300 () Bool)

(assert (=> b!2539423 (= c!406300 ((_ is EmptyLang!7563) r!27340))))

(declare-fun b!2539424 () Bool)

(declare-fun res!1070604 () Bool)

(assert (=> b!2539424 (=> (not res!1070604) (not e!1605955))))

(assert (=> b!2539424 (= res!1070604 (not call!160324))))

(declare-fun b!2539425 () Bool)

(assert (=> b!2539425 (= e!1605950 (not lt!901809))))

(declare-fun b!2539426 () Bool)

(declare-fun tail!4061 (List!29628) List!29628)

(assert (=> b!2539426 (= e!1605952 (matchR!3518 (derivativeStep!2132 r!27340 (head!5786 lt!901773)) (tail!4061 lt!901773)))))

(declare-fun b!2539427 () Bool)

(declare-fun res!1070610 () Bool)

(assert (=> b!2539427 (=> res!1070610 e!1605954)))

(assert (=> b!2539427 (= res!1070610 (not (isEmpty!16982 (tail!4061 lt!901773))))))

(declare-fun b!2539428 () Bool)

(declare-fun res!1070607 () Bool)

(assert (=> b!2539428 (=> (not res!1070607) (not e!1605955))))

(assert (=> b!2539428 (= res!1070607 (isEmpty!16982 (tail!4061 lt!901773)))))

(declare-fun b!2539429 () Bool)

(declare-fun res!1070605 () Bool)

(assert (=> b!2539429 (=> res!1070605 e!1605953)))

(assert (=> b!2539429 (= res!1070605 (not ((_ is ElementMatch!7563) r!27340)))))

(assert (=> b!2539429 (= e!1605950 e!1605953)))

(declare-fun bm!160319 () Bool)

(assert (=> bm!160319 (= call!160324 (isEmpty!16982 lt!901773))))

(assert (= (and d!721159 c!406302) b!2539419))

(assert (= (and d!721159 (not c!406302)) b!2539426))

(assert (= (and d!721159 c!406301) b!2539420))

(assert (= (and d!721159 (not c!406301)) b!2539423))

(assert (= (and b!2539423 c!406300) b!2539425))

(assert (= (and b!2539423 (not c!406300)) b!2539429))

(assert (= (and b!2539429 (not res!1070605)) b!2539416))

(assert (= (and b!2539416 res!1070608) b!2539424))

(assert (= (and b!2539424 res!1070604) b!2539428))

(assert (= (and b!2539428 res!1070607) b!2539422))

(assert (= (and b!2539416 (not res!1070603)) b!2539421))

(assert (= (and b!2539421 res!1070609) b!2539417))

(assert (= (and b!2539417 (not res!1070606)) b!2539427))

(assert (= (and b!2539427 (not res!1070610)) b!2539418))

(assert (= (or b!2539420 b!2539417 b!2539424) bm!160319))

(declare-fun m!2886749 () Bool)

(assert (=> bm!160319 m!2886749))

(declare-fun m!2886751 () Bool)

(assert (=> b!2539422 m!2886751))

(assert (=> b!2539418 m!2886751))

(declare-fun m!2886753 () Bool)

(assert (=> b!2539427 m!2886753))

(assert (=> b!2539427 m!2886753))

(declare-fun m!2886755 () Bool)

(assert (=> b!2539427 m!2886755))

(declare-fun m!2886757 () Bool)

(assert (=> b!2539419 m!2886757))

(assert (=> b!2539428 m!2886753))

(assert (=> b!2539428 m!2886753))

(assert (=> b!2539428 m!2886755))

(assert (=> b!2539426 m!2886751))

(assert (=> b!2539426 m!2886751))

(declare-fun m!2886759 () Bool)

(assert (=> b!2539426 m!2886759))

(assert (=> b!2539426 m!2886753))

(assert (=> b!2539426 m!2886759))

(assert (=> b!2539426 m!2886753))

(declare-fun m!2886761 () Bool)

(assert (=> b!2539426 m!2886761))

(assert (=> d!721159 m!2886749))

(assert (=> d!721159 m!2886547))

(assert (=> b!2539094 d!721159))

(declare-fun b!2539430 () Bool)

(declare-fun res!1070611 () Bool)

(declare-fun e!1605960 () Bool)

(assert (=> b!2539430 (=> res!1070611 e!1605960)))

(declare-fun e!1605962 () Bool)

(assert (=> b!2539430 (= res!1070611 e!1605962)))

(declare-fun res!1070616 () Bool)

(assert (=> b!2539430 (=> (not res!1070616) (not e!1605962))))

(declare-fun lt!901810 () Bool)

(assert (=> b!2539430 (= res!1070616 lt!901810)))

(declare-fun b!2539431 () Bool)

(declare-fun e!1605956 () Bool)

(declare-fun e!1605961 () Bool)

(assert (=> b!2539431 (= e!1605956 e!1605961)))

(declare-fun res!1070614 () Bool)

(assert (=> b!2539431 (=> res!1070614 e!1605961)))

(declare-fun call!160325 () Bool)

(assert (=> b!2539431 (= res!1070614 call!160325)))

(declare-fun b!2539432 () Bool)

(assert (=> b!2539432 (= e!1605961 (not (= (head!5786 lt!901773) (c!406217 (regOne!15639 r!27340)))))))

(declare-fun b!2539433 () Bool)

(declare-fun e!1605959 () Bool)

(assert (=> b!2539433 (= e!1605959 (nullable!2480 (regOne!15639 r!27340)))))

(declare-fun d!721195 () Bool)

(declare-fun e!1605958 () Bool)

(assert (=> d!721195 e!1605958))

(declare-fun c!406304 () Bool)

(assert (=> d!721195 (= c!406304 ((_ is EmptyExpr!7563) (regOne!15639 r!27340)))))

(assert (=> d!721195 (= lt!901810 e!1605959)))

(declare-fun c!406305 () Bool)

(assert (=> d!721195 (= c!406305 (isEmpty!16982 lt!901773))))

(assert (=> d!721195 (validRegex!3189 (regOne!15639 r!27340))))

(assert (=> d!721195 (= (matchR!3518 (regOne!15639 r!27340) lt!901773) lt!901810)))

(declare-fun b!2539434 () Bool)

(assert (=> b!2539434 (= e!1605958 (= lt!901810 call!160325))))

(declare-fun b!2539435 () Bool)

(assert (=> b!2539435 (= e!1605960 e!1605956)))

(declare-fun res!1070617 () Bool)

(assert (=> b!2539435 (=> (not res!1070617) (not e!1605956))))

(assert (=> b!2539435 (= res!1070617 (not lt!901810))))

(declare-fun b!2539436 () Bool)

(assert (=> b!2539436 (= e!1605962 (= (head!5786 lt!901773) (c!406217 (regOne!15639 r!27340))))))

(declare-fun b!2539437 () Bool)

(declare-fun e!1605957 () Bool)

(assert (=> b!2539437 (= e!1605958 e!1605957)))

(declare-fun c!406303 () Bool)

(assert (=> b!2539437 (= c!406303 ((_ is EmptyLang!7563) (regOne!15639 r!27340)))))

(declare-fun b!2539438 () Bool)

(declare-fun res!1070612 () Bool)

(assert (=> b!2539438 (=> (not res!1070612) (not e!1605962))))

(assert (=> b!2539438 (= res!1070612 (not call!160325))))

(declare-fun b!2539439 () Bool)

(assert (=> b!2539439 (= e!1605957 (not lt!901810))))

(declare-fun b!2539440 () Bool)

(assert (=> b!2539440 (= e!1605959 (matchR!3518 (derivativeStep!2132 (regOne!15639 r!27340) (head!5786 lt!901773)) (tail!4061 lt!901773)))))

(declare-fun b!2539441 () Bool)

(declare-fun res!1070618 () Bool)

(assert (=> b!2539441 (=> res!1070618 e!1605961)))

(assert (=> b!2539441 (= res!1070618 (not (isEmpty!16982 (tail!4061 lt!901773))))))

(declare-fun b!2539442 () Bool)

(declare-fun res!1070615 () Bool)

(assert (=> b!2539442 (=> (not res!1070615) (not e!1605962))))

(assert (=> b!2539442 (= res!1070615 (isEmpty!16982 (tail!4061 lt!901773)))))

(declare-fun b!2539443 () Bool)

(declare-fun res!1070613 () Bool)

(assert (=> b!2539443 (=> res!1070613 e!1605960)))

(assert (=> b!2539443 (= res!1070613 (not ((_ is ElementMatch!7563) (regOne!15639 r!27340))))))

(assert (=> b!2539443 (= e!1605957 e!1605960)))

(declare-fun bm!160320 () Bool)

(assert (=> bm!160320 (= call!160325 (isEmpty!16982 lt!901773))))

(assert (= (and d!721195 c!406305) b!2539433))

(assert (= (and d!721195 (not c!406305)) b!2539440))

(assert (= (and d!721195 c!406304) b!2539434))

(assert (= (and d!721195 (not c!406304)) b!2539437))

(assert (= (and b!2539437 c!406303) b!2539439))

(assert (= (and b!2539437 (not c!406303)) b!2539443))

(assert (= (and b!2539443 (not res!1070613)) b!2539430))

(assert (= (and b!2539430 res!1070616) b!2539438))

(assert (= (and b!2539438 res!1070612) b!2539442))

(assert (= (and b!2539442 res!1070615) b!2539436))

(assert (= (and b!2539430 (not res!1070611)) b!2539435))

(assert (= (and b!2539435 res!1070617) b!2539431))

(assert (= (and b!2539431 (not res!1070614)) b!2539441))

(assert (= (and b!2539441 (not res!1070618)) b!2539432))

(assert (= (or b!2539434 b!2539431 b!2539438) bm!160320))

(assert (=> bm!160320 m!2886749))

(assert (=> b!2539436 m!2886751))

(assert (=> b!2539432 m!2886751))

(assert (=> b!2539441 m!2886753))

(assert (=> b!2539441 m!2886753))

(assert (=> b!2539441 m!2886755))

(declare-fun m!2886763 () Bool)

(assert (=> b!2539433 m!2886763))

(assert (=> b!2539442 m!2886753))

(assert (=> b!2539442 m!2886753))

(assert (=> b!2539442 m!2886755))

(assert (=> b!2539440 m!2886751))

(assert (=> b!2539440 m!2886751))

(declare-fun m!2886765 () Bool)

(assert (=> b!2539440 m!2886765))

(assert (=> b!2539440 m!2886753))

(assert (=> b!2539440 m!2886765))

(assert (=> b!2539440 m!2886753))

(declare-fun m!2886767 () Bool)

(assert (=> b!2539440 m!2886767))

(assert (=> d!721195 m!2886749))

(assert (=> d!721195 m!2886551))

(assert (=> b!2539094 d!721195))

(declare-fun d!721197 () Bool)

(declare-fun lt!901811 () Regex!7563)

(assert (=> d!721197 (validRegex!3189 lt!901811)))

(declare-fun e!1605963 () Regex!7563)

(assert (=> d!721197 (= lt!901811 e!1605963)))

(declare-fun c!406306 () Bool)

(assert (=> d!721197 (= c!406306 ((_ is Cons!29528) lt!901773))))

(assert (=> d!721197 (validRegex!3189 r!27340)))

(assert (=> d!721197 (= (derivative!258 r!27340 lt!901773) lt!901811)))

(declare-fun b!2539444 () Bool)

(assert (=> b!2539444 (= e!1605963 (derivative!258 (derivativeStep!2132 r!27340 (h!34948 lt!901773)) (t!211327 lt!901773)))))

(declare-fun b!2539445 () Bool)

(assert (=> b!2539445 (= e!1605963 r!27340)))

(assert (= (and d!721197 c!406306) b!2539444))

(assert (= (and d!721197 (not c!406306)) b!2539445))

(declare-fun m!2886769 () Bool)

(assert (=> d!721197 m!2886769))

(assert (=> d!721197 m!2886547))

(declare-fun m!2886771 () Bool)

(assert (=> b!2539444 m!2886771))

(assert (=> b!2539444 m!2886771))

(declare-fun m!2886773 () Bool)

(assert (=> b!2539444 m!2886773))

(assert (=> b!2539094 d!721197))

(declare-fun d!721199 () Bool)

(assert (=> d!721199 (= (matchR!3518 (regTwo!15639 r!27340) lt!901773) (matchR!3518 (derivative!258 (regTwo!15639 r!27340) lt!901773) Nil!29528))))

(declare-fun lt!901812 () Unit!43327)

(assert (=> d!721199 (= lt!901812 (choose!15020 (regTwo!15639 r!27340) lt!901773))))

(assert (=> d!721199 (validRegex!3189 (regTwo!15639 r!27340))))

(assert (=> d!721199 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!164 (regTwo!15639 r!27340) lt!901773) lt!901812)))

(declare-fun bs!469355 () Bool)

(assert (= bs!469355 d!721199))

(assert (=> bs!469355 m!2886555))

(assert (=> bs!469355 m!2886557))

(assert (=> bs!469355 m!2886571))

(assert (=> bs!469355 m!2886555))

(declare-fun m!2886775 () Bool)

(assert (=> bs!469355 m!2886775))

(assert (=> bs!469355 m!2886545))

(assert (=> b!2539094 d!721199))

(declare-fun b!2539446 () Bool)

(declare-fun res!1070619 () Bool)

(declare-fun e!1605968 () Bool)

(assert (=> b!2539446 (=> res!1070619 e!1605968)))

(declare-fun e!1605970 () Bool)

(assert (=> b!2539446 (= res!1070619 e!1605970)))

(declare-fun res!1070624 () Bool)

(assert (=> b!2539446 (=> (not res!1070624) (not e!1605970))))

(declare-fun lt!901813 () Bool)

(assert (=> b!2539446 (= res!1070624 lt!901813)))

(declare-fun b!2539447 () Bool)

(declare-fun e!1605964 () Bool)

(declare-fun e!1605969 () Bool)

(assert (=> b!2539447 (= e!1605964 e!1605969)))

(declare-fun res!1070622 () Bool)

(assert (=> b!2539447 (=> res!1070622 e!1605969)))

(declare-fun call!160326 () Bool)

(assert (=> b!2539447 (= res!1070622 call!160326)))

(declare-fun b!2539448 () Bool)

(assert (=> b!2539448 (= e!1605969 (not (= (head!5786 lt!901773) (c!406217 (regTwo!15639 r!27340)))))))

(declare-fun b!2539449 () Bool)

(declare-fun e!1605967 () Bool)

(assert (=> b!2539449 (= e!1605967 (nullable!2480 (regTwo!15639 r!27340)))))

(declare-fun d!721201 () Bool)

(declare-fun e!1605966 () Bool)

(assert (=> d!721201 e!1605966))

(declare-fun c!406308 () Bool)

(assert (=> d!721201 (= c!406308 ((_ is EmptyExpr!7563) (regTwo!15639 r!27340)))))

(assert (=> d!721201 (= lt!901813 e!1605967)))

(declare-fun c!406309 () Bool)

(assert (=> d!721201 (= c!406309 (isEmpty!16982 lt!901773))))

(assert (=> d!721201 (validRegex!3189 (regTwo!15639 r!27340))))

(assert (=> d!721201 (= (matchR!3518 (regTwo!15639 r!27340) lt!901773) lt!901813)))

(declare-fun b!2539450 () Bool)

(assert (=> b!2539450 (= e!1605966 (= lt!901813 call!160326))))

(declare-fun b!2539451 () Bool)

(assert (=> b!2539451 (= e!1605968 e!1605964)))

(declare-fun res!1070625 () Bool)

(assert (=> b!2539451 (=> (not res!1070625) (not e!1605964))))

(assert (=> b!2539451 (= res!1070625 (not lt!901813))))

(declare-fun b!2539452 () Bool)

(assert (=> b!2539452 (= e!1605970 (= (head!5786 lt!901773) (c!406217 (regTwo!15639 r!27340))))))

(declare-fun b!2539453 () Bool)

(declare-fun e!1605965 () Bool)

(assert (=> b!2539453 (= e!1605966 e!1605965)))

(declare-fun c!406307 () Bool)

(assert (=> b!2539453 (= c!406307 ((_ is EmptyLang!7563) (regTwo!15639 r!27340)))))

(declare-fun b!2539454 () Bool)

(declare-fun res!1070620 () Bool)

(assert (=> b!2539454 (=> (not res!1070620) (not e!1605970))))

(assert (=> b!2539454 (= res!1070620 (not call!160326))))

(declare-fun b!2539455 () Bool)

(assert (=> b!2539455 (= e!1605965 (not lt!901813))))

(declare-fun b!2539456 () Bool)

(assert (=> b!2539456 (= e!1605967 (matchR!3518 (derivativeStep!2132 (regTwo!15639 r!27340) (head!5786 lt!901773)) (tail!4061 lt!901773)))))

(declare-fun b!2539457 () Bool)

(declare-fun res!1070626 () Bool)

(assert (=> b!2539457 (=> res!1070626 e!1605969)))

(assert (=> b!2539457 (= res!1070626 (not (isEmpty!16982 (tail!4061 lt!901773))))))

(declare-fun b!2539458 () Bool)

(declare-fun res!1070623 () Bool)

(assert (=> b!2539458 (=> (not res!1070623) (not e!1605970))))

(assert (=> b!2539458 (= res!1070623 (isEmpty!16982 (tail!4061 lt!901773)))))

(declare-fun b!2539459 () Bool)

(declare-fun res!1070621 () Bool)

(assert (=> b!2539459 (=> res!1070621 e!1605968)))

(assert (=> b!2539459 (= res!1070621 (not ((_ is ElementMatch!7563) (regTwo!15639 r!27340))))))

(assert (=> b!2539459 (= e!1605965 e!1605968)))

(declare-fun bm!160321 () Bool)

(assert (=> bm!160321 (= call!160326 (isEmpty!16982 lt!901773))))

(assert (= (and d!721201 c!406309) b!2539449))

(assert (= (and d!721201 (not c!406309)) b!2539456))

(assert (= (and d!721201 c!406308) b!2539450))

(assert (= (and d!721201 (not c!406308)) b!2539453))

(assert (= (and b!2539453 c!406307) b!2539455))

(assert (= (and b!2539453 (not c!406307)) b!2539459))

(assert (= (and b!2539459 (not res!1070621)) b!2539446))

(assert (= (and b!2539446 res!1070624) b!2539454))

(assert (= (and b!2539454 res!1070620) b!2539458))

(assert (= (and b!2539458 res!1070623) b!2539452))

(assert (= (and b!2539446 (not res!1070619)) b!2539451))

(assert (= (and b!2539451 res!1070625) b!2539447))

(assert (= (and b!2539447 (not res!1070622)) b!2539457))

(assert (= (and b!2539457 (not res!1070626)) b!2539448))

(assert (= (or b!2539450 b!2539447 b!2539454) bm!160321))

(assert (=> bm!160321 m!2886749))

(assert (=> b!2539452 m!2886751))

(assert (=> b!2539448 m!2886751))

(assert (=> b!2539457 m!2886753))

(assert (=> b!2539457 m!2886753))

(assert (=> b!2539457 m!2886755))

(declare-fun m!2886777 () Bool)

(assert (=> b!2539449 m!2886777))

(assert (=> b!2539458 m!2886753))

(assert (=> b!2539458 m!2886753))

(assert (=> b!2539458 m!2886755))

(assert (=> b!2539456 m!2886751))

(assert (=> b!2539456 m!2886751))

(declare-fun m!2886779 () Bool)

(assert (=> b!2539456 m!2886779))

(assert (=> b!2539456 m!2886753))

(assert (=> b!2539456 m!2886779))

(assert (=> b!2539456 m!2886753))

(declare-fun m!2886781 () Bool)

(assert (=> b!2539456 m!2886781))

(assert (=> d!721201 m!2886749))

(assert (=> d!721201 m!2886545))

(assert (=> b!2539094 d!721201))

(declare-fun b!2539460 () Bool)

(declare-fun res!1070627 () Bool)

(declare-fun e!1605975 () Bool)

(assert (=> b!2539460 (=> res!1070627 e!1605975)))

(declare-fun e!1605977 () Bool)

(assert (=> b!2539460 (= res!1070627 e!1605977)))

(declare-fun res!1070632 () Bool)

(assert (=> b!2539460 (=> (not res!1070632) (not e!1605977))))

(declare-fun lt!901814 () Bool)

(assert (=> b!2539460 (= res!1070632 lt!901814)))

(declare-fun b!2539461 () Bool)

(declare-fun e!1605971 () Bool)

(declare-fun e!1605976 () Bool)

(assert (=> b!2539461 (= e!1605971 e!1605976)))

(declare-fun res!1070630 () Bool)

(assert (=> b!2539461 (=> res!1070630 e!1605976)))

(declare-fun call!160327 () Bool)

(assert (=> b!2539461 (= res!1070630 call!160327)))

(declare-fun b!2539462 () Bool)

(assert (=> b!2539462 (= e!1605976 (not (= (head!5786 Nil!29528) (c!406217 (derivative!258 (regOne!15639 r!27340) lt!901773)))))))

(declare-fun b!2539463 () Bool)

(declare-fun e!1605974 () Bool)

(assert (=> b!2539463 (= e!1605974 (nullable!2480 (derivative!258 (regOne!15639 r!27340) lt!901773)))))

(declare-fun d!721203 () Bool)

(declare-fun e!1605973 () Bool)

(assert (=> d!721203 e!1605973))

(declare-fun c!406311 () Bool)

(assert (=> d!721203 (= c!406311 ((_ is EmptyExpr!7563) (derivative!258 (regOne!15639 r!27340) lt!901773)))))

(assert (=> d!721203 (= lt!901814 e!1605974)))

(declare-fun c!406312 () Bool)

(assert (=> d!721203 (= c!406312 (isEmpty!16982 Nil!29528))))

(assert (=> d!721203 (validRegex!3189 (derivative!258 (regOne!15639 r!27340) lt!901773))))

(assert (=> d!721203 (= (matchR!3518 (derivative!258 (regOne!15639 r!27340) lt!901773) Nil!29528) lt!901814)))

(declare-fun b!2539464 () Bool)

(assert (=> b!2539464 (= e!1605973 (= lt!901814 call!160327))))

(declare-fun b!2539465 () Bool)

(assert (=> b!2539465 (= e!1605975 e!1605971)))

(declare-fun res!1070633 () Bool)

(assert (=> b!2539465 (=> (not res!1070633) (not e!1605971))))

(assert (=> b!2539465 (= res!1070633 (not lt!901814))))

(declare-fun b!2539466 () Bool)

(assert (=> b!2539466 (= e!1605977 (= (head!5786 Nil!29528) (c!406217 (derivative!258 (regOne!15639 r!27340) lt!901773))))))

(declare-fun b!2539467 () Bool)

(declare-fun e!1605972 () Bool)

(assert (=> b!2539467 (= e!1605973 e!1605972)))

(declare-fun c!406310 () Bool)

(assert (=> b!2539467 (= c!406310 ((_ is EmptyLang!7563) (derivative!258 (regOne!15639 r!27340) lt!901773)))))

(declare-fun b!2539468 () Bool)

(declare-fun res!1070628 () Bool)

(assert (=> b!2539468 (=> (not res!1070628) (not e!1605977))))

(assert (=> b!2539468 (= res!1070628 (not call!160327))))

(declare-fun b!2539469 () Bool)

(assert (=> b!2539469 (= e!1605972 (not lt!901814))))

(declare-fun b!2539470 () Bool)

(assert (=> b!2539470 (= e!1605974 (matchR!3518 (derivativeStep!2132 (derivative!258 (regOne!15639 r!27340) lt!901773) (head!5786 Nil!29528)) (tail!4061 Nil!29528)))))

(declare-fun b!2539471 () Bool)

(declare-fun res!1070634 () Bool)

(assert (=> b!2539471 (=> res!1070634 e!1605976)))

(assert (=> b!2539471 (= res!1070634 (not (isEmpty!16982 (tail!4061 Nil!29528))))))

(declare-fun b!2539472 () Bool)

(declare-fun res!1070631 () Bool)

(assert (=> b!2539472 (=> (not res!1070631) (not e!1605977))))

(assert (=> b!2539472 (= res!1070631 (isEmpty!16982 (tail!4061 Nil!29528)))))

(declare-fun b!2539473 () Bool)

(declare-fun res!1070629 () Bool)

(assert (=> b!2539473 (=> res!1070629 e!1605975)))

(assert (=> b!2539473 (= res!1070629 (not ((_ is ElementMatch!7563) (derivative!258 (regOne!15639 r!27340) lt!901773))))))

(assert (=> b!2539473 (= e!1605972 e!1605975)))

(declare-fun bm!160322 () Bool)

(assert (=> bm!160322 (= call!160327 (isEmpty!16982 Nil!29528))))

(assert (= (and d!721203 c!406312) b!2539463))

(assert (= (and d!721203 (not c!406312)) b!2539470))

(assert (= (and d!721203 c!406311) b!2539464))

(assert (= (and d!721203 (not c!406311)) b!2539467))

(assert (= (and b!2539467 c!406310) b!2539469))

(assert (= (and b!2539467 (not c!406310)) b!2539473))

(assert (= (and b!2539473 (not res!1070629)) b!2539460))

(assert (= (and b!2539460 res!1070632) b!2539468))

(assert (= (and b!2539468 res!1070628) b!2539472))

(assert (= (and b!2539472 res!1070631) b!2539466))

(assert (= (and b!2539460 (not res!1070627)) b!2539465))

(assert (= (and b!2539465 res!1070633) b!2539461))

(assert (= (and b!2539461 (not res!1070630)) b!2539471))

(assert (= (and b!2539471 (not res!1070634)) b!2539462))

(assert (= (or b!2539464 b!2539461 b!2539468) bm!160322))

(declare-fun m!2886783 () Bool)

(assert (=> bm!160322 m!2886783))

(declare-fun m!2886785 () Bool)

(assert (=> b!2539466 m!2886785))

(assert (=> b!2539462 m!2886785))

(declare-fun m!2886787 () Bool)

(assert (=> b!2539471 m!2886787))

(assert (=> b!2539471 m!2886787))

(declare-fun m!2886789 () Bool)

(assert (=> b!2539471 m!2886789))

(assert (=> b!2539463 m!2886561))

(declare-fun m!2886791 () Bool)

(assert (=> b!2539463 m!2886791))

(assert (=> b!2539472 m!2886787))

(assert (=> b!2539472 m!2886787))

(assert (=> b!2539472 m!2886789))

(assert (=> b!2539470 m!2886785))

(assert (=> b!2539470 m!2886561))

(assert (=> b!2539470 m!2886785))

(declare-fun m!2886793 () Bool)

(assert (=> b!2539470 m!2886793))

(assert (=> b!2539470 m!2886787))

(assert (=> b!2539470 m!2886793))

(assert (=> b!2539470 m!2886787))

(declare-fun m!2886795 () Bool)

(assert (=> b!2539470 m!2886795))

(assert (=> d!721203 m!2886783))

(assert (=> d!721203 m!2886561))

(declare-fun m!2886797 () Bool)

(assert (=> d!721203 m!2886797))

(assert (=> b!2539094 d!721203))

(declare-fun d!721205 () Bool)

(declare-fun lt!901815 () Regex!7563)

(assert (=> d!721205 (validRegex!3189 lt!901815)))

(declare-fun e!1605978 () Regex!7563)

(assert (=> d!721205 (= lt!901815 e!1605978)))

(declare-fun c!406313 () Bool)

(assert (=> d!721205 (= c!406313 ((_ is Cons!29528) lt!901773))))

(assert (=> d!721205 (validRegex!3189 (regTwo!15639 r!27340))))

(assert (=> d!721205 (= (derivative!258 (regTwo!15639 r!27340) lt!901773) lt!901815)))

(declare-fun b!2539474 () Bool)

(assert (=> b!2539474 (= e!1605978 (derivative!258 (derivativeStep!2132 (regTwo!15639 r!27340) (h!34948 lt!901773)) (t!211327 lt!901773)))))

(declare-fun b!2539475 () Bool)

(assert (=> b!2539475 (= e!1605978 (regTwo!15639 r!27340))))

(assert (= (and d!721205 c!406313) b!2539474))

(assert (= (and d!721205 (not c!406313)) b!2539475))

(declare-fun m!2886799 () Bool)

(assert (=> d!721205 m!2886799))

(assert (=> d!721205 m!2886545))

(declare-fun m!2886801 () Bool)

(assert (=> b!2539474 m!2886801))

(assert (=> b!2539474 m!2886801))

(declare-fun m!2886803 () Bool)

(assert (=> b!2539474 m!2886803))

(assert (=> b!2539094 d!721205))

(declare-fun b!2539476 () Bool)

(declare-fun res!1070635 () Bool)

(declare-fun e!1605983 () Bool)

(assert (=> b!2539476 (=> res!1070635 e!1605983)))

(declare-fun e!1605985 () Bool)

(assert (=> b!2539476 (= res!1070635 e!1605985)))

(declare-fun res!1070640 () Bool)

(assert (=> b!2539476 (=> (not res!1070640) (not e!1605985))))

(declare-fun lt!901816 () Bool)

(assert (=> b!2539476 (= res!1070640 lt!901816)))

(declare-fun b!2539477 () Bool)

(declare-fun e!1605979 () Bool)

(declare-fun e!1605984 () Bool)

(assert (=> b!2539477 (= e!1605979 e!1605984)))

(declare-fun res!1070638 () Bool)

(assert (=> b!2539477 (=> res!1070638 e!1605984)))

(declare-fun call!160328 () Bool)

(assert (=> b!2539477 (= res!1070638 call!160328)))

(declare-fun b!2539478 () Bool)

(assert (=> b!2539478 (= e!1605984 (not (= (head!5786 Nil!29528) (c!406217 (derivative!258 r!27340 lt!901773)))))))

(declare-fun b!2539479 () Bool)

(declare-fun e!1605982 () Bool)

(assert (=> b!2539479 (= e!1605982 (nullable!2480 (derivative!258 r!27340 lt!901773)))))

(declare-fun d!721207 () Bool)

(declare-fun e!1605981 () Bool)

(assert (=> d!721207 e!1605981))

(declare-fun c!406315 () Bool)

(assert (=> d!721207 (= c!406315 ((_ is EmptyExpr!7563) (derivative!258 r!27340 lt!901773)))))

(assert (=> d!721207 (= lt!901816 e!1605982)))

(declare-fun c!406316 () Bool)

(assert (=> d!721207 (= c!406316 (isEmpty!16982 Nil!29528))))

(assert (=> d!721207 (validRegex!3189 (derivative!258 r!27340 lt!901773))))

(assert (=> d!721207 (= (matchR!3518 (derivative!258 r!27340 lt!901773) Nil!29528) lt!901816)))

(declare-fun b!2539480 () Bool)

(assert (=> b!2539480 (= e!1605981 (= lt!901816 call!160328))))

(declare-fun b!2539481 () Bool)

(assert (=> b!2539481 (= e!1605983 e!1605979)))

(declare-fun res!1070641 () Bool)

(assert (=> b!2539481 (=> (not res!1070641) (not e!1605979))))

(assert (=> b!2539481 (= res!1070641 (not lt!901816))))

(declare-fun b!2539482 () Bool)

(assert (=> b!2539482 (= e!1605985 (= (head!5786 Nil!29528) (c!406217 (derivative!258 r!27340 lt!901773))))))

(declare-fun b!2539483 () Bool)

(declare-fun e!1605980 () Bool)

(assert (=> b!2539483 (= e!1605981 e!1605980)))

(declare-fun c!406314 () Bool)

(assert (=> b!2539483 (= c!406314 ((_ is EmptyLang!7563) (derivative!258 r!27340 lt!901773)))))

(declare-fun b!2539484 () Bool)

(declare-fun res!1070636 () Bool)

(assert (=> b!2539484 (=> (not res!1070636) (not e!1605985))))

(assert (=> b!2539484 (= res!1070636 (not call!160328))))

(declare-fun b!2539485 () Bool)

(assert (=> b!2539485 (= e!1605980 (not lt!901816))))

(declare-fun b!2539486 () Bool)

(assert (=> b!2539486 (= e!1605982 (matchR!3518 (derivativeStep!2132 (derivative!258 r!27340 lt!901773) (head!5786 Nil!29528)) (tail!4061 Nil!29528)))))

(declare-fun b!2539487 () Bool)

(declare-fun res!1070642 () Bool)

(assert (=> b!2539487 (=> res!1070642 e!1605984)))

(assert (=> b!2539487 (= res!1070642 (not (isEmpty!16982 (tail!4061 Nil!29528))))))

(declare-fun b!2539488 () Bool)

(declare-fun res!1070639 () Bool)

(assert (=> b!2539488 (=> (not res!1070639) (not e!1605985))))

(assert (=> b!2539488 (= res!1070639 (isEmpty!16982 (tail!4061 Nil!29528)))))

(declare-fun b!2539489 () Bool)

(declare-fun res!1070637 () Bool)

(assert (=> b!2539489 (=> res!1070637 e!1605983)))

(assert (=> b!2539489 (= res!1070637 (not ((_ is ElementMatch!7563) (derivative!258 r!27340 lt!901773))))))

(assert (=> b!2539489 (= e!1605980 e!1605983)))

(declare-fun bm!160323 () Bool)

(assert (=> bm!160323 (= call!160328 (isEmpty!16982 Nil!29528))))

(assert (= (and d!721207 c!406316) b!2539479))

(assert (= (and d!721207 (not c!406316)) b!2539486))

(assert (= (and d!721207 c!406315) b!2539480))

(assert (= (and d!721207 (not c!406315)) b!2539483))

(assert (= (and b!2539483 c!406314) b!2539485))

(assert (= (and b!2539483 (not c!406314)) b!2539489))

(assert (= (and b!2539489 (not res!1070637)) b!2539476))

(assert (= (and b!2539476 res!1070640) b!2539484))

(assert (= (and b!2539484 res!1070636) b!2539488))

(assert (= (and b!2539488 res!1070639) b!2539482))

(assert (= (and b!2539476 (not res!1070635)) b!2539481))

(assert (= (and b!2539481 res!1070641) b!2539477))

(assert (= (and b!2539477 (not res!1070638)) b!2539487))

(assert (= (and b!2539487 (not res!1070642)) b!2539478))

(assert (= (or b!2539480 b!2539477 b!2539484) bm!160323))

(assert (=> bm!160323 m!2886783))

(assert (=> b!2539482 m!2886785))

(assert (=> b!2539478 m!2886785))

(assert (=> b!2539487 m!2886787))

(assert (=> b!2539487 m!2886787))

(assert (=> b!2539487 m!2886789))

(assert (=> b!2539479 m!2886565))

(declare-fun m!2886805 () Bool)

(assert (=> b!2539479 m!2886805))

(assert (=> b!2539488 m!2886787))

(assert (=> b!2539488 m!2886787))

(assert (=> b!2539488 m!2886789))

(assert (=> b!2539486 m!2886785))

(assert (=> b!2539486 m!2886565))

(assert (=> b!2539486 m!2886785))

(declare-fun m!2886807 () Bool)

(assert (=> b!2539486 m!2886807))

(assert (=> b!2539486 m!2886787))

(assert (=> b!2539486 m!2886807))

(assert (=> b!2539486 m!2886787))

(declare-fun m!2886809 () Bool)

(assert (=> b!2539486 m!2886809))

(assert (=> d!721207 m!2886783))

(assert (=> d!721207 m!2886565))

(declare-fun m!2886811 () Bool)

(assert (=> d!721207 m!2886811))

(assert (=> b!2539094 d!721207))

(declare-fun b!2539490 () Bool)

(declare-fun res!1070643 () Bool)

(declare-fun e!1605990 () Bool)

(assert (=> b!2539490 (=> res!1070643 e!1605990)))

(declare-fun e!1605992 () Bool)

(assert (=> b!2539490 (= res!1070643 e!1605992)))

(declare-fun res!1070648 () Bool)

(assert (=> b!2539490 (=> (not res!1070648) (not e!1605992))))

(declare-fun lt!901817 () Bool)

(assert (=> b!2539490 (= res!1070648 lt!901817)))

(declare-fun b!2539491 () Bool)

(declare-fun e!1605986 () Bool)

(declare-fun e!1605991 () Bool)

(assert (=> b!2539491 (= e!1605986 e!1605991)))

(declare-fun res!1070646 () Bool)

(assert (=> b!2539491 (=> res!1070646 e!1605991)))

(declare-fun call!160329 () Bool)

(assert (=> b!2539491 (= res!1070646 call!160329)))

(declare-fun b!2539492 () Bool)

(assert (=> b!2539492 (= e!1605991 (not (= (head!5786 Nil!29528) (c!406217 (derivative!258 (regTwo!15639 r!27340) lt!901773)))))))

(declare-fun b!2539493 () Bool)

(declare-fun e!1605989 () Bool)

(assert (=> b!2539493 (= e!1605989 (nullable!2480 (derivative!258 (regTwo!15639 r!27340) lt!901773)))))

(declare-fun d!721209 () Bool)

(declare-fun e!1605988 () Bool)

(assert (=> d!721209 e!1605988))

(declare-fun c!406318 () Bool)

(assert (=> d!721209 (= c!406318 ((_ is EmptyExpr!7563) (derivative!258 (regTwo!15639 r!27340) lt!901773)))))

(assert (=> d!721209 (= lt!901817 e!1605989)))

(declare-fun c!406319 () Bool)

(assert (=> d!721209 (= c!406319 (isEmpty!16982 Nil!29528))))

(assert (=> d!721209 (validRegex!3189 (derivative!258 (regTwo!15639 r!27340) lt!901773))))

(assert (=> d!721209 (= (matchR!3518 (derivative!258 (regTwo!15639 r!27340) lt!901773) Nil!29528) lt!901817)))

(declare-fun b!2539494 () Bool)

(assert (=> b!2539494 (= e!1605988 (= lt!901817 call!160329))))

(declare-fun b!2539495 () Bool)

(assert (=> b!2539495 (= e!1605990 e!1605986)))

(declare-fun res!1070649 () Bool)

(assert (=> b!2539495 (=> (not res!1070649) (not e!1605986))))

(assert (=> b!2539495 (= res!1070649 (not lt!901817))))

(declare-fun b!2539496 () Bool)

(assert (=> b!2539496 (= e!1605992 (= (head!5786 Nil!29528) (c!406217 (derivative!258 (regTwo!15639 r!27340) lt!901773))))))

(declare-fun b!2539497 () Bool)

(declare-fun e!1605987 () Bool)

(assert (=> b!2539497 (= e!1605988 e!1605987)))

(declare-fun c!406317 () Bool)

(assert (=> b!2539497 (= c!406317 ((_ is EmptyLang!7563) (derivative!258 (regTwo!15639 r!27340) lt!901773)))))

(declare-fun b!2539498 () Bool)

(declare-fun res!1070644 () Bool)

(assert (=> b!2539498 (=> (not res!1070644) (not e!1605992))))

(assert (=> b!2539498 (= res!1070644 (not call!160329))))

(declare-fun b!2539499 () Bool)

(assert (=> b!2539499 (= e!1605987 (not lt!901817))))

(declare-fun b!2539500 () Bool)

(assert (=> b!2539500 (= e!1605989 (matchR!3518 (derivativeStep!2132 (derivative!258 (regTwo!15639 r!27340) lt!901773) (head!5786 Nil!29528)) (tail!4061 Nil!29528)))))

(declare-fun b!2539501 () Bool)

(declare-fun res!1070650 () Bool)

(assert (=> b!2539501 (=> res!1070650 e!1605991)))

(assert (=> b!2539501 (= res!1070650 (not (isEmpty!16982 (tail!4061 Nil!29528))))))

(declare-fun b!2539502 () Bool)

(declare-fun res!1070647 () Bool)

(assert (=> b!2539502 (=> (not res!1070647) (not e!1605992))))

(assert (=> b!2539502 (= res!1070647 (isEmpty!16982 (tail!4061 Nil!29528)))))

(declare-fun b!2539503 () Bool)

(declare-fun res!1070645 () Bool)

(assert (=> b!2539503 (=> res!1070645 e!1605990)))

(assert (=> b!2539503 (= res!1070645 (not ((_ is ElementMatch!7563) (derivative!258 (regTwo!15639 r!27340) lt!901773))))))

(assert (=> b!2539503 (= e!1605987 e!1605990)))

(declare-fun bm!160324 () Bool)

(assert (=> bm!160324 (= call!160329 (isEmpty!16982 Nil!29528))))

(assert (= (and d!721209 c!406319) b!2539493))

(assert (= (and d!721209 (not c!406319)) b!2539500))

(assert (= (and d!721209 c!406318) b!2539494))

(assert (= (and d!721209 (not c!406318)) b!2539497))

(assert (= (and b!2539497 c!406317) b!2539499))

(assert (= (and b!2539497 (not c!406317)) b!2539503))

(assert (= (and b!2539503 (not res!1070645)) b!2539490))

(assert (= (and b!2539490 res!1070648) b!2539498))

(assert (= (and b!2539498 res!1070644) b!2539502))

(assert (= (and b!2539502 res!1070647) b!2539496))

(assert (= (and b!2539490 (not res!1070643)) b!2539495))

(assert (= (and b!2539495 res!1070649) b!2539491))

(assert (= (and b!2539491 (not res!1070646)) b!2539501))

(assert (= (and b!2539501 (not res!1070650)) b!2539492))

(assert (= (or b!2539494 b!2539491 b!2539498) bm!160324))

(assert (=> bm!160324 m!2886783))

(assert (=> b!2539496 m!2886785))

(assert (=> b!2539492 m!2886785))

(assert (=> b!2539501 m!2886787))

(assert (=> b!2539501 m!2886787))

(assert (=> b!2539501 m!2886789))

(assert (=> b!2539493 m!2886555))

(declare-fun m!2886813 () Bool)

(assert (=> b!2539493 m!2886813))

(assert (=> b!2539502 m!2886787))

(assert (=> b!2539502 m!2886787))

(assert (=> b!2539502 m!2886789))

(assert (=> b!2539500 m!2886785))

(assert (=> b!2539500 m!2886555))

(assert (=> b!2539500 m!2886785))

(declare-fun m!2886815 () Bool)

(assert (=> b!2539500 m!2886815))

(assert (=> b!2539500 m!2886787))

(assert (=> b!2539500 m!2886815))

(assert (=> b!2539500 m!2886787))

(declare-fun m!2886817 () Bool)

(assert (=> b!2539500 m!2886817))

(assert (=> d!721209 m!2886783))

(assert (=> d!721209 m!2886555))

(declare-fun m!2886819 () Bool)

(assert (=> d!721209 m!2886819))

(assert (=> b!2539094 d!721209))

(declare-fun b!2539504 () Bool)

(declare-fun e!1605994 () Bool)

(declare-fun e!1605993 () Bool)

(assert (=> b!2539504 (= e!1605994 e!1605993)))

(declare-fun c!406320 () Bool)

(assert (=> b!2539504 (= c!406320 ((_ is Star!7563) (regOne!15639 r!27340)))))

(declare-fun b!2539505 () Bool)

(declare-fun res!1070653 () Bool)

(declare-fun e!1605999 () Bool)

(assert (=> b!2539505 (=> res!1070653 e!1605999)))

(assert (=> b!2539505 (= res!1070653 (not ((_ is Concat!12259) (regOne!15639 r!27340))))))

(declare-fun e!1605995 () Bool)

(assert (=> b!2539505 (= e!1605995 e!1605999)))

(declare-fun b!2539506 () Bool)

(assert (=> b!2539506 (= e!1605993 e!1605995)))

(declare-fun c!406321 () Bool)

(assert (=> b!2539506 (= c!406321 ((_ is Union!7563) (regOne!15639 r!27340)))))

(declare-fun bm!160325 () Bool)

(declare-fun call!160332 () Bool)

(assert (=> bm!160325 (= call!160332 (validRegex!3189 (ite c!406321 (regOne!15639 (regOne!15639 r!27340)) (regTwo!15638 (regOne!15639 r!27340)))))))

(declare-fun b!2539507 () Bool)

(declare-fun e!1605996 () Bool)

(assert (=> b!2539507 (= e!1605996 call!160332)))

(declare-fun b!2539508 () Bool)

(declare-fun e!1605997 () Bool)

(declare-fun call!160330 () Bool)

(assert (=> b!2539508 (= e!1605997 call!160330)))

(declare-fun bm!160326 () Bool)

(declare-fun call!160331 () Bool)

(assert (=> bm!160326 (= call!160330 call!160331)))

(declare-fun b!2539510 () Bool)

(declare-fun e!1605998 () Bool)

(assert (=> b!2539510 (= e!1605993 e!1605998)))

(declare-fun res!1070655 () Bool)

(assert (=> b!2539510 (= res!1070655 (not (nullable!2480 (reg!7892 (regOne!15639 r!27340)))))))

(assert (=> b!2539510 (=> (not res!1070655) (not e!1605998))))

(declare-fun bm!160327 () Bool)

(assert (=> bm!160327 (= call!160331 (validRegex!3189 (ite c!406320 (reg!7892 (regOne!15639 r!27340)) (ite c!406321 (regTwo!15639 (regOne!15639 r!27340)) (regOne!15638 (regOne!15639 r!27340))))))))

(declare-fun b!2539511 () Bool)

(assert (=> b!2539511 (= e!1605999 e!1605996)))

(declare-fun res!1070652 () Bool)

(assert (=> b!2539511 (=> (not res!1070652) (not e!1605996))))

(assert (=> b!2539511 (= res!1070652 call!160330)))

(declare-fun b!2539512 () Bool)

(declare-fun res!1070654 () Bool)

(assert (=> b!2539512 (=> (not res!1070654) (not e!1605997))))

(assert (=> b!2539512 (= res!1070654 call!160332)))

(assert (=> b!2539512 (= e!1605995 e!1605997)))

(declare-fun d!721211 () Bool)

(declare-fun res!1070651 () Bool)

(assert (=> d!721211 (=> res!1070651 e!1605994)))

(assert (=> d!721211 (= res!1070651 ((_ is ElementMatch!7563) (regOne!15639 r!27340)))))

(assert (=> d!721211 (= (validRegex!3189 (regOne!15639 r!27340)) e!1605994)))

(declare-fun b!2539509 () Bool)

(assert (=> b!2539509 (= e!1605998 call!160331)))

(assert (= (and d!721211 (not res!1070651)) b!2539504))

(assert (= (and b!2539504 c!406320) b!2539510))

(assert (= (and b!2539504 (not c!406320)) b!2539506))

(assert (= (and b!2539510 res!1070655) b!2539509))

(assert (= (and b!2539506 c!406321) b!2539512))

(assert (= (and b!2539506 (not c!406321)) b!2539505))

(assert (= (and b!2539512 res!1070654) b!2539508))

(assert (= (and b!2539505 (not res!1070653)) b!2539511))

(assert (= (and b!2539511 res!1070652) b!2539507))

(assert (= (or b!2539512 b!2539507) bm!160325))

(assert (= (or b!2539508 b!2539511) bm!160326))

(assert (= (or b!2539509 bm!160326) bm!160327))

(declare-fun m!2886821 () Bool)

(assert (=> bm!160325 m!2886821))

(declare-fun m!2886823 () Bool)

(assert (=> b!2539510 m!2886823))

(declare-fun m!2886825 () Bool)

(assert (=> bm!160327 m!2886825))

(assert (=> b!2539094 d!721211))

(declare-fun d!721213 () Bool)

(assert (=> d!721213 (= (matchR!3518 (regOne!15639 r!27340) lt!901773) (matchR!3518 (derivative!258 (regOne!15639 r!27340) lt!901773) Nil!29528))))

(declare-fun lt!901818 () Unit!43327)

(assert (=> d!721213 (= lt!901818 (choose!15020 (regOne!15639 r!27340) lt!901773))))

(assert (=> d!721213 (validRegex!3189 (regOne!15639 r!27340))))

(assert (=> d!721213 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!164 (regOne!15639 r!27340) lt!901773) lt!901818)))

(declare-fun bs!469356 () Bool)

(assert (= bs!469356 d!721213))

(assert (=> bs!469356 m!2886561))

(assert (=> bs!469356 m!2886563))

(assert (=> bs!469356 m!2886553))

(assert (=> bs!469356 m!2886561))

(declare-fun m!2886827 () Bool)

(assert (=> bs!469356 m!2886827))

(assert (=> bs!469356 m!2886551))

(assert (=> b!2539094 d!721213))

(declare-fun d!721215 () Bool)

(declare-fun nullableFct!711 (Regex!7563) Bool)

(assert (=> d!721215 (= (nullable!2480 (derivative!258 (derivativeStep!2132 (regOne!15639 r!27340) c!14016) tl!4068)) (nullableFct!711 (derivative!258 (derivativeStep!2132 (regOne!15639 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469357 () Bool)

(assert (= bs!469357 d!721215))

(assert (=> bs!469357 m!2886535))

(declare-fun m!2886829 () Bool)

(assert (=> bs!469357 m!2886829))

(assert (=> b!2539089 d!721215))

(declare-fun d!721217 () Bool)

(declare-fun lt!901819 () Regex!7563)

(assert (=> d!721217 (validRegex!3189 lt!901819)))

(declare-fun e!1606000 () Regex!7563)

(assert (=> d!721217 (= lt!901819 e!1606000)))

(declare-fun c!406322 () Bool)

(assert (=> d!721217 (= c!406322 ((_ is Cons!29528) tl!4068))))

(assert (=> d!721217 (validRegex!3189 (derivativeStep!2132 (regOne!15639 r!27340) c!14016))))

(assert (=> d!721217 (= (derivative!258 (derivativeStep!2132 (regOne!15639 r!27340) c!14016) tl!4068) lt!901819)))

(declare-fun b!2539513 () Bool)

(assert (=> b!2539513 (= e!1606000 (derivative!258 (derivativeStep!2132 (derivativeStep!2132 (regOne!15639 r!27340) c!14016) (h!34948 tl!4068)) (t!211327 tl!4068)))))

(declare-fun b!2539514 () Bool)

(assert (=> b!2539514 (= e!1606000 (derivativeStep!2132 (regOne!15639 r!27340) c!14016))))

(assert (= (and d!721217 c!406322) b!2539513))

(assert (= (and d!721217 (not c!406322)) b!2539514))

(declare-fun m!2886831 () Bool)

(assert (=> d!721217 m!2886831))

(assert (=> d!721217 m!2886533))

(declare-fun m!2886833 () Bool)

(assert (=> d!721217 m!2886833))

(assert (=> b!2539513 m!2886533))

(declare-fun m!2886835 () Bool)

(assert (=> b!2539513 m!2886835))

(assert (=> b!2539513 m!2886835))

(declare-fun m!2886837 () Bool)

(assert (=> b!2539513 m!2886837))

(assert (=> b!2539089 d!721217))

(declare-fun bm!160336 () Bool)

(declare-fun call!160341 () Regex!7563)

(declare-fun call!160343 () Regex!7563)

(assert (=> bm!160336 (= call!160341 call!160343)))

(declare-fun d!721219 () Bool)

(declare-fun lt!901822 () Regex!7563)

(assert (=> d!721219 (validRegex!3189 lt!901822)))

(declare-fun e!1606014 () Regex!7563)

(assert (=> d!721219 (= lt!901822 e!1606014)))

(declare-fun c!406334 () Bool)

(assert (=> d!721219 (= c!406334 (or ((_ is EmptyExpr!7563) (regOne!15639 r!27340)) ((_ is EmptyLang!7563) (regOne!15639 r!27340))))))

(assert (=> d!721219 (validRegex!3189 (regOne!15639 r!27340))))

(assert (=> d!721219 (= (derivativeStep!2132 (regOne!15639 r!27340) c!14016) lt!901822)))

(declare-fun b!2539535 () Bool)

(declare-fun e!1606012 () Regex!7563)

(assert (=> b!2539535 (= e!1606012 (ite (= c!14016 (c!406217 (regOne!15639 r!27340))) EmptyExpr!7563 EmptyLang!7563))))

(declare-fun call!160342 () Regex!7563)

(declare-fun e!1606015 () Regex!7563)

(declare-fun call!160344 () Regex!7563)

(declare-fun b!2539536 () Bool)

(assert (=> b!2539536 (= e!1606015 (Union!7563 (Concat!12259 call!160342 (regTwo!15638 (regOne!15639 r!27340))) call!160344))))

(declare-fun b!2539537 () Bool)

(declare-fun e!1606013 () Regex!7563)

(assert (=> b!2539537 (= e!1606013 (Concat!12259 call!160341 (regOne!15639 r!27340)))))

(declare-fun b!2539538 () Bool)

(assert (=> b!2539538 (= e!1606014 e!1606012)))

(declare-fun c!406335 () Bool)

(assert (=> b!2539538 (= c!406335 ((_ is ElementMatch!7563) (regOne!15639 r!27340)))))

(declare-fun b!2539539 () Bool)

(declare-fun c!406333 () Bool)

(assert (=> b!2539539 (= c!406333 (nullable!2480 (regOne!15638 (regOne!15639 r!27340))))))

(assert (=> b!2539539 (= e!1606013 e!1606015)))

(declare-fun bm!160337 () Bool)

(assert (=> bm!160337 (= call!160342 call!160341)))

(declare-fun b!2539540 () Bool)

(assert (=> b!2539540 (= e!1606015 (Union!7563 (Concat!12259 call!160342 (regTwo!15638 (regOne!15639 r!27340))) EmptyLang!7563))))

(declare-fun b!2539541 () Bool)

(declare-fun e!1606011 () Regex!7563)

(assert (=> b!2539541 (= e!1606011 (Union!7563 call!160343 call!160344))))

(declare-fun b!2539542 () Bool)

(declare-fun c!406336 () Bool)

(assert (=> b!2539542 (= c!406336 ((_ is Union!7563) (regOne!15639 r!27340)))))

(assert (=> b!2539542 (= e!1606012 e!1606011)))

(declare-fun bm!160338 () Bool)

(assert (=> bm!160338 (= call!160344 (derivativeStep!2132 (ite c!406336 (regTwo!15639 (regOne!15639 r!27340)) (regTwo!15638 (regOne!15639 r!27340))) c!14016))))

(declare-fun b!2539543 () Bool)

(assert (=> b!2539543 (= e!1606014 EmptyLang!7563)))

(declare-fun b!2539544 () Bool)

(assert (=> b!2539544 (= e!1606011 e!1606013)))

(declare-fun c!406337 () Bool)

(assert (=> b!2539544 (= c!406337 ((_ is Star!7563) (regOne!15639 r!27340)))))

(declare-fun bm!160339 () Bool)

(assert (=> bm!160339 (= call!160343 (derivativeStep!2132 (ite c!406336 (regOne!15639 (regOne!15639 r!27340)) (ite c!406337 (reg!7892 (regOne!15639 r!27340)) (regOne!15638 (regOne!15639 r!27340)))) c!14016))))

(assert (= (and d!721219 c!406334) b!2539543))

(assert (= (and d!721219 (not c!406334)) b!2539538))

(assert (= (and b!2539538 c!406335) b!2539535))

(assert (= (and b!2539538 (not c!406335)) b!2539542))

(assert (= (and b!2539542 c!406336) b!2539541))

(assert (= (and b!2539542 (not c!406336)) b!2539544))

(assert (= (and b!2539544 c!406337) b!2539537))

(assert (= (and b!2539544 (not c!406337)) b!2539539))

(assert (= (and b!2539539 c!406333) b!2539536))

(assert (= (and b!2539539 (not c!406333)) b!2539540))

(assert (= (or b!2539536 b!2539540) bm!160337))

(assert (= (or b!2539537 bm!160337) bm!160336))

(assert (= (or b!2539541 b!2539536) bm!160338))

(assert (= (or b!2539541 bm!160336) bm!160339))

(declare-fun m!2886839 () Bool)

(assert (=> d!721219 m!2886839))

(assert (=> d!721219 m!2886551))

(declare-fun m!2886841 () Bool)

(assert (=> b!2539539 m!2886841))

(declare-fun m!2886843 () Bool)

(assert (=> bm!160338 m!2886843))

(declare-fun m!2886845 () Bool)

(assert (=> bm!160339 m!2886845))

(assert (=> b!2539089 d!721219))

(declare-fun d!721221 () Bool)

(assert (=> d!721221 (= (nullable!2480 (derivative!258 (derivativeStep!2132 (regTwo!15639 r!27340) c!14016) tl!4068)) (nullableFct!711 (derivative!258 (derivativeStep!2132 (regTwo!15639 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469358 () Bool)

(assert (= bs!469358 d!721221))

(assert (=> bs!469358 m!2886577))

(declare-fun m!2886847 () Bool)

(assert (=> bs!469358 m!2886847))

(assert (=> b!2539087 d!721221))

(declare-fun d!721223 () Bool)

(declare-fun lt!901823 () Regex!7563)

(assert (=> d!721223 (validRegex!3189 lt!901823)))

(declare-fun e!1606016 () Regex!7563)

(assert (=> d!721223 (= lt!901823 e!1606016)))

(declare-fun c!406338 () Bool)

(assert (=> d!721223 (= c!406338 ((_ is Cons!29528) tl!4068))))

(assert (=> d!721223 (validRegex!3189 (derivativeStep!2132 (regTwo!15639 r!27340) c!14016))))

(assert (=> d!721223 (= (derivative!258 (derivativeStep!2132 (regTwo!15639 r!27340) c!14016) tl!4068) lt!901823)))

(declare-fun b!2539545 () Bool)

(assert (=> b!2539545 (= e!1606016 (derivative!258 (derivativeStep!2132 (derivativeStep!2132 (regTwo!15639 r!27340) c!14016) (h!34948 tl!4068)) (t!211327 tl!4068)))))

(declare-fun b!2539546 () Bool)

(assert (=> b!2539546 (= e!1606016 (derivativeStep!2132 (regTwo!15639 r!27340) c!14016))))

(assert (= (and d!721223 c!406338) b!2539545))

(assert (= (and d!721223 (not c!406338)) b!2539546))

(declare-fun m!2886849 () Bool)

(assert (=> d!721223 m!2886849))

(assert (=> d!721223 m!2886575))

(declare-fun m!2886851 () Bool)

(assert (=> d!721223 m!2886851))

(assert (=> b!2539545 m!2886575))

(declare-fun m!2886853 () Bool)

(assert (=> b!2539545 m!2886853))

(assert (=> b!2539545 m!2886853))

(declare-fun m!2886855 () Bool)

(assert (=> b!2539545 m!2886855))

(assert (=> b!2539087 d!721223))

(declare-fun bm!160340 () Bool)

(declare-fun call!160345 () Regex!7563)

(declare-fun call!160347 () Regex!7563)

(assert (=> bm!160340 (= call!160345 call!160347)))

(declare-fun d!721225 () Bool)

(declare-fun lt!901824 () Regex!7563)

(assert (=> d!721225 (validRegex!3189 lt!901824)))

(declare-fun e!1606020 () Regex!7563)

(assert (=> d!721225 (= lt!901824 e!1606020)))

(declare-fun c!406340 () Bool)

(assert (=> d!721225 (= c!406340 (or ((_ is EmptyExpr!7563) (regTwo!15639 r!27340)) ((_ is EmptyLang!7563) (regTwo!15639 r!27340))))))

(assert (=> d!721225 (validRegex!3189 (regTwo!15639 r!27340))))

(assert (=> d!721225 (= (derivativeStep!2132 (regTwo!15639 r!27340) c!14016) lt!901824)))

(declare-fun b!2539547 () Bool)

(declare-fun e!1606018 () Regex!7563)

(assert (=> b!2539547 (= e!1606018 (ite (= c!14016 (c!406217 (regTwo!15639 r!27340))) EmptyExpr!7563 EmptyLang!7563))))

(declare-fun call!160346 () Regex!7563)

(declare-fun e!1606021 () Regex!7563)

(declare-fun b!2539548 () Bool)

(declare-fun call!160348 () Regex!7563)

(assert (=> b!2539548 (= e!1606021 (Union!7563 (Concat!12259 call!160346 (regTwo!15638 (regTwo!15639 r!27340))) call!160348))))

(declare-fun b!2539549 () Bool)

(declare-fun e!1606019 () Regex!7563)

(assert (=> b!2539549 (= e!1606019 (Concat!12259 call!160345 (regTwo!15639 r!27340)))))

(declare-fun b!2539550 () Bool)

(assert (=> b!2539550 (= e!1606020 e!1606018)))

(declare-fun c!406341 () Bool)

(assert (=> b!2539550 (= c!406341 ((_ is ElementMatch!7563) (regTwo!15639 r!27340)))))

(declare-fun b!2539551 () Bool)

(declare-fun c!406339 () Bool)

(assert (=> b!2539551 (= c!406339 (nullable!2480 (regOne!15638 (regTwo!15639 r!27340))))))

(assert (=> b!2539551 (= e!1606019 e!1606021)))

(declare-fun bm!160341 () Bool)

(assert (=> bm!160341 (= call!160346 call!160345)))

(declare-fun b!2539552 () Bool)

(assert (=> b!2539552 (= e!1606021 (Union!7563 (Concat!12259 call!160346 (regTwo!15638 (regTwo!15639 r!27340))) EmptyLang!7563))))

(declare-fun b!2539553 () Bool)

(declare-fun e!1606017 () Regex!7563)

(assert (=> b!2539553 (= e!1606017 (Union!7563 call!160347 call!160348))))

(declare-fun b!2539554 () Bool)

(declare-fun c!406342 () Bool)

(assert (=> b!2539554 (= c!406342 ((_ is Union!7563) (regTwo!15639 r!27340)))))

(assert (=> b!2539554 (= e!1606018 e!1606017)))

(declare-fun bm!160342 () Bool)

(assert (=> bm!160342 (= call!160348 (derivativeStep!2132 (ite c!406342 (regTwo!15639 (regTwo!15639 r!27340)) (regTwo!15638 (regTwo!15639 r!27340))) c!14016))))

(declare-fun b!2539555 () Bool)

(assert (=> b!2539555 (= e!1606020 EmptyLang!7563)))

(declare-fun b!2539556 () Bool)

(assert (=> b!2539556 (= e!1606017 e!1606019)))

(declare-fun c!406343 () Bool)

(assert (=> b!2539556 (= c!406343 ((_ is Star!7563) (regTwo!15639 r!27340)))))

(declare-fun bm!160343 () Bool)

(assert (=> bm!160343 (= call!160347 (derivativeStep!2132 (ite c!406342 (regOne!15639 (regTwo!15639 r!27340)) (ite c!406343 (reg!7892 (regTwo!15639 r!27340)) (regOne!15638 (regTwo!15639 r!27340)))) c!14016))))

(assert (= (and d!721225 c!406340) b!2539555))

(assert (= (and d!721225 (not c!406340)) b!2539550))

(assert (= (and b!2539550 c!406341) b!2539547))

(assert (= (and b!2539550 (not c!406341)) b!2539554))

(assert (= (and b!2539554 c!406342) b!2539553))

(assert (= (and b!2539554 (not c!406342)) b!2539556))

(assert (= (and b!2539556 c!406343) b!2539549))

(assert (= (and b!2539556 (not c!406343)) b!2539551))

(assert (= (and b!2539551 c!406339) b!2539548))

(assert (= (and b!2539551 (not c!406339)) b!2539552))

(assert (= (or b!2539548 b!2539552) bm!160341))

(assert (= (or b!2539549 bm!160341) bm!160340))

(assert (= (or b!2539553 b!2539548) bm!160342))

(assert (= (or b!2539553 bm!160340) bm!160343))

(declare-fun m!2886857 () Bool)

(assert (=> d!721225 m!2886857))

(assert (=> d!721225 m!2886545))

(declare-fun m!2886859 () Bool)

(assert (=> b!2539551 m!2886859))

(declare-fun m!2886861 () Bool)

(assert (=> bm!160342 m!2886861))

(declare-fun m!2886863 () Bool)

(assert (=> bm!160343 m!2886863))

(assert (=> b!2539087 d!721225))

(declare-fun b!2539557 () Bool)

(declare-fun e!1606023 () Bool)

(declare-fun e!1606022 () Bool)

(assert (=> b!2539557 (= e!1606023 e!1606022)))

(declare-fun c!406344 () Bool)

(assert (=> b!2539557 (= c!406344 ((_ is Star!7563) r!27340))))

(declare-fun b!2539558 () Bool)

(declare-fun res!1070658 () Bool)

(declare-fun e!1606028 () Bool)

(assert (=> b!2539558 (=> res!1070658 e!1606028)))

(assert (=> b!2539558 (= res!1070658 (not ((_ is Concat!12259) r!27340)))))

(declare-fun e!1606024 () Bool)

(assert (=> b!2539558 (= e!1606024 e!1606028)))

(declare-fun b!2539559 () Bool)

(assert (=> b!2539559 (= e!1606022 e!1606024)))

(declare-fun c!406345 () Bool)

(assert (=> b!2539559 (= c!406345 ((_ is Union!7563) r!27340))))

(declare-fun bm!160344 () Bool)

(declare-fun call!160351 () Bool)

(assert (=> bm!160344 (= call!160351 (validRegex!3189 (ite c!406345 (regOne!15639 r!27340) (regTwo!15638 r!27340))))))

(declare-fun b!2539560 () Bool)

(declare-fun e!1606025 () Bool)

(assert (=> b!2539560 (= e!1606025 call!160351)))

(declare-fun b!2539561 () Bool)

(declare-fun e!1606026 () Bool)

(declare-fun call!160349 () Bool)

(assert (=> b!2539561 (= e!1606026 call!160349)))

(declare-fun bm!160345 () Bool)

(declare-fun call!160350 () Bool)

(assert (=> bm!160345 (= call!160349 call!160350)))

(declare-fun b!2539563 () Bool)

(declare-fun e!1606027 () Bool)

(assert (=> b!2539563 (= e!1606022 e!1606027)))

(declare-fun res!1070660 () Bool)

(assert (=> b!2539563 (= res!1070660 (not (nullable!2480 (reg!7892 r!27340))))))

(assert (=> b!2539563 (=> (not res!1070660) (not e!1606027))))

(declare-fun bm!160346 () Bool)

(assert (=> bm!160346 (= call!160350 (validRegex!3189 (ite c!406344 (reg!7892 r!27340) (ite c!406345 (regTwo!15639 r!27340) (regOne!15638 r!27340)))))))

(declare-fun b!2539564 () Bool)

(assert (=> b!2539564 (= e!1606028 e!1606025)))

(declare-fun res!1070657 () Bool)

(assert (=> b!2539564 (=> (not res!1070657) (not e!1606025))))

(assert (=> b!2539564 (= res!1070657 call!160349)))

(declare-fun b!2539565 () Bool)

(declare-fun res!1070659 () Bool)

(assert (=> b!2539565 (=> (not res!1070659) (not e!1606026))))

(assert (=> b!2539565 (= res!1070659 call!160351)))

(assert (=> b!2539565 (= e!1606024 e!1606026)))

(declare-fun d!721227 () Bool)

(declare-fun res!1070656 () Bool)

(assert (=> d!721227 (=> res!1070656 e!1606023)))

(assert (=> d!721227 (= res!1070656 ((_ is ElementMatch!7563) r!27340))))

(assert (=> d!721227 (= (validRegex!3189 r!27340) e!1606023)))

(declare-fun b!2539562 () Bool)

(assert (=> b!2539562 (= e!1606027 call!160350)))

(assert (= (and d!721227 (not res!1070656)) b!2539557))

(assert (= (and b!2539557 c!406344) b!2539563))

(assert (= (and b!2539557 (not c!406344)) b!2539559))

(assert (= (and b!2539563 res!1070660) b!2539562))

(assert (= (and b!2539559 c!406345) b!2539565))

(assert (= (and b!2539559 (not c!406345)) b!2539558))

(assert (= (and b!2539565 res!1070659) b!2539561))

(assert (= (and b!2539558 (not res!1070658)) b!2539564))

(assert (= (and b!2539564 res!1070657) b!2539560))

(assert (= (or b!2539565 b!2539560) bm!160344))

(assert (= (or b!2539561 b!2539564) bm!160345))

(assert (= (or b!2539562 bm!160345) bm!160346))

(declare-fun m!2886865 () Bool)

(assert (=> bm!160344 m!2886865))

(declare-fun m!2886867 () Bool)

(assert (=> b!2539563 m!2886867))

(declare-fun m!2886869 () Bool)

(assert (=> bm!160346 m!2886869))

(assert (=> start!246772 d!721227))

(declare-fun d!721229 () Bool)

(assert (=> d!721229 (= (nullable!2480 (derivative!258 (derivativeStep!2132 r!27340 c!14016) tl!4068)) (nullableFct!711 (derivative!258 (derivativeStep!2132 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469359 () Bool)

(assert (= bs!469359 d!721229))

(assert (=> bs!469359 m!2886541))

(declare-fun m!2886871 () Bool)

(assert (=> bs!469359 m!2886871))

(assert (=> b!2539092 d!721229))

(declare-fun d!721231 () Bool)

(declare-fun lt!901825 () Regex!7563)

(assert (=> d!721231 (validRegex!3189 lt!901825)))

(declare-fun e!1606029 () Regex!7563)

(assert (=> d!721231 (= lt!901825 e!1606029)))

(declare-fun c!406346 () Bool)

(assert (=> d!721231 (= c!406346 ((_ is Cons!29528) tl!4068))))

(assert (=> d!721231 (validRegex!3189 (derivativeStep!2132 r!27340 c!14016))))

(assert (=> d!721231 (= (derivative!258 (derivativeStep!2132 r!27340 c!14016) tl!4068) lt!901825)))

(declare-fun b!2539566 () Bool)

(assert (=> b!2539566 (= e!1606029 (derivative!258 (derivativeStep!2132 (derivativeStep!2132 r!27340 c!14016) (h!34948 tl!4068)) (t!211327 tl!4068)))))

(declare-fun b!2539567 () Bool)

(assert (=> b!2539567 (= e!1606029 (derivativeStep!2132 r!27340 c!14016))))

(assert (= (and d!721231 c!406346) b!2539566))

(assert (= (and d!721231 (not c!406346)) b!2539567))

(declare-fun m!2886873 () Bool)

(assert (=> d!721231 m!2886873))

(assert (=> d!721231 m!2886539))

(declare-fun m!2886875 () Bool)

(assert (=> d!721231 m!2886875))

(assert (=> b!2539566 m!2886539))

(declare-fun m!2886877 () Bool)

(assert (=> b!2539566 m!2886877))

(assert (=> b!2539566 m!2886877))

(declare-fun m!2886879 () Bool)

(assert (=> b!2539566 m!2886879))

(assert (=> b!2539092 d!721231))

(declare-fun bm!160347 () Bool)

(declare-fun call!160352 () Regex!7563)

(declare-fun call!160354 () Regex!7563)

(assert (=> bm!160347 (= call!160352 call!160354)))

(declare-fun d!721233 () Bool)

(declare-fun lt!901826 () Regex!7563)

(assert (=> d!721233 (validRegex!3189 lt!901826)))

(declare-fun e!1606033 () Regex!7563)

(assert (=> d!721233 (= lt!901826 e!1606033)))

(declare-fun c!406348 () Bool)

(assert (=> d!721233 (= c!406348 (or ((_ is EmptyExpr!7563) r!27340) ((_ is EmptyLang!7563) r!27340)))))

(assert (=> d!721233 (validRegex!3189 r!27340)))

(assert (=> d!721233 (= (derivativeStep!2132 r!27340 c!14016) lt!901826)))

(declare-fun b!2539568 () Bool)

(declare-fun e!1606031 () Regex!7563)

(assert (=> b!2539568 (= e!1606031 (ite (= c!14016 (c!406217 r!27340)) EmptyExpr!7563 EmptyLang!7563))))

(declare-fun call!160353 () Regex!7563)

(declare-fun b!2539569 () Bool)

(declare-fun e!1606034 () Regex!7563)

(declare-fun call!160355 () Regex!7563)

(assert (=> b!2539569 (= e!1606034 (Union!7563 (Concat!12259 call!160353 (regTwo!15638 r!27340)) call!160355))))

(declare-fun b!2539570 () Bool)

(declare-fun e!1606032 () Regex!7563)

(assert (=> b!2539570 (= e!1606032 (Concat!12259 call!160352 r!27340))))

(declare-fun b!2539571 () Bool)

(assert (=> b!2539571 (= e!1606033 e!1606031)))

(declare-fun c!406349 () Bool)

(assert (=> b!2539571 (= c!406349 ((_ is ElementMatch!7563) r!27340))))

(declare-fun b!2539572 () Bool)

(declare-fun c!406347 () Bool)

(assert (=> b!2539572 (= c!406347 (nullable!2480 (regOne!15638 r!27340)))))

(assert (=> b!2539572 (= e!1606032 e!1606034)))

(declare-fun bm!160348 () Bool)

(assert (=> bm!160348 (= call!160353 call!160352)))

(declare-fun b!2539573 () Bool)

(assert (=> b!2539573 (= e!1606034 (Union!7563 (Concat!12259 call!160353 (regTwo!15638 r!27340)) EmptyLang!7563))))

(declare-fun b!2539574 () Bool)

(declare-fun e!1606030 () Regex!7563)

(assert (=> b!2539574 (= e!1606030 (Union!7563 call!160354 call!160355))))

(declare-fun b!2539575 () Bool)

(declare-fun c!406350 () Bool)

(assert (=> b!2539575 (= c!406350 ((_ is Union!7563) r!27340))))

(assert (=> b!2539575 (= e!1606031 e!1606030)))

(declare-fun bm!160349 () Bool)

(assert (=> bm!160349 (= call!160355 (derivativeStep!2132 (ite c!406350 (regTwo!15639 r!27340) (regTwo!15638 r!27340)) c!14016))))

(declare-fun b!2539576 () Bool)

(assert (=> b!2539576 (= e!1606033 EmptyLang!7563)))

(declare-fun b!2539577 () Bool)

(assert (=> b!2539577 (= e!1606030 e!1606032)))

(declare-fun c!406351 () Bool)

(assert (=> b!2539577 (= c!406351 ((_ is Star!7563) r!27340))))

(declare-fun bm!160350 () Bool)

(assert (=> bm!160350 (= call!160354 (derivativeStep!2132 (ite c!406350 (regOne!15639 r!27340) (ite c!406351 (reg!7892 r!27340) (regOne!15638 r!27340))) c!14016))))

(assert (= (and d!721233 c!406348) b!2539576))

(assert (= (and d!721233 (not c!406348)) b!2539571))

(assert (= (and b!2539571 c!406349) b!2539568))

(assert (= (and b!2539571 (not c!406349)) b!2539575))

(assert (= (and b!2539575 c!406350) b!2539574))

(assert (= (and b!2539575 (not c!406350)) b!2539577))

(assert (= (and b!2539577 c!406351) b!2539570))

(assert (= (and b!2539577 (not c!406351)) b!2539572))

(assert (= (and b!2539572 c!406347) b!2539569))

(assert (= (and b!2539572 (not c!406347)) b!2539573))

(assert (= (or b!2539569 b!2539573) bm!160348))

(assert (= (or b!2539570 bm!160348) bm!160347))

(assert (= (or b!2539574 b!2539569) bm!160349))

(assert (= (or b!2539574 bm!160347) bm!160350))

(declare-fun m!2886881 () Bool)

(assert (=> d!721233 m!2886881))

(assert (=> d!721233 m!2886547))

(declare-fun m!2886883 () Bool)

(assert (=> b!2539572 m!2886883))

(declare-fun m!2886885 () Bool)

(assert (=> bm!160349 m!2886885))

(declare-fun m!2886887 () Bool)

(assert (=> bm!160350 m!2886887))

(assert (=> b!2539092 d!721233))

(declare-fun b!2539589 () Bool)

(declare-fun e!1606037 () Bool)

(declare-fun tp!811132 () Bool)

(declare-fun tp!811134 () Bool)

(assert (=> b!2539589 (= e!1606037 (and tp!811132 tp!811134))))

(declare-fun b!2539590 () Bool)

(declare-fun tp!811135 () Bool)

(assert (=> b!2539590 (= e!1606037 tp!811135)))

(assert (=> b!2539090 (= tp!811081 e!1606037)))

(declare-fun b!2539588 () Bool)

(assert (=> b!2539588 (= e!1606037 tp_is_empty!12981)))

(declare-fun b!2539591 () Bool)

(declare-fun tp!811131 () Bool)

(declare-fun tp!811133 () Bool)

(assert (=> b!2539591 (= e!1606037 (and tp!811131 tp!811133))))

(assert (= (and b!2539090 ((_ is ElementMatch!7563) (regOne!15639 r!27340))) b!2539588))

(assert (= (and b!2539090 ((_ is Concat!12259) (regOne!15639 r!27340))) b!2539589))

(assert (= (and b!2539090 ((_ is Star!7563) (regOne!15639 r!27340))) b!2539590))

(assert (= (and b!2539090 ((_ is Union!7563) (regOne!15639 r!27340))) b!2539591))

(declare-fun b!2539593 () Bool)

(declare-fun e!1606038 () Bool)

(declare-fun tp!811137 () Bool)

(declare-fun tp!811139 () Bool)

(assert (=> b!2539593 (= e!1606038 (and tp!811137 tp!811139))))

(declare-fun b!2539594 () Bool)

(declare-fun tp!811140 () Bool)

(assert (=> b!2539594 (= e!1606038 tp!811140)))

(assert (=> b!2539090 (= tp!811077 e!1606038)))

(declare-fun b!2539592 () Bool)

(assert (=> b!2539592 (= e!1606038 tp_is_empty!12981)))

(declare-fun b!2539595 () Bool)

(declare-fun tp!811136 () Bool)

(declare-fun tp!811138 () Bool)

(assert (=> b!2539595 (= e!1606038 (and tp!811136 tp!811138))))

(assert (= (and b!2539090 ((_ is ElementMatch!7563) (regTwo!15639 r!27340))) b!2539592))

(assert (= (and b!2539090 ((_ is Concat!12259) (regTwo!15639 r!27340))) b!2539593))

(assert (= (and b!2539090 ((_ is Star!7563) (regTwo!15639 r!27340))) b!2539594))

(assert (= (and b!2539090 ((_ is Union!7563) (regTwo!15639 r!27340))) b!2539595))

(declare-fun b!2539600 () Bool)

(declare-fun e!1606041 () Bool)

(declare-fun tp!811143 () Bool)

(assert (=> b!2539600 (= e!1606041 (and tp_is_empty!12981 tp!811143))))

(assert (=> b!2539088 (= tp!811080 e!1606041)))

(assert (= (and b!2539088 ((_ is Cons!29528) (t!211327 tl!4068))) b!2539600))

(declare-fun b!2539602 () Bool)

(declare-fun e!1606042 () Bool)

(declare-fun tp!811145 () Bool)

(declare-fun tp!811147 () Bool)

(assert (=> b!2539602 (= e!1606042 (and tp!811145 tp!811147))))

(declare-fun b!2539603 () Bool)

(declare-fun tp!811148 () Bool)

(assert (=> b!2539603 (= e!1606042 tp!811148)))

(assert (=> b!2539091 (= tp!811078 e!1606042)))

(declare-fun b!2539601 () Bool)

(assert (=> b!2539601 (= e!1606042 tp_is_empty!12981)))

(declare-fun b!2539604 () Bool)

(declare-fun tp!811144 () Bool)

(declare-fun tp!811146 () Bool)

(assert (=> b!2539604 (= e!1606042 (and tp!811144 tp!811146))))

(assert (= (and b!2539091 ((_ is ElementMatch!7563) (regOne!15638 r!27340))) b!2539601))

(assert (= (and b!2539091 ((_ is Concat!12259) (regOne!15638 r!27340))) b!2539602))

(assert (= (and b!2539091 ((_ is Star!7563) (regOne!15638 r!27340))) b!2539603))

(assert (= (and b!2539091 ((_ is Union!7563) (regOne!15638 r!27340))) b!2539604))

(declare-fun b!2539606 () Bool)

(declare-fun e!1606043 () Bool)

(declare-fun tp!811150 () Bool)

(declare-fun tp!811152 () Bool)

(assert (=> b!2539606 (= e!1606043 (and tp!811150 tp!811152))))

(declare-fun b!2539607 () Bool)

(declare-fun tp!811153 () Bool)

(assert (=> b!2539607 (= e!1606043 tp!811153)))

(assert (=> b!2539091 (= tp!811079 e!1606043)))

(declare-fun b!2539605 () Bool)

(assert (=> b!2539605 (= e!1606043 tp_is_empty!12981)))

(declare-fun b!2539608 () Bool)

(declare-fun tp!811149 () Bool)

(declare-fun tp!811151 () Bool)

(assert (=> b!2539608 (= e!1606043 (and tp!811149 tp!811151))))

(assert (= (and b!2539091 ((_ is ElementMatch!7563) (regTwo!15638 r!27340))) b!2539605))

(assert (= (and b!2539091 ((_ is Concat!12259) (regTwo!15638 r!27340))) b!2539606))

(assert (= (and b!2539091 ((_ is Star!7563) (regTwo!15638 r!27340))) b!2539607))

(assert (= (and b!2539091 ((_ is Union!7563) (regTwo!15638 r!27340))) b!2539608))

(declare-fun b!2539610 () Bool)

(declare-fun e!1606044 () Bool)

(declare-fun tp!811155 () Bool)

(declare-fun tp!811157 () Bool)

(assert (=> b!2539610 (= e!1606044 (and tp!811155 tp!811157))))

(declare-fun b!2539611 () Bool)

(declare-fun tp!811158 () Bool)

(assert (=> b!2539611 (= e!1606044 tp!811158)))

(assert (=> b!2539086 (= tp!811082 e!1606044)))

(declare-fun b!2539609 () Bool)

(assert (=> b!2539609 (= e!1606044 tp_is_empty!12981)))

(declare-fun b!2539612 () Bool)

(declare-fun tp!811154 () Bool)

(declare-fun tp!811156 () Bool)

(assert (=> b!2539612 (= e!1606044 (and tp!811154 tp!811156))))

(assert (= (and b!2539086 ((_ is ElementMatch!7563) (reg!7892 r!27340))) b!2539609))

(assert (= (and b!2539086 ((_ is Concat!12259) (reg!7892 r!27340))) b!2539610))

(assert (= (and b!2539086 ((_ is Star!7563) (reg!7892 r!27340))) b!2539611))

(assert (= (and b!2539086 ((_ is Union!7563) (reg!7892 r!27340))) b!2539612))

(check-sat (not b!2539611) (not d!721155) (not bm!160350) (not b!2539594) (not b!2539479) (not b!2539426) (not b!2539603) (not d!721209) (not b!2539591) (not b!2539433) (not d!721159) (not b!2539427) (not d!721223) (not d!721229) (not b!2539432) (not b!2539487) (not b!2539449) (not d!721195) (not b!2539572) (not d!721199) (not b!2539436) (not b!2539471) (not b!2539593) (not b!2539428) (not b!2539492) (not b!2539440) (not b!2539470) (not bm!160343) (not b!2539606) (not bm!160338) (not d!721207) (not b!2539502) (not b!2539501) (not bm!160319) (not d!721197) (not b!2539463) (not b!2539600) (not b!2539607) (not b!2539442) (not bm!160342) (not b!2539482) (not d!721203) (not bm!160320) (not b!2539595) (not b!2539563) (not b!2539496) (not b!2539478) (not d!721219) (not d!721205) (not b!2539444) (not b!2539545) (not b!2539602) (not b!2539610) (not b!2539604) (not b!2539456) (not b!2539419) (not bm!160324) (not b!2539500) (not bm!160288) (not bm!160339) (not d!721217) (not bm!160349) (not d!721151) (not d!721221) (not b!2539441) (not b!2539452) (not bm!160346) (not b!2539513) (not d!721231) (not b!2539242) (not b!2539466) (not b!2539486) (not b!2539488) (not b!2539418) (not d!721201) (not b!2539612) (not bm!160327) (not b!2539590) (not b!2539174) (not d!721233) (not d!721213) (not b!2539589) (not b!2539462) tp_is_empty!12981 (not bm!160290) (not bm!160322) (not b!2539448) (not b!2539474) (not bm!160321) (not b!2539493) (not bm!160325) (not bm!160344) (not b!2539510) (not d!721225) (not b!2539422) (not b!2539457) (not b!2539458) (not b!2539608) (not d!721215) (not bm!160323) (not b!2539551) (not b!2539539) (not b!2539472) (not b!2539566))
(check-sat)
