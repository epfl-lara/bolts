; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!612530 () Bool)

(assert start!612530)

(declare-fun b!6132400 () Bool)

(assert (=> b!6132400 true))

(assert (=> b!6132400 true))

(declare-fun lambda!334102 () Int)

(declare-fun lambda!334101 () Int)

(assert (=> b!6132400 (not (= lambda!334102 lambda!334101))))

(assert (=> b!6132400 true))

(assert (=> b!6132400 true))

(declare-fun b!6132399 () Bool)

(assert (=> b!6132399 true))

(declare-fun b!6132389 () Bool)

(declare-fun e!3737715 () Bool)

(declare-fun tp_is_empty!41407 () Bool)

(declare-fun tp!1713739 () Bool)

(assert (=> b!6132389 (= e!3737715 (and tp_is_empty!41407 tp!1713739))))

(declare-fun b!6132390 () Bool)

(declare-fun e!3737721 () Bool)

(assert (=> b!6132390 (= e!3737721 tp_is_empty!41407)))

(declare-fun b!6132391 () Bool)

(declare-fun tp!1713741 () Bool)

(assert (=> b!6132391 (= e!3737721 tp!1713741)))

(declare-fun b!6132392 () Bool)

(declare-fun res!2541523 () Bool)

(declare-fun e!3737722 () Bool)

(assert (=> b!6132392 (=> res!2541523 e!3737722)))

(declare-datatypes ((C!32424 0))(
  ( (C!32425 (val!25914 Int)) )
))
(declare-datatypes ((Regex!16077 0))(
  ( (ElementMatch!16077 (c!1102519 C!32424)) (Concat!24922 (regOne!32666 Regex!16077) (regTwo!32666 Regex!16077)) (EmptyExpr!16077) (Star!16077 (reg!16406 Regex!16077)) (EmptyLang!16077) (Union!16077 (regOne!32667 Regex!16077) (regTwo!32667 Regex!16077)) )
))
(declare-datatypes ((List!64530 0))(
  ( (Nil!64406) (Cons!64406 (h!70854 Regex!16077) (t!378001 List!64530)) )
))
(declare-datatypes ((Context!10922 0))(
  ( (Context!10923 (exprs!5961 List!64530)) )
))
(declare-datatypes ((List!64531 0))(
  ( (Nil!64407) (Cons!64407 (h!70855 Context!10922) (t!378002 List!64531)) )
))
(declare-fun zl!343 () List!64531)

(declare-fun isEmpty!36348 (List!64530) Bool)

(assert (=> b!6132392 (= res!2541523 (isEmpty!36348 (t!378001 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6132393 () Bool)

(declare-datatypes ((Unit!157463 0))(
  ( (Unit!157464) )
))
(declare-fun e!3737714 () Unit!157463)

(declare-fun Unit!157465 () Unit!157463)

(assert (=> b!6132393 (= e!3737714 Unit!157465)))

(declare-datatypes ((List!64532 0))(
  ( (Nil!64408) (Cons!64408 (h!70856 C!32424) (t!378003 List!64532)) )
))
(declare-fun s!2326 () List!64532)

(declare-fun lt!2332112 () Unit!157463)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2332102 () (InoxSet Context!10922))

(declare-fun lt!2332103 () (InoxSet Context!10922))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!908 ((InoxSet Context!10922) (InoxSet Context!10922) List!64532) Unit!157463)

(assert (=> b!6132393 (= lt!2332112 (lemmaZipperConcatMatchesSameAsBothZippers!908 lt!2332102 lt!2332103 (t!378003 s!2326)))))

(declare-fun res!2541530 () Bool)

(declare-fun matchZipper!2089 ((InoxSet Context!10922) List!64532) Bool)

(assert (=> b!6132393 (= res!2541530 (matchZipper!2089 lt!2332102 (t!378003 s!2326)))))

(declare-fun e!3737719 () Bool)

(assert (=> b!6132393 (=> res!2541530 e!3737719)))

(assert (=> b!6132393 (= (matchZipper!2089 ((_ map or) lt!2332102 lt!2332103) (t!378003 s!2326)) e!3737719)))

(declare-fun b!6132394 () Bool)

(declare-fun e!3737724 () Bool)

(declare-fun r!7292 () Regex!16077)

(declare-fun inv!83439 (Context!10922) Bool)

(assert (=> b!6132394 (= e!3737724 (inv!83439 (Context!10923 (Cons!64406 (regTwo!32667 (regOne!32666 r!7292)) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))

(declare-fun b!6132395 () Bool)

(declare-fun res!2541520 () Bool)

(declare-fun e!3737725 () Bool)

(assert (=> b!6132395 (=> res!2541520 e!3737725)))

(get-info :version)

(assert (=> b!6132395 (= res!2541520 (or ((_ is EmptyExpr!16077) r!7292) ((_ is EmptyLang!16077) r!7292) ((_ is ElementMatch!16077) r!7292) ((_ is Union!16077) r!7292) (not ((_ is Concat!24922) r!7292))))))

(declare-fun b!6132396 () Bool)

(declare-fun e!3737717 () Bool)

(declare-fun tp!1713746 () Bool)

(assert (=> b!6132396 (= e!3737717 tp!1713746)))

(declare-fun b!6132397 () Bool)

(declare-fun res!2541528 () Bool)

(assert (=> b!6132397 (=> res!2541528 e!3737725)))

(declare-fun isEmpty!36349 (List!64531) Bool)

(assert (=> b!6132397 (= res!2541528 (not (isEmpty!36349 (t!378002 zl!343))))))

(declare-fun b!6132398 () Bool)

(declare-fun res!2541519 () Bool)

(declare-fun e!3737720 () Bool)

(assert (=> b!6132398 (=> (not res!2541519) (not e!3737720))))

(declare-fun z!1189 () (InoxSet Context!10922))

(declare-fun toList!9861 ((InoxSet Context!10922)) List!64531)

(assert (=> b!6132398 (= res!2541519 (= (toList!9861 z!1189) zl!343))))

(assert (=> b!6132400 (= e!3737725 e!3737722)))

(declare-fun res!2541521 () Bool)

(assert (=> b!6132400 (=> res!2541521 e!3737722)))

(declare-fun lt!2332107 () Bool)

(declare-fun lt!2332116 () Bool)

(assert (=> b!6132400 (= res!2541521 (or (not (= lt!2332107 lt!2332116)) ((_ is Nil!64408) s!2326)))))

(declare-fun Exists!3147 (Int) Bool)

(assert (=> b!6132400 (= (Exists!3147 lambda!334101) (Exists!3147 lambda!334102))))

(declare-fun lt!2332106 () Unit!157463)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1684 (Regex!16077 Regex!16077 List!64532) Unit!157463)

(assert (=> b!6132400 (= lt!2332106 (lemmaExistCutMatchRandMatchRSpecEquivalent!1684 (regOne!32666 r!7292) (regTwo!32666 r!7292) s!2326))))

(assert (=> b!6132400 (= lt!2332116 (Exists!3147 lambda!334101))))

(declare-datatypes ((tuple2!66112 0))(
  ( (tuple2!66113 (_1!36359 List!64532) (_2!36359 List!64532)) )
))
(declare-datatypes ((Option!15968 0))(
  ( (None!15967) (Some!15967 (v!52106 tuple2!66112)) )
))
(declare-fun isDefined!12671 (Option!15968) Bool)

(declare-fun findConcatSeparation!2382 (Regex!16077 Regex!16077 List!64532 List!64532 List!64532) Option!15968)

(assert (=> b!6132400 (= lt!2332116 (isDefined!12671 (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) Nil!64408 s!2326 s!2326)))))

(declare-fun lt!2332113 () Unit!157463)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2146 (Regex!16077 Regex!16077 List!64532) Unit!157463)

(assert (=> b!6132400 (= lt!2332113 (lemmaFindConcatSeparationEquivalentToExists!2146 (regOne!32666 r!7292) (regTwo!32666 r!7292) s!2326))))

(declare-fun b!6132401 () Bool)

(declare-fun tp!1713737 () Bool)

(declare-fun tp!1713740 () Bool)

(assert (=> b!6132401 (= e!3737721 (and tp!1713737 tp!1713740))))

(declare-fun b!6132402 () Bool)

(declare-fun e!3737712 () Bool)

(assert (=> b!6132402 (= e!3737712 e!3737724)))

(declare-fun res!2541525 () Bool)

(assert (=> b!6132402 (=> res!2541525 e!3737724)))

(declare-fun e!3737723 () Bool)

(assert (=> b!6132402 (= res!2541525 e!3737723)))

(declare-fun res!2541532 () Bool)

(assert (=> b!6132402 (=> (not res!2541532) (not e!3737723))))

(declare-fun lt!2332110 () Bool)

(assert (=> b!6132402 (= res!2541532 (not (= (matchZipper!2089 lt!2332102 (t!378003 s!2326)) lt!2332110)))))

(declare-fun lt!2332104 () (InoxSet Context!10922))

(declare-fun e!3737713 () Bool)

(assert (=> b!6132402 (= (matchZipper!2089 lt!2332104 (t!378003 s!2326)) e!3737713)))

(declare-fun res!2541522 () Bool)

(assert (=> b!6132402 (=> res!2541522 e!3737713)))

(assert (=> b!6132402 (= res!2541522 lt!2332110)))

(declare-fun lt!2332115 () (InoxSet Context!10922))

(assert (=> b!6132402 (= lt!2332110 (matchZipper!2089 lt!2332115 (t!378003 s!2326)))))

(declare-fun lt!2332105 () (InoxSet Context!10922))

(declare-fun lt!2332108 () Unit!157463)

(assert (=> b!6132402 (= lt!2332108 (lemmaZipperConcatMatchesSameAsBothZippers!908 lt!2332115 lt!2332105 (t!378003 s!2326)))))

(declare-fun tp!1713743 () Bool)

(declare-fun setElem!41456 () Context!10922)

(declare-fun setNonEmpty!41456 () Bool)

(declare-fun setRes!41456 () Bool)

(declare-fun e!3737718 () Bool)

(assert (=> setNonEmpty!41456 (= setRes!41456 (and tp!1713743 (inv!83439 setElem!41456) e!3737718))))

(declare-fun setRest!41456 () (InoxSet Context!10922))

(assert (=> setNonEmpty!41456 (= z!1189 ((_ map or) (store ((as const (Array Context!10922 Bool)) false) setElem!41456 true) setRest!41456))))

(declare-fun b!6132403 () Bool)

(declare-fun tp!1713738 () Bool)

(assert (=> b!6132403 (= e!3737718 tp!1713738)))

(declare-fun b!6132404 () Bool)

(declare-fun res!2541533 () Bool)

(assert (=> b!6132404 (=> res!2541533 e!3737725)))

(assert (=> b!6132404 (= res!2541533 (not ((_ is Cons!64406) (exprs!5961 (h!70855 zl!343)))))))

(declare-fun tp!1713742 () Bool)

(declare-fun b!6132405 () Bool)

(declare-fun e!3737716 () Bool)

(assert (=> b!6132405 (= e!3737716 (and (inv!83439 (h!70855 zl!343)) e!3737717 tp!1713742))))

(declare-fun b!6132406 () Bool)

(assert (=> b!6132406 (= e!3737720 (not e!3737725))))

(declare-fun res!2541535 () Bool)

(assert (=> b!6132406 (=> res!2541535 e!3737725)))

(assert (=> b!6132406 (= res!2541535 (not ((_ is Cons!64407) zl!343)))))

(declare-fun matchRSpec!3178 (Regex!16077 List!64532) Bool)

(assert (=> b!6132406 (= lt!2332107 (matchRSpec!3178 r!7292 s!2326))))

(declare-fun matchR!8260 (Regex!16077 List!64532) Bool)

(assert (=> b!6132406 (= lt!2332107 (matchR!8260 r!7292 s!2326))))

(declare-fun lt!2332114 () Unit!157463)

(declare-fun mainMatchTheorem!3178 (Regex!16077 List!64532) Unit!157463)

(assert (=> b!6132406 (= lt!2332114 (mainMatchTheorem!3178 r!7292 s!2326))))

(declare-fun b!6132407 () Bool)

(declare-fun tp!1713744 () Bool)

(declare-fun tp!1713745 () Bool)

(assert (=> b!6132407 (= e!3737721 (and tp!1713744 tp!1713745))))

(declare-fun b!6132408 () Bool)

(declare-fun res!2541529 () Bool)

(assert (=> b!6132408 (=> res!2541529 e!3737725)))

(declare-fun generalisedUnion!1921 (List!64530) Regex!16077)

(declare-fun unfocusZipperList!1498 (List!64531) List!64530)

(assert (=> b!6132408 (= res!2541529 (not (= r!7292 (generalisedUnion!1921 (unfocusZipperList!1498 zl!343)))))))

(declare-fun b!6132409 () Bool)

(declare-fun e!3737711 () Bool)

(assert (=> b!6132409 (= e!3737711 e!3737712)))

(declare-fun res!2541534 () Bool)

(assert (=> b!6132409 (=> res!2541534 e!3737712)))

(assert (=> b!6132409 (= res!2541534 (not (= lt!2332102 lt!2332104)))))

(assert (=> b!6132409 (= lt!2332104 ((_ map or) lt!2332115 lt!2332105))))

(declare-fun lt!2332109 () Context!10922)

(declare-fun derivationStepZipperDown!1325 (Regex!16077 Context!10922 C!32424) (InoxSet Context!10922))

(assert (=> b!6132409 (= lt!2332105 (derivationStepZipperDown!1325 (regTwo!32667 (regOne!32666 r!7292)) lt!2332109 (h!70856 s!2326)))))

(assert (=> b!6132409 (= lt!2332115 (derivationStepZipperDown!1325 (regOne!32667 (regOne!32666 r!7292)) lt!2332109 (h!70856 s!2326)))))

(declare-fun b!6132410 () Bool)

(declare-fun Unit!157466 () Unit!157463)

(assert (=> b!6132410 (= e!3737714 Unit!157466)))

(declare-fun b!6132411 () Bool)

(declare-fun res!2541526 () Bool)

(assert (=> b!6132411 (=> res!2541526 e!3737725)))

(declare-fun generalisedConcat!1674 (List!64530) Regex!16077)

(assert (=> b!6132411 (= res!2541526 (not (= r!7292 (generalisedConcat!1674 (exprs!5961 (h!70855 zl!343))))))))

(declare-fun b!6132412 () Bool)

(assert (=> b!6132412 (= e!3737723 (not (matchZipper!2089 lt!2332105 (t!378003 s!2326))))))

(declare-fun b!6132413 () Bool)

(declare-fun res!2541524 () Bool)

(assert (=> b!6132413 (=> (not res!2541524) (not e!3737720))))

(declare-fun unfocusZipper!1819 (List!64531) Regex!16077)

(assert (=> b!6132413 (= res!2541524 (= r!7292 (unfocusZipper!1819 zl!343)))))

(declare-fun b!6132414 () Bool)

(assert (=> b!6132414 (= e!3737713 (matchZipper!2089 lt!2332105 (t!378003 s!2326)))))

(declare-fun b!6132415 () Bool)

(assert (=> b!6132415 (= e!3737719 (matchZipper!2089 lt!2332103 (t!378003 s!2326)))))

(declare-fun setIsEmpty!41456 () Bool)

(assert (=> setIsEmpty!41456 setRes!41456))

(declare-fun res!2541527 () Bool)

(assert (=> start!612530 (=> (not res!2541527) (not e!3737720))))

(declare-fun validRegex!7813 (Regex!16077) Bool)

(assert (=> start!612530 (= res!2541527 (validRegex!7813 r!7292))))

(assert (=> start!612530 e!3737720))

(assert (=> start!612530 e!3737721))

(declare-fun condSetEmpty!41456 () Bool)

(assert (=> start!612530 (= condSetEmpty!41456 (= z!1189 ((as const (Array Context!10922 Bool)) false)))))

(assert (=> start!612530 setRes!41456))

(assert (=> start!612530 e!3737716))

(assert (=> start!612530 e!3737715))

(assert (=> b!6132399 (= e!3737722 e!3737711)))

(declare-fun res!2541531 () Bool)

(assert (=> b!6132399 (=> res!2541531 e!3737711)))

(assert (=> b!6132399 (= res!2541531 (or (and ((_ is ElementMatch!16077) (regOne!32666 r!7292)) (= (c!1102519 (regOne!32666 r!7292)) (h!70856 s!2326))) (not ((_ is Union!16077) (regOne!32666 r!7292)))))))

(declare-fun lt!2332111 () Unit!157463)

(assert (=> b!6132399 (= lt!2332111 e!3737714)))

(declare-fun c!1102518 () Bool)

(declare-fun nullable!6070 (Regex!16077) Bool)

(assert (=> b!6132399 (= c!1102518 (nullable!6070 (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun lambda!334103 () Int)

(declare-fun flatMap!1582 ((InoxSet Context!10922) Int) (InoxSet Context!10922))

(declare-fun derivationStepZipperUp!1251 (Context!10922 C!32424) (InoxSet Context!10922))

(assert (=> b!6132399 (= (flatMap!1582 z!1189 lambda!334103) (derivationStepZipperUp!1251 (h!70855 zl!343) (h!70856 s!2326)))))

(declare-fun lt!2332101 () Unit!157463)

(declare-fun lemmaFlatMapOnSingletonSet!1108 ((InoxSet Context!10922) Context!10922 Int) Unit!157463)

(assert (=> b!6132399 (= lt!2332101 (lemmaFlatMapOnSingletonSet!1108 z!1189 (h!70855 zl!343) lambda!334103))))

(assert (=> b!6132399 (= lt!2332103 (derivationStepZipperUp!1251 lt!2332109 (h!70856 s!2326)))))

(assert (=> b!6132399 (= lt!2332102 (derivationStepZipperDown!1325 (h!70854 (exprs!5961 (h!70855 zl!343))) lt!2332109 (h!70856 s!2326)))))

(assert (=> b!6132399 (= lt!2332109 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun lt!2332100 () (InoxSet Context!10922))

(assert (=> b!6132399 (= lt!2332100 (derivationStepZipperUp!1251 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))) (h!70856 s!2326)))))

(assert (= (and start!612530 res!2541527) b!6132398))

(assert (= (and b!6132398 res!2541519) b!6132413))

(assert (= (and b!6132413 res!2541524) b!6132406))

(assert (= (and b!6132406 (not res!2541535)) b!6132397))

(assert (= (and b!6132397 (not res!2541528)) b!6132411))

(assert (= (and b!6132411 (not res!2541526)) b!6132404))

(assert (= (and b!6132404 (not res!2541533)) b!6132408))

(assert (= (and b!6132408 (not res!2541529)) b!6132395))

(assert (= (and b!6132395 (not res!2541520)) b!6132400))

(assert (= (and b!6132400 (not res!2541521)) b!6132392))

(assert (= (and b!6132392 (not res!2541523)) b!6132399))

(assert (= (and b!6132399 c!1102518) b!6132393))

(assert (= (and b!6132399 (not c!1102518)) b!6132410))

(assert (= (and b!6132393 (not res!2541530)) b!6132415))

(assert (= (and b!6132399 (not res!2541531)) b!6132409))

(assert (= (and b!6132409 (not res!2541534)) b!6132402))

(assert (= (and b!6132402 (not res!2541522)) b!6132414))

(assert (= (and b!6132402 res!2541532) b!6132412))

(assert (= (and b!6132402 (not res!2541525)) b!6132394))

(assert (= (and start!612530 ((_ is ElementMatch!16077) r!7292)) b!6132390))

(assert (= (and start!612530 ((_ is Concat!24922) r!7292)) b!6132407))

(assert (= (and start!612530 ((_ is Star!16077) r!7292)) b!6132391))

(assert (= (and start!612530 ((_ is Union!16077) r!7292)) b!6132401))

(assert (= (and start!612530 condSetEmpty!41456) setIsEmpty!41456))

(assert (= (and start!612530 (not condSetEmpty!41456)) setNonEmpty!41456))

(assert (= setNonEmpty!41456 b!6132403))

(assert (= b!6132405 b!6132396))

(assert (= (and start!612530 ((_ is Cons!64407) zl!343)) b!6132405))

(assert (= (and start!612530 ((_ is Cons!64408) s!2326)) b!6132389))

(declare-fun m!6975574 () Bool)

(assert (=> b!6132413 m!6975574))

(declare-fun m!6975576 () Bool)

(assert (=> b!6132398 m!6975576))

(declare-fun m!6975578 () Bool)

(assert (=> b!6132397 m!6975578))

(declare-fun m!6975580 () Bool)

(assert (=> b!6132402 m!6975580))

(declare-fun m!6975582 () Bool)

(assert (=> b!6132402 m!6975582))

(declare-fun m!6975584 () Bool)

(assert (=> b!6132402 m!6975584))

(declare-fun m!6975586 () Bool)

(assert (=> b!6132402 m!6975586))

(declare-fun m!6975588 () Bool)

(assert (=> b!6132409 m!6975588))

(declare-fun m!6975590 () Bool)

(assert (=> b!6132409 m!6975590))

(declare-fun m!6975592 () Bool)

(assert (=> setNonEmpty!41456 m!6975592))

(declare-fun m!6975594 () Bool)

(assert (=> b!6132414 m!6975594))

(declare-fun m!6975596 () Bool)

(assert (=> b!6132406 m!6975596))

(declare-fun m!6975598 () Bool)

(assert (=> b!6132406 m!6975598))

(declare-fun m!6975600 () Bool)

(assert (=> b!6132406 m!6975600))

(declare-fun m!6975602 () Bool)

(assert (=> b!6132405 m!6975602))

(declare-fun m!6975604 () Bool)

(assert (=> b!6132408 m!6975604))

(assert (=> b!6132408 m!6975604))

(declare-fun m!6975606 () Bool)

(assert (=> b!6132408 m!6975606))

(declare-fun m!6975608 () Bool)

(assert (=> start!612530 m!6975608))

(assert (=> b!6132412 m!6975594))

(declare-fun m!6975610 () Bool)

(assert (=> b!6132393 m!6975610))

(assert (=> b!6132393 m!6975580))

(declare-fun m!6975612 () Bool)

(assert (=> b!6132393 m!6975612))

(declare-fun m!6975614 () Bool)

(assert (=> b!6132400 m!6975614))

(declare-fun m!6975616 () Bool)

(assert (=> b!6132400 m!6975616))

(declare-fun m!6975618 () Bool)

(assert (=> b!6132400 m!6975618))

(declare-fun m!6975620 () Bool)

(assert (=> b!6132400 m!6975620))

(declare-fun m!6975622 () Bool)

(assert (=> b!6132400 m!6975622))

(assert (=> b!6132400 m!6975620))

(assert (=> b!6132400 m!6975616))

(declare-fun m!6975624 () Bool)

(assert (=> b!6132400 m!6975624))

(declare-fun m!6975626 () Bool)

(assert (=> b!6132415 m!6975626))

(declare-fun m!6975628 () Bool)

(assert (=> b!6132411 m!6975628))

(declare-fun m!6975630 () Bool)

(assert (=> b!6132394 m!6975630))

(declare-fun m!6975632 () Bool)

(assert (=> b!6132399 m!6975632))

(declare-fun m!6975634 () Bool)

(assert (=> b!6132399 m!6975634))

(declare-fun m!6975636 () Bool)

(assert (=> b!6132399 m!6975636))

(declare-fun m!6975638 () Bool)

(assert (=> b!6132399 m!6975638))

(declare-fun m!6975640 () Bool)

(assert (=> b!6132399 m!6975640))

(declare-fun m!6975642 () Bool)

(assert (=> b!6132399 m!6975642))

(declare-fun m!6975644 () Bool)

(assert (=> b!6132399 m!6975644))

(declare-fun m!6975646 () Bool)

(assert (=> b!6132392 m!6975646))

(check-sat (not b!6132393) (not b!6132399) (not start!612530) (not setNonEmpty!41456) (not b!6132415) (not b!6132409) (not b!6132403) (not b!6132391) (not b!6132400) (not b!6132397) (not b!6132402) tp_is_empty!41407 (not b!6132414) (not b!6132413) (not b!6132405) (not b!6132407) (not b!6132392) (not b!6132401) (not b!6132389) (not b!6132408) (not b!6132412) (not b!6132396) (not b!6132406) (not b!6132398) (not b!6132411) (not b!6132394))
(check-sat)
(get-model)

(declare-fun d!1921394 () Bool)

(declare-fun e!3737887 () Bool)

(assert (=> d!1921394 e!3737887))

(declare-fun res!2541621 () Bool)

(assert (=> d!1921394 (=> (not res!2541621) (not e!3737887))))

(declare-fun lt!2332143 () List!64531)

(declare-fun noDuplicate!1923 (List!64531) Bool)

(assert (=> d!1921394 (= res!2541621 (noDuplicate!1923 lt!2332143))))

(declare-fun choose!45564 ((InoxSet Context!10922)) List!64531)

(assert (=> d!1921394 (= lt!2332143 (choose!45564 z!1189))))

(assert (=> d!1921394 (= (toList!9861 z!1189) lt!2332143)))

(declare-fun b!6132695 () Bool)

(declare-fun content!11976 (List!64531) (InoxSet Context!10922))

(assert (=> b!6132695 (= e!3737887 (= (content!11976 lt!2332143) z!1189))))

(assert (= (and d!1921394 res!2541621) b!6132695))

(declare-fun m!6975802 () Bool)

(assert (=> d!1921394 m!6975802))

(declare-fun m!6975804 () Bool)

(assert (=> d!1921394 m!6975804))

(declare-fun m!6975806 () Bool)

(assert (=> b!6132695 m!6975806))

(assert (=> b!6132398 d!1921394))

(declare-fun b!6132743 () Bool)

(declare-fun e!3737917 () Bool)

(declare-fun e!3737918 () Bool)

(assert (=> b!6132743 (= e!3737917 e!3737918)))

(declare-fun c!1102630 () Bool)

(declare-fun tail!11760 (List!64530) List!64530)

(assert (=> b!6132743 (= c!1102630 (isEmpty!36348 (tail!11760 (unfocusZipperList!1498 zl!343))))))

(declare-fun b!6132744 () Bool)

(declare-fun e!3737920 () Regex!16077)

(assert (=> b!6132744 (= e!3737920 (Union!16077 (h!70854 (unfocusZipperList!1498 zl!343)) (generalisedUnion!1921 (t!378001 (unfocusZipperList!1498 zl!343)))))))

(declare-fun d!1921396 () Bool)

(declare-fun e!3737916 () Bool)

(assert (=> d!1921396 e!3737916))

(declare-fun res!2541641 () Bool)

(assert (=> d!1921396 (=> (not res!2541641) (not e!3737916))))

(declare-fun lt!2332155 () Regex!16077)

(assert (=> d!1921396 (= res!2541641 (validRegex!7813 lt!2332155))))

(declare-fun e!3737919 () Regex!16077)

(assert (=> d!1921396 (= lt!2332155 e!3737919)))

(declare-fun c!1102631 () Bool)

(declare-fun e!3737915 () Bool)

(assert (=> d!1921396 (= c!1102631 e!3737915)))

(declare-fun res!2541642 () Bool)

(assert (=> d!1921396 (=> (not res!2541642) (not e!3737915))))

(assert (=> d!1921396 (= res!2541642 ((_ is Cons!64406) (unfocusZipperList!1498 zl!343)))))

(declare-fun lambda!334125 () Int)

(declare-fun forall!15198 (List!64530 Int) Bool)

(assert (=> d!1921396 (forall!15198 (unfocusZipperList!1498 zl!343) lambda!334125)))

(assert (=> d!1921396 (= (generalisedUnion!1921 (unfocusZipperList!1498 zl!343)) lt!2332155)))

(declare-fun b!6132745 () Bool)

(assert (=> b!6132745 (= e!3737915 (isEmpty!36348 (t!378001 (unfocusZipperList!1498 zl!343))))))

(declare-fun b!6132746 () Bool)

(assert (=> b!6132746 (= e!3737919 e!3737920)))

(declare-fun c!1102628 () Bool)

(assert (=> b!6132746 (= c!1102628 ((_ is Cons!64406) (unfocusZipperList!1498 zl!343)))))

(declare-fun b!6132747 () Bool)

(declare-fun head!12675 (List!64530) Regex!16077)

(assert (=> b!6132747 (= e!3737918 (= lt!2332155 (head!12675 (unfocusZipperList!1498 zl!343))))))

(declare-fun b!6132748 () Bool)

(assert (=> b!6132748 (= e!3737919 (h!70854 (unfocusZipperList!1498 zl!343)))))

(declare-fun b!6132749 () Bool)

(assert (=> b!6132749 (= e!3737916 e!3737917)))

(declare-fun c!1102629 () Bool)

(assert (=> b!6132749 (= c!1102629 (isEmpty!36348 (unfocusZipperList!1498 zl!343)))))

(declare-fun b!6132750 () Bool)

(assert (=> b!6132750 (= e!3737920 EmptyLang!16077)))

(declare-fun b!6132751 () Bool)

(declare-fun isEmptyLang!1503 (Regex!16077) Bool)

(assert (=> b!6132751 (= e!3737917 (isEmptyLang!1503 lt!2332155))))

(declare-fun b!6132752 () Bool)

(declare-fun isUnion!933 (Regex!16077) Bool)

(assert (=> b!6132752 (= e!3737918 (isUnion!933 lt!2332155))))

(assert (= (and d!1921396 res!2541642) b!6132745))

(assert (= (and d!1921396 c!1102631) b!6132748))

(assert (= (and d!1921396 (not c!1102631)) b!6132746))

(assert (= (and b!6132746 c!1102628) b!6132744))

(assert (= (and b!6132746 (not c!1102628)) b!6132750))

(assert (= (and d!1921396 res!2541641) b!6132749))

(assert (= (and b!6132749 c!1102629) b!6132751))

(assert (= (and b!6132749 (not c!1102629)) b!6132743))

(assert (= (and b!6132743 c!1102630) b!6132747))

(assert (= (and b!6132743 (not c!1102630)) b!6132752))

(assert (=> b!6132749 m!6975604))

(declare-fun m!6975836 () Bool)

(assert (=> b!6132749 m!6975836))

(assert (=> b!6132743 m!6975604))

(declare-fun m!6975838 () Bool)

(assert (=> b!6132743 m!6975838))

(assert (=> b!6132743 m!6975838))

(declare-fun m!6975840 () Bool)

(assert (=> b!6132743 m!6975840))

(declare-fun m!6975842 () Bool)

(assert (=> b!6132751 m!6975842))

(declare-fun m!6975844 () Bool)

(assert (=> b!6132752 m!6975844))

(declare-fun m!6975846 () Bool)

(assert (=> b!6132745 m!6975846))

(declare-fun m!6975848 () Bool)

(assert (=> b!6132744 m!6975848))

(assert (=> b!6132747 m!6975604))

(declare-fun m!6975850 () Bool)

(assert (=> b!6132747 m!6975850))

(declare-fun m!6975852 () Bool)

(assert (=> d!1921396 m!6975852))

(assert (=> d!1921396 m!6975604))

(declare-fun m!6975854 () Bool)

(assert (=> d!1921396 m!6975854))

(assert (=> b!6132408 d!1921396))

(declare-fun bs!1521113 () Bool)

(declare-fun d!1921404 () Bool)

(assert (= bs!1521113 (and d!1921404 d!1921396)))

(declare-fun lambda!334128 () Int)

(assert (=> bs!1521113 (= lambda!334128 lambda!334125)))

(declare-fun lt!2332158 () List!64530)

(assert (=> d!1921404 (forall!15198 lt!2332158 lambda!334128)))

(declare-fun e!3737923 () List!64530)

(assert (=> d!1921404 (= lt!2332158 e!3737923)))

(declare-fun c!1102634 () Bool)

(assert (=> d!1921404 (= c!1102634 ((_ is Cons!64407) zl!343))))

(assert (=> d!1921404 (= (unfocusZipperList!1498 zl!343) lt!2332158)))

(declare-fun b!6132757 () Bool)

(assert (=> b!6132757 (= e!3737923 (Cons!64406 (generalisedConcat!1674 (exprs!5961 (h!70855 zl!343))) (unfocusZipperList!1498 (t!378002 zl!343))))))

(declare-fun b!6132758 () Bool)

(assert (=> b!6132758 (= e!3737923 Nil!64406)))

(assert (= (and d!1921404 c!1102634) b!6132757))

(assert (= (and d!1921404 (not c!1102634)) b!6132758))

(declare-fun m!6975856 () Bool)

(assert (=> d!1921404 m!6975856))

(assert (=> b!6132757 m!6975628))

(declare-fun m!6975858 () Bool)

(assert (=> b!6132757 m!6975858))

(assert (=> b!6132408 d!1921404))

(declare-fun b!6132773 () Bool)

(declare-fun e!3737932 () (InoxSet Context!10922))

(declare-fun call!508722 () (InoxSet Context!10922))

(assert (=> b!6132773 (= e!3737932 call!508722)))

(declare-fun bm!508717 () Bool)

(assert (=> bm!508717 (= call!508722 (derivationStepZipperDown!1325 (h!70854 (exprs!5961 lt!2332109)) (Context!10923 (t!378001 (exprs!5961 lt!2332109))) (h!70856 s!2326)))))

(declare-fun b!6132774 () Bool)

(assert (=> b!6132774 (= e!3737932 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6132775 () Bool)

(declare-fun e!3737933 () (InoxSet Context!10922))

(assert (=> b!6132775 (= e!3737933 e!3737932)))

(declare-fun c!1102640 () Bool)

(assert (=> b!6132775 (= c!1102640 ((_ is Cons!64406) (exprs!5961 lt!2332109)))))

(declare-fun d!1921406 () Bool)

(declare-fun c!1102639 () Bool)

(declare-fun e!3737934 () Bool)

(assert (=> d!1921406 (= c!1102639 e!3737934)))

(declare-fun res!2541649 () Bool)

(assert (=> d!1921406 (=> (not res!2541649) (not e!3737934))))

(assert (=> d!1921406 (= res!2541649 ((_ is Cons!64406) (exprs!5961 lt!2332109)))))

(assert (=> d!1921406 (= (derivationStepZipperUp!1251 lt!2332109 (h!70856 s!2326)) e!3737933)))

(declare-fun b!6132776 () Bool)

(assert (=> b!6132776 (= e!3737934 (nullable!6070 (h!70854 (exprs!5961 lt!2332109))))))

(declare-fun b!6132777 () Bool)

(assert (=> b!6132777 (= e!3737933 ((_ map or) call!508722 (derivationStepZipperUp!1251 (Context!10923 (t!378001 (exprs!5961 lt!2332109))) (h!70856 s!2326))))))

(assert (= (and d!1921406 res!2541649) b!6132776))

(assert (= (and d!1921406 c!1102639) b!6132777))

(assert (= (and d!1921406 (not c!1102639)) b!6132775))

(assert (= (and b!6132775 c!1102640) b!6132773))

(assert (= (and b!6132775 (not c!1102640)) b!6132774))

(assert (= (or b!6132777 b!6132773) bm!508717))

(declare-fun m!6975864 () Bool)

(assert (=> bm!508717 m!6975864))

(declare-fun m!6975866 () Bool)

(assert (=> b!6132776 m!6975866))

(declare-fun m!6975868 () Bool)

(assert (=> b!6132777 m!6975868))

(assert (=> b!6132399 d!1921406))

(declare-fun d!1921410 () Bool)

(declare-fun nullableFct!2034 (Regex!16077) Bool)

(assert (=> d!1921410 (= (nullable!6070 (h!70854 (exprs!5961 (h!70855 zl!343)))) (nullableFct!2034 (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun bs!1521118 () Bool)

(assert (= bs!1521118 d!1921410))

(declare-fun m!6975870 () Bool)

(assert (=> bs!1521118 m!6975870))

(assert (=> b!6132399 d!1921410))

(declare-fun b!6132778 () Bool)

(declare-fun e!3737935 () (InoxSet Context!10922))

(declare-fun call!508723 () (InoxSet Context!10922))

(assert (=> b!6132778 (= e!3737935 call!508723)))

(declare-fun bm!508718 () Bool)

(assert (=> bm!508718 (= call!508723 (derivationStepZipperDown!1325 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))) (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (h!70856 s!2326)))))

(declare-fun b!6132779 () Bool)

(assert (=> b!6132779 (= e!3737935 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6132780 () Bool)

(declare-fun e!3737936 () (InoxSet Context!10922))

(assert (=> b!6132780 (= e!3737936 e!3737935)))

(declare-fun c!1102642 () Bool)

(assert (=> b!6132780 (= c!1102642 ((_ is Cons!64406) (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))))))

(declare-fun d!1921412 () Bool)

(declare-fun c!1102641 () Bool)

(declare-fun e!3737937 () Bool)

(assert (=> d!1921412 (= c!1102641 e!3737937)))

(declare-fun res!2541650 () Bool)

(assert (=> d!1921412 (=> (not res!2541650) (not e!3737937))))

(assert (=> d!1921412 (= res!2541650 ((_ is Cons!64406) (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))))))

(assert (=> d!1921412 (= (derivationStepZipperUp!1251 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))) (h!70856 s!2326)) e!3737936)))

(declare-fun b!6132781 () Bool)

(assert (=> b!6132781 (= e!3737937 (nullable!6070 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))))

(declare-fun b!6132782 () Bool)

(assert (=> b!6132782 (= e!3737936 ((_ map or) call!508723 (derivationStepZipperUp!1251 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (h!70856 s!2326))))))

(assert (= (and d!1921412 res!2541650) b!6132781))

(assert (= (and d!1921412 c!1102641) b!6132782))

(assert (= (and d!1921412 (not c!1102641)) b!6132780))

(assert (= (and b!6132780 c!1102642) b!6132778))

(assert (= (and b!6132780 (not c!1102642)) b!6132779))

(assert (= (or b!6132782 b!6132778) bm!508718))

(declare-fun m!6975872 () Bool)

(assert (=> bm!508718 m!6975872))

(declare-fun m!6975874 () Bool)

(assert (=> b!6132781 m!6975874))

(declare-fun m!6975876 () Bool)

(assert (=> b!6132782 m!6975876))

(assert (=> b!6132399 d!1921412))

(declare-fun d!1921414 () Bool)

(declare-fun choose!45566 ((InoxSet Context!10922) Int) (InoxSet Context!10922))

(assert (=> d!1921414 (= (flatMap!1582 z!1189 lambda!334103) (choose!45566 z!1189 lambda!334103))))

(declare-fun bs!1521119 () Bool)

(assert (= bs!1521119 d!1921414))

(declare-fun m!6975878 () Bool)

(assert (=> bs!1521119 m!6975878))

(assert (=> b!6132399 d!1921414))

(declare-fun b!6132783 () Bool)

(declare-fun e!3737938 () (InoxSet Context!10922))

(declare-fun call!508724 () (InoxSet Context!10922))

(assert (=> b!6132783 (= e!3737938 call!508724)))

(declare-fun bm!508719 () Bool)

(assert (=> bm!508719 (= call!508724 (derivationStepZipperDown!1325 (h!70854 (exprs!5961 (h!70855 zl!343))) (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))) (h!70856 s!2326)))))

(declare-fun b!6132784 () Bool)

(assert (=> b!6132784 (= e!3737938 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6132785 () Bool)

(declare-fun e!3737939 () (InoxSet Context!10922))

(assert (=> b!6132785 (= e!3737939 e!3737938)))

(declare-fun c!1102644 () Bool)

(assert (=> b!6132785 (= c!1102644 ((_ is Cons!64406) (exprs!5961 (h!70855 zl!343))))))

(declare-fun d!1921416 () Bool)

(declare-fun c!1102643 () Bool)

(declare-fun e!3737940 () Bool)

(assert (=> d!1921416 (= c!1102643 e!3737940)))

(declare-fun res!2541651 () Bool)

(assert (=> d!1921416 (=> (not res!2541651) (not e!3737940))))

(assert (=> d!1921416 (= res!2541651 ((_ is Cons!64406) (exprs!5961 (h!70855 zl!343))))))

(assert (=> d!1921416 (= (derivationStepZipperUp!1251 (h!70855 zl!343) (h!70856 s!2326)) e!3737939)))

(declare-fun b!6132786 () Bool)

(assert (=> b!6132786 (= e!3737940 (nullable!6070 (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6132787 () Bool)

(assert (=> b!6132787 (= e!3737939 ((_ map or) call!508724 (derivationStepZipperUp!1251 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))) (h!70856 s!2326))))))

(assert (= (and d!1921416 res!2541651) b!6132786))

(assert (= (and d!1921416 c!1102643) b!6132787))

(assert (= (and d!1921416 (not c!1102643)) b!6132785))

(assert (= (and b!6132785 c!1102644) b!6132783))

(assert (= (and b!6132785 (not c!1102644)) b!6132784))

(assert (= (or b!6132787 b!6132783) bm!508719))

(declare-fun m!6975880 () Bool)

(assert (=> bm!508719 m!6975880))

(assert (=> b!6132786 m!6975642))

(declare-fun m!6975882 () Bool)

(assert (=> b!6132787 m!6975882))

(assert (=> b!6132399 d!1921416))

(declare-fun c!1102658 () Bool)

(declare-fun bm!508732 () Bool)

(declare-fun c!1102660 () Bool)

(declare-fun call!508739 () List!64530)

(declare-fun $colon$colon!1954 (List!64530 Regex!16077) List!64530)

(assert (=> bm!508732 (= call!508739 ($colon$colon!1954 (exprs!5961 lt!2332109) (ite (or c!1102660 c!1102658) (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (h!70854 (exprs!5961 (h!70855 zl!343))))))))

(declare-fun b!6132825 () Bool)

(declare-fun e!3737965 () (InoxSet Context!10922))

(declare-fun e!3737963 () (InoxSet Context!10922))

(assert (=> b!6132825 (= e!3737965 e!3737963)))

(assert (=> b!6132825 (= c!1102658 ((_ is Concat!24922) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6132826 () Bool)

(declare-fun e!3737964 () (InoxSet Context!10922))

(declare-fun call!508740 () (InoxSet Context!10922))

(assert (=> b!6132826 (= e!3737964 call!508740)))

(declare-fun b!6132827 () Bool)

(assert (=> b!6132827 (= e!3737964 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6132828 () Bool)

(declare-fun e!3737966 () (InoxSet Context!10922))

(assert (=> b!6132828 (= e!3737966 (store ((as const (Array Context!10922 Bool)) false) lt!2332109 true))))

(declare-fun bm!508733 () Bool)

(declare-fun c!1102662 () Bool)

(declare-fun call!508741 () (InoxSet Context!10922))

(assert (=> bm!508733 (= call!508741 (derivationStepZipperDown!1325 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))) (ite c!1102662 lt!2332109 (Context!10923 call!508739)) (h!70856 s!2326)))))

(declare-fun b!6132829 () Bool)

(declare-fun e!3737962 () Bool)

(assert (=> b!6132829 (= c!1102660 e!3737962)))

(declare-fun res!2541663 () Bool)

(assert (=> b!6132829 (=> (not res!2541663) (not e!3737962))))

(assert (=> b!6132829 (= res!2541663 ((_ is Concat!24922) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun e!3737961 () (InoxSet Context!10922))

(assert (=> b!6132829 (= e!3737961 e!3737965)))

(declare-fun bm!508735 () Bool)

(declare-fun call!508742 () List!64530)

(declare-fun call!508737 () (InoxSet Context!10922))

(assert (=> bm!508735 (= call!508737 (derivationStepZipperDown!1325 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343))))))) (ite (or c!1102662 c!1102660) lt!2332109 (Context!10923 call!508742)) (h!70856 s!2326)))))

(declare-fun b!6132830 () Bool)

(assert (=> b!6132830 (= e!3737963 call!508740)))

(declare-fun bm!508736 () Bool)

(declare-fun call!508738 () (InoxSet Context!10922))

(assert (=> bm!508736 (= call!508740 call!508738)))

(declare-fun b!6132831 () Bool)

(declare-fun c!1102661 () Bool)

(assert (=> b!6132831 (= c!1102661 ((_ is Star!16077) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(assert (=> b!6132831 (= e!3737963 e!3737964)))

(declare-fun bm!508737 () Bool)

(assert (=> bm!508737 (= call!508738 call!508737)))

(declare-fun b!6132832 () Bool)

(assert (=> b!6132832 (= e!3737966 e!3737961)))

(assert (=> b!6132832 (= c!1102662 ((_ is Union!16077) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6132833 () Bool)

(assert (=> b!6132833 (= e!3737962 (nullable!6070 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))))))

(declare-fun b!6132834 () Bool)

(assert (=> b!6132834 (= e!3737965 ((_ map or) call!508741 call!508738))))

(declare-fun b!6132835 () Bool)

(assert (=> b!6132835 (= e!3737961 ((_ map or) call!508741 call!508737))))

(declare-fun bm!508734 () Bool)

(assert (=> bm!508734 (= call!508742 call!508739)))

(declare-fun d!1921418 () Bool)

(declare-fun c!1102659 () Bool)

(assert (=> d!1921418 (= c!1102659 (and ((_ is ElementMatch!16077) (h!70854 (exprs!5961 (h!70855 zl!343)))) (= (c!1102519 (h!70854 (exprs!5961 (h!70855 zl!343)))) (h!70856 s!2326))))))

(assert (=> d!1921418 (= (derivationStepZipperDown!1325 (h!70854 (exprs!5961 (h!70855 zl!343))) lt!2332109 (h!70856 s!2326)) e!3737966)))

(assert (= (and d!1921418 c!1102659) b!6132828))

(assert (= (and d!1921418 (not c!1102659)) b!6132832))

(assert (= (and b!6132832 c!1102662) b!6132835))

(assert (= (and b!6132832 (not c!1102662)) b!6132829))

(assert (= (and b!6132829 res!2541663) b!6132833))

(assert (= (and b!6132829 c!1102660) b!6132834))

(assert (= (and b!6132829 (not c!1102660)) b!6132825))

(assert (= (and b!6132825 c!1102658) b!6132830))

(assert (= (and b!6132825 (not c!1102658)) b!6132831))

(assert (= (and b!6132831 c!1102661) b!6132826))

(assert (= (and b!6132831 (not c!1102661)) b!6132827))

(assert (= (or b!6132830 b!6132826) bm!508734))

(assert (= (or b!6132830 b!6132826) bm!508736))

(assert (= (or b!6132834 bm!508734) bm!508732))

(assert (= (or b!6132834 bm!508736) bm!508737))

(assert (= (or b!6132835 bm!508737) bm!508735))

(assert (= (or b!6132835 b!6132834) bm!508733))

(declare-fun m!6975916 () Bool)

(assert (=> b!6132828 m!6975916))

(declare-fun m!6975918 () Bool)

(assert (=> b!6132833 m!6975918))

(declare-fun m!6975920 () Bool)

(assert (=> bm!508735 m!6975920))

(declare-fun m!6975922 () Bool)

(assert (=> bm!508733 m!6975922))

(declare-fun m!6975924 () Bool)

(assert (=> bm!508732 m!6975924))

(assert (=> b!6132399 d!1921418))

(declare-fun d!1921434 () Bool)

(declare-fun dynLambda!25374 (Int Context!10922) (InoxSet Context!10922))

(assert (=> d!1921434 (= (flatMap!1582 z!1189 lambda!334103) (dynLambda!25374 lambda!334103 (h!70855 zl!343)))))

(declare-fun lt!2332171 () Unit!157463)

(declare-fun choose!45567 ((InoxSet Context!10922) Context!10922 Int) Unit!157463)

(assert (=> d!1921434 (= lt!2332171 (choose!45567 z!1189 (h!70855 zl!343) lambda!334103))))

(assert (=> d!1921434 (= z!1189 (store ((as const (Array Context!10922 Bool)) false) (h!70855 zl!343) true))))

(assert (=> d!1921434 (= (lemmaFlatMapOnSingletonSet!1108 z!1189 (h!70855 zl!343) lambda!334103) lt!2332171)))

(declare-fun b_lambda!233443 () Bool)

(assert (=> (not b_lambda!233443) (not d!1921434)))

(declare-fun bs!1521132 () Bool)

(assert (= bs!1521132 d!1921434))

(assert (=> bs!1521132 m!6975644))

(declare-fun m!6975932 () Bool)

(assert (=> bs!1521132 m!6975932))

(declare-fun m!6975934 () Bool)

(assert (=> bs!1521132 m!6975934))

(declare-fun m!6975936 () Bool)

(assert (=> bs!1521132 m!6975936))

(assert (=> b!6132399 d!1921434))

(declare-fun call!508745 () List!64530)

(declare-fun bm!508738 () Bool)

(declare-fun c!1102665 () Bool)

(declare-fun c!1102663 () Bool)

(assert (=> bm!508738 (= call!508745 ($colon$colon!1954 (exprs!5961 lt!2332109) (ite (or c!1102665 c!1102663) (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (regTwo!32667 (regOne!32666 r!7292)))))))

(declare-fun b!6132858 () Bool)

(declare-fun e!3737980 () (InoxSet Context!10922))

(declare-fun e!3737978 () (InoxSet Context!10922))

(assert (=> b!6132858 (= e!3737980 e!3737978)))

(assert (=> b!6132858 (= c!1102663 ((_ is Concat!24922) (regTwo!32667 (regOne!32666 r!7292))))))

(declare-fun b!6132859 () Bool)

(declare-fun e!3737979 () (InoxSet Context!10922))

(declare-fun call!508746 () (InoxSet Context!10922))

(assert (=> b!6132859 (= e!3737979 call!508746)))

(declare-fun b!6132860 () Bool)

(assert (=> b!6132860 (= e!3737979 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6132861 () Bool)

(declare-fun e!3737981 () (InoxSet Context!10922))

(assert (=> b!6132861 (= e!3737981 (store ((as const (Array Context!10922 Bool)) false) lt!2332109 true))))

(declare-fun c!1102667 () Bool)

(declare-fun bm!508739 () Bool)

(declare-fun call!508747 () (InoxSet Context!10922))

(assert (=> bm!508739 (= call!508747 (derivationStepZipperDown!1325 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292)))) (ite c!1102667 lt!2332109 (Context!10923 call!508745)) (h!70856 s!2326)))))

(declare-fun b!6132862 () Bool)

(declare-fun e!3737977 () Bool)

(assert (=> b!6132862 (= c!1102665 e!3737977)))

(declare-fun res!2541667 () Bool)

(assert (=> b!6132862 (=> (not res!2541667) (not e!3737977))))

(assert (=> b!6132862 (= res!2541667 ((_ is Concat!24922) (regTwo!32667 (regOne!32666 r!7292))))))

(declare-fun e!3737976 () (InoxSet Context!10922))

(assert (=> b!6132862 (= e!3737976 e!3737980)))

(declare-fun call!508743 () (InoxSet Context!10922))

(declare-fun call!508748 () List!64530)

(declare-fun bm!508741 () Bool)

(assert (=> bm!508741 (= call!508743 (derivationStepZipperDown!1325 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292)))))) (ite (or c!1102667 c!1102665) lt!2332109 (Context!10923 call!508748)) (h!70856 s!2326)))))

(declare-fun b!6132863 () Bool)

(assert (=> b!6132863 (= e!3737978 call!508746)))

(declare-fun bm!508742 () Bool)

(declare-fun call!508744 () (InoxSet Context!10922))

(assert (=> bm!508742 (= call!508746 call!508744)))

(declare-fun b!6132864 () Bool)

(declare-fun c!1102666 () Bool)

(assert (=> b!6132864 (= c!1102666 ((_ is Star!16077) (regTwo!32667 (regOne!32666 r!7292))))))

(assert (=> b!6132864 (= e!3737978 e!3737979)))

(declare-fun bm!508743 () Bool)

(assert (=> bm!508743 (= call!508744 call!508743)))

(declare-fun b!6132865 () Bool)

(assert (=> b!6132865 (= e!3737981 e!3737976)))

(assert (=> b!6132865 (= c!1102667 ((_ is Union!16077) (regTwo!32667 (regOne!32666 r!7292))))))

(declare-fun b!6132866 () Bool)

(assert (=> b!6132866 (= e!3737977 (nullable!6070 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292)))))))

(declare-fun b!6132867 () Bool)

(assert (=> b!6132867 (= e!3737980 ((_ map or) call!508747 call!508744))))

(declare-fun b!6132868 () Bool)

(assert (=> b!6132868 (= e!3737976 ((_ map or) call!508747 call!508743))))

(declare-fun bm!508740 () Bool)

(assert (=> bm!508740 (= call!508748 call!508745)))

(declare-fun d!1921436 () Bool)

(declare-fun c!1102664 () Bool)

(assert (=> d!1921436 (= c!1102664 (and ((_ is ElementMatch!16077) (regTwo!32667 (regOne!32666 r!7292))) (= (c!1102519 (regTwo!32667 (regOne!32666 r!7292))) (h!70856 s!2326))))))

(assert (=> d!1921436 (= (derivationStepZipperDown!1325 (regTwo!32667 (regOne!32666 r!7292)) lt!2332109 (h!70856 s!2326)) e!3737981)))

(assert (= (and d!1921436 c!1102664) b!6132861))

(assert (= (and d!1921436 (not c!1102664)) b!6132865))

(assert (= (and b!6132865 c!1102667) b!6132868))

(assert (= (and b!6132865 (not c!1102667)) b!6132862))

(assert (= (and b!6132862 res!2541667) b!6132866))

(assert (= (and b!6132862 c!1102665) b!6132867))

(assert (= (and b!6132862 (not c!1102665)) b!6132858))

(assert (= (and b!6132858 c!1102663) b!6132863))

(assert (= (and b!6132858 (not c!1102663)) b!6132864))

(assert (= (and b!6132864 c!1102666) b!6132859))

(assert (= (and b!6132864 (not c!1102666)) b!6132860))

(assert (= (or b!6132863 b!6132859) bm!508740))

(assert (= (or b!6132863 b!6132859) bm!508742))

(assert (= (or b!6132867 bm!508740) bm!508738))

(assert (= (or b!6132867 bm!508742) bm!508743))

(assert (= (or b!6132868 bm!508743) bm!508741))

(assert (= (or b!6132868 b!6132867) bm!508739))

(assert (=> b!6132861 m!6975916))

(declare-fun m!6975938 () Bool)

(assert (=> b!6132866 m!6975938))

(declare-fun m!6975940 () Bool)

(assert (=> bm!508741 m!6975940))

(declare-fun m!6975942 () Bool)

(assert (=> bm!508739 m!6975942))

(declare-fun m!6975944 () Bool)

(assert (=> bm!508738 m!6975944))

(assert (=> b!6132409 d!1921436))

(declare-fun bm!508744 () Bool)

(declare-fun c!1102668 () Bool)

(declare-fun call!508751 () List!64530)

(declare-fun c!1102670 () Bool)

(assert (=> bm!508744 (= call!508751 ($colon$colon!1954 (exprs!5961 lt!2332109) (ite (or c!1102670 c!1102668) (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (regOne!32667 (regOne!32666 r!7292)))))))

(declare-fun b!6132886 () Bool)

(declare-fun e!3737992 () (InoxSet Context!10922))

(declare-fun e!3737990 () (InoxSet Context!10922))

(assert (=> b!6132886 (= e!3737992 e!3737990)))

(assert (=> b!6132886 (= c!1102668 ((_ is Concat!24922) (regOne!32667 (regOne!32666 r!7292))))))

(declare-fun b!6132887 () Bool)

(declare-fun e!3737991 () (InoxSet Context!10922))

(declare-fun call!508752 () (InoxSet Context!10922))

(assert (=> b!6132887 (= e!3737991 call!508752)))

(declare-fun b!6132888 () Bool)

(assert (=> b!6132888 (= e!3737991 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6132889 () Bool)

(declare-fun e!3737993 () (InoxSet Context!10922))

(assert (=> b!6132889 (= e!3737993 (store ((as const (Array Context!10922 Bool)) false) lt!2332109 true))))

(declare-fun c!1102672 () Bool)

(declare-fun bm!508745 () Bool)

(declare-fun call!508753 () (InoxSet Context!10922))

(assert (=> bm!508745 (= call!508753 (derivationStepZipperDown!1325 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292)))) (ite c!1102672 lt!2332109 (Context!10923 call!508751)) (h!70856 s!2326)))))

(declare-fun b!6132890 () Bool)

(declare-fun e!3737989 () Bool)

(assert (=> b!6132890 (= c!1102670 e!3737989)))

(declare-fun res!2541668 () Bool)

(assert (=> b!6132890 (=> (not res!2541668) (not e!3737989))))

(assert (=> b!6132890 (= res!2541668 ((_ is Concat!24922) (regOne!32667 (regOne!32666 r!7292))))))

(declare-fun e!3737988 () (InoxSet Context!10922))

(assert (=> b!6132890 (= e!3737988 e!3737992)))

(declare-fun bm!508747 () Bool)

(declare-fun call!508754 () List!64530)

(declare-fun call!508749 () (InoxSet Context!10922))

(assert (=> bm!508747 (= call!508749 (derivationStepZipperDown!1325 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292)))))) (ite (or c!1102672 c!1102670) lt!2332109 (Context!10923 call!508754)) (h!70856 s!2326)))))

(declare-fun b!6132891 () Bool)

(assert (=> b!6132891 (= e!3737990 call!508752)))

(declare-fun bm!508748 () Bool)

(declare-fun call!508750 () (InoxSet Context!10922))

(assert (=> bm!508748 (= call!508752 call!508750)))

(declare-fun b!6132892 () Bool)

(declare-fun c!1102671 () Bool)

(assert (=> b!6132892 (= c!1102671 ((_ is Star!16077) (regOne!32667 (regOne!32666 r!7292))))))

(assert (=> b!6132892 (= e!3737990 e!3737991)))

(declare-fun bm!508749 () Bool)

(assert (=> bm!508749 (= call!508750 call!508749)))

(declare-fun b!6132893 () Bool)

(assert (=> b!6132893 (= e!3737993 e!3737988)))

(assert (=> b!6132893 (= c!1102672 ((_ is Union!16077) (regOne!32667 (regOne!32666 r!7292))))))

(declare-fun b!6132894 () Bool)

(assert (=> b!6132894 (= e!3737989 (nullable!6070 (regOne!32666 (regOne!32667 (regOne!32666 r!7292)))))))

(declare-fun b!6132895 () Bool)

(assert (=> b!6132895 (= e!3737992 ((_ map or) call!508753 call!508750))))

(declare-fun b!6132896 () Bool)

(assert (=> b!6132896 (= e!3737988 ((_ map or) call!508753 call!508749))))

(declare-fun bm!508746 () Bool)

(assert (=> bm!508746 (= call!508754 call!508751)))

(declare-fun d!1921438 () Bool)

(declare-fun c!1102669 () Bool)

(assert (=> d!1921438 (= c!1102669 (and ((_ is ElementMatch!16077) (regOne!32667 (regOne!32666 r!7292))) (= (c!1102519 (regOne!32667 (regOne!32666 r!7292))) (h!70856 s!2326))))))

(assert (=> d!1921438 (= (derivationStepZipperDown!1325 (regOne!32667 (regOne!32666 r!7292)) lt!2332109 (h!70856 s!2326)) e!3737993)))

(assert (= (and d!1921438 c!1102669) b!6132889))

(assert (= (and d!1921438 (not c!1102669)) b!6132893))

(assert (= (and b!6132893 c!1102672) b!6132896))

(assert (= (and b!6132893 (not c!1102672)) b!6132890))

(assert (= (and b!6132890 res!2541668) b!6132894))

(assert (= (and b!6132890 c!1102670) b!6132895))

(assert (= (and b!6132890 (not c!1102670)) b!6132886))

(assert (= (and b!6132886 c!1102668) b!6132891))

(assert (= (and b!6132886 (not c!1102668)) b!6132892))

(assert (= (and b!6132892 c!1102671) b!6132887))

(assert (= (and b!6132892 (not c!1102671)) b!6132888))

(assert (= (or b!6132891 b!6132887) bm!508746))

(assert (= (or b!6132891 b!6132887) bm!508748))

(assert (= (or b!6132895 bm!508746) bm!508744))

(assert (= (or b!6132895 bm!508748) bm!508749))

(assert (= (or b!6132896 bm!508749) bm!508747))

(assert (= (or b!6132896 b!6132895) bm!508745))

(assert (=> b!6132889 m!6975916))

(declare-fun m!6975946 () Bool)

(assert (=> b!6132894 m!6975946))

(declare-fun m!6975950 () Bool)

(assert (=> bm!508747 m!6975950))

(declare-fun m!6975952 () Bool)

(assert (=> bm!508745 m!6975952))

(declare-fun m!6975954 () Bool)

(assert (=> bm!508744 m!6975954))

(assert (=> b!6132409 d!1921438))

(declare-fun b!6132933 () Bool)

(declare-fun e!3738016 () Bool)

(declare-fun lt!2332178 () Option!15968)

(declare-fun ++!14163 (List!64532 List!64532) List!64532)

(declare-fun get!22217 (Option!15968) tuple2!66112)

(assert (=> b!6132933 (= e!3738016 (= (++!14163 (_1!36359 (get!22217 lt!2332178)) (_2!36359 (get!22217 lt!2332178))) s!2326))))

(declare-fun b!6132934 () Bool)

(declare-fun e!3738019 () Bool)

(assert (=> b!6132934 (= e!3738019 (not (isDefined!12671 lt!2332178)))))

(declare-fun b!6132935 () Bool)

(declare-fun res!2541683 () Bool)

(assert (=> b!6132935 (=> (not res!2541683) (not e!3738016))))

(assert (=> b!6132935 (= res!2541683 (matchR!8260 (regTwo!32666 r!7292) (_2!36359 (get!22217 lt!2332178))))))

(declare-fun b!6132936 () Bool)

(declare-fun e!3738018 () Option!15968)

(declare-fun e!3738017 () Option!15968)

(assert (=> b!6132936 (= e!3738018 e!3738017)))

(declare-fun c!1102677 () Bool)

(assert (=> b!6132936 (= c!1102677 ((_ is Nil!64408) s!2326))))

(declare-fun d!1921440 () Bool)

(assert (=> d!1921440 e!3738019))

(declare-fun res!2541680 () Bool)

(assert (=> d!1921440 (=> res!2541680 e!3738019)))

(assert (=> d!1921440 (= res!2541680 e!3738016)))

(declare-fun res!2541682 () Bool)

(assert (=> d!1921440 (=> (not res!2541682) (not e!3738016))))

(assert (=> d!1921440 (= res!2541682 (isDefined!12671 lt!2332178))))

(assert (=> d!1921440 (= lt!2332178 e!3738018)))

(declare-fun c!1102678 () Bool)

(declare-fun e!3738015 () Bool)

(assert (=> d!1921440 (= c!1102678 e!3738015)))

(declare-fun res!2541681 () Bool)

(assert (=> d!1921440 (=> (not res!2541681) (not e!3738015))))

(assert (=> d!1921440 (= res!2541681 (matchR!8260 (regOne!32666 r!7292) Nil!64408))))

(assert (=> d!1921440 (validRegex!7813 (regOne!32666 r!7292))))

(assert (=> d!1921440 (= (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) Nil!64408 s!2326 s!2326) lt!2332178)))

(declare-fun b!6132937 () Bool)

(assert (=> b!6132937 (= e!3738018 (Some!15967 (tuple2!66113 Nil!64408 s!2326)))))

(declare-fun b!6132938 () Bool)

(declare-fun res!2541679 () Bool)

(assert (=> b!6132938 (=> (not res!2541679) (not e!3738016))))

(assert (=> b!6132938 (= res!2541679 (matchR!8260 (regOne!32666 r!7292) (_1!36359 (get!22217 lt!2332178))))))

(declare-fun b!6132939 () Bool)

(assert (=> b!6132939 (= e!3738017 None!15967)))

(declare-fun b!6132940 () Bool)

(assert (=> b!6132940 (= e!3738015 (matchR!8260 (regTwo!32666 r!7292) s!2326))))

(declare-fun b!6132941 () Bool)

(declare-fun lt!2332180 () Unit!157463)

(declare-fun lt!2332179 () Unit!157463)

(assert (=> b!6132941 (= lt!2332180 lt!2332179)))

(assert (=> b!6132941 (= (++!14163 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)) (t!378003 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2258 (List!64532 C!32424 List!64532 List!64532) Unit!157463)

(assert (=> b!6132941 (= lt!2332179 (lemmaMoveElementToOtherListKeepsConcatEq!2258 Nil!64408 (h!70856 s!2326) (t!378003 s!2326) s!2326))))

(assert (=> b!6132941 (= e!3738017 (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)) (t!378003 s!2326) s!2326))))

(assert (= (and d!1921440 res!2541681) b!6132940))

(assert (= (and d!1921440 c!1102678) b!6132937))

(assert (= (and d!1921440 (not c!1102678)) b!6132936))

(assert (= (and b!6132936 c!1102677) b!6132939))

(assert (= (and b!6132936 (not c!1102677)) b!6132941))

(assert (= (and d!1921440 res!2541682) b!6132938))

(assert (= (and b!6132938 res!2541679) b!6132935))

(assert (= (and b!6132935 res!2541683) b!6132933))

(assert (= (and d!1921440 (not res!2541680)) b!6132934))

(declare-fun m!6975958 () Bool)

(assert (=> b!6132935 m!6975958))

(declare-fun m!6975960 () Bool)

(assert (=> b!6132935 m!6975960))

(declare-fun m!6975962 () Bool)

(assert (=> b!6132940 m!6975962))

(declare-fun m!6975964 () Bool)

(assert (=> d!1921440 m!6975964))

(declare-fun m!6975966 () Bool)

(assert (=> d!1921440 m!6975966))

(declare-fun m!6975968 () Bool)

(assert (=> d!1921440 m!6975968))

(assert (=> b!6132938 m!6975958))

(declare-fun m!6975970 () Bool)

(assert (=> b!6132938 m!6975970))

(assert (=> b!6132933 m!6975958))

(declare-fun m!6975972 () Bool)

(assert (=> b!6132933 m!6975972))

(declare-fun m!6975974 () Bool)

(assert (=> b!6132941 m!6975974))

(assert (=> b!6132941 m!6975974))

(declare-fun m!6975976 () Bool)

(assert (=> b!6132941 m!6975976))

(declare-fun m!6975978 () Bool)

(assert (=> b!6132941 m!6975978))

(assert (=> b!6132941 m!6975974))

(declare-fun m!6975980 () Bool)

(assert (=> b!6132941 m!6975980))

(assert (=> b!6132934 m!6975964))

(assert (=> b!6132400 d!1921440))

(declare-fun d!1921444 () Bool)

(declare-fun choose!45571 (Int) Bool)

(assert (=> d!1921444 (= (Exists!3147 lambda!334102) (choose!45571 lambda!334102))))

(declare-fun bs!1521134 () Bool)

(assert (= bs!1521134 d!1921444))

(declare-fun m!6975982 () Bool)

(assert (=> bs!1521134 m!6975982))

(assert (=> b!6132400 d!1921444))

(declare-fun d!1921446 () Bool)

(assert (=> d!1921446 (= (Exists!3147 lambda!334101) (choose!45571 lambda!334101))))

(declare-fun bs!1521135 () Bool)

(assert (= bs!1521135 d!1921446))

(declare-fun m!6975984 () Bool)

(assert (=> bs!1521135 m!6975984))

(assert (=> b!6132400 d!1921446))

(declare-fun bs!1521136 () Bool)

(declare-fun d!1921448 () Bool)

(assert (= bs!1521136 (and d!1921448 b!6132400)))

(declare-fun lambda!334141 () Int)

(assert (=> bs!1521136 (= lambda!334141 lambda!334101)))

(assert (=> bs!1521136 (not (= lambda!334141 lambda!334102))))

(assert (=> d!1921448 true))

(assert (=> d!1921448 true))

(assert (=> d!1921448 true))

(assert (=> d!1921448 (= (isDefined!12671 (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) Nil!64408 s!2326 s!2326)) (Exists!3147 lambda!334141))))

(declare-fun lt!2332183 () Unit!157463)

(declare-fun choose!45572 (Regex!16077 Regex!16077 List!64532) Unit!157463)

(assert (=> d!1921448 (= lt!2332183 (choose!45572 (regOne!32666 r!7292) (regTwo!32666 r!7292) s!2326))))

(assert (=> d!1921448 (validRegex!7813 (regOne!32666 r!7292))))

(assert (=> d!1921448 (= (lemmaFindConcatSeparationEquivalentToExists!2146 (regOne!32666 r!7292) (regTwo!32666 r!7292) s!2326) lt!2332183)))

(declare-fun bs!1521137 () Bool)

(assert (= bs!1521137 d!1921448))

(assert (=> bs!1521137 m!6975616))

(assert (=> bs!1521137 m!6975618))

(declare-fun m!6975986 () Bool)

(assert (=> bs!1521137 m!6975986))

(assert (=> bs!1521137 m!6975968))

(assert (=> bs!1521137 m!6975616))

(declare-fun m!6975988 () Bool)

(assert (=> bs!1521137 m!6975988))

(assert (=> b!6132400 d!1921448))

(declare-fun bs!1521138 () Bool)

(declare-fun d!1921450 () Bool)

(assert (= bs!1521138 (and d!1921450 b!6132400)))

(declare-fun lambda!334146 () Int)

(assert (=> bs!1521138 (= lambda!334146 lambda!334101)))

(assert (=> bs!1521138 (not (= lambda!334146 lambda!334102))))

(declare-fun bs!1521139 () Bool)

(assert (= bs!1521139 (and d!1921450 d!1921448)))

(assert (=> bs!1521139 (= lambda!334146 lambda!334141)))

(assert (=> d!1921450 true))

(assert (=> d!1921450 true))

(assert (=> d!1921450 true))

(declare-fun lambda!334147 () Int)

(assert (=> bs!1521138 (not (= lambda!334147 lambda!334101))))

(assert (=> bs!1521138 (= lambda!334147 lambda!334102)))

(assert (=> bs!1521139 (not (= lambda!334147 lambda!334141))))

(declare-fun bs!1521140 () Bool)

(assert (= bs!1521140 d!1921450))

(assert (=> bs!1521140 (not (= lambda!334147 lambda!334146))))

(assert (=> d!1921450 true))

(assert (=> d!1921450 true))

(assert (=> d!1921450 true))

(assert (=> d!1921450 (= (Exists!3147 lambda!334146) (Exists!3147 lambda!334147))))

(declare-fun lt!2332186 () Unit!157463)

(declare-fun choose!45574 (Regex!16077 Regex!16077 List!64532) Unit!157463)

(assert (=> d!1921450 (= lt!2332186 (choose!45574 (regOne!32666 r!7292) (regTwo!32666 r!7292) s!2326))))

(assert (=> d!1921450 (validRegex!7813 (regOne!32666 r!7292))))

(assert (=> d!1921450 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1684 (regOne!32666 r!7292) (regTwo!32666 r!7292) s!2326) lt!2332186)))

(declare-fun m!6975990 () Bool)

(assert (=> bs!1521140 m!6975990))

(declare-fun m!6975992 () Bool)

(assert (=> bs!1521140 m!6975992))

(declare-fun m!6975994 () Bool)

(assert (=> bs!1521140 m!6975994))

(assert (=> bs!1521140 m!6975968))

(assert (=> b!6132400 d!1921450))

(declare-fun d!1921452 () Bool)

(declare-fun isEmpty!36352 (Option!15968) Bool)

(assert (=> d!1921452 (= (isDefined!12671 (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) Nil!64408 s!2326 s!2326)) (not (isEmpty!36352 (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) Nil!64408 s!2326 s!2326))))))

(declare-fun bs!1521141 () Bool)

(assert (= bs!1521141 d!1921452))

(assert (=> bs!1521141 m!6975616))

(declare-fun m!6975996 () Bool)

(assert (=> bs!1521141 m!6975996))

(assert (=> b!6132400 d!1921452))

(declare-fun bs!1521142 () Bool)

(declare-fun d!1921454 () Bool)

(assert (= bs!1521142 (and d!1921454 d!1921396)))

(declare-fun lambda!334150 () Int)

(assert (=> bs!1521142 (= lambda!334150 lambda!334125)))

(declare-fun bs!1521143 () Bool)

(assert (= bs!1521143 (and d!1921454 d!1921404)))

(assert (=> bs!1521143 (= lambda!334150 lambda!334128)))

(assert (=> d!1921454 (= (inv!83439 (h!70855 zl!343)) (forall!15198 (exprs!5961 (h!70855 zl!343)) lambda!334150))))

(declare-fun bs!1521144 () Bool)

(assert (= bs!1521144 d!1921454))

(declare-fun m!6975998 () Bool)

(assert (=> bs!1521144 m!6975998))

(assert (=> b!6132405 d!1921454))

(declare-fun bs!1521145 () Bool)

(declare-fun b!6132988 () Bool)

(assert (= bs!1521145 (and b!6132988 d!1921450)))

(declare-fun lambda!334155 () Int)

(assert (=> bs!1521145 (not (= lambda!334155 lambda!334146))))

(declare-fun bs!1521146 () Bool)

(assert (= bs!1521146 (and b!6132988 d!1921448)))

(assert (=> bs!1521146 (not (= lambda!334155 lambda!334141))))

(declare-fun bs!1521147 () Bool)

(assert (= bs!1521147 (and b!6132988 b!6132400)))

(assert (=> bs!1521147 (not (= lambda!334155 lambda!334102))))

(assert (=> bs!1521147 (not (= lambda!334155 lambda!334101))))

(assert (=> bs!1521145 (not (= lambda!334155 lambda!334147))))

(assert (=> b!6132988 true))

(assert (=> b!6132988 true))

(declare-fun bs!1521148 () Bool)

(declare-fun b!6132995 () Bool)

(assert (= bs!1521148 (and b!6132995 d!1921450)))

(declare-fun lambda!334156 () Int)

(assert (=> bs!1521148 (not (= lambda!334156 lambda!334146))))

(declare-fun bs!1521149 () Bool)

(assert (= bs!1521149 (and b!6132995 d!1921448)))

(assert (=> bs!1521149 (not (= lambda!334156 lambda!334141))))

(declare-fun bs!1521150 () Bool)

(assert (= bs!1521150 (and b!6132995 b!6132988)))

(assert (=> bs!1521150 (not (= lambda!334156 lambda!334155))))

(declare-fun bs!1521151 () Bool)

(assert (= bs!1521151 (and b!6132995 b!6132400)))

(assert (=> bs!1521151 (= lambda!334156 lambda!334102)))

(assert (=> bs!1521151 (not (= lambda!334156 lambda!334101))))

(assert (=> bs!1521148 (= lambda!334156 lambda!334147)))

(assert (=> b!6132995 true))

(assert (=> b!6132995 true))

(declare-fun bm!508754 () Bool)

(declare-fun call!508760 () Bool)

(declare-fun c!1102687 () Bool)

(assert (=> bm!508754 (= call!508760 (Exists!3147 (ite c!1102687 lambda!334155 lambda!334156)))))

(declare-fun d!1921456 () Bool)

(declare-fun c!1102689 () Bool)

(assert (=> d!1921456 (= c!1102689 ((_ is EmptyExpr!16077) r!7292))))

(declare-fun e!3738049 () Bool)

(assert (=> d!1921456 (= (matchRSpec!3178 r!7292 s!2326) e!3738049)))

(declare-fun b!6132986 () Bool)

(declare-fun call!508759 () Bool)

(assert (=> b!6132986 (= e!3738049 call!508759)))

(declare-fun b!6132987 () Bool)

(declare-fun e!3738048 () Bool)

(assert (=> b!6132987 (= e!3738048 (matchRSpec!3178 (regTwo!32667 r!7292) s!2326))))

(declare-fun e!3738046 () Bool)

(assert (=> b!6132988 (= e!3738046 call!508760)))

(declare-fun b!6132989 () Bool)

(declare-fun e!3738047 () Bool)

(declare-fun e!3738050 () Bool)

(assert (=> b!6132989 (= e!3738047 e!3738050)))

(assert (=> b!6132989 (= c!1102687 ((_ is Star!16077) r!7292))))

(declare-fun b!6132990 () Bool)

(assert (=> b!6132990 (= e!3738047 e!3738048)))

(declare-fun res!2541713 () Bool)

(assert (=> b!6132990 (= res!2541713 (matchRSpec!3178 (regOne!32667 r!7292) s!2326))))

(assert (=> b!6132990 (=> res!2541713 e!3738048)))

(declare-fun b!6132991 () Bool)

(declare-fun res!2541714 () Bool)

(assert (=> b!6132991 (=> res!2541714 e!3738046)))

(assert (=> b!6132991 (= res!2541714 call!508759)))

(assert (=> b!6132991 (= e!3738050 e!3738046)))

(declare-fun b!6132992 () Bool)

(declare-fun e!3738045 () Bool)

(assert (=> b!6132992 (= e!3738045 (= s!2326 (Cons!64408 (c!1102519 r!7292) Nil!64408)))))

(declare-fun b!6132993 () Bool)

(declare-fun e!3738044 () Bool)

(assert (=> b!6132993 (= e!3738049 e!3738044)))

(declare-fun res!2541712 () Bool)

(assert (=> b!6132993 (= res!2541712 (not ((_ is EmptyLang!16077) r!7292)))))

(assert (=> b!6132993 (=> (not res!2541712) (not e!3738044))))

(declare-fun bm!508755 () Bool)

(declare-fun isEmpty!36353 (List!64532) Bool)

(assert (=> bm!508755 (= call!508759 (isEmpty!36353 s!2326))))

(declare-fun b!6132994 () Bool)

(declare-fun c!1102690 () Bool)

(assert (=> b!6132994 (= c!1102690 ((_ is ElementMatch!16077) r!7292))))

(assert (=> b!6132994 (= e!3738044 e!3738045)))

(assert (=> b!6132995 (= e!3738050 call!508760)))

(declare-fun b!6132996 () Bool)

(declare-fun c!1102688 () Bool)

(assert (=> b!6132996 (= c!1102688 ((_ is Union!16077) r!7292))))

(assert (=> b!6132996 (= e!3738045 e!3738047)))

(assert (= (and d!1921456 c!1102689) b!6132986))

(assert (= (and d!1921456 (not c!1102689)) b!6132993))

(assert (= (and b!6132993 res!2541712) b!6132994))

(assert (= (and b!6132994 c!1102690) b!6132992))

(assert (= (and b!6132994 (not c!1102690)) b!6132996))

(assert (= (and b!6132996 c!1102688) b!6132990))

(assert (= (and b!6132996 (not c!1102688)) b!6132989))

(assert (= (and b!6132990 (not res!2541713)) b!6132987))

(assert (= (and b!6132989 c!1102687) b!6132991))

(assert (= (and b!6132989 (not c!1102687)) b!6132995))

(assert (= (and b!6132991 (not res!2541714)) b!6132988))

(assert (= (or b!6132988 b!6132995) bm!508754))

(assert (= (or b!6132986 b!6132991) bm!508755))

(declare-fun m!6976000 () Bool)

(assert (=> bm!508754 m!6976000))

(declare-fun m!6976002 () Bool)

(assert (=> b!6132987 m!6976002))

(declare-fun m!6976004 () Bool)

(assert (=> b!6132990 m!6976004))

(declare-fun m!6976006 () Bool)

(assert (=> bm!508755 m!6976006))

(assert (=> b!6132406 d!1921456))

(declare-fun d!1921458 () Bool)

(declare-fun e!3738066 () Bool)

(assert (=> d!1921458 e!3738066))

(declare-fun c!1102699 () Bool)

(assert (=> d!1921458 (= c!1102699 ((_ is EmptyExpr!16077) r!7292))))

(declare-fun lt!2332189 () Bool)

(declare-fun e!3738071 () Bool)

(assert (=> d!1921458 (= lt!2332189 e!3738071)))

(declare-fun c!1102697 () Bool)

(assert (=> d!1921458 (= c!1102697 (isEmpty!36353 s!2326))))

(assert (=> d!1921458 (validRegex!7813 r!7292)))

(assert (=> d!1921458 (= (matchR!8260 r!7292 s!2326) lt!2332189)))

(declare-fun b!6133025 () Bool)

(declare-fun e!3738068 () Bool)

(declare-fun head!12676 (List!64532) C!32424)

(assert (=> b!6133025 (= e!3738068 (not (= (head!12676 s!2326) (c!1102519 r!7292))))))

(declare-fun b!6133026 () Bool)

(declare-fun e!3738070 () Bool)

(declare-fun e!3738069 () Bool)

(assert (=> b!6133026 (= e!3738070 e!3738069)))

(declare-fun res!2541733 () Bool)

(assert (=> b!6133026 (=> (not res!2541733) (not e!3738069))))

(assert (=> b!6133026 (= res!2541733 (not lt!2332189))))

(declare-fun b!6133027 () Bool)

(declare-fun res!2541731 () Bool)

(assert (=> b!6133027 (=> res!2541731 e!3738070)))

(declare-fun e!3738067 () Bool)

(assert (=> b!6133027 (= res!2541731 e!3738067)))

(declare-fun res!2541738 () Bool)

(assert (=> b!6133027 (=> (not res!2541738) (not e!3738067))))

(assert (=> b!6133027 (= res!2541738 lt!2332189)))

(declare-fun b!6133028 () Bool)

(declare-fun res!2541734 () Bool)

(assert (=> b!6133028 (=> res!2541734 e!3738068)))

(declare-fun tail!11761 (List!64532) List!64532)

(assert (=> b!6133028 (= res!2541734 (not (isEmpty!36353 (tail!11761 s!2326))))))

(declare-fun b!6133029 () Bool)

(declare-fun res!2541736 () Bool)

(assert (=> b!6133029 (=> res!2541736 e!3738070)))

(assert (=> b!6133029 (= res!2541736 (not ((_ is ElementMatch!16077) r!7292)))))

(declare-fun e!3738065 () Bool)

(assert (=> b!6133029 (= e!3738065 e!3738070)))

(declare-fun b!6133030 () Bool)

(assert (=> b!6133030 (= e!3738066 e!3738065)))

(declare-fun c!1102698 () Bool)

(assert (=> b!6133030 (= c!1102698 ((_ is EmptyLang!16077) r!7292))))

(declare-fun b!6133031 () Bool)

(assert (=> b!6133031 (= e!3738071 (nullable!6070 r!7292))))

(declare-fun b!6133032 () Bool)

(declare-fun res!2541737 () Bool)

(assert (=> b!6133032 (=> (not res!2541737) (not e!3738067))))

(assert (=> b!6133032 (= res!2541737 (isEmpty!36353 (tail!11761 s!2326)))))

(declare-fun b!6133033 () Bool)

(declare-fun derivativeStep!4797 (Regex!16077 C!32424) Regex!16077)

(assert (=> b!6133033 (= e!3738071 (matchR!8260 (derivativeStep!4797 r!7292 (head!12676 s!2326)) (tail!11761 s!2326)))))

(declare-fun b!6133034 () Bool)

(assert (=> b!6133034 (= e!3738069 e!3738068)))

(declare-fun res!2541732 () Bool)

(assert (=> b!6133034 (=> res!2541732 e!3738068)))

(declare-fun call!508763 () Bool)

(assert (=> b!6133034 (= res!2541732 call!508763)))

(declare-fun b!6133035 () Bool)

(assert (=> b!6133035 (= e!3738066 (= lt!2332189 call!508763))))

(declare-fun bm!508758 () Bool)

(assert (=> bm!508758 (= call!508763 (isEmpty!36353 s!2326))))

(declare-fun b!6133036 () Bool)

(declare-fun res!2541735 () Bool)

(assert (=> b!6133036 (=> (not res!2541735) (not e!3738067))))

(assert (=> b!6133036 (= res!2541735 (not call!508763))))

(declare-fun b!6133037 () Bool)

(assert (=> b!6133037 (= e!3738065 (not lt!2332189))))

(declare-fun b!6133038 () Bool)

(assert (=> b!6133038 (= e!3738067 (= (head!12676 s!2326) (c!1102519 r!7292)))))

(assert (= (and d!1921458 c!1102697) b!6133031))

(assert (= (and d!1921458 (not c!1102697)) b!6133033))

(assert (= (and d!1921458 c!1102699) b!6133035))

(assert (= (and d!1921458 (not c!1102699)) b!6133030))

(assert (= (and b!6133030 c!1102698) b!6133037))

(assert (= (and b!6133030 (not c!1102698)) b!6133029))

(assert (= (and b!6133029 (not res!2541736)) b!6133027))

(assert (= (and b!6133027 res!2541738) b!6133036))

(assert (= (and b!6133036 res!2541735) b!6133032))

(assert (= (and b!6133032 res!2541737) b!6133038))

(assert (= (and b!6133027 (not res!2541731)) b!6133026))

(assert (= (and b!6133026 res!2541733) b!6133034))

(assert (= (and b!6133034 (not res!2541732)) b!6133028))

(assert (= (and b!6133028 (not res!2541734)) b!6133025))

(assert (= (or b!6133035 b!6133034 b!6133036) bm!508758))

(declare-fun m!6976008 () Bool)

(assert (=> b!6133033 m!6976008))

(assert (=> b!6133033 m!6976008))

(declare-fun m!6976010 () Bool)

(assert (=> b!6133033 m!6976010))

(declare-fun m!6976012 () Bool)

(assert (=> b!6133033 m!6976012))

(assert (=> b!6133033 m!6976010))

(assert (=> b!6133033 m!6976012))

(declare-fun m!6976014 () Bool)

(assert (=> b!6133033 m!6976014))

(assert (=> b!6133032 m!6976012))

(assert (=> b!6133032 m!6976012))

(declare-fun m!6976016 () Bool)

(assert (=> b!6133032 m!6976016))

(assert (=> b!6133025 m!6976008))

(assert (=> b!6133038 m!6976008))

(declare-fun m!6976018 () Bool)

(assert (=> b!6133031 m!6976018))

(assert (=> bm!508758 m!6976006))

(assert (=> b!6133028 m!6976012))

(assert (=> b!6133028 m!6976012))

(assert (=> b!6133028 m!6976016))

(assert (=> d!1921458 m!6976006))

(assert (=> d!1921458 m!6975608))

(assert (=> b!6132406 d!1921458))

(declare-fun d!1921460 () Bool)

(assert (=> d!1921460 (= (matchR!8260 r!7292 s!2326) (matchRSpec!3178 r!7292 s!2326))))

(declare-fun lt!2332192 () Unit!157463)

(declare-fun choose!45575 (Regex!16077 List!64532) Unit!157463)

(assert (=> d!1921460 (= lt!2332192 (choose!45575 r!7292 s!2326))))

(assert (=> d!1921460 (validRegex!7813 r!7292)))

(assert (=> d!1921460 (= (mainMatchTheorem!3178 r!7292 s!2326) lt!2332192)))

(declare-fun bs!1521152 () Bool)

(assert (= bs!1521152 d!1921460))

(assert (=> bs!1521152 m!6975598))

(assert (=> bs!1521152 m!6975596))

(declare-fun m!6976020 () Bool)

(assert (=> bs!1521152 m!6976020))

(assert (=> bs!1521152 m!6975608))

(assert (=> b!6132406 d!1921460))

(declare-fun d!1921462 () Bool)

(assert (=> d!1921462 (= (isEmpty!36349 (t!378002 zl!343)) ((_ is Nil!64407) (t!378002 zl!343)))))

(assert (=> b!6132397 d!1921462))

(declare-fun d!1921464 () Bool)

(declare-fun lt!2332195 () Regex!16077)

(assert (=> d!1921464 (validRegex!7813 lt!2332195)))

(assert (=> d!1921464 (= lt!2332195 (generalisedUnion!1921 (unfocusZipperList!1498 zl!343)))))

(assert (=> d!1921464 (= (unfocusZipper!1819 zl!343) lt!2332195)))

(declare-fun bs!1521153 () Bool)

(assert (= bs!1521153 d!1921464))

(declare-fun m!6976022 () Bool)

(assert (=> bs!1521153 m!6976022))

(assert (=> bs!1521153 m!6975604))

(assert (=> bs!1521153 m!6975604))

(assert (=> bs!1521153 m!6975606))

(assert (=> b!6132413 d!1921464))

(declare-fun e!3738074 () Bool)

(declare-fun d!1921466 () Bool)

(assert (=> d!1921466 (= (matchZipper!2089 ((_ map or) lt!2332102 lt!2332103) (t!378003 s!2326)) e!3738074)))

(declare-fun res!2541741 () Bool)

(assert (=> d!1921466 (=> res!2541741 e!3738074)))

(assert (=> d!1921466 (= res!2541741 (matchZipper!2089 lt!2332102 (t!378003 s!2326)))))

(declare-fun lt!2332198 () Unit!157463)

(declare-fun choose!45576 ((InoxSet Context!10922) (InoxSet Context!10922) List!64532) Unit!157463)

(assert (=> d!1921466 (= lt!2332198 (choose!45576 lt!2332102 lt!2332103 (t!378003 s!2326)))))

(assert (=> d!1921466 (= (lemmaZipperConcatMatchesSameAsBothZippers!908 lt!2332102 lt!2332103 (t!378003 s!2326)) lt!2332198)))

(declare-fun b!6133041 () Bool)

(assert (=> b!6133041 (= e!3738074 (matchZipper!2089 lt!2332103 (t!378003 s!2326)))))

(assert (= (and d!1921466 (not res!2541741)) b!6133041))

(assert (=> d!1921466 m!6975612))

(assert (=> d!1921466 m!6975580))

(declare-fun m!6976024 () Bool)

(assert (=> d!1921466 m!6976024))

(assert (=> b!6133041 m!6975626))

(assert (=> b!6132393 d!1921466))

(declare-fun d!1921468 () Bool)

(declare-fun c!1102702 () Bool)

(assert (=> d!1921468 (= c!1102702 (isEmpty!36353 (t!378003 s!2326)))))

(declare-fun e!3738077 () Bool)

(assert (=> d!1921468 (= (matchZipper!2089 lt!2332102 (t!378003 s!2326)) e!3738077)))

(declare-fun b!6133046 () Bool)

(declare-fun nullableZipper!1858 ((InoxSet Context!10922)) Bool)

(assert (=> b!6133046 (= e!3738077 (nullableZipper!1858 lt!2332102))))

(declare-fun b!6133047 () Bool)

(declare-fun derivationStepZipper!2050 ((InoxSet Context!10922) C!32424) (InoxSet Context!10922))

(assert (=> b!6133047 (= e!3738077 (matchZipper!2089 (derivationStepZipper!2050 lt!2332102 (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))))))

(assert (= (and d!1921468 c!1102702) b!6133046))

(assert (= (and d!1921468 (not c!1102702)) b!6133047))

(declare-fun m!6976026 () Bool)

(assert (=> d!1921468 m!6976026))

(declare-fun m!6976028 () Bool)

(assert (=> b!6133046 m!6976028))

(declare-fun m!6976030 () Bool)

(assert (=> b!6133047 m!6976030))

(assert (=> b!6133047 m!6976030))

(declare-fun m!6976032 () Bool)

(assert (=> b!6133047 m!6976032))

(declare-fun m!6976034 () Bool)

(assert (=> b!6133047 m!6976034))

(assert (=> b!6133047 m!6976032))

(assert (=> b!6133047 m!6976034))

(declare-fun m!6976036 () Bool)

(assert (=> b!6133047 m!6976036))

(assert (=> b!6132393 d!1921468))

(declare-fun d!1921470 () Bool)

(declare-fun c!1102703 () Bool)

(assert (=> d!1921470 (= c!1102703 (isEmpty!36353 (t!378003 s!2326)))))

(declare-fun e!3738078 () Bool)

(assert (=> d!1921470 (= (matchZipper!2089 ((_ map or) lt!2332102 lt!2332103) (t!378003 s!2326)) e!3738078)))

(declare-fun b!6133048 () Bool)

(assert (=> b!6133048 (= e!3738078 (nullableZipper!1858 ((_ map or) lt!2332102 lt!2332103)))))

(declare-fun b!6133049 () Bool)

(assert (=> b!6133049 (= e!3738078 (matchZipper!2089 (derivationStepZipper!2050 ((_ map or) lt!2332102 lt!2332103) (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))))))

(assert (= (and d!1921470 c!1102703) b!6133048))

(assert (= (and d!1921470 (not c!1102703)) b!6133049))

(assert (=> d!1921470 m!6976026))

(declare-fun m!6976038 () Bool)

(assert (=> b!6133048 m!6976038))

(assert (=> b!6133049 m!6976030))

(assert (=> b!6133049 m!6976030))

(declare-fun m!6976040 () Bool)

(assert (=> b!6133049 m!6976040))

(assert (=> b!6133049 m!6976034))

(assert (=> b!6133049 m!6976040))

(assert (=> b!6133049 m!6976034))

(declare-fun m!6976042 () Bool)

(assert (=> b!6133049 m!6976042))

(assert (=> b!6132393 d!1921470))

(declare-fun d!1921472 () Bool)

(declare-fun c!1102704 () Bool)

(assert (=> d!1921472 (= c!1102704 (isEmpty!36353 (t!378003 s!2326)))))

(declare-fun e!3738079 () Bool)

(assert (=> d!1921472 (= (matchZipper!2089 lt!2332105 (t!378003 s!2326)) e!3738079)))

(declare-fun b!6133050 () Bool)

(assert (=> b!6133050 (= e!3738079 (nullableZipper!1858 lt!2332105))))

(declare-fun b!6133051 () Bool)

(assert (=> b!6133051 (= e!3738079 (matchZipper!2089 (derivationStepZipper!2050 lt!2332105 (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))))))

(assert (= (and d!1921472 c!1102704) b!6133050))

(assert (= (and d!1921472 (not c!1102704)) b!6133051))

(assert (=> d!1921472 m!6976026))

(declare-fun m!6976044 () Bool)

(assert (=> b!6133050 m!6976044))

(assert (=> b!6133051 m!6976030))

(assert (=> b!6133051 m!6976030))

(declare-fun m!6976046 () Bool)

(assert (=> b!6133051 m!6976046))

(assert (=> b!6133051 m!6976034))

(assert (=> b!6133051 m!6976046))

(assert (=> b!6133051 m!6976034))

(declare-fun m!6976048 () Bool)

(assert (=> b!6133051 m!6976048))

(assert (=> b!6132414 d!1921472))

(declare-fun bs!1521154 () Bool)

(declare-fun d!1921474 () Bool)

(assert (= bs!1521154 (and d!1921474 d!1921396)))

(declare-fun lambda!334157 () Int)

(assert (=> bs!1521154 (= lambda!334157 lambda!334125)))

(declare-fun bs!1521155 () Bool)

(assert (= bs!1521155 (and d!1921474 d!1921404)))

(assert (=> bs!1521155 (= lambda!334157 lambda!334128)))

(declare-fun bs!1521156 () Bool)

(assert (= bs!1521156 (and d!1921474 d!1921454)))

(assert (=> bs!1521156 (= lambda!334157 lambda!334150)))

(assert (=> d!1921474 (= (inv!83439 (Context!10923 (Cons!64406 (regTwo!32667 (regOne!32666 r!7292)) (t!378001 (exprs!5961 (h!70855 zl!343)))))) (forall!15198 (exprs!5961 (Context!10923 (Cons!64406 (regTwo!32667 (regOne!32666 r!7292)) (t!378001 (exprs!5961 (h!70855 zl!343)))))) lambda!334157))))

(declare-fun bs!1521157 () Bool)

(assert (= bs!1521157 d!1921474))

(declare-fun m!6976050 () Bool)

(assert (=> bs!1521157 m!6976050))

(assert (=> b!6132394 d!1921474))

(declare-fun d!1921476 () Bool)

(declare-fun c!1102705 () Bool)

(assert (=> d!1921476 (= c!1102705 (isEmpty!36353 (t!378003 s!2326)))))

(declare-fun e!3738080 () Bool)

(assert (=> d!1921476 (= (matchZipper!2089 lt!2332103 (t!378003 s!2326)) e!3738080)))

(declare-fun b!6133052 () Bool)

(assert (=> b!6133052 (= e!3738080 (nullableZipper!1858 lt!2332103))))

(declare-fun b!6133053 () Bool)

(assert (=> b!6133053 (= e!3738080 (matchZipper!2089 (derivationStepZipper!2050 lt!2332103 (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))))))

(assert (= (and d!1921476 c!1102705) b!6133052))

(assert (= (and d!1921476 (not c!1102705)) b!6133053))

(assert (=> d!1921476 m!6976026))

(declare-fun m!6976052 () Bool)

(assert (=> b!6133052 m!6976052))

(assert (=> b!6133053 m!6976030))

(assert (=> b!6133053 m!6976030))

(declare-fun m!6976054 () Bool)

(assert (=> b!6133053 m!6976054))

(assert (=> b!6133053 m!6976034))

(assert (=> b!6133053 m!6976054))

(assert (=> b!6133053 m!6976034))

(declare-fun m!6976056 () Bool)

(assert (=> b!6133053 m!6976056))

(assert (=> b!6132415 d!1921476))

(declare-fun b!6133072 () Bool)

(declare-fun e!3738099 () Bool)

(declare-fun e!3738095 () Bool)

(assert (=> b!6133072 (= e!3738099 e!3738095)))

(declare-fun res!2541753 () Bool)

(assert (=> b!6133072 (=> (not res!2541753) (not e!3738095))))

(declare-fun call!508770 () Bool)

(assert (=> b!6133072 (= res!2541753 call!508770)))

(declare-fun bm!508765 () Bool)

(declare-fun c!1102710 () Bool)

(assert (=> bm!508765 (= call!508770 (validRegex!7813 (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292))))))

(declare-fun b!6133073 () Bool)

(declare-fun res!2541755 () Bool)

(declare-fun e!3738101 () Bool)

(assert (=> b!6133073 (=> (not res!2541755) (not e!3738101))))

(assert (=> b!6133073 (= res!2541755 call!508770)))

(declare-fun e!3738100 () Bool)

(assert (=> b!6133073 (= e!3738100 e!3738101)))

(declare-fun b!6133074 () Bool)

(declare-fun e!3738098 () Bool)

(declare-fun call!508771 () Bool)

(assert (=> b!6133074 (= e!3738098 call!508771)))

(declare-fun c!1102711 () Bool)

(declare-fun bm!508766 () Bool)

(assert (=> bm!508766 (= call!508771 (validRegex!7813 (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292)))))))

(declare-fun d!1921478 () Bool)

(declare-fun res!2541754 () Bool)

(declare-fun e!3738096 () Bool)

(assert (=> d!1921478 (=> res!2541754 e!3738096)))

(assert (=> d!1921478 (= res!2541754 ((_ is ElementMatch!16077) r!7292))))

(assert (=> d!1921478 (= (validRegex!7813 r!7292) e!3738096)))

(declare-fun b!6133075 () Bool)

(declare-fun call!508772 () Bool)

(assert (=> b!6133075 (= e!3738095 call!508772)))

(declare-fun b!6133076 () Bool)

(declare-fun res!2541752 () Bool)

(assert (=> b!6133076 (=> res!2541752 e!3738099)))

(assert (=> b!6133076 (= res!2541752 (not ((_ is Concat!24922) r!7292)))))

(assert (=> b!6133076 (= e!3738100 e!3738099)))

(declare-fun b!6133077 () Bool)

(declare-fun e!3738097 () Bool)

(assert (=> b!6133077 (= e!3738097 e!3738098)))

(declare-fun res!2541756 () Bool)

(assert (=> b!6133077 (= res!2541756 (not (nullable!6070 (reg!16406 r!7292))))))

(assert (=> b!6133077 (=> (not res!2541756) (not e!3738098))))

(declare-fun b!6133078 () Bool)

(assert (=> b!6133078 (= e!3738097 e!3738100)))

(assert (=> b!6133078 (= c!1102710 ((_ is Union!16077) r!7292))))

(declare-fun bm!508767 () Bool)

(assert (=> bm!508767 (= call!508772 call!508771)))

(declare-fun b!6133079 () Bool)

(assert (=> b!6133079 (= e!3738096 e!3738097)))

(assert (=> b!6133079 (= c!1102711 ((_ is Star!16077) r!7292))))

(declare-fun b!6133080 () Bool)

(assert (=> b!6133080 (= e!3738101 call!508772)))

(assert (= (and d!1921478 (not res!2541754)) b!6133079))

(assert (= (and b!6133079 c!1102711) b!6133077))

(assert (= (and b!6133079 (not c!1102711)) b!6133078))

(assert (= (and b!6133077 res!2541756) b!6133074))

(assert (= (and b!6133078 c!1102710) b!6133073))

(assert (= (and b!6133078 (not c!1102710)) b!6133076))

(assert (= (and b!6133073 res!2541755) b!6133080))

(assert (= (and b!6133076 (not res!2541752)) b!6133072))

(assert (= (and b!6133072 res!2541753) b!6133075))

(assert (= (or b!6133080 b!6133075) bm!508767))

(assert (= (or b!6133073 b!6133072) bm!508765))

(assert (= (or b!6133074 bm!508767) bm!508766))

(declare-fun m!6976058 () Bool)

(assert (=> bm!508765 m!6976058))

(declare-fun m!6976060 () Bool)

(assert (=> bm!508766 m!6976060))

(declare-fun m!6976062 () Bool)

(assert (=> b!6133077 m!6976062))

(assert (=> start!612530 d!1921478))

(declare-fun bs!1521158 () Bool)

(declare-fun d!1921480 () Bool)

(assert (= bs!1521158 (and d!1921480 d!1921396)))

(declare-fun lambda!334160 () Int)

(assert (=> bs!1521158 (= lambda!334160 lambda!334125)))

(declare-fun bs!1521159 () Bool)

(assert (= bs!1521159 (and d!1921480 d!1921404)))

(assert (=> bs!1521159 (= lambda!334160 lambda!334128)))

(declare-fun bs!1521160 () Bool)

(assert (= bs!1521160 (and d!1921480 d!1921454)))

(assert (=> bs!1521160 (= lambda!334160 lambda!334150)))

(declare-fun bs!1521161 () Bool)

(assert (= bs!1521161 (and d!1921480 d!1921474)))

(assert (=> bs!1521161 (= lambda!334160 lambda!334157)))

(declare-fun b!6133101 () Bool)

(declare-fun e!3738115 () Regex!16077)

(assert (=> b!6133101 (= e!3738115 (h!70854 (exprs!5961 (h!70855 zl!343))))))

(declare-fun e!3738118 () Bool)

(assert (=> d!1921480 e!3738118))

(declare-fun res!2541762 () Bool)

(assert (=> d!1921480 (=> (not res!2541762) (not e!3738118))))

(declare-fun lt!2332201 () Regex!16077)

(assert (=> d!1921480 (= res!2541762 (validRegex!7813 lt!2332201))))

(assert (=> d!1921480 (= lt!2332201 e!3738115)))

(declare-fun c!1102720 () Bool)

(declare-fun e!3738116 () Bool)

(assert (=> d!1921480 (= c!1102720 e!3738116)))

(declare-fun res!2541761 () Bool)

(assert (=> d!1921480 (=> (not res!2541761) (not e!3738116))))

(assert (=> d!1921480 (= res!2541761 ((_ is Cons!64406) (exprs!5961 (h!70855 zl!343))))))

(assert (=> d!1921480 (forall!15198 (exprs!5961 (h!70855 zl!343)) lambda!334160)))

(assert (=> d!1921480 (= (generalisedConcat!1674 (exprs!5961 (h!70855 zl!343))) lt!2332201)))

(declare-fun b!6133102 () Bool)

(declare-fun e!3738117 () Regex!16077)

(assert (=> b!6133102 (= e!3738115 e!3738117)))

(declare-fun c!1102722 () Bool)

(assert (=> b!6133102 (= c!1102722 ((_ is Cons!64406) (exprs!5961 (h!70855 zl!343))))))

(declare-fun b!6133103 () Bool)

(declare-fun e!3738119 () Bool)

(assert (=> b!6133103 (= e!3738119 (= lt!2332201 (head!12675 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6133104 () Bool)

(declare-fun e!3738114 () Bool)

(declare-fun isEmptyExpr!1494 (Regex!16077) Bool)

(assert (=> b!6133104 (= e!3738114 (isEmptyExpr!1494 lt!2332201))))

(declare-fun b!6133105 () Bool)

(assert (=> b!6133105 (= e!3738116 (isEmpty!36348 (t!378001 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6133106 () Bool)

(assert (=> b!6133106 (= e!3738117 (Concat!24922 (h!70854 (exprs!5961 (h!70855 zl!343))) (generalisedConcat!1674 (t!378001 (exprs!5961 (h!70855 zl!343))))))))

(declare-fun b!6133107 () Bool)

(assert (=> b!6133107 (= e!3738114 e!3738119)))

(declare-fun c!1102723 () Bool)

(assert (=> b!6133107 (= c!1102723 (isEmpty!36348 (tail!11760 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6133108 () Bool)

(assert (=> b!6133108 (= e!3738118 e!3738114)))

(declare-fun c!1102721 () Bool)

(assert (=> b!6133108 (= c!1102721 (isEmpty!36348 (exprs!5961 (h!70855 zl!343))))))

(declare-fun b!6133109 () Bool)

(assert (=> b!6133109 (= e!3738117 EmptyExpr!16077)))

(declare-fun b!6133110 () Bool)

(declare-fun isConcat!1017 (Regex!16077) Bool)

(assert (=> b!6133110 (= e!3738119 (isConcat!1017 lt!2332201))))

(assert (= (and d!1921480 res!2541761) b!6133105))

(assert (= (and d!1921480 c!1102720) b!6133101))

(assert (= (and d!1921480 (not c!1102720)) b!6133102))

(assert (= (and b!6133102 c!1102722) b!6133106))

(assert (= (and b!6133102 (not c!1102722)) b!6133109))

(assert (= (and d!1921480 res!2541762) b!6133108))

(assert (= (and b!6133108 c!1102721) b!6133104))

(assert (= (and b!6133108 (not c!1102721)) b!6133107))

(assert (= (and b!6133107 c!1102723) b!6133103))

(assert (= (and b!6133107 (not c!1102723)) b!6133110))

(declare-fun m!6976064 () Bool)

(assert (=> b!6133103 m!6976064))

(declare-fun m!6976066 () Bool)

(assert (=> b!6133106 m!6976066))

(declare-fun m!6976068 () Bool)

(assert (=> b!6133108 m!6976068))

(assert (=> b!6133105 m!6975646))

(declare-fun m!6976070 () Bool)

(assert (=> d!1921480 m!6976070))

(declare-fun m!6976072 () Bool)

(assert (=> d!1921480 m!6976072))

(declare-fun m!6976074 () Bool)

(assert (=> b!6133104 m!6976074))

(declare-fun m!6976076 () Bool)

(assert (=> b!6133110 m!6976076))

(declare-fun m!6976078 () Bool)

(assert (=> b!6133107 m!6976078))

(assert (=> b!6133107 m!6976078))

(declare-fun m!6976080 () Bool)

(assert (=> b!6133107 m!6976080))

(assert (=> b!6132411 d!1921480))

(assert (=> b!6132402 d!1921468))

(declare-fun d!1921482 () Bool)

(declare-fun c!1102724 () Bool)

(assert (=> d!1921482 (= c!1102724 (isEmpty!36353 (t!378003 s!2326)))))

(declare-fun e!3738120 () Bool)

(assert (=> d!1921482 (= (matchZipper!2089 lt!2332104 (t!378003 s!2326)) e!3738120)))

(declare-fun b!6133111 () Bool)

(assert (=> b!6133111 (= e!3738120 (nullableZipper!1858 lt!2332104))))

(declare-fun b!6133112 () Bool)

(assert (=> b!6133112 (= e!3738120 (matchZipper!2089 (derivationStepZipper!2050 lt!2332104 (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))))))

(assert (= (and d!1921482 c!1102724) b!6133111))

(assert (= (and d!1921482 (not c!1102724)) b!6133112))

(assert (=> d!1921482 m!6976026))

(declare-fun m!6976082 () Bool)

(assert (=> b!6133111 m!6976082))

(assert (=> b!6133112 m!6976030))

(assert (=> b!6133112 m!6976030))

(declare-fun m!6976084 () Bool)

(assert (=> b!6133112 m!6976084))

(assert (=> b!6133112 m!6976034))

(assert (=> b!6133112 m!6976084))

(assert (=> b!6133112 m!6976034))

(declare-fun m!6976086 () Bool)

(assert (=> b!6133112 m!6976086))

(assert (=> b!6132402 d!1921482))

(declare-fun d!1921484 () Bool)

(declare-fun c!1102725 () Bool)

(assert (=> d!1921484 (= c!1102725 (isEmpty!36353 (t!378003 s!2326)))))

(declare-fun e!3738121 () Bool)

(assert (=> d!1921484 (= (matchZipper!2089 lt!2332115 (t!378003 s!2326)) e!3738121)))

(declare-fun b!6133113 () Bool)

(assert (=> b!6133113 (= e!3738121 (nullableZipper!1858 lt!2332115))))

(declare-fun b!6133114 () Bool)

(assert (=> b!6133114 (= e!3738121 (matchZipper!2089 (derivationStepZipper!2050 lt!2332115 (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))))))

(assert (= (and d!1921484 c!1102725) b!6133113))

(assert (= (and d!1921484 (not c!1102725)) b!6133114))

(assert (=> d!1921484 m!6976026))

(declare-fun m!6976088 () Bool)

(assert (=> b!6133113 m!6976088))

(assert (=> b!6133114 m!6976030))

(assert (=> b!6133114 m!6976030))

(declare-fun m!6976090 () Bool)

(assert (=> b!6133114 m!6976090))

(assert (=> b!6133114 m!6976034))

(assert (=> b!6133114 m!6976090))

(assert (=> b!6133114 m!6976034))

(declare-fun m!6976092 () Bool)

(assert (=> b!6133114 m!6976092))

(assert (=> b!6132402 d!1921484))

(declare-fun e!3738122 () Bool)

(declare-fun d!1921486 () Bool)

(assert (=> d!1921486 (= (matchZipper!2089 ((_ map or) lt!2332115 lt!2332105) (t!378003 s!2326)) e!3738122)))

(declare-fun res!2541763 () Bool)

(assert (=> d!1921486 (=> res!2541763 e!3738122)))

(assert (=> d!1921486 (= res!2541763 (matchZipper!2089 lt!2332115 (t!378003 s!2326)))))

(declare-fun lt!2332202 () Unit!157463)

(assert (=> d!1921486 (= lt!2332202 (choose!45576 lt!2332115 lt!2332105 (t!378003 s!2326)))))

(assert (=> d!1921486 (= (lemmaZipperConcatMatchesSameAsBothZippers!908 lt!2332115 lt!2332105 (t!378003 s!2326)) lt!2332202)))

(declare-fun b!6133115 () Bool)

(assert (=> b!6133115 (= e!3738122 (matchZipper!2089 lt!2332105 (t!378003 s!2326)))))

(assert (= (and d!1921486 (not res!2541763)) b!6133115))

(declare-fun m!6976094 () Bool)

(assert (=> d!1921486 m!6976094))

(assert (=> d!1921486 m!6975584))

(declare-fun m!6976096 () Bool)

(assert (=> d!1921486 m!6976096))

(assert (=> b!6133115 m!6975594))

(assert (=> b!6132402 d!1921486))

(assert (=> b!6132412 d!1921472))

(declare-fun d!1921488 () Bool)

(assert (=> d!1921488 (= (isEmpty!36348 (t!378001 (exprs!5961 (h!70855 zl!343)))) ((_ is Nil!64406) (t!378001 (exprs!5961 (h!70855 zl!343)))))))

(assert (=> b!6132392 d!1921488))

(declare-fun bs!1521162 () Bool)

(declare-fun d!1921490 () Bool)

(assert (= bs!1521162 (and d!1921490 d!1921474)))

(declare-fun lambda!334161 () Int)

(assert (=> bs!1521162 (= lambda!334161 lambda!334157)))

(declare-fun bs!1521163 () Bool)

(assert (= bs!1521163 (and d!1921490 d!1921454)))

(assert (=> bs!1521163 (= lambda!334161 lambda!334150)))

(declare-fun bs!1521164 () Bool)

(assert (= bs!1521164 (and d!1921490 d!1921404)))

(assert (=> bs!1521164 (= lambda!334161 lambda!334128)))

(declare-fun bs!1521165 () Bool)

(assert (= bs!1521165 (and d!1921490 d!1921480)))

(assert (=> bs!1521165 (= lambda!334161 lambda!334160)))

(declare-fun bs!1521166 () Bool)

(assert (= bs!1521166 (and d!1921490 d!1921396)))

(assert (=> bs!1521166 (= lambda!334161 lambda!334125)))

(assert (=> d!1921490 (= (inv!83439 setElem!41456) (forall!15198 (exprs!5961 setElem!41456) lambda!334161))))

(declare-fun bs!1521167 () Bool)

(assert (= bs!1521167 d!1921490))

(declare-fun m!6976098 () Bool)

(assert (=> bs!1521167 m!6976098))

(assert (=> setNonEmpty!41456 d!1921490))

(declare-fun b!6133120 () Bool)

(declare-fun e!3738125 () Bool)

(declare-fun tp!1713809 () Bool)

(declare-fun tp!1713810 () Bool)

(assert (=> b!6133120 (= e!3738125 (and tp!1713809 tp!1713810))))

(assert (=> b!6132403 (= tp!1713738 e!3738125)))

(assert (= (and b!6132403 ((_ is Cons!64406) (exprs!5961 setElem!41456))) b!6133120))

(declare-fun b!6133125 () Bool)

(declare-fun e!3738128 () Bool)

(declare-fun tp!1713813 () Bool)

(assert (=> b!6133125 (= e!3738128 (and tp_is_empty!41407 tp!1713813))))

(assert (=> b!6132389 (= tp!1713739 e!3738128)))

(assert (= (and b!6132389 ((_ is Cons!64408) (t!378003 s!2326))) b!6133125))

(declare-fun b!6133133 () Bool)

(declare-fun e!3738134 () Bool)

(declare-fun tp!1713818 () Bool)

(assert (=> b!6133133 (= e!3738134 tp!1713818)))

(declare-fun tp!1713819 () Bool)

(declare-fun b!6133132 () Bool)

(declare-fun e!3738133 () Bool)

(assert (=> b!6133132 (= e!3738133 (and (inv!83439 (h!70855 (t!378002 zl!343))) e!3738134 tp!1713819))))

(assert (=> b!6132405 (= tp!1713742 e!3738133)))

(assert (= b!6133132 b!6133133))

(assert (= (and b!6132405 ((_ is Cons!64407) (t!378002 zl!343))) b!6133132))

(declare-fun m!6976100 () Bool)

(assert (=> b!6133132 m!6976100))

(declare-fun b!6133145 () Bool)

(declare-fun e!3738137 () Bool)

(declare-fun tp!1713834 () Bool)

(declare-fun tp!1713831 () Bool)

(assert (=> b!6133145 (= e!3738137 (and tp!1713834 tp!1713831))))

(declare-fun b!6133146 () Bool)

(declare-fun tp!1713832 () Bool)

(assert (=> b!6133146 (= e!3738137 tp!1713832)))

(assert (=> b!6132401 (= tp!1713737 e!3738137)))

(declare-fun b!6133144 () Bool)

(assert (=> b!6133144 (= e!3738137 tp_is_empty!41407)))

(declare-fun b!6133147 () Bool)

(declare-fun tp!1713830 () Bool)

(declare-fun tp!1713833 () Bool)

(assert (=> b!6133147 (= e!3738137 (and tp!1713830 tp!1713833))))

(assert (= (and b!6132401 ((_ is ElementMatch!16077) (regOne!32667 r!7292))) b!6133144))

(assert (= (and b!6132401 ((_ is Concat!24922) (regOne!32667 r!7292))) b!6133145))

(assert (= (and b!6132401 ((_ is Star!16077) (regOne!32667 r!7292))) b!6133146))

(assert (= (and b!6132401 ((_ is Union!16077) (regOne!32667 r!7292))) b!6133147))

(declare-fun b!6133149 () Bool)

(declare-fun e!3738138 () Bool)

(declare-fun tp!1713839 () Bool)

(declare-fun tp!1713836 () Bool)

(assert (=> b!6133149 (= e!3738138 (and tp!1713839 tp!1713836))))

(declare-fun b!6133150 () Bool)

(declare-fun tp!1713837 () Bool)

(assert (=> b!6133150 (= e!3738138 tp!1713837)))

(assert (=> b!6132401 (= tp!1713740 e!3738138)))

(declare-fun b!6133148 () Bool)

(assert (=> b!6133148 (= e!3738138 tp_is_empty!41407)))

(declare-fun b!6133151 () Bool)

(declare-fun tp!1713835 () Bool)

(declare-fun tp!1713838 () Bool)

(assert (=> b!6133151 (= e!3738138 (and tp!1713835 tp!1713838))))

(assert (= (and b!6132401 ((_ is ElementMatch!16077) (regTwo!32667 r!7292))) b!6133148))

(assert (= (and b!6132401 ((_ is Concat!24922) (regTwo!32667 r!7292))) b!6133149))

(assert (= (and b!6132401 ((_ is Star!16077) (regTwo!32667 r!7292))) b!6133150))

(assert (= (and b!6132401 ((_ is Union!16077) (regTwo!32667 r!7292))) b!6133151))

(declare-fun b!6133152 () Bool)

(declare-fun e!3738139 () Bool)

(declare-fun tp!1713840 () Bool)

(declare-fun tp!1713841 () Bool)

(assert (=> b!6133152 (= e!3738139 (and tp!1713840 tp!1713841))))

(assert (=> b!6132396 (= tp!1713746 e!3738139)))

(assert (= (and b!6132396 ((_ is Cons!64406) (exprs!5961 (h!70855 zl!343)))) b!6133152))

(declare-fun b!6133154 () Bool)

(declare-fun e!3738140 () Bool)

(declare-fun tp!1713846 () Bool)

(declare-fun tp!1713843 () Bool)

(assert (=> b!6133154 (= e!3738140 (and tp!1713846 tp!1713843))))

(declare-fun b!6133155 () Bool)

(declare-fun tp!1713844 () Bool)

(assert (=> b!6133155 (= e!3738140 tp!1713844)))

(assert (=> b!6132391 (= tp!1713741 e!3738140)))

(declare-fun b!6133153 () Bool)

(assert (=> b!6133153 (= e!3738140 tp_is_empty!41407)))

(declare-fun b!6133156 () Bool)

(declare-fun tp!1713842 () Bool)

(declare-fun tp!1713845 () Bool)

(assert (=> b!6133156 (= e!3738140 (and tp!1713842 tp!1713845))))

(assert (= (and b!6132391 ((_ is ElementMatch!16077) (reg!16406 r!7292))) b!6133153))

(assert (= (and b!6132391 ((_ is Concat!24922) (reg!16406 r!7292))) b!6133154))

(assert (= (and b!6132391 ((_ is Star!16077) (reg!16406 r!7292))) b!6133155))

(assert (= (and b!6132391 ((_ is Union!16077) (reg!16406 r!7292))) b!6133156))

(declare-fun b!6133158 () Bool)

(declare-fun e!3738141 () Bool)

(declare-fun tp!1713851 () Bool)

(declare-fun tp!1713848 () Bool)

(assert (=> b!6133158 (= e!3738141 (and tp!1713851 tp!1713848))))

(declare-fun b!6133159 () Bool)

(declare-fun tp!1713849 () Bool)

(assert (=> b!6133159 (= e!3738141 tp!1713849)))

(assert (=> b!6132407 (= tp!1713744 e!3738141)))

(declare-fun b!6133157 () Bool)

(assert (=> b!6133157 (= e!3738141 tp_is_empty!41407)))

(declare-fun b!6133160 () Bool)

(declare-fun tp!1713847 () Bool)

(declare-fun tp!1713850 () Bool)

(assert (=> b!6133160 (= e!3738141 (and tp!1713847 tp!1713850))))

(assert (= (and b!6132407 ((_ is ElementMatch!16077) (regOne!32666 r!7292))) b!6133157))

(assert (= (and b!6132407 ((_ is Concat!24922) (regOne!32666 r!7292))) b!6133158))

(assert (= (and b!6132407 ((_ is Star!16077) (regOne!32666 r!7292))) b!6133159))

(assert (= (and b!6132407 ((_ is Union!16077) (regOne!32666 r!7292))) b!6133160))

(declare-fun b!6133162 () Bool)

(declare-fun e!3738142 () Bool)

(declare-fun tp!1713856 () Bool)

(declare-fun tp!1713853 () Bool)

(assert (=> b!6133162 (= e!3738142 (and tp!1713856 tp!1713853))))

(declare-fun b!6133163 () Bool)

(declare-fun tp!1713854 () Bool)

(assert (=> b!6133163 (= e!3738142 tp!1713854)))

(assert (=> b!6132407 (= tp!1713745 e!3738142)))

(declare-fun b!6133161 () Bool)

(assert (=> b!6133161 (= e!3738142 tp_is_empty!41407)))

(declare-fun b!6133164 () Bool)

(declare-fun tp!1713852 () Bool)

(declare-fun tp!1713855 () Bool)

(assert (=> b!6133164 (= e!3738142 (and tp!1713852 tp!1713855))))

(assert (= (and b!6132407 ((_ is ElementMatch!16077) (regTwo!32666 r!7292))) b!6133161))

(assert (= (and b!6132407 ((_ is Concat!24922) (regTwo!32666 r!7292))) b!6133162))

(assert (= (and b!6132407 ((_ is Star!16077) (regTwo!32666 r!7292))) b!6133163))

(assert (= (and b!6132407 ((_ is Union!16077) (regTwo!32666 r!7292))) b!6133164))

(declare-fun condSetEmpty!41462 () Bool)

(assert (=> setNonEmpty!41456 (= condSetEmpty!41462 (= setRest!41456 ((as const (Array Context!10922 Bool)) false)))))

(declare-fun setRes!41462 () Bool)

(assert (=> setNonEmpty!41456 (= tp!1713743 setRes!41462)))

(declare-fun setIsEmpty!41462 () Bool)

(assert (=> setIsEmpty!41462 setRes!41462))

(declare-fun setElem!41462 () Context!10922)

(declare-fun tp!1713861 () Bool)

(declare-fun e!3738145 () Bool)

(declare-fun setNonEmpty!41462 () Bool)

(assert (=> setNonEmpty!41462 (= setRes!41462 (and tp!1713861 (inv!83439 setElem!41462) e!3738145))))

(declare-fun setRest!41462 () (InoxSet Context!10922))

(assert (=> setNonEmpty!41462 (= setRest!41456 ((_ map or) (store ((as const (Array Context!10922 Bool)) false) setElem!41462 true) setRest!41462))))

(declare-fun b!6133169 () Bool)

(declare-fun tp!1713862 () Bool)

(assert (=> b!6133169 (= e!3738145 tp!1713862)))

(assert (= (and setNonEmpty!41456 condSetEmpty!41462) setIsEmpty!41462))

(assert (= (and setNonEmpty!41456 (not condSetEmpty!41462)) setNonEmpty!41462))

(assert (= setNonEmpty!41462 b!6133169))

(declare-fun m!6976102 () Bool)

(assert (=> setNonEmpty!41462 m!6976102))

(declare-fun b_lambda!233447 () Bool)

(assert (= b_lambda!233443 (or b!6132399 b_lambda!233447)))

(declare-fun bs!1521168 () Bool)

(declare-fun d!1921492 () Bool)

(assert (= bs!1521168 (and d!1921492 b!6132399)))

(assert (=> bs!1521168 (= (dynLambda!25374 lambda!334103 (h!70855 zl!343)) (derivationStepZipperUp!1251 (h!70855 zl!343) (h!70856 s!2326)))))

(assert (=> bs!1521168 m!6975634))

(assert (=> d!1921434 d!1921492))

(check-sat (not bm!508747) (not b!6132745) (not b!6132866) (not b!6133132) (not b!6132744) (not bm!508719) (not b!6133113) (not b!6133147) tp_is_empty!41407 (not b!6133103) (not bm!508765) (not b!6133155) (not b!6133077) (not b!6133163) (not b!6133051) (not b!6133038) (not b!6133154) (not b!6133053) (not d!1921482) (not bm!508739) (not d!1921434) (not b!6133104) (not b!6133052) (not d!1921486) (not b!6132749) (not b!6133031) (not d!1921466) (not b!6132941) (not d!1921410) (not b!6133146) (not b!6132776) (not b!6133156) (not b!6133159) (not b!6133028) (not d!1921450) (not bm!508744) (not d!1921468) (not bm!508717) (not b!6132987) (not b!6133106) (not b!6133160) (not d!1921480) (not b!6132990) (not b!6133107) (not b!6133033) (not bm!508738) (not b!6132743) (not b!6132751) (not b!6133114) (not bm!508755) (not d!1921448) (not d!1921452) (not b!6132695) (not b!6132935) (not b!6133145) (not bm!508741) (not b!6133032) (not b!6133047) (not d!1921474) (not b!6132940) (not b!6133115) (not b!6133110) (not d!1921472) (not b!6132786) (not bm!508758) (not b!6132757) (not d!1921394) (not b!6133158) (not bm!508735) (not d!1921414) (not bm!508766) (not d!1921454) (not b!6132938) (not d!1921460) (not bm!508732) (not b!6133025) (not d!1921484) (not d!1921458) (not b!6132934) (not d!1921490) (not b!6133169) (not b!6133046) (not b!6133151) (not b!6133120) (not b!6132782) (not bm!508745) (not b!6133111) (not d!1921470) (not b!6132777) (not d!1921444) (not d!1921440) (not b!6132752) (not d!1921464) (not b!6132747) (not b!6133150) (not b!6133149) (not d!1921446) (not b!6132781) (not b!6133133) (not setNonEmpty!41462) (not d!1921404) (not b!6133048) (not d!1921476) (not d!1921396) (not b!6133050) (not b!6133164) (not b!6133108) (not bm!508754) (not b_lambda!233447) (not b!6133049) (not b!6132833) (not bm!508718) (not b!6133152) (not bs!1521168) (not b!6133125) (not bm!508733) (not b!6132894) (not b!6133162) (not b!6133105) (not b!6133041) (not b!6132933) (not b!6132787) (not b!6133112))
(check-sat)
(get-model)

(declare-fun d!1921728 () Bool)

(declare-fun e!3738451 () Bool)

(assert (=> d!1921728 e!3738451))

(declare-fun c!1102862 () Bool)

(assert (=> d!1921728 (= c!1102862 ((_ is EmptyExpr!16077) (regTwo!32666 r!7292)))))

(declare-fun lt!2332225 () Bool)

(declare-fun e!3738456 () Bool)

(assert (=> d!1921728 (= lt!2332225 e!3738456)))

(declare-fun c!1102860 () Bool)

(assert (=> d!1921728 (= c!1102860 (isEmpty!36353 (_2!36359 (get!22217 lt!2332178))))))

(assert (=> d!1921728 (validRegex!7813 (regTwo!32666 r!7292))))

(assert (=> d!1921728 (= (matchR!8260 (regTwo!32666 r!7292) (_2!36359 (get!22217 lt!2332178))) lt!2332225)))

(declare-fun b!6133720 () Bool)

(declare-fun e!3738453 () Bool)

(assert (=> b!6133720 (= e!3738453 (not (= (head!12676 (_2!36359 (get!22217 lt!2332178))) (c!1102519 (regTwo!32666 r!7292)))))))

(declare-fun b!6133721 () Bool)

(declare-fun e!3738455 () Bool)

(declare-fun e!3738454 () Bool)

(assert (=> b!6133721 (= e!3738455 e!3738454)))

(declare-fun res!2541939 () Bool)

(assert (=> b!6133721 (=> (not res!2541939) (not e!3738454))))

(assert (=> b!6133721 (= res!2541939 (not lt!2332225))))

(declare-fun b!6133722 () Bool)

(declare-fun res!2541937 () Bool)

(assert (=> b!6133722 (=> res!2541937 e!3738455)))

(declare-fun e!3738452 () Bool)

(assert (=> b!6133722 (= res!2541937 e!3738452)))

(declare-fun res!2541944 () Bool)

(assert (=> b!6133722 (=> (not res!2541944) (not e!3738452))))

(assert (=> b!6133722 (= res!2541944 lt!2332225)))

(declare-fun b!6133723 () Bool)

(declare-fun res!2541940 () Bool)

(assert (=> b!6133723 (=> res!2541940 e!3738453)))

(assert (=> b!6133723 (= res!2541940 (not (isEmpty!36353 (tail!11761 (_2!36359 (get!22217 lt!2332178))))))))

(declare-fun b!6133724 () Bool)

(declare-fun res!2541942 () Bool)

(assert (=> b!6133724 (=> res!2541942 e!3738455)))

(assert (=> b!6133724 (= res!2541942 (not ((_ is ElementMatch!16077) (regTwo!32666 r!7292))))))

(declare-fun e!3738450 () Bool)

(assert (=> b!6133724 (= e!3738450 e!3738455)))

(declare-fun b!6133725 () Bool)

(assert (=> b!6133725 (= e!3738451 e!3738450)))

(declare-fun c!1102861 () Bool)

(assert (=> b!6133725 (= c!1102861 ((_ is EmptyLang!16077) (regTwo!32666 r!7292)))))

(declare-fun b!6133726 () Bool)

(assert (=> b!6133726 (= e!3738456 (nullable!6070 (regTwo!32666 r!7292)))))

(declare-fun b!6133727 () Bool)

(declare-fun res!2541943 () Bool)

(assert (=> b!6133727 (=> (not res!2541943) (not e!3738452))))

(assert (=> b!6133727 (= res!2541943 (isEmpty!36353 (tail!11761 (_2!36359 (get!22217 lt!2332178)))))))

(declare-fun b!6133728 () Bool)

(assert (=> b!6133728 (= e!3738456 (matchR!8260 (derivativeStep!4797 (regTwo!32666 r!7292) (head!12676 (_2!36359 (get!22217 lt!2332178)))) (tail!11761 (_2!36359 (get!22217 lt!2332178)))))))

(declare-fun b!6133729 () Bool)

(assert (=> b!6133729 (= e!3738454 e!3738453)))

(declare-fun res!2541938 () Bool)

(assert (=> b!6133729 (=> res!2541938 e!3738453)))

(declare-fun call!508875 () Bool)

(assert (=> b!6133729 (= res!2541938 call!508875)))

(declare-fun b!6133730 () Bool)

(assert (=> b!6133730 (= e!3738451 (= lt!2332225 call!508875))))

(declare-fun bm!508870 () Bool)

(assert (=> bm!508870 (= call!508875 (isEmpty!36353 (_2!36359 (get!22217 lt!2332178))))))

(declare-fun b!6133731 () Bool)

(declare-fun res!2541941 () Bool)

(assert (=> b!6133731 (=> (not res!2541941) (not e!3738452))))

(assert (=> b!6133731 (= res!2541941 (not call!508875))))

(declare-fun b!6133732 () Bool)

(assert (=> b!6133732 (= e!3738450 (not lt!2332225))))

(declare-fun b!6133733 () Bool)

(assert (=> b!6133733 (= e!3738452 (= (head!12676 (_2!36359 (get!22217 lt!2332178))) (c!1102519 (regTwo!32666 r!7292))))))

(assert (= (and d!1921728 c!1102860) b!6133726))

(assert (= (and d!1921728 (not c!1102860)) b!6133728))

(assert (= (and d!1921728 c!1102862) b!6133730))

(assert (= (and d!1921728 (not c!1102862)) b!6133725))

(assert (= (and b!6133725 c!1102861) b!6133732))

(assert (= (and b!6133725 (not c!1102861)) b!6133724))

(assert (= (and b!6133724 (not res!2541942)) b!6133722))

(assert (= (and b!6133722 res!2541944) b!6133731))

(assert (= (and b!6133731 res!2541941) b!6133727))

(assert (= (and b!6133727 res!2541943) b!6133733))

(assert (= (and b!6133722 (not res!2541937)) b!6133721))

(assert (= (and b!6133721 res!2541939) b!6133729))

(assert (= (and b!6133729 (not res!2541938)) b!6133723))

(assert (= (and b!6133723 (not res!2541940)) b!6133720))

(assert (= (or b!6133730 b!6133729 b!6133731) bm!508870))

(declare-fun m!6976598 () Bool)

(assert (=> b!6133728 m!6976598))

(assert (=> b!6133728 m!6976598))

(declare-fun m!6976600 () Bool)

(assert (=> b!6133728 m!6976600))

(declare-fun m!6976602 () Bool)

(assert (=> b!6133728 m!6976602))

(assert (=> b!6133728 m!6976600))

(assert (=> b!6133728 m!6976602))

(declare-fun m!6976604 () Bool)

(assert (=> b!6133728 m!6976604))

(assert (=> b!6133727 m!6976602))

(assert (=> b!6133727 m!6976602))

(declare-fun m!6976606 () Bool)

(assert (=> b!6133727 m!6976606))

(assert (=> b!6133720 m!6976598))

(assert (=> b!6133733 m!6976598))

(declare-fun m!6976608 () Bool)

(assert (=> b!6133726 m!6976608))

(declare-fun m!6976610 () Bool)

(assert (=> bm!508870 m!6976610))

(assert (=> b!6133723 m!6976602))

(assert (=> b!6133723 m!6976602))

(assert (=> b!6133723 m!6976606))

(assert (=> d!1921728 m!6976610))

(declare-fun m!6976612 () Bool)

(assert (=> d!1921728 m!6976612))

(assert (=> b!6132935 d!1921728))

(declare-fun d!1921730 () Bool)

(assert (=> d!1921730 (= (get!22217 lt!2332178) (v!52106 lt!2332178))))

(assert (=> b!6132935 d!1921730))

(assert (=> d!1921434 d!1921414))

(declare-fun d!1921732 () Bool)

(assert (=> d!1921732 (= (flatMap!1582 z!1189 lambda!334103) (dynLambda!25374 lambda!334103 (h!70855 zl!343)))))

(assert (=> d!1921732 true))

(declare-fun _$13!3005 () Unit!157463)

(assert (=> d!1921732 (= (choose!45567 z!1189 (h!70855 zl!343) lambda!334103) _$13!3005)))

(declare-fun b_lambda!233477 () Bool)

(assert (=> (not b_lambda!233477) (not d!1921732)))

(declare-fun bs!1521327 () Bool)

(assert (= bs!1521327 d!1921732))

(assert (=> bs!1521327 m!6975644))

(assert (=> bs!1521327 m!6975932))

(assert (=> d!1921434 d!1921732))

(declare-fun b!6133734 () Bool)

(declare-fun e!3738461 () Bool)

(declare-fun e!3738457 () Bool)

(assert (=> b!6133734 (= e!3738461 e!3738457)))

(declare-fun res!2541946 () Bool)

(assert (=> b!6133734 (=> (not res!2541946) (not e!3738457))))

(declare-fun call!508876 () Bool)

(assert (=> b!6133734 (= res!2541946 call!508876)))

(declare-fun bm!508871 () Bool)

(declare-fun c!1102863 () Bool)

(assert (=> bm!508871 (= call!508876 (validRegex!7813 (ite c!1102863 (regOne!32667 (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292)))) (regOne!32666 (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292)))))))))

(declare-fun b!6133735 () Bool)

(declare-fun res!2541948 () Bool)

(declare-fun e!3738463 () Bool)

(assert (=> b!6133735 (=> (not res!2541948) (not e!3738463))))

(assert (=> b!6133735 (= res!2541948 call!508876)))

(declare-fun e!3738462 () Bool)

(assert (=> b!6133735 (= e!3738462 e!3738463)))

(declare-fun b!6133736 () Bool)

(declare-fun e!3738460 () Bool)

(declare-fun call!508877 () Bool)

(assert (=> b!6133736 (= e!3738460 call!508877)))

(declare-fun bm!508872 () Bool)

(declare-fun c!1102864 () Bool)

(assert (=> bm!508872 (= call!508877 (validRegex!7813 (ite c!1102864 (reg!16406 (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292)))) (ite c!1102863 (regTwo!32667 (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292)))) (regTwo!32666 (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292))))))))))

(declare-fun d!1921734 () Bool)

(declare-fun res!2541947 () Bool)

(declare-fun e!3738458 () Bool)

(assert (=> d!1921734 (=> res!2541947 e!3738458)))

(assert (=> d!1921734 (= res!2541947 ((_ is ElementMatch!16077) (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292)))))))

(assert (=> d!1921734 (= (validRegex!7813 (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292)))) e!3738458)))

(declare-fun b!6133737 () Bool)

(declare-fun call!508878 () Bool)

(assert (=> b!6133737 (= e!3738457 call!508878)))

(declare-fun b!6133738 () Bool)

(declare-fun res!2541945 () Bool)

(assert (=> b!6133738 (=> res!2541945 e!3738461)))

(assert (=> b!6133738 (= res!2541945 (not ((_ is Concat!24922) (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292))))))))

(assert (=> b!6133738 (= e!3738462 e!3738461)))

(declare-fun b!6133739 () Bool)

(declare-fun e!3738459 () Bool)

(assert (=> b!6133739 (= e!3738459 e!3738460)))

(declare-fun res!2541949 () Bool)

(assert (=> b!6133739 (= res!2541949 (not (nullable!6070 (reg!16406 (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292)))))))))

(assert (=> b!6133739 (=> (not res!2541949) (not e!3738460))))

(declare-fun b!6133740 () Bool)

(assert (=> b!6133740 (= e!3738459 e!3738462)))

(assert (=> b!6133740 (= c!1102863 ((_ is Union!16077) (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292)))))))

(declare-fun bm!508873 () Bool)

(assert (=> bm!508873 (= call!508878 call!508877)))

(declare-fun b!6133741 () Bool)

(assert (=> b!6133741 (= e!3738458 e!3738459)))

(assert (=> b!6133741 (= c!1102864 ((_ is Star!16077) (ite c!1102711 (reg!16406 r!7292) (ite c!1102710 (regTwo!32667 r!7292) (regTwo!32666 r!7292)))))))

(declare-fun b!6133742 () Bool)

(assert (=> b!6133742 (= e!3738463 call!508878)))

(assert (= (and d!1921734 (not res!2541947)) b!6133741))

(assert (= (and b!6133741 c!1102864) b!6133739))

(assert (= (and b!6133741 (not c!1102864)) b!6133740))

(assert (= (and b!6133739 res!2541949) b!6133736))

(assert (= (and b!6133740 c!1102863) b!6133735))

(assert (= (and b!6133740 (not c!1102863)) b!6133738))

(assert (= (and b!6133735 res!2541948) b!6133742))

(assert (= (and b!6133738 (not res!2541945)) b!6133734))

(assert (= (and b!6133734 res!2541946) b!6133737))

(assert (= (or b!6133742 b!6133737) bm!508873))

(assert (= (or b!6133735 b!6133734) bm!508871))

(assert (= (or b!6133736 bm!508873) bm!508872))

(declare-fun m!6976614 () Bool)

(assert (=> bm!508871 m!6976614))

(declare-fun m!6976616 () Bool)

(assert (=> bm!508872 m!6976616))

(declare-fun m!6976618 () Bool)

(assert (=> b!6133739 m!6976618))

(assert (=> bm!508766 d!1921734))

(declare-fun d!1921736 () Bool)

(assert (=> d!1921736 (= (head!12676 s!2326) (h!70856 s!2326))))

(assert (=> b!6133025 d!1921736))

(declare-fun d!1921738 () Bool)

(assert (=> d!1921738 (= (nullable!6070 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (nullableFct!2034 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))))

(declare-fun bs!1521328 () Bool)

(assert (= bs!1521328 d!1921738))

(declare-fun m!6976620 () Bool)

(assert (=> bs!1521328 m!6976620))

(assert (=> b!6132781 d!1921738))

(declare-fun d!1921740 () Bool)

(declare-fun c!1102865 () Bool)

(assert (=> d!1921740 (= c!1102865 (isEmpty!36353 (tail!11761 (t!378003 s!2326))))))

(declare-fun e!3738464 () Bool)

(assert (=> d!1921740 (= (matchZipper!2089 (derivationStepZipper!2050 lt!2332104 (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))) e!3738464)))

(declare-fun b!6133743 () Bool)

(assert (=> b!6133743 (= e!3738464 (nullableZipper!1858 (derivationStepZipper!2050 lt!2332104 (head!12676 (t!378003 s!2326)))))))

(declare-fun b!6133744 () Bool)

(assert (=> b!6133744 (= e!3738464 (matchZipper!2089 (derivationStepZipper!2050 (derivationStepZipper!2050 lt!2332104 (head!12676 (t!378003 s!2326))) (head!12676 (tail!11761 (t!378003 s!2326)))) (tail!11761 (tail!11761 (t!378003 s!2326)))))))

(assert (= (and d!1921740 c!1102865) b!6133743))

(assert (= (and d!1921740 (not c!1102865)) b!6133744))

(assert (=> d!1921740 m!6976034))

(declare-fun m!6976622 () Bool)

(assert (=> d!1921740 m!6976622))

(assert (=> b!6133743 m!6976084))

(declare-fun m!6976624 () Bool)

(assert (=> b!6133743 m!6976624))

(assert (=> b!6133744 m!6976034))

(declare-fun m!6976626 () Bool)

(assert (=> b!6133744 m!6976626))

(assert (=> b!6133744 m!6976084))

(assert (=> b!6133744 m!6976626))

(declare-fun m!6976628 () Bool)

(assert (=> b!6133744 m!6976628))

(assert (=> b!6133744 m!6976034))

(declare-fun m!6976630 () Bool)

(assert (=> b!6133744 m!6976630))

(assert (=> b!6133744 m!6976628))

(assert (=> b!6133744 m!6976630))

(declare-fun m!6976632 () Bool)

(assert (=> b!6133744 m!6976632))

(assert (=> b!6133112 d!1921740))

(declare-fun bs!1521329 () Bool)

(declare-fun d!1921742 () Bool)

(assert (= bs!1521329 (and d!1921742 b!6132399)))

(declare-fun lambda!334198 () Int)

(assert (=> bs!1521329 (= (= (head!12676 (t!378003 s!2326)) (h!70856 s!2326)) (= lambda!334198 lambda!334103))))

(assert (=> d!1921742 true))

(assert (=> d!1921742 (= (derivationStepZipper!2050 lt!2332104 (head!12676 (t!378003 s!2326))) (flatMap!1582 lt!2332104 lambda!334198))))

(declare-fun bs!1521330 () Bool)

(assert (= bs!1521330 d!1921742))

(declare-fun m!6976634 () Bool)

(assert (=> bs!1521330 m!6976634))

(assert (=> b!6133112 d!1921742))

(declare-fun d!1921744 () Bool)

(assert (=> d!1921744 (= (head!12676 (t!378003 s!2326)) (h!70856 (t!378003 s!2326)))))

(assert (=> b!6133112 d!1921744))

(declare-fun d!1921746 () Bool)

(assert (=> d!1921746 (= (tail!11761 (t!378003 s!2326)) (t!378003 (t!378003 s!2326)))))

(assert (=> b!6133112 d!1921746))

(declare-fun d!1921748 () Bool)

(declare-fun lambda!334201 () Int)

(declare-fun exists!2424 ((InoxSet Context!10922) Int) Bool)

(assert (=> d!1921748 (= (nullableZipper!1858 lt!2332103) (exists!2424 lt!2332103 lambda!334201))))

(declare-fun bs!1521331 () Bool)

(assert (= bs!1521331 d!1921748))

(declare-fun m!6976636 () Bool)

(assert (=> bs!1521331 m!6976636))

(assert (=> b!6133052 d!1921748))

(declare-fun bs!1521332 () Bool)

(declare-fun d!1921750 () Bool)

(assert (= bs!1521332 (and d!1921750 d!1921748)))

(declare-fun lambda!334202 () Int)

(assert (=> bs!1521332 (= lambda!334202 lambda!334201)))

(assert (=> d!1921750 (= (nullableZipper!1858 lt!2332105) (exists!2424 lt!2332105 lambda!334202))))

(declare-fun bs!1521333 () Bool)

(assert (= bs!1521333 d!1921750))

(declare-fun m!6976638 () Bool)

(assert (=> bs!1521333 m!6976638))

(assert (=> b!6133050 d!1921750))

(declare-fun d!1921752 () Bool)

(assert (=> d!1921752 (= (isEmpty!36348 (unfocusZipperList!1498 zl!343)) ((_ is Nil!64406) (unfocusZipperList!1498 zl!343)))))

(assert (=> b!6132749 d!1921752))

(declare-fun d!1921754 () Bool)

(declare-fun c!1102870 () Bool)

(assert (=> d!1921754 (= c!1102870 (isEmpty!36353 (tail!11761 (t!378003 s!2326))))))

(declare-fun e!3738465 () Bool)

(assert (=> d!1921754 (= (matchZipper!2089 (derivationStepZipper!2050 lt!2332102 (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))) e!3738465)))

(declare-fun b!6133747 () Bool)

(assert (=> b!6133747 (= e!3738465 (nullableZipper!1858 (derivationStepZipper!2050 lt!2332102 (head!12676 (t!378003 s!2326)))))))

(declare-fun b!6133748 () Bool)

(assert (=> b!6133748 (= e!3738465 (matchZipper!2089 (derivationStepZipper!2050 (derivationStepZipper!2050 lt!2332102 (head!12676 (t!378003 s!2326))) (head!12676 (tail!11761 (t!378003 s!2326)))) (tail!11761 (tail!11761 (t!378003 s!2326)))))))

(assert (= (and d!1921754 c!1102870) b!6133747))

(assert (= (and d!1921754 (not c!1102870)) b!6133748))

(assert (=> d!1921754 m!6976034))

(assert (=> d!1921754 m!6976622))

(assert (=> b!6133747 m!6976032))

(declare-fun m!6976640 () Bool)

(assert (=> b!6133747 m!6976640))

(assert (=> b!6133748 m!6976034))

(assert (=> b!6133748 m!6976626))

(assert (=> b!6133748 m!6976032))

(assert (=> b!6133748 m!6976626))

(declare-fun m!6976642 () Bool)

(assert (=> b!6133748 m!6976642))

(assert (=> b!6133748 m!6976034))

(assert (=> b!6133748 m!6976630))

(assert (=> b!6133748 m!6976642))

(assert (=> b!6133748 m!6976630))

(declare-fun m!6976644 () Bool)

(assert (=> b!6133748 m!6976644))

(assert (=> b!6133047 d!1921754))

(declare-fun bs!1521334 () Bool)

(declare-fun d!1921756 () Bool)

(assert (= bs!1521334 (and d!1921756 b!6132399)))

(declare-fun lambda!334203 () Int)

(assert (=> bs!1521334 (= (= (head!12676 (t!378003 s!2326)) (h!70856 s!2326)) (= lambda!334203 lambda!334103))))

(declare-fun bs!1521335 () Bool)

(assert (= bs!1521335 (and d!1921756 d!1921742)))

(assert (=> bs!1521335 (= lambda!334203 lambda!334198)))

(assert (=> d!1921756 true))

(assert (=> d!1921756 (= (derivationStepZipper!2050 lt!2332102 (head!12676 (t!378003 s!2326))) (flatMap!1582 lt!2332102 lambda!334203))))

(declare-fun bs!1521336 () Bool)

(assert (= bs!1521336 d!1921756))

(declare-fun m!6976646 () Bool)

(assert (=> bs!1521336 m!6976646))

(assert (=> b!6133047 d!1921756))

(assert (=> b!6133047 d!1921744))

(assert (=> b!6133047 d!1921746))

(declare-fun c!1102873 () Bool)

(declare-fun call!508881 () List!64530)

(declare-fun c!1102871 () Bool)

(declare-fun bm!508874 () Bool)

(assert (=> bm!508874 (= call!508881 ($colon$colon!1954 (exprs!5961 (ite (or c!1102667 c!1102665) lt!2332109 (Context!10923 call!508748))) (ite (or c!1102873 c!1102871) (regTwo!32666 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))) (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292)))))))))))

(declare-fun b!6133749 () Bool)

(declare-fun e!3738470 () (InoxSet Context!10922))

(declare-fun e!3738468 () (InoxSet Context!10922))

(assert (=> b!6133749 (= e!3738470 e!3738468)))

(assert (=> b!6133749 (= c!1102871 ((_ is Concat!24922) (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))))))

(declare-fun b!6133750 () Bool)

(declare-fun e!3738469 () (InoxSet Context!10922))

(declare-fun call!508882 () (InoxSet Context!10922))

(assert (=> b!6133750 (= e!3738469 call!508882)))

(declare-fun b!6133751 () Bool)

(assert (=> b!6133751 (= e!3738469 ((as const (Array Context!10922 Bool)) false))))

(declare-fun e!3738471 () (InoxSet Context!10922))

(declare-fun b!6133752 () Bool)

(assert (=> b!6133752 (= e!3738471 (store ((as const (Array Context!10922 Bool)) false) (ite (or c!1102667 c!1102665) lt!2332109 (Context!10923 call!508748)) true))))

(declare-fun call!508883 () (InoxSet Context!10922))

(declare-fun c!1102875 () Bool)

(declare-fun bm!508875 () Bool)

(assert (=> bm!508875 (= call!508883 (derivationStepZipperDown!1325 (ite c!1102875 (regOne!32667 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))) (regOne!32666 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292)))))))) (ite c!1102875 (ite (or c!1102667 c!1102665) lt!2332109 (Context!10923 call!508748)) (Context!10923 call!508881)) (h!70856 s!2326)))))

(declare-fun b!6133753 () Bool)

(declare-fun e!3738467 () Bool)

(assert (=> b!6133753 (= c!1102873 e!3738467)))

(declare-fun res!2541950 () Bool)

(assert (=> b!6133753 (=> (not res!2541950) (not e!3738467))))

(assert (=> b!6133753 (= res!2541950 ((_ is Concat!24922) (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))))))

(declare-fun e!3738466 () (InoxSet Context!10922))

(assert (=> b!6133753 (= e!3738466 e!3738470)))

(declare-fun call!508884 () List!64530)

(declare-fun bm!508877 () Bool)

(declare-fun call!508879 () (InoxSet Context!10922))

(assert (=> bm!508877 (= call!508879 (derivationStepZipperDown!1325 (ite c!1102875 (regTwo!32667 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))) (ite c!1102873 (regTwo!32666 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))) (ite c!1102871 (regOne!32666 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))) (reg!16406 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292)))))))))) (ite (or c!1102875 c!1102873) (ite (or c!1102667 c!1102665) lt!2332109 (Context!10923 call!508748)) (Context!10923 call!508884)) (h!70856 s!2326)))))

(declare-fun b!6133754 () Bool)

(assert (=> b!6133754 (= e!3738468 call!508882)))

(declare-fun bm!508878 () Bool)

(declare-fun call!508880 () (InoxSet Context!10922))

(assert (=> bm!508878 (= call!508882 call!508880)))

(declare-fun c!1102874 () Bool)

(declare-fun b!6133755 () Bool)

(assert (=> b!6133755 (= c!1102874 ((_ is Star!16077) (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))))))

(assert (=> b!6133755 (= e!3738468 e!3738469)))

(declare-fun bm!508879 () Bool)

(assert (=> bm!508879 (= call!508880 call!508879)))

(declare-fun b!6133756 () Bool)

(assert (=> b!6133756 (= e!3738471 e!3738466)))

(assert (=> b!6133756 (= c!1102875 ((_ is Union!16077) (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))))))

(declare-fun b!6133757 () Bool)

(assert (=> b!6133757 (= e!3738467 (nullable!6070 (regOne!32666 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292)))))))))))

(declare-fun b!6133758 () Bool)

(assert (=> b!6133758 (= e!3738470 ((_ map or) call!508883 call!508880))))

(declare-fun b!6133759 () Bool)

(assert (=> b!6133759 (= e!3738466 ((_ map or) call!508883 call!508879))))

(declare-fun bm!508876 () Bool)

(assert (=> bm!508876 (= call!508884 call!508881)))

(declare-fun d!1921758 () Bool)

(declare-fun c!1102872 () Bool)

(assert (=> d!1921758 (= c!1102872 (and ((_ is ElementMatch!16077) (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))) (= (c!1102519 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292))))))) (h!70856 s!2326))))))

(assert (=> d!1921758 (= (derivationStepZipperDown!1325 (ite c!1102667 (regTwo!32667 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102665 (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (ite c!1102663 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))) (reg!16406 (regTwo!32667 (regOne!32666 r!7292)))))) (ite (or c!1102667 c!1102665) lt!2332109 (Context!10923 call!508748)) (h!70856 s!2326)) e!3738471)))

(assert (= (and d!1921758 c!1102872) b!6133752))

(assert (= (and d!1921758 (not c!1102872)) b!6133756))

(assert (= (and b!6133756 c!1102875) b!6133759))

(assert (= (and b!6133756 (not c!1102875)) b!6133753))

(assert (= (and b!6133753 res!2541950) b!6133757))

(assert (= (and b!6133753 c!1102873) b!6133758))

(assert (= (and b!6133753 (not c!1102873)) b!6133749))

(assert (= (and b!6133749 c!1102871) b!6133754))

(assert (= (and b!6133749 (not c!1102871)) b!6133755))

(assert (= (and b!6133755 c!1102874) b!6133750))

(assert (= (and b!6133755 (not c!1102874)) b!6133751))

(assert (= (or b!6133754 b!6133750) bm!508876))

(assert (= (or b!6133754 b!6133750) bm!508878))

(assert (= (or b!6133758 bm!508876) bm!508874))

(assert (= (or b!6133758 bm!508878) bm!508879))

(assert (= (or b!6133759 bm!508879) bm!508877))

(assert (= (or b!6133759 b!6133758) bm!508875))

(declare-fun m!6976648 () Bool)

(assert (=> b!6133752 m!6976648))

(declare-fun m!6976650 () Bool)

(assert (=> b!6133757 m!6976650))

(declare-fun m!6976652 () Bool)

(assert (=> bm!508877 m!6976652))

(declare-fun m!6976654 () Bool)

(assert (=> bm!508875 m!6976654))

(declare-fun m!6976656 () Bool)

(assert (=> bm!508874 m!6976656))

(assert (=> bm!508741 d!1921758))

(declare-fun d!1921760 () Bool)

(assert (=> d!1921760 (= (isConcat!1017 lt!2332201) ((_ is Concat!24922) lt!2332201))))

(assert (=> b!6133110 d!1921760))

(declare-fun d!1921762 () Bool)

(assert (=> d!1921762 (= (isEmpty!36353 (t!378003 s!2326)) ((_ is Nil!64408) (t!378003 s!2326)))))

(assert (=> d!1921482 d!1921762))

(declare-fun bs!1521337 () Bool)

(declare-fun d!1921764 () Bool)

(assert (= bs!1521337 (and d!1921764 d!1921474)))

(declare-fun lambda!334204 () Int)

(assert (=> bs!1521337 (= lambda!334204 lambda!334157)))

(declare-fun bs!1521338 () Bool)

(assert (= bs!1521338 (and d!1921764 d!1921454)))

(assert (=> bs!1521338 (= lambda!334204 lambda!334150)))

(declare-fun bs!1521339 () Bool)

(assert (= bs!1521339 (and d!1921764 d!1921490)))

(assert (=> bs!1521339 (= lambda!334204 lambda!334161)))

(declare-fun bs!1521340 () Bool)

(assert (= bs!1521340 (and d!1921764 d!1921404)))

(assert (=> bs!1521340 (= lambda!334204 lambda!334128)))

(declare-fun bs!1521341 () Bool)

(assert (= bs!1521341 (and d!1921764 d!1921480)))

(assert (=> bs!1521341 (= lambda!334204 lambda!334160)))

(declare-fun bs!1521342 () Bool)

(assert (= bs!1521342 (and d!1921764 d!1921396)))

(assert (=> bs!1521342 (= lambda!334204 lambda!334125)))

(declare-fun b!6133760 () Bool)

(declare-fun e!3738473 () Regex!16077)

(assert (=> b!6133760 (= e!3738473 (h!70854 (t!378001 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun e!3738476 () Bool)

(assert (=> d!1921764 e!3738476))

(declare-fun res!2541952 () Bool)

(assert (=> d!1921764 (=> (not res!2541952) (not e!3738476))))

(declare-fun lt!2332226 () Regex!16077)

(assert (=> d!1921764 (= res!2541952 (validRegex!7813 lt!2332226))))

(assert (=> d!1921764 (= lt!2332226 e!3738473)))

(declare-fun c!1102876 () Bool)

(declare-fun e!3738474 () Bool)

(assert (=> d!1921764 (= c!1102876 e!3738474)))

(declare-fun res!2541951 () Bool)

(assert (=> d!1921764 (=> (not res!2541951) (not e!3738474))))

(assert (=> d!1921764 (= res!2541951 ((_ is Cons!64406) (t!378001 (exprs!5961 (h!70855 zl!343)))))))

(assert (=> d!1921764 (forall!15198 (t!378001 (exprs!5961 (h!70855 zl!343))) lambda!334204)))

(assert (=> d!1921764 (= (generalisedConcat!1674 (t!378001 (exprs!5961 (h!70855 zl!343)))) lt!2332226)))

(declare-fun b!6133761 () Bool)

(declare-fun e!3738475 () Regex!16077)

(assert (=> b!6133761 (= e!3738473 e!3738475)))

(declare-fun c!1102878 () Bool)

(assert (=> b!6133761 (= c!1102878 ((_ is Cons!64406) (t!378001 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6133762 () Bool)

(declare-fun e!3738477 () Bool)

(assert (=> b!6133762 (= e!3738477 (= lt!2332226 (head!12675 (t!378001 (exprs!5961 (h!70855 zl!343))))))))

(declare-fun b!6133763 () Bool)

(declare-fun e!3738472 () Bool)

(assert (=> b!6133763 (= e!3738472 (isEmptyExpr!1494 lt!2332226))))

(declare-fun b!6133764 () Bool)

(assert (=> b!6133764 (= e!3738474 (isEmpty!36348 (t!378001 (t!378001 (exprs!5961 (h!70855 zl!343))))))))

(declare-fun b!6133765 () Bool)

(assert (=> b!6133765 (= e!3738475 (Concat!24922 (h!70854 (t!378001 (exprs!5961 (h!70855 zl!343)))) (generalisedConcat!1674 (t!378001 (t!378001 (exprs!5961 (h!70855 zl!343)))))))))

(declare-fun b!6133766 () Bool)

(assert (=> b!6133766 (= e!3738472 e!3738477)))

(declare-fun c!1102879 () Bool)

(assert (=> b!6133766 (= c!1102879 (isEmpty!36348 (tail!11760 (t!378001 (exprs!5961 (h!70855 zl!343))))))))

(declare-fun b!6133767 () Bool)

(assert (=> b!6133767 (= e!3738476 e!3738472)))

(declare-fun c!1102877 () Bool)

(assert (=> b!6133767 (= c!1102877 (isEmpty!36348 (t!378001 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6133768 () Bool)

(assert (=> b!6133768 (= e!3738475 EmptyExpr!16077)))

(declare-fun b!6133769 () Bool)

(assert (=> b!6133769 (= e!3738477 (isConcat!1017 lt!2332226))))

(assert (= (and d!1921764 res!2541951) b!6133764))

(assert (= (and d!1921764 c!1102876) b!6133760))

(assert (= (and d!1921764 (not c!1102876)) b!6133761))

(assert (= (and b!6133761 c!1102878) b!6133765))

(assert (= (and b!6133761 (not c!1102878)) b!6133768))

(assert (= (and d!1921764 res!2541952) b!6133767))

(assert (= (and b!6133767 c!1102877) b!6133763))

(assert (= (and b!6133767 (not c!1102877)) b!6133766))

(assert (= (and b!6133766 c!1102879) b!6133762))

(assert (= (and b!6133766 (not c!1102879)) b!6133769))

(declare-fun m!6976658 () Bool)

(assert (=> b!6133762 m!6976658))

(declare-fun m!6976660 () Bool)

(assert (=> b!6133765 m!6976660))

(assert (=> b!6133767 m!6975646))

(declare-fun m!6976662 () Bool)

(assert (=> b!6133764 m!6976662))

(declare-fun m!6976664 () Bool)

(assert (=> d!1921764 m!6976664))

(declare-fun m!6976666 () Bool)

(assert (=> d!1921764 m!6976666))

(declare-fun m!6976668 () Bool)

(assert (=> b!6133763 m!6976668))

(declare-fun m!6976670 () Bool)

(assert (=> b!6133769 m!6976670))

(declare-fun m!6976672 () Bool)

(assert (=> b!6133766 m!6976672))

(assert (=> b!6133766 m!6976672))

(declare-fun m!6976674 () Bool)

(assert (=> b!6133766 m!6976674))

(assert (=> b!6133106 d!1921764))

(declare-fun d!1921766 () Bool)

(declare-fun res!2541957 () Bool)

(declare-fun e!3738482 () Bool)

(assert (=> d!1921766 (=> res!2541957 e!3738482)))

(assert (=> d!1921766 (= res!2541957 ((_ is Nil!64406) (exprs!5961 (Context!10923 (Cons!64406 (regTwo!32667 (regOne!32666 r!7292)) (t!378001 (exprs!5961 (h!70855 zl!343))))))))))

(assert (=> d!1921766 (= (forall!15198 (exprs!5961 (Context!10923 (Cons!64406 (regTwo!32667 (regOne!32666 r!7292)) (t!378001 (exprs!5961 (h!70855 zl!343)))))) lambda!334157) e!3738482)))

(declare-fun b!6133774 () Bool)

(declare-fun e!3738483 () Bool)

(assert (=> b!6133774 (= e!3738482 e!3738483)))

(declare-fun res!2541958 () Bool)

(assert (=> b!6133774 (=> (not res!2541958) (not e!3738483))))

(declare-fun dynLambda!25376 (Int Regex!16077) Bool)

(assert (=> b!6133774 (= res!2541958 (dynLambda!25376 lambda!334157 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (regTwo!32667 (regOne!32666 r!7292)) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))))

(declare-fun b!6133775 () Bool)

(assert (=> b!6133775 (= e!3738483 (forall!15198 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (regTwo!32667 (regOne!32666 r!7292)) (t!378001 (exprs!5961 (h!70855 zl!343))))))) lambda!334157))))

(assert (= (and d!1921766 (not res!2541957)) b!6133774))

(assert (= (and b!6133774 res!2541958) b!6133775))

(declare-fun b_lambda!233479 () Bool)

(assert (=> (not b_lambda!233479) (not b!6133774)))

(declare-fun m!6976676 () Bool)

(assert (=> b!6133774 m!6976676))

(declare-fun m!6976678 () Bool)

(assert (=> b!6133775 m!6976678))

(assert (=> d!1921474 d!1921766))

(declare-fun d!1921768 () Bool)

(declare-fun e!3738485 () Bool)

(assert (=> d!1921768 e!3738485))

(declare-fun c!1102882 () Bool)

(assert (=> d!1921768 (= c!1102882 ((_ is EmptyExpr!16077) (regTwo!32666 r!7292)))))

(declare-fun lt!2332227 () Bool)

(declare-fun e!3738490 () Bool)

(assert (=> d!1921768 (= lt!2332227 e!3738490)))

(declare-fun c!1102880 () Bool)

(assert (=> d!1921768 (= c!1102880 (isEmpty!36353 s!2326))))

(assert (=> d!1921768 (validRegex!7813 (regTwo!32666 r!7292))))

(assert (=> d!1921768 (= (matchR!8260 (regTwo!32666 r!7292) s!2326) lt!2332227)))

(declare-fun b!6133776 () Bool)

(declare-fun e!3738487 () Bool)

(assert (=> b!6133776 (= e!3738487 (not (= (head!12676 s!2326) (c!1102519 (regTwo!32666 r!7292)))))))

(declare-fun b!6133777 () Bool)

(declare-fun e!3738489 () Bool)

(declare-fun e!3738488 () Bool)

(assert (=> b!6133777 (= e!3738489 e!3738488)))

(declare-fun res!2541961 () Bool)

(assert (=> b!6133777 (=> (not res!2541961) (not e!3738488))))

(assert (=> b!6133777 (= res!2541961 (not lt!2332227))))

(declare-fun b!6133778 () Bool)

(declare-fun res!2541959 () Bool)

(assert (=> b!6133778 (=> res!2541959 e!3738489)))

(declare-fun e!3738486 () Bool)

(assert (=> b!6133778 (= res!2541959 e!3738486)))

(declare-fun res!2541966 () Bool)

(assert (=> b!6133778 (=> (not res!2541966) (not e!3738486))))

(assert (=> b!6133778 (= res!2541966 lt!2332227)))

(declare-fun b!6133779 () Bool)

(declare-fun res!2541962 () Bool)

(assert (=> b!6133779 (=> res!2541962 e!3738487)))

(assert (=> b!6133779 (= res!2541962 (not (isEmpty!36353 (tail!11761 s!2326))))))

(declare-fun b!6133780 () Bool)

(declare-fun res!2541964 () Bool)

(assert (=> b!6133780 (=> res!2541964 e!3738489)))

(assert (=> b!6133780 (= res!2541964 (not ((_ is ElementMatch!16077) (regTwo!32666 r!7292))))))

(declare-fun e!3738484 () Bool)

(assert (=> b!6133780 (= e!3738484 e!3738489)))

(declare-fun b!6133781 () Bool)

(assert (=> b!6133781 (= e!3738485 e!3738484)))

(declare-fun c!1102881 () Bool)

(assert (=> b!6133781 (= c!1102881 ((_ is EmptyLang!16077) (regTwo!32666 r!7292)))))

(declare-fun b!6133782 () Bool)

(assert (=> b!6133782 (= e!3738490 (nullable!6070 (regTwo!32666 r!7292)))))

(declare-fun b!6133783 () Bool)

(declare-fun res!2541965 () Bool)

(assert (=> b!6133783 (=> (not res!2541965) (not e!3738486))))

(assert (=> b!6133783 (= res!2541965 (isEmpty!36353 (tail!11761 s!2326)))))

(declare-fun b!6133784 () Bool)

(assert (=> b!6133784 (= e!3738490 (matchR!8260 (derivativeStep!4797 (regTwo!32666 r!7292) (head!12676 s!2326)) (tail!11761 s!2326)))))

(declare-fun b!6133785 () Bool)

(assert (=> b!6133785 (= e!3738488 e!3738487)))

(declare-fun res!2541960 () Bool)

(assert (=> b!6133785 (=> res!2541960 e!3738487)))

(declare-fun call!508885 () Bool)

(assert (=> b!6133785 (= res!2541960 call!508885)))

(declare-fun b!6133786 () Bool)

(assert (=> b!6133786 (= e!3738485 (= lt!2332227 call!508885))))

(declare-fun bm!508880 () Bool)

(assert (=> bm!508880 (= call!508885 (isEmpty!36353 s!2326))))

(declare-fun b!6133787 () Bool)

(declare-fun res!2541963 () Bool)

(assert (=> b!6133787 (=> (not res!2541963) (not e!3738486))))

(assert (=> b!6133787 (= res!2541963 (not call!508885))))

(declare-fun b!6133788 () Bool)

(assert (=> b!6133788 (= e!3738484 (not lt!2332227))))

(declare-fun b!6133789 () Bool)

(assert (=> b!6133789 (= e!3738486 (= (head!12676 s!2326) (c!1102519 (regTwo!32666 r!7292))))))

(assert (= (and d!1921768 c!1102880) b!6133782))

(assert (= (and d!1921768 (not c!1102880)) b!6133784))

(assert (= (and d!1921768 c!1102882) b!6133786))

(assert (= (and d!1921768 (not c!1102882)) b!6133781))

(assert (= (and b!6133781 c!1102881) b!6133788))

(assert (= (and b!6133781 (not c!1102881)) b!6133780))

(assert (= (and b!6133780 (not res!2541964)) b!6133778))

(assert (= (and b!6133778 res!2541966) b!6133787))

(assert (= (and b!6133787 res!2541963) b!6133783))

(assert (= (and b!6133783 res!2541965) b!6133789))

(assert (= (and b!6133778 (not res!2541959)) b!6133777))

(assert (= (and b!6133777 res!2541961) b!6133785))

(assert (= (and b!6133785 (not res!2541960)) b!6133779))

(assert (= (and b!6133779 (not res!2541962)) b!6133776))

(assert (= (or b!6133786 b!6133785 b!6133787) bm!508880))

(assert (=> b!6133784 m!6976008))

(assert (=> b!6133784 m!6976008))

(declare-fun m!6976680 () Bool)

(assert (=> b!6133784 m!6976680))

(assert (=> b!6133784 m!6976012))

(assert (=> b!6133784 m!6976680))

(assert (=> b!6133784 m!6976012))

(declare-fun m!6976682 () Bool)

(assert (=> b!6133784 m!6976682))

(assert (=> b!6133783 m!6976012))

(assert (=> b!6133783 m!6976012))

(assert (=> b!6133783 m!6976016))

(assert (=> b!6133776 m!6976008))

(assert (=> b!6133789 m!6976008))

(assert (=> b!6133782 m!6976608))

(assert (=> bm!508880 m!6976006))

(assert (=> b!6133779 m!6976012))

(assert (=> b!6133779 m!6976012))

(assert (=> b!6133779 m!6976016))

(assert (=> d!1921768 m!6976006))

(assert (=> d!1921768 m!6976612))

(assert (=> b!6132940 d!1921768))

(declare-fun bs!1521343 () Bool)

(declare-fun d!1921770 () Bool)

(assert (= bs!1521343 (and d!1921770 d!1921748)))

(declare-fun lambda!334205 () Int)

(assert (=> bs!1521343 (= lambda!334205 lambda!334201)))

(declare-fun bs!1521344 () Bool)

(assert (= bs!1521344 (and d!1921770 d!1921750)))

(assert (=> bs!1521344 (= lambda!334205 lambda!334202)))

(assert (=> d!1921770 (= (nullableZipper!1858 ((_ map or) lt!2332102 lt!2332103)) (exists!2424 ((_ map or) lt!2332102 lt!2332103) lambda!334205))))

(declare-fun bs!1521345 () Bool)

(assert (= bs!1521345 d!1921770))

(declare-fun m!6976684 () Bool)

(assert (=> bs!1521345 m!6976684))

(assert (=> b!6133048 d!1921770))

(declare-fun d!1921772 () Bool)

(assert (=> d!1921772 true))

(declare-fun setRes!41469 () Bool)

(assert (=> d!1921772 setRes!41469))

(declare-fun condSetEmpty!41469 () Bool)

(declare-fun res!2541969 () (InoxSet Context!10922))

(assert (=> d!1921772 (= condSetEmpty!41469 (= res!2541969 ((as const (Array Context!10922 Bool)) false)))))

(assert (=> d!1921772 (= (choose!45566 z!1189 lambda!334103) res!2541969)))

(declare-fun setIsEmpty!41469 () Bool)

(assert (=> setIsEmpty!41469 setRes!41469))

(declare-fun setNonEmpty!41469 () Bool)

(declare-fun tp!1714027 () Bool)

(declare-fun setElem!41469 () Context!10922)

(declare-fun e!3738493 () Bool)

(assert (=> setNonEmpty!41469 (= setRes!41469 (and tp!1714027 (inv!83439 setElem!41469) e!3738493))))

(declare-fun setRest!41469 () (InoxSet Context!10922))

(assert (=> setNonEmpty!41469 (= res!2541969 ((_ map or) (store ((as const (Array Context!10922 Bool)) false) setElem!41469 true) setRest!41469))))

(declare-fun b!6133792 () Bool)

(declare-fun tp!1714028 () Bool)

(assert (=> b!6133792 (= e!3738493 tp!1714028)))

(assert (= (and d!1921772 condSetEmpty!41469) setIsEmpty!41469))

(assert (= (and d!1921772 (not condSetEmpty!41469)) setNonEmpty!41469))

(assert (= setNonEmpty!41469 b!6133792))

(declare-fun m!6976686 () Bool)

(assert (=> setNonEmpty!41469 m!6976686))

(assert (=> d!1921414 d!1921772))

(declare-fun d!1921774 () Bool)

(assert (=> d!1921774 (= (nullable!6070 (h!70854 (exprs!5961 lt!2332109))) (nullableFct!2034 (h!70854 (exprs!5961 lt!2332109))))))

(declare-fun bs!1521346 () Bool)

(assert (= bs!1521346 d!1921774))

(declare-fun m!6976688 () Bool)

(assert (=> bs!1521346 m!6976688))

(assert (=> b!6132776 d!1921774))

(declare-fun d!1921776 () Bool)

(assert (=> d!1921776 (= (isEmpty!36348 (t!378001 (unfocusZipperList!1498 zl!343))) ((_ is Nil!64406) (t!378001 (unfocusZipperList!1498 zl!343))))))

(assert (=> b!6132745 d!1921776))

(declare-fun b!6133793 () Bool)

(declare-fun e!3738498 () Bool)

(declare-fun e!3738494 () Bool)

(assert (=> b!6133793 (= e!3738498 e!3738494)))

(declare-fun res!2541971 () Bool)

(assert (=> b!6133793 (=> (not res!2541971) (not e!3738494))))

(declare-fun call!508886 () Bool)

(assert (=> b!6133793 (= res!2541971 call!508886)))

(declare-fun bm!508881 () Bool)

(declare-fun c!1102883 () Bool)

(assert (=> bm!508881 (= call!508886 (validRegex!7813 (ite c!1102883 (regOne!32667 lt!2332155) (regOne!32666 lt!2332155))))))

(declare-fun b!6133794 () Bool)

(declare-fun res!2541973 () Bool)

(declare-fun e!3738500 () Bool)

(assert (=> b!6133794 (=> (not res!2541973) (not e!3738500))))

(assert (=> b!6133794 (= res!2541973 call!508886)))

(declare-fun e!3738499 () Bool)

(assert (=> b!6133794 (= e!3738499 e!3738500)))

(declare-fun b!6133795 () Bool)

(declare-fun e!3738497 () Bool)

(declare-fun call!508887 () Bool)

(assert (=> b!6133795 (= e!3738497 call!508887)))

(declare-fun bm!508882 () Bool)

(declare-fun c!1102884 () Bool)

(assert (=> bm!508882 (= call!508887 (validRegex!7813 (ite c!1102884 (reg!16406 lt!2332155) (ite c!1102883 (regTwo!32667 lt!2332155) (regTwo!32666 lt!2332155)))))))

(declare-fun d!1921778 () Bool)

(declare-fun res!2541972 () Bool)

(declare-fun e!3738495 () Bool)

(assert (=> d!1921778 (=> res!2541972 e!3738495)))

(assert (=> d!1921778 (= res!2541972 ((_ is ElementMatch!16077) lt!2332155))))

(assert (=> d!1921778 (= (validRegex!7813 lt!2332155) e!3738495)))

(declare-fun b!6133796 () Bool)

(declare-fun call!508888 () Bool)

(assert (=> b!6133796 (= e!3738494 call!508888)))

(declare-fun b!6133797 () Bool)

(declare-fun res!2541970 () Bool)

(assert (=> b!6133797 (=> res!2541970 e!3738498)))

(assert (=> b!6133797 (= res!2541970 (not ((_ is Concat!24922) lt!2332155)))))

(assert (=> b!6133797 (= e!3738499 e!3738498)))

(declare-fun b!6133798 () Bool)

(declare-fun e!3738496 () Bool)

(assert (=> b!6133798 (= e!3738496 e!3738497)))

(declare-fun res!2541974 () Bool)

(assert (=> b!6133798 (= res!2541974 (not (nullable!6070 (reg!16406 lt!2332155))))))

(assert (=> b!6133798 (=> (not res!2541974) (not e!3738497))))

(declare-fun b!6133799 () Bool)

(assert (=> b!6133799 (= e!3738496 e!3738499)))

(assert (=> b!6133799 (= c!1102883 ((_ is Union!16077) lt!2332155))))

(declare-fun bm!508883 () Bool)

(assert (=> bm!508883 (= call!508888 call!508887)))

(declare-fun b!6133800 () Bool)

(assert (=> b!6133800 (= e!3738495 e!3738496)))

(assert (=> b!6133800 (= c!1102884 ((_ is Star!16077) lt!2332155))))

(declare-fun b!6133801 () Bool)

(assert (=> b!6133801 (= e!3738500 call!508888)))

(assert (= (and d!1921778 (not res!2541972)) b!6133800))

(assert (= (and b!6133800 c!1102884) b!6133798))

(assert (= (and b!6133800 (not c!1102884)) b!6133799))

(assert (= (and b!6133798 res!2541974) b!6133795))

(assert (= (and b!6133799 c!1102883) b!6133794))

(assert (= (and b!6133799 (not c!1102883)) b!6133797))

(assert (= (and b!6133794 res!2541973) b!6133801))

(assert (= (and b!6133797 (not res!2541970)) b!6133793))

(assert (= (and b!6133793 res!2541971) b!6133796))

(assert (= (or b!6133801 b!6133796) bm!508883))

(assert (= (or b!6133794 b!6133793) bm!508881))

(assert (= (or b!6133795 bm!508883) bm!508882))

(declare-fun m!6976690 () Bool)

(assert (=> bm!508881 m!6976690))

(declare-fun m!6976692 () Bool)

(assert (=> bm!508882 m!6976692))

(declare-fun m!6976694 () Bool)

(assert (=> b!6133798 m!6976694))

(assert (=> d!1921396 d!1921778))

(declare-fun d!1921780 () Bool)

(declare-fun res!2541975 () Bool)

(declare-fun e!3738501 () Bool)

(assert (=> d!1921780 (=> res!2541975 e!3738501)))

(assert (=> d!1921780 (= res!2541975 ((_ is Nil!64406) (unfocusZipperList!1498 zl!343)))))

(assert (=> d!1921780 (= (forall!15198 (unfocusZipperList!1498 zl!343) lambda!334125) e!3738501)))

(declare-fun b!6133802 () Bool)

(declare-fun e!3738502 () Bool)

(assert (=> b!6133802 (= e!3738501 e!3738502)))

(declare-fun res!2541976 () Bool)

(assert (=> b!6133802 (=> (not res!2541976) (not e!3738502))))

(assert (=> b!6133802 (= res!2541976 (dynLambda!25376 lambda!334125 (h!70854 (unfocusZipperList!1498 zl!343))))))

(declare-fun b!6133803 () Bool)

(assert (=> b!6133803 (= e!3738502 (forall!15198 (t!378001 (unfocusZipperList!1498 zl!343)) lambda!334125))))

(assert (= (and d!1921780 (not res!2541975)) b!6133802))

(assert (= (and b!6133802 res!2541976) b!6133803))

(declare-fun b_lambda!233481 () Bool)

(assert (=> (not b_lambda!233481) (not b!6133802)))

(declare-fun m!6976696 () Bool)

(assert (=> b!6133802 m!6976696))

(declare-fun m!6976698 () Bool)

(assert (=> b!6133803 m!6976698))

(assert (=> d!1921396 d!1921780))

(assert (=> b!6133115 d!1921472))

(declare-fun d!1921782 () Bool)

(assert (=> d!1921782 (= (isDefined!12671 lt!2332178) (not (isEmpty!36352 lt!2332178)))))

(declare-fun bs!1521347 () Bool)

(assert (= bs!1521347 d!1921782))

(declare-fun m!6976700 () Bool)

(assert (=> bs!1521347 m!6976700))

(assert (=> b!6132934 d!1921782))

(declare-fun d!1921784 () Bool)

(declare-fun e!3738504 () Bool)

(assert (=> d!1921784 e!3738504))

(declare-fun c!1102887 () Bool)

(assert (=> d!1921784 (= c!1102887 ((_ is EmptyExpr!16077) (regOne!32666 r!7292)))))

(declare-fun lt!2332228 () Bool)

(declare-fun e!3738509 () Bool)

(assert (=> d!1921784 (= lt!2332228 e!3738509)))

(declare-fun c!1102885 () Bool)

(assert (=> d!1921784 (= c!1102885 (isEmpty!36353 (_1!36359 (get!22217 lt!2332178))))))

(assert (=> d!1921784 (validRegex!7813 (regOne!32666 r!7292))))

(assert (=> d!1921784 (= (matchR!8260 (regOne!32666 r!7292) (_1!36359 (get!22217 lt!2332178))) lt!2332228)))

(declare-fun b!6133804 () Bool)

(declare-fun e!3738506 () Bool)

(assert (=> b!6133804 (= e!3738506 (not (= (head!12676 (_1!36359 (get!22217 lt!2332178))) (c!1102519 (regOne!32666 r!7292)))))))

(declare-fun b!6133805 () Bool)

(declare-fun e!3738508 () Bool)

(declare-fun e!3738507 () Bool)

(assert (=> b!6133805 (= e!3738508 e!3738507)))

(declare-fun res!2541979 () Bool)

(assert (=> b!6133805 (=> (not res!2541979) (not e!3738507))))

(assert (=> b!6133805 (= res!2541979 (not lt!2332228))))

(declare-fun b!6133806 () Bool)

(declare-fun res!2541977 () Bool)

(assert (=> b!6133806 (=> res!2541977 e!3738508)))

(declare-fun e!3738505 () Bool)

(assert (=> b!6133806 (= res!2541977 e!3738505)))

(declare-fun res!2541984 () Bool)

(assert (=> b!6133806 (=> (not res!2541984) (not e!3738505))))

(assert (=> b!6133806 (= res!2541984 lt!2332228)))

(declare-fun b!6133807 () Bool)

(declare-fun res!2541980 () Bool)

(assert (=> b!6133807 (=> res!2541980 e!3738506)))

(assert (=> b!6133807 (= res!2541980 (not (isEmpty!36353 (tail!11761 (_1!36359 (get!22217 lt!2332178))))))))

(declare-fun b!6133808 () Bool)

(declare-fun res!2541982 () Bool)

(assert (=> b!6133808 (=> res!2541982 e!3738508)))

(assert (=> b!6133808 (= res!2541982 (not ((_ is ElementMatch!16077) (regOne!32666 r!7292))))))

(declare-fun e!3738503 () Bool)

(assert (=> b!6133808 (= e!3738503 e!3738508)))

(declare-fun b!6133809 () Bool)

(assert (=> b!6133809 (= e!3738504 e!3738503)))

(declare-fun c!1102886 () Bool)

(assert (=> b!6133809 (= c!1102886 ((_ is EmptyLang!16077) (regOne!32666 r!7292)))))

(declare-fun b!6133810 () Bool)

(assert (=> b!6133810 (= e!3738509 (nullable!6070 (regOne!32666 r!7292)))))

(declare-fun b!6133811 () Bool)

(declare-fun res!2541983 () Bool)

(assert (=> b!6133811 (=> (not res!2541983) (not e!3738505))))

(assert (=> b!6133811 (= res!2541983 (isEmpty!36353 (tail!11761 (_1!36359 (get!22217 lt!2332178)))))))

(declare-fun b!6133812 () Bool)

(assert (=> b!6133812 (= e!3738509 (matchR!8260 (derivativeStep!4797 (regOne!32666 r!7292) (head!12676 (_1!36359 (get!22217 lt!2332178)))) (tail!11761 (_1!36359 (get!22217 lt!2332178)))))))

(declare-fun b!6133813 () Bool)

(assert (=> b!6133813 (= e!3738507 e!3738506)))

(declare-fun res!2541978 () Bool)

(assert (=> b!6133813 (=> res!2541978 e!3738506)))

(declare-fun call!508889 () Bool)

(assert (=> b!6133813 (= res!2541978 call!508889)))

(declare-fun b!6133814 () Bool)

(assert (=> b!6133814 (= e!3738504 (= lt!2332228 call!508889))))

(declare-fun bm!508884 () Bool)

(assert (=> bm!508884 (= call!508889 (isEmpty!36353 (_1!36359 (get!22217 lt!2332178))))))

(declare-fun b!6133815 () Bool)

(declare-fun res!2541981 () Bool)

(assert (=> b!6133815 (=> (not res!2541981) (not e!3738505))))

(assert (=> b!6133815 (= res!2541981 (not call!508889))))

(declare-fun b!6133816 () Bool)

(assert (=> b!6133816 (= e!3738503 (not lt!2332228))))

(declare-fun b!6133817 () Bool)

(assert (=> b!6133817 (= e!3738505 (= (head!12676 (_1!36359 (get!22217 lt!2332178))) (c!1102519 (regOne!32666 r!7292))))))

(assert (= (and d!1921784 c!1102885) b!6133810))

(assert (= (and d!1921784 (not c!1102885)) b!6133812))

(assert (= (and d!1921784 c!1102887) b!6133814))

(assert (= (and d!1921784 (not c!1102887)) b!6133809))

(assert (= (and b!6133809 c!1102886) b!6133816))

(assert (= (and b!6133809 (not c!1102886)) b!6133808))

(assert (= (and b!6133808 (not res!2541982)) b!6133806))

(assert (= (and b!6133806 res!2541984) b!6133815))

(assert (= (and b!6133815 res!2541981) b!6133811))

(assert (= (and b!6133811 res!2541983) b!6133817))

(assert (= (and b!6133806 (not res!2541977)) b!6133805))

(assert (= (and b!6133805 res!2541979) b!6133813))

(assert (= (and b!6133813 (not res!2541978)) b!6133807))

(assert (= (and b!6133807 (not res!2541980)) b!6133804))

(assert (= (or b!6133814 b!6133813 b!6133815) bm!508884))

(declare-fun m!6976702 () Bool)

(assert (=> b!6133812 m!6976702))

(assert (=> b!6133812 m!6976702))

(declare-fun m!6976704 () Bool)

(assert (=> b!6133812 m!6976704))

(declare-fun m!6976706 () Bool)

(assert (=> b!6133812 m!6976706))

(assert (=> b!6133812 m!6976704))

(assert (=> b!6133812 m!6976706))

(declare-fun m!6976708 () Bool)

(assert (=> b!6133812 m!6976708))

(assert (=> b!6133811 m!6976706))

(assert (=> b!6133811 m!6976706))

(declare-fun m!6976710 () Bool)

(assert (=> b!6133811 m!6976710))

(assert (=> b!6133804 m!6976702))

(assert (=> b!6133817 m!6976702))

(declare-fun m!6976712 () Bool)

(assert (=> b!6133810 m!6976712))

(declare-fun m!6976714 () Bool)

(assert (=> bm!508884 m!6976714))

(assert (=> b!6133807 m!6976706))

(assert (=> b!6133807 m!6976706))

(assert (=> b!6133807 m!6976710))

(assert (=> d!1921784 m!6976714))

(assert (=> d!1921784 m!6975968))

(assert (=> b!6132938 d!1921784))

(assert (=> b!6132938 d!1921730))

(assert (=> d!1921448 d!1921440))

(declare-fun b!6133818 () Bool)

(declare-fun e!3738514 () Bool)

(declare-fun e!3738510 () Bool)

(assert (=> b!6133818 (= e!3738514 e!3738510)))

(declare-fun res!2541986 () Bool)

(assert (=> b!6133818 (=> (not res!2541986) (not e!3738510))))

(declare-fun call!508890 () Bool)

(assert (=> b!6133818 (= res!2541986 call!508890)))

(declare-fun bm!508885 () Bool)

(declare-fun c!1102888 () Bool)

(assert (=> bm!508885 (= call!508890 (validRegex!7813 (ite c!1102888 (regOne!32667 (regOne!32666 r!7292)) (regOne!32666 (regOne!32666 r!7292)))))))

(declare-fun b!6133819 () Bool)

(declare-fun res!2541988 () Bool)

(declare-fun e!3738516 () Bool)

(assert (=> b!6133819 (=> (not res!2541988) (not e!3738516))))

(assert (=> b!6133819 (= res!2541988 call!508890)))

(declare-fun e!3738515 () Bool)

(assert (=> b!6133819 (= e!3738515 e!3738516)))

(declare-fun b!6133820 () Bool)

(declare-fun e!3738513 () Bool)

(declare-fun call!508891 () Bool)

(assert (=> b!6133820 (= e!3738513 call!508891)))

(declare-fun bm!508886 () Bool)

(declare-fun c!1102889 () Bool)

(assert (=> bm!508886 (= call!508891 (validRegex!7813 (ite c!1102889 (reg!16406 (regOne!32666 r!7292)) (ite c!1102888 (regTwo!32667 (regOne!32666 r!7292)) (regTwo!32666 (regOne!32666 r!7292))))))))

(declare-fun d!1921786 () Bool)

(declare-fun res!2541987 () Bool)

(declare-fun e!3738511 () Bool)

(assert (=> d!1921786 (=> res!2541987 e!3738511)))

(assert (=> d!1921786 (= res!2541987 ((_ is ElementMatch!16077) (regOne!32666 r!7292)))))

(assert (=> d!1921786 (= (validRegex!7813 (regOne!32666 r!7292)) e!3738511)))

(declare-fun b!6133821 () Bool)

(declare-fun call!508892 () Bool)

(assert (=> b!6133821 (= e!3738510 call!508892)))

(declare-fun b!6133822 () Bool)

(declare-fun res!2541985 () Bool)

(assert (=> b!6133822 (=> res!2541985 e!3738514)))

(assert (=> b!6133822 (= res!2541985 (not ((_ is Concat!24922) (regOne!32666 r!7292))))))

(assert (=> b!6133822 (= e!3738515 e!3738514)))

(declare-fun b!6133823 () Bool)

(declare-fun e!3738512 () Bool)

(assert (=> b!6133823 (= e!3738512 e!3738513)))

(declare-fun res!2541989 () Bool)

(assert (=> b!6133823 (= res!2541989 (not (nullable!6070 (reg!16406 (regOne!32666 r!7292)))))))

(assert (=> b!6133823 (=> (not res!2541989) (not e!3738513))))

(declare-fun b!6133824 () Bool)

(assert (=> b!6133824 (= e!3738512 e!3738515)))

(assert (=> b!6133824 (= c!1102888 ((_ is Union!16077) (regOne!32666 r!7292)))))

(declare-fun bm!508887 () Bool)

(assert (=> bm!508887 (= call!508892 call!508891)))

(declare-fun b!6133825 () Bool)

(assert (=> b!6133825 (= e!3738511 e!3738512)))

(assert (=> b!6133825 (= c!1102889 ((_ is Star!16077) (regOne!32666 r!7292)))))

(declare-fun b!6133826 () Bool)

(assert (=> b!6133826 (= e!3738516 call!508892)))

(assert (= (and d!1921786 (not res!2541987)) b!6133825))

(assert (= (and b!6133825 c!1102889) b!6133823))

(assert (= (and b!6133825 (not c!1102889)) b!6133824))

(assert (= (and b!6133823 res!2541989) b!6133820))

(assert (= (and b!6133824 c!1102888) b!6133819))

(assert (= (and b!6133824 (not c!1102888)) b!6133822))

(assert (= (and b!6133819 res!2541988) b!6133826))

(assert (= (and b!6133822 (not res!2541985)) b!6133818))

(assert (= (and b!6133818 res!2541986) b!6133821))

(assert (= (or b!6133826 b!6133821) bm!508887))

(assert (= (or b!6133819 b!6133818) bm!508885))

(assert (= (or b!6133820 bm!508887) bm!508886))

(declare-fun m!6976716 () Bool)

(assert (=> bm!508885 m!6976716))

(declare-fun m!6976718 () Bool)

(assert (=> bm!508886 m!6976718))

(declare-fun m!6976720 () Bool)

(assert (=> b!6133823 m!6976720))

(assert (=> d!1921448 d!1921786))

(assert (=> d!1921448 d!1921452))

(declare-fun bs!1521348 () Bool)

(declare-fun d!1921788 () Bool)

(assert (= bs!1521348 (and d!1921788 d!1921450)))

(declare-fun lambda!334208 () Int)

(assert (=> bs!1521348 (= lambda!334208 lambda!334146)))

(declare-fun bs!1521349 () Bool)

(assert (= bs!1521349 (and d!1921788 d!1921448)))

(assert (=> bs!1521349 (= lambda!334208 lambda!334141)))

(declare-fun bs!1521350 () Bool)

(assert (= bs!1521350 (and d!1921788 b!6132988)))

(assert (=> bs!1521350 (not (= lambda!334208 lambda!334155))))

(declare-fun bs!1521351 () Bool)

(assert (= bs!1521351 (and d!1921788 b!6132400)))

(assert (=> bs!1521351 (not (= lambda!334208 lambda!334102))))

(declare-fun bs!1521352 () Bool)

(assert (= bs!1521352 (and d!1921788 b!6132995)))

(assert (=> bs!1521352 (not (= lambda!334208 lambda!334156))))

(assert (=> bs!1521351 (= lambda!334208 lambda!334101)))

(assert (=> bs!1521348 (not (= lambda!334208 lambda!334147))))

(assert (=> d!1921788 true))

(assert (=> d!1921788 true))

(assert (=> d!1921788 true))

(assert (=> d!1921788 (= (isDefined!12671 (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) Nil!64408 s!2326 s!2326)) (Exists!3147 lambda!334208))))

(assert (=> d!1921788 true))

(declare-fun _$89!2212 () Unit!157463)

(assert (=> d!1921788 (= (choose!45572 (regOne!32666 r!7292) (regTwo!32666 r!7292) s!2326) _$89!2212)))

(declare-fun bs!1521353 () Bool)

(assert (= bs!1521353 d!1921788))

(assert (=> bs!1521353 m!6975616))

(assert (=> bs!1521353 m!6975616))

(assert (=> bs!1521353 m!6975618))

(declare-fun m!6976722 () Bool)

(assert (=> bs!1521353 m!6976722))

(assert (=> d!1921448 d!1921788))

(declare-fun d!1921790 () Bool)

(assert (=> d!1921790 (= (Exists!3147 lambda!334141) (choose!45571 lambda!334141))))

(declare-fun bs!1521354 () Bool)

(assert (= bs!1521354 d!1921790))

(declare-fun m!6976724 () Bool)

(assert (=> bs!1521354 m!6976724))

(assert (=> d!1921448 d!1921790))

(declare-fun d!1921792 () Bool)

(assert (=> d!1921792 (= (nullable!6070 (regOne!32666 (regOne!32667 (regOne!32666 r!7292)))) (nullableFct!2034 (regOne!32666 (regOne!32667 (regOne!32666 r!7292)))))))

(declare-fun bs!1521355 () Bool)

(assert (= bs!1521355 d!1921792))

(declare-fun m!6976726 () Bool)

(assert (=> bs!1521355 m!6976726))

(assert (=> b!6132894 d!1921792))

(declare-fun d!1921794 () Bool)

(declare-fun c!1102890 () Bool)

(assert (=> d!1921794 (= c!1102890 (isEmpty!36353 (t!378003 s!2326)))))

(declare-fun e!3738519 () Bool)

(assert (=> d!1921794 (= (matchZipper!2089 ((_ map or) lt!2332115 lt!2332105) (t!378003 s!2326)) e!3738519)))

(declare-fun b!6133831 () Bool)

(assert (=> b!6133831 (= e!3738519 (nullableZipper!1858 ((_ map or) lt!2332115 lt!2332105)))))

(declare-fun b!6133832 () Bool)

(assert (=> b!6133832 (= e!3738519 (matchZipper!2089 (derivationStepZipper!2050 ((_ map or) lt!2332115 lt!2332105) (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))))))

(assert (= (and d!1921794 c!1102890) b!6133831))

(assert (= (and d!1921794 (not c!1102890)) b!6133832))

(assert (=> d!1921794 m!6976026))

(declare-fun m!6976728 () Bool)

(assert (=> b!6133831 m!6976728))

(assert (=> b!6133832 m!6976030))

(assert (=> b!6133832 m!6976030))

(declare-fun m!6976730 () Bool)

(assert (=> b!6133832 m!6976730))

(assert (=> b!6133832 m!6976034))

(assert (=> b!6133832 m!6976730))

(assert (=> b!6133832 m!6976034))

(declare-fun m!6976732 () Bool)

(assert (=> b!6133832 m!6976732))

(assert (=> d!1921486 d!1921794))

(assert (=> d!1921486 d!1921484))

(declare-fun d!1921796 () Bool)

(declare-fun e!3738522 () Bool)

(assert (=> d!1921796 (= (matchZipper!2089 ((_ map or) lt!2332115 lt!2332105) (t!378003 s!2326)) e!3738522)))

(declare-fun res!2541996 () Bool)

(assert (=> d!1921796 (=> res!2541996 e!3738522)))

(assert (=> d!1921796 (= res!2541996 (matchZipper!2089 lt!2332115 (t!378003 s!2326)))))

(assert (=> d!1921796 true))

(declare-fun _$48!1620 () Unit!157463)

(assert (=> d!1921796 (= (choose!45576 lt!2332115 lt!2332105 (t!378003 s!2326)) _$48!1620)))

(declare-fun b!6133835 () Bool)

(assert (=> b!6133835 (= e!3738522 (matchZipper!2089 lt!2332105 (t!378003 s!2326)))))

(assert (= (and d!1921796 (not res!2541996)) b!6133835))

(assert (=> d!1921796 m!6976094))

(assert (=> d!1921796 m!6975584))

(assert (=> b!6133835 m!6975594))

(assert (=> d!1921486 d!1921796))

(declare-fun bs!1521356 () Bool)

(declare-fun d!1921798 () Bool)

(assert (= bs!1521356 (and d!1921798 d!1921748)))

(declare-fun lambda!334209 () Int)

(assert (=> bs!1521356 (= lambda!334209 lambda!334201)))

(declare-fun bs!1521357 () Bool)

(assert (= bs!1521357 (and d!1921798 d!1921750)))

(assert (=> bs!1521357 (= lambda!334209 lambda!334202)))

(declare-fun bs!1521358 () Bool)

(assert (= bs!1521358 (and d!1921798 d!1921770)))

(assert (=> bs!1521358 (= lambda!334209 lambda!334205)))

(assert (=> d!1921798 (= (nullableZipper!1858 lt!2332104) (exists!2424 lt!2332104 lambda!334209))))

(declare-fun bs!1521359 () Bool)

(assert (= bs!1521359 d!1921798))

(declare-fun m!6976734 () Bool)

(assert (=> bs!1521359 m!6976734))

(assert (=> b!6133111 d!1921798))

(declare-fun d!1921800 () Bool)

(assert (=> d!1921800 (= (nullable!6070 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))) (nullableFct!2034 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))))))

(declare-fun bs!1521360 () Bool)

(assert (= bs!1521360 d!1921800))

(declare-fun m!6976736 () Bool)

(assert (=> bs!1521360 m!6976736))

(assert (=> b!6132833 d!1921800))

(declare-fun d!1921802 () Bool)

(declare-fun res!2541997 () Bool)

(declare-fun e!3738523 () Bool)

(assert (=> d!1921802 (=> res!2541997 e!3738523)))

(assert (=> d!1921802 (= res!2541997 ((_ is Nil!64406) (exprs!5961 (h!70855 zl!343))))))

(assert (=> d!1921802 (= (forall!15198 (exprs!5961 (h!70855 zl!343)) lambda!334150) e!3738523)))

(declare-fun b!6133836 () Bool)

(declare-fun e!3738524 () Bool)

(assert (=> b!6133836 (= e!3738523 e!3738524)))

(declare-fun res!2541998 () Bool)

(assert (=> b!6133836 (=> (not res!2541998) (not e!3738524))))

(assert (=> b!6133836 (= res!2541998 (dynLambda!25376 lambda!334150 (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6133837 () Bool)

(assert (=> b!6133837 (= e!3738524 (forall!15198 (t!378001 (exprs!5961 (h!70855 zl!343))) lambda!334150))))

(assert (= (and d!1921802 (not res!2541997)) b!6133836))

(assert (= (and b!6133836 res!2541998) b!6133837))

(declare-fun b_lambda!233483 () Bool)

(assert (=> (not b_lambda!233483) (not b!6133836)))

(declare-fun m!6976738 () Bool)

(assert (=> b!6133836 m!6976738))

(declare-fun m!6976740 () Bool)

(assert (=> b!6133837 m!6976740))

(assert (=> d!1921454 d!1921802))

(declare-fun d!1921804 () Bool)

(assert (=> d!1921804 (= (isEmpty!36352 (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) Nil!64408 s!2326 s!2326)) (not ((_ is Some!15967) (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) Nil!64408 s!2326 s!2326))))))

(assert (=> d!1921452 d!1921804))

(declare-fun bs!1521361 () Bool)

(declare-fun d!1921806 () Bool)

(assert (= bs!1521361 (and d!1921806 d!1921474)))

(declare-fun lambda!334210 () Int)

(assert (=> bs!1521361 (= lambda!334210 lambda!334157)))

(declare-fun bs!1521362 () Bool)

(assert (= bs!1521362 (and d!1921806 d!1921490)))

(assert (=> bs!1521362 (= lambda!334210 lambda!334161)))

(declare-fun bs!1521363 () Bool)

(assert (= bs!1521363 (and d!1921806 d!1921404)))

(assert (=> bs!1521363 (= lambda!334210 lambda!334128)))

(declare-fun bs!1521364 () Bool)

(assert (= bs!1521364 (and d!1921806 d!1921480)))

(assert (=> bs!1521364 (= lambda!334210 lambda!334160)))

(declare-fun bs!1521365 () Bool)

(assert (= bs!1521365 (and d!1921806 d!1921396)))

(assert (=> bs!1521365 (= lambda!334210 lambda!334125)))

(declare-fun bs!1521366 () Bool)

(assert (= bs!1521366 (and d!1921806 d!1921764)))

(assert (=> bs!1521366 (= lambda!334210 lambda!334204)))

(declare-fun bs!1521367 () Bool)

(assert (= bs!1521367 (and d!1921806 d!1921454)))

(assert (=> bs!1521367 (= lambda!334210 lambda!334150)))

(assert (=> d!1921806 (= (inv!83439 (h!70855 (t!378002 zl!343))) (forall!15198 (exprs!5961 (h!70855 (t!378002 zl!343))) lambda!334210))))

(declare-fun bs!1521368 () Bool)

(assert (= bs!1521368 d!1921806))

(declare-fun m!6976742 () Bool)

(assert (=> bs!1521368 m!6976742))

(assert (=> b!6133132 d!1921806))

(declare-fun d!1921808 () Bool)

(declare-fun e!3738526 () Bool)

(assert (=> d!1921808 e!3738526))

(declare-fun c!1102893 () Bool)

(assert (=> d!1921808 (= c!1102893 ((_ is EmptyExpr!16077) (derivativeStep!4797 r!7292 (head!12676 s!2326))))))

(declare-fun lt!2332229 () Bool)

(declare-fun e!3738531 () Bool)

(assert (=> d!1921808 (= lt!2332229 e!3738531)))

(declare-fun c!1102891 () Bool)

(assert (=> d!1921808 (= c!1102891 (isEmpty!36353 (tail!11761 s!2326)))))

(assert (=> d!1921808 (validRegex!7813 (derivativeStep!4797 r!7292 (head!12676 s!2326)))))

(assert (=> d!1921808 (= (matchR!8260 (derivativeStep!4797 r!7292 (head!12676 s!2326)) (tail!11761 s!2326)) lt!2332229)))

(declare-fun b!6133838 () Bool)

(declare-fun e!3738528 () Bool)

(assert (=> b!6133838 (= e!3738528 (not (= (head!12676 (tail!11761 s!2326)) (c!1102519 (derivativeStep!4797 r!7292 (head!12676 s!2326))))))))

(declare-fun b!6133839 () Bool)

(declare-fun e!3738530 () Bool)

(declare-fun e!3738529 () Bool)

(assert (=> b!6133839 (= e!3738530 e!3738529)))

(declare-fun res!2542001 () Bool)

(assert (=> b!6133839 (=> (not res!2542001) (not e!3738529))))

(assert (=> b!6133839 (= res!2542001 (not lt!2332229))))

(declare-fun b!6133840 () Bool)

(declare-fun res!2541999 () Bool)

(assert (=> b!6133840 (=> res!2541999 e!3738530)))

(declare-fun e!3738527 () Bool)

(assert (=> b!6133840 (= res!2541999 e!3738527)))

(declare-fun res!2542006 () Bool)

(assert (=> b!6133840 (=> (not res!2542006) (not e!3738527))))

(assert (=> b!6133840 (= res!2542006 lt!2332229)))

(declare-fun b!6133841 () Bool)

(declare-fun res!2542002 () Bool)

(assert (=> b!6133841 (=> res!2542002 e!3738528)))

(assert (=> b!6133841 (= res!2542002 (not (isEmpty!36353 (tail!11761 (tail!11761 s!2326)))))))

(declare-fun b!6133842 () Bool)

(declare-fun res!2542004 () Bool)

(assert (=> b!6133842 (=> res!2542004 e!3738530)))

(assert (=> b!6133842 (= res!2542004 (not ((_ is ElementMatch!16077) (derivativeStep!4797 r!7292 (head!12676 s!2326)))))))

(declare-fun e!3738525 () Bool)

(assert (=> b!6133842 (= e!3738525 e!3738530)))

(declare-fun b!6133843 () Bool)

(assert (=> b!6133843 (= e!3738526 e!3738525)))

(declare-fun c!1102892 () Bool)

(assert (=> b!6133843 (= c!1102892 ((_ is EmptyLang!16077) (derivativeStep!4797 r!7292 (head!12676 s!2326))))))

(declare-fun b!6133844 () Bool)

(assert (=> b!6133844 (= e!3738531 (nullable!6070 (derivativeStep!4797 r!7292 (head!12676 s!2326))))))

(declare-fun b!6133845 () Bool)

(declare-fun res!2542005 () Bool)

(assert (=> b!6133845 (=> (not res!2542005) (not e!3738527))))

(assert (=> b!6133845 (= res!2542005 (isEmpty!36353 (tail!11761 (tail!11761 s!2326))))))

(declare-fun b!6133846 () Bool)

(assert (=> b!6133846 (= e!3738531 (matchR!8260 (derivativeStep!4797 (derivativeStep!4797 r!7292 (head!12676 s!2326)) (head!12676 (tail!11761 s!2326))) (tail!11761 (tail!11761 s!2326))))))

(declare-fun b!6133847 () Bool)

(assert (=> b!6133847 (= e!3738529 e!3738528)))

(declare-fun res!2542000 () Bool)

(assert (=> b!6133847 (=> res!2542000 e!3738528)))

(declare-fun call!508893 () Bool)

(assert (=> b!6133847 (= res!2542000 call!508893)))

(declare-fun b!6133848 () Bool)

(assert (=> b!6133848 (= e!3738526 (= lt!2332229 call!508893))))

(declare-fun bm!508888 () Bool)

(assert (=> bm!508888 (= call!508893 (isEmpty!36353 (tail!11761 s!2326)))))

(declare-fun b!6133849 () Bool)

(declare-fun res!2542003 () Bool)

(assert (=> b!6133849 (=> (not res!2542003) (not e!3738527))))

(assert (=> b!6133849 (= res!2542003 (not call!508893))))

(declare-fun b!6133850 () Bool)

(assert (=> b!6133850 (= e!3738525 (not lt!2332229))))

(declare-fun b!6133851 () Bool)

(assert (=> b!6133851 (= e!3738527 (= (head!12676 (tail!11761 s!2326)) (c!1102519 (derivativeStep!4797 r!7292 (head!12676 s!2326)))))))

(assert (= (and d!1921808 c!1102891) b!6133844))

(assert (= (and d!1921808 (not c!1102891)) b!6133846))

(assert (= (and d!1921808 c!1102893) b!6133848))

(assert (= (and d!1921808 (not c!1102893)) b!6133843))

(assert (= (and b!6133843 c!1102892) b!6133850))

(assert (= (and b!6133843 (not c!1102892)) b!6133842))

(assert (= (and b!6133842 (not res!2542004)) b!6133840))

(assert (= (and b!6133840 res!2542006) b!6133849))

(assert (= (and b!6133849 res!2542003) b!6133845))

(assert (= (and b!6133845 res!2542005) b!6133851))

(assert (= (and b!6133840 (not res!2541999)) b!6133839))

(assert (= (and b!6133839 res!2542001) b!6133847))

(assert (= (and b!6133847 (not res!2542000)) b!6133841))

(assert (= (and b!6133841 (not res!2542002)) b!6133838))

(assert (= (or b!6133848 b!6133847 b!6133849) bm!508888))

(assert (=> b!6133846 m!6976012))

(declare-fun m!6976744 () Bool)

(assert (=> b!6133846 m!6976744))

(assert (=> b!6133846 m!6976010))

(assert (=> b!6133846 m!6976744))

(declare-fun m!6976746 () Bool)

(assert (=> b!6133846 m!6976746))

(assert (=> b!6133846 m!6976012))

(declare-fun m!6976748 () Bool)

(assert (=> b!6133846 m!6976748))

(assert (=> b!6133846 m!6976746))

(assert (=> b!6133846 m!6976748))

(declare-fun m!6976750 () Bool)

(assert (=> b!6133846 m!6976750))

(assert (=> b!6133845 m!6976012))

(assert (=> b!6133845 m!6976748))

(assert (=> b!6133845 m!6976748))

(declare-fun m!6976752 () Bool)

(assert (=> b!6133845 m!6976752))

(assert (=> b!6133838 m!6976012))

(assert (=> b!6133838 m!6976744))

(assert (=> b!6133851 m!6976012))

(assert (=> b!6133851 m!6976744))

(assert (=> b!6133844 m!6976010))

(declare-fun m!6976754 () Bool)

(assert (=> b!6133844 m!6976754))

(assert (=> bm!508888 m!6976012))

(assert (=> bm!508888 m!6976016))

(assert (=> b!6133841 m!6976012))

(assert (=> b!6133841 m!6976748))

(assert (=> b!6133841 m!6976748))

(assert (=> b!6133841 m!6976752))

(assert (=> d!1921808 m!6976012))

(assert (=> d!1921808 m!6976016))

(assert (=> d!1921808 m!6976010))

(declare-fun m!6976756 () Bool)

(assert (=> d!1921808 m!6976756))

(assert (=> b!6133033 d!1921808))

(declare-fun b!6133872 () Bool)

(declare-fun call!508905 () Regex!16077)

(declare-fun e!3738545 () Regex!16077)

(declare-fun call!508904 () Regex!16077)

(assert (=> b!6133872 (= e!3738545 (Union!16077 (Concat!24922 call!508905 (regTwo!32666 r!7292)) call!508904))))

(declare-fun b!6133873 () Bool)

(declare-fun e!3738544 () Regex!16077)

(assert (=> b!6133873 (= e!3738544 (ite (= (head!12676 s!2326) (c!1102519 r!7292)) EmptyExpr!16077 EmptyLang!16077))))

(declare-fun bm!508897 () Bool)

(declare-fun call!508902 () Regex!16077)

(declare-fun call!508903 () Regex!16077)

(assert (=> bm!508897 (= call!508902 call!508903)))

(declare-fun b!6133874 () Bool)

(declare-fun e!3738546 () Regex!16077)

(declare-fun e!3738542 () Regex!16077)

(assert (=> b!6133874 (= e!3738546 e!3738542)))

(declare-fun c!1102905 () Bool)

(assert (=> b!6133874 (= c!1102905 ((_ is Star!16077) r!7292))))

(declare-fun b!6133875 () Bool)

(declare-fun e!3738543 () Regex!16077)

(assert (=> b!6133875 (= e!3738543 e!3738544)))

(declare-fun c!1102906 () Bool)

(assert (=> b!6133875 (= c!1102906 ((_ is ElementMatch!16077) r!7292))))

(declare-fun bm!508898 () Bool)

(assert (=> bm!508898 (= call!508904 call!508902)))

(declare-fun d!1921810 () Bool)

(declare-fun lt!2332232 () Regex!16077)

(assert (=> d!1921810 (validRegex!7813 lt!2332232)))

(assert (=> d!1921810 (= lt!2332232 e!3738543)))

(declare-fun c!1102908 () Bool)

(assert (=> d!1921810 (= c!1102908 (or ((_ is EmptyExpr!16077) r!7292) ((_ is EmptyLang!16077) r!7292)))))

(assert (=> d!1921810 (validRegex!7813 r!7292)))

(assert (=> d!1921810 (= (derivativeStep!4797 r!7292 (head!12676 s!2326)) lt!2332232)))

(declare-fun b!6133876 () Bool)

(assert (=> b!6133876 (= e!3738542 (Concat!24922 call!508902 r!7292))))

(declare-fun bm!508899 () Bool)

(declare-fun c!1102904 () Bool)

(declare-fun c!1102907 () Bool)

(assert (=> bm!508899 (= call!508903 (derivativeStep!4797 (ite c!1102904 (regOne!32667 r!7292) (ite c!1102905 (reg!16406 r!7292) (ite c!1102907 (regTwo!32666 r!7292) (regOne!32666 r!7292)))) (head!12676 s!2326)))))

(declare-fun b!6133877 () Bool)

(assert (=> b!6133877 (= e!3738543 EmptyLang!16077)))

(declare-fun b!6133878 () Bool)

(assert (=> b!6133878 (= e!3738546 (Union!16077 call!508903 call!508905))))

(declare-fun b!6133879 () Bool)

(assert (=> b!6133879 (= c!1102907 (nullable!6070 (regOne!32666 r!7292)))))

(assert (=> b!6133879 (= e!3738542 e!3738545)))

(declare-fun b!6133880 () Bool)

(assert (=> b!6133880 (= c!1102904 ((_ is Union!16077) r!7292))))

(assert (=> b!6133880 (= e!3738544 e!3738546)))

(declare-fun b!6133881 () Bool)

(assert (=> b!6133881 (= e!3738545 (Union!16077 (Concat!24922 call!508904 (regTwo!32666 r!7292)) EmptyLang!16077))))

(declare-fun bm!508900 () Bool)

(assert (=> bm!508900 (= call!508905 (derivativeStep!4797 (ite c!1102904 (regTwo!32667 r!7292) (regOne!32666 r!7292)) (head!12676 s!2326)))))

(assert (= (and d!1921810 c!1102908) b!6133877))

(assert (= (and d!1921810 (not c!1102908)) b!6133875))

(assert (= (and b!6133875 c!1102906) b!6133873))

(assert (= (and b!6133875 (not c!1102906)) b!6133880))

(assert (= (and b!6133880 c!1102904) b!6133878))

(assert (= (and b!6133880 (not c!1102904)) b!6133874))

(assert (= (and b!6133874 c!1102905) b!6133876))

(assert (= (and b!6133874 (not c!1102905)) b!6133879))

(assert (= (and b!6133879 c!1102907) b!6133872))

(assert (= (and b!6133879 (not c!1102907)) b!6133881))

(assert (= (or b!6133872 b!6133881) bm!508898))

(assert (= (or b!6133876 bm!508898) bm!508897))

(assert (= (or b!6133878 b!6133872) bm!508900))

(assert (= (or b!6133878 bm!508897) bm!508899))

(declare-fun m!6976758 () Bool)

(assert (=> d!1921810 m!6976758))

(assert (=> d!1921810 m!6975608))

(assert (=> bm!508899 m!6976008))

(declare-fun m!6976760 () Bool)

(assert (=> bm!508899 m!6976760))

(assert (=> b!6133879 m!6976712))

(assert (=> bm!508900 m!6976008))

(declare-fun m!6976762 () Bool)

(assert (=> bm!508900 m!6976762))

(assert (=> b!6133033 d!1921810))

(assert (=> b!6133033 d!1921736))

(declare-fun d!1921812 () Bool)

(assert (=> d!1921812 (= (tail!11761 s!2326) (t!378003 s!2326))))

(assert (=> b!6133033 d!1921812))

(declare-fun d!1921814 () Bool)

(assert (=> d!1921814 (= (isUnion!933 lt!2332155) ((_ is Union!16077) lt!2332155))))

(assert (=> b!6132752 d!1921814))

(declare-fun d!1921816 () Bool)

(declare-fun c!1102911 () Bool)

(assert (=> d!1921816 (= c!1102911 ((_ is Nil!64407) lt!2332143))))

(declare-fun e!3738549 () (InoxSet Context!10922))

(assert (=> d!1921816 (= (content!11976 lt!2332143) e!3738549)))

(declare-fun b!6133886 () Bool)

(assert (=> b!6133886 (= e!3738549 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6133887 () Bool)

(assert (=> b!6133887 (= e!3738549 ((_ map or) (store ((as const (Array Context!10922 Bool)) false) (h!70855 lt!2332143) true) (content!11976 (t!378002 lt!2332143))))))

(assert (= (and d!1921816 c!1102911) b!6133886))

(assert (= (and d!1921816 (not c!1102911)) b!6133887))

(declare-fun m!6976764 () Bool)

(assert (=> b!6133887 m!6976764))

(declare-fun m!6976766 () Bool)

(assert (=> b!6133887 m!6976766))

(assert (=> b!6132695 d!1921816))

(declare-fun d!1921818 () Bool)

(assert (=> d!1921818 (= (isEmpty!36353 s!2326) ((_ is Nil!64408) s!2326))))

(assert (=> d!1921458 d!1921818))

(assert (=> d!1921458 d!1921478))

(declare-fun bs!1521369 () Bool)

(declare-fun d!1921820 () Bool)

(assert (= bs!1521369 (and d!1921820 d!1921474)))

(declare-fun lambda!334211 () Int)

(assert (=> bs!1521369 (= lambda!334211 lambda!334157)))

(declare-fun bs!1521370 () Bool)

(assert (= bs!1521370 (and d!1921820 d!1921490)))

(assert (=> bs!1521370 (= lambda!334211 lambda!334161)))

(declare-fun bs!1521371 () Bool)

(assert (= bs!1521371 (and d!1921820 d!1921404)))

(assert (=> bs!1521371 (= lambda!334211 lambda!334128)))

(declare-fun bs!1521372 () Bool)

(assert (= bs!1521372 (and d!1921820 d!1921806)))

(assert (=> bs!1521372 (= lambda!334211 lambda!334210)))

(declare-fun bs!1521373 () Bool)

(assert (= bs!1521373 (and d!1921820 d!1921480)))

(assert (=> bs!1521373 (= lambda!334211 lambda!334160)))

(declare-fun bs!1521374 () Bool)

(assert (= bs!1521374 (and d!1921820 d!1921396)))

(assert (=> bs!1521374 (= lambda!334211 lambda!334125)))

(declare-fun bs!1521375 () Bool)

(assert (= bs!1521375 (and d!1921820 d!1921764)))

(assert (=> bs!1521375 (= lambda!334211 lambda!334204)))

(declare-fun bs!1521376 () Bool)

(assert (= bs!1521376 (and d!1921820 d!1921454)))

(assert (=> bs!1521376 (= lambda!334211 lambda!334150)))

(declare-fun b!6133888 () Bool)

(declare-fun e!3738552 () Bool)

(declare-fun e!3738553 () Bool)

(assert (=> b!6133888 (= e!3738552 e!3738553)))

(declare-fun c!1102914 () Bool)

(assert (=> b!6133888 (= c!1102914 (isEmpty!36348 (tail!11760 (t!378001 (unfocusZipperList!1498 zl!343)))))))

(declare-fun b!6133889 () Bool)

(declare-fun e!3738555 () Regex!16077)

(assert (=> b!6133889 (= e!3738555 (Union!16077 (h!70854 (t!378001 (unfocusZipperList!1498 zl!343))) (generalisedUnion!1921 (t!378001 (t!378001 (unfocusZipperList!1498 zl!343))))))))

(declare-fun e!3738551 () Bool)

(assert (=> d!1921820 e!3738551))

(declare-fun res!2542007 () Bool)

(assert (=> d!1921820 (=> (not res!2542007) (not e!3738551))))

(declare-fun lt!2332233 () Regex!16077)

(assert (=> d!1921820 (= res!2542007 (validRegex!7813 lt!2332233))))

(declare-fun e!3738554 () Regex!16077)

(assert (=> d!1921820 (= lt!2332233 e!3738554)))

(declare-fun c!1102915 () Bool)

(declare-fun e!3738550 () Bool)

(assert (=> d!1921820 (= c!1102915 e!3738550)))

(declare-fun res!2542008 () Bool)

(assert (=> d!1921820 (=> (not res!2542008) (not e!3738550))))

(assert (=> d!1921820 (= res!2542008 ((_ is Cons!64406) (t!378001 (unfocusZipperList!1498 zl!343))))))

(assert (=> d!1921820 (forall!15198 (t!378001 (unfocusZipperList!1498 zl!343)) lambda!334211)))

(assert (=> d!1921820 (= (generalisedUnion!1921 (t!378001 (unfocusZipperList!1498 zl!343))) lt!2332233)))

(declare-fun b!6133890 () Bool)

(assert (=> b!6133890 (= e!3738550 (isEmpty!36348 (t!378001 (t!378001 (unfocusZipperList!1498 zl!343)))))))

(declare-fun b!6133891 () Bool)

(assert (=> b!6133891 (= e!3738554 e!3738555)))

(declare-fun c!1102912 () Bool)

(assert (=> b!6133891 (= c!1102912 ((_ is Cons!64406) (t!378001 (unfocusZipperList!1498 zl!343))))))

(declare-fun b!6133892 () Bool)

(assert (=> b!6133892 (= e!3738553 (= lt!2332233 (head!12675 (t!378001 (unfocusZipperList!1498 zl!343)))))))

(declare-fun b!6133893 () Bool)

(assert (=> b!6133893 (= e!3738554 (h!70854 (t!378001 (unfocusZipperList!1498 zl!343))))))

(declare-fun b!6133894 () Bool)

(assert (=> b!6133894 (= e!3738551 e!3738552)))

(declare-fun c!1102913 () Bool)

(assert (=> b!6133894 (= c!1102913 (isEmpty!36348 (t!378001 (unfocusZipperList!1498 zl!343))))))

(declare-fun b!6133895 () Bool)

(assert (=> b!6133895 (= e!3738555 EmptyLang!16077)))

(declare-fun b!6133896 () Bool)

(assert (=> b!6133896 (= e!3738552 (isEmptyLang!1503 lt!2332233))))

(declare-fun b!6133897 () Bool)

(assert (=> b!6133897 (= e!3738553 (isUnion!933 lt!2332233))))

(assert (= (and d!1921820 res!2542008) b!6133890))

(assert (= (and d!1921820 c!1102915) b!6133893))

(assert (= (and d!1921820 (not c!1102915)) b!6133891))

(assert (= (and b!6133891 c!1102912) b!6133889))

(assert (= (and b!6133891 (not c!1102912)) b!6133895))

(assert (= (and d!1921820 res!2542007) b!6133894))

(assert (= (and b!6133894 c!1102913) b!6133896))

(assert (= (and b!6133894 (not c!1102913)) b!6133888))

(assert (= (and b!6133888 c!1102914) b!6133892))

(assert (= (and b!6133888 (not c!1102914)) b!6133897))

(assert (=> b!6133894 m!6975846))

(declare-fun m!6976768 () Bool)

(assert (=> b!6133888 m!6976768))

(assert (=> b!6133888 m!6976768))

(declare-fun m!6976770 () Bool)

(assert (=> b!6133888 m!6976770))

(declare-fun m!6976772 () Bool)

(assert (=> b!6133896 m!6976772))

(declare-fun m!6976774 () Bool)

(assert (=> b!6133897 m!6976774))

(declare-fun m!6976776 () Bool)

(assert (=> b!6133890 m!6976776))

(declare-fun m!6976778 () Bool)

(assert (=> b!6133889 m!6976778))

(declare-fun m!6976780 () Bool)

(assert (=> b!6133892 m!6976780))

(declare-fun m!6976782 () Bool)

(assert (=> d!1921820 m!6976782))

(declare-fun m!6976784 () Bool)

(assert (=> d!1921820 m!6976784))

(assert (=> b!6132744 d!1921820))

(assert (=> b!6133105 d!1921488))

(assert (=> d!1921484 d!1921762))

(declare-fun bs!1521377 () Bool)

(declare-fun b!6133900 () Bool)

(assert (= bs!1521377 (and b!6133900 d!1921788)))

(declare-fun lambda!334212 () Int)

(assert (=> bs!1521377 (not (= lambda!334212 lambda!334208))))

(declare-fun bs!1521378 () Bool)

(assert (= bs!1521378 (and b!6133900 d!1921450)))

(assert (=> bs!1521378 (not (= lambda!334212 lambda!334146))))

(declare-fun bs!1521379 () Bool)

(assert (= bs!1521379 (and b!6133900 d!1921448)))

(assert (=> bs!1521379 (not (= lambda!334212 lambda!334141))))

(declare-fun bs!1521380 () Bool)

(assert (= bs!1521380 (and b!6133900 b!6132988)))

(assert (=> bs!1521380 (= (and (= (reg!16406 (regTwo!32667 r!7292)) (reg!16406 r!7292)) (= (regTwo!32667 r!7292) r!7292)) (= lambda!334212 lambda!334155))))

(declare-fun bs!1521381 () Bool)

(assert (= bs!1521381 (and b!6133900 b!6132400)))

(assert (=> bs!1521381 (not (= lambda!334212 lambda!334102))))

(declare-fun bs!1521382 () Bool)

(assert (= bs!1521382 (and b!6133900 b!6132995)))

(assert (=> bs!1521382 (not (= lambda!334212 lambda!334156))))

(assert (=> bs!1521381 (not (= lambda!334212 lambda!334101))))

(assert (=> bs!1521378 (not (= lambda!334212 lambda!334147))))

(assert (=> b!6133900 true))

(assert (=> b!6133900 true))

(declare-fun bs!1521383 () Bool)

(declare-fun b!6133907 () Bool)

(assert (= bs!1521383 (and b!6133907 d!1921788)))

(declare-fun lambda!334213 () Int)

(assert (=> bs!1521383 (not (= lambda!334213 lambda!334208))))

(declare-fun bs!1521384 () Bool)

(assert (= bs!1521384 (and b!6133907 d!1921450)))

(assert (=> bs!1521384 (not (= lambda!334213 lambda!334146))))

(declare-fun bs!1521385 () Bool)

(assert (= bs!1521385 (and b!6133907 d!1921448)))

(assert (=> bs!1521385 (not (= lambda!334213 lambda!334141))))

(declare-fun bs!1521386 () Bool)

(assert (= bs!1521386 (and b!6133907 b!6132988)))

(assert (=> bs!1521386 (not (= lambda!334213 lambda!334155))))

(declare-fun bs!1521387 () Bool)

(assert (= bs!1521387 (and b!6133907 b!6132400)))

(assert (=> bs!1521387 (= (and (= (regOne!32666 (regTwo!32667 r!7292)) (regOne!32666 r!7292)) (= (regTwo!32666 (regTwo!32667 r!7292)) (regTwo!32666 r!7292))) (= lambda!334213 lambda!334102))))

(declare-fun bs!1521388 () Bool)

(assert (= bs!1521388 (and b!6133907 b!6133900)))

(assert (=> bs!1521388 (not (= lambda!334213 lambda!334212))))

(declare-fun bs!1521389 () Bool)

(assert (= bs!1521389 (and b!6133907 b!6132995)))

(assert (=> bs!1521389 (= (and (= (regOne!32666 (regTwo!32667 r!7292)) (regOne!32666 r!7292)) (= (regTwo!32666 (regTwo!32667 r!7292)) (regTwo!32666 r!7292))) (= lambda!334213 lambda!334156))))

(assert (=> bs!1521387 (not (= lambda!334213 lambda!334101))))

(assert (=> bs!1521384 (= (and (= (regOne!32666 (regTwo!32667 r!7292)) (regOne!32666 r!7292)) (= (regTwo!32666 (regTwo!32667 r!7292)) (regTwo!32666 r!7292))) (= lambda!334213 lambda!334147))))

(assert (=> b!6133907 true))

(assert (=> b!6133907 true))

(declare-fun c!1102916 () Bool)

(declare-fun call!508907 () Bool)

(declare-fun bm!508901 () Bool)

(assert (=> bm!508901 (= call!508907 (Exists!3147 (ite c!1102916 lambda!334212 lambda!334213)))))

(declare-fun d!1921822 () Bool)

(declare-fun c!1102918 () Bool)

(assert (=> d!1921822 (= c!1102918 ((_ is EmptyExpr!16077) (regTwo!32667 r!7292)))))

(declare-fun e!3738561 () Bool)

(assert (=> d!1921822 (= (matchRSpec!3178 (regTwo!32667 r!7292) s!2326) e!3738561)))

(declare-fun b!6133898 () Bool)

(declare-fun call!508906 () Bool)

(assert (=> b!6133898 (= e!3738561 call!508906)))

(declare-fun b!6133899 () Bool)

(declare-fun e!3738560 () Bool)

(assert (=> b!6133899 (= e!3738560 (matchRSpec!3178 (regTwo!32667 (regTwo!32667 r!7292)) s!2326))))

(declare-fun e!3738558 () Bool)

(assert (=> b!6133900 (= e!3738558 call!508907)))

(declare-fun b!6133901 () Bool)

(declare-fun e!3738559 () Bool)

(declare-fun e!3738562 () Bool)

(assert (=> b!6133901 (= e!3738559 e!3738562)))

(assert (=> b!6133901 (= c!1102916 ((_ is Star!16077) (regTwo!32667 r!7292)))))

(declare-fun b!6133902 () Bool)

(assert (=> b!6133902 (= e!3738559 e!3738560)))

(declare-fun res!2542010 () Bool)

(assert (=> b!6133902 (= res!2542010 (matchRSpec!3178 (regOne!32667 (regTwo!32667 r!7292)) s!2326))))

(assert (=> b!6133902 (=> res!2542010 e!3738560)))

(declare-fun b!6133903 () Bool)

(declare-fun res!2542011 () Bool)

(assert (=> b!6133903 (=> res!2542011 e!3738558)))

(assert (=> b!6133903 (= res!2542011 call!508906)))

(assert (=> b!6133903 (= e!3738562 e!3738558)))

(declare-fun b!6133904 () Bool)

(declare-fun e!3738557 () Bool)

(assert (=> b!6133904 (= e!3738557 (= s!2326 (Cons!64408 (c!1102519 (regTwo!32667 r!7292)) Nil!64408)))))

(declare-fun b!6133905 () Bool)

(declare-fun e!3738556 () Bool)

(assert (=> b!6133905 (= e!3738561 e!3738556)))

(declare-fun res!2542009 () Bool)

(assert (=> b!6133905 (= res!2542009 (not ((_ is EmptyLang!16077) (regTwo!32667 r!7292))))))

(assert (=> b!6133905 (=> (not res!2542009) (not e!3738556))))

(declare-fun bm!508902 () Bool)

(assert (=> bm!508902 (= call!508906 (isEmpty!36353 s!2326))))

(declare-fun b!6133906 () Bool)

(declare-fun c!1102919 () Bool)

(assert (=> b!6133906 (= c!1102919 ((_ is ElementMatch!16077) (regTwo!32667 r!7292)))))

(assert (=> b!6133906 (= e!3738556 e!3738557)))

(assert (=> b!6133907 (= e!3738562 call!508907)))

(declare-fun b!6133908 () Bool)

(declare-fun c!1102917 () Bool)

(assert (=> b!6133908 (= c!1102917 ((_ is Union!16077) (regTwo!32667 r!7292)))))

(assert (=> b!6133908 (= e!3738557 e!3738559)))

(assert (= (and d!1921822 c!1102918) b!6133898))

(assert (= (and d!1921822 (not c!1102918)) b!6133905))

(assert (= (and b!6133905 res!2542009) b!6133906))

(assert (= (and b!6133906 c!1102919) b!6133904))

(assert (= (and b!6133906 (not c!1102919)) b!6133908))

(assert (= (and b!6133908 c!1102917) b!6133902))

(assert (= (and b!6133908 (not c!1102917)) b!6133901))

(assert (= (and b!6133902 (not res!2542010)) b!6133899))

(assert (= (and b!6133901 c!1102916) b!6133903))

(assert (= (and b!6133901 (not c!1102916)) b!6133907))

(assert (= (and b!6133903 (not res!2542011)) b!6133900))

(assert (= (or b!6133900 b!6133907) bm!508901))

(assert (= (or b!6133898 b!6133903) bm!508902))

(declare-fun m!6976786 () Bool)

(assert (=> bm!508901 m!6976786))

(declare-fun m!6976788 () Bool)

(assert (=> b!6133899 m!6976788))

(declare-fun m!6976790 () Bool)

(assert (=> b!6133902 m!6976790))

(assert (=> bm!508902 m!6976006))

(assert (=> b!6132987 d!1921822))

(declare-fun d!1921824 () Bool)

(declare-fun c!1102920 () Bool)

(assert (=> d!1921824 (= c!1102920 (isEmpty!36353 (tail!11761 (t!378003 s!2326))))))

(declare-fun e!3738563 () Bool)

(assert (=> d!1921824 (= (matchZipper!2089 (derivationStepZipper!2050 lt!2332115 (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))) e!3738563)))

(declare-fun b!6133909 () Bool)

(assert (=> b!6133909 (= e!3738563 (nullableZipper!1858 (derivationStepZipper!2050 lt!2332115 (head!12676 (t!378003 s!2326)))))))

(declare-fun b!6133910 () Bool)

(assert (=> b!6133910 (= e!3738563 (matchZipper!2089 (derivationStepZipper!2050 (derivationStepZipper!2050 lt!2332115 (head!12676 (t!378003 s!2326))) (head!12676 (tail!11761 (t!378003 s!2326)))) (tail!11761 (tail!11761 (t!378003 s!2326)))))))

(assert (= (and d!1921824 c!1102920) b!6133909))

(assert (= (and d!1921824 (not c!1102920)) b!6133910))

(assert (=> d!1921824 m!6976034))

(assert (=> d!1921824 m!6976622))

(assert (=> b!6133909 m!6976090))

(declare-fun m!6976792 () Bool)

(assert (=> b!6133909 m!6976792))

(assert (=> b!6133910 m!6976034))

(assert (=> b!6133910 m!6976626))

(assert (=> b!6133910 m!6976090))

(assert (=> b!6133910 m!6976626))

(declare-fun m!6976794 () Bool)

(assert (=> b!6133910 m!6976794))

(assert (=> b!6133910 m!6976034))

(assert (=> b!6133910 m!6976630))

(assert (=> b!6133910 m!6976794))

(assert (=> b!6133910 m!6976630))

(declare-fun m!6976796 () Bool)

(assert (=> b!6133910 m!6976796))

(assert (=> b!6133114 d!1921824))

(declare-fun bs!1521390 () Bool)

(declare-fun d!1921826 () Bool)

(assert (= bs!1521390 (and d!1921826 b!6132399)))

(declare-fun lambda!334214 () Int)

(assert (=> bs!1521390 (= (= (head!12676 (t!378003 s!2326)) (h!70856 s!2326)) (= lambda!334214 lambda!334103))))

(declare-fun bs!1521391 () Bool)

(assert (= bs!1521391 (and d!1921826 d!1921742)))

(assert (=> bs!1521391 (= lambda!334214 lambda!334198)))

(declare-fun bs!1521392 () Bool)

(assert (= bs!1521392 (and d!1921826 d!1921756)))

(assert (=> bs!1521392 (= lambda!334214 lambda!334203)))

(assert (=> d!1921826 true))

(assert (=> d!1921826 (= (derivationStepZipper!2050 lt!2332115 (head!12676 (t!378003 s!2326))) (flatMap!1582 lt!2332115 lambda!334214))))

(declare-fun bs!1521393 () Bool)

(assert (= bs!1521393 d!1921826))

(declare-fun m!6976798 () Bool)

(assert (=> bs!1521393 m!6976798))

(assert (=> b!6133114 d!1921826))

(assert (=> b!6133114 d!1921744))

(assert (=> b!6133114 d!1921746))

(declare-fun bs!1521394 () Bool)

(declare-fun d!1921828 () Bool)

(assert (= bs!1521394 (and d!1921828 d!1921748)))

(declare-fun lambda!334215 () Int)

(assert (=> bs!1521394 (= lambda!334215 lambda!334201)))

(declare-fun bs!1521395 () Bool)

(assert (= bs!1521395 (and d!1921828 d!1921750)))

(assert (=> bs!1521395 (= lambda!334215 lambda!334202)))

(declare-fun bs!1521396 () Bool)

(assert (= bs!1521396 (and d!1921828 d!1921770)))

(assert (=> bs!1521396 (= lambda!334215 lambda!334205)))

(declare-fun bs!1521397 () Bool)

(assert (= bs!1521397 (and d!1921828 d!1921798)))

(assert (=> bs!1521397 (= lambda!334215 lambda!334209)))

(assert (=> d!1921828 (= (nullableZipper!1858 lt!2332102) (exists!2424 lt!2332102 lambda!334215))))

(declare-fun bs!1521398 () Bool)

(assert (= bs!1521398 d!1921828))

(declare-fun m!6976800 () Bool)

(assert (=> bs!1521398 m!6976800))

(assert (=> b!6133046 d!1921828))

(declare-fun c!1102923 () Bool)

(declare-fun call!508910 () List!64530)

(declare-fun bm!508903 () Bool)

(declare-fun c!1102921 () Bool)

(assert (=> bm!508903 (= call!508910 ($colon$colon!1954 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343))))) (ite (or c!1102923 c!1102921) (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (h!70854 (exprs!5961 (h!70855 zl!343))))))))

(declare-fun b!6133911 () Bool)

(declare-fun e!3738568 () (InoxSet Context!10922))

(declare-fun e!3738566 () (InoxSet Context!10922))

(assert (=> b!6133911 (= e!3738568 e!3738566)))

(assert (=> b!6133911 (= c!1102921 ((_ is Concat!24922) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6133912 () Bool)

(declare-fun e!3738567 () (InoxSet Context!10922))

(declare-fun call!508911 () (InoxSet Context!10922))

(assert (=> b!6133912 (= e!3738567 call!508911)))

(declare-fun b!6133913 () Bool)

(assert (=> b!6133913 (= e!3738567 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6133914 () Bool)

(declare-fun e!3738569 () (InoxSet Context!10922))

(assert (=> b!6133914 (= e!3738569 (store ((as const (Array Context!10922 Bool)) false) (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))) true))))

(declare-fun c!1102925 () Bool)

(declare-fun bm!508904 () Bool)

(declare-fun call!508912 () (InoxSet Context!10922))

(assert (=> bm!508904 (= call!508912 (derivationStepZipperDown!1325 (ite c!1102925 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))) (ite c!1102925 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))) (Context!10923 call!508910)) (h!70856 s!2326)))))

(declare-fun b!6133915 () Bool)

(declare-fun e!3738565 () Bool)

(assert (=> b!6133915 (= c!1102923 e!3738565)))

(declare-fun res!2542012 () Bool)

(assert (=> b!6133915 (=> (not res!2542012) (not e!3738565))))

(assert (=> b!6133915 (= res!2542012 ((_ is Concat!24922) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun e!3738564 () (InoxSet Context!10922))

(assert (=> b!6133915 (= e!3738564 e!3738568)))

(declare-fun call!508913 () List!64530)

(declare-fun bm!508906 () Bool)

(declare-fun call!508908 () (InoxSet Context!10922))

(assert (=> bm!508906 (= call!508908 (derivationStepZipperDown!1325 (ite c!1102925 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102923 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102921 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343))))))) (ite (or c!1102925 c!1102923) (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))) (Context!10923 call!508913)) (h!70856 s!2326)))))

(declare-fun b!6133916 () Bool)

(assert (=> b!6133916 (= e!3738566 call!508911)))

(declare-fun bm!508907 () Bool)

(declare-fun call!508909 () (InoxSet Context!10922))

(assert (=> bm!508907 (= call!508911 call!508909)))

(declare-fun b!6133917 () Bool)

(declare-fun c!1102924 () Bool)

(assert (=> b!6133917 (= c!1102924 ((_ is Star!16077) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(assert (=> b!6133917 (= e!3738566 e!3738567)))

(declare-fun bm!508908 () Bool)

(assert (=> bm!508908 (= call!508909 call!508908)))

(declare-fun b!6133918 () Bool)

(assert (=> b!6133918 (= e!3738569 e!3738564)))

(assert (=> b!6133918 (= c!1102925 ((_ is Union!16077) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6133919 () Bool)

(assert (=> b!6133919 (= e!3738565 (nullable!6070 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))))))

(declare-fun b!6133920 () Bool)

(assert (=> b!6133920 (= e!3738568 ((_ map or) call!508912 call!508909))))

(declare-fun b!6133921 () Bool)

(assert (=> b!6133921 (= e!3738564 ((_ map or) call!508912 call!508908))))

(declare-fun bm!508905 () Bool)

(assert (=> bm!508905 (= call!508913 call!508910)))

(declare-fun d!1921830 () Bool)

(declare-fun c!1102922 () Bool)

(assert (=> d!1921830 (= c!1102922 (and ((_ is ElementMatch!16077) (h!70854 (exprs!5961 (h!70855 zl!343)))) (= (c!1102519 (h!70854 (exprs!5961 (h!70855 zl!343)))) (h!70856 s!2326))))))

(assert (=> d!1921830 (= (derivationStepZipperDown!1325 (h!70854 (exprs!5961 (h!70855 zl!343))) (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))) (h!70856 s!2326)) e!3738569)))

(assert (= (and d!1921830 c!1102922) b!6133914))

(assert (= (and d!1921830 (not c!1102922)) b!6133918))

(assert (= (and b!6133918 c!1102925) b!6133921))

(assert (= (and b!6133918 (not c!1102925)) b!6133915))

(assert (= (and b!6133915 res!2542012) b!6133919))

(assert (= (and b!6133915 c!1102923) b!6133920))

(assert (= (and b!6133915 (not c!1102923)) b!6133911))

(assert (= (and b!6133911 c!1102921) b!6133916))

(assert (= (and b!6133911 (not c!1102921)) b!6133917))

(assert (= (and b!6133917 c!1102924) b!6133912))

(assert (= (and b!6133917 (not c!1102924)) b!6133913))

(assert (= (or b!6133916 b!6133912) bm!508905))

(assert (= (or b!6133916 b!6133912) bm!508907))

(assert (= (or b!6133920 bm!508905) bm!508903))

(assert (= (or b!6133920 bm!508907) bm!508908))

(assert (= (or b!6133921 bm!508908) bm!508906))

(assert (= (or b!6133921 b!6133920) bm!508904))

(declare-fun m!6976802 () Bool)

(assert (=> b!6133914 m!6976802))

(assert (=> b!6133919 m!6975918))

(declare-fun m!6976804 () Bool)

(assert (=> bm!508906 m!6976804))

(declare-fun m!6976806 () Bool)

(assert (=> bm!508904 m!6976806))

(declare-fun m!6976808 () Bool)

(assert (=> bm!508903 m!6976808))

(assert (=> bm!508719 d!1921830))

(declare-fun b!6133931 () Bool)

(declare-fun e!3738575 () List!64532)

(assert (=> b!6133931 (= e!3738575 (Cons!64408 (h!70856 (_1!36359 (get!22217 lt!2332178))) (++!14163 (t!378003 (_1!36359 (get!22217 lt!2332178))) (_2!36359 (get!22217 lt!2332178)))))))

(declare-fun d!1921832 () Bool)

(declare-fun e!3738574 () Bool)

(assert (=> d!1921832 e!3738574))

(declare-fun res!2542018 () Bool)

(assert (=> d!1921832 (=> (not res!2542018) (not e!3738574))))

(declare-fun lt!2332236 () List!64532)

(declare-fun content!11979 (List!64532) (InoxSet C!32424))

(assert (=> d!1921832 (= res!2542018 (= (content!11979 lt!2332236) ((_ map or) (content!11979 (_1!36359 (get!22217 lt!2332178))) (content!11979 (_2!36359 (get!22217 lt!2332178))))))))

(assert (=> d!1921832 (= lt!2332236 e!3738575)))

(declare-fun c!1102928 () Bool)

(assert (=> d!1921832 (= c!1102928 ((_ is Nil!64408) (_1!36359 (get!22217 lt!2332178))))))

(assert (=> d!1921832 (= (++!14163 (_1!36359 (get!22217 lt!2332178)) (_2!36359 (get!22217 lt!2332178))) lt!2332236)))

(declare-fun b!6133933 () Bool)

(assert (=> b!6133933 (= e!3738574 (or (not (= (_2!36359 (get!22217 lt!2332178)) Nil!64408)) (= lt!2332236 (_1!36359 (get!22217 lt!2332178)))))))

(declare-fun b!6133932 () Bool)

(declare-fun res!2542017 () Bool)

(assert (=> b!6133932 (=> (not res!2542017) (not e!3738574))))

(declare-fun size!40220 (List!64532) Int)

(assert (=> b!6133932 (= res!2542017 (= (size!40220 lt!2332236) (+ (size!40220 (_1!36359 (get!22217 lt!2332178))) (size!40220 (_2!36359 (get!22217 lt!2332178))))))))

(declare-fun b!6133930 () Bool)

(assert (=> b!6133930 (= e!3738575 (_2!36359 (get!22217 lt!2332178)))))

(assert (= (and d!1921832 c!1102928) b!6133930))

(assert (= (and d!1921832 (not c!1102928)) b!6133931))

(assert (= (and d!1921832 res!2542018) b!6133932))

(assert (= (and b!6133932 res!2542017) b!6133933))

(declare-fun m!6976810 () Bool)

(assert (=> b!6133931 m!6976810))

(declare-fun m!6976812 () Bool)

(assert (=> d!1921832 m!6976812))

(declare-fun m!6976814 () Bool)

(assert (=> d!1921832 m!6976814))

(declare-fun m!6976816 () Bool)

(assert (=> d!1921832 m!6976816))

(declare-fun m!6976818 () Bool)

(assert (=> b!6133932 m!6976818))

(declare-fun m!6976820 () Bool)

(assert (=> b!6133932 m!6976820))

(declare-fun m!6976822 () Bool)

(assert (=> b!6133932 m!6976822))

(assert (=> b!6132933 d!1921832))

(assert (=> b!6132933 d!1921730))

(declare-fun d!1921834 () Bool)

(assert (=> d!1921834 (= (head!12675 (exprs!5961 (h!70855 zl!343))) (h!70854 (exprs!5961 (h!70855 zl!343))))))

(assert (=> b!6133103 d!1921834))

(assert (=> d!1921470 d!1921762))

(declare-fun bs!1521399 () Bool)

(declare-fun d!1921836 () Bool)

(assert (= bs!1521399 (and d!1921836 d!1921490)))

(declare-fun lambda!334216 () Int)

(assert (=> bs!1521399 (= lambda!334216 lambda!334161)))

(declare-fun bs!1521400 () Bool)

(assert (= bs!1521400 (and d!1921836 d!1921404)))

(assert (=> bs!1521400 (= lambda!334216 lambda!334128)))

(declare-fun bs!1521401 () Bool)

(assert (= bs!1521401 (and d!1921836 d!1921806)))

(assert (=> bs!1521401 (= lambda!334216 lambda!334210)))

(declare-fun bs!1521402 () Bool)

(assert (= bs!1521402 (and d!1921836 d!1921480)))

(assert (=> bs!1521402 (= lambda!334216 lambda!334160)))

(declare-fun bs!1521403 () Bool)

(assert (= bs!1521403 (and d!1921836 d!1921396)))

(assert (=> bs!1521403 (= lambda!334216 lambda!334125)))

(declare-fun bs!1521404 () Bool)

(assert (= bs!1521404 (and d!1921836 d!1921474)))

(assert (=> bs!1521404 (= lambda!334216 lambda!334157)))

(declare-fun bs!1521405 () Bool)

(assert (= bs!1521405 (and d!1921836 d!1921820)))

(assert (=> bs!1521405 (= lambda!334216 lambda!334211)))

(declare-fun bs!1521406 () Bool)

(assert (= bs!1521406 (and d!1921836 d!1921764)))

(assert (=> bs!1521406 (= lambda!334216 lambda!334204)))

(declare-fun bs!1521407 () Bool)

(assert (= bs!1521407 (and d!1921836 d!1921454)))

(assert (=> bs!1521407 (= lambda!334216 lambda!334150)))

(assert (=> d!1921836 (= (inv!83439 setElem!41462) (forall!15198 (exprs!5961 setElem!41462) lambda!334216))))

(declare-fun bs!1521408 () Bool)

(assert (= bs!1521408 d!1921836))

(declare-fun m!6976824 () Bool)

(assert (=> bs!1521408 m!6976824))

(assert (=> setNonEmpty!41462 d!1921836))

(declare-fun d!1921838 () Bool)

(assert (=> d!1921838 (= (Exists!3147 (ite c!1102687 lambda!334155 lambda!334156)) (choose!45571 (ite c!1102687 lambda!334155 lambda!334156)))))

(declare-fun bs!1521409 () Bool)

(assert (= bs!1521409 d!1921838))

(declare-fun m!6976826 () Bool)

(assert (=> bs!1521409 m!6976826))

(assert (=> bm!508754 d!1921838))

(declare-fun d!1921840 () Bool)

(assert (=> d!1921840 (= (nullable!6070 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292)))) (nullableFct!2034 (regOne!32666 (regTwo!32667 (regOne!32666 r!7292)))))))

(declare-fun bs!1521410 () Bool)

(assert (= bs!1521410 d!1921840))

(declare-fun m!6976828 () Bool)

(assert (=> bs!1521410 m!6976828))

(assert (=> b!6132866 d!1921840))

(declare-fun c!1102931 () Bool)

(declare-fun bm!508909 () Bool)

(declare-fun call!508916 () List!64530)

(declare-fun c!1102929 () Bool)

(assert (=> bm!508909 (= call!508916 ($colon$colon!1954 (exprs!5961 (ite c!1102672 lt!2332109 (Context!10923 call!508751))) (ite (or c!1102931 c!1102929) (regTwo!32666 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))) (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292)))))))))

(declare-fun b!6133934 () Bool)

(declare-fun e!3738580 () (InoxSet Context!10922))

(declare-fun e!3738578 () (InoxSet Context!10922))

(assert (=> b!6133934 (= e!3738580 e!3738578)))

(assert (=> b!6133934 (= c!1102929 ((_ is Concat!24922) (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))))))

(declare-fun b!6133935 () Bool)

(declare-fun e!3738579 () (InoxSet Context!10922))

(declare-fun call!508917 () (InoxSet Context!10922))

(assert (=> b!6133935 (= e!3738579 call!508917)))

(declare-fun b!6133936 () Bool)

(assert (=> b!6133936 (= e!3738579 ((as const (Array Context!10922 Bool)) false))))

(declare-fun e!3738581 () (InoxSet Context!10922))

(declare-fun b!6133937 () Bool)

(assert (=> b!6133937 (= e!3738581 (store ((as const (Array Context!10922 Bool)) false) (ite c!1102672 lt!2332109 (Context!10923 call!508751)) true))))

(declare-fun c!1102933 () Bool)

(declare-fun bm!508910 () Bool)

(declare-fun call!508918 () (InoxSet Context!10922))

(assert (=> bm!508910 (= call!508918 (derivationStepZipperDown!1325 (ite c!1102933 (regOne!32667 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))) (regOne!32666 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292)))))) (ite c!1102933 (ite c!1102672 lt!2332109 (Context!10923 call!508751)) (Context!10923 call!508916)) (h!70856 s!2326)))))

(declare-fun b!6133938 () Bool)

(declare-fun e!3738577 () Bool)

(assert (=> b!6133938 (= c!1102931 e!3738577)))

(declare-fun res!2542019 () Bool)

(assert (=> b!6133938 (=> (not res!2542019) (not e!3738577))))

(assert (=> b!6133938 (= res!2542019 ((_ is Concat!24922) (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))))))

(declare-fun e!3738576 () (InoxSet Context!10922))

(assert (=> b!6133938 (= e!3738576 e!3738580)))

(declare-fun call!508914 () (InoxSet Context!10922))

(declare-fun bm!508912 () Bool)

(declare-fun call!508919 () List!64530)

(assert (=> bm!508912 (= call!508914 (derivationStepZipperDown!1325 (ite c!1102933 (regTwo!32667 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))) (ite c!1102931 (regTwo!32666 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))) (ite c!1102929 (regOne!32666 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))) (reg!16406 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292)))))))) (ite (or c!1102933 c!1102931) (ite c!1102672 lt!2332109 (Context!10923 call!508751)) (Context!10923 call!508919)) (h!70856 s!2326)))))

(declare-fun b!6133939 () Bool)

(assert (=> b!6133939 (= e!3738578 call!508917)))

(declare-fun bm!508913 () Bool)

(declare-fun call!508915 () (InoxSet Context!10922))

(assert (=> bm!508913 (= call!508917 call!508915)))

(declare-fun b!6133940 () Bool)

(declare-fun c!1102932 () Bool)

(assert (=> b!6133940 (= c!1102932 ((_ is Star!16077) (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))))))

(assert (=> b!6133940 (= e!3738578 e!3738579)))

(declare-fun bm!508914 () Bool)

(assert (=> bm!508914 (= call!508915 call!508914)))

(declare-fun b!6133941 () Bool)

(assert (=> b!6133941 (= e!3738581 e!3738576)))

(assert (=> b!6133941 (= c!1102933 ((_ is Union!16077) (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))))))

(declare-fun b!6133942 () Bool)

(assert (=> b!6133942 (= e!3738577 (nullable!6070 (regOne!32666 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292)))))))))

(declare-fun b!6133943 () Bool)

(assert (=> b!6133943 (= e!3738580 ((_ map or) call!508918 call!508915))))

(declare-fun b!6133944 () Bool)

(assert (=> b!6133944 (= e!3738576 ((_ map or) call!508918 call!508914))))

(declare-fun bm!508911 () Bool)

(assert (=> bm!508911 (= call!508919 call!508916)))

(declare-fun d!1921842 () Bool)

(declare-fun c!1102930 () Bool)

(assert (=> d!1921842 (= c!1102930 (and ((_ is ElementMatch!16077) (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))) (= (c!1102519 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292))))) (h!70856 s!2326))))))

(assert (=> d!1921842 (= (derivationStepZipperDown!1325 (ite c!1102672 (regOne!32667 (regOne!32667 (regOne!32666 r!7292))) (regOne!32666 (regOne!32667 (regOne!32666 r!7292)))) (ite c!1102672 lt!2332109 (Context!10923 call!508751)) (h!70856 s!2326)) e!3738581)))

(assert (= (and d!1921842 c!1102930) b!6133937))

(assert (= (and d!1921842 (not c!1102930)) b!6133941))

(assert (= (and b!6133941 c!1102933) b!6133944))

(assert (= (and b!6133941 (not c!1102933)) b!6133938))

(assert (= (and b!6133938 res!2542019) b!6133942))

(assert (= (and b!6133938 c!1102931) b!6133943))

(assert (= (and b!6133938 (not c!1102931)) b!6133934))

(assert (= (and b!6133934 c!1102929) b!6133939))

(assert (= (and b!6133934 (not c!1102929)) b!6133940))

(assert (= (and b!6133940 c!1102932) b!6133935))

(assert (= (and b!6133940 (not c!1102932)) b!6133936))

(assert (= (or b!6133939 b!6133935) bm!508911))

(assert (= (or b!6133939 b!6133935) bm!508913))

(assert (= (or b!6133943 bm!508911) bm!508909))

(assert (= (or b!6133943 bm!508913) bm!508914))

(assert (= (or b!6133944 bm!508914) bm!508912))

(assert (= (or b!6133944 b!6133943) bm!508910))

(declare-fun m!6976830 () Bool)

(assert (=> b!6133937 m!6976830))

(declare-fun m!6976832 () Bool)

(assert (=> b!6133942 m!6976832))

(declare-fun m!6976834 () Bool)

(assert (=> bm!508912 m!6976834))

(declare-fun m!6976836 () Bool)

(assert (=> bm!508910 m!6976836))

(declare-fun m!6976838 () Bool)

(assert (=> bm!508909 m!6976838))

(assert (=> bm!508745 d!1921842))

(declare-fun d!1921844 () Bool)

(assert (=> d!1921844 true))

(assert (=> d!1921844 true))

(declare-fun res!2542022 () Bool)

(assert (=> d!1921844 (= (choose!45571 lambda!334101) res!2542022)))

(assert (=> d!1921446 d!1921844))

(declare-fun d!1921846 () Bool)

(assert (=> d!1921846 (= (Exists!3147 lambda!334146) (choose!45571 lambda!334146))))

(declare-fun bs!1521411 () Bool)

(assert (= bs!1521411 d!1921846))

(declare-fun m!6976840 () Bool)

(assert (=> bs!1521411 m!6976840))

(assert (=> d!1921450 d!1921846))

(declare-fun d!1921848 () Bool)

(assert (=> d!1921848 (= (Exists!3147 lambda!334147) (choose!45571 lambda!334147))))

(declare-fun bs!1521412 () Bool)

(assert (= bs!1521412 d!1921848))

(declare-fun m!6976842 () Bool)

(assert (=> bs!1521412 m!6976842))

(assert (=> d!1921450 d!1921848))

(declare-fun bs!1521413 () Bool)

(declare-fun d!1921850 () Bool)

(assert (= bs!1521413 (and d!1921850 d!1921788)))

(declare-fun lambda!334221 () Int)

(assert (=> bs!1521413 (= lambda!334221 lambda!334208)))

(declare-fun bs!1521414 () Bool)

(assert (= bs!1521414 (and d!1921850 d!1921450)))

(assert (=> bs!1521414 (= lambda!334221 lambda!334146)))

(declare-fun bs!1521415 () Bool)

(assert (= bs!1521415 (and d!1921850 d!1921448)))

(assert (=> bs!1521415 (= lambda!334221 lambda!334141)))

(declare-fun bs!1521416 () Bool)

(assert (= bs!1521416 (and d!1921850 b!6132988)))

(assert (=> bs!1521416 (not (= lambda!334221 lambda!334155))))

(declare-fun bs!1521417 () Bool)

(assert (= bs!1521417 (and d!1921850 b!6132400)))

(assert (=> bs!1521417 (not (= lambda!334221 lambda!334102))))

(declare-fun bs!1521418 () Bool)

(assert (= bs!1521418 (and d!1921850 b!6133900)))

(assert (=> bs!1521418 (not (= lambda!334221 lambda!334212))))

(declare-fun bs!1521419 () Bool)

(assert (= bs!1521419 (and d!1921850 b!6132995)))

(assert (=> bs!1521419 (not (= lambda!334221 lambda!334156))))

(declare-fun bs!1521420 () Bool)

(assert (= bs!1521420 (and d!1921850 b!6133907)))

(assert (=> bs!1521420 (not (= lambda!334221 lambda!334213))))

(assert (=> bs!1521417 (= lambda!334221 lambda!334101)))

(assert (=> bs!1521414 (not (= lambda!334221 lambda!334147))))

(assert (=> d!1921850 true))

(assert (=> d!1921850 true))

(assert (=> d!1921850 true))

(declare-fun bs!1521421 () Bool)

(assert (= bs!1521421 d!1921850))

(declare-fun lambda!334222 () Int)

(assert (=> bs!1521421 (not (= lambda!334222 lambda!334221))))

(assert (=> bs!1521413 (not (= lambda!334222 lambda!334208))))

(assert (=> bs!1521414 (not (= lambda!334222 lambda!334146))))

(assert (=> bs!1521415 (not (= lambda!334222 lambda!334141))))

(assert (=> bs!1521416 (not (= lambda!334222 lambda!334155))))

(assert (=> bs!1521417 (= lambda!334222 lambda!334102)))

(assert (=> bs!1521418 (not (= lambda!334222 lambda!334212))))

(assert (=> bs!1521419 (= lambda!334222 lambda!334156)))

(assert (=> bs!1521420 (= (and (= (regOne!32666 r!7292) (regOne!32666 (regTwo!32667 r!7292))) (= (regTwo!32666 r!7292) (regTwo!32666 (regTwo!32667 r!7292)))) (= lambda!334222 lambda!334213))))

(assert (=> bs!1521417 (not (= lambda!334222 lambda!334101))))

(assert (=> bs!1521414 (= lambda!334222 lambda!334147)))

(assert (=> d!1921850 true))

(assert (=> d!1921850 true))

(assert (=> d!1921850 true))

(assert (=> d!1921850 (= (Exists!3147 lambda!334221) (Exists!3147 lambda!334222))))

(assert (=> d!1921850 true))

(declare-fun _$90!1836 () Unit!157463)

(assert (=> d!1921850 (= (choose!45574 (regOne!32666 r!7292) (regTwo!32666 r!7292) s!2326) _$90!1836)))

(declare-fun m!6976844 () Bool)

(assert (=> bs!1521421 m!6976844))

(declare-fun m!6976846 () Bool)

(assert (=> bs!1521421 m!6976846))

(assert (=> d!1921450 d!1921850))

(assert (=> d!1921450 d!1921786))

(assert (=> d!1921440 d!1921782))

(declare-fun d!1921852 () Bool)

(declare-fun e!3738587 () Bool)

(assert (=> d!1921852 e!3738587))

(declare-fun c!1102936 () Bool)

(assert (=> d!1921852 (= c!1102936 ((_ is EmptyExpr!16077) (regOne!32666 r!7292)))))

(declare-fun lt!2332237 () Bool)

(declare-fun e!3738592 () Bool)

(assert (=> d!1921852 (= lt!2332237 e!3738592)))

(declare-fun c!1102934 () Bool)

(assert (=> d!1921852 (= c!1102934 (isEmpty!36353 Nil!64408))))

(assert (=> d!1921852 (validRegex!7813 (regOne!32666 r!7292))))

(assert (=> d!1921852 (= (matchR!8260 (regOne!32666 r!7292) Nil!64408) lt!2332237)))

(declare-fun b!6133953 () Bool)

(declare-fun e!3738589 () Bool)

(assert (=> b!6133953 (= e!3738589 (not (= (head!12676 Nil!64408) (c!1102519 (regOne!32666 r!7292)))))))

(declare-fun b!6133954 () Bool)

(declare-fun e!3738591 () Bool)

(declare-fun e!3738590 () Bool)

(assert (=> b!6133954 (= e!3738591 e!3738590)))

(declare-fun res!2542033 () Bool)

(assert (=> b!6133954 (=> (not res!2542033) (not e!3738590))))

(assert (=> b!6133954 (= res!2542033 (not lt!2332237))))

(declare-fun b!6133955 () Bool)

(declare-fun res!2542031 () Bool)

(assert (=> b!6133955 (=> res!2542031 e!3738591)))

(declare-fun e!3738588 () Bool)

(assert (=> b!6133955 (= res!2542031 e!3738588)))

(declare-fun res!2542038 () Bool)

(assert (=> b!6133955 (=> (not res!2542038) (not e!3738588))))

(assert (=> b!6133955 (= res!2542038 lt!2332237)))

(declare-fun b!6133956 () Bool)

(declare-fun res!2542034 () Bool)

(assert (=> b!6133956 (=> res!2542034 e!3738589)))

(assert (=> b!6133956 (= res!2542034 (not (isEmpty!36353 (tail!11761 Nil!64408))))))

(declare-fun b!6133957 () Bool)

(declare-fun res!2542036 () Bool)

(assert (=> b!6133957 (=> res!2542036 e!3738591)))

(assert (=> b!6133957 (= res!2542036 (not ((_ is ElementMatch!16077) (regOne!32666 r!7292))))))

(declare-fun e!3738586 () Bool)

(assert (=> b!6133957 (= e!3738586 e!3738591)))

(declare-fun b!6133958 () Bool)

(assert (=> b!6133958 (= e!3738587 e!3738586)))

(declare-fun c!1102935 () Bool)

(assert (=> b!6133958 (= c!1102935 ((_ is EmptyLang!16077) (regOne!32666 r!7292)))))

(declare-fun b!6133959 () Bool)

(assert (=> b!6133959 (= e!3738592 (nullable!6070 (regOne!32666 r!7292)))))

(declare-fun b!6133960 () Bool)

(declare-fun res!2542037 () Bool)

(assert (=> b!6133960 (=> (not res!2542037) (not e!3738588))))

(assert (=> b!6133960 (= res!2542037 (isEmpty!36353 (tail!11761 Nil!64408)))))

(declare-fun b!6133961 () Bool)

(assert (=> b!6133961 (= e!3738592 (matchR!8260 (derivativeStep!4797 (regOne!32666 r!7292) (head!12676 Nil!64408)) (tail!11761 Nil!64408)))))

(declare-fun b!6133962 () Bool)

(assert (=> b!6133962 (= e!3738590 e!3738589)))

(declare-fun res!2542032 () Bool)

(assert (=> b!6133962 (=> res!2542032 e!3738589)))

(declare-fun call!508920 () Bool)

(assert (=> b!6133962 (= res!2542032 call!508920)))

(declare-fun b!6133963 () Bool)

(assert (=> b!6133963 (= e!3738587 (= lt!2332237 call!508920))))

(declare-fun bm!508915 () Bool)

(assert (=> bm!508915 (= call!508920 (isEmpty!36353 Nil!64408))))

(declare-fun b!6133964 () Bool)

(declare-fun res!2542035 () Bool)

(assert (=> b!6133964 (=> (not res!2542035) (not e!3738588))))

(assert (=> b!6133964 (= res!2542035 (not call!508920))))

(declare-fun b!6133965 () Bool)

(assert (=> b!6133965 (= e!3738586 (not lt!2332237))))

(declare-fun b!6133966 () Bool)

(assert (=> b!6133966 (= e!3738588 (= (head!12676 Nil!64408) (c!1102519 (regOne!32666 r!7292))))))

(assert (= (and d!1921852 c!1102934) b!6133959))

(assert (= (and d!1921852 (not c!1102934)) b!6133961))

(assert (= (and d!1921852 c!1102936) b!6133963))

(assert (= (and d!1921852 (not c!1102936)) b!6133958))

(assert (= (and b!6133958 c!1102935) b!6133965))

(assert (= (and b!6133958 (not c!1102935)) b!6133957))

(assert (= (and b!6133957 (not res!2542036)) b!6133955))

(assert (= (and b!6133955 res!2542038) b!6133964))

(assert (= (and b!6133964 res!2542035) b!6133960))

(assert (= (and b!6133960 res!2542037) b!6133966))

(assert (= (and b!6133955 (not res!2542031)) b!6133954))

(assert (= (and b!6133954 res!2542033) b!6133962))

(assert (= (and b!6133962 (not res!2542032)) b!6133956))

(assert (= (and b!6133956 (not res!2542034)) b!6133953))

(assert (= (or b!6133963 b!6133962 b!6133964) bm!508915))

(declare-fun m!6976848 () Bool)

(assert (=> b!6133961 m!6976848))

(assert (=> b!6133961 m!6976848))

(declare-fun m!6976850 () Bool)

(assert (=> b!6133961 m!6976850))

(declare-fun m!6976852 () Bool)

(assert (=> b!6133961 m!6976852))

(assert (=> b!6133961 m!6976850))

(assert (=> b!6133961 m!6976852))

(declare-fun m!6976854 () Bool)

(assert (=> b!6133961 m!6976854))

(assert (=> b!6133960 m!6976852))

(assert (=> b!6133960 m!6976852))

(declare-fun m!6976856 () Bool)

(assert (=> b!6133960 m!6976856))

(assert (=> b!6133953 m!6976848))

(assert (=> b!6133966 m!6976848))

(assert (=> b!6133959 m!6976712))

(declare-fun m!6976858 () Bool)

(assert (=> bm!508915 m!6976858))

(assert (=> b!6133956 m!6976852))

(assert (=> b!6133956 m!6976852))

(assert (=> b!6133956 m!6976856))

(assert (=> d!1921852 m!6976858))

(assert (=> d!1921852 m!6975968))

(assert (=> d!1921440 d!1921852))

(assert (=> d!1921440 d!1921786))

(declare-fun b!6133967 () Bool)

(declare-fun e!3738597 () Bool)

(declare-fun e!3738593 () Bool)

(assert (=> b!6133967 (= e!3738597 e!3738593)))

(declare-fun res!2542040 () Bool)

(assert (=> b!6133967 (=> (not res!2542040) (not e!3738593))))

(declare-fun call!508921 () Bool)

(assert (=> b!6133967 (= res!2542040 call!508921)))

(declare-fun bm!508916 () Bool)

(declare-fun c!1102937 () Bool)

(assert (=> bm!508916 (= call!508921 (validRegex!7813 (ite c!1102937 (regOne!32667 lt!2332201) (regOne!32666 lt!2332201))))))

(declare-fun b!6133968 () Bool)

(declare-fun res!2542042 () Bool)

(declare-fun e!3738599 () Bool)

(assert (=> b!6133968 (=> (not res!2542042) (not e!3738599))))

(assert (=> b!6133968 (= res!2542042 call!508921)))

(declare-fun e!3738598 () Bool)

(assert (=> b!6133968 (= e!3738598 e!3738599)))

(declare-fun b!6133969 () Bool)

(declare-fun e!3738596 () Bool)

(declare-fun call!508922 () Bool)

(assert (=> b!6133969 (= e!3738596 call!508922)))

(declare-fun c!1102938 () Bool)

(declare-fun bm!508917 () Bool)

(assert (=> bm!508917 (= call!508922 (validRegex!7813 (ite c!1102938 (reg!16406 lt!2332201) (ite c!1102937 (regTwo!32667 lt!2332201) (regTwo!32666 lt!2332201)))))))

(declare-fun d!1921854 () Bool)

(declare-fun res!2542041 () Bool)

(declare-fun e!3738594 () Bool)

(assert (=> d!1921854 (=> res!2542041 e!3738594)))

(assert (=> d!1921854 (= res!2542041 ((_ is ElementMatch!16077) lt!2332201))))

(assert (=> d!1921854 (= (validRegex!7813 lt!2332201) e!3738594)))

(declare-fun b!6133970 () Bool)

(declare-fun call!508923 () Bool)

(assert (=> b!6133970 (= e!3738593 call!508923)))

(declare-fun b!6133971 () Bool)

(declare-fun res!2542039 () Bool)

(assert (=> b!6133971 (=> res!2542039 e!3738597)))

(assert (=> b!6133971 (= res!2542039 (not ((_ is Concat!24922) lt!2332201)))))

(assert (=> b!6133971 (= e!3738598 e!3738597)))

(declare-fun b!6133972 () Bool)

(declare-fun e!3738595 () Bool)

(assert (=> b!6133972 (= e!3738595 e!3738596)))

(declare-fun res!2542043 () Bool)

(assert (=> b!6133972 (= res!2542043 (not (nullable!6070 (reg!16406 lt!2332201))))))

(assert (=> b!6133972 (=> (not res!2542043) (not e!3738596))))

(declare-fun b!6133973 () Bool)

(assert (=> b!6133973 (= e!3738595 e!3738598)))

(assert (=> b!6133973 (= c!1102937 ((_ is Union!16077) lt!2332201))))

(declare-fun bm!508918 () Bool)

(assert (=> bm!508918 (= call!508923 call!508922)))

(declare-fun b!6133974 () Bool)

(assert (=> b!6133974 (= e!3738594 e!3738595)))

(assert (=> b!6133974 (= c!1102938 ((_ is Star!16077) lt!2332201))))

(declare-fun b!6133975 () Bool)

(assert (=> b!6133975 (= e!3738599 call!508923)))

(assert (= (and d!1921854 (not res!2542041)) b!6133974))

(assert (= (and b!6133974 c!1102938) b!6133972))

(assert (= (and b!6133974 (not c!1102938)) b!6133973))

(assert (= (and b!6133972 res!2542043) b!6133969))

(assert (= (and b!6133973 c!1102937) b!6133968))

(assert (= (and b!6133973 (not c!1102937)) b!6133971))

(assert (= (and b!6133968 res!2542042) b!6133975))

(assert (= (and b!6133971 (not res!2542039)) b!6133967))

(assert (= (and b!6133967 res!2542040) b!6133970))

(assert (= (or b!6133975 b!6133970) bm!508918))

(assert (= (or b!6133968 b!6133967) bm!508916))

(assert (= (or b!6133969 bm!508918) bm!508917))

(declare-fun m!6976860 () Bool)

(assert (=> bm!508916 m!6976860))

(declare-fun m!6976862 () Bool)

(assert (=> bm!508917 m!6976862))

(declare-fun m!6976864 () Bool)

(assert (=> b!6133972 m!6976864))

(assert (=> d!1921480 d!1921854))

(declare-fun d!1921856 () Bool)

(declare-fun res!2542044 () Bool)

(declare-fun e!3738600 () Bool)

(assert (=> d!1921856 (=> res!2542044 e!3738600)))

(assert (=> d!1921856 (= res!2542044 ((_ is Nil!64406) (exprs!5961 (h!70855 zl!343))))))

(assert (=> d!1921856 (= (forall!15198 (exprs!5961 (h!70855 zl!343)) lambda!334160) e!3738600)))

(declare-fun b!6133976 () Bool)

(declare-fun e!3738601 () Bool)

(assert (=> b!6133976 (= e!3738600 e!3738601)))

(declare-fun res!2542045 () Bool)

(assert (=> b!6133976 (=> (not res!2542045) (not e!3738601))))

(assert (=> b!6133976 (= res!2542045 (dynLambda!25376 lambda!334160 (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6133977 () Bool)

(assert (=> b!6133977 (= e!3738601 (forall!15198 (t!378001 (exprs!5961 (h!70855 zl!343))) lambda!334160))))

(assert (= (and d!1921856 (not res!2542044)) b!6133976))

(assert (= (and b!6133976 res!2542045) b!6133977))

(declare-fun b_lambda!233485 () Bool)

(assert (=> (not b_lambda!233485) (not b!6133976)))

(declare-fun m!6976866 () Bool)

(assert (=> b!6133976 m!6976866))

(declare-fun m!6976868 () Bool)

(assert (=> b!6133977 m!6976868))

(assert (=> d!1921480 d!1921856))

(assert (=> bm!508755 d!1921818))

(declare-fun d!1921858 () Bool)

(assert (=> d!1921858 true))

(assert (=> d!1921858 true))

(declare-fun res!2542046 () Bool)

(assert (=> d!1921858 (= (choose!45571 lambda!334102) res!2542046)))

(assert (=> d!1921444 d!1921858))

(declare-fun bm!508919 () Bool)

(declare-fun call!508926 () List!64530)

(declare-fun c!1102939 () Bool)

(declare-fun c!1102941 () Bool)

(assert (=> bm!508919 (= call!508926 ($colon$colon!1954 (exprs!5961 (ite c!1102662 lt!2332109 (Context!10923 call!508739))) (ite (or c!1102941 c!1102939) (regTwo!32666 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))) (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))))))))

(declare-fun b!6133978 () Bool)

(declare-fun e!3738606 () (InoxSet Context!10922))

(declare-fun e!3738604 () (InoxSet Context!10922))

(assert (=> b!6133978 (= e!3738606 e!3738604)))

(assert (=> b!6133978 (= c!1102939 ((_ is Concat!24922) (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))))))

(declare-fun b!6133979 () Bool)

(declare-fun e!3738605 () (InoxSet Context!10922))

(declare-fun call!508927 () (InoxSet Context!10922))

(assert (=> b!6133979 (= e!3738605 call!508927)))

(declare-fun b!6133980 () Bool)

(assert (=> b!6133980 (= e!3738605 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6133981 () Bool)

(declare-fun e!3738607 () (InoxSet Context!10922))

(assert (=> b!6133981 (= e!3738607 (store ((as const (Array Context!10922 Bool)) false) (ite c!1102662 lt!2332109 (Context!10923 call!508739)) true))))

(declare-fun call!508928 () (InoxSet Context!10922))

(declare-fun c!1102943 () Bool)

(declare-fun bm!508920 () Bool)

(assert (=> bm!508920 (= call!508928 (derivationStepZipperDown!1325 (ite c!1102943 (regOne!32667 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))) (regOne!32666 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))))) (ite c!1102943 (ite c!1102662 lt!2332109 (Context!10923 call!508739)) (Context!10923 call!508926)) (h!70856 s!2326)))))

(declare-fun b!6133982 () Bool)

(declare-fun e!3738603 () Bool)

(assert (=> b!6133982 (= c!1102941 e!3738603)))

(declare-fun res!2542047 () Bool)

(assert (=> b!6133982 (=> (not res!2542047) (not e!3738603))))

(assert (=> b!6133982 (= res!2542047 ((_ is Concat!24922) (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))))))

(declare-fun e!3738602 () (InoxSet Context!10922))

(assert (=> b!6133982 (= e!3738602 e!3738606)))

(declare-fun bm!508922 () Bool)

(declare-fun call!508929 () List!64530)

(declare-fun call!508924 () (InoxSet Context!10922))

(assert (=> bm!508922 (= call!508924 (derivationStepZipperDown!1325 (ite c!1102943 (regTwo!32667 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))) (ite c!1102941 (regTwo!32666 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))) (ite c!1102939 (regOne!32666 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))) (reg!16406 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))))))) (ite (or c!1102943 c!1102941) (ite c!1102662 lt!2332109 (Context!10923 call!508739)) (Context!10923 call!508929)) (h!70856 s!2326)))))

(declare-fun b!6133983 () Bool)

(assert (=> b!6133983 (= e!3738604 call!508927)))

(declare-fun bm!508923 () Bool)

(declare-fun call!508925 () (InoxSet Context!10922))

(assert (=> bm!508923 (= call!508927 call!508925)))

(declare-fun b!6133984 () Bool)

(declare-fun c!1102942 () Bool)

(assert (=> b!6133984 (= c!1102942 ((_ is Star!16077) (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))))))

(assert (=> b!6133984 (= e!3738604 e!3738605)))

(declare-fun bm!508924 () Bool)

(assert (=> bm!508924 (= call!508925 call!508924)))

(declare-fun b!6133985 () Bool)

(assert (=> b!6133985 (= e!3738607 e!3738602)))

(assert (=> b!6133985 (= c!1102943 ((_ is Union!16077) (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))))))

(declare-fun b!6133986 () Bool)

(assert (=> b!6133986 (= e!3738603 (nullable!6070 (regOne!32666 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))))))))

(declare-fun b!6133987 () Bool)

(assert (=> b!6133987 (= e!3738606 ((_ map or) call!508928 call!508925))))

(declare-fun b!6133988 () Bool)

(assert (=> b!6133988 (= e!3738602 ((_ map or) call!508928 call!508924))))

(declare-fun bm!508921 () Bool)

(assert (=> bm!508921 (= call!508929 call!508926)))

(declare-fun c!1102940 () Bool)

(declare-fun d!1921860 () Bool)

(assert (=> d!1921860 (= c!1102940 (and ((_ is ElementMatch!16077) (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))) (= (c!1102519 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))) (h!70856 s!2326))))))

(assert (=> d!1921860 (= (derivationStepZipperDown!1325 (ite c!1102662 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343))))) (ite c!1102662 lt!2332109 (Context!10923 call!508739)) (h!70856 s!2326)) e!3738607)))

(assert (= (and d!1921860 c!1102940) b!6133981))

(assert (= (and d!1921860 (not c!1102940)) b!6133985))

(assert (= (and b!6133985 c!1102943) b!6133988))

(assert (= (and b!6133985 (not c!1102943)) b!6133982))

(assert (= (and b!6133982 res!2542047) b!6133986))

(assert (= (and b!6133982 c!1102941) b!6133987))

(assert (= (and b!6133982 (not c!1102941)) b!6133978))

(assert (= (and b!6133978 c!1102939) b!6133983))

(assert (= (and b!6133978 (not c!1102939)) b!6133984))

(assert (= (and b!6133984 c!1102942) b!6133979))

(assert (= (and b!6133984 (not c!1102942)) b!6133980))

(assert (= (or b!6133983 b!6133979) bm!508921))

(assert (= (or b!6133983 b!6133979) bm!508923))

(assert (= (or b!6133987 bm!508921) bm!508919))

(assert (= (or b!6133987 bm!508923) bm!508924))

(assert (= (or b!6133988 bm!508924) bm!508922))

(assert (= (or b!6133988 b!6133987) bm!508920))

(declare-fun m!6976870 () Bool)

(assert (=> b!6133981 m!6976870))

(declare-fun m!6976872 () Bool)

(assert (=> b!6133986 m!6976872))

(declare-fun m!6976874 () Bool)

(assert (=> bm!508922 m!6976874))

(declare-fun m!6976876 () Bool)

(assert (=> bm!508920 m!6976876))

(declare-fun m!6976878 () Bool)

(assert (=> bm!508919 m!6976878))

(assert (=> bm!508733 d!1921860))

(declare-fun d!1921862 () Bool)

(assert (=> d!1921862 (= (isEmpty!36353 (tail!11761 s!2326)) ((_ is Nil!64408) (tail!11761 s!2326)))))

(assert (=> b!6133032 d!1921862))

(assert (=> b!6133032 d!1921812))

(assert (=> bm!508758 d!1921818))

(declare-fun d!1921864 () Bool)

(assert (=> d!1921864 (= (isEmptyLang!1503 lt!2332155) ((_ is EmptyLang!16077) lt!2332155))))

(assert (=> b!6132751 d!1921864))

(assert (=> b!6133028 d!1921862))

(assert (=> b!6133028 d!1921812))

(declare-fun d!1921866 () Bool)

(assert (=> d!1921866 (= (nullable!6070 (reg!16406 r!7292)) (nullableFct!2034 (reg!16406 r!7292)))))

(declare-fun bs!1521422 () Bool)

(assert (= bs!1521422 d!1921866))

(declare-fun m!6976880 () Bool)

(assert (=> bs!1521422 m!6976880))

(assert (=> b!6133077 d!1921866))

(declare-fun d!1921868 () Bool)

(assert (=> d!1921868 (= (isEmpty!36348 (tail!11760 (unfocusZipperList!1498 zl!343))) ((_ is Nil!64406) (tail!11760 (unfocusZipperList!1498 zl!343))))))

(assert (=> b!6132743 d!1921868))

(declare-fun d!1921870 () Bool)

(assert (=> d!1921870 (= (tail!11760 (unfocusZipperList!1498 zl!343)) (t!378001 (unfocusZipperList!1498 zl!343)))))

(assert (=> b!6132743 d!1921870))

(declare-fun b!6133989 () Bool)

(declare-fun e!3738612 () Bool)

(declare-fun e!3738608 () Bool)

(assert (=> b!6133989 (= e!3738612 e!3738608)))

(declare-fun res!2542049 () Bool)

(assert (=> b!6133989 (=> (not res!2542049) (not e!3738608))))

(declare-fun call!508930 () Bool)

(assert (=> b!6133989 (= res!2542049 call!508930)))

(declare-fun bm!508925 () Bool)

(declare-fun c!1102944 () Bool)

(assert (=> bm!508925 (= call!508930 (validRegex!7813 (ite c!1102944 (regOne!32667 lt!2332195) (regOne!32666 lt!2332195))))))

(declare-fun b!6133990 () Bool)

(declare-fun res!2542051 () Bool)

(declare-fun e!3738614 () Bool)

(assert (=> b!6133990 (=> (not res!2542051) (not e!3738614))))

(assert (=> b!6133990 (= res!2542051 call!508930)))

(declare-fun e!3738613 () Bool)

(assert (=> b!6133990 (= e!3738613 e!3738614)))

(declare-fun b!6133991 () Bool)

(declare-fun e!3738611 () Bool)

(declare-fun call!508931 () Bool)

(assert (=> b!6133991 (= e!3738611 call!508931)))

(declare-fun bm!508926 () Bool)

(declare-fun c!1102945 () Bool)

(assert (=> bm!508926 (= call!508931 (validRegex!7813 (ite c!1102945 (reg!16406 lt!2332195) (ite c!1102944 (regTwo!32667 lt!2332195) (regTwo!32666 lt!2332195)))))))

(declare-fun d!1921872 () Bool)

(declare-fun res!2542050 () Bool)

(declare-fun e!3738609 () Bool)

(assert (=> d!1921872 (=> res!2542050 e!3738609)))

(assert (=> d!1921872 (= res!2542050 ((_ is ElementMatch!16077) lt!2332195))))

(assert (=> d!1921872 (= (validRegex!7813 lt!2332195) e!3738609)))

(declare-fun b!6133992 () Bool)

(declare-fun call!508932 () Bool)

(assert (=> b!6133992 (= e!3738608 call!508932)))

(declare-fun b!6133993 () Bool)

(declare-fun res!2542048 () Bool)

(assert (=> b!6133993 (=> res!2542048 e!3738612)))

(assert (=> b!6133993 (= res!2542048 (not ((_ is Concat!24922) lt!2332195)))))

(assert (=> b!6133993 (= e!3738613 e!3738612)))

(declare-fun b!6133994 () Bool)

(declare-fun e!3738610 () Bool)

(assert (=> b!6133994 (= e!3738610 e!3738611)))

(declare-fun res!2542052 () Bool)

(assert (=> b!6133994 (= res!2542052 (not (nullable!6070 (reg!16406 lt!2332195))))))

(assert (=> b!6133994 (=> (not res!2542052) (not e!3738611))))

(declare-fun b!6133995 () Bool)

(assert (=> b!6133995 (= e!3738610 e!3738613)))

(assert (=> b!6133995 (= c!1102944 ((_ is Union!16077) lt!2332195))))

(declare-fun bm!508927 () Bool)

(assert (=> bm!508927 (= call!508932 call!508931)))

(declare-fun b!6133996 () Bool)

(assert (=> b!6133996 (= e!3738609 e!3738610)))

(assert (=> b!6133996 (= c!1102945 ((_ is Star!16077) lt!2332195))))

(declare-fun b!6133997 () Bool)

(assert (=> b!6133997 (= e!3738614 call!508932)))

(assert (= (and d!1921872 (not res!2542050)) b!6133996))

(assert (= (and b!6133996 c!1102945) b!6133994))

(assert (= (and b!6133996 (not c!1102945)) b!6133995))

(assert (= (and b!6133994 res!2542052) b!6133991))

(assert (= (and b!6133995 c!1102944) b!6133990))

(assert (= (and b!6133995 (not c!1102944)) b!6133993))

(assert (= (and b!6133990 res!2542051) b!6133997))

(assert (= (and b!6133993 (not res!2542048)) b!6133989))

(assert (= (and b!6133989 res!2542049) b!6133992))

(assert (= (or b!6133997 b!6133992) bm!508927))

(assert (= (or b!6133990 b!6133989) bm!508925))

(assert (= (or b!6133991 bm!508927) bm!508926))

(declare-fun m!6976882 () Bool)

(assert (=> bm!508925 m!6976882))

(declare-fun m!6976884 () Bool)

(assert (=> bm!508926 m!6976884))

(declare-fun m!6976886 () Bool)

(assert (=> b!6133994 m!6976886))

(assert (=> d!1921464 d!1921872))

(assert (=> d!1921464 d!1921396))

(assert (=> d!1921464 d!1921404))

(declare-fun d!1921874 () Bool)

(assert (=> d!1921874 (= (isEmptyExpr!1494 lt!2332201) ((_ is EmptyExpr!16077) lt!2332201))))

(assert (=> b!6133104 d!1921874))

(declare-fun d!1921876 () Bool)

(assert (=> d!1921876 (= (head!12675 (unfocusZipperList!1498 zl!343)) (h!70854 (unfocusZipperList!1498 zl!343)))))

(assert (=> b!6132747 d!1921876))

(assert (=> d!1921460 d!1921458))

(assert (=> d!1921460 d!1921456))

(declare-fun d!1921878 () Bool)

(assert (=> d!1921878 (= (matchR!8260 r!7292 s!2326) (matchRSpec!3178 r!7292 s!2326))))

(assert (=> d!1921878 true))

(declare-fun _$88!4650 () Unit!157463)

(assert (=> d!1921878 (= (choose!45575 r!7292 s!2326) _$88!4650)))

(declare-fun bs!1521423 () Bool)

(assert (= bs!1521423 d!1921878))

(assert (=> bs!1521423 m!6975598))

(assert (=> bs!1521423 m!6975596))

(assert (=> d!1921460 d!1921878))

(assert (=> d!1921460 d!1921478))

(declare-fun d!1921880 () Bool)

(assert (=> d!1921880 (= (isEmpty!36348 (exprs!5961 (h!70855 zl!343))) ((_ is Nil!64406) (exprs!5961 (h!70855 zl!343))))))

(assert (=> b!6133108 d!1921880))

(declare-fun bs!1521424 () Bool)

(declare-fun b!6134000 () Bool)

(assert (= bs!1521424 (and b!6134000 d!1921850)))

(declare-fun lambda!334223 () Int)

(assert (=> bs!1521424 (not (= lambda!334223 lambda!334221))))

(declare-fun bs!1521425 () Bool)

(assert (= bs!1521425 (and b!6134000 d!1921788)))

(assert (=> bs!1521425 (not (= lambda!334223 lambda!334208))))

(declare-fun bs!1521426 () Bool)

(assert (= bs!1521426 (and b!6134000 d!1921450)))

(assert (=> bs!1521426 (not (= lambda!334223 lambda!334146))))

(declare-fun bs!1521427 () Bool)

(assert (= bs!1521427 (and b!6134000 d!1921448)))

(assert (=> bs!1521427 (not (= lambda!334223 lambda!334141))))

(declare-fun bs!1521428 () Bool)

(assert (= bs!1521428 (and b!6134000 b!6132988)))

(assert (=> bs!1521428 (= (and (= (reg!16406 (regOne!32667 r!7292)) (reg!16406 r!7292)) (= (regOne!32667 r!7292) r!7292)) (= lambda!334223 lambda!334155))))

(declare-fun bs!1521429 () Bool)

(assert (= bs!1521429 (and b!6134000 b!6132400)))

(assert (=> bs!1521429 (not (= lambda!334223 lambda!334102))))

(declare-fun bs!1521430 () Bool)

(assert (= bs!1521430 (and b!6134000 b!6133900)))

(assert (=> bs!1521430 (= (and (= (reg!16406 (regOne!32667 r!7292)) (reg!16406 (regTwo!32667 r!7292))) (= (regOne!32667 r!7292) (regTwo!32667 r!7292))) (= lambda!334223 lambda!334212))))

(declare-fun bs!1521431 () Bool)

(assert (= bs!1521431 (and b!6134000 b!6132995)))

(assert (=> bs!1521431 (not (= lambda!334223 lambda!334156))))

(declare-fun bs!1521432 () Bool)

(assert (= bs!1521432 (and b!6134000 b!6133907)))

(assert (=> bs!1521432 (not (= lambda!334223 lambda!334213))))

(assert (=> bs!1521424 (not (= lambda!334223 lambda!334222))))

(assert (=> bs!1521429 (not (= lambda!334223 lambda!334101))))

(assert (=> bs!1521426 (not (= lambda!334223 lambda!334147))))

(assert (=> b!6134000 true))

(assert (=> b!6134000 true))

(declare-fun bs!1521433 () Bool)

(declare-fun b!6134007 () Bool)

(assert (= bs!1521433 (and b!6134007 d!1921850)))

(declare-fun lambda!334224 () Int)

(assert (=> bs!1521433 (not (= lambda!334224 lambda!334221))))

(declare-fun bs!1521434 () Bool)

(assert (= bs!1521434 (and b!6134007 d!1921788)))

(assert (=> bs!1521434 (not (= lambda!334224 lambda!334208))))

(declare-fun bs!1521435 () Bool)

(assert (= bs!1521435 (and b!6134007 d!1921450)))

(assert (=> bs!1521435 (not (= lambda!334224 lambda!334146))))

(declare-fun bs!1521436 () Bool)

(assert (= bs!1521436 (and b!6134007 d!1921448)))

(assert (=> bs!1521436 (not (= lambda!334224 lambda!334141))))

(declare-fun bs!1521437 () Bool)

(assert (= bs!1521437 (and b!6134007 b!6132988)))

(assert (=> bs!1521437 (not (= lambda!334224 lambda!334155))))

(declare-fun bs!1521438 () Bool)

(assert (= bs!1521438 (and b!6134007 b!6134000)))

(assert (=> bs!1521438 (not (= lambda!334224 lambda!334223))))

(declare-fun bs!1521439 () Bool)

(assert (= bs!1521439 (and b!6134007 b!6132400)))

(assert (=> bs!1521439 (= (and (= (regOne!32666 (regOne!32667 r!7292)) (regOne!32666 r!7292)) (= (regTwo!32666 (regOne!32667 r!7292)) (regTwo!32666 r!7292))) (= lambda!334224 lambda!334102))))

(declare-fun bs!1521440 () Bool)

(assert (= bs!1521440 (and b!6134007 b!6133900)))

(assert (=> bs!1521440 (not (= lambda!334224 lambda!334212))))

(declare-fun bs!1521441 () Bool)

(assert (= bs!1521441 (and b!6134007 b!6132995)))

(assert (=> bs!1521441 (= (and (= (regOne!32666 (regOne!32667 r!7292)) (regOne!32666 r!7292)) (= (regTwo!32666 (regOne!32667 r!7292)) (regTwo!32666 r!7292))) (= lambda!334224 lambda!334156))))

(declare-fun bs!1521442 () Bool)

(assert (= bs!1521442 (and b!6134007 b!6133907)))

(assert (=> bs!1521442 (= (and (= (regOne!32666 (regOne!32667 r!7292)) (regOne!32666 (regTwo!32667 r!7292))) (= (regTwo!32666 (regOne!32667 r!7292)) (regTwo!32666 (regTwo!32667 r!7292)))) (= lambda!334224 lambda!334213))))

(assert (=> bs!1521433 (= (and (= (regOne!32666 (regOne!32667 r!7292)) (regOne!32666 r!7292)) (= (regTwo!32666 (regOne!32667 r!7292)) (regTwo!32666 r!7292))) (= lambda!334224 lambda!334222))))

(assert (=> bs!1521439 (not (= lambda!334224 lambda!334101))))

(assert (=> bs!1521435 (= (and (= (regOne!32666 (regOne!32667 r!7292)) (regOne!32666 r!7292)) (= (regTwo!32666 (regOne!32667 r!7292)) (regTwo!32666 r!7292))) (= lambda!334224 lambda!334147))))

(assert (=> b!6134007 true))

(assert (=> b!6134007 true))

(declare-fun call!508934 () Bool)

(declare-fun c!1102946 () Bool)

(declare-fun bm!508928 () Bool)

(assert (=> bm!508928 (= call!508934 (Exists!3147 (ite c!1102946 lambda!334223 lambda!334224)))))

(declare-fun d!1921882 () Bool)

(declare-fun c!1102948 () Bool)

(assert (=> d!1921882 (= c!1102948 ((_ is EmptyExpr!16077) (regOne!32667 r!7292)))))

(declare-fun e!3738620 () Bool)

(assert (=> d!1921882 (= (matchRSpec!3178 (regOne!32667 r!7292) s!2326) e!3738620)))

(declare-fun b!6133998 () Bool)

(declare-fun call!508933 () Bool)

(assert (=> b!6133998 (= e!3738620 call!508933)))

(declare-fun b!6133999 () Bool)

(declare-fun e!3738619 () Bool)

(assert (=> b!6133999 (= e!3738619 (matchRSpec!3178 (regTwo!32667 (regOne!32667 r!7292)) s!2326))))

(declare-fun e!3738617 () Bool)

(assert (=> b!6134000 (= e!3738617 call!508934)))

(declare-fun b!6134001 () Bool)

(declare-fun e!3738618 () Bool)

(declare-fun e!3738621 () Bool)

(assert (=> b!6134001 (= e!3738618 e!3738621)))

(assert (=> b!6134001 (= c!1102946 ((_ is Star!16077) (regOne!32667 r!7292)))))

(declare-fun b!6134002 () Bool)

(assert (=> b!6134002 (= e!3738618 e!3738619)))

(declare-fun res!2542054 () Bool)

(assert (=> b!6134002 (= res!2542054 (matchRSpec!3178 (regOne!32667 (regOne!32667 r!7292)) s!2326))))

(assert (=> b!6134002 (=> res!2542054 e!3738619)))

(declare-fun b!6134003 () Bool)

(declare-fun res!2542055 () Bool)

(assert (=> b!6134003 (=> res!2542055 e!3738617)))

(assert (=> b!6134003 (= res!2542055 call!508933)))

(assert (=> b!6134003 (= e!3738621 e!3738617)))

(declare-fun b!6134004 () Bool)

(declare-fun e!3738616 () Bool)

(assert (=> b!6134004 (= e!3738616 (= s!2326 (Cons!64408 (c!1102519 (regOne!32667 r!7292)) Nil!64408)))))

(declare-fun b!6134005 () Bool)

(declare-fun e!3738615 () Bool)

(assert (=> b!6134005 (= e!3738620 e!3738615)))

(declare-fun res!2542053 () Bool)

(assert (=> b!6134005 (= res!2542053 (not ((_ is EmptyLang!16077) (regOne!32667 r!7292))))))

(assert (=> b!6134005 (=> (not res!2542053) (not e!3738615))))

(declare-fun bm!508929 () Bool)

(assert (=> bm!508929 (= call!508933 (isEmpty!36353 s!2326))))

(declare-fun b!6134006 () Bool)

(declare-fun c!1102949 () Bool)

(assert (=> b!6134006 (= c!1102949 ((_ is ElementMatch!16077) (regOne!32667 r!7292)))))

(assert (=> b!6134006 (= e!3738615 e!3738616)))

(assert (=> b!6134007 (= e!3738621 call!508934)))

(declare-fun b!6134008 () Bool)

(declare-fun c!1102947 () Bool)

(assert (=> b!6134008 (= c!1102947 ((_ is Union!16077) (regOne!32667 r!7292)))))

(assert (=> b!6134008 (= e!3738616 e!3738618)))

(assert (= (and d!1921882 c!1102948) b!6133998))

(assert (= (and d!1921882 (not c!1102948)) b!6134005))

(assert (= (and b!6134005 res!2542053) b!6134006))

(assert (= (and b!6134006 c!1102949) b!6134004))

(assert (= (and b!6134006 (not c!1102949)) b!6134008))

(assert (= (and b!6134008 c!1102947) b!6134002))

(assert (= (and b!6134008 (not c!1102947)) b!6134001))

(assert (= (and b!6134002 (not res!2542054)) b!6133999))

(assert (= (and b!6134001 c!1102946) b!6134003))

(assert (= (and b!6134001 (not c!1102946)) b!6134007))

(assert (= (and b!6134003 (not res!2542055)) b!6134000))

(assert (= (or b!6134000 b!6134007) bm!508928))

(assert (= (or b!6133998 b!6134003) bm!508929))

(declare-fun m!6976888 () Bool)

(assert (=> bm!508928 m!6976888))

(declare-fun m!6976890 () Bool)

(assert (=> b!6133999 m!6976890))

(declare-fun m!6976892 () Bool)

(assert (=> b!6134002 m!6976892))

(assert (=> bm!508929 m!6976006))

(assert (=> b!6132990 d!1921882))

(declare-fun bs!1521443 () Bool)

(declare-fun d!1921884 () Bool)

(assert (= bs!1521443 (and d!1921884 d!1921748)))

(declare-fun lambda!334225 () Int)

(assert (=> bs!1521443 (= lambda!334225 lambda!334201)))

(declare-fun bs!1521444 () Bool)

(assert (= bs!1521444 (and d!1921884 d!1921770)))

(assert (=> bs!1521444 (= lambda!334225 lambda!334205)))

(declare-fun bs!1521445 () Bool)

(assert (= bs!1521445 (and d!1921884 d!1921798)))

(assert (=> bs!1521445 (= lambda!334225 lambda!334209)))

(declare-fun bs!1521446 () Bool)

(assert (= bs!1521446 (and d!1921884 d!1921750)))

(assert (=> bs!1521446 (= lambda!334225 lambda!334202)))

(declare-fun bs!1521447 () Bool)

(assert (= bs!1521447 (and d!1921884 d!1921828)))

(assert (=> bs!1521447 (= lambda!334225 lambda!334215)))

(assert (=> d!1921884 (= (nullableZipper!1858 lt!2332115) (exists!2424 lt!2332115 lambda!334225))))

(declare-fun bs!1521448 () Bool)

(assert (= bs!1521448 d!1921884))

(declare-fun m!6976894 () Bool)

(assert (=> bs!1521448 m!6976894))

(assert (=> b!6133113 d!1921884))

(declare-fun b!6134009 () Bool)

(declare-fun e!3738626 () Bool)

(declare-fun e!3738622 () Bool)

(assert (=> b!6134009 (= e!3738626 e!3738622)))

(declare-fun res!2542057 () Bool)

(assert (=> b!6134009 (=> (not res!2542057) (not e!3738622))))

(declare-fun call!508935 () Bool)

(assert (=> b!6134009 (= res!2542057 call!508935)))

(declare-fun c!1102950 () Bool)

(declare-fun bm!508930 () Bool)

(assert (=> bm!508930 (= call!508935 (validRegex!7813 (ite c!1102950 (regOne!32667 (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292))) (regOne!32666 (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292))))))))

(declare-fun b!6134010 () Bool)

(declare-fun res!2542059 () Bool)

(declare-fun e!3738628 () Bool)

(assert (=> b!6134010 (=> (not res!2542059) (not e!3738628))))

(assert (=> b!6134010 (= res!2542059 call!508935)))

(declare-fun e!3738627 () Bool)

(assert (=> b!6134010 (= e!3738627 e!3738628)))

(declare-fun b!6134011 () Bool)

(declare-fun e!3738625 () Bool)

(declare-fun call!508936 () Bool)

(assert (=> b!6134011 (= e!3738625 call!508936)))

(declare-fun bm!508931 () Bool)

(declare-fun c!1102951 () Bool)

(assert (=> bm!508931 (= call!508936 (validRegex!7813 (ite c!1102951 (reg!16406 (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292))) (ite c!1102950 (regTwo!32667 (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292))) (regTwo!32666 (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292)))))))))

(declare-fun d!1921886 () Bool)

(declare-fun res!2542058 () Bool)

(declare-fun e!3738623 () Bool)

(assert (=> d!1921886 (=> res!2542058 e!3738623)))

(assert (=> d!1921886 (= res!2542058 ((_ is ElementMatch!16077) (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292))))))

(assert (=> d!1921886 (= (validRegex!7813 (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292))) e!3738623)))

(declare-fun b!6134012 () Bool)

(declare-fun call!508937 () Bool)

(assert (=> b!6134012 (= e!3738622 call!508937)))

(declare-fun b!6134013 () Bool)

(declare-fun res!2542056 () Bool)

(assert (=> b!6134013 (=> res!2542056 e!3738626)))

(assert (=> b!6134013 (= res!2542056 (not ((_ is Concat!24922) (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292)))))))

(assert (=> b!6134013 (= e!3738627 e!3738626)))

(declare-fun b!6134014 () Bool)

(declare-fun e!3738624 () Bool)

(assert (=> b!6134014 (= e!3738624 e!3738625)))

(declare-fun res!2542060 () Bool)

(assert (=> b!6134014 (= res!2542060 (not (nullable!6070 (reg!16406 (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292))))))))

(assert (=> b!6134014 (=> (not res!2542060) (not e!3738625))))

(declare-fun b!6134015 () Bool)

(assert (=> b!6134015 (= e!3738624 e!3738627)))

(assert (=> b!6134015 (= c!1102950 ((_ is Union!16077) (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292))))))

(declare-fun bm!508932 () Bool)

(assert (=> bm!508932 (= call!508937 call!508936)))

(declare-fun b!6134016 () Bool)

(assert (=> b!6134016 (= e!3738623 e!3738624)))

(assert (=> b!6134016 (= c!1102951 ((_ is Star!16077) (ite c!1102710 (regOne!32667 r!7292) (regOne!32666 r!7292))))))

(declare-fun b!6134017 () Bool)

(assert (=> b!6134017 (= e!3738628 call!508937)))

(assert (= (and d!1921886 (not res!2542058)) b!6134016))

(assert (= (and b!6134016 c!1102951) b!6134014))

(assert (= (and b!6134016 (not c!1102951)) b!6134015))

(assert (= (and b!6134014 res!2542060) b!6134011))

(assert (= (and b!6134015 c!1102950) b!6134010))

(assert (= (and b!6134015 (not c!1102950)) b!6134013))

(assert (= (and b!6134010 res!2542059) b!6134017))

(assert (= (and b!6134013 (not res!2542056)) b!6134009))

(assert (= (and b!6134009 res!2542057) b!6134012))

(assert (= (or b!6134017 b!6134012) bm!508932))

(assert (= (or b!6134010 b!6134009) bm!508930))

(assert (= (or b!6134011 bm!508932) bm!508931))

(declare-fun m!6976896 () Bool)

(assert (=> bm!508930 m!6976896))

(declare-fun m!6976898 () Bool)

(assert (=> bm!508931 m!6976898))

(declare-fun m!6976900 () Bool)

(assert (=> b!6134014 m!6976900))

(assert (=> bm!508765 d!1921886))

(assert (=> b!6132786 d!1921410))

(declare-fun d!1921888 () Bool)

(assert (=> d!1921888 (= ($colon$colon!1954 (exprs!5961 lt!2332109) (ite (or c!1102665 c!1102663) (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (regTwo!32667 (regOne!32666 r!7292)))) (Cons!64406 (ite (or c!1102665 c!1102663) (regTwo!32666 (regTwo!32667 (regOne!32666 r!7292))) (regTwo!32667 (regOne!32666 r!7292))) (exprs!5961 lt!2332109)))))

(assert (=> bm!508738 d!1921888))

(assert (=> b!6133038 d!1921736))

(assert (=> d!1921468 d!1921762))

(assert (=> d!1921466 d!1921470))

(assert (=> d!1921466 d!1921468))

(declare-fun e!3738629 () Bool)

(declare-fun d!1921890 () Bool)

(assert (=> d!1921890 (= (matchZipper!2089 ((_ map or) lt!2332102 lt!2332103) (t!378003 s!2326)) e!3738629)))

(declare-fun res!2542061 () Bool)

(assert (=> d!1921890 (=> res!2542061 e!3738629)))

(assert (=> d!1921890 (= res!2542061 (matchZipper!2089 lt!2332102 (t!378003 s!2326)))))

(assert (=> d!1921890 true))

(declare-fun _$48!1621 () Unit!157463)

(assert (=> d!1921890 (= (choose!45576 lt!2332102 lt!2332103 (t!378003 s!2326)) _$48!1621)))

(declare-fun b!6134018 () Bool)

(assert (=> b!6134018 (= e!3738629 (matchZipper!2089 lt!2332103 (t!378003 s!2326)))))

(assert (= (and d!1921890 (not res!2542061)) b!6134018))

(assert (=> d!1921890 m!6975612))

(assert (=> d!1921890 m!6975580))

(assert (=> b!6134018 m!6975626))

(assert (=> d!1921466 d!1921890))

(assert (=> d!1921472 d!1921762))

(declare-fun d!1921892 () Bool)

(declare-fun res!2542066 () Bool)

(declare-fun e!3738634 () Bool)

(assert (=> d!1921892 (=> res!2542066 e!3738634)))

(assert (=> d!1921892 (= res!2542066 ((_ is Nil!64407) lt!2332143))))

(assert (=> d!1921892 (= (noDuplicate!1923 lt!2332143) e!3738634)))

(declare-fun b!6134023 () Bool)

(declare-fun e!3738635 () Bool)

(assert (=> b!6134023 (= e!3738634 e!3738635)))

(declare-fun res!2542067 () Bool)

(assert (=> b!6134023 (=> (not res!2542067) (not e!3738635))))

(declare-fun contains!20038 (List!64531 Context!10922) Bool)

(assert (=> b!6134023 (= res!2542067 (not (contains!20038 (t!378002 lt!2332143) (h!70855 lt!2332143))))))

(declare-fun b!6134024 () Bool)

(assert (=> b!6134024 (= e!3738635 (noDuplicate!1923 (t!378002 lt!2332143)))))

(assert (= (and d!1921892 (not res!2542066)) b!6134023))

(assert (= (and b!6134023 res!2542067) b!6134024))

(declare-fun m!6976902 () Bool)

(assert (=> b!6134023 m!6976902))

(declare-fun m!6976904 () Bool)

(assert (=> b!6134024 m!6976904))

(assert (=> d!1921394 d!1921892))

(declare-fun d!1921894 () Bool)

(declare-fun e!3738644 () Bool)

(assert (=> d!1921894 e!3738644))

(declare-fun res!2542073 () Bool)

(assert (=> d!1921894 (=> (not res!2542073) (not e!3738644))))

(declare-fun res!2542072 () List!64531)

(assert (=> d!1921894 (= res!2542073 (noDuplicate!1923 res!2542072))))

(declare-fun e!3738642 () Bool)

(assert (=> d!1921894 e!3738642))

(assert (=> d!1921894 (= (choose!45564 z!1189) res!2542072)))

(declare-fun b!6134032 () Bool)

(declare-fun e!3738643 () Bool)

(declare-fun tp!1714034 () Bool)

(assert (=> b!6134032 (= e!3738643 tp!1714034)))

(declare-fun b!6134031 () Bool)

(declare-fun tp!1714033 () Bool)

(assert (=> b!6134031 (= e!3738642 (and (inv!83439 (h!70855 res!2542072)) e!3738643 tp!1714033))))

(declare-fun b!6134033 () Bool)

(assert (=> b!6134033 (= e!3738644 (= (content!11976 res!2542072) z!1189))))

(assert (= b!6134031 b!6134032))

(assert (= (and d!1921894 ((_ is Cons!64407) res!2542072)) b!6134031))

(assert (= (and d!1921894 res!2542073) b!6134033))

(declare-fun m!6976906 () Bool)

(assert (=> d!1921894 m!6976906))

(declare-fun m!6976908 () Bool)

(assert (=> b!6134031 m!6976908))

(declare-fun m!6976910 () Bool)

(assert (=> b!6134033 m!6976910))

(assert (=> d!1921394 d!1921894))

(declare-fun d!1921896 () Bool)

(declare-fun c!1102952 () Bool)

(assert (=> d!1921896 (= c!1102952 (isEmpty!36353 (tail!11761 (t!378003 s!2326))))))

(declare-fun e!3738645 () Bool)

(assert (=> d!1921896 (= (matchZipper!2089 (derivationStepZipper!2050 lt!2332105 (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))) e!3738645)))

(declare-fun b!6134034 () Bool)

(assert (=> b!6134034 (= e!3738645 (nullableZipper!1858 (derivationStepZipper!2050 lt!2332105 (head!12676 (t!378003 s!2326)))))))

(declare-fun b!6134035 () Bool)

(assert (=> b!6134035 (= e!3738645 (matchZipper!2089 (derivationStepZipper!2050 (derivationStepZipper!2050 lt!2332105 (head!12676 (t!378003 s!2326))) (head!12676 (tail!11761 (t!378003 s!2326)))) (tail!11761 (tail!11761 (t!378003 s!2326)))))))

(assert (= (and d!1921896 c!1102952) b!6134034))

(assert (= (and d!1921896 (not c!1102952)) b!6134035))

(assert (=> d!1921896 m!6976034))

(assert (=> d!1921896 m!6976622))

(assert (=> b!6134034 m!6976046))

(declare-fun m!6976912 () Bool)

(assert (=> b!6134034 m!6976912))

(assert (=> b!6134035 m!6976034))

(assert (=> b!6134035 m!6976626))

(assert (=> b!6134035 m!6976046))

(assert (=> b!6134035 m!6976626))

(declare-fun m!6976914 () Bool)

(assert (=> b!6134035 m!6976914))

(assert (=> b!6134035 m!6976034))

(assert (=> b!6134035 m!6976630))

(assert (=> b!6134035 m!6976914))

(assert (=> b!6134035 m!6976630))

(declare-fun m!6976916 () Bool)

(assert (=> b!6134035 m!6976916))

(assert (=> b!6133051 d!1921896))

(declare-fun bs!1521449 () Bool)

(declare-fun d!1921898 () Bool)

(assert (= bs!1521449 (and d!1921898 b!6132399)))

(declare-fun lambda!334226 () Int)

(assert (=> bs!1521449 (= (= (head!12676 (t!378003 s!2326)) (h!70856 s!2326)) (= lambda!334226 lambda!334103))))

(declare-fun bs!1521450 () Bool)

(assert (= bs!1521450 (and d!1921898 d!1921742)))

(assert (=> bs!1521450 (= lambda!334226 lambda!334198)))

(declare-fun bs!1521451 () Bool)

(assert (= bs!1521451 (and d!1921898 d!1921756)))

(assert (=> bs!1521451 (= lambda!334226 lambda!334203)))

(declare-fun bs!1521452 () Bool)

(assert (= bs!1521452 (and d!1921898 d!1921826)))

(assert (=> bs!1521452 (= lambda!334226 lambda!334214)))

(assert (=> d!1921898 true))

(assert (=> d!1921898 (= (derivationStepZipper!2050 lt!2332105 (head!12676 (t!378003 s!2326))) (flatMap!1582 lt!2332105 lambda!334226))))

(declare-fun bs!1521453 () Bool)

(assert (= bs!1521453 d!1921898))

(declare-fun m!6976918 () Bool)

(assert (=> bs!1521453 m!6976918))

(assert (=> b!6133051 d!1921898))

(assert (=> b!6133051 d!1921744))

(assert (=> b!6133051 d!1921746))

(declare-fun d!1921900 () Bool)

(declare-fun c!1102953 () Bool)

(assert (=> d!1921900 (= c!1102953 (isEmpty!36353 (tail!11761 (t!378003 s!2326))))))

(declare-fun e!3738646 () Bool)

(assert (=> d!1921900 (= (matchZipper!2089 (derivationStepZipper!2050 lt!2332103 (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))) e!3738646)))

(declare-fun b!6134036 () Bool)

(assert (=> b!6134036 (= e!3738646 (nullableZipper!1858 (derivationStepZipper!2050 lt!2332103 (head!12676 (t!378003 s!2326)))))))

(declare-fun b!6134037 () Bool)

(assert (=> b!6134037 (= e!3738646 (matchZipper!2089 (derivationStepZipper!2050 (derivationStepZipper!2050 lt!2332103 (head!12676 (t!378003 s!2326))) (head!12676 (tail!11761 (t!378003 s!2326)))) (tail!11761 (tail!11761 (t!378003 s!2326)))))))

(assert (= (and d!1921900 c!1102953) b!6134036))

(assert (= (and d!1921900 (not c!1102953)) b!6134037))

(assert (=> d!1921900 m!6976034))

(assert (=> d!1921900 m!6976622))

(assert (=> b!6134036 m!6976054))

(declare-fun m!6976920 () Bool)

(assert (=> b!6134036 m!6976920))

(assert (=> b!6134037 m!6976034))

(assert (=> b!6134037 m!6976626))

(assert (=> b!6134037 m!6976054))

(assert (=> b!6134037 m!6976626))

(declare-fun m!6976922 () Bool)

(assert (=> b!6134037 m!6976922))

(assert (=> b!6134037 m!6976034))

(assert (=> b!6134037 m!6976630))

(assert (=> b!6134037 m!6976922))

(assert (=> b!6134037 m!6976630))

(declare-fun m!6976924 () Bool)

(assert (=> b!6134037 m!6976924))

(assert (=> b!6133053 d!1921900))

(declare-fun bs!1521454 () Bool)

(declare-fun d!1921902 () Bool)

(assert (= bs!1521454 (and d!1921902 d!1921742)))

(declare-fun lambda!334227 () Int)

(assert (=> bs!1521454 (= lambda!334227 lambda!334198)))

(declare-fun bs!1521455 () Bool)

(assert (= bs!1521455 (and d!1921902 b!6132399)))

(assert (=> bs!1521455 (= (= (head!12676 (t!378003 s!2326)) (h!70856 s!2326)) (= lambda!334227 lambda!334103))))

(declare-fun bs!1521456 () Bool)

(assert (= bs!1521456 (and d!1921902 d!1921826)))

(assert (=> bs!1521456 (= lambda!334227 lambda!334214)))

(declare-fun bs!1521457 () Bool)

(assert (= bs!1521457 (and d!1921902 d!1921898)))

(assert (=> bs!1521457 (= lambda!334227 lambda!334226)))

(declare-fun bs!1521458 () Bool)

(assert (= bs!1521458 (and d!1921902 d!1921756)))

(assert (=> bs!1521458 (= lambda!334227 lambda!334203)))

(assert (=> d!1921902 true))

(assert (=> d!1921902 (= (derivationStepZipper!2050 lt!2332103 (head!12676 (t!378003 s!2326))) (flatMap!1582 lt!2332103 lambda!334227))))

(declare-fun bs!1521459 () Bool)

(assert (= bs!1521459 d!1921902))

(declare-fun m!6976926 () Bool)

(assert (=> bs!1521459 m!6976926))

(assert (=> b!6133053 d!1921902))

(assert (=> b!6133053 d!1921744))

(assert (=> b!6133053 d!1921746))

(declare-fun b!6134052 () Bool)

(declare-fun e!3738662 () Bool)

(declare-fun call!508943 () Bool)

(assert (=> b!6134052 (= e!3738662 call!508943)))

(declare-fun b!6134053 () Bool)

(declare-fun e!3738661 () Bool)

(assert (=> b!6134053 (= e!3738661 call!508943)))

(declare-fun b!6134054 () Bool)

(declare-fun e!3738660 () Bool)

(assert (=> b!6134054 (= e!3738660 e!3738662)))

(declare-fun res!2542084 () Bool)

(declare-fun call!508942 () Bool)

(assert (=> b!6134054 (= res!2542084 call!508942)))

(assert (=> b!6134054 (=> res!2542084 e!3738662)))

(declare-fun bm!508937 () Bool)

(declare-fun c!1102956 () Bool)

(assert (=> bm!508937 (= call!508942 (nullable!6070 (ite c!1102956 (regOne!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))))))

(declare-fun b!6134055 () Bool)

(assert (=> b!6134055 (= e!3738660 e!3738661)))

(declare-fun res!2542085 () Bool)

(assert (=> b!6134055 (= res!2542085 call!508942)))

(assert (=> b!6134055 (=> (not res!2542085) (not e!3738661))))

(declare-fun b!6134056 () Bool)

(declare-fun e!3738659 () Bool)

(declare-fun e!3738664 () Bool)

(assert (=> b!6134056 (= e!3738659 e!3738664)))

(declare-fun res!2542086 () Bool)

(assert (=> b!6134056 (=> res!2542086 e!3738664)))

(assert (=> b!6134056 (= res!2542086 ((_ is Star!16077) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun bm!508938 () Bool)

(assert (=> bm!508938 (= call!508943 (nullable!6070 (ite c!1102956 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))))))))

(declare-fun b!6134057 () Bool)

(assert (=> b!6134057 (= e!3738664 e!3738660)))

(assert (=> b!6134057 (= c!1102956 ((_ is Union!16077) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun b!6134058 () Bool)

(declare-fun e!3738663 () Bool)

(assert (=> b!6134058 (= e!3738663 e!3738659)))

(declare-fun res!2542088 () Bool)

(assert (=> b!6134058 (=> (not res!2542088) (not e!3738659))))

(assert (=> b!6134058 (= res!2542088 (and (not ((_ is EmptyLang!16077) (h!70854 (exprs!5961 (h!70855 zl!343))))) (not ((_ is ElementMatch!16077) (h!70854 (exprs!5961 (h!70855 zl!343)))))))))

(declare-fun d!1921904 () Bool)

(declare-fun res!2542087 () Bool)

(assert (=> d!1921904 (=> res!2542087 e!3738663)))

(assert (=> d!1921904 (= res!2542087 ((_ is EmptyExpr!16077) (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(assert (=> d!1921904 (= (nullableFct!2034 (h!70854 (exprs!5961 (h!70855 zl!343)))) e!3738663)))

(assert (= (and d!1921904 (not res!2542087)) b!6134058))

(assert (= (and b!6134058 res!2542088) b!6134056))

(assert (= (and b!6134056 (not res!2542086)) b!6134057))

(assert (= (and b!6134057 c!1102956) b!6134054))

(assert (= (and b!6134057 (not c!1102956)) b!6134055))

(assert (= (and b!6134054 (not res!2542084)) b!6134052))

(assert (= (and b!6134055 res!2542085) b!6134053))

(assert (= (or b!6134052 b!6134053) bm!508938))

(assert (= (or b!6134054 b!6134055) bm!508937))

(declare-fun m!6976928 () Bool)

(assert (=> bm!508937 m!6976928))

(declare-fun m!6976930 () Bool)

(assert (=> bm!508938 m!6976930))

(assert (=> d!1921410 d!1921904))

(declare-fun b!6134059 () Bool)

(declare-fun e!3738665 () (InoxSet Context!10922))

(declare-fun call!508944 () (InoxSet Context!10922))

(assert (=> b!6134059 (= e!3738665 call!508944)))

(declare-fun bm!508939 () Bool)

(assert (=> bm!508939 (= call!508944 (derivationStepZipperDown!1325 (h!70854 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))) (Context!10923 (t!378001 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))))))) (h!70856 s!2326)))))

(declare-fun b!6134060 () Bool)

(assert (=> b!6134060 (= e!3738665 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6134061 () Bool)

(declare-fun e!3738666 () (InoxSet Context!10922))

(assert (=> b!6134061 (= e!3738666 e!3738665)))

(declare-fun c!1102958 () Bool)

(assert (=> b!6134061 (= c!1102958 ((_ is Cons!64406) (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))))))

(declare-fun d!1921906 () Bool)

(declare-fun c!1102957 () Bool)

(declare-fun e!3738667 () Bool)

(assert (=> d!1921906 (= c!1102957 e!3738667)))

(declare-fun res!2542089 () Bool)

(assert (=> d!1921906 (=> (not res!2542089) (not e!3738667))))

(assert (=> d!1921906 (= res!2542089 ((_ is Cons!64406) (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))))))

(assert (=> d!1921906 (= (derivationStepZipperUp!1251 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (h!70856 s!2326)) e!3738666)))

(declare-fun b!6134062 () Bool)

(assert (=> b!6134062 (= e!3738667 (nullable!6070 (h!70854 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))))))))))

(declare-fun b!6134063 () Bool)

(assert (=> b!6134063 (= e!3738666 ((_ map or) call!508944 (derivationStepZipperUp!1251 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))))))) (h!70856 s!2326))))))

(assert (= (and d!1921906 res!2542089) b!6134062))

(assert (= (and d!1921906 c!1102957) b!6134063))

(assert (= (and d!1921906 (not c!1102957)) b!6134061))

(assert (= (and b!6134061 c!1102958) b!6134059))

(assert (= (and b!6134061 (not c!1102958)) b!6134060))

(assert (= (or b!6134063 b!6134059) bm!508939))

(declare-fun m!6976932 () Bool)

(assert (=> bm!508939 m!6976932))

(declare-fun m!6976934 () Bool)

(assert (=> b!6134062 m!6976934))

(declare-fun m!6976936 () Bool)

(assert (=> b!6134063 m!6976936))

(assert (=> b!6132782 d!1921906))

(declare-fun c!1102959 () Bool)

(declare-fun call!508947 () List!64530)

(declare-fun c!1102961 () Bool)

(declare-fun bm!508940 () Bool)

(assert (=> bm!508940 (= call!508947 ($colon$colon!1954 (exprs!5961 (ite (or c!1102672 c!1102670) lt!2332109 (Context!10923 call!508754))) (ite (or c!1102961 c!1102959) (regTwo!32666 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))) (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292)))))))))))

(declare-fun b!6134064 () Bool)

(declare-fun e!3738672 () (InoxSet Context!10922))

(declare-fun e!3738670 () (InoxSet Context!10922))

(assert (=> b!6134064 (= e!3738672 e!3738670)))

(assert (=> b!6134064 (= c!1102959 ((_ is Concat!24922) (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))))))

(declare-fun b!6134065 () Bool)

(declare-fun e!3738671 () (InoxSet Context!10922))

(declare-fun call!508948 () (InoxSet Context!10922))

(assert (=> b!6134065 (= e!3738671 call!508948)))

(declare-fun b!6134066 () Bool)

(assert (=> b!6134066 (= e!3738671 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6134067 () Bool)

(declare-fun e!3738673 () (InoxSet Context!10922))

(assert (=> b!6134067 (= e!3738673 (store ((as const (Array Context!10922 Bool)) false) (ite (or c!1102672 c!1102670) lt!2332109 (Context!10923 call!508754)) true))))

(declare-fun call!508949 () (InoxSet Context!10922))

(declare-fun bm!508941 () Bool)

(declare-fun c!1102963 () Bool)

(assert (=> bm!508941 (= call!508949 (derivationStepZipperDown!1325 (ite c!1102963 (regOne!32667 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))) (regOne!32666 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292)))))))) (ite c!1102963 (ite (or c!1102672 c!1102670) lt!2332109 (Context!10923 call!508754)) (Context!10923 call!508947)) (h!70856 s!2326)))))

(declare-fun b!6134068 () Bool)

(declare-fun e!3738669 () Bool)

(assert (=> b!6134068 (= c!1102961 e!3738669)))

(declare-fun res!2542090 () Bool)

(assert (=> b!6134068 (=> (not res!2542090) (not e!3738669))))

(assert (=> b!6134068 (= res!2542090 ((_ is Concat!24922) (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))))))

(declare-fun e!3738668 () (InoxSet Context!10922))

(assert (=> b!6134068 (= e!3738668 e!3738672)))

(declare-fun call!508945 () (InoxSet Context!10922))

(declare-fun bm!508943 () Bool)

(declare-fun call!508950 () List!64530)

(assert (=> bm!508943 (= call!508945 (derivationStepZipperDown!1325 (ite c!1102963 (regTwo!32667 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))) (ite c!1102961 (regTwo!32666 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))) (ite c!1102959 (regOne!32666 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))) (reg!16406 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292)))))))))) (ite (or c!1102963 c!1102961) (ite (or c!1102672 c!1102670) lt!2332109 (Context!10923 call!508754)) (Context!10923 call!508950)) (h!70856 s!2326)))))

(declare-fun b!6134069 () Bool)

(assert (=> b!6134069 (= e!3738670 call!508948)))

(declare-fun bm!508944 () Bool)

(declare-fun call!508946 () (InoxSet Context!10922))

(assert (=> bm!508944 (= call!508948 call!508946)))

(declare-fun c!1102962 () Bool)

(declare-fun b!6134070 () Bool)

(assert (=> b!6134070 (= c!1102962 ((_ is Star!16077) (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))))))

(assert (=> b!6134070 (= e!3738670 e!3738671)))

(declare-fun bm!508945 () Bool)

(assert (=> bm!508945 (= call!508946 call!508945)))

(declare-fun b!6134071 () Bool)

(assert (=> b!6134071 (= e!3738673 e!3738668)))

(assert (=> b!6134071 (= c!1102963 ((_ is Union!16077) (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))))))

(declare-fun b!6134072 () Bool)

(assert (=> b!6134072 (= e!3738669 (nullable!6070 (regOne!32666 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292)))))))))))

(declare-fun b!6134073 () Bool)

(assert (=> b!6134073 (= e!3738672 ((_ map or) call!508949 call!508946))))

(declare-fun b!6134074 () Bool)

(assert (=> b!6134074 (= e!3738668 ((_ map or) call!508949 call!508945))))

(declare-fun bm!508942 () Bool)

(assert (=> bm!508942 (= call!508950 call!508947)))

(declare-fun c!1102960 () Bool)

(declare-fun d!1921908 () Bool)

(assert (=> d!1921908 (= c!1102960 (and ((_ is ElementMatch!16077) (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))) (= (c!1102519 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292))))))) (h!70856 s!2326))))))

(assert (=> d!1921908 (= (derivationStepZipperDown!1325 (ite c!1102672 (regTwo!32667 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102670 (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (ite c!1102668 (regOne!32666 (regOne!32667 (regOne!32666 r!7292))) (reg!16406 (regOne!32667 (regOne!32666 r!7292)))))) (ite (or c!1102672 c!1102670) lt!2332109 (Context!10923 call!508754)) (h!70856 s!2326)) e!3738673)))

(assert (= (and d!1921908 c!1102960) b!6134067))

(assert (= (and d!1921908 (not c!1102960)) b!6134071))

(assert (= (and b!6134071 c!1102963) b!6134074))

(assert (= (and b!6134071 (not c!1102963)) b!6134068))

(assert (= (and b!6134068 res!2542090) b!6134072))

(assert (= (and b!6134068 c!1102961) b!6134073))

(assert (= (and b!6134068 (not c!1102961)) b!6134064))

(assert (= (and b!6134064 c!1102959) b!6134069))

(assert (= (and b!6134064 (not c!1102959)) b!6134070))

(assert (= (and b!6134070 c!1102962) b!6134065))

(assert (= (and b!6134070 (not c!1102962)) b!6134066))

(assert (= (or b!6134069 b!6134065) bm!508942))

(assert (= (or b!6134069 b!6134065) bm!508944))

(assert (= (or b!6134073 bm!508942) bm!508940))

(assert (= (or b!6134073 bm!508944) bm!508945))

(assert (= (or b!6134074 bm!508945) bm!508943))

(assert (= (or b!6134074 b!6134073) bm!508941))

(declare-fun m!6976938 () Bool)

(assert (=> b!6134067 m!6976938))

(declare-fun m!6976940 () Bool)

(assert (=> b!6134072 m!6976940))

(declare-fun m!6976942 () Bool)

(assert (=> bm!508943 m!6976942))

(declare-fun m!6976944 () Bool)

(assert (=> bm!508941 m!6976944))

(declare-fun m!6976946 () Bool)

(assert (=> bm!508940 m!6976946))

(assert (=> bm!508747 d!1921908))

(assert (=> b!6133041 d!1921476))

(assert (=> bs!1521168 d!1921416))

(declare-fun d!1921910 () Bool)

(declare-fun res!2542091 () Bool)

(declare-fun e!3738674 () Bool)

(assert (=> d!1921910 (=> res!2542091 e!3738674)))

(assert (=> d!1921910 (= res!2542091 ((_ is Nil!64406) (exprs!5961 setElem!41456)))))

(assert (=> d!1921910 (= (forall!15198 (exprs!5961 setElem!41456) lambda!334161) e!3738674)))

(declare-fun b!6134075 () Bool)

(declare-fun e!3738675 () Bool)

(assert (=> b!6134075 (= e!3738674 e!3738675)))

(declare-fun res!2542092 () Bool)

(assert (=> b!6134075 (=> (not res!2542092) (not e!3738675))))

(assert (=> b!6134075 (= res!2542092 (dynLambda!25376 lambda!334161 (h!70854 (exprs!5961 setElem!41456))))))

(declare-fun b!6134076 () Bool)

(assert (=> b!6134076 (= e!3738675 (forall!15198 (t!378001 (exprs!5961 setElem!41456)) lambda!334161))))

(assert (= (and d!1921910 (not res!2542091)) b!6134075))

(assert (= (and b!6134075 res!2542092) b!6134076))

(declare-fun b_lambda!233487 () Bool)

(assert (=> (not b_lambda!233487) (not b!6134075)))

(declare-fun m!6976948 () Bool)

(assert (=> b!6134075 m!6976948))

(declare-fun m!6976950 () Bool)

(assert (=> b!6134076 m!6976950))

(assert (=> d!1921490 d!1921910))

(declare-fun b!6134077 () Bool)

(declare-fun e!3738676 () (InoxSet Context!10922))

(declare-fun call!508951 () (InoxSet Context!10922))

(assert (=> b!6134077 (= e!3738676 call!508951)))

(declare-fun bm!508946 () Bool)

(assert (=> bm!508946 (= call!508951 (derivationStepZipperDown!1325 (h!70854 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 lt!2332109))))) (Context!10923 (t!378001 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 lt!2332109)))))) (h!70856 s!2326)))))

(declare-fun b!6134078 () Bool)

(assert (=> b!6134078 (= e!3738676 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6134079 () Bool)

(declare-fun e!3738677 () (InoxSet Context!10922))

(assert (=> b!6134079 (= e!3738677 e!3738676)))

(declare-fun c!1102965 () Bool)

(assert (=> b!6134079 (= c!1102965 ((_ is Cons!64406) (exprs!5961 (Context!10923 (t!378001 (exprs!5961 lt!2332109))))))))

(declare-fun d!1921912 () Bool)

(declare-fun c!1102964 () Bool)

(declare-fun e!3738678 () Bool)

(assert (=> d!1921912 (= c!1102964 e!3738678)))

(declare-fun res!2542093 () Bool)

(assert (=> d!1921912 (=> (not res!2542093) (not e!3738678))))

(assert (=> d!1921912 (= res!2542093 ((_ is Cons!64406) (exprs!5961 (Context!10923 (t!378001 (exprs!5961 lt!2332109))))))))

(assert (=> d!1921912 (= (derivationStepZipperUp!1251 (Context!10923 (t!378001 (exprs!5961 lt!2332109))) (h!70856 s!2326)) e!3738677)))

(declare-fun b!6134080 () Bool)

(assert (=> b!6134080 (= e!3738678 (nullable!6070 (h!70854 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 lt!2332109)))))))))

(declare-fun b!6134081 () Bool)

(assert (=> b!6134081 (= e!3738677 ((_ map or) call!508951 (derivationStepZipperUp!1251 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 lt!2332109)))))) (h!70856 s!2326))))))

(assert (= (and d!1921912 res!2542093) b!6134080))

(assert (= (and d!1921912 c!1102964) b!6134081))

(assert (= (and d!1921912 (not c!1102964)) b!6134079))

(assert (= (and b!6134079 c!1102965) b!6134077))

(assert (= (and b!6134079 (not c!1102965)) b!6134078))

(assert (= (or b!6134081 b!6134077) bm!508946))

(declare-fun m!6976952 () Bool)

(assert (=> bm!508946 m!6976952))

(declare-fun m!6976954 () Bool)

(assert (=> b!6134080 m!6976954))

(declare-fun m!6976956 () Bool)

(assert (=> b!6134081 m!6976956))

(assert (=> b!6132777 d!1921912))

(declare-fun d!1921914 () Bool)

(assert (=> d!1921914 (= ($colon$colon!1954 (exprs!5961 lt!2332109) (ite (or c!1102670 c!1102668) (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (regOne!32667 (regOne!32666 r!7292)))) (Cons!64406 (ite (or c!1102670 c!1102668) (regTwo!32666 (regOne!32667 (regOne!32666 r!7292))) (regOne!32667 (regOne!32666 r!7292))) (exprs!5961 lt!2332109)))))

(assert (=> bm!508744 d!1921914))

(assert (=> d!1921476 d!1921762))

(declare-fun call!508954 () List!64530)

(declare-fun bm!508947 () Bool)

(declare-fun c!1102966 () Bool)

(declare-fun c!1102968 () Bool)

(assert (=> bm!508947 (= call!508954 ($colon$colon!1954 (exprs!5961 (ite (or c!1102662 c!1102660) lt!2332109 (Context!10923 call!508742))) (ite (or c!1102968 c!1102966) (regTwo!32666 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))) (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343))))))))))))

(declare-fun b!6134082 () Bool)

(declare-fun e!3738683 () (InoxSet Context!10922))

(declare-fun e!3738681 () (InoxSet Context!10922))

(assert (=> b!6134082 (= e!3738683 e!3738681)))

(assert (=> b!6134082 (= c!1102966 ((_ is Concat!24922) (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))))))

(declare-fun b!6134083 () Bool)

(declare-fun e!3738682 () (InoxSet Context!10922))

(declare-fun call!508955 () (InoxSet Context!10922))

(assert (=> b!6134083 (= e!3738682 call!508955)))

(declare-fun b!6134084 () Bool)

(assert (=> b!6134084 (= e!3738682 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6134085 () Bool)

(declare-fun e!3738684 () (InoxSet Context!10922))

(assert (=> b!6134085 (= e!3738684 (store ((as const (Array Context!10922 Bool)) false) (ite (or c!1102662 c!1102660) lt!2332109 (Context!10923 call!508742)) true))))

(declare-fun bm!508948 () Bool)

(declare-fun call!508956 () (InoxSet Context!10922))

(declare-fun c!1102970 () Bool)

(assert (=> bm!508948 (= call!508956 (derivationStepZipperDown!1325 (ite c!1102970 (regOne!32667 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))) (regOne!32666 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343))))))))) (ite c!1102970 (ite (or c!1102662 c!1102660) lt!2332109 (Context!10923 call!508742)) (Context!10923 call!508954)) (h!70856 s!2326)))))

(declare-fun b!6134086 () Bool)

(declare-fun e!3738680 () Bool)

(assert (=> b!6134086 (= c!1102968 e!3738680)))

(declare-fun res!2542094 () Bool)

(assert (=> b!6134086 (=> (not res!2542094) (not e!3738680))))

(assert (=> b!6134086 (= res!2542094 ((_ is Concat!24922) (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))))))

(declare-fun e!3738679 () (InoxSet Context!10922))

(assert (=> b!6134086 (= e!3738679 e!3738683)))

(declare-fun call!508952 () (InoxSet Context!10922))

(declare-fun call!508957 () List!64530)

(declare-fun bm!508950 () Bool)

(assert (=> bm!508950 (= call!508952 (derivationStepZipperDown!1325 (ite c!1102970 (regTwo!32667 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))) (ite c!1102968 (regTwo!32666 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))) (ite c!1102966 (regOne!32666 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))) (reg!16406 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343))))))))))) (ite (or c!1102970 c!1102968) (ite (or c!1102662 c!1102660) lt!2332109 (Context!10923 call!508742)) (Context!10923 call!508957)) (h!70856 s!2326)))))

(declare-fun b!6134087 () Bool)

(assert (=> b!6134087 (= e!3738681 call!508955)))

(declare-fun bm!508951 () Bool)

(declare-fun call!508953 () (InoxSet Context!10922))

(assert (=> bm!508951 (= call!508955 call!508953)))

(declare-fun b!6134088 () Bool)

(declare-fun c!1102969 () Bool)

(assert (=> b!6134088 (= c!1102969 ((_ is Star!16077) (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))))))

(assert (=> b!6134088 (= e!3738681 e!3738682)))

(declare-fun bm!508952 () Bool)

(assert (=> bm!508952 (= call!508953 call!508952)))

(declare-fun b!6134089 () Bool)

(assert (=> b!6134089 (= e!3738684 e!3738679)))

(assert (=> b!6134089 (= c!1102970 ((_ is Union!16077) (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))))))

(declare-fun b!6134090 () Bool)

(assert (=> b!6134090 (= e!3738680 (nullable!6070 (regOne!32666 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343))))))))))))

(declare-fun b!6134091 () Bool)

(assert (=> b!6134091 (= e!3738683 ((_ map or) call!508956 call!508953))))

(declare-fun b!6134092 () Bool)

(assert (=> b!6134092 (= e!3738679 ((_ map or) call!508956 call!508952))))

(declare-fun bm!508949 () Bool)

(assert (=> bm!508949 (= call!508957 call!508954)))

(declare-fun c!1102967 () Bool)

(declare-fun d!1921916 () Bool)

(assert (=> d!1921916 (= c!1102967 (and ((_ is ElementMatch!16077) (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))) (= (c!1102519 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343)))))))) (h!70856 s!2326))))))

(assert (=> d!1921916 (= (derivationStepZipperDown!1325 (ite c!1102662 (regTwo!32667 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102660 (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (ite c!1102658 (regOne!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (reg!16406 (h!70854 (exprs!5961 (h!70855 zl!343))))))) (ite (or c!1102662 c!1102660) lt!2332109 (Context!10923 call!508742)) (h!70856 s!2326)) e!3738684)))

(assert (= (and d!1921916 c!1102967) b!6134085))

(assert (= (and d!1921916 (not c!1102967)) b!6134089))

(assert (= (and b!6134089 c!1102970) b!6134092))

(assert (= (and b!6134089 (not c!1102970)) b!6134086))

(assert (= (and b!6134086 res!2542094) b!6134090))

(assert (= (and b!6134086 c!1102968) b!6134091))

(assert (= (and b!6134086 (not c!1102968)) b!6134082))

(assert (= (and b!6134082 c!1102966) b!6134087))

(assert (= (and b!6134082 (not c!1102966)) b!6134088))

(assert (= (and b!6134088 c!1102969) b!6134083))

(assert (= (and b!6134088 (not c!1102969)) b!6134084))

(assert (= (or b!6134087 b!6134083) bm!508949))

(assert (= (or b!6134087 b!6134083) bm!508951))

(assert (= (or b!6134091 bm!508949) bm!508947))

(assert (= (or b!6134091 bm!508951) bm!508952))

(assert (= (or b!6134092 bm!508952) bm!508950))

(assert (= (or b!6134092 b!6134091) bm!508948))

(declare-fun m!6976958 () Bool)

(assert (=> b!6134085 m!6976958))

(declare-fun m!6976960 () Bool)

(assert (=> b!6134090 m!6976960))

(declare-fun m!6976962 () Bool)

(assert (=> bm!508950 m!6976962))

(declare-fun m!6976964 () Bool)

(assert (=> bm!508948 m!6976964))

(declare-fun m!6976966 () Bool)

(assert (=> bm!508947 m!6976966))

(assert (=> bm!508735 d!1921916))

(declare-fun bm!508953 () Bool)

(declare-fun c!1102973 () Bool)

(declare-fun call!508960 () List!64530)

(declare-fun c!1102971 () Bool)

(assert (=> bm!508953 (= call!508960 ($colon$colon!1954 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))))) (ite (or c!1102973 c!1102971) (regTwo!32666 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))))))))

(declare-fun b!6134093 () Bool)

(declare-fun e!3738689 () (InoxSet Context!10922))

(declare-fun e!3738687 () (InoxSet Context!10922))

(assert (=> b!6134093 (= e!3738689 e!3738687)))

(assert (=> b!6134093 (= c!1102971 ((_ is Concat!24922) (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))))

(declare-fun b!6134094 () Bool)

(declare-fun e!3738688 () (InoxSet Context!10922))

(declare-fun call!508961 () (InoxSet Context!10922))

(assert (=> b!6134094 (= e!3738688 call!508961)))

(declare-fun b!6134095 () Bool)

(assert (=> b!6134095 (= e!3738688 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6134096 () Bool)

(declare-fun e!3738690 () (InoxSet Context!10922))

(assert (=> b!6134096 (= e!3738690 (store ((as const (Array Context!10922 Bool)) false) (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) true))))

(declare-fun call!508962 () (InoxSet Context!10922))

(declare-fun bm!508954 () Bool)

(declare-fun c!1102975 () Bool)

(assert (=> bm!508954 (= call!508962 (derivationStepZipperDown!1325 (ite c!1102975 (regOne!32667 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (regOne!32666 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))))) (ite c!1102975 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (Context!10923 call!508960)) (h!70856 s!2326)))))

(declare-fun b!6134097 () Bool)

(declare-fun e!3738686 () Bool)

(assert (=> b!6134097 (= c!1102973 e!3738686)))

(declare-fun res!2542095 () Bool)

(assert (=> b!6134097 (=> (not res!2542095) (not e!3738686))))

(assert (=> b!6134097 (= res!2542095 ((_ is Concat!24922) (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))))

(declare-fun e!3738685 () (InoxSet Context!10922))

(assert (=> b!6134097 (= e!3738685 e!3738689)))

(declare-fun call!508963 () List!64530)

(declare-fun call!508958 () (InoxSet Context!10922))

(declare-fun bm!508956 () Bool)

(assert (=> bm!508956 (= call!508958 (derivationStepZipperDown!1325 (ite c!1102975 (regTwo!32667 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (ite c!1102973 (regTwo!32666 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (ite c!1102971 (regOne!32666 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (reg!16406 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))))))) (ite (or c!1102975 c!1102973) (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (Context!10923 call!508963)) (h!70856 s!2326)))))

(declare-fun b!6134098 () Bool)

(assert (=> b!6134098 (= e!3738687 call!508961)))

(declare-fun bm!508957 () Bool)

(declare-fun call!508959 () (InoxSet Context!10922))

(assert (=> bm!508957 (= call!508961 call!508959)))

(declare-fun b!6134099 () Bool)

(declare-fun c!1102974 () Bool)

(assert (=> b!6134099 (= c!1102974 ((_ is Star!16077) (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))))

(assert (=> b!6134099 (= e!3738687 e!3738688)))

(declare-fun bm!508958 () Bool)

(assert (=> bm!508958 (= call!508959 call!508958)))

(declare-fun b!6134100 () Bool)

(assert (=> b!6134100 (= e!3738690 e!3738685)))

(assert (=> b!6134100 (= c!1102975 ((_ is Union!16077) (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))))

(declare-fun b!6134101 () Bool)

(assert (=> b!6134101 (= e!3738686 (nullable!6070 (regOne!32666 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))))))))

(declare-fun b!6134102 () Bool)

(assert (=> b!6134102 (= e!3738689 ((_ map or) call!508962 call!508959))))

(declare-fun b!6134103 () Bool)

(assert (=> b!6134103 (= e!3738685 ((_ map or) call!508962 call!508958))))

(declare-fun bm!508955 () Bool)

(assert (=> bm!508955 (= call!508963 call!508960)))

(declare-fun d!1921918 () Bool)

(declare-fun c!1102972 () Bool)

(assert (=> d!1921918 (= c!1102972 (and ((_ is ElementMatch!16077) (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (= (c!1102519 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (h!70856 s!2326))))))

(assert (=> d!1921918 (= (derivationStepZipperDown!1325 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))) (Context!10923 (t!378001 (exprs!5961 (Context!10923 (Cons!64406 (h!70854 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (h!70856 s!2326)) e!3738690)))

(assert (= (and d!1921918 c!1102972) b!6134096))

(assert (= (and d!1921918 (not c!1102972)) b!6134100))

(assert (= (and b!6134100 c!1102975) b!6134103))

(assert (= (and b!6134100 (not c!1102975)) b!6134097))

(assert (= (and b!6134097 res!2542095) b!6134101))

(assert (= (and b!6134097 c!1102973) b!6134102))

(assert (= (and b!6134097 (not c!1102973)) b!6134093))

(assert (= (and b!6134093 c!1102971) b!6134098))

(assert (= (and b!6134093 (not c!1102971)) b!6134099))

(assert (= (and b!6134099 c!1102974) b!6134094))

(assert (= (and b!6134099 (not c!1102974)) b!6134095))

(assert (= (or b!6134098 b!6134094) bm!508955))

(assert (= (or b!6134098 b!6134094) bm!508957))

(assert (= (or b!6134102 bm!508955) bm!508953))

(assert (= (or b!6134102 bm!508957) bm!508958))

(assert (= (or b!6134103 bm!508958) bm!508956))

(assert (= (or b!6134103 b!6134102) bm!508954))

(declare-fun m!6976968 () Bool)

(assert (=> b!6134096 m!6976968))

(declare-fun m!6976970 () Bool)

(assert (=> b!6134101 m!6976970))

(declare-fun m!6976972 () Bool)

(assert (=> bm!508956 m!6976972))

(declare-fun m!6976974 () Bool)

(assert (=> bm!508954 m!6976974))

(declare-fun m!6976976 () Bool)

(assert (=> bm!508953 m!6976976))

(assert (=> bm!508718 d!1921918))

(declare-fun c!1102976 () Bool)

(declare-fun bm!508959 () Bool)

(declare-fun c!1102978 () Bool)

(declare-fun call!508966 () List!64530)

(assert (=> bm!508959 (= call!508966 ($colon$colon!1954 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 lt!2332109)))) (ite (or c!1102978 c!1102976) (regTwo!32666 (h!70854 (exprs!5961 lt!2332109))) (h!70854 (exprs!5961 lt!2332109)))))))

(declare-fun b!6134104 () Bool)

(declare-fun e!3738695 () (InoxSet Context!10922))

(declare-fun e!3738693 () (InoxSet Context!10922))

(assert (=> b!6134104 (= e!3738695 e!3738693)))

(assert (=> b!6134104 (= c!1102976 ((_ is Concat!24922) (h!70854 (exprs!5961 lt!2332109))))))

(declare-fun b!6134105 () Bool)

(declare-fun e!3738694 () (InoxSet Context!10922))

(declare-fun call!508967 () (InoxSet Context!10922))

(assert (=> b!6134105 (= e!3738694 call!508967)))

(declare-fun b!6134106 () Bool)

(assert (=> b!6134106 (= e!3738694 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6134107 () Bool)

(declare-fun e!3738696 () (InoxSet Context!10922))

(assert (=> b!6134107 (= e!3738696 (store ((as const (Array Context!10922 Bool)) false) (Context!10923 (t!378001 (exprs!5961 lt!2332109))) true))))

(declare-fun bm!508960 () Bool)

(declare-fun c!1102980 () Bool)

(declare-fun call!508968 () (InoxSet Context!10922))

(assert (=> bm!508960 (= call!508968 (derivationStepZipperDown!1325 (ite c!1102980 (regOne!32667 (h!70854 (exprs!5961 lt!2332109))) (regOne!32666 (h!70854 (exprs!5961 lt!2332109)))) (ite c!1102980 (Context!10923 (t!378001 (exprs!5961 lt!2332109))) (Context!10923 call!508966)) (h!70856 s!2326)))))

(declare-fun b!6134108 () Bool)

(declare-fun e!3738692 () Bool)

(assert (=> b!6134108 (= c!1102978 e!3738692)))

(declare-fun res!2542096 () Bool)

(assert (=> b!6134108 (=> (not res!2542096) (not e!3738692))))

(assert (=> b!6134108 (= res!2542096 ((_ is Concat!24922) (h!70854 (exprs!5961 lt!2332109))))))

(declare-fun e!3738691 () (InoxSet Context!10922))

(assert (=> b!6134108 (= e!3738691 e!3738695)))

(declare-fun call!508964 () (InoxSet Context!10922))

(declare-fun bm!508962 () Bool)

(declare-fun call!508969 () List!64530)

(assert (=> bm!508962 (= call!508964 (derivationStepZipperDown!1325 (ite c!1102980 (regTwo!32667 (h!70854 (exprs!5961 lt!2332109))) (ite c!1102978 (regTwo!32666 (h!70854 (exprs!5961 lt!2332109))) (ite c!1102976 (regOne!32666 (h!70854 (exprs!5961 lt!2332109))) (reg!16406 (h!70854 (exprs!5961 lt!2332109)))))) (ite (or c!1102980 c!1102978) (Context!10923 (t!378001 (exprs!5961 lt!2332109))) (Context!10923 call!508969)) (h!70856 s!2326)))))

(declare-fun b!6134109 () Bool)

(assert (=> b!6134109 (= e!3738693 call!508967)))

(declare-fun bm!508963 () Bool)

(declare-fun call!508965 () (InoxSet Context!10922))

(assert (=> bm!508963 (= call!508967 call!508965)))

(declare-fun b!6134110 () Bool)

(declare-fun c!1102979 () Bool)

(assert (=> b!6134110 (= c!1102979 ((_ is Star!16077) (h!70854 (exprs!5961 lt!2332109))))))

(assert (=> b!6134110 (= e!3738693 e!3738694)))

(declare-fun bm!508964 () Bool)

(assert (=> bm!508964 (= call!508965 call!508964)))

(declare-fun b!6134111 () Bool)

(assert (=> b!6134111 (= e!3738696 e!3738691)))

(assert (=> b!6134111 (= c!1102980 ((_ is Union!16077) (h!70854 (exprs!5961 lt!2332109))))))

(declare-fun b!6134112 () Bool)

(assert (=> b!6134112 (= e!3738692 (nullable!6070 (regOne!32666 (h!70854 (exprs!5961 lt!2332109)))))))

(declare-fun b!6134113 () Bool)

(assert (=> b!6134113 (= e!3738695 ((_ map or) call!508968 call!508965))))

(declare-fun b!6134114 () Bool)

(assert (=> b!6134114 (= e!3738691 ((_ map or) call!508968 call!508964))))

(declare-fun bm!508961 () Bool)

(assert (=> bm!508961 (= call!508969 call!508966)))

(declare-fun d!1921920 () Bool)

(declare-fun c!1102977 () Bool)

(assert (=> d!1921920 (= c!1102977 (and ((_ is ElementMatch!16077) (h!70854 (exprs!5961 lt!2332109))) (= (c!1102519 (h!70854 (exprs!5961 lt!2332109))) (h!70856 s!2326))))))

(assert (=> d!1921920 (= (derivationStepZipperDown!1325 (h!70854 (exprs!5961 lt!2332109)) (Context!10923 (t!378001 (exprs!5961 lt!2332109))) (h!70856 s!2326)) e!3738696)))

(assert (= (and d!1921920 c!1102977) b!6134107))

(assert (= (and d!1921920 (not c!1102977)) b!6134111))

(assert (= (and b!6134111 c!1102980) b!6134114))

(assert (= (and b!6134111 (not c!1102980)) b!6134108))

(assert (= (and b!6134108 res!2542096) b!6134112))

(assert (= (and b!6134108 c!1102978) b!6134113))

(assert (= (and b!6134108 (not c!1102978)) b!6134104))

(assert (= (and b!6134104 c!1102976) b!6134109))

(assert (= (and b!6134104 (not c!1102976)) b!6134110))

(assert (= (and b!6134110 c!1102979) b!6134105))

(assert (= (and b!6134110 (not c!1102979)) b!6134106))

(assert (= (or b!6134109 b!6134105) bm!508961))

(assert (= (or b!6134109 b!6134105) bm!508963))

(assert (= (or b!6134113 bm!508961) bm!508959))

(assert (= (or b!6134113 bm!508963) bm!508964))

(assert (= (or b!6134114 bm!508964) bm!508962))

(assert (= (or b!6134114 b!6134113) bm!508960))

(declare-fun m!6976978 () Bool)

(assert (=> b!6134107 m!6976978))

(declare-fun m!6976980 () Bool)

(assert (=> b!6134112 m!6976980))

(declare-fun m!6976982 () Bool)

(assert (=> bm!508962 m!6976982))

(declare-fun m!6976984 () Bool)

(assert (=> bm!508960 m!6976984))

(declare-fun m!6976986 () Bool)

(assert (=> bm!508959 m!6976986))

(assert (=> bm!508717 d!1921920))

(declare-fun d!1921922 () Bool)

(assert (=> d!1921922 (= ($colon$colon!1954 (exprs!5961 lt!2332109) (ite (or c!1102660 c!1102658) (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (h!70854 (exprs!5961 (h!70855 zl!343))))) (Cons!64406 (ite (or c!1102660 c!1102658) (regTwo!32666 (h!70854 (exprs!5961 (h!70855 zl!343)))) (h!70854 (exprs!5961 (h!70855 zl!343)))) (exprs!5961 lt!2332109)))))

(assert (=> bm!508732 d!1921922))

(declare-fun b!6134115 () Bool)

(declare-fun e!3738697 () (InoxSet Context!10922))

(declare-fun call!508970 () (InoxSet Context!10922))

(assert (=> b!6134115 (= e!3738697 call!508970)))

(declare-fun bm!508965 () Bool)

(assert (=> bm!508965 (= call!508970 (derivationStepZipperDown!1325 (h!70854 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))))) (Context!10923 (t!378001 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343))))))) (h!70856 s!2326)))))

(declare-fun b!6134116 () Bool)

(assert (=> b!6134116 (= e!3738697 ((as const (Array Context!10922 Bool)) false))))

(declare-fun b!6134117 () Bool)

(declare-fun e!3738698 () (InoxSet Context!10922))

(assert (=> b!6134117 (= e!3738698 e!3738697)))

(declare-fun c!1102982 () Bool)

(assert (=> b!6134117 (= c!1102982 ((_ is Cons!64406) (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))))))))

(declare-fun d!1921924 () Bool)

(declare-fun c!1102981 () Bool)

(declare-fun e!3738699 () Bool)

(assert (=> d!1921924 (= c!1102981 e!3738699)))

(declare-fun res!2542097 () Bool)

(assert (=> d!1921924 (=> (not res!2542097) (not e!3738699))))

(assert (=> d!1921924 (= res!2542097 ((_ is Cons!64406) (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))))))))

(assert (=> d!1921924 (= (derivationStepZipperUp!1251 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343)))) (h!70856 s!2326)) e!3738698)))

(declare-fun b!6134118 () Bool)

(assert (=> b!6134118 (= e!3738699 (nullable!6070 (h!70854 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343))))))))))

(declare-fun b!6134119 () Bool)

(assert (=> b!6134119 (= e!3738698 ((_ map or) call!508970 (derivationStepZipperUp!1251 (Context!10923 (t!378001 (exprs!5961 (Context!10923 (t!378001 (exprs!5961 (h!70855 zl!343))))))) (h!70856 s!2326))))))

(assert (= (and d!1921924 res!2542097) b!6134118))

(assert (= (and d!1921924 c!1102981) b!6134119))

(assert (= (and d!1921924 (not c!1102981)) b!6134117))

(assert (= (and b!6134117 c!1102982) b!6134115))

(assert (= (and b!6134117 (not c!1102982)) b!6134116))

(assert (= (or b!6134119 b!6134115) bm!508965))

(declare-fun m!6976988 () Bool)

(assert (=> bm!508965 m!6976988))

(declare-fun m!6976990 () Bool)

(assert (=> b!6134118 m!6976990))

(declare-fun m!6976992 () Bool)

(assert (=> b!6134119 m!6976992))

(assert (=> b!6132787 d!1921924))

(declare-fun d!1921926 () Bool)

(assert (=> d!1921926 (= (nullable!6070 r!7292) (nullableFct!2034 r!7292))))

(declare-fun bs!1521460 () Bool)

(assert (= bs!1521460 d!1921926))

(declare-fun m!6976994 () Bool)

(assert (=> bs!1521460 m!6976994))

(assert (=> b!6133031 d!1921926))

(declare-fun d!1921928 () Bool)

(assert (=> d!1921928 (= (isEmpty!36348 (tail!11760 (exprs!5961 (h!70855 zl!343)))) ((_ is Nil!64406) (tail!11760 (exprs!5961 (h!70855 zl!343)))))))

(assert (=> b!6133107 d!1921928))

(declare-fun d!1921930 () Bool)

(assert (=> d!1921930 (= (tail!11760 (exprs!5961 (h!70855 zl!343))) (t!378001 (exprs!5961 (h!70855 zl!343))))))

(assert (=> b!6133107 d!1921930))

(declare-fun d!1921932 () Bool)

(declare-fun res!2542098 () Bool)

(declare-fun e!3738700 () Bool)

(assert (=> d!1921932 (=> res!2542098 e!3738700)))

(assert (=> d!1921932 (= res!2542098 ((_ is Nil!64406) lt!2332158))))

(assert (=> d!1921932 (= (forall!15198 lt!2332158 lambda!334128) e!3738700)))

(declare-fun b!6134120 () Bool)

(declare-fun e!3738701 () Bool)

(assert (=> b!6134120 (= e!3738700 e!3738701)))

(declare-fun res!2542099 () Bool)

(assert (=> b!6134120 (=> (not res!2542099) (not e!3738701))))

(assert (=> b!6134120 (= res!2542099 (dynLambda!25376 lambda!334128 (h!70854 lt!2332158)))))

(declare-fun b!6134121 () Bool)

(assert (=> b!6134121 (= e!3738701 (forall!15198 (t!378001 lt!2332158) lambda!334128))))

(assert (= (and d!1921932 (not res!2542098)) b!6134120))

(assert (= (and b!6134120 res!2542099) b!6134121))

(declare-fun b_lambda!233489 () Bool)

(assert (=> (not b_lambda!233489) (not b!6134120)))

(declare-fun m!6976996 () Bool)

(assert (=> b!6134120 m!6976996))

(declare-fun m!6976998 () Bool)

(assert (=> b!6134121 m!6976998))

(assert (=> d!1921404 d!1921932))

(assert (=> b!6132757 d!1921480))

(declare-fun bs!1521461 () Bool)

(declare-fun d!1921934 () Bool)

(assert (= bs!1521461 (and d!1921934 d!1921490)))

(declare-fun lambda!334228 () Int)

(assert (=> bs!1521461 (= lambda!334228 lambda!334161)))

(declare-fun bs!1521462 () Bool)

(assert (= bs!1521462 (and d!1921934 d!1921404)))

(assert (=> bs!1521462 (= lambda!334228 lambda!334128)))

(declare-fun bs!1521463 () Bool)

(assert (= bs!1521463 (and d!1921934 d!1921836)))

(assert (=> bs!1521463 (= lambda!334228 lambda!334216)))

(declare-fun bs!1521464 () Bool)

(assert (= bs!1521464 (and d!1921934 d!1921806)))

(assert (=> bs!1521464 (= lambda!334228 lambda!334210)))

(declare-fun bs!1521465 () Bool)

(assert (= bs!1521465 (and d!1921934 d!1921480)))

(assert (=> bs!1521465 (= lambda!334228 lambda!334160)))

(declare-fun bs!1521466 () Bool)

(assert (= bs!1521466 (and d!1921934 d!1921396)))

(assert (=> bs!1521466 (= lambda!334228 lambda!334125)))

(declare-fun bs!1521467 () Bool)

(assert (= bs!1521467 (and d!1921934 d!1921474)))

(assert (=> bs!1521467 (= lambda!334228 lambda!334157)))

(declare-fun bs!1521468 () Bool)

(assert (= bs!1521468 (and d!1921934 d!1921820)))

(assert (=> bs!1521468 (= lambda!334228 lambda!334211)))

(declare-fun bs!1521469 () Bool)

(assert (= bs!1521469 (and d!1921934 d!1921764)))

(assert (=> bs!1521469 (= lambda!334228 lambda!334204)))

(declare-fun bs!1521470 () Bool)

(assert (= bs!1521470 (and d!1921934 d!1921454)))

(assert (=> bs!1521470 (= lambda!334228 lambda!334150)))

(declare-fun lt!2332238 () List!64530)

(assert (=> d!1921934 (forall!15198 lt!2332238 lambda!334228)))

(declare-fun e!3738702 () List!64530)

(assert (=> d!1921934 (= lt!2332238 e!3738702)))

(declare-fun c!1102983 () Bool)

(assert (=> d!1921934 (= c!1102983 ((_ is Cons!64407) (t!378002 zl!343)))))

(assert (=> d!1921934 (= (unfocusZipperList!1498 (t!378002 zl!343)) lt!2332238)))

(declare-fun b!6134122 () Bool)

(assert (=> b!6134122 (= e!3738702 (Cons!64406 (generalisedConcat!1674 (exprs!5961 (h!70855 (t!378002 zl!343)))) (unfocusZipperList!1498 (t!378002 (t!378002 zl!343)))))))

(declare-fun b!6134123 () Bool)

(assert (=> b!6134123 (= e!3738702 Nil!64406)))

(assert (= (and d!1921934 c!1102983) b!6134122))

(assert (= (and d!1921934 (not c!1102983)) b!6134123))

(declare-fun m!6977000 () Bool)

(assert (=> d!1921934 m!6977000))

(declare-fun m!6977002 () Bool)

(assert (=> b!6134122 m!6977002))

(declare-fun m!6977004 () Bool)

(assert (=> b!6134122 m!6977004))

(assert (=> b!6132757 d!1921934))

(declare-fun c!1102986 () Bool)

(declare-fun call!508973 () List!64530)

(declare-fun c!1102984 () Bool)

(declare-fun bm!508966 () Bool)

(assert (=> bm!508966 (= call!508973 ($colon$colon!1954 (exprs!5961 (ite c!1102667 lt!2332109 (Context!10923 call!508745))) (ite (or c!1102986 c!1102984) (regTwo!32666 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))) (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292)))))))))

(declare-fun b!6134124 () Bool)

(declare-fun e!3738707 () (InoxSet Context!10922))

(declare-fun e!3738705 () (InoxSet Context!10922))

(assert (=> b!6134124 (= e!3738707 e!3738705)))

(assert (=> b!6134124 (= c!1102984 ((_ is Concat!24922) (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))))))

(declare-fun b!6134125 () Bool)

(declare-fun e!3738706 () (InoxSet Context!10922))

(declare-fun call!508974 () (InoxSet Context!10922))

(assert (=> b!6134125 (= e!3738706 call!508974)))

(declare-fun b!6134126 () Bool)

(assert (=> b!6134126 (= e!3738706 ((as const (Array Context!10922 Bool)) false))))

(declare-fun e!3738708 () (InoxSet Context!10922))

(declare-fun b!6134127 () Bool)

(assert (=> b!6134127 (= e!3738708 (store ((as const (Array Context!10922 Bool)) false) (ite c!1102667 lt!2332109 (Context!10923 call!508745)) true))))

(declare-fun call!508975 () (InoxSet Context!10922))

(declare-fun c!1102988 () Bool)

(declare-fun bm!508967 () Bool)

(assert (=> bm!508967 (= call!508975 (derivationStepZipperDown!1325 (ite c!1102988 (regOne!32667 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))) (regOne!32666 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292)))))) (ite c!1102988 (ite c!1102667 lt!2332109 (Context!10923 call!508745)) (Context!10923 call!508973)) (h!70856 s!2326)))))

(declare-fun b!6134128 () Bool)

(declare-fun e!3738704 () Bool)

(assert (=> b!6134128 (= c!1102986 e!3738704)))

(declare-fun res!2542100 () Bool)

(assert (=> b!6134128 (=> (not res!2542100) (not e!3738704))))

(assert (=> b!6134128 (= res!2542100 ((_ is Concat!24922) (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))))))

(declare-fun e!3738703 () (InoxSet Context!10922))

(assert (=> b!6134128 (= e!3738703 e!3738707)))

(declare-fun call!508971 () (InoxSet Context!10922))

(declare-fun call!508976 () List!64530)

(declare-fun bm!508969 () Bool)

(assert (=> bm!508969 (= call!508971 (derivationStepZipperDown!1325 (ite c!1102988 (regTwo!32667 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))) (ite c!1102986 (regTwo!32666 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))) (ite c!1102984 (regOne!32666 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))) (reg!16406 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292)))))))) (ite (or c!1102988 c!1102986) (ite c!1102667 lt!2332109 (Context!10923 call!508745)) (Context!10923 call!508976)) (h!70856 s!2326)))))

(declare-fun b!6134129 () Bool)

(assert (=> b!6134129 (= e!3738705 call!508974)))

(declare-fun bm!508970 () Bool)

(declare-fun call!508972 () (InoxSet Context!10922))

(assert (=> bm!508970 (= call!508974 call!508972)))

(declare-fun b!6134130 () Bool)

(declare-fun c!1102987 () Bool)

(assert (=> b!6134130 (= c!1102987 ((_ is Star!16077) (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))))))

(assert (=> b!6134130 (= e!3738705 e!3738706)))

(declare-fun bm!508971 () Bool)

(assert (=> bm!508971 (= call!508972 call!508971)))

(declare-fun b!6134131 () Bool)

(assert (=> b!6134131 (= e!3738708 e!3738703)))

(assert (=> b!6134131 (= c!1102988 ((_ is Union!16077) (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))))))

(declare-fun b!6134132 () Bool)

(assert (=> b!6134132 (= e!3738704 (nullable!6070 (regOne!32666 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292)))))))))

(declare-fun b!6134133 () Bool)

(assert (=> b!6134133 (= e!3738707 ((_ map or) call!508975 call!508972))))

(declare-fun b!6134134 () Bool)

(assert (=> b!6134134 (= e!3738703 ((_ map or) call!508975 call!508971))))

(declare-fun bm!508968 () Bool)

(assert (=> bm!508968 (= call!508976 call!508973)))

(declare-fun d!1921936 () Bool)

(declare-fun c!1102985 () Bool)

(assert (=> d!1921936 (= c!1102985 (and ((_ is ElementMatch!16077) (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))) (= (c!1102519 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292))))) (h!70856 s!2326))))))

(assert (=> d!1921936 (= (derivationStepZipperDown!1325 (ite c!1102667 (regOne!32667 (regTwo!32667 (regOne!32666 r!7292))) (regOne!32666 (regTwo!32667 (regOne!32666 r!7292)))) (ite c!1102667 lt!2332109 (Context!10923 call!508745)) (h!70856 s!2326)) e!3738708)))

(assert (= (and d!1921936 c!1102985) b!6134127))

(assert (= (and d!1921936 (not c!1102985)) b!6134131))

(assert (= (and b!6134131 c!1102988) b!6134134))

(assert (= (and b!6134131 (not c!1102988)) b!6134128))

(assert (= (and b!6134128 res!2542100) b!6134132))

(assert (= (and b!6134128 c!1102986) b!6134133))

(assert (= (and b!6134128 (not c!1102986)) b!6134124))

(assert (= (and b!6134124 c!1102984) b!6134129))

(assert (= (and b!6134124 (not c!1102984)) b!6134130))

(assert (= (and b!6134130 c!1102987) b!6134125))

(assert (= (and b!6134130 (not c!1102987)) b!6134126))

(assert (= (or b!6134129 b!6134125) bm!508968))

(assert (= (or b!6134129 b!6134125) bm!508970))

(assert (= (or b!6134133 bm!508968) bm!508966))

(assert (= (or b!6134133 bm!508970) bm!508971))

(assert (= (or b!6134134 bm!508971) bm!508969))

(assert (= (or b!6134134 b!6134133) bm!508967))

(declare-fun m!6977006 () Bool)

(assert (=> b!6134127 m!6977006))

(declare-fun m!6977008 () Bool)

(assert (=> b!6134132 m!6977008))

(declare-fun m!6977010 () Bool)

(assert (=> bm!508969 m!6977010))

(declare-fun m!6977012 () Bool)

(assert (=> bm!508967 m!6977012))

(declare-fun m!6977014 () Bool)

(assert (=> bm!508966 m!6977014))

(assert (=> bm!508739 d!1921936))

(declare-fun b!6134136 () Bool)

(declare-fun e!3738710 () List!64532)

(assert (=> b!6134136 (= e!3738710 (Cons!64408 (h!70856 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408))) (++!14163 (t!378003 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408))) (t!378003 s!2326))))))

(declare-fun d!1921938 () Bool)

(declare-fun e!3738709 () Bool)

(assert (=> d!1921938 e!3738709))

(declare-fun res!2542102 () Bool)

(assert (=> d!1921938 (=> (not res!2542102) (not e!3738709))))

(declare-fun lt!2332239 () List!64532)

(assert (=> d!1921938 (= res!2542102 (= (content!11979 lt!2332239) ((_ map or) (content!11979 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408))) (content!11979 (t!378003 s!2326)))))))

(assert (=> d!1921938 (= lt!2332239 e!3738710)))

(declare-fun c!1102989 () Bool)

(assert (=> d!1921938 (= c!1102989 ((_ is Nil!64408) (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408))))))

(assert (=> d!1921938 (= (++!14163 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)) (t!378003 s!2326)) lt!2332239)))

(declare-fun b!6134138 () Bool)

(assert (=> b!6134138 (= e!3738709 (or (not (= (t!378003 s!2326) Nil!64408)) (= lt!2332239 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)))))))

(declare-fun b!6134137 () Bool)

(declare-fun res!2542101 () Bool)

(assert (=> b!6134137 (=> (not res!2542101) (not e!3738709))))

(assert (=> b!6134137 (= res!2542101 (= (size!40220 lt!2332239) (+ (size!40220 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408))) (size!40220 (t!378003 s!2326)))))))

(declare-fun b!6134135 () Bool)

(assert (=> b!6134135 (= e!3738710 (t!378003 s!2326))))

(assert (= (and d!1921938 c!1102989) b!6134135))

(assert (= (and d!1921938 (not c!1102989)) b!6134136))

(assert (= (and d!1921938 res!2542102) b!6134137))

(assert (= (and b!6134137 res!2542101) b!6134138))

(declare-fun m!6977016 () Bool)

(assert (=> b!6134136 m!6977016))

(declare-fun m!6977018 () Bool)

(assert (=> d!1921938 m!6977018))

(assert (=> d!1921938 m!6975974))

(declare-fun m!6977020 () Bool)

(assert (=> d!1921938 m!6977020))

(declare-fun m!6977022 () Bool)

(assert (=> d!1921938 m!6977022))

(declare-fun m!6977024 () Bool)

(assert (=> b!6134137 m!6977024))

(assert (=> b!6134137 m!6975974))

(declare-fun m!6977026 () Bool)

(assert (=> b!6134137 m!6977026))

(declare-fun m!6977028 () Bool)

(assert (=> b!6134137 m!6977028))

(assert (=> b!6132941 d!1921938))

(declare-fun b!6134140 () Bool)

(declare-fun e!3738712 () List!64532)

(assert (=> b!6134140 (= e!3738712 (Cons!64408 (h!70856 Nil!64408) (++!14163 (t!378003 Nil!64408) (Cons!64408 (h!70856 s!2326) Nil!64408))))))

(declare-fun d!1921940 () Bool)

(declare-fun e!3738711 () Bool)

(assert (=> d!1921940 e!3738711))

(declare-fun res!2542104 () Bool)

(assert (=> d!1921940 (=> (not res!2542104) (not e!3738711))))

(declare-fun lt!2332240 () List!64532)

(assert (=> d!1921940 (= res!2542104 (= (content!11979 lt!2332240) ((_ map or) (content!11979 Nil!64408) (content!11979 (Cons!64408 (h!70856 s!2326) Nil!64408)))))))

(assert (=> d!1921940 (= lt!2332240 e!3738712)))

(declare-fun c!1102990 () Bool)

(assert (=> d!1921940 (= c!1102990 ((_ is Nil!64408) Nil!64408))))

(assert (=> d!1921940 (= (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)) lt!2332240)))

(declare-fun b!6134142 () Bool)

(assert (=> b!6134142 (= e!3738711 (or (not (= (Cons!64408 (h!70856 s!2326) Nil!64408) Nil!64408)) (= lt!2332240 Nil!64408)))))

(declare-fun b!6134141 () Bool)

(declare-fun res!2542103 () Bool)

(assert (=> b!6134141 (=> (not res!2542103) (not e!3738711))))

(assert (=> b!6134141 (= res!2542103 (= (size!40220 lt!2332240) (+ (size!40220 Nil!64408) (size!40220 (Cons!64408 (h!70856 s!2326) Nil!64408)))))))

(declare-fun b!6134139 () Bool)

(assert (=> b!6134139 (= e!3738712 (Cons!64408 (h!70856 s!2326) Nil!64408))))

(assert (= (and d!1921940 c!1102990) b!6134139))

(assert (= (and d!1921940 (not c!1102990)) b!6134140))

(assert (= (and d!1921940 res!2542104) b!6134141))

(assert (= (and b!6134141 res!2542103) b!6134142))

(declare-fun m!6977030 () Bool)

(assert (=> b!6134140 m!6977030))

(declare-fun m!6977032 () Bool)

(assert (=> d!1921940 m!6977032))

(declare-fun m!6977034 () Bool)

(assert (=> d!1921940 m!6977034))

(declare-fun m!6977036 () Bool)

(assert (=> d!1921940 m!6977036))

(declare-fun m!6977038 () Bool)

(assert (=> b!6134141 m!6977038))

(declare-fun m!6977040 () Bool)

(assert (=> b!6134141 m!6977040))

(declare-fun m!6977042 () Bool)

(assert (=> b!6134141 m!6977042))

(assert (=> b!6132941 d!1921940))

(declare-fun d!1921942 () Bool)

(assert (=> d!1921942 (= (++!14163 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)) (t!378003 s!2326)) s!2326)))

(declare-fun lt!2332243 () Unit!157463)

(declare-fun choose!45578 (List!64532 C!32424 List!64532 List!64532) Unit!157463)

(assert (=> d!1921942 (= lt!2332243 (choose!45578 Nil!64408 (h!70856 s!2326) (t!378003 s!2326) s!2326))))

(assert (=> d!1921942 (= (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) (t!378003 s!2326))) s!2326)))

(assert (=> d!1921942 (= (lemmaMoveElementToOtherListKeepsConcatEq!2258 Nil!64408 (h!70856 s!2326) (t!378003 s!2326) s!2326) lt!2332243)))

(declare-fun bs!1521471 () Bool)

(assert (= bs!1521471 d!1921942))

(assert (=> bs!1521471 m!6975974))

(assert (=> bs!1521471 m!6975974))

(assert (=> bs!1521471 m!6975976))

(declare-fun m!6977044 () Bool)

(assert (=> bs!1521471 m!6977044))

(declare-fun m!6977046 () Bool)

(assert (=> bs!1521471 m!6977046))

(assert (=> b!6132941 d!1921942))

(declare-fun b!6134143 () Bool)

(declare-fun e!3738714 () Bool)

(declare-fun lt!2332244 () Option!15968)

(assert (=> b!6134143 (= e!3738714 (= (++!14163 (_1!36359 (get!22217 lt!2332244)) (_2!36359 (get!22217 lt!2332244))) s!2326))))

(declare-fun b!6134144 () Bool)

(declare-fun e!3738717 () Bool)

(assert (=> b!6134144 (= e!3738717 (not (isDefined!12671 lt!2332244)))))

(declare-fun b!6134145 () Bool)

(declare-fun res!2542109 () Bool)

(assert (=> b!6134145 (=> (not res!2542109) (not e!3738714))))

(assert (=> b!6134145 (= res!2542109 (matchR!8260 (regTwo!32666 r!7292) (_2!36359 (get!22217 lt!2332244))))))

(declare-fun b!6134146 () Bool)

(declare-fun e!3738716 () Option!15968)

(declare-fun e!3738715 () Option!15968)

(assert (=> b!6134146 (= e!3738716 e!3738715)))

(declare-fun c!1102991 () Bool)

(assert (=> b!6134146 (= c!1102991 ((_ is Nil!64408) (t!378003 s!2326)))))

(declare-fun d!1921944 () Bool)

(assert (=> d!1921944 e!3738717))

(declare-fun res!2542106 () Bool)

(assert (=> d!1921944 (=> res!2542106 e!3738717)))

(assert (=> d!1921944 (= res!2542106 e!3738714)))

(declare-fun res!2542108 () Bool)

(assert (=> d!1921944 (=> (not res!2542108) (not e!3738714))))

(assert (=> d!1921944 (= res!2542108 (isDefined!12671 lt!2332244))))

(assert (=> d!1921944 (= lt!2332244 e!3738716)))

(declare-fun c!1102992 () Bool)

(declare-fun e!3738713 () Bool)

(assert (=> d!1921944 (= c!1102992 e!3738713)))

(declare-fun res!2542107 () Bool)

(assert (=> d!1921944 (=> (not res!2542107) (not e!3738713))))

(assert (=> d!1921944 (= res!2542107 (matchR!8260 (regOne!32666 r!7292) (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408))))))

(assert (=> d!1921944 (validRegex!7813 (regOne!32666 r!7292))))

(assert (=> d!1921944 (= (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)) (t!378003 s!2326) s!2326) lt!2332244)))

(declare-fun b!6134147 () Bool)

(assert (=> b!6134147 (= e!3738716 (Some!15967 (tuple2!66113 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)) (t!378003 s!2326))))))

(declare-fun b!6134148 () Bool)

(declare-fun res!2542105 () Bool)

(assert (=> b!6134148 (=> (not res!2542105) (not e!3738714))))

(assert (=> b!6134148 (= res!2542105 (matchR!8260 (regOne!32666 r!7292) (_1!36359 (get!22217 lt!2332244))))))

(declare-fun b!6134149 () Bool)

(assert (=> b!6134149 (= e!3738715 None!15967)))

(declare-fun b!6134150 () Bool)

(assert (=> b!6134150 (= e!3738713 (matchR!8260 (regTwo!32666 r!7292) (t!378003 s!2326)))))

(declare-fun b!6134151 () Bool)

(declare-fun lt!2332246 () Unit!157463)

(declare-fun lt!2332245 () Unit!157463)

(assert (=> b!6134151 (= lt!2332246 lt!2332245)))

(assert (=> b!6134151 (= (++!14163 (++!14163 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)) (Cons!64408 (h!70856 (t!378003 s!2326)) Nil!64408)) (t!378003 (t!378003 s!2326))) s!2326)))

(assert (=> b!6134151 (= lt!2332245 (lemmaMoveElementToOtherListKeepsConcatEq!2258 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)) (h!70856 (t!378003 s!2326)) (t!378003 (t!378003 s!2326)) s!2326))))

(assert (=> b!6134151 (= e!3738715 (findConcatSeparation!2382 (regOne!32666 r!7292) (regTwo!32666 r!7292) (++!14163 (++!14163 Nil!64408 (Cons!64408 (h!70856 s!2326) Nil!64408)) (Cons!64408 (h!70856 (t!378003 s!2326)) Nil!64408)) (t!378003 (t!378003 s!2326)) s!2326))))

(assert (= (and d!1921944 res!2542107) b!6134150))

(assert (= (and d!1921944 c!1102992) b!6134147))

(assert (= (and d!1921944 (not c!1102992)) b!6134146))

(assert (= (and b!6134146 c!1102991) b!6134149))

(assert (= (and b!6134146 (not c!1102991)) b!6134151))

(assert (= (and d!1921944 res!2542108) b!6134148))

(assert (= (and b!6134148 res!2542105) b!6134145))

(assert (= (and b!6134145 res!2542109) b!6134143))

(assert (= (and d!1921944 (not res!2542106)) b!6134144))

(declare-fun m!6977048 () Bool)

(assert (=> b!6134145 m!6977048))

(declare-fun m!6977050 () Bool)

(assert (=> b!6134145 m!6977050))

(declare-fun m!6977052 () Bool)

(assert (=> b!6134150 m!6977052))

(declare-fun m!6977054 () Bool)

(assert (=> d!1921944 m!6977054))

(assert (=> d!1921944 m!6975974))

(declare-fun m!6977056 () Bool)

(assert (=> d!1921944 m!6977056))

(assert (=> d!1921944 m!6975968))

(assert (=> b!6134148 m!6977048))

(declare-fun m!6977058 () Bool)

(assert (=> b!6134148 m!6977058))

(assert (=> b!6134143 m!6977048))

(declare-fun m!6977060 () Bool)

(assert (=> b!6134143 m!6977060))

(assert (=> b!6134151 m!6975974))

(declare-fun m!6977062 () Bool)

(assert (=> b!6134151 m!6977062))

(assert (=> b!6134151 m!6977062))

(declare-fun m!6977064 () Bool)

(assert (=> b!6134151 m!6977064))

(assert (=> b!6134151 m!6975974))

(declare-fun m!6977066 () Bool)

(assert (=> b!6134151 m!6977066))

(assert (=> b!6134151 m!6977062))

(declare-fun m!6977068 () Bool)

(assert (=> b!6134151 m!6977068))

(assert (=> b!6134144 m!6977054))

(assert (=> b!6132941 d!1921944))

(declare-fun d!1921946 () Bool)

(declare-fun c!1102993 () Bool)

(assert (=> d!1921946 (= c!1102993 (isEmpty!36353 (tail!11761 (t!378003 s!2326))))))

(declare-fun e!3738718 () Bool)

(assert (=> d!1921946 (= (matchZipper!2089 (derivationStepZipper!2050 ((_ map or) lt!2332102 lt!2332103) (head!12676 (t!378003 s!2326))) (tail!11761 (t!378003 s!2326))) e!3738718)))

(declare-fun b!6134152 () Bool)

(assert (=> b!6134152 (= e!3738718 (nullableZipper!1858 (derivationStepZipper!2050 ((_ map or) lt!2332102 lt!2332103) (head!12676 (t!378003 s!2326)))))))

(declare-fun b!6134153 () Bool)

(assert (=> b!6134153 (= e!3738718 (matchZipper!2089 (derivationStepZipper!2050 (derivationStepZipper!2050 ((_ map or) lt!2332102 lt!2332103) (head!12676 (t!378003 s!2326))) (head!12676 (tail!11761 (t!378003 s!2326)))) (tail!11761 (tail!11761 (t!378003 s!2326)))))))

(assert (= (and d!1921946 c!1102993) b!6134152))

(assert (= (and d!1921946 (not c!1102993)) b!6134153))

(assert (=> d!1921946 m!6976034))

(assert (=> d!1921946 m!6976622))

(assert (=> b!6134152 m!6976040))

(declare-fun m!6977070 () Bool)

(assert (=> b!6134152 m!6977070))

(assert (=> b!6134153 m!6976034))

(assert (=> b!6134153 m!6976626))

(assert (=> b!6134153 m!6976040))

(assert (=> b!6134153 m!6976626))

(declare-fun m!6977072 () Bool)

(assert (=> b!6134153 m!6977072))

(assert (=> b!6134153 m!6976034))

(assert (=> b!6134153 m!6976630))

(assert (=> b!6134153 m!6977072))

(assert (=> b!6134153 m!6976630))

(declare-fun m!6977074 () Bool)

(assert (=> b!6134153 m!6977074))

(assert (=> b!6133049 d!1921946))

(declare-fun bs!1521472 () Bool)

(declare-fun d!1921948 () Bool)

(assert (= bs!1521472 (and d!1921948 d!1921742)))

(declare-fun lambda!334229 () Int)

(assert (=> bs!1521472 (= lambda!334229 lambda!334198)))

(declare-fun bs!1521473 () Bool)

(assert (= bs!1521473 (and d!1921948 b!6132399)))

(assert (=> bs!1521473 (= (= (head!12676 (t!378003 s!2326)) (h!70856 s!2326)) (= lambda!334229 lambda!334103))))

(declare-fun bs!1521474 () Bool)

(assert (= bs!1521474 (and d!1921948 d!1921898)))

(assert (=> bs!1521474 (= lambda!334229 lambda!334226)))

(declare-fun bs!1521475 () Bool)

(assert (= bs!1521475 (and d!1921948 d!1921756)))

(assert (=> bs!1521475 (= lambda!334229 lambda!334203)))

(declare-fun bs!1521476 () Bool)

(assert (= bs!1521476 (and d!1921948 d!1921902)))

(assert (=> bs!1521476 (= lambda!334229 lambda!334227)))

(declare-fun bs!1521477 () Bool)

(assert (= bs!1521477 (and d!1921948 d!1921826)))

(assert (=> bs!1521477 (= lambda!334229 lambda!334214)))

(assert (=> d!1921948 true))

(assert (=> d!1921948 (= (derivationStepZipper!2050 ((_ map or) lt!2332102 lt!2332103) (head!12676 (t!378003 s!2326))) (flatMap!1582 ((_ map or) lt!2332102 lt!2332103) lambda!334229))))

(declare-fun bs!1521478 () Bool)

(assert (= bs!1521478 d!1921948))

(declare-fun m!6977076 () Bool)

(assert (=> bs!1521478 m!6977076))

(assert (=> b!6133049 d!1921948))

(assert (=> b!6133049 d!1921744))

(assert (=> b!6133049 d!1921746))

(declare-fun b!6134155 () Bool)

(declare-fun e!3738719 () Bool)

(declare-fun tp!1714039 () Bool)

(declare-fun tp!1714036 () Bool)

(assert (=> b!6134155 (= e!3738719 (and tp!1714039 tp!1714036))))

(declare-fun b!6134156 () Bool)

(declare-fun tp!1714037 () Bool)

(assert (=> b!6134156 (= e!3738719 tp!1714037)))

(assert (=> b!6133159 (= tp!1713849 e!3738719)))

(declare-fun b!6134154 () Bool)

(assert (=> b!6134154 (= e!3738719 tp_is_empty!41407)))

(declare-fun b!6134157 () Bool)

(declare-fun tp!1714035 () Bool)

(declare-fun tp!1714038 () Bool)

(assert (=> b!6134157 (= e!3738719 (and tp!1714035 tp!1714038))))

(assert (= (and b!6133159 ((_ is ElementMatch!16077) (reg!16406 (regOne!32666 r!7292)))) b!6134154))

(assert (= (and b!6133159 ((_ is Concat!24922) (reg!16406 (regOne!32666 r!7292)))) b!6134155))

(assert (= (and b!6133159 ((_ is Star!16077) (reg!16406 (regOne!32666 r!7292)))) b!6134156))

(assert (= (and b!6133159 ((_ is Union!16077) (reg!16406 (regOne!32666 r!7292)))) b!6134157))

(declare-fun b!6134159 () Bool)

(declare-fun e!3738720 () Bool)

(declare-fun tp!1714044 () Bool)

(declare-fun tp!1714041 () Bool)

(assert (=> b!6134159 (= e!3738720 (and tp!1714044 tp!1714041))))

(declare-fun b!6134160 () Bool)

(declare-fun tp!1714042 () Bool)

(assert (=> b!6134160 (= e!3738720 tp!1714042)))

(assert (=> b!6133160 (= tp!1713847 e!3738720)))

(declare-fun b!6134158 () Bool)

(assert (=> b!6134158 (= e!3738720 tp_is_empty!41407)))

(declare-fun b!6134161 () Bool)

(declare-fun tp!1714040 () Bool)

(declare-fun tp!1714043 () Bool)

(assert (=> b!6134161 (= e!3738720 (and tp!1714040 tp!1714043))))

(assert (= (and b!6133160 ((_ is ElementMatch!16077) (regOne!32667 (regOne!32666 r!7292)))) b!6134158))

(assert (= (and b!6133160 ((_ is Concat!24922) (regOne!32667 (regOne!32666 r!7292)))) b!6134159))

(assert (= (and b!6133160 ((_ is Star!16077) (regOne!32667 (regOne!32666 r!7292)))) b!6134160))

(assert (= (and b!6133160 ((_ is Union!16077) (regOne!32667 (regOne!32666 r!7292)))) b!6134161))

(declare-fun b!6134163 () Bool)

(declare-fun e!3738721 () Bool)

(declare-fun tp!1714049 () Bool)

(declare-fun tp!1714046 () Bool)

(assert (=> b!6134163 (= e!3738721 (and tp!1714049 tp!1714046))))

(declare-fun b!6134164 () Bool)

(declare-fun tp!1714047 () Bool)

(assert (=> b!6134164 (= e!3738721 tp!1714047)))

(assert (=> b!6133160 (= tp!1713850 e!3738721)))

(declare-fun b!6134162 () Bool)

(assert (=> b!6134162 (= e!3738721 tp_is_empty!41407)))

(declare-fun b!6134165 () Bool)

(declare-fun tp!1714045 () Bool)

(declare-fun tp!1714048 () Bool)

(assert (=> b!6134165 (= e!3738721 (and tp!1714045 tp!1714048))))

(assert (= (and b!6133160 ((_ is ElementMatch!16077) (regTwo!32667 (regOne!32666 r!7292)))) b!6134162))

(assert (= (and b!6133160 ((_ is Concat!24922) (regTwo!32667 (regOne!32666 r!7292)))) b!6134163))

(assert (= (and b!6133160 ((_ is Star!16077) (regTwo!32667 (regOne!32666 r!7292)))) b!6134164))

(assert (= (and b!6133160 ((_ is Union!16077) (regTwo!32667 (regOne!32666 r!7292)))) b!6134165))

(declare-fun b!6134167 () Bool)

(declare-fun e!3738722 () Bool)

(declare-fun tp!1714054 () Bool)

(declare-fun tp!1714051 () Bool)

(assert (=> b!6134167 (= e!3738722 (and tp!1714054 tp!1714051))))

(declare-fun b!6134168 () Bool)

(declare-fun tp!1714052 () Bool)

(assert (=> b!6134168 (= e!3738722 tp!1714052)))

(assert (=> b!6133158 (= tp!1713851 e!3738722)))

(declare-fun b!6134166 () Bool)

(assert (=> b!6134166 (= e!3738722 tp_is_empty!41407)))

(declare-fun b!6134169 () Bool)

(declare-fun tp!1714050 () Bool)

(declare-fun tp!1714053 () Bool)

(assert (=> b!6134169 (= e!3738722 (and tp!1714050 tp!1714053))))

(assert (= (and b!6133158 ((_ is ElementMatch!16077) (regOne!32666 (regOne!32666 r!7292)))) b!6134166))

(assert (= (and b!6133158 ((_ is Concat!24922) (regOne!32666 (regOne!32666 r!7292)))) b!6134167))

(assert (= (and b!6133158 ((_ is Star!16077) (regOne!32666 (regOne!32666 r!7292)))) b!6134168))

(assert (= (and b!6133158 ((_ is Union!16077) (regOne!32666 (regOne!32666 r!7292)))) b!6134169))

(declare-fun b!6134171 () Bool)

(declare-fun e!3738723 () Bool)

(declare-fun tp!1714059 () Bool)

(declare-fun tp!1714056 () Bool)

(assert (=> b!6134171 (= e!3738723 (and tp!1714059 tp!1714056))))

(declare-fun b!6134172 () Bool)

(declare-fun tp!1714057 () Bool)

(assert (=> b!6134172 (= e!3738723 tp!1714057)))

(assert (=> b!6133158 (= tp!1713848 e!3738723)))

(declare-fun b!6134170 () Bool)

(assert (=> b!6134170 (= e!3738723 tp_is_empty!41407)))

(declare-fun b!6134173 () Bool)

(declare-fun tp!1714055 () Bool)

(declare-fun tp!1714058 () Bool)

(assert (=> b!6134173 (= e!3738723 (and tp!1714055 tp!1714058))))

(assert (= (and b!6133158 ((_ is ElementMatch!16077) (regTwo!32666 (regOne!32666 r!7292)))) b!6134170))

(assert (= (and b!6133158 ((_ is Concat!24922) (regTwo!32666 (regOne!32666 r!7292)))) b!6134171))

(assert (= (and b!6133158 ((_ is Star!16077) (regTwo!32666 (regOne!32666 r!7292)))) b!6134172))

(assert (= (and b!6133158 ((_ is Union!16077) (regTwo!32666 (regOne!32666 r!7292)))) b!6134173))

(declare-fun condSetEmpty!41470 () Bool)

(assert (=> setNonEmpty!41462 (= condSetEmpty!41470 (= setRest!41462 ((as const (Array Context!10922 Bool)) false)))))

(declare-fun setRes!41470 () Bool)

(assert (=> setNonEmpty!41462 (= tp!1713861 setRes!41470)))

(declare-fun setIsEmpty!41470 () Bool)

(assert (=> setIsEmpty!41470 setRes!41470))

(declare-fun e!3738724 () Bool)

(declare-fun setNonEmpty!41470 () Bool)

(declare-fun tp!1714060 () Bool)

(declare-fun setElem!41470 () Context!10922)

(assert (=> setNonEmpty!41470 (= setRes!41470 (and tp!1714060 (inv!83439 setElem!41470) e!3738724))))

(declare-fun setRest!41470 () (InoxSet Context!10922))

(assert (=> setNonEmpty!41470 (= setRest!41462 ((_ map or) (store ((as const (Array Context!10922 Bool)) false) setElem!41470 true) setRest!41470))))

(declare-fun b!6134174 () Bool)

(declare-fun tp!1714061 () Bool)

(assert (=> b!6134174 (= e!3738724 tp!1714061)))

(assert (= (and setNonEmpty!41462 condSetEmpty!41470) setIsEmpty!41470))

(assert (= (and setNonEmpty!41462 (not condSetEmpty!41470)) setNonEmpty!41470))

(assert (= setNonEmpty!41470 b!6134174))

(declare-fun m!6977078 () Bool)

(assert (=> setNonEmpty!41470 m!6977078))

(declare-fun b!6134176 () Bool)

(declare-fun e!3738725 () Bool)

(declare-fun tp!1714066 () Bool)

(declare-fun tp!1714063 () Bool)

(assert (=> b!6134176 (= e!3738725 (and tp!1714066 tp!1714063))))

(declare-fun b!6134177 () Bool)

(declare-fun tp!1714064 () Bool)

(assert (=> b!6134177 (= e!3738725 tp!1714064)))

(assert (=> b!6133152 (= tp!1713840 e!3738725)))

(declare-fun b!6134175 () Bool)

(assert (=> b!6134175 (= e!3738725 tp_is_empty!41407)))

(declare-fun b!6134178 () Bool)

(declare-fun tp!1714062 () Bool)

(declare-fun tp!1714065 () Bool)

(assert (=> b!6134178 (= e!3738725 (and tp!1714062 tp!1714065))))

(assert (= (and b!6133152 ((_ is ElementMatch!16077) (h!70854 (exprs!5961 (h!70855 zl!343))))) b!6134175))

(assert (= (and b!6133152 ((_ is Concat!24922) (h!70854 (exprs!5961 (h!70855 zl!343))))) b!6134176))

(assert (= (and b!6133152 ((_ is Star!16077) (h!70854 (exprs!5961 (h!70855 zl!343))))) b!6134177))

(assert (= (and b!6133152 ((_ is Union!16077) (h!70854 (exprs!5961 (h!70855 zl!343))))) b!6134178))

(declare-fun b!6134179 () Bool)

(declare-fun e!3738726 () Bool)

(declare-fun tp!1714067 () Bool)

(declare-fun tp!1714068 () Bool)

(assert (=> b!6134179 (= e!3738726 (and tp!1714067 tp!1714068))))

(assert (=> b!6133152 (= tp!1713841 e!3738726)))

(assert (= (and b!6133152 ((_ is Cons!64406) (t!378001 (exprs!5961 (h!70855 zl!343))))) b!6134179))

(declare-fun b!6134181 () Bool)

(declare-fun e!3738727 () Bool)

(declare-fun tp!1714073 () Bool)

(declare-fun tp!1714070 () Bool)

(assert (=> b!6134181 (= e!3738727 (and tp!1714073 tp!1714070))))

(declare-fun b!6134182 () Bool)

(declare-fun tp!1714071 () Bool)

(assert (=> b!6134182 (= e!3738727 tp!1714071)))

(assert (=> b!6133120 (= tp!1713809 e!3738727)))

(declare-fun b!6134180 () Bool)

(assert (=> b!6134180 (= e!3738727 tp_is_empty!41407)))

(declare-fun b!6134183 () Bool)

(declare-fun tp!1714069 () Bool)

(declare-fun tp!1714072 () Bool)

(assert (=> b!6134183 (= e!3738727 (and tp!1714069 tp!1714072))))

(assert (= (and b!6133120 ((_ is ElementMatch!16077) (h!70854 (exprs!5961 setElem!41456)))) b!6134180))

(assert (= (and b!6133120 ((_ is Concat!24922) (h!70854 (exprs!5961 setElem!41456)))) b!6134181))

(assert (= (and b!6133120 ((_ is Star!16077) (h!70854 (exprs!5961 setElem!41456)))) b!6134182))

(assert (= (and b!6133120 ((_ is Union!16077) (h!70854 (exprs!5961 setElem!41456)))) b!6134183))

(declare-fun b!6134184 () Bool)

(declare-fun e!3738728 () Bool)

(declare-fun tp!1714074 () Bool)

(declare-fun tp!1714075 () Bool)

(assert (=> b!6134184 (= e!3738728 (and tp!1714074 tp!1714075))))

(assert (=> b!6133120 (= tp!1713810 e!3738728)))

(assert (= (and b!6133120 ((_ is Cons!64406) (t!378001 (exprs!5961 setElem!41456)))) b!6134184))

(declare-fun b!6134186 () Bool)

(declare-fun e!3738729 () Bool)

(declare-fun tp!1714080 () Bool)

(declare-fun tp!1714077 () Bool)

(assert (=> b!6134186 (= e!3738729 (and tp!1714080 tp!1714077))))

(declare-fun b!6134187 () Bool)

(declare-fun tp!1714078 () Bool)

(assert (=> b!6134187 (= e!3738729 tp!1714078)))

(assert (=> b!6133150 (= tp!1713837 e!3738729)))

(declare-fun b!6134185 () Bool)

(assert (=> b!6134185 (= e!3738729 tp_is_empty!41407)))

(declare-fun b!6134188 () Bool)

(declare-fun tp!1714076 () Bool)

(declare-fun tp!1714079 () Bool)

(assert (=> b!6134188 (= e!3738729 (and tp!1714076 tp!1714079))))

(assert (= (and b!6133150 ((_ is ElementMatch!16077) (reg!16406 (regTwo!32667 r!7292)))) b!6134185))

(assert (= (and b!6133150 ((_ is Concat!24922) (reg!16406 (regTwo!32667 r!7292)))) b!6134186))

(assert (= (and b!6133150 ((_ is Star!16077) (reg!16406 (regTwo!32667 r!7292)))) b!6134187))

(assert (= (and b!6133150 ((_ is Union!16077) (reg!16406 (regTwo!32667 r!7292)))) b!6134188))

(declare-fun b!6134190 () Bool)

(declare-fun e!3738730 () Bool)

(declare-fun tp!1714085 () Bool)

(declare-fun tp!1714082 () Bool)

(assert (=> b!6134190 (= e!3738730 (and tp!1714085 tp!1714082))))

(declare-fun b!6134191 () Bool)

(declare-fun tp!1714083 () Bool)

(assert (=> b!6134191 (= e!3738730 tp!1714083)))

(assert (=> b!6133151 (= tp!1713835 e!3738730)))

(declare-fun b!6134189 () Bool)

(assert (=> b!6134189 (= e!3738730 tp_is_empty!41407)))

(declare-fun b!6134192 () Bool)

(declare-fun tp!1714081 () Bool)

(declare-fun tp!1714084 () Bool)

(assert (=> b!6134192 (= e!3738730 (and tp!1714081 tp!1714084))))

(assert (= (and b!6133151 ((_ is ElementMatch!16077) (regOne!32667 (regTwo!32667 r!7292)))) b!6134189))

(assert (= (and b!6133151 ((_ is Concat!24922) (regOne!32667 (regTwo!32667 r!7292)))) b!6134190))

(assert (= (and b!6133151 ((_ is Star!16077) (regOne!32667 (regTwo!32667 r!7292)))) b!6134191))

(assert (= (and b!6133151 ((_ is Union!16077) (regOne!32667 (regTwo!32667 r!7292)))) b!6134192))

(declare-fun b!6134194 () Bool)

(declare-fun e!3738731 () Bool)

(declare-fun tp!1714090 () Bool)

(declare-fun tp!1714087 () Bool)

(assert (=> b!6134194 (= e!3738731 (and tp!1714090 tp!1714087))))

(declare-fun b!6134195 () Bool)

(declare-fun tp!1714088 () Bool)

(assert (=> b!6134195 (= e!3738731 tp!1714088)))

(assert (=> b!6133151 (= tp!1713838 e!3738731)))

(declare-fun b!6134193 () Bool)

(assert (=> b!6134193 (= e!3738731 tp_is_empty!41407)))

(declare-fun b!6134196 () Bool)

(declare-fun tp!1714086 () Bool)

(declare-fun tp!1714089 () Bool)

(assert (=> b!6134196 (= e!3738731 (and tp!1714086 tp!1714089))))

(assert (= (and b!6133151 ((_ is ElementMatch!16077) (regTwo!32667 (regTwo!32667 r!7292)))) b!6134193))

(assert (= (and b!6133151 ((_ is Concat!24922) (regTwo!32667 (regTwo!32667 r!7292)))) b!6134194))

(assert (= (and b!6133151 ((_ is Star!16077) (regTwo!32667 (regTwo!32667 r!7292)))) b!6134195))

(assert (= (and b!6133151 ((_ is Union!16077) (regTwo!32667 (regTwo!32667 r!7292)))) b!6134196))

(declare-fun b!6134198 () Bool)

(declare-fun e!3738732 () Bool)

(declare-fun tp!1714095 () Bool)

(declare-fun tp!1714092 () Bool)

(assert (=> b!6134198 (= e!3738732 (and tp!1714095 tp!1714092))))

(declare-fun b!6134199 () Bool)

(declare-fun tp!1714093 () Bool)

(assert (=> b!6134199 (= e!3738732 tp!1714093)))

(assert (=> b!6133149 (= tp!1713839 e!3738732)))

(declare-fun b!6134197 () Bool)

(assert (=> b!6134197 (= e!3738732 tp_is_empty!41407)))

(declare-fun b!6134200 () Bool)

(declare-fun tp!1714091 () Bool)

(declare-fun tp!1714094 () Bool)

(assert (=> b!6134200 (= e!3738732 (and tp!1714091 tp!1714094))))

(assert (= (and b!6133149 ((_ is ElementMatch!16077) (regOne!32666 (regTwo!32667 r!7292)))) b!6134197))

(assert (= (and b!6133149 ((_ is Concat!24922) (regOne!32666 (regTwo!32667 r!7292)))) b!6134198))

(assert (= (and b!6133149 ((_ is Star!16077) (regOne!32666 (regTwo!32667 r!7292)))) b!6134199))

(assert (= (and b!6133149 ((_ is Union!16077) (regOne!32666 (regTwo!32667 r!7292)))) b!6134200))

(declare-fun b!6134202 () Bool)

(declare-fun e!3738733 () Bool)

(declare-fun tp!1714100 () Bool)

(declare-fun tp!1714097 () Bool)

(assert (=> b!6134202 (= e!3738733 (and tp!1714100 tp!1714097))))

(declare-fun b!6134203 () Bool)

(declare-fun tp!1714098 () Bool)

(assert (=> b!6134203 (= e!3738733 tp!1714098)))

(assert (=> b!6133149 (= tp!1713836 e!3738733)))

(declare-fun b!6134201 () Bool)

(assert (=> b!6134201 (= e!3738733 tp_is_empty!41407)))

(declare-fun b!6134204 () Bool)

(declare-fun tp!1714096 () Bool)

(declare-fun tp!1714099 () Bool)

(assert (=> b!6134204 (= e!3738733 (and tp!1714096 tp!1714099))))

(assert (= (and b!6133149 ((_ is ElementMatch!16077) (regTwo!32666 (regTwo!32667 r!7292)))) b!6134201))

(assert (= (and b!6133149 ((_ is Concat!24922) (regTwo!32666 (regTwo!32667 r!7292)))) b!6134202))

(assert (= (and b!6133149 ((_ is Star!16077) (regTwo!32666 (regTwo!32667 r!7292)))) b!6134203))

(assert (= (and b!6133149 ((_ is Union!16077) (regTwo!32666 (regTwo!32667 r!7292)))) b!6134204))

(declare-fun b!6134206 () Bool)

(declare-fun e!3738734 () Bool)

(declare-fun tp!1714105 () Bool)

(declare-fun tp!1714102 () Bool)

(assert (=> b!6134206 (= e!3738734 (and tp!1714105 tp!1714102))))

(declare-fun b!6134207 () Bool)

(declare-fun tp!1714103 () Bool)

(assert (=> b!6134207 (= e!3738734 tp!1714103)))

(assert (=> b!6133164 (= tp!1713852 e!3738734)))

(declare-fun b!6134205 () Bool)

(assert (=> b!6134205 (= e!3738734 tp_is_empty!41407)))

(declare-fun b!6134208 () Bool)

(declare-fun tp!1714101 () Bool)

(declare-fun tp!1714104 () Bool)

(assert (=> b!6134208 (= e!3738734 (and tp!1714101 tp!1714104))))

(assert (= (and b!6133164 ((_ is ElementMatch!16077) (regOne!32667 (regTwo!32666 r!7292)))) b!6134205))

(assert (= (and b!6133164 ((_ is Concat!24922) (regOne!32667 (regTwo!32666 r!7292)))) b!6134206))

(assert (= (and b!6133164 ((_ is Star!16077) (regOne!32667 (regTwo!32666 r!7292)))) b!6134207))

(assert (= (and b!6133164 ((_ is Union!16077) (regOne!32667 (regTwo!32666 r!7292)))) b!6134208))

(declare-fun b!6134210 () Bool)

(declare-fun e!3738735 () Bool)

(declare-fun tp!1714110 () Bool)

(declare-fun tp!1714107 () Bool)

(assert (=> b!6134210 (= e!3738735 (and tp!1714110 tp!1714107))))

(declare-fun b!6134211 () Bool)

(declare-fun tp!1714108 () Bool)

(assert (=> b!6134211 (= e!3738735 tp!1714108)))

(assert (=> b!6133164 (= tp!1713855 e!3738735)))

(declare-fun b!6134209 () Bool)

(assert (=> b!6134209 (= e!3738735 tp_is_empty!41407)))

(declare-fun b!6134212 () Bool)

(declare-fun tp!1714106 () Bool)

(declare-fun tp!1714109 () Bool)

(assert (=> b!6134212 (= e!3738735 (and tp!1714106 tp!1714109))))

(assert (= (and b!6133164 ((_ is ElementMatch!16077) (regTwo!32667 (regTwo!32666 r!7292)))) b!6134209))

(assert (= (and b!6133164 ((_ is Concat!24922) (regTwo!32667 (regTwo!32666 r!7292)))) b!6134210))

(assert (= (and b!6133164 ((_ is Star!16077) (regTwo!32667 (regTwo!32666 r!7292)))) b!6134211))

(assert (= (and b!6133164 ((_ is Union!16077) (regTwo!32667 (regTwo!32666 r!7292)))) b!6134212))

(declare-fun b!6134214 () Bool)

(declare-fun e!3738736 () Bool)

(declare-fun tp!1714115 () Bool)

(declare-fun tp!1714112 () Bool)

(assert (=> b!6134214 (= e!3738736 (and tp!1714115 tp!1714112))))

(declare-fun b!6134215 () Bool)

(declare-fun tp!1714113 () Bool)

(assert (=> b!6134215 (= e!3738736 tp!1714113)))

(assert (=> b!6133155 (= tp!1713844 e!3738736)))

(declare-fun b!6134213 () Bool)

(assert (=> b!6134213 (= e!3738736 tp_is_empty!41407)))

(declare-fun b!6134216 () Bool)

(declare-fun tp!1714111 () Bool)

(declare-fun tp!1714114 () Bool)

(assert (=> b!6134216 (= e!3738736 (and tp!1714111 tp!1714114))))

(assert (= (and b!6133155 ((_ is ElementMatch!16077) (reg!16406 (reg!16406 r!7292)))) b!6134213))

(assert (= (and b!6133155 ((_ is Concat!24922) (reg!16406 (reg!16406 r!7292)))) b!6134214))

(assert (= (and b!6133155 ((_ is Star!16077) (reg!16406 (reg!16406 r!7292)))) b!6134215))

(assert (= (and b!6133155 ((_ is Union!16077) (reg!16406 (reg!16406 r!7292)))) b!6134216))

(declare-fun b!6134218 () Bool)

(declare-fun e!3738738 () Bool)

(declare-fun tp!1714116 () Bool)

(assert (=> b!6134218 (= e!3738738 tp!1714116)))

(declare-fun b!6134217 () Bool)

(declare-fun e!3738737 () Bool)

(declare-fun tp!1714117 () Bool)

(assert (=> b!6134217 (= e!3738737 (and (inv!83439 (h!70855 (t!378002 (t!378002 zl!343)))) e!3738738 tp!1714117))))

(assert (=> b!6133132 (= tp!1713819 e!3738737)))

(assert (= b!6134217 b!6134218))

(assert (= (and b!6133132 ((_ is Cons!64407) (t!378002 (t!378002 zl!343)))) b!6134217))

(declare-fun m!6977080 () Bool)

(assert (=> b!6134217 m!6977080))

(declare-fun b!6134220 () Bool)

(declare-fun e!3738739 () Bool)

(declare-fun tp!1714122 () Bool)

(declare-fun tp!1714119 () Bool)

(assert (=> b!6134220 (= e!3738739 (and tp!1714122 tp!1714119))))

(declare-fun b!6134221 () Bool)

(declare-fun tp!1714120 () Bool)

(assert (=> b!6134221 (= e!3738739 tp!1714120)))

(assert (=> b!6133154 (= tp!1713846 e!3738739)))

(declare-fun b!6134219 () Bool)

(assert (=> b!6134219 (= e!3738739 tp_is_empty!41407)))

(declare-fun b!6134222 () Bool)

(declare-fun tp!1714118 () Bool)

(declare-fun tp!1714121 () Bool)

(assert (=> b!6134222 (= e!3738739 (and tp!1714118 tp!1714121))))

(assert (= (and b!6133154 ((_ is ElementMatch!16077) (regOne!32666 (reg!16406 r!7292)))) b!6134219))

(assert (= (and b!6133154 ((_ is Concat!24922) (regOne!32666 (reg!16406 r!7292)))) b!6134220))

(assert (= (and b!6133154 ((_ is Star!16077) (regOne!32666 (reg!16406 r!7292)))) b!6134221))

(assert (= (and b!6133154 ((_ is Union!16077) (regOne!32666 (reg!16406 r!7292)))) b!6134222))

(declare-fun b!6134224 () Bool)

(declare-fun e!3738740 () Bool)

(declare-fun tp!1714127 () Bool)

(declare-fun tp!1714124 () Bool)

(assert (=> b!6134224 (= e!3738740 (and tp!1714127 tp!1714124))))

(declare-fun b!6134225 () Bool)

(declare-fun tp!1714125 () Bool)

(assert (=> b!6134225 (= e!3738740 tp!1714125)))

(assert (=> b!6133154 (= tp!1713843 e!3738740)))

(declare-fun b!6134223 () Bool)

(assert (=> b!6134223 (= e!3738740 tp_is_empty!41407)))

(declare-fun b!6134226 () Bool)

(declare-fun tp!1714123 () Bool)

(declare-fun tp!1714126 () Bool)

(assert (=> b!6134226 (= e!3738740 (and tp!1714123 tp!1714126))))

(assert (= (and b!6133154 ((_ is ElementMatch!16077) (regTwo!32666 (reg!16406 r!7292)))) b!6134223))

(assert (= (and b!6133154 ((_ is Concat!24922) (regTwo!32666 (reg!16406 r!7292)))) b!6134224))

(assert (= (and b!6133154 ((_ is Star!16077) (regTwo!32666 (reg!16406 r!7292)))) b!6134225))

(assert (= (and b!6133154 ((_ is Union!16077) (regTwo!32666 (reg!16406 r!7292)))) b!6134226))

(declare-fun b!6134227 () Bool)

(declare-fun e!3738741 () Bool)

(declare-fun tp!1714128 () Bool)

(assert (=> b!6134227 (= e!3738741 (and tp_is_empty!41407 tp!1714128))))

(assert (=> b!6133125 (= tp!1713813 e!3738741)))

(assert (= (and b!6133125 ((_ is Cons!64408) (t!378003 (t!378003 s!2326)))) b!6134227))

(declare-fun b!6134229 () Bool)

(declare-fun e!3738742 () Bool)

(declare-fun tp!1714133 () Bool)

(declare-fun tp!1714130 () Bool)

(assert (=> b!6134229 (= e!3738742 (and tp!1714133 tp!1714130))))

(declare-fun b!6134230 () Bool)

(declare-fun tp!1714131 () Bool)

(assert (=> b!6134230 (= e!3738742 tp!1714131)))

(assert (=> b!6133163 (= tp!1713854 e!3738742)))

(declare-fun b!6134228 () Bool)

(assert (=> b!6134228 (= e!3738742 tp_is_empty!41407)))

(declare-fun b!6134231 () Bool)

(declare-fun tp!1714129 () Bool)

(declare-fun tp!1714132 () Bool)

(assert (=> b!6134231 (= e!3738742 (and tp!1714129 tp!1714132))))

(assert (= (and b!6133163 ((_ is ElementMatch!16077) (reg!16406 (regTwo!32666 r!7292)))) b!6134228))

(assert (= (and b!6133163 ((_ is Concat!24922) (reg!16406 (regTwo!32666 r!7292)))) b!6134229))

(assert (= (and b!6133163 ((_ is Star!16077) (reg!16406 (regTwo!32666 r!7292)))) b!6134230))

(assert (= (and b!6133163 ((_ is Union!16077) (reg!16406 (regTwo!32666 r!7292)))) b!6134231))

(declare-fun b!6134233 () Bool)

(declare-fun e!3738743 () Bool)

(declare-fun tp!1714138 () Bool)

(declare-fun tp!1714135 () Bool)

(assert (=> b!6134233 (= e!3738743 (and tp!1714138 tp!1714135))))

(declare-fun b!6134234 () Bool)

(declare-fun tp!1714136 () Bool)

(assert (=> b!6134234 (= e!3738743 tp!1714136)))

(assert (=> b!6133156 (= tp!1713842 e!3738743)))

(declare-fun b!6134232 () Bool)

(assert (=> b!6134232 (= e!3738743 tp_is_empty!41407)))

(declare-fun b!6134235 () Bool)

(declare-fun tp!1714134 () Bool)

(declare-fun tp!1714137 () Bool)

(assert (=> b!6134235 (= e!3738743 (and tp!1714134 tp!1714137))))

(assert (= (and b!6133156 ((_ is ElementMatch!16077) (regOne!32667 (reg!16406 r!7292)))) b!6134232))

(assert (= (and b!6133156 ((_ is Concat!24922) (regOne!32667 (reg!16406 r!7292)))) b!6134233))

(assert (= (and b!6133156 ((_ is Star!16077) (regOne!32667 (reg!16406 r!7292)))) b!6134234))

(assert (= (and b!6133156 ((_ is Union!16077) (regOne!32667 (reg!16406 r!7292)))) b!6134235))

(declare-fun b!6134237 () Bool)

(declare-fun e!3738744 () Bool)

(declare-fun tp!1714143 () Bool)

(declare-fun tp!1714140 () Bool)

(assert (=> b!6134237 (= e!3738744 (and tp!1714143 tp!1714140))))

(declare-fun b!6134238 () Bool)

(declare-fun tp!1714141 () Bool)

(assert (=> b!6134238 (= e!3738744 tp!1714141)))

(assert (=> b!6133156 (= tp!1713845 e!3738744)))

(declare-fun b!6134236 () Bool)

(assert (=> b!6134236 (= e!3738744 tp_is_empty!41407)))

(declare-fun b!6134239 () Bool)

(declare-fun tp!1714139 () Bool)

(declare-fun tp!1714142 () Bool)

(assert (=> b!6134239 (= e!3738744 (and tp!1714139 tp!1714142))))

(assert (= (and b!6133156 ((_ is ElementMatch!16077) (regTwo!32667 (reg!16406 r!7292)))) b!6134236))

(assert (= (and b!6133156 ((_ is Concat!24922) (regTwo!32667 (reg!16406 r!7292)))) b!6134237))

(assert (= (and b!6133156 ((_ is Star!16077) (regTwo!32667 (reg!16406 r!7292)))) b!6134238))

(assert (= (and b!6133156 ((_ is Union!16077) (regTwo!32667 (reg!16406 r!7292)))) b!6134239))

(declare-fun b!6134240 () Bool)

(declare-fun e!3738745 () Bool)

(declare-fun tp!1714144 () Bool)

(declare-fun tp!1714145 () Bool)

(assert (=> b!6134240 (= e!3738745 (and tp!1714144 tp!1714145))))

(assert (=> b!6133133 (= tp!1713818 e!3738745)))

(assert (= (and b!6133133 ((_ is Cons!64406) (exprs!5961 (h!70855 (t!378002 zl!343))))) b!6134240))

(declare-fun b!6134241 () Bool)

(declare-fun e!3738746 () Bool)

(declare-fun tp!1714146 () Bool)

(declare-fun tp!1714147 () Bool)

(assert (=> b!6134241 (= e!3738746 (and tp!1714146 tp!1714147))))

(assert (=> b!6133169 (= tp!1713862 e!3738746)))

(assert (= (and b!6133169 ((_ is Cons!64406) (exprs!5961 setElem!41462))) b!6134241))

(declare-fun b!6134243 () Bool)

(declare-fun e!3738747 () Bool)

(declare-fun tp!1714152 () Bool)

(declare-fun tp!1714149 () Bool)

(assert (=> b!6134243 (= e!3738747 (and tp!1714152 tp!1714149))))

(declare-fun b!6134244 () Bool)

(declare-fun tp!1714150 () Bool)

(assert (=> b!6134244 (= e!3738747 tp!1714150)))

(assert (=> b!6133162 (= tp!1713856 e!3738747)))

(declare-fun b!6134242 () Bool)

(assert (=> b!6134242 (= e!3738747 tp_is_empty!41407)))

(declare-fun b!6134245 () Bool)

(declare-fun tp!1714148 () Bool)

(declare-fun tp!1714151 () Bool)

(assert (=> b!6134245 (= e!3738747 (and tp!1714148 tp!1714151))))

(assert (= (and b!6133162 ((_ is ElementMatch!16077) (regOne!32666 (regTwo!32666 r!7292)))) b!6134242))

(assert (= (and b!6133162 ((_ is Concat!24922) (regOne!32666 (regTwo!32666 r!7292)))) b!6134243))

(assert (= (and b!6133162 ((_ is Star!16077) (regOne!32666 (regTwo!32666 r!7292)))) b!6134244))

(assert (= (and b!6133162 ((_ is Union!16077) (regOne!32666 (regTwo!32666 r!7292)))) b!6134245))

(declare-fun b!6134247 () Bool)

(declare-fun e!3738748 () Bool)

(declare-fun tp!1714157 () Bool)

(declare-fun tp!1714154 () Bool)

(assert (=> b!6134247 (= e!3738748 (and tp!1714157 tp!1714154))))

(declare-fun b!6134248 () Bool)

(declare-fun tp!1714155 () Bool)

(assert (=> b!6134248 (= e!3738748 tp!1714155)))

(assert (=> b!6133162 (= tp!1713853 e!3738748)))

(declare-fun b!6134246 () Bool)

(assert (=> b!6134246 (= e!3738748 tp_is_empty!41407)))

(declare-fun b!6134249 () Bool)

(declare-fun tp!1714153 () Bool)

(declare-fun tp!1714156 () Bool)

(assert (=> b!6134249 (= e!3738748 (and tp!1714153 tp!1714156))))

(assert (= (and b!6133162 ((_ is ElementMatch!16077) (regTwo!32666 (regTwo!32666 r!7292)))) b!6134246))

(assert (= (and b!6133162 ((_ is Concat!24922) (regTwo!32666 (regTwo!32666 r!7292)))) b!6134247))

(assert (= (and b!6133162 ((_ is Star!16077) (regTwo!32666 (regTwo!32666 r!7292)))) b!6134248))

(assert (= (and b!6133162 ((_ is Union!16077) (regTwo!32666 (regTwo!32666 r!7292)))) b!6134249))

(declare-fun b!6134251 () Bool)

(declare-fun e!3738749 () Bool)

(declare-fun tp!1714162 () Bool)

(declare-fun tp!1714159 () Bool)

(assert (=> b!6134251 (= e!3738749 (and tp!1714162 tp!1714159))))

(declare-fun b!6134252 () Bool)

(declare-fun tp!1714160 () Bool)

(assert (=> b!6134252 (= e!3738749 tp!1714160)))

(assert (=> b!6133147 (= tp!1713830 e!3738749)))

(declare-fun b!6134250 () Bool)

(assert (=> b!6134250 (= e!3738749 tp_is_empty!41407)))

(declare-fun b!6134253 () Bool)

(declare-fun tp!1714158 () Bool)

(declare-fun tp!1714161 () Bool)

(assert (=> b!6134253 (= e!3738749 (and tp!1714158 tp!1714161))))

(assert (= (and b!6133147 ((_ is ElementMatch!16077) (regOne!32667 (regOne!32667 r!7292)))) b!6134250))

(assert (= (and b!6133147 ((_ is Concat!24922) (regOne!32667 (regOne!32667 r!7292)))) b!6134251))

(assert (= (and b!6133147 ((_ is Star!16077) (regOne!32667 (regOne!32667 r!7292)))) b!6134252))

(assert (= (and b!6133147 ((_ is Union!16077) (regOne!32667 (regOne!32667 r!7292)))) b!6134253))

(declare-fun b!6134255 () Bool)

(declare-fun e!3738750 () Bool)

(declare-fun tp!1714167 () Bool)

(declare-fun tp!1714164 () Bool)

(assert (=> b!6134255 (= e!3738750 (and tp!1714167 tp!1714164))))

(declare-fun b!6134256 () Bool)

(declare-fun tp!1714165 () Bool)

(assert (=> b!6134256 (= e!3738750 tp!1714165)))

(assert (=> b!6133147 (= tp!1713833 e!3738750)))

(declare-fun b!6134254 () Bool)

(assert (=> b!6134254 (= e!3738750 tp_is_empty!41407)))

(declare-fun b!6134257 () Bool)

(declare-fun tp!1714163 () Bool)

(declare-fun tp!1714166 () Bool)

(assert (=> b!6134257 (= e!3738750 (and tp!1714163 tp!1714166))))

(assert (= (and b!6133147 ((_ is ElementMatch!16077) (regTwo!32667 (regOne!32667 r!7292)))) b!6134254))

(assert (= (and b!6133147 ((_ is Concat!24922) (regTwo!32667 (regOne!32667 r!7292)))) b!6134255))

(assert (= (and b!6133147 ((_ is Star!16077) (regTwo!32667 (regOne!32667 r!7292)))) b!6134256))

(assert (= (and b!6133147 ((_ is Union!16077) (regTwo!32667 (regOne!32667 r!7292)))) b!6134257))

(declare-fun b!6134259 () Bool)

(declare-fun e!3738751 () Bool)

(declare-fun tp!1714172 () Bool)

(declare-fun tp!1714169 () Bool)

(assert (=> b!6134259 (= e!3738751 (and tp!1714172 tp!1714169))))

(declare-fun b!6134260 () Bool)

(declare-fun tp!1714170 () Bool)

(assert (=> b!6134260 (= e!3738751 tp!1714170)))

(assert (=> b!6133145 (= tp!1713834 e!3738751)))

(declare-fun b!6134258 () Bool)

(assert (=> b!6134258 (= e!3738751 tp_is_empty!41407)))

(declare-fun b!6134261 () Bool)

(declare-fun tp!1714168 () Bool)

(declare-fun tp!1714171 () Bool)

(assert (=> b!6134261 (= e!3738751 (and tp!1714168 tp!1714171))))

(assert (= (and b!6133145 ((_ is ElementMatch!16077) (regOne!32666 (regOne!32667 r!7292)))) b!6134258))

(assert (= (and b!6133145 ((_ is Concat!24922) (regOne!32666 (regOne!32667 r!7292)))) b!6134259))

(assert (= (and b!6133145 ((_ is Star!16077) (regOne!32666 (regOne!32667 r!7292)))) b!6134260))

(assert (= (and b!6133145 ((_ is Union!16077) (regOne!32666 (regOne!32667 r!7292)))) b!6134261))

(declare-fun b!6134263 () Bool)

(declare-fun e!3738752 () Bool)

(declare-fun tp!1714177 () Bool)

(declare-fun tp!1714174 () Bool)

(assert (=> b!6134263 (= e!3738752 (and tp!1714177 tp!1714174))))

(declare-fun b!6134264 () Bool)

(declare-fun tp!1714175 () Bool)

(assert (=> b!6134264 (= e!3738752 tp!1714175)))

(assert (=> b!6133145 (= tp!1713831 e!3738752)))

(declare-fun b!6134262 () Bool)

(assert (=> b!6134262 (= e!3738752 tp_is_empty!41407)))

(declare-fun b!6134265 () Bool)

(declare-fun tp!1714173 () Bool)

(declare-fun tp!1714176 () Bool)

(assert (=> b!6134265 (= e!3738752 (and tp!1714173 tp!1714176))))

(assert (= (and b!6133145 ((_ is ElementMatch!16077) (regTwo!32666 (regOne!32667 r!7292)))) b!6134262))

(assert (= (and b!6133145 ((_ is Concat!24922) (regTwo!32666 (regOne!32667 r!7292)))) b!6134263))

(assert (= (and b!6133145 ((_ is Star!16077) (regTwo!32666 (regOne!32667 r!7292)))) b!6134264))

(assert (= (and b!6133145 ((_ is Union!16077) (regTwo!32666 (regOne!32667 r!7292)))) b!6134265))

(declare-fun b!6134267 () Bool)

(declare-fun e!3738753 () Bool)

(declare-fun tp!1714182 () Bool)

(declare-fun tp!1714179 () Bool)

(assert (=> b!6134267 (= e!3738753 (and tp!1714182 tp!1714179))))

(declare-fun b!6134268 () Bool)

(declare-fun tp!1714180 () Bool)

(assert (=> b!6134268 (= e!3738753 tp!1714180)))

(assert (=> b!6133146 (= tp!1713832 e!3738753)))

(declare-fun b!6134266 () Bool)

(assert (=> b!6134266 (= e!3738753 tp_is_empty!41407)))

(declare-fun b!6134269 () Bool)

(declare-fun tp!1714178 () Bool)

(declare-fun tp!1714181 () Bool)

(assert (=> b!6134269 (= e!3738753 (and tp!1714178 tp!1714181))))

(assert (= (and b!6133146 ((_ is ElementMatch!16077) (reg!16406 (regOne!32667 r!7292)))) b!6134266))

(assert (= (and b!6133146 ((_ is Concat!24922) (reg!16406 (regOne!32667 r!7292)))) b!6134267))

(assert (= (and b!6133146 ((_ is Star!16077) (reg!16406 (regOne!32667 r!7292)))) b!6134268))

(assert (= (and b!6133146 ((_ is Union!16077) (reg!16406 (regOne!32667 r!7292)))) b!6134269))

(declare-fun b_lambda!233491 () Bool)

(assert (= b_lambda!233477 (or b!6132399 b_lambda!233491)))

(assert (=> d!1921732 d!1921492))

(declare-fun b_lambda!233493 () Bool)

(assert (= b_lambda!233483 (or d!1921454 b_lambda!233493)))

(declare-fun bs!1521479 () Bool)

(declare-fun d!1921950 () Bool)

(assert (= bs!1521479 (and d!1921950 d!1921454)))

(assert (=> bs!1521479 (= (dynLambda!25376 lambda!334150 (h!70854 (exprs!5961 (h!70855 zl!343)))) (validRegex!7813 (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(declare-fun m!6977082 () Bool)

(assert (=> bs!1521479 m!6977082))

(assert (=> b!6133836 d!1921950))

(declare-fun b_lambda!233495 () Bool)

(assert (= b_lambda!233487 (or d!1921490 b_lambda!233495)))

(declare-fun bs!1521480 () Bool)

(declare-fun d!1921952 () Bool)

(assert (= bs!1521480 (and d!1921952 d!1921490)))

(assert (=> bs!1521480 (= (dynLambda!25376 lambda!334161 (h!70854 (exprs!5961 setElem!41456))) (validRegex!7813 (h!70854 (exprs!5961 setElem!41456))))))

(declare-fun m!6977084 () Bool)

(assert (=> bs!1521480 m!6977084))

(assert (=> b!6134075 d!1921952))

(declare-fun b_lambda!233497 () Bool)

(assert (= b_lambda!233479 (or d!1921474 b_lambda!233497)))

(declare-fun bs!1521481 () Bool)

(declare-fun d!1921954 () Bool)

(assert (= bs!1521481 (and d!1921954 d!1921474)))

(assert (=> bs!1521481 (= (dynLambda!25376 lambda!334157 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (regTwo!32667 (regOne!32666 r!7292)) (t!378001 (exprs!5961 (h!70855 zl!343)))))))) (validRegex!7813 (h!70854 (exprs!5961 (Context!10923 (Cons!64406 (regTwo!32667 (regOne!32666 r!7292)) (t!378001 (exprs!5961 (h!70855 zl!343)))))))))))

(declare-fun m!6977086 () Bool)

(assert (=> bs!1521481 m!6977086))

(assert (=> b!6133774 d!1921954))

(declare-fun b_lambda!233499 () Bool)

(assert (= b_lambda!233485 (or d!1921480 b_lambda!233499)))

(declare-fun bs!1521482 () Bool)

(declare-fun d!1921956 () Bool)

(assert (= bs!1521482 (and d!1921956 d!1921480)))

(assert (=> bs!1521482 (= (dynLambda!25376 lambda!334160 (h!70854 (exprs!5961 (h!70855 zl!343)))) (validRegex!7813 (h!70854 (exprs!5961 (h!70855 zl!343)))))))

(assert (=> bs!1521482 m!6977082))

(assert (=> b!6133976 d!1921956))

(declare-fun b_lambda!233501 () Bool)

(assert (= b_lambda!233481 (or d!1921396 b_lambda!233501)))

(declare-fun bs!1521483 () Bool)

(declare-fun d!1921958 () Bool)

(assert (= bs!1521483 (and d!1921958 d!1921396)))

(assert (=> bs!1521483 (= (dynLambda!25376 lambda!334125 (h!70854 (unfocusZipperList!1498 zl!343))) (validRegex!7813 (h!70854 (unfocusZipperList!1498 zl!343))))))

(declare-fun m!6977088 () Bool)

(assert (=> bs!1521483 m!6977088))

(assert (=> b!6133802 d!1921958))

(declare-fun b_lambda!233503 () Bool)

(assert (= b_lambda!233489 (or d!1921404 b_lambda!233503)))

(declare-fun bs!1521484 () Bool)

(declare-fun d!1921960 () Bool)

(assert (= bs!1521484 (and d!1921960 d!1921404)))

(assert (=> bs!1521484 (= (dynLambda!25376 lambda!334128 (h!70854 lt!2332158)) (validRegex!7813 (h!70854 lt!2332158)))))

(declare-fun m!6977090 () Bool)

(assert (=> bs!1521484 m!6977090))

(assert (=> b!6134120 d!1921960))

(check-sat (not d!1921796) (not b!6134183) (not b!6134062) (not b!6134150) (not b_lambda!233501) (not b!6134155) (not b_lambda!233493) (not d!1921794) (not d!1921750) (not bm!508874) (not d!1921740) (not bm!508922) (not bm!508884) (not bs!1521483) (not b_lambda!233497) (not b!6133887) tp_is_empty!41407 (not bm!508950) (not b!6134227) (not b!6133959) (not b!6134268) (not b!6134173) (not b!6133747) (not d!1921792) (not d!1921866) (not b!6133909) (not b!6134243) (not b!6134199) (not bs!1521481) (not d!1921824) (not b!6134190) (not b!6134024) (not b!6134211) (not b!6133846) (not b!6134072) (not b!6134141) (not bm!508929) (not b!6133743) (not bm!508931) (not b!6133831) (not b!6133931) (not bm!508938) (not d!1921754) (not b!6134207) (not bm!508928) (not setNonEmpty!41470) (not b!6134256) (not b!6134034) (not setNonEmpty!41469) (not b!6134144) (not bm!508877) (not b!6134196) (not bs!1521484) (not bm!508882) (not d!1921756) (not b!6133727) (not b!6134231) (not b!6134171) (not b!6134237) (not d!1921768) (not b!6133776) (not b!6133844) (not d!1921808) (not b!6134214) (not d!1921738) (not b!6134208) (not b_lambda!233503) (not b!6134239) (not bm!508872) (not b!6134255) (not b!6133902) (not b!6134240) (not b!6134031) (not b!6134267) (not b!6134121) (not d!1921944) (not b!6133910) (not b!6133767) (not b!6134252) (not b!6133986) (not b!6133783) (not bm!508966) (not b!6134023) (not b!6134248) (not b!6134217) (not bm!508915) (not b!6134188) (not b!6134151) (not d!1921884) (not b!6133810) (not d!1921820) (not b!6134194) (not b!6134136) (not d!1921790) (not b!6134206) (not bs!1521479) (not b!6134186) (not bs!1521482) (not bm!508956) (not d!1921838) (not b!6134181) (not b!6133845) (not bm!508940) (not bm!508910) (not b!6134203) (not bm!508880) (not b!6134140) (not b!6133784) (not bm!508886) (not bm!508909) (not b!6134101) (not d!1921878) (not b!6134153) (not d!1921798) (not b!6134145) (not b_lambda!233491) (not bm!508941) (not d!1921748) (not b!6134037) (not b!6133966) (not bm!508939) (not bm!508881) (not b!6134247) (not b!6134198) (not b!6134249) (not d!1921848) (not b!6134159) (not b!6133977) (not b!6134245) (not b!6134174) (not b!6134182) (not b!6134195) (not b!6134143) (not d!1921940) (not b!6133812) (not d!1921938) (not d!1921934) (not b!6133775) (not b!6134002) (not b!6133961) (not b!6133748) (not b!6134204) (not bm!508916) (not bm!508946) (not bm!508919) (not b!6134269) (not b!6133728) (not b!6133972) (not bm!508943) (not d!1921898) (not b!6134187) (not bm!508920) (not d!1921926) (not b!6134035) (not b!6134257) (not d!1921850) (not b!6133841) (not d!1921810) (not b_lambda!233499) (not b!6134080) (not b!6134244) (not b!6134234) (not b!6134112) (not b!6133765) (not b!6134081) (not b!6134148) (not b!6134260) (not b!6133956) (not d!1921836) (not b!6133899) (not b!6133779) (not bs!1521480) (not b!6133766) (not b!6133932) (not b!6134210) (not d!1921846) (not b!6133763) (not bm!508870) (not d!1921806) (not d!1921946) (not b!6133896) (not b!6133726) (not b!6133897) (not b!6134157) (not d!1921800) (not b!6133919) (not b!6134176) (not b!6134168) (not b!6134132) (not b!6133960) (not b!6134230) (not b!6134218) (not b!6134251) (not b!6133744) (not b!6133817) (not b!6133803) (not b!6133994) (not d!1921902) (not b!6134259) (not b!6134063) (not bm!508948) (not bm!508954) (not bm!508901) (not b!6134036) (not b!6134229) (not b!6133888) (not b!6133733) (not b!6134179) (not bm!508947) (not d!1921948) (not b!6134220) (not b!6133892) (not d!1921832) (not d!1921732) (not b!6134033) (not d!1921782) (not b!6134233) (not b!6134191) (not bm!508962) (not bm!508912) (not d!1921894) (not b!6134261) (not bm!508885) (not b!6133757) (not b!6133739) (not d!1921774) (not d!1921784) (not b!6133798) (not b!6134032) (not b!6133804) (not bm!508926) (not b!6133723) (not b!6133720) (not d!1921770) (not d!1921728) (not b!6134076) (not b!6133889) (not b!6134119) (not bm!508960) (not b!6134212) (not b!6134184) (not d!1921840) (not bm!508953) (not b!6134222) (not b!6134156) (not b!6133764) (not b!6133789) (not b!6134090) (not d!1921852) (not b!6133894) (not b!6134178) (not b!6133942) (not b!6134202) (not d!1921942) (not b!6134018) (not b!6133807) (not b!6134221) (not b!6134226) (not b!6134167) (not b!6134163) (not b!6133792) (not b!6134253) (not b!6134224) (not b!6134238) (not b!6133851) (not b!6133832) (not b!6134215) (not b!6134137) (not bm!508899) (not d!1921890) (not bm!508871) (not b!6134225) (not b!6134241) (not b!6133953) (not bm!508925) (not bm!508902) (not b!6134165) (not b!6134118) (not d!1921828) (not b!6133837) (not b!6134264) (not d!1921826) (not b!6133782) (not bm!508930) (not d!1921764) (not b_lambda!233447) (not b!6133999) (not b!6133769) (not b!6133890) (not b!6134014) (not d!1921742) (not b!6134263) (not b!6134169) (not b!6134200) (not b!6134172) (not d!1921896) (not b!6134235) (not bm!508888) (not b!6133762) (not b!6134161) (not b!6133823) (not b!6133838) (not bm!508903) (not b!6133835) (not bm!508917) (not b!6134152) (not d!1921788) (not b!6133879) (not bm!508906) (not bm!508967) (not bm!508875) (not bm!508959) (not b!6134164) (not b!6134216) (not b!6133811) (not b!6134177) (not bm!508937) (not bm!508965) (not bm!508904) (not b!6134265) (not b!6134192) (not b!6134122) (not b!6134160) (not d!1921900) (not bm!508969) (not b_lambda!233495) (not bm!508900))
(check-sat)
