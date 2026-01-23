; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570246 () Bool)

(assert start!570246)

(declare-fun b!5434776 () Bool)

(assert (=> b!5434776 true))

(assert (=> b!5434776 true))

(declare-fun lambda!285398 () Int)

(declare-fun lambda!285397 () Int)

(assert (=> b!5434776 (not (= lambda!285398 lambda!285397))))

(assert (=> b!5434776 true))

(assert (=> b!5434776 true))

(declare-fun b!5434750 () Bool)

(assert (=> b!5434750 true))

(declare-fun b!5434733 () Bool)

(declare-fun e!3367277 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30732 0))(
  ( (C!30733 (val!25068 Int)) )
))
(declare-datatypes ((Regex!15231 0))(
  ( (ElementMatch!15231 (c!948507 C!30732)) (Concat!24076 (regOne!30974 Regex!15231) (regTwo!30974 Regex!15231)) (EmptyExpr!15231) (Star!15231 (reg!15560 Regex!15231)) (EmptyLang!15231) (Union!15231 (regOne!30975 Regex!15231) (regTwo!30975 Regex!15231)) )
))
(declare-datatypes ((List!61992 0))(
  ( (Nil!61868) (Cons!61868 (h!68316 Regex!15231) (t!375217 List!61992)) )
))
(declare-datatypes ((Context!9230 0))(
  ( (Context!9231 (exprs!5115 List!61992)) )
))
(declare-fun lt!2215726 () (InoxSet Context!9230))

(declare-datatypes ((List!61993 0))(
  ( (Nil!61869) (Cons!61869 (h!68317 C!30732) (t!375218 List!61993)) )
))
(declare-fun s!2326 () List!61993)

(declare-fun matchZipper!1475 ((InoxSet Context!9230) List!61993) Bool)

(assert (=> b!5434733 (= e!3367277 (not (matchZipper!1475 lt!2215726 (t!375218 s!2326))))))

(declare-fun b!5434734 () Bool)

(declare-fun e!3367291 () Bool)

(declare-fun tp!1498826 () Bool)

(declare-fun tp!1498830 () Bool)

(assert (=> b!5434734 (= e!3367291 (and tp!1498826 tp!1498830))))

(declare-fun b!5434735 () Bool)

(declare-fun res!2312866 () Bool)

(declare-fun e!3367276 () Bool)

(assert (=> b!5434735 (=> res!2312866 e!3367276)))

(declare-fun r!7292 () Regex!15231)

(get-info :version)

(assert (=> b!5434735 (= res!2312866 (or ((_ is EmptyExpr!15231) r!7292) ((_ is EmptyLang!15231) r!7292) ((_ is ElementMatch!15231) r!7292) ((_ is Union!15231) r!7292) (not ((_ is Concat!24076) r!7292))))))

(declare-fun res!2312894 () Bool)

(declare-fun e!3367282 () Bool)

(assert (=> start!570246 (=> (not res!2312894) (not e!3367282))))

(declare-fun validRegex!6967 (Regex!15231) Bool)

(assert (=> start!570246 (= res!2312894 (validRegex!6967 r!7292))))

(assert (=> start!570246 e!3367282))

(assert (=> start!570246 e!3367291))

(declare-fun condSetEmpty!35469 () Bool)

(declare-fun z!1189 () (InoxSet Context!9230))

(assert (=> start!570246 (= condSetEmpty!35469 (= z!1189 ((as const (Array Context!9230 Bool)) false)))))

(declare-fun setRes!35469 () Bool)

(assert (=> start!570246 setRes!35469))

(declare-fun e!3367274 () Bool)

(assert (=> start!570246 e!3367274))

(declare-fun e!3367272 () Bool)

(assert (=> start!570246 e!3367272))

(declare-fun b!5434736 () Bool)

(declare-fun res!2312891 () Bool)

(declare-fun e!3367280 () Bool)

(assert (=> b!5434736 (=> res!2312891 e!3367280)))

(declare-datatypes ((List!61994 0))(
  ( (Nil!61870) (Cons!61870 (h!68318 Context!9230) (t!375219 List!61994)) )
))
(declare-fun zl!343 () List!61994)

(declare-fun isEmpty!33872 (List!61992) Bool)

(assert (=> b!5434736 (= res!2312891 (isEmpty!33872 (t!375217 (exprs!5115 (h!68318 zl!343)))))))

(declare-fun b!5434737 () Bool)

(declare-fun e!3367275 () Bool)

(declare-fun e!3367271 () Bool)

(assert (=> b!5434737 (= e!3367275 e!3367271)))

(declare-fun res!2312895 () Bool)

(assert (=> b!5434737 (=> res!2312895 e!3367271)))

(declare-fun lt!2215702 () Regex!15231)

(declare-fun regexDepth!187 (Regex!15231) Int)

(assert (=> b!5434737 (= res!2312895 (< (regexDepth!187 r!7292) (regexDepth!187 lt!2215702)))))

(declare-fun generalisedConcat!900 (List!61992) Regex!15231)

(assert (=> b!5434737 (= lt!2215702 (generalisedConcat!900 (t!375217 (exprs!5115 (h!68318 zl!343)))))))

(declare-fun b!5434738 () Bool)

(declare-fun res!2312867 () Bool)

(declare-fun e!3367288 () Bool)

