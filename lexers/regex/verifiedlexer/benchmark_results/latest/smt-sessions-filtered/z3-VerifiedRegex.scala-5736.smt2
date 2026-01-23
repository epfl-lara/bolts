; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284704 () Bool)

(assert start!284704)

(declare-fun b!2926986 () Bool)

(declare-fun e!1846151 () Bool)

(declare-fun e!1846148 () Bool)

(assert (=> b!2926986 (= e!1846151 (not e!1846148))))

(declare-fun res!1208102 () Bool)

(assert (=> b!2926986 (=> res!1208102 e!1846148)))

(declare-fun lt!1026996 () Bool)

(declare-datatypes ((C!18232 0))(
  ( (C!18233 (val!11152 Int)) )
))
(declare-datatypes ((Regex!9023 0))(
  ( (ElementMatch!9023 (c!478019 C!18232)) (Concat!14344 (regOne!18558 Regex!9023) (regTwo!18558 Regex!9023)) (EmptyExpr!9023) (Star!9023 (reg!9352 Regex!9023)) (EmptyLang!9023) (Union!9023 (regOne!18559 Regex!9023) (regTwo!18559 Regex!9023)) )
))
(declare-fun r!17423 () Regex!9023)

(get-info :version)

(assert (=> b!2926986 (= res!1208102 (or (not lt!1026996) ((_ is Concat!14344) r!17423) ((_ is Union!9023) r!17423) (not ((_ is Star!9023) r!17423))))))

(declare-datatypes ((List!34888 0))(
  ( (Nil!34764) (Cons!34764 (h!40184 C!18232) (t!233953 List!34888)) )
))
(declare-fun s!11993 () List!34888)

(declare-fun matchRSpec!1160 (Regex!9023 List!34888) Bool)

(assert (=> b!2926986 (= lt!1026996 (matchRSpec!1160 r!17423 s!11993))))

(declare-fun matchR!3905 (Regex!9023 List!34888) Bool)

(assert (=> b!2926986 (= lt!1026996 (matchR!3905 r!17423 s!11993))))

(declare-datatypes ((Unit!48385 0))(
  ( (Unit!48386) )
))
(declare-fun lt!1026997 () Unit!48385)

(declare-fun mainMatchTheorem!1160 (Regex!9023 List!34888) Unit!48385)

(assert (=> b!2926986 (= lt!1026997 (mainMatchTheorem!1160 r!17423 s!11993))))

(declare-fun b!2926987 () Bool)

(declare-fun res!1208103 () Bool)

(assert (=> b!2926987 (=> res!1208103 e!1846148)))

(declare-fun isEmpty!19007 (List!34888) Bool)

(assert (=> b!2926987 (= res!1208103 (not (isEmpty!19007 s!11993)))))

(declare-fun b!2926988 () Bool)

(declare-fun e!1846149 () Bool)

(declare-fun tp_is_empty!15609 () Bool)

(assert (=> b!2926988 (= e!1846149 tp_is_empty!15609)))

(declare-fun b!2926989 () Bool)

(declare-fun tp!938419 () Bool)

(declare-fun tp!938418 () Bool)

(assert (=> b!2926989 (= e!1846149 (and tp!938419 tp!938418))))

(declare-fun b!2926990 () Bool)

(declare-fun tp!938417 () Bool)

(assert (=> b!2926990 (= e!1846149 tp!938417)))

(declare-fun b!2926991 () Bool)

(declare-fun e!1846150 () Bool)

(declare-fun tp!938416 () Bool)

(assert (=> b!2926991 (= e!1846150 (and tp_is_empty!15609 tp!938416))))

(declare-fun b!2926992 () Bool)

(declare-fun validRegex!3756 (Regex!9023) Bool)

(declare-fun simplify!52 (Regex!9023) Regex!9023)

(assert (=> b!2926992 (= e!1846148 (validRegex!3756 (simplify!52 r!17423)))))

(declare-fun res!1208104 () Bool)

(assert (=> start!284704 (=> (not res!1208104) (not e!1846151))))

(assert (=> start!284704 (= res!1208104 (validRegex!3756 r!17423))))

(assert (=> start!284704 e!1846151))

(assert (=> start!284704 e!1846149))

(assert (=> start!284704 e!1846150))

(declare-fun b!2926993 () Bool)

(declare-fun tp!938421 () Bool)

(declare-fun tp!938420 () Bool)

(assert (=> b!2926993 (= e!1846149 (and tp!938421 tp!938420))))

(assert (= (and start!284704 res!1208104) b!2926986))

(assert (= (and b!2926986 (not res!1208102)) b!2926987))

(assert (= (and b!2926987 (not res!1208103)) b!2926992))

(assert (= (and start!284704 ((_ is ElementMatch!9023) r!17423)) b!2926988))

(assert (= (and start!284704 ((_ is Concat!14344) r!17423)) b!2926993))

(assert (= (and start!284704 ((_ is Star!9023) r!17423)) b!2926990))

(assert (= (and start!284704 ((_ is Union!9023) r!17423)) b!2926989))

(assert (= (and start!284704 ((_ is Cons!34764) s!11993)) b!2926991))

(declare-fun m!3319339 () Bool)

(assert (=> b!2926986 m!3319339))

(declare-fun m!3319341 () Bool)

(assert (=> b!2926986 m!3319341))

(declare-fun m!3319343 () Bool)

(assert (=> b!2926986 m!3319343))

(declare-fun m!3319345 () Bool)

(assert (=> b!2926987 m!3319345))

(declare-fun m!3319347 () Bool)

(assert (=> b!2926992 m!3319347))

(assert (=> b!2926992 m!3319347))

(declare-fun m!3319349 () Bool)

(assert (=> b!2926992 m!3319349))

(declare-fun m!3319351 () Bool)

(assert (=> start!284704 m!3319351))

(check-sat (not b!2926991) (not b!2926992) (not b!2926987) (not b!2926990) (not b!2926989) (not b!2926986) (not start!284704) tp_is_empty!15609 (not b!2926993))
(check-sat)
(get-model)

