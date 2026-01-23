; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!681132 () Bool)

(assert start!681132)

(declare-fun b!7040921 () Bool)

(assert (=> b!7040921 true))

(declare-fun b!7040924 () Bool)

(assert (=> b!7040924 true))

(declare-fun b!7040917 () Bool)

(assert (=> b!7040917 true))

(declare-fun b!7040906 () Bool)

(declare-fun e!4232740 () Bool)

(declare-fun e!4232744 () Bool)

(assert (=> b!7040906 (= e!4232740 e!4232744)))

(declare-fun res!2874426 () Bool)

(assert (=> b!7040906 (=> res!2874426 e!4232744)))

(declare-fun e!4232733 () Bool)

(assert (=> b!7040906 (= res!2874426 e!4232733)))

(declare-fun res!2874414 () Bool)

(assert (=> b!7040906 (=> (not res!2874414) (not e!4232733))))

(declare-fun lt!2524366 () Bool)

(declare-fun lt!2524344 () Bool)

(assert (=> b!7040906 (= res!2874414 (not (= lt!2524366 lt!2524344)))))

(declare-datatypes ((C!35250 0))(
  ( (C!35251 (val!27327 Int)) )
))
(declare-datatypes ((Regex!17490 0))(
  ( (ElementMatch!17490 (c!1310524 C!35250)) (Concat!26335 (regOne!35492 Regex!17490) (regTwo!35492 Regex!17490)) (EmptyExpr!17490) (Star!17490 (reg!17819 Regex!17490)) (EmptyLang!17490) (Union!17490 (regOne!35493 Regex!17490) (regTwo!35493 Regex!17490)) )
))
(declare-datatypes ((List!67998 0))(
  ( (Nil!67874) (Cons!67874 (h!74322 Regex!17490) (t!381769 List!67998)) )
))
(declare-datatypes ((Context!12972 0))(
  ( (Context!12973 (exprs!6986 List!67998)) )
))
(declare-fun lt!2524352 () (Set Context!12972))

(declare-datatypes ((List!67999 0))(
  ( (Nil!67875) (Cons!67875 (h!74323 C!35250) (t!381770 List!67999)) )
))
(declare-fun s!7408 () List!67999)

(declare-fun matchZipper!3030 ((Set Context!12972) List!67999) Bool)

(assert (=> b!7040906 (= lt!2524366 (matchZipper!3030 lt!2524352 (t!381770 s!7408)))))

(declare-fun lambda!416787 () Int)

(declare-datatypes ((Unit!161660 0))(
  ( (Unit!161661) )
))
(declare-fun lt!2524333 () Unit!161660)

(declare-fun ct2!306 () Context!12972)

(declare-fun lt!2524341 () List!67998)

(declare-fun lemmaConcatPreservesForall!811 (List!67998 List!67998 Int) Unit!161660)

