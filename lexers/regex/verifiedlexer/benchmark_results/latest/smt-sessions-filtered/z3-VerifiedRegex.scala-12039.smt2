; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!675476 () Bool)

(assert start!675476)

(declare-fun b!7012114 () Bool)

(assert (=> b!7012114 true))

(declare-fun b!7012107 () Bool)

(assert (=> b!7012107 true))

(declare-fun b!7012113 () Bool)

(assert (=> b!7012113 true))

(declare-fun b!7012088 () Bool)

(declare-fun res!2861384 () Bool)

(declare-fun e!4215016 () Bool)

(assert (=> b!7012088 (=> res!2861384 e!4215016)))

(declare-datatypes ((C!34920 0))(
  ( (C!34921 (val!27162 Int)) )
))
(declare-datatypes ((List!67520 0))(
  ( (Nil!67396) (Cons!67396 (h!73844 C!34920) (t!381275 List!67520)) )
))
(declare-fun lt!2505310 () List!67520)

(declare-fun isPrefix!5826 (List!67520 List!67520) Bool)

(assert (=> b!7012088 (= res!2861384 (not (isPrefix!5826 Nil!67396 lt!2505310)))))

(declare-fun b!7012089 () Bool)

(declare-fun e!4215017 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17325 0))(
  ( (ElementMatch!17325 (c!1302597 C!34920)) (Concat!26170 (regOne!35162 Regex!17325) (regTwo!35162 Regex!17325)) (EmptyExpr!17325) (Star!17325 (reg!17654 Regex!17325)) (EmptyLang!17325) (Union!17325 (regOne!35163 Regex!17325) (regTwo!35163 Regex!17325)) )
))
(declare-datatypes ((List!67521 0))(
  ( (Nil!67397) (Cons!67397 (h!73845 Regex!17325) (t!381276 List!67521)) )
))
(declare-datatypes ((Context!12642 0))(
  ( (Context!12643 (exprs!6821 List!67521)) )
))
(declare-fun lt!2505336 () (InoxSet Context!12642))

(declare-datatypes ((tuple2!67956 0))(
  ( (tuple2!67957 (_1!37281 List!67520) (_2!37281 List!67520)) )
))
(declare-fun lt!2505313 () tuple2!67956)

(declare-fun matchZipper!2865 ((InoxSet Context!12642) List!67520) Bool)

(assert (=> b!7012089 (= e!4215017 (not (matchZipper!2865 lt!2505336 (_1!37281 lt!2505313))))))

(declare-fun b!7012090 () Bool)

(assert (=> b!7012090 (= e!4215016 true)))

(declare-fun lt!2505333 () List!67520)

(declare-fun s!7408 () List!67520)

(declare-fun ++!15329 (List!67520 List!67520) List!67520)

(assert (=> b!7012090 (= lt!2505333 (++!15329 Nil!67396 s!7408))))

(declare-fun b!7012091 () Bool)

(declare-fun e!4215024 () Bool)

(declare-fun e!4215018 () Bool)

(assert (=> b!7012091 (= e!4215024 e!4215018)))

(declare-fun res!2861376 () Bool)

(assert (=> b!7012091 (=> res!2861376 e!4215018)))

(declare-fun lt!2505321 () Bool)

(assert (=> b!7012091 (= res!2861376 (not lt!2505321))))

(declare-fun lt!2505334 () List!67521)

(declare-datatypes ((Unit!161328 0))(
  ( (Unit!161329) )
))
(declare-fun lt!2505337 () Unit!161328)

(declare-fun ct2!306 () Context!12642)

(declare-fun lambda!408870 () Int)

(declare-fun lemmaConcatPreservesForall!661 (List!67521 List!67521 Int) Unit!161328)

