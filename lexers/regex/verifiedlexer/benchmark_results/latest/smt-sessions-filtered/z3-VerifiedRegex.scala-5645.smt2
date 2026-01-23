; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282130 () Bool)

(assert start!282130)

(declare-fun b!2894995 () Bool)

(declare-fun res!1197460 () Bool)

(declare-fun e!1829176 () Bool)

(assert (=> b!2894995 (=> (not res!1197460) (not e!1829176))))

(declare-datatypes ((C!17872 0))(
  ( (C!17873 (val!10970 Int)) )
))
(declare-datatypes ((Regex!8845 0))(
  ( (ElementMatch!8845 (c!471056 C!17872)) (Concat!14166 (regOne!18202 Regex!8845) (regTwo!18202 Regex!8845)) (EmptyExpr!8845) (Star!8845 (reg!9174 Regex!8845)) (EmptyLang!8845) (Union!8845 (regOne!18203 Regex!8845) (regTwo!18203 Regex!8845)) )
))
(declare-fun r!23079 () Regex!8845)

(get-info :version)

(assert (=> b!2894995 (= res!1197460 (and (not ((_ is EmptyExpr!8845) r!23079)) (not ((_ is EmptyLang!8845) r!23079)) (not ((_ is ElementMatch!8845) r!23079)) (not ((_ is Star!8845) r!23079)) ((_ is Union!8845) r!23079)))))

(declare-fun b!2894996 () Bool)

(declare-fun res!1197462 () Bool)

(assert (=> b!2894996 (=> (not res!1197462) (not e!1829176))))

(declare-datatypes ((List!34646 0))(
  ( (Nil!34522) (Cons!34522 (h!39942 C!17872) (t!233689 List!34646)) )
))
(declare-datatypes ((Option!6518 0))(
  ( (None!6517) (Some!6517 (v!34643 List!34646)) )
))
(declare-fun isDefined!5082 (Option!6518) Bool)

(declare-fun getLanguageWitness!552 (Regex!8845) Option!6518)

(assert (=> b!2894996 (= res!1197462 (isDefined!5082 (getLanguageWitness!552 r!23079)))))

(declare-fun b!2894998 () Bool)

(declare-fun e!1829177 () Bool)

(declare-fun tp!929275 () Bool)

(declare-fun tp!929279 () Bool)

(assert (=> b!2894998 (= e!1829177 (and tp!929275 tp!929279))))

(declare-fun b!2894999 () Bool)

(declare-fun lt!1021493 () Option!6518)

(assert (=> b!2894999 (= e!1829176 (not (isDefined!5082 lt!1021493)))))

(declare-fun matchR!3809 (Regex!8845 List!34646) Bool)

(declare-fun get!10464 (Option!6518) List!34646)

(assert (=> b!2894999 (matchR!3809 (regTwo!18203 r!23079) (get!10464 lt!1021493))))

(declare-datatypes ((Unit!48107 0))(
  ( (Unit!48108) )
))
(declare-fun lt!1021494 () Unit!48107)

(declare-fun lemmaGetWitnessMatches!108 (Regex!8845) Unit!48107)

(assert (=> b!2894999 (= lt!1021494 (lemmaGetWitnessMatches!108 (regTwo!18203 r!23079)))))

(assert (=> b!2894999 (= lt!1021493 (getLanguageWitness!552 (regTwo!18203 r!23079)))))

(declare-fun b!2895000 () Bool)

(declare-fun tp_is_empty!15277 () Bool)

(assert (=> b!2895000 (= e!1829177 tp_is_empty!15277)))

(declare-fun b!2894997 () Bool)

(declare-fun tp!929277 () Bool)

(assert (=> b!2894997 (= e!1829177 tp!929277)))

(declare-fun res!1197461 () Bool)

(assert (=> start!282130 (=> (not res!1197461) (not e!1829176))))

(declare-fun validRegex!3618 (Regex!8845) Bool)

(assert (=> start!282130 (= res!1197461 (validRegex!3618 r!23079))))

(assert (=> start!282130 e!1829176))

(assert (=> start!282130 e!1829177))

(declare-fun b!2895001 () Bool)

(declare-fun tp!929278 () Bool)

(declare-fun tp!929276 () Bool)

(assert (=> b!2895001 (= e!1829177 (and tp!929278 tp!929276))))

(declare-fun b!2895002 () Bool)

(declare-fun res!1197463 () Bool)

(assert (=> b!2895002 (=> (not res!1197463) (not e!1829176))))

(assert (=> b!2895002 (= res!1197463 (not ((_ is Some!6517) (getLanguageWitness!552 (regOne!18203 r!23079)))))))

(assert (= (and start!282130 res!1197461) b!2894996))

(assert (= (and b!2894996 res!1197462) b!2894995))

(assert (= (and b!2894995 res!1197460) b!2895002))

(assert (= (and b!2895002 res!1197463) b!2894999))

(assert (= (and start!282130 ((_ is ElementMatch!8845) r!23079)) b!2895000))

(assert (= (and start!282130 ((_ is Concat!14166) r!23079)) b!2895001))

(assert (= (and start!282130 ((_ is Star!8845) r!23079)) b!2894997))

(assert (= (and start!282130 ((_ is Union!8845) r!23079)) b!2894998))

(declare-fun m!3303865 () Bool)

(assert (=> b!2894996 m!3303865))

(assert (=> b!2894996 m!3303865))

(declare-fun m!3303867 () Bool)

(assert (=> b!2894996 m!3303867))

(declare-fun m!3303869 () Bool)

(assert (=> b!2894999 m!3303869))

(declare-fun m!3303871 () Bool)

(assert (=> b!2894999 m!3303871))

(assert (=> b!2894999 m!3303869))

(declare-fun m!3303873 () Bool)

(assert (=> b!2894999 m!3303873))

(declare-fun m!3303875 () Bool)

(assert (=> b!2894999 m!3303875))

(declare-fun m!3303877 () Bool)

(assert (=> b!2894999 m!3303877))