(declare-fun b!2927030 () Bool)

(declare-fun e!1846185 () Bool)

(declare-fun e!1846182 () Bool)

(assert (=> b!2927030 (= e!1846185 e!1846182)))

(declare-fun c!478029 () Bool)

(assert (=> b!2927030 (= c!478029 ((_ is Union!9023) r!17423))))

(declare-fun b!2927031 () Bool)

(declare-fun e!1846184 () Bool)

(assert (=> b!2927031 (= e!1846185 e!1846184)))

(declare-fun res!1208127 () Bool)

(declare-fun nullable!2837 (Regex!9023) Bool)

(assert (=> b!2927031 (= res!1208127 (not (nullable!2837 (reg!9352 r!17423))))))

(assert (=> b!2927031 (=> (not res!1208127) (not e!1846184))))

(declare-fun b!2927032 () Bool)

(declare-fun res!1208128 () Bool)

(declare-fun e!1846180 () Bool)

(assert (=> b!2927032 (=> res!1208128 e!1846180)))

(assert (=> b!2927032 (= res!1208128 (not ((_ is Concat!14344) r!17423)))))

(assert (=> b!2927032 (= e!1846182 e!1846180)))

(declare-fun b!2927033 () Bool)

(declare-fun e!1846181 () Bool)

(declare-fun call!192026 () Bool)

(assert (=> b!2927033 (= e!1846181 call!192026)))

(declare-fun b!2927034 () Bool)

(declare-fun e!1846183 () Bool)

(declare-fun call!192025 () Bool)

(assert (=> b!2927034 (= e!1846183 call!192025)))

(declare-fun d!839005 () Bool)

(declare-fun res!1208125 () Bool)

(declare-fun e!1846186 () Bool)

(assert (=> d!839005 (=> res!1208125 e!1846186)))

(assert (=> d!839005 (= res!1208125 ((_ is ElementMatch!9023) r!17423))))

(assert (=> d!839005 (= (validRegex!3756 r!17423) e!1846186)))

(declare-fun b!2927035 () Bool)

(declare-fun res!1208126 () Bool)

(assert (=> b!2927035 (=> (not res!1208126) (not e!1846181))))

(assert (=> b!2927035 (= res!1208126 call!192025)))

(assert (=> b!2927035 (= e!1846182 e!1846181)))

(declare-fun b!2927036 () Bool)

(declare-fun call!192027 () Bool)

(assert (=> b!2927036 (= e!1846184 call!192027)))

(declare-fun c!478028 () Bool)

(declare-fun bm!192020 () Bool)

(assert (=> bm!192020 (= call!192027 (validRegex!3756 (ite c!478028 (reg!9352 r!17423) (ite c!478029 (regOne!18559 r!17423) (regTwo!18558 r!17423)))))))

(declare-fun b!2927037 () Bool)

(assert (=> b!2927037 (= e!1846186 e!1846185)))

(assert (=> b!2927037 (= c!478028 ((_ is Star!9023) r!17423))))

(declare-fun b!2927038 () Bool)

(assert (=> b!2927038 (= e!1846180 e!1846183)))

(declare-fun res!1208129 () Bool)

(assert (=> b!2927038 (=> (not res!1208129) (not e!1846183))))

(assert (=> b!2927038 (= res!1208129 call!192026)))

(declare-fun bm!192021 () Bool)

(assert (=> bm!192021 (= call!192025 call!192027)))

(declare-fun bm!192022 () Bool)

(assert (=> bm!192022 (= call!192026 (validRegex!3756 (ite c!478029 (regTwo!18559 r!17423) (regOne!18558 r!17423))))))

(assert (= (and d!839005 (not res!1208125)) b!2927037))

(assert (= (and b!2927037 c!478028) b!2927031))

(assert (= (and b!2927037 (not c!478028)) b!2927030))

(assert (= (and b!2927031 res!1208127) b!2927036))

(assert (= (and b!2927030 c!478029) b!2927035))

(assert (= (and b!2927030 (not c!478029)) b!2927032))

(assert (= (and b!2927035 res!1208126) b!2927033))

(assert (= (and b!2927032 (not res!1208128)) b!2927038))

(assert (= (and b!2927038 res!1208129) b!2927034))

(assert (= (or b!2927035 b!2927034) bm!192021))

(assert (= (or b!2927033 b!2927038) bm!192022))

(assert (= (or b!2927036 bm!192021) bm!192020))

(declare-fun m!3319353 () Bool)

(assert (=> b!2927031 m!3319353))

(declare-fun m!3319355 () Bool)

(assert (=> bm!192020 m!3319355))

(declare-fun m!3319357 () Bool)

(assert (=> bm!192022 m!3319357))

(assert (=> start!284704 d!839005))

(declare-fun b!2927219 () Bool)

(assert (=> b!2927219 true))

(assert (=> b!2927219 true))

(declare-fun bs!525034 () Bool)

(declare-fun b!2927215 () Bool)

(assert (= bs!525034 (and b!2927215 b!2927219)))

(declare-fun lambda!108762 () Int)

(declare-fun lambda!108761 () Int)

(assert (=> bs!525034 (not (= lambda!108762 lambda!108761))))

(assert (=> b!2927215 true))

(assert (=> b!2927215 true))

(declare-fun b!2927211 () Bool)

(declare-fun e!1846290 () Bool)

(assert (=> b!2927211 (= e!1846290 (matchRSpec!1160 (regTwo!18559 r!17423) s!11993))))

(declare-fun b!2927212 () Bool)

(declare-fun c!478088 () Bool)

(assert (=> b!2927212 (= c!478088 ((_ is ElementMatch!9023) r!17423))))

(declare-fun e!1846291 () Bool)

(declare-fun e!1846286 () Bool)

(assert (=> b!2927212 (= e!1846291 e!1846286)))

(declare-fun bm!192060 () Bool)

(declare-fun call!192065 () Bool)

(assert (=> bm!192060 (= call!192065 (isEmpty!19007 s!11993))))

(declare-fun b!2927213 () Bool)

(declare-fun e!1846289 () Bool)

