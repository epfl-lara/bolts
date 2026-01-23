; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570286 () Bool)

(assert start!570286)

(declare-fun b!5437774 () Bool)

(assert (=> b!5437774 true))

(assert (=> b!5437774 true))

(declare-fun lambda!286020 () Int)

(declare-fun lambda!286019 () Int)

(assert (=> b!5437774 (not (= lambda!286020 lambda!286019))))

(assert (=> b!5437774 true))

(assert (=> b!5437774 true))

(declare-fun b!5437766 () Bool)

(assert (=> b!5437766 true))

(declare-fun b!5437765 () Bool)

(declare-datatypes ((Unit!154546 0))(
  ( (Unit!154547) )
))
(declare-fun e!3368805 () Unit!154546)

(declare-fun Unit!154548 () Unit!154546)

(assert (=> b!5437765 (= e!3368805 Unit!154548)))

(declare-datatypes ((C!30772 0))(
  ( (C!30773 (val!25088 Int)) )
))
(declare-datatypes ((List!62052 0))(
  ( (Nil!61928) (Cons!61928 (h!68376 C!30772) (t!375277 List!62052)) )
))
(declare-fun s!2326 () List!62052)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15251 0))(
  ( (ElementMatch!15251 (c!948791 C!30772)) (Concat!24096 (regOne!31014 Regex!15251) (regTwo!31014 Regex!15251)) (EmptyExpr!15251) (Star!15251 (reg!15580 Regex!15251)) (EmptyLang!15251) (Union!15251 (regOne!31015 Regex!15251) (regTwo!31015 Regex!15251)) )
))
(declare-datatypes ((List!62053 0))(
  ( (Nil!61929) (Cons!61929 (h!68377 Regex!15251) (t!375278 List!62053)) )
))
(declare-datatypes ((Context!9270 0))(
  ( (Context!9271 (exprs!5135 List!62053)) )
))
(declare-fun lt!2218189 () (InoxSet Context!9270))

(declare-fun lt!2218196 () Unit!154546)

(declare-fun lt!2218195 () (InoxSet Context!9270))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!488 ((InoxSet Context!9270) (InoxSet Context!9270) List!62052) Unit!154546)

(assert (=> b!5437765 (= lt!2218196 (lemmaZipperConcatMatchesSameAsBothZippers!488 lt!2218189 lt!2218195 (t!375277 s!2326)))))

(declare-fun res!2315098 () Bool)

(declare-fun matchZipper!1495 ((InoxSet Context!9270) List!62052) Bool)

(assert (=> b!5437765 (= res!2315098 (matchZipper!1495 lt!2218189 (t!375277 s!2326)))))

(declare-fun e!3368810 () Bool)

(assert (=> b!5437765 (=> res!2315098 e!3368810)))

(assert (=> b!5437765 (= (matchZipper!1495 ((_ map or) lt!2218189 lt!2218195) (t!375277 s!2326)) e!3368810)))

(declare-fun e!3368800 () Bool)

(declare-fun e!3368804 () Bool)

(assert (=> b!5437766 (= e!3368800 e!3368804)))

(declare-fun res!2315101 () Bool)

(assert (=> b!5437766 (=> res!2315101 e!3368804)))

(declare-fun r!7292 () Regex!15251)

(get-info :version)

(assert (=> b!5437766 (= res!2315101 (or (and ((_ is ElementMatch!15251) (regOne!31014 r!7292)) (= (c!948791 (regOne!31014 r!7292)) (h!68376 s!2326))) ((_ is Union!15251) (regOne!31014 r!7292))))))

(declare-fun lt!2218192 () Unit!154546)

(assert (=> b!5437766 (= lt!2218192 e!3368805)))

(declare-fun c!948790 () Bool)

(declare-datatypes ((List!62054 0))(
  ( (Nil!61930) (Cons!61930 (h!68378 Context!9270) (t!375279 List!62054)) )
))
(declare-fun zl!343 () List!62054)

(declare-fun nullable!5420 (Regex!15251) Bool)