(assert (=> b!5434738 (=> res!2312867 e!3367288)))

(assert (=> b!5434738 (= res!2312867 (not (matchZipper!1475 z!1189 s!2326)))))

(declare-fun b!5434739 () Bool)

(declare-fun res!2312876 () Bool)

(declare-fun e!3367292 () Bool)

(assert (=> b!5434739 (=> res!2312876 e!3367292)))

(assert (=> b!5434739 (= res!2312876 (not (matchZipper!1475 lt!2215726 (t!375218 s!2326))))))

(declare-fun b!5434740 () Bool)

(declare-fun tp_is_empty!39715 () Bool)

(assert (=> b!5434740 (= e!3367291 tp_is_empty!39715)))

(declare-fun b!5434741 () Bool)

(declare-fun e!3367284 () Bool)

(declare-fun tp!1498829 () Bool)

(assert (=> b!5434741 (= e!3367284 tp!1498829)))

(declare-fun b!5434742 () Bool)

(declare-fun e!3367273 () Bool)

(declare-fun e!3367278 () Bool)

(assert (=> b!5434742 (= e!3367273 e!3367278)))

(declare-fun res!2312874 () Bool)

(assert (=> b!5434742 (=> res!2312874 e!3367278)))

(declare-fun lt!2215704 () Context!9230)

(declare-fun unfocusZipper!973 (List!61994) Regex!15231)

(assert (=> b!5434742 (= res!2312874 (not (= (unfocusZipper!973 (Cons!61870 lt!2215704 Nil!61870)) (reg!15560 (regOne!30974 r!7292)))))))

(declare-fun lt!2215714 () (InoxSet Context!9230))

(declare-fun lambda!285399 () Int)

(declare-fun lt!2215729 () Context!9230)

(declare-fun flatMap!958 ((InoxSet Context!9230) Int) (InoxSet Context!9230))

(declare-fun derivationStepZipperUp!603 (Context!9230 C!30732) (InoxSet Context!9230))

(assert (=> b!5434742 (= (flatMap!958 lt!2215714 lambda!285399) (derivationStepZipperUp!603 lt!2215729 (h!68317 s!2326)))))

(declare-datatypes ((Unit!154446 0))(
  ( (Unit!154447) )
))
(declare-fun lt!2215724 () Unit!154446)

(declare-fun lemmaFlatMapOnSingletonSet!490 ((InoxSet Context!9230) Context!9230 Int) Unit!154446)

(assert (=> b!5434742 (= lt!2215724 (lemmaFlatMapOnSingletonSet!490 lt!2215714 lt!2215729 lambda!285399))))

(declare-fun lt!2215720 () (InoxSet Context!9230))

(assert (=> b!5434742 (= (flatMap!958 lt!2215720 lambda!285399) (derivationStepZipperUp!603 lt!2215704 (h!68317 s!2326)))))

(declare-fun lt!2215733 () Unit!154446)

(assert (=> b!5434742 (= lt!2215733 (lemmaFlatMapOnSingletonSet!490 lt!2215720 lt!2215704 lambda!285399))))

(declare-fun lt!2215709 () (InoxSet Context!9230))

(assert (=> b!5434742 (= lt!2215709 (derivationStepZipperUp!603 lt!2215729 (h!68317 s!2326)))))

(declare-fun lt!2215740 () (InoxSet Context!9230))

(assert (=> b!5434742 (= lt!2215740 (derivationStepZipperUp!603 lt!2215704 (h!68317 s!2326)))))

(assert (=> b!5434742 (= lt!2215714 (store ((as const (Array Context!9230 Bool)) false) lt!2215729 true))))

(assert (=> b!5434742 (= lt!2215720 (store ((as const (Array Context!9230 Bool)) false) lt!2215704 true))))

(assert (=> b!5434742 (= lt!2215704 (Context!9231 (Cons!61868 (reg!15560 (regOne!30974 r!7292)) Nil!61868)))))

(declare-fun b!5434743 () Bool)

(declare-fun res!2312886 () Bool)

(assert (=> b!5434743 (=> (not res!2312886) (not e!3367282))))

(declare-fun toList!9015 ((InoxSet Context!9230)) List!61994)

(assert (=> b!5434743 (= res!2312886 (= (toList!9015 z!1189) zl!343))))

(declare-fun b!5434744 () Bool)

(declare-fun e!3367287 () Bool)

(assert (=> b!5434744 (= e!3367287 (not e!3367276))))

(declare-fun res!2312870 () Bool)

(assert (=> b!5434744 (=> res!2312870 e!3367276)))

(assert (=> b!5434744 (= res!2312870 (not ((_ is Cons!61870) zl!343)))))

(declare-fun lt!2215716 () Bool)

(declare-fun matchRSpec!2334 (Regex!15231 List!61993) Bool)

(assert (=> b!5434744 (= lt!2215716 (matchRSpec!2334 r!7292 s!2326))))

(declare-fun matchR!7416 (Regex!15231 List!61993) Bool)

(assert (=> b!5434744 (= lt!2215716 (matchR!7416 r!7292 s!2326))))

(declare-fun lt!2215722 () Unit!154446)

(declare-fun mainMatchTheorem!2334 (Regex!15231 List!61993) Unit!154446)

