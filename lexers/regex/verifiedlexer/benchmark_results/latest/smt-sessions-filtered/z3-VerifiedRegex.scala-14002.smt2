; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740342 () Bool)

(assert start!740342)

(declare-fun b!7777096 () Bool)

(declare-fun e!4607320 () Bool)

(declare-fun tp_is_empty!51953 () Bool)

(assert (=> b!7777096 (= e!4607320 tp_is_empty!51953)))

(declare-fun b!7777097 () Bool)

(declare-fun res!3100043 () Bool)

(declare-fun e!4607322 () Bool)

(assert (=> b!7777097 (=> (not res!3100043) (not e!4607322))))

(declare-datatypes ((C!41924 0))(
  ( (C!41925 (val!31402 Int)) )
))
(declare-datatypes ((Regex!20799 0))(
  ( (ElementMatch!20799 (c!1433156 C!41924)) (Concat!29644 (regOne!42110 Regex!20799) (regTwo!42110 Regex!20799)) (EmptyExpr!20799) (Star!20799 (reg!21128 Regex!20799)) (EmptyLang!20799) (Union!20799 (regOne!42111 Regex!20799) (regTwo!42111 Regex!20799)) )
))
(declare-fun r2!6217 () Regex!20799)

(declare-fun validRegex!11213 (Regex!20799) Bool)

(assert (=> b!7777097 (= res!3100043 (validRegex!11213 r2!6217))))

(declare-fun b!7777098 () Bool)

(declare-fun e!4607319 () Bool)

(declare-fun tp!2285482 () Bool)

(declare-fun tp!2285474 () Bool)

(assert (=> b!7777098 (= e!4607319 (and tp!2285482 tp!2285474))))

(declare-fun b!7777099 () Bool)

(declare-fun tp!2285480 () Bool)

(declare-fun tp!2285473 () Bool)

(assert (=> b!7777099 (= e!4607319 (and tp!2285480 tp!2285473))))

(declare-fun b!7777100 () Bool)

(declare-fun tp!2285475 () Bool)

(declare-fun tp!2285481 () Bool)

(assert (=> b!7777100 (= e!4607320 (and tp!2285475 tp!2285481))))

(declare-fun b!7777101 () Bool)

(declare-fun tp!2285483 () Bool)

(assert (=> b!7777101 (= e!4607319 tp!2285483)))

(declare-fun b!7777102 () Bool)

(declare-fun e!4607324 () Bool)

(declare-fun e!4607325 () Bool)

(assert (=> b!7777102 (= e!4607324 e!4607325)))

(declare-fun res!3100046 () Bool)

(assert (=> b!7777102 (=> (not res!3100046) (not e!4607325))))

(declare-fun lt!2672366 () Regex!20799)

(declare-datatypes ((List!73638 0))(
  ( (Nil!73514) (Cons!73514 (h!79962 C!41924) (t!388373 List!73638)) )
))
(declare-fun s!14292 () List!73638)

(declare-fun matchR!10259 (Regex!20799 List!73638) Bool)

(assert (=> b!7777102 (= res!3100046 (matchR!10259 lt!2672366 (t!388373 s!14292)))))

(declare-fun lt!2672365 () Regex!20799)

(declare-fun derivativeStep!6142 (Regex!20799 C!41924) Regex!20799)

(assert (=> b!7777102 (= lt!2672366 (derivativeStep!6142 lt!2672365 (h!79962 s!14292)))))

(declare-fun b!7777103 () Bool)

(declare-fun e!4607321 () Bool)

(declare-fun lt!2672367 () Regex!20799)

(assert (=> b!7777103 (= e!4607321 (validRegex!11213 lt!2672367))))

(declare-fun b!7777105 () Bool)

(declare-fun e!4607326 () Bool)

(assert (=> b!7777105 (= e!4607325 e!4607326)))

(declare-fun res!3100041 () Bool)

(assert (=> b!7777105 (=> (not res!3100041) (not e!4607326))))

(declare-fun lt!2672369 () Regex!20799)

(assert (=> b!7777105 (= res!3100041 (= lt!2672366 (Union!20799 lt!2672369 lt!2672367)))))

(assert (=> b!7777105 (= lt!2672367 (derivativeStep!6142 r2!6217 (h!79962 s!14292)))))

(declare-fun r1!6279 () Regex!20799)

(assert (=> b!7777105 (= lt!2672369 (Concat!29644 (derivativeStep!6142 r1!6279 (h!79962 s!14292)) r2!6217))))

(declare-fun b!7777106 () Bool)

(declare-fun res!3100040 () Bool)

(assert (=> b!7777106 (=> (not res!3100040) (not e!4607325))))

(declare-fun nullable!9187 (Regex!20799) Bool)

(assert (=> b!7777106 (= res!3100040 (nullable!9187 r1!6279))))

(declare-fun b!7777107 () Bool)

(assert (=> b!7777107 (= e!4607319 tp_is_empty!51953)))

(declare-fun b!7777104 () Bool)

(declare-fun tp!2285479 () Bool)

(assert (=> b!7777104 (= e!4607320 tp!2285479)))

(declare-fun res!3100048 () Bool)

(assert (=> start!740342 (=> (not res!3100048) (not e!4607322))))

(assert (=> start!740342 (= res!3100048 (validRegex!11213 r1!6279))))

(assert (=> start!740342 e!4607322))

(assert (=> start!740342 e!4607319))

(assert (=> start!740342 e!4607320))

(declare-fun e!4607323 () Bool)

(assert (=> start!740342 e!4607323))

(declare-fun b!7777108 () Bool)

(declare-fun tp!2285478 () Bool)

(assert (=> b!7777108 (= e!4607323 (and tp_is_empty!51953 tp!2285478))))

(declare-fun b!7777109 () Bool)

(assert (=> b!7777109 (= e!4607326 (not e!4607321))))

(declare-fun res!3100047 () Bool)

(assert (=> b!7777109 (=> res!3100047 e!4607321)))

(declare-fun lt!2672370 () Bool)

(assert (=> b!7777109 (= res!3100047 lt!2672370)))

(declare-fun e!4607327 () Bool)

(assert (=> b!7777109 e!4607327))

(declare-fun res!3100044 () Bool)

(assert (=> b!7777109 (=> res!3100044 e!4607327)))

(assert (=> b!7777109 (= res!3100044 lt!2672370)))

(assert (=> b!7777109 (= lt!2672370 (matchR!10259 lt!2672369 (t!388373 s!14292)))))

(declare-datatypes ((Unit!168500 0))(
  ( (Unit!168501) )
))
(declare-fun lt!2672368 () Unit!168500)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!374 (Regex!20799 Regex!20799 List!73638) Unit!168500)

(assert (=> b!7777109 (= lt!2672368 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!374 lt!2672369 lt!2672367 (t!388373 s!14292)))))

(declare-fun b!7777110 () Bool)

(declare-fun res!3100045 () Bool)

(assert (=> b!7777110 (=> (not res!3100045) (not e!4607324))))

(get-info :version)

(assert (=> b!7777110 (= res!3100045 ((_ is Cons!73514) s!14292))))

(declare-fun b!7777111 () Bool)

(assert (=> b!7777111 (= e!4607322 e!4607324)))

(declare-fun res!3100042 () Bool)

(assert (=> b!7777111 (=> (not res!3100042) (not e!4607324))))

(assert (=> b!7777111 (= res!3100042 (matchR!10259 lt!2672365 s!14292))))

(assert (=> b!7777111 (= lt!2672365 (Concat!29644 r1!6279 r2!6217))))

(declare-fun b!7777112 () Bool)

(assert (=> b!7777112 (= e!4607327 (matchR!10259 lt!2672367 (t!388373 s!14292)))))

(declare-fun b!7777113 () Bool)

(declare-fun tp!2285477 () Bool)

(declare-fun tp!2285476 () Bool)

(assert (=> b!7777113 (= e!4607320 (and tp!2285477 tp!2285476))))

(assert (= (and start!740342 res!3100048) b!7777097))

(assert (= (and b!7777097 res!3100043) b!7777111))

(assert (= (and b!7777111 res!3100042) b!7777110))

(assert (= (and b!7777110 res!3100045) b!7777102))

(assert (= (and b!7777102 res!3100046) b!7777106))

(assert (= (and b!7777106 res!3100040) b!7777105))

(assert (= (and b!7777105 res!3100041) b!7777109))

(assert (= (and b!7777109 (not res!3100044)) b!7777112))

(assert (= (and b!7777109 (not res!3100047)) b!7777103))

(assert (= (and start!740342 ((_ is ElementMatch!20799) r1!6279)) b!7777107))

(assert (= (and start!740342 ((_ is Concat!29644) r1!6279)) b!7777099))

(assert (= (and start!740342 ((_ is Star!20799) r1!6279)) b!7777101))

(assert (= (and start!740342 ((_ is Union!20799) r1!6279)) b!7777098))

(assert (= (and start!740342 ((_ is ElementMatch!20799) r2!6217)) b!7777096))

(assert (= (and start!740342 ((_ is Concat!29644) r2!6217)) b!7777100))

(assert (= (and start!740342 ((_ is Star!20799) r2!6217)) b!7777104))

(assert (= (and start!740342 ((_ is Union!20799) r2!6217)) b!7777113))

(assert (= (and start!740342 ((_ is Cons!73514) s!14292)) b!7777108))

(declare-fun m!8227446 () Bool)

(assert (=> b!7777106 m!8227446))

(declare-fun m!8227448 () Bool)

(assert (=> b!7777105 m!8227448))

(declare-fun m!8227450 () Bool)

(assert (=> b!7777105 m!8227450))

(declare-fun m!8227452 () Bool)

(assert (=> b!7777111 m!8227452))

(declare-fun m!8227454 () Bool)

(assert (=> start!740342 m!8227454))

(declare-fun m!8227456 () Bool)

(assert (=> b!7777102 m!8227456))

(declare-fun m!8227458 () Bool)

(assert (=> b!7777102 m!8227458))

(declare-fun m!8227460 () Bool)

(assert (=> b!7777112 m!8227460))

(declare-fun m!8227462 () Bool)

(assert (=> b!7777097 m!8227462))

(declare-fun m!8227464 () Bool)

(assert (=> b!7777109 m!8227464))

(declare-fun m!8227466 () Bool)

(assert (=> b!7777109 m!8227466))

(declare-fun m!8227468 () Bool)

(assert (=> b!7777103 m!8227468))

(check-sat (not start!740342) (not b!7777112) (not b!7777098) (not b!7777113) (not b!7777100) (not b!7777101) (not b!7777102) (not b!7777106) (not b!7777108) (not b!7777109) (not b!7777111) (not b!7777097) (not b!7777099) (not b!7777105) (not b!7777104) (not b!7777103) tp_is_empty!51953)
(check-sat)
(get-model)

(declare-fun b!7777132 () Bool)

