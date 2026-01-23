; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676906 () Bool)

(assert start!676906)

(declare-fun b!7019933 () Bool)

(assert (=> b!7019933 true))

(declare-fun b!7019945 () Bool)

(assert (=> b!7019945 true))

(declare-fun b!7019931 () Bool)

(assert (=> b!7019931 true))

(declare-fun e!4219810 () Bool)

(declare-fun e!4219809 () Bool)

(assert (=> b!7019931 (= e!4219810 e!4219809)))

(declare-fun res!2865348 () Bool)

(assert (=> b!7019931 (=> res!2865348 e!4219809)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35028 0))(
  ( (C!35029 (val!27216 Int)) )
))
(declare-datatypes ((Regex!17379 0))(
  ( (ElementMatch!17379 (c!1304558 C!35028)) (Concat!26224 (regOne!35270 Regex!17379) (regTwo!35270 Regex!17379)) (EmptyExpr!17379) (Star!17379 (reg!17708 Regex!17379)) (EmptyLang!17379) (Union!17379 (regOne!35271 Regex!17379) (regTwo!35271 Regex!17379)) )
))
(declare-datatypes ((List!67682 0))(
  ( (Nil!67558) (Cons!67558 (h!74006 Regex!17379) (t!381437 List!67682)) )
))
(declare-datatypes ((Context!12750 0))(
  ( (Context!12751 (exprs!6875 List!67682)) )
))
(declare-fun lt!2511107 () (InoxSet Context!12750))

(declare-fun lt!2511100 () (InoxSet Context!12750))

(declare-datatypes ((List!67683 0))(
  ( (Nil!67559) (Cons!67559 (h!74007 C!35028) (t!381438 List!67683)) )
))
(declare-fun s!7408 () List!67683)

(declare-fun derivationStepZipper!2859 ((InoxSet Context!12750) C!35028) (InoxSet Context!12750))

(assert (=> b!7019931 (= res!2865348 (not (= (derivationStepZipper!2859 lt!2511100 (h!74007 s!7408)) lt!2511107)))))

(declare-fun lt!2511096 () Context!12750)

(declare-fun lambda!411049 () Int)

(declare-fun flatMap!2365 ((InoxSet Context!12750) Int) (InoxSet Context!12750))

(declare-fun derivationStepZipperUp!2029 (Context!12750 C!35028) (InoxSet Context!12750))

(assert (=> b!7019931 (= (flatMap!2365 lt!2511100 lambda!411049) (derivationStepZipperUp!2029 lt!2511096 (h!74007 s!7408)))))

(declare-datatypes ((Unit!161440 0))(
  ( (Unit!161441) )
))
(declare-fun lt!2511101 () Unit!161440)

(declare-fun lemmaFlatMapOnSingletonSet!1880 ((InoxSet Context!12750) Context!12750 Int) Unit!161440)

(assert (=> b!7019931 (= lt!2511101 (lemmaFlatMapOnSingletonSet!1880 lt!2511100 lt!2511096 lambda!411049))))

(assert (=> b!7019931 (= lt!2511107 (derivationStepZipperUp!2029 lt!2511096 (h!74007 s!7408)))))

(declare-fun lt!2511099 () Context!12750)

(declare-fun lt!2511105 () Unit!161440)

(declare-fun ct2!306 () Context!12750)

(declare-fun lambda!411048 () Int)

(declare-fun lemmaConcatPreservesForall!715 (List!67682 List!67682 Int) Unit!161440)

(assert (=> b!7019931 (= lt!2511105 (lemmaConcatPreservesForall!715 (exprs!6875 lt!2511099) (exprs!6875 ct2!306) lambda!411048))))

(declare-fun b!7019932 () Bool)

(declare-fun e!4219812 () Bool)

(declare-fun tp!1933824 () Bool)

(assert (=> b!7019932 (= e!4219812 tp!1933824)))

(declare-fun e!4219806 () Bool)

(declare-fun e!4219807 () Bool)

(assert (=> b!7019933 (= e!4219806 (not e!4219807))))

(declare-fun res!2865358 () Bool)

(assert (=> b!7019933 (=> res!2865358 e!4219807)))

(declare-fun lt!2511098 () (InoxSet Context!12750))

(declare-fun matchZipper!2919 ((InoxSet Context!12750) List!67683) Bool)

(assert (=> b!7019933 (= res!2865358 (not (matchZipper!2919 lt!2511098 s!7408)))))