(declare-fun m!3303879 () Bool)

(assert (=> start!282130 m!3303879))

(declare-fun m!3303881 () Bool)

(assert (=> b!2895002 m!3303881))

(check-sat (not b!2894997) (not b!2894999) (not b!2894996) (not start!282130) (not b!2895001) (not b!2895002) (not b!2894998) tp_is_empty!15277)
(check-sat)
(get-model)

(declare-fun d!834794 () Bool)

(assert (=> d!834794 (= (get!10464 lt!1021493) (v!34643 lt!1021493))))

(assert (=> b!2894999 d!834794))

(declare-fun bm!188263 () Bool)

(declare-fun call!188269 () Option!6518)

(declare-fun c!471082 () Bool)

(assert (=> bm!188263 (= call!188269 (getLanguageWitness!552 (ite c!471082 (regOne!18203 (regTwo!18203 r!23079)) (regTwo!18202 (regTwo!18203 r!23079)))))))

(declare-fun b!2895062 () Bool)

(assert (=> b!2895062 (= c!471082 ((_ is Union!8845) (regTwo!18203 r!23079)))))

(declare-fun e!1829221 () Option!6518)

(declare-fun e!1829217 () Option!6518)

(assert (=> b!2895062 (= e!1829221 e!1829217)))

(declare-fun d!834796 () Bool)

(declare-fun c!471085 () Bool)

(assert (=> d!834796 (= c!471085 ((_ is EmptyExpr!8845) (regTwo!18203 r!23079)))))

(declare-fun e!1829222 () Option!6518)

(assert (=> d!834796 (= (getLanguageWitness!552 (regTwo!18203 r!23079)) e!1829222)))

(declare-fun b!2895063 () Bool)

(assert (=> b!2895063 (= e!1829221 (Some!6517 Nil!34522))))

(declare-fun b!2895064 () Bool)

(declare-fun e!1829215 () Option!6518)

(assert (=> b!2895064 (= e!1829215 (Some!6517 (Cons!34522 (c!471056 (regTwo!18203 r!23079)) Nil!34522)))))

(declare-fun bm!188264 () Bool)

(declare-fun call!188268 () Option!6518)

(assert (=> bm!188264 (= call!188268 (getLanguageWitness!552 (ite c!471082 (regTwo!18203 (regTwo!18203 r!23079)) (regOne!18202 (regTwo!18203 r!23079)))))))

(declare-fun b!2895065 () Bool)

(declare-fun e!1829218 () Option!6518)

(assert (=> b!2895065 (= e!1829218 None!6517)))

(declare-fun b!2895066 () Bool)

(declare-fun e!1829220 () Option!6518)

(assert (=> b!2895066 (= e!1829222 e!1829220)))

(declare-fun c!471083 () Bool)

(assert (=> b!2895066 (= c!471083 ((_ is EmptyLang!8845) (regTwo!18203 r!23079)))))

(declare-fun b!2895067 () Bool)

(assert (=> b!2895067 (= e!1829220 None!6517)))

(declare-fun b!2895068 () Bool)

(declare-fun e!1829219 () Option!6518)

(assert (=> b!2895068 (= e!1829217 e!1829219)))

(declare-fun lt!1021502 () Option!6518)

(assert (=> b!2895068 (= lt!1021502 call!188269)))

(declare-fun c!471084 () Bool)

(assert (=> b!2895068 (= c!471084 ((_ is Some!6517) lt!1021502))))

(declare-fun b!2895069 () Bool)

(declare-fun c!471086 () Bool)

(declare-fun lt!1021503 () Option!6518)

(assert (=> b!2895069 (= c!471086 ((_ is Some!6517) lt!1021503))))

(assert (=> b!2895069 (= lt!1021503 call!188269)))

(declare-fun e!1829216 () Option!6518)

(assert (=> b!2895069 (= e!1829216 e!1829218)))

(declare-fun b!2895070 () Bool)

(assert (=> b!2895070 (= e!1829216 None!6517)))

(declare-fun b!2895071 () Bool)

(assert (=> b!2895071 (= e!1829217 e!1829216)))

(declare-fun lt!1021501 () Option!6518)

(assert (=> b!2895071 (= lt!1021501 call!188268)))

(declare-fun c!471079 () Bool)

(assert (=> b!2895071 (= c!471079 ((_ is Some!6517) lt!1021501))))

(declare-fun b!2895072 () Bool)

(assert (=> b!2895072 (= e!1829222 (Some!6517 Nil!34522))))

(declare-fun b!2895073 () Bool)

(assert (=> b!2895073 (= e!1829215 e!1829221)))

(declare-fun c!471080 () Bool)

(assert (=> b!2895073 (= c!471080 ((_ is Star!8845) (regTwo!18203 r!23079)))))

(declare-fun b!2895074 () Bool)

(declare-fun ++!8243 (List!34646 List!34646) List!34646)

(assert (=> b!2895074 (= e!1829218 (Some!6517 (++!8243 (v!34643 lt!1021501) (v!34643 lt!1021503))))))

(declare-fun b!2895075 () Bool)

(assert (=> b!2895075 (= e!1829219 call!188268)))

(declare-fun b!2895076 () Bool)

(assert (=> b!2895076 (= e!1829219 lt!1021502)))

(declare-fun b!2895077 () Bool)

(declare-fun c!471081 () Bool)

(assert (=> b!2895077 (= c!471081 ((_ is ElementMatch!8845) (regTwo!18203 r!23079)))))

(assert (=> b!2895077 (= e!1829220 e!1829215)))

(assert (= (and d!834796 c!471085) b!2895072))

(assert (= (and d!834796 (not c!471085)) b!2895066))

(assert (= (and b!2895066 c!471083) b!2895067))

(assert (= (and b!2895066 (not c!471083)) b!2895077))

(assert (= (and b!2895077 c!471081) b!2895064))

(assert (= (and b!2895077 (not c!471081)) b!2895073))

