; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570870 () Bool)

(assert start!570870)

(declare-fun b!5444637 () Bool)

(assert (=> b!5444637 true))

(assert (=> b!5444637 true))

(declare-fun lambda!286654 () Int)

(declare-fun lambda!286653 () Int)

(assert (=> b!5444637 (not (= lambda!286654 lambda!286653))))

(assert (=> b!5444637 true))

(assert (=> b!5444637 true))

(declare-fun b!5444646 () Bool)

(assert (=> b!5444646 true))

(declare-fun b!5444621 () Bool)

(declare-fun e!3372485 () Bool)

(declare-fun tp!1500875 () Bool)

(assert (=> b!5444621 (= e!3372485 tp!1500875)))

(declare-fun b!5444622 () Bool)

(declare-fun res!2318143 () Bool)

(declare-fun e!3372481 () Bool)

(assert (=> b!5444622 (=> (not res!2318143) (not e!3372481))))

(declare-datatypes ((C!30816 0))(
  ( (C!30817 (val!25110 Int)) )
))
(declare-datatypes ((Regex!15273 0))(
  ( (ElementMatch!15273 (c!950149 C!30816)) (Concat!24118 (regOne!31058 Regex!15273) (regTwo!31058 Regex!15273)) (EmptyExpr!15273) (Star!15273 (reg!15602 Regex!15273)) (EmptyLang!15273) (Union!15273 (regOne!31059 Regex!15273) (regTwo!31059 Regex!15273)) )
))
(declare-fun r!7292 () Regex!15273)

(declare-datatypes ((List!62118 0))(
  ( (Nil!61994) (Cons!61994 (h!68442 Regex!15273) (t!375345 List!62118)) )
))
(declare-datatypes ((Context!9314 0))(
  ( (Context!9315 (exprs!5157 List!62118)) )
))
(declare-datatypes ((List!62119 0))(
  ( (Nil!61995) (Cons!61995 (h!68443 Context!9314) (t!375346 List!62119)) )
))
(declare-fun zl!343 () List!62119)

(declare-fun unfocusZipper!1015 (List!62119) Regex!15273)

(assert (=> b!5444622 (= res!2318143 (= r!7292 (unfocusZipper!1015 zl!343)))))

(declare-fun b!5444623 () Bool)

(declare-datatypes ((Unit!154634 0))(
  ( (Unit!154635) )
))
(declare-fun e!3372482 () Unit!154634)

(declare-fun Unit!154636 () Unit!154634)

(assert (=> b!5444623 (= e!3372482 Unit!154636)))

(declare-fun b!5444625 () Bool)

(declare-fun res!2318150 () Bool)

(declare-fun e!3372490 () Bool)

(assert (=> b!5444625 (=> res!2318150 e!3372490)))

(get-info :version)

(assert (=> b!5444625 (= res!2318150 (not ((_ is Cons!61994) (exprs!5157 (h!68443 zl!343)))))))

(declare-fun b!5444626 () Bool)

(declare-fun e!3372484 () Bool)

(declare-fun tp_is_empty!39799 () Bool)

(declare-fun tp!1500872 () Bool)

(assert (=> b!5444626 (= e!3372484 (and tp_is_empty!39799 tp!1500872))))

(declare-fun b!5444627 () Bool)

(declare-fun e!3372478 () Bool)

(declare-fun tp!1500881 () Bool)

(declare-fun tp!1500880 () Bool)

(assert (=> b!5444627 (= e!3372478 (and tp!1500881 tp!1500880))))

(declare-fun b!5444628 () Bool)

(declare-fun e!3372487 () Bool)

(assert (=> b!5444628 (= e!3372487 true)))

(declare-datatypes ((List!62120 0))(
  ( (Nil!61996) (Cons!61996 (h!68444 C!30816) (t!375347 List!62120)) )
))
(declare-fun s!2326 () List!62120)

(declare-fun matchR!7458 (Regex!15273 List!62120) Bool)

(declare-fun matchRSpec!2376 (Regex!15273 List!62120) Bool)

(assert (=> b!5444628 (= (matchR!7458 (regTwo!31058 r!7292) s!2326) (matchRSpec!2376 (regTwo!31058 r!7292) s!2326))))

(declare-fun lt!2219888 () Unit!154634)