(declare-fun e!4607343 () Bool)

(declare-fun e!4607346 () Bool)

(assert (=> b!7777132 (= e!4607343 e!4607346)))

(declare-fun c!1433162 () Bool)

(assert (=> b!7777132 (= c!1433162 ((_ is Union!20799) r2!6217))))

(declare-fun bm!720818 () Bool)

(declare-fun call!720824 () Bool)

(declare-fun call!720825 () Bool)

(assert (=> bm!720818 (= call!720824 call!720825)))

(declare-fun b!7777134 () Bool)

(declare-fun e!4607345 () Bool)

(assert (=> b!7777134 (= e!4607343 e!4607345)))

(declare-fun res!3100061 () Bool)

(assert (=> b!7777134 (= res!3100061 (not (nullable!9187 (reg!21128 r2!6217))))))

(assert (=> b!7777134 (=> (not res!3100061) (not e!4607345))))

(declare-fun b!7777135 () Bool)

(declare-fun e!4607344 () Bool)

(declare-fun call!720823 () Bool)

(assert (=> b!7777135 (= e!4607344 call!720823)))

(declare-fun c!1433161 () Bool)

(declare-fun bm!720819 () Bool)

(assert (=> bm!720819 (= call!720825 (validRegex!11213 (ite c!1433161 (reg!21128 r2!6217) (ite c!1433162 (regOne!42111 r2!6217) (regOne!42110 r2!6217)))))))

(declare-fun b!7777136 () Bool)

(declare-fun e!4607342 () Bool)

(assert (=> b!7777136 (= e!4607342 e!4607343)))

(assert (=> b!7777136 (= c!1433161 ((_ is Star!20799) r2!6217))))

(declare-fun b!7777137 () Bool)

(assert (=> b!7777137 (= e!4607345 call!720825)))

(declare-fun b!7777138 () Bool)

(declare-fun res!3100059 () Bool)

(declare-fun e!4607347 () Bool)

(assert (=> b!7777138 (=> res!3100059 e!4607347)))

(assert (=> b!7777138 (= res!3100059 (not ((_ is Concat!29644) r2!6217)))))

(assert (=> b!7777138 (= e!4607346 e!4607347)))

(declare-fun b!7777139 () Bool)

(declare-fun e!4607348 () Bool)

(assert (=> b!7777139 (= e!4607348 call!720823)))

(declare-fun d!2344895 () Bool)

(declare-fun res!3100060 () Bool)

(assert (=> d!2344895 (=> res!3100060 e!4607342)))

(assert (=> d!2344895 (= res!3100060 ((_ is ElementMatch!20799) r2!6217))))

(assert (=> d!2344895 (= (validRegex!11213 r2!6217) e!4607342)))

(declare-fun b!7777133 () Bool)

(assert (=> b!7777133 (= e!4607347 e!4607348)))

(declare-fun res!3100063 () Bool)

(assert (=> b!7777133 (=> (not res!3100063) (not e!4607348))))

(assert (=> b!7777133 (= res!3100063 call!720824)))

(declare-fun bm!720820 () Bool)

(assert (=> bm!720820 (= call!720823 (validRegex!11213 (ite c!1433162 (regTwo!42111 r2!6217) (regTwo!42110 r2!6217))))))

(declare-fun b!7777140 () Bool)

(declare-fun res!3100062 () Bool)

(assert (=> b!7777140 (=> (not res!3100062) (not e!4607344))))

(assert (=> b!7777140 (= res!3100062 call!720824)))

(assert (=> b!7777140 (= e!4607346 e!4607344)))

(assert (= (and d!2344895 (not res!3100060)) b!7777136))

(assert (= (and b!7777136 c!1433161) b!7777134))

(assert (= (and b!7777136 (not c!1433161)) b!7777132))

(assert (= (and b!7777134 res!3100061) b!7777137))

(assert (= (and b!7777132 c!1433162) b!7777140))

(assert (= (and b!7777132 (not c!1433162)) b!7777138))

(assert (= (and b!7777140 res!3100062) b!7777135))

(assert (= (and b!7777138 (not res!3100059)) b!7777133))

(assert (= (and b!7777133 res!3100063) b!7777139))

(assert (= (or b!7777140 b!7777133) bm!720818))

(assert (= (or b!7777135 b!7777139) bm!720820))

(assert (= (or b!7777137 bm!720818) bm!720819))

(declare-fun m!8227470 () Bool)

(assert (=> b!7777134 m!8227470))

(declare-fun m!8227472 () Bool)

(assert (=> bm!720819 m!8227472))

(declare-fun m!8227474 () Bool)

(assert (=> bm!720820 m!8227474))

(assert (=> b!7777097 d!2344895))

(declare-fun b!7777231 () Bool)

(declare-fun res!3100110 () Bool)

(declare-fun e!4607400 () Bool)

(assert (=> b!7777231 (=> res!3100110 e!4607400)))

(assert (=> b!7777231 (= res!3100110 (not ((_ is ElementMatch!20799) lt!2672366)))))

(declare-fun e!4607397 () Bool)

(assert (=> b!7777231 (= e!4607397 e!4607400)))

(declare-fun b!7777232 () Bool)

(declare-fun res!3100106 () Bool)

(declare-fun e!4607395 () Bool)

(assert (=> b!7777232 (=> res!3100106 e!4607395)))

(declare-fun isEmpty!42173 (List!73638) Bool)

(declare-fun tail!15445 (List!73638) List!73638)

(assert (=> b!7777232 (= res!3100106 (not (isEmpty!42173 (tail!15445 (t!388373 s!14292)))))))

(declare-fun b!7777233 () Bool)

(declare-fun e!4607394 () Bool)

(declare-fun lt!2672378 () Bool)

(declare-fun call!720833 () Bool)

(assert (=> b!7777233 (= e!4607394 (= lt!2672378 call!720833))))

(declare-fun b!7777234 () Bool)

(declare-fun res!3100109 () Bool)

(declare-fun e!4607398 () Bool)

(assert (=> b!7777234 (=> (not res!3100109) (not e!4607398))))

(assert (=> b!7777234 (= res!3100109 (not call!720833))))

(declare-fun b!7777235 () Bool)

(declare-fun e!4607396 () Bool)

(assert (=> b!7777235 (= e!4607400 e!4607396)))

(declare-fun res!3100107 () Bool)

(assert (=> b!7777235 (=> (not res!3100107) (not e!4607396))))

(assert (=> b!7777235 (= res!3100107 (not lt!2672378))))

(declare-fun b!7777236 () Bool)

(assert (=> b!7777236 (= e!4607394 e!4607397)))

(declare-fun c!1433190 () Bool)

(assert (=> b!7777236 (= c!1433190 ((_ is EmptyLang!20799) lt!2672366))))

(declare-fun bm!720828 () Bool)

(assert (=> bm!720828 (= call!720833 (isEmpty!42173 (t!388373 s!14292)))))

(declare-fun b!7777237 () Bool)

(declare-fun head!15904 (List!73638) C!41924)

(assert (=> b!7777237 (= e!4607398 (= (head!15904 (t!388373 s!14292)) (c!1433156 lt!2672366)))))

(declare-fun b!7777238 () Bool)

(assert (=> b!7777238 (= e!4607396 e!4607395)))

(declare-fun res!3100111 () Bool)

(assert (=> b!7777238 (=> res!3100111 e!4607395)))

(assert (=> b!7777238 (= res!3100111 call!720833)))

(declare-fun b!7777239 () Bool)

(assert (=> b!7777239 (= e!4607397 (not lt!2672378))))

(declare-fun b!7777240 () Bool)

(declare-fun res!3100104 () Bool)

(assert (=> b!7777240 (=> res!3100104 e!4607400)))

(assert (=> b!7777240 (= res!3100104 e!4607398)))

(declare-fun res!3100105 () Bool)

(assert (=> b!7777240 (=> (not res!3100105) (not e!4607398))))

(assert (=> b!7777240 (= res!3100105 lt!2672378)))

(declare-fun d!2344899 () Bool)

(assert (=> d!2344899 e!4607394))

(declare-fun c!1433188 () Bool)

(assert (=> d!2344899 (= c!1433188 ((_ is EmptyExpr!20799) lt!2672366))))

(declare-fun e!4607399 () Bool)

(assert (=> d!2344899 (= lt!2672378 e!4607399)))

(declare-fun c!1433189 () Bool)

(assert (=> d!2344899 (= c!1433189 (isEmpty!42173 (t!388373 s!14292)))))

(assert (=> d!2344899 (validRegex!11213 lt!2672366)))

(assert (=> d!2344899 (= (matchR!10259 lt!2672366 (t!388373 s!14292)) lt!2672378)))

(declare-fun b!7777241 () Bool)

(declare-fun res!3100108 () Bool)

(assert (=> b!7777241 (=> (not res!3100108) (not e!4607398))))

(assert (=> b!7777241 (= res!3100108 (isEmpty!42173 (tail!15445 (t!388373 s!14292))))))

(declare-fun b!7777242 () Bool)

(assert (=> b!7777242 (= e!4607395 (not (= (head!15904 (t!388373 s!14292)) (c!1433156 lt!2672366))))))

(declare-fun b!7777243 () Bool)

(assert (=> b!7777243 (= e!4607399 (matchR!10259 (derivativeStep!6142 lt!2672366 (head!15904 (t!388373 s!14292))) (tail!15445 (t!388373 s!14292))))))

(declare-fun b!7777244 () Bool)

(assert (=> b!7777244 (= e!4607399 (nullable!9187 lt!2672366))))

(assert (= (and d!2344899 c!1433189) b!7777244))

(assert (= (and d!2344899 (not c!1433189)) b!7777243))

(assert (= (and d!2344899 c!1433188) b!7777233))

(assert (= (and d!2344899 (not c!1433188)) b!7777236))

(assert (= (and b!7777236 c!1433190) b!7777239))

(assert (= (and b!7777236 (not c!1433190)) b!7777231))

(assert (= (and b!7777231 (not res!3100110)) b!7777240))

(assert (= (and b!7777240 res!3100105) b!7777234))

(assert (= (and b!7777234 res!3100109) b!7777241))

(assert (= (and b!7777241 res!3100108) b!7777237))

(assert (= (and b!7777240 (not res!3100104)) b!7777235))

(assert (= (and b!7777235 res!3100107) b!7777238))

(assert (= (and b!7777238 (not res!3100111)) b!7777232))

(assert (= (and b!7777232 (not res!3100106)) b!7777242))

(assert (= (or b!7777233 b!7777234 b!7777238) bm!720828))

(declare-fun m!8227492 () Bool)

(assert (=> d!2344899 m!8227492))

(declare-fun m!8227494 () Bool)

(assert (=> d!2344899 m!8227494))

(declare-fun m!8227496 () Bool)

(assert (=> b!7777242 m!8227496))

(assert (=> bm!720828 m!8227492))