(assert (= (and b!2895073 c!471080) b!2895063))

(assert (= (and b!2895073 (not c!471080)) b!2895062))

(assert (= (and b!2895062 c!471082) b!2895068))

(assert (= (and b!2895062 (not c!471082)) b!2895071))

(assert (= (and b!2895068 c!471084) b!2895076))

(assert (= (and b!2895068 (not c!471084)) b!2895075))

(assert (= (and b!2895071 c!471079) b!2895069))

(assert (= (and b!2895071 (not c!471079)) b!2895070))

(assert (= (and b!2895069 c!471086) b!2895074))

(assert (= (and b!2895069 (not c!471086)) b!2895065))

(assert (= (or b!2895075 b!2895071) bm!188264))

(assert (= (or b!2895068 b!2895069) bm!188263))

(declare-fun m!3303889 () Bool)

(assert (=> bm!188263 m!3303889))

(declare-fun m!3303891 () Bool)

(assert (=> bm!188264 m!3303891))

(declare-fun m!3303893 () Bool)

(assert (=> b!2895074 m!3303893))

(assert (=> b!2894999 d!834796))

(declare-fun d!834802 () Bool)

(assert (=> d!834802 (matchR!3809 (regTwo!18203 r!23079) (get!10464 (getLanguageWitness!552 (regTwo!18203 r!23079))))))

(declare-fun lt!1021512 () Unit!48107)

(declare-fun choose!17074 (Regex!8845) Unit!48107)

(assert (=> d!834802 (= lt!1021512 (choose!17074 (regTwo!18203 r!23079)))))

(assert (=> d!834802 (validRegex!3618 (regTwo!18203 r!23079))))

(assert (=> d!834802 (= (lemmaGetWitnessMatches!108 (regTwo!18203 r!23079)) lt!1021512)))

(declare-fun bs!523933 () Bool)

(assert (= bs!523933 d!834802))

(assert (=> bs!523933 m!3303877))

(declare-fun m!3303895 () Bool)

(assert (=> bs!523933 m!3303895))

(assert (=> bs!523933 m!3303877))

(assert (=> bs!523933 m!3303895))

(declare-fun m!3303897 () Bool)

(assert (=> bs!523933 m!3303897))

(declare-fun m!3303899 () Bool)

(assert (=> bs!523933 m!3303899))

(declare-fun m!3303901 () Bool)

(assert (=> bs!523933 m!3303901))

(assert (=> b!2894999 d!834802))

(declare-fun d!834804 () Bool)

(declare-fun isEmpty!18829 (Option!6518) Bool)

(assert (=> d!834804 (= (isDefined!5082 lt!1021493) (not (isEmpty!18829 lt!1021493)))))

(declare-fun bs!523934 () Bool)

(assert (= bs!523934 d!834804))

(declare-fun m!3303903 () Bool)

(assert (=> bs!523934 m!3303903))

(assert (=> b!2894999 d!834804))

(declare-fun bm!188277 () Bool)

(declare-fun call!188282 () Bool)

(declare-fun isEmpty!18830 (List!34646) Bool)

(assert (=> bm!188277 (= call!188282 (isEmpty!18830 (get!10464 lt!1021493)))))

(declare-fun b!2895186 () Bool)

(declare-fun e!1829279 () Bool)

(declare-fun e!1829282 () Bool)

(assert (=> b!2895186 (= e!1829279 e!1829282)))

(declare-fun res!1197498 () Bool)

(assert (=> b!2895186 (=> res!1197498 e!1829282)))

(assert (=> b!2895186 (= res!1197498 call!188282)))

(declare-fun b!2895187 () Bool)

(declare-fun e!1829278 () Bool)

(declare-fun nullable!2745 (Regex!8845) Bool)

(assert (=> b!2895187 (= e!1829278 (nullable!2745 (regTwo!18203 r!23079)))))

(declare-fun b!2895188 () Bool)

(declare-fun res!1197499 () Bool)

(declare-fun e!1829280 () Bool)

(assert (=> b!2895188 (=> res!1197499 e!1829280)))

(assert (=> b!2895188 (= res!1197499 (not ((_ is ElementMatch!8845) (regTwo!18203 r!23079))))))

(declare-fun e!1829283 () Bool)

(assert (=> b!2895188 (= e!1829283 e!1829280)))

(declare-fun b!2895189 () Bool)

(declare-fun res!1197501 () Bool)

(assert (=> b!2895189 (=> res!1197501 e!1829280)))

(declare-fun e!1829281 () Bool)

(assert (=> b!2895189 (= res!1197501 e!1829281)))

(declare-fun res!1197500 () Bool)

(assert (=> b!2895189 (=> (not res!1197500) (not e!1829281))))

(declare-fun lt!1021527 () Bool)

(assert (=> b!2895189 (= res!1197500 lt!1021527)))

(declare-fun d!834806 () Bool)

(declare-fun e!1829277 () Bool)

(assert (=> d!834806 e!1829277))

(declare-fun c!471133 () Bool)

(assert (=> d!834806 (= c!471133 ((_ is EmptyExpr!8845) (regTwo!18203 r!23079)))))

(assert (=> d!834806 (= lt!1021527 e!1829278)))

(declare-fun c!471135 () Bool)

(assert (=> d!834806 (= c!471135 (isEmpty!18830 (get!10464 lt!1021493)))))

(assert (=> d!834806 (validRegex!3618 (regTwo!18203 r!23079))))

(assert (=> d!834806 (= (matchR!3809 (regTwo!18203 r!23079) (get!10464 lt!1021493)) lt!1021527)))

(declare-fun b!2895190 () Bool)

(declare-fun res!1197502 () Bool)

(assert (=> b!2895190 (=> (not res!1197502) (not e!1829281))))

(assert (=> b!2895190 (= res!1197502 (not call!188282))))

(declare-fun b!2895191 () Bool)

(assert (=> b!2895191 (= e!1829280 e!1829279)))

(declare-fun res!1197495 () Bool)

