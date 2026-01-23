; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570010 () Bool)

(assert start!570010)

(declare-fun b!5431770 () Bool)

(assert (=> b!5431770 true))

(assert (=> b!5431770 true))

(declare-fun lambda!285096 () Int)

(declare-fun lambda!285095 () Int)

(assert (=> b!5431770 (not (= lambda!285096 lambda!285095))))

(assert (=> b!5431770 true))

(assert (=> b!5431770 true))

(declare-fun b!5431778 () Bool)

(assert (=> b!5431778 true))

(declare-fun b!5431738 () Bool)

(declare-fun e!3365619 () Bool)

(declare-fun tp!1498420 () Bool)

(assert (=> b!5431738 (= e!3365619 tp!1498420)))

(declare-fun b!5431739 () Bool)

(declare-fun res!2311543 () Bool)

(declare-fun e!3365627 () Bool)

(assert (=> b!5431739 (=> res!2311543 e!3365627)))

(declare-datatypes ((C!30720 0))(
  ( (C!30721 (val!25062 Int)) )
))
(declare-datatypes ((Regex!15225 0))(
  ( (ElementMatch!15225 (c!947773 C!30720)) (Concat!24070 (regOne!30962 Regex!15225) (regTwo!30962 Regex!15225)) (EmptyExpr!15225) (Star!15225 (reg!15554 Regex!15225)) (EmptyLang!15225) (Union!15225 (regOne!30963 Regex!15225) (regTwo!30963 Regex!15225)) )
))
(declare-fun lt!2214697 () Regex!15225)

(declare-fun r!7292 () Regex!15225)

(assert (=> b!5431739 (= res!2311543 (not (= lt!2214697 r!7292)))))

(declare-fun b!5431740 () Bool)

(declare-fun e!3365611 () Bool)

(declare-fun e!3365629 () Bool)

(assert (=> b!5431740 (= e!3365611 e!3365629)))

(declare-fun res!2311558 () Bool)

(assert (=> b!5431740 (=> res!2311558 e!3365629)))

(declare-datatypes ((List!61974 0))(
  ( (Nil!61850) (Cons!61850 (h!68298 C!30720) (t!375199 List!61974)) )
))
(declare-fun s!2326 () List!61974)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61975 0))(
  ( (Nil!61851) (Cons!61851 (h!68299 Regex!15225) (t!375200 List!61975)) )
))
(declare-datatypes ((Context!9218 0))(
  ( (Context!9219 (exprs!5109 List!61975)) )
))
(declare-fun lt!2214716 () (InoxSet Context!9218))

(declare-fun lt!2214702 () (InoxSet Context!9218))

(declare-fun derivationStepZipper!1464 ((InoxSet Context!9218) C!30720) (InoxSet Context!9218))

(assert (=> b!5431740 (= res!2311558 (not (= lt!2214716 (derivationStepZipper!1464 lt!2214702 (h!68298 s!2326)))))))

(declare-fun lt!2214705 () Context!9218)

(declare-fun lambda!285097 () Int)

(declare-fun flatMap!952 ((InoxSet Context!9218) Int) (InoxSet Context!9218))

(declare-fun derivationStepZipperUp!597 (Context!9218 C!30720) (InoxSet Context!9218))

(assert (=> b!5431740 (= (flatMap!952 lt!2214702 lambda!285097) (derivationStepZipperUp!597 lt!2214705 (h!68298 s!2326)))))

(declare-datatypes ((Unit!154422 0))(
  ( (Unit!154423) )
))
(declare-fun lt!2214699 () Unit!154422)

(declare-fun lemmaFlatMapOnSingletonSet!484 ((InoxSet Context!9218) Context!9218 Int) Unit!154422)

(assert (=> b!5431740 (= lt!2214699 (lemmaFlatMapOnSingletonSet!484 lt!2214702 lt!2214705 lambda!285097))))

(assert (=> b!5431740 (= lt!2214702 (store ((as const (Array Context!9218 Bool)) false) lt!2214705 true))))

(declare-fun b!5431741 () Bool)

(declare-fun e!3365613 () Bool)

(assert (=> b!5431741 (= e!3365629 e!3365613)))

(declare-fun res!2311557 () Bool)

(assert (=> b!5431741 (=> res!2311557 e!3365613)))

(declare-fun lt!2214717 () Regex!15225)

(declare-fun regexDepth!181 (Regex!15225) Int)

(assert (=> b!5431741 (= res!2311557 (< (regexDepth!181 r!7292) (regexDepth!181 lt!2214717)))))

(declare-datatypes ((List!61976 0))(
  ( (Nil!61852) (Cons!61852 (h!68300 Context!9218) (t!375201 List!61976)) )
))
(declare-fun zl!343 () List!61976)

(declare-fun generalisedConcat!894 (List!61975) Regex!15225)