(declare-fun lt!2511102 () Context!12750)

(assert (=> b!7019933 (= lt!2511098 (store ((as const (Array Context!12750 Bool)) false) lt!2511102 true))))

(declare-fun lt!2511104 () (InoxSet Context!12750))

(declare-fun lambda!411046 () Int)

(declare-fun getWitness!1347 ((InoxSet Context!12750) Int) Context!12750)

(assert (=> b!7019933 (= lt!2511102 (getWitness!1347 lt!2511104 lambda!411046))))

(declare-datatypes ((List!67684 0))(
  ( (Nil!67560) (Cons!67560 (h!74008 Context!12750) (t!381439 List!67684)) )
))
(declare-fun lt!2511095 () List!67684)

(declare-fun exists!3258 (List!67684 Int) Bool)

(assert (=> b!7019933 (exists!3258 lt!2511095 lambda!411046)))

(declare-fun lt!2511091 () Unit!161440)

(declare-fun lemmaZipperMatchesExistsMatchingContext!348 (List!67684 List!67683) Unit!161440)

(assert (=> b!7019933 (= lt!2511091 (lemmaZipperMatchesExistsMatchingContext!348 lt!2511095 s!7408))))

(declare-fun toList!10739 ((InoxSet Context!12750)) List!67684)

(assert (=> b!7019933 (= lt!2511095 (toList!10739 lt!2511104))))

(declare-fun b!7019934 () Bool)

(declare-fun e!4219813 () Bool)

(assert (=> b!7019934 (= e!4219813 e!4219810)))

(declare-fun res!2865351 () Bool)

(assert (=> b!7019934 (=> res!2865351 e!4219810)))

(assert (=> b!7019934 (= res!2865351 (not (= lt!2511100 lt!2511098)))))

(assert (=> b!7019934 (= lt!2511100 (store ((as const (Array Context!12750 Bool)) false) lt!2511096 true))))

(declare-fun lt!2511094 () Unit!161440)

(assert (=> b!7019934 (= lt!2511094 (lemmaConcatPreservesForall!715 (exprs!6875 lt!2511099) (exprs!6875 ct2!306) lambda!411048))))

(declare-fun b!7019935 () Bool)

(declare-fun e!4219805 () Bool)

(declare-fun tp_is_empty!43983 () Bool)

(declare-fun tp!1933823 () Bool)

(assert (=> b!7019935 (= e!4219805 (and tp_is_empty!43983 tp!1933823))))

(declare-fun setIsEmpty!48654 () Bool)

(declare-fun setRes!48654 () Bool)

(assert (=> setIsEmpty!48654 setRes!48654))

(declare-fun b!7019936 () Bool)

(declare-fun res!2865355 () Bool)

(declare-fun e!4219811 () Bool)

(assert (=> b!7019936 (=> res!2865355 e!4219811)))

(declare-fun ++!15416 (List!67683 List!67683) List!67683)

(assert (=> b!7019936 (= res!2865355 (not (= (++!15416 Nil!67559 s!7408) s!7408)))))

(declare-fun b!7019937 () Bool)

(declare-fun e!4219808 () Bool)

(assert (=> b!7019937 (= e!4219808 e!4219811)))

(declare-fun res!2865353 () Bool)

(assert (=> b!7019937 (=> res!2865353 e!4219811)))

(declare-fun lt!2511106 () Bool)

(assert (=> b!7019937 (= res!2865353 (not lt!2511106))))

(assert (=> b!7019937 (= lt!2511106 true)))

(declare-fun lt!2511103 () (InoxSet Context!12750))

(assert (=> b!7019937 (= lt!2511106 (matchZipper!2919 lt!2511103 Nil!67559))))

(declare-fun lt!2511108 () Unit!161440)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!10 ((InoxSet Context!12750) List!67683) Unit!161440)

(assert (=> b!7019937 (= lt!2511108 (lemmaZipperOfEmptyContextMatchesEmptyString!10 lt!2511103 Nil!67559))))

(assert (=> b!7019937 (= lt!2511103 (store ((as const (Array Context!12750 Bool)) false) lt!2511099 true))))

(declare-fun b!7019938 () Bool)

(declare-fun res!2865350 () Bool)

(assert (=> b!7019938 (=> res!2865350 e!4219809)))

(get-info :version)

(assert (=> b!7019938 (= res!2865350 ((_ is Cons!67558) (exprs!6875 lt!2511099)))))

(declare-fun b!7019939 () Bool)