(declare-fun mainMatchTheorem!2376 (Regex!15273 List!62120) Unit!154634)

(assert (=> b!5444628 (= lt!2219888 (mainMatchTheorem!2376 (regTwo!31058 r!7292) s!2326))))

(assert (=> b!5444628 (= (matchR!7458 (regOne!31058 r!7292) s!2326) (matchRSpec!2376 (regOne!31058 r!7292) s!2326))))

(declare-fun lt!2219884 () Unit!154634)

(assert (=> b!5444628 (= lt!2219884 (mainMatchTheorem!2376 (regOne!31058 r!7292) s!2326))))

(declare-fun b!5444629 () Bool)

(declare-fun e!3372483 () Bool)

(assert (=> b!5444629 (= e!3372483 e!3372487)))

(declare-fun res!2318145 () Bool)

(assert (=> b!5444629 (=> res!2318145 e!3372487)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2219877 () (InoxSet Context!9314))

(assert (=> b!5444629 (= res!2318145 (or (not (= lt!2219877 ((as const (Array Context!9314 Bool)) false))) (not (= r!7292 (Concat!24118 (regOne!31058 r!7292) (regTwo!31058 r!7292))))))))

(declare-fun matchZipper!1517 ((InoxSet Context!9314) List!62120) Bool)

(assert (=> b!5444629 (not (matchZipper!1517 lt!2219877 (t!375347 s!2326)))))

(declare-fun lt!2219883 () Unit!154634)

(declare-fun lemmaEmptyZipperMatchesNothing!28 ((InoxSet Context!9314) List!62120) Unit!154634)

(assert (=> b!5444629 (= lt!2219883 (lemmaEmptyZipperMatchesNothing!28 lt!2219877 (t!375347 s!2326)))))

(declare-fun b!5444630 () Bool)

(declare-fun res!2318141 () Bool)

(assert (=> b!5444630 (=> res!2318141 e!3372483)))

(assert (=> b!5444630 (= res!2318141 (or ((_ is Concat!24118) (regOne!31058 r!7292)) ((_ is Star!15273) (regOne!31058 r!7292)) ((_ is EmptyExpr!15273) (regOne!31058 r!7292))))))

(declare-fun b!5444631 () Bool)

(declare-fun tp!1500879 () Bool)

(declare-fun tp!1500873 () Bool)

(assert (=> b!5444631 (= e!3372478 (and tp!1500879 tp!1500873))))

(declare-fun b!5444632 () Bool)

(declare-fun res!2318153 () Bool)

(assert (=> b!5444632 (=> res!2318153 e!3372483)))

(declare-fun e!3372479 () Bool)

(assert (=> b!5444632 (= res!2318153 e!3372479)))

(declare-fun res!2318154 () Bool)

(assert (=> b!5444632 (=> (not res!2318154) (not e!3372479))))

(assert (=> b!5444632 (= res!2318154 ((_ is Concat!24118) (regOne!31058 r!7292)))))

(declare-fun e!3372486 () Bool)

(declare-fun e!3372488 () Bool)

(declare-fun tp!1500878 () Bool)

(declare-fun b!5444633 () Bool)

(declare-fun inv!81429 (Context!9314) Bool)

(assert (=> b!5444633 (= e!3372488 (and (inv!81429 (h!68443 zl!343)) e!3372486 tp!1500878))))

(declare-fun b!5444634 () Bool)

(declare-fun res!2318148 () Bool)

(assert (=> b!5444634 (=> (not res!2318148) (not e!3372481))))

(declare-fun z!1189 () (InoxSet Context!9314))

(declare-fun toList!9057 ((InoxSet Context!9314)) List!62119)

(assert (=> b!5444634 (= res!2318148 (= (toList!9057 z!1189) zl!343))))

(declare-fun b!5444635 () Bool)

(declare-fun res!2318144 () Bool)

(assert (=> b!5444635 (=> res!2318144 e!3372490)))

(declare-fun generalisedUnion!1202 (List!62118) Regex!15273)

(declare-fun unfocusZipperList!715 (List!62119) List!62118)

(assert (=> b!5444635 (= res!2318144 (not (= r!7292 (generalisedUnion!1202 (unfocusZipperList!715 zl!343)))))))

(declare-fun setIsEmpty!35629 () Bool)

(declare-fun setRes!35629 () Bool)

(assert (=> setIsEmpty!35629 setRes!35629))

(declare-fun b!5444636 () Bool)

(declare-fun nullable!5442 (Regex!15273) Bool)

(assert (=> b!5444636 (= e!3372479 (nullable!5442 (regOne!31058 (regOne!31058 r!7292))))))

(declare-fun e!3372480 () Bool)

(assert (=> b!5444637 (= e!3372490 e!3372480)))

(declare-fun res!2318146 () Bool)

(assert (=> b!5444637 (=> res!2318146 e!3372480)))

(declare-fun lt!2219876 () Bool)

(declare-fun lt!2219882 () Bool)

(assert (=> b!5444637 (= res!2318146 (or (not (= lt!2219876 lt!2219882)) ((_ is Nil!61996) s!2326)))))

(declare-fun Exists!2454 (Int) Bool)

(assert (=> b!5444637 (= (Exists!2454 lambda!286653) (Exists!2454 lambda!286654))))

(declare-fun lt!2219878 () Unit!154634)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1108 (Regex!15273 Regex!15273 List!62120) Unit!154634)

