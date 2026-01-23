; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230284 () Bool)

(assert start!230284)

(declare-fun b!2330219 () Bool)

(declare-fun e!1493053 () Bool)

(declare-fun tp!738379 () Bool)

(assert (=> b!2330219 (= e!1493053 tp!738379)))

(declare-fun b!2330220 () Bool)

(declare-datatypes ((Unit!40606 0))(
  ( (Unit!40607) )
))
(declare-fun e!1493052 () Unit!40606)

(declare-fun Unit!40608 () Unit!40606)

(assert (=> b!2330220 (= e!1493052 Unit!40608)))

(assert (=> b!2330220 false))

(declare-fun b!2330221 () Bool)

(declare-fun e!1493054 () Unit!40606)

(declare-fun Unit!40609 () Unit!40606)

(assert (=> b!2330221 (= e!1493054 Unit!40609)))

(assert (=> b!2330221 false))

(declare-fun b!2330222 () Bool)

(declare-fun res!994855 () Bool)

(declare-fun e!1493051 () Bool)

(assert (=> b!2330222 (=> (not res!994855) (not e!1493051))))

(declare-datatypes ((C!13796 0))(
  ( (C!13797 (val!8058 Int)) )
))
(declare-datatypes ((Regex!6819 0))(
  ( (ElementMatch!6819 (c!370163 C!13796)) (Concat!11441 (regOne!14150 Regex!6819) (regTwo!14150 Regex!6819)) (EmptyExpr!6819) (Star!6819 (reg!7148 Regex!6819)) (EmptyLang!6819) (Union!6819 (regOne!14151 Regex!6819) (regTwo!14151 Regex!6819)) )
))
(declare-fun r!26197 () Regex!6819)

(declare-fun c!13498 () C!13796)

(declare-fun nullable!1898 (Regex!6819) Bool)

(declare-fun derivativeStep!1558 (Regex!6819 C!13796) Regex!6819)

(assert (=> b!2330222 (= res!994855 (nullable!1898 (derivativeStep!1558 r!26197 c!13498)))))

(declare-fun b!2330223 () Bool)

(declare-fun res!994854 () Bool)

(assert (=> b!2330223 (=> (not res!994854) (not e!1493051))))

(get-info :version)

(assert (=> b!2330223 (= res!994854 (and (not ((_ is EmptyExpr!6819) r!26197)) (not ((_ is EmptyLang!6819) r!26197)) (not ((_ is ElementMatch!6819) r!26197)) ((_ is Union!6819) r!26197)))))

(declare-fun b!2330224 () Bool)

(declare-fun Unit!40610 () Unit!40606)

(assert (=> b!2330224 (= e!1493052 Unit!40610)))

(declare-fun res!994853 () Bool)

(assert (=> start!230284 (=> (not res!994853) (not e!1493051))))

(declare-fun validRegex!2564 (Regex!6819) Bool)

(assert (=> start!230284 (= res!994853 (validRegex!2564 r!26197))))

(assert (=> start!230284 e!1493051))

(assert (=> start!230284 e!1493053))

(declare-fun tp_is_empty!10949 () Bool)

(assert (=> start!230284 tp_is_empty!10949))

(declare-fun b!2330225 () Bool)

(declare-fun tp!738380 () Bool)

(declare-fun tp!738381 () Bool)

(assert (=> b!2330225 (= e!1493053 (and tp!738380 tp!738381))))

(declare-fun b!2330226 () Bool)

(assert (=> b!2330226 (= e!1493053 tp_is_empty!10949)))

(declare-fun b!2330227 () Bool)

(assert (=> b!2330227 (= e!1493051 (not (validRegex!2564 (regOne!14151 r!26197))))))

(declare-fun lt!862224 () Unit!40606)

(assert (=> b!2330227 (= lt!862224 e!1493052)))

(declare-fun c!370161 () Bool)

(assert (=> b!2330227 (= c!370161 (nullable!1898 (regTwo!14151 r!26197)))))

(declare-fun lt!862225 () Unit!40606)

(assert (=> b!2330227 (= lt!862225 e!1493054)))

(declare-fun c!370162 () Bool)

(assert (=> b!2330227 (= c!370162 (nullable!1898 (regOne!14151 r!26197)))))

(declare-fun b!2330228 () Bool)

(declare-fun Unit!40611 () Unit!40606)