(assert (=> b!7012091 (= lt!2505337 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(declare-fun lt!2505329 () Unit!161328)

(assert (=> b!7012091 (= lt!2505329 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(declare-fun b!7012092 () Bool)

(declare-fun e!4215023 () Bool)

(declare-fun e!4215026 () Bool)

(assert (=> b!7012092 (= e!4215023 e!4215026)))

(declare-fun res!2861377 () Bool)

(assert (=> b!7012092 (=> res!2861377 e!4215026)))

(declare-fun e!4215015 () Bool)

(assert (=> b!7012092 (= res!2861377 e!4215015)))

(declare-fun res!2861393 () Bool)

(assert (=> b!7012092 (=> (not res!2861393) (not e!4215015))))

(declare-fun lt!2505306 () Bool)

(assert (=> b!7012092 (= res!2861393 (not (= lt!2505306 lt!2505321)))))

(declare-fun lt!2505341 () (InoxSet Context!12642))

(assert (=> b!7012092 (= lt!2505306 (matchZipper!2865 lt!2505341 (t!381275 s!7408)))))

(declare-fun lt!2505339 () Unit!161328)

(assert (=> b!7012092 (= lt!2505339 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(declare-fun lt!2505335 () (InoxSet Context!12642))

(declare-fun e!4215009 () Bool)

(assert (=> b!7012092 (= (matchZipper!2865 lt!2505335 (t!381275 s!7408)) e!4215009)))

(declare-fun res!2861389 () Bool)

(assert (=> b!7012092 (=> res!2861389 e!4215009)))

(assert (=> b!7012092 (= res!2861389 lt!2505321)))

(declare-fun lt!2505312 () (InoxSet Context!12642))

(assert (=> b!7012092 (= lt!2505321 (matchZipper!2865 lt!2505312 (t!381275 s!7408)))))

(declare-fun lt!2505318 () Unit!161328)

(declare-fun lt!2505325 () (InoxSet Context!12642))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1498 ((InoxSet Context!12642) (InoxSet Context!12642) List!67520) Unit!161328)

(assert (=> b!7012092 (= lt!2505318 (lemmaZipperConcatMatchesSameAsBothZippers!1498 lt!2505312 lt!2505325 (t!381275 s!7408)))))

(declare-fun lt!2505322 () Unit!161328)

(assert (=> b!7012092 (= lt!2505322 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(declare-fun lt!2505309 () Unit!161328)

(assert (=> b!7012092 (= lt!2505309 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(declare-fun b!7012093 () Bool)

(declare-fun e!4215012 () Bool)

(assert (=> b!7012093 (= e!4215012 e!4215016)))

(declare-fun res!2861383 () Bool)

(assert (=> b!7012093 (=> res!2861383 e!4215016)))

(assert (=> b!7012093 (= res!2861383 e!4215017)))

(declare-fun res!2861394 () Bool)

(assert (=> b!7012093 (=> (not res!2861394) (not e!4215017))))

(declare-fun lt!2505347 () Bool)

(assert (=> b!7012093 (= res!2861394 (not lt!2505347))))

(declare-fun lt!2505305 () (InoxSet Context!12642))

(assert (=> b!7012093 (= lt!2505347 (matchZipper!2865 lt!2505305 lt!2505310))))

(assert (=> b!7012093 (= lt!2505310 (Cons!67396 (h!73844 s!7408) (_1!37281 lt!2505313)))))

(declare-fun lt!2505314 () (InoxSet Context!12642))

(assert (=> b!7012093 (matchZipper!2865 lt!2505314 (_1!37281 lt!2505313))))

(declare-fun lt!2505301 () Unit!161328)

(declare-fun lt!2505299 () (InoxSet Context!12642))

(assert (=> b!7012093 (= lt!2505301 (lemmaZipperConcatMatchesSameAsBothZippers!1498 lt!2505299 lt!2505336 (_1!37281 lt!2505313)))))

(declare-fun b!7012094 () Bool)

(assert (=> b!7012094 (= e!4215009 (matchZipper!2865 lt!2505325 (t!381275 s!7408)))))

(declare-fun b!7012095 () Bool)

(declare-fun res!2861380 () Bool)

(declare-fun e!4215027 () Bool)

(assert (=> b!7012095 (=> res!2861380 e!4215027)))

(declare-fun lt!2505331 () Context!12642)

(declare-fun lt!2505307 () (InoxSet Context!12642))

(assert (=> b!7012095 (= res!2861380 (not (select lt!2505307 lt!2505331)))))

(declare-fun b!7012096 () Bool)

(declare-fun e!4215008 () Bool)

(declare-fun e!4215013 () Bool)

(assert (=> b!7012096 (= e!4215008 e!4215013)))

(declare-fun res!2861387 () Bool)

(assert (=> b!7012096 (=> res!2861387 e!4215013)))

(declare-fun lt!2505345 () (InoxSet Context!12642))

(declare-fun lt!2505319 () (InoxSet Context!12642))

(assert (=> b!7012096 (= res!2861387 (not (= lt!2505345 lt!2505319)))))

(declare-fun lambda!408871 () Int)

(declare-fun lt!2505308 () Context!12642)

(declare-fun flatMap!2311 ((InoxSet Context!12642) Int) (InoxSet Context!12642))

(declare-fun derivationStepZipperUp!1975 (Context!12642 C!34920) (InoxSet Context!12642))

(assert (=> b!7012096 (= (flatMap!2311 lt!2505305 lambda!408871) (derivationStepZipperUp!1975 lt!2505308 (h!73844 s!7408)))))

(declare-fun lt!2505323 () Unit!161328)

(declare-fun lemmaFlatMapOnSingletonSet!1826 ((InoxSet Context!12642) Context!12642 Int) Unit!161328)

(assert (=> b!7012096 (= lt!2505323 (lemmaFlatMapOnSingletonSet!1826 lt!2505305 lt!2505308 lambda!408871))))

(assert (=> b!7012096 (= lt!2505319 (derivationStepZipperUp!1975 lt!2505308 (h!73844 s!7408)))))

(declare-fun derivationStepZipper!2805 ((InoxSet Context!12642) C!34920) (InoxSet Context!12642))

(assert (=> b!7012096 (= lt!2505345 (derivationStepZipper!2805 lt!2505305 (h!73844 s!7408)))))

(assert (=> b!7012096 (= lt!2505305 (store ((as const (Array Context!12642 Bool)) false) lt!2505308 true))))

(declare-fun b!7012097 () Bool)

(assert (=> b!7012097 (= e!4215013 e!4215012)))

(declare-fun res!2861391 () Bool)

(assert (=> b!7012097 (=> res!2861391 e!4215012)))

(assert (=> b!7012097 (= res!2861391 (not (= lt!2505345 lt!2505314)))))

(assert (=> b!7012097 (= lt!2505314 ((_ map or) lt!2505299 lt!2505336))))

(declare-fun lt!2505320 () Context!12642)

(assert (=> b!7012097 (= lt!2505336 (derivationStepZipperUp!1975 lt!2505320 (h!73844 s!7408)))))

(declare-fun b!7012098 () Bool)

(declare-fun res!2861388 () Bool)

(assert (=> b!7012098 (=> res!2861388 e!4215008)))

(assert (=> b!7012098 (= res!2861388 (not (= (++!15329 (_1!37281 lt!2505313) (_2!37281 lt!2505313)) (t!381275 s!7408))))))

(declare-fun res!2861382 () Bool)

(declare-fun e!4215011 () Bool)

(assert (=> start!675476 (=> (not res!2861382) (not e!4215011))))

(assert (=> start!675476 (= res!2861382 (matchZipper!2865 lt!2505307 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12642))

(declare-fun appendTo!446 ((InoxSet Context!12642) Context!12642) (InoxSet Context!12642))

(assert (=> start!675476 (= lt!2505307 (appendTo!446 z1!570 ct2!306))))

(assert (=> start!675476 e!4215011))

(declare-fun condSetEmpty!48395 () Bool)

(assert (=> start!675476 (= condSetEmpty!48395 (= z1!570 ((as const (Array Context!12642 Bool)) false)))))

(declare-fun setRes!48395 () Bool)

(assert (=> start!675476 setRes!48395))

(declare-fun e!4215025 () Bool)

(declare-fun inv!86171 (Context!12642) Bool)

(assert (=> start!675476 (and (inv!86171 ct2!306) e!4215025)))

(declare-fun e!4215019 () Bool)

(assert (=> start!675476 e!4215019))

(declare-fun b!7012099 () Bool)

(assert (=> b!7012099 (= e!4215018 e!4215008)))

(declare-fun res!2861375 () Bool)

(assert (=> b!7012099 (=> res!2861375 e!4215008)))

(assert (=> b!7012099 (= res!2861375 (not (matchZipper!2865 lt!2505299 (_1!37281 lt!2505313))))))

(declare-datatypes ((Option!16810 0))(
  ( (None!16809) (Some!16809 (v!53087 tuple2!67956)) )
))
(declare-fun lt!2505327 () Option!16810)

(declare-fun get!23634 (Option!16810) tuple2!67956)

(assert (=> b!7012099 (= lt!2505313 (get!23634 lt!2505327))))

(declare-fun isDefined!13511 (Option!16810) Bool)

(assert (=> b!7012099 (isDefined!13511 lt!2505327)))

(declare-fun lt!2505330 () (InoxSet Context!12642))

(declare-fun findConcatSeparationZippers!326 ((InoxSet Context!12642) (InoxSet Context!12642) List!67520 List!67520 List!67520) Option!16810)

(assert (=> b!7012099 (= lt!2505327 (findConcatSeparationZippers!326 lt!2505299 lt!2505330 Nil!67396 (t!381275 s!7408) (t!381275 s!7408)))))

(assert (=> b!7012099 (= lt!2505330 (store ((as const (Array Context!12642 Bool)) false) ct2!306 true))))

(declare-fun lt!2505326 () Unit!161328)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!326 ((InoxSet Context!12642) Context!12642 List!67520) Unit!161328)

(assert (=> b!7012099 (= lt!2505326 (lemmaConcatZipperMatchesStringThenFindConcatDefined!326 lt!2505299 ct2!306 (t!381275 s!7408)))))

(declare-fun lt!2505346 () Unit!161328)

(assert (=> b!7012099 (= lt!2505346 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(assert (=> b!7012099 (= lt!2505312 (appendTo!446 lt!2505299 ct2!306))))

(declare-fun derivationStepZipperDown!2043 (Regex!17325 Context!12642 C!34920) (InoxSet Context!12642))

(assert (=> b!7012099 (= lt!2505299 (derivationStepZipperDown!2043 (h!73845 (exprs!6821 lt!2505308)) lt!2505320 (h!73844 s!7408)))))

(declare-fun lt!2505324 () Unit!161328)

(assert (=> b!7012099 (= lt!2505324 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(declare-fun lt!2505303 () Unit!161328)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!24 (Context!12642 Regex!17325 C!34920 Context!12642) Unit!161328)

(assert (=> b!7012099 (= lt!2505303 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!24 lt!2505320 (h!73845 (exprs!6821 lt!2505308)) (h!73844 s!7408) ct2!306))))

(declare-fun b!7012100 () Bool)

(declare-fun e!4215021 () Bool)

(declare-fun e!4215022 () Bool)

(assert (=> b!7012100 (= e!4215021 e!4215022)))

(declare-fun res!2861370 () Bool)

(assert (=> b!7012100 (=> res!2861370 e!4215022)))

(declare-fun lt!2505343 () (InoxSet Context!12642))

(declare-fun lt!2505344 () (InoxSet Context!12642))

(assert (=> b!7012100 (= res!2861370 (not (= lt!2505343 lt!2505344)))))

(declare-fun lt!2505340 () Context!12642)

(assert (=> b!7012100 (= lt!2505343 (store ((as const (Array Context!12642 Bool)) false) lt!2505340 true))))

(declare-fun lt!2505342 () Unit!161328)

(assert (=> b!7012100 (= lt!2505342 (lemmaConcatPreservesForall!661 (exprs!6821 lt!2505308) (exprs!6821 ct2!306) lambda!408870))))

(declare-fun b!7012101 () Bool)

(declare-fun tp_is_empty!43875 () Bool)

(declare-fun tp!1932540 () Bool)

(assert (=> b!7012101 (= e!4215019 (and tp_is_empty!43875 tp!1932540))))

(declare-fun b!7012102 () Bool)

(declare-fun res!2861374 () Bool)

(assert (=> b!7012102 (=> res!2861374 e!4215016)))

(assert (=> b!7012102 (= res!2861374 (not lt!2505347))))

(declare-fun b!7012103 () Bool)

(declare-fun res!2861372 () Bool)

(declare-fun e!4215014 () Bool)

(assert (=> b!7012103 (=> res!2861372 e!4215014)))

(get-info :version)

(assert (=> b!7012103 (= res!2861372 (not ((_ is Cons!67397) (exprs!6821 lt!2505308))))))

(declare-fun b!7012104 () Bool)

(declare-fun res!2861390 () Bool)

(assert (=> b!7012104 (=> res!2861390 e!4215026)))

(assert (=> b!7012104 (= res!2861390 (not lt!2505306))))

(declare-fun b!7012105 () Bool)

(declare-fun tp!1932539 () Bool)

(assert (=> b!7012105 (= e!4215025 tp!1932539)))

(declare-fun b!7012106 () Bool)

(declare-fun res!2861379 () Bool)

(assert (=> b!7012106 (=> res!2861379 e!4215014)))

(declare-fun isEmpty!39365 (List!67521) Bool)

(assert (=> b!7012106 (= res!2861379 (isEmpty!39365 (exprs!6821 lt!2505308)))))

(assert (=> b!7012107 (= e!4215027 e!4215021)))

(declare-fun res!2861392 () Bool)

(assert (=> b!7012107 (=> res!2861392 e!4215021)))

(assert (=> b!7012107 (= res!2861392 (or (not (= lt!2505340 lt!2505331)) (not (select z1!570 lt!2505308))))))

(declare-fun ++!15330 (List!67521 List!67521) List!67521)

(assert (=> b!7012107 (= lt!2505340 (Context!12643 (++!15330 (exprs!6821 lt!2505308) (exprs!6821 ct2!306))))))

(declare-fun lt!2505338 () Unit!161328)

(assert (=> b!7012107 (= lt!2505338 (lemmaConcatPreservesForall!661 (exprs!6821 lt!2505308) (exprs!6821 ct2!306) lambda!408870))))

(declare-fun lambda!408869 () Int)

(declare-fun mapPost2!180 ((InoxSet Context!12642) Int Context!12642) Context!12642)

(assert (=> b!7012107 (= lt!2505308 (mapPost2!180 z1!570 lambda!408869 lt!2505331))))

(declare-fun b!7012108 () Bool)

(declare-fun res!2861386 () Bool)

(assert (=> b!7012108 (=> res!2861386 e!4215008)))

(assert (=> b!7012108 (= res!2861386 (not (matchZipper!2865 lt!2505330 (_2!37281 lt!2505313))))))

(declare-fun b!7012109 () Bool)

(assert (=> b!7012109 (= e!4215026 e!4215024)))

(declare-fun res!2861371 () Bool)

(assert (=> b!7012109 (=> res!2861371 e!4215024)))

(assert (=> b!7012109 (= res!2861371 (matchZipper!2865 lt!2505325 (t!381275 s!7408)))))

(declare-fun lt!2505332 () Unit!161328)

(assert (=> b!7012109 (= lt!2505332 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(declare-fun b!7012110 () Bool)

(assert (=> b!7012110 (= e!4215015 (not (matchZipper!2865 lt!2505325 (t!381275 s!7408))))))

(declare-fun lt!2505300 () Unit!161328)

(assert (=> b!7012110 (= lt!2505300 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(declare-fun b!7012111 () Bool)

(declare-fun e!4215010 () Bool)

(assert (=> b!7012111 (= e!4215014 e!4215010)))

(declare-fun res!2861385 () Bool)

(assert (=> b!7012111 (=> res!2861385 e!4215010)))

(declare-fun nullable!7085 (Regex!17325) Bool)

(assert (=> b!7012111 (= res!2861385 (not (nullable!7085 (h!73845 (exprs!6821 lt!2505308)))))))

(assert (=> b!7012111 (= lt!2505320 (Context!12643 lt!2505334))))

(declare-fun tail!13404 (List!67521) List!67521)

(assert (=> b!7012111 (= lt!2505334 (tail!13404 (exprs!6821 lt!2505308)))))

(declare-fun b!7012112 () Bool)

(assert (=> b!7012112 (= e!4215010 e!4215023)))

(declare-fun res!2861368 () Bool)

(assert (=> b!7012112 (=> res!2861368 e!4215023)))

(assert (=> b!7012112 (= res!2861368 (not (= lt!2505341 lt!2505335)))))

(assert (=> b!7012112 (= lt!2505335 ((_ map or) lt!2505312 lt!2505325))))

(declare-fun lt!2505317 () Context!12642)

(assert (=> b!7012112 (= lt!2505325 (derivationStepZipperUp!1975 lt!2505317 (h!73844 s!7408)))))

(assert (=> b!7012112 (= lt!2505312 (derivationStepZipperDown!2043 (h!73845 (exprs!6821 lt!2505308)) lt!2505317 (h!73844 s!7408)))))

(assert (=> b!7012112 (= lt!2505317 (Context!12643 (++!15330 lt!2505334 (exprs!6821 ct2!306))))))

(declare-fun lt!2505316 () Unit!161328)

(assert (=> b!7012112 (= lt!2505316 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(declare-fun lt!2505304 () Unit!161328)

(assert (=> b!7012112 (= lt!2505304 (lemmaConcatPreservesForall!661 lt!2505334 (exprs!6821 ct2!306) lambda!408870))))

(assert (=> b!7012113 (= e!4215022 e!4215014)))

(declare-fun res!2861369 () Bool)

(assert (=> b!7012113 (=> res!2861369 e!4215014)))

(assert (=> b!7012113 (= res!2861369 (not (= (derivationStepZipper!2805 lt!2505343 (h!73844 s!7408)) lt!2505341)))))

(assert (=> b!7012113 (= (flatMap!2311 lt!2505343 lambda!408871) (derivationStepZipperUp!1975 lt!2505340 (h!73844 s!7408)))))

(declare-fun lt!2505302 () Unit!161328)

(assert (=> b!7012113 (= lt!2505302 (lemmaFlatMapOnSingletonSet!1826 lt!2505343 lt!2505340 lambda!408871))))

(assert (=> b!7012113 (= lt!2505341 (derivationStepZipperUp!1975 lt!2505340 (h!73844 s!7408)))))

(declare-fun lt!2505311 () Unit!161328)

(assert (=> b!7012113 (= lt!2505311 (lemmaConcatPreservesForall!661 (exprs!6821 lt!2505308) (exprs!6821 ct2!306) lambda!408870))))

(assert (=> b!7012114 (= e!4215011 (not e!4215027))))

(declare-fun res!2861378 () Bool)

(assert (=> b!7012114 (=> res!2861378 e!4215027)))

(assert (=> b!7012114 (= res!2861378 (not (matchZipper!2865 lt!2505344 s!7408)))))

(assert (=> b!7012114 (= lt!2505344 (store ((as const (Array Context!12642 Bool)) false) lt!2505331 true))))

(declare-fun lambda!408868 () Int)

(declare-fun getWitness!1271 ((InoxSet Context!12642) Int) Context!12642)

(assert (=> b!7012114 (= lt!2505331 (getWitness!1271 lt!2505307 lambda!408868))))

(declare-datatypes ((List!67522 0))(
  ( (Nil!67398) (Cons!67398 (h!73846 Context!12642) (t!381277 List!67522)) )
))
(declare-fun lt!2505315 () List!67522)

(declare-fun exists!3173 (List!67522 Int) Bool)

(assert (=> b!7012114 (exists!3173 lt!2505315 lambda!408868)))

(declare-fun lt!2505328 () Unit!161328)

(declare-fun lemmaZipperMatchesExistsMatchingContext!294 (List!67522 List!67520) Unit!161328)

(assert (=> b!7012114 (= lt!2505328 (lemmaZipperMatchesExistsMatchingContext!294 lt!2505315 s!7408))))

(declare-fun toList!10685 ((InoxSet Context!12642)) List!67522)

(assert (=> b!7012114 (= lt!2505315 (toList!10685 lt!2505307))))

(declare-fun setIsEmpty!48395 () Bool)

(assert (=> setIsEmpty!48395 setRes!48395))

(declare-fun e!4215020 () Bool)

(declare-fun setNonEmpty!48395 () Bool)

(declare-fun setElem!48395 () Context!12642)

(declare-fun tp!1932542 () Bool)

(assert (=> setNonEmpty!48395 (= setRes!48395 (and tp!1932542 (inv!86171 setElem!48395) e!4215020))))

(declare-fun setRest!48395 () (InoxSet Context!12642))

(assert (=> setNonEmpty!48395 (= z1!570 ((_ map or) (store ((as const (Array Context!12642 Bool)) false) setElem!48395 true) setRest!48395))))

(declare-fun b!7012115 () Bool)

(declare-fun res!2861373 () Bool)

(assert (=> b!7012115 (=> res!2861373 e!4215016)))

(assert (=> b!7012115 (= res!2861373 (not (= (++!15329 lt!2505310 (_2!37281 lt!2505313)) s!7408)))))

(declare-fun b!7012116 () Bool)

(declare-fun res!2861381 () Bool)

(assert (=> b!7012116 (=> (not res!2861381) (not e!4215011))))

(assert (=> b!7012116 (= res!2861381 ((_ is Cons!67396) s!7408))))

(declare-fun b!7012117 () Bool)

(declare-fun tp!1932541 () Bool)

(assert (=> b!7012117 (= e!4215020 tp!1932541)))

(assert (= (and start!675476 res!2861382) b!7012116))

(assert (= (and b!7012116 res!2861381) b!7012114))

(assert (= (and b!7012114 (not res!2861378)) b!7012095))

(assert (= (and b!7012095 (not res!2861380)) b!7012107))

(assert (= (and b!7012107 (not res!2861392)) b!7012100))

(assert (= (and b!7012100 (not res!2861370)) b!7012113))

(assert (= (and b!7012113 (not res!2861369)) b!7012103))

(assert (= (and b!7012103 (not res!2861372)) b!7012106))

(assert (= (and b!7012106 (not res!2861379)) b!7012111))

(assert (= (and b!7012111 (not res!2861385)) b!7012112))

(assert (= (and b!7012112 (not res!2861368)) b!7012092))

(assert (= (and b!7012092 (not res!2861389)) b!7012094))

(assert (= (and b!7012092 res!2861393) b!7012110))

(assert (= (and b!7012092 (not res!2861377)) b!7012104))

(assert (= (and b!7012104 (not res!2861390)) b!7012109))

(assert (= (and b!7012109 (not res!2861371)) b!7012091))

(assert (= (and b!7012091 (not res!2861376)) b!7012099))

(assert (= (and b!7012099 (not res!2861375)) b!7012108))

(assert (= (and b!7012108 (not res!2861386)) b!7012098))

(assert (= (and b!7012098 (not res!2861388)) b!7012096))

(assert (= (and b!7012096 (not res!2861387)) b!7012097))

(assert (= (and b!7012097 (not res!2861391)) b!7012093))

(assert (= (and b!7012093 res!2861394) b!7012089))

(assert (= (and b!7012093 (not res!2861383)) b!7012102))

(assert (= (and b!7012102 (not res!2861374)) b!7012115))

(assert (= (and b!7012115 (not res!2861373)) b!7012088))

(assert (= (and b!7012088 (not res!2861384)) b!7012090))

(assert (= (and start!675476 condSetEmpty!48395) setIsEmpty!48395))

(assert (= (and start!675476 (not condSetEmpty!48395)) setNonEmpty!48395))

(assert (= setNonEmpty!48395 b!7012117))

(assert (= start!675476 b!7012105))

(assert (= (and start!675476 ((_ is Cons!67396) s!7408)) b!7012101))

(declare-fun m!7710494 () Bool)

(assert (=> b!7012090 m!7710494))

(declare-fun m!7710496 () Bool)

(assert (=> b!7012112 m!7710496))

(declare-fun m!7710498 () Bool)

(assert (=> b!7012112 m!7710498))

(declare-fun m!7710500 () Bool)

(assert (=> b!7012112 m!7710500))

(declare-fun m!7710502 () Bool)

(assert (=> b!7012112 m!7710502))

(assert (=> b!7012112 m!7710500))

(declare-fun m!7710504 () Bool)

(assert (=> b!7012099 m!7710504))

(assert (=> b!7012099 m!7710500))

(declare-fun m!7710506 () Bool)

(assert (=> b!7012099 m!7710506))

(declare-fun m!7710508 () Bool)

(assert (=> b!7012099 m!7710508))

(declare-fun m!7710510 () Bool)

(assert (=> b!7012099 m!7710510))

(assert (=> b!7012099 m!7710500))

(declare-fun m!7710512 () Bool)

(assert (=> b!7012099 m!7710512))

(declare-fun m!7710514 () Bool)

(assert (=> b!7012099 m!7710514))

(declare-fun m!7710516 () Bool)

(assert (=> b!7012099 m!7710516))

(declare-fun m!7710518 () Bool)

(assert (=> b!7012099 m!7710518))

(declare-fun m!7710520 () Bool)

(assert (=> b!7012099 m!7710520))

(declare-fun m!7710522 () Bool)

(assert (=> b!7012095 m!7710522))

(declare-fun m!7710524 () Bool)

(assert (=> setNonEmpty!48395 m!7710524))

(declare-fun m!7710526 () Bool)

(assert (=> b!7012106 m!7710526))

(declare-fun m!7710528 () Bool)

(assert (=> b!7012108 m!7710528))

(declare-fun m!7710530 () Bool)

(assert (=> b!7012089 m!7710530))

(declare-fun m!7710532 () Bool)

(assert (=> b!7012113 m!7710532))

(declare-fun m!7710534 () Bool)

(assert (=> b!7012113 m!7710534))

(declare-fun m!7710536 () Bool)

(assert (=> b!7012113 m!7710536))

(declare-fun m!7710538 () Bool)

(assert (=> b!7012113 m!7710538))

(declare-fun m!7710540 () Bool)

(assert (=> b!7012113 m!7710540))

(declare-fun m!7710542 () Bool)

(assert (=> b!7012110 m!7710542))

(assert (=> b!7012110 m!7710500))

(declare-fun m!7710544 () Bool)

(assert (=> b!7012114 m!7710544))

(declare-fun m!7710546 () Bool)

(assert (=> b!7012114 m!7710546))

(declare-fun m!7710548 () Bool)

(assert (=> b!7012114 m!7710548))

(declare-fun m!7710550 () Bool)

(assert (=> b!7012114 m!7710550))

(declare-fun m!7710552 () Bool)

(assert (=> b!7012114 m!7710552))

(declare-fun m!7710554 () Bool)

(assert (=> b!7012114 m!7710554))

(declare-fun m!7710556 () Bool)

(assert (=> b!7012111 m!7710556))

(declare-fun m!7710558 () Bool)

(assert (=> b!7012111 m!7710558))

(assert (=> b!7012091 m!7710500))

(assert (=> b!7012091 m!7710500))

(assert (=> b!7012094 m!7710542))

(declare-fun m!7710560 () Bool)

(assert (=> b!7012096 m!7710560))

(declare-fun m!7710562 () Bool)

(assert (=> b!7012096 m!7710562))

(declare-fun m!7710564 () Bool)

(assert (=> b!7012096 m!7710564))

(declare-fun m!7710566 () Bool)

(assert (=> b!7012096 m!7710566))

(declare-fun m!7710568 () Bool)

(assert (=> b!7012096 m!7710568))

(declare-fun m!7710570 () Bool)

(assert (=> b!7012098 m!7710570))

(assert (=> b!7012109 m!7710542))

(assert (=> b!7012109 m!7710500))

(declare-fun m!7710572 () Bool)

(assert (=> b!7012100 m!7710572))

(assert (=> b!7012100 m!7710536))

(declare-fun m!7710574 () Bool)

(assert (=> b!7012093 m!7710574))

(declare-fun m!7710576 () Bool)

(assert (=> b!7012093 m!7710576))

(declare-fun m!7710578 () Bool)

(assert (=> b!7012093 m!7710578))

(declare-fun m!7710580 () Bool)

(assert (=> b!7012115 m!7710580))

(declare-fun m!7710582 () Bool)

(assert (=> b!7012088 m!7710582))

(assert (=> b!7012092 m!7710500))

(assert (=> b!7012092 m!7710500))

(declare-fun m!7710584 () Bool)

(assert (=> b!7012092 m!7710584))

(assert (=> b!7012092 m!7710500))

(declare-fun m!7710586 () Bool)

(assert (=> b!7012092 m!7710586))

(declare-fun m!7710588 () Bool)

(assert (=> b!7012092 m!7710588))

(declare-fun m!7710590 () Bool)

(assert (=> b!7012092 m!7710590))

(declare-fun m!7710592 () Bool)

(assert (=> b!7012107 m!7710592))

(declare-fun m!7710594 () Bool)

(assert (=> b!7012107 m!7710594))

(assert (=> b!7012107 m!7710536))

(declare-fun m!7710596 () Bool)

(assert (=> b!7012107 m!7710596))

(declare-fun m!7710598 () Bool)

(assert (=> start!675476 m!7710598))

(declare-fun m!7710600 () Bool)

(assert (=> start!675476 m!7710600))

(declare-fun m!7710602 () Bool)

(assert (=> start!675476 m!7710602))

(declare-fun m!7710604 () Bool)

(assert (=> b!7012097 m!7710604))

(check-sat (not b!7012100) tp_is_empty!43875 (not b!7012099) (not b!7012117) (not start!675476) (not b!7012096) (not b!7012106) (not b!7012112) (not b!7012092) (not b!7012091) (not setNonEmpty!48395) (not b!7012115) (not b!7012110) (not b!7012113) (not b!7012088) (not b!7012101) (not b!7012094) (not b!7012111) (not b!7012093) (not b!7012109) (not b!7012107) (not b!7012090) (not b!7012089) (not b!7012108) (not b!7012105) (not b!7012114) (not b!7012098) (not b!7012097))
(check-sat)
