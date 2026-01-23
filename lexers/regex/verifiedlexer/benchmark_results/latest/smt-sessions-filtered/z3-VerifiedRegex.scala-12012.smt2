; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!673648 () Bool)

(assert start!673648)

(declare-fun b!7001424 () Bool)

(assert (=> b!7001424 true))

(declare-fun b!7001435 () Bool)

(assert (=> b!7001435 true))

(declare-fun b!7001418 () Bool)

(assert (=> b!7001418 true))

(declare-fun b!7001411 () Bool)

(declare-fun e!4208417 () Bool)

(declare-fun e!4208412 () Bool)

(assert (=> b!7001411 (= e!4208417 e!4208412)))

(declare-fun res!2856083 () Bool)

(assert (=> b!7001411 (=> res!2856083 e!4208412)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34812 0))(
  ( (C!34813 (val!27108 Int)) )
))
(declare-datatypes ((Regex!17271 0))(
  ( (ElementMatch!17271 (c!1299739 C!34812)) (Concat!26116 (regOne!35054 Regex!17271) (regTwo!35054 Regex!17271)) (EmptyExpr!17271) (Star!17271 (reg!17600 Regex!17271)) (EmptyLang!17271) (Union!17271 (regOne!35055 Regex!17271) (regTwo!35055 Regex!17271)) )
))
(declare-datatypes ((List!67358 0))(
  ( (Nil!67234) (Cons!67234 (h!73682 Regex!17271) (t!381111 List!67358)) )
))
(declare-datatypes ((Context!12534 0))(
  ( (Context!12535 (exprs!6767 List!67358)) )
))
(declare-fun lt!2496253 () (InoxSet Context!12534))

(declare-datatypes ((List!67359 0))(
  ( (Nil!67235) (Cons!67235 (h!73683 C!34812) (t!381112 List!67359)) )
))
(declare-datatypes ((tuple2!67888 0))(
  ( (tuple2!67889 (_1!37247 List!67359) (_2!37247 List!67359)) )
))
(declare-fun lt!2496278 () tuple2!67888)

(declare-fun matchZipper!2811 ((InoxSet Context!12534) List!67359) Bool)

(assert (=> b!7001411 (= res!2856083 (not (matchZipper!2811 lt!2496253 (_1!37247 lt!2496278))))))

(declare-datatypes ((Option!16776 0))(
  ( (None!16775) (Some!16775 (v!53053 tuple2!67888)) )
))
(declare-fun lt!2496257 () Option!16776)

(declare-fun get!23576 (Option!16776) tuple2!67888)

(assert (=> b!7001411 (= lt!2496278 (get!23576 lt!2496257))))

(declare-fun isDefined!13477 (Option!16776) Bool)

(assert (=> b!7001411 (isDefined!13477 lt!2496257)))

(declare-fun lt!2496309 () (InoxSet Context!12534))

(declare-fun s!7408 () List!67359)

(declare-fun findConcatSeparationZippers!292 ((InoxSet Context!12534) (InoxSet Context!12534) List!67359 List!67359 List!67359) Option!16776)

(assert (=> b!7001411 (= lt!2496257 (findConcatSeparationZippers!292 lt!2496253 lt!2496309 Nil!67235 s!7408 s!7408))))

(declare-fun ct2!306 () Context!12534)

(assert (=> b!7001411 (= lt!2496309 (store ((as const (Array Context!12534 Bool)) false) ct2!306 true))))

(declare-datatypes ((Unit!161202 0))(
  ( (Unit!161203) )
))
(declare-fun lt!2496270 () Unit!161202)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!292 ((InoxSet Context!12534) Context!12534 List!67359) Unit!161202)

(assert (=> b!7001411 (= lt!2496270 (lemmaConcatZipperMatchesStringThenFindConcatDefined!292 lt!2496253 ct2!306 s!7408))))

(declare-fun b!7001412 () Bool)

(declare-fun res!2856081 () Bool)

(assert (=> b!7001412 (=> res!2856081 e!4208417)))

(declare-fun lt!2496291 () Context!12534)

(declare-fun lt!2496277 () Int)

(declare-datatypes ((List!67360 0))(
  ( (Nil!67236) (Cons!67236 (h!73684 Context!12534) (t!381113 List!67360)) )
))
(declare-fun zipperDepthTotal!492 (List!67360) Int)

(assert (=> b!7001412 (= res!2856081 (>= (zipperDepthTotal!492 (Cons!67236 lt!2496291 Nil!67236)) lt!2496277))))

(declare-fun setNonEmpty!48117 () Bool)

(declare-fun setElem!48117 () Context!12534)

(declare-fun e!4208397 () Bool)

(declare-fun setRes!48117 () Bool)

(declare-fun tp!1931194 () Bool)

(declare-fun inv!86036 (Context!12534) Bool)

(assert (=> setNonEmpty!48117 (= setRes!48117 (and tp!1931194 (inv!86036 setElem!48117) e!4208397))))

(declare-fun z1!570 () (InoxSet Context!12534))