(assert (=> b!2927213 (= e!1846289 e!1846291)))

(declare-fun res!1208184 () Bool)

(assert (=> b!2927213 (= res!1208184 (not ((_ is EmptyLang!9023) r!17423)))))

(assert (=> b!2927213 (=> (not res!1208184) (not e!1846291))))

(declare-fun d!839009 () Bool)

(declare-fun c!478089 () Bool)

(assert (=> d!839009 (= c!478089 ((_ is EmptyExpr!9023) r!17423))))

(assert (=> d!839009 (= (matchRSpec!1160 r!17423 s!11993) e!1846289)))

(declare-fun b!2927214 () Bool)

(declare-fun c!478087 () Bool)

(assert (=> b!2927214 (= c!478087 ((_ is Union!9023) r!17423))))

(declare-fun e!1846287 () Bool)

(assert (=> b!2927214 (= e!1846286 e!1846287)))

(declare-fun e!1846292 () Bool)

(declare-fun call!192066 () Bool)

(assert (=> b!2927215 (= e!1846292 call!192066)))

(declare-fun b!2927216 () Bool)

(declare-fun res!1208186 () Bool)

(declare-fun e!1846288 () Bool)

(assert (=> b!2927216 (=> res!1208186 e!1846288)))

(assert (=> b!2927216 (= res!1208186 call!192065)))

(assert (=> b!2927216 (= e!1846292 e!1846288)))

(declare-fun b!2927217 () Bool)

(assert (=> b!2927217 (= e!1846286 (= s!11993 (Cons!34764 (c!478019 r!17423) Nil!34764)))))

(declare-fun b!2927218 () Bool)

(assert (=> b!2927218 (= e!1846287 e!1846292)))

(declare-fun c!478090 () Bool)

(assert (=> b!2927218 (= c!478090 ((_ is Star!9023) r!17423))))

(assert (=> b!2927219 (= e!1846288 call!192066)))

(declare-fun bm!192061 () Bool)

(declare-fun Exists!1386 (Int) Bool)

(assert (=> bm!192061 (= call!192066 (Exists!1386 (ite c!478090 lambda!108761 lambda!108762)))))

(declare-fun b!2927220 () Bool)

(assert (=> b!2927220 (= e!1846289 call!192065)))

(declare-fun b!2927221 () Bool)

(assert (=> b!2927221 (= e!1846287 e!1846290)))

(declare-fun res!1208185 () Bool)

(assert (=> b!2927221 (= res!1208185 (matchRSpec!1160 (regOne!18559 r!17423) s!11993))))

(assert (=> b!2927221 (=> res!1208185 e!1846290)))

(assert (= (and d!839009 c!478089) b!2927220))

(assert (= (and d!839009 (not c!478089)) b!2927213))

(assert (= (and b!2927213 res!1208184) b!2927212))

(assert (= (and b!2927212 c!478088) b!2927217))

(assert (= (and b!2927212 (not c!478088)) b!2927214))

(assert (= (and b!2927214 c!478087) b!2927221))

(assert (= (and b!2927214 (not c!478087)) b!2927218))

(assert (= (and b!2927221 (not res!1208185)) b!2927211))

(assert (= (and b!2927218 c!478090) b!2927216))

(assert (= (and b!2927218 (not c!478090)) b!2927215))

(assert (= (and b!2927216 (not res!1208186)) b!2927219))

(assert (= (or b!2927219 b!2927215) bm!192061))

(assert (= (or b!2927220 b!2927216) bm!192060))

(declare-fun m!3319395 () Bool)

(assert (=> b!2927211 m!3319395))

(assert (=> bm!192060 m!3319345))

(declare-fun m!3319397 () Bool)

(assert (=> bm!192061 m!3319397))

(declare-fun m!3319399 () Bool)

(assert (=> b!2927221 m!3319399))

(assert (=> b!2926986 d!839009))

(declare-fun b!2927296 () Bool)

(declare-fun e!1846328 () Bool)

(assert (=> b!2927296 (= e!1846328 (nullable!2837 r!17423))))

(declare-fun b!2927297 () Bool)

(declare-fun e!1846332 () Bool)

(declare-fun head!6509 (List!34888) C!18232)

(assert (=> b!2927297 (= e!1846332 (= (head!6509 s!11993) (c!478019 r!17423)))))

(declare-fun b!2927298 () Bool)

(declare-fun res!1208232 () Bool)

(declare-fun e!1846329 () Bool)

(assert (=> b!2927298 (=> res!1208232 e!1846329)))

(assert (=> b!2927298 (= res!1208232 (not ((_ is ElementMatch!9023) r!17423)))))

(declare-fun e!1846334 () Bool)

(assert (=> b!2927298 (= e!1846334 e!1846329)))

(declare-fun b!2927299 () Bool)

(declare-fun res!1208228 () Bool)

(declare-fun e!1846330 () Bool)

(assert (=> b!2927299 (=> res!1208228 e!1846330)))

(declare-fun tail!4735 (List!34888) List!34888)

(assert (=> b!2927299 (= res!1208228 (not (isEmpty!19007 (tail!4735 s!11993))))))

(declare-fun b!2927300 () Bool)

(declare-fun lt!1027021 () Bool)

(assert (=> b!2927300 (= e!1846334 (not lt!1027021))))

(declare-fun bm!192067 () Bool)

(declare-fun call!192072 () Bool)

(assert (=> bm!192067 (= call!192072 (isEmpty!19007 s!11993))))

(declare-fun b!2927301 () Bool)

(declare-fun res!1208230 () Bool)

(assert (=> b!2927301 (=> (not res!1208230) (not e!1846332))))

(assert (=> b!2927301 (= res!1208230 (isEmpty!19007 (tail!4735 s!11993)))))

(declare-fun b!2927302 () Bool)

(declare-fun derivativeStep!2450 (Regex!9023 C!18232) Regex!9023)

(assert (=> b!2927302 (= e!1846328 (matchR!3905 (derivativeStep!2450 r!17423 (head!6509 s!11993)) (tail!4735 s!11993)))))