(assert (=> b!5431741 (= lt!2214717 (generalisedConcat!894 (t!375200 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun b!5431742 () Bool)

(declare-fun res!2311565 () Bool)

(assert (=> b!5431742 (=> res!2311565 e!3365627)))

(declare-fun lt!2214707 () (InoxSet Context!9218))

(declare-fun lt!2214722 () (InoxSet Context!9218))

(declare-fun matchZipper!1469 ((InoxSet Context!9218) List!61974) Bool)

(assert (=> b!5431742 (= res!2311565 (not (= (matchZipper!1469 lt!2214707 s!2326) (matchZipper!1469 lt!2214722 (t!375199 s!2326)))))))

(declare-fun b!5431743 () Bool)

(declare-fun res!2311561 () Bool)

(declare-fun e!3365615 () Bool)

(assert (=> b!5431743 (=> res!2311561 e!3365615)))

(get-info :version)

(assert (=> b!5431743 (= res!2311561 (not ((_ is Cons!61851) (exprs!5109 (h!68300 zl!343)))))))

(declare-fun b!5431744 () Bool)

(declare-fun tp!1498419 () Bool)

(declare-fun tp!1498417 () Bool)

(assert (=> b!5431744 (= e!3365619 (and tp!1498419 tp!1498417))))

(declare-fun b!5431745 () Bool)

(declare-fun tp_is_empty!39703 () Bool)

(assert (=> b!5431745 (= e!3365619 tp_is_empty!39703)))

(declare-fun b!5431746 () Bool)

(declare-fun e!3365634 () Bool)

(declare-fun e!3365631 () Bool)

(assert (=> b!5431746 (= e!3365634 e!3365631)))

(declare-fun res!2311551 () Bool)

(assert (=> b!5431746 (=> res!2311551 e!3365631)))

(declare-fun lt!2214721 () Context!9218)

(declare-fun lt!2214695 () Regex!15225)

(declare-fun unfocusZipper!967 (List!61976) Regex!15225)

(assert (=> b!5431746 (= res!2311551 (not (= (unfocusZipper!967 (Cons!61852 lt!2214721 Nil!61852)) lt!2214695)))))

(declare-fun lt!2214715 () Regex!15225)

(assert (=> b!5431746 (= lt!2214695 (Concat!24070 (reg!15554 (regOne!30962 r!7292)) lt!2214715))))

(declare-fun b!5431747 () Bool)

(assert (=> b!5431747 (= e!3365627 e!3365634)))

(declare-fun res!2311552 () Bool)

(assert (=> b!5431747 (=> res!2311552 e!3365634)))

(assert (=> b!5431747 (= res!2311552 (not (= r!7292 lt!2214715)))))

(declare-fun lt!2214708 () Regex!15225)

(assert (=> b!5431747 (= lt!2214715 (Concat!24070 lt!2214708 (regTwo!30962 r!7292)))))

(declare-fun b!5431748 () Bool)

(declare-fun e!3365620 () Bool)

(assert (=> b!5431748 (= e!3365613 e!3365620)))

(declare-fun res!2311546 () Bool)

(assert (=> b!5431748 (=> res!2311546 e!3365620)))

(declare-fun lt!2214703 () List!61976)

(declare-fun zipperDepth!166 (List!61976) Int)

(assert (=> b!5431748 (= res!2311546 (< (zipperDepth!166 zl!343) (zipperDepth!166 lt!2214703)))))

(assert (=> b!5431748 (= lt!2214703 (Cons!61852 lt!2214705 Nil!61852))))

(declare-fun b!5431749 () Bool)

(declare-fun res!2311571 () Bool)

(assert (=> b!5431749 (=> res!2311571 e!3365615)))

(assert (=> b!5431749 (= res!2311571 (not (= r!7292 (generalisedConcat!894 (exprs!5109 (h!68300 zl!343))))))))

(declare-fun b!5431750 () Bool)

(declare-fun e!3365630 () Bool)

(assert (=> b!5431750 (= e!3365630 e!3365611)))

(declare-fun res!2311544 () Bool)

(assert (=> b!5431750 (=> res!2311544 e!3365611)))

(declare-fun e!3365624 () Bool)

(assert (=> b!5431750 (= res!2311544 e!3365624)))

(declare-fun res!2311572 () Bool)

(assert (=> b!5431750 (=> (not res!2311572) (not e!3365624))))

(declare-fun lt!2214712 () Bool)

(assert (=> b!5431750 (= res!2311572 (not lt!2214712))))

(declare-fun lt!2214691 () (InoxSet Context!9218))

(assert (=> b!5431750 (= lt!2214712 (matchZipper!1469 lt!2214691 (t!375199 s!2326)))))

(declare-fun b!5431751 () Bool)

(declare-fun res!2311553 () Bool)

(assert (=> b!5431751 (=> res!2311553 e!3365630)))

(declare-fun z!1189 () (InoxSet Context!9218))

(assert (=> b!5431751 (= res!2311553 (not (matchZipper!1469 z!1189 s!2326)))))

(declare-fun tp!1498421 () Bool)

(declare-fun e!3365618 () Bool)

(declare-fun e!3365626 () Bool)

(declare-fun b!5431752 () Bool)

(declare-fun inv!81309 (Context!9218) Bool)

(assert (=> b!5431752 (= e!3365618 (and (inv!81309 (h!68300 zl!343)) e!3365626 tp!1498421))))

(declare-fun b!5431753 () Bool)

(declare-fun tp!1498414 () Bool)

(declare-fun tp!1498413 () Bool)

(assert (=> b!5431753 (= e!3365619 (and tp!1498414 tp!1498413))))

(declare-fun b!5431754 () Bool)

(declare-fun e!3365614 () Bool)

(declare-fun nullable!5394 (Regex!15225) Bool)

(assert (=> b!5431754 (= e!3365614 (nullable!5394 (regOne!30962 (regOne!30962 r!7292))))))

(declare-fun b!5431755 () Bool)

(declare-fun res!2311567 () Bool)

(assert (=> b!5431755 (=> res!2311567 e!3365615)))

(declare-fun isEmpty!33852 (List!61976) Bool)

(assert (=> b!5431755 (= res!2311567 (not (isEmpty!33852 (t!375201 zl!343))))))

(declare-fun setIsEmpty!35439 () Bool)

(declare-fun setRes!35439 () Bool)

(assert (=> setIsEmpty!35439 setRes!35439))

(declare-fun b!5431756 () Bool)

(declare-fun e!3365628 () Bool)

(assert (=> b!5431756 (= e!3365631 e!3365628)))

(declare-fun res!2311570 () Bool)

(assert (=> b!5431756 (=> res!2311570 e!3365628)))

(declare-fun lt!2214701 () Context!9218)

(assert (=> b!5431756 (= res!2311570 (not (= (unfocusZipper!967 (Cons!61852 lt!2214701 Nil!61852)) (reg!15554 (regOne!30962 r!7292)))))))

(declare-fun lt!2214693 () Context!9218)

(declare-fun lt!2214706 () (InoxSet Context!9218))

(assert (=> b!5431756 (= (flatMap!952 lt!2214706 lambda!285097) (derivationStepZipperUp!597 lt!2214693 (h!68298 s!2326)))))

(declare-fun lt!2214724 () Unit!154422)

(assert (=> b!5431756 (= lt!2214724 (lemmaFlatMapOnSingletonSet!484 lt!2214706 lt!2214693 lambda!285097))))

(declare-fun lt!2214696 () (InoxSet Context!9218))

(assert (=> b!5431756 (= (flatMap!952 lt!2214696 lambda!285097) (derivationStepZipperUp!597 lt!2214701 (h!68298 s!2326)))))

(declare-fun lt!2214690 () Unit!154422)

(assert (=> b!5431756 (= lt!2214690 (lemmaFlatMapOnSingletonSet!484 lt!2214696 lt!2214701 lambda!285097))))

(declare-fun lt!2214718 () (InoxSet Context!9218))

(assert (=> b!5431756 (= lt!2214718 (derivationStepZipperUp!597 lt!2214693 (h!68298 s!2326)))))

(declare-fun lt!2214704 () (InoxSet Context!9218))

(assert (=> b!5431756 (= lt!2214704 (derivationStepZipperUp!597 lt!2214701 (h!68298 s!2326)))))

(assert (=> b!5431756 (= lt!2214706 (store ((as const (Array Context!9218 Bool)) false) lt!2214693 true))))

(assert (=> b!5431756 (= lt!2214696 (store ((as const (Array Context!9218 Bool)) false) lt!2214701 true))))

(assert (=> b!5431756 (= lt!2214701 (Context!9219 (Cons!61851 (reg!15554 (regOne!30962 r!7292)) Nil!61851)))))

(declare-fun b!5431757 () Bool)

(declare-fun res!2311559 () Bool)

(assert (=> b!5431757 (=> res!2311559 e!3365615)))

(assert (=> b!5431757 (= res!2311559 (or ((_ is EmptyExpr!15225) r!7292) ((_ is EmptyLang!15225) r!7292) ((_ is ElementMatch!15225) r!7292) ((_ is Union!15225) r!7292) (not ((_ is Concat!24070) r!7292))))))

(declare-fun b!5431758 () Bool)

(assert (=> b!5431758 (= e!3365628 e!3365630)))

(declare-fun res!2311550 () Bool)

(assert (=> b!5431758 (=> res!2311550 e!3365630)))

(declare-fun lt!2214726 () Bool)

(assert (=> b!5431758 (= res!2311550 lt!2214726)))

(declare-fun matchR!7410 (Regex!15225 List!61974) Bool)

(declare-fun matchRSpec!2328 (Regex!15225 List!61974) Bool)

(assert (=> b!5431758 (= (matchR!7410 lt!2214695 s!2326) (matchRSpec!2328 lt!2214695 s!2326))))

(declare-fun lt!2214700 () Unit!154422)

(declare-fun mainMatchTheorem!2328 (Regex!15225 List!61974) Unit!154422)

(assert (=> b!5431758 (= lt!2214700 (mainMatchTheorem!2328 lt!2214695 s!2326))))

(declare-fun b!5431759 () Bool)

(declare-fun e!3365633 () Unit!154422)

(declare-fun Unit!154424 () Unit!154422)

(assert (=> b!5431759 (= e!3365633 Unit!154424)))

(declare-fun b!5431760 () Bool)

(declare-fun res!2311564 () Bool)

(assert (=> b!5431760 (=> res!2311564 e!3365630)))

(declare-fun lt!2214727 () Bool)

(assert (=> b!5431760 (= res!2311564 (not lt!2214727))))

(declare-fun b!5431761 () Bool)

(declare-fun Unit!154425 () Unit!154422)

(assert (=> b!5431761 (= e!3365633 Unit!154425)))

(declare-fun lt!2214692 () Unit!154422)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!462 ((InoxSet Context!9218) (InoxSet Context!9218) List!61974) Unit!154422)

(assert (=> b!5431761 (= lt!2214692 (lemmaZipperConcatMatchesSameAsBothZippers!462 lt!2214691 lt!2214716 (t!375199 s!2326)))))

(declare-fun res!2311566 () Bool)

(assert (=> b!5431761 (= res!2311566 (matchZipper!1469 lt!2214691 (t!375199 s!2326)))))

(declare-fun e!3365612 () Bool)

(assert (=> b!5431761 (=> res!2311566 e!3365612)))

(assert (=> b!5431761 (= (matchZipper!1469 ((_ map or) lt!2214691 lt!2214716) (t!375199 s!2326)) e!3365612)))

(declare-fun b!5431762 () Bool)

(assert (=> b!5431762 (= e!3365612 (matchZipper!1469 lt!2214716 (t!375199 s!2326)))))

(declare-fun b!5431763 () Bool)

(declare-fun res!2311563 () Bool)

(assert (=> b!5431763 (=> res!2311563 e!3365628)))

(assert (=> b!5431763 (= res!2311563 (not (= (unfocusZipper!967 (Cons!61852 lt!2214693 Nil!61852)) lt!2214715)))))

(declare-fun res!2311548 () Bool)

(declare-fun e!3365625 () Bool)

(assert (=> start!570010 (=> (not res!2311548) (not e!3365625))))

(declare-fun validRegex!6961 (Regex!15225) Bool)

(assert (=> start!570010 (= res!2311548 (validRegex!6961 r!7292))))

(assert (=> start!570010 e!3365625))

(assert (=> start!570010 e!3365619))

(declare-fun condSetEmpty!35439 () Bool)

(assert (=> start!570010 (= condSetEmpty!35439 (= z!1189 ((as const (Array Context!9218 Bool)) false)))))

(assert (=> start!570010 setRes!35439))

(assert (=> start!570010 e!3365618))

(declare-fun e!3365623 () Bool)

(assert (=> start!570010 e!3365623))

(declare-fun b!5431764 () Bool)

(declare-fun res!2311555 () Bool)

(declare-fun e!3365632 () Bool)

(assert (=> b!5431764 (=> res!2311555 e!3365632)))

(declare-fun isEmpty!33853 (List!61975) Bool)

(assert (=> b!5431764 (= res!2311555 (isEmpty!33853 (t!375200 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun b!5431765 () Bool)

(declare-fun e!3365621 () Bool)

(declare-fun e!3365616 () Bool)

(assert (=> b!5431765 (= e!3365621 e!3365616)))

(declare-fun res!2311569 () Bool)

(assert (=> b!5431765 (=> res!2311569 e!3365616)))

(declare-fun lt!2214709 () (InoxSet Context!9218))

(assert (=> b!5431765 (= res!2311569 (not (= lt!2214691 lt!2214709)))))

(declare-fun derivationStepZipperDown!673 (Regex!15225 Context!9218 C!30720) (InoxSet Context!9218))

(assert (=> b!5431765 (= lt!2214709 (derivationStepZipperDown!673 (reg!15554 (regOne!30962 r!7292)) lt!2214693 (h!68298 s!2326)))))

(declare-fun lt!2214713 () List!61975)

(assert (=> b!5431765 (= lt!2214693 (Context!9219 lt!2214713))))

(assert (=> b!5431765 (= lt!2214713 (Cons!61851 lt!2214708 (t!375200 (exprs!5109 (h!68300 zl!343)))))))

(assert (=> b!5431765 (= lt!2214708 (Star!15225 (reg!15554 (regOne!30962 r!7292))))))

(declare-fun b!5431766 () Bool)

(declare-fun res!2311542 () Bool)

(assert (=> b!5431766 (=> res!2311542 e!3365621)))

(assert (=> b!5431766 (= res!2311542 (or ((_ is Concat!24070) (regOne!30962 r!7292)) (not ((_ is Star!15225) (regOne!30962 r!7292)))))))

(declare-fun b!5431767 () Bool)

(declare-fun e!3365622 () Bool)

(declare-fun tp!1498418 () Bool)

(assert (=> b!5431767 (= e!3365622 tp!1498418)))

(declare-fun b!5431768 () Bool)

(declare-fun res!2311554 () Bool)

(assert (=> b!5431768 (=> (not res!2311554) (not e!3365625))))

(declare-fun toList!9009 ((InoxSet Context!9218)) List!61976)

(assert (=> b!5431768 (= res!2311554 (= (toList!9009 z!1189) zl!343))))

(declare-fun b!5431769 () Bool)

(declare-fun e!3365617 () Bool)

(assert (=> b!5431769 (= e!3365625 e!3365617)))

(declare-fun res!2311573 () Bool)

(assert (=> b!5431769 (=> (not res!2311573) (not e!3365617))))

(assert (=> b!5431769 (= res!2311573 (= r!7292 lt!2214697))))

(assert (=> b!5431769 (= lt!2214697 (unfocusZipper!967 zl!343))))

(assert (=> b!5431770 (= e!3365615 e!3365632)))

(declare-fun res!2311547 () Bool)

(assert (=> b!5431770 (=> res!2311547 e!3365632)))

(declare-fun lt!2214698 () Bool)

(assert (=> b!5431770 (= res!2311547 (or (not (= lt!2214726 lt!2214698)) ((_ is Nil!61850) s!2326)))))

(declare-fun Exists!2406 (Int) Bool)

(assert (=> b!5431770 (= (Exists!2406 lambda!285095) (Exists!2406 lambda!285096))))

(declare-fun lt!2214720 () Unit!154422)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1060 (Regex!15225 Regex!15225 List!61974) Unit!154422)

(assert (=> b!5431770 (= lt!2214720 (lemmaExistCutMatchRandMatchRSpecEquivalent!1060 (regOne!30962 r!7292) (regTwo!30962 r!7292) s!2326))))

(assert (=> b!5431770 (= lt!2214698 (Exists!2406 lambda!285095))))

(declare-datatypes ((tuple2!64848 0))(
  ( (tuple2!64849 (_1!35727 List!61974) (_2!35727 List!61974)) )
))
(declare-datatypes ((Option!15336 0))(
  ( (None!15335) (Some!15335 (v!51364 tuple2!64848)) )
))
(declare-fun isDefined!12039 (Option!15336) Bool)

(declare-fun findConcatSeparation!1750 (Regex!15225 Regex!15225 List!61974 List!61974 List!61974) Option!15336)

(assert (=> b!5431770 (= lt!2214698 (isDefined!12039 (findConcatSeparation!1750 (regOne!30962 r!7292) (regTwo!30962 r!7292) Nil!61850 s!2326 s!2326)))))

(declare-fun lt!2214714 () Unit!154422)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1514 (Regex!15225 Regex!15225 List!61974) Unit!154422)

(assert (=> b!5431770 (= lt!2214714 (lemmaFindConcatSeparationEquivalentToExists!1514 (regOne!30962 r!7292) (regTwo!30962 r!7292) s!2326))))

(declare-fun tp!1498412 () Bool)

(declare-fun setNonEmpty!35439 () Bool)

(declare-fun setElem!35439 () Context!9218)

(assert (=> setNonEmpty!35439 (= setRes!35439 (and tp!1498412 (inv!81309 setElem!35439) e!3365622))))

(declare-fun setRest!35439 () (InoxSet Context!9218))

(assert (=> setNonEmpty!35439 (= z!1189 ((_ map or) (store ((as const (Array Context!9218 Bool)) false) setElem!35439 true) setRest!35439))))

(declare-fun b!5431771 () Bool)

(declare-fun res!2311568 () Bool)

(assert (=> b!5431771 (=> res!2311568 e!3365611)))

(assert (=> b!5431771 (= res!2311568 (not (matchZipper!1469 lt!2214716 (t!375199 s!2326))))))

(declare-fun b!5431772 () Bool)

(declare-fun res!2311556 () Bool)

(assert (=> b!5431772 (=> res!2311556 e!3365611)))

(assert (=> b!5431772 (= res!2311556 lt!2214712)))

(declare-fun b!5431773 () Bool)

(declare-fun res!2311540 () Bool)

(assert (=> b!5431773 (=> res!2311540 e!3365615)))

(declare-fun generalisedUnion!1154 (List!61975) Regex!15225)

(declare-fun unfocusZipperList!667 (List!61976) List!61975)

(assert (=> b!5431773 (= res!2311540 (not (= r!7292 (generalisedUnion!1154 (unfocusZipperList!667 zl!343)))))))

(declare-fun b!5431774 () Bool)

(declare-fun tp!1498416 () Bool)

(assert (=> b!5431774 (= e!3365626 tp!1498416)))

(declare-fun b!5431775 () Bool)

(assert (=> b!5431775 (= e!3365624 (not (matchZipper!1469 lt!2214716 (t!375199 s!2326))))))

(declare-fun b!5431776 () Bool)

(assert (=> b!5431776 (= e!3365617 (not e!3365615))))

(declare-fun res!2311549 () Bool)

(assert (=> b!5431776 (=> res!2311549 e!3365615)))

(assert (=> b!5431776 (= res!2311549 (not ((_ is Cons!61852) zl!343)))))

(assert (=> b!5431776 (= lt!2214726 (matchRSpec!2328 r!7292 s!2326))))

(assert (=> b!5431776 (= lt!2214726 (matchR!7410 r!7292 s!2326))))

(declare-fun lt!2214710 () Unit!154422)

(assert (=> b!5431776 (= lt!2214710 (mainMatchTheorem!2328 r!7292 s!2326))))

(declare-fun b!5431777 () Bool)

(declare-fun res!2311545 () Bool)

(assert (=> b!5431777 (=> res!2311545 e!3365621)))

(assert (=> b!5431777 (= res!2311545 e!3365614)))

(declare-fun res!2311562 () Bool)

(assert (=> b!5431777 (=> (not res!2311562) (not e!3365614))))

(assert (=> b!5431777 (= res!2311562 ((_ is Concat!24070) (regOne!30962 r!7292)))))

(assert (=> b!5431778 (= e!3365632 e!3365621)))

(declare-fun res!2311541 () Bool)

(assert (=> b!5431778 (=> res!2311541 e!3365621)))

(assert (=> b!5431778 (= res!2311541 (or (and ((_ is ElementMatch!15225) (regOne!30962 r!7292)) (= (c!947773 (regOne!30962 r!7292)) (h!68298 s!2326))) ((_ is Union!15225) (regOne!30962 r!7292))))))

(declare-fun lt!2214725 () Unit!154422)

(assert (=> b!5431778 (= lt!2214725 e!3365633)))

(declare-fun c!947772 () Bool)

(assert (=> b!5431778 (= c!947772 lt!2214727)))

(assert (=> b!5431778 (= lt!2214727 (nullable!5394 (h!68299 (exprs!5109 (h!68300 zl!343)))))))

(assert (=> b!5431778 (= (flatMap!952 z!1189 lambda!285097) (derivationStepZipperUp!597 (h!68300 zl!343) (h!68298 s!2326)))))

(declare-fun lt!2214719 () Unit!154422)

(assert (=> b!5431778 (= lt!2214719 (lemmaFlatMapOnSingletonSet!484 z!1189 (h!68300 zl!343) lambda!285097))))

(assert (=> b!5431778 (= lt!2214716 (derivationStepZipperUp!597 lt!2214705 (h!68298 s!2326)))))

(assert (=> b!5431778 (= lt!2214691 (derivationStepZipperDown!673 (h!68299 (exprs!5109 (h!68300 zl!343))) lt!2214705 (h!68298 s!2326)))))

(assert (=> b!5431778 (= lt!2214705 (Context!9219 (t!375200 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun lt!2214711 () (InoxSet Context!9218))

(assert (=> b!5431778 (= lt!2214711 (derivationStepZipperUp!597 (Context!9219 (Cons!61851 (h!68299 (exprs!5109 (h!68300 zl!343))) (t!375200 (exprs!5109 (h!68300 zl!343))))) (h!68298 s!2326)))))

(declare-fun b!5431779 () Bool)

(declare-fun tp!1498415 () Bool)

(assert (=> b!5431779 (= e!3365623 (and tp_is_empty!39703 tp!1498415))))

(declare-fun b!5431780 () Bool)

(assert (=> b!5431780 (= e!3365620 (validRegex!6961 lt!2214717))))

(assert (=> b!5431780 (= (matchR!7410 lt!2214717 s!2326) (matchZipper!1469 lt!2214702 s!2326))))

(declare-fun lt!2214694 () Unit!154422)

(declare-fun theoremZipperRegexEquiv!529 ((InoxSet Context!9218) List!61976 Regex!15225 List!61974) Unit!154422)

(assert (=> b!5431780 (= lt!2214694 (theoremZipperRegexEquiv!529 lt!2214702 lt!2214703 lt!2214717 s!2326))))

(declare-fun b!5431781 () Bool)

(assert (=> b!5431781 (= e!3365616 e!3365627)))

(declare-fun res!2311560 () Bool)

(assert (=> b!5431781 (=> res!2311560 e!3365627)))

(assert (=> b!5431781 (= res!2311560 (not (= lt!2214722 lt!2214709)))))

(assert (=> b!5431781 (= (flatMap!952 lt!2214707 lambda!285097) (derivationStepZipperUp!597 lt!2214721 (h!68298 s!2326)))))

(declare-fun lt!2214723 () Unit!154422)

(assert (=> b!5431781 (= lt!2214723 (lemmaFlatMapOnSingletonSet!484 lt!2214707 lt!2214721 lambda!285097))))

(declare-fun lt!2214728 () (InoxSet Context!9218))

(assert (=> b!5431781 (= lt!2214728 (derivationStepZipperUp!597 lt!2214721 (h!68298 s!2326)))))

(assert (=> b!5431781 (= lt!2214722 (derivationStepZipper!1464 lt!2214707 (h!68298 s!2326)))))

(assert (=> b!5431781 (= lt!2214707 (store ((as const (Array Context!9218 Bool)) false) lt!2214721 true))))

(assert (=> b!5431781 (= lt!2214721 (Context!9219 (Cons!61851 (reg!15554 (regOne!30962 r!7292)) lt!2214713)))))

(assert (= (and start!570010 res!2311548) b!5431768))

(assert (= (and b!5431768 res!2311554) b!5431769))

(assert (= (and b!5431769 res!2311573) b!5431776))

(assert (= (and b!5431776 (not res!2311549)) b!5431755))

(assert (= (and b!5431755 (not res!2311567)) b!5431749))

(assert (= (and b!5431749 (not res!2311571)) b!5431743))

(assert (= (and b!5431743 (not res!2311561)) b!5431773))

(assert (= (and b!5431773 (not res!2311540)) b!5431757))

(assert (= (and b!5431757 (not res!2311559)) b!5431770))

(assert (= (and b!5431770 (not res!2311547)) b!5431764))

(assert (= (and b!5431764 (not res!2311555)) b!5431778))

(assert (= (and b!5431778 c!947772) b!5431761))

(assert (= (and b!5431778 (not c!947772)) b!5431759))

(assert (= (and b!5431761 (not res!2311566)) b!5431762))

(assert (= (and b!5431778 (not res!2311541)) b!5431777))

(assert (= (and b!5431777 res!2311562) b!5431754))

(assert (= (and b!5431777 (not res!2311545)) b!5431766))

(assert (= (and b!5431766 (not res!2311542)) b!5431765))

(assert (= (and b!5431765 (not res!2311569)) b!5431781))

(assert (= (and b!5431781 (not res!2311560)) b!5431742))

(assert (= (and b!5431742 (not res!2311565)) b!5431739))

(assert (= (and b!5431739 (not res!2311543)) b!5431747))

(assert (= (and b!5431747 (not res!2311552)) b!5431746))

(assert (= (and b!5431746 (not res!2311551)) b!5431756))

(assert (= (and b!5431756 (not res!2311570)) b!5431763))

(assert (= (and b!5431763 (not res!2311563)) b!5431758))

(assert (= (and b!5431758 (not res!2311550)) b!5431751))

(assert (= (and b!5431751 (not res!2311553)) b!5431760))

(assert (= (and b!5431760 (not res!2311564)) b!5431750))

(assert (= (and b!5431750 res!2311572) b!5431775))

(assert (= (and b!5431750 (not res!2311544)) b!5431772))

(assert (= (and b!5431772 (not res!2311556)) b!5431771))

(assert (= (and b!5431771 (not res!2311568)) b!5431740))

(assert (= (and b!5431740 (not res!2311558)) b!5431741))

(assert (= (and b!5431741 (not res!2311557)) b!5431748))

(assert (= (and b!5431748 (not res!2311546)) b!5431780))

(assert (= (and start!570010 ((_ is ElementMatch!15225) r!7292)) b!5431745))

(assert (= (and start!570010 ((_ is Concat!24070) r!7292)) b!5431744))

(assert (= (and start!570010 ((_ is Star!15225) r!7292)) b!5431738))

(assert (= (and start!570010 ((_ is Union!15225) r!7292)) b!5431753))

(assert (= (and start!570010 condSetEmpty!35439) setIsEmpty!35439))

(assert (= (and start!570010 (not condSetEmpty!35439)) setNonEmpty!35439))

(assert (= setNonEmpty!35439 b!5431767))

(assert (= b!5431752 b!5431774))

(assert (= (and start!570010 ((_ is Cons!61852) zl!343)) b!5431752))

(assert (= (and start!570010 ((_ is Cons!61850) s!2326)) b!5431779))

(declare-fun m!6454546 () Bool)

(assert (=> b!5431769 m!6454546))

(declare-fun m!6454548 () Bool)

(assert (=> b!5431781 m!6454548))

(declare-fun m!6454550 () Bool)

(assert (=> b!5431781 m!6454550))

(declare-fun m!6454552 () Bool)

(assert (=> b!5431781 m!6454552))

(declare-fun m!6454554 () Bool)

(assert (=> b!5431781 m!6454554))

(declare-fun m!6454556 () Bool)

(assert (=> b!5431781 m!6454556))

(declare-fun m!6454558 () Bool)

(assert (=> b!5431775 m!6454558))

(declare-fun m!6454560 () Bool)

(assert (=> b!5431776 m!6454560))

(declare-fun m!6454562 () Bool)

(assert (=> b!5431776 m!6454562))

(declare-fun m!6454564 () Bool)

(assert (=> b!5431776 m!6454564))

(declare-fun m!6454566 () Bool)

(assert (=> b!5431768 m!6454566))

(declare-fun m!6454568 () Bool)

(assert (=> b!5431756 m!6454568))

(declare-fun m!6454570 () Bool)

(assert (=> b!5431756 m!6454570))

(declare-fun m!6454572 () Bool)

(assert (=> b!5431756 m!6454572))

(declare-fun m!6454574 () Bool)

(assert (=> b!5431756 m!6454574))

(declare-fun m!6454576 () Bool)

(assert (=> b!5431756 m!6454576))

(declare-fun m!6454578 () Bool)

(assert (=> b!5431756 m!6454578))

(declare-fun m!6454580 () Bool)

(assert (=> b!5431756 m!6454580))

(declare-fun m!6454582 () Bool)

(assert (=> b!5431756 m!6454582))

(declare-fun m!6454584 () Bool)

(assert (=> b!5431756 m!6454584))

(declare-fun m!6454586 () Bool)

(assert (=> b!5431746 m!6454586))

(declare-fun m!6454588 () Bool)

(assert (=> b!5431748 m!6454588))

(declare-fun m!6454590 () Bool)

(assert (=> b!5431748 m!6454590))

(declare-fun m!6454592 () Bool)

(assert (=> setNonEmpty!35439 m!6454592))

(assert (=> b!5431762 m!6454558))

(declare-fun m!6454594 () Bool)

(assert (=> b!5431763 m!6454594))

(declare-fun m!6454596 () Bool)

(assert (=> b!5431773 m!6454596))

(assert (=> b!5431773 m!6454596))

(declare-fun m!6454598 () Bool)

(assert (=> b!5431773 m!6454598))

(assert (=> b!5431771 m!6454558))

(declare-fun m!6454600 () Bool)

(assert (=> b!5431778 m!6454600))

(declare-fun m!6454602 () Bool)

(assert (=> b!5431778 m!6454602))

(declare-fun m!6454604 () Bool)

(assert (=> b!5431778 m!6454604))

(declare-fun m!6454606 () Bool)

(assert (=> b!5431778 m!6454606))

(declare-fun m!6454608 () Bool)

(assert (=> b!5431778 m!6454608))

(declare-fun m!6454610 () Bool)

(assert (=> b!5431778 m!6454610))

(declare-fun m!6454612 () Bool)

(assert (=> b!5431778 m!6454612))

(declare-fun m!6454614 () Bool)

(assert (=> b!5431770 m!6454614))

(declare-fun m!6454616 () Bool)

(assert (=> b!5431770 m!6454616))

(declare-fun m!6454618 () Bool)

(assert (=> b!5431770 m!6454618))

(declare-fun m!6454620 () Bool)

(assert (=> b!5431770 m!6454620))

(declare-fun m!6454622 () Bool)

(assert (=> b!5431770 m!6454622))

(assert (=> b!5431770 m!6454614))

(assert (=> b!5431770 m!6454616))

(declare-fun m!6454624 () Bool)

(assert (=> b!5431770 m!6454624))

(declare-fun m!6454626 () Bool)

(assert (=> b!5431761 m!6454626))

(declare-fun m!6454628 () Bool)

(assert (=> b!5431761 m!6454628))

(declare-fun m!6454630 () Bool)

(assert (=> b!5431761 m!6454630))

(declare-fun m!6454632 () Bool)

(assert (=> b!5431752 m!6454632))

(declare-fun m!6454634 () Bool)

(assert (=> b!5431765 m!6454634))

(declare-fun m!6454636 () Bool)

(assert (=> start!570010 m!6454636))

(declare-fun m!6454638 () Bool)

(assert (=> b!5431751 m!6454638))

(declare-fun m!6454640 () Bool)

(assert (=> b!5431764 m!6454640))

(declare-fun m!6454642 () Bool)

(assert (=> b!5431780 m!6454642))

(declare-fun m!6454644 () Bool)

(assert (=> b!5431780 m!6454644))

(declare-fun m!6454646 () Bool)

(assert (=> b!5431780 m!6454646))

(declare-fun m!6454648 () Bool)

(assert (=> b!5431780 m!6454648))

(declare-fun m!6454650 () Bool)

(assert (=> b!5431755 m!6454650))

(assert (=> b!5431750 m!6454628))

(declare-fun m!6454652 () Bool)

(assert (=> b!5431749 m!6454652))

(declare-fun m!6454654 () Bool)

(assert (=> b!5431740 m!6454654))

(declare-fun m!6454656 () Bool)

(assert (=> b!5431740 m!6454656))

(declare-fun m!6454658 () Bool)

(assert (=> b!5431740 m!6454658))

(declare-fun m!6454660 () Bool)

(assert (=> b!5431740 m!6454660))

(assert (=> b!5431740 m!6454612))

(declare-fun m!6454662 () Bool)

(assert (=> b!5431742 m!6454662))

(declare-fun m!6454664 () Bool)

(assert (=> b!5431742 m!6454664))

(declare-fun m!6454666 () Bool)

(assert (=> b!5431754 m!6454666))

(declare-fun m!6454668 () Bool)

(assert (=> b!5431758 m!6454668))

(declare-fun m!6454670 () Bool)

(assert (=> b!5431758 m!6454670))

(declare-fun m!6454672 () Bool)

(assert (=> b!5431758 m!6454672))

(declare-fun m!6454674 () Bool)

(assert (=> b!5431741 m!6454674))

(declare-fun m!6454676 () Bool)

(assert (=> b!5431741 m!6454676))

(declare-fun m!6454678 () Bool)

(assert (=> b!5431741 m!6454678))

(check-sat (not b!5431741) (not b!5431762) (not b!5431751) (not b!5431755) (not b!5431740) (not b!5431763) (not b!5431769) (not b!5431758) (not b!5431776) (not b!5431746) (not b!5431742) (not b!5431767) (not b!5431738) (not b!5431775) (not b!5431774) (not b!5431765) (not b!5431779) (not b!5431768) (not b!5431773) (not start!570010) (not b!5431761) (not b!5431780) (not b!5431756) (not b!5431750) (not b!5431778) (not b!5431781) (not b!5431748) (not setNonEmpty!35439) (not b!5431770) (not b!5431764) (not b!5431752) (not b!5431744) tp_is_empty!39703 (not b!5431749) (not b!5431753) (not b!5431771) (not b!5431754))
(check-sat)
(get-model)

(declare-fun b!5432065 () Bool)

(assert (=> b!5432065 true))

(declare-fun bs!1254590 () Bool)

(declare-fun b!5432067 () Bool)

(assert (= bs!1254590 (and b!5432067 b!5432065)))

(declare-fun lt!2214785 () Int)

(declare-fun lambda!285133 () Int)

(declare-fun lt!2214782 () Int)

(declare-fun lambda!285134 () Int)

(assert (=> bs!1254590 (= (= lt!2214785 lt!2214782) (= lambda!285134 lambda!285133))))

(assert (=> b!5432067 true))

(declare-fun d!1731830 () Bool)

(declare-fun e!3365800 () Bool)

(assert (=> d!1731830 e!3365800))

(declare-fun res!2311693 () Bool)

(assert (=> d!1731830 (=> (not res!2311693) (not e!3365800))))

(assert (=> d!1731830 (= res!2311693 (>= lt!2214785 0))))

(declare-fun e!3365799 () Int)

(assert (=> d!1731830 (= lt!2214785 e!3365799)))

(declare-fun c!947859 () Bool)

(assert (=> d!1731830 (= c!947859 ((_ is Cons!61852) zl!343))))

(assert (=> d!1731830 (= (zipperDepth!166 zl!343) lt!2214785)))

(assert (=> b!5432065 (= e!3365799 lt!2214782)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!94 (Context!9218) Int)

(assert (=> b!5432065 (= lt!2214782 (maxBigInt!0 (contextDepth!94 (h!68300 zl!343)) (zipperDepth!166 (t!375201 zl!343))))))

(declare-fun lambda!285132 () Int)

(declare-fun lt!2214784 () Unit!154422)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!88 (List!61976 Int Int Int) Unit!154422)

(assert (=> b!5432065 (= lt!2214784 (lemmaForallContextDepthBiggerThanTransitive!88 (t!375201 zl!343) lt!2214782 (zipperDepth!166 (t!375201 zl!343)) lambda!285132))))

(declare-fun forall!14564 (List!61976 Int) Bool)

(assert (=> b!5432065 (forall!14564 (t!375201 zl!343) lambda!285133)))

(declare-fun lt!2214783 () Unit!154422)

(assert (=> b!5432065 (= lt!2214783 lt!2214784)))

(declare-fun b!5432066 () Bool)

(assert (=> b!5432066 (= e!3365799 0)))

(assert (=> b!5432067 (= e!3365800 (forall!14564 zl!343 lambda!285134))))

(assert (= (and d!1731830 c!947859) b!5432065))

(assert (= (and d!1731830 (not c!947859)) b!5432066))

(assert (= (and d!1731830 res!2311693) b!5432067))

(declare-fun m!6454864 () Bool)

(assert (=> b!5432065 m!6454864))

(declare-fun m!6454866 () Bool)

(assert (=> b!5432065 m!6454866))

(declare-fun m!6454868 () Bool)

(assert (=> b!5432065 m!6454868))

(assert (=> b!5432065 m!6454866))

(declare-fun m!6454870 () Bool)

(assert (=> b!5432065 m!6454870))

(assert (=> b!5432065 m!6454864))

(assert (=> b!5432065 m!6454866))

(declare-fun m!6454872 () Bool)

(assert (=> b!5432065 m!6454872))

(declare-fun m!6454874 () Bool)

(assert (=> b!5432067 m!6454874))

(assert (=> b!5431748 d!1731830))

(declare-fun bs!1254591 () Bool)

(declare-fun b!5432092 () Bool)

(assert (= bs!1254591 (and b!5432092 b!5432065)))

(declare-fun lambda!285135 () Int)

(assert (=> bs!1254591 (= lambda!285135 lambda!285132)))

(declare-fun lt!2214786 () Int)

(declare-fun lambda!285136 () Int)

(assert (=> bs!1254591 (= (= lt!2214786 lt!2214782) (= lambda!285136 lambda!285133))))

(declare-fun bs!1254592 () Bool)

(assert (= bs!1254592 (and b!5432092 b!5432067)))

(assert (=> bs!1254592 (= (= lt!2214786 lt!2214785) (= lambda!285136 lambda!285134))))

(assert (=> b!5432092 true))

(declare-fun bs!1254593 () Bool)

(declare-fun b!5432094 () Bool)

(assert (= bs!1254593 (and b!5432094 b!5432065)))

(declare-fun lambda!285137 () Int)

(declare-fun lt!2214789 () Int)

(assert (=> bs!1254593 (= (= lt!2214789 lt!2214782) (= lambda!285137 lambda!285133))))

(declare-fun bs!1254594 () Bool)

(assert (= bs!1254594 (and b!5432094 b!5432067)))

(assert (=> bs!1254594 (= (= lt!2214789 lt!2214785) (= lambda!285137 lambda!285134))))

(declare-fun bs!1254595 () Bool)

(assert (= bs!1254595 (and b!5432094 b!5432092)))

(assert (=> bs!1254595 (= (= lt!2214789 lt!2214786) (= lambda!285137 lambda!285136))))

(assert (=> b!5432094 true))

(declare-fun d!1731842 () Bool)

(declare-fun e!3365814 () Bool)

(assert (=> d!1731842 e!3365814))

(declare-fun res!2311696 () Bool)

(assert (=> d!1731842 (=> (not res!2311696) (not e!3365814))))

(assert (=> d!1731842 (= res!2311696 (>= lt!2214789 0))))

(declare-fun e!3365813 () Int)

(assert (=> d!1731842 (= lt!2214789 e!3365813)))

(declare-fun c!947870 () Bool)

(assert (=> d!1731842 (= c!947870 ((_ is Cons!61852) lt!2214703))))

(assert (=> d!1731842 (= (zipperDepth!166 lt!2214703) lt!2214789)))

(assert (=> b!5432092 (= e!3365813 lt!2214786)))

(assert (=> b!5432092 (= lt!2214786 (maxBigInt!0 (contextDepth!94 (h!68300 lt!2214703)) (zipperDepth!166 (t!375201 lt!2214703))))))

(declare-fun lt!2214788 () Unit!154422)

(assert (=> b!5432092 (= lt!2214788 (lemmaForallContextDepthBiggerThanTransitive!88 (t!375201 lt!2214703) lt!2214786 (zipperDepth!166 (t!375201 lt!2214703)) lambda!285135))))

(assert (=> b!5432092 (forall!14564 (t!375201 lt!2214703) lambda!285136)))

(declare-fun lt!2214787 () Unit!154422)

(assert (=> b!5432092 (= lt!2214787 lt!2214788)))

(declare-fun b!5432093 () Bool)

(assert (=> b!5432093 (= e!3365813 0)))

(assert (=> b!5432094 (= e!3365814 (forall!14564 lt!2214703 lambda!285137))))

(assert (= (and d!1731842 c!947870) b!5432092))

(assert (= (and d!1731842 (not c!947870)) b!5432093))

(assert (= (and d!1731842 res!2311696) b!5432094))

(declare-fun m!6454876 () Bool)

(assert (=> b!5432092 m!6454876))

(declare-fun m!6454878 () Bool)

(assert (=> b!5432092 m!6454878))

(declare-fun m!6454880 () Bool)

(assert (=> b!5432092 m!6454880))

(assert (=> b!5432092 m!6454878))

(declare-fun m!6454882 () Bool)

(assert (=> b!5432092 m!6454882))

(assert (=> b!5432092 m!6454876))

(assert (=> b!5432092 m!6454878))

(declare-fun m!6454884 () Bool)

(assert (=> b!5432092 m!6454884))

(declare-fun m!6454886 () Bool)

(assert (=> b!5432094 m!6454886))

(assert (=> b!5431748 d!1731842))

(declare-fun d!1731844 () Bool)

(declare-fun e!3365832 () Bool)

(assert (=> d!1731844 e!3365832))

(declare-fun res!2311703 () Bool)

(assert (=> d!1731844 (=> (not res!2311703) (not e!3365832))))

(declare-fun lt!2214793 () List!61976)

(declare-fun noDuplicate!1418 (List!61976) Bool)

(assert (=> d!1731844 (= res!2311703 (noDuplicate!1418 lt!2214793))))

(declare-fun choose!41207 ((InoxSet Context!9218)) List!61976)

(assert (=> d!1731844 (= lt!2214793 (choose!41207 z!1189))))

(assert (=> d!1731844 (= (toList!9009 z!1189) lt!2214793)))

(declare-fun b!5432123 () Bool)

(declare-fun content!11135 (List!61976) (InoxSet Context!9218))

(assert (=> b!5432123 (= e!3365832 (= (content!11135 lt!2214793) z!1189))))

(assert (= (and d!1731844 res!2311703) b!5432123))

(declare-fun m!6454922 () Bool)

(assert (=> d!1731844 m!6454922))

(declare-fun m!6454924 () Bool)

(assert (=> d!1731844 m!6454924))

(declare-fun m!6454926 () Bool)

(assert (=> b!5432123 m!6454926))

(assert (=> b!5431768 d!1731844))

(declare-fun d!1731860 () Bool)

(declare-fun lt!2214798 () Regex!15225)

(assert (=> d!1731860 (validRegex!6961 lt!2214798)))

(assert (=> d!1731860 (= lt!2214798 (generalisedUnion!1154 (unfocusZipperList!667 (Cons!61852 lt!2214721 Nil!61852))))))

(assert (=> d!1731860 (= (unfocusZipper!967 (Cons!61852 lt!2214721 Nil!61852)) lt!2214798)))

(declare-fun bs!1254599 () Bool)

(assert (= bs!1254599 d!1731860))

(declare-fun m!6454928 () Bool)

(assert (=> bs!1254599 m!6454928))

(declare-fun m!6454930 () Bool)

(assert (=> bs!1254599 m!6454930))

(assert (=> bs!1254599 m!6454930))

(declare-fun m!6454932 () Bool)

(assert (=> bs!1254599 m!6454932))

(assert (=> b!5431746 d!1731860))

(declare-fun bm!389103 () Bool)

(declare-fun call!389111 () (InoxSet Context!9218))

(declare-fun call!389110 () (InoxSet Context!9218))

(assert (=> bm!389103 (= call!389111 call!389110)))

(declare-fun b!5432271 () Bool)

(declare-fun c!947944 () Bool)

(declare-fun e!3365918 () Bool)

(assert (=> b!5432271 (= c!947944 e!3365918)))

(declare-fun res!2311733 () Bool)

(assert (=> b!5432271 (=> (not res!2311733) (not e!3365918))))

(assert (=> b!5432271 (= res!2311733 ((_ is Concat!24070) (reg!15554 (regOne!30962 r!7292))))))

(declare-fun e!3365917 () (InoxSet Context!9218))

(declare-fun e!3365919 () (InoxSet Context!9218))

(assert (=> b!5432271 (= e!3365917 e!3365919)))

(declare-fun bm!389104 () Bool)

(declare-fun call!389109 () List!61975)

(declare-fun call!389112 () List!61975)

(assert (=> bm!389104 (= call!389109 call!389112)))

(declare-fun call!389108 () (InoxSet Context!9218))

(declare-fun c!947942 () Bool)

(declare-fun bm!389105 () Bool)

(assert (=> bm!389105 (= call!389108 (derivationStepZipperDown!673 (ite c!947942 (regTwo!30963 (reg!15554 (regOne!30962 r!7292))) (regOne!30962 (reg!15554 (regOne!30962 r!7292)))) (ite c!947942 lt!2214693 (Context!9219 call!389112)) (h!68298 s!2326)))))

(declare-fun b!5432272 () Bool)

(declare-fun e!3365920 () (InoxSet Context!9218))

(assert (=> b!5432272 (= e!3365920 ((as const (Array Context!9218 Bool)) false))))

(declare-fun b!5432273 () Bool)

(declare-fun e!3365916 () (InoxSet Context!9218))

(assert (=> b!5432273 (= e!3365916 (store ((as const (Array Context!9218 Bool)) false) lt!2214693 true))))

(declare-fun b!5432274 () Bool)

(assert (=> b!5432274 (= e!3365917 ((_ map or) call!389110 call!389108))))

(declare-fun b!5432275 () Bool)

(declare-fun c!947943 () Bool)

(assert (=> b!5432275 (= c!947943 ((_ is Star!15225) (reg!15554 (regOne!30962 r!7292))))))

(declare-fun e!3365921 () (InoxSet Context!9218))

(assert (=> b!5432275 (= e!3365921 e!3365920)))

(declare-fun bm!389106 () Bool)

(declare-fun call!389113 () (InoxSet Context!9218))

(assert (=> bm!389106 (= call!389113 call!389111)))

(declare-fun d!1731862 () Bool)

(declare-fun c!947945 () Bool)

(assert (=> d!1731862 (= c!947945 (and ((_ is ElementMatch!15225) (reg!15554 (regOne!30962 r!7292))) (= (c!947773 (reg!15554 (regOne!30962 r!7292))) (h!68298 s!2326))))))

(assert (=> d!1731862 (= (derivationStepZipperDown!673 (reg!15554 (regOne!30962 r!7292)) lt!2214693 (h!68298 s!2326)) e!3365916)))

(declare-fun b!5432276 () Bool)

(assert (=> b!5432276 (= e!3365920 call!389113)))

(declare-fun b!5432277 () Bool)

(assert (=> b!5432277 (= e!3365919 ((_ map or) call!389108 call!389111))))

(declare-fun b!5432278 () Bool)

(assert (=> b!5432278 (= e!3365919 e!3365921)))

(declare-fun c!947946 () Bool)

(assert (=> b!5432278 (= c!947946 ((_ is Concat!24070) (reg!15554 (regOne!30962 r!7292))))))

(declare-fun bm!389107 () Bool)

(declare-fun $colon$colon!1518 (List!61975 Regex!15225) List!61975)

(assert (=> bm!389107 (= call!389112 ($colon$colon!1518 (exprs!5109 lt!2214693) (ite (or c!947944 c!947946) (regTwo!30962 (reg!15554 (regOne!30962 r!7292))) (reg!15554 (regOne!30962 r!7292)))))))

(declare-fun b!5432279 () Bool)

(assert (=> b!5432279 (= e!3365916 e!3365917)))

(assert (=> b!5432279 (= c!947942 ((_ is Union!15225) (reg!15554 (regOne!30962 r!7292))))))

(declare-fun b!5432280 () Bool)

(assert (=> b!5432280 (= e!3365918 (nullable!5394 (regOne!30962 (reg!15554 (regOne!30962 r!7292)))))))

(declare-fun bm!389108 () Bool)

(assert (=> bm!389108 (= call!389110 (derivationStepZipperDown!673 (ite c!947942 (regOne!30963 (reg!15554 (regOne!30962 r!7292))) (ite c!947944 (regTwo!30962 (reg!15554 (regOne!30962 r!7292))) (ite c!947946 (regOne!30962 (reg!15554 (regOne!30962 r!7292))) (reg!15554 (reg!15554 (regOne!30962 r!7292)))))) (ite (or c!947942 c!947944) lt!2214693 (Context!9219 call!389109)) (h!68298 s!2326)))))

(declare-fun b!5432281 () Bool)

(assert (=> b!5432281 (= e!3365921 call!389113)))

(assert (= (and d!1731862 c!947945) b!5432273))

(assert (= (and d!1731862 (not c!947945)) b!5432279))

(assert (= (and b!5432279 c!947942) b!5432274))

(assert (= (and b!5432279 (not c!947942)) b!5432271))

(assert (= (and b!5432271 res!2311733) b!5432280))

(assert (= (and b!5432271 c!947944) b!5432277))

(assert (= (and b!5432271 (not c!947944)) b!5432278))

(assert (= (and b!5432278 c!947946) b!5432281))

(assert (= (and b!5432278 (not c!947946)) b!5432275))

(assert (= (and b!5432275 c!947943) b!5432276))

(assert (= (and b!5432275 (not c!947943)) b!5432272))

(assert (= (or b!5432281 b!5432276) bm!389104))

(assert (= (or b!5432281 b!5432276) bm!389106))

(assert (= (or b!5432277 bm!389104) bm!389107))

(assert (= (or b!5432277 bm!389106) bm!389103))

(assert (= (or b!5432274 b!5432277) bm!389105))

(assert (= (or b!5432274 bm!389103) bm!389108))

(declare-fun m!6455048 () Bool)

(assert (=> b!5432280 m!6455048))

(declare-fun m!6455050 () Bool)

(assert (=> bm!389105 m!6455050))

(declare-fun m!6455052 () Bool)

(assert (=> bm!389108 m!6455052))

(assert (=> b!5432273 m!6454574))

(declare-fun m!6455054 () Bool)

(assert (=> bm!389107 m!6455054))

(assert (=> b!5431765 d!1731862))

(declare-fun d!1731908 () Bool)

(assert (=> d!1731908 (= (isEmpty!33853 (t!375200 (exprs!5109 (h!68300 zl!343)))) ((_ is Nil!61851) (t!375200 (exprs!5109 (h!68300 zl!343)))))))

(assert (=> b!5431764 d!1731908))

(declare-fun d!1731910 () Bool)

(declare-fun lt!2214808 () Regex!15225)

(assert (=> d!1731910 (validRegex!6961 lt!2214808)))

(assert (=> d!1731910 (= lt!2214808 (generalisedUnion!1154 (unfocusZipperList!667 (Cons!61852 lt!2214693 Nil!61852))))))

(assert (=> d!1731910 (= (unfocusZipper!967 (Cons!61852 lt!2214693 Nil!61852)) lt!2214808)))

(declare-fun bs!1254629 () Bool)

(assert (= bs!1254629 d!1731910))

(declare-fun m!6455056 () Bool)

(assert (=> bs!1254629 m!6455056))

(declare-fun m!6455058 () Bool)

(assert (=> bs!1254629 m!6455058))

(assert (=> bs!1254629 m!6455058))

(declare-fun m!6455060 () Bool)

(assert (=> bs!1254629 m!6455060))

(assert (=> b!5431763 d!1731910))

(declare-fun d!1731912 () Bool)

(declare-fun c!947958 () Bool)

(declare-fun isEmpty!33856 (List!61974) Bool)

(assert (=> d!1731912 (= c!947958 (isEmpty!33856 s!2326))))

(declare-fun e!3365929 () Bool)

(assert (=> d!1731912 (= (matchZipper!1469 lt!2214707 s!2326) e!3365929)))

(declare-fun b!5432294 () Bool)

(declare-fun nullableZipper!1468 ((InoxSet Context!9218)) Bool)

(assert (=> b!5432294 (= e!3365929 (nullableZipper!1468 lt!2214707))))

(declare-fun b!5432295 () Bool)

(declare-fun head!11653 (List!61974) C!30720)

(declare-fun tail!10750 (List!61974) List!61974)

(assert (=> b!5432295 (= e!3365929 (matchZipper!1469 (derivationStepZipper!1464 lt!2214707 (head!11653 s!2326)) (tail!10750 s!2326)))))

(assert (= (and d!1731912 c!947958) b!5432294))

(assert (= (and d!1731912 (not c!947958)) b!5432295))

(declare-fun m!6455062 () Bool)

(assert (=> d!1731912 m!6455062))

(declare-fun m!6455064 () Bool)

(assert (=> b!5432294 m!6455064))

(declare-fun m!6455066 () Bool)

(assert (=> b!5432295 m!6455066))

(assert (=> b!5432295 m!6455066))

(declare-fun m!6455068 () Bool)

(assert (=> b!5432295 m!6455068))

(declare-fun m!6455070 () Bool)

(assert (=> b!5432295 m!6455070))

(assert (=> b!5432295 m!6455068))

(assert (=> b!5432295 m!6455070))

(declare-fun m!6455072 () Bool)

(assert (=> b!5432295 m!6455072))

(assert (=> b!5431742 d!1731912))

(declare-fun d!1731914 () Bool)

(declare-fun c!947960 () Bool)

(assert (=> d!1731914 (= c!947960 (isEmpty!33856 (t!375199 s!2326)))))

(declare-fun e!3365932 () Bool)

(assert (=> d!1731914 (= (matchZipper!1469 lt!2214722 (t!375199 s!2326)) e!3365932)))

(declare-fun b!5432299 () Bool)

(assert (=> b!5432299 (= e!3365932 (nullableZipper!1468 lt!2214722))))

(declare-fun b!5432300 () Bool)

(assert (=> b!5432300 (= e!3365932 (matchZipper!1469 (derivationStepZipper!1464 lt!2214722 (head!11653 (t!375199 s!2326))) (tail!10750 (t!375199 s!2326))))))

(assert (= (and d!1731914 c!947960) b!5432299))

(assert (= (and d!1731914 (not c!947960)) b!5432300))

(declare-fun m!6455074 () Bool)

(assert (=> d!1731914 m!6455074))

(declare-fun m!6455076 () Bool)

(assert (=> b!5432299 m!6455076))

(declare-fun m!6455078 () Bool)

(assert (=> b!5432300 m!6455078))

(assert (=> b!5432300 m!6455078))

(declare-fun m!6455080 () Bool)

(assert (=> b!5432300 m!6455080))

(declare-fun m!6455082 () Bool)

(assert (=> b!5432300 m!6455082))

(assert (=> b!5432300 m!6455080))

(assert (=> b!5432300 m!6455082))

(declare-fun m!6455084 () Bool)

(assert (=> b!5432300 m!6455084))

(assert (=> b!5431742 d!1731914))

(declare-fun d!1731916 () Bool)

(declare-fun c!947961 () Bool)

(assert (=> d!1731916 (= c!947961 (isEmpty!33856 (t!375199 s!2326)))))

(declare-fun e!3365933 () Bool)

(assert (=> d!1731916 (= (matchZipper!1469 lt!2214716 (t!375199 s!2326)) e!3365933)))

(declare-fun b!5432303 () Bool)

(assert (=> b!5432303 (= e!3365933 (nullableZipper!1468 lt!2214716))))

(declare-fun b!5432304 () Bool)

(assert (=> b!5432304 (= e!3365933 (matchZipper!1469 (derivationStepZipper!1464 lt!2214716 (head!11653 (t!375199 s!2326))) (tail!10750 (t!375199 s!2326))))))

(assert (= (and d!1731916 c!947961) b!5432303))

(assert (= (and d!1731916 (not c!947961)) b!5432304))

(assert (=> d!1731916 m!6455074))

(declare-fun m!6455096 () Bool)

(assert (=> b!5432303 m!6455096))

(assert (=> b!5432304 m!6455078))

(assert (=> b!5432304 m!6455078))

(declare-fun m!6455100 () Bool)

(assert (=> b!5432304 m!6455100))

(assert (=> b!5432304 m!6455082))

(assert (=> b!5432304 m!6455100))

(assert (=> b!5432304 m!6455082))

(declare-fun m!6455102 () Bool)

(assert (=> b!5432304 m!6455102))

(assert (=> b!5431762 d!1731916))

(declare-fun b!5432403 () Bool)

(declare-fun e!3365989 () Bool)

(declare-fun lt!2214830 () Int)

(declare-fun call!389129 () Int)

(assert (=> b!5432403 (= e!3365989 (> lt!2214830 call!389129))))

(declare-fun bm!389123 () Bool)

(declare-fun call!389132 () Int)

(assert (=> bm!389123 (= call!389129 call!389132)))

(declare-fun b!5432404 () Bool)

(declare-fun e!3365986 () Bool)

(declare-fun call!389134 () Int)

(assert (=> b!5432404 (= e!3365986 (> lt!2214830 call!389134))))

(declare-fun b!5432405 () Bool)

(declare-fun e!3365984 () Int)

(declare-fun e!3365985 () Int)

(assert (=> b!5432405 (= e!3365984 e!3365985)))

(declare-fun c!947984 () Bool)

(assert (=> b!5432405 (= c!947984 ((_ is Concat!24070) r!7292))))

(declare-fun b!5432406 () Bool)

(declare-fun c!947985 () Bool)

(assert (=> b!5432406 (= c!947985 ((_ is Star!15225) r!7292))))

(declare-fun e!3365993 () Bool)

(assert (=> b!5432406 (= e!3365993 e!3365989)))

(declare-fun b!5432407 () Bool)

(declare-fun e!3365991 () Int)

(declare-fun e!3365987 () Int)

(assert (=> b!5432407 (= e!3365991 e!3365987)))

(declare-fun c!947980 () Bool)

(assert (=> b!5432407 (= c!947980 ((_ is Star!15225) r!7292))))

(declare-fun bm!389124 () Bool)

(declare-fun call!389128 () Int)

(declare-fun c!947979 () Bool)

(assert (=> bm!389124 (= call!389128 (regexDepth!181 (ite c!947979 (regOne!30963 r!7292) (regTwo!30962 r!7292))))))

(declare-fun b!5432408 () Bool)

(declare-fun res!2311747 () Bool)

(assert (=> b!5432408 (=> (not res!2311747) (not e!3365986))))

(assert (=> b!5432408 (= res!2311747 (> lt!2214830 call!389129))))

(assert (=> b!5432408 (= e!3365993 e!3365986)))

(declare-fun b!5432409 () Bool)

(declare-fun e!3365992 () Bool)

(declare-fun e!3365988 () Bool)

(assert (=> b!5432409 (= e!3365992 e!3365988)))

(declare-fun c!947983 () Bool)

(assert (=> b!5432409 (= c!947983 ((_ is Union!15225) r!7292))))

(declare-fun b!5432410 () Bool)

(assert (=> b!5432410 (= e!3365988 e!3365993)))

(declare-fun c!947982 () Bool)

(assert (=> b!5432410 (= c!947982 ((_ is Concat!24070) r!7292))))

(declare-fun bm!389125 () Bool)

(declare-fun call!389130 () Int)

(declare-fun call!389133 () Int)

(assert (=> bm!389125 (= call!389130 call!389133)))

(declare-fun b!5432411 () Bool)

(declare-fun call!389131 () Int)

(assert (=> b!5432411 (= e!3365985 (+ 1 call!389131))))

(declare-fun b!5432412 () Bool)

(assert (=> b!5432412 (= e!3365989 (= lt!2214830 1))))

(declare-fun bm!389126 () Bool)

(assert (=> bm!389126 (= call!389133 (regexDepth!181 (ite c!947980 (reg!15554 r!7292) (ite c!947979 (regTwo!30963 r!7292) (regOne!30962 r!7292)))))))

(declare-fun bm!389127 () Bool)

(assert (=> bm!389127 (= call!389134 (regexDepth!181 (ite c!947983 (regTwo!30963 r!7292) (regTwo!30962 r!7292))))))

(declare-fun bm!389129 () Bool)

(assert (=> bm!389129 (= call!389132 (regexDepth!181 (ite c!947983 (regOne!30963 r!7292) (ite c!947982 (regOne!30962 r!7292) (reg!15554 r!7292)))))))

(declare-fun b!5432413 () Bool)

(assert (=> b!5432413 (= e!3365987 (+ 1 call!389133))))

(declare-fun b!5432414 () Bool)

(assert (=> b!5432414 (= e!3365984 (+ 1 call!389131))))

(declare-fun b!5432415 () Bool)

(assert (=> b!5432415 (= e!3365985 1)))

(declare-fun b!5432416 () Bool)

(assert (=> b!5432416 (= c!947979 ((_ is Union!15225) r!7292))))

(assert (=> b!5432416 (= e!3365987 e!3365984)))

(declare-fun b!5432417 () Bool)

(declare-fun e!3365990 () Bool)

(assert (=> b!5432417 (= e!3365988 e!3365990)))

(declare-fun res!2311748 () Bool)

(assert (=> b!5432417 (= res!2311748 (> lt!2214830 call!389132))))

(assert (=> b!5432417 (=> (not res!2311748) (not e!3365990))))

(declare-fun b!5432418 () Bool)

(assert (=> b!5432418 (= e!3365990 (> lt!2214830 call!389134))))

(declare-fun b!5432419 () Bool)

(assert (=> b!5432419 (= e!3365991 1)))

(declare-fun bm!389128 () Bool)

(assert (=> bm!389128 (= call!389131 (maxBigInt!0 (ite c!947979 call!389128 call!389130) (ite c!947979 call!389130 call!389128)))))

(declare-fun d!1731920 () Bool)

(assert (=> d!1731920 e!3365992))

(declare-fun res!2311749 () Bool)

(assert (=> d!1731920 (=> (not res!2311749) (not e!3365992))))

(assert (=> d!1731920 (= res!2311749 (> lt!2214830 0))))

(assert (=> d!1731920 (= lt!2214830 e!3365991)))

(declare-fun c!947981 () Bool)

(assert (=> d!1731920 (= c!947981 ((_ is ElementMatch!15225) r!7292))))

(assert (=> d!1731920 (= (regexDepth!181 r!7292) lt!2214830)))

(assert (= (and d!1731920 c!947981) b!5432419))

(assert (= (and d!1731920 (not c!947981)) b!5432407))

(assert (= (and b!5432407 c!947980) b!5432413))

(assert (= (and b!5432407 (not c!947980)) b!5432416))

(assert (= (and b!5432416 c!947979) b!5432414))

(assert (= (and b!5432416 (not c!947979)) b!5432405))

(assert (= (and b!5432405 c!947984) b!5432411))

(assert (= (and b!5432405 (not c!947984)) b!5432415))

(assert (= (or b!5432414 b!5432411) bm!389125))

(assert (= (or b!5432414 b!5432411) bm!389124))

(assert (= (or b!5432414 b!5432411) bm!389128))

(assert (= (or b!5432413 bm!389125) bm!389126))

(assert (= (and d!1731920 res!2311749) b!5432409))

(assert (= (and b!5432409 c!947983) b!5432417))

(assert (= (and b!5432409 (not c!947983)) b!5432410))

(assert (= (and b!5432417 res!2311748) b!5432418))

(assert (= (and b!5432410 c!947982) b!5432408))

(assert (= (and b!5432410 (not c!947982)) b!5432406))

(assert (= (and b!5432408 res!2311747) b!5432404))

(assert (= (and b!5432406 c!947985) b!5432403))

(assert (= (and b!5432406 (not c!947985)) b!5432412))

(assert (= (or b!5432408 b!5432403) bm!389123))

(assert (= (or b!5432418 b!5432404) bm!389127))

(assert (= (or b!5432417 bm!389123) bm!389129))

(declare-fun m!6455134 () Bool)

(assert (=> bm!389128 m!6455134))

(declare-fun m!6455136 () Bool)

(assert (=> bm!389124 m!6455136))

(declare-fun m!6455138 () Bool)

(assert (=> bm!389129 m!6455138))

(declare-fun m!6455140 () Bool)

(assert (=> bm!389126 m!6455140))

(declare-fun m!6455142 () Bool)

(assert (=> bm!389127 m!6455142))

(assert (=> b!5431741 d!1731920))

(declare-fun b!5432420 () Bool)

(declare-fun e!3365999 () Bool)

(declare-fun lt!2214831 () Int)

(declare-fun call!389136 () Int)

(assert (=> b!5432420 (= e!3365999 (> lt!2214831 call!389136))))

(declare-fun bm!389130 () Bool)

(declare-fun call!389139 () Int)

(assert (=> bm!389130 (= call!389136 call!389139)))

(declare-fun b!5432421 () Bool)

(declare-fun e!3365996 () Bool)

(declare-fun call!389141 () Int)

(assert (=> b!5432421 (= e!3365996 (> lt!2214831 call!389141))))

(declare-fun b!5432422 () Bool)

(declare-fun e!3365994 () Int)

(declare-fun e!3365995 () Int)

(assert (=> b!5432422 (= e!3365994 e!3365995)))

(declare-fun c!947991 () Bool)

(assert (=> b!5432422 (= c!947991 ((_ is Concat!24070) lt!2214717))))

(declare-fun b!5432423 () Bool)

(declare-fun c!947992 () Bool)

(assert (=> b!5432423 (= c!947992 ((_ is Star!15225) lt!2214717))))

(declare-fun e!3366003 () Bool)

(assert (=> b!5432423 (= e!3366003 e!3365999)))

(declare-fun b!5432424 () Bool)

(declare-fun e!3366001 () Int)

(declare-fun e!3365997 () Int)

(assert (=> b!5432424 (= e!3366001 e!3365997)))

(declare-fun c!947987 () Bool)

(assert (=> b!5432424 (= c!947987 ((_ is Star!15225) lt!2214717))))

(declare-fun bm!389131 () Bool)

(declare-fun call!389135 () Int)

(declare-fun c!947986 () Bool)

(assert (=> bm!389131 (= call!389135 (regexDepth!181 (ite c!947986 (regOne!30963 lt!2214717) (regTwo!30962 lt!2214717))))))

(declare-fun b!5432425 () Bool)

(declare-fun res!2311750 () Bool)

(assert (=> b!5432425 (=> (not res!2311750) (not e!3365996))))

(assert (=> b!5432425 (= res!2311750 (> lt!2214831 call!389136))))

(assert (=> b!5432425 (= e!3366003 e!3365996)))

(declare-fun b!5432426 () Bool)

(declare-fun e!3366002 () Bool)

(declare-fun e!3365998 () Bool)

(assert (=> b!5432426 (= e!3366002 e!3365998)))

(declare-fun c!947990 () Bool)

(assert (=> b!5432426 (= c!947990 ((_ is Union!15225) lt!2214717))))

(declare-fun b!5432427 () Bool)

(assert (=> b!5432427 (= e!3365998 e!3366003)))

(declare-fun c!947989 () Bool)

(assert (=> b!5432427 (= c!947989 ((_ is Concat!24070) lt!2214717))))

(declare-fun bm!389132 () Bool)

(declare-fun call!389137 () Int)

(declare-fun call!389140 () Int)

(assert (=> bm!389132 (= call!389137 call!389140)))

(declare-fun b!5432428 () Bool)

(declare-fun call!389138 () Int)

(assert (=> b!5432428 (= e!3365995 (+ 1 call!389138))))

(declare-fun b!5432429 () Bool)

(assert (=> b!5432429 (= e!3365999 (= lt!2214831 1))))

(declare-fun bm!389133 () Bool)

(assert (=> bm!389133 (= call!389140 (regexDepth!181 (ite c!947987 (reg!15554 lt!2214717) (ite c!947986 (regTwo!30963 lt!2214717) (regOne!30962 lt!2214717)))))))

(declare-fun bm!389134 () Bool)

(assert (=> bm!389134 (= call!389141 (regexDepth!181 (ite c!947990 (regTwo!30963 lt!2214717) (regTwo!30962 lt!2214717))))))

(declare-fun bm!389136 () Bool)

(assert (=> bm!389136 (= call!389139 (regexDepth!181 (ite c!947990 (regOne!30963 lt!2214717) (ite c!947989 (regOne!30962 lt!2214717) (reg!15554 lt!2214717)))))))

(declare-fun b!5432430 () Bool)

(assert (=> b!5432430 (= e!3365997 (+ 1 call!389140))))

(declare-fun b!5432431 () Bool)

(assert (=> b!5432431 (= e!3365994 (+ 1 call!389138))))

(declare-fun b!5432432 () Bool)

(assert (=> b!5432432 (= e!3365995 1)))

(declare-fun b!5432433 () Bool)

(assert (=> b!5432433 (= c!947986 ((_ is Union!15225) lt!2214717))))

(assert (=> b!5432433 (= e!3365997 e!3365994)))

(declare-fun b!5432434 () Bool)

(declare-fun e!3366000 () Bool)

(assert (=> b!5432434 (= e!3365998 e!3366000)))

(declare-fun res!2311751 () Bool)

(assert (=> b!5432434 (= res!2311751 (> lt!2214831 call!389139))))

(assert (=> b!5432434 (=> (not res!2311751) (not e!3366000))))

(declare-fun b!5432435 () Bool)

(assert (=> b!5432435 (= e!3366000 (> lt!2214831 call!389141))))

(declare-fun b!5432436 () Bool)

(assert (=> b!5432436 (= e!3366001 1)))

(declare-fun bm!389135 () Bool)

(assert (=> bm!389135 (= call!389138 (maxBigInt!0 (ite c!947986 call!389135 call!389137) (ite c!947986 call!389137 call!389135)))))

(declare-fun d!1731938 () Bool)

(assert (=> d!1731938 e!3366002))

(declare-fun res!2311752 () Bool)

(assert (=> d!1731938 (=> (not res!2311752) (not e!3366002))))

(assert (=> d!1731938 (= res!2311752 (> lt!2214831 0))))

(assert (=> d!1731938 (= lt!2214831 e!3366001)))

(declare-fun c!947988 () Bool)

(assert (=> d!1731938 (= c!947988 ((_ is ElementMatch!15225) lt!2214717))))

(assert (=> d!1731938 (= (regexDepth!181 lt!2214717) lt!2214831)))

(assert (= (and d!1731938 c!947988) b!5432436))

(assert (= (and d!1731938 (not c!947988)) b!5432424))

(assert (= (and b!5432424 c!947987) b!5432430))

(assert (= (and b!5432424 (not c!947987)) b!5432433))

(assert (= (and b!5432433 c!947986) b!5432431))

(assert (= (and b!5432433 (not c!947986)) b!5432422))

(assert (= (and b!5432422 c!947991) b!5432428))

(assert (= (and b!5432422 (not c!947991)) b!5432432))

(assert (= (or b!5432431 b!5432428) bm!389132))

(assert (= (or b!5432431 b!5432428) bm!389131))

(assert (= (or b!5432431 b!5432428) bm!389135))

(assert (= (or b!5432430 bm!389132) bm!389133))

(assert (= (and d!1731938 res!2311752) b!5432426))

(assert (= (and b!5432426 c!947990) b!5432434))

(assert (= (and b!5432426 (not c!947990)) b!5432427))

(assert (= (and b!5432434 res!2311751) b!5432435))

(assert (= (and b!5432427 c!947989) b!5432425))

(assert (= (and b!5432427 (not c!947989)) b!5432423))

(assert (= (and b!5432425 res!2311750) b!5432421))

(assert (= (and b!5432423 c!947992) b!5432420))

(assert (= (and b!5432423 (not c!947992)) b!5432429))

(assert (= (or b!5432425 b!5432420) bm!389130))

(assert (= (or b!5432435 b!5432421) bm!389134))

(assert (= (or b!5432434 bm!389130) bm!389136))

(declare-fun m!6455144 () Bool)

(assert (=> bm!389135 m!6455144))

(declare-fun m!6455146 () Bool)

(assert (=> bm!389131 m!6455146))

(declare-fun m!6455148 () Bool)

(assert (=> bm!389136 m!6455148))

(declare-fun m!6455150 () Bool)

(assert (=> bm!389133 m!6455150))

(declare-fun m!6455152 () Bool)

(assert (=> bm!389134 m!6455152))

(assert (=> b!5431741 d!1731938))

(declare-fun b!5432457 () Bool)

(declare-fun e!3366018 () Regex!15225)

(assert (=> b!5432457 (= e!3366018 (Concat!24070 (h!68299 (t!375200 (exprs!5109 (h!68300 zl!343)))) (generalisedConcat!894 (t!375200 (t!375200 (exprs!5109 (h!68300 zl!343)))))))))

(declare-fun b!5432458 () Bool)

(assert (=> b!5432458 (= e!3366018 EmptyExpr!15225)))

(declare-fun b!5432459 () Bool)

(declare-fun e!3366021 () Bool)

(declare-fun e!3366020 () Bool)

(assert (=> b!5432459 (= e!3366021 e!3366020)))

(declare-fun c!948002 () Bool)

(assert (=> b!5432459 (= c!948002 (isEmpty!33853 (t!375200 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun b!5432460 () Bool)

(declare-fun e!3366017 () Bool)

(assert (=> b!5432460 (= e!3366017 (isEmpty!33853 (t!375200 (t!375200 (exprs!5109 (h!68300 zl!343))))))))

(declare-fun b!5432461 () Bool)

(declare-fun e!3366019 () Regex!15225)

(assert (=> b!5432461 (= e!3366019 (h!68299 (t!375200 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun d!1731940 () Bool)

(assert (=> d!1731940 e!3366021))

(declare-fun res!2311757 () Bool)

(assert (=> d!1731940 (=> (not res!2311757) (not e!3366021))))

(declare-fun lt!2214834 () Regex!15225)

(assert (=> d!1731940 (= res!2311757 (validRegex!6961 lt!2214834))))

(assert (=> d!1731940 (= lt!2214834 e!3366019)))

(declare-fun c!948004 () Bool)

(assert (=> d!1731940 (= c!948004 e!3366017)))

(declare-fun res!2311758 () Bool)

(assert (=> d!1731940 (=> (not res!2311758) (not e!3366017))))

(assert (=> d!1731940 (= res!2311758 ((_ is Cons!61851) (t!375200 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun lambda!285159 () Int)

(declare-fun forall!14565 (List!61975 Int) Bool)

(assert (=> d!1731940 (forall!14565 (t!375200 (exprs!5109 (h!68300 zl!343))) lambda!285159)))

(assert (=> d!1731940 (= (generalisedConcat!894 (t!375200 (exprs!5109 (h!68300 zl!343)))) lt!2214834)))

(declare-fun b!5432462 () Bool)

(declare-fun e!3366016 () Bool)

(declare-fun head!11654 (List!61975) Regex!15225)

(assert (=> b!5432462 (= e!3366016 (= lt!2214834 (head!11654 (t!375200 (exprs!5109 (h!68300 zl!343))))))))

(declare-fun b!5432463 () Bool)

(assert (=> b!5432463 (= e!3366019 e!3366018)))

(declare-fun c!948001 () Bool)

(assert (=> b!5432463 (= c!948001 ((_ is Cons!61851) (t!375200 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun b!5432464 () Bool)

(assert (=> b!5432464 (= e!3366020 e!3366016)))

(declare-fun c!948003 () Bool)

(declare-fun tail!10751 (List!61975) List!61975)

(assert (=> b!5432464 (= c!948003 (isEmpty!33853 (tail!10751 (t!375200 (exprs!5109 (h!68300 zl!343))))))))

(declare-fun b!5432465 () Bool)

(declare-fun isEmptyExpr!1000 (Regex!15225) Bool)

(assert (=> b!5432465 (= e!3366020 (isEmptyExpr!1000 lt!2214834))))

(declare-fun b!5432466 () Bool)

(declare-fun isConcat!523 (Regex!15225) Bool)

(assert (=> b!5432466 (= e!3366016 (isConcat!523 lt!2214834))))

(assert (= (and d!1731940 res!2311758) b!5432460))

(assert (= (and d!1731940 c!948004) b!5432461))

(assert (= (and d!1731940 (not c!948004)) b!5432463))

(assert (= (and b!5432463 c!948001) b!5432457))

(assert (= (and b!5432463 (not c!948001)) b!5432458))

(assert (= (and d!1731940 res!2311757) b!5432459))

(assert (= (and b!5432459 c!948002) b!5432465))

(assert (= (and b!5432459 (not c!948002)) b!5432464))

(assert (= (and b!5432464 c!948003) b!5432462))

(assert (= (and b!5432464 (not c!948003)) b!5432466))

(declare-fun m!6455154 () Bool)

(assert (=> b!5432462 m!6455154))

(declare-fun m!6455156 () Bool)

(assert (=> d!1731940 m!6455156))

(declare-fun m!6455158 () Bool)

(assert (=> d!1731940 m!6455158))

(declare-fun m!6455160 () Bool)

(assert (=> b!5432464 m!6455160))

(assert (=> b!5432464 m!6455160))

(declare-fun m!6455162 () Bool)

(assert (=> b!5432464 m!6455162))

(assert (=> b!5432459 m!6454640))

(declare-fun m!6455164 () Bool)

(assert (=> b!5432466 m!6455164))

(declare-fun m!6455166 () Bool)

(assert (=> b!5432465 m!6455166))

(declare-fun m!6455168 () Bool)

(assert (=> b!5432457 m!6455168))

(declare-fun m!6455170 () Bool)

(assert (=> b!5432460 m!6455170))

(assert (=> b!5431741 d!1731940))

(declare-fun d!1731942 () Bool)

(declare-fun e!3366024 () Bool)

(assert (=> d!1731942 (= (matchZipper!1469 ((_ map or) lt!2214691 lt!2214716) (t!375199 s!2326)) e!3366024)))

(declare-fun res!2311761 () Bool)

(assert (=> d!1731942 (=> res!2311761 e!3366024)))

(assert (=> d!1731942 (= res!2311761 (matchZipper!1469 lt!2214691 (t!375199 s!2326)))))

(declare-fun lt!2214837 () Unit!154422)

(declare-fun choose!41208 ((InoxSet Context!9218) (InoxSet Context!9218) List!61974) Unit!154422)

(assert (=> d!1731942 (= lt!2214837 (choose!41208 lt!2214691 lt!2214716 (t!375199 s!2326)))))

(assert (=> d!1731942 (= (lemmaZipperConcatMatchesSameAsBothZippers!462 lt!2214691 lt!2214716 (t!375199 s!2326)) lt!2214837)))

(declare-fun b!5432469 () Bool)

(assert (=> b!5432469 (= e!3366024 (matchZipper!1469 lt!2214716 (t!375199 s!2326)))))

(assert (= (and d!1731942 (not res!2311761)) b!5432469))

(assert (=> d!1731942 m!6454630))

(assert (=> d!1731942 m!6454628))

(declare-fun m!6455172 () Bool)

(assert (=> d!1731942 m!6455172))

(assert (=> b!5432469 m!6454558))

(assert (=> b!5431761 d!1731942))

(declare-fun d!1731944 () Bool)

(declare-fun c!948005 () Bool)

(assert (=> d!1731944 (= c!948005 (isEmpty!33856 (t!375199 s!2326)))))

(declare-fun e!3366025 () Bool)

(assert (=> d!1731944 (= (matchZipper!1469 lt!2214691 (t!375199 s!2326)) e!3366025)))

(declare-fun b!5432470 () Bool)

(assert (=> b!5432470 (= e!3366025 (nullableZipper!1468 lt!2214691))))

(declare-fun b!5432471 () Bool)

(assert (=> b!5432471 (= e!3366025 (matchZipper!1469 (derivationStepZipper!1464 lt!2214691 (head!11653 (t!375199 s!2326))) (tail!10750 (t!375199 s!2326))))))

(assert (= (and d!1731944 c!948005) b!5432470))

(assert (= (and d!1731944 (not c!948005)) b!5432471))

(assert (=> d!1731944 m!6455074))

(declare-fun m!6455174 () Bool)

(assert (=> b!5432470 m!6455174))

(assert (=> b!5432471 m!6455078))

(assert (=> b!5432471 m!6455078))

(declare-fun m!6455176 () Bool)

(assert (=> b!5432471 m!6455176))

(assert (=> b!5432471 m!6455082))

(assert (=> b!5432471 m!6455176))

(assert (=> b!5432471 m!6455082))

(declare-fun m!6455178 () Bool)

(assert (=> b!5432471 m!6455178))

(assert (=> b!5431761 d!1731944))

(declare-fun d!1731946 () Bool)

(declare-fun c!948006 () Bool)

(assert (=> d!1731946 (= c!948006 (isEmpty!33856 (t!375199 s!2326)))))

(declare-fun e!3366026 () Bool)

(assert (=> d!1731946 (= (matchZipper!1469 ((_ map or) lt!2214691 lt!2214716) (t!375199 s!2326)) e!3366026)))

(declare-fun b!5432472 () Bool)

(assert (=> b!5432472 (= e!3366026 (nullableZipper!1468 ((_ map or) lt!2214691 lt!2214716)))))

(declare-fun b!5432473 () Bool)

(assert (=> b!5432473 (= e!3366026 (matchZipper!1469 (derivationStepZipper!1464 ((_ map or) lt!2214691 lt!2214716) (head!11653 (t!375199 s!2326))) (tail!10750 (t!375199 s!2326))))))

(assert (= (and d!1731946 c!948006) b!5432472))

(assert (= (and d!1731946 (not c!948006)) b!5432473))

(assert (=> d!1731946 m!6455074))

(declare-fun m!6455180 () Bool)

(assert (=> b!5432472 m!6455180))

(assert (=> b!5432473 m!6455078))

(assert (=> b!5432473 m!6455078))

(declare-fun m!6455182 () Bool)

(assert (=> b!5432473 m!6455182))

(assert (=> b!5432473 m!6455082))

(assert (=> b!5432473 m!6455182))

(assert (=> b!5432473 m!6455082))

(declare-fun m!6455184 () Bool)

(assert (=> b!5432473 m!6455184))

(assert (=> b!5431761 d!1731946))

(declare-fun d!1731948 () Bool)

(declare-fun choose!41209 ((InoxSet Context!9218) Int) (InoxSet Context!9218))

(assert (=> d!1731948 (= (flatMap!952 lt!2214707 lambda!285097) (choose!41209 lt!2214707 lambda!285097))))

(declare-fun bs!1254641 () Bool)

(assert (= bs!1254641 d!1731948))

(declare-fun m!6455186 () Bool)

(assert (=> bs!1254641 m!6455186))

(assert (=> b!5431781 d!1731948))

(declare-fun d!1731950 () Bool)

(declare-fun c!948011 () Bool)

(declare-fun e!3366033 () Bool)

(assert (=> d!1731950 (= c!948011 e!3366033)))

(declare-fun res!2311764 () Bool)

(assert (=> d!1731950 (=> (not res!2311764) (not e!3366033))))

(assert (=> d!1731950 (= res!2311764 ((_ is Cons!61851) (exprs!5109 lt!2214721)))))

(declare-fun e!3366034 () (InoxSet Context!9218))

(assert (=> d!1731950 (= (derivationStepZipperUp!597 lt!2214721 (h!68298 s!2326)) e!3366034)))

(declare-fun b!5432484 () Bool)

(declare-fun e!3366035 () (InoxSet Context!9218))

(assert (=> b!5432484 (= e!3366035 ((as const (Array Context!9218 Bool)) false))))

(declare-fun b!5432485 () Bool)

(declare-fun call!389144 () (InoxSet Context!9218))

(assert (=> b!5432485 (= e!3366034 ((_ map or) call!389144 (derivationStepZipperUp!597 (Context!9219 (t!375200 (exprs!5109 lt!2214721))) (h!68298 s!2326))))))

(declare-fun b!5432486 () Bool)

(assert (=> b!5432486 (= e!3366034 e!3366035)))

(declare-fun c!948012 () Bool)

(assert (=> b!5432486 (= c!948012 ((_ is Cons!61851) (exprs!5109 lt!2214721)))))

(declare-fun b!5432487 () Bool)

(assert (=> b!5432487 (= e!3366033 (nullable!5394 (h!68299 (exprs!5109 lt!2214721))))))

(declare-fun b!5432488 () Bool)

(assert (=> b!5432488 (= e!3366035 call!389144)))

(declare-fun bm!389139 () Bool)

(assert (=> bm!389139 (= call!389144 (derivationStepZipperDown!673 (h!68299 (exprs!5109 lt!2214721)) (Context!9219 (t!375200 (exprs!5109 lt!2214721))) (h!68298 s!2326)))))

(assert (= (and d!1731950 res!2311764) b!5432487))

(assert (= (and d!1731950 c!948011) b!5432485))

(assert (= (and d!1731950 (not c!948011)) b!5432486))

(assert (= (and b!5432486 c!948012) b!5432488))

(assert (= (and b!5432486 (not c!948012)) b!5432484))

(assert (= (or b!5432485 b!5432488) bm!389139))

(declare-fun m!6455188 () Bool)

(assert (=> b!5432485 m!6455188))

(declare-fun m!6455190 () Bool)

(assert (=> b!5432487 m!6455190))

(declare-fun m!6455192 () Bool)

(assert (=> bm!389139 m!6455192))

(assert (=> b!5431781 d!1731950))

(declare-fun d!1731952 () Bool)

(declare-fun dynLambda!24373 (Int Context!9218) (InoxSet Context!9218))

(assert (=> d!1731952 (= (flatMap!952 lt!2214707 lambda!285097) (dynLambda!24373 lambda!285097 lt!2214721))))

(declare-fun lt!2214840 () Unit!154422)

(declare-fun choose!41210 ((InoxSet Context!9218) Context!9218 Int) Unit!154422)

(assert (=> d!1731952 (= lt!2214840 (choose!41210 lt!2214707 lt!2214721 lambda!285097))))

(assert (=> d!1731952 (= lt!2214707 (store ((as const (Array Context!9218 Bool)) false) lt!2214721 true))))

(assert (=> d!1731952 (= (lemmaFlatMapOnSingletonSet!484 lt!2214707 lt!2214721 lambda!285097) lt!2214840)))

(declare-fun b_lambda!207289 () Bool)

(assert (=> (not b_lambda!207289) (not d!1731952)))

(declare-fun bs!1254642 () Bool)

(assert (= bs!1254642 d!1731952))

(assert (=> bs!1254642 m!6454552))

(declare-fun m!6455194 () Bool)

(assert (=> bs!1254642 m!6455194))

(declare-fun m!6455196 () Bool)

(assert (=> bs!1254642 m!6455196))

(assert (=> bs!1254642 m!6454556))

(assert (=> b!5431781 d!1731952))

(declare-fun bs!1254643 () Bool)

(declare-fun d!1731954 () Bool)

(assert (= bs!1254643 (and d!1731954 b!5431778)))

(declare-fun lambda!285162 () Int)

(assert (=> bs!1254643 (= lambda!285162 lambda!285097)))

(assert (=> d!1731954 true))

(assert (=> d!1731954 (= (derivationStepZipper!1464 lt!2214707 (h!68298 s!2326)) (flatMap!952 lt!2214707 lambda!285162))))

(declare-fun bs!1254644 () Bool)

(assert (= bs!1254644 d!1731954))

(declare-fun m!6455198 () Bool)

(assert (=> bs!1254644 m!6455198))

(assert (=> b!5431781 d!1731954))

(declare-fun bs!1254645 () Bool)

(declare-fun d!1731956 () Bool)

(assert (= bs!1254645 (and d!1731956 b!5431778)))

(declare-fun lambda!285163 () Int)

(assert (=> bs!1254645 (= lambda!285163 lambda!285097)))

(declare-fun bs!1254646 () Bool)

(assert (= bs!1254646 (and d!1731956 d!1731954)))

(assert (=> bs!1254646 (= lambda!285163 lambda!285162)))

(assert (=> d!1731956 true))

(assert (=> d!1731956 (= (derivationStepZipper!1464 lt!2214702 (h!68298 s!2326)) (flatMap!952 lt!2214702 lambda!285163))))

(declare-fun bs!1254647 () Bool)

(assert (= bs!1254647 d!1731956))

(declare-fun m!6455200 () Bool)

(assert (=> bs!1254647 m!6455200))

(assert (=> b!5431740 d!1731956))

(declare-fun d!1731958 () Bool)

(assert (=> d!1731958 (= (flatMap!952 lt!2214702 lambda!285097) (choose!41209 lt!2214702 lambda!285097))))

(declare-fun bs!1254648 () Bool)

(assert (= bs!1254648 d!1731958))

(declare-fun m!6455202 () Bool)

(assert (=> bs!1254648 m!6455202))

(assert (=> b!5431740 d!1731958))

(declare-fun d!1731960 () Bool)

(declare-fun c!948015 () Bool)

(declare-fun e!3366036 () Bool)

(assert (=> d!1731960 (= c!948015 e!3366036)))

(declare-fun res!2311765 () Bool)

(assert (=> d!1731960 (=> (not res!2311765) (not e!3366036))))

(assert (=> d!1731960 (= res!2311765 ((_ is Cons!61851) (exprs!5109 lt!2214705)))))

(declare-fun e!3366037 () (InoxSet Context!9218))

(assert (=> d!1731960 (= (derivationStepZipperUp!597 lt!2214705 (h!68298 s!2326)) e!3366037)))

(declare-fun b!5432491 () Bool)

(declare-fun e!3366038 () (InoxSet Context!9218))

(assert (=> b!5432491 (= e!3366038 ((as const (Array Context!9218 Bool)) false))))

(declare-fun b!5432492 () Bool)

(declare-fun call!389145 () (InoxSet Context!9218))

(assert (=> b!5432492 (= e!3366037 ((_ map or) call!389145 (derivationStepZipperUp!597 (Context!9219 (t!375200 (exprs!5109 lt!2214705))) (h!68298 s!2326))))))

(declare-fun b!5432493 () Bool)

(assert (=> b!5432493 (= e!3366037 e!3366038)))

(declare-fun c!948016 () Bool)

(assert (=> b!5432493 (= c!948016 ((_ is Cons!61851) (exprs!5109 lt!2214705)))))

(declare-fun b!5432494 () Bool)

(assert (=> b!5432494 (= e!3366036 (nullable!5394 (h!68299 (exprs!5109 lt!2214705))))))

(declare-fun b!5432495 () Bool)

(assert (=> b!5432495 (= e!3366038 call!389145)))

(declare-fun bm!389140 () Bool)

(assert (=> bm!389140 (= call!389145 (derivationStepZipperDown!673 (h!68299 (exprs!5109 lt!2214705)) (Context!9219 (t!375200 (exprs!5109 lt!2214705))) (h!68298 s!2326)))))

(assert (= (and d!1731960 res!2311765) b!5432494))

(assert (= (and d!1731960 c!948015) b!5432492))

(assert (= (and d!1731960 (not c!948015)) b!5432493))

(assert (= (and b!5432493 c!948016) b!5432495))

(assert (= (and b!5432493 (not c!948016)) b!5432491))

(assert (= (or b!5432492 b!5432495) bm!389140))

(declare-fun m!6455204 () Bool)

(assert (=> b!5432492 m!6455204))

(declare-fun m!6455206 () Bool)

(assert (=> b!5432494 m!6455206))

(declare-fun m!6455208 () Bool)

(assert (=> bm!389140 m!6455208))

(assert (=> b!5431740 d!1731960))

(declare-fun d!1731962 () Bool)

(assert (=> d!1731962 (= (flatMap!952 lt!2214702 lambda!285097) (dynLambda!24373 lambda!285097 lt!2214705))))

(declare-fun lt!2214841 () Unit!154422)

(assert (=> d!1731962 (= lt!2214841 (choose!41210 lt!2214702 lt!2214705 lambda!285097))))

(assert (=> d!1731962 (= lt!2214702 (store ((as const (Array Context!9218 Bool)) false) lt!2214705 true))))

(assert (=> d!1731962 (= (lemmaFlatMapOnSingletonSet!484 lt!2214702 lt!2214705 lambda!285097) lt!2214841)))

(declare-fun b_lambda!207291 () Bool)

(assert (=> (not b_lambda!207291) (not d!1731962)))

(declare-fun bs!1254649 () Bool)

(assert (= bs!1254649 d!1731962))

(assert (=> bs!1254649 m!6454660))

(declare-fun m!6455210 () Bool)

(assert (=> bs!1254649 m!6455210))

(declare-fun m!6455212 () Bool)

(assert (=> bs!1254649 m!6455212))

(assert (=> bs!1254649 m!6454658))

(assert (=> b!5431740 d!1731962))

(declare-fun b!5432514 () Bool)

(declare-fun e!3366058 () Bool)

(declare-fun call!389153 () Bool)

(assert (=> b!5432514 (= e!3366058 call!389153)))

(declare-fun bm!389147 () Bool)

(declare-fun c!948021 () Bool)

(declare-fun call!389154 () Bool)

(declare-fun c!948022 () Bool)

(assert (=> bm!389147 (= call!389154 (validRegex!6961 (ite c!948022 (reg!15554 lt!2214717) (ite c!948021 (regTwo!30963 lt!2214717) (regTwo!30962 lt!2214717)))))))

(declare-fun b!5432515 () Bool)

(declare-fun e!3366055 () Bool)

(assert (=> b!5432515 (= e!3366055 call!389153)))

(declare-fun b!5432516 () Bool)

(declare-fun res!2311778 () Bool)

(declare-fun e!3366056 () Bool)

(assert (=> b!5432516 (=> res!2311778 e!3366056)))

(assert (=> b!5432516 (= res!2311778 (not ((_ is Concat!24070) lt!2214717)))))

(declare-fun e!3366057 () Bool)

(assert (=> b!5432516 (= e!3366057 e!3366056)))

(declare-fun b!5432517 () Bool)

(declare-fun e!3366053 () Bool)

(declare-fun e!3366054 () Bool)

(assert (=> b!5432517 (= e!3366053 e!3366054)))

(assert (=> b!5432517 (= c!948022 ((_ is Star!15225) lt!2214717))))

(declare-fun bm!389148 () Bool)

(assert (=> bm!389148 (= call!389153 call!389154)))

(declare-fun b!5432518 () Bool)

(declare-fun e!3366059 () Bool)

(assert (=> b!5432518 (= e!3366059 call!389154)))

(declare-fun bm!389149 () Bool)

(declare-fun call!389152 () Bool)

(assert (=> bm!389149 (= call!389152 (validRegex!6961 (ite c!948021 (regOne!30963 lt!2214717) (regOne!30962 lt!2214717))))))

(declare-fun b!5432519 () Bool)

(assert (=> b!5432519 (= e!3366054 e!3366057)))

(assert (=> b!5432519 (= c!948021 ((_ is Union!15225) lt!2214717))))

(declare-fun b!5432520 () Bool)

(declare-fun res!2311777 () Bool)

(assert (=> b!5432520 (=> (not res!2311777) (not e!3366055))))

(assert (=> b!5432520 (= res!2311777 call!389152)))

(assert (=> b!5432520 (= e!3366057 e!3366055)))

(declare-fun b!5432521 () Bool)

(assert (=> b!5432521 (= e!3366056 e!3366058)))

(declare-fun res!2311776 () Bool)

(assert (=> b!5432521 (=> (not res!2311776) (not e!3366058))))

(assert (=> b!5432521 (= res!2311776 call!389152)))

(declare-fun d!1731964 () Bool)

(declare-fun res!2311780 () Bool)

(assert (=> d!1731964 (=> res!2311780 e!3366053)))

(assert (=> d!1731964 (= res!2311780 ((_ is ElementMatch!15225) lt!2214717))))

(assert (=> d!1731964 (= (validRegex!6961 lt!2214717) e!3366053)))

(declare-fun b!5432522 () Bool)

(assert (=> b!5432522 (= e!3366054 e!3366059)))

(declare-fun res!2311779 () Bool)

(assert (=> b!5432522 (= res!2311779 (not (nullable!5394 (reg!15554 lt!2214717))))))

(assert (=> b!5432522 (=> (not res!2311779) (not e!3366059))))

(assert (= (and d!1731964 (not res!2311780)) b!5432517))

(assert (= (and b!5432517 c!948022) b!5432522))

(assert (= (and b!5432517 (not c!948022)) b!5432519))

(assert (= (and b!5432522 res!2311779) b!5432518))

(assert (= (and b!5432519 c!948021) b!5432520))

(assert (= (and b!5432519 (not c!948021)) b!5432516))

(assert (= (and b!5432520 res!2311777) b!5432515))

(assert (= (and b!5432516 (not res!2311778)) b!5432521))

(assert (= (and b!5432521 res!2311776) b!5432514))

(assert (= (or b!5432515 b!5432514) bm!389148))

(assert (= (or b!5432520 b!5432521) bm!389149))

(assert (= (or b!5432518 bm!389148) bm!389147))

(declare-fun m!6455214 () Bool)

(assert (=> bm!389147 m!6455214))

(declare-fun m!6455216 () Bool)

(assert (=> bm!389149 m!6455216))

(declare-fun m!6455218 () Bool)

(assert (=> b!5432522 m!6455218))

(assert (=> b!5431780 d!1731964))

(declare-fun b!5432551 () Bool)

(declare-fun e!3366077 () Bool)

(declare-fun e!3366075 () Bool)

(assert (=> b!5432551 (= e!3366077 e!3366075)))

(declare-fun res!2311801 () Bool)

(assert (=> b!5432551 (=> (not res!2311801) (not e!3366075))))

(declare-fun lt!2214844 () Bool)

(assert (=> b!5432551 (= res!2311801 (not lt!2214844))))

(declare-fun b!5432552 () Bool)

(declare-fun e!3366080 () Bool)

(assert (=> b!5432552 (= e!3366080 (not (= (head!11653 s!2326) (c!947773 lt!2214717))))))

(declare-fun b!5432553 () Bool)

(declare-fun e!3366079 () Bool)

(assert (=> b!5432553 (= e!3366079 (nullable!5394 lt!2214717))))

(declare-fun bm!389152 () Bool)

(declare-fun call!389157 () Bool)

(assert (=> bm!389152 (= call!389157 (isEmpty!33856 s!2326))))

(declare-fun b!5432554 () Bool)

(declare-fun derivativeStep!4289 (Regex!15225 C!30720) Regex!15225)

(assert (=> b!5432554 (= e!3366079 (matchR!7410 (derivativeStep!4289 lt!2214717 (head!11653 s!2326)) (tail!10750 s!2326)))))

(declare-fun b!5432555 () Bool)

(assert (=> b!5432555 (= e!3366075 e!3366080)))

(declare-fun res!2311803 () Bool)

(assert (=> b!5432555 (=> res!2311803 e!3366080)))

(assert (=> b!5432555 (= res!2311803 call!389157)))

(declare-fun b!5432556 () Bool)

(declare-fun res!2311797 () Bool)

(declare-fun e!3366078 () Bool)

(assert (=> b!5432556 (=> (not res!2311797) (not e!3366078))))

(assert (=> b!5432556 (= res!2311797 (isEmpty!33856 (tail!10750 s!2326)))))

(declare-fun b!5432557 () Bool)

(declare-fun res!2311799 () Bool)

(assert (=> b!5432557 (=> (not res!2311799) (not e!3366078))))

(assert (=> b!5432557 (= res!2311799 (not call!389157))))

(declare-fun b!5432558 () Bool)

(declare-fun res!2311804 () Bool)

(assert (=> b!5432558 (=> res!2311804 e!3366080)))

(assert (=> b!5432558 (= res!2311804 (not (isEmpty!33856 (tail!10750 s!2326))))))

(declare-fun b!5432559 () Bool)

(declare-fun res!2311800 () Bool)

(assert (=> b!5432559 (=> res!2311800 e!3366077)))

(assert (=> b!5432559 (= res!2311800 (not ((_ is ElementMatch!15225) lt!2214717)))))

(declare-fun e!3366074 () Bool)

(assert (=> b!5432559 (= e!3366074 e!3366077)))

(declare-fun d!1731966 () Bool)

(declare-fun e!3366076 () Bool)

(assert (=> d!1731966 e!3366076))

(declare-fun c!948029 () Bool)

(assert (=> d!1731966 (= c!948029 ((_ is EmptyExpr!15225) lt!2214717))))

(assert (=> d!1731966 (= lt!2214844 e!3366079)))

(declare-fun c!948030 () Bool)

(assert (=> d!1731966 (= c!948030 (isEmpty!33856 s!2326))))

(assert (=> d!1731966 (validRegex!6961 lt!2214717)))

(assert (=> d!1731966 (= (matchR!7410 lt!2214717 s!2326) lt!2214844)))

(declare-fun b!5432560 () Bool)

(assert (=> b!5432560 (= e!3366076 e!3366074)))

(declare-fun c!948031 () Bool)

(assert (=> b!5432560 (= c!948031 ((_ is EmptyLang!15225) lt!2214717))))

(declare-fun b!5432561 () Bool)

(assert (=> b!5432561 (= e!3366076 (= lt!2214844 call!389157))))

(declare-fun b!5432562 () Bool)

(assert (=> b!5432562 (= e!3366078 (= (head!11653 s!2326) (c!947773 lt!2214717)))))

(declare-fun b!5432563 () Bool)

(assert (=> b!5432563 (= e!3366074 (not lt!2214844))))

(declare-fun b!5432564 () Bool)

(declare-fun res!2311802 () Bool)

(assert (=> b!5432564 (=> res!2311802 e!3366077)))

(assert (=> b!5432564 (= res!2311802 e!3366078)))

(declare-fun res!2311798 () Bool)

(assert (=> b!5432564 (=> (not res!2311798) (not e!3366078))))

(assert (=> b!5432564 (= res!2311798 lt!2214844)))

(assert (= (and d!1731966 c!948030) b!5432553))

(assert (= (and d!1731966 (not c!948030)) b!5432554))

(assert (= (and d!1731966 c!948029) b!5432561))

(assert (= (and d!1731966 (not c!948029)) b!5432560))

(assert (= (and b!5432560 c!948031) b!5432563))

(assert (= (and b!5432560 (not c!948031)) b!5432559))

(assert (= (and b!5432559 (not res!2311800)) b!5432564))

(assert (= (and b!5432564 res!2311798) b!5432557))

(assert (= (and b!5432557 res!2311799) b!5432556))

(assert (= (and b!5432556 res!2311797) b!5432562))

(assert (= (and b!5432564 (not res!2311802)) b!5432551))

(assert (= (and b!5432551 res!2311801) b!5432555))

(assert (= (and b!5432555 (not res!2311803)) b!5432558))

(assert (= (and b!5432558 (not res!2311804)) b!5432552))

(assert (= (or b!5432561 b!5432555 b!5432557) bm!389152))

(assert (=> b!5432558 m!6455070))

(assert (=> b!5432558 m!6455070))

(declare-fun m!6455220 () Bool)

(assert (=> b!5432558 m!6455220))

(assert (=> b!5432556 m!6455070))

(assert (=> b!5432556 m!6455070))

(assert (=> b!5432556 m!6455220))

(assert (=> b!5432554 m!6455066))

(assert (=> b!5432554 m!6455066))

(declare-fun m!6455222 () Bool)

(assert (=> b!5432554 m!6455222))

(assert (=> b!5432554 m!6455070))

(assert (=> b!5432554 m!6455222))

(assert (=> b!5432554 m!6455070))

(declare-fun m!6455224 () Bool)

(assert (=> b!5432554 m!6455224))

(assert (=> bm!389152 m!6455062))

(declare-fun m!6455226 () Bool)

(assert (=> b!5432553 m!6455226))

(assert (=> d!1731966 m!6455062))

(assert (=> d!1731966 m!6454642))

(assert (=> b!5432552 m!6455066))

(assert (=> b!5432562 m!6455066))

(assert (=> b!5431780 d!1731966))

(declare-fun d!1731968 () Bool)

(declare-fun c!948032 () Bool)

(assert (=> d!1731968 (= c!948032 (isEmpty!33856 s!2326))))

(declare-fun e!3366081 () Bool)

(assert (=> d!1731968 (= (matchZipper!1469 lt!2214702 s!2326) e!3366081)))

(declare-fun b!5432565 () Bool)

(assert (=> b!5432565 (= e!3366081 (nullableZipper!1468 lt!2214702))))

(declare-fun b!5432566 () Bool)

(assert (=> b!5432566 (= e!3366081 (matchZipper!1469 (derivationStepZipper!1464 lt!2214702 (head!11653 s!2326)) (tail!10750 s!2326)))))

(assert (= (and d!1731968 c!948032) b!5432565))

(assert (= (and d!1731968 (not c!948032)) b!5432566))

(assert (=> d!1731968 m!6455062))

(declare-fun m!6455228 () Bool)

(assert (=> b!5432565 m!6455228))

(assert (=> b!5432566 m!6455066))

(assert (=> b!5432566 m!6455066))

(declare-fun m!6455230 () Bool)

(assert (=> b!5432566 m!6455230))

(assert (=> b!5432566 m!6455070))

(assert (=> b!5432566 m!6455230))

(assert (=> b!5432566 m!6455070))

(declare-fun m!6455232 () Bool)

(assert (=> b!5432566 m!6455232))

(assert (=> b!5431780 d!1731968))

(declare-fun d!1731970 () Bool)

(assert (=> d!1731970 (= (matchR!7410 lt!2214717 s!2326) (matchZipper!1469 lt!2214702 s!2326))))

(declare-fun lt!2214847 () Unit!154422)

(declare-fun choose!41211 ((InoxSet Context!9218) List!61976 Regex!15225 List!61974) Unit!154422)

(assert (=> d!1731970 (= lt!2214847 (choose!41211 lt!2214702 lt!2214703 lt!2214717 s!2326))))

(assert (=> d!1731970 (validRegex!6961 lt!2214717)))

(assert (=> d!1731970 (= (theoremZipperRegexEquiv!529 lt!2214702 lt!2214703 lt!2214717 s!2326) lt!2214847)))

(declare-fun bs!1254650 () Bool)

(assert (= bs!1254650 d!1731970))

(assert (=> bs!1254650 m!6454644))

(assert (=> bs!1254650 m!6454646))

(declare-fun m!6455234 () Bool)

(assert (=> bs!1254650 m!6455234))

(assert (=> bs!1254650 m!6454642))

(assert (=> b!5431780 d!1731970))

(declare-fun b!5432567 () Bool)

(declare-fun e!3366085 () Bool)

(declare-fun e!3366083 () Bool)

(assert (=> b!5432567 (= e!3366085 e!3366083)))

(declare-fun res!2311809 () Bool)

(assert (=> b!5432567 (=> (not res!2311809) (not e!3366083))))

(declare-fun lt!2214848 () Bool)

(assert (=> b!5432567 (= res!2311809 (not lt!2214848))))

(declare-fun b!5432568 () Bool)

(declare-fun e!3366088 () Bool)

(assert (=> b!5432568 (= e!3366088 (not (= (head!11653 s!2326) (c!947773 lt!2214695))))))

(declare-fun b!5432569 () Bool)

(declare-fun e!3366087 () Bool)

(assert (=> b!5432569 (= e!3366087 (nullable!5394 lt!2214695))))

(declare-fun bm!389153 () Bool)

(declare-fun call!389158 () Bool)

(assert (=> bm!389153 (= call!389158 (isEmpty!33856 s!2326))))

(declare-fun b!5432570 () Bool)

(assert (=> b!5432570 (= e!3366087 (matchR!7410 (derivativeStep!4289 lt!2214695 (head!11653 s!2326)) (tail!10750 s!2326)))))

(declare-fun b!5432571 () Bool)

(assert (=> b!5432571 (= e!3366083 e!3366088)))

(declare-fun res!2311811 () Bool)

(assert (=> b!5432571 (=> res!2311811 e!3366088)))

(assert (=> b!5432571 (= res!2311811 call!389158)))

(declare-fun b!5432572 () Bool)

(declare-fun res!2311805 () Bool)

(declare-fun e!3366086 () Bool)

(assert (=> b!5432572 (=> (not res!2311805) (not e!3366086))))

(assert (=> b!5432572 (= res!2311805 (isEmpty!33856 (tail!10750 s!2326)))))

(declare-fun b!5432573 () Bool)

(declare-fun res!2311807 () Bool)

(assert (=> b!5432573 (=> (not res!2311807) (not e!3366086))))

(assert (=> b!5432573 (= res!2311807 (not call!389158))))

(declare-fun b!5432574 () Bool)

(declare-fun res!2311812 () Bool)

(assert (=> b!5432574 (=> res!2311812 e!3366088)))

(assert (=> b!5432574 (= res!2311812 (not (isEmpty!33856 (tail!10750 s!2326))))))

(declare-fun b!5432575 () Bool)

(declare-fun res!2311808 () Bool)

(assert (=> b!5432575 (=> res!2311808 e!3366085)))

(assert (=> b!5432575 (= res!2311808 (not ((_ is ElementMatch!15225) lt!2214695)))))

(declare-fun e!3366082 () Bool)

(assert (=> b!5432575 (= e!3366082 e!3366085)))

(declare-fun d!1731972 () Bool)

(declare-fun e!3366084 () Bool)

(assert (=> d!1731972 e!3366084))

(declare-fun c!948033 () Bool)

(assert (=> d!1731972 (= c!948033 ((_ is EmptyExpr!15225) lt!2214695))))

(assert (=> d!1731972 (= lt!2214848 e!3366087)))

(declare-fun c!948034 () Bool)

(assert (=> d!1731972 (= c!948034 (isEmpty!33856 s!2326))))

(assert (=> d!1731972 (validRegex!6961 lt!2214695)))

(assert (=> d!1731972 (= (matchR!7410 lt!2214695 s!2326) lt!2214848)))

(declare-fun b!5432576 () Bool)

(assert (=> b!5432576 (= e!3366084 e!3366082)))

(declare-fun c!948035 () Bool)

(assert (=> b!5432576 (= c!948035 ((_ is EmptyLang!15225) lt!2214695))))

(declare-fun b!5432577 () Bool)

(assert (=> b!5432577 (= e!3366084 (= lt!2214848 call!389158))))

(declare-fun b!5432578 () Bool)

(assert (=> b!5432578 (= e!3366086 (= (head!11653 s!2326) (c!947773 lt!2214695)))))

(declare-fun b!5432579 () Bool)

(assert (=> b!5432579 (= e!3366082 (not lt!2214848))))

(declare-fun b!5432580 () Bool)

(declare-fun res!2311810 () Bool)

(assert (=> b!5432580 (=> res!2311810 e!3366085)))

(assert (=> b!5432580 (= res!2311810 e!3366086)))

(declare-fun res!2311806 () Bool)

(assert (=> b!5432580 (=> (not res!2311806) (not e!3366086))))

(assert (=> b!5432580 (= res!2311806 lt!2214848)))

(assert (= (and d!1731972 c!948034) b!5432569))

(assert (= (and d!1731972 (not c!948034)) b!5432570))

(assert (= (and d!1731972 c!948033) b!5432577))

(assert (= (and d!1731972 (not c!948033)) b!5432576))

(assert (= (and b!5432576 c!948035) b!5432579))

(assert (= (and b!5432576 (not c!948035)) b!5432575))

(assert (= (and b!5432575 (not res!2311808)) b!5432580))

(assert (= (and b!5432580 res!2311806) b!5432573))

(assert (= (and b!5432573 res!2311807) b!5432572))

(assert (= (and b!5432572 res!2311805) b!5432578))

(assert (= (and b!5432580 (not res!2311810)) b!5432567))

(assert (= (and b!5432567 res!2311809) b!5432571))

(assert (= (and b!5432571 (not res!2311811)) b!5432574))

(assert (= (and b!5432574 (not res!2311812)) b!5432568))

(assert (= (or b!5432577 b!5432571 b!5432573) bm!389153))

(assert (=> b!5432574 m!6455070))

(assert (=> b!5432574 m!6455070))

(assert (=> b!5432574 m!6455220))

(assert (=> b!5432572 m!6455070))

(assert (=> b!5432572 m!6455070))

(assert (=> b!5432572 m!6455220))

(assert (=> b!5432570 m!6455066))

(assert (=> b!5432570 m!6455066))

(declare-fun m!6455236 () Bool)

(assert (=> b!5432570 m!6455236))

(assert (=> b!5432570 m!6455070))

(assert (=> b!5432570 m!6455236))

(assert (=> b!5432570 m!6455070))

(declare-fun m!6455238 () Bool)

(assert (=> b!5432570 m!6455238))

(assert (=> bm!389153 m!6455062))

(declare-fun m!6455240 () Bool)

(assert (=> b!5432569 m!6455240))

(assert (=> d!1731972 m!6455062))

(declare-fun m!6455242 () Bool)

(assert (=> d!1731972 m!6455242))

(assert (=> b!5432568 m!6455066))

(assert (=> b!5432578 m!6455066))

(assert (=> b!5431758 d!1731972))

(declare-fun bs!1254651 () Bool)

(declare-fun b!5432614 () Bool)

(assert (= bs!1254651 (and b!5432614 b!5431770)))

(declare-fun lambda!285168 () Int)

(assert (=> bs!1254651 (not (= lambda!285168 lambda!285095))))

(assert (=> bs!1254651 (not (= lambda!285168 lambda!285096))))

(assert (=> b!5432614 true))

(assert (=> b!5432614 true))

(declare-fun bs!1254652 () Bool)

(declare-fun b!5432619 () Bool)

(assert (= bs!1254652 (and b!5432619 b!5431770)))

(declare-fun lambda!285169 () Int)

(assert (=> bs!1254652 (not (= lambda!285169 lambda!285095))))

(assert (=> bs!1254652 (= (and (= (regOne!30962 lt!2214695) (regOne!30962 r!7292)) (= (regTwo!30962 lt!2214695) (regTwo!30962 r!7292))) (= lambda!285169 lambda!285096))))

(declare-fun bs!1254653 () Bool)

(assert (= bs!1254653 (and b!5432619 b!5432614)))

(assert (=> bs!1254653 (not (= lambda!285169 lambda!285168))))

(assert (=> b!5432619 true))

(assert (=> b!5432619 true))

(declare-fun b!5432613 () Bool)

(declare-fun e!3366109 () Bool)

(declare-fun e!3366110 () Bool)

(assert (=> b!5432613 (= e!3366109 e!3366110)))

(declare-fun res!2311830 () Bool)

(assert (=> b!5432613 (= res!2311830 (matchRSpec!2328 (regOne!30963 lt!2214695) s!2326))))

(assert (=> b!5432613 (=> res!2311830 e!3366110)))

(declare-fun e!3366113 () Bool)

(declare-fun call!389163 () Bool)

(assert (=> b!5432614 (= e!3366113 call!389163)))

(declare-fun bm!389158 () Bool)

(declare-fun call!389164 () Bool)

(assert (=> bm!389158 (= call!389164 (isEmpty!33856 s!2326))))

(declare-fun b!5432615 () Bool)

(declare-fun c!948044 () Bool)

(assert (=> b!5432615 (= c!948044 ((_ is Union!15225) lt!2214695))))

(declare-fun e!3366112 () Bool)

(assert (=> b!5432615 (= e!3366112 e!3366109)))

(declare-fun b!5432616 () Bool)

(assert (=> b!5432616 (= e!3366110 (matchRSpec!2328 (regTwo!30963 lt!2214695) s!2326))))

(declare-fun b!5432617 () Bool)

(declare-fun res!2311831 () Bool)

(assert (=> b!5432617 (=> res!2311831 e!3366113)))

(assert (=> b!5432617 (= res!2311831 call!389164)))

(declare-fun e!3366108 () Bool)

(assert (=> b!5432617 (= e!3366108 e!3366113)))

(declare-fun b!5432618 () Bool)

(declare-fun c!948046 () Bool)

(assert (=> b!5432618 (= c!948046 ((_ is ElementMatch!15225) lt!2214695))))

(declare-fun e!3366111 () Bool)

(assert (=> b!5432618 (= e!3366111 e!3366112)))

(declare-fun d!1731974 () Bool)

(declare-fun c!948045 () Bool)

(assert (=> d!1731974 (= c!948045 ((_ is EmptyExpr!15225) lt!2214695))))

(declare-fun e!3366107 () Bool)

(assert (=> d!1731974 (= (matchRSpec!2328 lt!2214695 s!2326) e!3366107)))

(assert (=> b!5432619 (= e!3366108 call!389163)))

(declare-fun bm!389159 () Bool)

(declare-fun c!948047 () Bool)

(assert (=> bm!389159 (= call!389163 (Exists!2406 (ite c!948047 lambda!285168 lambda!285169)))))

(declare-fun b!5432620 () Bool)

(assert (=> b!5432620 (= e!3366107 call!389164)))

(declare-fun b!5432621 () Bool)

(assert (=> b!5432621 (= e!3366112 (= s!2326 (Cons!61850 (c!947773 lt!2214695) Nil!61850)))))

(declare-fun b!5432622 () Bool)

(assert (=> b!5432622 (= e!3366107 e!3366111)))

(declare-fun res!2311829 () Bool)

(assert (=> b!5432622 (= res!2311829 (not ((_ is EmptyLang!15225) lt!2214695)))))

(assert (=> b!5432622 (=> (not res!2311829) (not e!3366111))))

(declare-fun b!5432623 () Bool)

(assert (=> b!5432623 (= e!3366109 e!3366108)))

(assert (=> b!5432623 (= c!948047 ((_ is Star!15225) lt!2214695))))

(assert (= (and d!1731974 c!948045) b!5432620))

(assert (= (and d!1731974 (not c!948045)) b!5432622))

(assert (= (and b!5432622 res!2311829) b!5432618))

(assert (= (and b!5432618 c!948046) b!5432621))

(assert (= (and b!5432618 (not c!948046)) b!5432615))

(assert (= (and b!5432615 c!948044) b!5432613))

(assert (= (and b!5432615 (not c!948044)) b!5432623))

(assert (= (and b!5432613 (not res!2311830)) b!5432616))

(assert (= (and b!5432623 c!948047) b!5432617))

(assert (= (and b!5432623 (not c!948047)) b!5432619))

(assert (= (and b!5432617 (not res!2311831)) b!5432614))

(assert (= (or b!5432614 b!5432619) bm!389159))

(assert (= (or b!5432620 b!5432617) bm!389158))

(declare-fun m!6455244 () Bool)

(assert (=> b!5432613 m!6455244))

(assert (=> bm!389158 m!6455062))

(declare-fun m!6455246 () Bool)

(assert (=> b!5432616 m!6455246))

(declare-fun m!6455248 () Bool)

(assert (=> bm!389159 m!6455248))

(assert (=> b!5431758 d!1731974))

(declare-fun d!1731976 () Bool)

(assert (=> d!1731976 (= (matchR!7410 lt!2214695 s!2326) (matchRSpec!2328 lt!2214695 s!2326))))

(declare-fun lt!2214851 () Unit!154422)

(declare-fun choose!41213 (Regex!15225 List!61974) Unit!154422)

(assert (=> d!1731976 (= lt!2214851 (choose!41213 lt!2214695 s!2326))))

(assert (=> d!1731976 (validRegex!6961 lt!2214695)))

(assert (=> d!1731976 (= (mainMatchTheorem!2328 lt!2214695 s!2326) lt!2214851)))

(declare-fun bs!1254654 () Bool)

(assert (= bs!1254654 d!1731976))

(assert (=> bs!1254654 m!6454668))

(assert (=> bs!1254654 m!6454670))

(declare-fun m!6455250 () Bool)

(assert (=> bs!1254654 m!6455250))

(assert (=> bs!1254654 m!6455242))

(assert (=> b!5431758 d!1731976))

(declare-fun d!1731978 () Bool)

(declare-fun nullableFct!1619 (Regex!15225) Bool)

(assert (=> d!1731978 (= (nullable!5394 (h!68299 (exprs!5109 (h!68300 zl!343)))) (nullableFct!1619 (h!68299 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun bs!1254655 () Bool)

(assert (= bs!1254655 d!1731978))

(declare-fun m!6455252 () Bool)

(assert (=> bs!1254655 m!6455252))

(assert (=> b!5431778 d!1731978))

(declare-fun d!1731980 () Bool)

(declare-fun c!948048 () Bool)

(declare-fun e!3366114 () Bool)

(assert (=> d!1731980 (= c!948048 e!3366114)))

(declare-fun res!2311832 () Bool)

(assert (=> d!1731980 (=> (not res!2311832) (not e!3366114))))

(assert (=> d!1731980 (= res!2311832 ((_ is Cons!61851) (exprs!5109 (Context!9219 (Cons!61851 (h!68299 (exprs!5109 (h!68300 zl!343))) (t!375200 (exprs!5109 (h!68300 zl!343))))))))))

(declare-fun e!3366115 () (InoxSet Context!9218))

(assert (=> d!1731980 (= (derivationStepZipperUp!597 (Context!9219 (Cons!61851 (h!68299 (exprs!5109 (h!68300 zl!343))) (t!375200 (exprs!5109 (h!68300 zl!343))))) (h!68298 s!2326)) e!3366115)))

(declare-fun b!5432624 () Bool)

(declare-fun e!3366116 () (InoxSet Context!9218))

(assert (=> b!5432624 (= e!3366116 ((as const (Array Context!9218 Bool)) false))))

(declare-fun b!5432625 () Bool)

(declare-fun call!389165 () (InoxSet Context!9218))

(assert (=> b!5432625 (= e!3366115 ((_ map or) call!389165 (derivationStepZipperUp!597 (Context!9219 (t!375200 (exprs!5109 (Context!9219 (Cons!61851 (h!68299 (exprs!5109 (h!68300 zl!343))) (t!375200 (exprs!5109 (h!68300 zl!343)))))))) (h!68298 s!2326))))))

(declare-fun b!5432626 () Bool)

(assert (=> b!5432626 (= e!3366115 e!3366116)))

(declare-fun c!948049 () Bool)

(assert (=> b!5432626 (= c!948049 ((_ is Cons!61851) (exprs!5109 (Context!9219 (Cons!61851 (h!68299 (exprs!5109 (h!68300 zl!343))) (t!375200 (exprs!5109 (h!68300 zl!343))))))))))

(declare-fun b!5432627 () Bool)

(assert (=> b!5432627 (= e!3366114 (nullable!5394 (h!68299 (exprs!5109 (Context!9219 (Cons!61851 (h!68299 (exprs!5109 (h!68300 zl!343))) (t!375200 (exprs!5109 (h!68300 zl!343)))))))))))

(declare-fun b!5432628 () Bool)

(assert (=> b!5432628 (= e!3366116 call!389165)))

(declare-fun bm!389160 () Bool)

(assert (=> bm!389160 (= call!389165 (derivationStepZipperDown!673 (h!68299 (exprs!5109 (Context!9219 (Cons!61851 (h!68299 (exprs!5109 (h!68300 zl!343))) (t!375200 (exprs!5109 (h!68300 zl!343))))))) (Context!9219 (t!375200 (exprs!5109 (Context!9219 (Cons!61851 (h!68299 (exprs!5109 (h!68300 zl!343))) (t!375200 (exprs!5109 (h!68300 zl!343)))))))) (h!68298 s!2326)))))

(assert (= (and d!1731980 res!2311832) b!5432627))

(assert (= (and d!1731980 c!948048) b!5432625))

(assert (= (and d!1731980 (not c!948048)) b!5432626))

(assert (= (and b!5432626 c!948049) b!5432628))

(assert (= (and b!5432626 (not c!948049)) b!5432624))

(assert (= (or b!5432625 b!5432628) bm!389160))

(declare-fun m!6455254 () Bool)

(assert (=> b!5432625 m!6455254))

(declare-fun m!6455256 () Bool)

(assert (=> b!5432627 m!6455256))

(declare-fun m!6455258 () Bool)

(assert (=> bm!389160 m!6455258))

(assert (=> b!5431778 d!1731980))

(declare-fun d!1731982 () Bool)

(assert (=> d!1731982 (= (flatMap!952 z!1189 lambda!285097) (choose!41209 z!1189 lambda!285097))))

(declare-fun bs!1254656 () Bool)

(assert (= bs!1254656 d!1731982))

(declare-fun m!6455260 () Bool)

(assert (=> bs!1254656 m!6455260))

(assert (=> b!5431778 d!1731982))

(declare-fun d!1731984 () Bool)

(assert (=> d!1731984 (= (flatMap!952 z!1189 lambda!285097) (dynLambda!24373 lambda!285097 (h!68300 zl!343)))))

(declare-fun lt!2214852 () Unit!154422)

(assert (=> d!1731984 (= lt!2214852 (choose!41210 z!1189 (h!68300 zl!343) lambda!285097))))

(assert (=> d!1731984 (= z!1189 (store ((as const (Array Context!9218 Bool)) false) (h!68300 zl!343) true))))

(assert (=> d!1731984 (= (lemmaFlatMapOnSingletonSet!484 z!1189 (h!68300 zl!343) lambda!285097) lt!2214852)))

(declare-fun b_lambda!207293 () Bool)

(assert (=> (not b_lambda!207293) (not d!1731984)))

(declare-fun bs!1254657 () Bool)

(assert (= bs!1254657 d!1731984))

(assert (=> bs!1254657 m!6454602))

(declare-fun m!6455262 () Bool)

(assert (=> bs!1254657 m!6455262))

(declare-fun m!6455264 () Bool)

(assert (=> bs!1254657 m!6455264))

(declare-fun m!6455266 () Bool)

(assert (=> bs!1254657 m!6455266))

(assert (=> b!5431778 d!1731984))

(assert (=> b!5431778 d!1731960))

(declare-fun d!1731986 () Bool)

(declare-fun c!948050 () Bool)

(declare-fun e!3366117 () Bool)

(assert (=> d!1731986 (= c!948050 e!3366117)))

(declare-fun res!2311833 () Bool)

(assert (=> d!1731986 (=> (not res!2311833) (not e!3366117))))

(assert (=> d!1731986 (= res!2311833 ((_ is Cons!61851) (exprs!5109 (h!68300 zl!343))))))

(declare-fun e!3366118 () (InoxSet Context!9218))

(assert (=> d!1731986 (= (derivationStepZipperUp!597 (h!68300 zl!343) (h!68298 s!2326)) e!3366118)))

(declare-fun b!5432629 () Bool)

(declare-fun e!3366119 () (InoxSet Context!9218))

(assert (=> b!5432629 (= e!3366119 ((as const (Array Context!9218 Bool)) false))))

(declare-fun call!389166 () (InoxSet Context!9218))

(declare-fun b!5432630 () Bool)

(assert (=> b!5432630 (= e!3366118 ((_ map or) call!389166 (derivationStepZipperUp!597 (Context!9219 (t!375200 (exprs!5109 (h!68300 zl!343)))) (h!68298 s!2326))))))

(declare-fun b!5432631 () Bool)

(assert (=> b!5432631 (= e!3366118 e!3366119)))

(declare-fun c!948051 () Bool)

(assert (=> b!5432631 (= c!948051 ((_ is Cons!61851) (exprs!5109 (h!68300 zl!343))))))

(declare-fun b!5432632 () Bool)

(assert (=> b!5432632 (= e!3366117 (nullable!5394 (h!68299 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun b!5432633 () Bool)

(assert (=> b!5432633 (= e!3366119 call!389166)))

(declare-fun bm!389161 () Bool)

(assert (=> bm!389161 (= call!389166 (derivationStepZipperDown!673 (h!68299 (exprs!5109 (h!68300 zl!343))) (Context!9219 (t!375200 (exprs!5109 (h!68300 zl!343)))) (h!68298 s!2326)))))

(assert (= (and d!1731986 res!2311833) b!5432632))

(assert (= (and d!1731986 c!948050) b!5432630))

(assert (= (and d!1731986 (not c!948050)) b!5432631))

(assert (= (and b!5432631 c!948051) b!5432633))

(assert (= (and b!5432631 (not c!948051)) b!5432629))

(assert (= (or b!5432630 b!5432633) bm!389161))

(declare-fun m!6455268 () Bool)

(assert (=> b!5432630 m!6455268))

(assert (=> b!5432632 m!6454608))

(declare-fun m!6455270 () Bool)

(assert (=> bm!389161 m!6455270))

(assert (=> b!5431778 d!1731986))

(declare-fun bm!389162 () Bool)

(declare-fun call!389170 () (InoxSet Context!9218))

(declare-fun call!389169 () (InoxSet Context!9218))

(assert (=> bm!389162 (= call!389170 call!389169)))

(declare-fun b!5432634 () Bool)

(declare-fun c!948054 () Bool)

(declare-fun e!3366122 () Bool)

(assert (=> b!5432634 (= c!948054 e!3366122)))

(declare-fun res!2311834 () Bool)

(assert (=> b!5432634 (=> (not res!2311834) (not e!3366122))))

(assert (=> b!5432634 (= res!2311834 ((_ is Concat!24070) (h!68299 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun e!3366121 () (InoxSet Context!9218))

(declare-fun e!3366123 () (InoxSet Context!9218))

(assert (=> b!5432634 (= e!3366121 e!3366123)))

(declare-fun bm!389163 () Bool)

(declare-fun call!389168 () List!61975)

(declare-fun call!389171 () List!61975)

(assert (=> bm!389163 (= call!389168 call!389171)))

(declare-fun c!948052 () Bool)

(declare-fun call!389167 () (InoxSet Context!9218))

(declare-fun bm!389164 () Bool)

(assert (=> bm!389164 (= call!389167 (derivationStepZipperDown!673 (ite c!948052 (regTwo!30963 (h!68299 (exprs!5109 (h!68300 zl!343)))) (regOne!30962 (h!68299 (exprs!5109 (h!68300 zl!343))))) (ite c!948052 lt!2214705 (Context!9219 call!389171)) (h!68298 s!2326)))))

(declare-fun b!5432635 () Bool)

(declare-fun e!3366124 () (InoxSet Context!9218))

(assert (=> b!5432635 (= e!3366124 ((as const (Array Context!9218 Bool)) false))))

(declare-fun b!5432636 () Bool)

(declare-fun e!3366120 () (InoxSet Context!9218))

(assert (=> b!5432636 (= e!3366120 (store ((as const (Array Context!9218 Bool)) false) lt!2214705 true))))

(declare-fun b!5432637 () Bool)

(assert (=> b!5432637 (= e!3366121 ((_ map or) call!389169 call!389167))))

(declare-fun b!5432638 () Bool)

(declare-fun c!948053 () Bool)

(assert (=> b!5432638 (= c!948053 ((_ is Star!15225) (h!68299 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun e!3366125 () (InoxSet Context!9218))

(assert (=> b!5432638 (= e!3366125 e!3366124)))

(declare-fun bm!389165 () Bool)

(declare-fun call!389172 () (InoxSet Context!9218))

(assert (=> bm!389165 (= call!389172 call!389170)))

(declare-fun d!1731988 () Bool)

(declare-fun c!948055 () Bool)

(assert (=> d!1731988 (= c!948055 (and ((_ is ElementMatch!15225) (h!68299 (exprs!5109 (h!68300 zl!343)))) (= (c!947773 (h!68299 (exprs!5109 (h!68300 zl!343)))) (h!68298 s!2326))))))

(assert (=> d!1731988 (= (derivationStepZipperDown!673 (h!68299 (exprs!5109 (h!68300 zl!343))) lt!2214705 (h!68298 s!2326)) e!3366120)))

(declare-fun b!5432639 () Bool)

(assert (=> b!5432639 (= e!3366124 call!389172)))

(declare-fun b!5432640 () Bool)

(assert (=> b!5432640 (= e!3366123 ((_ map or) call!389167 call!389170))))

(declare-fun b!5432641 () Bool)

(assert (=> b!5432641 (= e!3366123 e!3366125)))

(declare-fun c!948056 () Bool)

(assert (=> b!5432641 (= c!948056 ((_ is Concat!24070) (h!68299 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun bm!389166 () Bool)

(assert (=> bm!389166 (= call!389171 ($colon$colon!1518 (exprs!5109 lt!2214705) (ite (or c!948054 c!948056) (regTwo!30962 (h!68299 (exprs!5109 (h!68300 zl!343)))) (h!68299 (exprs!5109 (h!68300 zl!343))))))))

(declare-fun b!5432642 () Bool)

(assert (=> b!5432642 (= e!3366120 e!3366121)))

(assert (=> b!5432642 (= c!948052 ((_ is Union!15225) (h!68299 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun b!5432643 () Bool)

(assert (=> b!5432643 (= e!3366122 (nullable!5394 (regOne!30962 (h!68299 (exprs!5109 (h!68300 zl!343))))))))

(declare-fun bm!389167 () Bool)

(assert (=> bm!389167 (= call!389169 (derivationStepZipperDown!673 (ite c!948052 (regOne!30963 (h!68299 (exprs!5109 (h!68300 zl!343)))) (ite c!948054 (regTwo!30962 (h!68299 (exprs!5109 (h!68300 zl!343)))) (ite c!948056 (regOne!30962 (h!68299 (exprs!5109 (h!68300 zl!343)))) (reg!15554 (h!68299 (exprs!5109 (h!68300 zl!343))))))) (ite (or c!948052 c!948054) lt!2214705 (Context!9219 call!389168)) (h!68298 s!2326)))))

(declare-fun b!5432644 () Bool)

(assert (=> b!5432644 (= e!3366125 call!389172)))

(assert (= (and d!1731988 c!948055) b!5432636))

(assert (= (and d!1731988 (not c!948055)) b!5432642))

(assert (= (and b!5432642 c!948052) b!5432637))

(assert (= (and b!5432642 (not c!948052)) b!5432634))

(assert (= (and b!5432634 res!2311834) b!5432643))

(assert (= (and b!5432634 c!948054) b!5432640))

(assert (= (and b!5432634 (not c!948054)) b!5432641))

(assert (= (and b!5432641 c!948056) b!5432644))

(assert (= (and b!5432641 (not c!948056)) b!5432638))

(assert (= (and b!5432638 c!948053) b!5432639))

(assert (= (and b!5432638 (not c!948053)) b!5432635))

(assert (= (or b!5432644 b!5432639) bm!389163))

(assert (= (or b!5432644 b!5432639) bm!389165))

(assert (= (or b!5432640 bm!389163) bm!389166))

(assert (= (or b!5432640 bm!389165) bm!389162))

(assert (= (or b!5432637 b!5432640) bm!389164))

(assert (= (or b!5432637 bm!389162) bm!389167))

(declare-fun m!6455272 () Bool)

(assert (=> b!5432643 m!6455272))

(declare-fun m!6455274 () Bool)

(assert (=> bm!389164 m!6455274))

(declare-fun m!6455276 () Bool)

(assert (=> bm!389167 m!6455276))

(assert (=> b!5432636 m!6454658))

(declare-fun m!6455278 () Bool)

(assert (=> bm!389166 m!6455278))

(assert (=> b!5431778 d!1731988))

(declare-fun d!1731990 () Bool)

(declare-fun lt!2214853 () Regex!15225)

(assert (=> d!1731990 (validRegex!6961 lt!2214853)))

(assert (=> d!1731990 (= lt!2214853 (generalisedUnion!1154 (unfocusZipperList!667 (Cons!61852 lt!2214701 Nil!61852))))))

(assert (=> d!1731990 (= (unfocusZipper!967 (Cons!61852 lt!2214701 Nil!61852)) lt!2214853)))

(declare-fun bs!1254658 () Bool)

(assert (= bs!1254658 d!1731990))

(declare-fun m!6455280 () Bool)

(assert (=> bs!1254658 m!6455280))

(declare-fun m!6455282 () Bool)

(assert (=> bs!1254658 m!6455282))

(assert (=> bs!1254658 m!6455282))

(declare-fun m!6455284 () Bool)

(assert (=> bs!1254658 m!6455284))

(assert (=> b!5431756 d!1731990))

(declare-fun d!1731992 () Bool)

(assert (=> d!1731992 (= (flatMap!952 lt!2214696 lambda!285097) (dynLambda!24373 lambda!285097 lt!2214701))))

(declare-fun lt!2214854 () Unit!154422)

(assert (=> d!1731992 (= lt!2214854 (choose!41210 lt!2214696 lt!2214701 lambda!285097))))

(assert (=> d!1731992 (= lt!2214696 (store ((as const (Array Context!9218 Bool)) false) lt!2214701 true))))

(assert (=> d!1731992 (= (lemmaFlatMapOnSingletonSet!484 lt!2214696 lt!2214701 lambda!285097) lt!2214854)))

(declare-fun b_lambda!207295 () Bool)

(assert (=> (not b_lambda!207295) (not d!1731992)))

(declare-fun bs!1254659 () Bool)

(assert (= bs!1254659 d!1731992))

(assert (=> bs!1254659 m!6454584))

(declare-fun m!6455286 () Bool)

(assert (=> bs!1254659 m!6455286))

(declare-fun m!6455288 () Bool)

(assert (=> bs!1254659 m!6455288))

(assert (=> bs!1254659 m!6454568))

(assert (=> b!5431756 d!1731992))

(declare-fun d!1731994 () Bool)

(declare-fun c!948057 () Bool)

(declare-fun e!3366126 () Bool)

(assert (=> d!1731994 (= c!948057 e!3366126)))

(declare-fun res!2311835 () Bool)

(assert (=> d!1731994 (=> (not res!2311835) (not e!3366126))))

(assert (=> d!1731994 (= res!2311835 ((_ is Cons!61851) (exprs!5109 lt!2214701)))))

(declare-fun e!3366127 () (InoxSet Context!9218))

(assert (=> d!1731994 (= (derivationStepZipperUp!597 lt!2214701 (h!68298 s!2326)) e!3366127)))

(declare-fun b!5432645 () Bool)

(declare-fun e!3366128 () (InoxSet Context!9218))

(assert (=> b!5432645 (= e!3366128 ((as const (Array Context!9218 Bool)) false))))

(declare-fun b!5432646 () Bool)

(declare-fun call!389173 () (InoxSet Context!9218))

(assert (=> b!5432646 (= e!3366127 ((_ map or) call!389173 (derivationStepZipperUp!597 (Context!9219 (t!375200 (exprs!5109 lt!2214701))) (h!68298 s!2326))))))

(declare-fun b!5432647 () Bool)

(assert (=> b!5432647 (= e!3366127 e!3366128)))

(declare-fun c!948058 () Bool)

(assert (=> b!5432647 (= c!948058 ((_ is Cons!61851) (exprs!5109 lt!2214701)))))

(declare-fun b!5432648 () Bool)

(assert (=> b!5432648 (= e!3366126 (nullable!5394 (h!68299 (exprs!5109 lt!2214701))))))

(declare-fun b!5432649 () Bool)

(assert (=> b!5432649 (= e!3366128 call!389173)))

(declare-fun bm!389168 () Bool)

(assert (=> bm!389168 (= call!389173 (derivationStepZipperDown!673 (h!68299 (exprs!5109 lt!2214701)) (Context!9219 (t!375200 (exprs!5109 lt!2214701))) (h!68298 s!2326)))))

(assert (= (and d!1731994 res!2311835) b!5432648))

(assert (= (and d!1731994 c!948057) b!5432646))

(assert (= (and d!1731994 (not c!948057)) b!5432647))

(assert (= (and b!5432647 c!948058) b!5432649))

(assert (= (and b!5432647 (not c!948058)) b!5432645))

(assert (= (or b!5432646 b!5432649) bm!389168))

(declare-fun m!6455290 () Bool)

(assert (=> b!5432646 m!6455290))

(declare-fun m!6455292 () Bool)

(assert (=> b!5432648 m!6455292))

(declare-fun m!6455294 () Bool)

(assert (=> bm!389168 m!6455294))

(assert (=> b!5431756 d!1731994))

(declare-fun d!1731996 () Bool)

(assert (=> d!1731996 (= (flatMap!952 lt!2214706 lambda!285097) (choose!41209 lt!2214706 lambda!285097))))

(declare-fun bs!1254660 () Bool)

(assert (= bs!1254660 d!1731996))

(declare-fun m!6455296 () Bool)

(assert (=> bs!1254660 m!6455296))

(assert (=> b!5431756 d!1731996))

(declare-fun d!1731998 () Bool)

(assert (=> d!1731998 (= (flatMap!952 lt!2214696 lambda!285097) (choose!41209 lt!2214696 lambda!285097))))

(declare-fun bs!1254661 () Bool)

(assert (= bs!1254661 d!1731998))

(declare-fun m!6455298 () Bool)

(assert (=> bs!1254661 m!6455298))

(assert (=> b!5431756 d!1731998))

(declare-fun d!1732000 () Bool)

(declare-fun c!948059 () Bool)

(declare-fun e!3366129 () Bool)

(assert (=> d!1732000 (= c!948059 e!3366129)))

(declare-fun res!2311836 () Bool)

(assert (=> d!1732000 (=> (not res!2311836) (not e!3366129))))

(assert (=> d!1732000 (= res!2311836 ((_ is Cons!61851) (exprs!5109 lt!2214693)))))

(declare-fun e!3366130 () (InoxSet Context!9218))

(assert (=> d!1732000 (= (derivationStepZipperUp!597 lt!2214693 (h!68298 s!2326)) e!3366130)))

(declare-fun b!5432650 () Bool)

(declare-fun e!3366131 () (InoxSet Context!9218))

(assert (=> b!5432650 (= e!3366131 ((as const (Array Context!9218 Bool)) false))))

(declare-fun call!389174 () (InoxSet Context!9218))

(declare-fun b!5432651 () Bool)

(assert (=> b!5432651 (= e!3366130 ((_ map or) call!389174 (derivationStepZipperUp!597 (Context!9219 (t!375200 (exprs!5109 lt!2214693))) (h!68298 s!2326))))))

(declare-fun b!5432652 () Bool)

(assert (=> b!5432652 (= e!3366130 e!3366131)))

(declare-fun c!948060 () Bool)

(assert (=> b!5432652 (= c!948060 ((_ is Cons!61851) (exprs!5109 lt!2214693)))))

(declare-fun b!5432653 () Bool)

(assert (=> b!5432653 (= e!3366129 (nullable!5394 (h!68299 (exprs!5109 lt!2214693))))))

(declare-fun b!5432654 () Bool)

(assert (=> b!5432654 (= e!3366131 call!389174)))

(declare-fun bm!389169 () Bool)

(assert (=> bm!389169 (= call!389174 (derivationStepZipperDown!673 (h!68299 (exprs!5109 lt!2214693)) (Context!9219 (t!375200 (exprs!5109 lt!2214693))) (h!68298 s!2326)))))

(assert (= (and d!1732000 res!2311836) b!5432653))

(assert (= (and d!1732000 c!948059) b!5432651))

(assert (= (and d!1732000 (not c!948059)) b!5432652))

(assert (= (and b!5432652 c!948060) b!5432654))

(assert (= (and b!5432652 (not c!948060)) b!5432650))

(assert (= (or b!5432651 b!5432654) bm!389169))

(declare-fun m!6455300 () Bool)

(assert (=> b!5432651 m!6455300))

(declare-fun m!6455302 () Bool)

(assert (=> b!5432653 m!6455302))

(declare-fun m!6455304 () Bool)

(assert (=> bm!389169 m!6455304))

(assert (=> b!5431756 d!1732000))

(declare-fun d!1732002 () Bool)

(assert (=> d!1732002 (= (flatMap!952 lt!2214706 lambda!285097) (dynLambda!24373 lambda!285097 lt!2214693))))

(declare-fun lt!2214855 () Unit!154422)

(assert (=> d!1732002 (= lt!2214855 (choose!41210 lt!2214706 lt!2214693 lambda!285097))))

(assert (=> d!1732002 (= lt!2214706 (store ((as const (Array Context!9218 Bool)) false) lt!2214693 true))))

(assert (=> d!1732002 (= (lemmaFlatMapOnSingletonSet!484 lt!2214706 lt!2214693 lambda!285097) lt!2214855)))

(declare-fun b_lambda!207297 () Bool)

(assert (=> (not b_lambda!207297) (not d!1732002)))

(declare-fun bs!1254662 () Bool)

(assert (= bs!1254662 d!1732002))

(assert (=> bs!1254662 m!6454570))

(declare-fun m!6455306 () Bool)

(assert (=> bs!1254662 m!6455306))

(declare-fun m!6455308 () Bool)

(assert (=> bs!1254662 m!6455308))

(assert (=> bs!1254662 m!6454574))

(assert (=> b!5431756 d!1732002))

(declare-fun bs!1254663 () Bool)

(declare-fun b!5432656 () Bool)

(assert (= bs!1254663 (and b!5432656 b!5431770)))

(declare-fun lambda!285170 () Int)

(assert (=> bs!1254663 (not (= lambda!285170 lambda!285095))))

(assert (=> bs!1254663 (not (= lambda!285170 lambda!285096))))

(declare-fun bs!1254664 () Bool)

(assert (= bs!1254664 (and b!5432656 b!5432614)))

(assert (=> bs!1254664 (= (and (= (reg!15554 r!7292) (reg!15554 lt!2214695)) (= r!7292 lt!2214695)) (= lambda!285170 lambda!285168))))

(declare-fun bs!1254665 () Bool)

(assert (= bs!1254665 (and b!5432656 b!5432619)))

(assert (=> bs!1254665 (not (= lambda!285170 lambda!285169))))

(assert (=> b!5432656 true))

(assert (=> b!5432656 true))

(declare-fun bs!1254666 () Bool)

(declare-fun b!5432661 () Bool)

(assert (= bs!1254666 (and b!5432661 b!5431770)))

(declare-fun lambda!285171 () Int)

(assert (=> bs!1254666 (not (= lambda!285171 lambda!285095))))

(declare-fun bs!1254667 () Bool)

(assert (= bs!1254667 (and b!5432661 b!5432619)))

(assert (=> bs!1254667 (= (and (= (regOne!30962 r!7292) (regOne!30962 lt!2214695)) (= (regTwo!30962 r!7292) (regTwo!30962 lt!2214695))) (= lambda!285171 lambda!285169))))

(declare-fun bs!1254668 () Bool)

(assert (= bs!1254668 (and b!5432661 b!5432656)))

(assert (=> bs!1254668 (not (= lambda!285171 lambda!285170))))

(assert (=> bs!1254666 (= lambda!285171 lambda!285096)))

(declare-fun bs!1254669 () Bool)

(assert (= bs!1254669 (and b!5432661 b!5432614)))

(assert (=> bs!1254669 (not (= lambda!285171 lambda!285168))))

(assert (=> b!5432661 true))

(assert (=> b!5432661 true))

(declare-fun b!5432655 () Bool)

(declare-fun e!3366134 () Bool)

(declare-fun e!3366135 () Bool)

(assert (=> b!5432655 (= e!3366134 e!3366135)))

(declare-fun res!2311838 () Bool)

(assert (=> b!5432655 (= res!2311838 (matchRSpec!2328 (regOne!30963 r!7292) s!2326))))

(assert (=> b!5432655 (=> res!2311838 e!3366135)))

(declare-fun e!3366138 () Bool)

(declare-fun call!389175 () Bool)

(assert (=> b!5432656 (= e!3366138 call!389175)))

(declare-fun bm!389170 () Bool)

(declare-fun call!389176 () Bool)

(assert (=> bm!389170 (= call!389176 (isEmpty!33856 s!2326))))

(declare-fun b!5432657 () Bool)

(declare-fun c!948061 () Bool)

(assert (=> b!5432657 (= c!948061 ((_ is Union!15225) r!7292))))

(declare-fun e!3366137 () Bool)

(assert (=> b!5432657 (= e!3366137 e!3366134)))

(declare-fun b!5432658 () Bool)

(assert (=> b!5432658 (= e!3366135 (matchRSpec!2328 (regTwo!30963 r!7292) s!2326))))

(declare-fun b!5432659 () Bool)

(declare-fun res!2311839 () Bool)

(assert (=> b!5432659 (=> res!2311839 e!3366138)))

(assert (=> b!5432659 (= res!2311839 call!389176)))

(declare-fun e!3366133 () Bool)

(assert (=> b!5432659 (= e!3366133 e!3366138)))

(declare-fun b!5432660 () Bool)

(declare-fun c!948063 () Bool)

(assert (=> b!5432660 (= c!948063 ((_ is ElementMatch!15225) r!7292))))

(declare-fun e!3366136 () Bool)

(assert (=> b!5432660 (= e!3366136 e!3366137)))

(declare-fun d!1732004 () Bool)

(declare-fun c!948062 () Bool)

(assert (=> d!1732004 (= c!948062 ((_ is EmptyExpr!15225) r!7292))))

(declare-fun e!3366132 () Bool)

(assert (=> d!1732004 (= (matchRSpec!2328 r!7292 s!2326) e!3366132)))

(assert (=> b!5432661 (= e!3366133 call!389175)))

(declare-fun bm!389171 () Bool)

(declare-fun c!948064 () Bool)

(assert (=> bm!389171 (= call!389175 (Exists!2406 (ite c!948064 lambda!285170 lambda!285171)))))

(declare-fun b!5432662 () Bool)

(assert (=> b!5432662 (= e!3366132 call!389176)))

(declare-fun b!5432663 () Bool)

(assert (=> b!5432663 (= e!3366137 (= s!2326 (Cons!61850 (c!947773 r!7292) Nil!61850)))))

(declare-fun b!5432664 () Bool)

(assert (=> b!5432664 (= e!3366132 e!3366136)))

(declare-fun res!2311837 () Bool)

(assert (=> b!5432664 (= res!2311837 (not ((_ is EmptyLang!15225) r!7292)))))

(assert (=> b!5432664 (=> (not res!2311837) (not e!3366136))))

(declare-fun b!5432665 () Bool)

(assert (=> b!5432665 (= e!3366134 e!3366133)))

(assert (=> b!5432665 (= c!948064 ((_ is Star!15225) r!7292))))

(assert (= (and d!1732004 c!948062) b!5432662))

(assert (= (and d!1732004 (not c!948062)) b!5432664))

(assert (= (and b!5432664 res!2311837) b!5432660))

(assert (= (and b!5432660 c!948063) b!5432663))

(assert (= (and b!5432660 (not c!948063)) b!5432657))

(assert (= (and b!5432657 c!948061) b!5432655))

(assert (= (and b!5432657 (not c!948061)) b!5432665))

(assert (= (and b!5432655 (not res!2311838)) b!5432658))

(assert (= (and b!5432665 c!948064) b!5432659))

(assert (= (and b!5432665 (not c!948064)) b!5432661))

(assert (= (and b!5432659 (not res!2311839)) b!5432656))

(assert (= (or b!5432656 b!5432661) bm!389171))

(assert (= (or b!5432662 b!5432659) bm!389170))

(declare-fun m!6455310 () Bool)

(assert (=> b!5432655 m!6455310))

(assert (=> bm!389170 m!6455062))

(declare-fun m!6455312 () Bool)

(assert (=> b!5432658 m!6455312))

(declare-fun m!6455314 () Bool)

(assert (=> bm!389171 m!6455314))

(assert (=> b!5431776 d!1732004))

(declare-fun b!5432666 () Bool)

(declare-fun e!3366142 () Bool)

(declare-fun e!3366140 () Bool)

(assert (=> b!5432666 (= e!3366142 e!3366140)))

(declare-fun res!2311844 () Bool)

(assert (=> b!5432666 (=> (not res!2311844) (not e!3366140))))

(declare-fun lt!2214856 () Bool)

(assert (=> b!5432666 (= res!2311844 (not lt!2214856))))

(declare-fun b!5432667 () Bool)

(declare-fun e!3366145 () Bool)

(assert (=> b!5432667 (= e!3366145 (not (= (head!11653 s!2326) (c!947773 r!7292))))))

(declare-fun b!5432668 () Bool)

(declare-fun e!3366144 () Bool)

(assert (=> b!5432668 (= e!3366144 (nullable!5394 r!7292))))

(declare-fun bm!389172 () Bool)

(declare-fun call!389177 () Bool)

(assert (=> bm!389172 (= call!389177 (isEmpty!33856 s!2326))))

(declare-fun b!5432669 () Bool)

(assert (=> b!5432669 (= e!3366144 (matchR!7410 (derivativeStep!4289 r!7292 (head!11653 s!2326)) (tail!10750 s!2326)))))

(declare-fun b!5432670 () Bool)

(assert (=> b!5432670 (= e!3366140 e!3366145)))

(declare-fun res!2311846 () Bool)

(assert (=> b!5432670 (=> res!2311846 e!3366145)))

(assert (=> b!5432670 (= res!2311846 call!389177)))

(declare-fun b!5432671 () Bool)

(declare-fun res!2311840 () Bool)

(declare-fun e!3366143 () Bool)

(assert (=> b!5432671 (=> (not res!2311840) (not e!3366143))))

(assert (=> b!5432671 (= res!2311840 (isEmpty!33856 (tail!10750 s!2326)))))

(declare-fun b!5432672 () Bool)

(declare-fun res!2311842 () Bool)

(assert (=> b!5432672 (=> (not res!2311842) (not e!3366143))))

(assert (=> b!5432672 (= res!2311842 (not call!389177))))

(declare-fun b!5432673 () Bool)

(declare-fun res!2311847 () Bool)

(assert (=> b!5432673 (=> res!2311847 e!3366145)))

(assert (=> b!5432673 (= res!2311847 (not (isEmpty!33856 (tail!10750 s!2326))))))

(declare-fun b!5432674 () Bool)

(declare-fun res!2311843 () Bool)

(assert (=> b!5432674 (=> res!2311843 e!3366142)))

(assert (=> b!5432674 (= res!2311843 (not ((_ is ElementMatch!15225) r!7292)))))

(declare-fun e!3366139 () Bool)

(assert (=> b!5432674 (= e!3366139 e!3366142)))

(declare-fun d!1732006 () Bool)

(declare-fun e!3366141 () Bool)

(assert (=> d!1732006 e!3366141))

(declare-fun c!948065 () Bool)

(assert (=> d!1732006 (= c!948065 ((_ is EmptyExpr!15225) r!7292))))

(assert (=> d!1732006 (= lt!2214856 e!3366144)))

(declare-fun c!948066 () Bool)

(assert (=> d!1732006 (= c!948066 (isEmpty!33856 s!2326))))

(assert (=> d!1732006 (validRegex!6961 r!7292)))

(assert (=> d!1732006 (= (matchR!7410 r!7292 s!2326) lt!2214856)))

(declare-fun b!5432675 () Bool)

(assert (=> b!5432675 (= e!3366141 e!3366139)))

(declare-fun c!948067 () Bool)

(assert (=> b!5432675 (= c!948067 ((_ is EmptyLang!15225) r!7292))))

(declare-fun b!5432676 () Bool)

(assert (=> b!5432676 (= e!3366141 (= lt!2214856 call!389177))))

(declare-fun b!5432677 () Bool)

(assert (=> b!5432677 (= e!3366143 (= (head!11653 s!2326) (c!947773 r!7292)))))

(declare-fun b!5432678 () Bool)

(assert (=> b!5432678 (= e!3366139 (not lt!2214856))))

(declare-fun b!5432679 () Bool)

(declare-fun res!2311845 () Bool)

(assert (=> b!5432679 (=> res!2311845 e!3366142)))

(assert (=> b!5432679 (= res!2311845 e!3366143)))

(declare-fun res!2311841 () Bool)

(assert (=> b!5432679 (=> (not res!2311841) (not e!3366143))))

(assert (=> b!5432679 (= res!2311841 lt!2214856)))

(assert (= (and d!1732006 c!948066) b!5432668))

(assert (= (and d!1732006 (not c!948066)) b!5432669))

(assert (= (and d!1732006 c!948065) b!5432676))

(assert (= (and d!1732006 (not c!948065)) b!5432675))

(assert (= (and b!5432675 c!948067) b!5432678))

(assert (= (and b!5432675 (not c!948067)) b!5432674))

(assert (= (and b!5432674 (not res!2311843)) b!5432679))

(assert (= (and b!5432679 res!2311841) b!5432672))

(assert (= (and b!5432672 res!2311842) b!5432671))

(assert (= (and b!5432671 res!2311840) b!5432677))

(assert (= (and b!5432679 (not res!2311845)) b!5432666))

(assert (= (and b!5432666 res!2311844) b!5432670))

(assert (= (and b!5432670 (not res!2311846)) b!5432673))

(assert (= (and b!5432673 (not res!2311847)) b!5432667))

(assert (= (or b!5432676 b!5432670 b!5432672) bm!389172))

(assert (=> b!5432673 m!6455070))

(assert (=> b!5432673 m!6455070))

(assert (=> b!5432673 m!6455220))

(assert (=> b!5432671 m!6455070))

(assert (=> b!5432671 m!6455070))

(assert (=> b!5432671 m!6455220))

(assert (=> b!5432669 m!6455066))

(assert (=> b!5432669 m!6455066))

(declare-fun m!6455316 () Bool)

(assert (=> b!5432669 m!6455316))

(assert (=> b!5432669 m!6455070))

(assert (=> b!5432669 m!6455316))

(assert (=> b!5432669 m!6455070))

(declare-fun m!6455318 () Bool)

(assert (=> b!5432669 m!6455318))

(assert (=> bm!389172 m!6455062))

(declare-fun m!6455320 () Bool)

(assert (=> b!5432668 m!6455320))

(assert (=> d!1732006 m!6455062))

(assert (=> d!1732006 m!6454636))

(assert (=> b!5432667 m!6455066))

(assert (=> b!5432677 m!6455066))

(assert (=> b!5431776 d!1732006))

(declare-fun d!1732008 () Bool)

(assert (=> d!1732008 (= (matchR!7410 r!7292 s!2326) (matchRSpec!2328 r!7292 s!2326))))

(declare-fun lt!2214857 () Unit!154422)

(assert (=> d!1732008 (= lt!2214857 (choose!41213 r!7292 s!2326))))

(assert (=> d!1732008 (validRegex!6961 r!7292)))

(assert (=> d!1732008 (= (mainMatchTheorem!2328 r!7292 s!2326) lt!2214857)))

(declare-fun bs!1254670 () Bool)

(assert (= bs!1254670 d!1732008))

(assert (=> bs!1254670 m!6454562))

(assert (=> bs!1254670 m!6454560))

(declare-fun m!6455322 () Bool)

(assert (=> bs!1254670 m!6455322))

(assert (=> bs!1254670 m!6454636))

(assert (=> b!5431776 d!1732008))

(assert (=> b!5431775 d!1731916))

(declare-fun b!5432680 () Bool)

(declare-fun e!3366151 () Bool)

(declare-fun call!389179 () Bool)

(assert (=> b!5432680 (= e!3366151 call!389179)))

(declare-fun c!948069 () Bool)

(declare-fun c!948068 () Bool)

(declare-fun bm!389173 () Bool)

(declare-fun call!389180 () Bool)

(assert (=> bm!389173 (= call!389180 (validRegex!6961 (ite c!948069 (reg!15554 r!7292) (ite c!948068 (regTwo!30963 r!7292) (regTwo!30962 r!7292)))))))

(declare-fun b!5432681 () Bool)

(declare-fun e!3366148 () Bool)

(assert (=> b!5432681 (= e!3366148 call!389179)))

(declare-fun b!5432682 () Bool)

(declare-fun res!2311850 () Bool)

(declare-fun e!3366149 () Bool)

(assert (=> b!5432682 (=> res!2311850 e!3366149)))

(assert (=> b!5432682 (= res!2311850 (not ((_ is Concat!24070) r!7292)))))

(declare-fun e!3366150 () Bool)

(assert (=> b!5432682 (= e!3366150 e!3366149)))

(declare-fun b!5432683 () Bool)

(declare-fun e!3366146 () Bool)

(declare-fun e!3366147 () Bool)

(assert (=> b!5432683 (= e!3366146 e!3366147)))

(assert (=> b!5432683 (= c!948069 ((_ is Star!15225) r!7292))))

(declare-fun bm!389174 () Bool)

(assert (=> bm!389174 (= call!389179 call!389180)))

(declare-fun b!5432684 () Bool)

(declare-fun e!3366152 () Bool)

(assert (=> b!5432684 (= e!3366152 call!389180)))

(declare-fun bm!389175 () Bool)

(declare-fun call!389178 () Bool)

(assert (=> bm!389175 (= call!389178 (validRegex!6961 (ite c!948068 (regOne!30963 r!7292) (regOne!30962 r!7292))))))

(declare-fun b!5432685 () Bool)

(assert (=> b!5432685 (= e!3366147 e!3366150)))

(assert (=> b!5432685 (= c!948068 ((_ is Union!15225) r!7292))))

(declare-fun b!5432686 () Bool)

(declare-fun res!2311849 () Bool)

(assert (=> b!5432686 (=> (not res!2311849) (not e!3366148))))

(assert (=> b!5432686 (= res!2311849 call!389178)))

(assert (=> b!5432686 (= e!3366150 e!3366148)))

(declare-fun b!5432687 () Bool)

(assert (=> b!5432687 (= e!3366149 e!3366151)))

(declare-fun res!2311848 () Bool)

(assert (=> b!5432687 (=> (not res!2311848) (not e!3366151))))

(assert (=> b!5432687 (= res!2311848 call!389178)))

(declare-fun d!1732010 () Bool)

(declare-fun res!2311852 () Bool)

(assert (=> d!1732010 (=> res!2311852 e!3366146)))

(assert (=> d!1732010 (= res!2311852 ((_ is ElementMatch!15225) r!7292))))

(assert (=> d!1732010 (= (validRegex!6961 r!7292) e!3366146)))

(declare-fun b!5432688 () Bool)

(assert (=> b!5432688 (= e!3366147 e!3366152)))

(declare-fun res!2311851 () Bool)

(assert (=> b!5432688 (= res!2311851 (not (nullable!5394 (reg!15554 r!7292))))))

(assert (=> b!5432688 (=> (not res!2311851) (not e!3366152))))

(assert (= (and d!1732010 (not res!2311852)) b!5432683))

(assert (= (and b!5432683 c!948069) b!5432688))

(assert (= (and b!5432683 (not c!948069)) b!5432685))

(assert (= (and b!5432688 res!2311851) b!5432684))

(assert (= (and b!5432685 c!948068) b!5432686))

(assert (= (and b!5432685 (not c!948068)) b!5432682))

(assert (= (and b!5432686 res!2311849) b!5432681))

(assert (= (and b!5432682 (not res!2311850)) b!5432687))

(assert (= (and b!5432687 res!2311848) b!5432680))

(assert (= (or b!5432681 b!5432680) bm!389174))

(assert (= (or b!5432686 b!5432687) bm!389175))

(assert (= (or b!5432684 bm!389174) bm!389173))

(declare-fun m!6455324 () Bool)

(assert (=> bm!389173 m!6455324))

(declare-fun m!6455326 () Bool)

(assert (=> bm!389175 m!6455326))

(declare-fun m!6455328 () Bool)

(assert (=> b!5432688 m!6455328))

(assert (=> start!570010 d!1732010))

(declare-fun d!1732012 () Bool)

(assert (=> d!1732012 (= (isEmpty!33852 (t!375201 zl!343)) ((_ is Nil!61852) (t!375201 zl!343)))))

(assert (=> b!5431755 d!1732012))

(declare-fun d!1732014 () Bool)

(assert (=> d!1732014 (= (nullable!5394 (regOne!30962 (regOne!30962 r!7292))) (nullableFct!1619 (regOne!30962 (regOne!30962 r!7292))))))

(declare-fun bs!1254671 () Bool)

(assert (= bs!1254671 d!1732014))

(declare-fun m!6455330 () Bool)

(assert (=> bs!1254671 m!6455330))

(assert (=> b!5431754 d!1732014))

(declare-fun bs!1254672 () Bool)

(declare-fun d!1732016 () Bool)

(assert (= bs!1254672 (and d!1732016 d!1731940)))

(declare-fun lambda!285174 () Int)

(assert (=> bs!1254672 (= lambda!285174 lambda!285159)))

(declare-fun b!5432709 () Bool)

(declare-fun e!3366165 () Bool)

(assert (=> b!5432709 (= e!3366165 (isEmpty!33853 (t!375200 (unfocusZipperList!667 zl!343))))))

(declare-fun b!5432710 () Bool)

(declare-fun e!3366168 () Regex!15225)

(assert (=> b!5432710 (= e!3366168 (h!68299 (unfocusZipperList!667 zl!343)))))

(declare-fun b!5432711 () Bool)

(declare-fun e!3366166 () Regex!15225)

(assert (=> b!5432711 (= e!3366168 e!3366166)))

(declare-fun c!948081 () Bool)

(assert (=> b!5432711 (= c!948081 ((_ is Cons!61851) (unfocusZipperList!667 zl!343)))))

(declare-fun b!5432712 () Bool)

(declare-fun e!3366167 () Bool)

(declare-fun lt!2214860 () Regex!15225)

(assert (=> b!5432712 (= e!3366167 (= lt!2214860 (head!11654 (unfocusZipperList!667 zl!343))))))

(declare-fun b!5432713 () Bool)

(assert (=> b!5432713 (= e!3366166 EmptyLang!15225)))

(declare-fun b!5432714 () Bool)

(declare-fun isUnion!441 (Regex!15225) Bool)

(assert (=> b!5432714 (= e!3366167 (isUnion!441 lt!2214860))))

(declare-fun b!5432715 () Bool)

(assert (=> b!5432715 (= e!3366166 (Union!15225 (h!68299 (unfocusZipperList!667 zl!343)) (generalisedUnion!1154 (t!375200 (unfocusZipperList!667 zl!343)))))))

(declare-fun b!5432716 () Bool)

(declare-fun e!3366169 () Bool)

(declare-fun e!3366170 () Bool)

(assert (=> b!5432716 (= e!3366169 e!3366170)))

(declare-fun c!948079 () Bool)

(assert (=> b!5432716 (= c!948079 (isEmpty!33853 (unfocusZipperList!667 zl!343)))))

(declare-fun b!5432717 () Bool)

(declare-fun isEmptyLang!1009 (Regex!15225) Bool)

(assert (=> b!5432717 (= e!3366170 (isEmptyLang!1009 lt!2214860))))

(declare-fun b!5432718 () Bool)

(assert (=> b!5432718 (= e!3366170 e!3366167)))

(declare-fun c!948078 () Bool)

(assert (=> b!5432718 (= c!948078 (isEmpty!33853 (tail!10751 (unfocusZipperList!667 zl!343))))))

(assert (=> d!1732016 e!3366169))

(declare-fun res!2311857 () Bool)

(assert (=> d!1732016 (=> (not res!2311857) (not e!3366169))))

(assert (=> d!1732016 (= res!2311857 (validRegex!6961 lt!2214860))))

(assert (=> d!1732016 (= lt!2214860 e!3366168)))

(declare-fun c!948080 () Bool)

(assert (=> d!1732016 (= c!948080 e!3366165)))

(declare-fun res!2311858 () Bool)

(assert (=> d!1732016 (=> (not res!2311858) (not e!3366165))))

(assert (=> d!1732016 (= res!2311858 ((_ is Cons!61851) (unfocusZipperList!667 zl!343)))))

(assert (=> d!1732016 (forall!14565 (unfocusZipperList!667 zl!343) lambda!285174)))

(assert (=> d!1732016 (= (generalisedUnion!1154 (unfocusZipperList!667 zl!343)) lt!2214860)))

(assert (= (and d!1732016 res!2311858) b!5432709))

(assert (= (and d!1732016 c!948080) b!5432710))

(assert (= (and d!1732016 (not c!948080)) b!5432711))

(assert (= (and b!5432711 c!948081) b!5432715))

(assert (= (and b!5432711 (not c!948081)) b!5432713))

(assert (= (and d!1732016 res!2311857) b!5432716))

(assert (= (and b!5432716 c!948079) b!5432717))

(assert (= (and b!5432716 (not c!948079)) b!5432718))

(assert (= (and b!5432718 c!948078) b!5432712))

(assert (= (and b!5432718 (not c!948078)) b!5432714))

(assert (=> b!5432716 m!6454596))

(declare-fun m!6455332 () Bool)

(assert (=> b!5432716 m!6455332))

(declare-fun m!6455334 () Bool)

(assert (=> b!5432709 m!6455334))

(declare-fun m!6455336 () Bool)

(assert (=> b!5432717 m!6455336))

(declare-fun m!6455338 () Bool)

(assert (=> b!5432715 m!6455338))

(assert (=> b!5432718 m!6454596))

(declare-fun m!6455340 () Bool)

(assert (=> b!5432718 m!6455340))

(assert (=> b!5432718 m!6455340))

(declare-fun m!6455342 () Bool)

(assert (=> b!5432718 m!6455342))

(assert (=> b!5432712 m!6454596))

(declare-fun m!6455344 () Bool)

(assert (=> b!5432712 m!6455344))

(declare-fun m!6455346 () Bool)

(assert (=> d!1732016 m!6455346))

(assert (=> d!1732016 m!6454596))

(declare-fun m!6455348 () Bool)

(assert (=> d!1732016 m!6455348))

(declare-fun m!6455350 () Bool)

(assert (=> b!5432714 m!6455350))

(assert (=> b!5431773 d!1732016))

(declare-fun bs!1254673 () Bool)

(declare-fun d!1732018 () Bool)

(assert (= bs!1254673 (and d!1732018 d!1731940)))

(declare-fun lambda!285177 () Int)

(assert (=> bs!1254673 (= lambda!285177 lambda!285159)))

(declare-fun bs!1254674 () Bool)

(assert (= bs!1254674 (and d!1732018 d!1732016)))

(assert (=> bs!1254674 (= lambda!285177 lambda!285174)))

(declare-fun lt!2214863 () List!61975)

(assert (=> d!1732018 (forall!14565 lt!2214863 lambda!285177)))

(declare-fun e!3366173 () List!61975)

(assert (=> d!1732018 (= lt!2214863 e!3366173)))

(declare-fun c!948084 () Bool)

(assert (=> d!1732018 (= c!948084 ((_ is Cons!61852) zl!343))))

(assert (=> d!1732018 (= (unfocusZipperList!667 zl!343) lt!2214863)))

(declare-fun b!5432723 () Bool)

(assert (=> b!5432723 (= e!3366173 (Cons!61851 (generalisedConcat!894 (exprs!5109 (h!68300 zl!343))) (unfocusZipperList!667 (t!375201 zl!343))))))

(declare-fun b!5432724 () Bool)

(assert (=> b!5432724 (= e!3366173 Nil!61851)))

(assert (= (and d!1732018 c!948084) b!5432723))

(assert (= (and d!1732018 (not c!948084)) b!5432724))

(declare-fun m!6455352 () Bool)

(assert (=> d!1732018 m!6455352))

(assert (=> b!5432723 m!6454652))

(declare-fun m!6455354 () Bool)

(assert (=> b!5432723 m!6455354))

(assert (=> b!5431773 d!1732018))

(declare-fun bs!1254675 () Bool)

(declare-fun d!1732020 () Bool)

(assert (= bs!1254675 (and d!1732020 d!1731940)))

(declare-fun lambda!285180 () Int)

(assert (=> bs!1254675 (= lambda!285180 lambda!285159)))

(declare-fun bs!1254676 () Bool)

(assert (= bs!1254676 (and d!1732020 d!1732016)))

(assert (=> bs!1254676 (= lambda!285180 lambda!285174)))

(declare-fun bs!1254677 () Bool)

(assert (= bs!1254677 (and d!1732020 d!1732018)))

(assert (=> bs!1254677 (= lambda!285180 lambda!285177)))

(assert (=> d!1732020 (= (inv!81309 (h!68300 zl!343)) (forall!14565 (exprs!5109 (h!68300 zl!343)) lambda!285180))))

(declare-fun bs!1254678 () Bool)

(assert (= bs!1254678 d!1732020))

(declare-fun m!6455356 () Bool)

(assert (=> bs!1254678 m!6455356))

(assert (=> b!5431752 d!1732020))

(assert (=> b!5431771 d!1731916))

(declare-fun d!1732022 () Bool)

(declare-fun c!948085 () Bool)

(assert (=> d!1732022 (= c!948085 (isEmpty!33856 s!2326))))

(declare-fun e!3366174 () Bool)

(assert (=> d!1732022 (= (matchZipper!1469 z!1189 s!2326) e!3366174)))

(declare-fun b!5432725 () Bool)

(assert (=> b!5432725 (= e!3366174 (nullableZipper!1468 z!1189))))

(declare-fun b!5432726 () Bool)

(assert (=> b!5432726 (= e!3366174 (matchZipper!1469 (derivationStepZipper!1464 z!1189 (head!11653 s!2326)) (tail!10750 s!2326)))))

(assert (= (and d!1732022 c!948085) b!5432725))

(assert (= (and d!1732022 (not c!948085)) b!5432726))

(assert (=> d!1732022 m!6455062))

(declare-fun m!6455358 () Bool)

(assert (=> b!5432725 m!6455358))

(assert (=> b!5432726 m!6455066))

(assert (=> b!5432726 m!6455066))

(declare-fun m!6455360 () Bool)

(assert (=> b!5432726 m!6455360))

(assert (=> b!5432726 m!6455070))

(assert (=> b!5432726 m!6455360))

(assert (=> b!5432726 m!6455070))

(declare-fun m!6455362 () Bool)

(assert (=> b!5432726 m!6455362))

(assert (=> b!5431751 d!1732022))

(declare-fun bs!1254679 () Bool)

(declare-fun d!1732024 () Bool)

(assert (= bs!1254679 (and d!1732024 d!1731940)))

(declare-fun lambda!285181 () Int)

(assert (=> bs!1254679 (= lambda!285181 lambda!285159)))

(declare-fun bs!1254680 () Bool)

(assert (= bs!1254680 (and d!1732024 d!1732016)))

(assert (=> bs!1254680 (= lambda!285181 lambda!285174)))

(declare-fun bs!1254681 () Bool)

(assert (= bs!1254681 (and d!1732024 d!1732018)))

(assert (=> bs!1254681 (= lambda!285181 lambda!285177)))

(declare-fun bs!1254682 () Bool)

(assert (= bs!1254682 (and d!1732024 d!1732020)))

(assert (=> bs!1254682 (= lambda!285181 lambda!285180)))

(assert (=> d!1732024 (= (inv!81309 setElem!35439) (forall!14565 (exprs!5109 setElem!35439) lambda!285181))))

(declare-fun bs!1254683 () Bool)

(assert (= bs!1254683 d!1732024))

(declare-fun m!6455364 () Bool)

(assert (=> bs!1254683 m!6455364))

(assert (=> setNonEmpty!35439 d!1732024))

(assert (=> b!5431750 d!1731944))

(declare-fun b!5432745 () Bool)

(declare-fun e!3366185 () Option!15336)

(assert (=> b!5432745 (= e!3366185 None!15335)))

(declare-fun b!5432746 () Bool)

(declare-fun e!3366187 () Option!15336)

(assert (=> b!5432746 (= e!3366187 e!3366185)))

(declare-fun c!948091 () Bool)

(assert (=> b!5432746 (= c!948091 ((_ is Nil!61850) s!2326))))

(declare-fun b!5432747 () Bool)

(declare-fun e!3366188 () Bool)

(assert (=> b!5432747 (= e!3366188 (matchR!7410 (regTwo!30962 r!7292) s!2326))))

(declare-fun b!5432749 () Bool)

(declare-fun res!2311873 () Bool)

(declare-fun e!3366186 () Bool)

(assert (=> b!5432749 (=> (not res!2311873) (not e!3366186))))

(declare-fun lt!2214871 () Option!15336)

(declare-fun get!21336 (Option!15336) tuple2!64848)

(assert (=> b!5432749 (= res!2311873 (matchR!7410 (regOne!30962 r!7292) (_1!35727 (get!21336 lt!2214871))))))

(declare-fun b!5432750 () Bool)

(declare-fun res!2311872 () Bool)

(assert (=> b!5432750 (=> (not res!2311872) (not e!3366186))))

(assert (=> b!5432750 (= res!2311872 (matchR!7410 (regTwo!30962 r!7292) (_2!35727 (get!21336 lt!2214871))))))

(declare-fun b!5432751 () Bool)

(declare-fun lt!2214870 () Unit!154422)

(declare-fun lt!2214872 () Unit!154422)

(assert (=> b!5432751 (= lt!2214870 lt!2214872)))

(declare-fun ++!13606 (List!61974 List!61974) List!61974)

(assert (=> b!5432751 (= (++!13606 (++!13606 Nil!61850 (Cons!61850 (h!68298 s!2326) Nil!61850)) (t!375199 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1863 (List!61974 C!30720 List!61974 List!61974) Unit!154422)

(assert (=> b!5432751 (= lt!2214872 (lemmaMoveElementToOtherListKeepsConcatEq!1863 Nil!61850 (h!68298 s!2326) (t!375199 s!2326) s!2326))))

(assert (=> b!5432751 (= e!3366185 (findConcatSeparation!1750 (regOne!30962 r!7292) (regTwo!30962 r!7292) (++!13606 Nil!61850 (Cons!61850 (h!68298 s!2326) Nil!61850)) (t!375199 s!2326) s!2326))))

(declare-fun b!5432752 () Bool)

(assert (=> b!5432752 (= e!3366186 (= (++!13606 (_1!35727 (get!21336 lt!2214871)) (_2!35727 (get!21336 lt!2214871))) s!2326))))

(declare-fun b!5432753 () Bool)

(declare-fun e!3366189 () Bool)

(assert (=> b!5432753 (= e!3366189 (not (isDefined!12039 lt!2214871)))))

(declare-fun d!1732026 () Bool)

(assert (=> d!1732026 e!3366189))

(declare-fun res!2311869 () Bool)

(assert (=> d!1732026 (=> res!2311869 e!3366189)))

(assert (=> d!1732026 (= res!2311869 e!3366186)))

(declare-fun res!2311871 () Bool)

(assert (=> d!1732026 (=> (not res!2311871) (not e!3366186))))

(assert (=> d!1732026 (= res!2311871 (isDefined!12039 lt!2214871))))

(assert (=> d!1732026 (= lt!2214871 e!3366187)))

(declare-fun c!948090 () Bool)

(assert (=> d!1732026 (= c!948090 e!3366188)))

(declare-fun res!2311870 () Bool)

(assert (=> d!1732026 (=> (not res!2311870) (not e!3366188))))

(assert (=> d!1732026 (= res!2311870 (matchR!7410 (regOne!30962 r!7292) Nil!61850))))

(assert (=> d!1732026 (validRegex!6961 (regOne!30962 r!7292))))

(assert (=> d!1732026 (= (findConcatSeparation!1750 (regOne!30962 r!7292) (regTwo!30962 r!7292) Nil!61850 s!2326 s!2326) lt!2214871)))

(declare-fun b!5432748 () Bool)

(assert (=> b!5432748 (= e!3366187 (Some!15335 (tuple2!64849 Nil!61850 s!2326)))))

(assert (= (and d!1732026 res!2311870) b!5432747))

(assert (= (and d!1732026 c!948090) b!5432748))

(assert (= (and d!1732026 (not c!948090)) b!5432746))

(assert (= (and b!5432746 c!948091) b!5432745))

(assert (= (and b!5432746 (not c!948091)) b!5432751))

(assert (= (and d!1732026 res!2311871) b!5432749))

(assert (= (and b!5432749 res!2311873) b!5432750))

(assert (= (and b!5432750 res!2311872) b!5432752))

(assert (= (and d!1732026 (not res!2311869)) b!5432753))

(declare-fun m!6455366 () Bool)

(assert (=> b!5432753 m!6455366))

(assert (=> d!1732026 m!6455366))

(declare-fun m!6455368 () Bool)

(assert (=> d!1732026 m!6455368))

(declare-fun m!6455370 () Bool)

(assert (=> d!1732026 m!6455370))

(declare-fun m!6455372 () Bool)

(assert (=> b!5432749 m!6455372))

(declare-fun m!6455374 () Bool)

(assert (=> b!5432749 m!6455374))

(declare-fun m!6455376 () Bool)

(assert (=> b!5432747 m!6455376))

(assert (=> b!5432752 m!6455372))

(declare-fun m!6455378 () Bool)

(assert (=> b!5432752 m!6455378))

(declare-fun m!6455380 () Bool)

(assert (=> b!5432751 m!6455380))

(assert (=> b!5432751 m!6455380))

(declare-fun m!6455382 () Bool)

(assert (=> b!5432751 m!6455382))

(declare-fun m!6455384 () Bool)

(assert (=> b!5432751 m!6455384))

(assert (=> b!5432751 m!6455380))

(declare-fun m!6455386 () Bool)

(assert (=> b!5432751 m!6455386))

(assert (=> b!5432750 m!6455372))

(declare-fun m!6455388 () Bool)

(assert (=> b!5432750 m!6455388))

(assert (=> b!5431770 d!1732026))

(declare-fun d!1732028 () Bool)

(declare-fun choose!41214 (Int) Bool)

(assert (=> d!1732028 (= (Exists!2406 lambda!285096) (choose!41214 lambda!285096))))

(declare-fun bs!1254684 () Bool)

(assert (= bs!1254684 d!1732028))

(declare-fun m!6455390 () Bool)

(assert (=> bs!1254684 m!6455390))

(assert (=> b!5431770 d!1732028))

(declare-fun d!1732030 () Bool)

(assert (=> d!1732030 (= (Exists!2406 lambda!285095) (choose!41214 lambda!285095))))

(declare-fun bs!1254685 () Bool)

(assert (= bs!1254685 d!1732030))

(declare-fun m!6455392 () Bool)

(assert (=> bs!1254685 m!6455392))

(assert (=> b!5431770 d!1732030))

(declare-fun bs!1254686 () Bool)

(declare-fun d!1732032 () Bool)

(assert (= bs!1254686 (and d!1732032 b!5431770)))

(declare-fun lambda!285184 () Int)

(assert (=> bs!1254686 (= lambda!285184 lambda!285095)))

(declare-fun bs!1254687 () Bool)

(assert (= bs!1254687 (and d!1732032 b!5432619)))

(assert (=> bs!1254687 (not (= lambda!285184 lambda!285169))))

(declare-fun bs!1254688 () Bool)

(assert (= bs!1254688 (and d!1732032 b!5432656)))

(assert (=> bs!1254688 (not (= lambda!285184 lambda!285170))))

(declare-fun bs!1254689 () Bool)

(assert (= bs!1254689 (and d!1732032 b!5432661)))

(assert (=> bs!1254689 (not (= lambda!285184 lambda!285171))))

(assert (=> bs!1254686 (not (= lambda!285184 lambda!285096))))

(declare-fun bs!1254690 () Bool)

(assert (= bs!1254690 (and d!1732032 b!5432614)))

(assert (=> bs!1254690 (not (= lambda!285184 lambda!285168))))

(assert (=> d!1732032 true))

(assert (=> d!1732032 true))

(assert (=> d!1732032 true))

(assert (=> d!1732032 (= (isDefined!12039 (findConcatSeparation!1750 (regOne!30962 r!7292) (regTwo!30962 r!7292) Nil!61850 s!2326 s!2326)) (Exists!2406 lambda!285184))))

(declare-fun lt!2214875 () Unit!154422)

(declare-fun choose!41215 (Regex!15225 Regex!15225 List!61974) Unit!154422)

(assert (=> d!1732032 (= lt!2214875 (choose!41215 (regOne!30962 r!7292) (regTwo!30962 r!7292) s!2326))))

(assert (=> d!1732032 (validRegex!6961 (regOne!30962 r!7292))))

(assert (=> d!1732032 (= (lemmaFindConcatSeparationEquivalentToExists!1514 (regOne!30962 r!7292) (regTwo!30962 r!7292) s!2326) lt!2214875)))

(declare-fun bs!1254691 () Bool)

(assert (= bs!1254691 d!1732032))

(declare-fun m!6455394 () Bool)

(assert (=> bs!1254691 m!6455394))

(declare-fun m!6455396 () Bool)

(assert (=> bs!1254691 m!6455396))

(assert (=> bs!1254691 m!6454616))

(assert (=> bs!1254691 m!6454618))

(assert (=> bs!1254691 m!6454616))

(assert (=> bs!1254691 m!6455370))

(assert (=> b!5431770 d!1732032))

(declare-fun bs!1254692 () Bool)

(declare-fun d!1732034 () Bool)

(assert (= bs!1254692 (and d!1732034 d!1732032)))

(declare-fun lambda!285189 () Int)

(assert (=> bs!1254692 (= lambda!285189 lambda!285184)))

(declare-fun bs!1254693 () Bool)

(assert (= bs!1254693 (and d!1732034 b!5431770)))

(assert (=> bs!1254693 (= lambda!285189 lambda!285095)))

(declare-fun bs!1254694 () Bool)

(assert (= bs!1254694 (and d!1732034 b!5432619)))

(assert (=> bs!1254694 (not (= lambda!285189 lambda!285169))))

(declare-fun bs!1254695 () Bool)

(assert (= bs!1254695 (and d!1732034 b!5432656)))

(assert (=> bs!1254695 (not (= lambda!285189 lambda!285170))))

(declare-fun bs!1254696 () Bool)

(assert (= bs!1254696 (and d!1732034 b!5432661)))

(assert (=> bs!1254696 (not (= lambda!285189 lambda!285171))))

(assert (=> bs!1254693 (not (= lambda!285189 lambda!285096))))

(declare-fun bs!1254697 () Bool)

(assert (= bs!1254697 (and d!1732034 b!5432614)))

(assert (=> bs!1254697 (not (= lambda!285189 lambda!285168))))

(assert (=> d!1732034 true))

(assert (=> d!1732034 true))

(assert (=> d!1732034 true))

(declare-fun lambda!285190 () Int)

(assert (=> bs!1254692 (not (= lambda!285190 lambda!285184))))

(declare-fun bs!1254698 () Bool)

(assert (= bs!1254698 d!1732034))

(assert (=> bs!1254698 (not (= lambda!285190 lambda!285189))))

(assert (=> bs!1254693 (not (= lambda!285190 lambda!285095))))

(assert (=> bs!1254694 (= (and (= (regOne!30962 r!7292) (regOne!30962 lt!2214695)) (= (regTwo!30962 r!7292) (regTwo!30962 lt!2214695))) (= lambda!285190 lambda!285169))))

(assert (=> bs!1254695 (not (= lambda!285190 lambda!285170))))

(assert (=> bs!1254696 (= lambda!285190 lambda!285171)))

(assert (=> bs!1254693 (= lambda!285190 lambda!285096)))

(assert (=> bs!1254697 (not (= lambda!285190 lambda!285168))))

(assert (=> d!1732034 true))

(assert (=> d!1732034 true))

(assert (=> d!1732034 true))

(assert (=> d!1732034 (= (Exists!2406 lambda!285189) (Exists!2406 lambda!285190))))

(declare-fun lt!2214878 () Unit!154422)

(declare-fun choose!41216 (Regex!15225 Regex!15225 List!61974) Unit!154422)

(assert (=> d!1732034 (= lt!2214878 (choose!41216 (regOne!30962 r!7292) (regTwo!30962 r!7292) s!2326))))

(assert (=> d!1732034 (validRegex!6961 (regOne!30962 r!7292))))

(assert (=> d!1732034 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1060 (regOne!30962 r!7292) (regTwo!30962 r!7292) s!2326) lt!2214878)))

(declare-fun m!6455398 () Bool)

(assert (=> bs!1254698 m!6455398))

(declare-fun m!6455400 () Bool)

(assert (=> bs!1254698 m!6455400))

(declare-fun m!6455402 () Bool)

(assert (=> bs!1254698 m!6455402))

(assert (=> bs!1254698 m!6455370))

(assert (=> b!5431770 d!1732034))

(declare-fun d!1732036 () Bool)

(declare-fun isEmpty!33857 (Option!15336) Bool)

(assert (=> d!1732036 (= (isDefined!12039 (findConcatSeparation!1750 (regOne!30962 r!7292) (regTwo!30962 r!7292) Nil!61850 s!2326 s!2326)) (not (isEmpty!33857 (findConcatSeparation!1750 (regOne!30962 r!7292) (regTwo!30962 r!7292) Nil!61850 s!2326 s!2326))))))

(declare-fun bs!1254699 () Bool)

(assert (= bs!1254699 d!1732036))

(assert (=> bs!1254699 m!6454616))

(declare-fun m!6455404 () Bool)

(assert (=> bs!1254699 m!6455404))

(assert (=> b!5431770 d!1732036))

(declare-fun bs!1254700 () Bool)

(declare-fun d!1732038 () Bool)

(assert (= bs!1254700 (and d!1732038 d!1732024)))

(declare-fun lambda!285191 () Int)

(assert (=> bs!1254700 (= lambda!285191 lambda!285181)))

(declare-fun bs!1254701 () Bool)

(assert (= bs!1254701 (and d!1732038 d!1732016)))

(assert (=> bs!1254701 (= lambda!285191 lambda!285174)))

(declare-fun bs!1254702 () Bool)

(assert (= bs!1254702 (and d!1732038 d!1732018)))

(assert (=> bs!1254702 (= lambda!285191 lambda!285177)))

(declare-fun bs!1254703 () Bool)

(assert (= bs!1254703 (and d!1732038 d!1732020)))

(assert (=> bs!1254703 (= lambda!285191 lambda!285180)))

(declare-fun bs!1254704 () Bool)

(assert (= bs!1254704 (and d!1732038 d!1731940)))

(assert (=> bs!1254704 (= lambda!285191 lambda!285159)))

(declare-fun b!5432766 () Bool)

(declare-fun e!3366198 () Regex!15225)

(assert (=> b!5432766 (= e!3366198 (Concat!24070 (h!68299 (exprs!5109 (h!68300 zl!343))) (generalisedConcat!894 (t!375200 (exprs!5109 (h!68300 zl!343))))))))

(declare-fun b!5432767 () Bool)

(assert (=> b!5432767 (= e!3366198 EmptyExpr!15225)))

(declare-fun b!5432768 () Bool)

(declare-fun e!3366201 () Bool)

(declare-fun e!3366200 () Bool)

(assert (=> b!5432768 (= e!3366201 e!3366200)))

(declare-fun c!948093 () Bool)

(assert (=> b!5432768 (= c!948093 (isEmpty!33853 (exprs!5109 (h!68300 zl!343))))))

(declare-fun b!5432769 () Bool)

(declare-fun e!3366197 () Bool)

(assert (=> b!5432769 (= e!3366197 (isEmpty!33853 (t!375200 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun b!5432770 () Bool)

(declare-fun e!3366199 () Regex!15225)

(assert (=> b!5432770 (= e!3366199 (h!68299 (exprs!5109 (h!68300 zl!343))))))

(assert (=> d!1732038 e!3366201))

(declare-fun res!2311886 () Bool)

(assert (=> d!1732038 (=> (not res!2311886) (not e!3366201))))

(declare-fun lt!2214879 () Regex!15225)

(assert (=> d!1732038 (= res!2311886 (validRegex!6961 lt!2214879))))

(assert (=> d!1732038 (= lt!2214879 e!3366199)))

(declare-fun c!948095 () Bool)

(assert (=> d!1732038 (= c!948095 e!3366197)))

(declare-fun res!2311887 () Bool)

(assert (=> d!1732038 (=> (not res!2311887) (not e!3366197))))

(assert (=> d!1732038 (= res!2311887 ((_ is Cons!61851) (exprs!5109 (h!68300 zl!343))))))

(assert (=> d!1732038 (forall!14565 (exprs!5109 (h!68300 zl!343)) lambda!285191)))

(assert (=> d!1732038 (= (generalisedConcat!894 (exprs!5109 (h!68300 zl!343))) lt!2214879)))

(declare-fun b!5432771 () Bool)

(declare-fun e!3366196 () Bool)

(assert (=> b!5432771 (= e!3366196 (= lt!2214879 (head!11654 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun b!5432772 () Bool)

(assert (=> b!5432772 (= e!3366199 e!3366198)))

(declare-fun c!948092 () Bool)

(assert (=> b!5432772 (= c!948092 ((_ is Cons!61851) (exprs!5109 (h!68300 zl!343))))))

(declare-fun b!5432773 () Bool)

(assert (=> b!5432773 (= e!3366200 e!3366196)))

(declare-fun c!948094 () Bool)

(assert (=> b!5432773 (= c!948094 (isEmpty!33853 (tail!10751 (exprs!5109 (h!68300 zl!343)))))))

(declare-fun b!5432774 () Bool)

(assert (=> b!5432774 (= e!3366200 (isEmptyExpr!1000 lt!2214879))))

(declare-fun b!5432775 () Bool)

(assert (=> b!5432775 (= e!3366196 (isConcat!523 lt!2214879))))

(assert (= (and d!1732038 res!2311887) b!5432769))

(assert (= (and d!1732038 c!948095) b!5432770))

(assert (= (and d!1732038 (not c!948095)) b!5432772))

(assert (= (and b!5432772 c!948092) b!5432766))

(assert (= (and b!5432772 (not c!948092)) b!5432767))

(assert (= (and d!1732038 res!2311886) b!5432768))

(assert (= (and b!5432768 c!948093) b!5432774))

(assert (= (and b!5432768 (not c!948093)) b!5432773))

(assert (= (and b!5432773 c!948094) b!5432771))

(assert (= (and b!5432773 (not c!948094)) b!5432775))

(declare-fun m!6455406 () Bool)

(assert (=> b!5432771 m!6455406))

(declare-fun m!6455408 () Bool)

(assert (=> d!1732038 m!6455408))

(declare-fun m!6455410 () Bool)

(assert (=> d!1732038 m!6455410))

(declare-fun m!6455412 () Bool)

(assert (=> b!5432773 m!6455412))

(assert (=> b!5432773 m!6455412))

(declare-fun m!6455414 () Bool)

(assert (=> b!5432773 m!6455414))

(declare-fun m!6455416 () Bool)

(assert (=> b!5432768 m!6455416))

(declare-fun m!6455418 () Bool)

(assert (=> b!5432775 m!6455418))

(declare-fun m!6455420 () Bool)

(assert (=> b!5432774 m!6455420))

(assert (=> b!5432766 m!6454678))

(assert (=> b!5432769 m!6454640))

(assert (=> b!5431749 d!1732038))

(declare-fun d!1732040 () Bool)

(declare-fun lt!2214880 () Regex!15225)

(assert (=> d!1732040 (validRegex!6961 lt!2214880)))

(assert (=> d!1732040 (= lt!2214880 (generalisedUnion!1154 (unfocusZipperList!667 zl!343)))))

(assert (=> d!1732040 (= (unfocusZipper!967 zl!343) lt!2214880)))

(declare-fun bs!1254705 () Bool)

(assert (= bs!1254705 d!1732040))

(declare-fun m!6455422 () Bool)

(assert (=> bs!1254705 m!6455422))

(assert (=> bs!1254705 m!6454596))

(assert (=> bs!1254705 m!6454596))

(assert (=> bs!1254705 m!6454598))

(assert (=> b!5431769 d!1732040))

(declare-fun b!5432786 () Bool)

(declare-fun e!3366204 () Bool)

(assert (=> b!5432786 (= e!3366204 tp_is_empty!39703)))

(assert (=> b!5431753 (= tp!1498414 e!3366204)))

(declare-fun b!5432787 () Bool)

(declare-fun tp!1498494 () Bool)

(declare-fun tp!1498490 () Bool)

(assert (=> b!5432787 (= e!3366204 (and tp!1498494 tp!1498490))))

(declare-fun b!5432788 () Bool)

(declare-fun tp!1498491 () Bool)

(assert (=> b!5432788 (= e!3366204 tp!1498491)))

(declare-fun b!5432789 () Bool)

(declare-fun tp!1498493 () Bool)

(declare-fun tp!1498492 () Bool)

(assert (=> b!5432789 (= e!3366204 (and tp!1498493 tp!1498492))))

(assert (= (and b!5431753 ((_ is ElementMatch!15225) (regOne!30963 r!7292))) b!5432786))

(assert (= (and b!5431753 ((_ is Concat!24070) (regOne!30963 r!7292))) b!5432787))

(assert (= (and b!5431753 ((_ is Star!15225) (regOne!30963 r!7292))) b!5432788))

(assert (= (and b!5431753 ((_ is Union!15225) (regOne!30963 r!7292))) b!5432789))

(declare-fun b!5432790 () Bool)

(declare-fun e!3366205 () Bool)

(assert (=> b!5432790 (= e!3366205 tp_is_empty!39703)))

(assert (=> b!5431753 (= tp!1498413 e!3366205)))

(declare-fun b!5432791 () Bool)

(declare-fun tp!1498499 () Bool)

(declare-fun tp!1498495 () Bool)

(assert (=> b!5432791 (= e!3366205 (and tp!1498499 tp!1498495))))

(declare-fun b!5432792 () Bool)

(declare-fun tp!1498496 () Bool)

(assert (=> b!5432792 (= e!3366205 tp!1498496)))

(declare-fun b!5432793 () Bool)

(declare-fun tp!1498498 () Bool)

(declare-fun tp!1498497 () Bool)

(assert (=> b!5432793 (= e!3366205 (and tp!1498498 tp!1498497))))

(assert (= (and b!5431753 ((_ is ElementMatch!15225) (regTwo!30963 r!7292))) b!5432790))

(assert (= (and b!5431753 ((_ is Concat!24070) (regTwo!30963 r!7292))) b!5432791))

(assert (= (and b!5431753 ((_ is Star!15225) (regTwo!30963 r!7292))) b!5432792))

(assert (= (and b!5431753 ((_ is Union!15225) (regTwo!30963 r!7292))) b!5432793))

(declare-fun b!5432798 () Bool)

(declare-fun e!3366208 () Bool)

(declare-fun tp!1498504 () Bool)

(declare-fun tp!1498505 () Bool)

(assert (=> b!5432798 (= e!3366208 (and tp!1498504 tp!1498505))))

(assert (=> b!5431767 (= tp!1498418 e!3366208)))

(assert (= (and b!5431767 ((_ is Cons!61851) (exprs!5109 setElem!35439))) b!5432798))

(declare-fun b!5432806 () Bool)

(declare-fun e!3366214 () Bool)

(declare-fun tp!1498510 () Bool)

(assert (=> b!5432806 (= e!3366214 tp!1498510)))

(declare-fun tp!1498511 () Bool)

(declare-fun e!3366213 () Bool)

(declare-fun b!5432805 () Bool)

(assert (=> b!5432805 (= e!3366213 (and (inv!81309 (h!68300 (t!375201 zl!343))) e!3366214 tp!1498511))))

(assert (=> b!5431752 (= tp!1498421 e!3366213)))

(assert (= b!5432805 b!5432806))

(assert (= (and b!5431752 ((_ is Cons!61852) (t!375201 zl!343))) b!5432805))

(declare-fun m!6455424 () Bool)

(assert (=> b!5432805 m!6455424))

(declare-fun condSetEmpty!35445 () Bool)

(assert (=> setNonEmpty!35439 (= condSetEmpty!35445 (= setRest!35439 ((as const (Array Context!9218 Bool)) false)))))

(declare-fun setRes!35445 () Bool)

(assert (=> setNonEmpty!35439 (= tp!1498412 setRes!35445)))

(declare-fun setIsEmpty!35445 () Bool)

(assert (=> setIsEmpty!35445 setRes!35445))

(declare-fun e!3366217 () Bool)

(declare-fun setNonEmpty!35445 () Bool)

(declare-fun setElem!35445 () Context!9218)

(declare-fun tp!1498516 () Bool)

(assert (=> setNonEmpty!35445 (= setRes!35445 (and tp!1498516 (inv!81309 setElem!35445) e!3366217))))

(declare-fun setRest!35445 () (InoxSet Context!9218))

(assert (=> setNonEmpty!35445 (= setRest!35439 ((_ map or) (store ((as const (Array Context!9218 Bool)) false) setElem!35445 true) setRest!35445))))

(declare-fun b!5432811 () Bool)

(declare-fun tp!1498517 () Bool)

(assert (=> b!5432811 (= e!3366217 tp!1498517)))

(assert (= (and setNonEmpty!35439 condSetEmpty!35445) setIsEmpty!35445))

(assert (= (and setNonEmpty!35439 (not condSetEmpty!35445)) setNonEmpty!35445))

(assert (= setNonEmpty!35445 b!5432811))

(declare-fun m!6455426 () Bool)

(assert (=> setNonEmpty!35445 m!6455426))

(declare-fun b!5432812 () Bool)

(declare-fun e!3366218 () Bool)

(declare-fun tp!1498518 () Bool)

(declare-fun tp!1498519 () Bool)

(assert (=> b!5432812 (= e!3366218 (and tp!1498518 tp!1498519))))

(assert (=> b!5431774 (= tp!1498416 e!3366218)))

(assert (= (and b!5431774 ((_ is Cons!61851) (exprs!5109 (h!68300 zl!343)))) b!5432812))

(declare-fun b!5432813 () Bool)

(declare-fun e!3366219 () Bool)

(assert (=> b!5432813 (= e!3366219 tp_is_empty!39703)))

(assert (=> b!5431744 (= tp!1498419 e!3366219)))

(declare-fun b!5432814 () Bool)

(declare-fun tp!1498524 () Bool)

(declare-fun tp!1498520 () Bool)

(assert (=> b!5432814 (= e!3366219 (and tp!1498524 tp!1498520))))

(declare-fun b!5432815 () Bool)

(declare-fun tp!1498521 () Bool)

(assert (=> b!5432815 (= e!3366219 tp!1498521)))

(declare-fun b!5432816 () Bool)

(declare-fun tp!1498523 () Bool)

(declare-fun tp!1498522 () Bool)

(assert (=> b!5432816 (= e!3366219 (and tp!1498523 tp!1498522))))

(assert (= (and b!5431744 ((_ is ElementMatch!15225) (regOne!30962 r!7292))) b!5432813))

(assert (= (and b!5431744 ((_ is Concat!24070) (regOne!30962 r!7292))) b!5432814))

(assert (= (and b!5431744 ((_ is Star!15225) (regOne!30962 r!7292))) b!5432815))

(assert (= (and b!5431744 ((_ is Union!15225) (regOne!30962 r!7292))) b!5432816))

(declare-fun b!5432817 () Bool)

(declare-fun e!3366220 () Bool)

(assert (=> b!5432817 (= e!3366220 tp_is_empty!39703)))

(assert (=> b!5431744 (= tp!1498417 e!3366220)))

(declare-fun b!5432818 () Bool)

(declare-fun tp!1498529 () Bool)

(declare-fun tp!1498525 () Bool)

(assert (=> b!5432818 (= e!3366220 (and tp!1498529 tp!1498525))))

(declare-fun b!5432819 () Bool)

(declare-fun tp!1498526 () Bool)

(assert (=> b!5432819 (= e!3366220 tp!1498526)))

(declare-fun b!5432820 () Bool)

(declare-fun tp!1498528 () Bool)

(declare-fun tp!1498527 () Bool)

(assert (=> b!5432820 (= e!3366220 (and tp!1498528 tp!1498527))))

(assert (= (and b!5431744 ((_ is ElementMatch!15225) (regTwo!30962 r!7292))) b!5432817))

(assert (= (and b!5431744 ((_ is Concat!24070) (regTwo!30962 r!7292))) b!5432818))

(assert (= (and b!5431744 ((_ is Star!15225) (regTwo!30962 r!7292))) b!5432819))

(assert (= (and b!5431744 ((_ is Union!15225) (regTwo!30962 r!7292))) b!5432820))

(declare-fun b!5432825 () Bool)

(declare-fun e!3366223 () Bool)

(declare-fun tp!1498532 () Bool)

(assert (=> b!5432825 (= e!3366223 (and tp_is_empty!39703 tp!1498532))))

(assert (=> b!5431779 (= tp!1498415 e!3366223)))

(assert (= (and b!5431779 ((_ is Cons!61850) (t!375199 s!2326))) b!5432825))

(declare-fun b!5432826 () Bool)

(declare-fun e!3366224 () Bool)

(assert (=> b!5432826 (= e!3366224 tp_is_empty!39703)))

(assert (=> b!5431738 (= tp!1498420 e!3366224)))

(declare-fun b!5432827 () Bool)

(declare-fun tp!1498537 () Bool)

(declare-fun tp!1498533 () Bool)

(assert (=> b!5432827 (= e!3366224 (and tp!1498537 tp!1498533))))

(declare-fun b!5432828 () Bool)

(declare-fun tp!1498534 () Bool)

(assert (=> b!5432828 (= e!3366224 tp!1498534)))

(declare-fun b!5432829 () Bool)

(declare-fun tp!1498536 () Bool)

(declare-fun tp!1498535 () Bool)

(assert (=> b!5432829 (= e!3366224 (and tp!1498536 tp!1498535))))

(assert (= (and b!5431738 ((_ is ElementMatch!15225) (reg!15554 r!7292))) b!5432826))

(assert (= (and b!5431738 ((_ is Concat!24070) (reg!15554 r!7292))) b!5432827))

(assert (= (and b!5431738 ((_ is Star!15225) (reg!15554 r!7292))) b!5432828))

(assert (= (and b!5431738 ((_ is Union!15225) (reg!15554 r!7292))) b!5432829))

(declare-fun b_lambda!207299 () Bool)

(assert (= b_lambda!207291 (or b!5431778 b_lambda!207299)))

(declare-fun bs!1254706 () Bool)

(declare-fun d!1732042 () Bool)

(assert (= bs!1254706 (and d!1732042 b!5431778)))

(assert (=> bs!1254706 (= (dynLambda!24373 lambda!285097 lt!2214705) (derivationStepZipperUp!597 lt!2214705 (h!68298 s!2326)))))

(assert (=> bs!1254706 m!6454612))

(assert (=> d!1731962 d!1732042))

(declare-fun b_lambda!207301 () Bool)

(assert (= b_lambda!207297 (or b!5431778 b_lambda!207301)))

(declare-fun bs!1254707 () Bool)

(declare-fun d!1732044 () Bool)

(assert (= bs!1254707 (and d!1732044 b!5431778)))

(assert (=> bs!1254707 (= (dynLambda!24373 lambda!285097 lt!2214693) (derivationStepZipperUp!597 lt!2214693 (h!68298 s!2326)))))

(assert (=> bs!1254707 m!6454576))

(assert (=> d!1732002 d!1732044))

(declare-fun b_lambda!207303 () Bool)

(assert (= b_lambda!207289 (or b!5431778 b_lambda!207303)))

(declare-fun bs!1254708 () Bool)

(declare-fun d!1732046 () Bool)

(assert (= bs!1254708 (and d!1732046 b!5431778)))

(assert (=> bs!1254708 (= (dynLambda!24373 lambda!285097 lt!2214721) (derivationStepZipperUp!597 lt!2214721 (h!68298 s!2326)))))

(assert (=> bs!1254708 m!6454548))

(assert (=> d!1731952 d!1732046))

(declare-fun b_lambda!207305 () Bool)

(assert (= b_lambda!207295 (or b!5431778 b_lambda!207305)))

(declare-fun bs!1254709 () Bool)

(declare-fun d!1732048 () Bool)

(assert (= bs!1254709 (and d!1732048 b!5431778)))

(assert (=> bs!1254709 (= (dynLambda!24373 lambda!285097 lt!2214701) (derivationStepZipperUp!597 lt!2214701 (h!68298 s!2326)))))

(assert (=> bs!1254709 m!6454572))

(assert (=> d!1731992 d!1732048))

(declare-fun b_lambda!207307 () Bool)

(assert (= b_lambda!207293 (or b!5431778 b_lambda!207307)))

(declare-fun bs!1254710 () Bool)

(declare-fun d!1732050 () Bool)

(assert (= bs!1254710 (and d!1732050 b!5431778)))

(assert (=> bs!1254710 (= (dynLambda!24373 lambda!285097 (h!68300 zl!343)) (derivationStepZipperUp!597 (h!68300 zl!343) (h!68298 s!2326)))))

(assert (=> bs!1254710 m!6454604))

(assert (=> d!1731984 d!1732050))

(check-sat (not b!5432827) (not bm!389161) (not b!5432751) (not b!5432752) (not b!5432655) (not d!1731940) (not bm!389169) (not b!5432067) (not b!5432648) (not d!1731968) (not d!1731912) (not b!5432671) (not b!5432092) (not d!1731978) (not d!1731970) (not b!5432774) (not bm!389153) (not d!1732024) (not b!5432627) (not b!5432473) (not b!5432553) (not d!1732006) (not bm!389175) (not b!5432632) (not d!1732020) (not d!1732014) (not b!5432295) (not b!5432658) (not bm!389160) (not b!5432792) (not b!5432820) (not b!5432566) (not b!5432787) (not b!5432669) (not b!5432568) (not d!1731860) (not b!5432716) (not d!1731914) (not d!1732030) (not b!5432825) (not bm!389133) (not bm!389105) (not b!5432712) (not b!5432814) (not d!1731984) (not bs!1254708) (not bm!389170) (not b!5432616) (not b!5432788) (not b!5432565) (not bm!389126) (not bm!389173) (not b!5432798) (not b!5432667) (not b_lambda!207307) (not b!5432749) (not d!1731954) (not bm!389149) (not b!5432280) (not b!5432457) (not b!5432709) (not b!5432766) (not bs!1254707) (not b!5432570) (not b!5432819) (not d!1732040) (not b!5432464) (not b!5432688) (not d!1732028) (not d!1731982) (not b!5432569) (not b!5432065) (not bm!389159) (not b!5432717) (not b!5432470) (not bm!389108) (not d!1731942) (not d!1731962) (not b!5432472) (not bm!389128) (not b!5432773) (not b!5432750) (not b!5432725) (not b!5432816) (not b!5432715) (not b!5432771) (not b!5432775) (not b!5432753) (not bm!389166) (not b!5432469) (not bm!389158) (not b!5432646) (not d!1731944) (not b_lambda!207301) (not b!5432812) (not b!5432294) (not b!5432492) (not d!1731948) (not b!5432556) (not b!5432494) (not b!5432815) (not bs!1254709) (not b!5432811) (not b_lambda!207299) (not bm!389129) (not d!1731972) (not b!5432828) (not b!5432793) (not bm!389134) (not d!1731910) (not bm!389152) (not b!5432718) (not d!1732038) (not b!5432630) (not b!5432805) (not b!5432668) (not d!1732022) (not b!5432304) (not b!5432829) (not b!5432572) (not b!5432653) (not b_lambda!207303) (not d!1731952) (not b!5432485) (not b!5432578) (not b!5432094) (not b!5432460) (not b!5432299) (not b!5432625) (not b!5432673) (not bs!1254710) (not bm!389139) (not bm!389131) (not b!5432769) (not d!1732008) (not b!5432471) (not b!5432303) (not b!5432714) (not bm!389124) (not d!1731998) (not d!1732016) (not bm!389140) (not setNonEmpty!35445) (not b!5432574) (not d!1731916) (not d!1731976) (not b!5432466) (not b!5432677) (not b!5432554) (not b!5432487) (not bm!389168) (not b!5432558) (not d!1732036) (not d!1731992) (not b!5432300) (not b!5432747) (not b!5432522) (not d!1731956) (not d!1731966) (not b!5432726) (not bm!389172) (not b!5432465) (not b!5432459) (not b!5432818) (not d!1732034) (not b!5432791) (not bm!389127) (not b!5432123) (not b!5432643) (not d!1731990) (not b!5432723) (not b_lambda!207305) tp_is_empty!39703 (not d!1732032) (not bm!389171) (not d!1732018) (not bs!1254706) (not d!1731958) (not b!5432806) (not d!1731844) (not bm!389164) (not bm!389107) (not bm!389167) (not b!5432562) (not d!1732002) (not bm!389135) (not b!5432768) (not b!5432552) (not bm!389136) (not d!1731946) (not b!5432651) (not b!5432462) (not d!1732026) (not b!5432789) (not b!5432613) (not d!1731996) (not bm!389147))
(check-sat)
