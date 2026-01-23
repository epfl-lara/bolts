; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279310 () Bool)

(assert start!279310)

(declare-fun bs!521102 () Bool)

(declare-fun b!2865026 () Bool)

(declare-fun b!2865030 () Bool)

(assert (= bs!521102 (and b!2865026 b!2865030)))

(declare-fun lambda!106281 () Int)

(declare-fun lambda!106280 () Int)

(assert (=> bs!521102 (not (= lambda!106281 lambda!106280))))

(declare-fun e!1813740 () Bool)

(declare-fun e!1813741 () Bool)

(assert (=> b!2865026 (= e!1813740 (not e!1813741))))

(declare-fun res!1189469 () Bool)

(assert (=> b!2865026 (=> res!1189469 e!1813741)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17540 0))(
  ( (C!17541 (val!10804 Int)) )
))
(declare-datatypes ((Regex!8679 0))(
  ( (ElementMatch!8679 (c!462250 C!17540)) (Concat!14000 (regOne!17870 Regex!8679) (regTwo!17870 Regex!8679)) (EmptyExpr!8679) (Star!8679 (reg!9008 Regex!8679)) (EmptyLang!8679) (Union!8679 (regOne!17871 Regex!8679) (regTwo!17871 Regex!8679)) )
))
(declare-datatypes ((List!34368 0))(
  ( (Nil!34244) (Cons!34244 (h!39664 Regex!8679) (t!233411 List!34368)) )
))
(declare-datatypes ((Context!5278 0))(
  ( (Context!5279 (exprs!3139 List!34368)) )
))
(declare-fun z!691 () (InoxSet Context!5278))

(declare-fun exists!1100 ((InoxSet Context!5278) Int) Bool)

(assert (=> b!2865026 (= res!1189469 (not (exists!1100 z!691 lambda!106281)))))

(declare-datatypes ((List!34369 0))(
  ( (Nil!34245) (Cons!34245 (h!39665 Context!5278) (t!233412 List!34369)) )
))
(declare-fun lt!1015970 () List!34369)

(declare-fun exists!1101 (List!34369 Int) Bool)

(assert (=> b!2865026 (exists!1101 lt!1015970 lambda!106281)))

(declare-datatypes ((Unit!47885 0))(
  ( (Unit!47886) )
))
(declare-fun lt!1015972 () Unit!47885)

(declare-fun lemmaNotForallThenExists!147 (List!34369 Int) Unit!47885)

(assert (=> b!2865026 (= lt!1015972 (lemmaNotForallThenExists!147 lt!1015970 lambda!106280))))

(declare-fun toList!2008 ((InoxSet Context!5278)) List!34369)

(assert (=> b!2865026 (= lt!1015970 (toList!2008 z!691))))

(declare-fun setNonEmpty!25649 () Bool)

(declare-fun setElem!25649 () Context!5278)

(declare-fun e!1813739 () Bool)

(declare-fun setRes!25649 () Bool)

(declare-fun tp!922698 () Bool)

(declare-fun inv!46284 (Context!5278) Bool)

(assert (=> setNonEmpty!25649 (= setRes!25649 (and tp!922698 (inv!46284 setElem!25649) e!1813739))))

(declare-fun setRest!25649 () (InoxSet Context!5278))

(assert (=> setNonEmpty!25649 (= z!691 ((_ map or) (store ((as const (Array Context!5278 Bool)) false) setElem!25649 true) setRest!25649))))

(declare-fun b!2865027 () Bool)

(declare-fun lt!1015971 () Context!5278)

(assert (=> b!2865027 (= e!1813741 (select z!691 lt!1015971))))

(declare-datatypes ((List!34370 0))(
  ( (Nil!34246) (Cons!34246 (h!39666 C!17540) (t!233413 List!34370)) )
))
(declare-fun matchZipper!453 ((InoxSet Context!5278) List!34370) Bool)

(declare-datatypes ((Option!6358 0))(
  ( (None!6357) (Some!6357 (v!34479 List!34370)) )
))
(declare-fun get!10271 (Option!6358) List!34370)

(declare-fun getLanguageWitness!318 (Context!5278) Option!6358)

(assert (=> b!2865027 (matchZipper!453 (store ((as const (Array Context!5278 Bool)) false) lt!1015971 true) (get!10271 (getLanguageWitness!318 lt!1015971)))))

(declare-fun lt!1015969 () Unit!47885)

(declare-fun lemmaGetWitnessMatchesContext!12 (Context!5278) Unit!47885)

(assert (=> b!2865027 (= lt!1015969 (lemmaGetWitnessMatchesContext!12 lt!1015971))))

(declare-fun getWitness!607 ((InoxSet Context!5278) Int) Context!5278)

(assert (=> b!2865027 (= lt!1015971 (getWitness!607 z!691 lambda!106281))))