(declare-fun b!2927303 () Bool)

(declare-fun res!1208231 () Bool)

(assert (=> b!2927303 (=> (not res!1208231) (not e!1846332))))

(assert (=> b!2927303 (= res!1208231 (not call!192072))))

(declare-fun b!2927304 () Bool)

(declare-fun res!1208233 () Bool)

(assert (=> b!2927304 (=> res!1208233 e!1846329)))

(assert (=> b!2927304 (= res!1208233 e!1846332)))

(declare-fun res!1208234 () Bool)

(assert (=> b!2927304 (=> (not res!1208234) (not e!1846332))))

(assert (=> b!2927304 (= res!1208234 lt!1027021)))

(declare-fun b!2927305 () Bool)

(assert (=> b!2927305 (= e!1846330 (not (= (head!6509 s!11993) (c!478019 r!17423))))))

(declare-fun b!2927307 () Bool)

(declare-fun e!1846331 () Bool)

(assert (=> b!2927307 (= e!1846331 (= lt!1027021 call!192072))))

(declare-fun b!2927308 () Bool)

(declare-fun e!1846333 () Bool)

(assert (=> b!2927308 (= e!1846329 e!1846333)))

(declare-fun res!1208229 () Bool)

(assert (=> b!2927308 (=> (not res!1208229) (not e!1846333))))

(assert (=> b!2927308 (= res!1208229 (not lt!1027021))))

(declare-fun b!2927309 () Bool)

(assert (=> b!2927309 (= e!1846333 e!1846330)))

(declare-fun res!1208227 () Bool)

(assert (=> b!2927309 (=> res!1208227 e!1846330)))

(assert (=> b!2927309 (= res!1208227 call!192072)))

(declare-fun b!2927306 () Bool)

(assert (=> b!2927306 (= e!1846331 e!1846334)))

(declare-fun c!478106 () Bool)

(assert (=> b!2927306 (= c!478106 ((_ is EmptyLang!9023) r!17423))))

(declare-fun d!839021 () Bool)

(assert (=> d!839021 e!1846331))

(declare-fun c!478108 () Bool)

(assert (=> d!839021 (= c!478108 ((_ is EmptyExpr!9023) r!17423))))

(assert (=> d!839021 (= lt!1027021 e!1846328)))

(declare-fun c!478107 () Bool)

(assert (=> d!839021 (= c!478107 (isEmpty!19007 s!11993))))

(assert (=> d!839021 (validRegex!3756 r!17423)))

(assert (=> d!839021 (= (matchR!3905 r!17423 s!11993) lt!1027021)))

(assert (= (and d!839021 c!478107) b!2927296))

(assert (= (and d!839021 (not c!478107)) b!2927302))

(assert (= (and d!839021 c!478108) b!2927307))

(assert (= (and d!839021 (not c!478108)) b!2927306))

(assert (= (and b!2927306 c!478106) b!2927300))

(assert (= (and b!2927306 (not c!478106)) b!2927298))

(assert (= (and b!2927298 (not res!1208232)) b!2927304))

(assert (= (and b!2927304 res!1208234) b!2927303))

(assert (= (and b!2927303 res!1208231) b!2927301))

(assert (= (and b!2927301 res!1208230) b!2927297))

(assert (= (and b!2927304 (not res!1208233)) b!2927308))

(assert (= (and b!2927308 res!1208229) b!2927309))

(assert (= (and b!2927309 (not res!1208227)) b!2927299))

(assert (= (and b!2927299 (not res!1208228)) b!2927305))

(assert (= (or b!2927307 b!2927303 b!2927309) bm!192067))

(assert (=> d!839021 m!3319345))

(assert (=> d!839021 m!3319351))

(declare-fun m!3319411 () Bool)

(assert (=> b!2927305 m!3319411))

(assert (=> bm!192067 m!3319345))

(declare-fun m!3319413 () Bool)

(assert (=> b!2927301 m!3319413))

(assert (=> b!2927301 m!3319413))

(declare-fun m!3319415 () Bool)

(assert (=> b!2927301 m!3319415))

(assert (=> b!2927302 m!3319411))

(assert (=> b!2927302 m!3319411))

(declare-fun m!3319417 () Bool)

(assert (=> b!2927302 m!3319417))

(assert (=> b!2927302 m!3319413))

(assert (=> b!2927302 m!3319417))

(assert (=> b!2927302 m!3319413))

(declare-fun m!3319419 () Bool)

(assert (=> b!2927302 m!3319419))

(declare-fun m!3319421 () Bool)

(assert (=> b!2927296 m!3319421))

(assert (=> b!2927299 m!3319413))

(assert (=> b!2927299 m!3319413))

(assert (=> b!2927299 m!3319415))

(assert (=> b!2927297 m!3319411))

(assert (=> b!2926986 d!839021))

(declare-fun d!839025 () Bool)

(assert (=> d!839025 (= (matchR!3905 r!17423 s!11993) (matchRSpec!1160 r!17423 s!11993))))

(declare-fun lt!1027027 () Unit!48385)

(declare-fun choose!17280 (Regex!9023 List!34888) Unit!48385)

(assert (=> d!839025 (= lt!1027027 (choose!17280 r!17423 s!11993))))

(assert (=> d!839025 (validRegex!3756 r!17423)))

(assert (=> d!839025 (= (mainMatchTheorem!1160 r!17423 s!11993) lt!1027027)))

(declare-fun bs!525036 () Bool)

(assert (= bs!525036 d!839025))

(assert (=> bs!525036 m!3319341))

(assert (=> bs!525036 m!3319339))

(declare-fun m!3319425 () Bool)

(assert (=> bs!525036 m!3319425))

(assert (=> bs!525036 m!3319351))

(assert (=> b!2926986 d!839025))

(declare-fun d!839027 () Bool)

(assert (=> d!839027 (= (isEmpty!19007 s!11993) ((_ is Nil!34764) s!11993))))

(assert (=> b!2926987 d!839027))

(declare-fun b!2927345 () Bool)

(declare-fun e!1846350 () Bool)