(assert (=> b!5434744 (= lt!2215722 (mainMatchTheorem!2334 r!7292 s!2326))))

(declare-fun b!5434745 () Bool)

(declare-fun tp!1498825 () Bool)

(assert (=> b!5434745 (= e!3367291 tp!1498825)))

(declare-fun b!5434746 () Bool)

(declare-fun e!3367283 () Bool)

(assert (=> b!5434746 (= e!3367283 (matchZipper!1475 lt!2215726 (t!375218 s!2326)))))

(declare-fun b!5434747 () Bool)

(declare-fun e!3367293 () Bool)

(declare-fun tp!1498828 () Bool)

(assert (=> b!5434747 (= e!3367293 tp!1498828)))

(declare-fun b!5434748 () Bool)

(declare-fun e!3367285 () Bool)

(declare-fun e!3367281 () Bool)

(assert (=> b!5434748 (= e!3367285 e!3367281)))

(declare-fun res!2312893 () Bool)

(assert (=> b!5434748 (=> res!2312893 e!3367281)))

(declare-fun lt!2215727 () Regex!15231)

(assert (=> b!5434748 (= res!2312893 (not (= r!7292 lt!2215727)))))

(declare-fun lt!2215706 () Regex!15231)

(assert (=> b!5434748 (= lt!2215727 (Concat!24076 lt!2215706 (regTwo!30974 r!7292)))))

(declare-fun b!5434749 () Bool)

(declare-fun tp!1498831 () Bool)

(declare-fun tp!1498833 () Bool)

(assert (=> b!5434749 (= e!3367291 (and tp!1498831 tp!1498833))))

(declare-fun e!3367270 () Bool)

(assert (=> b!5434750 (= e!3367280 e!3367270)))

(declare-fun res!2312890 () Bool)

(assert (=> b!5434750 (=> res!2312890 e!3367270)))

(assert (=> b!5434750 (= res!2312890 (or (and ((_ is ElementMatch!15231) (regOne!30974 r!7292)) (= (c!948507 (regOne!30974 r!7292)) (h!68317 s!2326))) ((_ is Union!15231) (regOne!30974 r!7292))))))

(declare-fun lt!2215703 () Unit!154446)

(declare-fun e!3367286 () Unit!154446)

(assert (=> b!5434750 (= lt!2215703 e!3367286)))

(declare-fun c!948506 () Bool)

(declare-fun lt!2215708 () Bool)

(assert (=> b!5434750 (= c!948506 lt!2215708)))

(declare-fun nullable!5400 (Regex!15231) Bool)

(assert (=> b!5434750 (= lt!2215708 (nullable!5400 (h!68316 (exprs!5115 (h!68318 zl!343)))))))

(assert (=> b!5434750 (= (flatMap!958 z!1189 lambda!285399) (derivationStepZipperUp!603 (h!68318 zl!343) (h!68317 s!2326)))))

(declare-fun lt!2215737 () Unit!154446)

(assert (=> b!5434750 (= lt!2215737 (lemmaFlatMapOnSingletonSet!490 z!1189 (h!68318 zl!343) lambda!285399))))

(declare-fun lt!2215705 () Context!9230)

(assert (=> b!5434750 (= lt!2215726 (derivationStepZipperUp!603 lt!2215705 (h!68317 s!2326)))))

(declare-fun lt!2215712 () (InoxSet Context!9230))

(declare-fun derivationStepZipperDown!679 (Regex!15231 Context!9230 C!30732) (InoxSet Context!9230))

(assert (=> b!5434750 (= lt!2215712 (derivationStepZipperDown!679 (h!68316 (exprs!5115 (h!68318 zl!343))) lt!2215705 (h!68317 s!2326)))))

(assert (=> b!5434750 (= lt!2215705 (Context!9231 (t!375217 (exprs!5115 (h!68318 zl!343)))))))

(declare-fun lt!2215717 () (InoxSet Context!9230))

(assert (=> b!5434750 (= lt!2215717 (derivationStepZipperUp!603 (Context!9231 (Cons!61868 (h!68316 (exprs!5115 (h!68318 zl!343))) (t!375217 (exprs!5115 (h!68318 zl!343))))) (h!68317 s!2326)))))

(declare-fun b!5434751 () Bool)

(declare-fun e!3367279 () Bool)

(declare-fun e!3367290 () Bool)

(assert (=> b!5434751 (= e!3367279 e!3367290)))

(declare-fun res!2312864 () Bool)

(assert (=> b!5434751 (=> res!2312864 e!3367290)))

(assert (=> b!5434751 (= res!2312864 (not (matchR!7416 (regTwo!30974 r!7292) s!2326)))))

(declare-fun lt!2215728 () (InoxSet Context!9230))

(assert (=> b!5434751 (= (matchR!7416 lt!2215702 s!2326) (matchZipper!1475 lt!2215728 s!2326))))

(declare-fun lt!2215734 () Unit!154446)

(declare-fun lt!2215718 () List!61994)

(declare-fun theoremZipperRegexEquiv!535 ((InoxSet Context!9230) List!61994 Regex!15231 List!61993) Unit!154446)

(assert (=> b!5434751 (= lt!2215734 (theoremZipperRegexEquiv!535 lt!2215728 lt!2215718 lt!2215702 s!2326))))

(declare-fun b!5434752 () Bool)

