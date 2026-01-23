; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565242 () Bool)

(assert start!565242)

(declare-fun b!5372669 () Bool)

(assert (=> b!5372669 true))

(assert (=> b!5372669 true))

(declare-fun lambda!277322 () Int)

(declare-fun lambda!277321 () Int)

(assert (=> b!5372669 (not (= lambda!277322 lambda!277321))))

(assert (=> b!5372669 true))

(assert (=> b!5372669 true))

(declare-fun b!5372645 () Bool)

(assert (=> b!5372645 true))

(declare-fun bs!1243986 () Bool)

(declare-fun b!5372680 () Bool)

(assert (= bs!1243986 (and b!5372680 b!5372669)))

(declare-datatypes ((C!30448 0))(
  ( (C!30449 (val!24926 Int)) )
))
(declare-datatypes ((Regex!15089 0))(
  ( (ElementMatch!15089 (c!936217 C!30448)) (Concat!23934 (regOne!30690 Regex!15089) (regTwo!30690 Regex!15089)) (EmptyExpr!15089) (Star!15089 (reg!15418 Regex!15089)) (EmptyLang!15089) (Union!15089 (regOne!30691 Regex!15089) (regTwo!30691 Regex!15089)) )
))
(declare-fun r!7292 () Regex!15089)

(declare-fun lambda!277324 () Int)

(declare-fun lt!2187924 () Regex!15089)

(assert (=> bs!1243986 (= (= lt!2187924 (regOne!30690 r!7292)) (= lambda!277324 lambda!277321))))

(assert (=> bs!1243986 (not (= lambda!277324 lambda!277322))))

(assert (=> b!5372680 true))

(assert (=> b!5372680 true))

(assert (=> b!5372680 true))

(declare-fun lambda!277325 () Int)

(assert (=> bs!1243986 (not (= lambda!277325 lambda!277321))))

(assert (=> bs!1243986 (= (= lt!2187924 (regOne!30690 r!7292)) (= lambda!277325 lambda!277322))))

(assert (=> b!5372680 (not (= lambda!277325 lambda!277324))))

(assert (=> b!5372680 true))

(assert (=> b!5372680 true))

(assert (=> b!5372680 true))

(declare-fun b!5372644 () Bool)

(declare-fun e!3333616 () Bool)

(assert (=> b!5372644 (= e!3333616 true)))

(declare-datatypes ((List!61566 0))(
  ( (Nil!61442) (Cons!61442 (h!67890 C!30448) (t!374789 List!61566)) )
))
(declare-datatypes ((tuple2!64576 0))(
  ( (tuple2!64577 (_1!35591 List!61566) (_2!35591 List!61566)) )
))
(declare-fun lt!2187932 () tuple2!64576)

(declare-fun matchRSpec!2192 (Regex!15089 List!61566) Bool)

(assert (=> b!5372644 (matchRSpec!2192 lt!2187924 (_1!35591 lt!2187932))))

(declare-datatypes ((Unit!153874 0))(
  ( (Unit!153875) )
))
(declare-fun lt!2187925 () Unit!153874)

(declare-fun mainMatchTheorem!2192 (Regex!15089 List!61566) Unit!153874)

(assert (=> b!5372644 (= lt!2187925 (mainMatchTheorem!2192 lt!2187924 (_1!35591 lt!2187932)))))

(declare-fun e!3333604 () Bool)

(declare-fun e!3333610 () Bool)

(assert (=> b!5372645 (= e!3333604 e!3333610)))

(declare-fun res!2280363 () Bool)

(assert (=> b!5372645 (=> res!2280363 e!3333610)))

(declare-fun s!2326 () List!61566)

(get-info :version)

(assert (=> b!5372645 (= res!2280363 (or (and ((_ is ElementMatch!15089) (regOne!30690 r!7292)) (= (c!936217 (regOne!30690 r!7292)) (h!67890 s!2326))) ((_ is Union!15089) (regOne!30690 r!7292))))))

(declare-fun lt!2187935 () Unit!153874)

(declare-fun e!3333602 () Unit!153874)

(assert (=> b!5372645 (= lt!2187935 e!3333602)))

(declare-fun c!936216 () Bool)

(declare-datatypes ((List!61567 0))(
  ( (Nil!61443) (Cons!61443 (h!67891 Regex!15089) (t!374790 List!61567)) )
))
(declare-datatypes ((Context!8946 0))(
  ( (Context!8947 (exprs!4973 List!61567)) )
))
(declare-datatypes ((List!61568 0))(
  ( (Nil!61444) (Cons!61444 (h!67892 Context!8946) (t!374791 List!61568)) )
))
(declare-fun zl!343 () List!61568)

(declare-fun nullable!5258 (Regex!15089) Bool)