(assert (=> b!5444637 (= lt!2219878 (lemmaExistCutMatchRandMatchRSpecEquivalent!1108 (regOne!31058 r!7292) (regTwo!31058 r!7292) s!2326))))

(assert (=> b!5444637 (= lt!2219882 (Exists!2454 lambda!286653))))

(declare-datatypes ((tuple2!64944 0))(
  ( (tuple2!64945 (_1!35775 List!62120) (_2!35775 List!62120)) )
))
(declare-datatypes ((Option!15384 0))(
  ( (None!15383) (Some!15383 (v!51412 tuple2!64944)) )
))
(declare-fun isDefined!12087 (Option!15384) Bool)

(declare-fun findConcatSeparation!1798 (Regex!15273 Regex!15273 List!62120 List!62120 List!62120) Option!15384)

(assert (=> b!5444637 (= lt!2219882 (isDefined!12087 (findConcatSeparation!1798 (regOne!31058 r!7292) (regTwo!31058 r!7292) Nil!61996 s!2326 s!2326)))))

(declare-fun lt!2219875 () Unit!154634)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1562 (Regex!15273 Regex!15273 List!62120) Unit!154634)

(assert (=> b!5444637 (= lt!2219875 (lemmaFindConcatSeparationEquivalentToExists!1562 (regOne!31058 r!7292) (regTwo!31058 r!7292) s!2326))))

(declare-fun b!5444624 () Bool)

(declare-fun e!3372489 () Bool)

(declare-fun lt!2219885 () (InoxSet Context!9314))

(assert (=> b!5444624 (= e!3372489 (matchZipper!1517 lt!2219885 (t!375347 s!2326)))))

(declare-fun res!2318152 () Bool)

(assert (=> start!570870 (=> (not res!2318152) (not e!3372481))))

(declare-fun validRegex!7009 (Regex!15273) Bool)

(assert (=> start!570870 (= res!2318152 (validRegex!7009 r!7292))))

(assert (=> start!570870 e!3372481))

(assert (=> start!570870 e!3372478))

(declare-fun condSetEmpty!35629 () Bool)

(assert (=> start!570870 (= condSetEmpty!35629 (= z!1189 ((as const (Array Context!9314 Bool)) false)))))

(assert (=> start!570870 setRes!35629))

(assert (=> start!570870 e!3372488))

(assert (=> start!570870 e!3372484))

(declare-fun b!5444638 () Bool)

(declare-fun res!2318147 () Bool)

(assert (=> b!5444638 (=> res!2318147 e!3372480)))

(declare-fun isEmpty!33974 (List!62118) Bool)

(assert (=> b!5444638 (= res!2318147 (isEmpty!33974 (t!375345 (exprs!5157 (h!68443 zl!343)))))))

(declare-fun b!5444639 () Bool)

(declare-fun Unit!154637 () Unit!154634)

(assert (=> b!5444639 (= e!3372482 Unit!154637)))

(declare-fun lt!2219887 () Unit!154634)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!510 ((InoxSet Context!9314) (InoxSet Context!9314) List!62120) Unit!154634)

