; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247384 () Bool)

(assert start!247384)

(declare-fun b!2550182 () Bool)

(declare-fun e!1611567 () Bool)

(declare-fun tp!813622 () Bool)

(declare-fun tp!813626 () Bool)

(assert (=> b!2550182 (= e!1611567 (and tp!813622 tp!813626))))

(declare-fun b!2550183 () Bool)

(declare-fun tp_is_empty!13053 () Bool)

(assert (=> b!2550183 (= e!1611567 tp_is_empty!13053)))

(declare-fun b!2550184 () Bool)

(declare-fun res!1074278 () Bool)

(declare-fun e!1611568 () Bool)

(assert (=> b!2550184 (=> res!1074278 e!1611568)))

(declare-datatypes ((C!15356 0))(
  ( (C!15357 (val!9330 Int)) )
))
(declare-datatypes ((Regex!7599 0))(
  ( (ElementMatch!7599 (c!408807 C!15356)) (Concat!12295 (regOne!15710 Regex!7599) (regTwo!15710 Regex!7599)) (EmptyExpr!7599) (Star!7599 (reg!7928 Regex!7599)) (EmptyLang!7599) (Union!7599 (regOne!15711 Regex!7599) (regTwo!15711 Regex!7599)) )
))
(declare-fun lt!903323 () Regex!7599)

(declare-fun validRegex!3225 (Regex!7599) Bool)

(assert (=> b!2550184 (= res!1074278 (not (validRegex!3225 lt!903323)))))

(declare-fun b!2550185 () Bool)

(declare-fun e!1611569 () Bool)

(assert (=> b!2550185 (= e!1611569 (not e!1611568))))

(declare-fun res!1074277 () Bool)

(assert (=> b!2550185 (=> res!1074277 e!1611568)))

(declare-fun lt!903325 () Regex!7599)

(assert (=> b!2550185 (= res!1074277 (not (validRegex!3225 lt!903325)))))

(declare-fun lt!903326 () Bool)

(declare-fun lt!903322 () Regex!7599)

(declare-datatypes ((List!29664 0))(
  ( (Nil!29564) (Cons!29564 (h!34984 C!15356) (t!211363 List!29664)) )
))
(declare-fun matchR!3544 (Regex!7599 List!29664) Bool)

(assert (=> b!2550185 (= lt!903326 (matchR!3544 lt!903322 Nil!29564))))

(declare-fun lt!903321 () Regex!7599)

(declare-fun tl!4068 () List!29664)

(assert (=> b!2550185 (= lt!903326 (matchR!3544 lt!903321 tl!4068))))

(declare-fun derivative!294 (Regex!7599 List!29664) Regex!7599)

(assert (=> b!2550185 (= lt!903322 (derivative!294 lt!903321 tl!4068))))

(declare-datatypes ((Unit!43383 0))(
  ( (Unit!43384) )
))
(declare-fun lt!903324 () Unit!43383)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!190 (Regex!7599 List!29664) Unit!43383)

(assert (=> b!2550185 (= lt!903324 (lemmaMatchRIsSameAsWholeDerivativeAndNil!190 lt!903321 tl!4068))))

(assert (=> b!2550185 (= lt!903321 (Union!7599 lt!903325 lt!903323))))

(declare-fun r!27340 () Regex!7599)

(declare-fun c!14016 () C!15356)

(declare-fun derivativeStep!2168 (Regex!7599 C!15356) Regex!7599)

(assert (=> b!2550185 (= lt!903323 (derivativeStep!2168 (regTwo!15710 r!27340) c!14016))))

(assert (=> b!2550185 (= lt!903325 (Concat!12295 (derivativeStep!2168 (regOne!15710 r!27340) c!14016) (regTwo!15710 r!27340)))))

(declare-fun res!1074282 () Bool)

(assert (=> start!247384 (=> (not res!1074282) (not e!1611569))))

(assert (=> start!247384 (= res!1074282 (validRegex!3225 r!27340))))

(assert (=> start!247384 e!1611569))

(assert (=> start!247384 e!1611567))

(assert (=> start!247384 tp_is_empty!13053))

(declare-fun e!1611570 () Bool)

(assert (=> start!247384 e!1611570))

(declare-fun b!2550186 () Bool)

(declare-fun res!1074280 () Bool)

(assert (=> b!2550186 (=> (not res!1074280) (not e!1611569))))

(declare-fun nullable!2516 (Regex!7599) Bool)

(assert (=> b!2550186 (= res!1074280 (nullable!2516 (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)))))

(declare-fun b!2550187 () Bool)

(declare-fun res!1074279 () Bool)

(assert (=> b!2550187 (=> (not res!1074279) (not e!1611569))))

(assert (=> b!2550187 (= res!1074279 (nullable!2516 (regOne!15710 r!27340)))))

(declare-fun b!2550188 () Bool)

(declare-fun tp!813625 () Bool)

(declare-fun tp!813621 () Bool)

(assert (=> b!2550188 (= e!1611567 (and tp!813625 tp!813621))))

(declare-fun b!2550189 () Bool)

(declare-fun tp!813623 () Bool)

(assert (=> b!2550189 (= e!1611570 (and tp_is_empty!13053 tp!813623))))

(declare-fun b!2550190 () Bool)

(assert (=> b!2550190 (= e!1611568 lt!903326)))

(declare-fun b!2550191 () Bool)

(declare-fun res!1074281 () Bool)

(assert (=> b!2550191 (=> (not res!1074281) (not e!1611569))))

(get-info :version)

(assert (=> b!2550191 (= res!1074281 (and (not ((_ is EmptyExpr!7599) r!27340)) (not ((_ is EmptyLang!7599) r!27340)) (not ((_ is ElementMatch!7599) r!27340)) (not ((_ is Union!7599) r!27340)) (not ((_ is Star!7599) r!27340))))))

(declare-fun b!2550192 () Bool)

(declare-fun tp!813624 () Bool)

(assert (=> b!2550192 (= e!1611567 tp!813624)))

(assert (= (and start!247384 res!1074282) b!2550186))

(assert (= (and b!2550186 res!1074280) b!2550191))

(assert (= (and b!2550191 res!1074281) b!2550187))

(assert (= (and b!2550187 res!1074279) b!2550185))

(assert (= (and b!2550185 (not res!1074277)) b!2550184))

(assert (= (and b!2550184 (not res!1074278)) b!2550190))

(assert (= (and start!247384 ((_ is ElementMatch!7599) r!27340)) b!2550183))

(assert (= (and start!247384 ((_ is Concat!12295) r!27340)) b!2550182))

(assert (= (and start!247384 ((_ is Star!7599) r!27340)) b!2550192))

(assert (= (and start!247384 ((_ is Union!7599) r!27340)) b!2550188))

(assert (= (and start!247384 ((_ is Cons!29564) tl!4068)) b!2550189))

(declare-fun m!2893695 () Bool)

(assert (=> b!2550185 m!2893695))

(declare-fun m!2893697 () Bool)

(assert (=> b!2550185 m!2893697))

(declare-fun m!2893699 () Bool)

(assert (=> b!2550185 m!2893699))

(declare-fun m!2893701 () Bool)

(assert (=> b!2550185 m!2893701))

(declare-fun m!2893703 () Bool)

(assert (=> b!2550185 m!2893703))

(declare-fun m!2893705 () Bool)

(assert (=> b!2550185 m!2893705))

(declare-fun m!2893707 () Bool)

(assert (=> b!2550185 m!2893707))

(declare-fun m!2893709 () Bool)

(assert (=> start!247384 m!2893709))

(declare-fun m!2893711 () Bool)

(assert (=> b!2550184 m!2893711))

(declare-fun m!2893713 () Bool)

(assert (=> b!2550186 m!2893713))

(assert (=> b!2550186 m!2893713))

(declare-fun m!2893715 () Bool)

(assert (=> b!2550186 m!2893715))

(assert (=> b!2550186 m!2893715))

(declare-fun m!2893717 () Bool)

(assert (=> b!2550186 m!2893717))

(declare-fun m!2893719 () Bool)

(assert (=> b!2550187 m!2893719))

(check-sat (not b!2550187) (not b!2550189) (not b!2550188) tp_is_empty!13053 (not start!247384) (not b!2550186) (not b!2550182) (not b!2550184) (not b!2550192) (not b!2550185))
(check-sat)
(get-model)

(declare-fun b!2550229 () Bool)

(declare-fun e!1611604 () Bool)

(declare-fun e!1611603 () Bool)

(assert (=> b!2550229 (= e!1611604 e!1611603)))

(declare-fun res!1074304 () Bool)

(assert (=> b!2550229 (=> (not res!1074304) (not e!1611603))))

(declare-fun call!162194 () Bool)

(assert (=> b!2550229 (= res!1074304 call!162194)))

(declare-fun b!2550230 () Bool)

(declare-fun e!1611605 () Bool)

(declare-fun e!1611602 () Bool)

(assert (=> b!2550230 (= e!1611605 e!1611602)))

(declare-fun c!408816 () Bool)

(assert (=> b!2550230 (= c!408816 ((_ is Star!7599) lt!903323))))

(declare-fun b!2550231 () Bool)

(declare-fun e!1611599 () Bool)

(declare-fun call!162193 () Bool)

(assert (=> b!2550231 (= e!1611599 call!162193)))

(declare-fun b!2550232 () Bool)

(declare-fun res!1074307 () Bool)

(declare-fun e!1611601 () Bool)

(assert (=> b!2550232 (=> (not res!1074307) (not e!1611601))))

(declare-fun call!162192 () Bool)

(assert (=> b!2550232 (= res!1074307 call!162192)))

(declare-fun e!1611600 () Bool)

(assert (=> b!2550232 (= e!1611600 e!1611601)))

(declare-fun bm!162187 () Bool)

(declare-fun c!408817 () Bool)

(assert (=> bm!162187 (= call!162193 (validRegex!3225 (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323)))))))

(declare-fun bm!162188 () Bool)

(assert (=> bm!162188 (= call!162194 call!162193)))

(declare-fun b!2550233 () Bool)

(assert (=> b!2550233 (= e!1611601 call!162194)))

(declare-fun d!723169 () Bool)

(declare-fun res!1074303 () Bool)

(assert (=> d!723169 (=> res!1074303 e!1611605)))

(assert (=> d!723169 (= res!1074303 ((_ is ElementMatch!7599) lt!903323))))

(assert (=> d!723169 (= (validRegex!3225 lt!903323) e!1611605)))

(declare-fun b!2550234 () Bool)

(assert (=> b!2550234 (= e!1611603 call!162192)))

(declare-fun bm!162189 () Bool)

(assert (=> bm!162189 (= call!162192 (validRegex!3225 (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323))))))

(declare-fun b!2550235 () Bool)

(assert (=> b!2550235 (= e!1611602 e!1611600)))

(assert (=> b!2550235 (= c!408817 ((_ is Union!7599) lt!903323))))

(declare-fun b!2550236 () Bool)

(declare-fun res!1074306 () Bool)

(assert (=> b!2550236 (=> res!1074306 e!1611604)))

(assert (=> b!2550236 (= res!1074306 (not ((_ is Concat!12295) lt!903323)))))

(assert (=> b!2550236 (= e!1611600 e!1611604)))

(declare-fun b!2550237 () Bool)

(assert (=> b!2550237 (= e!1611602 e!1611599)))

(declare-fun res!1074305 () Bool)

(assert (=> b!2550237 (= res!1074305 (not (nullable!2516 (reg!7928 lt!903323))))))

(assert (=> b!2550237 (=> (not res!1074305) (not e!1611599))))

(assert (= (and d!723169 (not res!1074303)) b!2550230))

(assert (= (and b!2550230 c!408816) b!2550237))

(assert (= (and b!2550230 (not c!408816)) b!2550235))

(assert (= (and b!2550237 res!1074305) b!2550231))

(assert (= (and b!2550235 c!408817) b!2550232))

(assert (= (and b!2550235 (not c!408817)) b!2550236))

(assert (= (and b!2550232 res!1074307) b!2550233))

(assert (= (and b!2550236 (not res!1074306)) b!2550229))

(assert (= (and b!2550229 res!1074304) b!2550234))

(assert (= (or b!2550232 b!2550234) bm!162189))

(assert (= (or b!2550233 b!2550229) bm!162188))

(assert (= (or b!2550231 bm!162188) bm!162187))

(declare-fun m!2893723 () Bool)

(assert (=> bm!162187 m!2893723))

(declare-fun m!2893725 () Bool)

(assert (=> bm!162189 m!2893725))

(declare-fun m!2893727 () Bool)

(assert (=> b!2550237 m!2893727))

(assert (=> b!2550184 d!723169))

(declare-fun b!2550238 () Bool)

(declare-fun e!1611611 () Bool)

(declare-fun e!1611610 () Bool)

(assert (=> b!2550238 (= e!1611611 e!1611610)))

(declare-fun res!1074309 () Bool)

(assert (=> b!2550238 (=> (not res!1074309) (not e!1611610))))

(declare-fun call!162197 () Bool)

(assert (=> b!2550238 (= res!1074309 call!162197)))

(declare-fun b!2550239 () Bool)

(declare-fun e!1611612 () Bool)

(declare-fun e!1611609 () Bool)

(assert (=> b!2550239 (= e!1611612 e!1611609)))

(declare-fun c!408818 () Bool)

(assert (=> b!2550239 (= c!408818 ((_ is Star!7599) lt!903325))))

(declare-fun b!2550240 () Bool)

(declare-fun e!1611606 () Bool)

(declare-fun call!162196 () Bool)

(assert (=> b!2550240 (= e!1611606 call!162196)))

(declare-fun b!2550241 () Bool)

(declare-fun res!1074312 () Bool)

(declare-fun e!1611608 () Bool)

(assert (=> b!2550241 (=> (not res!1074312) (not e!1611608))))

(declare-fun call!162195 () Bool)

(assert (=> b!2550241 (= res!1074312 call!162195)))

(declare-fun e!1611607 () Bool)

(assert (=> b!2550241 (= e!1611607 e!1611608)))

(declare-fun bm!162190 () Bool)

(declare-fun c!408819 () Bool)

(assert (=> bm!162190 (= call!162196 (validRegex!3225 (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325)))))))

(declare-fun bm!162191 () Bool)

(assert (=> bm!162191 (= call!162197 call!162196)))

(declare-fun b!2550242 () Bool)

(assert (=> b!2550242 (= e!1611608 call!162197)))

(declare-fun d!723175 () Bool)

(declare-fun res!1074308 () Bool)

(assert (=> d!723175 (=> res!1074308 e!1611612)))

(assert (=> d!723175 (= res!1074308 ((_ is ElementMatch!7599) lt!903325))))

(assert (=> d!723175 (= (validRegex!3225 lt!903325) e!1611612)))

(declare-fun b!2550243 () Bool)

(assert (=> b!2550243 (= e!1611610 call!162195)))

(declare-fun bm!162192 () Bool)

(assert (=> bm!162192 (= call!162195 (validRegex!3225 (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325))))))

(declare-fun b!2550244 () Bool)

(assert (=> b!2550244 (= e!1611609 e!1611607)))

(assert (=> b!2550244 (= c!408819 ((_ is Union!7599) lt!903325))))

(declare-fun b!2550245 () Bool)

(declare-fun res!1074311 () Bool)

(assert (=> b!2550245 (=> res!1074311 e!1611611)))

(assert (=> b!2550245 (= res!1074311 (not ((_ is Concat!12295) lt!903325)))))

(assert (=> b!2550245 (= e!1611607 e!1611611)))

(declare-fun b!2550246 () Bool)

(assert (=> b!2550246 (= e!1611609 e!1611606)))

(declare-fun res!1074310 () Bool)

(assert (=> b!2550246 (= res!1074310 (not (nullable!2516 (reg!7928 lt!903325))))))

(assert (=> b!2550246 (=> (not res!1074310) (not e!1611606))))

(assert (= (and d!723175 (not res!1074308)) b!2550239))

(assert (= (and b!2550239 c!408818) b!2550246))

(assert (= (and b!2550239 (not c!408818)) b!2550244))

(assert (= (and b!2550246 res!1074310) b!2550240))

(assert (= (and b!2550244 c!408819) b!2550241))

(assert (= (and b!2550244 (not c!408819)) b!2550245))

(assert (= (and b!2550241 res!1074312) b!2550242))

(assert (= (and b!2550245 (not res!1074311)) b!2550238))

(assert (= (and b!2550238 res!1074309) b!2550243))

(assert (= (or b!2550241 b!2550243) bm!162192))

(assert (= (or b!2550242 b!2550238) bm!162191))

(assert (= (or b!2550240 bm!162191) bm!162190))

(declare-fun m!2893729 () Bool)

(assert (=> bm!162190 m!2893729))

(declare-fun m!2893731 () Bool)

(assert (=> bm!162192 m!2893731))

(declare-fun m!2893733 () Bool)

(assert (=> b!2550246 m!2893733))

(assert (=> b!2550185 d!723175))

(declare-fun d!723177 () Bool)

(declare-fun lt!903329 () Regex!7599)

(assert (=> d!723177 (validRegex!3225 lt!903329)))

(declare-fun e!1611622 () Regex!7599)

(assert (=> d!723177 (= lt!903329 e!1611622)))

(declare-fun c!408824 () Bool)

(assert (=> d!723177 (= c!408824 ((_ is Cons!29564) tl!4068))))

(assert (=> d!723177 (validRegex!3225 lt!903321)))

(assert (=> d!723177 (= (derivative!294 lt!903321 tl!4068) lt!903329)))

(declare-fun b!2550260 () Bool)

(assert (=> b!2550260 (= e!1611622 (derivative!294 (derivativeStep!2168 lt!903321 (h!34984 tl!4068)) (t!211363 tl!4068)))))

(declare-fun b!2550261 () Bool)

(assert (=> b!2550261 (= e!1611622 lt!903321)))

(assert (= (and d!723177 c!408824) b!2550260))

(assert (= (and d!723177 (not c!408824)) b!2550261))

(declare-fun m!2893741 () Bool)

(assert (=> d!723177 m!2893741))

(declare-fun m!2893743 () Bool)

(assert (=> d!723177 m!2893743))

(declare-fun m!2893745 () Bool)

(assert (=> b!2550260 m!2893745))

(assert (=> b!2550260 m!2893745))

(declare-fun m!2893747 () Bool)

(assert (=> b!2550260 m!2893747))

(assert (=> b!2550185 d!723177))

(declare-fun b!2550355 () Bool)

(declare-fun e!1611673 () Bool)

(declare-fun head!5806 (List!29664) C!15356)

(assert (=> b!2550355 (= e!1611673 (not (= (head!5806 Nil!29564) (c!408807 lt!903322))))))

(declare-fun b!2550356 () Bool)

(declare-fun e!1611674 () Bool)

(assert (=> b!2550356 (= e!1611674 (= (head!5806 Nil!29564) (c!408807 lt!903322)))))

(declare-fun d!723181 () Bool)

(declare-fun e!1611678 () Bool)

(assert (=> d!723181 e!1611678))

(declare-fun c!408845 () Bool)

(assert (=> d!723181 (= c!408845 ((_ is EmptyExpr!7599) lt!903322))))

(declare-fun lt!903336 () Bool)

(declare-fun e!1611677 () Bool)

(assert (=> d!723181 (= lt!903336 e!1611677)))

(declare-fun c!408846 () Bool)

(declare-fun isEmpty!17012 (List!29664) Bool)

(assert (=> d!723181 (= c!408846 (isEmpty!17012 Nil!29564))))

(assert (=> d!723181 (validRegex!3225 lt!903322)))

(assert (=> d!723181 (= (matchR!3544 lt!903322 Nil!29564) lt!903336)))

(declare-fun b!2550357 () Bool)

(declare-fun res!1074377 () Bool)

(assert (=> b!2550357 (=> (not res!1074377) (not e!1611674))))

(declare-fun tail!4081 (List!29664) List!29664)

(assert (=> b!2550357 (= res!1074377 (isEmpty!17012 (tail!4081 Nil!29564)))))

(declare-fun b!2550358 () Bool)

(declare-fun e!1611676 () Bool)

(assert (=> b!2550358 (= e!1611678 e!1611676)))

(declare-fun c!408847 () Bool)

(assert (=> b!2550358 (= c!408847 ((_ is EmptyLang!7599) lt!903322))))

(declare-fun b!2550359 () Bool)

(declare-fun e!1611675 () Bool)

(assert (=> b!2550359 (= e!1611675 e!1611673)))

(declare-fun res!1074373 () Bool)

(assert (=> b!2550359 (=> res!1074373 e!1611673)))

(declare-fun call!162210 () Bool)

(assert (=> b!2550359 (= res!1074373 call!162210)))

(declare-fun b!2550360 () Bool)

(assert (=> b!2550360 (= e!1611677 (matchR!3544 (derivativeStep!2168 lt!903322 (head!5806 Nil!29564)) (tail!4081 Nil!29564)))))

(declare-fun b!2550361 () Bool)

(assert (=> b!2550361 (= e!1611676 (not lt!903336))))

(declare-fun b!2550362 () Bool)

(declare-fun res!1074375 () Bool)

(assert (=> b!2550362 (=> (not res!1074375) (not e!1611674))))

(assert (=> b!2550362 (= res!1074375 (not call!162210))))

(declare-fun bm!162205 () Bool)

(assert (=> bm!162205 (= call!162210 (isEmpty!17012 Nil!29564))))

(declare-fun b!2550363 () Bool)

(declare-fun res!1074374 () Bool)

(declare-fun e!1611672 () Bool)

(assert (=> b!2550363 (=> res!1074374 e!1611672)))

(assert (=> b!2550363 (= res!1074374 (not ((_ is ElementMatch!7599) lt!903322)))))

(assert (=> b!2550363 (= e!1611676 e!1611672)))

(declare-fun b!2550364 () Bool)

(assert (=> b!2550364 (= e!1611672 e!1611675)))

(declare-fun res!1074372 () Bool)

(assert (=> b!2550364 (=> (not res!1074372) (not e!1611675))))

(assert (=> b!2550364 (= res!1074372 (not lt!903336))))

(declare-fun b!2550365 () Bool)

(declare-fun res!1074376 () Bool)

(assert (=> b!2550365 (=> res!1074376 e!1611673)))

(assert (=> b!2550365 (= res!1074376 (not (isEmpty!17012 (tail!4081 Nil!29564))))))

(declare-fun b!2550366 () Bool)

(assert (=> b!2550366 (= e!1611677 (nullable!2516 lt!903322))))

(declare-fun b!2550367 () Bool)

(assert (=> b!2550367 (= e!1611678 (= lt!903336 call!162210))))

(declare-fun b!2550368 () Bool)

(declare-fun res!1074371 () Bool)

(assert (=> b!2550368 (=> res!1074371 e!1611672)))

(assert (=> b!2550368 (= res!1074371 e!1611674)))

(declare-fun res!1074378 () Bool)

(assert (=> b!2550368 (=> (not res!1074378) (not e!1611674))))

(assert (=> b!2550368 (= res!1074378 lt!903336)))

(assert (= (and d!723181 c!408846) b!2550366))

(assert (= (and d!723181 (not c!408846)) b!2550360))

(assert (= (and d!723181 c!408845) b!2550367))

(assert (= (and d!723181 (not c!408845)) b!2550358))

(assert (= (and b!2550358 c!408847) b!2550361))

(assert (= (and b!2550358 (not c!408847)) b!2550363))

(assert (= (and b!2550363 (not res!1074374)) b!2550368))

(assert (= (and b!2550368 res!1074378) b!2550362))

(assert (= (and b!2550362 res!1074375) b!2550357))

(assert (= (and b!2550357 res!1074377) b!2550356))

(assert (= (and b!2550368 (not res!1074371)) b!2550364))

(assert (= (and b!2550364 res!1074372) b!2550359))

(assert (= (and b!2550359 (not res!1074373)) b!2550365))

(assert (= (and b!2550365 (not res!1074376)) b!2550355))

(assert (= (or b!2550367 b!2550359 b!2550362) bm!162205))

(declare-fun m!2893787 () Bool)

(assert (=> b!2550357 m!2893787))

(assert (=> b!2550357 m!2893787))

(declare-fun m!2893789 () Bool)

(assert (=> b!2550357 m!2893789))

(declare-fun m!2893791 () Bool)

(assert (=> b!2550356 m!2893791))

(assert (=> b!2550365 m!2893787))

(assert (=> b!2550365 m!2893787))

(assert (=> b!2550365 m!2893789))

(declare-fun m!2893793 () Bool)

(assert (=> d!723181 m!2893793))

(declare-fun m!2893795 () Bool)

(assert (=> d!723181 m!2893795))

(assert (=> b!2550355 m!2893791))

(assert (=> bm!162205 m!2893793))

(declare-fun m!2893797 () Bool)

(assert (=> b!2550366 m!2893797))

(assert (=> b!2550360 m!2893791))

(assert (=> b!2550360 m!2893791))

(declare-fun m!2893799 () Bool)

(assert (=> b!2550360 m!2893799))

(assert (=> b!2550360 m!2893787))

(assert (=> b!2550360 m!2893799))

(assert (=> b!2550360 m!2893787))

(declare-fun m!2893801 () Bool)

(assert (=> b!2550360 m!2893801))

(assert (=> b!2550185 d!723181))

(declare-fun b!2550369 () Bool)

(declare-fun e!1611680 () Bool)

(assert (=> b!2550369 (= e!1611680 (not (= (head!5806 tl!4068) (c!408807 lt!903321))))))

(declare-fun b!2550370 () Bool)

(declare-fun e!1611681 () Bool)

(assert (=> b!2550370 (= e!1611681 (= (head!5806 tl!4068) (c!408807 lt!903321)))))

(declare-fun d!723189 () Bool)

(declare-fun e!1611685 () Bool)

(assert (=> d!723189 e!1611685))

(declare-fun c!408848 () Bool)

(assert (=> d!723189 (= c!408848 ((_ is EmptyExpr!7599) lt!903321))))

(declare-fun lt!903337 () Bool)

(declare-fun e!1611684 () Bool)

(assert (=> d!723189 (= lt!903337 e!1611684)))

(declare-fun c!408849 () Bool)

(assert (=> d!723189 (= c!408849 (isEmpty!17012 tl!4068))))

(assert (=> d!723189 (validRegex!3225 lt!903321)))

(assert (=> d!723189 (= (matchR!3544 lt!903321 tl!4068) lt!903337)))

(declare-fun b!2550371 () Bool)

(declare-fun res!1074385 () Bool)

(assert (=> b!2550371 (=> (not res!1074385) (not e!1611681))))

(assert (=> b!2550371 (= res!1074385 (isEmpty!17012 (tail!4081 tl!4068)))))

(declare-fun b!2550372 () Bool)

(declare-fun e!1611683 () Bool)

(assert (=> b!2550372 (= e!1611685 e!1611683)))

(declare-fun c!408850 () Bool)

(assert (=> b!2550372 (= c!408850 ((_ is EmptyLang!7599) lt!903321))))

(declare-fun b!2550373 () Bool)

(declare-fun e!1611682 () Bool)

(assert (=> b!2550373 (= e!1611682 e!1611680)))

(declare-fun res!1074381 () Bool)

(assert (=> b!2550373 (=> res!1074381 e!1611680)))

(declare-fun call!162211 () Bool)

(assert (=> b!2550373 (= res!1074381 call!162211)))

(declare-fun b!2550374 () Bool)

(assert (=> b!2550374 (= e!1611684 (matchR!3544 (derivativeStep!2168 lt!903321 (head!5806 tl!4068)) (tail!4081 tl!4068)))))

(declare-fun b!2550375 () Bool)

(assert (=> b!2550375 (= e!1611683 (not lt!903337))))

(declare-fun b!2550376 () Bool)

(declare-fun res!1074383 () Bool)

(assert (=> b!2550376 (=> (not res!1074383) (not e!1611681))))

(assert (=> b!2550376 (= res!1074383 (not call!162211))))

(declare-fun bm!162206 () Bool)

(assert (=> bm!162206 (= call!162211 (isEmpty!17012 tl!4068))))

(declare-fun b!2550377 () Bool)

(declare-fun res!1074382 () Bool)

(declare-fun e!1611679 () Bool)

(assert (=> b!2550377 (=> res!1074382 e!1611679)))

(assert (=> b!2550377 (= res!1074382 (not ((_ is ElementMatch!7599) lt!903321)))))

(assert (=> b!2550377 (= e!1611683 e!1611679)))

(declare-fun b!2550378 () Bool)

(assert (=> b!2550378 (= e!1611679 e!1611682)))

(declare-fun res!1074380 () Bool)

(assert (=> b!2550378 (=> (not res!1074380) (not e!1611682))))

(assert (=> b!2550378 (= res!1074380 (not lt!903337))))

(declare-fun b!2550379 () Bool)

(declare-fun res!1074384 () Bool)

(assert (=> b!2550379 (=> res!1074384 e!1611680)))

(assert (=> b!2550379 (= res!1074384 (not (isEmpty!17012 (tail!4081 tl!4068))))))

(declare-fun b!2550380 () Bool)

(assert (=> b!2550380 (= e!1611684 (nullable!2516 lt!903321))))

(declare-fun b!2550381 () Bool)

(assert (=> b!2550381 (= e!1611685 (= lt!903337 call!162211))))

(declare-fun b!2550382 () Bool)

(declare-fun res!1074379 () Bool)

(assert (=> b!2550382 (=> res!1074379 e!1611679)))

(assert (=> b!2550382 (= res!1074379 e!1611681)))

(declare-fun res!1074386 () Bool)

(assert (=> b!2550382 (=> (not res!1074386) (not e!1611681))))

(assert (=> b!2550382 (= res!1074386 lt!903337)))

(assert (= (and d!723189 c!408849) b!2550380))

(assert (= (and d!723189 (not c!408849)) b!2550374))

(assert (= (and d!723189 c!408848) b!2550381))

(assert (= (and d!723189 (not c!408848)) b!2550372))

(assert (= (and b!2550372 c!408850) b!2550375))

(assert (= (and b!2550372 (not c!408850)) b!2550377))

(assert (= (and b!2550377 (not res!1074382)) b!2550382))

(assert (= (and b!2550382 res!1074386) b!2550376))

(assert (= (and b!2550376 res!1074383) b!2550371))

(assert (= (and b!2550371 res!1074385) b!2550370))

(assert (= (and b!2550382 (not res!1074379)) b!2550378))

(assert (= (and b!2550378 res!1074380) b!2550373))

(assert (= (and b!2550373 (not res!1074381)) b!2550379))

(assert (= (and b!2550379 (not res!1074384)) b!2550369))

(assert (= (or b!2550381 b!2550373 b!2550376) bm!162206))

(declare-fun m!2893803 () Bool)

(assert (=> b!2550371 m!2893803))

(assert (=> b!2550371 m!2893803))

(declare-fun m!2893805 () Bool)

(assert (=> b!2550371 m!2893805))

(declare-fun m!2893807 () Bool)

(assert (=> b!2550370 m!2893807))

(assert (=> b!2550379 m!2893803))

(assert (=> b!2550379 m!2893803))

(assert (=> b!2550379 m!2893805))

(declare-fun m!2893809 () Bool)

(assert (=> d!723189 m!2893809))

(assert (=> d!723189 m!2893743))

(assert (=> b!2550369 m!2893807))

(assert (=> bm!162206 m!2893809))

(declare-fun m!2893811 () Bool)

(assert (=> b!2550380 m!2893811))

(assert (=> b!2550374 m!2893807))

(assert (=> b!2550374 m!2893807))

(declare-fun m!2893813 () Bool)

(assert (=> b!2550374 m!2893813))

(assert (=> b!2550374 m!2893803))

(assert (=> b!2550374 m!2893813))

(assert (=> b!2550374 m!2893803))

(declare-fun m!2893815 () Bool)

