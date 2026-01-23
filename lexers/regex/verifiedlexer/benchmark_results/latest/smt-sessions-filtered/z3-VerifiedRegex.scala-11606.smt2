; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!644962 () Bool)

(assert start!644962)

(declare-fun b!6594800 () Bool)

(assert (=> b!6594800 true))

(assert (=> b!6594800 true))

(declare-fun lambda!367366 () Int)

(declare-fun lambda!367365 () Int)

(assert (=> b!6594800 (not (= lambda!367366 lambda!367365))))

(assert (=> b!6594800 true))

(assert (=> b!6594800 true))

(declare-fun b!6594812 () Bool)

(assert (=> b!6594812 true))

(declare-fun b!6594774 () Bool)

(declare-fun e!3990704 () Bool)

(declare-fun tp!1819074 () Bool)

(declare-fun tp!1819070 () Bool)

(assert (=> b!6594774 (= e!3990704 (and tp!1819074 tp!1819070))))

(declare-fun b!6594775 () Bool)

(declare-datatypes ((Unit!159171 0))(
  ( (Unit!159172) )
))
(declare-fun e!3990686 () Unit!159171)

(declare-fun Unit!159173 () Unit!159171)

(assert (=> b!6594775 (= e!3990686 Unit!159173)))

(declare-datatypes ((C!33188 0))(
  ( (C!33189 (val!26296 Int)) )
))
(declare-datatypes ((List!65676 0))(
  ( (Nil!65552) (Cons!65552 (h!72000 C!33188) (t!379328 List!65676)) )
))
(declare-fun s!2326 () List!65676)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16459 0))(
  ( (ElementMatch!16459 (c!1214332 C!33188)) (Concat!25304 (regOne!33430 Regex!16459) (regTwo!33430 Regex!16459)) (EmptyExpr!16459) (Star!16459 (reg!16788 Regex!16459)) (EmptyLang!16459) (Union!16459 (regOne!33431 Regex!16459) (regTwo!33431 Regex!16459)) )
))
(declare-datatypes ((List!65677 0))(
  ( (Nil!65553) (Cons!65553 (h!72001 Regex!16459) (t!379329 List!65677)) )
))
(declare-datatypes ((Context!11686 0))(
  ( (Context!11687 (exprs!6343 List!65677)) )
))
(declare-fun lt!2411817 () (InoxSet Context!11686))

(declare-fun lt!2411819 () (InoxSet Context!11686))

(declare-fun lt!2411809 () Unit!159171)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1290 ((InoxSet Context!11686) (InoxSet Context!11686) List!65676) Unit!159171)

(assert (=> b!6594775 (= lt!2411809 (lemmaZipperConcatMatchesSameAsBothZippers!1290 lt!2411817 lt!2411819 (t!379328 s!2326)))))

(declare-fun res!2704116 () Bool)

(declare-fun matchZipper!2471 ((InoxSet Context!11686) List!65676) Bool)

(assert (=> b!6594775 (= res!2704116 (matchZipper!2471 lt!2411817 (t!379328 s!2326)))))

(declare-fun e!3990696 () Bool)

(assert (=> b!6594775 (=> res!2704116 e!3990696)))

(assert (=> b!6594775 (= (matchZipper!2471 ((_ map or) lt!2411817 lt!2411819) (t!379328 s!2326)) e!3990696)))

(declare-fun setIsEmpty!45024 () Bool)

(declare-fun setRes!45024 () Bool)

(assert (=> setIsEmpty!45024 setRes!45024))

(declare-fun b!6594776 () Bool)

(declare-fun e!3990707 () Bool)

(declare-fun tp_is_empty!42171 () Bool)

(declare-fun tp!1819078 () Bool)

(assert (=> b!6594776 (= e!3990707 (and tp_is_empty!42171 tp!1819078))))

(declare-fun b!6594777 () Bool)

(declare-fun res!2704097 () Bool)

(declare-fun e!3990687 () Bool)

(assert (=> b!6594777 (=> res!2704097 e!3990687)))

(declare-fun e!3990703 () Bool)

(assert (=> b!6594777 (= res!2704097 e!3990703)))

(declare-fun res!2704102 () Bool)

(assert (=> b!6594777 (=> (not res!2704102) (not e!3990703))))

(declare-fun r!7292 () Regex!16459)

(get-info :version)

(assert (=> b!6594777 (= res!2704102 ((_ is Concat!25304) (regOne!33430 r!7292)))))

(declare-fun e!3990710 () Bool)

(declare-fun tp!1819073 () Bool)

(declare-fun b!6594778 () Bool)

(declare-fun e!3990699 () Bool)

(declare-datatypes ((List!65678 0))(
  ( (Nil!65554) (Cons!65554 (h!72002 Context!11686) (t!379330 List!65678)) )
))
(declare-fun zl!343 () List!65678)

(declare-fun inv!84394 (Context!11686) Bool)

(assert (=> b!6594778 (= e!3990699 (and (inv!84394 (h!72002 zl!343)) e!3990710 tp!1819073))))

(declare-fun b!6594779 () Bool)

(declare-fun tp!1819079 () Bool)

(assert (=> b!6594779 (= e!3990704 tp!1819079)))

(declare-fun b!6594780 () Bool)

(declare-fun e!3990708 () Bool)

(declare-fun e!3990709 () Bool)

(assert (=> b!6594780 (= e!3990708 e!3990709)))

(declare-fun res!2704109 () Bool)

(assert (=> b!6594780 (=> res!2704109 e!3990709)))

(declare-fun lt!2411822 () (InoxSet Context!11686))

(declare-fun lt!2411835 () (InoxSet Context!11686))

(assert (=> b!6594780 (= res!2704109 (not (= lt!2411822 lt!2411835)))))

(declare-fun lt!2411825 () Context!11686)

(declare-fun lambda!367367 () Int)

(declare-fun lt!2411836 () (InoxSet Context!11686))

(declare-fun flatMap!1964 ((InoxSet Context!11686) Int) (InoxSet Context!11686))

(declare-fun derivationStepZipperUp!1633 (Context!11686 C!33188) (InoxSet Context!11686))

(assert (=> b!6594780 (= (flatMap!1964 lt!2411836 lambda!367367) (derivationStepZipperUp!1633 lt!2411825 (h!72000 s!2326)))))

(declare-fun lt!2411811 () Unit!159171)

(declare-fun lemmaFlatMapOnSingletonSet!1490 ((InoxSet Context!11686) Context!11686 Int) Unit!159171)

(assert (=> b!6594780 (= lt!2411811 (lemmaFlatMapOnSingletonSet!1490 lt!2411836 lt!2411825 lambda!367367))))

(declare-fun lt!2411830 () (InoxSet Context!11686))

(assert (=> b!6594780 (= lt!2411830 (derivationStepZipperUp!1633 lt!2411825 (h!72000 s!2326)))))

(declare-fun derivationStepZipper!2425 ((InoxSet Context!11686) C!33188) (InoxSet Context!11686))

(assert (=> b!6594780 (= lt!2411822 (derivationStepZipper!2425 lt!2411836 (h!72000 s!2326)))))

(assert (=> b!6594780 (= lt!2411836 (store ((as const (Array Context!11686 Bool)) false) lt!2411825 true))))

(declare-fun lt!2411840 () List!65677)

(assert (=> b!6594780 (= lt!2411825 (Context!11687 (Cons!65553 (reg!16788 (regOne!33430 r!7292)) lt!2411840)))))

(declare-fun b!6594781 () Bool)

(declare-fun Unit!159174 () Unit!159171)

(assert (=> b!6594781 (= e!3990686 Unit!159174)))

(declare-fun b!6594782 () Bool)

(declare-fun e!3990688 () Bool)

(assert (=> b!6594782 (= e!3990688 (not (matchZipper!2471 lt!2411819 (t!379328 s!2326))))))

(declare-fun res!2704094 () Bool)

(declare-fun e!3990702 () Bool)

(assert (=> start!644962 (=> (not res!2704094) (not e!3990702))))

(declare-fun validRegex!8195 (Regex!16459) Bool)

(assert (=> start!644962 (= res!2704094 (validRegex!8195 r!7292))))

(assert (=> start!644962 e!3990702))

(assert (=> start!644962 e!3990704))

(declare-fun condSetEmpty!45024 () Bool)

(declare-fun z!1189 () (InoxSet Context!11686))

(assert (=> start!644962 (= condSetEmpty!45024 (= z!1189 ((as const (Array Context!11686 Bool)) false)))))

(assert (=> start!644962 setRes!45024))

(assert (=> start!644962 e!3990699))

(assert (=> start!644962 e!3990707))

(declare-fun b!6594783 () Bool)

(declare-fun e!3990705 () Bool)

(assert (=> b!6594783 (= e!3990702 e!3990705)))

(declare-fun res!2704110 () Bool)

(assert (=> b!6594783 (=> (not res!2704110) (not e!3990705))))

(declare-fun lt!2411814 () Regex!16459)

(assert (=> b!6594783 (= res!2704110 (= r!7292 lt!2411814))))

(declare-fun unfocusZipper!2201 (List!65678) Regex!16459)

(assert (=> b!6594783 (= lt!2411814 (unfocusZipper!2201 zl!343))))

(declare-fun b!6594784 () Bool)

(declare-fun e!3990689 () Bool)

(declare-fun e!3990690 () Bool)

(assert (=> b!6594784 (= e!3990689 e!3990690)))

(declare-fun res!2704105 () Bool)

(assert (=> b!6594784 (=> res!2704105 e!3990690)))

(declare-fun lt!2411831 () List!65678)

(declare-fun zipperDepth!396 (List!65678) Int)

(assert (=> b!6594784 (= res!2704105 (< (zipperDepth!396 zl!343) (zipperDepth!396 lt!2411831)))))

(declare-fun lt!2411824 () Context!11686)

(assert (=> b!6594784 (= lt!2411831 (Cons!65554 lt!2411824 Nil!65554))))

(declare-fun b!6594785 () Bool)

(declare-fun e!3990700 () Bool)

(assert (=> b!6594785 (= e!3990709 e!3990700)))

(declare-fun res!2704106 () Bool)

(assert (=> b!6594785 (=> res!2704106 e!3990700)))

(declare-fun lt!2411842 () Regex!16459)

(assert (=> b!6594785 (= res!2704106 (not (= r!7292 lt!2411842)))))

(declare-fun lt!2411818 () Regex!16459)

(assert (=> b!6594785 (= lt!2411842 (Concat!25304 lt!2411818 (regTwo!33430 r!7292)))))

(declare-fun b!6594786 () Bool)

(declare-fun tp!1819072 () Bool)

(assert (=> b!6594786 (= e!3990710 tp!1819072)))

(declare-fun b!6594787 () Bool)

(declare-fun e!3990698 () Bool)

(assert (=> b!6594787 (= e!3990700 e!3990698)))

(declare-fun res!2704113 () Bool)

(assert (=> b!6594787 (=> res!2704113 e!3990698)))

(declare-fun lt!2411829 () Regex!16459)

(assert (=> b!6594787 (= res!2704113 (not (= (unfocusZipper!2201 (Cons!65554 lt!2411825 Nil!65554)) lt!2411829)))))

(assert (=> b!6594787 (= lt!2411829 (Concat!25304 (reg!16788 (regOne!33430 r!7292)) lt!2411842))))

(declare-fun b!6594788 () Bool)

(declare-fun res!2704083 () Bool)

(declare-fun e!3990701 () Bool)

(assert (=> b!6594788 (=> res!2704083 e!3990701)))

(declare-fun lt!2411820 () Bool)

(assert (=> b!6594788 (= res!2704083 (not lt!2411820))))

(declare-fun b!6594789 () Bool)

(declare-fun res!2704108 () Bool)

(declare-fun e!3990693 () Bool)

(assert (=> b!6594789 (=> res!2704108 e!3990693)))

(declare-fun lt!2411807 () Bool)

(assert (=> b!6594789 (= res!2704108 lt!2411807)))

(declare-fun b!6594790 () Bool)

(declare-fun e!3990694 () Bool)

(assert (=> b!6594790 (= e!3990694 e!3990689)))

(declare-fun res!2704092 () Bool)

(assert (=> b!6594790 (=> res!2704092 e!3990689)))

(declare-fun lt!2411833 () Regex!16459)

(declare-fun regexDepth!356 (Regex!16459) Int)

(assert (=> b!6594790 (= res!2704092 (< (regexDepth!356 r!7292) (regexDepth!356 lt!2411833)))))

(declare-fun generalisedConcat!2056 (List!65677) Regex!16459)