(assert (=> b!2895191 (=> (not res!1197495) (not e!1829279))))

(assert (=> b!2895191 (= res!1197495 (not lt!1021527))))

(declare-fun b!2895192 () Bool)

(assert (=> b!2895192 (= e!1829283 (not lt!1021527))))

(declare-fun b!2895193 () Bool)

(declare-fun head!6392 (List!34646) C!17872)

(assert (=> b!2895193 (= e!1829281 (= (head!6392 (get!10464 lt!1021493)) (c!471056 (regTwo!18203 r!23079))))))

(declare-fun b!2895194 () Bool)

(assert (=> b!2895194 (= e!1829277 (= lt!1021527 call!188282))))

(declare-fun b!2895195 () Bool)

(assert (=> b!2895195 (= e!1829277 e!1829283)))

(declare-fun c!471134 () Bool)

(assert (=> b!2895195 (= c!471134 ((_ is EmptyLang!8845) (regTwo!18203 r!23079)))))

(declare-fun b!2895196 () Bool)

(declare-fun res!1197496 () Bool)

(assert (=> b!2895196 (=> (not res!1197496) (not e!1829281))))

(declare-fun tail!4617 (List!34646) List!34646)

(assert (=> b!2895196 (= res!1197496 (isEmpty!18830 (tail!4617 (get!10464 lt!1021493))))))

(declare-fun b!2895197 () Bool)

(declare-fun res!1197497 () Bool)

(assert (=> b!2895197 (=> res!1197497 e!1829282)))

(assert (=> b!2895197 (= res!1197497 (not (isEmpty!18830 (tail!4617 (get!10464 lt!1021493)))))))

(declare-fun b!2895198 () Bool)

(declare-fun derivativeStep!2363 (Regex!8845 C!17872) Regex!8845)

(assert (=> b!2895198 (= e!1829278 (matchR!3809 (derivativeStep!2363 (regTwo!18203 r!23079) (head!6392 (get!10464 lt!1021493))) (tail!4617 (get!10464 lt!1021493))))))

(declare-fun b!2895199 () Bool)

(assert (=> b!2895199 (= e!1829282 (not (= (head!6392 (get!10464 lt!1021493)) (c!471056 (regTwo!18203 r!23079)))))))

(assert (= (and d!834806 c!471135) b!2895187))

(assert (= (and d!834806 (not c!471135)) b!2895198))

(assert (= (and d!834806 c!471133) b!2895194))

(assert (= (and d!834806 (not c!471133)) b!2895195))

(assert (= (and b!2895195 c!471134) b!2895192))

(assert (= (and b!2895195 (not c!471134)) b!2895188))

(assert (= (and b!2895188 (not res!1197499)) b!2895189))

(assert (= (and b!2895189 res!1197500) b!2895190))

(assert (= (and b!2895190 res!1197502) b!2895196))

(assert (= (and b!2895196 res!1197496) b!2895193))

(assert (= (and b!2895189 (not res!1197501)) b!2895191))

(assert (= (and b!2895191 res!1197495) b!2895186))

(assert (= (and b!2895186 (not res!1197498)) b!2895197))

(assert (= (and b!2895197 (not res!1197497)) b!2895199))

(assert (= (or b!2895194 b!2895186 b!2895190) bm!188277))

(assert (=> b!2895198 m!3303869))

(declare-fun m!3303935 () Bool)

(assert (=> b!2895198 m!3303935))

(assert (=> b!2895198 m!3303935))

(declare-fun m!3303937 () Bool)

(assert (=> b!2895198 m!3303937))

(assert (=> b!2895198 m!3303869))

(declare-fun m!3303939 () Bool)

(assert (=> b!2895198 m!3303939))

(assert (=> b!2895198 m!3303937))

(assert (=> b!2895198 m!3303939))

(declare-fun m!3303941 () Bool)

(assert (=> b!2895198 m!3303941))

(assert (=> b!2895196 m!3303869))

(assert (=> b!2895196 m!3303939))

(assert (=> b!2895196 m!3303939))

(declare-fun m!3303943 () Bool)

(assert (=> b!2895196 m!3303943))

(assert (=> b!2895193 m!3303869))

(assert (=> b!2895193 m!3303935))

(assert (=> d!834806 m!3303869))

(declare-fun m!3303945 () Bool)

(assert (=> d!834806 m!3303945))

(assert (=> d!834806 m!3303899))

(declare-fun m!3303947 () Bool)

(assert (=> b!2895187 m!3303947))

(assert (=> b!2895197 m!3303869))

(assert (=> b!2895197 m!3303939))

(assert (=> b!2895197 m!3303939))

(assert (=> b!2895197 m!3303943))

(assert (=> b!2895199 m!3303869))

(assert (=> b!2895199 m!3303935))

(assert (=> bm!188277 m!3303869))

(assert (=> bm!188277 m!3303945))

(assert (=> b!2894999 d!834806))

(declare-fun bm!188278 () Bool)

(declare-fun call!188284 () Option!6518)

(declare-fun c!471139 () Bool)

(assert (=> bm!188278 (= call!188284 (getLanguageWitness!552 (ite c!471139 (regOne!18203 (regOne!18203 r!23079)) (regTwo!18202 (regOne!18203 r!23079)))))))

(declare-fun b!2895200 () Bool)

(assert (=> b!2895200 (= c!471139 ((_ is Union!8845) (regOne!18203 r!23079)))))

(declare-fun e!1829290 () Option!6518)

(declare-fun e!1829286 () Option!6518)

(assert (=> b!2895200 (= e!1829290 e!1829286)))

(declare-fun d!834822 () Bool)

(declare-fun c!471142 () Bool)

(assert (=> d!834822 (= c!471142 ((_ is EmptyExpr!8845) (regOne!18203 r!23079)))))

(declare-fun e!1829291 () Option!6518)

(assert (=> d!834822 (= (getLanguageWitness!552 (regOne!18203 r!23079)) e!1829291)))

(declare-fun b!2895201 () Bool)