(assert (=> b!5444639 (= lt!2219887 (lemmaZipperConcatMatchesSameAsBothZippers!510 lt!2219877 lt!2219885 (t!375347 s!2326)))))

(declare-fun res!2318149 () Bool)

(assert (=> b!5444639 (= res!2318149 (matchZipper!1517 lt!2219877 (t!375347 s!2326)))))

(assert (=> b!5444639 (=> res!2318149 e!3372489)))

(assert (=> b!5444639 (= (matchZipper!1517 ((_ map or) lt!2219877 lt!2219885) (t!375347 s!2326)) e!3372489)))

(declare-fun b!5444640 () Bool)

(declare-fun res!2318156 () Bool)

(assert (=> b!5444640 (=> res!2318156 e!3372490)))

(assert (=> b!5444640 (= res!2318156 (or ((_ is EmptyExpr!15273) r!7292) ((_ is EmptyLang!15273) r!7292) ((_ is ElementMatch!15273) r!7292) ((_ is Union!15273) r!7292) (not ((_ is Concat!24118) r!7292))))))

(declare-fun setNonEmpty!35629 () Bool)

(declare-fun setElem!35629 () Context!9314)

(declare-fun tp!1500877 () Bool)

(assert (=> setNonEmpty!35629 (= setRes!35629 (and tp!1500877 (inv!81429 setElem!35629) e!3372485))))

(declare-fun setRest!35629 () (InoxSet Context!9314))

(assert (=> setNonEmpty!35629 (= z!1189 ((_ map or) (store ((as const (Array Context!9314 Bool)) false) setElem!35629 true) setRest!35629))))

(declare-fun b!5444641 () Bool)

(declare-fun tp!1500876 () Bool)

(assert (=> b!5444641 (= e!3372478 tp!1500876)))

(declare-fun b!5444642 () Bool)

(declare-fun tp!1500874 () Bool)

(assert (=> b!5444642 (= e!3372486 tp!1500874)))

(declare-fun b!5444643 () Bool)

(declare-fun res!2318151 () Bool)

(assert (=> b!5444643 (=> res!2318151 e!3372490)))

(declare-fun isEmpty!33975 (List!62119) Bool)

(assert (=> b!5444643 (= res!2318151 (not (isEmpty!33975 (t!375346 zl!343))))))

(declare-fun b!5444644 () Bool)

(assert (=> b!5444644 (= e!3372481 (not e!3372490))))

(declare-fun res!2318155 () Bool)

(assert (=> b!5444644 (=> res!2318155 e!3372490)))

(assert (=> b!5444644 (= res!2318155 (not ((_ is Cons!61995) zl!343)))))

(assert (=> b!5444644 (= lt!2219876 (matchRSpec!2376 r!7292 s!2326))))

(assert (=> b!5444644 (= lt!2219876 (matchR!7458 r!7292 s!2326))))

(declare-fun lt!2219880 () Unit!154634)

(assert (=> b!5444644 (= lt!2219880 (mainMatchTheorem!2376 r!7292 s!2326))))

(declare-fun b!5444645 () Bool)

(assert (=> b!5444645 (= e!3372478 tp_is_empty!39799)))

(assert (=> b!5444646 (= e!3372480 e!3372483)))

(declare-fun res!2318157 () Bool)

(assert (=> b!5444646 (=> res!2318157 e!3372483)))

(assert (=> b!5444646 (= res!2318157 (or (and ((_ is ElementMatch!15273) (regOne!31058 r!7292)) (= (c!950149 (regOne!31058 r!7292)) (h!68444 s!2326))) ((_ is Union!15273) (regOne!31058 r!7292))))))

(declare-fun lt!2219874 () Unit!154634)

(assert (=> b!5444646 (= lt!2219874 e!3372482)))

(declare-fun c!950148 () Bool)

(assert (=> b!5444646 (= c!950148 (nullable!5442 (h!68442 (exprs!5157 (h!68443 zl!343)))))))

(declare-fun lambda!286655 () Int)

(declare-fun flatMap!1000 ((InoxSet Context!9314) Int) (InoxSet Context!9314))

(declare-fun derivationStepZipperUp!645 (Context!9314 C!30816) (InoxSet Context!9314))