(assert (=> b!2550374 m!2893815))

(assert (=> b!2550185 d!723189))

(declare-fun d!723191 () Bool)

(assert (=> d!723191 (= (matchR!3544 lt!903321 tl!4068) (matchR!3544 (derivative!294 lt!903321 tl!4068) Nil!29564))))

(declare-fun lt!903342 () Unit!43383)

(declare-fun choose!15058 (Regex!7599 List!29664) Unit!43383)

(assert (=> d!723191 (= lt!903342 (choose!15058 lt!903321 tl!4068))))

(assert (=> d!723191 (validRegex!3225 lt!903321)))

(assert (=> d!723191 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!190 lt!903321 tl!4068) lt!903342)))

(declare-fun bs!469603 () Bool)

(assert (= bs!469603 d!723191))

(declare-fun m!2893817 () Bool)

(assert (=> bs!469603 m!2893817))

(assert (=> bs!469603 m!2893705))

(assert (=> bs!469603 m!2893707))

(assert (=> bs!469603 m!2893743))

(assert (=> bs!469603 m!2893705))

(declare-fun m!2893819 () Bool)

(assert (=> bs!469603 m!2893819))

(assert (=> b!2550185 d!723191))

(declare-fun b!2550449 () Bool)

(declare-fun e!1611720 () Regex!7599)

(declare-fun call!162238 () Regex!7599)

(declare-fun call!162236 () Regex!7599)

(assert (=> b!2550449 (= e!1611720 (Union!7599 call!162238 call!162236))))

(declare-fun d!723193 () Bool)

(declare-fun lt!903350 () Regex!7599)

(assert (=> d!723193 (validRegex!3225 lt!903350)))

(declare-fun e!1611722 () Regex!7599)

(assert (=> d!723193 (= lt!903350 e!1611722)))

(declare-fun c!408884 () Bool)

(assert (=> d!723193 (= c!408884 (or ((_ is EmptyExpr!7599) (regTwo!15710 r!27340)) ((_ is EmptyLang!7599) (regTwo!15710 r!27340))))))

(assert (=> d!723193 (validRegex!3225 (regTwo!15710 r!27340))))

(assert (=> d!723193 (= (derivativeStep!2168 (regTwo!15710 r!27340) c!14016) lt!903350)))

(declare-fun b!2550450 () Bool)

(declare-fun e!1611721 () Regex!7599)

(declare-fun call!162239 () Regex!7599)

(assert (=> b!2550450 (= e!1611721 (Union!7599 (Concat!12295 call!162239 (regTwo!15710 (regTwo!15710 r!27340))) EmptyLang!7599))))

(declare-fun bm!162231 () Bool)

(declare-fun c!408887 () Bool)

(assert (=> bm!162231 (= call!162236 (derivativeStep!2168 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340))) c!14016))))

(declare-fun bm!162232 () Bool)

(declare-fun call!162237 () Regex!7599)

(assert (=> bm!162232 (= call!162239 call!162237)))

(declare-fun b!2550451 () Bool)

(declare-fun e!1611723 () Regex!7599)

(assert (=> b!2550451 (= e!1611720 e!1611723)))

(declare-fun c!408885 () Bool)

(assert (=> b!2550451 (= c!408885 ((_ is Star!7599) (regTwo!15710 r!27340)))))

(declare-fun b!2550452 () Bool)

(declare-fun e!1611719 () Regex!7599)

(assert (=> b!2550452 (= e!1611722 e!1611719)))

(declare-fun c!408886 () Bool)

(assert (=> b!2550452 (= c!408886 ((_ is ElementMatch!7599) (regTwo!15710 r!27340)))))

(declare-fun b!2550453 () Bool)

(assert (=> b!2550453 (= e!1611721 (Union!7599 (Concat!12295 call!162239 (regTwo!15710 (regTwo!15710 r!27340))) call!162236))))

(declare-fun b!2550454 () Bool)

(assert (=> b!2550454 (= e!1611722 EmptyLang!7599)))

(declare-fun b!2550455 () Bool)

(assert (=> b!2550455 (= c!408887 ((_ is Union!7599) (regTwo!15710 r!27340)))))

(assert (=> b!2550455 (= e!1611719 e!1611720)))

(declare-fun b!2550456 () Bool)

(assert (=> b!2550456 (= e!1611723 (Concat!12295 call!162237 (regTwo!15710 r!27340)))))

(declare-fun bm!162233 () Bool)

(assert (=> bm!162233 (= call!162238 (derivativeStep!2168 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340)))) c!14016))))

(declare-fun bm!162234 () Bool)

(assert (=> bm!162234 (= call!162237 call!162238)))

(declare-fun b!2550457 () Bool)

(assert (=> b!2550457 (= e!1611719 (ite (= c!14016 (c!408807 (regTwo!15710 r!27340))) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun b!2550458 () Bool)

(declare-fun c!408888 () Bool)

(assert (=> b!2550458 (= c!408888 (nullable!2516 (regOne!15710 (regTwo!15710 r!27340))))))

(assert (=> b!2550458 (= e!1611723 e!1611721)))

(assert (= (and d!723193 c!408884) b!2550454))

(assert (= (and d!723193 (not c!408884)) b!2550452))

(assert (= (and b!2550452 c!408886) b!2550457))

(assert (= (and b!2550452 (not c!408886)) b!2550455))

(assert (= (and b!2550455 c!408887) b!2550449))

(assert (= (and b!2550455 (not c!408887)) b!2550451))

(assert (= (and b!2550451 c!408885) b!2550456))

(assert (= (and b!2550451 (not c!408885)) b!2550458))

(assert (= (and b!2550458 c!408888) b!2550453))

(assert (= (and b!2550458 (not c!408888)) b!2550450))

(assert (= (or b!2550453 b!2550450) bm!162232))

(assert (= (or b!2550456 bm!162232) bm!162234))

(assert (= (or b!2550449 b!2550453) bm!162231))

(assert (= (or b!2550449 bm!162234) bm!162233))

(declare-fun m!2893847 () Bool)

(assert (=> d!723193 m!2893847))

(declare-fun m!2893849 () Bool)

(assert (=> d!723193 m!2893849))

(declare-fun m!2893851 () Bool)

(assert (=> bm!162231 m!2893851))

(declare-fun m!2893853 () Bool)

(assert (=> bm!162233 m!2893853))

(declare-fun m!2893855 () Bool)

(assert (=> b!2550458 m!2893855))

(assert (=> b!2550185 d!723193))

(declare-fun b!2550459 () Bool)

(declare-fun e!1611725 () Regex!7599)

(declare-fun call!162242 () Regex!7599)

(declare-fun call!162240 () Regex!7599)

(assert (=> b!2550459 (= e!1611725 (Union!7599 call!162242 call!162240))))

(declare-fun d!723201 () Bool)

(declare-fun lt!903353 () Regex!7599)

(assert (=> d!723201 (validRegex!3225 lt!903353)))

(declare-fun e!1611727 () Regex!7599)

(assert (=> d!723201 (= lt!903353 e!1611727)))

(declare-fun c!408889 () Bool)

(assert (=> d!723201 (= c!408889 (or ((_ is EmptyExpr!7599) (regOne!15710 r!27340)) ((_ is EmptyLang!7599) (regOne!15710 r!27340))))))

(assert (=> d!723201 (validRegex!3225 (regOne!15710 r!27340))))

(assert (=> d!723201 (= (derivativeStep!2168 (regOne!15710 r!27340) c!14016) lt!903353)))

(declare-fun b!2550460 () Bool)

(declare-fun e!1611726 () Regex!7599)

(declare-fun call!162243 () Regex!7599)

(assert (=> b!2550460 (= e!1611726 (Union!7599 (Concat!12295 call!162243 (regTwo!15710 (regOne!15710 r!27340))) EmptyLang!7599))))

(declare-fun bm!162235 () Bool)

(declare-fun c!408892 () Bool)

(assert (=> bm!162235 (= call!162240 (derivativeStep!2168 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340))) c!14016))))

(declare-fun bm!162236 () Bool)

(declare-fun call!162241 () Regex!7599)

(assert (=> bm!162236 (= call!162243 call!162241)))

(declare-fun b!2550461 () Bool)

(declare-fun e!1611728 () Regex!7599)

(assert (=> b!2550461 (= e!1611725 e!1611728)))

(declare-fun c!408890 () Bool)

(assert (=> b!2550461 (= c!408890 ((_ is Star!7599) (regOne!15710 r!27340)))))

(declare-fun b!2550462 () Bool)

(declare-fun e!1611724 () Regex!7599)

(assert (=> b!2550462 (= e!1611727 e!1611724)))

(declare-fun c!408891 () Bool)

(assert (=> b!2550462 (= c!408891 ((_ is ElementMatch!7599) (regOne!15710 r!27340)))))

(declare-fun b!2550463 () Bool)

(assert (=> b!2550463 (= e!1611726 (Union!7599 (Concat!12295 call!162243 (regTwo!15710 (regOne!15710 r!27340))) call!162240))))

(declare-fun b!2550464 () Bool)

(assert (=> b!2550464 (= e!1611727 EmptyLang!7599)))

(declare-fun b!2550465 () Bool)

(assert (=> b!2550465 (= c!408892 ((_ is Union!7599) (regOne!15710 r!27340)))))

(assert (=> b!2550465 (= e!1611724 e!1611725)))

(declare-fun b!2550466 () Bool)

(assert (=> b!2550466 (= e!1611728 (Concat!12295 call!162241 (regOne!15710 r!27340)))))

(declare-fun bm!162237 () Bool)

(assert (=> bm!162237 (= call!162242 (derivativeStep!2168 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340)))) c!14016))))

(declare-fun bm!162238 () Bool)

(assert (=> bm!162238 (= call!162241 call!162242)))

(declare-fun b!2550467 () Bool)

(assert (=> b!2550467 (= e!1611724 (ite (= c!14016 (c!408807 (regOne!15710 r!27340))) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun b!2550468 () Bool)

(declare-fun c!408893 () Bool)

(assert (=> b!2550468 (= c!408893 (nullable!2516 (regOne!15710 (regOne!15710 r!27340))))))

(assert (=> b!2550468 (= e!1611728 e!1611726)))

(assert (= (and d!723201 c!408889) b!2550464))

(assert (= (and d!723201 (not c!408889)) b!2550462))

(assert (= (and b!2550462 c!408891) b!2550467))

(assert (= (and b!2550462 (not c!408891)) b!2550465))

(assert (= (and b!2550465 c!408892) b!2550459))

(assert (= (and b!2550465 (not c!408892)) b!2550461))

(assert (= (and b!2550461 c!408890) b!2550466))

(assert (= (and b!2550461 (not c!408890)) b!2550468))

(assert (= (and b!2550468 c!408893) b!2550463))

(assert (= (and b!2550468 (not c!408893)) b!2550460))

(assert (= (or b!2550463 b!2550460) bm!162236))

(assert (= (or b!2550466 bm!162236) bm!162238))

(assert (= (or b!2550459 b!2550463) bm!162235))

(assert (= (or b!2550459 bm!162238) bm!162237))

(declare-fun m!2893863 () Bool)

(assert (=> d!723201 m!2893863))

(declare-fun m!2893865 () Bool)

(assert (=> d!723201 m!2893865))

(declare-fun m!2893867 () Bool)

(assert (=> bm!162235 m!2893867))

(declare-fun m!2893869 () Bool)

(assert (=> bm!162237 m!2893869))

(declare-fun m!2893871 () Bool)

(assert (=> b!2550468 m!2893871))

(assert (=> b!2550185 d!723201))

(declare-fun d!723207 () Bool)

(declare-fun nullableFct!741 (Regex!7599) Bool)

(assert (=> d!723207 (= (nullable!2516 (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)) (nullableFct!741 (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469606 () Bool)

(assert (= bs!469606 d!723207))

(assert (=> bs!469606 m!2893715))

(declare-fun m!2893883 () Bool)

(assert (=> bs!469606 m!2893883))

(assert (=> b!2550186 d!723207))

(declare-fun d!723211 () Bool)

(declare-fun lt!903357 () Regex!7599)

(assert (=> d!723211 (validRegex!3225 lt!903357)))

(declare-fun e!1611735 () Regex!7599)

(assert (=> d!723211 (= lt!903357 e!1611735)))

(declare-fun c!408900 () Bool)

(assert (=> d!723211 (= c!408900 ((_ is Cons!29564) tl!4068))))

(assert (=> d!723211 (validRegex!3225 (derivativeStep!2168 r!27340 c!14016))))

(assert (=> d!723211 (= (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068) lt!903357)))

(declare-fun b!2550481 () Bool)

(assert (=> b!2550481 (= e!1611735 (derivative!294 (derivativeStep!2168 (derivativeStep!2168 r!27340 c!14016) (h!34984 tl!4068)) (t!211363 tl!4068)))))

(declare-fun b!2550482 () Bool)

(assert (=> b!2550482 (= e!1611735 (derivativeStep!2168 r!27340 c!14016))))

(assert (= (and d!723211 c!408900) b!2550481))

(assert (= (and d!723211 (not c!408900)) b!2550482))

(declare-fun m!2893889 () Bool)

(assert (=> d!723211 m!2893889))

(assert (=> d!723211 m!2893713))

(declare-fun m!2893891 () Bool)

(assert (=> d!723211 m!2893891))

(assert (=> b!2550481 m!2893713))

(declare-fun m!2893893 () Bool)

(assert (=> b!2550481 m!2893893))

(assert (=> b!2550481 m!2893893))

(declare-fun m!2893895 () Bool)

(assert (=> b!2550481 m!2893895))

(assert (=> b!2550186 d!723211))

(declare-fun b!2550492 () Bool)

(declare-fun e!1611744 () Regex!7599)

(declare-fun call!162253 () Regex!7599)

(declare-fun call!162251 () Regex!7599)

(assert (=> b!2550492 (= e!1611744 (Union!7599 call!162253 call!162251))))

(declare-fun d!723215 () Bool)

(declare-fun lt!903358 () Regex!7599)

(assert (=> d!723215 (validRegex!3225 lt!903358)))

(declare-fun e!1611746 () Regex!7599)

(assert (=> d!723215 (= lt!903358 e!1611746)))

(declare-fun c!408903 () Bool)

(assert (=> d!723215 (= c!408903 (or ((_ is EmptyExpr!7599) r!27340) ((_ is EmptyLang!7599) r!27340)))))

(assert (=> d!723215 (validRegex!3225 r!27340)))

(assert (=> d!723215 (= (derivativeStep!2168 r!27340 c!14016) lt!903358)))

(declare-fun b!2550493 () Bool)

(declare-fun e!1611745 () Regex!7599)

(declare-fun call!162254 () Regex!7599)

(assert (=> b!2550493 (= e!1611745 (Union!7599 (Concat!12295 call!162254 (regTwo!15710 r!27340)) EmptyLang!7599))))

(declare-fun bm!162246 () Bool)

(declare-fun c!408906 () Bool)

(assert (=> bm!162246 (= call!162251 (derivativeStep!2168 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340)) c!14016))))

(declare-fun bm!162247 () Bool)

(declare-fun call!162252 () Regex!7599)

(assert (=> bm!162247 (= call!162254 call!162252)))

(declare-fun b!2550494 () Bool)

(declare-fun e!1611747 () Regex!7599)

(assert (=> b!2550494 (= e!1611744 e!1611747)))

(declare-fun c!408904 () Bool)

(assert (=> b!2550494 (= c!408904 ((_ is Star!7599) r!27340))))

(declare-fun b!2550495 () Bool)

(declare-fun e!1611743 () Regex!7599)

(assert (=> b!2550495 (= e!1611746 e!1611743)))

(declare-fun c!408905 () Bool)

(assert (=> b!2550495 (= c!408905 ((_ is ElementMatch!7599) r!27340))))

(declare-fun b!2550496 () Bool)

(assert (=> b!2550496 (= e!1611745 (Union!7599 (Concat!12295 call!162254 (regTwo!15710 r!27340)) call!162251))))

(declare-fun b!2550497 () Bool)

(assert (=> b!2550497 (= e!1611746 EmptyLang!7599)))

(declare-fun b!2550498 () Bool)

(assert (=> b!2550498 (= c!408906 ((_ is Union!7599) r!27340))))

(assert (=> b!2550498 (= e!1611743 e!1611744)))

(declare-fun b!2550499 () Bool)

(assert (=> b!2550499 (= e!1611747 (Concat!12295 call!162252 r!27340))))

(declare-fun bm!162248 () Bool)

(assert (=> bm!162248 (= call!162253 (derivativeStep!2168 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340))) c!14016))))

(declare-fun bm!162249 () Bool)

(assert (=> bm!162249 (= call!162252 call!162253)))

(declare-fun b!2550500 () Bool)

(assert (=> b!2550500 (= e!1611743 (ite (= c!14016 (c!408807 r!27340)) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun b!2550501 () Bool)

(declare-fun c!408907 () Bool)

(assert (=> b!2550501 (= c!408907 (nullable!2516 (regOne!15710 r!27340)))))

(assert (=> b!2550501 (= e!1611747 e!1611745)))

(assert (= (and d!723215 c!408903) b!2550497))

(assert (= (and d!723215 (not c!408903)) b!2550495))

(assert (= (and b!2550495 c!408905) b!2550500))

(assert (= (and b!2550495 (not c!408905)) b!2550498))

(assert (= (and b!2550498 c!408906) b!2550492))

(assert (= (and b!2550498 (not c!408906)) b!2550494))

(assert (= (and b!2550494 c!408904) b!2550499))

(assert (= (and b!2550494 (not c!408904)) b!2550501))

(assert (= (and b!2550501 c!408907) b!2550496))

(assert (= (and b!2550501 (not c!408907)) b!2550493))

(assert (= (or b!2550496 b!2550493) bm!162247))

(assert (= (or b!2550499 bm!162247) bm!162249))

(assert (= (or b!2550492 b!2550496) bm!162246))

(assert (= (or b!2550492 bm!162249) bm!162248))

(declare-fun m!2893903 () Bool)

(assert (=> d!723215 m!2893903))

(assert (=> d!723215 m!2893709))

(declare-fun m!2893905 () Bool)

(assert (=> bm!162246 m!2893905))

(declare-fun m!2893907 () Bool)

(assert (=> bm!162248 m!2893907))

(assert (=> b!2550501 m!2893719))

(assert (=> b!2550186 d!723215))

(declare-fun b!2550512 () Bool)

(declare-fun e!1611755 () Bool)

(declare-fun e!1611754 () Bool)

(assert (=> b!2550512 (= e!1611755 e!1611754)))

(declare-fun res!1074393 () Bool)

(assert (=> b!2550512 (=> (not res!1074393) (not e!1611754))))

(declare-fun call!162257 () Bool)

(assert (=> b!2550512 (= res!1074393 call!162257)))

(declare-fun b!2550513 () Bool)

(declare-fun e!1611756 () Bool)

(declare-fun e!1611753 () Bool)

(assert (=> b!2550513 (= e!1611756 e!1611753)))

(declare-fun c!408908 () Bool)

(assert (=> b!2550513 (= c!408908 ((_ is Star!7599) r!27340))))

(declare-fun b!2550514 () Bool)

(declare-fun e!1611750 () Bool)

(declare-fun call!162256 () Bool)

(assert (=> b!2550514 (= e!1611750 call!162256)))

(declare-fun b!2550515 () Bool)

(declare-fun res!1074396 () Bool)

(declare-fun e!1611752 () Bool)

(assert (=> b!2550515 (=> (not res!1074396) (not e!1611752))))

(declare-fun call!162255 () Bool)

(assert (=> b!2550515 (= res!1074396 call!162255)))

(declare-fun e!1611751 () Bool)

(assert (=> b!2550515 (= e!1611751 e!1611752)))

(declare-fun c!408909 () Bool)

(declare-fun bm!162250 () Bool)

(assert (=> bm!162250 (= call!162256 (validRegex!3225 (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340)))))))

(declare-fun bm!162251 () Bool)

(assert (=> bm!162251 (= call!162257 call!162256)))

(declare-fun b!2550516 () Bool)

(assert (=> b!2550516 (= e!1611752 call!162257)))

(declare-fun d!723217 () Bool)

(declare-fun res!1074392 () Bool)

(assert (=> d!723217 (=> res!1074392 e!1611756)))

(assert (=> d!723217 (= res!1074392 ((_ is ElementMatch!7599) r!27340))))

(assert (=> d!723217 (= (validRegex!3225 r!27340) e!1611756)))

(declare-fun b!2550517 () Bool)

(assert (=> b!2550517 (= e!1611754 call!162255)))

(declare-fun bm!162252 () Bool)

(assert (=> bm!162252 (= call!162255 (validRegex!3225 (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340))))))

(declare-fun b!2550518 () Bool)

(assert (=> b!2550518 (= e!1611753 e!1611751)))

(assert (=> b!2550518 (= c!408909 ((_ is Union!7599) r!27340))))

(declare-fun b!2550519 () Bool)

(declare-fun res!1074395 () Bool)

(assert (=> b!2550519 (=> res!1074395 e!1611755)))

(assert (=> b!2550519 (= res!1074395 (not ((_ is Concat!12295) r!27340)))))

(assert (=> b!2550519 (= e!1611751 e!1611755)))

(declare-fun b!2550520 () Bool)

(assert (=> b!2550520 (= e!1611753 e!1611750)))

(declare-fun res!1074394 () Bool)

(assert (=> b!2550520 (= res!1074394 (not (nullable!2516 (reg!7928 r!27340))))))

(assert (=> b!2550520 (=> (not res!1074394) (not e!1611750))))

(assert (= (and d!723217 (not res!1074392)) b!2550513))

(assert (= (and b!2550513 c!408908) b!2550520))

(assert (= (and b!2550513 (not c!408908)) b!2550518))

(assert (= (and b!2550520 res!1074394) b!2550514))

(assert (= (and b!2550518 c!408909) b!2550515))

(assert (= (and b!2550518 (not c!408909)) b!2550519))

(assert (= (and b!2550515 res!1074396) b!2550516))

(assert (= (and b!2550519 (not res!1074395)) b!2550512))

(assert (= (and b!2550512 res!1074393) b!2550517))

(assert (= (or b!2550515 b!2550517) bm!162252))

(assert (= (or b!2550516 b!2550512) bm!162251))

(assert (= (or b!2550514 bm!162251) bm!162250))

(declare-fun m!2893909 () Bool)

(assert (=> bm!162250 m!2893909))

(declare-fun m!2893911 () Bool)

(assert (=> bm!162252 m!2893911))

(declare-fun m!2893913 () Bool)

(assert (=> b!2550520 m!2893913))

(assert (=> start!247384 d!723217))

(declare-fun d!723219 () Bool)

(assert (=> d!723219 (= (nullable!2516 (regOne!15710 r!27340)) (nullableFct!741 (regOne!15710 r!27340)))))

(declare-fun bs!469607 () Bool)

(assert (= bs!469607 d!723219))

(declare-fun m!2893915 () Bool)

(assert (=> bs!469607 m!2893915))

(assert (=> b!2550187 d!723219))

(declare-fun b!2550549 () Bool)

(declare-fun e!1611766 () Bool)

(declare-fun tp!813666 () Bool)

(assert (=> b!2550549 (= e!1611766 (and tp_is_empty!13053 tp!813666))))

(assert (=> b!2550189 (= tp!813623 e!1611766)))

(assert (= (and b!2550189 ((_ is Cons!29564) (t!211363 tl!4068))) b!2550549))

(declare-fun b!2550563 () Bool)

(declare-fun e!1611770 () Bool)

(declare-fun tp!813681 () Bool)

(assert (=> b!2550563 (= e!1611770 tp!813681)))

(declare-fun b!2550562 () Bool)

(declare-fun tp!813679 () Bool)

(declare-fun tp!813678 () Bool)

(assert (=> b!2550562 (= e!1611770 (and tp!813679 tp!813678))))

(assert (=> b!2550192 (= tp!813624 e!1611770)))

(declare-fun b!2550561 () Bool)

(assert (=> b!2550561 (= e!1611770 tp_is_empty!13053)))

(declare-fun b!2550564 () Bool)

(declare-fun tp!813682 () Bool)

(declare-fun tp!813680 () Bool)

(assert (=> b!2550564 (= e!1611770 (and tp!813682 tp!813680))))

(assert (= (and b!2550192 ((_ is ElementMatch!7599) (reg!7928 r!27340))) b!2550561))

(assert (= (and b!2550192 ((_ is Concat!12295) (reg!7928 r!27340))) b!2550562))

(assert (= (and b!2550192 ((_ is Star!7599) (reg!7928 r!27340))) b!2550563))

(assert (= (and b!2550192 ((_ is Union!7599) (reg!7928 r!27340))) b!2550564))

(declare-fun b!2550567 () Bool)

(declare-fun e!1611771 () Bool)

(declare-fun tp!813686 () Bool)

(assert (=> b!2550567 (= e!1611771 tp!813686)))

(declare-fun b!2550566 () Bool)

(declare-fun tp!813684 () Bool)

(declare-fun tp!813683 () Bool)

(assert (=> b!2550566 (= e!1611771 (and tp!813684 tp!813683))))

(assert (=> b!2550188 (= tp!813625 e!1611771)))

(declare-fun b!2550565 () Bool)

(assert (=> b!2550565 (= e!1611771 tp_is_empty!13053)))

(declare-fun b!2550568 () Bool)

(declare-fun tp!813687 () Bool)

(declare-fun tp!813685 () Bool)

(assert (=> b!2550568 (= e!1611771 (and tp!813687 tp!813685))))

(assert (= (and b!2550188 ((_ is ElementMatch!7599) (regOne!15711 r!27340))) b!2550565))

(assert (= (and b!2550188 ((_ is Concat!12295) (regOne!15711 r!27340))) b!2550566))

(assert (= (and b!2550188 ((_ is Star!7599) (regOne!15711 r!27340))) b!2550567))

(assert (= (and b!2550188 ((_ is Union!7599) (regOne!15711 r!27340))) b!2550568))

(declare-fun b!2550571 () Bool)

(declare-fun e!1611772 () Bool)

(declare-fun tp!813691 () Bool)

(assert (=> b!2550571 (= e!1611772 tp!813691)))

(declare-fun b!2550570 () Bool)

(declare-fun tp!813689 () Bool)

(declare-fun tp!813688 () Bool)

(assert (=> b!2550570 (= e!1611772 (and tp!813689 tp!813688))))

(assert (=> b!2550188 (= tp!813621 e!1611772)))

(declare-fun b!2550569 () Bool)

(assert (=> b!2550569 (= e!1611772 tp_is_empty!13053)))

(declare-fun b!2550572 () Bool)

(declare-fun tp!813692 () Bool)

(declare-fun tp!813690 () Bool)

(assert (=> b!2550572 (= e!1611772 (and tp!813692 tp!813690))))

(assert (= (and b!2550188 ((_ is ElementMatch!7599) (regTwo!15711 r!27340))) b!2550569))

(assert (= (and b!2550188 ((_ is Concat!12295) (regTwo!15711 r!27340))) b!2550570))

(assert (= (and b!2550188 ((_ is Star!7599) (regTwo!15711 r!27340))) b!2550571))

(assert (= (and b!2550188 ((_ is Union!7599) (regTwo!15711 r!27340))) b!2550572))

(declare-fun b!2550575 () Bool)

(declare-fun e!1611773 () Bool)

(declare-fun tp!813696 () Bool)

(assert (=> b!2550575 (= e!1611773 tp!813696)))

(declare-fun b!2550574 () Bool)

(declare-fun tp!813694 () Bool)

(declare-fun tp!813693 () Bool)

(assert (=> b!2550574 (= e!1611773 (and tp!813694 tp!813693))))

(assert (=> b!2550182 (= tp!813622 e!1611773)))

(declare-fun b!2550573 () Bool)

(assert (=> b!2550573 (= e!1611773 tp_is_empty!13053)))

(declare-fun b!2550576 () Bool)

(declare-fun tp!813697 () Bool)

(declare-fun tp!813695 () Bool)

(assert (=> b!2550576 (= e!1611773 (and tp!813697 tp!813695))))

(assert (= (and b!2550182 ((_ is ElementMatch!7599) (regOne!15710 r!27340))) b!2550573))

(assert (= (and b!2550182 ((_ is Concat!12295) (regOne!15710 r!27340))) b!2550574))

(assert (= (and b!2550182 ((_ is Star!7599) (regOne!15710 r!27340))) b!2550575))

(assert (= (and b!2550182 ((_ is Union!7599) (regOne!15710 r!27340))) b!2550576))

(declare-fun b!2550579 () Bool)

(declare-fun e!1611774 () Bool)

(declare-fun tp!813701 () Bool)

(assert (=> b!2550579 (= e!1611774 tp!813701)))

(declare-fun b!2550578 () Bool)

(declare-fun tp!813699 () Bool)

(declare-fun tp!813698 () Bool)

(assert (=> b!2550578 (= e!1611774 (and tp!813699 tp!813698))))

(assert (=> b!2550182 (= tp!813626 e!1611774)))

(declare-fun b!2550577 () Bool)

(assert (=> b!2550577 (= e!1611774 tp_is_empty!13053)))

(declare-fun b!2550580 () Bool)

(declare-fun tp!813702 () Bool)

(declare-fun tp!813700 () Bool)

(assert (=> b!2550580 (= e!1611774 (and tp!813702 tp!813700))))

(assert (= (and b!2550182 ((_ is ElementMatch!7599) (regTwo!15710 r!27340))) b!2550577))

(assert (= (and b!2550182 ((_ is Concat!12295) (regTwo!15710 r!27340))) b!2550578))

(assert (= (and b!2550182 ((_ is Star!7599) (regTwo!15710 r!27340))) b!2550579))

(assert (= (and b!2550182 ((_ is Union!7599) (regTwo!15710 r!27340))) b!2550580))

(check-sat (not d!723189) (not b!2550481) (not b!2550365) (not b!2550260) (not b!2550369) (not bm!162248) (not d!723207) (not b!2550366) (not b!2550237) (not b!2550360) (not d!723201) (not b!2550501) (not b!2550380) (not b!2550458) (not d!723191) (not d!723177) (not d!723219) (not b!2550575) (not b!2550357) (not b!2550355) (not b!2550576) (not b!2550568) (not bm!162231) (not b!2550374) (not bm!162190) (not bm!162205) (not b!2550563) (not bm!162206) (not b!2550371) (not bm!162250) (not bm!162233) (not bm!162192) (not b!2550567) (not b!2550549) (not bm!162189) (not bm!162187) (not d!723211) (not b!2550564) (not b!2550578) (not b!2550520) (not bm!162235) (not bm!162252) (not b!2550570) (not b!2550580) (not b!2550579) (not b!2550566) (not b!2550574) (not b!2550562) (not b!2550572) tp_is_empty!13053 (not bm!162237) (not b!2550246) (not bm!162246) (not b!2550379) (not d!723193) (not b!2550468) (not b!2550571) (not b!2550370) (not d!723181) (not d!723215) (not b!2550356))
(check-sat)
(get-model)

(declare-fun b!2550581 () Bool)

(declare-fun e!1611780 () Bool)

(declare-fun e!1611779 () Bool)

(assert (=> b!2550581 (= e!1611780 e!1611779)))

(declare-fun res!1074398 () Bool)

(assert (=> b!2550581 (=> (not res!1074398) (not e!1611779))))

(declare-fun call!162260 () Bool)

(assert (=> b!2550581 (= res!1074398 call!162260)))

(declare-fun b!2550582 () Bool)

(declare-fun e!1611781 () Bool)

(declare-fun e!1611778 () Bool)

(assert (=> b!2550582 (= e!1611781 e!1611778)))

(declare-fun c!408910 () Bool)

(assert (=> b!2550582 (= c!408910 ((_ is Star!7599) lt!903358))))

(declare-fun b!2550583 () Bool)

(declare-fun e!1611775 () Bool)

(declare-fun call!162259 () Bool)

(assert (=> b!2550583 (= e!1611775 call!162259)))

(declare-fun b!2550584 () Bool)

(declare-fun res!1074401 () Bool)

(declare-fun e!1611777 () Bool)

(assert (=> b!2550584 (=> (not res!1074401) (not e!1611777))))

(declare-fun call!162258 () Bool)

(assert (=> b!2550584 (= res!1074401 call!162258)))

(declare-fun e!1611776 () Bool)

(assert (=> b!2550584 (= e!1611776 e!1611777)))

(declare-fun bm!162253 () Bool)

(declare-fun c!408911 () Bool)

(assert (=> bm!162253 (= call!162259 (validRegex!3225 (ite c!408910 (reg!7928 lt!903358) (ite c!408911 (regTwo!15711 lt!903358) (regOne!15710 lt!903358)))))))

(declare-fun bm!162254 () Bool)

(assert (=> bm!162254 (= call!162260 call!162259)))

(declare-fun b!2550585 () Bool)

(assert (=> b!2550585 (= e!1611777 call!162260)))

(declare-fun d!723221 () Bool)

(declare-fun res!1074397 () Bool)

(assert (=> d!723221 (=> res!1074397 e!1611781)))

(assert (=> d!723221 (= res!1074397 ((_ is ElementMatch!7599) lt!903358))))

(assert (=> d!723221 (= (validRegex!3225 lt!903358) e!1611781)))

(declare-fun b!2550586 () Bool)

(assert (=> b!2550586 (= e!1611779 call!162258)))

(declare-fun bm!162255 () Bool)

(assert (=> bm!162255 (= call!162258 (validRegex!3225 (ite c!408911 (regOne!15711 lt!903358) (regTwo!15710 lt!903358))))))

(declare-fun b!2550587 () Bool)

(assert (=> b!2550587 (= e!1611778 e!1611776)))

(assert (=> b!2550587 (= c!408911 ((_ is Union!7599) lt!903358))))

(declare-fun b!2550588 () Bool)

(declare-fun res!1074400 () Bool)

(assert (=> b!2550588 (=> res!1074400 e!1611780)))

(assert (=> b!2550588 (= res!1074400 (not ((_ is Concat!12295) lt!903358)))))

(assert (=> b!2550588 (= e!1611776 e!1611780)))

(declare-fun b!2550589 () Bool)

(assert (=> b!2550589 (= e!1611778 e!1611775)))

(declare-fun res!1074399 () Bool)

(assert (=> b!2550589 (= res!1074399 (not (nullable!2516 (reg!7928 lt!903358))))))

(assert (=> b!2550589 (=> (not res!1074399) (not e!1611775))))

(assert (= (and d!723221 (not res!1074397)) b!2550582))

(assert (= (and b!2550582 c!408910) b!2550589))

(assert (= (and b!2550582 (not c!408910)) b!2550587))

(assert (= (and b!2550589 res!1074399) b!2550583))

(assert (= (and b!2550587 c!408911) b!2550584))

(assert (= (and b!2550587 (not c!408911)) b!2550588))

(assert (= (and b!2550584 res!1074401) b!2550585))

(assert (= (and b!2550588 (not res!1074400)) b!2550581))

(assert (= (and b!2550581 res!1074398) b!2550586))

(assert (= (or b!2550584 b!2550586) bm!162255))

(assert (= (or b!2550585 b!2550581) bm!162254))

(assert (= (or b!2550583 bm!162254) bm!162253))

(declare-fun m!2893917 () Bool)

(assert (=> bm!162253 m!2893917))

(declare-fun m!2893919 () Bool)

(assert (=> bm!162255 m!2893919))

(declare-fun m!2893921 () Bool)

(assert (=> b!2550589 m!2893921))

(assert (=> d!723215 d!723221))

(assert (=> d!723215 d!723217))

(declare-fun b!2550590 () Bool)

(declare-fun e!1611787 () Bool)

(declare-fun e!1611786 () Bool)

(assert (=> b!2550590 (= e!1611787 e!1611786)))

(declare-fun res!1074403 () Bool)

(assert (=> b!2550590 (=> (not res!1074403) (not e!1611786))))

(declare-fun call!162263 () Bool)

(assert (=> b!2550590 (= res!1074403 call!162263)))

(declare-fun b!2550591 () Bool)

(declare-fun e!1611788 () Bool)

(declare-fun e!1611785 () Bool)

(assert (=> b!2550591 (= e!1611788 e!1611785)))

(declare-fun c!408912 () Bool)

(assert (=> b!2550591 (= c!408912 ((_ is Star!7599) (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323))))))

(declare-fun b!2550592 () Bool)

(declare-fun e!1611782 () Bool)

(declare-fun call!162262 () Bool)

(assert (=> b!2550592 (= e!1611782 call!162262)))

(declare-fun b!2550593 () Bool)

(declare-fun res!1074406 () Bool)

(declare-fun e!1611784 () Bool)

(assert (=> b!2550593 (=> (not res!1074406) (not e!1611784))))

(declare-fun call!162261 () Bool)

(assert (=> b!2550593 (= res!1074406 call!162261)))

(declare-fun e!1611783 () Bool)

(assert (=> b!2550593 (= e!1611783 e!1611784)))

(declare-fun bm!162256 () Bool)

(declare-fun c!408913 () Bool)

(assert (=> bm!162256 (= call!162262 (validRegex!3225 (ite c!408912 (reg!7928 (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323))) (ite c!408913 (regTwo!15711 (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323))) (regOne!15710 (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323)))))))))