(declare-fun tp!1498827 () Bool)

(assert (=> b!5434752 (= e!3367272 (and tp_is_empty!39715 tp!1498827))))

(declare-fun b!5434753 () Bool)

(declare-fun e!3367294 () Bool)

(assert (=> b!5434753 (= e!3367294 e!3367285)))

(declare-fun res!2312871 () Bool)

(assert (=> b!5434753 (=> res!2312871 e!3367285)))

(declare-fun lt!2215738 () (InoxSet Context!9230))

(declare-fun lt!2215731 () (InoxSet Context!9230))

(assert (=> b!5434753 (= res!2312871 (not (= lt!2215738 lt!2215731)))))

(declare-fun lt!2215707 () Context!9230)

(declare-fun lt!2215730 () (InoxSet Context!9230))

(assert (=> b!5434753 (= (flatMap!958 lt!2215730 lambda!285399) (derivationStepZipperUp!603 lt!2215707 (h!68317 s!2326)))))

(declare-fun lt!2215721 () Unit!154446)

(assert (=> b!5434753 (= lt!2215721 (lemmaFlatMapOnSingletonSet!490 lt!2215730 lt!2215707 lambda!285399))))

(declare-fun lt!2215710 () (InoxSet Context!9230))

(assert (=> b!5434753 (= lt!2215710 (derivationStepZipperUp!603 lt!2215707 (h!68317 s!2326)))))

(declare-fun derivationStepZipper!1470 ((InoxSet Context!9230) C!30732) (InoxSet Context!9230))

(assert (=> b!5434753 (= lt!2215738 (derivationStepZipper!1470 lt!2215730 (h!68317 s!2326)))))

(assert (=> b!5434753 (= lt!2215730 (store ((as const (Array Context!9230 Bool)) false) lt!2215707 true))))

(declare-fun lt!2215736 () List!61992)

(assert (=> b!5434753 (= lt!2215707 (Context!9231 (Cons!61868 (reg!15560 (regOne!30974 r!7292)) lt!2215736)))))

(declare-fun b!5434754 () Bool)

(assert (=> b!5434754 (= e!3367271 e!3367279)))

(declare-fun res!2312872 () Bool)

(assert (=> b!5434754 (=> res!2312872 e!3367279)))

(declare-fun zipperDepth!172 (List!61994) Int)

(assert (=> b!5434754 (= res!2312872 (< (zipperDepth!172 zl!343) (zipperDepth!172 lt!2215718)))))

(assert (=> b!5434754 (= lt!2215718 (Cons!61870 lt!2215705 Nil!61870))))

(declare-fun setIsEmpty!35469 () Bool)

(assert (=> setIsEmpty!35469 setRes!35469))

(declare-fun b!5434755 () Bool)

(declare-fun Unit!154448 () Unit!154446)

(assert (=> b!5434755 (= e!3367286 Unit!154448)))

(declare-fun lt!2215711 () Unit!154446)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!468 ((InoxSet Context!9230) (InoxSet Context!9230) List!61993) Unit!154446)

(assert (=> b!5434755 (= lt!2215711 (lemmaZipperConcatMatchesSameAsBothZippers!468 lt!2215712 lt!2215726 (t!375218 s!2326)))))

(declare-fun res!2312865 () Bool)

(assert (=> b!5434755 (= res!2312865 (matchZipper!1475 lt!2215712 (t!375218 s!2326)))))

(assert (=> b!5434755 (=> res!2312865 e!3367283)))

(assert (=> b!5434755 (= (matchZipper!1475 ((_ map or) lt!2215712 lt!2215726) (t!375218 s!2326)) e!3367283)))

(declare-fun b!5434756 () Bool)

(declare-fun res!2312879 () Bool)

(assert (=> b!5434756 (=> res!2312879 e!3367276)))

(declare-fun generalisedUnion!1160 (List!61992) Regex!15231)

(declare-fun unfocusZipperList!673 (List!61994) List!61992)

(assert (=> b!5434756 (= res!2312879 (not (= r!7292 (generalisedUnion!1160 (unfocusZipperList!673 zl!343)))))))

(declare-fun b!5434757 () Bool)

(assert (=> b!5434757 (= e!3367282 e!3367287)))

(declare-fun res!2312868 () Bool)

(assert (=> b!5434757 (=> (not res!2312868) (not e!3367287))))

(declare-fun lt!2215732 () Regex!15231)

(assert (=> b!5434757 (= res!2312868 (= r!7292 lt!2215732))))

(assert (=> b!5434757 (= lt!2215732 (unfocusZipper!973 zl!343))))

(declare-fun tp!1498824 () Bool)

(declare-fun setElem!35469 () Context!9230)

(declare-fun setNonEmpty!35469 () Bool)

(declare-fun inv!81324 (Context!9230) Bool)

(assert (=> setNonEmpty!35469 (= setRes!35469 (and tp!1498824 (inv!81324 setElem!35469) e!3367284))))

(declare-fun setRest!35469 () (InoxSet Context!9230))

(assert (=> setNonEmpty!35469 (= z!1189 ((_ map or) (store ((as const (Array Context!9230 Bool)) false) setElem!35469 true) setRest!35469))))

(declare-fun b!5434758 () Bool)

(declare-fun res!2312896 () Bool)

(assert (=> b!5434758 (=> res!2312896 e!3367292)))