(assert (=> b!5444646 (= (flatMap!1000 z!1189 lambda!286655) (derivationStepZipperUp!645 (h!68443 zl!343) (h!68444 s!2326)))))

(declare-fun lt!2219881 () Unit!154634)

(declare-fun lemmaFlatMapOnSingletonSet!532 ((InoxSet Context!9314) Context!9314 Int) Unit!154634)

(assert (=> b!5444646 (= lt!2219881 (lemmaFlatMapOnSingletonSet!532 z!1189 (h!68443 zl!343) lambda!286655))))

(declare-fun lt!2219879 () Context!9314)

(assert (=> b!5444646 (= lt!2219885 (derivationStepZipperUp!645 lt!2219879 (h!68444 s!2326)))))

(declare-fun derivationStepZipperDown!721 (Regex!15273 Context!9314 C!30816) (InoxSet Context!9314))

(assert (=> b!5444646 (= lt!2219877 (derivationStepZipperDown!721 (h!68442 (exprs!5157 (h!68443 zl!343))) lt!2219879 (h!68444 s!2326)))))

(assert (=> b!5444646 (= lt!2219879 (Context!9315 (t!375345 (exprs!5157 (h!68443 zl!343)))))))

(declare-fun lt!2219886 () (InoxSet Context!9314))

(assert (=> b!5444646 (= lt!2219886 (derivationStepZipperUp!645 (Context!9315 (Cons!61994 (h!68442 (exprs!5157 (h!68443 zl!343))) (t!375345 (exprs!5157 (h!68443 zl!343))))) (h!68444 s!2326)))))

(declare-fun b!5444647 () Bool)

(declare-fun res!2318142 () Bool)

(assert (=> b!5444647 (=> res!2318142 e!3372490)))

(declare-fun generalisedConcat!942 (List!62118) Regex!15273)

(assert (=> b!5444647 (= res!2318142 (not (= r!7292 (generalisedConcat!942 (exprs!5157 (h!68443 zl!343))))))))

(assert (= (and start!570870 res!2318152) b!5444634))

(assert (= (and b!5444634 res!2318148) b!5444622))

(assert (= (and b!5444622 res!2318143) b!5444644))

(assert (= (and b!5444644 (not res!2318155)) b!5444643))

(assert (= (and b!5444643 (not res!2318151)) b!5444647))

(assert (= (and b!5444647 (not res!2318142)) b!5444625))

(assert (= (and b!5444625 (not res!2318150)) b!5444635))

(assert (= (and b!5444635 (not res!2318144)) b!5444640))

(assert (= (and b!5444640 (not res!2318156)) b!5444637))

(assert (= (and b!5444637 (not res!2318146)) b!5444638))

(assert (= (and b!5444638 (not res!2318147)) b!5444646))

(assert (= (and b!5444646 c!950148) b!5444639))

(assert (= (and b!5444646 (not c!950148)) b!5444623))

(assert (= (and b!5444639 (not res!2318149)) b!5444624))

(assert (= (and b!5444646 (not res!2318157)) b!5444632))

(assert (= (and b!5444632 res!2318154) b!5444636))

(assert (= (and b!5444632 (not res!2318153)) b!5444630))

(assert (= (and b!5444630 (not res!2318141)) b!5444629))

(assert (= (and b!5444629 (not res!2318145)) b!5444628))

(assert (= (and start!570870 ((_ is ElementMatch!15273) r!7292)) b!5444645))

(assert (= (and start!570870 ((_ is Concat!24118) r!7292)) b!5444627))

(assert (= (and start!570870 ((_ is Star!15273) r!7292)) b!5444641))

(assert (= (and start!570870 ((_ is Union!15273) r!7292)) b!5444631))

(assert (= (and start!570870 condSetEmpty!35629) setIsEmpty!35629))

(assert (= (and start!570870 (not condSetEmpty!35629)) setNonEmpty!35629))

(assert (= setNonEmpty!35629 b!5444621))

(assert (= b!5444633 b!5444642))

(assert (= (and start!570870 ((_ is Cons!61995) zl!343)) b!5444633))

(assert (= (and start!570870 ((_ is Cons!61996) s!2326)) b!5444626))

(declare-fun m!6464484 () Bool)