(declare-fun setRest!48117 () (InoxSet Context!12534))

(assert (=> setNonEmpty!48117 (= z1!570 ((_ map or) (store ((as const (Array Context!12534 Bool)) false) setElem!48117 true) setRest!48117))))

(declare-fun b!7001413 () Bool)

(declare-fun e!4208415 () Bool)

(declare-fun lt!2496274 () (InoxSet Context!12534))

(declare-fun lt!2496290 () List!67359)

(assert (=> b!7001413 (= e!4208415 (matchZipper!2811 lt!2496274 lt!2496290))))

(declare-fun b!7001414 () Bool)

(declare-fun e!4208404 () Bool)

(declare-fun e!4208407 () Bool)

(assert (=> b!7001414 (= e!4208404 e!4208407)))

(declare-fun res!2856092 () Bool)

(assert (=> b!7001414 (=> res!2856092 e!4208407)))

(declare-fun lt!2496296 () (InoxSet Context!12534))

(assert (=> b!7001414 (= res!2856092 (not (matchZipper!2811 lt!2496296 (t!381112 s!7408))))))

(declare-fun lt!2496279 () List!67358)

(declare-fun lambda!405429 () Int)

(declare-fun lt!2496311 () Unit!161202)

(declare-fun lemmaConcatPreservesForall!607 (List!67358 List!67358 Int) Unit!161202)