(declare-fun bm!162257 () Bool)

(assert (=> bm!162257 (= call!162263 call!162262)))

(declare-fun b!2550594 () Bool)

(assert (=> b!2550594 (= e!1611784 call!162263)))

(declare-fun d!723223 () Bool)

(declare-fun res!1074402 () Bool)

(assert (=> d!723223 (=> res!1074402 e!1611788)))

(assert (=> d!723223 (= res!1074402 ((_ is ElementMatch!7599) (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323))))))

(assert (=> d!723223 (= (validRegex!3225 (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323))) e!1611788)))

(declare-fun b!2550595 () Bool)

(assert (=> b!2550595 (= e!1611786 call!162261)))

(declare-fun bm!162258 () Bool)

(assert (=> bm!162258 (= call!162261 (validRegex!3225 (ite c!408913 (regOne!15711 (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323))) (regTwo!15710 (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323))))))))

(declare-fun b!2550596 () Bool)

(assert (=> b!2550596 (= e!1611785 e!1611783)))

(assert (=> b!2550596 (= c!408913 ((_ is Union!7599) (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323))))))

(declare-fun b!2550597 () Bool)

(declare-fun res!1074405 () Bool)

(assert (=> b!2550597 (=> res!1074405 e!1611787)))

(assert (=> b!2550597 (= res!1074405 (not ((_ is Concat!12295) (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323)))))))

(assert (=> b!2550597 (= e!1611783 e!1611787)))

(declare-fun b!2550598 () Bool)

(assert (=> b!2550598 (= e!1611785 e!1611782)))

(declare-fun res!1074404 () Bool)

(assert (=> b!2550598 (= res!1074404 (not (nullable!2516 (reg!7928 (ite c!408817 (regOne!15711 lt!903323) (regTwo!15710 lt!903323))))))))

(assert (=> b!2550598 (=> (not res!1074404) (not e!1611782))))

(assert (= (and d!723223 (not res!1074402)) b!2550591))

(assert (= (and b!2550591 c!408912) b!2550598))

(assert (= (and b!2550591 (not c!408912)) b!2550596))

(assert (= (and b!2550598 res!1074404) b!2550592))

(assert (= (and b!2550596 c!408913) b!2550593))

(assert (= (and b!2550596 (not c!408913)) b!2550597))

(assert (= (and b!2550593 res!1074406) b!2550594))

(assert (= (and b!2550597 (not res!1074405)) b!2550590))

(assert (= (and b!2550590 res!1074403) b!2550595))

(assert (= (or b!2550593 b!2550595) bm!162258))

(assert (= (or b!2550594 b!2550590) bm!162257))

(assert (= (or b!2550592 bm!162257) bm!162256))

(declare-fun m!2893923 () Bool)

(assert (=> bm!162256 m!2893923))

(declare-fun m!2893925 () Bool)

(assert (=> bm!162258 m!2893925))

(declare-fun m!2893927 () Bool)

(assert (=> b!2550598 m!2893927))

(assert (=> bm!162189 d!723223))

(declare-fun d!723225 () Bool)

(assert (=> d!723225 (= (nullable!2516 (regOne!15710 (regOne!15710 r!27340))) (nullableFct!741 (regOne!15710 (regOne!15710 r!27340))))))

(declare-fun bs!469608 () Bool)

(assert (= bs!469608 d!723225))

(declare-fun m!2893929 () Bool)

(assert (=> bs!469608 m!2893929))

(assert (=> b!2550468 d!723225))

(declare-fun d!723227 () Bool)

(assert (=> d!723227 (= (nullable!2516 lt!903321) (nullableFct!741 lt!903321))))

(declare-fun bs!469609 () Bool)

(assert (= bs!469609 d!723227))

(declare-fun m!2893931 () Bool)

(assert (=> bs!469609 m!2893931))

(assert (=> b!2550380 d!723227))

(declare-fun d!723229 () Bool)

(assert (not d!723229))

(assert (=> b!2550365 d!723229))

(declare-fun d!723231 () Bool)

(assert (not d!723231))

(assert (=> b!2550365 d!723231))

(declare-fun d!723233 () Bool)

(declare-fun lt!903359 () Regex!7599)

(assert (=> d!723233 (validRegex!3225 lt!903359)))

(declare-fun e!1611789 () Regex!7599)

(assert (=> d!723233 (= lt!903359 e!1611789)))

(declare-fun c!408914 () Bool)

(assert (=> d!723233 (= c!408914 ((_ is Cons!29564) (t!211363 tl!4068)))))

(assert (=> d!723233 (validRegex!3225 (derivativeStep!2168 (derivativeStep!2168 r!27340 c!14016) (h!34984 tl!4068)))))

(assert (=> d!723233 (= (derivative!294 (derivativeStep!2168 (derivativeStep!2168 r!27340 c!14016) (h!34984 tl!4068)) (t!211363 tl!4068)) lt!903359)))

(declare-fun b!2550599 () Bool)

(assert (=> b!2550599 (= e!1611789 (derivative!294 (derivativeStep!2168 (derivativeStep!2168 (derivativeStep!2168 r!27340 c!14016) (h!34984 tl!4068)) (h!34984 (t!211363 tl!4068))) (t!211363 (t!211363 tl!4068))))))

(declare-fun b!2550600 () Bool)

(assert (=> b!2550600 (= e!1611789 (derivativeStep!2168 (derivativeStep!2168 r!27340 c!14016) (h!34984 tl!4068)))))

(assert (= (and d!723233 c!408914) b!2550599))

(assert (= (and d!723233 (not c!408914)) b!2550600))

(declare-fun m!2893933 () Bool)

(assert (=> d!723233 m!2893933))

(assert (=> d!723233 m!2893893))

(declare-fun m!2893935 () Bool)

(assert (=> d!723233 m!2893935))

(assert (=> b!2550599 m!2893893))

(declare-fun m!2893937 () Bool)

(assert (=> b!2550599 m!2893937))

(assert (=> b!2550599 m!2893937))

(declare-fun m!2893939 () Bool)

(assert (=> b!2550599 m!2893939))

(assert (=> b!2550481 d!723233))

(declare-fun b!2550601 () Bool)

(declare-fun e!1611791 () Regex!7599)

(declare-fun call!162266 () Regex!7599)

(declare-fun call!162264 () Regex!7599)

(assert (=> b!2550601 (= e!1611791 (Union!7599 call!162266 call!162264))))

(declare-fun d!723235 () Bool)

(declare-fun lt!903360 () Regex!7599)

(assert (=> d!723235 (validRegex!3225 lt!903360)))

(declare-fun e!1611793 () Regex!7599)

(assert (=> d!723235 (= lt!903360 e!1611793)))

(declare-fun c!408915 () Bool)

(assert (=> d!723235 (= c!408915 (or ((_ is EmptyExpr!7599) (derivativeStep!2168 r!27340 c!14016)) ((_ is EmptyLang!7599) (derivativeStep!2168 r!27340 c!14016))))))

(assert (=> d!723235 (validRegex!3225 (derivativeStep!2168 r!27340 c!14016))))

(assert (=> d!723235 (= (derivativeStep!2168 (derivativeStep!2168 r!27340 c!14016) (h!34984 tl!4068)) lt!903360)))

(declare-fun e!1611792 () Regex!7599)

(declare-fun b!2550602 () Bool)

(declare-fun call!162267 () Regex!7599)

(assert (=> b!2550602 (= e!1611792 (Union!7599 (Concat!12295 call!162267 (regTwo!15710 (derivativeStep!2168 r!27340 c!14016))) EmptyLang!7599))))

(declare-fun c!408918 () Bool)

(declare-fun bm!162259 () Bool)

(assert (=> bm!162259 (= call!162264 (derivativeStep!2168 (ite c!408918 (regTwo!15711 (derivativeStep!2168 r!27340 c!14016)) (regTwo!15710 (derivativeStep!2168 r!27340 c!14016))) (h!34984 tl!4068)))))

(declare-fun bm!162260 () Bool)

(declare-fun call!162265 () Regex!7599)

(assert (=> bm!162260 (= call!162267 call!162265)))

(declare-fun b!2550603 () Bool)

(declare-fun e!1611794 () Regex!7599)

(assert (=> b!2550603 (= e!1611791 e!1611794)))

(declare-fun c!408916 () Bool)

(assert (=> b!2550603 (= c!408916 ((_ is Star!7599) (derivativeStep!2168 r!27340 c!14016)))))

(declare-fun b!2550604 () Bool)

(declare-fun e!1611790 () Regex!7599)

(assert (=> b!2550604 (= e!1611793 e!1611790)))

(declare-fun c!408917 () Bool)

(assert (=> b!2550604 (= c!408917 ((_ is ElementMatch!7599) (derivativeStep!2168 r!27340 c!14016)))))

(declare-fun b!2550605 () Bool)

(assert (=> b!2550605 (= e!1611792 (Union!7599 (Concat!12295 call!162267 (regTwo!15710 (derivativeStep!2168 r!27340 c!14016))) call!162264))))

(declare-fun b!2550606 () Bool)

(assert (=> b!2550606 (= e!1611793 EmptyLang!7599)))

(declare-fun b!2550607 () Bool)

(assert (=> b!2550607 (= c!408918 ((_ is Union!7599) (derivativeStep!2168 r!27340 c!14016)))))

(assert (=> b!2550607 (= e!1611790 e!1611791)))

(declare-fun b!2550608 () Bool)

(assert (=> b!2550608 (= e!1611794 (Concat!12295 call!162265 (derivativeStep!2168 r!27340 c!14016)))))

(declare-fun bm!162261 () Bool)

(assert (=> bm!162261 (= call!162266 (derivativeStep!2168 (ite c!408918 (regOne!15711 (derivativeStep!2168 r!27340 c!14016)) (ite c!408916 (reg!7928 (derivativeStep!2168 r!27340 c!14016)) (regOne!15710 (derivativeStep!2168 r!27340 c!14016)))) (h!34984 tl!4068)))))

(declare-fun bm!162262 () Bool)

(assert (=> bm!162262 (= call!162265 call!162266)))

(declare-fun b!2550609 () Bool)