(declare-fun b!2865028 () Bool)

(declare-fun res!1189467 () Bool)

(assert (=> b!2865028 (=> (not res!1189467) (not e!1813740))))

(declare-fun isDefined!4978 (Option!6358) Bool)

(declare-fun getLanguageWitness!319 ((InoxSet Context!5278)) Option!6358)

(assert (=> b!2865028 (= res!1189467 (isDefined!4978 (getLanguageWitness!319 z!691)))))

(declare-fun res!1189470 () Bool)

(assert (=> start!279310 (=> (not res!1189470) (not e!1813740))))

(declare-fun lostCauseZipper!583 ((InoxSet Context!5278)) Bool)

(assert (=> start!279310 (= res!1189470 (not (lostCauseZipper!583 z!691)))))

(assert (=> start!279310 e!1813740))

(declare-fun condSetEmpty!25649 () Bool)

(assert (=> start!279310 (= condSetEmpty!25649 (= z!691 ((as const (Array Context!5278 Bool)) false)))))

(assert (=> start!279310 setRes!25649))

(declare-fun setIsEmpty!25649 () Bool)

(assert (=> setIsEmpty!25649 setRes!25649))

(declare-fun b!2865029 () Bool)

(declare-fun tp!922697 () Bool)

(assert (=> b!2865029 (= e!1813739 tp!922697)))

(declare-fun res!1189468 () Bool)

(assert (=> b!2865030 (=> (not res!1189468) (not e!1813740))))

(declare-fun forall!7028 ((InoxSet Context!5278) Int) Bool)

(assert (=> b!2865030 (= res!1189468 (not (forall!7028 z!691 lambda!106280)))))

(assert (= (and start!279310 res!1189470) b!2865028))

(assert (= (and b!2865028 res!1189467) b!2865030))

(assert (= (and b!2865030 res!1189468) b!2865026))

(assert (= (and b!2865026 (not res!1189469)) b!2865027))

(assert (= (and start!279310 condSetEmpty!25649) setIsEmpty!25649))

(assert (= (and start!279310 (not condSetEmpty!25649)) setNonEmpty!25649))

(assert (= setNonEmpty!25649 b!2865029))

(declare-fun m!3285031 () Bool)

(assert (=> setNonEmpty!25649 m!3285031))

(declare-fun m!3285033 () Bool)

(assert (=> b!2865030 m!3285033))

(declare-fun m!3285035 () Bool)

(assert (=> b!2865027 m!3285035))

(declare-fun m!3285037 () Bool)

(assert (=> b!2865027 m!3285037))

(declare-fun m!3285039 () Bool)

(assert (=> b!2865027 m!3285039))

(assert (=> b!2865027 m!3285039))

(declare-fun m!3285041 () Bool)

(assert (=> b!2865027 m!3285041))

(declare-fun m!3285043 () Bool)

(assert (=> b!2865027 m!3285043))

(declare-fun m!3285045 () Bool)

(assert (=> b!2865027 m!3285045))

(assert (=> b!2865027 m!3285035))

(assert (=> b!2865027 m!3285041))

(declare-fun m!3285047 () Bool)

(assert (=> b!2865027 m!3285047))

(declare-fun m!3285049 () Bool)

(assert (=> b!2865026 m!3285049))

(declare-fun m!3285051 () Bool)

(assert (=> b!2865026 m!3285051))

(declare-fun m!3285053 () Bool)

(assert (=> b!2865026 m!3285053))

(declare-fun m!3285055 () Bool)

(assert (=> b!2865026 m!3285055))

(declare-fun m!3285057 () Bool)

(assert (=> start!279310 m!3285057))

(declare-fun m!3285059 () Bool)

(assert (=> b!2865028 m!3285059))

(assert (=> b!2865028 m!3285059))

(declare-fun m!3285061 () Bool)

(assert (=> b!2865028 m!3285061))

(check-sat (not setNonEmpty!25649) (not b!2865030) (not start!279310) (not b!2865028) (not b!2865027) (not b!2865026) (not b!2865029))
(check-sat)
(get-model)

(declare-fun d!828359 () Bool)

(declare-fun lt!1015987 () Option!6358)

(declare-fun lambda!106294 () Int)

(declare-fun isEmpty!18662 (Option!6358) Bool)

(declare-fun exists!1102 (List!34368 Int) Bool)

(assert (=> d!828359 (= (isEmpty!18662 lt!1015987) (exists!1102 (exprs!3139 lt!1015971) lambda!106294))))

(declare-fun e!1813754 () Option!6358)

(assert (=> d!828359 (= lt!1015987 e!1813754)))

(declare-fun c!462269 () Bool)

(get-info :version)

(assert (=> d!828359 (= c!462269 ((_ is Cons!34244) (exprs!3139 lt!1015971)))))

