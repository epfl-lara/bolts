; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!653032 () Bool)

(assert start!653032)

(declare-fun b!6733407 () Bool)

(assert (=> b!6733407 true))

(assert (=> b!6733407 true))

(declare-fun lambda!378009 () Int)

(declare-fun lambda!378008 () Int)

(assert (=> b!6733407 (not (= lambda!378009 lambda!378008))))

(assert (=> b!6733407 true))

(assert (=> b!6733407 true))

(declare-fun lambda!378010 () Int)

(assert (=> b!6733407 (not (= lambda!378010 lambda!378008))))

(assert (=> b!6733407 (not (= lambda!378010 lambda!378009))))

(assert (=> b!6733407 true))

(assert (=> b!6733407 true))

(declare-fun b!6733405 () Bool)

(assert (=> b!6733405 true))

(declare-fun b!6733392 () Bool)

(declare-fun res!2754648 () Bool)

(declare-fun e!4067620 () Bool)

(assert (=> b!6733392 (=> res!2754648 e!4067620)))

(declare-datatypes ((C!33392 0))(
  ( (C!33393 (val!26398 Int)) )
))
(declare-datatypes ((List!65982 0))(
  ( (Nil!65858) (Cons!65858 (h!72306 C!33392) (t!379673 List!65982)) )
))
(declare-fun s!2326 () List!65982)

(get-info :version)

(assert (=> b!6733392 (= res!2754648 ((_ is Nil!65858) s!2326))))

(declare-fun b!6733393 () Bool)

(declare-fun res!2754639 () Bool)

(declare-fun e!4067631 () Bool)

(assert (=> b!6733393 (=> res!2754639 e!4067631)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16561 0))(
  ( (ElementMatch!16561 (c!1248671 C!33392)) (Concat!25406 (regOne!33634 Regex!16561) (regTwo!33634 Regex!16561)) (EmptyExpr!16561) (Star!16561 (reg!16890 Regex!16561)) (EmptyLang!16561) (Union!16561 (regOne!33635 Regex!16561) (regTwo!33635 Regex!16561)) )
))
(declare-datatypes ((List!65983 0))(
  ( (Nil!65859) (Cons!65859 (h!72307 Regex!16561) (t!379674 List!65983)) )
))
(declare-datatypes ((Context!11890 0))(
  ( (Context!11891 (exprs!6445 List!65983)) )
))
(declare-fun lt!2438114 () (InoxSet Context!11890))

(declare-fun matchZipper!2547 ((InoxSet Context!11890) List!65982) Bool)

(declare-fun derivationStepZipper!2505 ((InoxSet Context!11890) C!33392) (InoxSet Context!11890))

(assert (=> b!6733393 (= res!2754639 (not (= (matchZipper!2547 lt!2438114 s!2326) (matchZipper!2547 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326)) (t!379673 s!2326)))))))

(declare-fun b!6733394 () Bool)

(declare-fun res!2754646 () Bool)

(declare-fun e!4067627 () Bool)

(assert (=> b!6733394 (=> (not res!2754646) (not e!4067627))))

(declare-fun z!1189 () (InoxSet Context!11890))

(declare-datatypes ((List!65984 0))(
  ( (Nil!65860) (Cons!65860 (h!72308 Context!11890) (t!379675 List!65984)) )
))
(declare-fun zl!343 () List!65984)

(declare-fun toList!10345 ((InoxSet Context!11890)) List!65984)

(assert (=> b!6733394 (= res!2754646 (= (toList!10345 z!1189) zl!343))))

(declare-fun res!2754649 () Bool)

(assert (=> start!653032 (=> (not res!2754649) (not e!4067627))))

(declare-fun r!7292 () Regex!16561)

(declare-fun validRegex!8297 (Regex!16561) Bool)

(assert (=> start!653032 (= res!2754649 (validRegex!8297 r!7292))))

(assert (=> start!653032 e!4067627))

(declare-fun e!4067623 () Bool)

(assert (=> start!653032 e!4067623))

(declare-fun condSetEmpty!45943 () Bool)

(assert (=> start!653032 (= condSetEmpty!45943 (= z!1189 ((as const (Array Context!11890 Bool)) false)))))

(declare-fun setRes!45943 () Bool)

(assert (=> start!653032 setRes!45943))

(declare-fun e!4067626 () Bool)

(assert (=> start!653032 e!4067626))

(declare-fun e!4067622 () Bool)

(assert (=> start!653032 e!4067622))

(declare-fun b!6733395 () Bool)

(declare-fun e!4067629 () Bool)

(assert (=> b!6733395 (= e!4067620 e!4067629)))

(declare-fun res!2754643 () Bool)

(assert (=> b!6733395 (=> res!2754643 e!4067629)))

(declare-fun lt!2438112 () (InoxSet Context!11890))

(declare-fun lt!2438115 () (InoxSet Context!11890))

(assert (=> b!6733395 (= res!2754643 (not (= lt!2438112 lt!2438115)))))

(declare-fun derivationStepZipperDown!1789 (Regex!16561 Context!11890 C!33392) (InoxSet Context!11890))

(assert (=> b!6733395 (= lt!2438115 (derivationStepZipperDown!1789 r!7292 (Context!11891 Nil!65859) (h!72306 s!2326)))))

(declare-fun derivationStepZipperUp!1715 (Context!11890 C!33392) (InoxSet Context!11890))

(assert (=> b!6733395 (= lt!2438112 (derivationStepZipperUp!1715 (Context!11891 (Cons!65859 r!7292 Nil!65859)) (h!72306 s!2326)))))

(declare-fun lt!2438118 () (InoxSet Context!11890))

(assert (=> b!6733395 (= lt!2438118 (derivationStepZipper!2505 z!1189 (h!72306 s!2326)))))

(declare-fun b!6733396 () Bool)

(declare-fun res!2754637 () Bool)

(declare-fun e!4067628 () Bool)

(assert (=> b!6733396 (=> res!2754637 e!4067628)))

(declare-fun generalisedConcat!2158 (List!65983) Regex!16561)

(assert (=> b!6733396 (= res!2754637 (not (= r!7292 (generalisedConcat!2158 (exprs!6445 (h!72308 zl!343))))))))

(declare-fun b!6733397 () Bool)

(declare-fun tp_is_empty!42375 () Bool)

(declare-fun tp!1846148 () Bool)

(assert (=> b!6733397 (= e!4067622 (and tp_is_empty!42375 tp!1846148))))

(declare-fun b!6733398 () Bool)

(declare-fun tp!1846144 () Bool)

(assert (=> b!6733398 (= e!4067623 tp!1846144)))

(declare-fun b!6733399 () Bool)

(declare-fun res!2754653 () Bool)

(assert (=> b!6733399 (=> res!2754653 e!4067631)))

(declare-fun lt!2438117 () Context!11890)

(declare-fun unfocusZipper!2303 (List!65984) Regex!16561)

(assert (=> b!6733399 (= res!2754653 (not (= (unfocusZipper!2303 (Cons!65860 lt!2438117 Nil!65860)) (Concat!25406 (reg!16890 r!7292) r!7292))))))

(declare-fun b!6733400 () Bool)

(declare-fun lt!2438119 () Context!11890)

(declare-fun inv!84649 (Context!11890) Bool)

(assert (=> b!6733400 (= e!4067631 (inv!84649 lt!2438119))))

(declare-fun lt!2438111 () (InoxSet Context!11890))

(assert (=> b!6733400 (= lt!2438111 (derivationStepZipperUp!1715 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)) (h!72306 s!2326)))))

(declare-fun b!6733401 () Bool)

(declare-fun e!4067624 () Bool)

(declare-fun tp!1846145 () Bool)

(assert (=> b!6733401 (= e!4067624 tp!1846145)))

(declare-fun b!6733402 () Bool)

(declare-fun res!2754640 () Bool)

(assert (=> b!6733402 (=> res!2754640 e!4067631)))

(declare-fun lt!2438109 () Regex!16561)

(assert (=> b!6733402 (= res!2754640 (or (not (= lt!2438109 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6733403 () Bool)

(declare-fun res!2754641 () Bool)

(assert (=> b!6733403 (=> res!2754641 e!4067628)))

(assert (=> b!6733403 (= res!2754641 (not ((_ is Cons!65859) (exprs!6445 (h!72308 zl!343)))))))

(declare-fun b!6733404 () Bool)

(declare-fun e!4067625 () Bool)

(assert (=> b!6733404 (= e!4067625 e!4067631)))

(declare-fun res!2754654 () Bool)

(assert (=> b!6733404 (=> res!2754654 e!4067631)))

(assert (=> b!6733404 (= res!2754654 (not (= lt!2438118 (derivationStepZipperDown!1789 (reg!16890 r!7292) lt!2438119 (h!72306 s!2326)))))))

(declare-fun lt!2438110 () List!65983)

(assert (=> b!6733404 (= lt!2438119 (Context!11891 lt!2438110))))

(declare-fun lambda!378011 () Int)

(declare-fun flatMap!2042 ((InoxSet Context!11890) Int) (InoxSet Context!11890))

(assert (=> b!6733404 (= (flatMap!2042 lt!2438114 lambda!378011) (derivationStepZipperUp!1715 lt!2438117 (h!72306 s!2326)))))

(declare-datatypes ((Unit!159813 0))(
  ( (Unit!159814) )
))
(declare-fun lt!2438124 () Unit!159813)

(declare-fun lemmaFlatMapOnSingletonSet!1568 ((InoxSet Context!11890) Context!11890 Int) Unit!159813)

(assert (=> b!6733404 (= lt!2438124 (lemmaFlatMapOnSingletonSet!1568 lt!2438114 lt!2438117 lambda!378011))))

(declare-fun lt!2438123 () (InoxSet Context!11890))

(assert (=> b!6733404 (= lt!2438123 (derivationStepZipperUp!1715 lt!2438117 (h!72306 s!2326)))))

(assert (=> b!6733404 (= lt!2438114 (store ((as const (Array Context!11890 Bool)) false) lt!2438117 true))))

(assert (=> b!6733404 (= lt!2438117 (Context!11891 (Cons!65859 (reg!16890 r!7292) lt!2438110)))))

(assert (=> b!6733404 (= lt!2438110 (Cons!65859 r!7292 Nil!65859))))

(assert (=> b!6733405 (= e!4067629 e!4067625)))

(declare-fun res!2754644 () Bool)

(assert (=> b!6733405 (=> res!2754644 e!4067625)))

(assert (=> b!6733405 (= res!2754644 (not (= lt!2438118 lt!2438115)))))

(assert (=> b!6733405 (= (flatMap!2042 z!1189 lambda!378011) (derivationStepZipperUp!1715 (h!72308 zl!343) (h!72306 s!2326)))))

(declare-fun lt!2438120 () Unit!159813)

(assert (=> b!6733405 (= lt!2438120 (lemmaFlatMapOnSingletonSet!1568 z!1189 (h!72308 zl!343) lambda!378011))))

(declare-fun b!6733406 () Bool)

(declare-fun e!4067632 () Bool)

(declare-fun tp!1846149 () Bool)

(assert (=> b!6733406 (= e!4067632 tp!1846149)))

(assert (=> b!6733407 (= e!4067628 e!4067620)))

(declare-fun res!2754650 () Bool)

(assert (=> b!6733407 (=> res!2754650 e!4067620)))

(declare-fun lt!2438122 () Bool)

(declare-fun e!4067630 () Bool)

(assert (=> b!6733407 (= res!2754650 (not (= lt!2438122 e!4067630)))))

(declare-fun res!2754642 () Bool)

(assert (=> b!6733407 (=> res!2754642 e!4067630)))

(declare-fun isEmpty!38193 (List!65982) Bool)

(assert (=> b!6733407 (= res!2754642 (isEmpty!38193 s!2326))))

(declare-fun Exists!3629 (Int) Bool)

(assert (=> b!6733407 (= (Exists!3629 lambda!378008) (Exists!3629 lambda!378010))))

(declare-fun lt!2438107 () Unit!159813)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2156 (Regex!16561 Regex!16561 List!65982) Unit!159813)

(assert (=> b!6733407 (= lt!2438107 (lemmaExistCutMatchRandMatchRSpecEquivalent!2156 (reg!16890 r!7292) r!7292 s!2326))))

(assert (=> b!6733407 (= (Exists!3629 lambda!378008) (Exists!3629 lambda!378009))))

(declare-fun lt!2438116 () Unit!159813)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!720 (Regex!16561 List!65982) Unit!159813)

(assert (=> b!6733407 (= lt!2438116 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!720 (reg!16890 r!7292) s!2326))))

(declare-fun lt!2438121 () Bool)

(assert (=> b!6733407 (= lt!2438121 (Exists!3629 lambda!378008))))

(declare-datatypes ((tuple2!67072 0))(
  ( (tuple2!67073 (_1!36839 List!65982) (_2!36839 List!65982)) )
))
(declare-datatypes ((Option!16448 0))(
  ( (None!16447) (Some!16447 (v!52647 tuple2!67072)) )
))
(declare-fun isDefined!13151 (Option!16448) Bool)

(declare-fun findConcatSeparation!2862 (Regex!16561 Regex!16561 List!65982 List!65982 List!65982) Option!16448)

(assert (=> b!6733407 (= lt!2438121 (isDefined!13151 (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 Nil!65858 s!2326 s!2326)))))

(declare-fun lt!2438108 () Unit!159813)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2626 (Regex!16561 Regex!16561 List!65982) Unit!159813)

(assert (=> b!6733407 (= lt!2438108 (lemmaFindConcatSeparationEquivalentToExists!2626 (reg!16890 r!7292) r!7292 s!2326))))

(declare-fun setNonEmpty!45943 () Bool)

(declare-fun tp!1846153 () Bool)

(declare-fun setElem!45943 () Context!11890)

(assert (=> setNonEmpty!45943 (= setRes!45943 (and tp!1846153 (inv!84649 setElem!45943) e!4067632))))

(declare-fun setRest!45943 () (InoxSet Context!11890))

(assert (=> setNonEmpty!45943 (= z!1189 ((_ map or) (store ((as const (Array Context!11890 Bool)) false) setElem!45943 true) setRest!45943))))

(declare-fun b!6733408 () Bool)

(declare-fun tp!1846150 () Bool)

(assert (=> b!6733408 (= e!4067626 (and (inv!84649 (h!72308 zl!343)) e!4067624 tp!1846150))))

(declare-fun b!6733409 () Bool)

(declare-fun res!2754652 () Bool)

(assert (=> b!6733409 (=> res!2754652 e!4067628)))

(declare-fun generalisedUnion!2405 (List!65983) Regex!16561)

(declare-fun unfocusZipperList!1982 (List!65984) List!65983)

(assert (=> b!6733409 (= res!2754652 (not (= r!7292 (generalisedUnion!2405 (unfocusZipperList!1982 zl!343)))))))

(declare-fun b!6733410 () Bool)

(declare-fun tp!1846151 () Bool)

(declare-fun tp!1846146 () Bool)

(assert (=> b!6733410 (= e!4067623 (and tp!1846151 tp!1846146))))

(declare-fun b!6733411 () Bool)

(declare-fun res!2754638 () Bool)

(assert (=> b!6733411 (=> res!2754638 e!4067628)))

(declare-fun isEmpty!38194 (List!65984) Bool)

(assert (=> b!6733411 (= res!2754638 (not (isEmpty!38194 (t!379675 zl!343))))))

(declare-fun setIsEmpty!45943 () Bool)

(assert (=> setIsEmpty!45943 setRes!45943))

(declare-fun b!6733412 () Bool)

(assert (=> b!6733412 (= e!4067630 lt!2438121)))

(declare-fun b!6733413 () Bool)

(declare-fun tp!1846152 () Bool)

(declare-fun tp!1846147 () Bool)

(assert (=> b!6733413 (= e!4067623 (and tp!1846152 tp!1846147))))

(declare-fun b!6733414 () Bool)

(declare-fun e!4067621 () Bool)

(assert (=> b!6733414 (= e!4067627 e!4067621)))

(declare-fun res!2754645 () Bool)

(assert (=> b!6733414 (=> (not res!2754645) (not e!4067621))))

(assert (=> b!6733414 (= res!2754645 (= r!7292 lt!2438109))))

(assert (=> b!6733414 (= lt!2438109 (unfocusZipper!2303 zl!343))))

(declare-fun b!6733415 () Bool)

(declare-fun res!2754647 () Bool)

(assert (=> b!6733415 (=> res!2754647 e!4067628)))

(assert (=> b!6733415 (= res!2754647 (or ((_ is EmptyExpr!16561) r!7292) ((_ is EmptyLang!16561) r!7292) ((_ is ElementMatch!16561) r!7292) ((_ is Union!16561) r!7292) ((_ is Concat!25406) r!7292)))))

(declare-fun b!6733416 () Bool)

(assert (=> b!6733416 (= e!4067621 (not e!4067628))))

(declare-fun res!2754651 () Bool)

(assert (=> b!6733416 (=> res!2754651 e!4067628)))

(assert (=> b!6733416 (= res!2754651 (not ((_ is Cons!65860) zl!343)))))

(declare-fun matchRSpec!3662 (Regex!16561 List!65982) Bool)

(assert (=> b!6733416 (= lt!2438122 (matchRSpec!3662 r!7292 s!2326))))

(declare-fun matchR!8744 (Regex!16561 List!65982) Bool)

(assert (=> b!6733416 (= lt!2438122 (matchR!8744 r!7292 s!2326))))

(declare-fun lt!2438113 () Unit!159813)

(declare-fun mainMatchTheorem!3662 (Regex!16561 List!65982) Unit!159813)

(assert (=> b!6733416 (= lt!2438113 (mainMatchTheorem!3662 r!7292 s!2326))))

(declare-fun b!6733417 () Bool)

(assert (=> b!6733417 (= e!4067623 tp_is_empty!42375)))

(assert (= (and start!653032 res!2754649) b!6733394))

(assert (= (and b!6733394 res!2754646) b!6733414))

(assert (= (and b!6733414 res!2754645) b!6733416))

(assert (= (and b!6733416 (not res!2754651)) b!6733411))

(assert (= (and b!6733411 (not res!2754638)) b!6733396))

(assert (= (and b!6733396 (not res!2754637)) b!6733403))

(assert (= (and b!6733403 (not res!2754641)) b!6733409))

(assert (= (and b!6733409 (not res!2754652)) b!6733415))

(assert (= (and b!6733415 (not res!2754647)) b!6733407))

(assert (= (and b!6733407 (not res!2754642)) b!6733412))

(assert (= (and b!6733407 (not res!2754650)) b!6733392))

(assert (= (and b!6733392 (not res!2754648)) b!6733395))

(assert (= (and b!6733395 (not res!2754643)) b!6733405))

(assert (= (and b!6733405 (not res!2754644)) b!6733404))

(assert (= (and b!6733404 (not res!2754654)) b!6733393))

(assert (= (and b!6733393 (not res!2754639)) b!6733402))

(assert (= (and b!6733402 (not res!2754640)) b!6733399))

(assert (= (and b!6733399 (not res!2754653)) b!6733400))

(assert (= (and start!653032 ((_ is ElementMatch!16561) r!7292)) b!6733417))

(assert (= (and start!653032 ((_ is Concat!25406) r!7292)) b!6733410))

(assert (= (and start!653032 ((_ is Star!16561) r!7292)) b!6733398))

(assert (= (and start!653032 ((_ is Union!16561) r!7292)) b!6733413))

(assert (= (and start!653032 condSetEmpty!45943) setIsEmpty!45943))

(assert (= (and start!653032 (not condSetEmpty!45943)) setNonEmpty!45943))

(assert (= setNonEmpty!45943 b!6733406))

(assert (= b!6733408 b!6733401))

(assert (= (and start!653032 ((_ is Cons!65860) zl!343)) b!6733408))

(assert (= (and start!653032 ((_ is Cons!65858) s!2326)) b!6733397))

(declare-fun m!7491448 () Bool)

(assert (=> b!6733394 m!7491448))

(declare-fun m!7491450 () Bool)

(assert (=> b!6733416 m!7491450))

(declare-fun m!7491452 () Bool)

(assert (=> b!6733416 m!7491452))

(declare-fun m!7491454 () Bool)

(assert (=> b!6733416 m!7491454))

(declare-fun m!7491456 () Bool)

(assert (=> b!6733405 m!7491456))

(declare-fun m!7491458 () Bool)

(assert (=> b!6733405 m!7491458))

(declare-fun m!7491460 () Bool)

(assert (=> b!6733405 m!7491460))

(declare-fun m!7491462 () Bool)

(assert (=> setNonEmpty!45943 m!7491462))

(declare-fun m!7491464 () Bool)

(assert (=> start!653032 m!7491464))

(declare-fun m!7491466 () Bool)

(assert (=> b!6733395 m!7491466))

(declare-fun m!7491468 () Bool)

(assert (=> b!6733395 m!7491468))

(declare-fun m!7491470 () Bool)

(assert (=> b!6733395 m!7491470))

(declare-fun m!7491472 () Bool)

(assert (=> b!6733407 m!7491472))

(declare-fun m!7491474 () Bool)

(assert (=> b!6733407 m!7491474))

(declare-fun m!7491476 () Bool)

(assert (=> b!6733407 m!7491476))

(declare-fun m!7491478 () Bool)

(assert (=> b!6733407 m!7491478))

(assert (=> b!6733407 m!7491476))

(declare-fun m!7491480 () Bool)

(assert (=> b!6733407 m!7491480))

(declare-fun m!7491482 () Bool)

(assert (=> b!6733407 m!7491482))

(declare-fun m!7491484 () Bool)

(assert (=> b!6733407 m!7491484))

(declare-fun m!7491486 () Bool)

(assert (=> b!6733407 m!7491486))

(declare-fun m!7491488 () Bool)

(assert (=> b!6733407 m!7491488))

(assert (=> b!6733407 m!7491484))

(assert (=> b!6733407 m!7491476))

(declare-fun m!7491490 () Bool)

(assert (=> b!6733399 m!7491490))

(declare-fun m!7491492 () Bool)

(assert (=> b!6733409 m!7491492))

(assert (=> b!6733409 m!7491492))

(declare-fun m!7491494 () Bool)

(assert (=> b!6733409 m!7491494))

(declare-fun m!7491496 () Bool)

(assert (=> b!6733414 m!7491496))

(declare-fun m!7491498 () Bool)

(assert (=> b!6733411 m!7491498))

(declare-fun m!7491500 () Bool)

(assert (=> b!6733393 m!7491500))

(declare-fun m!7491502 () Bool)

(assert (=> b!6733393 m!7491502))

(assert (=> b!6733393 m!7491502))

(declare-fun m!7491504 () Bool)

(assert (=> b!6733393 m!7491504))

(declare-fun m!7491506 () Bool)

(assert (=> b!6733408 m!7491506))

(declare-fun m!7491508 () Bool)

(assert (=> b!6733400 m!7491508))

(declare-fun m!7491510 () Bool)

(assert (=> b!6733400 m!7491510))

(declare-fun m!7491512 () Bool)

(assert (=> b!6733404 m!7491512))

(declare-fun m!7491514 () Bool)

(assert (=> b!6733404 m!7491514))

(declare-fun m!7491516 () Bool)

(assert (=> b!6733404 m!7491516))

(declare-fun m!7491518 () Bool)

(assert (=> b!6733404 m!7491518))

(declare-fun m!7491520 () Bool)

(assert (=> b!6733404 m!7491520))

(declare-fun m!7491522 () Bool)

(assert (=> b!6733396 m!7491522))

(check-sat (not b!6733400) (not b!6733416) (not b!6733410) (not b!6733401) (not b!6733407) (not b!6733394) (not start!653032) (not b!6733404) (not b!6733409) (not b!6733397) (not b!6733414) (not b!6733395) (not b!6733405) (not b!6733393) (not b!6733399) (not b!6733406) (not b!6733411) (not b!6733396) tp_is_empty!42375 (not b!6733413) (not setNonEmpty!45943) (not b!6733408) (not b!6733398))
(check-sat)
(get-model)

(declare-fun bs!1790679 () Bool)

(declare-fun b!6733613 () Bool)

(assert (= bs!1790679 (and b!6733613 b!6733407)))

(declare-fun lambda!378029 () Int)

(assert (=> bs!1790679 (not (= lambda!378029 lambda!378008))))

(assert (=> bs!1790679 (= lambda!378029 lambda!378009)))

(assert (=> bs!1790679 (not (= lambda!378029 lambda!378010))))

(assert (=> b!6733613 true))

(assert (=> b!6733613 true))

(declare-fun bs!1790680 () Bool)

(declare-fun b!6733620 () Bool)

(assert (= bs!1790680 (and b!6733620 b!6733407)))

(declare-fun lambda!378030 () Int)

(assert (=> bs!1790680 (not (= lambda!378030 lambda!378008))))

(assert (=> bs!1790680 (not (= lambda!378030 lambda!378009))))

(assert (=> bs!1790680 (= (and (= (regOne!33634 r!7292) (reg!16890 r!7292)) (= (regTwo!33634 r!7292) r!7292)) (= lambda!378030 lambda!378010))))

(declare-fun bs!1790681 () Bool)

(assert (= bs!1790681 (and b!6733620 b!6733613)))

(assert (=> bs!1790681 (not (= lambda!378030 lambda!378029))))

(assert (=> b!6733620 true))

(assert (=> b!6733620 true))

(declare-fun d!2115648 () Bool)

(declare-fun c!1248739 () Bool)

(assert (=> d!2115648 (= c!1248739 ((_ is EmptyExpr!16561) r!7292))))

(declare-fun e!4067751 () Bool)

(assert (=> d!2115648 (= (matchRSpec!3662 r!7292 s!2326) e!4067751)))

(declare-fun e!4067747 () Bool)

(declare-fun call!608298 () Bool)

(assert (=> b!6733613 (= e!4067747 call!608298)))

(declare-fun b!6733614 () Bool)

(declare-fun e!4067752 () Bool)

(assert (=> b!6733614 (= e!4067752 (= s!2326 (Cons!65858 (c!1248671 r!7292) Nil!65858)))))

(declare-fun b!6733615 () Bool)

(declare-fun c!1248738 () Bool)

(assert (=> b!6733615 (= c!1248738 ((_ is Union!16561) r!7292))))

(declare-fun e!4067750 () Bool)

(assert (=> b!6733615 (= e!4067752 e!4067750)))

(declare-fun bm!608292 () Bool)

(declare-fun call!608297 () Bool)

(assert (=> bm!608292 (= call!608297 (isEmpty!38193 s!2326))))

(declare-fun b!6733616 () Bool)

(declare-fun e!4067749 () Bool)

(assert (=> b!6733616 (= e!4067750 e!4067749)))

(declare-fun c!1248740 () Bool)

(assert (=> b!6733616 (= c!1248740 ((_ is Star!16561) r!7292))))

(declare-fun b!6733617 () Bool)

(declare-fun e!4067748 () Bool)

(assert (=> b!6733617 (= e!4067748 (matchRSpec!3662 (regTwo!33635 r!7292) s!2326))))

(declare-fun b!6733618 () Bool)

(assert (=> b!6733618 (= e!4067750 e!4067748)))

(declare-fun res!2754714 () Bool)

(assert (=> b!6733618 (= res!2754714 (matchRSpec!3662 (regOne!33635 r!7292) s!2326))))

(assert (=> b!6733618 (=> res!2754714 e!4067748)))

(declare-fun b!6733619 () Bool)

(declare-fun c!1248741 () Bool)

(assert (=> b!6733619 (= c!1248741 ((_ is ElementMatch!16561) r!7292))))

(declare-fun e!4067746 () Bool)

(assert (=> b!6733619 (= e!4067746 e!4067752)))

(assert (=> b!6733620 (= e!4067749 call!608298)))

(declare-fun b!6733621 () Bool)

(assert (=> b!6733621 (= e!4067751 e!4067746)))

(declare-fun res!2754715 () Bool)

(assert (=> b!6733621 (= res!2754715 (not ((_ is EmptyLang!16561) r!7292)))))

(assert (=> b!6733621 (=> (not res!2754715) (not e!4067746))))

(declare-fun b!6733622 () Bool)

(declare-fun res!2754716 () Bool)

(assert (=> b!6733622 (=> res!2754716 e!4067747)))

(assert (=> b!6733622 (= res!2754716 call!608297)))

(assert (=> b!6733622 (= e!4067749 e!4067747)))

(declare-fun b!6733623 () Bool)

(assert (=> b!6733623 (= e!4067751 call!608297)))

(declare-fun bm!608293 () Bool)

(assert (=> bm!608293 (= call!608298 (Exists!3629 (ite c!1248740 lambda!378029 lambda!378030)))))

(assert (= (and d!2115648 c!1248739) b!6733623))

(assert (= (and d!2115648 (not c!1248739)) b!6733621))

(assert (= (and b!6733621 res!2754715) b!6733619))

(assert (= (and b!6733619 c!1248741) b!6733614))

(assert (= (and b!6733619 (not c!1248741)) b!6733615))

(assert (= (and b!6733615 c!1248738) b!6733618))

(assert (= (and b!6733615 (not c!1248738)) b!6733616))

(assert (= (and b!6733618 (not res!2754714)) b!6733617))

(assert (= (and b!6733616 c!1248740) b!6733622))

(assert (= (and b!6733616 (not c!1248740)) b!6733620))

(assert (= (and b!6733622 (not res!2754716)) b!6733613))

(assert (= (or b!6733613 b!6733620) bm!608293))

(assert (= (or b!6733623 b!6733622) bm!608292))

(assert (=> bm!608292 m!7491474))

(declare-fun m!7491620 () Bool)

(assert (=> b!6733617 m!7491620))

(declare-fun m!7491622 () Bool)

(assert (=> b!6733618 m!7491622))

(declare-fun m!7491624 () Bool)

(assert (=> bm!608293 m!7491624))

(assert (=> b!6733416 d!2115648))

(declare-fun b!6733726 () Bool)

(declare-fun e!4067812 () Bool)

(declare-fun e!4067809 () Bool)

(assert (=> b!6733726 (= e!4067812 e!4067809)))

(declare-fun res!2754772 () Bool)

(assert (=> b!6733726 (=> res!2754772 e!4067809)))

(declare-fun call!608317 () Bool)

(assert (=> b!6733726 (= res!2754772 call!608317)))

(declare-fun bm!608312 () Bool)

(assert (=> bm!608312 (= call!608317 (isEmpty!38193 s!2326))))

(declare-fun b!6733727 () Bool)

(declare-fun head!13549 (List!65982) C!33392)

(assert (=> b!6733727 (= e!4067809 (not (= (head!13549 s!2326) (c!1248671 r!7292))))))

(declare-fun b!6733728 () Bool)

(declare-fun res!2754768 () Bool)

(declare-fun e!4067810 () Bool)

(assert (=> b!6733728 (=> (not res!2754768) (not e!4067810))))

(assert (=> b!6733728 (= res!2754768 (not call!608317))))

(declare-fun b!6733729 () Bool)

(declare-fun res!2754766 () Bool)

(declare-fun e!4067811 () Bool)

(assert (=> b!6733729 (=> res!2754766 e!4067811)))

(assert (=> b!6733729 (= res!2754766 (not ((_ is ElementMatch!16561) r!7292)))))

(declare-fun e!4067806 () Bool)

(assert (=> b!6733729 (= e!4067806 e!4067811)))

(declare-fun b!6733730 () Bool)

(declare-fun res!2754771 () Bool)

(assert (=> b!6733730 (=> res!2754771 e!4067809)))

(declare-fun tail!12634 (List!65982) List!65982)

(assert (=> b!6733730 (= res!2754771 (not (isEmpty!38193 (tail!12634 s!2326))))))

(declare-fun b!6733731 () Bool)

(assert (=> b!6733731 (= e!4067810 (= (head!13549 s!2326) (c!1248671 r!7292)))))

(declare-fun d!2115674 () Bool)

(declare-fun e!4067808 () Bool)

(assert (=> d!2115674 e!4067808))

(declare-fun c!1248769 () Bool)

(assert (=> d!2115674 (= c!1248769 ((_ is EmptyExpr!16561) r!7292))))

(declare-fun lt!2438149 () Bool)

(declare-fun e!4067807 () Bool)

(assert (=> d!2115674 (= lt!2438149 e!4067807)))

(declare-fun c!1248768 () Bool)

(assert (=> d!2115674 (= c!1248768 (isEmpty!38193 s!2326))))

(assert (=> d!2115674 (validRegex!8297 r!7292)))

(assert (=> d!2115674 (= (matchR!8744 r!7292 s!2326) lt!2438149)))

(declare-fun b!6733725 () Bool)

(assert (=> b!6733725 (= e!4067806 (not lt!2438149))))

(declare-fun b!6733732 () Bool)

(declare-fun derivativeStep!5233 (Regex!16561 C!33392) Regex!16561)

(assert (=> b!6733732 (= e!4067807 (matchR!8744 (derivativeStep!5233 r!7292 (head!13549 s!2326)) (tail!12634 s!2326)))))

(declare-fun b!6733733 () Bool)

(declare-fun res!2754769 () Bool)

(assert (=> b!6733733 (=> res!2754769 e!4067811)))

(assert (=> b!6733733 (= res!2754769 e!4067810)))

(declare-fun res!2754770 () Bool)

(assert (=> b!6733733 (=> (not res!2754770) (not e!4067810))))

(assert (=> b!6733733 (= res!2754770 lt!2438149)))

(declare-fun b!6733734 () Bool)

(declare-fun nullable!6548 (Regex!16561) Bool)

(assert (=> b!6733734 (= e!4067807 (nullable!6548 r!7292))))

(declare-fun b!6733735 () Bool)

(assert (=> b!6733735 (= e!4067808 e!4067806)))

(declare-fun c!1248770 () Bool)

(assert (=> b!6733735 (= c!1248770 ((_ is EmptyLang!16561) r!7292))))

(declare-fun b!6733736 () Bool)

(assert (=> b!6733736 (= e!4067808 (= lt!2438149 call!608317))))

(declare-fun b!6733737 () Bool)

(assert (=> b!6733737 (= e!4067811 e!4067812)))

(declare-fun res!2754767 () Bool)

(assert (=> b!6733737 (=> (not res!2754767) (not e!4067812))))

(assert (=> b!6733737 (= res!2754767 (not lt!2438149))))

(declare-fun b!6733738 () Bool)

(declare-fun res!2754773 () Bool)

(assert (=> b!6733738 (=> (not res!2754773) (not e!4067810))))

(assert (=> b!6733738 (= res!2754773 (isEmpty!38193 (tail!12634 s!2326)))))

(assert (= (and d!2115674 c!1248768) b!6733734))

(assert (= (and d!2115674 (not c!1248768)) b!6733732))

(assert (= (and d!2115674 c!1248769) b!6733736))

(assert (= (and d!2115674 (not c!1248769)) b!6733735))

(assert (= (and b!6733735 c!1248770) b!6733725))

(assert (= (and b!6733735 (not c!1248770)) b!6733729))

(assert (= (and b!6733729 (not res!2754766)) b!6733733))

(assert (= (and b!6733733 res!2754770) b!6733728))

(assert (= (and b!6733728 res!2754768) b!6733738))

(assert (= (and b!6733738 res!2754773) b!6733731))

(assert (= (and b!6733733 (not res!2754769)) b!6733737))

(assert (= (and b!6733737 res!2754767) b!6733726))

(assert (= (and b!6733726 (not res!2754772)) b!6733730))

(assert (= (and b!6733730 (not res!2754771)) b!6733727))

(assert (= (or b!6733736 b!6733726 b!6733728) bm!608312))

(declare-fun m!7491666 () Bool)

(assert (=> b!6733731 m!7491666))

(declare-fun m!7491668 () Bool)

(assert (=> b!6733738 m!7491668))

(assert (=> b!6733738 m!7491668))

(declare-fun m!7491670 () Bool)

(assert (=> b!6733738 m!7491670))

(assert (=> b!6733732 m!7491666))

(assert (=> b!6733732 m!7491666))

(declare-fun m!7491672 () Bool)

(assert (=> b!6733732 m!7491672))

(assert (=> b!6733732 m!7491668))

(assert (=> b!6733732 m!7491672))

(assert (=> b!6733732 m!7491668))

(declare-fun m!7491674 () Bool)

(assert (=> b!6733732 m!7491674))

(declare-fun m!7491676 () Bool)

(assert (=> b!6733734 m!7491676))

(assert (=> b!6733730 m!7491668))

(assert (=> b!6733730 m!7491668))

(assert (=> b!6733730 m!7491670))

(assert (=> b!6733727 m!7491666))

(assert (=> bm!608312 m!7491474))

(assert (=> d!2115674 m!7491474))

(assert (=> d!2115674 m!7491464))

(assert (=> b!6733416 d!2115674))

(declare-fun d!2115690 () Bool)

(assert (=> d!2115690 (= (matchR!8744 r!7292 s!2326) (matchRSpec!3662 r!7292 s!2326))))

(declare-fun lt!2438155 () Unit!159813)

(declare-fun choose!50188 (Regex!16561 List!65982) Unit!159813)

(assert (=> d!2115690 (= lt!2438155 (choose!50188 r!7292 s!2326))))

(assert (=> d!2115690 (validRegex!8297 r!7292)))

(assert (=> d!2115690 (= (mainMatchTheorem!3662 r!7292 s!2326) lt!2438155)))

(declare-fun bs!1790696 () Bool)

(assert (= bs!1790696 d!2115690))

(assert (=> bs!1790696 m!7491452))

(assert (=> bs!1790696 m!7491450))

(declare-fun m!7491700 () Bool)

(assert (=> bs!1790696 m!7491700))

(assert (=> bs!1790696 m!7491464))

(assert (=> b!6733416 d!2115690))

(declare-fun d!2115696 () Bool)

(declare-fun isEmpty!38197 (Option!16448) Bool)

(assert (=> d!2115696 (= (isDefined!13151 (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 Nil!65858 s!2326 s!2326)) (not (isEmpty!38197 (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 Nil!65858 s!2326 s!2326))))))

(declare-fun bs!1790699 () Bool)

(assert (= bs!1790699 d!2115696))

(assert (=> bs!1790699 m!7491484))

(declare-fun m!7491712 () Bool)

(assert (=> bs!1790699 m!7491712))

(assert (=> b!6733407 d!2115696))

(declare-fun bs!1790706 () Bool)

(declare-fun d!2115704 () Bool)

(assert (= bs!1790706 (and d!2115704 b!6733613)))

(declare-fun lambda!378052 () Int)

(assert (=> bs!1790706 (not (= lambda!378052 lambda!378029))))

(declare-fun bs!1790707 () Bool)

(assert (= bs!1790707 (and d!2115704 b!6733407)))

(assert (=> bs!1790707 (not (= lambda!378052 lambda!378009))))

(assert (=> bs!1790707 (not (= lambda!378052 lambda!378010))))

(assert (=> bs!1790707 (= (= (Star!16561 (reg!16890 r!7292)) r!7292) (= lambda!378052 lambda!378008))))

(declare-fun bs!1790708 () Bool)

(assert (= bs!1790708 (and d!2115704 b!6733620)))

(assert (=> bs!1790708 (not (= lambda!378052 lambda!378030))))

(assert (=> d!2115704 true))

(assert (=> d!2115704 true))

(declare-fun lambda!378055 () Int)

(assert (=> bs!1790706 (= (= (Star!16561 (reg!16890 r!7292)) r!7292) (= lambda!378055 lambda!378029))))

(assert (=> bs!1790707 (= (= (Star!16561 (reg!16890 r!7292)) r!7292) (= lambda!378055 lambda!378009))))

(assert (=> bs!1790707 (not (= lambda!378055 lambda!378010))))

(declare-fun bs!1790709 () Bool)

(assert (= bs!1790709 d!2115704))

(assert (=> bs!1790709 (not (= lambda!378055 lambda!378052))))

(assert (=> bs!1790707 (not (= lambda!378055 lambda!378008))))

(assert (=> bs!1790708 (not (= lambda!378055 lambda!378030))))

(assert (=> d!2115704 true))

(assert (=> d!2115704 true))

(assert (=> d!2115704 (= (Exists!3629 lambda!378052) (Exists!3629 lambda!378055))))

(declare-fun lt!2438164 () Unit!159813)

(declare-fun choose!50190 (Regex!16561 List!65982) Unit!159813)

(assert (=> d!2115704 (= lt!2438164 (choose!50190 (reg!16890 r!7292) s!2326))))

(assert (=> d!2115704 (validRegex!8297 (reg!16890 r!7292))))

(assert (=> d!2115704 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!720 (reg!16890 r!7292) s!2326) lt!2438164)))

(declare-fun m!7491726 () Bool)

(assert (=> bs!1790709 m!7491726))

(declare-fun m!7491728 () Bool)

(assert (=> bs!1790709 m!7491728))

(declare-fun m!7491730 () Bool)

(assert (=> bs!1790709 m!7491730))

(declare-fun m!7491732 () Bool)

(assert (=> bs!1790709 m!7491732))

(assert (=> b!6733407 d!2115704))

(declare-fun d!2115712 () Bool)

(declare-fun choose!50191 (Int) Bool)

(assert (=> d!2115712 (= (Exists!3629 lambda!378010) (choose!50191 lambda!378010))))

(declare-fun bs!1790715 () Bool)

(assert (= bs!1790715 d!2115712))

(declare-fun m!7491734 () Bool)

(assert (=> bs!1790715 m!7491734))

(assert (=> b!6733407 d!2115712))

(declare-fun d!2115714 () Bool)

(assert (=> d!2115714 (= (isEmpty!38193 s!2326) ((_ is Nil!65858) s!2326))))

(assert (=> b!6733407 d!2115714))

(declare-fun d!2115716 () Bool)

(assert (=> d!2115716 (= (Exists!3629 lambda!378008) (choose!50191 lambda!378008))))

(declare-fun bs!1790716 () Bool)

(assert (= bs!1790716 d!2115716))

(declare-fun m!7491736 () Bool)

(assert (=> bs!1790716 m!7491736))

(assert (=> b!6733407 d!2115716))

(declare-fun bs!1790718 () Bool)

(declare-fun d!2115718 () Bool)

(assert (= bs!1790718 (and d!2115718 b!6733613)))

(declare-fun lambda!378062 () Int)

(assert (=> bs!1790718 (not (= lambda!378062 lambda!378029))))

(declare-fun bs!1790719 () Bool)

(assert (= bs!1790719 (and d!2115718 b!6733407)))

(assert (=> bs!1790719 (not (= lambda!378062 lambda!378009))))

(assert (=> bs!1790719 (not (= lambda!378062 lambda!378010))))

(declare-fun bs!1790720 () Bool)

(assert (= bs!1790720 (and d!2115718 d!2115704)))

(assert (=> bs!1790720 (= (= r!7292 (Star!16561 (reg!16890 r!7292))) (= lambda!378062 lambda!378052))))

(assert (=> bs!1790720 (not (= lambda!378062 lambda!378055))))

(assert (=> bs!1790719 (= lambda!378062 lambda!378008)))

(declare-fun bs!1790721 () Bool)

(assert (= bs!1790721 (and d!2115718 b!6733620)))

(assert (=> bs!1790721 (not (= lambda!378062 lambda!378030))))

(assert (=> d!2115718 true))

(assert (=> d!2115718 true))

(assert (=> d!2115718 true))

(declare-fun lambda!378063 () Int)

(assert (=> bs!1790718 (not (= lambda!378063 lambda!378029))))

(assert (=> bs!1790719 (not (= lambda!378063 lambda!378009))))

(assert (=> bs!1790719 (= lambda!378063 lambda!378010)))

(declare-fun bs!1790722 () Bool)

(assert (= bs!1790722 d!2115718))

(assert (=> bs!1790722 (not (= lambda!378063 lambda!378062))))

(assert (=> bs!1790720 (not (= lambda!378063 lambda!378052))))

(assert (=> bs!1790720 (not (= lambda!378063 lambda!378055))))

(assert (=> bs!1790719 (not (= lambda!378063 lambda!378008))))

(assert (=> bs!1790721 (= (and (= (reg!16890 r!7292) (regOne!33634 r!7292)) (= r!7292 (regTwo!33634 r!7292))) (= lambda!378063 lambda!378030))))

(assert (=> d!2115718 true))

(assert (=> d!2115718 true))

(assert (=> d!2115718 true))

(assert (=> d!2115718 (= (Exists!3629 lambda!378062) (Exists!3629 lambda!378063))))

(declare-fun lt!2438177 () Unit!159813)

(declare-fun choose!50192 (Regex!16561 Regex!16561 List!65982) Unit!159813)

(assert (=> d!2115718 (= lt!2438177 (choose!50192 (reg!16890 r!7292) r!7292 s!2326))))

(assert (=> d!2115718 (validRegex!8297 (reg!16890 r!7292))))

(assert (=> d!2115718 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2156 (reg!16890 r!7292) r!7292 s!2326) lt!2438177)))

(declare-fun m!7491766 () Bool)

(assert (=> bs!1790722 m!7491766))

(declare-fun m!7491768 () Bool)

(assert (=> bs!1790722 m!7491768))

(declare-fun m!7491770 () Bool)

(assert (=> bs!1790722 m!7491770))

(assert (=> bs!1790722 m!7491732))

(assert (=> b!6733407 d!2115718))

(declare-fun b!6733913 () Bool)

(declare-fun e!4067902 () Option!16448)

(assert (=> b!6733913 (= e!4067902 None!16447)))

(declare-fun b!6733914 () Bool)

(declare-fun lt!2438187 () Unit!159813)

(declare-fun lt!2438189 () Unit!159813)

(assert (=> b!6733914 (= lt!2438187 lt!2438189)))

(declare-fun ++!14717 (List!65982 List!65982) List!65982)

(assert (=> b!6733914 (= (++!14717 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)) (t!379673 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2690 (List!65982 C!33392 List!65982 List!65982) Unit!159813)

(assert (=> b!6733914 (= lt!2438189 (lemmaMoveElementToOtherListKeepsConcatEq!2690 Nil!65858 (h!72306 s!2326) (t!379673 s!2326) s!2326))))

(assert (=> b!6733914 (= e!4067902 (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)) (t!379673 s!2326) s!2326))))

(declare-fun b!6733915 () Bool)

(declare-fun e!4067903 () Bool)

(assert (=> b!6733915 (= e!4067903 (matchR!8744 r!7292 s!2326))))

(declare-fun b!6733916 () Bool)

(declare-fun res!2754849 () Bool)

(declare-fun e!4067901 () Bool)

(assert (=> b!6733916 (=> (not res!2754849) (not e!4067901))))

(declare-fun lt!2438188 () Option!16448)

(declare-fun get!22913 (Option!16448) tuple2!67072)

(assert (=> b!6733916 (= res!2754849 (matchR!8744 r!7292 (_2!36839 (get!22913 lt!2438188))))))

(declare-fun b!6733917 () Bool)

(declare-fun e!4067904 () Option!16448)

(assert (=> b!6733917 (= e!4067904 e!4067902)))

(declare-fun c!1248796 () Bool)

(assert (=> b!6733917 (= c!1248796 ((_ is Nil!65858) s!2326))))

(declare-fun b!6733918 () Bool)

(declare-fun res!2754850 () Bool)

(assert (=> b!6733918 (=> (not res!2754850) (not e!4067901))))

(assert (=> b!6733918 (= res!2754850 (matchR!8744 (reg!16890 r!7292) (_1!36839 (get!22913 lt!2438188))))))

(declare-fun b!6733919 () Bool)

(declare-fun e!4067900 () Bool)

(assert (=> b!6733919 (= e!4067900 (not (isDefined!13151 lt!2438188)))))

(declare-fun d!2115728 () Bool)

(assert (=> d!2115728 e!4067900))

(declare-fun res!2754848 () Bool)

(assert (=> d!2115728 (=> res!2754848 e!4067900)))

(assert (=> d!2115728 (= res!2754848 e!4067901)))

(declare-fun res!2754846 () Bool)

(assert (=> d!2115728 (=> (not res!2754846) (not e!4067901))))

(assert (=> d!2115728 (= res!2754846 (isDefined!13151 lt!2438188))))

(assert (=> d!2115728 (= lt!2438188 e!4067904)))

(declare-fun c!1248795 () Bool)

(assert (=> d!2115728 (= c!1248795 e!4067903)))

(declare-fun res!2754847 () Bool)

(assert (=> d!2115728 (=> (not res!2754847) (not e!4067903))))

(assert (=> d!2115728 (= res!2754847 (matchR!8744 (reg!16890 r!7292) Nil!65858))))

(assert (=> d!2115728 (validRegex!8297 (reg!16890 r!7292))))

(assert (=> d!2115728 (= (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 Nil!65858 s!2326 s!2326) lt!2438188)))

(declare-fun b!6733920 () Bool)

(assert (=> b!6733920 (= e!4067904 (Some!16447 (tuple2!67073 Nil!65858 s!2326)))))

(declare-fun b!6733921 () Bool)

(assert (=> b!6733921 (= e!4067901 (= (++!14717 (_1!36839 (get!22913 lt!2438188)) (_2!36839 (get!22913 lt!2438188))) s!2326))))

(assert (= (and d!2115728 res!2754847) b!6733915))

(assert (= (and d!2115728 c!1248795) b!6733920))

(assert (= (and d!2115728 (not c!1248795)) b!6733917))

(assert (= (and b!6733917 c!1248796) b!6733913))

(assert (= (and b!6733917 (not c!1248796)) b!6733914))

(assert (= (and d!2115728 res!2754846) b!6733918))

(assert (= (and b!6733918 res!2754850) b!6733916))

(assert (= (and b!6733916 res!2754849) b!6733921))

(assert (= (and d!2115728 (not res!2754848)) b!6733919))

(declare-fun m!7491784 () Bool)

(assert (=> b!6733916 m!7491784))

(declare-fun m!7491786 () Bool)

(assert (=> b!6733916 m!7491786))

(assert (=> b!6733918 m!7491784))

(declare-fun m!7491788 () Bool)

(assert (=> b!6733918 m!7491788))

(declare-fun m!7491790 () Bool)

(assert (=> b!6733919 m!7491790))

(assert (=> d!2115728 m!7491790))

(declare-fun m!7491792 () Bool)

(assert (=> d!2115728 m!7491792))

(assert (=> d!2115728 m!7491732))

(declare-fun m!7491794 () Bool)

(assert (=> b!6733914 m!7491794))

(assert (=> b!6733914 m!7491794))

(declare-fun m!7491796 () Bool)

(assert (=> b!6733914 m!7491796))

(declare-fun m!7491798 () Bool)

(assert (=> b!6733914 m!7491798))

(assert (=> b!6733914 m!7491794))

(declare-fun m!7491800 () Bool)

(assert (=> b!6733914 m!7491800))

(assert (=> b!6733915 m!7491452))

(assert (=> b!6733921 m!7491784))

(declare-fun m!7491802 () Bool)

(assert (=> b!6733921 m!7491802))

(assert (=> b!6733407 d!2115728))

(declare-fun d!2115740 () Bool)

(assert (=> d!2115740 (= (Exists!3629 lambda!378009) (choose!50191 lambda!378009))))

(declare-fun bs!1790742 () Bool)

(assert (= bs!1790742 d!2115740))

(declare-fun m!7491804 () Bool)

(assert (=> bs!1790742 m!7491804))

(assert (=> b!6733407 d!2115740))

(declare-fun bs!1790743 () Bool)

(declare-fun d!2115742 () Bool)

(assert (= bs!1790743 (and d!2115742 b!6733613)))

(declare-fun lambda!378071 () Int)

(assert (=> bs!1790743 (not (= lambda!378071 lambda!378029))))

(declare-fun bs!1790744 () Bool)

(assert (= bs!1790744 (and d!2115742 b!6733407)))

(assert (=> bs!1790744 (not (= lambda!378071 lambda!378009))))

(assert (=> bs!1790744 (not (= lambda!378071 lambda!378010))))

(declare-fun bs!1790745 () Bool)

(assert (= bs!1790745 (and d!2115742 d!2115718)))

(assert (=> bs!1790745 (= lambda!378071 lambda!378062)))

(assert (=> bs!1790745 (not (= lambda!378071 lambda!378063))))

(declare-fun bs!1790746 () Bool)

(assert (= bs!1790746 (and d!2115742 d!2115704)))

(assert (=> bs!1790746 (= (= r!7292 (Star!16561 (reg!16890 r!7292))) (= lambda!378071 lambda!378052))))

(assert (=> bs!1790746 (not (= lambda!378071 lambda!378055))))

(assert (=> bs!1790744 (= lambda!378071 lambda!378008)))

(declare-fun bs!1790747 () Bool)

(assert (= bs!1790747 (and d!2115742 b!6733620)))

(assert (=> bs!1790747 (not (= lambda!378071 lambda!378030))))

(assert (=> d!2115742 true))

(assert (=> d!2115742 true))

(assert (=> d!2115742 true))

(assert (=> d!2115742 (= (isDefined!13151 (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 Nil!65858 s!2326 s!2326)) (Exists!3629 lambda!378071))))

(declare-fun lt!2438192 () Unit!159813)

(declare-fun choose!50193 (Regex!16561 Regex!16561 List!65982) Unit!159813)

(assert (=> d!2115742 (= lt!2438192 (choose!50193 (reg!16890 r!7292) r!7292 s!2326))))

(assert (=> d!2115742 (validRegex!8297 (reg!16890 r!7292))))

(assert (=> d!2115742 (= (lemmaFindConcatSeparationEquivalentToExists!2626 (reg!16890 r!7292) r!7292 s!2326) lt!2438192)))

(declare-fun bs!1790748 () Bool)

(assert (= bs!1790748 d!2115742))

(declare-fun m!7491806 () Bool)

(assert (=> bs!1790748 m!7491806))

(assert (=> bs!1790748 m!7491484))

(assert (=> bs!1790748 m!7491486))

(declare-fun m!7491808 () Bool)

(assert (=> bs!1790748 m!7491808))

(assert (=> bs!1790748 m!7491484))

(assert (=> bs!1790748 m!7491732))

(assert (=> b!6733407 d!2115742))

(declare-fun b!6733946 () Bool)

(declare-fun e!4067921 () Regex!16561)

(assert (=> b!6733946 (= e!4067921 (h!72307 (exprs!6445 (h!72308 zl!343))))))

(declare-fun b!6733947 () Bool)

(declare-fun e!4067922 () Regex!16561)

(assert (=> b!6733947 (= e!4067921 e!4067922)))

(declare-fun c!1248807 () Bool)

(assert (=> b!6733947 (= c!1248807 ((_ is Cons!65859) (exprs!6445 (h!72308 zl!343))))))

(declare-fun d!2115744 () Bool)

(declare-fun e!4067919 () Bool)

(assert (=> d!2115744 e!4067919))

(declare-fun res!2754859 () Bool)

(assert (=> d!2115744 (=> (not res!2754859) (not e!4067919))))

(declare-fun lt!2438195 () Regex!16561)

(assert (=> d!2115744 (= res!2754859 (validRegex!8297 lt!2438195))))

(assert (=> d!2115744 (= lt!2438195 e!4067921)))

(declare-fun c!1248805 () Bool)

(declare-fun e!4067924 () Bool)

(assert (=> d!2115744 (= c!1248805 e!4067924)))

(declare-fun res!2754860 () Bool)

(assert (=> d!2115744 (=> (not res!2754860) (not e!4067924))))

(assert (=> d!2115744 (= res!2754860 ((_ is Cons!65859) (exprs!6445 (h!72308 zl!343))))))

(declare-fun lambda!378074 () Int)

(declare-fun forall!15761 (List!65983 Int) Bool)

(assert (=> d!2115744 (forall!15761 (exprs!6445 (h!72308 zl!343)) lambda!378074)))

(assert (=> d!2115744 (= (generalisedConcat!2158 (exprs!6445 (h!72308 zl!343))) lt!2438195)))

(declare-fun b!6733948 () Bool)

(declare-fun e!4067923 () Bool)

(declare-fun isEmptyExpr!1927 (Regex!16561) Bool)

(assert (=> b!6733948 (= e!4067923 (isEmptyExpr!1927 lt!2438195))))

(declare-fun b!6733949 () Bool)

(declare-fun e!4067920 () Bool)

(declare-fun head!13550 (List!65983) Regex!16561)

(assert (=> b!6733949 (= e!4067920 (= lt!2438195 (head!13550 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun b!6733950 () Bool)

(declare-fun isEmpty!38198 (List!65983) Bool)

(assert (=> b!6733950 (= e!4067924 (isEmpty!38198 (t!379674 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun b!6733951 () Bool)

(assert (=> b!6733951 (= e!4067923 e!4067920)))

(declare-fun c!1248808 () Bool)

(declare-fun tail!12635 (List!65983) List!65983)

(assert (=> b!6733951 (= c!1248808 (isEmpty!38198 (tail!12635 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun b!6733952 () Bool)

(assert (=> b!6733952 (= e!4067922 (Concat!25406 (h!72307 (exprs!6445 (h!72308 zl!343))) (generalisedConcat!2158 (t!379674 (exprs!6445 (h!72308 zl!343))))))))

(declare-fun b!6733953 () Bool)

(assert (=> b!6733953 (= e!4067919 e!4067923)))

(declare-fun c!1248806 () Bool)

(assert (=> b!6733953 (= c!1248806 (isEmpty!38198 (exprs!6445 (h!72308 zl!343))))))

(declare-fun b!6733954 () Bool)

(declare-fun isConcat!1450 (Regex!16561) Bool)

(assert (=> b!6733954 (= e!4067920 (isConcat!1450 lt!2438195))))

(declare-fun b!6733955 () Bool)

(assert (=> b!6733955 (= e!4067922 EmptyExpr!16561)))

(assert (= (and d!2115744 res!2754860) b!6733950))

(assert (= (and d!2115744 c!1248805) b!6733946))

(assert (= (and d!2115744 (not c!1248805)) b!6733947))

(assert (= (and b!6733947 c!1248807) b!6733952))

(assert (= (and b!6733947 (not c!1248807)) b!6733955))

(assert (= (and d!2115744 res!2754859) b!6733953))

(assert (= (and b!6733953 c!1248806) b!6733948))

(assert (= (and b!6733953 (not c!1248806)) b!6733951))

(assert (= (and b!6733951 c!1248808) b!6733949))

(assert (= (and b!6733951 (not c!1248808)) b!6733954))

(declare-fun m!7491810 () Bool)

(assert (=> b!6733953 m!7491810))

(declare-fun m!7491812 () Bool)

(assert (=> d!2115744 m!7491812))

(declare-fun m!7491814 () Bool)

(assert (=> d!2115744 m!7491814))

(declare-fun m!7491816 () Bool)

(assert (=> b!6733952 m!7491816))

(declare-fun m!7491818 () Bool)

(assert (=> b!6733948 m!7491818))

(declare-fun m!7491820 () Bool)

(assert (=> b!6733950 m!7491820))

(declare-fun m!7491822 () Bool)

(assert (=> b!6733949 m!7491822))

(declare-fun m!7491824 () Bool)

(assert (=> b!6733951 m!7491824))

(assert (=> b!6733951 m!7491824))

(declare-fun m!7491826 () Bool)

(assert (=> b!6733951 m!7491826))

(declare-fun m!7491828 () Bool)

(assert (=> b!6733954 m!7491828))

(assert (=> b!6733396 d!2115744))

(declare-fun bs!1790749 () Bool)

(declare-fun d!2115746 () Bool)

(assert (= bs!1790749 (and d!2115746 d!2115744)))

(declare-fun lambda!378077 () Int)

(assert (=> bs!1790749 (= lambda!378077 lambda!378074)))

(assert (=> d!2115746 (= (inv!84649 setElem!45943) (forall!15761 (exprs!6445 setElem!45943) lambda!378077))))

(declare-fun bs!1790750 () Bool)

(assert (= bs!1790750 d!2115746))

(declare-fun m!7491830 () Bool)

(assert (=> bs!1790750 m!7491830))

(assert (=> setNonEmpty!45943 d!2115746))

(declare-fun bs!1790751 () Bool)

(declare-fun d!2115748 () Bool)

(assert (= bs!1790751 (and d!2115748 d!2115744)))

(declare-fun lambda!378080 () Int)

(assert (=> bs!1790751 (= lambda!378080 lambda!378074)))

(declare-fun bs!1790752 () Bool)

(assert (= bs!1790752 (and d!2115748 d!2115746)))

(assert (=> bs!1790752 (= lambda!378080 lambda!378077)))

(declare-fun b!6733976 () Bool)

(declare-fun e!4067940 () Bool)

(declare-fun lt!2438198 () Regex!16561)

(assert (=> b!6733976 (= e!4067940 (= lt!2438198 (head!13550 (unfocusZipperList!1982 zl!343))))))

(declare-fun b!6733977 () Bool)

(declare-fun e!4067939 () Regex!16561)

(declare-fun e!4067938 () Regex!16561)

(assert (=> b!6733977 (= e!4067939 e!4067938)))

(declare-fun c!1248818 () Bool)

(assert (=> b!6733977 (= c!1248818 ((_ is Cons!65859) (unfocusZipperList!1982 zl!343)))))

(declare-fun b!6733978 () Bool)

(assert (=> b!6733978 (= e!4067938 EmptyLang!16561)))

(declare-fun b!6733979 () Bool)

(declare-fun isUnion!1365 (Regex!16561) Bool)

(assert (=> b!6733979 (= e!4067940 (isUnion!1365 lt!2438198))))

(declare-fun e!4067942 () Bool)

(assert (=> d!2115748 e!4067942))

(declare-fun res!2754866 () Bool)

(assert (=> d!2115748 (=> (not res!2754866) (not e!4067942))))

(assert (=> d!2115748 (= res!2754866 (validRegex!8297 lt!2438198))))

(assert (=> d!2115748 (= lt!2438198 e!4067939)))

(declare-fun c!1248819 () Bool)

(declare-fun e!4067941 () Bool)

(assert (=> d!2115748 (= c!1248819 e!4067941)))

(declare-fun res!2754865 () Bool)

(assert (=> d!2115748 (=> (not res!2754865) (not e!4067941))))

(assert (=> d!2115748 (= res!2754865 ((_ is Cons!65859) (unfocusZipperList!1982 zl!343)))))

(assert (=> d!2115748 (forall!15761 (unfocusZipperList!1982 zl!343) lambda!378080)))

(assert (=> d!2115748 (= (generalisedUnion!2405 (unfocusZipperList!1982 zl!343)) lt!2438198)))

(declare-fun b!6733980 () Bool)

(assert (=> b!6733980 (= e!4067939 (h!72307 (unfocusZipperList!1982 zl!343)))))

(declare-fun b!6733981 () Bool)

(declare-fun e!4067937 () Bool)

(assert (=> b!6733981 (= e!4067942 e!4067937)))

(declare-fun c!1248817 () Bool)

(assert (=> b!6733981 (= c!1248817 (isEmpty!38198 (unfocusZipperList!1982 zl!343)))))

(declare-fun b!6733982 () Bool)

(assert (=> b!6733982 (= e!4067941 (isEmpty!38198 (t!379674 (unfocusZipperList!1982 zl!343))))))

(declare-fun b!6733983 () Bool)

(declare-fun isEmptyLang!1935 (Regex!16561) Bool)

(assert (=> b!6733983 (= e!4067937 (isEmptyLang!1935 lt!2438198))))

(declare-fun b!6733984 () Bool)

(assert (=> b!6733984 (= e!4067937 e!4067940)))

(declare-fun c!1248820 () Bool)

(assert (=> b!6733984 (= c!1248820 (isEmpty!38198 (tail!12635 (unfocusZipperList!1982 zl!343))))))

(declare-fun b!6733985 () Bool)

(assert (=> b!6733985 (= e!4067938 (Union!16561 (h!72307 (unfocusZipperList!1982 zl!343)) (generalisedUnion!2405 (t!379674 (unfocusZipperList!1982 zl!343)))))))

(assert (= (and d!2115748 res!2754865) b!6733982))

(assert (= (and d!2115748 c!1248819) b!6733980))

(assert (= (and d!2115748 (not c!1248819)) b!6733977))

(assert (= (and b!6733977 c!1248818) b!6733985))

(assert (= (and b!6733977 (not c!1248818)) b!6733978))

(assert (= (and d!2115748 res!2754866) b!6733981))

(assert (= (and b!6733981 c!1248817) b!6733983))

(assert (= (and b!6733981 (not c!1248817)) b!6733984))

(assert (= (and b!6733984 c!1248820) b!6733976))

(assert (= (and b!6733984 (not c!1248820)) b!6733979))

(declare-fun m!7491832 () Bool)

(assert (=> d!2115748 m!7491832))

(assert (=> d!2115748 m!7491492))

(declare-fun m!7491834 () Bool)

(assert (=> d!2115748 m!7491834))

(declare-fun m!7491836 () Bool)

(assert (=> b!6733979 m!7491836))

(assert (=> b!6733984 m!7491492))

(declare-fun m!7491838 () Bool)

(assert (=> b!6733984 m!7491838))

(assert (=> b!6733984 m!7491838))

(declare-fun m!7491840 () Bool)

(assert (=> b!6733984 m!7491840))

(assert (=> b!6733981 m!7491492))

(declare-fun m!7491842 () Bool)

(assert (=> b!6733981 m!7491842))

(declare-fun m!7491844 () Bool)

(assert (=> b!6733982 m!7491844))

(declare-fun m!7491846 () Bool)

(assert (=> b!6733983 m!7491846))

(declare-fun m!7491848 () Bool)

(assert (=> b!6733985 m!7491848))

(assert (=> b!6733976 m!7491492))

(declare-fun m!7491850 () Bool)

(assert (=> b!6733976 m!7491850))

(assert (=> b!6733409 d!2115748))

(declare-fun bs!1790753 () Bool)

(declare-fun d!2115750 () Bool)

(assert (= bs!1790753 (and d!2115750 d!2115744)))

(declare-fun lambda!378083 () Int)

(assert (=> bs!1790753 (= lambda!378083 lambda!378074)))

(declare-fun bs!1790754 () Bool)

(assert (= bs!1790754 (and d!2115750 d!2115746)))

(assert (=> bs!1790754 (= lambda!378083 lambda!378077)))

(declare-fun bs!1790755 () Bool)

(assert (= bs!1790755 (and d!2115750 d!2115748)))

(assert (=> bs!1790755 (= lambda!378083 lambda!378080)))

(declare-fun lt!2438201 () List!65983)

(assert (=> d!2115750 (forall!15761 lt!2438201 lambda!378083)))

(declare-fun e!4067945 () List!65983)

(assert (=> d!2115750 (= lt!2438201 e!4067945)))

(declare-fun c!1248823 () Bool)

(assert (=> d!2115750 (= c!1248823 ((_ is Cons!65860) zl!343))))

(assert (=> d!2115750 (= (unfocusZipperList!1982 zl!343) lt!2438201)))

(declare-fun b!6733990 () Bool)

(assert (=> b!6733990 (= e!4067945 (Cons!65859 (generalisedConcat!2158 (exprs!6445 (h!72308 zl!343))) (unfocusZipperList!1982 (t!379675 zl!343))))))

(declare-fun b!6733991 () Bool)

(assert (=> b!6733991 (= e!4067945 Nil!65859)))

(assert (= (and d!2115750 c!1248823) b!6733990))

(assert (= (and d!2115750 (not c!1248823)) b!6733991))

(declare-fun m!7491852 () Bool)

(assert (=> d!2115750 m!7491852))

(assert (=> b!6733990 m!7491522))

(declare-fun m!7491854 () Bool)

(assert (=> b!6733990 m!7491854))

(assert (=> b!6733409 d!2115750))

(declare-fun d!2115752 () Bool)

(declare-fun lt!2438204 () Regex!16561)

(assert (=> d!2115752 (validRegex!8297 lt!2438204)))

(assert (=> d!2115752 (= lt!2438204 (generalisedUnion!2405 (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860))))))

(assert (=> d!2115752 (= (unfocusZipper!2303 (Cons!65860 lt!2438117 Nil!65860)) lt!2438204)))

(declare-fun bs!1790756 () Bool)

(assert (= bs!1790756 d!2115752))

(declare-fun m!7491856 () Bool)

(assert (=> bs!1790756 m!7491856))

(declare-fun m!7491858 () Bool)

(assert (=> bs!1790756 m!7491858))

(assert (=> bs!1790756 m!7491858))

(declare-fun m!7491860 () Bool)

(assert (=> bs!1790756 m!7491860))

(assert (=> b!6733399 d!2115752))

(declare-fun b!6734010 () Bool)

(declare-fun res!2754881 () Bool)

(declare-fun e!4067961 () Bool)

(assert (=> b!6734010 (=> res!2754881 e!4067961)))

(assert (=> b!6734010 (= res!2754881 (not ((_ is Concat!25406) r!7292)))))

(declare-fun e!4067960 () Bool)

(assert (=> b!6734010 (= e!4067960 e!4067961)))

(declare-fun b!6734011 () Bool)

(declare-fun e!4067966 () Bool)

(assert (=> b!6734011 (= e!4067966 e!4067960)))

(declare-fun c!1248828 () Bool)

(assert (=> b!6734011 (= c!1248828 ((_ is Union!16561) r!7292))))

(declare-fun c!1248829 () Bool)

(declare-fun call!608325 () Bool)

(declare-fun bm!608320 () Bool)

(assert (=> bm!608320 (= call!608325 (validRegex!8297 (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292)))))))

(declare-fun b!6734012 () Bool)

(declare-fun e!4067963 () Bool)

(assert (=> b!6734012 (= e!4067963 call!608325)))

(declare-fun b!6734013 () Bool)

(declare-fun e!4067965 () Bool)

(declare-fun call!608327 () Bool)

(assert (=> b!6734013 (= e!4067965 call!608327)))

(declare-fun b!6734015 () Bool)

(declare-fun e!4067962 () Bool)

(assert (=> b!6734015 (= e!4067962 call!608327)))

(declare-fun b!6734016 () Bool)

(assert (=> b!6734016 (= e!4067966 e!4067963)))

(declare-fun res!2754880 () Bool)

(assert (=> b!6734016 (= res!2754880 (not (nullable!6548 (reg!16890 r!7292))))))

(assert (=> b!6734016 (=> (not res!2754880) (not e!4067963))))

(declare-fun b!6734017 () Bool)

(assert (=> b!6734017 (= e!4067961 e!4067962)))

(declare-fun res!2754878 () Bool)

(assert (=> b!6734017 (=> (not res!2754878) (not e!4067962))))

(declare-fun call!608326 () Bool)

(assert (=> b!6734017 (= res!2754878 call!608326)))

(declare-fun bm!608321 () Bool)

(assert (=> bm!608321 (= call!608327 call!608325)))

(declare-fun bm!608322 () Bool)

(assert (=> bm!608322 (= call!608326 (validRegex!8297 (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292))))))

(declare-fun b!6734018 () Bool)

(declare-fun e!4067964 () Bool)

(assert (=> b!6734018 (= e!4067964 e!4067966)))

(assert (=> b!6734018 (= c!1248829 ((_ is Star!16561) r!7292))))

(declare-fun d!2115754 () Bool)

(declare-fun res!2754877 () Bool)

(assert (=> d!2115754 (=> res!2754877 e!4067964)))

(assert (=> d!2115754 (= res!2754877 ((_ is ElementMatch!16561) r!7292))))

(assert (=> d!2115754 (= (validRegex!8297 r!7292) e!4067964)))

(declare-fun b!6734014 () Bool)

(declare-fun res!2754879 () Bool)

(assert (=> b!6734014 (=> (not res!2754879) (not e!4067965))))

(assert (=> b!6734014 (= res!2754879 call!608326)))

(assert (=> b!6734014 (= e!4067960 e!4067965)))

(assert (= (and d!2115754 (not res!2754877)) b!6734018))

(assert (= (and b!6734018 c!1248829) b!6734016))

(assert (= (and b!6734018 (not c!1248829)) b!6734011))

(assert (= (and b!6734016 res!2754880) b!6734012))

(assert (= (and b!6734011 c!1248828) b!6734014))

(assert (= (and b!6734011 (not c!1248828)) b!6734010))

(assert (= (and b!6734014 res!2754879) b!6734013))

(assert (= (and b!6734010 (not res!2754881)) b!6734017))

(assert (= (and b!6734017 res!2754878) b!6734015))

(assert (= (or b!6734013 b!6734015) bm!608321))

(assert (= (or b!6734014 b!6734017) bm!608322))

(assert (= (or b!6734012 bm!608321) bm!608320))

(declare-fun m!7491862 () Bool)

(assert (=> bm!608320 m!7491862))

(declare-fun m!7491864 () Bool)

(assert (=> b!6734016 m!7491864))

(declare-fun m!7491866 () Bool)

(assert (=> bm!608322 m!7491866))

(assert (=> start!653032 d!2115754))

(declare-fun bs!1790757 () Bool)

(declare-fun d!2115756 () Bool)

(assert (= bs!1790757 (and d!2115756 d!2115744)))

(declare-fun lambda!378084 () Int)

(assert (=> bs!1790757 (= lambda!378084 lambda!378074)))

(declare-fun bs!1790758 () Bool)

(assert (= bs!1790758 (and d!2115756 d!2115746)))

(assert (=> bs!1790758 (= lambda!378084 lambda!378077)))

(declare-fun bs!1790759 () Bool)

(assert (= bs!1790759 (and d!2115756 d!2115748)))

(assert (=> bs!1790759 (= lambda!378084 lambda!378080)))

(declare-fun bs!1790760 () Bool)

(assert (= bs!1790760 (and d!2115756 d!2115750)))

(assert (=> bs!1790760 (= lambda!378084 lambda!378083)))

(assert (=> d!2115756 (= (inv!84649 (h!72308 zl!343)) (forall!15761 (exprs!6445 (h!72308 zl!343)) lambda!378084))))

(declare-fun bs!1790761 () Bool)

(assert (= bs!1790761 d!2115756))

(declare-fun m!7491868 () Bool)

(assert (=> bs!1790761 m!7491868))

(assert (=> b!6733408 d!2115756))

(declare-fun bs!1790762 () Bool)

(declare-fun d!2115758 () Bool)

(assert (= bs!1790762 (and d!2115758 d!2115750)))

(declare-fun lambda!378085 () Int)

(assert (=> bs!1790762 (= lambda!378085 lambda!378083)))

(declare-fun bs!1790763 () Bool)

(assert (= bs!1790763 (and d!2115758 d!2115744)))

(assert (=> bs!1790763 (= lambda!378085 lambda!378074)))

(declare-fun bs!1790764 () Bool)

(assert (= bs!1790764 (and d!2115758 d!2115756)))

(assert (=> bs!1790764 (= lambda!378085 lambda!378084)))

(declare-fun bs!1790765 () Bool)

(assert (= bs!1790765 (and d!2115758 d!2115748)))

(assert (=> bs!1790765 (= lambda!378085 lambda!378080)))

(declare-fun bs!1790766 () Bool)

(assert (= bs!1790766 (and d!2115758 d!2115746)))

(assert (=> bs!1790766 (= lambda!378085 lambda!378077)))

(assert (=> d!2115758 (= (inv!84649 lt!2438119) (forall!15761 (exprs!6445 lt!2438119) lambda!378085))))

(declare-fun bs!1790767 () Bool)

(assert (= bs!1790767 d!2115758))

(declare-fun m!7491870 () Bool)

(assert (=> bs!1790767 m!7491870))

(assert (=> b!6733400 d!2115758))

(declare-fun bm!608325 () Bool)

(declare-fun call!608330 () (InoxSet Context!11890))

(assert (=> bm!608325 (= call!608330 (derivationStepZipperDown!1789 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (h!72306 s!2326)))))

(declare-fun b!6734029 () Bool)

(declare-fun e!4067973 () Bool)

(assert (=> b!6734029 (= e!4067973 (nullable!6548 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))))))

(declare-fun b!6734030 () Bool)

(declare-fun e!4067975 () (InoxSet Context!11890))

(assert (=> b!6734030 (= e!4067975 call!608330)))

(declare-fun b!6734031 () Bool)

(declare-fun e!4067974 () (InoxSet Context!11890))

(assert (=> b!6734031 (= e!4067974 ((_ map or) call!608330 (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (h!72306 s!2326))))))

(declare-fun b!6734032 () Bool)

(assert (=> b!6734032 (= e!4067975 ((as const (Array Context!11890 Bool)) false))))

(declare-fun b!6734033 () Bool)

(assert (=> b!6734033 (= e!4067974 e!4067975)))

(declare-fun c!1248835 () Bool)

(assert (=> b!6734033 (= c!1248835 ((_ is Cons!65859) (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))))))

(declare-fun d!2115760 () Bool)

(declare-fun c!1248834 () Bool)

(assert (=> d!2115760 (= c!1248834 e!4067973)))

(declare-fun res!2754884 () Bool)

(assert (=> d!2115760 (=> (not res!2754884) (not e!4067973))))

(assert (=> d!2115760 (= res!2754884 ((_ is Cons!65859) (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))))))

(assert (=> d!2115760 (= (derivationStepZipperUp!1715 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)) (h!72306 s!2326)) e!4067974)))

(assert (= (and d!2115760 res!2754884) b!6734029))

(assert (= (and d!2115760 c!1248834) b!6734031))

(assert (= (and d!2115760 (not c!1248834)) b!6734033))

(assert (= (and b!6734033 c!1248835) b!6734030))

(assert (= (and b!6734033 (not c!1248835)) b!6734032))

(assert (= (or b!6734031 b!6734030) bm!608325))

(declare-fun m!7491872 () Bool)

(assert (=> bm!608325 m!7491872))

(declare-fun m!7491874 () Bool)

(assert (=> b!6734029 m!7491874))

(declare-fun m!7491876 () Bool)

(assert (=> b!6734031 m!7491876))

(assert (=> b!6733400 d!2115760))

(declare-fun d!2115762 () Bool)

(assert (=> d!2115762 (= (isEmpty!38194 (t!379675 zl!343)) ((_ is Nil!65860) (t!379675 zl!343)))))

(assert (=> b!6733411 d!2115762))

(declare-fun d!2115764 () Bool)

(declare-fun e!4067978 () Bool)

(assert (=> d!2115764 e!4067978))

(declare-fun res!2754887 () Bool)

(assert (=> d!2115764 (=> (not res!2754887) (not e!4067978))))

(declare-fun lt!2438207 () List!65984)

(declare-fun noDuplicate!2354 (List!65984) Bool)

(assert (=> d!2115764 (= res!2754887 (noDuplicate!2354 lt!2438207))))

(declare-fun choose!50194 ((InoxSet Context!11890)) List!65984)

(assert (=> d!2115764 (= lt!2438207 (choose!50194 z!1189))))

(assert (=> d!2115764 (= (toList!10345 z!1189) lt!2438207)))

(declare-fun b!6734036 () Bool)

(declare-fun content!12791 (List!65984) (InoxSet Context!11890))

(assert (=> b!6734036 (= e!4067978 (= (content!12791 lt!2438207) z!1189))))

(assert (= (and d!2115764 res!2754887) b!6734036))

(declare-fun m!7491878 () Bool)

(assert (=> d!2115764 m!7491878))

(declare-fun m!7491880 () Bool)

(assert (=> d!2115764 m!7491880))

(declare-fun m!7491882 () Bool)

(assert (=> b!6734036 m!7491882))

(assert (=> b!6733394 d!2115764))

(declare-fun bm!608338 () Bool)

(declare-fun call!608344 () (InoxSet Context!11890))

(declare-fun call!608348 () (InoxSet Context!11890))

(assert (=> bm!608338 (= call!608344 call!608348)))

(declare-fun c!1248849 () Bool)

(declare-fun call!608343 () List!65983)

(declare-fun call!608347 () (InoxSet Context!11890))

(declare-fun bm!608339 () Bool)

(assert (=> bm!608339 (= call!608347 (derivationStepZipperDown!1789 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292))) (ite c!1248849 lt!2438119 (Context!11891 call!608343)) (h!72306 s!2326)))))

(declare-fun d!2115766 () Bool)

(declare-fun c!1248846 () Bool)

(assert (=> d!2115766 (= c!1248846 (and ((_ is ElementMatch!16561) (reg!16890 r!7292)) (= (c!1248671 (reg!16890 r!7292)) (h!72306 s!2326))))))

(declare-fun e!4067991 () (InoxSet Context!11890))

(assert (=> d!2115766 (= (derivationStepZipperDown!1789 (reg!16890 r!7292) lt!2438119 (h!72306 s!2326)) e!4067991)))

(declare-fun b!6734059 () Bool)

(declare-fun e!4067995 () (InoxSet Context!11890))

(assert (=> b!6734059 (= e!4067995 call!608344)))

(declare-fun bm!608340 () Bool)

(declare-fun call!608345 () List!65983)

(assert (=> bm!608340 (= call!608345 call!608343)))

(declare-fun b!6734060 () Bool)

(declare-fun c!1248847 () Bool)

(declare-fun e!4067992 () Bool)

(assert (=> b!6734060 (= c!1248847 e!4067992)))

(declare-fun res!2754890 () Bool)

(assert (=> b!6734060 (=> (not res!2754890) (not e!4067992))))

(assert (=> b!6734060 (= res!2754890 ((_ is Concat!25406) (reg!16890 r!7292)))))

(declare-fun e!4067993 () (InoxSet Context!11890))

(declare-fun e!4067996 () (InoxSet Context!11890))

(assert (=> b!6734060 (= e!4067993 e!4067996)))

(declare-fun b!6734061 () Bool)

(assert (=> b!6734061 (= e!4067992 (nullable!6548 (regOne!33634 (reg!16890 r!7292))))))

(declare-fun b!6734062 () Bool)

(declare-fun call!608346 () (InoxSet Context!11890))

(assert (=> b!6734062 (= e!4067993 ((_ map or) call!608347 call!608346))))

(declare-fun b!6734063 () Bool)

(declare-fun e!4067994 () (InoxSet Context!11890))

(assert (=> b!6734063 (= e!4067996 e!4067994)))

(declare-fun c!1248848 () Bool)

(assert (=> b!6734063 (= c!1248848 ((_ is Concat!25406) (reg!16890 r!7292)))))

(declare-fun b!6734064 () Bool)

(assert (=> b!6734064 (= e!4067996 ((_ map or) call!608347 call!608348))))

(declare-fun b!6734065 () Bool)

(assert (=> b!6734065 (= e!4067991 e!4067993)))

(assert (=> b!6734065 (= c!1248849 ((_ is Union!16561) (reg!16890 r!7292)))))

(declare-fun bm!608341 () Bool)

(assert (=> bm!608341 (= call!608346 (derivationStepZipperDown!1789 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292))))) (ite (or c!1248849 c!1248847) lt!2438119 (Context!11891 call!608345)) (h!72306 s!2326)))))

(declare-fun b!6734066 () Bool)

(assert (=> b!6734066 (= e!4067991 (store ((as const (Array Context!11890 Bool)) false) lt!2438119 true))))

(declare-fun b!6734067 () Bool)

(assert (=> b!6734067 (= e!4067994 call!608344)))

(declare-fun b!6734068 () Bool)

(assert (=> b!6734068 (= e!4067995 ((as const (Array Context!11890 Bool)) false))))

(declare-fun bm!608342 () Bool)

(assert (=> bm!608342 (= call!608348 call!608346)))

(declare-fun b!6734069 () Bool)

(declare-fun c!1248850 () Bool)

(assert (=> b!6734069 (= c!1248850 ((_ is Star!16561) (reg!16890 r!7292)))))

(assert (=> b!6734069 (= e!4067994 e!4067995)))

(declare-fun bm!608343 () Bool)

(declare-fun $colon$colon!2378 (List!65983 Regex!16561) List!65983)

(assert (=> bm!608343 (= call!608343 ($colon$colon!2378 (exprs!6445 lt!2438119) (ite (or c!1248847 c!1248848) (regTwo!33634 (reg!16890 r!7292)) (reg!16890 r!7292))))))

(assert (= (and d!2115766 c!1248846) b!6734066))

(assert (= (and d!2115766 (not c!1248846)) b!6734065))

(assert (= (and b!6734065 c!1248849) b!6734062))

(assert (= (and b!6734065 (not c!1248849)) b!6734060))

(assert (= (and b!6734060 res!2754890) b!6734061))

(assert (= (and b!6734060 c!1248847) b!6734064))

(assert (= (and b!6734060 (not c!1248847)) b!6734063))

(assert (= (and b!6734063 c!1248848) b!6734067))

(assert (= (and b!6734063 (not c!1248848)) b!6734069))

(assert (= (and b!6734069 c!1248850) b!6734059))

(assert (= (and b!6734069 (not c!1248850)) b!6734068))

(assert (= (or b!6734067 b!6734059) bm!608340))

(assert (= (or b!6734067 b!6734059) bm!608338))

(assert (= (or b!6734064 bm!608340) bm!608343))

(assert (= (or b!6734064 bm!608338) bm!608342))

(assert (= (or b!6734062 bm!608342) bm!608341))

(assert (= (or b!6734062 b!6734064) bm!608339))

(declare-fun m!7491884 () Bool)

(assert (=> bm!608341 m!7491884))

(declare-fun m!7491886 () Bool)

(assert (=> b!6734066 m!7491886))

(declare-fun m!7491888 () Bool)

(assert (=> bm!608339 m!7491888))

(declare-fun m!7491890 () Bool)

(assert (=> b!6734061 m!7491890))

(declare-fun m!7491892 () Bool)

(assert (=> bm!608343 m!7491892))

(assert (=> b!6733404 d!2115766))

(declare-fun d!2115768 () Bool)

(declare-fun choose!50195 ((InoxSet Context!11890) Int) (InoxSet Context!11890))

(assert (=> d!2115768 (= (flatMap!2042 lt!2438114 lambda!378011) (choose!50195 lt!2438114 lambda!378011))))

(declare-fun bs!1790768 () Bool)

(assert (= bs!1790768 d!2115768))

(declare-fun m!7491894 () Bool)

(assert (=> bs!1790768 m!7491894))

(assert (=> b!6733404 d!2115768))

(declare-fun bm!608344 () Bool)

(declare-fun call!608349 () (InoxSet Context!11890))

(assert (=> bm!608344 (= call!608349 (derivationStepZipperDown!1789 (h!72307 (exprs!6445 lt!2438117)) (Context!11891 (t!379674 (exprs!6445 lt!2438117))) (h!72306 s!2326)))))

(declare-fun b!6734070 () Bool)

(declare-fun e!4067997 () Bool)

(assert (=> b!6734070 (= e!4067997 (nullable!6548 (h!72307 (exprs!6445 lt!2438117))))))

(declare-fun b!6734071 () Bool)

(declare-fun e!4067999 () (InoxSet Context!11890))

(assert (=> b!6734071 (= e!4067999 call!608349)))

(declare-fun e!4067998 () (InoxSet Context!11890))

(declare-fun b!6734072 () Bool)

(assert (=> b!6734072 (= e!4067998 ((_ map or) call!608349 (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 lt!2438117))) (h!72306 s!2326))))))

(declare-fun b!6734073 () Bool)

(assert (=> b!6734073 (= e!4067999 ((as const (Array Context!11890 Bool)) false))))

(declare-fun b!6734074 () Bool)

(assert (=> b!6734074 (= e!4067998 e!4067999)))

(declare-fun c!1248852 () Bool)

(assert (=> b!6734074 (= c!1248852 ((_ is Cons!65859) (exprs!6445 lt!2438117)))))

(declare-fun d!2115770 () Bool)

(declare-fun c!1248851 () Bool)

(assert (=> d!2115770 (= c!1248851 e!4067997)))

(declare-fun res!2754891 () Bool)

(assert (=> d!2115770 (=> (not res!2754891) (not e!4067997))))

(assert (=> d!2115770 (= res!2754891 ((_ is Cons!65859) (exprs!6445 lt!2438117)))))

(assert (=> d!2115770 (= (derivationStepZipperUp!1715 lt!2438117 (h!72306 s!2326)) e!4067998)))

(assert (= (and d!2115770 res!2754891) b!6734070))

(assert (= (and d!2115770 c!1248851) b!6734072))

(assert (= (and d!2115770 (not c!1248851)) b!6734074))

(assert (= (and b!6734074 c!1248852) b!6734071))

(assert (= (and b!6734074 (not c!1248852)) b!6734073))

(assert (= (or b!6734072 b!6734071) bm!608344))

(declare-fun m!7491896 () Bool)

(assert (=> bm!608344 m!7491896))

(declare-fun m!7491898 () Bool)

(assert (=> b!6734070 m!7491898))

(declare-fun m!7491900 () Bool)

(assert (=> b!6734072 m!7491900))

(assert (=> b!6733404 d!2115770))

(declare-fun d!2115772 () Bool)

(declare-fun dynLambda!26272 (Int Context!11890) (InoxSet Context!11890))

(assert (=> d!2115772 (= (flatMap!2042 lt!2438114 lambda!378011) (dynLambda!26272 lambda!378011 lt!2438117))))

(declare-fun lt!2438210 () Unit!159813)

(declare-fun choose!50196 ((InoxSet Context!11890) Context!11890 Int) Unit!159813)

(assert (=> d!2115772 (= lt!2438210 (choose!50196 lt!2438114 lt!2438117 lambda!378011))))

(assert (=> d!2115772 (= lt!2438114 (store ((as const (Array Context!11890 Bool)) false) lt!2438117 true))))

(assert (=> d!2115772 (= (lemmaFlatMapOnSingletonSet!1568 lt!2438114 lt!2438117 lambda!378011) lt!2438210)))

(declare-fun b_lambda!253539 () Bool)

(assert (=> (not b_lambda!253539) (not d!2115772)))

(declare-fun bs!1790769 () Bool)

(assert (= bs!1790769 d!2115772))

(assert (=> bs!1790769 m!7491518))

(declare-fun m!7491902 () Bool)

(assert (=> bs!1790769 m!7491902))

(declare-fun m!7491904 () Bool)

(assert (=> bs!1790769 m!7491904))

(assert (=> bs!1790769 m!7491512))

(assert (=> b!6733404 d!2115772))

(declare-fun d!2115774 () Bool)

(declare-fun c!1248855 () Bool)

(assert (=> d!2115774 (= c!1248855 (isEmpty!38193 s!2326))))

(declare-fun e!4068002 () Bool)

(assert (=> d!2115774 (= (matchZipper!2547 lt!2438114 s!2326) e!4068002)))

(declare-fun b!6734079 () Bool)

(declare-fun nullableZipper!2276 ((InoxSet Context!11890)) Bool)

(assert (=> b!6734079 (= e!4068002 (nullableZipper!2276 lt!2438114))))

(declare-fun b!6734080 () Bool)

(assert (=> b!6734080 (= e!4068002 (matchZipper!2547 (derivationStepZipper!2505 lt!2438114 (head!13549 s!2326)) (tail!12634 s!2326)))))

(assert (= (and d!2115774 c!1248855) b!6734079))

(assert (= (and d!2115774 (not c!1248855)) b!6734080))

(assert (=> d!2115774 m!7491474))

(declare-fun m!7491906 () Bool)

(assert (=> b!6734079 m!7491906))

(assert (=> b!6734080 m!7491666))

(assert (=> b!6734080 m!7491666))

(declare-fun m!7491908 () Bool)

(assert (=> b!6734080 m!7491908))

(assert (=> b!6734080 m!7491668))

(assert (=> b!6734080 m!7491908))

(assert (=> b!6734080 m!7491668))

(declare-fun m!7491910 () Bool)

(assert (=> b!6734080 m!7491910))

(assert (=> b!6733393 d!2115774))

(declare-fun d!2115776 () Bool)

(declare-fun c!1248856 () Bool)

(assert (=> d!2115776 (= c!1248856 (isEmpty!38193 (t!379673 s!2326)))))

(declare-fun e!4068003 () Bool)

(assert (=> d!2115776 (= (matchZipper!2547 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326)) (t!379673 s!2326)) e!4068003)))

(declare-fun b!6734081 () Bool)

(assert (=> b!6734081 (= e!4068003 (nullableZipper!2276 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326))))))

(declare-fun b!6734082 () Bool)

(assert (=> b!6734082 (= e!4068003 (matchZipper!2547 (derivationStepZipper!2505 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326)) (head!13549 (t!379673 s!2326))) (tail!12634 (t!379673 s!2326))))))

(assert (= (and d!2115776 c!1248856) b!6734081))

(assert (= (and d!2115776 (not c!1248856)) b!6734082))

(declare-fun m!7491912 () Bool)

(assert (=> d!2115776 m!7491912))

(assert (=> b!6734081 m!7491502))

(declare-fun m!7491914 () Bool)

(assert (=> b!6734081 m!7491914))

(declare-fun m!7491916 () Bool)

(assert (=> b!6734082 m!7491916))

(assert (=> b!6734082 m!7491502))

(assert (=> b!6734082 m!7491916))

(declare-fun m!7491918 () Bool)

(assert (=> b!6734082 m!7491918))

(declare-fun m!7491920 () Bool)

(assert (=> b!6734082 m!7491920))

(assert (=> b!6734082 m!7491918))

(assert (=> b!6734082 m!7491920))

(declare-fun m!7491922 () Bool)

(assert (=> b!6734082 m!7491922))

(assert (=> b!6733393 d!2115776))

(declare-fun bs!1790770 () Bool)

(declare-fun d!2115778 () Bool)

(assert (= bs!1790770 (and d!2115778 b!6733405)))

(declare-fun lambda!378088 () Int)

(assert (=> bs!1790770 (= lambda!378088 lambda!378011)))

(assert (=> d!2115778 true))

(assert (=> d!2115778 (= (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326)) (flatMap!2042 lt!2438114 lambda!378088))))

(declare-fun bs!1790771 () Bool)

(assert (= bs!1790771 d!2115778))

(declare-fun m!7491924 () Bool)

(assert (=> bs!1790771 m!7491924))

(assert (=> b!6733393 d!2115778))

(declare-fun bm!608345 () Bool)

(declare-fun call!608351 () (InoxSet Context!11890))

(declare-fun call!608355 () (InoxSet Context!11890))

(assert (=> bm!608345 (= call!608351 call!608355)))

(declare-fun bm!608346 () Bool)

(declare-fun call!608350 () List!65983)

(declare-fun c!1248862 () Bool)

(declare-fun call!608354 () (InoxSet Context!11890))

(assert (=> bm!608346 (= call!608354 (derivationStepZipperDown!1789 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292)) (ite c!1248862 (Context!11891 Nil!65859) (Context!11891 call!608350)) (h!72306 s!2326)))))

(declare-fun d!2115780 () Bool)

(declare-fun c!1248859 () Bool)

(assert (=> d!2115780 (= c!1248859 (and ((_ is ElementMatch!16561) r!7292) (= (c!1248671 r!7292) (h!72306 s!2326))))))

(declare-fun e!4068004 () (InoxSet Context!11890))

(assert (=> d!2115780 (= (derivationStepZipperDown!1789 r!7292 (Context!11891 Nil!65859) (h!72306 s!2326)) e!4068004)))

(declare-fun b!6734085 () Bool)

(declare-fun e!4068008 () (InoxSet Context!11890))

(assert (=> b!6734085 (= e!4068008 call!608351)))

(declare-fun bm!608347 () Bool)

(declare-fun call!608352 () List!65983)

(assert (=> bm!608347 (= call!608352 call!608350)))

(declare-fun b!6734086 () Bool)

(declare-fun c!1248860 () Bool)

(declare-fun e!4068005 () Bool)

(assert (=> b!6734086 (= c!1248860 e!4068005)))

(declare-fun res!2754892 () Bool)

(assert (=> b!6734086 (=> (not res!2754892) (not e!4068005))))

(assert (=> b!6734086 (= res!2754892 ((_ is Concat!25406) r!7292))))

(declare-fun e!4068006 () (InoxSet Context!11890))

(declare-fun e!4068009 () (InoxSet Context!11890))

(assert (=> b!6734086 (= e!4068006 e!4068009)))

(declare-fun b!6734087 () Bool)

(assert (=> b!6734087 (= e!4068005 (nullable!6548 (regOne!33634 r!7292)))))

(declare-fun b!6734088 () Bool)

(declare-fun call!608353 () (InoxSet Context!11890))

(assert (=> b!6734088 (= e!4068006 ((_ map or) call!608354 call!608353))))

(declare-fun b!6734089 () Bool)

(declare-fun e!4068007 () (InoxSet Context!11890))

(assert (=> b!6734089 (= e!4068009 e!4068007)))

(declare-fun c!1248861 () Bool)

(assert (=> b!6734089 (= c!1248861 ((_ is Concat!25406) r!7292))))

(declare-fun b!6734090 () Bool)

(assert (=> b!6734090 (= e!4068009 ((_ map or) call!608354 call!608355))))

(declare-fun b!6734091 () Bool)

(assert (=> b!6734091 (= e!4068004 e!4068006)))

(assert (=> b!6734091 (= c!1248862 ((_ is Union!16561) r!7292))))

(declare-fun bm!608348 () Bool)

(assert (=> bm!608348 (= call!608353 (derivationStepZipperDown!1789 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292)))) (ite (or c!1248862 c!1248860) (Context!11891 Nil!65859) (Context!11891 call!608352)) (h!72306 s!2326)))))

(declare-fun b!6734092 () Bool)

(assert (=> b!6734092 (= e!4068004 (store ((as const (Array Context!11890 Bool)) false) (Context!11891 Nil!65859) true))))

(declare-fun b!6734093 () Bool)

(assert (=> b!6734093 (= e!4068007 call!608351)))

(declare-fun b!6734094 () Bool)

(assert (=> b!6734094 (= e!4068008 ((as const (Array Context!11890 Bool)) false))))

(declare-fun bm!608349 () Bool)

(assert (=> bm!608349 (= call!608355 call!608353)))

(declare-fun b!6734095 () Bool)

(declare-fun c!1248863 () Bool)

(assert (=> b!6734095 (= c!1248863 ((_ is Star!16561) r!7292))))

(assert (=> b!6734095 (= e!4068007 e!4068008)))

(declare-fun bm!608350 () Bool)

(assert (=> bm!608350 (= call!608350 ($colon$colon!2378 (exprs!6445 (Context!11891 Nil!65859)) (ite (or c!1248860 c!1248861) (regTwo!33634 r!7292) r!7292)))))

(assert (= (and d!2115780 c!1248859) b!6734092))

(assert (= (and d!2115780 (not c!1248859)) b!6734091))

(assert (= (and b!6734091 c!1248862) b!6734088))

(assert (= (and b!6734091 (not c!1248862)) b!6734086))

(assert (= (and b!6734086 res!2754892) b!6734087))

(assert (= (and b!6734086 c!1248860) b!6734090))

(assert (= (and b!6734086 (not c!1248860)) b!6734089))

(assert (= (and b!6734089 c!1248861) b!6734093))

(assert (= (and b!6734089 (not c!1248861)) b!6734095))

(assert (= (and b!6734095 c!1248863) b!6734085))

(assert (= (and b!6734095 (not c!1248863)) b!6734094))

(assert (= (or b!6734093 b!6734085) bm!608347))

(assert (= (or b!6734093 b!6734085) bm!608345))

(assert (= (or b!6734090 bm!608347) bm!608350))

(assert (= (or b!6734090 bm!608345) bm!608349))

(assert (= (or b!6734088 bm!608349) bm!608348))

(assert (= (or b!6734088 b!6734090) bm!608346))

(declare-fun m!7491926 () Bool)

(assert (=> bm!608348 m!7491926))

(declare-fun m!7491928 () Bool)

(assert (=> b!6734092 m!7491928))

(declare-fun m!7491930 () Bool)

(assert (=> bm!608346 m!7491930))

(declare-fun m!7491932 () Bool)

(assert (=> b!6734087 m!7491932))

(declare-fun m!7491934 () Bool)

(assert (=> bm!608350 m!7491934))

(assert (=> b!6733395 d!2115780))

(declare-fun bm!608351 () Bool)

(declare-fun call!608356 () (InoxSet Context!11890))

(assert (=> bm!608351 (= call!608356 (derivationStepZipperDown!1789 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (h!72306 s!2326)))))

(declare-fun b!6734096 () Bool)

(declare-fun e!4068010 () Bool)

(assert (=> b!6734096 (= e!4068010 (nullable!6548 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))))))

(declare-fun b!6734097 () Bool)

(declare-fun e!4068012 () (InoxSet Context!11890))

(assert (=> b!6734097 (= e!4068012 call!608356)))

(declare-fun e!4068011 () (InoxSet Context!11890))

(declare-fun b!6734098 () Bool)

(assert (=> b!6734098 (= e!4068011 ((_ map or) call!608356 (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (h!72306 s!2326))))))

(declare-fun b!6734099 () Bool)

(assert (=> b!6734099 (= e!4068012 ((as const (Array Context!11890 Bool)) false))))

(declare-fun b!6734100 () Bool)

(assert (=> b!6734100 (= e!4068011 e!4068012)))

(declare-fun c!1248865 () Bool)

(assert (=> b!6734100 (= c!1248865 ((_ is Cons!65859) (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))))))

(declare-fun d!2115782 () Bool)

(declare-fun c!1248864 () Bool)

(assert (=> d!2115782 (= c!1248864 e!4068010)))

(declare-fun res!2754893 () Bool)

(assert (=> d!2115782 (=> (not res!2754893) (not e!4068010))))

(assert (=> d!2115782 (= res!2754893 ((_ is Cons!65859) (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))))))

(assert (=> d!2115782 (= (derivationStepZipperUp!1715 (Context!11891 (Cons!65859 r!7292 Nil!65859)) (h!72306 s!2326)) e!4068011)))

(assert (= (and d!2115782 res!2754893) b!6734096))

(assert (= (and d!2115782 c!1248864) b!6734098))

(assert (= (and d!2115782 (not c!1248864)) b!6734100))

(assert (= (and b!6734100 c!1248865) b!6734097))

(assert (= (and b!6734100 (not c!1248865)) b!6734099))

(assert (= (or b!6734098 b!6734097) bm!608351))

(declare-fun m!7491936 () Bool)

(assert (=> bm!608351 m!7491936))

(declare-fun m!7491938 () Bool)

(assert (=> b!6734096 m!7491938))

(declare-fun m!7491940 () Bool)

(assert (=> b!6734098 m!7491940))

(assert (=> b!6733395 d!2115782))

(declare-fun bs!1790772 () Bool)

(declare-fun d!2115784 () Bool)

(assert (= bs!1790772 (and d!2115784 b!6733405)))

(declare-fun lambda!378089 () Int)

(assert (=> bs!1790772 (= lambda!378089 lambda!378011)))

(declare-fun bs!1790773 () Bool)

(assert (= bs!1790773 (and d!2115784 d!2115778)))

(assert (=> bs!1790773 (= lambda!378089 lambda!378088)))

(assert (=> d!2115784 true))

(assert (=> d!2115784 (= (derivationStepZipper!2505 z!1189 (h!72306 s!2326)) (flatMap!2042 z!1189 lambda!378089))))

(declare-fun bs!1790774 () Bool)

(assert (= bs!1790774 d!2115784))

(declare-fun m!7491942 () Bool)

(assert (=> bs!1790774 m!7491942))

(assert (=> b!6733395 d!2115784))

(declare-fun d!2115786 () Bool)

(declare-fun lt!2438211 () Regex!16561)

(assert (=> d!2115786 (validRegex!8297 lt!2438211)))

(assert (=> d!2115786 (= lt!2438211 (generalisedUnion!2405 (unfocusZipperList!1982 zl!343)))))

(assert (=> d!2115786 (= (unfocusZipper!2303 zl!343) lt!2438211)))

(declare-fun bs!1790775 () Bool)

(assert (= bs!1790775 d!2115786))

(declare-fun m!7491944 () Bool)

(assert (=> bs!1790775 m!7491944))

(assert (=> bs!1790775 m!7491492))

(assert (=> bs!1790775 m!7491492))

(assert (=> bs!1790775 m!7491494))

(assert (=> b!6733414 d!2115786))

(declare-fun d!2115788 () Bool)

(assert (=> d!2115788 (= (flatMap!2042 z!1189 lambda!378011) (choose!50195 z!1189 lambda!378011))))

(declare-fun bs!1790776 () Bool)

(assert (= bs!1790776 d!2115788))

(declare-fun m!7491946 () Bool)

(assert (=> bs!1790776 m!7491946))

(assert (=> b!6733405 d!2115788))

(declare-fun bm!608352 () Bool)

(declare-fun call!608357 () (InoxSet Context!11890))

(assert (=> bm!608352 (= call!608357 (derivationStepZipperDown!1789 (h!72307 (exprs!6445 (h!72308 zl!343))) (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343)))) (h!72306 s!2326)))))

(declare-fun b!6734101 () Bool)

(declare-fun e!4068013 () Bool)

(assert (=> b!6734101 (= e!4068013 (nullable!6548 (h!72307 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun b!6734102 () Bool)

(declare-fun e!4068015 () (InoxSet Context!11890))

(assert (=> b!6734102 (= e!4068015 call!608357)))

(declare-fun e!4068014 () (InoxSet Context!11890))

(declare-fun b!6734103 () Bool)

(assert (=> b!6734103 (= e!4068014 ((_ map or) call!608357 (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343)))) (h!72306 s!2326))))))

(declare-fun b!6734104 () Bool)

(assert (=> b!6734104 (= e!4068015 ((as const (Array Context!11890 Bool)) false))))

(declare-fun b!6734105 () Bool)

(assert (=> b!6734105 (= e!4068014 e!4068015)))

(declare-fun c!1248867 () Bool)

(assert (=> b!6734105 (= c!1248867 ((_ is Cons!65859) (exprs!6445 (h!72308 zl!343))))))

(declare-fun d!2115790 () Bool)

(declare-fun c!1248866 () Bool)

(assert (=> d!2115790 (= c!1248866 e!4068013)))

(declare-fun res!2754894 () Bool)

(assert (=> d!2115790 (=> (not res!2754894) (not e!4068013))))

(assert (=> d!2115790 (= res!2754894 ((_ is Cons!65859) (exprs!6445 (h!72308 zl!343))))))

(assert (=> d!2115790 (= (derivationStepZipperUp!1715 (h!72308 zl!343) (h!72306 s!2326)) e!4068014)))

(assert (= (and d!2115790 res!2754894) b!6734101))

(assert (= (and d!2115790 c!1248866) b!6734103))

(assert (= (and d!2115790 (not c!1248866)) b!6734105))

(assert (= (and b!6734105 c!1248867) b!6734102))

(assert (= (and b!6734105 (not c!1248867)) b!6734104))

(assert (= (or b!6734103 b!6734102) bm!608352))

(declare-fun m!7491948 () Bool)

(assert (=> bm!608352 m!7491948))

(declare-fun m!7491950 () Bool)

(assert (=> b!6734101 m!7491950))

(declare-fun m!7491952 () Bool)

(assert (=> b!6734103 m!7491952))

(assert (=> b!6733405 d!2115790))

(declare-fun d!2115792 () Bool)

(assert (=> d!2115792 (= (flatMap!2042 z!1189 lambda!378011) (dynLambda!26272 lambda!378011 (h!72308 zl!343)))))

(declare-fun lt!2438212 () Unit!159813)

(assert (=> d!2115792 (= lt!2438212 (choose!50196 z!1189 (h!72308 zl!343) lambda!378011))))

(assert (=> d!2115792 (= z!1189 (store ((as const (Array Context!11890 Bool)) false) (h!72308 zl!343) true))))

(assert (=> d!2115792 (= (lemmaFlatMapOnSingletonSet!1568 z!1189 (h!72308 zl!343) lambda!378011) lt!2438212)))

(declare-fun b_lambda!253541 () Bool)

(assert (=> (not b_lambda!253541) (not d!2115792)))

(declare-fun bs!1790777 () Bool)

(assert (= bs!1790777 d!2115792))

(assert (=> bs!1790777 m!7491456))

(declare-fun m!7491954 () Bool)

(assert (=> bs!1790777 m!7491954))

(declare-fun m!7491956 () Bool)

(assert (=> bs!1790777 m!7491956))

(declare-fun m!7491958 () Bool)

(assert (=> bs!1790777 m!7491958))

(assert (=> b!6733405 d!2115792))

(declare-fun b!6734110 () Bool)

(declare-fun e!4068018 () Bool)

(declare-fun tp!1846216 () Bool)

(declare-fun tp!1846217 () Bool)

(assert (=> b!6734110 (= e!4068018 (and tp!1846216 tp!1846217))))

(assert (=> b!6733401 (= tp!1846145 e!4068018)))

(assert (= (and b!6733401 ((_ is Cons!65859) (exprs!6445 (h!72308 zl!343)))) b!6734110))

(declare-fun b!6734121 () Bool)

(declare-fun e!4068021 () Bool)

(assert (=> b!6734121 (= e!4068021 tp_is_empty!42375)))

(assert (=> b!6733398 (= tp!1846144 e!4068021)))

(declare-fun b!6734122 () Bool)

(declare-fun tp!1846232 () Bool)

(declare-fun tp!1846228 () Bool)

(assert (=> b!6734122 (= e!4068021 (and tp!1846232 tp!1846228))))

(declare-fun b!6734124 () Bool)

(declare-fun tp!1846231 () Bool)

(declare-fun tp!1846229 () Bool)

(assert (=> b!6734124 (= e!4068021 (and tp!1846231 tp!1846229))))

(declare-fun b!6734123 () Bool)

(declare-fun tp!1846230 () Bool)

(assert (=> b!6734123 (= e!4068021 tp!1846230)))

(assert (= (and b!6733398 ((_ is ElementMatch!16561) (reg!16890 r!7292))) b!6734121))

(assert (= (and b!6733398 ((_ is Concat!25406) (reg!16890 r!7292))) b!6734122))

(assert (= (and b!6733398 ((_ is Star!16561) (reg!16890 r!7292))) b!6734123))

(assert (= (and b!6733398 ((_ is Union!16561) (reg!16890 r!7292))) b!6734124))

(declare-fun condSetEmpty!45949 () Bool)

(assert (=> setNonEmpty!45943 (= condSetEmpty!45949 (= setRest!45943 ((as const (Array Context!11890 Bool)) false)))))

(declare-fun setRes!45949 () Bool)

(assert (=> setNonEmpty!45943 (= tp!1846153 setRes!45949)))

(declare-fun setIsEmpty!45949 () Bool)

(assert (=> setIsEmpty!45949 setRes!45949))

(declare-fun setNonEmpty!45949 () Bool)

(declare-fun e!4068024 () Bool)

(declare-fun setElem!45949 () Context!11890)

(declare-fun tp!1846238 () Bool)

(assert (=> setNonEmpty!45949 (= setRes!45949 (and tp!1846238 (inv!84649 setElem!45949) e!4068024))))

(declare-fun setRest!45949 () (InoxSet Context!11890))

(assert (=> setNonEmpty!45949 (= setRest!45943 ((_ map or) (store ((as const (Array Context!11890 Bool)) false) setElem!45949 true) setRest!45949))))

(declare-fun b!6734129 () Bool)

(declare-fun tp!1846237 () Bool)

(assert (=> b!6734129 (= e!4068024 tp!1846237)))

(assert (= (and setNonEmpty!45943 condSetEmpty!45949) setIsEmpty!45949))

(assert (= (and setNonEmpty!45943 (not condSetEmpty!45949)) setNonEmpty!45949))

(assert (= setNonEmpty!45949 b!6734129))

(declare-fun m!7491960 () Bool)

(assert (=> setNonEmpty!45949 m!7491960))

(declare-fun b!6734134 () Bool)

(declare-fun e!4068027 () Bool)

(declare-fun tp!1846241 () Bool)

(assert (=> b!6734134 (= e!4068027 (and tp_is_empty!42375 tp!1846241))))

(assert (=> b!6733397 (= tp!1846148 e!4068027)))

(assert (= (and b!6733397 ((_ is Cons!65858) (t!379673 s!2326))) b!6734134))

(declare-fun b!6734135 () Bool)

(declare-fun e!4068028 () Bool)

(assert (=> b!6734135 (= e!4068028 tp_is_empty!42375)))

(assert (=> b!6733413 (= tp!1846152 e!4068028)))

(declare-fun b!6734136 () Bool)

(declare-fun tp!1846246 () Bool)

(declare-fun tp!1846242 () Bool)

(assert (=> b!6734136 (= e!4068028 (and tp!1846246 tp!1846242))))

(declare-fun b!6734138 () Bool)

(declare-fun tp!1846245 () Bool)

(declare-fun tp!1846243 () Bool)

(assert (=> b!6734138 (= e!4068028 (and tp!1846245 tp!1846243))))

(declare-fun b!6734137 () Bool)

(declare-fun tp!1846244 () Bool)

(assert (=> b!6734137 (= e!4068028 tp!1846244)))

(assert (= (and b!6733413 ((_ is ElementMatch!16561) (regOne!33635 r!7292))) b!6734135))

(assert (= (and b!6733413 ((_ is Concat!25406) (regOne!33635 r!7292))) b!6734136))

(assert (= (and b!6733413 ((_ is Star!16561) (regOne!33635 r!7292))) b!6734137))

(assert (= (and b!6733413 ((_ is Union!16561) (regOne!33635 r!7292))) b!6734138))

(declare-fun b!6734139 () Bool)

(declare-fun e!4068029 () Bool)

(assert (=> b!6734139 (= e!4068029 tp_is_empty!42375)))

(assert (=> b!6733413 (= tp!1846147 e!4068029)))

(declare-fun b!6734140 () Bool)

(declare-fun tp!1846251 () Bool)

(declare-fun tp!1846247 () Bool)

(assert (=> b!6734140 (= e!4068029 (and tp!1846251 tp!1846247))))

(declare-fun b!6734142 () Bool)

(declare-fun tp!1846250 () Bool)

(declare-fun tp!1846248 () Bool)

(assert (=> b!6734142 (= e!4068029 (and tp!1846250 tp!1846248))))

(declare-fun b!6734141 () Bool)

(declare-fun tp!1846249 () Bool)

(assert (=> b!6734141 (= e!4068029 tp!1846249)))

(assert (= (and b!6733413 ((_ is ElementMatch!16561) (regTwo!33635 r!7292))) b!6734139))

(assert (= (and b!6733413 ((_ is Concat!25406) (regTwo!33635 r!7292))) b!6734140))

(assert (= (and b!6733413 ((_ is Star!16561) (regTwo!33635 r!7292))) b!6734141))

(assert (= (and b!6733413 ((_ is Union!16561) (regTwo!33635 r!7292))) b!6734142))

(declare-fun b!6734150 () Bool)

(declare-fun e!4068035 () Bool)

(declare-fun tp!1846256 () Bool)

(assert (=> b!6734150 (= e!4068035 tp!1846256)))

(declare-fun e!4068034 () Bool)

(declare-fun tp!1846257 () Bool)

(declare-fun b!6734149 () Bool)

(assert (=> b!6734149 (= e!4068034 (and (inv!84649 (h!72308 (t!379675 zl!343))) e!4068035 tp!1846257))))

(assert (=> b!6733408 (= tp!1846150 e!4068034)))

(assert (= b!6734149 b!6734150))

(assert (= (and b!6733408 ((_ is Cons!65860) (t!379675 zl!343))) b!6734149))

(declare-fun m!7491962 () Bool)

(assert (=> b!6734149 m!7491962))

(declare-fun b!6734151 () Bool)

(declare-fun e!4068036 () Bool)

(declare-fun tp!1846258 () Bool)

(declare-fun tp!1846259 () Bool)

(assert (=> b!6734151 (= e!4068036 (and tp!1846258 tp!1846259))))

(assert (=> b!6733406 (= tp!1846149 e!4068036)))

(assert (= (and b!6733406 ((_ is Cons!65859) (exprs!6445 setElem!45943))) b!6734151))

(declare-fun b!6734152 () Bool)

(declare-fun e!4068037 () Bool)

(assert (=> b!6734152 (= e!4068037 tp_is_empty!42375)))

(assert (=> b!6733410 (= tp!1846151 e!4068037)))

(declare-fun b!6734153 () Bool)

(declare-fun tp!1846264 () Bool)

(declare-fun tp!1846260 () Bool)

(assert (=> b!6734153 (= e!4068037 (and tp!1846264 tp!1846260))))

(declare-fun b!6734155 () Bool)

(declare-fun tp!1846263 () Bool)

(declare-fun tp!1846261 () Bool)

(assert (=> b!6734155 (= e!4068037 (and tp!1846263 tp!1846261))))

(declare-fun b!6734154 () Bool)

(declare-fun tp!1846262 () Bool)

(assert (=> b!6734154 (= e!4068037 tp!1846262)))

(assert (= (and b!6733410 ((_ is ElementMatch!16561) (regOne!33634 r!7292))) b!6734152))

(assert (= (and b!6733410 ((_ is Concat!25406) (regOne!33634 r!7292))) b!6734153))

(assert (= (and b!6733410 ((_ is Star!16561) (regOne!33634 r!7292))) b!6734154))

(assert (= (and b!6733410 ((_ is Union!16561) (regOne!33634 r!7292))) b!6734155))

(declare-fun b!6734156 () Bool)

(declare-fun e!4068038 () Bool)

(assert (=> b!6734156 (= e!4068038 tp_is_empty!42375)))

(assert (=> b!6733410 (= tp!1846146 e!4068038)))

(declare-fun b!6734157 () Bool)

(declare-fun tp!1846269 () Bool)

(declare-fun tp!1846265 () Bool)

(assert (=> b!6734157 (= e!4068038 (and tp!1846269 tp!1846265))))

(declare-fun b!6734159 () Bool)

(declare-fun tp!1846268 () Bool)

(declare-fun tp!1846266 () Bool)

(assert (=> b!6734159 (= e!4068038 (and tp!1846268 tp!1846266))))

(declare-fun b!6734158 () Bool)

(declare-fun tp!1846267 () Bool)

(assert (=> b!6734158 (= e!4068038 tp!1846267)))

(assert (= (and b!6733410 ((_ is ElementMatch!16561) (regTwo!33634 r!7292))) b!6734156))

(assert (= (and b!6733410 ((_ is Concat!25406) (regTwo!33634 r!7292))) b!6734157))

(assert (= (and b!6733410 ((_ is Star!16561) (regTwo!33634 r!7292))) b!6734158))

(assert (= (and b!6733410 ((_ is Union!16561) (regTwo!33634 r!7292))) b!6734159))

(declare-fun b_lambda!253543 () Bool)

(assert (= b_lambda!253541 (or b!6733405 b_lambda!253543)))

(declare-fun bs!1790778 () Bool)

(declare-fun d!2115794 () Bool)

(assert (= bs!1790778 (and d!2115794 b!6733405)))

(assert (=> bs!1790778 (= (dynLambda!26272 lambda!378011 (h!72308 zl!343)) (derivationStepZipperUp!1715 (h!72308 zl!343) (h!72306 s!2326)))))

(assert (=> bs!1790778 m!7491458))

(assert (=> d!2115792 d!2115794))

(declare-fun b_lambda!253545 () Bool)

(assert (= b_lambda!253539 (or b!6733405 b_lambda!253545)))

(declare-fun bs!1790779 () Bool)

(declare-fun d!2115796 () Bool)

(assert (= bs!1790779 (and d!2115796 b!6733405)))

(assert (=> bs!1790779 (= (dynLambda!26272 lambda!378011 lt!2438117) (derivationStepZipperUp!1715 lt!2438117 (h!72306 s!2326)))))

(assert (=> bs!1790779 m!7491520))

(assert (=> d!2115772 d!2115796))

(check-sat (not d!2115704) (not b!6733954) (not b!6734070) (not b!6734141) (not b!6734151) (not b_lambda!253543) (not b!6734140) (not d!2115690) (not b!6733981) (not bm!608322) (not b!6733951) (not d!2115742) (not b_lambda!253545) (not b!6733915) (not bm!608341) (not d!2115728) (not d!2115716) (not b!6733916) (not b!6734137) (not b!6734079) (not d!2115674) (not bm!608350) (not b!6734029) (not b!6733952) (not d!2115718) (not d!2115792) (not b!6734124) (not b!6734154) (not b!6733921) (not d!2115744) (not b!6734158) (not b!6734142) (not b!6734080) (not b!6733618) (not b!6734096) (not b!6734110) (not bm!608292) (not d!2115776) (not bm!608325) (not b!6733731) (not b!6733953) (not setNonEmpty!45949) (not b!6733919) (not bm!608312) (not b!6733734) (not d!2115772) (not bs!1790779) (not b!6733727) (not bm!608344) (not d!2115750) (not b!6734087) tp_is_empty!42375 (not b!6733948) (not b!6733914) (not b!6734016) (not d!2115712) (not d!2115748) (not b!6734036) (not d!2115696) (not b!6733983) (not b!6734103) (not b!6734098) (not b!6734136) (not b!6734101) (not bm!608293) (not d!2115740) (not bm!608348) (not bm!608320) (not b!6733984) (not b!6733918) (not d!2115756) (not b!6734149) (not d!2115752) (not b!6734122) (not bs!1790778) (not bm!608352) (not b!6734155) (not b!6733985) (not b!6733976) (not b!6734138) (not b!6733979) (not b!6733732) (not d!2115764) (not b!6733950) (not b!6734123) (not b!6734159) (not d!2115768) (not b!6734072) (not bm!608351) (not b!6734150) (not b!6734031) (not b!6734134) (not d!2115758) (not b!6733730) (not d!2115778) (not bm!608346) (not d!2115784) (not b!6733617) (not b!6733982) (not d!2115786) (not b!6734157) (not d!2115746) (not b!6733738) (not b!6734081) (not d!2115788) (not bm!608339) (not b!6734153) (not b!6734061) (not b!6734129) (not b!6733990) (not b!6734082) (not bm!608343) (not d!2115774) (not b!6733949))
(check-sat)
(get-model)

(declare-fun bm!608361 () Bool)

(declare-fun call!608366 () (InoxSet Context!11890))

(assert (=> bm!608361 (= call!608366 (derivationStepZipperDown!1789 (h!72307 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))))) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))))))) (h!72306 s!2326)))))

(declare-fun b!6734214 () Bool)

(declare-fun e!4068072 () Bool)

(assert (=> b!6734214 (= e!4068072 (nullable!6548 (h!72307 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))))))))))

(declare-fun b!6734215 () Bool)

(declare-fun e!4068074 () (InoxSet Context!11890))

(assert (=> b!6734215 (= e!4068074 call!608366)))

(declare-fun e!4068073 () (InoxSet Context!11890))

(declare-fun b!6734216 () Bool)

(assert (=> b!6734216 (= e!4068073 ((_ map or) call!608366 (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))))))) (h!72306 s!2326))))))

(declare-fun b!6734217 () Bool)

(assert (=> b!6734217 (= e!4068074 ((as const (Array Context!11890 Bool)) false))))

(declare-fun b!6734218 () Bool)

(assert (=> b!6734218 (= e!4068073 e!4068074)))

(declare-fun c!1248884 () Bool)

(assert (=> b!6734218 (= c!1248884 ((_ is Cons!65859) (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))))))))

(declare-fun d!2115834 () Bool)

(declare-fun c!1248883 () Bool)

(assert (=> d!2115834 (= c!1248883 e!4068072)))

(declare-fun res!2754922 () Bool)

(assert (=> d!2115834 (=> (not res!2754922) (not e!4068072))))

(assert (=> d!2115834 (= res!2754922 ((_ is Cons!65859) (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))))))))

(assert (=> d!2115834 (= (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (h!72306 s!2326)) e!4068073)))

(assert (= (and d!2115834 res!2754922) b!6734214))

(assert (= (and d!2115834 c!1248883) b!6734216))

(assert (= (and d!2115834 (not c!1248883)) b!6734218))

(assert (= (and b!6734218 c!1248884) b!6734215))

(assert (= (and b!6734218 (not c!1248884)) b!6734217))

(assert (= (or b!6734216 b!6734215) bm!608361))

(declare-fun m!7492050 () Bool)

(assert (=> bm!608361 m!7492050))

(declare-fun m!7492052 () Bool)

(assert (=> b!6734214 m!7492052))

(declare-fun m!7492054 () Bool)

(assert (=> b!6734216 m!7492054))

(assert (=> b!6734098 d!2115834))

(declare-fun d!2115838 () Bool)

(declare-fun res!2754935 () Bool)

(declare-fun e!4068086 () Bool)

(assert (=> d!2115838 (=> res!2754935 e!4068086)))

(assert (=> d!2115838 (= res!2754935 ((_ is Nil!65859) (exprs!6445 setElem!45943)))))

(assert (=> d!2115838 (= (forall!15761 (exprs!6445 setElem!45943) lambda!378077) e!4068086)))

(declare-fun b!6734237 () Bool)

(declare-fun e!4068087 () Bool)

(assert (=> b!6734237 (= e!4068086 e!4068087)))

(declare-fun res!2754936 () Bool)

(assert (=> b!6734237 (=> (not res!2754936) (not e!4068087))))

(declare-fun dynLambda!26274 (Int Regex!16561) Bool)

(assert (=> b!6734237 (= res!2754936 (dynLambda!26274 lambda!378077 (h!72307 (exprs!6445 setElem!45943))))))

(declare-fun b!6734238 () Bool)

(assert (=> b!6734238 (= e!4068087 (forall!15761 (t!379674 (exprs!6445 setElem!45943)) lambda!378077))))

(assert (= (and d!2115838 (not res!2754935)) b!6734237))

(assert (= (and b!6734237 res!2754936) b!6734238))

(declare-fun b_lambda!253551 () Bool)

(assert (=> (not b_lambda!253551) (not b!6734237)))

(declare-fun m!7492070 () Bool)

(assert (=> b!6734237 m!7492070))

(declare-fun m!7492072 () Bool)

(assert (=> b!6734238 m!7492072))

(assert (=> d!2115746 d!2115838))

(declare-fun d!2115848 () Bool)

(declare-fun res!2754942 () Bool)

(declare-fun e!4068099 () Bool)

(assert (=> d!2115848 (=> res!2754942 e!4068099)))

(assert (=> d!2115848 (= res!2754942 ((_ is Nil!65860) lt!2438207))))

(assert (=> d!2115848 (= (noDuplicate!2354 lt!2438207) e!4068099)))

(declare-fun b!6734256 () Bool)

(declare-fun e!4068100 () Bool)

(assert (=> b!6734256 (= e!4068099 e!4068100)))

(declare-fun res!2754943 () Bool)

(assert (=> b!6734256 (=> (not res!2754943) (not e!4068100))))

(declare-fun contains!20258 (List!65984 Context!11890) Bool)

(assert (=> b!6734256 (= res!2754943 (not (contains!20258 (t!379675 lt!2438207) (h!72308 lt!2438207))))))

(declare-fun b!6734257 () Bool)

(assert (=> b!6734257 (= e!4068100 (noDuplicate!2354 (t!379675 lt!2438207)))))

(assert (= (and d!2115848 (not res!2754942)) b!6734256))

(assert (= (and b!6734256 res!2754943) b!6734257))

(declare-fun m!7492094 () Bool)

(assert (=> b!6734256 m!7492094))

(declare-fun m!7492098 () Bool)

(assert (=> b!6734257 m!7492098))

(assert (=> d!2115764 d!2115848))

(declare-fun d!2115854 () Bool)

(declare-fun e!4068121 () Bool)

(assert (=> d!2115854 e!4068121))

(declare-fun res!2754954 () Bool)

(assert (=> d!2115854 (=> (not res!2754954) (not e!4068121))))

(declare-fun res!2754955 () List!65984)

(assert (=> d!2115854 (= res!2754954 (noDuplicate!2354 res!2754955))))

(declare-fun e!4068120 () Bool)

(assert (=> d!2115854 e!4068120))

(assert (=> d!2115854 (= (choose!50194 z!1189) res!2754955)))

(declare-fun b!6734285 () Bool)

(declare-fun e!4068122 () Bool)

(declare-fun tp!1846274 () Bool)

(assert (=> b!6734285 (= e!4068122 tp!1846274)))

(declare-fun b!6734284 () Bool)

(declare-fun tp!1846275 () Bool)

(assert (=> b!6734284 (= e!4068120 (and (inv!84649 (h!72308 res!2754955)) e!4068122 tp!1846275))))

(declare-fun b!6734286 () Bool)

(assert (=> b!6734286 (= e!4068121 (= (content!12791 res!2754955) z!1189))))

(assert (= b!6734284 b!6734285))

(assert (= (and d!2115854 ((_ is Cons!65860) res!2754955)) b!6734284))

(assert (= (and d!2115854 res!2754954) b!6734286))

(declare-fun m!7492110 () Bool)

(assert (=> d!2115854 m!7492110))

(declare-fun m!7492112 () Bool)

(assert (=> b!6734284 m!7492112))

(declare-fun m!7492114 () Bool)

(assert (=> b!6734286 m!7492114))

(assert (=> d!2115764 d!2115854))

(declare-fun bs!1790788 () Bool)

(declare-fun d!2115862 () Bool)

(assert (= bs!1790788 (and d!2115862 d!2115750)))

(declare-fun lambda!378091 () Int)

(assert (=> bs!1790788 (= lambda!378091 lambda!378083)))

(declare-fun bs!1790789 () Bool)

(assert (= bs!1790789 (and d!2115862 d!2115744)))

(assert (=> bs!1790789 (= lambda!378091 lambda!378074)))

(declare-fun bs!1790791 () Bool)

(assert (= bs!1790791 (and d!2115862 d!2115756)))

(assert (=> bs!1790791 (= lambda!378091 lambda!378084)))

(declare-fun bs!1790792 () Bool)

(assert (= bs!1790792 (and d!2115862 d!2115758)))

(assert (=> bs!1790792 (= lambda!378091 lambda!378085)))

(declare-fun bs!1790794 () Bool)

(assert (= bs!1790794 (and d!2115862 d!2115748)))

(assert (=> bs!1790794 (= lambda!378091 lambda!378080)))

(declare-fun bs!1790796 () Bool)

(assert (= bs!1790796 (and d!2115862 d!2115746)))

(assert (=> bs!1790796 (= lambda!378091 lambda!378077)))

(assert (=> d!2115862 (= (inv!84649 setElem!45949) (forall!15761 (exprs!6445 setElem!45949) lambda!378091))))

(declare-fun bs!1790800 () Bool)

(assert (= bs!1790800 d!2115862))

(declare-fun m!7492122 () Bool)

(assert (=> bs!1790800 m!7492122))

(assert (=> setNonEmpty!45949 d!2115862))

(declare-fun bs!1790801 () Bool)

(declare-fun b!6734297 () Bool)

(assert (= bs!1790801 (and b!6734297 b!6733613)))

(declare-fun lambda!378093 () Int)

(assert (=> bs!1790801 (= (and (= (reg!16890 (regOne!33635 r!7292)) (reg!16890 r!7292)) (= (regOne!33635 r!7292) r!7292)) (= lambda!378093 lambda!378029))))

(declare-fun bs!1790802 () Bool)

(assert (= bs!1790802 (and b!6734297 b!6733407)))

(assert (=> bs!1790802 (= (and (= (reg!16890 (regOne!33635 r!7292)) (reg!16890 r!7292)) (= (regOne!33635 r!7292) r!7292)) (= lambda!378093 lambda!378009))))

(assert (=> bs!1790802 (not (= lambda!378093 lambda!378010))))

(declare-fun bs!1790806 () Bool)

(assert (= bs!1790806 (and b!6734297 d!2115718)))

(assert (=> bs!1790806 (not (= lambda!378093 lambda!378062))))

(assert (=> bs!1790806 (not (= lambda!378093 lambda!378063))))

(declare-fun bs!1790810 () Bool)

(assert (= bs!1790810 (and b!6734297 d!2115704)))

(assert (=> bs!1790810 (not (= lambda!378093 lambda!378052))))

(assert (=> bs!1790810 (= (and (= (reg!16890 (regOne!33635 r!7292)) (reg!16890 r!7292)) (= (regOne!33635 r!7292) (Star!16561 (reg!16890 r!7292)))) (= lambda!378093 lambda!378055))))

(assert (=> bs!1790802 (not (= lambda!378093 lambda!378008))))

(declare-fun bs!1790812 () Bool)

(assert (= bs!1790812 (and b!6734297 b!6733620)))

(assert (=> bs!1790812 (not (= lambda!378093 lambda!378030))))

(declare-fun bs!1790813 () Bool)

(assert (= bs!1790813 (and b!6734297 d!2115742)))

(assert (=> bs!1790813 (not (= lambda!378093 lambda!378071))))

(assert (=> b!6734297 true))

(assert (=> b!6734297 true))

(declare-fun bs!1790820 () Bool)

(declare-fun b!6734304 () Bool)

(assert (= bs!1790820 (and b!6734304 b!6733613)))

(declare-fun lambda!378096 () Int)

(assert (=> bs!1790820 (not (= lambda!378096 lambda!378029))))

(declare-fun bs!1790823 () Bool)

(assert (= bs!1790823 (and b!6734304 b!6734297)))

(assert (=> bs!1790823 (not (= lambda!378096 lambda!378093))))

(declare-fun bs!1790825 () Bool)

(assert (= bs!1790825 (and b!6734304 b!6733407)))

(assert (=> bs!1790825 (not (= lambda!378096 lambda!378009))))

(assert (=> bs!1790825 (= (and (= (regOne!33634 (regOne!33635 r!7292)) (reg!16890 r!7292)) (= (regTwo!33634 (regOne!33635 r!7292)) r!7292)) (= lambda!378096 lambda!378010))))

(declare-fun bs!1790826 () Bool)

(assert (= bs!1790826 (and b!6734304 d!2115718)))

(assert (=> bs!1790826 (not (= lambda!378096 lambda!378062))))

(assert (=> bs!1790826 (= (and (= (regOne!33634 (regOne!33635 r!7292)) (reg!16890 r!7292)) (= (regTwo!33634 (regOne!33635 r!7292)) r!7292)) (= lambda!378096 lambda!378063))))

(declare-fun bs!1790827 () Bool)

(assert (= bs!1790827 (and b!6734304 d!2115704)))

(assert (=> bs!1790827 (not (= lambda!378096 lambda!378052))))

(assert (=> bs!1790827 (not (= lambda!378096 lambda!378055))))

(assert (=> bs!1790825 (not (= lambda!378096 lambda!378008))))

(declare-fun bs!1790828 () Bool)

(assert (= bs!1790828 (and b!6734304 b!6733620)))

(assert (=> bs!1790828 (= (and (= (regOne!33634 (regOne!33635 r!7292)) (regOne!33634 r!7292)) (= (regTwo!33634 (regOne!33635 r!7292)) (regTwo!33634 r!7292))) (= lambda!378096 lambda!378030))))

(declare-fun bs!1790829 () Bool)

(assert (= bs!1790829 (and b!6734304 d!2115742)))

(assert (=> bs!1790829 (not (= lambda!378096 lambda!378071))))

(assert (=> b!6734304 true))

(assert (=> b!6734304 true))

(declare-fun d!2115866 () Bool)

(declare-fun c!1248906 () Bool)

(assert (=> d!2115866 (= c!1248906 ((_ is EmptyExpr!16561) (regOne!33635 r!7292)))))

(declare-fun e!4068134 () Bool)

(assert (=> d!2115866 (= (matchRSpec!3662 (regOne!33635 r!7292) s!2326) e!4068134)))

(declare-fun e!4068130 () Bool)

(declare-fun call!608384 () Bool)

(assert (=> b!6734297 (= e!4068130 call!608384)))

(declare-fun b!6734298 () Bool)

(declare-fun e!4068135 () Bool)

(assert (=> b!6734298 (= e!4068135 (= s!2326 (Cons!65858 (c!1248671 (regOne!33635 r!7292)) Nil!65858)))))

(declare-fun b!6734299 () Bool)

(declare-fun c!1248905 () Bool)

(assert (=> b!6734299 (= c!1248905 ((_ is Union!16561) (regOne!33635 r!7292)))))

(declare-fun e!4068133 () Bool)

(assert (=> b!6734299 (= e!4068135 e!4068133)))

(declare-fun bm!608378 () Bool)

(declare-fun call!608383 () Bool)

(assert (=> bm!608378 (= call!608383 (isEmpty!38193 s!2326))))

(declare-fun b!6734300 () Bool)

(declare-fun e!4068132 () Bool)

(assert (=> b!6734300 (= e!4068133 e!4068132)))

(declare-fun c!1248907 () Bool)

(assert (=> b!6734300 (= c!1248907 ((_ is Star!16561) (regOne!33635 r!7292)))))

(declare-fun b!6734301 () Bool)

(declare-fun e!4068131 () Bool)

(assert (=> b!6734301 (= e!4068131 (matchRSpec!3662 (regTwo!33635 (regOne!33635 r!7292)) s!2326))))

(declare-fun b!6734302 () Bool)

(assert (=> b!6734302 (= e!4068133 e!4068131)))

(declare-fun res!2754958 () Bool)

(assert (=> b!6734302 (= res!2754958 (matchRSpec!3662 (regOne!33635 (regOne!33635 r!7292)) s!2326))))

(assert (=> b!6734302 (=> res!2754958 e!4068131)))

(declare-fun b!6734303 () Bool)

(declare-fun c!1248908 () Bool)

(assert (=> b!6734303 (= c!1248908 ((_ is ElementMatch!16561) (regOne!33635 r!7292)))))

(declare-fun e!4068129 () Bool)

(assert (=> b!6734303 (= e!4068129 e!4068135)))

(assert (=> b!6734304 (= e!4068132 call!608384)))

(declare-fun b!6734305 () Bool)

(assert (=> b!6734305 (= e!4068134 e!4068129)))

(declare-fun res!2754959 () Bool)

(assert (=> b!6734305 (= res!2754959 (not ((_ is EmptyLang!16561) (regOne!33635 r!7292))))))

(assert (=> b!6734305 (=> (not res!2754959) (not e!4068129))))

(declare-fun b!6734306 () Bool)

(declare-fun res!2754960 () Bool)

(assert (=> b!6734306 (=> res!2754960 e!4068130)))

(assert (=> b!6734306 (= res!2754960 call!608383)))

(assert (=> b!6734306 (= e!4068132 e!4068130)))

(declare-fun b!6734307 () Bool)

(assert (=> b!6734307 (= e!4068134 call!608383)))

(declare-fun bm!608379 () Bool)

(assert (=> bm!608379 (= call!608384 (Exists!3629 (ite c!1248907 lambda!378093 lambda!378096)))))

(assert (= (and d!2115866 c!1248906) b!6734307))

(assert (= (and d!2115866 (not c!1248906)) b!6734305))

(assert (= (and b!6734305 res!2754959) b!6734303))

(assert (= (and b!6734303 c!1248908) b!6734298))

(assert (= (and b!6734303 (not c!1248908)) b!6734299))

(assert (= (and b!6734299 c!1248905) b!6734302))

(assert (= (and b!6734299 (not c!1248905)) b!6734300))

(assert (= (and b!6734302 (not res!2754958)) b!6734301))

(assert (= (and b!6734300 c!1248907) b!6734306))

(assert (= (and b!6734300 (not c!1248907)) b!6734304))

(assert (= (and b!6734306 (not res!2754960)) b!6734297))

(assert (= (or b!6734297 b!6734304) bm!608379))

(assert (= (or b!6734307 b!6734306) bm!608378))

(assert (=> bm!608378 m!7491474))

(declare-fun m!7492172 () Bool)

(assert (=> b!6734301 m!7492172))

(declare-fun m!7492174 () Bool)

(assert (=> b!6734302 m!7492174))

(declare-fun m!7492176 () Bool)

(assert (=> bm!608379 m!7492176))

(assert (=> b!6733618 d!2115866))

(assert (=> d!2115742 d!2115696))

(declare-fun bs!1790843 () Bool)

(declare-fun d!2115878 () Bool)

(assert (= bs!1790843 (and d!2115878 b!6733613)))

(declare-fun lambda!378103 () Int)

(assert (=> bs!1790843 (not (= lambda!378103 lambda!378029))))

(declare-fun bs!1790845 () Bool)

(assert (= bs!1790845 (and d!2115878 b!6734297)))

(assert (=> bs!1790845 (not (= lambda!378103 lambda!378093))))

(declare-fun bs!1790846 () Bool)

(assert (= bs!1790846 (and d!2115878 b!6733407)))

(assert (=> bs!1790846 (not (= lambda!378103 lambda!378009))))

(assert (=> bs!1790846 (not (= lambda!378103 lambda!378010))))

(declare-fun bs!1790847 () Bool)

(assert (= bs!1790847 (and d!2115878 d!2115718)))

(assert (=> bs!1790847 (= lambda!378103 lambda!378062)))

(assert (=> bs!1790847 (not (= lambda!378103 lambda!378063))))

(declare-fun bs!1790848 () Bool)

(assert (= bs!1790848 (and d!2115878 d!2115704)))

(assert (=> bs!1790848 (= (= r!7292 (Star!16561 (reg!16890 r!7292))) (= lambda!378103 lambda!378052))))

(declare-fun bs!1790849 () Bool)

(assert (= bs!1790849 (and d!2115878 b!6734304)))

(assert (=> bs!1790849 (not (= lambda!378103 lambda!378096))))

(assert (=> bs!1790848 (not (= lambda!378103 lambda!378055))))

(assert (=> bs!1790846 (= lambda!378103 lambda!378008)))

(declare-fun bs!1790850 () Bool)

(assert (= bs!1790850 (and d!2115878 b!6733620)))

(assert (=> bs!1790850 (not (= lambda!378103 lambda!378030))))

(declare-fun bs!1790851 () Bool)

(assert (= bs!1790851 (and d!2115878 d!2115742)))

(assert (=> bs!1790851 (= lambda!378103 lambda!378071)))

(assert (=> d!2115878 true))

(assert (=> d!2115878 true))

(assert (=> d!2115878 true))

(assert (=> d!2115878 (= (isDefined!13151 (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 Nil!65858 s!2326 s!2326)) (Exists!3629 lambda!378103))))

(assert (=> d!2115878 true))

(declare-fun _$89!2959 () Unit!159813)

(assert (=> d!2115878 (= (choose!50193 (reg!16890 r!7292) r!7292 s!2326) _$89!2959)))

(declare-fun bs!1790852 () Bool)

(assert (= bs!1790852 d!2115878))

(assert (=> bs!1790852 m!7491484))

(assert (=> bs!1790852 m!7491484))

(assert (=> bs!1790852 m!7491486))

(declare-fun m!7492230 () Bool)

(assert (=> bs!1790852 m!7492230))

(assert (=> d!2115742 d!2115878))

(declare-fun d!2115900 () Bool)

(assert (=> d!2115900 (= (Exists!3629 lambda!378071) (choose!50191 lambda!378071))))

(declare-fun bs!1790853 () Bool)

(assert (= bs!1790853 d!2115900))

(declare-fun m!7492232 () Bool)

(assert (=> bs!1790853 m!7492232))

(assert (=> d!2115742 d!2115900))

(assert (=> d!2115742 d!2115728))

(declare-fun b!6734373 () Bool)

(declare-fun res!2754994 () Bool)

(declare-fun e!4068178 () Bool)

(assert (=> b!6734373 (=> res!2754994 e!4068178)))

(assert (=> b!6734373 (= res!2754994 (not ((_ is Concat!25406) (reg!16890 r!7292))))))

(declare-fun e!4068177 () Bool)

(assert (=> b!6734373 (= e!4068177 e!4068178)))

(declare-fun b!6734374 () Bool)

(declare-fun e!4068183 () Bool)

(assert (=> b!6734374 (= e!4068183 e!4068177)))

(declare-fun c!1248929 () Bool)

(assert (=> b!6734374 (= c!1248929 ((_ is Union!16561) (reg!16890 r!7292)))))

(declare-fun c!1248930 () Bool)

(declare-fun bm!608388 () Bool)

(declare-fun call!608393 () Bool)

(assert (=> bm!608388 (= call!608393 (validRegex!8297 (ite c!1248930 (reg!16890 (reg!16890 r!7292)) (ite c!1248929 (regTwo!33635 (reg!16890 r!7292)) (regTwo!33634 (reg!16890 r!7292))))))))

(declare-fun b!6734375 () Bool)

(declare-fun e!4068180 () Bool)

(assert (=> b!6734375 (= e!4068180 call!608393)))

(declare-fun b!6734376 () Bool)

(declare-fun e!4068182 () Bool)

(declare-fun call!608395 () Bool)

(assert (=> b!6734376 (= e!4068182 call!608395)))

(declare-fun b!6734378 () Bool)

(declare-fun e!4068179 () Bool)

(assert (=> b!6734378 (= e!4068179 call!608395)))

(declare-fun b!6734379 () Bool)

(assert (=> b!6734379 (= e!4068183 e!4068180)))

(declare-fun res!2754993 () Bool)

(assert (=> b!6734379 (= res!2754993 (not (nullable!6548 (reg!16890 (reg!16890 r!7292)))))))

(assert (=> b!6734379 (=> (not res!2754993) (not e!4068180))))

(declare-fun b!6734380 () Bool)

(assert (=> b!6734380 (= e!4068178 e!4068179)))

(declare-fun res!2754991 () Bool)

(assert (=> b!6734380 (=> (not res!2754991) (not e!4068179))))

(declare-fun call!608394 () Bool)

(assert (=> b!6734380 (= res!2754991 call!608394)))

(declare-fun bm!608389 () Bool)

(assert (=> bm!608389 (= call!608395 call!608393)))

(declare-fun bm!608390 () Bool)

(assert (=> bm!608390 (= call!608394 (validRegex!8297 (ite c!1248929 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))))))

(declare-fun b!6734381 () Bool)

(declare-fun e!4068181 () Bool)

(assert (=> b!6734381 (= e!4068181 e!4068183)))

(assert (=> b!6734381 (= c!1248930 ((_ is Star!16561) (reg!16890 r!7292)))))

(declare-fun d!2115902 () Bool)

(declare-fun res!2754990 () Bool)

(assert (=> d!2115902 (=> res!2754990 e!4068181)))

(assert (=> d!2115902 (= res!2754990 ((_ is ElementMatch!16561) (reg!16890 r!7292)))))

(assert (=> d!2115902 (= (validRegex!8297 (reg!16890 r!7292)) e!4068181)))

(declare-fun b!6734377 () Bool)

(declare-fun res!2754992 () Bool)

(assert (=> b!6734377 (=> (not res!2754992) (not e!4068182))))

(assert (=> b!6734377 (= res!2754992 call!608394)))

(assert (=> b!6734377 (= e!4068177 e!4068182)))

(assert (= (and d!2115902 (not res!2754990)) b!6734381))

(assert (= (and b!6734381 c!1248930) b!6734379))

(assert (= (and b!6734381 (not c!1248930)) b!6734374))

(assert (= (and b!6734379 res!2754993) b!6734375))

(assert (= (and b!6734374 c!1248929) b!6734377))

(assert (= (and b!6734374 (not c!1248929)) b!6734373))

(assert (= (and b!6734377 res!2754992) b!6734376))

(assert (= (and b!6734373 (not res!2754994)) b!6734380))

(assert (= (and b!6734380 res!2754991) b!6734378))

(assert (= (or b!6734376 b!6734378) bm!608389))

(assert (= (or b!6734377 b!6734380) bm!608390))

(assert (= (or b!6734375 bm!608389) bm!608388))

(declare-fun m!7492240 () Bool)

(assert (=> bm!608388 m!7492240))

(declare-fun m!7492242 () Bool)

(assert (=> b!6734379 m!7492242))

(declare-fun m!7492244 () Bool)

(assert (=> bm!608390 m!7492244))

(assert (=> d!2115742 d!2115902))

(declare-fun d!2115910 () Bool)

(assert (=> d!2115910 (= (head!13549 s!2326) (h!72306 s!2326))))

(assert (=> b!6733727 d!2115910))

(declare-fun bm!608391 () Bool)

(declare-fun call!608397 () (InoxSet Context!11890))

(declare-fun call!608401 () (InoxSet Context!11890))

(assert (=> bm!608391 (= call!608397 call!608401)))

(declare-fun bm!608392 () Bool)

(declare-fun call!608400 () (InoxSet Context!11890))

(declare-fun c!1248935 () Bool)

(declare-fun call!608396 () List!65983)

(assert (=> bm!608392 (= call!608400 (derivationStepZipperDown!1789 (ite c!1248935 (regOne!33635 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))) (regOne!33634 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292)))) (ite c!1248935 (ite c!1248862 (Context!11891 Nil!65859) (Context!11891 call!608350)) (Context!11891 call!608396)) (h!72306 s!2326)))))

(declare-fun d!2115912 () Bool)

(declare-fun c!1248932 () Bool)

(assert (=> d!2115912 (= c!1248932 (and ((_ is ElementMatch!16561) (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))) (= (c!1248671 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))) (h!72306 s!2326))))))

(declare-fun e!4068185 () (InoxSet Context!11890))

(assert (=> d!2115912 (= (derivationStepZipperDown!1789 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292)) (ite c!1248862 (Context!11891 Nil!65859) (Context!11891 call!608350)) (h!72306 s!2326)) e!4068185)))

(declare-fun b!6734384 () Bool)

(declare-fun e!4068189 () (InoxSet Context!11890))

(assert (=> b!6734384 (= e!4068189 call!608397)))

(declare-fun bm!608393 () Bool)

(declare-fun call!608398 () List!65983)

(assert (=> bm!608393 (= call!608398 call!608396)))

(declare-fun b!6734385 () Bool)

(declare-fun c!1248933 () Bool)

(declare-fun e!4068186 () Bool)

(assert (=> b!6734385 (= c!1248933 e!4068186)))

(declare-fun res!2754995 () Bool)

(assert (=> b!6734385 (=> (not res!2754995) (not e!4068186))))

(assert (=> b!6734385 (= res!2754995 ((_ is Concat!25406) (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))))))

(declare-fun e!4068187 () (InoxSet Context!11890))

(declare-fun e!4068190 () (InoxSet Context!11890))

(assert (=> b!6734385 (= e!4068187 e!4068190)))

(declare-fun b!6734386 () Bool)

(assert (=> b!6734386 (= e!4068186 (nullable!6548 (regOne!33634 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292)))))))

(declare-fun b!6734387 () Bool)

(declare-fun call!608399 () (InoxSet Context!11890))

(assert (=> b!6734387 (= e!4068187 ((_ map or) call!608400 call!608399))))

(declare-fun b!6734388 () Bool)

(declare-fun e!4068188 () (InoxSet Context!11890))

(assert (=> b!6734388 (= e!4068190 e!4068188)))

(declare-fun c!1248934 () Bool)

(assert (=> b!6734388 (= c!1248934 ((_ is Concat!25406) (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))))))

(declare-fun b!6734389 () Bool)

(assert (=> b!6734389 (= e!4068190 ((_ map or) call!608400 call!608401))))

(declare-fun b!6734390 () Bool)

(assert (=> b!6734390 (= e!4068185 e!4068187)))

(assert (=> b!6734390 (= c!1248935 ((_ is Union!16561) (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))))))

(declare-fun bm!608394 () Bool)

(assert (=> bm!608394 (= call!608399 (derivationStepZipperDown!1789 (ite c!1248935 (regTwo!33635 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))) (ite c!1248933 (regTwo!33634 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))) (ite c!1248934 (regOne!33634 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))) (reg!16890 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292)))))) (ite (or c!1248935 c!1248933) (ite c!1248862 (Context!11891 Nil!65859) (Context!11891 call!608350)) (Context!11891 call!608398)) (h!72306 s!2326)))))

(declare-fun b!6734391 () Bool)

(assert (=> b!6734391 (= e!4068185 (store ((as const (Array Context!11890 Bool)) false) (ite c!1248862 (Context!11891 Nil!65859) (Context!11891 call!608350)) true))))

(declare-fun b!6734392 () Bool)

(assert (=> b!6734392 (= e!4068188 call!608397)))

(declare-fun b!6734393 () Bool)

(assert (=> b!6734393 (= e!4068189 ((as const (Array Context!11890 Bool)) false))))

(declare-fun bm!608395 () Bool)

(assert (=> bm!608395 (= call!608401 call!608399)))

(declare-fun b!6734394 () Bool)

(declare-fun c!1248936 () Bool)

(assert (=> b!6734394 (= c!1248936 ((_ is Star!16561) (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))))))

(assert (=> b!6734394 (= e!4068188 e!4068189)))

(declare-fun bm!608396 () Bool)

(assert (=> bm!608396 (= call!608396 ($colon$colon!2378 (exprs!6445 (ite c!1248862 (Context!11891 Nil!65859) (Context!11891 call!608350))) (ite (or c!1248933 c!1248934) (regTwo!33634 (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292))) (ite c!1248862 (regOne!33635 r!7292) (regOne!33634 r!7292)))))))

(assert (= (and d!2115912 c!1248932) b!6734391))

(assert (= (and d!2115912 (not c!1248932)) b!6734390))

(assert (= (and b!6734390 c!1248935) b!6734387))

(assert (= (and b!6734390 (not c!1248935)) b!6734385))

(assert (= (and b!6734385 res!2754995) b!6734386))

(assert (= (and b!6734385 c!1248933) b!6734389))

(assert (= (and b!6734385 (not c!1248933)) b!6734388))

(assert (= (and b!6734388 c!1248934) b!6734392))

(assert (= (and b!6734388 (not c!1248934)) b!6734394))

(assert (= (and b!6734394 c!1248936) b!6734384))

(assert (= (and b!6734394 (not c!1248936)) b!6734393))

(assert (= (or b!6734392 b!6734384) bm!608393))

(assert (= (or b!6734392 b!6734384) bm!608391))

(assert (= (or b!6734389 bm!608393) bm!608396))

(assert (= (or b!6734389 bm!608391) bm!608395))

(assert (= (or b!6734387 bm!608395) bm!608394))

(assert (= (or b!6734387 b!6734389) bm!608392))

(declare-fun m!7492256 () Bool)

(assert (=> bm!608394 m!7492256))

(declare-fun m!7492258 () Bool)

(assert (=> b!6734391 m!7492258))

(declare-fun m!7492260 () Bool)

(assert (=> bm!608392 m!7492260))

(declare-fun m!7492262 () Bool)

(assert (=> b!6734386 m!7492262))

(declare-fun m!7492264 () Bool)

(assert (=> bm!608396 m!7492264))

(assert (=> bm!608346 d!2115912))

(declare-fun d!2115918 () Bool)

(assert (=> d!2115918 (= (isEmpty!38198 (t!379674 (unfocusZipperList!1982 zl!343))) ((_ is Nil!65859) (t!379674 (unfocusZipperList!1982 zl!343))))))

(assert (=> b!6733982 d!2115918))

(declare-fun d!2115920 () Bool)

(declare-fun c!1248939 () Bool)

(assert (=> d!2115920 (= c!1248939 ((_ is Nil!65860) lt!2438207))))

(declare-fun e!4068199 () (InoxSet Context!11890))

(assert (=> d!2115920 (= (content!12791 lt!2438207) e!4068199)))

(declare-fun b!6734404 () Bool)

(assert (=> b!6734404 (= e!4068199 ((as const (Array Context!11890 Bool)) false))))

(declare-fun b!6734405 () Bool)

(assert (=> b!6734405 (= e!4068199 ((_ map or) (store ((as const (Array Context!11890 Bool)) false) (h!72308 lt!2438207) true) (content!12791 (t!379675 lt!2438207))))))

(assert (= (and d!2115920 c!1248939) b!6734404))

(assert (= (and d!2115920 (not c!1248939)) b!6734405))

(declare-fun m!7492268 () Bool)

(assert (=> b!6734405 m!7492268))

(declare-fun m!7492270 () Bool)

(assert (=> b!6734405 m!7492270))

(assert (=> b!6734036 d!2115920))

(declare-fun d!2115926 () Bool)

(assert (=> d!2115926 (= (isEmpty!38198 (tail!12635 (exprs!6445 (h!72308 zl!343)))) ((_ is Nil!65859) (tail!12635 (exprs!6445 (h!72308 zl!343)))))))

(assert (=> b!6733951 d!2115926))

(declare-fun d!2115928 () Bool)

(assert (=> d!2115928 (= (tail!12635 (exprs!6445 (h!72308 zl!343))) (t!379674 (exprs!6445 (h!72308 zl!343))))))

(assert (=> b!6733951 d!2115928))

(declare-fun d!2115932 () Bool)

(declare-fun nullableFct!2462 (Regex!16561) Bool)

(assert (=> d!2115932 (= (nullable!6548 (regOne!33634 (reg!16890 r!7292))) (nullableFct!2462 (regOne!33634 (reg!16890 r!7292))))))

(declare-fun bs!1790864 () Bool)

(assert (= bs!1790864 d!2115932))

(declare-fun m!7492282 () Bool)

(assert (=> bs!1790864 m!7492282))

(assert (=> b!6734061 d!2115932))

(declare-fun bm!608401 () Bool)

(declare-fun call!608407 () (InoxSet Context!11890))

(declare-fun call!608411 () (InoxSet Context!11890))

(assert (=> bm!608401 (= call!608407 call!608411)))

(declare-fun bm!608402 () Bool)

(declare-fun call!608406 () List!65983)

(declare-fun call!608410 () (InoxSet Context!11890))

(declare-fun c!1248948 () Bool)

(assert (=> bm!608402 (= call!608410 (derivationStepZipperDown!1789 (ite c!1248948 (regOne!33635 (h!72307 (exprs!6445 (h!72308 zl!343)))) (regOne!33634 (h!72307 (exprs!6445 (h!72308 zl!343))))) (ite c!1248948 (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343)))) (Context!11891 call!608406)) (h!72306 s!2326)))))

(declare-fun d!2115936 () Bool)

(declare-fun c!1248945 () Bool)

(assert (=> d!2115936 (= c!1248945 (and ((_ is ElementMatch!16561) (h!72307 (exprs!6445 (h!72308 zl!343)))) (= (c!1248671 (h!72307 (exprs!6445 (h!72308 zl!343)))) (h!72306 s!2326))))))

(declare-fun e!4068215 () (InoxSet Context!11890))

(assert (=> d!2115936 (= (derivationStepZipperDown!1789 (h!72307 (exprs!6445 (h!72308 zl!343))) (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343)))) (h!72306 s!2326)) e!4068215)))

(declare-fun b!6734431 () Bool)

(declare-fun e!4068219 () (InoxSet Context!11890))

(assert (=> b!6734431 (= e!4068219 call!608407)))

(declare-fun bm!608403 () Bool)

(declare-fun call!608408 () List!65983)

(assert (=> bm!608403 (= call!608408 call!608406)))

(declare-fun b!6734432 () Bool)

(declare-fun c!1248946 () Bool)

(declare-fun e!4068216 () Bool)

(assert (=> b!6734432 (= c!1248946 e!4068216)))

(declare-fun res!2755016 () Bool)

(assert (=> b!6734432 (=> (not res!2755016) (not e!4068216))))

(assert (=> b!6734432 (= res!2755016 ((_ is Concat!25406) (h!72307 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun e!4068217 () (InoxSet Context!11890))

(declare-fun e!4068220 () (InoxSet Context!11890))

(assert (=> b!6734432 (= e!4068217 e!4068220)))

(declare-fun b!6734433 () Bool)

(assert (=> b!6734433 (= e!4068216 (nullable!6548 (regOne!33634 (h!72307 (exprs!6445 (h!72308 zl!343))))))))

(declare-fun b!6734434 () Bool)

(declare-fun call!608409 () (InoxSet Context!11890))

(assert (=> b!6734434 (= e!4068217 ((_ map or) call!608410 call!608409))))

(declare-fun b!6734435 () Bool)

(declare-fun e!4068218 () (InoxSet Context!11890))

(assert (=> b!6734435 (= e!4068220 e!4068218)))

(declare-fun c!1248947 () Bool)

(assert (=> b!6734435 (= c!1248947 ((_ is Concat!25406) (h!72307 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun b!6734436 () Bool)

(assert (=> b!6734436 (= e!4068220 ((_ map or) call!608410 call!608411))))

(declare-fun b!6734437 () Bool)

(assert (=> b!6734437 (= e!4068215 e!4068217)))

(assert (=> b!6734437 (= c!1248948 ((_ is Union!16561) (h!72307 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun bm!608404 () Bool)

(assert (=> bm!608404 (= call!608409 (derivationStepZipperDown!1789 (ite c!1248948 (regTwo!33635 (h!72307 (exprs!6445 (h!72308 zl!343)))) (ite c!1248946 (regTwo!33634 (h!72307 (exprs!6445 (h!72308 zl!343)))) (ite c!1248947 (regOne!33634 (h!72307 (exprs!6445 (h!72308 zl!343)))) (reg!16890 (h!72307 (exprs!6445 (h!72308 zl!343))))))) (ite (or c!1248948 c!1248946) (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343)))) (Context!11891 call!608408)) (h!72306 s!2326)))))

(declare-fun b!6734438 () Bool)

(assert (=> b!6734438 (= e!4068215 (store ((as const (Array Context!11890 Bool)) false) (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343)))) true))))

(declare-fun b!6734439 () Bool)

(assert (=> b!6734439 (= e!4068218 call!608407)))

(declare-fun b!6734440 () Bool)

(assert (=> b!6734440 (= e!4068219 ((as const (Array Context!11890 Bool)) false))))

(declare-fun bm!608405 () Bool)

(assert (=> bm!608405 (= call!608411 call!608409)))

(declare-fun b!6734441 () Bool)

(declare-fun c!1248949 () Bool)

(assert (=> b!6734441 (= c!1248949 ((_ is Star!16561) (h!72307 (exprs!6445 (h!72308 zl!343)))))))

(assert (=> b!6734441 (= e!4068218 e!4068219)))

(declare-fun bm!608406 () Bool)

(assert (=> bm!608406 (= call!608406 ($colon$colon!2378 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343))))) (ite (or c!1248946 c!1248947) (regTwo!33634 (h!72307 (exprs!6445 (h!72308 zl!343)))) (h!72307 (exprs!6445 (h!72308 zl!343))))))))

(assert (= (and d!2115936 c!1248945) b!6734438))

(assert (= (and d!2115936 (not c!1248945)) b!6734437))

(assert (= (and b!6734437 c!1248948) b!6734434))

(assert (= (and b!6734437 (not c!1248948)) b!6734432))

(assert (= (and b!6734432 res!2755016) b!6734433))

(assert (= (and b!6734432 c!1248946) b!6734436))

(assert (= (and b!6734432 (not c!1248946)) b!6734435))

(assert (= (and b!6734435 c!1248947) b!6734439))

(assert (= (and b!6734435 (not c!1248947)) b!6734441))

(assert (= (and b!6734441 c!1248949) b!6734431))

(assert (= (and b!6734441 (not c!1248949)) b!6734440))

(assert (= (or b!6734439 b!6734431) bm!608403))

(assert (= (or b!6734439 b!6734431) bm!608401))

(assert (= (or b!6734436 bm!608403) bm!608406))

(assert (= (or b!6734436 bm!608401) bm!608405))

(assert (= (or b!6734434 bm!608405) bm!608404))

(assert (= (or b!6734434 b!6734436) bm!608402))

(declare-fun m!7492296 () Bool)

(assert (=> bm!608404 m!7492296))

(declare-fun m!7492298 () Bool)

(assert (=> b!6734438 m!7492298))

(declare-fun m!7492300 () Bool)

(assert (=> bm!608402 m!7492300))

(declare-fun m!7492302 () Bool)

(assert (=> b!6734433 m!7492302))

(declare-fun m!7492304 () Bool)

(assert (=> bm!608406 m!7492304))

(assert (=> bm!608352 d!2115936))

(declare-fun bm!608410 () Bool)

(declare-fun call!608415 () (InoxSet Context!11890))

(assert (=> bm!608410 (= call!608415 (derivationStepZipperDown!1789 (h!72307 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 lt!2438117))))) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 lt!2438117)))))) (h!72306 s!2326)))))

(declare-fun b!6734451 () Bool)

(declare-fun e!4068228 () Bool)

(assert (=> b!6734451 (= e!4068228 (nullable!6548 (h!72307 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 lt!2438117)))))))))

(declare-fun b!6734452 () Bool)

(declare-fun e!4068230 () (InoxSet Context!11890))

(assert (=> b!6734452 (= e!4068230 call!608415)))

(declare-fun b!6734453 () Bool)

(declare-fun e!4068229 () (InoxSet Context!11890))

(assert (=> b!6734453 (= e!4068229 ((_ map or) call!608415 (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 lt!2438117)))))) (h!72306 s!2326))))))

(declare-fun b!6734454 () Bool)

(assert (=> b!6734454 (= e!4068230 ((as const (Array Context!11890 Bool)) false))))

(declare-fun b!6734455 () Bool)

(assert (=> b!6734455 (= e!4068229 e!4068230)))

(declare-fun c!1248953 () Bool)

(assert (=> b!6734455 (= c!1248953 ((_ is Cons!65859) (exprs!6445 (Context!11891 (t!379674 (exprs!6445 lt!2438117))))))))

(declare-fun d!2115940 () Bool)

(declare-fun c!1248952 () Bool)

(assert (=> d!2115940 (= c!1248952 e!4068228)))

(declare-fun res!2755022 () Bool)

(assert (=> d!2115940 (=> (not res!2755022) (not e!4068228))))

(assert (=> d!2115940 (= res!2755022 ((_ is Cons!65859) (exprs!6445 (Context!11891 (t!379674 (exprs!6445 lt!2438117))))))))

(assert (=> d!2115940 (= (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 lt!2438117))) (h!72306 s!2326)) e!4068229)))

(assert (= (and d!2115940 res!2755022) b!6734451))

(assert (= (and d!2115940 c!1248952) b!6734453))

(assert (= (and d!2115940 (not c!1248952)) b!6734455))

(assert (= (and b!6734455 c!1248953) b!6734452))

(assert (= (and b!6734455 (not c!1248953)) b!6734454))

(assert (= (or b!6734453 b!6734452) bm!608410))

(declare-fun m!7492308 () Bool)

(assert (=> bm!608410 m!7492308))

(declare-fun m!7492310 () Bool)

(assert (=> b!6734451 m!7492310))

(declare-fun m!7492316 () Bool)

(assert (=> b!6734453 m!7492316))

(assert (=> b!6734072 d!2115940))

(declare-fun d!2115944 () Bool)

(assert (=> d!2115944 (= (Exists!3629 lambda!378062) (choose!50191 lambda!378062))))

(declare-fun bs!1790865 () Bool)

(assert (= bs!1790865 d!2115944))

(declare-fun m!7492318 () Bool)

(assert (=> bs!1790865 m!7492318))

(assert (=> d!2115718 d!2115944))

(declare-fun d!2115946 () Bool)

(assert (=> d!2115946 (= (Exists!3629 lambda!378063) (choose!50191 lambda!378063))))

(declare-fun bs!1790866 () Bool)

(assert (= bs!1790866 d!2115946))

(declare-fun m!7492320 () Bool)

(assert (=> bs!1790866 m!7492320))

(assert (=> d!2115718 d!2115946))

(declare-fun bs!1790879 () Bool)

(declare-fun d!2115948 () Bool)

(assert (= bs!1790879 (and d!2115948 b!6733613)))

(declare-fun lambda!378110 () Int)

(assert (=> bs!1790879 (not (= lambda!378110 lambda!378029))))

(declare-fun bs!1790880 () Bool)

(assert (= bs!1790880 (and d!2115948 b!6734297)))

(assert (=> bs!1790880 (not (= lambda!378110 lambda!378093))))

(declare-fun bs!1790881 () Bool)

(assert (= bs!1790881 (and d!2115948 b!6733407)))

(assert (=> bs!1790881 (not (= lambda!378110 lambda!378009))))

(assert (=> bs!1790881 (not (= lambda!378110 lambda!378010))))

(declare-fun bs!1790884 () Bool)

(assert (= bs!1790884 (and d!2115948 d!2115878)))

(assert (=> bs!1790884 (= lambda!378110 lambda!378103)))

(declare-fun bs!1790885 () Bool)

(assert (= bs!1790885 (and d!2115948 d!2115718)))

(assert (=> bs!1790885 (= lambda!378110 lambda!378062)))

(assert (=> bs!1790885 (not (= lambda!378110 lambda!378063))))

(declare-fun bs!1790886 () Bool)

(assert (= bs!1790886 (and d!2115948 d!2115704)))

(assert (=> bs!1790886 (= (= r!7292 (Star!16561 (reg!16890 r!7292))) (= lambda!378110 lambda!378052))))

(declare-fun bs!1790887 () Bool)

(assert (= bs!1790887 (and d!2115948 b!6734304)))

(assert (=> bs!1790887 (not (= lambda!378110 lambda!378096))))

(assert (=> bs!1790886 (not (= lambda!378110 lambda!378055))))

(assert (=> bs!1790881 (= lambda!378110 lambda!378008)))

(declare-fun bs!1790888 () Bool)

(assert (= bs!1790888 (and d!2115948 b!6733620)))

(assert (=> bs!1790888 (not (= lambda!378110 lambda!378030))))

(declare-fun bs!1790889 () Bool)

(assert (= bs!1790889 (and d!2115948 d!2115742)))

(assert (=> bs!1790889 (= lambda!378110 lambda!378071)))

(assert (=> d!2115948 true))

(assert (=> d!2115948 true))

(assert (=> d!2115948 true))

(declare-fun lambda!378111 () Int)

(assert (=> bs!1790879 (not (= lambda!378111 lambda!378029))))

(assert (=> bs!1790880 (not (= lambda!378111 lambda!378093))))

(assert (=> bs!1790881 (not (= lambda!378111 lambda!378009))))

(assert (=> bs!1790881 (= lambda!378111 lambda!378010)))

(assert (=> bs!1790884 (not (= lambda!378111 lambda!378103))))

(assert (=> bs!1790885 (not (= lambda!378111 lambda!378062))))

(declare-fun bs!1790890 () Bool)

(assert (= bs!1790890 d!2115948))

(assert (=> bs!1790890 (not (= lambda!378111 lambda!378110))))

(assert (=> bs!1790885 (= lambda!378111 lambda!378063)))

(assert (=> bs!1790886 (not (= lambda!378111 lambda!378052))))

(assert (=> bs!1790887 (= (and (= (reg!16890 r!7292) (regOne!33634 (regOne!33635 r!7292))) (= r!7292 (regTwo!33634 (regOne!33635 r!7292)))) (= lambda!378111 lambda!378096))))

(assert (=> bs!1790886 (not (= lambda!378111 lambda!378055))))

(assert (=> bs!1790881 (not (= lambda!378111 lambda!378008))))

(assert (=> bs!1790888 (= (and (= (reg!16890 r!7292) (regOne!33634 r!7292)) (= r!7292 (regTwo!33634 r!7292))) (= lambda!378111 lambda!378030))))

(assert (=> bs!1790889 (not (= lambda!378111 lambda!378071))))

(assert (=> d!2115948 true))

(assert (=> d!2115948 true))

(assert (=> d!2115948 true))

(assert (=> d!2115948 (= (Exists!3629 lambda!378110) (Exists!3629 lambda!378111))))

(assert (=> d!2115948 true))

(declare-fun _$90!2581 () Unit!159813)

(assert (=> d!2115948 (= (choose!50192 (reg!16890 r!7292) r!7292 s!2326) _$90!2581)))

(declare-fun m!7492372 () Bool)

(assert (=> bs!1790890 m!7492372))

(declare-fun m!7492374 () Bool)

(assert (=> bs!1790890 m!7492374))

(assert (=> d!2115718 d!2115948))

(assert (=> d!2115718 d!2115902))

(declare-fun d!2115974 () Bool)

(assert (=> d!2115974 (= (isEmpty!38198 (exprs!6445 (h!72308 zl!343))) ((_ is Nil!65859) (exprs!6445 (h!72308 zl!343))))))

(assert (=> b!6733953 d!2115974))

(declare-fun d!2115976 () Bool)

(assert (=> d!2115976 true))

(assert (=> d!2115976 true))

(declare-fun res!2755042 () Bool)

(assert (=> d!2115976 (= (choose!50191 lambda!378010) res!2755042)))

(assert (=> d!2115712 d!2115976))

(declare-fun d!2115978 () Bool)

(declare-fun c!1248968 () Bool)

(assert (=> d!2115978 (= c!1248968 (isEmpty!38193 (tail!12634 s!2326)))))

(declare-fun e!4068257 () Bool)

(assert (=> d!2115978 (= (matchZipper!2547 (derivationStepZipper!2505 lt!2438114 (head!13549 s!2326)) (tail!12634 s!2326)) e!4068257)))

(declare-fun b!6734503 () Bool)

(assert (=> b!6734503 (= e!4068257 (nullableZipper!2276 (derivationStepZipper!2505 lt!2438114 (head!13549 s!2326))))))

(declare-fun b!6734504 () Bool)

(assert (=> b!6734504 (= e!4068257 (matchZipper!2547 (derivationStepZipper!2505 (derivationStepZipper!2505 lt!2438114 (head!13549 s!2326)) (head!13549 (tail!12634 s!2326))) (tail!12634 (tail!12634 s!2326))))))

(assert (= (and d!2115978 c!1248968) b!6734503))

(assert (= (and d!2115978 (not c!1248968)) b!6734504))

(assert (=> d!2115978 m!7491668))

(assert (=> d!2115978 m!7491670))

(assert (=> b!6734503 m!7491908))

(declare-fun m!7492376 () Bool)

(assert (=> b!6734503 m!7492376))

(assert (=> b!6734504 m!7491668))

(declare-fun m!7492378 () Bool)

(assert (=> b!6734504 m!7492378))

(assert (=> b!6734504 m!7491908))

(assert (=> b!6734504 m!7492378))

(declare-fun m!7492380 () Bool)

(assert (=> b!6734504 m!7492380))

(assert (=> b!6734504 m!7491668))

(declare-fun m!7492382 () Bool)

(assert (=> b!6734504 m!7492382))

(assert (=> b!6734504 m!7492380))

(assert (=> b!6734504 m!7492382))

(declare-fun m!7492384 () Bool)

(assert (=> b!6734504 m!7492384))

(assert (=> b!6734080 d!2115978))

(declare-fun bs!1790891 () Bool)

(declare-fun d!2115980 () Bool)

(assert (= bs!1790891 (and d!2115980 b!6733405)))

(declare-fun lambda!378114 () Int)

(assert (=> bs!1790891 (= (= (head!13549 s!2326) (h!72306 s!2326)) (= lambda!378114 lambda!378011))))

(declare-fun bs!1790892 () Bool)

(assert (= bs!1790892 (and d!2115980 d!2115778)))

(assert (=> bs!1790892 (= (= (head!13549 s!2326) (h!72306 s!2326)) (= lambda!378114 lambda!378088))))

(declare-fun bs!1790893 () Bool)

(assert (= bs!1790893 (and d!2115980 d!2115784)))

(assert (=> bs!1790893 (= (= (head!13549 s!2326) (h!72306 s!2326)) (= lambda!378114 lambda!378089))))

(assert (=> d!2115980 true))

(assert (=> d!2115980 (= (derivationStepZipper!2505 lt!2438114 (head!13549 s!2326)) (flatMap!2042 lt!2438114 lambda!378114))))

(declare-fun bs!1790894 () Bool)

(assert (= bs!1790894 d!2115980))

(declare-fun m!7492386 () Bool)

(assert (=> bs!1790894 m!7492386))

(assert (=> b!6734080 d!2115980))

(assert (=> b!6734080 d!2115910))

(declare-fun d!2115982 () Bool)

(assert (=> d!2115982 (= (tail!12634 s!2326) (t!379673 s!2326))))

(assert (=> b!6734080 d!2115982))

(declare-fun d!2115984 () Bool)

(assert (=> d!2115984 (= (nullable!6548 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (nullableFct!2462 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))))))

(declare-fun bs!1790895 () Bool)

(assert (= bs!1790895 d!2115984))

(declare-fun m!7492388 () Bool)

(assert (=> bs!1790895 m!7492388))

(assert (=> b!6734096 d!2115984))

(declare-fun d!2115986 () Bool)

(assert (=> d!2115986 (= ($colon$colon!2378 (exprs!6445 (Context!11891 Nil!65859)) (ite (or c!1248860 c!1248861) (regTwo!33634 r!7292) r!7292)) (Cons!65859 (ite (or c!1248860 c!1248861) (regTwo!33634 r!7292) r!7292) (exprs!6445 (Context!11891 Nil!65859))))))

(assert (=> bm!608350 d!2115986))

(declare-fun b!6734509 () Bool)

(declare-fun res!2755053 () Bool)

(declare-fun e!4068261 () Bool)

(assert (=> b!6734509 (=> res!2755053 e!4068261)))

(assert (=> b!6734509 (= res!2755053 (not ((_ is Concat!25406) (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292)))))))

(declare-fun e!4068260 () Bool)

(assert (=> b!6734509 (= e!4068260 e!4068261)))

(declare-fun b!6734510 () Bool)

(declare-fun e!4068266 () Bool)

(assert (=> b!6734510 (= e!4068266 e!4068260)))

(declare-fun c!1248969 () Bool)

(assert (=> b!6734510 (= c!1248969 ((_ is Union!16561) (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292))))))

(declare-fun call!608428 () Bool)

(declare-fun c!1248970 () Bool)

(declare-fun bm!608423 () Bool)

(assert (=> bm!608423 (= call!608428 (validRegex!8297 (ite c!1248970 (reg!16890 (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292))) (ite c!1248969 (regTwo!33635 (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292))) (regTwo!33634 (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292)))))))))

(declare-fun b!6734511 () Bool)

(declare-fun e!4068263 () Bool)

(assert (=> b!6734511 (= e!4068263 call!608428)))

(declare-fun b!6734512 () Bool)

(declare-fun e!4068265 () Bool)

(declare-fun call!608430 () Bool)

(assert (=> b!6734512 (= e!4068265 call!608430)))

(declare-fun b!6734514 () Bool)

(declare-fun e!4068262 () Bool)

(assert (=> b!6734514 (= e!4068262 call!608430)))

(declare-fun b!6734515 () Bool)

(assert (=> b!6734515 (= e!4068266 e!4068263)))

(declare-fun res!2755052 () Bool)

(assert (=> b!6734515 (= res!2755052 (not (nullable!6548 (reg!16890 (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292))))))))

(assert (=> b!6734515 (=> (not res!2755052) (not e!4068263))))

(declare-fun b!6734516 () Bool)

(assert (=> b!6734516 (= e!4068261 e!4068262)))

(declare-fun res!2755050 () Bool)

(assert (=> b!6734516 (=> (not res!2755050) (not e!4068262))))

(declare-fun call!608429 () Bool)

(assert (=> b!6734516 (= res!2755050 call!608429)))

(declare-fun bm!608424 () Bool)

(assert (=> bm!608424 (= call!608430 call!608428)))

(declare-fun bm!608425 () Bool)

(assert (=> bm!608425 (= call!608429 (validRegex!8297 (ite c!1248969 (regOne!33635 (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292))) (regOne!33634 (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292))))))))

(declare-fun b!6734517 () Bool)

(declare-fun e!4068264 () Bool)

(assert (=> b!6734517 (= e!4068264 e!4068266)))

(assert (=> b!6734517 (= c!1248970 ((_ is Star!16561) (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292))))))

(declare-fun d!2115988 () Bool)

(declare-fun res!2755049 () Bool)

(assert (=> d!2115988 (=> res!2755049 e!4068264)))

(assert (=> d!2115988 (= res!2755049 ((_ is ElementMatch!16561) (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292))))))

(assert (=> d!2115988 (= (validRegex!8297 (ite c!1248828 (regOne!33635 r!7292) (regOne!33634 r!7292))) e!4068264)))

(declare-fun b!6734513 () Bool)

(declare-fun res!2755051 () Bool)

(assert (=> b!6734513 (=> (not res!2755051) (not e!4068265))))

(assert (=> b!6734513 (= res!2755051 call!608429)))

(assert (=> b!6734513 (= e!4068260 e!4068265)))

(assert (= (and d!2115988 (not res!2755049)) b!6734517))

(assert (= (and b!6734517 c!1248970) b!6734515))

(assert (= (and b!6734517 (not c!1248970)) b!6734510))

(assert (= (and b!6734515 res!2755052) b!6734511))

(assert (= (and b!6734510 c!1248969) b!6734513))

(assert (= (and b!6734510 (not c!1248969)) b!6734509))

(assert (= (and b!6734513 res!2755051) b!6734512))

(assert (= (and b!6734509 (not res!2755053)) b!6734516))

(assert (= (and b!6734516 res!2755050) b!6734514))

(assert (= (or b!6734512 b!6734514) bm!608424))

(assert (= (or b!6734513 b!6734516) bm!608425))

(assert (= (or b!6734511 bm!608424) bm!608423))

(declare-fun m!7492390 () Bool)

(assert (=> bm!608423 m!7492390))

(declare-fun m!7492392 () Bool)

(assert (=> b!6734515 m!7492392))

(declare-fun m!7492394 () Bool)

(assert (=> bm!608425 m!7492394))

(assert (=> bm!608322 d!2115988))

(declare-fun d!2115990 () Bool)

(assert (=> d!2115990 (= (head!13550 (unfocusZipperList!1982 zl!343)) (h!72307 (unfocusZipperList!1982 zl!343)))))

(assert (=> b!6733976 d!2115990))

(assert (=> b!6733915 d!2115674))

(declare-fun d!2115992 () Bool)

(assert (=> d!2115992 (= (isEmptyExpr!1927 lt!2438195) ((_ is EmptyExpr!16561) lt!2438195))))

(assert (=> b!6733948 d!2115992))

(declare-fun d!2115994 () Bool)

(assert (=> d!2115994 true))

(assert (=> d!2115994 true))

(declare-fun res!2755054 () Bool)

(assert (=> d!2115994 (= (choose!50191 lambda!378008) res!2755054)))

(assert (=> d!2115716 d!2115994))

(declare-fun b!6734518 () Bool)

(declare-fun res!2755059 () Bool)

(declare-fun e!4068268 () Bool)

(assert (=> b!6734518 (=> res!2755059 e!4068268)))

(assert (=> b!6734518 (= res!2755059 (not ((_ is Concat!25406) lt!2438198)))))

(declare-fun e!4068267 () Bool)

(assert (=> b!6734518 (= e!4068267 e!4068268)))

(declare-fun b!6734519 () Bool)

(declare-fun e!4068273 () Bool)

(assert (=> b!6734519 (= e!4068273 e!4068267)))

(declare-fun c!1248971 () Bool)

(assert (=> b!6734519 (= c!1248971 ((_ is Union!16561) lt!2438198))))

(declare-fun c!1248972 () Bool)

(declare-fun call!608431 () Bool)

(declare-fun bm!608426 () Bool)

(assert (=> bm!608426 (= call!608431 (validRegex!8297 (ite c!1248972 (reg!16890 lt!2438198) (ite c!1248971 (regTwo!33635 lt!2438198) (regTwo!33634 lt!2438198)))))))

(declare-fun b!6734520 () Bool)

(declare-fun e!4068270 () Bool)

(assert (=> b!6734520 (= e!4068270 call!608431)))

(declare-fun b!6734521 () Bool)

(declare-fun e!4068272 () Bool)

(declare-fun call!608433 () Bool)

(assert (=> b!6734521 (= e!4068272 call!608433)))

(declare-fun b!6734523 () Bool)

(declare-fun e!4068269 () Bool)

(assert (=> b!6734523 (= e!4068269 call!608433)))

(declare-fun b!6734524 () Bool)

(assert (=> b!6734524 (= e!4068273 e!4068270)))

(declare-fun res!2755058 () Bool)

(assert (=> b!6734524 (= res!2755058 (not (nullable!6548 (reg!16890 lt!2438198))))))

(assert (=> b!6734524 (=> (not res!2755058) (not e!4068270))))

(declare-fun b!6734525 () Bool)

(assert (=> b!6734525 (= e!4068268 e!4068269)))

(declare-fun res!2755056 () Bool)

(assert (=> b!6734525 (=> (not res!2755056) (not e!4068269))))

(declare-fun call!608432 () Bool)

(assert (=> b!6734525 (= res!2755056 call!608432)))

(declare-fun bm!608427 () Bool)

(assert (=> bm!608427 (= call!608433 call!608431)))

(declare-fun bm!608428 () Bool)

(assert (=> bm!608428 (= call!608432 (validRegex!8297 (ite c!1248971 (regOne!33635 lt!2438198) (regOne!33634 lt!2438198))))))

(declare-fun b!6734526 () Bool)

(declare-fun e!4068271 () Bool)

(assert (=> b!6734526 (= e!4068271 e!4068273)))

(assert (=> b!6734526 (= c!1248972 ((_ is Star!16561) lt!2438198))))

(declare-fun d!2115996 () Bool)

(declare-fun res!2755055 () Bool)

(assert (=> d!2115996 (=> res!2755055 e!4068271)))

(assert (=> d!2115996 (= res!2755055 ((_ is ElementMatch!16561) lt!2438198))))

(assert (=> d!2115996 (= (validRegex!8297 lt!2438198) e!4068271)))

(declare-fun b!6734522 () Bool)

(declare-fun res!2755057 () Bool)

(assert (=> b!6734522 (=> (not res!2755057) (not e!4068272))))

(assert (=> b!6734522 (= res!2755057 call!608432)))

(assert (=> b!6734522 (= e!4068267 e!4068272)))

(assert (= (and d!2115996 (not res!2755055)) b!6734526))

(assert (= (and b!6734526 c!1248972) b!6734524))

(assert (= (and b!6734526 (not c!1248972)) b!6734519))

(assert (= (and b!6734524 res!2755058) b!6734520))

(assert (= (and b!6734519 c!1248971) b!6734522))

(assert (= (and b!6734519 (not c!1248971)) b!6734518))

(assert (= (and b!6734522 res!2755057) b!6734521))

(assert (= (and b!6734518 (not res!2755059)) b!6734525))

(assert (= (and b!6734525 res!2755056) b!6734523))

(assert (= (or b!6734521 b!6734523) bm!608427))

(assert (= (or b!6734522 b!6734525) bm!608428))

(assert (= (or b!6734520 bm!608427) bm!608426))

(declare-fun m!7492396 () Bool)

(assert (=> bm!608426 m!7492396))

(declare-fun m!7492398 () Bool)

(assert (=> b!6734524 m!7492398))

(declare-fun m!7492400 () Bool)

(assert (=> bm!608428 m!7492400))

(assert (=> d!2115748 d!2115996))

(declare-fun d!2115998 () Bool)

(declare-fun res!2755060 () Bool)

(declare-fun e!4068274 () Bool)

(assert (=> d!2115998 (=> res!2755060 e!4068274)))

(assert (=> d!2115998 (= res!2755060 ((_ is Nil!65859) (unfocusZipperList!1982 zl!343)))))

(assert (=> d!2115998 (= (forall!15761 (unfocusZipperList!1982 zl!343) lambda!378080) e!4068274)))

(declare-fun b!6734527 () Bool)

(declare-fun e!4068275 () Bool)

(assert (=> b!6734527 (= e!4068274 e!4068275)))

(declare-fun res!2755061 () Bool)

(assert (=> b!6734527 (=> (not res!2755061) (not e!4068275))))

(assert (=> b!6734527 (= res!2755061 (dynLambda!26274 lambda!378080 (h!72307 (unfocusZipperList!1982 zl!343))))))

(declare-fun b!6734528 () Bool)

(assert (=> b!6734528 (= e!4068275 (forall!15761 (t!379674 (unfocusZipperList!1982 zl!343)) lambda!378080))))

(assert (= (and d!2115998 (not res!2755060)) b!6734527))

(assert (= (and b!6734527 res!2755061) b!6734528))

(declare-fun b_lambda!253563 () Bool)

(assert (=> (not b_lambda!253563) (not b!6734527)))

(declare-fun m!7492402 () Bool)

(assert (=> b!6734527 m!7492402))

(declare-fun m!7492404 () Bool)

(assert (=> b!6734528 m!7492404))

(assert (=> d!2115748 d!2115998))

(declare-fun bm!608429 () Bool)

(declare-fun call!608435 () (InoxSet Context!11890))

(declare-fun call!608439 () (InoxSet Context!11890))

(assert (=> bm!608429 (= call!608435 call!608439)))

(declare-fun call!608438 () (InoxSet Context!11890))

(declare-fun bm!608430 () Bool)

(declare-fun call!608434 () List!65983)

(declare-fun c!1248976 () Bool)

(assert (=> bm!608430 (= call!608438 (derivationStepZipperDown!1789 (ite c!1248976 (regOne!33635 (h!72307 (exprs!6445 lt!2438117))) (regOne!33634 (h!72307 (exprs!6445 lt!2438117)))) (ite c!1248976 (Context!11891 (t!379674 (exprs!6445 lt!2438117))) (Context!11891 call!608434)) (h!72306 s!2326)))))

(declare-fun d!2116000 () Bool)

(declare-fun c!1248973 () Bool)

(assert (=> d!2116000 (= c!1248973 (and ((_ is ElementMatch!16561) (h!72307 (exprs!6445 lt!2438117))) (= (c!1248671 (h!72307 (exprs!6445 lt!2438117))) (h!72306 s!2326))))))

(declare-fun e!4068276 () (InoxSet Context!11890))

(assert (=> d!2116000 (= (derivationStepZipperDown!1789 (h!72307 (exprs!6445 lt!2438117)) (Context!11891 (t!379674 (exprs!6445 lt!2438117))) (h!72306 s!2326)) e!4068276)))

(declare-fun b!6734529 () Bool)

(declare-fun e!4068280 () (InoxSet Context!11890))

(assert (=> b!6734529 (= e!4068280 call!608435)))

(declare-fun bm!608431 () Bool)

(declare-fun call!608436 () List!65983)

(assert (=> bm!608431 (= call!608436 call!608434)))

(declare-fun b!6734530 () Bool)

(declare-fun c!1248974 () Bool)

(declare-fun e!4068277 () Bool)

(assert (=> b!6734530 (= c!1248974 e!4068277)))

(declare-fun res!2755062 () Bool)

(assert (=> b!6734530 (=> (not res!2755062) (not e!4068277))))

(assert (=> b!6734530 (= res!2755062 ((_ is Concat!25406) (h!72307 (exprs!6445 lt!2438117))))))

(declare-fun e!4068278 () (InoxSet Context!11890))

(declare-fun e!4068281 () (InoxSet Context!11890))

(assert (=> b!6734530 (= e!4068278 e!4068281)))

(declare-fun b!6734531 () Bool)

(assert (=> b!6734531 (= e!4068277 (nullable!6548 (regOne!33634 (h!72307 (exprs!6445 lt!2438117)))))))

(declare-fun b!6734532 () Bool)

(declare-fun call!608437 () (InoxSet Context!11890))

(assert (=> b!6734532 (= e!4068278 ((_ map or) call!608438 call!608437))))

(declare-fun b!6734533 () Bool)

(declare-fun e!4068279 () (InoxSet Context!11890))

(assert (=> b!6734533 (= e!4068281 e!4068279)))

(declare-fun c!1248975 () Bool)

(assert (=> b!6734533 (= c!1248975 ((_ is Concat!25406) (h!72307 (exprs!6445 lt!2438117))))))

(declare-fun b!6734534 () Bool)

(assert (=> b!6734534 (= e!4068281 ((_ map or) call!608438 call!608439))))

(declare-fun b!6734535 () Bool)

(assert (=> b!6734535 (= e!4068276 e!4068278)))

(assert (=> b!6734535 (= c!1248976 ((_ is Union!16561) (h!72307 (exprs!6445 lt!2438117))))))

(declare-fun bm!608432 () Bool)

(assert (=> bm!608432 (= call!608437 (derivationStepZipperDown!1789 (ite c!1248976 (regTwo!33635 (h!72307 (exprs!6445 lt!2438117))) (ite c!1248974 (regTwo!33634 (h!72307 (exprs!6445 lt!2438117))) (ite c!1248975 (regOne!33634 (h!72307 (exprs!6445 lt!2438117))) (reg!16890 (h!72307 (exprs!6445 lt!2438117)))))) (ite (or c!1248976 c!1248974) (Context!11891 (t!379674 (exprs!6445 lt!2438117))) (Context!11891 call!608436)) (h!72306 s!2326)))))

(declare-fun b!6734536 () Bool)

(assert (=> b!6734536 (= e!4068276 (store ((as const (Array Context!11890 Bool)) false) (Context!11891 (t!379674 (exprs!6445 lt!2438117))) true))))

(declare-fun b!6734537 () Bool)

(assert (=> b!6734537 (= e!4068279 call!608435)))

(declare-fun b!6734538 () Bool)

(assert (=> b!6734538 (= e!4068280 ((as const (Array Context!11890 Bool)) false))))

(declare-fun bm!608433 () Bool)

(assert (=> bm!608433 (= call!608439 call!608437)))

(declare-fun b!6734539 () Bool)

(declare-fun c!1248977 () Bool)

(assert (=> b!6734539 (= c!1248977 ((_ is Star!16561) (h!72307 (exprs!6445 lt!2438117))))))

(assert (=> b!6734539 (= e!4068279 e!4068280)))

(declare-fun bm!608434 () Bool)

(assert (=> bm!608434 (= call!608434 ($colon$colon!2378 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 lt!2438117)))) (ite (or c!1248974 c!1248975) (regTwo!33634 (h!72307 (exprs!6445 lt!2438117))) (h!72307 (exprs!6445 lt!2438117)))))))

(assert (= (and d!2116000 c!1248973) b!6734536))

(assert (= (and d!2116000 (not c!1248973)) b!6734535))

(assert (= (and b!6734535 c!1248976) b!6734532))

(assert (= (and b!6734535 (not c!1248976)) b!6734530))

(assert (= (and b!6734530 res!2755062) b!6734531))

(assert (= (and b!6734530 c!1248974) b!6734534))

(assert (= (and b!6734530 (not c!1248974)) b!6734533))

(assert (= (and b!6734533 c!1248975) b!6734537))

(assert (= (and b!6734533 (not c!1248975)) b!6734539))

(assert (= (and b!6734539 c!1248977) b!6734529))

(assert (= (and b!6734539 (not c!1248977)) b!6734538))

(assert (= (or b!6734537 b!6734529) bm!608431))

(assert (= (or b!6734537 b!6734529) bm!608429))

(assert (= (or b!6734534 bm!608431) bm!608434))

(assert (= (or b!6734534 bm!608429) bm!608433))

(assert (= (or b!6734532 bm!608433) bm!608432))

(assert (= (or b!6734532 b!6734534) bm!608430))

(declare-fun m!7492406 () Bool)

(assert (=> bm!608432 m!7492406))

(declare-fun m!7492410 () Bool)

(assert (=> b!6734536 m!7492410))

(declare-fun m!7492414 () Bool)

(assert (=> bm!608430 m!7492414))

(declare-fun m!7492416 () Bool)

(assert (=> b!6734531 m!7492416))

(declare-fun m!7492418 () Bool)

(assert (=> bm!608434 m!7492418))

(assert (=> bm!608344 d!2116000))

(declare-fun d!2116004 () Bool)

(assert (=> d!2116004 (= (isEmpty!38198 (t!379674 (exprs!6445 (h!72308 zl!343)))) ((_ is Nil!65859) (t!379674 (exprs!6445 (h!72308 zl!343)))))))

(assert (=> b!6733950 d!2116004))

(declare-fun d!2116006 () Bool)

(assert (=> d!2116006 (= (isDefined!13151 lt!2438188) (not (isEmpty!38197 lt!2438188)))))

(declare-fun bs!1790903 () Bool)

(assert (= bs!1790903 d!2116006))

(declare-fun m!7492420 () Bool)

(assert (=> bs!1790903 m!7492420))

(assert (=> b!6733919 d!2116006))

(declare-fun d!2116008 () Bool)

(assert (=> d!2116008 (= (nullable!6548 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (nullableFct!2462 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))))))

(declare-fun bs!1790904 () Bool)

(assert (= bs!1790904 d!2116008))

(declare-fun m!7492422 () Bool)

(assert (=> bs!1790904 m!7492422))

(assert (=> b!6734029 d!2116008))

(declare-fun d!2116010 () Bool)

(assert (=> d!2116010 (= (isEmpty!38193 (t!379673 s!2326)) ((_ is Nil!65858) (t!379673 s!2326)))))

(assert (=> d!2115776 d!2116010))

(assert (=> d!2115772 d!2115768))

(declare-fun d!2116012 () Bool)

(assert (=> d!2116012 (= (flatMap!2042 lt!2438114 lambda!378011) (dynLambda!26272 lambda!378011 lt!2438117))))

(assert (=> d!2116012 true))

(declare-fun _$13!4053 () Unit!159813)

(assert (=> d!2116012 (= (choose!50196 lt!2438114 lt!2438117 lambda!378011) _$13!4053)))

(declare-fun b_lambda!253565 () Bool)

(assert (=> (not b_lambda!253565) (not d!2116012)))

(declare-fun bs!1790905 () Bool)

(assert (= bs!1790905 d!2116012))

(assert (=> bs!1790905 m!7491518))

(assert (=> bs!1790905 m!7491902))

(assert (=> d!2115772 d!2116012))

(assert (=> d!2115690 d!2115674))

(assert (=> d!2115690 d!2115648))

(declare-fun d!2116018 () Bool)

(assert (=> d!2116018 (= (matchR!8744 r!7292 s!2326) (matchRSpec!3662 r!7292 s!2326))))

(assert (=> d!2116018 true))

(declare-fun _$88!5486 () Unit!159813)

(assert (=> d!2116018 (= (choose!50188 r!7292 s!2326) _$88!5486)))

(declare-fun bs!1790908 () Bool)

(assert (= bs!1790908 d!2116018))

(assert (=> bs!1790908 m!7491452))

(assert (=> bs!1790908 m!7491450))

(assert (=> d!2115690 d!2116018))

(assert (=> d!2115690 d!2115754))

(declare-fun d!2116022 () Bool)

(assert (=> d!2116022 (= (Exists!3629 (ite c!1248740 lambda!378029 lambda!378030)) (choose!50191 (ite c!1248740 lambda!378029 lambda!378030)))))

(declare-fun bs!1790909 () Bool)

(assert (= bs!1790909 d!2116022))

(declare-fun m!7492438 () Bool)

(assert (=> bs!1790909 m!7492438))

(assert (=> bm!608293 d!2116022))

(declare-fun d!2116024 () Bool)

(assert (=> d!2116024 (= (isEmpty!38198 (tail!12635 (unfocusZipperList!1982 zl!343))) ((_ is Nil!65859) (tail!12635 (unfocusZipperList!1982 zl!343))))))

(assert (=> b!6733984 d!2116024))

(declare-fun d!2116026 () Bool)

(assert (=> d!2116026 (= (tail!12635 (unfocusZipperList!1982 zl!343)) (t!379674 (unfocusZipperList!1982 zl!343)))))

(assert (=> b!6733984 d!2116026))

(declare-fun bm!608441 () Bool)

(declare-fun call!608446 () (InoxSet Context!11890))

(assert (=> bm!608441 (= call!608446 (derivationStepZipperDown!1789 (h!72307 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))))) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))))))) (h!72306 s!2326)))))

(declare-fun b!6734551 () Bool)

(declare-fun e!4068288 () Bool)

(assert (=> b!6734551 (= e!4068288 (nullable!6548 (h!72307 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))))))))))

(declare-fun b!6734552 () Bool)

(declare-fun e!4068290 () (InoxSet Context!11890))

(assert (=> b!6734552 (= e!4068290 call!608446)))

(declare-fun e!4068289 () (InoxSet Context!11890))

(declare-fun b!6734553 () Bool)

(assert (=> b!6734553 (= e!4068289 ((_ map or) call!608446 (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))))))) (h!72306 s!2326))))))

(declare-fun b!6734554 () Bool)

(assert (=> b!6734554 (= e!4068290 ((as const (Array Context!11890 Bool)) false))))

(declare-fun b!6734555 () Bool)

(assert (=> b!6734555 (= e!4068289 e!4068290)))

(declare-fun c!1248984 () Bool)

(assert (=> b!6734555 (= c!1248984 ((_ is Cons!65859) (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))))))))

(declare-fun d!2116028 () Bool)

(declare-fun c!1248983 () Bool)

(assert (=> d!2116028 (= c!1248983 e!4068288)))

(declare-fun res!2755064 () Bool)

(assert (=> d!2116028 (=> (not res!2755064) (not e!4068288))))

(assert (=> d!2116028 (= res!2755064 ((_ is Cons!65859) (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))))))))

(assert (=> d!2116028 (= (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (h!72306 s!2326)) e!4068289)))

(assert (= (and d!2116028 res!2755064) b!6734551))

(assert (= (and d!2116028 c!1248983) b!6734553))

(assert (= (and d!2116028 (not c!1248983)) b!6734555))

(assert (= (and b!6734555 c!1248984) b!6734552))

(assert (= (and b!6734555 (not c!1248984)) b!6734554))

(assert (= (or b!6734553 b!6734552) bm!608441))

(declare-fun m!7492440 () Bool)

(assert (=> bm!608441 m!7492440))

(declare-fun m!7492442 () Bool)

(assert (=> b!6734551 m!7492442))

(declare-fun m!7492444 () Bool)

(assert (=> b!6734553 m!7492444))

(assert (=> b!6734031 d!2116028))

(assert (=> b!6733731 d!2115910))

(declare-fun d!2116030 () Bool)

(assert (=> d!2116030 (= (nullable!6548 (regOne!33634 r!7292)) (nullableFct!2462 (regOne!33634 r!7292)))))

(declare-fun bs!1790910 () Bool)

(assert (= bs!1790910 d!2116030))

(declare-fun m!7492446 () Bool)

(assert (=> bs!1790910 m!7492446))

(assert (=> b!6734087 d!2116030))

(assert (=> bs!1790778 d!2115790))

(declare-fun d!2116032 () Bool)

(declare-fun c!1248985 () Bool)

(assert (=> d!2116032 (= c!1248985 (isEmpty!38193 (tail!12634 (t!379673 s!2326))))))

(declare-fun e!4068291 () Bool)

(assert (=> d!2116032 (= (matchZipper!2547 (derivationStepZipper!2505 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326)) (head!13549 (t!379673 s!2326))) (tail!12634 (t!379673 s!2326))) e!4068291)))

(declare-fun b!6734556 () Bool)

(assert (=> b!6734556 (= e!4068291 (nullableZipper!2276 (derivationStepZipper!2505 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326)) (head!13549 (t!379673 s!2326)))))))

(declare-fun b!6734557 () Bool)

(assert (=> b!6734557 (= e!4068291 (matchZipper!2547 (derivationStepZipper!2505 (derivationStepZipper!2505 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326)) (head!13549 (t!379673 s!2326))) (head!13549 (tail!12634 (t!379673 s!2326)))) (tail!12634 (tail!12634 (t!379673 s!2326)))))))

(assert (= (and d!2116032 c!1248985) b!6734556))

(assert (= (and d!2116032 (not c!1248985)) b!6734557))

(assert (=> d!2116032 m!7491920))

(declare-fun m!7492448 () Bool)

(assert (=> d!2116032 m!7492448))

(assert (=> b!6734556 m!7491918))

(declare-fun m!7492450 () Bool)

(assert (=> b!6734556 m!7492450))

(assert (=> b!6734557 m!7491920))

(declare-fun m!7492452 () Bool)

(assert (=> b!6734557 m!7492452))

(assert (=> b!6734557 m!7491918))

(assert (=> b!6734557 m!7492452))

(declare-fun m!7492454 () Bool)

(assert (=> b!6734557 m!7492454))

(assert (=> b!6734557 m!7491920))

(declare-fun m!7492456 () Bool)

(assert (=> b!6734557 m!7492456))

(assert (=> b!6734557 m!7492454))

(assert (=> b!6734557 m!7492456))

(declare-fun m!7492458 () Bool)

(assert (=> b!6734557 m!7492458))

(assert (=> b!6734082 d!2116032))

(declare-fun bs!1790911 () Bool)

(declare-fun d!2116034 () Bool)

(assert (= bs!1790911 (and d!2116034 b!6733405)))

(declare-fun lambda!378119 () Int)

(assert (=> bs!1790911 (= (= (head!13549 (t!379673 s!2326)) (h!72306 s!2326)) (= lambda!378119 lambda!378011))))

(declare-fun bs!1790912 () Bool)

(assert (= bs!1790912 (and d!2116034 d!2115778)))

(assert (=> bs!1790912 (= (= (head!13549 (t!379673 s!2326)) (h!72306 s!2326)) (= lambda!378119 lambda!378088))))

(declare-fun bs!1790913 () Bool)

(assert (= bs!1790913 (and d!2116034 d!2115784)))

(assert (=> bs!1790913 (= (= (head!13549 (t!379673 s!2326)) (h!72306 s!2326)) (= lambda!378119 lambda!378089))))

(declare-fun bs!1790914 () Bool)

(assert (= bs!1790914 (and d!2116034 d!2115980)))

(assert (=> bs!1790914 (= (= (head!13549 (t!379673 s!2326)) (head!13549 s!2326)) (= lambda!378119 lambda!378114))))

(assert (=> d!2116034 true))

(assert (=> d!2116034 (= (derivationStepZipper!2505 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326)) (head!13549 (t!379673 s!2326))) (flatMap!2042 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326)) lambda!378119))))

(declare-fun bs!1790915 () Bool)

(assert (= bs!1790915 d!2116034))

(assert (=> bs!1790915 m!7491502))

(declare-fun m!7492460 () Bool)

(assert (=> bs!1790915 m!7492460))

(assert (=> b!6734082 d!2116034))

(declare-fun d!2116036 () Bool)

(assert (=> d!2116036 (= (head!13549 (t!379673 s!2326)) (h!72306 (t!379673 s!2326)))))

(assert (=> b!6734082 d!2116036))

(declare-fun d!2116038 () Bool)

(assert (=> d!2116038 (= (tail!12634 (t!379673 s!2326)) (t!379673 (t!379673 s!2326)))))

(assert (=> b!6734082 d!2116038))

(declare-fun d!2116040 () Bool)

(assert (=> d!2116040 (= (flatMap!2042 z!1189 lambda!378089) (choose!50195 z!1189 lambda!378089))))

(declare-fun bs!1790916 () Bool)

(assert (= bs!1790916 d!2116040))

(declare-fun m!7492462 () Bool)

(assert (=> bs!1790916 m!7492462))

(assert (=> d!2115784 d!2116040))

(declare-fun bs!1790917 () Bool)

(declare-fun b!6734560 () Bool)

(assert (= bs!1790917 (and b!6734560 b!6733613)))

(declare-fun lambda!378122 () Int)

(assert (=> bs!1790917 (= (and (= (reg!16890 (regTwo!33635 r!7292)) (reg!16890 r!7292)) (= (regTwo!33635 r!7292) r!7292)) (= lambda!378122 lambda!378029))))

(declare-fun bs!1790918 () Bool)

(assert (= bs!1790918 (and b!6734560 b!6734297)))

(assert (=> bs!1790918 (= (and (= (reg!16890 (regTwo!33635 r!7292)) (reg!16890 (regOne!33635 r!7292))) (= (regTwo!33635 r!7292) (regOne!33635 r!7292))) (= lambda!378122 lambda!378093))))

(declare-fun bs!1790919 () Bool)

(assert (= bs!1790919 (and b!6734560 b!6733407)))

(assert (=> bs!1790919 (= (and (= (reg!16890 (regTwo!33635 r!7292)) (reg!16890 r!7292)) (= (regTwo!33635 r!7292) r!7292)) (= lambda!378122 lambda!378009))))

(assert (=> bs!1790919 (not (= lambda!378122 lambda!378010))))

(declare-fun bs!1790920 () Bool)

(assert (= bs!1790920 (and b!6734560 d!2115948)))

(assert (=> bs!1790920 (not (= lambda!378122 lambda!378111))))

(declare-fun bs!1790921 () Bool)

(assert (= bs!1790921 (and b!6734560 d!2115878)))

(assert (=> bs!1790921 (not (= lambda!378122 lambda!378103))))

(declare-fun bs!1790922 () Bool)

(assert (= bs!1790922 (and b!6734560 d!2115718)))

(assert (=> bs!1790922 (not (= lambda!378122 lambda!378062))))

(assert (=> bs!1790920 (not (= lambda!378122 lambda!378110))))

(assert (=> bs!1790922 (not (= lambda!378122 lambda!378063))))

(declare-fun bs!1790923 () Bool)

(assert (= bs!1790923 (and b!6734560 d!2115704)))

(assert (=> bs!1790923 (not (= lambda!378122 lambda!378052))))

(declare-fun bs!1790924 () Bool)

(assert (= bs!1790924 (and b!6734560 b!6734304)))

(assert (=> bs!1790924 (not (= lambda!378122 lambda!378096))))

(assert (=> bs!1790923 (= (and (= (reg!16890 (regTwo!33635 r!7292)) (reg!16890 r!7292)) (= (regTwo!33635 r!7292) (Star!16561 (reg!16890 r!7292)))) (= lambda!378122 lambda!378055))))

(assert (=> bs!1790919 (not (= lambda!378122 lambda!378008))))

(declare-fun bs!1790925 () Bool)

(assert (= bs!1790925 (and b!6734560 b!6733620)))

(assert (=> bs!1790925 (not (= lambda!378122 lambda!378030))))

(declare-fun bs!1790926 () Bool)

(assert (= bs!1790926 (and b!6734560 d!2115742)))

(assert (=> bs!1790926 (not (= lambda!378122 lambda!378071))))

(assert (=> b!6734560 true))

(assert (=> b!6734560 true))

(declare-fun bs!1790927 () Bool)

(declare-fun b!6734567 () Bool)

(assert (= bs!1790927 (and b!6734567 b!6733613)))

(declare-fun lambda!378125 () Int)

(assert (=> bs!1790927 (not (= lambda!378125 lambda!378029))))

(declare-fun bs!1790928 () Bool)

(assert (= bs!1790928 (and b!6734567 b!6734560)))

(assert (=> bs!1790928 (not (= lambda!378125 lambda!378122))))

(declare-fun bs!1790929 () Bool)

(assert (= bs!1790929 (and b!6734567 b!6734297)))

(assert (=> bs!1790929 (not (= lambda!378125 lambda!378093))))

(declare-fun bs!1790930 () Bool)

(assert (= bs!1790930 (and b!6734567 b!6733407)))

(assert (=> bs!1790930 (not (= lambda!378125 lambda!378009))))

(assert (=> bs!1790930 (= (and (= (regOne!33634 (regTwo!33635 r!7292)) (reg!16890 r!7292)) (= (regTwo!33634 (regTwo!33635 r!7292)) r!7292)) (= lambda!378125 lambda!378010))))

(declare-fun bs!1790931 () Bool)

(assert (= bs!1790931 (and b!6734567 d!2115948)))

(assert (=> bs!1790931 (= (and (= (regOne!33634 (regTwo!33635 r!7292)) (reg!16890 r!7292)) (= (regTwo!33634 (regTwo!33635 r!7292)) r!7292)) (= lambda!378125 lambda!378111))))

(declare-fun bs!1790932 () Bool)

(assert (= bs!1790932 (and b!6734567 d!2115878)))

(assert (=> bs!1790932 (not (= lambda!378125 lambda!378103))))

(declare-fun bs!1790933 () Bool)

(assert (= bs!1790933 (and b!6734567 d!2115718)))

(assert (=> bs!1790933 (not (= lambda!378125 lambda!378062))))

(assert (=> bs!1790931 (not (= lambda!378125 lambda!378110))))

(assert (=> bs!1790933 (= (and (= (regOne!33634 (regTwo!33635 r!7292)) (reg!16890 r!7292)) (= (regTwo!33634 (regTwo!33635 r!7292)) r!7292)) (= lambda!378125 lambda!378063))))

(declare-fun bs!1790934 () Bool)

(assert (= bs!1790934 (and b!6734567 d!2115704)))

(assert (=> bs!1790934 (not (= lambda!378125 lambda!378052))))

(declare-fun bs!1790935 () Bool)

(assert (= bs!1790935 (and b!6734567 b!6734304)))

(assert (=> bs!1790935 (= (and (= (regOne!33634 (regTwo!33635 r!7292)) (regOne!33634 (regOne!33635 r!7292))) (= (regTwo!33634 (regTwo!33635 r!7292)) (regTwo!33634 (regOne!33635 r!7292)))) (= lambda!378125 lambda!378096))))

(assert (=> bs!1790934 (not (= lambda!378125 lambda!378055))))

(assert (=> bs!1790930 (not (= lambda!378125 lambda!378008))))

(declare-fun bs!1790937 () Bool)

(assert (= bs!1790937 (and b!6734567 b!6733620)))

(assert (=> bs!1790937 (= (and (= (regOne!33634 (regTwo!33635 r!7292)) (regOne!33634 r!7292)) (= (regTwo!33634 (regTwo!33635 r!7292)) (regTwo!33634 r!7292))) (= lambda!378125 lambda!378030))))

(declare-fun bs!1790939 () Bool)

(assert (= bs!1790939 (and b!6734567 d!2115742)))

(assert (=> bs!1790939 (not (= lambda!378125 lambda!378071))))

(assert (=> b!6734567 true))

(assert (=> b!6734567 true))

(declare-fun d!2116042 () Bool)

(declare-fun c!1248987 () Bool)

(assert (=> d!2116042 (= c!1248987 ((_ is EmptyExpr!16561) (regTwo!33635 r!7292)))))

(declare-fun e!4068299 () Bool)

(assert (=> d!2116042 (= (matchRSpec!3662 (regTwo!33635 r!7292) s!2326) e!4068299)))

(declare-fun e!4068295 () Bool)

(declare-fun call!608448 () Bool)

(assert (=> b!6734560 (= e!4068295 call!608448)))

(declare-fun b!6734561 () Bool)

(declare-fun e!4068300 () Bool)

(assert (=> b!6734561 (= e!4068300 (= s!2326 (Cons!65858 (c!1248671 (regTwo!33635 r!7292)) Nil!65858)))))

(declare-fun b!6734562 () Bool)

(declare-fun c!1248986 () Bool)

(assert (=> b!6734562 (= c!1248986 ((_ is Union!16561) (regTwo!33635 r!7292)))))

(declare-fun e!4068298 () Bool)

(assert (=> b!6734562 (= e!4068300 e!4068298)))

(declare-fun bm!608442 () Bool)

(declare-fun call!608447 () Bool)

(assert (=> bm!608442 (= call!608447 (isEmpty!38193 s!2326))))

(declare-fun b!6734563 () Bool)

(declare-fun e!4068297 () Bool)

(assert (=> b!6734563 (= e!4068298 e!4068297)))

(declare-fun c!1248988 () Bool)

(assert (=> b!6734563 (= c!1248988 ((_ is Star!16561) (regTwo!33635 r!7292)))))

(declare-fun b!6734564 () Bool)

(declare-fun e!4068296 () Bool)

(assert (=> b!6734564 (= e!4068296 (matchRSpec!3662 (regTwo!33635 (regTwo!33635 r!7292)) s!2326))))

(declare-fun b!6734565 () Bool)

(assert (=> b!6734565 (= e!4068298 e!4068296)))

(declare-fun res!2755067 () Bool)

(assert (=> b!6734565 (= res!2755067 (matchRSpec!3662 (regOne!33635 (regTwo!33635 r!7292)) s!2326))))

(assert (=> b!6734565 (=> res!2755067 e!4068296)))

(declare-fun b!6734566 () Bool)

(declare-fun c!1248989 () Bool)

(assert (=> b!6734566 (= c!1248989 ((_ is ElementMatch!16561) (regTwo!33635 r!7292)))))

(declare-fun e!4068294 () Bool)

(assert (=> b!6734566 (= e!4068294 e!4068300)))

(assert (=> b!6734567 (= e!4068297 call!608448)))

(declare-fun b!6734568 () Bool)

(assert (=> b!6734568 (= e!4068299 e!4068294)))

(declare-fun res!2755068 () Bool)

(assert (=> b!6734568 (= res!2755068 (not ((_ is EmptyLang!16561) (regTwo!33635 r!7292))))))

(assert (=> b!6734568 (=> (not res!2755068) (not e!4068294))))

(declare-fun b!6734571 () Bool)

(declare-fun res!2755069 () Bool)

(assert (=> b!6734571 (=> res!2755069 e!4068295)))

(assert (=> b!6734571 (= res!2755069 call!608447)))

(assert (=> b!6734571 (= e!4068297 e!4068295)))

(declare-fun b!6734572 () Bool)

(assert (=> b!6734572 (= e!4068299 call!608447)))

(declare-fun bm!608443 () Bool)

(assert (=> bm!608443 (= call!608448 (Exists!3629 (ite c!1248988 lambda!378122 lambda!378125)))))

(assert (= (and d!2116042 c!1248987) b!6734572))

(assert (= (and d!2116042 (not c!1248987)) b!6734568))

(assert (= (and b!6734568 res!2755068) b!6734566))

(assert (= (and b!6734566 c!1248989) b!6734561))

(assert (= (and b!6734566 (not c!1248989)) b!6734562))

(assert (= (and b!6734562 c!1248986) b!6734565))

(assert (= (and b!6734562 (not c!1248986)) b!6734563))

(assert (= (and b!6734565 (not res!2755067)) b!6734564))

(assert (= (and b!6734563 c!1248988) b!6734571))

(assert (= (and b!6734563 (not c!1248988)) b!6734567))

(assert (= (and b!6734571 (not res!2755069)) b!6734560))

(assert (= (or b!6734560 b!6734567) bm!608443))

(assert (= (or b!6734572 b!6734571) bm!608442))

(assert (=> bm!608442 m!7491474))

(declare-fun m!7492464 () Bool)

(assert (=> b!6734564 m!7492464))

(declare-fun m!7492466 () Bool)

(assert (=> b!6734565 m!7492466))

(declare-fun m!7492468 () Bool)

(assert (=> bm!608443 m!7492468))

(assert (=> b!6733617 d!2116042))

(declare-fun bm!608444 () Bool)

(declare-fun call!608450 () (InoxSet Context!11890))

(declare-fun call!608454 () (InoxSet Context!11890))

(assert (=> bm!608444 (= call!608450 call!608454)))

(declare-fun c!1248993 () Bool)

(declare-fun call!608453 () (InoxSet Context!11890))

(declare-fun call!608449 () List!65983)

(declare-fun bm!608445 () Bool)

(assert (=> bm!608445 (= call!608453 (derivationStepZipperDown!1789 (ite c!1248993 (regOne!33635 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))) (regOne!33634 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292))))))) (ite c!1248993 (ite (or c!1248849 c!1248847) lt!2438119 (Context!11891 call!608345)) (Context!11891 call!608449)) (h!72306 s!2326)))))

(declare-fun d!2116044 () Bool)

(declare-fun c!1248990 () Bool)

(assert (=> d!2116044 (= c!1248990 (and ((_ is ElementMatch!16561) (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))) (= (c!1248671 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))) (h!72306 s!2326))))))

(declare-fun e!4068303 () (InoxSet Context!11890))

(assert (=> d!2116044 (= (derivationStepZipperDown!1789 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292))))) (ite (or c!1248849 c!1248847) lt!2438119 (Context!11891 call!608345)) (h!72306 s!2326)) e!4068303)))

(declare-fun b!6734579 () Bool)

(declare-fun e!4068307 () (InoxSet Context!11890))

(assert (=> b!6734579 (= e!4068307 call!608450)))

(declare-fun bm!608446 () Bool)

(declare-fun call!608451 () List!65983)

(assert (=> bm!608446 (= call!608451 call!608449)))

(declare-fun b!6734580 () Bool)

(declare-fun c!1248991 () Bool)

(declare-fun e!4068304 () Bool)

(assert (=> b!6734580 (= c!1248991 e!4068304)))

(declare-fun res!2755078 () Bool)

(assert (=> b!6734580 (=> (not res!2755078) (not e!4068304))))

(assert (=> b!6734580 (= res!2755078 ((_ is Concat!25406) (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))))))

(declare-fun e!4068305 () (InoxSet Context!11890))

(declare-fun e!4068308 () (InoxSet Context!11890))

(assert (=> b!6734580 (= e!4068305 e!4068308)))

(declare-fun b!6734581 () Bool)

(assert (=> b!6734581 (= e!4068304 (nullable!6548 (regOne!33634 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292))))))))))

(declare-fun b!6734582 () Bool)

(declare-fun call!608452 () (InoxSet Context!11890))

(assert (=> b!6734582 (= e!4068305 ((_ map or) call!608453 call!608452))))

(declare-fun b!6734583 () Bool)

(declare-fun e!4068306 () (InoxSet Context!11890))

(assert (=> b!6734583 (= e!4068308 e!4068306)))

(declare-fun c!1248992 () Bool)

(assert (=> b!6734583 (= c!1248992 ((_ is Concat!25406) (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))))))

(declare-fun b!6734584 () Bool)

(assert (=> b!6734584 (= e!4068308 ((_ map or) call!608453 call!608454))))

(declare-fun b!6734585 () Bool)

(assert (=> b!6734585 (= e!4068303 e!4068305)))

(assert (=> b!6734585 (= c!1248993 ((_ is Union!16561) (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))))))

(declare-fun bm!608447 () Bool)

(assert (=> bm!608447 (= call!608452 (derivationStepZipperDown!1789 (ite c!1248993 (regTwo!33635 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))) (ite c!1248991 (regTwo!33634 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))) (ite c!1248992 (regOne!33634 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))) (reg!16890 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292))))))))) (ite (or c!1248993 c!1248991) (ite (or c!1248849 c!1248847) lt!2438119 (Context!11891 call!608345)) (Context!11891 call!608451)) (h!72306 s!2326)))))

(declare-fun b!6734586 () Bool)

(assert (=> b!6734586 (= e!4068303 (store ((as const (Array Context!11890 Bool)) false) (ite (or c!1248849 c!1248847) lt!2438119 (Context!11891 call!608345)) true))))

(declare-fun b!6734587 () Bool)

(assert (=> b!6734587 (= e!4068306 call!608450)))

(declare-fun b!6734588 () Bool)

(assert (=> b!6734588 (= e!4068307 ((as const (Array Context!11890 Bool)) false))))

(declare-fun bm!608448 () Bool)

(assert (=> bm!608448 (= call!608454 call!608452)))

(declare-fun b!6734589 () Bool)

(declare-fun c!1248994 () Bool)

(assert (=> b!6734589 (= c!1248994 ((_ is Star!16561) (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))))))

(assert (=> b!6734589 (= e!4068306 e!4068307)))

(declare-fun bm!608449 () Bool)

(assert (=> bm!608449 (= call!608449 ($colon$colon!2378 (exprs!6445 (ite (or c!1248849 c!1248847) lt!2438119 (Context!11891 call!608345))) (ite (or c!1248991 c!1248992) (regTwo!33634 (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292)))))) (ite c!1248849 (regTwo!33635 (reg!16890 r!7292)) (ite c!1248847 (regTwo!33634 (reg!16890 r!7292)) (ite c!1248848 (regOne!33634 (reg!16890 r!7292)) (reg!16890 (reg!16890 r!7292))))))))))

(assert (= (and d!2116044 c!1248990) b!6734586))

(assert (= (and d!2116044 (not c!1248990)) b!6734585))

(assert (= (and b!6734585 c!1248993) b!6734582))

(assert (= (and b!6734585 (not c!1248993)) b!6734580))

(assert (= (and b!6734580 res!2755078) b!6734581))

(assert (= (and b!6734580 c!1248991) b!6734584))

(assert (= (and b!6734580 (not c!1248991)) b!6734583))

(assert (= (and b!6734583 c!1248992) b!6734587))

(assert (= (and b!6734583 (not c!1248992)) b!6734589))

(assert (= (and b!6734589 c!1248994) b!6734579))

(assert (= (and b!6734589 (not c!1248994)) b!6734588))

(assert (= (or b!6734587 b!6734579) bm!608446))

(assert (= (or b!6734587 b!6734579) bm!608444))

(assert (= (or b!6734584 bm!608446) bm!608449))

(assert (= (or b!6734584 bm!608444) bm!608448))

(assert (= (or b!6734582 bm!608448) bm!608447))

(assert (= (or b!6734582 b!6734584) bm!608445))

(declare-fun m!7492470 () Bool)

(assert (=> bm!608447 m!7492470))

(declare-fun m!7492472 () Bool)

(assert (=> b!6734586 m!7492472))

(declare-fun m!7492474 () Bool)

(assert (=> bm!608445 m!7492474))

(declare-fun m!7492476 () Bool)

(assert (=> b!6734581 m!7492476))

(declare-fun m!7492478 () Bool)

(assert (=> bm!608449 m!7492478))

(assert (=> bm!608341 d!2116044))

(declare-fun bs!1790945 () Bool)

(declare-fun d!2116046 () Bool)

(assert (= bs!1790945 (and d!2116046 d!2115750)))

(declare-fun lambda!378128 () Int)

(assert (=> bs!1790945 (= lambda!378128 lambda!378083)))

(declare-fun bs!1790946 () Bool)

(assert (= bs!1790946 (and d!2116046 d!2115744)))

(assert (=> bs!1790946 (= lambda!378128 lambda!378074)))

(declare-fun bs!1790947 () Bool)

(assert (= bs!1790947 (and d!2116046 d!2115756)))

(assert (=> bs!1790947 (= lambda!378128 lambda!378084)))

(declare-fun bs!1790948 () Bool)

(assert (= bs!1790948 (and d!2116046 d!2115758)))

(assert (=> bs!1790948 (= lambda!378128 lambda!378085)))

(declare-fun bs!1790949 () Bool)

(assert (= bs!1790949 (and d!2116046 d!2115746)))

(assert (=> bs!1790949 (= lambda!378128 lambda!378077)))

(declare-fun bs!1790950 () Bool)

(assert (= bs!1790950 (and d!2116046 d!2115748)))

(assert (=> bs!1790950 (= lambda!378128 lambda!378080)))

(declare-fun bs!1790951 () Bool)

(assert (= bs!1790951 (and d!2116046 d!2115862)))

(assert (=> bs!1790951 (= lambda!378128 lambda!378091)))

(assert (=> d!2116046 (= (inv!84649 (h!72308 (t!379675 zl!343))) (forall!15761 (exprs!6445 (h!72308 (t!379675 zl!343))) lambda!378128))))

(declare-fun bs!1790953 () Bool)

(assert (= bs!1790953 d!2116046))

(declare-fun m!7492480 () Bool)

(assert (=> bs!1790953 m!7492480))

(assert (=> b!6734149 d!2116046))

(declare-fun b!6734590 () Bool)

(declare-fun res!2755083 () Bool)

(declare-fun e!4068310 () Bool)

(assert (=> b!6734590 (=> res!2755083 e!4068310)))

(assert (=> b!6734590 (= res!2755083 (not ((_ is Concat!25406) lt!2438195)))))

(declare-fun e!4068309 () Bool)

(assert (=> b!6734590 (= e!4068309 e!4068310)))

(declare-fun b!6734591 () Bool)

(declare-fun e!4068315 () Bool)

(assert (=> b!6734591 (= e!4068315 e!4068309)))

(declare-fun c!1248995 () Bool)

(assert (=> b!6734591 (= c!1248995 ((_ is Union!16561) lt!2438195))))

(declare-fun call!608455 () Bool)

(declare-fun bm!608450 () Bool)

(declare-fun c!1248996 () Bool)

(assert (=> bm!608450 (= call!608455 (validRegex!8297 (ite c!1248996 (reg!16890 lt!2438195) (ite c!1248995 (regTwo!33635 lt!2438195) (regTwo!33634 lt!2438195)))))))

(declare-fun b!6734592 () Bool)

(declare-fun e!4068312 () Bool)

(assert (=> b!6734592 (= e!4068312 call!608455)))

(declare-fun b!6734593 () Bool)

(declare-fun e!4068314 () Bool)

(declare-fun call!608457 () Bool)

(assert (=> b!6734593 (= e!4068314 call!608457)))

(declare-fun b!6734595 () Bool)

(declare-fun e!4068311 () Bool)

(assert (=> b!6734595 (= e!4068311 call!608457)))

(declare-fun b!6734596 () Bool)

(assert (=> b!6734596 (= e!4068315 e!4068312)))

(declare-fun res!2755082 () Bool)

(assert (=> b!6734596 (= res!2755082 (not (nullable!6548 (reg!16890 lt!2438195))))))

(assert (=> b!6734596 (=> (not res!2755082) (not e!4068312))))

(declare-fun b!6734597 () Bool)

(assert (=> b!6734597 (= e!4068310 e!4068311)))

(declare-fun res!2755080 () Bool)

(assert (=> b!6734597 (=> (not res!2755080) (not e!4068311))))

(declare-fun call!608456 () Bool)

(assert (=> b!6734597 (= res!2755080 call!608456)))

(declare-fun bm!608451 () Bool)

(assert (=> bm!608451 (= call!608457 call!608455)))

(declare-fun bm!608452 () Bool)

(assert (=> bm!608452 (= call!608456 (validRegex!8297 (ite c!1248995 (regOne!33635 lt!2438195) (regOne!33634 lt!2438195))))))

(declare-fun b!6734598 () Bool)

(declare-fun e!4068313 () Bool)

(assert (=> b!6734598 (= e!4068313 e!4068315)))

(assert (=> b!6734598 (= c!1248996 ((_ is Star!16561) lt!2438195))))

(declare-fun d!2116048 () Bool)

(declare-fun res!2755079 () Bool)

(assert (=> d!2116048 (=> res!2755079 e!4068313)))

(assert (=> d!2116048 (= res!2755079 ((_ is ElementMatch!16561) lt!2438195))))

(assert (=> d!2116048 (= (validRegex!8297 lt!2438195) e!4068313)))

(declare-fun b!6734594 () Bool)

(declare-fun res!2755081 () Bool)

(assert (=> b!6734594 (=> (not res!2755081) (not e!4068314))))

(assert (=> b!6734594 (= res!2755081 call!608456)))

(assert (=> b!6734594 (= e!4068309 e!4068314)))

(assert (= (and d!2116048 (not res!2755079)) b!6734598))

(assert (= (and b!6734598 c!1248996) b!6734596))

(assert (= (and b!6734598 (not c!1248996)) b!6734591))

(assert (= (and b!6734596 res!2755082) b!6734592))

(assert (= (and b!6734591 c!1248995) b!6734594))

(assert (= (and b!6734591 (not c!1248995)) b!6734590))

(assert (= (and b!6734594 res!2755081) b!6734593))

(assert (= (and b!6734590 (not res!2755083)) b!6734597))

(assert (= (and b!6734597 res!2755080) b!6734595))

(assert (= (or b!6734593 b!6734595) bm!608451))

(assert (= (or b!6734594 b!6734597) bm!608452))

(assert (= (or b!6734592 bm!608451) bm!608450))

(declare-fun m!7492486 () Bool)

(assert (=> bm!608450 m!7492486))

(declare-fun m!7492488 () Bool)

(assert (=> b!6734596 m!7492488))

(declare-fun m!7492490 () Bool)

(assert (=> bm!608452 m!7492490))

(assert (=> d!2115744 d!2116048))

(declare-fun d!2116052 () Bool)

(declare-fun res!2755085 () Bool)

(declare-fun e!4068322 () Bool)

(assert (=> d!2116052 (=> res!2755085 e!4068322)))

(assert (=> d!2116052 (= res!2755085 ((_ is Nil!65859) (exprs!6445 (h!72308 zl!343))))))

(assert (=> d!2116052 (= (forall!15761 (exprs!6445 (h!72308 zl!343)) lambda!378074) e!4068322)))

(declare-fun b!6734610 () Bool)

(declare-fun e!4068323 () Bool)

(assert (=> b!6734610 (= e!4068322 e!4068323)))

(declare-fun res!2755086 () Bool)

(assert (=> b!6734610 (=> (not res!2755086) (not e!4068323))))

(assert (=> b!6734610 (= res!2755086 (dynLambda!26274 lambda!378074 (h!72307 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun b!6734611 () Bool)

(assert (=> b!6734611 (= e!4068323 (forall!15761 (t!379674 (exprs!6445 (h!72308 zl!343))) lambda!378074))))

(assert (= (and d!2116052 (not res!2755085)) b!6734610))

(assert (= (and b!6734610 res!2755086) b!6734611))

(declare-fun b_lambda!253567 () Bool)

(assert (=> (not b_lambda!253567) (not b!6734610)))

(declare-fun m!7492492 () Bool)

(assert (=> b!6734610 m!7492492))

(declare-fun m!7492494 () Bool)

(assert (=> b!6734611 m!7492494))

(assert (=> d!2115744 d!2116052))

(declare-fun b!6734612 () Bool)

(declare-fun res!2755091 () Bool)

(declare-fun e!4068325 () Bool)

(assert (=> b!6734612 (=> res!2755091 e!4068325)))

(assert (=> b!6734612 (= res!2755091 (not ((_ is Concat!25406) lt!2438204)))))

(declare-fun e!4068324 () Bool)

(assert (=> b!6734612 (= e!4068324 e!4068325)))

(declare-fun b!6734613 () Bool)

(declare-fun e!4068330 () Bool)

(assert (=> b!6734613 (= e!4068330 e!4068324)))

(declare-fun c!1249002 () Bool)

(assert (=> b!6734613 (= c!1249002 ((_ is Union!16561) lt!2438204))))

(declare-fun c!1249003 () Bool)

(declare-fun call!608464 () Bool)

(declare-fun bm!608459 () Bool)

(assert (=> bm!608459 (= call!608464 (validRegex!8297 (ite c!1249003 (reg!16890 lt!2438204) (ite c!1249002 (regTwo!33635 lt!2438204) (regTwo!33634 lt!2438204)))))))

(declare-fun b!6734614 () Bool)

(declare-fun e!4068327 () Bool)

(assert (=> b!6734614 (= e!4068327 call!608464)))

(declare-fun b!6734615 () Bool)

(declare-fun e!4068329 () Bool)

(declare-fun call!608466 () Bool)

(assert (=> b!6734615 (= e!4068329 call!608466)))

(declare-fun b!6734617 () Bool)

(declare-fun e!4068326 () Bool)

(assert (=> b!6734617 (= e!4068326 call!608466)))

(declare-fun b!6734618 () Bool)

(assert (=> b!6734618 (= e!4068330 e!4068327)))

(declare-fun res!2755090 () Bool)

(assert (=> b!6734618 (= res!2755090 (not (nullable!6548 (reg!16890 lt!2438204))))))

(assert (=> b!6734618 (=> (not res!2755090) (not e!4068327))))

(declare-fun b!6734619 () Bool)

(assert (=> b!6734619 (= e!4068325 e!4068326)))

(declare-fun res!2755088 () Bool)

(assert (=> b!6734619 (=> (not res!2755088) (not e!4068326))))

(declare-fun call!608465 () Bool)

(assert (=> b!6734619 (= res!2755088 call!608465)))

(declare-fun bm!608460 () Bool)

(assert (=> bm!608460 (= call!608466 call!608464)))

(declare-fun bm!608461 () Bool)

(assert (=> bm!608461 (= call!608465 (validRegex!8297 (ite c!1249002 (regOne!33635 lt!2438204) (regOne!33634 lt!2438204))))))

(declare-fun b!6734620 () Bool)

(declare-fun e!4068328 () Bool)

(assert (=> b!6734620 (= e!4068328 e!4068330)))

(assert (=> b!6734620 (= c!1249003 ((_ is Star!16561) lt!2438204))))

(declare-fun d!2116054 () Bool)

(declare-fun res!2755087 () Bool)

(assert (=> d!2116054 (=> res!2755087 e!4068328)))

(assert (=> d!2116054 (= res!2755087 ((_ is ElementMatch!16561) lt!2438204))))

(assert (=> d!2116054 (= (validRegex!8297 lt!2438204) e!4068328)))

(declare-fun b!6734616 () Bool)

(declare-fun res!2755089 () Bool)

(assert (=> b!6734616 (=> (not res!2755089) (not e!4068329))))

(assert (=> b!6734616 (= res!2755089 call!608465)))

(assert (=> b!6734616 (= e!4068324 e!4068329)))

(assert (= (and d!2116054 (not res!2755087)) b!6734620))

(assert (= (and b!6734620 c!1249003) b!6734618))

(assert (= (and b!6734620 (not c!1249003)) b!6734613))

(assert (= (and b!6734618 res!2755090) b!6734614))

(assert (= (and b!6734613 c!1249002) b!6734616))

(assert (= (and b!6734613 (not c!1249002)) b!6734612))

(assert (= (and b!6734616 res!2755089) b!6734615))

(assert (= (and b!6734612 (not res!2755091)) b!6734619))

(assert (= (and b!6734619 res!2755088) b!6734617))

(assert (= (or b!6734615 b!6734617) bm!608460))

(assert (= (or b!6734616 b!6734619) bm!608461))

(assert (= (or b!6734614 bm!608460) bm!608459))

(declare-fun m!7492504 () Bool)

(assert (=> bm!608459 m!7492504))

(declare-fun m!7492508 () Bool)

(assert (=> b!6734618 m!7492508))

(declare-fun m!7492510 () Bool)

(assert (=> bm!608461 m!7492510))

(assert (=> d!2115752 d!2116054))

(declare-fun bs!1790954 () Bool)

(declare-fun d!2116058 () Bool)

(assert (= bs!1790954 (and d!2116058 d!2115750)))

(declare-fun lambda!378129 () Int)

(assert (=> bs!1790954 (= lambda!378129 lambda!378083)))

(declare-fun bs!1790955 () Bool)

(assert (= bs!1790955 (and d!2116058 d!2116046)))

(assert (=> bs!1790955 (= lambda!378129 lambda!378128)))

(declare-fun bs!1790956 () Bool)

(assert (= bs!1790956 (and d!2116058 d!2115744)))

(assert (=> bs!1790956 (= lambda!378129 lambda!378074)))

(declare-fun bs!1790957 () Bool)

(assert (= bs!1790957 (and d!2116058 d!2115756)))

(assert (=> bs!1790957 (= lambda!378129 lambda!378084)))

(declare-fun bs!1790958 () Bool)

(assert (= bs!1790958 (and d!2116058 d!2115758)))

(assert (=> bs!1790958 (= lambda!378129 lambda!378085)))

(declare-fun bs!1790959 () Bool)

(assert (= bs!1790959 (and d!2116058 d!2115746)))

(assert (=> bs!1790959 (= lambda!378129 lambda!378077)))

(declare-fun bs!1790960 () Bool)

(assert (= bs!1790960 (and d!2116058 d!2115748)))

(assert (=> bs!1790960 (= lambda!378129 lambda!378080)))

(declare-fun bs!1790961 () Bool)

(assert (= bs!1790961 (and d!2116058 d!2115862)))

(assert (=> bs!1790961 (= lambda!378129 lambda!378091)))

(declare-fun b!6734635 () Bool)

(declare-fun e!4068341 () Bool)

(declare-fun lt!2438233 () Regex!16561)

(assert (=> b!6734635 (= e!4068341 (= lt!2438233 (head!13550 (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860)))))))

(declare-fun b!6734636 () Bool)

(declare-fun e!4068340 () Regex!16561)

(declare-fun e!4068339 () Regex!16561)

(assert (=> b!6734636 (= e!4068340 e!4068339)))

(declare-fun c!1249008 () Bool)

(assert (=> b!6734636 (= c!1249008 ((_ is Cons!65859) (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860))))))

(declare-fun b!6734637 () Bool)

(assert (=> b!6734637 (= e!4068339 EmptyLang!16561)))

(declare-fun b!6734638 () Bool)

(assert (=> b!6734638 (= e!4068341 (isUnion!1365 lt!2438233))))

(declare-fun e!4068343 () Bool)

(assert (=> d!2116058 e!4068343))

(declare-fun res!2755101 () Bool)

(assert (=> d!2116058 (=> (not res!2755101) (not e!4068343))))

(assert (=> d!2116058 (= res!2755101 (validRegex!8297 lt!2438233))))

(assert (=> d!2116058 (= lt!2438233 e!4068340)))

(declare-fun c!1249009 () Bool)

(declare-fun e!4068342 () Bool)

(assert (=> d!2116058 (= c!1249009 e!4068342)))

(declare-fun res!2755100 () Bool)

(assert (=> d!2116058 (=> (not res!2755100) (not e!4068342))))

(assert (=> d!2116058 (= res!2755100 ((_ is Cons!65859) (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860))))))

(assert (=> d!2116058 (forall!15761 (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860)) lambda!378129)))

(assert (=> d!2116058 (= (generalisedUnion!2405 (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860))) lt!2438233)))

(declare-fun b!6734639 () Bool)

(assert (=> b!6734639 (= e!4068340 (h!72307 (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860))))))

(declare-fun b!6734640 () Bool)

(declare-fun e!4068338 () Bool)

(assert (=> b!6734640 (= e!4068343 e!4068338)))

(declare-fun c!1249007 () Bool)

(assert (=> b!6734640 (= c!1249007 (isEmpty!38198 (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860))))))

(declare-fun b!6734641 () Bool)

(assert (=> b!6734641 (= e!4068342 (isEmpty!38198 (t!379674 (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860)))))))

(declare-fun b!6734642 () Bool)

(assert (=> b!6734642 (= e!4068338 (isEmptyLang!1935 lt!2438233))))

(declare-fun b!6734643 () Bool)

(assert (=> b!6734643 (= e!4068338 e!4068341)))

(declare-fun c!1249010 () Bool)

(assert (=> b!6734643 (= c!1249010 (isEmpty!38198 (tail!12635 (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860)))))))

(declare-fun b!6734644 () Bool)

(assert (=> b!6734644 (= e!4068339 (Union!16561 (h!72307 (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860))) (generalisedUnion!2405 (t!379674 (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860))))))))

(assert (= (and d!2116058 res!2755100) b!6734641))

(assert (= (and d!2116058 c!1249009) b!6734639))

(assert (= (and d!2116058 (not c!1249009)) b!6734636))

(assert (= (and b!6734636 c!1249008) b!6734644))

(assert (= (and b!6734636 (not c!1249008)) b!6734637))

(assert (= (and d!2116058 res!2755101) b!6734640))

(assert (= (and b!6734640 c!1249007) b!6734642))

(assert (= (and b!6734640 (not c!1249007)) b!6734643))

(assert (= (and b!6734643 c!1249010) b!6734635))

(assert (= (and b!6734643 (not c!1249010)) b!6734638))

(declare-fun m!7492522 () Bool)

(assert (=> d!2116058 m!7492522))

(assert (=> d!2116058 m!7491858))

(declare-fun m!7492524 () Bool)

(assert (=> d!2116058 m!7492524))

(declare-fun m!7492526 () Bool)

(assert (=> b!6734638 m!7492526))

(assert (=> b!6734643 m!7491858))

(declare-fun m!7492528 () Bool)

(assert (=> b!6734643 m!7492528))

(assert (=> b!6734643 m!7492528))

(declare-fun m!7492530 () Bool)

(assert (=> b!6734643 m!7492530))

(assert (=> b!6734640 m!7491858))

(declare-fun m!7492532 () Bool)

(assert (=> b!6734640 m!7492532))

(declare-fun m!7492534 () Bool)

(assert (=> b!6734641 m!7492534))

(declare-fun m!7492536 () Bool)

(assert (=> b!6734642 m!7492536))

(declare-fun m!7492538 () Bool)

(assert (=> b!6734644 m!7492538))

(assert (=> b!6734635 m!7491858))

(declare-fun m!7492540 () Bool)

(assert (=> b!6734635 m!7492540))

(assert (=> d!2115752 d!2116058))

(declare-fun bs!1790962 () Bool)

(declare-fun d!2116062 () Bool)

(assert (= bs!1790962 (and d!2116062 d!2115750)))

(declare-fun lambda!378130 () Int)

(assert (=> bs!1790962 (= lambda!378130 lambda!378083)))

(declare-fun bs!1790963 () Bool)

(assert (= bs!1790963 (and d!2116062 d!2116058)))

(assert (=> bs!1790963 (= lambda!378130 lambda!378129)))

(declare-fun bs!1790964 () Bool)

(assert (= bs!1790964 (and d!2116062 d!2116046)))

(assert (=> bs!1790964 (= lambda!378130 lambda!378128)))

(declare-fun bs!1790965 () Bool)

(assert (= bs!1790965 (and d!2116062 d!2115744)))

(assert (=> bs!1790965 (= lambda!378130 lambda!378074)))

(declare-fun bs!1790966 () Bool)

(assert (= bs!1790966 (and d!2116062 d!2115756)))

(assert (=> bs!1790966 (= lambda!378130 lambda!378084)))

(declare-fun bs!1790967 () Bool)

(assert (= bs!1790967 (and d!2116062 d!2115758)))

(assert (=> bs!1790967 (= lambda!378130 lambda!378085)))

(declare-fun bs!1790968 () Bool)

(assert (= bs!1790968 (and d!2116062 d!2115746)))

(assert (=> bs!1790968 (= lambda!378130 lambda!378077)))

(declare-fun bs!1790969 () Bool)

(assert (= bs!1790969 (and d!2116062 d!2115748)))

(assert (=> bs!1790969 (= lambda!378130 lambda!378080)))

(declare-fun bs!1790970 () Bool)

(assert (= bs!1790970 (and d!2116062 d!2115862)))

(assert (=> bs!1790970 (= lambda!378130 lambda!378091)))

(declare-fun lt!2438234 () List!65983)

(assert (=> d!2116062 (forall!15761 lt!2438234 lambda!378130)))

(declare-fun e!4068344 () List!65983)

(assert (=> d!2116062 (= lt!2438234 e!4068344)))

(declare-fun c!1249011 () Bool)

(assert (=> d!2116062 (= c!1249011 ((_ is Cons!65860) (Cons!65860 lt!2438117 Nil!65860)))))

(assert (=> d!2116062 (= (unfocusZipperList!1982 (Cons!65860 lt!2438117 Nil!65860)) lt!2438234)))

(declare-fun b!6734645 () Bool)

(assert (=> b!6734645 (= e!4068344 (Cons!65859 (generalisedConcat!2158 (exprs!6445 (h!72308 (Cons!65860 lt!2438117 Nil!65860)))) (unfocusZipperList!1982 (t!379675 (Cons!65860 lt!2438117 Nil!65860)))))))

(declare-fun b!6734646 () Bool)

(assert (=> b!6734646 (= e!4068344 Nil!65859)))

(assert (= (and d!2116062 c!1249011) b!6734645))

(assert (= (and d!2116062 (not c!1249011)) b!6734646))

(declare-fun m!7492542 () Bool)

(assert (=> d!2116062 m!7492542))

(declare-fun m!7492544 () Bool)

(assert (=> b!6734645 m!7492544))

(declare-fun m!7492546 () Bool)

(assert (=> b!6734645 m!7492546))

(assert (=> d!2115752 d!2116062))

(declare-fun d!2116064 () Bool)

(assert (=> d!2116064 (= (isEmpty!38197 (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 Nil!65858 s!2326 s!2326)) (not ((_ is Some!16447) (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 Nil!65858 s!2326 s!2326))))))

(assert (=> d!2115696 d!2116064))

(assert (=> bm!608312 d!2115714))

(declare-fun d!2116066 () Bool)

(assert (=> d!2116066 (= (isUnion!1365 lt!2438198) ((_ is Union!16561) lt!2438198))))

(assert (=> b!6733979 d!2116066))

(declare-fun d!2116068 () Bool)

(assert (=> d!2116068 (= (flatMap!2042 lt!2438114 lambda!378088) (choose!50195 lt!2438114 lambda!378088))))

(declare-fun bs!1790971 () Bool)

(assert (= bs!1790971 d!2116068))

(declare-fun m!7492548 () Bool)

(assert (=> bs!1790971 m!7492548))

(assert (=> d!2115778 d!2116068))

(declare-fun d!2116070 () Bool)

(assert (=> d!2116070 true))

(declare-fun setRes!45956 () Bool)

(assert (=> d!2116070 setRes!45956))

(declare-fun condSetEmpty!45956 () Bool)

(declare-fun res!2755104 () (InoxSet Context!11890))

(assert (=> d!2116070 (= condSetEmpty!45956 (= res!2755104 ((as const (Array Context!11890 Bool)) false)))))

(assert (=> d!2116070 (= (choose!50195 z!1189 lambda!378011) res!2755104)))

(declare-fun setIsEmpty!45956 () Bool)

(assert (=> setIsEmpty!45956 setRes!45956))

(declare-fun setElem!45956 () Context!11890)

(declare-fun tp!1846289 () Bool)

(declare-fun e!4068347 () Bool)

(declare-fun setNonEmpty!45956 () Bool)

(assert (=> setNonEmpty!45956 (= setRes!45956 (and tp!1846289 (inv!84649 setElem!45956) e!4068347))))

(declare-fun setRest!45956 () (InoxSet Context!11890))

(assert (=> setNonEmpty!45956 (= res!2755104 ((_ map or) (store ((as const (Array Context!11890 Bool)) false) setElem!45956 true) setRest!45956))))

(declare-fun b!6734649 () Bool)

(declare-fun tp!1846288 () Bool)

(assert (=> b!6734649 (= e!4068347 tp!1846288)))

(assert (= (and d!2116070 condSetEmpty!45956) setIsEmpty!45956))

(assert (= (and d!2116070 (not condSetEmpty!45956)) setNonEmpty!45956))

(assert (= setNonEmpty!45956 b!6734649))

(declare-fun m!7492550 () Bool)

(assert (=> setNonEmpty!45956 m!7492550))

(assert (=> d!2115788 d!2116070))

(assert (=> d!2115774 d!2115714))

(declare-fun d!2116072 () Bool)

(assert (=> d!2116072 (= (isEmpty!38198 (unfocusZipperList!1982 zl!343)) ((_ is Nil!65859) (unfocusZipperList!1982 zl!343)))))

(assert (=> b!6733981 d!2116072))

(declare-fun bm!608463 () Bool)

(declare-fun call!608469 () (InoxSet Context!11890))

(declare-fun call!608473 () (InoxSet Context!11890))

(assert (=> bm!608463 (= call!608469 call!608473)))

(declare-fun bm!608464 () Bool)

(declare-fun call!608468 () List!65983)

(declare-fun c!1249015 () Bool)

(declare-fun call!608472 () (InoxSet Context!11890))

(assert (=> bm!608464 (= call!608472 (derivationStepZipperDown!1789 (ite c!1249015 (regOne!33635 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (regOne!33634 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))))) (ite c!1249015 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (Context!11891 call!608468)) (h!72306 s!2326)))))

(declare-fun d!2116074 () Bool)

(declare-fun c!1249012 () Bool)

(assert (=> d!2116074 (= c!1249012 (and ((_ is ElementMatch!16561) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (= (c!1248671 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (h!72306 s!2326))))))

(declare-fun e!4068348 () (InoxSet Context!11890))

(assert (=> d!2116074 (= (derivationStepZipperDown!1789 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (h!72306 s!2326)) e!4068348)))

(declare-fun b!6734650 () Bool)

(declare-fun e!4068352 () (InoxSet Context!11890))

(assert (=> b!6734650 (= e!4068352 call!608469)))

(declare-fun bm!608465 () Bool)

(declare-fun call!608470 () List!65983)

(assert (=> bm!608465 (= call!608470 call!608468)))

(declare-fun b!6734651 () Bool)

(declare-fun c!1249013 () Bool)

(declare-fun e!4068349 () Bool)

(assert (=> b!6734651 (= c!1249013 e!4068349)))

(declare-fun res!2755105 () Bool)

(assert (=> b!6734651 (=> (not res!2755105) (not e!4068349))))

(assert (=> b!6734651 (= res!2755105 ((_ is Concat!25406) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))))))

(declare-fun e!4068350 () (InoxSet Context!11890))

(declare-fun e!4068353 () (InoxSet Context!11890))

(assert (=> b!6734651 (= e!4068350 e!4068353)))

(declare-fun b!6734652 () Bool)

(assert (=> b!6734652 (= e!4068349 (nullable!6548 (regOne!33634 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))))))))

(declare-fun b!6734653 () Bool)

(declare-fun call!608471 () (InoxSet Context!11890))

(assert (=> b!6734653 (= e!4068350 ((_ map or) call!608472 call!608471))))

(declare-fun b!6734654 () Bool)

(declare-fun e!4068351 () (InoxSet Context!11890))

(assert (=> b!6734654 (= e!4068353 e!4068351)))

(declare-fun c!1249014 () Bool)

(assert (=> b!6734654 (= c!1249014 ((_ is Concat!25406) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))))))

(declare-fun b!6734655 () Bool)

(assert (=> b!6734655 (= e!4068353 ((_ map or) call!608472 call!608473))))

(declare-fun b!6734656 () Bool)

(assert (=> b!6734656 (= e!4068348 e!4068350)))

(assert (=> b!6734656 (= c!1249015 ((_ is Union!16561) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))))))

(declare-fun bm!608466 () Bool)

(assert (=> bm!608466 (= call!608471 (derivationStepZipperDown!1789 (ite c!1249015 (regTwo!33635 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (ite c!1249013 (regTwo!33634 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (ite c!1249014 (regOne!33634 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (reg!16890 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))))))) (ite (or c!1249015 c!1249013) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (Context!11891 call!608470)) (h!72306 s!2326)))))

(declare-fun b!6734657 () Bool)

(assert (=> b!6734657 (= e!4068348 (store ((as const (Array Context!11890 Bool)) false) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) true))))

(declare-fun b!6734658 () Bool)

(assert (=> b!6734658 (= e!4068351 call!608469)))

(declare-fun b!6734659 () Bool)

(assert (=> b!6734659 (= e!4068352 ((as const (Array Context!11890 Bool)) false))))

(declare-fun bm!608467 () Bool)

(assert (=> bm!608467 (= call!608473 call!608471)))

(declare-fun b!6734660 () Bool)

(declare-fun c!1249016 () Bool)

(assert (=> b!6734660 (= c!1249016 ((_ is Star!16561) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))))))

(assert (=> b!6734660 (= e!4068351 e!4068352)))

(declare-fun bm!608468 () Bool)

(assert (=> bm!608468 (= call!608468 ($colon$colon!2378 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))))) (ite (or c!1249013 c!1249014) (regTwo!33634 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859))))) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 (reg!16890 r!7292) Nil!65859)))))))))

(assert (= (and d!2116074 c!1249012) b!6734657))

(assert (= (and d!2116074 (not c!1249012)) b!6734656))

(assert (= (and b!6734656 c!1249015) b!6734653))

(assert (= (and b!6734656 (not c!1249015)) b!6734651))

(assert (= (and b!6734651 res!2755105) b!6734652))

(assert (= (and b!6734651 c!1249013) b!6734655))

(assert (= (and b!6734651 (not c!1249013)) b!6734654))

(assert (= (and b!6734654 c!1249014) b!6734658))

(assert (= (and b!6734654 (not c!1249014)) b!6734660))

(assert (= (and b!6734660 c!1249016) b!6734650))

(assert (= (and b!6734660 (not c!1249016)) b!6734659))

(assert (= (or b!6734658 b!6734650) bm!608465))

(assert (= (or b!6734658 b!6734650) bm!608463))

(assert (= (or b!6734655 bm!608465) bm!608468))

(assert (= (or b!6734655 bm!608463) bm!608467))

(assert (= (or b!6734653 bm!608467) bm!608466))

(assert (= (or b!6734653 b!6734655) bm!608464))

(declare-fun m!7492552 () Bool)

(assert (=> bm!608466 m!7492552))

(declare-fun m!7492554 () Bool)

(assert (=> b!6734657 m!7492554))

(declare-fun m!7492556 () Bool)

(assert (=> bm!608464 m!7492556))

(declare-fun m!7492558 () Bool)

(assert (=> b!6734652 m!7492558))

(declare-fun m!7492560 () Bool)

(assert (=> bm!608468 m!7492560))

(assert (=> bm!608325 d!2116074))

(declare-fun d!2116076 () Bool)

(assert (=> d!2116076 (= (nullable!6548 (reg!16890 r!7292)) (nullableFct!2462 (reg!16890 r!7292)))))

(declare-fun bs!1790972 () Bool)

(assert (= bs!1790972 d!2116076))

(declare-fun m!7492562 () Bool)

(assert (=> bs!1790972 m!7492562))

(assert (=> b!6734016 d!2116076))

(declare-fun bs!1790973 () Bool)

(declare-fun d!2116078 () Bool)

(assert (= bs!1790973 (and d!2116078 d!2116062)))

(declare-fun lambda!378131 () Int)

(assert (=> bs!1790973 (= lambda!378131 lambda!378130)))

(declare-fun bs!1790974 () Bool)

(assert (= bs!1790974 (and d!2116078 d!2115750)))

(assert (=> bs!1790974 (= lambda!378131 lambda!378083)))

(declare-fun bs!1790975 () Bool)

(assert (= bs!1790975 (and d!2116078 d!2116058)))

(assert (=> bs!1790975 (= lambda!378131 lambda!378129)))

(declare-fun bs!1790976 () Bool)

(assert (= bs!1790976 (and d!2116078 d!2116046)))

(assert (=> bs!1790976 (= lambda!378131 lambda!378128)))

(declare-fun bs!1790977 () Bool)

(assert (= bs!1790977 (and d!2116078 d!2115744)))

(assert (=> bs!1790977 (= lambda!378131 lambda!378074)))

(declare-fun bs!1790978 () Bool)

(assert (= bs!1790978 (and d!2116078 d!2115756)))

(assert (=> bs!1790978 (= lambda!378131 lambda!378084)))

(declare-fun bs!1790979 () Bool)

(assert (= bs!1790979 (and d!2116078 d!2115758)))

(assert (=> bs!1790979 (= lambda!378131 lambda!378085)))

(declare-fun bs!1790980 () Bool)

(assert (= bs!1790980 (and d!2116078 d!2115746)))

(assert (=> bs!1790980 (= lambda!378131 lambda!378077)))

(declare-fun bs!1790981 () Bool)

(assert (= bs!1790981 (and d!2116078 d!2115748)))

(assert (=> bs!1790981 (= lambda!378131 lambda!378080)))

(declare-fun bs!1790982 () Bool)

(assert (= bs!1790982 (and d!2116078 d!2115862)))

(assert (=> bs!1790982 (= lambda!378131 lambda!378091)))

(declare-fun b!6734681 () Bool)

(declare-fun e!4068366 () Regex!16561)

(assert (=> b!6734681 (= e!4068366 (h!72307 (t!379674 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun b!6734682 () Bool)

(declare-fun e!4068367 () Regex!16561)

(assert (=> b!6734682 (= e!4068366 e!4068367)))

(declare-fun c!1249029 () Bool)

(assert (=> b!6734682 (= c!1249029 ((_ is Cons!65859) (t!379674 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun e!4068364 () Bool)

(assert (=> d!2116078 e!4068364))

(declare-fun res!2755106 () Bool)

(assert (=> d!2116078 (=> (not res!2755106) (not e!4068364))))

(declare-fun lt!2438237 () Regex!16561)

(assert (=> d!2116078 (= res!2755106 (validRegex!8297 lt!2438237))))

(assert (=> d!2116078 (= lt!2438237 e!4068366)))

(declare-fun c!1249027 () Bool)

(declare-fun e!4068369 () Bool)

(assert (=> d!2116078 (= c!1249027 e!4068369)))

(declare-fun res!2755107 () Bool)

(assert (=> d!2116078 (=> (not res!2755107) (not e!4068369))))

(assert (=> d!2116078 (= res!2755107 ((_ is Cons!65859) (t!379674 (exprs!6445 (h!72308 zl!343)))))))

(assert (=> d!2116078 (forall!15761 (t!379674 (exprs!6445 (h!72308 zl!343))) lambda!378131)))

(assert (=> d!2116078 (= (generalisedConcat!2158 (t!379674 (exprs!6445 (h!72308 zl!343)))) lt!2438237)))

(declare-fun b!6734683 () Bool)

(declare-fun e!4068368 () Bool)

(assert (=> b!6734683 (= e!4068368 (isEmptyExpr!1927 lt!2438237))))

(declare-fun b!6734684 () Bool)

(declare-fun e!4068365 () Bool)

(assert (=> b!6734684 (= e!4068365 (= lt!2438237 (head!13550 (t!379674 (exprs!6445 (h!72308 zl!343))))))))

(declare-fun b!6734685 () Bool)

(assert (=> b!6734685 (= e!4068369 (isEmpty!38198 (t!379674 (t!379674 (exprs!6445 (h!72308 zl!343))))))))

(declare-fun b!6734686 () Bool)

(assert (=> b!6734686 (= e!4068368 e!4068365)))

(declare-fun c!1249030 () Bool)

(assert (=> b!6734686 (= c!1249030 (isEmpty!38198 (tail!12635 (t!379674 (exprs!6445 (h!72308 zl!343))))))))

(declare-fun b!6734687 () Bool)

(assert (=> b!6734687 (= e!4068367 (Concat!25406 (h!72307 (t!379674 (exprs!6445 (h!72308 zl!343)))) (generalisedConcat!2158 (t!379674 (t!379674 (exprs!6445 (h!72308 zl!343)))))))))

(declare-fun b!6734688 () Bool)

(assert (=> b!6734688 (= e!4068364 e!4068368)))

(declare-fun c!1249028 () Bool)

(assert (=> b!6734688 (= c!1249028 (isEmpty!38198 (t!379674 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun b!6734689 () Bool)

(assert (=> b!6734689 (= e!4068365 (isConcat!1450 lt!2438237))))

(declare-fun b!6734690 () Bool)

(assert (=> b!6734690 (= e!4068367 EmptyExpr!16561)))

(assert (= (and d!2116078 res!2755107) b!6734685))

(assert (= (and d!2116078 c!1249027) b!6734681))

(assert (= (and d!2116078 (not c!1249027)) b!6734682))

(assert (= (and b!6734682 c!1249029) b!6734687))

(assert (= (and b!6734682 (not c!1249029)) b!6734690))

(assert (= (and d!2116078 res!2755106) b!6734688))

(assert (= (and b!6734688 c!1249028) b!6734683))

(assert (= (and b!6734688 (not c!1249028)) b!6734686))

(assert (= (and b!6734686 c!1249030) b!6734684))

(assert (= (and b!6734686 (not c!1249030)) b!6734689))

(assert (=> b!6734688 m!7491820))

(declare-fun m!7492564 () Bool)

(assert (=> d!2116078 m!7492564))

(declare-fun m!7492566 () Bool)

(assert (=> d!2116078 m!7492566))

(declare-fun m!7492568 () Bool)

(assert (=> b!6734687 m!7492568))

(declare-fun m!7492570 () Bool)

(assert (=> b!6734683 m!7492570))

(declare-fun m!7492572 () Bool)

(assert (=> b!6734685 m!7492572))

(declare-fun m!7492574 () Bool)

(assert (=> b!6734684 m!7492574))

(declare-fun m!7492576 () Bool)

(assert (=> b!6734686 m!7492576))

(assert (=> b!6734686 m!7492576))

(declare-fun m!7492578 () Bool)

(assert (=> b!6734686 m!7492578))

(declare-fun m!7492580 () Bool)

(assert (=> b!6734689 m!7492580))

(assert (=> b!6733952 d!2116078))

(assert (=> bm!608292 d!2115714))

(declare-fun b!6734710 () Bool)

(declare-fun e!4068379 () List!65982)

(assert (=> b!6734710 (= e!4068379 (Cons!65858 (h!72306 (_1!36839 (get!22913 lt!2438188))) (++!14717 (t!379673 (_1!36839 (get!22913 lt!2438188))) (_2!36839 (get!22913 lt!2438188)))))))

(declare-fun d!2116080 () Bool)

(declare-fun e!4068380 () Bool)

(assert (=> d!2116080 e!4068380))

(declare-fun res!2755112 () Bool)

(assert (=> d!2116080 (=> (not res!2755112) (not e!4068380))))

(declare-fun lt!2438241 () List!65982)

(declare-fun content!12793 (List!65982) (InoxSet C!33392))

(assert (=> d!2116080 (= res!2755112 (= (content!12793 lt!2438241) ((_ map or) (content!12793 (_1!36839 (get!22913 lt!2438188))) (content!12793 (_2!36839 (get!22913 lt!2438188))))))))

(assert (=> d!2116080 (= lt!2438241 e!4068379)))

(declare-fun c!1249038 () Bool)

(assert (=> d!2116080 (= c!1249038 ((_ is Nil!65858) (_1!36839 (get!22913 lt!2438188))))))

(assert (=> d!2116080 (= (++!14717 (_1!36839 (get!22913 lt!2438188)) (_2!36839 (get!22913 lt!2438188))) lt!2438241)))

(declare-fun b!6734712 () Bool)

(assert (=> b!6734712 (= e!4068380 (or (not (= (_2!36839 (get!22913 lt!2438188)) Nil!65858)) (= lt!2438241 (_1!36839 (get!22913 lt!2438188)))))))

(declare-fun b!6734709 () Bool)

(assert (=> b!6734709 (= e!4068379 (_2!36839 (get!22913 lt!2438188)))))

(declare-fun b!6734711 () Bool)

(declare-fun res!2755113 () Bool)

(assert (=> b!6734711 (=> (not res!2755113) (not e!4068380))))

(declare-fun size!40611 (List!65982) Int)

(assert (=> b!6734711 (= res!2755113 (= (size!40611 lt!2438241) (+ (size!40611 (_1!36839 (get!22913 lt!2438188))) (size!40611 (_2!36839 (get!22913 lt!2438188))))))))

(assert (= (and d!2116080 c!1249038) b!6734709))

(assert (= (and d!2116080 (not c!1249038)) b!6734710))

(assert (= (and d!2116080 res!2755112) b!6734711))

(assert (= (and b!6734711 res!2755113) b!6734712))

(declare-fun m!7492588 () Bool)

(assert (=> b!6734710 m!7492588))

(declare-fun m!7492590 () Bool)

(assert (=> d!2116080 m!7492590))

(declare-fun m!7492592 () Bool)

(assert (=> d!2116080 m!7492592))

(declare-fun m!7492594 () Bool)

(assert (=> d!2116080 m!7492594))

(declare-fun m!7492596 () Bool)

(assert (=> b!6734711 m!7492596))

(declare-fun m!7492598 () Bool)

(assert (=> b!6734711 m!7492598))

(declare-fun m!7492600 () Bool)

(assert (=> b!6734711 m!7492600))

(assert (=> b!6733921 d!2116080))

(declare-fun d!2116084 () Bool)

(assert (=> d!2116084 (= (get!22913 lt!2438188) (v!52647 lt!2438188))))

(assert (=> b!6733921 d!2116084))

(declare-fun d!2116086 () Bool)

(assert (=> d!2116086 (= (nullable!6548 (h!72307 (exprs!6445 (h!72308 zl!343)))) (nullableFct!2462 (h!72307 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun bs!1790983 () Bool)

(assert (= bs!1790983 d!2116086))

(declare-fun m!7492602 () Bool)

(assert (=> bs!1790983 m!7492602))

(assert (=> b!6734101 d!2116086))

(declare-fun d!2116088 () Bool)

(declare-fun lambda!378134 () Int)

(declare-fun exists!2695 ((InoxSet Context!11890) Int) Bool)

(assert (=> d!2116088 (= (nullableZipper!2276 lt!2438114) (exists!2695 lt!2438114 lambda!378134))))

(declare-fun bs!1790984 () Bool)

(assert (= bs!1790984 d!2116088))

(declare-fun m!7492608 () Bool)

(assert (=> bs!1790984 m!7492608))

(assert (=> b!6734079 d!2116088))

(declare-fun b!6734728 () Bool)

(declare-fun res!2755130 () Bool)

(declare-fun e!4068397 () Bool)

(assert (=> b!6734728 (=> res!2755130 e!4068397)))

(assert (=> b!6734728 (= res!2755130 (not ((_ is Concat!25406) lt!2438211)))))

(declare-fun e!4068396 () Bool)

(assert (=> b!6734728 (= e!4068396 e!4068397)))

(declare-fun b!6734729 () Bool)

(declare-fun e!4068402 () Bool)

(assert (=> b!6734729 (= e!4068402 e!4068396)))

(declare-fun c!1249041 () Bool)

(assert (=> b!6734729 (= c!1249041 ((_ is Union!16561) lt!2438211))))

(declare-fun call!608486 () Bool)

(declare-fun bm!608481 () Bool)

(declare-fun c!1249042 () Bool)

(assert (=> bm!608481 (= call!608486 (validRegex!8297 (ite c!1249042 (reg!16890 lt!2438211) (ite c!1249041 (regTwo!33635 lt!2438211) (regTwo!33634 lt!2438211)))))))

(declare-fun b!6734730 () Bool)

(declare-fun e!4068399 () Bool)

(assert (=> b!6734730 (= e!4068399 call!608486)))

(declare-fun b!6734731 () Bool)

(declare-fun e!4068401 () Bool)

(declare-fun call!608488 () Bool)

(assert (=> b!6734731 (= e!4068401 call!608488)))

(declare-fun b!6734733 () Bool)

(declare-fun e!4068398 () Bool)

(assert (=> b!6734733 (= e!4068398 call!608488)))

(declare-fun b!6734734 () Bool)

(assert (=> b!6734734 (= e!4068402 e!4068399)))

(declare-fun res!2755129 () Bool)

(assert (=> b!6734734 (= res!2755129 (not (nullable!6548 (reg!16890 lt!2438211))))))

(assert (=> b!6734734 (=> (not res!2755129) (not e!4068399))))

(declare-fun b!6734735 () Bool)

(assert (=> b!6734735 (= e!4068397 e!4068398)))

(declare-fun res!2755127 () Bool)

(assert (=> b!6734735 (=> (not res!2755127) (not e!4068398))))

(declare-fun call!608487 () Bool)

(assert (=> b!6734735 (= res!2755127 call!608487)))

(declare-fun bm!608482 () Bool)

(assert (=> bm!608482 (= call!608488 call!608486)))

(declare-fun bm!608483 () Bool)

(assert (=> bm!608483 (= call!608487 (validRegex!8297 (ite c!1249041 (regOne!33635 lt!2438211) (regOne!33634 lt!2438211))))))

(declare-fun b!6734736 () Bool)

(declare-fun e!4068400 () Bool)

(assert (=> b!6734736 (= e!4068400 e!4068402)))

(assert (=> b!6734736 (= c!1249042 ((_ is Star!16561) lt!2438211))))

(declare-fun d!2116092 () Bool)

(declare-fun res!2755126 () Bool)

(assert (=> d!2116092 (=> res!2755126 e!4068400)))

(assert (=> d!2116092 (= res!2755126 ((_ is ElementMatch!16561) lt!2438211))))

(assert (=> d!2116092 (= (validRegex!8297 lt!2438211) e!4068400)))

(declare-fun b!6734732 () Bool)

(declare-fun res!2755128 () Bool)

(assert (=> b!6734732 (=> (not res!2755128) (not e!4068401))))

(assert (=> b!6734732 (= res!2755128 call!608487)))

(assert (=> b!6734732 (= e!4068396 e!4068401)))

(assert (= (and d!2116092 (not res!2755126)) b!6734736))

(assert (= (and b!6734736 c!1249042) b!6734734))

(assert (= (and b!6734736 (not c!1249042)) b!6734729))

(assert (= (and b!6734734 res!2755129) b!6734730))

(assert (= (and b!6734729 c!1249041) b!6734732))

(assert (= (and b!6734729 (not c!1249041)) b!6734728))

(assert (= (and b!6734732 res!2755128) b!6734731))

(assert (= (and b!6734728 (not res!2755130)) b!6734735))

(assert (= (and b!6734735 res!2755127) b!6734733))

(assert (= (or b!6734731 b!6734733) bm!608482))

(assert (= (or b!6734732 b!6734735) bm!608483))

(assert (= (or b!6734730 bm!608482) bm!608481))

(declare-fun m!7492616 () Bool)

(assert (=> bm!608481 m!7492616))

(declare-fun m!7492618 () Bool)

(assert (=> b!6734734 m!7492618))

(declare-fun m!7492620 () Bool)

(assert (=> bm!608483 m!7492620))

(assert (=> d!2115786 d!2116092))

(assert (=> d!2115786 d!2115748))

(assert (=> d!2115786 d!2115750))

(declare-fun bm!608486 () Bool)

(declare-fun call!608492 () (InoxSet Context!11890))

(declare-fun call!608496 () (InoxSet Context!11890))

(assert (=> bm!608486 (= call!608492 call!608496)))

(declare-fun c!1249050 () Bool)

(declare-fun call!608491 () List!65983)

(declare-fun bm!608487 () Bool)

(declare-fun call!608495 () (InoxSet Context!11890))

(assert (=> bm!608487 (= call!608495 (derivationStepZipperDown!1789 (ite c!1249050 (regOne!33635 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (regOne!33634 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))))) (ite c!1249050 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (Context!11891 call!608491)) (h!72306 s!2326)))))

(declare-fun d!2116096 () Bool)

(declare-fun c!1249047 () Bool)

(assert (=> d!2116096 (= c!1249047 (and ((_ is ElementMatch!16561) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (= (c!1248671 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (h!72306 s!2326))))))

(declare-fun e!4068410 () (InoxSet Context!11890))

(assert (=> d!2116096 (= (derivationStepZipperDown!1789 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (h!72306 s!2326)) e!4068410)))

(declare-fun b!6734748 () Bool)

(declare-fun e!4068414 () (InoxSet Context!11890))

(assert (=> b!6734748 (= e!4068414 call!608492)))

(declare-fun bm!608488 () Bool)

(declare-fun call!608493 () List!65983)

(assert (=> bm!608488 (= call!608493 call!608491)))

(declare-fun b!6734749 () Bool)

(declare-fun c!1249048 () Bool)

(declare-fun e!4068411 () Bool)

(assert (=> b!6734749 (= c!1249048 e!4068411)))

(declare-fun res!2755134 () Bool)

(assert (=> b!6734749 (=> (not res!2755134) (not e!4068411))))

(assert (=> b!6734749 (= res!2755134 ((_ is Concat!25406) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))))))

(declare-fun e!4068412 () (InoxSet Context!11890))

(declare-fun e!4068415 () (InoxSet Context!11890))

(assert (=> b!6734749 (= e!4068412 e!4068415)))

(declare-fun b!6734750 () Bool)

(assert (=> b!6734750 (= e!4068411 (nullable!6548 (regOne!33634 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))))))))

(declare-fun b!6734751 () Bool)

(declare-fun call!608494 () (InoxSet Context!11890))

(assert (=> b!6734751 (= e!4068412 ((_ map or) call!608495 call!608494))))

(declare-fun b!6734752 () Bool)

(declare-fun e!4068413 () (InoxSet Context!11890))

(assert (=> b!6734752 (= e!4068415 e!4068413)))

(declare-fun c!1249049 () Bool)

(assert (=> b!6734752 (= c!1249049 ((_ is Concat!25406) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))))))

(declare-fun b!6734753 () Bool)

(assert (=> b!6734753 (= e!4068415 ((_ map or) call!608495 call!608496))))

(declare-fun b!6734754 () Bool)

(assert (=> b!6734754 (= e!4068410 e!4068412)))

(assert (=> b!6734754 (= c!1249050 ((_ is Union!16561) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))))))

(declare-fun bm!608489 () Bool)

(assert (=> bm!608489 (= call!608494 (derivationStepZipperDown!1789 (ite c!1249050 (regTwo!33635 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (ite c!1249048 (regTwo!33634 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (ite c!1249049 (regOne!33634 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (reg!16890 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))))))) (ite (or c!1249050 c!1249048) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (Context!11891 call!608493)) (h!72306 s!2326)))))

(declare-fun b!6734755 () Bool)

(assert (=> b!6734755 (= e!4068410 (store ((as const (Array Context!11890 Bool)) false) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) true))))

(declare-fun b!6734756 () Bool)

(assert (=> b!6734756 (= e!4068413 call!608492)))

(declare-fun b!6734757 () Bool)

(assert (=> b!6734757 (= e!4068414 ((as const (Array Context!11890 Bool)) false))))

(declare-fun bm!608490 () Bool)

(assert (=> bm!608490 (= call!608496 call!608494)))

(declare-fun b!6734758 () Bool)

(declare-fun c!1249051 () Bool)

(assert (=> b!6734758 (= c!1249051 ((_ is Star!16561) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))))))

(assert (=> b!6734758 (= e!4068413 e!4068414)))

(declare-fun bm!608491 () Bool)

(assert (=> bm!608491 (= call!608491 ($colon$colon!2378 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))))) (ite (or c!1249048 c!1249049) (regTwo!33634 (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859))))) (h!72307 (exprs!6445 (Context!11891 (Cons!65859 r!7292 Nil!65859)))))))))

(assert (= (and d!2116096 c!1249047) b!6734755))

(assert (= (and d!2116096 (not c!1249047)) b!6734754))

(assert (= (and b!6734754 c!1249050) b!6734751))

(assert (= (and b!6734754 (not c!1249050)) b!6734749))

(assert (= (and b!6734749 res!2755134) b!6734750))

(assert (= (and b!6734749 c!1249048) b!6734753))

(assert (= (and b!6734749 (not c!1249048)) b!6734752))

(assert (= (and b!6734752 c!1249049) b!6734756))

(assert (= (and b!6734752 (not c!1249049)) b!6734758))

(assert (= (and b!6734758 c!1249051) b!6734748))

(assert (= (and b!6734758 (not c!1249051)) b!6734757))

(assert (= (or b!6734756 b!6734748) bm!608488))

(assert (= (or b!6734756 b!6734748) bm!608486))

(assert (= (or b!6734753 bm!608488) bm!608491))

(assert (= (or b!6734753 bm!608486) bm!608490))

(assert (= (or b!6734751 bm!608490) bm!608489))

(assert (= (or b!6734751 b!6734753) bm!608487))

(declare-fun m!7492622 () Bool)

(assert (=> bm!608489 m!7492622))

(declare-fun m!7492624 () Bool)

(assert (=> b!6734755 m!7492624))

(declare-fun m!7492626 () Bool)

(assert (=> bm!608487 m!7492626))

(declare-fun m!7492628 () Bool)

(assert (=> b!6734750 m!7492628))

(declare-fun m!7492630 () Bool)

(assert (=> bm!608491 m!7492630))

(assert (=> bm!608351 d!2116096))

(declare-fun d!2116100 () Bool)

(declare-fun res!2755135 () Bool)

(declare-fun e!4068416 () Bool)

(assert (=> d!2116100 (=> res!2755135 e!4068416)))

(assert (=> d!2116100 (= res!2755135 ((_ is Nil!65859) (exprs!6445 lt!2438119)))))

(assert (=> d!2116100 (= (forall!15761 (exprs!6445 lt!2438119) lambda!378085) e!4068416)))

(declare-fun b!6734759 () Bool)

(declare-fun e!4068417 () Bool)

(assert (=> b!6734759 (= e!4068416 e!4068417)))

(declare-fun res!2755136 () Bool)

(assert (=> b!6734759 (=> (not res!2755136) (not e!4068417))))

(assert (=> b!6734759 (= res!2755136 (dynLambda!26274 lambda!378085 (h!72307 (exprs!6445 lt!2438119))))))

(declare-fun b!6734760 () Bool)

(assert (=> b!6734760 (= e!4068417 (forall!15761 (t!379674 (exprs!6445 lt!2438119)) lambda!378085))))

(assert (= (and d!2116100 (not res!2755135)) b!6734759))

(assert (= (and b!6734759 res!2755136) b!6734760))

(declare-fun b_lambda!253569 () Bool)

(assert (=> (not b_lambda!253569) (not b!6734759)))

(declare-fun m!7492632 () Bool)

(assert (=> b!6734759 m!7492632))

(declare-fun m!7492634 () Bool)

(assert (=> b!6734760 m!7492634))

(assert (=> d!2115758 d!2116100))

(declare-fun d!2116102 () Bool)

(assert (=> d!2116102 true))

(declare-fun setRes!45957 () Bool)

(assert (=> d!2116102 setRes!45957))

(declare-fun condSetEmpty!45957 () Bool)

(declare-fun res!2755137 () (InoxSet Context!11890))

(assert (=> d!2116102 (= condSetEmpty!45957 (= res!2755137 ((as const (Array Context!11890 Bool)) false)))))

(assert (=> d!2116102 (= (choose!50195 lt!2438114 lambda!378011) res!2755137)))

(declare-fun setIsEmpty!45957 () Bool)

(assert (=> setIsEmpty!45957 setRes!45957))

(declare-fun setNonEmpty!45957 () Bool)

(declare-fun tp!1846297 () Bool)

(declare-fun setElem!45957 () Context!11890)

(declare-fun e!4068418 () Bool)

(assert (=> setNonEmpty!45957 (= setRes!45957 (and tp!1846297 (inv!84649 setElem!45957) e!4068418))))

(declare-fun setRest!45957 () (InoxSet Context!11890))

(assert (=> setNonEmpty!45957 (= res!2755137 ((_ map or) (store ((as const (Array Context!11890 Bool)) false) setElem!45957 true) setRest!45957))))

(declare-fun b!6734761 () Bool)

(declare-fun tp!1846296 () Bool)

(assert (=> b!6734761 (= e!4068418 tp!1846296)))

(assert (= (and d!2116102 condSetEmpty!45957) setIsEmpty!45957))

(assert (= (and d!2116102 (not condSetEmpty!45957)) setNonEmpty!45957))

(assert (= setNonEmpty!45957 b!6734761))

(declare-fun m!7492636 () Bool)

(assert (=> setNonEmpty!45957 m!7492636))

(assert (=> d!2115768 d!2116102))

(declare-fun d!2116104 () Bool)

(assert (=> d!2116104 true))

(assert (=> d!2116104 true))

(declare-fun res!2755138 () Bool)

(assert (=> d!2116104 (= (choose!50191 lambda!378009) res!2755138)))

(assert (=> d!2115740 d!2116104))

(declare-fun d!2116106 () Bool)

(assert (=> d!2116106 (= (isConcat!1450 lt!2438195) ((_ is Concat!25406) lt!2438195))))

(assert (=> b!6733954 d!2116106))

(declare-fun bm!608492 () Bool)

(declare-fun call!608497 () (InoxSet Context!11890))

(assert (=> bm!608492 (= call!608497 (derivationStepZipperDown!1789 (h!72307 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343)))))) (Context!11891 (t!379674 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343))))))) (h!72306 s!2326)))))

(declare-fun b!6734762 () Bool)

(declare-fun e!4068419 () Bool)

(assert (=> b!6734762 (= e!4068419 (nullable!6548 (h!72307 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343))))))))))

(declare-fun b!6734763 () Bool)

(declare-fun e!4068421 () (InoxSet Context!11890))

(assert (=> b!6734763 (= e!4068421 call!608497)))

(declare-fun e!4068420 () (InoxSet Context!11890))

(declare-fun b!6734764 () Bool)

(assert (=> b!6734764 (= e!4068420 ((_ map or) call!608497 (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343))))))) (h!72306 s!2326))))))

(declare-fun b!6734765 () Bool)

(assert (=> b!6734765 (= e!4068421 ((as const (Array Context!11890 Bool)) false))))

(declare-fun b!6734766 () Bool)

(assert (=> b!6734766 (= e!4068420 e!4068421)))

(declare-fun c!1249053 () Bool)

(assert (=> b!6734766 (= c!1249053 ((_ is Cons!65859) (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343)))))))))

(declare-fun d!2116108 () Bool)

(declare-fun c!1249052 () Bool)

(assert (=> d!2116108 (= c!1249052 e!4068419)))

(declare-fun res!2755139 () Bool)

(assert (=> d!2116108 (=> (not res!2755139) (not e!4068419))))

(assert (=> d!2116108 (= res!2755139 ((_ is Cons!65859) (exprs!6445 (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343)))))))))

(assert (=> d!2116108 (= (derivationStepZipperUp!1715 (Context!11891 (t!379674 (exprs!6445 (h!72308 zl!343)))) (h!72306 s!2326)) e!4068420)))

(assert (= (and d!2116108 res!2755139) b!6734762))

(assert (= (and d!2116108 c!1249052) b!6734764))

(assert (= (and d!2116108 (not c!1249052)) b!6734766))

(assert (= (and b!6734766 c!1249053) b!6734763))

(assert (= (and b!6734766 (not c!1249053)) b!6734765))

(assert (= (or b!6734764 b!6734763) bm!608492))

(declare-fun m!7492638 () Bool)

(assert (=> bm!608492 m!7492638))

(declare-fun m!7492640 () Bool)

(assert (=> b!6734762 m!7492640))

(declare-fun m!7492642 () Bool)

(assert (=> b!6734764 m!7492642))

(assert (=> b!6734103 d!2116108))

(assert (=> b!6733990 d!2115744))

(declare-fun bs!1790996 () Bool)

(declare-fun d!2116110 () Bool)

(assert (= bs!1790996 (and d!2116110 d!2116062)))

(declare-fun lambda!378137 () Int)

(assert (=> bs!1790996 (= lambda!378137 lambda!378130)))

(declare-fun bs!1790998 () Bool)

(assert (= bs!1790998 (and d!2116110 d!2115750)))

(assert (=> bs!1790998 (= lambda!378137 lambda!378083)))

(declare-fun bs!1791000 () Bool)

(assert (= bs!1791000 (and d!2116110 d!2116058)))

(assert (=> bs!1791000 (= lambda!378137 lambda!378129)))

(declare-fun bs!1791002 () Bool)

(assert (= bs!1791002 (and d!2116110 d!2116046)))

(assert (=> bs!1791002 (= lambda!378137 lambda!378128)))

(declare-fun bs!1791003 () Bool)

(assert (= bs!1791003 (and d!2116110 d!2115744)))

(assert (=> bs!1791003 (= lambda!378137 lambda!378074)))

(declare-fun bs!1791004 () Bool)

(assert (= bs!1791004 (and d!2116110 d!2115756)))

(assert (=> bs!1791004 (= lambda!378137 lambda!378084)))

(declare-fun bs!1791006 () Bool)

(assert (= bs!1791006 (and d!2116110 d!2115758)))

(assert (=> bs!1791006 (= lambda!378137 lambda!378085)))

(declare-fun bs!1791007 () Bool)

(assert (= bs!1791007 (and d!2116110 d!2116078)))

(assert (=> bs!1791007 (= lambda!378137 lambda!378131)))

(declare-fun bs!1791008 () Bool)

(assert (= bs!1791008 (and d!2116110 d!2115746)))

(assert (=> bs!1791008 (= lambda!378137 lambda!378077)))

(declare-fun bs!1791009 () Bool)

(assert (= bs!1791009 (and d!2116110 d!2115748)))

(assert (=> bs!1791009 (= lambda!378137 lambda!378080)))

(declare-fun bs!1791010 () Bool)

(assert (= bs!1791010 (and d!2116110 d!2115862)))

(assert (=> bs!1791010 (= lambda!378137 lambda!378091)))

(declare-fun lt!2438242 () List!65983)

(assert (=> d!2116110 (forall!15761 lt!2438242 lambda!378137)))

(declare-fun e!4068422 () List!65983)

(assert (=> d!2116110 (= lt!2438242 e!4068422)))

(declare-fun c!1249054 () Bool)

(assert (=> d!2116110 (= c!1249054 ((_ is Cons!65860) (t!379675 zl!343)))))

(assert (=> d!2116110 (= (unfocusZipperList!1982 (t!379675 zl!343)) lt!2438242)))

(declare-fun b!6734767 () Bool)

(assert (=> b!6734767 (= e!4068422 (Cons!65859 (generalisedConcat!2158 (exprs!6445 (h!72308 (t!379675 zl!343)))) (unfocusZipperList!1982 (t!379675 (t!379675 zl!343)))))))

(declare-fun b!6734768 () Bool)

(assert (=> b!6734768 (= e!4068422 Nil!65859)))

(assert (= (and d!2116110 c!1249054) b!6734767))

(assert (= (and d!2116110 (not c!1249054)) b!6734768))

(declare-fun m!7492644 () Bool)

(assert (=> d!2116110 m!7492644))

(declare-fun m!7492646 () Bool)

(assert (=> b!6734767 m!7492646))

(declare-fun m!7492648 () Bool)

(assert (=> b!6734767 m!7492648))

(assert (=> b!6733990 d!2116110))

(assert (=> d!2115728 d!2116006))

(declare-fun b!6734770 () Bool)

(declare-fun e!4068429 () Bool)

(declare-fun e!4068426 () Bool)

(assert (=> b!6734770 (= e!4068429 e!4068426)))

(declare-fun res!2755146 () Bool)

(assert (=> b!6734770 (=> res!2755146 e!4068426)))

(declare-fun call!608498 () Bool)

(assert (=> b!6734770 (= res!2755146 call!608498)))

(declare-fun bm!608493 () Bool)

(assert (=> bm!608493 (= call!608498 (isEmpty!38193 Nil!65858))))

(declare-fun b!6734771 () Bool)

(assert (=> b!6734771 (= e!4068426 (not (= (head!13549 Nil!65858) (c!1248671 (reg!16890 r!7292)))))))

(declare-fun b!6734772 () Bool)

(declare-fun res!2755142 () Bool)

(declare-fun e!4068427 () Bool)

(assert (=> b!6734772 (=> (not res!2755142) (not e!4068427))))

(assert (=> b!6734772 (= res!2755142 (not call!608498))))

(declare-fun b!6734773 () Bool)

(declare-fun res!2755140 () Bool)

(declare-fun e!4068428 () Bool)

(assert (=> b!6734773 (=> res!2755140 e!4068428)))

(assert (=> b!6734773 (= res!2755140 (not ((_ is ElementMatch!16561) (reg!16890 r!7292))))))

(declare-fun e!4068423 () Bool)

(assert (=> b!6734773 (= e!4068423 e!4068428)))

(declare-fun b!6734774 () Bool)

(declare-fun res!2755145 () Bool)

(assert (=> b!6734774 (=> res!2755145 e!4068426)))

(assert (=> b!6734774 (= res!2755145 (not (isEmpty!38193 (tail!12634 Nil!65858))))))

(declare-fun b!6734775 () Bool)

(assert (=> b!6734775 (= e!4068427 (= (head!13549 Nil!65858) (c!1248671 (reg!16890 r!7292))))))

(declare-fun d!2116112 () Bool)

(declare-fun e!4068425 () Bool)

(assert (=> d!2116112 e!4068425))

(declare-fun c!1249056 () Bool)

(assert (=> d!2116112 (= c!1249056 ((_ is EmptyExpr!16561) (reg!16890 r!7292)))))

(declare-fun lt!2438243 () Bool)

(declare-fun e!4068424 () Bool)

(assert (=> d!2116112 (= lt!2438243 e!4068424)))

(declare-fun c!1249055 () Bool)

(assert (=> d!2116112 (= c!1249055 (isEmpty!38193 Nil!65858))))

(assert (=> d!2116112 (validRegex!8297 (reg!16890 r!7292))))

(assert (=> d!2116112 (= (matchR!8744 (reg!16890 r!7292) Nil!65858) lt!2438243)))

(declare-fun b!6734769 () Bool)

(assert (=> b!6734769 (= e!4068423 (not lt!2438243))))

(declare-fun b!6734776 () Bool)

(assert (=> b!6734776 (= e!4068424 (matchR!8744 (derivativeStep!5233 (reg!16890 r!7292) (head!13549 Nil!65858)) (tail!12634 Nil!65858)))))

(declare-fun b!6734777 () Bool)

(declare-fun res!2755143 () Bool)

(assert (=> b!6734777 (=> res!2755143 e!4068428)))

(assert (=> b!6734777 (= res!2755143 e!4068427)))

(declare-fun res!2755144 () Bool)

(assert (=> b!6734777 (=> (not res!2755144) (not e!4068427))))

(assert (=> b!6734777 (= res!2755144 lt!2438243)))

(declare-fun b!6734778 () Bool)

(assert (=> b!6734778 (= e!4068424 (nullable!6548 (reg!16890 r!7292)))))

(declare-fun b!6734779 () Bool)

(assert (=> b!6734779 (= e!4068425 e!4068423)))

(declare-fun c!1249057 () Bool)

(assert (=> b!6734779 (= c!1249057 ((_ is EmptyLang!16561) (reg!16890 r!7292)))))

(declare-fun b!6734780 () Bool)

(assert (=> b!6734780 (= e!4068425 (= lt!2438243 call!608498))))

(declare-fun b!6734781 () Bool)

(assert (=> b!6734781 (= e!4068428 e!4068429)))

(declare-fun res!2755141 () Bool)

(assert (=> b!6734781 (=> (not res!2755141) (not e!4068429))))

(assert (=> b!6734781 (= res!2755141 (not lt!2438243))))

(declare-fun b!6734782 () Bool)

(declare-fun res!2755147 () Bool)

(assert (=> b!6734782 (=> (not res!2755147) (not e!4068427))))

(assert (=> b!6734782 (= res!2755147 (isEmpty!38193 (tail!12634 Nil!65858)))))

(assert (= (and d!2116112 c!1249055) b!6734778))

(assert (= (and d!2116112 (not c!1249055)) b!6734776))

(assert (= (and d!2116112 c!1249056) b!6734780))

(assert (= (and d!2116112 (not c!1249056)) b!6734779))

(assert (= (and b!6734779 c!1249057) b!6734769))

(assert (= (and b!6734779 (not c!1249057)) b!6734773))

(assert (= (and b!6734773 (not res!2755140)) b!6734777))

(assert (= (and b!6734777 res!2755144) b!6734772))

(assert (= (and b!6734772 res!2755142) b!6734782))

(assert (= (and b!6734782 res!2755147) b!6734775))

(assert (= (and b!6734777 (not res!2755143)) b!6734781))

(assert (= (and b!6734781 res!2755141) b!6734770))

(assert (= (and b!6734770 (not res!2755146)) b!6734774))

(assert (= (and b!6734774 (not res!2755145)) b!6734771))

(assert (= (or b!6734780 b!6734770 b!6734772) bm!608493))

(declare-fun m!7492656 () Bool)

(assert (=> b!6734775 m!7492656))

(declare-fun m!7492658 () Bool)

(assert (=> b!6734782 m!7492658))

(assert (=> b!6734782 m!7492658))

(declare-fun m!7492660 () Bool)

(assert (=> b!6734782 m!7492660))

(assert (=> b!6734776 m!7492656))

(assert (=> b!6734776 m!7492656))

(declare-fun m!7492662 () Bool)

(assert (=> b!6734776 m!7492662))

(assert (=> b!6734776 m!7492658))

(assert (=> b!6734776 m!7492662))

(assert (=> b!6734776 m!7492658))

(declare-fun m!7492664 () Bool)

(assert (=> b!6734776 m!7492664))

(assert (=> b!6734778 m!7491864))

(assert (=> b!6734774 m!7492658))

(assert (=> b!6734774 m!7492658))

(assert (=> b!6734774 m!7492660))

(assert (=> b!6734771 m!7492656))

(declare-fun m!7492666 () Bool)

(assert (=> bm!608493 m!7492666))

(assert (=> d!2116112 m!7492666))

(assert (=> d!2116112 m!7491732))

(assert (=> d!2115728 d!2116112))

(assert (=> d!2115728 d!2115902))

(declare-fun d!2116116 () Bool)

(assert (=> d!2116116 (= (Exists!3629 lambda!378052) (choose!50191 lambda!378052))))

(declare-fun bs!1791013 () Bool)

(assert (= bs!1791013 d!2116116))

(declare-fun m!7492668 () Bool)

(assert (=> bs!1791013 m!7492668))

(assert (=> d!2115704 d!2116116))

(declare-fun d!2116118 () Bool)

(assert (=> d!2116118 (= (Exists!3629 lambda!378055) (choose!50191 lambda!378055))))

(declare-fun bs!1791014 () Bool)

(assert (= bs!1791014 d!2116118))

(declare-fun m!7492672 () Bool)

(assert (=> bs!1791014 m!7492672))

(assert (=> d!2115704 d!2116118))

(declare-fun bs!1791042 () Bool)

(declare-fun d!2116120 () Bool)

(assert (= bs!1791042 (and d!2116120 b!6733613)))

(declare-fun lambda!378145 () Int)

(assert (=> bs!1791042 (not (= lambda!378145 lambda!378029))))

(declare-fun bs!1791044 () Bool)

(assert (= bs!1791044 (and d!2116120 b!6734560)))

(assert (=> bs!1791044 (not (= lambda!378145 lambda!378122))))

(declare-fun bs!1791045 () Bool)

(assert (= bs!1791045 (and d!2116120 b!6734297)))

(assert (=> bs!1791045 (not (= lambda!378145 lambda!378093))))

(declare-fun bs!1791046 () Bool)

(assert (= bs!1791046 (and d!2116120 b!6733407)))

(assert (=> bs!1791046 (not (= lambda!378145 lambda!378010))))

(declare-fun bs!1791048 () Bool)

(assert (= bs!1791048 (and d!2116120 d!2115948)))

(assert (=> bs!1791048 (not (= lambda!378145 lambda!378111))))

(declare-fun bs!1791049 () Bool)

(assert (= bs!1791049 (and d!2116120 d!2115878)))

(assert (=> bs!1791049 (= (= (Star!16561 (reg!16890 r!7292)) r!7292) (= lambda!378145 lambda!378103))))

(declare-fun bs!1791050 () Bool)

(assert (= bs!1791050 (and d!2116120 d!2115718)))

(assert (=> bs!1791050 (= (= (Star!16561 (reg!16890 r!7292)) r!7292) (= lambda!378145 lambda!378062))))

(assert (=> bs!1791048 (= (= (Star!16561 (reg!16890 r!7292)) r!7292) (= lambda!378145 lambda!378110))))

(assert (=> bs!1791050 (not (= lambda!378145 lambda!378063))))

(declare-fun bs!1791051 () Bool)

(assert (= bs!1791051 (and d!2116120 d!2115704)))

(assert (=> bs!1791051 (= lambda!378145 lambda!378052)))

(declare-fun bs!1791052 () Bool)

(assert (= bs!1791052 (and d!2116120 b!6734304)))

(assert (=> bs!1791052 (not (= lambda!378145 lambda!378096))))

(assert (=> bs!1791051 (not (= lambda!378145 lambda!378055))))

(assert (=> bs!1791046 (not (= lambda!378145 lambda!378009))))

(declare-fun bs!1791053 () Bool)

(assert (= bs!1791053 (and d!2116120 b!6734567)))

(assert (=> bs!1791053 (not (= lambda!378145 lambda!378125))))

(assert (=> bs!1791046 (= (= (Star!16561 (reg!16890 r!7292)) r!7292) (= lambda!378145 lambda!378008))))

(declare-fun bs!1791054 () Bool)

(assert (= bs!1791054 (and d!2116120 b!6733620)))

(assert (=> bs!1791054 (not (= lambda!378145 lambda!378030))))

(declare-fun bs!1791055 () Bool)

(assert (= bs!1791055 (and d!2116120 d!2115742)))

(assert (=> bs!1791055 (= (= (Star!16561 (reg!16890 r!7292)) r!7292) (= lambda!378145 lambda!378071))))

(assert (=> d!2116120 true))

(assert (=> d!2116120 true))

(declare-fun lambda!378147 () Int)

(assert (=> bs!1791042 (= (= (Star!16561 (reg!16890 r!7292)) r!7292) (= lambda!378147 lambda!378029))))

(assert (=> bs!1791044 (= (and (= (reg!16890 r!7292) (reg!16890 (regTwo!33635 r!7292))) (= (Star!16561 (reg!16890 r!7292)) (regTwo!33635 r!7292))) (= lambda!378147 lambda!378122))))

(assert (=> bs!1791045 (= (and (= (reg!16890 r!7292) (reg!16890 (regOne!33635 r!7292))) (= (Star!16561 (reg!16890 r!7292)) (regOne!33635 r!7292))) (= lambda!378147 lambda!378093))))

(assert (=> bs!1791046 (not (= lambda!378147 lambda!378010))))

(assert (=> bs!1791048 (not (= lambda!378147 lambda!378111))))

(assert (=> bs!1791049 (not (= lambda!378147 lambda!378103))))

(assert (=> bs!1791050 (not (= lambda!378147 lambda!378062))))

(assert (=> bs!1791048 (not (= lambda!378147 lambda!378110))))

(assert (=> bs!1791050 (not (= lambda!378147 lambda!378063))))

(assert (=> bs!1791051 (not (= lambda!378147 lambda!378052))))

(assert (=> bs!1791052 (not (= lambda!378147 lambda!378096))))

(declare-fun bs!1791074 () Bool)

(assert (= bs!1791074 d!2116120))

(assert (=> bs!1791074 (not (= lambda!378147 lambda!378145))))

(assert (=> bs!1791051 (= lambda!378147 lambda!378055)))

(assert (=> bs!1791046 (= (= (Star!16561 (reg!16890 r!7292)) r!7292) (= lambda!378147 lambda!378009))))

(assert (=> bs!1791053 (not (= lambda!378147 lambda!378125))))

(assert (=> bs!1791046 (not (= lambda!378147 lambda!378008))))

(assert (=> bs!1791054 (not (= lambda!378147 lambda!378030))))

(assert (=> bs!1791055 (not (= lambda!378147 lambda!378071))))

(assert (=> d!2116120 true))

(assert (=> d!2116120 true))

(assert (=> d!2116120 (= (Exists!3629 lambda!378145) (Exists!3629 lambda!378147))))

(assert (=> d!2116120 true))

(declare-fun _$91!704 () Unit!159813)

(assert (=> d!2116120 (= (choose!50190 (reg!16890 r!7292) s!2326) _$91!704)))

(declare-fun m!7492736 () Bool)

(assert (=> bs!1791074 m!7492736))

(declare-fun m!7492738 () Bool)

(assert (=> bs!1791074 m!7492738))

(assert (=> d!2115704 d!2116120))

(assert (=> d!2115704 d!2115902))

(declare-fun d!2116172 () Bool)

(declare-fun res!2755175 () Bool)

(declare-fun e!4068465 () Bool)

(assert (=> d!2116172 (=> res!2755175 e!4068465)))

(assert (=> d!2116172 (= res!2755175 ((_ is Nil!65859) lt!2438201))))

(assert (=> d!2116172 (= (forall!15761 lt!2438201 lambda!378083) e!4068465)))

(declare-fun b!6734840 () Bool)

(declare-fun e!4068466 () Bool)

(assert (=> b!6734840 (= e!4068465 e!4068466)))

(declare-fun res!2755176 () Bool)

(assert (=> b!6734840 (=> (not res!2755176) (not e!4068466))))

(assert (=> b!6734840 (= res!2755176 (dynLambda!26274 lambda!378083 (h!72307 lt!2438201)))))

(declare-fun b!6734841 () Bool)

(assert (=> b!6734841 (= e!4068466 (forall!15761 (t!379674 lt!2438201) lambda!378083))))

(assert (= (and d!2116172 (not res!2755175)) b!6734840))

(assert (= (and b!6734840 res!2755176) b!6734841))

(declare-fun b_lambda!253573 () Bool)

(assert (=> (not b_lambda!253573) (not b!6734840)))

(declare-fun m!7492740 () Bool)

(assert (=> b!6734840 m!7492740))

(declare-fun m!7492742 () Bool)

(assert (=> b!6734841 m!7492742))

(assert (=> d!2115750 d!2116172))

(declare-fun b!6734842 () Bool)

(declare-fun res!2755181 () Bool)

(declare-fun e!4068468 () Bool)

(assert (=> b!6734842 (=> res!2755181 e!4068468)))

(assert (=> b!6734842 (= res!2755181 (not ((_ is Concat!25406) (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292))))))))

(declare-fun e!4068467 () Bool)

(assert (=> b!6734842 (= e!4068467 e!4068468)))

(declare-fun b!6734843 () Bool)

(declare-fun e!4068473 () Bool)

(assert (=> b!6734843 (= e!4068473 e!4068467)))

(declare-fun c!1249074 () Bool)

(assert (=> b!6734843 (= c!1249074 ((_ is Union!16561) (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292)))))))

(declare-fun call!608514 () Bool)

(declare-fun bm!608509 () Bool)

(declare-fun c!1249075 () Bool)

(assert (=> bm!608509 (= call!608514 (validRegex!8297 (ite c!1249075 (reg!16890 (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292)))) (ite c!1249074 (regTwo!33635 (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292)))) (regTwo!33634 (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292))))))))))

(declare-fun b!6734844 () Bool)

(declare-fun e!4068470 () Bool)

(assert (=> b!6734844 (= e!4068470 call!608514)))

(declare-fun b!6734845 () Bool)

(declare-fun e!4068472 () Bool)

(declare-fun call!608516 () Bool)

(assert (=> b!6734845 (= e!4068472 call!608516)))

(declare-fun b!6734847 () Bool)

(declare-fun e!4068469 () Bool)

(assert (=> b!6734847 (= e!4068469 call!608516)))

(declare-fun b!6734848 () Bool)

(assert (=> b!6734848 (= e!4068473 e!4068470)))

(declare-fun res!2755180 () Bool)

(assert (=> b!6734848 (= res!2755180 (not (nullable!6548 (reg!16890 (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292)))))))))

(assert (=> b!6734848 (=> (not res!2755180) (not e!4068470))))

(declare-fun b!6734849 () Bool)

(assert (=> b!6734849 (= e!4068468 e!4068469)))

(declare-fun res!2755178 () Bool)

(assert (=> b!6734849 (=> (not res!2755178) (not e!4068469))))

(declare-fun call!608515 () Bool)

(assert (=> b!6734849 (= res!2755178 call!608515)))

(declare-fun bm!608510 () Bool)

(assert (=> bm!608510 (= call!608516 call!608514)))

(declare-fun bm!608511 () Bool)

(assert (=> bm!608511 (= call!608515 (validRegex!8297 (ite c!1249074 (regOne!33635 (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292)))) (regOne!33634 (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292)))))))))

(declare-fun b!6734850 () Bool)

(declare-fun e!4068471 () Bool)

(assert (=> b!6734850 (= e!4068471 e!4068473)))

(assert (=> b!6734850 (= c!1249075 ((_ is Star!16561) (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292)))))))

(declare-fun d!2116174 () Bool)

(declare-fun res!2755177 () Bool)

(assert (=> d!2116174 (=> res!2755177 e!4068471)))

(assert (=> d!2116174 (= res!2755177 ((_ is ElementMatch!16561) (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292)))))))

(assert (=> d!2116174 (= (validRegex!8297 (ite c!1248829 (reg!16890 r!7292) (ite c!1248828 (regTwo!33635 r!7292) (regTwo!33634 r!7292)))) e!4068471)))

(declare-fun b!6734846 () Bool)

(declare-fun res!2755179 () Bool)

(assert (=> b!6734846 (=> (not res!2755179) (not e!4068472))))

(assert (=> b!6734846 (= res!2755179 call!608515)))

(assert (=> b!6734846 (= e!4068467 e!4068472)))

(assert (= (and d!2116174 (not res!2755177)) b!6734850))

(assert (= (and b!6734850 c!1249075) b!6734848))

(assert (= (and b!6734850 (not c!1249075)) b!6734843))

(assert (= (and b!6734848 res!2755180) b!6734844))

(assert (= (and b!6734843 c!1249074) b!6734846))

(assert (= (and b!6734843 (not c!1249074)) b!6734842))

(assert (= (and b!6734846 res!2755179) b!6734845))

(assert (= (and b!6734842 (not res!2755181)) b!6734849))

(assert (= (and b!6734849 res!2755178) b!6734847))

(assert (= (or b!6734845 b!6734847) bm!608510))

(assert (= (or b!6734846 b!6734849) bm!608511))

(assert (= (or b!6734844 bm!608510) bm!608509))

(declare-fun m!7492744 () Bool)

(assert (=> bm!608509 m!7492744))

(declare-fun m!7492746 () Bool)

(assert (=> b!6734848 m!7492746))

(declare-fun m!7492748 () Bool)

(assert (=> bm!608511 m!7492748))

(assert (=> bm!608320 d!2116174))

(declare-fun bm!608512 () Bool)

(declare-fun call!608518 () (InoxSet Context!11890))

(declare-fun call!608522 () (InoxSet Context!11890))

(assert (=> bm!608512 (= call!608518 call!608522)))

(declare-fun c!1249079 () Bool)

(declare-fun call!608517 () List!65983)

(declare-fun call!608521 () (InoxSet Context!11890))

(declare-fun bm!608513 () Bool)

(assert (=> bm!608513 (= call!608521 (derivationStepZipperDown!1789 (ite c!1249079 (regOne!33635 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))) (regOne!33634 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292))))) (ite c!1249079 (ite c!1248849 lt!2438119 (Context!11891 call!608343)) (Context!11891 call!608517)) (h!72306 s!2326)))))

(declare-fun d!2116176 () Bool)

(declare-fun c!1249076 () Bool)

(assert (=> d!2116176 (= c!1249076 (and ((_ is ElementMatch!16561) (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))) (= (c!1248671 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))) (h!72306 s!2326))))))

(declare-fun e!4068474 () (InoxSet Context!11890))

(assert (=> d!2116176 (= (derivationStepZipperDown!1789 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292))) (ite c!1248849 lt!2438119 (Context!11891 call!608343)) (h!72306 s!2326)) e!4068474)))

(declare-fun b!6734851 () Bool)

(declare-fun e!4068478 () (InoxSet Context!11890))

(assert (=> b!6734851 (= e!4068478 call!608518)))

(declare-fun bm!608514 () Bool)

(declare-fun call!608519 () List!65983)

(assert (=> bm!608514 (= call!608519 call!608517)))

(declare-fun b!6734852 () Bool)

(declare-fun c!1249077 () Bool)

(declare-fun e!4068475 () Bool)

(assert (=> b!6734852 (= c!1249077 e!4068475)))

(declare-fun res!2755182 () Bool)

(assert (=> b!6734852 (=> (not res!2755182) (not e!4068475))))

(assert (=> b!6734852 (= res!2755182 ((_ is Concat!25406) (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))))))

(declare-fun e!4068476 () (InoxSet Context!11890))

(declare-fun e!4068479 () (InoxSet Context!11890))

(assert (=> b!6734852 (= e!4068476 e!4068479)))

(declare-fun b!6734853 () Bool)

(assert (=> b!6734853 (= e!4068475 (nullable!6548 (regOne!33634 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292))))))))

(declare-fun b!6734854 () Bool)

(declare-fun call!608520 () (InoxSet Context!11890))

(assert (=> b!6734854 (= e!4068476 ((_ map or) call!608521 call!608520))))

(declare-fun b!6734855 () Bool)

(declare-fun e!4068477 () (InoxSet Context!11890))

(assert (=> b!6734855 (= e!4068479 e!4068477)))

(declare-fun c!1249078 () Bool)

(assert (=> b!6734855 (= c!1249078 ((_ is Concat!25406) (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))))))

(declare-fun b!6734856 () Bool)

(assert (=> b!6734856 (= e!4068479 ((_ map or) call!608521 call!608522))))

(declare-fun b!6734857 () Bool)

(assert (=> b!6734857 (= e!4068474 e!4068476)))

(assert (=> b!6734857 (= c!1249079 ((_ is Union!16561) (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))))))

(declare-fun bm!608515 () Bool)

(assert (=> bm!608515 (= call!608520 (derivationStepZipperDown!1789 (ite c!1249079 (regTwo!33635 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))) (ite c!1249077 (regTwo!33634 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))) (ite c!1249078 (regOne!33634 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))) (reg!16890 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292))))))) (ite (or c!1249079 c!1249077) (ite c!1248849 lt!2438119 (Context!11891 call!608343)) (Context!11891 call!608519)) (h!72306 s!2326)))))

(declare-fun b!6734858 () Bool)

(assert (=> b!6734858 (= e!4068474 (store ((as const (Array Context!11890 Bool)) false) (ite c!1248849 lt!2438119 (Context!11891 call!608343)) true))))

(declare-fun b!6734859 () Bool)

(assert (=> b!6734859 (= e!4068477 call!608518)))

(declare-fun b!6734860 () Bool)

(assert (=> b!6734860 (= e!4068478 ((as const (Array Context!11890 Bool)) false))))

(declare-fun bm!608516 () Bool)

(assert (=> bm!608516 (= call!608522 call!608520)))

(declare-fun b!6734861 () Bool)

(declare-fun c!1249080 () Bool)

(assert (=> b!6734861 (= c!1249080 ((_ is Star!16561) (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))))))

(assert (=> b!6734861 (= e!4068477 e!4068478)))

(declare-fun bm!608517 () Bool)

(assert (=> bm!608517 (= call!608517 ($colon$colon!2378 (exprs!6445 (ite c!1248849 lt!2438119 (Context!11891 call!608343))) (ite (or c!1249077 c!1249078) (regTwo!33634 (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292)))) (ite c!1248849 (regOne!33635 (reg!16890 r!7292)) (regOne!33634 (reg!16890 r!7292))))))))

(assert (= (and d!2116176 c!1249076) b!6734858))

(assert (= (and d!2116176 (not c!1249076)) b!6734857))

(assert (= (and b!6734857 c!1249079) b!6734854))

(assert (= (and b!6734857 (not c!1249079)) b!6734852))

(assert (= (and b!6734852 res!2755182) b!6734853))

(assert (= (and b!6734852 c!1249077) b!6734856))

(assert (= (and b!6734852 (not c!1249077)) b!6734855))

(assert (= (and b!6734855 c!1249078) b!6734859))

(assert (= (and b!6734855 (not c!1249078)) b!6734861))

(assert (= (and b!6734861 c!1249080) b!6734851))

(assert (= (and b!6734861 (not c!1249080)) b!6734860))

(assert (= (or b!6734859 b!6734851) bm!608514))

(assert (= (or b!6734859 b!6734851) bm!608512))

(assert (= (or b!6734856 bm!608514) bm!608517))

(assert (= (or b!6734856 bm!608512) bm!608516))

(assert (= (or b!6734854 bm!608516) bm!608515))

(assert (= (or b!6734854 b!6734856) bm!608513))

(declare-fun m!7492750 () Bool)

(assert (=> bm!608515 m!7492750))

(declare-fun m!7492752 () Bool)

(assert (=> b!6734858 m!7492752))

(declare-fun m!7492754 () Bool)

(assert (=> bm!608513 m!7492754))

(declare-fun m!7492756 () Bool)

(assert (=> b!6734853 m!7492756))

(declare-fun m!7492758 () Bool)

(assert (=> bm!608517 m!7492758))

(assert (=> bm!608339 d!2116176))

(declare-fun b!6734863 () Bool)

(declare-fun e!4068486 () Bool)

(declare-fun e!4068483 () Bool)

(assert (=> b!6734863 (= e!4068486 e!4068483)))

(declare-fun res!2755189 () Bool)

(assert (=> b!6734863 (=> res!2755189 e!4068483)))

(declare-fun call!608523 () Bool)

(assert (=> b!6734863 (= res!2755189 call!608523)))

(declare-fun bm!608518 () Bool)

(assert (=> bm!608518 (= call!608523 (isEmpty!38193 (_2!36839 (get!22913 lt!2438188))))))

(declare-fun b!6734864 () Bool)

(assert (=> b!6734864 (= e!4068483 (not (= (head!13549 (_2!36839 (get!22913 lt!2438188))) (c!1248671 r!7292))))))

(declare-fun b!6734865 () Bool)

(declare-fun res!2755185 () Bool)

(declare-fun e!4068484 () Bool)

(assert (=> b!6734865 (=> (not res!2755185) (not e!4068484))))

(assert (=> b!6734865 (= res!2755185 (not call!608523))))

(declare-fun b!6734866 () Bool)

(declare-fun res!2755183 () Bool)

(declare-fun e!4068485 () Bool)

(assert (=> b!6734866 (=> res!2755183 e!4068485)))

(assert (=> b!6734866 (= res!2755183 (not ((_ is ElementMatch!16561) r!7292)))))

(declare-fun e!4068480 () Bool)

(assert (=> b!6734866 (= e!4068480 e!4068485)))

(declare-fun b!6734867 () Bool)

(declare-fun res!2755188 () Bool)

(assert (=> b!6734867 (=> res!2755188 e!4068483)))

(assert (=> b!6734867 (= res!2755188 (not (isEmpty!38193 (tail!12634 (_2!36839 (get!22913 lt!2438188))))))))

(declare-fun b!6734868 () Bool)

(assert (=> b!6734868 (= e!4068484 (= (head!13549 (_2!36839 (get!22913 lt!2438188))) (c!1248671 r!7292)))))

(declare-fun d!2116178 () Bool)

(declare-fun e!4068482 () Bool)

(assert (=> d!2116178 e!4068482))

(declare-fun c!1249082 () Bool)

(assert (=> d!2116178 (= c!1249082 ((_ is EmptyExpr!16561) r!7292))))

(declare-fun lt!2438244 () Bool)

(declare-fun e!4068481 () Bool)

(assert (=> d!2116178 (= lt!2438244 e!4068481)))

(declare-fun c!1249081 () Bool)

(assert (=> d!2116178 (= c!1249081 (isEmpty!38193 (_2!36839 (get!22913 lt!2438188))))))

(assert (=> d!2116178 (validRegex!8297 r!7292)))

(assert (=> d!2116178 (= (matchR!8744 r!7292 (_2!36839 (get!22913 lt!2438188))) lt!2438244)))

(declare-fun b!6734862 () Bool)

(assert (=> b!6734862 (= e!4068480 (not lt!2438244))))

(declare-fun b!6734869 () Bool)

(assert (=> b!6734869 (= e!4068481 (matchR!8744 (derivativeStep!5233 r!7292 (head!13549 (_2!36839 (get!22913 lt!2438188)))) (tail!12634 (_2!36839 (get!22913 lt!2438188)))))))

(declare-fun b!6734870 () Bool)

(declare-fun res!2755186 () Bool)

(assert (=> b!6734870 (=> res!2755186 e!4068485)))

(assert (=> b!6734870 (= res!2755186 e!4068484)))

(declare-fun res!2755187 () Bool)

(assert (=> b!6734870 (=> (not res!2755187) (not e!4068484))))

(assert (=> b!6734870 (= res!2755187 lt!2438244)))

(declare-fun b!6734871 () Bool)

(assert (=> b!6734871 (= e!4068481 (nullable!6548 r!7292))))

(declare-fun b!6734872 () Bool)

(assert (=> b!6734872 (= e!4068482 e!4068480)))

(declare-fun c!1249083 () Bool)

(assert (=> b!6734872 (= c!1249083 ((_ is EmptyLang!16561) r!7292))))

(declare-fun b!6734873 () Bool)

(assert (=> b!6734873 (= e!4068482 (= lt!2438244 call!608523))))

(declare-fun b!6734874 () Bool)

(assert (=> b!6734874 (= e!4068485 e!4068486)))

(declare-fun res!2755184 () Bool)

(assert (=> b!6734874 (=> (not res!2755184) (not e!4068486))))

(assert (=> b!6734874 (= res!2755184 (not lt!2438244))))

(declare-fun b!6734875 () Bool)

(declare-fun res!2755190 () Bool)

(assert (=> b!6734875 (=> (not res!2755190) (not e!4068484))))

(assert (=> b!6734875 (= res!2755190 (isEmpty!38193 (tail!12634 (_2!36839 (get!22913 lt!2438188)))))))

(assert (= (and d!2116178 c!1249081) b!6734871))

(assert (= (and d!2116178 (not c!1249081)) b!6734869))

(assert (= (and d!2116178 c!1249082) b!6734873))

(assert (= (and d!2116178 (not c!1249082)) b!6734872))

(assert (= (and b!6734872 c!1249083) b!6734862))

(assert (= (and b!6734872 (not c!1249083)) b!6734866))

(assert (= (and b!6734866 (not res!2755183)) b!6734870))

(assert (= (and b!6734870 res!2755187) b!6734865))

(assert (= (and b!6734865 res!2755185) b!6734875))

(assert (= (and b!6734875 res!2755190) b!6734868))

(assert (= (and b!6734870 (not res!2755186)) b!6734874))

(assert (= (and b!6734874 res!2755184) b!6734863))

(assert (= (and b!6734863 (not res!2755189)) b!6734867))

(assert (= (and b!6734867 (not res!2755188)) b!6734864))

(assert (= (or b!6734873 b!6734863 b!6734865) bm!608518))

(declare-fun m!7492760 () Bool)

(assert (=> b!6734868 m!7492760))

(declare-fun m!7492762 () Bool)

(assert (=> b!6734875 m!7492762))

(assert (=> b!6734875 m!7492762))

(declare-fun m!7492764 () Bool)

(assert (=> b!6734875 m!7492764))

(assert (=> b!6734869 m!7492760))

(assert (=> b!6734869 m!7492760))

(declare-fun m!7492766 () Bool)

(assert (=> b!6734869 m!7492766))

(assert (=> b!6734869 m!7492762))

(assert (=> b!6734869 m!7492766))

(assert (=> b!6734869 m!7492762))

(declare-fun m!7492768 () Bool)

(assert (=> b!6734869 m!7492768))

(assert (=> b!6734871 m!7491676))

(assert (=> b!6734867 m!7492762))

(assert (=> b!6734867 m!7492762))

(assert (=> b!6734867 m!7492764))

(assert (=> b!6734864 m!7492760))

(declare-fun m!7492770 () Bool)

(assert (=> bm!608518 m!7492770))

(assert (=> d!2116178 m!7492770))

(assert (=> d!2116178 m!7491464))

(assert (=> b!6733916 d!2116178))

(assert (=> b!6733916 d!2116084))

(declare-fun bm!608519 () Bool)

(declare-fun call!608525 () (InoxSet Context!11890))

(declare-fun call!608529 () (InoxSet Context!11890))

(assert (=> bm!608519 (= call!608525 call!608529)))

(declare-fun bm!608520 () Bool)

(declare-fun call!608524 () List!65983)

(declare-fun c!1249087 () Bool)

(declare-fun call!608528 () (InoxSet Context!11890))

(assert (=> bm!608520 (= call!608528 (derivationStepZipperDown!1789 (ite c!1249087 (regOne!33635 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))) (regOne!33634 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292)))))) (ite c!1249087 (ite (or c!1248862 c!1248860) (Context!11891 Nil!65859) (Context!11891 call!608352)) (Context!11891 call!608524)) (h!72306 s!2326)))))

(declare-fun c!1249084 () Bool)

(declare-fun d!2116180 () Bool)

(assert (=> d!2116180 (= c!1249084 (and ((_ is ElementMatch!16561) (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))) (= (c!1248671 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))) (h!72306 s!2326))))))

(declare-fun e!4068487 () (InoxSet Context!11890))

(assert (=> d!2116180 (= (derivationStepZipperDown!1789 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292)))) (ite (or c!1248862 c!1248860) (Context!11891 Nil!65859) (Context!11891 call!608352)) (h!72306 s!2326)) e!4068487)))

(declare-fun b!6734876 () Bool)

(declare-fun e!4068491 () (InoxSet Context!11890))

(assert (=> b!6734876 (= e!4068491 call!608525)))

(declare-fun bm!608521 () Bool)

(declare-fun call!608526 () List!65983)

(assert (=> bm!608521 (= call!608526 call!608524)))

(declare-fun b!6734877 () Bool)

(declare-fun c!1249085 () Bool)

(declare-fun e!4068488 () Bool)

(assert (=> b!6734877 (= c!1249085 e!4068488)))

(declare-fun res!2755191 () Bool)

(assert (=> b!6734877 (=> (not res!2755191) (not e!4068488))))

(assert (=> b!6734877 (= res!2755191 ((_ is Concat!25406) (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))))))

(declare-fun e!4068489 () (InoxSet Context!11890))

(declare-fun e!4068492 () (InoxSet Context!11890))

(assert (=> b!6734877 (= e!4068489 e!4068492)))

(declare-fun b!6734878 () Bool)

(assert (=> b!6734878 (= e!4068488 (nullable!6548 (regOne!33634 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292)))))))))

(declare-fun b!6734879 () Bool)

(declare-fun call!608527 () (InoxSet Context!11890))

(assert (=> b!6734879 (= e!4068489 ((_ map or) call!608528 call!608527))))

(declare-fun b!6734880 () Bool)

(declare-fun e!4068490 () (InoxSet Context!11890))

(assert (=> b!6734880 (= e!4068492 e!4068490)))

(declare-fun c!1249086 () Bool)

(assert (=> b!6734880 (= c!1249086 ((_ is Concat!25406) (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))))))

(declare-fun b!6734881 () Bool)

(assert (=> b!6734881 (= e!4068492 ((_ map or) call!608528 call!608529))))

(declare-fun b!6734882 () Bool)

(assert (=> b!6734882 (= e!4068487 e!4068489)))

(assert (=> b!6734882 (= c!1249087 ((_ is Union!16561) (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))))))

(declare-fun bm!608522 () Bool)

(assert (=> bm!608522 (= call!608527 (derivationStepZipperDown!1789 (ite c!1249087 (regTwo!33635 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))) (ite c!1249085 (regTwo!33634 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))) (ite c!1249086 (regOne!33634 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))) (reg!16890 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292)))))))) (ite (or c!1249087 c!1249085) (ite (or c!1248862 c!1248860) (Context!11891 Nil!65859) (Context!11891 call!608352)) (Context!11891 call!608526)) (h!72306 s!2326)))))

(declare-fun b!6734883 () Bool)

(assert (=> b!6734883 (= e!4068487 (store ((as const (Array Context!11890 Bool)) false) (ite (or c!1248862 c!1248860) (Context!11891 Nil!65859) (Context!11891 call!608352)) true))))

(declare-fun b!6734884 () Bool)

(assert (=> b!6734884 (= e!4068490 call!608525)))

(declare-fun b!6734885 () Bool)

(assert (=> b!6734885 (= e!4068491 ((as const (Array Context!11890 Bool)) false))))

(declare-fun bm!608523 () Bool)

(assert (=> bm!608523 (= call!608529 call!608527)))

(declare-fun b!6734886 () Bool)

(declare-fun c!1249088 () Bool)

(assert (=> b!6734886 (= c!1249088 ((_ is Star!16561) (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))))))

(assert (=> b!6734886 (= e!4068490 e!4068491)))

(declare-fun bm!608524 () Bool)

(assert (=> bm!608524 (= call!608524 ($colon$colon!2378 (exprs!6445 (ite (or c!1248862 c!1248860) (Context!11891 Nil!65859) (Context!11891 call!608352))) (ite (or c!1249085 c!1249086) (regTwo!33634 (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292))))) (ite c!1248862 (regTwo!33635 r!7292) (ite c!1248860 (regTwo!33634 r!7292) (ite c!1248861 (regOne!33634 r!7292) (reg!16890 r!7292)))))))))

(assert (= (and d!2116180 c!1249084) b!6734883))

(assert (= (and d!2116180 (not c!1249084)) b!6734882))

(assert (= (and b!6734882 c!1249087) b!6734879))

(assert (= (and b!6734882 (not c!1249087)) b!6734877))

(assert (= (and b!6734877 res!2755191) b!6734878))

(assert (= (and b!6734877 c!1249085) b!6734881))

(assert (= (and b!6734877 (not c!1249085)) b!6734880))

(assert (= (and b!6734880 c!1249086) b!6734884))

(assert (= (and b!6734880 (not c!1249086)) b!6734886))

(assert (= (and b!6734886 c!1249088) b!6734876))

(assert (= (and b!6734886 (not c!1249088)) b!6734885))

(assert (= (or b!6734884 b!6734876) bm!608521))

(assert (= (or b!6734884 b!6734876) bm!608519))

(assert (= (or b!6734881 bm!608521) bm!608524))

(assert (= (or b!6734881 bm!608519) bm!608523))

(assert (= (or b!6734879 bm!608523) bm!608522))

(assert (= (or b!6734879 b!6734881) bm!608520))

(declare-fun m!7492772 () Bool)

(assert (=> bm!608522 m!7492772))

(declare-fun m!7492774 () Bool)

(assert (=> b!6734883 m!7492774))

(declare-fun m!7492776 () Bool)

(assert (=> bm!608520 m!7492776))

(declare-fun m!7492778 () Bool)

(assert (=> b!6734878 m!7492778))

(declare-fun m!7492780 () Bool)

(assert (=> bm!608524 m!7492780))

(assert (=> bm!608348 d!2116180))

(declare-fun d!2116182 () Bool)

(assert (=> d!2116182 (= (isEmpty!38193 (tail!12634 s!2326)) ((_ is Nil!65858) (tail!12634 s!2326)))))

(assert (=> b!6733738 d!2116182))

(assert (=> b!6733738 d!2115982))

(declare-fun d!2116184 () Bool)

(assert (=> d!2116184 (= (head!13550 (exprs!6445 (h!72308 zl!343))) (h!72307 (exprs!6445 (h!72308 zl!343))))))

(assert (=> b!6733949 d!2116184))

(declare-fun b!6734892 () Bool)

(declare-fun e!4068501 () Bool)

(declare-fun e!4068498 () Bool)

(assert (=> b!6734892 (= e!4068501 e!4068498)))

(declare-fun res!2755202 () Bool)

(assert (=> b!6734892 (=> res!2755202 e!4068498)))

(declare-fun call!608530 () Bool)

(assert (=> b!6734892 (= res!2755202 call!608530)))

(declare-fun bm!608525 () Bool)

(assert (=> bm!608525 (= call!608530 (isEmpty!38193 (_1!36839 (get!22913 lt!2438188))))))

(declare-fun b!6734893 () Bool)

(assert (=> b!6734893 (= e!4068498 (not (= (head!13549 (_1!36839 (get!22913 lt!2438188))) (c!1248671 (reg!16890 r!7292)))))))

(declare-fun b!6734894 () Bool)

(declare-fun res!2755198 () Bool)

(declare-fun e!4068499 () Bool)

(assert (=> b!6734894 (=> (not res!2755198) (not e!4068499))))

(assert (=> b!6734894 (= res!2755198 (not call!608530))))

(declare-fun b!6734895 () Bool)

(declare-fun res!2755196 () Bool)

(declare-fun e!4068500 () Bool)

(assert (=> b!6734895 (=> res!2755196 e!4068500)))

(assert (=> b!6734895 (= res!2755196 (not ((_ is ElementMatch!16561) (reg!16890 r!7292))))))

(declare-fun e!4068495 () Bool)

(assert (=> b!6734895 (= e!4068495 e!4068500)))

(declare-fun b!6734896 () Bool)

(declare-fun res!2755201 () Bool)

(assert (=> b!6734896 (=> res!2755201 e!4068498)))

(assert (=> b!6734896 (= res!2755201 (not (isEmpty!38193 (tail!12634 (_1!36839 (get!22913 lt!2438188))))))))

(declare-fun b!6734897 () Bool)

(assert (=> b!6734897 (= e!4068499 (= (head!13549 (_1!36839 (get!22913 lt!2438188))) (c!1248671 (reg!16890 r!7292))))))

(declare-fun d!2116186 () Bool)

(declare-fun e!4068497 () Bool)

(assert (=> d!2116186 e!4068497))

(declare-fun c!1249090 () Bool)

(assert (=> d!2116186 (= c!1249090 ((_ is EmptyExpr!16561) (reg!16890 r!7292)))))

(declare-fun lt!2438245 () Bool)

(declare-fun e!4068496 () Bool)

(assert (=> d!2116186 (= lt!2438245 e!4068496)))

(declare-fun c!1249089 () Bool)

(assert (=> d!2116186 (= c!1249089 (isEmpty!38193 (_1!36839 (get!22913 lt!2438188))))))

(assert (=> d!2116186 (validRegex!8297 (reg!16890 r!7292))))

(assert (=> d!2116186 (= (matchR!8744 (reg!16890 r!7292) (_1!36839 (get!22913 lt!2438188))) lt!2438245)))

(declare-fun b!6734891 () Bool)

(assert (=> b!6734891 (= e!4068495 (not lt!2438245))))

(declare-fun b!6734898 () Bool)

(assert (=> b!6734898 (= e!4068496 (matchR!8744 (derivativeStep!5233 (reg!16890 r!7292) (head!13549 (_1!36839 (get!22913 lt!2438188)))) (tail!12634 (_1!36839 (get!22913 lt!2438188)))))))

(declare-fun b!6734899 () Bool)

(declare-fun res!2755199 () Bool)

(assert (=> b!6734899 (=> res!2755199 e!4068500)))

(assert (=> b!6734899 (= res!2755199 e!4068499)))

(declare-fun res!2755200 () Bool)

(assert (=> b!6734899 (=> (not res!2755200) (not e!4068499))))

(assert (=> b!6734899 (= res!2755200 lt!2438245)))

(declare-fun b!6734900 () Bool)

(assert (=> b!6734900 (= e!4068496 (nullable!6548 (reg!16890 r!7292)))))

(declare-fun b!6734901 () Bool)

(assert (=> b!6734901 (= e!4068497 e!4068495)))

(declare-fun c!1249091 () Bool)

(assert (=> b!6734901 (= c!1249091 ((_ is EmptyLang!16561) (reg!16890 r!7292)))))

(declare-fun b!6734902 () Bool)

(assert (=> b!6734902 (= e!4068497 (= lt!2438245 call!608530))))

(declare-fun b!6734903 () Bool)

(assert (=> b!6734903 (= e!4068500 e!4068501)))

(declare-fun res!2755197 () Bool)

(assert (=> b!6734903 (=> (not res!2755197) (not e!4068501))))

(assert (=> b!6734903 (= res!2755197 (not lt!2438245))))

(declare-fun b!6734904 () Bool)

(declare-fun res!2755203 () Bool)

(assert (=> b!6734904 (=> (not res!2755203) (not e!4068499))))

(assert (=> b!6734904 (= res!2755203 (isEmpty!38193 (tail!12634 (_1!36839 (get!22913 lt!2438188)))))))

(assert (= (and d!2116186 c!1249089) b!6734900))

(assert (= (and d!2116186 (not c!1249089)) b!6734898))

(assert (= (and d!2116186 c!1249090) b!6734902))

(assert (= (and d!2116186 (not c!1249090)) b!6734901))

(assert (= (and b!6734901 c!1249091) b!6734891))

(assert (= (and b!6734901 (not c!1249091)) b!6734895))

(assert (= (and b!6734895 (not res!2755196)) b!6734899))

(assert (= (and b!6734899 res!2755200) b!6734894))

(assert (= (and b!6734894 res!2755198) b!6734904))

(assert (= (and b!6734904 res!2755203) b!6734897))

(assert (= (and b!6734899 (not res!2755199)) b!6734903))

(assert (= (and b!6734903 res!2755197) b!6734892))

(assert (= (and b!6734892 (not res!2755202)) b!6734896))

(assert (= (and b!6734896 (not res!2755201)) b!6734893))

(assert (= (or b!6734902 b!6734892 b!6734894) bm!608525))

(declare-fun m!7492782 () Bool)

(assert (=> b!6734897 m!7492782))

(declare-fun m!7492784 () Bool)

(assert (=> b!6734904 m!7492784))

(assert (=> b!6734904 m!7492784))

(declare-fun m!7492786 () Bool)

(assert (=> b!6734904 m!7492786))

(assert (=> b!6734898 m!7492782))

(assert (=> b!6734898 m!7492782))

(declare-fun m!7492788 () Bool)

(assert (=> b!6734898 m!7492788))

(assert (=> b!6734898 m!7492784))

(assert (=> b!6734898 m!7492788))

(assert (=> b!6734898 m!7492784))

(declare-fun m!7492790 () Bool)

(assert (=> b!6734898 m!7492790))

(assert (=> b!6734900 m!7491864))

(assert (=> b!6734896 m!7492784))

(assert (=> b!6734896 m!7492784))

(assert (=> b!6734896 m!7492786))

(assert (=> b!6734893 m!7492782))

(declare-fun m!7492792 () Bool)

(assert (=> bm!608525 m!7492792))

(assert (=> d!2116186 m!7492792))

(assert (=> d!2116186 m!7491732))

(assert (=> b!6733918 d!2116186))

(assert (=> b!6733918 d!2116084))

(declare-fun d!2116188 () Bool)

(assert (=> d!2116188 (= (nullable!6548 (h!72307 (exprs!6445 lt!2438117))) (nullableFct!2462 (h!72307 (exprs!6445 lt!2438117))))))

(declare-fun bs!1791078 () Bool)

(assert (= bs!1791078 d!2116188))

(declare-fun m!7492794 () Bool)

(assert (=> bs!1791078 m!7492794))

(assert (=> b!6734070 d!2116188))

(assert (=> bs!1790779 d!2115770))

(assert (=> b!6733730 d!2116182))

(assert (=> b!6733730 d!2115982))

(declare-fun d!2116190 () Bool)

(assert (=> d!2116190 (= ($colon$colon!2378 (exprs!6445 lt!2438119) (ite (or c!1248847 c!1248848) (regTwo!33634 (reg!16890 r!7292)) (reg!16890 r!7292))) (Cons!65859 (ite (or c!1248847 c!1248848) (regTwo!33634 (reg!16890 r!7292)) (reg!16890 r!7292)) (exprs!6445 lt!2438119)))))

(assert (=> bm!608343 d!2116190))

(declare-fun d!2116192 () Bool)

(assert (=> d!2116192 (= (isEmptyLang!1935 lt!2438198) ((_ is EmptyLang!16561) lt!2438198))))

(assert (=> b!6733983 d!2116192))

(declare-fun d!2116194 () Bool)

(declare-fun res!2755204 () Bool)

(declare-fun e!4068502 () Bool)

(assert (=> d!2116194 (=> res!2755204 e!4068502)))

(assert (=> d!2116194 (= res!2755204 ((_ is Nil!65859) (exprs!6445 (h!72308 zl!343))))))

(assert (=> d!2116194 (= (forall!15761 (exprs!6445 (h!72308 zl!343)) lambda!378084) e!4068502)))

(declare-fun b!6734905 () Bool)

(declare-fun e!4068503 () Bool)

(assert (=> b!6734905 (= e!4068502 e!4068503)))

(declare-fun res!2755205 () Bool)

(assert (=> b!6734905 (=> (not res!2755205) (not e!4068503))))

(assert (=> b!6734905 (= res!2755205 (dynLambda!26274 lambda!378084 (h!72307 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun b!6734906 () Bool)

(assert (=> b!6734906 (= e!4068503 (forall!15761 (t!379674 (exprs!6445 (h!72308 zl!343))) lambda!378084))))

(assert (= (and d!2116194 (not res!2755204)) b!6734905))

(assert (= (and b!6734905 res!2755205) b!6734906))

(declare-fun b_lambda!253575 () Bool)

(assert (=> (not b_lambda!253575) (not b!6734905)))

(declare-fun m!7492796 () Bool)

(assert (=> b!6734905 m!7492796))

(declare-fun m!7492798 () Bool)

(assert (=> b!6734906 m!7492798))

(assert (=> d!2115756 d!2116194))

(declare-fun b!6734908 () Bool)

(declare-fun e!4068510 () Bool)

(declare-fun e!4068507 () Bool)

(assert (=> b!6734908 (= e!4068510 e!4068507)))

(declare-fun res!2755212 () Bool)

(assert (=> b!6734908 (=> res!2755212 e!4068507)))

(declare-fun call!608531 () Bool)

(assert (=> b!6734908 (= res!2755212 call!608531)))

(declare-fun bm!608526 () Bool)

(assert (=> bm!608526 (= call!608531 (isEmpty!38193 (tail!12634 s!2326)))))

(declare-fun b!6734909 () Bool)

(assert (=> b!6734909 (= e!4068507 (not (= (head!13549 (tail!12634 s!2326)) (c!1248671 (derivativeStep!5233 r!7292 (head!13549 s!2326))))))))

(declare-fun b!6734910 () Bool)

(declare-fun res!2755208 () Bool)

(declare-fun e!4068508 () Bool)

(assert (=> b!6734910 (=> (not res!2755208) (not e!4068508))))

(assert (=> b!6734910 (= res!2755208 (not call!608531))))

(declare-fun b!6734911 () Bool)

(declare-fun res!2755206 () Bool)

(declare-fun e!4068509 () Bool)

(assert (=> b!6734911 (=> res!2755206 e!4068509)))

(assert (=> b!6734911 (= res!2755206 (not ((_ is ElementMatch!16561) (derivativeStep!5233 r!7292 (head!13549 s!2326)))))))

(declare-fun e!4068504 () Bool)

(assert (=> b!6734911 (= e!4068504 e!4068509)))

(declare-fun b!6734912 () Bool)

(declare-fun res!2755211 () Bool)

(assert (=> b!6734912 (=> res!2755211 e!4068507)))

(assert (=> b!6734912 (= res!2755211 (not (isEmpty!38193 (tail!12634 (tail!12634 s!2326)))))))

(declare-fun b!6734913 () Bool)

(assert (=> b!6734913 (= e!4068508 (= (head!13549 (tail!12634 s!2326)) (c!1248671 (derivativeStep!5233 r!7292 (head!13549 s!2326)))))))

(declare-fun d!2116196 () Bool)

(declare-fun e!4068506 () Bool)

(assert (=> d!2116196 e!4068506))

(declare-fun c!1249093 () Bool)

(assert (=> d!2116196 (= c!1249093 ((_ is EmptyExpr!16561) (derivativeStep!5233 r!7292 (head!13549 s!2326))))))

(declare-fun lt!2438246 () Bool)

(declare-fun e!4068505 () Bool)

(assert (=> d!2116196 (= lt!2438246 e!4068505)))

(declare-fun c!1249092 () Bool)

(assert (=> d!2116196 (= c!1249092 (isEmpty!38193 (tail!12634 s!2326)))))

(assert (=> d!2116196 (validRegex!8297 (derivativeStep!5233 r!7292 (head!13549 s!2326)))))

(assert (=> d!2116196 (= (matchR!8744 (derivativeStep!5233 r!7292 (head!13549 s!2326)) (tail!12634 s!2326)) lt!2438246)))

(declare-fun b!6734907 () Bool)

(assert (=> b!6734907 (= e!4068504 (not lt!2438246))))

(declare-fun b!6734914 () Bool)

(assert (=> b!6734914 (= e!4068505 (matchR!8744 (derivativeStep!5233 (derivativeStep!5233 r!7292 (head!13549 s!2326)) (head!13549 (tail!12634 s!2326))) (tail!12634 (tail!12634 s!2326))))))

(declare-fun b!6734915 () Bool)

(declare-fun res!2755209 () Bool)

(assert (=> b!6734915 (=> res!2755209 e!4068509)))

(assert (=> b!6734915 (= res!2755209 e!4068508)))

(declare-fun res!2755210 () Bool)

(assert (=> b!6734915 (=> (not res!2755210) (not e!4068508))))

(assert (=> b!6734915 (= res!2755210 lt!2438246)))

(declare-fun b!6734916 () Bool)

(assert (=> b!6734916 (= e!4068505 (nullable!6548 (derivativeStep!5233 r!7292 (head!13549 s!2326))))))

(declare-fun b!6734917 () Bool)

(assert (=> b!6734917 (= e!4068506 e!4068504)))

(declare-fun c!1249094 () Bool)

(assert (=> b!6734917 (= c!1249094 ((_ is EmptyLang!16561) (derivativeStep!5233 r!7292 (head!13549 s!2326))))))

(declare-fun b!6734918 () Bool)

(assert (=> b!6734918 (= e!4068506 (= lt!2438246 call!608531))))

(declare-fun b!6734919 () Bool)

(assert (=> b!6734919 (= e!4068509 e!4068510)))

(declare-fun res!2755207 () Bool)

(assert (=> b!6734919 (=> (not res!2755207) (not e!4068510))))

(assert (=> b!6734919 (= res!2755207 (not lt!2438246))))

(declare-fun b!6734920 () Bool)

(declare-fun res!2755213 () Bool)

(assert (=> b!6734920 (=> (not res!2755213) (not e!4068508))))

(assert (=> b!6734920 (= res!2755213 (isEmpty!38193 (tail!12634 (tail!12634 s!2326))))))

(assert (= (and d!2116196 c!1249092) b!6734916))

(assert (= (and d!2116196 (not c!1249092)) b!6734914))

(assert (= (and d!2116196 c!1249093) b!6734918))

(assert (= (and d!2116196 (not c!1249093)) b!6734917))

(assert (= (and b!6734917 c!1249094) b!6734907))

(assert (= (and b!6734917 (not c!1249094)) b!6734911))

(assert (= (and b!6734911 (not res!2755206)) b!6734915))

(assert (= (and b!6734915 res!2755210) b!6734910))

(assert (= (and b!6734910 res!2755208) b!6734920))

(assert (= (and b!6734920 res!2755213) b!6734913))

(assert (= (and b!6734915 (not res!2755209)) b!6734919))

(assert (= (and b!6734919 res!2755207) b!6734908))

(assert (= (and b!6734908 (not res!2755212)) b!6734912))

(assert (= (and b!6734912 (not res!2755211)) b!6734909))

(assert (= (or b!6734918 b!6734908 b!6734910) bm!608526))

(assert (=> b!6734913 m!7491668))

(assert (=> b!6734913 m!7492378))

(assert (=> b!6734920 m!7491668))

(assert (=> b!6734920 m!7492382))

(assert (=> b!6734920 m!7492382))

(declare-fun m!7492800 () Bool)

(assert (=> b!6734920 m!7492800))

(assert (=> b!6734914 m!7491668))

(assert (=> b!6734914 m!7492378))

(assert (=> b!6734914 m!7491672))

(assert (=> b!6734914 m!7492378))

(declare-fun m!7492802 () Bool)

(assert (=> b!6734914 m!7492802))

(assert (=> b!6734914 m!7491668))

(assert (=> b!6734914 m!7492382))

(assert (=> b!6734914 m!7492802))

(assert (=> b!6734914 m!7492382))

(declare-fun m!7492806 () Bool)

(assert (=> b!6734914 m!7492806))

(assert (=> b!6734916 m!7491672))

(declare-fun m!7492808 () Bool)

(assert (=> b!6734916 m!7492808))

(assert (=> b!6734912 m!7491668))

(assert (=> b!6734912 m!7492382))

(assert (=> b!6734912 m!7492382))

(assert (=> b!6734912 m!7492800))

(assert (=> b!6734909 m!7491668))

(assert (=> b!6734909 m!7492378))

(assert (=> bm!608526 m!7491668))

(assert (=> bm!608526 m!7491670))

(assert (=> d!2116196 m!7491668))

(assert (=> d!2116196 m!7491670))

(assert (=> d!2116196 m!7491672))

(declare-fun m!7492812 () Bool)

(assert (=> d!2116196 m!7492812))

(assert (=> b!6733732 d!2116196))

(declare-fun b!6735057 () Bool)

(declare-fun e!4068557 () Regex!16561)

(declare-fun call!608543 () Regex!16561)

(assert (=> b!6735057 (= e!4068557 (Union!16561 (Concat!25406 call!608543 (regTwo!33634 r!7292)) EmptyLang!16561))))

(declare-fun b!6735058 () Bool)

(declare-fun e!4068560 () Regex!16561)

(assert (=> b!6735058 (= e!4068560 EmptyLang!16561)))

(declare-fun b!6735059 () Bool)

(declare-fun e!4068556 () Regex!16561)

(declare-fun call!608540 () Regex!16561)

(declare-fun call!608542 () Regex!16561)

(assert (=> b!6735059 (= e!4068556 (Union!16561 call!608540 call!608542))))

(declare-fun b!6735060 () Bool)

(assert (=> b!6735060 (= e!4068557 (Union!16561 (Concat!25406 call!608540 (regTwo!33634 r!7292)) call!608543))))

(declare-fun bm!608535 () Bool)

(declare-fun c!1249108 () Bool)

(declare-fun c!1249106 () Bool)

(declare-fun c!1249105 () Bool)

(assert (=> bm!608535 (= call!608542 (derivativeStep!5233 (ite c!1249106 (regTwo!33635 r!7292) (ite c!1249105 (reg!16890 r!7292) (ite c!1249108 (regTwo!33634 r!7292) (regOne!33634 r!7292)))) (head!13549 s!2326)))))

(declare-fun d!2116200 () Bool)

(declare-fun lt!2438249 () Regex!16561)

(assert (=> d!2116200 (validRegex!8297 lt!2438249)))

(assert (=> d!2116200 (= lt!2438249 e!4068560)))

(declare-fun c!1249109 () Bool)

(assert (=> d!2116200 (= c!1249109 (or ((_ is EmptyExpr!16561) r!7292) ((_ is EmptyLang!16561) r!7292)))))

(assert (=> d!2116200 (validRegex!8297 r!7292)))

(assert (=> d!2116200 (= (derivativeStep!5233 r!7292 (head!13549 s!2326)) lt!2438249)))

(declare-fun b!6735061 () Bool)

(assert (=> b!6735061 (= c!1249108 (nullable!6548 (regOne!33634 r!7292)))))

(declare-fun e!4068559 () Regex!16561)

(assert (=> b!6735061 (= e!4068559 e!4068557)))

(declare-fun bm!608536 () Bool)

(declare-fun call!608541 () Regex!16561)

(assert (=> bm!608536 (= call!608543 call!608541)))

(declare-fun b!6735062 () Bool)

(assert (=> b!6735062 (= e!4068559 (Concat!25406 call!608541 r!7292))))

(declare-fun bm!608537 () Bool)

(assert (=> bm!608537 (= call!608540 (derivativeStep!5233 (ite c!1249106 (regOne!33635 r!7292) (regOne!33634 r!7292)) (head!13549 s!2326)))))

(declare-fun b!6735063 () Bool)

(declare-fun e!4068558 () Regex!16561)

(assert (=> b!6735063 (= e!4068560 e!4068558)))

(declare-fun c!1249107 () Bool)

(assert (=> b!6735063 (= c!1249107 ((_ is ElementMatch!16561) r!7292))))

(declare-fun bm!608538 () Bool)

(assert (=> bm!608538 (= call!608541 call!608542)))

(declare-fun b!6735064 () Bool)

(assert (=> b!6735064 (= e!4068556 e!4068559)))

(assert (=> b!6735064 (= c!1249105 ((_ is Star!16561) r!7292))))

(declare-fun b!6735065 () Bool)

(assert (=> b!6735065 (= e!4068558 (ite (= (head!13549 s!2326) (c!1248671 r!7292)) EmptyExpr!16561 EmptyLang!16561))))

(declare-fun b!6735066 () Bool)

(assert (=> b!6735066 (= c!1249106 ((_ is Union!16561) r!7292))))

(assert (=> b!6735066 (= e!4068558 e!4068556)))

(assert (= (and d!2116200 c!1249109) b!6735058))

(assert (= (and d!2116200 (not c!1249109)) b!6735063))

(assert (= (and b!6735063 c!1249107) b!6735065))

(assert (= (and b!6735063 (not c!1249107)) b!6735066))

(assert (= (and b!6735066 c!1249106) b!6735059))

(assert (= (and b!6735066 (not c!1249106)) b!6735064))

(assert (= (and b!6735064 c!1249105) b!6735062))

(assert (= (and b!6735064 (not c!1249105)) b!6735061))

(assert (= (and b!6735061 c!1249108) b!6735060))

(assert (= (and b!6735061 (not c!1249108)) b!6735057))

(assert (= (or b!6735060 b!6735057) bm!608536))

(assert (= (or b!6735062 bm!608536) bm!608538))

(assert (= (or b!6735059 bm!608538) bm!608535))

(assert (= (or b!6735059 b!6735060) bm!608537))

(assert (=> bm!608535 m!7491666))

(declare-fun m!7492828 () Bool)

(assert (=> bm!608535 m!7492828))

(declare-fun m!7492830 () Bool)

(assert (=> d!2116200 m!7492830))

(assert (=> d!2116200 m!7491464))

(assert (=> b!6735061 m!7491932))

(assert (=> bm!608537 m!7491666))

(declare-fun m!7492832 () Bool)

(assert (=> bm!608537 m!7492832))

(assert (=> b!6733732 d!2116200))

(assert (=> b!6733732 d!2115910))

(assert (=> b!6733732 d!2115982))

(declare-fun bs!1791097 () Bool)

(declare-fun d!2116214 () Bool)

(assert (= bs!1791097 (and d!2116214 d!2116062)))

(declare-fun lambda!378152 () Int)

(assert (=> bs!1791097 (= lambda!378152 lambda!378130)))

(declare-fun bs!1791098 () Bool)

(assert (= bs!1791098 (and d!2116214 d!2115750)))

(assert (=> bs!1791098 (= lambda!378152 lambda!378083)))

(declare-fun bs!1791099 () Bool)

(assert (= bs!1791099 (and d!2116214 d!2116058)))

(assert (=> bs!1791099 (= lambda!378152 lambda!378129)))

(declare-fun bs!1791100 () Bool)

(assert (= bs!1791100 (and d!2116214 d!2116046)))

(assert (=> bs!1791100 (= lambda!378152 lambda!378128)))

(declare-fun bs!1791101 () Bool)

(assert (= bs!1791101 (and d!2116214 d!2115744)))

(assert (=> bs!1791101 (= lambda!378152 lambda!378074)))

(declare-fun bs!1791102 () Bool)

(assert (= bs!1791102 (and d!2116214 d!2115758)))

(assert (=> bs!1791102 (= lambda!378152 lambda!378085)))

(declare-fun bs!1791103 () Bool)

(assert (= bs!1791103 (and d!2116214 d!2116078)))

(assert (=> bs!1791103 (= lambda!378152 lambda!378131)))

(declare-fun bs!1791104 () Bool)

(assert (= bs!1791104 (and d!2116214 d!2115746)))

(assert (=> bs!1791104 (= lambda!378152 lambda!378077)))

(declare-fun bs!1791105 () Bool)

(assert (= bs!1791105 (and d!2116214 d!2116110)))

(assert (=> bs!1791105 (= lambda!378152 lambda!378137)))

(declare-fun bs!1791106 () Bool)

(assert (= bs!1791106 (and d!2116214 d!2115756)))

(assert (=> bs!1791106 (= lambda!378152 lambda!378084)))

(declare-fun bs!1791107 () Bool)

(assert (= bs!1791107 (and d!2116214 d!2115748)))

(assert (=> bs!1791107 (= lambda!378152 lambda!378080)))

(declare-fun bs!1791108 () Bool)

(assert (= bs!1791108 (and d!2116214 d!2115862)))

(assert (=> bs!1791108 (= lambda!378152 lambda!378091)))

(declare-fun b!6735067 () Bool)

(declare-fun e!4068564 () Bool)

(declare-fun lt!2438250 () Regex!16561)

(assert (=> b!6735067 (= e!4068564 (= lt!2438250 (head!13550 (t!379674 (unfocusZipperList!1982 zl!343)))))))

(declare-fun b!6735068 () Bool)

(declare-fun e!4068563 () Regex!16561)

(declare-fun e!4068562 () Regex!16561)

(assert (=> b!6735068 (= e!4068563 e!4068562)))

(declare-fun c!1249111 () Bool)

(assert (=> b!6735068 (= c!1249111 ((_ is Cons!65859) (t!379674 (unfocusZipperList!1982 zl!343))))))

(declare-fun b!6735069 () Bool)

(assert (=> b!6735069 (= e!4068562 EmptyLang!16561)))

(declare-fun b!6735070 () Bool)

(assert (=> b!6735070 (= e!4068564 (isUnion!1365 lt!2438250))))

(declare-fun e!4068566 () Bool)

(assert (=> d!2116214 e!4068566))

(declare-fun res!2755215 () Bool)

(assert (=> d!2116214 (=> (not res!2755215) (not e!4068566))))

(assert (=> d!2116214 (= res!2755215 (validRegex!8297 lt!2438250))))

(assert (=> d!2116214 (= lt!2438250 e!4068563)))

(declare-fun c!1249112 () Bool)

(declare-fun e!4068565 () Bool)

(assert (=> d!2116214 (= c!1249112 e!4068565)))

(declare-fun res!2755214 () Bool)

(assert (=> d!2116214 (=> (not res!2755214) (not e!4068565))))

(assert (=> d!2116214 (= res!2755214 ((_ is Cons!65859) (t!379674 (unfocusZipperList!1982 zl!343))))))

(assert (=> d!2116214 (forall!15761 (t!379674 (unfocusZipperList!1982 zl!343)) lambda!378152)))

(assert (=> d!2116214 (= (generalisedUnion!2405 (t!379674 (unfocusZipperList!1982 zl!343))) lt!2438250)))

(declare-fun b!6735071 () Bool)

(assert (=> b!6735071 (= e!4068563 (h!72307 (t!379674 (unfocusZipperList!1982 zl!343))))))

(declare-fun b!6735072 () Bool)

(declare-fun e!4068561 () Bool)

(assert (=> b!6735072 (= e!4068566 e!4068561)))

(declare-fun c!1249110 () Bool)

(assert (=> b!6735072 (= c!1249110 (isEmpty!38198 (t!379674 (unfocusZipperList!1982 zl!343))))))

(declare-fun b!6735073 () Bool)

(assert (=> b!6735073 (= e!4068565 (isEmpty!38198 (t!379674 (t!379674 (unfocusZipperList!1982 zl!343)))))))

(declare-fun b!6735074 () Bool)

(assert (=> b!6735074 (= e!4068561 (isEmptyLang!1935 lt!2438250))))

(declare-fun b!6735075 () Bool)

(assert (=> b!6735075 (= e!4068561 e!4068564)))

(declare-fun c!1249113 () Bool)

(assert (=> b!6735075 (= c!1249113 (isEmpty!38198 (tail!12635 (t!379674 (unfocusZipperList!1982 zl!343)))))))

(declare-fun b!6735076 () Bool)

(assert (=> b!6735076 (= e!4068562 (Union!16561 (h!72307 (t!379674 (unfocusZipperList!1982 zl!343))) (generalisedUnion!2405 (t!379674 (t!379674 (unfocusZipperList!1982 zl!343))))))))

(assert (= (and d!2116214 res!2755214) b!6735073))

(assert (= (and d!2116214 c!1249112) b!6735071))

(assert (= (and d!2116214 (not c!1249112)) b!6735068))

(assert (= (and b!6735068 c!1249111) b!6735076))

(assert (= (and b!6735068 (not c!1249111)) b!6735069))

(assert (= (and d!2116214 res!2755215) b!6735072))

(assert (= (and b!6735072 c!1249110) b!6735074))

(assert (= (and b!6735072 (not c!1249110)) b!6735075))

(assert (= (and b!6735075 c!1249113) b!6735067))

(assert (= (and b!6735075 (not c!1249113)) b!6735070))

(declare-fun m!7492834 () Bool)

(assert (=> d!2116214 m!7492834))

(declare-fun m!7492836 () Bool)

(assert (=> d!2116214 m!7492836))

(declare-fun m!7492838 () Bool)

(assert (=> b!6735070 m!7492838))

(declare-fun m!7492840 () Bool)

(assert (=> b!6735075 m!7492840))

(assert (=> b!6735075 m!7492840))

(declare-fun m!7492842 () Bool)

(assert (=> b!6735075 m!7492842))

(assert (=> b!6735072 m!7491844))

(declare-fun m!7492844 () Bool)

(assert (=> b!6735073 m!7492844))

(declare-fun m!7492846 () Bool)

(assert (=> b!6735074 m!7492846))

(declare-fun m!7492848 () Bool)

(assert (=> b!6735076 m!7492848))

(declare-fun m!7492850 () Bool)

(assert (=> b!6735067 m!7492850))

(assert (=> b!6733985 d!2116214))

(assert (=> d!2115792 d!2115788))

(declare-fun d!2116216 () Bool)

(assert (=> d!2116216 (= (flatMap!2042 z!1189 lambda!378011) (dynLambda!26272 lambda!378011 (h!72308 zl!343)))))

(assert (=> d!2116216 true))

(declare-fun _$13!4055 () Unit!159813)

(assert (=> d!2116216 (= (choose!50196 z!1189 (h!72308 zl!343) lambda!378011) _$13!4055)))

(declare-fun b_lambda!253593 () Bool)

(assert (=> (not b_lambda!253593) (not d!2116216)))

(declare-fun bs!1791109 () Bool)

(assert (= bs!1791109 d!2116216))

(assert (=> bs!1791109 m!7491456))

(assert (=> bs!1791109 m!7491954))

(assert (=> d!2115792 d!2116216))

(declare-fun bs!1791110 () Bool)

(declare-fun d!2116218 () Bool)

(assert (= bs!1791110 (and d!2116218 d!2116088)))

(declare-fun lambda!378153 () Int)

(assert (=> bs!1791110 (= lambda!378153 lambda!378134)))

(assert (=> d!2116218 (= (nullableZipper!2276 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326))) (exists!2695 (derivationStepZipper!2505 lt!2438114 (h!72306 s!2326)) lambda!378153))))

(declare-fun bs!1791111 () Bool)

(assert (= bs!1791111 d!2116218))

(assert (=> bs!1791111 m!7491502))

(declare-fun m!7492852 () Bool)

(assert (=> bs!1791111 m!7492852))

(assert (=> b!6734081 d!2116218))

(declare-fun d!2116220 () Bool)

(assert (=> d!2116220 (= (nullable!6548 r!7292) (nullableFct!2462 r!7292))))

(declare-fun bs!1791112 () Bool)

(assert (= bs!1791112 d!2116220))

(declare-fun m!7492854 () Bool)

(assert (=> bs!1791112 m!7492854))

(assert (=> b!6733734 d!2116220))

(assert (=> d!2115674 d!2115714))

(assert (=> d!2115674 d!2115754))

(declare-fun b!6735078 () Bool)

(declare-fun e!4068567 () List!65982)

(assert (=> b!6735078 (= e!4068567 (Cons!65858 (h!72306 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858))) (++!14717 (t!379673 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858))) (t!379673 s!2326))))))

(declare-fun d!2116222 () Bool)

(declare-fun e!4068568 () Bool)

(assert (=> d!2116222 e!4068568))

(declare-fun res!2755216 () Bool)

(assert (=> d!2116222 (=> (not res!2755216) (not e!4068568))))

(declare-fun lt!2438251 () List!65982)

(assert (=> d!2116222 (= res!2755216 (= (content!12793 lt!2438251) ((_ map or) (content!12793 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858))) (content!12793 (t!379673 s!2326)))))))

(assert (=> d!2116222 (= lt!2438251 e!4068567)))

(declare-fun c!1249114 () Bool)

(assert (=> d!2116222 (= c!1249114 ((_ is Nil!65858) (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858))))))

(assert (=> d!2116222 (= (++!14717 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)) (t!379673 s!2326)) lt!2438251)))

(declare-fun b!6735080 () Bool)

(assert (=> b!6735080 (= e!4068568 (or (not (= (t!379673 s!2326) Nil!65858)) (= lt!2438251 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)))))))

(declare-fun b!6735077 () Bool)

(assert (=> b!6735077 (= e!4068567 (t!379673 s!2326))))

(declare-fun b!6735079 () Bool)

(declare-fun res!2755217 () Bool)

(assert (=> b!6735079 (=> (not res!2755217) (not e!4068568))))

(assert (=> b!6735079 (= res!2755217 (= (size!40611 lt!2438251) (+ (size!40611 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858))) (size!40611 (t!379673 s!2326)))))))

(assert (= (and d!2116222 c!1249114) b!6735077))

(assert (= (and d!2116222 (not c!1249114)) b!6735078))

(assert (= (and d!2116222 res!2755216) b!6735079))

(assert (= (and b!6735079 res!2755217) b!6735080))

(declare-fun m!7492856 () Bool)

(assert (=> b!6735078 m!7492856))

(declare-fun m!7492858 () Bool)

(assert (=> d!2116222 m!7492858))

(assert (=> d!2116222 m!7491794))

(declare-fun m!7492860 () Bool)

(assert (=> d!2116222 m!7492860))

(declare-fun m!7492862 () Bool)

(assert (=> d!2116222 m!7492862))

(declare-fun m!7492864 () Bool)

(assert (=> b!6735079 m!7492864))

(assert (=> b!6735079 m!7491794))

(declare-fun m!7492866 () Bool)

(assert (=> b!6735079 m!7492866))

(declare-fun m!7492868 () Bool)

(assert (=> b!6735079 m!7492868))

(assert (=> b!6733914 d!2116222))

(declare-fun b!6735082 () Bool)

(declare-fun e!4068569 () List!65982)

(assert (=> b!6735082 (= e!4068569 (Cons!65858 (h!72306 Nil!65858) (++!14717 (t!379673 Nil!65858) (Cons!65858 (h!72306 s!2326) Nil!65858))))))

(declare-fun d!2116224 () Bool)

(declare-fun e!4068570 () Bool)

(assert (=> d!2116224 e!4068570))

(declare-fun res!2755218 () Bool)

(assert (=> d!2116224 (=> (not res!2755218) (not e!4068570))))

(declare-fun lt!2438252 () List!65982)

(assert (=> d!2116224 (= res!2755218 (= (content!12793 lt!2438252) ((_ map or) (content!12793 Nil!65858) (content!12793 (Cons!65858 (h!72306 s!2326) Nil!65858)))))))

(assert (=> d!2116224 (= lt!2438252 e!4068569)))

(declare-fun c!1249115 () Bool)

(assert (=> d!2116224 (= c!1249115 ((_ is Nil!65858) Nil!65858))))

(assert (=> d!2116224 (= (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)) lt!2438252)))

(declare-fun b!6735084 () Bool)

(assert (=> b!6735084 (= e!4068570 (or (not (= (Cons!65858 (h!72306 s!2326) Nil!65858) Nil!65858)) (= lt!2438252 Nil!65858)))))

(declare-fun b!6735081 () Bool)

(assert (=> b!6735081 (= e!4068569 (Cons!65858 (h!72306 s!2326) Nil!65858))))

(declare-fun b!6735083 () Bool)

(declare-fun res!2755219 () Bool)

(assert (=> b!6735083 (=> (not res!2755219) (not e!4068570))))

(assert (=> b!6735083 (= res!2755219 (= (size!40611 lt!2438252) (+ (size!40611 Nil!65858) (size!40611 (Cons!65858 (h!72306 s!2326) Nil!65858)))))))

(assert (= (and d!2116224 c!1249115) b!6735081))

(assert (= (and d!2116224 (not c!1249115)) b!6735082))

(assert (= (and d!2116224 res!2755218) b!6735083))

(assert (= (and b!6735083 res!2755219) b!6735084))

(declare-fun m!7492870 () Bool)

(assert (=> b!6735082 m!7492870))

(declare-fun m!7492872 () Bool)

(assert (=> d!2116224 m!7492872))

(declare-fun m!7492874 () Bool)

(assert (=> d!2116224 m!7492874))

(declare-fun m!7492876 () Bool)

(assert (=> d!2116224 m!7492876))

(declare-fun m!7492878 () Bool)

(assert (=> b!6735083 m!7492878))

(declare-fun m!7492880 () Bool)

(assert (=> b!6735083 m!7492880))

(declare-fun m!7492882 () Bool)

(assert (=> b!6735083 m!7492882))

(assert (=> b!6733914 d!2116224))

(declare-fun d!2116226 () Bool)

(assert (=> d!2116226 (= (++!14717 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)) (t!379673 s!2326)) s!2326)))

(declare-fun lt!2438255 () Unit!159813)

(declare-fun choose!50198 (List!65982 C!33392 List!65982 List!65982) Unit!159813)

(assert (=> d!2116226 (= lt!2438255 (choose!50198 Nil!65858 (h!72306 s!2326) (t!379673 s!2326) s!2326))))

(assert (=> d!2116226 (= (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) (t!379673 s!2326))) s!2326)))

(assert (=> d!2116226 (= (lemmaMoveElementToOtherListKeepsConcatEq!2690 Nil!65858 (h!72306 s!2326) (t!379673 s!2326) s!2326) lt!2438255)))

(declare-fun bs!1791113 () Bool)

(assert (= bs!1791113 d!2116226))

(assert (=> bs!1791113 m!7491794))

(assert (=> bs!1791113 m!7491794))

(assert (=> bs!1791113 m!7491796))

(declare-fun m!7492884 () Bool)

(assert (=> bs!1791113 m!7492884))

(declare-fun m!7492886 () Bool)

(assert (=> bs!1791113 m!7492886))

(assert (=> b!6733914 d!2116226))

(declare-fun b!6735085 () Bool)

(declare-fun e!4068573 () Option!16448)

(assert (=> b!6735085 (= e!4068573 None!16447)))

(declare-fun b!6735086 () Bool)

(declare-fun lt!2438256 () Unit!159813)

(declare-fun lt!2438258 () Unit!159813)

(assert (=> b!6735086 (= lt!2438256 lt!2438258)))

(assert (=> b!6735086 (= (++!14717 (++!14717 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)) (Cons!65858 (h!72306 (t!379673 s!2326)) Nil!65858)) (t!379673 (t!379673 s!2326))) s!2326)))

(assert (=> b!6735086 (= lt!2438258 (lemmaMoveElementToOtherListKeepsConcatEq!2690 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)) (h!72306 (t!379673 s!2326)) (t!379673 (t!379673 s!2326)) s!2326))))

(assert (=> b!6735086 (= e!4068573 (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 (++!14717 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)) (Cons!65858 (h!72306 (t!379673 s!2326)) Nil!65858)) (t!379673 (t!379673 s!2326)) s!2326))))

(declare-fun b!6735087 () Bool)

(declare-fun e!4068574 () Bool)

(assert (=> b!6735087 (= e!4068574 (matchR!8744 r!7292 (t!379673 s!2326)))))

(declare-fun b!6735088 () Bool)

(declare-fun res!2755223 () Bool)

(declare-fun e!4068572 () Bool)

(assert (=> b!6735088 (=> (not res!2755223) (not e!4068572))))

(declare-fun lt!2438257 () Option!16448)

(assert (=> b!6735088 (= res!2755223 (matchR!8744 r!7292 (_2!36839 (get!22913 lt!2438257))))))

(declare-fun b!6735089 () Bool)

(declare-fun e!4068575 () Option!16448)

(assert (=> b!6735089 (= e!4068575 e!4068573)))

(declare-fun c!1249117 () Bool)

(assert (=> b!6735089 (= c!1249117 ((_ is Nil!65858) (t!379673 s!2326)))))

(declare-fun b!6735090 () Bool)

(declare-fun res!2755224 () Bool)

(assert (=> b!6735090 (=> (not res!2755224) (not e!4068572))))

(assert (=> b!6735090 (= res!2755224 (matchR!8744 (reg!16890 r!7292) (_1!36839 (get!22913 lt!2438257))))))

(declare-fun b!6735091 () Bool)

(declare-fun e!4068571 () Bool)

(assert (=> b!6735091 (= e!4068571 (not (isDefined!13151 lt!2438257)))))

(declare-fun d!2116228 () Bool)

(assert (=> d!2116228 e!4068571))

(declare-fun res!2755222 () Bool)

(assert (=> d!2116228 (=> res!2755222 e!4068571)))

(assert (=> d!2116228 (= res!2755222 e!4068572)))

(declare-fun res!2755220 () Bool)

(assert (=> d!2116228 (=> (not res!2755220) (not e!4068572))))

(assert (=> d!2116228 (= res!2755220 (isDefined!13151 lt!2438257))))

(assert (=> d!2116228 (= lt!2438257 e!4068575)))

(declare-fun c!1249116 () Bool)

(assert (=> d!2116228 (= c!1249116 e!4068574)))

(declare-fun res!2755221 () Bool)

(assert (=> d!2116228 (=> (not res!2755221) (not e!4068574))))

(assert (=> d!2116228 (= res!2755221 (matchR!8744 (reg!16890 r!7292) (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858))))))

(assert (=> d!2116228 (validRegex!8297 (reg!16890 r!7292))))

(assert (=> d!2116228 (= (findConcatSeparation!2862 (reg!16890 r!7292) r!7292 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)) (t!379673 s!2326) s!2326) lt!2438257)))

(declare-fun b!6735092 () Bool)

(assert (=> b!6735092 (= e!4068575 (Some!16447 (tuple2!67073 (++!14717 Nil!65858 (Cons!65858 (h!72306 s!2326) Nil!65858)) (t!379673 s!2326))))))

(declare-fun b!6735093 () Bool)

(assert (=> b!6735093 (= e!4068572 (= (++!14717 (_1!36839 (get!22913 lt!2438257)) (_2!36839 (get!22913 lt!2438257))) s!2326))))

(assert (= (and d!2116228 res!2755221) b!6735087))

(assert (= (and d!2116228 c!1249116) b!6735092))

(assert (= (and d!2116228 (not c!1249116)) b!6735089))

(assert (= (and b!6735089 c!1249117) b!6735085))

(assert (= (and b!6735089 (not c!1249117)) b!6735086))

(assert (= (and d!2116228 res!2755220) b!6735090))

(assert (= (and b!6735090 res!2755224) b!6735088))

(assert (= (and b!6735088 res!2755223) b!6735093))

(assert (= (and d!2116228 (not res!2755222)) b!6735091))

(declare-fun m!7492888 () Bool)

(assert (=> b!6735088 m!7492888))

(declare-fun m!7492890 () Bool)

(assert (=> b!6735088 m!7492890))

(assert (=> b!6735090 m!7492888))

(declare-fun m!7492892 () Bool)

(assert (=> b!6735090 m!7492892))

(declare-fun m!7492894 () Bool)

(assert (=> b!6735091 m!7492894))

(assert (=> d!2116228 m!7492894))

(assert (=> d!2116228 m!7491794))

(declare-fun m!7492896 () Bool)

(assert (=> d!2116228 m!7492896))

(assert (=> d!2116228 m!7491732))

(assert (=> b!6735086 m!7491794))

(declare-fun m!7492898 () Bool)

(assert (=> b!6735086 m!7492898))

(assert (=> b!6735086 m!7492898))

(declare-fun m!7492900 () Bool)

(assert (=> b!6735086 m!7492900))

(assert (=> b!6735086 m!7491794))

(declare-fun m!7492902 () Bool)

(assert (=> b!6735086 m!7492902))

(assert (=> b!6735086 m!7492898))

(declare-fun m!7492904 () Bool)

(assert (=> b!6735086 m!7492904))

(declare-fun m!7492906 () Bool)

(assert (=> b!6735087 m!7492906))

(assert (=> b!6735093 m!7492888))

(declare-fun m!7492908 () Bool)

(assert (=> b!6735093 m!7492908))

(assert (=> b!6733914 d!2116228))

(declare-fun b!6735095 () Bool)

(declare-fun e!4068577 () Bool)

(declare-fun tp!1846446 () Bool)

(assert (=> b!6735095 (= e!4068577 tp!1846446)))

(declare-fun tp!1846447 () Bool)

(declare-fun e!4068576 () Bool)

(declare-fun b!6735094 () Bool)

(assert (=> b!6735094 (= e!4068576 (and (inv!84649 (h!72308 (t!379675 (t!379675 zl!343)))) e!4068577 tp!1846447))))

(assert (=> b!6734149 (= tp!1846257 e!4068576)))

(assert (= b!6735094 b!6735095))

(assert (= (and b!6734149 ((_ is Cons!65860) (t!379675 (t!379675 zl!343)))) b!6735094))

(declare-fun m!7492910 () Bool)

(assert (=> b!6735094 m!7492910))

(declare-fun condSetEmpty!45959 () Bool)

(assert (=> setNonEmpty!45949 (= condSetEmpty!45959 (= setRest!45949 ((as const (Array Context!11890 Bool)) false)))))

(declare-fun setRes!45959 () Bool)

(assert (=> setNonEmpty!45949 (= tp!1846238 setRes!45959)))

(declare-fun setIsEmpty!45959 () Bool)

(assert (=> setIsEmpty!45959 setRes!45959))

(declare-fun tp!1846449 () Bool)

(declare-fun e!4068578 () Bool)

(declare-fun setElem!45959 () Context!11890)

(declare-fun setNonEmpty!45959 () Bool)

(assert (=> setNonEmpty!45959 (= setRes!45959 (and tp!1846449 (inv!84649 setElem!45959) e!4068578))))

(declare-fun setRest!45959 () (InoxSet Context!11890))

(assert (=> setNonEmpty!45959 (= setRest!45949 ((_ map or) (store ((as const (Array Context!11890 Bool)) false) setElem!45959 true) setRest!45959))))

(declare-fun b!6735096 () Bool)

(declare-fun tp!1846448 () Bool)

(assert (=> b!6735096 (= e!4068578 tp!1846448)))

(assert (= (and setNonEmpty!45949 condSetEmpty!45959) setIsEmpty!45959))

(assert (= (and setNonEmpty!45949 (not condSetEmpty!45959)) setNonEmpty!45959))

(assert (= setNonEmpty!45959 b!6735096))

(declare-fun m!7492912 () Bool)

(assert (=> setNonEmpty!45959 m!7492912))

(declare-fun b!6735097 () Bool)

(declare-fun e!4068579 () Bool)

(assert (=> b!6735097 (= e!4068579 tp_is_empty!42375)))

(assert (=> b!6734142 (= tp!1846250 e!4068579)))

(declare-fun b!6735098 () Bool)

(declare-fun tp!1846454 () Bool)

(declare-fun tp!1846450 () Bool)

(assert (=> b!6735098 (= e!4068579 (and tp!1846454 tp!1846450))))

(declare-fun b!6735100 () Bool)

(declare-fun tp!1846453 () Bool)

(declare-fun tp!1846451 () Bool)

(assert (=> b!6735100 (= e!4068579 (and tp!1846453 tp!1846451))))

(declare-fun b!6735099 () Bool)

(declare-fun tp!1846452 () Bool)

(assert (=> b!6735099 (= e!4068579 tp!1846452)))

(assert (= (and b!6734142 ((_ is ElementMatch!16561) (regOne!33635 (regTwo!33635 r!7292)))) b!6735097))

(assert (= (and b!6734142 ((_ is Concat!25406) (regOne!33635 (regTwo!33635 r!7292)))) b!6735098))

(assert (= (and b!6734142 ((_ is Star!16561) (regOne!33635 (regTwo!33635 r!7292)))) b!6735099))

(assert (= (and b!6734142 ((_ is Union!16561) (regOne!33635 (regTwo!33635 r!7292)))) b!6735100))

(declare-fun b!6735101 () Bool)

(declare-fun e!4068580 () Bool)

(assert (=> b!6735101 (= e!4068580 tp_is_empty!42375)))

(assert (=> b!6734142 (= tp!1846248 e!4068580)))

(declare-fun b!6735102 () Bool)

(declare-fun tp!1846459 () Bool)

(declare-fun tp!1846455 () Bool)

(assert (=> b!6735102 (= e!4068580 (and tp!1846459 tp!1846455))))

(declare-fun b!6735104 () Bool)

(declare-fun tp!1846458 () Bool)

(declare-fun tp!1846456 () Bool)

(assert (=> b!6735104 (= e!4068580 (and tp!1846458 tp!1846456))))

(declare-fun b!6735103 () Bool)

(declare-fun tp!1846457 () Bool)

(assert (=> b!6735103 (= e!4068580 tp!1846457)))

(assert (= (and b!6734142 ((_ is ElementMatch!16561) (regTwo!33635 (regTwo!33635 r!7292)))) b!6735101))

(assert (= (and b!6734142 ((_ is Concat!25406) (regTwo!33635 (regTwo!33635 r!7292)))) b!6735102))

(assert (= (and b!6734142 ((_ is Star!16561) (regTwo!33635 (regTwo!33635 r!7292)))) b!6735103))

(assert (= (and b!6734142 ((_ is Union!16561) (regTwo!33635 (regTwo!33635 r!7292)))) b!6735104))

(declare-fun b!6735105 () Bool)

(declare-fun e!4068581 () Bool)

(declare-fun tp!1846460 () Bool)

(declare-fun tp!1846461 () Bool)

(assert (=> b!6735105 (= e!4068581 (and tp!1846460 tp!1846461))))

(assert (=> b!6734129 (= tp!1846237 e!4068581)))

(assert (= (and b!6734129 ((_ is Cons!65859) (exprs!6445 setElem!45949))) b!6735105))

(declare-fun b!6735106 () Bool)

(declare-fun e!4068582 () Bool)

(assert (=> b!6735106 (= e!4068582 tp_is_empty!42375)))

(assert (=> b!6734141 (= tp!1846249 e!4068582)))

(declare-fun b!6735107 () Bool)

(declare-fun tp!1846466 () Bool)

(declare-fun tp!1846462 () Bool)

(assert (=> b!6735107 (= e!4068582 (and tp!1846466 tp!1846462))))

(declare-fun b!6735109 () Bool)

(declare-fun tp!1846465 () Bool)

(declare-fun tp!1846463 () Bool)

(assert (=> b!6735109 (= e!4068582 (and tp!1846465 tp!1846463))))

(declare-fun b!6735108 () Bool)

(declare-fun tp!1846464 () Bool)

(assert (=> b!6735108 (= e!4068582 tp!1846464)))

(assert (= (and b!6734141 ((_ is ElementMatch!16561) (reg!16890 (regTwo!33635 r!7292)))) b!6735106))

(assert (= (and b!6734141 ((_ is Concat!25406) (reg!16890 (regTwo!33635 r!7292)))) b!6735107))

(assert (= (and b!6734141 ((_ is Star!16561) (reg!16890 (regTwo!33635 r!7292)))) b!6735108))

(assert (= (and b!6734141 ((_ is Union!16561) (reg!16890 (regTwo!33635 r!7292)))) b!6735109))

(declare-fun b!6735110 () Bool)

(declare-fun e!4068583 () Bool)

(assert (=> b!6735110 (= e!4068583 tp_is_empty!42375)))

(assert (=> b!6734140 (= tp!1846251 e!4068583)))

(declare-fun b!6735111 () Bool)

(declare-fun tp!1846471 () Bool)

(declare-fun tp!1846467 () Bool)

(assert (=> b!6735111 (= e!4068583 (and tp!1846471 tp!1846467))))

(declare-fun b!6735113 () Bool)

(declare-fun tp!1846470 () Bool)

(declare-fun tp!1846468 () Bool)

(assert (=> b!6735113 (= e!4068583 (and tp!1846470 tp!1846468))))

(declare-fun b!6735112 () Bool)

(declare-fun tp!1846469 () Bool)

(assert (=> b!6735112 (= e!4068583 tp!1846469)))

(assert (= (and b!6734140 ((_ is ElementMatch!16561) (regOne!33634 (regTwo!33635 r!7292)))) b!6735110))

(assert (= (and b!6734140 ((_ is Concat!25406) (regOne!33634 (regTwo!33635 r!7292)))) b!6735111))

(assert (= (and b!6734140 ((_ is Star!16561) (regOne!33634 (regTwo!33635 r!7292)))) b!6735112))

(assert (= (and b!6734140 ((_ is Union!16561) (regOne!33634 (regTwo!33635 r!7292)))) b!6735113))

(declare-fun b!6735114 () Bool)

(declare-fun e!4068584 () Bool)

(assert (=> b!6735114 (= e!4068584 tp_is_empty!42375)))

(assert (=> b!6734140 (= tp!1846247 e!4068584)))

(declare-fun b!6735115 () Bool)

(declare-fun tp!1846476 () Bool)

(declare-fun tp!1846472 () Bool)

(assert (=> b!6735115 (= e!4068584 (and tp!1846476 tp!1846472))))

(declare-fun b!6735117 () Bool)

(declare-fun tp!1846475 () Bool)

(declare-fun tp!1846473 () Bool)

(assert (=> b!6735117 (= e!4068584 (and tp!1846475 tp!1846473))))

(declare-fun b!6735116 () Bool)

(declare-fun tp!1846474 () Bool)

(assert (=> b!6735116 (= e!4068584 tp!1846474)))

(assert (= (and b!6734140 ((_ is ElementMatch!16561) (regTwo!33634 (regTwo!33635 r!7292)))) b!6735114))

(assert (= (and b!6734140 ((_ is Concat!25406) (regTwo!33634 (regTwo!33635 r!7292)))) b!6735115))

(assert (= (and b!6734140 ((_ is Star!16561) (regTwo!33634 (regTwo!33635 r!7292)))) b!6735116))

(assert (= (and b!6734140 ((_ is Union!16561) (regTwo!33634 (regTwo!33635 r!7292)))) b!6735117))

(declare-fun b!6735118 () Bool)

(declare-fun e!4068585 () Bool)

(assert (=> b!6735118 (= e!4068585 tp_is_empty!42375)))

(assert (=> b!6734155 (= tp!1846263 e!4068585)))

(declare-fun b!6735119 () Bool)

(declare-fun tp!1846481 () Bool)

(declare-fun tp!1846477 () Bool)

(assert (=> b!6735119 (= e!4068585 (and tp!1846481 tp!1846477))))

(declare-fun b!6735121 () Bool)

(declare-fun tp!1846480 () Bool)

(declare-fun tp!1846478 () Bool)

(assert (=> b!6735121 (= e!4068585 (and tp!1846480 tp!1846478))))

(declare-fun b!6735120 () Bool)

(declare-fun tp!1846479 () Bool)

(assert (=> b!6735120 (= e!4068585 tp!1846479)))

(assert (= (and b!6734155 ((_ is ElementMatch!16561) (regOne!33635 (regOne!33634 r!7292)))) b!6735118))

(assert (= (and b!6734155 ((_ is Concat!25406) (regOne!33635 (regOne!33634 r!7292)))) b!6735119))

(assert (= (and b!6734155 ((_ is Star!16561) (regOne!33635 (regOne!33634 r!7292)))) b!6735120))

(assert (= (and b!6734155 ((_ is Union!16561) (regOne!33635 (regOne!33634 r!7292)))) b!6735121))

(declare-fun b!6735122 () Bool)

(declare-fun e!4068586 () Bool)

(assert (=> b!6735122 (= e!4068586 tp_is_empty!42375)))

(assert (=> b!6734155 (= tp!1846261 e!4068586)))

(declare-fun b!6735123 () Bool)

(declare-fun tp!1846486 () Bool)

(declare-fun tp!1846482 () Bool)

(assert (=> b!6735123 (= e!4068586 (and tp!1846486 tp!1846482))))

(declare-fun b!6735125 () Bool)

(declare-fun tp!1846485 () Bool)

(declare-fun tp!1846483 () Bool)

(assert (=> b!6735125 (= e!4068586 (and tp!1846485 tp!1846483))))

(declare-fun b!6735124 () Bool)

(declare-fun tp!1846484 () Bool)

(assert (=> b!6735124 (= e!4068586 tp!1846484)))

(assert (= (and b!6734155 ((_ is ElementMatch!16561) (regTwo!33635 (regOne!33634 r!7292)))) b!6735122))

(assert (= (and b!6734155 ((_ is Concat!25406) (regTwo!33635 (regOne!33634 r!7292)))) b!6735123))

(assert (= (and b!6734155 ((_ is Star!16561) (regTwo!33635 (regOne!33634 r!7292)))) b!6735124))

(assert (= (and b!6734155 ((_ is Union!16561) (regTwo!33635 (regOne!33634 r!7292)))) b!6735125))

(declare-fun b!6735126 () Bool)

(declare-fun e!4068587 () Bool)

(assert (=> b!6735126 (= e!4068587 tp_is_empty!42375)))

(assert (=> b!6734110 (= tp!1846216 e!4068587)))

(declare-fun b!6735127 () Bool)

(declare-fun tp!1846491 () Bool)

(declare-fun tp!1846487 () Bool)

(assert (=> b!6735127 (= e!4068587 (and tp!1846491 tp!1846487))))

(declare-fun b!6735129 () Bool)

(declare-fun tp!1846490 () Bool)

(declare-fun tp!1846488 () Bool)

(assert (=> b!6735129 (= e!4068587 (and tp!1846490 tp!1846488))))

(declare-fun b!6735128 () Bool)

(declare-fun tp!1846489 () Bool)

(assert (=> b!6735128 (= e!4068587 tp!1846489)))

(assert (= (and b!6734110 ((_ is ElementMatch!16561) (h!72307 (exprs!6445 (h!72308 zl!343))))) b!6735126))

(assert (= (and b!6734110 ((_ is Concat!25406) (h!72307 (exprs!6445 (h!72308 zl!343))))) b!6735127))

(assert (= (and b!6734110 ((_ is Star!16561) (h!72307 (exprs!6445 (h!72308 zl!343))))) b!6735128))

(assert (= (and b!6734110 ((_ is Union!16561) (h!72307 (exprs!6445 (h!72308 zl!343))))) b!6735129))

(declare-fun b!6735130 () Bool)

(declare-fun e!4068588 () Bool)

(declare-fun tp!1846492 () Bool)

(declare-fun tp!1846493 () Bool)

(assert (=> b!6735130 (= e!4068588 (and tp!1846492 tp!1846493))))

(assert (=> b!6734110 (= tp!1846217 e!4068588)))

(assert (= (and b!6734110 ((_ is Cons!65859) (t!379674 (exprs!6445 (h!72308 zl!343))))) b!6735130))

(declare-fun b!6735131 () Bool)

(declare-fun e!4068589 () Bool)

(assert (=> b!6735131 (= e!4068589 tp_is_empty!42375)))

(assert (=> b!6734158 (= tp!1846267 e!4068589)))

(declare-fun b!6735132 () Bool)

(declare-fun tp!1846498 () Bool)

(declare-fun tp!1846494 () Bool)

(assert (=> b!6735132 (= e!4068589 (and tp!1846498 tp!1846494))))

(declare-fun b!6735134 () Bool)

(declare-fun tp!1846497 () Bool)

(declare-fun tp!1846495 () Bool)

(assert (=> b!6735134 (= e!4068589 (and tp!1846497 tp!1846495))))

(declare-fun b!6735133 () Bool)

(declare-fun tp!1846496 () Bool)

(assert (=> b!6735133 (= e!4068589 tp!1846496)))

(assert (= (and b!6734158 ((_ is ElementMatch!16561) (reg!16890 (regTwo!33634 r!7292)))) b!6735131))

(assert (= (and b!6734158 ((_ is Concat!25406) (reg!16890 (regTwo!33634 r!7292)))) b!6735132))

(assert (= (and b!6734158 ((_ is Star!16561) (reg!16890 (regTwo!33634 r!7292)))) b!6735133))

(assert (= (and b!6734158 ((_ is Union!16561) (reg!16890 (regTwo!33634 r!7292)))) b!6735134))

(declare-fun b!6735135 () Bool)

(declare-fun e!4068590 () Bool)

(assert (=> b!6735135 (= e!4068590 tp_is_empty!42375)))

(assert (=> b!6734157 (= tp!1846269 e!4068590)))

(declare-fun b!6735136 () Bool)

(declare-fun tp!1846503 () Bool)

(declare-fun tp!1846499 () Bool)

(assert (=> b!6735136 (= e!4068590 (and tp!1846503 tp!1846499))))

(declare-fun b!6735138 () Bool)

(declare-fun tp!1846502 () Bool)

(declare-fun tp!1846500 () Bool)

(assert (=> b!6735138 (= e!4068590 (and tp!1846502 tp!1846500))))

(declare-fun b!6735137 () Bool)

(declare-fun tp!1846501 () Bool)

(assert (=> b!6735137 (= e!4068590 tp!1846501)))

(assert (= (and b!6734157 ((_ is ElementMatch!16561) (regOne!33634 (regTwo!33634 r!7292)))) b!6735135))

(assert (= (and b!6734157 ((_ is Concat!25406) (regOne!33634 (regTwo!33634 r!7292)))) b!6735136))

(assert (= (and b!6734157 ((_ is Star!16561) (regOne!33634 (regTwo!33634 r!7292)))) b!6735137))

(assert (= (and b!6734157 ((_ is Union!16561) (regOne!33634 (regTwo!33634 r!7292)))) b!6735138))

(declare-fun b!6735139 () Bool)

(declare-fun e!4068591 () Bool)

(assert (=> b!6735139 (= e!4068591 tp_is_empty!42375)))

(assert (=> b!6734157 (= tp!1846265 e!4068591)))

(declare-fun b!6735140 () Bool)

(declare-fun tp!1846508 () Bool)

(declare-fun tp!1846504 () Bool)

(assert (=> b!6735140 (= e!4068591 (and tp!1846508 tp!1846504))))

(declare-fun b!6735142 () Bool)

(declare-fun tp!1846507 () Bool)

(declare-fun tp!1846505 () Bool)

(assert (=> b!6735142 (= e!4068591 (and tp!1846507 tp!1846505))))

(declare-fun b!6735141 () Bool)

(declare-fun tp!1846506 () Bool)

(assert (=> b!6735141 (= e!4068591 tp!1846506)))

(assert (= (and b!6734157 ((_ is ElementMatch!16561) (regTwo!33634 (regTwo!33634 r!7292)))) b!6735139))

(assert (= (and b!6734157 ((_ is Concat!25406) (regTwo!33634 (regTwo!33634 r!7292)))) b!6735140))

(assert (= (and b!6734157 ((_ is Star!16561) (regTwo!33634 (regTwo!33634 r!7292)))) b!6735141))

(assert (= (and b!6734157 ((_ is Union!16561) (regTwo!33634 (regTwo!33634 r!7292)))) b!6735142))

(declare-fun b!6735143 () Bool)

(declare-fun e!4068592 () Bool)

(declare-fun tp!1846509 () Bool)

(assert (=> b!6735143 (= e!4068592 (and tp_is_empty!42375 tp!1846509))))

(assert (=> b!6734134 (= tp!1846241 e!4068592)))

(assert (= (and b!6734134 ((_ is Cons!65858) (t!379673 (t!379673 s!2326)))) b!6735143))

(declare-fun b!6735144 () Bool)

(declare-fun e!4068593 () Bool)

(declare-fun tp!1846510 () Bool)

(declare-fun tp!1846511 () Bool)

(assert (=> b!6735144 (= e!4068593 (and tp!1846510 tp!1846511))))

(assert (=> b!6734150 (= tp!1846256 e!4068593)))

(assert (= (and b!6734150 ((_ is Cons!65859) (exprs!6445 (h!72308 (t!379675 zl!343))))) b!6735144))

(declare-fun b!6735145 () Bool)

(declare-fun e!4068594 () Bool)

(assert (=> b!6735145 (= e!4068594 tp_is_empty!42375)))

(assert (=> b!6734138 (= tp!1846245 e!4068594)))

(declare-fun b!6735146 () Bool)

(declare-fun tp!1846516 () Bool)

(declare-fun tp!1846512 () Bool)

(assert (=> b!6735146 (= e!4068594 (and tp!1846516 tp!1846512))))

(declare-fun b!6735148 () Bool)

(declare-fun tp!1846515 () Bool)

(declare-fun tp!1846513 () Bool)

(assert (=> b!6735148 (= e!4068594 (and tp!1846515 tp!1846513))))

(declare-fun b!6735147 () Bool)

(declare-fun tp!1846514 () Bool)

(assert (=> b!6735147 (= e!4068594 tp!1846514)))

(assert (= (and b!6734138 ((_ is ElementMatch!16561) (regOne!33635 (regOne!33635 r!7292)))) b!6735145))

(assert (= (and b!6734138 ((_ is Concat!25406) (regOne!33635 (regOne!33635 r!7292)))) b!6735146))

(assert (= (and b!6734138 ((_ is Star!16561) (regOne!33635 (regOne!33635 r!7292)))) b!6735147))

(assert (= (and b!6734138 ((_ is Union!16561) (regOne!33635 (regOne!33635 r!7292)))) b!6735148))

(declare-fun b!6735149 () Bool)

(declare-fun e!4068595 () Bool)

(assert (=> b!6735149 (= e!4068595 tp_is_empty!42375)))

(assert (=> b!6734138 (= tp!1846243 e!4068595)))

(declare-fun b!6735150 () Bool)

(declare-fun tp!1846521 () Bool)

(declare-fun tp!1846517 () Bool)

(assert (=> b!6735150 (= e!4068595 (and tp!1846521 tp!1846517))))

(declare-fun b!6735152 () Bool)

(declare-fun tp!1846520 () Bool)

(declare-fun tp!1846518 () Bool)

(assert (=> b!6735152 (= e!4068595 (and tp!1846520 tp!1846518))))

(declare-fun b!6735151 () Bool)

(declare-fun tp!1846519 () Bool)

(assert (=> b!6735151 (= e!4068595 tp!1846519)))

(assert (= (and b!6734138 ((_ is ElementMatch!16561) (regTwo!33635 (regOne!33635 r!7292)))) b!6735149))

(assert (= (and b!6734138 ((_ is Concat!25406) (regTwo!33635 (regOne!33635 r!7292)))) b!6735150))

(assert (= (and b!6734138 ((_ is Star!16561) (regTwo!33635 (regOne!33635 r!7292)))) b!6735151))

(assert (= (and b!6734138 ((_ is Union!16561) (regTwo!33635 (regOne!33635 r!7292)))) b!6735152))

(declare-fun b!6735153 () Bool)

(declare-fun e!4068596 () Bool)

(assert (=> b!6735153 (= e!4068596 tp_is_empty!42375)))

(assert (=> b!6734137 (= tp!1846244 e!4068596)))

(declare-fun b!6735154 () Bool)

(declare-fun tp!1846526 () Bool)

(declare-fun tp!1846522 () Bool)

(assert (=> b!6735154 (= e!4068596 (and tp!1846526 tp!1846522))))

(declare-fun b!6735156 () Bool)

(declare-fun tp!1846525 () Bool)

(declare-fun tp!1846523 () Bool)

(assert (=> b!6735156 (= e!4068596 (and tp!1846525 tp!1846523))))

(declare-fun b!6735155 () Bool)

(declare-fun tp!1846524 () Bool)

(assert (=> b!6735155 (= e!4068596 tp!1846524)))

(assert (= (and b!6734137 ((_ is ElementMatch!16561) (reg!16890 (regOne!33635 r!7292)))) b!6735153))

(assert (= (and b!6734137 ((_ is Concat!25406) (reg!16890 (regOne!33635 r!7292)))) b!6735154))

(assert (= (and b!6734137 ((_ is Star!16561) (reg!16890 (regOne!33635 r!7292)))) b!6735155))

(assert (= (and b!6734137 ((_ is Union!16561) (reg!16890 (regOne!33635 r!7292)))) b!6735156))

(declare-fun b!6735157 () Bool)

(declare-fun e!4068597 () Bool)

(assert (=> b!6735157 (= e!4068597 tp_is_empty!42375)))

(assert (=> b!6734136 (= tp!1846246 e!4068597)))

(declare-fun b!6735158 () Bool)

(declare-fun tp!1846531 () Bool)

(declare-fun tp!1846527 () Bool)

(assert (=> b!6735158 (= e!4068597 (and tp!1846531 tp!1846527))))

(declare-fun b!6735160 () Bool)

(declare-fun tp!1846530 () Bool)

(declare-fun tp!1846528 () Bool)

(assert (=> b!6735160 (= e!4068597 (and tp!1846530 tp!1846528))))

(declare-fun b!6735159 () Bool)

(declare-fun tp!1846529 () Bool)

(assert (=> b!6735159 (= e!4068597 tp!1846529)))

(assert (= (and b!6734136 ((_ is ElementMatch!16561) (regOne!33634 (regOne!33635 r!7292)))) b!6735157))

(assert (= (and b!6734136 ((_ is Concat!25406) (regOne!33634 (regOne!33635 r!7292)))) b!6735158))

(assert (= (and b!6734136 ((_ is Star!16561) (regOne!33634 (regOne!33635 r!7292)))) b!6735159))

(assert (= (and b!6734136 ((_ is Union!16561) (regOne!33634 (regOne!33635 r!7292)))) b!6735160))

(declare-fun b!6735161 () Bool)

(declare-fun e!4068598 () Bool)

(assert (=> b!6735161 (= e!4068598 tp_is_empty!42375)))

(assert (=> b!6734136 (= tp!1846242 e!4068598)))

(declare-fun b!6735162 () Bool)

(declare-fun tp!1846536 () Bool)

(declare-fun tp!1846532 () Bool)

(assert (=> b!6735162 (= e!4068598 (and tp!1846536 tp!1846532))))

(declare-fun b!6735164 () Bool)

(declare-fun tp!1846535 () Bool)

(declare-fun tp!1846533 () Bool)

(assert (=> b!6735164 (= e!4068598 (and tp!1846535 tp!1846533))))

(declare-fun b!6735163 () Bool)

(declare-fun tp!1846534 () Bool)

(assert (=> b!6735163 (= e!4068598 tp!1846534)))

(assert (= (and b!6734136 ((_ is ElementMatch!16561) (regTwo!33634 (regOne!33635 r!7292)))) b!6735161))

(assert (= (and b!6734136 ((_ is Concat!25406) (regTwo!33634 (regOne!33635 r!7292)))) b!6735162))

(assert (= (and b!6734136 ((_ is Star!16561) (regTwo!33634 (regOne!33635 r!7292)))) b!6735163))

(assert (= (and b!6734136 ((_ is Union!16561) (regTwo!33634 (regOne!33635 r!7292)))) b!6735164))

(declare-fun b!6735165 () Bool)

(declare-fun e!4068599 () Bool)

(assert (=> b!6735165 (= e!4068599 tp_is_empty!42375)))

(assert (=> b!6734151 (= tp!1846258 e!4068599)))

(declare-fun b!6735166 () Bool)

(declare-fun tp!1846541 () Bool)

(declare-fun tp!1846537 () Bool)

(assert (=> b!6735166 (= e!4068599 (and tp!1846541 tp!1846537))))

(declare-fun b!6735168 () Bool)

(declare-fun tp!1846540 () Bool)

(declare-fun tp!1846538 () Bool)

(assert (=> b!6735168 (= e!4068599 (and tp!1846540 tp!1846538))))

(declare-fun b!6735167 () Bool)

(declare-fun tp!1846539 () Bool)

(assert (=> b!6735167 (= e!4068599 tp!1846539)))

(assert (= (and b!6734151 ((_ is ElementMatch!16561) (h!72307 (exprs!6445 setElem!45943)))) b!6735165))

(assert (= (and b!6734151 ((_ is Concat!25406) (h!72307 (exprs!6445 setElem!45943)))) b!6735166))

(assert (= (and b!6734151 ((_ is Star!16561) (h!72307 (exprs!6445 setElem!45943)))) b!6735167))

(assert (= (and b!6734151 ((_ is Union!16561) (h!72307 (exprs!6445 setElem!45943)))) b!6735168))

(declare-fun b!6735169 () Bool)

(declare-fun e!4068600 () Bool)

(declare-fun tp!1846542 () Bool)

(declare-fun tp!1846543 () Bool)

(assert (=> b!6735169 (= e!4068600 (and tp!1846542 tp!1846543))))

(assert (=> b!6734151 (= tp!1846259 e!4068600)))

(assert (= (and b!6734151 ((_ is Cons!65859) (t!379674 (exprs!6445 setElem!45943)))) b!6735169))

(declare-fun b!6735170 () Bool)

(declare-fun e!4068601 () Bool)

(assert (=> b!6735170 (= e!4068601 tp_is_empty!42375)))

(assert (=> b!6734159 (= tp!1846268 e!4068601)))

(declare-fun b!6735171 () Bool)

(declare-fun tp!1846548 () Bool)

(declare-fun tp!1846544 () Bool)

(assert (=> b!6735171 (= e!4068601 (and tp!1846548 tp!1846544))))

(declare-fun b!6735173 () Bool)

(declare-fun tp!1846547 () Bool)

(declare-fun tp!1846545 () Bool)

(assert (=> b!6735173 (= e!4068601 (and tp!1846547 tp!1846545))))

(declare-fun b!6735172 () Bool)

(declare-fun tp!1846546 () Bool)

(assert (=> b!6735172 (= e!4068601 tp!1846546)))

(assert (= (and b!6734159 ((_ is ElementMatch!16561) (regOne!33635 (regTwo!33634 r!7292)))) b!6735170))

(assert (= (and b!6734159 ((_ is Concat!25406) (regOne!33635 (regTwo!33634 r!7292)))) b!6735171))

(assert (= (and b!6734159 ((_ is Star!16561) (regOne!33635 (regTwo!33634 r!7292)))) b!6735172))

(assert (= (and b!6734159 ((_ is Union!16561) (regOne!33635 (regTwo!33634 r!7292)))) b!6735173))

(declare-fun b!6735174 () Bool)

(declare-fun e!4068602 () Bool)

(assert (=> b!6735174 (= e!4068602 tp_is_empty!42375)))

(assert (=> b!6734159 (= tp!1846266 e!4068602)))

(declare-fun b!6735175 () Bool)

(declare-fun tp!1846553 () Bool)

(declare-fun tp!1846549 () Bool)

(assert (=> b!6735175 (= e!4068602 (and tp!1846553 tp!1846549))))

(declare-fun b!6735177 () Bool)

(declare-fun tp!1846552 () Bool)

(declare-fun tp!1846550 () Bool)

(assert (=> b!6735177 (= e!4068602 (and tp!1846552 tp!1846550))))

(declare-fun b!6735176 () Bool)

(declare-fun tp!1846551 () Bool)

(assert (=> b!6735176 (= e!4068602 tp!1846551)))

(assert (= (and b!6734159 ((_ is ElementMatch!16561) (regTwo!33635 (regTwo!33634 r!7292)))) b!6735174))

(assert (= (and b!6734159 ((_ is Concat!25406) (regTwo!33635 (regTwo!33634 r!7292)))) b!6735175))

(assert (= (and b!6734159 ((_ is Star!16561) (regTwo!33635 (regTwo!33634 r!7292)))) b!6735176))

(assert (= (and b!6734159 ((_ is Union!16561) (regTwo!33635 (regTwo!33634 r!7292)))) b!6735177))

(declare-fun b!6735178 () Bool)

(declare-fun e!4068603 () Bool)

(assert (=> b!6735178 (= e!4068603 tp_is_empty!42375)))

(assert (=> b!6734154 (= tp!1846262 e!4068603)))

(declare-fun b!6735179 () Bool)

(declare-fun tp!1846558 () Bool)

(declare-fun tp!1846554 () Bool)

(assert (=> b!6735179 (= e!4068603 (and tp!1846558 tp!1846554))))

(declare-fun b!6735181 () Bool)

(declare-fun tp!1846557 () Bool)

(declare-fun tp!1846555 () Bool)

(assert (=> b!6735181 (= e!4068603 (and tp!1846557 tp!1846555))))

(declare-fun b!6735180 () Bool)

(declare-fun tp!1846556 () Bool)

(assert (=> b!6735180 (= e!4068603 tp!1846556)))

(assert (= (and b!6734154 ((_ is ElementMatch!16561) (reg!16890 (regOne!33634 r!7292)))) b!6735178))

(assert (= (and b!6734154 ((_ is Concat!25406) (reg!16890 (regOne!33634 r!7292)))) b!6735179))

(assert (= (and b!6734154 ((_ is Star!16561) (reg!16890 (regOne!33634 r!7292)))) b!6735180))

(assert (= (and b!6734154 ((_ is Union!16561) (reg!16890 (regOne!33634 r!7292)))) b!6735181))

(declare-fun b!6735182 () Bool)

(declare-fun e!4068604 () Bool)

(assert (=> b!6735182 (= e!4068604 tp_is_empty!42375)))

(assert (=> b!6734153 (= tp!1846264 e!4068604)))

(declare-fun b!6735183 () Bool)

(declare-fun tp!1846563 () Bool)

(declare-fun tp!1846559 () Bool)

(assert (=> b!6735183 (= e!4068604 (and tp!1846563 tp!1846559))))

(declare-fun b!6735185 () Bool)

(declare-fun tp!1846562 () Bool)

(declare-fun tp!1846560 () Bool)

(assert (=> b!6735185 (= e!4068604 (and tp!1846562 tp!1846560))))

(declare-fun b!6735184 () Bool)

(declare-fun tp!1846561 () Bool)

(assert (=> b!6735184 (= e!4068604 tp!1846561)))

(assert (= (and b!6734153 ((_ is ElementMatch!16561) (regOne!33634 (regOne!33634 r!7292)))) b!6735182))

(assert (= (and b!6734153 ((_ is Concat!25406) (regOne!33634 (regOne!33634 r!7292)))) b!6735183))

(assert (= (and b!6734153 ((_ is Star!16561) (regOne!33634 (regOne!33634 r!7292)))) b!6735184))

(assert (= (and b!6734153 ((_ is Union!16561) (regOne!33634 (regOne!33634 r!7292)))) b!6735185))

(declare-fun b!6735186 () Bool)

(declare-fun e!4068605 () Bool)

(assert (=> b!6735186 (= e!4068605 tp_is_empty!42375)))

(assert (=> b!6734153 (= tp!1846260 e!4068605)))

(declare-fun b!6735187 () Bool)

(declare-fun tp!1846568 () Bool)

(declare-fun tp!1846564 () Bool)

(assert (=> b!6735187 (= e!4068605 (and tp!1846568 tp!1846564))))

(declare-fun b!6735189 () Bool)

(declare-fun tp!1846567 () Bool)

(declare-fun tp!1846565 () Bool)

(assert (=> b!6735189 (= e!4068605 (and tp!1846567 tp!1846565))))

(declare-fun b!6735188 () Bool)

(declare-fun tp!1846566 () Bool)

(assert (=> b!6735188 (= e!4068605 tp!1846566)))

(assert (= (and b!6734153 ((_ is ElementMatch!16561) (regTwo!33634 (regOne!33634 r!7292)))) b!6735186))

(assert (= (and b!6734153 ((_ is Concat!25406) (regTwo!33634 (regOne!33634 r!7292)))) b!6735187))

(assert (= (and b!6734153 ((_ is Star!16561) (regTwo!33634 (regOne!33634 r!7292)))) b!6735188))

(assert (= (and b!6734153 ((_ is Union!16561) (regTwo!33634 (regOne!33634 r!7292)))) b!6735189))

(declare-fun b!6735190 () Bool)

(declare-fun e!4068606 () Bool)

(assert (=> b!6735190 (= e!4068606 tp_is_empty!42375)))

(assert (=> b!6734122 (= tp!1846232 e!4068606)))

(declare-fun b!6735191 () Bool)

(declare-fun tp!1846573 () Bool)

(declare-fun tp!1846569 () Bool)

(assert (=> b!6735191 (= e!4068606 (and tp!1846573 tp!1846569))))

(declare-fun b!6735193 () Bool)

(declare-fun tp!1846572 () Bool)

(declare-fun tp!1846570 () Bool)

(assert (=> b!6735193 (= e!4068606 (and tp!1846572 tp!1846570))))

(declare-fun b!6735192 () Bool)

(declare-fun tp!1846571 () Bool)

(assert (=> b!6735192 (= e!4068606 tp!1846571)))

(assert (= (and b!6734122 ((_ is ElementMatch!16561) (regOne!33634 (reg!16890 r!7292)))) b!6735190))

(assert (= (and b!6734122 ((_ is Concat!25406) (regOne!33634 (reg!16890 r!7292)))) b!6735191))

(assert (= (and b!6734122 ((_ is Star!16561) (regOne!33634 (reg!16890 r!7292)))) b!6735192))

(assert (= (and b!6734122 ((_ is Union!16561) (regOne!33634 (reg!16890 r!7292)))) b!6735193))

(declare-fun b!6735194 () Bool)

(declare-fun e!4068607 () Bool)

(assert (=> b!6735194 (= e!4068607 tp_is_empty!42375)))

(assert (=> b!6734122 (= tp!1846228 e!4068607)))

(declare-fun b!6735195 () Bool)

(declare-fun tp!1846578 () Bool)

(declare-fun tp!1846574 () Bool)

(assert (=> b!6735195 (= e!4068607 (and tp!1846578 tp!1846574))))

(declare-fun b!6735197 () Bool)

(declare-fun tp!1846577 () Bool)

(declare-fun tp!1846575 () Bool)

(assert (=> b!6735197 (= e!4068607 (and tp!1846577 tp!1846575))))

(declare-fun b!6735196 () Bool)

(declare-fun tp!1846576 () Bool)

(assert (=> b!6735196 (= e!4068607 tp!1846576)))

(assert (= (and b!6734122 ((_ is ElementMatch!16561) (regTwo!33634 (reg!16890 r!7292)))) b!6735194))

(assert (= (and b!6734122 ((_ is Concat!25406) (regTwo!33634 (reg!16890 r!7292)))) b!6735195))

(assert (= (and b!6734122 ((_ is Star!16561) (regTwo!33634 (reg!16890 r!7292)))) b!6735196))

(assert (= (and b!6734122 ((_ is Union!16561) (regTwo!33634 (reg!16890 r!7292)))) b!6735197))

(declare-fun b!6735198 () Bool)

(declare-fun e!4068608 () Bool)

(assert (=> b!6735198 (= e!4068608 tp_is_empty!42375)))

(assert (=> b!6734123 (= tp!1846230 e!4068608)))

(declare-fun b!6735199 () Bool)

(declare-fun tp!1846583 () Bool)

(declare-fun tp!1846579 () Bool)

(assert (=> b!6735199 (= e!4068608 (and tp!1846583 tp!1846579))))

(declare-fun b!6735201 () Bool)

(declare-fun tp!1846582 () Bool)

(declare-fun tp!1846580 () Bool)

(assert (=> b!6735201 (= e!4068608 (and tp!1846582 tp!1846580))))

(declare-fun b!6735200 () Bool)

(declare-fun tp!1846581 () Bool)

(assert (=> b!6735200 (= e!4068608 tp!1846581)))

(assert (= (and b!6734123 ((_ is ElementMatch!16561) (reg!16890 (reg!16890 r!7292)))) b!6735198))

(assert (= (and b!6734123 ((_ is Concat!25406) (reg!16890 (reg!16890 r!7292)))) b!6735199))

(assert (= (and b!6734123 ((_ is Star!16561) (reg!16890 (reg!16890 r!7292)))) b!6735200))

(assert (= (and b!6734123 ((_ is Union!16561) (reg!16890 (reg!16890 r!7292)))) b!6735201))

(declare-fun b!6735202 () Bool)

(declare-fun e!4068609 () Bool)

(assert (=> b!6735202 (= e!4068609 tp_is_empty!42375)))

(assert (=> b!6734124 (= tp!1846231 e!4068609)))

(declare-fun b!6735203 () Bool)

(declare-fun tp!1846588 () Bool)

(declare-fun tp!1846584 () Bool)

(assert (=> b!6735203 (= e!4068609 (and tp!1846588 tp!1846584))))

(declare-fun b!6735205 () Bool)

(declare-fun tp!1846587 () Bool)

(declare-fun tp!1846585 () Bool)

(assert (=> b!6735205 (= e!4068609 (and tp!1846587 tp!1846585))))

(declare-fun b!6735204 () Bool)

(declare-fun tp!1846586 () Bool)

(assert (=> b!6735204 (= e!4068609 tp!1846586)))

(assert (= (and b!6734124 ((_ is ElementMatch!16561) (regOne!33635 (reg!16890 r!7292)))) b!6735202))

(assert (= (and b!6734124 ((_ is Concat!25406) (regOne!33635 (reg!16890 r!7292)))) b!6735203))

(assert (= (and b!6734124 ((_ is Star!16561) (regOne!33635 (reg!16890 r!7292)))) b!6735204))

(assert (= (and b!6734124 ((_ is Union!16561) (regOne!33635 (reg!16890 r!7292)))) b!6735205))

(declare-fun b!6735206 () Bool)

(declare-fun e!4068610 () Bool)

(assert (=> b!6735206 (= e!4068610 tp_is_empty!42375)))

(assert (=> b!6734124 (= tp!1846229 e!4068610)))

(declare-fun b!6735207 () Bool)

(declare-fun tp!1846593 () Bool)

(declare-fun tp!1846589 () Bool)

(assert (=> b!6735207 (= e!4068610 (and tp!1846593 tp!1846589))))

(declare-fun b!6735209 () Bool)

(declare-fun tp!1846592 () Bool)

(declare-fun tp!1846590 () Bool)

(assert (=> b!6735209 (= e!4068610 (and tp!1846592 tp!1846590))))

(declare-fun b!6735208 () Bool)

(declare-fun tp!1846591 () Bool)

(assert (=> b!6735208 (= e!4068610 tp!1846591)))

(assert (= (and b!6734124 ((_ is ElementMatch!16561) (regTwo!33635 (reg!16890 r!7292)))) b!6735206))

(assert (= (and b!6734124 ((_ is Concat!25406) (regTwo!33635 (reg!16890 r!7292)))) b!6735207))

(assert (= (and b!6734124 ((_ is Star!16561) (regTwo!33635 (reg!16890 r!7292)))) b!6735208))

(assert (= (and b!6734124 ((_ is Union!16561) (regTwo!33635 (reg!16890 r!7292)))) b!6735209))

(declare-fun b_lambda!253595 () Bool)

(assert (= b_lambda!253575 (or d!2115756 b_lambda!253595)))

(declare-fun bs!1791114 () Bool)

(declare-fun d!2116230 () Bool)

(assert (= bs!1791114 (and d!2116230 d!2115756)))

(assert (=> bs!1791114 (= (dynLambda!26274 lambda!378084 (h!72307 (exprs!6445 (h!72308 zl!343)))) (validRegex!8297 (h!72307 (exprs!6445 (h!72308 zl!343)))))))

(declare-fun m!7492914 () Bool)

(assert (=> bs!1791114 m!7492914))

(assert (=> b!6734905 d!2116230))

(declare-fun b_lambda!253597 () Bool)

(assert (= b_lambda!253565 (or b!6733405 b_lambda!253597)))

(assert (=> d!2116012 d!2115796))

(declare-fun b_lambda!253599 () Bool)

(assert (= b_lambda!253563 (or d!2115748 b_lambda!253599)))

(declare-fun bs!1791115 () Bool)

(declare-fun d!2116232 () Bool)

(assert (= bs!1791115 (and d!2116232 d!2115748)))

(assert (=> bs!1791115 (= (dynLambda!26274 lambda!378080 (h!72307 (unfocusZipperList!1982 zl!343))) (validRegex!8297 (h!72307 (unfocusZipperList!1982 zl!343))))))

(declare-fun m!7492916 () Bool)

(assert (=> bs!1791115 m!7492916))

(assert (=> b!6734527 d!2116232))

(declare-fun b_lambda!253601 () Bool)

(assert (= b_lambda!253567 (or d!2115744 b_lambda!253601)))

(declare-fun bs!1791116 () Bool)

(declare-fun d!2116234 () Bool)

(assert (= bs!1791116 (and d!2116234 d!2115744)))

(assert (=> bs!1791116 (= (dynLambda!26274 lambda!378074 (h!72307 (exprs!6445 (h!72308 zl!343)))) (validRegex!8297 (h!72307 (exprs!6445 (h!72308 zl!343)))))))

(assert (=> bs!1791116 m!7492914))

(assert (=> b!6734610 d!2116234))

(declare-fun b_lambda!253603 () Bool)

(assert (= b_lambda!253569 (or d!2115758 b_lambda!253603)))

(declare-fun bs!1791117 () Bool)

(declare-fun d!2116236 () Bool)

(assert (= bs!1791117 (and d!2116236 d!2115758)))

(assert (=> bs!1791117 (= (dynLambda!26274 lambda!378085 (h!72307 (exprs!6445 lt!2438119))) (validRegex!8297 (h!72307 (exprs!6445 lt!2438119))))))

(declare-fun m!7492918 () Bool)

(assert (=> bs!1791117 m!7492918))

(assert (=> b!6734759 d!2116236))

(declare-fun b_lambda!253605 () Bool)

(assert (= b_lambda!253593 (or b!6733405 b_lambda!253605)))

(assert (=> d!2116216 d!2115794))

(declare-fun b_lambda!253607 () Bool)

(assert (= b_lambda!253551 (or d!2115746 b_lambda!253607)))

(declare-fun bs!1791118 () Bool)

(declare-fun d!2116238 () Bool)

(assert (= bs!1791118 (and d!2116238 d!2115746)))

(assert (=> bs!1791118 (= (dynLambda!26274 lambda!378077 (h!72307 (exprs!6445 setElem!45943))) (validRegex!8297 (h!72307 (exprs!6445 setElem!45943))))))

(declare-fun m!7492920 () Bool)

(assert (=> bs!1791118 m!7492920))

(assert (=> b!6734237 d!2116238))

(declare-fun b_lambda!253609 () Bool)

(assert (= b_lambda!253573 (or d!2115750 b_lambda!253609)))

(declare-fun bs!1791119 () Bool)

(declare-fun d!2116240 () Bool)

(assert (= bs!1791119 (and d!2116240 d!2115750)))

(assert (=> bs!1791119 (= (dynLambda!26274 lambda!378083 (h!72307 lt!2438201)) (validRegex!8297 (h!72307 lt!2438201)))))

(declare-fun m!7492922 () Bool)

(assert (=> bs!1791119 m!7492922))

(assert (=> b!6734840 d!2116240))

(check-sat (not d!2116018) (not b!6734909) (not b!6734775) (not b!6734688) (not b_lambda!253543) (not d!2115854) (not bm!608449) (not b!6734524) (not b!6734867) (not b!6734778) (not b!6734618) (not b!6735113) (not bm!608406) (not b!6735095) (not bm!608518) (not b_lambda!253599) (not bm!608404) (not b!6735192) (not b!6735181) (not bm!608520) (not b_lambda!253545) (not b!6735094) (not b!6735179) (not b!6734711) (not b!6735070) (not b!6735144) (not b!6735200) (not b!6734764) (not b!6735136) (not b!6735199) (not d!2115978) (not b!6735167) (not bs!1791115) (not bs!1791114) (not b_lambda!253607) (not b!6735185) (not d!2116218) (not b!6734642) (not bm!608513) (not b!6735193) (not b_lambda!253605) (not b!6735134) (not b!6734644) (not b!6734652) (not b!6735147) (not b!6735140) (not b!6735164) (not b!6735204) (not b!6735099) (not b!6734238) (not d!2116058) (not b!6734256) (not b!6735151) (not b!6734868) (not b!6735154) (not bm!608450) (not b!6734761) (not b!6734285) (not b!6735177) (not d!2116012) (not b!6734864) (not bm!608522) (not b!6735079) (not b!6735143) (not b!6734551) (not d!2116222) (not b!6735187) (not b!6735188) (not b!6734871) (not b!6735119) (not b!6735127) (not bm!608468) (not b!6735191) (not b!6735074) (not b!6735103) (not bm!608388) (not b!6735159) (not b!6735078) (not bm!608524) (not b!6734760) (not b!6735155) (not d!2116006) (not d!2116216) (not b!6734596) (not d!2115944) (not b!6735075) (not d!2116078) (not b!6735133) (not bm!608509) (not bm!608361) (not b!6734686) (not d!2116226) (not bm!608493) (not bm!608492) (not b!6735158) (not bm!608425) (not d!2116040) (not d!2116224) (not b!6735073) (not bm!608461) (not bm!608423) (not bm!608410) (not d!2116220) (not b!6735189) (not b!6734914) (not d!2116188) (not b!6734734) (not b!6735209) (not b!6734645) (not b!6735087) (not d!2116228) (not bm!608525) (not d!2116178) (not b!6734649) (not b!6734557) (not b!6734687) (not b!6735120) (not b!6735130) (not b!6735121) (not d!2116046) tp_is_empty!42375 (not b!6735201) (not b!6735061) (not b!6734531) (not b!6735111) (not b!6735160) (not b!6734638) (not bm!608489) (not b!6734453) (not b!6735132) (not b!6734683) (not b_lambda!253601) (not b!6735168) (not b!6735146) (not b!6734553) (not b!6734556) (not bm!608390) (not bm!608511) (not b!6735098) (not b!6734611) (not b!6735096) (not d!2116022) (not bm!608517) (not d!2115984) (not b!6735175) (not b!6735086) (not b!6735090) (not b!6734564) (not b!6735196) (not b!6734643) (not bm!608466) (not d!2116032) (not b!6734640) (not b!6735195) (not b!6735091) (not b!6735148) (not d!2116112) (not bm!608426) (not b!6735105) (not b!6735141) (not b!6734302) (not b!6735123) (not bm!608459) (not b!6734710) (not b_lambda!253595) (not b!6735150) (not d!2116214) (not bm!608396) (not d!2116080) (not b!6735115) (not b!6735205) (not b_lambda!253609) (not b!6734386) (not b!6734685) (not bm!608441) (not b!6735176) (not bm!608445) (not b!6734841) (not b!6735083) (not setNonEmpty!45959) (not d!2116088) (not b!6735125) (not bs!1791117) (not b!6734581) (not b_lambda!253597) (not b!6735208) (not bm!608442) (not b!6735108) (not setNonEmpty!45956) (not bm!608537) (not b!6735129) (not b!6734286) (not b!6735128) (not bm!608452) (not bm!608378) (not b!6735082) (not b!6735076) (not d!2115878) (not d!2116186) (not d!2116086) (not bm!608443) (not b!6735107) (not b!6735124) (not d!2116076) (not b!6734641) (not b!6734515) (not bm!608428) (not b!6734913) (not bs!1791116) (not b!6735172) (not b!6734762) (not b!6734565) (not b!6735072) (not d!2116030) (not b!6735169) (not b!6734875) (not b!6734689) (not b!6735067) (not b!6735088) (not bm!608430) (not b!6734635) (not b!6735100) (not b!6735116) (not b!6734912) (not d!2116120) (not d!2115946) (not b!6734379) (not bm!608491) (not b!6735109) (not b!6735102) (not b!6734893) (not b!6734920) (not d!2116062) (not b!6734900) (not d!2116034) (not b!6735163) (not b!6734916) (not d!2115932) (not b!6734782) (not b!6734848) (not d!2116116) (not bm!608535) (not bm!608434) (not b!6734853) (not b!6734451) (not d!2115948) (not b!6735203) (not b!6735093) (not b!6735197) (not d!2116008) (not b!6734767) (not b!6734869) (not b!6734257) (not b!6735112) (not d!2115862) (not b!6735166) (not bm!608526) (not b!6735207) (not b!6734284) (not b_lambda!253603) (not b!6735117) (not b!6735137) (not b!6734878) (not b!6734776) (not b!6734214) (not b!6734301) (not bs!1791119) (not bm!608379) (not bs!1791118) (not b!6735156) (not b!6735171) (not b!6735142) (not b!6735173) (not b!6734771) (not b!6734405) (not b!6734433) (not bm!608483) (not bm!608464) (not d!2116200) (not bm!608447) (not b!6734216) (not bm!608394) (not b!6734750) (not b!6734898) (not d!2116110) (not b!6734504) (not b!6735180) (not setNonEmpty!45957) (not d!2116068) (not b!6735104) (not b!6735162) (not b!6735138) (not b!6735184) (not b!6735183) (not d!2115980) (not bm!608392) (not b!6734684) (not bm!608515) (not b!6734897) (not b!6735152) (not b!6734896) (not bm!608487) (not b!6734528) (not bm!608402) (not d!2116196) (not bm!608481) (not b!6734774) (not d!2116118) (not b!6734906) (not bm!608432) (not b!6734503) (not b!6734904) (not d!2115900))
(check-sat)