(assert (=> b!2330228 (= e!1493054 Unit!40611)))

(declare-fun b!2330229 () Bool)

(declare-fun res!994852 () Bool)

(assert (=> b!2330229 (=> (not res!994852) (not e!1493051))))

(assert (=> b!2330229 (= res!994852 (not (nullable!1898 r!26197)))))

(declare-fun b!2330230 () Bool)

(declare-fun tp!738378 () Bool)

(declare-fun tp!738377 () Bool)

(assert (=> b!2330230 (= e!1493053 (and tp!738378 tp!738377))))

(assert (= (and start!230284 res!994853) b!2330229))

(assert (= (and b!2330229 res!994852) b!2330222))

(assert (= (and b!2330222 res!994855) b!2330223))

(assert (= (and b!2330223 res!994854) b!2330227))

(assert (= (and b!2330227 c!370162) b!2330221))

(assert (= (and b!2330227 (not c!370162)) b!2330228))

(assert (= (and b!2330227 c!370161) b!2330220))

(assert (= (and b!2330227 (not c!370161)) b!2330224))

(assert (= (and start!230284 ((_ is ElementMatch!6819) r!26197)) b!2330226))

(assert (= (and start!230284 ((_ is Concat!11441) r!26197)) b!2330230))

(assert (= (and start!230284 ((_ is Star!6819) r!26197)) b!2330219))

(assert (= (and start!230284 ((_ is Union!6819) r!26197)) b!2330225))

(declare-fun m!2760521 () Bool)

(assert (=> b!2330222 m!2760521))

(assert (=> b!2330222 m!2760521))

(declare-fun m!2760523 () Bool)

(assert (=> b!2330222 m!2760523))

(declare-fun m!2760525 () Bool)

(assert (=> start!230284 m!2760525))

(declare-fun m!2760527 () Bool)

(assert (=> b!2330227 m!2760527))

(declare-fun m!2760529 () Bool)

(assert (=> b!2330227 m!2760529))

(declare-fun m!2760531 () Bool)

(assert (=> b!2330227 m!2760531))

(declare-fun m!2760533 () Bool)

(assert (=> b!2330229 m!2760533))

(check-sat (not b!2330230) (not b!2330225) (not b!2330219) tp_is_empty!10949 (not b!2330222) (not start!230284) (not b!2330229) (not b!2330227))
(check-sat)
(get-model)

(declare-fun d!689853 () Bool)

(declare-fun nullableFct!466 (Regex!6819) Bool)

(assert (=> d!689853 (= (nullable!1898 r!26197) (nullableFct!466 r!26197))))

(declare-fun bs!459777 () Bool)

(assert (= bs!459777 d!689853))

(declare-fun m!2760535 () Bool)

(assert (=> bs!459777 m!2760535))

(assert (=> b!2330229 d!689853))

(declare-fun b!2330249 () Bool)

(declare-fun e!1493070 () Bool)

(declare-fun call!139000 () Bool)

(assert (=> b!2330249 (= e!1493070 call!139000)))

(declare-fun b!2330250 () Bool)

(declare-fun e!1493075 () Bool)

(declare-fun e!1493071 () Bool)

(assert (=> b!2330250 (= e!1493075 e!1493071)))

(declare-fun res!994866 () Bool)

(assert (=> b!2330250 (= res!994866 (not (nullable!1898 (reg!7148 r!26197))))))

(assert (=> b!2330250 (=> (not res!994866) (not e!1493071))))

(declare-fun b!2330251 () Bool)

(declare-fun res!994867 () Bool)

(assert (=> b!2330251 (=> (not res!994867) (not e!1493070))))

(declare-fun call!138999 () Bool)

(assert (=> b!2330251 (= res!994867 call!138999)))

(declare-fun e!1493073 () Bool)

(assert (=> b!2330251 (= e!1493073 e!1493070)))

(declare-fun b!2330252 () Bool)

(declare-fun call!139001 () Bool)

(assert (=> b!2330252 (= e!1493071 call!139001)))

(declare-fun b!2330253 () Bool)

(declare-fun e!1493074 () Bool)

(declare-fun e!1493072 () Bool)

(assert (=> b!2330253 (= e!1493074 e!1493072)))

(declare-fun res!994868 () Bool)

(assert (=> b!2330253 (=> (not res!994868) (not e!1493072))))

(assert (=> b!2330253 (= res!994868 call!138999)))