(assert (=> b!2895201 (= e!1829290 (Some!6517 Nil!34522))))

(declare-fun b!2895202 () Bool)

(declare-fun e!1829284 () Option!6518)

(assert (=> b!2895202 (= e!1829284 (Some!6517 (Cons!34522 (c!471056 (regOne!18203 r!23079)) Nil!34522)))))

(declare-fun bm!188279 () Bool)

(declare-fun call!188283 () Option!6518)

(assert (=> bm!188279 (= call!188283 (getLanguageWitness!552 (ite c!471139 (regTwo!18203 (regOne!18203 r!23079)) (regOne!18202 (regOne!18203 r!23079)))))))

(declare-fun b!2895203 () Bool)

(declare-fun e!1829287 () Option!6518)

(assert (=> b!2895203 (= e!1829287 None!6517)))

(declare-fun b!2895204 () Bool)

(declare-fun e!1829289 () Option!6518)

(assert (=> b!2895204 (= e!1829291 e!1829289)))

(declare-fun c!471140 () Bool)

(assert (=> b!2895204 (= c!471140 ((_ is EmptyLang!8845) (regOne!18203 r!23079)))))

(declare-fun b!2895205 () Bool)

(assert (=> b!2895205 (= e!1829289 None!6517)))

(declare-fun b!2895206 () Bool)

(declare-fun e!1829288 () Option!6518)

(assert (=> b!2895206 (= e!1829286 e!1829288)))

(declare-fun lt!1021529 () Option!6518)

(assert (=> b!2895206 (= lt!1021529 call!188284)))

(declare-fun c!471141 () Bool)

(assert (=> b!2895206 (= c!471141 ((_ is Some!6517) lt!1021529))))

(declare-fun b!2895207 () Bool)

(declare-fun c!471143 () Bool)

(declare-fun lt!1021530 () Option!6518)

(assert (=> b!2895207 (= c!471143 ((_ is Some!6517) lt!1021530))))

(assert (=> b!2895207 (= lt!1021530 call!188284)))

(declare-fun e!1829285 () Option!6518)

(assert (=> b!2895207 (= e!1829285 e!1829287)))

(declare-fun b!2895208 () Bool)

(assert (=> b!2895208 (= e!1829285 None!6517)))

(declare-fun b!2895209 () Bool)

(assert (=> b!2895209 (= e!1829286 e!1829285)))

(declare-fun lt!1021528 () Option!6518)

(assert (=> b!2895209 (= lt!1021528 call!188283)))

(declare-fun c!471136 () Bool)

(assert (=> b!2895209 (= c!471136 ((_ is Some!6517) lt!1021528))))

(declare-fun b!2895210 () Bool)

(assert (=> b!2895210 (= e!1829291 (Some!6517 Nil!34522))))

(declare-fun b!2895211 () Bool)

(assert (=> b!2895211 (= e!1829284 e!1829290)))

(declare-fun c!471137 () Bool)

(assert (=> b!2895211 (= c!471137 ((_ is Star!8845) (regOne!18203 r!23079)))))

(declare-fun b!2895212 () Bool)

(assert (=> b!2895212 (= e!1829287 (Some!6517 (++!8243 (v!34643 lt!1021528) (v!34643 lt!1021530))))))

(declare-fun b!2895213 () Bool)

(assert (=> b!2895213 (= e!1829288 call!188283)))

(declare-fun b!2895214 () Bool)

(assert (=> b!2895214 (= e!1829288 lt!1021529)))

(declare-fun b!2895215 () Bool)

(declare-fun c!471138 () Bool)

(assert (=> b!2895215 (= c!471138 ((_ is ElementMatch!8845) (regOne!18203 r!23079)))))

(assert (=> b!2895215 (= e!1829289 e!1829284)))

(assert (= (and d!834822 c!471142) b!2895210))

(assert (= (and d!834822 (not c!471142)) b!2895204))

(assert (= (and b!2895204 c!471140) b!2895205))

(assert (= (and b!2895204 (not c!471140)) b!2895215))

(assert (= (and b!2895215 c!471138) b!2895202))

(assert (= (and b!2895215 (not c!471138)) b!2895211))

(assert (= (and b!2895211 c!471137) b!2895201))

(assert (= (and b!2895211 (not c!471137)) b!2895200))

(assert (= (and b!2895200 c!471139) b!2895206))

(assert (= (and b!2895200 (not c!471139)) b!2895209))

(assert (= (and b!2895206 c!471141) b!2895214))

(assert (= (and b!2895206 (not c!471141)) b!2895213))

(assert (= (and b!2895209 c!471136) b!2895207))

(assert (= (and b!2895209 (not c!471136)) b!2895208))

(assert (= (and b!2895207 c!471143) b!2895212))

(assert (= (and b!2895207 (not c!471143)) b!2895203))

(assert (= (or b!2895213 b!2895209) bm!188279))

(assert (= (or b!2895206 b!2895207) bm!188278))

(declare-fun m!3303949 () Bool)

(assert (=> bm!188278 m!3303949))

(declare-fun m!3303951 () Bool)

(assert (=> bm!188279 m!3303951))

(declare-fun m!3303953 () Bool)

(assert (=> b!2895212 m!3303953))

(assert (=> b!2895002 d!834822))

(declare-fun d!834824 () Bool)

(assert (=> d!834824 (= (isDefined!5082 (getLanguageWitness!552 r!23079)) (not (isEmpty!18829 (getLanguageWitness!552 r!23079))))))

(declare-fun bs!523938 () Bool)

(assert (= bs!523938 d!834824))

(assert (=> bs!523938 m!3303865))

(declare-fun m!3303955 () Bool)

(assert (=> bs!523938 m!3303955))

(assert (=> b!2894996 d!834824))

(declare-fun bm!188280 () Bool)

(declare-fun call!188286 () Option!6518)

(declare-fun c!471147 () Bool)

(assert (=> bm!188280 (= call!188286 (getLanguageWitness!552 (ite c!471147 (regOne!18203 r!23079) (regTwo!18202 r!23079))))))