(assert (=> d!828359 (= (getLanguageWitness!318 lt!1015971) lt!1015987)))

(declare-fun b!2865052 () Bool)

(declare-fun e!1813756 () Option!6358)

(assert (=> b!2865052 (= e!1813756 None!6357)))

(declare-fun b!2865053 () Bool)

(declare-fun c!462268 () Bool)

(declare-fun lt!1015986 () Option!6358)

(assert (=> b!2865053 (= c!462268 ((_ is Some!6357) lt!1015986))))

(assert (=> b!2865053 (= lt!1015986 (getLanguageWitness!318 (Context!5279 (t!233411 (exprs!3139 lt!1015971)))))))

(declare-fun e!1813755 () Option!6358)

(assert (=> b!2865053 (= e!1813756 e!1813755)))

(declare-fun b!2865054 () Bool)

(declare-fun lt!1015985 () Option!6358)

(declare-fun ++!8142 (List!34370 List!34370) List!34370)

(assert (=> b!2865054 (= e!1813755 (Some!6357 (++!8142 (v!34479 lt!1015985) (v!34479 lt!1015986))))))

(declare-fun b!2865055 () Bool)

(assert (=> b!2865055 (= e!1813754 e!1813756)))

(declare-fun getLanguageWitness!321 (Regex!8679) Option!6358)

(assert (=> b!2865055 (= lt!1015985 (getLanguageWitness!321 (h!39664 (exprs!3139 lt!1015971))))))

(declare-fun c!462267 () Bool)

(assert (=> b!2865055 (= c!462267 ((_ is Some!6357) lt!1015985))))

(declare-fun b!2865056 () Bool)

(assert (=> b!2865056 (= e!1813754 (Some!6357 Nil!34246))))

(declare-fun b!2865057 () Bool)

(assert (=> b!2865057 (= e!1813755 None!6357)))

(assert (= (and d!828359 c!462269) b!2865055))

(assert (= (and d!828359 (not c!462269)) b!2865056))

(assert (= (and b!2865055 c!462267) b!2865053))

(assert (= (and b!2865055 (not c!462267)) b!2865052))

(assert (= (and b!2865053 c!462268) b!2865054))

(assert (= (and b!2865053 (not c!462268)) b!2865057))

(declare-fun m!3285081 () Bool)

(assert (=> d!828359 m!3285081))

(declare-fun m!3285083 () Bool)

(assert (=> d!828359 m!3285083))

(declare-fun m!3285085 () Bool)

(assert (=> b!2865053 m!3285085))

(declare-fun m!3285087 () Bool)

(assert (=> b!2865054 m!3285087))

(declare-fun m!3285089 () Bool)

(assert (=> b!2865055 m!3285089))

(assert (=> b!2865027 d!828359))

(declare-fun d!828367 () Bool)

(assert (=> d!828367 (matchZipper!453 (store ((as const (Array Context!5278 Bool)) false) lt!1015971 true) (get!10271 (getLanguageWitness!318 lt!1015971)))))

(declare-fun lt!1015990 () Unit!47885)

(declare-fun choose!16909 (Context!5278) Unit!47885)

(assert (=> d!828367 (= lt!1015990 (choose!16909 lt!1015971))))

(declare-fun lostCause!773 (Context!5278) Bool)

(assert (=> d!828367 (not (lostCause!773 lt!1015971))))

(assert (=> d!828367 (= (lemmaGetWitnessMatchesContext!12 lt!1015971) lt!1015990)))

(declare-fun bs!521107 () Bool)

(assert (= bs!521107 d!828367))

(assert (=> bs!521107 m!3285039))

(declare-fun m!3285091 () Bool)

(assert (=> bs!521107 m!3285091))

(declare-fun m!3285093 () Bool)

(assert (=> bs!521107 m!3285093))

(assert (=> bs!521107 m!3285035))

(assert (=> bs!521107 m!3285041))

(assert (=> bs!521107 m!3285047))

(assert (=> bs!521107 m!3285039))

(assert (=> bs!521107 m!3285041))

(assert (=> bs!521107 m!3285035))

(assert (=> b!2865027 d!828367))

(declare-fun d!828369 () Bool)

(assert (=> d!828369 (= (get!10271 (getLanguageWitness!318 lt!1015971)) (v!34479 (getLanguageWitness!318 lt!1015971)))))

(assert (=> b!2865027 d!828369))

(declare-fun d!828371 () Bool)

(declare-fun e!1813768 () Bool)

(assert (=> d!828371 e!1813768))

(declare-fun res!1189476 () Bool)

(assert (=> d!828371 (=> (not res!1189476) (not e!1813768))))

(declare-fun lt!1016002 () Context!5278)