(declare-fun bm!138994 () Bool)

(declare-fun c!370169 () Bool)

(assert (=> bm!138994 (= call!138999 (validRegex!2564 (ite c!370169 (regOne!14151 r!26197) (regOne!14150 r!26197))))))

(declare-fun b!2330254 () Bool)

(declare-fun e!1493069 () Bool)

(assert (=> b!2330254 (= e!1493069 e!1493075)))

(declare-fun c!370168 () Bool)

(assert (=> b!2330254 (= c!370168 ((_ is Star!6819) r!26197))))

(declare-fun b!2330255 () Bool)

(assert (=> b!2330255 (= e!1493075 e!1493073)))

(assert (=> b!2330255 (= c!370169 ((_ is Union!6819) r!26197))))

(declare-fun d!689855 () Bool)

(declare-fun res!994869 () Bool)

(assert (=> d!689855 (=> res!994869 e!1493069)))

(assert (=> d!689855 (= res!994869 ((_ is ElementMatch!6819) r!26197))))

(assert (=> d!689855 (= (validRegex!2564 r!26197) e!1493069)))

(declare-fun bm!138995 () Bool)

(assert (=> bm!138995 (= call!139001 (validRegex!2564 (ite c!370168 (reg!7148 r!26197) (ite c!370169 (regTwo!14151 r!26197) (regTwo!14150 r!26197)))))))

(declare-fun b!2330256 () Bool)

(declare-fun res!994870 () Bool)

(assert (=> b!2330256 (=> res!994870 e!1493074)))

(assert (=> b!2330256 (= res!994870 (not ((_ is Concat!11441) r!26197)))))

(assert (=> b!2330256 (= e!1493073 e!1493074)))

(declare-fun b!2330257 () Bool)

(assert (=> b!2330257 (= e!1493072 call!139000)))

(declare-fun bm!138996 () Bool)

(assert (=> bm!138996 (= call!139000 call!139001)))

(assert (= (and d!689855 (not res!994869)) b!2330254))

(assert (= (and b!2330254 c!370168) b!2330250))

(assert (= (and b!2330254 (not c!370168)) b!2330255))

(assert (= (and b!2330250 res!994866) b!2330252))

(assert (= (and b!2330255 c!370169) b!2330251))

(assert (= (and b!2330255 (not c!370169)) b!2330256))

(assert (= (and b!2330251 res!994867) b!2330249))

(assert (= (and b!2330256 (not res!994870)) b!2330253))

(assert (= (and b!2330253 res!994868) b!2330257))

(assert (= (or b!2330249 b!2330257) bm!138996))

(assert (= (or b!2330251 b!2330253) bm!138994))

(assert (= (or b!2330252 bm!138996) bm!138995))

(declare-fun m!2760539 () Bool)

(assert (=> b!2330250 m!2760539))

(declare-fun m!2760541 () Bool)

(assert (=> bm!138994 m!2760541))

(declare-fun m!2760543 () Bool)

(assert (=> bm!138995 m!2760543))

(assert (=> start!230284 d!689855))

(declare-fun b!2330258 () Bool)

(declare-fun e!1493077 () Bool)

(declare-fun call!139003 () Bool)

(assert (=> b!2330258 (= e!1493077 call!139003)))

(declare-fun b!2330259 () Bool)

(declare-fun e!1493082 () Bool)

(declare-fun e!1493078 () Bool)

(assert (=> b!2330259 (= e!1493082 e!1493078)))

(declare-fun res!994871 () Bool)

(assert (=> b!2330259 (= res!994871 (not (nullable!1898 (reg!7148 (regOne!14151 r!26197)))))))

(assert (=> b!2330259 (=> (not res!994871) (not e!1493078))))

(declare-fun b!2330260 () Bool)

(declare-fun res!994872 () Bool)

(assert (=> b!2330260 (=> (not res!994872) (not e!1493077))))

(declare-fun call!139002 () Bool)

(assert (=> b!2330260 (= res!994872 call!139002)))

(declare-fun e!1493080 () Bool)

(assert (=> b!2330260 (= e!1493080 e!1493077)))

(declare-fun b!2330261 () Bool)

(declare-fun call!139004 () Bool)

(assert (=> b!2330261 (= e!1493078 call!139004)))

(declare-fun b!2330262 () Bool)

(declare-fun e!1493081 () Bool)