(assert (=> b!5444647 m!6464484))

(declare-fun m!6464486 () Bool)

(assert (=> b!5444644 m!6464486))

(declare-fun m!6464488 () Bool)

(assert (=> b!5444644 m!6464488))

(declare-fun m!6464490 () Bool)

(assert (=> b!5444644 m!6464490))

(declare-fun m!6464492 () Bool)

(assert (=> start!570870 m!6464492))

(declare-fun m!6464494 () Bool)

(assert (=> b!5444633 m!6464494))

(declare-fun m!6464496 () Bool)

(assert (=> b!5444622 m!6464496))

(declare-fun m!6464498 () Bool)

(assert (=> b!5444628 m!6464498))

(declare-fun m!6464500 () Bool)

(assert (=> b!5444628 m!6464500))

(declare-fun m!6464502 () Bool)

(assert (=> b!5444628 m!6464502))

(declare-fun m!6464504 () Bool)

(assert (=> b!5444628 m!6464504))

(declare-fun m!6464506 () Bool)

(assert (=> b!5444628 m!6464506))

(declare-fun m!6464508 () Bool)

(assert (=> b!5444628 m!6464508))

(declare-fun m!6464510 () Bool)

(assert (=> b!5444646 m!6464510))

(declare-fun m!6464512 () Bool)

(assert (=> b!5444646 m!6464512))

(declare-fun m!6464514 () Bool)

(assert (=> b!5444646 m!6464514))

(declare-fun m!6464516 () Bool)

(assert (=> b!5444646 m!6464516))

(declare-fun m!6464518 () Bool)

(assert (=> b!5444646 m!6464518))

(declare-fun m!6464520 () Bool)

(assert (=> b!5444646 m!6464520))

(declare-fun m!6464522 () Bool)

(assert (=> b!5444646 m!6464522))

(declare-fun m!6464524 () Bool)

(assert (=> setNonEmpty!35629 m!6464524))

(declare-fun m!6464526 () Bool)

(assert (=> b!5444637 m!6464526))

(declare-fun m!6464528 () Bool)

(assert (=> b!5444637 m!6464528))

(declare-fun m!6464530 () Bool)

(assert (=> b!5444637 m!6464530))

(declare-fun m!6464532 () Bool)

(assert (=> b!5444637 m!6464532))

(assert (=> b!5444637 m!6464526))

(declare-fun m!6464534 () Bool)

(assert (=> b!5444637 m!6464534))

(assert (=> b!5444637 m!6464528))

(declare-fun m!6464536 () Bool)

(assert (=> b!5444637 m!6464536))

(declare-fun m!6464538 () Bool)

(assert (=> b!5444643 m!6464538))

(declare-fun m!6464540 () Bool)

(assert (=> b!5444636 m!6464540))

(declare-fun m!6464542 () Bool)

(assert (=> b!5444638 m!6464542))

(declare-fun m!6464544 () Bool)

(assert (=> b!5444634 m!6464544))

(declare-fun m!6464546 () Bool)

(assert (=> b!5444639 m!6464546))

(declare-fun m!6464548 () Bool)

(assert (=> b!5444639 m!6464548))

(declare-fun m!6464550 () Bool)

(assert (=> b!5444639 m!6464550))

(declare-fun m!6464552 () Bool)

(assert (=> b!5444624 m!6464552))

(assert (=> b!5444629 m!6464548))

(declare-fun m!6464554 () Bool)

(assert (=> b!5444629 m!6464554))

(declare-fun m!6464556 () Bool)

(assert (=> b!5444635 m!6464556))

(assert (=> b!5444635 m!6464556))

(declare-fun m!6464558 () Bool)

(assert (=> b!5444635 m!6464558))

(check-sat (not b!5444639) (not setNonEmpty!35629) (not b!5444621) tp_is_empty!39799 (not b!5444629) (not b!5444635) (not b!5444624) (not b!5444646) (not b!5444633) (not b!5444622) (not start!570870) (not b!5444626) (not b!5444644) (not b!5444642) (not b!5444628) (not b!5444641) (not b!5444637) (not b!5444634) (not b!5444627) (not b!5444631) (not b!5444638) (not b!5444636) (not b!5444643) (not b!5444647))
(check-sat)