(declare-fun dynLambda!14274 (Int Context!5278) Bool)

(assert (=> d!828371 (= res!1189476 (dynLambda!14274 lambda!106281 lt!1016002))))

(declare-fun getWitness!609 (List!34369 Int) Context!5278)

(assert (=> d!828371 (= lt!1016002 (getWitness!609 (toList!2008 z!691) lambda!106281))))

(assert (=> d!828371 (exists!1100 z!691 lambda!106281)))

(assert (=> d!828371 (= (getWitness!607 z!691 lambda!106281) lt!1016002)))

(declare-fun b!2865078 () Bool)

(assert (=> b!2865078 (= e!1813768 (select z!691 lt!1016002))))

(assert (= (and d!828371 res!1189476) b!2865078))

(declare-fun b_lambda!85905 () Bool)

(assert (=> (not b_lambda!85905) (not d!828371)))

(declare-fun m!3285095 () Bool)

(assert (=> d!828371 m!3285095))

(assert (=> d!828371 m!3285055))

(assert (=> d!828371 m!3285055))

(declare-fun m!3285099 () Bool)

(assert (=> d!828371 m!3285099))

(assert (=> d!828371 m!3285049))

(declare-fun m!3285105 () Bool)

(assert (=> b!2865078 m!3285105))

(assert (=> b!2865027 d!828371))

(declare-fun d!828373 () Bool)

(declare-fun c!462285 () Bool)

(declare-fun isEmpty!18664 (List!34370) Bool)

(assert (=> d!828373 (= c!462285 (isEmpty!18664 (get!10271 (getLanguageWitness!318 lt!1015971))))))

(declare-fun e!1813773 () Bool)

(assert (=> d!828373 (= (matchZipper!453 (store ((as const (Array Context!5278 Bool)) false) lt!1015971 true) (get!10271 (getLanguageWitness!318 lt!1015971))) e!1813773)))

(declare-fun b!2865087 () Bool)

(declare-fun nullableZipper!700 ((InoxSet Context!5278)) Bool)

(assert (=> b!2865087 (= e!1813773 (nullableZipper!700 (store ((as const (Array Context!5278 Bool)) false) lt!1015971 true)))))

(declare-fun b!2865088 () Bool)

(declare-fun derivationStepZipper!456 ((InoxSet Context!5278) C!17540) (InoxSet Context!5278))

(declare-fun head!6321 (List!34370) C!17540)

(declare-fun tail!4546 (List!34370) List!34370)

(assert (=> b!2865088 (= e!1813773 (matchZipper!453 (derivationStepZipper!456 (store ((as const (Array Context!5278 Bool)) false) lt!1015971 true) (head!6321 (get!10271 (getLanguageWitness!318 lt!1015971)))) (tail!4546 (get!10271 (getLanguageWitness!318 lt!1015971)))))))

(assert (= (and d!828373 c!462285) b!2865087))

(assert (= (and d!828373 (not c!462285)) b!2865088))

(assert (=> d!828373 m!3285041))

(declare-fun m!3285111 () Bool)

(assert (=> d!828373 m!3285111))

(assert (=> b!2865087 m!3285035))

(declare-fun m!3285113 () Bool)

(assert (=> b!2865087 m!3285113))

(assert (=> b!2865088 m!3285041))

(declare-fun m!3285115 () Bool)

(assert (=> b!2865088 m!3285115))

(assert (=> b!2865088 m!3285035))

(assert (=> b!2865088 m!3285115))

(declare-fun m!3285117 () Bool)

(assert (=> b!2865088 m!3285117))

(assert (=> b!2865088 m!3285041))

(declare-fun m!3285119 () Bool)

(assert (=> b!2865088 m!3285119))

(assert (=> b!2865088 m!3285117))

(assert (=> b!2865088 m!3285119))

(declare-fun m!3285123 () Bool)

(assert (=> b!2865088 m!3285123))

(assert (=> b!2865027 d!828373))

(declare-fun d!828377 () Bool)

(assert (=> d!828377 (= (isDefined!4978 (getLanguageWitness!319 z!691)) (not (isEmpty!18662 (getLanguageWitness!319 z!691))))))

(declare-fun bs!521109 () Bool)

(assert (= bs!521109 d!828377))

(assert (=> bs!521109 m!3285059))

(declare-fun m!3285135 () Bool)

(assert (=> bs!521109 m!3285135))

(assert (=> b!2865028 d!828377))

(declare-fun bs!521111 () Bool)

(declare-fun d!828381 () Bool)

(assert (= bs!521111 (and d!828381 b!2865030)))

(declare-fun lambda!106304 () Int)

(assert (=> bs!521111 (not (= lambda!106304 lambda!106280))))

(declare-fun bs!521112 () Bool)

(assert (= bs!521112 (and d!828381 b!2865026)))