(declare-fun e!1846347 () Bool)

(assert (=> b!2927345 (= e!1846350 e!1846347)))

(declare-fun c!478110 () Bool)

(assert (=> b!2927345 (= c!478110 ((_ is Union!9023) (simplify!52 r!17423)))))

(declare-fun b!2927346 () Bool)

(declare-fun e!1846349 () Bool)

(assert (=> b!2927346 (= e!1846350 e!1846349)))

(declare-fun res!1208237 () Bool)

(assert (=> b!2927346 (= res!1208237 (not (nullable!2837 (reg!9352 (simplify!52 r!17423)))))))

(assert (=> b!2927346 (=> (not res!1208237) (not e!1846349))))

(declare-fun b!2927347 () Bool)

(declare-fun res!1208238 () Bool)

(declare-fun e!1846345 () Bool)

(assert (=> b!2927347 (=> res!1208238 e!1846345)))

(assert (=> b!2927347 (= res!1208238 (not ((_ is Concat!14344) (simplify!52 r!17423))))))

(assert (=> b!2927347 (= e!1846347 e!1846345)))

(declare-fun b!2927348 () Bool)

(declare-fun e!1846346 () Bool)

(declare-fun call!192074 () Bool)

(assert (=> b!2927348 (= e!1846346 call!192074)))

(declare-fun b!2927349 () Bool)

(declare-fun e!1846348 () Bool)

(declare-fun call!192073 () Bool)

(assert (=> b!2927349 (= e!1846348 call!192073)))

(declare-fun d!839029 () Bool)

(declare-fun res!1208235 () Bool)

(declare-fun e!1846351 () Bool)

(assert (=> d!839029 (=> res!1208235 e!1846351)))

(assert (=> d!839029 (= res!1208235 ((_ is ElementMatch!9023) (simplify!52 r!17423)))))

(assert (=> d!839029 (= (validRegex!3756 (simplify!52 r!17423)) e!1846351)))

(declare-fun b!2927350 () Bool)

(declare-fun res!1208236 () Bool)

(assert (=> b!2927350 (=> (not res!1208236) (not e!1846346))))

(assert (=> b!2927350 (= res!1208236 call!192073)))

(assert (=> b!2927350 (= e!1846347 e!1846346)))

(declare-fun b!2927351 () Bool)

(declare-fun call!192075 () Bool)

(assert (=> b!2927351 (= e!1846349 call!192075)))

(declare-fun c!478109 () Bool)

(declare-fun bm!192068 () Bool)

(assert (=> bm!192068 (= call!192075 (validRegex!3756 (ite c!478109 (reg!9352 (simplify!52 r!17423)) (ite c!478110 (regOne!18559 (simplify!52 r!17423)) (regTwo!18558 (simplify!52 r!17423))))))))

(declare-fun b!2927352 () Bool)

(assert (=> b!2927352 (= e!1846351 e!1846350)))

(assert (=> b!2927352 (= c!478109 ((_ is Star!9023) (simplify!52 r!17423)))))

(declare-fun b!2927353 () Bool)

(assert (=> b!2927353 (= e!1846345 e!1846348)))

(declare-fun res!1208239 () Bool)

(assert (=> b!2927353 (=> (not res!1208239) (not e!1846348))))

(assert (=> b!2927353 (= res!1208239 call!192074)))

(declare-fun bm!192069 () Bool)

(assert (=> bm!192069 (= call!192073 call!192075)))

(declare-fun bm!192070 () Bool)

(assert (=> bm!192070 (= call!192074 (validRegex!3756 (ite c!478110 (regTwo!18559 (simplify!52 r!17423)) (regOne!18558 (simplify!52 r!17423)))))))

(assert (= (and d!839029 (not res!1208235)) b!2927352))

(assert (= (and b!2927352 c!478109) b!2927346))

(assert (= (and b!2927352 (not c!478109)) b!2927345))

(assert (= (and b!2927346 res!1208237) b!2927351))

(assert (= (and b!2927345 c!478110) b!2927350))

(assert (= (and b!2927345 (not c!478110)) b!2927347))

(assert (= (and b!2927350 res!1208236) b!2927348))

(assert (= (and b!2927347 (not res!1208238)) b!2927353))

(assert (= (and b!2927353 res!1208239) b!2927349))

(assert (= (or b!2927350 b!2927349) bm!192069))

(assert (= (or b!2927348 b!2927353) bm!192070))

(assert (= (or b!2927351 bm!192069) bm!192068))

(declare-fun m!3319427 () Bool)

(assert (=> b!2927346 m!3319427))

(declare-fun m!3319429 () Bool)

(assert (=> bm!192068 m!3319429))

(declare-fun m!3319431 () Bool)

(assert (=> bm!192070 m!3319431))

(assert (=> b!2926992 d!839029))

(declare-fun lt!1027040 () Regex!9023)

(declare-fun bm!192085 () Bool)

(declare-fun lt!1027042 () Regex!9023)

(declare-fun c!478133 () Bool)

(declare-fun call!192092 () Bool)

(declare-fun lt!1027043 () Regex!9023)

(declare-fun c!478140 () Bool)

(declare-fun isEmptyLang!190 (Regex!9023) Bool)

(assert (=> bm!192085 (= call!192092 (isEmptyLang!190 (ite c!478140 lt!1027042 (ite c!478133 lt!1027040 lt!1027043))))))

(declare-fun b!2927404 () Bool)

(declare-fun e!1846383 () Regex!9023)

(assert (=> b!2927404 (= e!1846383 (Star!9023 lt!1027042))))

(declare-fun b!2927405 () Bool)

(declare-fun c!478134 () Bool)

(assert (=> b!2927405 (= c!478134 ((_ is EmptyExpr!9023) r!17423))))

(declare-fun e!1846380 () Regex!9023)

(declare-fun e!1846385 () Regex!9023)

(assert (=> b!2927405 (= e!1846380 e!1846385)))

(declare-fun b!2927406 () Bool)

(declare-fun e!1846391 () Bool)

(declare-fun lt!1027044 () Regex!9023)