(assert (=> b!7001414 (= lt!2496311 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun b!7001416 () Bool)

(declare-fun e!4208411 () Bool)

(assert (=> b!7001416 (= e!4208411 e!4208404)))

(declare-fun res!2856082 () Bool)

(assert (=> b!7001416 (=> res!2856082 e!4208404)))

(declare-fun e!4208402 () Bool)

(assert (=> b!7001416 (= res!2856082 e!4208402)))

(declare-fun res!2856089 () Bool)

(assert (=> b!7001416 (=> (not res!2856089) (not e!4208402))))

(declare-fun lt!2496269 () Bool)

(declare-fun lt!2496307 () Bool)

(assert (=> b!7001416 (= res!2856089 (not (= lt!2496269 lt!2496307)))))

(declare-fun lt!2496280 () (InoxSet Context!12534))

(assert (=> b!7001416 (= lt!2496269 (matchZipper!2811 lt!2496280 (t!381112 s!7408)))))

(declare-fun lt!2496310 () Unit!161202)

(assert (=> b!7001416 (= lt!2496310 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun lt!2496284 () (InoxSet Context!12534))

(declare-fun e!4208400 () Bool)

(assert (=> b!7001416 (= (matchZipper!2811 lt!2496284 (t!381112 s!7408)) e!4208400)))

(declare-fun res!2856087 () Bool)

(assert (=> b!7001416 (=> res!2856087 e!4208400)))

(assert (=> b!7001416 (= res!2856087 lt!2496307)))

(declare-fun lt!2496265 () (InoxSet Context!12534))

(assert (=> b!7001416 (= lt!2496307 (matchZipper!2811 lt!2496265 (t!381112 s!7408)))))

(declare-fun lt!2496256 () Unit!161202)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1444 ((InoxSet Context!12534) (InoxSet Context!12534) List!67359) Unit!161202)

(assert (=> b!7001416 (= lt!2496256 (lemmaZipperConcatMatchesSameAsBothZippers!1444 lt!2496265 lt!2496296 (t!381112 s!7408)))))

(declare-fun lt!2496261 () Unit!161202)

(assert (=> b!7001416 (= lt!2496261 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun lt!2496254 () Unit!161202)

(assert (=> b!7001416 (= lt!2496254 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun b!7001417 () Bool)

(declare-fun res!2856084 () Bool)

(assert (=> b!7001417 (=> res!2856084 e!4208412)))

(assert (=> b!7001417 (= res!2856084 (not (matchZipper!2811 lt!2496309 (_2!37247 lt!2496278))))))

(declare-fun e!4208408 () Bool)

(declare-fun e!4208398 () Bool)

(assert (=> b!7001418 (= e!4208408 e!4208398)))

(declare-fun res!2856093 () Bool)

(assert (=> b!7001418 (=> res!2856093 e!4208398)))

(declare-fun lt!2496293 () (InoxSet Context!12534))

(declare-fun derivationStepZipper!2751 ((InoxSet Context!12534) C!34812) (InoxSet Context!12534))

(assert (=> b!7001418 (= res!2856093 (not (= (derivationStepZipper!2751 lt!2496293 (h!73683 s!7408)) lt!2496280)))))

(declare-fun lambda!405430 () Int)

(declare-fun lt!2496292 () Context!12534)

(declare-fun flatMap!2257 ((InoxSet Context!12534) Int) (InoxSet Context!12534))

(declare-fun derivationStepZipperUp!1921 (Context!12534 C!34812) (InoxSet Context!12534))

(assert (=> b!7001418 (= (flatMap!2257 lt!2496293 lambda!405430) (derivationStepZipperUp!1921 lt!2496292 (h!73683 s!7408)))))

(declare-fun lt!2496262 () Unit!161202)

(declare-fun lemmaFlatMapOnSingletonSet!1772 ((InoxSet Context!12534) Context!12534 Int) Unit!161202)

(assert (=> b!7001418 (= lt!2496262 (lemmaFlatMapOnSingletonSet!1772 lt!2496293 lt!2496292 lambda!405430))))

(assert (=> b!7001418 (= lt!2496280 (derivationStepZipperUp!1921 lt!2496292 (h!73683 s!7408)))))

(declare-fun lt!2496275 () Context!12534)

(declare-fun lt!2496306 () Unit!161202)

(assert (=> b!7001418 (= lt!2496306 (lemmaConcatPreservesForall!607 (exprs!6767 lt!2496275) (exprs!6767 ct2!306) lambda!405429))))

(declare-fun setIsEmpty!48117 () Bool)

(assert (=> setIsEmpty!48117 setRes!48117))

(declare-fun b!7001419 () Bool)

(assert (=> b!7001419 (= e!4208400 (matchZipper!2811 lt!2496296 (t!381112 s!7408)))))

(declare-fun b!7001420 () Bool)

(declare-fun e!4208399 () Bool)

(assert (=> b!7001420 (= e!4208407 e!4208399)))

(declare-fun res!2856101 () Bool)

(assert (=> b!7001420 (=> res!2856101 e!4208399)))

(declare-fun lt!2496295 () (InoxSet Context!12534))

(assert (=> b!7001420 (= res!2856101 (not (= (derivationStepZipper!2751 lt!2496295 (h!73683 s!7408)) lt!2496296)))))

(declare-fun lt!2496305 () Unit!161202)

(assert (=> b!7001420 (= lt!2496305 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun lt!2496286 () Unit!161202)

(assert (=> b!7001420 (= lt!2496286 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun lt!2496264 () Context!12534)

(assert (=> b!7001420 (= (flatMap!2257 lt!2496295 lambda!405430) (derivationStepZipperUp!1921 lt!2496264 (h!73683 s!7408)))))

(declare-fun lt!2496312 () Unit!161202)

(assert (=> b!7001420 (= lt!2496312 (lemmaFlatMapOnSingletonSet!1772 lt!2496295 lt!2496264 lambda!405430))))

(assert (=> b!7001420 (= lt!2496295 (store ((as const (Array Context!12534 Bool)) false) lt!2496264 true))))

(declare-fun lt!2496268 () Unit!161202)

(assert (=> b!7001420 (= lt!2496268 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun lt!2496301 () Unit!161202)

(assert (=> b!7001420 (= lt!2496301 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun b!7001421 () Bool)

(assert (=> b!7001421 (= e!4208402 (not (matchZipper!2811 lt!2496296 (t!381112 s!7408))))))

(declare-fun lt!2496294 () Unit!161202)

(assert (=> b!7001421 (= lt!2496294 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun b!7001422 () Bool)

(declare-fun e!4208405 () Bool)

(assert (=> b!7001422 (= e!4208405 e!4208408)))

(declare-fun res!2856077 () Bool)

(assert (=> b!7001422 (=> res!2856077 e!4208408)))

(declare-fun lt!2496300 () (InoxSet Context!12534))

(assert (=> b!7001422 (= res!2856077 (not (= lt!2496293 lt!2496300)))))

(assert (=> b!7001422 (= lt!2496293 (store ((as const (Array Context!12534 Bool)) false) lt!2496292 true))))

(declare-fun lt!2496260 () Unit!161202)

(assert (=> b!7001422 (= lt!2496260 (lemmaConcatPreservesForall!607 (exprs!6767 lt!2496275) (exprs!6767 ct2!306) lambda!405429))))

(declare-fun b!7001423 () Bool)

(declare-fun res!2856088 () Bool)

(assert (=> b!7001423 (=> res!2856088 e!4208404)))

(assert (=> b!7001423 (= res!2856088 (not lt!2496269))))

(declare-fun e!4208403 () Bool)

(declare-fun e!4208410 () Bool)

(assert (=> b!7001424 (= e!4208403 (not e!4208410))))

(declare-fun res!2856100 () Bool)

(assert (=> b!7001424 (=> res!2856100 e!4208410)))

(assert (=> b!7001424 (= res!2856100 (not (matchZipper!2811 lt!2496300 s!7408)))))

(declare-fun lt!2496288 () Context!12534)

(assert (=> b!7001424 (= lt!2496300 (store ((as const (Array Context!12534 Bool)) false) lt!2496288 true))))

(declare-fun lt!2496297 () (InoxSet Context!12534))

(declare-fun lambda!405427 () Int)

(declare-fun getWitness!1192 ((InoxSet Context!12534) Int) Context!12534)

(assert (=> b!7001424 (= lt!2496288 (getWitness!1192 lt!2496297 lambda!405427))))

(declare-fun lt!2496271 () List!67360)

(declare-fun exists!3088 (List!67360 Int) Bool)

(assert (=> b!7001424 (exists!3088 lt!2496271 lambda!405427)))

(declare-fun lt!2496255 () Unit!161202)

(declare-fun lemmaZipperMatchesExistsMatchingContext!240 (List!67360 List!67359) Unit!161202)

(assert (=> b!7001424 (= lt!2496255 (lemmaZipperMatchesExistsMatchingContext!240 lt!2496271 s!7408))))

(declare-fun toList!10631 ((InoxSet Context!12534)) List!67360)

(assert (=> b!7001424 (= lt!2496271 (toList!10631 lt!2496297))))

(declare-fun b!7001425 () Bool)

(declare-fun tp!1931193 () Bool)

(assert (=> b!7001425 (= e!4208397 tp!1931193)))

(declare-fun b!7001426 () Bool)

(declare-fun res!2856080 () Bool)

(assert (=> b!7001426 (=> res!2856080 e!4208410)))

(assert (=> b!7001426 (= res!2856080 (not (select lt!2496297 lt!2496288)))))

(declare-fun b!7001427 () Bool)

(declare-fun e!4208416 () Bool)

(assert (=> b!7001427 (= e!4208412 e!4208416)))

(declare-fun res!2856074 () Bool)

(assert (=> b!7001427 (=> res!2856074 e!4208416)))

(declare-fun lt!2496266 () (InoxSet Context!12534))

(declare-fun lt!2496259 () (InoxSet Context!12534))

(assert (=> b!7001427 (= res!2856074 (not (= (derivationStepZipper!2751 lt!2496259 (h!73683 s!7408)) lt!2496266)))))

(assert (=> b!7001427 (= lt!2496266 (derivationStepZipperUp!1921 lt!2496275 (h!73683 s!7408)))))

(assert (=> b!7001427 (= (flatMap!2257 lt!2496259 lambda!405430) (derivationStepZipperUp!1921 lt!2496275 (h!73683 s!7408)))))

(declare-fun lt!2496263 () Unit!161202)

(assert (=> b!7001427 (= lt!2496263 (lemmaFlatMapOnSingletonSet!1772 lt!2496259 lt!2496275 lambda!405430))))

(assert (=> b!7001427 (= lt!2496259 (store ((as const (Array Context!12534 Bool)) false) lt!2496275 true))))

(declare-fun b!7001428 () Bool)

(declare-fun e!4208406 () Bool)

(declare-fun tp_is_empty!43767 () Bool)

(declare-fun tp!1931191 () Bool)

(assert (=> b!7001428 (= e!4208406 (and tp_is_empty!43767 tp!1931191))))

(declare-fun res!2856075 () Bool)

(assert (=> start!673648 (=> (not res!2856075) (not e!4208403))))

(assert (=> start!673648 (= res!2856075 (matchZipper!2811 lt!2496297 s!7408))))

(declare-fun appendTo!392 ((InoxSet Context!12534) Context!12534) (InoxSet Context!12534))

(assert (=> start!673648 (= lt!2496297 (appendTo!392 z1!570 ct2!306))))

(assert (=> start!673648 e!4208403))

(declare-fun condSetEmpty!48117 () Bool)

(assert (=> start!673648 (= condSetEmpty!48117 (= z1!570 ((as const (Array Context!12534 Bool)) false)))))

(assert (=> start!673648 setRes!48117))

(declare-fun e!4208401 () Bool)

(assert (=> start!673648 (and (inv!86036 ct2!306) e!4208401)))

(assert (=> start!673648 e!4208406))

(declare-fun b!7001415 () Bool)

(declare-fun e!4208413 () Bool)

(assert (=> b!7001415 (= e!4208413 e!4208417)))

(declare-fun res!2856091 () Bool)

(assert (=> b!7001415 (=> res!2856091 e!4208417)))

(declare-fun lt!2496287 () Int)

(declare-fun contextDepthTotal!464 (Context!12534) Int)

(assert (=> b!7001415 (= res!2856091 (<= lt!2496287 (contextDepthTotal!464 lt!2496291)))))

(assert (=> b!7001415 (<= lt!2496287 lt!2496277)))

(declare-fun lt!2496267 () List!67360)

(assert (=> b!7001415 (= lt!2496277 (zipperDepthTotal!492 lt!2496267))))

(assert (=> b!7001415 (= lt!2496287 (contextDepthTotal!464 lt!2496275))))

(declare-fun lt!2496252 () Unit!161202)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!32 (List!67360 Context!12534) Unit!161202)

(assert (=> b!7001415 (= lt!2496252 (lemmaTotalDepthZipperLargerThanOfAnyContext!32 lt!2496267 lt!2496275))))

(assert (=> b!7001415 (= lt!2496267 (toList!10631 z1!570))))

(declare-fun lt!2496285 () Unit!161202)

(assert (=> b!7001415 (= lt!2496285 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun lt!2496272 () Unit!161202)

(assert (=> b!7001415 (= lt!2496272 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun lt!2496302 () Unit!161202)

(assert (=> b!7001415 (= lt!2496302 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(assert (=> b!7001415 (= (flatMap!2257 lt!2496253 lambda!405430) (derivationStepZipperUp!1921 lt!2496291 (h!73683 s!7408)))))

(declare-fun lt!2496299 () Unit!161202)

(assert (=> b!7001415 (= lt!2496299 (lemmaFlatMapOnSingletonSet!1772 lt!2496253 lt!2496291 lambda!405430))))

(declare-fun lambda!405428 () Int)

(declare-fun map!15553 ((InoxSet Context!12534) Int) (InoxSet Context!12534))

(declare-fun ++!15243 (List!67358 List!67358) List!67358)

(assert (=> b!7001415 (= (map!15553 lt!2496253 lambda!405428) (store ((as const (Array Context!12534 Bool)) false) (Context!12535 (++!15243 lt!2496279 (exprs!6767 ct2!306))) true))))

(declare-fun lt!2496298 () Unit!161202)

(assert (=> b!7001415 (= lt!2496298 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun lt!2496282 () Unit!161202)

(declare-fun lemmaMapOnSingletonSet!336 ((InoxSet Context!12534) Context!12534 Int) Unit!161202)

(assert (=> b!7001415 (= lt!2496282 (lemmaMapOnSingletonSet!336 lt!2496253 lt!2496291 lambda!405428))))

(assert (=> b!7001415 (= lt!2496253 (store ((as const (Array Context!12534 Bool)) false) lt!2496291 true))))

(declare-fun b!7001429 () Bool)

(declare-fun tp!1931192 () Bool)

(assert (=> b!7001429 (= e!4208401 tp!1931192)))

(declare-fun b!7001430 () Bool)

(declare-fun res!2856090 () Bool)

(assert (=> b!7001430 (=> res!2856090 e!4208398)))

(declare-fun isEmpty!39255 (List!67358) Bool)

(assert (=> b!7001430 (= res!2856090 (isEmpty!39255 (exprs!6767 lt!2496275)))))

(declare-fun b!7001431 () Bool)

(declare-fun res!2856095 () Bool)

(assert (=> b!7001431 (=> res!2856095 e!4208412)))

(declare-fun isEmpty!39256 (List!67359) Bool)

(assert (=> b!7001431 (= res!2856095 (isEmpty!39256 (_1!37247 lt!2496278)))))

(declare-fun b!7001432 () Bool)

(declare-fun res!2856078 () Bool)

(assert (=> b!7001432 (=> (not res!2856078) (not e!4208403))))

(get-info :version)

(assert (=> b!7001432 (= res!2856078 ((_ is Cons!67235) s!7408))))

(declare-fun b!7001433 () Bool)

(declare-fun e!4208396 () Bool)

(assert (=> b!7001433 (= e!4208396 e!4208411)))

(declare-fun res!2856098 () Bool)

(assert (=> b!7001433 (=> res!2856098 e!4208411)))

(assert (=> b!7001433 (= res!2856098 (not (= lt!2496280 lt!2496284)))))

(assert (=> b!7001433 (= lt!2496284 ((_ map or) lt!2496265 lt!2496296))))

(assert (=> b!7001433 (= lt!2496296 (derivationStepZipperUp!1921 lt!2496264 (h!73683 s!7408)))))

(declare-fun derivationStepZipperDown!1989 (Regex!17271 Context!12534 C!34812) (InoxSet Context!12534))

(assert (=> b!7001433 (= lt!2496265 (derivationStepZipperDown!1989 (h!73682 (exprs!6767 lt!2496275)) lt!2496264 (h!73683 s!7408)))))

(assert (=> b!7001433 (= lt!2496264 (Context!12535 (++!15243 lt!2496279 (exprs!6767 ct2!306))))))

(declare-fun lt!2496273 () Unit!161202)

(assert (=> b!7001433 (= lt!2496273 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun lt!2496258 () Unit!161202)

(assert (=> b!7001433 (= lt!2496258 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun b!7001434 () Bool)

(declare-fun res!2856094 () Bool)

(assert (=> b!7001434 (=> res!2856094 e!4208412)))

(declare-fun ++!15244 (List!67359 List!67359) List!67359)

(assert (=> b!7001434 (= res!2856094 (not (= (++!15244 (_1!37247 lt!2496278) (_2!37247 lt!2496278)) s!7408)))))

(assert (=> b!7001435 (= e!4208410 e!4208405)))

(declare-fun res!2856099 () Bool)

(assert (=> b!7001435 (=> res!2856099 e!4208405)))

(assert (=> b!7001435 (= res!2856099 (or (not (= lt!2496292 lt!2496288)) (not (select z1!570 lt!2496275))))))

(assert (=> b!7001435 (= lt!2496292 (Context!12535 (++!15243 (exprs!6767 lt!2496275) (exprs!6767 ct2!306))))))

(declare-fun lt!2496303 () Unit!161202)

(assert (=> b!7001435 (= lt!2496303 (lemmaConcatPreservesForall!607 (exprs!6767 lt!2496275) (exprs!6767 ct2!306) lambda!405429))))

(declare-fun mapPost2!126 ((InoxSet Context!12534) Int Context!12534) Context!12534)

(assert (=> b!7001435 (= lt!2496275 (mapPost2!126 z1!570 lambda!405428 lt!2496288))))

(declare-fun b!7001436 () Bool)

(declare-fun e!4208414 () Bool)

(assert (=> b!7001436 (= e!4208414 (matchZipper!2811 lt!2496274 lt!2496290))))

(declare-fun b!7001437 () Bool)

(assert (=> b!7001437 (= e!4208398 e!4208396)))

(declare-fun res!2856086 () Bool)

(assert (=> b!7001437 (=> res!2856086 e!4208396)))

(declare-fun nullable!7031 (Regex!17271) Bool)

(assert (=> b!7001437 (= res!2856086 (not (nullable!7031 (h!73682 (exprs!6767 lt!2496275)))))))

(assert (=> b!7001437 (= lt!2496291 (Context!12535 lt!2496279))))

(declare-fun tail!13310 (List!67358) List!67358)

(assert (=> b!7001437 (= lt!2496279 (tail!13310 (exprs!6767 lt!2496275)))))

(declare-fun b!7001438 () Bool)

(assert (=> b!7001438 (= e!4208399 e!4208413)))

(declare-fun res!2856079 () Bool)

(assert (=> b!7001438 (=> res!2856079 e!4208413)))

(assert (=> b!7001438 (= res!2856079 (not (matchZipper!2811 lt!2496295 s!7408)))))

(declare-fun lt!2496308 () Unit!161202)

(assert (=> b!7001438 (= lt!2496308 (lemmaConcatPreservesForall!607 lt!2496279 (exprs!6767 ct2!306) lambda!405429))))

(declare-fun b!7001439 () Bool)

(declare-fun e!4208409 () Bool)

(assert (=> b!7001439 (= e!4208409 true)))

(declare-fun lt!2496276 () Bool)

(assert (=> b!7001439 (= lt!2496276 e!4208414)))

(declare-fun res!2856097 () Bool)

(assert (=> b!7001439 (=> res!2856097 e!4208414)))

(declare-fun lt!2496289 () Bool)

(assert (=> b!7001439 (= res!2856097 (= (matchZipper!2811 lt!2496259 (_1!37247 lt!2496278)) lt!2496289))))

(declare-fun lt!2496283 () (InoxSet Context!12534))

(assert (=> b!7001439 (= (matchZipper!2811 lt!2496283 lt!2496290) e!4208415)))

(declare-fun res!2856096 () Bool)

(assert (=> b!7001439 (=> res!2856096 e!4208415)))

(assert (=> b!7001439 (= res!2856096 lt!2496289)))

(declare-fun lt!2496304 () (InoxSet Context!12534))

(assert (=> b!7001439 (= lt!2496289 (matchZipper!2811 lt!2496304 lt!2496290))))

(declare-fun lt!2496281 () Unit!161202)

(assert (=> b!7001439 (= lt!2496281 (lemmaZipperConcatMatchesSameAsBothZippers!1444 lt!2496304 lt!2496274 lt!2496290))))

(declare-fun tail!13311 (List!67359) List!67359)

(assert (=> b!7001439 (= lt!2496290 (tail!13311 (_1!37247 lt!2496278)))))

(declare-fun b!7001440 () Bool)

(declare-fun res!2856085 () Bool)

(assert (=> b!7001440 (=> res!2856085 e!4208398)))

(assert (=> b!7001440 (= res!2856085 (not ((_ is Cons!67234) (exprs!6767 lt!2496275))))))

(declare-fun b!7001441 () Bool)

(assert (=> b!7001441 (= e!4208416 e!4208409)))

(declare-fun res!2856076 () Bool)

(assert (=> b!7001441 (=> res!2856076 e!4208409)))

(assert (=> b!7001441 (= res!2856076 (not (= lt!2496266 lt!2496283)))))

(assert (=> b!7001441 (= lt!2496283 ((_ map or) lt!2496304 lt!2496274))))

(assert (=> b!7001441 (= lt!2496274 (derivationStepZipperUp!1921 lt!2496291 (h!73683 s!7408)))))

(assert (=> b!7001441 (= lt!2496304 (derivationStepZipperDown!1989 (h!73682 (exprs!6767 lt!2496275)) lt!2496291 (h!73683 s!7408)))))

(assert (= (and start!673648 res!2856075) b!7001432))

(assert (= (and b!7001432 res!2856078) b!7001424))

(assert (= (and b!7001424 (not res!2856100)) b!7001426))

(assert (= (and b!7001426 (not res!2856080)) b!7001435))

(assert (= (and b!7001435 (not res!2856099)) b!7001422))

(assert (= (and b!7001422 (not res!2856077)) b!7001418))

(assert (= (and b!7001418 (not res!2856093)) b!7001440))

(assert (= (and b!7001440 (not res!2856085)) b!7001430))

(assert (= (and b!7001430 (not res!2856090)) b!7001437))

(assert (= (and b!7001437 (not res!2856086)) b!7001433))

(assert (= (and b!7001433 (not res!2856098)) b!7001416))

(assert (= (and b!7001416 (not res!2856087)) b!7001419))

(assert (= (and b!7001416 res!2856089) b!7001421))

(assert (= (and b!7001416 (not res!2856082)) b!7001423))

(assert (= (and b!7001423 (not res!2856088)) b!7001414))

(assert (= (and b!7001414 (not res!2856092)) b!7001420))

(assert (= (and b!7001420 (not res!2856101)) b!7001438))

(assert (= (and b!7001438 (not res!2856079)) b!7001415))

(assert (= (and b!7001415 (not res!2856091)) b!7001412))

(assert (= (and b!7001412 (not res!2856081)) b!7001411))

(assert (= (and b!7001411 (not res!2856083)) b!7001417))

(assert (= (and b!7001417 (not res!2856084)) b!7001434))

(assert (= (and b!7001434 (not res!2856094)) b!7001431))

(assert (= (and b!7001431 (not res!2856095)) b!7001427))

(assert (= (and b!7001427 (not res!2856074)) b!7001441))

(assert (= (and b!7001441 (not res!2856076)) b!7001439))

(assert (= (and b!7001439 (not res!2856096)) b!7001413))

(assert (= (and b!7001439 (not res!2856097)) b!7001436))

(assert (= (and start!673648 condSetEmpty!48117) setIsEmpty!48117))

(assert (= (and start!673648 (not condSetEmpty!48117)) setNonEmpty!48117))

(assert (= setNonEmpty!48117 b!7001425))

(assert (= start!673648 b!7001429))

(assert (= (and start!673648 ((_ is Cons!67235) s!7408)) b!7001428))

(declare-fun m!7695720 () Bool)

(assert (=> b!7001431 m!7695720))

(declare-fun m!7695722 () Bool)

(assert (=> b!7001420 m!7695722))

(assert (=> b!7001420 m!7695722))

(assert (=> b!7001420 m!7695722))

(declare-fun m!7695724 () Bool)

(assert (=> b!7001420 m!7695724))

(declare-fun m!7695726 () Bool)

(assert (=> b!7001420 m!7695726))

(declare-fun m!7695728 () Bool)

(assert (=> b!7001420 m!7695728))

(assert (=> b!7001420 m!7695722))

(declare-fun m!7695730 () Bool)

(assert (=> b!7001420 m!7695730))

(declare-fun m!7695732 () Bool)

(assert (=> b!7001420 m!7695732))

(declare-fun m!7695734 () Bool)

(assert (=> b!7001427 m!7695734))

(declare-fun m!7695736 () Bool)

(assert (=> b!7001427 m!7695736))

(declare-fun m!7695738 () Bool)

(assert (=> b!7001427 m!7695738))

(declare-fun m!7695740 () Bool)

(assert (=> b!7001427 m!7695740))

(declare-fun m!7695742 () Bool)

(assert (=> b!7001427 m!7695742))

(declare-fun m!7695744 () Bool)

(assert (=> b!7001413 m!7695744))

(declare-fun m!7695746 () Bool)

(assert (=> b!7001433 m!7695746))

(assert (=> b!7001433 m!7695722))

(assert (=> b!7001433 m!7695722))

(assert (=> b!7001433 m!7695732))

(declare-fun m!7695748 () Bool)

(assert (=> b!7001433 m!7695748))

(assert (=> b!7001436 m!7695744))

(declare-fun m!7695750 () Bool)

(assert (=> b!7001412 m!7695750))

(declare-fun m!7695752 () Bool)

(assert (=> b!7001414 m!7695752))

(assert (=> b!7001414 m!7695722))

(declare-fun m!7695754 () Bool)

(assert (=> b!7001422 m!7695754))

(declare-fun m!7695756 () Bool)

(assert (=> b!7001422 m!7695756))

(declare-fun m!7695758 () Bool)

(assert (=> b!7001441 m!7695758))

(declare-fun m!7695760 () Bool)

(assert (=> b!7001441 m!7695760))

(declare-fun m!7695762 () Bool)

(assert (=> b!7001438 m!7695762))

(assert (=> b!7001438 m!7695722))

(declare-fun m!7695764 () Bool)

(assert (=> b!7001411 m!7695764))

(declare-fun m!7695766 () Bool)

(assert (=> b!7001411 m!7695766))

(declare-fun m!7695768 () Bool)

(assert (=> b!7001411 m!7695768))

(declare-fun m!7695770 () Bool)

(assert (=> b!7001411 m!7695770))

(declare-fun m!7695772 () Bool)

(assert (=> b!7001411 m!7695772))

(declare-fun m!7695774 () Bool)

(assert (=> b!7001411 m!7695774))

(declare-fun m!7695776 () Bool)

(assert (=> b!7001424 m!7695776))

(declare-fun m!7695778 () Bool)

(assert (=> b!7001424 m!7695778))

(declare-fun m!7695780 () Bool)

(assert (=> b!7001424 m!7695780))

(declare-fun m!7695782 () Bool)

(assert (=> b!7001424 m!7695782))

(declare-fun m!7695784 () Bool)

(assert (=> b!7001424 m!7695784))

(declare-fun m!7695786 () Bool)

(assert (=> b!7001424 m!7695786))

(declare-fun m!7695788 () Bool)

(assert (=> b!7001434 m!7695788))

(assert (=> b!7001416 m!7695722))

(declare-fun m!7695790 () Bool)

(assert (=> b!7001416 m!7695790))

(declare-fun m!7695792 () Bool)

(assert (=> b!7001416 m!7695792))

(assert (=> b!7001416 m!7695722))

(declare-fun m!7695794 () Bool)

(assert (=> b!7001416 m!7695794))

(declare-fun m!7695796 () Bool)

(assert (=> b!7001416 m!7695796))

(assert (=> b!7001416 m!7695722))

(declare-fun m!7695798 () Bool)

(assert (=> b!7001426 m!7695798))

(declare-fun m!7695800 () Bool)

(assert (=> b!7001435 m!7695800))

(declare-fun m!7695802 () Bool)

(assert (=> b!7001435 m!7695802))

(assert (=> b!7001435 m!7695756))

(declare-fun m!7695804 () Bool)

(assert (=> b!7001435 m!7695804))

(assert (=> b!7001421 m!7695752))

(assert (=> b!7001421 m!7695722))

(declare-fun m!7695806 () Bool)

(assert (=> b!7001437 m!7695806))

(declare-fun m!7695808 () Bool)

(assert (=> b!7001437 m!7695808))

(assert (=> b!7001419 m!7695752))

(declare-fun m!7695810 () Bool)

(assert (=> b!7001415 m!7695810))

(declare-fun m!7695812 () Bool)

(assert (=> b!7001415 m!7695812))

(assert (=> b!7001415 m!7695722))

(declare-fun m!7695814 () Bool)

(assert (=> b!7001415 m!7695814))

(declare-fun m!7695816 () Bool)

(assert (=> b!7001415 m!7695816))

(declare-fun m!7695818 () Bool)

(assert (=> b!7001415 m!7695818))

(assert (=> b!7001415 m!7695758))

(declare-fun m!7695820 () Bool)

(assert (=> b!7001415 m!7695820))

(assert (=> b!7001415 m!7695746))

(assert (=> b!7001415 m!7695722))

(assert (=> b!7001415 m!7695722))

(declare-fun m!7695822 () Bool)

(assert (=> b!7001415 m!7695822))

(declare-fun m!7695824 () Bool)

(assert (=> b!7001415 m!7695824))

(declare-fun m!7695826 () Bool)

(assert (=> b!7001415 m!7695826))

(declare-fun m!7695828 () Bool)

(assert (=> b!7001415 m!7695828))

(assert (=> b!7001415 m!7695722))

(declare-fun m!7695830 () Bool)

(assert (=> b!7001415 m!7695830))

(declare-fun m!7695832 () Bool)

(assert (=> b!7001417 m!7695832))

(declare-fun m!7695834 () Bool)

(assert (=> setNonEmpty!48117 m!7695834))

(declare-fun m!7695836 () Bool)

(assert (=> b!7001430 m!7695836))

(declare-fun m!7695838 () Bool)

(assert (=> b!7001439 m!7695838))

(declare-fun m!7695840 () Bool)

(assert (=> b!7001439 m!7695840))

(declare-fun m!7695842 () Bool)

(assert (=> b!7001439 m!7695842))

(declare-fun m!7695844 () Bool)

(assert (=> b!7001439 m!7695844))

(declare-fun m!7695846 () Bool)

(assert (=> b!7001439 m!7695846))

(declare-fun m!7695848 () Bool)

(assert (=> b!7001418 m!7695848))

(declare-fun m!7695850 () Bool)

(assert (=> b!7001418 m!7695850))

(assert (=> b!7001418 m!7695756))

(declare-fun m!7695852 () Bool)

(assert (=> b!7001418 m!7695852))

(declare-fun m!7695854 () Bool)

(assert (=> b!7001418 m!7695854))

(declare-fun m!7695856 () Bool)

(assert (=> start!673648 m!7695856))

(declare-fun m!7695858 () Bool)

(assert (=> start!673648 m!7695858))

(declare-fun m!7695860 () Bool)

(assert (=> start!673648 m!7695860))

(check-sat (not b!7001437) (not b!7001433) (not b!7001428) tp_is_empty!43767 (not b!7001411) (not b!7001419) (not b!7001420) (not b!7001417) (not b!7001412) (not b!7001416) (not b!7001413) (not start!673648) (not b!7001434) (not b!7001438) (not b!7001414) (not b!7001418) (not setNonEmpty!48117) (not b!7001439) (not b!7001422) (not b!7001430) (not b!7001436) (not b!7001441) (not b!7001429) (not b!7001421) (not b!7001435) (not b!7001431) (not b!7001425) (not b!7001427) (not b!7001424) (not b!7001415))
(check-sat)