(assert (=> b!7777237 m!8227496))

(declare-fun m!8227498 () Bool)

(assert (=> b!7777244 m!8227498))

(assert (=> b!7777243 m!8227496))

(assert (=> b!7777243 m!8227496))

(declare-fun m!8227500 () Bool)

(assert (=> b!7777243 m!8227500))

(declare-fun m!8227502 () Bool)

(assert (=> b!7777243 m!8227502))

(assert (=> b!7777243 m!8227500))

(assert (=> b!7777243 m!8227502))

(declare-fun m!8227504 () Bool)

(assert (=> b!7777243 m!8227504))

(assert (=> b!7777241 m!8227502))

(assert (=> b!7777241 m!8227502))

(declare-fun m!8227506 () Bool)

(assert (=> b!7777241 m!8227506))

(assert (=> b!7777232 m!8227502))

(assert (=> b!7777232 m!8227502))

(assert (=> b!7777232 m!8227506))

(assert (=> b!7777102 d!2344899))

(declare-fun b!7777325 () Bool)

(declare-fun c!1433218 () Bool)

(assert (=> b!7777325 (= c!1433218 (nullable!9187 (regOne!42110 lt!2672365)))))

(declare-fun e!4607454 () Regex!20799)

(declare-fun e!4607455 () Regex!20799)

(assert (=> b!7777325 (= e!4607454 e!4607455)))

(declare-fun b!7777326 () Bool)

(declare-fun call!720867 () Regex!20799)

(assert (=> b!7777326 (= e!4607454 (Concat!29644 call!720867 lt!2672365))))

(declare-fun call!720866 () Regex!20799)

(declare-fun c!1433217 () Bool)

(declare-fun bm!720860 () Bool)

(assert (=> bm!720860 (= call!720866 (derivativeStep!6142 (ite c!1433217 (regOne!42111 lt!2672365) (regOne!42110 lt!2672365)) (h!79962 s!14292)))))

(declare-fun d!2344903 () Bool)

(declare-fun lt!2672383 () Regex!20799)

(assert (=> d!2344903 (validRegex!11213 lt!2672383)))

(declare-fun e!4607451 () Regex!20799)

(assert (=> d!2344903 (= lt!2672383 e!4607451)))

(declare-fun c!1433219 () Bool)

(assert (=> d!2344903 (= c!1433219 (or ((_ is EmptyExpr!20799) lt!2672365) ((_ is EmptyLang!20799) lt!2672365)))))

(assert (=> d!2344903 (validRegex!11213 lt!2672365)))

(assert (=> d!2344903 (= (derivativeStep!6142 lt!2672365 (h!79962 s!14292)) lt!2672383)))

(declare-fun bm!720861 () Bool)

(declare-fun call!720868 () Regex!20799)

(assert (=> bm!720861 (= call!720867 call!720868)))

(declare-fun bm!720862 () Bool)

(declare-fun call!720865 () Regex!20799)

(assert (=> bm!720862 (= call!720865 call!720867)))

(declare-fun c!1433220 () Bool)

(declare-fun bm!720863 () Bool)

(assert (=> bm!720863 (= call!720868 (derivativeStep!6142 (ite c!1433217 (regTwo!42111 lt!2672365) (ite c!1433220 (reg!21128 lt!2672365) (ite c!1433218 (regTwo!42110 lt!2672365) (regOne!42110 lt!2672365)))) (h!79962 s!14292)))))

(declare-fun b!7777327 () Bool)

(assert (=> b!7777327 (= e!4607455 (Union!20799 (Concat!29644 call!720866 (regTwo!42110 lt!2672365)) call!720865))))

(declare-fun b!7777328 () Bool)

(assert (=> b!7777328 (= e!4607451 EmptyLang!20799)))

(declare-fun b!7777329 () Bool)

(declare-fun e!4607452 () Regex!20799)

(assert (=> b!7777329 (= e!4607452 e!4607454)))

(assert (=> b!7777329 (= c!1433220 ((_ is Star!20799) lt!2672365))))

(declare-fun b!7777330 () Bool)

(declare-fun e!4607453 () Regex!20799)

(assert (=> b!7777330 (= e!4607453 (ite (= (h!79962 s!14292) (c!1433156 lt!2672365)) EmptyExpr!20799 EmptyLang!20799))))

(declare-fun b!7777331 () Bool)

(assert (=> b!7777331 (= e!4607451 e!4607453)))

(declare-fun c!1433221 () Bool)

(assert (=> b!7777331 (= c!1433221 ((_ is ElementMatch!20799) lt!2672365))))

(declare-fun b!7777332 () Bool)

(assert (=> b!7777332 (= e!4607455 (Union!20799 (Concat!29644 call!720865 (regTwo!42110 lt!2672365)) EmptyLang!20799))))

(declare-fun b!7777333 () Bool)

(assert (=> b!7777333 (= c!1433217 ((_ is Union!20799) lt!2672365))))

(assert (=> b!7777333 (= e!4607453 e!4607452)))

(declare-fun b!7777334 () Bool)

(assert (=> b!7777334 (= e!4607452 (Union!20799 call!720866 call!720868))))

(assert (= (and d!2344903 c!1433219) b!7777328))

(assert (= (and d!2344903 (not c!1433219)) b!7777331))

(assert (= (and b!7777331 c!1433221) b!7777330))

(assert (= (and b!7777331 (not c!1433221)) b!7777333))

(assert (= (and b!7777333 c!1433217) b!7777334))

(assert (= (and b!7777333 (not c!1433217)) b!7777329))

(assert (= (and b!7777329 c!1433220) b!7777326))

(assert (= (and b!7777329 (not c!1433220)) b!7777325))

(assert (= (and b!7777325 c!1433218) b!7777327))

(assert (= (and b!7777325 (not c!1433218)) b!7777332))

(assert (= (or b!7777327 b!7777332) bm!720862))

(assert (= (or b!7777326 bm!720862) bm!720861))

(assert (= (or b!7777334 bm!720861) bm!720863))

(assert (= (or b!7777334 b!7777327) bm!720860))

(declare-fun m!8227552 () Bool)

(assert (=> b!7777325 m!8227552))

(declare-fun m!8227554 () Bool)

(assert (=> bm!720860 m!8227554))

(declare-fun m!8227556 () Bool)

(assert (=> d!2344903 m!8227556))

(declare-fun m!8227558 () Bool)

(assert (=> d!2344903 m!8227558))

(declare-fun m!8227560 () Bool)

(assert (=> bm!720863 m!8227560))

(assert (=> b!7777102 d!2344903))

(declare-fun b!7777355 () Bool)

(declare-fun res!3100146 () Bool)

(declare-fun e!4607472 () Bool)

(assert (=> b!7777355 (=> res!3100146 e!4607472)))

(assert (=> b!7777355 (= res!3100146 (not ((_ is ElementMatch!20799) lt!2672367)))))

(declare-fun e!4607469 () Bool)

(assert (=> b!7777355 (= e!4607469 e!4607472)))

(declare-fun b!7777356 () Bool)

(declare-fun res!3100142 () Bool)

(declare-fun e!4607467 () Bool)

(assert (=> b!7777356 (=> res!3100142 e!4607467)))

(assert (=> b!7777356 (= res!3100142 (not (isEmpty!42173 (tail!15445 (t!388373 s!14292)))))))

(declare-fun b!7777357 () Bool)

(declare-fun e!4607466 () Bool)

(declare-fun lt!2672386 () Bool)

(declare-fun call!720877 () Bool)

(assert (=> b!7777357 (= e!4607466 (= lt!2672386 call!720877))))

(declare-fun b!7777358 () Bool)

(declare-fun res!3100145 () Bool)

(declare-fun e!4607470 () Bool)

(assert (=> b!7777358 (=> (not res!3100145) (not e!4607470))))

(assert (=> b!7777358 (= res!3100145 (not call!720877))))

(declare-fun b!7777359 () Bool)

(declare-fun e!4607468 () Bool)

(assert (=> b!7777359 (= e!4607472 e!4607468)))

(declare-fun res!3100143 () Bool)

(assert (=> b!7777359 (=> (not res!3100143) (not e!4607468))))

(assert (=> b!7777359 (= res!3100143 (not lt!2672386))))

(declare-fun b!7777360 () Bool)

(assert (=> b!7777360 (= e!4607466 e!4607469)))

(declare-fun c!1433234 () Bool)

(assert (=> b!7777360 (= c!1433234 ((_ is EmptyLang!20799) lt!2672367))))

(declare-fun bm!720872 () Bool)

(assert (=> bm!720872 (= call!720877 (isEmpty!42173 (t!388373 s!14292)))))

(declare-fun b!7777361 () Bool)

(assert (=> b!7777361 (= e!4607470 (= (head!15904 (t!388373 s!14292)) (c!1433156 lt!2672367)))))

(declare-fun b!7777362 () Bool)

(assert (=> b!7777362 (= e!4607468 e!4607467)))

(declare-fun res!3100147 () Bool)

(assert (=> b!7777362 (=> res!3100147 e!4607467)))

(assert (=> b!7777362 (= res!3100147 call!720877)))

(declare-fun b!7777363 () Bool)

(assert (=> b!7777363 (= e!4607469 (not lt!2672386))))

(declare-fun b!7777364 () Bool)

(declare-fun res!3100140 () Bool)

(assert (=> b!7777364 (=> res!3100140 e!4607472)))

(assert (=> b!7777364 (= res!3100140 e!4607470)))

(declare-fun res!3100141 () Bool)

(assert (=> b!7777364 (=> (not res!3100141) (not e!4607470))))

(assert (=> b!7777364 (= res!3100141 lt!2672386)))

(declare-fun d!2344915 () Bool)

(assert (=> d!2344915 e!4607466))

(declare-fun c!1433232 () Bool)

(assert (=> d!2344915 (= c!1433232 ((_ is EmptyExpr!20799) lt!2672367))))

(declare-fun e!4607471 () Bool)

(assert (=> d!2344915 (= lt!2672386 e!4607471)))

(declare-fun c!1433233 () Bool)

(assert (=> d!2344915 (= c!1433233 (isEmpty!42173 (t!388373 s!14292)))))

(assert (=> d!2344915 (validRegex!11213 lt!2672367)))

(assert (=> d!2344915 (= (matchR!10259 lt!2672367 (t!388373 s!14292)) lt!2672386)))

(declare-fun b!7777365 () Bool)

(declare-fun res!3100144 () Bool)

(assert (=> b!7777365 (=> (not res!3100144) (not e!4607470))))

(assert (=> b!7777365 (= res!3100144 (isEmpty!42173 (tail!15445 (t!388373 s!14292))))))

(declare-fun b!7777366 () Bool)

(assert (=> b!7777366 (= e!4607467 (not (= (head!15904 (t!388373 s!14292)) (c!1433156 lt!2672367))))))

(declare-fun b!7777367 () Bool)