(assert (=> b!2927406 (= e!1846391 (= (nullable!2837 lt!1027044) (nullable!2837 r!17423)))))

(declare-fun b!2927407 () Bool)

(declare-fun e!1846390 () Regex!9023)

(assert (=> b!2927407 (= e!1846390 lt!1027043)))

(declare-fun b!2927408 () Bool)

(declare-fun e!1846387 () Regex!9023)

(declare-fun e!1846389 () Regex!9023)

(assert (=> b!2927408 (= e!1846387 e!1846389)))

(declare-fun lt!1027045 () Regex!9023)

(declare-fun call!192093 () Regex!9023)

(assert (=> b!2927408 (= lt!1027045 call!192093)))

(declare-fun call!192094 () Regex!9023)

(assert (=> b!2927408 (= lt!1027043 call!192094)))

(declare-fun res!1208248 () Bool)

(declare-fun call!192096 () Bool)

(assert (=> b!2927408 (= res!1208248 call!192096)))

(declare-fun e!1846386 () Bool)

(assert (=> b!2927408 (=> res!1208248 e!1846386)))

(declare-fun c!478135 () Bool)

(assert (=> b!2927408 (= c!478135 e!1846386)))

(declare-fun b!2927409 () Bool)

(declare-fun e!1846393 () Regex!9023)

(assert (=> b!2927409 (= e!1846393 EmptyLang!9023)))

(declare-fun bm!192086 () Bool)

(declare-fun call!192091 () Regex!9023)

(assert (=> bm!192086 (= call!192094 call!192091)))

(declare-fun b!2927410 () Bool)

(declare-fun e!1846381 () Regex!9023)

(assert (=> b!2927410 (= e!1846381 lt!1027040)))

(declare-fun b!2927411 () Bool)

(declare-fun e!1846388 () Regex!9023)

(assert (=> b!2927411 (= e!1846388 (Concat!14344 lt!1027045 lt!1027043))))

(declare-fun b!2927412 () Bool)

(declare-fun e!1846392 () Regex!9023)

(declare-fun lt!1027041 () Regex!9023)

(assert (=> b!2927412 (= e!1846392 (Union!9023 lt!1027041 lt!1027040))))

(declare-fun b!2927413 () Bool)

(assert (=> b!2927413 (= c!478133 ((_ is Union!9023) r!17423))))

(declare-fun e!1846384 () Regex!9023)

(assert (=> b!2927413 (= e!1846384 e!1846387)))

(declare-fun b!2927414 () Bool)

(declare-fun e!1846382 () Bool)

(declare-fun call!192090 () Bool)

(assert (=> b!2927414 (= e!1846382 call!192090)))

(declare-fun bm!192087 () Bool)

(declare-fun isEmptyExpr!275 (Regex!9023) Bool)

(assert (=> bm!192087 (= call!192090 (isEmptyExpr!275 (ite c!478140 lt!1027042 lt!1027045)))))

(declare-fun b!2927415 () Bool)

(assert (=> b!2927415 (= e!1846388 lt!1027045)))

(declare-fun bm!192088 () Bool)

(declare-fun call!192095 () Bool)

(assert (=> bm!192088 (= call!192095 call!192092)))

(declare-fun b!2927416 () Bool)

(assert (=> b!2927416 (= e!1846385 EmptyExpr!9023)))

(declare-fun b!2927417 () Bool)

(declare-fun c!478141 () Bool)

(assert (=> b!2927417 (= c!478141 call!192090)))

(assert (=> b!2927417 (= e!1846389 e!1846390)))

(declare-fun b!2927418 () Bool)

(assert (=> b!2927418 (= e!1846393 e!1846380)))

(declare-fun c!478139 () Bool)

(assert (=> b!2927418 (= c!478139 ((_ is ElementMatch!9023) r!17423))))

(declare-fun bm!192089 () Bool)

(assert (=> bm!192089 (= call!192096 (isEmptyLang!190 (ite c!478133 lt!1027041 lt!1027045)))))

(declare-fun b!2927419 () Bool)

(assert (=> b!2927419 (= e!1846385 e!1846384)))

(assert (=> b!2927419 (= c!478140 ((_ is Star!9023) r!17423))))

(declare-fun b!2927420 () Bool)

(declare-fun c!478138 () Bool)

(assert (=> b!2927420 (= c!478138 call!192095)))

(assert (=> b!2927420 (= e!1846381 e!1846392)))

(declare-fun b!2927421 () Bool)

(assert (=> b!2927421 (= e!1846392 lt!1027041)))

(declare-fun b!2927422 () Bool)

(declare-fun c!478136 () Bool)

(assert (=> b!2927422 (= c!478136 e!1846382)))

(declare-fun res!1208246 () Bool)

(assert (=> b!2927422 (=> res!1208246 e!1846382)))

(assert (=> b!2927422 (= res!1208246 call!192092)))

(assert (=> b!2927422 (= lt!1027042 call!192091)))

(assert (=> b!2927422 (= e!1846384 e!1846383)))

(declare-fun b!2927423 () Bool)

(assert (=> b!2927423 (= e!1846383 EmptyExpr!9023)))

(declare-fun d!839031 () Bool)

(assert (=> d!839031 e!1846391))

(declare-fun res!1208247 () Bool)

(assert (=> d!839031 (=> (not res!1208247) (not e!1846391))))

(assert (=> d!839031 (= res!1208247 (validRegex!3756 lt!1027044))))

(assert (=> d!839031 (= lt!1027044 e!1846393)))

(declare-fun c!478143 () Bool)

(assert (=> d!839031 (= c!478143 ((_ is EmptyLang!9023) r!17423))))

(assert (=> d!839031 (validRegex!3756 r!17423)))

(assert (=> d!839031 (= (simplify!52 r!17423) lt!1027044)))

(declare-fun b!2927424 () Bool)

(assert (=> b!2927424 (= e!1846387 e!1846381)))

(assert (=> b!2927424 (= lt!1027041 call!192094)))

(assert (=> b!2927424 (= lt!1027040 call!192093)))

