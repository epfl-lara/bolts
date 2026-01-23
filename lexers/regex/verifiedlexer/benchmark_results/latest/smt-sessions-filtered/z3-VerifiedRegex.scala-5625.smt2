; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281542 () Bool)

(assert start!281542)

(declare-fun b!2884135 () Bool)

(declare-fun e!1824119 () Bool)

(declare-fun e!1824118 () Bool)

(assert (=> b!2884135 (= e!1824119 e!1824118)))

(declare-fun res!1194989 () Bool)

(assert (=> b!2884135 (=> (not res!1194989) (not e!1824118))))

(declare-datatypes ((C!17792 0))(
  ( (C!17793 (val!10930 Int)) )
))
(declare-datatypes ((List!34606 0))(
  ( (Nil!34482) (Cons!34482 (h!39902 C!17792) (t!233649 List!34606)) )
))
(declare-datatypes ((Option!6478 0))(
  ( (None!6477) (Some!6477 (v!34603 List!34606)) )
))
(declare-fun lt!1020427 () Option!6478)

(get-info :version)

(assert (=> b!2884135 (= res!1194989 ((_ is Some!6477) lt!1020427))))

(declare-datatypes ((Regex!8805 0))(
  ( (ElementMatch!8805 (c!468532 C!17792)) (Concat!14126 (regOne!18122 Regex!8805) (regTwo!18122 Regex!8805)) (EmptyExpr!8805) (Star!8805 (reg!9134 Regex!8805)) (EmptyLang!8805) (Union!8805 (regOne!18123 Regex!8805) (regTwo!18123 Regex!8805)) )
))
(declare-fun r!23079 () Regex!8805)

(declare-fun getLanguageWitness!512 (Regex!8805) Option!6478)

(assert (=> b!2884135 (= lt!1020427 (getLanguageWitness!512 (regOne!18123 r!23079)))))

(declare-fun b!2884136 () Bool)

(declare-fun e!1824120 () Bool)

(declare-fun tp!925095 () Bool)

(declare-fun tp!925096 () Bool)

(assert (=> b!2884136 (= e!1824120 (and tp!925095 tp!925096))))

(declare-fun b!2884137 () Bool)

(declare-fun tp_is_empty!15197 () Bool)

(assert (=> b!2884137 (= e!1824120 tp_is_empty!15197)))

(declare-fun res!1194988 () Bool)

(declare-fun e!1824121 () Bool)

(assert (=> start!281542 (=> (not res!1194988) (not e!1824121))))

(declare-fun validRegex!3578 (Regex!8805) Bool)

(assert (=> start!281542 (= res!1194988 (validRegex!3578 r!23079))))

(assert (=> start!281542 e!1824121))

(assert (=> start!281542 e!1824120))

(declare-fun b!2884138 () Bool)

(declare-fun tp!925097 () Bool)

(declare-fun tp!925098 () Bool)

(assert (=> b!2884138 (= e!1824120 (and tp!925097 tp!925098))))

(declare-fun b!2884139 () Bool)

(assert (=> b!2884139 (= e!1824121 e!1824119)))

(declare-fun res!1194991 () Bool)

(assert (=> b!2884139 (=> (not res!1194991) (not e!1824119))))

(declare-fun lt!1020424 () Option!6478)

(declare-fun isDefined!5042 (Option!6478) Bool)

(assert (=> b!2884139 (= res!1194991 (isDefined!5042 lt!1020424))))

(assert (=> b!2884139 (= lt!1020424 (getLanguageWitness!512 r!23079))))

(declare-fun b!2884140 () Bool)

(declare-fun tp!925099 () Bool)

(assert (=> b!2884140 (= e!1824120 tp!925099)))

(declare-fun b!2884141 () Bool)

(declare-fun lt!1020426 () Regex!8805)

(declare-fun matchR!3783 (Regex!8805 List!34606) Bool)

(declare-fun get!10418 (Option!6478) List!34606)

(assert (=> b!2884141 (= e!1824118 (not (matchR!3783 lt!1020426 (get!10418 lt!1020424))))))

(assert (=> b!2884141 (matchR!3783 lt!1020426 (v!34603 lt!1020427))))

(assert (=> b!2884141 (= lt!1020426 (Union!8805 (regOne!18123 r!23079) (regTwo!18123 r!23079)))))

(declare-datatypes ((Unit!48071 0))(
  ( (Unit!48072) )
))
(declare-fun lt!1020425 () Unit!48071)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!42 (Regex!8805 Regex!8805 List!34606) Unit!48071)

(assert (=> b!2884141 (= lt!1020425 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!42 (regOne!18123 r!23079) (regTwo!18123 r!23079) (v!34603 lt!1020427)))))

(assert (=> b!2884141 (matchR!3783 (regOne!18123 r!23079) (get!10418 lt!1020427))))

(declare-fun lt!1020428 () Unit!48071)

(declare-fun lemmaGetWitnessMatches!90 (Regex!8805) Unit!48071)

(assert (=> b!2884141 (= lt!1020428 (lemmaGetWitnessMatches!90 (regOne!18123 r!23079)))))

(declare-fun b!2884142 () Bool)

(declare-fun res!1194990 () Bool)

(assert (=> b!2884142 (=> (not res!1194990) (not e!1824119))))

(assert (=> b!2884142 (= res!1194990 (and (not ((_ is EmptyExpr!8805) r!23079)) (not ((_ is EmptyLang!8805) r!23079)) (not ((_ is ElementMatch!8805) r!23079)) (not ((_ is Star!8805) r!23079)) ((_ is Union!8805) r!23079)))))

(assert (= (and start!281542 res!1194988) b!2884139))

(assert (= (and b!2884139 res!1194991) b!2884142))

(assert (= (and b!2884142 res!1194990) b!2884135))

(assert (= (and b!2884135 res!1194989) b!2884141))

(assert (= (and start!281542 ((_ is ElementMatch!8805) r!23079)) b!2884137))

(assert (= (and start!281542 ((_ is Concat!14126) r!23079)) b!2884138))

(assert (= (and start!281542 ((_ is Star!8805) r!23079)) b!2884140))

(assert (= (and start!281542 ((_ is Union!8805) r!23079)) b!2884136))

(declare-fun m!3300425 () Bool)

(assert (=> b!2884135 m!3300425))

(declare-fun m!3300427 () Bool)

(assert (=> start!281542 m!3300427))

(declare-fun m!3300429 () Bool)

(assert (=> b!2884139 m!3300429))

(declare-fun m!3300431 () Bool)

(assert (=> b!2884139 m!3300431))

(declare-fun m!3300433 () Bool)

(assert (=> b!2884141 m!3300433))

(declare-fun m!3300435 () Bool)

(assert (=> b!2884141 m!3300435))

(declare-fun m!3300437 () Bool)

(assert (=> b!2884141 m!3300437))

(declare-fun m!3300439 () Bool)

(assert (=> b!2884141 m!3300439))

(declare-fun m!3300441 () Bool)

(assert (=> b!2884141 m!3300441))

(declare-fun m!3300443 () Bool)

(assert (=> b!2884141 m!3300443))

(assert (=> b!2884141 m!3300435))

(assert (=> b!2884141 m!3300439))

(declare-fun m!3300445 () Bool)

(assert (=> b!2884141 m!3300445))