(assert (=> b!5437766 (= c!948790 (nullable!5420 (h!68377 (exprs!5135 (h!68378 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!9270))

(declare-fun lambda!286021 () Int)

(declare-fun flatMap!978 ((InoxSet Context!9270) Int) (InoxSet Context!9270))

(declare-fun derivationStepZipperUp!623 (Context!9270 C!30772) (InoxSet Context!9270))

(assert (=> b!5437766 (= (flatMap!978 z!1189 lambda!286021) (derivationStepZipperUp!623 (h!68378 zl!343) (h!68376 s!2326)))))

(declare-fun lt!2218202 () Unit!154546)

(declare-fun lemmaFlatMapOnSingletonSet!510 ((InoxSet Context!9270) Context!9270 Int) Unit!154546)

(assert (=> b!5437766 (= lt!2218202 (lemmaFlatMapOnSingletonSet!510 z!1189 (h!68378 zl!343) lambda!286021))))

(declare-fun lt!2218190 () Context!9270)

(assert (=> b!5437766 (= lt!2218195 (derivationStepZipperUp!623 lt!2218190 (h!68376 s!2326)))))

(declare-fun derivationStepZipperDown!699 (Regex!15251 Context!9270 C!30772) (InoxSet Context!9270))

(assert (=> b!5437766 (= lt!2218189 (derivationStepZipperDown!699 (h!68377 (exprs!5135 (h!68378 zl!343))) lt!2218190 (h!68376 s!2326)))))

(assert (=> b!5437766 (= lt!2218190 (Context!9271 (t!375278 (exprs!5135 (h!68378 zl!343)))))))

(declare-fun lt!2218194 () (InoxSet Context!9270))

(assert (=> b!5437766 (= lt!2218194 (derivationStepZipperUp!623 (Context!9271 (Cons!61929 (h!68377 (exprs!5135 (h!68378 zl!343))) (t!375278 (exprs!5135 (h!68378 zl!343))))) (h!68376 s!2326)))))

(declare-fun b!5437767 () Bool)

(declare-fun e!3368801 () Bool)

(declare-fun tp!1499428 () Bool)

(declare-fun tp!1499424 () Bool)

(assert (=> b!5437767 (= e!3368801 (and tp!1499428 tp!1499424))))

(declare-fun b!5437768 () Bool)

(declare-fun e!3368803 () Bool)

(assert (=> b!5437768 (= e!3368803 true)))

(declare-fun matchR!7436 (Regex!15251 List!62052) Bool)

(declare-fun matchRSpec!2354 (Regex!15251 List!62052) Bool)

(assert (=> b!5437768 (= (matchR!7436 (regOne!31014 r!7292) s!2326) (matchRSpec!2354 (regOne!31014 r!7292) s!2326))))

(declare-fun lt!2218199 () Unit!154546)

(declare-fun mainMatchTheorem!2354 (Regex!15251 List!62052) Unit!154546)

(assert (=> b!5437768 (= lt!2218199 (mainMatchTheorem!2354 (regOne!31014 r!7292) s!2326))))

(declare-fun b!5437769 () Bool)

(declare-fun res!2315096 () Bool)

(declare-fun e!3368802 () Bool)

(assert (=> b!5437769 (=> res!2315096 e!3368802)))

(declare-fun generalisedConcat!920 (List!62053) Regex!15251)

(assert (=> b!5437769 (= res!2315096 (not (= r!7292 (generalisedConcat!920 (exprs!5135 (h!68378 zl!343))))))))

(declare-fun b!5437770 () Bool)

(declare-fun e!3368806 () Bool)

(declare-fun tp!1499430 () Bool)

(assert (=> b!5437770 (= e!3368806 tp!1499430)))

(declare-fun e!3368808 () Bool)

(declare-fun tp!1499426 () Bool)

(declare-fun b!5437771 () Bool)

(declare-fun inv!81374 (Context!9270) Bool)

(assert (=> b!5437771 (= e!3368808 (and (inv!81374 (h!68378 zl!343)) e!3368806 tp!1499426))))

(declare-fun b!5437772 () Bool)

(declare-fun res!2315103 () Bool)

(assert (=> b!5437772 (=> res!2315103 e!3368802)))

(assert (=> b!5437772 (= res!2315103 (or ((_ is EmptyExpr!15251) r!7292) ((_ is EmptyLang!15251) r!7292) ((_ is ElementMatch!15251) r!7292) ((_ is Union!15251) r!7292) (not ((_ is Concat!24096) r!7292))))))

(declare-fun b!5437773 () Bool)

(declare-fun e!3368807 () Bool)

(assert (=> b!5437773 (= e!3368807 (nullable!5420 (regOne!31014 (regOne!31014 r!7292))))))

(assert (=> b!5437774 (= e!3368802 e!3368800)))

(declare-fun res!2315091 () Bool)

(assert (=> b!5437774 (=> res!2315091 e!3368800)))

(declare-fun lt!2218197 () Bool)

(declare-fun lt!2218198 () Bool)

(assert (=> b!5437774 (= res!2315091 (or (not (= lt!2218197 lt!2218198)) ((_ is Nil!61928) s!2326)))))

(declare-fun Exists!2432 (Int) Bool)

(assert (=> b!5437774 (= (Exists!2432 lambda!286019) (Exists!2432 lambda!286020))))

(declare-fun lt!2218193 () Unit!154546)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1086 (Regex!15251 Regex!15251 List!62052) Unit!154546)

(assert (=> b!5437774 (= lt!2218193 (lemmaExistCutMatchRandMatchRSpecEquivalent!1086 (regOne!31014 r!7292) (regTwo!31014 r!7292) s!2326))))

(assert (=> b!5437774 (= lt!2218198 (Exists!2432 lambda!286019))))

(declare-datatypes ((tuple2!64900 0))(
  ( (tuple2!64901 (_1!35753 List!62052) (_2!35753 List!62052)) )
))
(declare-datatypes ((Option!15362 0))(
  ( (None!15361) (Some!15361 (v!51390 tuple2!64900)) )
))
(declare-fun isDefined!12065 (Option!15362) Bool)

(declare-fun findConcatSeparation!1776 (Regex!15251 Regex!15251 List!62052 List!62052 List!62052) Option!15362)

(assert (=> b!5437774 (= lt!2218198 (isDefined!12065 (findConcatSeparation!1776 (regOne!31014 r!7292) (regTwo!31014 r!7292) Nil!61928 s!2326 s!2326)))))

(declare-fun lt!2218201 () Unit!154546)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1540 (Regex!15251 Regex!15251 List!62052) Unit!154546)

(assert (=> b!5437774 (= lt!2218201 (lemmaFindConcatSeparationEquivalentToExists!1540 (regOne!31014 r!7292) (regTwo!31014 r!7292) s!2326))))

(declare-fun b!5437776 () Bool)

(declare-fun res!2315087 () Bool)

(assert (=> b!5437776 (=> res!2315087 e!3368800)))

(declare-fun isEmpty!33914 (List!62053) Bool)

(assert (=> b!5437776 (= res!2315087 (isEmpty!33914 (t!375278 (exprs!5135 (h!68378 zl!343)))))))

(declare-fun b!5437777 () Bool)

(declare-fun Unit!154549 () Unit!154546)

(assert (=> b!5437777 (= e!3368805 Unit!154549)))

(declare-fun b!5437778 () Bool)

(assert (=> b!5437778 (= e!3368804 e!3368803)))

(declare-fun res!2315095 () Bool)

(assert (=> b!5437778 (=> res!2315095 e!3368803)))

(assert (=> b!5437778 (= res!2315095 (or (not (= lt!2218189 ((as const (Array Context!9270 Bool)) false))) (not (= r!7292 (Concat!24096 (regOne!31014 r!7292) (regTwo!31014 r!7292)))) (not (= (regOne!31014 r!7292) EmptyExpr!15251))))))

(assert (=> b!5437778 (not (matchZipper!1495 lt!2218189 (t!375277 s!2326)))))

(declare-fun lt!2218200 () Unit!154546)

(declare-fun lemmaEmptyZipperMatchesNothing!6 ((InoxSet Context!9270) List!62052) Unit!154546)

(assert (=> b!5437778 (= lt!2218200 (lemmaEmptyZipperMatchesNothing!6 lt!2218189 (t!375277 s!2326)))))

(declare-fun b!5437779 () Bool)

(declare-fun res!2315089 () Bool)

(declare-fun e!3368809 () Bool)

(assert (=> b!5437779 (=> (not res!2315089) (not e!3368809))))

(declare-fun unfocusZipper!993 (List!62054) Regex!15251)

(assert (=> b!5437779 (= res!2315089 (= r!7292 (unfocusZipper!993 zl!343)))))

(declare-fun b!5437780 () Bool)

(declare-fun tp_is_empty!39755 () Bool)

(assert (=> b!5437780 (= e!3368801 tp_is_empty!39755)))

(declare-fun b!5437781 () Bool)

(declare-fun res!2315097 () Bool)

(assert (=> b!5437781 (=> res!2315097 e!3368802)))

(assert (=> b!5437781 (= res!2315097 (not ((_ is Cons!61929) (exprs!5135 (h!68378 zl!343)))))))

(declare-fun b!5437782 () Bool)

(declare-fun res!2315100 () Bool)

(assert (=> b!5437782 (=> res!2315100 e!3368804)))

(assert (=> b!5437782 (= res!2315100 (or ((_ is Concat!24096) (regOne!31014 r!7292)) ((_ is Star!15251) (regOne!31014 r!7292)) (not ((_ is EmptyExpr!15251) (regOne!31014 r!7292)))))))

(declare-fun b!5437783 () Bool)

(assert (=> b!5437783 (= e!3368809 (not e!3368802))))

(declare-fun res!2315099 () Bool)

(assert (=> b!5437783 (=> res!2315099 e!3368802)))

(assert (=> b!5437783 (= res!2315099 (not ((_ is Cons!61930) zl!343)))))

(assert (=> b!5437783 (= lt!2218197 (matchRSpec!2354 r!7292 s!2326))))

(assert (=> b!5437783 (= lt!2218197 (matchR!7436 r!7292 s!2326))))

(declare-fun lt!2218191 () Unit!154546)

(assert (=> b!5437783 (= lt!2218191 (mainMatchTheorem!2354 r!7292 s!2326))))

(declare-fun b!5437784 () Bool)

(declare-fun res!2315088 () Bool)

(assert (=> b!5437784 (=> (not res!2315088) (not e!3368809))))

(declare-fun toList!9035 ((InoxSet Context!9270)) List!62054)

(assert (=> b!5437784 (= res!2315088 (= (toList!9035 z!1189) zl!343))))

(declare-fun b!5437785 () Bool)

(declare-fun res!2315093 () Bool)

(assert (=> b!5437785 (=> res!2315093 e!3368804)))

(assert (=> b!5437785 (= res!2315093 e!3368807)))

(declare-fun res!2315090 () Bool)

(assert (=> b!5437785 (=> (not res!2315090) (not e!3368807))))

(assert (=> b!5437785 (= res!2315090 ((_ is Concat!24096) (regOne!31014 r!7292)))))

(declare-fun b!5437786 () Bool)

(declare-fun res!2315102 () Bool)

(assert (=> b!5437786 (=> res!2315102 e!3368802)))

(declare-fun generalisedUnion!1180 (List!62053) Regex!15251)

(declare-fun unfocusZipperList!693 (List!62054) List!62053)

(assert (=> b!5437786 (= res!2315102 (not (= r!7292 (generalisedUnion!1180 (unfocusZipperList!693 zl!343)))))))

(declare-fun b!5437787 () Bool)

(assert (=> b!5437787 (= e!3368810 (matchZipper!1495 lt!2218195 (t!375277 s!2326)))))

(declare-fun b!5437788 () Bool)

(declare-fun tp!1499432 () Bool)

(assert (=> b!5437788 (= e!3368801 tp!1499432)))

(declare-fun b!5437789 () Bool)

(declare-fun e!3368811 () Bool)

(declare-fun tp!1499427 () Bool)

(assert (=> b!5437789 (= e!3368811 tp!1499427)))

(declare-fun setIsEmpty!35529 () Bool)

(declare-fun setRes!35529 () Bool)

(assert (=> setIsEmpty!35529 setRes!35529))

(declare-fun b!5437790 () Bool)

(declare-fun res!2315092 () Bool)

(assert (=> b!5437790 (=> res!2315092 e!3368802)))

(declare-fun isEmpty!33915 (List!62054) Bool)

(assert (=> b!5437790 (= res!2315092 (not (isEmpty!33915 (t!375279 zl!343))))))

(declare-fun b!5437791 () Bool)

(declare-fun tp!1499433 () Bool)

(declare-fun tp!1499429 () Bool)

(assert (=> b!5437791 (= e!3368801 (and tp!1499433 tp!1499429))))

(declare-fun tp!1499425 () Bool)

(declare-fun setElem!35529 () Context!9270)

(declare-fun setNonEmpty!35529 () Bool)

(assert (=> setNonEmpty!35529 (= setRes!35529 (and tp!1499425 (inv!81374 setElem!35529) e!3368811))))

(declare-fun setRest!35529 () (InoxSet Context!9270))

(assert (=> setNonEmpty!35529 (= z!1189 ((_ map or) (store ((as const (Array Context!9270 Bool)) false) setElem!35529 true) setRest!35529))))

(declare-fun b!5437775 () Bool)

(declare-fun e!3368812 () Bool)

(declare-fun tp!1499431 () Bool)

(assert (=> b!5437775 (= e!3368812 (and tp_is_empty!39755 tp!1499431))))

(declare-fun res!2315094 () Bool)

(assert (=> start!570286 (=> (not res!2315094) (not e!3368809))))

(declare-fun validRegex!6987 (Regex!15251) Bool)

(assert (=> start!570286 (= res!2315094 (validRegex!6987 r!7292))))

(assert (=> start!570286 e!3368809))

(assert (=> start!570286 e!3368801))

(declare-fun condSetEmpty!35529 () Bool)

(assert (=> start!570286 (= condSetEmpty!35529 (= z!1189 ((as const (Array Context!9270 Bool)) false)))))

(assert (=> start!570286 setRes!35529))

(assert (=> start!570286 e!3368808))

(assert (=> start!570286 e!3368812))

(assert (= (and start!570286 res!2315094) b!5437784))

(assert (= (and b!5437784 res!2315088) b!5437779))

(assert (= (and b!5437779 res!2315089) b!5437783))

(assert (= (and b!5437783 (not res!2315099)) b!5437790))

(assert (= (and b!5437790 (not res!2315092)) b!5437769))

(assert (= (and b!5437769 (not res!2315096)) b!5437781))

(assert (= (and b!5437781 (not res!2315097)) b!5437786))

(assert (= (and b!5437786 (not res!2315102)) b!5437772))

(assert (= (and b!5437772 (not res!2315103)) b!5437774))

(assert (= (and b!5437774 (not res!2315091)) b!5437776))

(assert (= (and b!5437776 (not res!2315087)) b!5437766))

(assert (= (and b!5437766 c!948790) b!5437765))

(assert (= (and b!5437766 (not c!948790)) b!5437777))

(assert (= (and b!5437765 (not res!2315098)) b!5437787))

(assert (= (and b!5437766 (not res!2315101)) b!5437785))

(assert (= (and b!5437785 res!2315090) b!5437773))

(assert (= (and b!5437785 (not res!2315093)) b!5437782))

(assert (= (and b!5437782 (not res!2315100)) b!5437778))

(assert (= (and b!5437778 (not res!2315095)) b!5437768))

(assert (= (and start!570286 ((_ is ElementMatch!15251) r!7292)) b!5437780))

(assert (= (and start!570286 ((_ is Concat!24096) r!7292)) b!5437767))

(assert (= (and start!570286 ((_ is Star!15251) r!7292)) b!5437788))

(assert (= (and start!570286 ((_ is Union!15251) r!7292)) b!5437791))

(assert (= (and start!570286 condSetEmpty!35529) setIsEmpty!35529))

(assert (= (and start!570286 (not condSetEmpty!35529)) setNonEmpty!35529))

(assert (= setNonEmpty!35529 b!5437789))

(assert (= b!5437771 b!5437770))

(assert (= (and start!570286 ((_ is Cons!61930) zl!343)) b!5437771))

(assert (= (and start!570286 ((_ is Cons!61928) s!2326)) b!5437775))

(declare-fun m!6459594 () Bool)

(assert (=> b!5437768 m!6459594))

(declare-fun m!6459596 () Bool)

(assert (=> b!5437768 m!6459596))

(declare-fun m!6459598 () Bool)

(assert (=> b!5437768 m!6459598))

(declare-fun m!6459600 () Bool)

(assert (=> b!5437765 m!6459600))

(declare-fun m!6459602 () Bool)

(assert (=> b!5437765 m!6459602))

(declare-fun m!6459604 () Bool)

(assert (=> b!5437765 m!6459604))

(declare-fun m!6459606 () Bool)

(assert (=> setNonEmpty!35529 m!6459606))

(declare-fun m!6459608 () Bool)

(assert (=> b!5437784 m!6459608))

(declare-fun m!6459610 () Bool)

(assert (=> b!5437779 m!6459610))

(declare-fun m!6459612 () Bool)

(assert (=> b!5437774 m!6459612))

(declare-fun m!6459614 () Bool)

(assert (=> b!5437774 m!6459614))

(declare-fun m!6459616 () Bool)

(assert (=> b!5437774 m!6459616))

(declare-fun m!6459618 () Bool)

(assert (=> b!5437774 m!6459618))

(assert (=> b!5437774 m!6459614))

(declare-fun m!6459620 () Bool)

(assert (=> b!5437774 m!6459620))

(declare-fun m!6459622 () Bool)

(assert (=> b!5437774 m!6459622))

(assert (=> b!5437774 m!6459612))

(declare-fun m!6459624 () Bool)

(assert (=> b!5437776 m!6459624))

(assert (=> b!5437778 m!6459602))

(declare-fun m!6459626 () Bool)

(assert (=> b!5437778 m!6459626))

(declare-fun m!6459628 () Bool)

(assert (=> b!5437766 m!6459628))

(declare-fun m!6459630 () Bool)

(assert (=> b!5437766 m!6459630))

(declare-fun m!6459632 () Bool)

(assert (=> b!5437766 m!6459632))

(declare-fun m!6459634 () Bool)

(assert (=> b!5437766 m!6459634))

(declare-fun m!6459636 () Bool)

(assert (=> b!5437766 m!6459636))

(declare-fun m!6459638 () Bool)

(assert (=> b!5437766 m!6459638))

(declare-fun m!6459640 () Bool)

(assert (=> b!5437766 m!6459640))

(declare-fun m!6459642 () Bool)

(assert (=> start!570286 m!6459642))

(declare-fun m!6459644 () Bool)

(assert (=> b!5437786 m!6459644))

(assert (=> b!5437786 m!6459644))

(declare-fun m!6459646 () Bool)

(assert (=> b!5437786 m!6459646))

(declare-fun m!6459648 () Bool)

(assert (=> b!5437769 m!6459648))

(declare-fun m!6459650 () Bool)

(assert (=> b!5437773 m!6459650))

(declare-fun m!6459652 () Bool)

(assert (=> b!5437783 m!6459652))

(declare-fun m!6459654 () Bool)

(assert (=> b!5437783 m!6459654))

(declare-fun m!6459656 () Bool)

(assert (=> b!5437783 m!6459656))

(declare-fun m!6459658 () Bool)

(assert (=> b!5437771 m!6459658))

(declare-fun m!6459660 () Bool)

(assert (=> b!5437790 m!6459660))

(declare-fun m!6459662 () Bool)

(assert (=> b!5437787 m!6459662))

(check-sat (not b!5437789) (not b!5437768) (not b!5437765) (not b!5437766) (not b!5437775) tp_is_empty!39755 (not b!5437783) (not b!5437788) (not b!5437773) (not start!570286) (not b!5437778) (not b!5437787) (not b!5437791) (not b!5437774) (not b!5437770) (not b!5437790) (not b!5437786) (not b!5437771) (not b!5437767) (not b!5437779) (not b!5437769) (not b!5437776) (not setNonEmpty!35529) (not b!5437784))
(check-sat)