(assert (=> b!2550609 (= e!1611790 (ite (= (h!34984 tl!4068) (c!408807 (derivativeStep!2168 r!27340 c!14016))) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun b!2550610 () Bool)

(declare-fun c!408919 () Bool)

(assert (=> b!2550610 (= c!408919 (nullable!2516 (regOne!15710 (derivativeStep!2168 r!27340 c!14016))))))

(assert (=> b!2550610 (= e!1611794 e!1611792)))

(assert (= (and d!723235 c!408915) b!2550606))

(assert (= (and d!723235 (not c!408915)) b!2550604))

(assert (= (and b!2550604 c!408917) b!2550609))

(assert (= (and b!2550604 (not c!408917)) b!2550607))

(assert (= (and b!2550607 c!408918) b!2550601))

(assert (= (and b!2550607 (not c!408918)) b!2550603))

(assert (= (and b!2550603 c!408916) b!2550608))

(assert (= (and b!2550603 (not c!408916)) b!2550610))

(assert (= (and b!2550610 c!408919) b!2550605))

(assert (= (and b!2550610 (not c!408919)) b!2550602))

(assert (= (or b!2550605 b!2550602) bm!162260))

(assert (= (or b!2550608 bm!162260) bm!162262))

(assert (= (or b!2550601 b!2550605) bm!162259))

(assert (= (or b!2550601 bm!162262) bm!162261))

(declare-fun m!2893941 () Bool)

(assert (=> d!723235 m!2893941))

(assert (=> d!723235 m!2893713))

(assert (=> d!723235 m!2893891))

(declare-fun m!2893943 () Bool)

(assert (=> bm!162259 m!2893943))

(declare-fun m!2893945 () Bool)

(assert (=> bm!162261 m!2893945))

(declare-fun m!2893947 () Bool)

(assert (=> b!2550610 m!2893947))

(assert (=> b!2550481 d!723235))

(declare-fun d!723237 () Bool)

(assert (=> d!723237 (= (nullable!2516 lt!903322) (nullableFct!741 lt!903322))))

(declare-fun bs!469610 () Bool)

(assert (= bs!469610 d!723237))

(declare-fun m!2893949 () Bool)

(assert (=> bs!469610 m!2893949))

(assert (=> b!2550366 d!723237))

(declare-fun d!723239 () Bool)

(assert (=> d!723239 (= (nullable!2516 (reg!7928 lt!903323)) (nullableFct!741 (reg!7928 lt!903323)))))

(declare-fun bs!469611 () Bool)

(assert (= bs!469611 d!723239))

(declare-fun m!2893951 () Bool)

(assert (=> bs!469611 m!2893951))

(assert (=> b!2550237 d!723239))

(declare-fun d!723241 () Bool)

(assert (=> d!723241 (= (nullable!2516 (regOne!15710 (regTwo!15710 r!27340))) (nullableFct!741 (regOne!15710 (regTwo!15710 r!27340))))))

(declare-fun bs!469612 () Bool)

(assert (= bs!469612 d!723241))

(declare-fun m!2893953 () Bool)

(assert (=> bs!469612 m!2893953))

(assert (=> b!2550458 d!723241))

(declare-fun b!2550611 () Bool)

(declare-fun e!1611800 () Bool)

(declare-fun e!1611799 () Bool)

(assert (=> b!2550611 (= e!1611800 e!1611799)))

(declare-fun res!1074408 () Bool)

(assert (=> b!2550611 (=> (not res!1074408) (not e!1611799))))

(declare-fun call!162270 () Bool)

(assert (=> b!2550611 (= res!1074408 call!162270)))

(declare-fun b!2550612 () Bool)

(declare-fun e!1611801 () Bool)

(declare-fun e!1611798 () Bool)

(assert (=> b!2550612 (= e!1611801 e!1611798)))

(declare-fun c!408920 () Bool)

(assert (=> b!2550612 (= c!408920 ((_ is Star!7599) lt!903357))))

(declare-fun b!2550613 () Bool)

(declare-fun e!1611795 () Bool)

(declare-fun call!162269 () Bool)

(assert (=> b!2550613 (= e!1611795 call!162269)))

(declare-fun b!2550614 () Bool)

(declare-fun res!1074411 () Bool)

(declare-fun e!1611797 () Bool)

(assert (=> b!2550614 (=> (not res!1074411) (not e!1611797))))

(declare-fun call!162268 () Bool)

(assert (=> b!2550614 (= res!1074411 call!162268)))

(declare-fun e!1611796 () Bool)

(assert (=> b!2550614 (= e!1611796 e!1611797)))

(declare-fun bm!162263 () Bool)

(declare-fun c!408921 () Bool)

(assert (=> bm!162263 (= call!162269 (validRegex!3225 (ite c!408920 (reg!7928 lt!903357) (ite c!408921 (regTwo!15711 lt!903357) (regOne!15710 lt!903357)))))))

(declare-fun bm!162264 () Bool)

(assert (=> bm!162264 (= call!162270 call!162269)))

(declare-fun b!2550615 () Bool)

(assert (=> b!2550615 (= e!1611797 call!162270)))

(declare-fun d!723243 () Bool)

(declare-fun res!1074407 () Bool)

(assert (=> d!723243 (=> res!1074407 e!1611801)))

(assert (=> d!723243 (= res!1074407 ((_ is ElementMatch!7599) lt!903357))))

(assert (=> d!723243 (= (validRegex!3225 lt!903357) e!1611801)))

(declare-fun b!2550616 () Bool)

(assert (=> b!2550616 (= e!1611799 call!162268)))

(declare-fun bm!162265 () Bool)

(assert (=> bm!162265 (= call!162268 (validRegex!3225 (ite c!408921 (regOne!15711 lt!903357) (regTwo!15710 lt!903357))))))

(declare-fun b!2550617 () Bool)

(assert (=> b!2550617 (= e!1611798 e!1611796)))

(assert (=> b!2550617 (= c!408921 ((_ is Union!7599) lt!903357))))

(declare-fun b!2550618 () Bool)

(declare-fun res!1074410 () Bool)

(assert (=> b!2550618 (=> res!1074410 e!1611800)))

(assert (=> b!2550618 (= res!1074410 (not ((_ is Concat!12295) lt!903357)))))

(assert (=> b!2550618 (= e!1611796 e!1611800)))

(declare-fun b!2550619 () Bool)

(assert (=> b!2550619 (= e!1611798 e!1611795)))

(declare-fun res!1074409 () Bool)

(assert (=> b!2550619 (= res!1074409 (not (nullable!2516 (reg!7928 lt!903357))))))

(assert (=> b!2550619 (=> (not res!1074409) (not e!1611795))))

(assert (= (and d!723243 (not res!1074407)) b!2550612))

(assert (= (and b!2550612 c!408920) b!2550619))

(assert (= (and b!2550612 (not c!408920)) b!2550617))

(assert (= (and b!2550619 res!1074409) b!2550613))

(assert (= (and b!2550617 c!408921) b!2550614))

(assert (= (and b!2550617 (not c!408921)) b!2550618))

(assert (= (and b!2550614 res!1074411) b!2550615))

(assert (= (and b!2550618 (not res!1074410)) b!2550611))

(assert (= (and b!2550611 res!1074408) b!2550616))

(assert (= (or b!2550614 b!2550616) bm!162265))

(assert (= (or b!2550615 b!2550611) bm!162264))

(assert (= (or b!2550613 bm!162264) bm!162263))

(declare-fun m!2893955 () Bool)

(assert (=> bm!162263 m!2893955))

(declare-fun m!2893957 () Bool)

(assert (=> bm!162265 m!2893957))

(declare-fun m!2893959 () Bool)

(assert (=> b!2550619 m!2893959))

(assert (=> d!723211 d!723243))

(declare-fun b!2550620 () Bool)

(declare-fun e!1611807 () Bool)

(declare-fun e!1611806 () Bool)

(assert (=> b!2550620 (= e!1611807 e!1611806)))

(declare-fun res!1074413 () Bool)

(assert (=> b!2550620 (=> (not res!1074413) (not e!1611806))))

(declare-fun call!162273 () Bool)

(assert (=> b!2550620 (= res!1074413 call!162273)))

(declare-fun b!2550621 () Bool)

(declare-fun e!1611808 () Bool)

(declare-fun e!1611805 () Bool)

(assert (=> b!2550621 (= e!1611808 e!1611805)))

(declare-fun c!408922 () Bool)

(assert (=> b!2550621 (= c!408922 ((_ is Star!7599) (derivativeStep!2168 r!27340 c!14016)))))

(declare-fun b!2550622 () Bool)

(declare-fun e!1611802 () Bool)

(declare-fun call!162272 () Bool)

(assert (=> b!2550622 (= e!1611802 call!162272)))

(declare-fun b!2550623 () Bool)

(declare-fun res!1074416 () Bool)

(declare-fun e!1611804 () Bool)

(assert (=> b!2550623 (=> (not res!1074416) (not e!1611804))))

(declare-fun call!162271 () Bool)

(assert (=> b!2550623 (= res!1074416 call!162271)))

(declare-fun e!1611803 () Bool)

(assert (=> b!2550623 (= e!1611803 e!1611804)))

(declare-fun c!408923 () Bool)

(declare-fun bm!162266 () Bool)

(assert (=> bm!162266 (= call!162272 (validRegex!3225 (ite c!408922 (reg!7928 (derivativeStep!2168 r!27340 c!14016)) (ite c!408923 (regTwo!15711 (derivativeStep!2168 r!27340 c!14016)) (regOne!15710 (derivativeStep!2168 r!27340 c!14016))))))))

(declare-fun bm!162267 () Bool)

(assert (=> bm!162267 (= call!162273 call!162272)))

(declare-fun b!2550624 () Bool)

(assert (=> b!2550624 (= e!1611804 call!162273)))

(declare-fun d!723245 () Bool)

(declare-fun res!1074412 () Bool)

(assert (=> d!723245 (=> res!1074412 e!1611808)))

(assert (=> d!723245 (= res!1074412 ((_ is ElementMatch!7599) (derivativeStep!2168 r!27340 c!14016)))))

(assert (=> d!723245 (= (validRegex!3225 (derivativeStep!2168 r!27340 c!14016)) e!1611808)))

(declare-fun b!2550625 () Bool)

(assert (=> b!2550625 (= e!1611806 call!162271)))

(declare-fun bm!162268 () Bool)

(assert (=> bm!162268 (= call!162271 (validRegex!3225 (ite c!408923 (regOne!15711 (derivativeStep!2168 r!27340 c!14016)) (regTwo!15710 (derivativeStep!2168 r!27340 c!14016)))))))

(declare-fun b!2550626 () Bool)

(assert (=> b!2550626 (= e!1611805 e!1611803)))

(assert (=> b!2550626 (= c!408923 ((_ is Union!7599) (derivativeStep!2168 r!27340 c!14016)))))

(declare-fun b!2550627 () Bool)

(declare-fun res!1074415 () Bool)

(assert (=> b!2550627 (=> res!1074415 e!1611807)))

(assert (=> b!2550627 (= res!1074415 (not ((_ is Concat!12295) (derivativeStep!2168 r!27340 c!14016))))))

(assert (=> b!2550627 (= e!1611803 e!1611807)))

(declare-fun b!2550628 () Bool)

(assert (=> b!2550628 (= e!1611805 e!1611802)))

(declare-fun res!1074414 () Bool)

(assert (=> b!2550628 (= res!1074414 (not (nullable!2516 (reg!7928 (derivativeStep!2168 r!27340 c!14016)))))))

(assert (=> b!2550628 (=> (not res!1074414) (not e!1611802))))

(assert (= (and d!723245 (not res!1074412)) b!2550621))

(assert (= (and b!2550621 c!408922) b!2550628))

(assert (= (and b!2550621 (not c!408922)) b!2550626))

(assert (= (and b!2550628 res!1074414) b!2550622))

(assert (= (and b!2550626 c!408923) b!2550623))

(assert (= (and b!2550626 (not c!408923)) b!2550627))

(assert (= (and b!2550623 res!1074416) b!2550624))

(assert (= (and b!2550627 (not res!1074415)) b!2550620))

(assert (= (and b!2550620 res!1074413) b!2550625))

(assert (= (or b!2550623 b!2550625) bm!162268))

(assert (= (or b!2550624 b!2550620) bm!162267))

(assert (= (or b!2550622 bm!162267) bm!162266))

(declare-fun m!2893961 () Bool)

(assert (=> bm!162266 m!2893961))

(declare-fun m!2893963 () Bool)

(assert (=> bm!162268 m!2893963))

(declare-fun m!2893965 () Bool)

(assert (=> b!2550628 m!2893965))

(assert (=> d!723211 d!723245))

(declare-fun b!2550629 () Bool)

(declare-fun e!1611814 () Bool)

(declare-fun e!1611813 () Bool)

(assert (=> b!2550629 (= e!1611814 e!1611813)))

(declare-fun res!1074418 () Bool)

(assert (=> b!2550629 (=> (not res!1074418) (not e!1611813))))

(declare-fun call!162276 () Bool)

(assert (=> b!2550629 (= res!1074418 call!162276)))

(declare-fun b!2550630 () Bool)

(declare-fun e!1611815 () Bool)

(declare-fun e!1611812 () Bool)

(assert (=> b!2550630 (= e!1611815 e!1611812)))

(declare-fun c!408924 () Bool)

(assert (=> b!2550630 (= c!408924 ((_ is Star!7599) lt!903321))))

(declare-fun b!2550631 () Bool)

(declare-fun e!1611809 () Bool)

(declare-fun call!162275 () Bool)

(assert (=> b!2550631 (= e!1611809 call!162275)))

(declare-fun b!2550632 () Bool)

(declare-fun res!1074421 () Bool)

(declare-fun e!1611811 () Bool)

(assert (=> b!2550632 (=> (not res!1074421) (not e!1611811))))

(declare-fun call!162274 () Bool)

(assert (=> b!2550632 (= res!1074421 call!162274)))

(declare-fun e!1611810 () Bool)

(assert (=> b!2550632 (= e!1611810 e!1611811)))

(declare-fun c!408925 () Bool)

(declare-fun bm!162269 () Bool)

(assert (=> bm!162269 (= call!162275 (validRegex!3225 (ite c!408924 (reg!7928 lt!903321) (ite c!408925 (regTwo!15711 lt!903321) (regOne!15710 lt!903321)))))))

(declare-fun bm!162270 () Bool)

(assert (=> bm!162270 (= call!162276 call!162275)))

(declare-fun b!2550633 () Bool)

(assert (=> b!2550633 (= e!1611811 call!162276)))

(declare-fun d!723247 () Bool)

(declare-fun res!1074417 () Bool)

(assert (=> d!723247 (=> res!1074417 e!1611815)))

(assert (=> d!723247 (= res!1074417 ((_ is ElementMatch!7599) lt!903321))))

(assert (=> d!723247 (= (validRegex!3225 lt!903321) e!1611815)))

(declare-fun b!2550634 () Bool)

(assert (=> b!2550634 (= e!1611813 call!162274)))

(declare-fun bm!162271 () Bool)

(assert (=> bm!162271 (= call!162274 (validRegex!3225 (ite c!408925 (regOne!15711 lt!903321) (regTwo!15710 lt!903321))))))

(declare-fun b!2550635 () Bool)

(assert (=> b!2550635 (= e!1611812 e!1611810)))

(assert (=> b!2550635 (= c!408925 ((_ is Union!7599) lt!903321))))

(declare-fun b!2550636 () Bool)

(declare-fun res!1074420 () Bool)

(assert (=> b!2550636 (=> res!1074420 e!1611814)))

(assert (=> b!2550636 (= res!1074420 (not ((_ is Concat!12295) lt!903321)))))

(assert (=> b!2550636 (= e!1611810 e!1611814)))

(declare-fun b!2550637 () Bool)

(assert (=> b!2550637 (= e!1611812 e!1611809)))

(declare-fun res!1074419 () Bool)

(assert (=> b!2550637 (= res!1074419 (not (nullable!2516 (reg!7928 lt!903321))))))

(assert (=> b!2550637 (=> (not res!1074419) (not e!1611809))))

(assert (= (and d!723247 (not res!1074417)) b!2550630))

(assert (= (and b!2550630 c!408924) b!2550637))

(assert (= (and b!2550630 (not c!408924)) b!2550635))

(assert (= (and b!2550637 res!1074419) b!2550631))

(assert (= (and b!2550635 c!408925) b!2550632))

(assert (= (and b!2550635 (not c!408925)) b!2550636))

(assert (= (and b!2550632 res!1074421) b!2550633))

(assert (= (and b!2550636 (not res!1074420)) b!2550629))

(assert (= (and b!2550629 res!1074418) b!2550634))

(assert (= (or b!2550632 b!2550634) bm!162271))

(assert (= (or b!2550633 b!2550629) bm!162270))

(assert (= (or b!2550631 bm!162270) bm!162269))

(declare-fun m!2893967 () Bool)

(assert (=> bm!162269 m!2893967))

(declare-fun m!2893969 () Bool)

(assert (=> bm!162271 m!2893969))

(declare-fun m!2893971 () Bool)

(assert (=> b!2550637 m!2893971))

(assert (=> d!723191 d!723247))

(declare-fun d!723249 () Bool)

(assert (=> d!723249 (= (matchR!3544 lt!903321 tl!4068) (matchR!3544 (derivative!294 lt!903321 tl!4068) Nil!29564))))

(assert (=> d!723249 true))

(declare-fun _$108!342 () Unit!43383)

(assert (=> d!723249 (= (choose!15058 lt!903321 tl!4068) _$108!342)))

(declare-fun bs!469613 () Bool)

(assert (= bs!469613 d!723249))

(assert (=> bs!469613 m!2893707))

(assert (=> bs!469613 m!2893705))

(assert (=> bs!469613 m!2893705))

(assert (=> bs!469613 m!2893819))

(assert (=> d!723191 d!723249))

(assert (=> d!723191 d!723177))

(assert (=> d!723191 d!723189))

(declare-fun b!2550638 () Bool)

(declare-fun e!1611817 () Bool)

(assert (=> b!2550638 (= e!1611817 (not (= (head!5806 Nil!29564) (c!408807 (derivative!294 lt!903321 tl!4068)))))))

(declare-fun b!2550639 () Bool)

(declare-fun e!1611818 () Bool)

(assert (=> b!2550639 (= e!1611818 (= (head!5806 Nil!29564) (c!408807 (derivative!294 lt!903321 tl!4068))))))

(declare-fun d!723251 () Bool)

(declare-fun e!1611822 () Bool)

(assert (=> d!723251 e!1611822))

(declare-fun c!408926 () Bool)

(assert (=> d!723251 (= c!408926 ((_ is EmptyExpr!7599) (derivative!294 lt!903321 tl!4068)))))

(declare-fun lt!903361 () Bool)

(declare-fun e!1611821 () Bool)

(assert (=> d!723251 (= lt!903361 e!1611821)))

(declare-fun c!408927 () Bool)

(assert (=> d!723251 (= c!408927 (isEmpty!17012 Nil!29564))))

(assert (=> d!723251 (validRegex!3225 (derivative!294 lt!903321 tl!4068))))

(assert (=> d!723251 (= (matchR!3544 (derivative!294 lt!903321 tl!4068) Nil!29564) lt!903361)))

(declare-fun b!2550640 () Bool)

(declare-fun res!1074428 () Bool)

(assert (=> b!2550640 (=> (not res!1074428) (not e!1611818))))

(assert (=> b!2550640 (= res!1074428 (isEmpty!17012 (tail!4081 Nil!29564)))))

(declare-fun b!2550641 () Bool)

(declare-fun e!1611820 () Bool)

(assert (=> b!2550641 (= e!1611822 e!1611820)))

(declare-fun c!408928 () Bool)

(assert (=> b!2550641 (= c!408928 ((_ is EmptyLang!7599) (derivative!294 lt!903321 tl!4068)))))

(declare-fun b!2550642 () Bool)

(declare-fun e!1611819 () Bool)

(assert (=> b!2550642 (= e!1611819 e!1611817)))

(declare-fun res!1074424 () Bool)

(assert (=> b!2550642 (=> res!1074424 e!1611817)))

(declare-fun call!162277 () Bool)

(assert (=> b!2550642 (= res!1074424 call!162277)))

(declare-fun b!2550643 () Bool)

(assert (=> b!2550643 (= e!1611821 (matchR!3544 (derivativeStep!2168 (derivative!294 lt!903321 tl!4068) (head!5806 Nil!29564)) (tail!4081 Nil!29564)))))

(declare-fun b!2550644 () Bool)

(assert (=> b!2550644 (= e!1611820 (not lt!903361))))

(declare-fun b!2550645 () Bool)

(declare-fun res!1074426 () Bool)

(assert (=> b!2550645 (=> (not res!1074426) (not e!1611818))))

(assert (=> b!2550645 (= res!1074426 (not call!162277))))

(declare-fun bm!162272 () Bool)

(assert (=> bm!162272 (= call!162277 (isEmpty!17012 Nil!29564))))

(declare-fun b!2550646 () Bool)

(declare-fun res!1074425 () Bool)

(declare-fun e!1611816 () Bool)

(assert (=> b!2550646 (=> res!1074425 e!1611816)))

(assert (=> b!2550646 (= res!1074425 (not ((_ is ElementMatch!7599) (derivative!294 lt!903321 tl!4068))))))

(assert (=> b!2550646 (= e!1611820 e!1611816)))

(declare-fun b!2550647 () Bool)

(assert (=> b!2550647 (= e!1611816 e!1611819)))

(declare-fun res!1074423 () Bool)

(assert (=> b!2550647 (=> (not res!1074423) (not e!1611819))))

(assert (=> b!2550647 (= res!1074423 (not lt!903361))))

(declare-fun b!2550648 () Bool)

(declare-fun res!1074427 () Bool)

(assert (=> b!2550648 (=> res!1074427 e!1611817)))

(assert (=> b!2550648 (= res!1074427 (not (isEmpty!17012 (tail!4081 Nil!29564))))))

(declare-fun b!2550649 () Bool)

(assert (=> b!2550649 (= e!1611821 (nullable!2516 (derivative!294 lt!903321 tl!4068)))))

(declare-fun b!2550650 () Bool)

(assert (=> b!2550650 (= e!1611822 (= lt!903361 call!162277))))

(declare-fun b!2550651 () Bool)

(declare-fun res!1074422 () Bool)

(assert (=> b!2550651 (=> res!1074422 e!1611816)))

(assert (=> b!2550651 (= res!1074422 e!1611818)))

(declare-fun res!1074429 () Bool)

(assert (=> b!2550651 (=> (not res!1074429) (not e!1611818))))

(assert (=> b!2550651 (= res!1074429 lt!903361)))

(assert (= (and d!723251 c!408927) b!2550649))

(assert (= (and d!723251 (not c!408927)) b!2550643))

(assert (= (and d!723251 c!408926) b!2550650))

(assert (= (and d!723251 (not c!408926)) b!2550641))

(assert (= (and b!2550641 c!408928) b!2550644))

(assert (= (and b!2550641 (not c!408928)) b!2550646))

(assert (= (and b!2550646 (not res!1074425)) b!2550651))

(assert (= (and b!2550651 res!1074429) b!2550645))

(assert (= (and b!2550645 res!1074426) b!2550640))

(assert (= (and b!2550640 res!1074428) b!2550639))

(assert (= (and b!2550651 (not res!1074422)) b!2550647))

(assert (= (and b!2550647 res!1074423) b!2550642))

(assert (= (and b!2550642 (not res!1074424)) b!2550648))

(assert (= (and b!2550648 (not res!1074427)) b!2550638))

(assert (= (or b!2550650 b!2550642 b!2550645) bm!162272))

(assert (=> b!2550640 m!2893787))

(assert (=> b!2550640 m!2893787))

(assert (=> b!2550640 m!2893789))

(assert (=> b!2550639 m!2893791))

(assert (=> b!2550648 m!2893787))

(assert (=> b!2550648 m!2893787))

(assert (=> b!2550648 m!2893789))

(assert (=> d!723251 m!2893793))

(assert (=> d!723251 m!2893705))

(declare-fun m!2893973 () Bool)

(assert (=> d!723251 m!2893973))

(assert (=> b!2550638 m!2893791))

(assert (=> bm!162272 m!2893793))

(assert (=> b!2550649 m!2893705))

(declare-fun m!2893975 () Bool)

(assert (=> b!2550649 m!2893975))

(assert (=> b!2550643 m!2893791))

(assert (=> b!2550643 m!2893705))

(assert (=> b!2550643 m!2893791))

(declare-fun m!2893977 () Bool)

(assert (=> b!2550643 m!2893977))

(assert (=> b!2550643 m!2893787))

(assert (=> b!2550643 m!2893977))

(assert (=> b!2550643 m!2893787))

(declare-fun m!2893979 () Bool)

(assert (=> b!2550643 m!2893979))

(assert (=> d!723191 d!723251))

(declare-fun b!2550652 () Bool)

(declare-fun e!1611828 () Bool)

(declare-fun e!1611827 () Bool)

(assert (=> b!2550652 (= e!1611828 e!1611827)))

(declare-fun res!1074431 () Bool)

(assert (=> b!2550652 (=> (not res!1074431) (not e!1611827))))

(declare-fun call!162280 () Bool)

(assert (=> b!2550652 (= res!1074431 call!162280)))

(declare-fun b!2550653 () Bool)

(declare-fun e!1611829 () Bool)

(declare-fun e!1611826 () Bool)

(assert (=> b!2550653 (= e!1611829 e!1611826)))

(declare-fun c!408929 () Bool)

(assert (=> b!2550653 (= c!408929 ((_ is Star!7599) lt!903350))))

(declare-fun b!2550654 () Bool)

(declare-fun e!1611823 () Bool)

(declare-fun call!162279 () Bool)

(assert (=> b!2550654 (= e!1611823 call!162279)))

(declare-fun b!2550655 () Bool)

(declare-fun res!1074434 () Bool)

(declare-fun e!1611825 () Bool)

(assert (=> b!2550655 (=> (not res!1074434) (not e!1611825))))

(declare-fun call!162278 () Bool)

(assert (=> b!2550655 (= res!1074434 call!162278)))

(declare-fun e!1611824 () Bool)

(assert (=> b!2550655 (= e!1611824 e!1611825)))

(declare-fun c!408930 () Bool)

(declare-fun bm!162273 () Bool)

(assert (=> bm!162273 (= call!162279 (validRegex!3225 (ite c!408929 (reg!7928 lt!903350) (ite c!408930 (regTwo!15711 lt!903350) (regOne!15710 lt!903350)))))))

(declare-fun bm!162274 () Bool)

(assert (=> bm!162274 (= call!162280 call!162279)))

(declare-fun b!2550656 () Bool)

(assert (=> b!2550656 (= e!1611825 call!162280)))

(declare-fun d!723253 () Bool)

(declare-fun res!1074430 () Bool)

(assert (=> d!723253 (=> res!1074430 e!1611829)))

(assert (=> d!723253 (= res!1074430 ((_ is ElementMatch!7599) lt!903350))))

(assert (=> d!723253 (= (validRegex!3225 lt!903350) e!1611829)))

(declare-fun b!2550657 () Bool)

(assert (=> b!2550657 (= e!1611827 call!162278)))

(declare-fun bm!162275 () Bool)

(assert (=> bm!162275 (= call!162278 (validRegex!3225 (ite c!408930 (regOne!15711 lt!903350) (regTwo!15710 lt!903350))))))

(declare-fun b!2550658 () Bool)

(assert (=> b!2550658 (= e!1611826 e!1611824)))

(assert (=> b!2550658 (= c!408930 ((_ is Union!7599) lt!903350))))

(declare-fun b!2550659 () Bool)

(declare-fun res!1074433 () Bool)

(assert (=> b!2550659 (=> res!1074433 e!1611828)))

(assert (=> b!2550659 (= res!1074433 (not ((_ is Concat!12295) lt!903350)))))

(assert (=> b!2550659 (= e!1611824 e!1611828)))

(declare-fun b!2550660 () Bool)

(assert (=> b!2550660 (= e!1611826 e!1611823)))

(declare-fun res!1074432 () Bool)

(assert (=> b!2550660 (= res!1074432 (not (nullable!2516 (reg!7928 lt!903350))))))

(assert (=> b!2550660 (=> (not res!1074432) (not e!1611823))))

(assert (= (and d!723253 (not res!1074430)) b!2550653))

(assert (= (and b!2550653 c!408929) b!2550660))

(assert (= (and b!2550653 (not c!408929)) b!2550658))

(assert (= (and b!2550660 res!1074432) b!2550654))

(assert (= (and b!2550658 c!408930) b!2550655))

(assert (= (and b!2550658 (not c!408930)) b!2550659))

(assert (= (and b!2550655 res!1074434) b!2550656))

(assert (= (and b!2550659 (not res!1074433)) b!2550652))

(assert (= (and b!2550652 res!1074431) b!2550657))

(assert (= (or b!2550655 b!2550657) bm!162275))

(assert (= (or b!2550656 b!2550652) bm!162274))

(assert (= (or b!2550654 bm!162274) bm!162273))

(declare-fun m!2893981 () Bool)

(assert (=> bm!162273 m!2893981))

(declare-fun m!2893983 () Bool)

(assert (=> bm!162275 m!2893983))

(declare-fun m!2893985 () Bool)

(assert (=> b!2550660 m!2893985))

(assert (=> d!723193 d!723253))

(declare-fun b!2550661 () Bool)

(declare-fun e!1611835 () Bool)

(declare-fun e!1611834 () Bool)

(assert (=> b!2550661 (= e!1611835 e!1611834)))

(declare-fun res!1074436 () Bool)

(assert (=> b!2550661 (=> (not res!1074436) (not e!1611834))))

(declare-fun call!162283 () Bool)

(assert (=> b!2550661 (= res!1074436 call!162283)))

(declare-fun b!2550662 () Bool)

(declare-fun e!1611836 () Bool)

(declare-fun e!1611833 () Bool)

(assert (=> b!2550662 (= e!1611836 e!1611833)))

(declare-fun c!408931 () Bool)

(assert (=> b!2550662 (= c!408931 ((_ is Star!7599) (regTwo!15710 r!27340)))))

(declare-fun b!2550663 () Bool)

(declare-fun e!1611830 () Bool)

(declare-fun call!162282 () Bool)

(assert (=> b!2550663 (= e!1611830 call!162282)))

(declare-fun b!2550664 () Bool)

(declare-fun res!1074439 () Bool)

(declare-fun e!1611832 () Bool)

(assert (=> b!2550664 (=> (not res!1074439) (not e!1611832))))

(declare-fun call!162281 () Bool)

(assert (=> b!2550664 (= res!1074439 call!162281)))

(declare-fun e!1611831 () Bool)

(assert (=> b!2550664 (= e!1611831 e!1611832)))

(declare-fun bm!162276 () Bool)

(declare-fun c!408932 () Bool)

(assert (=> bm!162276 (= call!162282 (validRegex!3225 (ite c!408931 (reg!7928 (regTwo!15710 r!27340)) (ite c!408932 (regTwo!15711 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340))))))))

(declare-fun bm!162277 () Bool)

(assert (=> bm!162277 (= call!162283 call!162282)))

(declare-fun b!2550665 () Bool)

(assert (=> b!2550665 (= e!1611832 call!162283)))

(declare-fun d!723255 () Bool)

(declare-fun res!1074435 () Bool)

(assert (=> d!723255 (=> res!1074435 e!1611836)))

(assert (=> d!723255 (= res!1074435 ((_ is ElementMatch!7599) (regTwo!15710 r!27340)))))

(assert (=> d!723255 (= (validRegex!3225 (regTwo!15710 r!27340)) e!1611836)))

(declare-fun b!2550666 () Bool)

(assert (=> b!2550666 (= e!1611834 call!162281)))

(declare-fun bm!162278 () Bool)

(assert (=> bm!162278 (= call!162281 (validRegex!3225 (ite c!408932 (regOne!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340)))))))

(declare-fun b!2550667 () Bool)

(assert (=> b!2550667 (= e!1611833 e!1611831)))

(assert (=> b!2550667 (= c!408932 ((_ is Union!7599) (regTwo!15710 r!27340)))))

(declare-fun b!2550668 () Bool)

(declare-fun res!1074438 () Bool)

(assert (=> b!2550668 (=> res!1074438 e!1611835)))

(assert (=> b!2550668 (= res!1074438 (not ((_ is Concat!12295) (regTwo!15710 r!27340))))))

(assert (=> b!2550668 (= e!1611831 e!1611835)))

(declare-fun b!2550669 () Bool)

(assert (=> b!2550669 (= e!1611833 e!1611830)))

(declare-fun res!1074437 () Bool)

(assert (=> b!2550669 (= res!1074437 (not (nullable!2516 (reg!7928 (regTwo!15710 r!27340)))))))

(assert (=> b!2550669 (=> (not res!1074437) (not e!1611830))))

(assert (= (and d!723255 (not res!1074435)) b!2550662))

(assert (= (and b!2550662 c!408931) b!2550669))

(assert (= (and b!2550662 (not c!408931)) b!2550667))

(assert (= (and b!2550669 res!1074437) b!2550663))

(assert (= (and b!2550667 c!408932) b!2550664))

(assert (= (and b!2550667 (not c!408932)) b!2550668))

(assert (= (and b!2550664 res!1074439) b!2550665))

(assert (= (and b!2550668 (not res!1074438)) b!2550661))

(assert (= (and b!2550661 res!1074436) b!2550666))

(assert (= (or b!2550664 b!2550666) bm!162278))

(assert (= (or b!2550665 b!2550661) bm!162277))

(assert (= (or b!2550663 bm!162277) bm!162276))

(declare-fun m!2893987 () Bool)

(assert (=> bm!162276 m!2893987))

(declare-fun m!2893989 () Bool)

(assert (=> bm!162278 m!2893989))

(declare-fun m!2893991 () Bool)

(assert (=> b!2550669 m!2893991))

(assert (=> d!723193 d!723255))

(declare-fun b!2550670 () Bool)

(declare-fun e!1611838 () Regex!7599)

(declare-fun call!162286 () Regex!7599)

(declare-fun call!162284 () Regex!7599)

(assert (=> b!2550670 (= e!1611838 (Union!7599 call!162286 call!162284))))

(declare-fun d!723257 () Bool)

(declare-fun lt!903362 () Regex!7599)

(assert (=> d!723257 (validRegex!3225 lt!903362)))

(declare-fun e!1611840 () Regex!7599)

(assert (=> d!723257 (= lt!903362 e!1611840)))

(declare-fun c!408933 () Bool)

(assert (=> d!723257 (= c!408933 (or ((_ is EmptyExpr!7599) (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340))))) ((_ is EmptyLang!7599) (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340)))))))))

(assert (=> d!723257 (validRegex!3225 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340)))))))

(assert (=> d!723257 (= (derivativeStep!2168 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340)))) c!14016) lt!903362)))

(declare-fun e!1611839 () Regex!7599)

(declare-fun b!2550671 () Bool)

(declare-fun call!162287 () Regex!7599)

(assert (=> b!2550671 (= e!1611839 (Union!7599 (Concat!12295 call!162287 (regTwo!15710 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340)))))) EmptyLang!7599))))

(declare-fun c!408936 () Bool)

(declare-fun bm!162279 () Bool)

(assert (=> bm!162279 (= call!162284 (derivativeStep!2168 (ite c!408936 (regTwo!15711 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340))))) (regTwo!15710 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340)))))) c!14016))))

(declare-fun bm!162280 () Bool)

(declare-fun call!162285 () Regex!7599)

(assert (=> bm!162280 (= call!162287 call!162285)))

(declare-fun b!2550672 () Bool)

(declare-fun e!1611841 () Regex!7599)

(assert (=> b!2550672 (= e!1611838 e!1611841)))

(declare-fun c!408934 () Bool)

(assert (=> b!2550672 (= c!408934 ((_ is Star!7599) (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340))))))))

(declare-fun b!2550673 () Bool)

(declare-fun e!1611837 () Regex!7599)

(assert (=> b!2550673 (= e!1611840 e!1611837)))

(declare-fun c!408935 () Bool)

(assert (=> b!2550673 (= c!408935 ((_ is ElementMatch!7599) (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340))))))))

(declare-fun b!2550674 () Bool)

(assert (=> b!2550674 (= e!1611839 (Union!7599 (Concat!12295 call!162287 (regTwo!15710 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340)))))) call!162284))))

(declare-fun b!2550675 () Bool)

(assert (=> b!2550675 (= e!1611840 EmptyLang!7599)))

(declare-fun b!2550676 () Bool)

(assert (=> b!2550676 (= c!408936 ((_ is Union!7599) (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340))))))))

(assert (=> b!2550676 (= e!1611837 e!1611838)))

(declare-fun b!2550677 () Bool)

(assert (=> b!2550677 (= e!1611841 (Concat!12295 call!162285 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340))))))))

(declare-fun bm!162281 () Bool)

(assert (=> bm!162281 (= call!162286 (derivativeStep!2168 (ite c!408936 (regOne!15711 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340))))) (ite c!408934 (reg!7928 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340))))) (regOne!15710 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340))))))) c!14016))))

(declare-fun bm!162282 () Bool)

(assert (=> bm!162282 (= call!162285 call!162286)))

(declare-fun b!2550678 () Bool)

(assert (=> b!2550678 (= e!1611837 (ite (= c!14016 (c!408807 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340)))))) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun c!408937 () Bool)

(declare-fun b!2550679 () Bool)

(assert (=> b!2550679 (= c!408937 (nullable!2516 (regOne!15710 (ite c!408892 (regOne!15711 (regOne!15710 r!27340)) (ite c!408890 (reg!7928 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340)))))))))

(assert (=> b!2550679 (= e!1611841 e!1611839)))

(assert (= (and d!723257 c!408933) b!2550675))

(assert (= (and d!723257 (not c!408933)) b!2550673))

(assert (= (and b!2550673 c!408935) b!2550678))

(assert (= (and b!2550673 (not c!408935)) b!2550676))

(assert (= (and b!2550676 c!408936) b!2550670))

(assert (= (and b!2550676 (not c!408936)) b!2550672))

(assert (= (and b!2550672 c!408934) b!2550677))

(assert (= (and b!2550672 (not c!408934)) b!2550679))

(assert (= (and b!2550679 c!408937) b!2550674))

(assert (= (and b!2550679 (not c!408937)) b!2550671))

(assert (= (or b!2550674 b!2550671) bm!162280))

(assert (= (or b!2550677 bm!162280) bm!162282))

(assert (= (or b!2550670 b!2550674) bm!162279))

(assert (= (or b!2550670 bm!162282) bm!162281))

(declare-fun m!2893993 () Bool)

(assert (=> d!723257 m!2893993))

(declare-fun m!2893995 () Bool)

(assert (=> d!723257 m!2893995))

(declare-fun m!2893997 () Bool)

(assert (=> bm!162279 m!2893997))

(declare-fun m!2893999 () Bool)

(assert (=> bm!162281 m!2893999))

(declare-fun m!2894001 () Bool)

(assert (=> b!2550679 m!2894001))

(assert (=> bm!162237 d!723257))

(declare-fun b!2550680 () Bool)

(declare-fun e!1611847 () Bool)

(declare-fun e!1611846 () Bool)

(assert (=> b!2550680 (= e!1611847 e!1611846)))

(declare-fun res!1074441 () Bool)

(assert (=> b!2550680 (=> (not res!1074441) (not e!1611846))))

(declare-fun call!162290 () Bool)

(assert (=> b!2550680 (= res!1074441 call!162290)))

(declare-fun b!2550681 () Bool)

(declare-fun e!1611848 () Bool)

(declare-fun e!1611845 () Bool)

(assert (=> b!2550681 (= e!1611848 e!1611845)))

(declare-fun c!408938 () Bool)

(assert (=> b!2550681 (= c!408938 ((_ is Star!7599) (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323)))))))

(declare-fun b!2550682 () Bool)

(declare-fun e!1611842 () Bool)

(declare-fun call!162289 () Bool)

(assert (=> b!2550682 (= e!1611842 call!162289)))

(declare-fun b!2550683 () Bool)

(declare-fun res!1074444 () Bool)

(declare-fun e!1611844 () Bool)

(assert (=> b!2550683 (=> (not res!1074444) (not e!1611844))))

(declare-fun call!162288 () Bool)

(assert (=> b!2550683 (= res!1074444 call!162288)))

(declare-fun e!1611843 () Bool)

(assert (=> b!2550683 (= e!1611843 e!1611844)))

(declare-fun bm!162283 () Bool)

(declare-fun c!408939 () Bool)

(assert (=> bm!162283 (= call!162289 (validRegex!3225 (ite c!408938 (reg!7928 (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323)))) (ite c!408939 (regTwo!15711 (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323)))) (regOne!15710 (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323))))))))))

(declare-fun bm!162284 () Bool)

(assert (=> bm!162284 (= call!162290 call!162289)))

(declare-fun b!2550684 () Bool)

(assert (=> b!2550684 (= e!1611844 call!162290)))

(declare-fun d!723259 () Bool)

(declare-fun res!1074440 () Bool)

(assert (=> d!723259 (=> res!1074440 e!1611848)))

(assert (=> d!723259 (= res!1074440 ((_ is ElementMatch!7599) (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323)))))))

(assert (=> d!723259 (= (validRegex!3225 (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323)))) e!1611848)))

(declare-fun b!2550685 () Bool)

(assert (=> b!2550685 (= e!1611846 call!162288)))

(declare-fun bm!162285 () Bool)

(assert (=> bm!162285 (= call!162288 (validRegex!3225 (ite c!408939 (regOne!15711 (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323)))) (regTwo!15710 (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323)))))))))

(declare-fun b!2550686 () Bool)

(assert (=> b!2550686 (= e!1611845 e!1611843)))

(assert (=> b!2550686 (= c!408939 ((_ is Union!7599) (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323)))))))

(declare-fun b!2550687 () Bool)

(declare-fun res!1074443 () Bool)

(assert (=> b!2550687 (=> res!1074443 e!1611847)))

(assert (=> b!2550687 (= res!1074443 (not ((_ is Concat!12295) (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323))))))))

(assert (=> b!2550687 (= e!1611843 e!1611847)))

(declare-fun b!2550688 () Bool)

(assert (=> b!2550688 (= e!1611845 e!1611842)))

(declare-fun res!1074442 () Bool)

(assert (=> b!2550688 (= res!1074442 (not (nullable!2516 (reg!7928 (ite c!408816 (reg!7928 lt!903323) (ite c!408817 (regTwo!15711 lt!903323) (regOne!15710 lt!903323)))))))))

(assert (=> b!2550688 (=> (not res!1074442) (not e!1611842))))

(assert (= (and d!723259 (not res!1074440)) b!2550681))

(assert (= (and b!2550681 c!408938) b!2550688))

(assert (= (and b!2550681 (not c!408938)) b!2550686))

(assert (= (and b!2550688 res!1074442) b!2550682))

(assert (= (and b!2550686 c!408939) b!2550683))

(assert (= (and b!2550686 (not c!408939)) b!2550687))

(assert (= (and b!2550683 res!1074444) b!2550684))

(assert (= (and b!2550687 (not res!1074443)) b!2550680))

(assert (= (and b!2550680 res!1074441) b!2550685))

(assert (= (or b!2550683 b!2550685) bm!162285))

(assert (= (or b!2550684 b!2550680) bm!162284))

(assert (= (or b!2550682 bm!162284) bm!162283))

(declare-fun m!2894003 () Bool)

(assert (=> bm!162283 m!2894003))

(declare-fun m!2894005 () Bool)

(assert (=> bm!162285 m!2894005))

(declare-fun m!2894007 () Bool)

(assert (=> b!2550688 m!2894007))

(assert (=> bm!162187 d!723259))

(declare-fun d!723261 () Bool)

(declare-fun lt!903363 () Regex!7599)

(assert (=> d!723261 (validRegex!3225 lt!903363)))

(declare-fun e!1611849 () Regex!7599)

(assert (=> d!723261 (= lt!903363 e!1611849)))

(declare-fun c!408940 () Bool)

(assert (=> d!723261 (= c!408940 ((_ is Cons!29564) (t!211363 tl!4068)))))

(assert (=> d!723261 (validRegex!3225 (derivativeStep!2168 lt!903321 (h!34984 tl!4068)))))

(assert (=> d!723261 (= (derivative!294 (derivativeStep!2168 lt!903321 (h!34984 tl!4068)) (t!211363 tl!4068)) lt!903363)))

(declare-fun b!2550689 () Bool)

(assert (=> b!2550689 (= e!1611849 (derivative!294 (derivativeStep!2168 (derivativeStep!2168 lt!903321 (h!34984 tl!4068)) (h!34984 (t!211363 tl!4068))) (t!211363 (t!211363 tl!4068))))))

(declare-fun b!2550690 () Bool)

(assert (=> b!2550690 (= e!1611849 (derivativeStep!2168 lt!903321 (h!34984 tl!4068)))))

(assert (= (and d!723261 c!408940) b!2550689))

(assert (= (and d!723261 (not c!408940)) b!2550690))

(declare-fun m!2894009 () Bool)

(assert (=> d!723261 m!2894009))

(assert (=> d!723261 m!2893745))

(declare-fun m!2894011 () Bool)

(assert (=> d!723261 m!2894011))

(assert (=> b!2550689 m!2893745))

(declare-fun m!2894013 () Bool)

(assert (=> b!2550689 m!2894013))

(assert (=> b!2550689 m!2894013))

(declare-fun m!2894015 () Bool)

(assert (=> b!2550689 m!2894015))

(assert (=> b!2550260 d!723261))

(declare-fun b!2550691 () Bool)

(declare-fun e!1611851 () Regex!7599)

(declare-fun call!162293 () Regex!7599)

(declare-fun call!162291 () Regex!7599)

(assert (=> b!2550691 (= e!1611851 (Union!7599 call!162293 call!162291))))

(declare-fun d!723263 () Bool)

(declare-fun lt!903364 () Regex!7599)

(assert (=> d!723263 (validRegex!3225 lt!903364)))

(declare-fun e!1611853 () Regex!7599)

(assert (=> d!723263 (= lt!903364 e!1611853)))

(declare-fun c!408941 () Bool)

(assert (=> d!723263 (= c!408941 (or ((_ is EmptyExpr!7599) lt!903321) ((_ is EmptyLang!7599) lt!903321)))))

(assert (=> d!723263 (validRegex!3225 lt!903321)))

(assert (=> d!723263 (= (derivativeStep!2168 lt!903321 (h!34984 tl!4068)) lt!903364)))

(declare-fun b!2550692 () Bool)

(declare-fun e!1611852 () Regex!7599)

(declare-fun call!162294 () Regex!7599)

(assert (=> b!2550692 (= e!1611852 (Union!7599 (Concat!12295 call!162294 (regTwo!15710 lt!903321)) EmptyLang!7599))))

(declare-fun c!408944 () Bool)

(declare-fun bm!162286 () Bool)

(assert (=> bm!162286 (= call!162291 (derivativeStep!2168 (ite c!408944 (regTwo!15711 lt!903321) (regTwo!15710 lt!903321)) (h!34984 tl!4068)))))

(declare-fun bm!162287 () Bool)

(declare-fun call!162292 () Regex!7599)

(assert (=> bm!162287 (= call!162294 call!162292)))

(declare-fun b!2550693 () Bool)

(declare-fun e!1611854 () Regex!7599)

(assert (=> b!2550693 (= e!1611851 e!1611854)))

(declare-fun c!408942 () Bool)

(assert (=> b!2550693 (= c!408942 ((_ is Star!7599) lt!903321))))

(declare-fun b!2550694 () Bool)

(declare-fun e!1611850 () Regex!7599)

(assert (=> b!2550694 (= e!1611853 e!1611850)))

(declare-fun c!408943 () Bool)

(assert (=> b!2550694 (= c!408943 ((_ is ElementMatch!7599) lt!903321))))

(declare-fun b!2550695 () Bool)

