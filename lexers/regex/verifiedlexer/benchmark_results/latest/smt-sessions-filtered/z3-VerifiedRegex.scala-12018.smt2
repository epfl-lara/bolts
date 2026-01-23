; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!674094 () Bool)

(assert start!674094)

(declare-fun b!7004196 () Bool)

(assert (=> b!7004196 true))

(declare-fun b!7004199 () Bool)

(assert (=> b!7004199 true))

(declare-fun b!7004205 () Bool)

(assert (=> b!7004205 true))

(declare-fun bs!1865189 () Bool)

(declare-fun b!7004203 () Bool)

(assert (= bs!1865189 (and b!7004203 b!7004196)))

(declare-fun lambda!406360 () Int)

(declare-fun lambda!406356 () Int)

(assert (=> bs!1865189 (not (= lambda!406360 lambda!406356))))

(declare-fun b!7004178 () Bool)

(declare-fun res!2857526 () Bool)

(declare-fun e!4210079 () Bool)

(assert (=> b!7004178 (=> res!2857526 e!4210079)))

(declare-datatypes ((C!34836 0))(
  ( (C!34837 (val!27120 Int)) )
))
(declare-datatypes ((Regex!17283 0))(
  ( (ElementMatch!17283 (c!1300521 C!34836)) (Concat!26128 (regOne!35078 Regex!17283) (regTwo!35078 Regex!17283)) (EmptyExpr!17283) (Star!17283 (reg!17612 Regex!17283)) (EmptyLang!17283) (Union!17283 (regOne!35079 Regex!17283) (regTwo!35079 Regex!17283)) )
))
(declare-datatypes ((List!67394 0))(
  ( (Nil!67270) (Cons!67270 (h!73718 Regex!17283) (t!381147 List!67394)) )
))
(declare-datatypes ((Context!12558 0))(
  ( (Context!12559 (exprs!6779 List!67394)) )
))
(declare-fun lt!2499033 () Context!12558)

(declare-fun lt!2499050 () Int)

(declare-datatypes ((List!67395 0))(
  ( (Nil!67271) (Cons!67271 (h!73719 Context!12558) (t!381148 List!67395)) )
))
(declare-fun zipperDepthTotal!504 (List!67395) Int)

(assert (=> b!7004178 (= res!2857526 (>= (zipperDepthTotal!504 (Cons!67271 lt!2499033 Nil!67271)) lt!2499050))))

(declare-fun b!7004179 () Bool)

(declare-fun res!2857524 () Bool)

(declare-fun e!4210075 () Bool)

(assert (=> b!7004179 (=> res!2857524 e!4210075)))

(declare-fun lt!2499010 () Context!12558)

(get-info :version)

(assert (=> b!7004179 (= res!2857524 (not ((_ is Cons!67270) (exprs!6779 lt!2499010))))))

(declare-fun e!4210093 () Bool)

(declare-fun setRes!48177 () Bool)

(declare-fun tp!1931471 () Bool)

(declare-fun setNonEmpty!48177 () Bool)

(declare-fun setElem!48177 () Context!12558)

(declare-fun inv!86066 (Context!12558) Bool)

(assert (=> setNonEmpty!48177 (= setRes!48177 (and tp!1931471 (inv!86066 setElem!48177) e!4210093))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12558))

(declare-fun setRest!48177 () (InoxSet Context!12558))

(assert (=> setNonEmpty!48177 (= z1!570 ((_ map or) (store ((as const (Array Context!12558 Bool)) false) setElem!48177 true) setRest!48177))))

(declare-fun b!7004180 () Bool)

(declare-fun res!2857543 () Bool)

(declare-fun e!4210089 () Bool)

(assert (=> b!7004180 (=> res!2857543 e!4210089)))

(declare-fun lt!2499062 () Context!12558)

(declare-fun lt!2499048 () (InoxSet Context!12558))

(assert (=> b!7004180 (= res!2857543 (not (select lt!2499048 lt!2499062)))))

(declare-fun b!7004181 () Bool)

(declare-fun e!4210080 () Bool)

(declare-fun tp!1931474 () Bool)

(assert (=> b!7004181 (= e!4210080 tp!1931474)))

(declare-fun b!7004182 () Bool)

(declare-fun res!2857523 () Bool)

(assert (=> b!7004182 (=> res!2857523 e!4210075)))

(declare-fun isEmpty!39285 (List!67394) Bool)

(assert (=> b!7004182 (= res!2857523 (isEmpty!39285 (exprs!6779 lt!2499010)))))

(declare-fun b!7004183 () Bool)

(declare-fun e!4210077 () Bool)

(assert (=> b!7004183 (= e!4210077 e!4210079)))

(declare-fun res!2857532 () Bool)

(assert (=> b!7004183 (=> res!2857532 e!4210079)))

(declare-fun lt!2499012 () Int)

(declare-fun contextDepthTotal!476 (Context!12558) Int)

(assert (=> b!7004183 (= res!2857532 (<= lt!2499012 (contextDepthTotal!476 lt!2499033)))))

(assert (=> b!7004183 (<= lt!2499012 lt!2499050)))

(declare-fun lt!2499032 () List!67395)

(assert (=> b!7004183 (= lt!2499050 (zipperDepthTotal!504 lt!2499032))))

(assert (=> b!7004183 (= lt!2499012 (contextDepthTotal!476 lt!2499010))))