(declare-fun b!2895216 () Bool)

(assert (=> b!2895216 (= c!471147 ((_ is Union!8845) r!23079))))

(declare-fun e!1829298 () Option!6518)

(declare-fun e!1829294 () Option!6518)

(assert (=> b!2895216 (= e!1829298 e!1829294)))

(declare-fun d!834826 () Bool)

(declare-fun c!471150 () Bool)

(assert (=> d!834826 (= c!471150 ((_ is EmptyExpr!8845) r!23079))))

(declare-fun e!1829299 () Option!6518)

(assert (=> d!834826 (= (getLanguageWitness!552 r!23079) e!1829299)))

(declare-fun b!2895217 () Bool)

(assert (=> b!2895217 (= e!1829298 (Some!6517 Nil!34522))))

(declare-fun b!2895218 () Bool)

(declare-fun e!1829292 () Option!6518)

(assert (=> b!2895218 (= e!1829292 (Some!6517 (Cons!34522 (c!471056 r!23079) Nil!34522)))))

(declare-fun bm!188281 () Bool)

(declare-fun call!188285 () Option!6518)

(assert (=> bm!188281 (= call!188285 (getLanguageWitness!552 (ite c!471147 (regTwo!18203 r!23079) (regOne!18202 r!23079))))))

(declare-fun b!2895219 () Bool)

(declare-fun e!1829295 () Option!6518)

(assert (=> b!2895219 (= e!1829295 None!6517)))

(declare-fun b!2895220 () Bool)

(declare-fun e!1829297 () Option!6518)

(assert (=> b!2895220 (= e!1829299 e!1829297)))

(declare-fun c!471148 () Bool)

(assert (=> b!2895220 (= c!471148 ((_ is EmptyLang!8845) r!23079))))

(declare-fun b!2895221 () Bool)

(assert (=> b!2895221 (= e!1829297 None!6517)))

(declare-fun b!2895222 () Bool)

(declare-fun e!1829296 () Option!6518)

(assert (=> b!2895222 (= e!1829294 e!1829296)))

(declare-fun lt!1021532 () Option!6518)

(assert (=> b!2895222 (= lt!1021532 call!188286)))

(declare-fun c!471149 () Bool)

(assert (=> b!2895222 (= c!471149 ((_ is Some!6517) lt!1021532))))

(declare-fun b!2895223 () Bool)

(declare-fun c!471151 () Bool)

(declare-fun lt!1021533 () Option!6518)

(assert (=> b!2895223 (= c!471151 ((_ is Some!6517) lt!1021533))))

(assert (=> b!2895223 (= lt!1021533 call!188286)))

(declare-fun e!1829293 () Option!6518)

(assert (=> b!2895223 (= e!1829293 e!1829295)))

(declare-fun b!2895224 () Bool)

(assert (=> b!2895224 (= e!1829293 None!6517)))

(declare-fun b!2895225 () Bool)

(assert (=> b!2895225 (= e!1829294 e!1829293)))

(declare-fun lt!1021531 () Option!6518)

(assert (=> b!2895225 (= lt!1021531 call!188285)))

(declare-fun c!471144 () Bool)

(assert (=> b!2895225 (= c!471144 ((_ is Some!6517) lt!1021531))))

(declare-fun b!2895226 () Bool)

(assert (=> b!2895226 (= e!1829299 (Some!6517 Nil!34522))))

(declare-fun b!2895227 () Bool)

(assert (=> b!2895227 (= e!1829292 e!1829298)))

(declare-fun c!471145 () Bool)

(assert (=> b!2895227 (= c!471145 ((_ is Star!8845) r!23079))))

(declare-fun b!2895228 () Bool)

(assert (=> b!2895228 (= e!1829295 (Some!6517 (++!8243 (v!34643 lt!1021531) (v!34643 lt!1021533))))))

(declare-fun b!2895229 () Bool)

(assert (=> b!2895229 (= e!1829296 call!188285)))

(declare-fun b!2895230 () Bool)

(assert (=> b!2895230 (= e!1829296 lt!1021532)))

(declare-fun b!2895231 () Bool)

(declare-fun c!471146 () Bool)

(assert (=> b!2895231 (= c!471146 ((_ is ElementMatch!8845) r!23079))))

(assert (=> b!2895231 (= e!1829297 e!1829292)))

(assert (= (and d!834826 c!471150) b!2895226))

(assert (= (and d!834826 (not c!471150)) b!2895220))

(assert (= (and b!2895220 c!471148) b!2895221))

(assert (= (and b!2895220 (not c!471148)) b!2895231))

(assert (= (and b!2895231 c!471146) b!2895218))

(assert (= (and b!2895231 (not c!471146)) b!2895227))

(assert (= (and b!2895227 c!471145) b!2895217))

(assert (= (and b!2895227 (not c!471145)) b!2895216))

(assert (= (and b!2895216 c!471147) b!2895222))

(assert (= (and b!2895216 (not c!471147)) b!2895225))

(assert (= (and b!2895222 c!471149) b!2895230))

(assert (= (and b!2895222 (not c!471149)) b!2895229))

(assert (= (and b!2895225 c!471144) b!2895223))

(assert (= (and b!2895225 (not c!471144)) b!2895224))

(assert (= (and b!2895223 c!471151) b!2895228))

(assert (= (and b!2895223 (not c!471151)) b!2895219))

(assert (= (or b!2895229 b!2895225) bm!188281))

(assert (= (or b!2895222 b!2895223) bm!188280))

(declare-fun m!3303957 () Bool)

(assert (=> bm!188280 m!3303957))

(declare-fun m!3303959 () Bool)

(assert (=> bm!188281 m!3303959))

(declare-fun m!3303961 () Bool)

(assert (=> b!2895228 m!3303961))

(assert (=> b!2894996 d!834826))

(declare-fun b!2895319 () Bool)

(declare-fun e!1829341 () Bool)

