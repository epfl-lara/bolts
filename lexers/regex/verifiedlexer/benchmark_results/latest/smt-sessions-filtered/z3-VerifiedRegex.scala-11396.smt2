; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!608700 () Bool)

(assert start!608700)

(declare-fun b!6073448 () Bool)

(assert (=> b!6073448 true))

(assert (=> b!6073448 true))

(declare-fun lambda!330982 () Int)

(declare-fun lambda!330981 () Int)

(assert (=> b!6073448 (not (= lambda!330982 lambda!330981))))

(assert (=> b!6073448 true))

(assert (=> b!6073448 true))

(declare-fun b!6073437 () Bool)

(assert (=> b!6073437 true))

(declare-fun b!6073435 () Bool)

(declare-fun e!3706569 () Bool)

(declare-datatypes ((C!32348 0))(
  ( (C!32349 (val!25876 Int)) )
))
(declare-datatypes ((Regex!16039 0))(
  ( (ElementMatch!16039 (c!1089857 C!32348)) (Concat!24884 (regOne!32590 Regex!16039) (regTwo!32590 Regex!16039)) (EmptyExpr!16039) (Star!16039 (reg!16368 Regex!16039)) (EmptyLang!16039) (Union!16039 (regOne!32591 Regex!16039) (regTwo!32591 Regex!16039)) )
))
(declare-datatypes ((List!64416 0))(
  ( (Nil!64292) (Cons!64292 (h!70740 Regex!16039) (t!377857 List!64416)) )
))
(declare-datatypes ((Context!10846 0))(
  ( (Context!10847 (exprs!5923 List!64416)) )
))
(declare-fun lt!2326429 () Context!10846)

(declare-fun inv!83344 (Context!10846) Bool)

(assert (=> b!6073435 (= e!3706569 (inv!83344 lt!2326429))))

(declare-fun lt!2326431 () Regex!16039)

(declare-datatypes ((List!64417 0))(
  ( (Nil!64293) (Cons!64293 (h!70741 C!32348) (t!377858 List!64417)) )
))
(declare-fun s!2326 () List!64417)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2326417 () (InoxSet Context!10846))

(declare-fun matchR!8222 (Regex!16039 List!64417) Bool)

(declare-fun matchZipper!2059 ((InoxSet Context!10846) List!64417) Bool)

(assert (=> b!6073435 (= (matchR!8222 lt!2326431 s!2326) (matchZipper!2059 lt!2326417 s!2326))))

(declare-datatypes ((List!64418 0))(
  ( (Nil!64294) (Cons!64294 (h!70742 Context!10846) (t!377859 List!64418)) )
))
(declare-fun lt!2326433 () List!64418)

(declare-datatypes ((Unit!157349 0))(
  ( (Unit!157350) )
))
(declare-fun lt!2326427 () Unit!157349)

(declare-fun theoremZipperRegexEquiv!715 ((InoxSet Context!10846) List!64418 Regex!16039 List!64417) Unit!157349)

(assert (=> b!6073435 (= lt!2326427 (theoremZipperRegexEquiv!715 lt!2326417 lt!2326433 lt!2326431 s!2326))))

(declare-fun r!7292 () Regex!16039)

(assert (=> b!6073435 (= lt!2326431 (Concat!24884 (regOne!32590 r!7292) (regTwo!32590 r!7292)))))

(declare-fun b!6073436 () Bool)

(declare-fun e!3706574 () Bool)

(declare-fun tp_is_empty!41331 () Bool)

(declare-fun tp!1693042 () Bool)

(assert (=> b!6073436 (= e!3706574 (and tp_is_empty!41331 tp!1693042))))

(declare-fun e!3706563 () Bool)

(declare-fun e!3706564 () Bool)

(assert (=> b!6073437 (= e!3706563 e!3706564)))

(declare-fun res!2523725 () Bool)

(assert (=> b!6073437 (=> res!2523725 e!3706564)))

(declare-fun lt!2326426 () (InoxSet Context!10846))

(declare-fun lt!2326419 () (InoxSet Context!10846))

(assert (=> b!6073437 (= res!2523725 (not (= lt!2326426 lt!2326419)))))

(declare-fun lambda!330983 () Int)

(declare-fun z!1189 () (InoxSet Context!10846))

(declare-fun zl!343 () List!64418)

(declare-fun flatMap!1552 ((InoxSet Context!10846) Int) (InoxSet Context!10846))

(declare-fun derivationStepZipperUp!1215 (Context!10846 C!32348) (InoxSet Context!10846))

(assert (=> b!6073437 (= (flatMap!1552 z!1189 lambda!330983) (derivationStepZipperUp!1215 (h!70742 zl!343) (h!70741 s!2326)))))

(declare-fun lt!2326437 () Unit!157349)

(declare-fun lemmaFlatMapOnSingletonSet!1078 ((InoxSet Context!10846) Context!10846 Int) Unit!157349)

(assert (=> b!6073437 (= lt!2326437 (lemmaFlatMapOnSingletonSet!1078 z!1189 (h!70742 zl!343) lambda!330983))))

(declare-fun b!6073438 () Bool)

(declare-fun e!3706568 () Bool)

(declare-fun tp!1693040 () Bool)

(assert (=> b!6073438 (= e!3706568 tp!1693040)))

(declare-fun setRes!41058 () Bool)

(declare-fun e!3706566 () Bool)

(declare-fun setNonEmpty!41058 () Bool)

(declare-fun tp!1693038 () Bool)

(declare-fun setElem!41058 () Context!10846)

(assert (=> setNonEmpty!41058 (= setRes!41058 (and tp!1693038 (inv!83344 setElem!41058) e!3706566))))

(declare-fun setRest!41058 () (InoxSet Context!10846))

(assert (=> setNonEmpty!41058 (= z!1189 ((_ map or) (store ((as const (Array Context!10846 Bool)) false) setElem!41058 true) setRest!41058))))

(declare-fun b!6073440 () Bool)

(declare-fun res!2523729 () Bool)

(declare-fun e!3706562 () Bool)

(assert (=> b!6073440 (=> res!2523729 e!3706562)))

(declare-fun lt!2326432 () List!64416)

(declare-fun lt!2326424 () Regex!16039)

(declare-fun lt!2326436 () (InoxSet Context!10846))

(assert (=> b!6073440 (= res!2523729 (or (not (= lt!2326426 lt!2326436)) (not (= lt!2326424 r!7292)) (not (= (exprs!5923 (h!70742 zl!343)) lt!2326432))))))

(declare-fun b!6073441 () Bool)

(declare-fun e!3706571 () Bool)

(declare-fun tp!1693041 () Bool)

(assert (=> b!6073441 (= e!3706571 tp!1693041)))

(declare-fun b!6073442 () Bool)

(declare-fun res!2523731 () Bool)

(declare-fun e!3706573 () Bool)

(assert (=> b!6073442 (=> res!2523731 e!3706573)))

(declare-fun isEmpty!36201 (List!64418) Bool)

(assert (=> b!6073442 (= res!2523731 (not (isEmpty!36201 (t!377859 zl!343))))))

(declare-fun b!6073443 () Bool)

(declare-fun e!3706570 () Bool)

(declare-fun tp!1693045 () Bool)

(assert (=> b!6073443 (= e!3706570 (and (inv!83344 (h!70742 zl!343)) e!3706571 tp!1693045))))

(declare-fun setIsEmpty!41058 () Bool)

(assert (=> setIsEmpty!41058 setRes!41058))

(declare-fun b!6073444 () Bool)

(assert (=> b!6073444 (= e!3706562 e!3706569)))

(declare-fun res!2523723 () Bool)

(assert (=> b!6073444 (=> res!2523723 e!3706569)))

(declare-fun lt!2326421 () Context!10846)

(declare-fun zipperDepth!284 (List!64418) Int)

(assert (=> b!6073444 (= res!2523723 (>= (zipperDepth!284 lt!2326433) (zipperDepth!284 (Cons!64294 lt!2326421 Nil!64294))))))

(declare-fun lt!2326422 () Context!10846)

(assert (=> b!6073444 (= lt!2326433 (Cons!64294 lt!2326422 Nil!64294))))

(declare-fun b!6073445 () Bool)

(assert (=> b!6073445 (= e!3706564 e!3706562)))

(declare-fun res!2523717 () Bool)

(assert (=> b!6073445 (=> res!2523717 e!3706562)))

(declare-fun nullable!6034 (Regex!16039) Bool)

(assert (=> b!6073445 (= res!2523717 (nullable!6034 (regOne!32590 r!7292)))))

(declare-fun lt!2326418 () Context!10846)

(declare-fun lt!2326442 () (InoxSet Context!10846))

(declare-fun derivationStepZipperDown!1289 (Regex!16039 Context!10846 C!32348) (InoxSet Context!10846))

(assert (=> b!6073445 (= lt!2326442 (derivationStepZipperDown!1289 (regTwo!32590 r!7292) lt!2326418 (h!70741 s!2326)))))

(assert (=> b!6073445 (= lt!2326436 (derivationStepZipperDown!1289 (regOne!32590 r!7292) lt!2326429 (h!70741 s!2326)))))

(declare-fun lt!2326440 () (InoxSet Context!10846))

(assert (=> b!6073445 (= (flatMap!1552 lt!2326440 lambda!330983) (derivationStepZipperUp!1215 lt!2326429 (h!70741 s!2326)))))

(declare-fun lt!2326438 () Unit!157349)

(assert (=> b!6073445 (= lt!2326438 (lemmaFlatMapOnSingletonSet!1078 lt!2326440 lt!2326429 lambda!330983))))

(assert (=> b!6073445 (= (flatMap!1552 lt!2326417 lambda!330983) (derivationStepZipperUp!1215 lt!2326422 (h!70741 s!2326)))))

(declare-fun lt!2326441 () Unit!157349)

(assert (=> b!6073445 (= lt!2326441 (lemmaFlatMapOnSingletonSet!1078 lt!2326417 lt!2326422 lambda!330983))))

(declare-fun lt!2326428 () (InoxSet Context!10846))

(assert (=> b!6073445 (= lt!2326428 (derivationStepZipperUp!1215 lt!2326429 (h!70741 s!2326)))))

(declare-fun lt!2326430 () (InoxSet Context!10846))

(assert (=> b!6073445 (= lt!2326430 (derivationStepZipperUp!1215 lt!2326422 (h!70741 s!2326)))))

(assert (=> b!6073445 (= lt!2326440 (store ((as const (Array Context!10846 Bool)) false) lt!2326429 true))))

(declare-fun lt!2326439 () List!64416)

(assert (=> b!6073445 (= lt!2326429 (Context!10847 lt!2326439))))

(assert (=> b!6073445 (= lt!2326417 (store ((as const (Array Context!10846 Bool)) false) lt!2326422 true))))

(assert (=> b!6073445 (= lt!2326422 (Context!10847 (Cons!64292 (regOne!32590 r!7292) lt!2326439)))))

(assert (=> b!6073445 (= lt!2326439 (Cons!64292 (regTwo!32590 r!7292) Nil!64292))))

(declare-fun b!6073446 () Bool)

(declare-fun tp!1693047 () Bool)

(declare-fun tp!1693039 () Bool)

(assert (=> b!6073446 (= e!3706568 (and tp!1693047 tp!1693039))))

(declare-fun b!6073447 () Bool)

(declare-fun res!2523727 () Bool)

(assert (=> b!6073447 (=> res!2523727 e!3706573)))

(get-info :version)

(assert (=> b!6073447 (= res!2523727 (not ((_ is Cons!64292) (exprs!5923 (h!70742 zl!343)))))))

(declare-fun e!3706567 () Bool)

(assert (=> b!6073448 (= e!3706573 e!3706567)))

(declare-fun res!2523728 () Bool)

(assert (=> b!6073448 (=> res!2523728 e!3706567)))

(declare-fun lt!2326425 () Bool)

(declare-fun lt!2326443 () Bool)

(assert (=> b!6073448 (= res!2523728 (or (not (= lt!2326425 lt!2326443)) ((_ is Nil!64293) s!2326)))))

(declare-fun Exists!3109 (Int) Bool)

(assert (=> b!6073448 (= (Exists!3109 lambda!330981) (Exists!3109 lambda!330982))))

(declare-fun lt!2326435 () Unit!157349)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1646 (Regex!16039 Regex!16039 List!64417) Unit!157349)

(assert (=> b!6073448 (= lt!2326435 (lemmaExistCutMatchRandMatchRSpecEquivalent!1646 (regOne!32590 r!7292) (regTwo!32590 r!7292) s!2326))))

(assert (=> b!6073448 (= lt!2326443 (Exists!3109 lambda!330981))))

(declare-datatypes ((tuple2!66036 0))(
  ( (tuple2!66037 (_1!36321 List!64417) (_2!36321 List!64417)) )
))
(declare-datatypes ((Option!15930 0))(
  ( (None!15929) (Some!15929 (v!52056 tuple2!66036)) )
))
(declare-fun isDefined!12633 (Option!15930) Bool)

(declare-fun findConcatSeparation!2344 (Regex!16039 Regex!16039 List!64417 List!64417 List!64417) Option!15930)

(assert (=> b!6073448 (= lt!2326443 (isDefined!12633 (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) Nil!64293 s!2326 s!2326)))))

(declare-fun lt!2326434 () Unit!157349)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2108 (Regex!16039 Regex!16039 List!64417) Unit!157349)

(assert (=> b!6073448 (= lt!2326434 (lemmaFindConcatSeparationEquivalentToExists!2108 (regOne!32590 r!7292) (regTwo!32590 r!7292) s!2326))))

(declare-fun b!6073449 () Bool)

(declare-fun e!3706572 () Bool)

(assert (=> b!6073449 (= e!3706572 (not e!3706573))))

(declare-fun res!2523722 () Bool)

(assert (=> b!6073449 (=> res!2523722 e!3706573)))

(assert (=> b!6073449 (= res!2523722 (not ((_ is Cons!64294) zl!343)))))

(declare-fun matchRSpec!3140 (Regex!16039 List!64417) Bool)

(assert (=> b!6073449 (= lt!2326425 (matchRSpec!3140 r!7292 s!2326))))

(assert (=> b!6073449 (= lt!2326425 (matchR!8222 r!7292 s!2326))))

(declare-fun lt!2326420 () Unit!157349)

(declare-fun mainMatchTheorem!3140 (Regex!16039 List!64417) Unit!157349)

(assert (=> b!6073449 (= lt!2326420 (mainMatchTheorem!3140 r!7292 s!2326))))

(declare-fun b!6073450 () Bool)

(assert (=> b!6073450 (= e!3706568 tp_is_empty!41331)))

(declare-fun b!6073451 () Bool)

(assert (=> b!6073451 (= e!3706567 e!3706563)))

(declare-fun res!2523724 () Bool)

(assert (=> b!6073451 (=> res!2523724 e!3706563)))

(declare-fun lt!2326423 () (InoxSet Context!10846))

(assert (=> b!6073451 (= res!2523724 (not (= lt!2326423 lt!2326419)))))

(assert (=> b!6073451 (= lt!2326419 (derivationStepZipperDown!1289 r!7292 lt!2326418 (h!70741 s!2326)))))

(assert (=> b!6073451 (= lt!2326418 (Context!10847 Nil!64292))))

(assert (=> b!6073451 (= lt!2326423 (derivationStepZipperUp!1215 lt!2326421 (h!70741 s!2326)))))

(assert (=> b!6073451 (= lt!2326421 (Context!10847 lt!2326432))))

(assert (=> b!6073451 (= lt!2326432 (Cons!64292 r!7292 Nil!64292))))

(declare-fun derivationStepZipper!2020 ((InoxSet Context!10846) C!32348) (InoxSet Context!10846))

(assert (=> b!6073451 (= lt!2326426 (derivationStepZipper!2020 z!1189 (h!70741 s!2326)))))

(declare-fun b!6073452 () Bool)

(declare-fun tp!1693046 () Bool)

(declare-fun tp!1693043 () Bool)

(assert (=> b!6073452 (= e!3706568 (and tp!1693046 tp!1693043))))

(declare-fun b!6073453 () Bool)

(declare-fun res!2523721 () Bool)

(assert (=> b!6073453 (=> res!2523721 e!3706573)))

(declare-fun generalisedConcat!1636 (List!64416) Regex!16039)

(assert (=> b!6073453 (= res!2523721 (not (= r!7292 (generalisedConcat!1636 (exprs!5923 (h!70742 zl!343))))))))

(declare-fun b!6073454 () Bool)

(declare-fun res!2523718 () Bool)

(assert (=> b!6073454 (=> res!2523718 e!3706567)))

(declare-fun isEmpty!36202 (List!64416) Bool)

(assert (=> b!6073454 (= res!2523718 (not (isEmpty!36202 (t!377857 (exprs!5923 (h!70742 zl!343))))))))

(declare-fun b!6073439 () Bool)

(declare-fun res!2523720 () Bool)

(declare-fun e!3706565 () Bool)

(assert (=> b!6073439 (=> (not res!2523720) (not e!3706565))))

(declare-fun toList!9823 ((InoxSet Context!10846)) List!64418)

(assert (=> b!6073439 (= res!2523720 (= (toList!9823 z!1189) zl!343))))

(declare-fun res!2523732 () Bool)

(assert (=> start!608700 (=> (not res!2523732) (not e!3706565))))

(declare-fun validRegex!7775 (Regex!16039) Bool)

(assert (=> start!608700 (= res!2523732 (validRegex!7775 r!7292))))

(assert (=> start!608700 e!3706565))

(assert (=> start!608700 e!3706568))

(declare-fun condSetEmpty!41058 () Bool)

(assert (=> start!608700 (= condSetEmpty!41058 (= z!1189 ((as const (Array Context!10846 Bool)) false)))))

(assert (=> start!608700 setRes!41058))

(assert (=> start!608700 e!3706570))

(assert (=> start!608700 e!3706574))

(declare-fun b!6073455 () Bool)

(declare-fun tp!1693044 () Bool)

(assert (=> b!6073455 (= e!3706566 tp!1693044)))

(declare-fun b!6073456 () Bool)

(declare-fun res!2523719 () Bool)

(assert (=> b!6073456 (=> res!2523719 e!3706573)))

(declare-fun generalisedUnion!1883 (List!64416) Regex!16039)

(declare-fun unfocusZipperList!1460 (List!64418) List!64416)

(assert (=> b!6073456 (= res!2523719 (not (= r!7292 (generalisedUnion!1883 (unfocusZipperList!1460 zl!343)))))))

(declare-fun b!6073457 () Bool)

(assert (=> b!6073457 (= e!3706565 e!3706572)))

(declare-fun res!2523730 () Bool)

(assert (=> b!6073457 (=> (not res!2523730) (not e!3706572))))

(assert (=> b!6073457 (= res!2523730 (= r!7292 lt!2326424))))

(declare-fun unfocusZipper!1781 (List!64418) Regex!16039)

(assert (=> b!6073457 (= lt!2326424 (unfocusZipper!1781 zl!343))))

(declare-fun b!6073458 () Bool)

(declare-fun res!2523726 () Bool)

(assert (=> b!6073458 (=> res!2523726 e!3706573)))

(assert (=> b!6073458 (= res!2523726 (or ((_ is EmptyExpr!16039) r!7292) ((_ is EmptyLang!16039) r!7292) ((_ is ElementMatch!16039) r!7292) ((_ is Union!16039) r!7292) (not ((_ is Concat!24884) r!7292))))))

(assert (= (and start!608700 res!2523732) b!6073439))

(assert (= (and b!6073439 res!2523720) b!6073457))

(assert (= (and b!6073457 res!2523730) b!6073449))

(assert (= (and b!6073449 (not res!2523722)) b!6073442))

(assert (= (and b!6073442 (not res!2523731)) b!6073453))

(assert (= (and b!6073453 (not res!2523721)) b!6073447))

(assert (= (and b!6073447 (not res!2523727)) b!6073456))

(assert (= (and b!6073456 (not res!2523719)) b!6073458))

(assert (= (and b!6073458 (not res!2523726)) b!6073448))

(assert (= (and b!6073448 (not res!2523728)) b!6073454))

(assert (= (and b!6073454 (not res!2523718)) b!6073451))

(assert (= (and b!6073451 (not res!2523724)) b!6073437))

(assert (= (and b!6073437 (not res!2523725)) b!6073445))

(assert (= (and b!6073445 (not res!2523717)) b!6073440))

(assert (= (and b!6073440 (not res!2523729)) b!6073444))

(assert (= (and b!6073444 (not res!2523723)) b!6073435))

(assert (= (and start!608700 ((_ is ElementMatch!16039) r!7292)) b!6073450))

(assert (= (and start!608700 ((_ is Concat!24884) r!7292)) b!6073452))

(assert (= (and start!608700 ((_ is Star!16039) r!7292)) b!6073438))

(assert (= (and start!608700 ((_ is Union!16039) r!7292)) b!6073446))

(assert (= (and start!608700 condSetEmpty!41058) setIsEmpty!41058))

(assert (= (and start!608700 (not condSetEmpty!41058)) setNonEmpty!41058))

(assert (= setNonEmpty!41058 b!6073455))

(assert (= b!6073443 b!6073441))

(assert (= (and start!608700 ((_ is Cons!64294) zl!343)) b!6073443))

(assert (= (and start!608700 ((_ is Cons!64293) s!2326)) b!6073436))

(declare-fun m!6933754 () Bool)

(assert (=> b!6073448 m!6933754))

(declare-fun m!6933756 () Bool)

(assert (=> b!6073448 m!6933756))

(declare-fun m!6933758 () Bool)

(assert (=> b!6073448 m!6933758))

(declare-fun m!6933760 () Bool)

(assert (=> b!6073448 m!6933760))

(assert (=> b!6073448 m!6933754))

(declare-fun m!6933762 () Bool)

(assert (=> b!6073448 m!6933762))

(assert (=> b!6073448 m!6933756))

(declare-fun m!6933764 () Bool)

(assert (=> b!6073448 m!6933764))

(declare-fun m!6933766 () Bool)

(assert (=> b!6073444 m!6933766))

(declare-fun m!6933768 () Bool)

(assert (=> b!6073444 m!6933768))

(declare-fun m!6933770 () Bool)

(assert (=> b!6073445 m!6933770))

(declare-fun m!6933772 () Bool)

(assert (=> b!6073445 m!6933772))

(declare-fun m!6933774 () Bool)

(assert (=> b!6073445 m!6933774))

(declare-fun m!6933776 () Bool)

(assert (=> b!6073445 m!6933776))

(declare-fun m!6933778 () Bool)

(assert (=> b!6073445 m!6933778))

(declare-fun m!6933780 () Bool)

(assert (=> b!6073445 m!6933780))

(declare-fun m!6933782 () Bool)

(assert (=> b!6073445 m!6933782))

(declare-fun m!6933784 () Bool)

(assert (=> b!6073445 m!6933784))

(declare-fun m!6933786 () Bool)

(assert (=> b!6073445 m!6933786))

(declare-fun m!6933788 () Bool)

(assert (=> b!6073445 m!6933788))

(declare-fun m!6933790 () Bool)

(assert (=> b!6073445 m!6933790))

(declare-fun m!6933792 () Bool)

(assert (=> b!6073457 m!6933792))

(declare-fun m!6933794 () Bool)

(assert (=> b!6073442 m!6933794))

(declare-fun m!6933796 () Bool)

(assert (=> b!6073443 m!6933796))

(declare-fun m!6933798 () Bool)

(assert (=> setNonEmpty!41058 m!6933798))

(declare-fun m!6933800 () Bool)

(assert (=> b!6073451 m!6933800))

(declare-fun m!6933802 () Bool)

(assert (=> b!6073451 m!6933802))

(declare-fun m!6933804 () Bool)

(assert (=> b!6073451 m!6933804))

(declare-fun m!6933806 () Bool)

(assert (=> b!6073453 m!6933806))

(declare-fun m!6933808 () Bool)

(assert (=> b!6073437 m!6933808))

(declare-fun m!6933810 () Bool)

(assert (=> b!6073437 m!6933810))

(declare-fun m!6933812 () Bool)

(assert (=> b!6073437 m!6933812))

(declare-fun m!6933814 () Bool)

(assert (=> b!6073454 m!6933814))

(declare-fun m!6933816 () Bool)

(assert (=> b!6073439 m!6933816))

(declare-fun m!6933818 () Bool)

(assert (=> b!6073435 m!6933818))

(declare-fun m!6933820 () Bool)

(assert (=> b!6073435 m!6933820))

(declare-fun m!6933822 () Bool)

(assert (=> b!6073435 m!6933822))

(declare-fun m!6933824 () Bool)

(assert (=> b!6073435 m!6933824))

(declare-fun m!6933826 () Bool)

(assert (=> b!6073456 m!6933826))

(assert (=> b!6073456 m!6933826))

(declare-fun m!6933828 () Bool)

(assert (=> b!6073456 m!6933828))

(declare-fun m!6933830 () Bool)

(assert (=> b!6073449 m!6933830))

(declare-fun m!6933832 () Bool)

(assert (=> b!6073449 m!6933832))

(declare-fun m!6933834 () Bool)

(assert (=> b!6073449 m!6933834))

(declare-fun m!6933836 () Bool)

(assert (=> start!608700 m!6933836))

(check-sat (not b!6073435) (not b!6073453) (not b!6073455) (not b!6073436) (not b!6073442) tp_is_empty!41331 (not b!6073437) (not b!6073457) (not b!6073439) (not b!6073448) (not b!6073452) (not b!6073446) (not b!6073454) (not b!6073449) (not b!6073445) (not b!6073441) (not start!608700) (not b!6073443) (not b!6073438) (not b!6073444) (not setNonEmpty!41058) (not b!6073456) (not b!6073451))
(check-sat)
(get-model)

(declare-fun b!6073483 () Bool)

(declare-fun e!3706590 () Bool)

(declare-fun call!499712 () Bool)

(assert (=> b!6073483 (= e!3706590 call!499712)))

(declare-fun b!6073484 () Bool)

(declare-fun e!3706592 () Bool)

(declare-fun e!3706595 () Bool)

(assert (=> b!6073484 (= e!3706592 e!3706595)))

(declare-fun c!1089863 () Bool)

(assert (=> b!6073484 (= c!1089863 ((_ is Star!16039) r!7292))))

(declare-fun b!6073485 () Bool)

(declare-fun e!3706589 () Bool)

(assert (=> b!6073485 (= e!3706595 e!3706589)))

(declare-fun c!1089862 () Bool)

(assert (=> b!6073485 (= c!1089862 ((_ is Union!16039) r!7292))))

(declare-fun bm!499707 () Bool)

(declare-fun call!499714 () Bool)

(assert (=> bm!499707 (= call!499714 (validRegex!7775 (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292))))))

(declare-fun d!1904145 () Bool)

(declare-fun res!2523743 () Bool)

(assert (=> d!1904145 (=> res!2523743 e!3706592)))

(assert (=> d!1904145 (= res!2523743 ((_ is ElementMatch!16039) r!7292))))

(assert (=> d!1904145 (= (validRegex!7775 r!7292) e!3706592)))

(declare-fun b!6073486 () Bool)

(declare-fun res!2523746 () Bool)

(declare-fun e!3706594 () Bool)

(assert (=> b!6073486 (=> res!2523746 e!3706594)))

(assert (=> b!6073486 (= res!2523746 (not ((_ is Concat!24884) r!7292)))))

(assert (=> b!6073486 (= e!3706589 e!3706594)))

(declare-fun bm!499708 () Bool)

(assert (=> bm!499708 (= call!499712 (validRegex!7775 (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292)))))))

(declare-fun b!6073487 () Bool)

(declare-fun res!2523745 () Bool)

(declare-fun e!3706593 () Bool)

(assert (=> b!6073487 (=> (not res!2523745) (not e!3706593))))

(declare-fun call!499713 () Bool)

(assert (=> b!6073487 (= res!2523745 call!499713)))

(assert (=> b!6073487 (= e!3706589 e!3706593)))

(declare-fun b!6073488 () Bool)

(declare-fun e!3706591 () Bool)

(assert (=> b!6073488 (= e!3706594 e!3706591)))

(declare-fun res!2523744 () Bool)

(assert (=> b!6073488 (=> (not res!2523744) (not e!3706591))))

(assert (=> b!6073488 (= res!2523744 call!499713)))

(declare-fun b!6073489 () Bool)

(assert (=> b!6073489 (= e!3706593 call!499714)))

(declare-fun bm!499709 () Bool)

(assert (=> bm!499709 (= call!499713 call!499712)))

(declare-fun b!6073490 () Bool)

(assert (=> b!6073490 (= e!3706591 call!499714)))

(declare-fun b!6073491 () Bool)

(assert (=> b!6073491 (= e!3706595 e!3706590)))

(declare-fun res!2523747 () Bool)

(assert (=> b!6073491 (= res!2523747 (not (nullable!6034 (reg!16368 r!7292))))))

(assert (=> b!6073491 (=> (not res!2523747) (not e!3706590))))

(assert (= (and d!1904145 (not res!2523743)) b!6073484))

(assert (= (and b!6073484 c!1089863) b!6073491))

(assert (= (and b!6073484 (not c!1089863)) b!6073485))

(assert (= (and b!6073491 res!2523747) b!6073483))

(assert (= (and b!6073485 c!1089862) b!6073487))

(assert (= (and b!6073485 (not c!1089862)) b!6073486))

(assert (= (and b!6073487 res!2523745) b!6073489))

(assert (= (and b!6073486 (not res!2523746)) b!6073488))

(assert (= (and b!6073488 res!2523744) b!6073490))

(assert (= (or b!6073489 b!6073490) bm!499707))

(assert (= (or b!6073487 b!6073488) bm!499709))

(assert (= (or b!6073483 bm!499709) bm!499708))

(declare-fun m!6933838 () Bool)

(assert (=> bm!499707 m!6933838))

(declare-fun m!6933840 () Bool)

(assert (=> bm!499708 m!6933840))

(declare-fun m!6933842 () Bool)

(assert (=> b!6073491 m!6933842))

(assert (=> start!608700 d!1904145))

(declare-fun b!6073567 () Bool)

(declare-fun e!3706638 () (InoxSet Context!10846))

(assert (=> b!6073567 (= e!3706638 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6073568 () Bool)

(declare-fun call!499749 () (InoxSet Context!10846))

(assert (=> b!6073568 (= e!3706638 call!499749)))

(declare-fun bm!499744 () Bool)

(declare-fun call!499751 () (InoxSet Context!10846))

(declare-fun call!499750 () (InoxSet Context!10846))

(assert (=> bm!499744 (= call!499751 call!499750)))

(declare-fun b!6073569 () Bool)

(declare-fun e!3706643 () (InoxSet Context!10846))

(declare-fun call!499753 () (InoxSet Context!10846))

(assert (=> b!6073569 (= e!3706643 ((_ map or) call!499753 call!499750))))

(declare-fun bm!499745 () Bool)

(declare-fun call!499752 () List!64416)

(declare-fun call!499748 () List!64416)

(assert (=> bm!499745 (= call!499752 call!499748)))

(declare-fun c!1089899 () Bool)

(declare-fun bm!499746 () Bool)

(assert (=> bm!499746 (= call!499753 (derivationStepZipperDown!1289 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292))) (ite c!1089899 lt!2326429 (Context!10847 call!499748)) (h!70741 s!2326)))))

(declare-fun b!6073570 () Bool)

(declare-fun c!1089897 () Bool)

(assert (=> b!6073570 (= c!1089897 ((_ is Star!16039) (regOne!32590 r!7292)))))

(declare-fun e!3706640 () (InoxSet Context!10846))

(assert (=> b!6073570 (= e!3706640 e!3706638)))

(declare-fun b!6073571 () Bool)

(declare-fun e!3706639 () (InoxSet Context!10846))

(assert (=> b!6073571 (= e!3706639 e!3706640)))

(declare-fun c!1089898 () Bool)

(assert (=> b!6073571 (= c!1089898 ((_ is Concat!24884) (regOne!32590 r!7292)))))

(declare-fun b!6073572 () Bool)

(declare-fun e!3706642 () Bool)

(assert (=> b!6073572 (= e!3706642 (nullable!6034 (regOne!32590 (regOne!32590 r!7292))))))

(declare-fun c!1089901 () Bool)

(declare-fun bm!499747 () Bool)

(declare-fun $colon$colon!1918 (List!64416 Regex!16039) List!64416)

(assert (=> bm!499747 (= call!499748 ($colon$colon!1918 (exprs!5923 lt!2326429) (ite (or c!1089901 c!1089898) (regTwo!32590 (regOne!32590 r!7292)) (regOne!32590 r!7292))))))

(declare-fun b!6073573 () Bool)

(declare-fun e!3706641 () (InoxSet Context!10846))

(assert (=> b!6073573 (= e!3706641 (store ((as const (Array Context!10846 Bool)) false) lt!2326429 true))))

(declare-fun b!6073574 () Bool)

(assert (=> b!6073574 (= c!1089901 e!3706642)))

(declare-fun res!2523759 () Bool)

(assert (=> b!6073574 (=> (not res!2523759) (not e!3706642))))

(assert (=> b!6073574 (= res!2523759 ((_ is Concat!24884) (regOne!32590 r!7292)))))

(assert (=> b!6073574 (= e!3706643 e!3706639)))

(declare-fun bm!499743 () Bool)

(assert (=> bm!499743 (= call!499750 (derivationStepZipperDown!1289 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292))))) (ite (or c!1089899 c!1089901) lt!2326429 (Context!10847 call!499752)) (h!70741 s!2326)))))

(declare-fun d!1904147 () Bool)

(declare-fun c!1089900 () Bool)

(assert (=> d!1904147 (= c!1089900 (and ((_ is ElementMatch!16039) (regOne!32590 r!7292)) (= (c!1089857 (regOne!32590 r!7292)) (h!70741 s!2326))))))

(assert (=> d!1904147 (= (derivationStepZipperDown!1289 (regOne!32590 r!7292) lt!2326429 (h!70741 s!2326)) e!3706641)))

(declare-fun b!6073575 () Bool)

(assert (=> b!6073575 (= e!3706640 call!499749)))

(declare-fun bm!499748 () Bool)

(assert (=> bm!499748 (= call!499749 call!499751)))

(declare-fun b!6073576 () Bool)

(assert (=> b!6073576 (= e!3706641 e!3706643)))

(assert (=> b!6073576 (= c!1089899 ((_ is Union!16039) (regOne!32590 r!7292)))))

(declare-fun b!6073577 () Bool)

(assert (=> b!6073577 (= e!3706639 ((_ map or) call!499753 call!499751))))

(assert (= (and d!1904147 c!1089900) b!6073573))

(assert (= (and d!1904147 (not c!1089900)) b!6073576))

(assert (= (and b!6073576 c!1089899) b!6073569))

(assert (= (and b!6073576 (not c!1089899)) b!6073574))

(assert (= (and b!6073574 res!2523759) b!6073572))

(assert (= (and b!6073574 c!1089901) b!6073577))

(assert (= (and b!6073574 (not c!1089901)) b!6073571))

(assert (= (and b!6073571 c!1089898) b!6073575))

(assert (= (and b!6073571 (not c!1089898)) b!6073570))

(assert (= (and b!6073570 c!1089897) b!6073568))

(assert (= (and b!6073570 (not c!1089897)) b!6073567))

(assert (= (or b!6073575 b!6073568) bm!499745))

(assert (= (or b!6073575 b!6073568) bm!499748))

(assert (= (or b!6073577 bm!499745) bm!499747))

(assert (= (or b!6073577 bm!499748) bm!499744))

(assert (= (or b!6073569 bm!499744) bm!499743))

(assert (= (or b!6073569 b!6073577) bm!499746))

(declare-fun m!6933868 () Bool)

(assert (=> b!6073572 m!6933868))

(declare-fun m!6933870 () Bool)

(assert (=> bm!499743 m!6933870))

(declare-fun m!6933872 () Bool)

(assert (=> bm!499747 m!6933872))

(assert (=> b!6073573 m!6933772))

(declare-fun m!6933874 () Bool)

(assert (=> bm!499746 m!6933874))

(assert (=> b!6073445 d!1904147))

(declare-fun d!1904161 () Bool)

(declare-fun nullableFct!1997 (Regex!16039) Bool)

(assert (=> d!1904161 (= (nullable!6034 (regOne!32590 r!7292)) (nullableFct!1997 (regOne!32590 r!7292)))))

(declare-fun bs!1503869 () Bool)

(assert (= bs!1503869 d!1904161))

(declare-fun m!6933876 () Bool)

(assert (=> bs!1503869 m!6933876))

(assert (=> b!6073445 d!1904161))

(declare-fun d!1904163 () Bool)

(declare-fun dynLambda!25275 (Int Context!10846) (InoxSet Context!10846))

(assert (=> d!1904163 (= (flatMap!1552 lt!2326440 lambda!330983) (dynLambda!25275 lambda!330983 lt!2326429))))

(declare-fun lt!2326455 () Unit!157349)

(declare-fun choose!45242 ((InoxSet Context!10846) Context!10846 Int) Unit!157349)

(assert (=> d!1904163 (= lt!2326455 (choose!45242 lt!2326440 lt!2326429 lambda!330983))))

(assert (=> d!1904163 (= lt!2326440 (store ((as const (Array Context!10846 Bool)) false) lt!2326429 true))))

(assert (=> d!1904163 (= (lemmaFlatMapOnSingletonSet!1078 lt!2326440 lt!2326429 lambda!330983) lt!2326455)))

(declare-fun b_lambda!231001 () Bool)

(assert (=> (not b_lambda!231001) (not d!1904163)))

(declare-fun bs!1503870 () Bool)

(assert (= bs!1503870 d!1904163))

(assert (=> bs!1503870 m!6933788))

(declare-fun m!6933896 () Bool)

(assert (=> bs!1503870 m!6933896))

(declare-fun m!6933898 () Bool)

(assert (=> bs!1503870 m!6933898))

(assert (=> bs!1503870 m!6933772))

(assert (=> b!6073445 d!1904163))

(declare-fun d!1904167 () Bool)

(assert (=> d!1904167 (= (flatMap!1552 lt!2326417 lambda!330983) (dynLambda!25275 lambda!330983 lt!2326422))))

(declare-fun lt!2326456 () Unit!157349)

(assert (=> d!1904167 (= lt!2326456 (choose!45242 lt!2326417 lt!2326422 lambda!330983))))

(assert (=> d!1904167 (= lt!2326417 (store ((as const (Array Context!10846 Bool)) false) lt!2326422 true))))

(assert (=> d!1904167 (= (lemmaFlatMapOnSingletonSet!1078 lt!2326417 lt!2326422 lambda!330983) lt!2326456)))

(declare-fun b_lambda!231003 () Bool)

(assert (=> (not b_lambda!231003) (not d!1904167)))

(declare-fun bs!1503871 () Bool)

(assert (= bs!1503871 d!1904167))

(assert (=> bs!1503871 m!6933786))

(declare-fun m!6933900 () Bool)

(assert (=> bs!1503871 m!6933900))

(declare-fun m!6933902 () Bool)

(assert (=> bs!1503871 m!6933902))

(assert (=> bs!1503871 m!6933774))

(assert (=> b!6073445 d!1904167))

(declare-fun b!6073654 () Bool)

(declare-fun e!3706690 () (InoxSet Context!10846))

(assert (=> b!6073654 (= e!3706690 ((as const (Array Context!10846 Bool)) false))))

(declare-fun bm!499751 () Bool)

(declare-fun call!499756 () (InoxSet Context!10846))

(assert (=> bm!499751 (= call!499756 (derivationStepZipperDown!1289 (h!70740 (exprs!5923 lt!2326422)) (Context!10847 (t!377857 (exprs!5923 lt!2326422))) (h!70741 s!2326)))))

(declare-fun b!6073655 () Bool)

(declare-fun e!3706689 () Bool)

(assert (=> b!6073655 (= e!3706689 (nullable!6034 (h!70740 (exprs!5923 lt!2326422))))))

(declare-fun b!6073656 () Bool)

(declare-fun e!3706691 () (InoxSet Context!10846))

(assert (=> b!6073656 (= e!3706691 e!3706690)))

(declare-fun c!1089934 () Bool)

(assert (=> b!6073656 (= c!1089934 ((_ is Cons!64292) (exprs!5923 lt!2326422)))))

(declare-fun d!1904169 () Bool)

(declare-fun c!1089933 () Bool)

(assert (=> d!1904169 (= c!1089933 e!3706689)))

(declare-fun res!2523774 () Bool)

(assert (=> d!1904169 (=> (not res!2523774) (not e!3706689))))

(assert (=> d!1904169 (= res!2523774 ((_ is Cons!64292) (exprs!5923 lt!2326422)))))

(assert (=> d!1904169 (= (derivationStepZipperUp!1215 lt!2326422 (h!70741 s!2326)) e!3706691)))

(declare-fun b!6073657 () Bool)

(assert (=> b!6073657 (= e!3706690 call!499756)))

(declare-fun b!6073658 () Bool)

(assert (=> b!6073658 (= e!3706691 ((_ map or) call!499756 (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 lt!2326422))) (h!70741 s!2326))))))

(assert (= (and d!1904169 res!2523774) b!6073655))

(assert (= (and d!1904169 c!1089933) b!6073658))

(assert (= (and d!1904169 (not c!1089933)) b!6073656))

(assert (= (and b!6073656 c!1089934) b!6073657))

(assert (= (and b!6073656 (not c!1089934)) b!6073654))

(assert (= (or b!6073658 b!6073657) bm!499751))

(declare-fun m!6933930 () Bool)

(assert (=> bm!499751 m!6933930))

(declare-fun m!6933932 () Bool)

(assert (=> b!6073655 m!6933932))

(declare-fun m!6933934 () Bool)

(assert (=> b!6073658 m!6933934))

(assert (=> b!6073445 d!1904169))

(declare-fun d!1904177 () Bool)

(declare-fun choose!45243 ((InoxSet Context!10846) Int) (InoxSet Context!10846))

(assert (=> d!1904177 (= (flatMap!1552 lt!2326417 lambda!330983) (choose!45243 lt!2326417 lambda!330983))))

(declare-fun bs!1503879 () Bool)

(assert (= bs!1503879 d!1904177))

(declare-fun m!6933936 () Bool)

(assert (=> bs!1503879 m!6933936))

(assert (=> b!6073445 d!1904177))

(declare-fun b!6073659 () Bool)

(declare-fun e!3706692 () (InoxSet Context!10846))

(assert (=> b!6073659 (= e!3706692 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6073660 () Bool)

(declare-fun call!499758 () (InoxSet Context!10846))

(assert (=> b!6073660 (= e!3706692 call!499758)))

(declare-fun bm!499753 () Bool)

(declare-fun call!499760 () (InoxSet Context!10846))

(declare-fun call!499759 () (InoxSet Context!10846))

(assert (=> bm!499753 (= call!499760 call!499759)))

(declare-fun b!6073661 () Bool)

(declare-fun e!3706697 () (InoxSet Context!10846))

(declare-fun call!499762 () (InoxSet Context!10846))

(assert (=> b!6073661 (= e!3706697 ((_ map or) call!499762 call!499759))))

(declare-fun bm!499754 () Bool)

(declare-fun call!499761 () List!64416)

(declare-fun call!499757 () List!64416)

(assert (=> bm!499754 (= call!499761 call!499757)))

(declare-fun bm!499755 () Bool)

(declare-fun c!1089937 () Bool)

(assert (=> bm!499755 (= call!499762 (derivationStepZipperDown!1289 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292))) (ite c!1089937 lt!2326418 (Context!10847 call!499757)) (h!70741 s!2326)))))

(declare-fun b!6073662 () Bool)

(declare-fun c!1089935 () Bool)

(assert (=> b!6073662 (= c!1089935 ((_ is Star!16039) (regTwo!32590 r!7292)))))

(declare-fun e!3706694 () (InoxSet Context!10846))

(assert (=> b!6073662 (= e!3706694 e!3706692)))

(declare-fun b!6073663 () Bool)

(declare-fun e!3706693 () (InoxSet Context!10846))

(assert (=> b!6073663 (= e!3706693 e!3706694)))

(declare-fun c!1089936 () Bool)

(assert (=> b!6073663 (= c!1089936 ((_ is Concat!24884) (regTwo!32590 r!7292)))))

(declare-fun b!6073664 () Bool)

(declare-fun e!3706696 () Bool)

(assert (=> b!6073664 (= e!3706696 (nullable!6034 (regOne!32590 (regTwo!32590 r!7292))))))

(declare-fun bm!499756 () Bool)

(declare-fun c!1089939 () Bool)

(assert (=> bm!499756 (= call!499757 ($colon$colon!1918 (exprs!5923 lt!2326418) (ite (or c!1089939 c!1089936) (regTwo!32590 (regTwo!32590 r!7292)) (regTwo!32590 r!7292))))))

(declare-fun b!6073665 () Bool)

(declare-fun e!3706695 () (InoxSet Context!10846))

(assert (=> b!6073665 (= e!3706695 (store ((as const (Array Context!10846 Bool)) false) lt!2326418 true))))

(declare-fun b!6073666 () Bool)

(assert (=> b!6073666 (= c!1089939 e!3706696)))

(declare-fun res!2523775 () Bool)

(assert (=> b!6073666 (=> (not res!2523775) (not e!3706696))))

(assert (=> b!6073666 (= res!2523775 ((_ is Concat!24884) (regTwo!32590 r!7292)))))

(assert (=> b!6073666 (= e!3706697 e!3706693)))

(declare-fun bm!499752 () Bool)

(assert (=> bm!499752 (= call!499759 (derivationStepZipperDown!1289 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292))))) (ite (or c!1089937 c!1089939) lt!2326418 (Context!10847 call!499761)) (h!70741 s!2326)))))

(declare-fun d!1904179 () Bool)

(declare-fun c!1089938 () Bool)

(assert (=> d!1904179 (= c!1089938 (and ((_ is ElementMatch!16039) (regTwo!32590 r!7292)) (= (c!1089857 (regTwo!32590 r!7292)) (h!70741 s!2326))))))

(assert (=> d!1904179 (= (derivationStepZipperDown!1289 (regTwo!32590 r!7292) lt!2326418 (h!70741 s!2326)) e!3706695)))

(declare-fun b!6073667 () Bool)

(assert (=> b!6073667 (= e!3706694 call!499758)))

(declare-fun bm!499757 () Bool)

(assert (=> bm!499757 (= call!499758 call!499760)))

(declare-fun b!6073668 () Bool)

(assert (=> b!6073668 (= e!3706695 e!3706697)))

(assert (=> b!6073668 (= c!1089937 ((_ is Union!16039) (regTwo!32590 r!7292)))))

(declare-fun b!6073669 () Bool)

(assert (=> b!6073669 (= e!3706693 ((_ map or) call!499762 call!499760))))

(assert (= (and d!1904179 c!1089938) b!6073665))

(assert (= (and d!1904179 (not c!1089938)) b!6073668))

(assert (= (and b!6073668 c!1089937) b!6073661))

(assert (= (and b!6073668 (not c!1089937)) b!6073666))

(assert (= (and b!6073666 res!2523775) b!6073664))

(assert (= (and b!6073666 c!1089939) b!6073669))

(assert (= (and b!6073666 (not c!1089939)) b!6073663))

(assert (= (and b!6073663 c!1089936) b!6073667))

(assert (= (and b!6073663 (not c!1089936)) b!6073662))

(assert (= (and b!6073662 c!1089935) b!6073660))

(assert (= (and b!6073662 (not c!1089935)) b!6073659))

(assert (= (or b!6073667 b!6073660) bm!499754))

(assert (= (or b!6073667 b!6073660) bm!499757))

(assert (= (or b!6073669 bm!499754) bm!499756))

(assert (= (or b!6073669 bm!499757) bm!499753))

(assert (= (or b!6073661 bm!499753) bm!499752))

(assert (= (or b!6073661 b!6073669) bm!499755))

(declare-fun m!6933938 () Bool)

(assert (=> b!6073664 m!6933938))

(declare-fun m!6933940 () Bool)

(assert (=> bm!499752 m!6933940))

(declare-fun m!6933942 () Bool)

(assert (=> bm!499756 m!6933942))

(declare-fun m!6933944 () Bool)

(assert (=> b!6073665 m!6933944))

(declare-fun m!6933946 () Bool)

(assert (=> bm!499755 m!6933946))

(assert (=> b!6073445 d!1904179))

(declare-fun d!1904181 () Bool)

(assert (=> d!1904181 (= (flatMap!1552 lt!2326440 lambda!330983) (choose!45243 lt!2326440 lambda!330983))))

(declare-fun bs!1503880 () Bool)

(assert (= bs!1503880 d!1904181))

(declare-fun m!6933948 () Bool)

(assert (=> bs!1503880 m!6933948))

(assert (=> b!6073445 d!1904181))

(declare-fun b!6073670 () Bool)

(declare-fun e!3706699 () (InoxSet Context!10846))

(assert (=> b!6073670 (= e!3706699 ((as const (Array Context!10846 Bool)) false))))

(declare-fun bm!499758 () Bool)

(declare-fun call!499763 () (InoxSet Context!10846))

(assert (=> bm!499758 (= call!499763 (derivationStepZipperDown!1289 (h!70740 (exprs!5923 lt!2326429)) (Context!10847 (t!377857 (exprs!5923 lt!2326429))) (h!70741 s!2326)))))

(declare-fun b!6073671 () Bool)

(declare-fun e!3706698 () Bool)

(assert (=> b!6073671 (= e!3706698 (nullable!6034 (h!70740 (exprs!5923 lt!2326429))))))

(declare-fun b!6073672 () Bool)

(declare-fun e!3706700 () (InoxSet Context!10846))

(assert (=> b!6073672 (= e!3706700 e!3706699)))

(declare-fun c!1089941 () Bool)

(assert (=> b!6073672 (= c!1089941 ((_ is Cons!64292) (exprs!5923 lt!2326429)))))

(declare-fun d!1904183 () Bool)

(declare-fun c!1089940 () Bool)

(assert (=> d!1904183 (= c!1089940 e!3706698)))

(declare-fun res!2523776 () Bool)

(assert (=> d!1904183 (=> (not res!2523776) (not e!3706698))))

(assert (=> d!1904183 (= res!2523776 ((_ is Cons!64292) (exprs!5923 lt!2326429)))))

(assert (=> d!1904183 (= (derivationStepZipperUp!1215 lt!2326429 (h!70741 s!2326)) e!3706700)))

(declare-fun b!6073673 () Bool)

(assert (=> b!6073673 (= e!3706699 call!499763)))

(declare-fun b!6073674 () Bool)

(assert (=> b!6073674 (= e!3706700 ((_ map or) call!499763 (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 lt!2326429))) (h!70741 s!2326))))))

(assert (= (and d!1904183 res!2523776) b!6073671))

(assert (= (and d!1904183 c!1089940) b!6073674))

(assert (= (and d!1904183 (not c!1089940)) b!6073672))

(assert (= (and b!6073672 c!1089941) b!6073673))

(assert (= (and b!6073672 (not c!1089941)) b!6073670))

(assert (= (or b!6073674 b!6073673) bm!499758))

(declare-fun m!6933950 () Bool)

(assert (=> bm!499758 m!6933950))

(declare-fun m!6933952 () Bool)

(assert (=> b!6073671 m!6933952))

(declare-fun m!6933954 () Bool)

(assert (=> b!6073674 m!6933954))

(assert (=> b!6073445 d!1904183))

(declare-fun d!1904185 () Bool)

(assert (=> d!1904185 (= (flatMap!1552 z!1189 lambda!330983) (choose!45243 z!1189 lambda!330983))))

(declare-fun bs!1503881 () Bool)

(assert (= bs!1503881 d!1904185))

(declare-fun m!6933956 () Bool)

(assert (=> bs!1503881 m!6933956))

(assert (=> b!6073437 d!1904185))

(declare-fun b!6073675 () Bool)

(declare-fun e!3706702 () (InoxSet Context!10846))

(assert (=> b!6073675 (= e!3706702 ((as const (Array Context!10846 Bool)) false))))

(declare-fun bm!499759 () Bool)

(declare-fun call!499764 () (InoxSet Context!10846))

(assert (=> bm!499759 (= call!499764 (derivationStepZipperDown!1289 (h!70740 (exprs!5923 (h!70742 zl!343))) (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343)))) (h!70741 s!2326)))))

(declare-fun b!6073676 () Bool)

(declare-fun e!3706701 () Bool)

(assert (=> b!6073676 (= e!3706701 (nullable!6034 (h!70740 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun b!6073677 () Bool)

(declare-fun e!3706703 () (InoxSet Context!10846))

(assert (=> b!6073677 (= e!3706703 e!3706702)))

(declare-fun c!1089943 () Bool)

(assert (=> b!6073677 (= c!1089943 ((_ is Cons!64292) (exprs!5923 (h!70742 zl!343))))))

(declare-fun d!1904187 () Bool)

(declare-fun c!1089942 () Bool)

(assert (=> d!1904187 (= c!1089942 e!3706701)))

(declare-fun res!2523777 () Bool)

(assert (=> d!1904187 (=> (not res!2523777) (not e!3706701))))

(assert (=> d!1904187 (= res!2523777 ((_ is Cons!64292) (exprs!5923 (h!70742 zl!343))))))

(assert (=> d!1904187 (= (derivationStepZipperUp!1215 (h!70742 zl!343) (h!70741 s!2326)) e!3706703)))

(declare-fun b!6073678 () Bool)

(assert (=> b!6073678 (= e!3706702 call!499764)))

(declare-fun b!6073679 () Bool)

(assert (=> b!6073679 (= e!3706703 ((_ map or) call!499764 (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343)))) (h!70741 s!2326))))))

(assert (= (and d!1904187 res!2523777) b!6073676))

(assert (= (and d!1904187 c!1089942) b!6073679))

(assert (= (and d!1904187 (not c!1089942)) b!6073677))

(assert (= (and b!6073677 c!1089943) b!6073678))

(assert (= (and b!6073677 (not c!1089943)) b!6073675))

(assert (= (or b!6073679 b!6073678) bm!499759))

(declare-fun m!6933958 () Bool)

(assert (=> bm!499759 m!6933958))

(declare-fun m!6933960 () Bool)

(assert (=> b!6073676 m!6933960))

(declare-fun m!6933962 () Bool)

(assert (=> b!6073679 m!6933962))

(assert (=> b!6073437 d!1904187))

(declare-fun d!1904189 () Bool)

(assert (=> d!1904189 (= (flatMap!1552 z!1189 lambda!330983) (dynLambda!25275 lambda!330983 (h!70742 zl!343)))))

(declare-fun lt!2326463 () Unit!157349)

(assert (=> d!1904189 (= lt!2326463 (choose!45242 z!1189 (h!70742 zl!343) lambda!330983))))

(assert (=> d!1904189 (= z!1189 (store ((as const (Array Context!10846 Bool)) false) (h!70742 zl!343) true))))

(assert (=> d!1904189 (= (lemmaFlatMapOnSingletonSet!1078 z!1189 (h!70742 zl!343) lambda!330983) lt!2326463)))

(declare-fun b_lambda!231005 () Bool)

(assert (=> (not b_lambda!231005) (not d!1904189)))

(declare-fun bs!1503882 () Bool)

(assert (= bs!1503882 d!1904189))

(assert (=> bs!1503882 m!6933808))

(declare-fun m!6933964 () Bool)

(assert (=> bs!1503882 m!6933964))

(declare-fun m!6933966 () Bool)

(assert (=> bs!1503882 m!6933966))

(declare-fun m!6933968 () Bool)

(assert (=> bs!1503882 m!6933968))

(assert (=> b!6073437 d!1904189))

(declare-fun b!6073731 () Bool)

(declare-fun e!3706733 () Bool)

(declare-fun lt!2326478 () Regex!16039)

(declare-fun head!12603 (List!64416) Regex!16039)

(assert (=> b!6073731 (= e!3706733 (= lt!2326478 (head!12603 (unfocusZipperList!1460 zl!343))))))

(declare-fun b!6073732 () Bool)

(declare-fun e!3706737 () Bool)

(declare-fun e!3706736 () Bool)

(assert (=> b!6073732 (= e!3706737 e!3706736)))

(declare-fun c!1089960 () Bool)

(assert (=> b!6073732 (= c!1089960 (isEmpty!36202 (unfocusZipperList!1460 zl!343)))))

(declare-fun d!1904191 () Bool)

(assert (=> d!1904191 e!3706737))

(declare-fun res!2523801 () Bool)

(assert (=> d!1904191 (=> (not res!2523801) (not e!3706737))))

(assert (=> d!1904191 (= res!2523801 (validRegex!7775 lt!2326478))))

(declare-fun e!3706738 () Regex!16039)

(assert (=> d!1904191 (= lt!2326478 e!3706738)))

(declare-fun c!1089961 () Bool)

(declare-fun e!3706735 () Bool)

(assert (=> d!1904191 (= c!1089961 e!3706735)))

(declare-fun res!2523802 () Bool)

(assert (=> d!1904191 (=> (not res!2523802) (not e!3706735))))

(assert (=> d!1904191 (= res!2523802 ((_ is Cons!64292) (unfocusZipperList!1460 zl!343)))))

(declare-fun lambda!331004 () Int)

(declare-fun forall!15151 (List!64416 Int) Bool)

(assert (=> d!1904191 (forall!15151 (unfocusZipperList!1460 zl!343) lambda!331004)))

(assert (=> d!1904191 (= (generalisedUnion!1883 (unfocusZipperList!1460 zl!343)) lt!2326478)))

(declare-fun b!6073733 () Bool)

(declare-fun e!3706734 () Regex!16039)

(assert (=> b!6073733 (= e!3706738 e!3706734)))

(declare-fun c!1089958 () Bool)

(assert (=> b!6073733 (= c!1089958 ((_ is Cons!64292) (unfocusZipperList!1460 zl!343)))))

(declare-fun b!6073734 () Bool)

(declare-fun isEmptyLang!1468 (Regex!16039) Bool)

(assert (=> b!6073734 (= e!3706736 (isEmptyLang!1468 lt!2326478))))

(declare-fun b!6073735 () Bool)

(assert (=> b!6073735 (= e!3706734 (Union!16039 (h!70740 (unfocusZipperList!1460 zl!343)) (generalisedUnion!1883 (t!377857 (unfocusZipperList!1460 zl!343)))))))

(declare-fun b!6073736 () Bool)

(assert (=> b!6073736 (= e!3706735 (isEmpty!36202 (t!377857 (unfocusZipperList!1460 zl!343))))))

(declare-fun b!6073737 () Bool)

(declare-fun isUnion!898 (Regex!16039) Bool)

(assert (=> b!6073737 (= e!3706733 (isUnion!898 lt!2326478))))

(declare-fun b!6073738 () Bool)

(assert (=> b!6073738 (= e!3706734 EmptyLang!16039)))

(declare-fun b!6073739 () Bool)

(assert (=> b!6073739 (= e!3706736 e!3706733)))

(declare-fun c!1089959 () Bool)

(declare-fun tail!11688 (List!64416) List!64416)

(assert (=> b!6073739 (= c!1089959 (isEmpty!36202 (tail!11688 (unfocusZipperList!1460 zl!343))))))

(declare-fun b!6073740 () Bool)

(assert (=> b!6073740 (= e!3706738 (h!70740 (unfocusZipperList!1460 zl!343)))))

(assert (= (and d!1904191 res!2523802) b!6073736))

(assert (= (and d!1904191 c!1089961) b!6073740))

(assert (= (and d!1904191 (not c!1089961)) b!6073733))

(assert (= (and b!6073733 c!1089958) b!6073735))

(assert (= (and b!6073733 (not c!1089958)) b!6073738))

(assert (= (and d!1904191 res!2523801) b!6073732))

(assert (= (and b!6073732 c!1089960) b!6073734))

(assert (= (and b!6073732 (not c!1089960)) b!6073739))

(assert (= (and b!6073739 c!1089959) b!6073731))

(assert (= (and b!6073739 (not c!1089959)) b!6073737))

(assert (=> b!6073731 m!6933826))

(declare-fun m!6934002 () Bool)

(assert (=> b!6073731 m!6934002))

(declare-fun m!6934004 () Bool)

(assert (=> b!6073736 m!6934004))

(assert (=> b!6073732 m!6933826))

(declare-fun m!6934006 () Bool)

(assert (=> b!6073732 m!6934006))

(declare-fun m!6934008 () Bool)

(assert (=> b!6073737 m!6934008))

(declare-fun m!6934010 () Bool)

(assert (=> d!1904191 m!6934010))

(assert (=> d!1904191 m!6933826))

(declare-fun m!6934012 () Bool)

(assert (=> d!1904191 m!6934012))

(assert (=> b!6073739 m!6933826))

(declare-fun m!6934014 () Bool)

(assert (=> b!6073739 m!6934014))

(assert (=> b!6073739 m!6934014))

(declare-fun m!6934016 () Bool)

(assert (=> b!6073739 m!6934016))

(declare-fun m!6934018 () Bool)

(assert (=> b!6073734 m!6934018))

(declare-fun m!6934020 () Bool)

(assert (=> b!6073735 m!6934020))

(assert (=> b!6073456 d!1904191))

(declare-fun bs!1503891 () Bool)

(declare-fun d!1904201 () Bool)

(assert (= bs!1503891 (and d!1904201 d!1904191)))

(declare-fun lambda!331013 () Int)

(assert (=> bs!1503891 (= lambda!331013 lambda!331004)))

(declare-fun lt!2326484 () List!64416)

(assert (=> d!1904201 (forall!15151 lt!2326484 lambda!331013)))

(declare-fun e!3706745 () List!64416)

(assert (=> d!1904201 (= lt!2326484 e!3706745)))

(declare-fun c!1089964 () Bool)

(assert (=> d!1904201 (= c!1089964 ((_ is Cons!64294) zl!343))))

(assert (=> d!1904201 (= (unfocusZipperList!1460 zl!343) lt!2326484)))

(declare-fun b!6073753 () Bool)

(assert (=> b!6073753 (= e!3706745 (Cons!64292 (generalisedConcat!1636 (exprs!5923 (h!70742 zl!343))) (unfocusZipperList!1460 (t!377859 zl!343))))))

(declare-fun b!6073754 () Bool)

(assert (=> b!6073754 (= e!3706745 Nil!64292)))

(assert (= (and d!1904201 c!1089964) b!6073753))

(assert (= (and d!1904201 (not c!1089964)) b!6073754))

(declare-fun m!6934030 () Bool)

(assert (=> d!1904201 m!6934030))

(assert (=> b!6073753 m!6933806))

(declare-fun m!6934032 () Bool)

(assert (=> b!6073753 m!6934032))

(assert (=> b!6073456 d!1904201))

(declare-fun bs!1503892 () Bool)

(declare-fun d!1904207 () Bool)

(assert (= bs!1503892 (and d!1904207 d!1904191)))

(declare-fun lambda!331016 () Int)

(assert (=> bs!1503892 (= lambda!331016 lambda!331004)))

(declare-fun bs!1503893 () Bool)

(assert (= bs!1503893 (and d!1904207 d!1904201)))

(assert (=> bs!1503893 (= lambda!331016 lambda!331013)))

(assert (=> d!1904207 (= (inv!83344 lt!2326429) (forall!15151 (exprs!5923 lt!2326429) lambda!331016))))

(declare-fun bs!1503894 () Bool)

(assert (= bs!1503894 d!1904207))

(declare-fun m!6934034 () Bool)

(assert (=> bs!1503894 m!6934034))

(assert (=> b!6073435 d!1904207))

(declare-fun b!6073840 () Bool)

(declare-fun res!2523850 () Bool)

(declare-fun e!3706795 () Bool)

(assert (=> b!6073840 (=> (not res!2523850) (not e!3706795))))

(declare-fun isEmpty!36205 (List!64417) Bool)

(declare-fun tail!11689 (List!64417) List!64417)

(assert (=> b!6073840 (= res!2523850 (isEmpty!36205 (tail!11689 s!2326)))))

(declare-fun b!6073841 () Bool)

(declare-fun res!2523857 () Bool)

(declare-fun e!3706798 () Bool)

(assert (=> b!6073841 (=> res!2523857 e!3706798)))

(assert (=> b!6073841 (= res!2523857 (not ((_ is ElementMatch!16039) lt!2326431)))))

(declare-fun e!3706794 () Bool)

(assert (=> b!6073841 (= e!3706794 e!3706798)))

(declare-fun b!6073842 () Bool)

(declare-fun e!3706793 () Bool)

(assert (=> b!6073842 (= e!3706798 e!3706793)))

(declare-fun res!2523854 () Bool)

(assert (=> b!6073842 (=> (not res!2523854) (not e!3706793))))

(declare-fun lt!2326503 () Bool)

(assert (=> b!6073842 (= res!2523854 (not lt!2326503))))

(declare-fun b!6073843 () Bool)

(declare-fun res!2523851 () Bool)

(assert (=> b!6073843 (=> (not res!2523851) (not e!3706795))))

(declare-fun call!499773 () Bool)

(assert (=> b!6073843 (= res!2523851 (not call!499773))))

(declare-fun b!6073844 () Bool)

(declare-fun head!12604 (List!64417) C!32348)

(assert (=> b!6073844 (= e!3706795 (= (head!12604 s!2326) (c!1089857 lt!2326431)))))

(declare-fun d!1904209 () Bool)

(declare-fun e!3706799 () Bool)

(assert (=> d!1904209 e!3706799))

(declare-fun c!1089994 () Bool)

(assert (=> d!1904209 (= c!1089994 ((_ is EmptyExpr!16039) lt!2326431))))

(declare-fun e!3706796 () Bool)

(assert (=> d!1904209 (= lt!2326503 e!3706796)))

(declare-fun c!1089993 () Bool)

(assert (=> d!1904209 (= c!1089993 (isEmpty!36205 s!2326))))

(assert (=> d!1904209 (validRegex!7775 lt!2326431)))

(assert (=> d!1904209 (= (matchR!8222 lt!2326431 s!2326) lt!2326503)))

(declare-fun b!6073845 () Bool)

(assert (=> b!6073845 (= e!3706796 (nullable!6034 lt!2326431))))

(declare-fun b!6073846 () Bool)

(declare-fun res!2523853 () Bool)

(assert (=> b!6073846 (=> res!2523853 e!3706798)))

(assert (=> b!6073846 (= res!2523853 e!3706795)))

(declare-fun res!2523852 () Bool)

(assert (=> b!6073846 (=> (not res!2523852) (not e!3706795))))

(assert (=> b!6073846 (= res!2523852 lt!2326503)))

(declare-fun b!6073847 () Bool)

(declare-fun derivativeStep!4762 (Regex!16039 C!32348) Regex!16039)

(assert (=> b!6073847 (= e!3706796 (matchR!8222 (derivativeStep!4762 lt!2326431 (head!12604 s!2326)) (tail!11689 s!2326)))))

(declare-fun b!6073848 () Bool)

(assert (=> b!6073848 (= e!3706799 (= lt!2326503 call!499773))))

(declare-fun b!6073849 () Bool)

(assert (=> b!6073849 (= e!3706799 e!3706794)))

(declare-fun c!1089995 () Bool)

(assert (=> b!6073849 (= c!1089995 ((_ is EmptyLang!16039) lt!2326431))))

(declare-fun bm!499768 () Bool)

(assert (=> bm!499768 (= call!499773 (isEmpty!36205 s!2326))))

(declare-fun b!6073850 () Bool)

(declare-fun res!2523856 () Bool)

(declare-fun e!3706797 () Bool)

(assert (=> b!6073850 (=> res!2523856 e!3706797)))

(assert (=> b!6073850 (= res!2523856 (not (isEmpty!36205 (tail!11689 s!2326))))))

(declare-fun b!6073851 () Bool)

(assert (=> b!6073851 (= e!3706797 (not (= (head!12604 s!2326) (c!1089857 lt!2326431))))))

(declare-fun b!6073852 () Bool)

(assert (=> b!6073852 (= e!3706794 (not lt!2326503))))

(declare-fun b!6073853 () Bool)

(assert (=> b!6073853 (= e!3706793 e!3706797)))

(declare-fun res!2523855 () Bool)

(assert (=> b!6073853 (=> res!2523855 e!3706797)))

(assert (=> b!6073853 (= res!2523855 call!499773)))

(assert (= (and d!1904209 c!1089993) b!6073845))

(assert (= (and d!1904209 (not c!1089993)) b!6073847))

(assert (= (and d!1904209 c!1089994) b!6073848))

(assert (= (and d!1904209 (not c!1089994)) b!6073849))

(assert (= (and b!6073849 c!1089995) b!6073852))

(assert (= (and b!6073849 (not c!1089995)) b!6073841))

(assert (= (and b!6073841 (not res!2523857)) b!6073846))

(assert (= (and b!6073846 res!2523852) b!6073843))

(assert (= (and b!6073843 res!2523851) b!6073840))

(assert (= (and b!6073840 res!2523850) b!6073844))

(assert (= (and b!6073846 (not res!2523853)) b!6073842))

(assert (= (and b!6073842 res!2523854) b!6073853))

(assert (= (and b!6073853 (not res!2523855)) b!6073850))

(assert (= (and b!6073850 (not res!2523856)) b!6073851))

(assert (= (or b!6073848 b!6073843 b!6073853) bm!499768))

(declare-fun m!6934060 () Bool)

(assert (=> b!6073851 m!6934060))

(assert (=> b!6073844 m!6934060))

(declare-fun m!6934062 () Bool)

(assert (=> b!6073840 m!6934062))

(assert (=> b!6073840 m!6934062))

(declare-fun m!6934064 () Bool)

(assert (=> b!6073840 m!6934064))

(declare-fun m!6934066 () Bool)

(assert (=> b!6073845 m!6934066))

(assert (=> b!6073850 m!6934062))

(assert (=> b!6073850 m!6934062))

(assert (=> b!6073850 m!6934064))

(assert (=> b!6073847 m!6934060))

(assert (=> b!6073847 m!6934060))

(declare-fun m!6934068 () Bool)

(assert (=> b!6073847 m!6934068))

(assert (=> b!6073847 m!6934062))

(assert (=> b!6073847 m!6934068))

(assert (=> b!6073847 m!6934062))

(declare-fun m!6934070 () Bool)

(assert (=> b!6073847 m!6934070))

(declare-fun m!6934072 () Bool)

(assert (=> bm!499768 m!6934072))

(assert (=> d!1904209 m!6934072))

(declare-fun m!6934074 () Bool)

(assert (=> d!1904209 m!6934074))

(assert (=> b!6073435 d!1904209))

(declare-fun d!1904217 () Bool)

(declare-fun c!1090004 () Bool)

(assert (=> d!1904217 (= c!1090004 (isEmpty!36205 s!2326))))

(declare-fun e!3706816 () Bool)

(assert (=> d!1904217 (= (matchZipper!2059 lt!2326417 s!2326) e!3706816)))

(declare-fun b!6073886 () Bool)

(declare-fun nullableZipper!1828 ((InoxSet Context!10846)) Bool)

(assert (=> b!6073886 (= e!3706816 (nullableZipper!1828 lt!2326417))))

(declare-fun b!6073887 () Bool)

(assert (=> b!6073887 (= e!3706816 (matchZipper!2059 (derivationStepZipper!2020 lt!2326417 (head!12604 s!2326)) (tail!11689 s!2326)))))

(assert (= (and d!1904217 c!1090004) b!6073886))

(assert (= (and d!1904217 (not c!1090004)) b!6073887))

(assert (=> d!1904217 m!6934072))

(declare-fun m!6934084 () Bool)

(assert (=> b!6073886 m!6934084))

(assert (=> b!6073887 m!6934060))

(assert (=> b!6073887 m!6934060))

(declare-fun m!6934086 () Bool)

(assert (=> b!6073887 m!6934086))

(assert (=> b!6073887 m!6934062))

(assert (=> b!6073887 m!6934086))

(assert (=> b!6073887 m!6934062))

(declare-fun m!6934088 () Bool)

(assert (=> b!6073887 m!6934088))

(assert (=> b!6073435 d!1904217))

(declare-fun d!1904221 () Bool)

(assert (=> d!1904221 (= (matchR!8222 lt!2326431 s!2326) (matchZipper!2059 lt!2326417 s!2326))))

(declare-fun lt!2326512 () Unit!157349)

(declare-fun choose!45248 ((InoxSet Context!10846) List!64418 Regex!16039 List!64417) Unit!157349)

(assert (=> d!1904221 (= lt!2326512 (choose!45248 lt!2326417 lt!2326433 lt!2326431 s!2326))))

(assert (=> d!1904221 (validRegex!7775 lt!2326431)))

(assert (=> d!1904221 (= (theoremZipperRegexEquiv!715 lt!2326417 lt!2326433 lt!2326431 s!2326) lt!2326512)))

(declare-fun bs!1503920 () Bool)

(assert (= bs!1503920 d!1904221))

(assert (=> bs!1503920 m!6933820))

(assert (=> bs!1503920 m!6933822))

(declare-fun m!6934108 () Bool)

(assert (=> bs!1503920 m!6934108))

(assert (=> bs!1503920 m!6934074))

(assert (=> b!6073435 d!1904221))

(declare-fun d!1904231 () Bool)

(assert (=> d!1904231 (= (isEmpty!36202 (t!377857 (exprs!5923 (h!70742 zl!343)))) ((_ is Nil!64292) (t!377857 (exprs!5923 (h!70742 zl!343)))))))

(assert (=> b!6073454 d!1904231))

(declare-fun b!6073960 () Bool)

(assert (=> b!6073960 true))

(declare-fun bs!1503924 () Bool)

(declare-fun b!6073962 () Bool)

(assert (= bs!1503924 (and b!6073962 b!6073960)))

(declare-fun lambda!331045 () Int)

(declare-fun lambda!331044 () Int)

(declare-fun lt!2326528 () Int)

(declare-fun lt!2326530 () Int)

(assert (=> bs!1503924 (= (= lt!2326528 lt!2326530) (= lambda!331045 lambda!331044))))

(assert (=> b!6073962 true))

(declare-fun d!1904235 () Bool)

(declare-fun e!3706863 () Bool)

(assert (=> d!1904235 e!3706863))

(declare-fun res!2523908 () Bool)

(assert (=> d!1904235 (=> (not res!2523908) (not e!3706863))))

(assert (=> d!1904235 (= res!2523908 (>= lt!2326528 0))))

(declare-fun e!3706862 () Int)

(assert (=> d!1904235 (= lt!2326528 e!3706862)))

(declare-fun c!1090030 () Bool)

(assert (=> d!1904235 (= c!1090030 ((_ is Cons!64294) lt!2326433))))

(assert (=> d!1904235 (= (zipperDepth!284 lt!2326433) lt!2326528)))

(assert (=> b!6073960 (= e!3706862 lt!2326530)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!179 (Context!10846) Int)

(assert (=> b!6073960 (= lt!2326530 (maxBigInt!0 (contextDepth!179 (h!70742 lt!2326433)) (zipperDepth!284 (t!377859 lt!2326433))))))

(declare-fun lt!2326529 () Unit!157349)

(declare-fun lambda!331043 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!163 (List!64418 Int Int Int) Unit!157349)

(assert (=> b!6073960 (= lt!2326529 (lemmaForallContextDepthBiggerThanTransitive!163 (t!377859 lt!2326433) lt!2326530 (zipperDepth!284 (t!377859 lt!2326433)) lambda!331043))))

(declare-fun forall!15152 (List!64418 Int) Bool)

(assert (=> b!6073960 (forall!15152 (t!377859 lt!2326433) lambda!331044)))

(declare-fun lt!2326527 () Unit!157349)

(assert (=> b!6073960 (= lt!2326527 lt!2326529)))

(declare-fun b!6073961 () Bool)

(assert (=> b!6073961 (= e!3706862 0)))

(assert (=> b!6073962 (= e!3706863 (forall!15152 lt!2326433 lambda!331045))))

(assert (= (and d!1904235 c!1090030) b!6073960))

(assert (= (and d!1904235 (not c!1090030)) b!6073961))

(assert (= (and d!1904235 res!2523908) b!6073962))

(declare-fun m!6934158 () Bool)

(assert (=> b!6073960 m!6934158))

(declare-fun m!6934160 () Bool)

(assert (=> b!6073960 m!6934160))

(declare-fun m!6934162 () Bool)

(assert (=> b!6073960 m!6934162))

(assert (=> b!6073960 m!6934162))

(declare-fun m!6934164 () Bool)

(assert (=> b!6073960 m!6934164))

(assert (=> b!6073960 m!6934160))

(assert (=> b!6073960 m!6934162))

(declare-fun m!6934166 () Bool)

(assert (=> b!6073960 m!6934166))

(declare-fun m!6934168 () Bool)

(assert (=> b!6073962 m!6934168))

(assert (=> b!6073444 d!1904235))

(declare-fun bs!1503928 () Bool)

(declare-fun b!6073970 () Bool)

(assert (= bs!1503928 (and b!6073970 b!6073960)))

(declare-fun lambda!331046 () Int)

(assert (=> bs!1503928 (= lambda!331046 lambda!331043)))

(declare-fun lt!2326536 () Int)

(declare-fun lambda!331047 () Int)

(assert (=> bs!1503928 (= (= lt!2326536 lt!2326530) (= lambda!331047 lambda!331044))))

(declare-fun bs!1503929 () Bool)

(assert (= bs!1503929 (and b!6073970 b!6073962)))

(assert (=> bs!1503929 (= (= lt!2326536 lt!2326528) (= lambda!331047 lambda!331045))))

(assert (=> b!6073970 true))

(declare-fun bs!1503930 () Bool)

(declare-fun b!6073972 () Bool)

(assert (= bs!1503930 (and b!6073972 b!6073960)))

(declare-fun lt!2326534 () Int)

(declare-fun lambda!331048 () Int)

(assert (=> bs!1503930 (= (= lt!2326534 lt!2326530) (= lambda!331048 lambda!331044))))

(declare-fun bs!1503932 () Bool)

(assert (= bs!1503932 (and b!6073972 b!6073962)))

(assert (=> bs!1503932 (= (= lt!2326534 lt!2326528) (= lambda!331048 lambda!331045))))

(declare-fun bs!1503933 () Bool)

(assert (= bs!1503933 (and b!6073972 b!6073970)))

(assert (=> bs!1503933 (= (= lt!2326534 lt!2326536) (= lambda!331048 lambda!331047))))

(assert (=> b!6073972 true))

(declare-fun d!1904257 () Bool)

(declare-fun e!3706868 () Bool)

(assert (=> d!1904257 e!3706868))

(declare-fun res!2523910 () Bool)

(assert (=> d!1904257 (=> (not res!2523910) (not e!3706868))))

(assert (=> d!1904257 (= res!2523910 (>= lt!2326534 0))))

(declare-fun e!3706867 () Int)

(assert (=> d!1904257 (= lt!2326534 e!3706867)))

(declare-fun c!1090033 () Bool)

(assert (=> d!1904257 (= c!1090033 ((_ is Cons!64294) (Cons!64294 lt!2326421 Nil!64294)))))

(assert (=> d!1904257 (= (zipperDepth!284 (Cons!64294 lt!2326421 Nil!64294)) lt!2326534)))

(assert (=> b!6073970 (= e!3706867 lt!2326536)))

(assert (=> b!6073970 (= lt!2326536 (maxBigInt!0 (contextDepth!179 (h!70742 (Cons!64294 lt!2326421 Nil!64294))) (zipperDepth!284 (t!377859 (Cons!64294 lt!2326421 Nil!64294)))))))

(declare-fun lt!2326535 () Unit!157349)

(assert (=> b!6073970 (= lt!2326535 (lemmaForallContextDepthBiggerThanTransitive!163 (t!377859 (Cons!64294 lt!2326421 Nil!64294)) lt!2326536 (zipperDepth!284 (t!377859 (Cons!64294 lt!2326421 Nil!64294))) lambda!331046))))

(assert (=> b!6073970 (forall!15152 (t!377859 (Cons!64294 lt!2326421 Nil!64294)) lambda!331047)))

(declare-fun lt!2326533 () Unit!157349)

(assert (=> b!6073970 (= lt!2326533 lt!2326535)))

(declare-fun b!6073971 () Bool)

(assert (=> b!6073971 (= e!3706867 0)))

(assert (=> b!6073972 (= e!3706868 (forall!15152 (Cons!64294 lt!2326421 Nil!64294) lambda!331048))))

(assert (= (and d!1904257 c!1090033) b!6073970))

(assert (= (and d!1904257 (not c!1090033)) b!6073971))

(assert (= (and d!1904257 res!2523910) b!6073972))

(declare-fun m!6934188 () Bool)

(assert (=> b!6073970 m!6934188))

(declare-fun m!6934190 () Bool)

(assert (=> b!6073970 m!6934190))

(declare-fun m!6934192 () Bool)

(assert (=> b!6073970 m!6934192))

(assert (=> b!6073970 m!6934192))

(declare-fun m!6934194 () Bool)

(assert (=> b!6073970 m!6934194))

(assert (=> b!6073970 m!6934190))

(assert (=> b!6073970 m!6934192))

(declare-fun m!6934202 () Bool)

(assert (=> b!6073970 m!6934202))

(declare-fun m!6934206 () Bool)

(assert (=> b!6073972 m!6934206))

(assert (=> b!6073444 d!1904257))

(declare-fun bs!1503935 () Bool)

(declare-fun d!1904269 () Bool)

(assert (= bs!1503935 (and d!1904269 d!1904191)))

(declare-fun lambda!331049 () Int)

(assert (=> bs!1503935 (= lambda!331049 lambda!331004)))

(declare-fun bs!1503936 () Bool)

(assert (= bs!1503936 (and d!1904269 d!1904201)))

(assert (=> bs!1503936 (= lambda!331049 lambda!331013)))

(declare-fun bs!1503937 () Bool)

(assert (= bs!1503937 (and d!1904269 d!1904207)))

(assert (=> bs!1503937 (= lambda!331049 lambda!331016)))

(assert (=> d!1904269 (= (inv!83344 setElem!41058) (forall!15151 (exprs!5923 setElem!41058) lambda!331049))))

(declare-fun bs!1503938 () Bool)

(assert (= bs!1503938 d!1904269))

(declare-fun m!6934212 () Bool)

(assert (=> bs!1503938 m!6934212))

(assert (=> setNonEmpty!41058 d!1904269))

(declare-fun b!6074072 () Bool)

(declare-fun res!2523928 () Bool)

(declare-fun e!3706917 () Bool)

(assert (=> b!6074072 (=> (not res!2523928) (not e!3706917))))

(declare-fun lt!2326544 () Option!15930)

(declare-fun get!22163 (Option!15930) tuple2!66036)

(assert (=> b!6074072 (= res!2523928 (matchR!8222 (regOne!32590 r!7292) (_1!36321 (get!22163 lt!2326544))))))

(declare-fun b!6074073 () Bool)

(declare-fun res!2523924 () Bool)

(assert (=> b!6074073 (=> (not res!2523924) (not e!3706917))))

(assert (=> b!6074073 (= res!2523924 (matchR!8222 (regTwo!32590 r!7292) (_2!36321 (get!22163 lt!2326544))))))

(declare-fun b!6074074 () Bool)

(declare-fun e!3706921 () Option!15930)

(declare-fun e!3706919 () Option!15930)

(assert (=> b!6074074 (= e!3706921 e!3706919)))

(declare-fun c!1090051 () Bool)

(assert (=> b!6074074 (= c!1090051 ((_ is Nil!64293) s!2326))))

(declare-fun d!1904271 () Bool)

(declare-fun e!3706918 () Bool)

(assert (=> d!1904271 e!3706918))

(declare-fun res!2523926 () Bool)

(assert (=> d!1904271 (=> res!2523926 e!3706918)))

(assert (=> d!1904271 (= res!2523926 e!3706917)))

(declare-fun res!2523925 () Bool)

(assert (=> d!1904271 (=> (not res!2523925) (not e!3706917))))

(assert (=> d!1904271 (= res!2523925 (isDefined!12633 lt!2326544))))

(assert (=> d!1904271 (= lt!2326544 e!3706921)))

(declare-fun c!1090050 () Bool)

(declare-fun e!3706920 () Bool)

(assert (=> d!1904271 (= c!1090050 e!3706920)))

(declare-fun res!2523927 () Bool)

(assert (=> d!1904271 (=> (not res!2523927) (not e!3706920))))

(assert (=> d!1904271 (= res!2523927 (matchR!8222 (regOne!32590 r!7292) Nil!64293))))

(assert (=> d!1904271 (validRegex!7775 (regOne!32590 r!7292))))

(assert (=> d!1904271 (= (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) Nil!64293 s!2326 s!2326) lt!2326544)))

(declare-fun b!6074075 () Bool)

(assert (=> b!6074075 (= e!3706921 (Some!15929 (tuple2!66037 Nil!64293 s!2326)))))

(declare-fun b!6074076 () Bool)

(declare-fun ++!14128 (List!64417 List!64417) List!64417)

(assert (=> b!6074076 (= e!3706917 (= (++!14128 (_1!36321 (get!22163 lt!2326544)) (_2!36321 (get!22163 lt!2326544))) s!2326))))

(declare-fun b!6074077 () Bool)

(assert (=> b!6074077 (= e!3706919 None!15929)))

(declare-fun b!6074078 () Bool)

(declare-fun lt!2326545 () Unit!157349)

(declare-fun lt!2326546 () Unit!157349)

(assert (=> b!6074078 (= lt!2326545 lt!2326546)))

(assert (=> b!6074078 (= (++!14128 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)) (t!377858 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2223 (List!64417 C!32348 List!64417 List!64417) Unit!157349)

(assert (=> b!6074078 (= lt!2326546 (lemmaMoveElementToOtherListKeepsConcatEq!2223 Nil!64293 (h!70741 s!2326) (t!377858 s!2326) s!2326))))

(assert (=> b!6074078 (= e!3706919 (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)) (t!377858 s!2326) s!2326))))

(declare-fun b!6074079 () Bool)

(assert (=> b!6074079 (= e!3706918 (not (isDefined!12633 lt!2326544)))))

(declare-fun b!6074080 () Bool)

(assert (=> b!6074080 (= e!3706920 (matchR!8222 (regTwo!32590 r!7292) s!2326))))

(assert (= (and d!1904271 res!2523927) b!6074080))

(assert (= (and d!1904271 c!1090050) b!6074075))

(assert (= (and d!1904271 (not c!1090050)) b!6074074))

(assert (= (and b!6074074 c!1090051) b!6074077))

(assert (= (and b!6074074 (not c!1090051)) b!6074078))

(assert (= (and d!1904271 res!2523925) b!6074072))

(assert (= (and b!6074072 res!2523928) b!6074073))

(assert (= (and b!6074073 res!2523924) b!6074076))

(assert (= (and d!1904271 (not res!2523926)) b!6074079))

(declare-fun m!6934218 () Bool)

(assert (=> b!6074073 m!6934218))

(declare-fun m!6934220 () Bool)

(assert (=> b!6074073 m!6934220))

(assert (=> b!6074076 m!6934218))

(declare-fun m!6934222 () Bool)

(assert (=> b!6074076 m!6934222))

(assert (=> b!6074072 m!6934218))

(declare-fun m!6934224 () Bool)

(assert (=> b!6074072 m!6934224))

(declare-fun m!6934226 () Bool)

(assert (=> b!6074078 m!6934226))

(assert (=> b!6074078 m!6934226))

(declare-fun m!6934228 () Bool)

(assert (=> b!6074078 m!6934228))

(declare-fun m!6934230 () Bool)

(assert (=> b!6074078 m!6934230))

(assert (=> b!6074078 m!6934226))

(declare-fun m!6934232 () Bool)

(assert (=> b!6074078 m!6934232))

(declare-fun m!6934234 () Bool)

(assert (=> b!6074080 m!6934234))

(declare-fun m!6934236 () Bool)

(assert (=> b!6074079 m!6934236))

(assert (=> d!1904271 m!6934236))

(declare-fun m!6934238 () Bool)

(assert (=> d!1904271 m!6934238))

(declare-fun m!6934240 () Bool)

(assert (=> d!1904271 m!6934240))

(assert (=> b!6073448 d!1904271))

(declare-fun d!1904279 () Bool)

(declare-fun choose!45249 (Int) Bool)

(assert (=> d!1904279 (= (Exists!3109 lambda!330982) (choose!45249 lambda!330982))))

(declare-fun bs!1503942 () Bool)

(assert (= bs!1503942 d!1904279))

(declare-fun m!6934242 () Bool)

(assert (=> bs!1503942 m!6934242))

(assert (=> b!6073448 d!1904279))

(declare-fun d!1904281 () Bool)

(assert (=> d!1904281 (= (Exists!3109 lambda!330981) (choose!45249 lambda!330981))))

(declare-fun bs!1503943 () Bool)

(assert (= bs!1503943 d!1904281))

(declare-fun m!6934244 () Bool)

(assert (=> bs!1503943 m!6934244))

(assert (=> b!6073448 d!1904281))

(declare-fun bs!1503944 () Bool)

(declare-fun d!1904283 () Bool)

(assert (= bs!1503944 (and d!1904283 b!6073448)))

(declare-fun lambda!331052 () Int)

(assert (=> bs!1503944 (= lambda!331052 lambda!330981)))

(assert (=> bs!1503944 (not (= lambda!331052 lambda!330982))))

(assert (=> d!1904283 true))

(assert (=> d!1904283 true))

(assert (=> d!1904283 true))

(assert (=> d!1904283 (= (isDefined!12633 (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) Nil!64293 s!2326 s!2326)) (Exists!3109 lambda!331052))))

(declare-fun lt!2326549 () Unit!157349)

(declare-fun choose!45250 (Regex!16039 Regex!16039 List!64417) Unit!157349)

(assert (=> d!1904283 (= lt!2326549 (choose!45250 (regOne!32590 r!7292) (regTwo!32590 r!7292) s!2326))))

(assert (=> d!1904283 (validRegex!7775 (regOne!32590 r!7292))))

(assert (=> d!1904283 (= (lemmaFindConcatSeparationEquivalentToExists!2108 (regOne!32590 r!7292) (regTwo!32590 r!7292) s!2326) lt!2326549)))

(declare-fun bs!1503945 () Bool)

(assert (= bs!1503945 d!1904283))

(declare-fun m!6934246 () Bool)

(assert (=> bs!1503945 m!6934246))

(assert (=> bs!1503945 m!6934240))

(assert (=> bs!1503945 m!6933756))

(assert (=> bs!1503945 m!6933758))

(declare-fun m!6934248 () Bool)

(assert (=> bs!1503945 m!6934248))

(assert (=> bs!1503945 m!6933756))

(assert (=> b!6073448 d!1904283))

(declare-fun bs!1503946 () Bool)

(declare-fun d!1904285 () Bool)

(assert (= bs!1503946 (and d!1904285 b!6073448)))

(declare-fun lambda!331057 () Int)

(assert (=> bs!1503946 (= lambda!331057 lambda!330981)))

(assert (=> bs!1503946 (not (= lambda!331057 lambda!330982))))

(declare-fun bs!1503947 () Bool)

(assert (= bs!1503947 (and d!1904285 d!1904283)))

(assert (=> bs!1503947 (= lambda!331057 lambda!331052)))

(assert (=> d!1904285 true))

(assert (=> d!1904285 true))

(assert (=> d!1904285 true))

(declare-fun lambda!331058 () Int)

(assert (=> bs!1503946 (not (= lambda!331058 lambda!330981))))

(assert (=> bs!1503946 (= lambda!331058 lambda!330982)))

(assert (=> bs!1503947 (not (= lambda!331058 lambda!331052))))

(declare-fun bs!1503948 () Bool)

(assert (= bs!1503948 d!1904285))

(assert (=> bs!1503948 (not (= lambda!331058 lambda!331057))))

(assert (=> d!1904285 true))

(assert (=> d!1904285 true))

(assert (=> d!1904285 true))

(assert (=> d!1904285 (= (Exists!3109 lambda!331057) (Exists!3109 lambda!331058))))

(declare-fun lt!2326552 () Unit!157349)

(declare-fun choose!45251 (Regex!16039 Regex!16039 List!64417) Unit!157349)

(assert (=> d!1904285 (= lt!2326552 (choose!45251 (regOne!32590 r!7292) (regTwo!32590 r!7292) s!2326))))

(assert (=> d!1904285 (validRegex!7775 (regOne!32590 r!7292))))

(assert (=> d!1904285 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1646 (regOne!32590 r!7292) (regTwo!32590 r!7292) s!2326) lt!2326552)))

(declare-fun m!6934250 () Bool)

(assert (=> bs!1503948 m!6934250))

(declare-fun m!6934252 () Bool)

(assert (=> bs!1503948 m!6934252))

(declare-fun m!6934254 () Bool)

(assert (=> bs!1503948 m!6934254))

(assert (=> bs!1503948 m!6934240))

(assert (=> b!6073448 d!1904285))

(declare-fun d!1904287 () Bool)

(declare-fun isEmpty!36206 (Option!15930) Bool)

(assert (=> d!1904287 (= (isDefined!12633 (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) Nil!64293 s!2326 s!2326)) (not (isEmpty!36206 (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) Nil!64293 s!2326 s!2326))))))

(declare-fun bs!1503949 () Bool)

(assert (= bs!1503949 d!1904287))

(assert (=> bs!1503949 m!6933756))

(declare-fun m!6934256 () Bool)

(assert (=> bs!1503949 m!6934256))

(assert (=> b!6073448 d!1904287))

(declare-fun d!1904289 () Bool)

(declare-fun lt!2326555 () Regex!16039)

(assert (=> d!1904289 (validRegex!7775 lt!2326555)))

(assert (=> d!1904289 (= lt!2326555 (generalisedUnion!1883 (unfocusZipperList!1460 zl!343)))))

(assert (=> d!1904289 (= (unfocusZipper!1781 zl!343) lt!2326555)))

(declare-fun bs!1503950 () Bool)

(assert (= bs!1503950 d!1904289))

(declare-fun m!6934258 () Bool)

(assert (=> bs!1503950 m!6934258))

(assert (=> bs!1503950 m!6933826))

(assert (=> bs!1503950 m!6933826))

(assert (=> bs!1503950 m!6933828))

(assert (=> b!6073457 d!1904289))

(declare-fun b!6074093 () Bool)

(declare-fun e!3706928 () (InoxSet Context!10846))

(assert (=> b!6074093 (= e!3706928 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6074094 () Bool)

(declare-fun call!499803 () (InoxSet Context!10846))

(assert (=> b!6074094 (= e!3706928 call!499803)))

(declare-fun bm!499798 () Bool)

(declare-fun call!499805 () (InoxSet Context!10846))

(declare-fun call!499804 () (InoxSet Context!10846))

(assert (=> bm!499798 (= call!499805 call!499804)))

(declare-fun b!6074095 () Bool)

(declare-fun e!3706933 () (InoxSet Context!10846))

(declare-fun call!499807 () (InoxSet Context!10846))

(assert (=> b!6074095 (= e!3706933 ((_ map or) call!499807 call!499804))))

(declare-fun bm!499799 () Bool)

(declare-fun call!499806 () List!64416)

(declare-fun call!499802 () List!64416)

(assert (=> bm!499799 (= call!499806 call!499802)))

(declare-fun c!1090054 () Bool)

(declare-fun bm!499800 () Bool)

(assert (=> bm!499800 (= call!499807 (derivationStepZipperDown!1289 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292)) (ite c!1090054 lt!2326418 (Context!10847 call!499802)) (h!70741 s!2326)))))

(declare-fun b!6074096 () Bool)

(declare-fun c!1090052 () Bool)

(assert (=> b!6074096 (= c!1090052 ((_ is Star!16039) r!7292))))

(declare-fun e!3706930 () (InoxSet Context!10846))

(assert (=> b!6074096 (= e!3706930 e!3706928)))

(declare-fun b!6074097 () Bool)

(declare-fun e!3706929 () (InoxSet Context!10846))

(assert (=> b!6074097 (= e!3706929 e!3706930)))

(declare-fun c!1090053 () Bool)

(assert (=> b!6074097 (= c!1090053 ((_ is Concat!24884) r!7292))))

(declare-fun b!6074098 () Bool)

(declare-fun e!3706932 () Bool)

(assert (=> b!6074098 (= e!3706932 (nullable!6034 (regOne!32590 r!7292)))))

(declare-fun c!1090056 () Bool)

(declare-fun bm!499801 () Bool)

(assert (=> bm!499801 (= call!499802 ($colon$colon!1918 (exprs!5923 lt!2326418) (ite (or c!1090056 c!1090053) (regTwo!32590 r!7292) r!7292)))))

(declare-fun b!6074099 () Bool)

(declare-fun e!3706931 () (InoxSet Context!10846))

(assert (=> b!6074099 (= e!3706931 (store ((as const (Array Context!10846 Bool)) false) lt!2326418 true))))

(declare-fun b!6074100 () Bool)

(assert (=> b!6074100 (= c!1090056 e!3706932)))

(declare-fun res!2523941 () Bool)

(assert (=> b!6074100 (=> (not res!2523941) (not e!3706932))))

(assert (=> b!6074100 (= res!2523941 ((_ is Concat!24884) r!7292))))

(assert (=> b!6074100 (= e!3706933 e!3706929)))

(declare-fun bm!499797 () Bool)

(assert (=> bm!499797 (= call!499804 (derivationStepZipperDown!1289 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292)))) (ite (or c!1090054 c!1090056) lt!2326418 (Context!10847 call!499806)) (h!70741 s!2326)))))

(declare-fun d!1904291 () Bool)

(declare-fun c!1090055 () Bool)

(assert (=> d!1904291 (= c!1090055 (and ((_ is ElementMatch!16039) r!7292) (= (c!1089857 r!7292) (h!70741 s!2326))))))

(assert (=> d!1904291 (= (derivationStepZipperDown!1289 r!7292 lt!2326418 (h!70741 s!2326)) e!3706931)))

(declare-fun b!6074101 () Bool)

(assert (=> b!6074101 (= e!3706930 call!499803)))

(declare-fun bm!499802 () Bool)

(assert (=> bm!499802 (= call!499803 call!499805)))

(declare-fun b!6074102 () Bool)

(assert (=> b!6074102 (= e!3706931 e!3706933)))

(assert (=> b!6074102 (= c!1090054 ((_ is Union!16039) r!7292))))

(declare-fun b!6074103 () Bool)

(assert (=> b!6074103 (= e!3706929 ((_ map or) call!499807 call!499805))))

(assert (= (and d!1904291 c!1090055) b!6074099))

(assert (= (and d!1904291 (not c!1090055)) b!6074102))

(assert (= (and b!6074102 c!1090054) b!6074095))

(assert (= (and b!6074102 (not c!1090054)) b!6074100))

(assert (= (and b!6074100 res!2523941) b!6074098))

(assert (= (and b!6074100 c!1090056) b!6074103))

(assert (= (and b!6074100 (not c!1090056)) b!6074097))

(assert (= (and b!6074097 c!1090053) b!6074101))

(assert (= (and b!6074097 (not c!1090053)) b!6074096))

(assert (= (and b!6074096 c!1090052) b!6074094))

(assert (= (and b!6074096 (not c!1090052)) b!6074093))

(assert (= (or b!6074101 b!6074094) bm!499799))

(assert (= (or b!6074101 b!6074094) bm!499802))

(assert (= (or b!6074103 bm!499799) bm!499801))

(assert (= (or b!6074103 bm!499802) bm!499798))

(assert (= (or b!6074095 bm!499798) bm!499797))

(assert (= (or b!6074095 b!6074103) bm!499800))

(assert (=> b!6074098 m!6933790))

(declare-fun m!6934260 () Bool)

(assert (=> bm!499797 m!6934260))

(declare-fun m!6934262 () Bool)

(assert (=> bm!499801 m!6934262))

(assert (=> b!6074099 m!6933944))

(declare-fun m!6934264 () Bool)

(assert (=> bm!499800 m!6934264))

(assert (=> b!6073451 d!1904291))

(declare-fun b!6074104 () Bool)

(declare-fun e!3706935 () (InoxSet Context!10846))

(assert (=> b!6074104 (= e!3706935 ((as const (Array Context!10846 Bool)) false))))

(declare-fun bm!499803 () Bool)

(declare-fun call!499808 () (InoxSet Context!10846))

(assert (=> bm!499803 (= call!499808 (derivationStepZipperDown!1289 (h!70740 (exprs!5923 lt!2326421)) (Context!10847 (t!377857 (exprs!5923 lt!2326421))) (h!70741 s!2326)))))

(declare-fun b!6074105 () Bool)

(declare-fun e!3706934 () Bool)

(assert (=> b!6074105 (= e!3706934 (nullable!6034 (h!70740 (exprs!5923 lt!2326421))))))

(declare-fun b!6074106 () Bool)

(declare-fun e!3706936 () (InoxSet Context!10846))

(assert (=> b!6074106 (= e!3706936 e!3706935)))

(declare-fun c!1090058 () Bool)

(assert (=> b!6074106 (= c!1090058 ((_ is Cons!64292) (exprs!5923 lt!2326421)))))

(declare-fun d!1904293 () Bool)

(declare-fun c!1090057 () Bool)

(assert (=> d!1904293 (= c!1090057 e!3706934)))

(declare-fun res!2523942 () Bool)

(assert (=> d!1904293 (=> (not res!2523942) (not e!3706934))))

(assert (=> d!1904293 (= res!2523942 ((_ is Cons!64292) (exprs!5923 lt!2326421)))))

(assert (=> d!1904293 (= (derivationStepZipperUp!1215 lt!2326421 (h!70741 s!2326)) e!3706936)))

(declare-fun b!6074107 () Bool)

(assert (=> b!6074107 (= e!3706935 call!499808)))

(declare-fun b!6074108 () Bool)

(assert (=> b!6074108 (= e!3706936 ((_ map or) call!499808 (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 lt!2326421))) (h!70741 s!2326))))))

(assert (= (and d!1904293 res!2523942) b!6074105))

(assert (= (and d!1904293 c!1090057) b!6074108))

(assert (= (and d!1904293 (not c!1090057)) b!6074106))

(assert (= (and b!6074106 c!1090058) b!6074107))

(assert (= (and b!6074106 (not c!1090058)) b!6074104))

(assert (= (or b!6074108 b!6074107) bm!499803))

(declare-fun m!6934266 () Bool)

(assert (=> bm!499803 m!6934266))

(declare-fun m!6934268 () Bool)

(assert (=> b!6074105 m!6934268))

(declare-fun m!6934270 () Bool)

(assert (=> b!6074108 m!6934270))

(assert (=> b!6073451 d!1904293))

(declare-fun bs!1503951 () Bool)

(declare-fun d!1904295 () Bool)

(assert (= bs!1503951 (and d!1904295 b!6073437)))

(declare-fun lambda!331061 () Int)

(assert (=> bs!1503951 (= lambda!331061 lambda!330983)))

(assert (=> d!1904295 true))

(assert (=> d!1904295 (= (derivationStepZipper!2020 z!1189 (h!70741 s!2326)) (flatMap!1552 z!1189 lambda!331061))))

(declare-fun bs!1503952 () Bool)

(assert (= bs!1503952 d!1904295))

(declare-fun m!6934272 () Bool)

(assert (=> bs!1503952 m!6934272))

(assert (=> b!6073451 d!1904295))

(declare-fun bs!1503953 () Bool)

(declare-fun b!6074145 () Bool)

(assert (= bs!1503953 (and b!6074145 b!6073448)))

(declare-fun lambda!331066 () Int)

(assert (=> bs!1503953 (not (= lambda!331066 lambda!330982))))

(declare-fun bs!1503954 () Bool)

(assert (= bs!1503954 (and b!6074145 d!1904285)))

(assert (=> bs!1503954 (not (= lambda!331066 lambda!331057))))

(declare-fun bs!1503955 () Bool)

(assert (= bs!1503955 (and b!6074145 d!1904283)))

(assert (=> bs!1503955 (not (= lambda!331066 lambda!331052))))

(assert (=> bs!1503954 (not (= lambda!331066 lambda!331058))))

(assert (=> bs!1503953 (not (= lambda!331066 lambda!330981))))

(assert (=> b!6074145 true))

(assert (=> b!6074145 true))

(declare-fun bs!1503956 () Bool)

(declare-fun b!6074148 () Bool)

(assert (= bs!1503956 (and b!6074148 b!6073448)))

(declare-fun lambda!331067 () Int)

(assert (=> bs!1503956 (= lambda!331067 lambda!330982)))

(declare-fun bs!1503957 () Bool)

(assert (= bs!1503957 (and b!6074148 d!1904285)))

(assert (=> bs!1503957 (not (= lambda!331067 lambda!331057))))

(declare-fun bs!1503958 () Bool)

(assert (= bs!1503958 (and b!6074148 d!1904283)))

(assert (=> bs!1503958 (not (= lambda!331067 lambda!331052))))

(assert (=> bs!1503957 (= lambda!331067 lambda!331058)))

(assert (=> bs!1503956 (not (= lambda!331067 lambda!330981))))

(declare-fun bs!1503959 () Bool)

(assert (= bs!1503959 (and b!6074148 b!6074145)))

(assert (=> bs!1503959 (not (= lambda!331067 lambda!331066))))

(assert (=> b!6074148 true))

(assert (=> b!6074148 true))

(declare-fun c!1090070 () Bool)

(declare-fun bm!499808 () Bool)

(declare-fun call!499814 () Bool)

(assert (=> bm!499808 (= call!499814 (Exists!3109 (ite c!1090070 lambda!331066 lambda!331067)))))

(declare-fun b!6074143 () Bool)

(declare-fun c!1090071 () Bool)

(assert (=> b!6074143 (= c!1090071 ((_ is ElementMatch!16039) r!7292))))

(declare-fun e!3706958 () Bool)

(declare-fun e!3706960 () Bool)

(assert (=> b!6074143 (= e!3706958 e!3706960)))

(declare-fun b!6074144 () Bool)

(declare-fun e!3706956 () Bool)

(assert (=> b!6074144 (= e!3706956 e!3706958)))

(declare-fun res!2523961 () Bool)

(assert (=> b!6074144 (= res!2523961 (not ((_ is EmptyLang!16039) r!7292)))))

(assert (=> b!6074144 (=> (not res!2523961) (not e!3706958))))

(declare-fun e!3706961 () Bool)

(assert (=> b!6074145 (= e!3706961 call!499814)))

(declare-fun b!6074146 () Bool)

(declare-fun e!3706955 () Bool)

(assert (=> b!6074146 (= e!3706955 (matchRSpec!3140 (regTwo!32591 r!7292) s!2326))))

(declare-fun b!6074147 () Bool)

(declare-fun res!2523960 () Bool)

(assert (=> b!6074147 (=> res!2523960 e!3706961)))

(declare-fun call!499813 () Bool)

(assert (=> b!6074147 (= res!2523960 call!499813)))

(declare-fun e!3706959 () Bool)

(assert (=> b!6074147 (= e!3706959 e!3706961)))

(assert (=> b!6074148 (= e!3706959 call!499814)))

(declare-fun d!1904297 () Bool)

(declare-fun c!1090069 () Bool)

(assert (=> d!1904297 (= c!1090069 ((_ is EmptyExpr!16039) r!7292))))

(assert (=> d!1904297 (= (matchRSpec!3140 r!7292 s!2326) e!3706956)))

(declare-fun b!6074149 () Bool)

(declare-fun e!3706957 () Bool)

(assert (=> b!6074149 (= e!3706957 e!3706955)))

(declare-fun res!2523959 () Bool)

(assert (=> b!6074149 (= res!2523959 (matchRSpec!3140 (regOne!32591 r!7292) s!2326))))

(assert (=> b!6074149 (=> res!2523959 e!3706955)))

(declare-fun b!6074150 () Bool)

(declare-fun c!1090072 () Bool)

(assert (=> b!6074150 (= c!1090072 ((_ is Union!16039) r!7292))))

(assert (=> b!6074150 (= e!3706960 e!3706957)))

(declare-fun b!6074151 () Bool)

(assert (=> b!6074151 (= e!3706956 call!499813)))

(declare-fun bm!499809 () Bool)

(assert (=> bm!499809 (= call!499813 (isEmpty!36205 s!2326))))

(declare-fun b!6074152 () Bool)

(assert (=> b!6074152 (= e!3706960 (= s!2326 (Cons!64293 (c!1089857 r!7292) Nil!64293)))))

(declare-fun b!6074153 () Bool)

(assert (=> b!6074153 (= e!3706957 e!3706959)))

(assert (=> b!6074153 (= c!1090070 ((_ is Star!16039) r!7292))))

(assert (= (and d!1904297 c!1090069) b!6074151))

(assert (= (and d!1904297 (not c!1090069)) b!6074144))

(assert (= (and b!6074144 res!2523961) b!6074143))

(assert (= (and b!6074143 c!1090071) b!6074152))

(assert (= (and b!6074143 (not c!1090071)) b!6074150))

(assert (= (and b!6074150 c!1090072) b!6074149))

(assert (= (and b!6074150 (not c!1090072)) b!6074153))

(assert (= (and b!6074149 (not res!2523959)) b!6074146))

(assert (= (and b!6074153 c!1090070) b!6074147))

(assert (= (and b!6074153 (not c!1090070)) b!6074148))

(assert (= (and b!6074147 (not res!2523960)) b!6074145))

(assert (= (or b!6074145 b!6074148) bm!499808))

(assert (= (or b!6074151 b!6074147) bm!499809))

(declare-fun m!6934274 () Bool)

(assert (=> bm!499808 m!6934274))

(declare-fun m!6934276 () Bool)

(assert (=> b!6074146 m!6934276))

(declare-fun m!6934278 () Bool)

(assert (=> b!6074149 m!6934278))

(assert (=> bm!499809 m!6934072))

(assert (=> b!6073449 d!1904297))

(declare-fun b!6074154 () Bool)

(declare-fun res!2523962 () Bool)

(declare-fun e!3706964 () Bool)

(assert (=> b!6074154 (=> (not res!2523962) (not e!3706964))))

(assert (=> b!6074154 (= res!2523962 (isEmpty!36205 (tail!11689 s!2326)))))

(declare-fun b!6074155 () Bool)

(declare-fun res!2523969 () Bool)

(declare-fun e!3706967 () Bool)

(assert (=> b!6074155 (=> res!2523969 e!3706967)))

(assert (=> b!6074155 (= res!2523969 (not ((_ is ElementMatch!16039) r!7292)))))

(declare-fun e!3706963 () Bool)

(assert (=> b!6074155 (= e!3706963 e!3706967)))

(declare-fun b!6074156 () Bool)

(declare-fun e!3706962 () Bool)

(assert (=> b!6074156 (= e!3706967 e!3706962)))

(declare-fun res!2523966 () Bool)

(assert (=> b!6074156 (=> (not res!2523966) (not e!3706962))))

(declare-fun lt!2326556 () Bool)

(assert (=> b!6074156 (= res!2523966 (not lt!2326556))))

(declare-fun b!6074157 () Bool)

(declare-fun res!2523963 () Bool)

(assert (=> b!6074157 (=> (not res!2523963) (not e!3706964))))

(declare-fun call!499815 () Bool)

(assert (=> b!6074157 (= res!2523963 (not call!499815))))

(declare-fun b!6074158 () Bool)

(assert (=> b!6074158 (= e!3706964 (= (head!12604 s!2326) (c!1089857 r!7292)))))

(declare-fun d!1904299 () Bool)

(declare-fun e!3706968 () Bool)

(assert (=> d!1904299 e!3706968))

(declare-fun c!1090074 () Bool)

(assert (=> d!1904299 (= c!1090074 ((_ is EmptyExpr!16039) r!7292))))

(declare-fun e!3706965 () Bool)

(assert (=> d!1904299 (= lt!2326556 e!3706965)))

(declare-fun c!1090073 () Bool)

(assert (=> d!1904299 (= c!1090073 (isEmpty!36205 s!2326))))

(assert (=> d!1904299 (validRegex!7775 r!7292)))

(assert (=> d!1904299 (= (matchR!8222 r!7292 s!2326) lt!2326556)))

(declare-fun b!6074159 () Bool)

(assert (=> b!6074159 (= e!3706965 (nullable!6034 r!7292))))

(declare-fun b!6074160 () Bool)

(declare-fun res!2523965 () Bool)

(assert (=> b!6074160 (=> res!2523965 e!3706967)))

(assert (=> b!6074160 (= res!2523965 e!3706964)))

(declare-fun res!2523964 () Bool)

(assert (=> b!6074160 (=> (not res!2523964) (not e!3706964))))

(assert (=> b!6074160 (= res!2523964 lt!2326556)))

(declare-fun b!6074161 () Bool)

(assert (=> b!6074161 (= e!3706965 (matchR!8222 (derivativeStep!4762 r!7292 (head!12604 s!2326)) (tail!11689 s!2326)))))

(declare-fun b!6074162 () Bool)

(assert (=> b!6074162 (= e!3706968 (= lt!2326556 call!499815))))

(declare-fun b!6074163 () Bool)

(assert (=> b!6074163 (= e!3706968 e!3706963)))

(declare-fun c!1090075 () Bool)

(assert (=> b!6074163 (= c!1090075 ((_ is EmptyLang!16039) r!7292))))

(declare-fun bm!499810 () Bool)

(assert (=> bm!499810 (= call!499815 (isEmpty!36205 s!2326))))

(declare-fun b!6074164 () Bool)

(declare-fun res!2523968 () Bool)

(declare-fun e!3706966 () Bool)

(assert (=> b!6074164 (=> res!2523968 e!3706966)))

(assert (=> b!6074164 (= res!2523968 (not (isEmpty!36205 (tail!11689 s!2326))))))

(declare-fun b!6074165 () Bool)

(assert (=> b!6074165 (= e!3706966 (not (= (head!12604 s!2326) (c!1089857 r!7292))))))

(declare-fun b!6074166 () Bool)

(assert (=> b!6074166 (= e!3706963 (not lt!2326556))))

(declare-fun b!6074167 () Bool)

(assert (=> b!6074167 (= e!3706962 e!3706966)))

(declare-fun res!2523967 () Bool)

(assert (=> b!6074167 (=> res!2523967 e!3706966)))

(assert (=> b!6074167 (= res!2523967 call!499815)))

(assert (= (and d!1904299 c!1090073) b!6074159))

(assert (= (and d!1904299 (not c!1090073)) b!6074161))

(assert (= (and d!1904299 c!1090074) b!6074162))

(assert (= (and d!1904299 (not c!1090074)) b!6074163))

(assert (= (and b!6074163 c!1090075) b!6074166))

(assert (= (and b!6074163 (not c!1090075)) b!6074155))

(assert (= (and b!6074155 (not res!2523969)) b!6074160))

(assert (= (and b!6074160 res!2523964) b!6074157))

(assert (= (and b!6074157 res!2523963) b!6074154))

(assert (= (and b!6074154 res!2523962) b!6074158))

(assert (= (and b!6074160 (not res!2523965)) b!6074156))

(assert (= (and b!6074156 res!2523966) b!6074167))

(assert (= (and b!6074167 (not res!2523967)) b!6074164))

(assert (= (and b!6074164 (not res!2523968)) b!6074165))

(assert (= (or b!6074162 b!6074157 b!6074167) bm!499810))

(assert (=> b!6074165 m!6934060))

(assert (=> b!6074158 m!6934060))

(assert (=> b!6074154 m!6934062))

(assert (=> b!6074154 m!6934062))

(assert (=> b!6074154 m!6934064))

(declare-fun m!6934280 () Bool)

(assert (=> b!6074159 m!6934280))

(assert (=> b!6074164 m!6934062))

(assert (=> b!6074164 m!6934062))

(assert (=> b!6074164 m!6934064))

(assert (=> b!6074161 m!6934060))

(assert (=> b!6074161 m!6934060))

(declare-fun m!6934282 () Bool)

(assert (=> b!6074161 m!6934282))

(assert (=> b!6074161 m!6934062))

(assert (=> b!6074161 m!6934282))

(assert (=> b!6074161 m!6934062))

(declare-fun m!6934284 () Bool)

(assert (=> b!6074161 m!6934284))

(assert (=> bm!499810 m!6934072))

(assert (=> d!1904299 m!6934072))

(assert (=> d!1904299 m!6933836))

(assert (=> b!6073449 d!1904299))

(declare-fun d!1904301 () Bool)

(assert (=> d!1904301 (= (matchR!8222 r!7292 s!2326) (matchRSpec!3140 r!7292 s!2326))))

(declare-fun lt!2326559 () Unit!157349)

(declare-fun choose!45252 (Regex!16039 List!64417) Unit!157349)

(assert (=> d!1904301 (= lt!2326559 (choose!45252 r!7292 s!2326))))

(assert (=> d!1904301 (validRegex!7775 r!7292)))

(assert (=> d!1904301 (= (mainMatchTheorem!3140 r!7292 s!2326) lt!2326559)))

(declare-fun bs!1503960 () Bool)

(assert (= bs!1503960 d!1904301))

(assert (=> bs!1503960 m!6933832))

(assert (=> bs!1503960 m!6933830))

(declare-fun m!6934286 () Bool)

(assert (=> bs!1503960 m!6934286))

(assert (=> bs!1503960 m!6933836))

(assert (=> b!6073449 d!1904301))

(declare-fun d!1904303 () Bool)

(declare-fun e!3706971 () Bool)

(assert (=> d!1904303 e!3706971))

(declare-fun res!2523972 () Bool)

(assert (=> d!1904303 (=> (not res!2523972) (not e!3706971))))

(declare-fun lt!2326562 () List!64418)

(declare-fun noDuplicate!1888 (List!64418) Bool)

(assert (=> d!1904303 (= res!2523972 (noDuplicate!1888 lt!2326562))))

(declare-fun choose!45253 ((InoxSet Context!10846)) List!64418)

(assert (=> d!1904303 (= lt!2326562 (choose!45253 z!1189))))

(assert (=> d!1904303 (= (toList!9823 z!1189) lt!2326562)))

(declare-fun b!6074170 () Bool)

(declare-fun content!11909 (List!64418) (InoxSet Context!10846))

(assert (=> b!6074170 (= e!3706971 (= (content!11909 lt!2326562) z!1189))))

(assert (= (and d!1904303 res!2523972) b!6074170))

(declare-fun m!6934288 () Bool)

(assert (=> d!1904303 m!6934288))

(declare-fun m!6934290 () Bool)

(assert (=> d!1904303 m!6934290))

(declare-fun m!6934292 () Bool)

(assert (=> b!6074170 m!6934292))

(assert (=> b!6073439 d!1904303))

(declare-fun bs!1503961 () Bool)

(declare-fun d!1904305 () Bool)

(assert (= bs!1503961 (and d!1904305 d!1904191)))

(declare-fun lambda!331070 () Int)

(assert (=> bs!1503961 (= lambda!331070 lambda!331004)))

(declare-fun bs!1503962 () Bool)

(assert (= bs!1503962 (and d!1904305 d!1904201)))

(assert (=> bs!1503962 (= lambda!331070 lambda!331013)))

(declare-fun bs!1503963 () Bool)

(assert (= bs!1503963 (and d!1904305 d!1904207)))

(assert (=> bs!1503963 (= lambda!331070 lambda!331016)))

(declare-fun bs!1503964 () Bool)

(assert (= bs!1503964 (and d!1904305 d!1904269)))

(assert (=> bs!1503964 (= lambda!331070 lambda!331049)))

(declare-fun b!6074191 () Bool)

(declare-fun e!3706985 () Bool)

(declare-fun lt!2326565 () Regex!16039)

(assert (=> b!6074191 (= e!3706985 (= lt!2326565 (head!12603 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun b!6074192 () Bool)

(declare-fun e!3706988 () Regex!16039)

(assert (=> b!6074192 (= e!3706988 EmptyExpr!16039)))

(declare-fun b!6074193 () Bool)

(declare-fun e!3706986 () Regex!16039)

(assert (=> b!6074193 (= e!3706986 (h!70740 (exprs!5923 (h!70742 zl!343))))))

(declare-fun b!6074194 () Bool)

(assert (=> b!6074194 (= e!3706986 e!3706988)))

(declare-fun c!1090084 () Bool)

(assert (=> b!6074194 (= c!1090084 ((_ is Cons!64292) (exprs!5923 (h!70742 zl!343))))))

(declare-fun e!3706989 () Bool)

(assert (=> d!1904305 e!3706989))

(declare-fun res!2523978 () Bool)

(assert (=> d!1904305 (=> (not res!2523978) (not e!3706989))))

(assert (=> d!1904305 (= res!2523978 (validRegex!7775 lt!2326565))))

(assert (=> d!1904305 (= lt!2326565 e!3706986)))

(declare-fun c!1090086 () Bool)

(declare-fun e!3706984 () Bool)

(assert (=> d!1904305 (= c!1090086 e!3706984)))

(declare-fun res!2523977 () Bool)

(assert (=> d!1904305 (=> (not res!2523977) (not e!3706984))))

(assert (=> d!1904305 (= res!2523977 ((_ is Cons!64292) (exprs!5923 (h!70742 zl!343))))))

(assert (=> d!1904305 (forall!15151 (exprs!5923 (h!70742 zl!343)) lambda!331070)))

(assert (=> d!1904305 (= (generalisedConcat!1636 (exprs!5923 (h!70742 zl!343))) lt!2326565)))

(declare-fun b!6074195 () Bool)

(declare-fun isConcat!981 (Regex!16039) Bool)

(assert (=> b!6074195 (= e!3706985 (isConcat!981 lt!2326565))))

(declare-fun b!6074196 () Bool)

(declare-fun e!3706987 () Bool)

(assert (=> b!6074196 (= e!3706989 e!3706987)))

(declare-fun c!1090085 () Bool)

(assert (=> b!6074196 (= c!1090085 (isEmpty!36202 (exprs!5923 (h!70742 zl!343))))))

(declare-fun b!6074197 () Bool)

(assert (=> b!6074197 (= e!3706987 e!3706985)))

(declare-fun c!1090087 () Bool)

(assert (=> b!6074197 (= c!1090087 (isEmpty!36202 (tail!11688 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun b!6074198 () Bool)

(declare-fun isEmptyExpr!1458 (Regex!16039) Bool)

(assert (=> b!6074198 (= e!3706987 (isEmptyExpr!1458 lt!2326565))))

(declare-fun b!6074199 () Bool)

(assert (=> b!6074199 (= e!3706988 (Concat!24884 (h!70740 (exprs!5923 (h!70742 zl!343))) (generalisedConcat!1636 (t!377857 (exprs!5923 (h!70742 zl!343))))))))

(declare-fun b!6074200 () Bool)

(assert (=> b!6074200 (= e!3706984 (isEmpty!36202 (t!377857 (exprs!5923 (h!70742 zl!343)))))))

(assert (= (and d!1904305 res!2523977) b!6074200))

(assert (= (and d!1904305 c!1090086) b!6074193))

(assert (= (and d!1904305 (not c!1090086)) b!6074194))

(assert (= (and b!6074194 c!1090084) b!6074199))

(assert (= (and b!6074194 (not c!1090084)) b!6074192))

(assert (= (and d!1904305 res!2523978) b!6074196))

(assert (= (and b!6074196 c!1090085) b!6074198))

(assert (= (and b!6074196 (not c!1090085)) b!6074197))

(assert (= (and b!6074197 c!1090087) b!6074191))

(assert (= (and b!6074197 (not c!1090087)) b!6074195))

(declare-fun m!6934294 () Bool)

(assert (=> b!6074199 m!6934294))

(declare-fun m!6934296 () Bool)

(assert (=> b!6074191 m!6934296))

(declare-fun m!6934298 () Bool)

(assert (=> d!1904305 m!6934298))

(declare-fun m!6934300 () Bool)

(assert (=> d!1904305 m!6934300))

(declare-fun m!6934302 () Bool)

(assert (=> b!6074196 m!6934302))

(declare-fun m!6934304 () Bool)

(assert (=> b!6074195 m!6934304))

(declare-fun m!6934306 () Bool)

(assert (=> b!6074197 m!6934306))

(assert (=> b!6074197 m!6934306))

(declare-fun m!6934308 () Bool)

(assert (=> b!6074197 m!6934308))

(declare-fun m!6934310 () Bool)

(assert (=> b!6074198 m!6934310))

(assert (=> b!6074200 m!6933814))

(assert (=> b!6073453 d!1904305))

(declare-fun bs!1503965 () Bool)

(declare-fun d!1904307 () Bool)

(assert (= bs!1503965 (and d!1904307 d!1904305)))

(declare-fun lambda!331071 () Int)

(assert (=> bs!1503965 (= lambda!331071 lambda!331070)))

(declare-fun bs!1503966 () Bool)

(assert (= bs!1503966 (and d!1904307 d!1904201)))

(assert (=> bs!1503966 (= lambda!331071 lambda!331013)))

(declare-fun bs!1503967 () Bool)

(assert (= bs!1503967 (and d!1904307 d!1904269)))

(assert (=> bs!1503967 (= lambda!331071 lambda!331049)))

(declare-fun bs!1503968 () Bool)

(assert (= bs!1503968 (and d!1904307 d!1904207)))

(assert (=> bs!1503968 (= lambda!331071 lambda!331016)))

(declare-fun bs!1503969 () Bool)

(assert (= bs!1503969 (and d!1904307 d!1904191)))

(assert (=> bs!1503969 (= lambda!331071 lambda!331004)))

(assert (=> d!1904307 (= (inv!83344 (h!70742 zl!343)) (forall!15151 (exprs!5923 (h!70742 zl!343)) lambda!331071))))

(declare-fun bs!1503970 () Bool)

(assert (= bs!1503970 d!1904307))

(declare-fun m!6934312 () Bool)

(assert (=> bs!1503970 m!6934312))

(assert (=> b!6073443 d!1904307))

(declare-fun d!1904309 () Bool)

(assert (=> d!1904309 (= (isEmpty!36201 (t!377859 zl!343)) ((_ is Nil!64294) (t!377859 zl!343)))))

(assert (=> b!6073442 d!1904309))

(declare-fun b!6074205 () Bool)

(declare-fun e!3706992 () Bool)

(declare-fun tp!1693108 () Bool)

(assert (=> b!6074205 (= e!3706992 (and tp_is_empty!41331 tp!1693108))))

(assert (=> b!6073436 (= tp!1693042 e!3706992)))

(assert (= (and b!6073436 ((_ is Cons!64293) (t!377858 s!2326))) b!6074205))

(declare-fun b!6074210 () Bool)

(declare-fun e!3706995 () Bool)

(declare-fun tp!1693113 () Bool)

(declare-fun tp!1693114 () Bool)

(assert (=> b!6074210 (= e!3706995 (and tp!1693113 tp!1693114))))

(assert (=> b!6073441 (= tp!1693041 e!3706995)))

(assert (= (and b!6073441 ((_ is Cons!64292) (exprs!5923 (h!70742 zl!343)))) b!6074210))

(declare-fun b!6074211 () Bool)

(declare-fun e!3706996 () Bool)

(declare-fun tp!1693115 () Bool)

(declare-fun tp!1693116 () Bool)

(assert (=> b!6074211 (= e!3706996 (and tp!1693115 tp!1693116))))

(assert (=> b!6073455 (= tp!1693044 e!3706996)))

(assert (= (and b!6073455 ((_ is Cons!64292) (exprs!5923 setElem!41058))) b!6074211))

(declare-fun condSetEmpty!41064 () Bool)

(assert (=> setNonEmpty!41058 (= condSetEmpty!41064 (= setRest!41058 ((as const (Array Context!10846 Bool)) false)))))

(declare-fun setRes!41064 () Bool)

(assert (=> setNonEmpty!41058 (= tp!1693038 setRes!41064)))

(declare-fun setIsEmpty!41064 () Bool)

(assert (=> setIsEmpty!41064 setRes!41064))

(declare-fun setNonEmpty!41064 () Bool)

(declare-fun tp!1693122 () Bool)

(declare-fun setElem!41064 () Context!10846)

(declare-fun e!3706999 () Bool)

(assert (=> setNonEmpty!41064 (= setRes!41064 (and tp!1693122 (inv!83344 setElem!41064) e!3706999))))

(declare-fun setRest!41064 () (InoxSet Context!10846))

(assert (=> setNonEmpty!41064 (= setRest!41058 ((_ map or) (store ((as const (Array Context!10846 Bool)) false) setElem!41064 true) setRest!41064))))

(declare-fun b!6074216 () Bool)

(declare-fun tp!1693121 () Bool)

(assert (=> b!6074216 (= e!3706999 tp!1693121)))

(assert (= (and setNonEmpty!41058 condSetEmpty!41064) setIsEmpty!41064))

(assert (= (and setNonEmpty!41058 (not condSetEmpty!41064)) setNonEmpty!41064))

(assert (= setNonEmpty!41064 b!6074216))

(declare-fun m!6934314 () Bool)

(assert (=> setNonEmpty!41064 m!6934314))

(declare-fun b!6074224 () Bool)

(declare-fun e!3707005 () Bool)

(declare-fun tp!1693127 () Bool)

(assert (=> b!6074224 (= e!3707005 tp!1693127)))

(declare-fun e!3707004 () Bool)

(declare-fun b!6074223 () Bool)

(declare-fun tp!1693128 () Bool)

(assert (=> b!6074223 (= e!3707004 (and (inv!83344 (h!70742 (t!377859 zl!343))) e!3707005 tp!1693128))))

(assert (=> b!6073443 (= tp!1693045 e!3707004)))

(assert (= b!6074223 b!6074224))

(assert (= (and b!6073443 ((_ is Cons!64294) (t!377859 zl!343))) b!6074223))

(declare-fun m!6934316 () Bool)

(assert (=> b!6074223 m!6934316))

(declare-fun e!3707008 () Bool)

(assert (=> b!6073446 (= tp!1693047 e!3707008)))

(declare-fun b!6074237 () Bool)

(declare-fun tp!1693139 () Bool)

(assert (=> b!6074237 (= e!3707008 tp!1693139)))

(declare-fun b!6074238 () Bool)

(declare-fun tp!1693142 () Bool)

(declare-fun tp!1693143 () Bool)

(assert (=> b!6074238 (= e!3707008 (and tp!1693142 tp!1693143))))

(declare-fun b!6074235 () Bool)

(assert (=> b!6074235 (= e!3707008 tp_is_empty!41331)))

(declare-fun b!6074236 () Bool)

(declare-fun tp!1693140 () Bool)

(declare-fun tp!1693141 () Bool)

(assert (=> b!6074236 (= e!3707008 (and tp!1693140 tp!1693141))))

(assert (= (and b!6073446 ((_ is ElementMatch!16039) (regOne!32591 r!7292))) b!6074235))

(assert (= (and b!6073446 ((_ is Concat!24884) (regOne!32591 r!7292))) b!6074236))

(assert (= (and b!6073446 ((_ is Star!16039) (regOne!32591 r!7292))) b!6074237))

(assert (= (and b!6073446 ((_ is Union!16039) (regOne!32591 r!7292))) b!6074238))

(declare-fun e!3707009 () Bool)

(assert (=> b!6073446 (= tp!1693039 e!3707009)))

(declare-fun b!6074241 () Bool)

(declare-fun tp!1693144 () Bool)

(assert (=> b!6074241 (= e!3707009 tp!1693144)))

(declare-fun b!6074242 () Bool)

(declare-fun tp!1693147 () Bool)

(declare-fun tp!1693148 () Bool)

(assert (=> b!6074242 (= e!3707009 (and tp!1693147 tp!1693148))))

(declare-fun b!6074239 () Bool)

(assert (=> b!6074239 (= e!3707009 tp_is_empty!41331)))

(declare-fun b!6074240 () Bool)

(declare-fun tp!1693145 () Bool)

(declare-fun tp!1693146 () Bool)

(assert (=> b!6074240 (= e!3707009 (and tp!1693145 tp!1693146))))

(assert (= (and b!6073446 ((_ is ElementMatch!16039) (regTwo!32591 r!7292))) b!6074239))

(assert (= (and b!6073446 ((_ is Concat!24884) (regTwo!32591 r!7292))) b!6074240))

(assert (= (and b!6073446 ((_ is Star!16039) (regTwo!32591 r!7292))) b!6074241))

(assert (= (and b!6073446 ((_ is Union!16039) (regTwo!32591 r!7292))) b!6074242))

(declare-fun e!3707010 () Bool)

(assert (=> b!6073452 (= tp!1693046 e!3707010)))

(declare-fun b!6074245 () Bool)

(declare-fun tp!1693149 () Bool)

(assert (=> b!6074245 (= e!3707010 tp!1693149)))

(declare-fun b!6074246 () Bool)

(declare-fun tp!1693152 () Bool)

(declare-fun tp!1693153 () Bool)

(assert (=> b!6074246 (= e!3707010 (and tp!1693152 tp!1693153))))

(declare-fun b!6074243 () Bool)

(assert (=> b!6074243 (= e!3707010 tp_is_empty!41331)))

(declare-fun b!6074244 () Bool)

(declare-fun tp!1693150 () Bool)

(declare-fun tp!1693151 () Bool)

(assert (=> b!6074244 (= e!3707010 (and tp!1693150 tp!1693151))))

(assert (= (and b!6073452 ((_ is ElementMatch!16039) (regOne!32590 r!7292))) b!6074243))

(assert (= (and b!6073452 ((_ is Concat!24884) (regOne!32590 r!7292))) b!6074244))

(assert (= (and b!6073452 ((_ is Star!16039) (regOne!32590 r!7292))) b!6074245))

(assert (= (and b!6073452 ((_ is Union!16039) (regOne!32590 r!7292))) b!6074246))

(declare-fun e!3707011 () Bool)

(assert (=> b!6073452 (= tp!1693043 e!3707011)))

(declare-fun b!6074249 () Bool)

(declare-fun tp!1693154 () Bool)

(assert (=> b!6074249 (= e!3707011 tp!1693154)))

(declare-fun b!6074250 () Bool)

(declare-fun tp!1693157 () Bool)

(declare-fun tp!1693158 () Bool)

(assert (=> b!6074250 (= e!3707011 (and tp!1693157 tp!1693158))))

(declare-fun b!6074247 () Bool)

(assert (=> b!6074247 (= e!3707011 tp_is_empty!41331)))

(declare-fun b!6074248 () Bool)

(declare-fun tp!1693155 () Bool)

(declare-fun tp!1693156 () Bool)

(assert (=> b!6074248 (= e!3707011 (and tp!1693155 tp!1693156))))

(assert (= (and b!6073452 ((_ is ElementMatch!16039) (regTwo!32590 r!7292))) b!6074247))

(assert (= (and b!6073452 ((_ is Concat!24884) (regTwo!32590 r!7292))) b!6074248))

(assert (= (and b!6073452 ((_ is Star!16039) (regTwo!32590 r!7292))) b!6074249))

(assert (= (and b!6073452 ((_ is Union!16039) (regTwo!32590 r!7292))) b!6074250))

(declare-fun e!3707012 () Bool)

(assert (=> b!6073438 (= tp!1693040 e!3707012)))

(declare-fun b!6074253 () Bool)

(declare-fun tp!1693159 () Bool)

(assert (=> b!6074253 (= e!3707012 tp!1693159)))

(declare-fun b!6074254 () Bool)

(declare-fun tp!1693162 () Bool)

(declare-fun tp!1693163 () Bool)

(assert (=> b!6074254 (= e!3707012 (and tp!1693162 tp!1693163))))

(declare-fun b!6074251 () Bool)

(assert (=> b!6074251 (= e!3707012 tp_is_empty!41331)))

(declare-fun b!6074252 () Bool)

(declare-fun tp!1693160 () Bool)

(declare-fun tp!1693161 () Bool)

(assert (=> b!6074252 (= e!3707012 (and tp!1693160 tp!1693161))))

(assert (= (and b!6073438 ((_ is ElementMatch!16039) (reg!16368 r!7292))) b!6074251))

(assert (= (and b!6073438 ((_ is Concat!24884) (reg!16368 r!7292))) b!6074252))

(assert (= (and b!6073438 ((_ is Star!16039) (reg!16368 r!7292))) b!6074253))

(assert (= (and b!6073438 ((_ is Union!16039) (reg!16368 r!7292))) b!6074254))

(declare-fun b_lambda!231019 () Bool)

(assert (= b_lambda!231001 (or b!6073437 b_lambda!231019)))

(declare-fun bs!1503971 () Bool)

(declare-fun d!1904311 () Bool)

(assert (= bs!1503971 (and d!1904311 b!6073437)))

(assert (=> bs!1503971 (= (dynLambda!25275 lambda!330983 lt!2326429) (derivationStepZipperUp!1215 lt!2326429 (h!70741 s!2326)))))

(assert (=> bs!1503971 m!6933784))

(assert (=> d!1904163 d!1904311))

(declare-fun b_lambda!231021 () Bool)

(assert (= b_lambda!231005 (or b!6073437 b_lambda!231021)))

(declare-fun bs!1503972 () Bool)

(declare-fun d!1904313 () Bool)

(assert (= bs!1503972 (and d!1904313 b!6073437)))

(assert (=> bs!1503972 (= (dynLambda!25275 lambda!330983 (h!70742 zl!343)) (derivationStepZipperUp!1215 (h!70742 zl!343) (h!70741 s!2326)))))

(assert (=> bs!1503972 m!6933810))

(assert (=> d!1904189 d!1904313))

(declare-fun b_lambda!231023 () Bool)

(assert (= b_lambda!231003 (or b!6073437 b_lambda!231023)))

(declare-fun bs!1503973 () Bool)

(declare-fun d!1904315 () Bool)

(assert (= bs!1503973 (and d!1904315 b!6073437)))

(assert (=> bs!1503973 (= (dynLambda!25275 lambda!330983 lt!2326422) (derivationStepZipperUp!1215 lt!2326422 (h!70741 s!2326)))))

(assert (=> bs!1503973 m!6933782))

(assert (=> d!1904167 d!1904315))

(check-sat (not b!6073851) (not b!6074199) (not d!1904279) (not bm!499743) (not b!6073887) (not b!6073844) (not b!6074237) (not b!6074170) (not bm!499759) (not d!1904221) (not b!6074105) (not b!6073664) (not b!6074158) (not b!6074236) (not b!6074164) (not b!6074159) (not b!6074200) (not bm!499707) (not bm!499758) (not d!1904287) (not d!1904301) (not bm!499768) (not d!1904271) (not b!6073671) (not b!6073731) (not bm!499803) (not b!6074072) (not d!1904191) (not b!6073736) (not b!6074149) (not d!1904269) (not b!6074198) (not b!6074073) (not b!6073970) (not d!1904185) (not b!6074076) (not d!1904303) (not b!6074080) (not bm!499808) (not b!6073840) (not b!6073886) (not b!6074252) (not b!6074078) (not b!6073674) (not b!6073753) (not d!1904307) (not b!6074224) (not b!6074195) (not b!6074165) (not d!1904299) (not bs!1503971) (not b!6074154) (not b!6074240) (not b!6073845) (not b!6074241) (not b!6073739) (not b!6073735) (not b!6074248) (not bm!499800) (not b!6074223) (not b!6074242) (not bm!499751) (not b!6073732) (not b_lambda!231021) (not bm!499708) (not b!6074098) (not bm!499747) (not d!1904189) (not b!6073972) (not b!6074253) (not d!1904181) (not b!6074249) (not b!6074254) (not d!1904295) (not bm!499797) (not d!1904281) tp_is_empty!41331 (not d!1904283) (not bm!499809) (not d!1904177) (not bs!1503973) (not b!6073962) (not b_lambda!231019) (not b!6074196) (not bs!1503972) (not b!6074238) (not b!6074191) (not b!6074245) (not b!6074146) (not d!1904167) (not d!1904161) (not d!1904201) (not bm!499801) (not bm!499746) (not b!6073655) (not b_lambda!231023) (not b!6073572) (not b!6074246) (not bm!499756) (not d!1904209) (not bm!499755) (not b!6074161) (not d!1904163) (not setNonEmpty!41064) (not b!6073679) (not d!1904289) (not d!1904207) (not b!6074244) (not b!6073847) (not d!1904217) (not b!6074211) (not b!6073960) (not b!6074205) (not b!6073658) (not d!1904305) (not b!6073737) (not b!6074079) (not d!1904285) (not b!6073734) (not b!6074197) (not b!6073491) (not b!6074108) (not b!6074250) (not b!6074216) (not b!6073850) (not b!6074210) (not bm!499810) (not bm!499752) (not b!6073676))
(check-sat)
(get-model)

(declare-fun b!6074331 () Bool)

(declare-fun res!2524012 () Bool)

(declare-fun e!3707071 () Bool)

(assert (=> b!6074331 (=> (not res!2524012) (not e!3707071))))

(assert (=> b!6074331 (= res!2524012 (isEmpty!36205 (tail!11689 s!2326)))))

(declare-fun b!6074332 () Bool)

(declare-fun res!2524019 () Bool)

(declare-fun e!3707074 () Bool)

(assert (=> b!6074332 (=> res!2524019 e!3707074)))

(assert (=> b!6074332 (= res!2524019 (not ((_ is ElementMatch!16039) (regTwo!32590 r!7292))))))

(declare-fun e!3707070 () Bool)

(assert (=> b!6074332 (= e!3707070 e!3707074)))

(declare-fun b!6074333 () Bool)

(declare-fun e!3707069 () Bool)

(assert (=> b!6074333 (= e!3707074 e!3707069)))

(declare-fun res!2524016 () Bool)

(assert (=> b!6074333 (=> (not res!2524016) (not e!3707069))))

(declare-fun lt!2326567 () Bool)

(assert (=> b!6074333 (= res!2524016 (not lt!2326567))))

(declare-fun b!6074334 () Bool)

(declare-fun res!2524013 () Bool)

(assert (=> b!6074334 (=> (not res!2524013) (not e!3707071))))

(declare-fun call!499835 () Bool)

(assert (=> b!6074334 (= res!2524013 (not call!499835))))

(declare-fun b!6074335 () Bool)

(assert (=> b!6074335 (= e!3707071 (= (head!12604 s!2326) (c!1089857 (regTwo!32590 r!7292))))))

(declare-fun d!1904349 () Bool)

(declare-fun e!3707075 () Bool)

(assert (=> d!1904349 e!3707075))

(declare-fun c!1090109 () Bool)

(assert (=> d!1904349 (= c!1090109 ((_ is EmptyExpr!16039) (regTwo!32590 r!7292)))))

(declare-fun e!3707072 () Bool)

(assert (=> d!1904349 (= lt!2326567 e!3707072)))

(declare-fun c!1090108 () Bool)

(assert (=> d!1904349 (= c!1090108 (isEmpty!36205 s!2326))))

(assert (=> d!1904349 (validRegex!7775 (regTwo!32590 r!7292))))

(assert (=> d!1904349 (= (matchR!8222 (regTwo!32590 r!7292) s!2326) lt!2326567)))

(declare-fun b!6074336 () Bool)

(assert (=> b!6074336 (= e!3707072 (nullable!6034 (regTwo!32590 r!7292)))))

(declare-fun b!6074337 () Bool)

(declare-fun res!2524015 () Bool)

(assert (=> b!6074337 (=> res!2524015 e!3707074)))

(assert (=> b!6074337 (= res!2524015 e!3707071)))

(declare-fun res!2524014 () Bool)

(assert (=> b!6074337 (=> (not res!2524014) (not e!3707071))))

(assert (=> b!6074337 (= res!2524014 lt!2326567)))

(declare-fun b!6074338 () Bool)

(assert (=> b!6074338 (= e!3707072 (matchR!8222 (derivativeStep!4762 (regTwo!32590 r!7292) (head!12604 s!2326)) (tail!11689 s!2326)))))

(declare-fun b!6074339 () Bool)

(assert (=> b!6074339 (= e!3707075 (= lt!2326567 call!499835))))

(declare-fun b!6074340 () Bool)

(assert (=> b!6074340 (= e!3707075 e!3707070)))

(declare-fun c!1090110 () Bool)

(assert (=> b!6074340 (= c!1090110 ((_ is EmptyLang!16039) (regTwo!32590 r!7292)))))

(declare-fun bm!499830 () Bool)

(assert (=> bm!499830 (= call!499835 (isEmpty!36205 s!2326))))

(declare-fun b!6074341 () Bool)

(declare-fun res!2524018 () Bool)

(declare-fun e!3707073 () Bool)

(assert (=> b!6074341 (=> res!2524018 e!3707073)))

(assert (=> b!6074341 (= res!2524018 (not (isEmpty!36205 (tail!11689 s!2326))))))

(declare-fun b!6074342 () Bool)

(assert (=> b!6074342 (= e!3707073 (not (= (head!12604 s!2326) (c!1089857 (regTwo!32590 r!7292)))))))

(declare-fun b!6074343 () Bool)

(assert (=> b!6074343 (= e!3707070 (not lt!2326567))))

(declare-fun b!6074344 () Bool)

(assert (=> b!6074344 (= e!3707069 e!3707073)))

(declare-fun res!2524017 () Bool)

(assert (=> b!6074344 (=> res!2524017 e!3707073)))

(assert (=> b!6074344 (= res!2524017 call!499835)))

(assert (= (and d!1904349 c!1090108) b!6074336))

(assert (= (and d!1904349 (not c!1090108)) b!6074338))

(assert (= (and d!1904349 c!1090109) b!6074339))

(assert (= (and d!1904349 (not c!1090109)) b!6074340))

(assert (= (and b!6074340 c!1090110) b!6074343))

(assert (= (and b!6074340 (not c!1090110)) b!6074332))

(assert (= (and b!6074332 (not res!2524019)) b!6074337))

(assert (= (and b!6074337 res!2524014) b!6074334))

(assert (= (and b!6074334 res!2524013) b!6074331))

(assert (= (and b!6074331 res!2524012) b!6074335))

(assert (= (and b!6074337 (not res!2524015)) b!6074333))

(assert (= (and b!6074333 res!2524016) b!6074344))

(assert (= (and b!6074344 (not res!2524017)) b!6074341))

(assert (= (and b!6074341 (not res!2524018)) b!6074342))

(assert (= (or b!6074339 b!6074334 b!6074344) bm!499830))

(assert (=> b!6074342 m!6934060))

(assert (=> b!6074335 m!6934060))

(assert (=> b!6074331 m!6934062))

(assert (=> b!6074331 m!6934062))

(assert (=> b!6074331 m!6934064))

(declare-fun m!6934394 () Bool)

(assert (=> b!6074336 m!6934394))

(assert (=> b!6074341 m!6934062))

(assert (=> b!6074341 m!6934062))

(assert (=> b!6074341 m!6934064))

(assert (=> b!6074338 m!6934060))

(assert (=> b!6074338 m!6934060))

(declare-fun m!6934396 () Bool)

(assert (=> b!6074338 m!6934396))

(assert (=> b!6074338 m!6934062))

(assert (=> b!6074338 m!6934396))

(assert (=> b!6074338 m!6934062))

(declare-fun m!6934398 () Bool)

(assert (=> b!6074338 m!6934398))

(assert (=> bm!499830 m!6934072))

(assert (=> d!1904349 m!6934072))

(declare-fun m!6934400 () Bool)

(assert (=> d!1904349 m!6934400))

(assert (=> b!6074080 d!1904349))

(assert (=> d!1904189 d!1904185))

(declare-fun d!1904351 () Bool)

(assert (=> d!1904351 (= (flatMap!1552 z!1189 lambda!330983) (dynLambda!25275 lambda!330983 (h!70742 zl!343)))))

(assert (=> d!1904351 true))

(declare-fun _$13!2904 () Unit!157349)

(assert (=> d!1904351 (= (choose!45242 z!1189 (h!70742 zl!343) lambda!330983) _$13!2904)))

(declare-fun b_lambda!231027 () Bool)

(assert (=> (not b_lambda!231027) (not d!1904351)))

(declare-fun bs!1503983 () Bool)

(assert (= bs!1503983 d!1904351))

(assert (=> bs!1503983 m!6933808))

(assert (=> bs!1503983 m!6933964))

(assert (=> d!1904189 d!1904351))

(declare-fun bs!1503984 () Bool)

(declare-fun d!1904353 () Bool)

(assert (= bs!1503984 (and d!1904353 d!1904305)))

(declare-fun lambda!331073 () Int)

(assert (=> bs!1503984 (= lambda!331073 lambda!331070)))

(declare-fun bs!1503985 () Bool)

(assert (= bs!1503985 (and d!1904353 d!1904201)))

(assert (=> bs!1503985 (= lambda!331073 lambda!331013)))

(declare-fun bs!1503986 () Bool)

(assert (= bs!1503986 (and d!1904353 d!1904269)))

(assert (=> bs!1503986 (= lambda!331073 lambda!331049)))

(declare-fun bs!1503987 () Bool)

(assert (= bs!1503987 (and d!1904353 d!1904207)))

(assert (=> bs!1503987 (= lambda!331073 lambda!331016)))

(declare-fun bs!1503988 () Bool)

(assert (= bs!1503988 (and d!1904353 d!1904191)))

(assert (=> bs!1503988 (= lambda!331073 lambda!331004)))

(declare-fun bs!1503989 () Bool)

(assert (= bs!1503989 (and d!1904353 d!1904307)))

(assert (=> bs!1503989 (= lambda!331073 lambda!331071)))

(assert (=> d!1904353 (= (inv!83344 (h!70742 (t!377859 zl!343))) (forall!15151 (exprs!5923 (h!70742 (t!377859 zl!343))) lambda!331073))))

(declare-fun bs!1503990 () Bool)

(assert (= bs!1503990 d!1904353))

(declare-fun m!6934402 () Bool)

(assert (=> bs!1503990 m!6934402))

(assert (=> b!6074223 d!1904353))

(declare-fun d!1904355 () Bool)

(assert (=> d!1904355 (= (head!12603 (unfocusZipperList!1460 zl!343)) (h!70740 (unfocusZipperList!1460 zl!343)))))

(assert (=> b!6073731 d!1904355))

(declare-fun d!1904357 () Bool)

(assert (=> d!1904357 (= (nullable!6034 lt!2326431) (nullableFct!1997 lt!2326431))))

(declare-fun bs!1503991 () Bool)

(assert (= bs!1503991 d!1904357))

(declare-fun m!6934404 () Bool)

(assert (=> bs!1503991 m!6934404))

(assert (=> b!6073845 d!1904357))

(declare-fun b!6074345 () Bool)

(declare-fun e!3707076 () (InoxSet Context!10846))

(assert (=> b!6074345 (= e!3707076 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6074346 () Bool)

(declare-fun call!499837 () (InoxSet Context!10846))

(assert (=> b!6074346 (= e!3707076 call!499837)))

(declare-fun bm!499832 () Bool)

(declare-fun call!499839 () (InoxSet Context!10846))

(declare-fun call!499838 () (InoxSet Context!10846))

(assert (=> bm!499832 (= call!499839 call!499838)))

(declare-fun b!6074347 () Bool)

(declare-fun e!3707081 () (InoxSet Context!10846))

(declare-fun call!499841 () (InoxSet Context!10846))

(assert (=> b!6074347 (= e!3707081 ((_ map or) call!499841 call!499838))))

(declare-fun bm!499833 () Bool)

(declare-fun call!499840 () List!64416)

(declare-fun call!499836 () List!64416)

(assert (=> bm!499833 (= call!499840 call!499836)))

(declare-fun bm!499834 () Bool)

(declare-fun c!1090113 () Bool)

(assert (=> bm!499834 (= call!499841 (derivationStepZipperDown!1289 (ite c!1090113 (regOne!32591 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))) (regOne!32590 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292))))))) (ite c!1090113 (ite (or c!1089899 c!1089901) lt!2326429 (Context!10847 call!499752)) (Context!10847 call!499836)) (h!70741 s!2326)))))

(declare-fun c!1090111 () Bool)

(declare-fun b!6074348 () Bool)

(assert (=> b!6074348 (= c!1090111 ((_ is Star!16039) (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))))))

(declare-fun e!3707078 () (InoxSet Context!10846))

(assert (=> b!6074348 (= e!3707078 e!3707076)))

(declare-fun b!6074349 () Bool)

(declare-fun e!3707077 () (InoxSet Context!10846))

(assert (=> b!6074349 (= e!3707077 e!3707078)))

(declare-fun c!1090112 () Bool)

(assert (=> b!6074349 (= c!1090112 ((_ is Concat!24884) (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))))))

(declare-fun e!3707080 () Bool)

(declare-fun b!6074350 () Bool)

(assert (=> b!6074350 (= e!3707080 (nullable!6034 (regOne!32590 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292))))))))))

(declare-fun c!1090115 () Bool)

(declare-fun bm!499835 () Bool)

(assert (=> bm!499835 (= call!499836 ($colon$colon!1918 (exprs!5923 (ite (or c!1089899 c!1089901) lt!2326429 (Context!10847 call!499752))) (ite (or c!1090115 c!1090112) (regTwo!32590 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))) (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292))))))))))

(declare-fun b!6074351 () Bool)

(declare-fun e!3707079 () (InoxSet Context!10846))

(assert (=> b!6074351 (= e!3707079 (store ((as const (Array Context!10846 Bool)) false) (ite (or c!1089899 c!1089901) lt!2326429 (Context!10847 call!499752)) true))))

(declare-fun b!6074352 () Bool)

(assert (=> b!6074352 (= c!1090115 e!3707080)))

(declare-fun res!2524020 () Bool)

(assert (=> b!6074352 (=> (not res!2524020) (not e!3707080))))

(assert (=> b!6074352 (= res!2524020 ((_ is Concat!24884) (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))))))

(assert (=> b!6074352 (= e!3707081 e!3707077)))

(declare-fun bm!499831 () Bool)

(assert (=> bm!499831 (= call!499838 (derivationStepZipperDown!1289 (ite c!1090113 (regTwo!32591 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))) (ite c!1090115 (regTwo!32590 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))) (ite c!1090112 (regOne!32590 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))) (reg!16368 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292))))))))) (ite (or c!1090113 c!1090115) (ite (or c!1089899 c!1089901) lt!2326429 (Context!10847 call!499752)) (Context!10847 call!499840)) (h!70741 s!2326)))))

(declare-fun c!1090114 () Bool)

(declare-fun d!1904359 () Bool)

(assert (=> d!1904359 (= c!1090114 (and ((_ is ElementMatch!16039) (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))) (= (c!1089857 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))) (h!70741 s!2326))))))

(assert (=> d!1904359 (= (derivationStepZipperDown!1289 (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292))))) (ite (or c!1089899 c!1089901) lt!2326429 (Context!10847 call!499752)) (h!70741 s!2326)) e!3707079)))

(declare-fun b!6074353 () Bool)

(assert (=> b!6074353 (= e!3707078 call!499837)))

(declare-fun bm!499836 () Bool)

(assert (=> bm!499836 (= call!499837 call!499839)))

(declare-fun b!6074354 () Bool)

(assert (=> b!6074354 (= e!3707079 e!3707081)))

(assert (=> b!6074354 (= c!1090113 ((_ is Union!16039) (ite c!1089899 (regTwo!32591 (regOne!32590 r!7292)) (ite c!1089901 (regTwo!32590 (regOne!32590 r!7292)) (ite c!1089898 (regOne!32590 (regOne!32590 r!7292)) (reg!16368 (regOne!32590 r!7292)))))))))

(declare-fun b!6074355 () Bool)

(assert (=> b!6074355 (= e!3707077 ((_ map or) call!499841 call!499839))))

(assert (= (and d!1904359 c!1090114) b!6074351))

(assert (= (and d!1904359 (not c!1090114)) b!6074354))

(assert (= (and b!6074354 c!1090113) b!6074347))

(assert (= (and b!6074354 (not c!1090113)) b!6074352))

(assert (= (and b!6074352 res!2524020) b!6074350))

(assert (= (and b!6074352 c!1090115) b!6074355))

(assert (= (and b!6074352 (not c!1090115)) b!6074349))

(assert (= (and b!6074349 c!1090112) b!6074353))

(assert (= (and b!6074349 (not c!1090112)) b!6074348))

(assert (= (and b!6074348 c!1090111) b!6074346))

(assert (= (and b!6074348 (not c!1090111)) b!6074345))

(assert (= (or b!6074353 b!6074346) bm!499833))

(assert (= (or b!6074353 b!6074346) bm!499836))

(assert (= (or b!6074355 bm!499833) bm!499835))

(assert (= (or b!6074355 bm!499836) bm!499832))

(assert (= (or b!6074347 bm!499832) bm!499831))

(assert (= (or b!6074347 b!6074355) bm!499834))

(declare-fun m!6934406 () Bool)

(assert (=> b!6074350 m!6934406))

(declare-fun m!6934408 () Bool)

(assert (=> bm!499831 m!6934408))

(declare-fun m!6934410 () Bool)

(assert (=> bm!499835 m!6934410))

(declare-fun m!6934412 () Bool)

(assert (=> b!6074351 m!6934412))

(declare-fun m!6934414 () Bool)

(assert (=> bm!499834 m!6934414))

(assert (=> bm!499743 d!1904359))

(declare-fun d!1904361 () Bool)

(declare-fun c!1090116 () Bool)

(assert (=> d!1904361 (= c!1090116 (isEmpty!36205 (tail!11689 s!2326)))))

(declare-fun e!3707084 () Bool)

(assert (=> d!1904361 (= (matchZipper!2059 (derivationStepZipper!2020 lt!2326417 (head!12604 s!2326)) (tail!11689 s!2326)) e!3707084)))

(declare-fun b!6074360 () Bool)

(assert (=> b!6074360 (= e!3707084 (nullableZipper!1828 (derivationStepZipper!2020 lt!2326417 (head!12604 s!2326))))))

(declare-fun b!6074361 () Bool)

(assert (=> b!6074361 (= e!3707084 (matchZipper!2059 (derivationStepZipper!2020 (derivationStepZipper!2020 lt!2326417 (head!12604 s!2326)) (head!12604 (tail!11689 s!2326))) (tail!11689 (tail!11689 s!2326))))))

(assert (= (and d!1904361 c!1090116) b!6074360))

(assert (= (and d!1904361 (not c!1090116)) b!6074361))

(assert (=> d!1904361 m!6934062))

(assert (=> d!1904361 m!6934064))

(assert (=> b!6074360 m!6934086))

(declare-fun m!6934416 () Bool)

(assert (=> b!6074360 m!6934416))

(assert (=> b!6074361 m!6934062))

(declare-fun m!6934418 () Bool)

(assert (=> b!6074361 m!6934418))

(assert (=> b!6074361 m!6934086))

(assert (=> b!6074361 m!6934418))

(declare-fun m!6934420 () Bool)

(assert (=> b!6074361 m!6934420))

(assert (=> b!6074361 m!6934062))

(declare-fun m!6934422 () Bool)

(assert (=> b!6074361 m!6934422))

(assert (=> b!6074361 m!6934420))

(assert (=> b!6074361 m!6934422))

(declare-fun m!6934424 () Bool)

(assert (=> b!6074361 m!6934424))

(assert (=> b!6073887 d!1904361))

(declare-fun bs!1503992 () Bool)

(declare-fun d!1904363 () Bool)

(assert (= bs!1503992 (and d!1904363 b!6073437)))

(declare-fun lambda!331076 () Int)

(assert (=> bs!1503992 (= (= (head!12604 s!2326) (h!70741 s!2326)) (= lambda!331076 lambda!330983))))

(declare-fun bs!1503993 () Bool)

(assert (= bs!1503993 (and d!1904363 d!1904295)))

(assert (=> bs!1503993 (= (= (head!12604 s!2326) (h!70741 s!2326)) (= lambda!331076 lambda!331061))))

(assert (=> d!1904363 true))

(assert (=> d!1904363 (= (derivationStepZipper!2020 lt!2326417 (head!12604 s!2326)) (flatMap!1552 lt!2326417 lambda!331076))))

(declare-fun bs!1503994 () Bool)

(assert (= bs!1503994 d!1904363))

(declare-fun m!6934426 () Bool)

(assert (=> bs!1503994 m!6934426))

(assert (=> b!6073887 d!1904363))

(declare-fun d!1904365 () Bool)

(assert (=> d!1904365 (= (head!12604 s!2326) (h!70741 s!2326))))

(assert (=> b!6073887 d!1904365))

(declare-fun d!1904367 () Bool)

(assert (=> d!1904367 (= (tail!11689 s!2326) (t!377858 s!2326))))

(assert (=> b!6073887 d!1904367))

(declare-fun bs!1503995 () Bool)

(declare-fun d!1904369 () Bool)

(assert (= bs!1503995 (and d!1904369 d!1904305)))

(declare-fun lambda!331077 () Int)

(assert (=> bs!1503995 (= lambda!331077 lambda!331070)))

(declare-fun bs!1503996 () Bool)

(assert (= bs!1503996 (and d!1904369 d!1904201)))

(assert (=> bs!1503996 (= lambda!331077 lambda!331013)))

(declare-fun bs!1503997 () Bool)

(assert (= bs!1503997 (and d!1904369 d!1904353)))

(assert (=> bs!1503997 (= lambda!331077 lambda!331073)))

(declare-fun bs!1503998 () Bool)

(assert (= bs!1503998 (and d!1904369 d!1904269)))

(assert (=> bs!1503998 (= lambda!331077 lambda!331049)))

(declare-fun bs!1503999 () Bool)

(assert (= bs!1503999 (and d!1904369 d!1904207)))

(assert (=> bs!1503999 (= lambda!331077 lambda!331016)))

(declare-fun bs!1504000 () Bool)

(assert (= bs!1504000 (and d!1904369 d!1904191)))

(assert (=> bs!1504000 (= lambda!331077 lambda!331004)))

(declare-fun bs!1504001 () Bool)

(assert (= bs!1504001 (and d!1904369 d!1904307)))

(assert (=> bs!1504001 (= lambda!331077 lambda!331071)))

(declare-fun b!6074362 () Bool)

(declare-fun e!3707085 () Bool)

(declare-fun lt!2326568 () Regex!16039)

(assert (=> b!6074362 (= e!3707085 (= lt!2326568 (head!12603 (t!377857 (unfocusZipperList!1460 zl!343)))))))

(declare-fun b!6074363 () Bool)

(declare-fun e!3707089 () Bool)

(declare-fun e!3707088 () Bool)

(assert (=> b!6074363 (= e!3707089 e!3707088)))

(declare-fun c!1090119 () Bool)

(assert (=> b!6074363 (= c!1090119 (isEmpty!36202 (t!377857 (unfocusZipperList!1460 zl!343))))))

(assert (=> d!1904369 e!3707089))

(declare-fun res!2524025 () Bool)

(assert (=> d!1904369 (=> (not res!2524025) (not e!3707089))))

(assert (=> d!1904369 (= res!2524025 (validRegex!7775 lt!2326568))))

(declare-fun e!3707090 () Regex!16039)

(assert (=> d!1904369 (= lt!2326568 e!3707090)))

(declare-fun c!1090120 () Bool)

(declare-fun e!3707087 () Bool)

(assert (=> d!1904369 (= c!1090120 e!3707087)))

(declare-fun res!2524026 () Bool)

(assert (=> d!1904369 (=> (not res!2524026) (not e!3707087))))

(assert (=> d!1904369 (= res!2524026 ((_ is Cons!64292) (t!377857 (unfocusZipperList!1460 zl!343))))))

(assert (=> d!1904369 (forall!15151 (t!377857 (unfocusZipperList!1460 zl!343)) lambda!331077)))

(assert (=> d!1904369 (= (generalisedUnion!1883 (t!377857 (unfocusZipperList!1460 zl!343))) lt!2326568)))

(declare-fun b!6074364 () Bool)

(declare-fun e!3707086 () Regex!16039)

(assert (=> b!6074364 (= e!3707090 e!3707086)))

(declare-fun c!1090117 () Bool)

(assert (=> b!6074364 (= c!1090117 ((_ is Cons!64292) (t!377857 (unfocusZipperList!1460 zl!343))))))

(declare-fun b!6074365 () Bool)

(assert (=> b!6074365 (= e!3707088 (isEmptyLang!1468 lt!2326568))))

(declare-fun b!6074366 () Bool)

(assert (=> b!6074366 (= e!3707086 (Union!16039 (h!70740 (t!377857 (unfocusZipperList!1460 zl!343))) (generalisedUnion!1883 (t!377857 (t!377857 (unfocusZipperList!1460 zl!343))))))))

(declare-fun b!6074367 () Bool)

(assert (=> b!6074367 (= e!3707087 (isEmpty!36202 (t!377857 (t!377857 (unfocusZipperList!1460 zl!343)))))))

(declare-fun b!6074368 () Bool)

(assert (=> b!6074368 (= e!3707085 (isUnion!898 lt!2326568))))

(declare-fun b!6074369 () Bool)

(assert (=> b!6074369 (= e!3707086 EmptyLang!16039)))

(declare-fun b!6074370 () Bool)

(assert (=> b!6074370 (= e!3707088 e!3707085)))

(declare-fun c!1090118 () Bool)

(assert (=> b!6074370 (= c!1090118 (isEmpty!36202 (tail!11688 (t!377857 (unfocusZipperList!1460 zl!343)))))))

(declare-fun b!6074371 () Bool)

(assert (=> b!6074371 (= e!3707090 (h!70740 (t!377857 (unfocusZipperList!1460 zl!343))))))

(assert (= (and d!1904369 res!2524026) b!6074367))

(assert (= (and d!1904369 c!1090120) b!6074371))

(assert (= (and d!1904369 (not c!1090120)) b!6074364))

(assert (= (and b!6074364 c!1090117) b!6074366))

(assert (= (and b!6074364 (not c!1090117)) b!6074369))

(assert (= (and d!1904369 res!2524025) b!6074363))

(assert (= (and b!6074363 c!1090119) b!6074365))

(assert (= (and b!6074363 (not c!1090119)) b!6074370))

(assert (= (and b!6074370 c!1090118) b!6074362))

(assert (= (and b!6074370 (not c!1090118)) b!6074368))

(declare-fun m!6934428 () Bool)

(assert (=> b!6074362 m!6934428))

(declare-fun m!6934430 () Bool)

(assert (=> b!6074367 m!6934430))

(assert (=> b!6074363 m!6934004))

(declare-fun m!6934432 () Bool)

(assert (=> b!6074368 m!6934432))

(declare-fun m!6934434 () Bool)

(assert (=> d!1904369 m!6934434))

(declare-fun m!6934436 () Bool)

(assert (=> d!1904369 m!6934436))

(declare-fun m!6934438 () Bool)

(assert (=> b!6074370 m!6934438))

(assert (=> b!6074370 m!6934438))

(declare-fun m!6934440 () Bool)

(assert (=> b!6074370 m!6934440))

(declare-fun m!6934442 () Bool)

(assert (=> b!6074365 m!6934442))

(declare-fun m!6934444 () Bool)

(assert (=> b!6074366 m!6934444))

(assert (=> b!6073735 d!1904369))

(declare-fun b!6074372 () Bool)

(declare-fun e!3707092 () (InoxSet Context!10846))

(assert (=> b!6074372 (= e!3707092 ((as const (Array Context!10846 Bool)) false))))

(declare-fun bm!499837 () Bool)

(declare-fun call!499842 () (InoxSet Context!10846))

(assert (=> bm!499837 (= call!499842 (derivationStepZipperDown!1289 (h!70740 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326422))))) (Context!10847 (t!377857 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326422)))))) (h!70741 s!2326)))))

(declare-fun b!6074373 () Bool)

(declare-fun e!3707091 () Bool)

(assert (=> b!6074373 (= e!3707091 (nullable!6034 (h!70740 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326422)))))))))

(declare-fun b!6074374 () Bool)

(declare-fun e!3707093 () (InoxSet Context!10846))

(assert (=> b!6074374 (= e!3707093 e!3707092)))

(declare-fun c!1090122 () Bool)

(assert (=> b!6074374 (= c!1090122 ((_ is Cons!64292) (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326422))))))))

(declare-fun d!1904371 () Bool)

(declare-fun c!1090121 () Bool)

(assert (=> d!1904371 (= c!1090121 e!3707091)))

(declare-fun res!2524027 () Bool)

(assert (=> d!1904371 (=> (not res!2524027) (not e!3707091))))

(assert (=> d!1904371 (= res!2524027 ((_ is Cons!64292) (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326422))))))))

(assert (=> d!1904371 (= (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 lt!2326422))) (h!70741 s!2326)) e!3707093)))

(declare-fun b!6074375 () Bool)

(assert (=> b!6074375 (= e!3707092 call!499842)))

(declare-fun b!6074376 () Bool)

(assert (=> b!6074376 (= e!3707093 ((_ map or) call!499842 (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326422)))))) (h!70741 s!2326))))))

(assert (= (and d!1904371 res!2524027) b!6074373))

(assert (= (and d!1904371 c!1090121) b!6074376))

(assert (= (and d!1904371 (not c!1090121)) b!6074374))

(assert (= (and b!6074374 c!1090122) b!6074375))

(assert (= (and b!6074374 (not c!1090122)) b!6074372))

(assert (= (or b!6074376 b!6074375) bm!499837))

(declare-fun m!6934446 () Bool)

(assert (=> bm!499837 m!6934446))

(declare-fun m!6934448 () Bool)

(assert (=> b!6074373 m!6934448))

(declare-fun m!6934450 () Bool)

(assert (=> b!6074376 m!6934450))

(assert (=> b!6073658 d!1904371))

(assert (=> bs!1503971 d!1904183))

(declare-fun d!1904373 () Bool)

(declare-fun e!3707100 () Bool)

(assert (=> d!1904373 e!3707100))

(declare-fun res!2524033 () Bool)

(assert (=> d!1904373 (=> (not res!2524033) (not e!3707100))))

(declare-fun lt!2326572 () List!64417)

(declare-fun content!11910 (List!64417) (InoxSet C!32348))

(assert (=> d!1904373 (= res!2524033 (= (content!11910 lt!2326572) ((_ map or) (content!11910 (_1!36321 (get!22163 lt!2326544))) (content!11910 (_2!36321 (get!22163 lt!2326544))))))))

(declare-fun e!3707099 () List!64417)

(assert (=> d!1904373 (= lt!2326572 e!3707099)))

(declare-fun c!1090126 () Bool)

(assert (=> d!1904373 (= c!1090126 ((_ is Nil!64293) (_1!36321 (get!22163 lt!2326544))))))

(assert (=> d!1904373 (= (++!14128 (_1!36321 (get!22163 lt!2326544)) (_2!36321 (get!22163 lt!2326544))) lt!2326572)))

(declare-fun b!6074388 () Bool)

(assert (=> b!6074388 (= e!3707099 (Cons!64293 (h!70741 (_1!36321 (get!22163 lt!2326544))) (++!14128 (t!377858 (_1!36321 (get!22163 lt!2326544))) (_2!36321 (get!22163 lt!2326544)))))))

(declare-fun b!6074389 () Bool)

(declare-fun res!2524032 () Bool)

(assert (=> b!6074389 (=> (not res!2524032) (not e!3707100))))

(declare-fun size!40187 (List!64417) Int)

(assert (=> b!6074389 (= res!2524032 (= (size!40187 lt!2326572) (+ (size!40187 (_1!36321 (get!22163 lt!2326544))) (size!40187 (_2!36321 (get!22163 lt!2326544))))))))

(declare-fun b!6074387 () Bool)

(assert (=> b!6074387 (= e!3707099 (_2!36321 (get!22163 lt!2326544)))))

(declare-fun b!6074390 () Bool)

(assert (=> b!6074390 (= e!3707100 (or (not (= (_2!36321 (get!22163 lt!2326544)) Nil!64293)) (= lt!2326572 (_1!36321 (get!22163 lt!2326544)))))))

(assert (= (and d!1904373 c!1090126) b!6074387))

(assert (= (and d!1904373 (not c!1090126)) b!6074388))

(assert (= (and d!1904373 res!2524033) b!6074389))

(assert (= (and b!6074389 res!2524032) b!6074390))

(declare-fun m!6934462 () Bool)

(assert (=> d!1904373 m!6934462))

(declare-fun m!6934464 () Bool)

(assert (=> d!1904373 m!6934464))

(declare-fun m!6934466 () Bool)

(assert (=> d!1904373 m!6934466))

(declare-fun m!6934468 () Bool)

(assert (=> b!6074388 m!6934468))

(declare-fun m!6934470 () Bool)

(assert (=> b!6074389 m!6934470))

(declare-fun m!6934472 () Bool)

(assert (=> b!6074389 m!6934472))

(declare-fun m!6934474 () Bool)

(assert (=> b!6074389 m!6934474))

(assert (=> b!6074076 d!1904373))

(declare-fun d!1904383 () Bool)

(assert (=> d!1904383 (= (get!22163 lt!2326544) (v!52056 lt!2326544))))

(assert (=> b!6074076 d!1904383))

(declare-fun d!1904385 () Bool)

(assert (=> d!1904385 (= (nullable!6034 (h!70740 (exprs!5923 lt!2326422))) (nullableFct!1997 (h!70740 (exprs!5923 lt!2326422))))))

(declare-fun bs!1504016 () Bool)

(assert (= bs!1504016 d!1904385))

(declare-fun m!6934476 () Bool)

(assert (=> bs!1504016 m!6934476))

(assert (=> b!6073655 d!1904385))

(assert (=> b!6074098 d!1904161))

(declare-fun d!1904387 () Bool)

(assert (=> d!1904387 (= (nullable!6034 (regOne!32590 (regTwo!32590 r!7292))) (nullableFct!1997 (regOne!32590 (regTwo!32590 r!7292))))))

(declare-fun bs!1504017 () Bool)

(assert (= bs!1504017 d!1904387))

(declare-fun m!6934478 () Bool)

(assert (=> bs!1504017 m!6934478))

(assert (=> b!6073664 d!1904387))

(declare-fun d!1904389 () Bool)

(assert (=> d!1904389 (= (isEmpty!36205 s!2326) ((_ is Nil!64293) s!2326))))

(assert (=> d!1904217 d!1904389))

(declare-fun b!6074395 () Bool)

(declare-fun res!2524035 () Bool)

(declare-fun e!3707105 () Bool)

(assert (=> b!6074395 (=> (not res!2524035) (not e!3707105))))

(assert (=> b!6074395 (= res!2524035 (isEmpty!36205 (tail!11689 (_1!36321 (get!22163 lt!2326544)))))))

(declare-fun b!6074396 () Bool)

(declare-fun res!2524042 () Bool)

(declare-fun e!3707108 () Bool)

(assert (=> b!6074396 (=> res!2524042 e!3707108)))

(assert (=> b!6074396 (= res!2524042 (not ((_ is ElementMatch!16039) (regOne!32590 r!7292))))))

(declare-fun e!3707104 () Bool)

(assert (=> b!6074396 (= e!3707104 e!3707108)))

(declare-fun b!6074397 () Bool)

(declare-fun e!3707103 () Bool)

(assert (=> b!6074397 (= e!3707108 e!3707103)))

(declare-fun res!2524039 () Bool)

(assert (=> b!6074397 (=> (not res!2524039) (not e!3707103))))

(declare-fun lt!2326577 () Bool)

(assert (=> b!6074397 (= res!2524039 (not lt!2326577))))

(declare-fun b!6074398 () Bool)

(declare-fun res!2524036 () Bool)

(assert (=> b!6074398 (=> (not res!2524036) (not e!3707105))))

(declare-fun call!499843 () Bool)

(assert (=> b!6074398 (= res!2524036 (not call!499843))))

(declare-fun b!6074399 () Bool)

(assert (=> b!6074399 (= e!3707105 (= (head!12604 (_1!36321 (get!22163 lt!2326544))) (c!1089857 (regOne!32590 r!7292))))))

(declare-fun d!1904393 () Bool)

(declare-fun e!3707109 () Bool)

(assert (=> d!1904393 e!3707109))

(declare-fun c!1090129 () Bool)

(assert (=> d!1904393 (= c!1090129 ((_ is EmptyExpr!16039) (regOne!32590 r!7292)))))

(declare-fun e!3707106 () Bool)

(assert (=> d!1904393 (= lt!2326577 e!3707106)))

(declare-fun c!1090128 () Bool)

(assert (=> d!1904393 (= c!1090128 (isEmpty!36205 (_1!36321 (get!22163 lt!2326544))))))

(assert (=> d!1904393 (validRegex!7775 (regOne!32590 r!7292))))

(assert (=> d!1904393 (= (matchR!8222 (regOne!32590 r!7292) (_1!36321 (get!22163 lt!2326544))) lt!2326577)))

(declare-fun b!6074400 () Bool)

(assert (=> b!6074400 (= e!3707106 (nullable!6034 (regOne!32590 r!7292)))))

(declare-fun b!6074401 () Bool)

(declare-fun res!2524038 () Bool)

(assert (=> b!6074401 (=> res!2524038 e!3707108)))

(assert (=> b!6074401 (= res!2524038 e!3707105)))

(declare-fun res!2524037 () Bool)

(assert (=> b!6074401 (=> (not res!2524037) (not e!3707105))))

(assert (=> b!6074401 (= res!2524037 lt!2326577)))

(declare-fun b!6074402 () Bool)

(assert (=> b!6074402 (= e!3707106 (matchR!8222 (derivativeStep!4762 (regOne!32590 r!7292) (head!12604 (_1!36321 (get!22163 lt!2326544)))) (tail!11689 (_1!36321 (get!22163 lt!2326544)))))))

(declare-fun b!6074403 () Bool)

(assert (=> b!6074403 (= e!3707109 (= lt!2326577 call!499843))))

(declare-fun b!6074404 () Bool)

(assert (=> b!6074404 (= e!3707109 e!3707104)))

(declare-fun c!1090130 () Bool)

(assert (=> b!6074404 (= c!1090130 ((_ is EmptyLang!16039) (regOne!32590 r!7292)))))

(declare-fun bm!499838 () Bool)

(assert (=> bm!499838 (= call!499843 (isEmpty!36205 (_1!36321 (get!22163 lt!2326544))))))

(declare-fun b!6074405 () Bool)

(declare-fun res!2524041 () Bool)

(declare-fun e!3707107 () Bool)

(assert (=> b!6074405 (=> res!2524041 e!3707107)))

(assert (=> b!6074405 (= res!2524041 (not (isEmpty!36205 (tail!11689 (_1!36321 (get!22163 lt!2326544))))))))

(declare-fun b!6074406 () Bool)

(assert (=> b!6074406 (= e!3707107 (not (= (head!12604 (_1!36321 (get!22163 lt!2326544))) (c!1089857 (regOne!32590 r!7292)))))))

(declare-fun b!6074407 () Bool)

(assert (=> b!6074407 (= e!3707104 (not lt!2326577))))

(declare-fun b!6074408 () Bool)

(assert (=> b!6074408 (= e!3707103 e!3707107)))

(declare-fun res!2524040 () Bool)

(assert (=> b!6074408 (=> res!2524040 e!3707107)))

(assert (=> b!6074408 (= res!2524040 call!499843)))

(assert (= (and d!1904393 c!1090128) b!6074400))

(assert (= (and d!1904393 (not c!1090128)) b!6074402))

(assert (= (and d!1904393 c!1090129) b!6074403))

(assert (= (and d!1904393 (not c!1090129)) b!6074404))

(assert (= (and b!6074404 c!1090130) b!6074407))

(assert (= (and b!6074404 (not c!1090130)) b!6074396))

(assert (= (and b!6074396 (not res!2524042)) b!6074401))

(assert (= (and b!6074401 res!2524037) b!6074398))

(assert (= (and b!6074398 res!2524036) b!6074395))

(assert (= (and b!6074395 res!2524035) b!6074399))

(assert (= (and b!6074401 (not res!2524038)) b!6074397))

(assert (= (and b!6074397 res!2524039) b!6074408))

(assert (= (and b!6074408 (not res!2524040)) b!6074405))

(assert (= (and b!6074405 (not res!2524041)) b!6074406))

(assert (= (or b!6074403 b!6074398 b!6074408) bm!499838))

(declare-fun m!6934480 () Bool)

(assert (=> b!6074406 m!6934480))

(assert (=> b!6074399 m!6934480))

(declare-fun m!6934482 () Bool)

(assert (=> b!6074395 m!6934482))

(assert (=> b!6074395 m!6934482))

(declare-fun m!6934484 () Bool)

(assert (=> b!6074395 m!6934484))

(assert (=> b!6074400 m!6933790))

(assert (=> b!6074405 m!6934482))

(assert (=> b!6074405 m!6934482))

(assert (=> b!6074405 m!6934484))

(assert (=> b!6074402 m!6934480))

(assert (=> b!6074402 m!6934480))

(declare-fun m!6934486 () Bool)

(assert (=> b!6074402 m!6934486))

(assert (=> b!6074402 m!6934482))

(assert (=> b!6074402 m!6934486))

(assert (=> b!6074402 m!6934482))

(declare-fun m!6934488 () Bool)

(assert (=> b!6074402 m!6934488))

(declare-fun m!6934490 () Bool)

(assert (=> bm!499838 m!6934490))

(assert (=> d!1904393 m!6934490))

(assert (=> d!1904393 m!6934240))

(assert (=> b!6074072 d!1904393))

(assert (=> b!6074072 d!1904383))

(declare-fun d!1904395 () Bool)

(assert (=> d!1904395 true))

(assert (=> d!1904395 true))

(declare-fun res!2524045 () Bool)

(assert (=> d!1904395 (= (choose!45249 lambda!330981) res!2524045)))

(assert (=> d!1904281 d!1904395))

(assert (=> bm!499810 d!1904389))

(declare-fun b!6074409 () Bool)

(declare-fun e!3707111 () (InoxSet Context!10846))

(assert (=> b!6074409 (= e!3707111 ((as const (Array Context!10846 Bool)) false))))

(declare-fun bm!499839 () Bool)

(declare-fun call!499844 () (InoxSet Context!10846))

(assert (=> bm!499839 (= call!499844 (derivationStepZipperDown!1289 (h!70740 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343)))))) (Context!10847 (t!377857 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343))))))) (h!70741 s!2326)))))

(declare-fun b!6074410 () Bool)

(declare-fun e!3707110 () Bool)

(assert (=> b!6074410 (= e!3707110 (nullable!6034 (h!70740 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343))))))))))

(declare-fun b!6074411 () Bool)

(declare-fun e!3707112 () (InoxSet Context!10846))

(assert (=> b!6074411 (= e!3707112 e!3707111)))

(declare-fun c!1090132 () Bool)

(assert (=> b!6074411 (= c!1090132 ((_ is Cons!64292) (exprs!5923 (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343)))))))))

(declare-fun d!1904397 () Bool)

(declare-fun c!1090131 () Bool)

(assert (=> d!1904397 (= c!1090131 e!3707110)))

(declare-fun res!2524046 () Bool)

(assert (=> d!1904397 (=> (not res!2524046) (not e!3707110))))

(assert (=> d!1904397 (= res!2524046 ((_ is Cons!64292) (exprs!5923 (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343)))))))))

(assert (=> d!1904397 (= (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343)))) (h!70741 s!2326)) e!3707112)))

(declare-fun b!6074412 () Bool)

(assert (=> b!6074412 (= e!3707111 call!499844)))

(declare-fun b!6074413 () Bool)

(assert (=> b!6074413 (= e!3707112 ((_ map or) call!499844 (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343))))))) (h!70741 s!2326))))))

(assert (= (and d!1904397 res!2524046) b!6074410))

(assert (= (and d!1904397 c!1090131) b!6074413))

(assert (= (and d!1904397 (not c!1090131)) b!6074411))

(assert (= (and b!6074411 c!1090132) b!6074412))

(assert (= (and b!6074411 (not c!1090132)) b!6074409))

(assert (= (or b!6074413 b!6074412) bm!499839))

(declare-fun m!6934492 () Bool)

(assert (=> bm!499839 m!6934492))

(declare-fun m!6934494 () Bool)

(assert (=> b!6074410 m!6934494))

(declare-fun m!6934496 () Bool)

(assert (=> b!6074413 m!6934496))

(assert (=> b!6073679 d!1904397))

(declare-fun d!1904399 () Bool)

(assert (=> d!1904399 (= (nullable!6034 (h!70740 (exprs!5923 lt!2326421))) (nullableFct!1997 (h!70740 (exprs!5923 lt!2326421))))))

(declare-fun bs!1504027 () Bool)

(assert (= bs!1504027 d!1904399))

(declare-fun m!6934498 () Bool)

(assert (=> bs!1504027 m!6934498))

(assert (=> b!6074105 d!1904399))

(assert (=> bm!499768 d!1904389))

(declare-fun bs!1504034 () Bool)

(declare-fun b!6074429 () Bool)

(assert (= bs!1504034 (and b!6074429 d!1904305)))

(declare-fun lambda!331090 () Int)

(assert (=> bs!1504034 (not (= lambda!331090 lambda!331070))))

(declare-fun bs!1504035 () Bool)

(assert (= bs!1504035 (and b!6074429 d!1904201)))

(assert (=> bs!1504035 (not (= lambda!331090 lambda!331013))))

(declare-fun bs!1504036 () Bool)

(assert (= bs!1504036 (and b!6074429 d!1904353)))

(assert (=> bs!1504036 (not (= lambda!331090 lambda!331073))))

(declare-fun bs!1504037 () Bool)

(assert (= bs!1504037 (and b!6074429 d!1904269)))

(assert (=> bs!1504037 (not (= lambda!331090 lambda!331049))))

(declare-fun bs!1504038 () Bool)

(assert (= bs!1504038 (and b!6074429 d!1904207)))

(assert (=> bs!1504038 (not (= lambda!331090 lambda!331016))))

(declare-fun bs!1504040 () Bool)

(assert (= bs!1504040 (and b!6074429 d!1904191)))

(assert (=> bs!1504040 (not (= lambda!331090 lambda!331004))))

(declare-fun bs!1504041 () Bool)

(assert (= bs!1504041 (and b!6074429 d!1904307)))

(assert (=> bs!1504041 (not (= lambda!331090 lambda!331071))))

(declare-fun bs!1504042 () Bool)

(assert (= bs!1504042 (and b!6074429 d!1904369)))

(assert (=> bs!1504042 (not (= lambda!331090 lambda!331077))))

(assert (=> b!6074429 true))

(declare-fun bs!1504043 () Bool)

(declare-fun b!6074431 () Bool)

(assert (= bs!1504043 (and b!6074431 d!1904305)))

(declare-fun lambda!331091 () Int)

(assert (=> bs!1504043 (not (= lambda!331091 lambda!331070))))

(declare-fun bs!1504044 () Bool)

(assert (= bs!1504044 (and b!6074431 d!1904201)))

(assert (=> bs!1504044 (not (= lambda!331091 lambda!331013))))

(declare-fun bs!1504045 () Bool)

(assert (= bs!1504045 (and b!6074431 d!1904353)))

(assert (=> bs!1504045 (not (= lambda!331091 lambda!331073))))

(declare-fun bs!1504046 () Bool)

(assert (= bs!1504046 (and b!6074431 b!6074429)))

(declare-fun lt!2326589 () Int)

(declare-fun lt!2326590 () Int)

(assert (=> bs!1504046 (= (= lt!2326590 lt!2326589) (= lambda!331091 lambda!331090))))

(declare-fun bs!1504047 () Bool)

(assert (= bs!1504047 (and b!6074431 d!1904269)))

(assert (=> bs!1504047 (not (= lambda!331091 lambda!331049))))

(declare-fun bs!1504048 () Bool)

(assert (= bs!1504048 (and b!6074431 d!1904207)))

(assert (=> bs!1504048 (not (= lambda!331091 lambda!331016))))

(declare-fun bs!1504049 () Bool)

(assert (= bs!1504049 (and b!6074431 d!1904191)))

(assert (=> bs!1504049 (not (= lambda!331091 lambda!331004))))

(declare-fun bs!1504050 () Bool)

(assert (= bs!1504050 (and b!6074431 d!1904307)))

(assert (=> bs!1504050 (not (= lambda!331091 lambda!331071))))

(declare-fun bs!1504051 () Bool)

(assert (= bs!1504051 (and b!6074431 d!1904369)))

(assert (=> bs!1504051 (not (= lambda!331091 lambda!331077))))

(assert (=> b!6074431 true))

(declare-fun d!1904401 () Bool)

(declare-fun e!3707124 () Bool)

(assert (=> d!1904401 e!3707124))

(declare-fun res!2524055 () Bool)

(assert (=> d!1904401 (=> (not res!2524055) (not e!3707124))))

(assert (=> d!1904401 (= res!2524055 (>= lt!2326590 0))))

(declare-fun e!3707123 () Int)

(assert (=> d!1904401 (= lt!2326590 e!3707123)))

(declare-fun c!1090138 () Bool)

(assert (=> d!1904401 (= c!1090138 ((_ is Cons!64292) (exprs!5923 (h!70742 lt!2326433))))))

(assert (=> d!1904401 (= (contextDepth!179 (h!70742 lt!2326433)) lt!2326590)))

(assert (=> b!6074429 (= e!3707123 lt!2326589)))

(declare-fun regexDepth!287 (Regex!16039) Int)

(assert (=> b!6074429 (= lt!2326589 (maxBigInt!0 (regexDepth!287 (h!70740 (exprs!5923 (h!70742 lt!2326433)))) (contextDepth!179 (Context!10847 (t!377857 (exprs!5923 (h!70742 lt!2326433)))))))))

(declare-fun lt!2326592 () Unit!157349)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!77 (List!64416 Int Int) Unit!157349)

(assert (=> b!6074429 (= lt!2326592 (lemmaForallRegexDepthBiggerThanTransitive!77 (t!377857 (exprs!5923 (h!70742 lt!2326433))) lt!2326589 (contextDepth!179 (Context!10847 (t!377857 (exprs!5923 (h!70742 lt!2326433)))))))))

(assert (=> b!6074429 (forall!15151 (t!377857 (exprs!5923 (h!70742 lt!2326433))) lambda!331090)))

(declare-fun lt!2326591 () Unit!157349)

(assert (=> b!6074429 (= lt!2326591 lt!2326592)))

(declare-fun b!6074430 () Bool)

(assert (=> b!6074430 (= e!3707123 0)))

(assert (=> b!6074431 (= e!3707124 (forall!15151 (exprs!5923 (h!70742 lt!2326433)) lambda!331091))))

(assert (= (and d!1904401 c!1090138) b!6074429))

(assert (= (and d!1904401 (not c!1090138)) b!6074430))

(assert (= (and d!1904401 res!2524055) b!6074431))

(declare-fun m!6934520 () Bool)

(assert (=> b!6074429 m!6934520))

(declare-fun m!6934522 () Bool)

(assert (=> b!6074429 m!6934522))

(declare-fun m!6934524 () Bool)

(assert (=> b!6074429 m!6934524))

(assert (=> b!6074429 m!6934522))

(declare-fun m!6934526 () Bool)

(assert (=> b!6074429 m!6934526))

(declare-fun m!6934528 () Bool)

(assert (=> b!6074429 m!6934528))

(assert (=> b!6074429 m!6934522))

(assert (=> b!6074429 m!6934520))

(declare-fun m!6934530 () Bool)

(assert (=> b!6074431 m!6934530))

(assert (=> b!6073960 d!1904401))

(declare-fun d!1904409 () Bool)

(assert (=> d!1904409 (= (maxBigInt!0 (contextDepth!179 (h!70742 lt!2326433)) (zipperDepth!284 (t!377859 lt!2326433))) (ite (>= (contextDepth!179 (h!70742 lt!2326433)) (zipperDepth!284 (t!377859 lt!2326433))) (contextDepth!179 (h!70742 lt!2326433)) (zipperDepth!284 (t!377859 lt!2326433))))))

(assert (=> b!6073960 d!1904409))

(declare-fun d!1904411 () Bool)

(declare-fun res!2524060 () Bool)

(declare-fun e!3707129 () Bool)

(assert (=> d!1904411 (=> res!2524060 e!3707129)))

(assert (=> d!1904411 (= res!2524060 ((_ is Nil!64294) (t!377859 lt!2326433)))))

(assert (=> d!1904411 (= (forall!15152 (t!377859 lt!2326433) lambda!331044) e!3707129)))

(declare-fun b!6074439 () Bool)

(declare-fun e!3707130 () Bool)

(assert (=> b!6074439 (= e!3707129 e!3707130)))

(declare-fun res!2524061 () Bool)

(assert (=> b!6074439 (=> (not res!2524061) (not e!3707130))))

(declare-fun dynLambda!25281 (Int Context!10846) Bool)

(assert (=> b!6074439 (= res!2524061 (dynLambda!25281 lambda!331044 (h!70742 (t!377859 lt!2326433))))))

(declare-fun b!6074440 () Bool)

(assert (=> b!6074440 (= e!3707130 (forall!15152 (t!377859 (t!377859 lt!2326433)) lambda!331044))))

(assert (= (and d!1904411 (not res!2524060)) b!6074439))

(assert (= (and b!6074439 res!2524061) b!6074440))

(declare-fun b_lambda!231031 () Bool)

(assert (=> (not b_lambda!231031) (not b!6074439)))

(declare-fun m!6934532 () Bool)

(assert (=> b!6074439 m!6934532))

(declare-fun m!6934534 () Bool)

(assert (=> b!6074440 m!6934534))

(assert (=> b!6073960 d!1904411))

(declare-fun bs!1504052 () Bool)

(declare-fun b!6074441 () Bool)

(assert (= bs!1504052 (and b!6074441 b!6073960)))

(declare-fun lambda!331092 () Int)

(assert (=> bs!1504052 (= lambda!331092 lambda!331043)))

(declare-fun bs!1504053 () Bool)

(assert (= bs!1504053 (and b!6074441 b!6073970)))

(assert (=> bs!1504053 (= lambda!331092 lambda!331046)))

(declare-fun lambda!331093 () Int)

(declare-fun lt!2326596 () Int)

(assert (=> bs!1504052 (= (= lt!2326596 lt!2326530) (= lambda!331093 lambda!331044))))

(declare-fun bs!1504054 () Bool)

(assert (= bs!1504054 (and b!6074441 b!6073962)))

(assert (=> bs!1504054 (= (= lt!2326596 lt!2326528) (= lambda!331093 lambda!331045))))

(assert (=> bs!1504053 (= (= lt!2326596 lt!2326536) (= lambda!331093 lambda!331047))))

(declare-fun bs!1504055 () Bool)

(assert (= bs!1504055 (and b!6074441 b!6073972)))

(assert (=> bs!1504055 (= (= lt!2326596 lt!2326534) (= lambda!331093 lambda!331048))))

(assert (=> b!6074441 true))

(declare-fun bs!1504056 () Bool)

(declare-fun b!6074443 () Bool)

(assert (= bs!1504056 (and b!6074443 b!6074441)))

(declare-fun lt!2326594 () Int)

(declare-fun lambda!331094 () Int)

(assert (=> bs!1504056 (= (= lt!2326594 lt!2326596) (= lambda!331094 lambda!331093))))

(declare-fun bs!1504057 () Bool)

(assert (= bs!1504057 (and b!6074443 b!6073970)))

(assert (=> bs!1504057 (= (= lt!2326594 lt!2326536) (= lambda!331094 lambda!331047))))

(declare-fun bs!1504058 () Bool)

(assert (= bs!1504058 (and b!6074443 b!6073972)))

(assert (=> bs!1504058 (= (= lt!2326594 lt!2326534) (= lambda!331094 lambda!331048))))

(declare-fun bs!1504059 () Bool)

(assert (= bs!1504059 (and b!6074443 b!6073962)))

(assert (=> bs!1504059 (= (= lt!2326594 lt!2326528) (= lambda!331094 lambda!331045))))

(declare-fun bs!1504060 () Bool)

(assert (= bs!1504060 (and b!6074443 b!6073960)))

(assert (=> bs!1504060 (= (= lt!2326594 lt!2326530) (= lambda!331094 lambda!331044))))

(assert (=> b!6074443 true))

(declare-fun d!1904413 () Bool)

(declare-fun e!3707132 () Bool)

(assert (=> d!1904413 e!3707132))

(declare-fun res!2524062 () Bool)

(assert (=> d!1904413 (=> (not res!2524062) (not e!3707132))))

(assert (=> d!1904413 (= res!2524062 (>= lt!2326594 0))))

(declare-fun e!3707131 () Int)

(assert (=> d!1904413 (= lt!2326594 e!3707131)))

(declare-fun c!1090139 () Bool)

(assert (=> d!1904413 (= c!1090139 ((_ is Cons!64294) (t!377859 lt!2326433)))))

(assert (=> d!1904413 (= (zipperDepth!284 (t!377859 lt!2326433)) lt!2326594)))

(assert (=> b!6074441 (= e!3707131 lt!2326596)))

(assert (=> b!6074441 (= lt!2326596 (maxBigInt!0 (contextDepth!179 (h!70742 (t!377859 lt!2326433))) (zipperDepth!284 (t!377859 (t!377859 lt!2326433)))))))

(declare-fun lt!2326595 () Unit!157349)

(assert (=> b!6074441 (= lt!2326595 (lemmaForallContextDepthBiggerThanTransitive!163 (t!377859 (t!377859 lt!2326433)) lt!2326596 (zipperDepth!284 (t!377859 (t!377859 lt!2326433))) lambda!331092))))

(assert (=> b!6074441 (forall!15152 (t!377859 (t!377859 lt!2326433)) lambda!331093)))

(declare-fun lt!2326593 () Unit!157349)

(assert (=> b!6074441 (= lt!2326593 lt!2326595)))

(declare-fun b!6074442 () Bool)

(assert (=> b!6074442 (= e!3707131 0)))

(assert (=> b!6074443 (= e!3707132 (forall!15152 (t!377859 lt!2326433) lambda!331094))))

(assert (= (and d!1904413 c!1090139) b!6074441))

(assert (= (and d!1904413 (not c!1090139)) b!6074442))

(assert (= (and d!1904413 res!2524062) b!6074443))

(declare-fun m!6934536 () Bool)

(assert (=> b!6074441 m!6934536))

(declare-fun m!6934538 () Bool)

(assert (=> b!6074441 m!6934538))

(declare-fun m!6934540 () Bool)

(assert (=> b!6074441 m!6934540))

(assert (=> b!6074441 m!6934540))

(declare-fun m!6934542 () Bool)

(assert (=> b!6074441 m!6934542))

(assert (=> b!6074441 m!6934538))

(assert (=> b!6074441 m!6934540))

(declare-fun m!6934544 () Bool)

(assert (=> b!6074441 m!6934544))

(declare-fun m!6934546 () Bool)

(assert (=> b!6074443 m!6934546))

(assert (=> b!6073960 d!1904413))

(declare-fun bs!1504061 () Bool)

(declare-fun d!1904415 () Bool)

(assert (= bs!1504061 (and d!1904415 b!6074441)))

(declare-fun lambda!331097 () Int)

(assert (=> bs!1504061 (not (= lambda!331097 lambda!331093))))

(declare-fun bs!1504062 () Bool)

(assert (= bs!1504062 (and d!1904415 b!6074443)))

(assert (=> bs!1504062 (not (= lambda!331097 lambda!331094))))

(declare-fun bs!1504063 () Bool)

(assert (= bs!1504063 (and d!1904415 b!6073970)))

(assert (=> bs!1504063 (not (= lambda!331097 lambda!331047))))

(declare-fun bs!1504064 () Bool)

(assert (= bs!1504064 (and d!1904415 b!6073972)))

(assert (=> bs!1504064 (not (= lambda!331097 lambda!331048))))

(declare-fun bs!1504065 () Bool)

(assert (= bs!1504065 (and d!1904415 b!6073962)))

(assert (=> bs!1504065 (not (= lambda!331097 lambda!331045))))

(declare-fun bs!1504066 () Bool)

(assert (= bs!1504066 (and d!1904415 b!6073960)))

(assert (=> bs!1504066 (not (= lambda!331097 lambda!331044))))

(assert (=> d!1904415 true))

(assert (=> d!1904415 true))

(declare-fun order!27371 () Int)

(declare-fun order!27369 () Int)

(declare-fun dynLambda!25282 (Int Int) Int)

(declare-fun dynLambda!25283 (Int Int) Int)

(assert (=> d!1904415 (< (dynLambda!25282 order!27369 lambda!331043) (dynLambda!25283 order!27371 lambda!331097))))

(assert (=> d!1904415 (forall!15152 (t!377859 lt!2326433) lambda!331097)))

(declare-fun lt!2326599 () Unit!157349)

(declare-fun choose!45255 (List!64418 Int Int Int) Unit!157349)

(assert (=> d!1904415 (= lt!2326599 (choose!45255 (t!377859 lt!2326433) lt!2326530 (zipperDepth!284 (t!377859 lt!2326433)) lambda!331043))))

(assert (=> d!1904415 (>= lt!2326530 (zipperDepth!284 (t!377859 lt!2326433)))))

(assert (=> d!1904415 (= (lemmaForallContextDepthBiggerThanTransitive!163 (t!377859 lt!2326433) lt!2326530 (zipperDepth!284 (t!377859 lt!2326433)) lambda!331043) lt!2326599)))

(declare-fun bs!1504067 () Bool)

(assert (= bs!1504067 d!1904415))

(declare-fun m!6934548 () Bool)

(assert (=> bs!1504067 m!6934548))

(assert (=> bs!1504067 m!6934162))

(declare-fun m!6934550 () Bool)

(assert (=> bs!1504067 m!6934550))

(assert (=> b!6073960 d!1904415))

(assert (=> d!1904163 d!1904181))

(declare-fun d!1904417 () Bool)

(assert (=> d!1904417 (= (flatMap!1552 lt!2326440 lambda!330983) (dynLambda!25275 lambda!330983 lt!2326429))))

(assert (=> d!1904417 true))

(declare-fun _$13!2905 () Unit!157349)

(assert (=> d!1904417 (= (choose!45242 lt!2326440 lt!2326429 lambda!330983) _$13!2905)))

(declare-fun b_lambda!231033 () Bool)

(assert (=> (not b_lambda!231033) (not d!1904417)))

(declare-fun bs!1504068 () Bool)

(assert (= bs!1504068 d!1904417))

(assert (=> bs!1504068 m!6933788))

(assert (=> bs!1504068 m!6933896))

(assert (=> d!1904163 d!1904417))

(declare-fun d!1904419 () Bool)

(assert (=> d!1904419 true))

(assert (=> d!1904419 true))

(declare-fun res!2524063 () Bool)

(assert (=> d!1904419 (= (choose!45249 lambda!330982) res!2524063)))

(assert (=> d!1904279 d!1904419))

(declare-fun b!6074447 () Bool)

(declare-fun e!3707134 () Bool)

(declare-fun call!499845 () Bool)

(assert (=> b!6074447 (= e!3707134 call!499845)))

(declare-fun b!6074448 () Bool)

(declare-fun e!3707136 () Bool)

(declare-fun e!3707139 () Bool)

(assert (=> b!6074448 (= e!3707136 e!3707139)))

(declare-fun c!1090143 () Bool)

(assert (=> b!6074448 (= c!1090143 ((_ is Star!16039) (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292)))))))

(declare-fun b!6074449 () Bool)

(declare-fun e!3707133 () Bool)

(assert (=> b!6074449 (= e!3707139 e!3707133)))

(declare-fun c!1090142 () Bool)

(assert (=> b!6074449 (= c!1090142 ((_ is Union!16039) (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292)))))))

(declare-fun bm!499840 () Bool)

(declare-fun call!499847 () Bool)

(assert (=> bm!499840 (= call!499847 (validRegex!7775 (ite c!1090142 (regTwo!32591 (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292)))) (regTwo!32590 (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292)))))))))

(declare-fun d!1904421 () Bool)

(declare-fun res!2524064 () Bool)

(assert (=> d!1904421 (=> res!2524064 e!3707136)))

(assert (=> d!1904421 (= res!2524064 ((_ is ElementMatch!16039) (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292)))))))

(assert (=> d!1904421 (= (validRegex!7775 (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292)))) e!3707136)))

(declare-fun b!6074450 () Bool)

(declare-fun res!2524067 () Bool)

(declare-fun e!3707138 () Bool)

(assert (=> b!6074450 (=> res!2524067 e!3707138)))

(assert (=> b!6074450 (= res!2524067 (not ((_ is Concat!24884) (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292))))))))

(assert (=> b!6074450 (= e!3707133 e!3707138)))

(declare-fun bm!499841 () Bool)

(assert (=> bm!499841 (= call!499845 (validRegex!7775 (ite c!1090143 (reg!16368 (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292)))) (ite c!1090142 (regOne!32591 (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292)))) (regOne!32590 (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292))))))))))

(declare-fun b!6074451 () Bool)

(declare-fun res!2524066 () Bool)

(declare-fun e!3707137 () Bool)

(assert (=> b!6074451 (=> (not res!2524066) (not e!3707137))))

(declare-fun call!499846 () Bool)

(assert (=> b!6074451 (= res!2524066 call!499846)))

(assert (=> b!6074451 (= e!3707133 e!3707137)))

(declare-fun b!6074452 () Bool)

(declare-fun e!3707135 () Bool)

(assert (=> b!6074452 (= e!3707138 e!3707135)))

(declare-fun res!2524065 () Bool)

(assert (=> b!6074452 (=> (not res!2524065) (not e!3707135))))

(assert (=> b!6074452 (= res!2524065 call!499846)))

(declare-fun b!6074453 () Bool)

(assert (=> b!6074453 (= e!3707137 call!499847)))

(declare-fun bm!499842 () Bool)

(assert (=> bm!499842 (= call!499846 call!499845)))

(declare-fun b!6074454 () Bool)

(assert (=> b!6074454 (= e!3707135 call!499847)))

(declare-fun b!6074455 () Bool)

(assert (=> b!6074455 (= e!3707139 e!3707134)))

(declare-fun res!2524068 () Bool)

(assert (=> b!6074455 (= res!2524068 (not (nullable!6034 (reg!16368 (ite c!1089863 (reg!16368 r!7292) (ite c!1089862 (regOne!32591 r!7292) (regOne!32590 r!7292)))))))))

(assert (=> b!6074455 (=> (not res!2524068) (not e!3707134))))

(assert (= (and d!1904421 (not res!2524064)) b!6074448))

(assert (= (and b!6074448 c!1090143) b!6074455))

(assert (= (and b!6074448 (not c!1090143)) b!6074449))

(assert (= (and b!6074455 res!2524068) b!6074447))

(assert (= (and b!6074449 c!1090142) b!6074451))

(assert (= (and b!6074449 (not c!1090142)) b!6074450))

(assert (= (and b!6074451 res!2524066) b!6074453))

(assert (= (and b!6074450 (not res!2524067)) b!6074452))

(assert (= (and b!6074452 res!2524065) b!6074454))

(assert (= (or b!6074453 b!6074454) bm!499840))

(assert (= (or b!6074451 b!6074452) bm!499842))

(assert (= (or b!6074447 bm!499842) bm!499841))

(declare-fun m!6934552 () Bool)

(assert (=> bm!499840 m!6934552))

(declare-fun m!6934554 () Bool)

(assert (=> bm!499841 m!6934554))

(declare-fun m!6934556 () Bool)

(assert (=> b!6074455 m!6934556))

(assert (=> bm!499708 d!1904421))

(declare-fun d!1904423 () Bool)

(assert (=> d!1904423 (= (isEmpty!36202 (t!377857 (unfocusZipperList!1460 zl!343))) ((_ is Nil!64292) (t!377857 (unfocusZipperList!1460 zl!343))))))

(assert (=> b!6073736 d!1904423))

(declare-fun d!1904425 () Bool)

(assert (=> d!1904425 (= (nullable!6034 (h!70740 (exprs!5923 lt!2326429))) (nullableFct!1997 (h!70740 (exprs!5923 lt!2326429))))))

(declare-fun bs!1504069 () Bool)

(assert (= bs!1504069 d!1904425))

(declare-fun m!6934558 () Bool)

(assert (=> bs!1504069 m!6934558))

(assert (=> b!6073671 d!1904425))

(declare-fun b!6074456 () Bool)

(declare-fun e!3707140 () (InoxSet Context!10846))

(assert (=> b!6074456 (= e!3707140 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6074457 () Bool)

(declare-fun call!499849 () (InoxSet Context!10846))

(assert (=> b!6074457 (= e!3707140 call!499849)))

(declare-fun bm!499844 () Bool)

(declare-fun call!499851 () (InoxSet Context!10846))

(declare-fun call!499850 () (InoxSet Context!10846))

(assert (=> bm!499844 (= call!499851 call!499850)))

(declare-fun b!6074458 () Bool)

(declare-fun e!3707145 () (InoxSet Context!10846))

(declare-fun call!499853 () (InoxSet Context!10846))

(assert (=> b!6074458 (= e!3707145 ((_ map or) call!499853 call!499850))))

(declare-fun bm!499845 () Bool)

(declare-fun call!499852 () List!64416)

(declare-fun call!499848 () List!64416)

(assert (=> bm!499845 (= call!499852 call!499848)))

(declare-fun c!1090146 () Bool)

(declare-fun bm!499846 () Bool)

(assert (=> bm!499846 (= call!499853 (derivationStepZipperDown!1289 (ite c!1090146 (regOne!32591 (h!70740 (exprs!5923 (h!70742 zl!343)))) (regOne!32590 (h!70740 (exprs!5923 (h!70742 zl!343))))) (ite c!1090146 (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343)))) (Context!10847 call!499848)) (h!70741 s!2326)))))

(declare-fun b!6074459 () Bool)

(declare-fun c!1090144 () Bool)

(assert (=> b!6074459 (= c!1090144 ((_ is Star!16039) (h!70740 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun e!3707142 () (InoxSet Context!10846))

(assert (=> b!6074459 (= e!3707142 e!3707140)))

(declare-fun b!6074460 () Bool)

(declare-fun e!3707141 () (InoxSet Context!10846))

(assert (=> b!6074460 (= e!3707141 e!3707142)))

(declare-fun c!1090145 () Bool)

(assert (=> b!6074460 (= c!1090145 ((_ is Concat!24884) (h!70740 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun b!6074461 () Bool)

(declare-fun e!3707144 () Bool)

(assert (=> b!6074461 (= e!3707144 (nullable!6034 (regOne!32590 (h!70740 (exprs!5923 (h!70742 zl!343))))))))

(declare-fun bm!499847 () Bool)

(declare-fun c!1090148 () Bool)

(assert (=> bm!499847 (= call!499848 ($colon$colon!1918 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343))))) (ite (or c!1090148 c!1090145) (regTwo!32590 (h!70740 (exprs!5923 (h!70742 zl!343)))) (h!70740 (exprs!5923 (h!70742 zl!343))))))))

(declare-fun b!6074462 () Bool)

(declare-fun e!3707143 () (InoxSet Context!10846))

(assert (=> b!6074462 (= e!3707143 (store ((as const (Array Context!10846 Bool)) false) (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343)))) true))))

(declare-fun b!6074463 () Bool)

(assert (=> b!6074463 (= c!1090148 e!3707144)))

(declare-fun res!2524069 () Bool)

(assert (=> b!6074463 (=> (not res!2524069) (not e!3707144))))

(assert (=> b!6074463 (= res!2524069 ((_ is Concat!24884) (h!70740 (exprs!5923 (h!70742 zl!343)))))))

(assert (=> b!6074463 (= e!3707145 e!3707141)))

(declare-fun bm!499843 () Bool)

(assert (=> bm!499843 (= call!499850 (derivationStepZipperDown!1289 (ite c!1090146 (regTwo!32591 (h!70740 (exprs!5923 (h!70742 zl!343)))) (ite c!1090148 (regTwo!32590 (h!70740 (exprs!5923 (h!70742 zl!343)))) (ite c!1090145 (regOne!32590 (h!70740 (exprs!5923 (h!70742 zl!343)))) (reg!16368 (h!70740 (exprs!5923 (h!70742 zl!343))))))) (ite (or c!1090146 c!1090148) (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343)))) (Context!10847 call!499852)) (h!70741 s!2326)))))

(declare-fun d!1904427 () Bool)

(declare-fun c!1090147 () Bool)

(assert (=> d!1904427 (= c!1090147 (and ((_ is ElementMatch!16039) (h!70740 (exprs!5923 (h!70742 zl!343)))) (= (c!1089857 (h!70740 (exprs!5923 (h!70742 zl!343)))) (h!70741 s!2326))))))

(assert (=> d!1904427 (= (derivationStepZipperDown!1289 (h!70740 (exprs!5923 (h!70742 zl!343))) (Context!10847 (t!377857 (exprs!5923 (h!70742 zl!343)))) (h!70741 s!2326)) e!3707143)))

(declare-fun b!6074464 () Bool)

(assert (=> b!6074464 (= e!3707142 call!499849)))

(declare-fun bm!499848 () Bool)

(assert (=> bm!499848 (= call!499849 call!499851)))

(declare-fun b!6074465 () Bool)

(assert (=> b!6074465 (= e!3707143 e!3707145)))

(assert (=> b!6074465 (= c!1090146 ((_ is Union!16039) (h!70740 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun b!6074466 () Bool)

(assert (=> b!6074466 (= e!3707141 ((_ map or) call!499853 call!499851))))

(assert (= (and d!1904427 c!1090147) b!6074462))

(assert (= (and d!1904427 (not c!1090147)) b!6074465))

(assert (= (and b!6074465 c!1090146) b!6074458))

(assert (= (and b!6074465 (not c!1090146)) b!6074463))

(assert (= (and b!6074463 res!2524069) b!6074461))

(assert (= (and b!6074463 c!1090148) b!6074466))

(assert (= (and b!6074463 (not c!1090148)) b!6074460))

(assert (= (and b!6074460 c!1090145) b!6074464))

(assert (= (and b!6074460 (not c!1090145)) b!6074459))

(assert (= (and b!6074459 c!1090144) b!6074457))

(assert (= (and b!6074459 (not c!1090144)) b!6074456))

(assert (= (or b!6074464 b!6074457) bm!499845))

(assert (= (or b!6074464 b!6074457) bm!499848))

(assert (= (or b!6074466 bm!499845) bm!499847))

(assert (= (or b!6074466 bm!499848) bm!499844))

(assert (= (or b!6074458 bm!499844) bm!499843))

(assert (= (or b!6074458 b!6074466) bm!499846))

(declare-fun m!6934560 () Bool)

(assert (=> b!6074461 m!6934560))

(declare-fun m!6934562 () Bool)

(assert (=> bm!499843 m!6934562))

(declare-fun m!6934564 () Bool)

(assert (=> bm!499847 m!6934564))

(declare-fun m!6934566 () Bool)

(assert (=> b!6074462 m!6934566))

(declare-fun m!6934568 () Bool)

(assert (=> bm!499846 m!6934568))

(assert (=> bm!499759 d!1904427))

(declare-fun d!1904429 () Bool)

(assert (=> d!1904429 (= (isEmpty!36202 (tail!11688 (exprs!5923 (h!70742 zl!343)))) ((_ is Nil!64292) (tail!11688 (exprs!5923 (h!70742 zl!343)))))))

(assert (=> b!6074197 d!1904429))

(declare-fun d!1904431 () Bool)

(assert (=> d!1904431 (= (tail!11688 (exprs!5923 (h!70742 zl!343))) (t!377857 (exprs!5923 (h!70742 zl!343))))))

(assert (=> b!6074197 d!1904431))

(assert (=> b!6073844 d!1904365))

(declare-fun d!1904433 () Bool)

(assert (=> d!1904433 (= (isDefined!12633 lt!2326544) (not (isEmpty!36206 lt!2326544)))))

(declare-fun bs!1504070 () Bool)

(assert (= bs!1504070 d!1904433))

(declare-fun m!6934570 () Bool)

(assert (=> bs!1504070 m!6934570))

(assert (=> b!6074079 d!1904433))

(declare-fun bs!1504071 () Bool)

(declare-fun d!1904435 () Bool)

(assert (= bs!1504071 (and d!1904435 b!6074441)))

(declare-fun lambda!331104 () Int)

(assert (=> bs!1504071 (not (= lambda!331104 lambda!331093))))

(declare-fun bs!1504072 () Bool)

(assert (= bs!1504072 (and d!1904435 b!6074443)))

(assert (=> bs!1504072 (not (= lambda!331104 lambda!331094))))

(declare-fun bs!1504073 () Bool)

(assert (= bs!1504073 (and d!1904435 b!6073970)))

(assert (=> bs!1504073 (not (= lambda!331104 lambda!331047))))

(declare-fun bs!1504074 () Bool)

(assert (= bs!1504074 (and d!1904435 d!1904415)))

(assert (=> bs!1504074 (not (= lambda!331104 lambda!331097))))

(declare-fun bs!1504075 () Bool)

(assert (= bs!1504075 (and d!1904435 b!6073972)))

(assert (=> bs!1504075 (not (= lambda!331104 lambda!331048))))

(declare-fun bs!1504076 () Bool)

(assert (= bs!1504076 (and d!1904435 b!6073962)))

(assert (=> bs!1504076 (not (= lambda!331104 lambda!331045))))

(declare-fun bs!1504077 () Bool)

(assert (= bs!1504077 (and d!1904435 b!6073960)))

(assert (=> bs!1504077 (not (= lambda!331104 lambda!331044))))

(declare-fun exists!2388 ((InoxSet Context!10846) Int) Bool)

(assert (=> d!1904435 (= (nullableZipper!1828 lt!2326417) (exists!2388 lt!2326417 lambda!331104))))

(declare-fun bs!1504078 () Bool)

(assert (= bs!1504078 d!1904435))

(declare-fun m!6934572 () Bool)

(assert (=> bs!1504078 m!6934572))

(assert (=> b!6073886 d!1904435))

(declare-fun b!6074478 () Bool)

(declare-fun e!3707153 () Bool)

(declare-fun call!499854 () Bool)

(assert (=> b!6074478 (= e!3707153 call!499854)))

(declare-fun b!6074479 () Bool)

(declare-fun e!3707155 () Bool)

(declare-fun e!3707158 () Bool)

(assert (=> b!6074479 (= e!3707155 e!3707158)))

(declare-fun c!1090156 () Bool)

(assert (=> b!6074479 (= c!1090156 ((_ is Star!16039) (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292))))))

(declare-fun b!6074480 () Bool)

(declare-fun e!3707152 () Bool)

(assert (=> b!6074480 (= e!3707158 e!3707152)))

(declare-fun c!1090155 () Bool)

(assert (=> b!6074480 (= c!1090155 ((_ is Union!16039) (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292))))))

(declare-fun bm!499849 () Bool)

(declare-fun call!499856 () Bool)

(assert (=> bm!499849 (= call!499856 (validRegex!7775 (ite c!1090155 (regTwo!32591 (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292))) (regTwo!32590 (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292))))))))

(declare-fun d!1904437 () Bool)

(declare-fun res!2524073 () Bool)

(assert (=> d!1904437 (=> res!2524073 e!3707155)))

(assert (=> d!1904437 (= res!2524073 ((_ is ElementMatch!16039) (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292))))))

(assert (=> d!1904437 (= (validRegex!7775 (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292))) e!3707155)))

(declare-fun b!6074481 () Bool)

(declare-fun res!2524076 () Bool)

(declare-fun e!3707157 () Bool)

(assert (=> b!6074481 (=> res!2524076 e!3707157)))

(assert (=> b!6074481 (= res!2524076 (not ((_ is Concat!24884) (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292)))))))

(assert (=> b!6074481 (= e!3707152 e!3707157)))

(declare-fun bm!499850 () Bool)

(assert (=> bm!499850 (= call!499854 (validRegex!7775 (ite c!1090156 (reg!16368 (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292))) (ite c!1090155 (regOne!32591 (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292))) (regOne!32590 (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292)))))))))

(declare-fun b!6074482 () Bool)

(declare-fun res!2524075 () Bool)

(declare-fun e!3707156 () Bool)

(assert (=> b!6074482 (=> (not res!2524075) (not e!3707156))))

(declare-fun call!499855 () Bool)

(assert (=> b!6074482 (= res!2524075 call!499855)))

(assert (=> b!6074482 (= e!3707152 e!3707156)))

(declare-fun b!6074483 () Bool)

(declare-fun e!3707154 () Bool)

(assert (=> b!6074483 (= e!3707157 e!3707154)))

(declare-fun res!2524074 () Bool)

(assert (=> b!6074483 (=> (not res!2524074) (not e!3707154))))

(assert (=> b!6074483 (= res!2524074 call!499855)))

(declare-fun b!6074484 () Bool)

(assert (=> b!6074484 (= e!3707156 call!499856)))

(declare-fun bm!499851 () Bool)

(assert (=> bm!499851 (= call!499855 call!499854)))

(declare-fun b!6074485 () Bool)

(assert (=> b!6074485 (= e!3707154 call!499856)))

(declare-fun b!6074486 () Bool)

(assert (=> b!6074486 (= e!3707158 e!3707153)))

(declare-fun res!2524077 () Bool)

(assert (=> b!6074486 (= res!2524077 (not (nullable!6034 (reg!16368 (ite c!1089862 (regTwo!32591 r!7292) (regTwo!32590 r!7292))))))))

(assert (=> b!6074486 (=> (not res!2524077) (not e!3707153))))

(assert (= (and d!1904437 (not res!2524073)) b!6074479))

(assert (= (and b!6074479 c!1090156) b!6074486))

(assert (= (and b!6074479 (not c!1090156)) b!6074480))

(assert (= (and b!6074486 res!2524077) b!6074478))

(assert (= (and b!6074480 c!1090155) b!6074482))

(assert (= (and b!6074480 (not c!1090155)) b!6074481))

(assert (= (and b!6074482 res!2524075) b!6074484))

(assert (= (and b!6074481 (not res!2524076)) b!6074483))

(assert (= (and b!6074483 res!2524074) b!6074485))

(assert (= (or b!6074484 b!6074485) bm!499849))

(assert (= (or b!6074482 b!6074483) bm!499851))

(assert (= (or b!6074478 bm!499851) bm!499850))

(declare-fun m!6934574 () Bool)

(assert (=> bm!499849 m!6934574))

(declare-fun m!6934576 () Bool)

(assert (=> bm!499850 m!6934576))

(declare-fun m!6934578 () Bool)

(assert (=> b!6074486 m!6934578))

(assert (=> bm!499707 d!1904437))

(declare-fun d!1904439 () Bool)

(assert (=> d!1904439 (= (isEmptyLang!1468 lt!2326478) ((_ is EmptyLang!16039) lt!2326478))))

(assert (=> b!6073734 d!1904439))

(declare-fun d!1904441 () Bool)

(assert (=> d!1904441 (= (head!12603 (exprs!5923 (h!70742 zl!343))) (h!70740 (exprs!5923 (h!70742 zl!343))))))

(assert (=> b!6074191 d!1904441))

(assert (=> d!1904167 d!1904177))

(declare-fun d!1904443 () Bool)

(assert (=> d!1904443 (= (flatMap!1552 lt!2326417 lambda!330983) (dynLambda!25275 lambda!330983 lt!2326422))))

(assert (=> d!1904443 true))

(declare-fun _$13!2906 () Unit!157349)

(assert (=> d!1904443 (= (choose!45242 lt!2326417 lt!2326422 lambda!330983) _$13!2906)))

(declare-fun b_lambda!231035 () Bool)

(assert (=> (not b_lambda!231035) (not d!1904443)))

(declare-fun bs!1504096 () Bool)

(assert (= bs!1504096 d!1904443))

(assert (=> bs!1504096 m!6933786))

(assert (=> bs!1504096 m!6933900))

(assert (=> d!1904167 d!1904443))

(declare-fun d!1904445 () Bool)

(assert (=> d!1904445 (= (flatMap!1552 z!1189 lambda!331061) (choose!45243 z!1189 lambda!331061))))

(declare-fun bs!1504097 () Bool)

(assert (= bs!1504097 d!1904445))

(declare-fun m!6934580 () Bool)

(assert (=> bs!1504097 m!6934580))

(assert (=> d!1904295 d!1904445))

(declare-fun d!1904447 () Bool)

(assert (=> d!1904447 true))

(declare-fun setRes!41067 () Bool)

(assert (=> d!1904447 setRes!41067))

(declare-fun condSetEmpty!41067 () Bool)

(declare-fun res!2524090 () (InoxSet Context!10846))

(assert (=> d!1904447 (= condSetEmpty!41067 (= res!2524090 ((as const (Array Context!10846 Bool)) false)))))

(assert (=> d!1904447 (= (choose!45243 z!1189 lambda!330983) res!2524090)))

(declare-fun setIsEmpty!41067 () Bool)

(assert (=> setIsEmpty!41067 setRes!41067))

(declare-fun setElem!41067 () Context!10846)

(declare-fun e!3707170 () Bool)

(declare-fun tp!1693175 () Bool)

(declare-fun setNonEmpty!41067 () Bool)

(assert (=> setNonEmpty!41067 (= setRes!41067 (and tp!1693175 (inv!83344 setElem!41067) e!3707170))))

(declare-fun setRest!41067 () (InoxSet Context!10846))

(assert (=> setNonEmpty!41067 (= res!2524090 ((_ map or) (store ((as const (Array Context!10846 Bool)) false) setElem!41067 true) setRest!41067))))

(declare-fun b!6074505 () Bool)

(declare-fun tp!1693174 () Bool)

(assert (=> b!6074505 (= e!3707170 tp!1693174)))

(assert (= (and d!1904447 condSetEmpty!41067) setIsEmpty!41067))

(assert (= (and d!1904447 (not condSetEmpty!41067)) setNonEmpty!41067))

(assert (= setNonEmpty!41067 b!6074505))

(declare-fun m!6934600 () Bool)

(assert (=> setNonEmpty!41067 m!6934600))

(assert (=> d!1904185 d!1904447))

(declare-fun d!1904455 () Bool)

(declare-fun res!2524091 () Bool)

(declare-fun e!3707171 () Bool)

(assert (=> d!1904455 (=> res!2524091 e!3707171)))

(assert (=> d!1904455 (= res!2524091 ((_ is Nil!64294) (Cons!64294 lt!2326421 Nil!64294)))))

(assert (=> d!1904455 (= (forall!15152 (Cons!64294 lt!2326421 Nil!64294) lambda!331048) e!3707171)))

(declare-fun b!6074506 () Bool)

(declare-fun e!3707172 () Bool)

(assert (=> b!6074506 (= e!3707171 e!3707172)))

(declare-fun res!2524092 () Bool)

(assert (=> b!6074506 (=> (not res!2524092) (not e!3707172))))

(assert (=> b!6074506 (= res!2524092 (dynLambda!25281 lambda!331048 (h!70742 (Cons!64294 lt!2326421 Nil!64294))))))

(declare-fun b!6074507 () Bool)

(assert (=> b!6074507 (= e!3707172 (forall!15152 (t!377859 (Cons!64294 lt!2326421 Nil!64294)) lambda!331048))))

(assert (= (and d!1904455 (not res!2524091)) b!6074506))

(assert (= (and b!6074506 res!2524092) b!6074507))

(declare-fun b_lambda!231039 () Bool)

(assert (=> (not b_lambda!231039) (not b!6074506)))

(declare-fun m!6934602 () Bool)

(assert (=> b!6074506 m!6934602))

(declare-fun m!6934604 () Bool)

(assert (=> b!6074507 m!6934604))

(assert (=> b!6073972 d!1904455))

(declare-fun d!1904457 () Bool)

(declare-fun res!2524097 () Bool)

(declare-fun e!3707177 () Bool)

(assert (=> d!1904457 (=> res!2524097 e!3707177)))

(assert (=> d!1904457 (= res!2524097 ((_ is Nil!64292) (exprs!5923 (h!70742 zl!343))))))

(assert (=> d!1904457 (= (forall!15151 (exprs!5923 (h!70742 zl!343)) lambda!331071) e!3707177)))

(declare-fun b!6074512 () Bool)

(declare-fun e!3707178 () Bool)

(assert (=> b!6074512 (= e!3707177 e!3707178)))

(declare-fun res!2524098 () Bool)

(assert (=> b!6074512 (=> (not res!2524098) (not e!3707178))))

(declare-fun dynLambda!25284 (Int Regex!16039) Bool)

(assert (=> b!6074512 (= res!2524098 (dynLambda!25284 lambda!331071 (h!70740 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun b!6074513 () Bool)

(assert (=> b!6074513 (= e!3707178 (forall!15151 (t!377857 (exprs!5923 (h!70742 zl!343))) lambda!331071))))

(assert (= (and d!1904457 (not res!2524097)) b!6074512))

(assert (= (and b!6074512 res!2524098) b!6074513))

(declare-fun b_lambda!231041 () Bool)

(assert (=> (not b_lambda!231041) (not b!6074512)))

(declare-fun m!6934620 () Bool)

(assert (=> b!6074512 m!6934620))

(declare-fun m!6934622 () Bool)

(assert (=> b!6074513 m!6934622))

(assert (=> d!1904307 d!1904457))

(declare-fun b!6074514 () Bool)

(declare-fun e!3707180 () (InoxSet Context!10846))

(assert (=> b!6074514 (= e!3707180 ((as const (Array Context!10846 Bool)) false))))

(declare-fun bm!499853 () Bool)

(declare-fun call!499858 () (InoxSet Context!10846))

(assert (=> bm!499853 (= call!499858 (derivationStepZipperDown!1289 (h!70740 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326421))))) (Context!10847 (t!377857 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326421)))))) (h!70741 s!2326)))))

(declare-fun b!6074515 () Bool)

(declare-fun e!3707179 () Bool)

(assert (=> b!6074515 (= e!3707179 (nullable!6034 (h!70740 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326421)))))))))

(declare-fun b!6074516 () Bool)

(declare-fun e!3707181 () (InoxSet Context!10846))

(assert (=> b!6074516 (= e!3707181 e!3707180)))

(declare-fun c!1090161 () Bool)

(assert (=> b!6074516 (= c!1090161 ((_ is Cons!64292) (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326421))))))))

(declare-fun d!1904461 () Bool)

(declare-fun c!1090160 () Bool)

(assert (=> d!1904461 (= c!1090160 e!3707179)))

(declare-fun res!2524099 () Bool)

(assert (=> d!1904461 (=> (not res!2524099) (not e!3707179))))

(assert (=> d!1904461 (= res!2524099 ((_ is Cons!64292) (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326421))))))))

(assert (=> d!1904461 (= (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 lt!2326421))) (h!70741 s!2326)) e!3707181)))

(declare-fun b!6074517 () Bool)

(assert (=> b!6074517 (= e!3707180 call!499858)))

(declare-fun b!6074518 () Bool)

(assert (=> b!6074518 (= e!3707181 ((_ map or) call!499858 (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326421)))))) (h!70741 s!2326))))))

(assert (= (and d!1904461 res!2524099) b!6074515))

(assert (= (and d!1904461 c!1090160) b!6074518))

(assert (= (and d!1904461 (not c!1090160)) b!6074516))

(assert (= (and b!6074516 c!1090161) b!6074517))

(assert (= (and b!6074516 (not c!1090161)) b!6074514))

(assert (= (or b!6074518 b!6074517) bm!499853))

(declare-fun m!6934624 () Bool)

(assert (=> bm!499853 m!6934624))

(declare-fun m!6934626 () Bool)

(assert (=> b!6074515 m!6934626))

(declare-fun m!6934628 () Bool)

(assert (=> b!6074518 m!6934628))

(assert (=> b!6074108 d!1904461))

(declare-fun d!1904463 () Bool)

(declare-fun res!2524104 () Bool)

(declare-fun e!3707186 () Bool)

(assert (=> d!1904463 (=> res!2524104 e!3707186)))

(assert (=> d!1904463 (= res!2524104 ((_ is Nil!64294) lt!2326562))))

(assert (=> d!1904463 (= (noDuplicate!1888 lt!2326562) e!3707186)))

(declare-fun b!6074523 () Bool)

(declare-fun e!3707187 () Bool)

(assert (=> b!6074523 (= e!3707186 e!3707187)))

(declare-fun res!2524105 () Bool)

(assert (=> b!6074523 (=> (not res!2524105) (not e!3707187))))

(declare-fun contains!20006 (List!64418 Context!10846) Bool)

(assert (=> b!6074523 (= res!2524105 (not (contains!20006 (t!377859 lt!2326562) (h!70742 lt!2326562))))))

(declare-fun b!6074524 () Bool)

(assert (=> b!6074524 (= e!3707187 (noDuplicate!1888 (t!377859 lt!2326562)))))

(assert (= (and d!1904463 (not res!2524104)) b!6074523))

(assert (= (and b!6074523 res!2524105) b!6074524))

(declare-fun m!6934630 () Bool)

(assert (=> b!6074523 m!6934630))

(declare-fun m!6934632 () Bool)

(assert (=> b!6074524 m!6934632))

(assert (=> d!1904303 d!1904463))

(declare-fun d!1904465 () Bool)

(declare-fun e!3707204 () Bool)

(assert (=> d!1904465 e!3707204))

(declare-fun res!2524110 () Bool)

(assert (=> d!1904465 (=> (not res!2524110) (not e!3707204))))

(declare-fun res!2524111 () List!64418)

(assert (=> d!1904465 (= res!2524110 (noDuplicate!1888 res!2524111))))

(declare-fun e!3707205 () Bool)

(assert (=> d!1904465 e!3707205))

(assert (=> d!1904465 (= (choose!45253 z!1189) res!2524111)))

(declare-fun b!6074552 () Bool)

(declare-fun e!3707206 () Bool)

(declare-fun tp!1693181 () Bool)

(assert (=> b!6074552 (= e!3707206 tp!1693181)))

(declare-fun tp!1693180 () Bool)

(declare-fun b!6074551 () Bool)

(assert (=> b!6074551 (= e!3707205 (and (inv!83344 (h!70742 res!2524111)) e!3707206 tp!1693180))))

(declare-fun b!6074553 () Bool)

(assert (=> b!6074553 (= e!3707204 (= (content!11909 res!2524111) z!1189))))

(assert (= b!6074551 b!6074552))

(assert (= (and d!1904465 ((_ is Cons!64294) res!2524111)) b!6074551))

(assert (= (and d!1904465 res!2524110) b!6074553))

(declare-fun m!6934634 () Bool)

(assert (=> d!1904465 m!6934634))

(declare-fun m!6934636 () Bool)

(assert (=> b!6074551 m!6934636))

(declare-fun m!6934638 () Bool)

(assert (=> b!6074553 m!6934638))

(assert (=> d!1904303 d!1904465))

(declare-fun d!1904467 () Bool)

(assert (=> d!1904467 (= (isEmpty!36205 (tail!11689 s!2326)) ((_ is Nil!64293) (tail!11689 s!2326)))))

(assert (=> b!6073840 d!1904467))

(assert (=> b!6073840 d!1904367))

(declare-fun bs!1504099 () Bool)

(declare-fun d!1904469 () Bool)

(assert (= bs!1504099 (and d!1904469 d!1904305)))

(declare-fun lambda!331107 () Int)

(assert (=> bs!1504099 (= lambda!331107 lambda!331070)))

(declare-fun bs!1504100 () Bool)

(assert (= bs!1504100 (and d!1904469 d!1904201)))

(assert (=> bs!1504100 (= lambda!331107 lambda!331013)))

(declare-fun bs!1504101 () Bool)

(assert (= bs!1504101 (and d!1904469 d!1904353)))

(assert (=> bs!1504101 (= lambda!331107 lambda!331073)))

(declare-fun bs!1504102 () Bool)

(assert (= bs!1504102 (and d!1904469 b!6074429)))

(assert (=> bs!1504102 (not (= lambda!331107 lambda!331090))))

(declare-fun bs!1504103 () Bool)

(assert (= bs!1504103 (and d!1904469 d!1904269)))

(assert (=> bs!1504103 (= lambda!331107 lambda!331049)))

(declare-fun bs!1504104 () Bool)

(assert (= bs!1504104 (and d!1904469 d!1904207)))

(assert (=> bs!1504104 (= lambda!331107 lambda!331016)))

(declare-fun bs!1504105 () Bool)

(assert (= bs!1504105 (and d!1904469 b!6074431)))

(assert (=> bs!1504105 (not (= lambda!331107 lambda!331091))))

(declare-fun bs!1504106 () Bool)

(assert (= bs!1504106 (and d!1904469 d!1904191)))

(assert (=> bs!1504106 (= lambda!331107 lambda!331004)))

(declare-fun bs!1504107 () Bool)

(assert (= bs!1504107 (and d!1904469 d!1904307)))

(assert (=> bs!1504107 (= lambda!331107 lambda!331071)))

(declare-fun bs!1504108 () Bool)

(assert (= bs!1504108 (and d!1904469 d!1904369)))

(assert (=> bs!1504108 (= lambda!331107 lambda!331077)))

(assert (=> d!1904469 (= (inv!83344 setElem!41064) (forall!15151 (exprs!5923 setElem!41064) lambda!331107))))

(declare-fun bs!1504109 () Bool)

(assert (= bs!1504109 d!1904469))

(declare-fun m!6934640 () Bool)

(assert (=> bs!1504109 m!6934640))

(assert (=> setNonEmpty!41064 d!1904469))

(declare-fun d!1904471 () Bool)

(declare-fun res!2524112 () Bool)

(declare-fun e!3707207 () Bool)

(assert (=> d!1904471 (=> res!2524112 e!3707207)))

(assert (=> d!1904471 (= res!2524112 ((_ is Nil!64292) (exprs!5923 lt!2326429)))))

(assert (=> d!1904471 (= (forall!15151 (exprs!5923 lt!2326429) lambda!331016) e!3707207)))

(declare-fun b!6074554 () Bool)

(declare-fun e!3707208 () Bool)

(assert (=> b!6074554 (= e!3707207 e!3707208)))

(declare-fun res!2524113 () Bool)

(assert (=> b!6074554 (=> (not res!2524113) (not e!3707208))))

(assert (=> b!6074554 (= res!2524113 (dynLambda!25284 lambda!331016 (h!70740 (exprs!5923 lt!2326429))))))

(declare-fun b!6074555 () Bool)

(assert (=> b!6074555 (= e!3707208 (forall!15151 (t!377857 (exprs!5923 lt!2326429)) lambda!331016))))

(assert (= (and d!1904471 (not res!2524112)) b!6074554))

(assert (= (and b!6074554 res!2524113) b!6074555))

(declare-fun b_lambda!231043 () Bool)

(assert (=> (not b_lambda!231043) (not b!6074554)))

(declare-fun m!6934642 () Bool)

(assert (=> b!6074554 m!6934642))

(declare-fun m!6934644 () Bool)

(assert (=> b!6074555 m!6934644))

(assert (=> d!1904207 d!1904471))

(assert (=> d!1904209 d!1904389))

(declare-fun b!6074556 () Bool)

(declare-fun e!3707210 () Bool)

(declare-fun call!499867 () Bool)

(assert (=> b!6074556 (= e!3707210 call!499867)))

(declare-fun b!6074557 () Bool)

(declare-fun e!3707212 () Bool)

(declare-fun e!3707215 () Bool)

(assert (=> b!6074557 (= e!3707212 e!3707215)))

(declare-fun c!1090173 () Bool)

(assert (=> b!6074557 (= c!1090173 ((_ is Star!16039) lt!2326431))))

(declare-fun b!6074558 () Bool)

(declare-fun e!3707209 () Bool)

(assert (=> b!6074558 (= e!3707215 e!3707209)))

(declare-fun c!1090172 () Bool)

(assert (=> b!6074558 (= c!1090172 ((_ is Union!16039) lt!2326431))))

(declare-fun bm!499862 () Bool)

(declare-fun call!499869 () Bool)

(assert (=> bm!499862 (= call!499869 (validRegex!7775 (ite c!1090172 (regTwo!32591 lt!2326431) (regTwo!32590 lt!2326431))))))

(declare-fun d!1904473 () Bool)

(declare-fun res!2524114 () Bool)

(assert (=> d!1904473 (=> res!2524114 e!3707212)))

(assert (=> d!1904473 (= res!2524114 ((_ is ElementMatch!16039) lt!2326431))))

(assert (=> d!1904473 (= (validRegex!7775 lt!2326431) e!3707212)))

(declare-fun b!6074559 () Bool)

(declare-fun res!2524117 () Bool)

(declare-fun e!3707214 () Bool)

(assert (=> b!6074559 (=> res!2524117 e!3707214)))

(assert (=> b!6074559 (= res!2524117 (not ((_ is Concat!24884) lt!2326431)))))

(assert (=> b!6074559 (= e!3707209 e!3707214)))

(declare-fun bm!499863 () Bool)

(assert (=> bm!499863 (= call!499867 (validRegex!7775 (ite c!1090173 (reg!16368 lt!2326431) (ite c!1090172 (regOne!32591 lt!2326431) (regOne!32590 lt!2326431)))))))

(declare-fun b!6074560 () Bool)

(declare-fun res!2524116 () Bool)

(declare-fun e!3707213 () Bool)

(assert (=> b!6074560 (=> (not res!2524116) (not e!3707213))))

(declare-fun call!499868 () Bool)

(assert (=> b!6074560 (= res!2524116 call!499868)))

(assert (=> b!6074560 (= e!3707209 e!3707213)))

(declare-fun b!6074561 () Bool)

(declare-fun e!3707211 () Bool)

(assert (=> b!6074561 (= e!3707214 e!3707211)))

(declare-fun res!2524115 () Bool)

(assert (=> b!6074561 (=> (not res!2524115) (not e!3707211))))

(assert (=> b!6074561 (= res!2524115 call!499868)))

(declare-fun b!6074562 () Bool)

(assert (=> b!6074562 (= e!3707213 call!499869)))

(declare-fun bm!499864 () Bool)

(assert (=> bm!499864 (= call!499868 call!499867)))

(declare-fun b!6074563 () Bool)

(assert (=> b!6074563 (= e!3707211 call!499869)))

(declare-fun b!6074564 () Bool)

(assert (=> b!6074564 (= e!3707215 e!3707210)))

(declare-fun res!2524118 () Bool)

(assert (=> b!6074564 (= res!2524118 (not (nullable!6034 (reg!16368 lt!2326431))))))

(assert (=> b!6074564 (=> (not res!2524118) (not e!3707210))))

(assert (= (and d!1904473 (not res!2524114)) b!6074557))

(assert (= (and b!6074557 c!1090173) b!6074564))

(assert (= (and b!6074557 (not c!1090173)) b!6074558))

(assert (= (and b!6074564 res!2524118) b!6074556))

(assert (= (and b!6074558 c!1090172) b!6074560))

(assert (= (and b!6074558 (not c!1090172)) b!6074559))

(assert (= (and b!6074560 res!2524116) b!6074562))

(assert (= (and b!6074559 (not res!2524117)) b!6074561))

(assert (= (and b!6074561 res!2524115) b!6074563))

(assert (= (or b!6074562 b!6074563) bm!499862))

(assert (= (or b!6074560 b!6074561) bm!499864))

(assert (= (or b!6074556 bm!499864) bm!499863))

(declare-fun m!6934646 () Bool)

(assert (=> bm!499862 m!6934646))

(declare-fun m!6934648 () Bool)

(assert (=> bm!499863 m!6934648))

(declare-fun m!6934650 () Bool)

(assert (=> b!6074564 m!6934650))

(assert (=> d!1904209 d!1904473))

(declare-fun b!6074565 () Bool)

(declare-fun e!3707216 () (InoxSet Context!10846))

(assert (=> b!6074565 (= e!3707216 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6074566 () Bool)

(declare-fun call!499871 () (InoxSet Context!10846))

(assert (=> b!6074566 (= e!3707216 call!499871)))

(declare-fun bm!499866 () Bool)

(declare-fun call!499873 () (InoxSet Context!10846))

(declare-fun call!499872 () (InoxSet Context!10846))

(assert (=> bm!499866 (= call!499873 call!499872)))

(declare-fun b!6074567 () Bool)

(declare-fun e!3707221 () (InoxSet Context!10846))

(declare-fun call!499875 () (InoxSet Context!10846))

(assert (=> b!6074567 (= e!3707221 ((_ map or) call!499875 call!499872))))

(declare-fun bm!499867 () Bool)

(declare-fun call!499874 () List!64416)

(declare-fun call!499870 () List!64416)

(assert (=> bm!499867 (= call!499874 call!499870)))

(declare-fun c!1090176 () Bool)

(declare-fun bm!499868 () Bool)

(assert (=> bm!499868 (= call!499875 (derivationStepZipperDown!1289 (ite c!1090176 (regOne!32591 (h!70740 (exprs!5923 lt!2326422))) (regOne!32590 (h!70740 (exprs!5923 lt!2326422)))) (ite c!1090176 (Context!10847 (t!377857 (exprs!5923 lt!2326422))) (Context!10847 call!499870)) (h!70741 s!2326)))))

(declare-fun b!6074568 () Bool)

(declare-fun c!1090174 () Bool)

(assert (=> b!6074568 (= c!1090174 ((_ is Star!16039) (h!70740 (exprs!5923 lt!2326422))))))

(declare-fun e!3707218 () (InoxSet Context!10846))

(assert (=> b!6074568 (= e!3707218 e!3707216)))

(declare-fun b!6074569 () Bool)

(declare-fun e!3707217 () (InoxSet Context!10846))

(assert (=> b!6074569 (= e!3707217 e!3707218)))

(declare-fun c!1090175 () Bool)

(assert (=> b!6074569 (= c!1090175 ((_ is Concat!24884) (h!70740 (exprs!5923 lt!2326422))))))

(declare-fun b!6074570 () Bool)

(declare-fun e!3707220 () Bool)

(assert (=> b!6074570 (= e!3707220 (nullable!6034 (regOne!32590 (h!70740 (exprs!5923 lt!2326422)))))))

(declare-fun c!1090178 () Bool)

(declare-fun bm!499869 () Bool)

(assert (=> bm!499869 (= call!499870 ($colon$colon!1918 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326422)))) (ite (or c!1090178 c!1090175) (regTwo!32590 (h!70740 (exprs!5923 lt!2326422))) (h!70740 (exprs!5923 lt!2326422)))))))

(declare-fun b!6074571 () Bool)

(declare-fun e!3707219 () (InoxSet Context!10846))

(assert (=> b!6074571 (= e!3707219 (store ((as const (Array Context!10846 Bool)) false) (Context!10847 (t!377857 (exprs!5923 lt!2326422))) true))))

(declare-fun b!6074572 () Bool)

(assert (=> b!6074572 (= c!1090178 e!3707220)))

(declare-fun res!2524119 () Bool)

(assert (=> b!6074572 (=> (not res!2524119) (not e!3707220))))

(assert (=> b!6074572 (= res!2524119 ((_ is Concat!24884) (h!70740 (exprs!5923 lt!2326422))))))

(assert (=> b!6074572 (= e!3707221 e!3707217)))

(declare-fun bm!499865 () Bool)

(assert (=> bm!499865 (= call!499872 (derivationStepZipperDown!1289 (ite c!1090176 (regTwo!32591 (h!70740 (exprs!5923 lt!2326422))) (ite c!1090178 (regTwo!32590 (h!70740 (exprs!5923 lt!2326422))) (ite c!1090175 (regOne!32590 (h!70740 (exprs!5923 lt!2326422))) (reg!16368 (h!70740 (exprs!5923 lt!2326422)))))) (ite (or c!1090176 c!1090178) (Context!10847 (t!377857 (exprs!5923 lt!2326422))) (Context!10847 call!499874)) (h!70741 s!2326)))))

(declare-fun d!1904475 () Bool)

(declare-fun c!1090177 () Bool)

(assert (=> d!1904475 (= c!1090177 (and ((_ is ElementMatch!16039) (h!70740 (exprs!5923 lt!2326422))) (= (c!1089857 (h!70740 (exprs!5923 lt!2326422))) (h!70741 s!2326))))))

(assert (=> d!1904475 (= (derivationStepZipperDown!1289 (h!70740 (exprs!5923 lt!2326422)) (Context!10847 (t!377857 (exprs!5923 lt!2326422))) (h!70741 s!2326)) e!3707219)))

(declare-fun b!6074573 () Bool)

(assert (=> b!6074573 (= e!3707218 call!499871)))

(declare-fun bm!499870 () Bool)

(assert (=> bm!499870 (= call!499871 call!499873)))

(declare-fun b!6074574 () Bool)

(assert (=> b!6074574 (= e!3707219 e!3707221)))

(assert (=> b!6074574 (= c!1090176 ((_ is Union!16039) (h!70740 (exprs!5923 lt!2326422))))))

(declare-fun b!6074575 () Bool)

(assert (=> b!6074575 (= e!3707217 ((_ map or) call!499875 call!499873))))

(assert (= (and d!1904475 c!1090177) b!6074571))

(assert (= (and d!1904475 (not c!1090177)) b!6074574))

(assert (= (and b!6074574 c!1090176) b!6074567))

(assert (= (and b!6074574 (not c!1090176)) b!6074572))

(assert (= (and b!6074572 res!2524119) b!6074570))

(assert (= (and b!6074572 c!1090178) b!6074575))

(assert (= (and b!6074572 (not c!1090178)) b!6074569))

(assert (= (and b!6074569 c!1090175) b!6074573))

(assert (= (and b!6074569 (not c!1090175)) b!6074568))

(assert (= (and b!6074568 c!1090174) b!6074566))

(assert (= (and b!6074568 (not c!1090174)) b!6074565))

(assert (= (or b!6074573 b!6074566) bm!499867))

(assert (= (or b!6074573 b!6074566) bm!499870))

(assert (= (or b!6074575 bm!499867) bm!499869))

(assert (= (or b!6074575 bm!499870) bm!499866))

(assert (= (or b!6074567 bm!499866) bm!499865))

(assert (= (or b!6074567 b!6074575) bm!499868))

(declare-fun m!6934652 () Bool)

(assert (=> b!6074570 m!6934652))

(declare-fun m!6934654 () Bool)

(assert (=> bm!499865 m!6934654))

(declare-fun m!6934656 () Bool)

(assert (=> bm!499869 m!6934656))

(declare-fun m!6934658 () Bool)

(assert (=> b!6074571 m!6934658))

(declare-fun m!6934660 () Bool)

(assert (=> bm!499868 m!6934660))

(assert (=> bm!499751 d!1904475))

(declare-fun d!1904477 () Bool)

(assert (=> d!1904477 (= ($colon$colon!1918 (exprs!5923 lt!2326429) (ite (or c!1089901 c!1089898) (regTwo!32590 (regOne!32590 r!7292)) (regOne!32590 r!7292))) (Cons!64292 (ite (or c!1089901 c!1089898) (regTwo!32590 (regOne!32590 r!7292)) (regOne!32590 r!7292)) (exprs!5923 lt!2326429)))))

(assert (=> bm!499747 d!1904477))

(declare-fun b!6074586 () Bool)

(declare-fun e!3707228 () Bool)

(declare-fun call!499880 () Bool)

(assert (=> b!6074586 (= e!3707228 call!499880)))

(declare-fun b!6074587 () Bool)

(declare-fun e!3707230 () Bool)

(declare-fun e!3707233 () Bool)

(assert (=> b!6074587 (= e!3707230 e!3707233)))

(declare-fun c!1090185 () Bool)

(assert (=> b!6074587 (= c!1090185 ((_ is Star!16039) lt!2326478))))

(declare-fun b!6074588 () Bool)

(declare-fun e!3707227 () Bool)

(assert (=> b!6074588 (= e!3707233 e!3707227)))

(declare-fun c!1090184 () Bool)

(assert (=> b!6074588 (= c!1090184 ((_ is Union!16039) lt!2326478))))

(declare-fun bm!499875 () Bool)

(declare-fun call!499882 () Bool)

(assert (=> bm!499875 (= call!499882 (validRegex!7775 (ite c!1090184 (regTwo!32591 lt!2326478) (regTwo!32590 lt!2326478))))))

(declare-fun d!1904479 () Bool)

(declare-fun res!2524120 () Bool)

(assert (=> d!1904479 (=> res!2524120 e!3707230)))

(assert (=> d!1904479 (= res!2524120 ((_ is ElementMatch!16039) lt!2326478))))

(assert (=> d!1904479 (= (validRegex!7775 lt!2326478) e!3707230)))

(declare-fun b!6074589 () Bool)

(declare-fun res!2524123 () Bool)

(declare-fun e!3707232 () Bool)

(assert (=> b!6074589 (=> res!2524123 e!3707232)))

(assert (=> b!6074589 (= res!2524123 (not ((_ is Concat!24884) lt!2326478)))))

(assert (=> b!6074589 (= e!3707227 e!3707232)))

(declare-fun bm!499876 () Bool)

(assert (=> bm!499876 (= call!499880 (validRegex!7775 (ite c!1090185 (reg!16368 lt!2326478) (ite c!1090184 (regOne!32591 lt!2326478) (regOne!32590 lt!2326478)))))))

(declare-fun b!6074590 () Bool)

(declare-fun res!2524122 () Bool)

(declare-fun e!3707231 () Bool)

(assert (=> b!6074590 (=> (not res!2524122) (not e!3707231))))

(declare-fun call!499881 () Bool)

(assert (=> b!6074590 (= res!2524122 call!499881)))

(assert (=> b!6074590 (= e!3707227 e!3707231)))

(declare-fun b!6074591 () Bool)

(declare-fun e!3707229 () Bool)

(assert (=> b!6074591 (= e!3707232 e!3707229)))

(declare-fun res!2524121 () Bool)

(assert (=> b!6074591 (=> (not res!2524121) (not e!3707229))))

(assert (=> b!6074591 (= res!2524121 call!499881)))

(declare-fun b!6074592 () Bool)

(assert (=> b!6074592 (= e!3707231 call!499882)))

(declare-fun bm!499877 () Bool)

(assert (=> bm!499877 (= call!499881 call!499880)))

(declare-fun b!6074593 () Bool)

(assert (=> b!6074593 (= e!3707229 call!499882)))

(declare-fun b!6074594 () Bool)

(assert (=> b!6074594 (= e!3707233 e!3707228)))

(declare-fun res!2524124 () Bool)

(assert (=> b!6074594 (= res!2524124 (not (nullable!6034 (reg!16368 lt!2326478))))))

(assert (=> b!6074594 (=> (not res!2524124) (not e!3707228))))

(assert (= (and d!1904479 (not res!2524120)) b!6074587))

(assert (= (and b!6074587 c!1090185) b!6074594))

(assert (= (and b!6074587 (not c!1090185)) b!6074588))

(assert (= (and b!6074594 res!2524124) b!6074586))

(assert (= (and b!6074588 c!1090184) b!6074590))

(assert (= (and b!6074588 (not c!1090184)) b!6074589))

(assert (= (and b!6074590 res!2524122) b!6074592))

(assert (= (and b!6074589 (not res!2524123)) b!6074591))

(assert (= (and b!6074591 res!2524121) b!6074593))

(assert (= (or b!6074592 b!6074593) bm!499875))

(assert (= (or b!6074590 b!6074591) bm!499877))

(assert (= (or b!6074586 bm!499877) bm!499876))

(declare-fun m!6934670 () Bool)

(assert (=> bm!499875 m!6934670))

(declare-fun m!6934672 () Bool)

(assert (=> bm!499876 m!6934672))

(declare-fun m!6934674 () Bool)

(assert (=> b!6074594 m!6934674))

(assert (=> d!1904191 d!1904479))

(declare-fun d!1904483 () Bool)

(declare-fun res!2524125 () Bool)

(declare-fun e!3707234 () Bool)

(assert (=> d!1904483 (=> res!2524125 e!3707234)))

(assert (=> d!1904483 (= res!2524125 ((_ is Nil!64292) (unfocusZipperList!1460 zl!343)))))

(assert (=> d!1904483 (= (forall!15151 (unfocusZipperList!1460 zl!343) lambda!331004) e!3707234)))

(declare-fun b!6074595 () Bool)

(declare-fun e!3707235 () Bool)

(assert (=> b!6074595 (= e!3707234 e!3707235)))

(declare-fun res!2524126 () Bool)

(assert (=> b!6074595 (=> (not res!2524126) (not e!3707235))))

(assert (=> b!6074595 (= res!2524126 (dynLambda!25284 lambda!331004 (h!70740 (unfocusZipperList!1460 zl!343))))))

(declare-fun b!6074596 () Bool)

(assert (=> b!6074596 (= e!3707235 (forall!15151 (t!377857 (unfocusZipperList!1460 zl!343)) lambda!331004))))

(assert (= (and d!1904483 (not res!2524125)) b!6074595))

(assert (= (and b!6074595 res!2524126) b!6074596))

(declare-fun b_lambda!231045 () Bool)

(assert (=> (not b_lambda!231045) (not b!6074595)))

(declare-fun m!6934676 () Bool)

(assert (=> b!6074595 m!6934676))

(declare-fun m!6934678 () Bool)

(assert (=> b!6074596 m!6934678))

(assert (=> d!1904191 d!1904483))

(declare-fun d!1904487 () Bool)

(assert (=> d!1904487 (= (nullable!6034 r!7292) (nullableFct!1997 r!7292))))

(declare-fun bs!1504110 () Bool)

(assert (= bs!1504110 d!1904487))

(declare-fun m!6934680 () Bool)

(assert (=> bs!1504110 m!6934680))

(assert (=> b!6074159 d!1904487))

(assert (=> b!6074200 d!1904231))

(declare-fun b!6074597 () Bool)

(declare-fun e!3707236 () (InoxSet Context!10846))

(assert (=> b!6074597 (= e!3707236 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6074598 () Bool)

(declare-fun call!499884 () (InoxSet Context!10846))

(assert (=> b!6074598 (= e!3707236 call!499884)))

(declare-fun bm!499879 () Bool)

(declare-fun call!499886 () (InoxSet Context!10846))

(declare-fun call!499885 () (InoxSet Context!10846))

(assert (=> bm!499879 (= call!499886 call!499885)))

(declare-fun b!6074599 () Bool)

(declare-fun e!3707241 () (InoxSet Context!10846))

(declare-fun call!499888 () (InoxSet Context!10846))

(assert (=> b!6074599 (= e!3707241 ((_ map or) call!499888 call!499885))))

(declare-fun bm!499880 () Bool)

(declare-fun call!499887 () List!64416)

(declare-fun call!499883 () List!64416)

(assert (=> bm!499880 (= call!499887 call!499883)))

(declare-fun c!1090188 () Bool)

(declare-fun bm!499881 () Bool)

(assert (=> bm!499881 (= call!499888 (derivationStepZipperDown!1289 (ite c!1090188 (regOne!32591 (h!70740 (exprs!5923 lt!2326421))) (regOne!32590 (h!70740 (exprs!5923 lt!2326421)))) (ite c!1090188 (Context!10847 (t!377857 (exprs!5923 lt!2326421))) (Context!10847 call!499883)) (h!70741 s!2326)))))

(declare-fun b!6074600 () Bool)

(declare-fun c!1090186 () Bool)

(assert (=> b!6074600 (= c!1090186 ((_ is Star!16039) (h!70740 (exprs!5923 lt!2326421))))))

(declare-fun e!3707238 () (InoxSet Context!10846))

(assert (=> b!6074600 (= e!3707238 e!3707236)))

(declare-fun b!6074601 () Bool)

(declare-fun e!3707237 () (InoxSet Context!10846))

(assert (=> b!6074601 (= e!3707237 e!3707238)))

(declare-fun c!1090187 () Bool)

(assert (=> b!6074601 (= c!1090187 ((_ is Concat!24884) (h!70740 (exprs!5923 lt!2326421))))))

(declare-fun b!6074602 () Bool)

(declare-fun e!3707240 () Bool)

(assert (=> b!6074602 (= e!3707240 (nullable!6034 (regOne!32590 (h!70740 (exprs!5923 lt!2326421)))))))

(declare-fun bm!499882 () Bool)

(declare-fun c!1090190 () Bool)

(assert (=> bm!499882 (= call!499883 ($colon$colon!1918 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326421)))) (ite (or c!1090190 c!1090187) (regTwo!32590 (h!70740 (exprs!5923 lt!2326421))) (h!70740 (exprs!5923 lt!2326421)))))))

(declare-fun b!6074603 () Bool)

(declare-fun e!3707239 () (InoxSet Context!10846))

(assert (=> b!6074603 (= e!3707239 (store ((as const (Array Context!10846 Bool)) false) (Context!10847 (t!377857 (exprs!5923 lt!2326421))) true))))

(declare-fun b!6074604 () Bool)

(assert (=> b!6074604 (= c!1090190 e!3707240)))

(declare-fun res!2524127 () Bool)

(assert (=> b!6074604 (=> (not res!2524127) (not e!3707240))))

(assert (=> b!6074604 (= res!2524127 ((_ is Concat!24884) (h!70740 (exprs!5923 lt!2326421))))))

(assert (=> b!6074604 (= e!3707241 e!3707237)))

(declare-fun bm!499878 () Bool)

(assert (=> bm!499878 (= call!499885 (derivationStepZipperDown!1289 (ite c!1090188 (regTwo!32591 (h!70740 (exprs!5923 lt!2326421))) (ite c!1090190 (regTwo!32590 (h!70740 (exprs!5923 lt!2326421))) (ite c!1090187 (regOne!32590 (h!70740 (exprs!5923 lt!2326421))) (reg!16368 (h!70740 (exprs!5923 lt!2326421)))))) (ite (or c!1090188 c!1090190) (Context!10847 (t!377857 (exprs!5923 lt!2326421))) (Context!10847 call!499887)) (h!70741 s!2326)))))

(declare-fun d!1904489 () Bool)

(declare-fun c!1090189 () Bool)

(assert (=> d!1904489 (= c!1090189 (and ((_ is ElementMatch!16039) (h!70740 (exprs!5923 lt!2326421))) (= (c!1089857 (h!70740 (exprs!5923 lt!2326421))) (h!70741 s!2326))))))

(assert (=> d!1904489 (= (derivationStepZipperDown!1289 (h!70740 (exprs!5923 lt!2326421)) (Context!10847 (t!377857 (exprs!5923 lt!2326421))) (h!70741 s!2326)) e!3707239)))

(declare-fun b!6074605 () Bool)

(assert (=> b!6074605 (= e!3707238 call!499884)))

(declare-fun bm!499883 () Bool)

(assert (=> bm!499883 (= call!499884 call!499886)))

(declare-fun b!6074606 () Bool)

(assert (=> b!6074606 (= e!3707239 e!3707241)))

(assert (=> b!6074606 (= c!1090188 ((_ is Union!16039) (h!70740 (exprs!5923 lt!2326421))))))

(declare-fun b!6074607 () Bool)

(assert (=> b!6074607 (= e!3707237 ((_ map or) call!499888 call!499886))))

(assert (= (and d!1904489 c!1090189) b!6074603))

(assert (= (and d!1904489 (not c!1090189)) b!6074606))

(assert (= (and b!6074606 c!1090188) b!6074599))

(assert (= (and b!6074606 (not c!1090188)) b!6074604))

(assert (= (and b!6074604 res!2524127) b!6074602))

(assert (= (and b!6074604 c!1090190) b!6074607))

(assert (= (and b!6074604 (not c!1090190)) b!6074601))

(assert (= (and b!6074601 c!1090187) b!6074605))

(assert (= (and b!6074601 (not c!1090187)) b!6074600))

(assert (= (and b!6074600 c!1090186) b!6074598))

(assert (= (and b!6074600 (not c!1090186)) b!6074597))

(assert (= (or b!6074605 b!6074598) bm!499880))

(assert (= (or b!6074605 b!6074598) bm!499883))

(assert (= (or b!6074607 bm!499880) bm!499882))

(assert (= (or b!6074607 bm!499883) bm!499879))

(assert (= (or b!6074599 bm!499879) bm!499878))

(assert (= (or b!6074599 b!6074607) bm!499881))

(declare-fun m!6934682 () Bool)

(assert (=> b!6074602 m!6934682))

(declare-fun m!6934684 () Bool)

(assert (=> bm!499878 m!6934684))

(declare-fun m!6934686 () Bool)

(assert (=> bm!499882 m!6934686))

(declare-fun m!6934688 () Bool)

(assert (=> b!6074603 m!6934688))

(declare-fun m!6934690 () Bool)

(assert (=> bm!499881 m!6934690))

(assert (=> bm!499803 d!1904489))

(assert (=> d!1904221 d!1904209))

(assert (=> d!1904221 d!1904217))

(declare-fun d!1904493 () Bool)

(assert (=> d!1904493 (= (matchR!8222 lt!2326431 s!2326) (matchZipper!2059 lt!2326417 s!2326))))

(assert (=> d!1904493 true))

(declare-fun _$44!1513 () Unit!157349)

(assert (=> d!1904493 (= (choose!45248 lt!2326417 lt!2326433 lt!2326431 s!2326) _$44!1513)))

(declare-fun bs!1504120 () Bool)

(assert (= bs!1504120 d!1904493))

(assert (=> bs!1504120 m!6933820))

(assert (=> bs!1504120 m!6933822))

(assert (=> d!1904221 d!1904493))

(assert (=> d!1904221 d!1904473))

(declare-fun b!6074630 () Bool)

(declare-fun e!3707258 () Bool)

(declare-fun call!499898 () Bool)

(assert (=> b!6074630 (= e!3707258 call!499898)))

(declare-fun b!6074631 () Bool)

(declare-fun e!3707260 () Bool)

(declare-fun e!3707263 () Bool)

(assert (=> b!6074631 (= e!3707260 e!3707263)))

(declare-fun c!1090201 () Bool)

(assert (=> b!6074631 (= c!1090201 ((_ is Star!16039) lt!2326555))))

(declare-fun b!6074632 () Bool)

(declare-fun e!3707257 () Bool)

(assert (=> b!6074632 (= e!3707263 e!3707257)))

(declare-fun c!1090200 () Bool)

(assert (=> b!6074632 (= c!1090200 ((_ is Union!16039) lt!2326555))))

(declare-fun bm!499893 () Bool)

(declare-fun call!499900 () Bool)

(assert (=> bm!499893 (= call!499900 (validRegex!7775 (ite c!1090200 (regTwo!32591 lt!2326555) (regTwo!32590 lt!2326555))))))

(declare-fun d!1904503 () Bool)

(declare-fun res!2524136 () Bool)

(assert (=> d!1904503 (=> res!2524136 e!3707260)))

(assert (=> d!1904503 (= res!2524136 ((_ is ElementMatch!16039) lt!2326555))))

(assert (=> d!1904503 (= (validRegex!7775 lt!2326555) e!3707260)))

(declare-fun b!6074633 () Bool)

(declare-fun res!2524139 () Bool)

(declare-fun e!3707262 () Bool)

(assert (=> b!6074633 (=> res!2524139 e!3707262)))

(assert (=> b!6074633 (= res!2524139 (not ((_ is Concat!24884) lt!2326555)))))

(assert (=> b!6074633 (= e!3707257 e!3707262)))

(declare-fun bm!499894 () Bool)

(assert (=> bm!499894 (= call!499898 (validRegex!7775 (ite c!1090201 (reg!16368 lt!2326555) (ite c!1090200 (regOne!32591 lt!2326555) (regOne!32590 lt!2326555)))))))

(declare-fun b!6074634 () Bool)

(declare-fun res!2524138 () Bool)

(declare-fun e!3707261 () Bool)

(assert (=> b!6074634 (=> (not res!2524138) (not e!3707261))))

(declare-fun call!499899 () Bool)

(assert (=> b!6074634 (= res!2524138 call!499899)))

(assert (=> b!6074634 (= e!3707257 e!3707261)))

(declare-fun b!6074635 () Bool)

(declare-fun e!3707259 () Bool)

(assert (=> b!6074635 (= e!3707262 e!3707259)))

(declare-fun res!2524137 () Bool)

(assert (=> b!6074635 (=> (not res!2524137) (not e!3707259))))

(assert (=> b!6074635 (= res!2524137 call!499899)))

(declare-fun b!6074636 () Bool)

(assert (=> b!6074636 (= e!3707261 call!499900)))

(declare-fun bm!499895 () Bool)

(assert (=> bm!499895 (= call!499899 call!499898)))

(declare-fun b!6074637 () Bool)

(assert (=> b!6074637 (= e!3707259 call!499900)))

(declare-fun b!6074638 () Bool)

(assert (=> b!6074638 (= e!3707263 e!3707258)))

(declare-fun res!2524140 () Bool)

(assert (=> b!6074638 (= res!2524140 (not (nullable!6034 (reg!16368 lt!2326555))))))

(assert (=> b!6074638 (=> (not res!2524140) (not e!3707258))))

(assert (= (and d!1904503 (not res!2524136)) b!6074631))

(assert (= (and b!6074631 c!1090201) b!6074638))

(assert (= (and b!6074631 (not c!1090201)) b!6074632))

(assert (= (and b!6074638 res!2524140) b!6074630))

(assert (= (and b!6074632 c!1090200) b!6074634))

(assert (= (and b!6074632 (not c!1090200)) b!6074633))

(assert (= (and b!6074634 res!2524138) b!6074636))

(assert (= (and b!6074633 (not res!2524139)) b!6074635))

(assert (= (and b!6074635 res!2524137) b!6074637))

(assert (= (or b!6074636 b!6074637) bm!499893))

(assert (= (or b!6074634 b!6074635) bm!499895))

(assert (= (or b!6074630 bm!499895) bm!499894))

(declare-fun m!6934716 () Bool)

(assert (=> bm!499893 m!6934716))

(declare-fun m!6934718 () Bool)

(assert (=> bm!499894 m!6934718))

(declare-fun m!6934720 () Bool)

(assert (=> b!6074638 m!6934720))

(assert (=> d!1904289 d!1904503))

(assert (=> d!1904289 d!1904191))

(assert (=> d!1904289 d!1904201))

(assert (=> d!1904301 d!1904299))

(assert (=> d!1904301 d!1904297))

(declare-fun d!1904507 () Bool)

(assert (=> d!1904507 (= (matchR!8222 r!7292 s!2326) (matchRSpec!3140 r!7292 s!2326))))

(assert (=> d!1904507 true))

(declare-fun _$88!4551 () Unit!157349)

(assert (=> d!1904507 (= (choose!45252 r!7292 s!2326) _$88!4551)))

(declare-fun bs!1504121 () Bool)

(assert (= bs!1504121 d!1904507))

(assert (=> bs!1504121 m!6933832))

(assert (=> bs!1504121 m!6933830))

(assert (=> d!1904301 d!1904507))

(assert (=> d!1904301 d!1904145))

(declare-fun b!6074658 () Bool)

(declare-fun e!3707274 () (InoxSet Context!10846))

(assert (=> b!6074658 (= e!3707274 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6074659 () Bool)

(declare-fun call!499904 () (InoxSet Context!10846))

(assert (=> b!6074659 (= e!3707274 call!499904)))

(declare-fun bm!499899 () Bool)

(declare-fun call!499906 () (InoxSet Context!10846))

(declare-fun call!499905 () (InoxSet Context!10846))

(assert (=> bm!499899 (= call!499906 call!499905)))

(declare-fun b!6074660 () Bool)

(declare-fun e!3707279 () (InoxSet Context!10846))

(declare-fun call!499908 () (InoxSet Context!10846))

(assert (=> b!6074660 (= e!3707279 ((_ map or) call!499908 call!499905))))

(declare-fun bm!499900 () Bool)

(declare-fun call!499907 () List!64416)

(declare-fun call!499903 () List!64416)

(assert (=> bm!499900 (= call!499907 call!499903)))

(declare-fun bm!499901 () Bool)

(declare-fun c!1090209 () Bool)

(assert (=> bm!499901 (= call!499908 (derivationStepZipperDown!1289 (ite c!1090209 (regOne!32591 (h!70740 (exprs!5923 lt!2326429))) (regOne!32590 (h!70740 (exprs!5923 lt!2326429)))) (ite c!1090209 (Context!10847 (t!377857 (exprs!5923 lt!2326429))) (Context!10847 call!499903)) (h!70741 s!2326)))))

(declare-fun b!6074661 () Bool)

(declare-fun c!1090207 () Bool)

(assert (=> b!6074661 (= c!1090207 ((_ is Star!16039) (h!70740 (exprs!5923 lt!2326429))))))

(declare-fun e!3707276 () (InoxSet Context!10846))

(assert (=> b!6074661 (= e!3707276 e!3707274)))

(declare-fun b!6074662 () Bool)

(declare-fun e!3707275 () (InoxSet Context!10846))

(assert (=> b!6074662 (= e!3707275 e!3707276)))

(declare-fun c!1090208 () Bool)

(assert (=> b!6074662 (= c!1090208 ((_ is Concat!24884) (h!70740 (exprs!5923 lt!2326429))))))

(declare-fun b!6074663 () Bool)

(declare-fun e!3707278 () Bool)

(assert (=> b!6074663 (= e!3707278 (nullable!6034 (regOne!32590 (h!70740 (exprs!5923 lt!2326429)))))))

(declare-fun c!1090211 () Bool)

(declare-fun bm!499902 () Bool)

(assert (=> bm!499902 (= call!499903 ($colon$colon!1918 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326429)))) (ite (or c!1090211 c!1090208) (regTwo!32590 (h!70740 (exprs!5923 lt!2326429))) (h!70740 (exprs!5923 lt!2326429)))))))

(declare-fun b!6074664 () Bool)

(declare-fun e!3707277 () (InoxSet Context!10846))

(assert (=> b!6074664 (= e!3707277 (store ((as const (Array Context!10846 Bool)) false) (Context!10847 (t!377857 (exprs!5923 lt!2326429))) true))))

(declare-fun b!6074665 () Bool)

(assert (=> b!6074665 (= c!1090211 e!3707278)))

(declare-fun res!2524150 () Bool)

(assert (=> b!6074665 (=> (not res!2524150) (not e!3707278))))

(assert (=> b!6074665 (= res!2524150 ((_ is Concat!24884) (h!70740 (exprs!5923 lt!2326429))))))

(assert (=> b!6074665 (= e!3707279 e!3707275)))

(declare-fun bm!499898 () Bool)

(assert (=> bm!499898 (= call!499905 (derivationStepZipperDown!1289 (ite c!1090209 (regTwo!32591 (h!70740 (exprs!5923 lt!2326429))) (ite c!1090211 (regTwo!32590 (h!70740 (exprs!5923 lt!2326429))) (ite c!1090208 (regOne!32590 (h!70740 (exprs!5923 lt!2326429))) (reg!16368 (h!70740 (exprs!5923 lt!2326429)))))) (ite (or c!1090209 c!1090211) (Context!10847 (t!377857 (exprs!5923 lt!2326429))) (Context!10847 call!499907)) (h!70741 s!2326)))))

(declare-fun d!1904515 () Bool)

(declare-fun c!1090210 () Bool)

(assert (=> d!1904515 (= c!1090210 (and ((_ is ElementMatch!16039) (h!70740 (exprs!5923 lt!2326429))) (= (c!1089857 (h!70740 (exprs!5923 lt!2326429))) (h!70741 s!2326))))))

(assert (=> d!1904515 (= (derivationStepZipperDown!1289 (h!70740 (exprs!5923 lt!2326429)) (Context!10847 (t!377857 (exprs!5923 lt!2326429))) (h!70741 s!2326)) e!3707277)))

(declare-fun b!6074666 () Bool)

(assert (=> b!6074666 (= e!3707276 call!499904)))

(declare-fun bm!499903 () Bool)

(assert (=> bm!499903 (= call!499904 call!499906)))

(declare-fun b!6074667 () Bool)

(assert (=> b!6074667 (= e!3707277 e!3707279)))

(assert (=> b!6074667 (= c!1090209 ((_ is Union!16039) (h!70740 (exprs!5923 lt!2326429))))))

(declare-fun b!6074668 () Bool)

(assert (=> b!6074668 (= e!3707275 ((_ map or) call!499908 call!499906))))

(assert (= (and d!1904515 c!1090210) b!6074664))

(assert (= (and d!1904515 (not c!1090210)) b!6074667))

(assert (= (and b!6074667 c!1090209) b!6074660))

(assert (= (and b!6074667 (not c!1090209)) b!6074665))

(assert (= (and b!6074665 res!2524150) b!6074663))

(assert (= (and b!6074665 c!1090211) b!6074668))

(assert (= (and b!6074665 (not c!1090211)) b!6074662))

(assert (= (and b!6074662 c!1090208) b!6074666))

(assert (= (and b!6074662 (not c!1090208)) b!6074661))

(assert (= (and b!6074661 c!1090207) b!6074659))

(assert (= (and b!6074661 (not c!1090207)) b!6074658))

(assert (= (or b!6074666 b!6074659) bm!499900))

(assert (= (or b!6074666 b!6074659) bm!499903))

(assert (= (or b!6074668 bm!499900) bm!499902))

(assert (= (or b!6074668 bm!499903) bm!499899))

(assert (= (or b!6074660 bm!499899) bm!499898))

(assert (= (or b!6074660 b!6074668) bm!499901))

(declare-fun m!6934736 () Bool)

(assert (=> b!6074663 m!6934736))

(declare-fun m!6934740 () Bool)

(assert (=> bm!499898 m!6934740))

(declare-fun m!6934744 () Bool)

(assert (=> bm!499902 m!6934744))

(declare-fun m!6934746 () Bool)

(assert (=> b!6074664 m!6934746))

(declare-fun m!6934748 () Bool)

(assert (=> bm!499901 m!6934748))

(assert (=> bm!499758 d!1904515))

(assert (=> bm!499809 d!1904389))

(declare-fun b!6074672 () Bool)

(declare-fun e!3707283 () (InoxSet Context!10846))

(assert (=> b!6074672 (= e!3707283 ((as const (Array Context!10846 Bool)) false))))

(declare-fun bm!499904 () Bool)

(declare-fun call!499909 () (InoxSet Context!10846))

(assert (=> bm!499904 (= call!499909 (derivationStepZipperDown!1289 (h!70740 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326429))))) (Context!10847 (t!377857 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326429)))))) (h!70741 s!2326)))))

(declare-fun b!6074673 () Bool)

(declare-fun e!3707282 () Bool)

(assert (=> b!6074673 (= e!3707282 (nullable!6034 (h!70740 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326429)))))))))

(declare-fun b!6074674 () Bool)

(declare-fun e!3707284 () (InoxSet Context!10846))

(assert (=> b!6074674 (= e!3707284 e!3707283)))

(declare-fun c!1090214 () Bool)

(assert (=> b!6074674 (= c!1090214 ((_ is Cons!64292) (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326429))))))))

(declare-fun d!1904521 () Bool)

(declare-fun c!1090213 () Bool)

(assert (=> d!1904521 (= c!1090213 e!3707282)))

(declare-fun res!2524152 () Bool)

(assert (=> d!1904521 (=> (not res!2524152) (not e!3707282))))

(assert (=> d!1904521 (= res!2524152 ((_ is Cons!64292) (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326429))))))))

(assert (=> d!1904521 (= (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 lt!2326429))) (h!70741 s!2326)) e!3707284)))

(declare-fun b!6074675 () Bool)

(assert (=> b!6074675 (= e!3707283 call!499909)))

(declare-fun b!6074676 () Bool)

(assert (=> b!6074676 (= e!3707284 ((_ map or) call!499909 (derivationStepZipperUp!1215 (Context!10847 (t!377857 (exprs!5923 (Context!10847 (t!377857 (exprs!5923 lt!2326429)))))) (h!70741 s!2326))))))

(assert (= (and d!1904521 res!2524152) b!6074673))

(assert (= (and d!1904521 c!1090213) b!6074676))

(assert (= (and d!1904521 (not c!1090213)) b!6074674))

(assert (= (and b!6074674 c!1090214) b!6074675))

(assert (= (and b!6074674 (not c!1090214)) b!6074672))

(assert (= (or b!6074676 b!6074675) bm!499904))

(declare-fun m!6934750 () Bool)

(assert (=> bm!499904 m!6934750))

(declare-fun m!6934752 () Bool)

(assert (=> b!6074673 m!6934752))

(declare-fun m!6934754 () Bool)

(assert (=> b!6074676 m!6934754))

(assert (=> b!6073674 d!1904521))

(declare-fun d!1904523 () Bool)

(assert (=> d!1904523 (= (isEmpty!36202 (exprs!5923 (h!70742 zl!343))) ((_ is Nil!64292) (exprs!5923 (h!70742 zl!343))))))

(assert (=> b!6074196 d!1904523))

(declare-fun b!6074677 () Bool)

(declare-fun e!3707285 () (InoxSet Context!10846))

(assert (=> b!6074677 (= e!3707285 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6074678 () Bool)

(declare-fun call!499911 () (InoxSet Context!10846))

(assert (=> b!6074678 (= e!3707285 call!499911)))

(declare-fun bm!499906 () Bool)

(declare-fun call!499913 () (InoxSet Context!10846))

(declare-fun call!499912 () (InoxSet Context!10846))

(assert (=> bm!499906 (= call!499913 call!499912)))

(declare-fun b!6074679 () Bool)

(declare-fun e!3707290 () (InoxSet Context!10846))

(declare-fun call!499915 () (InoxSet Context!10846))

(assert (=> b!6074679 (= e!3707290 ((_ map or) call!499915 call!499912))))

(declare-fun bm!499907 () Bool)

(declare-fun call!499914 () List!64416)

(declare-fun call!499910 () List!64416)

(assert (=> bm!499907 (= call!499914 call!499910)))

(declare-fun c!1090217 () Bool)

(declare-fun bm!499908 () Bool)

(assert (=> bm!499908 (= call!499915 (derivationStepZipperDown!1289 (ite c!1090217 (regOne!32591 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))) (regOne!32590 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292))))) (ite c!1090217 (ite c!1089899 lt!2326429 (Context!10847 call!499748)) (Context!10847 call!499910)) (h!70741 s!2326)))))

(declare-fun b!6074680 () Bool)

(declare-fun c!1090215 () Bool)

(assert (=> b!6074680 (= c!1090215 ((_ is Star!16039) (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))))))

(declare-fun e!3707287 () (InoxSet Context!10846))

(assert (=> b!6074680 (= e!3707287 e!3707285)))

(declare-fun b!6074681 () Bool)

(declare-fun e!3707286 () (InoxSet Context!10846))

(assert (=> b!6074681 (= e!3707286 e!3707287)))

(declare-fun c!1090216 () Bool)

(assert (=> b!6074681 (= c!1090216 ((_ is Concat!24884) (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))))))

(declare-fun b!6074682 () Bool)

(declare-fun e!3707289 () Bool)

(assert (=> b!6074682 (= e!3707289 (nullable!6034 (regOne!32590 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292))))))))

(declare-fun bm!499909 () Bool)

(declare-fun c!1090219 () Bool)

(assert (=> bm!499909 (= call!499910 ($colon$colon!1918 (exprs!5923 (ite c!1089899 lt!2326429 (Context!10847 call!499748))) (ite (or c!1090219 c!1090216) (regTwo!32590 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))) (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292))))))))

(declare-fun b!6074683 () Bool)

(declare-fun e!3707288 () (InoxSet Context!10846))

(assert (=> b!6074683 (= e!3707288 (store ((as const (Array Context!10846 Bool)) false) (ite c!1089899 lt!2326429 (Context!10847 call!499748)) true))))

(declare-fun b!6074684 () Bool)

(assert (=> b!6074684 (= c!1090219 e!3707289)))

(declare-fun res!2524153 () Bool)

(assert (=> b!6074684 (=> (not res!2524153) (not e!3707289))))

(assert (=> b!6074684 (= res!2524153 ((_ is Concat!24884) (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))))))

(assert (=> b!6074684 (= e!3707290 e!3707286)))

(declare-fun bm!499905 () Bool)

(assert (=> bm!499905 (= call!499912 (derivationStepZipperDown!1289 (ite c!1090217 (regTwo!32591 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))) (ite c!1090219 (regTwo!32590 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))) (ite c!1090216 (regOne!32590 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))) (reg!16368 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292))))))) (ite (or c!1090217 c!1090219) (ite c!1089899 lt!2326429 (Context!10847 call!499748)) (Context!10847 call!499914)) (h!70741 s!2326)))))

(declare-fun c!1090218 () Bool)

(declare-fun d!1904525 () Bool)

(assert (=> d!1904525 (= c!1090218 (and ((_ is ElementMatch!16039) (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))) (= (c!1089857 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))) (h!70741 s!2326))))))

(assert (=> d!1904525 (= (derivationStepZipperDown!1289 (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292))) (ite c!1089899 lt!2326429 (Context!10847 call!499748)) (h!70741 s!2326)) e!3707288)))

(declare-fun b!6074685 () Bool)

(assert (=> b!6074685 (= e!3707287 call!499911)))

(declare-fun bm!499910 () Bool)

(assert (=> bm!499910 (= call!499911 call!499913)))

(declare-fun b!6074686 () Bool)

(assert (=> b!6074686 (= e!3707288 e!3707290)))

(assert (=> b!6074686 (= c!1090217 ((_ is Union!16039) (ite c!1089899 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))))))

(declare-fun b!6074687 () Bool)

(assert (=> b!6074687 (= e!3707286 ((_ map or) call!499915 call!499913))))

(assert (= (and d!1904525 c!1090218) b!6074683))

(assert (= (and d!1904525 (not c!1090218)) b!6074686))

(assert (= (and b!6074686 c!1090217) b!6074679))

(assert (= (and b!6074686 (not c!1090217)) b!6074684))

(assert (= (and b!6074684 res!2524153) b!6074682))

(assert (= (and b!6074684 c!1090219) b!6074687))

(assert (= (and b!6074684 (not c!1090219)) b!6074681))

(assert (= (and b!6074681 c!1090216) b!6074685))

(assert (= (and b!6074681 (not c!1090216)) b!6074680))

(assert (= (and b!6074680 c!1090215) b!6074678))

(assert (= (and b!6074680 (not c!1090215)) b!6074677))

(assert (= (or b!6074685 b!6074678) bm!499907))

(assert (= (or b!6074685 b!6074678) bm!499910))

(assert (= (or b!6074687 bm!499907) bm!499909))

(assert (= (or b!6074687 bm!499910) bm!499906))

(assert (= (or b!6074679 bm!499906) bm!499905))

(assert (= (or b!6074679 b!6074687) bm!499908))

(declare-fun m!6934756 () Bool)

(assert (=> b!6074682 m!6934756))

(declare-fun m!6934758 () Bool)

(assert (=> bm!499905 m!6934758))

(declare-fun m!6934760 () Bool)

(assert (=> bm!499909 m!6934760))

(declare-fun m!6934762 () Bool)

(assert (=> b!6074683 m!6934762))

(declare-fun m!6934764 () Bool)

(assert (=> bm!499908 m!6934764))

(assert (=> bm!499746 d!1904525))

(declare-fun d!1904527 () Bool)

(assert (=> d!1904527 (= (isEmpty!36202 (tail!11688 (unfocusZipperList!1460 zl!343))) ((_ is Nil!64292) (tail!11688 (unfocusZipperList!1460 zl!343))))))

(assert (=> b!6073739 d!1904527))

(declare-fun d!1904529 () Bool)

(assert (=> d!1904529 (= (tail!11688 (unfocusZipperList!1460 zl!343)) (t!377857 (unfocusZipperList!1460 zl!343)))))

(assert (=> b!6073739 d!1904529))

(declare-fun bs!1504153 () Bool)

(declare-fun b!6074690 () Bool)

(assert (= bs!1504153 (and b!6074690 b!6073448)))

(declare-fun lambda!331114 () Int)

(assert (=> bs!1504153 (not (= lambda!331114 lambda!330982))))

(declare-fun bs!1504156 () Bool)

(assert (= bs!1504156 (and b!6074690 d!1904285)))

(assert (=> bs!1504156 (not (= lambda!331114 lambda!331057))))

(declare-fun bs!1504157 () Bool)

(assert (= bs!1504157 (and b!6074690 d!1904283)))

(assert (=> bs!1504157 (not (= lambda!331114 lambda!331052))))

(assert (=> bs!1504156 (not (= lambda!331114 lambda!331058))))

(declare-fun bs!1504161 () Bool)

(assert (= bs!1504161 (and b!6074690 b!6074148)))

(assert (=> bs!1504161 (not (= lambda!331114 lambda!331067))))

(assert (=> bs!1504153 (not (= lambda!331114 lambda!330981))))

(declare-fun bs!1504164 () Bool)

(assert (= bs!1504164 (and b!6074690 b!6074145)))

(assert (=> bs!1504164 (= (and (= (reg!16368 (regTwo!32591 r!7292)) (reg!16368 r!7292)) (= (regTwo!32591 r!7292) r!7292)) (= lambda!331114 lambda!331066))))

(assert (=> b!6074690 true))

(assert (=> b!6074690 true))

(declare-fun bs!1504174 () Bool)

(declare-fun b!6074693 () Bool)

(assert (= bs!1504174 (and b!6074693 b!6073448)))

(declare-fun lambda!331118 () Int)

(assert (=> bs!1504174 (= (and (= (regOne!32590 (regTwo!32591 r!7292)) (regOne!32590 r!7292)) (= (regTwo!32590 (regTwo!32591 r!7292)) (regTwo!32590 r!7292))) (= lambda!331118 lambda!330982))))

(declare-fun bs!1504177 () Bool)

(assert (= bs!1504177 (and b!6074693 d!1904285)))

(assert (=> bs!1504177 (not (= lambda!331118 lambda!331057))))

(declare-fun bs!1504178 () Bool)

(assert (= bs!1504178 (and b!6074693 d!1904283)))

(assert (=> bs!1504178 (not (= lambda!331118 lambda!331052))))

(assert (=> bs!1504177 (= (and (= (regOne!32590 (regTwo!32591 r!7292)) (regOne!32590 r!7292)) (= (regTwo!32590 (regTwo!32591 r!7292)) (regTwo!32590 r!7292))) (= lambda!331118 lambda!331058))))

(declare-fun bs!1504179 () Bool)

(assert (= bs!1504179 (and b!6074693 b!6074148)))

(assert (=> bs!1504179 (= (and (= (regOne!32590 (regTwo!32591 r!7292)) (regOne!32590 r!7292)) (= (regTwo!32590 (regTwo!32591 r!7292)) (regTwo!32590 r!7292))) (= lambda!331118 lambda!331067))))

(assert (=> bs!1504174 (not (= lambda!331118 lambda!330981))))

(declare-fun bs!1504180 () Bool)

(assert (= bs!1504180 (and b!6074693 b!6074690)))

(assert (=> bs!1504180 (not (= lambda!331118 lambda!331114))))

(declare-fun bs!1504181 () Bool)

(assert (= bs!1504181 (and b!6074693 b!6074145)))

(assert (=> bs!1504181 (not (= lambda!331118 lambda!331066))))

(assert (=> b!6074693 true))

(assert (=> b!6074693 true))

(declare-fun bm!499911 () Bool)

(declare-fun call!499917 () Bool)

(declare-fun c!1090221 () Bool)

(assert (=> bm!499911 (= call!499917 (Exists!3109 (ite c!1090221 lambda!331114 lambda!331118)))))

(declare-fun b!6074688 () Bool)

(declare-fun c!1090222 () Bool)

(assert (=> b!6074688 (= c!1090222 ((_ is ElementMatch!16039) (regTwo!32591 r!7292)))))

(declare-fun e!3707294 () Bool)

(declare-fun e!3707296 () Bool)

(assert (=> b!6074688 (= e!3707294 e!3707296)))

(declare-fun b!6074689 () Bool)

(declare-fun e!3707292 () Bool)

(assert (=> b!6074689 (= e!3707292 e!3707294)))

(declare-fun res!2524156 () Bool)

(assert (=> b!6074689 (= res!2524156 (not ((_ is EmptyLang!16039) (regTwo!32591 r!7292))))))

(assert (=> b!6074689 (=> (not res!2524156) (not e!3707294))))

(declare-fun e!3707297 () Bool)

(assert (=> b!6074690 (= e!3707297 call!499917)))

(declare-fun b!6074691 () Bool)

(declare-fun e!3707291 () Bool)

(assert (=> b!6074691 (= e!3707291 (matchRSpec!3140 (regTwo!32591 (regTwo!32591 r!7292)) s!2326))))

(declare-fun b!6074692 () Bool)

(declare-fun res!2524155 () Bool)

(assert (=> b!6074692 (=> res!2524155 e!3707297)))

(declare-fun call!499916 () Bool)

(assert (=> b!6074692 (= res!2524155 call!499916)))

(declare-fun e!3707295 () Bool)

(assert (=> b!6074692 (= e!3707295 e!3707297)))

(assert (=> b!6074693 (= e!3707295 call!499917)))

(declare-fun d!1904531 () Bool)

(declare-fun c!1090220 () Bool)

(assert (=> d!1904531 (= c!1090220 ((_ is EmptyExpr!16039) (regTwo!32591 r!7292)))))

(assert (=> d!1904531 (= (matchRSpec!3140 (regTwo!32591 r!7292) s!2326) e!3707292)))

(declare-fun b!6074694 () Bool)

(declare-fun e!3707293 () Bool)

(assert (=> b!6074694 (= e!3707293 e!3707291)))

(declare-fun res!2524154 () Bool)

(assert (=> b!6074694 (= res!2524154 (matchRSpec!3140 (regOne!32591 (regTwo!32591 r!7292)) s!2326))))

(assert (=> b!6074694 (=> res!2524154 e!3707291)))

(declare-fun b!6074695 () Bool)

(declare-fun c!1090223 () Bool)

(assert (=> b!6074695 (= c!1090223 ((_ is Union!16039) (regTwo!32591 r!7292)))))

(assert (=> b!6074695 (= e!3707296 e!3707293)))

(declare-fun b!6074696 () Bool)

(assert (=> b!6074696 (= e!3707292 call!499916)))

(declare-fun bm!499912 () Bool)

(assert (=> bm!499912 (= call!499916 (isEmpty!36205 s!2326))))

(declare-fun b!6074697 () Bool)

(assert (=> b!6074697 (= e!3707296 (= s!2326 (Cons!64293 (c!1089857 (regTwo!32591 r!7292)) Nil!64293)))))

(declare-fun b!6074698 () Bool)

(assert (=> b!6074698 (= e!3707293 e!3707295)))

(assert (=> b!6074698 (= c!1090221 ((_ is Star!16039) (regTwo!32591 r!7292)))))

(assert (= (and d!1904531 c!1090220) b!6074696))

(assert (= (and d!1904531 (not c!1090220)) b!6074689))

(assert (= (and b!6074689 res!2524156) b!6074688))

(assert (= (and b!6074688 c!1090222) b!6074697))

(assert (= (and b!6074688 (not c!1090222)) b!6074695))

(assert (= (and b!6074695 c!1090223) b!6074694))

(assert (= (and b!6074695 (not c!1090223)) b!6074698))

(assert (= (and b!6074694 (not res!2524154)) b!6074691))

(assert (= (and b!6074698 c!1090221) b!6074692))

(assert (= (and b!6074698 (not c!1090221)) b!6074693))

(assert (= (and b!6074692 (not res!2524155)) b!6074690))

(assert (= (or b!6074690 b!6074693) bm!499911))

(assert (= (or b!6074696 b!6074692) bm!499912))

(declare-fun m!6934794 () Bool)

(assert (=> bm!499911 m!6934794))

(declare-fun m!6934796 () Bool)

(assert (=> b!6074691 m!6934796))

(declare-fun m!6934798 () Bool)

(assert (=> b!6074694 m!6934798))

(assert (=> bm!499912 m!6934072))

(assert (=> b!6074146 d!1904531))

(declare-fun b!6074714 () Bool)

(declare-fun res!2524162 () Bool)

(declare-fun e!3707310 () Bool)

(assert (=> b!6074714 (=> (not res!2524162) (not e!3707310))))

(assert (=> b!6074714 (= res!2524162 (isEmpty!36205 (tail!11689 (tail!11689 s!2326))))))

(declare-fun b!6074715 () Bool)

(declare-fun res!2524169 () Bool)

(declare-fun e!3707313 () Bool)

(assert (=> b!6074715 (=> res!2524169 e!3707313)))

(assert (=> b!6074715 (= res!2524169 (not ((_ is ElementMatch!16039) (derivativeStep!4762 lt!2326431 (head!12604 s!2326)))))))

(declare-fun e!3707309 () Bool)

(assert (=> b!6074715 (= e!3707309 e!3707313)))

(declare-fun b!6074716 () Bool)

(declare-fun e!3707308 () Bool)

(assert (=> b!6074716 (= e!3707313 e!3707308)))

(declare-fun res!2524166 () Bool)

(assert (=> b!6074716 (=> (not res!2524166) (not e!3707308))))

(declare-fun lt!2326627 () Bool)

(assert (=> b!6074716 (= res!2524166 (not lt!2326627))))

(declare-fun b!6074717 () Bool)

(declare-fun res!2524163 () Bool)

(assert (=> b!6074717 (=> (not res!2524163) (not e!3707310))))

(declare-fun call!499918 () Bool)

(assert (=> b!6074717 (= res!2524163 (not call!499918))))

(declare-fun b!6074718 () Bool)

(assert (=> b!6074718 (= e!3707310 (= (head!12604 (tail!11689 s!2326)) (c!1089857 (derivativeStep!4762 lt!2326431 (head!12604 s!2326)))))))

(declare-fun d!1904541 () Bool)

(declare-fun e!3707314 () Bool)

(assert (=> d!1904541 e!3707314))

(declare-fun c!1090230 () Bool)

(assert (=> d!1904541 (= c!1090230 ((_ is EmptyExpr!16039) (derivativeStep!4762 lt!2326431 (head!12604 s!2326))))))

(declare-fun e!3707311 () Bool)

(assert (=> d!1904541 (= lt!2326627 e!3707311)))

(declare-fun c!1090229 () Bool)

(assert (=> d!1904541 (= c!1090229 (isEmpty!36205 (tail!11689 s!2326)))))

(assert (=> d!1904541 (validRegex!7775 (derivativeStep!4762 lt!2326431 (head!12604 s!2326)))))

(assert (=> d!1904541 (= (matchR!8222 (derivativeStep!4762 lt!2326431 (head!12604 s!2326)) (tail!11689 s!2326)) lt!2326627)))

(declare-fun b!6074719 () Bool)

(assert (=> b!6074719 (= e!3707311 (nullable!6034 (derivativeStep!4762 lt!2326431 (head!12604 s!2326))))))

(declare-fun b!6074720 () Bool)

(declare-fun res!2524165 () Bool)

(assert (=> b!6074720 (=> res!2524165 e!3707313)))

(assert (=> b!6074720 (= res!2524165 e!3707310)))

(declare-fun res!2524164 () Bool)

(assert (=> b!6074720 (=> (not res!2524164) (not e!3707310))))

(assert (=> b!6074720 (= res!2524164 lt!2326627)))

(declare-fun b!6074721 () Bool)

(assert (=> b!6074721 (= e!3707311 (matchR!8222 (derivativeStep!4762 (derivativeStep!4762 lt!2326431 (head!12604 s!2326)) (head!12604 (tail!11689 s!2326))) (tail!11689 (tail!11689 s!2326))))))

(declare-fun b!6074722 () Bool)

(assert (=> b!6074722 (= e!3707314 (= lt!2326627 call!499918))))

(declare-fun b!6074723 () Bool)

(assert (=> b!6074723 (= e!3707314 e!3707309)))

(declare-fun c!1090231 () Bool)

(assert (=> b!6074723 (= c!1090231 ((_ is EmptyLang!16039) (derivativeStep!4762 lt!2326431 (head!12604 s!2326))))))

(declare-fun bm!499913 () Bool)

(assert (=> bm!499913 (= call!499918 (isEmpty!36205 (tail!11689 s!2326)))))

(declare-fun b!6074724 () Bool)

(declare-fun res!2524168 () Bool)

(declare-fun e!3707312 () Bool)

(assert (=> b!6074724 (=> res!2524168 e!3707312)))

(assert (=> b!6074724 (= res!2524168 (not (isEmpty!36205 (tail!11689 (tail!11689 s!2326)))))))

(declare-fun b!6074725 () Bool)

(assert (=> b!6074725 (= e!3707312 (not (= (head!12604 (tail!11689 s!2326)) (c!1089857 (derivativeStep!4762 lt!2326431 (head!12604 s!2326))))))))

(declare-fun b!6074726 () Bool)

(assert (=> b!6074726 (= e!3707309 (not lt!2326627))))

(declare-fun b!6074727 () Bool)

(assert (=> b!6074727 (= e!3707308 e!3707312)))

(declare-fun res!2524167 () Bool)

(assert (=> b!6074727 (=> res!2524167 e!3707312)))

(assert (=> b!6074727 (= res!2524167 call!499918)))

(assert (= (and d!1904541 c!1090229) b!6074719))

(assert (= (and d!1904541 (not c!1090229)) b!6074721))

(assert (= (and d!1904541 c!1090230) b!6074722))

(assert (= (and d!1904541 (not c!1090230)) b!6074723))

(assert (= (and b!6074723 c!1090231) b!6074726))

(assert (= (and b!6074723 (not c!1090231)) b!6074715))

(assert (= (and b!6074715 (not res!2524169)) b!6074720))

(assert (= (and b!6074720 res!2524164) b!6074717))

(assert (= (and b!6074717 res!2524163) b!6074714))

(assert (= (and b!6074714 res!2524162) b!6074718))

(assert (= (and b!6074720 (not res!2524165)) b!6074716))

(assert (= (and b!6074716 res!2524166) b!6074727))

(assert (= (and b!6074727 (not res!2524167)) b!6074724))

(assert (= (and b!6074724 (not res!2524168)) b!6074725))

(assert (= (or b!6074722 b!6074717 b!6074727) bm!499913))

(assert (=> b!6074725 m!6934062))

(assert (=> b!6074725 m!6934418))

(assert (=> b!6074718 m!6934062))

(assert (=> b!6074718 m!6934418))

(assert (=> b!6074714 m!6934062))

(assert (=> b!6074714 m!6934422))

(assert (=> b!6074714 m!6934422))

(declare-fun m!6934800 () Bool)

(assert (=> b!6074714 m!6934800))

(assert (=> b!6074719 m!6934068))

(declare-fun m!6934802 () Bool)

(assert (=> b!6074719 m!6934802))

(assert (=> b!6074724 m!6934062))

(assert (=> b!6074724 m!6934422))

(assert (=> b!6074724 m!6934422))

(assert (=> b!6074724 m!6934800))

(assert (=> b!6074721 m!6934062))

(assert (=> b!6074721 m!6934418))

(assert (=> b!6074721 m!6934068))

(assert (=> b!6074721 m!6934418))

(declare-fun m!6934804 () Bool)

(assert (=> b!6074721 m!6934804))

(assert (=> b!6074721 m!6934062))

(assert (=> b!6074721 m!6934422))

(assert (=> b!6074721 m!6934804))

(assert (=> b!6074721 m!6934422))

(declare-fun m!6934806 () Bool)

(assert (=> b!6074721 m!6934806))

(assert (=> bm!499913 m!6934062))

(assert (=> bm!499913 m!6934064))

(assert (=> d!1904541 m!6934062))

(assert (=> d!1904541 m!6934064))

(assert (=> d!1904541 m!6934068))

(declare-fun m!6934808 () Bool)

(assert (=> d!1904541 m!6934808))

(assert (=> b!6073847 d!1904541))

(declare-fun bm!499937 () Bool)

(declare-fun c!1090262 () Bool)

(declare-fun c!1090259 () Bool)

(declare-fun call!499945 () Regex!16039)

(assert (=> bm!499937 (= call!499945 (derivativeStep!4762 (ite c!1090262 (regOne!32591 lt!2326431) (ite c!1090259 (regTwo!32590 lt!2326431) (regOne!32590 lt!2326431))) (head!12604 s!2326)))))

(declare-fun bm!499938 () Bool)

(declare-fun call!499944 () Regex!16039)

(assert (=> bm!499938 (= call!499944 call!499945)))

(declare-fun c!1090260 () Bool)

(declare-fun bm!499939 () Bool)

(declare-fun call!499942 () Regex!16039)

(assert (=> bm!499939 (= call!499942 (derivativeStep!4762 (ite c!1090262 (regTwo!32591 lt!2326431) (ite c!1090260 (reg!16368 lt!2326431) (regOne!32590 lt!2326431))) (head!12604 s!2326)))))

(declare-fun b!6074795 () Bool)

(assert (=> b!6074795 (= c!1090262 ((_ is Union!16039) lt!2326431))))

(declare-fun e!3707354 () Regex!16039)

(declare-fun e!3707355 () Regex!16039)

(assert (=> b!6074795 (= e!3707354 e!3707355)))

(declare-fun b!6074796 () Bool)

(declare-fun e!3707353 () Regex!16039)

(assert (=> b!6074796 (= e!3707353 e!3707354)))

(declare-fun c!1090261 () Bool)

(assert (=> b!6074796 (= c!1090261 ((_ is ElementMatch!16039) lt!2326431))))

(declare-fun b!6074797 () Bool)

(assert (=> b!6074797 (= e!3707353 EmptyLang!16039)))

(declare-fun d!1904543 () Bool)

(declare-fun lt!2326631 () Regex!16039)

(assert (=> d!1904543 (validRegex!7775 lt!2326631)))

(assert (=> d!1904543 (= lt!2326631 e!3707353)))

(declare-fun c!1090263 () Bool)

(assert (=> d!1904543 (= c!1090263 (or ((_ is EmptyExpr!16039) lt!2326431) ((_ is EmptyLang!16039) lt!2326431)))))

(assert (=> d!1904543 (validRegex!7775 lt!2326431)))

(assert (=> d!1904543 (= (derivativeStep!4762 lt!2326431 (head!12604 s!2326)) lt!2326631)))

(declare-fun b!6074798 () Bool)

(assert (=> b!6074798 (= c!1090259 (nullable!6034 (regOne!32590 lt!2326431)))))

(declare-fun e!3707351 () Regex!16039)

(declare-fun e!3707352 () Regex!16039)

(assert (=> b!6074798 (= e!3707351 e!3707352)))

(declare-fun b!6074799 () Bool)

(assert (=> b!6074799 (= e!3707355 (Union!16039 call!499945 call!499942))))

(declare-fun b!6074800 () Bool)

(assert (=> b!6074800 (= e!3707352 (Union!16039 (Concat!24884 call!499944 (regTwo!32590 lt!2326431)) EmptyLang!16039))))

(declare-fun bm!499940 () Bool)

(declare-fun call!499943 () Regex!16039)

(assert (=> bm!499940 (= call!499943 call!499942)))

(declare-fun b!6074801 () Bool)

(assert (=> b!6074801 (= e!3707352 (Union!16039 (Concat!24884 call!499943 (regTwo!32590 lt!2326431)) call!499944))))

(declare-fun b!6074802 () Bool)

(assert (=> b!6074802 (= e!3707355 e!3707351)))

(assert (=> b!6074802 (= c!1090260 ((_ is Star!16039) lt!2326431))))

(declare-fun b!6074803 () Bool)

(assert (=> b!6074803 (= e!3707354 (ite (= (head!12604 s!2326) (c!1089857 lt!2326431)) EmptyExpr!16039 EmptyLang!16039))))

(declare-fun b!6074804 () Bool)

(assert (=> b!6074804 (= e!3707351 (Concat!24884 call!499943 lt!2326431))))

(assert (= (and d!1904543 c!1090263) b!6074797))

(assert (= (and d!1904543 (not c!1090263)) b!6074796))

(assert (= (and b!6074796 c!1090261) b!6074803))

(assert (= (and b!6074796 (not c!1090261)) b!6074795))

(assert (= (and b!6074795 c!1090262) b!6074799))

(assert (= (and b!6074795 (not c!1090262)) b!6074802))

(assert (= (and b!6074802 c!1090260) b!6074804))

(assert (= (and b!6074802 (not c!1090260)) b!6074798))

(assert (= (and b!6074798 c!1090259) b!6074801))

(assert (= (and b!6074798 (not c!1090259)) b!6074800))

(assert (= (or b!6074801 b!6074800) bm!499938))

(assert (= (or b!6074804 b!6074801) bm!499940))

(assert (= (or b!6074799 bm!499940) bm!499939))

(assert (= (or b!6074799 bm!499938) bm!499937))

(assert (=> bm!499937 m!6934060))

(declare-fun m!6934866 () Bool)

(assert (=> bm!499937 m!6934866))

(assert (=> bm!499939 m!6934060))

(declare-fun m!6934868 () Bool)

(assert (=> bm!499939 m!6934868))

(declare-fun m!6934870 () Bool)

(assert (=> d!1904543 m!6934870))

(assert (=> d!1904543 m!6934074))

(declare-fun m!6934872 () Bool)

(assert (=> b!6074798 m!6934872))

(assert (=> b!6073847 d!1904543))

(assert (=> b!6073847 d!1904365))

(assert (=> b!6073847 d!1904367))

(declare-fun b!6074805 () Bool)

(declare-fun e!3707356 () (InoxSet Context!10846))

(assert (=> b!6074805 (= e!3707356 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6074806 () Bool)

(declare-fun call!499947 () (InoxSet Context!10846))

(assert (=> b!6074806 (= e!3707356 call!499947)))

(declare-fun bm!499942 () Bool)

(declare-fun call!499949 () (InoxSet Context!10846))

(declare-fun call!499948 () (InoxSet Context!10846))

(assert (=> bm!499942 (= call!499949 call!499948)))

(declare-fun b!6074807 () Bool)

(declare-fun e!3707361 () (InoxSet Context!10846))

(declare-fun call!499951 () (InoxSet Context!10846))

(assert (=> b!6074807 (= e!3707361 ((_ map or) call!499951 call!499948))))

(declare-fun bm!499943 () Bool)

(declare-fun call!499950 () List!64416)

(declare-fun call!499946 () List!64416)

(assert (=> bm!499943 (= call!499950 call!499946)))

(declare-fun bm!499944 () Bool)

(declare-fun c!1090266 () Bool)

(assert (=> bm!499944 (= call!499951 (derivationStepZipperDown!1289 (ite c!1090266 (regOne!32591 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))) (regOne!32590 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292)))))) (ite c!1090266 (ite (or c!1090054 c!1090056) lt!2326418 (Context!10847 call!499806)) (Context!10847 call!499946)) (h!70741 s!2326)))))

(declare-fun c!1090264 () Bool)

(declare-fun b!6074808 () Bool)

(assert (=> b!6074808 (= c!1090264 ((_ is Star!16039) (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))))))

(declare-fun e!3707358 () (InoxSet Context!10846))

(assert (=> b!6074808 (= e!3707358 e!3707356)))

(declare-fun b!6074809 () Bool)

(declare-fun e!3707357 () (InoxSet Context!10846))

(assert (=> b!6074809 (= e!3707357 e!3707358)))

(declare-fun c!1090265 () Bool)

(assert (=> b!6074809 (= c!1090265 ((_ is Concat!24884) (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))))))

(declare-fun b!6074810 () Bool)

(declare-fun e!3707360 () Bool)

(assert (=> b!6074810 (= e!3707360 (nullable!6034 (regOne!32590 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292)))))))))

(declare-fun bm!499945 () Bool)

(declare-fun c!1090268 () Bool)

(assert (=> bm!499945 (= call!499946 ($colon$colon!1918 (exprs!5923 (ite (or c!1090054 c!1090056) lt!2326418 (Context!10847 call!499806))) (ite (or c!1090268 c!1090265) (regTwo!32590 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))) (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292)))))))))

(declare-fun e!3707359 () (InoxSet Context!10846))

(declare-fun b!6074811 () Bool)

(assert (=> b!6074811 (= e!3707359 (store ((as const (Array Context!10846 Bool)) false) (ite (or c!1090054 c!1090056) lt!2326418 (Context!10847 call!499806)) true))))

(declare-fun b!6074812 () Bool)

(assert (=> b!6074812 (= c!1090268 e!3707360)))

(declare-fun res!2524187 () Bool)

(assert (=> b!6074812 (=> (not res!2524187) (not e!3707360))))

(assert (=> b!6074812 (= res!2524187 ((_ is Concat!24884) (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))))))

(assert (=> b!6074812 (= e!3707361 e!3707357)))

(declare-fun bm!499941 () Bool)

(assert (=> bm!499941 (= call!499948 (derivationStepZipperDown!1289 (ite c!1090266 (regTwo!32591 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))) (ite c!1090268 (regTwo!32590 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))) (ite c!1090265 (regOne!32590 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))) (reg!16368 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292)))))))) (ite (or c!1090266 c!1090268) (ite (or c!1090054 c!1090056) lt!2326418 (Context!10847 call!499806)) (Context!10847 call!499950)) (h!70741 s!2326)))))

(declare-fun d!1904569 () Bool)

(declare-fun c!1090267 () Bool)

(assert (=> d!1904569 (= c!1090267 (and ((_ is ElementMatch!16039) (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))) (= (c!1089857 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))) (h!70741 s!2326))))))

(assert (=> d!1904569 (= (derivationStepZipperDown!1289 (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292)))) (ite (or c!1090054 c!1090056) lt!2326418 (Context!10847 call!499806)) (h!70741 s!2326)) e!3707359)))

(declare-fun b!6074813 () Bool)

(assert (=> b!6074813 (= e!3707358 call!499947)))

(declare-fun bm!499946 () Bool)

(assert (=> bm!499946 (= call!499947 call!499949)))

(declare-fun b!6074814 () Bool)

(assert (=> b!6074814 (= e!3707359 e!3707361)))

(assert (=> b!6074814 (= c!1090266 ((_ is Union!16039) (ite c!1090054 (regTwo!32591 r!7292) (ite c!1090056 (regTwo!32590 r!7292) (ite c!1090053 (regOne!32590 r!7292) (reg!16368 r!7292))))))))

(declare-fun b!6074815 () Bool)

(assert (=> b!6074815 (= e!3707357 ((_ map or) call!499951 call!499949))))

(assert (= (and d!1904569 c!1090267) b!6074811))

(assert (= (and d!1904569 (not c!1090267)) b!6074814))

(assert (= (and b!6074814 c!1090266) b!6074807))

(assert (= (and b!6074814 (not c!1090266)) b!6074812))

(assert (= (and b!6074812 res!2524187) b!6074810))

(assert (= (and b!6074812 c!1090268) b!6074815))

(assert (= (and b!6074812 (not c!1090268)) b!6074809))

(assert (= (and b!6074809 c!1090265) b!6074813))

(assert (= (and b!6074809 (not c!1090265)) b!6074808))

(assert (= (and b!6074808 c!1090264) b!6074806))

(assert (= (and b!6074808 (not c!1090264)) b!6074805))

(assert (= (or b!6074813 b!6074806) bm!499943))

(assert (= (or b!6074813 b!6074806) bm!499946))

(assert (= (or b!6074815 bm!499943) bm!499945))

(assert (= (or b!6074815 bm!499946) bm!499942))

(assert (= (or b!6074807 bm!499942) bm!499941))

(assert (= (or b!6074807 b!6074815) bm!499944))

(declare-fun m!6934874 () Bool)

(assert (=> b!6074810 m!6934874))

(declare-fun m!6934876 () Bool)

(assert (=> bm!499941 m!6934876))

(declare-fun m!6934878 () Bool)

(assert (=> bm!499945 m!6934878))

(declare-fun m!6934880 () Bool)

(assert (=> b!6074811 m!6934880))

(declare-fun m!6934882 () Bool)

(assert (=> bm!499944 m!6934882))

(assert (=> bm!499797 d!1904569))

(assert (=> b!6074165 d!1904365))

(declare-fun d!1904571 () Bool)

(assert (=> d!1904571 (= (Exists!3109 (ite c!1090070 lambda!331066 lambda!331067)) (choose!45249 (ite c!1090070 lambda!331066 lambda!331067)))))

(declare-fun bs!1504237 () Bool)

(assert (= bs!1504237 d!1904571))

(declare-fun m!6934884 () Bool)

(assert (=> bs!1504237 m!6934884))

(assert (=> bm!499808 d!1904571))

(declare-fun d!1904573 () Bool)

(declare-fun e!3707363 () Bool)

(assert (=> d!1904573 e!3707363))

(declare-fun res!2524189 () Bool)

(assert (=> d!1904573 (=> (not res!2524189) (not e!3707363))))

(declare-fun lt!2326632 () List!64417)

(assert (=> d!1904573 (= res!2524189 (= (content!11910 lt!2326632) ((_ map or) (content!11910 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293))) (content!11910 (t!377858 s!2326)))))))

(declare-fun e!3707362 () List!64417)

(assert (=> d!1904573 (= lt!2326632 e!3707362)))

(declare-fun c!1090269 () Bool)

(assert (=> d!1904573 (= c!1090269 ((_ is Nil!64293) (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293))))))

(assert (=> d!1904573 (= (++!14128 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)) (t!377858 s!2326)) lt!2326632)))

(declare-fun b!6074817 () Bool)

(assert (=> b!6074817 (= e!3707362 (Cons!64293 (h!70741 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293))) (++!14128 (t!377858 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293))) (t!377858 s!2326))))))

(declare-fun b!6074818 () Bool)

(declare-fun res!2524188 () Bool)

(assert (=> b!6074818 (=> (not res!2524188) (not e!3707363))))

(assert (=> b!6074818 (= res!2524188 (= (size!40187 lt!2326632) (+ (size!40187 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293))) (size!40187 (t!377858 s!2326)))))))

(declare-fun b!6074816 () Bool)

(assert (=> b!6074816 (= e!3707362 (t!377858 s!2326))))

(declare-fun b!6074819 () Bool)

(assert (=> b!6074819 (= e!3707363 (or (not (= (t!377858 s!2326) Nil!64293)) (= lt!2326632 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)))))))

(assert (= (and d!1904573 c!1090269) b!6074816))

(assert (= (and d!1904573 (not c!1090269)) b!6074817))

(assert (= (and d!1904573 res!2524189) b!6074818))

(assert (= (and b!6074818 res!2524188) b!6074819))

(declare-fun m!6934886 () Bool)

(assert (=> d!1904573 m!6934886))

(assert (=> d!1904573 m!6934226))

(declare-fun m!6934888 () Bool)

(assert (=> d!1904573 m!6934888))

(declare-fun m!6934890 () Bool)

(assert (=> d!1904573 m!6934890))

(declare-fun m!6934892 () Bool)

(assert (=> b!6074817 m!6934892))

(declare-fun m!6934894 () Bool)

(assert (=> b!6074818 m!6934894))

(assert (=> b!6074818 m!6934226))

(declare-fun m!6934896 () Bool)

(assert (=> b!6074818 m!6934896))

(declare-fun m!6934898 () Bool)

(assert (=> b!6074818 m!6934898))

(assert (=> b!6074078 d!1904573))

(declare-fun d!1904575 () Bool)

(declare-fun e!3707365 () Bool)

(assert (=> d!1904575 e!3707365))

(declare-fun res!2524191 () Bool)

(assert (=> d!1904575 (=> (not res!2524191) (not e!3707365))))

(declare-fun lt!2326633 () List!64417)

(assert (=> d!1904575 (= res!2524191 (= (content!11910 lt!2326633) ((_ map or) (content!11910 Nil!64293) (content!11910 (Cons!64293 (h!70741 s!2326) Nil!64293)))))))

(declare-fun e!3707364 () List!64417)

(assert (=> d!1904575 (= lt!2326633 e!3707364)))

(declare-fun c!1090270 () Bool)

(assert (=> d!1904575 (= c!1090270 ((_ is Nil!64293) Nil!64293))))

(assert (=> d!1904575 (= (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)) lt!2326633)))

(declare-fun b!6074821 () Bool)

(assert (=> b!6074821 (= e!3707364 (Cons!64293 (h!70741 Nil!64293) (++!14128 (t!377858 Nil!64293) (Cons!64293 (h!70741 s!2326) Nil!64293))))))

(declare-fun b!6074822 () Bool)

(declare-fun res!2524190 () Bool)

(assert (=> b!6074822 (=> (not res!2524190) (not e!3707365))))

(assert (=> b!6074822 (= res!2524190 (= (size!40187 lt!2326633) (+ (size!40187 Nil!64293) (size!40187 (Cons!64293 (h!70741 s!2326) Nil!64293)))))))

(declare-fun b!6074820 () Bool)

(assert (=> b!6074820 (= e!3707364 (Cons!64293 (h!70741 s!2326) Nil!64293))))

(declare-fun b!6074823 () Bool)

(assert (=> b!6074823 (= e!3707365 (or (not (= (Cons!64293 (h!70741 s!2326) Nil!64293) Nil!64293)) (= lt!2326633 Nil!64293)))))

(assert (= (and d!1904575 c!1090270) b!6074820))

(assert (= (and d!1904575 (not c!1090270)) b!6074821))

(assert (= (and d!1904575 res!2524191) b!6074822))

(assert (= (and b!6074822 res!2524190) b!6074823))

(declare-fun m!6934906 () Bool)

(assert (=> d!1904575 m!6934906))

(declare-fun m!6934908 () Bool)

(assert (=> d!1904575 m!6934908))

(declare-fun m!6934910 () Bool)

(assert (=> d!1904575 m!6934910))

(declare-fun m!6934912 () Bool)

(assert (=> b!6074821 m!6934912))

(declare-fun m!6934914 () Bool)

(assert (=> b!6074822 m!6934914))

(declare-fun m!6934916 () Bool)

(assert (=> b!6074822 m!6934916))

(declare-fun m!6934918 () Bool)

(assert (=> b!6074822 m!6934918))

(assert (=> b!6074078 d!1904575))

(declare-fun d!1904579 () Bool)

(assert (=> d!1904579 (= (++!14128 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)) (t!377858 s!2326)) s!2326)))

(declare-fun lt!2326638 () Unit!157349)

(declare-fun choose!45256 (List!64417 C!32348 List!64417 List!64417) Unit!157349)

(assert (=> d!1904579 (= lt!2326638 (choose!45256 Nil!64293 (h!70741 s!2326) (t!377858 s!2326) s!2326))))

(assert (=> d!1904579 (= (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) (t!377858 s!2326))) s!2326)))

(assert (=> d!1904579 (= (lemmaMoveElementToOtherListKeepsConcatEq!2223 Nil!64293 (h!70741 s!2326) (t!377858 s!2326) s!2326) lt!2326638)))

(declare-fun bs!1504240 () Bool)

(assert (= bs!1504240 d!1904579))

(assert (=> bs!1504240 m!6934226))

(assert (=> bs!1504240 m!6934226))

(assert (=> bs!1504240 m!6934228))

(declare-fun m!6934934 () Bool)

(assert (=> bs!1504240 m!6934934))

(declare-fun m!6934936 () Bool)

(assert (=> bs!1504240 m!6934936))

(assert (=> b!6074078 d!1904579))

(declare-fun b!6074848 () Bool)

(declare-fun res!2524204 () Bool)

(declare-fun e!3707378 () Bool)

(assert (=> b!6074848 (=> (not res!2524204) (not e!3707378))))

(declare-fun lt!2326639 () Option!15930)

(assert (=> b!6074848 (= res!2524204 (matchR!8222 (regOne!32590 r!7292) (_1!36321 (get!22163 lt!2326639))))))

(declare-fun b!6074849 () Bool)

(declare-fun res!2524200 () Bool)

(assert (=> b!6074849 (=> (not res!2524200) (not e!3707378))))

(assert (=> b!6074849 (= res!2524200 (matchR!8222 (regTwo!32590 r!7292) (_2!36321 (get!22163 lt!2326639))))))

(declare-fun b!6074850 () Bool)

(declare-fun e!3707382 () Option!15930)

(declare-fun e!3707380 () Option!15930)

(assert (=> b!6074850 (= e!3707382 e!3707380)))

(declare-fun c!1090280 () Bool)

(assert (=> b!6074850 (= c!1090280 ((_ is Nil!64293) (t!377858 s!2326)))))

(declare-fun d!1904585 () Bool)

(declare-fun e!3707379 () Bool)

(assert (=> d!1904585 e!3707379))

(declare-fun res!2524202 () Bool)

(assert (=> d!1904585 (=> res!2524202 e!3707379)))

(assert (=> d!1904585 (= res!2524202 e!3707378)))

(declare-fun res!2524201 () Bool)

(assert (=> d!1904585 (=> (not res!2524201) (not e!3707378))))

(assert (=> d!1904585 (= res!2524201 (isDefined!12633 lt!2326639))))

(assert (=> d!1904585 (= lt!2326639 e!3707382)))

(declare-fun c!1090279 () Bool)

(declare-fun e!3707381 () Bool)

(assert (=> d!1904585 (= c!1090279 e!3707381)))

(declare-fun res!2524203 () Bool)

(assert (=> d!1904585 (=> (not res!2524203) (not e!3707381))))

(assert (=> d!1904585 (= res!2524203 (matchR!8222 (regOne!32590 r!7292) (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293))))))

(assert (=> d!1904585 (validRegex!7775 (regOne!32590 r!7292))))

(assert (=> d!1904585 (= (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)) (t!377858 s!2326) s!2326) lt!2326639)))

(declare-fun b!6074851 () Bool)

(assert (=> b!6074851 (= e!3707382 (Some!15929 (tuple2!66037 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)) (t!377858 s!2326))))))

(declare-fun b!6074852 () Bool)

(assert (=> b!6074852 (= e!3707378 (= (++!14128 (_1!36321 (get!22163 lt!2326639)) (_2!36321 (get!22163 lt!2326639))) s!2326))))

(declare-fun b!6074853 () Bool)

(assert (=> b!6074853 (= e!3707380 None!15929)))

(declare-fun b!6074854 () Bool)

(declare-fun lt!2326640 () Unit!157349)

(declare-fun lt!2326641 () Unit!157349)

(assert (=> b!6074854 (= lt!2326640 lt!2326641)))

(assert (=> b!6074854 (= (++!14128 (++!14128 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)) (Cons!64293 (h!70741 (t!377858 s!2326)) Nil!64293)) (t!377858 (t!377858 s!2326))) s!2326)))

(assert (=> b!6074854 (= lt!2326641 (lemmaMoveElementToOtherListKeepsConcatEq!2223 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)) (h!70741 (t!377858 s!2326)) (t!377858 (t!377858 s!2326)) s!2326))))

(assert (=> b!6074854 (= e!3707380 (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) (++!14128 (++!14128 Nil!64293 (Cons!64293 (h!70741 s!2326) Nil!64293)) (Cons!64293 (h!70741 (t!377858 s!2326)) Nil!64293)) (t!377858 (t!377858 s!2326)) s!2326))))

(declare-fun b!6074855 () Bool)

(assert (=> b!6074855 (= e!3707379 (not (isDefined!12633 lt!2326639)))))

(declare-fun b!6074856 () Bool)

(assert (=> b!6074856 (= e!3707381 (matchR!8222 (regTwo!32590 r!7292) (t!377858 s!2326)))))

(assert (= (and d!1904585 res!2524203) b!6074856))

(assert (= (and d!1904585 c!1090279) b!6074851))

(assert (= (and d!1904585 (not c!1090279)) b!6074850))

(assert (= (and b!6074850 c!1090280) b!6074853))

(assert (= (and b!6074850 (not c!1090280)) b!6074854))

(assert (= (and d!1904585 res!2524201) b!6074848))

(assert (= (and b!6074848 res!2524204) b!6074849))

(assert (= (and b!6074849 res!2524200) b!6074852))

(assert (= (and d!1904585 (not res!2524202)) b!6074855))

(declare-fun m!6934938 () Bool)

(assert (=> b!6074849 m!6934938))

(declare-fun m!6934940 () Bool)

(assert (=> b!6074849 m!6934940))

(assert (=> b!6074852 m!6934938))

(declare-fun m!6934942 () Bool)

(assert (=> b!6074852 m!6934942))

(assert (=> b!6074848 m!6934938))

(declare-fun m!6934944 () Bool)

(assert (=> b!6074848 m!6934944))

(assert (=> b!6074854 m!6934226))

(declare-fun m!6934948 () Bool)

(assert (=> b!6074854 m!6934948))

(assert (=> b!6074854 m!6934948))

(declare-fun m!6934952 () Bool)

(assert (=> b!6074854 m!6934952))

(assert (=> b!6074854 m!6934226))

(declare-fun m!6934954 () Bool)

(assert (=> b!6074854 m!6934954))

(assert (=> b!6074854 m!6934948))

(declare-fun m!6934956 () Bool)

(assert (=> b!6074854 m!6934956))

(declare-fun m!6934958 () Bool)

(assert (=> b!6074856 m!6934958))

(declare-fun m!6934960 () Bool)

(assert (=> b!6074855 m!6934960))

(assert (=> d!1904585 m!6934960))

(assert (=> d!1904585 m!6934226))

(declare-fun m!6934962 () Bool)

(assert (=> d!1904585 m!6934962))

(assert (=> d!1904585 m!6934240))

(assert (=> b!6074078 d!1904585))

(declare-fun d!1904599 () Bool)

(assert (=> d!1904599 (= (nullable!6034 (reg!16368 r!7292)) (nullableFct!1997 (reg!16368 r!7292)))))

(declare-fun bs!1504244 () Bool)

(assert (= bs!1504244 d!1904599))

(declare-fun m!6934964 () Bool)

(assert (=> bs!1504244 m!6934964))

(assert (=> b!6073491 d!1904599))

(declare-fun bs!1504245 () Bool)

(declare-fun d!1904601 () Bool)

(assert (= bs!1504245 (and d!1904601 d!1904201)))

(declare-fun lambda!331124 () Int)

(assert (=> bs!1504245 (= lambda!331124 lambda!331013)))

(declare-fun bs!1504246 () Bool)

(assert (= bs!1504246 (and d!1904601 d!1904353)))

(assert (=> bs!1504246 (= lambda!331124 lambda!331073)))

(declare-fun bs!1504247 () Bool)

(assert (= bs!1504247 (and d!1904601 b!6074429)))

(assert (=> bs!1504247 (not (= lambda!331124 lambda!331090))))

(declare-fun bs!1504248 () Bool)

(assert (= bs!1504248 (and d!1904601 d!1904269)))

(assert (=> bs!1504248 (= lambda!331124 lambda!331049)))

(declare-fun bs!1504249 () Bool)

(assert (= bs!1504249 (and d!1904601 d!1904207)))

(assert (=> bs!1504249 (= lambda!331124 lambda!331016)))

(declare-fun bs!1504250 () Bool)

(assert (= bs!1504250 (and d!1904601 b!6074431)))

(assert (=> bs!1504250 (not (= lambda!331124 lambda!331091))))

(declare-fun bs!1504251 () Bool)

(assert (= bs!1504251 (and d!1904601 d!1904191)))

(assert (=> bs!1504251 (= lambda!331124 lambda!331004)))

(declare-fun bs!1504252 () Bool)

(assert (= bs!1504252 (and d!1904601 d!1904307)))

(assert (=> bs!1504252 (= lambda!331124 lambda!331071)))

(declare-fun bs!1504253 () Bool)

(assert (= bs!1504253 (and d!1904601 d!1904369)))

(assert (=> bs!1504253 (= lambda!331124 lambda!331077)))

(declare-fun bs!1504254 () Bool)

(assert (= bs!1504254 (and d!1904601 d!1904305)))

(assert (=> bs!1504254 (= lambda!331124 lambda!331070)))

(declare-fun bs!1504255 () Bool)

(assert (= bs!1504255 (and d!1904601 d!1904469)))

(assert (=> bs!1504255 (= lambda!331124 lambda!331107)))

(declare-fun b!6074859 () Bool)

(declare-fun e!3707386 () Bool)

(declare-fun lt!2326642 () Regex!16039)

(assert (=> b!6074859 (= e!3707386 (= lt!2326642 (head!12603 (t!377857 (exprs!5923 (h!70742 zl!343))))))))

(declare-fun b!6074860 () Bool)

(declare-fun e!3707389 () Regex!16039)

(assert (=> b!6074860 (= e!3707389 EmptyExpr!16039)))

(declare-fun b!6074861 () Bool)

(declare-fun e!3707387 () Regex!16039)

(assert (=> b!6074861 (= e!3707387 (h!70740 (t!377857 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun b!6074862 () Bool)

(assert (=> b!6074862 (= e!3707387 e!3707389)))

(declare-fun c!1090281 () Bool)

(assert (=> b!6074862 (= c!1090281 ((_ is Cons!64292) (t!377857 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun e!3707390 () Bool)

(assert (=> d!1904601 e!3707390))

(declare-fun res!2524208 () Bool)

(assert (=> d!1904601 (=> (not res!2524208) (not e!3707390))))

(assert (=> d!1904601 (= res!2524208 (validRegex!7775 lt!2326642))))

(assert (=> d!1904601 (= lt!2326642 e!3707387)))

(declare-fun c!1090283 () Bool)

(declare-fun e!3707385 () Bool)

(assert (=> d!1904601 (= c!1090283 e!3707385)))

(declare-fun res!2524207 () Bool)

(assert (=> d!1904601 (=> (not res!2524207) (not e!3707385))))

(assert (=> d!1904601 (= res!2524207 ((_ is Cons!64292) (t!377857 (exprs!5923 (h!70742 zl!343)))))))

(assert (=> d!1904601 (forall!15151 (t!377857 (exprs!5923 (h!70742 zl!343))) lambda!331124)))

(assert (=> d!1904601 (= (generalisedConcat!1636 (t!377857 (exprs!5923 (h!70742 zl!343)))) lt!2326642)))

(declare-fun b!6074863 () Bool)

(assert (=> b!6074863 (= e!3707386 (isConcat!981 lt!2326642))))

(declare-fun b!6074864 () Bool)

(declare-fun e!3707388 () Bool)

(assert (=> b!6074864 (= e!3707390 e!3707388)))

(declare-fun c!1090282 () Bool)

(assert (=> b!6074864 (= c!1090282 (isEmpty!36202 (t!377857 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun b!6074865 () Bool)

(assert (=> b!6074865 (= e!3707388 e!3707386)))

(declare-fun c!1090284 () Bool)

(assert (=> b!6074865 (= c!1090284 (isEmpty!36202 (tail!11688 (t!377857 (exprs!5923 (h!70742 zl!343))))))))

(declare-fun b!6074866 () Bool)

(assert (=> b!6074866 (= e!3707388 (isEmptyExpr!1458 lt!2326642))))

(declare-fun b!6074867 () Bool)

(assert (=> b!6074867 (= e!3707389 (Concat!24884 (h!70740 (t!377857 (exprs!5923 (h!70742 zl!343)))) (generalisedConcat!1636 (t!377857 (t!377857 (exprs!5923 (h!70742 zl!343)))))))))

(declare-fun b!6074868 () Bool)

(assert (=> b!6074868 (= e!3707385 (isEmpty!36202 (t!377857 (t!377857 (exprs!5923 (h!70742 zl!343))))))))

(assert (= (and d!1904601 res!2524207) b!6074868))

(assert (= (and d!1904601 c!1090283) b!6074861))

(assert (= (and d!1904601 (not c!1090283)) b!6074862))

(assert (= (and b!6074862 c!1090281) b!6074867))

(assert (= (and b!6074862 (not c!1090281)) b!6074860))

(assert (= (and d!1904601 res!2524208) b!6074864))

(assert (= (and b!6074864 c!1090282) b!6074866))

(assert (= (and b!6074864 (not c!1090282)) b!6074865))

(assert (= (and b!6074865 c!1090284) b!6074859))

(assert (= (and b!6074865 (not c!1090284)) b!6074863))

(declare-fun m!6934970 () Bool)

(assert (=> b!6074867 m!6934970))

(declare-fun m!6934972 () Bool)

(assert (=> b!6074859 m!6934972))

(declare-fun m!6934974 () Bool)

(assert (=> d!1904601 m!6934974))

(declare-fun m!6934976 () Bool)

(assert (=> d!1904601 m!6934976))

(assert (=> b!6074864 m!6933814))

(declare-fun m!6934978 () Bool)

(assert (=> b!6074863 m!6934978))

(declare-fun m!6934980 () Bool)

(assert (=> b!6074865 m!6934980))

(assert (=> b!6074865 m!6934980))

(declare-fun m!6934982 () Bool)

(assert (=> b!6074865 m!6934982))

(declare-fun m!6934984 () Bool)

(assert (=> b!6074866 m!6934984))

(declare-fun m!6934986 () Bool)

(assert (=> b!6074868 m!6934986))

(assert (=> b!6074199 d!1904601))

(declare-fun d!1904605 () Bool)

(assert (=> d!1904605 true))

(declare-fun setRes!41071 () Bool)

(assert (=> d!1904605 setRes!41071))

(declare-fun condSetEmpty!41071 () Bool)

(declare-fun res!2524212 () (InoxSet Context!10846))

(assert (=> d!1904605 (= condSetEmpty!41071 (= res!2524212 ((as const (Array Context!10846 Bool)) false)))))

(assert (=> d!1904605 (= (choose!45243 lt!2326440 lambda!330983) res!2524212)))

(declare-fun setIsEmpty!41071 () Bool)

(assert (=> setIsEmpty!41071 setRes!41071))

(declare-fun setNonEmpty!41071 () Bool)

(declare-fun tp!1693189 () Bool)

(declare-fun setElem!41071 () Context!10846)

(declare-fun e!3707394 () Bool)

(assert (=> setNonEmpty!41071 (= setRes!41071 (and tp!1693189 (inv!83344 setElem!41071) e!3707394))))

(declare-fun setRest!41071 () (InoxSet Context!10846))

(assert (=> setNonEmpty!41071 (= res!2524212 ((_ map or) (store ((as const (Array Context!10846 Bool)) false) setElem!41071 true) setRest!41071))))

(declare-fun b!6074872 () Bool)

(declare-fun tp!1693188 () Bool)

(assert (=> b!6074872 (= e!3707394 tp!1693188)))

(assert (= (and d!1904605 condSetEmpty!41071) setIsEmpty!41071))

(assert (= (and d!1904605 (not condSetEmpty!41071)) setNonEmpty!41071))

(assert (= setNonEmpty!41071 b!6074872))

(declare-fun m!6934992 () Bool)

(assert (=> setNonEmpty!41071 m!6934992))

(assert (=> d!1904181 d!1904605))

(declare-fun d!1904611 () Bool)

(assert (=> d!1904611 (= (nullable!6034 (regOne!32590 (regOne!32590 r!7292))) (nullableFct!1997 (regOne!32590 (regOne!32590 r!7292))))))

(declare-fun bs!1504256 () Bool)

(assert (= bs!1504256 d!1904611))

(declare-fun m!6934994 () Bool)

(assert (=> bs!1504256 m!6934994))

(assert (=> b!6073572 d!1904611))

(assert (=> d!1904299 d!1904389))

(assert (=> d!1904299 d!1904145))

(declare-fun d!1904613 () Bool)

(assert (=> d!1904613 (= (isEmpty!36206 (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) Nil!64293 s!2326 s!2326)) (not ((_ is Some!15929) (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) Nil!64293 s!2326 s!2326))))))

(assert (=> d!1904287 d!1904613))

(assert (=> b!6074154 d!1904467))

(assert (=> b!6074154 d!1904367))

(declare-fun d!1904615 () Bool)

(assert (=> d!1904615 (= (isConcat!981 lt!2326565) ((_ is Concat!24884) lt!2326565))))

(assert (=> b!6074195 d!1904615))

(assert (=> bs!1503972 d!1904187))

(assert (=> b!6073851 d!1904365))

(declare-fun d!1904617 () Bool)

(declare-fun res!2524215 () Bool)

(declare-fun e!3707402 () Bool)

(assert (=> d!1904617 (=> res!2524215 e!3707402)))

(assert (=> d!1904617 (= res!2524215 ((_ is Nil!64294) lt!2326433))))

(assert (=> d!1904617 (= (forall!15152 lt!2326433 lambda!331045) e!3707402)))

(declare-fun b!6074885 () Bool)

(declare-fun e!3707403 () Bool)

(assert (=> b!6074885 (= e!3707402 e!3707403)))

(declare-fun res!2524216 () Bool)

(assert (=> b!6074885 (=> (not res!2524216) (not e!3707403))))

(assert (=> b!6074885 (= res!2524216 (dynLambda!25281 lambda!331045 (h!70742 lt!2326433)))))

(declare-fun b!6074886 () Bool)

(assert (=> b!6074886 (= e!3707403 (forall!15152 (t!377859 lt!2326433) lambda!331045))))

(assert (= (and d!1904617 (not res!2524215)) b!6074885))

(assert (= (and b!6074885 res!2524216) b!6074886))

(declare-fun b_lambda!231057 () Bool)

(assert (=> (not b_lambda!231057) (not b!6074885)))

(declare-fun m!6935006 () Bool)

(assert (=> b!6074885 m!6935006))

(declare-fun m!6935008 () Bool)

(assert (=> b!6074886 m!6935008))

(assert (=> b!6073962 d!1904617))

(assert (=> b!6073753 d!1904305))

(declare-fun bs!1504257 () Bool)

(declare-fun d!1904621 () Bool)

(assert (= bs!1504257 (and d!1904621 d!1904201)))

(declare-fun lambda!331125 () Int)

(assert (=> bs!1504257 (= lambda!331125 lambda!331013)))

(declare-fun bs!1504258 () Bool)

(assert (= bs!1504258 (and d!1904621 d!1904353)))

(assert (=> bs!1504258 (= lambda!331125 lambda!331073)))

(declare-fun bs!1504259 () Bool)

(assert (= bs!1504259 (and d!1904621 b!6074429)))

(assert (=> bs!1504259 (not (= lambda!331125 lambda!331090))))

(declare-fun bs!1504260 () Bool)

(assert (= bs!1504260 (and d!1904621 d!1904269)))

(assert (=> bs!1504260 (= lambda!331125 lambda!331049)))

(declare-fun bs!1504261 () Bool)

(assert (= bs!1504261 (and d!1904621 d!1904207)))

(assert (=> bs!1504261 (= lambda!331125 lambda!331016)))

(declare-fun bs!1504262 () Bool)

(assert (= bs!1504262 (and d!1904621 b!6074431)))

(assert (=> bs!1504262 (not (= lambda!331125 lambda!331091))))

(declare-fun bs!1504263 () Bool)

(assert (= bs!1504263 (and d!1904621 d!1904191)))

(assert (=> bs!1504263 (= lambda!331125 lambda!331004)))

(declare-fun bs!1504264 () Bool)

(assert (= bs!1504264 (and d!1904621 d!1904307)))

(assert (=> bs!1504264 (= lambda!331125 lambda!331071)))

(declare-fun bs!1504265 () Bool)

(assert (= bs!1504265 (and d!1904621 d!1904369)))

(assert (=> bs!1504265 (= lambda!331125 lambda!331077)))

(declare-fun bs!1504266 () Bool)

(assert (= bs!1504266 (and d!1904621 d!1904601)))

(assert (=> bs!1504266 (= lambda!331125 lambda!331124)))

(declare-fun bs!1504267 () Bool)

(assert (= bs!1504267 (and d!1904621 d!1904305)))

(assert (=> bs!1504267 (= lambda!331125 lambda!331070)))

(declare-fun bs!1504268 () Bool)

(assert (= bs!1504268 (and d!1904621 d!1904469)))

(assert (=> bs!1504268 (= lambda!331125 lambda!331107)))

(declare-fun lt!2326643 () List!64416)

(assert (=> d!1904621 (forall!15151 lt!2326643 lambda!331125)))

(declare-fun e!3707404 () List!64416)

(assert (=> d!1904621 (= lt!2326643 e!3707404)))

(declare-fun c!1090290 () Bool)

(assert (=> d!1904621 (= c!1090290 ((_ is Cons!64294) (t!377859 zl!343)))))

(assert (=> d!1904621 (= (unfocusZipperList!1460 (t!377859 zl!343)) lt!2326643)))

(declare-fun b!6074887 () Bool)

(assert (=> b!6074887 (= e!3707404 (Cons!64292 (generalisedConcat!1636 (exprs!5923 (h!70742 (t!377859 zl!343)))) (unfocusZipperList!1460 (t!377859 (t!377859 zl!343)))))))

(declare-fun b!6074888 () Bool)

(assert (=> b!6074888 (= e!3707404 Nil!64292)))

(assert (= (and d!1904621 c!1090290) b!6074887))

(assert (= (and d!1904621 (not c!1090290)) b!6074888))

(declare-fun m!6935010 () Bool)

(assert (=> d!1904621 m!6935010))

(declare-fun m!6935012 () Bool)

(assert (=> b!6074887 m!6935012))

(declare-fun m!6935014 () Bool)

(assert (=> b!6074887 m!6935014))

(assert (=> b!6073753 d!1904621))

(assert (=> b!6074158 d!1904365))

(declare-fun d!1904623 () Bool)

(assert (=> d!1904623 (= (isEmpty!36202 (unfocusZipperList!1460 zl!343)) ((_ is Nil!64292) (unfocusZipperList!1460 zl!343)))))

(assert (=> b!6073732 d!1904623))

(declare-fun bs!1504269 () Bool)

(declare-fun b!6074897 () Bool)

(assert (= bs!1504269 (and b!6074897 b!6073448)))

(declare-fun lambda!331126 () Int)

(assert (=> bs!1504269 (not (= lambda!331126 lambda!330982))))

(declare-fun bs!1504270 () Bool)

(assert (= bs!1504270 (and b!6074897 d!1904285)))

(assert (=> bs!1504270 (not (= lambda!331126 lambda!331057))))

(declare-fun bs!1504271 () Bool)

(assert (= bs!1504271 (and b!6074897 b!6074693)))

(assert (=> bs!1504271 (not (= lambda!331126 lambda!331118))))

(declare-fun bs!1504272 () Bool)

(assert (= bs!1504272 (and b!6074897 d!1904283)))

(assert (=> bs!1504272 (not (= lambda!331126 lambda!331052))))

(assert (=> bs!1504270 (not (= lambda!331126 lambda!331058))))

(declare-fun bs!1504273 () Bool)

(assert (= bs!1504273 (and b!6074897 b!6074148)))

(assert (=> bs!1504273 (not (= lambda!331126 lambda!331067))))

(assert (=> bs!1504269 (not (= lambda!331126 lambda!330981))))

(declare-fun bs!1504274 () Bool)

(assert (= bs!1504274 (and b!6074897 b!6074690)))

(assert (=> bs!1504274 (= (and (= (reg!16368 (regOne!32591 r!7292)) (reg!16368 (regTwo!32591 r!7292))) (= (regOne!32591 r!7292) (regTwo!32591 r!7292))) (= lambda!331126 lambda!331114))))

(declare-fun bs!1504275 () Bool)

(assert (= bs!1504275 (and b!6074897 b!6074145)))

(assert (=> bs!1504275 (= (and (= (reg!16368 (regOne!32591 r!7292)) (reg!16368 r!7292)) (= (regOne!32591 r!7292) r!7292)) (= lambda!331126 lambda!331066))))

(assert (=> b!6074897 true))

(assert (=> b!6074897 true))

(declare-fun bs!1504276 () Bool)

(declare-fun b!6074900 () Bool)

(assert (= bs!1504276 (and b!6074900 b!6073448)))

(declare-fun lambda!331127 () Int)

(assert (=> bs!1504276 (= (and (= (regOne!32590 (regOne!32591 r!7292)) (regOne!32590 r!7292)) (= (regTwo!32590 (regOne!32591 r!7292)) (regTwo!32590 r!7292))) (= lambda!331127 lambda!330982))))

(declare-fun bs!1504278 () Bool)

(assert (= bs!1504278 (and b!6074900 d!1904285)))

(assert (=> bs!1504278 (not (= lambda!331127 lambda!331057))))

(declare-fun bs!1504279 () Bool)

(assert (= bs!1504279 (and b!6074900 b!6074693)))

(assert (=> bs!1504279 (= (and (= (regOne!32590 (regOne!32591 r!7292)) (regOne!32590 (regTwo!32591 r!7292))) (= (regTwo!32590 (regOne!32591 r!7292)) (regTwo!32590 (regTwo!32591 r!7292)))) (= lambda!331127 lambda!331118))))

(declare-fun bs!1504280 () Bool)

(assert (= bs!1504280 (and b!6074900 d!1904283)))

(assert (=> bs!1504280 (not (= lambda!331127 lambda!331052))))

(declare-fun bs!1504281 () Bool)

(assert (= bs!1504281 (and b!6074900 b!6074897)))

(assert (=> bs!1504281 (not (= lambda!331127 lambda!331126))))

(assert (=> bs!1504278 (= (and (= (regOne!32590 (regOne!32591 r!7292)) (regOne!32590 r!7292)) (= (regTwo!32590 (regOne!32591 r!7292)) (regTwo!32590 r!7292))) (= lambda!331127 lambda!331058))))

(declare-fun bs!1504282 () Bool)

(assert (= bs!1504282 (and b!6074900 b!6074148)))

(assert (=> bs!1504282 (= (and (= (regOne!32590 (regOne!32591 r!7292)) (regOne!32590 r!7292)) (= (regTwo!32590 (regOne!32591 r!7292)) (regTwo!32590 r!7292))) (= lambda!331127 lambda!331067))))

(assert (=> bs!1504276 (not (= lambda!331127 lambda!330981))))

(declare-fun bs!1504283 () Bool)

(assert (= bs!1504283 (and b!6074900 b!6074690)))

(assert (=> bs!1504283 (not (= lambda!331127 lambda!331114))))

(declare-fun bs!1504284 () Bool)

(assert (= bs!1504284 (and b!6074900 b!6074145)))

(assert (=> bs!1504284 (not (= lambda!331127 lambda!331066))))

(assert (=> b!6074900 true))

(assert (=> b!6074900 true))

(declare-fun bm!499958 () Bool)

(declare-fun call!499964 () Bool)

(declare-fun c!1090295 () Bool)

(assert (=> bm!499958 (= call!499964 (Exists!3109 (ite c!1090295 lambda!331126 lambda!331127)))))

(declare-fun b!6074895 () Bool)

(declare-fun c!1090296 () Bool)

(assert (=> b!6074895 (= c!1090296 ((_ is ElementMatch!16039) (regOne!32591 r!7292)))))

(declare-fun e!3707411 () Bool)

(declare-fun e!3707413 () Bool)

(assert (=> b!6074895 (= e!3707411 e!3707413)))

(declare-fun b!6074896 () Bool)

(declare-fun e!3707409 () Bool)

(assert (=> b!6074896 (= e!3707409 e!3707411)))

(declare-fun res!2524219 () Bool)

(assert (=> b!6074896 (= res!2524219 (not ((_ is EmptyLang!16039) (regOne!32591 r!7292))))))

(assert (=> b!6074896 (=> (not res!2524219) (not e!3707411))))

(declare-fun e!3707414 () Bool)

(assert (=> b!6074897 (= e!3707414 call!499964)))

(declare-fun b!6074898 () Bool)

(declare-fun e!3707408 () Bool)

(assert (=> b!6074898 (= e!3707408 (matchRSpec!3140 (regTwo!32591 (regOne!32591 r!7292)) s!2326))))

(declare-fun b!6074899 () Bool)

(declare-fun res!2524218 () Bool)

(assert (=> b!6074899 (=> res!2524218 e!3707414)))

(declare-fun call!499963 () Bool)

(assert (=> b!6074899 (= res!2524218 call!499963)))

(declare-fun e!3707412 () Bool)

(assert (=> b!6074899 (= e!3707412 e!3707414)))

(assert (=> b!6074900 (= e!3707412 call!499964)))

(declare-fun d!1904625 () Bool)

(declare-fun c!1090294 () Bool)

(assert (=> d!1904625 (= c!1090294 ((_ is EmptyExpr!16039) (regOne!32591 r!7292)))))

(assert (=> d!1904625 (= (matchRSpec!3140 (regOne!32591 r!7292) s!2326) e!3707409)))

(declare-fun b!6074901 () Bool)

(declare-fun e!3707410 () Bool)

(assert (=> b!6074901 (= e!3707410 e!3707408)))

(declare-fun res!2524217 () Bool)

(assert (=> b!6074901 (= res!2524217 (matchRSpec!3140 (regOne!32591 (regOne!32591 r!7292)) s!2326))))

(assert (=> b!6074901 (=> res!2524217 e!3707408)))

(declare-fun b!6074902 () Bool)

(declare-fun c!1090297 () Bool)

(assert (=> b!6074902 (= c!1090297 ((_ is Union!16039) (regOne!32591 r!7292)))))

(assert (=> b!6074902 (= e!3707413 e!3707410)))

(declare-fun b!6074903 () Bool)

(assert (=> b!6074903 (= e!3707409 call!499963)))

(declare-fun bm!499959 () Bool)

(assert (=> bm!499959 (= call!499963 (isEmpty!36205 s!2326))))

(declare-fun b!6074904 () Bool)

(assert (=> b!6074904 (= e!3707413 (= s!2326 (Cons!64293 (c!1089857 (regOne!32591 r!7292)) Nil!64293)))))

(declare-fun b!6074905 () Bool)

(assert (=> b!6074905 (= e!3707410 e!3707412)))

(assert (=> b!6074905 (= c!1090295 ((_ is Star!16039) (regOne!32591 r!7292)))))

(assert (= (and d!1904625 c!1090294) b!6074903))

(assert (= (and d!1904625 (not c!1090294)) b!6074896))

(assert (= (and b!6074896 res!2524219) b!6074895))

(assert (= (and b!6074895 c!1090296) b!6074904))

(assert (= (and b!6074895 (not c!1090296)) b!6074902))

(assert (= (and b!6074902 c!1090297) b!6074901))

(assert (= (and b!6074902 (not c!1090297)) b!6074905))

(assert (= (and b!6074901 (not res!2524217)) b!6074898))

(assert (= (and b!6074905 c!1090295) b!6074899))

(assert (= (and b!6074905 (not c!1090295)) b!6074900))

(assert (= (and b!6074899 (not res!2524218)) b!6074897))

(assert (= (or b!6074897 b!6074900) bm!499958))

(assert (= (or b!6074903 b!6074899) bm!499959))

(declare-fun m!6935048 () Bool)

(assert (=> bm!499958 m!6935048))

(declare-fun m!6935050 () Bool)

(assert (=> b!6074898 m!6935050))

(declare-fun m!6935052 () Bool)

(assert (=> b!6074901 m!6935052))

(assert (=> bm!499959 m!6934072))

(assert (=> b!6074149 d!1904625))

(assert (=> b!6074164 d!1904467))

(assert (=> b!6074164 d!1904367))

(declare-fun bm!499981 () Bool)

(declare-fun call!499987 () Bool)

(declare-fun c!1090313 () Bool)

(assert (=> bm!499981 (= call!499987 (nullable!6034 (ite c!1090313 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292)))))))

(declare-fun bm!499982 () Bool)

(declare-fun call!499986 () Bool)

(assert (=> bm!499982 (= call!499986 (nullable!6034 (ite c!1090313 (regTwo!32591 (regOne!32590 r!7292)) (regTwo!32590 (regOne!32590 r!7292)))))))

(declare-fun b!6074970 () Bool)

(declare-fun e!3707467 () Bool)

(declare-fun e!3707464 () Bool)

(assert (=> b!6074970 (= e!3707467 e!3707464)))

(assert (=> b!6074970 (= c!1090313 ((_ is Union!16039) (regOne!32590 r!7292)))))

(declare-fun b!6074971 () Bool)

(declare-fun e!3707466 () Bool)

(assert (=> b!6074971 (= e!3707466 call!499986)))

(declare-fun b!6074972 () Bool)

(declare-fun e!3707469 () Bool)

(assert (=> b!6074972 (= e!3707469 e!3707467)))

(declare-fun res!2524257 () Bool)

(assert (=> b!6074972 (=> res!2524257 e!3707467)))

(assert (=> b!6074972 (= res!2524257 ((_ is Star!16039) (regOne!32590 r!7292)))))

(declare-fun b!6074973 () Bool)

(declare-fun e!3707468 () Bool)

(assert (=> b!6074973 (= e!3707464 e!3707468)))

(declare-fun res!2524258 () Bool)

(assert (=> b!6074973 (= res!2524258 call!499987)))

(assert (=> b!6074973 (=> res!2524258 e!3707468)))

(declare-fun d!1904643 () Bool)

(declare-fun res!2524256 () Bool)

(declare-fun e!3707465 () Bool)

(assert (=> d!1904643 (=> res!2524256 e!3707465)))

(assert (=> d!1904643 (= res!2524256 ((_ is EmptyExpr!16039) (regOne!32590 r!7292)))))

(assert (=> d!1904643 (= (nullableFct!1997 (regOne!32590 r!7292)) e!3707465)))

(declare-fun b!6074974 () Bool)

(assert (=> b!6074974 (= e!3707465 e!3707469)))

(declare-fun res!2524255 () Bool)

(assert (=> b!6074974 (=> (not res!2524255) (not e!3707469))))

(assert (=> b!6074974 (= res!2524255 (and (not ((_ is EmptyLang!16039) (regOne!32590 r!7292))) (not ((_ is ElementMatch!16039) (regOne!32590 r!7292)))))))

(declare-fun b!6074975 () Bool)

(assert (=> b!6074975 (= e!3707468 call!499986)))

(declare-fun b!6074976 () Bool)

(assert (=> b!6074976 (= e!3707464 e!3707466)))

(declare-fun res!2524254 () Bool)

(assert (=> b!6074976 (= res!2524254 call!499987)))

(assert (=> b!6074976 (=> (not res!2524254) (not e!3707466))))

(assert (= (and d!1904643 (not res!2524256)) b!6074974))

(assert (= (and b!6074974 res!2524255) b!6074972))

(assert (= (and b!6074972 (not res!2524257)) b!6074970))

(assert (= (and b!6074970 c!1090313) b!6074973))

(assert (= (and b!6074970 (not c!1090313)) b!6074976))

(assert (= (and b!6074973 (not res!2524258)) b!6074975))

(assert (= (and b!6074976 res!2524254) b!6074971))

(assert (= (or b!6074975 b!6074971) bm!499982))

(assert (= (or b!6074973 b!6074976) bm!499981))

(declare-fun m!6935060 () Bool)

(assert (=> bm!499981 m!6935060))

(declare-fun m!6935062 () Bool)

(assert (=> bm!499982 m!6935062))

(assert (=> d!1904161 d!1904643))

(declare-fun d!1904649 () Bool)

(assert (=> d!1904649 (= ($colon$colon!1918 (exprs!5923 lt!2326418) (ite (or c!1089939 c!1089936) (regTwo!32590 (regTwo!32590 r!7292)) (regTwo!32590 r!7292))) (Cons!64292 (ite (or c!1089939 c!1089936) (regTwo!32590 (regTwo!32590 r!7292)) (regTwo!32590 r!7292)) (exprs!5923 lt!2326418)))))

(assert (=> bm!499756 d!1904649))

(declare-fun d!1904651 () Bool)

(assert (=> d!1904651 true))

(declare-fun setRes!41073 () Bool)

(assert (=> d!1904651 setRes!41073))

(declare-fun condSetEmpty!41073 () Bool)

(declare-fun res!2524264 () (InoxSet Context!10846))

(assert (=> d!1904651 (= condSetEmpty!41073 (= res!2524264 ((as const (Array Context!10846 Bool)) false)))))

(assert (=> d!1904651 (= (choose!45243 lt!2326417 lambda!330983) res!2524264)))

(declare-fun setIsEmpty!41073 () Bool)

(assert (=> setIsEmpty!41073 setRes!41073))

(declare-fun setNonEmpty!41073 () Bool)

(declare-fun tp!1693193 () Bool)

(declare-fun setElem!41073 () Context!10846)

(declare-fun e!3707476 () Bool)

(assert (=> setNonEmpty!41073 (= setRes!41073 (and tp!1693193 (inv!83344 setElem!41073) e!3707476))))

(declare-fun setRest!41073 () (InoxSet Context!10846))

(assert (=> setNonEmpty!41073 (= res!2524264 ((_ map or) (store ((as const (Array Context!10846 Bool)) false) setElem!41073 true) setRest!41073))))

(declare-fun b!6074984 () Bool)

(declare-fun tp!1693192 () Bool)

(assert (=> b!6074984 (= e!3707476 tp!1693192)))

(assert (= (and d!1904651 condSetEmpty!41073) setIsEmpty!41073))

(assert (= (and d!1904651 (not condSetEmpty!41073)) setNonEmpty!41073))

(assert (= setNonEmpty!41073 b!6074984))

(declare-fun m!6935064 () Bool)

(assert (=> setNonEmpty!41073 m!6935064))

(assert (=> d!1904177 d!1904651))

(assert (=> d!1904283 d!1904271))

(declare-fun b!6074985 () Bool)

(declare-fun e!3707478 () Bool)

(declare-fun call!499990 () Bool)

(assert (=> b!6074985 (= e!3707478 call!499990)))

(declare-fun b!6074986 () Bool)

(declare-fun e!3707480 () Bool)

(declare-fun e!3707483 () Bool)

(assert (=> b!6074986 (= e!3707480 e!3707483)))

(declare-fun c!1090316 () Bool)

(assert (=> b!6074986 (= c!1090316 ((_ is Star!16039) (regOne!32590 r!7292)))))

(declare-fun b!6074987 () Bool)

(declare-fun e!3707477 () Bool)

(assert (=> b!6074987 (= e!3707483 e!3707477)))

(declare-fun c!1090315 () Bool)

(assert (=> b!6074987 (= c!1090315 ((_ is Union!16039) (regOne!32590 r!7292)))))

(declare-fun bm!499985 () Bool)

(declare-fun call!499992 () Bool)

(assert (=> bm!499985 (= call!499992 (validRegex!7775 (ite c!1090315 (regTwo!32591 (regOne!32590 r!7292)) (regTwo!32590 (regOne!32590 r!7292)))))))

(declare-fun d!1904653 () Bool)

(declare-fun res!2524265 () Bool)

(assert (=> d!1904653 (=> res!2524265 e!3707480)))

(assert (=> d!1904653 (= res!2524265 ((_ is ElementMatch!16039) (regOne!32590 r!7292)))))

(assert (=> d!1904653 (= (validRegex!7775 (regOne!32590 r!7292)) e!3707480)))

(declare-fun b!6074988 () Bool)

(declare-fun res!2524268 () Bool)

(declare-fun e!3707482 () Bool)

(assert (=> b!6074988 (=> res!2524268 e!3707482)))

(assert (=> b!6074988 (= res!2524268 (not ((_ is Concat!24884) (regOne!32590 r!7292))))))

(assert (=> b!6074988 (= e!3707477 e!3707482)))

(declare-fun bm!499986 () Bool)

(assert (=> bm!499986 (= call!499990 (validRegex!7775 (ite c!1090316 (reg!16368 (regOne!32590 r!7292)) (ite c!1090315 (regOne!32591 (regOne!32590 r!7292)) (regOne!32590 (regOne!32590 r!7292))))))))

(declare-fun b!6074989 () Bool)

(declare-fun res!2524267 () Bool)

(declare-fun e!3707481 () Bool)

(assert (=> b!6074989 (=> (not res!2524267) (not e!3707481))))

(declare-fun call!499991 () Bool)

(assert (=> b!6074989 (= res!2524267 call!499991)))

(assert (=> b!6074989 (= e!3707477 e!3707481)))

(declare-fun b!6074990 () Bool)

(declare-fun e!3707479 () Bool)

(assert (=> b!6074990 (= e!3707482 e!3707479)))

(declare-fun res!2524266 () Bool)

(assert (=> b!6074990 (=> (not res!2524266) (not e!3707479))))

(assert (=> b!6074990 (= res!2524266 call!499991)))

(declare-fun b!6074991 () Bool)

(assert (=> b!6074991 (= e!3707481 call!499992)))

(declare-fun bm!499987 () Bool)

(assert (=> bm!499987 (= call!499991 call!499990)))

(declare-fun b!6074992 () Bool)

(assert (=> b!6074992 (= e!3707479 call!499992)))

(declare-fun b!6074993 () Bool)

(assert (=> b!6074993 (= e!3707483 e!3707478)))

(declare-fun res!2524269 () Bool)

(assert (=> b!6074993 (= res!2524269 (not (nullable!6034 (reg!16368 (regOne!32590 r!7292)))))))

(assert (=> b!6074993 (=> (not res!2524269) (not e!3707478))))

(assert (= (and d!1904653 (not res!2524265)) b!6074986))

(assert (= (and b!6074986 c!1090316) b!6074993))

(assert (= (and b!6074986 (not c!1090316)) b!6074987))

(assert (= (and b!6074993 res!2524269) b!6074985))

(assert (= (and b!6074987 c!1090315) b!6074989))

(assert (= (and b!6074987 (not c!1090315)) b!6074988))

(assert (= (and b!6074989 res!2524267) b!6074991))

(assert (= (and b!6074988 (not res!2524268)) b!6074990))

(assert (= (and b!6074990 res!2524266) b!6074992))

(assert (= (or b!6074991 b!6074992) bm!499985))

(assert (= (or b!6074989 b!6074990) bm!499987))

(assert (= (or b!6074985 bm!499987) bm!499986))

(declare-fun m!6935070 () Bool)

(assert (=> bm!499985 m!6935070))

(declare-fun m!6935072 () Bool)

(assert (=> bm!499986 m!6935072))

(declare-fun m!6935074 () Bool)

(assert (=> b!6074993 m!6935074))

(assert (=> d!1904283 d!1904653))

(assert (=> d!1904283 d!1904287))

(declare-fun d!1904657 () Bool)

(assert (=> d!1904657 (= (Exists!3109 lambda!331052) (choose!45249 lambda!331052))))

(declare-fun bs!1504285 () Bool)

(assert (= bs!1504285 d!1904657))

(declare-fun m!6935076 () Bool)

(assert (=> bs!1504285 m!6935076))

(assert (=> d!1904283 d!1904657))

(declare-fun bs!1504289 () Bool)

(declare-fun d!1904659 () Bool)

(assert (= bs!1504289 (and d!1904659 b!6073448)))

(declare-fun lambda!331130 () Int)

(assert (=> bs!1504289 (not (= lambda!331130 lambda!330982))))

(declare-fun bs!1504290 () Bool)

(assert (= bs!1504290 (and d!1904659 d!1904285)))

(assert (=> bs!1504290 (= lambda!331130 lambda!331057)))

(declare-fun bs!1504291 () Bool)

(assert (= bs!1504291 (and d!1904659 b!6074693)))

(assert (=> bs!1504291 (not (= lambda!331130 lambda!331118))))

(declare-fun bs!1504292 () Bool)

(assert (= bs!1504292 (and d!1904659 d!1904283)))

(assert (=> bs!1504292 (= lambda!331130 lambda!331052)))

(declare-fun bs!1504293 () Bool)

(assert (= bs!1504293 (and d!1904659 b!6074897)))

(assert (=> bs!1504293 (not (= lambda!331130 lambda!331126))))

(assert (=> bs!1504290 (not (= lambda!331130 lambda!331058))))

(declare-fun bs!1504294 () Bool)

(assert (= bs!1504294 (and d!1904659 b!6074148)))

(assert (=> bs!1504294 (not (= lambda!331130 lambda!331067))))

(assert (=> bs!1504289 (= lambda!331130 lambda!330981)))

(declare-fun bs!1504295 () Bool)

(assert (= bs!1504295 (and d!1904659 b!6074900)))

(assert (=> bs!1504295 (not (= lambda!331130 lambda!331127))))

(declare-fun bs!1504296 () Bool)

(assert (= bs!1504296 (and d!1904659 b!6074690)))

(assert (=> bs!1504296 (not (= lambda!331130 lambda!331114))))

(declare-fun bs!1504297 () Bool)

(assert (= bs!1504297 (and d!1904659 b!6074145)))

(assert (=> bs!1504297 (not (= lambda!331130 lambda!331066))))

(assert (=> d!1904659 true))

(assert (=> d!1904659 true))

(assert (=> d!1904659 true))

(assert (=> d!1904659 (= (isDefined!12633 (findConcatSeparation!2344 (regOne!32590 r!7292) (regTwo!32590 r!7292) Nil!64293 s!2326 s!2326)) (Exists!3109 lambda!331130))))

(assert (=> d!1904659 true))

(declare-fun _$89!2116 () Unit!157349)

(assert (=> d!1904659 (= (choose!45250 (regOne!32590 r!7292) (regTwo!32590 r!7292) s!2326) _$89!2116)))

(declare-fun bs!1504298 () Bool)

(assert (= bs!1504298 d!1904659))

(assert (=> bs!1504298 m!6933756))

(assert (=> bs!1504298 m!6933756))

(assert (=> bs!1504298 m!6933758))

(declare-fun m!6935100 () Bool)

(assert (=> bs!1504298 m!6935100))

(assert (=> d!1904283 d!1904659))

(declare-fun d!1904675 () Bool)

(declare-fun res!2524288 () Bool)

(declare-fun e!3707497 () Bool)

(assert (=> d!1904675 (=> res!2524288 e!3707497)))

(assert (=> d!1904675 (= res!2524288 ((_ is Nil!64292) lt!2326484))))

(assert (=> d!1904675 (= (forall!15151 lt!2326484 lambda!331013) e!3707497)))

(declare-fun b!6075018 () Bool)

(declare-fun e!3707498 () Bool)

(assert (=> b!6075018 (= e!3707497 e!3707498)))

(declare-fun res!2524289 () Bool)

(assert (=> b!6075018 (=> (not res!2524289) (not e!3707498))))

(assert (=> b!6075018 (= res!2524289 (dynLambda!25284 lambda!331013 (h!70740 lt!2326484)))))

(declare-fun b!6075019 () Bool)

(assert (=> b!6075019 (= e!3707498 (forall!15151 (t!377857 lt!2326484) lambda!331013))))

(assert (= (and d!1904675 (not res!2524288)) b!6075018))

(assert (= (and b!6075018 res!2524289) b!6075019))

(declare-fun b_lambda!231063 () Bool)

(assert (=> (not b_lambda!231063) (not b!6075018)))

(declare-fun m!6935102 () Bool)

(assert (=> b!6075018 m!6935102))

(declare-fun m!6935104 () Bool)

(assert (=> b!6075019 m!6935104))

(assert (=> d!1904201 d!1904675))

(declare-fun b!6075024 () Bool)

(declare-fun e!3707502 () Bool)

(declare-fun call!499994 () Bool)

(assert (=> b!6075024 (= e!3707502 call!499994)))

(declare-fun b!6075025 () Bool)

(declare-fun e!3707504 () Bool)

(declare-fun e!3707507 () Bool)

(assert (=> b!6075025 (= e!3707504 e!3707507)))

(declare-fun c!1090321 () Bool)

(assert (=> b!6075025 (= c!1090321 ((_ is Star!16039) lt!2326565))))

(declare-fun b!6075026 () Bool)

(declare-fun e!3707501 () Bool)

(assert (=> b!6075026 (= e!3707507 e!3707501)))

(declare-fun c!1090320 () Bool)

(assert (=> b!6075026 (= c!1090320 ((_ is Union!16039) lt!2326565))))

(declare-fun bm!499989 () Bool)

(declare-fun call!499996 () Bool)

(assert (=> bm!499989 (= call!499996 (validRegex!7775 (ite c!1090320 (regTwo!32591 lt!2326565) (regTwo!32590 lt!2326565))))))

(declare-fun d!1904677 () Bool)

(declare-fun res!2524294 () Bool)

(assert (=> d!1904677 (=> res!2524294 e!3707504)))

(assert (=> d!1904677 (= res!2524294 ((_ is ElementMatch!16039) lt!2326565))))

(assert (=> d!1904677 (= (validRegex!7775 lt!2326565) e!3707504)))

(declare-fun b!6075027 () Bool)

(declare-fun res!2524297 () Bool)

(declare-fun e!3707506 () Bool)

(assert (=> b!6075027 (=> res!2524297 e!3707506)))

(assert (=> b!6075027 (= res!2524297 (not ((_ is Concat!24884) lt!2326565)))))

(assert (=> b!6075027 (= e!3707501 e!3707506)))

(declare-fun bm!499990 () Bool)

(assert (=> bm!499990 (= call!499994 (validRegex!7775 (ite c!1090321 (reg!16368 lt!2326565) (ite c!1090320 (regOne!32591 lt!2326565) (regOne!32590 lt!2326565)))))))

(declare-fun b!6075028 () Bool)

(declare-fun res!2524296 () Bool)

(declare-fun e!3707505 () Bool)

(assert (=> b!6075028 (=> (not res!2524296) (not e!3707505))))

(declare-fun call!499995 () Bool)

(assert (=> b!6075028 (= res!2524296 call!499995)))

(assert (=> b!6075028 (= e!3707501 e!3707505)))

(declare-fun b!6075029 () Bool)

(declare-fun e!3707503 () Bool)

(assert (=> b!6075029 (= e!3707506 e!3707503)))

(declare-fun res!2524295 () Bool)

(assert (=> b!6075029 (=> (not res!2524295) (not e!3707503))))

(assert (=> b!6075029 (= res!2524295 call!499995)))

(declare-fun b!6075030 () Bool)

(assert (=> b!6075030 (= e!3707505 call!499996)))

(declare-fun bm!499991 () Bool)

(assert (=> bm!499991 (= call!499995 call!499994)))

(declare-fun b!6075031 () Bool)

(assert (=> b!6075031 (= e!3707503 call!499996)))

(declare-fun b!6075032 () Bool)

(assert (=> b!6075032 (= e!3707507 e!3707502)))

(declare-fun res!2524298 () Bool)

(assert (=> b!6075032 (= res!2524298 (not (nullable!6034 (reg!16368 lt!2326565))))))

(assert (=> b!6075032 (=> (not res!2524298) (not e!3707502))))

(assert (= (and d!1904677 (not res!2524294)) b!6075025))

(assert (= (and b!6075025 c!1090321) b!6075032))

(assert (= (and b!6075025 (not c!1090321)) b!6075026))

(assert (= (and b!6075032 res!2524298) b!6075024))

(assert (= (and b!6075026 c!1090320) b!6075028))

(assert (= (and b!6075026 (not c!1090320)) b!6075027))

(assert (= (and b!6075028 res!2524296) b!6075030))

(assert (= (and b!6075027 (not res!2524297)) b!6075029))

(assert (= (and b!6075029 res!2524295) b!6075031))

(assert (= (or b!6075030 b!6075031) bm!499989))

(assert (= (or b!6075028 b!6075029) bm!499991))

(assert (= (or b!6075024 bm!499991) bm!499990))

(declare-fun m!6935106 () Bool)

(assert (=> bm!499989 m!6935106))

(declare-fun m!6935108 () Bool)

(assert (=> bm!499990 m!6935108))

(declare-fun m!6935110 () Bool)

(assert (=> b!6075032 m!6935110))

(assert (=> d!1904305 d!1904677))

(declare-fun d!1904679 () Bool)

(declare-fun res!2524299 () Bool)

(declare-fun e!3707508 () Bool)

(assert (=> d!1904679 (=> res!2524299 e!3707508)))

(assert (=> d!1904679 (= res!2524299 ((_ is Nil!64292) (exprs!5923 (h!70742 zl!343))))))

(assert (=> d!1904679 (= (forall!15151 (exprs!5923 (h!70742 zl!343)) lambda!331070) e!3707508)))

(declare-fun b!6075033 () Bool)

(declare-fun e!3707509 () Bool)

(assert (=> b!6075033 (= e!3707508 e!3707509)))

(declare-fun res!2524300 () Bool)

(assert (=> b!6075033 (=> (not res!2524300) (not e!3707509))))

(assert (=> b!6075033 (= res!2524300 (dynLambda!25284 lambda!331070 (h!70740 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun b!6075034 () Bool)

(assert (=> b!6075034 (= e!3707509 (forall!15151 (t!377857 (exprs!5923 (h!70742 zl!343))) lambda!331070))))

(assert (= (and d!1904679 (not res!2524299)) b!6075033))

(assert (= (and b!6075033 res!2524300) b!6075034))

(declare-fun b_lambda!231065 () Bool)

(assert (=> (not b_lambda!231065) (not b!6075033)))

(declare-fun m!6935112 () Bool)

(assert (=> b!6075033 m!6935112))

(declare-fun m!6935114 () Bool)

(assert (=> b!6075034 m!6935114))

(assert (=> d!1904305 d!1904679))

(declare-fun b!6075035 () Bool)

(declare-fun e!3707510 () (InoxSet Context!10846))

(assert (=> b!6075035 (= e!3707510 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6075036 () Bool)

(declare-fun call!499998 () (InoxSet Context!10846))

(assert (=> b!6075036 (= e!3707510 call!499998)))

(declare-fun bm!499993 () Bool)

(declare-fun call!500000 () (InoxSet Context!10846))

(declare-fun call!499999 () (InoxSet Context!10846))

(assert (=> bm!499993 (= call!500000 call!499999)))

(declare-fun b!6075037 () Bool)

(declare-fun e!3707515 () (InoxSet Context!10846))

(declare-fun call!500002 () (InoxSet Context!10846))

(assert (=> b!6075037 (= e!3707515 ((_ map or) call!500002 call!499999))))

(declare-fun bm!499994 () Bool)

(declare-fun call!500001 () List!64416)

(declare-fun call!499997 () List!64416)

(assert (=> bm!499994 (= call!500001 call!499997)))

(declare-fun bm!499995 () Bool)

(declare-fun c!1090324 () Bool)

(assert (=> bm!499995 (= call!500002 (derivationStepZipperDown!1289 (ite c!1090324 (regOne!32591 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))) (regOne!32590 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292))))) (ite c!1090324 (ite c!1089937 lt!2326418 (Context!10847 call!499757)) (Context!10847 call!499997)) (h!70741 s!2326)))))

(declare-fun b!6075038 () Bool)

(declare-fun c!1090322 () Bool)

(assert (=> b!6075038 (= c!1090322 ((_ is Star!16039) (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))))))

(declare-fun e!3707512 () (InoxSet Context!10846))

(assert (=> b!6075038 (= e!3707512 e!3707510)))

(declare-fun b!6075039 () Bool)

(declare-fun e!3707511 () (InoxSet Context!10846))

(assert (=> b!6075039 (= e!3707511 e!3707512)))

(declare-fun c!1090323 () Bool)

(assert (=> b!6075039 (= c!1090323 ((_ is Concat!24884) (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))))))

(declare-fun b!6075040 () Bool)

(declare-fun e!3707514 () Bool)

(assert (=> b!6075040 (= e!3707514 (nullable!6034 (regOne!32590 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292))))))))

(declare-fun c!1090326 () Bool)

(declare-fun bm!499996 () Bool)

(assert (=> bm!499996 (= call!499997 ($colon$colon!1918 (exprs!5923 (ite c!1089937 lt!2326418 (Context!10847 call!499757))) (ite (or c!1090326 c!1090323) (regTwo!32590 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))) (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292))))))))

(declare-fun b!6075041 () Bool)

(declare-fun e!3707513 () (InoxSet Context!10846))

(assert (=> b!6075041 (= e!3707513 (store ((as const (Array Context!10846 Bool)) false) (ite c!1089937 lt!2326418 (Context!10847 call!499757)) true))))

(declare-fun b!6075042 () Bool)

(assert (=> b!6075042 (= c!1090326 e!3707514)))

(declare-fun res!2524301 () Bool)

(assert (=> b!6075042 (=> (not res!2524301) (not e!3707514))))

(assert (=> b!6075042 (= res!2524301 ((_ is Concat!24884) (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))))))

(assert (=> b!6075042 (= e!3707515 e!3707511)))

(declare-fun bm!499992 () Bool)

(assert (=> bm!499992 (= call!499999 (derivationStepZipperDown!1289 (ite c!1090324 (regTwo!32591 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))) (ite c!1090326 (regTwo!32590 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))) (ite c!1090323 (regOne!32590 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))) (reg!16368 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292))))))) (ite (or c!1090324 c!1090326) (ite c!1089937 lt!2326418 (Context!10847 call!499757)) (Context!10847 call!500001)) (h!70741 s!2326)))))

(declare-fun d!1904681 () Bool)

(declare-fun c!1090325 () Bool)

(assert (=> d!1904681 (= c!1090325 (and ((_ is ElementMatch!16039) (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))) (= (c!1089857 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))) (h!70741 s!2326))))))

(assert (=> d!1904681 (= (derivationStepZipperDown!1289 (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292))) (ite c!1089937 lt!2326418 (Context!10847 call!499757)) (h!70741 s!2326)) e!3707513)))

(declare-fun b!6075043 () Bool)

(assert (=> b!6075043 (= e!3707512 call!499998)))

(declare-fun bm!499997 () Bool)

(assert (=> bm!499997 (= call!499998 call!500000)))

(declare-fun b!6075044 () Bool)

(assert (=> b!6075044 (= e!3707513 e!3707515)))

(assert (=> b!6075044 (= c!1090324 ((_ is Union!16039) (ite c!1089937 (regOne!32591 (regTwo!32590 r!7292)) (regOne!32590 (regTwo!32590 r!7292)))))))

(declare-fun b!6075045 () Bool)

(assert (=> b!6075045 (= e!3707511 ((_ map or) call!500002 call!500000))))

(assert (= (and d!1904681 c!1090325) b!6075041))

(assert (= (and d!1904681 (not c!1090325)) b!6075044))

(assert (= (and b!6075044 c!1090324) b!6075037))

(assert (= (and b!6075044 (not c!1090324)) b!6075042))

(assert (= (and b!6075042 res!2524301) b!6075040))

(assert (= (and b!6075042 c!1090326) b!6075045))

(assert (= (and b!6075042 (not c!1090326)) b!6075039))

(assert (= (and b!6075039 c!1090323) b!6075043))

(assert (= (and b!6075039 (not c!1090323)) b!6075038))

(assert (= (and b!6075038 c!1090322) b!6075036))

(assert (= (and b!6075038 (not c!1090322)) b!6075035))

(assert (= (or b!6075043 b!6075036) bm!499994))

(assert (= (or b!6075043 b!6075036) bm!499997))

(assert (= (or b!6075045 bm!499994) bm!499996))

(assert (= (or b!6075045 bm!499997) bm!499993))

(assert (= (or b!6075037 bm!499993) bm!499992))

(assert (= (or b!6075037 b!6075045) bm!499995))

(declare-fun m!6935116 () Bool)

(assert (=> b!6075040 m!6935116))

(declare-fun m!6935118 () Bool)

(assert (=> bm!499992 m!6935118))

(declare-fun m!6935120 () Bool)

(assert (=> bm!499996 m!6935120))

(declare-fun m!6935122 () Bool)

(assert (=> b!6075041 m!6935122))

(declare-fun m!6935124 () Bool)

(assert (=> bm!499995 m!6935124))

(assert (=> bm!499755 d!1904681))

(assert (=> bs!1503973 d!1904169))

(declare-fun d!1904683 () Bool)

(assert (=> d!1904683 (= (isEmptyExpr!1458 lt!2326565) ((_ is EmptyExpr!16039) lt!2326565))))

(assert (=> b!6074198 d!1904683))

(declare-fun b!6075046 () Bool)

(declare-fun res!2524302 () Bool)

(declare-fun e!3707518 () Bool)

(assert (=> b!6075046 (=> (not res!2524302) (not e!3707518))))

(assert (=> b!6075046 (= res!2524302 (isEmpty!36205 (tail!11689 (tail!11689 s!2326))))))

(declare-fun b!6075047 () Bool)

(declare-fun res!2524309 () Bool)

(declare-fun e!3707521 () Bool)

(assert (=> b!6075047 (=> res!2524309 e!3707521)))

(assert (=> b!6075047 (= res!2524309 (not ((_ is ElementMatch!16039) (derivativeStep!4762 r!7292 (head!12604 s!2326)))))))

(declare-fun e!3707517 () Bool)

(assert (=> b!6075047 (= e!3707517 e!3707521)))

(declare-fun b!6075048 () Bool)

(declare-fun e!3707516 () Bool)

(assert (=> b!6075048 (= e!3707521 e!3707516)))

(declare-fun res!2524306 () Bool)

(assert (=> b!6075048 (=> (not res!2524306) (not e!3707516))))

(declare-fun lt!2326645 () Bool)

(assert (=> b!6075048 (= res!2524306 (not lt!2326645))))

(declare-fun b!6075049 () Bool)

(declare-fun res!2524303 () Bool)

(assert (=> b!6075049 (=> (not res!2524303) (not e!3707518))))

(declare-fun call!500003 () Bool)

(assert (=> b!6075049 (= res!2524303 (not call!500003))))

(declare-fun b!6075050 () Bool)

(assert (=> b!6075050 (= e!3707518 (= (head!12604 (tail!11689 s!2326)) (c!1089857 (derivativeStep!4762 r!7292 (head!12604 s!2326)))))))

(declare-fun d!1904685 () Bool)

(declare-fun e!3707522 () Bool)

(assert (=> d!1904685 e!3707522))

(declare-fun c!1090328 () Bool)

(assert (=> d!1904685 (= c!1090328 ((_ is EmptyExpr!16039) (derivativeStep!4762 r!7292 (head!12604 s!2326))))))

(declare-fun e!3707519 () Bool)

(assert (=> d!1904685 (= lt!2326645 e!3707519)))

(declare-fun c!1090327 () Bool)

(assert (=> d!1904685 (= c!1090327 (isEmpty!36205 (tail!11689 s!2326)))))

(assert (=> d!1904685 (validRegex!7775 (derivativeStep!4762 r!7292 (head!12604 s!2326)))))

(assert (=> d!1904685 (= (matchR!8222 (derivativeStep!4762 r!7292 (head!12604 s!2326)) (tail!11689 s!2326)) lt!2326645)))

(declare-fun b!6075051 () Bool)

(assert (=> b!6075051 (= e!3707519 (nullable!6034 (derivativeStep!4762 r!7292 (head!12604 s!2326))))))

(declare-fun b!6075052 () Bool)

(declare-fun res!2524305 () Bool)

(assert (=> b!6075052 (=> res!2524305 e!3707521)))

(assert (=> b!6075052 (= res!2524305 e!3707518)))

(declare-fun res!2524304 () Bool)

(assert (=> b!6075052 (=> (not res!2524304) (not e!3707518))))

(assert (=> b!6075052 (= res!2524304 lt!2326645)))

(declare-fun b!6075053 () Bool)

(assert (=> b!6075053 (= e!3707519 (matchR!8222 (derivativeStep!4762 (derivativeStep!4762 r!7292 (head!12604 s!2326)) (head!12604 (tail!11689 s!2326))) (tail!11689 (tail!11689 s!2326))))))

(declare-fun b!6075054 () Bool)

(assert (=> b!6075054 (= e!3707522 (= lt!2326645 call!500003))))

(declare-fun b!6075055 () Bool)

(assert (=> b!6075055 (= e!3707522 e!3707517)))

(declare-fun c!1090329 () Bool)

(assert (=> b!6075055 (= c!1090329 ((_ is EmptyLang!16039) (derivativeStep!4762 r!7292 (head!12604 s!2326))))))

(declare-fun bm!499998 () Bool)

(assert (=> bm!499998 (= call!500003 (isEmpty!36205 (tail!11689 s!2326)))))

(declare-fun b!6075056 () Bool)

(declare-fun res!2524308 () Bool)

(declare-fun e!3707520 () Bool)

(assert (=> b!6075056 (=> res!2524308 e!3707520)))

(assert (=> b!6075056 (= res!2524308 (not (isEmpty!36205 (tail!11689 (tail!11689 s!2326)))))))

(declare-fun b!6075057 () Bool)

(assert (=> b!6075057 (= e!3707520 (not (= (head!12604 (tail!11689 s!2326)) (c!1089857 (derivativeStep!4762 r!7292 (head!12604 s!2326))))))))

(declare-fun b!6075058 () Bool)

(assert (=> b!6075058 (= e!3707517 (not lt!2326645))))

(declare-fun b!6075059 () Bool)

(assert (=> b!6075059 (= e!3707516 e!3707520)))

(declare-fun res!2524307 () Bool)

(assert (=> b!6075059 (=> res!2524307 e!3707520)))

(assert (=> b!6075059 (= res!2524307 call!500003)))

(assert (= (and d!1904685 c!1090327) b!6075051))

(assert (= (and d!1904685 (not c!1090327)) b!6075053))

(assert (= (and d!1904685 c!1090328) b!6075054))

(assert (= (and d!1904685 (not c!1090328)) b!6075055))

(assert (= (and b!6075055 c!1090329) b!6075058))

(assert (= (and b!6075055 (not c!1090329)) b!6075047))

(assert (= (and b!6075047 (not res!2524309)) b!6075052))

(assert (= (and b!6075052 res!2524304) b!6075049))

(assert (= (and b!6075049 res!2524303) b!6075046))

(assert (= (and b!6075046 res!2524302) b!6075050))

(assert (= (and b!6075052 (not res!2524305)) b!6075048))

(assert (= (and b!6075048 res!2524306) b!6075059))

(assert (= (and b!6075059 (not res!2524307)) b!6075056))

(assert (= (and b!6075056 (not res!2524308)) b!6075057))

(assert (= (or b!6075054 b!6075049 b!6075059) bm!499998))

(assert (=> b!6075057 m!6934062))

(assert (=> b!6075057 m!6934418))

(assert (=> b!6075050 m!6934062))

(assert (=> b!6075050 m!6934418))

(assert (=> b!6075046 m!6934062))

(assert (=> b!6075046 m!6934422))

(assert (=> b!6075046 m!6934422))

(assert (=> b!6075046 m!6934800))

(assert (=> b!6075051 m!6934282))

(declare-fun m!6935126 () Bool)

(assert (=> b!6075051 m!6935126))

(assert (=> b!6075056 m!6934062))

(assert (=> b!6075056 m!6934422))

(assert (=> b!6075056 m!6934422))

(assert (=> b!6075056 m!6934800))

(assert (=> b!6075053 m!6934062))

(assert (=> b!6075053 m!6934418))

(assert (=> b!6075053 m!6934282))

(assert (=> b!6075053 m!6934418))

(declare-fun m!6935128 () Bool)

(assert (=> b!6075053 m!6935128))

(assert (=> b!6075053 m!6934062))

(assert (=> b!6075053 m!6934422))

(assert (=> b!6075053 m!6935128))

(assert (=> b!6075053 m!6934422))

(declare-fun m!6935130 () Bool)

(assert (=> b!6075053 m!6935130))

(assert (=> bm!499998 m!6934062))

(assert (=> bm!499998 m!6934064))

(assert (=> d!1904685 m!6934062))

(assert (=> d!1904685 m!6934064))

(assert (=> d!1904685 m!6934282))

(declare-fun m!6935132 () Bool)

(assert (=> d!1904685 m!6935132))

(assert (=> b!6074161 d!1904685))

(declare-fun c!1090330 () Bool)

(declare-fun call!500007 () Regex!16039)

(declare-fun bm!499999 () Bool)

(declare-fun c!1090333 () Bool)

(assert (=> bm!499999 (= call!500007 (derivativeStep!4762 (ite c!1090333 (regOne!32591 r!7292) (ite c!1090330 (regTwo!32590 r!7292) (regOne!32590 r!7292))) (head!12604 s!2326)))))

(declare-fun bm!500000 () Bool)

(declare-fun call!500006 () Regex!16039)

(assert (=> bm!500000 (= call!500006 call!500007)))

(declare-fun call!500004 () Regex!16039)

(declare-fun c!1090331 () Bool)

(declare-fun bm!500001 () Bool)

(assert (=> bm!500001 (= call!500004 (derivativeStep!4762 (ite c!1090333 (regTwo!32591 r!7292) (ite c!1090331 (reg!16368 r!7292) (regOne!32590 r!7292))) (head!12604 s!2326)))))

(declare-fun b!6075060 () Bool)

(assert (=> b!6075060 (= c!1090333 ((_ is Union!16039) r!7292))))

(declare-fun e!3707526 () Regex!16039)

(declare-fun e!3707527 () Regex!16039)

(assert (=> b!6075060 (= e!3707526 e!3707527)))

(declare-fun b!6075061 () Bool)

(declare-fun e!3707525 () Regex!16039)

(assert (=> b!6075061 (= e!3707525 e!3707526)))

(declare-fun c!1090332 () Bool)

(assert (=> b!6075061 (= c!1090332 ((_ is ElementMatch!16039) r!7292))))

(declare-fun b!6075062 () Bool)

(assert (=> b!6075062 (= e!3707525 EmptyLang!16039)))

(declare-fun d!1904687 () Bool)

(declare-fun lt!2326646 () Regex!16039)

(assert (=> d!1904687 (validRegex!7775 lt!2326646)))

(assert (=> d!1904687 (= lt!2326646 e!3707525)))

(declare-fun c!1090334 () Bool)

(assert (=> d!1904687 (= c!1090334 (or ((_ is EmptyExpr!16039) r!7292) ((_ is EmptyLang!16039) r!7292)))))

(assert (=> d!1904687 (validRegex!7775 r!7292)))

(assert (=> d!1904687 (= (derivativeStep!4762 r!7292 (head!12604 s!2326)) lt!2326646)))

(declare-fun b!6075063 () Bool)

(assert (=> b!6075063 (= c!1090330 (nullable!6034 (regOne!32590 r!7292)))))

(declare-fun e!3707523 () Regex!16039)

(declare-fun e!3707524 () Regex!16039)

(assert (=> b!6075063 (= e!3707523 e!3707524)))

(declare-fun b!6075064 () Bool)

(assert (=> b!6075064 (= e!3707527 (Union!16039 call!500007 call!500004))))

(declare-fun b!6075065 () Bool)

(assert (=> b!6075065 (= e!3707524 (Union!16039 (Concat!24884 call!500006 (regTwo!32590 r!7292)) EmptyLang!16039))))

(declare-fun bm!500002 () Bool)

(declare-fun call!500005 () Regex!16039)

(assert (=> bm!500002 (= call!500005 call!500004)))

(declare-fun b!6075066 () Bool)

(assert (=> b!6075066 (= e!3707524 (Union!16039 (Concat!24884 call!500005 (regTwo!32590 r!7292)) call!500006))))

(declare-fun b!6075067 () Bool)

(assert (=> b!6075067 (= e!3707527 e!3707523)))

(assert (=> b!6075067 (= c!1090331 ((_ is Star!16039) r!7292))))

(declare-fun b!6075068 () Bool)

(assert (=> b!6075068 (= e!3707526 (ite (= (head!12604 s!2326) (c!1089857 r!7292)) EmptyExpr!16039 EmptyLang!16039))))

(declare-fun b!6075069 () Bool)

(assert (=> b!6075069 (= e!3707523 (Concat!24884 call!500005 r!7292))))

(assert (= (and d!1904687 c!1090334) b!6075062))

(assert (= (and d!1904687 (not c!1090334)) b!6075061))

(assert (= (and b!6075061 c!1090332) b!6075068))

(assert (= (and b!6075061 (not c!1090332)) b!6075060))

(assert (= (and b!6075060 c!1090333) b!6075064))

(assert (= (and b!6075060 (not c!1090333)) b!6075067))

(assert (= (and b!6075067 c!1090331) b!6075069))

(assert (= (and b!6075067 (not c!1090331)) b!6075063))

(assert (= (and b!6075063 c!1090330) b!6075066))

(assert (= (and b!6075063 (not c!1090330)) b!6075065))

(assert (= (or b!6075066 b!6075065) bm!500000))

(assert (= (or b!6075069 b!6075066) bm!500002))

(assert (= (or b!6075064 bm!500002) bm!500001))

(assert (= (or b!6075064 bm!500000) bm!499999))

(assert (=> bm!499999 m!6934060))

(declare-fun m!6935138 () Bool)

(assert (=> bm!499999 m!6935138))

(assert (=> bm!500001 m!6934060))

(declare-fun m!6935140 () Bool)

(assert (=> bm!500001 m!6935140))

(declare-fun m!6935142 () Bool)

(assert (=> d!1904687 m!6935142))

(assert (=> d!1904687 m!6933836))

(assert (=> b!6075063 m!6933790))

(assert (=> b!6074161 d!1904687))

(assert (=> b!6074161 d!1904365))

(assert (=> b!6074161 d!1904367))

(declare-fun d!1904691 () Bool)

(assert (=> d!1904691 (= (nullable!6034 (h!70740 (exprs!5923 (h!70742 zl!343)))) (nullableFct!1997 (h!70740 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun bs!1504308 () Bool)

(assert (= bs!1504308 d!1904691))

(declare-fun m!6935144 () Bool)

(assert (=> bs!1504308 m!6935144))

(assert (=> b!6073676 d!1904691))

(declare-fun d!1904693 () Bool)

(declare-fun c!1090344 () Bool)

(assert (=> d!1904693 (= c!1090344 ((_ is Nil!64294) lt!2326562))))

(declare-fun e!3707543 () (InoxSet Context!10846))

(assert (=> d!1904693 (= (content!11909 lt!2326562) e!3707543)))

(declare-fun b!6075094 () Bool)

(assert (=> b!6075094 (= e!3707543 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6075095 () Bool)

(assert (=> b!6075095 (= e!3707543 ((_ map or) (store ((as const (Array Context!10846 Bool)) false) (h!70742 lt!2326562) true) (content!11909 (t!377859 lt!2326562))))))

(assert (= (and d!1904693 c!1090344) b!6075094))

(assert (= (and d!1904693 (not c!1090344)) b!6075095))

(declare-fun m!6935162 () Bool)

(assert (=> b!6075095 m!6935162))

(declare-fun m!6935164 () Bool)

(assert (=> b!6075095 m!6935164))

(assert (=> b!6074170 d!1904693))

(declare-fun d!1904699 () Bool)

(assert (=> d!1904699 (= ($colon$colon!1918 (exprs!5923 lt!2326418) (ite (or c!1090056 c!1090053) (regTwo!32590 r!7292) r!7292)) (Cons!64292 (ite (or c!1090056 c!1090053) (regTwo!32590 r!7292) r!7292) (exprs!5923 lt!2326418)))))

(assert (=> bm!499801 d!1904699))

(declare-fun bs!1504310 () Bool)

(declare-fun b!6075098 () Bool)

(assert (= bs!1504310 (and b!6075098 b!6073960)))

(declare-fun lambda!331137 () Int)

(assert (=> bs!1504310 (= lambda!331137 lambda!331043)))

(declare-fun bs!1504311 () Bool)

(assert (= bs!1504311 (and b!6075098 b!6073970)))

(assert (=> bs!1504311 (= lambda!331137 lambda!331046)))

(declare-fun bs!1504312 () Bool)

(assert (= bs!1504312 (and b!6075098 b!6074441)))

(assert (=> bs!1504312 (= lambda!331137 lambda!331092)))

(declare-fun lt!2326650 () Int)

(declare-fun lambda!331138 () Int)

(assert (=> bs!1504312 (= (= lt!2326650 lt!2326596) (= lambda!331138 lambda!331093))))

(declare-fun bs!1504313 () Bool)

(assert (= bs!1504313 (and b!6075098 b!6074443)))

(assert (=> bs!1504313 (= (= lt!2326650 lt!2326594) (= lambda!331138 lambda!331094))))

(assert (=> bs!1504311 (= (= lt!2326650 lt!2326536) (= lambda!331138 lambda!331047))))

(declare-fun bs!1504314 () Bool)

(assert (= bs!1504314 (and b!6075098 d!1904415)))

(assert (=> bs!1504314 (not (= lambda!331138 lambda!331097))))

(declare-fun bs!1504315 () Bool)

(assert (= bs!1504315 (and b!6075098 d!1904435)))

(assert (=> bs!1504315 (not (= lambda!331138 lambda!331104))))

(declare-fun bs!1504316 () Bool)

(assert (= bs!1504316 (and b!6075098 b!6073972)))

(assert (=> bs!1504316 (= (= lt!2326650 lt!2326534) (= lambda!331138 lambda!331048))))

(declare-fun bs!1504317 () Bool)

(assert (= bs!1504317 (and b!6075098 b!6073962)))

(assert (=> bs!1504317 (= (= lt!2326650 lt!2326528) (= lambda!331138 lambda!331045))))

(assert (=> bs!1504310 (= (= lt!2326650 lt!2326530) (= lambda!331138 lambda!331044))))

(assert (=> b!6075098 true))

(declare-fun bs!1504318 () Bool)

(declare-fun b!6075100 () Bool)

(assert (= bs!1504318 (and b!6075100 b!6074441)))

(declare-fun lambda!331139 () Int)

(declare-fun lt!2326648 () Int)

(assert (=> bs!1504318 (= (= lt!2326648 lt!2326596) (= lambda!331139 lambda!331093))))

(declare-fun bs!1504319 () Bool)

(assert (= bs!1504319 (and b!6075100 b!6074443)))

(assert (=> bs!1504319 (= (= lt!2326648 lt!2326594) (= lambda!331139 lambda!331094))))

(declare-fun bs!1504320 () Bool)

(assert (= bs!1504320 (and b!6075100 b!6073970)))

(assert (=> bs!1504320 (= (= lt!2326648 lt!2326536) (= lambda!331139 lambda!331047))))

(declare-fun bs!1504321 () Bool)

(assert (= bs!1504321 (and b!6075100 d!1904415)))

(assert (=> bs!1504321 (not (= lambda!331139 lambda!331097))))

(declare-fun bs!1504322 () Bool)

(assert (= bs!1504322 (and b!6075100 d!1904435)))

(assert (=> bs!1504322 (not (= lambda!331139 lambda!331104))))

(declare-fun bs!1504323 () Bool)

(assert (= bs!1504323 (and b!6075100 b!6073962)))

(assert (=> bs!1504323 (= (= lt!2326648 lt!2326528) (= lambda!331139 lambda!331045))))

(declare-fun bs!1504324 () Bool)

(assert (= bs!1504324 (and b!6075100 b!6073960)))

(assert (=> bs!1504324 (= (= lt!2326648 lt!2326530) (= lambda!331139 lambda!331044))))

(declare-fun bs!1504325 () Bool)

(assert (= bs!1504325 (and b!6075100 b!6075098)))

(assert (=> bs!1504325 (= (= lt!2326648 lt!2326650) (= lambda!331139 lambda!331138))))

(declare-fun bs!1504326 () Bool)

(assert (= bs!1504326 (and b!6075100 b!6073972)))

(assert (=> bs!1504326 (= (= lt!2326648 lt!2326534) (= lambda!331139 lambda!331048))))

(assert (=> b!6075100 true))

(declare-fun d!1904701 () Bool)

(declare-fun e!3707547 () Bool)

(assert (=> d!1904701 e!3707547))

(declare-fun res!2524318 () Bool)

(assert (=> d!1904701 (=> (not res!2524318) (not e!3707547))))

(assert (=> d!1904701 (= res!2524318 (>= lt!2326648 0))))

(declare-fun e!3707546 () Int)

(assert (=> d!1904701 (= lt!2326648 e!3707546)))

(declare-fun c!1090345 () Bool)

(assert (=> d!1904701 (= c!1090345 ((_ is Cons!64294) (t!377859 (Cons!64294 lt!2326421 Nil!64294))))))

(assert (=> d!1904701 (= (zipperDepth!284 (t!377859 (Cons!64294 lt!2326421 Nil!64294))) lt!2326648)))

(assert (=> b!6075098 (= e!3707546 lt!2326650)))

(assert (=> b!6075098 (= lt!2326650 (maxBigInt!0 (contextDepth!179 (h!70742 (t!377859 (Cons!64294 lt!2326421 Nil!64294)))) (zipperDepth!284 (t!377859 (t!377859 (Cons!64294 lt!2326421 Nil!64294))))))))

(declare-fun lt!2326649 () Unit!157349)

(assert (=> b!6075098 (= lt!2326649 (lemmaForallContextDepthBiggerThanTransitive!163 (t!377859 (t!377859 (Cons!64294 lt!2326421 Nil!64294))) lt!2326650 (zipperDepth!284 (t!377859 (t!377859 (Cons!64294 lt!2326421 Nil!64294)))) lambda!331137))))

(assert (=> b!6075098 (forall!15152 (t!377859 (t!377859 (Cons!64294 lt!2326421 Nil!64294))) lambda!331138)))

(declare-fun lt!2326647 () Unit!157349)

(assert (=> b!6075098 (= lt!2326647 lt!2326649)))

(declare-fun b!6075099 () Bool)

(assert (=> b!6075099 (= e!3707546 0)))

(assert (=> b!6075100 (= e!3707547 (forall!15152 (t!377859 (Cons!64294 lt!2326421 Nil!64294)) lambda!331139))))

(assert (= (and d!1904701 c!1090345) b!6075098))

(assert (= (and d!1904701 (not c!1090345)) b!6075099))

(assert (= (and d!1904701 res!2524318) b!6075100))

(declare-fun m!6935172 () Bool)

(assert (=> b!6075098 m!6935172))

(declare-fun m!6935174 () Bool)

(assert (=> b!6075098 m!6935174))

(declare-fun m!6935176 () Bool)

(assert (=> b!6075098 m!6935176))

(assert (=> b!6075098 m!6935176))

(declare-fun m!6935178 () Bool)

(assert (=> b!6075098 m!6935178))

(assert (=> b!6075098 m!6935174))

(assert (=> b!6075098 m!6935176))

(declare-fun m!6935180 () Bool)

(assert (=> b!6075098 m!6935180))

(declare-fun m!6935182 () Bool)

(assert (=> b!6075100 m!6935182))

(assert (=> b!6073970 d!1904701))

(declare-fun d!1904709 () Bool)

(declare-fun res!2524319 () Bool)

(declare-fun e!3707548 () Bool)

(assert (=> d!1904709 (=> res!2524319 e!3707548)))

(assert (=> d!1904709 (= res!2524319 ((_ is Nil!64294) (t!377859 (Cons!64294 lt!2326421 Nil!64294))))))

(assert (=> d!1904709 (= (forall!15152 (t!377859 (Cons!64294 lt!2326421 Nil!64294)) lambda!331047) e!3707548)))

(declare-fun b!6075101 () Bool)

(declare-fun e!3707549 () Bool)

(assert (=> b!6075101 (= e!3707548 e!3707549)))

(declare-fun res!2524320 () Bool)

(assert (=> b!6075101 (=> (not res!2524320) (not e!3707549))))

(assert (=> b!6075101 (= res!2524320 (dynLambda!25281 lambda!331047 (h!70742 (t!377859 (Cons!64294 lt!2326421 Nil!64294)))))))

(declare-fun b!6075102 () Bool)

(assert (=> b!6075102 (= e!3707549 (forall!15152 (t!377859 (t!377859 (Cons!64294 lt!2326421 Nil!64294))) lambda!331047))))

(assert (= (and d!1904709 (not res!2524319)) b!6075101))

(assert (= (and b!6075101 res!2524320) b!6075102))

(declare-fun b_lambda!231069 () Bool)

(assert (=> (not b_lambda!231069) (not b!6075101)))

(declare-fun m!6935184 () Bool)

(assert (=> b!6075101 m!6935184))

(declare-fun m!6935186 () Bool)

(assert (=> b!6075102 m!6935186))

(assert (=> b!6073970 d!1904709))

(declare-fun d!1904711 () Bool)

(assert (=> d!1904711 (= (maxBigInt!0 (contextDepth!179 (h!70742 (Cons!64294 lt!2326421 Nil!64294))) (zipperDepth!284 (t!377859 (Cons!64294 lt!2326421 Nil!64294)))) (ite (>= (contextDepth!179 (h!70742 (Cons!64294 lt!2326421 Nil!64294))) (zipperDepth!284 (t!377859 (Cons!64294 lt!2326421 Nil!64294)))) (contextDepth!179 (h!70742 (Cons!64294 lt!2326421 Nil!64294))) (zipperDepth!284 (t!377859 (Cons!64294 lt!2326421 Nil!64294)))))))

(assert (=> b!6073970 d!1904711))

(declare-fun bs!1504327 () Bool)

(declare-fun b!6075111 () Bool)

(assert (= bs!1504327 (and b!6075111 d!1904201)))

(declare-fun lambda!331140 () Int)

(assert (=> bs!1504327 (not (= lambda!331140 lambda!331013))))

(declare-fun bs!1504328 () Bool)

(assert (= bs!1504328 (and b!6075111 d!1904353)))

(assert (=> bs!1504328 (not (= lambda!331140 lambda!331073))))

(declare-fun bs!1504329 () Bool)

(assert (= bs!1504329 (and b!6075111 b!6074429)))

(declare-fun lt!2326653 () Int)

(assert (=> bs!1504329 (= (= lt!2326653 lt!2326589) (= lambda!331140 lambda!331090))))

(declare-fun bs!1504330 () Bool)

(assert (= bs!1504330 (and b!6075111 d!1904269)))

(assert (=> bs!1504330 (not (= lambda!331140 lambda!331049))))

(declare-fun bs!1504331 () Bool)

(assert (= bs!1504331 (and b!6075111 d!1904207)))

(assert (=> bs!1504331 (not (= lambda!331140 lambda!331016))))

(declare-fun bs!1504332 () Bool)

(assert (= bs!1504332 (and b!6075111 d!1904191)))

(assert (=> bs!1504332 (not (= lambda!331140 lambda!331004))))

(declare-fun bs!1504333 () Bool)

(assert (= bs!1504333 (and b!6075111 d!1904307)))

(assert (=> bs!1504333 (not (= lambda!331140 lambda!331071))))

(declare-fun bs!1504334 () Bool)

(assert (= bs!1504334 (and b!6075111 d!1904369)))

(assert (=> bs!1504334 (not (= lambda!331140 lambda!331077))))

(declare-fun bs!1504335 () Bool)

(assert (= bs!1504335 (and b!6075111 d!1904601)))

(assert (=> bs!1504335 (not (= lambda!331140 lambda!331124))))

(declare-fun bs!1504336 () Bool)

(assert (= bs!1504336 (and b!6075111 d!1904305)))

(assert (=> bs!1504336 (not (= lambda!331140 lambda!331070))))

(declare-fun bs!1504337 () Bool)

(assert (= bs!1504337 (and b!6075111 d!1904469)))

(assert (=> bs!1504337 (not (= lambda!331140 lambda!331107))))

(declare-fun bs!1504338 () Bool)

(assert (= bs!1504338 (and b!6075111 b!6074431)))

(assert (=> bs!1504338 (= (= lt!2326653 lt!2326590) (= lambda!331140 lambda!331091))))

(declare-fun bs!1504339 () Bool)

(assert (= bs!1504339 (and b!6075111 d!1904621)))

(assert (=> bs!1504339 (not (= lambda!331140 lambda!331125))))

(assert (=> b!6075111 true))

(declare-fun bs!1504340 () Bool)

(declare-fun b!6075113 () Bool)

(assert (= bs!1504340 (and b!6075113 d!1904201)))

(declare-fun lambda!331141 () Int)

(assert (=> bs!1504340 (not (= lambda!331141 lambda!331013))))

(declare-fun bs!1504341 () Bool)

(assert (= bs!1504341 (and b!6075113 d!1904353)))

(assert (=> bs!1504341 (not (= lambda!331141 lambda!331073))))

(declare-fun bs!1504342 () Bool)

(assert (= bs!1504342 (and b!6075113 b!6074429)))

(declare-fun lt!2326654 () Int)

(assert (=> bs!1504342 (= (= lt!2326654 lt!2326589) (= lambda!331141 lambda!331090))))

(declare-fun bs!1504343 () Bool)

(assert (= bs!1504343 (and b!6075113 d!1904269)))

(assert (=> bs!1504343 (not (= lambda!331141 lambda!331049))))

(declare-fun bs!1504344 () Bool)

(assert (= bs!1504344 (and b!6075113 b!6075111)))

(assert (=> bs!1504344 (= (= lt!2326654 lt!2326653) (= lambda!331141 lambda!331140))))

(declare-fun bs!1504345 () Bool)

(assert (= bs!1504345 (and b!6075113 d!1904207)))

(assert (=> bs!1504345 (not (= lambda!331141 lambda!331016))))

(declare-fun bs!1504346 () Bool)

(assert (= bs!1504346 (and b!6075113 d!1904191)))

(assert (=> bs!1504346 (not (= lambda!331141 lambda!331004))))

(declare-fun bs!1504347 () Bool)

(assert (= bs!1504347 (and b!6075113 d!1904307)))

(assert (=> bs!1504347 (not (= lambda!331141 lambda!331071))))

(declare-fun bs!1504348 () Bool)

(assert (= bs!1504348 (and b!6075113 d!1904369)))

(assert (=> bs!1504348 (not (= lambda!331141 lambda!331077))))

(declare-fun bs!1504349 () Bool)

(assert (= bs!1504349 (and b!6075113 d!1904601)))

(assert (=> bs!1504349 (not (= lambda!331141 lambda!331124))))

(declare-fun bs!1504350 () Bool)

(assert (= bs!1504350 (and b!6075113 d!1904305)))

(assert (=> bs!1504350 (not (= lambda!331141 lambda!331070))))

(declare-fun bs!1504351 () Bool)

(assert (= bs!1504351 (and b!6075113 d!1904469)))

(assert (=> bs!1504351 (not (= lambda!331141 lambda!331107))))

(declare-fun bs!1504352 () Bool)

(assert (= bs!1504352 (and b!6075113 b!6074431)))

(assert (=> bs!1504352 (= (= lt!2326654 lt!2326590) (= lambda!331141 lambda!331091))))

(declare-fun bs!1504353 () Bool)

(assert (= bs!1504353 (and b!6075113 d!1904621)))

(assert (=> bs!1504353 (not (= lambda!331141 lambda!331125))))

(assert (=> b!6075113 true))

(declare-fun d!1904713 () Bool)

(declare-fun e!3707555 () Bool)

(assert (=> d!1904713 e!3707555))

(declare-fun res!2524325 () Bool)

(assert (=> d!1904713 (=> (not res!2524325) (not e!3707555))))

(assert (=> d!1904713 (= res!2524325 (>= lt!2326654 0))))

(declare-fun e!3707554 () Int)

(assert (=> d!1904713 (= lt!2326654 e!3707554)))

(declare-fun c!1090348 () Bool)

(assert (=> d!1904713 (= c!1090348 ((_ is Cons!64292) (exprs!5923 (h!70742 (Cons!64294 lt!2326421 Nil!64294)))))))

(assert (=> d!1904713 (= (contextDepth!179 (h!70742 (Cons!64294 lt!2326421 Nil!64294))) lt!2326654)))

(assert (=> b!6075111 (= e!3707554 lt!2326653)))

(assert (=> b!6075111 (= lt!2326653 (maxBigInt!0 (regexDepth!287 (h!70740 (exprs!5923 (h!70742 (Cons!64294 lt!2326421 Nil!64294))))) (contextDepth!179 (Context!10847 (t!377857 (exprs!5923 (h!70742 (Cons!64294 lt!2326421 Nil!64294))))))))))

(declare-fun lt!2326656 () Unit!157349)

(assert (=> b!6075111 (= lt!2326656 (lemmaForallRegexDepthBiggerThanTransitive!77 (t!377857 (exprs!5923 (h!70742 (Cons!64294 lt!2326421 Nil!64294)))) lt!2326653 (contextDepth!179 (Context!10847 (t!377857 (exprs!5923 (h!70742 (Cons!64294 lt!2326421 Nil!64294))))))))))

(assert (=> b!6075111 (forall!15151 (t!377857 (exprs!5923 (h!70742 (Cons!64294 lt!2326421 Nil!64294)))) lambda!331140)))

(declare-fun lt!2326655 () Unit!157349)

(assert (=> b!6075111 (= lt!2326655 lt!2326656)))

(declare-fun b!6075112 () Bool)

(assert (=> b!6075112 (= e!3707554 0)))

(assert (=> b!6075113 (= e!3707555 (forall!15151 (exprs!5923 (h!70742 (Cons!64294 lt!2326421 Nil!64294))) lambda!331141))))

(assert (= (and d!1904713 c!1090348) b!6075111))

(assert (= (and d!1904713 (not c!1090348)) b!6075112))

(assert (= (and d!1904713 res!2524325) b!6075113))

(declare-fun m!6935216 () Bool)

(assert (=> b!6075111 m!6935216))

(declare-fun m!6935218 () Bool)

(assert (=> b!6075111 m!6935218))

(declare-fun m!6935220 () Bool)

(assert (=> b!6075111 m!6935220))

(assert (=> b!6075111 m!6935218))

(declare-fun m!6935222 () Bool)

(assert (=> b!6075111 m!6935222))

(declare-fun m!6935224 () Bool)

(assert (=> b!6075111 m!6935224))

(assert (=> b!6075111 m!6935218))

(assert (=> b!6075111 m!6935216))

(declare-fun m!6935226 () Bool)

(assert (=> b!6075113 m!6935226))

(assert (=> b!6073970 d!1904713))

(declare-fun bs!1504354 () Bool)

(declare-fun d!1904719 () Bool)

(assert (= bs!1504354 (and d!1904719 b!6075100)))

(declare-fun lambda!331142 () Int)

(assert (=> bs!1504354 (not (= lambda!331142 lambda!331139))))

(declare-fun bs!1504355 () Bool)

(assert (= bs!1504355 (and d!1904719 b!6074441)))

(assert (=> bs!1504355 (not (= lambda!331142 lambda!331093))))

(declare-fun bs!1504356 () Bool)

(assert (= bs!1504356 (and d!1904719 b!6074443)))

(assert (=> bs!1504356 (not (= lambda!331142 lambda!331094))))

(declare-fun bs!1504357 () Bool)

(assert (= bs!1504357 (and d!1904719 b!6073970)))

(assert (=> bs!1504357 (not (= lambda!331142 lambda!331047))))

(declare-fun bs!1504358 () Bool)

(assert (= bs!1504358 (and d!1904719 d!1904415)))

(assert (=> bs!1504358 (= (and (= lt!2326536 lt!2326530) (= lambda!331046 lambda!331043)) (= lambda!331142 lambda!331097))))

(declare-fun bs!1504359 () Bool)

(assert (= bs!1504359 (and d!1904719 d!1904435)))

(assert (=> bs!1504359 (not (= lambda!331142 lambda!331104))))

(declare-fun bs!1504360 () Bool)

(assert (= bs!1504360 (and d!1904719 b!6073962)))

(assert (=> bs!1504360 (not (= lambda!331142 lambda!331045))))

(declare-fun bs!1504361 () Bool)

(assert (= bs!1504361 (and d!1904719 b!6073960)))

(assert (=> bs!1504361 (not (= lambda!331142 lambda!331044))))

(declare-fun bs!1504362 () Bool)

(assert (= bs!1504362 (and d!1904719 b!6075098)))

(assert (=> bs!1504362 (not (= lambda!331142 lambda!331138))))

(declare-fun bs!1504363 () Bool)

(assert (= bs!1504363 (and d!1904719 b!6073972)))

(assert (=> bs!1504363 (not (= lambda!331142 lambda!331048))))

(assert (=> d!1904719 true))

(assert (=> d!1904719 true))

(assert (=> d!1904719 (< (dynLambda!25282 order!27369 lambda!331046) (dynLambda!25283 order!27371 lambda!331142))))

(assert (=> d!1904719 (forall!15152 (t!377859 (Cons!64294 lt!2326421 Nil!64294)) lambda!331142)))

(declare-fun lt!2326660 () Unit!157349)

(assert (=> d!1904719 (= lt!2326660 (choose!45255 (t!377859 (Cons!64294 lt!2326421 Nil!64294)) lt!2326536 (zipperDepth!284 (t!377859 (Cons!64294 lt!2326421 Nil!64294))) lambda!331046))))

(assert (=> d!1904719 (>= lt!2326536 (zipperDepth!284 (t!377859 (Cons!64294 lt!2326421 Nil!64294))))))

(assert (=> d!1904719 (= (lemmaForallContextDepthBiggerThanTransitive!163 (t!377859 (Cons!64294 lt!2326421 Nil!64294)) lt!2326536 (zipperDepth!284 (t!377859 (Cons!64294 lt!2326421 Nil!64294))) lambda!331046) lt!2326660)))

(declare-fun bs!1504364 () Bool)

(assert (= bs!1504364 d!1904719))

(declare-fun m!6935242 () Bool)

(assert (=> bs!1504364 m!6935242))

(assert (=> bs!1504364 m!6934192))

(declare-fun m!6935244 () Bool)

(assert (=> bs!1504364 m!6935244))

(assert (=> b!6073970 d!1904719))

(declare-fun b!6075126 () Bool)

(declare-fun res!2524332 () Bool)

(declare-fun e!3707564 () Bool)

(assert (=> b!6075126 (=> (not res!2524332) (not e!3707564))))

(assert (=> b!6075126 (= res!2524332 (isEmpty!36205 (tail!11689 (_2!36321 (get!22163 lt!2326544)))))))

(declare-fun b!6075127 () Bool)

(declare-fun res!2524339 () Bool)

(declare-fun e!3707567 () Bool)

(assert (=> b!6075127 (=> res!2524339 e!3707567)))

(assert (=> b!6075127 (= res!2524339 (not ((_ is ElementMatch!16039) (regTwo!32590 r!7292))))))

(declare-fun e!3707563 () Bool)

(assert (=> b!6075127 (= e!3707563 e!3707567)))

(declare-fun b!6075128 () Bool)

(declare-fun e!3707562 () Bool)

(assert (=> b!6075128 (= e!3707567 e!3707562)))

(declare-fun res!2524336 () Bool)

(assert (=> b!6075128 (=> (not res!2524336) (not e!3707562))))

(declare-fun lt!2326661 () Bool)

(assert (=> b!6075128 (= res!2524336 (not lt!2326661))))

(declare-fun b!6075129 () Bool)

(declare-fun res!2524333 () Bool)

(assert (=> b!6075129 (=> (not res!2524333) (not e!3707564))))

(declare-fun call!500017 () Bool)

(assert (=> b!6075129 (= res!2524333 (not call!500017))))

(declare-fun b!6075130 () Bool)

(assert (=> b!6075130 (= e!3707564 (= (head!12604 (_2!36321 (get!22163 lt!2326544))) (c!1089857 (regTwo!32590 r!7292))))))

(declare-fun d!1904723 () Bool)

(declare-fun e!3707568 () Bool)

(assert (=> d!1904723 e!3707568))

(declare-fun c!1090353 () Bool)

(assert (=> d!1904723 (= c!1090353 ((_ is EmptyExpr!16039) (regTwo!32590 r!7292)))))

(declare-fun e!3707565 () Bool)

(assert (=> d!1904723 (= lt!2326661 e!3707565)))

(declare-fun c!1090352 () Bool)

(assert (=> d!1904723 (= c!1090352 (isEmpty!36205 (_2!36321 (get!22163 lt!2326544))))))

(assert (=> d!1904723 (validRegex!7775 (regTwo!32590 r!7292))))

(assert (=> d!1904723 (= (matchR!8222 (regTwo!32590 r!7292) (_2!36321 (get!22163 lt!2326544))) lt!2326661)))

(declare-fun b!6075131 () Bool)

(assert (=> b!6075131 (= e!3707565 (nullable!6034 (regTwo!32590 r!7292)))))

(declare-fun b!6075132 () Bool)

(declare-fun res!2524335 () Bool)

(assert (=> b!6075132 (=> res!2524335 e!3707567)))

(assert (=> b!6075132 (= res!2524335 e!3707564)))

(declare-fun res!2524334 () Bool)

(assert (=> b!6075132 (=> (not res!2524334) (not e!3707564))))

(assert (=> b!6075132 (= res!2524334 lt!2326661)))

(declare-fun b!6075133 () Bool)

(assert (=> b!6075133 (= e!3707565 (matchR!8222 (derivativeStep!4762 (regTwo!32590 r!7292) (head!12604 (_2!36321 (get!22163 lt!2326544)))) (tail!11689 (_2!36321 (get!22163 lt!2326544)))))))

(declare-fun b!6075134 () Bool)

(assert (=> b!6075134 (= e!3707568 (= lt!2326661 call!500017))))

(declare-fun b!6075135 () Bool)

(assert (=> b!6075135 (= e!3707568 e!3707563)))

(declare-fun c!1090354 () Bool)

(assert (=> b!6075135 (= c!1090354 ((_ is EmptyLang!16039) (regTwo!32590 r!7292)))))

(declare-fun bm!500012 () Bool)

(assert (=> bm!500012 (= call!500017 (isEmpty!36205 (_2!36321 (get!22163 lt!2326544))))))

(declare-fun b!6075136 () Bool)

(declare-fun res!2524338 () Bool)

(declare-fun e!3707566 () Bool)

(assert (=> b!6075136 (=> res!2524338 e!3707566)))

(assert (=> b!6075136 (= res!2524338 (not (isEmpty!36205 (tail!11689 (_2!36321 (get!22163 lt!2326544))))))))

(declare-fun b!6075137 () Bool)

(assert (=> b!6075137 (= e!3707566 (not (= (head!12604 (_2!36321 (get!22163 lt!2326544))) (c!1089857 (regTwo!32590 r!7292)))))))

(declare-fun b!6075138 () Bool)

(assert (=> b!6075138 (= e!3707563 (not lt!2326661))))

(declare-fun b!6075139 () Bool)

(assert (=> b!6075139 (= e!3707562 e!3707566)))

(declare-fun res!2524337 () Bool)

(assert (=> b!6075139 (=> res!2524337 e!3707566)))

(assert (=> b!6075139 (= res!2524337 call!500017)))

(assert (= (and d!1904723 c!1090352) b!6075131))

(assert (= (and d!1904723 (not c!1090352)) b!6075133))

(assert (= (and d!1904723 c!1090353) b!6075134))

(assert (= (and d!1904723 (not c!1090353)) b!6075135))

(assert (= (and b!6075135 c!1090354) b!6075138))

(assert (= (and b!6075135 (not c!1090354)) b!6075127))

(assert (= (and b!6075127 (not res!2524339)) b!6075132))

(assert (= (and b!6075132 res!2524334) b!6075129))

(assert (= (and b!6075129 res!2524333) b!6075126))

(assert (= (and b!6075126 res!2524332) b!6075130))

(assert (= (and b!6075132 (not res!2524335)) b!6075128))

(assert (= (and b!6075128 res!2524336) b!6075139))

(assert (= (and b!6075139 (not res!2524337)) b!6075136))

(assert (= (and b!6075136 (not res!2524338)) b!6075137))

(assert (= (or b!6075134 b!6075129 b!6075139) bm!500012))

(declare-fun m!6935246 () Bool)

(assert (=> b!6075137 m!6935246))

(assert (=> b!6075130 m!6935246))

(declare-fun m!6935248 () Bool)

(assert (=> b!6075126 m!6935248))

(assert (=> b!6075126 m!6935248))

(declare-fun m!6935250 () Bool)

(assert (=> b!6075126 m!6935250))

(assert (=> b!6075131 m!6934394))

(assert (=> b!6075136 m!6935248))

(assert (=> b!6075136 m!6935248))

(assert (=> b!6075136 m!6935250))

(assert (=> b!6075133 m!6935246))

(assert (=> b!6075133 m!6935246))

(declare-fun m!6935252 () Bool)

(assert (=> b!6075133 m!6935252))

(assert (=> b!6075133 m!6935248))

(assert (=> b!6075133 m!6935252))

(assert (=> b!6075133 m!6935248))

(declare-fun m!6935254 () Bool)

(assert (=> b!6075133 m!6935254))

(declare-fun m!6935256 () Bool)

(assert (=> bm!500012 m!6935256))

(assert (=> d!1904723 m!6935256))

(assert (=> d!1904723 m!6934400))

(assert (=> b!6074073 d!1904723))

(assert (=> b!6074073 d!1904383))

(assert (=> d!1904271 d!1904433))

(declare-fun b!6075140 () Bool)

(declare-fun res!2524340 () Bool)

(declare-fun e!3707571 () Bool)

(assert (=> b!6075140 (=> (not res!2524340) (not e!3707571))))

(assert (=> b!6075140 (= res!2524340 (isEmpty!36205 (tail!11689 Nil!64293)))))

(declare-fun b!6075141 () Bool)

(declare-fun res!2524347 () Bool)

(declare-fun e!3707574 () Bool)

(assert (=> b!6075141 (=> res!2524347 e!3707574)))

(assert (=> b!6075141 (= res!2524347 (not ((_ is ElementMatch!16039) (regOne!32590 r!7292))))))

(declare-fun e!3707570 () Bool)

(assert (=> b!6075141 (= e!3707570 e!3707574)))

(declare-fun b!6075142 () Bool)

(declare-fun e!3707569 () Bool)

(assert (=> b!6075142 (= e!3707574 e!3707569)))

(declare-fun res!2524344 () Bool)

(assert (=> b!6075142 (=> (not res!2524344) (not e!3707569))))

(declare-fun lt!2326664 () Bool)

(assert (=> b!6075142 (= res!2524344 (not lt!2326664))))

(declare-fun b!6075143 () Bool)

(declare-fun res!2524341 () Bool)

(assert (=> b!6075143 (=> (not res!2524341) (not e!3707571))))

(declare-fun call!500018 () Bool)

(assert (=> b!6075143 (= res!2524341 (not call!500018))))

(declare-fun b!6075144 () Bool)

(assert (=> b!6075144 (= e!3707571 (= (head!12604 Nil!64293) (c!1089857 (regOne!32590 r!7292))))))

(declare-fun d!1904725 () Bool)

(declare-fun e!3707575 () Bool)

(assert (=> d!1904725 e!3707575))

(declare-fun c!1090356 () Bool)

(assert (=> d!1904725 (= c!1090356 ((_ is EmptyExpr!16039) (regOne!32590 r!7292)))))

(declare-fun e!3707572 () Bool)

(assert (=> d!1904725 (= lt!2326664 e!3707572)))

(declare-fun c!1090355 () Bool)

(assert (=> d!1904725 (= c!1090355 (isEmpty!36205 Nil!64293))))

(assert (=> d!1904725 (validRegex!7775 (regOne!32590 r!7292))))

(assert (=> d!1904725 (= (matchR!8222 (regOne!32590 r!7292) Nil!64293) lt!2326664)))

(declare-fun b!6075145 () Bool)

(assert (=> b!6075145 (= e!3707572 (nullable!6034 (regOne!32590 r!7292)))))

(declare-fun b!6075146 () Bool)

(declare-fun res!2524343 () Bool)

(assert (=> b!6075146 (=> res!2524343 e!3707574)))

(assert (=> b!6075146 (= res!2524343 e!3707571)))

(declare-fun res!2524342 () Bool)

(assert (=> b!6075146 (=> (not res!2524342) (not e!3707571))))

(assert (=> b!6075146 (= res!2524342 lt!2326664)))

(declare-fun b!6075147 () Bool)

(assert (=> b!6075147 (= e!3707572 (matchR!8222 (derivativeStep!4762 (regOne!32590 r!7292) (head!12604 Nil!64293)) (tail!11689 Nil!64293)))))

(declare-fun b!6075148 () Bool)

(assert (=> b!6075148 (= e!3707575 (= lt!2326664 call!500018))))

(declare-fun b!6075149 () Bool)

(assert (=> b!6075149 (= e!3707575 e!3707570)))

(declare-fun c!1090357 () Bool)

(assert (=> b!6075149 (= c!1090357 ((_ is EmptyLang!16039) (regOne!32590 r!7292)))))

(declare-fun bm!500013 () Bool)

(assert (=> bm!500013 (= call!500018 (isEmpty!36205 Nil!64293))))

(declare-fun b!6075150 () Bool)

(declare-fun res!2524346 () Bool)

(declare-fun e!3707573 () Bool)

(assert (=> b!6075150 (=> res!2524346 e!3707573)))

(assert (=> b!6075150 (= res!2524346 (not (isEmpty!36205 (tail!11689 Nil!64293))))))

(declare-fun b!6075151 () Bool)

(assert (=> b!6075151 (= e!3707573 (not (= (head!12604 Nil!64293) (c!1089857 (regOne!32590 r!7292)))))))

(declare-fun b!6075152 () Bool)

(assert (=> b!6075152 (= e!3707570 (not lt!2326664))))

(declare-fun b!6075153 () Bool)

(assert (=> b!6075153 (= e!3707569 e!3707573)))

(declare-fun res!2524345 () Bool)

(assert (=> b!6075153 (=> res!2524345 e!3707573)))

(assert (=> b!6075153 (= res!2524345 call!500018)))

(assert (= (and d!1904725 c!1090355) b!6075145))

(assert (= (and d!1904725 (not c!1090355)) b!6075147))

(assert (= (and d!1904725 c!1090356) b!6075148))

(assert (= (and d!1904725 (not c!1090356)) b!6075149))

(assert (= (and b!6075149 c!1090357) b!6075152))

(assert (= (and b!6075149 (not c!1090357)) b!6075141))

(assert (= (and b!6075141 (not res!2524347)) b!6075146))

(assert (= (and b!6075146 res!2524342) b!6075143))

(assert (= (and b!6075143 res!2524341) b!6075140))

(assert (= (and b!6075140 res!2524340) b!6075144))

(assert (= (and b!6075146 (not res!2524343)) b!6075142))

(assert (= (and b!6075142 res!2524344) b!6075153))

(assert (= (and b!6075153 (not res!2524345)) b!6075150))

(assert (= (and b!6075150 (not res!2524346)) b!6075151))

(assert (= (or b!6075148 b!6075143 b!6075153) bm!500013))

(declare-fun m!6935262 () Bool)

(assert (=> b!6075151 m!6935262))

(assert (=> b!6075144 m!6935262))

(declare-fun m!6935264 () Bool)

(assert (=> b!6075140 m!6935264))

(assert (=> b!6075140 m!6935264))

(declare-fun m!6935266 () Bool)

(assert (=> b!6075140 m!6935266))

(assert (=> b!6075145 m!6933790))

(assert (=> b!6075150 m!6935264))

(assert (=> b!6075150 m!6935264))

(assert (=> b!6075150 m!6935266))

(assert (=> b!6075147 m!6935262))

(assert (=> b!6075147 m!6935262))

(declare-fun m!6935268 () Bool)

(assert (=> b!6075147 m!6935268))

(assert (=> b!6075147 m!6935264))

(assert (=> b!6075147 m!6935268))

(assert (=> b!6075147 m!6935264))

(declare-fun m!6935270 () Bool)

(assert (=> b!6075147 m!6935270))

(declare-fun m!6935272 () Bool)

(assert (=> bm!500013 m!6935272))

(assert (=> d!1904725 m!6935272))

(assert (=> d!1904725 m!6934240))

(assert (=> d!1904271 d!1904725))

(assert (=> d!1904271 d!1904653))

(declare-fun d!1904729 () Bool)

(assert (=> d!1904729 (= (isUnion!898 lt!2326478) ((_ is Union!16039) lt!2326478))))

(assert (=> b!6073737 d!1904729))

(assert (=> b!6073850 d!1904467))

(assert (=> b!6073850 d!1904367))

(declare-fun d!1904731 () Bool)

(declare-fun res!2524353 () Bool)

(declare-fun e!3707581 () Bool)

(assert (=> d!1904731 (=> res!2524353 e!3707581)))

(assert (=> d!1904731 (= res!2524353 ((_ is Nil!64292) (exprs!5923 setElem!41058)))))

(assert (=> d!1904731 (= (forall!15151 (exprs!5923 setElem!41058) lambda!331049) e!3707581)))

(declare-fun b!6075163 () Bool)

(declare-fun e!3707582 () Bool)

(assert (=> b!6075163 (= e!3707581 e!3707582)))

(declare-fun res!2524354 () Bool)

(assert (=> b!6075163 (=> (not res!2524354) (not e!3707582))))

(assert (=> b!6075163 (= res!2524354 (dynLambda!25284 lambda!331049 (h!70740 (exprs!5923 setElem!41058))))))

(declare-fun b!6075164 () Bool)

(assert (=> b!6075164 (= e!3707582 (forall!15151 (t!377857 (exprs!5923 setElem!41058)) lambda!331049))))

(assert (= (and d!1904731 (not res!2524353)) b!6075163))

(assert (= (and b!6075163 res!2524354) b!6075164))

(declare-fun b_lambda!231071 () Bool)

(assert (=> (not b_lambda!231071) (not b!6075163)))

(declare-fun m!6935274 () Bool)

(assert (=> b!6075163 m!6935274))

(declare-fun m!6935276 () Bool)

(assert (=> b!6075164 m!6935276))

(assert (=> d!1904269 d!1904731))

(declare-fun b!6075165 () Bool)

(declare-fun e!3707583 () (InoxSet Context!10846))

(assert (=> b!6075165 (= e!3707583 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6075166 () Bool)

(declare-fun call!500020 () (InoxSet Context!10846))

(assert (=> b!6075166 (= e!3707583 call!500020)))

(declare-fun bm!500015 () Bool)

(declare-fun call!500022 () (InoxSet Context!10846))

(declare-fun call!500021 () (InoxSet Context!10846))

(assert (=> bm!500015 (= call!500022 call!500021)))

(declare-fun b!6075167 () Bool)

(declare-fun e!3707588 () (InoxSet Context!10846))

(declare-fun call!500024 () (InoxSet Context!10846))

(assert (=> b!6075167 (= e!3707588 ((_ map or) call!500024 call!500021))))

(declare-fun bm!500016 () Bool)

(declare-fun call!500023 () List!64416)

(declare-fun call!500019 () List!64416)

(assert (=> bm!500016 (= call!500023 call!500019)))

(declare-fun bm!500017 () Bool)

(declare-fun c!1090362 () Bool)

(assert (=> bm!500017 (= call!500024 (derivationStepZipperDown!1289 (ite c!1090362 (regOne!32591 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))) (regOne!32590 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292)))) (ite c!1090362 (ite c!1090054 lt!2326418 (Context!10847 call!499802)) (Context!10847 call!500019)) (h!70741 s!2326)))))

(declare-fun b!6075168 () Bool)

(declare-fun c!1090360 () Bool)

(assert (=> b!6075168 (= c!1090360 ((_ is Star!16039) (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))))))

(declare-fun e!3707585 () (InoxSet Context!10846))

(assert (=> b!6075168 (= e!3707585 e!3707583)))

(declare-fun b!6075169 () Bool)

(declare-fun e!3707584 () (InoxSet Context!10846))

(assert (=> b!6075169 (= e!3707584 e!3707585)))

(declare-fun c!1090361 () Bool)

(assert (=> b!6075169 (= c!1090361 ((_ is Concat!24884) (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))))))

(declare-fun b!6075170 () Bool)

(declare-fun e!3707587 () Bool)

(assert (=> b!6075170 (= e!3707587 (nullable!6034 (regOne!32590 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292)))))))

(declare-fun bm!500018 () Bool)

(declare-fun c!1090364 () Bool)

(assert (=> bm!500018 (= call!500019 ($colon$colon!1918 (exprs!5923 (ite c!1090054 lt!2326418 (Context!10847 call!499802))) (ite (or c!1090364 c!1090361) (regTwo!32590 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))) (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292)))))))

(declare-fun b!6075171 () Bool)

(declare-fun e!3707586 () (InoxSet Context!10846))

(assert (=> b!6075171 (= e!3707586 (store ((as const (Array Context!10846 Bool)) false) (ite c!1090054 lt!2326418 (Context!10847 call!499802)) true))))

(declare-fun b!6075172 () Bool)

(assert (=> b!6075172 (= c!1090364 e!3707587)))

(declare-fun res!2524355 () Bool)

(assert (=> b!6075172 (=> (not res!2524355) (not e!3707587))))

(assert (=> b!6075172 (= res!2524355 ((_ is Concat!24884) (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))))))

(assert (=> b!6075172 (= e!3707588 e!3707584)))

(declare-fun bm!500014 () Bool)

(assert (=> bm!500014 (= call!500021 (derivationStepZipperDown!1289 (ite c!1090362 (regTwo!32591 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))) (ite c!1090364 (regTwo!32590 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))) (ite c!1090361 (regOne!32590 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))) (reg!16368 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292)))))) (ite (or c!1090362 c!1090364) (ite c!1090054 lt!2326418 (Context!10847 call!499802)) (Context!10847 call!500023)) (h!70741 s!2326)))))

(declare-fun c!1090363 () Bool)

(declare-fun d!1904733 () Bool)

(assert (=> d!1904733 (= c!1090363 (and ((_ is ElementMatch!16039) (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))) (= (c!1089857 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))) (h!70741 s!2326))))))

(assert (=> d!1904733 (= (derivationStepZipperDown!1289 (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292)) (ite c!1090054 lt!2326418 (Context!10847 call!499802)) (h!70741 s!2326)) e!3707586)))

(declare-fun b!6075173 () Bool)

(assert (=> b!6075173 (= e!3707585 call!500020)))

(declare-fun bm!500019 () Bool)

(assert (=> bm!500019 (= call!500020 call!500022)))

(declare-fun b!6075174 () Bool)

(assert (=> b!6075174 (= e!3707586 e!3707588)))

(assert (=> b!6075174 (= c!1090362 ((_ is Union!16039) (ite c!1090054 (regOne!32591 r!7292) (regOne!32590 r!7292))))))

(declare-fun b!6075175 () Bool)

(assert (=> b!6075175 (= e!3707584 ((_ map or) call!500024 call!500022))))

(assert (= (and d!1904733 c!1090363) b!6075171))

(assert (= (and d!1904733 (not c!1090363)) b!6075174))

(assert (= (and b!6075174 c!1090362) b!6075167))

(assert (= (and b!6075174 (not c!1090362)) b!6075172))

(assert (= (and b!6075172 res!2524355) b!6075170))

(assert (= (and b!6075172 c!1090364) b!6075175))

(assert (= (and b!6075172 (not c!1090364)) b!6075169))

(assert (= (and b!6075169 c!1090361) b!6075173))

(assert (= (and b!6075169 (not c!1090361)) b!6075168))

(assert (= (and b!6075168 c!1090360) b!6075166))

(assert (= (and b!6075168 (not c!1090360)) b!6075165))

(assert (= (or b!6075173 b!6075166) bm!500016))

(assert (= (or b!6075173 b!6075166) bm!500019))

(assert (= (or b!6075175 bm!500016) bm!500018))

(assert (= (or b!6075175 bm!500019) bm!500015))

(assert (= (or b!6075167 bm!500015) bm!500014))

(assert (= (or b!6075167 b!6075175) bm!500017))

(declare-fun m!6935302 () Bool)

(assert (=> b!6075170 m!6935302))

(declare-fun m!6935304 () Bool)

(assert (=> bm!500014 m!6935304))

(declare-fun m!6935306 () Bool)

(assert (=> bm!500018 m!6935306))

(declare-fun m!6935308 () Bool)

(assert (=> b!6075171 m!6935308))

(declare-fun m!6935310 () Bool)

(assert (=> bm!500017 m!6935310))

(assert (=> bm!499800 d!1904733))

(declare-fun b!6075182 () Bool)

(declare-fun e!3707593 () (InoxSet Context!10846))

(assert (=> b!6075182 (= e!3707593 ((as const (Array Context!10846 Bool)) false))))

(declare-fun b!6075183 () Bool)

(declare-fun call!500027 () (InoxSet Context!10846))

(assert (=> b!6075183 (= e!3707593 call!500027)))

(declare-fun bm!500022 () Bool)

(declare-fun call!500029 () (InoxSet Context!10846))

(declare-fun call!500028 () (InoxSet Context!10846))

(assert (=> bm!500022 (= call!500029 call!500028)))

(declare-fun b!6075184 () Bool)

(declare-fun e!3707598 () (InoxSet Context!10846))

(declare-fun call!500031 () (InoxSet Context!10846))

(assert (=> b!6075184 (= e!3707598 ((_ map or) call!500031 call!500028))))

(declare-fun bm!500023 () Bool)

(declare-fun call!500030 () List!64416)

(declare-fun call!500026 () List!64416)

(assert (=> bm!500023 (= call!500030 call!500026)))

(declare-fun bm!500024 () Bool)

(declare-fun c!1090369 () Bool)

(assert (=> bm!500024 (= call!500031 (derivationStepZipperDown!1289 (ite c!1090369 (regOne!32591 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))) (regOne!32590 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292))))))) (ite c!1090369 (ite (or c!1089937 c!1089939) lt!2326418 (Context!10847 call!499761)) (Context!10847 call!500026)) (h!70741 s!2326)))))

(declare-fun c!1090367 () Bool)

(declare-fun b!6075185 () Bool)

(assert (=> b!6075185 (= c!1090367 ((_ is Star!16039) (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))))))

(declare-fun e!3707595 () (InoxSet Context!10846))

(assert (=> b!6075185 (= e!3707595 e!3707593)))

(declare-fun b!6075186 () Bool)

(declare-fun e!3707594 () (InoxSet Context!10846))

(assert (=> b!6075186 (= e!3707594 e!3707595)))

(declare-fun c!1090368 () Bool)

(assert (=> b!6075186 (= c!1090368 ((_ is Concat!24884) (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))))))

(declare-fun e!3707597 () Bool)

(declare-fun b!6075187 () Bool)

(assert (=> b!6075187 (= e!3707597 (nullable!6034 (regOne!32590 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292))))))))))

(declare-fun bm!500025 () Bool)

(declare-fun c!1090371 () Bool)

(assert (=> bm!500025 (= call!500026 ($colon$colon!1918 (exprs!5923 (ite (or c!1089937 c!1089939) lt!2326418 (Context!10847 call!499761))) (ite (or c!1090371 c!1090368) (regTwo!32590 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))) (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292))))))))))

(declare-fun b!6075188 () Bool)

(declare-fun e!3707596 () (InoxSet Context!10846))

(assert (=> b!6075188 (= e!3707596 (store ((as const (Array Context!10846 Bool)) false) (ite (or c!1089937 c!1089939) lt!2326418 (Context!10847 call!499761)) true))))

(declare-fun b!6075189 () Bool)

(assert (=> b!6075189 (= c!1090371 e!3707597)))

(declare-fun res!2524358 () Bool)

(assert (=> b!6075189 (=> (not res!2524358) (not e!3707597))))

(assert (=> b!6075189 (= res!2524358 ((_ is Concat!24884) (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))))))

(assert (=> b!6075189 (= e!3707598 e!3707594)))

(declare-fun bm!500021 () Bool)

(assert (=> bm!500021 (= call!500028 (derivationStepZipperDown!1289 (ite c!1090369 (regTwo!32591 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))) (ite c!1090371 (regTwo!32590 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))) (ite c!1090368 (regOne!32590 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))) (reg!16368 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292))))))))) (ite (or c!1090369 c!1090371) (ite (or c!1089937 c!1089939) lt!2326418 (Context!10847 call!499761)) (Context!10847 call!500030)) (h!70741 s!2326)))))

(declare-fun d!1904739 () Bool)

(declare-fun c!1090370 () Bool)

(assert (=> d!1904739 (= c!1090370 (and ((_ is ElementMatch!16039) (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))) (= (c!1089857 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))) (h!70741 s!2326))))))

(assert (=> d!1904739 (= (derivationStepZipperDown!1289 (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292))))) (ite (or c!1089937 c!1089939) lt!2326418 (Context!10847 call!499761)) (h!70741 s!2326)) e!3707596)))

(declare-fun b!6075190 () Bool)

(assert (=> b!6075190 (= e!3707595 call!500027)))

(declare-fun bm!500026 () Bool)

(assert (=> bm!500026 (= call!500027 call!500029)))

(declare-fun b!6075191 () Bool)

(assert (=> b!6075191 (= e!3707596 e!3707598)))

(assert (=> b!6075191 (= c!1090369 ((_ is Union!16039) (ite c!1089937 (regTwo!32591 (regTwo!32590 r!7292)) (ite c!1089939 (regTwo!32590 (regTwo!32590 r!7292)) (ite c!1089936 (regOne!32590 (regTwo!32590 r!7292)) (reg!16368 (regTwo!32590 r!7292)))))))))

(declare-fun b!6075192 () Bool)

(assert (=> b!6075192 (= e!3707594 ((_ map or) call!500031 call!500029))))

(assert (= (and d!1904739 c!1090370) b!6075188))

(assert (= (and d!1904739 (not c!1090370)) b!6075191))

(assert (= (and b!6075191 c!1090369) b!6075184))

(assert (= (and b!6075191 (not c!1090369)) b!6075189))

(assert (= (and b!6075189 res!2524358) b!6075187))

(assert (= (and b!6075189 c!1090371) b!6075192))

(assert (= (and b!6075189 (not c!1090371)) b!6075186))

(assert (= (and b!6075186 c!1090368) b!6075190))

(assert (= (and b!6075186 (not c!1090368)) b!6075185))

(assert (= (and b!6075185 c!1090367) b!6075183))

(assert (= (and b!6075185 (not c!1090367)) b!6075182))

(assert (= (or b!6075190 b!6075183) bm!500023))

(assert (= (or b!6075190 b!6075183) bm!500026))

(assert (= (or b!6075192 bm!500023) bm!500025))

(assert (= (or b!6075192 bm!500026) bm!500022))

(assert (= (or b!6075184 bm!500022) bm!500021))

(assert (= (or b!6075184 b!6075192) bm!500024))

(declare-fun m!6935318 () Bool)

(assert (=> b!6075187 m!6935318))

(declare-fun m!6935320 () Bool)

(assert (=> bm!500021 m!6935320))

(declare-fun m!6935322 () Bool)

(assert (=> bm!500025 m!6935322))

(declare-fun m!6935324 () Bool)

(assert (=> b!6075188 m!6935324))

(declare-fun m!6935326 () Bool)

(assert (=> bm!500024 m!6935326))

(assert (=> bm!499752 d!1904739))

(declare-fun d!1904747 () Bool)

(assert (=> d!1904747 (= (Exists!3109 lambda!331057) (choose!45249 lambda!331057))))

(declare-fun bs!1504370 () Bool)

(assert (= bs!1504370 d!1904747))

(declare-fun m!6935328 () Bool)

(assert (=> bs!1504370 m!6935328))

(assert (=> d!1904285 d!1904747))

(declare-fun d!1904749 () Bool)

(assert (=> d!1904749 (= (Exists!3109 lambda!331058) (choose!45249 lambda!331058))))

(declare-fun bs!1504372 () Bool)

(assert (= bs!1504372 d!1904749))

(declare-fun m!6935330 () Bool)

(assert (=> bs!1504372 m!6935330))

(assert (=> d!1904285 d!1904749))

(declare-fun bs!1504389 () Bool)

(declare-fun d!1904751 () Bool)

(assert (= bs!1504389 (and d!1904751 b!6073448)))

(declare-fun lambda!331149 () Int)

(assert (=> bs!1504389 (not (= lambda!331149 lambda!330982))))

(declare-fun bs!1504390 () Bool)

(assert (= bs!1504390 (and d!1904751 d!1904285)))

(assert (=> bs!1504390 (= lambda!331149 lambda!331057)))

(declare-fun bs!1504391 () Bool)

(assert (= bs!1504391 (and d!1904751 b!6074693)))

(assert (=> bs!1504391 (not (= lambda!331149 lambda!331118))))

(declare-fun bs!1504392 () Bool)

(assert (= bs!1504392 (and d!1904751 d!1904283)))

(assert (=> bs!1504392 (= lambda!331149 lambda!331052)))

(declare-fun bs!1504393 () Bool)

(assert (= bs!1504393 (and d!1904751 b!6074897)))

(assert (=> bs!1504393 (not (= lambda!331149 lambda!331126))))

(assert (=> bs!1504390 (not (= lambda!331149 lambda!331058))))

(declare-fun bs!1504394 () Bool)

(assert (= bs!1504394 (and d!1904751 b!6074148)))

(assert (=> bs!1504394 (not (= lambda!331149 lambda!331067))))

(declare-fun bs!1504395 () Bool)

(assert (= bs!1504395 (and d!1904751 b!6074900)))

(assert (=> bs!1504395 (not (= lambda!331149 lambda!331127))))

(declare-fun bs!1504396 () Bool)

(assert (= bs!1504396 (and d!1904751 b!6074690)))

(assert (=> bs!1504396 (not (= lambda!331149 lambda!331114))))

(declare-fun bs!1504397 () Bool)

(assert (= bs!1504397 (and d!1904751 b!6074145)))

(assert (=> bs!1504397 (not (= lambda!331149 lambda!331066))))

(declare-fun bs!1504398 () Bool)

(assert (= bs!1504398 (and d!1904751 d!1904659)))

(assert (=> bs!1504398 (= lambda!331149 lambda!331130)))

(assert (=> bs!1504389 (= lambda!331149 lambda!330981)))

(assert (=> d!1904751 true))

(assert (=> d!1904751 true))

(assert (=> d!1904751 true))

(declare-fun lambda!331150 () Int)

(assert (=> bs!1504389 (= lambda!331150 lambda!330982)))

(assert (=> bs!1504390 (not (= lambda!331150 lambda!331057))))

(assert (=> bs!1504391 (= (and (= (regOne!32590 r!7292) (regOne!32590 (regTwo!32591 r!7292))) (= (regTwo!32590 r!7292) (regTwo!32590 (regTwo!32591 r!7292)))) (= lambda!331150 lambda!331118))))

(assert (=> bs!1504392 (not (= lambda!331150 lambda!331052))))

(assert (=> bs!1504393 (not (= lambda!331150 lambda!331126))))

(assert (=> bs!1504390 (= lambda!331150 lambda!331058)))

(assert (=> bs!1504394 (= lambda!331150 lambda!331067)))

(assert (=> bs!1504395 (= (and (= (regOne!32590 r!7292) (regOne!32590 (regOne!32591 r!7292))) (= (regTwo!32590 r!7292) (regTwo!32590 (regOne!32591 r!7292)))) (= lambda!331150 lambda!331127))))

(assert (=> bs!1504396 (not (= lambda!331150 lambda!331114))))

(assert (=> bs!1504398 (not (= lambda!331150 lambda!331130))))

(assert (=> bs!1504389 (not (= lambda!331150 lambda!330981))))

(declare-fun bs!1504400 () Bool)

(assert (= bs!1504400 d!1904751))

(assert (=> bs!1504400 (not (= lambda!331150 lambda!331149))))

(assert (=> bs!1504397 (not (= lambda!331150 lambda!331066))))

(assert (=> d!1904751 true))

(assert (=> d!1904751 true))

(assert (=> d!1904751 true))

(assert (=> d!1904751 (= (Exists!3109 lambda!331149) (Exists!3109 lambda!331150))))

(assert (=> d!1904751 true))

(declare-fun _$90!1740 () Unit!157349)

(assert (=> d!1904751 (= (choose!45251 (regOne!32590 r!7292) (regTwo!32590 r!7292) s!2326) _$90!1740)))

(declare-fun m!6935360 () Bool)

(assert (=> bs!1504400 m!6935360))

(declare-fun m!6935362 () Bool)

(assert (=> bs!1504400 m!6935362))

(assert (=> d!1904285 d!1904751))

(assert (=> d!1904285 d!1904653))

(declare-fun e!3707632 () Bool)

(assert (=> b!6074210 (= tp!1693113 e!3707632)))

(declare-fun b!6075250 () Bool)

(declare-fun tp!1693196 () Bool)

(assert (=> b!6075250 (= e!3707632 tp!1693196)))

(declare-fun b!6075251 () Bool)

(declare-fun tp!1693199 () Bool)

(declare-fun tp!1693200 () Bool)

(assert (=> b!6075251 (= e!3707632 (and tp!1693199 tp!1693200))))

(declare-fun b!6075248 () Bool)

(assert (=> b!6075248 (= e!3707632 tp_is_empty!41331)))

(declare-fun b!6075249 () Bool)

(declare-fun tp!1693197 () Bool)

(declare-fun tp!1693198 () Bool)

(assert (=> b!6075249 (= e!3707632 (and tp!1693197 tp!1693198))))

(assert (= (and b!6074210 ((_ is ElementMatch!16039) (h!70740 (exprs!5923 (h!70742 zl!343))))) b!6075248))

(assert (= (and b!6074210 ((_ is Concat!24884) (h!70740 (exprs!5923 (h!70742 zl!343))))) b!6075249))

(assert (= (and b!6074210 ((_ is Star!16039) (h!70740 (exprs!5923 (h!70742 zl!343))))) b!6075250))

(assert (= (and b!6074210 ((_ is Union!16039) (h!70740 (exprs!5923 (h!70742 zl!343))))) b!6075251))

(declare-fun b!6075252 () Bool)

(declare-fun e!3707633 () Bool)

(declare-fun tp!1693201 () Bool)

(declare-fun tp!1693202 () Bool)

(assert (=> b!6075252 (= e!3707633 (and tp!1693201 tp!1693202))))

(assert (=> b!6074210 (= tp!1693114 e!3707633)))

(assert (= (and b!6074210 ((_ is Cons!64292) (t!377857 (exprs!5923 (h!70742 zl!343))))) b!6075252))

(declare-fun b!6075256 () Bool)

(declare-fun e!3707636 () Bool)

(declare-fun tp!1693203 () Bool)

(assert (=> b!6075256 (= e!3707636 tp!1693203)))

(declare-fun e!3707635 () Bool)

(declare-fun tp!1693204 () Bool)

(declare-fun b!6075255 () Bool)

(assert (=> b!6075255 (= e!3707635 (and (inv!83344 (h!70742 (t!377859 (t!377859 zl!343)))) e!3707636 tp!1693204))))

(assert (=> b!6074223 (= tp!1693128 e!3707635)))

(assert (= b!6075255 b!6075256))

(assert (= (and b!6074223 ((_ is Cons!64294) (t!377859 (t!377859 zl!343)))) b!6075255))

(declare-fun m!6935376 () Bool)

(assert (=> b!6075255 m!6935376))

(declare-fun b!6075257 () Bool)

(declare-fun e!3707637 () Bool)

(declare-fun tp!1693205 () Bool)

(assert (=> b!6075257 (= e!3707637 (and tp_is_empty!41331 tp!1693205))))

(assert (=> b!6074205 (= tp!1693108 e!3707637)))

(assert (= (and b!6074205 ((_ is Cons!64293) (t!377858 (t!377858 s!2326)))) b!6075257))

(declare-fun b!6075258 () Bool)

(declare-fun e!3707638 () Bool)

(declare-fun tp!1693206 () Bool)

(declare-fun tp!1693207 () Bool)

(assert (=> b!6075258 (= e!3707638 (and tp!1693206 tp!1693207))))

(assert (=> b!6074224 (= tp!1693127 e!3707638)))

(assert (= (and b!6074224 ((_ is Cons!64292) (exprs!5923 (h!70742 (t!377859 zl!343))))) b!6075258))

(declare-fun e!3707639 () Bool)

(assert (=> b!6074211 (= tp!1693115 e!3707639)))

(declare-fun b!6075261 () Bool)

(declare-fun tp!1693208 () Bool)

(assert (=> b!6075261 (= e!3707639 tp!1693208)))

(declare-fun b!6075262 () Bool)

(declare-fun tp!1693211 () Bool)

(declare-fun tp!1693212 () Bool)

(assert (=> b!6075262 (= e!3707639 (and tp!1693211 tp!1693212))))

(declare-fun b!6075259 () Bool)

(assert (=> b!6075259 (= e!3707639 tp_is_empty!41331)))

(declare-fun b!6075260 () Bool)

(declare-fun tp!1693209 () Bool)

(declare-fun tp!1693210 () Bool)

(assert (=> b!6075260 (= e!3707639 (and tp!1693209 tp!1693210))))

(assert (= (and b!6074211 ((_ is ElementMatch!16039) (h!70740 (exprs!5923 setElem!41058)))) b!6075259))

(assert (= (and b!6074211 ((_ is Concat!24884) (h!70740 (exprs!5923 setElem!41058)))) b!6075260))

(assert (= (and b!6074211 ((_ is Star!16039) (h!70740 (exprs!5923 setElem!41058)))) b!6075261))

(assert (= (and b!6074211 ((_ is Union!16039) (h!70740 (exprs!5923 setElem!41058)))) b!6075262))

(declare-fun b!6075263 () Bool)

(declare-fun e!3707640 () Bool)

(declare-fun tp!1693213 () Bool)

(declare-fun tp!1693214 () Bool)

(assert (=> b!6075263 (= e!3707640 (and tp!1693213 tp!1693214))))

(assert (=> b!6074211 (= tp!1693116 e!3707640)))

(assert (= (and b!6074211 ((_ is Cons!64292) (t!377857 (exprs!5923 setElem!41058)))) b!6075263))

(declare-fun e!3707641 () Bool)

(assert (=> b!6074253 (= tp!1693159 e!3707641)))

(declare-fun b!6075266 () Bool)

(declare-fun tp!1693215 () Bool)

(assert (=> b!6075266 (= e!3707641 tp!1693215)))

(declare-fun b!6075267 () Bool)

(declare-fun tp!1693218 () Bool)

(declare-fun tp!1693219 () Bool)

(assert (=> b!6075267 (= e!3707641 (and tp!1693218 tp!1693219))))

(declare-fun b!6075264 () Bool)

(assert (=> b!6075264 (= e!3707641 tp_is_empty!41331)))

(declare-fun b!6075265 () Bool)

(declare-fun tp!1693216 () Bool)

(declare-fun tp!1693217 () Bool)

(assert (=> b!6075265 (= e!3707641 (and tp!1693216 tp!1693217))))

(assert (= (and b!6074253 ((_ is ElementMatch!16039) (reg!16368 (reg!16368 r!7292)))) b!6075264))

(assert (= (and b!6074253 ((_ is Concat!24884) (reg!16368 (reg!16368 r!7292)))) b!6075265))

(assert (= (and b!6074253 ((_ is Star!16039) (reg!16368 (reg!16368 r!7292)))) b!6075266))

(assert (= (and b!6074253 ((_ is Union!16039) (reg!16368 (reg!16368 r!7292)))) b!6075267))

(declare-fun e!3707642 () Bool)

(assert (=> b!6074244 (= tp!1693150 e!3707642)))

(declare-fun b!6075270 () Bool)

(declare-fun tp!1693220 () Bool)

(assert (=> b!6075270 (= e!3707642 tp!1693220)))

(declare-fun b!6075271 () Bool)

(declare-fun tp!1693223 () Bool)

(declare-fun tp!1693224 () Bool)

(assert (=> b!6075271 (= e!3707642 (and tp!1693223 tp!1693224))))

(declare-fun b!6075268 () Bool)

(assert (=> b!6075268 (= e!3707642 tp_is_empty!41331)))

(declare-fun b!6075269 () Bool)

(declare-fun tp!1693221 () Bool)

(declare-fun tp!1693222 () Bool)

(assert (=> b!6075269 (= e!3707642 (and tp!1693221 tp!1693222))))

(assert (= (and b!6074244 ((_ is ElementMatch!16039) (regOne!32590 (regOne!32590 r!7292)))) b!6075268))

(assert (= (and b!6074244 ((_ is Concat!24884) (regOne!32590 (regOne!32590 r!7292)))) b!6075269))

(assert (= (and b!6074244 ((_ is Star!16039) (regOne!32590 (regOne!32590 r!7292)))) b!6075270))

(assert (= (and b!6074244 ((_ is Union!16039) (regOne!32590 (regOne!32590 r!7292)))) b!6075271))

(declare-fun e!3707643 () Bool)

(assert (=> b!6074244 (= tp!1693151 e!3707643)))

(declare-fun b!6075274 () Bool)

(declare-fun tp!1693225 () Bool)

(assert (=> b!6075274 (= e!3707643 tp!1693225)))

(declare-fun b!6075275 () Bool)

(declare-fun tp!1693228 () Bool)

(declare-fun tp!1693229 () Bool)

(assert (=> b!6075275 (= e!3707643 (and tp!1693228 tp!1693229))))

(declare-fun b!6075272 () Bool)

(assert (=> b!6075272 (= e!3707643 tp_is_empty!41331)))

(declare-fun b!6075273 () Bool)

(declare-fun tp!1693226 () Bool)

(declare-fun tp!1693227 () Bool)

(assert (=> b!6075273 (= e!3707643 (and tp!1693226 tp!1693227))))

(assert (= (and b!6074244 ((_ is ElementMatch!16039) (regTwo!32590 (regOne!32590 r!7292)))) b!6075272))

(assert (= (and b!6074244 ((_ is Concat!24884) (regTwo!32590 (regOne!32590 r!7292)))) b!6075273))

(assert (= (and b!6074244 ((_ is Star!16039) (regTwo!32590 (regOne!32590 r!7292)))) b!6075274))

(assert (= (and b!6074244 ((_ is Union!16039) (regTwo!32590 (regOne!32590 r!7292)))) b!6075275))

(declare-fun e!3707650 () Bool)

(assert (=> b!6074245 (= tp!1693149 e!3707650)))

(declare-fun b!6075289 () Bool)

(declare-fun tp!1693230 () Bool)

(assert (=> b!6075289 (= e!3707650 tp!1693230)))

(declare-fun b!6075290 () Bool)

(declare-fun tp!1693233 () Bool)

(declare-fun tp!1693234 () Bool)

(assert (=> b!6075290 (= e!3707650 (and tp!1693233 tp!1693234))))

(declare-fun b!6075287 () Bool)

(assert (=> b!6075287 (= e!3707650 tp_is_empty!41331)))

(declare-fun b!6075288 () Bool)

(declare-fun tp!1693231 () Bool)

(declare-fun tp!1693232 () Bool)

(assert (=> b!6075288 (= e!3707650 (and tp!1693231 tp!1693232))))

(assert (= (and b!6074245 ((_ is ElementMatch!16039) (reg!16368 (regOne!32590 r!7292)))) b!6075287))

(assert (= (and b!6074245 ((_ is Concat!24884) (reg!16368 (regOne!32590 r!7292)))) b!6075288))

(assert (= (and b!6074245 ((_ is Star!16039) (reg!16368 (regOne!32590 r!7292)))) b!6075289))

(assert (= (and b!6074245 ((_ is Union!16039) (reg!16368 (regOne!32590 r!7292)))) b!6075290))

(declare-fun e!3707651 () Bool)

(assert (=> b!6074254 (= tp!1693162 e!3707651)))

(declare-fun b!6075293 () Bool)

(declare-fun tp!1693235 () Bool)

(assert (=> b!6075293 (= e!3707651 tp!1693235)))

(declare-fun b!6075294 () Bool)

(declare-fun tp!1693238 () Bool)

(declare-fun tp!1693239 () Bool)

(assert (=> b!6075294 (= e!3707651 (and tp!1693238 tp!1693239))))

(declare-fun b!6075291 () Bool)

(assert (=> b!6075291 (= e!3707651 tp_is_empty!41331)))

(declare-fun b!6075292 () Bool)

(declare-fun tp!1693236 () Bool)

(declare-fun tp!1693237 () Bool)

(assert (=> b!6075292 (= e!3707651 (and tp!1693236 tp!1693237))))

(assert (= (and b!6074254 ((_ is ElementMatch!16039) (regOne!32591 (reg!16368 r!7292)))) b!6075291))

(assert (= (and b!6074254 ((_ is Concat!24884) (regOne!32591 (reg!16368 r!7292)))) b!6075292))

(assert (= (and b!6074254 ((_ is Star!16039) (regOne!32591 (reg!16368 r!7292)))) b!6075293))

(assert (= (and b!6074254 ((_ is Union!16039) (regOne!32591 (reg!16368 r!7292)))) b!6075294))

(declare-fun e!3707652 () Bool)

(assert (=> b!6074254 (= tp!1693163 e!3707652)))

(declare-fun b!6075297 () Bool)

(declare-fun tp!1693240 () Bool)

(assert (=> b!6075297 (= e!3707652 tp!1693240)))

(declare-fun b!6075298 () Bool)

(declare-fun tp!1693243 () Bool)

(declare-fun tp!1693244 () Bool)

(assert (=> b!6075298 (= e!3707652 (and tp!1693243 tp!1693244))))

(declare-fun b!6075295 () Bool)

(assert (=> b!6075295 (= e!3707652 tp_is_empty!41331)))

(declare-fun b!6075296 () Bool)

(declare-fun tp!1693241 () Bool)

(declare-fun tp!1693242 () Bool)

(assert (=> b!6075296 (= e!3707652 (and tp!1693241 tp!1693242))))

(assert (= (and b!6074254 ((_ is ElementMatch!16039) (regTwo!32591 (reg!16368 r!7292)))) b!6075295))

(assert (= (and b!6074254 ((_ is Concat!24884) (regTwo!32591 (reg!16368 r!7292)))) b!6075296))

(assert (= (and b!6074254 ((_ is Star!16039) (regTwo!32591 (reg!16368 r!7292)))) b!6075297))

(assert (= (and b!6074254 ((_ is Union!16039) (regTwo!32591 (reg!16368 r!7292)))) b!6075298))

(declare-fun e!3707653 () Bool)

(assert (=> b!6074236 (= tp!1693140 e!3707653)))

(declare-fun b!6075301 () Bool)

(declare-fun tp!1693245 () Bool)

(assert (=> b!6075301 (= e!3707653 tp!1693245)))

(declare-fun b!6075302 () Bool)

(declare-fun tp!1693248 () Bool)

(declare-fun tp!1693249 () Bool)

(assert (=> b!6075302 (= e!3707653 (and tp!1693248 tp!1693249))))

(declare-fun b!6075299 () Bool)

(assert (=> b!6075299 (= e!3707653 tp_is_empty!41331)))

(declare-fun b!6075300 () Bool)

(declare-fun tp!1693246 () Bool)

(declare-fun tp!1693247 () Bool)

(assert (=> b!6075300 (= e!3707653 (and tp!1693246 tp!1693247))))

(assert (= (and b!6074236 ((_ is ElementMatch!16039) (regOne!32590 (regOne!32591 r!7292)))) b!6075299))

(assert (= (and b!6074236 ((_ is Concat!24884) (regOne!32590 (regOne!32591 r!7292)))) b!6075300))

(assert (= (and b!6074236 ((_ is Star!16039) (regOne!32590 (regOne!32591 r!7292)))) b!6075301))

(assert (= (and b!6074236 ((_ is Union!16039) (regOne!32590 (regOne!32591 r!7292)))) b!6075302))

(declare-fun e!3707654 () Bool)

(assert (=> b!6074236 (= tp!1693141 e!3707654)))

(declare-fun b!6075305 () Bool)

(declare-fun tp!1693250 () Bool)

(assert (=> b!6075305 (= e!3707654 tp!1693250)))

(declare-fun b!6075306 () Bool)

(declare-fun tp!1693253 () Bool)

(declare-fun tp!1693254 () Bool)

(assert (=> b!6075306 (= e!3707654 (and tp!1693253 tp!1693254))))

(declare-fun b!6075303 () Bool)

(assert (=> b!6075303 (= e!3707654 tp_is_empty!41331)))

(declare-fun b!6075304 () Bool)

(declare-fun tp!1693251 () Bool)

(declare-fun tp!1693252 () Bool)

(assert (=> b!6075304 (= e!3707654 (and tp!1693251 tp!1693252))))

(assert (= (and b!6074236 ((_ is ElementMatch!16039) (regTwo!32590 (regOne!32591 r!7292)))) b!6075303))

(assert (= (and b!6074236 ((_ is Concat!24884) (regTwo!32590 (regOne!32591 r!7292)))) b!6075304))

(assert (= (and b!6074236 ((_ is Star!16039) (regTwo!32590 (regOne!32591 r!7292)))) b!6075305))

(assert (= (and b!6074236 ((_ is Union!16039) (regTwo!32590 (regOne!32591 r!7292)))) b!6075306))

(declare-fun e!3707655 () Bool)

(assert (=> b!6074237 (= tp!1693139 e!3707655)))

(declare-fun b!6075309 () Bool)

(declare-fun tp!1693255 () Bool)

(assert (=> b!6075309 (= e!3707655 tp!1693255)))

(declare-fun b!6075310 () Bool)

(declare-fun tp!1693258 () Bool)

(declare-fun tp!1693259 () Bool)

(assert (=> b!6075310 (= e!3707655 (and tp!1693258 tp!1693259))))

(declare-fun b!6075307 () Bool)

(assert (=> b!6075307 (= e!3707655 tp_is_empty!41331)))

(declare-fun b!6075308 () Bool)

(declare-fun tp!1693256 () Bool)

(declare-fun tp!1693257 () Bool)

(assert (=> b!6075308 (= e!3707655 (and tp!1693256 tp!1693257))))

(assert (= (and b!6074237 ((_ is ElementMatch!16039) (reg!16368 (regOne!32591 r!7292)))) b!6075307))

(assert (= (and b!6074237 ((_ is Concat!24884) (reg!16368 (regOne!32591 r!7292)))) b!6075308))

(assert (= (and b!6074237 ((_ is Star!16039) (reg!16368 (regOne!32591 r!7292)))) b!6075309))

(assert (= (and b!6074237 ((_ is Union!16039) (reg!16368 (regOne!32591 r!7292)))) b!6075310))

(declare-fun condSetEmpty!41075 () Bool)

(assert (=> setNonEmpty!41064 (= condSetEmpty!41075 (= setRest!41064 ((as const (Array Context!10846 Bool)) false)))))

(declare-fun setRes!41075 () Bool)

(assert (=> setNonEmpty!41064 (= tp!1693122 setRes!41075)))

(declare-fun setIsEmpty!41075 () Bool)

(assert (=> setIsEmpty!41075 setRes!41075))

(declare-fun tp!1693261 () Bool)

(declare-fun setNonEmpty!41075 () Bool)

(declare-fun setElem!41075 () Context!10846)

(declare-fun e!3707656 () Bool)

(assert (=> setNonEmpty!41075 (= setRes!41075 (and tp!1693261 (inv!83344 setElem!41075) e!3707656))))

(declare-fun setRest!41075 () (InoxSet Context!10846))

(assert (=> setNonEmpty!41075 (= setRest!41064 ((_ map or) (store ((as const (Array Context!10846 Bool)) false) setElem!41075 true) setRest!41075))))

(declare-fun b!6075311 () Bool)

(declare-fun tp!1693260 () Bool)

(assert (=> b!6075311 (= e!3707656 tp!1693260)))

(assert (= (and setNonEmpty!41064 condSetEmpty!41075) setIsEmpty!41075))

(assert (= (and setNonEmpty!41064 (not condSetEmpty!41075)) setNonEmpty!41075))

(assert (= setNonEmpty!41075 b!6075311))

(declare-fun m!6935396 () Bool)

(assert (=> setNonEmpty!41075 m!6935396))

(declare-fun e!3707657 () Bool)

(assert (=> b!6074246 (= tp!1693152 e!3707657)))

(declare-fun b!6075314 () Bool)

(declare-fun tp!1693262 () Bool)

(assert (=> b!6075314 (= e!3707657 tp!1693262)))

(declare-fun b!6075315 () Bool)

(declare-fun tp!1693265 () Bool)

(declare-fun tp!1693266 () Bool)

(assert (=> b!6075315 (= e!3707657 (and tp!1693265 tp!1693266))))

(declare-fun b!6075312 () Bool)

(assert (=> b!6075312 (= e!3707657 tp_is_empty!41331)))

(declare-fun b!6075313 () Bool)

(declare-fun tp!1693263 () Bool)

(declare-fun tp!1693264 () Bool)

(assert (=> b!6075313 (= e!3707657 (and tp!1693263 tp!1693264))))

(assert (= (and b!6074246 ((_ is ElementMatch!16039) (regOne!32591 (regOne!32590 r!7292)))) b!6075312))

(assert (= (and b!6074246 ((_ is Concat!24884) (regOne!32591 (regOne!32590 r!7292)))) b!6075313))

(assert (= (and b!6074246 ((_ is Star!16039) (regOne!32591 (regOne!32590 r!7292)))) b!6075314))

(assert (= (and b!6074246 ((_ is Union!16039) (regOne!32591 (regOne!32590 r!7292)))) b!6075315))

(declare-fun e!3707658 () Bool)

(assert (=> b!6074246 (= tp!1693153 e!3707658)))

(declare-fun b!6075318 () Bool)

(declare-fun tp!1693267 () Bool)

(assert (=> b!6075318 (= e!3707658 tp!1693267)))

(declare-fun b!6075319 () Bool)

(declare-fun tp!1693270 () Bool)

(declare-fun tp!1693271 () Bool)

(assert (=> b!6075319 (= e!3707658 (and tp!1693270 tp!1693271))))

(declare-fun b!6075316 () Bool)

(assert (=> b!6075316 (= e!3707658 tp_is_empty!41331)))

(declare-fun b!6075317 () Bool)

(declare-fun tp!1693268 () Bool)

(declare-fun tp!1693269 () Bool)

(assert (=> b!6075317 (= e!3707658 (and tp!1693268 tp!1693269))))

(assert (= (and b!6074246 ((_ is ElementMatch!16039) (regTwo!32591 (regOne!32590 r!7292)))) b!6075316))

(assert (= (and b!6074246 ((_ is Concat!24884) (regTwo!32591 (regOne!32590 r!7292)))) b!6075317))

(assert (= (and b!6074246 ((_ is Star!16039) (regTwo!32591 (regOne!32590 r!7292)))) b!6075318))

(assert (= (and b!6074246 ((_ is Union!16039) (regTwo!32591 (regOne!32590 r!7292)))) b!6075319))

(declare-fun e!3707659 () Bool)

(assert (=> b!6074238 (= tp!1693142 e!3707659)))

(declare-fun b!6075322 () Bool)

(declare-fun tp!1693272 () Bool)

(assert (=> b!6075322 (= e!3707659 tp!1693272)))

(declare-fun b!6075323 () Bool)

(declare-fun tp!1693275 () Bool)

(declare-fun tp!1693276 () Bool)

(assert (=> b!6075323 (= e!3707659 (and tp!1693275 tp!1693276))))

(declare-fun b!6075320 () Bool)

(assert (=> b!6075320 (= e!3707659 tp_is_empty!41331)))

(declare-fun b!6075321 () Bool)

(declare-fun tp!1693273 () Bool)

(declare-fun tp!1693274 () Bool)

(assert (=> b!6075321 (= e!3707659 (and tp!1693273 tp!1693274))))

(assert (= (and b!6074238 ((_ is ElementMatch!16039) (regOne!32591 (regOne!32591 r!7292)))) b!6075320))

(assert (= (and b!6074238 ((_ is Concat!24884) (regOne!32591 (regOne!32591 r!7292)))) b!6075321))

(assert (= (and b!6074238 ((_ is Star!16039) (regOne!32591 (regOne!32591 r!7292)))) b!6075322))

(assert (= (and b!6074238 ((_ is Union!16039) (regOne!32591 (regOne!32591 r!7292)))) b!6075323))

(declare-fun e!3707661 () Bool)

(assert (=> b!6074238 (= tp!1693143 e!3707661)))

(declare-fun b!6075330 () Bool)

(declare-fun tp!1693282 () Bool)

(assert (=> b!6075330 (= e!3707661 tp!1693282)))

(declare-fun b!6075331 () Bool)

(declare-fun tp!1693285 () Bool)

(declare-fun tp!1693286 () Bool)

(assert (=> b!6075331 (= e!3707661 (and tp!1693285 tp!1693286))))

(declare-fun b!6075328 () Bool)

(assert (=> b!6075328 (= e!3707661 tp_is_empty!41331)))

(declare-fun b!6075329 () Bool)

(declare-fun tp!1693283 () Bool)

(declare-fun tp!1693284 () Bool)

(assert (=> b!6075329 (= e!3707661 (and tp!1693283 tp!1693284))))

(assert (= (and b!6074238 ((_ is ElementMatch!16039) (regTwo!32591 (regOne!32591 r!7292)))) b!6075328))

(assert (= (and b!6074238 ((_ is Concat!24884) (regTwo!32591 (regOne!32591 r!7292)))) b!6075329))

(assert (= (and b!6074238 ((_ is Star!16039) (regTwo!32591 (regOne!32591 r!7292)))) b!6075330))

(assert (= (and b!6074238 ((_ is Union!16039) (regTwo!32591 (regOne!32591 r!7292)))) b!6075331))

(declare-fun b!6075336 () Bool)

(declare-fun e!3707663 () Bool)

(declare-fun tp!1693292 () Bool)

(declare-fun tp!1693293 () Bool)

(assert (=> b!6075336 (= e!3707663 (and tp!1693292 tp!1693293))))

(assert (=> b!6074216 (= tp!1693121 e!3707663)))

(assert (= (and b!6074216 ((_ is Cons!64292) (exprs!5923 setElem!41064))) b!6075336))

(declare-fun e!3707664 () Bool)

(assert (=> b!6074252 (= tp!1693160 e!3707664)))

(declare-fun b!6075339 () Bool)

(declare-fun tp!1693294 () Bool)

(assert (=> b!6075339 (= e!3707664 tp!1693294)))

(declare-fun b!6075340 () Bool)

(declare-fun tp!1693297 () Bool)

(declare-fun tp!1693298 () Bool)

(assert (=> b!6075340 (= e!3707664 (and tp!1693297 tp!1693298))))

(declare-fun b!6075337 () Bool)

(assert (=> b!6075337 (= e!3707664 tp_is_empty!41331)))

(declare-fun b!6075338 () Bool)

(declare-fun tp!1693295 () Bool)

(declare-fun tp!1693296 () Bool)

(assert (=> b!6075338 (= e!3707664 (and tp!1693295 tp!1693296))))

(assert (= (and b!6074252 ((_ is ElementMatch!16039) (regOne!32590 (reg!16368 r!7292)))) b!6075337))

(assert (= (and b!6074252 ((_ is Concat!24884) (regOne!32590 (reg!16368 r!7292)))) b!6075338))

(assert (= (and b!6074252 ((_ is Star!16039) (regOne!32590 (reg!16368 r!7292)))) b!6075339))

(assert (= (and b!6074252 ((_ is Union!16039) (regOne!32590 (reg!16368 r!7292)))) b!6075340))

(declare-fun e!3707666 () Bool)

(assert (=> b!6074252 (= tp!1693161 e!3707666)))

(declare-fun b!6075347 () Bool)

(declare-fun tp!1693304 () Bool)

(assert (=> b!6075347 (= e!3707666 tp!1693304)))

(declare-fun b!6075348 () Bool)

(declare-fun tp!1693307 () Bool)

(declare-fun tp!1693308 () Bool)

(assert (=> b!6075348 (= e!3707666 (and tp!1693307 tp!1693308))))

(declare-fun b!6075345 () Bool)

(assert (=> b!6075345 (= e!3707666 tp_is_empty!41331)))

(declare-fun b!6075346 () Bool)

(declare-fun tp!1693305 () Bool)

(declare-fun tp!1693306 () Bool)

(assert (=> b!6075346 (= e!3707666 (and tp!1693305 tp!1693306))))

(assert (= (and b!6074252 ((_ is ElementMatch!16039) (regTwo!32590 (reg!16368 r!7292)))) b!6075345))

(assert (= (and b!6074252 ((_ is Concat!24884) (regTwo!32590 (reg!16368 r!7292)))) b!6075346))

(assert (= (and b!6074252 ((_ is Star!16039) (regTwo!32590 (reg!16368 r!7292)))) b!6075347))

(assert (= (and b!6074252 ((_ is Union!16039) (regTwo!32590 (reg!16368 r!7292)))) b!6075348))

(declare-fun e!3707668 () Bool)

(assert (=> b!6074248 (= tp!1693155 e!3707668)))

(declare-fun b!6075355 () Bool)

(declare-fun tp!1693314 () Bool)

(assert (=> b!6075355 (= e!3707668 tp!1693314)))

(declare-fun b!6075356 () Bool)

(declare-fun tp!1693317 () Bool)

(declare-fun tp!1693318 () Bool)

(assert (=> b!6075356 (= e!3707668 (and tp!1693317 tp!1693318))))

(declare-fun b!6075353 () Bool)

(assert (=> b!6075353 (= e!3707668 tp_is_empty!41331)))

(declare-fun b!6075354 () Bool)

(declare-fun tp!1693315 () Bool)

(declare-fun tp!1693316 () Bool)

(assert (=> b!6075354 (= e!3707668 (and tp!1693315 tp!1693316))))

(assert (= (and b!6074248 ((_ is ElementMatch!16039) (regOne!32590 (regTwo!32590 r!7292)))) b!6075353))

(assert (= (and b!6074248 ((_ is Concat!24884) (regOne!32590 (regTwo!32590 r!7292)))) b!6075354))

(assert (= (and b!6074248 ((_ is Star!16039) (regOne!32590 (regTwo!32590 r!7292)))) b!6075355))

(assert (= (and b!6074248 ((_ is Union!16039) (regOne!32590 (regTwo!32590 r!7292)))) b!6075356))

(declare-fun e!3707670 () Bool)

(assert (=> b!6074248 (= tp!1693156 e!3707670)))

(declare-fun b!6075362 () Bool)

(declare-fun tp!1693320 () Bool)

(assert (=> b!6075362 (= e!3707670 tp!1693320)))

(declare-fun b!6075364 () Bool)

(declare-fun tp!1693326 () Bool)

(declare-fun tp!1693328 () Bool)

(assert (=> b!6075364 (= e!3707670 (and tp!1693326 tp!1693328))))

(declare-fun b!6075358 () Bool)

(assert (=> b!6075358 (= e!3707670 tp_is_empty!41331)))

(declare-fun b!6075360 () Bool)

(declare-fun tp!1693322 () Bool)

(declare-fun tp!1693325 () Bool)

(assert (=> b!6075360 (= e!3707670 (and tp!1693322 tp!1693325))))

(assert (= (and b!6074248 ((_ is ElementMatch!16039) (regTwo!32590 (regTwo!32590 r!7292)))) b!6075358))

(assert (= (and b!6074248 ((_ is Concat!24884) (regTwo!32590 (regTwo!32590 r!7292)))) b!6075360))

(assert (= (and b!6074248 ((_ is Star!16039) (regTwo!32590 (regTwo!32590 r!7292)))) b!6075362))

(assert (= (and b!6074248 ((_ is Union!16039) (regTwo!32590 (regTwo!32590 r!7292)))) b!6075364))

(declare-fun e!3707672 () Bool)

(assert (=> b!6074249 (= tp!1693154 e!3707672)))

(declare-fun b!6075368 () Bool)

(declare-fun tp!1693330 () Bool)

(assert (=> b!6075368 (= e!3707672 tp!1693330)))

(declare-fun b!6075369 () Bool)

(declare-fun tp!1693333 () Bool)

(declare-fun tp!1693334 () Bool)

(assert (=> b!6075369 (= e!3707672 (and tp!1693333 tp!1693334))))

(declare-fun b!6075366 () Bool)

(assert (=> b!6075366 (= e!3707672 tp_is_empty!41331)))

(declare-fun b!6075367 () Bool)

(declare-fun tp!1693331 () Bool)

(declare-fun tp!1693332 () Bool)

(assert (=> b!6075367 (= e!3707672 (and tp!1693331 tp!1693332))))

(assert (= (and b!6074249 ((_ is ElementMatch!16039) (reg!16368 (regTwo!32590 r!7292)))) b!6075366))

(assert (= (and b!6074249 ((_ is Concat!24884) (reg!16368 (regTwo!32590 r!7292)))) b!6075367))

(assert (= (and b!6074249 ((_ is Star!16039) (reg!16368 (regTwo!32590 r!7292)))) b!6075368))

(assert (= (and b!6074249 ((_ is Union!16039) (reg!16368 (regTwo!32590 r!7292)))) b!6075369))

(declare-fun e!3707674 () Bool)

(assert (=> b!6074240 (= tp!1693145 e!3707674)))

(declare-fun b!6075376 () Bool)

(declare-fun tp!1693340 () Bool)

(assert (=> b!6075376 (= e!3707674 tp!1693340)))

(declare-fun b!6075377 () Bool)

(declare-fun tp!1693343 () Bool)

(declare-fun tp!1693344 () Bool)

(assert (=> b!6075377 (= e!3707674 (and tp!1693343 tp!1693344))))

(declare-fun b!6075374 () Bool)

(assert (=> b!6075374 (= e!3707674 tp_is_empty!41331)))

(declare-fun b!6075375 () Bool)

(declare-fun tp!1693341 () Bool)

(declare-fun tp!1693342 () Bool)

(assert (=> b!6075375 (= e!3707674 (and tp!1693341 tp!1693342))))

(assert (= (and b!6074240 ((_ is ElementMatch!16039) (regOne!32590 (regTwo!32591 r!7292)))) b!6075374))

(assert (= (and b!6074240 ((_ is Concat!24884) (regOne!32590 (regTwo!32591 r!7292)))) b!6075375))

(assert (= (and b!6074240 ((_ is Star!16039) (regOne!32590 (regTwo!32591 r!7292)))) b!6075376))

(assert (= (and b!6074240 ((_ is Union!16039) (regOne!32590 (regTwo!32591 r!7292)))) b!6075377))

(declare-fun e!3707676 () Bool)

(assert (=> b!6074240 (= tp!1693146 e!3707676)))

(declare-fun b!6075384 () Bool)

(declare-fun tp!1693350 () Bool)

(assert (=> b!6075384 (= e!3707676 tp!1693350)))

(declare-fun b!6075385 () Bool)

(declare-fun tp!1693353 () Bool)

(declare-fun tp!1693354 () Bool)

(assert (=> b!6075385 (= e!3707676 (and tp!1693353 tp!1693354))))

(declare-fun b!6075382 () Bool)

(assert (=> b!6075382 (= e!3707676 tp_is_empty!41331)))

(declare-fun b!6075383 () Bool)

(declare-fun tp!1693351 () Bool)

(declare-fun tp!1693352 () Bool)

(assert (=> b!6075383 (= e!3707676 (and tp!1693351 tp!1693352))))

(assert (= (and b!6074240 ((_ is ElementMatch!16039) (regTwo!32590 (regTwo!32591 r!7292)))) b!6075382))

(assert (= (and b!6074240 ((_ is Concat!24884) (regTwo!32590 (regTwo!32591 r!7292)))) b!6075383))

(assert (= (and b!6074240 ((_ is Star!16039) (regTwo!32590 (regTwo!32591 r!7292)))) b!6075384))

(assert (= (and b!6074240 ((_ is Union!16039) (regTwo!32590 (regTwo!32591 r!7292)))) b!6075385))

(declare-fun e!3707678 () Bool)

(assert (=> b!6074241 (= tp!1693144 e!3707678)))

(declare-fun b!6075392 () Bool)

(declare-fun tp!1693360 () Bool)

(assert (=> b!6075392 (= e!3707678 tp!1693360)))

(declare-fun b!6075393 () Bool)

(declare-fun tp!1693363 () Bool)

(declare-fun tp!1693364 () Bool)

(assert (=> b!6075393 (= e!3707678 (and tp!1693363 tp!1693364))))

(declare-fun b!6075390 () Bool)

(assert (=> b!6075390 (= e!3707678 tp_is_empty!41331)))

(declare-fun b!6075391 () Bool)

(declare-fun tp!1693361 () Bool)

(declare-fun tp!1693362 () Bool)

(assert (=> b!6075391 (= e!3707678 (and tp!1693361 tp!1693362))))

(assert (= (and b!6074241 ((_ is ElementMatch!16039) (reg!16368 (regTwo!32591 r!7292)))) b!6075390))

(assert (= (and b!6074241 ((_ is Concat!24884) (reg!16368 (regTwo!32591 r!7292)))) b!6075391))

(assert (= (and b!6074241 ((_ is Star!16039) (reg!16368 (regTwo!32591 r!7292)))) b!6075392))

(assert (= (and b!6074241 ((_ is Union!16039) (reg!16368 (regTwo!32591 r!7292)))) b!6075393))

(declare-fun e!3707680 () Bool)

(assert (=> b!6074250 (= tp!1693157 e!3707680)))

(declare-fun b!6075400 () Bool)

(declare-fun tp!1693370 () Bool)

(assert (=> b!6075400 (= e!3707680 tp!1693370)))

(declare-fun b!6075401 () Bool)

(declare-fun tp!1693373 () Bool)

(declare-fun tp!1693374 () Bool)

(assert (=> b!6075401 (= e!3707680 (and tp!1693373 tp!1693374))))

(declare-fun b!6075398 () Bool)

(assert (=> b!6075398 (= e!3707680 tp_is_empty!41331)))

(declare-fun b!6075399 () Bool)

(declare-fun tp!1693371 () Bool)

(declare-fun tp!1693372 () Bool)

(assert (=> b!6075399 (= e!3707680 (and tp!1693371 tp!1693372))))

(assert (= (and b!6074250 ((_ is ElementMatch!16039) (regOne!32591 (regTwo!32590 r!7292)))) b!6075398))

(assert (= (and b!6074250 ((_ is Concat!24884) (regOne!32591 (regTwo!32590 r!7292)))) b!6075399))

(assert (= (and b!6074250 ((_ is Star!16039) (regOne!32591 (regTwo!32590 r!7292)))) b!6075400))

(assert (= (and b!6074250 ((_ is Union!16039) (regOne!32591 (regTwo!32590 r!7292)))) b!6075401))

(declare-fun e!3707682 () Bool)

(assert (=> b!6074250 (= tp!1693158 e!3707682)))

(declare-fun b!6075408 () Bool)

(declare-fun tp!1693380 () Bool)

(assert (=> b!6075408 (= e!3707682 tp!1693380)))

(declare-fun b!6075409 () Bool)

(declare-fun tp!1693383 () Bool)

(declare-fun tp!1693384 () Bool)

(assert (=> b!6075409 (= e!3707682 (and tp!1693383 tp!1693384))))

(declare-fun b!6075406 () Bool)

(assert (=> b!6075406 (= e!3707682 tp_is_empty!41331)))

(declare-fun b!6075407 () Bool)

(declare-fun tp!1693381 () Bool)

(declare-fun tp!1693382 () Bool)

(assert (=> b!6075407 (= e!3707682 (and tp!1693381 tp!1693382))))

(assert (= (and b!6074250 ((_ is ElementMatch!16039) (regTwo!32591 (regTwo!32590 r!7292)))) b!6075406))

(assert (= (and b!6074250 ((_ is Concat!24884) (regTwo!32591 (regTwo!32590 r!7292)))) b!6075407))

(assert (= (and b!6074250 ((_ is Star!16039) (regTwo!32591 (regTwo!32590 r!7292)))) b!6075408))

(assert (= (and b!6074250 ((_ is Union!16039) (regTwo!32591 (regTwo!32590 r!7292)))) b!6075409))

(declare-fun e!3707684 () Bool)

(assert (=> b!6074242 (= tp!1693147 e!3707684)))

(declare-fun b!6075416 () Bool)

(declare-fun tp!1693390 () Bool)

(assert (=> b!6075416 (= e!3707684 tp!1693390)))

(declare-fun b!6075417 () Bool)

(declare-fun tp!1693393 () Bool)

(declare-fun tp!1693394 () Bool)

(assert (=> b!6075417 (= e!3707684 (and tp!1693393 tp!1693394))))

(declare-fun b!6075414 () Bool)

(assert (=> b!6075414 (= e!3707684 tp_is_empty!41331)))

(declare-fun b!6075415 () Bool)

(declare-fun tp!1693391 () Bool)

(declare-fun tp!1693392 () Bool)

(assert (=> b!6075415 (= e!3707684 (and tp!1693391 tp!1693392))))

(assert (= (and b!6074242 ((_ is ElementMatch!16039) (regOne!32591 (regTwo!32591 r!7292)))) b!6075414))

(assert (= (and b!6074242 ((_ is Concat!24884) (regOne!32591 (regTwo!32591 r!7292)))) b!6075415))

(assert (= (and b!6074242 ((_ is Star!16039) (regOne!32591 (regTwo!32591 r!7292)))) b!6075416))

(assert (= (and b!6074242 ((_ is Union!16039) (regOne!32591 (regTwo!32591 r!7292)))) b!6075417))

(declare-fun e!3707686 () Bool)

(assert (=> b!6074242 (= tp!1693148 e!3707686)))

(declare-fun b!6075424 () Bool)

(declare-fun tp!1693400 () Bool)

(assert (=> b!6075424 (= e!3707686 tp!1693400)))

(declare-fun b!6075425 () Bool)

(declare-fun tp!1693403 () Bool)

(declare-fun tp!1693404 () Bool)

(assert (=> b!6075425 (= e!3707686 (and tp!1693403 tp!1693404))))

(declare-fun b!6075422 () Bool)

(assert (=> b!6075422 (= e!3707686 tp_is_empty!41331)))

(declare-fun b!6075423 () Bool)

(declare-fun tp!1693401 () Bool)

(declare-fun tp!1693402 () Bool)

(assert (=> b!6075423 (= e!3707686 (and tp!1693401 tp!1693402))))

(assert (= (and b!6074242 ((_ is ElementMatch!16039) (regTwo!32591 (regTwo!32591 r!7292)))) b!6075422))

(assert (= (and b!6074242 ((_ is Concat!24884) (regTwo!32591 (regTwo!32591 r!7292)))) b!6075423))

(assert (= (and b!6074242 ((_ is Star!16039) (regTwo!32591 (regTwo!32591 r!7292)))) b!6075424))

(assert (= (and b!6074242 ((_ is Union!16039) (regTwo!32591 (regTwo!32591 r!7292)))) b!6075425))

(declare-fun b_lambda!231077 () Bool)

(assert (= b_lambda!231033 (or b!6073437 b_lambda!231077)))

(assert (=> d!1904417 d!1904311))

(declare-fun b_lambda!231079 () Bool)

(assert (= b_lambda!231035 (or b!6073437 b_lambda!231079)))

(assert (=> d!1904443 d!1904315))

(declare-fun b_lambda!231081 () Bool)

(assert (= b_lambda!231071 (or d!1904269 b_lambda!231081)))

(declare-fun bs!1504404 () Bool)

(declare-fun d!1904777 () Bool)

(assert (= bs!1504404 (and d!1904777 d!1904269)))

(assert (=> bs!1504404 (= (dynLambda!25284 lambda!331049 (h!70740 (exprs!5923 setElem!41058))) (validRegex!7775 (h!70740 (exprs!5923 setElem!41058))))))

(declare-fun m!6935400 () Bool)

(assert (=> bs!1504404 m!6935400))

(assert (=> b!6075163 d!1904777))

(declare-fun b_lambda!231083 () Bool)

(assert (= b_lambda!231065 (or d!1904305 b_lambda!231083)))

(declare-fun bs!1504405 () Bool)

(declare-fun d!1904779 () Bool)

(assert (= bs!1504405 (and d!1904779 d!1904305)))

(assert (=> bs!1504405 (= (dynLambda!25284 lambda!331070 (h!70740 (exprs!5923 (h!70742 zl!343)))) (validRegex!7775 (h!70740 (exprs!5923 (h!70742 zl!343)))))))

(declare-fun m!6935402 () Bool)

(assert (=> bs!1504405 m!6935402))

(assert (=> b!6075033 d!1904779))

(declare-fun b_lambda!231085 () Bool)

(assert (= b_lambda!231041 (or d!1904307 b_lambda!231085)))

(declare-fun bs!1504406 () Bool)

(declare-fun d!1904781 () Bool)

(assert (= bs!1504406 (and d!1904781 d!1904307)))

(assert (=> bs!1504406 (= (dynLambda!25284 lambda!331071 (h!70740 (exprs!5923 (h!70742 zl!343)))) (validRegex!7775 (h!70740 (exprs!5923 (h!70742 zl!343)))))))

(assert (=> bs!1504406 m!6935402))

(assert (=> b!6074512 d!1904781))

(declare-fun b_lambda!231087 () Bool)

(assert (= b_lambda!231027 (or b!6073437 b_lambda!231087)))

(assert (=> d!1904351 d!1904313))

(declare-fun b_lambda!231089 () Bool)

(assert (= b_lambda!231045 (or d!1904191 b_lambda!231089)))

(declare-fun bs!1504407 () Bool)

(declare-fun d!1904783 () Bool)

(assert (= bs!1504407 (and d!1904783 d!1904191)))

(assert (=> bs!1504407 (= (dynLambda!25284 lambda!331004 (h!70740 (unfocusZipperList!1460 zl!343))) (validRegex!7775 (h!70740 (unfocusZipperList!1460 zl!343))))))

(declare-fun m!6935406 () Bool)

(assert (=> bs!1504407 m!6935406))

(assert (=> b!6074595 d!1904783))

(declare-fun b_lambda!231091 () Bool)

(assert (= b_lambda!231031 (or b!6073960 b_lambda!231091)))

(declare-fun bs!1504408 () Bool)

(declare-fun d!1904785 () Bool)

(assert (= bs!1504408 (and d!1904785 b!6073960)))

(assert (=> bs!1504408 (= (dynLambda!25281 lambda!331044 (h!70742 (t!377859 lt!2326433))) (>= lt!2326530 (contextDepth!179 (h!70742 (t!377859 lt!2326433)))))))

(assert (=> bs!1504408 m!6934538))

(assert (=> b!6074439 d!1904785))

(declare-fun b_lambda!231093 () Bool)

(assert (= b_lambda!231063 (or d!1904201 b_lambda!231093)))

(declare-fun bs!1504409 () Bool)

(declare-fun d!1904787 () Bool)

(assert (= bs!1504409 (and d!1904787 d!1904201)))

(assert (=> bs!1504409 (= (dynLambda!25284 lambda!331013 (h!70740 lt!2326484)) (validRegex!7775 (h!70740 lt!2326484)))))

(declare-fun m!6935408 () Bool)

(assert (=> bs!1504409 m!6935408))

(assert (=> b!6075018 d!1904787))

(declare-fun b_lambda!231095 () Bool)

(assert (= b_lambda!231057 (or b!6073962 b_lambda!231095)))

(declare-fun bs!1504410 () Bool)

(declare-fun d!1904789 () Bool)

(assert (= bs!1504410 (and d!1904789 b!6073962)))

(assert (=> bs!1504410 (= (dynLambda!25281 lambda!331045 (h!70742 lt!2326433)) (>= lt!2326528 (contextDepth!179 (h!70742 lt!2326433))))))

(assert (=> bs!1504410 m!6934160))

(assert (=> b!6074885 d!1904789))

(declare-fun b_lambda!231097 () Bool)

(assert (= b_lambda!231069 (or b!6073970 b_lambda!231097)))

(declare-fun bs!1504411 () Bool)

(declare-fun d!1904791 () Bool)

(assert (= bs!1504411 (and d!1904791 b!6073970)))

(assert (=> bs!1504411 (= (dynLambda!25281 lambda!331047 (h!70742 (t!377859 (Cons!64294 lt!2326421 Nil!64294)))) (>= lt!2326536 (contextDepth!179 (h!70742 (t!377859 (Cons!64294 lt!2326421 Nil!64294))))))))

(assert (=> bs!1504411 m!6935174))

(assert (=> b!6075101 d!1904791))

(declare-fun b_lambda!231099 () Bool)

(assert (= b_lambda!231039 (or b!6073972 b_lambda!231099)))

(declare-fun bs!1504412 () Bool)

(declare-fun d!1904793 () Bool)

(assert (= bs!1504412 (and d!1904793 b!6073972)))

(assert (=> bs!1504412 (= (dynLambda!25281 lambda!331048 (h!70742 (Cons!64294 lt!2326421 Nil!64294))) (>= lt!2326534 (contextDepth!179 (h!70742 (Cons!64294 lt!2326421 Nil!64294)))))))

(assert (=> bs!1504412 m!6934190))

(assert (=> b!6074506 d!1904793))

(declare-fun b_lambda!231101 () Bool)

(assert (= b_lambda!231043 (or d!1904207 b_lambda!231101)))

(declare-fun bs!1504413 () Bool)

(declare-fun d!1904795 () Bool)

(assert (= bs!1504413 (and d!1904795 d!1904207)))

(assert (=> bs!1504413 (= (dynLambda!25284 lambda!331016 (h!70740 (exprs!5923 lt!2326429))) (validRegex!7775 (h!70740 (exprs!5923 lt!2326429))))))

(declare-fun m!6935410 () Bool)

(assert (=> bs!1504413 m!6935410))

(assert (=> b!6074554 d!1904795))

(check-sat (not b!6075288) (not bm!499992) (not bm!499838) (not bm!499868) (not b!6074338) (not b!6075266) (not b!6075356) (not b!6075251) (not b!6074365) (not setNonEmpty!41073) (not bm!499912) (not d!1904749) (not b!6075019) (not b!6075250) (not d!1904415) (not b!6075170) (not b!6074552) (not b!6075151) (not d!1904435) (not b!6074331) (not bs!1504410) (not bm!499839) (not b!6074638) (not d!1904725) (not b_lambda!231099) (not b!6074368) (not b!6075269) (not bm!500024) (not bm!499908) (not d!1904493) (not bm!499996) (not d!1904601) (not b!6074342) (not bm!499893) (not b!6075113) (not bm!500013) (not b!6074486) (not b!6075263) (not bm!500025) (not bm!499959) (not bm!499831) (not b!6075296) (not b!6075046) (not d!1904685) (not d!1904573) (not bm!499990) (not d!1904487) (not b!6074984) (not b!6074898) (not b!6074602) (not b!6074551) (not bm!499941) (not bm!499869) (not b!6075425) (not b!6075252) (not b!6074822) (not bm!499863) (not b!6075306) (not b!6075034) (not b!6075133) (not b!6075144) (not b!6074515) (not bm!500012) (not bm!499985) (not d!1904353) (not b!6075053) (not b!6074555) (not b_lambda!231097) (not b!6075317) (not b!6075275) (not b_lambda!231093) (not b!6075051) (not b!6074993) (not d!1904599) (not d!1904691) (not bm!499875) (not b!6075137) (not b!6074863) (not d!1904387) (not b!6075300) (not bm!499898) (not b!6074513) (not b!6074682) (not b!6074867) (not b_lambda!231079) (not b!6075368) (not b!6075360) (not b!6075377) (not b!6075290) (not b!6075256) (not b!6074395) (not b!6074363) (not b_lambda!231091) (not b!6075301) (not b!6075289) (not d!1904363) (not b!6074859) (not b_lambda!231101) (not b!6075255) (not b!6074886) (not b!6075100) (not d!1904417) (not d!1904443) (not bm!499846) (not bm!499958) (not b!6074719) (not b!6075416) (not d!1904357) (not b!6075401) (not d!1904723) (not b!6075131) (not bs!1504409) (not b!6074725) (not d!1904585) (not bm!500014) (not d!1904361) (not b!6074362) (not bs!1504405) (not b!6074821) (not bm!499945) (not d!1904385) (not b!6074361) (not bm!500018) (not b!6075424) (not b!6074440) (not d!1904611) (not bm!499850) (not b!6075423) (not b!6075329) (not b!6074848) (not bs!1504406) (not b!6074901) (not b!6075309) (not b!6074350) (not b!6075336) (not b!6074413) (not b!6075056) (not b_lambda!231077) (not b!6074724) (not bm!499843) (not b_lambda!231089) (not b!6075305) (not b!6075140) (not b!6075313) (not bs!1504413) (not b_lambda!231021) (not d!1904445) (not b!6074431) (not bm!499904) (not b!6074367) (not b!6075346) (not b!6075330) (not b!6075032) (not b!6075136) (not bm!499849) (not b!6075274) (not b!6075273) (not bm!499998) (not b!6074856) (not b!6075102) (not b!6075150) (not b!6074852) (not b!6074410) (not b!6075340) (not b!6074455) (not bm!499862) (not bm!499902) (not b!6074400) (not bm!499911) (not b!6075095) (not bm!500017) (not b!6075355) (not b!6075271) (not b!6075063) (not b!6075408) (not b!6074523) (not b!6074810) (not bm!499995) (not b!6074887) (not bm!499905) (not setNonEmpty!41075) (not b!6075126) (not b_lambda!231087) (not b!6074818) (not b!6074360) (not b!6075362) tp_is_empty!41331 (not b!6075267) (not b!6074443) (not b!6074849) (not d!1904465) (not bm!499835) (not d!1904369) (not b!6074402) (not b!6074518) (not d!1904399) (not d!1904747) (not b!6075111) (not b!6075311) (not b_lambda!231095) (not d!1904571) (not b!6074406) (not b!6075384) (not b!6074865) (not b!6074817) (not b!6075057) (not b_lambda!231019) (not b!6074370) (not bm!499986) (not bs!1504412) (not b!6075321) (not b!6074553) (not setNonEmpty!41067) (not bm!499876) (not d!1904657) (not bm!499847) (not d!1904687) (not b!6075367) (not b!6074691) (not b!6074461) (not d!1904507) (not b!6074388) (not b!6075393) (not b!6075348) (not b_lambda!231085) (not b!6074855) (not bm!499909) (not d!1904373) (not bs!1504408) (not d!1904751) (not b!6075354) (not bm!499913) (not bm!499944) (not bm!499865) (not b!6075338) (not b!6074507) (not bm!499982) (not bs!1504404) (not b!6075417) (not b!6074376) (not bm!500001) (not b!6074798) (not b!6075145) (not b!6075415) (not bm!499882) (not b!6074868) (not b!6075293) (not d!1904659) (not b!6075260) (not b!6074676) (not b_lambda!231023) (not d!1904351) (not b!6075391) (not b!6074694) (not b!6075265) (not b!6074373) (not b!6075322) (not b!6075315) (not b!6074389) (not b!6075383) (not b!6074872) (not bm!499853) (not b_lambda!231083) (not b!6075339) (not b!6075385) (not d!1904393) (not bm!499837) (not d!1904543) (not bm!499834) (not bm!499901) (not b!6074594) (not b!6075249) (not b!6074866) (not bm!500021) (not bm!499881) (not bm!499989) (not d!1904469) (not bm!499999) (not b!6075304) (not b!6075050) (not b!6074570) (not b!6075399) (not b!6074441) (not b!6074336) (not b!6075147) (not b!6074366) (not b_lambda!231081) (not b!6075257) (not b!6074524) (not b!6075331) (not b!6075098) (not b!6075319) (not b!6075292) (not b!6075409) (not b!6074564) (not d!1904349) (not bm!499981) (not bm!499830) (not b!6074341) (not bm!499840) (not bm!499937) (not b!6075302) (not b!6074405) (not bm!499841) (not bs!1504411) (not b!6074721) (not b!6074864) (not bm!499939) (not d!1904621) (not b!6075323) (not b!6075392) (not b!6075187) (not b!6074335) (not b!6075294) (not b!6074663) (not b!6075261) (not b!6075407) (not b!6075270) (not d!1904425) (not d!1904541) (not d!1904575) (not b!6074596) (not b!6075369) (not b!6075314) (not b!6075375) (not b!6075262) (not b!6075130) (not b!6075258) (not b!6075040) (not b!6075298) (not bs!1504407) (not b!6074714) (not b!6074429) (not b!6075364) (not b!6074854) (not b!6074673) (not b!6074505) (not b!6075164) (not b!6075308) (not b!6074718) (not d!1904719) (not bm!499878) (not b!6075400) (not setNonEmpty!41071) (not b!6075376) (not d!1904433) (not b!6075310) (not b!6075318) (not b!6074399) (not bm!499894) (not b!6075297) (not b!6075347) (not d!1904579))
(check-sat)