(assert (=> bs!521112 (= lambda!106304 lambda!106281)))

(declare-fun lt!1016008 () Option!6358)

(assert (=> d!828381 (= (isDefined!4978 lt!1016008) (exists!1100 z!691 lambda!106304))))

(declare-fun e!1813777 () Option!6358)

(assert (=> d!828381 (= lt!1016008 e!1813777)))

(declare-fun c!462296 () Bool)

(assert (=> d!828381 (= c!462296 (exists!1100 z!691 lambda!106304))))

(assert (=> d!828381 (= (getLanguageWitness!319 z!691) lt!1016008)))

(declare-fun b!2865095 () Bool)

(assert (=> b!2865095 (= e!1813777 (getLanguageWitness!318 (getWitness!607 z!691 lambda!106304)))))

(declare-fun b!2865096 () Bool)

(assert (=> b!2865096 (= e!1813777 None!6357)))

(assert (= (and d!828381 c!462296) b!2865095))

(assert (= (and d!828381 (not c!462296)) b!2865096))

(declare-fun m!3285141 () Bool)

(assert (=> d!828381 m!3285141))

(declare-fun m!3285143 () Bool)

(assert (=> d!828381 m!3285143))

(assert (=> d!828381 m!3285143))

(declare-fun m!3285145 () Bool)

(assert (=> b!2865095 m!3285145))

(assert (=> b!2865095 m!3285145))

(declare-fun m!3285147 () Bool)

(assert (=> b!2865095 m!3285147))

(assert (=> b!2865028 d!828381))

(declare-fun d!828387 () Bool)

(declare-fun lt!1016014 () Bool)

(assert (=> d!828387 (= lt!1016014 (exists!1101 (toList!2008 z!691) lambda!106281))))

(declare-fun choose!16914 ((InoxSet Context!5278) Int) Bool)

(assert (=> d!828387 (= lt!1016014 (choose!16914 z!691 lambda!106281))))

(assert (=> d!828387 (= (exists!1100 z!691 lambda!106281) lt!1016014)))

(declare-fun bs!521114 () Bool)

(assert (= bs!521114 d!828387))

(assert (=> bs!521114 m!3285055))

(assert (=> bs!521114 m!3285055))

(declare-fun m!3285153 () Bool)

(assert (=> bs!521114 m!3285153))

(declare-fun m!3285155 () Bool)

(assert (=> bs!521114 m!3285155))

(assert (=> b!2865026 d!828387))

(declare-fun bs!521119 () Bool)

(declare-fun d!828391 () Bool)

(assert (= bs!521119 (and d!828391 b!2865030)))

(declare-fun lambda!106310 () Int)

(assert (=> bs!521119 (not (= lambda!106310 lambda!106280))))

(declare-fun bs!521120 () Bool)

(assert (= bs!521120 (and d!828391 b!2865026)))

(assert (=> bs!521120 (not (= lambda!106310 lambda!106281))))

(declare-fun bs!521121 () Bool)

(assert (= bs!521121 (and d!828391 d!828381)))

(assert (=> bs!521121 (not (= lambda!106310 lambda!106304))))

(assert (=> d!828391 true))

(declare-fun order!18091 () Int)

(declare-fun dynLambda!14276 (Int Int) Int)

(assert (=> d!828391 (< (dynLambda!14276 order!18091 lambda!106281) (dynLambda!14276 order!18091 lambda!106310))))

(declare-fun forall!7031 (List!34369 Int) Bool)

(assert (=> d!828391 (= (exists!1101 lt!1015970 lambda!106281) (not (forall!7031 lt!1015970 lambda!106310)))))

(declare-fun bs!521122 () Bool)

(assert (= bs!521122 d!828391))

(declare-fun m!3285159 () Bool)

(assert (=> bs!521122 m!3285159))

(assert (=> b!2865026 d!828391))

(declare-fun bs!521128 () Bool)

(declare-fun d!828395 () Bool)

(assert (= bs!521128 (and d!828395 b!2865030)))

(declare-fun lambda!106316 () Int)

(assert (=> bs!521128 (not (= lambda!106316 lambda!106280))))

(declare-fun bs!521129 () Bool)

(assert (= bs!521129 (and d!828395 b!2865026)))

(assert (=> bs!521129 (not (= lambda!106316 lambda!106281))))

(declare-fun bs!521130 () Bool)

(assert (= bs!521130 (and d!828395 d!828381)))

(assert (=> bs!521130 (not (= lambda!106316 lambda!106304))))

(declare-fun bs!521131 () Bool)

(assert (= bs!521131 (and d!828395 d!828391)))

(assert (=> bs!521131 (= (= lambda!106280 lambda!106281) (= lambda!106316 lambda!106310))))

(assert (=> d!828395 true))