(declare-datatypes ((Unit!161228 0))(
  ( (Unit!161229) )
))
(declare-fun lt!2499061 () Unit!161228)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!44 (List!67395 Context!12558) Unit!161228)

(assert (=> b!7004183 (= lt!2499061 (lemmaTotalDepthZipperLargerThanOfAnyContext!44 lt!2499032 lt!2499010))))

(declare-fun toList!10643 ((InoxSet Context!12558)) List!67395)

(assert (=> b!7004183 (= lt!2499032 (toList!10643 z1!570))))

(declare-fun lambda!406358 () Int)

(declare-fun lt!2499041 () List!67394)

(declare-fun ct2!306 () Context!12558)

(declare-fun lt!2499039 () Unit!161228)

(declare-fun lemmaConcatPreservesForall!619 (List!67394 List!67394 Int) Unit!161228)

(assert (=> b!7004183 (= lt!2499039 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun lt!2499029 () Unit!161228)

(assert (=> b!7004183 (= lt!2499029 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun lt!2499073 () Unit!161228)

(assert (=> b!7004183 (= lt!2499073 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun lt!2499056 () (InoxSet Context!12558))

(declare-datatypes ((List!67396 0))(
  ( (Nil!67272) (Cons!67272 (h!73720 C!34836) (t!381149 List!67396)) )
))
(declare-fun s!7408 () List!67396)

(declare-fun lambda!406359 () Int)

(declare-fun flatMap!2269 ((InoxSet Context!12558) Int) (InoxSet Context!12558))

(declare-fun derivationStepZipperUp!1933 (Context!12558 C!34836) (InoxSet Context!12558))

(assert (=> b!7004183 (= (flatMap!2269 lt!2499056 lambda!406359) (derivationStepZipperUp!1933 lt!2499033 (h!73720 s!7408)))))

(declare-fun lt!2499027 () Unit!161228)

(declare-fun lemmaFlatMapOnSingletonSet!1784 ((InoxSet Context!12558) Context!12558 Int) Unit!161228)

(assert (=> b!7004183 (= lt!2499027 (lemmaFlatMapOnSingletonSet!1784 lt!2499056 lt!2499033 lambda!406359))))

(declare-fun lambda!406357 () Int)

(declare-fun map!15571 ((InoxSet Context!12558) Int) (InoxSet Context!12558))

(declare-fun ++!15267 (List!67394 List!67394) List!67394)

(assert (=> b!7004183 (= (map!15571 lt!2499056 lambda!406357) (store ((as const (Array Context!12558 Bool)) false) (Context!12559 (++!15267 lt!2499041 (exprs!6779 ct2!306))) true))))

(declare-fun lt!2499018 () Unit!161228)

(assert (=> b!7004183 (= lt!2499018 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun lt!2499045 () Unit!161228)

(declare-fun lemmaMapOnSingletonSet!348 ((InoxSet Context!12558) Context!12558 Int) Unit!161228)

(assert (=> b!7004183 (= lt!2499045 (lemmaMapOnSingletonSet!348 lt!2499056 lt!2499033 lambda!406357))))

(assert (=> b!7004183 (= lt!2499056 (store ((as const (Array Context!12558 Bool)) false) lt!2499033 true))))

(declare-fun b!7004184 () Bool)

(declare-fun e!4210083 () Bool)

(assert (=> b!7004184 (= e!4210075 e!4210083)))

(declare-fun res!2857522 () Bool)

(assert (=> b!7004184 (=> res!2857522 e!4210083)))

(declare-fun nullable!7043 (Regex!17283) Bool)

(assert (=> b!7004184 (= res!2857522 (not (nullable!7043 (h!73718 (exprs!6779 lt!2499010)))))))

(assert (=> b!7004184 (= lt!2499033 (Context!12559 lt!2499041))))

(declare-fun tail!13334 (List!67394) List!67394)

(assert (=> b!7004184 (= lt!2499041 (tail!13334 (exprs!6779 lt!2499010)))))

(declare-fun lt!2499054 () (InoxSet Context!12558))

(declare-fun c!1300520 () Bool)

(declare-fun lt!2499028 () (InoxSet Context!12558))

(declare-datatypes ((tuple2!67912 0))(
  ( (tuple2!67913 (_1!37259 List!67396) (_2!37259 List!67396)) )
))
(declare-fun lt!2499031 () tuple2!67912)

(declare-fun call!635986 () Unit!161228)

(declare-fun bm!635979 () Bool)

(declare-fun lt!2499053 () (InoxSet Context!12558))

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!6 ((InoxSet Context!12558) (InoxSet Context!12558) List!67396 List!67396 List!67396 List!67396 List!67396) Unit!161228)

(assert (=> bm!635979 (= call!635986 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!6 (ite c!1300520 lt!2499053 lt!2499028) lt!2499054 (_1!37259 lt!2499031) (_2!37259 lt!2499031) s!7408 Nil!67272 s!7408))))

(declare-fun b!7004185 () Bool)

(declare-fun e!4210088 () Bool)

(declare-fun e!4210092 () Bool)

(assert (=> b!7004185 (= e!4210088 e!4210092)))

(declare-fun res!2857527 () Bool)

(assert (=> b!7004185 (=> res!2857527 e!4210092)))

(declare-fun e!4210090 () Bool)

(assert (=> b!7004185 (= res!2857527 e!4210090)))

(declare-fun res!2857529 () Bool)

(assert (=> b!7004185 (=> (not res!2857529) (not e!4210090))))

(declare-fun lt!2499071 () Bool)

(declare-fun lt!2499049 () Bool)

(assert (=> b!7004185 (= res!2857529 (not (= lt!2499071 lt!2499049)))))

(declare-fun lt!2499023 () (InoxSet Context!12558))

(declare-fun matchZipper!2823 ((InoxSet Context!12558) List!67396) Bool)

(assert (=> b!7004185 (= lt!2499071 (matchZipper!2823 lt!2499023 (t!381149 s!7408)))))

(declare-fun lt!2499069 () Unit!161228)

(assert (=> b!7004185 (= lt!2499069 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun lt!2499051 () (InoxSet Context!12558))

(declare-fun e!4210076 () Bool)

(assert (=> b!7004185 (= (matchZipper!2823 lt!2499051 (t!381149 s!7408)) e!4210076)))

(declare-fun res!2857534 () Bool)

(assert (=> b!7004185 (=> res!2857534 e!4210076)))

(assert (=> b!7004185 (= res!2857534 lt!2499049)))

(declare-fun lt!2499026 () (InoxSet Context!12558))

(assert (=> b!7004185 (= lt!2499049 (matchZipper!2823 lt!2499026 (t!381149 s!7408)))))

(declare-fun lt!2499072 () Unit!161228)

(declare-fun lt!2499016 () (InoxSet Context!12558))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1456 ((InoxSet Context!12558) (InoxSet Context!12558) List!67396) Unit!161228)

(assert (=> b!7004185 (= lt!2499072 (lemmaZipperConcatMatchesSameAsBothZippers!1456 lt!2499026 lt!2499016 (t!381149 s!7408)))))

(declare-fun lt!2499070 () Unit!161228)

(assert (=> b!7004185 (= lt!2499070 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun lt!2499058 () Unit!161228)

(assert (=> b!7004185 (= lt!2499058 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun b!7004186 () Bool)

(declare-fun e!4210086 () Bool)

(assert (=> b!7004186 (= e!4210086 e!4210077)))

(declare-fun res!2857521 () Bool)

(assert (=> b!7004186 (=> res!2857521 e!4210077)))

(declare-fun lt!2499017 () (InoxSet Context!12558))

(assert (=> b!7004186 (= res!2857521 (not (matchZipper!2823 lt!2499017 s!7408)))))

(declare-fun lt!2499024 () Unit!161228)

(assert (=> b!7004186 (= lt!2499024 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun b!7004187 () Bool)

(declare-fun e!4210081 () Bool)

(assert (=> b!7004187 (= e!4210081 e!4210086)))

(declare-fun res!2857538 () Bool)

(assert (=> b!7004187 (=> res!2857538 e!4210086)))

(declare-fun derivationStepZipper!2763 ((InoxSet Context!12558) C!34836) (InoxSet Context!12558))

(assert (=> b!7004187 (= res!2857538 (not (= (derivationStepZipper!2763 lt!2499017 (h!73720 s!7408)) lt!2499016)))))

(declare-fun lt!2499034 () Unit!161228)

(assert (=> b!7004187 (= lt!2499034 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun lt!2499059 () Unit!161228)

(assert (=> b!7004187 (= lt!2499059 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun lt!2499052 () Context!12558)

(assert (=> b!7004187 (= (flatMap!2269 lt!2499017 lambda!406359) (derivationStepZipperUp!1933 lt!2499052 (h!73720 s!7408)))))

(declare-fun lt!2499043 () Unit!161228)

(assert (=> b!7004187 (= lt!2499043 (lemmaFlatMapOnSingletonSet!1784 lt!2499017 lt!2499052 lambda!406359))))

(assert (=> b!7004187 (= lt!2499017 (store ((as const (Array Context!12558 Bool)) false) lt!2499052 true))))

(declare-fun lt!2499060 () Unit!161228)

(assert (=> b!7004187 (= lt!2499060 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun lt!2499022 () Unit!161228)

(assert (=> b!7004187 (= lt!2499022 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun b!7004177 () Bool)

(declare-fun res!2857536 () Bool)

(declare-fun e!4210082 () Bool)

(assert (=> b!7004177 (=> res!2857536 e!4210082)))

(declare-fun ++!15268 (List!67396 List!67396) List!67396)

(assert (=> b!7004177 (= res!2857536 (not (= (++!15268 (_1!37259 lt!2499031) (_2!37259 lt!2499031)) s!7408)))))

(declare-fun res!2857539 () Bool)

(declare-fun e!4210078 () Bool)

(assert (=> start!674094 (=> (not res!2857539) (not e!4210078))))

(assert (=> start!674094 (= res!2857539 (matchZipper!2823 lt!2499048 s!7408))))

(declare-fun appendTo!404 ((InoxSet Context!12558) Context!12558) (InoxSet Context!12558))

(assert (=> start!674094 (= lt!2499048 (appendTo!404 z1!570 ct2!306))))

(assert (=> start!674094 e!4210078))

(declare-fun condSetEmpty!48177 () Bool)

(assert (=> start!674094 (= condSetEmpty!48177 (= z1!570 ((as const (Array Context!12558 Bool)) false)))))

(assert (=> start!674094 setRes!48177))

(assert (=> start!674094 (and (inv!86066 ct2!306) e!4210080)))

(declare-fun e!4210094 () Bool)

(assert (=> start!674094 e!4210094))

(declare-fun b!7004188 () Bool)

(declare-fun res!2857528 () Bool)

(assert (=> b!7004188 (=> (not res!2857528) (not e!4210078))))

(assert (=> b!7004188 (= res!2857528 ((_ is Cons!67272) s!7408))))

(declare-fun b!7004189 () Bool)

(declare-fun res!2857542 () Bool)

(assert (=> b!7004189 (=> res!2857542 e!4210082)))

(assert (=> b!7004189 (= res!2857542 (not (matchZipper!2823 lt!2499054 (_2!37259 lt!2499031))))))

(declare-fun b!7004190 () Bool)

(declare-fun e!4210084 () Unit!161228)

(declare-fun Unit!161230 () Unit!161228)

(assert (=> b!7004190 (= e!4210084 Unit!161230)))

(assert (=> b!7004190 (= lt!2499028 (store ((as const (Array Context!12558 Bool)) false) lt!2499010 true))))

(declare-fun lt!2499020 () Unit!161228)

(assert (=> b!7004190 (= lt!2499020 (lemmaFlatMapOnSingletonSet!1784 lt!2499028 lt!2499010 lambda!406359))))

(assert (=> b!7004190 (= (flatMap!2269 lt!2499028 lambda!406359) (derivationStepZipperUp!1933 lt!2499010 (h!73720 s!7408)))))

(declare-fun lt!2499067 () (InoxSet Context!12558))

(declare-fun derivationStepZipperDown!2001 (Regex!17283 Context!12558 C!34836) (InoxSet Context!12558))

(assert (=> b!7004190 (= lt!2499067 (derivationStepZipperDown!2001 (h!73718 (exprs!6779 lt!2499010)) lt!2499033 (h!73720 s!7408)))))

(declare-fun lt!2499013 () (InoxSet Context!12558))

(assert (=> b!7004190 (= lt!2499013 (derivationStepZipperUp!1933 lt!2499033 (h!73720 s!7408)))))

(declare-fun lt!2499025 () List!67396)

(declare-fun tail!13335 (List!67396) List!67396)

(assert (=> b!7004190 (= lt!2499025 (tail!13335 (_1!37259 lt!2499031)))))

(declare-fun lt!2499030 () Unit!161228)

(assert (=> b!7004190 (= lt!2499030 (lemmaZipperConcatMatchesSameAsBothZippers!1456 lt!2499067 lt!2499013 lt!2499025))))

(declare-fun res!2857537 () Bool)

(assert (=> b!7004190 (= res!2857537 (matchZipper!2823 lt!2499067 lt!2499025))))

(declare-fun e!4210087 () Bool)

(assert (=> b!7004190 (=> res!2857537 e!4210087)))

(assert (=> b!7004190 (= (matchZipper!2823 ((_ map or) lt!2499067 lt!2499013) lt!2499025) e!4210087)))

(declare-fun lt!2499064 () Unit!161228)

(assert (=> b!7004190 (= lt!2499064 (lemmaFlatMapOnSingletonSet!1784 lt!2499056 lt!2499033 lambda!406359))))

(assert (=> b!7004190 (= (flatMap!2269 lt!2499056 lambda!406359) (derivationStepZipperUp!1933 lt!2499033 (h!73720 s!7408)))))

(declare-fun lt!2499046 () Unit!161228)

(assert (=> b!7004190 (= lt!2499046 call!635986)))

(declare-fun call!635984 () Bool)

(assert (=> b!7004190 call!635984))

(declare-fun b!7004191 () Bool)

(assert (=> b!7004191 (= e!4210087 (matchZipper!2823 lt!2499013 lt!2499025))))

(declare-fun b!7004192 () Bool)

(assert (=> b!7004192 (= e!4210076 (matchZipper!2823 lt!2499016 (t!381149 s!7408)))))

(declare-fun setIsEmpty!48177 () Bool)

(assert (=> setIsEmpty!48177 setRes!48177))

(declare-fun b!7004193 () Bool)

(assert (=> b!7004193 (= e!4210083 e!4210088)))

(declare-fun res!2857540 () Bool)

(assert (=> b!7004193 (=> res!2857540 e!4210088)))

(assert (=> b!7004193 (= res!2857540 (not (= lt!2499023 lt!2499051)))))

(assert (=> b!7004193 (= lt!2499051 ((_ map or) lt!2499026 lt!2499016))))

(assert (=> b!7004193 (= lt!2499016 (derivationStepZipperUp!1933 lt!2499052 (h!73720 s!7408)))))

(assert (=> b!7004193 (= lt!2499026 (derivationStepZipperDown!2001 (h!73718 (exprs!6779 lt!2499010)) lt!2499052 (h!73720 s!7408)))))

(assert (=> b!7004193 (= lt!2499052 (Context!12559 (++!15267 lt!2499041 (exprs!6779 ct2!306))))))

(declare-fun lt!2499038 () Unit!161228)

(assert (=> b!7004193 (= lt!2499038 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun lt!2499019 () Unit!161228)

(assert (=> b!7004193 (= lt!2499019 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun b!7004194 () Bool)

(declare-fun e!4210091 () Bool)

(declare-fun e!4210085 () Bool)

(assert (=> b!7004194 (= e!4210091 e!4210085)))

(declare-fun res!2857533 () Bool)

(assert (=> b!7004194 (=> res!2857533 e!4210085)))

(declare-fun lt!2499063 () (InoxSet Context!12558))

(declare-fun lt!2499055 () (InoxSet Context!12558))

(assert (=> b!7004194 (= res!2857533 (not (= lt!2499063 lt!2499055)))))

(declare-fun lt!2499035 () Context!12558)

(assert (=> b!7004194 (= lt!2499063 (store ((as const (Array Context!12558 Bool)) false) lt!2499035 true))))

(declare-fun lt!2499015 () Unit!161228)

(assert (=> b!7004194 (= lt!2499015 (lemmaConcatPreservesForall!619 (exprs!6779 lt!2499010) (exprs!6779 ct2!306) lambda!406358))))

(declare-fun b!7004195 () Bool)

(declare-fun res!2857531 () Bool)

(assert (=> b!7004195 (=> res!2857531 e!4210092)))

(assert (=> b!7004195 (= res!2857531 (not lt!2499071))))

(assert (=> b!7004196 (= e!4210078 (not e!4210089))))

(declare-fun res!2857530 () Bool)

(assert (=> b!7004196 (=> res!2857530 e!4210089)))

(assert (=> b!7004196 (= res!2857530 (not (matchZipper!2823 lt!2499055 s!7408)))))

(assert (=> b!7004196 (= lt!2499055 (store ((as const (Array Context!12558 Bool)) false) lt!2499062 true))))

(declare-fun getWitness!1209 ((InoxSet Context!12558) Int) Context!12558)

(assert (=> b!7004196 (= lt!2499062 (getWitness!1209 lt!2499048 lambda!406356))))

(declare-fun lt!2499014 () List!67395)

(declare-fun exists!3106 (List!67395 Int) Bool)

(assert (=> b!7004196 (exists!3106 lt!2499014 lambda!406356)))

(declare-fun lt!2499009 () Unit!161228)

(declare-fun lemmaZipperMatchesExistsMatchingContext!252 (List!67395 List!67396) Unit!161228)

(assert (=> b!7004196 (= lt!2499009 (lemmaZipperMatchesExistsMatchingContext!252 lt!2499014 s!7408))))

(assert (=> b!7004196 (= lt!2499014 (toList!10643 lt!2499048))))

(declare-fun b!7004197 () Bool)

(assert (=> b!7004197 (= e!4210079 e!4210082)))

(declare-fun res!2857541 () Bool)

(assert (=> b!7004197 (=> res!2857541 e!4210082)))

(assert (=> b!7004197 (= res!2857541 (not (matchZipper!2823 lt!2499056 (_1!37259 lt!2499031))))))

(declare-datatypes ((Option!16788 0))(
  ( (None!16787) (Some!16787 (v!53065 tuple2!67912)) )
))
(declare-fun lt!2499047 () Option!16788)

(declare-fun get!23594 (Option!16788) tuple2!67912)

(assert (=> b!7004197 (= lt!2499031 (get!23594 lt!2499047))))

(declare-fun isDefined!13489 (Option!16788) Bool)

(assert (=> b!7004197 (isDefined!13489 lt!2499047)))

(declare-fun findConcatSeparationZippers!304 ((InoxSet Context!12558) (InoxSet Context!12558) List!67396 List!67396 List!67396) Option!16788)

(assert (=> b!7004197 (= lt!2499047 (findConcatSeparationZippers!304 lt!2499056 lt!2499054 Nil!67272 s!7408 s!7408))))

(assert (=> b!7004197 (= lt!2499054 (store ((as const (Array Context!12558 Bool)) false) ct2!306 true))))

(declare-fun lt!2499011 () Unit!161228)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!304 ((InoxSet Context!12558) Context!12558 List!67396) Unit!161228)

(assert (=> b!7004197 (= lt!2499011 (lemmaConcatZipperMatchesStringThenFindConcatDefined!304 lt!2499056 ct2!306 s!7408))))

(declare-fun b!7004198 () Bool)

(declare-fun tp_is_empty!43791 () Bool)

(declare-fun tp!1931472 () Bool)

(assert (=> b!7004198 (= e!4210094 (and tp_is_empty!43791 tp!1931472))))

(assert (=> b!7004199 (= e!4210089 e!4210091)))

(declare-fun res!2857544 () Bool)

(assert (=> b!7004199 (=> res!2857544 e!4210091)))

(assert (=> b!7004199 (= res!2857544 (or (not (= lt!2499035 lt!2499062)) (not (select z1!570 lt!2499010))))))

(assert (=> b!7004199 (= lt!2499035 (Context!12559 (++!15267 (exprs!6779 lt!2499010) (exprs!6779 ct2!306))))))

(declare-fun lt!2499040 () Unit!161228)

(assert (=> b!7004199 (= lt!2499040 (lemmaConcatPreservesForall!619 (exprs!6779 lt!2499010) (exprs!6779 ct2!306) lambda!406358))))

(declare-fun mapPost2!138 ((InoxSet Context!12558) Int Context!12558) Context!12558)

(assert (=> b!7004199 (= lt!2499010 (mapPost2!138 z1!570 lambda!406357 lt!2499062))))

(declare-fun b!7004200 () Bool)

(assert (=> b!7004200 (= e!4210090 (not (matchZipper!2823 lt!2499016 (t!381149 s!7408))))))

(declare-fun lt!2499068 () Unit!161228)

(assert (=> b!7004200 (= lt!2499068 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun b!7004201 () Bool)

(declare-fun tp!1931473 () Bool)

(assert (=> b!7004201 (= e!4210093 tp!1931473)))

(declare-fun b!7004202 () Bool)

(assert (=> b!7004202 (= e!4210092 e!4210081)))

(declare-fun res!2857525 () Bool)

(assert (=> b!7004202 (=> res!2857525 e!4210081)))

(assert (=> b!7004202 (= res!2857525 (not (matchZipper!2823 lt!2499016 (t!381149 s!7408))))))

(declare-fun lt!2499036 () Unit!161228)

(assert (=> b!7004202 (= lt!2499036 (lemmaConcatPreservesForall!619 lt!2499041 (exprs!6779 ct2!306) lambda!406358))))

(declare-fun Unit!161231 () Unit!161228)

(assert (=> b!7004203 (= e!4210084 Unit!161231)))

(declare-fun lt!2499057 () Context!12558)

(assert (=> b!7004203 (= lt!2499057 (getWitness!1209 lt!2499056 lambda!406360))))

(declare-fun lt!2499074 () Unit!161228)

(declare-fun lemmaContainsThenExists!87 ((InoxSet Context!12558) Context!12558 Int) Unit!161228)

(assert (=> b!7004203 (= lt!2499074 (lemmaContainsThenExists!87 lt!2499056 lt!2499033 lambda!406360))))

(declare-fun exists!3107 ((InoxSet Context!12558) Int) Bool)

(assert (=> b!7004203 (exists!3107 lt!2499056 lambda!406360)))

(assert (=> b!7004203 (= lt!2499053 (store ((as const (Array Context!12558 Bool)) false) lt!2499010 true))))

(declare-fun lt!2499066 () Unit!161228)

(assert (=> b!7004203 (= lt!2499066 (lemmaContainsThenExists!87 lt!2499053 lt!2499010 lambda!406360))))

(assert (=> b!7004203 (exists!3107 lt!2499053 lambda!406360)))

(declare-fun lt!2499065 () Unit!161228)

(assert (=> b!7004203 (= lt!2499065 call!635986)))

(assert (=> b!7004203 call!635984))

(declare-fun bm!635980 () Bool)

(declare-fun call!635985 () Option!16788)

(assert (=> bm!635980 (= call!635984 (isDefined!13489 call!635985))))

(declare-fun bm!635981 () Bool)

(assert (=> bm!635981 (= call!635985 (findConcatSeparationZippers!304 (ite c!1300520 lt!2499053 lt!2499028) lt!2499054 Nil!67272 s!7408 s!7408))))

(declare-fun b!7004204 () Bool)

(assert (=> b!7004204 (= e!4210082 true)))

(declare-fun lt!2499044 () Bool)

(assert (=> b!7004204 (= lt!2499044 (matchZipper!2823 (store ((as const (Array Context!12558 Bool)) false) lt!2499010 true) (_1!37259 (get!23594 (findConcatSeparationZippers!304 (store ((as const (Array Context!12558 Bool)) false) (Context!12559 (tail!13334 (exprs!6779 (mapPost2!138 z1!570 lambda!406357 lt!2499062)))) true) lt!2499054 Nil!67272 s!7408 s!7408)))))))

(declare-fun lt!2499042 () Unit!161228)

(assert (=> b!7004204 (= lt!2499042 e!4210084)))

(declare-fun isEmpty!39286 (List!67396) Bool)

(assert (=> b!7004204 (= c!1300520 (isEmpty!39286 (_1!37259 lt!2499031)))))

(assert (=> b!7004205 (= e!4210085 e!4210075)))

(declare-fun res!2857535 () Bool)

(assert (=> b!7004205 (=> res!2857535 e!4210075)))

(assert (=> b!7004205 (= res!2857535 (not (= (derivationStepZipper!2763 lt!2499063 (h!73720 s!7408)) lt!2499023)))))

(assert (=> b!7004205 (= (flatMap!2269 lt!2499063 lambda!406359) (derivationStepZipperUp!1933 lt!2499035 (h!73720 s!7408)))))

(declare-fun lt!2499037 () Unit!161228)

(assert (=> b!7004205 (= lt!2499037 (lemmaFlatMapOnSingletonSet!1784 lt!2499063 lt!2499035 lambda!406359))))

(assert (=> b!7004205 (= lt!2499023 (derivationStepZipperUp!1933 lt!2499035 (h!73720 s!7408)))))

(declare-fun lt!2499021 () Unit!161228)

(assert (=> b!7004205 (= lt!2499021 (lemmaConcatPreservesForall!619 (exprs!6779 lt!2499010) (exprs!6779 ct2!306) lambda!406358))))

(assert (= (and start!674094 res!2857539) b!7004188))

(assert (= (and b!7004188 res!2857528) b!7004196))

(assert (= (and b!7004196 (not res!2857530)) b!7004180))

(assert (= (and b!7004180 (not res!2857543)) b!7004199))

(assert (= (and b!7004199 (not res!2857544)) b!7004194))

(assert (= (and b!7004194 (not res!2857533)) b!7004205))

(assert (= (and b!7004205 (not res!2857535)) b!7004179))

(assert (= (and b!7004179 (not res!2857524)) b!7004182))

(assert (= (and b!7004182 (not res!2857523)) b!7004184))

(assert (= (and b!7004184 (not res!2857522)) b!7004193))

(assert (= (and b!7004193 (not res!2857540)) b!7004185))

(assert (= (and b!7004185 (not res!2857534)) b!7004192))

(assert (= (and b!7004185 res!2857529) b!7004200))

(assert (= (and b!7004185 (not res!2857527)) b!7004195))

(assert (= (and b!7004195 (not res!2857531)) b!7004202))

(assert (= (and b!7004202 (not res!2857525)) b!7004187))

(assert (= (and b!7004187 (not res!2857538)) b!7004186))

(assert (= (and b!7004186 (not res!2857521)) b!7004183))

(assert (= (and b!7004183 (not res!2857532)) b!7004178))

(assert (= (and b!7004178 (not res!2857526)) b!7004197))

(assert (= (and b!7004197 (not res!2857541)) b!7004189))

(assert (= (and b!7004189 (not res!2857542)) b!7004177))

(assert (= (and b!7004177 (not res!2857536)) b!7004204))

(assert (= (and b!7004204 c!1300520) b!7004203))

(assert (= (and b!7004204 (not c!1300520)) b!7004190))

(assert (= (and b!7004190 (not res!2857537)) b!7004191))

(assert (= (or b!7004203 b!7004190) bm!635979))

(assert (= (or b!7004203 b!7004190) bm!635981))

(assert (= (or b!7004203 b!7004190) bm!635980))

(assert (= (and start!674094 condSetEmpty!48177) setIsEmpty!48177))

(assert (= (and start!674094 (not condSetEmpty!48177)) setNonEmpty!48177))

(assert (= setNonEmpty!48177 b!7004201))

(assert (= start!674094 b!7004181))

(assert (= (and start!674094 ((_ is Cons!67272) s!7408)) b!7004198))

(declare-fun m!7699920 () Bool)

(assert (=> b!7004186 m!7699920))

(declare-fun m!7699922 () Bool)

(assert (=> b!7004186 m!7699922))

(declare-fun m!7699924 () Bool)

(assert (=> b!7004191 m!7699924))

(declare-fun m!7699926 () Bool)

(assert (=> b!7004204 m!7699926))

(declare-fun m!7699928 () Bool)

(assert (=> b!7004204 m!7699928))

(declare-fun m!7699930 () Bool)

(assert (=> b!7004204 m!7699930))

(declare-fun m!7699932 () Bool)

(assert (=> b!7004204 m!7699932))

(assert (=> b!7004204 m!7699928))

(assert (=> b!7004204 m!7699930))

(declare-fun m!7699934 () Bool)

(assert (=> b!7004204 m!7699934))

(declare-fun m!7699936 () Bool)

(assert (=> b!7004204 m!7699936))

(assert (=> b!7004204 m!7699932))

(declare-fun m!7699938 () Bool)

(assert (=> b!7004204 m!7699938))

(declare-fun m!7699940 () Bool)

(assert (=> b!7004204 m!7699940))

(declare-fun m!7699942 () Bool)

(assert (=> b!7004196 m!7699942))

(declare-fun m!7699944 () Bool)

(assert (=> b!7004196 m!7699944))

(declare-fun m!7699946 () Bool)

(assert (=> b!7004196 m!7699946))

(declare-fun m!7699948 () Bool)

(assert (=> b!7004196 m!7699948))

(declare-fun m!7699950 () Bool)

(assert (=> b!7004196 m!7699950))

(declare-fun m!7699952 () Bool)

(assert (=> b!7004196 m!7699952))

(declare-fun m!7699954 () Bool)

(assert (=> b!7004177 m!7699954))

(declare-fun m!7699956 () Bool)

(assert (=> b!7004187 m!7699956))

(declare-fun m!7699958 () Bool)

(assert (=> b!7004187 m!7699958))

(assert (=> b!7004187 m!7699922))

(declare-fun m!7699960 () Bool)

(assert (=> b!7004187 m!7699960))

(declare-fun m!7699962 () Bool)

(assert (=> b!7004187 m!7699962))

(declare-fun m!7699964 () Bool)

(assert (=> b!7004187 m!7699964))

(assert (=> b!7004187 m!7699922))

(assert (=> b!7004187 m!7699922))

(assert (=> b!7004187 m!7699922))

(declare-fun m!7699966 () Bool)

(assert (=> b!7004203 m!7699966))

(declare-fun m!7699968 () Bool)

(assert (=> b!7004203 m!7699968))

(declare-fun m!7699970 () Bool)

(assert (=> b!7004203 m!7699970))

(declare-fun m!7699972 () Bool)

(assert (=> b!7004203 m!7699972))

(declare-fun m!7699974 () Bool)

(assert (=> b!7004203 m!7699974))

(assert (=> b!7004203 m!7699932))

(declare-fun m!7699976 () Bool)

(assert (=> b!7004189 m!7699976))

(declare-fun m!7699978 () Bool)

(assert (=> bm!635979 m!7699978))

(declare-fun m!7699980 () Bool)

(assert (=> b!7004178 m!7699980))

(declare-fun m!7699982 () Bool)

(assert (=> b!7004192 m!7699982))

(declare-fun m!7699984 () Bool)

(assert (=> b!7004182 m!7699984))

(declare-fun m!7699986 () Bool)

(assert (=> b!7004185 m!7699986))

(declare-fun m!7699988 () Bool)

(assert (=> b!7004185 m!7699988))

(assert (=> b!7004185 m!7699922))

(assert (=> b!7004185 m!7699922))

(assert (=> b!7004185 m!7699922))

(declare-fun m!7699990 () Bool)

(assert (=> b!7004185 m!7699990))

(declare-fun m!7699992 () Bool)

(assert (=> b!7004185 m!7699992))

(declare-fun m!7699994 () Bool)

(assert (=> start!674094 m!7699994))

(declare-fun m!7699996 () Bool)

(assert (=> start!674094 m!7699996))

(declare-fun m!7699998 () Bool)

(assert (=> start!674094 m!7699998))

(declare-fun m!7700000 () Bool)

(assert (=> b!7004190 m!7700000))

(declare-fun m!7700002 () Bool)

(assert (=> b!7004190 m!7700002))

(declare-fun m!7700004 () Bool)

(assert (=> b!7004190 m!7700004))

(declare-fun m!7700006 () Bool)

(assert (=> b!7004190 m!7700006))

(declare-fun m!7700008 () Bool)

(assert (=> b!7004190 m!7700008))

(assert (=> b!7004190 m!7699932))

(declare-fun m!7700010 () Bool)

(assert (=> b!7004190 m!7700010))

(declare-fun m!7700012 () Bool)

(assert (=> b!7004190 m!7700012))

(declare-fun m!7700014 () Bool)

(assert (=> b!7004190 m!7700014))

(declare-fun m!7700016 () Bool)

(assert (=> b!7004190 m!7700016))

(declare-fun m!7700018 () Bool)

(assert (=> b!7004190 m!7700018))

(declare-fun m!7700020 () Bool)

(assert (=> b!7004190 m!7700020))

(declare-fun m!7700022 () Bool)

(assert (=> bm!635981 m!7700022))

(declare-fun m!7700024 () Bool)

(assert (=> b!7004184 m!7700024))

(declare-fun m!7700026 () Bool)

(assert (=> b!7004184 m!7700026))

(declare-fun m!7700028 () Bool)

(assert (=> b!7004194 m!7700028))

(declare-fun m!7700030 () Bool)

(assert (=> b!7004194 m!7700030))

(assert (=> b!7004200 m!7699982))

(assert (=> b!7004200 m!7699922))

(declare-fun m!7700032 () Bool)

(assert (=> b!7004197 m!7700032))

(declare-fun m!7700034 () Bool)

(assert (=> b!7004197 m!7700034))

(declare-fun m!7700036 () Bool)

(assert (=> b!7004197 m!7700036))

(declare-fun m!7700038 () Bool)

(assert (=> b!7004197 m!7700038))

(declare-fun m!7700040 () Bool)

(assert (=> b!7004197 m!7700040))

(declare-fun m!7700042 () Bool)

(assert (=> b!7004197 m!7700042))

(declare-fun m!7700044 () Bool)

(assert (=> bm!635980 m!7700044))

(declare-fun m!7700046 () Bool)

(assert (=> b!7004205 m!7700046))

(declare-fun m!7700048 () Bool)

(assert (=> b!7004205 m!7700048))

(declare-fun m!7700050 () Bool)

(assert (=> b!7004205 m!7700050))

(assert (=> b!7004205 m!7700030))

(declare-fun m!7700052 () Bool)

(assert (=> b!7004205 m!7700052))

(assert (=> b!7004193 m!7699922))

(declare-fun m!7700054 () Bool)

(assert (=> b!7004193 m!7700054))

(declare-fun m!7700056 () Bool)

(assert (=> b!7004193 m!7700056))

(assert (=> b!7004193 m!7699922))

(assert (=> b!7004193 m!7699958))

(assert (=> b!7004202 m!7699982))

(assert (=> b!7004202 m!7699922))

(declare-fun m!7700058 () Bool)

(assert (=> setNonEmpty!48177 m!7700058))

(assert (=> b!7004183 m!7700000))

(assert (=> b!7004183 m!7700002))

(assert (=> b!7004183 m!7700056))

(declare-fun m!7700060 () Bool)

(assert (=> b!7004183 m!7700060))

(assert (=> b!7004183 m!7699922))

(declare-fun m!7700062 () Bool)

(assert (=> b!7004183 m!7700062))

(assert (=> b!7004183 m!7699922))

(declare-fun m!7700064 () Bool)

(assert (=> b!7004183 m!7700064))

(declare-fun m!7700066 () Bool)

(assert (=> b!7004183 m!7700066))

(declare-fun m!7700068 () Bool)

(assert (=> b!7004183 m!7700068))

(declare-fun m!7700070 () Bool)

(assert (=> b!7004183 m!7700070))

(assert (=> b!7004183 m!7699922))

(assert (=> b!7004183 m!7699922))

(assert (=> b!7004183 m!7700006))

(declare-fun m!7700072 () Bool)

(assert (=> b!7004183 m!7700072))

(declare-fun m!7700074 () Bool)

(assert (=> b!7004183 m!7700074))

(declare-fun m!7700076 () Bool)

(assert (=> b!7004183 m!7700076))

(declare-fun m!7700078 () Bool)

(assert (=> b!7004199 m!7700078))

(declare-fun m!7700080 () Bool)

(assert (=> b!7004199 m!7700080))

(assert (=> b!7004199 m!7700030))

(assert (=> b!7004199 m!7699940))

(declare-fun m!7700082 () Bool)

(assert (=> b!7004180 m!7700082))

(check-sat (not bm!635979) (not b!7004205) (not b!7004191) (not b!7004198) (not b!7004199) (not b!7004200) (not b!7004204) (not b!7004190) (not b!7004182) (not b!7004184) (not b!7004183) (not bm!635980) (not setNonEmpty!48177) (not b!7004197) tp_is_empty!43791 (not b!7004194) (not start!674094) (not b!7004192) (not b!7004181) (not b!7004202) (not b!7004203) (not b!7004186) (not b!7004189) (not b!7004187) (not b!7004185) (not b!7004193) (not bm!635981) (not b!7004196) (not b!7004201) (not b!7004177) (not b!7004178))
(check-sat)