(declare-fun lt!2215725 () Bool)

(assert (=> b!5434758 (= res!2312896 lt!2215725)))

(declare-fun tp!1498832 () Bool)

(declare-fun b!5434759 () Bool)

(assert (=> b!5434759 (= e!3367274 (and (inv!81324 (h!68318 zl!343)) e!3367293 tp!1498832))))

(declare-fun b!5434760 () Bool)

(declare-fun res!2312892 () Bool)

(assert (=> b!5434760 (=> res!2312892 e!3367276)))

(assert (=> b!5434760 (= res!2312892 (not (= r!7292 (generalisedConcat!900 (exprs!5115 (h!68318 zl!343))))))))

(declare-fun b!5434761 () Bool)

(assert (=> b!5434761 (= e!3367281 e!3367273)))

(declare-fun res!2312888 () Bool)

(assert (=> b!5434761 (=> res!2312888 e!3367273)))

(declare-fun lt!2215713 () Regex!15231)

(assert (=> b!5434761 (= res!2312888 (not (= (unfocusZipper!973 (Cons!61870 lt!2215707 Nil!61870)) lt!2215713)))))

(assert (=> b!5434761 (= lt!2215713 (Concat!24076 (reg!15560 (regOne!30974 r!7292)) lt!2215727))))

(declare-fun b!5434762 () Bool)

(assert (=> b!5434762 (= e!3367270 e!3367294)))

(declare-fun res!2312889 () Bool)

(assert (=> b!5434762 (=> res!2312889 e!3367294)))

(assert (=> b!5434762 (= res!2312889 (not (= lt!2215712 lt!2215731)))))

(assert (=> b!5434762 (= lt!2215731 (derivationStepZipperDown!679 (reg!15560 (regOne!30974 r!7292)) lt!2215729 (h!68317 s!2326)))))

(assert (=> b!5434762 (= lt!2215729 (Context!9231 lt!2215736))))

(assert (=> b!5434762 (= lt!2215736 (Cons!61868 lt!2215706 (t!375217 (exprs!5115 (h!68318 zl!343)))))))

(assert (=> b!5434762 (= lt!2215706 (Star!15231 (reg!15560 (regOne!30974 r!7292))))))

(declare-fun b!5434763 () Bool)

(declare-fun res!2312882 () Bool)

(assert (=> b!5434763 (=> res!2312882 e!3367288)))

(assert (=> b!5434763 (= res!2312882 (not lt!2215708))))

(declare-fun b!5434764 () Bool)

(declare-fun res!2312878 () Bool)

(assert (=> b!5434764 (=> res!2312878 e!3367276)))

(declare-fun isEmpty!33873 (List!61994) Bool)

(assert (=> b!5434764 (= res!2312878 (not (isEmpty!33873 (t!375219 zl!343))))))

(declare-fun b!5434765 () Bool)

(declare-fun e!3367289 () Bool)

(assert (=> b!5434765 (= e!3367289 (nullable!5400 (regOne!30974 (regOne!30974 r!7292))))))

(declare-fun b!5434766 () Bool)

(assert (=> b!5434766 (= e!3367290 true)))

(assert (=> b!5434766 (= (matchR!7416 lt!2215706 Nil!61869) (matchRSpec!2334 lt!2215706 Nil!61869))))

(declare-fun lt!2215723 () Unit!154446)

(assert (=> b!5434766 (= lt!2215723 (mainMatchTheorem!2334 lt!2215706 Nil!61869))))

(declare-fun b!5434767 () Bool)

(assert (=> b!5434767 (= e!3367288 e!3367292)))

(declare-fun res!2312875 () Bool)

(assert (=> b!5434767 (=> res!2312875 e!3367292)))

(assert (=> b!5434767 (= res!2312875 e!3367277)))

(declare-fun res!2312897 () Bool)

(assert (=> b!5434767 (=> (not res!2312897) (not e!3367277))))

(assert (=> b!5434767 (= res!2312897 (not lt!2215725))))

(assert (=> b!5434767 (= lt!2215725 (matchZipper!1475 lt!2215712 (t!375218 s!2326)))))

(declare-fun b!5434768 () Bool)

(declare-fun Unit!154449 () Unit!154446)

(assert (=> b!5434768 (= e!3367286 Unit!154449)))

(declare-fun b!5434769 () Bool)

(declare-fun res!2312885 () Bool)

(assert (=> b!5434769 (=> res!2312885 e!3367278)))

(assert (=> b!5434769 (= res!2312885 (not (= (unfocusZipper!973 (Cons!61870 lt!2215729 Nil!61870)) lt!2215727)))))

(declare-fun b!5434770 () Bool)

(declare-fun res!2312877 () Bool)

(assert (=> b!5434770 (=> res!2312877 e!3367270)))

(assert (=> b!5434770 (= res!2312877 (or ((_ is Concat!24076) (regOne!30974 r!7292)) (not ((_ is Star!15231) (regOne!30974 r!7292)))))))

(declare-fun b!5434771 () Bool)

(declare-fun res!2312883 () Bool)

(assert (=> b!5434771 (=> res!2312883 e!3367285)))

(assert (=> b!5434771 (= res!2312883 (not (= (matchZipper!1475 lt!2215730 s!2326) (matchZipper!1475 lt!2215738 (t!375218 s!2326)))))))