(assert (=> d!828395 (< (dynLambda!14276 order!18091 lambda!106280) (dynLambda!14276 order!18091 lambda!106316))))

(assert (=> d!828395 (exists!1101 lt!1015970 lambda!106316)))

(declare-fun lt!1016020 () Unit!47885)

(declare-fun choose!16916 (List!34369 Int) Unit!47885)

(assert (=> d!828395 (= lt!1016020 (choose!16916 lt!1015970 lambda!106280))))

(assert (=> d!828395 (not (forall!7031 lt!1015970 lambda!106280))))

(assert (=> d!828395 (= (lemmaNotForallThenExists!147 lt!1015970 lambda!106280) lt!1016020)))

(declare-fun bs!521132 () Bool)

(assert (= bs!521132 d!828395))

(declare-fun m!3285167 () Bool)

(assert (=> bs!521132 m!3285167))

(declare-fun m!3285169 () Bool)

(assert (=> bs!521132 m!3285169))

(declare-fun m!3285171 () Bool)

(assert (=> bs!521132 m!3285171))

(assert (=> b!2865026 d!828395))

(declare-fun d!828399 () Bool)

(declare-fun e!1813787 () Bool)

(assert (=> d!828399 e!1813787))

(declare-fun res!1189482 () Bool)

(assert (=> d!828399 (=> (not res!1189482) (not e!1813787))))

(declare-fun lt!1016026 () List!34369)

(declare-fun noDuplicate!573 (List!34369) Bool)

(assert (=> d!828399 (= res!1189482 (noDuplicate!573 lt!1016026))))

(declare-fun choose!16917 ((InoxSet Context!5278)) List!34369)

(assert (=> d!828399 (= lt!1016026 (choose!16917 z!691))))

(assert (=> d!828399 (= (toList!2008 z!691) lt!1016026)))

(declare-fun b!2865106 () Bool)

(declare-fun content!4676 (List!34369) (InoxSet Context!5278))

(assert (=> b!2865106 (= e!1813787 (= (content!4676 lt!1016026) z!691))))

(assert (= (and d!828399 res!1189482) b!2865106))

(declare-fun m!3285179 () Bool)

(assert (=> d!828399 m!3285179))

(declare-fun m!3285181 () Bool)

(assert (=> d!828399 m!3285181))

(declare-fun m!3285183 () Bool)

(assert (=> b!2865106 m!3285183))

(assert (=> b!2865026 d!828399))

(declare-fun bs!521133 () Bool)

(declare-fun d!828403 () Bool)

(assert (= bs!521133 (and d!828403 d!828359)))

(declare-fun lambda!106319 () Int)

(assert (=> bs!521133 (not (= lambda!106319 lambda!106294))))

(declare-fun forall!7032 (List!34368 Int) Bool)

(assert (=> d!828403 (= (inv!46284 setElem!25649) (forall!7032 (exprs!3139 setElem!25649) lambda!106319))))

(declare-fun bs!521134 () Bool)

(assert (= bs!521134 d!828403))

(declare-fun m!3285185 () Bool)

(assert (=> bs!521134 m!3285185))

(assert (=> setNonEmpty!25649 d!828403))

(declare-fun bs!521154 () Bool)

(declare-fun d!828405 () Bool)

(assert (= bs!521154 (and d!828405 d!828391)))

(declare-fun lambda!106347 () Int)

(assert (=> bs!521154 (not (= lambda!106347 lambda!106310))))

(declare-fun bs!521155 () Bool)

(assert (= bs!521155 (and d!828405 d!828395)))

(assert (=> bs!521155 (not (= lambda!106347 lambda!106316))))

(declare-fun bs!521156 () Bool)

(assert (= bs!521156 (and d!828405 b!2865026)))

(assert (=> bs!521156 (not (= lambda!106347 lambda!106281))))

(declare-fun bs!521157 () Bool)

(assert (= bs!521157 (and d!828405 d!828381)))

(assert (=> bs!521157 (not (= lambda!106347 lambda!106304))))

(declare-fun bs!521158 () Bool)

(assert (= bs!521158 (and d!828405 b!2865030)))

(assert (=> bs!521158 (= lambda!106347 lambda!106280)))

(declare-fun bs!521159 () Bool)

(declare-fun b!2865121 () Bool)

(assert (= bs!521159 (and b!2865121 d!828391)))

(declare-fun lambda!106348 () Int)

(assert (=> bs!521159 (not (= lambda!106348 lambda!106310))))

(declare-fun bs!521160 () Bool)

(assert (= bs!521160 (and b!2865121 d!828395)))

(assert (=> bs!521160 (not (= lambda!106348 lambda!106316))))

(declare-fun bs!521161 () Bool)

(assert (= bs!521161 (and b!2865121 d!828405)))