(check-sat (not b!2884135) (not b!2884138) tp_is_empty!15197 (not b!2884140) (not b!2884139) (not b!2884141) (not start!281542) (not b!2884136))
(check-sat)
(get-model)

(declare-fun d!833778 () Bool)

(declare-fun isEmpty!18766 (Option!6478) Bool)

(assert (=> d!833778 (= (isDefined!5042 lt!1020424) (not (isEmpty!18766 lt!1020424)))))

(declare-fun bs!523797 () Bool)

(assert (= bs!523797 d!833778))

(declare-fun m!3300447 () Bool)

(assert (=> bs!523797 m!3300447))

(assert (=> b!2884139 d!833778))

(declare-fun b!2884203 () Bool)

(declare-fun e!1824156 () Option!6478)

(assert (=> b!2884203 (= e!1824156 (Some!6477 (Cons!34482 (c!468532 r!23079) Nil!34482)))))

(declare-fun bm!186974 () Bool)

(declare-fun call!186979 () Option!6478)

(declare-fun c!468560 () Bool)

(assert (=> bm!186974 (= call!186979 (getLanguageWitness!512 (ite c!468560 (regOne!18123 r!23079) (regTwo!18122 r!23079))))))

(declare-fun b!2884204 () Bool)

(declare-fun e!1824155 () Option!6478)

(declare-fun lt!1020437 () Option!6478)

(assert (=> b!2884204 (= e!1824155 lt!1020437)))

(declare-fun b!2884205 () Bool)

(declare-fun e!1824152 () Option!6478)

(declare-fun e!1824159 () Option!6478)

(assert (=> b!2884205 (= e!1824152 e!1824159)))

(declare-fun lt!1020438 () Option!6478)

(declare-fun call!186980 () Option!6478)

(assert (=> b!2884205 (= lt!1020438 call!186980)))

(declare-fun c!468557 () Bool)

(assert (=> b!2884205 (= c!468557 ((_ is Some!6477) lt!1020438))))

(declare-fun b!2884206 () Bool)

(declare-fun e!1824158 () Option!6478)

(assert (=> b!2884206 (= e!1824156 e!1824158)))

(declare-fun c!468561 () Bool)

(assert (=> b!2884206 (= c!468561 ((_ is Star!8805) r!23079))))

(declare-fun b!2884207 () Bool)

(declare-fun e!1824153 () Option!6478)

(assert (=> b!2884207 (= e!1824153 None!6477)))

(declare-fun d!833780 () Bool)

(declare-fun c!468559 () Bool)

(assert (=> d!833780 (= c!468559 ((_ is EmptyExpr!8805) r!23079))))

(declare-fun e!1824157 () Option!6478)

(assert (=> d!833780 (= (getLanguageWitness!512 r!23079) e!1824157)))

(declare-fun b!2884208 () Bool)

(declare-fun c!468556 () Bool)

(declare-fun lt!1020439 () Option!6478)

(assert (=> b!2884208 (= c!468556 ((_ is Some!6477) lt!1020439))))

(assert (=> b!2884208 (= lt!1020439 call!186979)))

(declare-fun e!1824154 () Option!6478)

(assert (=> b!2884208 (= e!1824159 e!1824154)))

(declare-fun b!2884209 () Bool)

(declare-fun ++!8204 (List!34606 List!34606) List!34606)

(assert (=> b!2884209 (= e!1824154 (Some!6477 (++!8204 (v!34603 lt!1020438) (v!34603 lt!1020439))))))

(declare-fun b!2884210 () Bool)

(assert (=> b!2884210 (= e!1824157 (Some!6477 Nil!34482))))

(declare-fun bm!186975 () Bool)

(assert (=> bm!186975 (= call!186980 (getLanguageWitness!512 (ite c!468560 (regTwo!18123 r!23079) (regOne!18122 r!23079))))))

(declare-fun b!2884211 () Bool)

(assert (=> b!2884211 (= e!1824158 (Some!6477 Nil!34482))))

(declare-fun b!2884212 () Bool)

(assert (=> b!2884212 (= e!1824152 e!1824155)))

(assert (=> b!2884212 (= lt!1020437 call!186979)))

(declare-fun c!468555 () Bool)

(assert (=> b!2884212 (= c!468555 ((_ is Some!6477) lt!1020437))))

(declare-fun b!2884213 () Bool)

(assert (=> b!2884213 (= e!1824157 e!1824153)))

(declare-fun c!468562 () Bool)

(assert (=> b!2884213 (= c!468562 ((_ is EmptyLang!8805) r!23079))))

(declare-fun b!2884214 () Bool)

(assert (=> b!2884214 (= e!1824155 call!186980)))

(declare-fun b!2884215 () Bool)

(assert (=> b!2884215 (= e!1824159 None!6477)))

(declare-fun b!2884216 () Bool)

(assert (=> b!2884216 (= c!468560 ((_ is Union!8805) r!23079))))

(assert (=> b!2884216 (= e!1824158 e!1824152)))

(declare-fun b!2884217 () Bool)

(assert (=> b!2884217 (= e!1824154 None!6477)))

(declare-fun b!2884218 () Bool)

(declare-fun c!468558 () Bool)

(assert (=> b!2884218 (= c!468558 ((_ is ElementMatch!8805) r!23079))))

(assert (=> b!2884218 (= e!1824153 e!1824156)))

(assert (= (and d!833780 c!468559) b!2884210))

(assert (= (and d!833780 (not c!468559)) b!2884213))

(assert (= (and b!2884213 c!468562) b!2884207))

(assert (= (and b!2884213 (not c!468562)) b!2884218))

(assert (= (and b!2884218 c!468558) b!2884203))

(assert (= (and b!2884218 (not c!468558)) b!2884206))

(assert (= (and b!2884206 c!468561) b!2884211))

(assert (= (and b!2884206 (not c!468561)) b!2884216))

(assert (= (and b!2884216 c!468560) b!2884212))

(assert (= (and b!2884216 (not c!468560)) b!2884205))

(assert (= (and b!2884212 c!468555) b!2884204))

(assert (= (and b!2884212 (not c!468555)) b!2884214))

(assert (= (and b!2884205 c!468557) b!2884208))

(assert (= (and b!2884205 (not c!468557)) b!2884215))

(assert (= (and b!2884208 c!468556) b!2884209))

(assert (= (and b!2884208 (not c!468556)) b!2884217))

(assert (= (or b!2884214 b!2884205) bm!186975))

(assert (= (or b!2884212 b!2884208) bm!186974))

(declare-fun m!3300449 () Bool)

(assert (=> bm!186974 m!3300449))

(declare-fun m!3300451 () Bool)

(assert (=> b!2884209 m!3300451))

(declare-fun m!3300453 () Bool)

(assert (=> bm!186975 m!3300453))

(assert (=> b!2884139 d!833780))

(declare-fun b!2884233 () Bool)

(declare-fun e!1824171 () Option!6478)

(assert (=> b!2884233 (= e!1824171 (Some!6477 (Cons!34482 (c!468532 (regOne!18123 r!23079)) Nil!34482)))))

(declare-fun bm!186977 () Bool)

(declare-fun call!186982 () Option!6478)

(declare-fun c!468571 () Bool)