(assert (=> b!7777367 (= e!4607471 (matchR!10259 (derivativeStep!6142 lt!2672367 (head!15904 (t!388373 s!14292))) (tail!15445 (t!388373 s!14292))))))

(declare-fun b!7777368 () Bool)

(assert (=> b!7777368 (= e!4607471 (nullable!9187 lt!2672367))))

(assert (= (and d!2344915 c!1433233) b!7777368))

(assert (= (and d!2344915 (not c!1433233)) b!7777367))

(assert (= (and d!2344915 c!1433232) b!7777357))

(assert (= (and d!2344915 (not c!1433232)) b!7777360))

(assert (= (and b!7777360 c!1433234) b!7777363))

(assert (= (and b!7777360 (not c!1433234)) b!7777355))

(assert (= (and b!7777355 (not res!3100146)) b!7777364))

(assert (= (and b!7777364 res!3100141) b!7777358))

(assert (= (and b!7777358 res!3100145) b!7777365))

(assert (= (and b!7777365 res!3100144) b!7777361))

(assert (= (and b!7777364 (not res!3100140)) b!7777359))

(assert (= (and b!7777359 res!3100143) b!7777362))

(assert (= (and b!7777362 (not res!3100147)) b!7777356))

(assert (= (and b!7777356 (not res!3100142)) b!7777366))

(assert (= (or b!7777357 b!7777358 b!7777362) bm!720872))

(assert (=> d!2344915 m!8227492))

(assert (=> d!2344915 m!8227468))

(assert (=> b!7777366 m!8227496))

(assert (=> bm!720872 m!8227492))

(assert (=> b!7777361 m!8227496))

(declare-fun m!8227576 () Bool)

(assert (=> b!7777368 m!8227576))

(assert (=> b!7777367 m!8227496))

(assert (=> b!7777367 m!8227496))

(declare-fun m!8227578 () Bool)

(assert (=> b!7777367 m!8227578))

(assert (=> b!7777367 m!8227502))

(assert (=> b!7777367 m!8227578))

(assert (=> b!7777367 m!8227502))

(declare-fun m!8227582 () Bool)

(assert (=> b!7777367 m!8227582))

(assert (=> b!7777365 m!8227502))

(assert (=> b!7777365 m!8227502))

(assert (=> b!7777365 m!8227506))

(assert (=> b!7777356 m!8227502))

(assert (=> b!7777356 m!8227502))

(assert (=> b!7777356 m!8227506))

(assert (=> b!7777112 d!2344915))

(declare-fun d!2344921 () Bool)

(declare-fun nullableFct!3594 (Regex!20799) Bool)

(assert (=> d!2344921 (= (nullable!9187 r1!6279) (nullableFct!3594 r1!6279))))

(declare-fun bs!1966182 () Bool)

(assert (= bs!1966182 d!2344921))

(declare-fun m!8227584 () Bool)

(assert (=> bs!1966182 m!8227584))

(assert (=> b!7777106 d!2344921))

(declare-fun b!7777383 () Bool)

(declare-fun res!3100162 () Bool)

(declare-fun e!4607486 () Bool)

(assert (=> b!7777383 (=> res!3100162 e!4607486)))

(assert (=> b!7777383 (= res!3100162 (not ((_ is ElementMatch!20799) lt!2672365)))))

(declare-fun e!4607483 () Bool)

(assert (=> b!7777383 (= e!4607483 e!4607486)))

(declare-fun b!7777384 () Bool)

(declare-fun res!3100158 () Bool)

(declare-fun e!4607481 () Bool)

(assert (=> b!7777384 (=> res!3100158 e!4607481)))

(assert (=> b!7777384 (= res!3100158 (not (isEmpty!42173 (tail!15445 s!14292))))))

(declare-fun b!7777385 () Bool)

(declare-fun e!4607480 () Bool)

(declare-fun lt!2672388 () Bool)

(declare-fun call!720879 () Bool)

(assert (=> b!7777385 (= e!4607480 (= lt!2672388 call!720879))))

(declare-fun b!7777386 () Bool)

(declare-fun res!3100161 () Bool)

(declare-fun e!4607484 () Bool)

(assert (=> b!7777386 (=> (not res!3100161) (not e!4607484))))

(assert (=> b!7777386 (= res!3100161 (not call!720879))))

(declare-fun b!7777387 () Bool)

(declare-fun e!4607482 () Bool)

(assert (=> b!7777387 (= e!4607486 e!4607482)))

(declare-fun res!3100159 () Bool)

(assert (=> b!7777387 (=> (not res!3100159) (not e!4607482))))

(assert (=> b!7777387 (= res!3100159 (not lt!2672388))))

(declare-fun b!7777388 () Bool)

(assert (=> b!7777388 (= e!4607480 e!4607483)))

(declare-fun c!1433240 () Bool)

(assert (=> b!7777388 (= c!1433240 ((_ is EmptyLang!20799) lt!2672365))))

(declare-fun bm!720874 () Bool)

(assert (=> bm!720874 (= call!720879 (isEmpty!42173 s!14292))))

(declare-fun b!7777389 () Bool)

(assert (=> b!7777389 (= e!4607484 (= (head!15904 s!14292) (c!1433156 lt!2672365)))))

(declare-fun b!7777390 () Bool)

(assert (=> b!7777390 (= e!4607482 e!4607481)))

(declare-fun res!3100163 () Bool)

(assert (=> b!7777390 (=> res!3100163 e!4607481)))

(assert (=> b!7777390 (= res!3100163 call!720879)))

(declare-fun b!7777391 () Bool)

(assert (=> b!7777391 (= e!4607483 (not lt!2672388))))

(declare-fun b!7777392 () Bool)

(declare-fun res!3100156 () Bool)

(assert (=> b!7777392 (=> res!3100156 e!4607486)))

(assert (=> b!7777392 (= res!3100156 e!4607484)))

(declare-fun res!3100157 () Bool)

(assert (=> b!7777392 (=> (not res!3100157) (not e!4607484))))

(assert (=> b!7777392 (= res!3100157 lt!2672388)))

(declare-fun d!2344923 () Bool)

(assert (=> d!2344923 e!4607480))

(declare-fun c!1433238 () Bool)

(assert (=> d!2344923 (= c!1433238 ((_ is EmptyExpr!20799) lt!2672365))))

(declare-fun e!4607485 () Bool)

(assert (=> d!2344923 (= lt!2672388 e!4607485)))

(declare-fun c!1433239 () Bool)

(assert (=> d!2344923 (= c!1433239 (isEmpty!42173 s!14292))))

(assert (=> d!2344923 (validRegex!11213 lt!2672365)))

(assert (=> d!2344923 (= (matchR!10259 lt!2672365 s!14292) lt!2672388)))

(declare-fun b!7777393 () Bool)

(declare-fun res!3100160 () Bool)

(assert (=> b!7777393 (=> (not res!3100160) (not e!4607484))))

(assert (=> b!7777393 (= res!3100160 (isEmpty!42173 (tail!15445 s!14292)))))

(declare-fun b!7777394 () Bool)

(assert (=> b!7777394 (= e!4607481 (not (= (head!15904 s!14292) (c!1433156 lt!2672365))))))

(declare-fun b!7777395 () Bool)

(assert (=> b!7777395 (= e!4607485 (matchR!10259 (derivativeStep!6142 lt!2672365 (head!15904 s!14292)) (tail!15445 s!14292)))))

(declare-fun b!7777396 () Bool)

(assert (=> b!7777396 (= e!4607485 (nullable!9187 lt!2672365))))

(assert (= (and d!2344923 c!1433239) b!7777396))

(assert (= (and d!2344923 (not c!1433239)) b!7777395))

(assert (= (and d!2344923 c!1433238) b!7777385))

(assert (= (and d!2344923 (not c!1433238)) b!7777388))

(assert (= (and b!7777388 c!1433240) b!7777391))

(assert (= (and b!7777388 (not c!1433240)) b!7777383))

(assert (= (and b!7777383 (not res!3100162)) b!7777392))

(assert (= (and b!7777392 res!3100157) b!7777386))

(assert (= (and b!7777386 res!3100161) b!7777393))

(assert (= (and b!7777393 res!3100160) b!7777389))

(assert (= (and b!7777392 (not res!3100156)) b!7777387))

(assert (= (and b!7777387 res!3100159) b!7777390))

(assert (= (and b!7777390 (not res!3100163)) b!7777384))

(assert (= (and b!7777384 (not res!3100158)) b!7777394))

(assert (= (or b!7777385 b!7777386 b!7777390) bm!720874))

(declare-fun m!8227586 () Bool)

(assert (=> d!2344923 m!8227586))

(assert (=> d!2344923 m!8227558))

(declare-fun m!8227588 () Bool)

(assert (=> b!7777394 m!8227588))

(assert (=> bm!720874 m!8227586))

(assert (=> b!7777389 m!8227588))

(declare-fun m!8227590 () Bool)

(assert (=> b!7777396 m!8227590))

(assert (=> b!7777395 m!8227588))

(assert (=> b!7777395 m!8227588))

(declare-fun m!8227592 () Bool)

(assert (=> b!7777395 m!8227592))

(declare-fun m!8227594 () Bool)

(assert (=> b!7777395 m!8227594))

(assert (=> b!7777395 m!8227592))

(assert (=> b!7777395 m!8227594))

(declare-fun m!8227596 () Bool)

(assert (=> b!7777395 m!8227596))

(assert (=> b!7777393 m!8227594))

(assert (=> b!7777393 m!8227594))

(declare-fun m!8227598 () Bool)

(assert (=> b!7777393 m!8227598))

(assert (=> b!7777384 m!8227594))

(assert (=> b!7777384 m!8227594))

(assert (=> b!7777384 m!8227598))

(assert (=> b!7777111 d!2344923))

(declare-fun b!7777401 () Bool)

(declare-fun c!1433242 () Bool)

(assert (=> b!7777401 (= c!1433242 (nullable!9187 (regOne!42110 r2!6217)))))

(declare-fun e!4607494 () Regex!20799)

(declare-fun e!4607495 () Regex!20799)

(assert (=> b!7777401 (= e!4607494 e!4607495)))

(declare-fun b!7777402 () Bool)

(declare-fun call!720882 () Regex!20799)

(assert (=> b!7777402 (= e!4607494 (Concat!29644 call!720882 r2!6217))))

(declare-fun call!720881 () Regex!20799)

(declare-fun bm!720875 () Bool)

(declare-fun c!1433241 () Bool)

(assert (=> bm!720875 (= call!720881 (derivativeStep!6142 (ite c!1433241 (regOne!42111 r2!6217) (regOne!42110 r2!6217)) (h!79962 s!14292)))))

(declare-fun d!2344925 () Bool)

(declare-fun lt!2672391 () Regex!20799)

(assert (=> d!2344925 (validRegex!11213 lt!2672391)))