(assert (=> bs!521161 (not (= lambda!106348 lambda!106347))))

(declare-fun bs!521162 () Bool)

(assert (= bs!521162 (and b!2865121 b!2865026)))

(assert (=> bs!521162 (= lambda!106348 lambda!106281)))

(declare-fun bs!521163 () Bool)

(assert (= bs!521163 (and b!2865121 d!828381)))

(assert (=> bs!521163 (= lambda!106348 lambda!106304)))

(declare-fun bs!521164 () Bool)

(assert (= bs!521164 (and b!2865121 b!2865030)))

(assert (=> bs!521164 (not (= lambda!106348 lambda!106280))))

(declare-fun bs!521166 () Bool)

(declare-fun b!2865122 () Bool)

(assert (= bs!521166 (and b!2865122 d!828391)))

(declare-fun lambda!106349 () Int)

(assert (=> bs!521166 (not (= lambda!106349 lambda!106310))))

(declare-fun bs!521167 () Bool)

(assert (= bs!521167 (and b!2865122 d!828395)))

(assert (=> bs!521167 (not (= lambda!106349 lambda!106316))))

(declare-fun bs!521168 () Bool)

(assert (= bs!521168 (and b!2865122 d!828405)))

(assert (=> bs!521168 (not (= lambda!106349 lambda!106347))))

(declare-fun bs!521169 () Bool)

(assert (= bs!521169 (and b!2865122 b!2865026)))

(assert (=> bs!521169 (= lambda!106349 lambda!106281)))

(declare-fun bs!521170 () Bool)

(assert (= bs!521170 (and b!2865122 d!828381)))

(assert (=> bs!521170 (= lambda!106349 lambda!106304)))

(declare-fun bs!521171 () Bool)

(assert (= bs!521171 (and b!2865122 b!2865121)))

(assert (=> bs!521171 (= lambda!106349 lambda!106348)))

(declare-fun bs!521172 () Bool)

(assert (= bs!521172 (and b!2865122 b!2865030)))

(assert (=> bs!521172 (not (= lambda!106349 lambda!106280))))

(declare-fun lt!1016074 () Bool)

(assert (=> d!828405 (= lt!1016074 (isEmpty!18662 (getLanguageWitness!319 z!691)))))

(assert (=> d!828405 (= lt!1016074 (forall!7028 z!691 lambda!106347))))

(declare-fun lt!1016075 () Unit!47885)

(declare-fun e!1813803 () Unit!47885)

(assert (=> d!828405 (= lt!1016075 e!1813803)))

(declare-fun c!462318 () Bool)

(assert (=> d!828405 (= c!462318 (not (forall!7028 z!691 lambda!106347)))))

(assert (=> d!828405 (= (lostCauseZipper!583 z!691) lt!1016074)))

(declare-fun Unit!47889 () Unit!47885)

(assert (=> b!2865121 (= e!1813803 Unit!47889)))

(declare-fun lt!1016071 () List!34369)

(declare-fun call!184835 () List!34369)

(assert (=> b!2865121 (= lt!1016071 call!184835)))

(declare-fun lt!1016070 () Unit!47885)

(assert (=> b!2865121 (= lt!1016070 (lemmaNotForallThenExists!147 lt!1016071 lambda!106347))))

(declare-fun call!184836 () Bool)

(assert (=> b!2865121 call!184836))

(declare-fun lt!1016076 () Unit!47885)

(assert (=> b!2865121 (= lt!1016076 lt!1016070)))

(declare-fun Unit!47890 () Unit!47885)

(assert (=> b!2865122 (= e!1813803 Unit!47890)))

(declare-fun lt!1016072 () List!34369)

(assert (=> b!2865122 (= lt!1016072 call!184835)))

(declare-fun lt!1016073 () Unit!47885)

(declare-fun lemmaForallThenNotExists!135 (List!34369 Int) Unit!47885)

(assert (=> b!2865122 (= lt!1016073 (lemmaForallThenNotExists!135 lt!1016072 lambda!106347))))

(assert (=> b!2865122 (not call!184836)))

(declare-fun lt!1016077 () Unit!47885)

(assert (=> b!2865122 (= lt!1016077 lt!1016073)))

(declare-fun bm!184830 () Bool)

(assert (=> bm!184830 (= call!184835 (toList!2008 z!691))))

(declare-fun bm!184831 () Bool)

(assert (=> bm!184831 (= call!184836 (exists!1101 (ite c!462318 lt!1016071 lt!1016072) (ite c!462318 lambda!106348 lambda!106349)))))

(assert (= (and d!828405 c!462318) b!2865121))

(assert (= (and d!828405 (not c!462318)) b!2865122))

(assert (= (or b!2865121 b!2865122) bm!184830))

(assert (= (or b!2865121 b!2865122) bm!184831))