(declare-fun e!1493079 () Bool)

(assert (=> b!2330262 (= e!1493081 e!1493079)))

(declare-fun res!994873 () Bool)

(assert (=> b!2330262 (=> (not res!994873) (not e!1493079))))

(assert (=> b!2330262 (= res!994873 call!139002)))

(declare-fun bm!138997 () Bool)

(declare-fun c!370171 () Bool)

(assert (=> bm!138997 (= call!139002 (validRegex!2564 (ite c!370171 (regOne!14151 (regOne!14151 r!26197)) (regOne!14150 (regOne!14151 r!26197)))))))

(declare-fun b!2330263 () Bool)

(declare-fun e!1493076 () Bool)

(assert (=> b!2330263 (= e!1493076 e!1493082)))

(declare-fun c!370170 () Bool)

(assert (=> b!2330263 (= c!370170 ((_ is Star!6819) (regOne!14151 r!26197)))))

(declare-fun b!2330264 () Bool)

(assert (=> b!2330264 (= e!1493082 e!1493080)))

(assert (=> b!2330264 (= c!370171 ((_ is Union!6819) (regOne!14151 r!26197)))))

(declare-fun d!689861 () Bool)

(declare-fun res!994874 () Bool)

(assert (=> d!689861 (=> res!994874 e!1493076)))

(assert (=> d!689861 (= res!994874 ((_ is ElementMatch!6819) (regOne!14151 r!26197)))))

(assert (=> d!689861 (= (validRegex!2564 (regOne!14151 r!26197)) e!1493076)))

(declare-fun bm!138998 () Bool)

(assert (=> bm!138998 (= call!139004 (validRegex!2564 (ite c!370170 (reg!7148 (regOne!14151 r!26197)) (ite c!370171 (regTwo!14151 (regOne!14151 r!26197)) (regTwo!14150 (regOne!14151 r!26197))))))))

(declare-fun b!2330265 () Bool)

(declare-fun res!994875 () Bool)

(assert (=> b!2330265 (=> res!994875 e!1493081)))

(assert (=> b!2330265 (= res!994875 (not ((_ is Concat!11441) (regOne!14151 r!26197))))))

(assert (=> b!2330265 (= e!1493080 e!1493081)))

(declare-fun b!2330266 () Bool)

(assert (=> b!2330266 (= e!1493079 call!139003)))

(declare-fun bm!138999 () Bool)

(assert (=> bm!138999 (= call!139003 call!139004)))

(assert (= (and d!689861 (not res!994874)) b!2330263))

(assert (= (and b!2330263 c!370170) b!2330259))

(assert (= (and b!2330263 (not c!370170)) b!2330264))

(assert (= (and b!2330259 res!994871) b!2330261))

(assert (= (and b!2330264 c!370171) b!2330260))

(assert (= (and b!2330264 (not c!370171)) b!2330265))

(assert (= (and b!2330260 res!994872) b!2330258))

(assert (= (and b!2330265 (not res!994875)) b!2330262))

(assert (= (and b!2330262 res!994873) b!2330266))

(assert (= (or b!2330258 b!2330266) bm!138999))

(assert (= (or b!2330260 b!2330262) bm!138997))

(assert (= (or b!2330261 bm!138999) bm!138998))

(declare-fun m!2760545 () Bool)

(assert (=> b!2330259 m!2760545))

(declare-fun m!2760547 () Bool)

(assert (=> bm!138997 m!2760547))

(declare-fun m!2760549 () Bool)

(assert (=> bm!138998 m!2760549))

(assert (=> b!2330227 d!689861))

(declare-fun d!689863 () Bool)

(assert (=> d!689863 (= (nullable!1898 (regTwo!14151 r!26197)) (nullableFct!466 (regTwo!14151 r!26197)))))

(declare-fun bs!459779 () Bool)

(assert (= bs!459779 d!689863))

(declare-fun m!2760551 () Bool)

(assert (=> bs!459779 m!2760551))

(assert (=> b!2330227 d!689863))

(declare-fun d!689865 () Bool)

(assert (=> d!689865 (= (nullable!1898 (regOne!14151 r!26197)) (nullableFct!466 (regOne!14151 r!26197)))))

(declare-fun bs!459780 () Bool)

(assert (= bs!459780 d!689865))

(declare-fun m!2760553 () Bool)

(assert (=> bs!459780 m!2760553))