(assert (=> b!2550695 (= e!1611852 (Union!7599 (Concat!12295 call!162294 (regTwo!15710 lt!903321)) call!162291))))

(declare-fun b!2550696 () Bool)

(assert (=> b!2550696 (= e!1611853 EmptyLang!7599)))

(declare-fun b!2550697 () Bool)

(assert (=> b!2550697 (= c!408944 ((_ is Union!7599) lt!903321))))

(assert (=> b!2550697 (= e!1611850 e!1611851)))

(declare-fun b!2550698 () Bool)

(assert (=> b!2550698 (= e!1611854 (Concat!12295 call!162292 lt!903321))))

(declare-fun bm!162288 () Bool)

(assert (=> bm!162288 (= call!162293 (derivativeStep!2168 (ite c!408944 (regOne!15711 lt!903321) (ite c!408942 (reg!7928 lt!903321) (regOne!15710 lt!903321))) (h!34984 tl!4068)))))

(declare-fun bm!162289 () Bool)

(assert (=> bm!162289 (= call!162292 call!162293)))

(declare-fun b!2550699 () Bool)

(assert (=> b!2550699 (= e!1611850 (ite (= (h!34984 tl!4068) (c!408807 lt!903321)) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun b!2550700 () Bool)

(declare-fun c!408945 () Bool)

(assert (=> b!2550700 (= c!408945 (nullable!2516 (regOne!15710 lt!903321)))))

(assert (=> b!2550700 (= e!1611854 e!1611852)))

(assert (= (and d!723263 c!408941) b!2550696))

(assert (= (and d!723263 (not c!408941)) b!2550694))

(assert (= (and b!2550694 c!408943) b!2550699))

(assert (= (and b!2550694 (not c!408943)) b!2550697))

(assert (= (and b!2550697 c!408944) b!2550691))

(assert (= (and b!2550697 (not c!408944)) b!2550693))

(assert (= (and b!2550693 c!408942) b!2550698))

(assert (= (and b!2550693 (not c!408942)) b!2550700))

(assert (= (and b!2550700 c!408945) b!2550695))

(assert (= (and b!2550700 (not c!408945)) b!2550692))

(assert (= (or b!2550695 b!2550692) bm!162287))

(assert (= (or b!2550698 bm!162287) bm!162289))

(assert (= (or b!2550691 b!2550695) bm!162286))

(assert (= (or b!2550691 bm!162289) bm!162288))

(declare-fun m!2894017 () Bool)

(assert (=> d!723263 m!2894017))

(assert (=> d!723263 m!2893743))

(declare-fun m!2894019 () Bool)

(assert (=> bm!162286 m!2894019))

(declare-fun m!2894021 () Bool)

(assert (=> bm!162288 m!2894021))

(declare-fun m!2894023 () Bool)

(assert (=> b!2550700 m!2894023))

(assert (=> b!2550260 d!723263))

(declare-fun d!723265 () Bool)

(assert (not d!723265))

(assert (=> b!2550360 d!723265))

(declare-fun d!723267 () Bool)

(assert (not d!723267))

(assert (=> b!2550360 d!723267))

(declare-fun d!723269 () Bool)

(assert (not d!723269))

(assert (=> b!2550360 d!723269))

(assert (=> b!2550360 d!723231))

(declare-fun d!723271 () Bool)

(assert (=> d!723271 (= (isEmpty!17012 tl!4068) ((_ is Nil!29564) tl!4068))))

(assert (=> bm!162206 d!723271))

(declare-fun d!723273 () Bool)

(assert (=> d!723273 (= (nullable!2516 (reg!7928 lt!903325)) (nullableFct!741 (reg!7928 lt!903325)))))

(declare-fun bs!469614 () Bool)

(assert (= bs!469614 d!723273))

(declare-fun m!2894025 () Bool)

(assert (=> bs!469614 m!2894025))

(assert (=> b!2550246 d!723273))

(declare-fun b!2550701 () Bool)

(declare-fun e!1611856 () Regex!7599)

(declare-fun call!162297 () Regex!7599)

(declare-fun call!162295 () Regex!7599)

(assert (=> b!2550701 (= e!1611856 (Union!7599 call!162297 call!162295))))

(declare-fun d!723275 () Bool)

(declare-fun lt!903365 () Regex!7599)

(assert (=> d!723275 (validRegex!3225 lt!903365)))

(declare-fun e!1611858 () Regex!7599)

(assert (=> d!723275 (= lt!903365 e!1611858)))

(declare-fun c!408946 () Bool)

(assert (=> d!723275 (= c!408946 (or ((_ is EmptyExpr!7599) (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340))) ((_ is EmptyLang!7599) (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340)))))))

(assert (=> d!723275 (validRegex!3225 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340)))))

(assert (=> d!723275 (= (derivativeStep!2168 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340)) c!14016) lt!903365)))

(declare-fun call!162298 () Regex!7599)

(declare-fun e!1611857 () Regex!7599)

(declare-fun b!2550702 () Bool)

(assert (=> b!2550702 (= e!1611857 (Union!7599 (Concat!12295 call!162298 (regTwo!15710 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340)))) EmptyLang!7599))))

(declare-fun c!408949 () Bool)

(declare-fun bm!162290 () Bool)

(assert (=> bm!162290 (= call!162295 (derivativeStep!2168 (ite c!408949 (regTwo!15711 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340))) (regTwo!15710 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340)))) c!14016))))

(declare-fun bm!162291 () Bool)

(declare-fun call!162296 () Regex!7599)

(assert (=> bm!162291 (= call!162298 call!162296)))

(declare-fun b!2550703 () Bool)

(declare-fun e!1611859 () Regex!7599)

(assert (=> b!2550703 (= e!1611856 e!1611859)))

(declare-fun c!408947 () Bool)

(assert (=> b!2550703 (= c!408947 ((_ is Star!7599) (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340))))))

(declare-fun b!2550704 () Bool)

(declare-fun e!1611855 () Regex!7599)

(assert (=> b!2550704 (= e!1611858 e!1611855)))

(declare-fun c!408948 () Bool)

(assert (=> b!2550704 (= c!408948 ((_ is ElementMatch!7599) (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340))))))

(declare-fun b!2550705 () Bool)

(assert (=> b!2550705 (= e!1611857 (Union!7599 (Concat!12295 call!162298 (regTwo!15710 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340)))) call!162295))))

(declare-fun b!2550706 () Bool)

(assert (=> b!2550706 (= e!1611858 EmptyLang!7599)))

(declare-fun b!2550707 () Bool)

(assert (=> b!2550707 (= c!408949 ((_ is Union!7599) (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340))))))

(assert (=> b!2550707 (= e!1611855 e!1611856)))

(declare-fun b!2550708 () Bool)

(assert (=> b!2550708 (= e!1611859 (Concat!12295 call!162296 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340))))))

(declare-fun bm!162292 () Bool)

(assert (=> bm!162292 (= call!162297 (derivativeStep!2168 (ite c!408949 (regOne!15711 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340))) (ite c!408947 (reg!7928 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340))) (regOne!15710 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340))))) c!14016))))

(declare-fun bm!162293 () Bool)

(assert (=> bm!162293 (= call!162296 call!162297)))

(declare-fun b!2550709 () Bool)

(assert (=> b!2550709 (= e!1611855 (ite (= c!14016 (c!408807 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340)))) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun b!2550710 () Bool)

(declare-fun c!408950 () Bool)

(assert (=> b!2550710 (= c!408950 (nullable!2516 (regOne!15710 (ite c!408906 (regTwo!15711 r!27340) (regTwo!15710 r!27340)))))))

(assert (=> b!2550710 (= e!1611859 e!1611857)))

(assert (= (and d!723275 c!408946) b!2550706))

(assert (= (and d!723275 (not c!408946)) b!2550704))

(assert (= (and b!2550704 c!408948) b!2550709))

(assert (= (and b!2550704 (not c!408948)) b!2550707))

(assert (= (and b!2550707 c!408949) b!2550701))

(assert (= (and b!2550707 (not c!408949)) b!2550703))

(assert (= (and b!2550703 c!408947) b!2550708))

(assert (= (and b!2550703 (not c!408947)) b!2550710))

(assert (= (and b!2550710 c!408950) b!2550705))

(assert (= (and b!2550710 (not c!408950)) b!2550702))

(assert (= (or b!2550705 b!2550702) bm!162291))

(assert (= (or b!2550708 bm!162291) bm!162293))

(assert (= (or b!2550701 b!2550705) bm!162290))

(assert (= (or b!2550701 bm!162293) bm!162292))

(declare-fun m!2894027 () Bool)

(assert (=> d!723275 m!2894027))

(declare-fun m!2894029 () Bool)

(assert (=> d!723275 m!2894029))

(declare-fun m!2894031 () Bool)

(assert (=> bm!162290 m!2894031))

(declare-fun m!2894033 () Bool)

(assert (=> bm!162292 m!2894033))

(declare-fun m!2894035 () Bool)

(assert (=> b!2550710 m!2894035))

(assert (=> bm!162246 d!723275))

(declare-fun d!723277 () Bool)

(assert (=> d!723277 (= (isEmpty!17012 Nil!29564) true)))

(assert (=> bm!162205 d!723277))

(declare-fun d!723279 () Bool)

(assert (=> d!723279 (= (isEmpty!17012 (tail!4081 tl!4068)) ((_ is Nil!29564) (tail!4081 tl!4068)))))

(assert (=> b!2550379 d!723279))

(declare-fun d!723281 () Bool)

(assert (=> d!723281 (= (tail!4081 tl!4068) (t!211363 tl!4068))))

(assert (=> b!2550379 d!723281))

(declare-fun b!2550711 () Bool)

(declare-fun e!1611865 () Bool)

(declare-fun e!1611864 () Bool)

(assert (=> b!2550711 (= e!1611865 e!1611864)))

(declare-fun res!1074446 () Bool)

(assert (=> b!2550711 (=> (not res!1074446) (not e!1611864))))

(declare-fun call!162301 () Bool)

(assert (=> b!2550711 (= res!1074446 call!162301)))

(declare-fun b!2550712 () Bool)

(declare-fun e!1611866 () Bool)

(declare-fun e!1611863 () Bool)

(assert (=> b!2550712 (= e!1611866 e!1611863)))

(declare-fun c!408951 () Bool)

(assert (=> b!2550712 (= c!408951 ((_ is Star!7599) (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325)))))))

(declare-fun b!2550713 () Bool)

(declare-fun e!1611860 () Bool)

(declare-fun call!162300 () Bool)

(assert (=> b!2550713 (= e!1611860 call!162300)))

(declare-fun b!2550714 () Bool)

(declare-fun res!1074449 () Bool)

(declare-fun e!1611862 () Bool)

(assert (=> b!2550714 (=> (not res!1074449) (not e!1611862))))

(declare-fun call!162299 () Bool)

(assert (=> b!2550714 (= res!1074449 call!162299)))

(declare-fun e!1611861 () Bool)

(assert (=> b!2550714 (= e!1611861 e!1611862)))

(declare-fun c!408952 () Bool)

(declare-fun bm!162294 () Bool)

(assert (=> bm!162294 (= call!162300 (validRegex!3225 (ite c!408951 (reg!7928 (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325)))) (ite c!408952 (regTwo!15711 (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325)))) (regOne!15710 (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325))))))))))

(declare-fun bm!162295 () Bool)

(assert (=> bm!162295 (= call!162301 call!162300)))

(declare-fun b!2550715 () Bool)

(assert (=> b!2550715 (= e!1611862 call!162301)))

(declare-fun d!723283 () Bool)

(declare-fun res!1074445 () Bool)

(assert (=> d!723283 (=> res!1074445 e!1611866)))

(assert (=> d!723283 (= res!1074445 ((_ is ElementMatch!7599) (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325)))))))

(assert (=> d!723283 (= (validRegex!3225 (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325)))) e!1611866)))

(declare-fun b!2550716 () Bool)

(assert (=> b!2550716 (= e!1611864 call!162299)))

(declare-fun bm!162296 () Bool)

(assert (=> bm!162296 (= call!162299 (validRegex!3225 (ite c!408952 (regOne!15711 (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325)))) (regTwo!15710 (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325)))))))))

(declare-fun b!2550717 () Bool)

(assert (=> b!2550717 (= e!1611863 e!1611861)))

(assert (=> b!2550717 (= c!408952 ((_ is Union!7599) (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325)))))))

(declare-fun b!2550718 () Bool)

(declare-fun res!1074448 () Bool)

(assert (=> b!2550718 (=> res!1074448 e!1611865)))

(assert (=> b!2550718 (= res!1074448 (not ((_ is Concat!12295) (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325))))))))

(assert (=> b!2550718 (= e!1611861 e!1611865)))

(declare-fun b!2550719 () Bool)

(assert (=> b!2550719 (= e!1611863 e!1611860)))

(declare-fun res!1074447 () Bool)

(assert (=> b!2550719 (= res!1074447 (not (nullable!2516 (reg!7928 (ite c!408818 (reg!7928 lt!903325) (ite c!408819 (regTwo!15711 lt!903325) (regOne!15710 lt!903325)))))))))

(assert (=> b!2550719 (=> (not res!1074447) (not e!1611860))))

(assert (= (and d!723283 (not res!1074445)) b!2550712))

(assert (= (and b!2550712 c!408951) b!2550719))

(assert (= (and b!2550712 (not c!408951)) b!2550717))

(assert (= (and b!2550719 res!1074447) b!2550713))

(assert (= (and b!2550717 c!408952) b!2550714))

(assert (= (and b!2550717 (not c!408952)) b!2550718))

(assert (= (and b!2550714 res!1074449) b!2550715))

(assert (= (and b!2550718 (not res!1074448)) b!2550711))

(assert (= (and b!2550711 res!1074446) b!2550716))

(assert (= (or b!2550714 b!2550716) bm!162296))

(assert (= (or b!2550715 b!2550711) bm!162295))

(assert (= (or b!2550713 bm!162295) bm!162294))

(declare-fun m!2894037 () Bool)

(assert (=> bm!162294 m!2894037))

(declare-fun m!2894039 () Bool)

(assert (=> bm!162296 m!2894039))

(declare-fun m!2894041 () Bool)

(assert (=> b!2550719 m!2894041))

(assert (=> bm!162190 d!723283))

(assert (=> b!2550371 d!723279))

(assert (=> b!2550371 d!723281))

(declare-fun d!723285 () Bool)

(assert (=> d!723285 (= (head!5806 tl!4068) (h!34984 tl!4068))))

(assert (=> b!2550370 d!723285))

(declare-fun b!2550720 () Bool)

(declare-fun e!1611872 () Bool)

(declare-fun e!1611871 () Bool)

(assert (=> b!2550720 (= e!1611872 e!1611871)))

(declare-fun res!1074451 () Bool)

(assert (=> b!2550720 (=> (not res!1074451) (not e!1611871))))

(declare-fun call!162304 () Bool)

(assert (=> b!2550720 (= res!1074451 call!162304)))

(declare-fun b!2550721 () Bool)

(declare-fun e!1611873 () Bool)

(declare-fun e!1611870 () Bool)

(assert (=> b!2550721 (= e!1611873 e!1611870)))

(declare-fun c!408953 () Bool)

(assert (=> b!2550721 (= c!408953 ((_ is Star!7599) (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340))))))

(declare-fun b!2550722 () Bool)

(declare-fun e!1611867 () Bool)

(declare-fun call!162303 () Bool)

(assert (=> b!2550722 (= e!1611867 call!162303)))

(declare-fun b!2550723 () Bool)

(declare-fun res!1074454 () Bool)

(declare-fun e!1611869 () Bool)

(assert (=> b!2550723 (=> (not res!1074454) (not e!1611869))))

(declare-fun call!162302 () Bool)

(assert (=> b!2550723 (= res!1074454 call!162302)))

(declare-fun e!1611868 () Bool)

(assert (=> b!2550723 (= e!1611868 e!1611869)))

(declare-fun c!408954 () Bool)

(declare-fun bm!162297 () Bool)

(assert (=> bm!162297 (= call!162303 (validRegex!3225 (ite c!408953 (reg!7928 (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340))) (ite c!408954 (regTwo!15711 (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340))) (regOne!15710 (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340)))))))))

(declare-fun bm!162298 () Bool)

(assert (=> bm!162298 (= call!162304 call!162303)))

(declare-fun b!2550724 () Bool)

(assert (=> b!2550724 (= e!1611869 call!162304)))

(declare-fun d!723287 () Bool)

(declare-fun res!1074450 () Bool)

(assert (=> d!723287 (=> res!1074450 e!1611873)))

(assert (=> d!723287 (= res!1074450 ((_ is ElementMatch!7599) (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340))))))

(assert (=> d!723287 (= (validRegex!3225 (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340))) e!1611873)))

(declare-fun b!2550725 () Bool)

(assert (=> b!2550725 (= e!1611871 call!162302)))

(declare-fun bm!162299 () Bool)

(assert (=> bm!162299 (= call!162302 (validRegex!3225 (ite c!408954 (regOne!15711 (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340))) (regTwo!15710 (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340))))))))

(declare-fun b!2550726 () Bool)

(assert (=> b!2550726 (= e!1611870 e!1611868)))

(assert (=> b!2550726 (= c!408954 ((_ is Union!7599) (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340))))))

(declare-fun b!2550727 () Bool)

(declare-fun res!1074453 () Bool)

(assert (=> b!2550727 (=> res!1074453 e!1611872)))

(assert (=> b!2550727 (= res!1074453 (not ((_ is Concat!12295) (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340)))))))

(assert (=> b!2550727 (= e!1611868 e!1611872)))

(declare-fun b!2550728 () Bool)

(assert (=> b!2550728 (= e!1611870 e!1611867)))

(declare-fun res!1074452 () Bool)

(assert (=> b!2550728 (= res!1074452 (not (nullable!2516 (reg!7928 (ite c!408909 (regOne!15711 r!27340) (regTwo!15710 r!27340))))))))

(assert (=> b!2550728 (=> (not res!1074452) (not e!1611867))))

(assert (= (and d!723287 (not res!1074450)) b!2550721))

(assert (= (and b!2550721 c!408953) b!2550728))

(assert (= (and b!2550721 (not c!408953)) b!2550726))

(assert (= (and b!2550728 res!1074452) b!2550722))

(assert (= (and b!2550726 c!408954) b!2550723))

(assert (= (and b!2550726 (not c!408954)) b!2550727))

(assert (= (and b!2550723 res!1074454) b!2550724))

(assert (= (and b!2550727 (not res!1074453)) b!2550720))

(assert (= (and b!2550720 res!1074451) b!2550725))

(assert (= (or b!2550723 b!2550725) bm!162299))

(assert (= (or b!2550724 b!2550720) bm!162298))

(assert (= (or b!2550722 bm!162298) bm!162297))

(declare-fun m!2894043 () Bool)

(assert (=> bm!162297 m!2894043))

(declare-fun m!2894045 () Bool)

(assert (=> bm!162299 m!2894045))

(declare-fun m!2894047 () Bool)

(assert (=> b!2550728 m!2894047))

(assert (=> bm!162252 d!723287))

(assert (=> b!2550355 d!723269))

(declare-fun b!2550743 () Bool)

(declare-fun e!1611891 () Bool)

(declare-fun e!1611886 () Bool)

(assert (=> b!2550743 (= e!1611891 e!1611886)))

(declare-fun res!1074466 () Bool)

(declare-fun call!162309 () Bool)

(assert (=> b!2550743 (= res!1074466 call!162309)))

(assert (=> b!2550743 (=> (not res!1074466) (not e!1611886))))

(declare-fun b!2550744 () Bool)

(declare-fun e!1611889 () Bool)

(assert (=> b!2550744 (= e!1611889 call!162309)))

(declare-fun call!162310 () Bool)

(declare-fun bm!162304 () Bool)

(declare-fun c!408957 () Bool)

(assert (=> bm!162304 (= call!162310 (nullable!2516 (ite c!408957 (regOne!15711 (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)) (regTwo!15710 (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)))))))

(declare-fun d!723289 () Bool)

(declare-fun res!1074469 () Bool)

(declare-fun e!1611887 () Bool)

(assert (=> d!723289 (=> res!1074469 e!1611887)))

(assert (=> d!723289 (= res!1074469 ((_ is EmptyExpr!7599) (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)))))

(assert (=> d!723289 (= (nullableFct!741 (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)) e!1611887)))

(declare-fun bm!162305 () Bool)

(assert (=> bm!162305 (= call!162309 (nullable!2516 (ite c!408957 (regTwo!15711 (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)) (regOne!15710 (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2550745 () Bool)

(assert (=> b!2550745 (= e!1611886 call!162310)))

(declare-fun b!2550746 () Bool)

(declare-fun e!1611888 () Bool)

(declare-fun e!1611890 () Bool)

(assert (=> b!2550746 (= e!1611888 e!1611890)))

(declare-fun res!1074467 () Bool)

(assert (=> b!2550746 (=> res!1074467 e!1611890)))

(assert (=> b!2550746 (= res!1074467 ((_ is Star!7599) (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)))))

(declare-fun b!2550747 () Bool)

(assert (=> b!2550747 (= e!1611887 e!1611888)))

(declare-fun res!1074468 () Bool)

(assert (=> b!2550747 (=> (not res!1074468) (not e!1611888))))

(assert (=> b!2550747 (= res!1074468 (and (not ((_ is EmptyLang!7599) (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7599) (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2550748 () Bool)

(assert (=> b!2550748 (= e!1611891 e!1611889)))

(declare-fun res!1074465 () Bool)

(assert (=> b!2550748 (= res!1074465 call!162310)))

(assert (=> b!2550748 (=> res!1074465 e!1611889)))

(declare-fun b!2550749 () Bool)

(assert (=> b!2550749 (= e!1611890 e!1611891)))

(assert (=> b!2550749 (= c!408957 ((_ is Union!7599) (derivative!294 (derivativeStep!2168 r!27340 c!14016) tl!4068)))))

(assert (= (and d!723289 (not res!1074469)) b!2550747))

(assert (= (and b!2550747 res!1074468) b!2550746))

(assert (= (and b!2550746 (not res!1074467)) b!2550749))

(assert (= (and b!2550749 c!408957) b!2550748))

(assert (= (and b!2550749 (not c!408957)) b!2550743))

(assert (= (and b!2550748 (not res!1074465)) b!2550744))

(assert (= (and b!2550743 res!1074466) b!2550745))

(assert (= (or b!2550744 b!2550743) bm!162305))

(assert (= (or b!2550748 b!2550745) bm!162304))

(declare-fun m!2894049 () Bool)

(assert (=> bm!162304 m!2894049))

(declare-fun m!2894051 () Bool)

(assert (=> bm!162305 m!2894051))

(assert (=> d!723207 d!723289))

(declare-fun b!2550750 () Bool)

(declare-fun e!1611897 () Bool)

(declare-fun e!1611896 () Bool)

(assert (=> b!2550750 (= e!1611897 e!1611896)))

(declare-fun res!1074471 () Bool)

(assert (=> b!2550750 (=> (not res!1074471) (not e!1611896))))

(declare-fun call!162313 () Bool)

(assert (=> b!2550750 (= res!1074471 call!162313)))

(declare-fun b!2550751 () Bool)

(declare-fun e!1611898 () Bool)

(declare-fun e!1611895 () Bool)

(assert (=> b!2550751 (= e!1611898 e!1611895)))

(declare-fun c!408958 () Bool)

(assert (=> b!2550751 (= c!408958 ((_ is Star!7599) lt!903329))))

(declare-fun b!2550752 () Bool)

(declare-fun e!1611892 () Bool)

(declare-fun call!162312 () Bool)

(assert (=> b!2550752 (= e!1611892 call!162312)))

(declare-fun b!2550753 () Bool)

(declare-fun res!1074474 () Bool)

(declare-fun e!1611894 () Bool)

(assert (=> b!2550753 (=> (not res!1074474) (not e!1611894))))

(declare-fun call!162311 () Bool)

(assert (=> b!2550753 (= res!1074474 call!162311)))

(declare-fun e!1611893 () Bool)

(assert (=> b!2550753 (= e!1611893 e!1611894)))

(declare-fun bm!162306 () Bool)

(declare-fun c!408959 () Bool)

(assert (=> bm!162306 (= call!162312 (validRegex!3225 (ite c!408958 (reg!7928 lt!903329) (ite c!408959 (regTwo!15711 lt!903329) (regOne!15710 lt!903329)))))))

(declare-fun bm!162307 () Bool)

(assert (=> bm!162307 (= call!162313 call!162312)))

(declare-fun b!2550754 () Bool)

(assert (=> b!2550754 (= e!1611894 call!162313)))

(declare-fun d!723291 () Bool)

(declare-fun res!1074470 () Bool)

(assert (=> d!723291 (=> res!1074470 e!1611898)))

(assert (=> d!723291 (= res!1074470 ((_ is ElementMatch!7599) lt!903329))))

(assert (=> d!723291 (= (validRegex!3225 lt!903329) e!1611898)))

(declare-fun b!2550755 () Bool)

(assert (=> b!2550755 (= e!1611896 call!162311)))

(declare-fun bm!162308 () Bool)

(assert (=> bm!162308 (= call!162311 (validRegex!3225 (ite c!408959 (regOne!15711 lt!903329) (regTwo!15710 lt!903329))))))

(declare-fun b!2550756 () Bool)

(assert (=> b!2550756 (= e!1611895 e!1611893)))

(assert (=> b!2550756 (= c!408959 ((_ is Union!7599) lt!903329))))

(declare-fun b!2550757 () Bool)

(declare-fun res!1074473 () Bool)

(assert (=> b!2550757 (=> res!1074473 e!1611897)))

(assert (=> b!2550757 (= res!1074473 (not ((_ is Concat!12295) lt!903329)))))

(assert (=> b!2550757 (= e!1611893 e!1611897)))

(declare-fun b!2550758 () Bool)

(assert (=> b!2550758 (= e!1611895 e!1611892)))

(declare-fun res!1074472 () Bool)

(assert (=> b!2550758 (= res!1074472 (not (nullable!2516 (reg!7928 lt!903329))))))

(assert (=> b!2550758 (=> (not res!1074472) (not e!1611892))))

(assert (= (and d!723291 (not res!1074470)) b!2550751))

(assert (= (and b!2550751 c!408958) b!2550758))

(assert (= (and b!2550751 (not c!408958)) b!2550756))

(assert (= (and b!2550758 res!1074472) b!2550752))

(assert (= (and b!2550756 c!408959) b!2550753))

(assert (= (and b!2550756 (not c!408959)) b!2550757))

(assert (= (and b!2550753 res!1074474) b!2550754))

(assert (= (and b!2550757 (not res!1074473)) b!2550750))

(assert (= (and b!2550750 res!1074471) b!2550755))

(assert (= (or b!2550753 b!2550755) bm!162308))

(assert (= (or b!2550754 b!2550750) bm!162307))

(assert (= (or b!2550752 bm!162307) bm!162306))

(declare-fun m!2894053 () Bool)

(assert (=> bm!162306 m!2894053))

(declare-fun m!2894055 () Bool)

(assert (=> bm!162308 m!2894055))

(declare-fun m!2894057 () Bool)

(assert (=> b!2550758 m!2894057))

(assert (=> d!723177 d!723291))

(assert (=> d!723177 d!723247))

(declare-fun b!2550759 () Bool)

(declare-fun e!1611900 () Regex!7599)

(declare-fun call!162316 () Regex!7599)

(declare-fun call!162314 () Regex!7599)

(assert (=> b!2550759 (= e!1611900 (Union!7599 call!162316 call!162314))))

(declare-fun d!723293 () Bool)

(declare-fun lt!903366 () Regex!7599)

(assert (=> d!723293 (validRegex!3225 lt!903366)))

(declare-fun e!1611902 () Regex!7599)

(assert (=> d!723293 (= lt!903366 e!1611902)))

(declare-fun c!408960 () Bool)

(assert (=> d!723293 (= c!408960 (or ((_ is EmptyExpr!7599) (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340))))) ((_ is EmptyLang!7599) (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340)))))))))

(assert (=> d!723293 (validRegex!3225 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340)))))))

(assert (=> d!723293 (= (derivativeStep!2168 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340)))) c!14016) lt!903366)))

(declare-fun b!2550760 () Bool)

(declare-fun call!162317 () Regex!7599)

(declare-fun e!1611901 () Regex!7599)

(assert (=> b!2550760 (= e!1611901 (Union!7599 (Concat!12295 call!162317 (regTwo!15710 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340)))))) EmptyLang!7599))))

(declare-fun c!408963 () Bool)

(declare-fun bm!162309 () Bool)

(assert (=> bm!162309 (= call!162314 (derivativeStep!2168 (ite c!408963 (regTwo!15711 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340))))) (regTwo!15710 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340)))))) c!14016))))

(declare-fun bm!162310 () Bool)

(declare-fun call!162315 () Regex!7599)

(assert (=> bm!162310 (= call!162317 call!162315)))

(declare-fun b!2550761 () Bool)

(declare-fun e!1611903 () Regex!7599)

(assert (=> b!2550761 (= e!1611900 e!1611903)))

(declare-fun c!408961 () Bool)

(assert (=> b!2550761 (= c!408961 ((_ is Star!7599) (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340))))))))

(declare-fun b!2550762 () Bool)

(declare-fun e!1611899 () Regex!7599)

(assert (=> b!2550762 (= e!1611902 e!1611899)))

(declare-fun c!408962 () Bool)

(assert (=> b!2550762 (= c!408962 ((_ is ElementMatch!7599) (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340))))))))

(declare-fun b!2550763 () Bool)

(assert (=> b!2550763 (= e!1611901 (Union!7599 (Concat!12295 call!162317 (regTwo!15710 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340)))))) call!162314))))

(declare-fun b!2550764 () Bool)

(assert (=> b!2550764 (= e!1611902 EmptyLang!7599)))

(declare-fun b!2550765 () Bool)

(assert (=> b!2550765 (= c!408963 ((_ is Union!7599) (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340))))))))

(assert (=> b!2550765 (= e!1611899 e!1611900)))

(declare-fun b!2550766 () Bool)

(assert (=> b!2550766 (= e!1611903 (Concat!12295 call!162315 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340))))))))

(declare-fun bm!162311 () Bool)

(assert (=> bm!162311 (= call!162316 (derivativeStep!2168 (ite c!408963 (regOne!15711 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340))))) (ite c!408961 (reg!7928 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340))))) (regOne!15710 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340))))))) c!14016))))

(declare-fun bm!162312 () Bool)

(assert (=> bm!162312 (= call!162315 call!162316)))

(declare-fun b!2550767 () Bool)

(assert (=> b!2550767 (= e!1611899 (ite (= c!14016 (c!408807 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340)))))) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun c!408964 () Bool)

(declare-fun b!2550768 () Bool)

(assert (=> b!2550768 (= c!408964 (nullable!2516 (regOne!15710 (ite c!408887 (regOne!15711 (regTwo!15710 r!27340)) (ite c!408885 (reg!7928 (regTwo!15710 r!27340)) (regOne!15710 (regTwo!15710 r!27340)))))))))

(assert (=> b!2550768 (= e!1611903 e!1611901)))

(assert (= (and d!723293 c!408960) b!2550764))

(assert (= (and d!723293 (not c!408960)) b!2550762))

(assert (= (and b!2550762 c!408962) b!2550767))

(assert (= (and b!2550762 (not c!408962)) b!2550765))

(assert (= (and b!2550765 c!408963) b!2550759))

(assert (= (and b!2550765 (not c!408963)) b!2550761))

(assert (= (and b!2550761 c!408961) b!2550766))

(assert (= (and b!2550761 (not c!408961)) b!2550768))

(assert (= (and b!2550768 c!408964) b!2550763))

(assert (= (and b!2550768 (not c!408964)) b!2550760))