(declare-fun e!4607491 () Regex!20799)

(assert (=> d!2344925 (= lt!2672391 e!4607491)))

(declare-fun c!1433243 () Bool)

(assert (=> d!2344925 (= c!1433243 (or ((_ is EmptyExpr!20799) r2!6217) ((_ is EmptyLang!20799) r2!6217)))))

(assert (=> d!2344925 (validRegex!11213 r2!6217)))

(assert (=> d!2344925 (= (derivativeStep!6142 r2!6217 (h!79962 s!14292)) lt!2672391)))

(declare-fun bm!720876 () Bool)

(declare-fun call!720883 () Regex!20799)

(assert (=> bm!720876 (= call!720882 call!720883)))

(declare-fun bm!720877 () Bool)

(declare-fun call!720880 () Regex!20799)

(assert (=> bm!720877 (= call!720880 call!720882)))

(declare-fun c!1433244 () Bool)

(declare-fun bm!720878 () Bool)

(assert (=> bm!720878 (= call!720883 (derivativeStep!6142 (ite c!1433241 (regTwo!42111 r2!6217) (ite c!1433244 (reg!21128 r2!6217) (ite c!1433242 (regTwo!42110 r2!6217) (regOne!42110 r2!6217)))) (h!79962 s!14292)))))

(declare-fun b!7777403 () Bool)

(assert (=> b!7777403 (= e!4607495 (Union!20799 (Concat!29644 call!720881 (regTwo!42110 r2!6217)) call!720880))))

(declare-fun b!7777404 () Bool)

(assert (=> b!7777404 (= e!4607491 EmptyLang!20799)))

(declare-fun b!7777405 () Bool)

(declare-fun e!4607492 () Regex!20799)

(assert (=> b!7777405 (= e!4607492 e!4607494)))

(assert (=> b!7777405 (= c!1433244 ((_ is Star!20799) r2!6217))))

(declare-fun b!7777406 () Bool)

(declare-fun e!4607493 () Regex!20799)

(assert (=> b!7777406 (= e!4607493 (ite (= (h!79962 s!14292) (c!1433156 r2!6217)) EmptyExpr!20799 EmptyLang!20799))))

(declare-fun b!7777407 () Bool)

(assert (=> b!7777407 (= e!4607491 e!4607493)))

(declare-fun c!1433245 () Bool)

(assert (=> b!7777407 (= c!1433245 ((_ is ElementMatch!20799) r2!6217))))

(declare-fun b!7777408 () Bool)

(assert (=> b!7777408 (= e!4607495 (Union!20799 (Concat!29644 call!720880 (regTwo!42110 r2!6217)) EmptyLang!20799))))

(declare-fun b!7777409 () Bool)

(assert (=> b!7777409 (= c!1433241 ((_ is Union!20799) r2!6217))))

(assert (=> b!7777409 (= e!4607493 e!4607492)))

(declare-fun b!7777410 () Bool)

(assert (=> b!7777410 (= e!4607492 (Union!20799 call!720881 call!720883))))

(assert (= (and d!2344925 c!1433243) b!7777404))

(assert (= (and d!2344925 (not c!1433243)) b!7777407))

(assert (= (and b!7777407 c!1433245) b!7777406))

(assert (= (and b!7777407 (not c!1433245)) b!7777409))

(assert (= (and b!7777409 c!1433241) b!7777410))

(assert (= (and b!7777409 (not c!1433241)) b!7777405))

(assert (= (and b!7777405 c!1433244) b!7777402))

(assert (= (and b!7777405 (not c!1433244)) b!7777401))

(assert (= (and b!7777401 c!1433242) b!7777403))

(assert (= (and b!7777401 (not c!1433242)) b!7777408))

(assert (= (or b!7777403 b!7777408) bm!720877))

(assert (= (or b!7777402 bm!720877) bm!720876))

(assert (= (or b!7777410 bm!720876) bm!720878))

(assert (= (or b!7777410 b!7777403) bm!720875))

(declare-fun m!8227602 () Bool)

(assert (=> b!7777401 m!8227602))

(declare-fun m!8227604 () Bool)

(assert (=> bm!720875 m!8227604))

(declare-fun m!8227606 () Bool)

(assert (=> d!2344925 m!8227606))

(assert (=> d!2344925 m!8227462))

(declare-fun m!8227608 () Bool)

(assert (=> bm!720878 m!8227608))

(assert (=> b!7777105 d!2344925))

(declare-fun b!7777422 () Bool)

(declare-fun c!1433249 () Bool)

(assert (=> b!7777422 (= c!1433249 (nullable!9187 (regOne!42110 r1!6279)))))

(declare-fun e!4607508 () Regex!20799)

(declare-fun e!4607509 () Regex!20799)

(assert (=> b!7777422 (= e!4607508 e!4607509)))

(declare-fun b!7777423 () Bool)

(declare-fun call!720889 () Regex!20799)

(assert (=> b!7777423 (= e!4607508 (Concat!29644 call!720889 r1!6279))))

(declare-fun c!1433248 () Bool)

(declare-fun bm!720882 () Bool)

(declare-fun call!720888 () Regex!20799)

(assert (=> bm!720882 (= call!720888 (derivativeStep!6142 (ite c!1433248 (regOne!42111 r1!6279) (regOne!42110 r1!6279)) (h!79962 s!14292)))))

(declare-fun d!2344929 () Bool)

(declare-fun lt!2672393 () Regex!20799)

(assert (=> d!2344929 (validRegex!11213 lt!2672393)))

(declare-fun e!4607505 () Regex!20799)

(assert (=> d!2344929 (= lt!2672393 e!4607505)))

(declare-fun c!1433250 () Bool)

(assert (=> d!2344929 (= c!1433250 (or ((_ is EmptyExpr!20799) r1!6279) ((_ is EmptyLang!20799) r1!6279)))))

(assert (=> d!2344929 (validRegex!11213 r1!6279)))

(assert (=> d!2344929 (= (derivativeStep!6142 r1!6279 (h!79962 s!14292)) lt!2672393)))

(declare-fun bm!720883 () Bool)

(declare-fun call!720890 () Regex!20799)

(assert (=> bm!720883 (= call!720889 call!720890)))

(declare-fun bm!720884 () Bool)

(declare-fun call!720887 () Regex!20799)

(assert (=> bm!720884 (= call!720887 call!720889)))

(declare-fun bm!720885 () Bool)

(declare-fun c!1433251 () Bool)

(assert (=> bm!720885 (= call!720890 (derivativeStep!6142 (ite c!1433248 (regTwo!42111 r1!6279) (ite c!1433251 (reg!21128 r1!6279) (ite c!1433249 (regTwo!42110 r1!6279) (regOne!42110 r1!6279)))) (h!79962 s!14292)))))

(declare-fun b!7777424 () Bool)

(assert (=> b!7777424 (= e!4607509 (Union!20799 (Concat!29644 call!720888 (regTwo!42110 r1!6279)) call!720887))))

(declare-fun b!7777425 () Bool)

(assert (=> b!7777425 (= e!4607505 EmptyLang!20799)))

(declare-fun b!7777426 () Bool)

(declare-fun e!4607506 () Regex!20799)

(assert (=> b!7777426 (= e!4607506 e!4607508)))

(assert (=> b!7777426 (= c!1433251 ((_ is Star!20799) r1!6279))))

(declare-fun b!7777427 () Bool)

(declare-fun e!4607507 () Regex!20799)

(assert (=> b!7777427 (= e!4607507 (ite (= (h!79962 s!14292) (c!1433156 r1!6279)) EmptyExpr!20799 EmptyLang!20799))))

(declare-fun b!7777428 () Bool)

(assert (=> b!7777428 (= e!4607505 e!4607507)))

(declare-fun c!1433252 () Bool)

(assert (=> b!7777428 (= c!1433252 ((_ is ElementMatch!20799) r1!6279))))

(declare-fun b!7777429 () Bool)

(assert (=> b!7777429 (= e!4607509 (Union!20799 (Concat!29644 call!720887 (regTwo!42110 r1!6279)) EmptyLang!20799))))

(declare-fun b!7777430 () Bool)

(assert (=> b!7777430 (= c!1433248 ((_ is Union!20799) r1!6279))))

(assert (=> b!7777430 (= e!4607507 e!4607506)))

(declare-fun b!7777431 () Bool)

(assert (=> b!7777431 (= e!4607506 (Union!20799 call!720888 call!720890))))

(assert (= (and d!2344929 c!1433250) b!7777425))

(assert (= (and d!2344929 (not c!1433250)) b!7777428))

(assert (= (and b!7777428 c!1433252) b!7777427))

(assert (= (and b!7777428 (not c!1433252)) b!7777430))

(assert (= (and b!7777430 c!1433248) b!7777431))

(assert (= (and b!7777430 (not c!1433248)) b!7777426))

(assert (= (and b!7777426 c!1433251) b!7777423))

(assert (= (and b!7777426 (not c!1433251)) b!7777422))

(assert (= (and b!7777422 c!1433249) b!7777424))

(assert (= (and b!7777422 (not c!1433249)) b!7777429))

(assert (= (or b!7777424 b!7777429) bm!720884))

(assert (= (or b!7777423 bm!720884) bm!720883))

(assert (= (or b!7777431 bm!720883) bm!720885))

(assert (= (or b!7777431 b!7777424) bm!720882))

(declare-fun m!8227616 () Bool)

(assert (=> b!7777422 m!8227616))

(declare-fun m!8227618 () Bool)

(assert (=> bm!720882 m!8227618))

(declare-fun m!8227620 () Bool)

(assert (=> d!2344929 m!8227620))

(assert (=> d!2344929 m!8227454))

(declare-fun m!8227622 () Bool)

(assert (=> bm!720885 m!8227622))

(assert (=> b!7777105 d!2344929))

(declare-fun b!7777446 () Bool)

(declare-fun res!3100189 () Bool)

(declare-fun e!4607523 () Bool)

(assert (=> b!7777446 (=> res!3100189 e!4607523)))

(assert (=> b!7777446 (= res!3100189 (not ((_ is ElementMatch!20799) lt!2672369)))))

(declare-fun e!4607520 () Bool)

(assert (=> b!7777446 (= e!4607520 e!4607523)))

(declare-fun b!7777447 () Bool)

(declare-fun res!3100185 () Bool)

(declare-fun e!4607518 () Bool)

(assert (=> b!7777447 (=> res!3100185 e!4607518)))

(assert (=> b!7777447 (= res!3100185 (not (isEmpty!42173 (tail!15445 (t!388373 s!14292)))))))

(declare-fun b!7777448 () Bool)

(declare-fun e!4607517 () Bool)

(declare-fun lt!2672395 () Bool)

(declare-fun call!720892 () Bool)

(assert (=> b!7777448 (= e!4607517 (= lt!2672395 call!720892))))

(declare-fun b!7777449 () Bool)