(assert (=> b!2330227 d!689865))

(declare-fun d!689867 () Bool)

(assert (=> d!689867 (= (nullable!1898 (derivativeStep!1558 r!26197 c!13498)) (nullableFct!466 (derivativeStep!1558 r!26197 c!13498)))))

(declare-fun bs!459781 () Bool)

(assert (= bs!459781 d!689867))

(assert (=> bs!459781 m!2760521))

(declare-fun m!2760555 () Bool)

(assert (=> bs!459781 m!2760555))

(assert (=> b!2330222 d!689867))

(declare-fun call!139027 () Regex!6819)

(declare-fun call!139026 () Regex!6819)

(declare-fun b!2330335 () Bool)

(declare-fun e!1493125 () Regex!6819)

(assert (=> b!2330335 (= e!1493125 (Union!6819 (Concat!11441 call!139027 (regTwo!14150 r!26197)) call!139026))))

(declare-fun bm!139020 () Bool)

(declare-fun call!139028 () Regex!6819)

(assert (=> bm!139020 (= call!139027 call!139028)))

(declare-fun b!2330336 () Bool)

(declare-fun c!370202 () Bool)

(assert (=> b!2330336 (= c!370202 ((_ is Union!6819) r!26197))))

(declare-fun e!1493124 () Regex!6819)

(declare-fun e!1493126 () Regex!6819)

(assert (=> b!2330336 (= e!1493124 e!1493126)))

(declare-fun bm!139021 () Bool)

(assert (=> bm!139021 (= call!139026 (derivativeStep!1558 (ite c!370202 (regOne!14151 r!26197) (regTwo!14150 r!26197)) c!13498))))

(declare-fun d!689869 () Bool)

(declare-fun lt!862231 () Regex!6819)

(assert (=> d!689869 (validRegex!2564 lt!862231)))

(declare-fun e!1493123 () Regex!6819)

(assert (=> d!689869 (= lt!862231 e!1493123)))

(declare-fun c!370201 () Bool)

(assert (=> d!689869 (= c!370201 (or ((_ is EmptyExpr!6819) r!26197) ((_ is EmptyLang!6819) r!26197)))))

(assert (=> d!689869 (validRegex!2564 r!26197)))

(assert (=> d!689869 (= (derivativeStep!1558 r!26197 c!13498) lt!862231)))

(declare-fun b!2330337 () Bool)

(assert (=> b!2330337 (= e!1493123 e!1493124)))

(declare-fun c!370204 () Bool)

(assert (=> b!2330337 (= c!370204 ((_ is ElementMatch!6819) r!26197))))

(declare-fun b!2330338 () Bool)

(declare-fun c!370205 () Bool)

(assert (=> b!2330338 (= c!370205 (nullable!1898 (regOne!14150 r!26197)))))

(declare-fun e!1493122 () Regex!6819)

(assert (=> b!2330338 (= e!1493122 e!1493125)))

(declare-fun bm!139022 () Bool)

(declare-fun call!139025 () Regex!6819)

(assert (=> bm!139022 (= call!139028 call!139025)))

(declare-fun b!2330339 () Bool)

(assert (=> b!2330339 (= e!1493126 e!1493122)))

(declare-fun c!370203 () Bool)

(assert (=> b!2330339 (= c!370203 ((_ is Star!6819) r!26197))))

(declare-fun b!2330340 () Bool)

(assert (=> b!2330340 (= e!1493124 (ite (= c!13498 (c!370163 r!26197)) EmptyExpr!6819 EmptyLang!6819))))

(declare-fun b!2330341 () Bool)

(assert (=> b!2330341 (= e!1493126 (Union!6819 call!139026 call!139025))))

(declare-fun b!2330342 () Bool)

(assert (=> b!2330342 (= e!1493123 EmptyLang!6819)))

(declare-fun b!2330343 () Bool)

(assert (=> b!2330343 (= e!1493122 (Concat!11441 call!139028 r!26197))))

(declare-fun b!2330344 () Bool)

(assert (=> b!2330344 (= e!1493125 (Union!6819 (Concat!11441 call!139027 (regTwo!14150 r!26197)) EmptyLang!6819))))

(declare-fun bm!139023 () Bool)

(assert (=> bm!139023 (= call!139025 (derivativeStep!1558 (ite c!370202 (regTwo!14151 r!26197) (ite c!370203 (reg!7148 r!26197) (regOne!14150 r!26197))) c!13498))))