(declare-fun c!478142 () Bool)

(assert (=> b!2927424 (= c!478142 call!192096)))

(declare-fun b!2927425 () Bool)

(assert (=> b!2927425 (= e!1846389 EmptyLang!9023)))

(declare-fun b!2927426 () Bool)

(assert (=> b!2927426 (= e!1846380 r!17423)))

(declare-fun b!2927427 () Bool)

(assert (=> b!2927427 (= e!1846390 e!1846388)))

(declare-fun c!478137 () Bool)

(assert (=> b!2927427 (= c!478137 (isEmptyExpr!275 lt!1027043))))

(declare-fun bm!192090 () Bool)

(assert (=> bm!192090 (= call!192091 (simplify!52 (ite c!478140 (reg!9352 r!17423) (ite c!478133 (regOne!18559 r!17423) (regTwo!18558 r!17423)))))))

(declare-fun b!2927428 () Bool)

(assert (=> b!2927428 (= e!1846386 call!192095)))

(declare-fun bm!192091 () Bool)

(assert (=> bm!192091 (= call!192093 (simplify!52 (ite c!478133 (regTwo!18559 r!17423) (regOne!18558 r!17423))))))

(assert (= (and d!839031 c!478143) b!2927409))

(assert (= (and d!839031 (not c!478143)) b!2927418))

(assert (= (and b!2927418 c!478139) b!2927426))

(assert (= (and b!2927418 (not c!478139)) b!2927405))

(assert (= (and b!2927405 c!478134) b!2927416))

(assert (= (and b!2927405 (not c!478134)) b!2927419))

(assert (= (and b!2927419 c!478140) b!2927422))

(assert (= (and b!2927419 (not c!478140)) b!2927413))

(assert (= (and b!2927422 (not res!1208246)) b!2927414))

(assert (= (and b!2927422 c!478136) b!2927423))

(assert (= (and b!2927422 (not c!478136)) b!2927404))

(assert (= (and b!2927413 c!478133) b!2927424))

(assert (= (and b!2927413 (not c!478133)) b!2927408))

(assert (= (and b!2927424 c!478142) b!2927410))

(assert (= (and b!2927424 (not c!478142)) b!2927420))

(assert (= (and b!2927420 c!478138) b!2927421))

(assert (= (and b!2927420 (not c!478138)) b!2927412))

(assert (= (and b!2927408 (not res!1208248)) b!2927428))

(assert (= (and b!2927408 c!478135) b!2927425))

(assert (= (and b!2927408 (not c!478135)) b!2927417))

(assert (= (and b!2927417 c!478141) b!2927407))

(assert (= (and b!2927417 (not c!478141)) b!2927427))

(assert (= (and b!2927427 c!478137) b!2927415))

(assert (= (and b!2927427 (not c!478137)) b!2927411))

(assert (= (or b!2927424 b!2927408) bm!192086))

(assert (= (or b!2927424 b!2927408) bm!192091))

(assert (= (or b!2927424 b!2927408) bm!192089))

(assert (= (or b!2927420 b!2927428) bm!192088))

(assert (= (or b!2927414 b!2927417) bm!192087))

(assert (= (or b!2927422 bm!192086) bm!192090))

(assert (= (or b!2927422 bm!192088) bm!192085))

(assert (= (and d!839031 res!1208247) b!2927406))

(declare-fun m!3319433 () Bool)

(assert (=> b!2927427 m!3319433))

(declare-fun m!3319435 () Bool)

(assert (=> b!2927406 m!3319435))

(assert (=> b!2927406 m!3319421))

(declare-fun m!3319437 () Bool)

(assert (=> d!839031 m!3319437))

(assert (=> d!839031 m!3319351))

(declare-fun m!3319439 () Bool)

(assert (=> bm!192087 m!3319439))

(declare-fun m!3319441 () Bool)

(assert (=> bm!192085 m!3319441))

(declare-fun m!3319443 () Bool)

(assert (=> bm!192090 m!3319443))

(declare-fun m!3319445 () Bool)

(assert (=> bm!192091 m!3319445))

(declare-fun m!3319447 () Bool)

(assert (=> bm!192089 m!3319447))

(assert (=> b!2926992 d!839031))

(declare-fun e!1846396 () Bool)

(assert (=> b!2926993 (= tp!938421 e!1846396)))

(declare-fun b!2927439 () Bool)

(assert (=> b!2927439 (= e!1846396 tp_is_empty!15609)))

(declare-fun b!2927441 () Bool)

(declare-fun tp!938474 () Bool)

(assert (=> b!2927441 (= e!1846396 tp!938474)))

(declare-fun b!2927440 () Bool)

(declare-fun tp!938473 () Bool)

(declare-fun tp!938472 () Bool)

(assert (=> b!2927440 (= e!1846396 (and tp!938473 tp!938472))))

(declare-fun b!2927442 () Bool)

(declare-fun tp!938471 () Bool)

(declare-fun tp!938470 () Bool)

(assert (=> b!2927442 (= e!1846396 (and tp!938471 tp!938470))))

(assert (= (and b!2926993 ((_ is ElementMatch!9023) (regOne!18558 r!17423))) b!2927439))

(assert (= (and b!2926993 ((_ is Concat!14344) (regOne!18558 r!17423))) b!2927440))

(assert (= (and b!2926993 ((_ is Star!9023) (regOne!18558 r!17423))) b!2927441))

(assert (= (and b!2926993 ((_ is Union!9023) (regOne!18558 r!17423))) b!2927442))

(declare-fun e!1846397 () Bool)

(assert (=> b!2926993 (= tp!938420 e!1846397)))

(declare-fun b!2927443 () Bool)

(assert (=> b!2927443 (= e!1846397 tp_is_empty!15609)))

(declare-fun b!2927445 () Bool)

(declare-fun tp!938479 () Bool)

(assert (=> b!2927445 (= e!1846397 tp!938479)))

(declare-fun b!2927444 () Bool)

(declare-fun tp!938478 () Bool)

(declare-fun tp!938477 () Bool)