(assert (= (or b!2550763 b!2550760) bm!162310))

(assert (= (or b!2550766 bm!162310) bm!162312))

(assert (= (or b!2550759 b!2550763) bm!162309))

(assert (= (or b!2550759 bm!162312) bm!162311))

(declare-fun m!2894059 () Bool)

(assert (=> d!723293 m!2894059))

(declare-fun m!2894061 () Bool)

(assert (=> d!723293 m!2894061))

(declare-fun m!2894063 () Bool)

(assert (=> bm!162309 m!2894063))

(declare-fun m!2894065 () Bool)

(assert (=> bm!162311 m!2894065))

(declare-fun m!2894067 () Bool)

(assert (=> b!2550768 m!2894067))

(assert (=> bm!162233 d!723293))

(assert (=> b!2550356 d!723269))

(declare-fun d!723295 () Bool)

(assert (=> d!723295 (= (nullable!2516 (reg!7928 r!27340)) (nullableFct!741 (reg!7928 r!27340)))))

(declare-fun bs!469615 () Bool)

(assert (= bs!469615 d!723295))

(declare-fun m!2894069 () Bool)

(assert (=> bs!469615 m!2894069))

(assert (=> b!2550520 d!723295))

(declare-fun b!2550769 () Bool)

(declare-fun e!1611909 () Bool)

(declare-fun e!1611908 () Bool)

(assert (=> b!2550769 (= e!1611909 e!1611908)))

(declare-fun res!1074476 () Bool)

(assert (=> b!2550769 (=> (not res!1074476) (not e!1611908))))

(declare-fun call!162320 () Bool)

(assert (=> b!2550769 (= res!1074476 call!162320)))

(declare-fun b!2550770 () Bool)

(declare-fun e!1611910 () Bool)

(declare-fun e!1611907 () Bool)

(assert (=> b!2550770 (= e!1611910 e!1611907)))

(declare-fun c!408965 () Bool)

(assert (=> b!2550770 (= c!408965 ((_ is Star!7599) lt!903353))))

(declare-fun b!2550771 () Bool)

(declare-fun e!1611904 () Bool)

(declare-fun call!162319 () Bool)

(assert (=> b!2550771 (= e!1611904 call!162319)))

(declare-fun b!2550772 () Bool)

(declare-fun res!1074479 () Bool)

(declare-fun e!1611906 () Bool)

(assert (=> b!2550772 (=> (not res!1074479) (not e!1611906))))

(declare-fun call!162318 () Bool)

(assert (=> b!2550772 (= res!1074479 call!162318)))

(declare-fun e!1611905 () Bool)

(assert (=> b!2550772 (= e!1611905 e!1611906)))

(declare-fun bm!162313 () Bool)

(declare-fun c!408966 () Bool)

(assert (=> bm!162313 (= call!162319 (validRegex!3225 (ite c!408965 (reg!7928 lt!903353) (ite c!408966 (regTwo!15711 lt!903353) (regOne!15710 lt!903353)))))))

(declare-fun bm!162314 () Bool)

(assert (=> bm!162314 (= call!162320 call!162319)))

(declare-fun b!2550773 () Bool)

(assert (=> b!2550773 (= e!1611906 call!162320)))

(declare-fun d!723297 () Bool)

(declare-fun res!1074475 () Bool)

(assert (=> d!723297 (=> res!1074475 e!1611910)))

(assert (=> d!723297 (= res!1074475 ((_ is ElementMatch!7599) lt!903353))))

(assert (=> d!723297 (= (validRegex!3225 lt!903353) e!1611910)))

(declare-fun b!2550774 () Bool)

(assert (=> b!2550774 (= e!1611908 call!162318)))

(declare-fun bm!162315 () Bool)

(assert (=> bm!162315 (= call!162318 (validRegex!3225 (ite c!408966 (regOne!15711 lt!903353) (regTwo!15710 lt!903353))))))

(declare-fun b!2550775 () Bool)

(assert (=> b!2550775 (= e!1611907 e!1611905)))

(assert (=> b!2550775 (= c!408966 ((_ is Union!7599) lt!903353))))

(declare-fun b!2550776 () Bool)

(declare-fun res!1074478 () Bool)

(assert (=> b!2550776 (=> res!1074478 e!1611909)))

(assert (=> b!2550776 (= res!1074478 (not ((_ is Concat!12295) lt!903353)))))

(assert (=> b!2550776 (= e!1611905 e!1611909)))

(declare-fun b!2550777 () Bool)

(assert (=> b!2550777 (= e!1611907 e!1611904)))

(declare-fun res!1074477 () Bool)

(assert (=> b!2550777 (= res!1074477 (not (nullable!2516 (reg!7928 lt!903353))))))

(assert (=> b!2550777 (=> (not res!1074477) (not e!1611904))))

(assert (= (and d!723297 (not res!1074475)) b!2550770))

(assert (= (and b!2550770 c!408965) b!2550777))

(assert (= (and b!2550770 (not c!408965)) b!2550775))

(assert (= (and b!2550777 res!1074477) b!2550771))

(assert (= (and b!2550775 c!408966) b!2550772))

(assert (= (and b!2550775 (not c!408966)) b!2550776))

(assert (= (and b!2550772 res!1074479) b!2550773))

(assert (= (and b!2550776 (not res!1074478)) b!2550769))

(assert (= (and b!2550769 res!1074476) b!2550774))

(assert (= (or b!2550772 b!2550774) bm!162315))

(assert (= (or b!2550773 b!2550769) bm!162314))

(assert (= (or b!2550771 bm!162314) bm!162313))

(declare-fun m!2894071 () Bool)

(assert (=> bm!162313 m!2894071))

(declare-fun m!2894073 () Bool)

(assert (=> bm!162315 m!2894073))

(declare-fun m!2894075 () Bool)

(assert (=> b!2550777 m!2894075))

(assert (=> d!723201 d!723297))

(declare-fun b!2550778 () Bool)

(declare-fun e!1611916 () Bool)

(declare-fun e!1611915 () Bool)

(assert (=> b!2550778 (= e!1611916 e!1611915)))

(declare-fun res!1074481 () Bool)

(assert (=> b!2550778 (=> (not res!1074481) (not e!1611915))))

(declare-fun call!162323 () Bool)

(assert (=> b!2550778 (= res!1074481 call!162323)))

(declare-fun b!2550779 () Bool)

(declare-fun e!1611917 () Bool)

(declare-fun e!1611914 () Bool)

(assert (=> b!2550779 (= e!1611917 e!1611914)))

(declare-fun c!408967 () Bool)

(assert (=> b!2550779 (= c!408967 ((_ is Star!7599) (regOne!15710 r!27340)))))

(declare-fun b!2550780 () Bool)

(declare-fun e!1611911 () Bool)

(declare-fun call!162322 () Bool)

(assert (=> b!2550780 (= e!1611911 call!162322)))

(declare-fun b!2550781 () Bool)

(declare-fun res!1074484 () Bool)

(declare-fun e!1611913 () Bool)

(assert (=> b!2550781 (=> (not res!1074484) (not e!1611913))))

(declare-fun call!162321 () Bool)

(assert (=> b!2550781 (= res!1074484 call!162321)))

(declare-fun e!1611912 () Bool)

(assert (=> b!2550781 (= e!1611912 e!1611913)))

(declare-fun c!408968 () Bool)

(declare-fun bm!162316 () Bool)

(assert (=> bm!162316 (= call!162322 (validRegex!3225 (ite c!408967 (reg!7928 (regOne!15710 r!27340)) (ite c!408968 (regTwo!15711 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340))))))))

(declare-fun bm!162317 () Bool)

(assert (=> bm!162317 (= call!162323 call!162322)))

(declare-fun b!2550782 () Bool)

(assert (=> b!2550782 (= e!1611913 call!162323)))

(declare-fun d!723299 () Bool)

(declare-fun res!1074480 () Bool)

(assert (=> d!723299 (=> res!1074480 e!1611917)))

(assert (=> d!723299 (= res!1074480 ((_ is ElementMatch!7599) (regOne!15710 r!27340)))))

(assert (=> d!723299 (= (validRegex!3225 (regOne!15710 r!27340)) e!1611917)))

(declare-fun b!2550783 () Bool)

(assert (=> b!2550783 (= e!1611915 call!162321)))

(declare-fun bm!162318 () Bool)

(assert (=> bm!162318 (= call!162321 (validRegex!3225 (ite c!408968 (regOne!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))))))

(declare-fun b!2550784 () Bool)

(assert (=> b!2550784 (= e!1611914 e!1611912)))

(assert (=> b!2550784 (= c!408968 ((_ is Union!7599) (regOne!15710 r!27340)))))

(declare-fun b!2550785 () Bool)

(declare-fun res!1074483 () Bool)

(assert (=> b!2550785 (=> res!1074483 e!1611916)))

(assert (=> b!2550785 (= res!1074483 (not ((_ is Concat!12295) (regOne!15710 r!27340))))))

(assert (=> b!2550785 (= e!1611912 e!1611916)))

(declare-fun b!2550786 () Bool)

(assert (=> b!2550786 (= e!1611914 e!1611911)))

(declare-fun res!1074482 () Bool)

(assert (=> b!2550786 (= res!1074482 (not (nullable!2516 (reg!7928 (regOne!15710 r!27340)))))))

(assert (=> b!2550786 (=> (not res!1074482) (not e!1611911))))

(assert (= (and d!723299 (not res!1074480)) b!2550779))

(assert (= (and b!2550779 c!408967) b!2550786))

(assert (= (and b!2550779 (not c!408967)) b!2550784))

(assert (= (and b!2550786 res!1074482) b!2550780))

(assert (= (and b!2550784 c!408968) b!2550781))

(assert (= (and b!2550784 (not c!408968)) b!2550785))

(assert (= (and b!2550781 res!1074484) b!2550782))

(assert (= (and b!2550785 (not res!1074483)) b!2550778))

(assert (= (and b!2550778 res!1074481) b!2550783))

(assert (= (or b!2550781 b!2550783) bm!162318))

(assert (= (or b!2550782 b!2550778) bm!162317))

(assert (= (or b!2550780 bm!162317) bm!162316))

(declare-fun m!2894077 () Bool)

(assert (=> bm!162316 m!2894077))

(declare-fun m!2894079 () Bool)

(assert (=> bm!162318 m!2894079))

(declare-fun m!2894081 () Bool)

(assert (=> b!2550786 m!2894081))

(assert (=> d!723201 d!723299))

(declare-fun b!2550787 () Bool)

(declare-fun e!1611923 () Bool)

(declare-fun e!1611922 () Bool)

(assert (=> b!2550787 (= e!1611923 e!1611922)))

(declare-fun res!1074486 () Bool)

(assert (=> b!2550787 (=> (not res!1074486) (not e!1611922))))

(declare-fun call!162326 () Bool)

(assert (=> b!2550787 (= res!1074486 call!162326)))

(declare-fun b!2550788 () Bool)

(declare-fun e!1611924 () Bool)

(declare-fun e!1611921 () Bool)

(assert (=> b!2550788 (= e!1611924 e!1611921)))

(declare-fun c!408969 () Bool)

(assert (=> b!2550788 (= c!408969 ((_ is Star!7599) (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325))))))

(declare-fun b!2550789 () Bool)

(declare-fun e!1611918 () Bool)

(declare-fun call!162325 () Bool)

(assert (=> b!2550789 (= e!1611918 call!162325)))

(declare-fun b!2550790 () Bool)

(declare-fun res!1074489 () Bool)

(declare-fun e!1611920 () Bool)

(assert (=> b!2550790 (=> (not res!1074489) (not e!1611920))))

(declare-fun call!162324 () Bool)

(assert (=> b!2550790 (= res!1074489 call!162324)))

(declare-fun e!1611919 () Bool)

(assert (=> b!2550790 (= e!1611919 e!1611920)))

(declare-fun bm!162319 () Bool)

(declare-fun c!408970 () Bool)

(assert (=> bm!162319 (= call!162325 (validRegex!3225 (ite c!408969 (reg!7928 (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325))) (ite c!408970 (regTwo!15711 (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325))) (regOne!15710 (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325)))))))))

(declare-fun bm!162320 () Bool)

(assert (=> bm!162320 (= call!162326 call!162325)))

(declare-fun b!2550791 () Bool)

(assert (=> b!2550791 (= e!1611920 call!162326)))

(declare-fun d!723301 () Bool)

(declare-fun res!1074485 () Bool)

(assert (=> d!723301 (=> res!1074485 e!1611924)))

(assert (=> d!723301 (= res!1074485 ((_ is ElementMatch!7599) (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325))))))

(assert (=> d!723301 (= (validRegex!3225 (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325))) e!1611924)))

(declare-fun b!2550792 () Bool)

(assert (=> b!2550792 (= e!1611922 call!162324)))

(declare-fun bm!162321 () Bool)

(assert (=> bm!162321 (= call!162324 (validRegex!3225 (ite c!408970 (regOne!15711 (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325))) (regTwo!15710 (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325))))))))

(declare-fun b!2550793 () Bool)

(assert (=> b!2550793 (= e!1611921 e!1611919)))

(assert (=> b!2550793 (= c!408970 ((_ is Union!7599) (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325))))))

(declare-fun b!2550794 () Bool)

(declare-fun res!1074488 () Bool)

(assert (=> b!2550794 (=> res!1074488 e!1611923)))

(assert (=> b!2550794 (= res!1074488 (not ((_ is Concat!12295) (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325)))))))

(assert (=> b!2550794 (= e!1611919 e!1611923)))

(declare-fun b!2550795 () Bool)

(assert (=> b!2550795 (= e!1611921 e!1611918)))

(declare-fun res!1074487 () Bool)

(assert (=> b!2550795 (= res!1074487 (not (nullable!2516 (reg!7928 (ite c!408819 (regOne!15711 lt!903325) (regTwo!15710 lt!903325))))))))

(assert (=> b!2550795 (=> (not res!1074487) (not e!1611918))))

(assert (= (and d!723301 (not res!1074485)) b!2550788))

(assert (= (and b!2550788 c!408969) b!2550795))

(assert (= (and b!2550788 (not c!408969)) b!2550793))

(assert (= (and b!2550795 res!1074487) b!2550789))

(assert (= (and b!2550793 c!408970) b!2550790))

(assert (= (and b!2550793 (not c!408970)) b!2550794))

(assert (= (and b!2550790 res!1074489) b!2550791))

(assert (= (and b!2550794 (not res!1074488)) b!2550787))

(assert (= (and b!2550787 res!1074486) b!2550792))

(assert (= (or b!2550790 b!2550792) bm!162321))

(assert (= (or b!2550791 b!2550787) bm!162320))

(assert (= (or b!2550789 bm!162320) bm!162319))

(declare-fun m!2894083 () Bool)

(assert (=> bm!162319 m!2894083))

(declare-fun m!2894085 () Bool)

(assert (=> bm!162321 m!2894085))

(declare-fun m!2894087 () Bool)

(assert (=> b!2550795 m!2894087))

(assert (=> bm!162192 d!723301))

(assert (=> b!2550357 d!723229))

(assert (=> b!2550357 d!723231))

(declare-fun b!2550796 () Bool)

(declare-fun e!1611926 () Bool)

(assert (=> b!2550796 (= e!1611926 (not (= (head!5806 (tail!4081 tl!4068)) (c!408807 (derivativeStep!2168 lt!903321 (head!5806 tl!4068))))))))

(declare-fun b!2550797 () Bool)

(declare-fun e!1611927 () Bool)

(assert (=> b!2550797 (= e!1611927 (= (head!5806 (tail!4081 tl!4068)) (c!408807 (derivativeStep!2168 lt!903321 (head!5806 tl!4068)))))))

(declare-fun d!723303 () Bool)

(declare-fun e!1611931 () Bool)

(assert (=> d!723303 e!1611931))

(declare-fun c!408971 () Bool)

(assert (=> d!723303 (= c!408971 ((_ is EmptyExpr!7599) (derivativeStep!2168 lt!903321 (head!5806 tl!4068))))))

(declare-fun lt!903367 () Bool)

(declare-fun e!1611930 () Bool)

(assert (=> d!723303 (= lt!903367 e!1611930)))

(declare-fun c!408972 () Bool)

(assert (=> d!723303 (= c!408972 (isEmpty!17012 (tail!4081 tl!4068)))))

(assert (=> d!723303 (validRegex!3225 (derivativeStep!2168 lt!903321 (head!5806 tl!4068)))))

(assert (=> d!723303 (= (matchR!3544 (derivativeStep!2168 lt!903321 (head!5806 tl!4068)) (tail!4081 tl!4068)) lt!903367)))

(declare-fun b!2550798 () Bool)

(declare-fun res!1074496 () Bool)

(assert (=> b!2550798 (=> (not res!1074496) (not e!1611927))))

(assert (=> b!2550798 (= res!1074496 (isEmpty!17012 (tail!4081 (tail!4081 tl!4068))))))

(declare-fun b!2550799 () Bool)

(declare-fun e!1611929 () Bool)

(assert (=> b!2550799 (= e!1611931 e!1611929)))

(declare-fun c!408973 () Bool)

(assert (=> b!2550799 (= c!408973 ((_ is EmptyLang!7599) (derivativeStep!2168 lt!903321 (head!5806 tl!4068))))))

(declare-fun b!2550800 () Bool)

(declare-fun e!1611928 () Bool)

(assert (=> b!2550800 (= e!1611928 e!1611926)))

(declare-fun res!1074492 () Bool)

(assert (=> b!2550800 (=> res!1074492 e!1611926)))

(declare-fun call!162327 () Bool)

(assert (=> b!2550800 (= res!1074492 call!162327)))

(declare-fun b!2550801 () Bool)

(assert (=> b!2550801 (= e!1611930 (matchR!3544 (derivativeStep!2168 (derivativeStep!2168 lt!903321 (head!5806 tl!4068)) (head!5806 (tail!4081 tl!4068))) (tail!4081 (tail!4081 tl!4068))))))

(declare-fun b!2550802 () Bool)

(assert (=> b!2550802 (= e!1611929 (not lt!903367))))

(declare-fun b!2550803 () Bool)

(declare-fun res!1074494 () Bool)

(assert (=> b!2550803 (=> (not res!1074494) (not e!1611927))))

(assert (=> b!2550803 (= res!1074494 (not call!162327))))

(declare-fun bm!162322 () Bool)

(assert (=> bm!162322 (= call!162327 (isEmpty!17012 (tail!4081 tl!4068)))))

(declare-fun b!2550804 () Bool)

(declare-fun res!1074493 () Bool)

(declare-fun e!1611925 () Bool)

(assert (=> b!2550804 (=> res!1074493 e!1611925)))

(assert (=> b!2550804 (= res!1074493 (not ((_ is ElementMatch!7599) (derivativeStep!2168 lt!903321 (head!5806 tl!4068)))))))

(assert (=> b!2550804 (= e!1611929 e!1611925)))

(declare-fun b!2550805 () Bool)

(assert (=> b!2550805 (= e!1611925 e!1611928)))

(declare-fun res!1074491 () Bool)

(assert (=> b!2550805 (=> (not res!1074491) (not e!1611928))))

(assert (=> b!2550805 (= res!1074491 (not lt!903367))))

(declare-fun b!2550806 () Bool)

(declare-fun res!1074495 () Bool)

(assert (=> b!2550806 (=> res!1074495 e!1611926)))

(assert (=> b!2550806 (= res!1074495 (not (isEmpty!17012 (tail!4081 (tail!4081 tl!4068)))))))

(declare-fun b!2550807 () Bool)

(assert (=> b!2550807 (= e!1611930 (nullable!2516 (derivativeStep!2168 lt!903321 (head!5806 tl!4068))))))

(declare-fun b!2550808 () Bool)

(assert (=> b!2550808 (= e!1611931 (= lt!903367 call!162327))))

(declare-fun b!2550809 () Bool)

(declare-fun res!1074490 () Bool)

(assert (=> b!2550809 (=> res!1074490 e!1611925)))

(assert (=> b!2550809 (= res!1074490 e!1611927)))

(declare-fun res!1074497 () Bool)

(assert (=> b!2550809 (=> (not res!1074497) (not e!1611927))))

(assert (=> b!2550809 (= res!1074497 lt!903367)))

(assert (= (and d!723303 c!408972) b!2550807))

(assert (= (and d!723303 (not c!408972)) b!2550801))

(assert (= (and d!723303 c!408971) b!2550808))

(assert (= (and d!723303 (not c!408971)) b!2550799))

(assert (= (and b!2550799 c!408973) b!2550802))

(assert (= (and b!2550799 (not c!408973)) b!2550804))

(assert (= (and b!2550804 (not res!1074493)) b!2550809))

(assert (= (and b!2550809 res!1074497) b!2550803))

(assert (= (and b!2550803 res!1074494) b!2550798))

(assert (= (and b!2550798 res!1074496) b!2550797))

(assert (= (and b!2550809 (not res!1074490)) b!2550805))

(assert (= (and b!2550805 res!1074491) b!2550800))

(assert (= (and b!2550800 (not res!1074492)) b!2550806))

(assert (= (and b!2550806 (not res!1074495)) b!2550796))

(assert (= (or b!2550808 b!2550800 b!2550803) bm!162322))

(assert (=> b!2550798 m!2893803))

(declare-fun m!2894089 () Bool)

(assert (=> b!2550798 m!2894089))

(assert (=> b!2550798 m!2894089))

(declare-fun m!2894091 () Bool)

(assert (=> b!2550798 m!2894091))

(assert (=> b!2550797 m!2893803))

(declare-fun m!2894093 () Bool)

(assert (=> b!2550797 m!2894093))

(assert (=> b!2550806 m!2893803))

(assert (=> b!2550806 m!2894089))

(assert (=> b!2550806 m!2894089))

(assert (=> b!2550806 m!2894091))

(assert (=> d!723303 m!2893803))

(assert (=> d!723303 m!2893805))

(assert (=> d!723303 m!2893813))

(declare-fun m!2894095 () Bool)

(assert (=> d!723303 m!2894095))

(assert (=> b!2550796 m!2893803))

(assert (=> b!2550796 m!2894093))

(assert (=> bm!162322 m!2893803))

(assert (=> bm!162322 m!2893805))

(assert (=> b!2550807 m!2893813))

(declare-fun m!2894097 () Bool)

(assert (=> b!2550807 m!2894097))

(assert (=> b!2550801 m!2893803))

(assert (=> b!2550801 m!2894093))

(assert (=> b!2550801 m!2893813))

(assert (=> b!2550801 m!2894093))

(declare-fun m!2894099 () Bool)

(assert (=> b!2550801 m!2894099))

(assert (=> b!2550801 m!2893803))

(assert (=> b!2550801 m!2894089))

(assert (=> b!2550801 m!2894099))

(assert (=> b!2550801 m!2894089))

(declare-fun m!2894101 () Bool)

(assert (=> b!2550801 m!2894101))

(assert (=> b!2550374 d!723303))

(declare-fun b!2550810 () Bool)

(declare-fun e!1611933 () Regex!7599)

(declare-fun call!162330 () Regex!7599)

(declare-fun call!162328 () Regex!7599)

(assert (=> b!2550810 (= e!1611933 (Union!7599 call!162330 call!162328))))

(declare-fun d!723305 () Bool)

(declare-fun lt!903368 () Regex!7599)

(assert (=> d!723305 (validRegex!3225 lt!903368)))

(declare-fun e!1611935 () Regex!7599)

(assert (=> d!723305 (= lt!903368 e!1611935)))

(declare-fun c!408974 () Bool)

(assert (=> d!723305 (= c!408974 (or ((_ is EmptyExpr!7599) lt!903321) ((_ is EmptyLang!7599) lt!903321)))))

(assert (=> d!723305 (validRegex!3225 lt!903321)))

(assert (=> d!723305 (= (derivativeStep!2168 lt!903321 (head!5806 tl!4068)) lt!903368)))

(declare-fun b!2550811 () Bool)

(declare-fun e!1611934 () Regex!7599)

(declare-fun call!162331 () Regex!7599)

(assert (=> b!2550811 (= e!1611934 (Union!7599 (Concat!12295 call!162331 (regTwo!15710 lt!903321)) EmptyLang!7599))))

(declare-fun c!408977 () Bool)

(declare-fun bm!162323 () Bool)

(assert (=> bm!162323 (= call!162328 (derivativeStep!2168 (ite c!408977 (regTwo!15711 lt!903321) (regTwo!15710 lt!903321)) (head!5806 tl!4068)))))

(declare-fun bm!162324 () Bool)

(declare-fun call!162329 () Regex!7599)

(assert (=> bm!162324 (= call!162331 call!162329)))

(declare-fun b!2550812 () Bool)

(declare-fun e!1611936 () Regex!7599)

(assert (=> b!2550812 (= e!1611933 e!1611936)))

(declare-fun c!408975 () Bool)

(assert (=> b!2550812 (= c!408975 ((_ is Star!7599) lt!903321))))

(declare-fun b!2550813 () Bool)

(declare-fun e!1611932 () Regex!7599)

(assert (=> b!2550813 (= e!1611935 e!1611932)))

(declare-fun c!408976 () Bool)

(assert (=> b!2550813 (= c!408976 ((_ is ElementMatch!7599) lt!903321))))

(declare-fun b!2550814 () Bool)

(assert (=> b!2550814 (= e!1611934 (Union!7599 (Concat!12295 call!162331 (regTwo!15710 lt!903321)) call!162328))))

(declare-fun b!2550815 () Bool)

(assert (=> b!2550815 (= e!1611935 EmptyLang!7599)))

(declare-fun b!2550816 () Bool)

(assert (=> b!2550816 (= c!408977 ((_ is Union!7599) lt!903321))))

(assert (=> b!2550816 (= e!1611932 e!1611933)))

(declare-fun b!2550817 () Bool)

(assert (=> b!2550817 (= e!1611936 (Concat!12295 call!162329 lt!903321))))

(declare-fun bm!162325 () Bool)

(assert (=> bm!162325 (= call!162330 (derivativeStep!2168 (ite c!408977 (regOne!15711 lt!903321) (ite c!408975 (reg!7928 lt!903321) (regOne!15710 lt!903321))) (head!5806 tl!4068)))))

(declare-fun bm!162326 () Bool)

(assert (=> bm!162326 (= call!162329 call!162330)))

(declare-fun b!2550818 () Bool)

(assert (=> b!2550818 (= e!1611932 (ite (= (head!5806 tl!4068) (c!408807 lt!903321)) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun b!2550819 () Bool)

(declare-fun c!408978 () Bool)

(assert (=> b!2550819 (= c!408978 (nullable!2516 (regOne!15710 lt!903321)))))

(assert (=> b!2550819 (= e!1611936 e!1611934)))

(assert (= (and d!723305 c!408974) b!2550815))

(assert (= (and d!723305 (not c!408974)) b!2550813))

(assert (= (and b!2550813 c!408976) b!2550818))

(assert (= (and b!2550813 (not c!408976)) b!2550816))

(assert (= (and b!2550816 c!408977) b!2550810))

(assert (= (and b!2550816 (not c!408977)) b!2550812))

(assert (= (and b!2550812 c!408975) b!2550817))

(assert (= (and b!2550812 (not c!408975)) b!2550819))

(assert (= (and b!2550819 c!408978) b!2550814))

(assert (= (and b!2550819 (not c!408978)) b!2550811))

(assert (= (or b!2550814 b!2550811) bm!162324))

(assert (= (or b!2550817 bm!162324) bm!162326))

(assert (= (or b!2550810 b!2550814) bm!162323))

(assert (= (or b!2550810 bm!162326) bm!162325))

(declare-fun m!2894103 () Bool)

(assert (=> d!723305 m!2894103))

(assert (=> d!723305 m!2893743))

(assert (=> bm!162323 m!2893807))

(declare-fun m!2894105 () Bool)

(assert (=> bm!162323 m!2894105))

(assert (=> bm!162325 m!2893807))

(declare-fun m!2894107 () Bool)

(assert (=> bm!162325 m!2894107))

(assert (=> b!2550819 m!2894023))

(assert (=> b!2550374 d!723305))

(assert (=> b!2550374 d!723285))

(assert (=> b!2550374 d!723281))

(declare-fun b!2550820 () Bool)

(declare-fun e!1611938 () Regex!7599)

(declare-fun call!162334 () Regex!7599)

(declare-fun call!162332 () Regex!7599)

(assert (=> b!2550820 (= e!1611938 (Union!7599 call!162334 call!162332))))

(declare-fun d!723307 () Bool)

(declare-fun lt!903369 () Regex!7599)

(assert (=> d!723307 (validRegex!3225 lt!903369)))

(declare-fun e!1611940 () Regex!7599)

(assert (=> d!723307 (= lt!903369 e!1611940)))

(declare-fun c!408979 () Bool)

(assert (=> d!723307 (= c!408979 (or ((_ is EmptyExpr!7599) (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340)))) ((_ is EmptyLang!7599) (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340))))))))

(assert (=> d!723307 (validRegex!3225 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340))))))

(assert (=> d!723307 (= (derivativeStep!2168 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340))) c!14016) lt!903369)))

(declare-fun e!1611939 () Regex!7599)

(declare-fun call!162335 () Regex!7599)

(declare-fun b!2550821 () Bool)

(assert (=> b!2550821 (= e!1611939 (Union!7599 (Concat!12295 call!162335 (regTwo!15710 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340))))) EmptyLang!7599))))

(declare-fun c!408982 () Bool)

(declare-fun bm!162327 () Bool)

(assert (=> bm!162327 (= call!162332 (derivativeStep!2168 (ite c!408982 (regTwo!15711 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340)))) (regTwo!15710 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340))))) c!14016))))

(declare-fun bm!162328 () Bool)

(declare-fun call!162333 () Regex!7599)

(assert (=> bm!162328 (= call!162335 call!162333)))

(declare-fun b!2550822 () Bool)

(declare-fun e!1611941 () Regex!7599)

(assert (=> b!2550822 (= e!1611938 e!1611941)))

(declare-fun c!408980 () Bool)

(assert (=> b!2550822 (= c!408980 ((_ is Star!7599) (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340)))))))

(declare-fun b!2550823 () Bool)

(declare-fun e!1611937 () Regex!7599)

(assert (=> b!2550823 (= e!1611940 e!1611937)))

(declare-fun c!408981 () Bool)

(assert (=> b!2550823 (= c!408981 ((_ is ElementMatch!7599) (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340)))))))

(declare-fun b!2550824 () Bool)

(assert (=> b!2550824 (= e!1611939 (Union!7599 (Concat!12295 call!162335 (regTwo!15710 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340))))) call!162332))))

(declare-fun b!2550825 () Bool)

(assert (=> b!2550825 (= e!1611940 EmptyLang!7599)))

(declare-fun b!2550826 () Bool)

(assert (=> b!2550826 (= c!408982 ((_ is Union!7599) (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340)))))))

(assert (=> b!2550826 (= e!1611937 e!1611938)))

(declare-fun b!2550827 () Bool)

(assert (=> b!2550827 (= e!1611941 (Concat!12295 call!162333 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340)))))))

(declare-fun bm!162329 () Bool)

(assert (=> bm!162329 (= call!162334 (derivativeStep!2168 (ite c!408982 (regOne!15711 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340)))) (ite c!408980 (reg!7928 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340)))) (regOne!15710 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340)))))) c!14016))))

(declare-fun bm!162330 () Bool)

(assert (=> bm!162330 (= call!162333 call!162334)))

(declare-fun b!2550828 () Bool)

(assert (=> b!2550828 (= e!1611937 (ite (= c!14016 (c!408807 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340))))) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun b!2550829 () Bool)

(declare-fun c!408983 () Bool)

(assert (=> b!2550829 (= c!408983 (nullable!2516 (regOne!15710 (ite c!408887 (regTwo!15711 (regTwo!15710 r!27340)) (regTwo!15710 (regTwo!15710 r!27340))))))))