(declare-fun res!2865352 () Bool)

(assert (=> b!7019939 (=> res!2865352 e!4219807)))

(assert (=> b!7019939 (= res!2865352 (not (select lt!2511104 lt!2511102)))))

(declare-fun b!7019940 () Bool)

(assert (=> b!7019940 (= e!4219809 e!4219808)))

(declare-fun res!2865356 () Bool)

(assert (=> b!7019940 (=> res!2865356 e!4219808)))

(assert (=> b!7019940 (= res!2865356 (not (= lt!2511096 ct2!306)))))

(declare-fun lt!2511097 () Unit!161440)

(assert (=> b!7019940 (= lt!2511097 (lemmaConcatPreservesForall!715 (exprs!6875 lt!2511099) (exprs!6875 ct2!306) lambda!411048))))

(declare-fun b!7019941 () Bool)

(assert (=> b!7019941 (= e!4219811 true)))

(declare-fun lt!2511093 () Bool)

(declare-fun isPrefix!5834 (List!67683 List!67683) Bool)

(assert (=> b!7019941 (= lt!2511093 (isPrefix!5834 Nil!67559 Nil!67559))))

(declare-fun b!7019942 () Bool)

(declare-fun res!2865349 () Bool)

(assert (=> b!7019942 (=> res!2865349 e!4219808)))

(assert (=> b!7019942 (= res!2865349 (not (matchZipper!2919 (store ((as const (Array Context!12750 Bool)) false) ct2!306 true) s!7408)))))

(declare-fun res!2865354 () Bool)

(assert (=> start!676906 (=> (not res!2865354) (not e!4219806))))