(declare-fun b!5434772 () Bool)

(declare-fun res!2312881 () Bool)

(assert (=> b!5434772 (=> res!2312881 e!3367270)))

(assert (=> b!5434772 (= res!2312881 e!3367289)))

(declare-fun res!2312887 () Bool)

(assert (=> b!5434772 (=> (not res!2312887) (not e!3367289))))

(assert (=> b!5434772 (= res!2312887 ((_ is Concat!24076) (regOne!30974 r!7292)))))

(declare-fun b!5434773 () Bool)

(assert (=> b!5434773 (= e!3367292 e!3367275)))

(declare-fun res!2312880 () Bool)

(assert (=> b!5434773 (=> res!2312880 e!3367275)))

(assert (=> b!5434773 (= res!2312880 (not (= lt!2215726 (derivationStepZipper!1470 lt!2215728 (h!68317 s!2326)))))))

(assert (=> b!5434773 (= (flatMap!958 lt!2215728 lambda!285399) (derivationStepZipperUp!603 lt!2215705 (h!68317 s!2326)))))

(declare-fun lt!2215739 () Unit!154446)

(assert (=> b!5434773 (= lt!2215739 (lemmaFlatMapOnSingletonSet!490 lt!2215728 lt!2215705 lambda!285399))))

(assert (=> b!5434773 (= lt!2215728 (store ((as const (Array Context!9230 Bool)) false) lt!2215705 true))))

(declare-fun b!5434774 () Bool)

(declare-fun res!2312863 () Bool)

(assert (=> b!5434774 (=> res!2312863 e!3367276)))

(assert (=> b!5434774 (= res!2312863 (not ((_ is Cons!61868) (exprs!5115 (h!68318 zl!343)))))))

(declare-fun b!5434775 () Bool)

(declare-fun res!2312873 () Bool)

(assert (=> b!5434775 (=> res!2312873 e!3367285)))

(assert (=> b!5434775 (= res!2312873 (not (= lt!2215732 r!7292)))))

(assert (=> b!5434776 (= e!3367276 e!3367280)))

(declare-fun res!2312884 () Bool)

(assert (=> b!5434776 (=> res!2312884 e!3367280)))

(declare-fun lt!2215701 () Bool)

(assert (=> b!5434776 (= res!2312884 (or (not (= lt!2215716 lt!2215701)) ((_ is Nil!61869) s!2326)))))

(declare-fun Exists!2412 (Int) Bool)

(assert (=> b!5434776 (= (Exists!2412 lambda!285397) (Exists!2412 lambda!285398))))

(declare-fun lt!2215715 () Unit!154446)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1066 (Regex!15231 Regex!15231 List!61993) Unit!154446)

(assert (=> b!5434776 (= lt!2215715 (lemmaExistCutMatchRandMatchRSpecEquivalent!1066 (regOne!30974 r!7292) (regTwo!30974 r!7292) s!2326))))

(assert (=> b!5434776 (= lt!2215701 (Exists!2412 lambda!285397))))

(declare-datatypes ((tuple2!64860 0))(
  ( (tuple2!64861 (_1!35733 List!61993) (_2!35733 List!61993)) )
))
(declare-datatypes ((Option!15342 0))(
  ( (None!15341) (Some!15341 (v!51370 tuple2!64860)) )
))
(declare-fun isDefined!12045 (Option!15342) Bool)

(declare-fun findConcatSeparation!1756 (Regex!15231 Regex!15231 List!61993 List!61993 List!61993) Option!15342)

(assert (=> b!5434776 (= lt!2215701 (isDefined!12045 (findConcatSeparation!1756 (regOne!30974 r!7292) (regTwo!30974 r!7292) Nil!61869 s!2326 s!2326)))))

(declare-fun lt!2215719 () Unit!154446)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1520 (Regex!15231 Regex!15231 List!61993) Unit!154446)

(assert (=> b!5434776 (= lt!2215719 (lemmaFindConcatSeparationEquivalentToExists!1520 (regOne!30974 r!7292) (regTwo!30974 r!7292) s!2326))))

(declare-fun b!5434777 () Bool)

(assert (=> b!5434777 (= e!3367278 e!3367288)))

(declare-fun res!2312869 () Bool)

(assert (=> b!5434777 (=> res!2312869 e!3367288)))

(assert (=> b!5434777 (= res!2312869 lt!2215716)))

(assert (=> b!5434777 (= (matchR!7416 lt!2215713 s!2326) (matchRSpec!2334 lt!2215713 s!2326))))

(declare-fun lt!2215735 () Unit!154446)

(assert (=> b!5434777 (= lt!2215735 (mainMatchTheorem!2334 lt!2215713 s!2326))))

(assert (= (and start!570246 res!2312894) b!5434743))

(assert (= (and b!5434743 res!2312886) b!5434757))

(assert (= (and b!5434757 res!2312868) b!5434744))

(assert (= (and b!5434744 (not res!2312870)) b!5434764))

(assert (= (and b!5434764 (not res!2312878)) b!5434760))

(assert (= (and b!5434760 (not res!2312892)) b!5434774))

(assert (= (and b!5434774 (not res!2312863)) b!5434756))

(assert (= (and b!5434756 (not res!2312879)) b!5434735))