(declare-fun e!1829343 () Bool)

(assert (=> b!2895319 (= e!1829341 e!1829343)))

(declare-fun res!1197540 () Bool)

(assert (=> b!2895319 (=> (not res!1197540) (not e!1829343))))

(declare-fun call!188298 () Bool)

(assert (=> b!2895319 (= res!1197540 call!188298)))

(declare-fun bm!188291 () Bool)

(declare-fun call!188297 () Bool)

(declare-fun call!188296 () Bool)

(assert (=> bm!188291 (= call!188297 call!188296)))

(declare-fun b!2895320 () Bool)

(declare-fun e!1829347 () Bool)

(declare-fun e!1829342 () Bool)

(assert (=> b!2895320 (= e!1829347 e!1829342)))

(declare-fun res!1197538 () Bool)

(assert (=> b!2895320 (= res!1197538 (not (nullable!2745 (reg!9174 r!23079))))))

(assert (=> b!2895320 (=> (not res!1197538) (not e!1829342))))

(declare-fun b!2895321 () Bool)

(assert (=> b!2895321 (= e!1829343 call!188297)))

(declare-fun b!2895322 () Bool)

(assert (=> b!2895322 (= e!1829342 call!188296)))

(declare-fun b!2895323 () Bool)

(declare-fun res!1197541 () Bool)

(assert (=> b!2895323 (=> res!1197541 e!1829341)))

(assert (=> b!2895323 (= res!1197541 (not ((_ is Concat!14166) r!23079)))))

(declare-fun e!1829340 () Bool)

(assert (=> b!2895323 (= e!1829340 e!1829341)))

(declare-fun b!2895318 () Bool)

(declare-fun e!1829344 () Bool)

(assert (=> b!2895318 (= e!1829344 call!188297)))

(declare-fun d!834828 () Bool)

(declare-fun res!1197537 () Bool)

(declare-fun e!1829346 () Bool)

(assert (=> d!834828 (=> res!1197537 e!1829346)))

(assert (=> d!834828 (= res!1197537 ((_ is ElementMatch!8845) r!23079))))

(assert (=> d!834828 (= (validRegex!3618 r!23079) e!1829346)))

(declare-fun b!2895324 () Bool)

(declare-fun res!1197539 () Bool)

(assert (=> b!2895324 (=> (not res!1197539) (not e!1829344))))

(assert (=> b!2895324 (= res!1197539 call!188298)))

(assert (=> b!2895324 (= e!1829340 e!1829344)))

(declare-fun b!2895325 () Bool)

(assert (=> b!2895325 (= e!1829347 e!1829340)))

(declare-fun c!471166 () Bool)

(assert (=> b!2895325 (= c!471166 ((_ is Union!8845) r!23079))))

(declare-fun bm!188292 () Bool)

(assert (=> bm!188292 (= call!188298 (validRegex!3618 (ite c!471166 (regOne!18203 r!23079) (regOne!18202 r!23079))))))

(declare-fun b!2895326 () Bool)

(assert (=> b!2895326 (= e!1829346 e!1829347)))

(declare-fun c!471165 () Bool)

(assert (=> b!2895326 (= c!471165 ((_ is Star!8845) r!23079))))

(declare-fun bm!188293 () Bool)

(assert (=> bm!188293 (= call!188296 (validRegex!3618 (ite c!471165 (reg!9174 r!23079) (ite c!471166 (regTwo!18203 r!23079) (regTwo!18202 r!23079)))))))

(assert (= (and d!834828 (not res!1197537)) b!2895326))

(assert (= (and b!2895326 c!471165) b!2895320))

(assert (= (and b!2895326 (not c!471165)) b!2895325))

(assert (= (and b!2895320 res!1197538) b!2895322))

(assert (= (and b!2895325 c!471166) b!2895324))

(assert (= (and b!2895325 (not c!471166)) b!2895323))

(assert (= (and b!2895324 res!1197539) b!2895318))

(assert (= (and b!2895323 (not res!1197541)) b!2895319))

(assert (= (and b!2895319 res!1197540) b!2895321))

(assert (= (or b!2895318 b!2895321) bm!188291))

(assert (= (or b!2895324 b!2895319) bm!188292))

(assert (= (or b!2895322 bm!188291) bm!188293))

(declare-fun m!3303977 () Bool)

(assert (=> b!2895320 m!3303977))

(declare-fun m!3303979 () Bool)

(assert (=> bm!188292 m!3303979))

(declare-fun m!3303981 () Bool)

(assert (=> bm!188293 m!3303981))

(assert (=> start!282130 d!834828))

(declare-fun b!2895343 () Bool)

(declare-fun e!1829351 () Bool)

(declare-fun tp!929327 () Bool)

(assert (=> b!2895343 (= e!1829351 tp!929327)))

(declare-fun b!2895344 () Bool)

(declare-fun tp!929325 () Bool)

(declare-fun tp!929328 () Bool)

(assert (=> b!2895344 (= e!1829351 (and tp!929325 tp!929328))))

(assert (=> b!2894998 (= tp!929275 e!1829351)))

(declare-fun b!2895342 () Bool)

(declare-fun tp!929326 () Bool)

(declare-fun tp!929329 () Bool)

(assert (=> b!2895342 (= e!1829351 (and tp!929326 tp!929329))))

(declare-fun b!2895341 () Bool)

(assert (=> b!2895341 (= e!1829351 tp_is_empty!15277)))

(assert (= (and b!2894998 ((_ is ElementMatch!8845) (regOne!18203 r!23079))) b!2895341))

(assert (= (and b!2894998 ((_ is Concat!14166) (regOne!18203 r!23079))) b!2895342))

(assert (= (and b!2894998 ((_ is Star!8845) (regOne!18203 r!23079))) b!2895343))

(assert (= (and b!2894998 ((_ is Union!8845) (regOne!18203 r!23079))) b!2895344))

(declare-fun b!2895347 () Bool)

(declare-fun e!1829352 () Bool)

(declare-fun tp!929332 () Bool)