(assert (=> start!676906 (= res!2865354 (matchZipper!2919 lt!2511104 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12750))

(declare-fun appendTo!500 ((InoxSet Context!12750) Context!12750) (InoxSet Context!12750))

(assert (=> start!676906 (= lt!2511104 (appendTo!500 z1!570 ct2!306))))

(assert (=> start!676906 e!4219806))

(declare-fun condSetEmpty!48654 () Bool)

(assert (=> start!676906 (= condSetEmpty!48654 (= z1!570 ((as const (Array Context!12750 Bool)) false)))))

(assert (=> start!676906 setRes!48654))

(declare-fun inv!86306 (Context!12750) Bool)

(assert (=> start!676906 (and (inv!86306 ct2!306) e!4219812)))

(assert (=> start!676906 e!4219805))

(declare-fun b!7019943 () Bool)

(declare-fun e!4219814 () Bool)

(declare-fun tp!1933825 () Bool)

(assert (=> b!7019943 (= e!4219814 tp!1933825)))

(declare-fun b!7019944 () Bool)

(declare-fun res!2865359 () Bool)

(assert (=> b!7019944 (=> (not res!2865359) (not e!4219806))))

(assert (=> b!7019944 (= res!2865359 ((_ is Cons!67559) s!7408))))

(declare-fun setElem!48654 () Context!12750)

(declare-fun setNonEmpty!48654 () Bool)

(declare-fun tp!1933822 () Bool)

(assert (=> setNonEmpty!48654 (= setRes!48654 (and tp!1933822 (inv!86306 setElem!48654) e!4219814))))

(declare-fun setRest!48654 () (InoxSet Context!12750))

(assert (=> setNonEmpty!48654 (= z1!570 ((_ map or) (store ((as const (Array Context!12750 Bool)) false) setElem!48654 true) setRest!48654))))

(assert (=> b!7019945 (= e!4219807 e!4219813)))

(declare-fun res!2865357 () Bool)

(assert (=> b!7019945 (=> res!2865357 e!4219813)))

(assert (=> b!7019945 (= res!2865357 (or (not (= lt!2511096 lt!2511102)) (not (select z1!570 lt!2511099))))))

(declare-fun ++!15417 (List!67682 List!67682) List!67682)

(assert (=> b!7019945 (= lt!2511096 (Context!12751 (++!15417 (exprs!6875 lt!2511099) (exprs!6875 ct2!306))))))

(declare-fun lt!2511092 () Unit!161440)

(assert (=> b!7019945 (= lt!2511092 (lemmaConcatPreservesForall!715 (exprs!6875 lt!2511099) (exprs!6875 ct2!306) lambda!411048))))

(declare-fun lambda!411047 () Int)

(declare-fun mapPost2!234 ((InoxSet Context!12750) Int Context!12750) Context!12750)

(assert (=> b!7019945 (= lt!2511099 (mapPost2!234 z1!570 lambda!411047 lt!2511102))))

(assert (= (and start!676906 res!2865354) b!7019944))

(assert (= (and b!7019944 res!2865359) b!7019933))

(assert (= (and b!7019933 (not res!2865358)) b!7019939))

(assert (= (and b!7019939 (not res!2865352)) b!7019945))

(assert (= (and b!7019945 (not res!2865357)) b!7019934))

(assert (= (and b!7019934 (not res!2865351)) b!7019931))

(assert (= (and b!7019931 (not res!2865348)) b!7019938))

(assert (= (and b!7019938 (not res!2865350)) b!7019940))

(assert (= (and b!7019940 (not res!2865356)) b!7019942))

(assert (= (and b!7019942 (not res!2865349)) b!7019937))

(assert (= (and b!7019937 (not res!2865353)) b!7019936))

(assert (= (and b!7019936 (not res!2865355)) b!7019941))

(assert (= (and start!676906 condSetEmpty!48654) setIsEmpty!48654))

(assert (= (and start!676906 (not condSetEmpty!48654)) setNonEmpty!48654))

(assert (= setNonEmpty!48654 b!7019943))

(assert (= start!676906 b!7019932))

(assert (= (and start!676906 ((_ is Cons!67559) s!7408)) b!7019935))

(declare-fun m!7721294 () Bool)

(assert (=> b!7019942 m!7721294))

(assert (=> b!7019942 m!7721294))

(declare-fun m!7721296 () Bool)

(assert (=> b!7019942 m!7721296))

(declare-fun m!7721298 () Bool)

(assert (=> b!7019939 m!7721298))

(declare-fun m!7721300 () Bool)

(assert (=> b!7019933 m!7721300))

(declare-fun m!7721302 () Bool)

(assert (=> b!7019933 m!7721302))

(declare-fun m!7721304 () Bool)

(assert (=> b!7019933 m!7721304))

(declare-fun m!7721306 () Bool)

(assert (=> b!7019933 m!7721306))

(declare-fun m!7721308 () Bool)

(assert (=> b!7019933 m!7721308))

(declare-fun m!7721310 () Bool)

(assert (=> b!7019933 m!7721310))

(declare-fun m!7721312 () Bool)

(assert (=> b!7019941 m!7721312))

(declare-fun m!7721314 () Bool)

(assert (=> setNonEmpty!48654 m!7721314))

(declare-fun m!7721316 () Bool)

(assert (=> b!7019936 m!7721316))

(declare-fun m!7721318 () Bool)

(assert (=> b!7019940 m!7721318))

(declare-fun m!7721320 () Bool)

(assert (=> start!676906 m!7721320))

(declare-fun m!7721322 () Bool)

(assert (=> start!676906 m!7721322))

(declare-fun m!7721324 () Bool)

(assert (=> start!676906 m!7721324))

(declare-fun m!7721326 () Bool)

(assert (=> b!7019931 m!7721326))

(declare-fun m!7721328 () Bool)

(assert (=> b!7019931 m!7721328))

(assert (=> b!7019931 m!7721318))

(declare-fun m!7721330 () Bool)

(assert (=> b!7019931 m!7721330))

(declare-fun m!7721332 () Bool)

(assert (=> b!7019931 m!7721332))

(declare-fun m!7721334 () Bool)

(assert (=> b!7019934 m!7721334))

(assert (=> b!7019934 m!7721318))

(declare-fun m!7721336 () Bool)

(assert (=> b!7019937 m!7721336))

(declare-fun m!7721338 () Bool)

(assert (=> b!7019937 m!7721338))

(declare-fun m!7721340 () Bool)

(assert (=> b!7019937 m!7721340))

(declare-fun m!7721342 () Bool)

(assert (=> b!7019945 m!7721342))

(declare-fun m!7721344 () Bool)

(assert (=> b!7019945 m!7721344))

(assert (=> b!7019945 m!7721318))

(declare-fun m!7721346 () Bool)

(assert (=> b!7019945 m!7721346))

(check-sat (not b!7019945) (not b!7019943) (not setNonEmpty!48654) (not b!7019936) (not start!676906) (not b!7019933) (not b!7019932) (not b!7019937) (not b!7019940) tp_is_empty!43983 (not b!7019935) (not b!7019931) (not b!7019941) (not b!7019942) (not b!7019934))
(check-sat)