(assert (=> b!7040906 (= lt!2524333 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(declare-fun lt!2524358 () (Set Context!12972))

(declare-fun e!4232743 () Bool)

(assert (=> b!7040906 (= (matchZipper!3030 lt!2524358 (t!381770 s!7408)) e!4232743)))

(declare-fun res!2874429 () Bool)

(assert (=> b!7040906 (=> res!2874429 e!4232743)))

(assert (=> b!7040906 (= res!2874429 lt!2524344)))

(declare-fun lt!2524370 () (Set Context!12972))

(assert (=> b!7040906 (= lt!2524344 (matchZipper!3030 lt!2524370 (t!381770 s!7408)))))

(declare-fun lt!2524363 () (Set Context!12972))

(declare-fun lt!2524346 () Unit!161660)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1563 ((Set Context!12972) (Set Context!12972) List!67999) Unit!161660)

(assert (=> b!7040906 (= lt!2524346 (lemmaZipperConcatMatchesSameAsBothZippers!1563 lt!2524370 lt!2524363 (t!381770 s!7408)))))

(declare-fun lt!2524365 () Unit!161660)

(assert (=> b!7040906 (= lt!2524365 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(declare-fun lt!2524361 () Unit!161660)

(assert (=> b!7040906 (= lt!2524361 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(declare-fun res!2874424 () Bool)

(declare-fun e!4232732 () Bool)

(assert (=> start!681132 (=> (not res!2874424) (not e!4232732))))

(declare-fun lt!2524350 () (Set Context!12972))

(assert (=> start!681132 (= res!2874424 (matchZipper!3030 lt!2524350 s!7408))))

(declare-fun z1!570 () (Set Context!12972))

(declare-fun appendTo!611 ((Set Context!12972) Context!12972) (Set Context!12972))

(assert (=> start!681132 (= lt!2524350 (appendTo!611 z1!570 ct2!306))))

(assert (=> start!681132 e!4232732))

(declare-fun condSetEmpty!49345 () Bool)

(assert (=> start!681132 (= condSetEmpty!49345 (= z1!570 (as set.empty (Set Context!12972))))))

(declare-fun setRes!49345 () Bool)

(assert (=> start!681132 setRes!49345))

(declare-fun e!4232734 () Bool)

(declare-fun inv!86585 (Context!12972) Bool)

(assert (=> start!681132 (and (inv!86585 ct2!306) e!4232734)))

(declare-fun e!4232738 () Bool)

(assert (=> start!681132 e!4232738))

(declare-fun b!7040907 () Bool)

(assert (=> b!7040907 (= e!4232743 (matchZipper!3030 lt!2524363 (t!381770 s!7408)))))

(declare-fun b!7040908 () Bool)

(declare-fun res!2874431 () Bool)

(assert (=> b!7040908 (=> res!2874431 e!4232744)))

(assert (=> b!7040908 (= res!2874431 (not lt!2524366))))

(declare-fun b!7040909 () Bool)

(declare-fun e!4232735 () Bool)

(declare-fun e!4232730 () Bool)

(assert (=> b!7040909 (= e!4232735 e!4232730)))

(declare-fun res!2874422 () Bool)

(assert (=> b!7040909 (=> res!2874422 e!4232730)))

(declare-fun lt!2524371 () (Set Context!12972))

(declare-datatypes ((tuple2!68118 0))(
  ( (tuple2!68119 (_1!37362 List!67999) (_2!37362 List!67999)) )
))
(declare-fun lt!2524338 () tuple2!68118)

(assert (=> b!7040909 (= res!2874422 (not (matchZipper!3030 lt!2524371 (_1!37362 lt!2524338))))))

(declare-datatypes ((Option!16891 0))(
  ( (None!16890) (Some!16890 (v!53180 tuple2!68118)) )
))
(declare-fun lt!2524339 () Option!16891)

(declare-fun get!23787 (Option!16891) tuple2!68118)

(assert (=> b!7040909 (= lt!2524338 (get!23787 lt!2524339))))

(declare-fun isDefined!13592 (Option!16891) Bool)

(assert (=> b!7040909 (isDefined!13592 lt!2524339)))

(declare-fun lt!2524359 () (Set Context!12972))

(declare-fun findConcatSeparationZippers!407 ((Set Context!12972) (Set Context!12972) List!67999 List!67999 List!67999) Option!16891)

(assert (=> b!7040909 (= lt!2524339 (findConcatSeparationZippers!407 lt!2524371 lt!2524359 Nil!67875 (t!381770 s!7408) (t!381770 s!7408)))))

(assert (=> b!7040909 (= lt!2524359 (set.insert ct2!306 (as set.empty (Set Context!12972))))))

(declare-fun lt!2524353 () Unit!161660)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!395 ((Set Context!12972) Context!12972 List!67999) Unit!161660)

(assert (=> b!7040909 (= lt!2524353 (lemmaConcatZipperMatchesStringThenFindConcatDefined!395 lt!2524371 ct2!306 (t!381770 s!7408)))))

(declare-fun lt!2524334 () Unit!161660)

(assert (=> b!7040909 (= lt!2524334 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(assert (=> b!7040909 (= lt!2524370 (appendTo!611 lt!2524371 ct2!306))))

(declare-fun lt!2524348 () Context!12972)

(declare-fun lt!2524342 () Context!12972)

(declare-fun derivationStepZipperDown!2154 (Regex!17490 Context!12972 C!35250) (Set Context!12972))

(assert (=> b!7040909 (= lt!2524371 (derivationStepZipperDown!2154 (h!74322 (exprs!6986 lt!2524342)) lt!2524348 (h!74323 s!7408)))))

(declare-fun lt!2524357 () Unit!161660)

(assert (=> b!7040909 (= lt!2524357 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(declare-fun lt!2524351 () Unit!161660)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!69 (Context!12972 Regex!17490 C!35250 Context!12972) Unit!161660)

(assert (=> b!7040909 (= lt!2524351 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!69 lt!2524348 (h!74322 (exprs!6986 lt!2524342)) (h!74323 s!7408) ct2!306))))

(declare-fun b!7040910 () Bool)

(declare-fun e!4232739 () Bool)

(declare-fun e!4232737 () Bool)

(assert (=> b!7040910 (= e!4232739 e!4232737)))

(declare-fun res!2874418 () Bool)

(assert (=> b!7040910 (=> res!2874418 e!4232737)))

(declare-fun nullable!7201 (Regex!17490) Bool)

(assert (=> b!7040910 (= res!2874418 (not (nullable!7201 (h!74322 (exprs!6986 lt!2524342)))))))

(assert (=> b!7040910 (= lt!2524348 (Context!12973 lt!2524341))))

(declare-fun tail!13596 (List!67998) List!67998)

(assert (=> b!7040910 (= lt!2524341 (tail!13596 (exprs!6986 lt!2524342)))))

(declare-fun tp!1937389 () Bool)

(declare-fun e!4232741 () Bool)

(declare-fun setElem!49345 () Context!12972)

(declare-fun setNonEmpty!49345 () Bool)

(assert (=> setNonEmpty!49345 (= setRes!49345 (and tp!1937389 (inv!86585 setElem!49345) e!4232741))))

(declare-fun setRest!49345 () (Set Context!12972))

(assert (=> setNonEmpty!49345 (= z1!570 (set.union (set.insert setElem!49345 (as set.empty (Set Context!12972))) setRest!49345))))

(declare-fun b!7040911 () Bool)

(declare-fun res!2874417 () Bool)

(assert (=> b!7040911 (=> res!2874417 e!4232739)))

(declare-fun isEmpty!39604 (List!67998) Bool)

(assert (=> b!7040911 (= res!2874417 (isEmpty!39604 (exprs!6986 lt!2524342)))))

(declare-fun b!7040912 () Bool)

(declare-fun tp_is_empty!44205 () Bool)

(declare-fun tp!1937386 () Bool)

(assert (=> b!7040912 (= e!4232738 (and tp_is_empty!44205 tp!1937386))))

(declare-fun b!7040913 () Bool)

(declare-fun ++!15555 (List!67999 List!67999) List!67999)

(assert (=> b!7040913 (= e!4232730 (= (++!15555 (_1!37362 lt!2524338) (_2!37362 lt!2524338)) (t!381770 s!7408)))))

(declare-fun b!7040914 () Bool)

(declare-fun res!2874419 () Bool)

(assert (=> b!7040914 (=> res!2874419 e!4232739)))

(assert (=> b!7040914 (= res!2874419 (not (is-Cons!67874 (exprs!6986 lt!2524342))))))

(declare-fun b!7040915 () Bool)

(declare-fun tp!1937388 () Bool)

(assert (=> b!7040915 (= e!4232741 tp!1937388)))

(declare-fun b!7040916 () Bool)

(declare-fun res!2874428 () Bool)

(assert (=> b!7040916 (=> (not res!2874428) (not e!4232732))))

(assert (=> b!7040916 (= res!2874428 (is-Cons!67875 s!7408))))

(declare-fun e!4232736 () Bool)

(assert (=> b!7040917 (= e!4232736 e!4232739)))

(declare-fun res!2874430 () Bool)

(assert (=> b!7040917 (=> res!2874430 e!4232739)))

(declare-fun lt!2524337 () (Set Context!12972))

(declare-fun derivationStepZipper!2946 ((Set Context!12972) C!35250) (Set Context!12972))

(assert (=> b!7040917 (= res!2874430 (not (= (derivationStepZipper!2946 lt!2524337 (h!74323 s!7408)) lt!2524352)))))

(declare-fun lambda!416788 () Int)

(declare-fun lt!2524368 () Context!12972)

(declare-fun flatMap!2437 ((Set Context!12972) Int) (Set Context!12972))

(declare-fun derivationStepZipperUp!2100 (Context!12972 C!35250) (Set Context!12972))

(assert (=> b!7040917 (= (flatMap!2437 lt!2524337 lambda!416788) (derivationStepZipperUp!2100 lt!2524368 (h!74323 s!7408)))))

(declare-fun lt!2524336 () Unit!161660)

(declare-fun lemmaFlatMapOnSingletonSet!1951 ((Set Context!12972) Context!12972 Int) Unit!161660)

(assert (=> b!7040917 (= lt!2524336 (lemmaFlatMapOnSingletonSet!1951 lt!2524337 lt!2524368 lambda!416788))))

(assert (=> b!7040917 (= lt!2524352 (derivationStepZipperUp!2100 lt!2524368 (h!74323 s!7408)))))

(declare-fun lt!2524335 () Unit!161660)

(assert (=> b!7040917 (= lt!2524335 (lemmaConcatPreservesForall!811 (exprs!6986 lt!2524342) (exprs!6986 ct2!306) lambda!416787))))

(declare-fun b!7040918 () Bool)

(declare-fun e!4232731 () Bool)

(assert (=> b!7040918 (= e!4232731 e!4232735)))

(declare-fun res!2874421 () Bool)

(assert (=> b!7040918 (=> res!2874421 e!4232735)))

(assert (=> b!7040918 (= res!2874421 (not lt!2524344))))

(declare-fun lt!2524349 () Unit!161660)

(assert (=> b!7040918 (= lt!2524349 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(declare-fun lt!2524347 () Unit!161660)

(assert (=> b!7040918 (= lt!2524347 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(declare-fun setIsEmpty!49345 () Bool)

(assert (=> setIsEmpty!49345 setRes!49345))

(declare-fun b!7040919 () Bool)

(declare-fun e!4232729 () Bool)

(assert (=> b!7040919 (= e!4232729 e!4232736)))

(declare-fun res!2874423 () Bool)

(assert (=> b!7040919 (=> res!2874423 e!4232736)))

(declare-fun lt!2524367 () (Set Context!12972))

(assert (=> b!7040919 (= res!2874423 (not (= lt!2524337 lt!2524367)))))

(assert (=> b!7040919 (= lt!2524337 (set.insert lt!2524368 (as set.empty (Set Context!12972))))))

(declare-fun lt!2524360 () Unit!161660)

(assert (=> b!7040919 (= lt!2524360 (lemmaConcatPreservesForall!811 (exprs!6986 lt!2524342) (exprs!6986 ct2!306) lambda!416787))))

(declare-fun b!7040920 () Bool)

(declare-fun res!2874420 () Bool)

(declare-fun e!4232742 () Bool)

(assert (=> b!7040920 (=> res!2874420 e!4232742)))

(declare-fun lt!2524369 () Context!12972)

(assert (=> b!7040920 (= res!2874420 (not (set.member lt!2524369 lt!2524350)))))

(assert (=> b!7040921 (= e!4232732 (not e!4232742))))

(declare-fun res!2874427 () Bool)

(assert (=> b!7040921 (=> res!2874427 e!4232742)))

(assert (=> b!7040921 (= res!2874427 (not (matchZipper!3030 lt!2524367 s!7408)))))

(assert (=> b!7040921 (= lt!2524367 (set.insert lt!2524369 (as set.empty (Set Context!12972))))))

(declare-fun lambda!416785 () Int)

(declare-fun getWitness!1512 ((Set Context!12972) Int) Context!12972)

(assert (=> b!7040921 (= lt!2524369 (getWitness!1512 lt!2524350 lambda!416785))))

(declare-datatypes ((List!68000 0))(
  ( (Nil!67876) (Cons!67876 (h!74324 Context!12972) (t!381771 List!68000)) )
))
(declare-fun lt!2524340 () List!68000)

(declare-fun exists!3433 (List!68000 Int) Bool)

(assert (=> b!7040921 (exists!3433 lt!2524340 lambda!416785)))

(declare-fun lt!2524343 () Unit!161660)

(declare-fun lemmaZipperMatchesExistsMatchingContext!429 (List!68000 List!67999) Unit!161660)

(assert (=> b!7040921 (= lt!2524343 (lemmaZipperMatchesExistsMatchingContext!429 lt!2524340 s!7408))))

(declare-fun toList!10833 ((Set Context!12972)) List!68000)

(assert (=> b!7040921 (= lt!2524340 (toList!10833 lt!2524350))))

(declare-fun b!7040922 () Bool)

(declare-fun res!2874425 () Bool)

(assert (=> b!7040922 (=> res!2874425 e!4232730)))

(assert (=> b!7040922 (= res!2874425 (not (matchZipper!3030 lt!2524359 (_2!37362 lt!2524338))))))

(declare-fun b!7040923 () Bool)

(declare-fun tp!1937387 () Bool)

(assert (=> b!7040923 (= e!4232734 tp!1937387)))

(assert (=> b!7040924 (= e!4232742 e!4232729)))

(declare-fun res!2874415 () Bool)

(assert (=> b!7040924 (=> res!2874415 e!4232729)))

(assert (=> b!7040924 (= res!2874415 (or (not (= lt!2524368 lt!2524369)) (not (set.member lt!2524342 z1!570))))))

(declare-fun ++!15556 (List!67998 List!67998) List!67998)

(assert (=> b!7040924 (= lt!2524368 (Context!12973 (++!15556 (exprs!6986 lt!2524342) (exprs!6986 ct2!306))))))

(declare-fun lt!2524345 () Unit!161660)

(assert (=> b!7040924 (= lt!2524345 (lemmaConcatPreservesForall!811 (exprs!6986 lt!2524342) (exprs!6986 ct2!306) lambda!416787))))

(declare-fun lambda!416786 () Int)

(declare-fun mapPost2!331 ((Set Context!12972) Int Context!12972) Context!12972)

(assert (=> b!7040924 (= lt!2524342 (mapPost2!331 z1!570 lambda!416786 lt!2524369))))

(declare-fun b!7040925 () Bool)

(assert (=> b!7040925 (= e!4232733 (not (matchZipper!3030 lt!2524363 (t!381770 s!7408))))))

(declare-fun lt!2524354 () Unit!161660)

(assert (=> b!7040925 (= lt!2524354 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(declare-fun b!7040926 () Bool)

(assert (=> b!7040926 (= e!4232737 e!4232740)))

(declare-fun res!2874416 () Bool)

(assert (=> b!7040926 (=> res!2874416 e!4232740)))

(assert (=> b!7040926 (= res!2874416 (not (= lt!2524352 lt!2524358)))))

(assert (=> b!7040926 (= lt!2524358 (set.union lt!2524370 lt!2524363))))

(declare-fun lt!2524356 () Context!12972)

(assert (=> b!7040926 (= lt!2524363 (derivationStepZipperUp!2100 lt!2524356 (h!74323 s!7408)))))

(assert (=> b!7040926 (= lt!2524370 (derivationStepZipperDown!2154 (h!74322 (exprs!6986 lt!2524342)) lt!2524356 (h!74323 s!7408)))))

(assert (=> b!7040926 (= lt!2524356 (Context!12973 (++!15556 lt!2524341 (exprs!6986 ct2!306))))))

(declare-fun lt!2524355 () Unit!161660)

(assert (=> b!7040926 (= lt!2524355 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(declare-fun lt!2524362 () Unit!161660)

(assert (=> b!7040926 (= lt!2524362 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(declare-fun b!7040927 () Bool)

(assert (=> b!7040927 (= e!4232744 e!4232731)))

(declare-fun res!2874413 () Bool)

(assert (=> b!7040927 (=> res!2874413 e!4232731)))

(assert (=> b!7040927 (= res!2874413 (matchZipper!3030 lt!2524363 (t!381770 s!7408)))))

(declare-fun lt!2524364 () Unit!161660)

(assert (=> b!7040927 (= lt!2524364 (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(assert (= (and start!681132 res!2874424) b!7040916))

(assert (= (and b!7040916 res!2874428) b!7040921))

(assert (= (and b!7040921 (not res!2874427)) b!7040920))

(assert (= (and b!7040920 (not res!2874420)) b!7040924))

(assert (= (and b!7040924 (not res!2874415)) b!7040919))

(assert (= (and b!7040919 (not res!2874423)) b!7040917))

(assert (= (and b!7040917 (not res!2874430)) b!7040914))

(assert (= (and b!7040914 (not res!2874419)) b!7040911))

(assert (= (and b!7040911 (not res!2874417)) b!7040910))

(assert (= (and b!7040910 (not res!2874418)) b!7040926))

(assert (= (and b!7040926 (not res!2874416)) b!7040906))

(assert (= (and b!7040906 (not res!2874429)) b!7040907))

(assert (= (and b!7040906 res!2874414) b!7040925))

(assert (= (and b!7040906 (not res!2874426)) b!7040908))

(assert (= (and b!7040908 (not res!2874431)) b!7040927))

(assert (= (and b!7040927 (not res!2874413)) b!7040918))

(assert (= (and b!7040918 (not res!2874421)) b!7040909))

(assert (= (and b!7040909 (not res!2874422)) b!7040922))

(assert (= (and b!7040922 (not res!2874425)) b!7040913))

(assert (= (and start!681132 condSetEmpty!49345) setIsEmpty!49345))

(assert (= (and start!681132 (not condSetEmpty!49345)) setNonEmpty!49345))

(assert (= setNonEmpty!49345 b!7040915))

(assert (= start!681132 b!7040923))

(assert (= (and start!681132 (is-Cons!67875 s!7408)) b!7040912))

(declare-fun m!7752210 () Bool)

(assert (=> b!7040924 m!7752210))

(declare-fun m!7752212 () Bool)

(assert (=> b!7040924 m!7752212))

(declare-fun m!7752214 () Bool)

(assert (=> b!7040924 m!7752214))

(declare-fun m!7752216 () Bool)

(assert (=> b!7040924 m!7752216))

(declare-fun m!7752218 () Bool)

(assert (=> b!7040917 m!7752218))

(declare-fun m!7752220 () Bool)

(assert (=> b!7040917 m!7752220))

(assert (=> b!7040917 m!7752214))

(declare-fun m!7752222 () Bool)

(assert (=> b!7040917 m!7752222))

(declare-fun m!7752224 () Bool)

(assert (=> b!7040917 m!7752224))

(declare-fun m!7752226 () Bool)

(assert (=> b!7040922 m!7752226))

(declare-fun m!7752228 () Bool)

(assert (=> b!7040921 m!7752228))

(declare-fun m!7752230 () Bool)

(assert (=> b!7040921 m!7752230))

(declare-fun m!7752232 () Bool)

(assert (=> b!7040921 m!7752232))

(declare-fun m!7752234 () Bool)

(assert (=> b!7040921 m!7752234))

(declare-fun m!7752236 () Bool)

(assert (=> b!7040921 m!7752236))

(declare-fun m!7752238 () Bool)

(assert (=> b!7040921 m!7752238))

(declare-fun m!7752240 () Bool)

(assert (=> b!7040906 m!7752240))

(declare-fun m!7752242 () Bool)

(assert (=> b!7040906 m!7752242))

(assert (=> b!7040906 m!7752240))

(declare-fun m!7752244 () Bool)

(assert (=> b!7040906 m!7752244))

(declare-fun m!7752246 () Bool)

(assert (=> b!7040906 m!7752246))

(declare-fun m!7752248 () Bool)

(assert (=> b!7040906 m!7752248))

(assert (=> b!7040906 m!7752240))

(declare-fun m!7752250 () Bool)

(assert (=> b!7040919 m!7752250))

(assert (=> b!7040919 m!7752214))

(declare-fun m!7752252 () Bool)

(assert (=> b!7040910 m!7752252))

(declare-fun m!7752254 () Bool)

(assert (=> b!7040910 m!7752254))

(declare-fun m!7752256 () Bool)

(assert (=> setNonEmpty!49345 m!7752256))

(declare-fun m!7752258 () Bool)

(assert (=> b!7040927 m!7752258))

(assert (=> b!7040927 m!7752240))

(declare-fun m!7752260 () Bool)

(assert (=> b!7040909 m!7752260))

(declare-fun m!7752262 () Bool)

(assert (=> b!7040909 m!7752262))

(declare-fun m!7752264 () Bool)

(assert (=> b!7040909 m!7752264))

(declare-fun m!7752266 () Bool)

(assert (=> b!7040909 m!7752266))

(assert (=> b!7040909 m!7752240))

(declare-fun m!7752268 () Bool)

(assert (=> b!7040909 m!7752268))

(declare-fun m!7752270 () Bool)

(assert (=> b!7040909 m!7752270))

(declare-fun m!7752272 () Bool)

(assert (=> b!7040909 m!7752272))

(declare-fun m!7752274 () Bool)

(assert (=> b!7040909 m!7752274))

(assert (=> b!7040909 m!7752240))

(declare-fun m!7752276 () Bool)

(assert (=> b!7040909 m!7752276))

(declare-fun m!7752278 () Bool)

(assert (=> start!681132 m!7752278))

(declare-fun m!7752280 () Bool)

(assert (=> start!681132 m!7752280))

(declare-fun m!7752282 () Bool)

(assert (=> start!681132 m!7752282))

(declare-fun m!7752284 () Bool)

(assert (=> b!7040920 m!7752284))

(assert (=> b!7040907 m!7752258))

(declare-fun m!7752286 () Bool)

(assert (=> b!7040911 m!7752286))

(assert (=> b!7040926 m!7752240))

(declare-fun m!7752288 () Bool)

(assert (=> b!7040926 m!7752288))

(declare-fun m!7752290 () Bool)

(assert (=> b!7040926 m!7752290))

(assert (=> b!7040926 m!7752240))

(declare-fun m!7752292 () Bool)

(assert (=> b!7040926 m!7752292))

(assert (=> b!7040918 m!7752240))

(assert (=> b!7040918 m!7752240))

(declare-fun m!7752294 () Bool)

(assert (=> b!7040913 m!7752294))

(assert (=> b!7040925 m!7752258))

(assert (=> b!7040925 m!7752240))

(push 1)

(assert (not b!7040922))

(assert (not b!7040919))

(assert (not b!7040923))

(assert (not b!7040925))

(assert (not b!7040926))

(assert (not start!681132))

(assert tp_is_empty!44205)

(assert (not b!7040927))

(assert (not b!7040924))

(assert (not b!7040912))

(assert (not setNonEmpty!49345))

(assert (not b!7040911))

(assert (not b!7040917))

(assert (not b!7040909))

(assert (not b!7040915))

(assert (not b!7040907))

(assert (not b!7040921))

(assert (not b!7040918))

(assert (not b!7040906))

(assert (not b!7040910))

(assert (not b!7040913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2198225 () Bool)

(declare-fun c!1310536 () Bool)

(declare-fun isEmpty!39606 (List!67999) Bool)

(assert (=> d!2198225 (= c!1310536 (isEmpty!39606 s!7408))))

(declare-fun e!4232795 () Bool)

(assert (=> d!2198225 (= (matchZipper!3030 lt!2524350 s!7408) e!4232795)))

(declare-fun b!7041010 () Bool)

(declare-fun nullableZipper!2596 ((Set Context!12972)) Bool)

(assert (=> b!7041010 (= e!4232795 (nullableZipper!2596 lt!2524350))))

(declare-fun b!7041011 () Bool)

(declare-fun head!14287 (List!67999) C!35250)

(declare-fun tail!13598 (List!67999) List!67999)

(assert (=> b!7041011 (= e!4232795 (matchZipper!3030 (derivationStepZipper!2946 lt!2524350 (head!14287 s!7408)) (tail!13598 s!7408)))))

(assert (= (and d!2198225 c!1310536) b!7041010))

(assert (= (and d!2198225 (not c!1310536)) b!7041011))

(declare-fun m!7752382 () Bool)

(assert (=> d!2198225 m!7752382))

(declare-fun m!7752384 () Bool)

(assert (=> b!7041010 m!7752384))

(declare-fun m!7752386 () Bool)

(assert (=> b!7041011 m!7752386))

(assert (=> b!7041011 m!7752386))

(declare-fun m!7752388 () Bool)

(assert (=> b!7041011 m!7752388))

(declare-fun m!7752390 () Bool)

(assert (=> b!7041011 m!7752390))

(assert (=> b!7041011 m!7752388))

(assert (=> b!7041011 m!7752390))

(declare-fun m!7752392 () Bool)

(assert (=> b!7041011 m!7752392))

(assert (=> start!681132 d!2198225))

(declare-fun bs!1873252 () Bool)

(declare-fun d!2198227 () Bool)

(assert (= bs!1873252 (and d!2198227 b!7040924)))

(declare-fun lambda!416835 () Int)

(assert (=> bs!1873252 (= lambda!416835 lambda!416786)))

(assert (=> d!2198227 true))

(declare-fun map!15798 ((Set Context!12972) Int) (Set Context!12972))

(assert (=> d!2198227 (= (appendTo!611 z1!570 ct2!306) (map!15798 z1!570 lambda!416835))))

(declare-fun bs!1873253 () Bool)

(assert (= bs!1873253 d!2198227))

(declare-fun m!7752394 () Bool)

(assert (=> bs!1873253 m!7752394))

(assert (=> start!681132 d!2198227))

(declare-fun bs!1873254 () Bool)

(declare-fun d!2198229 () Bool)

(assert (= bs!1873254 (and d!2198229 b!7040924)))

(declare-fun lambda!416838 () Int)

(assert (=> bs!1873254 (= lambda!416838 lambda!416787)))

(declare-fun forall!16411 (List!67998 Int) Bool)

(assert (=> d!2198229 (= (inv!86585 ct2!306) (forall!16411 (exprs!6986 ct2!306) lambda!416838))))

(declare-fun bs!1873255 () Bool)

(assert (= bs!1873255 d!2198229))

(declare-fun m!7752396 () Bool)

(assert (=> bs!1873255 m!7752396))

(assert (=> start!681132 d!2198229))

(declare-fun d!2198231 () Bool)

(assert (=> d!2198231 (forall!16411 (++!15556 (exprs!6986 lt!2524342) (exprs!6986 ct2!306)) lambda!416787)))

(declare-fun lt!2524495 () Unit!161660)

(declare-fun choose!53441 (List!67998 List!67998 Int) Unit!161660)

(assert (=> d!2198231 (= lt!2524495 (choose!53441 (exprs!6986 lt!2524342) (exprs!6986 ct2!306) lambda!416787))))

(assert (=> d!2198231 (forall!16411 (exprs!6986 lt!2524342) lambda!416787)))

(assert (=> d!2198231 (= (lemmaConcatPreservesForall!811 (exprs!6986 lt!2524342) (exprs!6986 ct2!306) lambda!416787) lt!2524495)))

(declare-fun bs!1873256 () Bool)

(assert (= bs!1873256 d!2198231))

(assert (=> bs!1873256 m!7752212))

(assert (=> bs!1873256 m!7752212))

(declare-fun m!7752398 () Bool)

(assert (=> bs!1873256 m!7752398))

(declare-fun m!7752400 () Bool)

(assert (=> bs!1873256 m!7752400))

(declare-fun m!7752402 () Bool)

(assert (=> bs!1873256 m!7752402))

(assert (=> b!7040919 d!2198231))

(declare-fun d!2198233 () Bool)

(declare-fun nullableFct!2743 (Regex!17490) Bool)

(assert (=> d!2198233 (= (nullable!7201 (h!74322 (exprs!6986 lt!2524342))) (nullableFct!2743 (h!74322 (exprs!6986 lt!2524342))))))

(declare-fun bs!1873257 () Bool)

(assert (= bs!1873257 d!2198233))

(declare-fun m!7752404 () Bool)

(assert (=> bs!1873257 m!7752404))

(assert (=> b!7040910 d!2198233))

(declare-fun d!2198235 () Bool)

(assert (=> d!2198235 (= (tail!13596 (exprs!6986 lt!2524342)) (t!381769 (exprs!6986 lt!2524342)))))

(assert (=> b!7040910 d!2198235))

(declare-fun bs!1873258 () Bool)

(declare-fun d!2198237 () Bool)

(assert (= bs!1873258 (and d!2198237 b!7040924)))

(declare-fun lambda!416839 () Int)

(assert (=> bs!1873258 (= lambda!416839 lambda!416786)))

(declare-fun bs!1873259 () Bool)

(assert (= bs!1873259 (and d!2198237 d!2198227)))

(assert (=> bs!1873259 (= lambda!416839 lambda!416835)))

(assert (=> d!2198237 true))

(assert (=> d!2198237 (= (appendTo!611 lt!2524371 ct2!306) (map!15798 lt!2524371 lambda!416839))))

(declare-fun bs!1873260 () Bool)

(assert (= bs!1873260 d!2198237))

(declare-fun m!7752406 () Bool)

(assert (=> bs!1873260 m!7752406))

(assert (=> b!7040909 d!2198237))

(declare-fun d!2198239 () Bool)

(assert (=> d!2198239 (= (get!23787 lt!2524339) (v!53180 lt!2524339))))

(assert (=> b!7040909 d!2198239))

(declare-fun d!2198241 () Bool)

(assert (=> d!2198241 (forall!16411 (++!15556 lt!2524341 (exprs!6986 ct2!306)) lambda!416787)))

(declare-fun lt!2524496 () Unit!161660)

(assert (=> d!2198241 (= lt!2524496 (choose!53441 lt!2524341 (exprs!6986 ct2!306) lambda!416787))))

(assert (=> d!2198241 (forall!16411 lt!2524341 lambda!416787)))

(assert (=> d!2198241 (= (lemmaConcatPreservesForall!811 lt!2524341 (exprs!6986 ct2!306) lambda!416787) lt!2524496)))

(declare-fun bs!1873261 () Bool)

(assert (= bs!1873261 d!2198241))

(assert (=> bs!1873261 m!7752292))

(assert (=> bs!1873261 m!7752292))

(declare-fun m!7752408 () Bool)

(assert (=> bs!1873261 m!7752408))

(declare-fun m!7752410 () Bool)

(assert (=> bs!1873261 m!7752410))

(declare-fun m!7752412 () Bool)

(assert (=> bs!1873261 m!7752412))

(assert (=> b!7040909 d!2198241))

(declare-fun d!2198243 () Bool)

(declare-fun c!1310538 () Bool)

(assert (=> d!2198243 (= c!1310538 (isEmpty!39606 (_1!37362 lt!2524338)))))

(declare-fun e!4232796 () Bool)

(assert (=> d!2198243 (= (matchZipper!3030 lt!2524371 (_1!37362 lt!2524338)) e!4232796)))

(declare-fun b!7041012 () Bool)

(assert (=> b!7041012 (= e!4232796 (nullableZipper!2596 lt!2524371))))

(declare-fun b!7041013 () Bool)

(assert (=> b!7041013 (= e!4232796 (matchZipper!3030 (derivationStepZipper!2946 lt!2524371 (head!14287 (_1!37362 lt!2524338))) (tail!13598 (_1!37362 lt!2524338))))))

(assert (= (and d!2198243 c!1310538) b!7041012))

(assert (= (and d!2198243 (not c!1310538)) b!7041013))

(declare-fun m!7752414 () Bool)

(assert (=> d!2198243 m!7752414))

(declare-fun m!7752416 () Bool)

(assert (=> b!7041012 m!7752416))

(declare-fun m!7752418 () Bool)

(assert (=> b!7041013 m!7752418))

(assert (=> b!7041013 m!7752418))

(declare-fun m!7752420 () Bool)

(assert (=> b!7041013 m!7752420))

(declare-fun m!7752422 () Bool)

(assert (=> b!7041013 m!7752422))

(assert (=> b!7041013 m!7752420))

(assert (=> b!7041013 m!7752422))

(declare-fun m!7752424 () Bool)

(assert (=> b!7041013 m!7752424))

(assert (=> b!7040909 d!2198243))

(declare-fun b!7041032 () Bool)

(declare-fun res!2874503 () Bool)

(declare-fun e!4232811 () Bool)

(assert (=> b!7041032 (=> (not res!2874503) (not e!4232811))))

(declare-fun lt!2524504 () Option!16891)

(assert (=> b!7041032 (= res!2874503 (matchZipper!3030 lt!2524371 (_1!37362 (get!23787 lt!2524504))))))

(declare-fun b!7041033 () Bool)

(declare-fun lt!2524503 () Unit!161660)

(declare-fun lt!2524505 () Unit!161660)

(assert (=> b!7041033 (= lt!2524503 lt!2524505)))

(assert (=> b!7041033 (= (++!15555 (++!15555 Nil!67875 (Cons!67875 (h!74323 (t!381770 s!7408)) Nil!67875)) (t!381770 (t!381770 s!7408))) (t!381770 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2938 (List!67999 C!35250 List!67999 List!67999) Unit!161660)

(assert (=> b!7041033 (= lt!2524505 (lemmaMoveElementToOtherListKeepsConcatEq!2938 Nil!67875 (h!74323 (t!381770 s!7408)) (t!381770 (t!381770 s!7408)) (t!381770 s!7408)))))

(declare-fun e!4232809 () Option!16891)

(assert (=> b!7041033 (= e!4232809 (findConcatSeparationZippers!407 lt!2524371 lt!2524359 (++!15555 Nil!67875 (Cons!67875 (h!74323 (t!381770 s!7408)) Nil!67875)) (t!381770 (t!381770 s!7408)) (t!381770 s!7408)))))

(declare-fun b!7041035 () Bool)

(declare-fun e!4232810 () Bool)

(assert (=> b!7041035 (= e!4232810 (matchZipper!3030 lt!2524359 (t!381770 s!7408)))))

(declare-fun b!7041036 () Bool)

(declare-fun e!4232807 () Option!16891)

(assert (=> b!7041036 (= e!4232807 (Some!16890 (tuple2!68119 Nil!67875 (t!381770 s!7408))))))

(declare-fun b!7041037 () Bool)

(declare-fun res!2874502 () Bool)

(assert (=> b!7041037 (=> (not res!2874502) (not e!4232811))))

(assert (=> b!7041037 (= res!2874502 (matchZipper!3030 lt!2524359 (_2!37362 (get!23787 lt!2524504))))))

(declare-fun b!7041038 () Bool)

(assert (=> b!7041038 (= e!4232811 (= (++!15555 (_1!37362 (get!23787 lt!2524504)) (_2!37362 (get!23787 lt!2524504))) (t!381770 s!7408)))))

(declare-fun b!7041034 () Bool)

(declare-fun e!4232808 () Bool)

(assert (=> b!7041034 (= e!4232808 (not (isDefined!13592 lt!2524504)))))

(declare-fun d!2198245 () Bool)

(assert (=> d!2198245 e!4232808))

(declare-fun res!2874504 () Bool)

(assert (=> d!2198245 (=> res!2874504 e!4232808)))

(assert (=> d!2198245 (= res!2874504 e!4232811)))

(declare-fun res!2874501 () Bool)

(assert (=> d!2198245 (=> (not res!2874501) (not e!4232811))))

(assert (=> d!2198245 (= res!2874501 (isDefined!13592 lt!2524504))))

(assert (=> d!2198245 (= lt!2524504 e!4232807)))

(declare-fun c!1310544 () Bool)

(assert (=> d!2198245 (= c!1310544 e!4232810)))

(declare-fun res!2874505 () Bool)

(assert (=> d!2198245 (=> (not res!2874505) (not e!4232810))))

(assert (=> d!2198245 (= res!2874505 (matchZipper!3030 lt!2524371 Nil!67875))))

(assert (=> d!2198245 (= (++!15555 Nil!67875 (t!381770 s!7408)) (t!381770 s!7408))))

(assert (=> d!2198245 (= (findConcatSeparationZippers!407 lt!2524371 lt!2524359 Nil!67875 (t!381770 s!7408) (t!381770 s!7408)) lt!2524504)))

(declare-fun b!7041039 () Bool)

(assert (=> b!7041039 (= e!4232807 e!4232809)))

(declare-fun c!1310543 () Bool)

(assert (=> b!7041039 (= c!1310543 (is-Nil!67875 (t!381770 s!7408)))))

(declare-fun b!7041040 () Bool)

(assert (=> b!7041040 (= e!4232809 None!16890)))

(assert (= (and d!2198245 res!2874505) b!7041035))

(assert (= (and d!2198245 c!1310544) b!7041036))

(assert (= (and d!2198245 (not c!1310544)) b!7041039))

(assert (= (and b!7041039 c!1310543) b!7041040))

(assert (= (and b!7041039 (not c!1310543)) b!7041033))

(assert (= (and d!2198245 res!2874501) b!7041032))

(assert (= (and b!7041032 res!2874503) b!7041037))

(assert (= (and b!7041037 res!2874502) b!7041038))

(assert (= (and d!2198245 (not res!2874504)) b!7041034))

(declare-fun m!7752426 () Bool)

(assert (=> b!7041033 m!7752426))

(assert (=> b!7041033 m!7752426))

(declare-fun m!7752428 () Bool)

(assert (=> b!7041033 m!7752428))

(declare-fun m!7752430 () Bool)

(assert (=> b!7041033 m!7752430))

(assert (=> b!7041033 m!7752426))

(declare-fun m!7752432 () Bool)

(assert (=> b!7041033 m!7752432))

(declare-fun m!7752434 () Bool)

(assert (=> b!7041032 m!7752434))

(declare-fun m!7752436 () Bool)

(assert (=> b!7041032 m!7752436))

(declare-fun m!7752438 () Bool)

(assert (=> b!7041035 m!7752438))

(assert (=> b!7041037 m!7752434))

(declare-fun m!7752440 () Bool)

(assert (=> b!7041037 m!7752440))

(declare-fun m!7752442 () Bool)

(assert (=> b!7041034 m!7752442))

(assert (=> b!7041038 m!7752434))

(declare-fun m!7752444 () Bool)

(assert (=> b!7041038 m!7752444))

(assert (=> d!2198245 m!7752442))

(declare-fun m!7752446 () Bool)

(assert (=> d!2198245 m!7752446))

(declare-fun m!7752448 () Bool)

(assert (=> d!2198245 m!7752448))

(assert (=> b!7040909 d!2198245))

(declare-fun bm!639491 () Bool)

(declare-fun call!639496 () (Set Context!12972))

(declare-fun call!639500 () (Set Context!12972))

(assert (=> bm!639491 (= call!639496 call!639500)))

(declare-fun b!7041063 () Bool)

(declare-fun e!4232825 () (Set Context!12972))

(assert (=> b!7041063 (= e!4232825 call!639496)))

(declare-fun b!7041064 () Bool)

(declare-fun e!4232826 () (Set Context!12972))

(assert (=> b!7041064 (= e!4232826 call!639496)))

(declare-fun d!2198247 () Bool)

(declare-fun c!1310559 () Bool)

(assert (=> d!2198247 (= c!1310559 (and (is-ElementMatch!17490 (h!74322 (exprs!6986 lt!2524342))) (= (c!1310524 (h!74322 (exprs!6986 lt!2524342))) (h!74323 s!7408))))))

(declare-fun e!4232827 () (Set Context!12972))

(assert (=> d!2198247 (= (derivationStepZipperDown!2154 (h!74322 (exprs!6986 lt!2524342)) lt!2524348 (h!74323 s!7408)) e!4232827)))

(declare-fun b!7041065 () Bool)

(declare-fun e!4232829 () (Set Context!12972))

(assert (=> b!7041065 (= e!4232829 e!4232825)))

(declare-fun c!1310555 () Bool)

(assert (=> b!7041065 (= c!1310555 (is-Concat!26335 (h!74322 (exprs!6986 lt!2524342))))))

(declare-fun call!639501 () List!67998)

(declare-fun call!639499 () (Set Context!12972))

(declare-fun c!1310557 () Bool)

(declare-fun bm!639492 () Bool)

(assert (=> bm!639492 (= call!639499 (derivationStepZipperDown!2154 (ite c!1310557 (regOne!35493 (h!74322 (exprs!6986 lt!2524342))) (regOne!35492 (h!74322 (exprs!6986 lt!2524342)))) (ite c!1310557 lt!2524348 (Context!12973 call!639501)) (h!74323 s!7408)))))

(declare-fun b!7041066 () Bool)

(declare-fun e!4232828 () Bool)

(assert (=> b!7041066 (= e!4232828 (nullable!7201 (regOne!35492 (h!74322 (exprs!6986 lt!2524342)))))))

(declare-fun b!7041067 () Bool)

(assert (=> b!7041067 (= e!4232827 (set.insert lt!2524348 (as set.empty (Set Context!12972))))))

(declare-fun bm!639493 () Bool)

(declare-fun c!1310558 () Bool)

(declare-fun $colon$colon!2590 (List!67998 Regex!17490) List!67998)

(assert (=> bm!639493 (= call!639501 ($colon$colon!2590 (exprs!6986 lt!2524348) (ite (or c!1310558 c!1310555) (regTwo!35492 (h!74322 (exprs!6986 lt!2524342))) (h!74322 (exprs!6986 lt!2524342)))))))

(declare-fun b!7041068 () Bool)

(assert (=> b!7041068 (= e!4232829 (set.union call!639499 call!639500))))

(declare-fun call!639497 () (Set Context!12972))

(declare-fun call!639498 () List!67998)

(declare-fun bm!639494 () Bool)

(assert (=> bm!639494 (= call!639497 (derivationStepZipperDown!2154 (ite c!1310557 (regTwo!35493 (h!74322 (exprs!6986 lt!2524342))) (ite c!1310558 (regTwo!35492 (h!74322 (exprs!6986 lt!2524342))) (ite c!1310555 (regOne!35492 (h!74322 (exprs!6986 lt!2524342))) (reg!17819 (h!74322 (exprs!6986 lt!2524342)))))) (ite (or c!1310557 c!1310558) lt!2524348 (Context!12973 call!639498)) (h!74323 s!7408)))))

(declare-fun b!7041069 () Bool)

(declare-fun c!1310556 () Bool)

(assert (=> b!7041069 (= c!1310556 (is-Star!17490 (h!74322 (exprs!6986 lt!2524342))))))

(assert (=> b!7041069 (= e!4232825 e!4232826)))

(declare-fun bm!639495 () Bool)

(assert (=> bm!639495 (= call!639500 call!639497)))

(declare-fun b!7041070 () Bool)

(declare-fun e!4232824 () (Set Context!12972))

(assert (=> b!7041070 (= e!4232824 (set.union call!639499 call!639497))))

(declare-fun b!7041071 () Bool)

(assert (=> b!7041071 (= e!4232826 (as set.empty (Set Context!12972)))))

(declare-fun b!7041072 () Bool)

(assert (=> b!7041072 (= e!4232827 e!4232824)))

(assert (=> b!7041072 (= c!1310557 (is-Union!17490 (h!74322 (exprs!6986 lt!2524342))))))

(declare-fun bm!639496 () Bool)

(assert (=> bm!639496 (= call!639498 call!639501)))

(declare-fun b!7041073 () Bool)

(assert (=> b!7041073 (= c!1310558 e!4232828)))

(declare-fun res!2874508 () Bool)

(assert (=> b!7041073 (=> (not res!2874508) (not e!4232828))))

(assert (=> b!7041073 (= res!2874508 (is-Concat!26335 (h!74322 (exprs!6986 lt!2524342))))))

(assert (=> b!7041073 (= e!4232824 e!4232829)))

(assert (= (and d!2198247 c!1310559) b!7041067))

(assert (= (and d!2198247 (not c!1310559)) b!7041072))

(assert (= (and b!7041072 c!1310557) b!7041070))

(assert (= (and b!7041072 (not c!1310557)) b!7041073))

(assert (= (and b!7041073 res!2874508) b!7041066))

(assert (= (and b!7041073 c!1310558) b!7041068))

(assert (= (and b!7041073 (not c!1310558)) b!7041065))

(assert (= (and b!7041065 c!1310555) b!7041063))

(assert (= (and b!7041065 (not c!1310555)) b!7041069))

(assert (= (and b!7041069 c!1310556) b!7041064))

(assert (= (and b!7041069 (not c!1310556)) b!7041071))

(assert (= (or b!7041063 b!7041064) bm!639496))

(assert (= (or b!7041063 b!7041064) bm!639491))

(assert (= (or b!7041068 bm!639491) bm!639495))

(assert (= (or b!7041068 bm!639496) bm!639493))

(assert (= (or b!7041070 b!7041068) bm!639492))

(assert (= (or b!7041070 bm!639495) bm!639494))

(declare-fun m!7752450 () Bool)

(assert (=> b!7041066 m!7752450))

(declare-fun m!7752452 () Bool)

(assert (=> bm!639492 m!7752452))

(declare-fun m!7752454 () Bool)

(assert (=> bm!639493 m!7752454))

(declare-fun m!7752456 () Bool)

(assert (=> b!7041067 m!7752456))

(declare-fun m!7752458 () Bool)

(assert (=> bm!639494 m!7752458))

(assert (=> b!7040909 d!2198247))

(declare-fun d!2198249 () Bool)

(declare-fun isEmpty!39607 (Option!16891) Bool)

(assert (=> d!2198249 (= (isDefined!13592 lt!2524339) (not (isEmpty!39607 lt!2524339)))))

(declare-fun bs!1873262 () Bool)

(assert (= bs!1873262 d!2198249))

(declare-fun m!7752460 () Bool)

(assert (=> bs!1873262 m!7752460))

(assert (=> b!7040909 d!2198249))

(declare-fun d!2198251 () Bool)

(assert (=> d!2198251 (isDefined!13592 (findConcatSeparationZippers!407 lt!2524371 (set.insert ct2!306 (as set.empty (Set Context!12972))) Nil!67875 (t!381770 s!7408) (t!381770 s!7408)))))

(declare-fun lt!2524508 () Unit!161660)

(declare-fun choose!53442 ((Set Context!12972) Context!12972 List!67999) Unit!161660)

(assert (=> d!2198251 (= lt!2524508 (choose!53442 lt!2524371 ct2!306 (t!381770 s!7408)))))

(assert (=> d!2198251 (matchZipper!3030 (appendTo!611 lt!2524371 ct2!306) (t!381770 s!7408))))

(assert (=> d!2198251 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!395 lt!2524371 ct2!306 (t!381770 s!7408)) lt!2524508)))

(declare-fun bs!1873263 () Bool)

(assert (= bs!1873263 d!2198251))

(declare-fun m!7752462 () Bool)

(assert (=> bs!1873263 m!7752462))

(assert (=> bs!1873263 m!7752262))

(declare-fun m!7752464 () Bool)

(assert (=> bs!1873263 m!7752464))

(declare-fun m!7752466 () Bool)

(assert (=> bs!1873263 m!7752466))

(assert (=> bs!1873263 m!7752262))

(declare-fun m!7752468 () Bool)

(assert (=> bs!1873263 m!7752468))

(assert (=> bs!1873263 m!7752264))

(assert (=> bs!1873263 m!7752464))

(assert (=> bs!1873263 m!7752264))

(assert (=> b!7040909 d!2198251))

(declare-fun bs!1873264 () Bool)

(declare-fun d!2198253 () Bool)

(assert (= bs!1873264 (and d!2198253 b!7040924)))

(declare-fun lambda!416842 () Int)

(assert (=> bs!1873264 (= lambda!416842 lambda!416787)))

(declare-fun bs!1873265 () Bool)

(assert (= bs!1873265 (and d!2198253 d!2198229)))

(assert (=> bs!1873265 (= lambda!416842 lambda!416838)))

(assert (=> d!2198253 (= (derivationStepZipperDown!2154 (h!74322 (exprs!6986 lt!2524342)) (Context!12973 (++!15556 (exprs!6986 lt!2524348) (exprs!6986 ct2!306))) (h!74323 s!7408)) (appendTo!611 (derivationStepZipperDown!2154 (h!74322 (exprs!6986 lt!2524342)) lt!2524348 (h!74323 s!7408)) ct2!306))))

(declare-fun lt!2524514 () Unit!161660)

(assert (=> d!2198253 (= lt!2524514 (lemmaConcatPreservesForall!811 (exprs!6986 lt!2524348) (exprs!6986 ct2!306) lambda!416842))))

(declare-fun lt!2524513 () Unit!161660)

(declare-fun choose!53443 (Context!12972 Regex!17490 C!35250 Context!12972) Unit!161660)

(assert (=> d!2198253 (= lt!2524513 (choose!53443 lt!2524348 (h!74322 (exprs!6986 lt!2524342)) (h!74323 s!7408) ct2!306))))

(declare-fun validRegex!8936 (Regex!17490) Bool)

(assert (=> d!2198253 (validRegex!8936 (h!74322 (exprs!6986 lt!2524342)))))

(assert (=> d!2198253 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!69 lt!2524348 (h!74322 (exprs!6986 lt!2524342)) (h!74323 s!7408) ct2!306) lt!2524513)))

(declare-fun bs!1873266 () Bool)

(assert (= bs!1873266 d!2198253))

(declare-fun m!7752470 () Bool)

(assert (=> bs!1873266 m!7752470))

(declare-fun m!7752472 () Bool)

(assert (=> bs!1873266 m!7752472))

(declare-fun m!7752474 () Bool)

(assert (=> bs!1873266 m!7752474))

(assert (=> bs!1873266 m!7752276))

(declare-fun m!7752476 () Bool)

(assert (=> bs!1873266 m!7752476))

(declare-fun m!7752478 () Bool)

(assert (=> bs!1873266 m!7752478))

(assert (=> bs!1873266 m!7752276))

(declare-fun m!7752480 () Bool)

(assert (=> bs!1873266 m!7752480))

(assert (=> b!7040909 d!2198253))

(assert (=> b!7040918 d!2198241))

(declare-fun d!2198255 () Bool)

(declare-fun c!1310561 () Bool)

(assert (=> d!2198255 (= c!1310561 (isEmpty!39606 (t!381770 s!7408)))))

(declare-fun e!4232830 () Bool)

(assert (=> d!2198255 (= (matchZipper!3030 lt!2524363 (t!381770 s!7408)) e!4232830)))

(declare-fun b!7041074 () Bool)

(assert (=> b!7041074 (= e!4232830 (nullableZipper!2596 lt!2524363))))

(declare-fun b!7041075 () Bool)

(assert (=> b!7041075 (= e!4232830 (matchZipper!3030 (derivationStepZipper!2946 lt!2524363 (head!14287 (t!381770 s!7408))) (tail!13598 (t!381770 s!7408))))))

(assert (= (and d!2198255 c!1310561) b!7041074))

(assert (= (and d!2198255 (not c!1310561)) b!7041075))

(declare-fun m!7752482 () Bool)

(assert (=> d!2198255 m!7752482))

(declare-fun m!7752484 () Bool)

(assert (=> b!7041074 m!7752484))

(declare-fun m!7752486 () Bool)

(assert (=> b!7041075 m!7752486))

(assert (=> b!7041075 m!7752486))

(declare-fun m!7752488 () Bool)

(assert (=> b!7041075 m!7752488))

(declare-fun m!7752490 () Bool)

(assert (=> b!7041075 m!7752490))

(assert (=> b!7041075 m!7752488))

(assert (=> b!7041075 m!7752490))

(declare-fun m!7752492 () Bool)

(assert (=> b!7041075 m!7752492))

(assert (=> b!7040927 d!2198255))

(assert (=> b!7040927 d!2198241))

(assert (=> b!7040917 d!2198231))

(declare-fun d!2198257 () Bool)

(declare-fun dynLambda!27449 (Int Context!12972) (Set Context!12972))

(assert (=> d!2198257 (= (flatMap!2437 lt!2524337 lambda!416788) (dynLambda!27449 lambda!416788 lt!2524368))))

(declare-fun lt!2524517 () Unit!161660)

(declare-fun choose!53444 ((Set Context!12972) Context!12972 Int) Unit!161660)

(assert (=> d!2198257 (= lt!2524517 (choose!53444 lt!2524337 lt!2524368 lambda!416788))))

(assert (=> d!2198257 (= lt!2524337 (set.insert lt!2524368 (as set.empty (Set Context!12972))))))

(assert (=> d!2198257 (= (lemmaFlatMapOnSingletonSet!1951 lt!2524337 lt!2524368 lambda!416788) lt!2524517)))

(declare-fun b_lambda!267287 () Bool)

(assert (=> (not b_lambda!267287) (not d!2198257)))

(declare-fun bs!1873267 () Bool)

(assert (= bs!1873267 d!2198257))

(assert (=> bs!1873267 m!7752218))

(declare-fun m!7752494 () Bool)

(assert (=> bs!1873267 m!7752494))

(declare-fun m!7752496 () Bool)

(assert (=> bs!1873267 m!7752496))

(assert (=> bs!1873267 m!7752250))

(assert (=> b!7040917 d!2198257))

(declare-fun d!2198259 () Bool)

(declare-fun choose!53445 ((Set Context!12972) Int) (Set Context!12972))

(assert (=> d!2198259 (= (flatMap!2437 lt!2524337 lambda!416788) (choose!53445 lt!2524337 lambda!416788))))

(declare-fun bs!1873268 () Bool)

(assert (= bs!1873268 d!2198259))

(declare-fun m!7752498 () Bool)

(assert (=> bs!1873268 m!7752498))

(assert (=> b!7040917 d!2198259))

(declare-fun b!7041086 () Bool)

(declare-fun e!4232837 () (Set Context!12972))

(declare-fun call!639504 () (Set Context!12972))

(assert (=> b!7041086 (= e!4232837 call!639504)))

(declare-fun b!7041087 () Bool)

(declare-fun e!4232838 () Bool)

(assert (=> b!7041087 (= e!4232838 (nullable!7201 (h!74322 (exprs!6986 lt!2524368))))))

(declare-fun bm!639499 () Bool)

(assert (=> bm!639499 (= call!639504 (derivationStepZipperDown!2154 (h!74322 (exprs!6986 lt!2524368)) (Context!12973 (t!381769 (exprs!6986 lt!2524368))) (h!74323 s!7408)))))

(declare-fun b!7041089 () Bool)

(declare-fun e!4232839 () (Set Context!12972))

(assert (=> b!7041089 (= e!4232839 e!4232837)))

(declare-fun c!1310566 () Bool)

(assert (=> b!7041089 (= c!1310566 (is-Cons!67874 (exprs!6986 lt!2524368)))))

(declare-fun b!7041090 () Bool)

(assert (=> b!7041090 (= e!4232839 (set.union call!639504 (derivationStepZipperUp!2100 (Context!12973 (t!381769 (exprs!6986 lt!2524368))) (h!74323 s!7408))))))

(declare-fun b!7041088 () Bool)

(assert (=> b!7041088 (= e!4232837 (as set.empty (Set Context!12972)))))

(declare-fun d!2198261 () Bool)

(declare-fun c!1310567 () Bool)

(assert (=> d!2198261 (= c!1310567 e!4232838)))

(declare-fun res!2874511 () Bool)

(assert (=> d!2198261 (=> (not res!2874511) (not e!4232838))))

(assert (=> d!2198261 (= res!2874511 (is-Cons!67874 (exprs!6986 lt!2524368)))))

(assert (=> d!2198261 (= (derivationStepZipperUp!2100 lt!2524368 (h!74323 s!7408)) e!4232839)))

(assert (= (and d!2198261 res!2874511) b!7041087))

(assert (= (and d!2198261 c!1310567) b!7041090))

(assert (= (and d!2198261 (not c!1310567)) b!7041089))

(assert (= (and b!7041089 c!1310566) b!7041086))

(assert (= (and b!7041089 (not c!1310566)) b!7041088))

(assert (= (or b!7041090 b!7041086) bm!639499))

(declare-fun m!7752500 () Bool)

(assert (=> b!7041087 m!7752500))

(declare-fun m!7752502 () Bool)

(assert (=> bm!639499 m!7752502))

(declare-fun m!7752504 () Bool)

(assert (=> b!7041090 m!7752504))

(assert (=> b!7040917 d!2198261))

(declare-fun bs!1873269 () Bool)

(declare-fun d!2198263 () Bool)

(assert (= bs!1873269 (and d!2198263 b!7040917)))

(declare-fun lambda!416845 () Int)

(assert (=> bs!1873269 (= lambda!416845 lambda!416788)))

(assert (=> d!2198263 true))

(assert (=> d!2198263 (= (derivationStepZipper!2946 lt!2524337 (h!74323 s!7408)) (flatMap!2437 lt!2524337 lambda!416845))))

(declare-fun bs!1873270 () Bool)

(assert (= bs!1873270 d!2198263))

(declare-fun m!7752506 () Bool)

(assert (=> bs!1873270 m!7752506))

(assert (=> b!7040917 d!2198263))

(assert (=> b!7040907 d!2198255))

(declare-fun e!4232845 () Bool)

(declare-fun lt!2524520 () List!67998)

(declare-fun b!7041104 () Bool)

(assert (=> b!7041104 (= e!4232845 (or (not (= (exprs!6986 ct2!306) Nil!67874)) (= lt!2524520 lt!2524341)))))

(declare-fun b!7041103 () Bool)

(declare-fun res!2874517 () Bool)

(assert (=> b!7041103 (=> (not res!2874517) (not e!4232845))))

(declare-fun size!41091 (List!67998) Int)

(assert (=> b!7041103 (= res!2874517 (= (size!41091 lt!2524520) (+ (size!41091 lt!2524341) (size!41091 (exprs!6986 ct2!306)))))))

(declare-fun b!7041102 () Bool)

(declare-fun e!4232844 () List!67998)

(assert (=> b!7041102 (= e!4232844 (Cons!67874 (h!74322 lt!2524341) (++!15556 (t!381769 lt!2524341) (exprs!6986 ct2!306))))))

(declare-fun d!2198265 () Bool)

(assert (=> d!2198265 e!4232845))

(declare-fun res!2874516 () Bool)

(assert (=> d!2198265 (=> (not res!2874516) (not e!4232845))))

(declare-fun content!13577 (List!67998) (Set Regex!17490))

(assert (=> d!2198265 (= res!2874516 (= (content!13577 lt!2524520) (set.union (content!13577 lt!2524341) (content!13577 (exprs!6986 ct2!306)))))))

(assert (=> d!2198265 (= lt!2524520 e!4232844)))

(declare-fun c!1310572 () Bool)

(assert (=> d!2198265 (= c!1310572 (is-Nil!67874 lt!2524341))))

(assert (=> d!2198265 (= (++!15556 lt!2524341 (exprs!6986 ct2!306)) lt!2524520)))

(declare-fun b!7041101 () Bool)

(assert (=> b!7041101 (= e!4232844 (exprs!6986 ct2!306))))

(assert (= (and d!2198265 c!1310572) b!7041101))

(assert (= (and d!2198265 (not c!1310572)) b!7041102))

(assert (= (and d!2198265 res!2874516) b!7041103))

(assert (= (and b!7041103 res!2874517) b!7041104))

(declare-fun m!7752508 () Bool)

(assert (=> b!7041103 m!7752508))

(declare-fun m!7752510 () Bool)

(assert (=> b!7041103 m!7752510))

(declare-fun m!7752512 () Bool)

(assert (=> b!7041103 m!7752512))

(declare-fun m!7752514 () Bool)

(assert (=> b!7041102 m!7752514))

(declare-fun m!7752516 () Bool)

(assert (=> d!2198265 m!7752516))

(declare-fun m!7752518 () Bool)

(assert (=> d!2198265 m!7752518))

(declare-fun m!7752520 () Bool)

(assert (=> d!2198265 m!7752520))

(assert (=> b!7040926 d!2198265))

(declare-fun b!7041105 () Bool)

(declare-fun e!4232846 () (Set Context!12972))

(declare-fun call!639505 () (Set Context!12972))

(assert (=> b!7041105 (= e!4232846 call!639505)))

(declare-fun b!7041106 () Bool)

(declare-fun e!4232847 () Bool)

(assert (=> b!7041106 (= e!4232847 (nullable!7201 (h!74322 (exprs!6986 lt!2524356))))))

(declare-fun bm!639500 () Bool)

(assert (=> bm!639500 (= call!639505 (derivationStepZipperDown!2154 (h!74322 (exprs!6986 lt!2524356)) (Context!12973 (t!381769 (exprs!6986 lt!2524356))) (h!74323 s!7408)))))

(declare-fun b!7041108 () Bool)

(declare-fun e!4232848 () (Set Context!12972))

(assert (=> b!7041108 (= e!4232848 e!4232846)))

(declare-fun c!1310573 () Bool)

(assert (=> b!7041108 (= c!1310573 (is-Cons!67874 (exprs!6986 lt!2524356)))))

(declare-fun b!7041109 () Bool)

(assert (=> b!7041109 (= e!4232848 (set.union call!639505 (derivationStepZipperUp!2100 (Context!12973 (t!381769 (exprs!6986 lt!2524356))) (h!74323 s!7408))))))

(declare-fun b!7041107 () Bool)

(assert (=> b!7041107 (= e!4232846 (as set.empty (Set Context!12972)))))

(declare-fun d!2198267 () Bool)

(declare-fun c!1310574 () Bool)

(assert (=> d!2198267 (= c!1310574 e!4232847)))

(declare-fun res!2874518 () Bool)

(assert (=> d!2198267 (=> (not res!2874518) (not e!4232847))))

(assert (=> d!2198267 (= res!2874518 (is-Cons!67874 (exprs!6986 lt!2524356)))))

(assert (=> d!2198267 (= (derivationStepZipperUp!2100 lt!2524356 (h!74323 s!7408)) e!4232848)))

(assert (= (and d!2198267 res!2874518) b!7041106))

(assert (= (and d!2198267 c!1310574) b!7041109))

(assert (= (and d!2198267 (not c!1310574)) b!7041108))

(assert (= (and b!7041108 c!1310573) b!7041105))

(assert (= (and b!7041108 (not c!1310573)) b!7041107))

(assert (= (or b!7041109 b!7041105) bm!639500))

(declare-fun m!7752522 () Bool)

(assert (=> b!7041106 m!7752522))

(declare-fun m!7752524 () Bool)

(assert (=> bm!639500 m!7752524))

(declare-fun m!7752526 () Bool)

(assert (=> b!7041109 m!7752526))

(assert (=> b!7040926 d!2198267))

(declare-fun bm!639501 () Bool)

(declare-fun call!639506 () (Set Context!12972))

(declare-fun call!639510 () (Set Context!12972))

(assert (=> bm!639501 (= call!639506 call!639510)))

(declare-fun b!7041110 () Bool)

(declare-fun e!4232850 () (Set Context!12972))

(assert (=> b!7041110 (= e!4232850 call!639506)))

(declare-fun b!7041111 () Bool)

(declare-fun e!4232851 () (Set Context!12972))

(assert (=> b!7041111 (= e!4232851 call!639506)))

(declare-fun d!2198269 () Bool)

(declare-fun c!1310579 () Bool)

(assert (=> d!2198269 (= c!1310579 (and (is-ElementMatch!17490 (h!74322 (exprs!6986 lt!2524342))) (= (c!1310524 (h!74322 (exprs!6986 lt!2524342))) (h!74323 s!7408))))))

(declare-fun e!4232852 () (Set Context!12972))

(assert (=> d!2198269 (= (derivationStepZipperDown!2154 (h!74322 (exprs!6986 lt!2524342)) lt!2524356 (h!74323 s!7408)) e!4232852)))

(declare-fun b!7041112 () Bool)

(declare-fun e!4232854 () (Set Context!12972))

(assert (=> b!7041112 (= e!4232854 e!4232850)))

(declare-fun c!1310575 () Bool)

(assert (=> b!7041112 (= c!1310575 (is-Concat!26335 (h!74322 (exprs!6986 lt!2524342))))))

(declare-fun call!639509 () (Set Context!12972))

(declare-fun c!1310577 () Bool)

(declare-fun bm!639502 () Bool)

(declare-fun call!639511 () List!67998)

(assert (=> bm!639502 (= call!639509 (derivationStepZipperDown!2154 (ite c!1310577 (regOne!35493 (h!74322 (exprs!6986 lt!2524342))) (regOne!35492 (h!74322 (exprs!6986 lt!2524342)))) (ite c!1310577 lt!2524356 (Context!12973 call!639511)) (h!74323 s!7408)))))

(declare-fun b!7041113 () Bool)

(declare-fun e!4232853 () Bool)

(assert (=> b!7041113 (= e!4232853 (nullable!7201 (regOne!35492 (h!74322 (exprs!6986 lt!2524342)))))))

(declare-fun b!7041114 () Bool)

(assert (=> b!7041114 (= e!4232852 (set.insert lt!2524356 (as set.empty (Set Context!12972))))))

(declare-fun bm!639503 () Bool)

(declare-fun c!1310578 () Bool)

(assert (=> bm!639503 (= call!639511 ($colon$colon!2590 (exprs!6986 lt!2524356) (ite (or c!1310578 c!1310575) (regTwo!35492 (h!74322 (exprs!6986 lt!2524342))) (h!74322 (exprs!6986 lt!2524342)))))))

(declare-fun b!7041115 () Bool)

(assert (=> b!7041115 (= e!4232854 (set.union call!639509 call!639510))))

(declare-fun call!639508 () List!67998)

(declare-fun bm!639504 () Bool)

(declare-fun call!639507 () (Set Context!12972))

(assert (=> bm!639504 (= call!639507 (derivationStepZipperDown!2154 (ite c!1310577 (regTwo!35493 (h!74322 (exprs!6986 lt!2524342))) (ite c!1310578 (regTwo!35492 (h!74322 (exprs!6986 lt!2524342))) (ite c!1310575 (regOne!35492 (h!74322 (exprs!6986 lt!2524342))) (reg!17819 (h!74322 (exprs!6986 lt!2524342)))))) (ite (or c!1310577 c!1310578) lt!2524356 (Context!12973 call!639508)) (h!74323 s!7408)))))

(declare-fun b!7041116 () Bool)

(declare-fun c!1310576 () Bool)

(assert (=> b!7041116 (= c!1310576 (is-Star!17490 (h!74322 (exprs!6986 lt!2524342))))))

(assert (=> b!7041116 (= e!4232850 e!4232851)))

(declare-fun bm!639505 () Bool)

(assert (=> bm!639505 (= call!639510 call!639507)))

(declare-fun b!7041117 () Bool)

(declare-fun e!4232849 () (Set Context!12972))

(assert (=> b!7041117 (= e!4232849 (set.union call!639509 call!639507))))

(declare-fun b!7041118 () Bool)

(assert (=> b!7041118 (= e!4232851 (as set.empty (Set Context!12972)))))

(declare-fun b!7041119 () Bool)

(assert (=> b!7041119 (= e!4232852 e!4232849)))

(assert (=> b!7041119 (= c!1310577 (is-Union!17490 (h!74322 (exprs!6986 lt!2524342))))))

(declare-fun bm!639506 () Bool)

(assert (=> bm!639506 (= call!639508 call!639511)))

(declare-fun b!7041120 () Bool)

(assert (=> b!7041120 (= c!1310578 e!4232853)))

(declare-fun res!2874519 () Bool)

(assert (=> b!7041120 (=> (not res!2874519) (not e!4232853))))

(assert (=> b!7041120 (= res!2874519 (is-Concat!26335 (h!74322 (exprs!6986 lt!2524342))))))

(assert (=> b!7041120 (= e!4232849 e!4232854)))

(assert (= (and d!2198269 c!1310579) b!7041114))

(assert (= (and d!2198269 (not c!1310579)) b!7041119))

(assert (= (and b!7041119 c!1310577) b!7041117))

(assert (= (and b!7041119 (not c!1310577)) b!7041120))

(assert (= (and b!7041120 res!2874519) b!7041113))

(assert (= (and b!7041120 c!1310578) b!7041115))

(assert (= (and b!7041120 (not c!1310578)) b!7041112))

(assert (= (and b!7041112 c!1310575) b!7041110))

(assert (= (and b!7041112 (not c!1310575)) b!7041116))

(assert (= (and b!7041116 c!1310576) b!7041111))

(assert (= (and b!7041116 (not c!1310576)) b!7041118))

(assert (= (or b!7041110 b!7041111) bm!639506))

(assert (= (or b!7041110 b!7041111) bm!639501))

(assert (= (or b!7041115 bm!639501) bm!639505))

(assert (= (or b!7041115 bm!639506) bm!639503))

(assert (= (or b!7041117 b!7041115) bm!639502))

(assert (= (or b!7041117 bm!639505) bm!639504))

(assert (=> b!7041113 m!7752450))

(declare-fun m!7752528 () Bool)

(assert (=> bm!639502 m!7752528))

(declare-fun m!7752530 () Bool)

(assert (=> bm!639503 m!7752530))

(declare-fun m!7752532 () Bool)

(assert (=> b!7041114 m!7752532))

(declare-fun m!7752534 () Bool)

(assert (=> bm!639504 m!7752534))

(assert (=> b!7040926 d!2198269))

(assert (=> b!7040926 d!2198241))

(assert (=> b!7040906 d!2198241))

(declare-fun d!2198271 () Bool)

(declare-fun c!1310580 () Bool)

(assert (=> d!2198271 (= c!1310580 (isEmpty!39606 (t!381770 s!7408)))))

(declare-fun e!4232855 () Bool)

(assert (=> d!2198271 (= (matchZipper!3030 lt!2524352 (t!381770 s!7408)) e!4232855)))

(declare-fun b!7041121 () Bool)

(assert (=> b!7041121 (= e!4232855 (nullableZipper!2596 lt!2524352))))

(declare-fun b!7041122 () Bool)

(assert (=> b!7041122 (= e!4232855 (matchZipper!3030 (derivationStepZipper!2946 lt!2524352 (head!14287 (t!381770 s!7408))) (tail!13598 (t!381770 s!7408))))))

(assert (= (and d!2198271 c!1310580) b!7041121))

(assert (= (and d!2198271 (not c!1310580)) b!7041122))

(assert (=> d!2198271 m!7752482))

(declare-fun m!7752536 () Bool)

(assert (=> b!7041121 m!7752536))

(assert (=> b!7041122 m!7752486))

(assert (=> b!7041122 m!7752486))

(declare-fun m!7752538 () Bool)

(assert (=> b!7041122 m!7752538))

(assert (=> b!7041122 m!7752490))

(assert (=> b!7041122 m!7752538))

(assert (=> b!7041122 m!7752490))

(declare-fun m!7752540 () Bool)

(assert (=> b!7041122 m!7752540))

(assert (=> b!7040906 d!2198271))

(declare-fun e!4232858 () Bool)

(declare-fun d!2198273 () Bool)

(assert (=> d!2198273 (= (matchZipper!3030 (set.union lt!2524370 lt!2524363) (t!381770 s!7408)) e!4232858)))

(declare-fun res!2874522 () Bool)

(assert (=> d!2198273 (=> res!2874522 e!4232858)))

(assert (=> d!2198273 (= res!2874522 (matchZipper!3030 lt!2524370 (t!381770 s!7408)))))

(declare-fun lt!2524523 () Unit!161660)

(declare-fun choose!53446 ((Set Context!12972) (Set Context!12972) List!67999) Unit!161660)

(assert (=> d!2198273 (= lt!2524523 (choose!53446 lt!2524370 lt!2524363 (t!381770 s!7408)))))

(assert (=> d!2198273 (= (lemmaZipperConcatMatchesSameAsBothZippers!1563 lt!2524370 lt!2524363 (t!381770 s!7408)) lt!2524523)))

(declare-fun b!7041125 () Bool)

(assert (=> b!7041125 (= e!4232858 (matchZipper!3030 lt!2524363 (t!381770 s!7408)))))

(assert (= (and d!2198273 (not res!2874522)) b!7041125))

(declare-fun m!7752542 () Bool)

(assert (=> d!2198273 m!7752542))

(assert (=> d!2198273 m!7752246))

(declare-fun m!7752544 () Bool)

(assert (=> d!2198273 m!7752544))

(assert (=> b!7041125 m!7752258))

(assert (=> b!7040906 d!2198273))

(declare-fun d!2198275 () Bool)

(declare-fun c!1310581 () Bool)

(assert (=> d!2198275 (= c!1310581 (isEmpty!39606 (t!381770 s!7408)))))

(declare-fun e!4232859 () Bool)

(assert (=> d!2198275 (= (matchZipper!3030 lt!2524370 (t!381770 s!7408)) e!4232859)))

(declare-fun b!7041126 () Bool)

(assert (=> b!7041126 (= e!4232859 (nullableZipper!2596 lt!2524370))))

(declare-fun b!7041127 () Bool)

(assert (=> b!7041127 (= e!4232859 (matchZipper!3030 (derivationStepZipper!2946 lt!2524370 (head!14287 (t!381770 s!7408))) (tail!13598 (t!381770 s!7408))))))

(assert (= (and d!2198275 c!1310581) b!7041126))

(assert (= (and d!2198275 (not c!1310581)) b!7041127))

(assert (=> d!2198275 m!7752482))

(declare-fun m!7752546 () Bool)

(assert (=> b!7041126 m!7752546))

(assert (=> b!7041127 m!7752486))

(assert (=> b!7041127 m!7752486))

(declare-fun m!7752548 () Bool)

(assert (=> b!7041127 m!7752548))

(assert (=> b!7041127 m!7752490))

(assert (=> b!7041127 m!7752548))

(assert (=> b!7041127 m!7752490))

(declare-fun m!7752550 () Bool)

(assert (=> b!7041127 m!7752550))

(assert (=> b!7040906 d!2198275))

(declare-fun d!2198277 () Bool)

(declare-fun c!1310582 () Bool)

(assert (=> d!2198277 (= c!1310582 (isEmpty!39606 (t!381770 s!7408)))))

(declare-fun e!4232860 () Bool)

(assert (=> d!2198277 (= (matchZipper!3030 lt!2524358 (t!381770 s!7408)) e!4232860)))

(declare-fun b!7041128 () Bool)

(assert (=> b!7041128 (= e!4232860 (nullableZipper!2596 lt!2524358))))

(declare-fun b!7041129 () Bool)

(assert (=> b!7041129 (= e!4232860 (matchZipper!3030 (derivationStepZipper!2946 lt!2524358 (head!14287 (t!381770 s!7408))) (tail!13598 (t!381770 s!7408))))))

(assert (= (and d!2198277 c!1310582) b!7041128))

(assert (= (and d!2198277 (not c!1310582)) b!7041129))

(assert (=> d!2198277 m!7752482))

(declare-fun m!7752552 () Bool)

(assert (=> b!7041128 m!7752552))

(assert (=> b!7041129 m!7752486))

(assert (=> b!7041129 m!7752486))

(declare-fun m!7752554 () Bool)

(assert (=> b!7041129 m!7752554))

(assert (=> b!7041129 m!7752490))

(assert (=> b!7041129 m!7752554))

(assert (=> b!7041129 m!7752490))

(declare-fun m!7752556 () Bool)

(assert (=> b!7041129 m!7752556))

(assert (=> b!7040906 d!2198277))

(assert (=> b!7040925 d!2198255))

(assert (=> b!7040925 d!2198241))

(declare-fun b!7041133 () Bool)

(declare-fun lt!2524524 () List!67998)

(declare-fun e!4232862 () Bool)

(assert (=> b!7041133 (= e!4232862 (or (not (= (exprs!6986 ct2!306) Nil!67874)) (= lt!2524524 (exprs!6986 lt!2524342))))))

(declare-fun b!7041132 () Bool)

(declare-fun res!2874524 () Bool)

(assert (=> b!7041132 (=> (not res!2874524) (not e!4232862))))

(assert (=> b!7041132 (= res!2874524 (= (size!41091 lt!2524524) (+ (size!41091 (exprs!6986 lt!2524342)) (size!41091 (exprs!6986 ct2!306)))))))

(declare-fun b!7041131 () Bool)

(declare-fun e!4232861 () List!67998)

(assert (=> b!7041131 (= e!4232861 (Cons!67874 (h!74322 (exprs!6986 lt!2524342)) (++!15556 (t!381769 (exprs!6986 lt!2524342)) (exprs!6986 ct2!306))))))

(declare-fun d!2198279 () Bool)

(assert (=> d!2198279 e!4232862))

(declare-fun res!2874523 () Bool)

(assert (=> d!2198279 (=> (not res!2874523) (not e!4232862))))

(assert (=> d!2198279 (= res!2874523 (= (content!13577 lt!2524524) (set.union (content!13577 (exprs!6986 lt!2524342)) (content!13577 (exprs!6986 ct2!306)))))))

(assert (=> d!2198279 (= lt!2524524 e!4232861)))

(declare-fun c!1310583 () Bool)

(assert (=> d!2198279 (= c!1310583 (is-Nil!67874 (exprs!6986 lt!2524342)))))

(assert (=> d!2198279 (= (++!15556 (exprs!6986 lt!2524342) (exprs!6986 ct2!306)) lt!2524524)))

(declare-fun b!7041130 () Bool)

(assert (=> b!7041130 (= e!4232861 (exprs!6986 ct2!306))))

(assert (= (and d!2198279 c!1310583) b!7041130))

(assert (= (and d!2198279 (not c!1310583)) b!7041131))

(assert (= (and d!2198279 res!2874523) b!7041132))

(assert (= (and b!7041132 res!2874524) b!7041133))

(declare-fun m!7752558 () Bool)

(assert (=> b!7041132 m!7752558))

(declare-fun m!7752560 () Bool)

(assert (=> b!7041132 m!7752560))

(assert (=> b!7041132 m!7752512))

(declare-fun m!7752562 () Bool)

(assert (=> b!7041131 m!7752562))

(declare-fun m!7752564 () Bool)

(assert (=> d!2198279 m!7752564))

(declare-fun m!7752566 () Bool)

(assert (=> d!2198279 m!7752566))

(assert (=> d!2198279 m!7752520))

(assert (=> b!7040924 d!2198279))

(assert (=> b!7040924 d!2198231))

(declare-fun d!2198281 () Bool)

(declare-fun e!4232865 () Bool)

(assert (=> d!2198281 e!4232865))

(declare-fun res!2874527 () Bool)

(assert (=> d!2198281 (=> (not res!2874527) (not e!4232865))))

(declare-fun lt!2524527 () Context!12972)

(declare-fun dynLambda!27450 (Int Context!12972) Context!12972)

(assert (=> d!2198281 (= res!2874527 (= lt!2524369 (dynLambda!27450 lambda!416786 lt!2524527)))))

(declare-fun choose!53447 ((Set Context!12972) Int Context!12972) Context!12972)

(assert (=> d!2198281 (= lt!2524527 (choose!53447 z1!570 lambda!416786 lt!2524369))))

(assert (=> d!2198281 (set.member lt!2524369 (map!15798 z1!570 lambda!416786))))

(assert (=> d!2198281 (= (mapPost2!331 z1!570 lambda!416786 lt!2524369) lt!2524527)))

(declare-fun b!7041137 () Bool)

(assert (=> b!7041137 (= e!4232865 (set.member lt!2524527 z1!570))))

(assert (= (and d!2198281 res!2874527) b!7041137))

(declare-fun b_lambda!267289 () Bool)

(assert (=> (not b_lambda!267289) (not d!2198281)))

(declare-fun m!7752568 () Bool)

(assert (=> d!2198281 m!7752568))

(declare-fun m!7752570 () Bool)

(assert (=> d!2198281 m!7752570))

(declare-fun m!7752572 () Bool)

(assert (=> d!2198281 m!7752572))

(declare-fun m!7752574 () Bool)

(assert (=> d!2198281 m!7752574))

(declare-fun m!7752576 () Bool)

(assert (=> b!7041137 m!7752576))

(assert (=> b!7040924 d!2198281))

(declare-fun d!2198283 () Bool)

(declare-fun e!4232870 () Bool)

(assert (=> d!2198283 e!4232870))

(declare-fun res!2874533 () Bool)

(assert (=> d!2198283 (=> (not res!2874533) (not e!4232870))))

(declare-fun lt!2524530 () List!67999)

(declare-fun content!13578 (List!67999) (Set C!35250))

(assert (=> d!2198283 (= res!2874533 (= (content!13578 lt!2524530) (set.union (content!13578 (_1!37362 lt!2524338)) (content!13578 (_2!37362 lt!2524338)))))))

(declare-fun e!4232871 () List!67999)

(assert (=> d!2198283 (= lt!2524530 e!4232871)))

(declare-fun c!1310586 () Bool)

(assert (=> d!2198283 (= c!1310586 (is-Nil!67875 (_1!37362 lt!2524338)))))

(assert (=> d!2198283 (= (++!15555 (_1!37362 lt!2524338) (_2!37362 lt!2524338)) lt!2524530)))

(declare-fun b!7041148 () Bool)

(declare-fun res!2874532 () Bool)

(assert (=> b!7041148 (=> (not res!2874532) (not e!4232870))))

(declare-fun size!41092 (List!67999) Int)

(assert (=> b!7041148 (= res!2874532 (= (size!41092 lt!2524530) (+ (size!41092 (_1!37362 lt!2524338)) (size!41092 (_2!37362 lt!2524338)))))))

(declare-fun b!7041149 () Bool)

(assert (=> b!7041149 (= e!4232870 (or (not (= (_2!37362 lt!2524338) Nil!67875)) (= lt!2524530 (_1!37362 lt!2524338))))))

(declare-fun b!7041146 () Bool)

(assert (=> b!7041146 (= e!4232871 (_2!37362 lt!2524338))))

(declare-fun b!7041147 () Bool)

(assert (=> b!7041147 (= e!4232871 (Cons!67875 (h!74323 (_1!37362 lt!2524338)) (++!15555 (t!381770 (_1!37362 lt!2524338)) (_2!37362 lt!2524338))))))

(assert (= (and d!2198283 c!1310586) b!7041146))

(assert (= (and d!2198283 (not c!1310586)) b!7041147))

(assert (= (and d!2198283 res!2874533) b!7041148))

(assert (= (and b!7041148 res!2874532) b!7041149))

(declare-fun m!7752578 () Bool)

(assert (=> d!2198283 m!7752578))

(declare-fun m!7752580 () Bool)

(assert (=> d!2198283 m!7752580))

(declare-fun m!7752582 () Bool)

(assert (=> d!2198283 m!7752582))

(declare-fun m!7752584 () Bool)

(assert (=> b!7041148 m!7752584))

(declare-fun m!7752586 () Bool)

(assert (=> b!7041148 m!7752586))

(declare-fun m!7752588 () Bool)

(assert (=> b!7041148 m!7752588))

(declare-fun m!7752590 () Bool)

(assert (=> b!7041147 m!7752590))

(assert (=> b!7040913 d!2198283))

(declare-fun d!2198287 () Bool)

(declare-fun c!1310587 () Bool)

(assert (=> d!2198287 (= c!1310587 (isEmpty!39606 (_2!37362 lt!2524338)))))

(declare-fun e!4232872 () Bool)

(assert (=> d!2198287 (= (matchZipper!3030 lt!2524359 (_2!37362 lt!2524338)) e!4232872)))

(declare-fun b!7041150 () Bool)

(assert (=> b!7041150 (= e!4232872 (nullableZipper!2596 lt!2524359))))

(declare-fun b!7041151 () Bool)

(assert (=> b!7041151 (= e!4232872 (matchZipper!3030 (derivationStepZipper!2946 lt!2524359 (head!14287 (_2!37362 lt!2524338))) (tail!13598 (_2!37362 lt!2524338))))))

(assert (= (and d!2198287 c!1310587) b!7041150))

(assert (= (and d!2198287 (not c!1310587)) b!7041151))

(declare-fun m!7752592 () Bool)

(assert (=> d!2198287 m!7752592))

(declare-fun m!7752594 () Bool)

(assert (=> b!7041150 m!7752594))

(declare-fun m!7752596 () Bool)

(assert (=> b!7041151 m!7752596))

(assert (=> b!7041151 m!7752596))

(declare-fun m!7752598 () Bool)

(assert (=> b!7041151 m!7752598))

(declare-fun m!7752600 () Bool)

(assert (=> b!7041151 m!7752600))

(assert (=> b!7041151 m!7752598))

(assert (=> b!7041151 m!7752600))

(declare-fun m!7752602 () Bool)

(assert (=> b!7041151 m!7752602))

(assert (=> b!7040922 d!2198287))

(declare-fun bs!1873271 () Bool)

(declare-fun d!2198289 () Bool)

(assert (= bs!1873271 (and d!2198289 b!7040921)))

(declare-fun lambda!416848 () Int)

(assert (=> bs!1873271 (= lambda!416848 lambda!416785)))

(assert (=> d!2198289 true))

(assert (=> d!2198289 (exists!3433 lt!2524340 lambda!416848)))

(declare-fun lt!2524535 () Unit!161660)

(declare-fun choose!53448 (List!68000 List!67999) Unit!161660)

(assert (=> d!2198289 (= lt!2524535 (choose!53448 lt!2524340 s!7408))))

(declare-fun content!13579 (List!68000) (Set Context!12972))

(assert (=> d!2198289 (matchZipper!3030 (content!13579 lt!2524340) s!7408)))

(assert (=> d!2198289 (= (lemmaZipperMatchesExistsMatchingContext!429 lt!2524340 s!7408) lt!2524535)))

(declare-fun bs!1873272 () Bool)

(assert (= bs!1873272 d!2198289))

(declare-fun m!7752604 () Bool)

(assert (=> bs!1873272 m!7752604))

(declare-fun m!7752606 () Bool)

(assert (=> bs!1873272 m!7752606))

(declare-fun m!7752608 () Bool)

(assert (=> bs!1873272 m!7752608))

(assert (=> bs!1873272 m!7752608))

(declare-fun m!7752610 () Bool)

(assert (=> bs!1873272 m!7752610))

(assert (=> b!7040921 d!2198289))

(declare-fun d!2198291 () Bool)

(declare-fun e!4232878 () Bool)

(assert (=> d!2198291 e!4232878))

(declare-fun res!2874539 () Bool)

(assert (=> d!2198291 (=> (not res!2874539) (not e!4232878))))

(declare-fun lt!2524539 () Context!12972)

(declare-fun dynLambda!27451 (Int Context!12972) Bool)

(assert (=> d!2198291 (= res!2874539 (dynLambda!27451 lambda!416785 lt!2524539))))

(declare-fun getWitness!1514 (List!68000 Int) Context!12972)

(assert (=> d!2198291 (= lt!2524539 (getWitness!1514 (toList!10833 lt!2524350) lambda!416785))))

(declare-fun exists!3435 ((Set Context!12972) Int) Bool)

(assert (=> d!2198291 (exists!3435 lt!2524350 lambda!416785)))

(assert (=> d!2198291 (= (getWitness!1512 lt!2524350 lambda!416785) lt!2524539)))

(declare-fun b!7041157 () Bool)

(assert (=> b!7041157 (= e!4232878 (set.member lt!2524539 lt!2524350))))

(assert (= (and d!2198291 res!2874539) b!7041157))

(declare-fun b_lambda!267293 () Bool)

(assert (=> (not b_lambda!267293) (not d!2198291)))

(declare-fun m!7752620 () Bool)

(assert (=> d!2198291 m!7752620))

(assert (=> d!2198291 m!7752236))

(assert (=> d!2198291 m!7752236))

(declare-fun m!7752622 () Bool)

(assert (=> d!2198291 m!7752622))

(declare-fun m!7752624 () Bool)

(assert (=> d!2198291 m!7752624))

(declare-fun m!7752626 () Bool)

(assert (=> b!7041157 m!7752626))

(assert (=> b!7040921 d!2198291))

(declare-fun bs!1873273 () Bool)

(declare-fun d!2198295 () Bool)

(assert (= bs!1873273 (and d!2198295 b!7040921)))

(declare-fun lambda!416851 () Int)

(assert (=> bs!1873273 (not (= lambda!416851 lambda!416785))))

(declare-fun bs!1873274 () Bool)

(assert (= bs!1873274 (and d!2198295 d!2198289)))

(assert (=> bs!1873274 (not (= lambda!416851 lambda!416848))))

(assert (=> d!2198295 true))

(declare-fun order!28209 () Int)

(declare-fun dynLambda!27452 (Int Int) Int)

(assert (=> d!2198295 (< (dynLambda!27452 order!28209 lambda!416785) (dynLambda!27452 order!28209 lambda!416851))))

(declare-fun forall!16412 (List!68000 Int) Bool)

(assert (=> d!2198295 (= (exists!3433 lt!2524340 lambda!416785) (not (forall!16412 lt!2524340 lambda!416851)))))

(declare-fun bs!1873275 () Bool)

(assert (= bs!1873275 d!2198295))

(declare-fun m!7752628 () Bool)

(assert (=> bs!1873275 m!7752628))

(assert (=> b!7040921 d!2198295))

(declare-fun d!2198297 () Bool)

(declare-fun c!1310590 () Bool)

(assert (=> d!2198297 (= c!1310590 (isEmpty!39606 s!7408))))

(declare-fun e!4232879 () Bool)

(assert (=> d!2198297 (= (matchZipper!3030 lt!2524367 s!7408) e!4232879)))

(declare-fun b!7041160 () Bool)

(assert (=> b!7041160 (= e!4232879 (nullableZipper!2596 lt!2524367))))

(declare-fun b!7041161 () Bool)

(assert (=> b!7041161 (= e!4232879 (matchZipper!3030 (derivationStepZipper!2946 lt!2524367 (head!14287 s!7408)) (tail!13598 s!7408)))))

(assert (= (and d!2198297 c!1310590) b!7041160))

(assert (= (and d!2198297 (not c!1310590)) b!7041161))

(assert (=> d!2198297 m!7752382))

(declare-fun m!7752630 () Bool)

(assert (=> b!7041160 m!7752630))

(assert (=> b!7041161 m!7752386))

(assert (=> b!7041161 m!7752386))

(declare-fun m!7752632 () Bool)

(assert (=> b!7041161 m!7752632))

(assert (=> b!7041161 m!7752390))

(assert (=> b!7041161 m!7752632))

(assert (=> b!7041161 m!7752390))

(declare-fun m!7752634 () Bool)

(assert (=> b!7041161 m!7752634))

(assert (=> b!7040921 d!2198297))

(declare-fun d!2198299 () Bool)

(declare-fun e!4232882 () Bool)

(assert (=> d!2198299 e!4232882))

(declare-fun res!2874542 () Bool)

(assert (=> d!2198299 (=> (not res!2874542) (not e!4232882))))

(declare-fun lt!2524542 () List!68000)

(declare-fun noDuplicate!2643 (List!68000) Bool)

(assert (=> d!2198299 (= res!2874542 (noDuplicate!2643 lt!2524542))))

(declare-fun choose!53449 ((Set Context!12972)) List!68000)

(assert (=> d!2198299 (= lt!2524542 (choose!53449 lt!2524350))))

(assert (=> d!2198299 (= (toList!10833 lt!2524350) lt!2524542)))

(declare-fun b!7041164 () Bool)

(assert (=> b!7041164 (= e!4232882 (= (content!13579 lt!2524542) lt!2524350))))

(assert (= (and d!2198299 res!2874542) b!7041164))

(declare-fun m!7752636 () Bool)

(assert (=> d!2198299 m!7752636))

(declare-fun m!7752638 () Bool)

(assert (=> d!2198299 m!7752638))

(declare-fun m!7752640 () Bool)

(assert (=> b!7041164 m!7752640))

(assert (=> b!7040921 d!2198299))

(declare-fun d!2198301 () Bool)

(assert (=> d!2198301 (= (isEmpty!39604 (exprs!6986 lt!2524342)) (is-Nil!67874 (exprs!6986 lt!2524342)))))

(assert (=> b!7040911 d!2198301))

(declare-fun bs!1873276 () Bool)

(declare-fun d!2198303 () Bool)

(assert (= bs!1873276 (and d!2198303 b!7040924)))

(declare-fun lambda!416852 () Int)

(assert (=> bs!1873276 (= lambda!416852 lambda!416787)))

(declare-fun bs!1873277 () Bool)

(assert (= bs!1873277 (and d!2198303 d!2198229)))

(assert (=> bs!1873277 (= lambda!416852 lambda!416838)))

(declare-fun bs!1873278 () Bool)

(assert (= bs!1873278 (and d!2198303 d!2198253)))

(assert (=> bs!1873278 (= lambda!416852 lambda!416842)))

(assert (=> d!2198303 (= (inv!86585 setElem!49345) (forall!16411 (exprs!6986 setElem!49345) lambda!416852))))

(declare-fun bs!1873279 () Bool)

(assert (= bs!1873279 d!2198303))

(declare-fun m!7752642 () Bool)

(assert (=> bs!1873279 m!7752642))

(assert (=> setNonEmpty!49345 d!2198303))

(declare-fun b!7041173 () Bool)

(declare-fun e!4232887 () Bool)

(declare-fun tp!1937406 () Bool)

(declare-fun tp!1937407 () Bool)

(assert (=> b!7041173 (= e!4232887 (and tp!1937406 tp!1937407))))

(assert (=> b!7040915 (= tp!1937388 e!4232887)))

(assert (= (and b!7040915 (is-Cons!67874 (exprs!6986 setElem!49345))) b!7041173))

(declare-fun b!7041174 () Bool)

(declare-fun e!4232888 () Bool)

(declare-fun tp!1937408 () Bool)

(declare-fun tp!1937409 () Bool)

(assert (=> b!7041174 (= e!4232888 (and tp!1937408 tp!1937409))))

(assert (=> b!7040923 (= tp!1937387 e!4232888)))

(assert (= (and b!7040923 (is-Cons!67874 (exprs!6986 ct2!306))) b!7041174))

(declare-fun b!7041179 () Bool)

(declare-fun e!4232891 () Bool)

(declare-fun tp!1937412 () Bool)

(assert (=> b!7041179 (= e!4232891 (and tp_is_empty!44205 tp!1937412))))

(assert (=> b!7040912 (= tp!1937386 e!4232891)))

(assert (= (and b!7040912 (is-Cons!67875 (t!381770 s!7408))) b!7041179))

(declare-fun condSetEmpty!49351 () Bool)

(assert (=> setNonEmpty!49345 (= condSetEmpty!49351 (= setRest!49345 (as set.empty (Set Context!12972))))))

(declare-fun setRes!49351 () Bool)

(assert (=> setNonEmpty!49345 (= tp!1937389 setRes!49351)))

(declare-fun setIsEmpty!49351 () Bool)

(assert (=> setIsEmpty!49351 setRes!49351))

(declare-fun setNonEmpty!49351 () Bool)

(declare-fun tp!1937418 () Bool)

(declare-fun e!4232895 () Bool)

(declare-fun setElem!49351 () Context!12972)

(assert (=> setNonEmpty!49351 (= setRes!49351 (and tp!1937418 (inv!86585 setElem!49351) e!4232895))))

(declare-fun setRest!49351 () (Set Context!12972))

(assert (=> setNonEmpty!49351 (= setRest!49345 (set.union (set.insert setElem!49351 (as set.empty (Set Context!12972))) setRest!49351))))

(declare-fun b!7041186 () Bool)

(declare-fun tp!1937417 () Bool)

(assert (=> b!7041186 (= e!4232895 tp!1937417)))

(assert (= (and setNonEmpty!49345 condSetEmpty!49351) setIsEmpty!49351))

(assert (= (and setNonEmpty!49345 (not condSetEmpty!49351)) setNonEmpty!49351))

(assert (= setNonEmpty!49351 b!7041186))

(declare-fun m!7752644 () Bool)

(assert (=> setNonEmpty!49351 m!7752644))

(declare-fun b_lambda!267295 () Bool)

(assert (= b_lambda!267287 (or b!7040917 b_lambda!267295)))

(declare-fun bs!1873280 () Bool)

(declare-fun d!2198305 () Bool)

(assert (= bs!1873280 (and d!2198305 b!7040917)))

(assert (=> bs!1873280 (= (dynLambda!27449 lambda!416788 lt!2524368) (derivationStepZipperUp!2100 lt!2524368 (h!74323 s!7408)))))

(assert (=> bs!1873280 m!7752220))

(assert (=> d!2198257 d!2198305))

(declare-fun b_lambda!267297 () Bool)

(assert (= b_lambda!267289 (or b!7040924 b_lambda!267297)))

(declare-fun bs!1873281 () Bool)

(declare-fun d!2198307 () Bool)

(assert (= bs!1873281 (and d!2198307 b!7040924)))

(declare-fun lt!2524543 () Unit!161660)

(assert (=> bs!1873281 (= lt!2524543 (lemmaConcatPreservesForall!811 (exprs!6986 lt!2524527) (exprs!6986 ct2!306) lambda!416787))))

(assert (=> bs!1873281 (= (dynLambda!27450 lambda!416786 lt!2524527) (Context!12973 (++!15556 (exprs!6986 lt!2524527) (exprs!6986 ct2!306))))))

(declare-fun m!7752658 () Bool)

(assert (=> bs!1873281 m!7752658))

(declare-fun m!7752660 () Bool)

(assert (=> bs!1873281 m!7752660))

(assert (=> d!2198281 d!2198307))

(declare-fun b_lambda!267299 () Bool)

(assert (= b_lambda!267293 (or b!7040921 b_lambda!267299)))

(declare-fun bs!1873282 () Bool)

(declare-fun d!2198311 () Bool)

(assert (= bs!1873282 (and d!2198311 b!7040921)))

(assert (=> bs!1873282 (= (dynLambda!27451 lambda!416785 lt!2524539) (matchZipper!3030 (set.insert lt!2524539 (as set.empty (Set Context!12972))) s!7408))))

(declare-fun m!7752662 () Bool)

(assert (=> bs!1873282 m!7752662))

(assert (=> bs!1873282 m!7752662))

(declare-fun m!7752664 () Bool)

(assert (=> bs!1873282 m!7752664))

(assert (=> d!2198291 d!2198311))

(push 1)

(assert (not b!7041032))

(assert (not d!2198303))

(assert (not d!2198251))

(assert (not d!2198271))

(assert (not b!7041179))

(assert (not bs!1873282))

(assert (not d!2198297))

(assert (not b!7041128))

(assert (not d!2198249))

(assert (not b!7041160))

(assert (not d!2198233))

(assert (not d!2198289))

(assert (not d!2198273))

(assert (not bm!639499))

(assert (not b!7041164))

(assert (not b!7041113))

(assert (not b!7041151))

(assert (not b!7041034))

(assert (not b_lambda!267297))

(assert (not b!7041122))

(assert (not d!2198265))

(assert (not b!7041121))

(assert (not b!7041161))

(assert (not b!7041109))

(assert (not bm!639503))

(assert (not bs!1873281))

(assert (not d!2198263))

(assert (not b!7041127))

(assert (not d!2198259))

(assert (not d!2198227))

(assert (not d!2198229))

(assert (not d!2198291))

(assert (not b!7041033))

(assert (not b!7041132))

(assert (not d!2198287))

(assert (not b!7041075))

(assert (not bm!639502))

(assert (not d!2198283))

(assert (not b!7041126))

(assert (not b!7041174))

(assert (not d!2198245))

(assert (not bm!639493))

(assert (not d!2198295))

(assert (not d!2198257))

(assert (not b!7041010))

(assert (not d!2198241))

(assert (not d!2198243))

(assert (not setNonEmpty!49351))

(assert (not b!7041090))

(assert (not b!7041186))

(assert (not b!7041131))

(assert (not b_lambda!267295))

(assert (not d!2198281))

(assert (not d!2198255))

(assert (not d!2198275))

(assert (not b!7041011))

(assert (not b!7041087))

(assert (not bs!1873280))

(assert (not b!7041106))

(assert (not b!7041125))

(assert (not bm!639492))

(assert (not bm!639500))

(assert (not b_lambda!267299))

(assert (not b!7041037))

(assert (not b!7041173))

(assert (not bm!639494))

(assert (not d!2198225))

(assert (not b!7041150))

(assert (not b!7041129))

(assert (not d!2198231))

(assert (not b!7041035))

(assert (not d!2198253))

(assert (not b!7041147))

(assert (not d!2198237))

(assert (not b!7041074))

(assert (not b!7041012))

(assert (not d!2198279))

(assert (not b!7041038))

(assert (not d!2198277))

(assert (not b!7041102))

(assert (not b!7041103))

(assert (not d!2198299))

(assert (not b!7041013))

(assert (not bm!639504))

(assert tp_is_empty!44205)

(assert (not b!7041066))

(assert (not b!7041148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