(assert (=> bm!186977 (= call!186982 (getLanguageWitness!512 (ite c!468571 (regOne!18123 (regOne!18123 r!23079)) (regTwo!18122 (regOne!18123 r!23079)))))))

(declare-fun b!2884234 () Bool)

(declare-fun e!1824170 () Option!6478)

(declare-fun lt!1020441 () Option!6478)

(assert (=> b!2884234 (= e!1824170 lt!1020441)))

(declare-fun b!2884235 () Bool)

(declare-fun e!1824167 () Option!6478)

(declare-fun e!1824174 () Option!6478)

(assert (=> b!2884235 (= e!1824167 e!1824174)))

(declare-fun lt!1020442 () Option!6478)

(declare-fun call!186983 () Option!6478)

(assert (=> b!2884235 (= lt!1020442 call!186983)))

(declare-fun c!468568 () Bool)

(assert (=> b!2884235 (= c!468568 ((_ is Some!6477) lt!1020442))))

(declare-fun b!2884236 () Bool)

(declare-fun e!1824173 () Option!6478)

(assert (=> b!2884236 (= e!1824171 e!1824173)))

(declare-fun c!468572 () Bool)

(assert (=> b!2884236 (= c!468572 ((_ is Star!8805) (regOne!18123 r!23079)))))

(declare-fun b!2884237 () Bool)

(declare-fun e!1824168 () Option!6478)

(assert (=> b!2884237 (= e!1824168 None!6477)))

(declare-fun d!833784 () Bool)

(declare-fun c!468570 () Bool)

(assert (=> d!833784 (= c!468570 ((_ is EmptyExpr!8805) (regOne!18123 r!23079)))))

(declare-fun e!1824172 () Option!6478)

(assert (=> d!833784 (= (getLanguageWitness!512 (regOne!18123 r!23079)) e!1824172)))

(declare-fun b!2884238 () Bool)

(declare-fun c!468567 () Bool)

(declare-fun lt!1020443 () Option!6478)

(assert (=> b!2884238 (= c!468567 ((_ is Some!6477) lt!1020443))))

(assert (=> b!2884238 (= lt!1020443 call!186982)))

(declare-fun e!1824169 () Option!6478)

(assert (=> b!2884238 (= e!1824174 e!1824169)))

(declare-fun b!2884239 () Bool)

(assert (=> b!2884239 (= e!1824169 (Some!6477 (++!8204 (v!34603 lt!1020442) (v!34603 lt!1020443))))))

(declare-fun b!2884240 () Bool)

(assert (=> b!2884240 (= e!1824172 (Some!6477 Nil!34482))))

(declare-fun bm!186978 () Bool)

(assert (=> bm!186978 (= call!186983 (getLanguageWitness!512 (ite c!468571 (regTwo!18123 (regOne!18123 r!23079)) (regOne!18122 (regOne!18123 r!23079)))))))

(declare-fun b!2884241 () Bool)

(assert (=> b!2884241 (= e!1824173 (Some!6477 Nil!34482))))

(declare-fun b!2884242 () Bool)

(assert (=> b!2884242 (= e!1824167 e!1824170)))

(assert (=> b!2884242 (= lt!1020441 call!186982)))

(declare-fun c!468566 () Bool)

(assert (=> b!2884242 (= c!468566 ((_ is Some!6477) lt!1020441))))

(declare-fun b!2884243 () Bool)

(assert (=> b!2884243 (= e!1824172 e!1824168)))

(declare-fun c!468573 () Bool)

(assert (=> b!2884243 (= c!468573 ((_ is EmptyLang!8805) (regOne!18123 r!23079)))))

(declare-fun b!2884244 () Bool)

(assert (=> b!2884244 (= e!1824170 call!186983)))

(declare-fun b!2884245 () Bool)

(assert (=> b!2884245 (= e!1824174 None!6477)))

(declare-fun b!2884246 () Bool)

(assert (=> b!2884246 (= c!468571 ((_ is Union!8805) (regOne!18123 r!23079)))))

(assert (=> b!2884246 (= e!1824173 e!1824167)))

(declare-fun b!2884247 () Bool)

(assert (=> b!2884247 (= e!1824169 None!6477)))

(declare-fun b!2884248 () Bool)

(declare-fun c!468569 () Bool)

(assert (=> b!2884248 (= c!468569 ((_ is ElementMatch!8805) (regOne!18123 r!23079)))))

(assert (=> b!2884248 (= e!1824168 e!1824171)))

(assert (= (and d!833784 c!468570) b!2884240))

(assert (= (and d!833784 (not c!468570)) b!2884243))

(assert (= (and b!2884243 c!468573) b!2884237))

(assert (= (and b!2884243 (not c!468573)) b!2884248))

(assert (= (and b!2884248 c!468569) b!2884233))

(assert (= (and b!2884248 (not c!468569)) b!2884236))

(assert (= (and b!2884236 c!468572) b!2884241))

(assert (= (and b!2884236 (not c!468572)) b!2884246))

(assert (= (and b!2884246 c!468571) b!2884242))

(assert (= (and b!2884246 (not c!468571)) b!2884235))

(assert (= (and b!2884242 c!468566) b!2884234))

(assert (= (and b!2884242 (not c!468566)) b!2884244))

(assert (= (and b!2884235 c!468568) b!2884238))

(assert (= (and b!2884235 (not c!468568)) b!2884245))

(assert (= (and b!2884238 c!468567) b!2884239))

(assert (= (and b!2884238 (not c!468567)) b!2884247))

(assert (= (or b!2884244 b!2884235) bm!186978))

(assert (= (or b!2884242 b!2884238) bm!186977))

(declare-fun m!3300463 () Bool)

(assert (=> bm!186977 m!3300463))

(declare-fun m!3300467 () Bool)

(assert (=> b!2884239 m!3300467))

(declare-fun m!3300469 () Bool)

(assert (=> bm!186978 m!3300469))

(assert (=> b!2884135 d!833784))

(declare-fun b!2884295 () Bool)

(declare-fun e!1824209 () Bool)

(declare-fun call!186993 () Bool)

(assert (=> b!2884295 (= e!1824209 call!186993)))

(declare-fun d!833786 () Bool)

(declare-fun res!1195046 () Bool)

(declare-fun e!1824205 () Bool)

(assert (=> d!833786 (=> res!1195046 e!1824205)))

(assert (=> d!833786 (= res!1195046 ((_ is ElementMatch!8805) r!23079))))

(assert (=> d!833786 (= (validRegex!3578 r!23079) e!1824205)))

(declare-fun b!2884296 () Bool)

(declare-fun e!1824203 () Bool)

(assert (=> b!2884296 (= e!1824205 e!1824203)))

(declare-fun c!468584 () Bool)

(assert (=> b!2884296 (= c!468584 ((_ is Star!8805) r!23079))))

(declare-fun call!186994 () Bool)

(declare-fun bm!186987 () Bool)

(declare-fun c!468585 () Bool)

(assert (=> bm!186987 (= call!186994 (validRegex!3578 (ite c!468584 (reg!9134 r!23079) (ite c!468585 (regTwo!18123 r!23079) (regTwo!18122 r!23079)))))))

(declare-fun b!2884297 () Bool)

(declare-fun e!1824207 () Bool)

(assert (=> b!2884297 (= e!1824203 e!1824207)))

(declare-fun res!1195042 () Bool)