(assert (=> b!5372645 (= c!936216 (nullable!5258 (h!67891 (exprs!4973 (h!67892 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8946))

(declare-fun lambda!277323 () Int)

(declare-fun flatMap!816 ((InoxSet Context!8946) Int) (InoxSet Context!8946))

(declare-fun derivationStepZipperUp!461 (Context!8946 C!30448) (InoxSet Context!8946))

(assert (=> b!5372645 (= (flatMap!816 z!1189 lambda!277323) (derivationStepZipperUp!461 (h!67892 zl!343) (h!67890 s!2326)))))

(declare-fun lt!2187936 () Unit!153874)

(declare-fun lemmaFlatMapOnSingletonSet!348 ((InoxSet Context!8946) Context!8946 Int) Unit!153874)

(assert (=> b!5372645 (= lt!2187936 (lemmaFlatMapOnSingletonSet!348 z!1189 (h!67892 zl!343) lambda!277323))))

(declare-fun lt!2187928 () (InoxSet Context!8946))

(declare-fun lt!2187910 () Context!8946)

(assert (=> b!5372645 (= lt!2187928 (derivationStepZipperUp!461 lt!2187910 (h!67890 s!2326)))))

(declare-fun lt!2187919 () (InoxSet Context!8946))

(declare-fun derivationStepZipperDown!537 (Regex!15089 Context!8946 C!30448) (InoxSet Context!8946))

(assert (=> b!5372645 (= lt!2187919 (derivationStepZipperDown!537 (h!67891 (exprs!4973 (h!67892 zl!343))) lt!2187910 (h!67890 s!2326)))))

(assert (=> b!5372645 (= lt!2187910 (Context!8947 (t!374790 (exprs!4973 (h!67892 zl!343)))))))

(declare-fun lt!2187917 () (InoxSet Context!8946))

(assert (=> b!5372645 (= lt!2187917 (derivationStepZipperUp!461 (Context!8947 (Cons!61443 (h!67891 (exprs!4973 (h!67892 zl!343))) (t!374790 (exprs!4973 (h!67892 zl!343))))) (h!67890 s!2326)))))

(declare-fun b!5372646 () Bool)

(declare-fun res!2280379 () Bool)

(assert (=> b!5372646 (=> res!2280379 e!3333604)))

(declare-fun isEmpty!33424 (List!61567) Bool)

(assert (=> b!5372646 (= res!2280379 (isEmpty!33424 (t!374790 (exprs!4973 (h!67892 zl!343)))))))

(declare-fun b!5372647 () Bool)

(declare-fun Unit!153876 () Unit!153874)

(assert (=> b!5372647 (= e!3333602 Unit!153876)))

(declare-fun b!5372648 () Bool)

(declare-fun e!3333601 () Bool)

(declare-fun lt!2187914 () Bool)

(declare-fun lt!2187944 () Bool)

(assert (=> b!5372648 (= e!3333601 (or (not lt!2187914) lt!2187944))))

(declare-fun b!5372649 () Bool)

(declare-fun res!2280383 () Bool)

(assert (=> b!5372649 (=> res!2280383 e!3333616)))

(declare-fun matchR!7274 (Regex!15089 List!61566) Bool)

(assert (=> b!5372649 (= res!2280383 (not (matchR!7274 (regTwo!30690 r!7292) (_2!35591 lt!2187932))))))

(declare-fun b!5372650 () Bool)

(declare-fun e!3333605 () Bool)

(assert (=> b!5372650 (= e!3333605 (nullable!5258 (regOne!30690 (regOne!30690 r!7292))))))

(declare-fun b!5372651 () Bool)

(declare-fun res!2280359 () Bool)

(assert (=> b!5372651 (=> res!2280359 e!3333610)))

(assert (=> b!5372651 (= res!2280359 e!3333605)))

(declare-fun res!2280387 () Bool)

(assert (=> b!5372651 (=> (not res!2280387) (not e!3333605))))

(assert (=> b!5372651 (= res!2280387 ((_ is Concat!23934) (regOne!30690 r!7292)))))

(declare-fun b!5372652 () Bool)

(declare-fun res!2280376 () Bool)

(declare-fun e!3333600 () Bool)

(assert (=> b!5372652 (=> res!2280376 e!3333600)))

(assert (=> b!5372652 (= res!2280376 (not ((_ is Cons!61443) (exprs!4973 (h!67892 zl!343)))))))

(declare-fun b!5372653 () Bool)

(declare-fun res!2280362 () Bool)

(assert (=> b!5372653 (=> res!2280362 e!3333600)))

(assert (=> b!5372653 (= res!2280362 (or ((_ is EmptyExpr!15089) r!7292) ((_ is EmptyLang!15089) r!7292) ((_ is ElementMatch!15089) r!7292) ((_ is Union!15089) r!7292) (not ((_ is Concat!23934) r!7292))))))

(declare-fun b!5372654 () Bool)

(declare-fun e!3333614 () Bool)

(declare-fun tp!1490271 () Bool)

(declare-fun tp!1490265 () Bool)

(assert (=> b!5372654 (= e!3333614 (and tp!1490271 tp!1490265))))

(declare-fun b!5372655 () Bool)

(declare-fun res!2280377 () Bool)

(assert (=> b!5372655 (=> res!2280377 e!3333616)))

(assert (=> b!5372655 (= res!2280377 (not (matchR!7274 lt!2187924 (_1!35591 lt!2187932))))))

(declare-fun b!5372656 () Bool)

(declare-fun e!3333609 () Bool)

(declare-fun e!3333596 () Bool)

(assert (=> b!5372656 (= e!3333609 e!3333596)))

(declare-fun res!2280374 () Bool)

(assert (=> b!5372656 (=> res!2280374 e!3333596)))

(declare-fun lt!2187915 () (InoxSet Context!8946))

(declare-fun lt!2187920 () (InoxSet Context!8946))

(assert (=> b!5372656 (= res!2280374 (not (= lt!2187915 lt!2187920)))))

(declare-fun lt!2187909 () Context!8946)

(declare-fun lt!2187926 () (InoxSet Context!8946))

(assert (=> b!5372656 (= (flatMap!816 lt!2187926 lambda!277323) (derivationStepZipperUp!461 lt!2187909 (h!67890 s!2326)))))

(declare-fun lt!2187943 () Unit!153874)

(assert (=> b!5372656 (= lt!2187943 (lemmaFlatMapOnSingletonSet!348 lt!2187926 lt!2187909 lambda!277323))))

(declare-fun lt!2187940 () (InoxSet Context!8946))

(assert (=> b!5372656 (= lt!2187940 (derivationStepZipperUp!461 lt!2187909 (h!67890 s!2326)))))

(declare-fun derivationStepZipper!1328 ((InoxSet Context!8946) C!30448) (InoxSet Context!8946))

(assert (=> b!5372656 (= lt!2187915 (derivationStepZipper!1328 lt!2187926 (h!67890 s!2326)))))

(assert (=> b!5372656 (= lt!2187926 (store ((as const (Array Context!8946 Bool)) false) lt!2187909 true))))

(declare-fun lt!2187922 () List!61567)

(assert (=> b!5372656 (= lt!2187909 (Context!8947 (Cons!61443 (reg!15418 (regOne!30690 r!7292)) lt!2187922)))))

(declare-fun b!5372657 () Bool)

(declare-fun res!2280380 () Bool)

(assert (=> b!5372657 (=> res!2280380 e!3333600)))

(declare-fun isEmpty!33425 (List!61568) Bool)

(assert (=> b!5372657 (= res!2280380 (not (isEmpty!33425 (t!374791 zl!343))))))

(declare-fun b!5372658 () Bool)

(declare-fun e!3333599 () Bool)

(declare-fun e!3333615 () Bool)

(assert (=> b!5372658 (= e!3333599 e!3333615)))

(declare-fun res!2280365 () Bool)

(assert (=> b!5372658 (=> res!2280365 e!3333615)))

(assert (=> b!5372658 (= res!2280365 (not lt!2187914))))

(assert (=> b!5372658 e!3333601))

(declare-fun res!2280367 () Bool)

(assert (=> b!5372658 (=> (not res!2280367) (not e!3333601))))

(declare-fun lt!2187945 () Regex!15089)

(assert (=> b!5372658 (= res!2280367 (= (matchR!7274 lt!2187945 s!2326) (matchRSpec!2192 lt!2187945 s!2326)))))

(declare-fun lt!2187946 () Unit!153874)

(assert (=> b!5372658 (= lt!2187946 (mainMatchTheorem!2192 lt!2187945 s!2326))))

(declare-fun b!5372659 () Bool)

(declare-fun e!3333606 () Bool)

(declare-fun e!3333597 () Bool)

(assert (=> b!5372659 (= e!3333606 e!3333597)))

(declare-fun res!2280368 () Bool)

(assert (=> b!5372659 (=> (not res!2280368) (not e!3333597))))

(declare-fun lt!2187927 () Regex!15089)

(assert (=> b!5372659 (= res!2280368 (= r!7292 lt!2187927))))

(declare-fun unfocusZipper!831 (List!61568) Regex!15089)

(assert (=> b!5372659 (= lt!2187927 (unfocusZipper!831 zl!343))))

(declare-fun b!5372660 () Bool)

(assert (=> b!5372660 (= e!3333597 (not e!3333600))))

(declare-fun res!2280384 () Bool)

(assert (=> b!5372660 (=> res!2280384 e!3333600)))

(assert (=> b!5372660 (= res!2280384 (not ((_ is Cons!61444) zl!343)))))

(assert (=> b!5372660 (= lt!2187914 lt!2187944)))

(assert (=> b!5372660 (= lt!2187944 (matchRSpec!2192 r!7292 s!2326))))

(assert (=> b!5372660 (= lt!2187914 (matchR!7274 r!7292 s!2326))))

(declare-fun lt!2187937 () Unit!153874)

(assert (=> b!5372660 (= lt!2187937 (mainMatchTheorem!2192 r!7292 s!2326))))

(declare-fun b!5372661 () Bool)

(declare-fun Unit!153877 () Unit!153874)

(assert (=> b!5372661 (= e!3333602 Unit!153877)))

(declare-fun lt!2187933 () Unit!153874)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!326 ((InoxSet Context!8946) (InoxSet Context!8946) List!61566) Unit!153874)

(assert (=> b!5372661 (= lt!2187933 (lemmaZipperConcatMatchesSameAsBothZippers!326 lt!2187919 lt!2187928 (t!374789 s!2326)))))

(declare-fun res!2280371 () Bool)

(declare-fun matchZipper!1333 ((InoxSet Context!8946) List!61566) Bool)

(assert (=> b!5372661 (= res!2280371 (matchZipper!1333 lt!2187919 (t!374789 s!2326)))))

(declare-fun e!3333611 () Bool)

(assert (=> b!5372661 (=> res!2280371 e!3333611)))

(assert (=> b!5372661 (= (matchZipper!1333 ((_ map or) lt!2187919 lt!2187928) (t!374789 s!2326)) e!3333611)))

(declare-fun tp!1490267 () Bool)

(declare-fun e!3333608 () Bool)

(declare-fun b!5372662 () Bool)

(declare-fun e!3333607 () Bool)

(declare-fun inv!80969 (Context!8946) Bool)

(assert (=> b!5372662 (= e!3333607 (and (inv!80969 (h!67892 zl!343)) e!3333608 tp!1490267))))

(declare-fun b!5372663 () Bool)

(declare-fun res!2280370 () Bool)

(assert (=> b!5372663 (=> (not res!2280370) (not e!3333606))))

(declare-fun toList!8873 ((InoxSet Context!8946)) List!61568)

(assert (=> b!5372663 (= res!2280370 (= (toList!8873 z!1189) zl!343))))

(declare-fun b!5372664 () Bool)

(declare-fun res!2280364 () Bool)

(assert (=> b!5372664 (=> res!2280364 e!3333600)))

(declare-fun generalisedUnion!1018 (List!61567) Regex!15089)

(declare-fun unfocusZipperList!531 (List!61568) List!61567)

(assert (=> b!5372664 (= res!2280364 (not (= r!7292 (generalisedUnion!1018 (unfocusZipperList!531 zl!343)))))))

(declare-fun e!3333603 () Bool)

(declare-fun setRes!34823 () Bool)

(declare-fun setNonEmpty!34823 () Bool)

(declare-fun tp!1490270 () Bool)

(declare-fun setElem!34823 () Context!8946)

(assert (=> setNonEmpty!34823 (= setRes!34823 (and tp!1490270 (inv!80969 setElem!34823) e!3333603))))

(declare-fun setRest!34823 () (InoxSet Context!8946))

(assert (=> setNonEmpty!34823 (= z!1189 ((_ map or) (store ((as const (Array Context!8946 Bool)) false) setElem!34823 true) setRest!34823))))

(declare-fun b!5372665 () Bool)

(declare-fun e!3333613 () Bool)

(assert (=> b!5372665 (= e!3333613 e!3333599)))

(declare-fun res!2280361 () Bool)

(assert (=> b!5372665 (=> res!2280361 e!3333599)))

(declare-fun lt!2187918 () Context!8946)

(assert (=> b!5372665 (= res!2280361 (not (= (unfocusZipper!831 (Cons!61444 lt!2187918 Nil!61444)) (reg!15418 (regOne!30690 r!7292)))))))

(declare-fun lt!2187930 () Context!8946)

(declare-fun lt!2187923 () (InoxSet Context!8946))

(assert (=> b!5372665 (= (flatMap!816 lt!2187923 lambda!277323) (derivationStepZipperUp!461 lt!2187930 (h!67890 s!2326)))))

(declare-fun lt!2187921 () Unit!153874)

(assert (=> b!5372665 (= lt!2187921 (lemmaFlatMapOnSingletonSet!348 lt!2187923 lt!2187930 lambda!277323))))

(declare-fun lt!2187942 () (InoxSet Context!8946))

(assert (=> b!5372665 (= (flatMap!816 lt!2187942 lambda!277323) (derivationStepZipperUp!461 lt!2187918 (h!67890 s!2326)))))

(declare-fun lt!2187931 () Unit!153874)

(assert (=> b!5372665 (= lt!2187931 (lemmaFlatMapOnSingletonSet!348 lt!2187942 lt!2187918 lambda!277323))))

(declare-fun lt!2187916 () (InoxSet Context!8946))

(assert (=> b!5372665 (= lt!2187916 (derivationStepZipperUp!461 lt!2187930 (h!67890 s!2326)))))

(declare-fun lt!2187913 () (InoxSet Context!8946))

(assert (=> b!5372665 (= lt!2187913 (derivationStepZipperUp!461 lt!2187918 (h!67890 s!2326)))))

(assert (=> b!5372665 (= lt!2187923 (store ((as const (Array Context!8946 Bool)) false) lt!2187930 true))))

(assert (=> b!5372665 (= lt!2187942 (store ((as const (Array Context!8946 Bool)) false) lt!2187918 true))))

(assert (=> b!5372665 (= lt!2187918 (Context!8947 (Cons!61443 (reg!15418 (regOne!30690 r!7292)) Nil!61443)))))

(declare-fun b!5372666 () Bool)

(declare-fun res!2280381 () Bool)

(assert (=> b!5372666 (=> res!2280381 e!3333600)))

(declare-fun generalisedConcat!758 (List!61567) Regex!15089)

(assert (=> b!5372666 (= res!2280381 (not (= r!7292 (generalisedConcat!758 (exprs!4973 (h!67892 zl!343))))))))

(declare-fun b!5372667 () Bool)

(declare-fun res!2280378 () Bool)

(assert (=> b!5372667 (=> res!2280378 e!3333596)))

(assert (=> b!5372667 (= res!2280378 (not (= lt!2187927 r!7292)))))

(declare-fun b!5372668 () Bool)

(declare-fun res!2280366 () Bool)

(assert (=> b!5372668 (=> res!2280366 e!3333596)))

(assert (=> b!5372668 (= res!2280366 (not (= (matchZipper!1333 lt!2187926 s!2326) (matchZipper!1333 lt!2187915 (t!374789 s!2326)))))))

(assert (=> b!5372669 (= e!3333600 e!3333604)))

(declare-fun res!2280360 () Bool)

(assert (=> b!5372669 (=> res!2280360 e!3333604)))

(declare-fun lt!2187934 () Bool)

(assert (=> b!5372669 (= res!2280360 (or (not (= lt!2187914 lt!2187934)) ((_ is Nil!61442) s!2326)))))

(declare-fun Exists!2270 (Int) Bool)

(assert (=> b!5372669 (= (Exists!2270 lambda!277321) (Exists!2270 lambda!277322))))

(declare-fun lt!2187939 () Unit!153874)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!924 (Regex!15089 Regex!15089 List!61566) Unit!153874)

(assert (=> b!5372669 (= lt!2187939 (lemmaExistCutMatchRandMatchRSpecEquivalent!924 (regOne!30690 r!7292) (regTwo!30690 r!7292) s!2326))))

(assert (=> b!5372669 (= lt!2187934 (Exists!2270 lambda!277321))))

(declare-datatypes ((Option!15200 0))(
  ( (None!15199) (Some!15199 (v!51228 tuple2!64576)) )
))
(declare-fun isDefined!11903 (Option!15200) Bool)

(declare-fun findConcatSeparation!1614 (Regex!15089 Regex!15089 List!61566 List!61566 List!61566) Option!15200)

(assert (=> b!5372669 (= lt!2187934 (isDefined!11903 (findConcatSeparation!1614 (regOne!30690 r!7292) (regTwo!30690 r!7292) Nil!61442 s!2326 s!2326)))))

(declare-fun lt!2187941 () Unit!153874)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1378 (Regex!15089 Regex!15089 List!61566) Unit!153874)

(assert (=> b!5372669 (= lt!2187941 (lemmaFindConcatSeparationEquivalentToExists!1378 (regOne!30690 r!7292) (regTwo!30690 r!7292) s!2326))))

(declare-fun b!5372670 () Bool)

(declare-fun tp!1490268 () Bool)

(declare-fun tp!1490264 () Bool)

(assert (=> b!5372670 (= e!3333614 (and tp!1490268 tp!1490264))))

(declare-fun b!5372671 () Bool)

(assert (=> b!5372671 (= e!3333610 e!3333609)))

(declare-fun res!2280375 () Bool)

(assert (=> b!5372671 (=> res!2280375 e!3333609)))

(assert (=> b!5372671 (= res!2280375 (not (= lt!2187919 lt!2187920)))))

(assert (=> b!5372671 (= lt!2187920 (derivationStepZipperDown!537 (reg!15418 (regOne!30690 r!7292)) lt!2187930 (h!67890 s!2326)))))

(assert (=> b!5372671 (= lt!2187930 (Context!8947 lt!2187922))))

(assert (=> b!5372671 (= lt!2187922 (Cons!61443 lt!2187924 (t!374790 (exprs!4973 (h!67892 zl!343)))))))

(assert (=> b!5372671 (= lt!2187924 (Star!15089 (reg!15418 (regOne!30690 r!7292))))))

(declare-fun setIsEmpty!34823 () Bool)

(assert (=> setIsEmpty!34823 setRes!34823))

(declare-fun b!5372672 () Bool)

(declare-fun tp!1490269 () Bool)

(assert (=> b!5372672 (= e!3333608 tp!1490269)))

(declare-fun b!5372673 () Bool)

(declare-fun e!3333598 () Bool)

(assert (=> b!5372673 (= e!3333596 e!3333598)))

(declare-fun res!2280385 () Bool)

(assert (=> b!5372673 (=> res!2280385 e!3333598)))

(declare-fun lt!2187912 () Regex!15089)

(assert (=> b!5372673 (= res!2280385 (not (= r!7292 lt!2187912)))))

(assert (=> b!5372673 (= lt!2187912 (Concat!23934 lt!2187924 (regTwo!30690 r!7292)))))

(declare-fun b!5372674 () Bool)

(declare-fun res!2280386 () Bool)

(assert (=> b!5372674 (=> res!2280386 e!3333599)))

(assert (=> b!5372674 (= res!2280386 (not (= (unfocusZipper!831 (Cons!61444 lt!2187930 Nil!61444)) lt!2187912)))))

(declare-fun b!5372675 () Bool)

(declare-fun e!3333612 () Bool)

(declare-fun tp_is_empty!39431 () Bool)

(declare-fun tp!1490273 () Bool)

(assert (=> b!5372675 (= e!3333612 (and tp_is_empty!39431 tp!1490273))))

(declare-fun b!5372676 () Bool)

(assert (=> b!5372676 (= e!3333614 tp_is_empty!39431)))

(declare-fun b!5372677 () Bool)

(declare-fun res!2280372 () Bool)

(assert (=> b!5372677 (=> res!2280372 e!3333616)))

(declare-fun isEmpty!33426 (List!61566) Bool)

(assert (=> b!5372677 (= res!2280372 (isEmpty!33426 (_1!35591 lt!2187932)))))

(declare-fun b!5372678 () Bool)

(assert (=> b!5372678 (= e!3333611 (matchZipper!1333 lt!2187928 (t!374789 s!2326)))))

(declare-fun b!5372679 () Bool)

(declare-fun res!2280373 () Bool)

(assert (=> b!5372679 (=> res!2280373 e!3333610)))

(assert (=> b!5372679 (= res!2280373 (or ((_ is Concat!23934) (regOne!30690 r!7292)) (not ((_ is Star!15089) (regOne!30690 r!7292)))))))

(assert (=> b!5372680 (= e!3333615 e!3333616)))

(declare-fun res!2280358 () Bool)

(assert (=> b!5372680 (=> res!2280358 e!3333616)))

(declare-fun ++!13392 (List!61566 List!61566) List!61566)

(assert (=> b!5372680 (= res!2280358 (not (= (++!13392 (_1!35591 lt!2187932) (_2!35591 lt!2187932)) s!2326)))))

(declare-fun lt!2187911 () Option!15200)

(declare-fun get!21142 (Option!15200) tuple2!64576)

(assert (=> b!5372680 (= lt!2187932 (get!21142 lt!2187911))))

(assert (=> b!5372680 (= (Exists!2270 lambda!277324) (Exists!2270 lambda!277325))))

(declare-fun lt!2187929 () Unit!153874)

(assert (=> b!5372680 (= lt!2187929 (lemmaExistCutMatchRandMatchRSpecEquivalent!924 lt!2187924 (regTwo!30690 r!7292) s!2326))))

(assert (=> b!5372680 (= (isDefined!11903 lt!2187911) (Exists!2270 lambda!277324))))

(assert (=> b!5372680 (= lt!2187911 (findConcatSeparation!1614 lt!2187924 (regTwo!30690 r!7292) Nil!61442 s!2326 s!2326))))

(declare-fun lt!2187938 () Unit!153874)

(assert (=> b!5372680 (= lt!2187938 (lemmaFindConcatSeparationEquivalentToExists!1378 lt!2187924 (regTwo!30690 r!7292) s!2326))))

(declare-fun res!2280369 () Bool)

(assert (=> start!565242 (=> (not res!2280369) (not e!3333606))))

(declare-fun validRegex!6825 (Regex!15089) Bool)

(assert (=> start!565242 (= res!2280369 (validRegex!6825 r!7292))))

(assert (=> start!565242 e!3333606))

(assert (=> start!565242 e!3333614))

(declare-fun condSetEmpty!34823 () Bool)

(assert (=> start!565242 (= condSetEmpty!34823 (= z!1189 ((as const (Array Context!8946 Bool)) false)))))

(assert (=> start!565242 setRes!34823))

(assert (=> start!565242 e!3333607))

(assert (=> start!565242 e!3333612))

(declare-fun b!5372681 () Bool)

(declare-fun tp!1490266 () Bool)

(assert (=> b!5372681 (= e!3333614 tp!1490266)))

(declare-fun b!5372682 () Bool)

(assert (=> b!5372682 (= e!3333598 e!3333613)))

(declare-fun res!2280382 () Bool)

(assert (=> b!5372682 (=> res!2280382 e!3333613)))

(assert (=> b!5372682 (= res!2280382 (not (= (unfocusZipper!831 (Cons!61444 lt!2187909 Nil!61444)) lt!2187945)))))

(assert (=> b!5372682 (= lt!2187945 (Concat!23934 (reg!15418 (regOne!30690 r!7292)) lt!2187912))))

(declare-fun b!5372683 () Bool)

(declare-fun tp!1490272 () Bool)

(assert (=> b!5372683 (= e!3333603 tp!1490272)))

(assert (= (and start!565242 res!2280369) b!5372663))

(assert (= (and b!5372663 res!2280370) b!5372659))

(assert (= (and b!5372659 res!2280368) b!5372660))

(assert (= (and b!5372660 (not res!2280384)) b!5372657))

(assert (= (and b!5372657 (not res!2280380)) b!5372666))

(assert (= (and b!5372666 (not res!2280381)) b!5372652))

(assert (= (and b!5372652 (not res!2280376)) b!5372664))

(assert (= (and b!5372664 (not res!2280364)) b!5372653))

(assert (= (and b!5372653 (not res!2280362)) b!5372669))

(assert (= (and b!5372669 (not res!2280360)) b!5372646))

(assert (= (and b!5372646 (not res!2280379)) b!5372645))

(assert (= (and b!5372645 c!936216) b!5372661))

(assert (= (and b!5372645 (not c!936216)) b!5372647))

(assert (= (and b!5372661 (not res!2280371)) b!5372678))

(assert (= (and b!5372645 (not res!2280363)) b!5372651))

(assert (= (and b!5372651 res!2280387) b!5372650))

(assert (= (and b!5372651 (not res!2280359)) b!5372679))

(assert (= (and b!5372679 (not res!2280373)) b!5372671))

(assert (= (and b!5372671 (not res!2280375)) b!5372656))

(assert (= (and b!5372656 (not res!2280374)) b!5372668))

(assert (= (and b!5372668 (not res!2280366)) b!5372667))

(assert (= (and b!5372667 (not res!2280378)) b!5372673))

(assert (= (and b!5372673 (not res!2280385)) b!5372682))

(assert (= (and b!5372682 (not res!2280382)) b!5372665))

(assert (= (and b!5372665 (not res!2280361)) b!5372674))

(assert (= (and b!5372674 (not res!2280386)) b!5372658))

(assert (= (and b!5372658 res!2280367) b!5372648))

(assert (= (and b!5372658 (not res!2280365)) b!5372680))

(assert (= (and b!5372680 (not res!2280358)) b!5372655))

(assert (= (and b!5372655 (not res!2280377)) b!5372649))

(assert (= (and b!5372649 (not res!2280383)) b!5372677))

(assert (= (and b!5372677 (not res!2280372)) b!5372644))

(assert (= (and start!565242 ((_ is ElementMatch!15089) r!7292)) b!5372676))

(assert (= (and start!565242 ((_ is Concat!23934) r!7292)) b!5372654))

(assert (= (and start!565242 ((_ is Star!15089) r!7292)) b!5372681))

(assert (= (and start!565242 ((_ is Union!15089) r!7292)) b!5372670))

(assert (= (and start!565242 condSetEmpty!34823) setIsEmpty!34823))

(assert (= (and start!565242 (not condSetEmpty!34823)) setNonEmpty!34823))

(assert (= setNonEmpty!34823 b!5372683))

(assert (= b!5372662 b!5372672))

(assert (= (and start!565242 ((_ is Cons!61444) zl!343)) b!5372662))

(assert (= (and start!565242 ((_ is Cons!61442) s!2326)) b!5372675))

(declare-fun m!6399676 () Bool)

(assert (=> b!5372644 m!6399676))

(declare-fun m!6399678 () Bool)

(assert (=> b!5372644 m!6399678))

(declare-fun m!6399680 () Bool)

(assert (=> b!5372655 m!6399680))

(declare-fun m!6399682 () Bool)

(assert (=> b!5372646 m!6399682))

(declare-fun m!6399684 () Bool)

(assert (=> b!5372678 m!6399684))

(declare-fun m!6399686 () Bool)

(assert (=> b!5372662 m!6399686))

(declare-fun m!6399688 () Bool)

(assert (=> start!565242 m!6399688))

(declare-fun m!6399690 () Bool)

(assert (=> b!5372674 m!6399690))

(declare-fun m!6399692 () Bool)

(assert (=> b!5372665 m!6399692))

(declare-fun m!6399694 () Bool)

(assert (=> b!5372665 m!6399694))

(declare-fun m!6399696 () Bool)

(assert (=> b!5372665 m!6399696))

(declare-fun m!6399698 () Bool)

(assert (=> b!5372665 m!6399698))

(declare-fun m!6399700 () Bool)

(assert (=> b!5372665 m!6399700))

(declare-fun m!6399702 () Bool)

(assert (=> b!5372665 m!6399702))

(declare-fun m!6399704 () Bool)

(assert (=> b!5372665 m!6399704))

(declare-fun m!6399706 () Bool)

(assert (=> b!5372665 m!6399706))

(declare-fun m!6399708 () Bool)

(assert (=> b!5372665 m!6399708))

(declare-fun m!6399710 () Bool)

(assert (=> b!5372661 m!6399710))

(declare-fun m!6399712 () Bool)

(assert (=> b!5372661 m!6399712))

(declare-fun m!6399714 () Bool)

(assert (=> b!5372661 m!6399714))

(declare-fun m!6399716 () Bool)

(assert (=> b!5372656 m!6399716))

(declare-fun m!6399718 () Bool)

(assert (=> b!5372656 m!6399718))

(declare-fun m!6399720 () Bool)

(assert (=> b!5372656 m!6399720))

(declare-fun m!6399722 () Bool)

(assert (=> b!5372656 m!6399722))

(declare-fun m!6399724 () Bool)

(assert (=> b!5372656 m!6399724))

(declare-fun m!6399726 () Bool)

(assert (=> b!5372645 m!6399726))

(declare-fun m!6399728 () Bool)

(assert (=> b!5372645 m!6399728))

(declare-fun m!6399730 () Bool)

(assert (=> b!5372645 m!6399730))

(declare-fun m!6399732 () Bool)

(assert (=> b!5372645 m!6399732))

(declare-fun m!6399734 () Bool)

(assert (=> b!5372645 m!6399734))

(declare-fun m!6399736 () Bool)

(assert (=> b!5372645 m!6399736))

(declare-fun m!6399738 () Bool)

(assert (=> b!5372645 m!6399738))

(declare-fun m!6399740 () Bool)

(assert (=> b!5372680 m!6399740))

(declare-fun m!6399742 () Bool)

(assert (=> b!5372680 m!6399742))

(declare-fun m!6399744 () Bool)

(assert (=> b!5372680 m!6399744))

(declare-fun m!6399746 () Bool)

(assert (=> b!5372680 m!6399746))

(declare-fun m!6399748 () Bool)

(assert (=> b!5372680 m!6399748))

(assert (=> b!5372680 m!6399746))

(declare-fun m!6399750 () Bool)

(assert (=> b!5372680 m!6399750))

(declare-fun m!6399752 () Bool)

(assert (=> b!5372680 m!6399752))

(declare-fun m!6399754 () Bool)

(assert (=> b!5372680 m!6399754))

(declare-fun m!6399756 () Bool)

(assert (=> b!5372671 m!6399756))

(declare-fun m!6399758 () Bool)

(assert (=> b!5372663 m!6399758))

(declare-fun m!6399760 () Bool)

(assert (=> b!5372659 m!6399760))

(declare-fun m!6399762 () Bool)

(assert (=> b!5372669 m!6399762))

(declare-fun m!6399764 () Bool)

(assert (=> b!5372669 m!6399764))

(declare-fun m!6399766 () Bool)

(assert (=> b!5372669 m!6399766))

(declare-fun m!6399768 () Bool)

(assert (=> b!5372669 m!6399768))

(declare-fun m!6399770 () Bool)

(assert (=> b!5372669 m!6399770))

(assert (=> b!5372669 m!6399768))

(assert (=> b!5372669 m!6399762))

(declare-fun m!6399772 () Bool)

(assert (=> b!5372669 m!6399772))

(declare-fun m!6399774 () Bool)

(assert (=> b!5372677 m!6399774))

(declare-fun m!6399776 () Bool)

(assert (=> b!5372650 m!6399776))

(declare-fun m!6399778 () Bool)

(assert (=> b!5372666 m!6399778))

(declare-fun m!6399780 () Bool)

(assert (=> b!5372658 m!6399780))

(declare-fun m!6399782 () Bool)

(assert (=> b!5372658 m!6399782))

(declare-fun m!6399784 () Bool)

(assert (=> b!5372658 m!6399784))

(declare-fun m!6399786 () Bool)

(assert (=> setNonEmpty!34823 m!6399786))

(declare-fun m!6399788 () Bool)

(assert (=> b!5372657 m!6399788))

(declare-fun m!6399790 () Bool)

(assert (=> b!5372668 m!6399790))

(declare-fun m!6399792 () Bool)

(assert (=> b!5372668 m!6399792))

(declare-fun m!6399794 () Bool)

(assert (=> b!5372660 m!6399794))

(declare-fun m!6399796 () Bool)

(assert (=> b!5372660 m!6399796))

(declare-fun m!6399798 () Bool)

(assert (=> b!5372660 m!6399798))

(declare-fun m!6399800 () Bool)

(assert (=> b!5372664 m!6399800))

(assert (=> b!5372664 m!6399800))

(declare-fun m!6399802 () Bool)

(assert (=> b!5372664 m!6399802))

(declare-fun m!6399804 () Bool)

(assert (=> b!5372649 m!6399804))

(declare-fun m!6399806 () Bool)

(assert (=> b!5372682 m!6399806))

(check-sat (not b!5372680) (not b!5372671) (not b!5372657) (not b!5372646) (not b!5372675) (not b!5372674) (not b!5372664) (not b!5372672) (not setNonEmpty!34823) (not b!5372650) (not b!5372666) (not b!5372670) (not b!5372682) (not b!5372681) tp_is_empty!39431 (not b!5372659) (not b!5372654) (not b!5372656) (not b!5372644) (not b!5372668) (not b!5372677) (not b!5372662) (not b!5372655) (not b!5372678) (not b!5372663) (not b!5372660) (not b!5372658) (not b!5372649) (not b!5372645) (not start!565242) (not b!5372683) (not b!5372661) (not b!5372669) (not b!5372665))
(check-sat)
