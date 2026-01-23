; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!654192 () Bool)

(assert start!654192)

(declare-fun b!6744656 () Bool)

(assert (=> b!6744656 true))

(assert (=> b!6744656 true))

(declare-fun lambda!379057 () Int)

(declare-fun lambda!379056 () Int)

(assert (=> b!6744656 (not (= lambda!379057 lambda!379056))))

(assert (=> b!6744656 true))

(assert (=> b!6744656 true))

(declare-fun lambda!379058 () Int)

(assert (=> b!6744656 (not (= lambda!379058 lambda!379056))))

(assert (=> b!6744656 (not (= lambda!379058 lambda!379057))))

(assert (=> b!6744656 true))

(assert (=> b!6744656 true))

(declare-fun b!6744639 () Bool)

(assert (=> b!6744639 true))

(declare-fun b!6744634 () Bool)

(declare-fun res!2758770 () Bool)

(declare-fun e!4073706 () Bool)

(assert (=> b!6744634 (=> res!2758770 e!4073706)))

(declare-datatypes ((C!33416 0))(
  ( (C!33417 (val!26410 Int)) )
))
(declare-datatypes ((Regex!16573 0))(
  ( (ElementMatch!16573 (c!1251299 C!33416)) (Concat!25418 (regOne!33658 Regex!16573) (regTwo!33658 Regex!16573)) (EmptyExpr!16573) (Star!16573 (reg!16902 Regex!16573)) (EmptyLang!16573) (Union!16573 (regOne!33659 Regex!16573) (regTwo!33659 Regex!16573)) )
))
(declare-fun r!7292 () Regex!16573)

(declare-datatypes ((List!66018 0))(
  ( (Nil!65894) (Cons!65894 (h!72342 Regex!16573) (t!379719 List!66018)) )
))
(declare-datatypes ((Context!11914 0))(
  ( (Context!11915 (exprs!6457 List!66018)) )
))
(declare-datatypes ((List!66019 0))(
  ( (Nil!65895) (Cons!65895 (h!72343 Context!11914) (t!379720 List!66019)) )
))
(declare-fun zl!343 () List!66019)

(declare-fun generalisedUnion!2417 (List!66018) Regex!16573)

(declare-fun unfocusZipperList!1994 (List!66019) List!66018)

(assert (=> b!6744634 (= res!2758770 (not (= r!7292 (generalisedUnion!2417 (unfocusZipperList!1994 zl!343)))))))

(declare-fun b!6744635 () Bool)

(declare-fun res!2758775 () Bool)

(declare-fun e!4073710 () Bool)

(assert (=> b!6744635 (=> res!2758775 e!4073710)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2439734 () (InoxSet Context!11914))

(declare-datatypes ((List!66020 0))(
  ( (Nil!65896) (Cons!65896 (h!72344 C!33416) (t!379721 List!66020)) )
))
(declare-fun s!2326 () List!66020)

(declare-fun matchZipper!2559 ((InoxSet Context!11914) List!66020) Bool)

(declare-fun derivationStepZipper!2517 ((InoxSet Context!11914) C!33416) (InoxSet Context!11914))

(assert (=> b!6744635 (= res!2758775 (not (= (matchZipper!2559 lt!2439734 s!2326) (matchZipper!2559 (derivationStepZipper!2517 lt!2439734 (h!72344 s!2326)) (t!379721 s!2326)))))))

(declare-fun b!6744636 () Bool)

(declare-fun e!4073705 () Bool)

(declare-fun tp_is_empty!42399 () Bool)

(assert (=> b!6744636 (= e!4073705 tp_is_empty!42399)))

(declare-fun b!6744637 () Bool)

(declare-fun e!4073700 () Bool)

(declare-fun tp!1848849 () Bool)

(assert (=> b!6744637 (= e!4073700 tp!1848849)))

(declare-fun b!6744638 () Bool)

(declare-fun tp!1848840 () Bool)

(declare-fun tp!1848843 () Bool)

(assert (=> b!6744638 (= e!4073705 (and tp!1848840 tp!1848843))))

(declare-fun e!4073699 () Bool)

(declare-fun e!4073712 () Bool)

(assert (=> b!6744639 (= e!4073699 e!4073712)))

(declare-fun res!2758758 () Bool)

(assert (=> b!6744639 (=> res!2758758 e!4073712)))

(declare-fun lt!2439738 () (InoxSet Context!11914))

(declare-fun lt!2439749 () (InoxSet Context!11914))

(assert (=> b!6744639 (= res!2758758 (not (= lt!2439738 lt!2439749)))))

(declare-fun lambda!379059 () Int)

(declare-fun z!1189 () (InoxSet Context!11914))

(declare-fun flatMap!2054 ((InoxSet Context!11914) Int) (InoxSet Context!11914))

(declare-fun derivationStepZipperUp!1727 (Context!11914 C!33416) (InoxSet Context!11914))

(assert (=> b!6744639 (= (flatMap!2054 z!1189 lambda!379059) (derivationStepZipperUp!1727 (h!72343 zl!343) (h!72344 s!2326)))))

(declare-datatypes ((Unit!159837 0))(
  ( (Unit!159838) )
))
(declare-fun lt!2439751 () Unit!159837)

(declare-fun lemmaFlatMapOnSingletonSet!1580 ((InoxSet Context!11914) Context!11914 Int) Unit!159837)

(assert (=> b!6744639 (= lt!2439751 (lemmaFlatMapOnSingletonSet!1580 z!1189 (h!72343 zl!343) lambda!379059))))

(declare-fun b!6744640 () Bool)

(declare-fun e!4073708 () Bool)

(declare-fun tp!1848841 () Bool)

(assert (=> b!6744640 (= e!4073708 tp!1848841)))

(declare-fun b!6744642 () Bool)

(declare-fun e!4073703 () Bool)

(declare-fun e!4073697 () Bool)

(assert (=> b!6744642 (= e!4073703 e!4073697)))

(declare-fun res!2758763 () Bool)

(assert (=> b!6744642 (=> res!2758763 e!4073697)))

(declare-fun lt!2439756 () Bool)

(assert (=> b!6744642 (= res!2758763 (not lt!2439756))))

(declare-fun lt!2439737 () Regex!16573)

(declare-fun matchRSpec!3674 (Regex!16573 List!66020) Bool)

(assert (=> b!6744642 (= lt!2439756 (matchRSpec!3674 lt!2439737 s!2326))))

(declare-fun matchR!8756 (Regex!16573 List!66020) Bool)

(assert (=> b!6744642 (= lt!2439756 (matchR!8756 lt!2439737 s!2326))))

(declare-fun lt!2439752 () Unit!159837)

(declare-fun mainMatchTheorem!3674 (Regex!16573 List!66020) Unit!159837)

(assert (=> b!6744642 (= lt!2439752 (mainMatchTheorem!3674 lt!2439737 s!2326))))

(declare-fun b!6744643 () Bool)

(declare-fun res!2758773 () Bool)

(assert (=> b!6744643 (=> res!2758773 e!4073706)))

(get-info :version)

(assert (=> b!6744643 (= res!2758773 (or ((_ is EmptyExpr!16573) r!7292) ((_ is EmptyLang!16573) r!7292) ((_ is ElementMatch!16573) r!7292) ((_ is Union!16573) r!7292) ((_ is Concat!25418) r!7292)))))

(declare-fun b!6744644 () Bool)

(declare-fun e!4073704 () Bool)

(assert (=> b!6744644 (= e!4073704 (not e!4073706))))

(declare-fun res!2758762 () Bool)

(assert (=> b!6744644 (=> res!2758762 e!4073706)))

(assert (=> b!6744644 (= res!2758762 (not ((_ is Cons!65895) zl!343)))))

(declare-fun lt!2439739 () Bool)

(assert (=> b!6744644 (= lt!2439739 (matchRSpec!3674 r!7292 s!2326))))

(assert (=> b!6744644 (= lt!2439739 (matchR!8756 r!7292 s!2326))))

(declare-fun lt!2439754 () Unit!159837)

(assert (=> b!6744644 (= lt!2439754 (mainMatchTheorem!3674 r!7292 s!2326))))

(declare-fun b!6744645 () Bool)

(declare-fun tp!1848845 () Bool)

(assert (=> b!6744645 (= e!4073705 tp!1848845)))

(declare-fun b!6744646 () Bool)

(declare-fun res!2758755 () Bool)

(assert (=> b!6744646 (=> res!2758755 e!4073703)))

(declare-fun lt!2439750 () Context!11914)

(declare-fun unfocusZipper!2315 (List!66019) Regex!16573)

(assert (=> b!6744646 (= res!2758755 (not (= (unfocusZipper!2315 (Cons!65895 lt!2439750 Nil!65895)) (reg!16902 r!7292))))))

(declare-fun setIsEmpty!46075 () Bool)

(declare-fun setRes!46075 () Bool)

(assert (=> setIsEmpty!46075 setRes!46075))

(declare-fun b!6744647 () Bool)

(declare-fun e!4073709 () Bool)

(assert (=> b!6744647 (= e!4073709 e!4073703)))

(declare-fun res!2758756 () Bool)

(assert (=> b!6744647 (=> res!2758756 e!4073703)))

(declare-fun lt!2439733 () (InoxSet Context!11914))

(assert (=> b!6744647 (= res!2758756 (not (= lt!2439738 (derivationStepZipper!2517 lt!2439733 (h!72344 s!2326)))))))

(declare-fun lt!2439735 () Context!11914)

(assert (=> b!6744647 (= (flatMap!2054 lt!2439733 lambda!379059) (derivationStepZipperUp!1727 lt!2439735 (h!72344 s!2326)))))

(declare-fun lt!2439753 () Unit!159837)

(assert (=> b!6744647 (= lt!2439753 (lemmaFlatMapOnSingletonSet!1580 lt!2439733 lt!2439735 lambda!379059))))

(declare-fun lt!2439744 () (InoxSet Context!11914))

(assert (=> b!6744647 (= (flatMap!2054 lt!2439744 lambda!379059) (derivationStepZipperUp!1727 lt!2439750 (h!72344 s!2326)))))

(declare-fun lt!2439732 () Unit!159837)

(assert (=> b!6744647 (= lt!2439732 (lemmaFlatMapOnSingletonSet!1580 lt!2439744 lt!2439750 lambda!379059))))

(declare-fun lt!2439742 () (InoxSet Context!11914))

(assert (=> b!6744647 (= lt!2439742 (derivationStepZipperUp!1727 lt!2439735 (h!72344 s!2326)))))

(declare-fun lt!2439757 () (InoxSet Context!11914))

(assert (=> b!6744647 (= lt!2439757 (derivationStepZipperUp!1727 lt!2439750 (h!72344 s!2326)))))

(assert (=> b!6744647 (= lt!2439733 (store ((as const (Array Context!11914 Bool)) false) lt!2439735 true))))

(assert (=> b!6744647 (= lt!2439744 (store ((as const (Array Context!11914 Bool)) false) lt!2439750 true))))

(assert (=> b!6744647 (= lt!2439750 (Context!11915 (Cons!65894 (reg!16902 r!7292) Nil!65894)))))

(declare-fun b!6744648 () Bool)

(declare-fun res!2758771 () Bool)

(assert (=> b!6744648 (=> res!2758771 e!4073706)))

(assert (=> b!6744648 (= res!2758771 (not ((_ is Cons!65894) (exprs!6457 (h!72343 zl!343)))))))

(declare-fun b!6744649 () Bool)

(declare-fun tp!1848847 () Bool)

(declare-fun tp!1848848 () Bool)

(assert (=> b!6744649 (= e!4073705 (and tp!1848847 tp!1848848))))

(declare-fun b!6744650 () Bool)

(assert (=> b!6744650 (= e!4073710 e!4073709)))

(declare-fun res!2758757 () Bool)

(assert (=> b!6744650 (=> res!2758757 e!4073709)))

(declare-fun lt!2439748 () Context!11914)

(assert (=> b!6744650 (= res!2758757 (not (= (unfocusZipper!2315 (Cons!65895 lt!2439748 Nil!65895)) lt!2439737)))))

(assert (=> b!6744650 (= lt!2439737 (Concat!25418 (reg!16902 r!7292) r!7292))))

(declare-fun tp!1848842 () Bool)

(declare-fun b!6744651 () Bool)

(declare-fun e!4073707 () Bool)

(declare-fun inv!84679 (Context!11914) Bool)

(assert (=> b!6744651 (= e!4073707 (and (inv!84679 (h!72343 zl!343)) e!4073708 tp!1848842))))

(declare-fun b!6744652 () Bool)

(declare-fun validRegex!8309 (Regex!16573) Bool)

(assert (=> b!6744652 (= e!4073697 (validRegex!8309 (reg!16902 r!7292)))))

(declare-fun b!6744653 () Bool)

(declare-fun res!2758772 () Bool)

(declare-fun e!4073701 () Bool)

(assert (=> b!6744653 (=> res!2758772 e!4073701)))

(assert (=> b!6744653 (= res!2758772 ((_ is Nil!65896) s!2326))))

(declare-fun setElem!46075 () Context!11914)

(declare-fun tp!1848844 () Bool)

(declare-fun setNonEmpty!46075 () Bool)

(assert (=> setNonEmpty!46075 (= setRes!46075 (and tp!1848844 (inv!84679 setElem!46075) e!4073700))))

(declare-fun setRest!46075 () (InoxSet Context!11914))

(assert (=> setNonEmpty!46075 (= z!1189 ((_ map or) (store ((as const (Array Context!11914 Bool)) false) setElem!46075 true) setRest!46075))))

(declare-fun b!6744654 () Bool)

(assert (=> b!6744654 (= e!4073701 e!4073699)))

(declare-fun res!2758767 () Bool)

(assert (=> b!6744654 (=> res!2758767 e!4073699)))

(declare-fun lt!2439740 () (InoxSet Context!11914))

(assert (=> b!6744654 (= res!2758767 (not (= lt!2439740 lt!2439749)))))

(declare-fun derivationStepZipperDown!1801 (Regex!16573 Context!11914 C!33416) (InoxSet Context!11914))

(assert (=> b!6744654 (= lt!2439749 (derivationStepZipperDown!1801 r!7292 (Context!11915 Nil!65894) (h!72344 s!2326)))))

(assert (=> b!6744654 (= lt!2439740 (derivationStepZipperUp!1727 (Context!11915 (Cons!65894 r!7292 Nil!65894)) (h!72344 s!2326)))))

(assert (=> b!6744654 (= lt!2439738 (derivationStepZipper!2517 z!1189 (h!72344 s!2326)))))

(declare-fun b!6744655 () Bool)

(declare-fun e!4073698 () Bool)

(declare-fun lt!2439758 () Bool)

(assert (=> b!6744655 (= e!4073698 lt!2439758)))

(assert (=> b!6744656 (= e!4073706 e!4073701)))

(declare-fun res!2758774 () Bool)

(assert (=> b!6744656 (=> res!2758774 e!4073701)))

(assert (=> b!6744656 (= res!2758774 (not (= lt!2439739 e!4073698)))))

(declare-fun res!2758776 () Bool)

(assert (=> b!6744656 (=> res!2758776 e!4073698)))

(declare-fun isEmpty!38241 (List!66020) Bool)

(assert (=> b!6744656 (= res!2758776 (isEmpty!38241 s!2326))))

(declare-fun Exists!3641 (Int) Bool)

(assert (=> b!6744656 (= (Exists!3641 lambda!379056) (Exists!3641 lambda!379058))))

(declare-fun lt!2439746 () Unit!159837)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2168 (Regex!16573 Regex!16573 List!66020) Unit!159837)

(assert (=> b!6744656 (= lt!2439746 (lemmaExistCutMatchRandMatchRSpecEquivalent!2168 (reg!16902 r!7292) r!7292 s!2326))))

(assert (=> b!6744656 (= (Exists!3641 lambda!379056) (Exists!3641 lambda!379057))))

(declare-fun lt!2439736 () Unit!159837)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!732 (Regex!16573 List!66020) Unit!159837)

(assert (=> b!6744656 (= lt!2439736 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!732 (reg!16902 r!7292) s!2326))))

(assert (=> b!6744656 (= lt!2439758 (Exists!3641 lambda!379056))))

(declare-datatypes ((tuple2!67096 0))(
  ( (tuple2!67097 (_1!36851 List!66020) (_2!36851 List!66020)) )
))
(declare-datatypes ((Option!16460 0))(
  ( (None!16459) (Some!16459 (v!52659 tuple2!67096)) )
))
(declare-fun isDefined!13163 (Option!16460) Bool)

(declare-fun findConcatSeparation!2874 (Regex!16573 Regex!16573 List!66020 List!66020 List!66020) Option!16460)

(assert (=> b!6744656 (= lt!2439758 (isDefined!13163 (findConcatSeparation!2874 (reg!16902 r!7292) r!7292 Nil!65896 s!2326 s!2326)))))

(declare-fun lt!2439741 () Unit!159837)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2638 (Regex!16573 Regex!16573 List!66020) Unit!159837)

(assert (=> b!6744656 (= lt!2439741 (lemmaFindConcatSeparationEquivalentToExists!2638 (reg!16902 r!7292) r!7292 s!2326))))

(declare-fun b!6744657 () Bool)

(assert (=> b!6744657 (= e!4073712 e!4073710)))

(declare-fun res!2758768 () Bool)

(assert (=> b!6744657 (=> res!2758768 e!4073710)))

(assert (=> b!6744657 (= res!2758768 (not (= lt!2439738 (derivationStepZipperDown!1801 (reg!16902 r!7292) lt!2439735 (h!72344 s!2326)))))))

(declare-fun lt!2439743 () List!66018)

(assert (=> b!6744657 (= lt!2439735 (Context!11915 lt!2439743))))

(assert (=> b!6744657 (= (flatMap!2054 lt!2439734 lambda!379059) (derivationStepZipperUp!1727 lt!2439748 (h!72344 s!2326)))))

(declare-fun lt!2439747 () Unit!159837)

(assert (=> b!6744657 (= lt!2439747 (lemmaFlatMapOnSingletonSet!1580 lt!2439734 lt!2439748 lambda!379059))))

(declare-fun lt!2439745 () (InoxSet Context!11914))

(assert (=> b!6744657 (= lt!2439745 (derivationStepZipperUp!1727 lt!2439748 (h!72344 s!2326)))))

(assert (=> b!6744657 (= lt!2439734 (store ((as const (Array Context!11914 Bool)) false) lt!2439748 true))))

(assert (=> b!6744657 (= lt!2439748 (Context!11915 (Cons!65894 (reg!16902 r!7292) lt!2439743)))))

(assert (=> b!6744657 (= lt!2439743 (Cons!65894 r!7292 Nil!65894))))

(declare-fun b!6744658 () Bool)

(declare-fun res!2758764 () Bool)

(assert (=> b!6744658 (=> res!2758764 e!4073710)))

(declare-fun lt!2439755 () Regex!16573)