(declare-fun nullable!2707 (Regex!8805) Bool)

(assert (=> b!2884297 (= res!1195042 (not (nullable!2707 (reg!9134 r!23079))))))

(assert (=> b!2884297 (=> (not res!1195042) (not e!1824207))))

(declare-fun b!2884298 () Bool)

(declare-fun e!1824204 () Bool)

(assert (=> b!2884298 (= e!1824203 e!1824204)))

(assert (=> b!2884298 (= c!468585 ((_ is Union!8805) r!23079))))

(declare-fun b!2884299 () Bool)

(declare-fun e!1824206 () Bool)

(assert (=> b!2884299 (= e!1824206 call!186993)))

(declare-fun bm!186988 () Bool)

(assert (=> bm!186988 (= call!186993 call!186994)))

(declare-fun bm!186989 () Bool)

(declare-fun call!186992 () Bool)

(assert (=> bm!186989 (= call!186992 (validRegex!3578 (ite c!468585 (regOne!18123 r!23079) (regOne!18122 r!23079))))))

(declare-fun b!2884300 () Bool)

(declare-fun res!1195045 () Bool)

(assert (=> b!2884300 (=> (not res!1195045) (not e!1824206))))

(assert (=> b!2884300 (= res!1195045 call!186992)))

(assert (=> b!2884300 (= e!1824204 e!1824206)))

(declare-fun b!2884301 () Bool)

(assert (=> b!2884301 (= e!1824207 call!186994)))

(declare-fun b!2884302 () Bool)

(declare-fun e!1824208 () Bool)

(assert (=> b!2884302 (= e!1824208 e!1824209)))

(declare-fun res!1195044 () Bool)

(assert (=> b!2884302 (=> (not res!1195044) (not e!1824209))))

(assert (=> b!2884302 (= res!1195044 call!186992)))

(declare-fun b!2884303 () Bool)

(declare-fun res!1195043 () Bool)

(assert (=> b!2884303 (=> res!1195043 e!1824208)))

(assert (=> b!2884303 (= res!1195043 (not ((_ is Concat!14126) r!23079)))))

(assert (=> b!2884303 (= e!1824204 e!1824208)))

(assert (= (and d!833786 (not res!1195046)) b!2884296))

(assert (= (and b!2884296 c!468584) b!2884297))

(assert (= (and b!2884296 (not c!468584)) b!2884298))

(assert (= (and b!2884297 res!1195042) b!2884301))

(assert (= (and b!2884298 c!468585) b!2884300))

(assert (= (and b!2884298 (not c!468585)) b!2884303))

(assert (= (and b!2884300 res!1195045) b!2884299))

(assert (= (and b!2884303 (not res!1195043)) b!2884302))

(assert (= (and b!2884302 res!1195044) b!2884295))

(assert (= (or b!2884299 b!2884295) bm!186988))

(assert (= (or b!2884300 b!2884302) bm!186989))

(assert (= (or b!2884301 bm!186988) bm!186987))

(declare-fun m!3300499 () Bool)

(assert (=> bm!186987 m!3300499))

(declare-fun m!3300501 () Bool)

(assert (=> b!2884297 m!3300501))

(declare-fun m!3300503 () Bool)

(assert (=> bm!186989 m!3300503))

(assert (=> start!281542 d!833786))

(declare-fun b!2884367 () Bool)

(declare-fun e!1824244 () Bool)

(declare-fun e!1824248 () Bool)

(assert (=> b!2884367 (= e!1824244 e!1824248)))

(declare-fun c!468608 () Bool)

(assert (=> b!2884367 (= c!468608 ((_ is EmptyLang!8805) lt!1020426))))

(declare-fun b!2884368 () Bool)

(declare-fun lt!1020460 () Bool)

(assert (=> b!2884368 (= e!1824248 (not lt!1020460))))

(declare-fun b!2884369 () Bool)

(declare-fun e!1824249 () Bool)

(declare-fun head!6369 (List!34606) C!17792)

(assert (=> b!2884369 (= e!1824249 (= (head!6369 (v!34603 lt!1020427)) (c!468532 lt!1020426)))))

(declare-fun bm!186996 () Bool)

(declare-fun call!187001 () Bool)

(declare-fun isEmpty!18768 (List!34606) Bool)

(assert (=> bm!186996 (= call!187001 (isEmpty!18768 (v!34603 lt!1020427)))))

(declare-fun b!2884370 () Bool)

(declare-fun res!1195067 () Bool)

(assert (=> b!2884370 (=> (not res!1195067) (not e!1824249))))

(declare-fun tail!4594 (List!34606) List!34606)

(assert (=> b!2884370 (= res!1195067 (isEmpty!18768 (tail!4594 (v!34603 lt!1020427))))))

(declare-fun b!2884371 () Bool)

(declare-fun e!1824246 () Bool)

(declare-fun e!1824245 () Bool)

(assert (=> b!2884371 (= e!1824246 e!1824245)))

(declare-fun res!1195071 () Bool)

(assert (=> b!2884371 (=> res!1195071 e!1824245)))

(assert (=> b!2884371 (= res!1195071 call!187001)))

(declare-fun b!2884372 () Bool)

(declare-fun e!1824247 () Bool)

(declare-fun derivativeStep!2340 (Regex!8805 C!17792) Regex!8805)

(assert (=> b!2884372 (= e!1824247 (matchR!3783 (derivativeStep!2340 lt!1020426 (head!6369 (v!34603 lt!1020427))) (tail!4594 (v!34603 lt!1020427))))))

(declare-fun d!833796 () Bool)

(assert (=> d!833796 e!1824244))

(declare-fun c!468609 () Bool)

(assert (=> d!833796 (= c!468609 ((_ is EmptyExpr!8805) lt!1020426))))

(assert (=> d!833796 (= lt!1020460 e!1824247)))

(declare-fun c!468610 () Bool)

(assert (=> d!833796 (= c!468610 (isEmpty!18768 (v!34603 lt!1020427)))))

(assert (=> d!833796 (validRegex!3578 lt!1020426)))

(assert (=> d!833796 (= (matchR!3783 lt!1020426 (v!34603 lt!1020427)) lt!1020460)))

(declare-fun b!2884373 () Bool)

(assert (=> b!2884373 (= e!1824244 (= lt!1020460 call!187001))))

(declare-fun b!2884374 () Bool)

(declare-fun res!1195070 () Bool)

(assert (=> b!2884374 (=> (not res!1195070) (not e!1824249))))

(assert (=> b!2884374 (= res!1195070 (not call!187001))))

(declare-fun b!2884375 () Bool)

(declare-fun res!1195068 () Bool)

(declare-fun e!1824243 () Bool)

(assert (=> b!2884375 (=> res!1195068 e!1824243)))

(assert (=> b!2884375 (= res!1195068 (not ((_ is ElementMatch!8805) lt!1020426)))))

(assert (=> b!2884375 (= e!1824248 e!1824243)))

(declare-fun b!2884376 () Bool)

(assert (=> b!2884376 (= e!1824245 (not (= (head!6369 (v!34603 lt!1020427)) (c!468532 lt!1020426))))))

(declare-fun b!2884377 () Bool)

(declare-fun res!1195069 () Bool)

(assert (=> b!2884377 (=> res!1195069 e!1824245)))