(assert (=> b!2550829 (= e!1611941 e!1611939)))

(assert (= (and d!723307 c!408979) b!2550825))

(assert (= (and d!723307 (not c!408979)) b!2550823))

(assert (= (and b!2550823 c!408981) b!2550828))

(assert (= (and b!2550823 (not c!408981)) b!2550826))

(assert (= (and b!2550826 c!408982) b!2550820))

(assert (= (and b!2550826 (not c!408982)) b!2550822))

(assert (= (and b!2550822 c!408980) b!2550827))

(assert (= (and b!2550822 (not c!408980)) b!2550829))

(assert (= (and b!2550829 c!408983) b!2550824))

(assert (= (and b!2550829 (not c!408983)) b!2550821))

(assert (= (or b!2550824 b!2550821) bm!162328))

(assert (= (or b!2550827 bm!162328) bm!162330))

(assert (= (or b!2550820 b!2550824) bm!162327))

(assert (= (or b!2550820 bm!162330) bm!162329))

(declare-fun m!2894109 () Bool)

(assert (=> d!723307 m!2894109))

(declare-fun m!2894111 () Bool)

(assert (=> d!723307 m!2894111))

(declare-fun m!2894113 () Bool)

(assert (=> bm!162327 m!2894113))

(declare-fun m!2894115 () Bool)

(assert (=> bm!162329 m!2894115))

(declare-fun m!2894117 () Bool)

(assert (=> b!2550829 m!2894117))

(assert (=> bm!162231 d!723307))

(declare-fun b!2550830 () Bool)

(declare-fun e!1611943 () Regex!7599)

(declare-fun call!162338 () Regex!7599)

(declare-fun call!162336 () Regex!7599)

(assert (=> b!2550830 (= e!1611943 (Union!7599 call!162338 call!162336))))

(declare-fun d!723309 () Bool)

(declare-fun lt!903370 () Regex!7599)

(assert (=> d!723309 (validRegex!3225 lt!903370)))

(declare-fun e!1611945 () Regex!7599)

(assert (=> d!723309 (= lt!903370 e!1611945)))

(declare-fun c!408984 () Bool)

(assert (=> d!723309 (= c!408984 (or ((_ is EmptyExpr!7599) (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340)))) ((_ is EmptyLang!7599) (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340))))))))

(assert (=> d!723309 (validRegex!3225 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340))))))

(assert (=> d!723309 (= (derivativeStep!2168 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340))) c!14016) lt!903370)))

(declare-fun e!1611944 () Regex!7599)

(declare-fun b!2550831 () Bool)

(declare-fun call!162339 () Regex!7599)

(assert (=> b!2550831 (= e!1611944 (Union!7599 (Concat!12295 call!162339 (regTwo!15710 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340))))) EmptyLang!7599))))

(declare-fun bm!162331 () Bool)

(declare-fun c!408987 () Bool)

(assert (=> bm!162331 (= call!162336 (derivativeStep!2168 (ite c!408987 (regTwo!15711 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340)))) (regTwo!15710 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340))))) c!14016))))

(declare-fun bm!162332 () Bool)

(declare-fun call!162337 () Regex!7599)

(assert (=> bm!162332 (= call!162339 call!162337)))

(declare-fun b!2550832 () Bool)

(declare-fun e!1611946 () Regex!7599)

(assert (=> b!2550832 (= e!1611943 e!1611946)))

(declare-fun c!408985 () Bool)

(assert (=> b!2550832 (= c!408985 ((_ is Star!7599) (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340)))))))

(declare-fun b!2550833 () Bool)

(declare-fun e!1611942 () Regex!7599)

(assert (=> b!2550833 (= e!1611945 e!1611942)))

(declare-fun c!408986 () Bool)

(assert (=> b!2550833 (= c!408986 ((_ is ElementMatch!7599) (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340)))))))

(declare-fun b!2550834 () Bool)

(assert (=> b!2550834 (= e!1611944 (Union!7599 (Concat!12295 call!162339 (regTwo!15710 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340))))) call!162336))))

(declare-fun b!2550835 () Bool)

(assert (=> b!2550835 (= e!1611945 EmptyLang!7599)))

(declare-fun b!2550836 () Bool)

(assert (=> b!2550836 (= c!408987 ((_ is Union!7599) (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340)))))))

(assert (=> b!2550836 (= e!1611942 e!1611943)))

(declare-fun b!2550837 () Bool)

(assert (=> b!2550837 (= e!1611946 (Concat!12295 call!162337 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340)))))))

(declare-fun bm!162333 () Bool)

(assert (=> bm!162333 (= call!162338 (derivativeStep!2168 (ite c!408987 (regOne!15711 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340)))) (ite c!408985 (reg!7928 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340)))) (regOne!15710 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340)))))) c!14016))))

(declare-fun bm!162334 () Bool)

(assert (=> bm!162334 (= call!162337 call!162338)))

(declare-fun b!2550838 () Bool)

(assert (=> b!2550838 (= e!1611942 (ite (= c!14016 (c!408807 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340))))) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun b!2550839 () Bool)

(declare-fun c!408988 () Bool)

(assert (=> b!2550839 (= c!408988 (nullable!2516 (regOne!15710 (ite c!408906 (regOne!15711 r!27340) (ite c!408904 (reg!7928 r!27340) (regOne!15710 r!27340))))))))

(assert (=> b!2550839 (= e!1611946 e!1611944)))

(assert (= (and d!723309 c!408984) b!2550835))

(assert (= (and d!723309 (not c!408984)) b!2550833))

(assert (= (and b!2550833 c!408986) b!2550838))

(assert (= (and b!2550833 (not c!408986)) b!2550836))

(assert (= (and b!2550836 c!408987) b!2550830))

(assert (= (and b!2550836 (not c!408987)) b!2550832))

(assert (= (and b!2550832 c!408985) b!2550837))

(assert (= (and b!2550832 (not c!408985)) b!2550839))

(assert (= (and b!2550839 c!408988) b!2550834))

(assert (= (and b!2550839 (not c!408988)) b!2550831))

(assert (= (or b!2550834 b!2550831) bm!162332))

(assert (= (or b!2550837 bm!162332) bm!162334))

(assert (= (or b!2550830 b!2550834) bm!162331))

(assert (= (or b!2550830 bm!162334) bm!162333))

(declare-fun m!2894119 () Bool)

(assert (=> d!723309 m!2894119))

(declare-fun m!2894121 () Bool)

(assert (=> d!723309 m!2894121))

(declare-fun m!2894123 () Bool)

(assert (=> bm!162331 m!2894123))

(declare-fun m!2894125 () Bool)

(assert (=> bm!162333 m!2894125))

(declare-fun m!2894127 () Bool)

(assert (=> b!2550839 m!2894127))

(assert (=> bm!162248 d!723309))

(assert (=> d!723181 d!723277))

(declare-fun b!2550840 () Bool)

(declare-fun e!1611952 () Bool)

(declare-fun e!1611951 () Bool)

(assert (=> b!2550840 (= e!1611952 e!1611951)))

(declare-fun res!1074499 () Bool)

(assert (=> b!2550840 (=> (not res!1074499) (not e!1611951))))

(declare-fun call!162342 () Bool)

(assert (=> b!2550840 (= res!1074499 call!162342)))

(declare-fun b!2550841 () Bool)

(declare-fun e!1611953 () Bool)

(declare-fun e!1611950 () Bool)

(assert (=> b!2550841 (= e!1611953 e!1611950)))

(declare-fun c!408989 () Bool)

(assert (=> b!2550841 (= c!408989 ((_ is Star!7599) lt!903322))))

(declare-fun b!2550842 () Bool)

(declare-fun e!1611947 () Bool)

(declare-fun call!162341 () Bool)

(assert (=> b!2550842 (= e!1611947 call!162341)))

(declare-fun b!2550843 () Bool)

(declare-fun res!1074502 () Bool)

(declare-fun e!1611949 () Bool)

(assert (=> b!2550843 (=> (not res!1074502) (not e!1611949))))

(declare-fun call!162340 () Bool)

(assert (=> b!2550843 (= res!1074502 call!162340)))

(declare-fun e!1611948 () Bool)

(assert (=> b!2550843 (= e!1611948 e!1611949)))

(declare-fun c!408990 () Bool)

(declare-fun bm!162335 () Bool)

(assert (=> bm!162335 (= call!162341 (validRegex!3225 (ite c!408989 (reg!7928 lt!903322) (ite c!408990 (regTwo!15711 lt!903322) (regOne!15710 lt!903322)))))))

(declare-fun bm!162336 () Bool)

(assert (=> bm!162336 (= call!162342 call!162341)))

(declare-fun b!2550844 () Bool)

(assert (=> b!2550844 (= e!1611949 call!162342)))

(declare-fun d!723311 () Bool)

(declare-fun res!1074498 () Bool)

(assert (=> d!723311 (=> res!1074498 e!1611953)))

(assert (=> d!723311 (= res!1074498 ((_ is ElementMatch!7599) lt!903322))))

(assert (=> d!723311 (= (validRegex!3225 lt!903322) e!1611953)))

(declare-fun b!2550845 () Bool)

(assert (=> b!2550845 (= e!1611951 call!162340)))

(declare-fun bm!162337 () Bool)

(assert (=> bm!162337 (= call!162340 (validRegex!3225 (ite c!408990 (regOne!15711 lt!903322) (regTwo!15710 lt!903322))))))

(declare-fun b!2550846 () Bool)

(assert (=> b!2550846 (= e!1611950 e!1611948)))

(assert (=> b!2550846 (= c!408990 ((_ is Union!7599) lt!903322))))

(declare-fun b!2550847 () Bool)

(declare-fun res!1074501 () Bool)

(assert (=> b!2550847 (=> res!1074501 e!1611952)))

(assert (=> b!2550847 (= res!1074501 (not ((_ is Concat!12295) lt!903322)))))

(assert (=> b!2550847 (= e!1611948 e!1611952)))

(declare-fun b!2550848 () Bool)

(assert (=> b!2550848 (= e!1611950 e!1611947)))

(declare-fun res!1074500 () Bool)

(assert (=> b!2550848 (= res!1074500 (not (nullable!2516 (reg!7928 lt!903322))))))

(assert (=> b!2550848 (=> (not res!1074500) (not e!1611947))))

(assert (= (and d!723311 (not res!1074498)) b!2550841))

(assert (= (and b!2550841 c!408989) b!2550848))

(assert (= (and b!2550841 (not c!408989)) b!2550846))

(assert (= (and b!2550848 res!1074500) b!2550842))

(assert (= (and b!2550846 c!408990) b!2550843))

(assert (= (and b!2550846 (not c!408990)) b!2550847))

(assert (= (and b!2550843 res!1074502) b!2550844))

(assert (= (and b!2550847 (not res!1074501)) b!2550840))

(assert (= (and b!2550840 res!1074499) b!2550845))

(assert (= (or b!2550843 b!2550845) bm!162337))

(assert (= (or b!2550844 b!2550840) bm!162336))

(assert (= (or b!2550842 bm!162336) bm!162335))

(declare-fun m!2894129 () Bool)

(assert (=> bm!162335 m!2894129))

(declare-fun m!2894131 () Bool)

(assert (=> bm!162337 m!2894131))

(declare-fun m!2894133 () Bool)

(assert (=> b!2550848 m!2894133))

(assert (=> d!723181 d!723311))

(declare-fun b!2550849 () Bool)

(declare-fun e!1611959 () Bool)

(declare-fun e!1611958 () Bool)

(assert (=> b!2550849 (= e!1611959 e!1611958)))

(declare-fun res!1074504 () Bool)

(assert (=> b!2550849 (=> (not res!1074504) (not e!1611958))))

(declare-fun call!162345 () Bool)

(assert (=> b!2550849 (= res!1074504 call!162345)))

(declare-fun b!2550850 () Bool)

(declare-fun e!1611960 () Bool)

(declare-fun e!1611957 () Bool)

(assert (=> b!2550850 (= e!1611960 e!1611957)))

(declare-fun c!408991 () Bool)

(assert (=> b!2550850 (= c!408991 ((_ is Star!7599) (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340)))))))

(declare-fun b!2550851 () Bool)

(declare-fun e!1611954 () Bool)

(declare-fun call!162344 () Bool)

(assert (=> b!2550851 (= e!1611954 call!162344)))

(declare-fun b!2550852 () Bool)

(declare-fun res!1074507 () Bool)

(declare-fun e!1611956 () Bool)

(assert (=> b!2550852 (=> (not res!1074507) (not e!1611956))))

(declare-fun call!162343 () Bool)

(assert (=> b!2550852 (= res!1074507 call!162343)))

(declare-fun e!1611955 () Bool)

(assert (=> b!2550852 (= e!1611955 e!1611956)))

(declare-fun c!408992 () Bool)

(declare-fun bm!162338 () Bool)

(assert (=> bm!162338 (= call!162344 (validRegex!3225 (ite c!408991 (reg!7928 (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340)))) (ite c!408992 (regTwo!15711 (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340)))) (regOne!15710 (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340))))))))))

(declare-fun bm!162339 () Bool)

(assert (=> bm!162339 (= call!162345 call!162344)))

(declare-fun b!2550853 () Bool)

(assert (=> b!2550853 (= e!1611956 call!162345)))

(declare-fun d!723313 () Bool)

(declare-fun res!1074503 () Bool)

(assert (=> d!723313 (=> res!1074503 e!1611960)))

(assert (=> d!723313 (= res!1074503 ((_ is ElementMatch!7599) (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340)))))))

(assert (=> d!723313 (= (validRegex!3225 (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340)))) e!1611960)))

(declare-fun b!2550854 () Bool)

(assert (=> b!2550854 (= e!1611958 call!162343)))

(declare-fun bm!162340 () Bool)

(assert (=> bm!162340 (= call!162343 (validRegex!3225 (ite c!408992 (regOne!15711 (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340)))) (regTwo!15710 (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340)))))))))

(declare-fun b!2550855 () Bool)

(assert (=> b!2550855 (= e!1611957 e!1611955)))

(assert (=> b!2550855 (= c!408992 ((_ is Union!7599) (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340)))))))

(declare-fun b!2550856 () Bool)

(declare-fun res!1074506 () Bool)

(assert (=> b!2550856 (=> res!1074506 e!1611959)))

(assert (=> b!2550856 (= res!1074506 (not ((_ is Concat!12295) (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340))))))))

(assert (=> b!2550856 (= e!1611955 e!1611959)))

(declare-fun b!2550857 () Bool)

(assert (=> b!2550857 (= e!1611957 e!1611954)))

(declare-fun res!1074505 () Bool)

(assert (=> b!2550857 (= res!1074505 (not (nullable!2516 (reg!7928 (ite c!408908 (reg!7928 r!27340) (ite c!408909 (regTwo!15711 r!27340) (regOne!15710 r!27340)))))))))

(assert (=> b!2550857 (=> (not res!1074505) (not e!1611954))))

(assert (= (and d!723313 (not res!1074503)) b!2550850))

(assert (= (and b!2550850 c!408991) b!2550857))

(assert (= (and b!2550850 (not c!408991)) b!2550855))

(assert (= (and b!2550857 res!1074505) b!2550851))

(assert (= (and b!2550855 c!408992) b!2550852))

(assert (= (and b!2550855 (not c!408992)) b!2550856))

(assert (= (and b!2550852 res!1074507) b!2550853))

(assert (= (and b!2550856 (not res!1074506)) b!2550849))

(assert (= (and b!2550849 res!1074504) b!2550854))

(assert (= (or b!2550852 b!2550854) bm!162340))

(assert (= (or b!2550853 b!2550849) bm!162339))

(assert (= (or b!2550851 bm!162339) bm!162338))

(declare-fun m!2894135 () Bool)

(assert (=> bm!162338 m!2894135))

(declare-fun m!2894137 () Bool)

(assert (=> bm!162340 m!2894137))

(declare-fun m!2894139 () Bool)

(assert (=> b!2550857 m!2894139))

(assert (=> bm!162250 d!723313))

(assert (=> b!2550501 d!723219))

(declare-fun b!2550858 () Bool)

(declare-fun e!1611966 () Bool)

(declare-fun e!1611961 () Bool)

(assert (=> b!2550858 (= e!1611966 e!1611961)))

(declare-fun res!1074509 () Bool)

(declare-fun call!162346 () Bool)

(assert (=> b!2550858 (= res!1074509 call!162346)))

(assert (=> b!2550858 (=> (not res!1074509) (not e!1611961))))

(declare-fun b!2550859 () Bool)

(declare-fun e!1611964 () Bool)

(assert (=> b!2550859 (= e!1611964 call!162346)))

(declare-fun bm!162341 () Bool)

(declare-fun call!162347 () Bool)

(declare-fun c!408993 () Bool)

(assert (=> bm!162341 (= call!162347 (nullable!2516 (ite c!408993 (regOne!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))))))

(declare-fun d!723315 () Bool)

(declare-fun res!1074512 () Bool)

(declare-fun e!1611962 () Bool)

(assert (=> d!723315 (=> res!1074512 e!1611962)))

(assert (=> d!723315 (= res!1074512 ((_ is EmptyExpr!7599) (regOne!15710 r!27340)))))

(assert (=> d!723315 (= (nullableFct!741 (regOne!15710 r!27340)) e!1611962)))

(declare-fun bm!162342 () Bool)

(assert (=> bm!162342 (= call!162346 (nullable!2516 (ite c!408993 (regTwo!15711 (regOne!15710 r!27340)) (regOne!15710 (regOne!15710 r!27340)))))))

(declare-fun b!2550860 () Bool)

(assert (=> b!2550860 (= e!1611961 call!162347)))

(declare-fun b!2550861 () Bool)

(declare-fun e!1611963 () Bool)

(declare-fun e!1611965 () Bool)

(assert (=> b!2550861 (= e!1611963 e!1611965)))

(declare-fun res!1074510 () Bool)

(assert (=> b!2550861 (=> res!1074510 e!1611965)))

(assert (=> b!2550861 (= res!1074510 ((_ is Star!7599) (regOne!15710 r!27340)))))

(declare-fun b!2550862 () Bool)

(assert (=> b!2550862 (= e!1611962 e!1611963)))

(declare-fun res!1074511 () Bool)

(assert (=> b!2550862 (=> (not res!1074511) (not e!1611963))))

(assert (=> b!2550862 (= res!1074511 (and (not ((_ is EmptyLang!7599) (regOne!15710 r!27340))) (not ((_ is ElementMatch!7599) (regOne!15710 r!27340)))))))

(declare-fun b!2550863 () Bool)

(assert (=> b!2550863 (= e!1611966 e!1611964)))

(declare-fun res!1074508 () Bool)

(assert (=> b!2550863 (= res!1074508 call!162347)))

(assert (=> b!2550863 (=> res!1074508 e!1611964)))

(declare-fun b!2550864 () Bool)

(assert (=> b!2550864 (= e!1611965 e!1611966)))

(assert (=> b!2550864 (= c!408993 ((_ is Union!7599) (regOne!15710 r!27340)))))

(assert (= (and d!723315 (not res!1074512)) b!2550862))

(assert (= (and b!2550862 res!1074511) b!2550861))

(assert (= (and b!2550861 (not res!1074510)) b!2550864))

(assert (= (and b!2550864 c!408993) b!2550863))

(assert (= (and b!2550864 (not c!408993)) b!2550858))

(assert (= (and b!2550863 (not res!1074508)) b!2550859))

(assert (= (and b!2550858 res!1074509) b!2550860))

(assert (= (or b!2550859 b!2550858) bm!162342))

(assert (= (or b!2550863 b!2550860) bm!162341))

(declare-fun m!2894141 () Bool)

(assert (=> bm!162341 m!2894141))

(declare-fun m!2894143 () Bool)

(assert (=> bm!162342 m!2894143))

(assert (=> d!723219 d!723315))

(assert (=> d!723189 d!723271))

(assert (=> d!723189 d!723247))

(declare-fun b!2550865 () Bool)

(declare-fun e!1611968 () Regex!7599)

(declare-fun call!162350 () Regex!7599)

(declare-fun call!162348 () Regex!7599)

(assert (=> b!2550865 (= e!1611968 (Union!7599 call!162350 call!162348))))

(declare-fun d!723317 () Bool)

(declare-fun lt!903371 () Regex!7599)

(assert (=> d!723317 (validRegex!3225 lt!903371)))

(declare-fun e!1611970 () Regex!7599)

(assert (=> d!723317 (= lt!903371 e!1611970)))

(declare-fun c!408994 () Bool)

(assert (=> d!723317 (= c!408994 (or ((_ is EmptyExpr!7599) (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))) ((_ is EmptyLang!7599) (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340))))))))

(assert (=> d!723317 (validRegex!3225 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340))))))

(assert (=> d!723317 (= (derivativeStep!2168 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340))) c!14016) lt!903371)))

(declare-fun call!162351 () Regex!7599)

(declare-fun b!2550866 () Bool)

(declare-fun e!1611969 () Regex!7599)

(assert (=> b!2550866 (= e!1611969 (Union!7599 (Concat!12295 call!162351 (regTwo!15710 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340))))) EmptyLang!7599))))

(declare-fun c!408997 () Bool)

(declare-fun bm!162343 () Bool)

(assert (=> bm!162343 (= call!162348 (derivativeStep!2168 (ite c!408997 (regTwo!15711 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))) (regTwo!15710 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340))))) c!14016))))

(declare-fun bm!162344 () Bool)

(declare-fun call!162349 () Regex!7599)

(assert (=> bm!162344 (= call!162351 call!162349)))

(declare-fun b!2550867 () Bool)

(declare-fun e!1611971 () Regex!7599)

(assert (=> b!2550867 (= e!1611968 e!1611971)))

(declare-fun c!408995 () Bool)

(assert (=> b!2550867 (= c!408995 ((_ is Star!7599) (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))))))

(declare-fun b!2550868 () Bool)

(declare-fun e!1611967 () Regex!7599)

(assert (=> b!2550868 (= e!1611970 e!1611967)))

(declare-fun c!408996 () Bool)

(assert (=> b!2550868 (= c!408996 ((_ is ElementMatch!7599) (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))))))

(declare-fun b!2550869 () Bool)

(assert (=> b!2550869 (= e!1611969 (Union!7599 (Concat!12295 call!162351 (regTwo!15710 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340))))) call!162348))))

(declare-fun b!2550870 () Bool)

(assert (=> b!2550870 (= e!1611970 EmptyLang!7599)))

(declare-fun b!2550871 () Bool)

(assert (=> b!2550871 (= c!408997 ((_ is Union!7599) (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))))))

(assert (=> b!2550871 (= e!1611967 e!1611968)))

(declare-fun b!2550872 () Bool)

(assert (=> b!2550872 (= e!1611971 (Concat!12295 call!162349 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))))))

(declare-fun bm!162345 () Bool)

(assert (=> bm!162345 (= call!162350 (derivativeStep!2168 (ite c!408997 (regOne!15711 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))) (ite c!408995 (reg!7928 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))) (regOne!15710 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340)))))) c!14016))))

(declare-fun bm!162346 () Bool)

(assert (=> bm!162346 (= call!162349 call!162350)))

(declare-fun b!2550873 () Bool)

(assert (=> b!2550873 (= e!1611967 (ite (= c!14016 (c!408807 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340))))) EmptyExpr!7599 EmptyLang!7599))))

(declare-fun b!2550874 () Bool)

(declare-fun c!408998 () Bool)

(assert (=> b!2550874 (= c!408998 (nullable!2516 (regOne!15710 (ite c!408892 (regTwo!15711 (regOne!15710 r!27340)) (regTwo!15710 (regOne!15710 r!27340))))))))

(assert (=> b!2550874 (= e!1611971 e!1611969)))

(assert (= (and d!723317 c!408994) b!2550870))

(assert (= (and d!723317 (not c!408994)) b!2550868))

(assert (= (and b!2550868 c!408996) b!2550873))

(assert (= (and b!2550868 (not c!408996)) b!2550871))

(assert (= (and b!2550871 c!408997) b!2550865))

(assert (= (and b!2550871 (not c!408997)) b!2550867))

(assert (= (and b!2550867 c!408995) b!2550872))

(assert (= (and b!2550867 (not c!408995)) b!2550874))

(assert (= (and b!2550874 c!408998) b!2550869))

(assert (= (and b!2550874 (not c!408998)) b!2550866))

(assert (= (or b!2550869 b!2550866) bm!162344))

(assert (= (or b!2550872 bm!162344) bm!162346))

(assert (= (or b!2550865 b!2550869) bm!162343))

(assert (= (or b!2550865 bm!162346) bm!162345))

(declare-fun m!2894145 () Bool)

(assert (=> d!723317 m!2894145))

(declare-fun m!2894147 () Bool)

(assert (=> d!723317 m!2894147))

(declare-fun m!2894149 () Bool)

(assert (=> bm!162343 m!2894149))

(declare-fun m!2894151 () Bool)

(assert (=> bm!162345 m!2894151))

(declare-fun m!2894153 () Bool)

(assert (=> b!2550874 m!2894153))

(assert (=> bm!162235 d!723317))

(assert (=> b!2550369 d!723285))

(declare-fun b!2550877 () Bool)

(declare-fun e!1611972 () Bool)

(declare-fun tp!813706 () Bool)

(assert (=> b!2550877 (= e!1611972 tp!813706)))

(declare-fun b!2550876 () Bool)

(declare-fun tp!813704 () Bool)

(declare-fun tp!813703 () Bool)

(assert (=> b!2550876 (= e!1611972 (and tp!813704 tp!813703))))

(assert (=> b!2550580 (= tp!813702 e!1611972)))

(declare-fun b!2550875 () Bool)

(assert (=> b!2550875 (= e!1611972 tp_is_empty!13053)))

(declare-fun b!2550878 () Bool)

(declare-fun tp!813707 () Bool)

(declare-fun tp!813705 () Bool)

(assert (=> b!2550878 (= e!1611972 (and tp!813707 tp!813705))))

(assert (= (and b!2550580 ((_ is ElementMatch!7599) (regOne!15711 (regTwo!15710 r!27340)))) b!2550875))

(assert (= (and b!2550580 ((_ is Concat!12295) (regOne!15711 (regTwo!15710 r!27340)))) b!2550876))

(assert (= (and b!2550580 ((_ is Star!7599) (regOne!15711 (regTwo!15710 r!27340)))) b!2550877))

(assert (= (and b!2550580 ((_ is Union!7599) (regOne!15711 (regTwo!15710 r!27340)))) b!2550878))

(declare-fun b!2550881 () Bool)

(declare-fun e!1611973 () Bool)

(declare-fun tp!813711 () Bool)

(assert (=> b!2550881 (= e!1611973 tp!813711)))

(declare-fun b!2550880 () Bool)

(declare-fun tp!813709 () Bool)

(declare-fun tp!813708 () Bool)

(assert (=> b!2550880 (= e!1611973 (and tp!813709 tp!813708))))

(assert (=> b!2550580 (= tp!813700 e!1611973)))

(declare-fun b!2550879 () Bool)

(assert (=> b!2550879 (= e!1611973 tp_is_empty!13053)))

(declare-fun b!2550882 () Bool)

(declare-fun tp!813712 () Bool)

(declare-fun tp!813710 () Bool)

(assert (=> b!2550882 (= e!1611973 (and tp!813712 tp!813710))))

(assert (= (and b!2550580 ((_ is ElementMatch!7599) (regTwo!15711 (regTwo!15710 r!27340)))) b!2550879))

(assert (= (and b!2550580 ((_ is Concat!12295) (regTwo!15711 (regTwo!15710 r!27340)))) b!2550880))

(assert (= (and b!2550580 ((_ is Star!7599) (regTwo!15711 (regTwo!15710 r!27340)))) b!2550881))

(assert (= (and b!2550580 ((_ is Union!7599) (regTwo!15711 (regTwo!15710 r!27340)))) b!2550882))

(declare-fun b!2550885 () Bool)

(declare-fun e!1611975 () Bool)

(declare-fun tp!813716 () Bool)

(assert (=> b!2550885 (= e!1611975 tp!813716)))

(declare-fun b!2550884 () Bool)

(declare-fun tp!813714 () Bool)

(declare-fun tp!813713 () Bool)

(assert (=> b!2550884 (= e!1611975 (and tp!813714 tp!813713))))

(assert (=> b!2550566 (= tp!813684 e!1611975)))

(declare-fun b!2550883 () Bool)

(assert (=> b!2550883 (= e!1611975 tp_is_empty!13053)))

(declare-fun b!2550886 () Bool)

(declare-fun tp!813717 () Bool)

(declare-fun tp!813715 () Bool)

(assert (=> b!2550886 (= e!1611975 (and tp!813717 tp!813715))))

(assert (= (and b!2550566 ((_ is ElementMatch!7599) (regOne!15710 (regOne!15711 r!27340)))) b!2550883))

(assert (= (and b!2550566 ((_ is Concat!12295) (regOne!15710 (regOne!15711 r!27340)))) b!2550884))

(assert (= (and b!2550566 ((_ is Star!7599) (regOne!15710 (regOne!15711 r!27340)))) b!2550885))

(assert (= (and b!2550566 ((_ is Union!7599) (regOne!15710 (regOne!15711 r!27340)))) b!2550886))

(declare-fun b!2550898 () Bool)

(declare-fun e!1611982 () Bool)

(declare-fun tp!813721 () Bool)

(assert (=> b!2550898 (= e!1611982 tp!813721)))

(declare-fun b!2550897 () Bool)

(declare-fun tp!813719 () Bool)

(declare-fun tp!813718 () Bool)

(assert (=> b!2550897 (= e!1611982 (and tp!813719 tp!813718))))

(assert (=> b!2550566 (= tp!813683 e!1611982)))

(declare-fun b!2550896 () Bool)

(assert (=> b!2550896 (= e!1611982 tp_is_empty!13053)))

(declare-fun b!2550899 () Bool)

(declare-fun tp!813722 () Bool)

(declare-fun tp!813720 () Bool)

(assert (=> b!2550899 (= e!1611982 (and tp!813722 tp!813720))))

(assert (= (and b!2550566 ((_ is ElementMatch!7599) (regTwo!15710 (regOne!15711 r!27340)))) b!2550896))

(assert (= (and b!2550566 ((_ is Concat!12295) (regTwo!15710 (regOne!15711 r!27340)))) b!2550897))

(assert (= (and b!2550566 ((_ is Star!7599) (regTwo!15710 (regOne!15711 r!27340)))) b!2550898))

(assert (= (and b!2550566 ((_ is Union!7599) (regTwo!15710 (regOne!15711 r!27340)))) b!2550899))

(declare-fun b!2550902 () Bool)

(declare-fun e!1611983 () Bool)

(declare-fun tp!813726 () Bool)

(assert (=> b!2550902 (= e!1611983 tp!813726)))

(declare-fun b!2550901 () Bool)

(declare-fun tp!813724 () Bool)

(declare-fun tp!813723 () Bool)

(assert (=> b!2550901 (= e!1611983 (and tp!813724 tp!813723))))

(assert (=> b!2550575 (= tp!813696 e!1611983)))

(declare-fun b!2550900 () Bool)

(assert (=> b!2550900 (= e!1611983 tp_is_empty!13053)))

(declare-fun b!2550903 () Bool)

(declare-fun tp!813727 () Bool)

(declare-fun tp!813725 () Bool)

(assert (=> b!2550903 (= e!1611983 (and tp!813727 tp!813725))))

(assert (= (and b!2550575 ((_ is ElementMatch!7599) (reg!7928 (regOne!15710 r!27340)))) b!2550900))

(assert (= (and b!2550575 ((_ is Concat!12295) (reg!7928 (regOne!15710 r!27340)))) b!2550901))