(declare-fun res!3100188 () Bool)

(declare-fun e!4607521 () Bool)

(assert (=> b!7777449 (=> (not res!3100188) (not e!4607521))))

(assert (=> b!7777449 (= res!3100188 (not call!720892))))

(declare-fun b!7777450 () Bool)

(declare-fun e!4607519 () Bool)

(assert (=> b!7777450 (= e!4607523 e!4607519)))

(declare-fun res!3100186 () Bool)

(assert (=> b!7777450 (=> (not res!3100186) (not e!4607519))))

(assert (=> b!7777450 (= res!3100186 (not lt!2672395))))

(declare-fun b!7777451 () Bool)

(assert (=> b!7777451 (= e!4607517 e!4607520)))

(declare-fun c!1433258 () Bool)

(assert (=> b!7777451 (= c!1433258 ((_ is EmptyLang!20799) lt!2672369))))

(declare-fun bm!720887 () Bool)

(assert (=> bm!720887 (= call!720892 (isEmpty!42173 (t!388373 s!14292)))))

(declare-fun b!7777452 () Bool)

(assert (=> b!7777452 (= e!4607521 (= (head!15904 (t!388373 s!14292)) (c!1433156 lt!2672369)))))

(declare-fun b!7777453 () Bool)

(assert (=> b!7777453 (= e!4607519 e!4607518)))

(declare-fun res!3100190 () Bool)

(assert (=> b!7777453 (=> res!3100190 e!4607518)))

(assert (=> b!7777453 (= res!3100190 call!720892)))

(declare-fun b!7777454 () Bool)

(assert (=> b!7777454 (= e!4607520 (not lt!2672395))))

(declare-fun b!7777455 () Bool)

(declare-fun res!3100183 () Bool)

(assert (=> b!7777455 (=> res!3100183 e!4607523)))

(assert (=> b!7777455 (= res!3100183 e!4607521)))

(declare-fun res!3100184 () Bool)

(assert (=> b!7777455 (=> (not res!3100184) (not e!4607521))))

(assert (=> b!7777455 (= res!3100184 lt!2672395)))

(declare-fun d!2344933 () Bool)

(assert (=> d!2344933 e!4607517))

(declare-fun c!1433256 () Bool)

(assert (=> d!2344933 (= c!1433256 ((_ is EmptyExpr!20799) lt!2672369))))

(declare-fun e!4607522 () Bool)

(assert (=> d!2344933 (= lt!2672395 e!4607522)))

(declare-fun c!1433257 () Bool)

(assert (=> d!2344933 (= c!1433257 (isEmpty!42173 (t!388373 s!14292)))))

(assert (=> d!2344933 (validRegex!11213 lt!2672369)))

(assert (=> d!2344933 (= (matchR!10259 lt!2672369 (t!388373 s!14292)) lt!2672395)))

(declare-fun b!7777456 () Bool)

(declare-fun res!3100187 () Bool)

(assert (=> b!7777456 (=> (not res!3100187) (not e!4607521))))

(assert (=> b!7777456 (= res!3100187 (isEmpty!42173 (tail!15445 (t!388373 s!14292))))))

(declare-fun b!7777457 () Bool)

(assert (=> b!7777457 (= e!4607518 (not (= (head!15904 (t!388373 s!14292)) (c!1433156 lt!2672369))))))

(declare-fun b!7777458 () Bool)

(assert (=> b!7777458 (= e!4607522 (matchR!10259 (derivativeStep!6142 lt!2672369 (head!15904 (t!388373 s!14292))) (tail!15445 (t!388373 s!14292))))))

(declare-fun b!7777459 () Bool)

(assert (=> b!7777459 (= e!4607522 (nullable!9187 lt!2672369))))

(assert (= (and d!2344933 c!1433257) b!7777459))

(assert (= (and d!2344933 (not c!1433257)) b!7777458))

(assert (= (and d!2344933 c!1433256) b!7777448))

(assert (= (and d!2344933 (not c!1433256)) b!7777451))

(assert (= (and b!7777451 c!1433258) b!7777454))

(assert (= (and b!7777451 (not c!1433258)) b!7777446))

(assert (= (and b!7777446 (not res!3100189)) b!7777455))

(assert (= (and b!7777455 res!3100184) b!7777449))

(assert (= (and b!7777449 res!3100188) b!7777456))

(assert (= (and b!7777456 res!3100187) b!7777452))

(assert (= (and b!7777455 (not res!3100183)) b!7777450))

(assert (= (and b!7777450 res!3100186) b!7777453))

(assert (= (and b!7777453 (not res!3100190)) b!7777447))

(assert (= (and b!7777447 (not res!3100185)) b!7777457))

(assert (= (or b!7777448 b!7777449 b!7777453) bm!720887))

(assert (=> d!2344933 m!8227492))

(declare-fun m!8227630 () Bool)

(assert (=> d!2344933 m!8227630))

(assert (=> b!7777457 m!8227496))

(assert (=> bm!720887 m!8227492))

(assert (=> b!7777452 m!8227496))

(declare-fun m!8227634 () Bool)

(assert (=> b!7777459 m!8227634))

(assert (=> b!7777458 m!8227496))

(assert (=> b!7777458 m!8227496))

(declare-fun m!8227636 () Bool)

(assert (=> b!7777458 m!8227636))

(assert (=> b!7777458 m!8227502))

(assert (=> b!7777458 m!8227636))

(assert (=> b!7777458 m!8227502))

(declare-fun m!8227638 () Bool)

(assert (=> b!7777458 m!8227638))

(assert (=> b!7777456 m!8227502))

(assert (=> b!7777456 m!8227502))

(assert (=> b!7777456 m!8227506))

(assert (=> b!7777447 m!8227502))

(assert (=> b!7777447 m!8227502))

(assert (=> b!7777447 m!8227506))

(assert (=> b!7777109 d!2344933))

(declare-fun d!2344937 () Bool)

(declare-fun e!4607543 () Bool)

(assert (=> d!2344937 e!4607543))

(declare-fun res!3100196 () Bool)

(assert (=> d!2344937 (=> res!3100196 e!4607543)))

(assert (=> d!2344937 (= res!3100196 (matchR!10259 lt!2672369 (t!388373 s!14292)))))

(declare-fun lt!2672398 () Unit!168500)

(declare-fun choose!59489 (Regex!20799 Regex!20799 List!73638) Unit!168500)

(assert (=> d!2344937 (= lt!2672398 (choose!59489 lt!2672369 lt!2672367 (t!388373 s!14292)))))

(declare-fun e!4607544 () Bool)

(assert (=> d!2344937 e!4607544))

(declare-fun res!3100195 () Bool)

(assert (=> d!2344937 (=> (not res!3100195) (not e!4607544))))

(assert (=> d!2344937 (= res!3100195 (validRegex!11213 lt!2672369))))

(assert (=> d!2344937 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!374 lt!2672369 lt!2672367 (t!388373 s!14292)) lt!2672398)))

(declare-fun b!7777519 () Bool)

(assert (=> b!7777519 (= e!4607544 (validRegex!11213 lt!2672367))))

(declare-fun b!7777520 () Bool)

(assert (=> b!7777520 (= e!4607543 (matchR!10259 lt!2672367 (t!388373 s!14292)))))

(assert (= (and d!2344937 res!3100195) b!7777519))

(assert (= (and d!2344937 (not res!3100196)) b!7777520))

(assert (=> d!2344937 m!8227464))

(declare-fun m!8227640 () Bool)

(assert (=> d!2344937 m!8227640))

(assert (=> d!2344937 m!8227630))

(assert (=> b!7777519 m!8227468))

(assert (=> b!7777520 m!8227460))

(assert (=> b!7777109 d!2344937))

(declare-fun b!7777521 () Bool)

(declare-fun e!4607546 () Bool)

(declare-fun e!4607549 () Bool)

(assert (=> b!7777521 (= e!4607546 e!4607549)))

(declare-fun c!1433260 () Bool)

(assert (=> b!7777521 (= c!1433260 ((_ is Union!20799) r1!6279))))

(declare-fun bm!720888 () Bool)

(declare-fun call!720894 () Bool)

(declare-fun call!720895 () Bool)

(assert (=> bm!720888 (= call!720894 call!720895)))

(declare-fun b!7777523 () Bool)

(declare-fun e!4607548 () Bool)

(assert (=> b!7777523 (= e!4607546 e!4607548)))

(declare-fun res!3100199 () Bool)

(assert (=> b!7777523 (= res!3100199 (not (nullable!9187 (reg!21128 r1!6279))))))

(assert (=> b!7777523 (=> (not res!3100199) (not e!4607548))))

(declare-fun b!7777524 () Bool)

(declare-fun e!4607547 () Bool)

(declare-fun call!720893 () Bool)

(assert (=> b!7777524 (= e!4607547 call!720893)))

(declare-fun c!1433259 () Bool)

(declare-fun bm!720889 () Bool)

(assert (=> bm!720889 (= call!720895 (validRegex!11213 (ite c!1433259 (reg!21128 r1!6279) (ite c!1433260 (regOne!42111 r1!6279) (regOne!42110 r1!6279)))))))

(declare-fun b!7777525 () Bool)

(declare-fun e!4607545 () Bool)

(assert (=> b!7777525 (= e!4607545 e!4607546)))

(assert (=> b!7777525 (= c!1433259 ((_ is Star!20799) r1!6279))))

(declare-fun b!7777526 () Bool)

(assert (=> b!7777526 (= e!4607548 call!720895)))

(declare-fun b!7777527 () Bool)

(declare-fun res!3100197 () Bool)

(declare-fun e!4607550 () Bool)

(assert (=> b!7777527 (=> res!3100197 e!4607550)))

(assert (=> b!7777527 (= res!3100197 (not ((_ is Concat!29644) r1!6279)))))

(assert (=> b!7777527 (= e!4607549 e!4607550)))

(declare-fun b!7777528 () Bool)

(declare-fun e!4607551 () Bool)

(assert (=> b!7777528 (= e!4607551 call!720893)))

(declare-fun d!2344939 () Bool)

(declare-fun res!3100198 () Bool)

(assert (=> d!2344939 (=> res!3100198 e!4607545)))

(assert (=> d!2344939 (= res!3100198 ((_ is ElementMatch!20799) r1!6279))))

(assert (=> d!2344939 (= (validRegex!11213 r1!6279) e!4607545)))

(declare-fun b!7777522 () Bool)

(assert (=> b!7777522 (= e!4607550 e!4607551)))

(declare-fun res!3100201 () Bool)

(assert (=> b!7777522 (=> (not res!3100201) (not e!4607551))))

(assert (=> b!7777522 (= res!3100201 call!720894)))

(declare-fun bm!720890 () Bool)

(assert (=> bm!720890 (= call!720893 (validRegex!11213 (ite c!1433260 (regTwo!42111 r1!6279) (regTwo!42110 r1!6279))))))