(assert (=> b!2884377 (= res!1195069 (not (isEmpty!18768 (tail!4594 (v!34603 lt!1020427)))))))

(declare-fun b!2884378 () Bool)

(assert (=> b!2884378 (= e!1824243 e!1824246)))

(declare-fun res!1195066 () Bool)

(assert (=> b!2884378 (=> (not res!1195066) (not e!1824246))))

(assert (=> b!2884378 (= res!1195066 (not lt!1020460))))

(declare-fun b!2884379 () Bool)

(assert (=> b!2884379 (= e!1824247 (nullable!2707 lt!1020426))))

(declare-fun b!2884380 () Bool)

(declare-fun res!1195072 () Bool)

(assert (=> b!2884380 (=> res!1195072 e!1824243)))

(assert (=> b!2884380 (= res!1195072 e!1824249)))

(declare-fun res!1195073 () Bool)

(assert (=> b!2884380 (=> (not res!1195073) (not e!1824249))))

(assert (=> b!2884380 (= res!1195073 lt!1020460)))

(assert (= (and d!833796 c!468610) b!2884379))

(assert (= (and d!833796 (not c!468610)) b!2884372))

(assert (= (and d!833796 c!468609) b!2884373))

(assert (= (and d!833796 (not c!468609)) b!2884367))

(assert (= (and b!2884367 c!468608) b!2884368))

(assert (= (and b!2884367 (not c!468608)) b!2884375))

(assert (= (and b!2884375 (not res!1195068)) b!2884380))

(assert (= (and b!2884380 res!1195073) b!2884374))

(assert (= (and b!2884374 res!1195070) b!2884370))

(assert (= (and b!2884370 res!1195067) b!2884369))

(assert (= (and b!2884380 (not res!1195072)) b!2884378))

(assert (= (and b!2884378 res!1195066) b!2884371))

(assert (= (and b!2884371 (not res!1195071)) b!2884377))

(assert (= (and b!2884377 (not res!1195069)) b!2884376))

(assert (= (or b!2884373 b!2884371 b!2884374) bm!186996))

(declare-fun m!3300525 () Bool)

(assert (=> b!2884369 m!3300525))

(declare-fun m!3300527 () Bool)

(assert (=> d!833796 m!3300527))

(declare-fun m!3300529 () Bool)

(assert (=> d!833796 m!3300529))

(assert (=> b!2884372 m!3300525))

(assert (=> b!2884372 m!3300525))

(declare-fun m!3300531 () Bool)

(assert (=> b!2884372 m!3300531))

(declare-fun m!3300533 () Bool)

(assert (=> b!2884372 m!3300533))

(assert (=> b!2884372 m!3300531))

(assert (=> b!2884372 m!3300533))

(declare-fun m!3300535 () Bool)

(assert (=> b!2884372 m!3300535))

(assert (=> b!2884376 m!3300525))

(assert (=> b!2884377 m!3300533))

(assert (=> b!2884377 m!3300533))

(declare-fun m!3300537 () Bool)

(assert (=> b!2884377 m!3300537))

(assert (=> b!2884370 m!3300533))

(assert (=> b!2884370 m!3300533))

(assert (=> b!2884370 m!3300537))

(declare-fun m!3300539 () Bool)

(assert (=> b!2884379 m!3300539))

(assert (=> bm!186996 m!3300527))

(assert (=> b!2884141 d!833796))

(declare-fun b!2884381 () Bool)

(declare-fun e!1824251 () Bool)

(declare-fun e!1824255 () Bool)

(assert (=> b!2884381 (= e!1824251 e!1824255)))

(declare-fun c!468611 () Bool)

(assert (=> b!2884381 (= c!468611 ((_ is EmptyLang!8805) lt!1020426))))

(declare-fun b!2884382 () Bool)

(declare-fun lt!1020461 () Bool)

(assert (=> b!2884382 (= e!1824255 (not lt!1020461))))

(declare-fun b!2884383 () Bool)

(declare-fun e!1824256 () Bool)

(assert (=> b!2884383 (= e!1824256 (= (head!6369 (get!10418 lt!1020424)) (c!468532 lt!1020426)))))

(declare-fun bm!186997 () Bool)

(declare-fun call!187002 () Bool)

(assert (=> bm!186997 (= call!187002 (isEmpty!18768 (get!10418 lt!1020424)))))

(declare-fun b!2884384 () Bool)

(declare-fun res!1195075 () Bool)

(assert (=> b!2884384 (=> (not res!1195075) (not e!1824256))))

(assert (=> b!2884384 (= res!1195075 (isEmpty!18768 (tail!4594 (get!10418 lt!1020424))))))

(declare-fun b!2884385 () Bool)

(declare-fun e!1824253 () Bool)

(declare-fun e!1824252 () Bool)

(assert (=> b!2884385 (= e!1824253 e!1824252)))

(declare-fun res!1195079 () Bool)

(assert (=> b!2884385 (=> res!1195079 e!1824252)))

(assert (=> b!2884385 (= res!1195079 call!187002)))

(declare-fun b!2884386 () Bool)

(declare-fun e!1824254 () Bool)

(assert (=> b!2884386 (= e!1824254 (matchR!3783 (derivativeStep!2340 lt!1020426 (head!6369 (get!10418 lt!1020424))) (tail!4594 (get!10418 lt!1020424))))))

(declare-fun d!833806 () Bool)

(assert (=> d!833806 e!1824251))

(declare-fun c!468612 () Bool)

(assert (=> d!833806 (= c!468612 ((_ is EmptyExpr!8805) lt!1020426))))

(assert (=> d!833806 (= lt!1020461 e!1824254)))

(declare-fun c!468613 () Bool)

(assert (=> d!833806 (= c!468613 (isEmpty!18768 (get!10418 lt!1020424)))))

(assert (=> d!833806 (validRegex!3578 lt!1020426)))

(assert (=> d!833806 (= (matchR!3783 lt!1020426 (get!10418 lt!1020424)) lt!1020461)))

(declare-fun b!2884387 () Bool)

(assert (=> b!2884387 (= e!1824251 (= lt!1020461 call!187002))))

(declare-fun b!2884388 () Bool)

(declare-fun res!1195078 () Bool)

(assert (=> b!2884388 (=> (not res!1195078) (not e!1824256))))

(assert (=> b!2884388 (= res!1195078 (not call!187002))))

(declare-fun b!2884389 () Bool)

(declare-fun res!1195076 () Bool)

(declare-fun e!1824250 () Bool)

(assert (=> b!2884389 (=> res!1195076 e!1824250)))

(assert (=> b!2884389 (= res!1195076 (not ((_ is ElementMatch!8805) lt!1020426)))))

(assert (=> b!2884389 (= e!1824255 e!1824250)))

(declare-fun b!2884390 () Bool)

(assert (=> b!2884390 (= e!1824252 (not (= (head!6369 (get!10418 lt!1020424)) (c!468532 lt!1020426))))))

(declare-fun b!2884391 () Bool)

(declare-fun res!1195077 () Bool)

(assert (=> b!2884391 (=> res!1195077 e!1824252)))

(assert (=> b!2884391 (= res!1195077 (not (isEmpty!18768 (tail!4594 (get!10418 lt!1020424)))))))

(declare-fun b!2884392 () Bool)

(assert (=> b!2884392 (= e!1824250 e!1824253)))

