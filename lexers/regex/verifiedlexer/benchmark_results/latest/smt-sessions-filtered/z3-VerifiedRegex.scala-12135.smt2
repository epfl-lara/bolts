; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!682546 () Bool)

(assert start!682546)

(declare-fun b!7048289 () Bool)

(assert (=> b!7048289 true))

(declare-fun b!7048290 () Bool)

(assert (=> b!7048290 true))

(declare-fun b!7048286 () Bool)

(assert (=> b!7048286 true))

(declare-fun b!7048274 () Bool)

(declare-fun res!2877394 () Bool)

(declare-fun e!4237137 () Bool)

(assert (=> b!7048274 (=> res!2877394 e!4237137)))

(declare-datatypes ((C!35304 0))(
  ( (C!35305 (val!27354 Int)) )
))
(declare-datatypes ((Regex!17517 0))(
  ( (ElementMatch!17517 (c!1312641 C!35304)) (Concat!26362 (regOne!35546 Regex!17517) (regTwo!35546 Regex!17517)) (EmptyExpr!17517) (Star!17517 (reg!17846 Regex!17517)) (EmptyLang!17517) (Union!17517 (regOne!35547 Regex!17517) (regTwo!35547 Regex!17517)) )
))
(declare-datatypes ((List!68079 0))(
  ( (Nil!67955) (Cons!67955 (h!74403 Regex!17517) (t!381856 List!68079)) )
))
(declare-datatypes ((Context!13026 0))(
  ( (Context!13027 (exprs!7013 List!68079)) )
))
(declare-fun lt!2528249 () Context!13026)

(declare-fun isEmpty!39668 (List!68079) Bool)

(assert (=> b!7048274 (= res!2877394 (isEmpty!39668 (exprs!7013 lt!2528249)))))

(declare-fun b!7048275 () Bool)

(declare-fun e!4237148 () Bool)

(declare-fun tp!1938356 () Bool)

(assert (=> b!7048275 (= e!4237148 tp!1938356)))

(declare-fun b!7048276 () Bool)

(declare-fun e!4237139 () Bool)

(declare-fun e!4237143 () Bool)

(assert (=> b!7048276 (= e!4237139 e!4237143)))

(declare-fun res!2877402 () Bool)

(assert (=> b!7048276 (=> res!2877402 e!4237143)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2528240 () (InoxSet Context!13026))

(declare-datatypes ((List!68080 0))(
  ( (Nil!67956) (Cons!67956 (h!74404 C!35304) (t!381857 List!68080)) )
))
(declare-datatypes ((tuple2!68164 0))(
  ( (tuple2!68165 (_1!37385 List!68080) (_2!37385 List!68080)) )
))
(declare-fun lt!2528255 () tuple2!68164)

(declare-fun matchZipper!3057 ((InoxSet Context!13026) List!68080) Bool)

(assert (=> b!7048276 (= res!2877402 (not (matchZipper!3057 lt!2528240 (_1!37385 lt!2528255))))))

(declare-datatypes ((Option!16914 0))(
  ( (None!16913) (Some!16913 (v!53203 tuple2!68164)) )
))
(declare-fun lt!2528251 () Option!16914)

(declare-fun get!23823 (Option!16914) tuple2!68164)

(assert (=> b!7048276 (= lt!2528255 (get!23823 lt!2528251))))

(declare-fun isDefined!13615 (Option!16914) Bool)

(assert (=> b!7048276 (isDefined!13615 lt!2528251)))

(declare-fun lt!2528241 () (InoxSet Context!13026))

(declare-fun s!7408 () List!68080)

(declare-fun findConcatSeparationZippers!430 ((InoxSet Context!13026) (InoxSet Context!13026) List!68080 List!68080 List!68080) Option!16914)

(assert (=> b!7048276 (= lt!2528251 (findConcatSeparationZippers!430 lt!2528240 lt!2528241 Nil!67956 (t!381857 s!7408) (t!381857 s!7408)))))

(declare-fun ct2!306 () Context!13026)

(assert (=> b!7048276 (= lt!2528241 (store ((as const (Array Context!13026 Bool)) false) ct2!306 true))))

(declare-datatypes ((Unit!161720 0))(
  ( (Unit!161721) )
))
(declare-fun lt!2528239 () Unit!161720)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!418 ((InoxSet Context!13026) Context!13026 List!68080) Unit!161720)

(assert (=> b!7048276 (= lt!2528239 (lemmaConcatZipperMatchesStringThenFindConcatDefined!418 lt!2528240 ct2!306 (t!381857 s!7408)))))

(declare-fun lt!2528258 () (InoxSet Context!13026))

(declare-fun appendTo!638 ((InoxSet Context!13026) Context!13026) (InoxSet Context!13026))

(assert (=> b!7048276 (= lt!2528258 (appendTo!638 lt!2528240 ct2!306))))

(declare-fun lt!2528257 () Context!13026)

(declare-fun derivationStepZipperDown!2181 (Regex!17517 Context!13026 C!35304) (InoxSet Context!13026))

(assert (=> b!7048276 (= lt!2528240 (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) lt!2528257 (h!74404 s!7408)))))

(declare-fun lt!2528260 () Unit!161720)

(declare-fun lt!2528246 () List!68079)

(declare-fun lambda!418307 () Int)

(declare-fun lemmaConcatPreservesForall!838 (List!68079 List!68079 Int) Unit!161720)

(assert (=> b!7048276 (= lt!2528260 (lemmaConcatPreservesForall!838 lt!2528246 (exprs!7013 ct2!306) lambda!418307))))

(declare-fun lt!2528253 () Unit!161720)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!94 (Context!13026 Regex!17517 C!35304 Context!13026) Unit!161720)

(assert (=> b!7048276 (= lt!2528253 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!94 lt!2528257 (h!74403 (exprs!7013 lt!2528249)) (h!74404 s!7408) ct2!306))))

(declare-fun b!7048277 () Bool)

(declare-fun e!4237147 () Bool)

(assert (=> b!7048277 (= e!4237143 e!4237147)))

(declare-fun res!2877401 () Bool)

(assert (=> b!7048277 (=> res!2877401 e!4237147)))

(declare-fun lt!2528250 () (InoxSet Context!13026))

(declare-fun lt!2528261 () (InoxSet Context!13026))

(assert (=> b!7048277 (= res!2877401 (or (not (= lt!2528261 lt!2528250)) (not (= lt!2528261 lt!2528240))))))

(declare-fun lt!2528243 () (InoxSet Context!13026))

(declare-fun lambda!418308 () Int)

(declare-fun flatMap!2464 ((InoxSet Context!13026) Int) (InoxSet Context!13026))

(declare-fun derivationStepZipperUp!2127 (Context!13026 C!35304) (InoxSet Context!13026))

(assert (=> b!7048277 (= (flatMap!2464 lt!2528243 lambda!418308) (derivationStepZipperUp!2127 lt!2528249 (h!74404 s!7408)))))

(declare-fun lt!2528252 () Unit!161720)

(declare-fun lemmaFlatMapOnSingletonSet!1978 ((InoxSet Context!13026) Context!13026 Int) Unit!161720)

(assert (=> b!7048277 (= lt!2528252 (lemmaFlatMapOnSingletonSet!1978 lt!2528243 lt!2528249 lambda!418308))))

(assert (=> b!7048277 (= lt!2528250 (derivationStepZipperUp!2127 lt!2528249 (h!74404 s!7408)))))

(declare-fun derivationStepZipper!2973 ((InoxSet Context!13026) C!35304) (InoxSet Context!13026))

(assert (=> b!7048277 (= lt!2528261 (derivationStepZipper!2973 lt!2528243 (h!74404 s!7408)))))

(assert (=> b!7048277 (= lt!2528243 (store ((as const (Array Context!13026 Bool)) false) lt!2528249 true))))

(declare-fun b!7048278 () Bool)

(declare-fun e!4237141 () Bool)

(declare-fun tp_is_empty!44259 () Bool)

(declare-fun tp!1938359 () Bool)

(assert (=> b!7048278 (= e!4237141 (and tp_is_empty!44259 tp!1938359))))

(declare-fun b!7048279 () Bool)

(declare-fun res!2877389 () Bool)

(assert (=> b!7048279 (=> res!2877389 e!4237137)))

(get-info :version)

(assert (=> b!7048279 (= res!2877389 (not ((_ is Cons!67955) (exprs!7013 lt!2528249))))))

(declare-fun b!7048280 () Bool)

(declare-fun res!2877400 () Bool)

(declare-fun e!4237140 () Bool)

(assert (=> b!7048280 (=> (not res!2877400) (not e!4237140))))

(assert (=> b!7048280 (= res!2877400 ((_ is Cons!67956) s!7408))))

(declare-fun b!7048281 () Bool)

(declare-fun e!4237138 () Bool)

(assert (=> b!7048281 (= e!4237138 e!4237139)))

(declare-fun res!2877391 () Bool)

(assert (=> b!7048281 (=> res!2877391 e!4237139)))

(assert (=> b!7048281 (= res!2877391 (not (matchZipper!3057 lt!2528258 (t!381857 s!7408))))))

(declare-fun ++!15605 (List!68079 List!68079) List!68079)

(assert (=> b!7048281 (= lt!2528258 (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (h!74404 s!7408)))))

(declare-fun lt!2528235 () Unit!161720)

(assert (=> b!7048281 (= lt!2528235 (lemmaConcatPreservesForall!838 lt!2528246 (exprs!7013 ct2!306) lambda!418307))))

(declare-fun b!7048282 () Bool)

(assert (=> b!7048282 (= e!4237137 e!4237138)))

(declare-fun res!2877390 () Bool)

(assert (=> b!7048282 (=> res!2877390 e!4237138)))

(declare-fun nullable!7228 (Regex!17517) Bool)

(assert (=> b!7048282 (= res!2877390 (nullable!7228 (h!74403 (exprs!7013 lt!2528249))))))

(assert (=> b!7048282 (= lt!2528257 (Context!13027 lt!2528246))))

(declare-fun tail!13644 (List!68079) List!68079)

(assert (=> b!7048282 (= lt!2528246 (tail!13644 (exprs!7013 lt!2528249)))))

(declare-fun b!7048283 () Bool)

(declare-fun e!4237142 () Bool)

(declare-fun e!4237145 () Bool)

(assert (=> b!7048283 (= e!4237142 e!4237145)))

(declare-fun res!2877397 () Bool)

(assert (=> b!7048283 (=> res!2877397 e!4237145)))

(declare-fun lt!2528242 () (InoxSet Context!13026))

(declare-fun lt!2528256 () (InoxSet Context!13026))

(assert (=> b!7048283 (= res!2877397 (not (= lt!2528242 lt!2528256)))))

(declare-fun lt!2528238 () Context!13026)

(assert (=> b!7048283 (= lt!2528242 (store ((as const (Array Context!13026 Bool)) false) lt!2528238 true))))

(declare-fun lt!2528254 () Unit!161720)

(assert (=> b!7048283 (= lt!2528254 (lemmaConcatPreservesForall!838 (exprs!7013 lt!2528249) (exprs!7013 ct2!306) lambda!418307))))

(declare-fun b!7048284 () Bool)

(assert (=> b!7048284 (= e!4237147 (matchZipper!3057 lt!2528243 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))))))

(declare-fun b!7048285 () Bool)

(declare-fun res!2877393 () Bool)

(assert (=> b!7048285 (=> res!2877393 e!4237143)))

(assert (=> b!7048285 (= res!2877393 (not (matchZipper!3057 lt!2528241 (_2!37385 lt!2528255))))))

(assert (=> b!7048286 (= e!4237145 e!4237137)))

(declare-fun res!2877398 () Bool)

(assert (=> b!7048286 (=> res!2877398 e!4237137)))

(declare-fun lt!2528245 () (InoxSet Context!13026))

(assert (=> b!7048286 (= res!2877398 (not (= (derivationStepZipper!2973 lt!2528242 (h!74404 s!7408)) lt!2528245)))))

(assert (=> b!7048286 (= (flatMap!2464 lt!2528242 lambda!418308) (derivationStepZipperUp!2127 lt!2528238 (h!74404 s!7408)))))

(declare-fun lt!2528248 () Unit!161720)

(assert (=> b!7048286 (= lt!2528248 (lemmaFlatMapOnSingletonSet!1978 lt!2528242 lt!2528238 lambda!418308))))

(assert (=> b!7048286 (= lt!2528245 (derivationStepZipperUp!2127 lt!2528238 (h!74404 s!7408)))))

(declare-fun lt!2528259 () Unit!161720)

(assert (=> b!7048286 (= lt!2528259 (lemmaConcatPreservesForall!838 (exprs!7013 lt!2528249) (exprs!7013 ct2!306) lambda!418307))))

(declare-fun setIsEmpty!49520 () Bool)

(declare-fun setRes!49520 () Bool)

(assert (=> setIsEmpty!49520 setRes!49520))

(declare-fun b!7048287 () Bool)

(declare-fun res!2877392 () Bool)

(assert (=> b!7048287 (=> res!2877392 e!4237143)))

(declare-fun ++!15606 (List!68080 List!68080) List!68080)

(assert (=> b!7048287 (= res!2877392 (not (= (++!15606 (_1!37385 lt!2528255) (_2!37385 lt!2528255)) (t!381857 s!7408))))))

(declare-fun b!7048288 () Bool)

(declare-fun res!2877395 () Bool)

(declare-fun e!4237146 () Bool)

(assert (=> b!7048288 (=> res!2877395 e!4237146)))

(declare-fun lt!2528262 () Context!13026)

(declare-fun lt!2528237 () (InoxSet Context!13026))

(assert (=> b!7048288 (= res!2877395 (not (select lt!2528237 lt!2528262)))))

(assert (=> b!7048289 (= e!4237140 (not e!4237146))))

(declare-fun res!2877399 () Bool)

(assert (=> b!7048289 (=> res!2877399 e!4237146)))

(assert (=> b!7048289 (= res!2877399 (not (matchZipper!3057 lt!2528256 s!7408)))))

(assert (=> b!7048289 (= lt!2528256 (store ((as const (Array Context!13026 Bool)) false) lt!2528262 true))))

(declare-fun lambda!418305 () Int)

(declare-fun getWitness!1558 ((InoxSet Context!13026) Int) Context!13026)

(assert (=> b!7048289 (= lt!2528262 (getWitness!1558 lt!2528237 lambda!418305))))

(declare-datatypes ((List!68081 0))(
  ( (Nil!67957) (Cons!67957 (h!74405 Context!13026) (t!381858 List!68081)) )
))
(declare-fun lt!2528236 () List!68081)

(declare-fun exists!3479 (List!68081 Int) Bool)

(assert (=> b!7048289 (exists!3479 lt!2528236 lambda!418305)))

(declare-fun lt!2528247 () Unit!161720)

(declare-fun lemmaZipperMatchesExistsMatchingContext!456 (List!68081 List!68080) Unit!161720)

(assert (=> b!7048289 (= lt!2528247 (lemmaZipperMatchesExistsMatchingContext!456 lt!2528236 s!7408))))

(declare-fun toList!10860 ((InoxSet Context!13026)) List!68081)

(assert (=> b!7048289 (= lt!2528236 (toList!10860 lt!2528237))))

(assert (=> b!7048290 (= e!4237146 e!4237142)))

(declare-fun res!2877388 () Bool)

(assert (=> b!7048290 (=> res!2877388 e!4237142)))

(declare-fun z1!570 () (InoxSet Context!13026))

(assert (=> b!7048290 (= res!2877388 (or (not (= lt!2528238 lt!2528262)) (not (select z1!570 lt!2528249))))))

(assert (=> b!7048290 (= lt!2528238 (Context!13027 (++!15605 (exprs!7013 lt!2528249) (exprs!7013 ct2!306))))))

(declare-fun lt!2528244 () Unit!161720)

(assert (=> b!7048290 (= lt!2528244 (lemmaConcatPreservesForall!838 (exprs!7013 lt!2528249) (exprs!7013 ct2!306) lambda!418307))))

(declare-fun lambda!418306 () Int)

(declare-fun mapPost2!358 ((InoxSet Context!13026) Int Context!13026) Context!13026)

(assert (=> b!7048290 (= lt!2528249 (mapPost2!358 z1!570 lambda!418306 lt!2528262))))

(declare-fun b!7048291 () Bool)

(declare-fun e!4237144 () Bool)

(declare-fun tp!1938357 () Bool)

(assert (=> b!7048291 (= e!4237144 tp!1938357)))

(declare-fun res!2877396 () Bool)

(assert (=> start!682546 (=> (not res!2877396) (not e!4237140))))

(assert (=> start!682546 (= res!2877396 (matchZipper!3057 lt!2528237 s!7408))))

(assert (=> start!682546 (= lt!2528237 (appendTo!638 z1!570 ct2!306))))

(assert (=> start!682546 e!4237140))

(declare-fun condSetEmpty!49520 () Bool)

(assert (=> start!682546 (= condSetEmpty!49520 (= z1!570 ((as const (Array Context!13026 Bool)) false)))))

(assert (=> start!682546 setRes!49520))

(declare-fun inv!86651 (Context!13026) Bool)

(assert (=> start!682546 (and (inv!86651 ct2!306) e!4237144)))

(assert (=> start!682546 e!4237141))

(declare-fun setElem!49520 () Context!13026)

(declare-fun tp!1938358 () Bool)

(declare-fun setNonEmpty!49520 () Bool)

(assert (=> setNonEmpty!49520 (= setRes!49520 (and tp!1938358 (inv!86651 setElem!49520) e!4237148))))

(declare-fun setRest!49520 () (InoxSet Context!13026))

(assert (=> setNonEmpty!49520 (= z1!570 ((_ map or) (store ((as const (Array Context!13026 Bool)) false) setElem!49520 true) setRest!49520))))

(assert (= (and start!682546 res!2877396) b!7048280))

(assert (= (and b!7048280 res!2877400) b!7048289))

(assert (= (and b!7048289 (not res!2877399)) b!7048288))

(assert (= (and b!7048288 (not res!2877395)) b!7048290))

(assert (= (and b!7048290 (not res!2877388)) b!7048283))

(assert (= (and b!7048283 (not res!2877397)) b!7048286))

(assert (= (and b!7048286 (not res!2877398)) b!7048279))

(assert (= (and b!7048279 (not res!2877389)) b!7048274))

(assert (= (and b!7048274 (not res!2877394)) b!7048282))

(assert (= (and b!7048282 (not res!2877390)) b!7048281))

(assert (= (and b!7048281 (not res!2877391)) b!7048276))

(assert (= (and b!7048276 (not res!2877402)) b!7048285))

(assert (= (and b!7048285 (not res!2877393)) b!7048287))

(assert (= (and b!7048287 (not res!2877392)) b!7048277))

(assert (= (and b!7048277 (not res!2877401)) b!7048284))

(assert (= (and start!682546 condSetEmpty!49520) setIsEmpty!49520))

(assert (= (and start!682546 (not condSetEmpty!49520)) setNonEmpty!49520))

(assert (= setNonEmpty!49520 b!7048275))

(assert (= start!682546 b!7048291))

(assert (= (and start!682546 ((_ is Cons!67956) s!7408)) b!7048278))

(declare-fun m!7763110 () Bool)

(assert (=> b!7048277 m!7763110))

(declare-fun m!7763112 () Bool)

(assert (=> b!7048277 m!7763112))

(declare-fun m!7763114 () Bool)

(assert (=> b!7048277 m!7763114))

(declare-fun m!7763116 () Bool)

(assert (=> b!7048277 m!7763116))

(declare-fun m!7763118 () Bool)

(assert (=> b!7048277 m!7763118))

(declare-fun m!7763120 () Bool)

(assert (=> setNonEmpty!49520 m!7763120))

(declare-fun m!7763122 () Bool)

(assert (=> b!7048285 m!7763122))

(declare-fun m!7763124 () Bool)

(assert (=> b!7048281 m!7763124))

(declare-fun m!7763126 () Bool)

(assert (=> b!7048281 m!7763126))

(declare-fun m!7763128 () Bool)

(assert (=> b!7048281 m!7763128))

(declare-fun m!7763130 () Bool)

(assert (=> b!7048281 m!7763130))

(declare-fun m!7763132 () Bool)

(assert (=> b!7048282 m!7763132))

(declare-fun m!7763134 () Bool)

(assert (=> b!7048282 m!7763134))

(declare-fun m!7763136 () Bool)

(assert (=> b!7048286 m!7763136))

(declare-fun m!7763138 () Bool)

(assert (=> b!7048286 m!7763138))

(declare-fun m!7763140 () Bool)

(assert (=> b!7048286 m!7763140))

(declare-fun m!7763142 () Bool)

(assert (=> b!7048286 m!7763142))

(declare-fun m!7763144 () Bool)

(assert (=> b!7048286 m!7763144))

(declare-fun m!7763146 () Bool)

(assert (=> b!7048288 m!7763146))

(declare-fun m!7763148 () Bool)

(assert (=> b!7048290 m!7763148))

(declare-fun m!7763150 () Bool)

(assert (=> b!7048290 m!7763150))

(assert (=> b!7048290 m!7763142))

(declare-fun m!7763152 () Bool)

(assert (=> b!7048290 m!7763152))

(declare-fun m!7763154 () Bool)

(assert (=> b!7048289 m!7763154))

(declare-fun m!7763156 () Bool)

(assert (=> b!7048289 m!7763156))

(declare-fun m!7763158 () Bool)

(assert (=> b!7048289 m!7763158))

(declare-fun m!7763160 () Bool)

(assert (=> b!7048289 m!7763160))

(declare-fun m!7763162 () Bool)

(assert (=> b!7048289 m!7763162))

(declare-fun m!7763164 () Bool)

(assert (=> b!7048289 m!7763164))

(declare-fun m!7763166 () Bool)

(assert (=> b!7048283 m!7763166))

(assert (=> b!7048283 m!7763142))

(declare-fun m!7763168 () Bool)

(assert (=> b!7048276 m!7763168))

(declare-fun m!7763170 () Bool)

(assert (=> b!7048276 m!7763170))

(declare-fun m!7763172 () Bool)

(assert (=> b!7048276 m!7763172))

(declare-fun m!7763174 () Bool)

(assert (=> b!7048276 m!7763174))

(declare-fun m!7763176 () Bool)

(assert (=> b!7048276 m!7763176))

(declare-fun m!7763178 () Bool)

(assert (=> b!7048276 m!7763178))

(declare-fun m!7763180 () Bool)

(assert (=> b!7048276 m!7763180))

(assert (=> b!7048276 m!7763130))

(declare-fun m!7763182 () Bool)

(assert (=> b!7048276 m!7763182))

(declare-fun m!7763184 () Bool)

(assert (=> b!7048276 m!7763184))

(declare-fun m!7763186 () Bool)

(assert (=> b!7048274 m!7763186))

(declare-fun m!7763188 () Bool)

(assert (=> b!7048284 m!7763188))

(declare-fun m!7763190 () Bool)

(assert (=> start!682546 m!7763190))

(declare-fun m!7763192 () Bool)

(assert (=> start!682546 m!7763192))

(declare-fun m!7763194 () Bool)

(assert (=> start!682546 m!7763194))

(declare-fun m!7763196 () Bool)

(assert (=> b!7048287 m!7763196))

(check-sat (not b!7048290) (not b!7048286) (not b!7048283) (not b!7048277) (not b!7048287) (not start!682546) tp_is_empty!44259 (not b!7048291) (not b!7048285) (not b!7048281) (not b!7048289) (not b!7048276) (not b!7048284) (not b!7048278) (not b!7048282) (not setNonEmpty!49520) (not b!7048274) (not b!7048275))
(check-sat)
(get-model)

(declare-fun bs!1875251 () Bool)

(declare-fun d!2201594 () Bool)

(assert (= bs!1875251 (and d!2201594 b!7048290)))

(declare-fun lambda!418319 () Int)

(assert (=> bs!1875251 (= lambda!418319 lambda!418307)))

(declare-fun forall!16453 (List!68079 Int) Bool)

(assert (=> d!2201594 (= (inv!86651 setElem!49520) (forall!16453 (exprs!7013 setElem!49520) lambda!418319))))

(declare-fun bs!1875252 () Bool)

(assert (= bs!1875252 d!2201594))

(declare-fun m!7763330 () Bool)

(assert (=> bs!1875252 m!7763330))

(assert (=> setNonEmpty!49520 d!2201594))

(declare-fun d!2201600 () Bool)

(declare-fun c!1312683 () Bool)

(declare-fun isEmpty!39671 (List!68080) Bool)

(assert (=> d!2201600 (= c!1312683 (isEmpty!39671 (t!381857 s!7408)))))

(declare-fun e!4237209 () Bool)

(assert (=> d!2201600 (= (matchZipper!3057 lt!2528258 (t!381857 s!7408)) e!4237209)))

(declare-fun b!7048407 () Bool)

(declare-fun nullableZipper!2618 ((InoxSet Context!13026)) Bool)

(assert (=> b!7048407 (= e!4237209 (nullableZipper!2618 lt!2528258))))

(declare-fun b!7048408 () Bool)

(declare-fun head!14315 (List!68080) C!35304)

(declare-fun tail!13646 (List!68080) List!68080)

(assert (=> b!7048408 (= e!4237209 (matchZipper!3057 (derivationStepZipper!2973 lt!2528258 (head!14315 (t!381857 s!7408))) (tail!13646 (t!381857 s!7408))))))

(assert (= (and d!2201600 c!1312683) b!7048407))

(assert (= (and d!2201600 (not c!1312683)) b!7048408))

(declare-fun m!7763342 () Bool)

(assert (=> d!2201600 m!7763342))

(declare-fun m!7763344 () Bool)

(assert (=> b!7048407 m!7763344))

(declare-fun m!7763346 () Bool)

(assert (=> b!7048408 m!7763346))

(assert (=> b!7048408 m!7763346))

(declare-fun m!7763350 () Bool)

(assert (=> b!7048408 m!7763350))

(declare-fun m!7763356 () Bool)

(assert (=> b!7048408 m!7763356))

(assert (=> b!7048408 m!7763350))

(assert (=> b!7048408 m!7763356))

(declare-fun m!7763358 () Bool)

(assert (=> b!7048408 m!7763358))

(assert (=> b!7048281 d!2201600))

(declare-fun b!7048490 () Bool)

(declare-fun e!4237257 () (InoxSet Context!13026))

(assert (=> b!7048490 (= e!4237257 (store ((as const (Array Context!13026 Bool)) false) (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) true))))

(declare-fun b!7048491 () Bool)

(declare-fun c!1312714 () Bool)

(declare-fun e!4237256 () Bool)

(assert (=> b!7048491 (= c!1312714 e!4237256)))

(declare-fun res!2877453 () Bool)

(assert (=> b!7048491 (=> (not res!2877453) (not e!4237256))))

(assert (=> b!7048491 (= res!2877453 ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun e!4237260 () (InoxSet Context!13026))

(declare-fun e!4237255 () (InoxSet Context!13026))

(assert (=> b!7048491 (= e!4237260 e!4237255)))

(declare-fun bm!640471 () Bool)

(declare-fun call!640480 () (InoxSet Context!13026))

(declare-fun call!640477 () (InoxSet Context!13026))

(assert (=> bm!640471 (= call!640480 call!640477)))

(declare-fun bm!640472 () Bool)

(declare-fun call!640479 () (InoxSet Context!13026))

(assert (=> bm!640472 (= call!640479 call!640480)))

(declare-fun b!7048492 () Bool)

(declare-fun e!4237258 () (InoxSet Context!13026))

(assert (=> b!7048492 (= e!4237255 e!4237258)))

(declare-fun c!1312712 () Bool)

(assert (=> b!7048492 (= c!1312712 ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7048493 () Bool)

(declare-fun call!640478 () (InoxSet Context!13026))

(assert (=> b!7048493 (= e!4237260 ((_ map or) call!640478 call!640477))))

(declare-fun b!7048494 () Bool)

(assert (=> b!7048494 (= e!4237255 ((_ map or) call!640478 call!640480))))

(declare-fun b!7048495 () Bool)

(assert (=> b!7048495 (= e!4237257 e!4237260)))

(declare-fun c!1312710 () Bool)

(assert (=> b!7048495 (= c!1312710 ((_ is Union!17517) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7048496 () Bool)

(declare-fun e!4237259 () (InoxSet Context!13026))

(assert (=> b!7048496 (= e!4237259 call!640479)))

(declare-fun b!7048497 () Bool)

(assert (=> b!7048497 (= e!4237258 call!640479)))

(declare-fun call!640481 () List!68079)

(declare-fun bm!640473 () Bool)

(assert (=> bm!640473 (= call!640478 (derivationStepZipperDown!2181 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))) (ite c!1312710 (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640481)) (h!74404 s!7408)))))

(declare-fun b!7048498 () Bool)

(declare-fun c!1312711 () Bool)

(assert (=> b!7048498 (= c!1312711 ((_ is Star!17517) (h!74403 (exprs!7013 lt!2528249))))))

(assert (=> b!7048498 (= e!4237258 e!4237259)))

(declare-fun b!7048499 () Bool)

(assert (=> b!7048499 (= e!4237256 (nullable!7228 (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))

(declare-fun d!2201610 () Bool)

(declare-fun c!1312713 () Bool)

(assert (=> d!2201610 (= c!1312713 (and ((_ is ElementMatch!17517) (h!74403 (exprs!7013 lt!2528249))) (= (c!1312641 (h!74403 (exprs!7013 lt!2528249))) (h!74404 s!7408))))))

(assert (=> d!2201610 (= (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (h!74404 s!7408)) e!4237257)))

(declare-fun bm!640474 () Bool)

(declare-fun call!640476 () List!68079)

(assert (=> bm!640474 (= call!640476 call!640481)))

(declare-fun b!7048500 () Bool)

(assert (=> b!7048500 (= e!4237259 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640475 () Bool)

(assert (=> bm!640475 (= call!640477 (derivationStepZipperDown!2181 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))) (ite (or c!1312710 c!1312714) (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640476)) (h!74404 s!7408)))))

(declare-fun bm!640476 () Bool)

(declare-fun $colon$colon!2611 (List!68079 Regex!17517) List!68079)

(assert (=> bm!640476 (= call!640481 ($colon$colon!2611 (exprs!7013 (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306)))) (ite (or c!1312714 c!1312712) (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (h!74403 (exprs!7013 lt!2528249)))))))

(assert (= (and d!2201610 c!1312713) b!7048490))

(assert (= (and d!2201610 (not c!1312713)) b!7048495))

(assert (= (and b!7048495 c!1312710) b!7048493))

(assert (= (and b!7048495 (not c!1312710)) b!7048491))

(assert (= (and b!7048491 res!2877453) b!7048499))

(assert (= (and b!7048491 c!1312714) b!7048494))

(assert (= (and b!7048491 (not c!1312714)) b!7048492))

(assert (= (and b!7048492 c!1312712) b!7048497))

(assert (= (and b!7048492 (not c!1312712)) b!7048498))

(assert (= (and b!7048498 c!1312711) b!7048496))

(assert (= (and b!7048498 (not c!1312711)) b!7048500))

(assert (= (or b!7048497 b!7048496) bm!640474))

(assert (= (or b!7048497 b!7048496) bm!640472))

(assert (= (or b!7048494 bm!640472) bm!640471))

(assert (= (or b!7048494 bm!640474) bm!640476))

(assert (= (or b!7048493 b!7048494) bm!640473))

(assert (= (or b!7048493 bm!640471) bm!640475))

(declare-fun m!7763472 () Bool)

(assert (=> bm!640476 m!7763472))

(declare-fun m!7763474 () Bool)

(assert (=> bm!640473 m!7763474))

(declare-fun m!7763476 () Bool)

(assert (=> b!7048490 m!7763476))

(declare-fun m!7763478 () Bool)

(assert (=> b!7048499 m!7763478))

(declare-fun m!7763480 () Bool)

(assert (=> bm!640475 m!7763480))

(assert (=> b!7048281 d!2201610))

(declare-fun b!7048512 () Bool)

(declare-fun res!2877458 () Bool)

(declare-fun e!4237266 () Bool)

(assert (=> b!7048512 (=> (not res!2877458) (not e!4237266))))

(declare-fun lt!2528313 () List!68079)

(declare-fun size!41124 (List!68079) Int)

(assert (=> b!7048512 (= res!2877458 (= (size!41124 lt!2528313) (+ (size!41124 lt!2528246) (size!41124 (exprs!7013 ct2!306)))))))

(declare-fun b!7048513 () Bool)

(assert (=> b!7048513 (= e!4237266 (or (not (= (exprs!7013 ct2!306) Nil!67955)) (= lt!2528313 lt!2528246)))))

(declare-fun b!7048511 () Bool)

(declare-fun e!4237267 () List!68079)

(assert (=> b!7048511 (= e!4237267 (Cons!67955 (h!74403 lt!2528246) (++!15605 (t!381856 lt!2528246) (exprs!7013 ct2!306))))))

(declare-fun b!7048510 () Bool)

(assert (=> b!7048510 (= e!4237267 (exprs!7013 ct2!306))))

(declare-fun d!2201656 () Bool)

(assert (=> d!2201656 e!4237266))

(declare-fun res!2877459 () Bool)

(assert (=> d!2201656 (=> (not res!2877459) (not e!4237266))))

(declare-fun content!13631 (List!68079) (InoxSet Regex!17517))

(assert (=> d!2201656 (= res!2877459 (= (content!13631 lt!2528313) ((_ map or) (content!13631 lt!2528246) (content!13631 (exprs!7013 ct2!306)))))))

(assert (=> d!2201656 (= lt!2528313 e!4237267)))

(declare-fun c!1312717 () Bool)

(assert (=> d!2201656 (= c!1312717 ((_ is Nil!67955) lt!2528246))))

(assert (=> d!2201656 (= (++!15605 lt!2528246 (exprs!7013 ct2!306)) lt!2528313)))

(assert (= (and d!2201656 c!1312717) b!7048510))

(assert (= (and d!2201656 (not c!1312717)) b!7048511))

(assert (= (and d!2201656 res!2877459) b!7048512))

(assert (= (and b!7048512 res!2877458) b!7048513))

(declare-fun m!7763482 () Bool)

(assert (=> b!7048512 m!7763482))

(declare-fun m!7763484 () Bool)

(assert (=> b!7048512 m!7763484))

(declare-fun m!7763486 () Bool)

(assert (=> b!7048512 m!7763486))

(declare-fun m!7763488 () Bool)

(assert (=> b!7048511 m!7763488))

(declare-fun m!7763490 () Bool)

(assert (=> d!2201656 m!7763490))

(declare-fun m!7763492 () Bool)

(assert (=> d!2201656 m!7763492))

(declare-fun m!7763494 () Bool)

(assert (=> d!2201656 m!7763494))

(assert (=> b!7048281 d!2201656))

(declare-fun d!2201658 () Bool)

(assert (=> d!2201658 (forall!16453 (++!15605 lt!2528246 (exprs!7013 ct2!306)) lambda!418307)))

(declare-fun lt!2528316 () Unit!161720)

(declare-fun choose!53619 (List!68079 List!68079 Int) Unit!161720)

(assert (=> d!2201658 (= lt!2528316 (choose!53619 lt!2528246 (exprs!7013 ct2!306) lambda!418307))))

(assert (=> d!2201658 (forall!16453 lt!2528246 lambda!418307)))

(assert (=> d!2201658 (= (lemmaConcatPreservesForall!838 lt!2528246 (exprs!7013 ct2!306) lambda!418307) lt!2528316)))

(declare-fun bs!1875281 () Bool)

(assert (= bs!1875281 d!2201658))

(assert (=> bs!1875281 m!7763126))

(assert (=> bs!1875281 m!7763126))

(declare-fun m!7763496 () Bool)

(assert (=> bs!1875281 m!7763496))

(declare-fun m!7763498 () Bool)

(assert (=> bs!1875281 m!7763498))

(declare-fun m!7763500 () Bool)

(assert (=> bs!1875281 m!7763500))

(assert (=> b!7048281 d!2201658))

(declare-fun b!7048516 () Bool)

(declare-fun res!2877460 () Bool)

(declare-fun e!4237268 () Bool)

(assert (=> b!7048516 (=> (not res!2877460) (not e!4237268))))

(declare-fun lt!2528317 () List!68079)

(assert (=> b!7048516 (= res!2877460 (= (size!41124 lt!2528317) (+ (size!41124 (exprs!7013 lt!2528249)) (size!41124 (exprs!7013 ct2!306)))))))

(declare-fun b!7048517 () Bool)

(assert (=> b!7048517 (= e!4237268 (or (not (= (exprs!7013 ct2!306) Nil!67955)) (= lt!2528317 (exprs!7013 lt!2528249))))))

(declare-fun b!7048515 () Bool)

(declare-fun e!4237269 () List!68079)

(assert (=> b!7048515 (= e!4237269 (Cons!67955 (h!74403 (exprs!7013 lt!2528249)) (++!15605 (t!381856 (exprs!7013 lt!2528249)) (exprs!7013 ct2!306))))))

(declare-fun b!7048514 () Bool)

(assert (=> b!7048514 (= e!4237269 (exprs!7013 ct2!306))))

(declare-fun d!2201660 () Bool)

(assert (=> d!2201660 e!4237268))

(declare-fun res!2877461 () Bool)

(assert (=> d!2201660 (=> (not res!2877461) (not e!4237268))))

(assert (=> d!2201660 (= res!2877461 (= (content!13631 lt!2528317) ((_ map or) (content!13631 (exprs!7013 lt!2528249)) (content!13631 (exprs!7013 ct2!306)))))))

(assert (=> d!2201660 (= lt!2528317 e!4237269)))

(declare-fun c!1312718 () Bool)

(assert (=> d!2201660 (= c!1312718 ((_ is Nil!67955) (exprs!7013 lt!2528249)))))

(assert (=> d!2201660 (= (++!15605 (exprs!7013 lt!2528249) (exprs!7013 ct2!306)) lt!2528317)))

(assert (= (and d!2201660 c!1312718) b!7048514))

(assert (= (and d!2201660 (not c!1312718)) b!7048515))

(assert (= (and d!2201660 res!2877461) b!7048516))

(assert (= (and b!7048516 res!2877460) b!7048517))

(declare-fun m!7763502 () Bool)

(assert (=> b!7048516 m!7763502))

(declare-fun m!7763504 () Bool)

(assert (=> b!7048516 m!7763504))

(assert (=> b!7048516 m!7763486))

(declare-fun m!7763506 () Bool)

(assert (=> b!7048515 m!7763506))

(declare-fun m!7763508 () Bool)

(assert (=> d!2201660 m!7763508))

(declare-fun m!7763510 () Bool)

(assert (=> d!2201660 m!7763510))

(assert (=> d!2201660 m!7763494))

(assert (=> b!7048290 d!2201660))

(declare-fun d!2201662 () Bool)

(assert (=> d!2201662 (forall!16453 (++!15605 (exprs!7013 lt!2528249) (exprs!7013 ct2!306)) lambda!418307)))

(declare-fun lt!2528318 () Unit!161720)

(assert (=> d!2201662 (= lt!2528318 (choose!53619 (exprs!7013 lt!2528249) (exprs!7013 ct2!306) lambda!418307))))

(assert (=> d!2201662 (forall!16453 (exprs!7013 lt!2528249) lambda!418307)))

(assert (=> d!2201662 (= (lemmaConcatPreservesForall!838 (exprs!7013 lt!2528249) (exprs!7013 ct2!306) lambda!418307) lt!2528318)))

(declare-fun bs!1875282 () Bool)

(assert (= bs!1875282 d!2201662))

(assert (=> bs!1875282 m!7763150))

(assert (=> bs!1875282 m!7763150))

(declare-fun m!7763512 () Bool)

(assert (=> bs!1875282 m!7763512))

(declare-fun m!7763514 () Bool)

(assert (=> bs!1875282 m!7763514))

(declare-fun m!7763516 () Bool)

(assert (=> bs!1875282 m!7763516))

(assert (=> b!7048290 d!2201662))

(declare-fun d!2201664 () Bool)

(declare-fun e!4237272 () Bool)

(assert (=> d!2201664 e!4237272))

(declare-fun res!2877464 () Bool)

(assert (=> d!2201664 (=> (not res!2877464) (not e!4237272))))

(declare-fun lt!2528321 () Context!13026)

(declare-fun dynLambda!27534 (Int Context!13026) Context!13026)

(assert (=> d!2201664 (= res!2877464 (= lt!2528262 (dynLambda!27534 lambda!418306 lt!2528321)))))

(declare-fun choose!53620 ((InoxSet Context!13026) Int Context!13026) Context!13026)

(assert (=> d!2201664 (= lt!2528321 (choose!53620 z1!570 lambda!418306 lt!2528262))))

(declare-fun map!15831 ((InoxSet Context!13026) Int) (InoxSet Context!13026))

(assert (=> d!2201664 (select (map!15831 z1!570 lambda!418306) lt!2528262)))

(assert (=> d!2201664 (= (mapPost2!358 z1!570 lambda!418306 lt!2528262) lt!2528321)))

(declare-fun b!7048521 () Bool)

(assert (=> b!7048521 (= e!4237272 (select z1!570 lt!2528321))))

(assert (= (and d!2201664 res!2877464) b!7048521))

(declare-fun b_lambda!267907 () Bool)

(assert (=> (not b_lambda!267907) (not d!2201664)))

(declare-fun m!7763518 () Bool)

(assert (=> d!2201664 m!7763518))

(declare-fun m!7763520 () Bool)

(assert (=> d!2201664 m!7763520))

(declare-fun m!7763522 () Bool)

(assert (=> d!2201664 m!7763522))

(declare-fun m!7763524 () Bool)

(assert (=> d!2201664 m!7763524))

(declare-fun m!7763526 () Bool)

(assert (=> b!7048521 m!7763526))

(assert (=> b!7048290 d!2201664))

(declare-fun bs!1875283 () Bool)

(declare-fun d!2201666 () Bool)

(assert (= bs!1875283 (and d!2201666 b!7048289)))

(declare-fun lambda!418337 () Int)

(assert (=> bs!1875283 (= lambda!418337 lambda!418305)))

(assert (=> d!2201666 true))

(assert (=> d!2201666 (exists!3479 lt!2528236 lambda!418337)))

(declare-fun lt!2528324 () Unit!161720)

(declare-fun choose!53621 (List!68081 List!68080) Unit!161720)

(assert (=> d!2201666 (= lt!2528324 (choose!53621 lt!2528236 s!7408))))

(declare-fun content!13632 (List!68081) (InoxSet Context!13026))

(assert (=> d!2201666 (matchZipper!3057 (content!13632 lt!2528236) s!7408)))

(assert (=> d!2201666 (= (lemmaZipperMatchesExistsMatchingContext!456 lt!2528236 s!7408) lt!2528324)))

(declare-fun bs!1875284 () Bool)

(assert (= bs!1875284 d!2201666))

(declare-fun m!7763528 () Bool)

(assert (=> bs!1875284 m!7763528))

(declare-fun m!7763530 () Bool)

(assert (=> bs!1875284 m!7763530))

(declare-fun m!7763532 () Bool)

(assert (=> bs!1875284 m!7763532))

(assert (=> bs!1875284 m!7763532))

(declare-fun m!7763534 () Bool)

(assert (=> bs!1875284 m!7763534))

(assert (=> b!7048289 d!2201666))

(declare-fun d!2201668 () Bool)

(declare-fun c!1312721 () Bool)

(assert (=> d!2201668 (= c!1312721 (isEmpty!39671 s!7408))))

(declare-fun e!4237273 () Bool)

(assert (=> d!2201668 (= (matchZipper!3057 lt!2528256 s!7408) e!4237273)))

(declare-fun b!7048522 () Bool)

(assert (=> b!7048522 (= e!4237273 (nullableZipper!2618 lt!2528256))))

(declare-fun b!7048523 () Bool)

(assert (=> b!7048523 (= e!4237273 (matchZipper!3057 (derivationStepZipper!2973 lt!2528256 (head!14315 s!7408)) (tail!13646 s!7408)))))

(assert (= (and d!2201668 c!1312721) b!7048522))

(assert (= (and d!2201668 (not c!1312721)) b!7048523))

(declare-fun m!7763536 () Bool)

(assert (=> d!2201668 m!7763536))

(declare-fun m!7763538 () Bool)

(assert (=> b!7048522 m!7763538))

(declare-fun m!7763540 () Bool)

(assert (=> b!7048523 m!7763540))

(assert (=> b!7048523 m!7763540))

(declare-fun m!7763542 () Bool)

(assert (=> b!7048523 m!7763542))

(declare-fun m!7763544 () Bool)

(assert (=> b!7048523 m!7763544))

(assert (=> b!7048523 m!7763542))

(assert (=> b!7048523 m!7763544))

(declare-fun m!7763546 () Bool)

(assert (=> b!7048523 m!7763546))

(assert (=> b!7048289 d!2201668))

(declare-fun d!2201670 () Bool)

(declare-fun e!4237276 () Bool)

(assert (=> d!2201670 e!4237276))

(declare-fun res!2877467 () Bool)

(assert (=> d!2201670 (=> (not res!2877467) (not e!4237276))))

(declare-fun lt!2528327 () Context!13026)

(declare-fun dynLambda!27535 (Int Context!13026) Bool)

(assert (=> d!2201670 (= res!2877467 (dynLambda!27535 lambda!418305 lt!2528327))))

(declare-fun getWitness!1560 (List!68081 Int) Context!13026)

(assert (=> d!2201670 (= lt!2528327 (getWitness!1560 (toList!10860 lt!2528237) lambda!418305))))

(declare-fun exists!3481 ((InoxSet Context!13026) Int) Bool)

(assert (=> d!2201670 (exists!3481 lt!2528237 lambda!418305)))

(assert (=> d!2201670 (= (getWitness!1558 lt!2528237 lambda!418305) lt!2528327)))

(declare-fun b!7048526 () Bool)

(assert (=> b!7048526 (= e!4237276 (select lt!2528237 lt!2528327))))

(assert (= (and d!2201670 res!2877467) b!7048526))

(declare-fun b_lambda!267909 () Bool)

(assert (=> (not b_lambda!267909) (not d!2201670)))

(declare-fun m!7763548 () Bool)

(assert (=> d!2201670 m!7763548))

(assert (=> d!2201670 m!7763156))

(assert (=> d!2201670 m!7763156))

(declare-fun m!7763550 () Bool)

(assert (=> d!2201670 m!7763550))

(declare-fun m!7763552 () Bool)

(assert (=> d!2201670 m!7763552))

(declare-fun m!7763554 () Bool)

(assert (=> b!7048526 m!7763554))

(assert (=> b!7048289 d!2201670))

(declare-fun bs!1875285 () Bool)

(declare-fun d!2201672 () Bool)

(assert (= bs!1875285 (and d!2201672 b!7048289)))

(declare-fun lambda!418340 () Int)

(assert (=> bs!1875285 (not (= lambda!418340 lambda!418305))))

(declare-fun bs!1875286 () Bool)

(assert (= bs!1875286 (and d!2201672 d!2201666)))

(assert (=> bs!1875286 (not (= lambda!418340 lambda!418337))))

(assert (=> d!2201672 true))

(declare-fun order!28255 () Int)

(declare-fun dynLambda!27536 (Int Int) Int)

(assert (=> d!2201672 (< (dynLambda!27536 order!28255 lambda!418305) (dynLambda!27536 order!28255 lambda!418340))))

(declare-fun forall!16454 (List!68081 Int) Bool)

(assert (=> d!2201672 (= (exists!3479 lt!2528236 lambda!418305) (not (forall!16454 lt!2528236 lambda!418340)))))

(declare-fun bs!1875287 () Bool)

(assert (= bs!1875287 d!2201672))

(declare-fun m!7763556 () Bool)

(assert (=> bs!1875287 m!7763556))

(assert (=> b!7048289 d!2201672))

(declare-fun d!2201674 () Bool)

(declare-fun e!4237279 () Bool)

(assert (=> d!2201674 e!4237279))

(declare-fun res!2877470 () Bool)

(assert (=> d!2201674 (=> (not res!2877470) (not e!4237279))))

(declare-fun lt!2528330 () List!68081)

(declare-fun noDuplicate!2663 (List!68081) Bool)

(assert (=> d!2201674 (= res!2877470 (noDuplicate!2663 lt!2528330))))

(declare-fun choose!53622 ((InoxSet Context!13026)) List!68081)

(assert (=> d!2201674 (= lt!2528330 (choose!53622 lt!2528237))))

(assert (=> d!2201674 (= (toList!10860 lt!2528237) lt!2528330)))

(declare-fun b!7048531 () Bool)

(assert (=> b!7048531 (= e!4237279 (= (content!13632 lt!2528330) lt!2528237))))

(assert (= (and d!2201674 res!2877470) b!7048531))

(declare-fun m!7763558 () Bool)

(assert (=> d!2201674 m!7763558))

(declare-fun m!7763560 () Bool)

(assert (=> d!2201674 m!7763560))

(declare-fun m!7763562 () Bool)

(assert (=> b!7048531 m!7763562))

(assert (=> b!7048289 d!2201674))

(declare-fun d!2201676 () Bool)

(declare-fun c!1312722 () Bool)

(assert (=> d!2201676 (= c!1312722 (isEmpty!39671 s!7408))))

(declare-fun e!4237280 () Bool)

(assert (=> d!2201676 (= (matchZipper!3057 lt!2528237 s!7408) e!4237280)))

(declare-fun b!7048532 () Bool)

(assert (=> b!7048532 (= e!4237280 (nullableZipper!2618 lt!2528237))))

(declare-fun b!7048533 () Bool)

(assert (=> b!7048533 (= e!4237280 (matchZipper!3057 (derivationStepZipper!2973 lt!2528237 (head!14315 s!7408)) (tail!13646 s!7408)))))

(assert (= (and d!2201676 c!1312722) b!7048532))

(assert (= (and d!2201676 (not c!1312722)) b!7048533))

(assert (=> d!2201676 m!7763536))

(declare-fun m!7763564 () Bool)

(assert (=> b!7048532 m!7763564))

(assert (=> b!7048533 m!7763540))

(assert (=> b!7048533 m!7763540))

(declare-fun m!7763566 () Bool)

(assert (=> b!7048533 m!7763566))

(assert (=> b!7048533 m!7763544))

(assert (=> b!7048533 m!7763566))

(assert (=> b!7048533 m!7763544))

(declare-fun m!7763568 () Bool)

(assert (=> b!7048533 m!7763568))

(assert (=> start!682546 d!2201676))

(declare-fun bs!1875288 () Bool)

(declare-fun d!2201678 () Bool)

(assert (= bs!1875288 (and d!2201678 b!7048290)))

(declare-fun lambda!418345 () Int)

(assert (=> bs!1875288 (= lambda!418345 lambda!418306)))

(assert (=> d!2201678 true))

(assert (=> d!2201678 (= (appendTo!638 z1!570 ct2!306) (map!15831 z1!570 lambda!418345))))

(declare-fun bs!1875289 () Bool)

(assert (= bs!1875289 d!2201678))

(declare-fun m!7763570 () Bool)

(assert (=> bs!1875289 m!7763570))

(assert (=> start!682546 d!2201678))

(declare-fun bs!1875290 () Bool)

(declare-fun d!2201680 () Bool)

(assert (= bs!1875290 (and d!2201680 b!7048290)))

(declare-fun lambda!418346 () Int)

(assert (=> bs!1875290 (= lambda!418346 lambda!418307)))

(declare-fun bs!1875291 () Bool)

(assert (= bs!1875291 (and d!2201680 d!2201594)))

(assert (=> bs!1875291 (= lambda!418346 lambda!418319)))

(assert (=> d!2201680 (= (inv!86651 ct2!306) (forall!16453 (exprs!7013 ct2!306) lambda!418346))))

(declare-fun bs!1875292 () Bool)

(assert (= bs!1875292 d!2201680))

(declare-fun m!7763572 () Bool)

(assert (=> bs!1875292 m!7763572))

(assert (=> start!682546 d!2201680))

(declare-fun d!2201682 () Bool)

(declare-fun e!4237285 () Bool)

(assert (=> d!2201682 e!4237285))

(declare-fun res!2877475 () Bool)

(assert (=> d!2201682 (=> (not res!2877475) (not e!4237285))))

(declare-fun lt!2528335 () List!68080)

(declare-fun content!13633 (List!68080) (InoxSet C!35304))

(assert (=> d!2201682 (= res!2877475 (= (content!13633 lt!2528335) ((_ map or) (content!13633 (_1!37385 lt!2528255)) (content!13633 (_2!37385 lt!2528255)))))))

(declare-fun e!4237286 () List!68080)

(assert (=> d!2201682 (= lt!2528335 e!4237286)))

(declare-fun c!1312726 () Bool)

(assert (=> d!2201682 (= c!1312726 ((_ is Nil!67956) (_1!37385 lt!2528255)))))

(assert (=> d!2201682 (= (++!15606 (_1!37385 lt!2528255) (_2!37385 lt!2528255)) lt!2528335)))

(declare-fun b!7048545 () Bool)

(assert (=> b!7048545 (= e!4237285 (or (not (= (_2!37385 lt!2528255) Nil!67956)) (= lt!2528335 (_1!37385 lt!2528255))))))

(declare-fun b!7048543 () Bool)

(assert (=> b!7048543 (= e!4237286 (Cons!67956 (h!74404 (_1!37385 lt!2528255)) (++!15606 (t!381857 (_1!37385 lt!2528255)) (_2!37385 lt!2528255))))))

(declare-fun b!7048542 () Bool)

(assert (=> b!7048542 (= e!4237286 (_2!37385 lt!2528255))))

(declare-fun b!7048544 () Bool)

(declare-fun res!2877476 () Bool)

(assert (=> b!7048544 (=> (not res!2877476) (not e!4237285))))

(declare-fun size!41125 (List!68080) Int)

(assert (=> b!7048544 (= res!2877476 (= (size!41125 lt!2528335) (+ (size!41125 (_1!37385 lt!2528255)) (size!41125 (_2!37385 lt!2528255)))))))

(assert (= (and d!2201682 c!1312726) b!7048542))

(assert (= (and d!2201682 (not c!1312726)) b!7048543))

(assert (= (and d!2201682 res!2877475) b!7048544))

(assert (= (and b!7048544 res!2877476) b!7048545))

(declare-fun m!7763574 () Bool)

(assert (=> d!2201682 m!7763574))

(declare-fun m!7763576 () Bool)

(assert (=> d!2201682 m!7763576))

(declare-fun m!7763578 () Bool)

(assert (=> d!2201682 m!7763578))

(declare-fun m!7763580 () Bool)

(assert (=> b!7048543 m!7763580))

(declare-fun m!7763582 () Bool)

(assert (=> b!7048544 m!7763582))

(declare-fun m!7763584 () Bool)

(assert (=> b!7048544 m!7763584))

(declare-fun m!7763586 () Bool)

(assert (=> b!7048544 m!7763586))

(assert (=> b!7048287 d!2201682))

(declare-fun d!2201684 () Bool)

(declare-fun choose!53623 ((InoxSet Context!13026) Int) (InoxSet Context!13026))

(assert (=> d!2201684 (= (flatMap!2464 lt!2528243 lambda!418308) (choose!53623 lt!2528243 lambda!418308))))

(declare-fun bs!1875293 () Bool)

(assert (= bs!1875293 d!2201684))

(declare-fun m!7763588 () Bool)

(assert (=> bs!1875293 m!7763588))

(assert (=> b!7048277 d!2201684))

(declare-fun b!7048556 () Bool)

(declare-fun e!4237294 () Bool)

(assert (=> b!7048556 (= e!4237294 (nullable!7228 (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7048558 () Bool)

(declare-fun e!4237295 () (InoxSet Context!13026))

(assert (=> b!7048558 (= e!4237295 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640479 () Bool)

(declare-fun call!640484 () (InoxSet Context!13026))

(assert (=> bm!640479 (= call!640484 (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) (Context!13027 (t!381856 (exprs!7013 lt!2528249))) (h!74404 s!7408)))))

(declare-fun b!7048559 () Bool)

(assert (=> b!7048559 (= e!4237295 call!640484)))

(declare-fun b!7048560 () Bool)

(declare-fun e!4237293 () (InoxSet Context!13026))

(assert (=> b!7048560 (= e!4237293 ((_ map or) call!640484 (derivationStepZipperUp!2127 (Context!13027 (t!381856 (exprs!7013 lt!2528249))) (h!74404 s!7408))))))

(declare-fun b!7048557 () Bool)

(assert (=> b!7048557 (= e!4237293 e!4237295)))

(declare-fun c!1312732 () Bool)

(assert (=> b!7048557 (= c!1312732 ((_ is Cons!67955) (exprs!7013 lt!2528249)))))

(declare-fun d!2201686 () Bool)

(declare-fun c!1312731 () Bool)

(assert (=> d!2201686 (= c!1312731 e!4237294)))

(declare-fun res!2877479 () Bool)

(assert (=> d!2201686 (=> (not res!2877479) (not e!4237294))))

(assert (=> d!2201686 (= res!2877479 ((_ is Cons!67955) (exprs!7013 lt!2528249)))))

(assert (=> d!2201686 (= (derivationStepZipperUp!2127 lt!2528249 (h!74404 s!7408)) e!4237293)))

(assert (= (and d!2201686 res!2877479) b!7048556))

(assert (= (and d!2201686 c!1312731) b!7048560))

(assert (= (and d!2201686 (not c!1312731)) b!7048557))

(assert (= (and b!7048557 c!1312732) b!7048559))

(assert (= (and b!7048557 (not c!1312732)) b!7048558))

(assert (= (or b!7048560 b!7048559) bm!640479))

(assert (=> b!7048556 m!7763132))

(declare-fun m!7763590 () Bool)

(assert (=> bm!640479 m!7763590))

(declare-fun m!7763592 () Bool)

(assert (=> b!7048560 m!7763592))

(assert (=> b!7048277 d!2201686))

(declare-fun d!2201688 () Bool)

(declare-fun dynLambda!27537 (Int Context!13026) (InoxSet Context!13026))

(assert (=> d!2201688 (= (flatMap!2464 lt!2528243 lambda!418308) (dynLambda!27537 lambda!418308 lt!2528249))))

(declare-fun lt!2528338 () Unit!161720)

(declare-fun choose!53624 ((InoxSet Context!13026) Context!13026 Int) Unit!161720)

(assert (=> d!2201688 (= lt!2528338 (choose!53624 lt!2528243 lt!2528249 lambda!418308))))

(assert (=> d!2201688 (= lt!2528243 (store ((as const (Array Context!13026 Bool)) false) lt!2528249 true))))

(assert (=> d!2201688 (= (lemmaFlatMapOnSingletonSet!1978 lt!2528243 lt!2528249 lambda!418308) lt!2528338)))

(declare-fun b_lambda!267911 () Bool)

(assert (=> (not b_lambda!267911) (not d!2201688)))

(declare-fun bs!1875294 () Bool)

(assert (= bs!1875294 d!2201688))

(assert (=> bs!1875294 m!7763116))

(declare-fun m!7763594 () Bool)

(assert (=> bs!1875294 m!7763594))

(declare-fun m!7763596 () Bool)

(assert (=> bs!1875294 m!7763596))

(assert (=> bs!1875294 m!7763114))

(assert (=> b!7048277 d!2201688))

(declare-fun bs!1875295 () Bool)

(declare-fun d!2201690 () Bool)

(assert (= bs!1875295 (and d!2201690 b!7048286)))

(declare-fun lambda!418349 () Int)

(assert (=> bs!1875295 (= lambda!418349 lambda!418308)))

(assert (=> d!2201690 true))

(assert (=> d!2201690 (= (derivationStepZipper!2973 lt!2528243 (h!74404 s!7408)) (flatMap!2464 lt!2528243 lambda!418349))))

(declare-fun bs!1875296 () Bool)

(assert (= bs!1875296 d!2201690))

(declare-fun m!7763598 () Bool)

(assert (=> bs!1875296 m!7763598))

(assert (=> b!7048277 d!2201690))

(declare-fun bs!1875297 () Bool)

(declare-fun d!2201692 () Bool)

(assert (= bs!1875297 (and d!2201692 b!7048286)))

(declare-fun lambda!418350 () Int)

(assert (=> bs!1875297 (= lambda!418350 lambda!418308)))

(declare-fun bs!1875298 () Bool)

(assert (= bs!1875298 (and d!2201692 d!2201690)))

(assert (=> bs!1875298 (= lambda!418350 lambda!418349)))

(assert (=> d!2201692 true))

(assert (=> d!2201692 (= (derivationStepZipper!2973 lt!2528242 (h!74404 s!7408)) (flatMap!2464 lt!2528242 lambda!418350))))

(declare-fun bs!1875299 () Bool)

(assert (= bs!1875299 d!2201692))

(declare-fun m!7763600 () Bool)

(assert (=> bs!1875299 m!7763600))

(assert (=> b!7048286 d!2201692))

(declare-fun d!2201694 () Bool)

(assert (=> d!2201694 (= (flatMap!2464 lt!2528242 lambda!418308) (choose!53623 lt!2528242 lambda!418308))))

(declare-fun bs!1875300 () Bool)

(assert (= bs!1875300 d!2201694))

(declare-fun m!7763602 () Bool)

(assert (=> bs!1875300 m!7763602))

(assert (=> b!7048286 d!2201694))

(assert (=> b!7048286 d!2201662))

(declare-fun d!2201696 () Bool)

(assert (=> d!2201696 (= (flatMap!2464 lt!2528242 lambda!418308) (dynLambda!27537 lambda!418308 lt!2528238))))

(declare-fun lt!2528339 () Unit!161720)

(assert (=> d!2201696 (= lt!2528339 (choose!53624 lt!2528242 lt!2528238 lambda!418308))))

(assert (=> d!2201696 (= lt!2528242 (store ((as const (Array Context!13026 Bool)) false) lt!2528238 true))))

(assert (=> d!2201696 (= (lemmaFlatMapOnSingletonSet!1978 lt!2528242 lt!2528238 lambda!418308) lt!2528339)))

(declare-fun b_lambda!267913 () Bool)

(assert (=> (not b_lambda!267913) (not d!2201696)))

(declare-fun bs!1875301 () Bool)

(assert (= bs!1875301 d!2201696))

(assert (=> bs!1875301 m!7763144))

(declare-fun m!7763604 () Bool)

(assert (=> bs!1875301 m!7763604))

(declare-fun m!7763606 () Bool)

(assert (=> bs!1875301 m!7763606))

(assert (=> bs!1875301 m!7763166))

(assert (=> b!7048286 d!2201696))

(declare-fun b!7048563 () Bool)

(declare-fun e!4237297 () Bool)

(assert (=> b!7048563 (= e!4237297 (nullable!7228 (h!74403 (exprs!7013 lt!2528238))))))

(declare-fun b!7048565 () Bool)

(declare-fun e!4237298 () (InoxSet Context!13026))

(assert (=> b!7048565 (= e!4237298 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640480 () Bool)

(declare-fun call!640485 () (InoxSet Context!13026))

(assert (=> bm!640480 (= call!640485 (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528238)) (Context!13027 (t!381856 (exprs!7013 lt!2528238))) (h!74404 s!7408)))))

(declare-fun b!7048566 () Bool)

(assert (=> b!7048566 (= e!4237298 call!640485)))

(declare-fun e!4237296 () (InoxSet Context!13026))

(declare-fun b!7048567 () Bool)

(assert (=> b!7048567 (= e!4237296 ((_ map or) call!640485 (derivationStepZipperUp!2127 (Context!13027 (t!381856 (exprs!7013 lt!2528238))) (h!74404 s!7408))))))

(declare-fun b!7048564 () Bool)

(assert (=> b!7048564 (= e!4237296 e!4237298)))

(declare-fun c!1312736 () Bool)

(assert (=> b!7048564 (= c!1312736 ((_ is Cons!67955) (exprs!7013 lt!2528238)))))

(declare-fun d!2201698 () Bool)

(declare-fun c!1312735 () Bool)

(assert (=> d!2201698 (= c!1312735 e!4237297)))

(declare-fun res!2877480 () Bool)

(assert (=> d!2201698 (=> (not res!2877480) (not e!4237297))))

(assert (=> d!2201698 (= res!2877480 ((_ is Cons!67955) (exprs!7013 lt!2528238)))))

(assert (=> d!2201698 (= (derivationStepZipperUp!2127 lt!2528238 (h!74404 s!7408)) e!4237296)))

(assert (= (and d!2201698 res!2877480) b!7048563))

(assert (= (and d!2201698 c!1312735) b!7048567))

(assert (= (and d!2201698 (not c!1312735)) b!7048564))

(assert (= (and b!7048564 c!1312736) b!7048566))

(assert (= (and b!7048564 (not c!1312736)) b!7048565))

(assert (= (or b!7048567 b!7048566) bm!640480))

(declare-fun m!7763608 () Bool)

(assert (=> b!7048563 m!7763608))

(declare-fun m!7763610 () Bool)

(assert (=> bm!640480 m!7763610))

(declare-fun m!7763612 () Bool)

(assert (=> b!7048567 m!7763612))

(assert (=> b!7048286 d!2201698))

(declare-fun d!2201700 () Bool)

(declare-fun c!1312737 () Bool)

(assert (=> d!2201700 (= c!1312737 (isEmpty!39671 (_1!37385 lt!2528255)))))

(declare-fun e!4237299 () Bool)

(assert (=> d!2201700 (= (matchZipper!3057 lt!2528240 (_1!37385 lt!2528255)) e!4237299)))

(declare-fun b!7048568 () Bool)

(assert (=> b!7048568 (= e!4237299 (nullableZipper!2618 lt!2528240))))

(declare-fun b!7048569 () Bool)

(assert (=> b!7048569 (= e!4237299 (matchZipper!3057 (derivationStepZipper!2973 lt!2528240 (head!14315 (_1!37385 lt!2528255))) (tail!13646 (_1!37385 lt!2528255))))))

(assert (= (and d!2201700 c!1312737) b!7048568))

(assert (= (and d!2201700 (not c!1312737)) b!7048569))

(declare-fun m!7763614 () Bool)

(assert (=> d!2201700 m!7763614))

(declare-fun m!7763616 () Bool)

(assert (=> b!7048568 m!7763616))

(declare-fun m!7763618 () Bool)

(assert (=> b!7048569 m!7763618))

(assert (=> b!7048569 m!7763618))

(declare-fun m!7763620 () Bool)

(assert (=> b!7048569 m!7763620))

(declare-fun m!7763622 () Bool)

(assert (=> b!7048569 m!7763622))

(assert (=> b!7048569 m!7763620))

(assert (=> b!7048569 m!7763622))

(declare-fun m!7763624 () Bool)

(assert (=> b!7048569 m!7763624))

(assert (=> b!7048276 d!2201700))

(declare-fun b!7048588 () Bool)

(declare-fun e!4237310 () Option!16914)

(assert (=> b!7048588 (= e!4237310 None!16913)))

(declare-fun d!2201702 () Bool)

(declare-fun e!4237313 () Bool)

(assert (=> d!2201702 e!4237313))

(declare-fun res!2877492 () Bool)

(assert (=> d!2201702 (=> res!2877492 e!4237313)))

(declare-fun e!4237314 () Bool)

(assert (=> d!2201702 (= res!2877492 e!4237314)))

(declare-fun res!2877494 () Bool)

(assert (=> d!2201702 (=> (not res!2877494) (not e!4237314))))

(declare-fun lt!2528347 () Option!16914)

(assert (=> d!2201702 (= res!2877494 (isDefined!13615 lt!2528347))))

(declare-fun e!4237312 () Option!16914)

(assert (=> d!2201702 (= lt!2528347 e!4237312)))

(declare-fun c!1312743 () Bool)

(declare-fun e!4237311 () Bool)

(assert (=> d!2201702 (= c!1312743 e!4237311)))

(declare-fun res!2877493 () Bool)

(assert (=> d!2201702 (=> (not res!2877493) (not e!4237311))))

(assert (=> d!2201702 (= res!2877493 (matchZipper!3057 lt!2528240 Nil!67956))))

(assert (=> d!2201702 (= (++!15606 Nil!67956 (t!381857 s!7408)) (t!381857 s!7408))))

(assert (=> d!2201702 (= (findConcatSeparationZippers!430 lt!2528240 lt!2528241 Nil!67956 (t!381857 s!7408) (t!381857 s!7408)) lt!2528347)))

(declare-fun b!7048589 () Bool)

(assert (=> b!7048589 (= e!4237311 (matchZipper!3057 lt!2528241 (t!381857 s!7408)))))

(declare-fun b!7048590 () Bool)

(declare-fun res!2877495 () Bool)

(assert (=> b!7048590 (=> (not res!2877495) (not e!4237314))))

(assert (=> b!7048590 (= res!2877495 (matchZipper!3057 lt!2528240 (_1!37385 (get!23823 lt!2528347))))))

(declare-fun b!7048591 () Bool)

(assert (=> b!7048591 (= e!4237312 (Some!16913 (tuple2!68165 Nil!67956 (t!381857 s!7408))))))

(declare-fun b!7048592 () Bool)

(declare-fun lt!2528346 () Unit!161720)

(declare-fun lt!2528348 () Unit!161720)

(assert (=> b!7048592 (= lt!2528346 lt!2528348)))

(assert (=> b!7048592 (= (++!15606 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (t!381857 (t!381857 s!7408))) (t!381857 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2955 (List!68080 C!35304 List!68080 List!68080) Unit!161720)

(assert (=> b!7048592 (= lt!2528348 (lemmaMoveElementToOtherListKeepsConcatEq!2955 Nil!67956 (h!74404 (t!381857 s!7408)) (t!381857 (t!381857 s!7408)) (t!381857 s!7408)))))

(assert (=> b!7048592 (= e!4237310 (findConcatSeparationZippers!430 lt!2528240 lt!2528241 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (t!381857 (t!381857 s!7408)) (t!381857 s!7408)))))

(declare-fun b!7048593 () Bool)

(assert (=> b!7048593 (= e!4237313 (not (isDefined!13615 lt!2528347)))))

(declare-fun b!7048594 () Bool)

(assert (=> b!7048594 (= e!4237314 (= (++!15606 (_1!37385 (get!23823 lt!2528347)) (_2!37385 (get!23823 lt!2528347))) (t!381857 s!7408)))))

(declare-fun b!7048595 () Bool)

(assert (=> b!7048595 (= e!4237312 e!4237310)))

(declare-fun c!1312742 () Bool)

(assert (=> b!7048595 (= c!1312742 ((_ is Nil!67956) (t!381857 s!7408)))))

(declare-fun b!7048596 () Bool)

(declare-fun res!2877491 () Bool)

(assert (=> b!7048596 (=> (not res!2877491) (not e!4237314))))

(assert (=> b!7048596 (= res!2877491 (matchZipper!3057 lt!2528241 (_2!37385 (get!23823 lt!2528347))))))

(assert (= (and d!2201702 res!2877493) b!7048589))

(assert (= (and d!2201702 c!1312743) b!7048591))

(assert (= (and d!2201702 (not c!1312743)) b!7048595))

(assert (= (and b!7048595 c!1312742) b!7048588))

(assert (= (and b!7048595 (not c!1312742)) b!7048592))

(assert (= (and d!2201702 res!2877494) b!7048590))

(assert (= (and b!7048590 res!2877495) b!7048596))

(assert (= (and b!7048596 res!2877491) b!7048594))

(assert (= (and d!2201702 (not res!2877492)) b!7048593))

(declare-fun m!7763626 () Bool)

(assert (=> b!7048596 m!7763626))

(declare-fun m!7763628 () Bool)

(assert (=> b!7048596 m!7763628))

(assert (=> b!7048590 m!7763626))

(declare-fun m!7763630 () Bool)

(assert (=> b!7048590 m!7763630))

(declare-fun m!7763632 () Bool)

(assert (=> b!7048593 m!7763632))

(declare-fun m!7763634 () Bool)

(assert (=> b!7048589 m!7763634))

(assert (=> d!2201702 m!7763632))

(declare-fun m!7763636 () Bool)

(assert (=> d!2201702 m!7763636))

(declare-fun m!7763638 () Bool)

(assert (=> d!2201702 m!7763638))

(assert (=> b!7048594 m!7763626))

(declare-fun m!7763640 () Bool)

(assert (=> b!7048594 m!7763640))

(declare-fun m!7763642 () Bool)

(assert (=> b!7048592 m!7763642))

(assert (=> b!7048592 m!7763642))

(declare-fun m!7763644 () Bool)

(assert (=> b!7048592 m!7763644))

(declare-fun m!7763646 () Bool)

(assert (=> b!7048592 m!7763646))

(assert (=> b!7048592 m!7763642))

(declare-fun m!7763648 () Bool)

(assert (=> b!7048592 m!7763648))

(assert (=> b!7048276 d!2201702))

(assert (=> b!7048276 d!2201658))

(declare-fun d!2201704 () Bool)

(declare-fun isEmpty!39672 (Option!16914) Bool)

(assert (=> d!2201704 (= (isDefined!13615 lt!2528251) (not (isEmpty!39672 lt!2528251)))))

(declare-fun bs!1875302 () Bool)

(assert (= bs!1875302 d!2201704))

(declare-fun m!7763650 () Bool)

(assert (=> bs!1875302 m!7763650))

(assert (=> b!7048276 d!2201704))

(declare-fun bs!1875303 () Bool)

(declare-fun d!2201706 () Bool)

(assert (= bs!1875303 (and d!2201706 b!7048290)))

(declare-fun lambda!418351 () Int)

(assert (=> bs!1875303 (= lambda!418351 lambda!418306)))

(declare-fun bs!1875304 () Bool)

(assert (= bs!1875304 (and d!2201706 d!2201678)))

(assert (=> bs!1875304 (= lambda!418351 lambda!418345)))

(assert (=> d!2201706 true))

(assert (=> d!2201706 (= (appendTo!638 lt!2528240 ct2!306) (map!15831 lt!2528240 lambda!418351))))

(declare-fun bs!1875305 () Bool)

(assert (= bs!1875305 d!2201706))

(declare-fun m!7763652 () Bool)

(assert (=> bs!1875305 m!7763652))

(assert (=> b!7048276 d!2201706))

(declare-fun d!2201708 () Bool)

(assert (=> d!2201708 (= (get!23823 lt!2528251) (v!53203 lt!2528251))))

(assert (=> b!7048276 d!2201708))

(declare-fun b!7048597 () Bool)

(declare-fun e!4237317 () (InoxSet Context!13026))

(assert (=> b!7048597 (= e!4237317 (store ((as const (Array Context!13026 Bool)) false) lt!2528257 true))))

(declare-fun b!7048598 () Bool)

(declare-fun c!1312748 () Bool)

(declare-fun e!4237316 () Bool)

(assert (=> b!7048598 (= c!1312748 e!4237316)))

(declare-fun res!2877496 () Bool)

(assert (=> b!7048598 (=> (not res!2877496) (not e!4237316))))

(assert (=> b!7048598 (= res!2877496 ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun e!4237320 () (InoxSet Context!13026))

(declare-fun e!4237315 () (InoxSet Context!13026))

(assert (=> b!7048598 (= e!4237320 e!4237315)))

(declare-fun bm!640481 () Bool)

(declare-fun call!640490 () (InoxSet Context!13026))

(declare-fun call!640487 () (InoxSet Context!13026))

(assert (=> bm!640481 (= call!640490 call!640487)))

(declare-fun bm!640482 () Bool)

(declare-fun call!640489 () (InoxSet Context!13026))

(assert (=> bm!640482 (= call!640489 call!640490)))

(declare-fun b!7048599 () Bool)

(declare-fun e!4237318 () (InoxSet Context!13026))

(assert (=> b!7048599 (= e!4237315 e!4237318)))

(declare-fun c!1312746 () Bool)

(assert (=> b!7048599 (= c!1312746 ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7048600 () Bool)

(declare-fun call!640488 () (InoxSet Context!13026))

(assert (=> b!7048600 (= e!4237320 ((_ map or) call!640488 call!640487))))

(declare-fun b!7048601 () Bool)

(assert (=> b!7048601 (= e!4237315 ((_ map or) call!640488 call!640490))))

(declare-fun b!7048602 () Bool)

(assert (=> b!7048602 (= e!4237317 e!4237320)))

(declare-fun c!1312744 () Bool)

(assert (=> b!7048602 (= c!1312744 ((_ is Union!17517) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7048603 () Bool)

(declare-fun e!4237319 () (InoxSet Context!13026))

(assert (=> b!7048603 (= e!4237319 call!640489)))

(declare-fun b!7048604 () Bool)

(assert (=> b!7048604 (= e!4237318 call!640489)))

(declare-fun bm!640483 () Bool)

(declare-fun call!640491 () List!68079)

(assert (=> bm!640483 (= call!640488 (derivationStepZipperDown!2181 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))) (ite c!1312744 lt!2528257 (Context!13027 call!640491)) (h!74404 s!7408)))))

(declare-fun b!7048605 () Bool)

(declare-fun c!1312745 () Bool)

(assert (=> b!7048605 (= c!1312745 ((_ is Star!17517) (h!74403 (exprs!7013 lt!2528249))))))

(assert (=> b!7048605 (= e!4237318 e!4237319)))

(declare-fun b!7048606 () Bool)

(assert (=> b!7048606 (= e!4237316 (nullable!7228 (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))

(declare-fun d!2201710 () Bool)

(declare-fun c!1312747 () Bool)

(assert (=> d!2201710 (= c!1312747 (and ((_ is ElementMatch!17517) (h!74403 (exprs!7013 lt!2528249))) (= (c!1312641 (h!74403 (exprs!7013 lt!2528249))) (h!74404 s!7408))))))

(assert (=> d!2201710 (= (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) lt!2528257 (h!74404 s!7408)) e!4237317)))

(declare-fun bm!640484 () Bool)

(declare-fun call!640486 () List!68079)

(assert (=> bm!640484 (= call!640486 call!640491)))

(declare-fun b!7048607 () Bool)

(assert (=> b!7048607 (= e!4237319 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640485 () Bool)

(assert (=> bm!640485 (= call!640487 (derivationStepZipperDown!2181 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))) (ite (or c!1312744 c!1312748) lt!2528257 (Context!13027 call!640486)) (h!74404 s!7408)))))

(declare-fun bm!640486 () Bool)

(assert (=> bm!640486 (= call!640491 ($colon$colon!2611 (exprs!7013 lt!2528257) (ite (or c!1312748 c!1312746) (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (h!74403 (exprs!7013 lt!2528249)))))))

(assert (= (and d!2201710 c!1312747) b!7048597))

(assert (= (and d!2201710 (not c!1312747)) b!7048602))

(assert (= (and b!7048602 c!1312744) b!7048600))

(assert (= (and b!7048602 (not c!1312744)) b!7048598))

(assert (= (and b!7048598 res!2877496) b!7048606))

(assert (= (and b!7048598 c!1312748) b!7048601))

(assert (= (and b!7048598 (not c!1312748)) b!7048599))

(assert (= (and b!7048599 c!1312746) b!7048604))

(assert (= (and b!7048599 (not c!1312746)) b!7048605))

(assert (= (and b!7048605 c!1312745) b!7048603))

(assert (= (and b!7048605 (not c!1312745)) b!7048607))

(assert (= (or b!7048604 b!7048603) bm!640484))

(assert (= (or b!7048604 b!7048603) bm!640482))

(assert (= (or b!7048601 bm!640482) bm!640481))

(assert (= (or b!7048601 bm!640484) bm!640486))

(assert (= (or b!7048600 b!7048601) bm!640483))

(assert (= (or b!7048600 bm!640481) bm!640485))

(declare-fun m!7763654 () Bool)

(assert (=> bm!640486 m!7763654))

(declare-fun m!7763656 () Bool)

(assert (=> bm!640483 m!7763656))

(declare-fun m!7763658 () Bool)

(assert (=> b!7048597 m!7763658))

(assert (=> b!7048606 m!7763478))

(declare-fun m!7763660 () Bool)

(assert (=> bm!640485 m!7763660))

(assert (=> b!7048276 d!2201710))

(declare-fun bs!1875306 () Bool)

(declare-fun d!2201712 () Bool)

(assert (= bs!1875306 (and d!2201712 b!7048290)))

(declare-fun lambda!418354 () Int)

(assert (=> bs!1875306 (= lambda!418354 lambda!418307)))

(declare-fun bs!1875307 () Bool)

(assert (= bs!1875307 (and d!2201712 d!2201594)))

(assert (=> bs!1875307 (= lambda!418354 lambda!418319)))

(declare-fun bs!1875308 () Bool)

(assert (= bs!1875308 (and d!2201712 d!2201680)))

(assert (=> bs!1875308 (= lambda!418354 lambda!418346)))

(assert (=> d!2201712 (= (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) (Context!13027 (++!15605 (exprs!7013 lt!2528257) (exprs!7013 ct2!306))) (h!74404 s!7408)) (appendTo!638 (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) lt!2528257 (h!74404 s!7408)) ct2!306))))

(declare-fun lt!2528354 () Unit!161720)

(assert (=> d!2201712 (= lt!2528354 (lemmaConcatPreservesForall!838 (exprs!7013 lt!2528257) (exprs!7013 ct2!306) lambda!418354))))

(declare-fun lt!2528353 () Unit!161720)

(declare-fun choose!53625 (Context!13026 Regex!17517 C!35304 Context!13026) Unit!161720)

(assert (=> d!2201712 (= lt!2528353 (choose!53625 lt!2528257 (h!74403 (exprs!7013 lt!2528249)) (h!74404 s!7408) ct2!306))))

(declare-fun validRegex!8955 (Regex!17517) Bool)

(assert (=> d!2201712 (validRegex!8955 (h!74403 (exprs!7013 lt!2528249)))))

(assert (=> d!2201712 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!94 lt!2528257 (h!74403 (exprs!7013 lt!2528249)) (h!74404 s!7408) ct2!306) lt!2528353)))

(declare-fun bs!1875309 () Bool)

(assert (= bs!1875309 d!2201712))

(declare-fun m!7763662 () Bool)

(assert (=> bs!1875309 m!7763662))

(declare-fun m!7763664 () Bool)

(assert (=> bs!1875309 m!7763664))

(declare-fun m!7763666 () Bool)

(assert (=> bs!1875309 m!7763666))

(assert (=> bs!1875309 m!7763182))

(declare-fun m!7763668 () Bool)

(assert (=> bs!1875309 m!7763668))

(assert (=> bs!1875309 m!7763182))

(declare-fun m!7763670 () Bool)

(assert (=> bs!1875309 m!7763670))

(declare-fun m!7763672 () Bool)

(assert (=> bs!1875309 m!7763672))

(assert (=> b!7048276 d!2201712))

(declare-fun d!2201714 () Bool)

(assert (=> d!2201714 (isDefined!13615 (findConcatSeparationZippers!430 lt!2528240 (store ((as const (Array Context!13026 Bool)) false) ct2!306 true) Nil!67956 (t!381857 s!7408) (t!381857 s!7408)))))

(declare-fun lt!2528357 () Unit!161720)

(declare-fun choose!53626 ((InoxSet Context!13026) Context!13026 List!68080) Unit!161720)

(assert (=> d!2201714 (= lt!2528357 (choose!53626 lt!2528240 ct2!306 (t!381857 s!7408)))))

(assert (=> d!2201714 (matchZipper!3057 (appendTo!638 lt!2528240 ct2!306) (t!381857 s!7408))))

(assert (=> d!2201714 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!418 lt!2528240 ct2!306 (t!381857 s!7408)) lt!2528357)))

(declare-fun bs!1875310 () Bool)

(assert (= bs!1875310 d!2201714))

(declare-fun m!7763674 () Bool)

(assert (=> bs!1875310 m!7763674))

(assert (=> bs!1875310 m!7763178))

(declare-fun m!7763676 () Bool)

(assert (=> bs!1875310 m!7763676))

(assert (=> bs!1875310 m!7763178))

(declare-fun m!7763678 () Bool)

(assert (=> bs!1875310 m!7763678))

(declare-fun m!7763680 () Bool)

(assert (=> bs!1875310 m!7763680))

(assert (=> bs!1875310 m!7763174))

(assert (=> bs!1875310 m!7763174))

(assert (=> bs!1875310 m!7763678))

(assert (=> b!7048276 d!2201714))

(declare-fun d!2201716 () Bool)

(declare-fun c!1312750 () Bool)

(assert (=> d!2201716 (= c!1312750 (isEmpty!39671 (_2!37385 lt!2528255)))))

(declare-fun e!4237321 () Bool)

(assert (=> d!2201716 (= (matchZipper!3057 lt!2528241 (_2!37385 lt!2528255)) e!4237321)))

(declare-fun b!7048608 () Bool)

(assert (=> b!7048608 (= e!4237321 (nullableZipper!2618 lt!2528241))))

(declare-fun b!7048609 () Bool)

(assert (=> b!7048609 (= e!4237321 (matchZipper!3057 (derivationStepZipper!2973 lt!2528241 (head!14315 (_2!37385 lt!2528255))) (tail!13646 (_2!37385 lt!2528255))))))

(assert (= (and d!2201716 c!1312750) b!7048608))

(assert (= (and d!2201716 (not c!1312750)) b!7048609))

(declare-fun m!7763682 () Bool)

(assert (=> d!2201716 m!7763682))

(declare-fun m!7763684 () Bool)

(assert (=> b!7048608 m!7763684))

(declare-fun m!7763686 () Bool)

(assert (=> b!7048609 m!7763686))

(assert (=> b!7048609 m!7763686))

(declare-fun m!7763688 () Bool)

(assert (=> b!7048609 m!7763688))

(declare-fun m!7763690 () Bool)

(assert (=> b!7048609 m!7763690))

(assert (=> b!7048609 m!7763688))

(assert (=> b!7048609 m!7763690))

(declare-fun m!7763692 () Bool)

(assert (=> b!7048609 m!7763692))

(assert (=> b!7048285 d!2201716))

(declare-fun d!2201718 () Bool)

(declare-fun c!1312751 () Bool)

(assert (=> d!2201718 (= c!1312751 (isEmpty!39671 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))))))

(declare-fun e!4237322 () Bool)

(assert (=> d!2201718 (= (matchZipper!3057 lt!2528243 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))) e!4237322)))

(declare-fun b!7048610 () Bool)

(assert (=> b!7048610 (= e!4237322 (nullableZipper!2618 lt!2528243))))

(declare-fun b!7048611 () Bool)

(assert (=> b!7048611 (= e!4237322 (matchZipper!3057 (derivationStepZipper!2973 lt!2528243 (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))) (tail!13646 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))))))

(assert (= (and d!2201718 c!1312751) b!7048610))

(assert (= (and d!2201718 (not c!1312751)) b!7048611))

(declare-fun m!7763694 () Bool)

(assert (=> d!2201718 m!7763694))

(declare-fun m!7763696 () Bool)

(assert (=> b!7048610 m!7763696))

(declare-fun m!7763698 () Bool)

(assert (=> b!7048611 m!7763698))

(assert (=> b!7048611 m!7763698))

(declare-fun m!7763700 () Bool)

(assert (=> b!7048611 m!7763700))

(declare-fun m!7763702 () Bool)

(assert (=> b!7048611 m!7763702))

(assert (=> b!7048611 m!7763700))

(assert (=> b!7048611 m!7763702))

(declare-fun m!7763704 () Bool)

(assert (=> b!7048611 m!7763704))

(assert (=> b!7048284 d!2201718))

(declare-fun d!2201720 () Bool)

(assert (=> d!2201720 (= (isEmpty!39668 (exprs!7013 lt!2528249)) ((_ is Nil!67955) (exprs!7013 lt!2528249)))))

(assert (=> b!7048274 d!2201720))

(assert (=> b!7048283 d!2201662))

(declare-fun d!2201722 () Bool)

(declare-fun nullableFct!2763 (Regex!17517) Bool)

(assert (=> d!2201722 (= (nullable!7228 (h!74403 (exprs!7013 lt!2528249))) (nullableFct!2763 (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun bs!1875311 () Bool)

(assert (= bs!1875311 d!2201722))

(declare-fun m!7763706 () Bool)

(assert (=> bs!1875311 m!7763706))

(assert (=> b!7048282 d!2201722))

(declare-fun d!2201724 () Bool)

(assert (=> d!2201724 (= (tail!13644 (exprs!7013 lt!2528249)) (t!381856 (exprs!7013 lt!2528249)))))

(assert (=> b!7048282 d!2201724))

(declare-fun b!7048616 () Bool)

(declare-fun e!4237325 () Bool)

(declare-fun tp!1938381 () Bool)

(declare-fun tp!1938382 () Bool)

(assert (=> b!7048616 (= e!4237325 (and tp!1938381 tp!1938382))))

(assert (=> b!7048291 (= tp!1938357 e!4237325)))

(assert (= (and b!7048291 ((_ is Cons!67955) (exprs!7013 ct2!306))) b!7048616))

(declare-fun condSetEmpty!49526 () Bool)

(assert (=> setNonEmpty!49520 (= condSetEmpty!49526 (= setRest!49520 ((as const (Array Context!13026 Bool)) false)))))

(declare-fun setRes!49526 () Bool)

(assert (=> setNonEmpty!49520 (= tp!1938358 setRes!49526)))

(declare-fun setIsEmpty!49526 () Bool)

(assert (=> setIsEmpty!49526 setRes!49526))

(declare-fun setElem!49526 () Context!13026)

(declare-fun e!4237328 () Bool)

(declare-fun setNonEmpty!49526 () Bool)

(declare-fun tp!1938387 () Bool)

(assert (=> setNonEmpty!49526 (= setRes!49526 (and tp!1938387 (inv!86651 setElem!49526) e!4237328))))

(declare-fun setRest!49526 () (InoxSet Context!13026))

(assert (=> setNonEmpty!49526 (= setRest!49520 ((_ map or) (store ((as const (Array Context!13026 Bool)) false) setElem!49526 true) setRest!49526))))

(declare-fun b!7048621 () Bool)

(declare-fun tp!1938388 () Bool)

(assert (=> b!7048621 (= e!4237328 tp!1938388)))

(assert (= (and setNonEmpty!49520 condSetEmpty!49526) setIsEmpty!49526))

(assert (= (and setNonEmpty!49520 (not condSetEmpty!49526)) setNonEmpty!49526))

(assert (= setNonEmpty!49526 b!7048621))

(declare-fun m!7763708 () Bool)

(assert (=> setNonEmpty!49526 m!7763708))

(declare-fun b!7048622 () Bool)

(declare-fun e!4237329 () Bool)

(declare-fun tp!1938389 () Bool)

(declare-fun tp!1938390 () Bool)

(assert (=> b!7048622 (= e!4237329 (and tp!1938389 tp!1938390))))

(assert (=> b!7048275 (= tp!1938356 e!4237329)))

(assert (= (and b!7048275 ((_ is Cons!67955) (exprs!7013 setElem!49520))) b!7048622))

(declare-fun b!7048627 () Bool)

(declare-fun e!4237332 () Bool)

(declare-fun tp!1938393 () Bool)

(assert (=> b!7048627 (= e!4237332 (and tp_is_empty!44259 tp!1938393))))

(assert (=> b!7048278 (= tp!1938359 e!4237332)))

(assert (= (and b!7048278 ((_ is Cons!67956) (t!381857 s!7408))) b!7048627))

(declare-fun b_lambda!267915 () Bool)

(assert (= b_lambda!267907 (or b!7048290 b_lambda!267915)))

(declare-fun bs!1875312 () Bool)

(declare-fun d!2201726 () Bool)

(assert (= bs!1875312 (and d!2201726 b!7048290)))

(declare-fun lt!2528358 () Unit!161720)

(assert (=> bs!1875312 (= lt!2528358 (lemmaConcatPreservesForall!838 (exprs!7013 lt!2528321) (exprs!7013 ct2!306) lambda!418307))))

(assert (=> bs!1875312 (= (dynLambda!27534 lambda!418306 lt!2528321) (Context!13027 (++!15605 (exprs!7013 lt!2528321) (exprs!7013 ct2!306))))))

(declare-fun m!7763710 () Bool)

(assert (=> bs!1875312 m!7763710))

(declare-fun m!7763712 () Bool)

(assert (=> bs!1875312 m!7763712))

(assert (=> d!2201664 d!2201726))

(declare-fun b_lambda!267917 () Bool)

(assert (= b_lambda!267909 (or b!7048289 b_lambda!267917)))

(declare-fun bs!1875313 () Bool)

(declare-fun d!2201728 () Bool)

(assert (= bs!1875313 (and d!2201728 b!7048289)))

(assert (=> bs!1875313 (= (dynLambda!27535 lambda!418305 lt!2528327) (matchZipper!3057 (store ((as const (Array Context!13026 Bool)) false) lt!2528327 true) s!7408))))

(declare-fun m!7763714 () Bool)

(assert (=> bs!1875313 m!7763714))

(assert (=> bs!1875313 m!7763714))

(declare-fun m!7763716 () Bool)

(assert (=> bs!1875313 m!7763716))

(assert (=> d!2201670 d!2201728))

(declare-fun b_lambda!267919 () Bool)

(assert (= b_lambda!267911 (or b!7048286 b_lambda!267919)))

(declare-fun bs!1875314 () Bool)

(declare-fun d!2201730 () Bool)

(assert (= bs!1875314 (and d!2201730 b!7048286)))

(assert (=> bs!1875314 (= (dynLambda!27537 lambda!418308 lt!2528249) (derivationStepZipperUp!2127 lt!2528249 (h!74404 s!7408)))))

(assert (=> bs!1875314 m!7763110))

(assert (=> d!2201688 d!2201730))

(declare-fun b_lambda!267921 () Bool)

(assert (= b_lambda!267913 (or b!7048286 b_lambda!267921)))

(declare-fun bs!1875315 () Bool)

(declare-fun d!2201732 () Bool)

(assert (= bs!1875315 (and d!2201732 b!7048286)))

(assert (=> bs!1875315 (= (dynLambda!27537 lambda!418308 lt!2528238) (derivationStepZipperUp!2127 lt!2528238 (h!74404 s!7408)))))

(assert (=> bs!1875315 m!7763140))

(assert (=> d!2201696 d!2201732))

(check-sat (not d!2201718) (not d!2201682) (not b!7048544) (not d!2201662) (not bm!640480) (not b!7048592) (not bs!1875314) (not b!7048621) (not b!7048523) (not d!2201676) (not b!7048560) (not b!7048627) (not d!2201680) (not b!7048522) (not b!7048594) (not d!2201688) (not b!7048511) (not d!2201674) (not bm!640479) (not b!7048622) (not d!2201704) (not b!7048515) (not setNonEmpty!49526) (not bm!640486) (not d!2201694) (not b!7048512) (not b!7048606) (not d!2201712) (not b!7048611) (not d!2201684) (not d!2201660) (not d!2201670) (not b!7048568) (not b!7048590) (not b_lambda!267917) (not d!2201714) (not d!2201706) (not d!2201678) (not d!2201672) (not d!2201666) (not b!7048531) (not d!2201600) (not bs!1875313) (not d!2201690) (not d!2201696) (not bm!640483) (not b!7048616) (not b!7048609) (not b_lambda!267921) (not bm!640485) (not b!7048516) (not bm!640476) (not d!2201700) (not b_lambda!267915) (not d!2201722) tp_is_empty!44259 (not bm!640473) (not d!2201594) (not bm!640475) (not b!7048563) (not b!7048556) (not d!2201656) (not b_lambda!267919) (not b!7048543) (not d!2201716) (not b!7048499) (not b!7048608) (not bs!1875315) (not bs!1875312) (not d!2201668) (not b!7048532) (not b!7048567) (not b!7048610) (not d!2201692) (not b!7048593) (not b!7048589) (not b!7048407) (not b!7048533) (not d!2201658) (not b!7048569) (not b!7048408) (not d!2201702) (not b!7048596) (not d!2201664))
(check-sat)
(get-model)

(declare-fun d!2201960 () Bool)

(declare-fun res!2877612 () Bool)

(declare-fun e!4237539 () Bool)

(assert (=> d!2201960 (=> res!2877612 e!4237539)))

(assert (=> d!2201960 (= res!2877612 ((_ is Nil!67957) lt!2528236))))

(assert (=> d!2201960 (= (forall!16454 lt!2528236 lambda!418340) e!4237539)))

(declare-fun b!7048937 () Bool)

(declare-fun e!4237540 () Bool)

(assert (=> b!7048937 (= e!4237539 e!4237540)))

(declare-fun res!2877613 () Bool)

(assert (=> b!7048937 (=> (not res!2877613) (not e!4237540))))

(assert (=> b!7048937 (= res!2877613 (dynLambda!27535 lambda!418340 (h!74405 lt!2528236)))))

(declare-fun b!7048939 () Bool)

(assert (=> b!7048939 (= e!4237540 (forall!16454 (t!381858 lt!2528236) lambda!418340))))

(assert (= (and d!2201960 (not res!2877612)) b!7048937))

(assert (= (and b!7048937 res!2877613) b!7048939))

(declare-fun b_lambda!267945 () Bool)

(assert (=> (not b_lambda!267945) (not b!7048937)))

(declare-fun m!7764190 () Bool)

(assert (=> b!7048937 m!7764190))

(declare-fun m!7764192 () Bool)

(assert (=> b!7048939 m!7764192))

(assert (=> d!2201672 d!2201960))

(declare-fun d!2201966 () Bool)

(assert (=> d!2201966 (= (flatMap!2464 lt!2528243 lambda!418349) (choose!53623 lt!2528243 lambda!418349))))

(declare-fun bs!1875436 () Bool)

(assert (= bs!1875436 d!2201966))

(declare-fun m!7764194 () Bool)

(assert (=> bs!1875436 m!7764194))

(assert (=> d!2201690 d!2201966))

(declare-fun bs!1875439 () Bool)

(declare-fun d!2201968 () Bool)

(assert (= bs!1875439 (and d!2201968 b!7048289)))

(declare-fun lambda!418380 () Int)

(assert (=> bs!1875439 (not (= lambda!418380 lambda!418305))))

(declare-fun bs!1875443 () Bool)

(assert (= bs!1875443 (and d!2201968 d!2201666)))

(assert (=> bs!1875443 (not (= lambda!418380 lambda!418337))))

(declare-fun bs!1875446 () Bool)

(assert (= bs!1875446 (and d!2201968 d!2201672)))

(assert (=> bs!1875446 (not (= lambda!418380 lambda!418340))))

(assert (=> d!2201968 (= (nullableZipper!2618 lt!2528256) (exists!3481 lt!2528256 lambda!418380))))

(declare-fun bs!1875450 () Bool)

(assert (= bs!1875450 d!2201968))

(declare-fun m!7764238 () Bool)

(assert (=> bs!1875450 m!7764238))

(assert (=> b!7048522 d!2201968))

(assert (=> bs!1875315 d!2201698))

(declare-fun d!2201978 () Bool)

(assert (=> d!2201978 (= (isDefined!13615 lt!2528347) (not (isEmpty!39672 lt!2528347)))))

(declare-fun bs!1875452 () Bool)

(assert (= bs!1875452 d!2201978))

(declare-fun m!7764242 () Bool)

(assert (=> bs!1875452 m!7764242))

(assert (=> d!2201702 d!2201978))

(declare-fun d!2201980 () Bool)

(declare-fun c!1312867 () Bool)

(assert (=> d!2201980 (= c!1312867 (isEmpty!39671 Nil!67956))))

(declare-fun e!4237554 () Bool)

(assert (=> d!2201980 (= (matchZipper!3057 lt!2528240 Nil!67956) e!4237554)))

(declare-fun b!7048971 () Bool)

(assert (=> b!7048971 (= e!4237554 (nullableZipper!2618 lt!2528240))))

(declare-fun b!7048972 () Bool)

(assert (=> b!7048972 (= e!4237554 (matchZipper!3057 (derivationStepZipper!2973 lt!2528240 (head!14315 Nil!67956)) (tail!13646 Nil!67956)))))

(assert (= (and d!2201980 c!1312867) b!7048971))

(assert (= (and d!2201980 (not c!1312867)) b!7048972))

(declare-fun m!7764246 () Bool)

(assert (=> d!2201980 m!7764246))

(assert (=> b!7048971 m!7763616))

(declare-fun m!7764248 () Bool)

(assert (=> b!7048972 m!7764248))

(assert (=> b!7048972 m!7764248))

(declare-fun m!7764250 () Bool)

(assert (=> b!7048972 m!7764250))

(declare-fun m!7764252 () Bool)

(assert (=> b!7048972 m!7764252))

(assert (=> b!7048972 m!7764250))

(assert (=> b!7048972 m!7764252))

(declare-fun m!7764254 () Bool)

(assert (=> b!7048972 m!7764254))

(assert (=> d!2201702 d!2201980))

(declare-fun d!2201984 () Bool)

(declare-fun e!4237557 () Bool)

(assert (=> d!2201984 e!4237557))

(declare-fun res!2877617 () Bool)

(assert (=> d!2201984 (=> (not res!2877617) (not e!4237557))))

(declare-fun lt!2528403 () List!68080)

(assert (=> d!2201984 (= res!2877617 (= (content!13633 lt!2528403) ((_ map or) (content!13633 Nil!67956) (content!13633 (t!381857 s!7408)))))))

(declare-fun e!4237558 () List!68080)

(assert (=> d!2201984 (= lt!2528403 e!4237558)))

(declare-fun c!1312868 () Bool)

(assert (=> d!2201984 (= c!1312868 ((_ is Nil!67956) Nil!67956))))

(assert (=> d!2201984 (= (++!15606 Nil!67956 (t!381857 s!7408)) lt!2528403)))

(declare-fun b!7048984 () Bool)

(assert (=> b!7048984 (= e!4237557 (or (not (= (t!381857 s!7408) Nil!67956)) (= lt!2528403 Nil!67956)))))

(declare-fun b!7048982 () Bool)

(assert (=> b!7048982 (= e!4237558 (Cons!67956 (h!74404 Nil!67956) (++!15606 (t!381857 Nil!67956) (t!381857 s!7408))))))

(declare-fun b!7048981 () Bool)

(assert (=> b!7048981 (= e!4237558 (t!381857 s!7408))))

(declare-fun b!7048983 () Bool)

(declare-fun res!2877618 () Bool)

(assert (=> b!7048983 (=> (not res!2877618) (not e!4237557))))

(assert (=> b!7048983 (= res!2877618 (= (size!41125 lt!2528403) (+ (size!41125 Nil!67956) (size!41125 (t!381857 s!7408)))))))

(assert (= (and d!2201984 c!1312868) b!7048981))

(assert (= (and d!2201984 (not c!1312868)) b!7048982))

(assert (= (and d!2201984 res!2877617) b!7048983))

(assert (= (and b!7048983 res!2877618) b!7048984))

(declare-fun m!7764256 () Bool)

(assert (=> d!2201984 m!7764256))

(declare-fun m!7764258 () Bool)

(assert (=> d!2201984 m!7764258))

(declare-fun m!7764260 () Bool)

(assert (=> d!2201984 m!7764260))

(declare-fun m!7764262 () Bool)

(assert (=> b!7048982 m!7764262))

(declare-fun m!7764264 () Bool)

(assert (=> b!7048983 m!7764264))

(declare-fun m!7764266 () Bool)

(assert (=> b!7048983 m!7764266))

(declare-fun m!7764268 () Bool)

(assert (=> b!7048983 m!7764268))

(assert (=> d!2201702 d!2201984))

(declare-fun d!2201986 () Bool)

(declare-fun c!1312871 () Bool)

(assert (=> d!2201986 (= c!1312871 ((_ is Nil!67955) lt!2528313))))

(declare-fun e!4237568 () (InoxSet Regex!17517))

(assert (=> d!2201986 (= (content!13631 lt!2528313) e!4237568)))

(declare-fun b!7049004 () Bool)

(assert (=> b!7049004 (= e!4237568 ((as const (Array Regex!17517 Bool)) false))))

(declare-fun b!7049005 () Bool)

(assert (=> b!7049005 (= e!4237568 ((_ map or) (store ((as const (Array Regex!17517 Bool)) false) (h!74403 lt!2528313) true) (content!13631 (t!381856 lt!2528313))))))

(assert (= (and d!2201986 c!1312871) b!7049004))

(assert (= (and d!2201986 (not c!1312871)) b!7049005))

(declare-fun m!7764296 () Bool)

(assert (=> b!7049005 m!7764296))

(declare-fun m!7764298 () Bool)

(assert (=> b!7049005 m!7764298))

(assert (=> d!2201656 d!2201986))

(declare-fun d!2202008 () Bool)

(declare-fun c!1312872 () Bool)

(assert (=> d!2202008 (= c!1312872 ((_ is Nil!67955) lt!2528246))))

(declare-fun e!4237569 () (InoxSet Regex!17517))

(assert (=> d!2202008 (= (content!13631 lt!2528246) e!4237569)))

(declare-fun b!7049006 () Bool)

(assert (=> b!7049006 (= e!4237569 ((as const (Array Regex!17517 Bool)) false))))

(declare-fun b!7049007 () Bool)

(assert (=> b!7049007 (= e!4237569 ((_ map or) (store ((as const (Array Regex!17517 Bool)) false) (h!74403 lt!2528246) true) (content!13631 (t!381856 lt!2528246))))))

(assert (= (and d!2202008 c!1312872) b!7049006))

(assert (= (and d!2202008 (not c!1312872)) b!7049007))

(declare-fun m!7764300 () Bool)

(assert (=> b!7049007 m!7764300))

(declare-fun m!7764302 () Bool)

(assert (=> b!7049007 m!7764302))

(assert (=> d!2201656 d!2202008))

(declare-fun d!2202010 () Bool)

(declare-fun c!1312873 () Bool)

(assert (=> d!2202010 (= c!1312873 ((_ is Nil!67955) (exprs!7013 ct2!306)))))

(declare-fun e!4237570 () (InoxSet Regex!17517))

(assert (=> d!2202010 (= (content!13631 (exprs!7013 ct2!306)) e!4237570)))

(declare-fun b!7049008 () Bool)

(assert (=> b!7049008 (= e!4237570 ((as const (Array Regex!17517 Bool)) false))))

(declare-fun b!7049009 () Bool)

(assert (=> b!7049009 (= e!4237570 ((_ map or) (store ((as const (Array Regex!17517 Bool)) false) (h!74403 (exprs!7013 ct2!306)) true) (content!13631 (t!381856 (exprs!7013 ct2!306)))))))

(assert (= (and d!2202010 c!1312873) b!7049008))

(assert (= (and d!2202010 (not c!1312873)) b!7049009))

(declare-fun m!7764304 () Bool)

(assert (=> b!7049009 m!7764304))

(declare-fun m!7764306 () Bool)

(assert (=> b!7049009 m!7764306))

(assert (=> d!2201656 d!2202010))

(declare-fun d!2202012 () Bool)

(declare-fun res!2877623 () Bool)

(declare-fun e!4237575 () Bool)

(assert (=> d!2202012 (=> res!2877623 e!4237575)))

(assert (=> d!2202012 (= res!2877623 ((_ is Nil!67955) (exprs!7013 setElem!49520)))))

(assert (=> d!2202012 (= (forall!16453 (exprs!7013 setElem!49520) lambda!418319) e!4237575)))

(declare-fun b!7049014 () Bool)

(declare-fun e!4237576 () Bool)

(assert (=> b!7049014 (= e!4237575 e!4237576)))

(declare-fun res!2877624 () Bool)

(assert (=> b!7049014 (=> (not res!2877624) (not e!4237576))))

(declare-fun dynLambda!27539 (Int Regex!17517) Bool)

(assert (=> b!7049014 (= res!2877624 (dynLambda!27539 lambda!418319 (h!74403 (exprs!7013 setElem!49520))))))

(declare-fun b!7049015 () Bool)

(assert (=> b!7049015 (= e!4237576 (forall!16453 (t!381856 (exprs!7013 setElem!49520)) lambda!418319))))

(assert (= (and d!2202012 (not res!2877623)) b!7049014))

(assert (= (and b!7049014 res!2877624) b!7049015))

(declare-fun b_lambda!267975 () Bool)

(assert (=> (not b_lambda!267975) (not b!7049014)))

(declare-fun m!7764308 () Bool)

(assert (=> b!7049014 m!7764308))

(declare-fun m!7764310 () Bool)

(assert (=> b!7049015 m!7764310))

(assert (=> d!2201594 d!2202012))

(declare-fun b!7049018 () Bool)

(declare-fun res!2877625 () Bool)

(declare-fun e!4237577 () Bool)

(assert (=> b!7049018 (=> (not res!2877625) (not e!4237577))))

(declare-fun lt!2528405 () List!68079)

(assert (=> b!7049018 (= res!2877625 (= (size!41124 lt!2528405) (+ (size!41124 (t!381856 (exprs!7013 lt!2528249))) (size!41124 (exprs!7013 ct2!306)))))))

(declare-fun b!7049019 () Bool)

(assert (=> b!7049019 (= e!4237577 (or (not (= (exprs!7013 ct2!306) Nil!67955)) (= lt!2528405 (t!381856 (exprs!7013 lt!2528249)))))))

(declare-fun b!7049017 () Bool)

(declare-fun e!4237578 () List!68079)

(assert (=> b!7049017 (= e!4237578 (Cons!67955 (h!74403 (t!381856 (exprs!7013 lt!2528249))) (++!15605 (t!381856 (t!381856 (exprs!7013 lt!2528249))) (exprs!7013 ct2!306))))))

(declare-fun b!7049016 () Bool)

(assert (=> b!7049016 (= e!4237578 (exprs!7013 ct2!306))))

(declare-fun d!2202014 () Bool)

(assert (=> d!2202014 e!4237577))

(declare-fun res!2877626 () Bool)

(assert (=> d!2202014 (=> (not res!2877626) (not e!4237577))))

(assert (=> d!2202014 (= res!2877626 (= (content!13631 lt!2528405) ((_ map or) (content!13631 (t!381856 (exprs!7013 lt!2528249))) (content!13631 (exprs!7013 ct2!306)))))))

(assert (=> d!2202014 (= lt!2528405 e!4237578)))

(declare-fun c!1312874 () Bool)

(assert (=> d!2202014 (= c!1312874 ((_ is Nil!67955) (t!381856 (exprs!7013 lt!2528249))))))

(assert (=> d!2202014 (= (++!15605 (t!381856 (exprs!7013 lt!2528249)) (exprs!7013 ct2!306)) lt!2528405)))

(assert (= (and d!2202014 c!1312874) b!7049016))

(assert (= (and d!2202014 (not c!1312874)) b!7049017))

(assert (= (and d!2202014 res!2877626) b!7049018))

(assert (= (and b!7049018 res!2877625) b!7049019))

(declare-fun m!7764312 () Bool)

(assert (=> b!7049018 m!7764312))

(declare-fun m!7764314 () Bool)

(assert (=> b!7049018 m!7764314))

(assert (=> b!7049018 m!7763486))

(declare-fun m!7764316 () Bool)

(assert (=> b!7049017 m!7764316))

(declare-fun m!7764318 () Bool)

(assert (=> d!2202014 m!7764318))

(declare-fun m!7764320 () Bool)

(assert (=> d!2202014 m!7764320))

(assert (=> d!2202014 m!7763494))

(assert (=> b!7048515 d!2202014))

(declare-fun d!2202016 () Bool)

(declare-fun c!1312875 () Bool)

(assert (=> d!2202016 (= c!1312875 (isEmpty!39671 (_2!37385 (get!23823 lt!2528347))))))

(declare-fun e!4237579 () Bool)

(assert (=> d!2202016 (= (matchZipper!3057 lt!2528241 (_2!37385 (get!23823 lt!2528347))) e!4237579)))

(declare-fun b!7049020 () Bool)

(assert (=> b!7049020 (= e!4237579 (nullableZipper!2618 lt!2528241))))

(declare-fun b!7049021 () Bool)

(assert (=> b!7049021 (= e!4237579 (matchZipper!3057 (derivationStepZipper!2973 lt!2528241 (head!14315 (_2!37385 (get!23823 lt!2528347)))) (tail!13646 (_2!37385 (get!23823 lt!2528347)))))))

(assert (= (and d!2202016 c!1312875) b!7049020))

(assert (= (and d!2202016 (not c!1312875)) b!7049021))

(declare-fun m!7764322 () Bool)

(assert (=> d!2202016 m!7764322))

(assert (=> b!7049020 m!7763684))

(declare-fun m!7764324 () Bool)

(assert (=> b!7049021 m!7764324))

(assert (=> b!7049021 m!7764324))

(declare-fun m!7764326 () Bool)

(assert (=> b!7049021 m!7764326))

(declare-fun m!7764328 () Bool)

(assert (=> b!7049021 m!7764328))

(assert (=> b!7049021 m!7764326))

(assert (=> b!7049021 m!7764328))

(declare-fun m!7764330 () Bool)

(assert (=> b!7049021 m!7764330))

(assert (=> b!7048596 d!2202016))

(declare-fun d!2202018 () Bool)

(assert (=> d!2202018 (= (get!23823 lt!2528347) (v!53203 lt!2528347))))

(assert (=> b!7048596 d!2202018))

(declare-fun b!7049022 () Bool)

(declare-fun e!4237581 () Bool)

(assert (=> b!7049022 (= e!4237581 (nullable!7228 (h!74403 (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528249)))))))))

(declare-fun b!7049024 () Bool)

(declare-fun e!4237582 () (InoxSet Context!13026))

(assert (=> b!7049024 (= e!4237582 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640546 () Bool)

(declare-fun call!640551 () (InoxSet Context!13026))

(assert (=> bm!640546 (= call!640551 (derivationStepZipperDown!2181 (h!74403 (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528249))))) (Context!13027 (t!381856 (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528249)))))) (h!74404 s!7408)))))

(declare-fun b!7049025 () Bool)

(assert (=> b!7049025 (= e!4237582 call!640551)))

(declare-fun e!4237580 () (InoxSet Context!13026))

(declare-fun b!7049026 () Bool)

(assert (=> b!7049026 (= e!4237580 ((_ map or) call!640551 (derivationStepZipperUp!2127 (Context!13027 (t!381856 (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528249)))))) (h!74404 s!7408))))))

(declare-fun b!7049023 () Bool)

(assert (=> b!7049023 (= e!4237580 e!4237582)))

(declare-fun c!1312877 () Bool)

(assert (=> b!7049023 (= c!1312877 ((_ is Cons!67955) (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528249))))))))

(declare-fun d!2202020 () Bool)

(declare-fun c!1312876 () Bool)

(assert (=> d!2202020 (= c!1312876 e!4237581)))

(declare-fun res!2877627 () Bool)

(assert (=> d!2202020 (=> (not res!2877627) (not e!4237581))))

(assert (=> d!2202020 (= res!2877627 ((_ is Cons!67955) (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528249))))))))

(assert (=> d!2202020 (= (derivationStepZipperUp!2127 (Context!13027 (t!381856 (exprs!7013 lt!2528249))) (h!74404 s!7408)) e!4237580)))

(assert (= (and d!2202020 res!2877627) b!7049022))

(assert (= (and d!2202020 c!1312876) b!7049026))

(assert (= (and d!2202020 (not c!1312876)) b!7049023))

(assert (= (and b!7049023 c!1312877) b!7049025))

(assert (= (and b!7049023 (not c!1312877)) b!7049024))

(assert (= (or b!7049026 b!7049025) bm!640546))

(declare-fun m!7764332 () Bool)

(assert (=> b!7049022 m!7764332))

(declare-fun m!7764334 () Bool)

(assert (=> bm!640546 m!7764334))

(declare-fun m!7764336 () Bool)

(assert (=> b!7049026 m!7764336))

(assert (=> b!7048560 d!2202020))

(declare-fun d!2202022 () Bool)

(declare-fun lt!2528408 () Int)

(assert (=> d!2202022 (>= lt!2528408 0)))

(declare-fun e!4237585 () Int)

(assert (=> d!2202022 (= lt!2528408 e!4237585)))

(declare-fun c!1312880 () Bool)

(assert (=> d!2202022 (= c!1312880 ((_ is Nil!67955) lt!2528313))))

(assert (=> d!2202022 (= (size!41124 lt!2528313) lt!2528408)))

(declare-fun b!7049031 () Bool)

(assert (=> b!7049031 (= e!4237585 0)))

(declare-fun b!7049032 () Bool)

(assert (=> b!7049032 (= e!4237585 (+ 1 (size!41124 (t!381856 lt!2528313))))))

(assert (= (and d!2202022 c!1312880) b!7049031))

(assert (= (and d!2202022 (not c!1312880)) b!7049032))

(declare-fun m!7764338 () Bool)

(assert (=> b!7049032 m!7764338))

(assert (=> b!7048512 d!2202022))

(declare-fun d!2202024 () Bool)

(declare-fun lt!2528409 () Int)

(assert (=> d!2202024 (>= lt!2528409 0)))

(declare-fun e!4237586 () Int)

(assert (=> d!2202024 (= lt!2528409 e!4237586)))

(declare-fun c!1312881 () Bool)

(assert (=> d!2202024 (= c!1312881 ((_ is Nil!67955) lt!2528246))))

(assert (=> d!2202024 (= (size!41124 lt!2528246) lt!2528409)))

(declare-fun b!7049033 () Bool)

(assert (=> b!7049033 (= e!4237586 0)))

(declare-fun b!7049034 () Bool)

(assert (=> b!7049034 (= e!4237586 (+ 1 (size!41124 (t!381856 lt!2528246))))))

(assert (= (and d!2202024 c!1312881) b!7049033))

(assert (= (and d!2202024 (not c!1312881)) b!7049034))

(declare-fun m!7764340 () Bool)

(assert (=> b!7049034 m!7764340))

(assert (=> b!7048512 d!2202024))

(declare-fun d!2202026 () Bool)

(declare-fun lt!2528410 () Int)

(assert (=> d!2202026 (>= lt!2528410 0)))

(declare-fun e!4237587 () Int)

(assert (=> d!2202026 (= lt!2528410 e!4237587)))

(declare-fun c!1312882 () Bool)

(assert (=> d!2202026 (= c!1312882 ((_ is Nil!67955) (exprs!7013 ct2!306)))))

(assert (=> d!2202026 (= (size!41124 (exprs!7013 ct2!306)) lt!2528410)))

(declare-fun b!7049035 () Bool)

(assert (=> b!7049035 (= e!4237587 0)))

(declare-fun b!7049036 () Bool)

(assert (=> b!7049036 (= e!4237587 (+ 1 (size!41124 (t!381856 (exprs!7013 ct2!306)))))))

(assert (= (and d!2202026 c!1312882) b!7049035))

(assert (= (and d!2202026 (not c!1312882)) b!7049036))

(declare-fun m!7764342 () Bool)

(assert (=> b!7049036 m!7764342))

(assert (=> b!7048512 d!2202026))

(declare-fun b!7049037 () Bool)

(declare-fun e!4237590 () (InoxSet Context!13026))

(assert (=> b!7049037 (= e!4237590 (store ((as const (Array Context!13026 Bool)) false) (Context!13027 (t!381856 (exprs!7013 lt!2528249))) true))))

(declare-fun b!7049038 () Bool)

(declare-fun c!1312887 () Bool)

(declare-fun e!4237589 () Bool)

(assert (=> b!7049038 (= c!1312887 e!4237589)))

(declare-fun res!2877628 () Bool)

(assert (=> b!7049038 (=> (not res!2877628) (not e!4237589))))

(assert (=> b!7049038 (= res!2877628 ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun e!4237593 () (InoxSet Context!13026))

(declare-fun e!4237588 () (InoxSet Context!13026))

(assert (=> b!7049038 (= e!4237593 e!4237588)))

(declare-fun bm!640547 () Bool)

(declare-fun call!640556 () (InoxSet Context!13026))

(declare-fun call!640553 () (InoxSet Context!13026))

(assert (=> bm!640547 (= call!640556 call!640553)))

(declare-fun bm!640548 () Bool)

(declare-fun call!640555 () (InoxSet Context!13026))

(assert (=> bm!640548 (= call!640555 call!640556)))

(declare-fun b!7049039 () Bool)

(declare-fun e!4237591 () (InoxSet Context!13026))

(assert (=> b!7049039 (= e!4237588 e!4237591)))

(declare-fun c!1312885 () Bool)

(assert (=> b!7049039 (= c!1312885 ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7049040 () Bool)

(declare-fun call!640554 () (InoxSet Context!13026))

(assert (=> b!7049040 (= e!4237593 ((_ map or) call!640554 call!640553))))

(declare-fun b!7049041 () Bool)

(assert (=> b!7049041 (= e!4237588 ((_ map or) call!640554 call!640556))))

(declare-fun b!7049042 () Bool)

(assert (=> b!7049042 (= e!4237590 e!4237593)))

(declare-fun c!1312883 () Bool)

(assert (=> b!7049042 (= c!1312883 ((_ is Union!17517) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7049043 () Bool)

(declare-fun e!4237592 () (InoxSet Context!13026))

(assert (=> b!7049043 (= e!4237592 call!640555)))

(declare-fun b!7049044 () Bool)

(assert (=> b!7049044 (= e!4237591 call!640555)))

(declare-fun bm!640549 () Bool)

(declare-fun call!640557 () List!68079)

(assert (=> bm!640549 (= call!640554 (derivationStepZipperDown!2181 (ite c!1312883 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))) (ite c!1312883 (Context!13027 (t!381856 (exprs!7013 lt!2528249))) (Context!13027 call!640557)) (h!74404 s!7408)))))

(declare-fun b!7049045 () Bool)

(declare-fun c!1312884 () Bool)

(assert (=> b!7049045 (= c!1312884 ((_ is Star!17517) (h!74403 (exprs!7013 lt!2528249))))))

(assert (=> b!7049045 (= e!4237591 e!4237592)))

(declare-fun b!7049046 () Bool)

(assert (=> b!7049046 (= e!4237589 (nullable!7228 (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))

(declare-fun d!2202028 () Bool)

(declare-fun c!1312886 () Bool)

(assert (=> d!2202028 (= c!1312886 (and ((_ is ElementMatch!17517) (h!74403 (exprs!7013 lt!2528249))) (= (c!1312641 (h!74403 (exprs!7013 lt!2528249))) (h!74404 s!7408))))))

(assert (=> d!2202028 (= (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) (Context!13027 (t!381856 (exprs!7013 lt!2528249))) (h!74404 s!7408)) e!4237590)))

(declare-fun bm!640550 () Bool)

(declare-fun call!640552 () List!68079)

(assert (=> bm!640550 (= call!640552 call!640557)))

(declare-fun b!7049047 () Bool)

(assert (=> b!7049047 (= e!4237592 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640551 () Bool)

(assert (=> bm!640551 (= call!640553 (derivationStepZipperDown!2181 (ite c!1312883 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312887 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312885 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))) (ite (or c!1312883 c!1312887) (Context!13027 (t!381856 (exprs!7013 lt!2528249))) (Context!13027 call!640552)) (h!74404 s!7408)))))

(declare-fun bm!640552 () Bool)

(assert (=> bm!640552 (= call!640557 ($colon$colon!2611 (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528249)))) (ite (or c!1312887 c!1312885) (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (h!74403 (exprs!7013 lt!2528249)))))))

(assert (= (and d!2202028 c!1312886) b!7049037))

(assert (= (and d!2202028 (not c!1312886)) b!7049042))

(assert (= (and b!7049042 c!1312883) b!7049040))

(assert (= (and b!7049042 (not c!1312883)) b!7049038))

(assert (= (and b!7049038 res!2877628) b!7049046))

(assert (= (and b!7049038 c!1312887) b!7049041))

(assert (= (and b!7049038 (not c!1312887)) b!7049039))

(assert (= (and b!7049039 c!1312885) b!7049044))

(assert (= (and b!7049039 (not c!1312885)) b!7049045))

(assert (= (and b!7049045 c!1312884) b!7049043))

(assert (= (and b!7049045 (not c!1312884)) b!7049047))

(assert (= (or b!7049044 b!7049043) bm!640550))

(assert (= (or b!7049044 b!7049043) bm!640548))

(assert (= (or b!7049041 bm!640548) bm!640547))

(assert (= (or b!7049041 bm!640550) bm!640552))

(assert (= (or b!7049040 b!7049041) bm!640549))

(assert (= (or b!7049040 bm!640547) bm!640551))

(declare-fun m!7764344 () Bool)

(assert (=> bm!640552 m!7764344))

(declare-fun m!7764346 () Bool)

(assert (=> bm!640549 m!7764346))

(declare-fun m!7764348 () Bool)

(assert (=> b!7049037 m!7764348))

(assert (=> b!7049046 m!7763478))

(declare-fun m!7764350 () Bool)

(assert (=> bm!640551 m!7764350))

(assert (=> bm!640479 d!2202028))

(declare-fun bs!1875464 () Bool)

(declare-fun d!2202030 () Bool)

(assert (= bs!1875464 (and d!2202030 b!7048289)))

(declare-fun lambda!418381 () Int)

(assert (=> bs!1875464 (not (= lambda!418381 lambda!418305))))

(declare-fun bs!1875465 () Bool)

(assert (= bs!1875465 (and d!2202030 d!2201666)))

(assert (=> bs!1875465 (not (= lambda!418381 lambda!418337))))

(declare-fun bs!1875466 () Bool)

(assert (= bs!1875466 (and d!2202030 d!2201672)))

(assert (=> bs!1875466 (not (= lambda!418381 lambda!418340))))

(declare-fun bs!1875467 () Bool)

(assert (= bs!1875467 (and d!2202030 d!2201968)))

(assert (=> bs!1875467 (= lambda!418381 lambda!418380)))

(assert (=> d!2202030 (= (nullableZipper!2618 lt!2528241) (exists!3481 lt!2528241 lambda!418381))))

(declare-fun bs!1875468 () Bool)

(assert (= bs!1875468 d!2202030))

(declare-fun m!7764352 () Bool)

(assert (=> bs!1875468 m!7764352))

(assert (=> b!7048608 d!2202030))

(declare-fun d!2202032 () Bool)

(declare-fun c!1312888 () Bool)

(assert (=> d!2202032 (= c!1312888 (isEmpty!39671 (tail!13646 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))))))

(declare-fun e!4237594 () Bool)

(assert (=> d!2202032 (= (matchZipper!3057 (derivationStepZipper!2973 lt!2528243 (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))) (tail!13646 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))) e!4237594)))

(declare-fun b!7049048 () Bool)

(assert (=> b!7049048 (= e!4237594 (nullableZipper!2618 (derivationStepZipper!2973 lt!2528243 (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))))))))

(declare-fun b!7049049 () Bool)

(assert (=> b!7049049 (= e!4237594 (matchZipper!3057 (derivationStepZipper!2973 (derivationStepZipper!2973 lt!2528243 (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))) (head!14315 (tail!13646 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))))) (tail!13646 (tail!13646 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))))))))

(assert (= (and d!2202032 c!1312888) b!7049048))

(assert (= (and d!2202032 (not c!1312888)) b!7049049))

(assert (=> d!2202032 m!7763702))

(declare-fun m!7764354 () Bool)

(assert (=> d!2202032 m!7764354))

(assert (=> b!7049048 m!7763700))

(declare-fun m!7764356 () Bool)

(assert (=> b!7049048 m!7764356))

(assert (=> b!7049049 m!7763702))

(declare-fun m!7764358 () Bool)

(assert (=> b!7049049 m!7764358))

(assert (=> b!7049049 m!7763700))

(assert (=> b!7049049 m!7764358))

(declare-fun m!7764360 () Bool)

(assert (=> b!7049049 m!7764360))

(assert (=> b!7049049 m!7763702))

(declare-fun m!7764362 () Bool)

(assert (=> b!7049049 m!7764362))

(assert (=> b!7049049 m!7764360))

(assert (=> b!7049049 m!7764362))

(declare-fun m!7764364 () Bool)

(assert (=> b!7049049 m!7764364))

(assert (=> b!7048611 d!2202032))

(declare-fun bs!1875469 () Bool)

(declare-fun d!2202034 () Bool)

(assert (= bs!1875469 (and d!2202034 b!7048286)))

(declare-fun lambda!418382 () Int)

(assert (=> bs!1875469 (= (= (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))) (h!74404 s!7408)) (= lambda!418382 lambda!418308))))

(declare-fun bs!1875470 () Bool)

(assert (= bs!1875470 (and d!2202034 d!2201690)))

(assert (=> bs!1875470 (= (= (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))) (h!74404 s!7408)) (= lambda!418382 lambda!418349))))

(declare-fun bs!1875471 () Bool)

(assert (= bs!1875471 (and d!2202034 d!2201692)))

(assert (=> bs!1875471 (= (= (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))) (h!74404 s!7408)) (= lambda!418382 lambda!418350))))

(assert (=> d!2202034 true))

(assert (=> d!2202034 (= (derivationStepZipper!2973 lt!2528243 (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))) (flatMap!2464 lt!2528243 lambda!418382))))

(declare-fun bs!1875472 () Bool)

(assert (= bs!1875472 d!2202034))

(declare-fun m!7764366 () Bool)

(assert (=> bs!1875472 m!7764366))

(assert (=> b!7048611 d!2202034))

(declare-fun d!2202036 () Bool)

(assert (=> d!2202036 (= (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))) (h!74404 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))))))

(assert (=> b!7048611 d!2202036))

(declare-fun d!2202038 () Bool)

(assert (=> d!2202038 (= (tail!13646 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))) (t!381857 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))))))

(assert (=> b!7048611 d!2202038))

(declare-fun d!2202040 () Bool)

(declare-fun e!4237595 () Bool)

(assert (=> d!2202040 e!4237595))

(declare-fun res!2877629 () Bool)

(assert (=> d!2202040 (=> (not res!2877629) (not e!4237595))))

(declare-fun lt!2528411 () List!68080)

(assert (=> d!2202040 (= res!2877629 (= (content!13633 lt!2528411) ((_ map or) (content!13633 (_1!37385 (get!23823 lt!2528347))) (content!13633 (_2!37385 (get!23823 lt!2528347))))))))

(declare-fun e!4237596 () List!68080)

(assert (=> d!2202040 (= lt!2528411 e!4237596)))

(declare-fun c!1312889 () Bool)

(assert (=> d!2202040 (= c!1312889 ((_ is Nil!67956) (_1!37385 (get!23823 lt!2528347))))))

(assert (=> d!2202040 (= (++!15606 (_1!37385 (get!23823 lt!2528347)) (_2!37385 (get!23823 lt!2528347))) lt!2528411)))

(declare-fun b!7049053 () Bool)

(assert (=> b!7049053 (= e!4237595 (or (not (= (_2!37385 (get!23823 lt!2528347)) Nil!67956)) (= lt!2528411 (_1!37385 (get!23823 lt!2528347)))))))

(declare-fun b!7049051 () Bool)

(assert (=> b!7049051 (= e!4237596 (Cons!67956 (h!74404 (_1!37385 (get!23823 lt!2528347))) (++!15606 (t!381857 (_1!37385 (get!23823 lt!2528347))) (_2!37385 (get!23823 lt!2528347)))))))

(declare-fun b!7049050 () Bool)

(assert (=> b!7049050 (= e!4237596 (_2!37385 (get!23823 lt!2528347)))))

(declare-fun b!7049052 () Bool)

(declare-fun res!2877630 () Bool)

(assert (=> b!7049052 (=> (not res!2877630) (not e!4237595))))

(assert (=> b!7049052 (= res!2877630 (= (size!41125 lt!2528411) (+ (size!41125 (_1!37385 (get!23823 lt!2528347))) (size!41125 (_2!37385 (get!23823 lt!2528347))))))))

(assert (= (and d!2202040 c!1312889) b!7049050))

(assert (= (and d!2202040 (not c!1312889)) b!7049051))

(assert (= (and d!2202040 res!2877629) b!7049052))

(assert (= (and b!7049052 res!2877630) b!7049053))

(declare-fun m!7764368 () Bool)

(assert (=> d!2202040 m!7764368))

(declare-fun m!7764370 () Bool)

(assert (=> d!2202040 m!7764370))

(declare-fun m!7764372 () Bool)

(assert (=> d!2202040 m!7764372))

(declare-fun m!7764374 () Bool)

(assert (=> b!7049051 m!7764374))

(declare-fun m!7764376 () Bool)

(assert (=> b!7049052 m!7764376))

(declare-fun m!7764378 () Bool)

(assert (=> b!7049052 m!7764378))

(declare-fun m!7764380 () Bool)

(assert (=> b!7049052 m!7764380))

(assert (=> b!7048594 d!2202040))

(assert (=> b!7048594 d!2202018))

(declare-fun d!2202042 () Bool)

(declare-fun e!4237597 () Bool)

(assert (=> d!2202042 e!4237597))

(declare-fun res!2877631 () Bool)

(assert (=> d!2202042 (=> (not res!2877631) (not e!4237597))))

(declare-fun lt!2528412 () List!68080)

(assert (=> d!2202042 (= res!2877631 (= (content!13633 lt!2528412) ((_ map or) (content!13633 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956))) (content!13633 (t!381857 (t!381857 s!7408))))))))

(declare-fun e!4237598 () List!68080)

(assert (=> d!2202042 (= lt!2528412 e!4237598)))

(declare-fun c!1312890 () Bool)

(assert (=> d!2202042 (= c!1312890 ((_ is Nil!67956) (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956))))))

(assert (=> d!2202042 (= (++!15606 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (t!381857 (t!381857 s!7408))) lt!2528412)))

(declare-fun b!7049057 () Bool)

(assert (=> b!7049057 (= e!4237597 (or (not (= (t!381857 (t!381857 s!7408)) Nil!67956)) (= lt!2528412 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)))))))

(declare-fun b!7049055 () Bool)

(assert (=> b!7049055 (= e!4237598 (Cons!67956 (h!74404 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956))) (++!15606 (t!381857 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956))) (t!381857 (t!381857 s!7408)))))))

(declare-fun b!7049054 () Bool)

(assert (=> b!7049054 (= e!4237598 (t!381857 (t!381857 s!7408)))))

(declare-fun b!7049056 () Bool)

(declare-fun res!2877632 () Bool)

(assert (=> b!7049056 (=> (not res!2877632) (not e!4237597))))

(assert (=> b!7049056 (= res!2877632 (= (size!41125 lt!2528412) (+ (size!41125 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956))) (size!41125 (t!381857 (t!381857 s!7408))))))))

(assert (= (and d!2202042 c!1312890) b!7049054))

(assert (= (and d!2202042 (not c!1312890)) b!7049055))

(assert (= (and d!2202042 res!2877631) b!7049056))

(assert (= (and b!7049056 res!2877632) b!7049057))

(declare-fun m!7764382 () Bool)

(assert (=> d!2202042 m!7764382))

(assert (=> d!2202042 m!7763642))

(declare-fun m!7764384 () Bool)

(assert (=> d!2202042 m!7764384))

(declare-fun m!7764386 () Bool)

(assert (=> d!2202042 m!7764386))

(declare-fun m!7764388 () Bool)

(assert (=> b!7049055 m!7764388))

(declare-fun m!7764390 () Bool)

(assert (=> b!7049056 m!7764390))

(assert (=> b!7049056 m!7763642))

(declare-fun m!7764392 () Bool)

(assert (=> b!7049056 m!7764392))

(declare-fun m!7764394 () Bool)

(assert (=> b!7049056 m!7764394))

(assert (=> b!7048592 d!2202042))

(declare-fun d!2202044 () Bool)

(declare-fun e!4237599 () Bool)

(assert (=> d!2202044 e!4237599))

(declare-fun res!2877633 () Bool)

(assert (=> d!2202044 (=> (not res!2877633) (not e!4237599))))

(declare-fun lt!2528413 () List!68080)

(assert (=> d!2202044 (= res!2877633 (= (content!13633 lt!2528413) ((_ map or) (content!13633 Nil!67956) (content!13633 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)))))))

(declare-fun e!4237600 () List!68080)

(assert (=> d!2202044 (= lt!2528413 e!4237600)))

(declare-fun c!1312891 () Bool)

(assert (=> d!2202044 (= c!1312891 ((_ is Nil!67956) Nil!67956))))

(assert (=> d!2202044 (= (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) lt!2528413)))

(declare-fun b!7049061 () Bool)

(assert (=> b!7049061 (= e!4237599 (or (not (= (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956) Nil!67956)) (= lt!2528413 Nil!67956)))))

(declare-fun b!7049059 () Bool)

(assert (=> b!7049059 (= e!4237600 (Cons!67956 (h!74404 Nil!67956) (++!15606 (t!381857 Nil!67956) (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956))))))

(declare-fun b!7049058 () Bool)

(assert (=> b!7049058 (= e!4237600 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956))))

(declare-fun b!7049060 () Bool)

(declare-fun res!2877634 () Bool)

(assert (=> b!7049060 (=> (not res!2877634) (not e!4237599))))

(assert (=> b!7049060 (= res!2877634 (= (size!41125 lt!2528413) (+ (size!41125 Nil!67956) (size!41125 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)))))))

(assert (= (and d!2202044 c!1312891) b!7049058))

(assert (= (and d!2202044 (not c!1312891)) b!7049059))

(assert (= (and d!2202044 res!2877633) b!7049060))

(assert (= (and b!7049060 res!2877634) b!7049061))

(declare-fun m!7764396 () Bool)

(assert (=> d!2202044 m!7764396))

(assert (=> d!2202044 m!7764258))

(declare-fun m!7764398 () Bool)

(assert (=> d!2202044 m!7764398))

(declare-fun m!7764400 () Bool)

(assert (=> b!7049059 m!7764400))

(declare-fun m!7764402 () Bool)

(assert (=> b!7049060 m!7764402))

(assert (=> b!7049060 m!7764266))

(declare-fun m!7764404 () Bool)

(assert (=> b!7049060 m!7764404))

(assert (=> b!7048592 d!2202044))

(declare-fun d!2202046 () Bool)

(assert (=> d!2202046 (= (++!15606 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (t!381857 (t!381857 s!7408))) (t!381857 s!7408))))

(declare-fun lt!2528416 () Unit!161720)

(declare-fun choose!53629 (List!68080 C!35304 List!68080 List!68080) Unit!161720)

(assert (=> d!2202046 (= lt!2528416 (choose!53629 Nil!67956 (h!74404 (t!381857 s!7408)) (t!381857 (t!381857 s!7408)) (t!381857 s!7408)))))

(assert (=> d!2202046 (= (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) (t!381857 (t!381857 s!7408)))) (t!381857 s!7408))))

(assert (=> d!2202046 (= (lemmaMoveElementToOtherListKeepsConcatEq!2955 Nil!67956 (h!74404 (t!381857 s!7408)) (t!381857 (t!381857 s!7408)) (t!381857 s!7408)) lt!2528416)))

(declare-fun bs!1875473 () Bool)

(assert (= bs!1875473 d!2202046))

(assert (=> bs!1875473 m!7763642))

(assert (=> bs!1875473 m!7763642))

(assert (=> bs!1875473 m!7763644))

(declare-fun m!7764406 () Bool)

(assert (=> bs!1875473 m!7764406))

(declare-fun m!7764408 () Bool)

(assert (=> bs!1875473 m!7764408))

(assert (=> b!7048592 d!2202046))

(declare-fun b!7049062 () Bool)

(declare-fun e!4237601 () Option!16914)

(assert (=> b!7049062 (= e!4237601 None!16913)))

(declare-fun d!2202048 () Bool)

(declare-fun e!4237604 () Bool)

(assert (=> d!2202048 e!4237604))

(declare-fun res!2877636 () Bool)

(assert (=> d!2202048 (=> res!2877636 e!4237604)))

(declare-fun e!4237605 () Bool)

(assert (=> d!2202048 (= res!2877636 e!4237605)))

(declare-fun res!2877638 () Bool)

(assert (=> d!2202048 (=> (not res!2877638) (not e!4237605))))

(declare-fun lt!2528418 () Option!16914)

(assert (=> d!2202048 (= res!2877638 (isDefined!13615 lt!2528418))))

(declare-fun e!4237603 () Option!16914)

(assert (=> d!2202048 (= lt!2528418 e!4237603)))

(declare-fun c!1312893 () Bool)

(declare-fun e!4237602 () Bool)

(assert (=> d!2202048 (= c!1312893 e!4237602)))

(declare-fun res!2877637 () Bool)

(assert (=> d!2202048 (=> (not res!2877637) (not e!4237602))))

(assert (=> d!2202048 (= res!2877637 (matchZipper!3057 lt!2528240 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956))))))

(assert (=> d!2202048 (= (++!15606 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (t!381857 (t!381857 s!7408))) (t!381857 s!7408))))

(assert (=> d!2202048 (= (findConcatSeparationZippers!430 lt!2528240 lt!2528241 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (t!381857 (t!381857 s!7408)) (t!381857 s!7408)) lt!2528418)))

(declare-fun b!7049063 () Bool)

(assert (=> b!7049063 (= e!4237602 (matchZipper!3057 lt!2528241 (t!381857 (t!381857 s!7408))))))

(declare-fun b!7049064 () Bool)

(declare-fun res!2877639 () Bool)

(assert (=> b!7049064 (=> (not res!2877639) (not e!4237605))))

(assert (=> b!7049064 (= res!2877639 (matchZipper!3057 lt!2528240 (_1!37385 (get!23823 lt!2528418))))))

(declare-fun b!7049065 () Bool)

(assert (=> b!7049065 (= e!4237603 (Some!16913 (tuple2!68165 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (t!381857 (t!381857 s!7408)))))))

(declare-fun b!7049066 () Bool)

(declare-fun lt!2528417 () Unit!161720)

(declare-fun lt!2528419 () Unit!161720)

(assert (=> b!7049066 (= lt!2528417 lt!2528419)))

(assert (=> b!7049066 (= (++!15606 (++!15606 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (Cons!67956 (h!74404 (t!381857 (t!381857 s!7408))) Nil!67956)) (t!381857 (t!381857 (t!381857 s!7408)))) (t!381857 s!7408))))

(assert (=> b!7049066 (= lt!2528419 (lemmaMoveElementToOtherListKeepsConcatEq!2955 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (h!74404 (t!381857 (t!381857 s!7408))) (t!381857 (t!381857 (t!381857 s!7408))) (t!381857 s!7408)))))

(assert (=> b!7049066 (= e!4237601 (findConcatSeparationZippers!430 lt!2528240 lt!2528241 (++!15606 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (Cons!67956 (h!74404 (t!381857 (t!381857 s!7408))) Nil!67956)) (t!381857 (t!381857 (t!381857 s!7408))) (t!381857 s!7408)))))

(declare-fun b!7049067 () Bool)

(assert (=> b!7049067 (= e!4237604 (not (isDefined!13615 lt!2528418)))))

(declare-fun b!7049068 () Bool)

(assert (=> b!7049068 (= e!4237605 (= (++!15606 (_1!37385 (get!23823 lt!2528418)) (_2!37385 (get!23823 lt!2528418))) (t!381857 s!7408)))))

(declare-fun b!7049069 () Bool)

(assert (=> b!7049069 (= e!4237603 e!4237601)))

(declare-fun c!1312892 () Bool)

(assert (=> b!7049069 (= c!1312892 ((_ is Nil!67956) (t!381857 (t!381857 s!7408))))))

(declare-fun b!7049070 () Bool)

(declare-fun res!2877635 () Bool)

(assert (=> b!7049070 (=> (not res!2877635) (not e!4237605))))

(assert (=> b!7049070 (= res!2877635 (matchZipper!3057 lt!2528241 (_2!37385 (get!23823 lt!2528418))))))

(assert (= (and d!2202048 res!2877637) b!7049063))

(assert (= (and d!2202048 c!1312893) b!7049065))

(assert (= (and d!2202048 (not c!1312893)) b!7049069))

(assert (= (and b!7049069 c!1312892) b!7049062))

(assert (= (and b!7049069 (not c!1312892)) b!7049066))

(assert (= (and d!2202048 res!2877638) b!7049064))

(assert (= (and b!7049064 res!2877639) b!7049070))

(assert (= (and b!7049070 res!2877635) b!7049068))

(assert (= (and d!2202048 (not res!2877636)) b!7049067))

(declare-fun m!7764410 () Bool)

(assert (=> b!7049070 m!7764410))

(declare-fun m!7764412 () Bool)

(assert (=> b!7049070 m!7764412))

(assert (=> b!7049064 m!7764410))

(declare-fun m!7764414 () Bool)

(assert (=> b!7049064 m!7764414))

(declare-fun m!7764416 () Bool)

(assert (=> b!7049067 m!7764416))

(declare-fun m!7764418 () Bool)

(assert (=> b!7049063 m!7764418))

(assert (=> d!2202048 m!7764416))

(assert (=> d!2202048 m!7763642))

(declare-fun m!7764420 () Bool)

(assert (=> d!2202048 m!7764420))

(assert (=> d!2202048 m!7763642))

(assert (=> d!2202048 m!7763644))

(assert (=> b!7049068 m!7764410))

(declare-fun m!7764422 () Bool)

(assert (=> b!7049068 m!7764422))

(assert (=> b!7049066 m!7763642))

(declare-fun m!7764424 () Bool)

(assert (=> b!7049066 m!7764424))

(assert (=> b!7049066 m!7764424))

(declare-fun m!7764426 () Bool)

(assert (=> b!7049066 m!7764426))

(assert (=> b!7049066 m!7763642))

(declare-fun m!7764428 () Bool)

(assert (=> b!7049066 m!7764428))

(assert (=> b!7049066 m!7764424))

(declare-fun m!7764430 () Bool)

(assert (=> b!7049066 m!7764430))

(assert (=> b!7048592 d!2202048))

(declare-fun d!2202050 () Bool)

(assert (=> d!2202050 (= ($colon$colon!2611 (exprs!7013 lt!2528257) (ite (or c!1312748 c!1312746) (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (h!74403 (exprs!7013 lt!2528249)))) (Cons!67955 (ite (or c!1312748 c!1312746) (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (h!74403 (exprs!7013 lt!2528249))) (exprs!7013 lt!2528257)))))

(assert (=> bm!640486 d!2202050))

(declare-fun b!7049083 () Bool)

(declare-fun e!4237616 () Context!13026)

(declare-fun e!4237617 () Context!13026)

(assert (=> b!7049083 (= e!4237616 e!4237617)))

(declare-fun c!1312899 () Bool)

(assert (=> b!7049083 (= c!1312899 ((_ is Cons!67957) (toList!10860 lt!2528237)))))

(declare-fun b!7049084 () Bool)

(assert (=> b!7049084 (= e!4237617 (getWitness!1560 (t!381858 (toList!10860 lt!2528237)) lambda!418305))))

(declare-fun b!7049085 () Bool)

(declare-fun e!4237614 () Bool)

(declare-fun lt!2528425 () Context!13026)

(declare-fun contains!20476 (List!68081 Context!13026) Bool)

(assert (=> b!7049085 (= e!4237614 (contains!20476 (toList!10860 lt!2528237) lt!2528425))))

(declare-fun b!7049086 () Bool)

(declare-fun lt!2528424 () Unit!161720)

(declare-fun Unit!161723 () Unit!161720)

(assert (=> b!7049086 (= lt!2528424 Unit!161723)))

(assert (=> b!7049086 false))

(declare-fun head!14317 (List!68081) Context!13026)

(assert (=> b!7049086 (= e!4237617 (head!14317 (toList!10860 lt!2528237)))))

(declare-fun b!7049087 () Bool)

(assert (=> b!7049087 (= e!4237616 (h!74405 (toList!10860 lt!2528237)))))

(declare-fun d!2202052 () Bool)

(assert (=> d!2202052 e!4237614))

(declare-fun res!2877644 () Bool)

(assert (=> d!2202052 (=> (not res!2877644) (not e!4237614))))

(assert (=> d!2202052 (= res!2877644 (dynLambda!27535 lambda!418305 lt!2528425))))

(assert (=> d!2202052 (= lt!2528425 e!4237616)))

(declare-fun c!1312898 () Bool)

(declare-fun e!4237615 () Bool)

(assert (=> d!2202052 (= c!1312898 e!4237615)))

(declare-fun res!2877645 () Bool)

(assert (=> d!2202052 (=> (not res!2877645) (not e!4237615))))

(assert (=> d!2202052 (= res!2877645 ((_ is Cons!67957) (toList!10860 lt!2528237)))))

(assert (=> d!2202052 (exists!3479 (toList!10860 lt!2528237) lambda!418305)))

(assert (=> d!2202052 (= (getWitness!1560 (toList!10860 lt!2528237) lambda!418305) lt!2528425)))

(declare-fun b!7049088 () Bool)

(assert (=> b!7049088 (= e!4237615 (dynLambda!27535 lambda!418305 (h!74405 (toList!10860 lt!2528237))))))

(assert (= (and d!2202052 res!2877645) b!7049088))

(assert (= (and d!2202052 c!1312898) b!7049087))

(assert (= (and d!2202052 (not c!1312898)) b!7049083))

(assert (= (and b!7049083 c!1312899) b!7049084))

(assert (= (and b!7049083 (not c!1312899)) b!7049086))

(assert (= (and d!2202052 res!2877644) b!7049085))

(declare-fun b_lambda!267977 () Bool)

(assert (=> (not b_lambda!267977) (not d!2202052)))

(declare-fun b_lambda!267979 () Bool)

(assert (=> (not b_lambda!267979) (not b!7049088)))

(declare-fun m!7764432 () Bool)

(assert (=> b!7049084 m!7764432))

(declare-fun m!7764434 () Bool)

(assert (=> b!7049088 m!7764434))

(assert (=> b!7049086 m!7763156))

(declare-fun m!7764436 () Bool)

(assert (=> b!7049086 m!7764436))

(assert (=> b!7049085 m!7763156))

(declare-fun m!7764438 () Bool)

(assert (=> b!7049085 m!7764438))

(declare-fun m!7764440 () Bool)

(assert (=> d!2202052 m!7764440))

(assert (=> d!2202052 m!7763156))

(declare-fun m!7764442 () Bool)

(assert (=> d!2202052 m!7764442))

(assert (=> d!2201670 d!2202052))

(assert (=> d!2201670 d!2201674))

(declare-fun d!2202054 () Bool)

(declare-fun lt!2528428 () Bool)

(assert (=> d!2202054 (= lt!2528428 (exists!3479 (toList!10860 lt!2528237) lambda!418305))))

(declare-fun choose!53630 ((InoxSet Context!13026) Int) Bool)

(assert (=> d!2202054 (= lt!2528428 (choose!53630 lt!2528237 lambda!418305))))

(assert (=> d!2202054 (= (exists!3481 lt!2528237 lambda!418305) lt!2528428)))

(declare-fun bs!1875474 () Bool)

(assert (= bs!1875474 d!2202054))

(assert (=> bs!1875474 m!7763156))

(assert (=> bs!1875474 m!7763156))

(assert (=> bs!1875474 m!7764442))

(declare-fun m!7764444 () Bool)

(assert (=> bs!1875474 m!7764444))

(assert (=> d!2201670 d!2202054))

(declare-fun d!2202056 () Bool)

(declare-fun c!1312902 () Bool)

(assert (=> d!2202056 (= c!1312902 ((_ is Nil!67956) lt!2528335))))

(declare-fun e!4237620 () (InoxSet C!35304))

(assert (=> d!2202056 (= (content!13633 lt!2528335) e!4237620)))

(declare-fun b!7049093 () Bool)

(assert (=> b!7049093 (= e!4237620 ((as const (Array C!35304 Bool)) false))))

(declare-fun b!7049094 () Bool)

(assert (=> b!7049094 (= e!4237620 ((_ map or) (store ((as const (Array C!35304 Bool)) false) (h!74404 lt!2528335) true) (content!13633 (t!381857 lt!2528335))))))

(assert (= (and d!2202056 c!1312902) b!7049093))

(assert (= (and d!2202056 (not c!1312902)) b!7049094))

(declare-fun m!7764446 () Bool)

(assert (=> b!7049094 m!7764446))

(declare-fun m!7764448 () Bool)

(assert (=> b!7049094 m!7764448))

(assert (=> d!2201682 d!2202056))

(declare-fun d!2202058 () Bool)

(declare-fun c!1312903 () Bool)

(assert (=> d!2202058 (= c!1312903 ((_ is Nil!67956) (_1!37385 lt!2528255)))))

(declare-fun e!4237621 () (InoxSet C!35304))

(assert (=> d!2202058 (= (content!13633 (_1!37385 lt!2528255)) e!4237621)))

(declare-fun b!7049095 () Bool)

(assert (=> b!7049095 (= e!4237621 ((as const (Array C!35304 Bool)) false))))

(declare-fun b!7049096 () Bool)

(assert (=> b!7049096 (= e!4237621 ((_ map or) (store ((as const (Array C!35304 Bool)) false) (h!74404 (_1!37385 lt!2528255)) true) (content!13633 (t!381857 (_1!37385 lt!2528255)))))))

(assert (= (and d!2202058 c!1312903) b!7049095))

(assert (= (and d!2202058 (not c!1312903)) b!7049096))

(declare-fun m!7764450 () Bool)

(assert (=> b!7049096 m!7764450))

(declare-fun m!7764452 () Bool)

(assert (=> b!7049096 m!7764452))

(assert (=> d!2201682 d!2202058))

(declare-fun d!2202060 () Bool)

(declare-fun c!1312904 () Bool)

(assert (=> d!2202060 (= c!1312904 ((_ is Nil!67956) (_2!37385 lt!2528255)))))

(declare-fun e!4237622 () (InoxSet C!35304))

(assert (=> d!2202060 (= (content!13633 (_2!37385 lt!2528255)) e!4237622)))

(declare-fun b!7049097 () Bool)

(assert (=> b!7049097 (= e!4237622 ((as const (Array C!35304 Bool)) false))))

(declare-fun b!7049098 () Bool)

(assert (=> b!7049098 (= e!4237622 ((_ map or) (store ((as const (Array C!35304 Bool)) false) (h!74404 (_2!37385 lt!2528255)) true) (content!13633 (t!381857 (_2!37385 lt!2528255)))))))

(assert (= (and d!2202060 c!1312904) b!7049097))

(assert (= (and d!2202060 (not c!1312904)) b!7049098))

(declare-fun m!7764454 () Bool)

(assert (=> b!7049098 m!7764454))

(declare-fun m!7764456 () Bool)

(assert (=> b!7049098 m!7764456))

(assert (=> d!2201682 d!2202060))

(declare-fun bs!1875475 () Bool)

(declare-fun d!2202062 () Bool)

(assert (= bs!1875475 (and d!2202062 b!7048290)))

(declare-fun lambda!418383 () Int)

(assert (=> bs!1875475 (= lambda!418383 lambda!418307)))

(declare-fun bs!1875476 () Bool)

(assert (= bs!1875476 (and d!2202062 d!2201594)))

(assert (=> bs!1875476 (= lambda!418383 lambda!418319)))

(declare-fun bs!1875477 () Bool)

(assert (= bs!1875477 (and d!2202062 d!2201680)))

(assert (=> bs!1875477 (= lambda!418383 lambda!418346)))

(declare-fun bs!1875478 () Bool)

(assert (= bs!1875478 (and d!2202062 d!2201712)))

(assert (=> bs!1875478 (= lambda!418383 lambda!418354)))

(assert (=> d!2202062 (= (inv!86651 setElem!49526) (forall!16453 (exprs!7013 setElem!49526) lambda!418383))))

(declare-fun bs!1875479 () Bool)

(assert (= bs!1875479 d!2202062))

(declare-fun m!7764458 () Bool)

(assert (=> bs!1875479 m!7764458))

(assert (=> setNonEmpty!49526 d!2202062))

(declare-fun d!2202064 () Bool)

(declare-fun res!2877646 () Bool)

(declare-fun e!4237623 () Bool)

(assert (=> d!2202064 (=> res!2877646 e!4237623)))

(assert (=> d!2202064 (= res!2877646 ((_ is Nil!67955) (++!15605 (exprs!7013 lt!2528249) (exprs!7013 ct2!306))))))

(assert (=> d!2202064 (= (forall!16453 (++!15605 (exprs!7013 lt!2528249) (exprs!7013 ct2!306)) lambda!418307) e!4237623)))

(declare-fun b!7049099 () Bool)

(declare-fun e!4237624 () Bool)

(assert (=> b!7049099 (= e!4237623 e!4237624)))

(declare-fun res!2877647 () Bool)

(assert (=> b!7049099 (=> (not res!2877647) (not e!4237624))))

(assert (=> b!7049099 (= res!2877647 (dynLambda!27539 lambda!418307 (h!74403 (++!15605 (exprs!7013 lt!2528249) (exprs!7013 ct2!306)))))))

(declare-fun b!7049100 () Bool)

(assert (=> b!7049100 (= e!4237624 (forall!16453 (t!381856 (++!15605 (exprs!7013 lt!2528249) (exprs!7013 ct2!306))) lambda!418307))))

(assert (= (and d!2202064 (not res!2877646)) b!7049099))

(assert (= (and b!7049099 res!2877647) b!7049100))

(declare-fun b_lambda!267981 () Bool)

(assert (=> (not b_lambda!267981) (not b!7049099)))

(declare-fun m!7764460 () Bool)

(assert (=> b!7049099 m!7764460))

(declare-fun m!7764462 () Bool)

(assert (=> b!7049100 m!7764462))

(assert (=> d!2201662 d!2202064))

(assert (=> d!2201662 d!2201660))

(declare-fun d!2202066 () Bool)

(assert (=> d!2202066 (forall!16453 (++!15605 (exprs!7013 lt!2528249) (exprs!7013 ct2!306)) lambda!418307)))

(assert (=> d!2202066 true))

(declare-fun _$78!633 () Unit!161720)

(assert (=> d!2202066 (= (choose!53619 (exprs!7013 lt!2528249) (exprs!7013 ct2!306) lambda!418307) _$78!633)))

(declare-fun bs!1875480 () Bool)

(assert (= bs!1875480 d!2202066))

(assert (=> bs!1875480 m!7763150))

(assert (=> bs!1875480 m!7763150))

(assert (=> bs!1875480 m!7763512))

(assert (=> d!2201662 d!2202066))

(declare-fun d!2202068 () Bool)

(declare-fun res!2877648 () Bool)

(declare-fun e!4237625 () Bool)

(assert (=> d!2202068 (=> res!2877648 e!4237625)))

(assert (=> d!2202068 (= res!2877648 ((_ is Nil!67955) (exprs!7013 lt!2528249)))))

(assert (=> d!2202068 (= (forall!16453 (exprs!7013 lt!2528249) lambda!418307) e!4237625)))

(declare-fun b!7049101 () Bool)

(declare-fun e!4237626 () Bool)

(assert (=> b!7049101 (= e!4237625 e!4237626)))

(declare-fun res!2877649 () Bool)

(assert (=> b!7049101 (=> (not res!2877649) (not e!4237626))))

(assert (=> b!7049101 (= res!2877649 (dynLambda!27539 lambda!418307 (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7049102 () Bool)

(assert (=> b!7049102 (= e!4237626 (forall!16453 (t!381856 (exprs!7013 lt!2528249)) lambda!418307))))

(assert (= (and d!2202068 (not res!2877648)) b!7049101))

(assert (= (and b!7049101 res!2877649) b!7049102))

(declare-fun b_lambda!267983 () Bool)

(assert (=> (not b_lambda!267983) (not b!7049101)))

(declare-fun m!7764464 () Bool)

(assert (=> b!7049101 m!7764464))

(declare-fun m!7764466 () Bool)

(assert (=> b!7049102 m!7764466))

(assert (=> d!2201662 d!2202068))

(declare-fun b!7049103 () Bool)

(declare-fun e!4237629 () (InoxSet Context!13026))

(assert (=> b!7049103 (= e!4237629 (store ((as const (Array Context!13026 Bool)) false) (ite (or c!1312744 c!1312748) lt!2528257 (Context!13027 call!640486)) true))))

(declare-fun b!7049104 () Bool)

(declare-fun c!1312909 () Bool)

(declare-fun e!4237628 () Bool)

(assert (=> b!7049104 (= c!1312909 e!4237628)))

(declare-fun res!2877650 () Bool)

(assert (=> b!7049104 (=> (not res!2877650) (not e!4237628))))

(assert (=> b!7049104 (= res!2877650 ((_ is Concat!26362) (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))))))

(declare-fun e!4237632 () (InoxSet Context!13026))

(declare-fun e!4237627 () (InoxSet Context!13026))

(assert (=> b!7049104 (= e!4237632 e!4237627)))

(declare-fun bm!640553 () Bool)

(declare-fun call!640562 () (InoxSet Context!13026))

(declare-fun call!640559 () (InoxSet Context!13026))

(assert (=> bm!640553 (= call!640562 call!640559)))

(declare-fun bm!640554 () Bool)

(declare-fun call!640561 () (InoxSet Context!13026))

(assert (=> bm!640554 (= call!640561 call!640562)))

(declare-fun b!7049105 () Bool)

(declare-fun e!4237630 () (InoxSet Context!13026))

(assert (=> b!7049105 (= e!4237627 e!4237630)))

(declare-fun c!1312907 () Bool)

(assert (=> b!7049105 (= c!1312907 ((_ is Concat!26362) (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))))))

(declare-fun b!7049106 () Bool)

(declare-fun call!640560 () (InoxSet Context!13026))

(assert (=> b!7049106 (= e!4237632 ((_ map or) call!640560 call!640559))))

(declare-fun b!7049107 () Bool)

(assert (=> b!7049107 (= e!4237627 ((_ map or) call!640560 call!640562))))

(declare-fun b!7049108 () Bool)

(assert (=> b!7049108 (= e!4237629 e!4237632)))

(declare-fun c!1312905 () Bool)

(assert (=> b!7049108 (= c!1312905 ((_ is Union!17517) (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))))))

(declare-fun b!7049109 () Bool)

(declare-fun e!4237631 () (InoxSet Context!13026))

(assert (=> b!7049109 (= e!4237631 call!640561)))

(declare-fun b!7049110 () Bool)

(assert (=> b!7049110 (= e!4237630 call!640561)))

(declare-fun bm!640555 () Bool)

(declare-fun call!640563 () List!68079)

(assert (=> bm!640555 (= call!640560 (derivationStepZipperDown!2181 (ite c!1312905 (regOne!35547 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (regOne!35546 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))))) (ite c!1312905 (ite (or c!1312744 c!1312748) lt!2528257 (Context!13027 call!640486)) (Context!13027 call!640563)) (h!74404 s!7408)))))

(declare-fun b!7049111 () Bool)

(declare-fun c!1312906 () Bool)

(assert (=> b!7049111 (= c!1312906 ((_ is Star!17517) (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))))))

(assert (=> b!7049111 (= e!4237630 e!4237631)))

(declare-fun b!7049112 () Bool)

(assert (=> b!7049112 (= e!4237628 (nullable!7228 (regOne!35546 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))))))))

(declare-fun c!1312908 () Bool)

(declare-fun d!2202070 () Bool)

(assert (=> d!2202070 (= c!1312908 (and ((_ is ElementMatch!17517) (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (= (c!1312641 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (h!74404 s!7408))))))

(assert (=> d!2202070 (= (derivationStepZipperDown!2181 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))) (ite (or c!1312744 c!1312748) lt!2528257 (Context!13027 call!640486)) (h!74404 s!7408)) e!4237629)))

(declare-fun bm!640556 () Bool)

(declare-fun call!640558 () List!68079)

(assert (=> bm!640556 (= call!640558 call!640563)))

(declare-fun b!7049113 () Bool)

(assert (=> b!7049113 (= e!4237631 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640557 () Bool)

(assert (=> bm!640557 (= call!640559 (derivationStepZipperDown!2181 (ite c!1312905 (regTwo!35547 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (ite c!1312909 (regTwo!35546 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (ite c!1312907 (regOne!35546 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (reg!17846 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))))))) (ite (or c!1312905 c!1312909) (ite (or c!1312744 c!1312748) lt!2528257 (Context!13027 call!640486)) (Context!13027 call!640558)) (h!74404 s!7408)))))

(declare-fun bm!640558 () Bool)

(assert (=> bm!640558 (= call!640563 ($colon$colon!2611 (exprs!7013 (ite (or c!1312744 c!1312748) lt!2528257 (Context!13027 call!640486))) (ite (or c!1312909 c!1312907) (regTwo!35546 (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (ite c!1312744 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312748 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312746 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))))))))

(assert (= (and d!2202070 c!1312908) b!7049103))

(assert (= (and d!2202070 (not c!1312908)) b!7049108))

(assert (= (and b!7049108 c!1312905) b!7049106))

(assert (= (and b!7049108 (not c!1312905)) b!7049104))

(assert (= (and b!7049104 res!2877650) b!7049112))

(assert (= (and b!7049104 c!1312909) b!7049107))

(assert (= (and b!7049104 (not c!1312909)) b!7049105))

(assert (= (and b!7049105 c!1312907) b!7049110))

(assert (= (and b!7049105 (not c!1312907)) b!7049111))

(assert (= (and b!7049111 c!1312906) b!7049109))

(assert (= (and b!7049111 (not c!1312906)) b!7049113))

(assert (= (or b!7049110 b!7049109) bm!640556))

(assert (= (or b!7049110 b!7049109) bm!640554))

(assert (= (or b!7049107 bm!640554) bm!640553))

(assert (= (or b!7049107 bm!640556) bm!640558))

(assert (= (or b!7049106 b!7049107) bm!640555))

(assert (= (or b!7049106 bm!640553) bm!640557))

(declare-fun m!7764468 () Bool)

(assert (=> bm!640558 m!7764468))

(declare-fun m!7764470 () Bool)

(assert (=> bm!640555 m!7764470))

(declare-fun m!7764472 () Bool)

(assert (=> b!7049103 m!7764472))

(declare-fun m!7764474 () Bool)

(assert (=> b!7049112 m!7764474))

(declare-fun m!7764476 () Bool)

(assert (=> bm!640557 m!7764476))

(assert (=> bm!640485 d!2202070))

(declare-fun bs!1875481 () Bool)

(declare-fun d!2202072 () Bool)

(assert (= bs!1875481 (and d!2202072 b!7048289)))

(declare-fun lambda!418384 () Int)

(assert (=> bs!1875481 (not (= lambda!418384 lambda!418305))))

(declare-fun bs!1875482 () Bool)

(assert (= bs!1875482 (and d!2202072 d!2201666)))

(assert (=> bs!1875482 (not (= lambda!418384 lambda!418337))))

(declare-fun bs!1875483 () Bool)

(assert (= bs!1875483 (and d!2202072 d!2201672)))

(assert (=> bs!1875483 (= (= lambda!418337 lambda!418305) (= lambda!418384 lambda!418340))))

(declare-fun bs!1875484 () Bool)

(assert (= bs!1875484 (and d!2202072 d!2201968)))

(assert (=> bs!1875484 (not (= lambda!418384 lambda!418380))))

(declare-fun bs!1875485 () Bool)

(assert (= bs!1875485 (and d!2202072 d!2202030)))

(assert (=> bs!1875485 (not (= lambda!418384 lambda!418381))))

(assert (=> d!2202072 true))

(assert (=> d!2202072 (< (dynLambda!27536 order!28255 lambda!418337) (dynLambda!27536 order!28255 lambda!418384))))

(assert (=> d!2202072 (= (exists!3479 lt!2528236 lambda!418337) (not (forall!16454 lt!2528236 lambda!418384)))))

(declare-fun bs!1875486 () Bool)

(assert (= bs!1875486 d!2202072))

(declare-fun m!7764478 () Bool)

(assert (=> bs!1875486 m!7764478))

(assert (=> d!2201666 d!2202072))

(declare-fun bs!1875487 () Bool)

(declare-fun d!2202074 () Bool)

(assert (= bs!1875487 (and d!2202074 b!7048289)))

(declare-fun lambda!418387 () Int)

(assert (=> bs!1875487 (= lambda!418387 lambda!418305)))

(declare-fun bs!1875488 () Bool)

(assert (= bs!1875488 (and d!2202074 d!2201666)))

(assert (=> bs!1875488 (= lambda!418387 lambda!418337)))

(declare-fun bs!1875489 () Bool)

(assert (= bs!1875489 (and d!2202074 d!2201672)))

(assert (=> bs!1875489 (not (= lambda!418387 lambda!418340))))

(declare-fun bs!1875490 () Bool)

(assert (= bs!1875490 (and d!2202074 d!2202072)))

(assert (=> bs!1875490 (not (= lambda!418387 lambda!418384))))

(declare-fun bs!1875491 () Bool)

(assert (= bs!1875491 (and d!2202074 d!2201968)))

(assert (=> bs!1875491 (not (= lambda!418387 lambda!418380))))

(declare-fun bs!1875492 () Bool)

(assert (= bs!1875492 (and d!2202074 d!2202030)))

(assert (=> bs!1875492 (not (= lambda!418387 lambda!418381))))

(assert (=> d!2202074 true))

(assert (=> d!2202074 (exists!3479 lt!2528236 lambda!418387)))

(assert (=> d!2202074 true))

(declare-fun _$60!1162 () Unit!161720)

(assert (=> d!2202074 (= (choose!53621 lt!2528236 s!7408) _$60!1162)))

(declare-fun bs!1875493 () Bool)

(assert (= bs!1875493 d!2202074))

(declare-fun m!7764480 () Bool)

(assert (=> bs!1875493 m!7764480))

(assert (=> d!2201666 d!2202074))

(declare-fun d!2202076 () Bool)

(declare-fun c!1312912 () Bool)

(assert (=> d!2202076 (= c!1312912 (isEmpty!39671 s!7408))))

(declare-fun e!4237633 () Bool)

(assert (=> d!2202076 (= (matchZipper!3057 (content!13632 lt!2528236) s!7408) e!4237633)))

(declare-fun b!7049114 () Bool)

(assert (=> b!7049114 (= e!4237633 (nullableZipper!2618 (content!13632 lt!2528236)))))

(declare-fun b!7049115 () Bool)

(assert (=> b!7049115 (= e!4237633 (matchZipper!3057 (derivationStepZipper!2973 (content!13632 lt!2528236) (head!14315 s!7408)) (tail!13646 s!7408)))))

(assert (= (and d!2202076 c!1312912) b!7049114))

(assert (= (and d!2202076 (not c!1312912)) b!7049115))

(assert (=> d!2202076 m!7763536))

(assert (=> b!7049114 m!7763532))

(declare-fun m!7764482 () Bool)

(assert (=> b!7049114 m!7764482))

(assert (=> b!7049115 m!7763540))

(assert (=> b!7049115 m!7763532))

(assert (=> b!7049115 m!7763540))

(declare-fun m!7764484 () Bool)

(assert (=> b!7049115 m!7764484))

(assert (=> b!7049115 m!7763544))

(assert (=> b!7049115 m!7764484))

(assert (=> b!7049115 m!7763544))

(declare-fun m!7764486 () Bool)

(assert (=> b!7049115 m!7764486))

(assert (=> d!2201666 d!2202076))

(declare-fun d!2202078 () Bool)

(declare-fun c!1312915 () Bool)

(assert (=> d!2202078 (= c!1312915 ((_ is Nil!67957) lt!2528236))))

(declare-fun e!4237636 () (InoxSet Context!13026))

(assert (=> d!2202078 (= (content!13632 lt!2528236) e!4237636)))

(declare-fun b!7049120 () Bool)

(assert (=> b!7049120 (= e!4237636 ((as const (Array Context!13026 Bool)) false))))

(declare-fun b!7049121 () Bool)

(assert (=> b!7049121 (= e!4237636 ((_ map or) (store ((as const (Array Context!13026 Bool)) false) (h!74405 lt!2528236) true) (content!13632 (t!381858 lt!2528236))))))

(assert (= (and d!2202078 c!1312915) b!7049120))

(assert (= (and d!2202078 (not c!1312915)) b!7049121))

(declare-fun m!7764488 () Bool)

(assert (=> b!7049121 m!7764488))

(declare-fun m!7764490 () Bool)

(assert (=> b!7049121 m!7764490))

(assert (=> d!2201666 d!2202078))

(declare-fun d!2202080 () Bool)

(assert (=> d!2202080 (= (isEmpty!39671 s!7408) ((_ is Nil!67956) s!7408))))

(assert (=> d!2201676 d!2202080))

(declare-fun d!2202082 () Bool)

(declare-fun c!1312916 () Bool)

(assert (=> d!2202082 (= c!1312916 (isEmpty!39671 (t!381857 s!7408)))))

(declare-fun e!4237637 () Bool)

(assert (=> d!2202082 (= (matchZipper!3057 lt!2528241 (t!381857 s!7408)) e!4237637)))

(declare-fun b!7049122 () Bool)

(assert (=> b!7049122 (= e!4237637 (nullableZipper!2618 lt!2528241))))

(declare-fun b!7049123 () Bool)

(assert (=> b!7049123 (= e!4237637 (matchZipper!3057 (derivationStepZipper!2973 lt!2528241 (head!14315 (t!381857 s!7408))) (tail!13646 (t!381857 s!7408))))))

(assert (= (and d!2202082 c!1312916) b!7049122))

(assert (= (and d!2202082 (not c!1312916)) b!7049123))

(assert (=> d!2202082 m!7763342))

(assert (=> b!7049122 m!7763684))

(assert (=> b!7049123 m!7763346))

(assert (=> b!7049123 m!7763346))

(declare-fun m!7764492 () Bool)

(assert (=> b!7049123 m!7764492))

(assert (=> b!7049123 m!7763356))

(assert (=> b!7049123 m!7764492))

(assert (=> b!7049123 m!7763356))

(declare-fun m!7764494 () Bool)

(assert (=> b!7049123 m!7764494))

(assert (=> b!7048589 d!2202082))

(declare-fun d!2202084 () Bool)

(declare-fun e!4237638 () Bool)

(assert (=> d!2202084 e!4237638))

(declare-fun res!2877651 () Bool)

(assert (=> d!2202084 (=> (not res!2877651) (not e!4237638))))

(declare-fun lt!2528429 () List!68080)

(assert (=> d!2202084 (= res!2877651 (= (content!13633 lt!2528429) ((_ map or) (content!13633 (t!381857 (_1!37385 lt!2528255))) (content!13633 (_2!37385 lt!2528255)))))))

(declare-fun e!4237639 () List!68080)

(assert (=> d!2202084 (= lt!2528429 e!4237639)))

(declare-fun c!1312917 () Bool)

(assert (=> d!2202084 (= c!1312917 ((_ is Nil!67956) (t!381857 (_1!37385 lt!2528255))))))

(assert (=> d!2202084 (= (++!15606 (t!381857 (_1!37385 lt!2528255)) (_2!37385 lt!2528255)) lt!2528429)))

(declare-fun b!7049127 () Bool)

(assert (=> b!7049127 (= e!4237638 (or (not (= (_2!37385 lt!2528255) Nil!67956)) (= lt!2528429 (t!381857 (_1!37385 lt!2528255)))))))

(declare-fun b!7049125 () Bool)

(assert (=> b!7049125 (= e!4237639 (Cons!67956 (h!74404 (t!381857 (_1!37385 lt!2528255))) (++!15606 (t!381857 (t!381857 (_1!37385 lt!2528255))) (_2!37385 lt!2528255))))))

(declare-fun b!7049124 () Bool)

(assert (=> b!7049124 (= e!4237639 (_2!37385 lt!2528255))))

(declare-fun b!7049126 () Bool)

(declare-fun res!2877652 () Bool)

(assert (=> b!7049126 (=> (not res!2877652) (not e!4237638))))

(assert (=> b!7049126 (= res!2877652 (= (size!41125 lt!2528429) (+ (size!41125 (t!381857 (_1!37385 lt!2528255))) (size!41125 (_2!37385 lt!2528255)))))))

(assert (= (and d!2202084 c!1312917) b!7049124))

(assert (= (and d!2202084 (not c!1312917)) b!7049125))

(assert (= (and d!2202084 res!2877651) b!7049126))

(assert (= (and b!7049126 res!2877652) b!7049127))

(declare-fun m!7764496 () Bool)

(assert (=> d!2202084 m!7764496))

(assert (=> d!2202084 m!7764452))

(assert (=> d!2202084 m!7763578))

(declare-fun m!7764498 () Bool)

(assert (=> b!7049125 m!7764498))

(declare-fun m!7764500 () Bool)

(assert (=> b!7049126 m!7764500))

(declare-fun m!7764502 () Bool)

(assert (=> b!7049126 m!7764502))

(assert (=> b!7049126 m!7763586))

(assert (=> b!7048543 d!2202084))

(declare-fun d!2202086 () Bool)

(assert (=> d!2202086 (= ($colon$colon!2611 (exprs!7013 (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306)))) (ite (or c!1312714 c!1312712) (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (h!74403 (exprs!7013 lt!2528249)))) (Cons!67955 (ite (or c!1312714 c!1312712) (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (h!74403 (exprs!7013 lt!2528249))) (exprs!7013 (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))))))))

(assert (=> bm!640476 d!2202086))

(declare-fun bs!1875494 () Bool)

(declare-fun d!2202088 () Bool)

(assert (= bs!1875494 (and d!2202088 b!7048289)))

(declare-fun lambda!418388 () Int)

(assert (=> bs!1875494 (not (= lambda!418388 lambda!418305))))

(declare-fun bs!1875495 () Bool)

(assert (= bs!1875495 (and d!2202088 d!2201666)))

(assert (=> bs!1875495 (not (= lambda!418388 lambda!418337))))

(declare-fun bs!1875496 () Bool)

(assert (= bs!1875496 (and d!2202088 d!2201672)))

(assert (=> bs!1875496 (not (= lambda!418388 lambda!418340))))

(declare-fun bs!1875497 () Bool)

(assert (= bs!1875497 (and d!2202088 d!2202072)))

(assert (=> bs!1875497 (not (= lambda!418388 lambda!418384))))

(declare-fun bs!1875498 () Bool)

(assert (= bs!1875498 (and d!2202088 d!2202074)))

(assert (=> bs!1875498 (not (= lambda!418388 lambda!418387))))

(declare-fun bs!1875499 () Bool)

(assert (= bs!1875499 (and d!2202088 d!2201968)))

(assert (=> bs!1875499 (= lambda!418388 lambda!418380)))

(declare-fun bs!1875500 () Bool)

(assert (= bs!1875500 (and d!2202088 d!2202030)))

(assert (=> bs!1875500 (= lambda!418388 lambda!418381)))

(assert (=> d!2202088 (= (nullableZipper!2618 lt!2528240) (exists!3481 lt!2528240 lambda!418388))))

(declare-fun bs!1875501 () Bool)

(assert (= bs!1875501 d!2202088))

(declare-fun m!7764504 () Bool)

(assert (=> bs!1875501 m!7764504))

(assert (=> b!7048568 d!2202088))

(declare-fun d!2202090 () Bool)

(declare-fun res!2877657 () Bool)

(declare-fun e!4237644 () Bool)

(assert (=> d!2202090 (=> res!2877657 e!4237644)))

(assert (=> d!2202090 (= res!2877657 ((_ is Nil!67957) lt!2528330))))

(assert (=> d!2202090 (= (noDuplicate!2663 lt!2528330) e!4237644)))

(declare-fun b!7049132 () Bool)

(declare-fun e!4237645 () Bool)

(assert (=> b!7049132 (= e!4237644 e!4237645)))

(declare-fun res!2877658 () Bool)

(assert (=> b!7049132 (=> (not res!2877658) (not e!4237645))))

(assert (=> b!7049132 (= res!2877658 (not (contains!20476 (t!381858 lt!2528330) (h!74405 lt!2528330))))))

(declare-fun b!7049133 () Bool)

(assert (=> b!7049133 (= e!4237645 (noDuplicate!2663 (t!381858 lt!2528330)))))

(assert (= (and d!2202090 (not res!2877657)) b!7049132))

(assert (= (and b!7049132 res!2877658) b!7049133))

(declare-fun m!7764506 () Bool)

(assert (=> b!7049132 m!7764506))

(declare-fun m!7764508 () Bool)

(assert (=> b!7049133 m!7764508))

(assert (=> d!2201674 d!2202090))

(declare-fun d!2202092 () Bool)

(declare-fun e!4237654 () Bool)

(assert (=> d!2202092 e!4237654))

(declare-fun res!2877663 () Bool)

(assert (=> d!2202092 (=> (not res!2877663) (not e!4237654))))

(declare-fun res!2877664 () List!68081)

(assert (=> d!2202092 (= res!2877663 (noDuplicate!2663 res!2877664))))

(declare-fun e!4237653 () Bool)

(assert (=> d!2202092 e!4237653))

(assert (=> d!2202092 (= (choose!53622 lt!2528237) res!2877664)))

(declare-fun b!7049141 () Bool)

(declare-fun e!4237652 () Bool)

(declare-fun tp!1938445 () Bool)

(assert (=> b!7049141 (= e!4237652 tp!1938445)))

(declare-fun b!7049140 () Bool)

(declare-fun tp!1938444 () Bool)

(assert (=> b!7049140 (= e!4237653 (and (inv!86651 (h!74405 res!2877664)) e!4237652 tp!1938444))))

(declare-fun b!7049142 () Bool)

(assert (=> b!7049142 (= e!4237654 (= (content!13632 res!2877664) lt!2528237))))

(assert (= b!7049140 b!7049141))

(assert (= (and d!2202092 ((_ is Cons!67957) res!2877664)) b!7049140))

(assert (= (and d!2202092 res!2877663) b!7049142))

(declare-fun m!7764510 () Bool)

(assert (=> d!2202092 m!7764510))

(declare-fun m!7764512 () Bool)

(assert (=> b!7049140 m!7764512))

(declare-fun m!7764514 () Bool)

(assert (=> b!7049142 m!7764514))

(assert (=> d!2201674 d!2202092))

(declare-fun d!2202094 () Bool)

(declare-fun c!1312918 () Bool)

(assert (=> d!2202094 (= c!1312918 (isEmpty!39671 (tail!13646 (t!381857 s!7408))))))

(declare-fun e!4237655 () Bool)

(assert (=> d!2202094 (= (matchZipper!3057 (derivationStepZipper!2973 lt!2528258 (head!14315 (t!381857 s!7408))) (tail!13646 (t!381857 s!7408))) e!4237655)))

(declare-fun b!7049143 () Bool)

(assert (=> b!7049143 (= e!4237655 (nullableZipper!2618 (derivationStepZipper!2973 lt!2528258 (head!14315 (t!381857 s!7408)))))))

(declare-fun b!7049144 () Bool)

(assert (=> b!7049144 (= e!4237655 (matchZipper!3057 (derivationStepZipper!2973 (derivationStepZipper!2973 lt!2528258 (head!14315 (t!381857 s!7408))) (head!14315 (tail!13646 (t!381857 s!7408)))) (tail!13646 (tail!13646 (t!381857 s!7408)))))))

(assert (= (and d!2202094 c!1312918) b!7049143))

(assert (= (and d!2202094 (not c!1312918)) b!7049144))

(assert (=> d!2202094 m!7763356))

(declare-fun m!7764516 () Bool)

(assert (=> d!2202094 m!7764516))

(assert (=> b!7049143 m!7763350))

(declare-fun m!7764518 () Bool)

(assert (=> b!7049143 m!7764518))

(assert (=> b!7049144 m!7763356))

(declare-fun m!7764520 () Bool)

(assert (=> b!7049144 m!7764520))

(assert (=> b!7049144 m!7763350))

(assert (=> b!7049144 m!7764520))

(declare-fun m!7764522 () Bool)

(assert (=> b!7049144 m!7764522))

(assert (=> b!7049144 m!7763356))

(declare-fun m!7764524 () Bool)

(assert (=> b!7049144 m!7764524))

(assert (=> b!7049144 m!7764522))

(assert (=> b!7049144 m!7764524))

(declare-fun m!7764526 () Bool)

(assert (=> b!7049144 m!7764526))

(assert (=> b!7048408 d!2202094))

(declare-fun bs!1875502 () Bool)

(declare-fun d!2202096 () Bool)

(assert (= bs!1875502 (and d!2202096 b!7048286)))

(declare-fun lambda!418389 () Int)

(assert (=> bs!1875502 (= (= (head!14315 (t!381857 s!7408)) (h!74404 s!7408)) (= lambda!418389 lambda!418308))))

(declare-fun bs!1875503 () Bool)

(assert (= bs!1875503 (and d!2202096 d!2201690)))

(assert (=> bs!1875503 (= (= (head!14315 (t!381857 s!7408)) (h!74404 s!7408)) (= lambda!418389 lambda!418349))))

(declare-fun bs!1875504 () Bool)

(assert (= bs!1875504 (and d!2202096 d!2201692)))

(assert (=> bs!1875504 (= (= (head!14315 (t!381857 s!7408)) (h!74404 s!7408)) (= lambda!418389 lambda!418350))))

(declare-fun bs!1875505 () Bool)

(assert (= bs!1875505 (and d!2202096 d!2202034)))

(assert (=> bs!1875505 (= (= (head!14315 (t!381857 s!7408)) (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))) (= lambda!418389 lambda!418382))))

(assert (=> d!2202096 true))

(assert (=> d!2202096 (= (derivationStepZipper!2973 lt!2528258 (head!14315 (t!381857 s!7408))) (flatMap!2464 lt!2528258 lambda!418389))))

(declare-fun bs!1875506 () Bool)

(assert (= bs!1875506 d!2202096))

(declare-fun m!7764528 () Bool)

(assert (=> bs!1875506 m!7764528))

(assert (=> b!7048408 d!2202096))

(declare-fun d!2202098 () Bool)

(assert (=> d!2202098 (= (head!14315 (t!381857 s!7408)) (h!74404 (t!381857 s!7408)))))

(assert (=> b!7048408 d!2202098))

(declare-fun d!2202100 () Bool)

(assert (=> d!2202100 (= (tail!13646 (t!381857 s!7408)) (t!381857 (t!381857 s!7408)))))

(assert (=> b!7048408 d!2202100))

(declare-fun d!2202102 () Bool)

(assert (=> d!2202102 (= (nullable!7228 (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))) (nullableFct!2763 (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))

(declare-fun bs!1875507 () Bool)

(assert (= bs!1875507 d!2202102))

(declare-fun m!7764530 () Bool)

(assert (=> bs!1875507 m!7764530))

(assert (=> b!7048499 d!2202102))

(assert (=> d!2201688 d!2201684))

(declare-fun d!2202104 () Bool)

(assert (=> d!2202104 (= (flatMap!2464 lt!2528243 lambda!418308) (dynLambda!27537 lambda!418308 lt!2528249))))

(assert (=> d!2202104 true))

(declare-fun _$13!4532 () Unit!161720)

(assert (=> d!2202104 (= (choose!53624 lt!2528243 lt!2528249 lambda!418308) _$13!4532)))

(declare-fun b_lambda!267985 () Bool)

(assert (=> (not b_lambda!267985) (not d!2202104)))

(declare-fun bs!1875508 () Bool)

(assert (= bs!1875508 d!2202104))

(assert (=> bs!1875508 m!7763116))

(assert (=> bs!1875508 m!7763594))

(assert (=> d!2201688 d!2202104))

(declare-fun bm!640565 () Bool)

(declare-fun call!640572 () Bool)

(declare-fun c!1312923 () Bool)

(declare-fun c!1312924 () Bool)

(assert (=> bm!640565 (= call!640572 (validRegex!8955 (ite c!1312924 (reg!17846 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312923 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (regTwo!35546 (h!74403 (exprs!7013 lt!2528249)))))))))

(declare-fun b!7049163 () Bool)

(declare-fun res!2877676 () Bool)

(declare-fun e!4237674 () Bool)

(assert (=> b!7049163 (=> (not res!2877676) (not e!4237674))))

(declare-fun call!640570 () Bool)

(assert (=> b!7049163 (= res!2877676 call!640570)))

(declare-fun e!4237672 () Bool)

(assert (=> b!7049163 (= e!4237672 e!4237674)))

(declare-fun b!7049164 () Bool)

(declare-fun e!4237675 () Bool)

(declare-fun e!4237673 () Bool)

(assert (=> b!7049164 (= e!4237675 e!4237673)))

(declare-fun res!2877675 () Bool)

(assert (=> b!7049164 (=> (not res!2877675) (not e!4237673))))

(assert (=> b!7049164 (= res!2877675 call!640570)))

(declare-fun b!7049165 () Bool)

(declare-fun e!4237670 () Bool)

(assert (=> b!7049165 (= e!4237670 e!4237672)))

(assert (=> b!7049165 (= c!1312923 ((_ is Union!17517) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7049166 () Bool)

(declare-fun call!640571 () Bool)

(assert (=> b!7049166 (= e!4237673 call!640571)))

(declare-fun b!7049167 () Bool)

(declare-fun e!4237676 () Bool)

(assert (=> b!7049167 (= e!4237676 e!4237670)))

(assert (=> b!7049167 (= c!1312924 ((_ is Star!17517) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7049168 () Bool)

(declare-fun e!4237671 () Bool)

(assert (=> b!7049168 (= e!4237670 e!4237671)))

(declare-fun res!2877677 () Bool)

(assert (=> b!7049168 (= res!2877677 (not (nullable!7228 (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))))

(assert (=> b!7049168 (=> (not res!2877677) (not e!4237671))))

(declare-fun b!7049169 () Bool)

(declare-fun res!2877679 () Bool)

(assert (=> b!7049169 (=> res!2877679 e!4237675)))

(assert (=> b!7049169 (= res!2877679 (not ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528249)))))))

(assert (=> b!7049169 (= e!4237672 e!4237675)))

(declare-fun b!7049170 () Bool)

(assert (=> b!7049170 (= e!4237671 call!640572)))

(declare-fun b!7049171 () Bool)

(assert (=> b!7049171 (= e!4237674 call!640571)))

(declare-fun d!2202106 () Bool)

(declare-fun res!2877678 () Bool)

(assert (=> d!2202106 (=> res!2877678 e!4237676)))

(assert (=> d!2202106 (= res!2877678 ((_ is ElementMatch!17517) (h!74403 (exprs!7013 lt!2528249))))))

(assert (=> d!2202106 (= (validRegex!8955 (h!74403 (exprs!7013 lt!2528249))) e!4237676)))

(declare-fun bm!640566 () Bool)

(assert (=> bm!640566 (= call!640570 (validRegex!8955 (ite c!1312923 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(declare-fun bm!640567 () Bool)

(assert (=> bm!640567 (= call!640571 call!640572)))

(assert (= (and d!2202106 (not res!2877678)) b!7049167))

(assert (= (and b!7049167 c!1312924) b!7049168))

(assert (= (and b!7049167 (not c!1312924)) b!7049165))

(assert (= (and b!7049168 res!2877677) b!7049170))

(assert (= (and b!7049165 c!1312923) b!7049163))

(assert (= (and b!7049165 (not c!1312923)) b!7049169))

(assert (= (and b!7049163 res!2877676) b!7049171))

(assert (= (and b!7049169 (not res!2877679)) b!7049164))

(assert (= (and b!7049164 res!2877675) b!7049166))

(assert (= (or b!7049171 b!7049166) bm!640567))

(assert (= (or b!7049163 b!7049164) bm!640566))

(assert (= (or b!7049170 bm!640567) bm!640565))

(declare-fun m!7764532 () Bool)

(assert (=> bm!640565 m!7764532))

(declare-fun m!7764534 () Bool)

(assert (=> b!7049168 m!7764534))

(declare-fun m!7764536 () Bool)

(assert (=> bm!640566 m!7764536))

(assert (=> d!2201712 d!2202106))

(declare-fun bs!1875509 () Bool)

(declare-fun d!2202108 () Bool)

(assert (= bs!1875509 (and d!2202108 d!2201680)))

(declare-fun lambda!418392 () Int)

(assert (=> bs!1875509 (= lambda!418392 lambda!418346)))

(declare-fun bs!1875510 () Bool)

(assert (= bs!1875510 (and d!2202108 b!7048290)))

(assert (=> bs!1875510 (= lambda!418392 lambda!418307)))

(declare-fun bs!1875511 () Bool)

(assert (= bs!1875511 (and d!2202108 d!2201594)))

(assert (=> bs!1875511 (= lambda!418392 lambda!418319)))

(declare-fun bs!1875512 () Bool)

(assert (= bs!1875512 (and d!2202108 d!2201712)))

(assert (=> bs!1875512 (= lambda!418392 lambda!418354)))

(declare-fun bs!1875513 () Bool)

(assert (= bs!1875513 (and d!2202108 d!2202062)))

(assert (=> bs!1875513 (= lambda!418392 lambda!418383)))

(assert (=> d!2202108 (= (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) (Context!13027 (++!15605 (exprs!7013 lt!2528257) (exprs!7013 ct2!306))) (h!74404 s!7408)) (appendTo!638 (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) lt!2528257 (h!74404 s!7408)) ct2!306))))

(declare-fun lt!2528432 () Unit!161720)

(assert (=> d!2202108 (= lt!2528432 (lemmaConcatPreservesForall!838 (exprs!7013 lt!2528257) (exprs!7013 ct2!306) lambda!418392))))

(assert (=> d!2202108 true))

(declare-fun _$55!132 () Unit!161720)

(assert (=> d!2202108 (= (choose!53625 lt!2528257 (h!74403 (exprs!7013 lt!2528249)) (h!74404 s!7408) ct2!306) _$55!132)))

(declare-fun bs!1875514 () Bool)

(assert (= bs!1875514 d!2202108))

(assert (=> bs!1875514 m!7763664))

(assert (=> bs!1875514 m!7763182))

(assert (=> bs!1875514 m!7763670))

(assert (=> bs!1875514 m!7763182))

(assert (=> bs!1875514 m!7763668))

(declare-fun m!7764538 () Bool)

(assert (=> bs!1875514 m!7764538))

(assert (=> d!2201712 d!2202108))

(declare-fun b!7049174 () Bool)

(declare-fun res!2877680 () Bool)

(declare-fun e!4237677 () Bool)

(assert (=> b!7049174 (=> (not res!2877680) (not e!4237677))))

(declare-fun lt!2528433 () List!68079)

(assert (=> b!7049174 (= res!2877680 (= (size!41124 lt!2528433) (+ (size!41124 (exprs!7013 lt!2528257)) (size!41124 (exprs!7013 ct2!306)))))))

(declare-fun b!7049175 () Bool)

(assert (=> b!7049175 (= e!4237677 (or (not (= (exprs!7013 ct2!306) Nil!67955)) (= lt!2528433 (exprs!7013 lt!2528257))))))

(declare-fun b!7049173 () Bool)

(declare-fun e!4237678 () List!68079)

(assert (=> b!7049173 (= e!4237678 (Cons!67955 (h!74403 (exprs!7013 lt!2528257)) (++!15605 (t!381856 (exprs!7013 lt!2528257)) (exprs!7013 ct2!306))))))

(declare-fun b!7049172 () Bool)

(assert (=> b!7049172 (= e!4237678 (exprs!7013 ct2!306))))

(declare-fun d!2202110 () Bool)

(assert (=> d!2202110 e!4237677))

(declare-fun res!2877681 () Bool)

(assert (=> d!2202110 (=> (not res!2877681) (not e!4237677))))

(assert (=> d!2202110 (= res!2877681 (= (content!13631 lt!2528433) ((_ map or) (content!13631 (exprs!7013 lt!2528257)) (content!13631 (exprs!7013 ct2!306)))))))

(assert (=> d!2202110 (= lt!2528433 e!4237678)))

(declare-fun c!1312926 () Bool)

(assert (=> d!2202110 (= c!1312926 ((_ is Nil!67955) (exprs!7013 lt!2528257)))))

(assert (=> d!2202110 (= (++!15605 (exprs!7013 lt!2528257) (exprs!7013 ct2!306)) lt!2528433)))

(assert (= (and d!2202110 c!1312926) b!7049172))

(assert (= (and d!2202110 (not c!1312926)) b!7049173))

(assert (= (and d!2202110 res!2877681) b!7049174))

(assert (= (and b!7049174 res!2877680) b!7049175))

(declare-fun m!7764540 () Bool)

(assert (=> b!7049174 m!7764540))

(declare-fun m!7764542 () Bool)

(assert (=> b!7049174 m!7764542))

(assert (=> b!7049174 m!7763486))

(declare-fun m!7764544 () Bool)

(assert (=> b!7049173 m!7764544))

(declare-fun m!7764546 () Bool)

(assert (=> d!2202110 m!7764546))

(declare-fun m!7764548 () Bool)

(assert (=> d!2202110 m!7764548))

(assert (=> d!2202110 m!7763494))

(assert (=> d!2201712 d!2202110))

(declare-fun bs!1875515 () Bool)

(declare-fun d!2202112 () Bool)

(assert (= bs!1875515 (and d!2202112 b!7048290)))

(declare-fun lambda!418393 () Int)

(assert (=> bs!1875515 (= lambda!418393 lambda!418306)))

(declare-fun bs!1875516 () Bool)

(assert (= bs!1875516 (and d!2202112 d!2201678)))

(assert (=> bs!1875516 (= lambda!418393 lambda!418345)))

(declare-fun bs!1875517 () Bool)

(assert (= bs!1875517 (and d!2202112 d!2201706)))

(assert (=> bs!1875517 (= lambda!418393 lambda!418351)))

(assert (=> d!2202112 true))

(assert (=> d!2202112 (= (appendTo!638 (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) lt!2528257 (h!74404 s!7408)) ct2!306) (map!15831 (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) lt!2528257 (h!74404 s!7408)) lambda!418393))))

(declare-fun bs!1875518 () Bool)

(assert (= bs!1875518 d!2202112))

(assert (=> bs!1875518 m!7763182))

(declare-fun m!7764550 () Bool)

(assert (=> bs!1875518 m!7764550))

(assert (=> d!2201712 d!2202112))

(declare-fun b!7049176 () Bool)

(declare-fun e!4237681 () (InoxSet Context!13026))

(assert (=> b!7049176 (= e!4237681 (store ((as const (Array Context!13026 Bool)) false) (Context!13027 (++!15605 (exprs!7013 lt!2528257) (exprs!7013 ct2!306))) true))))

(declare-fun b!7049177 () Bool)

(declare-fun c!1312931 () Bool)

(declare-fun e!4237680 () Bool)

(assert (=> b!7049177 (= c!1312931 e!4237680)))

(declare-fun res!2877682 () Bool)

(assert (=> b!7049177 (=> (not res!2877682) (not e!4237680))))

(assert (=> b!7049177 (= res!2877682 ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun e!4237684 () (InoxSet Context!13026))

(declare-fun e!4237679 () (InoxSet Context!13026))

(assert (=> b!7049177 (= e!4237684 e!4237679)))

(declare-fun bm!640568 () Bool)

(declare-fun call!640577 () (InoxSet Context!13026))

(declare-fun call!640574 () (InoxSet Context!13026))

(assert (=> bm!640568 (= call!640577 call!640574)))

(declare-fun bm!640569 () Bool)

(declare-fun call!640576 () (InoxSet Context!13026))

(assert (=> bm!640569 (= call!640576 call!640577)))

(declare-fun b!7049178 () Bool)

(declare-fun e!4237682 () (InoxSet Context!13026))

(assert (=> b!7049178 (= e!4237679 e!4237682)))

(declare-fun c!1312929 () Bool)

(assert (=> b!7049178 (= c!1312929 ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7049179 () Bool)

(declare-fun call!640575 () (InoxSet Context!13026))

(assert (=> b!7049179 (= e!4237684 ((_ map or) call!640575 call!640574))))

(declare-fun b!7049180 () Bool)

(assert (=> b!7049180 (= e!4237679 ((_ map or) call!640575 call!640577))))

(declare-fun b!7049181 () Bool)

(assert (=> b!7049181 (= e!4237681 e!4237684)))

(declare-fun c!1312927 () Bool)

(assert (=> b!7049181 (= c!1312927 ((_ is Union!17517) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7049182 () Bool)

(declare-fun e!4237683 () (InoxSet Context!13026))

(assert (=> b!7049182 (= e!4237683 call!640576)))

(declare-fun b!7049183 () Bool)

(assert (=> b!7049183 (= e!4237682 call!640576)))

(declare-fun bm!640570 () Bool)

(declare-fun call!640578 () List!68079)

(assert (=> bm!640570 (= call!640575 (derivationStepZipperDown!2181 (ite c!1312927 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))) (ite c!1312927 (Context!13027 (++!15605 (exprs!7013 lt!2528257) (exprs!7013 ct2!306))) (Context!13027 call!640578)) (h!74404 s!7408)))))

(declare-fun b!7049184 () Bool)

(declare-fun c!1312928 () Bool)

(assert (=> b!7049184 (= c!1312928 ((_ is Star!17517) (h!74403 (exprs!7013 lt!2528249))))))

(assert (=> b!7049184 (= e!4237682 e!4237683)))

(declare-fun b!7049185 () Bool)

(assert (=> b!7049185 (= e!4237680 (nullable!7228 (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))

(declare-fun d!2202114 () Bool)

(declare-fun c!1312930 () Bool)

(assert (=> d!2202114 (= c!1312930 (and ((_ is ElementMatch!17517) (h!74403 (exprs!7013 lt!2528249))) (= (c!1312641 (h!74403 (exprs!7013 lt!2528249))) (h!74404 s!7408))))))

(assert (=> d!2202114 (= (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528249)) (Context!13027 (++!15605 (exprs!7013 lt!2528257) (exprs!7013 ct2!306))) (h!74404 s!7408)) e!4237681)))

(declare-fun bm!640571 () Bool)

(declare-fun call!640573 () List!68079)

(assert (=> bm!640571 (= call!640573 call!640578)))

(declare-fun b!7049186 () Bool)

(assert (=> b!7049186 (= e!4237683 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640572 () Bool)

(assert (=> bm!640572 (= call!640574 (derivationStepZipperDown!2181 (ite c!1312927 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312931 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312929 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))) (ite (or c!1312927 c!1312931) (Context!13027 (++!15605 (exprs!7013 lt!2528257) (exprs!7013 ct2!306))) (Context!13027 call!640573)) (h!74404 s!7408)))))

(declare-fun bm!640573 () Bool)

(assert (=> bm!640573 (= call!640578 ($colon$colon!2611 (exprs!7013 (Context!13027 (++!15605 (exprs!7013 lt!2528257) (exprs!7013 ct2!306)))) (ite (or c!1312931 c!1312929) (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (h!74403 (exprs!7013 lt!2528249)))))))

(assert (= (and d!2202114 c!1312930) b!7049176))

(assert (= (and d!2202114 (not c!1312930)) b!7049181))

(assert (= (and b!7049181 c!1312927) b!7049179))

(assert (= (and b!7049181 (not c!1312927)) b!7049177))

(assert (= (and b!7049177 res!2877682) b!7049185))

(assert (= (and b!7049177 c!1312931) b!7049180))

(assert (= (and b!7049177 (not c!1312931)) b!7049178))

(assert (= (and b!7049178 c!1312929) b!7049183))

(assert (= (and b!7049178 (not c!1312929)) b!7049184))

(assert (= (and b!7049184 c!1312928) b!7049182))

(assert (= (and b!7049184 (not c!1312928)) b!7049186))

(assert (= (or b!7049183 b!7049182) bm!640571))

(assert (= (or b!7049183 b!7049182) bm!640569))

(assert (= (or b!7049180 bm!640569) bm!640568))

(assert (= (or b!7049180 bm!640571) bm!640573))

(assert (= (or b!7049179 b!7049180) bm!640570))

(assert (= (or b!7049179 bm!640568) bm!640572))

(declare-fun m!7764552 () Bool)

(assert (=> bm!640573 m!7764552))

(declare-fun m!7764554 () Bool)

(assert (=> bm!640570 m!7764554))

(declare-fun m!7764556 () Bool)

(assert (=> b!7049176 m!7764556))

(assert (=> b!7049185 m!7763478))

(declare-fun m!7764558 () Bool)

(assert (=> bm!640572 m!7764558))

(assert (=> d!2201712 d!2202114))

(assert (=> d!2201712 d!2201710))

(declare-fun d!2202116 () Bool)

(assert (=> d!2202116 (forall!16453 (++!15605 (exprs!7013 lt!2528257) (exprs!7013 ct2!306)) lambda!418354)))

(declare-fun lt!2528434 () Unit!161720)

(assert (=> d!2202116 (= lt!2528434 (choose!53619 (exprs!7013 lt!2528257) (exprs!7013 ct2!306) lambda!418354))))

(assert (=> d!2202116 (forall!16453 (exprs!7013 lt!2528257) lambda!418354)))

(assert (=> d!2202116 (= (lemmaConcatPreservesForall!838 (exprs!7013 lt!2528257) (exprs!7013 ct2!306) lambda!418354) lt!2528434)))

(declare-fun bs!1875519 () Bool)

(assert (= bs!1875519 d!2202116))

(assert (=> bs!1875519 m!7763664))

(assert (=> bs!1875519 m!7763664))

(declare-fun m!7764560 () Bool)

(assert (=> bs!1875519 m!7764560))

(declare-fun m!7764562 () Bool)

(assert (=> bs!1875519 m!7764562))

(declare-fun m!7764564 () Bool)

(assert (=> bs!1875519 m!7764564))

(assert (=> d!2201712 d!2202116))

(declare-fun b!7049187 () Bool)

(declare-fun e!4237687 () (InoxSet Context!13026))

(assert (=> b!7049187 (= e!4237687 (store ((as const (Array Context!13026 Bool)) false) (ite c!1312710 (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640481)) true))))

(declare-fun b!7049188 () Bool)

(declare-fun c!1312936 () Bool)

(declare-fun e!4237686 () Bool)

(assert (=> b!7049188 (= c!1312936 e!4237686)))

(declare-fun res!2877683 () Bool)

(assert (=> b!7049188 (=> (not res!2877683) (not e!4237686))))

(assert (=> b!7049188 (= res!2877683 ((_ is Concat!26362) (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(declare-fun e!4237690 () (InoxSet Context!13026))

(declare-fun e!4237685 () (InoxSet Context!13026))

(assert (=> b!7049188 (= e!4237690 e!4237685)))

(declare-fun bm!640574 () Bool)

(declare-fun call!640583 () (InoxSet Context!13026))

(declare-fun call!640580 () (InoxSet Context!13026))

(assert (=> bm!640574 (= call!640583 call!640580)))

(declare-fun bm!640575 () Bool)

(declare-fun call!640582 () (InoxSet Context!13026))

(assert (=> bm!640575 (= call!640582 call!640583)))

(declare-fun b!7049189 () Bool)

(declare-fun e!4237688 () (InoxSet Context!13026))

(assert (=> b!7049189 (= e!4237685 e!4237688)))

(declare-fun c!1312934 () Bool)

(assert (=> b!7049189 (= c!1312934 ((_ is Concat!26362) (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(declare-fun b!7049190 () Bool)

(declare-fun call!640581 () (InoxSet Context!13026))

(assert (=> b!7049190 (= e!4237690 ((_ map or) call!640581 call!640580))))

(declare-fun b!7049191 () Bool)

(assert (=> b!7049191 (= e!4237685 ((_ map or) call!640581 call!640583))))

(declare-fun b!7049192 () Bool)

(assert (=> b!7049192 (= e!4237687 e!4237690)))

(declare-fun c!1312932 () Bool)

(assert (=> b!7049192 (= c!1312932 ((_ is Union!17517) (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(declare-fun b!7049193 () Bool)

(declare-fun e!4237689 () (InoxSet Context!13026))

(assert (=> b!7049193 (= e!4237689 call!640582)))

(declare-fun b!7049194 () Bool)

(assert (=> b!7049194 (= e!4237688 call!640582)))

(declare-fun bm!640576 () Bool)

(declare-fun call!640584 () List!68079)

(assert (=> bm!640576 (= call!640581 (derivationStepZipperDown!2181 (ite c!1312932 (regOne!35547 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (regOne!35546 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))) (ite c!1312932 (ite c!1312710 (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640481)) (Context!13027 call!640584)) (h!74404 s!7408)))))

(declare-fun b!7049195 () Bool)

(declare-fun c!1312933 () Bool)

(assert (=> b!7049195 (= c!1312933 ((_ is Star!17517) (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(assert (=> b!7049195 (= e!4237688 e!4237689)))

(declare-fun b!7049196 () Bool)

(assert (=> b!7049196 (= e!4237686 (nullable!7228 (regOne!35546 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))))

(declare-fun c!1312935 () Bool)

(declare-fun d!2202118 () Bool)

(assert (=> d!2202118 (= c!1312935 (and ((_ is ElementMatch!17517) (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (= (c!1312641 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (h!74404 s!7408))))))

(assert (=> d!2202118 (= (derivationStepZipperDown!2181 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))) (ite c!1312710 (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640481)) (h!74404 s!7408)) e!4237687)))

(declare-fun bm!640577 () Bool)

(declare-fun call!640579 () List!68079)

(assert (=> bm!640577 (= call!640579 call!640584)))

(declare-fun b!7049197 () Bool)

(assert (=> b!7049197 (= e!4237689 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640578 () Bool)

(assert (=> bm!640578 (= call!640580 (derivationStepZipperDown!2181 (ite c!1312932 (regTwo!35547 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (ite c!1312936 (regTwo!35546 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (ite c!1312934 (regOne!35546 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (reg!17846 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))) (ite (or c!1312932 c!1312936) (ite c!1312710 (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640481)) (Context!13027 call!640579)) (h!74404 s!7408)))))

(declare-fun bm!640579 () Bool)

(assert (=> bm!640579 (= call!640584 ($colon$colon!2611 (exprs!7013 (ite c!1312710 (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640481))) (ite (or c!1312936 c!1312934) (regTwo!35546 (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (ite c!1312710 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))))

(assert (= (and d!2202118 c!1312935) b!7049187))

(assert (= (and d!2202118 (not c!1312935)) b!7049192))

(assert (= (and b!7049192 c!1312932) b!7049190))

(assert (= (and b!7049192 (not c!1312932)) b!7049188))

(assert (= (and b!7049188 res!2877683) b!7049196))

(assert (= (and b!7049188 c!1312936) b!7049191))

(assert (= (and b!7049188 (not c!1312936)) b!7049189))

(assert (= (and b!7049189 c!1312934) b!7049194))

(assert (= (and b!7049189 (not c!1312934)) b!7049195))

(assert (= (and b!7049195 c!1312933) b!7049193))

(assert (= (and b!7049195 (not c!1312933)) b!7049197))

(assert (= (or b!7049194 b!7049193) bm!640577))

(assert (= (or b!7049194 b!7049193) bm!640575))

(assert (= (or b!7049191 bm!640575) bm!640574))

(assert (= (or b!7049191 bm!640577) bm!640579))

(assert (= (or b!7049190 b!7049191) bm!640576))

(assert (= (or b!7049190 bm!640574) bm!640578))

(declare-fun m!7764566 () Bool)

(assert (=> bm!640579 m!7764566))

(declare-fun m!7764568 () Bool)

(assert (=> bm!640576 m!7764568))

(declare-fun m!7764570 () Bool)

(assert (=> b!7049187 m!7764570))

(declare-fun m!7764572 () Bool)

(assert (=> b!7049196 m!7764572))

(declare-fun m!7764574 () Bool)

(assert (=> bm!640578 m!7764574))

(assert (=> bm!640473 d!2202118))

(declare-fun d!2202120 () Bool)

(assert (=> d!2202120 (= (flatMap!2464 lt!2528242 lambda!418350) (choose!53623 lt!2528242 lambda!418350))))

(declare-fun bs!1875520 () Bool)

(assert (= bs!1875520 d!2202120))

(declare-fun m!7764576 () Bool)

(assert (=> bs!1875520 m!7764576))

(assert (=> d!2201692 d!2202120))

(declare-fun d!2202122 () Bool)

(assert (=> d!2202122 (= (isEmpty!39671 (t!381857 s!7408)) ((_ is Nil!67956) (t!381857 s!7408)))))

(assert (=> d!2201600 d!2202122))

(declare-fun d!2202124 () Bool)

(declare-fun c!1312937 () Bool)

(assert (=> d!2202124 (= c!1312937 (isEmpty!39671 (tail!13646 s!7408)))))

(declare-fun e!4237691 () Bool)

(assert (=> d!2202124 (= (matchZipper!3057 (derivationStepZipper!2973 lt!2528256 (head!14315 s!7408)) (tail!13646 s!7408)) e!4237691)))

(declare-fun b!7049198 () Bool)

(assert (=> b!7049198 (= e!4237691 (nullableZipper!2618 (derivationStepZipper!2973 lt!2528256 (head!14315 s!7408))))))

(declare-fun b!7049199 () Bool)

(assert (=> b!7049199 (= e!4237691 (matchZipper!3057 (derivationStepZipper!2973 (derivationStepZipper!2973 lt!2528256 (head!14315 s!7408)) (head!14315 (tail!13646 s!7408))) (tail!13646 (tail!13646 s!7408))))))

(assert (= (and d!2202124 c!1312937) b!7049198))

(assert (= (and d!2202124 (not c!1312937)) b!7049199))

(assert (=> d!2202124 m!7763544))

(declare-fun m!7764578 () Bool)

(assert (=> d!2202124 m!7764578))

(assert (=> b!7049198 m!7763542))

(declare-fun m!7764580 () Bool)

(assert (=> b!7049198 m!7764580))

(assert (=> b!7049199 m!7763544))

(declare-fun m!7764582 () Bool)

(assert (=> b!7049199 m!7764582))

(assert (=> b!7049199 m!7763542))

(assert (=> b!7049199 m!7764582))

(declare-fun m!7764584 () Bool)

(assert (=> b!7049199 m!7764584))

(assert (=> b!7049199 m!7763544))

(declare-fun m!7764586 () Bool)

(assert (=> b!7049199 m!7764586))

(assert (=> b!7049199 m!7764584))

(assert (=> b!7049199 m!7764586))

(declare-fun m!7764588 () Bool)

(assert (=> b!7049199 m!7764588))

(assert (=> b!7048523 d!2202124))

(declare-fun bs!1875521 () Bool)

(declare-fun d!2202126 () Bool)

(assert (= bs!1875521 (and d!2202126 d!2201690)))

(declare-fun lambda!418394 () Int)

(assert (=> bs!1875521 (= (= (head!14315 s!7408) (h!74404 s!7408)) (= lambda!418394 lambda!418349))))

(declare-fun bs!1875522 () Bool)

(assert (= bs!1875522 (and d!2202126 d!2202096)))

(assert (=> bs!1875522 (= (= (head!14315 s!7408) (head!14315 (t!381857 s!7408))) (= lambda!418394 lambda!418389))))

(declare-fun bs!1875523 () Bool)

(assert (= bs!1875523 (and d!2202126 b!7048286)))

(assert (=> bs!1875523 (= (= (head!14315 s!7408) (h!74404 s!7408)) (= lambda!418394 lambda!418308))))

(declare-fun bs!1875524 () Bool)

(assert (= bs!1875524 (and d!2202126 d!2201692)))

(assert (=> bs!1875524 (= (= (head!14315 s!7408) (h!74404 s!7408)) (= lambda!418394 lambda!418350))))

(declare-fun bs!1875525 () Bool)

(assert (= bs!1875525 (and d!2202126 d!2202034)))

(assert (=> bs!1875525 (= (= (head!14315 s!7408) (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))) (= lambda!418394 lambda!418382))))

(assert (=> d!2202126 true))

(assert (=> d!2202126 (= (derivationStepZipper!2973 lt!2528256 (head!14315 s!7408)) (flatMap!2464 lt!2528256 lambda!418394))))

(declare-fun bs!1875526 () Bool)

(assert (= bs!1875526 d!2202126))

(declare-fun m!7764590 () Bool)

(assert (=> bs!1875526 m!7764590))

(assert (=> b!7048523 d!2202126))

(declare-fun d!2202128 () Bool)

(assert (=> d!2202128 (= (head!14315 s!7408) (h!74404 s!7408))))

(assert (=> b!7048523 d!2202128))

(declare-fun d!2202130 () Bool)

(assert (=> d!2202130 (= (tail!13646 s!7408) (t!381857 s!7408))))

(assert (=> b!7048523 d!2202130))

(declare-fun d!2202132 () Bool)

(declare-fun choose!53632 ((InoxSet Context!13026) Int) (InoxSet Context!13026))

(assert (=> d!2202132 (= (map!15831 z1!570 lambda!418345) (choose!53632 z1!570 lambda!418345))))

(declare-fun bs!1875527 () Bool)

(assert (= bs!1875527 d!2202132))

(declare-fun m!7764592 () Bool)

(assert (=> bs!1875527 m!7764592))

(assert (=> d!2201678 d!2202132))

(declare-fun d!2202134 () Bool)

(assert (=> d!2202134 (= (isEmpty!39672 lt!2528251) (not ((_ is Some!16913) lt!2528251)))))

(assert (=> d!2201704 d!2202134))

(declare-fun d!2202136 () Bool)

(declare-fun c!1312938 () Bool)

(assert (=> d!2202136 (= c!1312938 ((_ is Nil!67957) lt!2528330))))

(declare-fun e!4237692 () (InoxSet Context!13026))

(assert (=> d!2202136 (= (content!13632 lt!2528330) e!4237692)))

(declare-fun b!7049200 () Bool)

(assert (=> b!7049200 (= e!4237692 ((as const (Array Context!13026 Bool)) false))))

(declare-fun b!7049201 () Bool)

(assert (=> b!7049201 (= e!4237692 ((_ map or) (store ((as const (Array Context!13026 Bool)) false) (h!74405 lt!2528330) true) (content!13632 (t!381858 lt!2528330))))))

(assert (= (and d!2202136 c!1312938) b!7049200))

(assert (= (and d!2202136 (not c!1312938)) b!7049201))

(declare-fun m!7764594 () Bool)

(assert (=> b!7049201 m!7764594))

(declare-fun m!7764596 () Bool)

(assert (=> b!7049201 m!7764596))

(assert (=> b!7048531 d!2202136))

(declare-fun d!2202138 () Bool)

(declare-fun e!4237698 () Bool)

(assert (=> d!2202138 e!4237698))

(declare-fun res!2877686 () Bool)

(assert (=> d!2202138 (=> (not res!2877686) (not e!4237698))))

(declare-fun a!13399 () Context!13026)

(assert (=> d!2202138 (= res!2877686 (= lt!2528262 (dynLambda!27534 lambda!418306 a!13399)))))

(declare-fun e!4237697 () Bool)

(assert (=> d!2202138 (and (inv!86651 a!13399) e!4237697)))

(assert (=> d!2202138 (= (choose!53620 z1!570 lambda!418306 lt!2528262) a!13399)))

(declare-fun b!7049207 () Bool)

(declare-fun tp!1938448 () Bool)

(assert (=> b!7049207 (= e!4237697 tp!1938448)))

(declare-fun b!7049208 () Bool)

(assert (=> b!7049208 (= e!4237698 (select z1!570 a!13399))))

(assert (= d!2202138 b!7049207))

(assert (= (and d!2202138 res!2877686) b!7049208))

(declare-fun b_lambda!267987 () Bool)

(assert (=> (not b_lambda!267987) (not d!2202138)))

(declare-fun m!7764598 () Bool)

(assert (=> d!2202138 m!7764598))

(declare-fun m!7764600 () Bool)

(assert (=> d!2202138 m!7764600))

(declare-fun m!7764602 () Bool)

(assert (=> b!7049208 m!7764602))

(assert (=> d!2201664 d!2202138))

(declare-fun d!2202140 () Bool)

(assert (=> d!2202140 (= (map!15831 z1!570 lambda!418306) (choose!53632 z1!570 lambda!418306))))

(declare-fun bs!1875528 () Bool)

(assert (= bs!1875528 d!2202140))

(declare-fun m!7764604 () Bool)

(assert (=> bs!1875528 m!7764604))

(assert (=> d!2201664 d!2202140))

(declare-fun d!2202142 () Bool)

(declare-fun lt!2528435 () Int)

(assert (=> d!2202142 (>= lt!2528435 0)))

(declare-fun e!4237699 () Int)

(assert (=> d!2202142 (= lt!2528435 e!4237699)))

(declare-fun c!1312939 () Bool)

(assert (=> d!2202142 (= c!1312939 ((_ is Nil!67955) lt!2528317))))

(assert (=> d!2202142 (= (size!41124 lt!2528317) lt!2528435)))

(declare-fun b!7049209 () Bool)

(assert (=> b!7049209 (= e!4237699 0)))

(declare-fun b!7049210 () Bool)

(assert (=> b!7049210 (= e!4237699 (+ 1 (size!41124 (t!381856 lt!2528317))))))

(assert (= (and d!2202142 c!1312939) b!7049209))

(assert (= (and d!2202142 (not c!1312939)) b!7049210))

(declare-fun m!7764606 () Bool)

(assert (=> b!7049210 m!7764606))

(assert (=> b!7048516 d!2202142))

(declare-fun d!2202144 () Bool)

(declare-fun lt!2528436 () Int)

(assert (=> d!2202144 (>= lt!2528436 0)))

(declare-fun e!4237700 () Int)

(assert (=> d!2202144 (= lt!2528436 e!4237700)))

(declare-fun c!1312940 () Bool)

(assert (=> d!2202144 (= c!1312940 ((_ is Nil!67955) (exprs!7013 lt!2528249)))))

(assert (=> d!2202144 (= (size!41124 (exprs!7013 lt!2528249)) lt!2528436)))

(declare-fun b!7049211 () Bool)

(assert (=> b!7049211 (= e!4237700 0)))

(declare-fun b!7049212 () Bool)

(assert (=> b!7049212 (= e!4237700 (+ 1 (size!41124 (t!381856 (exprs!7013 lt!2528249)))))))

(assert (= (and d!2202144 c!1312940) b!7049211))

(assert (= (and d!2202144 (not c!1312940)) b!7049212))

(assert (=> b!7049212 m!7764314))

(assert (=> b!7048516 d!2202144))

(assert (=> b!7048516 d!2202026))

(assert (=> d!2201668 d!2202080))

(assert (=> bs!1875314 d!2201686))

(declare-fun d!2202146 () Bool)

(declare-fun c!1312941 () Bool)

(assert (=> d!2202146 (= c!1312941 (isEmpty!39671 (tail!13646 (_2!37385 lt!2528255))))))

(declare-fun e!4237701 () Bool)

(assert (=> d!2202146 (= (matchZipper!3057 (derivationStepZipper!2973 lt!2528241 (head!14315 (_2!37385 lt!2528255))) (tail!13646 (_2!37385 lt!2528255))) e!4237701)))

(declare-fun b!7049213 () Bool)

(assert (=> b!7049213 (= e!4237701 (nullableZipper!2618 (derivationStepZipper!2973 lt!2528241 (head!14315 (_2!37385 lt!2528255)))))))

(declare-fun b!7049214 () Bool)

(assert (=> b!7049214 (= e!4237701 (matchZipper!3057 (derivationStepZipper!2973 (derivationStepZipper!2973 lt!2528241 (head!14315 (_2!37385 lt!2528255))) (head!14315 (tail!13646 (_2!37385 lt!2528255)))) (tail!13646 (tail!13646 (_2!37385 lt!2528255)))))))

(assert (= (and d!2202146 c!1312941) b!7049213))

(assert (= (and d!2202146 (not c!1312941)) b!7049214))

(assert (=> d!2202146 m!7763690))

(declare-fun m!7764608 () Bool)

(assert (=> d!2202146 m!7764608))

(assert (=> b!7049213 m!7763688))

(declare-fun m!7764610 () Bool)

(assert (=> b!7049213 m!7764610))

(assert (=> b!7049214 m!7763690))

(declare-fun m!7764612 () Bool)

(assert (=> b!7049214 m!7764612))

(assert (=> b!7049214 m!7763688))

(assert (=> b!7049214 m!7764612))

(declare-fun m!7764614 () Bool)

(assert (=> b!7049214 m!7764614))

(assert (=> b!7049214 m!7763690))

(declare-fun m!7764616 () Bool)

(assert (=> b!7049214 m!7764616))

(assert (=> b!7049214 m!7764614))

(assert (=> b!7049214 m!7764616))

(declare-fun m!7764618 () Bool)

(assert (=> b!7049214 m!7764618))

(assert (=> b!7048609 d!2202146))

(declare-fun bs!1875529 () Bool)

(declare-fun d!2202148 () Bool)

(assert (= bs!1875529 (and d!2202148 d!2201690)))

(declare-fun lambda!418395 () Int)

(assert (=> bs!1875529 (= (= (head!14315 (_2!37385 lt!2528255)) (h!74404 s!7408)) (= lambda!418395 lambda!418349))))

(declare-fun bs!1875530 () Bool)

(assert (= bs!1875530 (and d!2202148 d!2202126)))

(assert (=> bs!1875530 (= (= (head!14315 (_2!37385 lt!2528255)) (head!14315 s!7408)) (= lambda!418395 lambda!418394))))

(declare-fun bs!1875531 () Bool)

(assert (= bs!1875531 (and d!2202148 d!2202096)))

(assert (=> bs!1875531 (= (= (head!14315 (_2!37385 lt!2528255)) (head!14315 (t!381857 s!7408))) (= lambda!418395 lambda!418389))))

(declare-fun bs!1875532 () Bool)

(assert (= bs!1875532 (and d!2202148 b!7048286)))

(assert (=> bs!1875532 (= (= (head!14315 (_2!37385 lt!2528255)) (h!74404 s!7408)) (= lambda!418395 lambda!418308))))

(declare-fun bs!1875533 () Bool)

(assert (= bs!1875533 (and d!2202148 d!2201692)))

(assert (=> bs!1875533 (= (= (head!14315 (_2!37385 lt!2528255)) (h!74404 s!7408)) (= lambda!418395 lambda!418350))))

(declare-fun bs!1875534 () Bool)

(assert (= bs!1875534 (and d!2202148 d!2202034)))

(assert (=> bs!1875534 (= (= (head!14315 (_2!37385 lt!2528255)) (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))) (= lambda!418395 lambda!418382))))

(assert (=> d!2202148 true))

(assert (=> d!2202148 (= (derivationStepZipper!2973 lt!2528241 (head!14315 (_2!37385 lt!2528255))) (flatMap!2464 lt!2528241 lambda!418395))))

(declare-fun bs!1875535 () Bool)

(assert (= bs!1875535 d!2202148))

(declare-fun m!7764620 () Bool)

(assert (=> bs!1875535 m!7764620))

(assert (=> b!7048609 d!2202148))

(declare-fun d!2202150 () Bool)

(assert (=> d!2202150 (= (head!14315 (_2!37385 lt!2528255)) (h!74404 (_2!37385 lt!2528255)))))

(assert (=> b!7048609 d!2202150))

(declare-fun d!2202152 () Bool)

(assert (=> d!2202152 (= (tail!13646 (_2!37385 lt!2528255)) (t!381857 (_2!37385 lt!2528255)))))

(assert (=> b!7048609 d!2202152))

(declare-fun b!7049215 () Bool)

(declare-fun e!4237703 () Bool)

(assert (=> b!7049215 (= e!4237703 (nullable!7228 (h!74403 (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528238)))))))))

(declare-fun b!7049217 () Bool)

(declare-fun e!4237704 () (InoxSet Context!13026))

(assert (=> b!7049217 (= e!4237704 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640580 () Bool)

(declare-fun call!640585 () (InoxSet Context!13026))

(assert (=> bm!640580 (= call!640585 (derivationStepZipperDown!2181 (h!74403 (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528238))))) (Context!13027 (t!381856 (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528238)))))) (h!74404 s!7408)))))

(declare-fun b!7049218 () Bool)

(assert (=> b!7049218 (= e!4237704 call!640585)))

(declare-fun e!4237702 () (InoxSet Context!13026))

(declare-fun b!7049219 () Bool)

(assert (=> b!7049219 (= e!4237702 ((_ map or) call!640585 (derivationStepZipperUp!2127 (Context!13027 (t!381856 (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528238)))))) (h!74404 s!7408))))))

(declare-fun b!7049216 () Bool)

(assert (=> b!7049216 (= e!4237702 e!4237704)))

(declare-fun c!1312943 () Bool)

(assert (=> b!7049216 (= c!1312943 ((_ is Cons!67955) (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528238))))))))

(declare-fun d!2202154 () Bool)

(declare-fun c!1312942 () Bool)

(assert (=> d!2202154 (= c!1312942 e!4237703)))

(declare-fun res!2877687 () Bool)

(assert (=> d!2202154 (=> (not res!2877687) (not e!4237703))))

(assert (=> d!2202154 (= res!2877687 ((_ is Cons!67955) (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528238))))))))

(assert (=> d!2202154 (= (derivationStepZipperUp!2127 (Context!13027 (t!381856 (exprs!7013 lt!2528238))) (h!74404 s!7408)) e!4237702)))

(assert (= (and d!2202154 res!2877687) b!7049215))

(assert (= (and d!2202154 c!1312942) b!7049219))

(assert (= (and d!2202154 (not c!1312942)) b!7049216))

(assert (= (and b!7049216 c!1312943) b!7049218))

(assert (= (and b!7049216 (not c!1312943)) b!7049217))

(assert (= (or b!7049219 b!7049218) bm!640580))

(declare-fun m!7764622 () Bool)

(assert (=> b!7049215 m!7764622))

(declare-fun m!7764624 () Bool)

(assert (=> bm!640580 m!7764624))

(declare-fun m!7764626 () Bool)

(assert (=> b!7049219 m!7764626))

(assert (=> b!7048567 d!2202154))

(declare-fun d!2202156 () Bool)

(assert (=> d!2202156 (= (isDefined!13615 (findConcatSeparationZippers!430 lt!2528240 (store ((as const (Array Context!13026 Bool)) false) ct2!306 true) Nil!67956 (t!381857 s!7408) (t!381857 s!7408))) (not (isEmpty!39672 (findConcatSeparationZippers!430 lt!2528240 (store ((as const (Array Context!13026 Bool)) false) ct2!306 true) Nil!67956 (t!381857 s!7408) (t!381857 s!7408)))))))

(declare-fun bs!1875536 () Bool)

(assert (= bs!1875536 d!2202156))

(assert (=> bs!1875536 m!7763678))

(declare-fun m!7764628 () Bool)

(assert (=> bs!1875536 m!7764628))

(assert (=> d!2201714 d!2202156))

(declare-fun d!2202158 () Bool)

(assert (=> d!2202158 (isDefined!13615 (findConcatSeparationZippers!430 lt!2528240 (store ((as const (Array Context!13026 Bool)) false) ct2!306 true) Nil!67956 (t!381857 s!7408) (t!381857 s!7408)))))

(assert (=> d!2202158 true))

(declare-fun _$50!602 () Unit!161720)

(assert (=> d!2202158 (= (choose!53626 lt!2528240 ct2!306 (t!381857 s!7408)) _$50!602)))

(declare-fun bs!1875537 () Bool)

(assert (= bs!1875537 d!2202158))

(assert (=> bs!1875537 m!7763174))

(assert (=> bs!1875537 m!7763174))

(assert (=> bs!1875537 m!7763678))

(assert (=> bs!1875537 m!7763678))

(assert (=> bs!1875537 m!7763680))

(assert (=> d!2201714 d!2202158))

(assert (=> d!2201714 d!2201706))

(declare-fun b!7049220 () Bool)

(declare-fun e!4237705 () Option!16914)

(assert (=> b!7049220 (= e!4237705 None!16913)))

(declare-fun d!2202160 () Bool)

(declare-fun e!4237708 () Bool)

(assert (=> d!2202160 e!4237708))

(declare-fun res!2877689 () Bool)

(assert (=> d!2202160 (=> res!2877689 e!4237708)))

(declare-fun e!4237709 () Bool)

(assert (=> d!2202160 (= res!2877689 e!4237709)))

(declare-fun res!2877691 () Bool)

(assert (=> d!2202160 (=> (not res!2877691) (not e!4237709))))

(declare-fun lt!2528438 () Option!16914)

(assert (=> d!2202160 (= res!2877691 (isDefined!13615 lt!2528438))))

(declare-fun e!4237707 () Option!16914)

(assert (=> d!2202160 (= lt!2528438 e!4237707)))

(declare-fun c!1312945 () Bool)

(declare-fun e!4237706 () Bool)

(assert (=> d!2202160 (= c!1312945 e!4237706)))

(declare-fun res!2877690 () Bool)

(assert (=> d!2202160 (=> (not res!2877690) (not e!4237706))))

(assert (=> d!2202160 (= res!2877690 (matchZipper!3057 lt!2528240 Nil!67956))))

(assert (=> d!2202160 (= (++!15606 Nil!67956 (t!381857 s!7408)) (t!381857 s!7408))))

(assert (=> d!2202160 (= (findConcatSeparationZippers!430 lt!2528240 (store ((as const (Array Context!13026 Bool)) false) ct2!306 true) Nil!67956 (t!381857 s!7408) (t!381857 s!7408)) lt!2528438)))

(declare-fun b!7049221 () Bool)

(assert (=> b!7049221 (= e!4237706 (matchZipper!3057 (store ((as const (Array Context!13026 Bool)) false) ct2!306 true) (t!381857 s!7408)))))

(declare-fun b!7049222 () Bool)

(declare-fun res!2877692 () Bool)

(assert (=> b!7049222 (=> (not res!2877692) (not e!4237709))))

(assert (=> b!7049222 (= res!2877692 (matchZipper!3057 lt!2528240 (_1!37385 (get!23823 lt!2528438))))))

(declare-fun b!7049223 () Bool)

(assert (=> b!7049223 (= e!4237707 (Some!16913 (tuple2!68165 Nil!67956 (t!381857 s!7408))))))

(declare-fun b!7049224 () Bool)

(declare-fun lt!2528437 () Unit!161720)

(declare-fun lt!2528439 () Unit!161720)

(assert (=> b!7049224 (= lt!2528437 lt!2528439)))

(assert (=> b!7049224 (= (++!15606 (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (t!381857 (t!381857 s!7408))) (t!381857 s!7408))))

(assert (=> b!7049224 (= lt!2528439 (lemmaMoveElementToOtherListKeepsConcatEq!2955 Nil!67956 (h!74404 (t!381857 s!7408)) (t!381857 (t!381857 s!7408)) (t!381857 s!7408)))))

(assert (=> b!7049224 (= e!4237705 (findConcatSeparationZippers!430 lt!2528240 (store ((as const (Array Context!13026 Bool)) false) ct2!306 true) (++!15606 Nil!67956 (Cons!67956 (h!74404 (t!381857 s!7408)) Nil!67956)) (t!381857 (t!381857 s!7408)) (t!381857 s!7408)))))

(declare-fun b!7049225 () Bool)

(assert (=> b!7049225 (= e!4237708 (not (isDefined!13615 lt!2528438)))))

(declare-fun b!7049226 () Bool)

(assert (=> b!7049226 (= e!4237709 (= (++!15606 (_1!37385 (get!23823 lt!2528438)) (_2!37385 (get!23823 lt!2528438))) (t!381857 s!7408)))))

(declare-fun b!7049227 () Bool)

(assert (=> b!7049227 (= e!4237707 e!4237705)))

(declare-fun c!1312944 () Bool)

(assert (=> b!7049227 (= c!1312944 ((_ is Nil!67956) (t!381857 s!7408)))))

(declare-fun b!7049228 () Bool)

(declare-fun res!2877688 () Bool)

(assert (=> b!7049228 (=> (not res!2877688) (not e!4237709))))

(assert (=> b!7049228 (= res!2877688 (matchZipper!3057 (store ((as const (Array Context!13026 Bool)) false) ct2!306 true) (_2!37385 (get!23823 lt!2528438))))))

(assert (= (and d!2202160 res!2877690) b!7049221))

(assert (= (and d!2202160 c!1312945) b!7049223))

(assert (= (and d!2202160 (not c!1312945)) b!7049227))

(assert (= (and b!7049227 c!1312944) b!7049220))

(assert (= (and b!7049227 (not c!1312944)) b!7049224))

(assert (= (and d!2202160 res!2877691) b!7049222))

(assert (= (and b!7049222 res!2877692) b!7049228))

(assert (= (and b!7049228 res!2877688) b!7049226))

(assert (= (and d!2202160 (not res!2877689)) b!7049225))

(declare-fun m!7764630 () Bool)

(assert (=> b!7049228 m!7764630))

(assert (=> b!7049228 m!7763174))

(declare-fun m!7764632 () Bool)

(assert (=> b!7049228 m!7764632))

(assert (=> b!7049222 m!7764630))

(declare-fun m!7764634 () Bool)

(assert (=> b!7049222 m!7764634))

(declare-fun m!7764636 () Bool)

(assert (=> b!7049225 m!7764636))

(assert (=> b!7049221 m!7763174))

(declare-fun m!7764638 () Bool)

(assert (=> b!7049221 m!7764638))

(assert (=> d!2202160 m!7764636))

(assert (=> d!2202160 m!7763636))

(assert (=> d!2202160 m!7763638))

(assert (=> b!7049226 m!7764630))

(declare-fun m!7764640 () Bool)

(assert (=> b!7049226 m!7764640))

(assert (=> b!7049224 m!7763642))

(assert (=> b!7049224 m!7763642))

(assert (=> b!7049224 m!7763644))

(assert (=> b!7049224 m!7763646))

(assert (=> b!7049224 m!7763174))

(assert (=> b!7049224 m!7763642))

(declare-fun m!7764642 () Bool)

(assert (=> b!7049224 m!7764642))

(assert (=> d!2201714 d!2202160))

(declare-fun d!2202162 () Bool)

(declare-fun c!1312946 () Bool)

(assert (=> d!2202162 (= c!1312946 (isEmpty!39671 (t!381857 s!7408)))))

(declare-fun e!4237710 () Bool)

(assert (=> d!2202162 (= (matchZipper!3057 (appendTo!638 lt!2528240 ct2!306) (t!381857 s!7408)) e!4237710)))

(declare-fun b!7049229 () Bool)

(assert (=> b!7049229 (= e!4237710 (nullableZipper!2618 (appendTo!638 lt!2528240 ct2!306)))))

(declare-fun b!7049230 () Bool)

(assert (=> b!7049230 (= e!4237710 (matchZipper!3057 (derivationStepZipper!2973 (appendTo!638 lt!2528240 ct2!306) (head!14315 (t!381857 s!7408))) (tail!13646 (t!381857 s!7408))))))

(assert (= (and d!2202162 c!1312946) b!7049229))

(assert (= (and d!2202162 (not c!1312946)) b!7049230))

(assert (=> d!2202162 m!7763342))

(assert (=> b!7049229 m!7763178))

(declare-fun m!7764644 () Bool)

(assert (=> b!7049229 m!7764644))

(assert (=> b!7049230 m!7763346))

(assert (=> b!7049230 m!7763178))

(assert (=> b!7049230 m!7763346))

(declare-fun m!7764646 () Bool)

(assert (=> b!7049230 m!7764646))

(assert (=> b!7049230 m!7763356))

(assert (=> b!7049230 m!7764646))

(assert (=> b!7049230 m!7763356))

(declare-fun m!7764648 () Bool)

(assert (=> b!7049230 m!7764648))

(assert (=> d!2201714 d!2202162))

(declare-fun b!7049233 () Bool)

(declare-fun res!2877693 () Bool)

(declare-fun e!4237711 () Bool)

(assert (=> b!7049233 (=> (not res!2877693) (not e!4237711))))

(declare-fun lt!2528440 () List!68079)

(assert (=> b!7049233 (= res!2877693 (= (size!41124 lt!2528440) (+ (size!41124 (t!381856 lt!2528246)) (size!41124 (exprs!7013 ct2!306)))))))

(declare-fun b!7049234 () Bool)

(assert (=> b!7049234 (= e!4237711 (or (not (= (exprs!7013 ct2!306) Nil!67955)) (= lt!2528440 (t!381856 lt!2528246))))))

(declare-fun b!7049232 () Bool)

(declare-fun e!4237712 () List!68079)

(assert (=> b!7049232 (= e!4237712 (Cons!67955 (h!74403 (t!381856 lt!2528246)) (++!15605 (t!381856 (t!381856 lt!2528246)) (exprs!7013 ct2!306))))))

(declare-fun b!7049231 () Bool)

(assert (=> b!7049231 (= e!4237712 (exprs!7013 ct2!306))))

(declare-fun d!2202164 () Bool)

(assert (=> d!2202164 e!4237711))

(declare-fun res!2877694 () Bool)

(assert (=> d!2202164 (=> (not res!2877694) (not e!4237711))))

(assert (=> d!2202164 (= res!2877694 (= (content!13631 lt!2528440) ((_ map or) (content!13631 (t!381856 lt!2528246)) (content!13631 (exprs!7013 ct2!306)))))))

(assert (=> d!2202164 (= lt!2528440 e!4237712)))

(declare-fun c!1312947 () Bool)

(assert (=> d!2202164 (= c!1312947 ((_ is Nil!67955) (t!381856 lt!2528246)))))

(assert (=> d!2202164 (= (++!15605 (t!381856 lt!2528246) (exprs!7013 ct2!306)) lt!2528440)))

(assert (= (and d!2202164 c!1312947) b!7049231))

(assert (= (and d!2202164 (not c!1312947)) b!7049232))

(assert (= (and d!2202164 res!2877694) b!7049233))

(assert (= (and b!7049233 res!2877693) b!7049234))

(declare-fun m!7764650 () Bool)

(assert (=> b!7049233 m!7764650))

(assert (=> b!7049233 m!7764340))

(assert (=> b!7049233 m!7763486))

(declare-fun m!7764652 () Bool)

(assert (=> b!7049232 m!7764652))

(declare-fun m!7764654 () Bool)

(assert (=> d!2202164 m!7764654))

(assert (=> d!2202164 m!7764302))

(assert (=> d!2202164 m!7763494))

(assert (=> b!7048511 d!2202164))

(assert (=> b!7048556 d!2201722))

(declare-fun bs!1875538 () Bool)

(declare-fun d!2202166 () Bool)

(assert (= bs!1875538 (and d!2202166 b!7048289)))

(declare-fun lambda!418396 () Int)

(assert (=> bs!1875538 (not (= lambda!418396 lambda!418305))))

(declare-fun bs!1875539 () Bool)

(assert (= bs!1875539 (and d!2202166 d!2201666)))

(assert (=> bs!1875539 (not (= lambda!418396 lambda!418337))))

(declare-fun bs!1875540 () Bool)

(assert (= bs!1875540 (and d!2202166 d!2201672)))

(assert (=> bs!1875540 (not (= lambda!418396 lambda!418340))))

(declare-fun bs!1875541 () Bool)

(assert (= bs!1875541 (and d!2202166 d!2202072)))

(assert (=> bs!1875541 (not (= lambda!418396 lambda!418384))))

(declare-fun bs!1875542 () Bool)

(assert (= bs!1875542 (and d!2202166 d!2201968)))

(assert (=> bs!1875542 (= lambda!418396 lambda!418380)))

(declare-fun bs!1875543 () Bool)

(assert (= bs!1875543 (and d!2202166 d!2202030)))

(assert (=> bs!1875543 (= lambda!418396 lambda!418381)))

(declare-fun bs!1875544 () Bool)

(assert (= bs!1875544 (and d!2202166 d!2202074)))

(assert (=> bs!1875544 (not (= lambda!418396 lambda!418387))))

(declare-fun bs!1875545 () Bool)

(assert (= bs!1875545 (and d!2202166 d!2202088)))

(assert (=> bs!1875545 (= lambda!418396 lambda!418388)))

(assert (=> d!2202166 (= (nullableZipper!2618 lt!2528243) (exists!3481 lt!2528243 lambda!418396))))

(declare-fun bs!1875546 () Bool)

(assert (= bs!1875546 d!2202166))

(declare-fun m!7764656 () Bool)

(assert (=> bs!1875546 m!7764656))

(assert (=> b!7048610 d!2202166))

(declare-fun d!2202168 () Bool)

(declare-fun c!1312948 () Bool)

(assert (=> d!2202168 (= c!1312948 (isEmpty!39671 (tail!13646 s!7408)))))

(declare-fun e!4237713 () Bool)

(assert (=> d!2202168 (= (matchZipper!3057 (derivationStepZipper!2973 lt!2528237 (head!14315 s!7408)) (tail!13646 s!7408)) e!4237713)))

(declare-fun b!7049235 () Bool)

(assert (=> b!7049235 (= e!4237713 (nullableZipper!2618 (derivationStepZipper!2973 lt!2528237 (head!14315 s!7408))))))

(declare-fun b!7049236 () Bool)

(assert (=> b!7049236 (= e!4237713 (matchZipper!3057 (derivationStepZipper!2973 (derivationStepZipper!2973 lt!2528237 (head!14315 s!7408)) (head!14315 (tail!13646 s!7408))) (tail!13646 (tail!13646 s!7408))))))

(assert (= (and d!2202168 c!1312948) b!7049235))

(assert (= (and d!2202168 (not c!1312948)) b!7049236))

(assert (=> d!2202168 m!7763544))

(assert (=> d!2202168 m!7764578))

(assert (=> b!7049235 m!7763566))

(declare-fun m!7764658 () Bool)

(assert (=> b!7049235 m!7764658))

(assert (=> b!7049236 m!7763544))

(assert (=> b!7049236 m!7764582))

(assert (=> b!7049236 m!7763566))

(assert (=> b!7049236 m!7764582))

(declare-fun m!7764660 () Bool)

(assert (=> b!7049236 m!7764660))

(assert (=> b!7049236 m!7763544))

(assert (=> b!7049236 m!7764586))

(assert (=> b!7049236 m!7764660))

(assert (=> b!7049236 m!7764586))

(declare-fun m!7764662 () Bool)

(assert (=> b!7049236 m!7764662))

(assert (=> b!7048533 d!2202168))

(declare-fun bs!1875547 () Bool)

(declare-fun d!2202170 () Bool)

(assert (= bs!1875547 (and d!2202170 d!2201690)))

(declare-fun lambda!418397 () Int)

(assert (=> bs!1875547 (= (= (head!14315 s!7408) (h!74404 s!7408)) (= lambda!418397 lambda!418349))))

(declare-fun bs!1875548 () Bool)

(assert (= bs!1875548 (and d!2202170 d!2202126)))

(assert (=> bs!1875548 (= lambda!418397 lambda!418394)))

(declare-fun bs!1875549 () Bool)

(assert (= bs!1875549 (and d!2202170 b!7048286)))

(assert (=> bs!1875549 (= (= (head!14315 s!7408) (h!74404 s!7408)) (= lambda!418397 lambda!418308))))

(declare-fun bs!1875550 () Bool)

(assert (= bs!1875550 (and d!2202170 d!2201692)))

(assert (=> bs!1875550 (= (= (head!14315 s!7408) (h!74404 s!7408)) (= lambda!418397 lambda!418350))))

(declare-fun bs!1875551 () Bool)

(assert (= bs!1875551 (and d!2202170 d!2202034)))

(assert (=> bs!1875551 (= (= (head!14315 s!7408) (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))) (= lambda!418397 lambda!418382))))

(declare-fun bs!1875552 () Bool)

(assert (= bs!1875552 (and d!2202170 d!2202148)))

(assert (=> bs!1875552 (= (= (head!14315 s!7408) (head!14315 (_2!37385 lt!2528255))) (= lambda!418397 lambda!418395))))

(declare-fun bs!1875553 () Bool)

(assert (= bs!1875553 (and d!2202170 d!2202096)))

(assert (=> bs!1875553 (= (= (head!14315 s!7408) (head!14315 (t!381857 s!7408))) (= lambda!418397 lambda!418389))))

(assert (=> d!2202170 true))

(assert (=> d!2202170 (= (derivationStepZipper!2973 lt!2528237 (head!14315 s!7408)) (flatMap!2464 lt!2528237 lambda!418397))))

(declare-fun bs!1875554 () Bool)

(assert (= bs!1875554 d!2202170))

(declare-fun m!7764664 () Bool)

(assert (=> bs!1875554 m!7764664))

(assert (=> b!7048533 d!2202170))

(assert (=> b!7048533 d!2202128))

(assert (=> b!7048533 d!2202130))

(declare-fun d!2202172 () Bool)

(assert (=> d!2202172 (= (isEmpty!39671 (_2!37385 lt!2528255)) ((_ is Nil!67956) (_2!37385 lt!2528255)))))

(assert (=> d!2201716 d!2202172))

(declare-fun b!7049237 () Bool)

(declare-fun e!4237716 () (InoxSet Context!13026))

(assert (=> b!7049237 (= e!4237716 (store ((as const (Array Context!13026 Bool)) false) (Context!13027 (t!381856 (exprs!7013 lt!2528238))) true))))

(declare-fun b!7049238 () Bool)

(declare-fun c!1312953 () Bool)

(declare-fun e!4237715 () Bool)

(assert (=> b!7049238 (= c!1312953 e!4237715)))

(declare-fun res!2877695 () Bool)

(assert (=> b!7049238 (=> (not res!2877695) (not e!4237715))))

(assert (=> b!7049238 (= res!2877695 ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528238))))))

(declare-fun e!4237719 () (InoxSet Context!13026))

(declare-fun e!4237714 () (InoxSet Context!13026))

(assert (=> b!7049238 (= e!4237719 e!4237714)))

(declare-fun bm!640581 () Bool)

(declare-fun call!640590 () (InoxSet Context!13026))

(declare-fun call!640587 () (InoxSet Context!13026))

(assert (=> bm!640581 (= call!640590 call!640587)))

(declare-fun bm!640582 () Bool)

(declare-fun call!640589 () (InoxSet Context!13026))

(assert (=> bm!640582 (= call!640589 call!640590)))

(declare-fun b!7049239 () Bool)

(declare-fun e!4237717 () (InoxSet Context!13026))

(assert (=> b!7049239 (= e!4237714 e!4237717)))

(declare-fun c!1312951 () Bool)

(assert (=> b!7049239 (= c!1312951 ((_ is Concat!26362) (h!74403 (exprs!7013 lt!2528238))))))

(declare-fun b!7049240 () Bool)

(declare-fun call!640588 () (InoxSet Context!13026))

(assert (=> b!7049240 (= e!4237719 ((_ map or) call!640588 call!640587))))

(declare-fun b!7049241 () Bool)

(assert (=> b!7049241 (= e!4237714 ((_ map or) call!640588 call!640590))))

(declare-fun b!7049242 () Bool)

(assert (=> b!7049242 (= e!4237716 e!4237719)))

(declare-fun c!1312949 () Bool)

(assert (=> b!7049242 (= c!1312949 ((_ is Union!17517) (h!74403 (exprs!7013 lt!2528238))))))

(declare-fun b!7049243 () Bool)

(declare-fun e!4237718 () (InoxSet Context!13026))

(assert (=> b!7049243 (= e!4237718 call!640589)))

(declare-fun b!7049244 () Bool)

(assert (=> b!7049244 (= e!4237717 call!640589)))

(declare-fun bm!640583 () Bool)

(declare-fun call!640591 () List!68079)

(assert (=> bm!640583 (= call!640588 (derivationStepZipperDown!2181 (ite c!1312949 (regOne!35547 (h!74403 (exprs!7013 lt!2528238))) (regOne!35546 (h!74403 (exprs!7013 lt!2528238)))) (ite c!1312949 (Context!13027 (t!381856 (exprs!7013 lt!2528238))) (Context!13027 call!640591)) (h!74404 s!7408)))))

(declare-fun b!7049245 () Bool)

(declare-fun c!1312950 () Bool)

(assert (=> b!7049245 (= c!1312950 ((_ is Star!17517) (h!74403 (exprs!7013 lt!2528238))))))

(assert (=> b!7049245 (= e!4237717 e!4237718)))

(declare-fun b!7049246 () Bool)

(assert (=> b!7049246 (= e!4237715 (nullable!7228 (regOne!35546 (h!74403 (exprs!7013 lt!2528238)))))))

(declare-fun d!2202174 () Bool)

(declare-fun c!1312952 () Bool)

(assert (=> d!2202174 (= c!1312952 (and ((_ is ElementMatch!17517) (h!74403 (exprs!7013 lt!2528238))) (= (c!1312641 (h!74403 (exprs!7013 lt!2528238))) (h!74404 s!7408))))))

(assert (=> d!2202174 (= (derivationStepZipperDown!2181 (h!74403 (exprs!7013 lt!2528238)) (Context!13027 (t!381856 (exprs!7013 lt!2528238))) (h!74404 s!7408)) e!4237716)))

(declare-fun bm!640584 () Bool)

(declare-fun call!640586 () List!68079)

(assert (=> bm!640584 (= call!640586 call!640591)))

(declare-fun b!7049247 () Bool)

(assert (=> b!7049247 (= e!4237718 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640585 () Bool)

(assert (=> bm!640585 (= call!640587 (derivationStepZipperDown!2181 (ite c!1312949 (regTwo!35547 (h!74403 (exprs!7013 lt!2528238))) (ite c!1312953 (regTwo!35546 (h!74403 (exprs!7013 lt!2528238))) (ite c!1312951 (regOne!35546 (h!74403 (exprs!7013 lt!2528238))) (reg!17846 (h!74403 (exprs!7013 lt!2528238)))))) (ite (or c!1312949 c!1312953) (Context!13027 (t!381856 (exprs!7013 lt!2528238))) (Context!13027 call!640586)) (h!74404 s!7408)))))

(declare-fun bm!640586 () Bool)

(assert (=> bm!640586 (= call!640591 ($colon$colon!2611 (exprs!7013 (Context!13027 (t!381856 (exprs!7013 lt!2528238)))) (ite (or c!1312953 c!1312951) (regTwo!35546 (h!74403 (exprs!7013 lt!2528238))) (h!74403 (exprs!7013 lt!2528238)))))))

(assert (= (and d!2202174 c!1312952) b!7049237))

(assert (= (and d!2202174 (not c!1312952)) b!7049242))

(assert (= (and b!7049242 c!1312949) b!7049240))

(assert (= (and b!7049242 (not c!1312949)) b!7049238))

(assert (= (and b!7049238 res!2877695) b!7049246))

(assert (= (and b!7049238 c!1312953) b!7049241))

(assert (= (and b!7049238 (not c!1312953)) b!7049239))

(assert (= (and b!7049239 c!1312951) b!7049244))

(assert (= (and b!7049239 (not c!1312951)) b!7049245))

(assert (= (and b!7049245 c!1312950) b!7049243))

(assert (= (and b!7049245 (not c!1312950)) b!7049247))

(assert (= (or b!7049244 b!7049243) bm!640584))

(assert (= (or b!7049244 b!7049243) bm!640582))

(assert (= (or b!7049241 bm!640582) bm!640581))

(assert (= (or b!7049241 bm!640584) bm!640586))

(assert (= (or b!7049240 b!7049241) bm!640583))

(assert (= (or b!7049240 bm!640581) bm!640585))

(declare-fun m!7764666 () Bool)

(assert (=> bm!640586 m!7764666))

(declare-fun m!7764668 () Bool)

(assert (=> bm!640583 m!7764668))

(declare-fun m!7764670 () Bool)

(assert (=> b!7049237 m!7764670))

(declare-fun m!7764672 () Bool)

(assert (=> b!7049246 m!7764672))

(declare-fun m!7764674 () Bool)

(assert (=> bm!640585 m!7764674))

(assert (=> bm!640480 d!2202174))

(assert (=> b!7048593 d!2201978))

(assert (=> d!2201696 d!2201694))

(declare-fun d!2202176 () Bool)

(assert (=> d!2202176 (= (flatMap!2464 lt!2528242 lambda!418308) (dynLambda!27537 lambda!418308 lt!2528238))))

(assert (=> d!2202176 true))

(declare-fun _$13!4533 () Unit!161720)

(assert (=> d!2202176 (= (choose!53624 lt!2528242 lt!2528238 lambda!418308) _$13!4533)))

(declare-fun b_lambda!267989 () Bool)

(assert (=> (not b_lambda!267989) (not d!2202176)))

(declare-fun bs!1875555 () Bool)

(assert (= bs!1875555 d!2202176))

(assert (=> bs!1875555 m!7763144))

(assert (=> bs!1875555 m!7763604))

(assert (=> d!2201696 d!2202176))

(declare-fun d!2202178 () Bool)

(declare-fun res!2877696 () Bool)

(declare-fun e!4237720 () Bool)

(assert (=> d!2202178 (=> res!2877696 e!4237720)))

(assert (=> d!2202178 (= res!2877696 ((_ is Nil!67955) (++!15605 lt!2528246 (exprs!7013 ct2!306))))))

(assert (=> d!2202178 (= (forall!16453 (++!15605 lt!2528246 (exprs!7013 ct2!306)) lambda!418307) e!4237720)))

(declare-fun b!7049248 () Bool)

(declare-fun e!4237721 () Bool)

(assert (=> b!7049248 (= e!4237720 e!4237721)))

(declare-fun res!2877697 () Bool)

(assert (=> b!7049248 (=> (not res!2877697) (not e!4237721))))

(assert (=> b!7049248 (= res!2877697 (dynLambda!27539 lambda!418307 (h!74403 (++!15605 lt!2528246 (exprs!7013 ct2!306)))))))

(declare-fun b!7049249 () Bool)

(assert (=> b!7049249 (= e!4237721 (forall!16453 (t!381856 (++!15605 lt!2528246 (exprs!7013 ct2!306))) lambda!418307))))

(assert (= (and d!2202178 (not res!2877696)) b!7049248))

(assert (= (and b!7049248 res!2877697) b!7049249))

(declare-fun b_lambda!267991 () Bool)

(assert (=> (not b_lambda!267991) (not b!7049248)))

(declare-fun m!7764676 () Bool)

(assert (=> b!7049248 m!7764676))

(declare-fun m!7764678 () Bool)

(assert (=> b!7049249 m!7764678))

(assert (=> d!2201658 d!2202178))

(assert (=> d!2201658 d!2201656))

(declare-fun d!2202180 () Bool)

(assert (=> d!2202180 (forall!16453 (++!15605 lt!2528246 (exprs!7013 ct2!306)) lambda!418307)))

(assert (=> d!2202180 true))

(declare-fun _$78!634 () Unit!161720)

(assert (=> d!2202180 (= (choose!53619 lt!2528246 (exprs!7013 ct2!306) lambda!418307) _$78!634)))

(declare-fun bs!1875556 () Bool)

(assert (= bs!1875556 d!2202180))

(assert (=> bs!1875556 m!7763126))

(assert (=> bs!1875556 m!7763126))

(assert (=> bs!1875556 m!7763496))

(assert (=> d!2201658 d!2202180))

(declare-fun d!2202182 () Bool)

(declare-fun res!2877698 () Bool)

(declare-fun e!4237722 () Bool)

(assert (=> d!2202182 (=> res!2877698 e!4237722)))

(assert (=> d!2202182 (= res!2877698 ((_ is Nil!67955) lt!2528246))))

(assert (=> d!2202182 (= (forall!16453 lt!2528246 lambda!418307) e!4237722)))

(declare-fun b!7049250 () Bool)

(declare-fun e!4237723 () Bool)

(assert (=> b!7049250 (= e!4237722 e!4237723)))

(declare-fun res!2877699 () Bool)

(assert (=> b!7049250 (=> (not res!2877699) (not e!4237723))))

(assert (=> b!7049250 (= res!2877699 (dynLambda!27539 lambda!418307 (h!74403 lt!2528246)))))

(declare-fun b!7049251 () Bool)

(assert (=> b!7049251 (= e!4237723 (forall!16453 (t!381856 lt!2528246) lambda!418307))))

(assert (= (and d!2202182 (not res!2877698)) b!7049250))

(assert (= (and b!7049250 res!2877699) b!7049251))

(declare-fun b_lambda!267993 () Bool)

(assert (=> (not b_lambda!267993) (not b!7049250)))

(declare-fun m!7764680 () Bool)

(assert (=> b!7049250 m!7764680))

(declare-fun m!7764682 () Bool)

(assert (=> b!7049251 m!7764682))

(assert (=> d!2201658 d!2202182))

(declare-fun b!7049266 () Bool)

(declare-fun e!4237739 () Bool)

(declare-fun call!640597 () Bool)

(assert (=> b!7049266 (= e!4237739 call!640597)))

(declare-fun b!7049267 () Bool)

(declare-fun e!4237738 () Bool)

(declare-fun e!4237741 () Bool)

(assert (=> b!7049267 (= e!4237738 e!4237741)))

(declare-fun res!2877713 () Bool)

(assert (=> b!7049267 (= res!2877713 call!640597)))

(assert (=> b!7049267 (=> res!2877713 e!4237741)))

(declare-fun bm!640591 () Bool)

(declare-fun call!640596 () Bool)

(declare-fun c!1312956 () Bool)

(assert (=> bm!640591 (= call!640596 (nullable!7228 (ite c!1312956 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(declare-fun b!7049268 () Bool)

(declare-fun e!4237737 () Bool)

(declare-fun e!4237736 () Bool)

(assert (=> b!7049268 (= e!4237737 e!4237736)))

(declare-fun res!2877711 () Bool)

(assert (=> b!7049268 (=> res!2877711 e!4237736)))

(assert (=> b!7049268 (= res!2877711 ((_ is Star!17517) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun bm!640592 () Bool)

(assert (=> bm!640592 (= call!640597 (nullable!7228 (ite c!1312956 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(declare-fun b!7049269 () Bool)

(assert (=> b!7049269 (= e!4237741 call!640596)))

(declare-fun d!2202184 () Bool)

(declare-fun res!2877712 () Bool)

(declare-fun e!4237740 () Bool)

(assert (=> d!2202184 (=> res!2877712 e!4237740)))

(assert (=> d!2202184 (= res!2877712 ((_ is EmptyExpr!17517) (h!74403 (exprs!7013 lt!2528249))))))

(assert (=> d!2202184 (= (nullableFct!2763 (h!74403 (exprs!7013 lt!2528249))) e!4237740)))

(declare-fun b!7049270 () Bool)

(assert (=> b!7049270 (= e!4237738 e!4237739)))

(declare-fun res!2877710 () Bool)

(assert (=> b!7049270 (= res!2877710 call!640596)))

(assert (=> b!7049270 (=> (not res!2877710) (not e!4237739))))

(declare-fun b!7049271 () Bool)

(assert (=> b!7049271 (= e!4237736 e!4237738)))

(assert (=> b!7049271 (= c!1312956 ((_ is Union!17517) (h!74403 (exprs!7013 lt!2528249))))))

(declare-fun b!7049272 () Bool)

(assert (=> b!7049272 (= e!4237740 e!4237737)))

(declare-fun res!2877714 () Bool)

(assert (=> b!7049272 (=> (not res!2877714) (not e!4237737))))

(assert (=> b!7049272 (= res!2877714 (and (not ((_ is EmptyLang!17517) (h!74403 (exprs!7013 lt!2528249)))) (not ((_ is ElementMatch!17517) (h!74403 (exprs!7013 lt!2528249))))))))

(assert (= (and d!2202184 (not res!2877712)) b!7049272))

(assert (= (and b!7049272 res!2877714) b!7049268))

(assert (= (and b!7049268 (not res!2877711)) b!7049271))

(assert (= (and b!7049271 c!1312956) b!7049267))

(assert (= (and b!7049271 (not c!1312956)) b!7049270))

(assert (= (and b!7049267 (not res!2877713)) b!7049269))

(assert (= (and b!7049270 res!2877710) b!7049266))

(assert (= (or b!7049269 b!7049270) bm!640591))

(assert (= (or b!7049267 b!7049266) bm!640592))

(declare-fun m!7764684 () Bool)

(assert (=> bm!640591 m!7764684))

(declare-fun m!7764686 () Bool)

(assert (=> bm!640592 m!7764686))

(assert (=> d!2201722 d!2202184))

(declare-fun bs!1875557 () Bool)

(declare-fun d!2202186 () Bool)

(assert (= bs!1875557 (and d!2202186 b!7048289)))

(declare-fun lambda!418398 () Int)

(assert (=> bs!1875557 (not (= lambda!418398 lambda!418305))))

(declare-fun bs!1875558 () Bool)

(assert (= bs!1875558 (and d!2202186 d!2201666)))

(assert (=> bs!1875558 (not (= lambda!418398 lambda!418337))))

(declare-fun bs!1875559 () Bool)

(assert (= bs!1875559 (and d!2202186 d!2201672)))

(assert (=> bs!1875559 (not (= lambda!418398 lambda!418340))))

(declare-fun bs!1875560 () Bool)

(assert (= bs!1875560 (and d!2202186 d!2202072)))

(assert (=> bs!1875560 (not (= lambda!418398 lambda!418384))))

(declare-fun bs!1875561 () Bool)

(assert (= bs!1875561 (and d!2202186 d!2201968)))

(assert (=> bs!1875561 (= lambda!418398 lambda!418380)))

(declare-fun bs!1875562 () Bool)

(assert (= bs!1875562 (and d!2202186 d!2202030)))

(assert (=> bs!1875562 (= lambda!418398 lambda!418381)))

(declare-fun bs!1875563 () Bool)

(assert (= bs!1875563 (and d!2202186 d!2202166)))

(assert (=> bs!1875563 (= lambda!418398 lambda!418396)))

(declare-fun bs!1875564 () Bool)

(assert (= bs!1875564 (and d!2202186 d!2202074)))

(assert (=> bs!1875564 (not (= lambda!418398 lambda!418387))))

(declare-fun bs!1875565 () Bool)

(assert (= bs!1875565 (and d!2202186 d!2202088)))

(assert (=> bs!1875565 (= lambda!418398 lambda!418388)))

(assert (=> d!2202186 (= (nullableZipper!2618 lt!2528237) (exists!3481 lt!2528237 lambda!418398))))

(declare-fun bs!1875566 () Bool)

(assert (= bs!1875566 d!2202186))

(declare-fun m!7764688 () Bool)

(assert (=> bs!1875566 m!7764688))

(assert (=> b!7048532 d!2202186))

(declare-fun d!2202188 () Bool)

(assert (=> d!2202188 (= (isEmpty!39671 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))) ((_ is Nil!67956) (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255))))))

(assert (=> d!2201718 d!2202188))

(declare-fun d!2202190 () Bool)

(declare-fun c!1312957 () Bool)

(assert (=> d!2202190 (= c!1312957 (isEmpty!39671 s!7408))))

(declare-fun e!4237742 () Bool)

(assert (=> d!2202190 (= (matchZipper!3057 (store ((as const (Array Context!13026 Bool)) false) lt!2528327 true) s!7408) e!4237742)))

(declare-fun b!7049273 () Bool)

(assert (=> b!7049273 (= e!4237742 (nullableZipper!2618 (store ((as const (Array Context!13026 Bool)) false) lt!2528327 true)))))

(declare-fun b!7049274 () Bool)

(assert (=> b!7049274 (= e!4237742 (matchZipper!3057 (derivationStepZipper!2973 (store ((as const (Array Context!13026 Bool)) false) lt!2528327 true) (head!14315 s!7408)) (tail!13646 s!7408)))))

(assert (= (and d!2202190 c!1312957) b!7049273))

(assert (= (and d!2202190 (not c!1312957)) b!7049274))

(assert (=> d!2202190 m!7763536))

(assert (=> b!7049273 m!7763714))

(declare-fun m!7764690 () Bool)

(assert (=> b!7049273 m!7764690))

(assert (=> b!7049274 m!7763540))

(assert (=> b!7049274 m!7763714))

(assert (=> b!7049274 m!7763540))

(declare-fun m!7764692 () Bool)

(assert (=> b!7049274 m!7764692))

(assert (=> b!7049274 m!7763544))

(assert (=> b!7049274 m!7764692))

(assert (=> b!7049274 m!7763544))

(declare-fun m!7764694 () Bool)

(assert (=> b!7049274 m!7764694))

(assert (=> bs!1875313 d!2202190))

(declare-fun d!2202192 () Bool)

(assert (=> d!2202192 (= (nullable!7228 (h!74403 (exprs!7013 lt!2528238))) (nullableFct!2763 (h!74403 (exprs!7013 lt!2528238))))))

(declare-fun bs!1875567 () Bool)

(assert (= bs!1875567 d!2202192))

(declare-fun m!7764696 () Bool)

(assert (=> bs!1875567 m!7764696))

(assert (=> b!7048563 d!2202192))

(declare-fun d!2202194 () Bool)

(declare-fun c!1312958 () Bool)

(assert (=> d!2202194 (= c!1312958 (isEmpty!39671 (_1!37385 (get!23823 lt!2528347))))))

(declare-fun e!4237743 () Bool)

(assert (=> d!2202194 (= (matchZipper!3057 lt!2528240 (_1!37385 (get!23823 lt!2528347))) e!4237743)))

(declare-fun b!7049275 () Bool)

(assert (=> b!7049275 (= e!4237743 (nullableZipper!2618 lt!2528240))))

(declare-fun b!7049276 () Bool)

(assert (=> b!7049276 (= e!4237743 (matchZipper!3057 (derivationStepZipper!2973 lt!2528240 (head!14315 (_1!37385 (get!23823 lt!2528347)))) (tail!13646 (_1!37385 (get!23823 lt!2528347)))))))

(assert (= (and d!2202194 c!1312958) b!7049275))

(assert (= (and d!2202194 (not c!1312958)) b!7049276))

(declare-fun m!7764698 () Bool)

(assert (=> d!2202194 m!7764698))

(assert (=> b!7049275 m!7763616))

(declare-fun m!7764700 () Bool)

(assert (=> b!7049276 m!7764700))

(assert (=> b!7049276 m!7764700))

(declare-fun m!7764702 () Bool)

(assert (=> b!7049276 m!7764702))

(declare-fun m!7764704 () Bool)

(assert (=> b!7049276 m!7764704))

(assert (=> b!7049276 m!7764702))

(assert (=> b!7049276 m!7764704))

(declare-fun m!7764706 () Bool)

(assert (=> b!7049276 m!7764706))

(assert (=> b!7048590 d!2202194))

(assert (=> b!7048590 d!2202018))

(declare-fun d!2202196 () Bool)

(declare-fun c!1312959 () Bool)

(assert (=> d!2202196 (= c!1312959 ((_ is Nil!67955) lt!2528317))))

(declare-fun e!4237744 () (InoxSet Regex!17517))

(assert (=> d!2202196 (= (content!13631 lt!2528317) e!4237744)))

(declare-fun b!7049277 () Bool)

(assert (=> b!7049277 (= e!4237744 ((as const (Array Regex!17517 Bool)) false))))

(declare-fun b!7049278 () Bool)

(assert (=> b!7049278 (= e!4237744 ((_ map or) (store ((as const (Array Regex!17517 Bool)) false) (h!74403 lt!2528317) true) (content!13631 (t!381856 lt!2528317))))))

(assert (= (and d!2202196 c!1312959) b!7049277))

(assert (= (and d!2202196 (not c!1312959)) b!7049278))

(declare-fun m!7764708 () Bool)

(assert (=> b!7049278 m!7764708))

(declare-fun m!7764710 () Bool)

(assert (=> b!7049278 m!7764710))

(assert (=> d!2201660 d!2202196))

(declare-fun d!2202198 () Bool)

(declare-fun c!1312960 () Bool)

(assert (=> d!2202198 (= c!1312960 ((_ is Nil!67955) (exprs!7013 lt!2528249)))))

(declare-fun e!4237745 () (InoxSet Regex!17517))

(assert (=> d!2202198 (= (content!13631 (exprs!7013 lt!2528249)) e!4237745)))

(declare-fun b!7049279 () Bool)

(assert (=> b!7049279 (= e!4237745 ((as const (Array Regex!17517 Bool)) false))))

(declare-fun b!7049280 () Bool)

(assert (=> b!7049280 (= e!4237745 ((_ map or) (store ((as const (Array Regex!17517 Bool)) false) (h!74403 (exprs!7013 lt!2528249)) true) (content!13631 (t!381856 (exprs!7013 lt!2528249)))))))

(assert (= (and d!2202198 c!1312960) b!7049279))

(assert (= (and d!2202198 (not c!1312960)) b!7049280))

(declare-fun m!7764712 () Bool)

(assert (=> b!7049280 m!7764712))

(assert (=> b!7049280 m!7764320))

(assert (=> d!2201660 d!2202198))

(assert (=> d!2201660 d!2202010))

(declare-fun d!2202200 () Bool)

(declare-fun lt!2528443 () Int)

(assert (=> d!2202200 (>= lt!2528443 0)))

(declare-fun e!4237748 () Int)

(assert (=> d!2202200 (= lt!2528443 e!4237748)))

(declare-fun c!1312963 () Bool)

(assert (=> d!2202200 (= c!1312963 ((_ is Nil!67956) lt!2528335))))

(assert (=> d!2202200 (= (size!41125 lt!2528335) lt!2528443)))

(declare-fun b!7049285 () Bool)

(assert (=> b!7049285 (= e!4237748 0)))

(declare-fun b!7049286 () Bool)

(assert (=> b!7049286 (= e!4237748 (+ 1 (size!41125 (t!381857 lt!2528335))))))

(assert (= (and d!2202200 c!1312963) b!7049285))

(assert (= (and d!2202200 (not c!1312963)) b!7049286))

(declare-fun m!7764714 () Bool)

(assert (=> b!7049286 m!7764714))

(assert (=> b!7048544 d!2202200))

(declare-fun d!2202202 () Bool)

(declare-fun lt!2528444 () Int)

(assert (=> d!2202202 (>= lt!2528444 0)))

(declare-fun e!4237749 () Int)

(assert (=> d!2202202 (= lt!2528444 e!4237749)))

(declare-fun c!1312964 () Bool)

(assert (=> d!2202202 (= c!1312964 ((_ is Nil!67956) (_1!37385 lt!2528255)))))

(assert (=> d!2202202 (= (size!41125 (_1!37385 lt!2528255)) lt!2528444)))

(declare-fun b!7049287 () Bool)

(assert (=> b!7049287 (= e!4237749 0)))

(declare-fun b!7049288 () Bool)

(assert (=> b!7049288 (= e!4237749 (+ 1 (size!41125 (t!381857 (_1!37385 lt!2528255)))))))

(assert (= (and d!2202202 c!1312964) b!7049287))

(assert (= (and d!2202202 (not c!1312964)) b!7049288))

(assert (=> b!7049288 m!7764502))

(assert (=> b!7048544 d!2202202))

(declare-fun d!2202204 () Bool)

(declare-fun lt!2528445 () Int)

(assert (=> d!2202204 (>= lt!2528445 0)))

(declare-fun e!4237750 () Int)

(assert (=> d!2202204 (= lt!2528445 e!4237750)))

(declare-fun c!1312965 () Bool)

(assert (=> d!2202204 (= c!1312965 ((_ is Nil!67956) (_2!37385 lt!2528255)))))

(assert (=> d!2202204 (= (size!41125 (_2!37385 lt!2528255)) lt!2528445)))

(declare-fun b!7049289 () Bool)

(assert (=> b!7049289 (= e!4237750 0)))

(declare-fun b!7049290 () Bool)

(assert (=> b!7049290 (= e!4237750 (+ 1 (size!41125 (t!381857 (_2!37385 lt!2528255)))))))

(assert (= (and d!2202204 c!1312965) b!7049289))

(assert (= (and d!2202204 (not c!1312965)) b!7049290))

(declare-fun m!7764716 () Bool)

(assert (=> b!7049290 m!7764716))

(assert (=> b!7048544 d!2202204))

(declare-fun d!2202206 () Bool)

(assert (=> d!2202206 true))

(declare-fun setRes!49534 () Bool)

(assert (=> d!2202206 setRes!49534))

(declare-fun condSetEmpty!49534 () Bool)

(declare-fun res!2877717 () (InoxSet Context!13026))

(assert (=> d!2202206 (= condSetEmpty!49534 (= res!2877717 ((as const (Array Context!13026 Bool)) false)))))

(assert (=> d!2202206 (= (choose!53623 lt!2528242 lambda!418308) res!2877717)))

(declare-fun setIsEmpty!49534 () Bool)

(assert (=> setIsEmpty!49534 setRes!49534))

(declare-fun e!4237753 () Bool)

(declare-fun tp!1938453 () Bool)

(declare-fun setNonEmpty!49534 () Bool)

(declare-fun setElem!49534 () Context!13026)

(assert (=> setNonEmpty!49534 (= setRes!49534 (and tp!1938453 (inv!86651 setElem!49534) e!4237753))))

(declare-fun setRest!49534 () (InoxSet Context!13026))

(assert (=> setNonEmpty!49534 (= res!2877717 ((_ map or) (store ((as const (Array Context!13026 Bool)) false) setElem!49534 true) setRest!49534))))

(declare-fun b!7049293 () Bool)

(declare-fun tp!1938454 () Bool)

(assert (=> b!7049293 (= e!4237753 tp!1938454)))

(assert (= (and d!2202206 condSetEmpty!49534) setIsEmpty!49534))

(assert (= (and d!2202206 (not condSetEmpty!49534)) setNonEmpty!49534))

(assert (= setNonEmpty!49534 b!7049293))

(declare-fun m!7764718 () Bool)

(assert (=> setNonEmpty!49534 m!7764718))

(assert (=> d!2201694 d!2202206))

(assert (=> b!7048606 d!2202102))

(declare-fun b!7049294 () Bool)

(declare-fun e!4237756 () (InoxSet Context!13026))

(assert (=> b!7049294 (= e!4237756 (store ((as const (Array Context!13026 Bool)) false) (ite c!1312744 lt!2528257 (Context!13027 call!640491)) true))))

(declare-fun b!7049295 () Bool)

(declare-fun c!1312970 () Bool)

(declare-fun e!4237755 () Bool)

(assert (=> b!7049295 (= c!1312970 e!4237755)))

(declare-fun res!2877718 () Bool)

(assert (=> b!7049295 (=> (not res!2877718) (not e!4237755))))

(assert (=> b!7049295 (= res!2877718 ((_ is Concat!26362) (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(declare-fun e!4237759 () (InoxSet Context!13026))

(declare-fun e!4237754 () (InoxSet Context!13026))

(assert (=> b!7049295 (= e!4237759 e!4237754)))

(declare-fun bm!640593 () Bool)

(declare-fun call!640602 () (InoxSet Context!13026))

(declare-fun call!640599 () (InoxSet Context!13026))

(assert (=> bm!640593 (= call!640602 call!640599)))

(declare-fun bm!640594 () Bool)

(declare-fun call!640601 () (InoxSet Context!13026))

(assert (=> bm!640594 (= call!640601 call!640602)))

(declare-fun b!7049296 () Bool)

(declare-fun e!4237757 () (InoxSet Context!13026))

(assert (=> b!7049296 (= e!4237754 e!4237757)))

(declare-fun c!1312968 () Bool)

(assert (=> b!7049296 (= c!1312968 ((_ is Concat!26362) (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(declare-fun b!7049297 () Bool)

(declare-fun call!640600 () (InoxSet Context!13026))

(assert (=> b!7049297 (= e!4237759 ((_ map or) call!640600 call!640599))))

(declare-fun b!7049298 () Bool)

(assert (=> b!7049298 (= e!4237754 ((_ map or) call!640600 call!640602))))

(declare-fun b!7049299 () Bool)

(assert (=> b!7049299 (= e!4237756 e!4237759)))

(declare-fun c!1312966 () Bool)

(assert (=> b!7049299 (= c!1312966 ((_ is Union!17517) (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(declare-fun b!7049300 () Bool)

(declare-fun e!4237758 () (InoxSet Context!13026))

(assert (=> b!7049300 (= e!4237758 call!640601)))

(declare-fun b!7049301 () Bool)

(assert (=> b!7049301 (= e!4237757 call!640601)))

(declare-fun bm!640595 () Bool)

(declare-fun call!640603 () List!68079)

(assert (=> bm!640595 (= call!640600 (derivationStepZipperDown!2181 (ite c!1312966 (regOne!35547 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (regOne!35546 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))) (ite c!1312966 (ite c!1312744 lt!2528257 (Context!13027 call!640491)) (Context!13027 call!640603)) (h!74404 s!7408)))))

(declare-fun b!7049302 () Bool)

(declare-fun c!1312967 () Bool)

(assert (=> b!7049302 (= c!1312967 ((_ is Star!17517) (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))))))

(assert (=> b!7049302 (= e!4237757 e!4237758)))

(declare-fun b!7049303 () Bool)

(assert (=> b!7049303 (= e!4237755 (nullable!7228 (regOne!35546 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))))

(declare-fun d!2202208 () Bool)

(declare-fun c!1312969 () Bool)

(assert (=> d!2202208 (= c!1312969 (and ((_ is ElementMatch!17517) (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (= (c!1312641 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (h!74404 s!7408))))))

(assert (=> d!2202208 (= (derivationStepZipperDown!2181 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))) (ite c!1312744 lt!2528257 (Context!13027 call!640491)) (h!74404 s!7408)) e!4237756)))

(declare-fun bm!640596 () Bool)

(declare-fun call!640598 () List!68079)

(assert (=> bm!640596 (= call!640598 call!640603)))

(declare-fun b!7049304 () Bool)

(assert (=> b!7049304 (= e!4237758 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640597 () Bool)

(assert (=> bm!640597 (= call!640599 (derivationStepZipperDown!2181 (ite c!1312966 (regTwo!35547 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (ite c!1312970 (regTwo!35546 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (ite c!1312968 (regOne!35546 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (reg!17846 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))) (ite (or c!1312966 c!1312970) (ite c!1312744 lt!2528257 (Context!13027 call!640491)) (Context!13027 call!640598)) (h!74404 s!7408)))))

(declare-fun bm!640598 () Bool)

(assert (=> bm!640598 (= call!640603 ($colon$colon!2611 (exprs!7013 (ite c!1312744 lt!2528257 (Context!13027 call!640491))) (ite (or c!1312970 c!1312968) (regTwo!35546 (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249))))) (ite c!1312744 (regOne!35547 (h!74403 (exprs!7013 lt!2528249))) (regOne!35546 (h!74403 (exprs!7013 lt!2528249)))))))))

(assert (= (and d!2202208 c!1312969) b!7049294))

(assert (= (and d!2202208 (not c!1312969)) b!7049299))

(assert (= (and b!7049299 c!1312966) b!7049297))

(assert (= (and b!7049299 (not c!1312966)) b!7049295))

(assert (= (and b!7049295 res!2877718) b!7049303))

(assert (= (and b!7049295 c!1312970) b!7049298))

(assert (= (and b!7049295 (not c!1312970)) b!7049296))

(assert (= (and b!7049296 c!1312968) b!7049301))

(assert (= (and b!7049296 (not c!1312968)) b!7049302))

(assert (= (and b!7049302 c!1312967) b!7049300))

(assert (= (and b!7049302 (not c!1312967)) b!7049304))

(assert (= (or b!7049301 b!7049300) bm!640596))

(assert (= (or b!7049301 b!7049300) bm!640594))

(assert (= (or b!7049298 bm!640594) bm!640593))

(assert (= (or b!7049298 bm!640596) bm!640598))

(assert (= (or b!7049297 b!7049298) bm!640595))

(assert (= (or b!7049297 bm!640593) bm!640597))

(declare-fun m!7764720 () Bool)

(assert (=> bm!640598 m!7764720))

(declare-fun m!7764722 () Bool)

(assert (=> bm!640595 m!7764722))

(declare-fun m!7764724 () Bool)

(assert (=> b!7049294 m!7764724))

(declare-fun m!7764726 () Bool)

(assert (=> b!7049303 m!7764726))

(declare-fun m!7764728 () Bool)

(assert (=> bm!640597 m!7764728))

(assert (=> bm!640483 d!2202208))

(declare-fun d!2202210 () Bool)

(assert (=> d!2202210 (= (map!15831 lt!2528240 lambda!418351) (choose!53632 lt!2528240 lambda!418351))))

(declare-fun bs!1875568 () Bool)

(assert (= bs!1875568 d!2202210))

(declare-fun m!7764730 () Bool)

(assert (=> bs!1875568 m!7764730))

(assert (=> d!2201706 d!2202210))

(declare-fun d!2202212 () Bool)

(declare-fun c!1312971 () Bool)

(assert (=> d!2202212 (= c!1312971 (isEmpty!39671 (tail!13646 (_1!37385 lt!2528255))))))

(declare-fun e!4237760 () Bool)

(assert (=> d!2202212 (= (matchZipper!3057 (derivationStepZipper!2973 lt!2528240 (head!14315 (_1!37385 lt!2528255))) (tail!13646 (_1!37385 lt!2528255))) e!4237760)))

(declare-fun b!7049305 () Bool)

(assert (=> b!7049305 (= e!4237760 (nullableZipper!2618 (derivationStepZipper!2973 lt!2528240 (head!14315 (_1!37385 lt!2528255)))))))

(declare-fun b!7049306 () Bool)

(assert (=> b!7049306 (= e!4237760 (matchZipper!3057 (derivationStepZipper!2973 (derivationStepZipper!2973 lt!2528240 (head!14315 (_1!37385 lt!2528255))) (head!14315 (tail!13646 (_1!37385 lt!2528255)))) (tail!13646 (tail!13646 (_1!37385 lt!2528255)))))))

(assert (= (and d!2202212 c!1312971) b!7049305))

(assert (= (and d!2202212 (not c!1312971)) b!7049306))

(assert (=> d!2202212 m!7763622))

(declare-fun m!7764732 () Bool)

(assert (=> d!2202212 m!7764732))

(assert (=> b!7049305 m!7763620))

(declare-fun m!7764734 () Bool)

(assert (=> b!7049305 m!7764734))

(assert (=> b!7049306 m!7763622))

(declare-fun m!7764736 () Bool)

(assert (=> b!7049306 m!7764736))

(assert (=> b!7049306 m!7763620))

(assert (=> b!7049306 m!7764736))

(declare-fun m!7764738 () Bool)

(assert (=> b!7049306 m!7764738))

(assert (=> b!7049306 m!7763622))

(declare-fun m!7764740 () Bool)

(assert (=> b!7049306 m!7764740))

(assert (=> b!7049306 m!7764738))

(assert (=> b!7049306 m!7764740))

(declare-fun m!7764742 () Bool)

(assert (=> b!7049306 m!7764742))

(assert (=> b!7048569 d!2202212))

(declare-fun bs!1875569 () Bool)

(declare-fun d!2202214 () Bool)

(assert (= bs!1875569 (and d!2202214 d!2201690)))

(declare-fun lambda!418399 () Int)

(assert (=> bs!1875569 (= (= (head!14315 (_1!37385 lt!2528255)) (h!74404 s!7408)) (= lambda!418399 lambda!418349))))

(declare-fun bs!1875570 () Bool)

(assert (= bs!1875570 (and d!2202214 d!2202126)))

(assert (=> bs!1875570 (= (= (head!14315 (_1!37385 lt!2528255)) (head!14315 s!7408)) (= lambda!418399 lambda!418394))))

(declare-fun bs!1875571 () Bool)

(assert (= bs!1875571 (and d!2202214 b!7048286)))

(assert (=> bs!1875571 (= (= (head!14315 (_1!37385 lt!2528255)) (h!74404 s!7408)) (= lambda!418399 lambda!418308))))

(declare-fun bs!1875572 () Bool)

(assert (= bs!1875572 (and d!2202214 d!2202170)))

(assert (=> bs!1875572 (= (= (head!14315 (_1!37385 lt!2528255)) (head!14315 s!7408)) (= lambda!418399 lambda!418397))))

(declare-fun bs!1875573 () Bool)

(assert (= bs!1875573 (and d!2202214 d!2201692)))

(assert (=> bs!1875573 (= (= (head!14315 (_1!37385 lt!2528255)) (h!74404 s!7408)) (= lambda!418399 lambda!418350))))

(declare-fun bs!1875574 () Bool)

(assert (= bs!1875574 (and d!2202214 d!2202034)))

(assert (=> bs!1875574 (= (= (head!14315 (_1!37385 lt!2528255)) (head!14315 (Cons!67956 (h!74404 s!7408) (_1!37385 lt!2528255)))) (= lambda!418399 lambda!418382))))

(declare-fun bs!1875575 () Bool)

(assert (= bs!1875575 (and d!2202214 d!2202148)))

(assert (=> bs!1875575 (= (= (head!14315 (_1!37385 lt!2528255)) (head!14315 (_2!37385 lt!2528255))) (= lambda!418399 lambda!418395))))

(declare-fun bs!1875576 () Bool)

(assert (= bs!1875576 (and d!2202214 d!2202096)))

(assert (=> bs!1875576 (= (= (head!14315 (_1!37385 lt!2528255)) (head!14315 (t!381857 s!7408))) (= lambda!418399 lambda!418389))))

(assert (=> d!2202214 true))

(assert (=> d!2202214 (= (derivationStepZipper!2973 lt!2528240 (head!14315 (_1!37385 lt!2528255))) (flatMap!2464 lt!2528240 lambda!418399))))

(declare-fun bs!1875577 () Bool)

(assert (= bs!1875577 d!2202214))

(declare-fun m!7764744 () Bool)

(assert (=> bs!1875577 m!7764744))

(assert (=> b!7048569 d!2202214))

(declare-fun d!2202216 () Bool)

(assert (=> d!2202216 (= (head!14315 (_1!37385 lt!2528255)) (h!74404 (_1!37385 lt!2528255)))))

(assert (=> b!7048569 d!2202216))

(declare-fun d!2202218 () Bool)

(assert (=> d!2202218 (= (tail!13646 (_1!37385 lt!2528255)) (t!381857 (_1!37385 lt!2528255)))))

(assert (=> b!7048569 d!2202218))

(declare-fun b!7049307 () Bool)

(declare-fun e!4237763 () (InoxSet Context!13026))

(assert (=> b!7049307 (= e!4237763 (store ((as const (Array Context!13026 Bool)) false) (ite (or c!1312710 c!1312714) (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640476)) true))))

(declare-fun b!7049308 () Bool)

(declare-fun c!1312976 () Bool)

(declare-fun e!4237762 () Bool)

(assert (=> b!7049308 (= c!1312976 e!4237762)))

(declare-fun res!2877719 () Bool)

(assert (=> b!7049308 (=> (not res!2877719) (not e!4237762))))

(assert (=> b!7049308 (= res!2877719 ((_ is Concat!26362) (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))))))

(declare-fun e!4237766 () (InoxSet Context!13026))

(declare-fun e!4237761 () (InoxSet Context!13026))

(assert (=> b!7049308 (= e!4237766 e!4237761)))

(declare-fun bm!640599 () Bool)

(declare-fun call!640608 () (InoxSet Context!13026))

(declare-fun call!640605 () (InoxSet Context!13026))

(assert (=> bm!640599 (= call!640608 call!640605)))

(declare-fun bm!640600 () Bool)

(declare-fun call!640607 () (InoxSet Context!13026))

(assert (=> bm!640600 (= call!640607 call!640608)))

(declare-fun b!7049309 () Bool)

(declare-fun e!4237764 () (InoxSet Context!13026))

(assert (=> b!7049309 (= e!4237761 e!4237764)))

(declare-fun c!1312974 () Bool)

(assert (=> b!7049309 (= c!1312974 ((_ is Concat!26362) (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))))))

(declare-fun b!7049310 () Bool)

(declare-fun call!640606 () (InoxSet Context!13026))

(assert (=> b!7049310 (= e!4237766 ((_ map or) call!640606 call!640605))))

(declare-fun b!7049311 () Bool)

(assert (=> b!7049311 (= e!4237761 ((_ map or) call!640606 call!640608))))

(declare-fun b!7049312 () Bool)

(assert (=> b!7049312 (= e!4237763 e!4237766)))

(declare-fun c!1312972 () Bool)

(assert (=> b!7049312 (= c!1312972 ((_ is Union!17517) (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))))))

(declare-fun b!7049313 () Bool)

(declare-fun e!4237765 () (InoxSet Context!13026))

(assert (=> b!7049313 (= e!4237765 call!640607)))

(declare-fun b!7049314 () Bool)

(assert (=> b!7049314 (= e!4237764 call!640607)))

(declare-fun bm!640601 () Bool)

(declare-fun call!640609 () List!68079)

(assert (=> bm!640601 (= call!640606 (derivationStepZipperDown!2181 (ite c!1312972 (regOne!35547 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (regOne!35546 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))))) (ite c!1312972 (ite (or c!1312710 c!1312714) (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640476)) (Context!13027 call!640609)) (h!74404 s!7408)))))

(declare-fun b!7049315 () Bool)

(declare-fun c!1312973 () Bool)

(assert (=> b!7049315 (= c!1312973 ((_ is Star!17517) (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))))))

(assert (=> b!7049315 (= e!4237764 e!4237765)))

(declare-fun b!7049316 () Bool)

(assert (=> b!7049316 (= e!4237762 (nullable!7228 (regOne!35546 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))))))))

(declare-fun c!1312975 () Bool)

(declare-fun d!2202220 () Bool)

(assert (=> d!2202220 (= c!1312975 (and ((_ is ElementMatch!17517) (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (= (c!1312641 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (h!74404 s!7408))))))

(assert (=> d!2202220 (= (derivationStepZipperDown!2181 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))) (ite (or c!1312710 c!1312714) (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640476)) (h!74404 s!7408)) e!4237763)))

(declare-fun bm!640602 () Bool)

(declare-fun call!640604 () List!68079)

(assert (=> bm!640602 (= call!640604 call!640609)))

(declare-fun b!7049317 () Bool)

(assert (=> b!7049317 (= e!4237765 ((as const (Array Context!13026 Bool)) false))))

(declare-fun bm!640603 () Bool)

(assert (=> bm!640603 (= call!640605 (derivationStepZipperDown!2181 (ite c!1312972 (regTwo!35547 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (ite c!1312976 (regTwo!35546 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (ite c!1312974 (regOne!35546 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (reg!17846 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))))))) (ite (or c!1312972 c!1312976) (ite (or c!1312710 c!1312714) (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640476)) (Context!13027 call!640604)) (h!74404 s!7408)))))

(declare-fun bm!640604 () Bool)

(assert (=> bm!640604 (= call!640609 ($colon$colon!2611 (exprs!7013 (ite (or c!1312710 c!1312714) (Context!13027 (++!15605 lt!2528246 (exprs!7013 ct2!306))) (Context!13027 call!640476))) (ite (or c!1312976 c!1312974) (regTwo!35546 (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249))))))) (ite c!1312710 (regTwo!35547 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312714 (regTwo!35546 (h!74403 (exprs!7013 lt!2528249))) (ite c!1312712 (regOne!35546 (h!74403 (exprs!7013 lt!2528249))) (reg!17846 (h!74403 (exprs!7013 lt!2528249)))))))))))

(assert (= (and d!2202220 c!1312975) b!7049307))

(assert (= (and d!2202220 (not c!1312975)) b!7049312))

(assert (= (and b!7049312 c!1312972) b!7049310))

(assert (= (and b!7049312 (not c!1312972)) b!7049308))

(assert (= (and b!7049308 res!2877719) b!7049316))

(assert (= (and b!7049308 c!1312976) b!7049311))

(assert (= (and b!7049308 (not c!1312976)) b!7049309))

(assert (= (and b!7049309 c!1312974) b!7049314))

(assert (= (and b!7049309 (not c!1312974)) b!7049315))

(assert (= (and b!7049315 c!1312973) b!7049313))

(assert (= (and b!7049315 (not c!1312973)) b!7049317))

(assert (= (or b!7049314 b!7049313) bm!640602))

(assert (= (or b!7049314 b!7049313) bm!640600))

(assert (= (or b!7049311 bm!640600) bm!640599))

(assert (= (or b!7049311 bm!640602) bm!640604))

(assert (= (or b!7049310 b!7049311) bm!640601))

(assert (= (or b!7049310 bm!640599) bm!640603))

(declare-fun m!7764746 () Bool)

(assert (=> bm!640604 m!7764746))

(declare-fun m!7764748 () Bool)

(assert (=> bm!640601 m!7764748))

(declare-fun m!7764750 () Bool)

(assert (=> b!7049307 m!7764750))

(declare-fun m!7764752 () Bool)

(assert (=> b!7049316 m!7764752))

(declare-fun m!7764754 () Bool)

(assert (=> bm!640603 m!7764754))

(assert (=> bm!640475 d!2202220))

(declare-fun d!2202222 () Bool)

(declare-fun res!2877720 () Bool)

(declare-fun e!4237767 () Bool)

(assert (=> d!2202222 (=> res!2877720 e!4237767)))

(assert (=> d!2202222 (= res!2877720 ((_ is Nil!67955) (exprs!7013 ct2!306)))))

(assert (=> d!2202222 (= (forall!16453 (exprs!7013 ct2!306) lambda!418346) e!4237767)))

(declare-fun b!7049318 () Bool)

(declare-fun e!4237768 () Bool)

(assert (=> b!7049318 (= e!4237767 e!4237768)))

(declare-fun res!2877721 () Bool)

(assert (=> b!7049318 (=> (not res!2877721) (not e!4237768))))

(assert (=> b!7049318 (= res!2877721 (dynLambda!27539 lambda!418346 (h!74403 (exprs!7013 ct2!306))))))

(declare-fun b!7049319 () Bool)

(assert (=> b!7049319 (= e!4237768 (forall!16453 (t!381856 (exprs!7013 ct2!306)) lambda!418346))))

(assert (= (and d!2202222 (not res!2877720)) b!7049318))

(assert (= (and b!7049318 res!2877721) b!7049319))

(declare-fun b_lambda!267995 () Bool)

(assert (=> (not b_lambda!267995) (not b!7049318)))

(declare-fun m!7764756 () Bool)

(assert (=> b!7049318 m!7764756))

(declare-fun m!7764758 () Bool)

(assert (=> b!7049319 m!7764758))

(assert (=> d!2201680 d!2202222))

(declare-fun bs!1875578 () Bool)

(declare-fun d!2202224 () Bool)

(assert (= bs!1875578 (and d!2202224 b!7048289)))

(declare-fun lambda!418400 () Int)

(assert (=> bs!1875578 (not (= lambda!418400 lambda!418305))))

(declare-fun bs!1875579 () Bool)

(assert (= bs!1875579 (and d!2202224 d!2201666)))

(assert (=> bs!1875579 (not (= lambda!418400 lambda!418337))))

(declare-fun bs!1875580 () Bool)

(assert (= bs!1875580 (and d!2202224 d!2201672)))

(assert (=> bs!1875580 (not (= lambda!418400 lambda!418340))))

(declare-fun bs!1875581 () Bool)

(assert (= bs!1875581 (and d!2202224 d!2202072)))

(assert (=> bs!1875581 (not (= lambda!418400 lambda!418384))))

(declare-fun bs!1875582 () Bool)

(assert (= bs!1875582 (and d!2202224 d!2202186)))

(assert (=> bs!1875582 (= lambda!418400 lambda!418398)))

(declare-fun bs!1875583 () Bool)

(assert (= bs!1875583 (and d!2202224 d!2201968)))

(assert (=> bs!1875583 (= lambda!418400 lambda!418380)))

(declare-fun bs!1875584 () Bool)

(assert (= bs!1875584 (and d!2202224 d!2202030)))

(assert (=> bs!1875584 (= lambda!418400 lambda!418381)))

(declare-fun bs!1875585 () Bool)

(assert (= bs!1875585 (and d!2202224 d!2202166)))

(assert (=> bs!1875585 (= lambda!418400 lambda!418396)))

(declare-fun bs!1875586 () Bool)

(assert (= bs!1875586 (and d!2202224 d!2202074)))

(assert (=> bs!1875586 (not (= lambda!418400 lambda!418387))))

(declare-fun bs!1875587 () Bool)

(assert (= bs!1875587 (and d!2202224 d!2202088)))

(assert (=> bs!1875587 (= lambda!418400 lambda!418388)))

(assert (=> d!2202224 (= (nullableZipper!2618 lt!2528258) (exists!3481 lt!2528258 lambda!418400))))

(declare-fun bs!1875588 () Bool)

(assert (= bs!1875588 d!2202224))

(declare-fun m!7764760 () Bool)

(assert (=> bs!1875588 m!7764760))

(assert (=> b!7048407 d!2202224))

(declare-fun d!2202226 () Bool)

(assert (=> d!2202226 true))

(declare-fun setRes!49535 () Bool)

(assert (=> d!2202226 setRes!49535))

(declare-fun condSetEmpty!49535 () Bool)

(declare-fun res!2877722 () (InoxSet Context!13026))

(assert (=> d!2202226 (= condSetEmpty!49535 (= res!2877722 ((as const (Array Context!13026 Bool)) false)))))

(assert (=> d!2202226 (= (choose!53623 lt!2528243 lambda!418308) res!2877722)))

(declare-fun setIsEmpty!49535 () Bool)

(assert (=> setIsEmpty!49535 setRes!49535))

(declare-fun setElem!49535 () Context!13026)

(declare-fun e!4237769 () Bool)

(declare-fun setNonEmpty!49535 () Bool)

(declare-fun tp!1938455 () Bool)

(assert (=> setNonEmpty!49535 (= setRes!49535 (and tp!1938455 (inv!86651 setElem!49535) e!4237769))))

(declare-fun setRest!49535 () (InoxSet Context!13026))

(assert (=> setNonEmpty!49535 (= res!2877722 ((_ map or) (store ((as const (Array Context!13026 Bool)) false) setElem!49535 true) setRest!49535))))

(declare-fun b!7049320 () Bool)

(declare-fun tp!1938456 () Bool)

(assert (=> b!7049320 (= e!4237769 tp!1938456)))

(assert (= (and d!2202226 condSetEmpty!49535) setIsEmpty!49535))

(assert (= (and d!2202226 (not condSetEmpty!49535)) setNonEmpty!49535))

(assert (= setNonEmpty!49535 b!7049320))

(declare-fun m!7764762 () Bool)

(assert (=> setNonEmpty!49535 m!7764762))

(assert (=> d!2201684 d!2202226))

(declare-fun d!2202228 () Bool)

(assert (=> d!2202228 (forall!16453 (++!15605 (exprs!7013 lt!2528321) (exprs!7013 ct2!306)) lambda!418307)))

(declare-fun lt!2528446 () Unit!161720)

(assert (=> d!2202228 (= lt!2528446 (choose!53619 (exprs!7013 lt!2528321) (exprs!7013 ct2!306) lambda!418307))))

(assert (=> d!2202228 (forall!16453 (exprs!7013 lt!2528321) lambda!418307)))

(assert (=> d!2202228 (= (lemmaConcatPreservesForall!838 (exprs!7013 lt!2528321) (exprs!7013 ct2!306) lambda!418307) lt!2528446)))

(declare-fun bs!1875589 () Bool)

(assert (= bs!1875589 d!2202228))

(assert (=> bs!1875589 m!7763712))

(assert (=> bs!1875589 m!7763712))

(declare-fun m!7764764 () Bool)

(assert (=> bs!1875589 m!7764764))

(declare-fun m!7764766 () Bool)

(assert (=> bs!1875589 m!7764766))

(declare-fun m!7764768 () Bool)

(assert (=> bs!1875589 m!7764768))

(assert (=> bs!1875312 d!2202228))

(declare-fun b!7049323 () Bool)

(declare-fun res!2877723 () Bool)

(declare-fun e!4237770 () Bool)

(assert (=> b!7049323 (=> (not res!2877723) (not e!4237770))))

(declare-fun lt!2528447 () List!68079)

(assert (=> b!7049323 (= res!2877723 (= (size!41124 lt!2528447) (+ (size!41124 (exprs!7013 lt!2528321)) (size!41124 (exprs!7013 ct2!306)))))))

(declare-fun b!7049324 () Bool)

(assert (=> b!7049324 (= e!4237770 (or (not (= (exprs!7013 ct2!306) Nil!67955)) (= lt!2528447 (exprs!7013 lt!2528321))))))

(declare-fun b!7049322 () Bool)

(declare-fun e!4237771 () List!68079)

(assert (=> b!7049322 (= e!4237771 (Cons!67955 (h!74403 (exprs!7013 lt!2528321)) (++!15605 (t!381856 (exprs!7013 lt!2528321)) (exprs!7013 ct2!306))))))

(declare-fun b!7049321 () Bool)

(assert (=> b!7049321 (= e!4237771 (exprs!7013 ct2!306))))

(declare-fun d!2202230 () Bool)

(assert (=> d!2202230 e!4237770))

(declare-fun res!2877724 () Bool)

(assert (=> d!2202230 (=> (not res!2877724) (not e!4237770))))

(assert (=> d!2202230 (= res!2877724 (= (content!13631 lt!2528447) ((_ map or) (content!13631 (exprs!7013 lt!2528321)) (content!13631 (exprs!7013 ct2!306)))))))

(assert (=> d!2202230 (= lt!2528447 e!4237771)))

(declare-fun c!1312977 () Bool)

(assert (=> d!2202230 (= c!1312977 ((_ is Nil!67955) (exprs!7013 lt!2528321)))))

(assert (=> d!2202230 (= (++!15605 (exprs!7013 lt!2528321) (exprs!7013 ct2!306)) lt!2528447)))

(assert (= (and d!2202230 c!1312977) b!7049321))

(assert (= (and d!2202230 (not c!1312977)) b!7049322))

(assert (= (and d!2202230 res!2877724) b!7049323))

(assert (= (and b!7049323 res!2877723) b!7049324))

(declare-fun m!7764770 () Bool)

(assert (=> b!7049323 m!7764770))

(declare-fun m!7764772 () Bool)

(assert (=> b!7049323 m!7764772))

(assert (=> b!7049323 m!7763486))

(declare-fun m!7764774 () Bool)

(assert (=> b!7049322 m!7764774))

(declare-fun m!7764776 () Bool)

(assert (=> d!2202230 m!7764776))

(declare-fun m!7764778 () Bool)

(assert (=> d!2202230 m!7764778))

(assert (=> d!2202230 m!7763494))

(assert (=> bs!1875312 d!2202230))

(declare-fun d!2202232 () Bool)

(assert (=> d!2202232 (= (isEmpty!39671 (_1!37385 lt!2528255)) ((_ is Nil!67956) (_1!37385 lt!2528255)))))

(assert (=> d!2201700 d!2202232))

(declare-fun condSetEmpty!49536 () Bool)

(assert (=> setNonEmpty!49526 (= condSetEmpty!49536 (= setRest!49526 ((as const (Array Context!13026 Bool)) false)))))

(declare-fun setRes!49536 () Bool)

(assert (=> setNonEmpty!49526 (= tp!1938387 setRes!49536)))

(declare-fun setIsEmpty!49536 () Bool)

(assert (=> setIsEmpty!49536 setRes!49536))

(declare-fun setNonEmpty!49536 () Bool)

(declare-fun setElem!49536 () Context!13026)

(declare-fun e!4237772 () Bool)

(declare-fun tp!1938457 () Bool)

(assert (=> setNonEmpty!49536 (= setRes!49536 (and tp!1938457 (inv!86651 setElem!49536) e!4237772))))

(declare-fun setRest!49536 () (InoxSet Context!13026))

(assert (=> setNonEmpty!49536 (= setRest!49526 ((_ map or) (store ((as const (Array Context!13026 Bool)) false) setElem!49536 true) setRest!49536))))

(declare-fun b!7049325 () Bool)

(declare-fun tp!1938458 () Bool)

(assert (=> b!7049325 (= e!4237772 tp!1938458)))

(assert (= (and setNonEmpty!49526 condSetEmpty!49536) setIsEmpty!49536))

(assert (= (and setNonEmpty!49526 (not condSetEmpty!49536)) setNonEmpty!49536))

(assert (= setNonEmpty!49536 b!7049325))

(declare-fun m!7764780 () Bool)

(assert (=> setNonEmpty!49536 m!7764780))

(declare-fun b!7049326 () Bool)

(declare-fun e!4237773 () Bool)

(declare-fun tp!1938459 () Bool)

(assert (=> b!7049326 (= e!4237773 (and tp_is_empty!44259 tp!1938459))))

(assert (=> b!7048627 (= tp!1938393 e!4237773)))

(assert (= (and b!7048627 ((_ is Cons!67956) (t!381857 (t!381857 s!7408)))) b!7049326))

(declare-fun b!7049340 () Bool)

(declare-fun e!4237776 () Bool)

(declare-fun tp!1938470 () Bool)

(declare-fun tp!1938473 () Bool)

(assert (=> b!7049340 (= e!4237776 (and tp!1938470 tp!1938473))))

(declare-fun b!7049339 () Bool)

(declare-fun tp!1938471 () Bool)

(assert (=> b!7049339 (= e!4237776 tp!1938471)))

(assert (=> b!7048616 (= tp!1938381 e!4237776)))

(declare-fun b!7049338 () Bool)

(declare-fun tp!1938472 () Bool)

(declare-fun tp!1938474 () Bool)

(assert (=> b!7049338 (= e!4237776 (and tp!1938472 tp!1938474))))

(declare-fun b!7049337 () Bool)

(assert (=> b!7049337 (= e!4237776 tp_is_empty!44259)))

(assert (= (and b!7048616 ((_ is ElementMatch!17517) (h!74403 (exprs!7013 ct2!306)))) b!7049337))

(assert (= (and b!7048616 ((_ is Concat!26362) (h!74403 (exprs!7013 ct2!306)))) b!7049338))

(assert (= (and b!7048616 ((_ is Star!17517) (h!74403 (exprs!7013 ct2!306)))) b!7049339))

(assert (= (and b!7048616 ((_ is Union!17517) (h!74403 (exprs!7013 ct2!306)))) b!7049340))

(declare-fun b!7049341 () Bool)

(declare-fun e!4237777 () Bool)

(declare-fun tp!1938475 () Bool)

(declare-fun tp!1938476 () Bool)

(assert (=> b!7049341 (= e!4237777 (and tp!1938475 tp!1938476))))

(assert (=> b!7048616 (= tp!1938382 e!4237777)))

(assert (= (and b!7048616 ((_ is Cons!67955) (t!381856 (exprs!7013 ct2!306)))) b!7049341))

(declare-fun b!7049345 () Bool)

(declare-fun e!4237778 () Bool)

(declare-fun tp!1938477 () Bool)

(declare-fun tp!1938480 () Bool)

(assert (=> b!7049345 (= e!4237778 (and tp!1938477 tp!1938480))))

(declare-fun b!7049344 () Bool)

(declare-fun tp!1938478 () Bool)

(assert (=> b!7049344 (= e!4237778 tp!1938478)))

(assert (=> b!7048622 (= tp!1938389 e!4237778)))

(declare-fun b!7049343 () Bool)

(declare-fun tp!1938479 () Bool)

(declare-fun tp!1938481 () Bool)

(assert (=> b!7049343 (= e!4237778 (and tp!1938479 tp!1938481))))

(declare-fun b!7049342 () Bool)

(assert (=> b!7049342 (= e!4237778 tp_is_empty!44259)))

(assert (= (and b!7048622 ((_ is ElementMatch!17517) (h!74403 (exprs!7013 setElem!49520)))) b!7049342))

(assert (= (and b!7048622 ((_ is Concat!26362) (h!74403 (exprs!7013 setElem!49520)))) b!7049343))

(assert (= (and b!7048622 ((_ is Star!17517) (h!74403 (exprs!7013 setElem!49520)))) b!7049344))

(assert (= (and b!7048622 ((_ is Union!17517) (h!74403 (exprs!7013 setElem!49520)))) b!7049345))

(declare-fun b!7049346 () Bool)

(declare-fun e!4237779 () Bool)

(declare-fun tp!1938482 () Bool)

(declare-fun tp!1938483 () Bool)

(assert (=> b!7049346 (= e!4237779 (and tp!1938482 tp!1938483))))

(assert (=> b!7048622 (= tp!1938390 e!4237779)))

(assert (= (and b!7048622 ((_ is Cons!67955) (t!381856 (exprs!7013 setElem!49520)))) b!7049346))

(declare-fun b!7049347 () Bool)

(declare-fun e!4237780 () Bool)

(declare-fun tp!1938484 () Bool)

(declare-fun tp!1938485 () Bool)

(assert (=> b!7049347 (= e!4237780 (and tp!1938484 tp!1938485))))

(assert (=> b!7048621 (= tp!1938388 e!4237780)))

(assert (= (and b!7048621 ((_ is Cons!67955) (exprs!7013 setElem!49526))) b!7049347))

(declare-fun b_lambda!267997 () Bool)

(assert (= b_lambda!267983 (or b!7048290 b_lambda!267997)))

(declare-fun bs!1875590 () Bool)

(declare-fun d!2202234 () Bool)

(assert (= bs!1875590 (and d!2202234 b!7048290)))

(assert (=> bs!1875590 (= (dynLambda!27539 lambda!418307 (h!74403 (exprs!7013 lt!2528249))) (validRegex!8955 (h!74403 (exprs!7013 lt!2528249))))))

(assert (=> bs!1875590 m!7763662))

(assert (=> b!7049101 d!2202234))

(declare-fun b_lambda!267999 () Bool)

(assert (= b_lambda!267975 (or d!2201594 b_lambda!267999)))

(declare-fun bs!1875591 () Bool)

(declare-fun d!2202236 () Bool)

(assert (= bs!1875591 (and d!2202236 d!2201594)))

(assert (=> bs!1875591 (= (dynLambda!27539 lambda!418319 (h!74403 (exprs!7013 setElem!49520))) (validRegex!8955 (h!74403 (exprs!7013 setElem!49520))))))

(declare-fun m!7764782 () Bool)

(assert (=> bs!1875591 m!7764782))

(assert (=> b!7049014 d!2202236))

(declare-fun b_lambda!268001 () Bool)

(assert (= b_lambda!267993 (or b!7048290 b_lambda!268001)))

(declare-fun bs!1875592 () Bool)

(declare-fun d!2202238 () Bool)

(assert (= bs!1875592 (and d!2202238 b!7048290)))

(assert (=> bs!1875592 (= (dynLambda!27539 lambda!418307 (h!74403 lt!2528246)) (validRegex!8955 (h!74403 lt!2528246)))))

(declare-fun m!7764784 () Bool)

(assert (=> bs!1875592 m!7764784))

(assert (=> b!7049250 d!2202238))

(declare-fun b_lambda!268003 () Bool)

(assert (= b_lambda!267989 (or b!7048286 b_lambda!268003)))

(assert (=> d!2202176 d!2201732))

(declare-fun b_lambda!268005 () Bool)

(assert (= b_lambda!267995 (or d!2201680 b_lambda!268005)))

(declare-fun bs!1875593 () Bool)

(declare-fun d!2202240 () Bool)

(assert (= bs!1875593 (and d!2202240 d!2201680)))

(assert (=> bs!1875593 (= (dynLambda!27539 lambda!418346 (h!74403 (exprs!7013 ct2!306))) (validRegex!8955 (h!74403 (exprs!7013 ct2!306))))))

(declare-fun m!7764786 () Bool)

(assert (=> bs!1875593 m!7764786))

(assert (=> b!7049318 d!2202240))

(declare-fun b_lambda!268007 () Bool)

(assert (= b_lambda!267979 (or b!7048289 b_lambda!268007)))

(declare-fun bs!1875594 () Bool)

(declare-fun d!2202242 () Bool)

(assert (= bs!1875594 (and d!2202242 b!7048289)))

(assert (=> bs!1875594 (= (dynLambda!27535 lambda!418305 (h!74405 (toList!10860 lt!2528237))) (matchZipper!3057 (store ((as const (Array Context!13026 Bool)) false) (h!74405 (toList!10860 lt!2528237)) true) s!7408))))

(declare-fun m!7764788 () Bool)

(assert (=> bs!1875594 m!7764788))

(assert (=> bs!1875594 m!7764788))

(declare-fun m!7764790 () Bool)

(assert (=> bs!1875594 m!7764790))

(assert (=> b!7049088 d!2202242))

(declare-fun b_lambda!268009 () Bool)

(assert (= b_lambda!267981 (or b!7048290 b_lambda!268009)))

(declare-fun bs!1875595 () Bool)

(declare-fun d!2202244 () Bool)

(assert (= bs!1875595 (and d!2202244 b!7048290)))

(assert (=> bs!1875595 (= (dynLambda!27539 lambda!418307 (h!74403 (++!15605 (exprs!7013 lt!2528249) (exprs!7013 ct2!306)))) (validRegex!8955 (h!74403 (++!15605 (exprs!7013 lt!2528249) (exprs!7013 ct2!306)))))))

(declare-fun m!7764792 () Bool)

(assert (=> bs!1875595 m!7764792))

(assert (=> b!7049099 d!2202244))

(declare-fun b_lambda!268011 () Bool)

(assert (= b_lambda!267987 (or b!7048290 b_lambda!268011)))

(declare-fun bs!1875596 () Bool)

(declare-fun d!2202246 () Bool)

(assert (= bs!1875596 (and d!2202246 b!7048290)))

(declare-fun lt!2528448 () Unit!161720)

(assert (=> bs!1875596 (= lt!2528448 (lemmaConcatPreservesForall!838 (exprs!7013 a!13399) (exprs!7013 ct2!306) lambda!418307))))

(assert (=> bs!1875596 (= (dynLambda!27534 lambda!418306 a!13399) (Context!13027 (++!15605 (exprs!7013 a!13399) (exprs!7013 ct2!306))))))

(declare-fun m!7764794 () Bool)

(assert (=> bs!1875596 m!7764794))

(declare-fun m!7764796 () Bool)

(assert (=> bs!1875596 m!7764796))

(assert (=> d!2202138 d!2202246))

(declare-fun b_lambda!268013 () Bool)

(assert (= b_lambda!267977 (or b!7048289 b_lambda!268013)))

(declare-fun bs!1875597 () Bool)

(declare-fun d!2202248 () Bool)

(assert (= bs!1875597 (and d!2202248 b!7048289)))

(assert (=> bs!1875597 (= (dynLambda!27535 lambda!418305 lt!2528425) (matchZipper!3057 (store ((as const (Array Context!13026 Bool)) false) lt!2528425 true) s!7408))))

(declare-fun m!7764798 () Bool)

(assert (=> bs!1875597 m!7764798))

(assert (=> bs!1875597 m!7764798))

(declare-fun m!7764800 () Bool)

(assert (=> bs!1875597 m!7764800))

(assert (=> d!2202052 d!2202248))

(declare-fun b_lambda!268015 () Bool)

(assert (= b_lambda!267985 (or b!7048286 b_lambda!268015)))

(assert (=> d!2202104 d!2201730))

(declare-fun b_lambda!268017 () Bool)

(assert (= b_lambda!267945 (or d!2201672 b_lambda!268017)))

(declare-fun bs!1875598 () Bool)

(declare-fun d!2202250 () Bool)

(assert (= bs!1875598 (and d!2202250 d!2201672)))

(assert (=> bs!1875598 (= (dynLambda!27535 lambda!418340 (h!74405 lt!2528236)) (not (dynLambda!27535 lambda!418305 (h!74405 lt!2528236))))))

(declare-fun b_lambda!268021 () Bool)

(assert (=> (not b_lambda!268021) (not bs!1875598)))

(declare-fun m!7764802 () Bool)

(assert (=> bs!1875598 m!7764802))

(assert (=> b!7048937 d!2202250))

(declare-fun b_lambda!268019 () Bool)

(assert (= b_lambda!267991 (or b!7048290 b_lambda!268019)))

(declare-fun bs!1875599 () Bool)

(declare-fun d!2202252 () Bool)

(assert (= bs!1875599 (and d!2202252 b!7048290)))

(assert (=> bs!1875599 (= (dynLambda!27539 lambda!418307 (h!74403 (++!15605 lt!2528246 (exprs!7013 ct2!306)))) (validRegex!8955 (h!74403 (++!15605 lt!2528246 (exprs!7013 ct2!306)))))))

(declare-fun m!7764804 () Bool)

(assert (=> bs!1875599 m!7764804))

(assert (=> b!7049248 d!2202252))

(check-sat (not b!7048982) (not b!7049341) (not d!2202066) (not d!2202180) (not b_lambda!267997) (not bm!640566) (not b!7049036) (not b!7049249) (not d!2202032) (not d!2202176) (not b!7049230) (not b!7049060) (not bm!640555) (not d!2202192) (not bm!640598) (not b!7049026) (not d!2202146) (not d!2202158) (not b!7048972) (not b!7049340) (not b!7049339) (not b!7049236) (not d!2202110) (not setNonEmpty!49536) (not d!2202072) (not b!7049232) (not b_lambda!267999) (not bm!640573) (not b!7049051) (not b!7049251) (not b!7049222) (not b!7049121) (not b!7048939) (not d!2202228) (not bs!1875590) (not d!2202170) (not bm!640585) (not b_lambda!268021) (not b!7049346) (not bs!1875597) (not b!7049326) (not bm!640591) (not d!2202084) (not d!2202102) (not b!7049056) (not bm!640580) (not b!7049235) (not b!7049115) (not b!7049114) (not d!2202040) (not b!7049094) (not d!2201966) (not b!7049214) (not bm!640570) (not d!2202124) (not b!7048983) (not b!7049142) (not b_lambda!268013) (not b!7049084) (not bs!1875593) (not bm!640551) (not bm!640572) (not b_lambda!268001) (not bs!1875594) (not bm!640546) (not d!2202092) (not bm!640603) (not b!7049049) (not b!7049320) (not d!2202046) (not bs!1875599) (not b!7049122) (not b_lambda!267917) (not b_lambda!268007) (not b!7049345) (not b!7049112) (not b!7049233) (not b!7049132) (not b!7049280) (not b!7049141) (not bm!640565) (not b!7049100) (not d!2202164) (not d!2202120) (not bm!640576) (not d!2201968) (not b!7049246) (not b!7049085) (not d!2202210) (not bm!640557) (not b!7049007) (not b!7049224) (not b!7049229) (not d!2202138) (not d!2202076) (not b!7049213) (not bm!640601) (not bm!640597) (not bm!640552) (not b!7049323) (not b!7049173) (not d!2202054) (not d!2202096) (not b!7049290) (not b!7049174) (not bm!640592) (not b!7049018) (not setNonEmpty!49535) (not b!7049225) (not d!2202168) (not d!2202194) (not b!7049306) (not d!2202044) (not b!7049066) (not b!7049338) (not b!7049274) (not d!2202162) (not b_lambda!267921) (not b!7049185) (not b!7049228) (not d!2202088) (not d!2202052) (not d!2201984) (not b!7049009) (not d!2202014) (not d!2202112) (not b!7049293) (not d!2202186) (not b!7049126) (not d!2202148) (not d!2202140) (not b!7049098) (not b_lambda!267915) tp_is_empty!44259 (not b_lambda!268011) (not d!2202104) (not b!7049201) (not b!7049059) (not bm!640604) (not d!2202048) (not b!7049046) (not b!7049133) (not d!2202224) (not b!7049032) (not d!2202034) (not b!7049015) (not bm!640583) (not b!7049275) (not b!7049168) (not b!7049063) (not b!7049273) (not b!7049226) (not d!2202230) (not b_lambda!267919) (not d!2202212) (not d!2202108) (not bm!640578) (not d!2202126) (not b_lambda!268015) (not d!2202160) (not b!7049086) (not bm!640586) (not b!7049125) (not b!7049055) (not b!7049070) (not b_lambda!268019) (not b!7049064) (not bs!1875592) (not d!2202156) (not b!7049305) (not b!7049144) (not d!2201980) (not d!2202214) (not b!7049196) (not b!7049102) (not d!2202082) (not b_lambda!268003) (not b!7049022) (not d!2202094) (not b_lambda!268005) (not b!7049288) (not b!7049212) (not b!7048971) (not b!7049286) (not bm!640595) (not d!2202016) (not b!7049303) (not b!7049316) (not b!7049052) (not b!7049347) (not b!7049221) (not setNonEmpty!49534) (not b!7049020) (not b!7049343) (not d!2202042) (not b!7049143) (not b!7049034) (not b!7049005) (not b!7049219) (not b!7049325) (not d!2202062) (not b!7049198) (not b!7049067) (not bm!640579) (not b!7049207) (not b!7049344) (not b!7049096) (not bs!1875595) (not b!7049210) (not b!7049140) (not d!2201978) (not b!7049199) (not b_lambda!268017) (not b!7049322) (not d!2202166) (not b!7049319) (not b_lambda!268009) (not b!7049278) (not b!7049048) (not b!7049276) (not bs!1875596) (not b!7049021) (not b!7049215) (not bm!640558) (not b!7049068) (not d!2202074) (not d!2202190) (not bm!640549) (not d!2202116) (not b!7049123) (not d!2202132) (not b!7049017) (not d!2202030) (not bs!1875591))
(check-sat)