(assert (=> b!2927444 (= e!1846397 (and tp!938478 tp!938477))))

(declare-fun b!2927446 () Bool)

(declare-fun tp!938476 () Bool)

(declare-fun tp!938475 () Bool)

(assert (=> b!2927446 (= e!1846397 (and tp!938476 tp!938475))))

(assert (= (and b!2926993 ((_ is ElementMatch!9023) (regTwo!18558 r!17423))) b!2927443))

(assert (= (and b!2926993 ((_ is Concat!14344) (regTwo!18558 r!17423))) b!2927444))

(assert (= (and b!2926993 ((_ is Star!9023) (regTwo!18558 r!17423))) b!2927445))

(assert (= (and b!2926993 ((_ is Union!9023) (regTwo!18558 r!17423))) b!2927446))

(declare-fun e!1846398 () Bool)

(assert (=> b!2926989 (= tp!938419 e!1846398)))

(declare-fun b!2927447 () Bool)

(assert (=> b!2927447 (= e!1846398 tp_is_empty!15609)))

(declare-fun b!2927449 () Bool)

(declare-fun tp!938484 () Bool)

(assert (=> b!2927449 (= e!1846398 tp!938484)))

(declare-fun b!2927448 () Bool)

(declare-fun tp!938483 () Bool)

(declare-fun tp!938482 () Bool)

(assert (=> b!2927448 (= e!1846398 (and tp!938483 tp!938482))))

(declare-fun b!2927450 () Bool)

(declare-fun tp!938481 () Bool)

(declare-fun tp!938480 () Bool)

(assert (=> b!2927450 (= e!1846398 (and tp!938481 tp!938480))))

(assert (= (and b!2926989 ((_ is ElementMatch!9023) (regOne!18559 r!17423))) b!2927447))

(assert (= (and b!2926989 ((_ is Concat!14344) (regOne!18559 r!17423))) b!2927448))

(assert (= (and b!2926989 ((_ is Star!9023) (regOne!18559 r!17423))) b!2927449))

(assert (= (and b!2926989 ((_ is Union!9023) (regOne!18559 r!17423))) b!2927450))

(declare-fun e!1846399 () Bool)

(assert (=> b!2926989 (= tp!938418 e!1846399)))

(declare-fun b!2927451 () Bool)

(assert (=> b!2927451 (= e!1846399 tp_is_empty!15609)))

(declare-fun b!2927453 () Bool)

(declare-fun tp!938489 () Bool)

(assert (=> b!2927453 (= e!1846399 tp!938489)))

(declare-fun b!2927452 () Bool)

(declare-fun tp!938488 () Bool)

(declare-fun tp!938487 () Bool)

(assert (=> b!2927452 (= e!1846399 (and tp!938488 tp!938487))))

(declare-fun b!2927454 () Bool)

(declare-fun tp!938486 () Bool)

(declare-fun tp!938485 () Bool)

(assert (=> b!2927454 (= e!1846399 (and tp!938486 tp!938485))))

(assert (= (and b!2926989 ((_ is ElementMatch!9023) (regTwo!18559 r!17423))) b!2927451))

(assert (= (and b!2926989 ((_ is Concat!14344) (regTwo!18559 r!17423))) b!2927452))

(assert (= (and b!2926989 ((_ is Star!9023) (regTwo!18559 r!17423))) b!2927453))

(assert (= (and b!2926989 ((_ is Union!9023) (regTwo!18559 r!17423))) b!2927454))

(declare-fun e!1846400 () Bool)

(assert (=> b!2926990 (= tp!938417 e!1846400)))

(declare-fun b!2927455 () Bool)

(assert (=> b!2927455 (= e!1846400 tp_is_empty!15609)))

(declare-fun b!2927457 () Bool)

(declare-fun tp!938494 () Bool)

(assert (=> b!2927457 (= e!1846400 tp!938494)))

(declare-fun b!2927456 () Bool)

(declare-fun tp!938493 () Bool)

(declare-fun tp!938492 () Bool)

(assert (=> b!2927456 (= e!1846400 (and tp!938493 tp!938492))))

(declare-fun b!2927458 () Bool)

(declare-fun tp!938491 () Bool)

(declare-fun tp!938490 () Bool)

(assert (=> b!2927458 (= e!1846400 (and tp!938491 tp!938490))))

(assert (= (and b!2926990 ((_ is ElementMatch!9023) (reg!9352 r!17423))) b!2927455))

(assert (= (and b!2926990 ((_ is Concat!14344) (reg!9352 r!17423))) b!2927456))

(assert (= (and b!2926990 ((_ is Star!9023) (reg!9352 r!17423))) b!2927457))

(assert (= (and b!2926990 ((_ is Union!9023) (reg!9352 r!17423))) b!2927458))

(declare-fun b!2927463 () Bool)

(declare-fun e!1846403 () Bool)

(declare-fun tp!938497 () Bool)

(assert (=> b!2927463 (= e!1846403 (and tp_is_empty!15609 tp!938497))))

(assert (=> b!2926991 (= tp!938416 e!1846403)))

(assert (= (and b!2926991 ((_ is Cons!34764) (t!233953 s!11993))) b!2927463))

(check-sat (not b!2927031) (not b!2927296) (not b!2927301) (not b!2927302) (not b!2927406) (not b!2927299) (not b!2927444) (not d!839021) (not b!2927463) (not b!2927448) (not b!2927449) (not b!2927441) (not b!2927346) (not bm!192070) (not b!2927445) (not bm!192091) (not bm!192061) (not b!2927457) (not bm!192068) (not b!2927442) (not b!2927452) (not bm!192087) (not b!2927454) (not bm!192060) (not b!2927427) (not b!2927297) (not d!839031) (not b!2927458) (not b!2927450) (not b!2927221) (not bm!192067) (not b!2927456) (not b!2927440) tp_is_empty!15609 (not bm!192022) (not b!2927305) (not bm!192020) (not bm!192089) (not bm!192085) (not bm!192090) (not b!2927453) (not b!2927211) (not b!2927446) (not d!839025))
(check-sat)