(declare-fun b!7777529 () Bool)

(declare-fun res!3100200 () Bool)

(assert (=> b!7777529 (=> (not res!3100200) (not e!4607547))))

(assert (=> b!7777529 (= res!3100200 call!720894)))

(assert (=> b!7777529 (= e!4607549 e!4607547)))

(assert (= (and d!2344939 (not res!3100198)) b!7777525))

(assert (= (and b!7777525 c!1433259) b!7777523))

(assert (= (and b!7777525 (not c!1433259)) b!7777521))

(assert (= (and b!7777523 res!3100199) b!7777526))

(assert (= (and b!7777521 c!1433260) b!7777529))

(assert (= (and b!7777521 (not c!1433260)) b!7777527))

(assert (= (and b!7777529 res!3100200) b!7777524))

(assert (= (and b!7777527 (not res!3100197)) b!7777522))

(assert (= (and b!7777522 res!3100201) b!7777528))

(assert (= (or b!7777529 b!7777522) bm!720888))

(assert (= (or b!7777524 b!7777528) bm!720890))

(assert (= (or b!7777526 bm!720888) bm!720889))

(declare-fun m!8227642 () Bool)

(assert (=> b!7777523 m!8227642))

(declare-fun m!8227644 () Bool)

(assert (=> bm!720889 m!8227644))

(declare-fun m!8227646 () Bool)

(assert (=> bm!720890 m!8227646))

(assert (=> start!740342 d!2344939))

(declare-fun b!7777530 () Bool)

(declare-fun e!4607553 () Bool)

(declare-fun e!4607556 () Bool)

(assert (=> b!7777530 (= e!4607553 e!4607556)))

(declare-fun c!1433262 () Bool)

(assert (=> b!7777530 (= c!1433262 ((_ is Union!20799) lt!2672367))))

(declare-fun bm!720891 () Bool)

(declare-fun call!720897 () Bool)

(declare-fun call!720898 () Bool)

(assert (=> bm!720891 (= call!720897 call!720898)))

(declare-fun b!7777532 () Bool)

(declare-fun e!4607555 () Bool)

(assert (=> b!7777532 (= e!4607553 e!4607555)))

(declare-fun res!3100204 () Bool)

(assert (=> b!7777532 (= res!3100204 (not (nullable!9187 (reg!21128 lt!2672367))))))

(assert (=> b!7777532 (=> (not res!3100204) (not e!4607555))))

(declare-fun b!7777533 () Bool)

(declare-fun e!4607554 () Bool)

(declare-fun call!720896 () Bool)

(assert (=> b!7777533 (= e!4607554 call!720896)))

(declare-fun c!1433261 () Bool)

(declare-fun bm!720892 () Bool)

(assert (=> bm!720892 (= call!720898 (validRegex!11213 (ite c!1433261 (reg!21128 lt!2672367) (ite c!1433262 (regOne!42111 lt!2672367) (regOne!42110 lt!2672367)))))))

(declare-fun b!7777534 () Bool)

(declare-fun e!4607552 () Bool)

(assert (=> b!7777534 (= e!4607552 e!4607553)))

(assert (=> b!7777534 (= c!1433261 ((_ is Star!20799) lt!2672367))))

(declare-fun b!7777535 () Bool)

(assert (=> b!7777535 (= e!4607555 call!720898)))

(declare-fun b!7777536 () Bool)

(declare-fun res!3100202 () Bool)

(declare-fun e!4607557 () Bool)

(assert (=> b!7777536 (=> res!3100202 e!4607557)))

(assert (=> b!7777536 (= res!3100202 (not ((_ is Concat!29644) lt!2672367)))))

(assert (=> b!7777536 (= e!4607556 e!4607557)))

(declare-fun b!7777537 () Bool)

(declare-fun e!4607558 () Bool)

(assert (=> b!7777537 (= e!4607558 call!720896)))

(declare-fun d!2344941 () Bool)

(declare-fun res!3100203 () Bool)

(assert (=> d!2344941 (=> res!3100203 e!4607552)))

(assert (=> d!2344941 (= res!3100203 ((_ is ElementMatch!20799) lt!2672367))))

(assert (=> d!2344941 (= (validRegex!11213 lt!2672367) e!4607552)))

(declare-fun b!7777531 () Bool)

(assert (=> b!7777531 (= e!4607557 e!4607558)))

(declare-fun res!3100206 () Bool)

(assert (=> b!7777531 (=> (not res!3100206) (not e!4607558))))

(assert (=> b!7777531 (= res!3100206 call!720897)))

(declare-fun bm!720893 () Bool)

(assert (=> bm!720893 (= call!720896 (validRegex!11213 (ite c!1433262 (regTwo!42111 lt!2672367) (regTwo!42110 lt!2672367))))))

(declare-fun b!7777538 () Bool)

(declare-fun res!3100205 () Bool)

(assert (=> b!7777538 (=> (not res!3100205) (not e!4607554))))

(assert (=> b!7777538 (= res!3100205 call!720897)))

(assert (=> b!7777538 (= e!4607556 e!4607554)))

(assert (= (and d!2344941 (not res!3100203)) b!7777534))

(assert (= (and b!7777534 c!1433261) b!7777532))

(assert (= (and b!7777534 (not c!1433261)) b!7777530))

(assert (= (and b!7777532 res!3100204) b!7777535))

(assert (= (and b!7777530 c!1433262) b!7777538))

(assert (= (and b!7777530 (not c!1433262)) b!7777536))

(assert (= (and b!7777538 res!3100205) b!7777533))

(assert (= (and b!7777536 (not res!3100202)) b!7777531))

(assert (= (and b!7777531 res!3100206) b!7777537))

(assert (= (or b!7777538 b!7777531) bm!720891))

(assert (= (or b!7777533 b!7777537) bm!720893))

(assert (= (or b!7777535 bm!720891) bm!720892))

(declare-fun m!8227648 () Bool)

(assert (=> b!7777532 m!8227648))

(declare-fun m!8227650 () Bool)

(assert (=> bm!720892 m!8227650))

(declare-fun m!8227652 () Bool)

(assert (=> bm!720893 m!8227652))

(assert (=> b!7777103 d!2344941))

(declare-fun b!7777552 () Bool)

(declare-fun e!4607561 () Bool)

(declare-fun tp!2285559 () Bool)

(declare-fun tp!2285561 () Bool)

(assert (=> b!7777552 (= e!4607561 (and tp!2285559 tp!2285561))))

(declare-fun b!7777550 () Bool)

(declare-fun tp!2285560 () Bool)

(declare-fun tp!2285557 () Bool)

(assert (=> b!7777550 (= e!4607561 (and tp!2285560 tp!2285557))))

(declare-fun b!7777549 () Bool)

(assert (=> b!7777549 (= e!4607561 tp_is_empty!51953)))

(assert (=> b!7777101 (= tp!2285483 e!4607561)))

(declare-fun b!7777551 () Bool)

(declare-fun tp!2285558 () Bool)

(assert (=> b!7777551 (= e!4607561 tp!2285558)))

(assert (= (and b!7777101 ((_ is ElementMatch!20799) (reg!21128 r1!6279))) b!7777549))

(assert (= (and b!7777101 ((_ is Concat!29644) (reg!21128 r1!6279))) b!7777550))

(assert (= (and b!7777101 ((_ is Star!20799) (reg!21128 r1!6279))) b!7777551))

(assert (= (and b!7777101 ((_ is Union!20799) (reg!21128 r1!6279))) b!7777552))

(declare-fun b!7777556 () Bool)

(declare-fun e!4607562 () Bool)

(declare-fun tp!2285564 () Bool)

(declare-fun tp!2285566 () Bool)

(assert (=> b!7777556 (= e!4607562 (and tp!2285564 tp!2285566))))

(declare-fun b!7777554 () Bool)

(declare-fun tp!2285565 () Bool)

(declare-fun tp!2285562 () Bool)

(assert (=> b!7777554 (= e!4607562 (and tp!2285565 tp!2285562))))

(declare-fun b!7777553 () Bool)

(assert (=> b!7777553 (= e!4607562 tp_is_empty!51953)))

(assert (=> b!7777100 (= tp!2285475 e!4607562)))

(declare-fun b!7777555 () Bool)

(declare-fun tp!2285563 () Bool)

(assert (=> b!7777555 (= e!4607562 tp!2285563)))

(assert (= (and b!7777100 ((_ is ElementMatch!20799) (regOne!42110 r2!6217))) b!7777553))

(assert (= (and b!7777100 ((_ is Concat!29644) (regOne!42110 r2!6217))) b!7777554))

(assert (= (and b!7777100 ((_ is Star!20799) (regOne!42110 r2!6217))) b!7777555))

(assert (= (and b!7777100 ((_ is Union!20799) (regOne!42110 r2!6217))) b!7777556))

(declare-fun b!7777560 () Bool)

(declare-fun e!4607563 () Bool)

(declare-fun tp!2285569 () Bool)

(declare-fun tp!2285571 () Bool)

(assert (=> b!7777560 (= e!4607563 (and tp!2285569 tp!2285571))))

(declare-fun b!7777558 () Bool)

(declare-fun tp!2285570 () Bool)

(declare-fun tp!2285567 () Bool)

(assert (=> b!7777558 (= e!4607563 (and tp!2285570 tp!2285567))))

(declare-fun b!7777557 () Bool)

(assert (=> b!7777557 (= e!4607563 tp_is_empty!51953)))

(assert (=> b!7777100 (= tp!2285481 e!4607563)))

(declare-fun b!7777559 () Bool)

(declare-fun tp!2285568 () Bool)

(assert (=> b!7777559 (= e!4607563 tp!2285568)))

(assert (= (and b!7777100 ((_ is ElementMatch!20799) (regTwo!42110 r2!6217))) b!7777557))

(assert (= (and b!7777100 ((_ is Concat!29644) (regTwo!42110 r2!6217))) b!7777558))

(assert (= (and b!7777100 ((_ is Star!20799) (regTwo!42110 r2!6217))) b!7777559))

(assert (= (and b!7777100 ((_ is Union!20799) (regTwo!42110 r2!6217))) b!7777560))

(declare-fun b!7777564 () Bool)

(declare-fun e!4607564 () Bool)

(declare-fun tp!2285574 () Bool)

(declare-fun tp!2285576 () Bool)

(assert (=> b!7777564 (= e!4607564 (and tp!2285574 tp!2285576))))

(declare-fun b!7777562 () Bool)

(declare-fun tp!2285575 () Bool)

(declare-fun tp!2285572 () Bool)

(assert (=> b!7777562 (= e!4607564 (and tp!2285575 tp!2285572))))

(declare-fun b!7777561 () Bool)

(assert (=> b!7777561 (= e!4607564 tp_is_empty!51953)))

(assert (=> b!7777099 (= tp!2285480 e!4607564)))

(declare-fun b!7777563 () Bool)