(declare-fun res!1195074 () Bool)

(assert (=> b!2884392 (=> (not res!1195074) (not e!1824253))))

(assert (=> b!2884392 (= res!1195074 (not lt!1020461))))

(declare-fun b!2884393 () Bool)

(assert (=> b!2884393 (= e!1824254 (nullable!2707 lt!1020426))))

(declare-fun b!2884394 () Bool)

(declare-fun res!1195080 () Bool)

(assert (=> b!2884394 (=> res!1195080 e!1824250)))

(assert (=> b!2884394 (= res!1195080 e!1824256)))

(declare-fun res!1195081 () Bool)

(assert (=> b!2884394 (=> (not res!1195081) (not e!1824256))))

(assert (=> b!2884394 (= res!1195081 lt!1020461)))

(assert (= (and d!833806 c!468613) b!2884393))

(assert (= (and d!833806 (not c!468613)) b!2884386))

(assert (= (and d!833806 c!468612) b!2884387))

(assert (= (and d!833806 (not c!468612)) b!2884381))

(assert (= (and b!2884381 c!468611) b!2884382))

(assert (= (and b!2884381 (not c!468611)) b!2884389))

(assert (= (and b!2884389 (not res!1195076)) b!2884394))

(assert (= (and b!2884394 res!1195081) b!2884388))

(assert (= (and b!2884388 res!1195078) b!2884384))

(assert (= (and b!2884384 res!1195075) b!2884383))

(assert (= (and b!2884394 (not res!1195080)) b!2884392))

(assert (= (and b!2884392 res!1195074) b!2884385))

(assert (= (and b!2884385 (not res!1195079)) b!2884391))

(assert (= (and b!2884391 (not res!1195077)) b!2884390))

(assert (= (or b!2884387 b!2884385 b!2884388) bm!186997))

(assert (=> b!2884383 m!3300435))

(declare-fun m!3300541 () Bool)

(assert (=> b!2884383 m!3300541))

(assert (=> d!833806 m!3300435))

(declare-fun m!3300543 () Bool)

(assert (=> d!833806 m!3300543))

(assert (=> d!833806 m!3300529))

(assert (=> b!2884386 m!3300435))

(assert (=> b!2884386 m!3300541))

(assert (=> b!2884386 m!3300541))

(declare-fun m!3300545 () Bool)

(assert (=> b!2884386 m!3300545))

(assert (=> b!2884386 m!3300435))

(declare-fun m!3300547 () Bool)

(assert (=> b!2884386 m!3300547))

(assert (=> b!2884386 m!3300545))

(assert (=> b!2884386 m!3300547))

(declare-fun m!3300549 () Bool)

(assert (=> b!2884386 m!3300549))

(assert (=> b!2884390 m!3300435))

(assert (=> b!2884390 m!3300541))

(assert (=> b!2884391 m!3300435))

(assert (=> b!2884391 m!3300547))

(assert (=> b!2884391 m!3300547))

(declare-fun m!3300551 () Bool)

(assert (=> b!2884391 m!3300551))

(assert (=> b!2884384 m!3300435))

(assert (=> b!2884384 m!3300547))

(assert (=> b!2884384 m!3300547))

(assert (=> b!2884384 m!3300551))

(assert (=> b!2884393 m!3300539))

(assert (=> bm!186997 m!3300435))

(assert (=> bm!186997 m!3300543))

(assert (=> b!2884141 d!833806))

(declare-fun d!833808 () Bool)

(assert (=> d!833808 (matchR!3783 (regOne!18123 r!23079) (get!10418 (getLanguageWitness!512 (regOne!18123 r!23079))))))

(declare-fun lt!1020470 () Unit!48071)

(declare-fun choose!17053 (Regex!8805) Unit!48071)

(assert (=> d!833808 (= lt!1020470 (choose!17053 (regOne!18123 r!23079)))))

(assert (=> d!833808 (validRegex!3578 (regOne!18123 r!23079))))

(assert (=> d!833808 (= (lemmaGetWitnessMatches!90 (regOne!18123 r!23079)) lt!1020470)))

(declare-fun bs!523800 () Bool)

(assert (= bs!523800 d!833808))

(assert (=> bs!523800 m!3300425))

(declare-fun m!3300565 () Bool)

(assert (=> bs!523800 m!3300565))

(assert (=> bs!523800 m!3300565))

(declare-fun m!3300567 () Bool)

(assert (=> bs!523800 m!3300567))

(assert (=> bs!523800 m!3300425))

(declare-fun m!3300569 () Bool)

(assert (=> bs!523800 m!3300569))

(declare-fun m!3300571 () Bool)

(assert (=> bs!523800 m!3300571))

(assert (=> b!2884141 d!833808))

(declare-fun d!833814 () Bool)

(assert (=> d!833814 (= (get!10418 lt!1020427) (v!34603 lt!1020427))))

(assert (=> b!2884141 d!833814))

(declare-fun d!833816 () Bool)

(assert (=> d!833816 (= (get!10418 lt!1020424) (v!34603 lt!1020424))))

(assert (=> b!2884141 d!833816))

(declare-fun b!2884427 () Bool)

(declare-fun e!1824274 () Bool)

(declare-fun e!1824278 () Bool)

(assert (=> b!2884427 (= e!1824274 e!1824278)))

(declare-fun c!468630 () Bool)

(assert (=> b!2884427 (= c!468630 ((_ is EmptyLang!8805) (regOne!18123 r!23079)))))

(declare-fun b!2884428 () Bool)

(declare-fun lt!1020471 () Bool)

(assert (=> b!2884428 (= e!1824278 (not lt!1020471))))

(declare-fun b!2884429 () Bool)

(declare-fun e!1824279 () Bool)

(assert (=> b!2884429 (= e!1824279 (= (head!6369 (get!10418 lt!1020427)) (c!468532 (regOne!18123 r!23079))))))

(declare-fun bm!187002 () Bool)

(declare-fun call!187007 () Bool)

(assert (=> bm!187002 (= call!187007 (isEmpty!18768 (get!10418 lt!1020427)))))

(declare-fun b!2884430 () Bool)

(declare-fun res!1195083 () Bool)

(assert (=> b!2884430 (=> (not res!1195083) (not e!1824279))))

(assert (=> b!2884430 (= res!1195083 (isEmpty!18768 (tail!4594 (get!10418 lt!1020427))))))

(declare-fun b!2884431 () Bool)

(declare-fun e!1824276 () Bool)

(declare-fun e!1824275 () Bool)

(assert (=> b!2884431 (= e!1824276 e!1824275)))

(declare-fun res!1195087 () Bool)

(assert (=> b!2884431 (=> res!1195087 e!1824275)))

(assert (=> b!2884431 (= res!1195087 call!187007)))

(declare-fun b!2884432 () Bool)

(declare-fun e!1824277 () Bool)

(assert (=> b!2884432 (= e!1824277 (matchR!3783 (derivativeStep!2340 (regOne!18123 r!23079) (head!6369 (get!10418 lt!1020427))) (tail!4594 (get!10418 lt!1020427))))))

(declare-fun d!833818 () Bool)

(assert (=> d!833818 e!1824274))

(declare-fun c!468631 () Bool)

(assert (=> d!833818 (= c!468631 ((_ is EmptyExpr!8805) (regOne!18123 r!23079)))))