(assert (=> b!6744658 (= res!2758764 (or (not (= lt!2439755 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6744659 () Bool)

(declare-fun res!2758765 () Bool)

(declare-fun e!4073702 () Bool)

(assert (=> b!6744659 (=> (not res!2758765) (not e!4073702))))

(declare-fun toList!10357 ((InoxSet Context!11914)) List!66019)

(assert (=> b!6744659 (= res!2758765 (= (toList!10357 z!1189) zl!343))))

(declare-fun b!6744641 () Bool)

(declare-fun res!2758766 () Bool)

(assert (=> b!6744641 (=> res!2758766 e!4073706)))

(declare-fun generalisedConcat!2170 (List!66018) Regex!16573)

(assert (=> b!6744641 (= res!2758766 (not (= r!7292 (generalisedConcat!2170 (exprs!6457 (h!72343 zl!343))))))))

(declare-fun res!2758760 () Bool)

(assert (=> start!654192 (=> (not res!2758760) (not e!4073702))))

(assert (=> start!654192 (= res!2758760 (validRegex!8309 r!7292))))

(assert (=> start!654192 e!4073702))

(assert (=> start!654192 e!4073705))

(declare-fun condSetEmpty!46075 () Bool)

(assert (=> start!654192 (= condSetEmpty!46075 (= z!1189 ((as const (Array Context!11914 Bool)) false)))))

(assert (=> start!654192 setRes!46075))

(assert (=> start!654192 e!4073707))

(declare-fun e!4073711 () Bool)

(assert (=> start!654192 e!4073711))

(declare-fun b!6744660 () Bool)

(declare-fun res!2758761 () Bool)

(assert (=> b!6744660 (=> res!2758761 e!4073706)))

(declare-fun isEmpty!38242 (List!66019) Bool)

(assert (=> b!6744660 (= res!2758761 (not (isEmpty!38242 (t!379720 zl!343))))))

(declare-fun b!6744661 () Bool)

(assert (=> b!6744661 (= e!4073702 e!4073704)))

(declare-fun res!2758769 () Bool)

(assert (=> b!6744661 (=> (not res!2758769) (not e!4073704))))

(assert (=> b!6744661 (= res!2758769 (= r!7292 lt!2439755))))

(assert (=> b!6744661 (= lt!2439755 (unfocusZipper!2315 zl!343))))

(declare-fun b!6744662 () Bool)

(declare-fun res!2758759 () Bool)

(assert (=> b!6744662 (=> res!2758759 e!4073703)))

(assert (=> b!6744662 (= res!2758759 (not (= (unfocusZipper!2315 (Cons!65895 lt!2439735 Nil!65895)) r!7292)))))

(declare-fun b!6744663 () Bool)

(declare-fun tp!1848846 () Bool)

(assert (=> b!6744663 (= e!4073711 (and tp_is_empty!42399 tp!1848846))))

(assert (= (and start!654192 res!2758760) b!6744659))

(assert (= (and b!6744659 res!2758765) b!6744661))

(assert (= (and b!6744661 res!2758769) b!6744644))

(assert (= (and b!6744644 (not res!2758762)) b!6744660))

(assert (= (and b!6744660 (not res!2758761)) b!6744641))

(assert (= (and b!6744641 (not res!2758766)) b!6744648))

(assert (= (and b!6744648 (not res!2758771)) b!6744634))

(assert (= (and b!6744634 (not res!2758770)) b!6744643))

(assert (= (and b!6744643 (not res!2758773)) b!6744656))

(assert (= (and b!6744656 (not res!2758776)) b!6744655))

(assert (= (and b!6744656 (not res!2758774)) b!6744653))

(assert (= (and b!6744653 (not res!2758772)) b!6744654))

(assert (= (and b!6744654 (not res!2758767)) b!6744639))

(assert (= (and b!6744639 (not res!2758758)) b!6744657))

(assert (= (and b!6744657 (not res!2758768)) b!6744635))

(assert (= (and b!6744635 (not res!2758775)) b!6744658))

(assert (= (and b!6744658 (not res!2758764)) b!6744650))

(assert (= (and b!6744650 (not res!2758757)) b!6744647))

(assert (= (and b!6744647 (not res!2758756)) b!6744646))

(assert (= (and b!6744646 (not res!2758755)) b!6744662))

(assert (= (and b!6744662 (not res!2758759)) b!6744642))

(assert (= (and b!6744642 (not res!2758763)) b!6744652))

(assert (= (and start!654192 ((_ is ElementMatch!16573) r!7292)) b!6744636))

(assert (= (and start!654192 ((_ is Concat!25418) r!7292)) b!6744649))

(assert (= (and start!654192 ((_ is Star!16573) r!7292)) b!6744645))

(assert (= (and start!654192 ((_ is Union!16573) r!7292)) b!6744638))

(assert (= (and start!654192 condSetEmpty!46075) setIsEmpty!46075))

(assert (= (and start!654192 (not condSetEmpty!46075)) setNonEmpty!46075))

(assert (= setNonEmpty!46075 b!6744637))

(assert (= b!6744651 b!6744640))

(assert (= (and start!654192 ((_ is Cons!65895) zl!343)) b!6744651))

(assert (= (and start!654192 ((_ is Cons!65896) s!2326)) b!6744663))

(declare-fun m!7500378 () Bool)

(assert (=> b!6744635 m!7500378))

(declare-fun m!7500380 () Bool)

(assert (=> b!6744635 m!7500380))

(assert (=> b!6744635 m!7500380))

(declare-fun m!7500382 () Bool)

(assert (=> b!6744635 m!7500382))

(declare-fun m!7500384 () Bool)

(assert (=> b!6744660 m!7500384))

(declare-fun m!7500386 () Bool)

(assert (=> b!6744656 m!7500386))

(declare-fun m!7500388 () Bool)

(assert (=> b!6744656 m!7500388))

(declare-fun m!7500390 () Bool)

(assert (=> b!6744656 m!7500390))

(declare-fun m!7500392 () Bool)

(assert (=> b!6744656 m!7500392))

(assert (=> b!6744656 m!7500388))

(declare-fun m!7500394 () Bool)

(assert (=> b!6744656 m!7500394))

(declare-fun m!7500396 () Bool)

(assert (=> b!6744656 m!7500396))

(declare-fun m!7500398 () Bool)

(assert (=> b!6744656 m!7500398))

(assert (=> b!6744656 m!7500388))

(assert (=> b!6744656 m!7500396))

(declare-fun m!7500400 () Bool)

(assert (=> b!6744656 m!7500400))

(declare-fun m!7500402 () Bool)

(assert (=> b!6744656 m!7500402))

(declare-fun m!7500404 () Bool)

(assert (=> b!6744652 m!7500404))

(declare-fun m!7500406 () Bool)

(assert (=> b!6744646 m!7500406))

(declare-fun m!7500408 () Bool)

(assert (=> b!6744662 m!7500408))

(declare-fun m!7500410 () Bool)

(assert (=> b!6744657 m!7500410))

(declare-fun m!7500412 () Bool)

(assert (=> b!6744657 m!7500412))

(declare-fun m!7500414 () Bool)

(assert (=> b!6744657 m!7500414))

(declare-fun m!7500416 () Bool)

(assert (=> b!6744657 m!7500416))

(declare-fun m!7500418 () Bool)

(assert (=> b!6744657 m!7500418))

(declare-fun m!7500420 () Bool)

(assert (=> setNonEmpty!46075 m!7500420))

(declare-fun m!7500422 () Bool)

(assert (=> b!6744642 m!7500422))

(declare-fun m!7500424 () Bool)

(assert (=> b!6744642 m!7500424))

(declare-fun m!7500426 () Bool)

(assert (=> b!6744642 m!7500426))

(declare-fun m!7500428 () Bool)

(assert (=> b!6744647 m!7500428))

(declare-fun m!7500430 () Bool)

(assert (=> b!6744647 m!7500430))

(declare-fun m!7500432 () Bool)

(assert (=> b!6744647 m!7500432))

(declare-fun m!7500434 () Bool)

(assert (=> b!6744647 m!7500434))

(declare-fun m!7500436 () Bool)

(assert (=> b!6744647 m!7500436))

(declare-fun m!7500438 () Bool)

(assert (=> b!6744647 m!7500438))

(declare-fun m!7500440 () Bool)

(assert (=> b!6744647 m!7500440))

(declare-fun m!7500442 () Bool)

(assert (=> b!6744647 m!7500442))

(declare-fun m!7500444 () Bool)

(assert (=> b!6744647 m!7500444))

(declare-fun m!7500446 () Bool)

(assert (=> b!6744641 m!7500446))

(declare-fun m!7500448 () Bool)

(assert (=> b!6744659 m!7500448))

(declare-fun m!7500450 () Bool)

(assert (=> start!654192 m!7500450))

(declare-fun m!7500452 () Bool)

(assert (=> b!6744651 m!7500452))

(declare-fun m!7500454 () Bool)

(assert (=> b!6744639 m!7500454))

(declare-fun m!7500456 () Bool)

(assert (=> b!6744639 m!7500456))

(declare-fun m!7500458 () Bool)

(assert (=> b!6744639 m!7500458))

(declare-fun m!7500460 () Bool)

(assert (=> b!6744661 m!7500460))

(declare-fun m!7500462 () Bool)

(assert (=> b!6744644 m!7500462))

(declare-fun m!7500464 () Bool)

(assert (=> b!6744644 m!7500464))

(declare-fun m!7500466 () Bool)

(assert (=> b!6744644 m!7500466))

(declare-fun m!7500468 () Bool)

(assert (=> b!6744634 m!7500468))

(assert (=> b!6744634 m!7500468))

(declare-fun m!7500470 () Bool)

(assert (=> b!6744634 m!7500470))

(declare-fun m!7500472 () Bool)

(assert (=> b!6744650 m!7500472))

(declare-fun m!7500474 () Bool)

(assert (=> b!6744654 m!7500474))

(declare-fun m!7500476 () Bool)

(assert (=> b!6744654 m!7500476))

(declare-fun m!7500478 () Bool)

(assert (=> b!6744654 m!7500478))

(check-sat (not b!6744654) (not b!6744662) (not b!6744650) (not b!6744660) (not b!6744657) (not setNonEmpty!46075) (not b!6744663) (not b!6744639) (not b!6744638) (not start!654192) (not b!6744635) (not b!6744647) (not b!6744634) (not b!6744637) (not b!6744640) tp_is_empty!42399 (not b!6744646) (not b!6744656) (not b!6744659) (not b!6744645) (not b!6744652) (not b!6744644) (not b!6744642) (not b!6744661) (not b!6744641) (not b!6744649) (not b!6744651))
(check-sat)
(get-model)

(declare-fun bs!1793199 () Bool)

(declare-fun b!6744794 () Bool)

(assert (= bs!1793199 (and b!6744794 b!6744656)))

(declare-fun lambda!379083 () Int)

(assert (=> bs!1793199 (not (= lambda!379083 lambda!379056))))

(assert (=> bs!1793199 (= (and (= (reg!16902 lt!2439737) (reg!16902 r!7292)) (= lt!2439737 r!7292)) (= lambda!379083 lambda!379057))))

(assert (=> bs!1793199 (not (= lambda!379083 lambda!379058))))

(assert (=> b!6744794 true))

(assert (=> b!6744794 true))

(declare-fun bs!1793200 () Bool)

(declare-fun b!6744788 () Bool)

(assert (= bs!1793200 (and b!6744788 b!6744656)))

(declare-fun lambda!379084 () Int)

(assert (=> bs!1793200 (not (= lambda!379084 lambda!379056))))

(assert (=> bs!1793200 (not (= lambda!379084 lambda!379057))))

(assert (=> bs!1793200 (= (and (= (regOne!33658 lt!2439737) (reg!16902 r!7292)) (= (regTwo!33658 lt!2439737) r!7292)) (= lambda!379084 lambda!379058))))

(declare-fun bs!1793201 () Bool)

(assert (= bs!1793201 (and b!6744788 b!6744794)))

(assert (=> bs!1793201 (not (= lambda!379084 lambda!379083))))

(assert (=> b!6744788 true))

(assert (=> b!6744788 true))

(declare-fun c!1251338 () Bool)

(declare-fun bm!609869 () Bool)

(declare-fun call!609875 () Bool)

(assert (=> bm!609869 (= call!609875 (Exists!3641 (ite c!1251338 lambda!379083 lambda!379084)))))

(declare-fun b!6744785 () Bool)

(declare-fun e!4073775 () Bool)

(assert (=> b!6744785 (= e!4073775 (matchRSpec!3674 (regTwo!33659 lt!2439737) s!2326))))

(declare-fun b!6744786 () Bool)

(declare-fun e!4073776 () Bool)

(declare-fun call!609874 () Bool)

(assert (=> b!6744786 (= e!4073776 call!609874)))

(declare-fun b!6744787 () Bool)

(declare-fun e!4073779 () Bool)

(assert (=> b!6744787 (= e!4073779 e!4073775)))

(declare-fun res!2758821 () Bool)

(assert (=> b!6744787 (= res!2758821 (matchRSpec!3674 (regOne!33659 lt!2439737) s!2326))))

(assert (=> b!6744787 (=> res!2758821 e!4073775)))

(declare-fun e!4073781 () Bool)

(assert (=> b!6744788 (= e!4073781 call!609875)))

(declare-fun b!6744789 () Bool)

(declare-fun e!4073778 () Bool)

(assert (=> b!6744789 (= e!4073776 e!4073778)))

(declare-fun res!2758822 () Bool)

(assert (=> b!6744789 (= res!2758822 (not ((_ is EmptyLang!16573) lt!2439737)))))

(assert (=> b!6744789 (=> (not res!2758822) (not e!4073778))))

(declare-fun d!2119068 () Bool)

(declare-fun c!1251339 () Bool)

(assert (=> d!2119068 (= c!1251339 ((_ is EmptyExpr!16573) lt!2439737))))

(assert (=> d!2119068 (= (matchRSpec!3674 lt!2439737 s!2326) e!4073776)))

(declare-fun b!6744790 () Bool)

(assert (=> b!6744790 (= e!4073779 e!4073781)))

(assert (=> b!6744790 (= c!1251338 ((_ is Star!16573) lt!2439737))))

(declare-fun b!6744791 () Bool)

(declare-fun c!1251337 () Bool)

(assert (=> b!6744791 (= c!1251337 ((_ is Union!16573) lt!2439737))))

(declare-fun e!4073777 () Bool)

(assert (=> b!6744791 (= e!4073777 e!4073779)))

(declare-fun b!6744792 () Bool)

(assert (=> b!6744792 (= e!4073777 (= s!2326 (Cons!65896 (c!1251299 lt!2439737) Nil!65896)))))

(declare-fun bm!609870 () Bool)

(assert (=> bm!609870 (= call!609874 (isEmpty!38241 s!2326))))

(declare-fun b!6744793 () Bool)

(declare-fun c!1251340 () Bool)

(assert (=> b!6744793 (= c!1251340 ((_ is ElementMatch!16573) lt!2439737))))

(assert (=> b!6744793 (= e!4073778 e!4073777)))

(declare-fun e!4073780 () Bool)

(assert (=> b!6744794 (= e!4073780 call!609875)))

(declare-fun b!6744795 () Bool)

(declare-fun res!2758820 () Bool)

(assert (=> b!6744795 (=> res!2758820 e!4073780)))

(assert (=> b!6744795 (= res!2758820 call!609874)))

(assert (=> b!6744795 (= e!4073781 e!4073780)))

(assert (= (and d!2119068 c!1251339) b!6744786))

(assert (= (and d!2119068 (not c!1251339)) b!6744789))

(assert (= (and b!6744789 res!2758822) b!6744793))

(assert (= (and b!6744793 c!1251340) b!6744792))

(assert (= (and b!6744793 (not c!1251340)) b!6744791))

(assert (= (and b!6744791 c!1251337) b!6744787))

(assert (= (and b!6744791 (not c!1251337)) b!6744790))

(assert (= (and b!6744787 (not res!2758821)) b!6744785))

(assert (= (and b!6744790 c!1251338) b!6744795))

(assert (= (and b!6744790 (not c!1251338)) b!6744788))

(assert (= (and b!6744795 (not res!2758820)) b!6744794))

(assert (= (or b!6744794 b!6744788) bm!609869))

(assert (= (or b!6744786 b!6744795) bm!609870))

(declare-fun m!7500568 () Bool)

(assert (=> bm!609869 m!7500568))

(declare-fun m!7500570 () Bool)

(assert (=> b!6744785 m!7500570))

(declare-fun m!7500572 () Bool)

(assert (=> b!6744787 m!7500572))

(assert (=> bm!609870 m!7500386))

(assert (=> b!6744642 d!2119068))

(declare-fun b!6744889 () Bool)

(declare-fun res!2758864 () Bool)

(declare-fun e!4073838 () Bool)

(assert (=> b!6744889 (=> (not res!2758864) (not e!4073838))))

(declare-fun tail!12658 (List!66020) List!66020)

(assert (=> b!6744889 (= res!2758864 (isEmpty!38241 (tail!12658 s!2326)))))

(declare-fun b!6744890 () Bool)

(declare-fun e!4073835 () Bool)

(declare-fun e!4073833 () Bool)

(assert (=> b!6744890 (= e!4073835 e!4073833)))

(declare-fun c!1251367 () Bool)

(assert (=> b!6744890 (= c!1251367 ((_ is EmptyLang!16573) lt!2439737))))

(declare-fun bm!609873 () Bool)

(declare-fun call!609878 () Bool)

(assert (=> bm!609873 (= call!609878 (isEmpty!38241 s!2326))))

(declare-fun b!6744891 () Bool)

(declare-fun res!2758869 () Bool)

(declare-fun e!4073839 () Bool)

(assert (=> b!6744891 (=> res!2758869 e!4073839)))

(assert (=> b!6744891 (= res!2758869 (not ((_ is ElementMatch!16573) lt!2439737)))))

(assert (=> b!6744891 (= e!4073833 e!4073839)))

(declare-fun b!6744892 () Bool)

(declare-fun res!2758866 () Bool)

(assert (=> b!6744892 (=> (not res!2758866) (not e!4073838))))

(assert (=> b!6744892 (= res!2758866 (not call!609878))))

(declare-fun b!6744893 () Bool)

(declare-fun lt!2439793 () Bool)

(assert (=> b!6744893 (= e!4073835 (= lt!2439793 call!609878))))

(declare-fun b!6744894 () Bool)

(declare-fun e!4073837 () Bool)

(declare-fun nullable!6560 (Regex!16573) Bool)

(assert (=> b!6744894 (= e!4073837 (nullable!6560 lt!2439737))))

(declare-fun b!6744895 () Bool)

(declare-fun e!4073836 () Bool)

(declare-fun e!4073834 () Bool)

(assert (=> b!6744895 (= e!4073836 e!4073834)))

(declare-fun res!2758871 () Bool)

(assert (=> b!6744895 (=> res!2758871 e!4073834)))

(assert (=> b!6744895 (= res!2758871 call!609878)))

(declare-fun d!2119090 () Bool)

(assert (=> d!2119090 e!4073835))

(declare-fun c!1251368 () Bool)

(assert (=> d!2119090 (= c!1251368 ((_ is EmptyExpr!16573) lt!2439737))))

(assert (=> d!2119090 (= lt!2439793 e!4073837)))

(declare-fun c!1251369 () Bool)

(assert (=> d!2119090 (= c!1251369 (isEmpty!38241 s!2326))))

(assert (=> d!2119090 (validRegex!8309 lt!2439737)))

(assert (=> d!2119090 (= (matchR!8756 lt!2439737 s!2326) lt!2439793)))

(declare-fun b!6744896 () Bool)

(declare-fun head!13573 (List!66020) C!33416)

(assert (=> b!6744896 (= e!4073838 (= (head!13573 s!2326) (c!1251299 lt!2439737)))))

(declare-fun b!6744897 () Bool)

(assert (=> b!6744897 (= e!4073834 (not (= (head!13573 s!2326) (c!1251299 lt!2439737))))))

(declare-fun b!6744898 () Bool)

(assert (=> b!6744898 (= e!4073833 (not lt!2439793))))

(declare-fun b!6744899 () Bool)

(declare-fun derivativeStep!5244 (Regex!16573 C!33416) Regex!16573)

(assert (=> b!6744899 (= e!4073837 (matchR!8756 (derivativeStep!5244 lt!2439737 (head!13573 s!2326)) (tail!12658 s!2326)))))

(declare-fun b!6744900 () Bool)

(assert (=> b!6744900 (= e!4073839 e!4073836)))

(declare-fun res!2758865 () Bool)

(assert (=> b!6744900 (=> (not res!2758865) (not e!4073836))))

(assert (=> b!6744900 (= res!2758865 (not lt!2439793))))

(declare-fun b!6744901 () Bool)

(declare-fun res!2758870 () Bool)

(assert (=> b!6744901 (=> res!2758870 e!4073839)))

(assert (=> b!6744901 (= res!2758870 e!4073838)))

(declare-fun res!2758868 () Bool)

(assert (=> b!6744901 (=> (not res!2758868) (not e!4073838))))

(assert (=> b!6744901 (= res!2758868 lt!2439793)))

(declare-fun b!6744902 () Bool)

(declare-fun res!2758867 () Bool)

(assert (=> b!6744902 (=> res!2758867 e!4073834)))

(assert (=> b!6744902 (= res!2758867 (not (isEmpty!38241 (tail!12658 s!2326))))))

(assert (= (and d!2119090 c!1251369) b!6744894))

(assert (= (and d!2119090 (not c!1251369)) b!6744899))

(assert (= (and d!2119090 c!1251368) b!6744893))

(assert (= (and d!2119090 (not c!1251368)) b!6744890))

(assert (= (and b!6744890 c!1251367) b!6744898))

(assert (= (and b!6744890 (not c!1251367)) b!6744891))

(assert (= (and b!6744891 (not res!2758869)) b!6744901))

(assert (= (and b!6744901 res!2758868) b!6744892))

(assert (= (and b!6744892 res!2758866) b!6744889))

(assert (= (and b!6744889 res!2758864) b!6744896))

(assert (= (and b!6744901 (not res!2758870)) b!6744900))

(assert (= (and b!6744900 res!2758865) b!6744895))

(assert (= (and b!6744895 (not res!2758871)) b!6744902))

(assert (= (and b!6744902 (not res!2758867)) b!6744897))

(assert (= (or b!6744893 b!6744892 b!6744895) bm!609873))

(assert (=> d!2119090 m!7500386))

(declare-fun m!7500622 () Bool)

(assert (=> d!2119090 m!7500622))

(assert (=> bm!609873 m!7500386))

(declare-fun m!7500624 () Bool)

(assert (=> b!6744899 m!7500624))

(assert (=> b!6744899 m!7500624))

(declare-fun m!7500626 () Bool)

(assert (=> b!6744899 m!7500626))

(declare-fun m!7500628 () Bool)

(assert (=> b!6744899 m!7500628))

(assert (=> b!6744899 m!7500626))

(assert (=> b!6744899 m!7500628))

(declare-fun m!7500630 () Bool)

(assert (=> b!6744899 m!7500630))

(assert (=> b!6744902 m!7500628))

(assert (=> b!6744902 m!7500628))

(declare-fun m!7500632 () Bool)

(assert (=> b!6744902 m!7500632))

(declare-fun m!7500634 () Bool)

(assert (=> b!6744894 m!7500634))

(assert (=> b!6744889 m!7500628))

(assert (=> b!6744889 m!7500628))

(assert (=> b!6744889 m!7500632))

(assert (=> b!6744896 m!7500624))

(assert (=> b!6744897 m!7500624))

(assert (=> b!6744642 d!2119090))

(declare-fun d!2119100 () Bool)

(assert (=> d!2119100 (= (matchR!8756 lt!2439737 s!2326) (matchRSpec!3674 lt!2439737 s!2326))))

(declare-fun lt!2439797 () Unit!159837)

(declare-fun choose!50292 (Regex!16573 List!66020) Unit!159837)

(assert (=> d!2119100 (= lt!2439797 (choose!50292 lt!2439737 s!2326))))

(assert (=> d!2119100 (validRegex!8309 lt!2439737)))

(assert (=> d!2119100 (= (mainMatchTheorem!3674 lt!2439737 s!2326) lt!2439797)))

(declare-fun bs!1793209 () Bool)

(assert (= bs!1793209 d!2119100))

(assert (=> bs!1793209 m!7500424))

(assert (=> bs!1793209 m!7500422))

(declare-fun m!7500642 () Bool)

(assert (=> bs!1793209 m!7500642))

(assert (=> bs!1793209 m!7500622))

(assert (=> b!6744642 d!2119100))

(declare-fun d!2119104 () Bool)

(declare-fun lt!2439800 () Regex!16573)

(assert (=> d!2119104 (validRegex!8309 lt!2439800)))

(assert (=> d!2119104 (= lt!2439800 (generalisedUnion!2417 (unfocusZipperList!1994 zl!343)))))

(assert (=> d!2119104 (= (unfocusZipper!2315 zl!343) lt!2439800)))

(declare-fun bs!1793214 () Bool)

(assert (= bs!1793214 d!2119104))

(declare-fun m!7500668 () Bool)

(assert (=> bs!1793214 m!7500668))

(assert (=> bs!1793214 m!7500468))

(assert (=> bs!1793214 m!7500468))

(assert (=> bs!1793214 m!7500470))

(assert (=> b!6744661 d!2119104))

(declare-fun d!2119112 () Bool)

(declare-fun lambda!379097 () Int)

(declare-fun forall!15773 (List!66018 Int) Bool)

(assert (=> d!2119112 (= (inv!84679 (h!72343 zl!343)) (forall!15773 (exprs!6457 (h!72343 zl!343)) lambda!379097))))

(declare-fun bs!1793215 () Bool)

(assert (= bs!1793215 d!2119112))

(declare-fun m!7500670 () Bool)

(assert (=> bs!1793215 m!7500670))

(assert (=> b!6744651 d!2119112))

(declare-fun bs!1793225 () Bool)

(declare-fun d!2119114 () Bool)

(assert (= bs!1793225 (and d!2119114 d!2119112)))

(declare-fun lambda!379106 () Int)

(assert (=> bs!1793225 (= lambda!379106 lambda!379097)))

(declare-fun b!6745005 () Bool)

(declare-fun e!4073905 () Regex!16573)

(assert (=> b!6745005 (= e!4073905 (Concat!25418 (h!72342 (exprs!6457 (h!72343 zl!343))) (generalisedConcat!2170 (t!379719 (exprs!6457 (h!72343 zl!343))))))))

(declare-fun b!6745006 () Bool)

(declare-fun e!4073904 () Regex!16573)

(assert (=> b!6745006 (= e!4073904 e!4073905)))

(declare-fun c!1251403 () Bool)

(assert (=> b!6745006 (= c!1251403 ((_ is Cons!65894) (exprs!6457 (h!72343 zl!343))))))

(declare-fun b!6745007 () Bool)

(declare-fun e!4073903 () Bool)

(declare-fun e!4073906 () Bool)

(assert (=> b!6745007 (= e!4073903 e!4073906)))

(declare-fun c!1251402 () Bool)

(declare-fun isEmpty!38245 (List!66018) Bool)

(assert (=> b!6745007 (= c!1251402 (isEmpty!38245 (exprs!6457 (h!72343 zl!343))))))

(declare-fun b!6745008 () Bool)

(declare-fun e!4073908 () Bool)

(assert (=> b!6745008 (= e!4073906 e!4073908)))

(declare-fun c!1251401 () Bool)

(declare-fun tail!12659 (List!66018) List!66018)

(assert (=> b!6745008 (= c!1251401 (isEmpty!38245 (tail!12659 (exprs!6457 (h!72343 zl!343)))))))

(assert (=> d!2119114 e!4073903))

(declare-fun res!2758910 () Bool)

(assert (=> d!2119114 (=> (not res!2758910) (not e!4073903))))

(declare-fun lt!2439805 () Regex!16573)

(assert (=> d!2119114 (= res!2758910 (validRegex!8309 lt!2439805))))

(assert (=> d!2119114 (= lt!2439805 e!4073904)))

(declare-fun c!1251404 () Bool)

(declare-fun e!4073907 () Bool)

(assert (=> d!2119114 (= c!1251404 e!4073907)))

(declare-fun res!2758911 () Bool)

(assert (=> d!2119114 (=> (not res!2758911) (not e!4073907))))

(assert (=> d!2119114 (= res!2758911 ((_ is Cons!65894) (exprs!6457 (h!72343 zl!343))))))

(assert (=> d!2119114 (forall!15773 (exprs!6457 (h!72343 zl!343)) lambda!379106)))

(assert (=> d!2119114 (= (generalisedConcat!2170 (exprs!6457 (h!72343 zl!343))) lt!2439805)))

(declare-fun b!6745011 () Bool)

(declare-fun isConcat!1461 (Regex!16573) Bool)

(assert (=> b!6745011 (= e!4073908 (isConcat!1461 lt!2439805))))

(declare-fun b!6745012 () Bool)

(declare-fun head!13574 (List!66018) Regex!16573)

(assert (=> b!6745012 (= e!4073908 (= lt!2439805 (head!13574 (exprs!6457 (h!72343 zl!343)))))))

(declare-fun b!6745013 () Bool)

(assert (=> b!6745013 (= e!4073905 EmptyExpr!16573)))

(declare-fun b!6745014 () Bool)

(declare-fun isEmptyExpr!1938 (Regex!16573) Bool)

(assert (=> b!6745014 (= e!4073906 (isEmptyExpr!1938 lt!2439805))))

(declare-fun b!6745015 () Bool)

(assert (=> b!6745015 (= e!4073904 (h!72342 (exprs!6457 (h!72343 zl!343))))))

(declare-fun b!6745016 () Bool)

(assert (=> b!6745016 (= e!4073907 (isEmpty!38245 (t!379719 (exprs!6457 (h!72343 zl!343)))))))

(assert (= (and d!2119114 res!2758911) b!6745016))

(assert (= (and d!2119114 c!1251404) b!6745015))

(assert (= (and d!2119114 (not c!1251404)) b!6745006))

(assert (= (and b!6745006 c!1251403) b!6745005))

(assert (= (and b!6745006 (not c!1251403)) b!6745013))

(assert (= (and d!2119114 res!2758910) b!6745007))

(assert (= (and b!6745007 c!1251402) b!6745014))

(assert (= (and b!6745007 (not c!1251402)) b!6745008))

(assert (= (and b!6745008 c!1251401) b!6745012))

(assert (= (and b!6745008 (not c!1251401)) b!6745011))

(declare-fun m!7500678 () Bool)

(assert (=> b!6745016 m!7500678))

(declare-fun m!7500680 () Bool)

(assert (=> b!6745011 m!7500680))

(declare-fun m!7500682 () Bool)

(assert (=> b!6745008 m!7500682))

(assert (=> b!6745008 m!7500682))

(declare-fun m!7500684 () Bool)

(assert (=> b!6745008 m!7500684))

(declare-fun m!7500686 () Bool)

(assert (=> b!6745014 m!7500686))

(declare-fun m!7500688 () Bool)

(assert (=> d!2119114 m!7500688))

(declare-fun m!7500690 () Bool)

(assert (=> d!2119114 m!7500690))

(declare-fun m!7500692 () Bool)

(assert (=> b!6745005 m!7500692))

(declare-fun m!7500694 () Bool)

(assert (=> b!6745012 m!7500694))

(declare-fun m!7500696 () Bool)

(assert (=> b!6745007 m!7500696))

(assert (=> b!6744641 d!2119114))

(declare-fun d!2119118 () Bool)

(assert (=> d!2119118 (= (isEmpty!38242 (t!379720 zl!343)) ((_ is Nil!65895) (t!379720 zl!343)))))

(assert (=> b!6744660 d!2119118))

(declare-fun d!2119120 () Bool)

(declare-fun lt!2439806 () Regex!16573)

(assert (=> d!2119120 (validRegex!8309 lt!2439806)))

(assert (=> d!2119120 (= lt!2439806 (generalisedUnion!2417 (unfocusZipperList!1994 (Cons!65895 lt!2439748 Nil!65895))))))

(assert (=> d!2119120 (= (unfocusZipper!2315 (Cons!65895 lt!2439748 Nil!65895)) lt!2439806)))

(declare-fun bs!1793226 () Bool)

(assert (= bs!1793226 d!2119120))

(declare-fun m!7500698 () Bool)

(assert (=> bs!1793226 m!7500698))

(declare-fun m!7500700 () Bool)

(assert (=> bs!1793226 m!7500700))

(assert (=> bs!1793226 m!7500700))

(declare-fun m!7500702 () Bool)

(assert (=> bs!1793226 m!7500702))

(assert (=> b!6744650 d!2119120))

(declare-fun d!2119122 () Bool)

(declare-fun e!4073932 () Bool)

(assert (=> d!2119122 e!4073932))

(declare-fun res!2758938 () Bool)

(assert (=> d!2119122 (=> (not res!2758938) (not e!4073932))))

(declare-fun lt!2439810 () List!66019)

(declare-fun noDuplicate!2365 (List!66019) Bool)

(assert (=> d!2119122 (= res!2758938 (noDuplicate!2365 lt!2439810))))

(declare-fun choose!50294 ((InoxSet Context!11914)) List!66019)

(assert (=> d!2119122 (= lt!2439810 (choose!50294 z!1189))))

(assert (=> d!2119122 (= (toList!10357 z!1189) lt!2439810)))

(declare-fun b!6745057 () Bool)

(declare-fun content!12812 (List!66019) (InoxSet Context!11914))

(assert (=> b!6745057 (= e!4073932 (= (content!12812 lt!2439810) z!1189))))

(assert (= (and d!2119122 res!2758938) b!6745057))

(declare-fun m!7500712 () Bool)

(assert (=> d!2119122 m!7500712))

(declare-fun m!7500714 () Bool)

(assert (=> d!2119122 m!7500714))

(declare-fun m!7500716 () Bool)

(assert (=> b!6745057 m!7500716))

(assert (=> b!6744659 d!2119122))

(declare-fun d!2119126 () Bool)

(declare-fun choose!50295 ((InoxSet Context!11914) Int) (InoxSet Context!11914))

(assert (=> d!2119126 (= (flatMap!2054 z!1189 lambda!379059) (choose!50295 z!1189 lambda!379059))))

(declare-fun bs!1793227 () Bool)

(assert (= bs!1793227 d!2119126))

(declare-fun m!7500718 () Bool)

(assert (=> bs!1793227 m!7500718))

(assert (=> b!6744639 d!2119126))

(declare-fun b!6745102 () Bool)

(declare-fun e!4073962 () (InoxSet Context!11914))

(assert (=> b!6745102 (= e!4073962 ((as const (Array Context!11914 Bool)) false))))

(declare-fun bm!609900 () Bool)

(declare-fun call!609905 () (InoxSet Context!11914))

(assert (=> bm!609900 (= call!609905 (derivationStepZipperDown!1801 (h!72342 (exprs!6457 (h!72343 zl!343))) (Context!11915 (t!379719 (exprs!6457 (h!72343 zl!343)))) (h!72344 s!2326)))))

(declare-fun b!6745103 () Bool)

(declare-fun e!4073961 () Bool)

(assert (=> b!6745103 (= e!4073961 (nullable!6560 (h!72342 (exprs!6457 (h!72343 zl!343)))))))

(declare-fun d!2119128 () Bool)

(declare-fun c!1251428 () Bool)

(assert (=> d!2119128 (= c!1251428 e!4073961)))

(declare-fun res!2758957 () Bool)

(assert (=> d!2119128 (=> (not res!2758957) (not e!4073961))))

(assert (=> d!2119128 (= res!2758957 ((_ is Cons!65894) (exprs!6457 (h!72343 zl!343))))))

(declare-fun e!4073960 () (InoxSet Context!11914))

(assert (=> d!2119128 (= (derivationStepZipperUp!1727 (h!72343 zl!343) (h!72344 s!2326)) e!4073960)))

(declare-fun b!6745104 () Bool)

(assert (=> b!6745104 (= e!4073962 call!609905)))

(declare-fun b!6745105 () Bool)

(assert (=> b!6745105 (= e!4073960 ((_ map or) call!609905 (derivationStepZipperUp!1727 (Context!11915 (t!379719 (exprs!6457 (h!72343 zl!343)))) (h!72344 s!2326))))))

(declare-fun b!6745106 () Bool)

(assert (=> b!6745106 (= e!4073960 e!4073962)))

(declare-fun c!1251427 () Bool)

(assert (=> b!6745106 (= c!1251427 ((_ is Cons!65894) (exprs!6457 (h!72343 zl!343))))))

(assert (= (and d!2119128 res!2758957) b!6745103))

(assert (= (and d!2119128 c!1251428) b!6745105))

(assert (= (and d!2119128 (not c!1251428)) b!6745106))

(assert (= (and b!6745106 c!1251427) b!6745104))

(assert (= (and b!6745106 (not c!1251427)) b!6745102))

(assert (= (or b!6745105 b!6745104) bm!609900))

(declare-fun m!7500750 () Bool)

(assert (=> bm!609900 m!7500750))

(declare-fun m!7500752 () Bool)

(assert (=> b!6745103 m!7500752))

(declare-fun m!7500754 () Bool)

(assert (=> b!6745105 m!7500754))

(assert (=> b!6744639 d!2119128))

(declare-fun d!2119142 () Bool)

(declare-fun dynLambda!26294 (Int Context!11914) (InoxSet Context!11914))

(assert (=> d!2119142 (= (flatMap!2054 z!1189 lambda!379059) (dynLambda!26294 lambda!379059 (h!72343 zl!343)))))

(declare-fun lt!2439820 () Unit!159837)

(declare-fun choose!50296 ((InoxSet Context!11914) Context!11914 Int) Unit!159837)

(assert (=> d!2119142 (= lt!2439820 (choose!50296 z!1189 (h!72343 zl!343) lambda!379059))))

(assert (=> d!2119142 (= z!1189 (store ((as const (Array Context!11914 Bool)) false) (h!72343 zl!343) true))))

(assert (=> d!2119142 (= (lemmaFlatMapOnSingletonSet!1580 z!1189 (h!72343 zl!343) lambda!379059) lt!2439820)))

(declare-fun b_lambda!254051 () Bool)

(assert (=> (not b_lambda!254051) (not d!2119142)))

(declare-fun bs!1793246 () Bool)

(assert (= bs!1793246 d!2119142))

(assert (=> bs!1793246 m!7500454))

(declare-fun m!7500776 () Bool)

(assert (=> bs!1793246 m!7500776))

(declare-fun m!7500778 () Bool)

(assert (=> bs!1793246 m!7500778))

(declare-fun m!7500780 () Bool)

(assert (=> bs!1793246 m!7500780))

(assert (=> b!6744639 d!2119142))

(declare-fun b!6745178 () Bool)

(declare-fun e!4074012 () Bool)

(declare-fun call!609921 () Bool)

(assert (=> b!6745178 (= e!4074012 call!609921)))

(declare-fun b!6745179 () Bool)

(declare-fun e!4074011 () Bool)

(declare-fun call!609920 () Bool)

(assert (=> b!6745179 (= e!4074011 call!609920)))

(declare-fun b!6745180 () Bool)

(declare-fun res!2758983 () Bool)

(declare-fun e!4074014 () Bool)

(assert (=> b!6745180 (=> res!2758983 e!4074014)))

(assert (=> b!6745180 (= res!2758983 (not ((_ is Concat!25418) r!7292)))))

(declare-fun e!4074015 () Bool)

(assert (=> b!6745180 (= e!4074015 e!4074014)))

(declare-fun b!6745181 () Bool)

(assert (=> b!6745181 (= e!4074014 e!4074012)))

(declare-fun res!2758981 () Bool)

(assert (=> b!6745181 (=> (not res!2758981) (not e!4074012))))

(declare-fun call!609919 () Bool)

(assert (=> b!6745181 (= res!2758981 call!609919)))

(declare-fun b!6745182 () Bool)

(declare-fun e!4074009 () Bool)

(assert (=> b!6745182 (= e!4074009 call!609921)))

(declare-fun bm!609914 () Bool)

(assert (=> bm!609914 (= call!609919 call!609920)))

(declare-fun d!2119152 () Bool)

(declare-fun res!2758982 () Bool)

(declare-fun e!4074013 () Bool)

(assert (=> d!2119152 (=> res!2758982 e!4074013)))

(assert (=> d!2119152 (= res!2758982 ((_ is ElementMatch!16573) r!7292))))

(assert (=> d!2119152 (= (validRegex!8309 r!7292) e!4074013)))

(declare-fun bm!609915 () Bool)

(declare-fun c!1251453 () Bool)

(declare-fun c!1251452 () Bool)

(assert (=> bm!609915 (= call!609920 (validRegex!8309 (ite c!1251452 (reg!16902 r!7292) (ite c!1251453 (regOne!33659 r!7292) (regOne!33658 r!7292)))))))

(declare-fun b!6745183 () Bool)

(declare-fun res!2758980 () Bool)

(assert (=> b!6745183 (=> (not res!2758980) (not e!4074009))))

(assert (=> b!6745183 (= res!2758980 call!609919)))

(assert (=> b!6745183 (= e!4074015 e!4074009)))

(declare-fun bm!609916 () Bool)

(assert (=> bm!609916 (= call!609921 (validRegex!8309 (ite c!1251453 (regTwo!33659 r!7292) (regTwo!33658 r!7292))))))

(declare-fun b!6745184 () Bool)

(declare-fun e!4074010 () Bool)

(assert (=> b!6745184 (= e!4074010 e!4074015)))

(assert (=> b!6745184 (= c!1251453 ((_ is Union!16573) r!7292))))

(declare-fun b!6745185 () Bool)

(assert (=> b!6745185 (= e!4074013 e!4074010)))

(assert (=> b!6745185 (= c!1251452 ((_ is Star!16573) r!7292))))

(declare-fun b!6745186 () Bool)

(assert (=> b!6745186 (= e!4074010 e!4074011)))

(declare-fun res!2758979 () Bool)

(assert (=> b!6745186 (= res!2758979 (not (nullable!6560 (reg!16902 r!7292))))))

(assert (=> b!6745186 (=> (not res!2758979) (not e!4074011))))

(assert (= (and d!2119152 (not res!2758982)) b!6745185))

(assert (= (and b!6745185 c!1251452) b!6745186))

(assert (= (and b!6745185 (not c!1251452)) b!6745184))

(assert (= (and b!6745186 res!2758979) b!6745179))

(assert (= (and b!6745184 c!1251453) b!6745183))

(assert (= (and b!6745184 (not c!1251453)) b!6745180))

(assert (= (and b!6745183 res!2758980) b!6745182))

(assert (= (and b!6745180 (not res!2758983)) b!6745181))

(assert (= (and b!6745181 res!2758981) b!6745178))

(assert (= (or b!6745182 b!6745178) bm!609916))

(assert (= (or b!6745183 b!6745181) bm!609914))

(assert (= (or b!6745179 bm!609914) bm!609915))

(declare-fun m!7500818 () Bool)

(assert (=> bm!609915 m!7500818))

(declare-fun m!7500820 () Bool)

(assert (=> bm!609916 m!7500820))

(declare-fun m!7500822 () Bool)

(assert (=> b!6745186 m!7500822))

(assert (=> start!654192 d!2119152))

(declare-fun b!6745259 () Bool)

(declare-fun e!4074051 () (InoxSet Context!11914))

(assert (=> b!6745259 (= e!4074051 (store ((as const (Array Context!11914 Bool)) false) lt!2439735 true))))

(declare-fun c!1251468 () Bool)

(declare-fun c!1251466 () Bool)

(declare-fun call!609939 () List!66018)

(declare-fun bm!609929 () Bool)

(declare-fun $colon$colon!2390 (List!66018 Regex!16573) List!66018)

(assert (=> bm!609929 (= call!609939 ($colon$colon!2390 (exprs!6457 lt!2439735) (ite (or c!1251466 c!1251468) (regTwo!33658 (reg!16902 r!7292)) (reg!16902 r!7292))))))

(declare-fun bm!609930 () Bool)

(declare-fun c!1251464 () Bool)

(declare-fun call!609936 () (InoxSet Context!11914))

(assert (=> bm!609930 (= call!609936 (derivationStepZipperDown!1801 (ite c!1251464 (regTwo!33659 (reg!16902 r!7292)) (regOne!33658 (reg!16902 r!7292))) (ite c!1251464 lt!2439735 (Context!11915 call!609939)) (h!72344 s!2326)))))

(declare-fun b!6745260 () Bool)

(declare-fun e!4074049 () (InoxSet Context!11914))

(declare-fun call!609934 () (InoxSet Context!11914))

(assert (=> b!6745260 (= e!4074049 ((_ map or) call!609934 call!609936))))

(declare-fun d!2119162 () Bool)

(declare-fun c!1251467 () Bool)

(assert (=> d!2119162 (= c!1251467 (and ((_ is ElementMatch!16573) (reg!16902 r!7292)) (= (c!1251299 (reg!16902 r!7292)) (h!72344 s!2326))))))

(assert (=> d!2119162 (= (derivationStepZipperDown!1801 (reg!16902 r!7292) lt!2439735 (h!72344 s!2326)) e!4074051)))

(declare-fun b!6745261 () Bool)

(declare-fun e!4074054 () (InoxSet Context!11914))

(declare-fun call!609938 () (InoxSet Context!11914))

(assert (=> b!6745261 (= e!4074054 call!609938)))

(declare-fun bm!609931 () Bool)

(declare-fun call!609935 () (InoxSet Context!11914))

(assert (=> bm!609931 (= call!609935 call!609934)))

(declare-fun b!6745262 () Bool)

(declare-fun e!4074052 () (InoxSet Context!11914))

(assert (=> b!6745262 (= e!4074052 e!4074054)))

(assert (=> b!6745262 (= c!1251468 ((_ is Concat!25418) (reg!16902 r!7292)))))

(declare-fun b!6745263 () Bool)

(declare-fun e!4074053 () Bool)

(assert (=> b!6745263 (= e!4074053 (nullable!6560 (regOne!33658 (reg!16902 r!7292))))))

(declare-fun b!6745264 () Bool)

(declare-fun e!4074050 () (InoxSet Context!11914))

(assert (=> b!6745264 (= e!4074050 ((as const (Array Context!11914 Bool)) false))))

(declare-fun bm!609932 () Bool)

(assert (=> bm!609932 (= call!609938 call!609935)))

(declare-fun b!6745265 () Bool)

(assert (=> b!6745265 (= e!4074050 call!609938)))

(declare-fun b!6745266 () Bool)

(assert (=> b!6745266 (= e!4074051 e!4074049)))

(assert (=> b!6745266 (= c!1251464 ((_ is Union!16573) (reg!16902 r!7292)))))

(declare-fun b!6745267 () Bool)

(declare-fun c!1251465 () Bool)

(assert (=> b!6745267 (= c!1251465 ((_ is Star!16573) (reg!16902 r!7292)))))

(assert (=> b!6745267 (= e!4074054 e!4074050)))

(declare-fun b!6745268 () Bool)

(assert (=> b!6745268 (= e!4074052 ((_ map or) call!609936 call!609935))))

(declare-fun bm!609933 () Bool)

(declare-fun call!609937 () List!66018)

(assert (=> bm!609933 (= call!609937 call!609939)))

(declare-fun bm!609934 () Bool)

(assert (=> bm!609934 (= call!609934 (derivationStepZipperDown!1801 (ite c!1251464 (regOne!33659 (reg!16902 r!7292)) (ite c!1251466 (regTwo!33658 (reg!16902 r!7292)) (ite c!1251468 (regOne!33658 (reg!16902 r!7292)) (reg!16902 (reg!16902 r!7292))))) (ite (or c!1251464 c!1251466) lt!2439735 (Context!11915 call!609937)) (h!72344 s!2326)))))

(declare-fun b!6745269 () Bool)

(assert (=> b!6745269 (= c!1251466 e!4074053)))

(declare-fun res!2758986 () Bool)

(assert (=> b!6745269 (=> (not res!2758986) (not e!4074053))))

(assert (=> b!6745269 (= res!2758986 ((_ is Concat!25418) (reg!16902 r!7292)))))

(assert (=> b!6745269 (= e!4074049 e!4074052)))

(assert (= (and d!2119162 c!1251467) b!6745259))

(assert (= (and d!2119162 (not c!1251467)) b!6745266))

(assert (= (and b!6745266 c!1251464) b!6745260))

(assert (= (and b!6745266 (not c!1251464)) b!6745269))

(assert (= (and b!6745269 res!2758986) b!6745263))

(assert (= (and b!6745269 c!1251466) b!6745268))

(assert (= (and b!6745269 (not c!1251466)) b!6745262))

(assert (= (and b!6745262 c!1251468) b!6745261))

(assert (= (and b!6745262 (not c!1251468)) b!6745267))

(assert (= (and b!6745267 c!1251465) b!6745265))

(assert (= (and b!6745267 (not c!1251465)) b!6745264))

(assert (= (or b!6745261 b!6745265) bm!609933))

(assert (= (or b!6745261 b!6745265) bm!609932))

(assert (= (or b!6745268 bm!609933) bm!609929))

(assert (= (or b!6745268 bm!609932) bm!609931))

(assert (= (or b!6745260 b!6745268) bm!609930))

(assert (= (or b!6745260 bm!609931) bm!609934))

(declare-fun m!7500826 () Bool)

(assert (=> bm!609930 m!7500826))

(declare-fun m!7500828 () Bool)

(assert (=> bm!609934 m!7500828))

(declare-fun m!7500830 () Bool)

(assert (=> b!6745263 m!7500830))

(declare-fun m!7500832 () Bool)

(assert (=> bm!609929 m!7500832))

(assert (=> b!6745259 m!7500436))

(assert (=> b!6744657 d!2119162))

(declare-fun d!2119172 () Bool)

(assert (=> d!2119172 (= (flatMap!2054 lt!2439734 lambda!379059) (choose!50295 lt!2439734 lambda!379059))))

(declare-fun bs!1793260 () Bool)

(assert (= bs!1793260 d!2119172))

(declare-fun m!7500834 () Bool)

(assert (=> bs!1793260 m!7500834))

(assert (=> b!6744657 d!2119172))

(declare-fun b!6745270 () Bool)

(declare-fun e!4074057 () (InoxSet Context!11914))

(assert (=> b!6745270 (= e!4074057 ((as const (Array Context!11914 Bool)) false))))

(declare-fun bm!609935 () Bool)

(declare-fun call!609940 () (InoxSet Context!11914))

(assert (=> bm!609935 (= call!609940 (derivationStepZipperDown!1801 (h!72342 (exprs!6457 lt!2439748)) (Context!11915 (t!379719 (exprs!6457 lt!2439748))) (h!72344 s!2326)))))

(declare-fun b!6745271 () Bool)

(declare-fun e!4074056 () Bool)

(assert (=> b!6745271 (= e!4074056 (nullable!6560 (h!72342 (exprs!6457 lt!2439748))))))

(declare-fun d!2119174 () Bool)

(declare-fun c!1251470 () Bool)

(assert (=> d!2119174 (= c!1251470 e!4074056)))

(declare-fun res!2758987 () Bool)

(assert (=> d!2119174 (=> (not res!2758987) (not e!4074056))))

(assert (=> d!2119174 (= res!2758987 ((_ is Cons!65894) (exprs!6457 lt!2439748)))))

(declare-fun e!4074055 () (InoxSet Context!11914))

(assert (=> d!2119174 (= (derivationStepZipperUp!1727 lt!2439748 (h!72344 s!2326)) e!4074055)))

(declare-fun b!6745272 () Bool)

(assert (=> b!6745272 (= e!4074057 call!609940)))

(declare-fun b!6745273 () Bool)

(assert (=> b!6745273 (= e!4074055 ((_ map or) call!609940 (derivationStepZipperUp!1727 (Context!11915 (t!379719 (exprs!6457 lt!2439748))) (h!72344 s!2326))))))

(declare-fun b!6745274 () Bool)

(assert (=> b!6745274 (= e!4074055 e!4074057)))

(declare-fun c!1251469 () Bool)

(assert (=> b!6745274 (= c!1251469 ((_ is Cons!65894) (exprs!6457 lt!2439748)))))

(assert (= (and d!2119174 res!2758987) b!6745271))

(assert (= (and d!2119174 c!1251470) b!6745273))

(assert (= (and d!2119174 (not c!1251470)) b!6745274))

(assert (= (and b!6745274 c!1251469) b!6745272))

(assert (= (and b!6745274 (not c!1251469)) b!6745270))

(assert (= (or b!6745273 b!6745272) bm!609935))

(declare-fun m!7500836 () Bool)

(assert (=> bm!609935 m!7500836))

(declare-fun m!7500838 () Bool)

(assert (=> b!6745271 m!7500838))

(declare-fun m!7500840 () Bool)

(assert (=> b!6745273 m!7500840))

(assert (=> b!6744657 d!2119174))

(declare-fun d!2119176 () Bool)

(assert (=> d!2119176 (= (flatMap!2054 lt!2439734 lambda!379059) (dynLambda!26294 lambda!379059 lt!2439748))))

(declare-fun lt!2439828 () Unit!159837)

(assert (=> d!2119176 (= lt!2439828 (choose!50296 lt!2439734 lt!2439748 lambda!379059))))

(assert (=> d!2119176 (= lt!2439734 (store ((as const (Array Context!11914 Bool)) false) lt!2439748 true))))

(assert (=> d!2119176 (= (lemmaFlatMapOnSingletonSet!1580 lt!2439734 lt!2439748 lambda!379059) lt!2439828)))

(declare-fun b_lambda!254061 () Bool)

(assert (=> (not b_lambda!254061) (not d!2119176)))

(declare-fun bs!1793261 () Bool)

(assert (= bs!1793261 d!2119176))

(assert (=> bs!1793261 m!7500410))

(declare-fun m!7500842 () Bool)

(assert (=> bs!1793261 m!7500842))

(declare-fun m!7500844 () Bool)

(assert (=> bs!1793261 m!7500844))

(assert (=> bs!1793261 m!7500416))

(assert (=> b!6744657 d!2119176))

(declare-fun d!2119178 () Bool)

(assert (=> d!2119178 (= (flatMap!2054 lt!2439744 lambda!379059) (choose!50295 lt!2439744 lambda!379059))))

(declare-fun bs!1793262 () Bool)

(assert (= bs!1793262 d!2119178))

(declare-fun m!7500846 () Bool)

(assert (=> bs!1793262 m!7500846))

(assert (=> b!6744647 d!2119178))

(declare-fun b!6745275 () Bool)

(declare-fun e!4074060 () (InoxSet Context!11914))

(assert (=> b!6745275 (= e!4074060 ((as const (Array Context!11914 Bool)) false))))

(declare-fun bm!609936 () Bool)

(declare-fun call!609941 () (InoxSet Context!11914))

(assert (=> bm!609936 (= call!609941 (derivationStepZipperDown!1801 (h!72342 (exprs!6457 lt!2439750)) (Context!11915 (t!379719 (exprs!6457 lt!2439750))) (h!72344 s!2326)))))

(declare-fun b!6745276 () Bool)

(declare-fun e!4074059 () Bool)

(assert (=> b!6745276 (= e!4074059 (nullable!6560 (h!72342 (exprs!6457 lt!2439750))))))

(declare-fun d!2119180 () Bool)

(declare-fun c!1251472 () Bool)

(assert (=> d!2119180 (= c!1251472 e!4074059)))

(declare-fun res!2758988 () Bool)

(assert (=> d!2119180 (=> (not res!2758988) (not e!4074059))))

(assert (=> d!2119180 (= res!2758988 ((_ is Cons!65894) (exprs!6457 lt!2439750)))))

(declare-fun e!4074058 () (InoxSet Context!11914))

(assert (=> d!2119180 (= (derivationStepZipperUp!1727 lt!2439750 (h!72344 s!2326)) e!4074058)))

(declare-fun b!6745277 () Bool)

(assert (=> b!6745277 (= e!4074060 call!609941)))

(declare-fun b!6745278 () Bool)

(assert (=> b!6745278 (= e!4074058 ((_ map or) call!609941 (derivationStepZipperUp!1727 (Context!11915 (t!379719 (exprs!6457 lt!2439750))) (h!72344 s!2326))))))

(declare-fun b!6745279 () Bool)

(assert (=> b!6745279 (= e!4074058 e!4074060)))

(declare-fun c!1251471 () Bool)

(assert (=> b!6745279 (= c!1251471 ((_ is Cons!65894) (exprs!6457 lt!2439750)))))

(assert (= (and d!2119180 res!2758988) b!6745276))

(assert (= (and d!2119180 c!1251472) b!6745278))

(assert (= (and d!2119180 (not c!1251472)) b!6745279))

(assert (= (and b!6745279 c!1251471) b!6745277))

(assert (= (and b!6745279 (not c!1251471)) b!6745275))

(assert (= (or b!6745278 b!6745277) bm!609936))

(declare-fun m!7500848 () Bool)

(assert (=> bm!609936 m!7500848))

(declare-fun m!7500850 () Bool)

(assert (=> b!6745276 m!7500850))

(declare-fun m!7500852 () Bool)

(assert (=> b!6745278 m!7500852))

(assert (=> b!6744647 d!2119180))

(declare-fun d!2119182 () Bool)

(assert (=> d!2119182 (= (flatMap!2054 lt!2439733 lambda!379059) (choose!50295 lt!2439733 lambda!379059))))

(declare-fun bs!1793263 () Bool)

(assert (= bs!1793263 d!2119182))

(declare-fun m!7500854 () Bool)

(assert (=> bs!1793263 m!7500854))

(assert (=> b!6744647 d!2119182))

(declare-fun d!2119184 () Bool)

(assert (=> d!2119184 (= (flatMap!2054 lt!2439744 lambda!379059) (dynLambda!26294 lambda!379059 lt!2439750))))

(declare-fun lt!2439829 () Unit!159837)

(assert (=> d!2119184 (= lt!2439829 (choose!50296 lt!2439744 lt!2439750 lambda!379059))))

(assert (=> d!2119184 (= lt!2439744 (store ((as const (Array Context!11914 Bool)) false) lt!2439750 true))))

(assert (=> d!2119184 (= (lemmaFlatMapOnSingletonSet!1580 lt!2439744 lt!2439750 lambda!379059) lt!2439829)))

(declare-fun b_lambda!254063 () Bool)

(assert (=> (not b_lambda!254063) (not d!2119184)))

(declare-fun bs!1793264 () Bool)

(assert (= bs!1793264 d!2119184))

(assert (=> bs!1793264 m!7500434))

(declare-fun m!7500856 () Bool)

(assert (=> bs!1793264 m!7500856))

(declare-fun m!7500858 () Bool)

(assert (=> bs!1793264 m!7500858))

(assert (=> bs!1793264 m!7500432))

(assert (=> b!6744647 d!2119184))

(declare-fun bs!1793265 () Bool)

(declare-fun d!2119186 () Bool)

(assert (= bs!1793265 (and d!2119186 b!6744639)))

(declare-fun lambda!379115 () Int)

(assert (=> bs!1793265 (= lambda!379115 lambda!379059)))

(assert (=> d!2119186 true))

(assert (=> d!2119186 (= (derivationStepZipper!2517 lt!2439733 (h!72344 s!2326)) (flatMap!2054 lt!2439733 lambda!379115))))

(declare-fun bs!1793266 () Bool)

(assert (= bs!1793266 d!2119186))

(declare-fun m!7500860 () Bool)

(assert (=> bs!1793266 m!7500860))

(assert (=> b!6744647 d!2119186))

(declare-fun d!2119188 () Bool)

(assert (=> d!2119188 (= (flatMap!2054 lt!2439733 lambda!379059) (dynLambda!26294 lambda!379059 lt!2439735))))

(declare-fun lt!2439830 () Unit!159837)

(assert (=> d!2119188 (= lt!2439830 (choose!50296 lt!2439733 lt!2439735 lambda!379059))))

(assert (=> d!2119188 (= lt!2439733 (store ((as const (Array Context!11914 Bool)) false) lt!2439735 true))))

(assert (=> d!2119188 (= (lemmaFlatMapOnSingletonSet!1580 lt!2439733 lt!2439735 lambda!379059) lt!2439830)))

(declare-fun b_lambda!254065 () Bool)

(assert (=> (not b_lambda!254065) (not d!2119188)))

(declare-fun bs!1793267 () Bool)

(assert (= bs!1793267 d!2119188))

(assert (=> bs!1793267 m!7500430))

(declare-fun m!7500862 () Bool)

(assert (=> bs!1793267 m!7500862))

(declare-fun m!7500864 () Bool)

(assert (=> bs!1793267 m!7500864))

(assert (=> bs!1793267 m!7500436))

(assert (=> b!6744647 d!2119188))

(declare-fun b!6745282 () Bool)

(declare-fun e!4074063 () (InoxSet Context!11914))

(assert (=> b!6745282 (= e!4074063 ((as const (Array Context!11914 Bool)) false))))

(declare-fun bm!609937 () Bool)

(declare-fun call!609942 () (InoxSet Context!11914))

(assert (=> bm!609937 (= call!609942 (derivationStepZipperDown!1801 (h!72342 (exprs!6457 lt!2439735)) (Context!11915 (t!379719 (exprs!6457 lt!2439735))) (h!72344 s!2326)))))

(declare-fun b!6745283 () Bool)

(declare-fun e!4074062 () Bool)

(assert (=> b!6745283 (= e!4074062 (nullable!6560 (h!72342 (exprs!6457 lt!2439735))))))

(declare-fun d!2119190 () Bool)

(declare-fun c!1251476 () Bool)

(assert (=> d!2119190 (= c!1251476 e!4074062)))

(declare-fun res!2758989 () Bool)

(assert (=> d!2119190 (=> (not res!2758989) (not e!4074062))))

(assert (=> d!2119190 (= res!2758989 ((_ is Cons!65894) (exprs!6457 lt!2439735)))))

(declare-fun e!4074061 () (InoxSet Context!11914))

(assert (=> d!2119190 (= (derivationStepZipperUp!1727 lt!2439735 (h!72344 s!2326)) e!4074061)))

(declare-fun b!6745284 () Bool)

(assert (=> b!6745284 (= e!4074063 call!609942)))

(declare-fun b!6745285 () Bool)

(assert (=> b!6745285 (= e!4074061 ((_ map or) call!609942 (derivationStepZipperUp!1727 (Context!11915 (t!379719 (exprs!6457 lt!2439735))) (h!72344 s!2326))))))

(declare-fun b!6745286 () Bool)

(assert (=> b!6745286 (= e!4074061 e!4074063)))

(declare-fun c!1251475 () Bool)

(assert (=> b!6745286 (= c!1251475 ((_ is Cons!65894) (exprs!6457 lt!2439735)))))

(assert (= (and d!2119190 res!2758989) b!6745283))

(assert (= (and d!2119190 c!1251476) b!6745285))

(assert (= (and d!2119190 (not c!1251476)) b!6745286))

(assert (= (and b!6745286 c!1251475) b!6745284))

(assert (= (and b!6745286 (not c!1251475)) b!6745282))

(assert (= (or b!6745285 b!6745284) bm!609937))

(declare-fun m!7500866 () Bool)

(assert (=> bm!609937 m!7500866))

(declare-fun m!7500868 () Bool)

(assert (=> b!6745283 m!7500868))

(declare-fun m!7500870 () Bool)

(assert (=> b!6745285 m!7500870))

(assert (=> b!6744647 d!2119190))

(declare-fun d!2119192 () Bool)

(declare-fun choose!50297 (Int) Bool)

(assert (=> d!2119192 (= (Exists!3641 lambda!379057) (choose!50297 lambda!379057))))

(declare-fun bs!1793268 () Bool)

(assert (= bs!1793268 d!2119192))

(declare-fun m!7500872 () Bool)

(assert (=> bs!1793268 m!7500872))

(assert (=> b!6744656 d!2119192))

(declare-fun d!2119194 () Bool)

(declare-fun isEmpty!38246 (Option!16460) Bool)

(assert (=> d!2119194 (= (isDefined!13163 (findConcatSeparation!2874 (reg!16902 r!7292) r!7292 Nil!65896 s!2326 s!2326)) (not (isEmpty!38246 (findConcatSeparation!2874 (reg!16902 r!7292) r!7292 Nil!65896 s!2326 s!2326))))))

(declare-fun bs!1793269 () Bool)

(assert (= bs!1793269 d!2119194))

(assert (=> bs!1793269 m!7500396))

(declare-fun m!7500874 () Bool)

(assert (=> bs!1793269 m!7500874))

(assert (=> b!6744656 d!2119194))

(declare-fun bs!1793270 () Bool)

(declare-fun d!2119196 () Bool)

(assert (= bs!1793270 (and d!2119196 b!6744656)))

(declare-fun lambda!379120 () Int)

(assert (=> bs!1793270 (not (= lambda!379120 lambda!379058))))

(declare-fun bs!1793271 () Bool)

(assert (= bs!1793271 (and d!2119196 b!6744788)))

(assert (=> bs!1793271 (not (= lambda!379120 lambda!379084))))

(declare-fun bs!1793272 () Bool)

(assert (= bs!1793272 (and d!2119196 b!6744794)))

(assert (=> bs!1793272 (not (= lambda!379120 lambda!379083))))

(assert (=> bs!1793270 (= lambda!379120 lambda!379056)))

(assert (=> bs!1793270 (not (= lambda!379120 lambda!379057))))

(assert (=> d!2119196 true))

(assert (=> d!2119196 true))

(assert (=> d!2119196 true))

(declare-fun lambda!379121 () Int)

(assert (=> bs!1793270 (= lambda!379121 lambda!379058)))

(declare-fun bs!1793273 () Bool)

(assert (= bs!1793273 d!2119196))

(assert (=> bs!1793273 (not (= lambda!379121 lambda!379120))))

(assert (=> bs!1793271 (= (and (= (reg!16902 r!7292) (regOne!33658 lt!2439737)) (= r!7292 (regTwo!33658 lt!2439737))) (= lambda!379121 lambda!379084))))

(assert (=> bs!1793272 (not (= lambda!379121 lambda!379083))))

(assert (=> bs!1793270 (not (= lambda!379121 lambda!379056))))

(assert (=> bs!1793270 (not (= lambda!379121 lambda!379057))))

(assert (=> d!2119196 true))

(assert (=> d!2119196 true))

(assert (=> d!2119196 true))

(assert (=> d!2119196 (= (Exists!3641 lambda!379120) (Exists!3641 lambda!379121))))

(declare-fun lt!2439833 () Unit!159837)

(declare-fun choose!50298 (Regex!16573 Regex!16573 List!66020) Unit!159837)

(assert (=> d!2119196 (= lt!2439833 (choose!50298 (reg!16902 r!7292) r!7292 s!2326))))

(assert (=> d!2119196 (validRegex!8309 (reg!16902 r!7292))))

(assert (=> d!2119196 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2168 (reg!16902 r!7292) r!7292 s!2326) lt!2439833)))

(declare-fun m!7500876 () Bool)

(assert (=> bs!1793273 m!7500876))

(declare-fun m!7500878 () Bool)

(assert (=> bs!1793273 m!7500878))

(declare-fun m!7500880 () Bool)

(assert (=> bs!1793273 m!7500880))

(assert (=> bs!1793273 m!7500404))

(assert (=> b!6744656 d!2119196))

(declare-fun bs!1793274 () Bool)

(declare-fun d!2119198 () Bool)

(assert (= bs!1793274 (and d!2119198 b!6744656)))

(declare-fun lambda!379126 () Int)

(assert (=> bs!1793274 (not (= lambda!379126 lambda!379058))))

(declare-fun bs!1793275 () Bool)

(assert (= bs!1793275 (and d!2119198 d!2119196)))

(assert (=> bs!1793275 (= (= (Star!16573 (reg!16902 r!7292)) r!7292) (= lambda!379126 lambda!379120))))

(declare-fun bs!1793276 () Bool)

(assert (= bs!1793276 (and d!2119198 b!6744794)))

(assert (=> bs!1793276 (not (= lambda!379126 lambda!379083))))

(assert (=> bs!1793274 (= (= (Star!16573 (reg!16902 r!7292)) r!7292) (= lambda!379126 lambda!379056))))

(assert (=> bs!1793274 (not (= lambda!379126 lambda!379057))))

(assert (=> bs!1793275 (not (= lambda!379126 lambda!379121))))

(declare-fun bs!1793277 () Bool)

(assert (= bs!1793277 (and d!2119198 b!6744788)))

(assert (=> bs!1793277 (not (= lambda!379126 lambda!379084))))

(assert (=> d!2119198 true))

(assert (=> d!2119198 true))

(declare-fun lambda!379127 () Int)

(assert (=> bs!1793274 (not (= lambda!379127 lambda!379058))))

(declare-fun bs!1793278 () Bool)

(assert (= bs!1793278 d!2119198))

(assert (=> bs!1793278 (not (= lambda!379127 lambda!379126))))

(assert (=> bs!1793275 (not (= lambda!379127 lambda!379120))))

(assert (=> bs!1793276 (= (and (= (reg!16902 r!7292) (reg!16902 lt!2439737)) (= (Star!16573 (reg!16902 r!7292)) lt!2439737)) (= lambda!379127 lambda!379083))))

(assert (=> bs!1793274 (not (= lambda!379127 lambda!379056))))

(assert (=> bs!1793274 (= (= (Star!16573 (reg!16902 r!7292)) r!7292) (= lambda!379127 lambda!379057))))

(assert (=> bs!1793275 (not (= lambda!379127 lambda!379121))))

(assert (=> bs!1793277 (not (= lambda!379127 lambda!379084))))

(assert (=> d!2119198 true))

(assert (=> d!2119198 true))

(assert (=> d!2119198 (= (Exists!3641 lambda!379126) (Exists!3641 lambda!379127))))

(declare-fun lt!2439836 () Unit!159837)

(declare-fun choose!50299 (Regex!16573 List!66020) Unit!159837)

(assert (=> d!2119198 (= lt!2439836 (choose!50299 (reg!16902 r!7292) s!2326))))

(assert (=> d!2119198 (validRegex!8309 (reg!16902 r!7292))))

(assert (=> d!2119198 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!732 (reg!16902 r!7292) s!2326) lt!2439836)))

(declare-fun m!7500882 () Bool)

(assert (=> bs!1793278 m!7500882))

(declare-fun m!7500884 () Bool)

(assert (=> bs!1793278 m!7500884))

(declare-fun m!7500886 () Bool)

(assert (=> bs!1793278 m!7500886))

(assert (=> bs!1793278 m!7500404))

(assert (=> b!6744656 d!2119198))

(declare-fun d!2119200 () Bool)

(assert (=> d!2119200 (= (Exists!3641 lambda!379056) (choose!50297 lambda!379056))))

(declare-fun bs!1793279 () Bool)

(assert (= bs!1793279 d!2119200))

(declare-fun m!7500888 () Bool)

(assert (=> bs!1793279 m!7500888))

(assert (=> b!6744656 d!2119200))

(declare-fun d!2119202 () Bool)

(assert (=> d!2119202 (= (isEmpty!38241 s!2326) ((_ is Nil!65896) s!2326))))

(assert (=> b!6744656 d!2119202))

(declare-fun d!2119204 () Bool)

(assert (=> d!2119204 (= (Exists!3641 lambda!379058) (choose!50297 lambda!379058))))

(declare-fun bs!1793280 () Bool)

(assert (= bs!1793280 d!2119204))

(declare-fun m!7500890 () Bool)

(assert (=> bs!1793280 m!7500890))

(assert (=> b!6744656 d!2119204))

(declare-fun b!6745323 () Bool)

(declare-fun e!4074082 () Bool)

(declare-fun lt!2439845 () Option!16460)

(assert (=> b!6745323 (= e!4074082 (not (isDefined!13163 lt!2439845)))))

(declare-fun b!6745324 () Bool)

(declare-fun lt!2439844 () Unit!159837)

(declare-fun lt!2439843 () Unit!159837)

(assert (=> b!6745324 (= lt!2439844 lt!2439843)))

(declare-fun ++!14729 (List!66020 List!66020) List!66020)

(assert (=> b!6745324 (= (++!14729 (++!14729 Nil!65896 (Cons!65896 (h!72344 s!2326) Nil!65896)) (t!379721 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2702 (List!66020 C!33416 List!66020 List!66020) Unit!159837)

(assert (=> b!6745324 (= lt!2439843 (lemmaMoveElementToOtherListKeepsConcatEq!2702 Nil!65896 (h!72344 s!2326) (t!379721 s!2326) s!2326))))

(declare-fun e!4074084 () Option!16460)

(assert (=> b!6745324 (= e!4074084 (findConcatSeparation!2874 (reg!16902 r!7292) r!7292 (++!14729 Nil!65896 (Cons!65896 (h!72344 s!2326) Nil!65896)) (t!379721 s!2326) s!2326))))

(declare-fun b!6745325 () Bool)

(declare-fun e!4074086 () Bool)

(assert (=> b!6745325 (= e!4074086 (matchR!8756 r!7292 s!2326))))

(declare-fun b!6745326 () Bool)

(declare-fun e!4074083 () Bool)

(declare-fun get!22931 (Option!16460) tuple2!67096)

(assert (=> b!6745326 (= e!4074083 (= (++!14729 (_1!36851 (get!22931 lt!2439845)) (_2!36851 (get!22931 lt!2439845))) s!2326))))

(declare-fun b!6745327 () Bool)

(declare-fun e!4074085 () Option!16460)

(assert (=> b!6745327 (= e!4074085 (Some!16459 (tuple2!67097 Nil!65896 s!2326)))))

(declare-fun b!6745328 () Bool)

(declare-fun res!2759018 () Bool)

(assert (=> b!6745328 (=> (not res!2759018) (not e!4074083))))

(assert (=> b!6745328 (= res!2759018 (matchR!8756 r!7292 (_2!36851 (get!22931 lt!2439845))))))

(declare-fun b!6745329 () Bool)

(assert (=> b!6745329 (= e!4074084 None!16459)))

(declare-fun d!2119206 () Bool)

(assert (=> d!2119206 e!4074082))

(declare-fun res!2759021 () Bool)

(assert (=> d!2119206 (=> res!2759021 e!4074082)))

(assert (=> d!2119206 (= res!2759021 e!4074083)))

(declare-fun res!2759019 () Bool)

(assert (=> d!2119206 (=> (not res!2759019) (not e!4074083))))

(assert (=> d!2119206 (= res!2759019 (isDefined!13163 lt!2439845))))

(assert (=> d!2119206 (= lt!2439845 e!4074085)))

(declare-fun c!1251482 () Bool)

(assert (=> d!2119206 (= c!1251482 e!4074086)))

(declare-fun res!2759022 () Bool)

(assert (=> d!2119206 (=> (not res!2759022) (not e!4074086))))

(assert (=> d!2119206 (= res!2759022 (matchR!8756 (reg!16902 r!7292) Nil!65896))))

(assert (=> d!2119206 (validRegex!8309 (reg!16902 r!7292))))

(assert (=> d!2119206 (= (findConcatSeparation!2874 (reg!16902 r!7292) r!7292 Nil!65896 s!2326 s!2326) lt!2439845)))

(declare-fun b!6745330 () Bool)

(assert (=> b!6745330 (= e!4074085 e!4074084)))

(declare-fun c!1251481 () Bool)

(assert (=> b!6745330 (= c!1251481 ((_ is Nil!65896) s!2326))))

(declare-fun b!6745331 () Bool)

(declare-fun res!2759020 () Bool)

(assert (=> b!6745331 (=> (not res!2759020) (not e!4074083))))

(assert (=> b!6745331 (= res!2759020 (matchR!8756 (reg!16902 r!7292) (_1!36851 (get!22931 lt!2439845))))))

(assert (= (and d!2119206 res!2759022) b!6745325))

(assert (= (and d!2119206 c!1251482) b!6745327))

(assert (= (and d!2119206 (not c!1251482)) b!6745330))

(assert (= (and b!6745330 c!1251481) b!6745329))

(assert (= (and b!6745330 (not c!1251481)) b!6745324))

(assert (= (and d!2119206 res!2759019) b!6745331))

(assert (= (and b!6745331 res!2759020) b!6745328))

(assert (= (and b!6745328 res!2759018) b!6745326))

(assert (= (and d!2119206 (not res!2759021)) b!6745323))

(declare-fun m!7500892 () Bool)

(assert (=> b!6745328 m!7500892))

(declare-fun m!7500894 () Bool)

(assert (=> b!6745328 m!7500894))

(assert (=> b!6745325 m!7500464))

(assert (=> b!6745331 m!7500892))

(declare-fun m!7500896 () Bool)

(assert (=> b!6745331 m!7500896))

(declare-fun m!7500898 () Bool)

(assert (=> b!6745324 m!7500898))

(assert (=> b!6745324 m!7500898))

(declare-fun m!7500900 () Bool)

(assert (=> b!6745324 m!7500900))

(declare-fun m!7500902 () Bool)

(assert (=> b!6745324 m!7500902))

(assert (=> b!6745324 m!7500898))

(declare-fun m!7500904 () Bool)

(assert (=> b!6745324 m!7500904))

(declare-fun m!7500906 () Bool)

(assert (=> b!6745323 m!7500906))

(assert (=> b!6745326 m!7500892))

(declare-fun m!7500908 () Bool)

(assert (=> b!6745326 m!7500908))

(assert (=> d!2119206 m!7500906))

(declare-fun m!7500910 () Bool)

(assert (=> d!2119206 m!7500910))

(assert (=> d!2119206 m!7500404))

(assert (=> b!6744656 d!2119206))

(declare-fun bs!1793281 () Bool)

(declare-fun d!2119208 () Bool)

(assert (= bs!1793281 (and d!2119208 d!2119198)))

(declare-fun lambda!379130 () Int)

(assert (=> bs!1793281 (not (= lambda!379130 lambda!379127))))

(declare-fun bs!1793282 () Bool)

(assert (= bs!1793282 (and d!2119208 b!6744656)))

(assert (=> bs!1793282 (not (= lambda!379130 lambda!379058))))

(assert (=> bs!1793281 (= (= r!7292 (Star!16573 (reg!16902 r!7292))) (= lambda!379130 lambda!379126))))

(declare-fun bs!1793283 () Bool)

(assert (= bs!1793283 (and d!2119208 d!2119196)))

(assert (=> bs!1793283 (= lambda!379130 lambda!379120)))

(declare-fun bs!1793284 () Bool)

(assert (= bs!1793284 (and d!2119208 b!6744794)))

(assert (=> bs!1793284 (not (= lambda!379130 lambda!379083))))

(assert (=> bs!1793282 (= lambda!379130 lambda!379056)))

(assert (=> bs!1793282 (not (= lambda!379130 lambda!379057))))

(assert (=> bs!1793283 (not (= lambda!379130 lambda!379121))))

(declare-fun bs!1793285 () Bool)

(assert (= bs!1793285 (and d!2119208 b!6744788)))

(assert (=> bs!1793285 (not (= lambda!379130 lambda!379084))))

(assert (=> d!2119208 true))

(assert (=> d!2119208 true))

(assert (=> d!2119208 true))

(assert (=> d!2119208 (= (isDefined!13163 (findConcatSeparation!2874 (reg!16902 r!7292) r!7292 Nil!65896 s!2326 s!2326)) (Exists!3641 lambda!379130))))

(declare-fun lt!2439848 () Unit!159837)

(declare-fun choose!50301 (Regex!16573 Regex!16573 List!66020) Unit!159837)

(assert (=> d!2119208 (= lt!2439848 (choose!50301 (reg!16902 r!7292) r!7292 s!2326))))

(assert (=> d!2119208 (validRegex!8309 (reg!16902 r!7292))))

(assert (=> d!2119208 (= (lemmaFindConcatSeparationEquivalentToExists!2638 (reg!16902 r!7292) r!7292 s!2326) lt!2439848)))

(declare-fun bs!1793286 () Bool)

(assert (= bs!1793286 d!2119208))

(assert (=> bs!1793286 m!7500396))

(assert (=> bs!1793286 m!7500404))

(declare-fun m!7500912 () Bool)

(assert (=> bs!1793286 m!7500912))

(assert (=> bs!1793286 m!7500396))

(assert (=> bs!1793286 m!7500400))

(declare-fun m!7500914 () Bool)

(assert (=> bs!1793286 m!7500914))

(assert (=> b!6744656 d!2119208))

(declare-fun d!2119210 () Bool)

(declare-fun lt!2439849 () Regex!16573)

(assert (=> d!2119210 (validRegex!8309 lt!2439849)))

(assert (=> d!2119210 (= lt!2439849 (generalisedUnion!2417 (unfocusZipperList!1994 (Cons!65895 lt!2439750 Nil!65895))))))

(assert (=> d!2119210 (= (unfocusZipper!2315 (Cons!65895 lt!2439750 Nil!65895)) lt!2439849)))

(declare-fun bs!1793287 () Bool)

(assert (= bs!1793287 d!2119210))

(declare-fun m!7500916 () Bool)

(assert (=> bs!1793287 m!7500916))

(declare-fun m!7500918 () Bool)

(assert (=> bs!1793287 m!7500918))

(assert (=> bs!1793287 m!7500918))

(declare-fun m!7500920 () Bool)

(assert (=> bs!1793287 m!7500920))

(assert (=> b!6744646 d!2119210))

(declare-fun d!2119212 () Bool)

(declare-fun c!1251485 () Bool)

(assert (=> d!2119212 (= c!1251485 (isEmpty!38241 s!2326))))

(declare-fun e!4074091 () Bool)

(assert (=> d!2119212 (= (matchZipper!2559 lt!2439734 s!2326) e!4074091)))

(declare-fun b!6745340 () Bool)

(declare-fun nullableZipper!2288 ((InoxSet Context!11914)) Bool)

(assert (=> b!6745340 (= e!4074091 (nullableZipper!2288 lt!2439734))))

(declare-fun b!6745341 () Bool)

(assert (=> b!6745341 (= e!4074091 (matchZipper!2559 (derivationStepZipper!2517 lt!2439734 (head!13573 s!2326)) (tail!12658 s!2326)))))

(assert (= (and d!2119212 c!1251485) b!6745340))

(assert (= (and d!2119212 (not c!1251485)) b!6745341))

(assert (=> d!2119212 m!7500386))

(declare-fun m!7500922 () Bool)

(assert (=> b!6745340 m!7500922))

(assert (=> b!6745341 m!7500624))

(assert (=> b!6745341 m!7500624))

(declare-fun m!7500924 () Bool)

(assert (=> b!6745341 m!7500924))

(assert (=> b!6745341 m!7500628))

(assert (=> b!6745341 m!7500924))

(assert (=> b!6745341 m!7500628))

(declare-fun m!7500926 () Bool)

(assert (=> b!6745341 m!7500926))

(assert (=> b!6744635 d!2119212))

(declare-fun d!2119214 () Bool)

(declare-fun c!1251486 () Bool)

(assert (=> d!2119214 (= c!1251486 (isEmpty!38241 (t!379721 s!2326)))))

(declare-fun e!4074092 () Bool)

(assert (=> d!2119214 (= (matchZipper!2559 (derivationStepZipper!2517 lt!2439734 (h!72344 s!2326)) (t!379721 s!2326)) e!4074092)))

(declare-fun b!6745342 () Bool)

(assert (=> b!6745342 (= e!4074092 (nullableZipper!2288 (derivationStepZipper!2517 lt!2439734 (h!72344 s!2326))))))

(declare-fun b!6745343 () Bool)

(assert (=> b!6745343 (= e!4074092 (matchZipper!2559 (derivationStepZipper!2517 (derivationStepZipper!2517 lt!2439734 (h!72344 s!2326)) (head!13573 (t!379721 s!2326))) (tail!12658 (t!379721 s!2326))))))

(assert (= (and d!2119214 c!1251486) b!6745342))

(assert (= (and d!2119214 (not c!1251486)) b!6745343))

(declare-fun m!7500928 () Bool)

(assert (=> d!2119214 m!7500928))

(assert (=> b!6745342 m!7500380))

(declare-fun m!7500930 () Bool)

(assert (=> b!6745342 m!7500930))

(declare-fun m!7500932 () Bool)

(assert (=> b!6745343 m!7500932))

(assert (=> b!6745343 m!7500380))

(assert (=> b!6745343 m!7500932))

(declare-fun m!7500934 () Bool)

(assert (=> b!6745343 m!7500934))

(declare-fun m!7500936 () Bool)

(assert (=> b!6745343 m!7500936))

(assert (=> b!6745343 m!7500934))

(assert (=> b!6745343 m!7500936))

(declare-fun m!7500938 () Bool)

(assert (=> b!6745343 m!7500938))

(assert (=> b!6744635 d!2119214))

(declare-fun bs!1793288 () Bool)

(declare-fun d!2119216 () Bool)

(assert (= bs!1793288 (and d!2119216 b!6744639)))

(declare-fun lambda!379131 () Int)

(assert (=> bs!1793288 (= lambda!379131 lambda!379059)))

(declare-fun bs!1793289 () Bool)

(assert (= bs!1793289 (and d!2119216 d!2119186)))

(assert (=> bs!1793289 (= lambda!379131 lambda!379115)))

(assert (=> d!2119216 true))

(assert (=> d!2119216 (= (derivationStepZipper!2517 lt!2439734 (h!72344 s!2326)) (flatMap!2054 lt!2439734 lambda!379131))))

(declare-fun bs!1793290 () Bool)

(assert (= bs!1793290 d!2119216))

(declare-fun m!7500940 () Bool)

(assert (=> bs!1793290 m!7500940))

(assert (=> b!6744635 d!2119216))

(declare-fun b!6745344 () Bool)

(declare-fun e!4074095 () (InoxSet Context!11914))

(assert (=> b!6745344 (= e!4074095 (store ((as const (Array Context!11914 Bool)) false) (Context!11915 Nil!65894) true))))

(declare-fun bm!609938 () Bool)

(declare-fun call!609948 () List!66018)

(declare-fun c!1251489 () Bool)

(declare-fun c!1251491 () Bool)

(assert (=> bm!609938 (= call!609948 ($colon$colon!2390 (exprs!6457 (Context!11915 Nil!65894)) (ite (or c!1251489 c!1251491) (regTwo!33658 r!7292) r!7292)))))

(declare-fun bm!609939 () Bool)

(declare-fun c!1251487 () Bool)

(declare-fun call!609945 () (InoxSet Context!11914))

(assert (=> bm!609939 (= call!609945 (derivationStepZipperDown!1801 (ite c!1251487 (regTwo!33659 r!7292) (regOne!33658 r!7292)) (ite c!1251487 (Context!11915 Nil!65894) (Context!11915 call!609948)) (h!72344 s!2326)))))

(declare-fun b!6745345 () Bool)

(declare-fun e!4074093 () (InoxSet Context!11914))

(declare-fun call!609943 () (InoxSet Context!11914))

(assert (=> b!6745345 (= e!4074093 ((_ map or) call!609943 call!609945))))

(declare-fun d!2119218 () Bool)

(declare-fun c!1251490 () Bool)

(assert (=> d!2119218 (= c!1251490 (and ((_ is ElementMatch!16573) r!7292) (= (c!1251299 r!7292) (h!72344 s!2326))))))

(assert (=> d!2119218 (= (derivationStepZipperDown!1801 r!7292 (Context!11915 Nil!65894) (h!72344 s!2326)) e!4074095)))

(declare-fun b!6745346 () Bool)

(declare-fun e!4074098 () (InoxSet Context!11914))

(declare-fun call!609947 () (InoxSet Context!11914))

(assert (=> b!6745346 (= e!4074098 call!609947)))

(declare-fun bm!609940 () Bool)

(declare-fun call!609944 () (InoxSet Context!11914))

(assert (=> bm!609940 (= call!609944 call!609943)))

(declare-fun b!6745347 () Bool)

(declare-fun e!4074096 () (InoxSet Context!11914))

(assert (=> b!6745347 (= e!4074096 e!4074098)))

(assert (=> b!6745347 (= c!1251491 ((_ is Concat!25418) r!7292))))

(declare-fun b!6745348 () Bool)

(declare-fun e!4074097 () Bool)

(assert (=> b!6745348 (= e!4074097 (nullable!6560 (regOne!33658 r!7292)))))

(declare-fun b!6745349 () Bool)

(declare-fun e!4074094 () (InoxSet Context!11914))

(assert (=> b!6745349 (= e!4074094 ((as const (Array Context!11914 Bool)) false))))

(declare-fun bm!609941 () Bool)

(assert (=> bm!609941 (= call!609947 call!609944)))

(declare-fun b!6745350 () Bool)

(assert (=> b!6745350 (= e!4074094 call!609947)))

(declare-fun b!6745351 () Bool)

(assert (=> b!6745351 (= e!4074095 e!4074093)))

(assert (=> b!6745351 (= c!1251487 ((_ is Union!16573) r!7292))))

(declare-fun b!6745352 () Bool)

(declare-fun c!1251488 () Bool)

(assert (=> b!6745352 (= c!1251488 ((_ is Star!16573) r!7292))))

(assert (=> b!6745352 (= e!4074098 e!4074094)))

(declare-fun b!6745353 () Bool)

(assert (=> b!6745353 (= e!4074096 ((_ map or) call!609945 call!609944))))

(declare-fun bm!609942 () Bool)

(declare-fun call!609946 () List!66018)

(assert (=> bm!609942 (= call!609946 call!609948)))

(declare-fun bm!609943 () Bool)

(assert (=> bm!609943 (= call!609943 (derivationStepZipperDown!1801 (ite c!1251487 (regOne!33659 r!7292) (ite c!1251489 (regTwo!33658 r!7292) (ite c!1251491 (regOne!33658 r!7292) (reg!16902 r!7292)))) (ite (or c!1251487 c!1251489) (Context!11915 Nil!65894) (Context!11915 call!609946)) (h!72344 s!2326)))))

(declare-fun b!6745354 () Bool)

(assert (=> b!6745354 (= c!1251489 e!4074097)))

(declare-fun res!2759027 () Bool)

(assert (=> b!6745354 (=> (not res!2759027) (not e!4074097))))

(assert (=> b!6745354 (= res!2759027 ((_ is Concat!25418) r!7292))))

(assert (=> b!6745354 (= e!4074093 e!4074096)))

(assert (= (and d!2119218 c!1251490) b!6745344))

(assert (= (and d!2119218 (not c!1251490)) b!6745351))

(assert (= (and b!6745351 c!1251487) b!6745345))

(assert (= (and b!6745351 (not c!1251487)) b!6745354))

(assert (= (and b!6745354 res!2759027) b!6745348))

(assert (= (and b!6745354 c!1251489) b!6745353))

(assert (= (and b!6745354 (not c!1251489)) b!6745347))

(assert (= (and b!6745347 c!1251491) b!6745346))

(assert (= (and b!6745347 (not c!1251491)) b!6745352))

(assert (= (and b!6745352 c!1251488) b!6745350))

(assert (= (and b!6745352 (not c!1251488)) b!6745349))

(assert (= (or b!6745346 b!6745350) bm!609942))

(assert (= (or b!6745346 b!6745350) bm!609941))

(assert (= (or b!6745353 bm!609942) bm!609938))

(assert (= (or b!6745353 bm!609941) bm!609940))

(assert (= (or b!6745345 b!6745353) bm!609939))

(assert (= (or b!6745345 bm!609940) bm!609943))

(declare-fun m!7500942 () Bool)

(assert (=> bm!609939 m!7500942))

(declare-fun m!7500944 () Bool)

(assert (=> bm!609943 m!7500944))

(declare-fun m!7500946 () Bool)

(assert (=> b!6745348 m!7500946))

(declare-fun m!7500948 () Bool)

(assert (=> bm!609938 m!7500948))

(declare-fun m!7500950 () Bool)

(assert (=> b!6745344 m!7500950))

(assert (=> b!6744654 d!2119218))

(declare-fun b!6745355 () Bool)

(declare-fun e!4074101 () (InoxSet Context!11914))

(assert (=> b!6745355 (= e!4074101 ((as const (Array Context!11914 Bool)) false))))

(declare-fun bm!609944 () Bool)

(declare-fun call!609949 () (InoxSet Context!11914))

(assert (=> bm!609944 (= call!609949 (derivationStepZipperDown!1801 (h!72342 (exprs!6457 (Context!11915 (Cons!65894 r!7292 Nil!65894)))) (Context!11915 (t!379719 (exprs!6457 (Context!11915 (Cons!65894 r!7292 Nil!65894))))) (h!72344 s!2326)))))

(declare-fun b!6745356 () Bool)

(declare-fun e!4074100 () Bool)

(assert (=> b!6745356 (= e!4074100 (nullable!6560 (h!72342 (exprs!6457 (Context!11915 (Cons!65894 r!7292 Nil!65894))))))))

(declare-fun d!2119220 () Bool)

(declare-fun c!1251493 () Bool)

(assert (=> d!2119220 (= c!1251493 e!4074100)))

(declare-fun res!2759028 () Bool)

(assert (=> d!2119220 (=> (not res!2759028) (not e!4074100))))

(assert (=> d!2119220 (= res!2759028 ((_ is Cons!65894) (exprs!6457 (Context!11915 (Cons!65894 r!7292 Nil!65894)))))))

(declare-fun e!4074099 () (InoxSet Context!11914))

(assert (=> d!2119220 (= (derivationStepZipperUp!1727 (Context!11915 (Cons!65894 r!7292 Nil!65894)) (h!72344 s!2326)) e!4074099)))

(declare-fun b!6745357 () Bool)

(assert (=> b!6745357 (= e!4074101 call!609949)))

(declare-fun b!6745358 () Bool)

(assert (=> b!6745358 (= e!4074099 ((_ map or) call!609949 (derivationStepZipperUp!1727 (Context!11915 (t!379719 (exprs!6457 (Context!11915 (Cons!65894 r!7292 Nil!65894))))) (h!72344 s!2326))))))

(declare-fun b!6745359 () Bool)

(assert (=> b!6745359 (= e!4074099 e!4074101)))

(declare-fun c!1251492 () Bool)

(assert (=> b!6745359 (= c!1251492 ((_ is Cons!65894) (exprs!6457 (Context!11915 (Cons!65894 r!7292 Nil!65894)))))))

(assert (= (and d!2119220 res!2759028) b!6745356))

(assert (= (and d!2119220 c!1251493) b!6745358))

(assert (= (and d!2119220 (not c!1251493)) b!6745359))

(assert (= (and b!6745359 c!1251492) b!6745357))

(assert (= (and b!6745359 (not c!1251492)) b!6745355))

(assert (= (or b!6745358 b!6745357) bm!609944))

(declare-fun m!7500952 () Bool)

(assert (=> bm!609944 m!7500952))

(declare-fun m!7500954 () Bool)

(assert (=> b!6745356 m!7500954))

(declare-fun m!7500956 () Bool)

(assert (=> b!6745358 m!7500956))

(assert (=> b!6744654 d!2119220))

(declare-fun bs!1793291 () Bool)

(declare-fun d!2119222 () Bool)

(assert (= bs!1793291 (and d!2119222 b!6744639)))

(declare-fun lambda!379132 () Int)

(assert (=> bs!1793291 (= lambda!379132 lambda!379059)))

(declare-fun bs!1793292 () Bool)

(assert (= bs!1793292 (and d!2119222 d!2119186)))

(assert (=> bs!1793292 (= lambda!379132 lambda!379115)))

(declare-fun bs!1793293 () Bool)

(assert (= bs!1793293 (and d!2119222 d!2119216)))

(assert (=> bs!1793293 (= lambda!379132 lambda!379131)))

(assert (=> d!2119222 true))

(assert (=> d!2119222 (= (derivationStepZipper!2517 z!1189 (h!72344 s!2326)) (flatMap!2054 z!1189 lambda!379132))))

(declare-fun bs!1793294 () Bool)

(assert (= bs!1793294 d!2119222))

(declare-fun m!7500958 () Bool)

(assert (=> bs!1793294 m!7500958))

(assert (=> b!6744654 d!2119222))

(declare-fun bs!1793295 () Bool)

(declare-fun d!2119224 () Bool)

(assert (= bs!1793295 (and d!2119224 d!2119112)))

(declare-fun lambda!379135 () Int)

(assert (=> bs!1793295 (= lambda!379135 lambda!379097)))

(declare-fun bs!1793296 () Bool)

(assert (= bs!1793296 (and d!2119224 d!2119114)))

(assert (=> bs!1793296 (= lambda!379135 lambda!379106)))

(declare-fun b!6745380 () Bool)

(declare-fun e!4074118 () Bool)

(declare-fun lt!2439852 () Regex!16573)

(assert (=> b!6745380 (= e!4074118 (= lt!2439852 (head!13574 (unfocusZipperList!1994 zl!343))))))

(declare-fun b!6745381 () Bool)

(declare-fun e!4074117 () Bool)

(declare-fun e!4074116 () Bool)

(assert (=> b!6745381 (= e!4074117 e!4074116)))

(declare-fun c!1251505 () Bool)

(assert (=> b!6745381 (= c!1251505 (isEmpty!38245 (unfocusZipperList!1994 zl!343)))))

(declare-fun b!6745382 () Bool)

(declare-fun isEmptyLang!1947 (Regex!16573) Bool)

(assert (=> b!6745382 (= e!4074116 (isEmptyLang!1947 lt!2439852))))

(declare-fun b!6745383 () Bool)

(declare-fun e!4074119 () Regex!16573)

(assert (=> b!6745383 (= e!4074119 EmptyLang!16573)))

(declare-fun b!6745384 () Bool)

(declare-fun e!4074115 () Regex!16573)

(assert (=> b!6745384 (= e!4074115 e!4074119)))

(declare-fun c!1251504 () Bool)

(assert (=> b!6745384 (= c!1251504 ((_ is Cons!65894) (unfocusZipperList!1994 zl!343)))))

(assert (=> d!2119224 e!4074117))

(declare-fun res!2759034 () Bool)

(assert (=> d!2119224 (=> (not res!2759034) (not e!4074117))))

(assert (=> d!2119224 (= res!2759034 (validRegex!8309 lt!2439852))))

(assert (=> d!2119224 (= lt!2439852 e!4074115)))

(declare-fun c!1251502 () Bool)

(declare-fun e!4074114 () Bool)

(assert (=> d!2119224 (= c!1251502 e!4074114)))

(declare-fun res!2759033 () Bool)

(assert (=> d!2119224 (=> (not res!2759033) (not e!4074114))))

(assert (=> d!2119224 (= res!2759033 ((_ is Cons!65894) (unfocusZipperList!1994 zl!343)))))

(assert (=> d!2119224 (forall!15773 (unfocusZipperList!1994 zl!343) lambda!379135)))

(assert (=> d!2119224 (= (generalisedUnion!2417 (unfocusZipperList!1994 zl!343)) lt!2439852)))

(declare-fun b!6745385 () Bool)

(assert (=> b!6745385 (= e!4074115 (h!72342 (unfocusZipperList!1994 zl!343)))))

(declare-fun b!6745386 () Bool)

(assert (=> b!6745386 (= e!4074114 (isEmpty!38245 (t!379719 (unfocusZipperList!1994 zl!343))))))

(declare-fun b!6745387 () Bool)

(assert (=> b!6745387 (= e!4074116 e!4074118)))

(declare-fun c!1251503 () Bool)

(assert (=> b!6745387 (= c!1251503 (isEmpty!38245 (tail!12659 (unfocusZipperList!1994 zl!343))))))

(declare-fun b!6745388 () Bool)

(declare-fun isUnion!1377 (Regex!16573) Bool)

(assert (=> b!6745388 (= e!4074118 (isUnion!1377 lt!2439852))))

(declare-fun b!6745389 () Bool)

(assert (=> b!6745389 (= e!4074119 (Union!16573 (h!72342 (unfocusZipperList!1994 zl!343)) (generalisedUnion!2417 (t!379719 (unfocusZipperList!1994 zl!343)))))))

(assert (= (and d!2119224 res!2759033) b!6745386))

(assert (= (and d!2119224 c!1251502) b!6745385))

(assert (= (and d!2119224 (not c!1251502)) b!6745384))

(assert (= (and b!6745384 c!1251504) b!6745389))

(assert (= (and b!6745384 (not c!1251504)) b!6745383))

(assert (= (and d!2119224 res!2759034) b!6745381))

(assert (= (and b!6745381 c!1251505) b!6745382))

(assert (= (and b!6745381 (not c!1251505)) b!6745387))

(assert (= (and b!6745387 c!1251503) b!6745380))

(assert (= (and b!6745387 (not c!1251503)) b!6745388))

(assert (=> b!6745387 m!7500468))

(declare-fun m!7500960 () Bool)

(assert (=> b!6745387 m!7500960))

(assert (=> b!6745387 m!7500960))

(declare-fun m!7500962 () Bool)

(assert (=> b!6745387 m!7500962))

(declare-fun m!7500964 () Bool)

(assert (=> d!2119224 m!7500964))

(assert (=> d!2119224 m!7500468))

(declare-fun m!7500966 () Bool)

(assert (=> d!2119224 m!7500966))

(assert (=> b!6745381 m!7500468))

(declare-fun m!7500968 () Bool)

(assert (=> b!6745381 m!7500968))

(declare-fun m!7500970 () Bool)

(assert (=> b!6745386 m!7500970))

(declare-fun m!7500972 () Bool)

(assert (=> b!6745389 m!7500972))

(declare-fun m!7500974 () Bool)

(assert (=> b!6745382 m!7500974))

(declare-fun m!7500976 () Bool)

(assert (=> b!6745388 m!7500976))

(assert (=> b!6745380 m!7500468))

(declare-fun m!7500978 () Bool)

(assert (=> b!6745380 m!7500978))

(assert (=> b!6744634 d!2119224))

(declare-fun bs!1793297 () Bool)

(declare-fun d!2119226 () Bool)

(assert (= bs!1793297 (and d!2119226 d!2119112)))

(declare-fun lambda!379138 () Int)

(assert (=> bs!1793297 (= lambda!379138 lambda!379097)))

(declare-fun bs!1793298 () Bool)

(assert (= bs!1793298 (and d!2119226 d!2119114)))

(assert (=> bs!1793298 (= lambda!379138 lambda!379106)))

(declare-fun bs!1793299 () Bool)

(assert (= bs!1793299 (and d!2119226 d!2119224)))

(assert (=> bs!1793299 (= lambda!379138 lambda!379135)))

(declare-fun lt!2439855 () List!66018)

(assert (=> d!2119226 (forall!15773 lt!2439855 lambda!379138)))

(declare-fun e!4074122 () List!66018)

(assert (=> d!2119226 (= lt!2439855 e!4074122)))

(declare-fun c!1251508 () Bool)

(assert (=> d!2119226 (= c!1251508 ((_ is Cons!65895) zl!343))))

(assert (=> d!2119226 (= (unfocusZipperList!1994 zl!343) lt!2439855)))

(declare-fun b!6745394 () Bool)

(assert (=> b!6745394 (= e!4074122 (Cons!65894 (generalisedConcat!2170 (exprs!6457 (h!72343 zl!343))) (unfocusZipperList!1994 (t!379720 zl!343))))))

(declare-fun b!6745395 () Bool)

(assert (=> b!6745395 (= e!4074122 Nil!65894)))

(assert (= (and d!2119226 c!1251508) b!6745394))

(assert (= (and d!2119226 (not c!1251508)) b!6745395))

(declare-fun m!7500980 () Bool)

(assert (=> d!2119226 m!7500980))

(assert (=> b!6745394 m!7500446))

(declare-fun m!7500982 () Bool)

(assert (=> b!6745394 m!7500982))

(assert (=> b!6744634 d!2119226))

(declare-fun bs!1793300 () Bool)

(declare-fun d!2119228 () Bool)

(assert (= bs!1793300 (and d!2119228 d!2119112)))

(declare-fun lambda!379139 () Int)

(assert (=> bs!1793300 (= lambda!379139 lambda!379097)))

(declare-fun bs!1793301 () Bool)

(assert (= bs!1793301 (and d!2119228 d!2119114)))

(assert (=> bs!1793301 (= lambda!379139 lambda!379106)))

(declare-fun bs!1793302 () Bool)

(assert (= bs!1793302 (and d!2119228 d!2119224)))

(assert (=> bs!1793302 (= lambda!379139 lambda!379135)))

(declare-fun bs!1793303 () Bool)

(assert (= bs!1793303 (and d!2119228 d!2119226)))

(assert (=> bs!1793303 (= lambda!379139 lambda!379138)))

(assert (=> d!2119228 (= (inv!84679 setElem!46075) (forall!15773 (exprs!6457 setElem!46075) lambda!379139))))

(declare-fun bs!1793304 () Bool)

(assert (= bs!1793304 d!2119228))

(declare-fun m!7500984 () Bool)

(assert (=> bs!1793304 m!7500984))

(assert (=> setNonEmpty!46075 d!2119228))

(declare-fun bs!1793305 () Bool)

(declare-fun b!6745405 () Bool)

(assert (= bs!1793305 (and b!6745405 d!2119198)))

(declare-fun lambda!379140 () Int)

(assert (=> bs!1793305 (= (= r!7292 (Star!16573 (reg!16902 r!7292))) (= lambda!379140 lambda!379127))))

(declare-fun bs!1793306 () Bool)

(assert (= bs!1793306 (and b!6745405 b!6744656)))

(assert (=> bs!1793306 (not (= lambda!379140 lambda!379058))))

(assert (=> bs!1793305 (not (= lambda!379140 lambda!379126))))

(declare-fun bs!1793307 () Bool)

(assert (= bs!1793307 (and b!6745405 d!2119196)))

(assert (=> bs!1793307 (not (= lambda!379140 lambda!379120))))

(declare-fun bs!1793308 () Bool)

(assert (= bs!1793308 (and b!6745405 b!6744794)))

(assert (=> bs!1793308 (= (and (= (reg!16902 r!7292) (reg!16902 lt!2439737)) (= r!7292 lt!2439737)) (= lambda!379140 lambda!379083))))

(assert (=> bs!1793306 (not (= lambda!379140 lambda!379056))))

(declare-fun bs!1793309 () Bool)

(assert (= bs!1793309 (and b!6745405 d!2119208)))

(assert (=> bs!1793309 (not (= lambda!379140 lambda!379130))))

(assert (=> bs!1793306 (= lambda!379140 lambda!379057)))

(assert (=> bs!1793307 (not (= lambda!379140 lambda!379121))))

(declare-fun bs!1793310 () Bool)

(assert (= bs!1793310 (and b!6745405 b!6744788)))

(assert (=> bs!1793310 (not (= lambda!379140 lambda!379084))))

(assert (=> b!6745405 true))

(assert (=> b!6745405 true))

(declare-fun bs!1793311 () Bool)

(declare-fun b!6745399 () Bool)

(assert (= bs!1793311 (and b!6745399 d!2119198)))

(declare-fun lambda!379141 () Int)

(assert (=> bs!1793311 (not (= lambda!379141 lambda!379127))))

(declare-fun bs!1793312 () Bool)

(assert (= bs!1793312 (and b!6745399 b!6744656)))

(assert (=> bs!1793312 (= (and (= (regOne!33658 r!7292) (reg!16902 r!7292)) (= (regTwo!33658 r!7292) r!7292)) (= lambda!379141 lambda!379058))))

(assert (=> bs!1793311 (not (= lambda!379141 lambda!379126))))

(declare-fun bs!1793313 () Bool)

(assert (= bs!1793313 (and b!6745399 d!2119196)))

(assert (=> bs!1793313 (not (= lambda!379141 lambda!379120))))

(declare-fun bs!1793314 () Bool)

(assert (= bs!1793314 (and b!6745399 b!6745405)))

(assert (=> bs!1793314 (not (= lambda!379141 lambda!379140))))

(declare-fun bs!1793315 () Bool)

(assert (= bs!1793315 (and b!6745399 b!6744794)))

(assert (=> bs!1793315 (not (= lambda!379141 lambda!379083))))

(assert (=> bs!1793312 (not (= lambda!379141 lambda!379056))))

(declare-fun bs!1793316 () Bool)

(assert (= bs!1793316 (and b!6745399 d!2119208)))

(assert (=> bs!1793316 (not (= lambda!379141 lambda!379130))))

(assert (=> bs!1793312 (not (= lambda!379141 lambda!379057))))

(assert (=> bs!1793313 (= (and (= (regOne!33658 r!7292) (reg!16902 r!7292)) (= (regTwo!33658 r!7292) r!7292)) (= lambda!379141 lambda!379121))))

(declare-fun bs!1793317 () Bool)

(assert (= bs!1793317 (and b!6745399 b!6744788)))

(assert (=> bs!1793317 (= (and (= (regOne!33658 r!7292) (regOne!33658 lt!2439737)) (= (regTwo!33658 r!7292) (regTwo!33658 lt!2439737))) (= lambda!379141 lambda!379084))))

(assert (=> b!6745399 true))

(assert (=> b!6745399 true))

(declare-fun c!1251510 () Bool)

(declare-fun call!609951 () Bool)

(declare-fun bm!609945 () Bool)

(assert (=> bm!609945 (= call!609951 (Exists!3641 (ite c!1251510 lambda!379140 lambda!379141)))))

(declare-fun b!6745396 () Bool)

(declare-fun e!4074123 () Bool)

(assert (=> b!6745396 (= e!4074123 (matchRSpec!3674 (regTwo!33659 r!7292) s!2326))))

(declare-fun b!6745397 () Bool)

(declare-fun e!4074124 () Bool)

(declare-fun call!609950 () Bool)

(assert (=> b!6745397 (= e!4074124 call!609950)))

(declare-fun b!6745398 () Bool)

(declare-fun e!4074127 () Bool)

(assert (=> b!6745398 (= e!4074127 e!4074123)))

(declare-fun res!2759036 () Bool)

(assert (=> b!6745398 (= res!2759036 (matchRSpec!3674 (regOne!33659 r!7292) s!2326))))

(assert (=> b!6745398 (=> res!2759036 e!4074123)))

(declare-fun e!4074129 () Bool)

(assert (=> b!6745399 (= e!4074129 call!609951)))

(declare-fun b!6745400 () Bool)

(declare-fun e!4074126 () Bool)

(assert (=> b!6745400 (= e!4074124 e!4074126)))

(declare-fun res!2759037 () Bool)

(assert (=> b!6745400 (= res!2759037 (not ((_ is EmptyLang!16573) r!7292)))))

(assert (=> b!6745400 (=> (not res!2759037) (not e!4074126))))

(declare-fun d!2119230 () Bool)

(declare-fun c!1251511 () Bool)

(assert (=> d!2119230 (= c!1251511 ((_ is EmptyExpr!16573) r!7292))))

(assert (=> d!2119230 (= (matchRSpec!3674 r!7292 s!2326) e!4074124)))

(declare-fun b!6745401 () Bool)

(assert (=> b!6745401 (= e!4074127 e!4074129)))

(assert (=> b!6745401 (= c!1251510 ((_ is Star!16573) r!7292))))

(declare-fun b!6745402 () Bool)

(declare-fun c!1251509 () Bool)

(assert (=> b!6745402 (= c!1251509 ((_ is Union!16573) r!7292))))

(declare-fun e!4074125 () Bool)

(assert (=> b!6745402 (= e!4074125 e!4074127)))

(declare-fun b!6745403 () Bool)

(assert (=> b!6745403 (= e!4074125 (= s!2326 (Cons!65896 (c!1251299 r!7292) Nil!65896)))))

(declare-fun bm!609946 () Bool)

(assert (=> bm!609946 (= call!609950 (isEmpty!38241 s!2326))))

(declare-fun b!6745404 () Bool)

(declare-fun c!1251512 () Bool)

(assert (=> b!6745404 (= c!1251512 ((_ is ElementMatch!16573) r!7292))))

(assert (=> b!6745404 (= e!4074126 e!4074125)))

(declare-fun e!4074128 () Bool)

(assert (=> b!6745405 (= e!4074128 call!609951)))

(declare-fun b!6745406 () Bool)

(declare-fun res!2759035 () Bool)

(assert (=> b!6745406 (=> res!2759035 e!4074128)))

(assert (=> b!6745406 (= res!2759035 call!609950)))

(assert (=> b!6745406 (= e!4074129 e!4074128)))

(assert (= (and d!2119230 c!1251511) b!6745397))

(assert (= (and d!2119230 (not c!1251511)) b!6745400))

(assert (= (and b!6745400 res!2759037) b!6745404))

(assert (= (and b!6745404 c!1251512) b!6745403))

(assert (= (and b!6745404 (not c!1251512)) b!6745402))

(assert (= (and b!6745402 c!1251509) b!6745398))

(assert (= (and b!6745402 (not c!1251509)) b!6745401))

(assert (= (and b!6745398 (not res!2759036)) b!6745396))

(assert (= (and b!6745401 c!1251510) b!6745406))

(assert (= (and b!6745401 (not c!1251510)) b!6745399))

(assert (= (and b!6745406 (not res!2759035)) b!6745405))

(assert (= (or b!6745405 b!6745399) bm!609945))

(assert (= (or b!6745397 b!6745406) bm!609946))

(declare-fun m!7500986 () Bool)

(assert (=> bm!609945 m!7500986))

(declare-fun m!7500988 () Bool)

(assert (=> b!6745396 m!7500988))

(declare-fun m!7500990 () Bool)

(assert (=> b!6745398 m!7500990))

(assert (=> bm!609946 m!7500386))

(assert (=> b!6744644 d!2119230))

(declare-fun b!6745407 () Bool)

(declare-fun res!2759038 () Bool)

(declare-fun e!4074135 () Bool)

(assert (=> b!6745407 (=> (not res!2759038) (not e!4074135))))

(assert (=> b!6745407 (= res!2759038 (isEmpty!38241 (tail!12658 s!2326)))))

(declare-fun b!6745408 () Bool)

(declare-fun e!4074132 () Bool)

(declare-fun e!4074130 () Bool)

(assert (=> b!6745408 (= e!4074132 e!4074130)))

(declare-fun c!1251513 () Bool)

(assert (=> b!6745408 (= c!1251513 ((_ is EmptyLang!16573) r!7292))))

(declare-fun bm!609947 () Bool)

(declare-fun call!609952 () Bool)

(assert (=> bm!609947 (= call!609952 (isEmpty!38241 s!2326))))

(declare-fun b!6745409 () Bool)

(declare-fun res!2759043 () Bool)

(declare-fun e!4074136 () Bool)

(assert (=> b!6745409 (=> res!2759043 e!4074136)))

(assert (=> b!6745409 (= res!2759043 (not ((_ is ElementMatch!16573) r!7292)))))

(assert (=> b!6745409 (= e!4074130 e!4074136)))

(declare-fun b!6745410 () Bool)

(declare-fun res!2759040 () Bool)

(assert (=> b!6745410 (=> (not res!2759040) (not e!4074135))))

(assert (=> b!6745410 (= res!2759040 (not call!609952))))

(declare-fun b!6745411 () Bool)

(declare-fun lt!2439856 () Bool)

(assert (=> b!6745411 (= e!4074132 (= lt!2439856 call!609952))))

(declare-fun b!6745412 () Bool)

(declare-fun e!4074134 () Bool)

(assert (=> b!6745412 (= e!4074134 (nullable!6560 r!7292))))

(declare-fun b!6745413 () Bool)

(declare-fun e!4074133 () Bool)

(declare-fun e!4074131 () Bool)

(assert (=> b!6745413 (= e!4074133 e!4074131)))

(declare-fun res!2759045 () Bool)

(assert (=> b!6745413 (=> res!2759045 e!4074131)))

(assert (=> b!6745413 (= res!2759045 call!609952)))

(declare-fun d!2119232 () Bool)

(assert (=> d!2119232 e!4074132))

(declare-fun c!1251514 () Bool)

(assert (=> d!2119232 (= c!1251514 ((_ is EmptyExpr!16573) r!7292))))

(assert (=> d!2119232 (= lt!2439856 e!4074134)))

(declare-fun c!1251515 () Bool)

(assert (=> d!2119232 (= c!1251515 (isEmpty!38241 s!2326))))

(assert (=> d!2119232 (validRegex!8309 r!7292)))

(assert (=> d!2119232 (= (matchR!8756 r!7292 s!2326) lt!2439856)))

(declare-fun b!6745414 () Bool)

(assert (=> b!6745414 (= e!4074135 (= (head!13573 s!2326) (c!1251299 r!7292)))))

(declare-fun b!6745415 () Bool)

(assert (=> b!6745415 (= e!4074131 (not (= (head!13573 s!2326) (c!1251299 r!7292))))))

(declare-fun b!6745416 () Bool)

(assert (=> b!6745416 (= e!4074130 (not lt!2439856))))

(declare-fun b!6745417 () Bool)

(assert (=> b!6745417 (= e!4074134 (matchR!8756 (derivativeStep!5244 r!7292 (head!13573 s!2326)) (tail!12658 s!2326)))))

(declare-fun b!6745418 () Bool)

(assert (=> b!6745418 (= e!4074136 e!4074133)))

(declare-fun res!2759039 () Bool)

(assert (=> b!6745418 (=> (not res!2759039) (not e!4074133))))

(assert (=> b!6745418 (= res!2759039 (not lt!2439856))))

(declare-fun b!6745419 () Bool)

(declare-fun res!2759044 () Bool)

(assert (=> b!6745419 (=> res!2759044 e!4074136)))

(assert (=> b!6745419 (= res!2759044 e!4074135)))

(declare-fun res!2759042 () Bool)

(assert (=> b!6745419 (=> (not res!2759042) (not e!4074135))))

(assert (=> b!6745419 (= res!2759042 lt!2439856)))

(declare-fun b!6745420 () Bool)

(declare-fun res!2759041 () Bool)

(assert (=> b!6745420 (=> res!2759041 e!4074131)))

(assert (=> b!6745420 (= res!2759041 (not (isEmpty!38241 (tail!12658 s!2326))))))

(assert (= (and d!2119232 c!1251515) b!6745412))

(assert (= (and d!2119232 (not c!1251515)) b!6745417))

(assert (= (and d!2119232 c!1251514) b!6745411))

(assert (= (and d!2119232 (not c!1251514)) b!6745408))

(assert (= (and b!6745408 c!1251513) b!6745416))

(assert (= (and b!6745408 (not c!1251513)) b!6745409))

(assert (= (and b!6745409 (not res!2759043)) b!6745419))

(assert (= (and b!6745419 res!2759042) b!6745410))

(assert (= (and b!6745410 res!2759040) b!6745407))

(assert (= (and b!6745407 res!2759038) b!6745414))

(assert (= (and b!6745419 (not res!2759044)) b!6745418))

(assert (= (and b!6745418 res!2759039) b!6745413))

(assert (= (and b!6745413 (not res!2759045)) b!6745420))

(assert (= (and b!6745420 (not res!2759041)) b!6745415))

(assert (= (or b!6745411 b!6745410 b!6745413) bm!609947))

(assert (=> d!2119232 m!7500386))

(assert (=> d!2119232 m!7500450))

(assert (=> bm!609947 m!7500386))

(assert (=> b!6745417 m!7500624))

(assert (=> b!6745417 m!7500624))

(declare-fun m!7500992 () Bool)

(assert (=> b!6745417 m!7500992))

(assert (=> b!6745417 m!7500628))

(assert (=> b!6745417 m!7500992))

(assert (=> b!6745417 m!7500628))

(declare-fun m!7500994 () Bool)

(assert (=> b!6745417 m!7500994))

(assert (=> b!6745420 m!7500628))

(assert (=> b!6745420 m!7500628))

(assert (=> b!6745420 m!7500632))

(declare-fun m!7500996 () Bool)

(assert (=> b!6745412 m!7500996))

(assert (=> b!6745407 m!7500628))

(assert (=> b!6745407 m!7500628))

(assert (=> b!6745407 m!7500632))

(assert (=> b!6745414 m!7500624))

(assert (=> b!6745415 m!7500624))

(assert (=> b!6744644 d!2119232))

(declare-fun d!2119234 () Bool)

(assert (=> d!2119234 (= (matchR!8756 r!7292 s!2326) (matchRSpec!3674 r!7292 s!2326))))

(declare-fun lt!2439857 () Unit!159837)

(assert (=> d!2119234 (= lt!2439857 (choose!50292 r!7292 s!2326))))

(assert (=> d!2119234 (validRegex!8309 r!7292)))

(assert (=> d!2119234 (= (mainMatchTheorem!3674 r!7292 s!2326) lt!2439857)))

(declare-fun bs!1793318 () Bool)

(assert (= bs!1793318 d!2119234))

(assert (=> bs!1793318 m!7500464))

(assert (=> bs!1793318 m!7500462))

(declare-fun m!7500998 () Bool)

(assert (=> bs!1793318 m!7500998))

(assert (=> bs!1793318 m!7500450))

(assert (=> b!6744644 d!2119234))

(declare-fun d!2119236 () Bool)

(declare-fun lt!2439858 () Regex!16573)

(assert (=> d!2119236 (validRegex!8309 lt!2439858)))

(assert (=> d!2119236 (= lt!2439858 (generalisedUnion!2417 (unfocusZipperList!1994 (Cons!65895 lt!2439735 Nil!65895))))))

(assert (=> d!2119236 (= (unfocusZipper!2315 (Cons!65895 lt!2439735 Nil!65895)) lt!2439858)))

(declare-fun bs!1793319 () Bool)

(assert (= bs!1793319 d!2119236))

(declare-fun m!7501000 () Bool)

(assert (=> bs!1793319 m!7501000))

(declare-fun m!7501002 () Bool)

(assert (=> bs!1793319 m!7501002))

(assert (=> bs!1793319 m!7501002))

(declare-fun m!7501004 () Bool)

(assert (=> bs!1793319 m!7501004))

(assert (=> b!6744662 d!2119236))

(declare-fun b!6745421 () Bool)

(declare-fun e!4074140 () Bool)

(declare-fun call!609955 () Bool)

(assert (=> b!6745421 (= e!4074140 call!609955)))

(declare-fun b!6745422 () Bool)

(declare-fun e!4074139 () Bool)

(declare-fun call!609954 () Bool)

(assert (=> b!6745422 (= e!4074139 call!609954)))

(declare-fun b!6745423 () Bool)

(declare-fun res!2759050 () Bool)

(declare-fun e!4074142 () Bool)

(assert (=> b!6745423 (=> res!2759050 e!4074142)))

(assert (=> b!6745423 (= res!2759050 (not ((_ is Concat!25418) (reg!16902 r!7292))))))

(declare-fun e!4074143 () Bool)

(assert (=> b!6745423 (= e!4074143 e!4074142)))

(declare-fun b!6745424 () Bool)

(assert (=> b!6745424 (= e!4074142 e!4074140)))

(declare-fun res!2759048 () Bool)

(assert (=> b!6745424 (=> (not res!2759048) (not e!4074140))))

(declare-fun call!609953 () Bool)

(assert (=> b!6745424 (= res!2759048 call!609953)))

(declare-fun b!6745425 () Bool)

(declare-fun e!4074137 () Bool)

(assert (=> b!6745425 (= e!4074137 call!609955)))

(declare-fun bm!609948 () Bool)

(assert (=> bm!609948 (= call!609953 call!609954)))

(declare-fun d!2119238 () Bool)

(declare-fun res!2759049 () Bool)

(declare-fun e!4074141 () Bool)

(assert (=> d!2119238 (=> res!2759049 e!4074141)))

(assert (=> d!2119238 (= res!2759049 ((_ is ElementMatch!16573) (reg!16902 r!7292)))))

(assert (=> d!2119238 (= (validRegex!8309 (reg!16902 r!7292)) e!4074141)))

(declare-fun c!1251517 () Bool)

(declare-fun c!1251516 () Bool)

(declare-fun bm!609949 () Bool)

(assert (=> bm!609949 (= call!609954 (validRegex!8309 (ite c!1251516 (reg!16902 (reg!16902 r!7292)) (ite c!1251517 (regOne!33659 (reg!16902 r!7292)) (regOne!33658 (reg!16902 r!7292))))))))

(declare-fun b!6745426 () Bool)

(declare-fun res!2759047 () Bool)

(assert (=> b!6745426 (=> (not res!2759047) (not e!4074137))))

(assert (=> b!6745426 (= res!2759047 call!609953)))

(assert (=> b!6745426 (= e!4074143 e!4074137)))

(declare-fun bm!609950 () Bool)

(assert (=> bm!609950 (= call!609955 (validRegex!8309 (ite c!1251517 (regTwo!33659 (reg!16902 r!7292)) (regTwo!33658 (reg!16902 r!7292)))))))

(declare-fun b!6745427 () Bool)

(declare-fun e!4074138 () Bool)

(assert (=> b!6745427 (= e!4074138 e!4074143)))

(assert (=> b!6745427 (= c!1251517 ((_ is Union!16573) (reg!16902 r!7292)))))

(declare-fun b!6745428 () Bool)

(assert (=> b!6745428 (= e!4074141 e!4074138)))

(assert (=> b!6745428 (= c!1251516 ((_ is Star!16573) (reg!16902 r!7292)))))

(declare-fun b!6745429 () Bool)

(assert (=> b!6745429 (= e!4074138 e!4074139)))

(declare-fun res!2759046 () Bool)

(assert (=> b!6745429 (= res!2759046 (not (nullable!6560 (reg!16902 (reg!16902 r!7292)))))))

(assert (=> b!6745429 (=> (not res!2759046) (not e!4074139))))

(assert (= (and d!2119238 (not res!2759049)) b!6745428))

(assert (= (and b!6745428 c!1251516) b!6745429))

(assert (= (and b!6745428 (not c!1251516)) b!6745427))

(assert (= (and b!6745429 res!2759046) b!6745422))

(assert (= (and b!6745427 c!1251517) b!6745426))

(assert (= (and b!6745427 (not c!1251517)) b!6745423))

(assert (= (and b!6745426 res!2759047) b!6745425))

(assert (= (and b!6745423 (not res!2759050)) b!6745424))

(assert (= (and b!6745424 res!2759048) b!6745421))

(assert (= (or b!6745425 b!6745421) bm!609950))

(assert (= (or b!6745426 b!6745424) bm!609948))

(assert (= (or b!6745422 bm!609948) bm!609949))

(declare-fun m!7501006 () Bool)

(assert (=> bm!609949 m!7501006))

(declare-fun m!7501008 () Bool)

(assert (=> bm!609950 m!7501008))

(declare-fun m!7501010 () Bool)

(assert (=> b!6745429 m!7501010))

(assert (=> b!6744652 d!2119238))

(declare-fun b!6745437 () Bool)

(declare-fun e!4074149 () Bool)

(declare-fun tp!1848912 () Bool)

(assert (=> b!6745437 (= e!4074149 tp!1848912)))

(declare-fun e!4074148 () Bool)

(declare-fun b!6745436 () Bool)

(declare-fun tp!1848913 () Bool)

(assert (=> b!6745436 (= e!4074148 (and (inv!84679 (h!72343 (t!379720 zl!343))) e!4074149 tp!1848913))))

(assert (=> b!6744651 (= tp!1848842 e!4074148)))

(assert (= b!6745436 b!6745437))

(assert (= (and b!6744651 ((_ is Cons!65895) (t!379720 zl!343))) b!6745436))

(declare-fun m!7501012 () Bool)

(assert (=> b!6745436 m!7501012))

(declare-fun b!6745442 () Bool)

(declare-fun e!4074152 () Bool)

(declare-fun tp!1848918 () Bool)

(declare-fun tp!1848919 () Bool)

(assert (=> b!6745442 (= e!4074152 (and tp!1848918 tp!1848919))))

(assert (=> b!6744640 (= tp!1848841 e!4074152)))

(assert (= (and b!6744640 ((_ is Cons!65894) (exprs!6457 (h!72343 zl!343)))) b!6745442))

(declare-fun e!4074155 () Bool)

(assert (=> b!6744645 (= tp!1848845 e!4074155)))

(declare-fun b!6745453 () Bool)

(assert (=> b!6745453 (= e!4074155 tp_is_empty!42399)))

(declare-fun b!6745454 () Bool)

(declare-fun tp!1848934 () Bool)

(declare-fun tp!1848931 () Bool)

(assert (=> b!6745454 (= e!4074155 (and tp!1848934 tp!1848931))))

(declare-fun b!6745455 () Bool)

(declare-fun tp!1848933 () Bool)

(assert (=> b!6745455 (= e!4074155 tp!1848933)))

(declare-fun b!6745456 () Bool)

(declare-fun tp!1848932 () Bool)

(declare-fun tp!1848930 () Bool)

(assert (=> b!6745456 (= e!4074155 (and tp!1848932 tp!1848930))))

(assert (= (and b!6744645 ((_ is ElementMatch!16573) (reg!16902 r!7292))) b!6745453))

(assert (= (and b!6744645 ((_ is Concat!25418) (reg!16902 r!7292))) b!6745454))

(assert (= (and b!6744645 ((_ is Star!16573) (reg!16902 r!7292))) b!6745455))

(assert (= (and b!6744645 ((_ is Union!16573) (reg!16902 r!7292))) b!6745456))

(declare-fun e!4074156 () Bool)

(assert (=> b!6744649 (= tp!1848847 e!4074156)))

(declare-fun b!6745457 () Bool)

(assert (=> b!6745457 (= e!4074156 tp_is_empty!42399)))

(declare-fun b!6745458 () Bool)

(declare-fun tp!1848939 () Bool)

(declare-fun tp!1848936 () Bool)

(assert (=> b!6745458 (= e!4074156 (and tp!1848939 tp!1848936))))

(declare-fun b!6745459 () Bool)

(declare-fun tp!1848938 () Bool)

(assert (=> b!6745459 (= e!4074156 tp!1848938)))

(declare-fun b!6745460 () Bool)

(declare-fun tp!1848937 () Bool)

(declare-fun tp!1848935 () Bool)

(assert (=> b!6745460 (= e!4074156 (and tp!1848937 tp!1848935))))

(assert (= (and b!6744649 ((_ is ElementMatch!16573) (regOne!33658 r!7292))) b!6745457))

(assert (= (and b!6744649 ((_ is Concat!25418) (regOne!33658 r!7292))) b!6745458))

(assert (= (and b!6744649 ((_ is Star!16573) (regOne!33658 r!7292))) b!6745459))

(assert (= (and b!6744649 ((_ is Union!16573) (regOne!33658 r!7292))) b!6745460))

(declare-fun e!4074157 () Bool)

(assert (=> b!6744649 (= tp!1848848 e!4074157)))

(declare-fun b!6745461 () Bool)

(assert (=> b!6745461 (= e!4074157 tp_is_empty!42399)))

(declare-fun b!6745462 () Bool)

(declare-fun tp!1848944 () Bool)

(declare-fun tp!1848941 () Bool)

(assert (=> b!6745462 (= e!4074157 (and tp!1848944 tp!1848941))))

(declare-fun b!6745463 () Bool)

(declare-fun tp!1848943 () Bool)

(assert (=> b!6745463 (= e!4074157 tp!1848943)))

(declare-fun b!6745464 () Bool)

(declare-fun tp!1848942 () Bool)

(declare-fun tp!1848940 () Bool)

(assert (=> b!6745464 (= e!4074157 (and tp!1848942 tp!1848940))))

(assert (= (and b!6744649 ((_ is ElementMatch!16573) (regTwo!33658 r!7292))) b!6745461))

(assert (= (and b!6744649 ((_ is Concat!25418) (regTwo!33658 r!7292))) b!6745462))

(assert (= (and b!6744649 ((_ is Star!16573) (regTwo!33658 r!7292))) b!6745463))

(assert (= (and b!6744649 ((_ is Union!16573) (regTwo!33658 r!7292))) b!6745464))

(declare-fun condSetEmpty!46081 () Bool)

(assert (=> setNonEmpty!46075 (= condSetEmpty!46081 (= setRest!46075 ((as const (Array Context!11914 Bool)) false)))))

(declare-fun setRes!46081 () Bool)

(assert (=> setNonEmpty!46075 (= tp!1848844 setRes!46081)))

(declare-fun setIsEmpty!46081 () Bool)

(assert (=> setIsEmpty!46081 setRes!46081))

(declare-fun e!4074160 () Bool)

(declare-fun setElem!46081 () Context!11914)

(declare-fun tp!1848949 () Bool)

(declare-fun setNonEmpty!46081 () Bool)

(assert (=> setNonEmpty!46081 (= setRes!46081 (and tp!1848949 (inv!84679 setElem!46081) e!4074160))))

(declare-fun setRest!46081 () (InoxSet Context!11914))

(assert (=> setNonEmpty!46081 (= setRest!46075 ((_ map or) (store ((as const (Array Context!11914 Bool)) false) setElem!46081 true) setRest!46081))))

(declare-fun b!6745469 () Bool)

(declare-fun tp!1848950 () Bool)

(assert (=> b!6745469 (= e!4074160 tp!1848950)))

(assert (= (and setNonEmpty!46075 condSetEmpty!46081) setIsEmpty!46081))

(assert (= (and setNonEmpty!46075 (not condSetEmpty!46081)) setNonEmpty!46081))

(assert (= setNonEmpty!46081 b!6745469))

(declare-fun m!7501014 () Bool)

(assert (=> setNonEmpty!46081 m!7501014))

(declare-fun b!6745474 () Bool)

(declare-fun e!4074163 () Bool)

(declare-fun tp!1848953 () Bool)

(assert (=> b!6745474 (= e!4074163 (and tp_is_empty!42399 tp!1848953))))

(assert (=> b!6744663 (= tp!1848846 e!4074163)))

(assert (= (and b!6744663 ((_ is Cons!65896) (t!379721 s!2326))) b!6745474))

(declare-fun e!4074164 () Bool)

(assert (=> b!6744638 (= tp!1848840 e!4074164)))

(declare-fun b!6745475 () Bool)

(assert (=> b!6745475 (= e!4074164 tp_is_empty!42399)))

(declare-fun b!6745476 () Bool)

(declare-fun tp!1848958 () Bool)

(declare-fun tp!1848955 () Bool)

(assert (=> b!6745476 (= e!4074164 (and tp!1848958 tp!1848955))))

(declare-fun b!6745477 () Bool)

(declare-fun tp!1848957 () Bool)

(assert (=> b!6745477 (= e!4074164 tp!1848957)))

(declare-fun b!6745478 () Bool)

(declare-fun tp!1848956 () Bool)

(declare-fun tp!1848954 () Bool)

(assert (=> b!6745478 (= e!4074164 (and tp!1848956 tp!1848954))))

(assert (= (and b!6744638 ((_ is ElementMatch!16573) (regOne!33659 r!7292))) b!6745475))

(assert (= (and b!6744638 ((_ is Concat!25418) (regOne!33659 r!7292))) b!6745476))

(assert (= (and b!6744638 ((_ is Star!16573) (regOne!33659 r!7292))) b!6745477))

(assert (= (and b!6744638 ((_ is Union!16573) (regOne!33659 r!7292))) b!6745478))

(declare-fun e!4074165 () Bool)

(assert (=> b!6744638 (= tp!1848843 e!4074165)))

(declare-fun b!6745479 () Bool)

(assert (=> b!6745479 (= e!4074165 tp_is_empty!42399)))

(declare-fun b!6745480 () Bool)

(declare-fun tp!1848963 () Bool)

(declare-fun tp!1848960 () Bool)

(assert (=> b!6745480 (= e!4074165 (and tp!1848963 tp!1848960))))

(declare-fun b!6745481 () Bool)

(declare-fun tp!1848962 () Bool)

(assert (=> b!6745481 (= e!4074165 tp!1848962)))

(declare-fun b!6745482 () Bool)

(declare-fun tp!1848961 () Bool)

(declare-fun tp!1848959 () Bool)

(assert (=> b!6745482 (= e!4074165 (and tp!1848961 tp!1848959))))

(assert (= (and b!6744638 ((_ is ElementMatch!16573) (regTwo!33659 r!7292))) b!6745479))

(assert (= (and b!6744638 ((_ is Concat!25418) (regTwo!33659 r!7292))) b!6745480))

(assert (= (and b!6744638 ((_ is Star!16573) (regTwo!33659 r!7292))) b!6745481))

(assert (= (and b!6744638 ((_ is Union!16573) (regTwo!33659 r!7292))) b!6745482))

(declare-fun b!6745483 () Bool)

(declare-fun e!4074166 () Bool)

(declare-fun tp!1848964 () Bool)

(declare-fun tp!1848965 () Bool)

(assert (=> b!6745483 (= e!4074166 (and tp!1848964 tp!1848965))))

(assert (=> b!6744637 (= tp!1848849 e!4074166)))

(assert (= (and b!6744637 ((_ is Cons!65894) (exprs!6457 setElem!46075))) b!6745483))

(declare-fun b_lambda!254067 () Bool)

(assert (= b_lambda!254063 (or b!6744639 b_lambda!254067)))

(declare-fun bs!1793320 () Bool)

(declare-fun d!2119240 () Bool)

(assert (= bs!1793320 (and d!2119240 b!6744639)))

(assert (=> bs!1793320 (= (dynLambda!26294 lambda!379059 lt!2439750) (derivationStepZipperUp!1727 lt!2439750 (h!72344 s!2326)))))

(assert (=> bs!1793320 m!7500428))

(assert (=> d!2119184 d!2119240))

(declare-fun b_lambda!254069 () Bool)

(assert (= b_lambda!254061 (or b!6744639 b_lambda!254069)))

(declare-fun bs!1793321 () Bool)

(declare-fun d!2119242 () Bool)

(assert (= bs!1793321 (and d!2119242 b!6744639)))

(assert (=> bs!1793321 (= (dynLambda!26294 lambda!379059 lt!2439748) (derivationStepZipperUp!1727 lt!2439748 (h!72344 s!2326)))))

(assert (=> bs!1793321 m!7500412))

(assert (=> d!2119176 d!2119242))

(declare-fun b_lambda!254071 () Bool)

(assert (= b_lambda!254065 (or b!6744639 b_lambda!254071)))

(declare-fun bs!1793322 () Bool)

(declare-fun d!2119244 () Bool)

(assert (= bs!1793322 (and d!2119244 b!6744639)))

(assert (=> bs!1793322 (= (dynLambda!26294 lambda!379059 lt!2439735) (derivationStepZipperUp!1727 lt!2439735 (h!72344 s!2326)))))

(assert (=> bs!1793322 m!7500440))

(assert (=> d!2119188 d!2119244))

(declare-fun b_lambda!254073 () Bool)

(assert (= b_lambda!254051 (or b!6744639 b_lambda!254073)))

(declare-fun bs!1793323 () Bool)

(declare-fun d!2119246 () Bool)

(assert (= bs!1793323 (and d!2119246 b!6744639)))

(assert (=> bs!1793323 (= (dynLambda!26294 lambda!379059 (h!72343 zl!343)) (derivationStepZipperUp!1727 (h!72343 zl!343) (h!72344 s!2326)))))

(assert (=> bs!1793323 m!7500456))

(assert (=> d!2119142 d!2119246))

(check-sat (not b!6745436) (not b!6745478) (not bm!609870) (not d!2119114) (not bm!609930) (not bm!609943) (not bm!609946) (not b_lambda!254069) (not b!6745325) tp_is_empty!42399 (not bm!609939) (not b!6745437) (not b!6745011) (not b!6745283) (not b!6744894) (not b_lambda!254073) (not b!6745474) (not bs!1793321) (not d!2119234) (not b!6745016) (not b!6745481) (not d!2119188) (not b!6745326) (not d!2119182) (not bm!609934) (not b!6745103) (not b!6745483) (not b!6745455) (not d!2119186) (not b!6745278) (not b!6745328) (not d!2119232) (not b!6745057) (not d!2119236) (not d!2119126) (not bm!609916) (not b!6745323) (not b!6745398) (not b!6745186) (not d!2119200) (not bm!609873) (not b!6744896) (not b!6745008) (not b!6745358) (not b!6745429) (not b!6745458) (not bm!609900) (not d!2119196) (not d!2119226) (not bm!609869) (not b!6745480) (not b!6745285) (not b!6745477) (not b!6745476) (not b!6745356) (not d!2119224) (not b!6745271) (not b!6745459) (not b!6745420) (not b!6744902) (not b!6745014) (not d!2119192) (not d!2119176) (not d!2119204) (not b!6745442) (not b!6745456) (not b!6745415) (not d!2119210) (not d!2119172) (not b!6745343) (not b!6745276) (not b!6745417) (not d!2119216) (not d!2119112) (not b!6744785) (not bm!609937) (not b!6745273) (not b!6745380) (not b!6745460) (not b!6745263) (not bm!609929) (not b!6745412) (not bm!609949) (not b!6745396) (not d!2119194) (not d!2119206) (not b!6745462) (not bm!609945) (not bm!609947) (not bs!1793320) (not b!6745469) (not d!2119178) (not d!2119228) (not b!6745388) (not d!2119184) (not d!2119122) (not b!6745342) (not bm!609938) (not d!2119142) (not b!6744899) (not b!6745324) (not d!2119208) (not b!6744897) (not d!2119198) (not d!2119090) (not b!6745340) (not b!6745007) (not b!6745454) (not bm!609935) (not b!6745463) (not d!2119100) (not bm!609915) (not bm!609936) (not d!2119212) (not b!6745341) (not d!2119104) (not b!6745464) (not b!6745331) (not b!6745394) (not bs!1793322) (not setNonEmpty!46081) (not b!6745382) (not bm!609950) (not d!2119214) (not b!6745012) (not b_lambda!254071) (not b!6745414) (not b!6744787) (not b!6745105) (not b!6745005) (not b!6745348) (not b!6745387) (not d!2119222) (not b!6745386) (not b!6745389) (not b!6744889) (not b!6745482) (not b!6745407) (not bs!1793323) (not bm!609944) (not b_lambda!254067) (not d!2119120) (not b!6745381))
(check-sat)