(assert (= (and b!5434735 (not res!2312866)) b!5434776))

(assert (= (and b!5434776 (not res!2312884)) b!5434736))

(assert (= (and b!5434736 (not res!2312891)) b!5434750))

(assert (= (and b!5434750 c!948506) b!5434755))

(assert (= (and b!5434750 (not c!948506)) b!5434768))

(assert (= (and b!5434755 (not res!2312865)) b!5434746))

(assert (= (and b!5434750 (not res!2312890)) b!5434772))

(assert (= (and b!5434772 res!2312887) b!5434765))

(assert (= (and b!5434772 (not res!2312881)) b!5434770))

(assert (= (and b!5434770 (not res!2312877)) b!5434762))

(assert (= (and b!5434762 (not res!2312889)) b!5434753))

(assert (= (and b!5434753 (not res!2312871)) b!5434771))

(assert (= (and b!5434771 (not res!2312883)) b!5434775))

(assert (= (and b!5434775 (not res!2312873)) b!5434748))

(assert (= (and b!5434748 (not res!2312893)) b!5434761))

(assert (= (and b!5434761 (not res!2312888)) b!5434742))

(assert (= (and b!5434742 (not res!2312874)) b!5434769))

(assert (= (and b!5434769 (not res!2312885)) b!5434777))

(assert (= (and b!5434777 (not res!2312869)) b!5434738))

(assert (= (and b!5434738 (not res!2312867)) b!5434763))

(assert (= (and b!5434763 (not res!2312882)) b!5434767))

(assert (= (and b!5434767 res!2312897) b!5434733))

(assert (= (and b!5434767 (not res!2312875)) b!5434758))

(assert (= (and b!5434758 (not res!2312896)) b!5434739))

(assert (= (and b!5434739 (not res!2312876)) b!5434773))

(assert (= (and b!5434773 (not res!2312880)) b!5434737))

(assert (= (and b!5434737 (not res!2312895)) b!5434754))

(assert (= (and b!5434754 (not res!2312872)) b!5434751))

(assert (= (and b!5434751 (not res!2312864)) b!5434766))

(assert (= (and start!570246 ((_ is ElementMatch!15231) r!7292)) b!5434740))

(assert (= (and start!570246 ((_ is Concat!24076) r!7292)) b!5434734))

(assert (= (and start!570246 ((_ is Star!15231) r!7292)) b!5434745))

(assert (= (and start!570246 ((_ is Union!15231) r!7292)) b!5434749))

(assert (= (and start!570246 condSetEmpty!35469) setIsEmpty!35469))

(assert (= (and start!570246 (not condSetEmpty!35469)) setNonEmpty!35469))

(assert (= setNonEmpty!35469 b!5434741))

(assert (= b!5434759 b!5434747))

(assert (= (and start!570246 ((_ is Cons!61870) zl!343)) b!5434759))

(assert (= (and start!570246 ((_ is Cons!61869) s!2326)) b!5434752))

(declare-fun m!6456856 () Bool)

(assert (=> b!5434757 m!6456856))

(declare-fun m!6456858 () Bool)

(assert (=> b!5434766 m!6456858))

(declare-fun m!6456860 () Bool)

(assert (=> b!5434766 m!6456860))

(declare-fun m!6456862 () Bool)

(assert (=> b!5434766 m!6456862))

(declare-fun m!6456864 () Bool)

(assert (=> b!5434759 m!6456864))

(declare-fun m!6456866 () Bool)

(assert (=> b!5434737 m!6456866))

(declare-fun m!6456868 () Bool)

(assert (=> b!5434737 m!6456868))

(declare-fun m!6456870 () Bool)

(assert (=> b!5434737 m!6456870))

(declare-fun m!6456872 () Bool)

(assert (=> b!5434753 m!6456872))

(declare-fun m!6456874 () Bool)

(assert (=> b!5434753 m!6456874))

(declare-fun m!6456876 () Bool)

(assert (=> b!5434753 m!6456876))

(declare-fun m!6456878 () Bool)

(assert (=> b!5434753 m!6456878))

(declare-fun m!6456880 () Bool)

(assert (=> b!5434753 m!6456880))

(declare-fun m!6456882 () Bool)

(assert (=> b!5434736 m!6456882))

(declare-fun m!6456884 () Bool)

(assert (=> b!5434777 m!6456884))

(declare-fun m!6456886 () Bool)

(assert (=> b!5434777 m!6456886))

(declare-fun m!6456888 () Bool)

(assert (=> b!5434777 m!6456888))

(declare-fun m!6456890 () Bool)

(assert (=> b!5434743 m!6456890))

(declare-fun m!6456892 () Bool)

(assert (=> b!5434742 m!6456892))

(declare-fun m!6456894 () Bool)

(assert (=> b!5434742 m!6456894))

(declare-fun m!6456896 () Bool)

(assert (=> b!5434742 m!6456896))

(declare-fun m!6456898 () Bool)

(assert (=> b!5434742 m!6456898))

(declare-fun m!6456900 () Bool)

(assert (=> b!5434742 m!6456900))

(declare-fun m!6456902 () Bool)

(assert (=> b!5434742 m!6456902))

(declare-fun m!6456904 () Bool)

(assert (=> b!5434742 m!6456904))

(declare-fun m!6456906 () Bool)