(assert (=> d!833818 (= lt!1020471 e!1824277)))

(declare-fun c!468632 () Bool)

(assert (=> d!833818 (= c!468632 (isEmpty!18768 (get!10418 lt!1020427)))))

(assert (=> d!833818 (validRegex!3578 (regOne!18123 r!23079))))

(assert (=> d!833818 (= (matchR!3783 (regOne!18123 r!23079) (get!10418 lt!1020427)) lt!1020471)))

(declare-fun b!2884433 () Bool)

(assert (=> b!2884433 (= e!1824274 (= lt!1020471 call!187007))))

(declare-fun b!2884434 () Bool)

(declare-fun res!1195086 () Bool)

(assert (=> b!2884434 (=> (not res!1195086) (not e!1824279))))

(assert (=> b!2884434 (= res!1195086 (not call!187007))))

(declare-fun b!2884435 () Bool)

(declare-fun res!1195084 () Bool)

(declare-fun e!1824273 () Bool)

(assert (=> b!2884435 (=> res!1195084 e!1824273)))

(assert (=> b!2884435 (= res!1195084 (not ((_ is ElementMatch!8805) (regOne!18123 r!23079))))))

(assert (=> b!2884435 (= e!1824278 e!1824273)))

(declare-fun b!2884436 () Bool)

(assert (=> b!2884436 (= e!1824275 (not (= (head!6369 (get!10418 lt!1020427)) (c!468532 (regOne!18123 r!23079)))))))

(declare-fun b!2884437 () Bool)

(declare-fun res!1195085 () Bool)

(assert (=> b!2884437 (=> res!1195085 e!1824275)))

(assert (=> b!2884437 (= res!1195085 (not (isEmpty!18768 (tail!4594 (get!10418 lt!1020427)))))))

(declare-fun b!2884438 () Bool)

(assert (=> b!2884438 (= e!1824273 e!1824276)))

(declare-fun res!1195082 () Bool)

(assert (=> b!2884438 (=> (not res!1195082) (not e!1824276))))

(assert (=> b!2884438 (= res!1195082 (not lt!1020471))))

(declare-fun b!2884439 () Bool)

(assert (=> b!2884439 (= e!1824277 (nullable!2707 (regOne!18123 r!23079)))))

(declare-fun b!2884440 () Bool)

(declare-fun res!1195088 () Bool)

(assert (=> b!2884440 (=> res!1195088 e!1824273)))

(assert (=> b!2884440 (= res!1195088 e!1824279)))

(declare-fun res!1195089 () Bool)

(assert (=> b!2884440 (=> (not res!1195089) (not e!1824279))))

(assert (=> b!2884440 (= res!1195089 lt!1020471)))

(assert (= (and d!833818 c!468632) b!2884439))

(assert (= (and d!833818 (not c!468632)) b!2884432))

(assert (= (and d!833818 c!468631) b!2884433))

(assert (= (and d!833818 (not c!468631)) b!2884427))

(assert (= (and b!2884427 c!468630) b!2884428))

(assert (= (and b!2884427 (not c!468630)) b!2884435))

(assert (= (and b!2884435 (not res!1195084)) b!2884440))

(assert (= (and b!2884440 res!1195089) b!2884434))

(assert (= (and b!2884434 res!1195086) b!2884430))

(assert (= (and b!2884430 res!1195083) b!2884429))

(assert (= (and b!2884440 (not res!1195088)) b!2884438))

(assert (= (and b!2884438 res!1195082) b!2884431))

(assert (= (and b!2884431 (not res!1195087)) b!2884437))

(assert (= (and b!2884437 (not res!1195085)) b!2884436))

(assert (= (or b!2884433 b!2884431 b!2884434) bm!187002))

(assert (=> b!2884429 m!3300439))

(declare-fun m!3300573 () Bool)

(assert (=> b!2884429 m!3300573))

(assert (=> d!833818 m!3300439))

(declare-fun m!3300575 () Bool)

(assert (=> d!833818 m!3300575))

(assert (=> d!833818 m!3300569))

(assert (=> b!2884432 m!3300439))

(assert (=> b!2884432 m!3300573))

(assert (=> b!2884432 m!3300573))

(declare-fun m!3300577 () Bool)

(assert (=> b!2884432 m!3300577))

(assert (=> b!2884432 m!3300439))

(declare-fun m!3300579 () Bool)

(assert (=> b!2884432 m!3300579))

(assert (=> b!2884432 m!3300577))

(assert (=> b!2884432 m!3300579))

(declare-fun m!3300581 () Bool)

(assert (=> b!2884432 m!3300581))

(assert (=> b!2884436 m!3300439))

(assert (=> b!2884436 m!3300573))

(assert (=> b!2884437 m!3300439))

(assert (=> b!2884437 m!3300579))

(assert (=> b!2884437 m!3300579))

(declare-fun m!3300583 () Bool)

(assert (=> b!2884437 m!3300583))

(assert (=> b!2884430 m!3300439))

(assert (=> b!2884430 m!3300579))

(assert (=> b!2884430 m!3300579))

(assert (=> b!2884430 m!3300583))

(declare-fun m!3300585 () Bool)

(assert (=> b!2884439 m!3300585))

(assert (=> bm!187002 m!3300439))

(assert (=> bm!187002 m!3300575))

(assert (=> b!2884141 d!833818))

(declare-fun d!833820 () Bool)

(assert (=> d!833820 (matchR!3783 (Union!8805 (regOne!18123 r!23079) (regTwo!18123 r!23079)) (v!34603 lt!1020427))))

(declare-fun lt!1020474 () Unit!48071)

(declare-fun choose!17054 (Regex!8805 Regex!8805 List!34606) Unit!48071)

(assert (=> d!833820 (= lt!1020474 (choose!17054 (regOne!18123 r!23079) (regTwo!18123 r!23079) (v!34603 lt!1020427)))))

(declare-fun e!1824305 () Bool)

(assert (=> d!833820 e!1824305))

(declare-fun res!1195107 () Bool)

(assert (=> d!833820 (=> (not res!1195107) (not e!1824305))))

(assert (=> d!833820 (= res!1195107 (validRegex!3578 (regOne!18123 r!23079)))))

(assert (=> d!833820 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!42 (regOne!18123 r!23079) (regTwo!18123 r!23079) (v!34603 lt!1020427)) lt!1020474)))

(declare-fun b!2884480 () Bool)

(assert (=> b!2884480 (= e!1824305 (validRegex!3578 (regTwo!18123 r!23079)))))

(assert (= (and d!833820 res!1195107) b!2884480))

(declare-fun m!3300593 () Bool)

(assert (=> d!833820 m!3300593))

(declare-fun m!3300595 () Bool)

(assert (=> d!833820 m!3300595))

(assert (=> d!833820 m!3300569))

(declare-fun m!3300597 () Bool)

(assert (=> b!2884480 m!3300597))

(assert (=> b!2884141 d!833820))

(declare-fun b!2884514 () Bool)

(declare-fun e!1824313 () Bool)

(declare-fun tp!925148 () Bool)

(declare-fun tp!925149 () Bool)

(assert (=> b!2884514 (= e!1824313 (and tp!925148 tp!925149))))

(assert (=> b!2884140 (= tp!925099 e!1824313)))