(assert (= (and b!2550575 ((_ is Star!7599) (reg!7928 (regOne!15710 r!27340)))) b!2550902))

(assert (= (and b!2550575 ((_ is Union!7599) (reg!7928 (regOne!15710 r!27340)))) b!2550903))

(declare-fun b!2550906 () Bool)

(declare-fun e!1611984 () Bool)

(declare-fun tp!813731 () Bool)

(assert (=> b!2550906 (= e!1611984 tp!813731)))

(declare-fun b!2550905 () Bool)

(declare-fun tp!813729 () Bool)

(declare-fun tp!813728 () Bool)

(assert (=> b!2550905 (= e!1611984 (and tp!813729 tp!813728))))

(assert (=> b!2550576 (= tp!813697 e!1611984)))

(declare-fun b!2550904 () Bool)

(assert (=> b!2550904 (= e!1611984 tp_is_empty!13053)))

(declare-fun b!2550907 () Bool)

(declare-fun tp!813732 () Bool)

(declare-fun tp!813730 () Bool)

(assert (=> b!2550907 (= e!1611984 (and tp!813732 tp!813730))))

(assert (= (and b!2550576 ((_ is ElementMatch!7599) (regOne!15711 (regOne!15710 r!27340)))) b!2550904))

(assert (= (and b!2550576 ((_ is Concat!12295) (regOne!15711 (regOne!15710 r!27340)))) b!2550905))

(assert (= (and b!2550576 ((_ is Star!7599) (regOne!15711 (regOne!15710 r!27340)))) b!2550906))

(assert (= (and b!2550576 ((_ is Union!7599) (regOne!15711 (regOne!15710 r!27340)))) b!2550907))

(declare-fun b!2550910 () Bool)

(declare-fun e!1611985 () Bool)

(declare-fun tp!813736 () Bool)

(assert (=> b!2550910 (= e!1611985 tp!813736)))

(declare-fun b!2550909 () Bool)

(declare-fun tp!813734 () Bool)

(declare-fun tp!813733 () Bool)

(assert (=> b!2550909 (= e!1611985 (and tp!813734 tp!813733))))

(assert (=> b!2550576 (= tp!813695 e!1611985)))

(declare-fun b!2550908 () Bool)

(assert (=> b!2550908 (= e!1611985 tp_is_empty!13053)))

(declare-fun b!2550911 () Bool)

(declare-fun tp!813737 () Bool)

(declare-fun tp!813735 () Bool)

(assert (=> b!2550911 (= e!1611985 (and tp!813737 tp!813735))))

(assert (= (and b!2550576 ((_ is ElementMatch!7599) (regTwo!15711 (regOne!15710 r!27340)))) b!2550908))

(assert (= (and b!2550576 ((_ is Concat!12295) (regTwo!15711 (regOne!15710 r!27340)))) b!2550909))

(assert (= (and b!2550576 ((_ is Star!7599) (regTwo!15711 (regOne!15710 r!27340)))) b!2550910))

(assert (= (and b!2550576 ((_ is Union!7599) (regTwo!15711 (regOne!15710 r!27340)))) b!2550911))

(declare-fun b!2550914 () Bool)

(declare-fun e!1611986 () Bool)

(declare-fun tp!813741 () Bool)

(assert (=> b!2550914 (= e!1611986 tp!813741)))

(declare-fun b!2550913 () Bool)

(declare-fun tp!813739 () Bool)

(declare-fun tp!813738 () Bool)

(assert (=> b!2550913 (= e!1611986 (and tp!813739 tp!813738))))

(assert (=> b!2550562 (= tp!813679 e!1611986)))

(declare-fun b!2550912 () Bool)

(assert (=> b!2550912 (= e!1611986 tp_is_empty!13053)))

(declare-fun b!2550915 () Bool)

(declare-fun tp!813742 () Bool)

(declare-fun tp!813740 () Bool)

(assert (=> b!2550915 (= e!1611986 (and tp!813742 tp!813740))))

(assert (= (and b!2550562 ((_ is ElementMatch!7599) (regOne!15710 (reg!7928 r!27340)))) b!2550912))

(assert (= (and b!2550562 ((_ is Concat!12295) (regOne!15710 (reg!7928 r!27340)))) b!2550913))

(assert (= (and b!2550562 ((_ is Star!7599) (regOne!15710 (reg!7928 r!27340)))) b!2550914))

(assert (= (and b!2550562 ((_ is Union!7599) (regOne!15710 (reg!7928 r!27340)))) b!2550915))

(declare-fun b!2550918 () Bool)

(declare-fun e!1611987 () Bool)

(declare-fun tp!813746 () Bool)

(assert (=> b!2550918 (= e!1611987 tp!813746)))

(declare-fun b!2550917 () Bool)

(declare-fun tp!813744 () Bool)

(declare-fun tp!813743 () Bool)

(assert (=> b!2550917 (= e!1611987 (and tp!813744 tp!813743))))

(assert (=> b!2550562 (= tp!813678 e!1611987)))

(declare-fun b!2550916 () Bool)

(assert (=> b!2550916 (= e!1611987 tp_is_empty!13053)))

(declare-fun b!2550919 () Bool)

(declare-fun tp!813747 () Bool)

(declare-fun tp!813745 () Bool)

(assert (=> b!2550919 (= e!1611987 (and tp!813747 tp!813745))))

(assert (= (and b!2550562 ((_ is ElementMatch!7599) (regTwo!15710 (reg!7928 r!27340)))) b!2550916))

(assert (= (and b!2550562 ((_ is Concat!12295) (regTwo!15710 (reg!7928 r!27340)))) b!2550917))

(assert (= (and b!2550562 ((_ is Star!7599) (regTwo!15710 (reg!7928 r!27340)))) b!2550918))

(assert (= (and b!2550562 ((_ is Union!7599) (regTwo!15710 (reg!7928 r!27340)))) b!2550919))

(declare-fun b!2550922 () Bool)

(declare-fun e!1611988 () Bool)

(declare-fun tp!813751 () Bool)

(assert (=> b!2550922 (= e!1611988 tp!813751)))

(declare-fun b!2550921 () Bool)

(declare-fun tp!813749 () Bool)

(declare-fun tp!813748 () Bool)

(assert (=> b!2550921 (= e!1611988 (and tp!813749 tp!813748))))

(assert (=> b!2550571 (= tp!813691 e!1611988)))

(declare-fun b!2550920 () Bool)

(assert (=> b!2550920 (= e!1611988 tp_is_empty!13053)))

(declare-fun b!2550923 () Bool)

(declare-fun tp!813752 () Bool)

(declare-fun tp!813750 () Bool)

(assert (=> b!2550923 (= e!1611988 (and tp!813752 tp!813750))))

(assert (= (and b!2550571 ((_ is ElementMatch!7599) (reg!7928 (regTwo!15711 r!27340)))) b!2550920))

(assert (= (and b!2550571 ((_ is Concat!12295) (reg!7928 (regTwo!15711 r!27340)))) b!2550921))

(assert (= (and b!2550571 ((_ is Star!7599) (reg!7928 (regTwo!15711 r!27340)))) b!2550922))

(assert (= (and b!2550571 ((_ is Union!7599) (reg!7928 (regTwo!15711 r!27340)))) b!2550923))

(declare-fun b!2550926 () Bool)

(declare-fun e!1611989 () Bool)

(declare-fun tp!813756 () Bool)

(assert (=> b!2550926 (= e!1611989 tp!813756)))

(declare-fun b!2550925 () Bool)

(declare-fun tp!813754 () Bool)

(declare-fun tp!813753 () Bool)

(assert (=> b!2550925 (= e!1611989 (and tp!813754 tp!813753))))

(assert (=> b!2550572 (= tp!813692 e!1611989)))

(declare-fun b!2550924 () Bool)

(assert (=> b!2550924 (= e!1611989 tp_is_empty!13053)))

(declare-fun b!2550927 () Bool)

(declare-fun tp!813757 () Bool)

(declare-fun tp!813755 () Bool)

(assert (=> b!2550927 (= e!1611989 (and tp!813757 tp!813755))))

(assert (= (and b!2550572 ((_ is ElementMatch!7599) (regOne!15711 (regTwo!15711 r!27340)))) b!2550924))

(assert (= (and b!2550572 ((_ is Concat!12295) (regOne!15711 (regTwo!15711 r!27340)))) b!2550925))

(assert (= (and b!2550572 ((_ is Star!7599) (regOne!15711 (regTwo!15711 r!27340)))) b!2550926))

(assert (= (and b!2550572 ((_ is Union!7599) (regOne!15711 (regTwo!15711 r!27340)))) b!2550927))

(declare-fun b!2550930 () Bool)

(declare-fun e!1611990 () Bool)

(declare-fun tp!813761 () Bool)

(assert (=> b!2550930 (= e!1611990 tp!813761)))

(declare-fun b!2550929 () Bool)

(declare-fun tp!813759 () Bool)

(declare-fun tp!813758 () Bool)

(assert (=> b!2550929 (= e!1611990 (and tp!813759 tp!813758))))

(assert (=> b!2550572 (= tp!813690 e!1611990)))

(declare-fun b!2550928 () Bool)

(assert (=> b!2550928 (= e!1611990 tp_is_empty!13053)))

(declare-fun b!2550931 () Bool)

(declare-fun tp!813762 () Bool)

(declare-fun tp!813760 () Bool)

(assert (=> b!2550931 (= e!1611990 (and tp!813762 tp!813760))))

(assert (= (and b!2550572 ((_ is ElementMatch!7599) (regTwo!15711 (regTwo!15711 r!27340)))) b!2550928))

(assert (= (and b!2550572 ((_ is Concat!12295) (regTwo!15711 (regTwo!15711 r!27340)))) b!2550929))

(assert (= (and b!2550572 ((_ is Star!7599) (regTwo!15711 (regTwo!15711 r!27340)))) b!2550930))

(assert (= (and b!2550572 ((_ is Union!7599) (regTwo!15711 (regTwo!15711 r!27340)))) b!2550931))

(declare-fun b!2550940 () Bool)

(declare-fun e!1611996 () Bool)

(declare-fun tp!813766 () Bool)

(assert (=> b!2550940 (= e!1611996 tp!813766)))

(declare-fun b!2550939 () Bool)

(declare-fun tp!813764 () Bool)

(declare-fun tp!813763 () Bool)

(assert (=> b!2550939 (= e!1611996 (and tp!813764 tp!813763))))

(assert (=> b!2550567 (= tp!813686 e!1611996)))

(declare-fun b!2550937 () Bool)

(assert (=> b!2550937 (= e!1611996 tp_is_empty!13053)))

(declare-fun b!2550941 () Bool)

(declare-fun tp!813767 () Bool)

(declare-fun tp!813765 () Bool)

(assert (=> b!2550941 (= e!1611996 (and tp!813767 tp!813765))))

(assert (= (and b!2550567 ((_ is ElementMatch!7599) (reg!7928 (regOne!15711 r!27340)))) b!2550937))

(assert (= (and b!2550567 ((_ is Concat!12295) (reg!7928 (regOne!15711 r!27340)))) b!2550939))

(assert (= (and b!2550567 ((_ is Star!7599) (reg!7928 (regOne!15711 r!27340)))) b!2550940))

(assert (= (and b!2550567 ((_ is Union!7599) (reg!7928 (regOne!15711 r!27340)))) b!2550941))

(declare-fun b!2550948 () Bool)

(declare-fun e!1611997 () Bool)

(declare-fun tp!813771 () Bool)

(assert (=> b!2550948 (= e!1611997 tp!813771)))

(declare-fun b!2550947 () Bool)

(declare-fun tp!813769 () Bool)

(declare-fun tp!813768 () Bool)

(assert (=> b!2550947 (= e!1611997 (and tp!813769 tp!813768))))

(assert (=> b!2550568 (= tp!813687 e!1611997)))

(declare-fun b!2550946 () Bool)

(assert (=> b!2550946 (= e!1611997 tp_is_empty!13053)))

(declare-fun b!2550949 () Bool)

(declare-fun tp!813772 () Bool)

(declare-fun tp!813770 () Bool)

(assert (=> b!2550949 (= e!1611997 (and tp!813772 tp!813770))))

(assert (= (and b!2550568 ((_ is ElementMatch!7599) (regOne!15711 (regOne!15711 r!27340)))) b!2550946))

(assert (= (and b!2550568 ((_ is Concat!12295) (regOne!15711 (regOne!15711 r!27340)))) b!2550947))

(assert (= (and b!2550568 ((_ is Star!7599) (regOne!15711 (regOne!15711 r!27340)))) b!2550948))

(assert (= (and b!2550568 ((_ is Union!7599) (regOne!15711 (regOne!15711 r!27340)))) b!2550949))

(declare-fun b!2550952 () Bool)

(declare-fun e!1611998 () Bool)

(declare-fun tp!813776 () Bool)

(assert (=> b!2550952 (= e!1611998 tp!813776)))

(declare-fun b!2550951 () Bool)

(declare-fun tp!813774 () Bool)

(declare-fun tp!813773 () Bool)

(assert (=> b!2550951 (= e!1611998 (and tp!813774 tp!813773))))

(assert (=> b!2550568 (= tp!813685 e!1611998)))

(declare-fun b!2550950 () Bool)

(assert (=> b!2550950 (= e!1611998 tp_is_empty!13053)))

(declare-fun b!2550953 () Bool)

(declare-fun tp!813777 () Bool)

(declare-fun tp!813775 () Bool)

(assert (=> b!2550953 (= e!1611998 (and tp!813777 tp!813775))))

(assert (= (and b!2550568 ((_ is ElementMatch!7599) (regTwo!15711 (regOne!15711 r!27340)))) b!2550950))

(assert (= (and b!2550568 ((_ is Concat!12295) (regTwo!15711 (regOne!15711 r!27340)))) b!2550951))

(assert (= (and b!2550568 ((_ is Star!7599) (regTwo!15711 (regOne!15711 r!27340)))) b!2550952))

(assert (= (and b!2550568 ((_ is Union!7599) (regTwo!15711 (regOne!15711 r!27340)))) b!2550953))

(declare-fun b!2550956 () Bool)

(declare-fun e!1611999 () Bool)

(declare-fun tp!813781 () Bool)

(assert (=> b!2550956 (= e!1611999 tp!813781)))

(declare-fun b!2550955 () Bool)

(declare-fun tp!813779 () Bool)

(declare-fun tp!813778 () Bool)

(assert (=> b!2550955 (= e!1611999 (and tp!813779 tp!813778))))

(assert (=> b!2550563 (= tp!813681 e!1611999)))

(declare-fun b!2550954 () Bool)

(assert (=> b!2550954 (= e!1611999 tp_is_empty!13053)))

(declare-fun b!2550957 () Bool)

(declare-fun tp!813782 () Bool)

(declare-fun tp!813780 () Bool)

(assert (=> b!2550957 (= e!1611999 (and tp!813782 tp!813780))))

(assert (= (and b!2550563 ((_ is ElementMatch!7599) (reg!7928 (reg!7928 r!27340)))) b!2550954))

(assert (= (and b!2550563 ((_ is Concat!12295) (reg!7928 (reg!7928 r!27340)))) b!2550955))

(assert (= (and b!2550563 ((_ is Star!7599) (reg!7928 (reg!7928 r!27340)))) b!2550956))

(assert (= (and b!2550563 ((_ is Union!7599) (reg!7928 (reg!7928 r!27340)))) b!2550957))

(declare-fun b!2550960 () Bool)

(declare-fun e!1612000 () Bool)

(declare-fun tp!813786 () Bool)

(assert (=> b!2550960 (= e!1612000 tp!813786)))

(declare-fun b!2550959 () Bool)

(declare-fun tp!813784 () Bool)

(declare-fun tp!813783 () Bool)

(assert (=> b!2550959 (= e!1612000 (and tp!813784 tp!813783))))

(assert (=> b!2550564 (= tp!813682 e!1612000)))

(declare-fun b!2550958 () Bool)

(assert (=> b!2550958 (= e!1612000 tp_is_empty!13053)))

(declare-fun b!2550961 () Bool)

(declare-fun tp!813787 () Bool)

(declare-fun tp!813785 () Bool)

(assert (=> b!2550961 (= e!1612000 (and tp!813787 tp!813785))))

(assert (= (and b!2550564 ((_ is ElementMatch!7599) (regOne!15711 (reg!7928 r!27340)))) b!2550958))

(assert (= (and b!2550564 ((_ is Concat!12295) (regOne!15711 (reg!7928 r!27340)))) b!2550959))

(assert (= (and b!2550564 ((_ is Star!7599) (regOne!15711 (reg!7928 r!27340)))) b!2550960))

(assert (= (and b!2550564 ((_ is Union!7599) (regOne!15711 (reg!7928 r!27340)))) b!2550961))

(declare-fun b!2550964 () Bool)

(declare-fun e!1612001 () Bool)

(declare-fun tp!813791 () Bool)

(assert (=> b!2550964 (= e!1612001 tp!813791)))

(declare-fun b!2550963 () Bool)

(declare-fun tp!813789 () Bool)

(declare-fun tp!813788 () Bool)

(assert (=> b!2550963 (= e!1612001 (and tp!813789 tp!813788))))

(assert (=> b!2550564 (= tp!813680 e!1612001)))

(declare-fun b!2550962 () Bool)

(assert (=> b!2550962 (= e!1612001 tp_is_empty!13053)))

(declare-fun b!2550965 () Bool)

(declare-fun tp!813792 () Bool)

(declare-fun tp!813790 () Bool)

(assert (=> b!2550965 (= e!1612001 (and tp!813792 tp!813790))))

(assert (= (and b!2550564 ((_ is ElementMatch!7599) (regTwo!15711 (reg!7928 r!27340)))) b!2550962))

(assert (= (and b!2550564 ((_ is Concat!12295) (regTwo!15711 (reg!7928 r!27340)))) b!2550963))

(assert (= (and b!2550564 ((_ is Star!7599) (regTwo!15711 (reg!7928 r!27340)))) b!2550964))

(assert (= (and b!2550564 ((_ is Union!7599) (regTwo!15711 (reg!7928 r!27340)))) b!2550965))

(declare-fun b!2550966 () Bool)

(declare-fun e!1612002 () Bool)

(declare-fun tp!813793 () Bool)

(assert (=> b!2550966 (= e!1612002 (and tp_is_empty!13053 tp!813793))))

(assert (=> b!2550549 (= tp!813666 e!1612002)))

(assert (= (and b!2550549 ((_ is Cons!29564) (t!211363 (t!211363 tl!4068)))) b!2550966))

(declare-fun b!2550969 () Bool)

(declare-fun e!1612003 () Bool)

(declare-fun tp!813797 () Bool)

(assert (=> b!2550969 (= e!1612003 tp!813797)))

(declare-fun b!2550968 () Bool)

(declare-fun tp!813795 () Bool)

(declare-fun tp!813794 () Bool)

(assert (=> b!2550968 (= e!1612003 (and tp!813795 tp!813794))))

(assert (=> b!2550578 (= tp!813699 e!1612003)))

(declare-fun b!2550967 () Bool)

(assert (=> b!2550967 (= e!1612003 tp_is_empty!13053)))

(declare-fun b!2550970 () Bool)

(declare-fun tp!813798 () Bool)

(declare-fun tp!813796 () Bool)

(assert (=> b!2550970 (= e!1612003 (and tp!813798 tp!813796))))

(assert (= (and b!2550578 ((_ is ElementMatch!7599) (regOne!15710 (regTwo!15710 r!27340)))) b!2550967))

(assert (= (and b!2550578 ((_ is Concat!12295) (regOne!15710 (regTwo!15710 r!27340)))) b!2550968))

(assert (= (and b!2550578 ((_ is Star!7599) (regOne!15710 (regTwo!15710 r!27340)))) b!2550969))

(assert (= (and b!2550578 ((_ is Union!7599) (regOne!15710 (regTwo!15710 r!27340)))) b!2550970))

(declare-fun b!2550973 () Bool)

(declare-fun e!1612004 () Bool)

(declare-fun tp!813802 () Bool)

(assert (=> b!2550973 (= e!1612004 tp!813802)))

(declare-fun b!2550972 () Bool)

(declare-fun tp!813800 () Bool)

(declare-fun tp!813799 () Bool)

(assert (=> b!2550972 (= e!1612004 (and tp!813800 tp!813799))))

(assert (=> b!2550578 (= tp!813698 e!1612004)))

(declare-fun b!2550971 () Bool)

(assert (=> b!2550971 (= e!1612004 tp_is_empty!13053)))

(declare-fun b!2550974 () Bool)

(declare-fun tp!813803 () Bool)

(declare-fun tp!813801 () Bool)

(assert (=> b!2550974 (= e!1612004 (and tp!813803 tp!813801))))

(assert (= (and b!2550578 ((_ is ElementMatch!7599) (regTwo!15710 (regTwo!15710 r!27340)))) b!2550971))

(assert (= (and b!2550578 ((_ is Concat!12295) (regTwo!15710 (regTwo!15710 r!27340)))) b!2550972))

(assert (= (and b!2550578 ((_ is Star!7599) (regTwo!15710 (regTwo!15710 r!27340)))) b!2550973))

(assert (= (and b!2550578 ((_ is Union!7599) (regTwo!15710 (regTwo!15710 r!27340)))) b!2550974))

(declare-fun b!2550977 () Bool)

(declare-fun e!1612005 () Bool)

(declare-fun tp!813807 () Bool)

(assert (=> b!2550977 (= e!1612005 tp!813807)))

(declare-fun b!2550976 () Bool)

(declare-fun tp!813805 () Bool)

(declare-fun tp!813804 () Bool)

(assert (=> b!2550976 (= e!1612005 (and tp!813805 tp!813804))))

(assert (=> b!2550574 (= tp!813694 e!1612005)))

(declare-fun b!2550975 () Bool)

(assert (=> b!2550975 (= e!1612005 tp_is_empty!13053)))

(declare-fun b!2550978 () Bool)

(declare-fun tp!813808 () Bool)

(declare-fun tp!813806 () Bool)

(assert (=> b!2550978 (= e!1612005 (and tp!813808 tp!813806))))

(assert (= (and b!2550574 ((_ is ElementMatch!7599) (regOne!15710 (regOne!15710 r!27340)))) b!2550975))

(assert (= (and b!2550574 ((_ is Concat!12295) (regOne!15710 (regOne!15710 r!27340)))) b!2550976))

(assert (= (and b!2550574 ((_ is Star!7599) (regOne!15710 (regOne!15710 r!27340)))) b!2550977))

(assert (= (and b!2550574 ((_ is Union!7599) (regOne!15710 (regOne!15710 r!27340)))) b!2550978))

(declare-fun b!2550991 () Bool)

(declare-fun e!1612011 () Bool)

(declare-fun tp!813812 () Bool)

(assert (=> b!2550991 (= e!1612011 tp!813812)))

(declare-fun b!2550990 () Bool)

(declare-fun tp!813810 () Bool)

(declare-fun tp!813809 () Bool)

(assert (=> b!2550990 (= e!1612011 (and tp!813810 tp!813809))))

(assert (=> b!2550574 (= tp!813693 e!1612011)))

(declare-fun b!2550989 () Bool)

(assert (=> b!2550989 (= e!1612011 tp_is_empty!13053)))

(declare-fun b!2550992 () Bool)

(declare-fun tp!813813 () Bool)

(declare-fun tp!813811 () Bool)

(assert (=> b!2550992 (= e!1612011 (and tp!813813 tp!813811))))

(assert (= (and b!2550574 ((_ is ElementMatch!7599) (regTwo!15710 (regOne!15710 r!27340)))) b!2550989))

(assert (= (and b!2550574 ((_ is Concat!12295) (regTwo!15710 (regOne!15710 r!27340)))) b!2550990))

(assert (= (and b!2550574 ((_ is Star!7599) (regTwo!15710 (regOne!15710 r!27340)))) b!2550991))

(assert (= (and b!2550574 ((_ is Union!7599) (regTwo!15710 (regOne!15710 r!27340)))) b!2550992))

(declare-fun b!2550995 () Bool)

(declare-fun e!1612012 () Bool)

(declare-fun tp!813817 () Bool)

(assert (=> b!2550995 (= e!1612012 tp!813817)))

(declare-fun b!2550994 () Bool)

(declare-fun tp!813815 () Bool)

(declare-fun tp!813814 () Bool)

(assert (=> b!2550994 (= e!1612012 (and tp!813815 tp!813814))))

(assert (=> b!2550570 (= tp!813689 e!1612012)))

(declare-fun b!2550993 () Bool)

(assert (=> b!2550993 (= e!1612012 tp_is_empty!13053)))

(declare-fun b!2550996 () Bool)

(declare-fun tp!813818 () Bool)

(declare-fun tp!813816 () Bool)

(assert (=> b!2550996 (= e!1612012 (and tp!813818 tp!813816))))

(assert (= (and b!2550570 ((_ is ElementMatch!7599) (regOne!15710 (regTwo!15711 r!27340)))) b!2550993))

(assert (= (and b!2550570 ((_ is Concat!12295) (regOne!15710 (regTwo!15711 r!27340)))) b!2550994))

(assert (= (and b!2550570 ((_ is Star!7599) (regOne!15710 (regTwo!15711 r!27340)))) b!2550995))

(assert (= (and b!2550570 ((_ is Union!7599) (regOne!15710 (regTwo!15711 r!27340)))) b!2550996))

(declare-fun b!2550999 () Bool)

(declare-fun e!1612013 () Bool)

(declare-fun tp!813822 () Bool)

(assert (=> b!2550999 (= e!1612013 tp!813822)))

(declare-fun b!2550998 () Bool)

(declare-fun tp!813820 () Bool)

(declare-fun tp!813819 () Bool)

(assert (=> b!2550998 (= e!1612013 (and tp!813820 tp!813819))))

(assert (=> b!2550570 (= tp!813688 e!1612013)))

(declare-fun b!2550997 () Bool)

(assert (=> b!2550997 (= e!1612013 tp_is_empty!13053)))

(declare-fun b!2551000 () Bool)

(declare-fun tp!813823 () Bool)

(declare-fun tp!813821 () Bool)

(assert (=> b!2551000 (= e!1612013 (and tp!813823 tp!813821))))

(assert (= (and b!2550570 ((_ is ElementMatch!7599) (regTwo!15710 (regTwo!15711 r!27340)))) b!2550997))

(assert (= (and b!2550570 ((_ is Concat!12295) (regTwo!15710 (regTwo!15711 r!27340)))) b!2550998))

(assert (= (and b!2550570 ((_ is Star!7599) (regTwo!15710 (regTwo!15711 r!27340)))) b!2550999))

(assert (= (and b!2550570 ((_ is Union!7599) (regTwo!15710 (regTwo!15711 r!27340)))) b!2551000))

(declare-fun b!2551003 () Bool)

(declare-fun e!1612014 () Bool)

(declare-fun tp!813827 () Bool)

(assert (=> b!2551003 (= e!1612014 tp!813827)))

(declare-fun b!2551002 () Bool)

(declare-fun tp!813825 () Bool)

(declare-fun tp!813824 () Bool)

(assert (=> b!2551002 (= e!1612014 (and tp!813825 tp!813824))))

(assert (=> b!2550579 (= tp!813701 e!1612014)))

(declare-fun b!2551001 () Bool)

(assert (=> b!2551001 (= e!1612014 tp_is_empty!13053)))

(declare-fun b!2551004 () Bool)

(declare-fun tp!813828 () Bool)

(declare-fun tp!813826 () Bool)

(assert (=> b!2551004 (= e!1612014 (and tp!813828 tp!813826))))

(assert (= (and b!2550579 ((_ is ElementMatch!7599) (reg!7928 (regTwo!15710 r!27340)))) b!2551001))

(assert (= (and b!2550579 ((_ is Concat!12295) (reg!7928 (regTwo!15710 r!27340)))) b!2551002))

(assert (= (and b!2550579 ((_ is Star!7599) (reg!7928 (regTwo!15710 r!27340)))) b!2551003))

(assert (= (and b!2550579 ((_ is Union!7599) (reg!7928 (regTwo!15710 r!27340)))) b!2551004))

(check-sat (not b!2550688) (not b!2550758) (not b!2550598) (not b!2550907) (not d!723303) (not b!2550955) (not b!2550996) (not b!2550719) (not b!2550899) (not bm!162333) (not bm!162335) (not bm!162278) (not bm!162290) (not b!2551003) (not d!723317) (not b!2550961) (not bm!162297) (not bm!162338) (not b!2550947) (not b!2550948) (not bm!162327) (not bm!162299) (not bm!162315) (not d!723307) (not bm!162345) (not b!2550925) (not b!2550700) (not bm!162286) (not b!2550965) (not b!2550710) (not bm!162288) (not bm!162285) (not bm!162294) (not b!2550990) (not bm!162256) (not bm!162305) (not b!2550919) (not b!2550857) (not b!2550902) (not bm!162259) (not bm!162318) (not b!2550786) (not b!2550939) (not bm!162283) (not b!2550777) (not b!2550910) (not b!2550973) (not b!2550956) (not d!723263) (not b!2550957) (not b!2550915) (not d!723233) (not b!2550640) (not b!2550995) (not bm!162342) (not bm!162309) (not b!2550999) (not d!723241) (not b!2550926) (not bm!162268) (not b!2550599) (not bm!162272) (not b!2550941) (not b!2550689) (not b!2550963) (not b!2550637) (not b!2550964) (not b!2550796) (not bm!162325) (not b!2550876) (not d!723273) (not b!2550848) (not b!2550669) (not b!2550819) (not d!723295) (not b!2550959) (not bm!162276) (not b!2550952) (not b!2550923) (not b!2551002) (not b!2550906) (not b!2550728) (not b!2550970) (not b!2550649) (not b!2550610) (not bm!162265) (not d!723235) (not b!2550795) (not b!2550977) (not bm!162306) (not d!723293) (not b!2550972) (not b!2550930) (not d!723309) (not b!2550966) (not b!2550909) (not b!2550874) (not b!2550992) (not bm!162340) (not d!723275) (not b!2550639) (not b!2550829) (not d!723237) (not d!723261) (not b!2550978) (not bm!162316) tp_is_empty!13053 (not d!723239) (not bm!162263) (not b!2550931) (not bm!162266) (not bm!162255) (not b!2550991) (not d!723249) (not b!2550797) (not bm!162331) (not bm!162281) (not d!723251) (not b!2550917) (not b!2550913) (not b!2550914) (not b!2550897) (not d!723225) (not bm!162275) (not b!2551000) (not b!2550953) (not bm!162319) (not b!2550901) (not bm!162322) (not b!2550911) (not b!2550921) (not d!723227) (not b!2550768) (not b!2550660) (not bm!162304) (not bm!162296) (not b!2550589) (not b!2550679) (not b!2550998) (not b!2550885) (not bm!162308) (not b!2550880) (not d!723305) (not b!2550898) (not b!2550839) (not b!2550976) (not b!2550927) (not b!2550877) (not b!2550882) (not b!2550960) (not b!2550918) (not bm!162269) (not bm!162313) (not d!723257) (not b!2550974) (not bm!162337) (not b!2550648) (not b!2550951) (not b!2550968) (not b!2550949) (not bm!162321) (not bm!162311) (not bm!162253) (not bm!162261) (not b!2550798) (not b!2550886) (not b!2550628) (not b!2550806) (not bm!162292) (not b!2550807) (not b!2550922) (not b!2550969) (not b!2550905) (not bm!162341) (not b!2550638) (not b!2550903) (not b!2550940) (not bm!162343) (not b!2550881) (not bm!162329) (not b!2550643) (not bm!162258) (not b!2550929) (not b!2550884) (not b!2550994) (not b!2550878) (not bm!162279) (not b!2550619) (not bm!162323) (not b!2551004) (not bm!162273) (not bm!162271) (not b!2550801))
(check-sat)