(assert (=> b!2895347 (= e!1829352 tp!929332)))

(declare-fun b!2895348 () Bool)

(declare-fun tp!929330 () Bool)

(declare-fun tp!929333 () Bool)

(assert (=> b!2895348 (= e!1829352 (and tp!929330 tp!929333))))

(assert (=> b!2894998 (= tp!929279 e!1829352)))

(declare-fun b!2895346 () Bool)

(declare-fun tp!929331 () Bool)

(declare-fun tp!929334 () Bool)

(assert (=> b!2895346 (= e!1829352 (and tp!929331 tp!929334))))

(declare-fun b!2895345 () Bool)

(assert (=> b!2895345 (= e!1829352 tp_is_empty!15277)))

(assert (= (and b!2894998 ((_ is ElementMatch!8845) (regTwo!18203 r!23079))) b!2895345))

(assert (= (and b!2894998 ((_ is Concat!14166) (regTwo!18203 r!23079))) b!2895346))

(assert (= (and b!2894998 ((_ is Star!8845) (regTwo!18203 r!23079))) b!2895347))

(assert (= (and b!2894998 ((_ is Union!8845) (regTwo!18203 r!23079))) b!2895348))

(declare-fun b!2895351 () Bool)

(declare-fun e!1829353 () Bool)

(declare-fun tp!929337 () Bool)

(assert (=> b!2895351 (= e!1829353 tp!929337)))

(declare-fun b!2895352 () Bool)

(declare-fun tp!929335 () Bool)

(declare-fun tp!929338 () Bool)

(assert (=> b!2895352 (= e!1829353 (and tp!929335 tp!929338))))

(assert (=> b!2894997 (= tp!929277 e!1829353)))

(declare-fun b!2895350 () Bool)

(declare-fun tp!929336 () Bool)

(declare-fun tp!929339 () Bool)

(assert (=> b!2895350 (= e!1829353 (and tp!929336 tp!929339))))

(declare-fun b!2895349 () Bool)

(assert (=> b!2895349 (= e!1829353 tp_is_empty!15277)))

(assert (= (and b!2894997 ((_ is ElementMatch!8845) (reg!9174 r!23079))) b!2895349))

(assert (= (and b!2894997 ((_ is Concat!14166) (reg!9174 r!23079))) b!2895350))

(assert (= (and b!2894997 ((_ is Star!8845) (reg!9174 r!23079))) b!2895351))

(assert (= (and b!2894997 ((_ is Union!8845) (reg!9174 r!23079))) b!2895352))

(declare-fun b!2895355 () Bool)

(declare-fun e!1829354 () Bool)

(declare-fun tp!929342 () Bool)

(assert (=> b!2895355 (= e!1829354 tp!929342)))

(declare-fun b!2895356 () Bool)

(declare-fun tp!929340 () Bool)

(declare-fun tp!929343 () Bool)

(assert (=> b!2895356 (= e!1829354 (and tp!929340 tp!929343))))

(assert (=> b!2895001 (= tp!929278 e!1829354)))

(declare-fun b!2895354 () Bool)

(declare-fun tp!929341 () Bool)

(declare-fun tp!929344 () Bool)

(assert (=> b!2895354 (= e!1829354 (and tp!929341 tp!929344))))

(declare-fun b!2895353 () Bool)

(assert (=> b!2895353 (= e!1829354 tp_is_empty!15277)))

(assert (= (and b!2895001 ((_ is ElementMatch!8845) (regOne!18202 r!23079))) b!2895353))

(assert (= (and b!2895001 ((_ is Concat!14166) (regOne!18202 r!23079))) b!2895354))

(assert (= (and b!2895001 ((_ is Star!8845) (regOne!18202 r!23079))) b!2895355))

(assert (= (and b!2895001 ((_ is Union!8845) (regOne!18202 r!23079))) b!2895356))

(declare-fun b!2895359 () Bool)

(declare-fun e!1829355 () Bool)

(declare-fun tp!929347 () Bool)

(assert (=> b!2895359 (= e!1829355 tp!929347)))

(declare-fun b!2895360 () Bool)

(declare-fun tp!929345 () Bool)

(declare-fun tp!929348 () Bool)

(assert (=> b!2895360 (= e!1829355 (and tp!929345 tp!929348))))

(assert (=> b!2895001 (= tp!929276 e!1829355)))

(declare-fun b!2895358 () Bool)

(declare-fun tp!929346 () Bool)

(declare-fun tp!929349 () Bool)

(assert (=> b!2895358 (= e!1829355 (and tp!929346 tp!929349))))

(declare-fun b!2895357 () Bool)

(assert (=> b!2895357 (= e!1829355 tp_is_empty!15277)))

(assert (= (and b!2895001 ((_ is ElementMatch!8845) (regTwo!18202 r!23079))) b!2895357))

(assert (= (and b!2895001 ((_ is Concat!14166) (regTwo!18202 r!23079))) b!2895358))

(assert (= (and b!2895001 ((_ is Star!8845) (regTwo!18202 r!23079))) b!2895359))

(assert (= (and b!2895001 ((_ is Union!8845) (regTwo!18202 r!23079))) b!2895360))

(check-sat (not b!2895352) (not b!2895356) (not b!2895212) (not bm!188281) (not b!2895228) (not b!2895193) (not bm!188279) (not b!2895196) (not b!2895342) (not d!834804) (not bm!188293) (not b!2895199) (not b!2895343) (not b!2895359) (not b!2895187) (not bm!188292) (not b!2895346) (not bm!188280) (not b!2895358) (not bm!188263) (not bm!188264) (not bm!188277) tp_is_empty!15277 (not b!2895198) (not d!834802) (not b!2895350) (not bm!188278) (not b!2895360) (not b!2895348) (not b!2895074) (not d!834806) (not b!2895344) (not b!2895320) (not b!2895354) (not b!2895197) (not b!2895351) (not d!834824) (not b!2895355) (not b!2895347))
(check-sat)