(declare-fun tp!2285573 () Bool)

(assert (=> b!7777563 (= e!4607564 tp!2285573)))

(assert (= (and b!7777099 ((_ is ElementMatch!20799) (regOne!42110 r1!6279))) b!7777561))

(assert (= (and b!7777099 ((_ is Concat!29644) (regOne!42110 r1!6279))) b!7777562))

(assert (= (and b!7777099 ((_ is Star!20799) (regOne!42110 r1!6279))) b!7777563))

(assert (= (and b!7777099 ((_ is Union!20799) (regOne!42110 r1!6279))) b!7777564))

(declare-fun b!7777568 () Bool)

(declare-fun e!4607565 () Bool)

(declare-fun tp!2285579 () Bool)

(declare-fun tp!2285581 () Bool)

(assert (=> b!7777568 (= e!4607565 (and tp!2285579 tp!2285581))))

(declare-fun b!7777566 () Bool)

(declare-fun tp!2285580 () Bool)

(declare-fun tp!2285577 () Bool)

(assert (=> b!7777566 (= e!4607565 (and tp!2285580 tp!2285577))))

(declare-fun b!7777565 () Bool)

(assert (=> b!7777565 (= e!4607565 tp_is_empty!51953)))

(assert (=> b!7777099 (= tp!2285473 e!4607565)))

(declare-fun b!7777567 () Bool)

(declare-fun tp!2285578 () Bool)

(assert (=> b!7777567 (= e!4607565 tp!2285578)))

(assert (= (and b!7777099 ((_ is ElementMatch!20799) (regTwo!42110 r1!6279))) b!7777565))

(assert (= (and b!7777099 ((_ is Concat!29644) (regTwo!42110 r1!6279))) b!7777566))

(assert (= (and b!7777099 ((_ is Star!20799) (regTwo!42110 r1!6279))) b!7777567))

(assert (= (and b!7777099 ((_ is Union!20799) (regTwo!42110 r1!6279))) b!7777568))

(declare-fun b!7777572 () Bool)

(declare-fun e!4607566 () Bool)

(declare-fun tp!2285584 () Bool)

(declare-fun tp!2285586 () Bool)

(assert (=> b!7777572 (= e!4607566 (and tp!2285584 tp!2285586))))

(declare-fun b!7777570 () Bool)

(declare-fun tp!2285585 () Bool)

(declare-fun tp!2285582 () Bool)

(assert (=> b!7777570 (= e!4607566 (and tp!2285585 tp!2285582))))

(declare-fun b!7777569 () Bool)

(assert (=> b!7777569 (= e!4607566 tp_is_empty!51953)))

(assert (=> b!7777104 (= tp!2285479 e!4607566)))

(declare-fun b!7777571 () Bool)

(declare-fun tp!2285583 () Bool)

(assert (=> b!7777571 (= e!4607566 tp!2285583)))

(assert (= (and b!7777104 ((_ is ElementMatch!20799) (reg!21128 r2!6217))) b!7777569))

(assert (= (and b!7777104 ((_ is Concat!29644) (reg!21128 r2!6217))) b!7777570))

(assert (= (and b!7777104 ((_ is Star!20799) (reg!21128 r2!6217))) b!7777571))

(assert (= (and b!7777104 ((_ is Union!20799) (reg!21128 r2!6217))) b!7777572))

(declare-fun b!7777576 () Bool)

(declare-fun e!4607567 () Bool)

(declare-fun tp!2285589 () Bool)

(declare-fun tp!2285591 () Bool)

(assert (=> b!7777576 (= e!4607567 (and tp!2285589 tp!2285591))))

(declare-fun b!7777574 () Bool)

(declare-fun tp!2285590 () Bool)

(declare-fun tp!2285587 () Bool)

(assert (=> b!7777574 (= e!4607567 (and tp!2285590 tp!2285587))))

(declare-fun b!7777573 () Bool)

(assert (=> b!7777573 (= e!4607567 tp_is_empty!51953)))

(assert (=> b!7777098 (= tp!2285482 e!4607567)))

(declare-fun b!7777575 () Bool)

(declare-fun tp!2285588 () Bool)

(assert (=> b!7777575 (= e!4607567 tp!2285588)))

(assert (= (and b!7777098 ((_ is ElementMatch!20799) (regOne!42111 r1!6279))) b!7777573))

(assert (= (and b!7777098 ((_ is Concat!29644) (regOne!42111 r1!6279))) b!7777574))

(assert (= (and b!7777098 ((_ is Star!20799) (regOne!42111 r1!6279))) b!7777575))

(assert (= (and b!7777098 ((_ is Union!20799) (regOne!42111 r1!6279))) b!7777576))

(declare-fun b!7777580 () Bool)

(declare-fun e!4607568 () Bool)

(declare-fun tp!2285594 () Bool)

(declare-fun tp!2285596 () Bool)

(assert (=> b!7777580 (= e!4607568 (and tp!2285594 tp!2285596))))

(declare-fun b!7777578 () Bool)

(declare-fun tp!2285595 () Bool)

(declare-fun tp!2285592 () Bool)

(assert (=> b!7777578 (= e!4607568 (and tp!2285595 tp!2285592))))

(declare-fun b!7777577 () Bool)

(assert (=> b!7777577 (= e!4607568 tp_is_empty!51953)))

(assert (=> b!7777098 (= tp!2285474 e!4607568)))

(declare-fun b!7777579 () Bool)

(declare-fun tp!2285593 () Bool)

(assert (=> b!7777579 (= e!4607568 tp!2285593)))

(assert (= (and b!7777098 ((_ is ElementMatch!20799) (regTwo!42111 r1!6279))) b!7777577))

(assert (= (and b!7777098 ((_ is Concat!29644) (regTwo!42111 r1!6279))) b!7777578))

(assert (= (and b!7777098 ((_ is Star!20799) (regTwo!42111 r1!6279))) b!7777579))

(assert (= (and b!7777098 ((_ is Union!20799) (regTwo!42111 r1!6279))) b!7777580))

(declare-fun b!7777585 () Bool)

(declare-fun e!4607571 () Bool)

(declare-fun tp!2285599 () Bool)

(assert (=> b!7777585 (= e!4607571 (and tp_is_empty!51953 tp!2285599))))

(assert (=> b!7777108 (= tp!2285478 e!4607571)))

(assert (= (and b!7777108 ((_ is Cons!73514) (t!388373 s!14292))) b!7777585))

(declare-fun b!7777589 () Bool)

(declare-fun e!4607572 () Bool)

(declare-fun tp!2285602 () Bool)

(declare-fun tp!2285604 () Bool)

(assert (=> b!7777589 (= e!4607572 (and tp!2285602 tp!2285604))))

(declare-fun b!7777587 () Bool)

(declare-fun tp!2285603 () Bool)

(declare-fun tp!2285600 () Bool)

(assert (=> b!7777587 (= e!4607572 (and tp!2285603 tp!2285600))))

(declare-fun b!7777586 () Bool)

(assert (=> b!7777586 (= e!4607572 tp_is_empty!51953)))

(assert (=> b!7777113 (= tp!2285477 e!4607572)))

(declare-fun b!7777588 () Bool)

(declare-fun tp!2285601 () Bool)

(assert (=> b!7777588 (= e!4607572 tp!2285601)))

(assert (= (and b!7777113 ((_ is ElementMatch!20799) (regOne!42111 r2!6217))) b!7777586))

(assert (= (and b!7777113 ((_ is Concat!29644) (regOne!42111 r2!6217))) b!7777587))

(assert (= (and b!7777113 ((_ is Star!20799) (regOne!42111 r2!6217))) b!7777588))

(assert (= (and b!7777113 ((_ is Union!20799) (regOne!42111 r2!6217))) b!7777589))

(declare-fun b!7777593 () Bool)

(declare-fun e!4607573 () Bool)

(declare-fun tp!2285607 () Bool)

(declare-fun tp!2285609 () Bool)

(assert (=> b!7777593 (= e!4607573 (and tp!2285607 tp!2285609))))

(declare-fun b!7777591 () Bool)

(declare-fun tp!2285608 () Bool)

(declare-fun tp!2285605 () Bool)

(assert (=> b!7777591 (= e!4607573 (and tp!2285608 tp!2285605))))

(declare-fun b!7777590 () Bool)

(assert (=> b!7777590 (= e!4607573 tp_is_empty!51953)))

(assert (=> b!7777113 (= tp!2285476 e!4607573)))

(declare-fun b!7777592 () Bool)

(declare-fun tp!2285606 () Bool)

(assert (=> b!7777592 (= e!4607573 tp!2285606)))

(assert (= (and b!7777113 ((_ is ElementMatch!20799) (regTwo!42111 r2!6217))) b!7777590))

(assert (= (and b!7777113 ((_ is Concat!29644) (regTwo!42111 r2!6217))) b!7777591))

(assert (= (and b!7777113 ((_ is Star!20799) (regTwo!42111 r2!6217))) b!7777592))

(assert (= (and b!7777113 ((_ is Union!20799) (regTwo!42111 r2!6217))) b!7777593))

(check-sat (not d!2344915) (not bm!720860) (not d!2344923) (not b!7777570) (not b!7777587) (not b!7777243) (not b!7777576) (not b!7777579) (not b!7777554) (not b!7777459) (not b!7777580) (not bm!720882) (not b!7777368) (not b!7777244) (not b!7777566) (not b!7777422) (not b!7777552) (not b!7777563) (not b!7777458) (not b!7777384) (not d!2344921) (not bm!720890) (not bm!720887) (not bm!720885) (not b!7777562) (not b!7777568) (not b!7777394) (not bm!720828) (not b!7777356) (not bm!720872) (not b!7777395) (not b!7777558) (not bm!720820) (not b!7777457) (not b!7777593) (not b!7777325) (not b!7777560) (not b!7777393) (not d!2344929) (not b!7777232) (not b!7777401) (not b!7777241) (not b!7777574) (not b!7777585) (not b!7777588) (not b!7777447) (not b!7777556) (not b!7777242) (not b!7777452) (not bm!720893) (not b!7777551) (not b!7777575) (not d!2344899) (not bm!720874) tp_is_empty!51953 (not b!7777396) (not bm!720875) (not b!7777567) (not b!7777456) (not d!2344933) (not bm!720889) (not b!7777389) (not b!7777578) (not d!2344937) (not b!7777589) (not d!2344925) (not bm!720892) (not b!7777519) (not b!7777520) (not b!7777555) (not b!7777366) (not bm!720863) (not b!7777571) (not bm!720878) (not b!7777367) (not b!7777550) (not b!7777559) (not b!7777237) (not b!7777365) (not b!7777572) (not b!7777564) (not b!7777361) (not b!7777523) (not b!7777134) (not b!7777592) (not d!2344903) (not b!7777591) (not bm!720819) (not b!7777532))
(check-sat)