(assert (= (and d!689869 c!370201) b!2330342))

(assert (= (and d!689869 (not c!370201)) b!2330337))

(assert (= (and b!2330337 c!370204) b!2330340))

(assert (= (and b!2330337 (not c!370204)) b!2330336))

(assert (= (and b!2330336 c!370202) b!2330341))

(assert (= (and b!2330336 (not c!370202)) b!2330339))

(assert (= (and b!2330339 c!370203) b!2330343))

(assert (= (and b!2330339 (not c!370203)) b!2330338))

(assert (= (and b!2330338 c!370205) b!2330335))

(assert (= (and b!2330338 (not c!370205)) b!2330344))

(assert (= (or b!2330335 b!2330344) bm!139020))

(assert (= (or b!2330343 bm!139020) bm!139022))

(assert (= (or b!2330341 bm!139022) bm!139023))

(assert (= (or b!2330341 b!2330335) bm!139021))

(declare-fun m!2760565 () Bool)

(assert (=> bm!139021 m!2760565))

(declare-fun m!2760567 () Bool)

(assert (=> d!689869 m!2760567))

(assert (=> d!689869 m!2760525))

(declare-fun m!2760569 () Bool)

(assert (=> b!2330338 m!2760569))

(declare-fun m!2760571 () Bool)

(assert (=> bm!139023 m!2760571))

(assert (=> b!2330222 d!689869))

(declare-fun b!2330358 () Bool)

(declare-fun e!1493129 () Bool)

(declare-fun tp!738395 () Bool)

(declare-fun tp!738392 () Bool)

(assert (=> b!2330358 (= e!1493129 (and tp!738395 tp!738392))))

(declare-fun b!2330355 () Bool)

(assert (=> b!2330355 (= e!1493129 tp_is_empty!10949)))

(declare-fun b!2330357 () Bool)

(declare-fun tp!738394 () Bool)

(assert (=> b!2330357 (= e!1493129 tp!738394)))

(declare-fun b!2330356 () Bool)

(declare-fun tp!738393 () Bool)

(declare-fun tp!738396 () Bool)

(assert (=> b!2330356 (= e!1493129 (and tp!738393 tp!738396))))

(assert (=> b!2330219 (= tp!738379 e!1493129)))

(assert (= (and b!2330219 ((_ is ElementMatch!6819) (reg!7148 r!26197))) b!2330355))

(assert (= (and b!2330219 ((_ is Concat!11441) (reg!7148 r!26197))) b!2330356))

(assert (= (and b!2330219 ((_ is Star!6819) (reg!7148 r!26197))) b!2330357))

(assert (= (and b!2330219 ((_ is Union!6819) (reg!7148 r!26197))) b!2330358))

(declare-fun b!2330362 () Bool)

(declare-fun e!1493130 () Bool)

(declare-fun tp!738400 () Bool)

(declare-fun tp!738397 () Bool)

(assert (=> b!2330362 (= e!1493130 (and tp!738400 tp!738397))))

(declare-fun b!2330359 () Bool)

(assert (=> b!2330359 (= e!1493130 tp_is_empty!10949)))

(declare-fun b!2330361 () Bool)

(declare-fun tp!738399 () Bool)

(assert (=> b!2330361 (= e!1493130 tp!738399)))

(declare-fun b!2330360 () Bool)

(declare-fun tp!738398 () Bool)

(declare-fun tp!738401 () Bool)

(assert (=> b!2330360 (= e!1493130 (and tp!738398 tp!738401))))

(assert (=> b!2330225 (= tp!738380 e!1493130)))

(assert (= (and b!2330225 ((_ is ElementMatch!6819) (regOne!14151 r!26197))) b!2330359))

(assert (= (and b!2330225 ((_ is Concat!11441) (regOne!14151 r!26197))) b!2330360))

(assert (= (and b!2330225 ((_ is Star!6819) (regOne!14151 r!26197))) b!2330361))

(assert (= (and b!2330225 ((_ is Union!6819) (regOne!14151 r!26197))) b!2330362))

(declare-fun b!2330366 () Bool)

(declare-fun e!1493131 () Bool)

(declare-fun tp!738405 () Bool)

(declare-fun tp!738402 () Bool)

(assert (=> b!2330366 (= e!1493131 (and tp!738405 tp!738402))))