(declare-fun b!2884512 () Bool)

(declare-fun tp!925145 () Bool)

(declare-fun tp!925147 () Bool)

(assert (=> b!2884512 (= e!1824313 (and tp!925145 tp!925147))))

(declare-fun b!2884511 () Bool)

(assert (=> b!2884511 (= e!1824313 tp_is_empty!15197)))

(declare-fun b!2884513 () Bool)

(declare-fun tp!925146 () Bool)

(assert (=> b!2884513 (= e!1824313 tp!925146)))

(assert (= (and b!2884140 ((_ is ElementMatch!8805) (reg!9134 r!23079))) b!2884511))

(assert (= (and b!2884140 ((_ is Concat!14126) (reg!9134 r!23079))) b!2884512))

(assert (= (and b!2884140 ((_ is Star!8805) (reg!9134 r!23079))) b!2884513))

(assert (= (and b!2884140 ((_ is Union!8805) (reg!9134 r!23079))) b!2884514))

(declare-fun b!2884518 () Bool)

(declare-fun e!1824314 () Bool)

(declare-fun tp!925153 () Bool)

(declare-fun tp!925154 () Bool)

(assert (=> b!2884518 (= e!1824314 (and tp!925153 tp!925154))))

(assert (=> b!2884136 (= tp!925095 e!1824314)))

(declare-fun b!2884516 () Bool)

(declare-fun tp!925150 () Bool)

(declare-fun tp!925152 () Bool)

(assert (=> b!2884516 (= e!1824314 (and tp!925150 tp!925152))))

(declare-fun b!2884515 () Bool)

(assert (=> b!2884515 (= e!1824314 tp_is_empty!15197)))

(declare-fun b!2884517 () Bool)

(declare-fun tp!925151 () Bool)

(assert (=> b!2884517 (= e!1824314 tp!925151)))

(assert (= (and b!2884136 ((_ is ElementMatch!8805) (regOne!18123 r!23079))) b!2884515))

(assert (= (and b!2884136 ((_ is Concat!14126) (regOne!18123 r!23079))) b!2884516))

(assert (= (and b!2884136 ((_ is Star!8805) (regOne!18123 r!23079))) b!2884517))

(assert (= (and b!2884136 ((_ is Union!8805) (regOne!18123 r!23079))) b!2884518))

(declare-fun b!2884522 () Bool)

(declare-fun e!1824315 () Bool)

(declare-fun tp!925158 () Bool)

(declare-fun tp!925159 () Bool)

(assert (=> b!2884522 (= e!1824315 (and tp!925158 tp!925159))))

(assert (=> b!2884136 (= tp!925096 e!1824315)))

(declare-fun b!2884520 () Bool)

(declare-fun tp!925155 () Bool)

(declare-fun tp!925157 () Bool)

(assert (=> b!2884520 (= e!1824315 (and tp!925155 tp!925157))))

(declare-fun b!2884519 () Bool)

(assert (=> b!2884519 (= e!1824315 tp_is_empty!15197)))

(declare-fun b!2884521 () Bool)

(declare-fun tp!925156 () Bool)

(assert (=> b!2884521 (= e!1824315 tp!925156)))

(assert (= (and b!2884136 ((_ is ElementMatch!8805) (regTwo!18123 r!23079))) b!2884519))

(assert (= (and b!2884136 ((_ is Concat!14126) (regTwo!18123 r!23079))) b!2884520))

(assert (= (and b!2884136 ((_ is Star!8805) (regTwo!18123 r!23079))) b!2884521))

(assert (= (and b!2884136 ((_ is Union!8805) (regTwo!18123 r!23079))) b!2884522))

(declare-fun b!2884526 () Bool)

(declare-fun e!1824316 () Bool)

(declare-fun tp!925163 () Bool)

(declare-fun tp!925164 () Bool)

(assert (=> b!2884526 (= e!1824316 (and tp!925163 tp!925164))))

(assert (=> b!2884138 (= tp!925097 e!1824316)))

(declare-fun b!2884524 () Bool)

(declare-fun tp!925160 () Bool)

(declare-fun tp!925162 () Bool)

(assert (=> b!2884524 (= e!1824316 (and tp!925160 tp!925162))))

(declare-fun b!2884523 () Bool)

(assert (=> b!2884523 (= e!1824316 tp_is_empty!15197)))

(declare-fun b!2884525 () Bool)

(declare-fun tp!925161 () Bool)

(assert (=> b!2884525 (= e!1824316 tp!925161)))

(assert (= (and b!2884138 ((_ is ElementMatch!8805) (regOne!18122 r!23079))) b!2884523))

(assert (= (and b!2884138 ((_ is Concat!14126) (regOne!18122 r!23079))) b!2884524))

(assert (= (and b!2884138 ((_ is Star!8805) (regOne!18122 r!23079))) b!2884525))

(assert (= (and b!2884138 ((_ is Union!8805) (regOne!18122 r!23079))) b!2884526))

(declare-fun b!2884530 () Bool)

(declare-fun e!1824317 () Bool)

(declare-fun tp!925168 () Bool)

(declare-fun tp!925169 () Bool)

(assert (=> b!2884530 (= e!1824317 (and tp!925168 tp!925169))))

(assert (=> b!2884138 (= tp!925098 e!1824317)))

(declare-fun b!2884528 () Bool)

(declare-fun tp!925165 () Bool)

(declare-fun tp!925167 () Bool)

(assert (=> b!2884528 (= e!1824317 (and tp!925165 tp!925167))))

(declare-fun b!2884527 () Bool)

(assert (=> b!2884527 (= e!1824317 tp_is_empty!15197)))

(declare-fun b!2884529 () Bool)

(declare-fun tp!925166 () Bool)

(assert (=> b!2884529 (= e!1824317 tp!925166)))

(assert (= (and b!2884138 ((_ is ElementMatch!8805) (regTwo!18122 r!23079))) b!2884527))

(assert (= (and b!2884138 ((_ is Concat!14126) (regTwo!18122 r!23079))) b!2884528))

(assert (= (and b!2884138 ((_ is Star!8805) (regTwo!18122 r!23079))) b!2884529))

(assert (= (and b!2884138 ((_ is Union!8805) (regTwo!18122 r!23079))) b!2884530))

(check-sat (not bm!186996) (not b!2884439) (not b!2884377) (not b!2884524) (not d!833806) (not d!833820) (not b!2884526) (not d!833778) (not b!2884522) (not b!2884514) (not b!2884386) (not b!2884393) (not b!2884390) (not b!2884297) (not bm!186977) (not bm!187002) (not bm!186978) (not b!2884379) (not b!2884517) (not b!2884391) (not b!2884370) (not b!2884528) (not b!2884372) (not b!2884513) (not b!2884429) (not b!2884512) (not b!2884430) (not d!833808) (not b!2884384) (not b!2884432) (not b!2884525) tp_is_empty!15197 (not b!2884521) (not b!2884529) (not d!833796) (not b!2884436) (not b!2884239) (not bm!186974) (not bm!186989) (not b!2884209) (not bm!186987) (not b!2884383) (not bm!186997) (not b!2884516) (not b!2884369) (not b!2884518) (not d!833818) (not b!2884437) (not b!2884480) (not bm!186975) (not b!2884520) (not b!2884530) (not b!2884376))
(check-sat)