(declare-fun m!3285203 () Bool)

(assert (=> b!2865121 m!3285203))

(declare-fun m!3285205 () Bool)

(assert (=> bm!184831 m!3285205))

(declare-fun m!3285207 () Bool)

(assert (=> b!2865122 m!3285207))

(assert (=> bm!184830 m!3285055))

(assert (=> d!828405 m!3285059))

(assert (=> d!828405 m!3285059))

(assert (=> d!828405 m!3285135))

(declare-fun m!3285209 () Bool)

(assert (=> d!828405 m!3285209))

(assert (=> d!828405 m!3285209))

(assert (=> start!279310 d!828405))

(declare-fun d!828411 () Bool)

(declare-fun lt!1016080 () Bool)

(assert (=> d!828411 (= lt!1016080 (forall!7031 (toList!2008 z!691) lambda!106280))))

(declare-fun choose!16918 ((InoxSet Context!5278) Int) Bool)

(assert (=> d!828411 (= lt!1016080 (choose!16918 z!691 lambda!106280))))

(assert (=> d!828411 (= (forall!7028 z!691 lambda!106280) lt!1016080)))

(declare-fun bs!521173 () Bool)

(assert (= bs!521173 d!828411))

(assert (=> bs!521173 m!3285055))

(assert (=> bs!521173 m!3285055))

(declare-fun m!3285211 () Bool)

(assert (=> bs!521173 m!3285211))

(declare-fun m!3285213 () Bool)

(assert (=> bs!521173 m!3285213))

(assert (=> b!2865030 d!828411))

(declare-fun b!2865133 () Bool)

(declare-fun e!1813810 () Bool)

(declare-fun tp!922715 () Bool)

(declare-fun tp!922716 () Bool)

(assert (=> b!2865133 (= e!1813810 (and tp!922715 tp!922716))))

(assert (=> b!2865029 (= tp!922697 e!1813810)))

(assert (= (and b!2865029 ((_ is Cons!34244) (exprs!3139 setElem!25649))) b!2865133))

(declare-fun condSetEmpty!25655 () Bool)

(assert (=> setNonEmpty!25649 (= condSetEmpty!25655 (= setRest!25649 ((as const (Array Context!5278 Bool)) false)))))

(declare-fun setRes!25655 () Bool)

(assert (=> setNonEmpty!25649 (= tp!922698 setRes!25655)))

(declare-fun setIsEmpty!25655 () Bool)

(assert (=> setIsEmpty!25655 setRes!25655))

(declare-fun tp!922721 () Bool)

(declare-fun setNonEmpty!25655 () Bool)

(declare-fun setElem!25655 () Context!5278)

(declare-fun e!1813813 () Bool)

(assert (=> setNonEmpty!25655 (= setRes!25655 (and tp!922721 (inv!46284 setElem!25655) e!1813813))))

(declare-fun setRest!25655 () (InoxSet Context!5278))

(assert (=> setNonEmpty!25655 (= setRest!25649 ((_ map or) (store ((as const (Array Context!5278 Bool)) false) setElem!25655 true) setRest!25655))))

(declare-fun b!2865138 () Bool)

(declare-fun tp!922722 () Bool)

(assert (=> b!2865138 (= e!1813813 tp!922722)))

(assert (= (and setNonEmpty!25649 condSetEmpty!25655) setIsEmpty!25655))

(assert (= (and setNonEmpty!25649 (not condSetEmpty!25655)) setNonEmpty!25655))

(assert (= setNonEmpty!25655 b!2865138))

(declare-fun m!3285215 () Bool)

(assert (=> setNonEmpty!25655 m!3285215))

(declare-fun b_lambda!85909 () Bool)

(assert (= b_lambda!85905 (or b!2865026 b_lambda!85909)))

(declare-fun bs!521174 () Bool)

(declare-fun d!828413 () Bool)

(assert (= bs!521174 (and d!828413 b!2865026)))

(assert (=> bs!521174 (= (dynLambda!14274 lambda!106281 lt!1016002) (not (lostCause!773 lt!1016002)))))

(declare-fun m!3285217 () Bool)

(assert (=> bs!521174 m!3285217))

(assert (=> d!828371 d!828413))

(check-sat (not b!2865088) (not bm!184830) (not b!2865054) (not b!2865055) (not d!828387) (not d!828395) (not bm!184831) (not d!828367) (not b!2865122) (not d!828403) (not setNonEmpty!25655) (not d!828391) (not d!828373) (not b!2865121) (not b!2865138) (not d!828405) (not d!828377) (not d!828371) (not b!2865087) (not b_lambda!85909) (not d!828399) (not b!2865106) (not b!2865053) (not d!828381) (not bs!521174) (not b!2865095) (not d!828359) (not b!2865133) (not d!828411))
(check-sat)