(assert (=> b!6594790 (= lt!2411833 (generalisedConcat!2056 (t!379329 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun b!6594791 () Bool)

(assert (=> b!6594791 (= e!3990696 (matchZipper!2471 lt!2411819 (t!379328 s!2326)))))

(declare-fun b!6594792 () Bool)

(declare-fun res!2704088 () Bool)

(declare-fun e!3990706 () Bool)

(assert (=> b!6594792 (=> res!2704088 e!3990706)))

(declare-fun isEmpty!37813 (List!65678) Bool)

(assert (=> b!6594792 (= res!2704088 (not (isEmpty!37813 (t!379330 zl!343))))))

(declare-fun b!6594793 () Bool)

(declare-fun res!2704086 () Bool)

(declare-fun e!3990697 () Bool)

(assert (=> b!6594793 (=> res!2704086 e!3990697)))

(declare-fun isEmpty!37814 (List!65677) Bool)

(assert (=> b!6594793 (= res!2704086 (isEmpty!37814 (t!379329 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun b!6594794 () Bool)

(declare-fun tp!1819076 () Bool)

(declare-fun tp!1819075 () Bool)

(assert (=> b!6594794 (= e!3990704 (and tp!1819076 tp!1819075))))

(declare-fun b!6594795 () Bool)

(declare-fun e!3990692 () Bool)

(assert (=> b!6594795 (= e!3990692 (validRegex!8195 lt!2411818))))

(declare-fun b!6594796 () Bool)

(assert (=> b!6594796 (= e!3990704 tp_is_empty!42171)))

(declare-fun b!6594797 () Bool)

(declare-fun res!2704090 () Bool)

(assert (=> b!6594797 (=> res!2704090 e!3990706)))

(assert (=> b!6594797 (= res!2704090 (not (= r!7292 (generalisedConcat!2056 (exprs!6343 (h!72002 zl!343))))))))

(declare-fun b!6594798 () Bool)

(declare-fun res!2704095 () Bool)

(assert (=> b!6594798 (=> res!2704095 e!3990693)))

(assert (=> b!6594798 (= res!2704095 (not (matchZipper!2471 lt!2411819 (t!379328 s!2326))))))

(declare-fun b!6594799 () Bool)

(declare-fun res!2704099 () Bool)

(assert (=> b!6594799 (=> res!2704099 e!3990706)))

(assert (=> b!6594799 (= res!2704099 (or ((_ is EmptyExpr!16459) r!7292) ((_ is EmptyLang!16459) r!7292) ((_ is ElementMatch!16459) r!7292) ((_ is Union!16459) r!7292) (not ((_ is Concat!25304) r!7292))))))

(assert (=> b!6594800 (= e!3990706 e!3990697)))

(declare-fun res!2704112 () Bool)

(assert (=> b!6594800 (=> res!2704112 e!3990697)))

(declare-fun lt!2411816 () Bool)

(declare-fun lt!2411808 () Bool)

(assert (=> b!6594800 (= res!2704112 (or (not (= lt!2411808 lt!2411816)) ((_ is Nil!65552) s!2326)))))

(declare-fun Exists!3529 (Int) Bool)

(assert (=> b!6594800 (= (Exists!3529 lambda!367365) (Exists!3529 lambda!367366))))

(declare-fun lt!2411843 () Unit!159171)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2066 (Regex!16459 Regex!16459 List!65676) Unit!159171)

(assert (=> b!6594800 (= lt!2411843 (lemmaExistCutMatchRandMatchRSpecEquivalent!2066 (regOne!33430 r!7292) (regTwo!33430 r!7292) s!2326))))

(assert (=> b!6594800 (= lt!2411816 (Exists!3529 lambda!367365))))

(declare-datatypes ((tuple2!66876 0))(
  ( (tuple2!66877 (_1!36741 List!65676) (_2!36741 List!65676)) )
))
(declare-datatypes ((Option!16350 0))(
  ( (None!16349) (Some!16349 (v!52538 tuple2!66876)) )
))
(declare-fun isDefined!13053 (Option!16350) Bool)

(declare-fun findConcatSeparation!2764 (Regex!16459 Regex!16459 List!65676 List!65676 List!65676) Option!16350)

(assert (=> b!6594800 (= lt!2411816 (isDefined!13053 (findConcatSeparation!2764 (regOne!33430 r!7292) (regTwo!33430 r!7292) Nil!65552 s!2326 s!2326)))))

(declare-fun lt!2411813 () Unit!159171)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2528 (Regex!16459 Regex!16459 List!65676) Unit!159171)

(assert (=> b!6594800 (= lt!2411813 (lemmaFindConcatSeparationEquivalentToExists!2528 (regOne!33430 r!7292) (regTwo!33430 r!7292) s!2326))))

(declare-fun b!6594801 () Bool)

(declare-fun res!2704087 () Bool)

(assert (=> b!6594801 (=> res!2704087 e!3990687)))

(assert (=> b!6594801 (= res!2704087 (or ((_ is Concat!25304) (regOne!33430 r!7292)) (not ((_ is Star!16459) (regOne!33430 r!7292)))))))

(declare-fun b!6594802 () Bool)

(declare-fun res!2704107 () Bool)

(assert (=> b!6594802 (=> res!2704107 e!3990701)))

(assert (=> b!6594802 (= res!2704107 (not (matchZipper!2471 z!1189 s!2326)))))

(declare-fun b!6594803 () Bool)

(declare-fun res!2704091 () Bool)

(assert (=> b!6594803 (=> res!2704091 e!3990709)))

(assert (=> b!6594803 (= res!2704091 (not (= (matchZipper!2471 lt!2411836 s!2326) (matchZipper!2471 lt!2411822 (t!379328 s!2326)))))))

(declare-fun b!6594804 () Bool)

(assert (=> b!6594804 (= e!3990705 (not e!3990706))))

(declare-fun res!2704093 () Bool)

(assert (=> b!6594804 (=> res!2704093 e!3990706)))

(assert (=> b!6594804 (= res!2704093 (not ((_ is Cons!65554) zl!343)))))

(declare-fun matchRSpec!3560 (Regex!16459 List!65676) Bool)

(assert (=> b!6594804 (= lt!2411808 (matchRSpec!3560 r!7292 s!2326))))

(declare-fun matchR!8642 (Regex!16459 List!65676) Bool)

(assert (=> b!6594804 (= lt!2411808 (matchR!8642 r!7292 s!2326))))

(declare-fun lt!2411832 () Unit!159171)

(declare-fun mainMatchTheorem!3560 (Regex!16459 List!65676) Unit!159171)

(assert (=> b!6594804 (= lt!2411832 (mainMatchTheorem!3560 r!7292 s!2326))))

(declare-fun b!6594805 () Bool)

(declare-fun e!3990691 () Bool)

(assert (=> b!6594805 (= e!3990698 e!3990691)))

(declare-fun res!2704098 () Bool)

(assert (=> b!6594805 (=> res!2704098 e!3990691)))

(declare-fun lt!2411838 () Context!11686)

(assert (=> b!6594805 (= res!2704098 (not (= (unfocusZipper!2201 (Cons!65554 lt!2411838 Nil!65554)) (reg!16788 (regOne!33430 r!7292)))))))

(declare-fun lt!2411810 () (InoxSet Context!11686))

(declare-fun lt!2411828 () Context!11686)

(assert (=> b!6594805 (= (flatMap!1964 lt!2411810 lambda!367367) (derivationStepZipperUp!1633 lt!2411828 (h!72000 s!2326)))))

(declare-fun lt!2411827 () Unit!159171)

(assert (=> b!6594805 (= lt!2411827 (lemmaFlatMapOnSingletonSet!1490 lt!2411810 lt!2411828 lambda!367367))))

(declare-fun lt!2411837 () (InoxSet Context!11686))

(assert (=> b!6594805 (= (flatMap!1964 lt!2411837 lambda!367367) (derivationStepZipperUp!1633 lt!2411838 (h!72000 s!2326)))))

(declare-fun lt!2411826 () Unit!159171)

(assert (=> b!6594805 (= lt!2411826 (lemmaFlatMapOnSingletonSet!1490 lt!2411837 lt!2411838 lambda!367367))))

(declare-fun lt!2411844 () (InoxSet Context!11686))

(assert (=> b!6594805 (= lt!2411844 (derivationStepZipperUp!1633 lt!2411828 (h!72000 s!2326)))))

(declare-fun lt!2411823 () (InoxSet Context!11686))

(assert (=> b!6594805 (= lt!2411823 (derivationStepZipperUp!1633 lt!2411838 (h!72000 s!2326)))))

(assert (=> b!6594805 (= lt!2411810 (store ((as const (Array Context!11686 Bool)) false) lt!2411828 true))))

(assert (=> b!6594805 (= lt!2411837 (store ((as const (Array Context!11686 Bool)) false) lt!2411838 true))))

(assert (=> b!6594805 (= lt!2411838 (Context!11687 (Cons!65553 (reg!16788 (regOne!33430 r!7292)) Nil!65553)))))

(declare-fun b!6594806 () Bool)

(declare-fun nullable!6452 (Regex!16459) Bool)

(assert (=> b!6594806 (= e!3990703 (nullable!6452 (regOne!33430 (regOne!33430 r!7292))))))

(declare-fun b!6594807 () Bool)

(assert (=> b!6594807 (= e!3990687 e!3990708)))

(declare-fun res!2704085 () Bool)

(assert (=> b!6594807 (=> res!2704085 e!3990708)))

(assert (=> b!6594807 (= res!2704085 (not (= lt!2411817 lt!2411835)))))

(declare-fun derivationStepZipperDown!1707 (Regex!16459 Context!11686 C!33188) (InoxSet Context!11686))

(assert (=> b!6594807 (= lt!2411835 (derivationStepZipperDown!1707 (reg!16788 (regOne!33430 r!7292)) lt!2411828 (h!72000 s!2326)))))

(assert (=> b!6594807 (= lt!2411828 (Context!11687 lt!2411840))))

(assert (=> b!6594807 (= lt!2411840 (Cons!65553 lt!2411818 (t!379329 (exprs!6343 (h!72002 zl!343)))))))

(assert (=> b!6594807 (= lt!2411818 (Star!16459 (reg!16788 (regOne!33430 r!7292))))))

(declare-fun b!6594808 () Bool)

(assert (=> b!6594808 (= e!3990693 e!3990694)))

(declare-fun res!2704114 () Bool)

(assert (=> b!6594808 (=> res!2704114 e!3990694)))

(declare-fun lt!2411821 () (InoxSet Context!11686))

(assert (=> b!6594808 (= res!2704114 (not (= lt!2411819 (derivationStepZipper!2425 lt!2411821 (h!72000 s!2326)))))))

(assert (=> b!6594808 (= (flatMap!1964 lt!2411821 lambda!367367) (derivationStepZipperUp!1633 lt!2411824 (h!72000 s!2326)))))

(declare-fun lt!2411812 () Unit!159171)

(assert (=> b!6594808 (= lt!2411812 (lemmaFlatMapOnSingletonSet!1490 lt!2411821 lt!2411824 lambda!367367))))

(assert (=> b!6594808 (= lt!2411821 (store ((as const (Array Context!11686 Bool)) false) lt!2411824 true))))

(declare-fun b!6594809 () Bool)

(declare-fun res!2704115 () Bool)

(assert (=> b!6594809 (=> res!2704115 e!3990706)))

(declare-fun generalisedUnion!2303 (List!65677) Regex!16459)

(declare-fun unfocusZipperList!1880 (List!65678) List!65677)

(assert (=> b!6594809 (= res!2704115 (not (= r!7292 (generalisedUnion!2303 (unfocusZipperList!1880 zl!343)))))))

(declare-fun b!6594810 () Bool)

(declare-fun res!2704111 () Bool)

(assert (=> b!6594810 (=> res!2704111 e!3990691)))

(assert (=> b!6594810 (= res!2704111 (not (= (unfocusZipper!2201 (Cons!65554 lt!2411828 Nil!65554)) lt!2411842)))))

(declare-fun b!6594811 () Bool)

(declare-fun res!2704084 () Bool)

(assert (=> b!6594811 (=> res!2704084 e!3990706)))

(assert (=> b!6594811 (= res!2704084 (not ((_ is Cons!65553) (exprs!6343 (h!72002 zl!343)))))))

(assert (=> b!6594812 (= e!3990697 e!3990687)))

(declare-fun res!2704089 () Bool)

(assert (=> b!6594812 (=> res!2704089 e!3990687)))

(assert (=> b!6594812 (= res!2704089 (or (and ((_ is ElementMatch!16459) (regOne!33430 r!7292)) (= (c!1214332 (regOne!33430 r!7292)) (h!72000 s!2326))) ((_ is Union!16459) (regOne!33430 r!7292))))))

(declare-fun lt!2411839 () Unit!159171)

(assert (=> b!6594812 (= lt!2411839 e!3990686)))

(declare-fun c!1214331 () Bool)

(assert (=> b!6594812 (= c!1214331 lt!2411820)))

(assert (=> b!6594812 (= lt!2411820 (nullable!6452 (h!72001 (exprs!6343 (h!72002 zl!343)))))))

(assert (=> b!6594812 (= (flatMap!1964 z!1189 lambda!367367) (derivationStepZipperUp!1633 (h!72002 zl!343) (h!72000 s!2326)))))

(declare-fun lt!2411841 () Unit!159171)

(assert (=> b!6594812 (= lt!2411841 (lemmaFlatMapOnSingletonSet!1490 z!1189 (h!72002 zl!343) lambda!367367))))

(assert (=> b!6594812 (= lt!2411819 (derivationStepZipperUp!1633 lt!2411824 (h!72000 s!2326)))))

(assert (=> b!6594812 (= lt!2411817 (derivationStepZipperDown!1707 (h!72001 (exprs!6343 (h!72002 zl!343))) lt!2411824 (h!72000 s!2326)))))

(assert (=> b!6594812 (= lt!2411824 (Context!11687 (t!379329 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun lt!2411834 () (InoxSet Context!11686))

(assert (=> b!6594812 (= lt!2411834 (derivationStepZipperUp!1633 (Context!11687 (Cons!65553 (h!72001 (exprs!6343 (h!72002 zl!343))) (t!379329 (exprs!6343 (h!72002 zl!343))))) (h!72000 s!2326)))))

(declare-fun b!6594813 () Bool)

(declare-fun res!2704096 () Bool)

(assert (=> b!6594813 (=> (not res!2704096) (not e!3990702))))

(declare-fun toList!10243 ((InoxSet Context!11686)) List!65678)

(assert (=> b!6594813 (= res!2704096 (= (toList!10243 z!1189) zl!343))))

(declare-fun e!3990695 () Bool)

(declare-fun tp!1819071 () Bool)

(declare-fun setNonEmpty!45024 () Bool)

(declare-fun setElem!45024 () Context!11686)

(assert (=> setNonEmpty!45024 (= setRes!45024 (and tp!1819071 (inv!84394 setElem!45024) e!3990695))))

(declare-fun setRest!45024 () (InoxSet Context!11686))

(assert (=> setNonEmpty!45024 (= z!1189 ((_ map or) (store ((as const (Array Context!11686 Bool)) false) setElem!45024 true) setRest!45024))))

(declare-fun b!6594814 () Bool)

(declare-fun tp!1819077 () Bool)

(assert (=> b!6594814 (= e!3990695 tp!1819077)))

(declare-fun b!6594815 () Bool)

(assert (=> b!6594815 (= e!3990701 e!3990693)))

(declare-fun res!2704104 () Bool)

(assert (=> b!6594815 (=> res!2704104 e!3990693)))

(assert (=> b!6594815 (= res!2704104 e!3990688)))

(declare-fun res!2704101 () Bool)

(assert (=> b!6594815 (=> (not res!2704101) (not e!3990688))))

(assert (=> b!6594815 (= res!2704101 (not lt!2411807))))

(assert (=> b!6594815 (= lt!2411807 (matchZipper!2471 lt!2411817 (t!379328 s!2326)))))

(declare-fun b!6594816 () Bool)

(assert (=> b!6594816 (= e!3990690 e!3990692)))

(declare-fun res!2704100 () Bool)

(assert (=> b!6594816 (=> res!2704100 e!3990692)))

(assert (=> b!6594816 (= res!2704100 (not (matchR!8642 (regTwo!33430 r!7292) s!2326)))))

(assert (=> b!6594816 (= (matchR!8642 lt!2411833 s!2326) (matchZipper!2471 lt!2411821 s!2326))))

(declare-fun lt!2411806 () Unit!159171)

(declare-fun theoremZipperRegexEquiv!881 ((InoxSet Context!11686) List!65678 Regex!16459 List!65676) Unit!159171)

(assert (=> b!6594816 (= lt!2411806 (theoremZipperRegexEquiv!881 lt!2411821 lt!2411831 lt!2411833 s!2326))))

(declare-fun b!6594817 () Bool)

(assert (=> b!6594817 (= e!3990691 e!3990701)))

(declare-fun res!2704082 () Bool)

(assert (=> b!6594817 (=> res!2704082 e!3990701)))

(assert (=> b!6594817 (= res!2704082 lt!2411808)))

(assert (=> b!6594817 (= (matchR!8642 lt!2411829 s!2326) (matchRSpec!3560 lt!2411829 s!2326))))

(declare-fun lt!2411815 () Unit!159171)

(assert (=> b!6594817 (= lt!2411815 (mainMatchTheorem!3560 lt!2411829 s!2326))))

(declare-fun b!6594818 () Bool)

(declare-fun res!2704103 () Bool)

(assert (=> b!6594818 (=> res!2704103 e!3990709)))

(assert (=> b!6594818 (= res!2704103 (not (= lt!2411814 r!7292)))))

(assert (= (and start!644962 res!2704094) b!6594813))

(assert (= (and b!6594813 res!2704096) b!6594783))

(assert (= (and b!6594783 res!2704110) b!6594804))

(assert (= (and b!6594804 (not res!2704093)) b!6594792))

(assert (= (and b!6594792 (not res!2704088)) b!6594797))

(assert (= (and b!6594797 (not res!2704090)) b!6594811))

(assert (= (and b!6594811 (not res!2704084)) b!6594809))

(assert (= (and b!6594809 (not res!2704115)) b!6594799))

(assert (= (and b!6594799 (not res!2704099)) b!6594800))

(assert (= (and b!6594800 (not res!2704112)) b!6594793))

(assert (= (and b!6594793 (not res!2704086)) b!6594812))

(assert (= (and b!6594812 c!1214331) b!6594775))

(assert (= (and b!6594812 (not c!1214331)) b!6594781))

(assert (= (and b!6594775 (not res!2704116)) b!6594791))

(assert (= (and b!6594812 (not res!2704089)) b!6594777))

(assert (= (and b!6594777 res!2704102) b!6594806))

(assert (= (and b!6594777 (not res!2704097)) b!6594801))

(assert (= (and b!6594801 (not res!2704087)) b!6594807))

(assert (= (and b!6594807 (not res!2704085)) b!6594780))

(assert (= (and b!6594780 (not res!2704109)) b!6594803))

(assert (= (and b!6594803 (not res!2704091)) b!6594818))

(assert (= (and b!6594818 (not res!2704103)) b!6594785))

(assert (= (and b!6594785 (not res!2704106)) b!6594787))

(assert (= (and b!6594787 (not res!2704113)) b!6594805))

(assert (= (and b!6594805 (not res!2704098)) b!6594810))

(assert (= (and b!6594810 (not res!2704111)) b!6594817))

(assert (= (and b!6594817 (not res!2704082)) b!6594802))

(assert (= (and b!6594802 (not res!2704107)) b!6594788))

(assert (= (and b!6594788 (not res!2704083)) b!6594815))

(assert (= (and b!6594815 res!2704101) b!6594782))

(assert (= (and b!6594815 (not res!2704104)) b!6594789))

(assert (= (and b!6594789 (not res!2704108)) b!6594798))

(assert (= (and b!6594798 (not res!2704095)) b!6594808))

(assert (= (and b!6594808 (not res!2704114)) b!6594790))

(assert (= (and b!6594790 (not res!2704092)) b!6594784))

(assert (= (and b!6594784 (not res!2704105)) b!6594816))

(assert (= (and b!6594816 (not res!2704100)) b!6594795))

(assert (= (and start!644962 ((_ is ElementMatch!16459) r!7292)) b!6594796))

(assert (= (and start!644962 ((_ is Concat!25304) r!7292)) b!6594794))

(assert (= (and start!644962 ((_ is Star!16459) r!7292)) b!6594779))

(assert (= (and start!644962 ((_ is Union!16459) r!7292)) b!6594774))

(assert (= (and start!644962 condSetEmpty!45024) setIsEmpty!45024))

(assert (= (and start!644962 (not condSetEmpty!45024)) setNonEmpty!45024))

(assert (= setNonEmpty!45024 b!6594814))

(assert (= b!6594778 b!6594786))

(assert (= (and start!644962 ((_ is Cons!65554) zl!343)) b!6594778))

(assert (= (and start!644962 ((_ is Cons!65552) s!2326)) b!6594776))

(declare-fun m!7372340 () Bool)

(assert (=> b!6594793 m!7372340))

(declare-fun m!7372342 () Bool)

(assert (=> b!6594816 m!7372342))

(declare-fun m!7372344 () Bool)

(assert (=> b!6594816 m!7372344))

(declare-fun m!7372346 () Bool)

(assert (=> b!6594816 m!7372346))

(declare-fun m!7372348 () Bool)

(assert (=> b!6594816 m!7372348))

(declare-fun m!7372350 () Bool)

(assert (=> b!6594782 m!7372350))

(declare-fun m!7372352 () Bool)

(assert (=> b!6594792 m!7372352))

(declare-fun m!7372354 () Bool)

(assert (=> b!6594805 m!7372354))

(declare-fun m!7372356 () Bool)

(assert (=> b!6594805 m!7372356))

(declare-fun m!7372358 () Bool)

(assert (=> b!6594805 m!7372358))

(declare-fun m!7372360 () Bool)

(assert (=> b!6594805 m!7372360))

(declare-fun m!7372362 () Bool)

(assert (=> b!6594805 m!7372362))

(declare-fun m!7372364 () Bool)

(assert (=> b!6594805 m!7372364))

(declare-fun m!7372366 () Bool)

(assert (=> b!6594805 m!7372366))

(declare-fun m!7372368 () Bool)

(assert (=> b!6594805 m!7372368))

(declare-fun m!7372370 () Bool)

(assert (=> b!6594805 m!7372370))

(declare-fun m!7372372 () Bool)

(assert (=> b!6594810 m!7372372))

(declare-fun m!7372374 () Bool)

(assert (=> b!6594787 m!7372374))

(declare-fun m!7372376 () Bool)

(assert (=> b!6594807 m!7372376))

(declare-fun m!7372378 () Bool)

(assert (=> b!6594775 m!7372378))

(declare-fun m!7372380 () Bool)

(assert (=> b!6594775 m!7372380))

(declare-fun m!7372382 () Bool)

(assert (=> b!6594775 m!7372382))

(declare-fun m!7372384 () Bool)

(assert (=> b!6594784 m!7372384))

(declare-fun m!7372386 () Bool)

(assert (=> b!6594784 m!7372386))

(declare-fun m!7372388 () Bool)

(assert (=> b!6594795 m!7372388))

(declare-fun m!7372390 () Bool)

(assert (=> start!644962 m!7372390))

(declare-fun m!7372392 () Bool)

(assert (=> b!6594800 m!7372392))

(declare-fun m!7372394 () Bool)

(assert (=> b!6594800 m!7372394))

(assert (=> b!6594800 m!7372392))

(declare-fun m!7372396 () Bool)

(assert (=> b!6594800 m!7372396))

(declare-fun m!7372398 () Bool)

(assert (=> b!6594800 m!7372398))

(declare-fun m!7372400 () Bool)

(assert (=> b!6594800 m!7372400))

(assert (=> b!6594800 m!7372398))

(declare-fun m!7372402 () Bool)

(assert (=> b!6594800 m!7372402))

(declare-fun m!7372404 () Bool)

(assert (=> b!6594806 m!7372404))

(declare-fun m!7372406 () Bool)

(assert (=> b!6594797 m!7372406))

(assert (=> b!6594791 m!7372350))

(declare-fun m!7372408 () Bool)

(assert (=> b!6594813 m!7372408))

(declare-fun m!7372410 () Bool)

(assert (=> b!6594778 m!7372410))

(declare-fun m!7372412 () Bool)

(assert (=> b!6594803 m!7372412))

(declare-fun m!7372414 () Bool)

(assert (=> b!6594803 m!7372414))

(declare-fun m!7372416 () Bool)

(assert (=> b!6594802 m!7372416))

(declare-fun m!7372418 () Bool)

(assert (=> b!6594808 m!7372418))

(declare-fun m!7372420 () Bool)

(assert (=> b!6594808 m!7372420))

(declare-fun m!7372422 () Bool)

(assert (=> b!6594808 m!7372422))

(declare-fun m!7372424 () Bool)

(assert (=> b!6594808 m!7372424))

(declare-fun m!7372426 () Bool)

(assert (=> b!6594808 m!7372426))

(declare-fun m!7372428 () Bool)

(assert (=> b!6594817 m!7372428))

(declare-fun m!7372430 () Bool)

(assert (=> b!6594817 m!7372430))

(declare-fun m!7372432 () Bool)

(assert (=> b!6594817 m!7372432))

(declare-fun m!7372434 () Bool)

(assert (=> b!6594790 m!7372434))

(declare-fun m!7372436 () Bool)

(assert (=> b!6594790 m!7372436))

(declare-fun m!7372438 () Bool)

(assert (=> b!6594790 m!7372438))

(assert (=> b!6594798 m!7372350))

(declare-fun m!7372440 () Bool)

(assert (=> b!6594804 m!7372440))

(declare-fun m!7372442 () Bool)

(assert (=> b!6594804 m!7372442))

(declare-fun m!7372444 () Bool)

(assert (=> b!6594804 m!7372444))

(declare-fun m!7372446 () Bool)

(assert (=> setNonEmpty!45024 m!7372446))

(declare-fun m!7372448 () Bool)

(assert (=> b!6594780 m!7372448))

(declare-fun m!7372450 () Bool)

(assert (=> b!6594780 m!7372450))

(declare-fun m!7372452 () Bool)

(assert (=> b!6594780 m!7372452))

(declare-fun m!7372454 () Bool)

(assert (=> b!6594780 m!7372454))

(declare-fun m!7372456 () Bool)

(assert (=> b!6594780 m!7372456))

(assert (=> b!6594815 m!7372380))

(declare-fun m!7372458 () Bool)

(assert (=> b!6594812 m!7372458))

(declare-fun m!7372460 () Bool)

(assert (=> b!6594812 m!7372460))

(declare-fun m!7372462 () Bool)

(assert (=> b!6594812 m!7372462))

(declare-fun m!7372464 () Bool)

(assert (=> b!6594812 m!7372464))

(assert (=> b!6594812 m!7372424))

(declare-fun m!7372466 () Bool)

(assert (=> b!6594812 m!7372466))

(declare-fun m!7372468 () Bool)

(assert (=> b!6594812 m!7372468))

(declare-fun m!7372470 () Bool)

(assert (=> b!6594809 m!7372470))

(assert (=> b!6594809 m!7372470))

(declare-fun m!7372472 () Bool)

(assert (=> b!6594809 m!7372472))

(declare-fun m!7372474 () Bool)

(assert (=> b!6594783 m!7372474))

(check-sat (not b!6594792) (not b!6594787) (not b!6594791) (not b!6594808) (not b!6594817) (not b!6594809) (not b!6594783) (not b!6594780) (not b!6594786) (not b!6594802) (not b!6594812) (not b!6594797) (not b!6594784) (not b!6594794) (not b!6594776) (not setNonEmpty!45024) (not b!6594800) (not b!6594795) (not b!6594774) (not b!6594782) (not b!6594778) (not b!6594798) (not b!6594790) (not b!6594803) (not b!6594810) (not b!6594806) (not b!6594816) (not b!6594805) (not b!6594815) (not b!6594814) (not b!6594779) (not b!6594813) tp_is_empty!42171 (not b!6594775) (not start!644962) (not b!6594807) (not b!6594804) (not b!6594793))
(check-sat)
(get-model)

(declare-fun b!6595238 () Bool)

(declare-fun e!3990955 () (InoxSet Context!11686))

(declare-fun e!3990954 () (InoxSet Context!11686))

(assert (=> b!6595238 (= e!3990955 e!3990954)))

(declare-fun c!1214479 () Bool)

(assert (=> b!6595238 (= c!1214479 ((_ is Union!16459) (reg!16788 (regOne!33430 r!7292))))))

(declare-fun b!6595239 () Bool)

(declare-fun e!3990953 () (InoxSet Context!11686))

(declare-fun e!3990950 () (InoxSet Context!11686))

(assert (=> b!6595239 (= e!3990953 e!3990950)))

(declare-fun c!1214476 () Bool)

(assert (=> b!6595239 (= c!1214476 ((_ is Concat!25304) (reg!16788 (regOne!33430 r!7292))))))

(declare-fun bm!576567 () Bool)

(declare-fun call!576575 () List!65677)

(declare-fun c!1214477 () Bool)

(declare-fun $colon$colon!2300 (List!65677 Regex!16459) List!65677)

(assert (=> bm!576567 (= call!576575 ($colon$colon!2300 (exprs!6343 lt!2411828) (ite (or c!1214477 c!1214476) (regTwo!33430 (reg!16788 (regOne!33430 r!7292))) (reg!16788 (regOne!33430 r!7292)))))))

(declare-fun b!6595240 () Bool)

(declare-fun e!3990951 () (InoxSet Context!11686))

(assert (=> b!6595240 (= e!3990951 ((as const (Array Context!11686 Bool)) false))))

(declare-fun bm!576568 () Bool)

(declare-fun call!576577 () (InoxSet Context!11686))

(declare-fun call!576574 () (InoxSet Context!11686))

(assert (=> bm!576568 (= call!576577 call!576574)))

(declare-fun d!2069279 () Bool)

(declare-fun c!1214475 () Bool)

(assert (=> d!2069279 (= c!1214475 (and ((_ is ElementMatch!16459) (reg!16788 (regOne!33430 r!7292))) (= (c!1214332 (reg!16788 (regOne!33430 r!7292))) (h!72000 s!2326))))))

(assert (=> d!2069279 (= (derivationStepZipperDown!1707 (reg!16788 (regOne!33430 r!7292)) lt!2411828 (h!72000 s!2326)) e!3990955)))

(declare-fun b!6595241 () Bool)

(declare-fun e!3990952 () Bool)

(assert (=> b!6595241 (= c!1214477 e!3990952)))

(declare-fun res!2704258 () Bool)

(assert (=> b!6595241 (=> (not res!2704258) (not e!3990952))))

(assert (=> b!6595241 (= res!2704258 ((_ is Concat!25304) (reg!16788 (regOne!33430 r!7292))))))

(assert (=> b!6595241 (= e!3990954 e!3990953)))

(declare-fun b!6595242 () Bool)

(declare-fun call!576576 () (InoxSet Context!11686))

(assert (=> b!6595242 (= e!3990951 call!576576)))

(declare-fun bm!576569 () Bool)

(assert (=> bm!576569 (= call!576576 call!576577)))

(declare-fun b!6595243 () Bool)

(declare-fun call!576572 () (InoxSet Context!11686))

(assert (=> b!6595243 (= e!3990953 ((_ map or) call!576572 call!576577))))

(declare-fun b!6595244 () Bool)

(assert (=> b!6595244 (= e!3990952 (nullable!6452 (regOne!33430 (reg!16788 (regOne!33430 r!7292)))))))

(declare-fun b!6595245 () Bool)

(assert (=> b!6595245 (= e!3990954 ((_ map or) call!576574 call!576572))))

(declare-fun bm!576570 () Bool)

(declare-fun call!576573 () List!65677)

(assert (=> bm!576570 (= call!576573 call!576575)))

(declare-fun b!6595246 () Bool)

(assert (=> b!6595246 (= e!3990955 (store ((as const (Array Context!11686 Bool)) false) lt!2411828 true))))

(declare-fun b!6595247 () Bool)

(declare-fun c!1214478 () Bool)

(assert (=> b!6595247 (= c!1214478 ((_ is Star!16459) (reg!16788 (regOne!33430 r!7292))))))

(assert (=> b!6595247 (= e!3990950 e!3990951)))

(declare-fun b!6595248 () Bool)

(assert (=> b!6595248 (= e!3990950 call!576576)))

(declare-fun bm!576571 () Bool)

(assert (=> bm!576571 (= call!576572 (derivationStepZipperDown!1707 (ite c!1214479 (regTwo!33431 (reg!16788 (regOne!33430 r!7292))) (regOne!33430 (reg!16788 (regOne!33430 r!7292)))) (ite c!1214479 lt!2411828 (Context!11687 call!576575)) (h!72000 s!2326)))))

(declare-fun bm!576572 () Bool)

(assert (=> bm!576572 (= call!576574 (derivationStepZipperDown!1707 (ite c!1214479 (regOne!33431 (reg!16788 (regOne!33430 r!7292))) (ite c!1214477 (regTwo!33430 (reg!16788 (regOne!33430 r!7292))) (ite c!1214476 (regOne!33430 (reg!16788 (regOne!33430 r!7292))) (reg!16788 (reg!16788 (regOne!33430 r!7292)))))) (ite (or c!1214479 c!1214477) lt!2411828 (Context!11687 call!576573)) (h!72000 s!2326)))))

(assert (= (and d!2069279 c!1214475) b!6595246))

(assert (= (and d!2069279 (not c!1214475)) b!6595238))

(assert (= (and b!6595238 c!1214479) b!6595245))

(assert (= (and b!6595238 (not c!1214479)) b!6595241))

(assert (= (and b!6595241 res!2704258) b!6595244))

(assert (= (and b!6595241 c!1214477) b!6595243))

(assert (= (and b!6595241 (not c!1214477)) b!6595239))

(assert (= (and b!6595239 c!1214476) b!6595248))

(assert (= (and b!6595239 (not c!1214476)) b!6595247))

(assert (= (and b!6595247 c!1214478) b!6595242))

(assert (= (and b!6595247 (not c!1214478)) b!6595240))

(assert (= (or b!6595248 b!6595242) bm!576570))

(assert (= (or b!6595248 b!6595242) bm!576569))

(assert (= (or b!6595243 bm!576570) bm!576567))

(assert (= (or b!6595243 bm!576569) bm!576568))

(assert (= (or b!6595245 b!6595243) bm!576571))

(assert (= (or b!6595245 bm!576568) bm!576572))

(declare-fun m!7372804 () Bool)

(assert (=> bm!576571 m!7372804))

(assert (=> b!6595246 m!7372368))

(declare-fun m!7372806 () Bool)

(assert (=> b!6595244 m!7372806))

(declare-fun m!7372808 () Bool)

(assert (=> bm!576572 m!7372808))

(declare-fun m!7372810 () Bool)

(assert (=> bm!576567 m!7372810))

(assert (=> b!6594807 d!2069279))

(declare-fun d!2069289 () Bool)

(declare-fun nullableFct!2377 (Regex!16459) Bool)

(assert (=> d!2069289 (= (nullable!6452 (regOne!33430 (regOne!33430 r!7292))) (nullableFct!2377 (regOne!33430 (regOne!33430 r!7292))))))

(declare-fun bs!1691562 () Bool)

(assert (= bs!1691562 d!2069289))

(declare-fun m!7372812 () Bool)

(assert (=> bs!1691562 m!7372812))

(assert (=> b!6594806 d!2069289))

(declare-fun b!6595267 () Bool)

(assert (=> b!6595267 true))

(declare-fun bs!1691577 () Bool)

(declare-fun b!6595269 () Bool)

(assert (= bs!1691577 (and b!6595269 b!6595267)))

(declare-fun lambda!367421 () Int)

(declare-fun lambda!367422 () Int)

(declare-fun lt!2411927 () Int)

(declare-fun lt!2411925 () Int)

(assert (=> bs!1691577 (= (= lt!2411927 lt!2411925) (= lambda!367422 lambda!367421))))

(assert (=> b!6595269 true))

(declare-fun d!2069291 () Bool)

(declare-fun e!3990967 () Bool)

(assert (=> d!2069291 e!3990967))

(declare-fun res!2704273 () Bool)

(assert (=> d!2069291 (=> (not res!2704273) (not e!3990967))))

(assert (=> d!2069291 (= res!2704273 (>= lt!2411927 0))))

(declare-fun e!3990966 () Int)

(assert (=> d!2069291 (= lt!2411927 e!3990966)))

(declare-fun c!1214488 () Bool)

(assert (=> d!2069291 (= c!1214488 ((_ is Cons!65554) zl!343))))

(assert (=> d!2069291 (= (zipperDepth!396 zl!343) lt!2411927)))

(assert (=> b!6595267 (= e!3990966 lt!2411925)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!285 (Context!11686) Int)

(assert (=> b!6595267 (= lt!2411925 (maxBigInt!0 (contextDepth!285 (h!72002 zl!343)) (zipperDepth!396 (t!379330 zl!343))))))

(declare-fun lambda!367420 () Int)

(declare-fun lt!2411928 () Unit!159171)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!269 (List!65678 Int Int Int) Unit!159171)

(assert (=> b!6595267 (= lt!2411928 (lemmaForallContextDepthBiggerThanTransitive!269 (t!379330 zl!343) lt!2411925 (zipperDepth!396 (t!379330 zl!343)) lambda!367420))))

(declare-fun forall!15642 (List!65678 Int) Bool)

(assert (=> b!6595267 (forall!15642 (t!379330 zl!343) lambda!367421)))

(declare-fun lt!2411926 () Unit!159171)

(assert (=> b!6595267 (= lt!2411926 lt!2411928)))

(declare-fun b!6595268 () Bool)

(assert (=> b!6595268 (= e!3990966 0)))

(assert (=> b!6595269 (= e!3990967 (forall!15642 zl!343 lambda!367422))))

(assert (= (and d!2069291 c!1214488) b!6595267))

(assert (= (and d!2069291 (not c!1214488)) b!6595268))

(assert (= (and d!2069291 res!2704273) b!6595269))

(declare-fun m!7372826 () Bool)

(assert (=> b!6595267 m!7372826))

(declare-fun m!7372828 () Bool)

(assert (=> b!6595267 m!7372828))

(assert (=> b!6595267 m!7372826))

(declare-fun m!7372830 () Bool)

(assert (=> b!6595267 m!7372830))

(declare-fun m!7372832 () Bool)

(assert (=> b!6595267 m!7372832))

(assert (=> b!6595267 m!7372828))

(assert (=> b!6595267 m!7372826))

(declare-fun m!7372834 () Bool)

(assert (=> b!6595267 m!7372834))

(declare-fun m!7372836 () Bool)

(assert (=> b!6595269 m!7372836))

(assert (=> b!6594784 d!2069291))

(declare-fun bs!1691578 () Bool)

(declare-fun b!6595272 () Bool)

(assert (= bs!1691578 (and b!6595272 b!6595267)))

(declare-fun lambda!367423 () Int)

(assert (=> bs!1691578 (= lambda!367423 lambda!367420)))

(declare-fun lt!2411929 () Int)

(declare-fun lambda!367424 () Int)

(assert (=> bs!1691578 (= (= lt!2411929 lt!2411925) (= lambda!367424 lambda!367421))))

(declare-fun bs!1691579 () Bool)

(assert (= bs!1691579 (and b!6595272 b!6595269)))

(assert (=> bs!1691579 (= (= lt!2411929 lt!2411927) (= lambda!367424 lambda!367422))))

(assert (=> b!6595272 true))

(declare-fun bs!1691580 () Bool)

(declare-fun b!6595274 () Bool)

(assert (= bs!1691580 (and b!6595274 b!6595267)))

(declare-fun lambda!367425 () Int)

(declare-fun lt!2411931 () Int)

(assert (=> bs!1691580 (= (= lt!2411931 lt!2411925) (= lambda!367425 lambda!367421))))

(declare-fun bs!1691581 () Bool)

(assert (= bs!1691581 (and b!6595274 b!6595269)))

(assert (=> bs!1691581 (= (= lt!2411931 lt!2411927) (= lambda!367425 lambda!367422))))

(declare-fun bs!1691582 () Bool)

(assert (= bs!1691582 (and b!6595274 b!6595272)))

(assert (=> bs!1691582 (= (= lt!2411931 lt!2411929) (= lambda!367425 lambda!367424))))

(assert (=> b!6595274 true))

(declare-fun d!2069299 () Bool)

(declare-fun e!3990969 () Bool)

(assert (=> d!2069299 e!3990969))

(declare-fun res!2704274 () Bool)

(assert (=> d!2069299 (=> (not res!2704274) (not e!3990969))))

(assert (=> d!2069299 (= res!2704274 (>= lt!2411931 0))))

(declare-fun e!3990968 () Int)

(assert (=> d!2069299 (= lt!2411931 e!3990968)))

(declare-fun c!1214489 () Bool)

(assert (=> d!2069299 (= c!1214489 ((_ is Cons!65554) lt!2411831))))

(assert (=> d!2069299 (= (zipperDepth!396 lt!2411831) lt!2411931)))

(assert (=> b!6595272 (= e!3990968 lt!2411929)))

(assert (=> b!6595272 (= lt!2411929 (maxBigInt!0 (contextDepth!285 (h!72002 lt!2411831)) (zipperDepth!396 (t!379330 lt!2411831))))))

(declare-fun lt!2411932 () Unit!159171)

(assert (=> b!6595272 (= lt!2411932 (lemmaForallContextDepthBiggerThanTransitive!269 (t!379330 lt!2411831) lt!2411929 (zipperDepth!396 (t!379330 lt!2411831)) lambda!367423))))

(assert (=> b!6595272 (forall!15642 (t!379330 lt!2411831) lambda!367424)))

(declare-fun lt!2411930 () Unit!159171)

(assert (=> b!6595272 (= lt!2411930 lt!2411932)))

(declare-fun b!6595273 () Bool)

(assert (=> b!6595273 (= e!3990968 0)))

(assert (=> b!6595274 (= e!3990969 (forall!15642 lt!2411831 lambda!367425))))

(assert (= (and d!2069299 c!1214489) b!6595272))

(assert (= (and d!2069299 (not c!1214489)) b!6595273))

(assert (= (and d!2069299 res!2704274) b!6595274))

(declare-fun m!7372838 () Bool)

(assert (=> b!6595272 m!7372838))

(declare-fun m!7372840 () Bool)

(assert (=> b!6595272 m!7372840))

(assert (=> b!6595272 m!7372838))

(declare-fun m!7372842 () Bool)

(assert (=> b!6595272 m!7372842))

(declare-fun m!7372844 () Bool)

(assert (=> b!6595272 m!7372844))

(assert (=> b!6595272 m!7372840))

(assert (=> b!6595272 m!7372838))

(declare-fun m!7372846 () Bool)

(assert (=> b!6595272 m!7372846))

(declare-fun m!7372848 () Bool)

(assert (=> b!6595274 m!7372848))

(assert (=> b!6594784 d!2069299))

(declare-fun d!2069301 () Bool)

(declare-fun dynLambda!26106 (Int Context!11686) (InoxSet Context!11686))

(assert (=> d!2069301 (= (flatMap!1964 lt!2411837 lambda!367367) (dynLambda!26106 lambda!367367 lt!2411838))))

(declare-fun lt!2411937 () Unit!159171)

(declare-fun choose!49197 ((InoxSet Context!11686) Context!11686 Int) Unit!159171)

(assert (=> d!2069301 (= lt!2411937 (choose!49197 lt!2411837 lt!2411838 lambda!367367))))

(assert (=> d!2069301 (= lt!2411837 (store ((as const (Array Context!11686 Bool)) false) lt!2411838 true))))

(assert (=> d!2069301 (= (lemmaFlatMapOnSingletonSet!1490 lt!2411837 lt!2411838 lambda!367367) lt!2411937)))

(declare-fun b_lambda!249667 () Bool)

(assert (=> (not b_lambda!249667) (not d!2069301)))

(declare-fun bs!1691583 () Bool)

(assert (= bs!1691583 d!2069301))

(assert (=> bs!1691583 m!7372358))

(declare-fun m!7372850 () Bool)

(assert (=> bs!1691583 m!7372850))

(declare-fun m!7372852 () Bool)

(assert (=> bs!1691583 m!7372852))

(assert (=> bs!1691583 m!7372362))

(assert (=> b!6594805 d!2069301))

(declare-fun d!2069303 () Bool)

(declare-fun lt!2411940 () Regex!16459)

(assert (=> d!2069303 (validRegex!8195 lt!2411940)))

(assert (=> d!2069303 (= lt!2411940 (generalisedUnion!2303 (unfocusZipperList!1880 (Cons!65554 lt!2411838 Nil!65554))))))

(assert (=> d!2069303 (= (unfocusZipper!2201 (Cons!65554 lt!2411838 Nil!65554)) lt!2411940)))

(declare-fun bs!1691584 () Bool)

(assert (= bs!1691584 d!2069303))

(declare-fun m!7372854 () Bool)

(assert (=> bs!1691584 m!7372854))

(declare-fun m!7372856 () Bool)

(assert (=> bs!1691584 m!7372856))

(assert (=> bs!1691584 m!7372856))

(declare-fun m!7372858 () Bool)

(assert (=> bs!1691584 m!7372858))

(assert (=> b!6594805 d!2069303))

(declare-fun d!2069305 () Bool)

(declare-fun choose!49198 ((InoxSet Context!11686) Int) (InoxSet Context!11686))

(assert (=> d!2069305 (= (flatMap!1964 lt!2411810 lambda!367367) (choose!49198 lt!2411810 lambda!367367))))

(declare-fun bs!1691585 () Bool)

(assert (= bs!1691585 d!2069305))

(declare-fun m!7372860 () Bool)

(assert (=> bs!1691585 m!7372860))

(assert (=> b!6594805 d!2069305))

(declare-fun d!2069307 () Bool)

(assert (=> d!2069307 (= (flatMap!1964 lt!2411810 lambda!367367) (dynLambda!26106 lambda!367367 lt!2411828))))

(declare-fun lt!2411941 () Unit!159171)

(assert (=> d!2069307 (= lt!2411941 (choose!49197 lt!2411810 lt!2411828 lambda!367367))))

(assert (=> d!2069307 (= lt!2411810 (store ((as const (Array Context!11686 Bool)) false) lt!2411828 true))))

(assert (=> d!2069307 (= (lemmaFlatMapOnSingletonSet!1490 lt!2411810 lt!2411828 lambda!367367) lt!2411941)))

(declare-fun b_lambda!249669 () Bool)

(assert (=> (not b_lambda!249669) (not d!2069307)))

(declare-fun bs!1691586 () Bool)

(assert (= bs!1691586 d!2069307))

(assert (=> bs!1691586 m!7372360))

(declare-fun m!7372862 () Bool)

(assert (=> bs!1691586 m!7372862))

(declare-fun m!7372864 () Bool)

(assert (=> bs!1691586 m!7372864))

(assert (=> bs!1691586 m!7372368))

(assert (=> b!6594805 d!2069307))

(declare-fun d!2069309 () Bool)

(assert (=> d!2069309 (= (flatMap!1964 lt!2411837 lambda!367367) (choose!49198 lt!2411837 lambda!367367))))

(declare-fun bs!1691587 () Bool)

(assert (= bs!1691587 d!2069309))

(declare-fun m!7372866 () Bool)

(assert (=> bs!1691587 m!7372866))

(assert (=> b!6594805 d!2069309))

(declare-fun bm!576603 () Bool)

(declare-fun call!576608 () (InoxSet Context!11686))

(assert (=> bm!576603 (= call!576608 (derivationStepZipperDown!1707 (h!72001 (exprs!6343 lt!2411838)) (Context!11687 (t!379329 (exprs!6343 lt!2411838))) (h!72000 s!2326)))))

(declare-fun e!3991024 () (InoxSet Context!11686))

(declare-fun b!6595363 () Bool)

(assert (=> b!6595363 (= e!3991024 ((_ map or) call!576608 (derivationStepZipperUp!1633 (Context!11687 (t!379329 (exprs!6343 lt!2411838))) (h!72000 s!2326))))))

(declare-fun b!6595364 () Bool)

(declare-fun e!3991023 () Bool)

(assert (=> b!6595364 (= e!3991023 (nullable!6452 (h!72001 (exprs!6343 lt!2411838))))))

(declare-fun d!2069311 () Bool)

(declare-fun c!1214526 () Bool)

(assert (=> d!2069311 (= c!1214526 e!3991023)))

(declare-fun res!2704291 () Bool)

(assert (=> d!2069311 (=> (not res!2704291) (not e!3991023))))

(assert (=> d!2069311 (= res!2704291 ((_ is Cons!65553) (exprs!6343 lt!2411838)))))

(assert (=> d!2069311 (= (derivationStepZipperUp!1633 lt!2411838 (h!72000 s!2326)) e!3991024)))

(declare-fun b!6595365 () Bool)

(declare-fun e!3991022 () (InoxSet Context!11686))

(assert (=> b!6595365 (= e!3991022 call!576608)))

(declare-fun b!6595366 () Bool)

(assert (=> b!6595366 (= e!3991024 e!3991022)))

(declare-fun c!1214527 () Bool)

(assert (=> b!6595366 (= c!1214527 ((_ is Cons!65553) (exprs!6343 lt!2411838)))))

(declare-fun b!6595367 () Bool)

(assert (=> b!6595367 (= e!3991022 ((as const (Array Context!11686 Bool)) false))))

(assert (= (and d!2069311 res!2704291) b!6595364))

(assert (= (and d!2069311 c!1214526) b!6595363))

(assert (= (and d!2069311 (not c!1214526)) b!6595366))

(assert (= (and b!6595366 c!1214527) b!6595365))

(assert (= (and b!6595366 (not c!1214527)) b!6595367))

(assert (= (or b!6595363 b!6595365) bm!576603))

(declare-fun m!7372888 () Bool)

(assert (=> bm!576603 m!7372888))

(declare-fun m!7372890 () Bool)

(assert (=> b!6595363 m!7372890))

(declare-fun m!7372892 () Bool)

(assert (=> b!6595364 m!7372892))

(assert (=> b!6594805 d!2069311))

(declare-fun bm!576604 () Bool)

(declare-fun call!576609 () (InoxSet Context!11686))

(assert (=> bm!576604 (= call!576609 (derivationStepZipperDown!1707 (h!72001 (exprs!6343 lt!2411828)) (Context!11687 (t!379329 (exprs!6343 lt!2411828))) (h!72000 s!2326)))))

(declare-fun b!6595368 () Bool)

(declare-fun e!3991027 () (InoxSet Context!11686))

(assert (=> b!6595368 (= e!3991027 ((_ map or) call!576609 (derivationStepZipperUp!1633 (Context!11687 (t!379329 (exprs!6343 lt!2411828))) (h!72000 s!2326))))))

(declare-fun b!6595369 () Bool)

(declare-fun e!3991026 () Bool)

(assert (=> b!6595369 (= e!3991026 (nullable!6452 (h!72001 (exprs!6343 lt!2411828))))))

(declare-fun d!2069317 () Bool)

(declare-fun c!1214528 () Bool)

(assert (=> d!2069317 (= c!1214528 e!3991026)))

(declare-fun res!2704292 () Bool)

(assert (=> d!2069317 (=> (not res!2704292) (not e!3991026))))

(assert (=> d!2069317 (= res!2704292 ((_ is Cons!65553) (exprs!6343 lt!2411828)))))

(assert (=> d!2069317 (= (derivationStepZipperUp!1633 lt!2411828 (h!72000 s!2326)) e!3991027)))

(declare-fun b!6595370 () Bool)

(declare-fun e!3991025 () (InoxSet Context!11686))

(assert (=> b!6595370 (= e!3991025 call!576609)))

(declare-fun b!6595371 () Bool)

(assert (=> b!6595371 (= e!3991027 e!3991025)))

(declare-fun c!1214529 () Bool)

(assert (=> b!6595371 (= c!1214529 ((_ is Cons!65553) (exprs!6343 lt!2411828)))))

(declare-fun b!6595372 () Bool)

(assert (=> b!6595372 (= e!3991025 ((as const (Array Context!11686 Bool)) false))))

(assert (= (and d!2069317 res!2704292) b!6595369))

(assert (= (and d!2069317 c!1214528) b!6595368))

(assert (= (and d!2069317 (not c!1214528)) b!6595371))

(assert (= (and b!6595371 c!1214529) b!6595370))

(assert (= (and b!6595371 (not c!1214529)) b!6595372))

(assert (= (or b!6595368 b!6595370) bm!576604))

(declare-fun m!7372910 () Bool)

(assert (=> bm!576604 m!7372910))

(declare-fun m!7372914 () Bool)

(assert (=> b!6595368 m!7372914))

(declare-fun m!7372916 () Bool)

(assert (=> b!6595369 m!7372916))

(assert (=> b!6594805 d!2069317))

(declare-fun b!6595447 () Bool)

(declare-fun e!3991066 () Bool)

(declare-fun lt!2411947 () Regex!16459)

(declare-fun isUnion!1276 (Regex!16459) Bool)

(assert (=> b!6595447 (= e!3991066 (isUnion!1276 lt!2411947))))

(declare-fun b!6595448 () Bool)

(declare-fun e!3991065 () Regex!16459)

(assert (=> b!6595448 (= e!3991065 (Union!16459 (h!72001 (unfocusZipperList!1880 zl!343)) (generalisedUnion!2303 (t!379329 (unfocusZipperList!1880 zl!343)))))))

(declare-fun b!6595449 () Bool)

(declare-fun e!3991063 () Regex!16459)

(assert (=> b!6595449 (= e!3991063 (h!72001 (unfocusZipperList!1880 zl!343)))))

(declare-fun d!2069319 () Bool)

(declare-fun e!3991067 () Bool)

(assert (=> d!2069319 e!3991067))

(declare-fun res!2704297 () Bool)

(assert (=> d!2069319 (=> (not res!2704297) (not e!3991067))))

(assert (=> d!2069319 (= res!2704297 (validRegex!8195 lt!2411947))))

(assert (=> d!2069319 (= lt!2411947 e!3991063)))

(declare-fun c!1214538 () Bool)

(declare-fun e!3991064 () Bool)

(assert (=> d!2069319 (= c!1214538 e!3991064)))

(declare-fun res!2704298 () Bool)

(assert (=> d!2069319 (=> (not res!2704298) (not e!3991064))))

(assert (=> d!2069319 (= res!2704298 ((_ is Cons!65553) (unfocusZipperList!1880 zl!343)))))

(declare-fun lambda!367429 () Int)

(declare-fun forall!15643 (List!65677 Int) Bool)

(assert (=> d!2069319 (forall!15643 (unfocusZipperList!1880 zl!343) lambda!367429)))

(assert (=> d!2069319 (= (generalisedUnion!2303 (unfocusZipperList!1880 zl!343)) lt!2411947)))

(declare-fun b!6595450 () Bool)

(declare-fun e!3991068 () Bool)

(assert (=> b!6595450 (= e!3991067 e!3991068)))

(declare-fun c!1214541 () Bool)

(assert (=> b!6595450 (= c!1214541 (isEmpty!37814 (unfocusZipperList!1880 zl!343)))))

(declare-fun b!6595451 () Bool)

(assert (=> b!6595451 (= e!3991065 EmptyLang!16459)))

(declare-fun b!6595452 () Bool)

(assert (=> b!6595452 (= e!3991068 e!3991066)))

(declare-fun c!1214539 () Bool)

(declare-fun tail!12454 (List!65677) List!65677)

(assert (=> b!6595452 (= c!1214539 (isEmpty!37814 (tail!12454 (unfocusZipperList!1880 zl!343))))))

(declare-fun b!6595453 () Bool)

(assert (=> b!6595453 (= e!3991064 (isEmpty!37814 (t!379329 (unfocusZipperList!1880 zl!343))))))

(declare-fun b!6595454 () Bool)

(assert (=> b!6595454 (= e!3991063 e!3991065)))

(declare-fun c!1214540 () Bool)

(assert (=> b!6595454 (= c!1214540 ((_ is Cons!65553) (unfocusZipperList!1880 zl!343)))))

(declare-fun b!6595455 () Bool)

(declare-fun isEmptyLang!1846 (Regex!16459) Bool)

(assert (=> b!6595455 (= e!3991068 (isEmptyLang!1846 lt!2411947))))

(declare-fun b!6595456 () Bool)

(declare-fun head!13369 (List!65677) Regex!16459)

(assert (=> b!6595456 (= e!3991066 (= lt!2411947 (head!13369 (unfocusZipperList!1880 zl!343))))))

(assert (= (and d!2069319 res!2704298) b!6595453))

(assert (= (and d!2069319 c!1214538) b!6595449))

(assert (= (and d!2069319 (not c!1214538)) b!6595454))

(assert (= (and b!6595454 c!1214540) b!6595448))

(assert (= (and b!6595454 (not c!1214540)) b!6595451))

(assert (= (and d!2069319 res!2704297) b!6595450))

(assert (= (and b!6595450 c!1214541) b!6595455))

(assert (= (and b!6595450 (not c!1214541)) b!6595452))

(assert (= (and b!6595452 c!1214539) b!6595456))

(assert (= (and b!6595452 (not c!1214539)) b!6595447))

(declare-fun m!7372922 () Bool)

(assert (=> b!6595455 m!7372922))

(assert (=> b!6595450 m!7372470))

(declare-fun m!7372924 () Bool)

(assert (=> b!6595450 m!7372924))

(assert (=> b!6595452 m!7372470))

(declare-fun m!7372926 () Bool)

(assert (=> b!6595452 m!7372926))

(assert (=> b!6595452 m!7372926))

(declare-fun m!7372928 () Bool)

(assert (=> b!6595452 m!7372928))

(assert (=> b!6595456 m!7372470))

(declare-fun m!7372930 () Bool)

(assert (=> b!6595456 m!7372930))

(declare-fun m!7372932 () Bool)

(assert (=> b!6595453 m!7372932))

(declare-fun m!7372934 () Bool)

(assert (=> d!2069319 m!7372934))

(assert (=> d!2069319 m!7372470))

(declare-fun m!7372936 () Bool)

(assert (=> d!2069319 m!7372936))

(declare-fun m!7372938 () Bool)

(assert (=> b!6595448 m!7372938))

(declare-fun m!7372940 () Bool)

(assert (=> b!6595447 m!7372940))

(assert (=> b!6594809 d!2069319))

(declare-fun bs!1691598 () Bool)

(declare-fun d!2069331 () Bool)

(assert (= bs!1691598 (and d!2069331 d!2069319)))

(declare-fun lambda!367432 () Int)

(assert (=> bs!1691598 (= lambda!367432 lambda!367429)))

(declare-fun lt!2411950 () List!65677)

(assert (=> d!2069331 (forall!15643 lt!2411950 lambda!367432)))

(declare-fun e!3991071 () List!65677)

(assert (=> d!2069331 (= lt!2411950 e!3991071)))

(declare-fun c!1214544 () Bool)

(assert (=> d!2069331 (= c!1214544 ((_ is Cons!65554) zl!343))))

(assert (=> d!2069331 (= (unfocusZipperList!1880 zl!343) lt!2411950)))

(declare-fun b!6595461 () Bool)

(assert (=> b!6595461 (= e!3991071 (Cons!65553 (generalisedConcat!2056 (exprs!6343 (h!72002 zl!343))) (unfocusZipperList!1880 (t!379330 zl!343))))))

(declare-fun b!6595462 () Bool)

(assert (=> b!6595462 (= e!3991071 Nil!65553)))

(assert (= (and d!2069331 c!1214544) b!6595461))

(assert (= (and d!2069331 (not c!1214544)) b!6595462))

(declare-fun m!7372942 () Bool)

(assert (=> d!2069331 m!7372942))

(assert (=> b!6595461 m!7372406))

(declare-fun m!7372944 () Bool)

(assert (=> b!6595461 m!7372944))

(assert (=> b!6594809 d!2069331))

(declare-fun bs!1691599 () Bool)

(declare-fun d!2069333 () Bool)

(assert (= bs!1691599 (and d!2069333 b!6594812)))

(declare-fun lambda!367435 () Int)

(assert (=> bs!1691599 (= lambda!367435 lambda!367367)))

(assert (=> d!2069333 true))

(assert (=> d!2069333 (= (derivationStepZipper!2425 lt!2411821 (h!72000 s!2326)) (flatMap!1964 lt!2411821 lambda!367435))))

(declare-fun bs!1691600 () Bool)

(assert (= bs!1691600 d!2069333))

(declare-fun m!7372946 () Bool)

(assert (=> bs!1691600 m!7372946))

(assert (=> b!6594808 d!2069333))

(declare-fun d!2069335 () Bool)

(assert (=> d!2069335 (= (flatMap!1964 lt!2411821 lambda!367367) (choose!49198 lt!2411821 lambda!367367))))

(declare-fun bs!1691601 () Bool)

(assert (= bs!1691601 d!2069335))

(declare-fun m!7372948 () Bool)

(assert (=> bs!1691601 m!7372948))

(assert (=> b!6594808 d!2069335))

(declare-fun bm!576605 () Bool)

(declare-fun call!576610 () (InoxSet Context!11686))

(assert (=> bm!576605 (= call!576610 (derivationStepZipperDown!1707 (h!72001 (exprs!6343 lt!2411824)) (Context!11687 (t!379329 (exprs!6343 lt!2411824))) (h!72000 s!2326)))))

(declare-fun e!3991074 () (InoxSet Context!11686))

(declare-fun b!6595465 () Bool)

(assert (=> b!6595465 (= e!3991074 ((_ map or) call!576610 (derivationStepZipperUp!1633 (Context!11687 (t!379329 (exprs!6343 lt!2411824))) (h!72000 s!2326))))))

(declare-fun b!6595466 () Bool)

(declare-fun e!3991073 () Bool)

(assert (=> b!6595466 (= e!3991073 (nullable!6452 (h!72001 (exprs!6343 lt!2411824))))))

(declare-fun d!2069337 () Bool)

(declare-fun c!1214547 () Bool)

(assert (=> d!2069337 (= c!1214547 e!3991073)))

(declare-fun res!2704299 () Bool)

(assert (=> d!2069337 (=> (not res!2704299) (not e!3991073))))

(assert (=> d!2069337 (= res!2704299 ((_ is Cons!65553) (exprs!6343 lt!2411824)))))

(assert (=> d!2069337 (= (derivationStepZipperUp!1633 lt!2411824 (h!72000 s!2326)) e!3991074)))

(declare-fun b!6595467 () Bool)

(declare-fun e!3991072 () (InoxSet Context!11686))

(assert (=> b!6595467 (= e!3991072 call!576610)))

(declare-fun b!6595468 () Bool)

(assert (=> b!6595468 (= e!3991074 e!3991072)))

(declare-fun c!1214548 () Bool)

(assert (=> b!6595468 (= c!1214548 ((_ is Cons!65553) (exprs!6343 lt!2411824)))))

(declare-fun b!6595469 () Bool)

(assert (=> b!6595469 (= e!3991072 ((as const (Array Context!11686 Bool)) false))))

(assert (= (and d!2069337 res!2704299) b!6595466))

(assert (= (and d!2069337 c!1214547) b!6595465))

(assert (= (and d!2069337 (not c!1214547)) b!6595468))

(assert (= (and b!6595468 c!1214548) b!6595467))

(assert (= (and b!6595468 (not c!1214548)) b!6595469))

(assert (= (or b!6595465 b!6595467) bm!576605))

(declare-fun m!7372950 () Bool)

(assert (=> bm!576605 m!7372950))

(declare-fun m!7372952 () Bool)

(assert (=> b!6595465 m!7372952))

(declare-fun m!7372954 () Bool)

(assert (=> b!6595466 m!7372954))

(assert (=> b!6594808 d!2069337))

(declare-fun d!2069339 () Bool)

(assert (=> d!2069339 (= (flatMap!1964 lt!2411821 lambda!367367) (dynLambda!26106 lambda!367367 lt!2411824))))

(declare-fun lt!2411951 () Unit!159171)

(assert (=> d!2069339 (= lt!2411951 (choose!49197 lt!2411821 lt!2411824 lambda!367367))))

(assert (=> d!2069339 (= lt!2411821 (store ((as const (Array Context!11686 Bool)) false) lt!2411824 true))))

(assert (=> d!2069339 (= (lemmaFlatMapOnSingletonSet!1490 lt!2411821 lt!2411824 lambda!367367) lt!2411951)))

(declare-fun b_lambda!249681 () Bool)

(assert (=> (not b_lambda!249681) (not d!2069339)))

(declare-fun bs!1691602 () Bool)

(assert (= bs!1691602 d!2069339))

(assert (=> bs!1691602 m!7372418))

(declare-fun m!7372956 () Bool)

(assert (=> bs!1691602 m!7372956))

(declare-fun m!7372958 () Bool)

(assert (=> bs!1691602 m!7372958))

(assert (=> bs!1691602 m!7372420))

(assert (=> b!6594808 d!2069339))

(declare-fun d!2069341 () Bool)

(declare-fun lt!2411952 () Regex!16459)

(assert (=> d!2069341 (validRegex!8195 lt!2411952)))

(assert (=> d!2069341 (= lt!2411952 (generalisedUnion!2303 (unfocusZipperList!1880 (Cons!65554 lt!2411825 Nil!65554))))))

(assert (=> d!2069341 (= (unfocusZipper!2201 (Cons!65554 lt!2411825 Nil!65554)) lt!2411952)))

(declare-fun bs!1691603 () Bool)

(assert (= bs!1691603 d!2069341))

(declare-fun m!7372960 () Bool)

(assert (=> bs!1691603 m!7372960))

(declare-fun m!7372962 () Bool)

(assert (=> bs!1691603 m!7372962))

(assert (=> bs!1691603 m!7372962))

(declare-fun m!7372964 () Bool)

(assert (=> bs!1691603 m!7372964))

(assert (=> b!6594787 d!2069341))

(declare-fun d!2069343 () Bool)

(assert (=> d!2069343 (= (flatMap!1964 lt!2411836 lambda!367367) (choose!49198 lt!2411836 lambda!367367))))

(declare-fun bs!1691604 () Bool)

(assert (= bs!1691604 d!2069343))

(declare-fun m!7372966 () Bool)

(assert (=> bs!1691604 m!7372966))

(assert (=> b!6594780 d!2069343))

(declare-fun bm!576606 () Bool)

(declare-fun call!576611 () (InoxSet Context!11686))

(assert (=> bm!576606 (= call!576611 (derivationStepZipperDown!1707 (h!72001 (exprs!6343 lt!2411825)) (Context!11687 (t!379329 (exprs!6343 lt!2411825))) (h!72000 s!2326)))))

(declare-fun b!6595470 () Bool)

(declare-fun e!3991077 () (InoxSet Context!11686))

(assert (=> b!6595470 (= e!3991077 ((_ map or) call!576611 (derivationStepZipperUp!1633 (Context!11687 (t!379329 (exprs!6343 lt!2411825))) (h!72000 s!2326))))))

(declare-fun b!6595471 () Bool)

(declare-fun e!3991076 () Bool)

(assert (=> b!6595471 (= e!3991076 (nullable!6452 (h!72001 (exprs!6343 lt!2411825))))))

(declare-fun d!2069345 () Bool)

(declare-fun c!1214549 () Bool)

(assert (=> d!2069345 (= c!1214549 e!3991076)))

(declare-fun res!2704300 () Bool)

(assert (=> d!2069345 (=> (not res!2704300) (not e!3991076))))

(assert (=> d!2069345 (= res!2704300 ((_ is Cons!65553) (exprs!6343 lt!2411825)))))

(assert (=> d!2069345 (= (derivationStepZipperUp!1633 lt!2411825 (h!72000 s!2326)) e!3991077)))

(declare-fun b!6595472 () Bool)

(declare-fun e!3991075 () (InoxSet Context!11686))

(assert (=> b!6595472 (= e!3991075 call!576611)))

(declare-fun b!6595473 () Bool)

(assert (=> b!6595473 (= e!3991077 e!3991075)))

(declare-fun c!1214550 () Bool)

(assert (=> b!6595473 (= c!1214550 ((_ is Cons!65553) (exprs!6343 lt!2411825)))))

(declare-fun b!6595474 () Bool)

(assert (=> b!6595474 (= e!3991075 ((as const (Array Context!11686 Bool)) false))))

(assert (= (and d!2069345 res!2704300) b!6595471))

(assert (= (and d!2069345 c!1214549) b!6595470))

(assert (= (and d!2069345 (not c!1214549)) b!6595473))

(assert (= (and b!6595473 c!1214550) b!6595472))

(assert (= (and b!6595473 (not c!1214550)) b!6595474))

(assert (= (or b!6595470 b!6595472) bm!576606))

(declare-fun m!7372968 () Bool)

(assert (=> bm!576606 m!7372968))

(declare-fun m!7372970 () Bool)

(assert (=> b!6595470 m!7372970))

(declare-fun m!7372972 () Bool)

(assert (=> b!6595471 m!7372972))

(assert (=> b!6594780 d!2069345))

(declare-fun d!2069347 () Bool)

(assert (=> d!2069347 (= (flatMap!1964 lt!2411836 lambda!367367) (dynLambda!26106 lambda!367367 lt!2411825))))

(declare-fun lt!2411953 () Unit!159171)

(assert (=> d!2069347 (= lt!2411953 (choose!49197 lt!2411836 lt!2411825 lambda!367367))))

(assert (=> d!2069347 (= lt!2411836 (store ((as const (Array Context!11686 Bool)) false) lt!2411825 true))))

(assert (=> d!2069347 (= (lemmaFlatMapOnSingletonSet!1490 lt!2411836 lt!2411825 lambda!367367) lt!2411953)))

(declare-fun b_lambda!249683 () Bool)

(assert (=> (not b_lambda!249683) (not d!2069347)))

(declare-fun bs!1691605 () Bool)

(assert (= bs!1691605 d!2069347))

(assert (=> bs!1691605 m!7372456))

(declare-fun m!7372974 () Bool)

(assert (=> bs!1691605 m!7372974))

(declare-fun m!7372976 () Bool)

(assert (=> bs!1691605 m!7372976))

(assert (=> bs!1691605 m!7372454))

(assert (=> b!6594780 d!2069347))

(declare-fun bs!1691606 () Bool)

(declare-fun d!2069349 () Bool)

(assert (= bs!1691606 (and d!2069349 b!6594812)))

(declare-fun lambda!367436 () Int)

(assert (=> bs!1691606 (= lambda!367436 lambda!367367)))

(declare-fun bs!1691607 () Bool)

(assert (= bs!1691607 (and d!2069349 d!2069333)))

(assert (=> bs!1691607 (= lambda!367436 lambda!367435)))

(assert (=> d!2069349 true))

(assert (=> d!2069349 (= (derivationStepZipper!2425 lt!2411836 (h!72000 s!2326)) (flatMap!1964 lt!2411836 lambda!367436))))

(declare-fun bs!1691608 () Bool)

(assert (= bs!1691608 d!2069349))

(declare-fun m!7372978 () Bool)

(assert (=> bs!1691608 m!7372978))

(assert (=> b!6594780 d!2069349))

(declare-fun b!6595493 () Bool)

(declare-fun lt!2411962 () Unit!159171)

(declare-fun lt!2411960 () Unit!159171)

(assert (=> b!6595493 (= lt!2411962 lt!2411960)))

(declare-fun ++!14604 (List!65676 List!65676) List!65676)

(assert (=> b!6595493 (= (++!14604 (++!14604 Nil!65552 (Cons!65552 (h!72000 s!2326) Nil!65552)) (t!379328 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2601 (List!65676 C!33188 List!65676 List!65676) Unit!159171)

(assert (=> b!6595493 (= lt!2411960 (lemmaMoveElementToOtherListKeepsConcatEq!2601 Nil!65552 (h!72000 s!2326) (t!379328 s!2326) s!2326))))

(declare-fun e!3991089 () Option!16350)

(assert (=> b!6595493 (= e!3991089 (findConcatSeparation!2764 (regOne!33430 r!7292) (regTwo!33430 r!7292) (++!14604 Nil!65552 (Cons!65552 (h!72000 s!2326) Nil!65552)) (t!379328 s!2326) s!2326))))

(declare-fun b!6595494 () Bool)

(declare-fun e!3991091 () Bool)

(assert (=> b!6595494 (= e!3991091 (matchR!8642 (regTwo!33430 r!7292) s!2326))))

(declare-fun b!6595495 () Bool)

(assert (=> b!6595495 (= e!3991089 None!16349)))

(declare-fun d!2069351 () Bool)

(declare-fun e!3991092 () Bool)

(assert (=> d!2069351 e!3991092))

(declare-fun res!2704311 () Bool)

(assert (=> d!2069351 (=> res!2704311 e!3991092)))

(declare-fun e!3991088 () Bool)

(assert (=> d!2069351 (= res!2704311 e!3991088)))

(declare-fun res!2704313 () Bool)

(assert (=> d!2069351 (=> (not res!2704313) (not e!3991088))))

(declare-fun lt!2411961 () Option!16350)

(assert (=> d!2069351 (= res!2704313 (isDefined!13053 lt!2411961))))

(declare-fun e!3991090 () Option!16350)

(assert (=> d!2069351 (= lt!2411961 e!3991090)))

(declare-fun c!1214555 () Bool)

(assert (=> d!2069351 (= c!1214555 e!3991091)))

(declare-fun res!2704314 () Bool)

(assert (=> d!2069351 (=> (not res!2704314) (not e!3991091))))

(assert (=> d!2069351 (= res!2704314 (matchR!8642 (regOne!33430 r!7292) Nil!65552))))

(assert (=> d!2069351 (validRegex!8195 (regOne!33430 r!7292))))

(assert (=> d!2069351 (= (findConcatSeparation!2764 (regOne!33430 r!7292) (regTwo!33430 r!7292) Nil!65552 s!2326 s!2326) lt!2411961)))

(declare-fun b!6595496 () Bool)

(declare-fun res!2704315 () Bool)

(assert (=> b!6595496 (=> (not res!2704315) (not e!3991088))))

(declare-fun get!22769 (Option!16350) tuple2!66876)

(assert (=> b!6595496 (= res!2704315 (matchR!8642 (regOne!33430 r!7292) (_1!36741 (get!22769 lt!2411961))))))

(declare-fun b!6595497 () Bool)

(assert (=> b!6595497 (= e!3991088 (= (++!14604 (_1!36741 (get!22769 lt!2411961)) (_2!36741 (get!22769 lt!2411961))) s!2326))))

(declare-fun b!6595498 () Bool)

(assert (=> b!6595498 (= e!3991092 (not (isDefined!13053 lt!2411961)))))

(declare-fun b!6595499 () Bool)

(assert (=> b!6595499 (= e!3991090 (Some!16349 (tuple2!66877 Nil!65552 s!2326)))))

(declare-fun b!6595500 () Bool)

(assert (=> b!6595500 (= e!3991090 e!3991089)))

(declare-fun c!1214556 () Bool)

(assert (=> b!6595500 (= c!1214556 ((_ is Nil!65552) s!2326))))

(declare-fun b!6595501 () Bool)

(declare-fun res!2704312 () Bool)

(assert (=> b!6595501 (=> (not res!2704312) (not e!3991088))))

(assert (=> b!6595501 (= res!2704312 (matchR!8642 (regTwo!33430 r!7292) (_2!36741 (get!22769 lt!2411961))))))

(assert (= (and d!2069351 res!2704314) b!6595494))

(assert (= (and d!2069351 c!1214555) b!6595499))

(assert (= (and d!2069351 (not c!1214555)) b!6595500))

(assert (= (and b!6595500 c!1214556) b!6595495))

(assert (= (and b!6595500 (not c!1214556)) b!6595493))

(assert (= (and d!2069351 res!2704313) b!6595496))

(assert (= (and b!6595496 res!2704315) b!6595501))

(assert (= (and b!6595501 res!2704312) b!6595497))

(assert (= (and d!2069351 (not res!2704311)) b!6595498))

(assert (=> b!6595494 m!7372342))

(declare-fun m!7372980 () Bool)

(assert (=> b!6595501 m!7372980))

(declare-fun m!7372982 () Bool)

(assert (=> b!6595501 m!7372982))

(assert (=> b!6595497 m!7372980))

(declare-fun m!7372984 () Bool)

(assert (=> b!6595497 m!7372984))

(declare-fun m!7372986 () Bool)

(assert (=> b!6595493 m!7372986))

(assert (=> b!6595493 m!7372986))

(declare-fun m!7372988 () Bool)

(assert (=> b!6595493 m!7372988))

(declare-fun m!7372990 () Bool)

(assert (=> b!6595493 m!7372990))

(assert (=> b!6595493 m!7372986))

(declare-fun m!7372992 () Bool)

(assert (=> b!6595493 m!7372992))

(declare-fun m!7372994 () Bool)

(assert (=> b!6595498 m!7372994))

(assert (=> d!2069351 m!7372994))

(declare-fun m!7372996 () Bool)

(assert (=> d!2069351 m!7372996))

(declare-fun m!7372998 () Bool)

(assert (=> d!2069351 m!7372998))

(assert (=> b!6595496 m!7372980))

(declare-fun m!7373000 () Bool)

(assert (=> b!6595496 m!7373000))

(assert (=> b!6594800 d!2069351))

(declare-fun d!2069353 () Bool)

(declare-fun choose!49200 (Int) Bool)

(assert (=> d!2069353 (= (Exists!3529 lambda!367366) (choose!49200 lambda!367366))))

(declare-fun bs!1691609 () Bool)

(assert (= bs!1691609 d!2069353))

(declare-fun m!7373002 () Bool)

(assert (=> bs!1691609 m!7373002))

(assert (=> b!6594800 d!2069353))

(declare-fun d!2069355 () Bool)

(assert (=> d!2069355 (= (Exists!3529 lambda!367365) (choose!49200 lambda!367365))))

(declare-fun bs!1691610 () Bool)

(assert (= bs!1691610 d!2069355))

(declare-fun m!7373004 () Bool)

(assert (=> bs!1691610 m!7373004))

(assert (=> b!6594800 d!2069355))

(declare-fun bs!1691611 () Bool)

(declare-fun d!2069357 () Bool)

(assert (= bs!1691611 (and d!2069357 b!6594800)))

(declare-fun lambda!367439 () Int)

(assert (=> bs!1691611 (= lambda!367439 lambda!367365)))

(assert (=> bs!1691611 (not (= lambda!367439 lambda!367366))))

(assert (=> d!2069357 true))

(assert (=> d!2069357 true))

(assert (=> d!2069357 true))

(assert (=> d!2069357 (= (isDefined!13053 (findConcatSeparation!2764 (regOne!33430 r!7292) (regTwo!33430 r!7292) Nil!65552 s!2326 s!2326)) (Exists!3529 lambda!367439))))

(declare-fun lt!2411965 () Unit!159171)

(declare-fun choose!49201 (Regex!16459 Regex!16459 List!65676) Unit!159171)

(assert (=> d!2069357 (= lt!2411965 (choose!49201 (regOne!33430 r!7292) (regTwo!33430 r!7292) s!2326))))

(assert (=> d!2069357 (validRegex!8195 (regOne!33430 r!7292))))

(assert (=> d!2069357 (= (lemmaFindConcatSeparationEquivalentToExists!2528 (regOne!33430 r!7292) (regTwo!33430 r!7292) s!2326) lt!2411965)))

(declare-fun bs!1691612 () Bool)

(assert (= bs!1691612 d!2069357))

(declare-fun m!7373006 () Bool)

(assert (=> bs!1691612 m!7373006))

(assert (=> bs!1691612 m!7372998))

(declare-fun m!7373008 () Bool)

(assert (=> bs!1691612 m!7373008))

(assert (=> bs!1691612 m!7372398))

(assert (=> bs!1691612 m!7372398))

(assert (=> bs!1691612 m!7372400))

(assert (=> b!6594800 d!2069357))

(declare-fun bs!1691613 () Bool)

(declare-fun d!2069359 () Bool)

(assert (= bs!1691613 (and d!2069359 b!6594800)))

(declare-fun lambda!367444 () Int)

(assert (=> bs!1691613 (= lambda!367444 lambda!367365)))

(assert (=> bs!1691613 (not (= lambda!367444 lambda!367366))))

(declare-fun bs!1691614 () Bool)

(assert (= bs!1691614 (and d!2069359 d!2069357)))

(assert (=> bs!1691614 (= lambda!367444 lambda!367439)))

(assert (=> d!2069359 true))

(assert (=> d!2069359 true))

(assert (=> d!2069359 true))

(declare-fun lambda!367445 () Int)

(assert (=> bs!1691613 (not (= lambda!367445 lambda!367365))))

(assert (=> bs!1691613 (= lambda!367445 lambda!367366)))

(assert (=> bs!1691614 (not (= lambda!367445 lambda!367439))))

(declare-fun bs!1691615 () Bool)

(assert (= bs!1691615 d!2069359))

(assert (=> bs!1691615 (not (= lambda!367445 lambda!367444))))

(assert (=> d!2069359 true))

(assert (=> d!2069359 true))

(assert (=> d!2069359 true))

(assert (=> d!2069359 (= (Exists!3529 lambda!367444) (Exists!3529 lambda!367445))))

(declare-fun lt!2411968 () Unit!159171)

(declare-fun choose!49202 (Regex!16459 Regex!16459 List!65676) Unit!159171)

(assert (=> d!2069359 (= lt!2411968 (choose!49202 (regOne!33430 r!7292) (regTwo!33430 r!7292) s!2326))))

(assert (=> d!2069359 (validRegex!8195 (regOne!33430 r!7292))))

(assert (=> d!2069359 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2066 (regOne!33430 r!7292) (regTwo!33430 r!7292) s!2326) lt!2411968)))

(declare-fun m!7373010 () Bool)

(assert (=> bs!1691615 m!7373010))

(declare-fun m!7373012 () Bool)

(assert (=> bs!1691615 m!7373012))

(declare-fun m!7373014 () Bool)

(assert (=> bs!1691615 m!7373014))

(assert (=> bs!1691615 m!7372998))

(assert (=> b!6594800 d!2069359))

(declare-fun d!2069361 () Bool)

(declare-fun isEmpty!37816 (Option!16350) Bool)

(assert (=> d!2069361 (= (isDefined!13053 (findConcatSeparation!2764 (regOne!33430 r!7292) (regTwo!33430 r!7292) Nil!65552 s!2326 s!2326)) (not (isEmpty!37816 (findConcatSeparation!2764 (regOne!33430 r!7292) (regTwo!33430 r!7292) Nil!65552 s!2326 s!2326))))))

(declare-fun bs!1691616 () Bool)

(assert (= bs!1691616 d!2069361))

(assert (=> bs!1691616 m!7372398))

(declare-fun m!7373016 () Bool)

(assert (=> bs!1691616 m!7373016))

(assert (=> b!6594800 d!2069361))

(declare-fun bs!1691617 () Bool)

(declare-fun d!2069363 () Bool)

(assert (= bs!1691617 (and d!2069363 d!2069319)))

(declare-fun lambda!367448 () Int)

(assert (=> bs!1691617 (= lambda!367448 lambda!367429)))

(declare-fun bs!1691618 () Bool)

(assert (= bs!1691618 (and d!2069363 d!2069331)))

(assert (=> bs!1691618 (= lambda!367448 lambda!367432)))

(assert (=> d!2069363 (= (inv!84394 (h!72002 zl!343)) (forall!15643 (exprs!6343 (h!72002 zl!343)) lambda!367448))))

(declare-fun bs!1691619 () Bool)

(assert (= bs!1691619 d!2069363))

(declare-fun m!7373018 () Bool)

(assert (=> bs!1691619 m!7373018))

(assert (=> b!6594778 d!2069363))

(declare-fun bs!1691620 () Bool)

(declare-fun b!6595552 () Bool)

(assert (= bs!1691620 (and b!6595552 d!2069357)))

(declare-fun lambda!367453 () Int)

(assert (=> bs!1691620 (not (= lambda!367453 lambda!367439))))

(declare-fun bs!1691621 () Bool)

(assert (= bs!1691621 (and b!6595552 d!2069359)))

(assert (=> bs!1691621 (not (= lambda!367453 lambda!367444))))

(assert (=> bs!1691621 (not (= lambda!367453 lambda!367445))))

(declare-fun bs!1691622 () Bool)

(assert (= bs!1691622 (and b!6595552 b!6594800)))

(assert (=> bs!1691622 (not (= lambda!367453 lambda!367365))))

(assert (=> bs!1691622 (not (= lambda!367453 lambda!367366))))

(assert (=> b!6595552 true))

(assert (=> b!6595552 true))

(declare-fun bs!1691623 () Bool)

(declare-fun b!6595547 () Bool)

(assert (= bs!1691623 (and b!6595547 d!2069357)))

(declare-fun lambda!367454 () Int)

(assert (=> bs!1691623 (not (= lambda!367454 lambda!367439))))

(declare-fun bs!1691624 () Bool)

(assert (= bs!1691624 (and b!6595547 d!2069359)))

(assert (=> bs!1691624 (not (= lambda!367454 lambda!367444))))

(assert (=> bs!1691624 (= lambda!367454 lambda!367445)))

(declare-fun bs!1691625 () Bool)

(assert (= bs!1691625 (and b!6595547 b!6595552)))

(assert (=> bs!1691625 (not (= lambda!367454 lambda!367453))))

(declare-fun bs!1691626 () Bool)

(assert (= bs!1691626 (and b!6595547 b!6594800)))

(assert (=> bs!1691626 (not (= lambda!367454 lambda!367365))))

(assert (=> bs!1691626 (= lambda!367454 lambda!367366)))

(assert (=> b!6595547 true))

(assert (=> b!6595547 true))

(declare-fun b!6595546 () Bool)

(declare-fun e!3991119 () Bool)

(declare-fun call!576616 () Bool)

(assert (=> b!6595546 (= e!3991119 call!576616)))

(declare-fun e!3991118 () Bool)

(declare-fun call!576617 () Bool)

(assert (=> b!6595547 (= e!3991118 call!576617)))

(declare-fun b!6595549 () Bool)

(declare-fun c!1214565 () Bool)

(assert (=> b!6595549 (= c!1214565 ((_ is Union!16459) r!7292))))

(declare-fun e!3991122 () Bool)

(declare-fun e!3991117 () Bool)

(assert (=> b!6595549 (= e!3991122 e!3991117)))

(declare-fun bm!576611 () Bool)

(declare-fun isEmpty!37817 (List!65676) Bool)

(assert (=> bm!576611 (= call!576616 (isEmpty!37817 s!2326))))

(declare-fun b!6595550 () Bool)

(declare-fun c!1214566 () Bool)

(assert (=> b!6595550 (= c!1214566 ((_ is ElementMatch!16459) r!7292))))

(declare-fun e!3991121 () Bool)

(assert (=> b!6595550 (= e!3991121 e!3991122)))

(declare-fun b!6595551 () Bool)

(declare-fun e!3991123 () Bool)

(assert (=> b!6595551 (= e!3991123 (matchRSpec!3560 (regTwo!33431 r!7292) s!2326))))

(declare-fun e!3991120 () Bool)

(assert (=> b!6595552 (= e!3991120 call!576617)))

(declare-fun b!6595553 () Bool)

(assert (=> b!6595553 (= e!3991117 e!3991118)))

(declare-fun c!1214568 () Bool)

(assert (=> b!6595553 (= c!1214568 ((_ is Star!16459) r!7292))))

(declare-fun b!6595554 () Bool)

(assert (=> b!6595554 (= e!3991117 e!3991123)))

(declare-fun res!2704346 () Bool)

(assert (=> b!6595554 (= res!2704346 (matchRSpec!3560 (regOne!33431 r!7292) s!2326))))

(assert (=> b!6595554 (=> res!2704346 e!3991123)))

(declare-fun b!6595555 () Bool)

(assert (=> b!6595555 (= e!3991119 e!3991121)))

(declare-fun res!2704344 () Bool)

(assert (=> b!6595555 (= res!2704344 (not ((_ is EmptyLang!16459) r!7292)))))

(assert (=> b!6595555 (=> (not res!2704344) (not e!3991121))))

(declare-fun b!6595556 () Bool)

(assert (=> b!6595556 (= e!3991122 (= s!2326 (Cons!65552 (c!1214332 r!7292) Nil!65552)))))

(declare-fun bm!576612 () Bool)

(assert (=> bm!576612 (= call!576617 (Exists!3529 (ite c!1214568 lambda!367453 lambda!367454)))))

(declare-fun d!2069365 () Bool)

(declare-fun c!1214567 () Bool)

(assert (=> d!2069365 (= c!1214567 ((_ is EmptyExpr!16459) r!7292))))

(assert (=> d!2069365 (= (matchRSpec!3560 r!7292 s!2326) e!3991119)))

(declare-fun b!6595548 () Bool)

(declare-fun res!2704345 () Bool)

(assert (=> b!6595548 (=> res!2704345 e!3991120)))

(assert (=> b!6595548 (= res!2704345 call!576616)))

(assert (=> b!6595548 (= e!3991118 e!3991120)))

(assert (= (and d!2069365 c!1214567) b!6595546))

(assert (= (and d!2069365 (not c!1214567)) b!6595555))

(assert (= (and b!6595555 res!2704344) b!6595550))

(assert (= (and b!6595550 c!1214566) b!6595556))

(assert (= (and b!6595550 (not c!1214566)) b!6595549))

(assert (= (and b!6595549 c!1214565) b!6595554))

(assert (= (and b!6595549 (not c!1214565)) b!6595553))

(assert (= (and b!6595554 (not res!2704346)) b!6595551))

(assert (= (and b!6595553 c!1214568) b!6595548))

(assert (= (and b!6595553 (not c!1214568)) b!6595547))

(assert (= (and b!6595548 (not res!2704345)) b!6595552))

(assert (= (or b!6595552 b!6595547) bm!576612))

(assert (= (or b!6595546 b!6595548) bm!576611))

(declare-fun m!7373020 () Bool)

(assert (=> bm!576611 m!7373020))

(declare-fun m!7373022 () Bool)

(assert (=> b!6595551 m!7373022))

(declare-fun m!7373024 () Bool)

(assert (=> b!6595554 m!7373024))

(declare-fun m!7373026 () Bool)

(assert (=> bm!576612 m!7373026))

(assert (=> b!6594804 d!2069365))

(declare-fun b!6595585 () Bool)

(declare-fun e!3991143 () Bool)

(declare-fun e!3991142 () Bool)

(assert (=> b!6595585 (= e!3991143 e!3991142)))

(declare-fun c!1214575 () Bool)

(assert (=> b!6595585 (= c!1214575 ((_ is EmptyLang!16459) r!7292))))

(declare-fun d!2069367 () Bool)

(assert (=> d!2069367 e!3991143))

(declare-fun c!1214577 () Bool)

(assert (=> d!2069367 (= c!1214577 ((_ is EmptyExpr!16459) r!7292))))

(declare-fun lt!2411971 () Bool)

(declare-fun e!3991138 () Bool)

(assert (=> d!2069367 (= lt!2411971 e!3991138)))

(declare-fun c!1214576 () Bool)

(assert (=> d!2069367 (= c!1214576 (isEmpty!37817 s!2326))))

(assert (=> d!2069367 (validRegex!8195 r!7292)))

(assert (=> d!2069367 (= (matchR!8642 r!7292 s!2326) lt!2411971)))

(declare-fun b!6595586 () Bool)

(declare-fun res!2704370 () Bool)

(declare-fun e!3991140 () Bool)

(assert (=> b!6595586 (=> (not res!2704370) (not e!3991140))))

(declare-fun tail!12455 (List!65676) List!65676)

(assert (=> b!6595586 (= res!2704370 (isEmpty!37817 (tail!12455 s!2326)))))

(declare-fun b!6595587 () Bool)

(declare-fun call!576620 () Bool)

(assert (=> b!6595587 (= e!3991143 (= lt!2411971 call!576620))))

(declare-fun b!6595588 () Bool)

(declare-fun res!2704365 () Bool)

(assert (=> b!6595588 (=> (not res!2704365) (not e!3991140))))

(assert (=> b!6595588 (= res!2704365 (not call!576620))))

(declare-fun b!6595589 () Bool)

(declare-fun e!3991144 () Bool)

(declare-fun head!13370 (List!65676) C!33188)

(assert (=> b!6595589 (= e!3991144 (not (= (head!13370 s!2326) (c!1214332 r!7292))))))

(declare-fun bm!576615 () Bool)

(assert (=> bm!576615 (= call!576620 (isEmpty!37817 s!2326))))

(declare-fun b!6595590 () Bool)

(declare-fun e!3991139 () Bool)

(declare-fun e!3991141 () Bool)

(assert (=> b!6595590 (= e!3991139 e!3991141)))

(declare-fun res!2704366 () Bool)

(assert (=> b!6595590 (=> (not res!2704366) (not e!3991141))))

(assert (=> b!6595590 (= res!2704366 (not lt!2411971))))

(declare-fun b!6595591 () Bool)

(declare-fun res!2704363 () Bool)

(assert (=> b!6595591 (=> res!2704363 e!3991139)))

(assert (=> b!6595591 (= res!2704363 (not ((_ is ElementMatch!16459) r!7292)))))

(assert (=> b!6595591 (= e!3991142 e!3991139)))

(declare-fun b!6595592 () Bool)

(assert (=> b!6595592 (= e!3991138 (nullable!6452 r!7292))))

(declare-fun b!6595593 () Bool)

(assert (=> b!6595593 (= e!3991141 e!3991144)))

(declare-fun res!2704364 () Bool)

(assert (=> b!6595593 (=> res!2704364 e!3991144)))

(assert (=> b!6595593 (= res!2704364 call!576620)))

(declare-fun b!6595594 () Bool)

(declare-fun res!2704368 () Bool)

(assert (=> b!6595594 (=> res!2704368 e!3991144)))

(assert (=> b!6595594 (= res!2704368 (not (isEmpty!37817 (tail!12455 s!2326))))))

(declare-fun b!6595595 () Bool)

(assert (=> b!6595595 (= e!3991142 (not lt!2411971))))

(declare-fun b!6595596 () Bool)

(declare-fun res!2704367 () Bool)

(assert (=> b!6595596 (=> res!2704367 e!3991139)))

(assert (=> b!6595596 (= res!2704367 e!3991140)))

(declare-fun res!2704369 () Bool)

(assert (=> b!6595596 (=> (not res!2704369) (not e!3991140))))

(assert (=> b!6595596 (= res!2704369 lt!2411971)))

(declare-fun b!6595597 () Bool)

(assert (=> b!6595597 (= e!3991140 (= (head!13370 s!2326) (c!1214332 r!7292)))))

(declare-fun b!6595598 () Bool)

(declare-fun derivativeStep!5143 (Regex!16459 C!33188) Regex!16459)

(assert (=> b!6595598 (= e!3991138 (matchR!8642 (derivativeStep!5143 r!7292 (head!13370 s!2326)) (tail!12455 s!2326)))))

(assert (= (and d!2069367 c!1214576) b!6595592))

(assert (= (and d!2069367 (not c!1214576)) b!6595598))

(assert (= (and d!2069367 c!1214577) b!6595587))

(assert (= (and d!2069367 (not c!1214577)) b!6595585))

(assert (= (and b!6595585 c!1214575) b!6595595))

(assert (= (and b!6595585 (not c!1214575)) b!6595591))

(assert (= (and b!6595591 (not res!2704363)) b!6595596))

(assert (= (and b!6595596 res!2704369) b!6595588))

(assert (= (and b!6595588 res!2704365) b!6595586))

(assert (= (and b!6595586 res!2704370) b!6595597))

(assert (= (and b!6595596 (not res!2704367)) b!6595590))

(assert (= (and b!6595590 res!2704366) b!6595593))

(assert (= (and b!6595593 (not res!2704364)) b!6595594))

(assert (= (and b!6595594 (not res!2704368)) b!6595589))

(assert (= (or b!6595587 b!6595588 b!6595593) bm!576615))

(declare-fun m!7373028 () Bool)

(assert (=> b!6595589 m!7373028))

(declare-fun m!7373030 () Bool)

(assert (=> b!6595586 m!7373030))

(assert (=> b!6595586 m!7373030))

(declare-fun m!7373032 () Bool)

(assert (=> b!6595586 m!7373032))

(assert (=> b!6595598 m!7373028))

(assert (=> b!6595598 m!7373028))

(declare-fun m!7373034 () Bool)

(assert (=> b!6595598 m!7373034))

(assert (=> b!6595598 m!7373030))

(assert (=> b!6595598 m!7373034))

(assert (=> b!6595598 m!7373030))

(declare-fun m!7373036 () Bool)

(assert (=> b!6595598 m!7373036))

(assert (=> b!6595597 m!7373028))

(declare-fun m!7373038 () Bool)

(assert (=> b!6595592 m!7373038))

(assert (=> b!6595594 m!7373030))

(assert (=> b!6595594 m!7373030))

(assert (=> b!6595594 m!7373032))

(assert (=> d!2069367 m!7373020))

(assert (=> d!2069367 m!7372390))

(assert (=> bm!576615 m!7373020))

(assert (=> b!6594804 d!2069367))

(declare-fun d!2069369 () Bool)

(assert (=> d!2069369 (= (matchR!8642 r!7292 s!2326) (matchRSpec!3560 r!7292 s!2326))))

(declare-fun lt!2411974 () Unit!159171)

(declare-fun choose!49203 (Regex!16459 List!65676) Unit!159171)

(assert (=> d!2069369 (= lt!2411974 (choose!49203 r!7292 s!2326))))

(assert (=> d!2069369 (validRegex!8195 r!7292)))

(assert (=> d!2069369 (= (mainMatchTheorem!3560 r!7292 s!2326) lt!2411974)))

(declare-fun bs!1691627 () Bool)

(assert (= bs!1691627 d!2069369))

(assert (=> bs!1691627 m!7372442))

(assert (=> bs!1691627 m!7372440))

(declare-fun m!7373040 () Bool)

(assert (=> bs!1691627 m!7373040))

(assert (=> bs!1691627 m!7372390))

(assert (=> b!6594804 d!2069369))

(declare-fun d!2069371 () Bool)

(declare-fun lt!2411975 () Regex!16459)

(assert (=> d!2069371 (validRegex!8195 lt!2411975)))

(assert (=> d!2069371 (= lt!2411975 (generalisedUnion!2303 (unfocusZipperList!1880 zl!343)))))

(assert (=> d!2069371 (= (unfocusZipper!2201 zl!343) lt!2411975)))

(declare-fun bs!1691628 () Bool)

(assert (= bs!1691628 d!2069371))

(declare-fun m!7373042 () Bool)

(assert (=> bs!1691628 m!7373042))

(assert (=> bs!1691628 m!7372470))

(assert (=> bs!1691628 m!7372470))

(assert (=> bs!1691628 m!7372472))

(assert (=> b!6594783 d!2069371))

(declare-fun b!6595617 () Bool)

(declare-fun e!3991159 () Bool)

(declare-fun e!3991162 () Bool)

(assert (=> b!6595617 (= e!3991159 e!3991162)))

(declare-fun res!2704384 () Bool)

(assert (=> b!6595617 (= res!2704384 (not (nullable!6452 (reg!16788 r!7292))))))

(assert (=> b!6595617 (=> (not res!2704384) (not e!3991162))))

(declare-fun bm!576622 () Bool)

(declare-fun call!576629 () Bool)

(declare-fun call!576628 () Bool)

(assert (=> bm!576622 (= call!576629 call!576628)))

(declare-fun b!6595618 () Bool)

(declare-fun e!3991164 () Bool)

(declare-fun call!576627 () Bool)

(assert (=> b!6595618 (= e!3991164 call!576627)))

(declare-fun b!6595620 () Bool)

(declare-fun res!2704381 () Bool)

(declare-fun e!3991163 () Bool)

(assert (=> b!6595620 (=> res!2704381 e!3991163)))

(assert (=> b!6595620 (= res!2704381 (not ((_ is Concat!25304) r!7292)))))

(declare-fun e!3991161 () Bool)

(assert (=> b!6595620 (= e!3991161 e!3991163)))

(declare-fun bm!576623 () Bool)

(declare-fun c!1214582 () Bool)

(assert (=> bm!576623 (= call!576627 (validRegex!8195 (ite c!1214582 (regTwo!33431 r!7292) (regTwo!33430 r!7292))))))

(declare-fun b!6595621 () Bool)

(declare-fun res!2704382 () Bool)

(declare-fun e!3991160 () Bool)

(assert (=> b!6595621 (=> (not res!2704382) (not e!3991160))))

(assert (=> b!6595621 (= res!2704382 call!576629)))

(assert (=> b!6595621 (= e!3991161 e!3991160)))

(declare-fun b!6595622 () Bool)

(declare-fun e!3991165 () Bool)

(assert (=> b!6595622 (= e!3991165 e!3991159)))

(declare-fun c!1214583 () Bool)

(assert (=> b!6595622 (= c!1214583 ((_ is Star!16459) r!7292))))

(declare-fun d!2069373 () Bool)

(declare-fun res!2704385 () Bool)

(assert (=> d!2069373 (=> res!2704385 e!3991165)))

(assert (=> d!2069373 (= res!2704385 ((_ is ElementMatch!16459) r!7292))))

(assert (=> d!2069373 (= (validRegex!8195 r!7292) e!3991165)))

(declare-fun b!6595619 () Bool)

(assert (=> b!6595619 (= e!3991159 e!3991161)))

(assert (=> b!6595619 (= c!1214582 ((_ is Union!16459) r!7292))))

(declare-fun b!6595623 () Bool)

(assert (=> b!6595623 (= e!3991163 e!3991164)))

(declare-fun res!2704383 () Bool)

(assert (=> b!6595623 (=> (not res!2704383) (not e!3991164))))

(assert (=> b!6595623 (= res!2704383 call!576629)))

(declare-fun bm!576624 () Bool)

(assert (=> bm!576624 (= call!576628 (validRegex!8195 (ite c!1214583 (reg!16788 r!7292) (ite c!1214582 (regOne!33431 r!7292) (regOne!33430 r!7292)))))))

(declare-fun b!6595624 () Bool)

(assert (=> b!6595624 (= e!3991160 call!576627)))

(declare-fun b!6595625 () Bool)

(assert (=> b!6595625 (= e!3991162 call!576628)))

(assert (= (and d!2069373 (not res!2704385)) b!6595622))

(assert (= (and b!6595622 c!1214583) b!6595617))

(assert (= (and b!6595622 (not c!1214583)) b!6595619))

(assert (= (and b!6595617 res!2704384) b!6595625))

(assert (= (and b!6595619 c!1214582) b!6595621))

(assert (= (and b!6595619 (not c!1214582)) b!6595620))

(assert (= (and b!6595621 res!2704382) b!6595624))

(assert (= (and b!6595620 (not res!2704381)) b!6595623))

(assert (= (and b!6595623 res!2704383) b!6595618))

(assert (= (or b!6595624 b!6595618) bm!576623))

(assert (= (or b!6595621 b!6595623) bm!576622))

(assert (= (or b!6595625 bm!576622) bm!576624))

(declare-fun m!7373044 () Bool)

(assert (=> b!6595617 m!7373044))

(declare-fun m!7373046 () Bool)

(assert (=> bm!576623 m!7373046))

(declare-fun m!7373048 () Bool)

(assert (=> bm!576624 m!7373048))

(assert (=> start!644962 d!2069373))

(declare-fun d!2069375 () Bool)

(declare-fun c!1214586 () Bool)

(assert (=> d!2069375 (= c!1214586 (isEmpty!37817 (t!379328 s!2326)))))

(declare-fun e!3991168 () Bool)

(assert (=> d!2069375 (= (matchZipper!2471 lt!2411819 (t!379328 s!2326)) e!3991168)))

(declare-fun b!6595630 () Bool)

(declare-fun nullableZipper!2204 ((InoxSet Context!11686)) Bool)

(assert (=> b!6595630 (= e!3991168 (nullableZipper!2204 lt!2411819))))

(declare-fun b!6595631 () Bool)

(assert (=> b!6595631 (= e!3991168 (matchZipper!2471 (derivationStepZipper!2425 lt!2411819 (head!13370 (t!379328 s!2326))) (tail!12455 (t!379328 s!2326))))))

(assert (= (and d!2069375 c!1214586) b!6595630))

(assert (= (and d!2069375 (not c!1214586)) b!6595631))

(declare-fun m!7373050 () Bool)

(assert (=> d!2069375 m!7373050))

(declare-fun m!7373052 () Bool)

(assert (=> b!6595630 m!7373052))

(declare-fun m!7373054 () Bool)

(assert (=> b!6595631 m!7373054))

(assert (=> b!6595631 m!7373054))

(declare-fun m!7373056 () Bool)

(assert (=> b!6595631 m!7373056))

(declare-fun m!7373058 () Bool)

(assert (=> b!6595631 m!7373058))

(assert (=> b!6595631 m!7373056))

(assert (=> b!6595631 m!7373058))

(declare-fun m!7373060 () Bool)

(assert (=> b!6595631 m!7373060))

(assert (=> b!6594782 d!2069375))

(declare-fun d!2069377 () Bool)

(declare-fun c!1214587 () Bool)

(assert (=> d!2069377 (= c!1214587 (isEmpty!37817 s!2326))))

(declare-fun e!3991169 () Bool)

(assert (=> d!2069377 (= (matchZipper!2471 lt!2411836 s!2326) e!3991169)))

(declare-fun b!6595632 () Bool)

(assert (=> b!6595632 (= e!3991169 (nullableZipper!2204 lt!2411836))))

(declare-fun b!6595633 () Bool)

(assert (=> b!6595633 (= e!3991169 (matchZipper!2471 (derivationStepZipper!2425 lt!2411836 (head!13370 s!2326)) (tail!12455 s!2326)))))

(assert (= (and d!2069377 c!1214587) b!6595632))

(assert (= (and d!2069377 (not c!1214587)) b!6595633))

(assert (=> d!2069377 m!7373020))

(declare-fun m!7373062 () Bool)

(assert (=> b!6595632 m!7373062))

(assert (=> b!6595633 m!7373028))

(assert (=> b!6595633 m!7373028))

(declare-fun m!7373064 () Bool)

(assert (=> b!6595633 m!7373064))

(assert (=> b!6595633 m!7373030))

(assert (=> b!6595633 m!7373064))

(assert (=> b!6595633 m!7373030))

(declare-fun m!7373066 () Bool)

(assert (=> b!6595633 m!7373066))

(assert (=> b!6594803 d!2069377))

(declare-fun d!2069379 () Bool)

(declare-fun c!1214588 () Bool)

(assert (=> d!2069379 (= c!1214588 (isEmpty!37817 (t!379328 s!2326)))))

(declare-fun e!3991170 () Bool)

(assert (=> d!2069379 (= (matchZipper!2471 lt!2411822 (t!379328 s!2326)) e!3991170)))

(declare-fun b!6595634 () Bool)

(assert (=> b!6595634 (= e!3991170 (nullableZipper!2204 lt!2411822))))

(declare-fun b!6595635 () Bool)

(assert (=> b!6595635 (= e!3991170 (matchZipper!2471 (derivationStepZipper!2425 lt!2411822 (head!13370 (t!379328 s!2326))) (tail!12455 (t!379328 s!2326))))))

(assert (= (and d!2069379 c!1214588) b!6595634))

(assert (= (and d!2069379 (not c!1214588)) b!6595635))

(assert (=> d!2069379 m!7373050))

(declare-fun m!7373068 () Bool)

(assert (=> b!6595634 m!7373068))

(assert (=> b!6595635 m!7373054))

(assert (=> b!6595635 m!7373054))

(declare-fun m!7373070 () Bool)

(assert (=> b!6595635 m!7373070))

(assert (=> b!6595635 m!7373058))

(assert (=> b!6595635 m!7373070))

(assert (=> b!6595635 m!7373058))

(declare-fun m!7373072 () Bool)

(assert (=> b!6595635 m!7373072))

(assert (=> b!6594803 d!2069379))

(declare-fun d!2069381 () Bool)

(declare-fun c!1214589 () Bool)

(assert (=> d!2069381 (= c!1214589 (isEmpty!37817 s!2326))))

(declare-fun e!3991171 () Bool)

(assert (=> d!2069381 (= (matchZipper!2471 z!1189 s!2326) e!3991171)))

(declare-fun b!6595636 () Bool)

(assert (=> b!6595636 (= e!3991171 (nullableZipper!2204 z!1189))))

(declare-fun b!6595637 () Bool)

(assert (=> b!6595637 (= e!3991171 (matchZipper!2471 (derivationStepZipper!2425 z!1189 (head!13370 s!2326)) (tail!12455 s!2326)))))

(assert (= (and d!2069381 c!1214589) b!6595636))

(assert (= (and d!2069381 (not c!1214589)) b!6595637))

(assert (=> d!2069381 m!7373020))

(declare-fun m!7373074 () Bool)

(assert (=> b!6595636 m!7373074))

(assert (=> b!6595637 m!7373028))

(assert (=> b!6595637 m!7373028))

(declare-fun m!7373076 () Bool)

(assert (=> b!6595637 m!7373076))

(assert (=> b!6595637 m!7373030))

(assert (=> b!6595637 m!7373076))

(assert (=> b!6595637 m!7373030))

(declare-fun m!7373078 () Bool)

(assert (=> b!6595637 m!7373078))

(assert (=> b!6594802 d!2069381))

(declare-fun e!3991174 () Bool)

(declare-fun d!2069383 () Bool)

(assert (=> d!2069383 (= (matchZipper!2471 ((_ map or) lt!2411817 lt!2411819) (t!379328 s!2326)) e!3991174)))

(declare-fun res!2704388 () Bool)

(assert (=> d!2069383 (=> res!2704388 e!3991174)))

(assert (=> d!2069383 (= res!2704388 (matchZipper!2471 lt!2411817 (t!379328 s!2326)))))

(declare-fun lt!2411978 () Unit!159171)

(declare-fun choose!49205 ((InoxSet Context!11686) (InoxSet Context!11686) List!65676) Unit!159171)

(assert (=> d!2069383 (= lt!2411978 (choose!49205 lt!2411817 lt!2411819 (t!379328 s!2326)))))

(assert (=> d!2069383 (= (lemmaZipperConcatMatchesSameAsBothZippers!1290 lt!2411817 lt!2411819 (t!379328 s!2326)) lt!2411978)))

(declare-fun b!6595640 () Bool)

(assert (=> b!6595640 (= e!3991174 (matchZipper!2471 lt!2411819 (t!379328 s!2326)))))

(assert (= (and d!2069383 (not res!2704388)) b!6595640))

(assert (=> d!2069383 m!7372382))

(assert (=> d!2069383 m!7372380))

(declare-fun m!7373080 () Bool)

(assert (=> d!2069383 m!7373080))

(assert (=> b!6595640 m!7372350))

(assert (=> b!6594775 d!2069383))

(declare-fun d!2069385 () Bool)

(declare-fun c!1214590 () Bool)

(assert (=> d!2069385 (= c!1214590 (isEmpty!37817 (t!379328 s!2326)))))

(declare-fun e!3991175 () Bool)

(assert (=> d!2069385 (= (matchZipper!2471 lt!2411817 (t!379328 s!2326)) e!3991175)))

(declare-fun b!6595641 () Bool)

(assert (=> b!6595641 (= e!3991175 (nullableZipper!2204 lt!2411817))))

(declare-fun b!6595642 () Bool)

(assert (=> b!6595642 (= e!3991175 (matchZipper!2471 (derivationStepZipper!2425 lt!2411817 (head!13370 (t!379328 s!2326))) (tail!12455 (t!379328 s!2326))))))

(assert (= (and d!2069385 c!1214590) b!6595641))

(assert (= (and d!2069385 (not c!1214590)) b!6595642))

(assert (=> d!2069385 m!7373050))

(declare-fun m!7373082 () Bool)

(assert (=> b!6595641 m!7373082))

(assert (=> b!6595642 m!7373054))

(assert (=> b!6595642 m!7373054))

(declare-fun m!7373084 () Bool)

(assert (=> b!6595642 m!7373084))

(assert (=> b!6595642 m!7373058))

(assert (=> b!6595642 m!7373084))

(assert (=> b!6595642 m!7373058))

(declare-fun m!7373086 () Bool)

(assert (=> b!6595642 m!7373086))

(assert (=> b!6594775 d!2069385))

(declare-fun d!2069387 () Bool)

(declare-fun c!1214591 () Bool)

(assert (=> d!2069387 (= c!1214591 (isEmpty!37817 (t!379328 s!2326)))))

(declare-fun e!3991176 () Bool)

(assert (=> d!2069387 (= (matchZipper!2471 ((_ map or) lt!2411817 lt!2411819) (t!379328 s!2326)) e!3991176)))

(declare-fun b!6595643 () Bool)

(assert (=> b!6595643 (= e!3991176 (nullableZipper!2204 ((_ map or) lt!2411817 lt!2411819)))))

(declare-fun b!6595644 () Bool)

(assert (=> b!6595644 (= e!3991176 (matchZipper!2471 (derivationStepZipper!2425 ((_ map or) lt!2411817 lt!2411819) (head!13370 (t!379328 s!2326))) (tail!12455 (t!379328 s!2326))))))

(assert (= (and d!2069387 c!1214591) b!6595643))

(assert (= (and d!2069387 (not c!1214591)) b!6595644))

(assert (=> d!2069387 m!7373050))

(declare-fun m!7373088 () Bool)

(assert (=> b!6595643 m!7373088))

(assert (=> b!6595644 m!7373054))

(assert (=> b!6595644 m!7373054))

(declare-fun m!7373090 () Bool)

(assert (=> b!6595644 m!7373090))

(assert (=> b!6595644 m!7373058))

(assert (=> b!6595644 m!7373090))

(assert (=> b!6595644 m!7373058))

(declare-fun m!7373092 () Bool)

(assert (=> b!6595644 m!7373092))

(assert (=> b!6594775 d!2069387))

(declare-fun b!6595645 () Bool)

(declare-fun e!3991182 () Bool)

(declare-fun e!3991181 () Bool)

(assert (=> b!6595645 (= e!3991182 e!3991181)))

(declare-fun c!1214592 () Bool)

(assert (=> b!6595645 (= c!1214592 ((_ is EmptyLang!16459) (regTwo!33430 r!7292)))))

(declare-fun d!2069389 () Bool)

(assert (=> d!2069389 e!3991182))

(declare-fun c!1214594 () Bool)

(assert (=> d!2069389 (= c!1214594 ((_ is EmptyExpr!16459) (regTwo!33430 r!7292)))))

(declare-fun lt!2411979 () Bool)

(declare-fun e!3991177 () Bool)

(assert (=> d!2069389 (= lt!2411979 e!3991177)))

(declare-fun c!1214593 () Bool)

(assert (=> d!2069389 (= c!1214593 (isEmpty!37817 s!2326))))

(assert (=> d!2069389 (validRegex!8195 (regTwo!33430 r!7292))))

(assert (=> d!2069389 (= (matchR!8642 (regTwo!33430 r!7292) s!2326) lt!2411979)))

(declare-fun b!6595646 () Bool)

(declare-fun res!2704396 () Bool)

(declare-fun e!3991179 () Bool)

(assert (=> b!6595646 (=> (not res!2704396) (not e!3991179))))

(assert (=> b!6595646 (= res!2704396 (isEmpty!37817 (tail!12455 s!2326)))))

(declare-fun b!6595647 () Bool)

(declare-fun call!576630 () Bool)

(assert (=> b!6595647 (= e!3991182 (= lt!2411979 call!576630))))

(declare-fun b!6595648 () Bool)

(declare-fun res!2704391 () Bool)

(assert (=> b!6595648 (=> (not res!2704391) (not e!3991179))))

(assert (=> b!6595648 (= res!2704391 (not call!576630))))

(declare-fun b!6595649 () Bool)

(declare-fun e!3991183 () Bool)

(assert (=> b!6595649 (= e!3991183 (not (= (head!13370 s!2326) (c!1214332 (regTwo!33430 r!7292)))))))

(declare-fun bm!576625 () Bool)

(assert (=> bm!576625 (= call!576630 (isEmpty!37817 s!2326))))

(declare-fun b!6595650 () Bool)

(declare-fun e!3991178 () Bool)

(declare-fun e!3991180 () Bool)

(assert (=> b!6595650 (= e!3991178 e!3991180)))

(declare-fun res!2704392 () Bool)

(assert (=> b!6595650 (=> (not res!2704392) (not e!3991180))))

(assert (=> b!6595650 (= res!2704392 (not lt!2411979))))

(declare-fun b!6595651 () Bool)

(declare-fun res!2704389 () Bool)

(assert (=> b!6595651 (=> res!2704389 e!3991178)))

(assert (=> b!6595651 (= res!2704389 (not ((_ is ElementMatch!16459) (regTwo!33430 r!7292))))))

(assert (=> b!6595651 (= e!3991181 e!3991178)))

(declare-fun b!6595652 () Bool)

(assert (=> b!6595652 (= e!3991177 (nullable!6452 (regTwo!33430 r!7292)))))

(declare-fun b!6595653 () Bool)

(assert (=> b!6595653 (= e!3991180 e!3991183)))

(declare-fun res!2704390 () Bool)

(assert (=> b!6595653 (=> res!2704390 e!3991183)))

(assert (=> b!6595653 (= res!2704390 call!576630)))

(declare-fun b!6595654 () Bool)

(declare-fun res!2704394 () Bool)

(assert (=> b!6595654 (=> res!2704394 e!3991183)))

(assert (=> b!6595654 (= res!2704394 (not (isEmpty!37817 (tail!12455 s!2326))))))

(declare-fun b!6595655 () Bool)

(assert (=> b!6595655 (= e!3991181 (not lt!2411979))))

(declare-fun b!6595656 () Bool)

(declare-fun res!2704393 () Bool)

(assert (=> b!6595656 (=> res!2704393 e!3991178)))

(assert (=> b!6595656 (= res!2704393 e!3991179)))

(declare-fun res!2704395 () Bool)

(assert (=> b!6595656 (=> (not res!2704395) (not e!3991179))))

(assert (=> b!6595656 (= res!2704395 lt!2411979)))

(declare-fun b!6595657 () Bool)

(assert (=> b!6595657 (= e!3991179 (= (head!13370 s!2326) (c!1214332 (regTwo!33430 r!7292))))))

(declare-fun b!6595658 () Bool)

(assert (=> b!6595658 (= e!3991177 (matchR!8642 (derivativeStep!5143 (regTwo!33430 r!7292) (head!13370 s!2326)) (tail!12455 s!2326)))))

(assert (= (and d!2069389 c!1214593) b!6595652))

(assert (= (and d!2069389 (not c!1214593)) b!6595658))

(assert (= (and d!2069389 c!1214594) b!6595647))

(assert (= (and d!2069389 (not c!1214594)) b!6595645))

(assert (= (and b!6595645 c!1214592) b!6595655))

(assert (= (and b!6595645 (not c!1214592)) b!6595651))

(assert (= (and b!6595651 (not res!2704389)) b!6595656))

(assert (= (and b!6595656 res!2704395) b!6595648))

(assert (= (and b!6595648 res!2704391) b!6595646))

(assert (= (and b!6595646 res!2704396) b!6595657))

(assert (= (and b!6595656 (not res!2704393)) b!6595650))

(assert (= (and b!6595650 res!2704392) b!6595653))

(assert (= (and b!6595653 (not res!2704390)) b!6595654))

(assert (= (and b!6595654 (not res!2704394)) b!6595649))

(assert (= (or b!6595647 b!6595648 b!6595653) bm!576625))

(assert (=> b!6595649 m!7373028))

(assert (=> b!6595646 m!7373030))

(assert (=> b!6595646 m!7373030))

(assert (=> b!6595646 m!7373032))

(assert (=> b!6595658 m!7373028))

(assert (=> b!6595658 m!7373028))

(declare-fun m!7373094 () Bool)

(assert (=> b!6595658 m!7373094))

(assert (=> b!6595658 m!7373030))

(assert (=> b!6595658 m!7373094))

(assert (=> b!6595658 m!7373030))

(declare-fun m!7373096 () Bool)

(assert (=> b!6595658 m!7373096))

(assert (=> b!6595657 m!7373028))

(declare-fun m!7373098 () Bool)

(assert (=> b!6595652 m!7373098))

(assert (=> b!6595654 m!7373030))

(assert (=> b!6595654 m!7373030))

(assert (=> b!6595654 m!7373032))

(assert (=> d!2069389 m!7373020))

(declare-fun m!7373100 () Bool)

(assert (=> d!2069389 m!7373100))

(assert (=> bm!576625 m!7373020))

(assert (=> b!6594816 d!2069389))

(declare-fun b!6595659 () Bool)

(declare-fun e!3991189 () Bool)

(declare-fun e!3991188 () Bool)

(assert (=> b!6595659 (= e!3991189 e!3991188)))

(declare-fun c!1214595 () Bool)

(assert (=> b!6595659 (= c!1214595 ((_ is EmptyLang!16459) lt!2411833))))

(declare-fun d!2069391 () Bool)

(assert (=> d!2069391 e!3991189))

(declare-fun c!1214597 () Bool)

(assert (=> d!2069391 (= c!1214597 ((_ is EmptyExpr!16459) lt!2411833))))

(declare-fun lt!2411980 () Bool)

(declare-fun e!3991184 () Bool)

(assert (=> d!2069391 (= lt!2411980 e!3991184)))

(declare-fun c!1214596 () Bool)

(assert (=> d!2069391 (= c!1214596 (isEmpty!37817 s!2326))))

(assert (=> d!2069391 (validRegex!8195 lt!2411833)))

(assert (=> d!2069391 (= (matchR!8642 lt!2411833 s!2326) lt!2411980)))

(declare-fun b!6595660 () Bool)

(declare-fun res!2704404 () Bool)

(declare-fun e!3991186 () Bool)

(assert (=> b!6595660 (=> (not res!2704404) (not e!3991186))))

(assert (=> b!6595660 (= res!2704404 (isEmpty!37817 (tail!12455 s!2326)))))

(declare-fun b!6595661 () Bool)

(declare-fun call!576631 () Bool)

(assert (=> b!6595661 (= e!3991189 (= lt!2411980 call!576631))))

(declare-fun b!6595662 () Bool)

(declare-fun res!2704399 () Bool)

(assert (=> b!6595662 (=> (not res!2704399) (not e!3991186))))

(assert (=> b!6595662 (= res!2704399 (not call!576631))))

(declare-fun b!6595663 () Bool)

(declare-fun e!3991190 () Bool)

(assert (=> b!6595663 (= e!3991190 (not (= (head!13370 s!2326) (c!1214332 lt!2411833))))))

(declare-fun bm!576626 () Bool)

(assert (=> bm!576626 (= call!576631 (isEmpty!37817 s!2326))))

(declare-fun b!6595664 () Bool)

(declare-fun e!3991185 () Bool)

(declare-fun e!3991187 () Bool)

(assert (=> b!6595664 (= e!3991185 e!3991187)))

(declare-fun res!2704400 () Bool)

(assert (=> b!6595664 (=> (not res!2704400) (not e!3991187))))

(assert (=> b!6595664 (= res!2704400 (not lt!2411980))))

(declare-fun b!6595665 () Bool)

(declare-fun res!2704397 () Bool)

(assert (=> b!6595665 (=> res!2704397 e!3991185)))

(assert (=> b!6595665 (= res!2704397 (not ((_ is ElementMatch!16459) lt!2411833)))))

(assert (=> b!6595665 (= e!3991188 e!3991185)))

(declare-fun b!6595666 () Bool)

(assert (=> b!6595666 (= e!3991184 (nullable!6452 lt!2411833))))

(declare-fun b!6595667 () Bool)

(assert (=> b!6595667 (= e!3991187 e!3991190)))

(declare-fun res!2704398 () Bool)

(assert (=> b!6595667 (=> res!2704398 e!3991190)))

(assert (=> b!6595667 (= res!2704398 call!576631)))

(declare-fun b!6595668 () Bool)

(declare-fun res!2704402 () Bool)

(assert (=> b!6595668 (=> res!2704402 e!3991190)))

(assert (=> b!6595668 (= res!2704402 (not (isEmpty!37817 (tail!12455 s!2326))))))

(declare-fun b!6595669 () Bool)

(assert (=> b!6595669 (= e!3991188 (not lt!2411980))))

(declare-fun b!6595670 () Bool)

(declare-fun res!2704401 () Bool)

(assert (=> b!6595670 (=> res!2704401 e!3991185)))

(assert (=> b!6595670 (= res!2704401 e!3991186)))

(declare-fun res!2704403 () Bool)

(assert (=> b!6595670 (=> (not res!2704403) (not e!3991186))))

(assert (=> b!6595670 (= res!2704403 lt!2411980)))

(declare-fun b!6595671 () Bool)

(assert (=> b!6595671 (= e!3991186 (= (head!13370 s!2326) (c!1214332 lt!2411833)))))

(declare-fun b!6595672 () Bool)

(assert (=> b!6595672 (= e!3991184 (matchR!8642 (derivativeStep!5143 lt!2411833 (head!13370 s!2326)) (tail!12455 s!2326)))))

(assert (= (and d!2069391 c!1214596) b!6595666))

(assert (= (and d!2069391 (not c!1214596)) b!6595672))

(assert (= (and d!2069391 c!1214597) b!6595661))

(assert (= (and d!2069391 (not c!1214597)) b!6595659))

(assert (= (and b!6595659 c!1214595) b!6595669))

(assert (= (and b!6595659 (not c!1214595)) b!6595665))

(assert (= (and b!6595665 (not res!2704397)) b!6595670))

(assert (= (and b!6595670 res!2704403) b!6595662))

(assert (= (and b!6595662 res!2704399) b!6595660))

(assert (= (and b!6595660 res!2704404) b!6595671))

(assert (= (and b!6595670 (not res!2704401)) b!6595664))

(assert (= (and b!6595664 res!2704400) b!6595667))

(assert (= (and b!6595667 (not res!2704398)) b!6595668))

(assert (= (and b!6595668 (not res!2704402)) b!6595663))

(assert (= (or b!6595661 b!6595662 b!6595667) bm!576626))

(assert (=> b!6595663 m!7373028))

(assert (=> b!6595660 m!7373030))

(assert (=> b!6595660 m!7373030))

(assert (=> b!6595660 m!7373032))

(assert (=> b!6595672 m!7373028))

(assert (=> b!6595672 m!7373028))

(declare-fun m!7373102 () Bool)

(assert (=> b!6595672 m!7373102))

(assert (=> b!6595672 m!7373030))

(assert (=> b!6595672 m!7373102))

(assert (=> b!6595672 m!7373030))

(declare-fun m!7373104 () Bool)

(assert (=> b!6595672 m!7373104))

(assert (=> b!6595671 m!7373028))

(declare-fun m!7373106 () Bool)

(assert (=> b!6595666 m!7373106))

(assert (=> b!6595668 m!7373030))

(assert (=> b!6595668 m!7373030))

(assert (=> b!6595668 m!7373032))

(assert (=> d!2069391 m!7373020))

(declare-fun m!7373108 () Bool)

(assert (=> d!2069391 m!7373108))

(assert (=> bm!576626 m!7373020))

(assert (=> b!6594816 d!2069391))

(declare-fun d!2069393 () Bool)

(declare-fun c!1214598 () Bool)

(assert (=> d!2069393 (= c!1214598 (isEmpty!37817 s!2326))))

(declare-fun e!3991191 () Bool)

(assert (=> d!2069393 (= (matchZipper!2471 lt!2411821 s!2326) e!3991191)))

(declare-fun b!6595673 () Bool)

(assert (=> b!6595673 (= e!3991191 (nullableZipper!2204 lt!2411821))))

(declare-fun b!6595674 () Bool)

(assert (=> b!6595674 (= e!3991191 (matchZipper!2471 (derivationStepZipper!2425 lt!2411821 (head!13370 s!2326)) (tail!12455 s!2326)))))

(assert (= (and d!2069393 c!1214598) b!6595673))

(assert (= (and d!2069393 (not c!1214598)) b!6595674))

(assert (=> d!2069393 m!7373020))

(declare-fun m!7373110 () Bool)

(assert (=> b!6595673 m!7373110))

(assert (=> b!6595674 m!7373028))

(assert (=> b!6595674 m!7373028))

(declare-fun m!7373112 () Bool)

(assert (=> b!6595674 m!7373112))

(assert (=> b!6595674 m!7373030))

(assert (=> b!6595674 m!7373112))

(assert (=> b!6595674 m!7373030))

(declare-fun m!7373114 () Bool)

(assert (=> b!6595674 m!7373114))

(assert (=> b!6594816 d!2069393))

(declare-fun d!2069395 () Bool)

(assert (=> d!2069395 (= (matchR!8642 lt!2411833 s!2326) (matchZipper!2471 lt!2411821 s!2326))))

(declare-fun lt!2411983 () Unit!159171)

(declare-fun choose!49209 ((InoxSet Context!11686) List!65678 Regex!16459 List!65676) Unit!159171)

(assert (=> d!2069395 (= lt!2411983 (choose!49209 lt!2411821 lt!2411831 lt!2411833 s!2326))))

(assert (=> d!2069395 (validRegex!8195 lt!2411833)))

(assert (=> d!2069395 (= (theoremZipperRegexEquiv!881 lt!2411821 lt!2411831 lt!2411833 s!2326) lt!2411983)))

(declare-fun bs!1691629 () Bool)

(assert (= bs!1691629 d!2069395))

(assert (=> bs!1691629 m!7372344))

(assert (=> bs!1691629 m!7372346))

(declare-fun m!7373116 () Bool)

(assert (=> bs!1691629 m!7373116))

(assert (=> bs!1691629 m!7373108))

(assert (=> b!6594816 d!2069395))

(assert (=> b!6594815 d!2069385))

(declare-fun b!6595675 () Bool)

(declare-fun e!3991192 () Bool)

(declare-fun e!3991195 () Bool)

(assert (=> b!6595675 (= e!3991192 e!3991195)))

(declare-fun res!2704408 () Bool)

(assert (=> b!6595675 (= res!2704408 (not (nullable!6452 (reg!16788 lt!2411818))))))

(assert (=> b!6595675 (=> (not res!2704408) (not e!3991195))))

(declare-fun bm!576627 () Bool)

(declare-fun call!576634 () Bool)

(declare-fun call!576633 () Bool)

(assert (=> bm!576627 (= call!576634 call!576633)))

(declare-fun b!6595676 () Bool)

(declare-fun e!3991197 () Bool)

(declare-fun call!576632 () Bool)

(assert (=> b!6595676 (= e!3991197 call!576632)))

(declare-fun b!6595678 () Bool)

(declare-fun res!2704405 () Bool)

(declare-fun e!3991196 () Bool)

(assert (=> b!6595678 (=> res!2704405 e!3991196)))

(assert (=> b!6595678 (= res!2704405 (not ((_ is Concat!25304) lt!2411818)))))

(declare-fun e!3991194 () Bool)

(assert (=> b!6595678 (= e!3991194 e!3991196)))

(declare-fun bm!576628 () Bool)

(declare-fun c!1214599 () Bool)

(assert (=> bm!576628 (= call!576632 (validRegex!8195 (ite c!1214599 (regTwo!33431 lt!2411818) (regTwo!33430 lt!2411818))))))

(declare-fun b!6595679 () Bool)

(declare-fun res!2704406 () Bool)

(declare-fun e!3991193 () Bool)

(assert (=> b!6595679 (=> (not res!2704406) (not e!3991193))))

(assert (=> b!6595679 (= res!2704406 call!576634)))

(assert (=> b!6595679 (= e!3991194 e!3991193)))

(declare-fun b!6595680 () Bool)

(declare-fun e!3991198 () Bool)

(assert (=> b!6595680 (= e!3991198 e!3991192)))

(declare-fun c!1214600 () Bool)

(assert (=> b!6595680 (= c!1214600 ((_ is Star!16459) lt!2411818))))

(declare-fun d!2069397 () Bool)

(declare-fun res!2704409 () Bool)

(assert (=> d!2069397 (=> res!2704409 e!3991198)))

(assert (=> d!2069397 (= res!2704409 ((_ is ElementMatch!16459) lt!2411818))))

(assert (=> d!2069397 (= (validRegex!8195 lt!2411818) e!3991198)))

(declare-fun b!6595677 () Bool)

(assert (=> b!6595677 (= e!3991192 e!3991194)))

(assert (=> b!6595677 (= c!1214599 ((_ is Union!16459) lt!2411818))))

(declare-fun b!6595681 () Bool)

(assert (=> b!6595681 (= e!3991196 e!3991197)))

(declare-fun res!2704407 () Bool)

(assert (=> b!6595681 (=> (not res!2704407) (not e!3991197))))

(assert (=> b!6595681 (= res!2704407 call!576634)))

(declare-fun bm!576629 () Bool)

(assert (=> bm!576629 (= call!576633 (validRegex!8195 (ite c!1214600 (reg!16788 lt!2411818) (ite c!1214599 (regOne!33431 lt!2411818) (regOne!33430 lt!2411818)))))))

(declare-fun b!6595682 () Bool)

(assert (=> b!6595682 (= e!3991193 call!576632)))

(declare-fun b!6595683 () Bool)

(assert (=> b!6595683 (= e!3991195 call!576633)))

(assert (= (and d!2069397 (not res!2704409)) b!6595680))

(assert (= (and b!6595680 c!1214600) b!6595675))

(assert (= (and b!6595680 (not c!1214600)) b!6595677))

(assert (= (and b!6595675 res!2704408) b!6595683))

(assert (= (and b!6595677 c!1214599) b!6595679))

(assert (= (and b!6595677 (not c!1214599)) b!6595678))

(assert (= (and b!6595679 res!2704406) b!6595682))

(assert (= (and b!6595678 (not res!2704405)) b!6595681))

(assert (= (and b!6595681 res!2704407) b!6595676))

(assert (= (or b!6595682 b!6595676) bm!576628))

(assert (= (or b!6595679 b!6595681) bm!576627))

(assert (= (or b!6595683 bm!576627) bm!576629))

(declare-fun m!7373118 () Bool)

(assert (=> b!6595675 m!7373118))

(declare-fun m!7373120 () Bool)

(assert (=> bm!576628 m!7373120))

(declare-fun m!7373122 () Bool)

(assert (=> bm!576629 m!7373122))

(assert (=> b!6594795 d!2069397))

(assert (=> b!6594798 d!2069375))

(declare-fun b!6595684 () Bool)

(declare-fun e!3991204 () Bool)

(declare-fun e!3991203 () Bool)

(assert (=> b!6595684 (= e!3991204 e!3991203)))

(declare-fun c!1214601 () Bool)

(assert (=> b!6595684 (= c!1214601 ((_ is EmptyLang!16459) lt!2411829))))

(declare-fun d!2069399 () Bool)

(assert (=> d!2069399 e!3991204))

(declare-fun c!1214603 () Bool)

(assert (=> d!2069399 (= c!1214603 ((_ is EmptyExpr!16459) lt!2411829))))

(declare-fun lt!2411984 () Bool)

(declare-fun e!3991199 () Bool)

(assert (=> d!2069399 (= lt!2411984 e!3991199)))

(declare-fun c!1214602 () Bool)

(assert (=> d!2069399 (= c!1214602 (isEmpty!37817 s!2326))))

(assert (=> d!2069399 (validRegex!8195 lt!2411829)))

(assert (=> d!2069399 (= (matchR!8642 lt!2411829 s!2326) lt!2411984)))

(declare-fun b!6595685 () Bool)

(declare-fun res!2704417 () Bool)

(declare-fun e!3991201 () Bool)

(assert (=> b!6595685 (=> (not res!2704417) (not e!3991201))))

(assert (=> b!6595685 (= res!2704417 (isEmpty!37817 (tail!12455 s!2326)))))

(declare-fun b!6595686 () Bool)

(declare-fun call!576635 () Bool)

(assert (=> b!6595686 (= e!3991204 (= lt!2411984 call!576635))))

(declare-fun b!6595687 () Bool)

(declare-fun res!2704412 () Bool)

(assert (=> b!6595687 (=> (not res!2704412) (not e!3991201))))

(assert (=> b!6595687 (= res!2704412 (not call!576635))))

(declare-fun b!6595688 () Bool)

(declare-fun e!3991205 () Bool)

(assert (=> b!6595688 (= e!3991205 (not (= (head!13370 s!2326) (c!1214332 lt!2411829))))))

(declare-fun bm!576630 () Bool)

(assert (=> bm!576630 (= call!576635 (isEmpty!37817 s!2326))))

(declare-fun b!6595689 () Bool)

(declare-fun e!3991200 () Bool)

(declare-fun e!3991202 () Bool)

(assert (=> b!6595689 (= e!3991200 e!3991202)))

(declare-fun res!2704413 () Bool)

(assert (=> b!6595689 (=> (not res!2704413) (not e!3991202))))

(assert (=> b!6595689 (= res!2704413 (not lt!2411984))))

(declare-fun b!6595690 () Bool)

(declare-fun res!2704410 () Bool)

(assert (=> b!6595690 (=> res!2704410 e!3991200)))

(assert (=> b!6595690 (= res!2704410 (not ((_ is ElementMatch!16459) lt!2411829)))))

(assert (=> b!6595690 (= e!3991203 e!3991200)))

(declare-fun b!6595691 () Bool)

(assert (=> b!6595691 (= e!3991199 (nullable!6452 lt!2411829))))

(declare-fun b!6595692 () Bool)

(assert (=> b!6595692 (= e!3991202 e!3991205)))

(declare-fun res!2704411 () Bool)

(assert (=> b!6595692 (=> res!2704411 e!3991205)))

(assert (=> b!6595692 (= res!2704411 call!576635)))

(declare-fun b!6595693 () Bool)

(declare-fun res!2704415 () Bool)

(assert (=> b!6595693 (=> res!2704415 e!3991205)))

(assert (=> b!6595693 (= res!2704415 (not (isEmpty!37817 (tail!12455 s!2326))))))

(declare-fun b!6595694 () Bool)

(assert (=> b!6595694 (= e!3991203 (not lt!2411984))))

(declare-fun b!6595695 () Bool)

(declare-fun res!2704414 () Bool)

(assert (=> b!6595695 (=> res!2704414 e!3991200)))

(assert (=> b!6595695 (= res!2704414 e!3991201)))

(declare-fun res!2704416 () Bool)

(assert (=> b!6595695 (=> (not res!2704416) (not e!3991201))))

(assert (=> b!6595695 (= res!2704416 lt!2411984)))

(declare-fun b!6595696 () Bool)

(assert (=> b!6595696 (= e!3991201 (= (head!13370 s!2326) (c!1214332 lt!2411829)))))

(declare-fun b!6595697 () Bool)

(assert (=> b!6595697 (= e!3991199 (matchR!8642 (derivativeStep!5143 lt!2411829 (head!13370 s!2326)) (tail!12455 s!2326)))))

(assert (= (and d!2069399 c!1214602) b!6595691))

(assert (= (and d!2069399 (not c!1214602)) b!6595697))

(assert (= (and d!2069399 c!1214603) b!6595686))

(assert (= (and d!2069399 (not c!1214603)) b!6595684))

(assert (= (and b!6595684 c!1214601) b!6595694))

(assert (= (and b!6595684 (not c!1214601)) b!6595690))

(assert (= (and b!6595690 (not res!2704410)) b!6595695))

(assert (= (and b!6595695 res!2704416) b!6595687))

(assert (= (and b!6595687 res!2704412) b!6595685))

(assert (= (and b!6595685 res!2704417) b!6595696))

(assert (= (and b!6595695 (not res!2704414)) b!6595689))

(assert (= (and b!6595689 res!2704413) b!6595692))

(assert (= (and b!6595692 (not res!2704411)) b!6595693))

(assert (= (and b!6595693 (not res!2704415)) b!6595688))

(assert (= (or b!6595686 b!6595687 b!6595692) bm!576630))

(assert (=> b!6595688 m!7373028))

(assert (=> b!6595685 m!7373030))

(assert (=> b!6595685 m!7373030))

(assert (=> b!6595685 m!7373032))

(assert (=> b!6595697 m!7373028))

(assert (=> b!6595697 m!7373028))

(declare-fun m!7373124 () Bool)

(assert (=> b!6595697 m!7373124))

(assert (=> b!6595697 m!7373030))

(assert (=> b!6595697 m!7373124))

(assert (=> b!6595697 m!7373030))

(declare-fun m!7373126 () Bool)

(assert (=> b!6595697 m!7373126))

(assert (=> b!6595696 m!7373028))

(declare-fun m!7373128 () Bool)

(assert (=> b!6595691 m!7373128))

(assert (=> b!6595693 m!7373030))

(assert (=> b!6595693 m!7373030))

(assert (=> b!6595693 m!7373032))

(assert (=> d!2069399 m!7373020))

(declare-fun m!7373130 () Bool)

(assert (=> d!2069399 m!7373130))

(assert (=> bm!576630 m!7373020))

(assert (=> b!6594817 d!2069399))

(declare-fun bs!1691630 () Bool)

(declare-fun b!6595704 () Bool)

(assert (= bs!1691630 (and b!6595704 d!2069357)))

(declare-fun lambda!367455 () Int)

(assert (=> bs!1691630 (not (= lambda!367455 lambda!367439))))

(declare-fun bs!1691631 () Bool)

(assert (= bs!1691631 (and b!6595704 d!2069359)))

(assert (=> bs!1691631 (not (= lambda!367455 lambda!367444))))

(assert (=> bs!1691631 (not (= lambda!367455 lambda!367445))))

(declare-fun bs!1691632 () Bool)

(assert (= bs!1691632 (and b!6595704 b!6595552)))

(assert (=> bs!1691632 (= (and (= (reg!16788 lt!2411829) (reg!16788 r!7292)) (= lt!2411829 r!7292)) (= lambda!367455 lambda!367453))))

(declare-fun bs!1691633 () Bool)

(assert (= bs!1691633 (and b!6595704 b!6595547)))

(assert (=> bs!1691633 (not (= lambda!367455 lambda!367454))))

(declare-fun bs!1691634 () Bool)

(assert (= bs!1691634 (and b!6595704 b!6594800)))

(assert (=> bs!1691634 (not (= lambda!367455 lambda!367365))))

(assert (=> bs!1691634 (not (= lambda!367455 lambda!367366))))

(assert (=> b!6595704 true))

(assert (=> b!6595704 true))

(declare-fun bs!1691635 () Bool)

(declare-fun b!6595699 () Bool)

(assert (= bs!1691635 (and b!6595699 d!2069357)))

(declare-fun lambda!367456 () Int)

(assert (=> bs!1691635 (not (= lambda!367456 lambda!367439))))

(declare-fun bs!1691636 () Bool)

(assert (= bs!1691636 (and b!6595699 b!6595704)))

(assert (=> bs!1691636 (not (= lambda!367456 lambda!367455))))

(declare-fun bs!1691637 () Bool)

(assert (= bs!1691637 (and b!6595699 d!2069359)))

(assert (=> bs!1691637 (not (= lambda!367456 lambda!367444))))

(assert (=> bs!1691637 (= (and (= (regOne!33430 lt!2411829) (regOne!33430 r!7292)) (= (regTwo!33430 lt!2411829) (regTwo!33430 r!7292))) (= lambda!367456 lambda!367445))))

(declare-fun bs!1691638 () Bool)

(assert (= bs!1691638 (and b!6595699 b!6595552)))

(assert (=> bs!1691638 (not (= lambda!367456 lambda!367453))))

(declare-fun bs!1691639 () Bool)

(assert (= bs!1691639 (and b!6595699 b!6595547)))

(assert (=> bs!1691639 (= (and (= (regOne!33430 lt!2411829) (regOne!33430 r!7292)) (= (regTwo!33430 lt!2411829) (regTwo!33430 r!7292))) (= lambda!367456 lambda!367454))))

(declare-fun bs!1691640 () Bool)

(assert (= bs!1691640 (and b!6595699 b!6594800)))

(assert (=> bs!1691640 (not (= lambda!367456 lambda!367365))))

(assert (=> bs!1691640 (= (and (= (regOne!33430 lt!2411829) (regOne!33430 r!7292)) (= (regTwo!33430 lt!2411829) (regTwo!33430 r!7292))) (= lambda!367456 lambda!367366))))

(assert (=> b!6595699 true))

(assert (=> b!6595699 true))

(declare-fun b!6595698 () Bool)

(declare-fun e!3991208 () Bool)

(declare-fun call!576636 () Bool)

(assert (=> b!6595698 (= e!3991208 call!576636)))

(declare-fun e!3991207 () Bool)

(declare-fun call!576637 () Bool)

(assert (=> b!6595699 (= e!3991207 call!576637)))

(declare-fun b!6595701 () Bool)

(declare-fun c!1214604 () Bool)

(assert (=> b!6595701 (= c!1214604 ((_ is Union!16459) lt!2411829))))

(declare-fun e!3991211 () Bool)

(declare-fun e!3991206 () Bool)

(assert (=> b!6595701 (= e!3991211 e!3991206)))

(declare-fun bm!576631 () Bool)

(assert (=> bm!576631 (= call!576636 (isEmpty!37817 s!2326))))

(declare-fun b!6595702 () Bool)

(declare-fun c!1214605 () Bool)

(assert (=> b!6595702 (= c!1214605 ((_ is ElementMatch!16459) lt!2411829))))

(declare-fun e!3991210 () Bool)

(assert (=> b!6595702 (= e!3991210 e!3991211)))

(declare-fun b!6595703 () Bool)

(declare-fun e!3991212 () Bool)

(assert (=> b!6595703 (= e!3991212 (matchRSpec!3560 (regTwo!33431 lt!2411829) s!2326))))

(declare-fun e!3991209 () Bool)

(assert (=> b!6595704 (= e!3991209 call!576637)))

(declare-fun b!6595705 () Bool)

(assert (=> b!6595705 (= e!3991206 e!3991207)))

(declare-fun c!1214607 () Bool)

(assert (=> b!6595705 (= c!1214607 ((_ is Star!16459) lt!2411829))))

(declare-fun b!6595706 () Bool)

(assert (=> b!6595706 (= e!3991206 e!3991212)))

(declare-fun res!2704420 () Bool)

(assert (=> b!6595706 (= res!2704420 (matchRSpec!3560 (regOne!33431 lt!2411829) s!2326))))

(assert (=> b!6595706 (=> res!2704420 e!3991212)))

(declare-fun b!6595707 () Bool)

(assert (=> b!6595707 (= e!3991208 e!3991210)))

(declare-fun res!2704418 () Bool)

(assert (=> b!6595707 (= res!2704418 (not ((_ is EmptyLang!16459) lt!2411829)))))

(assert (=> b!6595707 (=> (not res!2704418) (not e!3991210))))

(declare-fun b!6595708 () Bool)

(assert (=> b!6595708 (= e!3991211 (= s!2326 (Cons!65552 (c!1214332 lt!2411829) Nil!65552)))))

(declare-fun bm!576632 () Bool)

(assert (=> bm!576632 (= call!576637 (Exists!3529 (ite c!1214607 lambda!367455 lambda!367456)))))

(declare-fun d!2069401 () Bool)

(declare-fun c!1214606 () Bool)

(assert (=> d!2069401 (= c!1214606 ((_ is EmptyExpr!16459) lt!2411829))))

(assert (=> d!2069401 (= (matchRSpec!3560 lt!2411829 s!2326) e!3991208)))

(declare-fun b!6595700 () Bool)

(declare-fun res!2704419 () Bool)

(assert (=> b!6595700 (=> res!2704419 e!3991209)))

(assert (=> b!6595700 (= res!2704419 call!576636)))

(assert (=> b!6595700 (= e!3991207 e!3991209)))

(assert (= (and d!2069401 c!1214606) b!6595698))

(assert (= (and d!2069401 (not c!1214606)) b!6595707))

(assert (= (and b!6595707 res!2704418) b!6595702))

(assert (= (and b!6595702 c!1214605) b!6595708))

(assert (= (and b!6595702 (not c!1214605)) b!6595701))

(assert (= (and b!6595701 c!1214604) b!6595706))

(assert (= (and b!6595701 (not c!1214604)) b!6595705))

(assert (= (and b!6595706 (not res!2704420)) b!6595703))

(assert (= (and b!6595705 c!1214607) b!6595700))

(assert (= (and b!6595705 (not c!1214607)) b!6595699))

(assert (= (and b!6595700 (not res!2704419)) b!6595704))

(assert (= (or b!6595704 b!6595699) bm!576632))

(assert (= (or b!6595698 b!6595700) bm!576631))

(assert (=> bm!576631 m!7373020))

(declare-fun m!7373132 () Bool)

(assert (=> b!6595703 m!7373132))

(declare-fun m!7373134 () Bool)

(assert (=> b!6595706 m!7373134))

(declare-fun m!7373136 () Bool)

(assert (=> bm!576632 m!7373136))

(assert (=> b!6594817 d!2069401))

(declare-fun d!2069403 () Bool)

(assert (=> d!2069403 (= (matchR!8642 lt!2411829 s!2326) (matchRSpec!3560 lt!2411829 s!2326))))

(declare-fun lt!2411985 () Unit!159171)

(assert (=> d!2069403 (= lt!2411985 (choose!49203 lt!2411829 s!2326))))

(assert (=> d!2069403 (validRegex!8195 lt!2411829)))

(assert (=> d!2069403 (= (mainMatchTheorem!3560 lt!2411829 s!2326) lt!2411985)))

(declare-fun bs!1691641 () Bool)

(assert (= bs!1691641 d!2069403))

(assert (=> bs!1691641 m!7372428))

(assert (=> bs!1691641 m!7372430))

(declare-fun m!7373138 () Bool)

(assert (=> bs!1691641 m!7373138))

(assert (=> bs!1691641 m!7373130))

(assert (=> b!6594817 d!2069403))

(declare-fun bs!1691642 () Bool)

(declare-fun d!2069405 () Bool)

(assert (= bs!1691642 (and d!2069405 d!2069319)))

(declare-fun lambda!367459 () Int)

(assert (=> bs!1691642 (= lambda!367459 lambda!367429)))

(declare-fun bs!1691643 () Bool)

(assert (= bs!1691643 (and d!2069405 d!2069331)))

(assert (=> bs!1691643 (= lambda!367459 lambda!367432)))

(declare-fun bs!1691644 () Bool)

(assert (= bs!1691644 (and d!2069405 d!2069363)))

(assert (=> bs!1691644 (= lambda!367459 lambda!367448)))

(declare-fun b!6595729 () Bool)

(declare-fun e!3991227 () Bool)

(declare-fun e!3991229 () Bool)

(assert (=> b!6595729 (= e!3991227 e!3991229)))

(declare-fun c!1214618 () Bool)

(assert (=> b!6595729 (= c!1214618 (isEmpty!37814 (tail!12454 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun b!6595730 () Bool)

(declare-fun e!3991225 () Regex!16459)

(declare-fun e!3991230 () Regex!16459)

(assert (=> b!6595730 (= e!3991225 e!3991230)))

(declare-fun c!1214616 () Bool)

(assert (=> b!6595730 (= c!1214616 ((_ is Cons!65553) (exprs!6343 (h!72002 zl!343))))))

(declare-fun b!6595731 () Bool)

(assert (=> b!6595731 (= e!3991230 EmptyExpr!16459)))

(declare-fun e!3991228 () Bool)

(assert (=> d!2069405 e!3991228))

(declare-fun res!2704425 () Bool)

(assert (=> d!2069405 (=> (not res!2704425) (not e!3991228))))

(declare-fun lt!2411988 () Regex!16459)

(assert (=> d!2069405 (= res!2704425 (validRegex!8195 lt!2411988))))

(assert (=> d!2069405 (= lt!2411988 e!3991225)))

(declare-fun c!1214619 () Bool)

(declare-fun e!3991226 () Bool)

(assert (=> d!2069405 (= c!1214619 e!3991226)))

(declare-fun res!2704426 () Bool)

(assert (=> d!2069405 (=> (not res!2704426) (not e!3991226))))

(assert (=> d!2069405 (= res!2704426 ((_ is Cons!65553) (exprs!6343 (h!72002 zl!343))))))

(assert (=> d!2069405 (forall!15643 (exprs!6343 (h!72002 zl!343)) lambda!367459)))

(assert (=> d!2069405 (= (generalisedConcat!2056 (exprs!6343 (h!72002 zl!343))) lt!2411988)))

(declare-fun b!6595732 () Bool)

(assert (=> b!6595732 (= e!3991229 (= lt!2411988 (head!13369 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun b!6595733 () Bool)

(declare-fun isEmptyExpr!1837 (Regex!16459) Bool)

(assert (=> b!6595733 (= e!3991227 (isEmptyExpr!1837 lt!2411988))))

(declare-fun b!6595734 () Bool)

(assert (=> b!6595734 (= e!3991225 (h!72001 (exprs!6343 (h!72002 zl!343))))))

(declare-fun b!6595735 () Bool)

(declare-fun isConcat!1360 (Regex!16459) Bool)

(assert (=> b!6595735 (= e!3991229 (isConcat!1360 lt!2411988))))

(declare-fun b!6595736 () Bool)

(assert (=> b!6595736 (= e!3991230 (Concat!25304 (h!72001 (exprs!6343 (h!72002 zl!343))) (generalisedConcat!2056 (t!379329 (exprs!6343 (h!72002 zl!343))))))))

(declare-fun b!6595737 () Bool)

(assert (=> b!6595737 (= e!3991226 (isEmpty!37814 (t!379329 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun b!6595738 () Bool)

(assert (=> b!6595738 (= e!3991228 e!3991227)))

(declare-fun c!1214617 () Bool)

(assert (=> b!6595738 (= c!1214617 (isEmpty!37814 (exprs!6343 (h!72002 zl!343))))))

(assert (= (and d!2069405 res!2704426) b!6595737))

(assert (= (and d!2069405 c!1214619) b!6595734))

(assert (= (and d!2069405 (not c!1214619)) b!6595730))

(assert (= (and b!6595730 c!1214616) b!6595736))

(assert (= (and b!6595730 (not c!1214616)) b!6595731))

(assert (= (and d!2069405 res!2704425) b!6595738))

(assert (= (and b!6595738 c!1214617) b!6595733))

(assert (= (and b!6595738 (not c!1214617)) b!6595729))

(assert (= (and b!6595729 c!1214618) b!6595732))

(assert (= (and b!6595729 (not c!1214618)) b!6595735))

(declare-fun m!7373140 () Bool)

(assert (=> b!6595729 m!7373140))

(assert (=> b!6595729 m!7373140))

(declare-fun m!7373142 () Bool)

(assert (=> b!6595729 m!7373142))

(declare-fun m!7373144 () Bool)

(assert (=> b!6595732 m!7373144))

(assert (=> b!6595737 m!7372340))

(declare-fun m!7373146 () Bool)

(assert (=> b!6595738 m!7373146))

(declare-fun m!7373148 () Bool)

(assert (=> d!2069405 m!7373148))

(declare-fun m!7373150 () Bool)

(assert (=> d!2069405 m!7373150))

(declare-fun m!7373152 () Bool)

(assert (=> b!6595733 m!7373152))

(declare-fun m!7373154 () Bool)

(assert (=> b!6595735 m!7373154))

(assert (=> b!6595736 m!7372438))

(assert (=> b!6594797 d!2069405))

(declare-fun bm!576633 () Bool)

(declare-fun call!576638 () (InoxSet Context!11686))

(assert (=> bm!576633 (= call!576638 (derivationStepZipperDown!1707 (h!72001 (exprs!6343 (Context!11687 (Cons!65553 (h!72001 (exprs!6343 (h!72002 zl!343))) (t!379329 (exprs!6343 (h!72002 zl!343))))))) (Context!11687 (t!379329 (exprs!6343 (Context!11687 (Cons!65553 (h!72001 (exprs!6343 (h!72002 zl!343))) (t!379329 (exprs!6343 (h!72002 zl!343)))))))) (h!72000 s!2326)))))

(declare-fun b!6595739 () Bool)

(declare-fun e!3991233 () (InoxSet Context!11686))

(assert (=> b!6595739 (= e!3991233 ((_ map or) call!576638 (derivationStepZipperUp!1633 (Context!11687 (t!379329 (exprs!6343 (Context!11687 (Cons!65553 (h!72001 (exprs!6343 (h!72002 zl!343))) (t!379329 (exprs!6343 (h!72002 zl!343)))))))) (h!72000 s!2326))))))

(declare-fun b!6595740 () Bool)

(declare-fun e!3991232 () Bool)

(assert (=> b!6595740 (= e!3991232 (nullable!6452 (h!72001 (exprs!6343 (Context!11687 (Cons!65553 (h!72001 (exprs!6343 (h!72002 zl!343))) (t!379329 (exprs!6343 (h!72002 zl!343)))))))))))

(declare-fun d!2069407 () Bool)

(declare-fun c!1214620 () Bool)

(assert (=> d!2069407 (= c!1214620 e!3991232)))

(declare-fun res!2704427 () Bool)

(assert (=> d!2069407 (=> (not res!2704427) (not e!3991232))))

(assert (=> d!2069407 (= res!2704427 ((_ is Cons!65553) (exprs!6343 (Context!11687 (Cons!65553 (h!72001 (exprs!6343 (h!72002 zl!343))) (t!379329 (exprs!6343 (h!72002 zl!343))))))))))

(assert (=> d!2069407 (= (derivationStepZipperUp!1633 (Context!11687 (Cons!65553 (h!72001 (exprs!6343 (h!72002 zl!343))) (t!379329 (exprs!6343 (h!72002 zl!343))))) (h!72000 s!2326)) e!3991233)))

(declare-fun b!6595741 () Bool)

(declare-fun e!3991231 () (InoxSet Context!11686))

(assert (=> b!6595741 (= e!3991231 call!576638)))

(declare-fun b!6595742 () Bool)

(assert (=> b!6595742 (= e!3991233 e!3991231)))

(declare-fun c!1214621 () Bool)

(assert (=> b!6595742 (= c!1214621 ((_ is Cons!65553) (exprs!6343 (Context!11687 (Cons!65553 (h!72001 (exprs!6343 (h!72002 zl!343))) (t!379329 (exprs!6343 (h!72002 zl!343))))))))))

(declare-fun b!6595743 () Bool)

(assert (=> b!6595743 (= e!3991231 ((as const (Array Context!11686 Bool)) false))))

(assert (= (and d!2069407 res!2704427) b!6595740))

(assert (= (and d!2069407 c!1214620) b!6595739))

(assert (= (and d!2069407 (not c!1214620)) b!6595742))

(assert (= (and b!6595742 c!1214621) b!6595741))

(assert (= (and b!6595742 (not c!1214621)) b!6595743))

(assert (= (or b!6595739 b!6595741) bm!576633))

(declare-fun m!7373156 () Bool)

(assert (=> bm!576633 m!7373156))

(declare-fun m!7373158 () Bool)

(assert (=> b!6595739 m!7373158))

(declare-fun m!7373160 () Bool)

(assert (=> b!6595740 m!7373160))

(assert (=> b!6594812 d!2069407))

(declare-fun d!2069409 () Bool)

(assert (=> d!2069409 (= (flatMap!1964 z!1189 lambda!367367) (choose!49198 z!1189 lambda!367367))))

(declare-fun bs!1691645 () Bool)

(assert (= bs!1691645 d!2069409))

(declare-fun m!7373162 () Bool)

(assert (=> bs!1691645 m!7373162))

(assert (=> b!6594812 d!2069409))

(declare-fun d!2069411 () Bool)

(assert (=> d!2069411 (= (flatMap!1964 z!1189 lambda!367367) (dynLambda!26106 lambda!367367 (h!72002 zl!343)))))

(declare-fun lt!2411989 () Unit!159171)

(assert (=> d!2069411 (= lt!2411989 (choose!49197 z!1189 (h!72002 zl!343) lambda!367367))))

(assert (=> d!2069411 (= z!1189 (store ((as const (Array Context!11686 Bool)) false) (h!72002 zl!343) true))))

(assert (=> d!2069411 (= (lemmaFlatMapOnSingletonSet!1490 z!1189 (h!72002 zl!343) lambda!367367) lt!2411989)))

(declare-fun b_lambda!249685 () Bool)

(assert (=> (not b_lambda!249685) (not d!2069411)))

(declare-fun bs!1691646 () Bool)

(assert (= bs!1691646 d!2069411))

(assert (=> bs!1691646 m!7372458))

(declare-fun m!7373164 () Bool)

(assert (=> bs!1691646 m!7373164))

(declare-fun m!7373166 () Bool)

(assert (=> bs!1691646 m!7373166))

(declare-fun m!7373168 () Bool)

(assert (=> bs!1691646 m!7373168))

(assert (=> b!6594812 d!2069411))

(assert (=> b!6594812 d!2069337))

(declare-fun d!2069413 () Bool)

(assert (=> d!2069413 (= (nullable!6452 (h!72001 (exprs!6343 (h!72002 zl!343)))) (nullableFct!2377 (h!72001 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun bs!1691647 () Bool)

(assert (= bs!1691647 d!2069413))

(declare-fun m!7373170 () Bool)

(assert (=> bs!1691647 m!7373170))

(assert (=> b!6594812 d!2069413))

(declare-fun b!6595744 () Bool)

(declare-fun e!3991239 () (InoxSet Context!11686))

(declare-fun e!3991238 () (InoxSet Context!11686))

(assert (=> b!6595744 (= e!3991239 e!3991238)))

(declare-fun c!1214626 () Bool)

(assert (=> b!6595744 (= c!1214626 ((_ is Union!16459) (h!72001 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun b!6595745 () Bool)

(declare-fun e!3991237 () (InoxSet Context!11686))

(declare-fun e!3991234 () (InoxSet Context!11686))

(assert (=> b!6595745 (= e!3991237 e!3991234)))

(declare-fun c!1214623 () Bool)

(assert (=> b!6595745 (= c!1214623 ((_ is Concat!25304) (h!72001 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun call!576642 () List!65677)

(declare-fun bm!576634 () Bool)

(declare-fun c!1214624 () Bool)

(assert (=> bm!576634 (= call!576642 ($colon$colon!2300 (exprs!6343 lt!2411824) (ite (or c!1214624 c!1214623) (regTwo!33430 (h!72001 (exprs!6343 (h!72002 zl!343)))) (h!72001 (exprs!6343 (h!72002 zl!343))))))))

(declare-fun b!6595746 () Bool)

(declare-fun e!3991235 () (InoxSet Context!11686))

(assert (=> b!6595746 (= e!3991235 ((as const (Array Context!11686 Bool)) false))))

(declare-fun bm!576635 () Bool)

(declare-fun call!576644 () (InoxSet Context!11686))

(declare-fun call!576641 () (InoxSet Context!11686))

(assert (=> bm!576635 (= call!576644 call!576641)))

(declare-fun d!2069415 () Bool)

(declare-fun c!1214622 () Bool)

(assert (=> d!2069415 (= c!1214622 (and ((_ is ElementMatch!16459) (h!72001 (exprs!6343 (h!72002 zl!343)))) (= (c!1214332 (h!72001 (exprs!6343 (h!72002 zl!343)))) (h!72000 s!2326))))))

(assert (=> d!2069415 (= (derivationStepZipperDown!1707 (h!72001 (exprs!6343 (h!72002 zl!343))) lt!2411824 (h!72000 s!2326)) e!3991239)))

(declare-fun b!6595747 () Bool)

(declare-fun e!3991236 () Bool)

(assert (=> b!6595747 (= c!1214624 e!3991236)))

(declare-fun res!2704428 () Bool)

(assert (=> b!6595747 (=> (not res!2704428) (not e!3991236))))

(assert (=> b!6595747 (= res!2704428 ((_ is Concat!25304) (h!72001 (exprs!6343 (h!72002 zl!343)))))))

(assert (=> b!6595747 (= e!3991238 e!3991237)))

(declare-fun b!6595748 () Bool)

(declare-fun call!576643 () (InoxSet Context!11686))

(assert (=> b!6595748 (= e!3991235 call!576643)))

(declare-fun bm!576636 () Bool)

(assert (=> bm!576636 (= call!576643 call!576644)))

(declare-fun b!6595749 () Bool)

(declare-fun call!576639 () (InoxSet Context!11686))

(assert (=> b!6595749 (= e!3991237 ((_ map or) call!576639 call!576644))))

(declare-fun b!6595750 () Bool)

(assert (=> b!6595750 (= e!3991236 (nullable!6452 (regOne!33430 (h!72001 (exprs!6343 (h!72002 zl!343))))))))

(declare-fun b!6595751 () Bool)

(assert (=> b!6595751 (= e!3991238 ((_ map or) call!576641 call!576639))))

(declare-fun bm!576637 () Bool)

(declare-fun call!576640 () List!65677)

(assert (=> bm!576637 (= call!576640 call!576642)))

(declare-fun b!6595752 () Bool)

(assert (=> b!6595752 (= e!3991239 (store ((as const (Array Context!11686 Bool)) false) lt!2411824 true))))

(declare-fun b!6595753 () Bool)

(declare-fun c!1214625 () Bool)

(assert (=> b!6595753 (= c!1214625 ((_ is Star!16459) (h!72001 (exprs!6343 (h!72002 zl!343)))))))

(assert (=> b!6595753 (= e!3991234 e!3991235)))

(declare-fun b!6595754 () Bool)

(assert (=> b!6595754 (= e!3991234 call!576643)))

(declare-fun bm!576638 () Bool)

(assert (=> bm!576638 (= call!576639 (derivationStepZipperDown!1707 (ite c!1214626 (regTwo!33431 (h!72001 (exprs!6343 (h!72002 zl!343)))) (regOne!33430 (h!72001 (exprs!6343 (h!72002 zl!343))))) (ite c!1214626 lt!2411824 (Context!11687 call!576642)) (h!72000 s!2326)))))

(declare-fun bm!576639 () Bool)

(assert (=> bm!576639 (= call!576641 (derivationStepZipperDown!1707 (ite c!1214626 (regOne!33431 (h!72001 (exprs!6343 (h!72002 zl!343)))) (ite c!1214624 (regTwo!33430 (h!72001 (exprs!6343 (h!72002 zl!343)))) (ite c!1214623 (regOne!33430 (h!72001 (exprs!6343 (h!72002 zl!343)))) (reg!16788 (h!72001 (exprs!6343 (h!72002 zl!343))))))) (ite (or c!1214626 c!1214624) lt!2411824 (Context!11687 call!576640)) (h!72000 s!2326)))))

(assert (= (and d!2069415 c!1214622) b!6595752))

(assert (= (and d!2069415 (not c!1214622)) b!6595744))

(assert (= (and b!6595744 c!1214626) b!6595751))

(assert (= (and b!6595744 (not c!1214626)) b!6595747))

(assert (= (and b!6595747 res!2704428) b!6595750))

(assert (= (and b!6595747 c!1214624) b!6595749))

(assert (= (and b!6595747 (not c!1214624)) b!6595745))

(assert (= (and b!6595745 c!1214623) b!6595754))

(assert (= (and b!6595745 (not c!1214623)) b!6595753))

(assert (= (and b!6595753 c!1214625) b!6595748))

(assert (= (and b!6595753 (not c!1214625)) b!6595746))

(assert (= (or b!6595754 b!6595748) bm!576637))

(assert (= (or b!6595754 b!6595748) bm!576636))

(assert (= (or b!6595749 bm!576637) bm!576634))

(assert (= (or b!6595749 bm!576636) bm!576635))

(assert (= (or b!6595751 b!6595749) bm!576638))

(assert (= (or b!6595751 bm!576635) bm!576639))

(declare-fun m!7373172 () Bool)

(assert (=> bm!576638 m!7373172))

(assert (=> b!6595752 m!7372420))

(declare-fun m!7373174 () Bool)

(assert (=> b!6595750 m!7373174))

(declare-fun m!7373176 () Bool)

(assert (=> bm!576639 m!7373176))

(declare-fun m!7373178 () Bool)

(assert (=> bm!576634 m!7373178))

(assert (=> b!6594812 d!2069415))

(declare-fun bm!576640 () Bool)

(declare-fun call!576645 () (InoxSet Context!11686))

(assert (=> bm!576640 (= call!576645 (derivationStepZipperDown!1707 (h!72001 (exprs!6343 (h!72002 zl!343))) (Context!11687 (t!379329 (exprs!6343 (h!72002 zl!343)))) (h!72000 s!2326)))))

(declare-fun e!3991242 () (InoxSet Context!11686))

(declare-fun b!6595755 () Bool)

(assert (=> b!6595755 (= e!3991242 ((_ map or) call!576645 (derivationStepZipperUp!1633 (Context!11687 (t!379329 (exprs!6343 (h!72002 zl!343)))) (h!72000 s!2326))))))

(declare-fun b!6595756 () Bool)

(declare-fun e!3991241 () Bool)

(assert (=> b!6595756 (= e!3991241 (nullable!6452 (h!72001 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun d!2069417 () Bool)

(declare-fun c!1214627 () Bool)

(assert (=> d!2069417 (= c!1214627 e!3991241)))

(declare-fun res!2704429 () Bool)

(assert (=> d!2069417 (=> (not res!2704429) (not e!3991241))))

(assert (=> d!2069417 (= res!2704429 ((_ is Cons!65553) (exprs!6343 (h!72002 zl!343))))))

(assert (=> d!2069417 (= (derivationStepZipperUp!1633 (h!72002 zl!343) (h!72000 s!2326)) e!3991242)))

(declare-fun b!6595757 () Bool)

(declare-fun e!3991240 () (InoxSet Context!11686))

(assert (=> b!6595757 (= e!3991240 call!576645)))

(declare-fun b!6595758 () Bool)

(assert (=> b!6595758 (= e!3991242 e!3991240)))

(declare-fun c!1214628 () Bool)

(assert (=> b!6595758 (= c!1214628 ((_ is Cons!65553) (exprs!6343 (h!72002 zl!343))))))

(declare-fun b!6595759 () Bool)

(assert (=> b!6595759 (= e!3991240 ((as const (Array Context!11686 Bool)) false))))

(assert (= (and d!2069417 res!2704429) b!6595756))

(assert (= (and d!2069417 c!1214627) b!6595755))

(assert (= (and d!2069417 (not c!1214627)) b!6595758))

(assert (= (and b!6595758 c!1214628) b!6595757))

(assert (= (and b!6595758 (not c!1214628)) b!6595759))

(assert (= (or b!6595755 b!6595757) bm!576640))

(declare-fun m!7373180 () Bool)

(assert (=> bm!576640 m!7373180))

(declare-fun m!7373182 () Bool)

(assert (=> b!6595755 m!7373182))

(assert (=> b!6595756 m!7372462))

(assert (=> b!6594812 d!2069417))

(assert (=> b!6594791 d!2069375))

(declare-fun b!6595794 () Bool)

(declare-fun e!3991264 () Bool)

(declare-fun lt!2411992 () Int)

(declare-fun call!576666 () Int)

(assert (=> b!6595794 (= e!3991264 (> lt!2411992 call!576666))))

(declare-fun b!6595795 () Bool)

(declare-fun e!3991265 () Bool)

(declare-fun e!3991271 () Bool)

(assert (=> b!6595795 (= e!3991265 e!3991271)))

(declare-fun c!1214644 () Bool)

(assert (=> b!6595795 (= c!1214644 ((_ is Union!16459) r!7292))))

(declare-fun b!6595796 () Bool)

(declare-fun e!3991268 () Int)

(assert (=> b!6595796 (= e!3991268 1)))

(declare-fun b!6595797 () Bool)

(declare-fun e!3991269 () Int)

(assert (=> b!6595797 (= e!3991269 1)))

(declare-fun bm!576655 () Bool)

(declare-fun call!576665 () Int)

(declare-fun call!576664 () Int)

(assert (=> bm!576655 (= call!576665 call!576664)))

(declare-fun c!1214647 () Bool)

(declare-fun call!576661 () Int)

(declare-fun call!576662 () Int)

(declare-fun bm!576656 () Bool)

(declare-fun call!576660 () Int)

(assert (=> bm!576656 (= call!576661 (maxBigInt!0 (ite c!1214647 call!576662 call!576660) (ite c!1214647 call!576660 call!576662)))))

(declare-fun b!6595798 () Bool)

(declare-fun res!2704438 () Bool)

(declare-fun e!3991270 () Bool)

(assert (=> b!6595798 (=> (not res!2704438) (not e!3991270))))

(assert (=> b!6595798 (= res!2704438 (> lt!2411992 call!576665))))

(declare-fun e!3991272 () Bool)

(assert (=> b!6595798 (= e!3991272 e!3991270)))

(declare-fun b!6595799 () Bool)

(assert (=> b!6595799 (= e!3991271 e!3991264)))

(declare-fun res!2704437 () Bool)

(assert (=> b!6595799 (= res!2704437 (> lt!2411992 call!576664))))

(assert (=> b!6595799 (=> (not res!2704437) (not e!3991264))))

(declare-fun bm!576657 () Bool)

(assert (=> bm!576657 (= call!576662 (regexDepth!356 (ite c!1214647 (regOne!33431 r!7292) (regTwo!33430 r!7292))))))

(declare-fun b!6595800 () Bool)

(declare-fun e!3991263 () Int)

(declare-fun call!576663 () Int)

(assert (=> b!6595800 (= e!3991263 (+ 1 call!576663))))

(declare-fun bm!576658 () Bool)

(declare-fun c!1214646 () Bool)

(assert (=> bm!576658 (= call!576664 (regexDepth!356 (ite c!1214644 (regOne!33431 r!7292) (ite c!1214646 (regOne!33430 r!7292) (reg!16788 r!7292)))))))

(declare-fun b!6595801 () Bool)

(declare-fun e!3991266 () Bool)

(assert (=> b!6595801 (= e!3991266 (= lt!2411992 1))))

(declare-fun d!2069419 () Bool)

(assert (=> d!2069419 e!3991265))

(declare-fun res!2704436 () Bool)

(assert (=> d!2069419 (=> (not res!2704436) (not e!3991265))))

(assert (=> d!2069419 (= res!2704436 (> lt!2411992 0))))

(assert (=> d!2069419 (= lt!2411992 e!3991269)))

(declare-fun c!1214648 () Bool)

(assert (=> d!2069419 (= c!1214648 ((_ is ElementMatch!16459) r!7292))))

(assert (=> d!2069419 (= (regexDepth!356 r!7292) lt!2411992)))

(declare-fun bm!576659 () Bool)

(assert (=> bm!576659 (= call!576660 call!576663)))

(declare-fun bm!576660 () Bool)

(assert (=> bm!576660 (= call!576666 (regexDepth!356 (ite c!1214644 (regTwo!33431 r!7292) (regTwo!33430 r!7292))))))

(declare-fun bm!576661 () Bool)

(declare-fun c!1214645 () Bool)

(assert (=> bm!576661 (= call!576663 (regexDepth!356 (ite c!1214645 (reg!16788 r!7292) (ite c!1214647 (regTwo!33431 r!7292) (regOne!33430 r!7292)))))))

(declare-fun b!6595802 () Bool)

(assert (=> b!6595802 (= e!3991268 (+ 1 call!576661))))

(declare-fun b!6595803 () Bool)

(assert (=> b!6595803 (= e!3991269 e!3991263)))

(assert (=> b!6595803 (= c!1214645 ((_ is Star!16459) r!7292))))

(declare-fun b!6595804 () Bool)

(assert (=> b!6595804 (= e!3991270 (> lt!2411992 call!576666))))

(declare-fun b!6595805 () Bool)

(declare-fun e!3991267 () Int)

(assert (=> b!6595805 (= e!3991267 (+ 1 call!576661))))

(declare-fun b!6595806 () Bool)

(assert (=> b!6595806 (= e!3991267 e!3991268)))

(declare-fun c!1214643 () Bool)

(assert (=> b!6595806 (= c!1214643 ((_ is Concat!25304) r!7292))))

(declare-fun b!6595807 () Bool)

(assert (=> b!6595807 (= e!3991266 (> lt!2411992 call!576665))))

(declare-fun b!6595808 () Bool)

(assert (=> b!6595808 (= c!1214647 ((_ is Union!16459) r!7292))))

(assert (=> b!6595808 (= e!3991263 e!3991267)))

(declare-fun b!6595809 () Bool)

(assert (=> b!6595809 (= e!3991271 e!3991272)))

(assert (=> b!6595809 (= c!1214646 ((_ is Concat!25304) r!7292))))

(declare-fun b!6595810 () Bool)

(declare-fun c!1214649 () Bool)

(assert (=> b!6595810 (= c!1214649 ((_ is Star!16459) r!7292))))

(assert (=> b!6595810 (= e!3991272 e!3991266)))

(assert (= (and d!2069419 c!1214648) b!6595797))

(assert (= (and d!2069419 (not c!1214648)) b!6595803))

(assert (= (and b!6595803 c!1214645) b!6595800))

(assert (= (and b!6595803 (not c!1214645)) b!6595808))

(assert (= (and b!6595808 c!1214647) b!6595805))

(assert (= (and b!6595808 (not c!1214647)) b!6595806))

(assert (= (and b!6595806 c!1214643) b!6595802))

(assert (= (and b!6595806 (not c!1214643)) b!6595796))

(assert (= (or b!6595805 b!6595802) bm!576659))

(assert (= (or b!6595805 b!6595802) bm!576657))

(assert (= (or b!6595805 b!6595802) bm!576656))

(assert (= (or b!6595800 bm!576659) bm!576661))

(assert (= (and d!2069419 res!2704436) b!6595795))

(assert (= (and b!6595795 c!1214644) b!6595799))

(assert (= (and b!6595795 (not c!1214644)) b!6595809))

(assert (= (and b!6595799 res!2704437) b!6595794))

(assert (= (and b!6595809 c!1214646) b!6595798))

(assert (= (and b!6595809 (not c!1214646)) b!6595810))

(assert (= (and b!6595798 res!2704438) b!6595804))

(assert (= (and b!6595810 c!1214649) b!6595807))

(assert (= (and b!6595810 (not c!1214649)) b!6595801))

(assert (= (or b!6595798 b!6595807) bm!576655))

(assert (= (or b!6595794 b!6595804) bm!576660))

(assert (= (or b!6595799 bm!576655) bm!576658))

(declare-fun m!7373184 () Bool)

(assert (=> bm!576660 m!7373184))

(declare-fun m!7373186 () Bool)

(assert (=> bm!576656 m!7373186))

(declare-fun m!7373188 () Bool)

(assert (=> bm!576661 m!7373188))

(declare-fun m!7373190 () Bool)

(assert (=> bm!576658 m!7373190))

(declare-fun m!7373192 () Bool)

(assert (=> bm!576657 m!7373192))

(assert (=> b!6594790 d!2069419))

(declare-fun b!6595811 () Bool)

(declare-fun e!3991274 () Bool)

(declare-fun lt!2411993 () Int)

(declare-fun call!576673 () Int)

(assert (=> b!6595811 (= e!3991274 (> lt!2411993 call!576673))))

(declare-fun b!6595812 () Bool)

(declare-fun e!3991275 () Bool)

(declare-fun e!3991281 () Bool)

(assert (=> b!6595812 (= e!3991275 e!3991281)))

(declare-fun c!1214651 () Bool)

(assert (=> b!6595812 (= c!1214651 ((_ is Union!16459) lt!2411833))))

(declare-fun b!6595813 () Bool)

(declare-fun e!3991278 () Int)

(assert (=> b!6595813 (= e!3991278 1)))

(declare-fun b!6595814 () Bool)

(declare-fun e!3991279 () Int)

(assert (=> b!6595814 (= e!3991279 1)))

(declare-fun bm!576662 () Bool)

(declare-fun call!576672 () Int)

(declare-fun call!576671 () Int)

(assert (=> bm!576662 (= call!576672 call!576671)))

(declare-fun call!576668 () Int)

(declare-fun call!576669 () Int)

(declare-fun call!576667 () Int)

(declare-fun c!1214654 () Bool)

(declare-fun bm!576663 () Bool)

(assert (=> bm!576663 (= call!576668 (maxBigInt!0 (ite c!1214654 call!576669 call!576667) (ite c!1214654 call!576667 call!576669)))))

(declare-fun b!6595815 () Bool)

(declare-fun res!2704441 () Bool)

(declare-fun e!3991280 () Bool)

(assert (=> b!6595815 (=> (not res!2704441) (not e!3991280))))

(assert (=> b!6595815 (= res!2704441 (> lt!2411993 call!576672))))

(declare-fun e!3991282 () Bool)

(assert (=> b!6595815 (= e!3991282 e!3991280)))

(declare-fun b!6595816 () Bool)

(assert (=> b!6595816 (= e!3991281 e!3991274)))

(declare-fun res!2704440 () Bool)

(assert (=> b!6595816 (= res!2704440 (> lt!2411993 call!576671))))

(assert (=> b!6595816 (=> (not res!2704440) (not e!3991274))))

(declare-fun bm!576664 () Bool)

(assert (=> bm!576664 (= call!576669 (regexDepth!356 (ite c!1214654 (regOne!33431 lt!2411833) (regTwo!33430 lt!2411833))))))

(declare-fun b!6595817 () Bool)

(declare-fun e!3991273 () Int)

(declare-fun call!576670 () Int)

(assert (=> b!6595817 (= e!3991273 (+ 1 call!576670))))

(declare-fun bm!576665 () Bool)

(declare-fun c!1214653 () Bool)

(assert (=> bm!576665 (= call!576671 (regexDepth!356 (ite c!1214651 (regOne!33431 lt!2411833) (ite c!1214653 (regOne!33430 lt!2411833) (reg!16788 lt!2411833)))))))

(declare-fun b!6595818 () Bool)

(declare-fun e!3991276 () Bool)

(assert (=> b!6595818 (= e!3991276 (= lt!2411993 1))))

(declare-fun d!2069421 () Bool)

(assert (=> d!2069421 e!3991275))

(declare-fun res!2704439 () Bool)

(assert (=> d!2069421 (=> (not res!2704439) (not e!3991275))))

(assert (=> d!2069421 (= res!2704439 (> lt!2411993 0))))

(assert (=> d!2069421 (= lt!2411993 e!3991279)))

(declare-fun c!1214655 () Bool)

(assert (=> d!2069421 (= c!1214655 ((_ is ElementMatch!16459) lt!2411833))))

(assert (=> d!2069421 (= (regexDepth!356 lt!2411833) lt!2411993)))

(declare-fun bm!576666 () Bool)

(assert (=> bm!576666 (= call!576667 call!576670)))

(declare-fun bm!576667 () Bool)

(assert (=> bm!576667 (= call!576673 (regexDepth!356 (ite c!1214651 (regTwo!33431 lt!2411833) (regTwo!33430 lt!2411833))))))

(declare-fun c!1214652 () Bool)

(declare-fun bm!576668 () Bool)

(assert (=> bm!576668 (= call!576670 (regexDepth!356 (ite c!1214652 (reg!16788 lt!2411833) (ite c!1214654 (regTwo!33431 lt!2411833) (regOne!33430 lt!2411833)))))))

(declare-fun b!6595819 () Bool)

(assert (=> b!6595819 (= e!3991278 (+ 1 call!576668))))

(declare-fun b!6595820 () Bool)

(assert (=> b!6595820 (= e!3991279 e!3991273)))

(assert (=> b!6595820 (= c!1214652 ((_ is Star!16459) lt!2411833))))

(declare-fun b!6595821 () Bool)

(assert (=> b!6595821 (= e!3991280 (> lt!2411993 call!576673))))

(declare-fun b!6595822 () Bool)

(declare-fun e!3991277 () Int)

(assert (=> b!6595822 (= e!3991277 (+ 1 call!576668))))

(declare-fun b!6595823 () Bool)

(assert (=> b!6595823 (= e!3991277 e!3991278)))

(declare-fun c!1214650 () Bool)

(assert (=> b!6595823 (= c!1214650 ((_ is Concat!25304) lt!2411833))))

(declare-fun b!6595824 () Bool)

(assert (=> b!6595824 (= e!3991276 (> lt!2411993 call!576672))))

(declare-fun b!6595825 () Bool)

(assert (=> b!6595825 (= c!1214654 ((_ is Union!16459) lt!2411833))))

(assert (=> b!6595825 (= e!3991273 e!3991277)))

(declare-fun b!6595826 () Bool)

(assert (=> b!6595826 (= e!3991281 e!3991282)))

(assert (=> b!6595826 (= c!1214653 ((_ is Concat!25304) lt!2411833))))

(declare-fun b!6595827 () Bool)

(declare-fun c!1214656 () Bool)

(assert (=> b!6595827 (= c!1214656 ((_ is Star!16459) lt!2411833))))

(assert (=> b!6595827 (= e!3991282 e!3991276)))

(assert (= (and d!2069421 c!1214655) b!6595814))

(assert (= (and d!2069421 (not c!1214655)) b!6595820))

(assert (= (and b!6595820 c!1214652) b!6595817))

(assert (= (and b!6595820 (not c!1214652)) b!6595825))

(assert (= (and b!6595825 c!1214654) b!6595822))

(assert (= (and b!6595825 (not c!1214654)) b!6595823))

(assert (= (and b!6595823 c!1214650) b!6595819))

(assert (= (and b!6595823 (not c!1214650)) b!6595813))

(assert (= (or b!6595822 b!6595819) bm!576666))

(assert (= (or b!6595822 b!6595819) bm!576664))

(assert (= (or b!6595822 b!6595819) bm!576663))

(assert (= (or b!6595817 bm!576666) bm!576668))

(assert (= (and d!2069421 res!2704439) b!6595812))

(assert (= (and b!6595812 c!1214651) b!6595816))

(assert (= (and b!6595812 (not c!1214651)) b!6595826))

(assert (= (and b!6595816 res!2704440) b!6595811))

(assert (= (and b!6595826 c!1214653) b!6595815))

(assert (= (and b!6595826 (not c!1214653)) b!6595827))

(assert (= (and b!6595815 res!2704441) b!6595821))

(assert (= (and b!6595827 c!1214656) b!6595824))

(assert (= (and b!6595827 (not c!1214656)) b!6595818))

(assert (= (or b!6595815 b!6595824) bm!576662))

(assert (= (or b!6595811 b!6595821) bm!576667))

(assert (= (or b!6595816 bm!576662) bm!576665))

(declare-fun m!7373194 () Bool)

(assert (=> bm!576667 m!7373194))

(declare-fun m!7373196 () Bool)

(assert (=> bm!576663 m!7373196))

(declare-fun m!7373198 () Bool)

(assert (=> bm!576668 m!7373198))

(declare-fun m!7373200 () Bool)

(assert (=> bm!576665 m!7373200))

(declare-fun m!7373202 () Bool)

(assert (=> bm!576664 m!7373202))

(assert (=> b!6594790 d!2069421))

(declare-fun bs!1691648 () Bool)

(declare-fun d!2069423 () Bool)

(assert (= bs!1691648 (and d!2069423 d!2069319)))

(declare-fun lambda!367460 () Int)

(assert (=> bs!1691648 (= lambda!367460 lambda!367429)))

(declare-fun bs!1691649 () Bool)

(assert (= bs!1691649 (and d!2069423 d!2069331)))

(assert (=> bs!1691649 (= lambda!367460 lambda!367432)))

(declare-fun bs!1691650 () Bool)

(assert (= bs!1691650 (and d!2069423 d!2069363)))

(assert (=> bs!1691650 (= lambda!367460 lambda!367448)))

(declare-fun bs!1691651 () Bool)

(assert (= bs!1691651 (and d!2069423 d!2069405)))

(assert (=> bs!1691651 (= lambda!367460 lambda!367459)))

(declare-fun b!6595828 () Bool)

(declare-fun e!3991285 () Bool)

(declare-fun e!3991287 () Bool)

(assert (=> b!6595828 (= e!3991285 e!3991287)))

(declare-fun c!1214659 () Bool)

(assert (=> b!6595828 (= c!1214659 (isEmpty!37814 (tail!12454 (t!379329 (exprs!6343 (h!72002 zl!343))))))))

(declare-fun b!6595829 () Bool)

(declare-fun e!3991283 () Regex!16459)

(declare-fun e!3991288 () Regex!16459)

(assert (=> b!6595829 (= e!3991283 e!3991288)))

(declare-fun c!1214657 () Bool)

(assert (=> b!6595829 (= c!1214657 ((_ is Cons!65553) (t!379329 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun b!6595830 () Bool)

(assert (=> b!6595830 (= e!3991288 EmptyExpr!16459)))

(declare-fun e!3991286 () Bool)

(assert (=> d!2069423 e!3991286))

(declare-fun res!2704442 () Bool)

(assert (=> d!2069423 (=> (not res!2704442) (not e!3991286))))

(declare-fun lt!2411994 () Regex!16459)

(assert (=> d!2069423 (= res!2704442 (validRegex!8195 lt!2411994))))

(assert (=> d!2069423 (= lt!2411994 e!3991283)))

(declare-fun c!1214660 () Bool)

(declare-fun e!3991284 () Bool)

(assert (=> d!2069423 (= c!1214660 e!3991284)))

(declare-fun res!2704443 () Bool)

(assert (=> d!2069423 (=> (not res!2704443) (not e!3991284))))

(assert (=> d!2069423 (= res!2704443 ((_ is Cons!65553) (t!379329 (exprs!6343 (h!72002 zl!343)))))))

(assert (=> d!2069423 (forall!15643 (t!379329 (exprs!6343 (h!72002 zl!343))) lambda!367460)))

(assert (=> d!2069423 (= (generalisedConcat!2056 (t!379329 (exprs!6343 (h!72002 zl!343)))) lt!2411994)))

(declare-fun b!6595831 () Bool)

(assert (=> b!6595831 (= e!3991287 (= lt!2411994 (head!13369 (t!379329 (exprs!6343 (h!72002 zl!343))))))))

(declare-fun b!6595832 () Bool)

(assert (=> b!6595832 (= e!3991285 (isEmptyExpr!1837 lt!2411994))))

(declare-fun b!6595833 () Bool)

(assert (=> b!6595833 (= e!3991283 (h!72001 (t!379329 (exprs!6343 (h!72002 zl!343)))))))

(declare-fun b!6595834 () Bool)

(assert (=> b!6595834 (= e!3991287 (isConcat!1360 lt!2411994))))

(declare-fun b!6595835 () Bool)

(assert (=> b!6595835 (= e!3991288 (Concat!25304 (h!72001 (t!379329 (exprs!6343 (h!72002 zl!343)))) (generalisedConcat!2056 (t!379329 (t!379329 (exprs!6343 (h!72002 zl!343)))))))))

(declare-fun b!6595836 () Bool)

(assert (=> b!6595836 (= e!3991284 (isEmpty!37814 (t!379329 (t!379329 (exprs!6343 (h!72002 zl!343))))))))

(declare-fun b!6595837 () Bool)

(assert (=> b!6595837 (= e!3991286 e!3991285)))

(declare-fun c!1214658 () Bool)

(assert (=> b!6595837 (= c!1214658 (isEmpty!37814 (t!379329 (exprs!6343 (h!72002 zl!343)))))))

(assert (= (and d!2069423 res!2704443) b!6595836))

(assert (= (and d!2069423 c!1214660) b!6595833))

(assert (= (and d!2069423 (not c!1214660)) b!6595829))

(assert (= (and b!6595829 c!1214657) b!6595835))

(assert (= (and b!6595829 (not c!1214657)) b!6595830))

(assert (= (and d!2069423 res!2704442) b!6595837))

(assert (= (and b!6595837 c!1214658) b!6595832))

(assert (= (and b!6595837 (not c!1214658)) b!6595828))

(assert (= (and b!6595828 c!1214659) b!6595831))

(assert (= (and b!6595828 (not c!1214659)) b!6595834))

(declare-fun m!7373204 () Bool)

(assert (=> b!6595828 m!7373204))

(assert (=> b!6595828 m!7373204))

(declare-fun m!7373206 () Bool)

(assert (=> b!6595828 m!7373206))

(declare-fun m!7373208 () Bool)

(assert (=> b!6595831 m!7373208))

(declare-fun m!7373210 () Bool)

(assert (=> b!6595836 m!7373210))

(assert (=> b!6595837 m!7372340))

(declare-fun m!7373212 () Bool)

(assert (=> d!2069423 m!7373212))

(declare-fun m!7373214 () Bool)

(assert (=> d!2069423 m!7373214))

(declare-fun m!7373216 () Bool)

(assert (=> b!6595832 m!7373216))

(declare-fun m!7373218 () Bool)

(assert (=> b!6595834 m!7373218))

(declare-fun m!7373220 () Bool)

(assert (=> b!6595835 m!7373220))

(assert (=> b!6594790 d!2069423))

(declare-fun d!2069425 () Bool)

(declare-fun lt!2411995 () Regex!16459)

(assert (=> d!2069425 (validRegex!8195 lt!2411995)))

(assert (=> d!2069425 (= lt!2411995 (generalisedUnion!2303 (unfocusZipperList!1880 (Cons!65554 lt!2411828 Nil!65554))))))

(assert (=> d!2069425 (= (unfocusZipper!2201 (Cons!65554 lt!2411828 Nil!65554)) lt!2411995)))

(declare-fun bs!1691652 () Bool)

(assert (= bs!1691652 d!2069425))

(declare-fun m!7373222 () Bool)

(assert (=> bs!1691652 m!7373222))

(declare-fun m!7373224 () Bool)

(assert (=> bs!1691652 m!7373224))

(assert (=> bs!1691652 m!7373224))

(declare-fun m!7373226 () Bool)

(assert (=> bs!1691652 m!7373226))

(assert (=> b!6594810 d!2069425))

(declare-fun bs!1691653 () Bool)

(declare-fun d!2069427 () Bool)

(assert (= bs!1691653 (and d!2069427 d!2069319)))

(declare-fun lambda!367461 () Int)

(assert (=> bs!1691653 (= lambda!367461 lambda!367429)))

(declare-fun bs!1691654 () Bool)

(assert (= bs!1691654 (and d!2069427 d!2069331)))

(assert (=> bs!1691654 (= lambda!367461 lambda!367432)))

(declare-fun bs!1691655 () Bool)

(assert (= bs!1691655 (and d!2069427 d!2069405)))

(assert (=> bs!1691655 (= lambda!367461 lambda!367459)))

(declare-fun bs!1691656 () Bool)

(assert (= bs!1691656 (and d!2069427 d!2069363)))

(assert (=> bs!1691656 (= lambda!367461 lambda!367448)))

(declare-fun bs!1691657 () Bool)

(assert (= bs!1691657 (and d!2069427 d!2069423)))

(assert (=> bs!1691657 (= lambda!367461 lambda!367460)))

(assert (=> d!2069427 (= (inv!84394 setElem!45024) (forall!15643 (exprs!6343 setElem!45024) lambda!367461))))

(declare-fun bs!1691658 () Bool)

(assert (= bs!1691658 d!2069427))

(declare-fun m!7373228 () Bool)

(assert (=> bs!1691658 m!7373228))

(assert (=> setNonEmpty!45024 d!2069427))

(declare-fun d!2069429 () Bool)

(assert (=> d!2069429 (= (isEmpty!37814 (t!379329 (exprs!6343 (h!72002 zl!343)))) ((_ is Nil!65553) (t!379329 (exprs!6343 (h!72002 zl!343)))))))

(assert (=> b!6594793 d!2069429))

(declare-fun d!2069431 () Bool)

(assert (=> d!2069431 (= (isEmpty!37813 (t!379330 zl!343)) ((_ is Nil!65554) (t!379330 zl!343)))))

(assert (=> b!6594792 d!2069431))

(declare-fun d!2069433 () Bool)

(declare-fun e!3991291 () Bool)

(assert (=> d!2069433 e!3991291))

(declare-fun res!2704446 () Bool)

(assert (=> d!2069433 (=> (not res!2704446) (not e!3991291))))

(declare-fun lt!2411998 () List!65678)

(declare-fun noDuplicate!2264 (List!65678) Bool)

(assert (=> d!2069433 (= res!2704446 (noDuplicate!2264 lt!2411998))))

(declare-fun choose!49210 ((InoxSet Context!11686)) List!65678)

(assert (=> d!2069433 (= lt!2411998 (choose!49210 z!1189))))

(assert (=> d!2069433 (= (toList!10243 z!1189) lt!2411998)))

(declare-fun b!6595840 () Bool)

(declare-fun content!12636 (List!65678) (InoxSet Context!11686))

(assert (=> b!6595840 (= e!3991291 (= (content!12636 lt!2411998) z!1189))))

(assert (= (and d!2069433 res!2704446) b!6595840))

(declare-fun m!7373230 () Bool)

(assert (=> d!2069433 m!7373230))

(declare-fun m!7373232 () Bool)

(assert (=> d!2069433 m!7373232))

(declare-fun m!7373234 () Bool)

(assert (=> b!6595840 m!7373234))

(assert (=> b!6594813 d!2069433))

(declare-fun b!6595851 () Bool)

(declare-fun e!3991294 () Bool)

(assert (=> b!6595851 (= e!3991294 tp_is_empty!42171)))

(declare-fun b!6595854 () Bool)

(declare-fun tp!1819152 () Bool)

(declare-fun tp!1819151 () Bool)

(assert (=> b!6595854 (= e!3991294 (and tp!1819152 tp!1819151))))

(assert (=> b!6594779 (= tp!1819079 e!3991294)))

(declare-fun b!6595852 () Bool)

(declare-fun tp!1819150 () Bool)

(declare-fun tp!1819149 () Bool)

(assert (=> b!6595852 (= e!3991294 (and tp!1819150 tp!1819149))))

(declare-fun b!6595853 () Bool)

(declare-fun tp!1819148 () Bool)

(assert (=> b!6595853 (= e!3991294 tp!1819148)))

(assert (= (and b!6594779 ((_ is ElementMatch!16459) (reg!16788 r!7292))) b!6595851))

(assert (= (and b!6594779 ((_ is Concat!25304) (reg!16788 r!7292))) b!6595852))

(assert (= (and b!6594779 ((_ is Star!16459) (reg!16788 r!7292))) b!6595853))

(assert (= (and b!6594779 ((_ is Union!16459) (reg!16788 r!7292))) b!6595854))

(declare-fun b!6595862 () Bool)

(declare-fun e!3991300 () Bool)

(declare-fun tp!1819157 () Bool)

(assert (=> b!6595862 (= e!3991300 tp!1819157)))

(declare-fun e!3991299 () Bool)

(declare-fun b!6595861 () Bool)

(declare-fun tp!1819158 () Bool)

(assert (=> b!6595861 (= e!3991299 (and (inv!84394 (h!72002 (t!379330 zl!343))) e!3991300 tp!1819158))))

(assert (=> b!6594778 (= tp!1819073 e!3991299)))

(assert (= b!6595861 b!6595862))

(assert (= (and b!6594778 ((_ is Cons!65554) (t!379330 zl!343))) b!6595861))

(declare-fun m!7373236 () Bool)

(assert (=> b!6595861 m!7373236))

(declare-fun b!6595863 () Bool)

(declare-fun e!3991301 () Bool)

(assert (=> b!6595863 (= e!3991301 tp_is_empty!42171)))

(declare-fun b!6595866 () Bool)

(declare-fun tp!1819163 () Bool)

(declare-fun tp!1819162 () Bool)

(assert (=> b!6595866 (= e!3991301 (and tp!1819163 tp!1819162))))

(assert (=> b!6594794 (= tp!1819076 e!3991301)))

(declare-fun b!6595864 () Bool)

(declare-fun tp!1819161 () Bool)

(declare-fun tp!1819160 () Bool)

(assert (=> b!6595864 (= e!3991301 (and tp!1819161 tp!1819160))))

(declare-fun b!6595865 () Bool)

(declare-fun tp!1819159 () Bool)

(assert (=> b!6595865 (= e!3991301 tp!1819159)))

(assert (= (and b!6594794 ((_ is ElementMatch!16459) (regOne!33430 r!7292))) b!6595863))

(assert (= (and b!6594794 ((_ is Concat!25304) (regOne!33430 r!7292))) b!6595864))

(assert (= (and b!6594794 ((_ is Star!16459) (regOne!33430 r!7292))) b!6595865))

(assert (= (and b!6594794 ((_ is Union!16459) (regOne!33430 r!7292))) b!6595866))

(declare-fun b!6595867 () Bool)

(declare-fun e!3991302 () Bool)

(assert (=> b!6595867 (= e!3991302 tp_is_empty!42171)))

(declare-fun b!6595870 () Bool)

(declare-fun tp!1819168 () Bool)

(declare-fun tp!1819167 () Bool)

(assert (=> b!6595870 (= e!3991302 (and tp!1819168 tp!1819167))))

(assert (=> b!6594794 (= tp!1819075 e!3991302)))

(declare-fun b!6595868 () Bool)

(declare-fun tp!1819166 () Bool)

(declare-fun tp!1819165 () Bool)

(assert (=> b!6595868 (= e!3991302 (and tp!1819166 tp!1819165))))

(declare-fun b!6595869 () Bool)

(declare-fun tp!1819164 () Bool)

(assert (=> b!6595869 (= e!3991302 tp!1819164)))

(assert (= (and b!6594794 ((_ is ElementMatch!16459) (regTwo!33430 r!7292))) b!6595867))

(assert (= (and b!6594794 ((_ is Concat!25304) (regTwo!33430 r!7292))) b!6595868))

(assert (= (and b!6594794 ((_ is Star!16459) (regTwo!33430 r!7292))) b!6595869))

(assert (= (and b!6594794 ((_ is Union!16459) (regTwo!33430 r!7292))) b!6595870))

(declare-fun b!6595871 () Bool)

(declare-fun e!3991303 () Bool)

(assert (=> b!6595871 (= e!3991303 tp_is_empty!42171)))

(declare-fun b!6595874 () Bool)

(declare-fun tp!1819173 () Bool)

(declare-fun tp!1819172 () Bool)

(assert (=> b!6595874 (= e!3991303 (and tp!1819173 tp!1819172))))

(assert (=> b!6594774 (= tp!1819074 e!3991303)))

(declare-fun b!6595872 () Bool)

(declare-fun tp!1819171 () Bool)

(declare-fun tp!1819170 () Bool)

(assert (=> b!6595872 (= e!3991303 (and tp!1819171 tp!1819170))))

(declare-fun b!6595873 () Bool)

(declare-fun tp!1819169 () Bool)

(assert (=> b!6595873 (= e!3991303 tp!1819169)))

(assert (= (and b!6594774 ((_ is ElementMatch!16459) (regOne!33431 r!7292))) b!6595871))

(assert (= (and b!6594774 ((_ is Concat!25304) (regOne!33431 r!7292))) b!6595872))

(assert (= (and b!6594774 ((_ is Star!16459) (regOne!33431 r!7292))) b!6595873))

(assert (= (and b!6594774 ((_ is Union!16459) (regOne!33431 r!7292))) b!6595874))

(declare-fun b!6595875 () Bool)

(declare-fun e!3991304 () Bool)

(assert (=> b!6595875 (= e!3991304 tp_is_empty!42171)))

(declare-fun b!6595878 () Bool)

(declare-fun tp!1819178 () Bool)

(declare-fun tp!1819177 () Bool)

(assert (=> b!6595878 (= e!3991304 (and tp!1819178 tp!1819177))))

(assert (=> b!6594774 (= tp!1819070 e!3991304)))

(declare-fun b!6595876 () Bool)

(declare-fun tp!1819176 () Bool)

(declare-fun tp!1819175 () Bool)

(assert (=> b!6595876 (= e!3991304 (and tp!1819176 tp!1819175))))

(declare-fun b!6595877 () Bool)

(declare-fun tp!1819174 () Bool)

(assert (=> b!6595877 (= e!3991304 tp!1819174)))

(assert (= (and b!6594774 ((_ is ElementMatch!16459) (regTwo!33431 r!7292))) b!6595875))

(assert (= (and b!6594774 ((_ is Concat!25304) (regTwo!33431 r!7292))) b!6595876))

(assert (= (and b!6594774 ((_ is Star!16459) (regTwo!33431 r!7292))) b!6595877))

(assert (= (and b!6594774 ((_ is Union!16459) (regTwo!33431 r!7292))) b!6595878))

(declare-fun b!6595883 () Bool)

(declare-fun e!3991307 () Bool)

(declare-fun tp!1819183 () Bool)

(declare-fun tp!1819184 () Bool)

(assert (=> b!6595883 (= e!3991307 (and tp!1819183 tp!1819184))))

(assert (=> b!6594814 (= tp!1819077 e!3991307)))

(assert (= (and b!6594814 ((_ is Cons!65553) (exprs!6343 setElem!45024))) b!6595883))

(declare-fun condSetEmpty!45030 () Bool)

(assert (=> setNonEmpty!45024 (= condSetEmpty!45030 (= setRest!45024 ((as const (Array Context!11686 Bool)) false)))))

(declare-fun setRes!45030 () Bool)

(assert (=> setNonEmpty!45024 (= tp!1819071 setRes!45030)))

(declare-fun setIsEmpty!45030 () Bool)

(assert (=> setIsEmpty!45030 setRes!45030))

(declare-fun e!3991310 () Bool)

(declare-fun tp!1819190 () Bool)

(declare-fun setNonEmpty!45030 () Bool)

(declare-fun setElem!45030 () Context!11686)

(assert (=> setNonEmpty!45030 (= setRes!45030 (and tp!1819190 (inv!84394 setElem!45030) e!3991310))))

(declare-fun setRest!45030 () (InoxSet Context!11686))

(assert (=> setNonEmpty!45030 (= setRest!45024 ((_ map or) (store ((as const (Array Context!11686 Bool)) false) setElem!45030 true) setRest!45030))))

(declare-fun b!6595888 () Bool)

(declare-fun tp!1819189 () Bool)

(assert (=> b!6595888 (= e!3991310 tp!1819189)))

(assert (= (and setNonEmpty!45024 condSetEmpty!45030) setIsEmpty!45030))

(assert (= (and setNonEmpty!45024 (not condSetEmpty!45030)) setNonEmpty!45030))

(assert (= setNonEmpty!45030 b!6595888))

(declare-fun m!7373238 () Bool)

(assert (=> setNonEmpty!45030 m!7373238))

(declare-fun b!6595893 () Bool)

(declare-fun e!3991313 () Bool)

(declare-fun tp!1819193 () Bool)

(assert (=> b!6595893 (= e!3991313 (and tp_is_empty!42171 tp!1819193))))

(assert (=> b!6594776 (= tp!1819078 e!3991313)))

(assert (= (and b!6594776 ((_ is Cons!65552) (t!379328 s!2326))) b!6595893))

(declare-fun b!6595894 () Bool)

(declare-fun e!3991314 () Bool)

(declare-fun tp!1819194 () Bool)

(declare-fun tp!1819195 () Bool)

(assert (=> b!6595894 (= e!3991314 (and tp!1819194 tp!1819195))))

(assert (=> b!6594786 (= tp!1819072 e!3991314)))

(assert (= (and b!6594786 ((_ is Cons!65553) (exprs!6343 (h!72002 zl!343)))) b!6595894))

(declare-fun b_lambda!249687 () Bool)

(assert (= b_lambda!249685 (or b!6594812 b_lambda!249687)))

(declare-fun bs!1691659 () Bool)

(declare-fun d!2069435 () Bool)

(assert (= bs!1691659 (and d!2069435 b!6594812)))

(assert (=> bs!1691659 (= (dynLambda!26106 lambda!367367 (h!72002 zl!343)) (derivationStepZipperUp!1633 (h!72002 zl!343) (h!72000 s!2326)))))

(assert (=> bs!1691659 m!7372460))

(assert (=> d!2069411 d!2069435))

(declare-fun b_lambda!249689 () Bool)

(assert (= b_lambda!249683 (or b!6594812 b_lambda!249689)))

(declare-fun bs!1691660 () Bool)

(declare-fun d!2069437 () Bool)

(assert (= bs!1691660 (and d!2069437 b!6594812)))

(assert (=> bs!1691660 (= (dynLambda!26106 lambda!367367 lt!2411825) (derivationStepZipperUp!1633 lt!2411825 (h!72000 s!2326)))))

(assert (=> bs!1691660 m!7372448))

(assert (=> d!2069347 d!2069437))

(declare-fun b_lambda!249691 () Bool)

(assert (= b_lambda!249669 (or b!6594812 b_lambda!249691)))

(declare-fun bs!1691661 () Bool)

(declare-fun d!2069439 () Bool)

(assert (= bs!1691661 (and d!2069439 b!6594812)))

(assert (=> bs!1691661 (= (dynLambda!26106 lambda!367367 lt!2411828) (derivationStepZipperUp!1633 lt!2411828 (h!72000 s!2326)))))

(assert (=> bs!1691661 m!7372354))

(assert (=> d!2069307 d!2069439))

(declare-fun b_lambda!249693 () Bool)

(assert (= b_lambda!249667 (or b!6594812 b_lambda!249693)))

(declare-fun bs!1691662 () Bool)

(declare-fun d!2069441 () Bool)

(assert (= bs!1691662 (and d!2069441 b!6594812)))

(assert (=> bs!1691662 (= (dynLambda!26106 lambda!367367 lt!2411838) (derivationStepZipperUp!1633 lt!2411838 (h!72000 s!2326)))))

(assert (=> bs!1691662 m!7372356))

(assert (=> d!2069301 d!2069441))

(declare-fun b_lambda!249695 () Bool)

(assert (= b_lambda!249681 (or b!6594812 b_lambda!249695)))

(declare-fun bs!1691663 () Bool)

(declare-fun d!2069443 () Bool)

(assert (= bs!1691663 (and d!2069443 b!6594812)))

(assert (=> bs!1691663 (= (dynLambda!26106 lambda!367367 lt!2411824) (derivationStepZipperUp!1633 lt!2411824 (h!72000 s!2326)))))

(assert (=> bs!1691663 m!7372424))

(assert (=> d!2069339 d!2069443))

(check-sat (not b!6595363) (not b!6595646) (not d!2069409) (not b!6595272) (not d!2069423) (not b_lambda!249687) (not d!2069289) (not b!6595693) (not b!6595854) (not b!6595735) (not b!6595652) (not b!6595697) (not b!6595455) (not b!6595866) (not b!6595594) (not b_lambda!249695) (not d!2069355) (not b!6595832) (not b!6595840) (not d!2069371) (not b!6595494) (not d!2069377) (not b!6595589) (not b!6595649) (not d!2069383) (not b!6595874) (not d!2069343) (not b!6595497) (not bm!576631) (not b!6595834) (not b!6595641) (not d!2069381) (not b!6595750) (not b!6595466) (not d!2069351) (not d!2069389) (not b!6595831) (not b!6595456) (not d!2069399) (not bm!576632) (not b!6595244) (not bm!576606) (not b!6595660) (not bm!576661) (not b!6595663) (not d!2069353) (not b!6595471) (not b!6595852) (not bm!576572) (not d!2069411) (not bm!576603) (not b_lambda!249691) (not bm!576612) (not d!2069349) (not b!6595597) (not b!6595853) (not d!2069309) (not b!6595729) (not b_lambda!249693) (not b!6595452) (not d!2069367) (not b!6595631) (not b!6595732) (not b!6595632) (not bs!1691659) (not setNonEmpty!45030) (not d!2069425) (not b!6595598) (not b!6595836) (not b!6595674) (not b!6595675) (not d!2069385) (not bm!576663) (not b!6595633) (not b!6595668) (not b!6595496) (not bm!576571) (not b!6595493) (not d!2069405) (not b!6595644) (not b!6595706) (not b!6595894) (not d!2069339) (not b!6595657) (not b!6595870) (not d!2069301) (not d!2069413) (not b!6595447) (not d!2069369) (not b!6595755) (not d!2069341) (not b!6595865) (not b!6595654) (not b!6595876) (not bm!576656) (not bm!576628) (not d!2069333) (not b!6595586) (not b!6595868) (not b!6595888) (not b!6595873) (not d!2069387) (not bm!576630) (not b!6595450) (not b!6595893) (not bm!576567) (not b!6595642) (not b!6595666) (not b!6595630) (not d!2069303) (not b!6595739) (not d!2069403) (not b!6595267) (not d!2069307) (not b!6595736) (not b!6595673) (not bm!576624) (not d!2069393) (not b!6595756) (not b!6595368) (not b!6595465) (not b!6595696) (not b!6595274) (not b!6595869) (not d!2069379) (not bs!1691661) (not bm!576623) (not d!2069359) (not b!6595551) (not b!6595453) (not b_lambda!249689) (not b!6595269) (not d!2069395) (not b!6595498) (not b!6595448) (not d!2069363) (not b!6595671) (not bm!576625) (not d!2069331) (not bm!576657) (not b!6595733) (not bm!576639) (not d!2069335) (not b!6595634) (not bs!1691663) (not bm!576615) (not b!6595828) (not d!2069305) (not b!6595592) tp_is_empty!42171 (not b!6595878) (not bs!1691660) (not b!6595364) (not b!6595691) (not bm!576665) (not b!6595738) (not b!6595369) (not b!6595877) (not b!6595617) (not b!6595737) (not b!6595643) (not bm!576611) (not b!6595864) (not b!6595658) (not bm!576629) (not bm!576626) (not b!6595861) (not b!6595640) (not d!2069361) (not b!6595637) (not b!6595461) (not b!6595837) (not bm!576640) (not bm!576605) (not b!6595688) (not bm!576604) (not d!2069357) (not b!6595703) (not bs!1691662) (not d!2069391) (not b!6595862) (not d!2069375) (not b!6595470) (not d!2069427) (not bm!576634) (not b!6595740) (not bm!576664) (not b!6595554) (not b!6595835) (not bm!576660) (not b!6595685) (not bm!576633) (not d!2069433) (not b!6595672) (not b!6595501) (not bm!576668) (not d!2069347) (not b!6595636) (not bm!576667) (not b!6595883) (not bm!576658) (not b!6595635) (not b!6595872) (not bm!576638) (not d!2069319))
(check-sat)