(assert (=> b!5434742 m!6456906))

(declare-fun m!6456908 () Bool)

(assert (=> b!5434742 m!6456908))

(declare-fun m!6456910 () Bool)

(assert (=> b!5434746 m!6456910))

(assert (=> b!5434733 m!6456910))

(declare-fun m!6456912 () Bool)

(assert (=> b!5434751 m!6456912))

(declare-fun m!6456914 () Bool)

(assert (=> b!5434751 m!6456914))

(declare-fun m!6456916 () Bool)

(assert (=> b!5434751 m!6456916))

(declare-fun m!6456918 () Bool)

(assert (=> b!5434751 m!6456918))

(declare-fun m!6456920 () Bool)

(assert (=> b!5434761 m!6456920))

(declare-fun m!6456922 () Bool)

(assert (=> b!5434755 m!6456922))

(declare-fun m!6456924 () Bool)

(assert (=> b!5434755 m!6456924))

(declare-fun m!6456926 () Bool)

(assert (=> b!5434755 m!6456926))

(declare-fun m!6456928 () Bool)

(assert (=> b!5434765 m!6456928))

(declare-fun m!6456930 () Bool)

(assert (=> b!5434760 m!6456930))

(declare-fun m!6456932 () Bool)

(assert (=> b!5434750 m!6456932))

(declare-fun m!6456934 () Bool)

(assert (=> b!5434750 m!6456934))

(declare-fun m!6456936 () Bool)

(assert (=> b!5434750 m!6456936))

(declare-fun m!6456938 () Bool)

(assert (=> b!5434750 m!6456938))

(declare-fun m!6456940 () Bool)

(assert (=> b!5434750 m!6456940))

(declare-fun m!6456942 () Bool)

(assert (=> b!5434750 m!6456942))

(declare-fun m!6456944 () Bool)

(assert (=> b!5434750 m!6456944))

(declare-fun m!6456946 () Bool)

(assert (=> b!5434769 m!6456946))

(declare-fun m!6456948 () Bool)

(assert (=> b!5434773 m!6456948))

(declare-fun m!6456950 () Bool)

(assert (=> b!5434773 m!6456950))

(declare-fun m!6456952 () Bool)

(assert (=> b!5434773 m!6456952))

(declare-fun m!6456954 () Bool)

(assert (=> b!5434773 m!6456954))

(assert (=> b!5434773 m!6456944))

(assert (=> b!5434767 m!6456924))

(declare-fun m!6456956 () Bool)

(assert (=> b!5434764 m!6456956))

(declare-fun m!6456958 () Bool)

(assert (=> b!5434762 m!6456958))

(declare-fun m!6456960 () Bool)

(assert (=> b!5434738 m!6456960))

(declare-fun m!6456962 () Bool)

(assert (=> start!570246 m!6456962))

(declare-fun m!6456964 () Bool)

(assert (=> b!5434771 m!6456964))

(declare-fun m!6456966 () Bool)

(assert (=> b!5434771 m!6456966))

(declare-fun m!6456968 () Bool)

(assert (=> b!5434776 m!6456968))

(declare-fun m!6456970 () Bool)

(assert (=> b!5434776 m!6456970))

(declare-fun m!6456972 () Bool)

(assert (=> b!5434776 m!6456972))

(assert (=> b!5434776 m!6456968))

(declare-fun m!6456974 () Bool)

(assert (=> b!5434776 m!6456974))

(declare-fun m!6456976 () Bool)

(assert (=> b!5434776 m!6456976))

(assert (=> b!5434776 m!6456970))

(declare-fun m!6456978 () Bool)

(assert (=> b!5434776 m!6456978))

(declare-fun m!6456980 () Bool)

(assert (=> b!5434744 m!6456980))

(declare-fun m!6456982 () Bool)

(assert (=> b!5434744 m!6456982))

(declare-fun m!6456984 () Bool)

(assert (=> b!5434744 m!6456984))

(declare-fun m!6456986 () Bool)

(assert (=> b!5434754 m!6456986))

(declare-fun m!6456988 () Bool)

(assert (=> b!5434754 m!6456988))

(declare-fun m!6456990 () Bool)

(assert (=> setNonEmpty!35469 m!6456990))

(declare-fun m!6456992 () Bool)

(assert (=> b!5434756 m!6456992))

(assert (=> b!5434756 m!6456992))

(declare-fun m!6456994 () Bool)

(assert (=> b!5434756 m!6456994))

(assert (=> b!5434739 m!6456910))

(check-sat (not b!5434742) (not b!5434777) (not b!5434749) (not b!5434760) (not b!5434752) (not b!5434771) (not b!5434736) (not b!5434745) (not b!5434776) (not b!5434739) (not b!5434738) (not b!5434733) tp_is_empty!39715 (not b!5434737) (not b!5434744) (not b!5434743) (not b!5434773) (not b!5434753) (not b!5434765) (not b!5434762) (not b!5434756) (not setNonEmpty!35469) (not b!5434766) (not b!5434741) (not b!5434746) (not b!5434767) (not b!5434769) (not b!5434751) (not b!5434754) (not b!5434750) (not b!5434755) (not b!5434757) (not b!5434761) (not b!5434747) (not start!570246) (not b!5434759) (not b!5434734) (not b!5434764))
(check-sat)