(declare-fun b!2330363 () Bool)

(assert (=> b!2330363 (= e!1493131 tp_is_empty!10949)))

(declare-fun b!2330365 () Bool)

(declare-fun tp!738404 () Bool)

(assert (=> b!2330365 (= e!1493131 tp!738404)))

(declare-fun b!2330364 () Bool)

(declare-fun tp!738403 () Bool)

(declare-fun tp!738406 () Bool)

(assert (=> b!2330364 (= e!1493131 (and tp!738403 tp!738406))))

(assert (=> b!2330225 (= tp!738381 e!1493131)))

(assert (= (and b!2330225 ((_ is ElementMatch!6819) (regTwo!14151 r!26197))) b!2330363))

(assert (= (and b!2330225 ((_ is Concat!11441) (regTwo!14151 r!26197))) b!2330364))

(assert (= (and b!2330225 ((_ is Star!6819) (regTwo!14151 r!26197))) b!2330365))

(assert (= (and b!2330225 ((_ is Union!6819) (regTwo!14151 r!26197))) b!2330366))

(declare-fun b!2330370 () Bool)

(declare-fun e!1493132 () Bool)

(declare-fun tp!738410 () Bool)

(declare-fun tp!738407 () Bool)

(assert (=> b!2330370 (= e!1493132 (and tp!738410 tp!738407))))

(declare-fun b!2330367 () Bool)

(assert (=> b!2330367 (= e!1493132 tp_is_empty!10949)))

(declare-fun b!2330369 () Bool)

(declare-fun tp!738409 () Bool)

(assert (=> b!2330369 (= e!1493132 tp!738409)))

(declare-fun b!2330368 () Bool)

(declare-fun tp!738408 () Bool)

(declare-fun tp!738411 () Bool)

(assert (=> b!2330368 (= e!1493132 (and tp!738408 tp!738411))))

(assert (=> b!2330230 (= tp!738378 e!1493132)))

(assert (= (and b!2330230 ((_ is ElementMatch!6819) (regOne!14150 r!26197))) b!2330367))

(assert (= (and b!2330230 ((_ is Concat!11441) (regOne!14150 r!26197))) b!2330368))

(assert (= (and b!2330230 ((_ is Star!6819) (regOne!14150 r!26197))) b!2330369))

(assert (= (and b!2330230 ((_ is Union!6819) (regOne!14150 r!26197))) b!2330370))

(declare-fun b!2330374 () Bool)

(declare-fun e!1493133 () Bool)

(declare-fun tp!738415 () Bool)

(declare-fun tp!738412 () Bool)

(assert (=> b!2330374 (= e!1493133 (and tp!738415 tp!738412))))

(declare-fun b!2330371 () Bool)

(assert (=> b!2330371 (= e!1493133 tp_is_empty!10949)))

(declare-fun b!2330373 () Bool)

(declare-fun tp!738414 () Bool)

(assert (=> b!2330373 (= e!1493133 tp!738414)))

(declare-fun b!2330372 () Bool)

(declare-fun tp!738413 () Bool)

(declare-fun tp!738416 () Bool)

(assert (=> b!2330372 (= e!1493133 (and tp!738413 tp!738416))))

(assert (=> b!2330230 (= tp!738377 e!1493133)))

(assert (= (and b!2330230 ((_ is ElementMatch!6819) (regTwo!14150 r!26197))) b!2330371))

(assert (= (and b!2330230 ((_ is Concat!11441) (regTwo!14150 r!26197))) b!2330372))

(assert (= (and b!2330230 ((_ is Star!6819) (regTwo!14150 r!26197))) b!2330373))

(assert (= (and b!2330230 ((_ is Union!6819) (regTwo!14150 r!26197))) b!2330374))

(check-sat (not bm!139023) (not bm!138997) (not b!2330259) (not b!2330368) (not b!2330360) (not b!2330372) (not b!2330370) (not b!2330369) (not b!2330366) (not b!2330357) (not bm!138995) (not b!2330364) (not b!2330373) (not d!689867) (not d!689869) (not bm!138994) (not b!2330250) tp_is_empty!10949 (not bm!138998) (not d!689865) (not b!2330365) (not b!2330358) (not b!2330362) (not bm!139021) (not d!689853) (not b!2330356) (not d!689863) (not b!2330374) (not b!2330361) (not b!2330338))
(check-sat)
