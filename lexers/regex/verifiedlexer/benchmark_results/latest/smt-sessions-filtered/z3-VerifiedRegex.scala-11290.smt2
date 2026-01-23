; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595264 () Bool)

(assert start!595264)

(declare-fun b!5809628 () Bool)

(assert (=> b!5809628 true))

(assert (=> b!5809628 true))

(declare-fun lambda!317308 () Int)

(declare-fun lambda!317307 () Int)

(assert (=> b!5809628 (not (= lambda!317308 lambda!317307))))

(assert (=> b!5809628 true))

(assert (=> b!5809628 true))

(declare-fun lambda!317309 () Int)

(assert (=> b!5809628 (not (= lambda!317309 lambda!317307))))

(assert (=> b!5809628 (not (= lambda!317309 lambda!317308))))

(assert (=> b!5809628 true))

(assert (=> b!5809628 true))

(declare-fun b!5809649 () Bool)

(assert (=> b!5809649 true))

(declare-fun b!5809629 () Bool)

(assert (=> b!5809629 true))

(declare-fun b!5809624 () Bool)

(declare-fun e!3566148 () Bool)

(declare-fun tp_is_empty!40907 () Bool)

(assert (=> b!5809624 (= e!3566148 tp_is_empty!40907)))

(declare-fun b!5809625 () Bool)

(declare-fun res!2450029 () Bool)

(declare-fun e!3566151 () Bool)

(assert (=> b!5809625 (=> res!2450029 e!3566151)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31924 0))(
  ( (C!31925 (val!25664 Int)) )
))
(declare-datatypes ((Regex!15827 0))(
  ( (ElementMatch!15827 (c!1029329 C!31924)) (Concat!24672 (regOne!32166 Regex!15827) (regTwo!32166 Regex!15827)) (EmptyExpr!15827) (Star!15827 (reg!16156 Regex!15827)) (EmptyLang!15827) (Union!15827 (regOne!32167 Regex!15827) (regTwo!32167 Regex!15827)) )
))
(declare-datatypes ((List!63780 0))(
  ( (Nil!63656) (Cons!63656 (h!70104 Regex!15827) (t!377133 List!63780)) )
))
(declare-datatypes ((Context!10422 0))(
  ( (Context!10423 (exprs!5711 List!63780)) )
))
(declare-fun lt!2299862 () (InoxSet Context!10422))

(declare-datatypes ((List!63781 0))(
  ( (Nil!63657) (Cons!63657 (h!70105 C!31924) (t!377134 List!63781)) )
))
(declare-fun s!2326 () List!63781)

(declare-fun matchZipper!1955 ((InoxSet Context!10422) List!63781) Bool)

(declare-fun derivationStepZipper!1896 ((InoxSet Context!10422) C!31924) (InoxSet Context!10422))

(assert (=> b!5809625 (= res!2450029 (not (= (matchZipper!1955 lt!2299862 s!2326) (matchZipper!1955 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326)) (t!377134 s!2326)))))))

(declare-fun b!5809626 () Bool)

(declare-fun tp!1603378 () Bool)

(declare-fun tp!1603384 () Bool)

(assert (=> b!5809626 (= e!3566148 (and tp!1603378 tp!1603384))))

(declare-fun b!5809627 () Bool)

(declare-fun e!3566158 () Bool)

(declare-fun tp!1603377 () Bool)

(assert (=> b!5809627 (= e!3566158 tp!1603377)))

(declare-fun e!3566150 () Bool)

(declare-fun e!3566155 () Bool)

(assert (=> b!5809628 (= e!3566150 e!3566155)))

(declare-fun res!2450034 () Bool)

(assert (=> b!5809628 (=> res!2450034 e!3566155)))

(declare-fun lt!2299856 () Bool)

(declare-fun e!3566153 () Bool)

(assert (=> b!5809628 (= res!2450034 (not (= lt!2299856 e!3566153)))))

(declare-fun res!2450012 () Bool)

(assert (=> b!5809628 (=> res!2450012 e!3566153)))

(declare-fun isEmpty!35571 (List!63781) Bool)

(assert (=> b!5809628 (= res!2450012 (isEmpty!35571 s!2326))))

(declare-fun Exists!2927 (Int) Bool)

(assert (=> b!5809628 (= (Exists!2927 lambda!317307) (Exists!2927 lambda!317309))))

(declare-datatypes ((Unit!156914 0))(
  ( (Unit!156915) )
))
(declare-fun lt!2299855 () Unit!156914)

(declare-fun r!7292 () Regex!15827)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1556 (Regex!15827 Regex!15827 List!63781) Unit!156914)

(assert (=> b!5809628 (= lt!2299855 (lemmaExistCutMatchRandMatchRSpecEquivalent!1556 (reg!16156 r!7292) r!7292 s!2326))))

(assert (=> b!5809628 (= (Exists!2927 lambda!317307) (Exists!2927 lambda!317308))))

(declare-fun lt!2299858 () Unit!156914)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!608 (Regex!15827 List!63781) Unit!156914)

(assert (=> b!5809628 (= lt!2299858 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!608 (reg!16156 r!7292) s!2326))))

(declare-fun lt!2299849 () Bool)

(assert (=> b!5809628 (= lt!2299849 (Exists!2927 lambda!317307))))

(declare-datatypes ((tuple2!65848 0))(
  ( (tuple2!65849 (_1!36227 List!63781) (_2!36227 List!63781)) )
))
(declare-datatypes ((Option!15836 0))(
  ( (None!15835) (Some!15835 (v!51899 tuple2!65848)) )
))
(declare-fun isDefined!12539 (Option!15836) Bool)

(declare-fun findConcatSeparation!2250 (Regex!15827 Regex!15827 List!63781 List!63781 List!63781) Option!15836)

(assert (=> b!5809628 (= lt!2299849 (isDefined!12539 (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 Nil!63657 s!2326 s!2326)))))

(declare-fun lt!2299837 () Unit!156914)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2014 (Regex!15827 Regex!15827 List!63781) Unit!156914)

(assert (=> b!5809628 (= lt!2299837 (lemmaFindConcatSeparationEquivalentToExists!2014 (reg!16156 r!7292) r!7292 s!2326))))

(declare-fun setIsEmpty!39116 () Bool)

(declare-fun setRes!39116 () Bool)

(assert (=> setIsEmpty!39116 setRes!39116))

(declare-fun lt!2299852 () Context!10422)

(declare-fun lt!2299836 () (InoxSet Context!10422))

(declare-fun e!3566159 () Bool)

(declare-fun appendTo!136 ((InoxSet Context!10422) Context!10422) (InoxSet Context!10422))

(assert (=> b!5809629 (= e!3566159 (= (appendTo!136 lt!2299836 lt!2299852) lt!2299862))))

(declare-fun lt!2299835 () List!63780)

(declare-fun lambda!317311 () Int)

(declare-fun map!14593 ((InoxSet Context!10422) Int) (InoxSet Context!10422))

(declare-fun ++!14037 (List!63780 List!63780) List!63780)

(assert (=> b!5809629 (= (map!14593 lt!2299836 lambda!317311) (store ((as const (Array Context!10422 Bool)) false) (Context!10423 (++!14037 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835)) true))))

(declare-fun lambda!317312 () Int)

(declare-fun lt!2299842 () Unit!156914)

(declare-fun lemmaConcatPreservesForall!328 (List!63780 List!63780 Int) Unit!156914)

(assert (=> b!5809629 (= lt!2299842 (lemmaConcatPreservesForall!328 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835 lambda!317312))))

(declare-fun lt!2299834 () Context!10422)

(declare-fun lt!2299857 () Unit!156914)

(declare-fun lemmaMapOnSingletonSet!154 ((InoxSet Context!10422) Context!10422 Int) Unit!156914)

(assert (=> b!5809629 (= lt!2299857 (lemmaMapOnSingletonSet!154 lt!2299836 lt!2299834 lambda!317311))))

(declare-fun b!5809630 () Bool)

(declare-fun tp!1603380 () Bool)

(assert (=> b!5809630 (= e!3566148 tp!1603380)))

(declare-fun b!5809631 () Bool)

(declare-fun res!2450031 () Bool)

(assert (=> b!5809631 (=> res!2450031 e!3566150)))

(declare-datatypes ((List!63782 0))(
  ( (Nil!63658) (Cons!63658 (h!70106 Context!10422) (t!377135 List!63782)) )
))
(declare-fun zl!343 () List!63782)

(declare-fun isEmpty!35572 (List!63782) Bool)

(assert (=> b!5809631 (= res!2450031 (not (isEmpty!35572 (t!377135 zl!343))))))

(declare-fun setElem!39116 () Context!10422)

(declare-fun setNonEmpty!39116 () Bool)

(declare-fun tp!1603376 () Bool)

(declare-fun inv!82814 (Context!10422) Bool)

(assert (=> setNonEmpty!39116 (= setRes!39116 (and tp!1603376 (inv!82814 setElem!39116) e!3566158))))

(declare-fun z!1189 () (InoxSet Context!10422))

(declare-fun setRest!39116 () (InoxSet Context!10422))

(assert (=> setNonEmpty!39116 (= z!1189 ((_ map or) (store ((as const (Array Context!10422 Bool)) false) setElem!39116 true) setRest!39116))))

(declare-fun b!5809632 () Bool)

(declare-fun e!3566160 () Bool)

(assert (=> b!5809632 (= e!3566160 e!3566151)))

(declare-fun res!2450030 () Bool)

(assert (=> b!5809632 (=> res!2450030 e!3566151)))

(declare-fun lt!2299838 () (InoxSet Context!10422))

(declare-fun derivationStepZipperDown!1165 (Regex!15827 Context!10422 C!31924) (InoxSet Context!10422))

(assert (=> b!5809632 (= res!2450030 (not (= lt!2299838 (derivationStepZipperDown!1165 (reg!16156 r!7292) lt!2299852 (h!70105 s!2326)))))))

(assert (=> b!5809632 (= lt!2299852 (Context!10423 lt!2299835))))

(declare-fun lambda!317310 () Int)

(declare-fun lt!2299848 () Context!10422)

(declare-fun flatMap!1434 ((InoxSet Context!10422) Int) (InoxSet Context!10422))

(declare-fun derivationStepZipperUp!1091 (Context!10422 C!31924) (InoxSet Context!10422))

(assert (=> b!5809632 (= (flatMap!1434 lt!2299862 lambda!317310) (derivationStepZipperUp!1091 lt!2299848 (h!70105 s!2326)))))

(declare-fun lt!2299840 () Unit!156914)

(declare-fun lemmaFlatMapOnSingletonSet!966 ((InoxSet Context!10422) Context!10422 Int) Unit!156914)

(assert (=> b!5809632 (= lt!2299840 (lemmaFlatMapOnSingletonSet!966 lt!2299862 lt!2299848 lambda!317310))))

(declare-fun lt!2299845 () (InoxSet Context!10422))

(assert (=> b!5809632 (= lt!2299845 (derivationStepZipperUp!1091 lt!2299848 (h!70105 s!2326)))))

(assert (=> b!5809632 (= lt!2299862 (store ((as const (Array Context!10422 Bool)) false) lt!2299848 true))))

(assert (=> b!5809632 (= lt!2299848 (Context!10423 (Cons!63656 (reg!16156 r!7292) lt!2299835)))))

(assert (=> b!5809632 (= lt!2299835 (Cons!63656 r!7292 Nil!63656))))

(declare-fun b!5809633 () Bool)

(declare-fun tp!1603383 () Bool)

(declare-fun tp!1603381 () Bool)

(assert (=> b!5809633 (= e!3566148 (and tp!1603383 tp!1603381))))

(declare-fun b!5809634 () Bool)

(declare-fun res!2450019 () Bool)

(assert (=> b!5809634 (=> res!2450019 e!3566150)))

(declare-fun generalisedConcat!1442 (List!63780) Regex!15827)

(assert (=> b!5809634 (= res!2450019 (not (= r!7292 (generalisedConcat!1442 (exprs!5711 (h!70106 zl!343))))))))

(declare-fun res!2450016 () Bool)

(declare-fun e!3566156 () Bool)

(assert (=> start!595264 (=> (not res!2450016) (not e!3566156))))

(declare-fun validRegex!7563 (Regex!15827) Bool)

(assert (=> start!595264 (= res!2450016 (validRegex!7563 r!7292))))

(assert (=> start!595264 e!3566156))

(assert (=> start!595264 e!3566148))

(declare-fun condSetEmpty!39116 () Bool)

(assert (=> start!595264 (= condSetEmpty!39116 (= z!1189 ((as const (Array Context!10422 Bool)) false)))))

(assert (=> start!595264 setRes!39116))

(declare-fun e!3566161 () Bool)

(assert (=> start!595264 e!3566161))

(declare-fun e!3566146 () Bool)

(assert (=> start!595264 e!3566146))

(declare-fun b!5809635 () Bool)

(declare-fun res!2450025 () Bool)

(assert (=> b!5809635 (=> res!2450025 e!3566150)))

(get-info :version)

(assert (=> b!5809635 (= res!2450025 (not ((_ is Cons!63656) (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5809636 () Bool)

(declare-fun e!3566154 () Bool)

(assert (=> b!5809636 (= e!3566151 e!3566154)))

(declare-fun res!2450013 () Bool)

(assert (=> b!5809636 (=> res!2450013 e!3566154)))

(declare-fun lt!2299853 () Regex!15827)

(declare-fun unfocusZipper!1569 (List!63782) Regex!15827)

(assert (=> b!5809636 (= res!2450013 (not (= (unfocusZipper!1569 (Cons!63658 lt!2299848 Nil!63658)) lt!2299853)))))

(assert (=> b!5809636 (= lt!2299853 (Concat!24672 (reg!16156 r!7292) r!7292))))

(declare-fun b!5809637 () Bool)

(declare-fun e!3566152 () Bool)

(assert (=> b!5809637 (= e!3566152 e!3566159)))

(declare-fun res!2450014 () Bool)

(assert (=> b!5809637 (=> res!2450014 e!3566159)))

(declare-fun lt!2299847 () Bool)

(assert (=> b!5809637 (= res!2450014 lt!2299847)))

(declare-fun matchRSpec!2930 (Regex!15827 List!63781) Bool)

(assert (=> b!5809637 (= lt!2299847 (matchRSpec!2930 lt!2299853 s!2326))))

(declare-fun matchR!8012 (Regex!15827 List!63781) Bool)

(assert (=> b!5809637 (= lt!2299847 (matchR!8012 lt!2299853 s!2326))))

(declare-fun lt!2299851 () Unit!156914)

(declare-fun mainMatchTheorem!2930 (Regex!15827 List!63781) Unit!156914)

(assert (=> b!5809637 (= lt!2299851 (mainMatchTheorem!2930 lt!2299853 s!2326))))

(declare-fun b!5809638 () Bool)

(declare-fun res!2450032 () Bool)

(assert (=> b!5809638 (=> res!2450032 e!3566159)))

(assert (=> b!5809638 (= res!2450032 (not (matchZipper!1955 z!1189 s!2326)))))

(declare-fun b!5809639 () Bool)

(declare-fun e!3566149 () Bool)

(declare-fun tp!1603375 () Bool)

(assert (=> b!5809639 (= e!3566161 (and (inv!82814 (h!70106 zl!343)) e!3566149 tp!1603375))))

(declare-fun b!5809640 () Bool)

(declare-fun tp!1603379 () Bool)

(assert (=> b!5809640 (= e!3566146 (and tp_is_empty!40907 tp!1603379))))

(declare-fun b!5809641 () Bool)

(declare-fun e!3566147 () Bool)

(assert (=> b!5809641 (= e!3566155 e!3566147)))

(declare-fun res!2450021 () Bool)

(assert (=> b!5809641 (=> res!2450021 e!3566147)))

(declare-fun lt!2299843 () (InoxSet Context!10422))

(declare-fun lt!2299854 () (InoxSet Context!10422))

(assert (=> b!5809641 (= res!2450021 (not (= lt!2299843 lt!2299854)))))

(assert (=> b!5809641 (= lt!2299854 (derivationStepZipperDown!1165 r!7292 (Context!10423 Nil!63656) (h!70105 s!2326)))))

(assert (=> b!5809641 (= lt!2299843 (derivationStepZipperUp!1091 (Context!10423 (Cons!63656 r!7292 Nil!63656)) (h!70105 s!2326)))))

(assert (=> b!5809641 (= lt!2299838 (derivationStepZipper!1896 z!1189 (h!70105 s!2326)))))

(declare-fun b!5809642 () Bool)

(assert (=> b!5809642 (= e!3566153 lt!2299849)))

(declare-fun b!5809643 () Bool)

(declare-fun res!2450026 () Bool)

(assert (=> b!5809643 (=> res!2450026 e!3566152)))

(assert (=> b!5809643 (= res!2450026 (not (= (unfocusZipper!1569 (Cons!63658 lt!2299834 Nil!63658)) (reg!16156 r!7292))))))

(declare-fun b!5809644 () Bool)

(declare-fun res!2450022 () Bool)

(assert (=> b!5809644 (=> res!2450022 e!3566155)))

(assert (=> b!5809644 (= res!2450022 ((_ is Nil!63657) s!2326))))

(declare-fun b!5809645 () Bool)

(declare-fun res!2450020 () Bool)

(assert (=> b!5809645 (=> res!2450020 e!3566150)))

(assert (=> b!5809645 (= res!2450020 (or ((_ is EmptyExpr!15827) r!7292) ((_ is EmptyLang!15827) r!7292) ((_ is ElementMatch!15827) r!7292) ((_ is Union!15827) r!7292) ((_ is Concat!24672) r!7292)))))

(declare-fun b!5809646 () Bool)

(declare-fun e!3566157 () Bool)

(assert (=> b!5809646 (= e!3566157 (not e!3566150))))

(declare-fun res!2450015 () Bool)

(assert (=> b!5809646 (=> res!2450015 e!3566150)))

(assert (=> b!5809646 (= res!2450015 (not ((_ is Cons!63658) zl!343)))))

(assert (=> b!5809646 (= lt!2299856 (matchRSpec!2930 r!7292 s!2326))))

(assert (=> b!5809646 (= lt!2299856 (matchR!8012 r!7292 s!2326))))

(declare-fun lt!2299844 () Unit!156914)

(assert (=> b!5809646 (= lt!2299844 (mainMatchTheorem!2930 r!7292 s!2326))))

(declare-fun b!5809647 () Bool)

(declare-fun res!2450017 () Bool)

(assert (=> b!5809647 (=> (not res!2450017) (not e!3566156))))

(declare-fun toList!9611 ((InoxSet Context!10422)) List!63782)

(assert (=> b!5809647 (= res!2450017 (= (toList!9611 z!1189) zl!343))))

(declare-fun b!5809648 () Bool)

(declare-fun res!2450018 () Bool)

(assert (=> b!5809648 (=> res!2450018 e!3566150)))

(declare-fun generalisedUnion!1690 (List!63780) Regex!15827)

(declare-fun unfocusZipperList!1255 (List!63782) List!63780)

(assert (=> b!5809648 (= res!2450018 (not (= r!7292 (generalisedUnion!1690 (unfocusZipperList!1255 zl!343)))))))

(assert (=> b!5809649 (= e!3566147 e!3566160)))

(declare-fun res!2450023 () Bool)

(assert (=> b!5809649 (=> res!2450023 e!3566160)))

(assert (=> b!5809649 (= res!2450023 (not (= lt!2299838 lt!2299854)))))

(assert (=> b!5809649 (= (flatMap!1434 z!1189 lambda!317310) (derivationStepZipperUp!1091 (h!70106 zl!343) (h!70105 s!2326)))))

(declare-fun lt!2299839 () Unit!156914)

(assert (=> b!5809649 (= lt!2299839 (lemmaFlatMapOnSingletonSet!966 z!1189 (h!70106 zl!343) lambda!317310))))

(declare-fun b!5809650 () Bool)

(assert (=> b!5809650 (= e!3566154 e!3566152)))

(declare-fun res!2450024 () Bool)

(assert (=> b!5809650 (=> res!2450024 e!3566152)))

(declare-fun lt!2299860 () (InoxSet Context!10422))

(assert (=> b!5809650 (= res!2450024 (not (= lt!2299838 (derivationStepZipper!1896 lt!2299860 (h!70105 s!2326)))))))

(assert (=> b!5809650 (= (flatMap!1434 lt!2299860 lambda!317310) (derivationStepZipperUp!1091 lt!2299852 (h!70105 s!2326)))))

(declare-fun lt!2299850 () Unit!156914)

(assert (=> b!5809650 (= lt!2299850 (lemmaFlatMapOnSingletonSet!966 lt!2299860 lt!2299852 lambda!317310))))

(assert (=> b!5809650 (= (flatMap!1434 lt!2299836 lambda!317310) (derivationStepZipperUp!1091 lt!2299834 (h!70105 s!2326)))))

(declare-fun lt!2299859 () Unit!156914)

(assert (=> b!5809650 (= lt!2299859 (lemmaFlatMapOnSingletonSet!966 lt!2299836 lt!2299834 lambda!317310))))

(declare-fun lt!2299846 () (InoxSet Context!10422))

(assert (=> b!5809650 (= lt!2299846 (derivationStepZipperUp!1091 lt!2299852 (h!70105 s!2326)))))

(declare-fun lt!2299861 () (InoxSet Context!10422))

(assert (=> b!5809650 (= lt!2299861 (derivationStepZipperUp!1091 lt!2299834 (h!70105 s!2326)))))

(assert (=> b!5809650 (= lt!2299860 (store ((as const (Array Context!10422 Bool)) false) lt!2299852 true))))

(assert (=> b!5809650 (= lt!2299836 (store ((as const (Array Context!10422 Bool)) false) lt!2299834 true))))

(assert (=> b!5809650 (= lt!2299834 (Context!10423 (Cons!63656 (reg!16156 r!7292) Nil!63656)))))

(declare-fun b!5809651 () Bool)

(declare-fun tp!1603382 () Bool)

(assert (=> b!5809651 (= e!3566149 tp!1603382)))

(declare-fun b!5809652 () Bool)

(declare-fun res!2450028 () Bool)

(assert (=> b!5809652 (=> res!2450028 e!3566151)))

(declare-fun lt!2299841 () Regex!15827)

(assert (=> b!5809652 (= res!2450028 (or (not (= lt!2299841 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5809653 () Bool)

(declare-fun res!2450027 () Bool)

(assert (=> b!5809653 (=> res!2450027 e!3566152)))

(assert (=> b!5809653 (= res!2450027 (not (= (unfocusZipper!1569 (Cons!63658 lt!2299852 Nil!63658)) r!7292)))))

(declare-fun b!5809654 () Bool)

(assert (=> b!5809654 (= e!3566156 e!3566157)))

(declare-fun res!2450033 () Bool)

(assert (=> b!5809654 (=> (not res!2450033) (not e!3566157))))

(assert (=> b!5809654 (= res!2450033 (= r!7292 lt!2299841))))

(assert (=> b!5809654 (= lt!2299841 (unfocusZipper!1569 zl!343))))

(assert (= (and start!595264 res!2450016) b!5809647))

(assert (= (and b!5809647 res!2450017) b!5809654))

(assert (= (and b!5809654 res!2450033) b!5809646))

(assert (= (and b!5809646 (not res!2450015)) b!5809631))

(assert (= (and b!5809631 (not res!2450031)) b!5809634))

(assert (= (and b!5809634 (not res!2450019)) b!5809635))

(assert (= (and b!5809635 (not res!2450025)) b!5809648))

(assert (= (and b!5809648 (not res!2450018)) b!5809645))

(assert (= (and b!5809645 (not res!2450020)) b!5809628))

(assert (= (and b!5809628 (not res!2450012)) b!5809642))

(assert (= (and b!5809628 (not res!2450034)) b!5809644))

(assert (= (and b!5809644 (not res!2450022)) b!5809641))

(assert (= (and b!5809641 (not res!2450021)) b!5809649))

(assert (= (and b!5809649 (not res!2450023)) b!5809632))

(assert (= (and b!5809632 (not res!2450030)) b!5809625))

(assert (= (and b!5809625 (not res!2450029)) b!5809652))

(assert (= (and b!5809652 (not res!2450028)) b!5809636))

(assert (= (and b!5809636 (not res!2450013)) b!5809650))

(assert (= (and b!5809650 (not res!2450024)) b!5809643))

(assert (= (and b!5809643 (not res!2450026)) b!5809653))

(assert (= (and b!5809653 (not res!2450027)) b!5809637))

(assert (= (and b!5809637 (not res!2450014)) b!5809638))

(assert (= (and b!5809638 (not res!2450032)) b!5809629))

(assert (= (and start!595264 ((_ is ElementMatch!15827) r!7292)) b!5809624))

(assert (= (and start!595264 ((_ is Concat!24672) r!7292)) b!5809626))

(assert (= (and start!595264 ((_ is Star!15827) r!7292)) b!5809630))

(assert (= (and start!595264 ((_ is Union!15827) r!7292)) b!5809633))

(assert (= (and start!595264 condSetEmpty!39116) setIsEmpty!39116))

(assert (= (and start!595264 (not condSetEmpty!39116)) setNonEmpty!39116))

(assert (= setNonEmpty!39116 b!5809627))

(assert (= b!5809639 b!5809651))

(assert (= (and start!595264 ((_ is Cons!63658) zl!343)) b!5809639))

(assert (= (and start!595264 ((_ is Cons!63657) s!2326)) b!5809640))

(declare-fun m!6748106 () Bool)

(assert (=> b!5809638 m!6748106))

(declare-fun m!6748108 () Bool)

(assert (=> b!5809643 m!6748108))

(declare-fun m!6748110 () Bool)

(assert (=> b!5809641 m!6748110))

(declare-fun m!6748112 () Bool)

(assert (=> b!5809641 m!6748112))

(declare-fun m!6748114 () Bool)

(assert (=> b!5809641 m!6748114))

(declare-fun m!6748116 () Bool)

(assert (=> b!5809649 m!6748116))

(declare-fun m!6748118 () Bool)

(assert (=> b!5809649 m!6748118))

(declare-fun m!6748120 () Bool)

(assert (=> b!5809649 m!6748120))

(declare-fun m!6748122 () Bool)

(assert (=> b!5809637 m!6748122))

(declare-fun m!6748124 () Bool)

(assert (=> b!5809637 m!6748124))

(declare-fun m!6748126 () Bool)

(assert (=> b!5809637 m!6748126))

(declare-fun m!6748128 () Bool)

(assert (=> setNonEmpty!39116 m!6748128))

(declare-fun m!6748130 () Bool)

(assert (=> b!5809648 m!6748130))

(assert (=> b!5809648 m!6748130))

(declare-fun m!6748132 () Bool)

(assert (=> b!5809648 m!6748132))

(declare-fun m!6748134 () Bool)

(assert (=> b!5809628 m!6748134))

(declare-fun m!6748136 () Bool)

(assert (=> b!5809628 m!6748136))

(assert (=> b!5809628 m!6748134))

(declare-fun m!6748138 () Bool)

(assert (=> b!5809628 m!6748138))

(declare-fun m!6748140 () Bool)

(assert (=> b!5809628 m!6748140))

(declare-fun m!6748142 () Bool)

(assert (=> b!5809628 m!6748142))

(assert (=> b!5809628 m!6748134))

(assert (=> b!5809628 m!6748142))

(declare-fun m!6748144 () Bool)

(assert (=> b!5809628 m!6748144))

(declare-fun m!6748146 () Bool)

(assert (=> b!5809628 m!6748146))

(declare-fun m!6748148 () Bool)

(assert (=> b!5809628 m!6748148))

(declare-fun m!6748150 () Bool)

(assert (=> b!5809628 m!6748150))

(declare-fun m!6748152 () Bool)

(assert (=> b!5809647 m!6748152))

(declare-fun m!6748154 () Bool)

(assert (=> b!5809632 m!6748154))

(declare-fun m!6748156 () Bool)

(assert (=> b!5809632 m!6748156))

(declare-fun m!6748158 () Bool)

(assert (=> b!5809632 m!6748158))

(declare-fun m!6748160 () Bool)

(assert (=> b!5809632 m!6748160))

(declare-fun m!6748162 () Bool)

(assert (=> b!5809632 m!6748162))

(declare-fun m!6748164 () Bool)

(assert (=> b!5809634 m!6748164))

(declare-fun m!6748166 () Bool)

(assert (=> b!5809653 m!6748166))

(declare-fun m!6748168 () Bool)

(assert (=> b!5809654 m!6748168))

(declare-fun m!6748170 () Bool)

(assert (=> b!5809631 m!6748170))

(declare-fun m!6748172 () Bool)

(assert (=> b!5809650 m!6748172))

(declare-fun m!6748174 () Bool)

(assert (=> b!5809650 m!6748174))

(declare-fun m!6748176 () Bool)

(assert (=> b!5809650 m!6748176))

(declare-fun m!6748178 () Bool)

(assert (=> b!5809650 m!6748178))

(declare-fun m!6748180 () Bool)

(assert (=> b!5809650 m!6748180))

(declare-fun m!6748182 () Bool)

(assert (=> b!5809650 m!6748182))

(declare-fun m!6748184 () Bool)

(assert (=> b!5809650 m!6748184))

(declare-fun m!6748186 () Bool)

(assert (=> b!5809650 m!6748186))

(declare-fun m!6748188 () Bool)

(assert (=> b!5809650 m!6748188))

(declare-fun m!6748190 () Bool)

(assert (=> b!5809639 m!6748190))

(declare-fun m!6748192 () Bool)

(assert (=> b!5809625 m!6748192))

(declare-fun m!6748194 () Bool)

(assert (=> b!5809625 m!6748194))

(assert (=> b!5809625 m!6748194))

(declare-fun m!6748196 () Bool)

(assert (=> b!5809625 m!6748196))

(declare-fun m!6748198 () Bool)

(assert (=> b!5809646 m!6748198))

(declare-fun m!6748200 () Bool)

(assert (=> b!5809646 m!6748200))

(declare-fun m!6748202 () Bool)

(assert (=> b!5809646 m!6748202))

(declare-fun m!6748204 () Bool)

(assert (=> b!5809636 m!6748204))

(declare-fun m!6748206 () Bool)

(assert (=> start!595264 m!6748206))

(declare-fun m!6748208 () Bool)

(assert (=> b!5809629 m!6748208))

(declare-fun m!6748210 () Bool)

(assert (=> b!5809629 m!6748210))

(declare-fun m!6748212 () Bool)

(assert (=> b!5809629 m!6748212))

(declare-fun m!6748214 () Bool)

(assert (=> b!5809629 m!6748214))

(declare-fun m!6748216 () Bool)

(assert (=> b!5809629 m!6748216))

(declare-fun m!6748218 () Bool)

(assert (=> b!5809629 m!6748218))

(check-sat (not b!5809628) (not b!5809626) (not b!5809648) (not b!5809634) (not b!5809639) (not b!5809641) (not setNonEmpty!39116) (not b!5809649) (not b!5809627) (not b!5809653) (not b!5809636) (not b!5809625) (not b!5809633) (not b!5809651) (not b!5809629) (not b!5809650) (not b!5809631) tp_is_empty!40907 (not b!5809643) (not b!5809638) (not b!5809654) (not b!5809637) (not start!595264) (not b!5809647) (not b!5809632) (not b!5809630) (not b!5809640) (not b!5809646))
(check-sat)
(get-model)

(declare-fun bs!1371378 () Bool)

(declare-fun b!5809703 () Bool)

(assert (= bs!1371378 (and b!5809703 b!5809628)))

(declare-fun lambda!317317 () Int)

(assert (=> bs!1371378 (not (= lambda!317317 lambda!317307))))

(assert (=> bs!1371378 (= (and (= (reg!16156 lt!2299853) (reg!16156 r!7292)) (= lt!2299853 r!7292)) (= lambda!317317 lambda!317308))))

(assert (=> bs!1371378 (not (= lambda!317317 lambda!317309))))

(assert (=> b!5809703 true))

(assert (=> b!5809703 true))

(declare-fun bs!1371379 () Bool)

(declare-fun b!5809700 () Bool)

(assert (= bs!1371379 (and b!5809700 b!5809628)))

(declare-fun lambda!317318 () Int)

(assert (=> bs!1371379 (not (= lambda!317318 lambda!317307))))

(assert (=> bs!1371379 (not (= lambda!317318 lambda!317308))))

(assert (=> bs!1371379 (= (and (= (regOne!32166 lt!2299853) (reg!16156 r!7292)) (= (regTwo!32166 lt!2299853) r!7292)) (= lambda!317318 lambda!317309))))

(declare-fun bs!1371380 () Bool)

(assert (= bs!1371380 (and b!5809700 b!5809703)))

(assert (=> bs!1371380 (not (= lambda!317318 lambda!317317))))

(assert (=> b!5809700 true))

(assert (=> b!5809700 true))

(declare-fun b!5809695 () Bool)

(declare-fun e!3566183 () Bool)

(declare-fun e!3566181 () Bool)

(assert (=> b!5809695 (= e!3566183 e!3566181)))

(declare-fun c!1029338 () Bool)

(assert (=> b!5809695 (= c!1029338 ((_ is Star!15827) lt!2299853))))

(declare-fun bm!453572 () Bool)

(declare-fun call!453577 () Bool)

(assert (=> bm!453572 (= call!453577 (Exists!2927 (ite c!1029338 lambda!317317 lambda!317318)))))

(declare-fun b!5809696 () Bool)

(declare-fun res!2450052 () Bool)

(declare-fun e!3566184 () Bool)

(assert (=> b!5809696 (=> res!2450052 e!3566184)))

(declare-fun call!453578 () Bool)

(assert (=> b!5809696 (= res!2450052 call!453578)))

(assert (=> b!5809696 (= e!3566181 e!3566184)))

(declare-fun b!5809697 () Bool)

(declare-fun e!3566182 () Bool)

(assert (=> b!5809697 (= e!3566182 call!453578)))

(declare-fun b!5809698 () Bool)

(declare-fun e!3566185 () Bool)

(assert (=> b!5809698 (= e!3566185 (= s!2326 (Cons!63657 (c!1029329 lt!2299853) Nil!63657)))))

(declare-fun b!5809699 () Bool)

(declare-fun c!1029341 () Bool)

(assert (=> b!5809699 (= c!1029341 ((_ is ElementMatch!15827) lt!2299853))))

(declare-fun e!3566186 () Bool)

(assert (=> b!5809699 (= e!3566186 e!3566185)))

(declare-fun bm!453573 () Bool)

(assert (=> bm!453573 (= call!453578 (isEmpty!35571 s!2326))))

(declare-fun d!1829449 () Bool)

(declare-fun c!1029340 () Bool)

(assert (=> d!1829449 (= c!1029340 ((_ is EmptyExpr!15827) lt!2299853))))

(assert (=> d!1829449 (= (matchRSpec!2930 lt!2299853 s!2326) e!3566182)))

(assert (=> b!5809700 (= e!3566181 call!453577)))

(declare-fun b!5809701 () Bool)

(declare-fun c!1029339 () Bool)

(assert (=> b!5809701 (= c!1029339 ((_ is Union!15827) lt!2299853))))

(assert (=> b!5809701 (= e!3566185 e!3566183)))

(declare-fun b!5809702 () Bool)

(assert (=> b!5809702 (= e!3566182 e!3566186)))

(declare-fun res!2450053 () Bool)

(assert (=> b!5809702 (= res!2450053 (not ((_ is EmptyLang!15827) lt!2299853)))))

(assert (=> b!5809702 (=> (not res!2450053) (not e!3566186))))

(assert (=> b!5809703 (= e!3566184 call!453577)))

(declare-fun b!5809704 () Bool)

(declare-fun e!3566180 () Bool)

(assert (=> b!5809704 (= e!3566183 e!3566180)))

(declare-fun res!2450054 () Bool)

(assert (=> b!5809704 (= res!2450054 (matchRSpec!2930 (regOne!32167 lt!2299853) s!2326))))

(assert (=> b!5809704 (=> res!2450054 e!3566180)))

(declare-fun b!5809705 () Bool)

(assert (=> b!5809705 (= e!3566180 (matchRSpec!2930 (regTwo!32167 lt!2299853) s!2326))))

(assert (= (and d!1829449 c!1029340) b!5809697))

(assert (= (and d!1829449 (not c!1029340)) b!5809702))

(assert (= (and b!5809702 res!2450053) b!5809699))

(assert (= (and b!5809699 c!1029341) b!5809698))

(assert (= (and b!5809699 (not c!1029341)) b!5809701))

(assert (= (and b!5809701 c!1029339) b!5809704))

(assert (= (and b!5809701 (not c!1029339)) b!5809695))

(assert (= (and b!5809704 (not res!2450054)) b!5809705))

(assert (= (and b!5809695 c!1029338) b!5809696))

(assert (= (and b!5809695 (not c!1029338)) b!5809700))

(assert (= (and b!5809696 (not res!2450052)) b!5809703))

(assert (= (or b!5809703 b!5809700) bm!453572))

(assert (= (or b!5809697 b!5809696) bm!453573))

(declare-fun m!6748220 () Bool)

(assert (=> bm!453572 m!6748220))

(assert (=> bm!453573 m!6748148))

(declare-fun m!6748222 () Bool)

(assert (=> b!5809704 m!6748222))

(declare-fun m!6748224 () Bool)

(assert (=> b!5809705 m!6748224))

(assert (=> b!5809637 d!1829449))

(declare-fun d!1829451 () Bool)

(declare-fun e!3566201 () Bool)

(assert (=> d!1829451 e!3566201))

(declare-fun c!1029348 () Bool)

(assert (=> d!1829451 (= c!1029348 ((_ is EmptyExpr!15827) lt!2299853))))

(declare-fun lt!2299865 () Bool)

(declare-fun e!3566206 () Bool)

(assert (=> d!1829451 (= lt!2299865 e!3566206)))

(declare-fun c!1029350 () Bool)

(assert (=> d!1829451 (= c!1029350 (isEmpty!35571 s!2326))))

(assert (=> d!1829451 (validRegex!7563 lt!2299853)))

(assert (=> d!1829451 (= (matchR!8012 lt!2299853 s!2326) lt!2299865)))

(declare-fun bm!453576 () Bool)

(declare-fun call!453581 () Bool)

(assert (=> bm!453576 (= call!453581 (isEmpty!35571 s!2326))))

(declare-fun b!5809734 () Bool)

(declare-fun res!2450077 () Bool)

(declare-fun e!3566207 () Bool)

(assert (=> b!5809734 (=> res!2450077 e!3566207)))

(declare-fun e!3566203 () Bool)

(assert (=> b!5809734 (= res!2450077 e!3566203)))

(declare-fun res!2450076 () Bool)

(assert (=> b!5809734 (=> (not res!2450076) (not e!3566203))))

(assert (=> b!5809734 (= res!2450076 lt!2299865)))

(declare-fun b!5809735 () Bool)

(declare-fun head!12260 (List!63781) C!31924)

(assert (=> b!5809735 (= e!3566203 (= (head!12260 s!2326) (c!1029329 lt!2299853)))))

(declare-fun b!5809736 () Bool)

(declare-fun e!3566205 () Bool)

(assert (=> b!5809736 (= e!3566201 e!3566205)))

(declare-fun c!1029349 () Bool)

(assert (=> b!5809736 (= c!1029349 ((_ is EmptyLang!15827) lt!2299853))))

(declare-fun b!5809737 () Bool)

(declare-fun res!2450074 () Bool)

(declare-fun e!3566202 () Bool)

(assert (=> b!5809737 (=> res!2450074 e!3566202)))

(declare-fun tail!11355 (List!63781) List!63781)

(assert (=> b!5809737 (= res!2450074 (not (isEmpty!35571 (tail!11355 s!2326))))))

(declare-fun b!5809738 () Bool)

(assert (=> b!5809738 (= e!3566205 (not lt!2299865))))

(declare-fun b!5809739 () Bool)

(declare-fun e!3566204 () Bool)

(assert (=> b!5809739 (= e!3566204 e!3566202)))

(declare-fun res!2450079 () Bool)

(assert (=> b!5809739 (=> res!2450079 e!3566202)))

(assert (=> b!5809739 (= res!2450079 call!453581)))

(declare-fun b!5809740 () Bool)

(declare-fun nullable!5850 (Regex!15827) Bool)

(assert (=> b!5809740 (= e!3566206 (nullable!5850 lt!2299853))))

(declare-fun b!5809741 () Bool)

(declare-fun res!2450072 () Bool)

(assert (=> b!5809741 (=> (not res!2450072) (not e!3566203))))

(assert (=> b!5809741 (= res!2450072 (not call!453581))))

(declare-fun b!5809742 () Bool)

(declare-fun res!2450073 () Bool)

(assert (=> b!5809742 (=> res!2450073 e!3566207)))

(assert (=> b!5809742 (= res!2450073 (not ((_ is ElementMatch!15827) lt!2299853)))))

(assert (=> b!5809742 (= e!3566205 e!3566207)))

(declare-fun b!5809743 () Bool)

(declare-fun derivativeStep!4593 (Regex!15827 C!31924) Regex!15827)

(assert (=> b!5809743 (= e!3566206 (matchR!8012 (derivativeStep!4593 lt!2299853 (head!12260 s!2326)) (tail!11355 s!2326)))))

(declare-fun b!5809744 () Bool)

(assert (=> b!5809744 (= e!3566202 (not (= (head!12260 s!2326) (c!1029329 lt!2299853))))))

(declare-fun b!5809745 () Bool)

(declare-fun res!2450078 () Bool)

(assert (=> b!5809745 (=> (not res!2450078) (not e!3566203))))

(assert (=> b!5809745 (= res!2450078 (isEmpty!35571 (tail!11355 s!2326)))))

(declare-fun b!5809746 () Bool)

(assert (=> b!5809746 (= e!3566201 (= lt!2299865 call!453581))))

(declare-fun b!5809747 () Bool)

(assert (=> b!5809747 (= e!3566207 e!3566204)))

(declare-fun res!2450075 () Bool)

(assert (=> b!5809747 (=> (not res!2450075) (not e!3566204))))

(assert (=> b!5809747 (= res!2450075 (not lt!2299865))))

(assert (= (and d!1829451 c!1029350) b!5809740))

(assert (= (and d!1829451 (not c!1029350)) b!5809743))

(assert (= (and d!1829451 c!1029348) b!5809746))

(assert (= (and d!1829451 (not c!1029348)) b!5809736))

(assert (= (and b!5809736 c!1029349) b!5809738))

(assert (= (and b!5809736 (not c!1029349)) b!5809742))

(assert (= (and b!5809742 (not res!2450073)) b!5809734))

(assert (= (and b!5809734 res!2450076) b!5809741))

(assert (= (and b!5809741 res!2450072) b!5809745))

(assert (= (and b!5809745 res!2450078) b!5809735))

(assert (= (and b!5809734 (not res!2450077)) b!5809747))

(assert (= (and b!5809747 res!2450075) b!5809739))

(assert (= (and b!5809739 (not res!2450079)) b!5809737))

(assert (= (and b!5809737 (not res!2450074)) b!5809744))

(assert (= (or b!5809746 b!5809741 b!5809739) bm!453576))

(assert (=> d!1829451 m!6748148))

(declare-fun m!6748226 () Bool)

(assert (=> d!1829451 m!6748226))

(declare-fun m!6748228 () Bool)

(assert (=> b!5809743 m!6748228))

(assert (=> b!5809743 m!6748228))

(declare-fun m!6748230 () Bool)

(assert (=> b!5809743 m!6748230))

(declare-fun m!6748232 () Bool)

(assert (=> b!5809743 m!6748232))

(assert (=> b!5809743 m!6748230))

(assert (=> b!5809743 m!6748232))

(declare-fun m!6748234 () Bool)

(assert (=> b!5809743 m!6748234))

(declare-fun m!6748236 () Bool)

(assert (=> b!5809740 m!6748236))

(assert (=> b!5809745 m!6748232))

(assert (=> b!5809745 m!6748232))

(declare-fun m!6748238 () Bool)

(assert (=> b!5809745 m!6748238))

(assert (=> b!5809744 m!6748228))

(assert (=> bm!453576 m!6748148))

(assert (=> b!5809735 m!6748228))

(assert (=> b!5809737 m!6748232))

(assert (=> b!5809737 m!6748232))

(assert (=> b!5809737 m!6748238))

(assert (=> b!5809637 d!1829451))

(declare-fun d!1829453 () Bool)

(assert (=> d!1829453 (= (matchR!8012 lt!2299853 s!2326) (matchRSpec!2930 lt!2299853 s!2326))))

(declare-fun lt!2299868 () Unit!156914)

(declare-fun choose!44107 (Regex!15827 List!63781) Unit!156914)

(assert (=> d!1829453 (= lt!2299868 (choose!44107 lt!2299853 s!2326))))

(assert (=> d!1829453 (validRegex!7563 lt!2299853)))

(assert (=> d!1829453 (= (mainMatchTheorem!2930 lt!2299853 s!2326) lt!2299868)))

(declare-fun bs!1371381 () Bool)

(assert (= bs!1371381 d!1829453))

(assert (=> bs!1371381 m!6748124))

(assert (=> bs!1371381 m!6748122))

(declare-fun m!6748240 () Bool)

(assert (=> bs!1371381 m!6748240))

(assert (=> bs!1371381 m!6748226))

(assert (=> b!5809637 d!1829453))

(declare-fun d!1829457 () Bool)

(declare-fun isEmpty!35573 (Option!15836) Bool)

(assert (=> d!1829457 (= (isDefined!12539 (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 Nil!63657 s!2326 s!2326)) (not (isEmpty!35573 (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 Nil!63657 s!2326 s!2326))))))

(declare-fun bs!1371382 () Bool)

(assert (= bs!1371382 d!1829457))

(assert (=> bs!1371382 m!6748142))

(declare-fun m!6748242 () Bool)

(assert (=> bs!1371382 m!6748242))

(assert (=> b!5809628 d!1829457))

(declare-fun bs!1371387 () Bool)

(declare-fun d!1829459 () Bool)

(assert (= bs!1371387 (and d!1829459 b!5809628)))

(declare-fun lambda!317326 () Int)

(assert (=> bs!1371387 (not (= lambda!317326 lambda!317308))))

(declare-fun bs!1371388 () Bool)

(assert (= bs!1371388 (and d!1829459 b!5809700)))

(assert (=> bs!1371388 (not (= lambda!317326 lambda!317318))))

(assert (=> bs!1371387 (= (= (Star!15827 (reg!16156 r!7292)) r!7292) (= lambda!317326 lambda!317307))))

(assert (=> bs!1371387 (not (= lambda!317326 lambda!317309))))

(declare-fun bs!1371389 () Bool)

(assert (= bs!1371389 (and d!1829459 b!5809703)))

(assert (=> bs!1371389 (not (= lambda!317326 lambda!317317))))

(assert (=> d!1829459 true))

(assert (=> d!1829459 true))

(declare-fun bs!1371390 () Bool)

(assert (= bs!1371390 d!1829459))

(declare-fun lambda!317327 () Int)

(assert (=> bs!1371390 (not (= lambda!317327 lambda!317326))))

(assert (=> bs!1371387 (= (= (Star!15827 (reg!16156 r!7292)) r!7292) (= lambda!317327 lambda!317308))))

(assert (=> bs!1371388 (not (= lambda!317327 lambda!317318))))

(assert (=> bs!1371387 (not (= lambda!317327 lambda!317307))))

(assert (=> bs!1371387 (not (= lambda!317327 lambda!317309))))

(assert (=> bs!1371389 (= (and (= (reg!16156 r!7292) (reg!16156 lt!2299853)) (= (Star!15827 (reg!16156 r!7292)) lt!2299853)) (= lambda!317327 lambda!317317))))

(assert (=> d!1829459 true))

(assert (=> d!1829459 true))

(assert (=> d!1829459 (= (Exists!2927 lambda!317326) (Exists!2927 lambda!317327))))

(declare-fun lt!2299874 () Unit!156914)

(declare-fun choose!44108 (Regex!15827 List!63781) Unit!156914)

(assert (=> d!1829459 (= lt!2299874 (choose!44108 (reg!16156 r!7292) s!2326))))

(assert (=> d!1829459 (validRegex!7563 (reg!16156 r!7292))))

(assert (=> d!1829459 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!608 (reg!16156 r!7292) s!2326) lt!2299874)))

(declare-fun m!6748290 () Bool)

(assert (=> bs!1371390 m!6748290))

(declare-fun m!6748292 () Bool)

(assert (=> bs!1371390 m!6748292))

(declare-fun m!6748294 () Bool)

(assert (=> bs!1371390 m!6748294))

(declare-fun m!6748296 () Bool)

(assert (=> bs!1371390 m!6748296))

(assert (=> b!5809628 d!1829459))

(declare-fun d!1829477 () Bool)

(declare-fun choose!44109 (Int) Bool)

(assert (=> d!1829477 (= (Exists!2927 lambda!317308) (choose!44109 lambda!317308))))

(declare-fun bs!1371391 () Bool)

(assert (= bs!1371391 d!1829477))

(declare-fun m!6748298 () Bool)

(assert (=> bs!1371391 m!6748298))

(assert (=> b!5809628 d!1829477))

(declare-fun d!1829479 () Bool)

(assert (=> d!1829479 (= (Exists!2927 lambda!317309) (choose!44109 lambda!317309))))

(declare-fun bs!1371392 () Bool)

(assert (= bs!1371392 d!1829479))

(declare-fun m!6748300 () Bool)

(assert (=> bs!1371392 m!6748300))

(assert (=> b!5809628 d!1829479))

(declare-fun d!1829481 () Bool)

(assert (=> d!1829481 (= (isEmpty!35571 s!2326) ((_ is Nil!63657) s!2326))))

(assert (=> b!5809628 d!1829481))

(declare-fun bs!1371400 () Bool)

(declare-fun d!1829483 () Bool)

(assert (= bs!1371400 (and d!1829483 d!1829459)))

(declare-fun lambda!317338 () Int)

(assert (=> bs!1371400 (= (= r!7292 (Star!15827 (reg!16156 r!7292))) (= lambda!317338 lambda!317326))))

(declare-fun bs!1371401 () Bool)

(assert (= bs!1371401 (and d!1829483 b!5809628)))

(assert (=> bs!1371401 (not (= lambda!317338 lambda!317308))))

(declare-fun bs!1371402 () Bool)

(assert (= bs!1371402 (and d!1829483 b!5809700)))

(assert (=> bs!1371402 (not (= lambda!317338 lambda!317318))))

(assert (=> bs!1371401 (= lambda!317338 lambda!317307)))

(assert (=> bs!1371401 (not (= lambda!317338 lambda!317309))))

(assert (=> bs!1371400 (not (= lambda!317338 lambda!317327))))

(declare-fun bs!1371403 () Bool)

(assert (= bs!1371403 (and d!1829483 b!5809703)))

(assert (=> bs!1371403 (not (= lambda!317338 lambda!317317))))

(assert (=> d!1829483 true))

(assert (=> d!1829483 true))

(assert (=> d!1829483 true))

(declare-fun lambda!317339 () Int)

(assert (=> bs!1371400 (not (= lambda!317339 lambda!317326))))

(assert (=> bs!1371401 (not (= lambda!317339 lambda!317308))))

(assert (=> bs!1371402 (= (and (= (reg!16156 r!7292) (regOne!32166 lt!2299853)) (= r!7292 (regTwo!32166 lt!2299853))) (= lambda!317339 lambda!317318))))

(assert (=> bs!1371401 (= lambda!317339 lambda!317309)))

(assert (=> bs!1371400 (not (= lambda!317339 lambda!317327))))

(assert (=> bs!1371403 (not (= lambda!317339 lambda!317317))))

(assert (=> bs!1371401 (not (= lambda!317339 lambda!317307))))

(declare-fun bs!1371406 () Bool)

(assert (= bs!1371406 d!1829483))

(assert (=> bs!1371406 (not (= lambda!317339 lambda!317338))))

(assert (=> d!1829483 true))

(assert (=> d!1829483 true))

(assert (=> d!1829483 true))

(assert (=> d!1829483 (= (Exists!2927 lambda!317338) (Exists!2927 lambda!317339))))

(declare-fun lt!2299883 () Unit!156914)

(declare-fun choose!44110 (Regex!15827 Regex!15827 List!63781) Unit!156914)

(assert (=> d!1829483 (= lt!2299883 (choose!44110 (reg!16156 r!7292) r!7292 s!2326))))

(assert (=> d!1829483 (validRegex!7563 (reg!16156 r!7292))))

(assert (=> d!1829483 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1556 (reg!16156 r!7292) r!7292 s!2326) lt!2299883)))

(declare-fun m!6748320 () Bool)

(assert (=> bs!1371406 m!6748320))

(declare-fun m!6748322 () Bool)

(assert (=> bs!1371406 m!6748322))

(declare-fun m!6748326 () Bool)

(assert (=> bs!1371406 m!6748326))

(assert (=> bs!1371406 m!6748296))

(assert (=> b!5809628 d!1829483))

(declare-fun d!1829495 () Bool)

(assert (=> d!1829495 (= (Exists!2927 lambda!317307) (choose!44109 lambda!317307))))

(declare-fun bs!1371407 () Bool)

(assert (= bs!1371407 d!1829495))

(declare-fun m!6748338 () Bool)

(assert (=> bs!1371407 m!6748338))

(assert (=> b!5809628 d!1829495))

(declare-fun b!5809887 () Bool)

(declare-fun res!2450140 () Bool)

(declare-fun e!3566289 () Bool)

(assert (=> b!5809887 (=> (not res!2450140) (not e!3566289))))

(declare-fun lt!2299895 () Option!15836)

(declare-fun get!21975 (Option!15836) tuple2!65848)

(assert (=> b!5809887 (= res!2450140 (matchR!8012 (reg!16156 r!7292) (_1!36227 (get!21975 lt!2299895))))))

(declare-fun b!5809888 () Bool)

(declare-fun e!3566287 () Option!15836)

(assert (=> b!5809888 (= e!3566287 None!15835)))

(declare-fun d!1829497 () Bool)

(declare-fun e!3566285 () Bool)

(assert (=> d!1829497 e!3566285))

(declare-fun res!2450138 () Bool)

(assert (=> d!1829497 (=> res!2450138 e!3566285)))

(assert (=> d!1829497 (= res!2450138 e!3566289)))

(declare-fun res!2450139 () Bool)

(assert (=> d!1829497 (=> (not res!2450139) (not e!3566289))))

(assert (=> d!1829497 (= res!2450139 (isDefined!12539 lt!2299895))))

(declare-fun e!3566288 () Option!15836)

(assert (=> d!1829497 (= lt!2299895 e!3566288)))

(declare-fun c!1029394 () Bool)

(declare-fun e!3566286 () Bool)

(assert (=> d!1829497 (= c!1029394 e!3566286)))

(declare-fun res!2450137 () Bool)

(assert (=> d!1829497 (=> (not res!2450137) (not e!3566286))))

(assert (=> d!1829497 (= res!2450137 (matchR!8012 (reg!16156 r!7292) Nil!63657))))

(assert (=> d!1829497 (validRegex!7563 (reg!16156 r!7292))))

(assert (=> d!1829497 (= (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 Nil!63657 s!2326 s!2326) lt!2299895)))

(declare-fun b!5809889 () Bool)

(assert (=> b!5809889 (= e!3566288 (Some!15835 (tuple2!65849 Nil!63657 s!2326)))))

(declare-fun b!5809890 () Bool)

(assert (=> b!5809890 (= e!3566288 e!3566287)))

(declare-fun c!1029393 () Bool)

(assert (=> b!5809890 (= c!1029393 ((_ is Nil!63657) s!2326))))

(declare-fun b!5809891 () Bool)

(assert (=> b!5809891 (= e!3566285 (not (isDefined!12539 lt!2299895)))))

(declare-fun b!5809892 () Bool)

(assert (=> b!5809892 (= e!3566286 (matchR!8012 r!7292 s!2326))))

(declare-fun b!5809893 () Bool)

(declare-fun ++!14038 (List!63781 List!63781) List!63781)

(assert (=> b!5809893 (= e!3566289 (= (++!14038 (_1!36227 (get!21975 lt!2299895)) (_2!36227 (get!21975 lt!2299895))) s!2326))))

(declare-fun b!5809894 () Bool)

(declare-fun lt!2299896 () Unit!156914)

(declare-fun lt!2299894 () Unit!156914)

(assert (=> b!5809894 (= lt!2299896 lt!2299894)))

(assert (=> b!5809894 (= (++!14038 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)) (t!377134 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2143 (List!63781 C!31924 List!63781 List!63781) Unit!156914)

(assert (=> b!5809894 (= lt!2299894 (lemmaMoveElementToOtherListKeepsConcatEq!2143 Nil!63657 (h!70105 s!2326) (t!377134 s!2326) s!2326))))

(assert (=> b!5809894 (= e!3566287 (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)) (t!377134 s!2326) s!2326))))

(declare-fun b!5809895 () Bool)

(declare-fun res!2450141 () Bool)

(assert (=> b!5809895 (=> (not res!2450141) (not e!3566289))))

(assert (=> b!5809895 (= res!2450141 (matchR!8012 r!7292 (_2!36227 (get!21975 lt!2299895))))))

(assert (= (and d!1829497 res!2450137) b!5809892))

(assert (= (and d!1829497 c!1029394) b!5809889))

(assert (= (and d!1829497 (not c!1029394)) b!5809890))

(assert (= (and b!5809890 c!1029393) b!5809888))

(assert (= (and b!5809890 (not c!1029393)) b!5809894))

(assert (= (and d!1829497 res!2450139) b!5809887))

(assert (= (and b!5809887 res!2450140) b!5809895))

(assert (= (and b!5809895 res!2450141) b!5809893))

(assert (= (and d!1829497 (not res!2450138)) b!5809891))

(declare-fun m!6748352 () Bool)

(assert (=> b!5809894 m!6748352))

(assert (=> b!5809894 m!6748352))

(declare-fun m!6748354 () Bool)

(assert (=> b!5809894 m!6748354))

(declare-fun m!6748356 () Bool)

(assert (=> b!5809894 m!6748356))

(assert (=> b!5809894 m!6748352))

(declare-fun m!6748358 () Bool)

(assert (=> b!5809894 m!6748358))

(declare-fun m!6748360 () Bool)

(assert (=> b!5809893 m!6748360))

(declare-fun m!6748362 () Bool)

(assert (=> b!5809893 m!6748362))

(assert (=> b!5809892 m!6748200))

(declare-fun m!6748364 () Bool)

(assert (=> d!1829497 m!6748364))

(declare-fun m!6748366 () Bool)

(assert (=> d!1829497 m!6748366))

(assert (=> d!1829497 m!6748296))

(assert (=> b!5809887 m!6748360))

(declare-fun m!6748368 () Bool)

(assert (=> b!5809887 m!6748368))

(assert (=> b!5809895 m!6748360))

(declare-fun m!6748370 () Bool)

(assert (=> b!5809895 m!6748370))

(assert (=> b!5809891 m!6748364))

(assert (=> b!5809628 d!1829497))

(declare-fun bs!1371414 () Bool)

(declare-fun d!1829503 () Bool)

(assert (= bs!1371414 (and d!1829503 d!1829459)))

(declare-fun lambda!317352 () Int)

(assert (=> bs!1371414 (= (= r!7292 (Star!15827 (reg!16156 r!7292))) (= lambda!317352 lambda!317326))))

(declare-fun bs!1371415 () Bool)

(assert (= bs!1371415 (and d!1829503 b!5809628)))

(assert (=> bs!1371415 (not (= lambda!317352 lambda!317308))))

(declare-fun bs!1371416 () Bool)

(assert (= bs!1371416 (and d!1829503 d!1829483)))

(assert (=> bs!1371416 (not (= lambda!317352 lambda!317339))))

(declare-fun bs!1371417 () Bool)

(assert (= bs!1371417 (and d!1829503 b!5809700)))

(assert (=> bs!1371417 (not (= lambda!317352 lambda!317318))))

(assert (=> bs!1371415 (not (= lambda!317352 lambda!317309))))

(assert (=> bs!1371414 (not (= lambda!317352 lambda!317327))))

(declare-fun bs!1371418 () Bool)

(assert (= bs!1371418 (and d!1829503 b!5809703)))

(assert (=> bs!1371418 (not (= lambda!317352 lambda!317317))))

(assert (=> bs!1371415 (= lambda!317352 lambda!317307)))

(assert (=> bs!1371416 (= lambda!317352 lambda!317338)))

(assert (=> d!1829503 true))

(assert (=> d!1829503 true))

(assert (=> d!1829503 true))

(assert (=> d!1829503 (= (isDefined!12539 (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 Nil!63657 s!2326 s!2326)) (Exists!2927 lambda!317352))))

(declare-fun lt!2299899 () Unit!156914)

(declare-fun choose!44114 (Regex!15827 Regex!15827 List!63781) Unit!156914)

(assert (=> d!1829503 (= lt!2299899 (choose!44114 (reg!16156 r!7292) r!7292 s!2326))))

(assert (=> d!1829503 (validRegex!7563 (reg!16156 r!7292))))

(assert (=> d!1829503 (= (lemmaFindConcatSeparationEquivalentToExists!2014 (reg!16156 r!7292) r!7292 s!2326) lt!2299899)))

(declare-fun bs!1371419 () Bool)

(assert (= bs!1371419 d!1829503))

(declare-fun m!6748378 () Bool)

(assert (=> bs!1371419 m!6748378))

(assert (=> bs!1371419 m!6748142))

(assert (=> bs!1371419 m!6748144))

(assert (=> bs!1371419 m!6748296))

(declare-fun m!6748380 () Bool)

(assert (=> bs!1371419 m!6748380))

(assert (=> bs!1371419 m!6748142))

(assert (=> b!5809628 d!1829503))

(declare-fun d!1829507 () Bool)

(declare-fun e!3566315 () Bool)

(assert (=> d!1829507 e!3566315))

(declare-fun res!2450167 () Bool)

(assert (=> d!1829507 (=> (not res!2450167) (not e!3566315))))

(declare-fun lt!2299904 () List!63782)

(declare-fun noDuplicate!1720 (List!63782) Bool)

(assert (=> d!1829507 (= res!2450167 (noDuplicate!1720 lt!2299904))))

(declare-fun choose!44115 ((InoxSet Context!10422)) List!63782)

(assert (=> d!1829507 (= lt!2299904 (choose!44115 z!1189))))

(assert (=> d!1829507 (= (toList!9611 z!1189) lt!2299904)))

(declare-fun b!5809941 () Bool)

(declare-fun content!11662 (List!63782) (InoxSet Context!10422))

(assert (=> b!5809941 (= e!3566315 (= (content!11662 lt!2299904) z!1189))))

(assert (= (and d!1829507 res!2450167) b!5809941))

(declare-fun m!6748382 () Bool)

(assert (=> d!1829507 m!6748382))

(declare-fun m!6748384 () Bool)

(assert (=> d!1829507 m!6748384))

(declare-fun m!6748386 () Bool)

(assert (=> b!5809941 m!6748386))

(assert (=> b!5809647 d!1829507))

(declare-fun d!1829509 () Bool)

(declare-fun lt!2299907 () Regex!15827)

(assert (=> d!1829509 (validRegex!7563 lt!2299907)))

(assert (=> d!1829509 (= lt!2299907 (generalisedUnion!1690 (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658))))))

(assert (=> d!1829509 (= (unfocusZipper!1569 (Cons!63658 lt!2299848 Nil!63658)) lt!2299907)))

(declare-fun bs!1371420 () Bool)

(assert (= bs!1371420 d!1829509))

(declare-fun m!6748388 () Bool)

(assert (=> bs!1371420 m!6748388))

(declare-fun m!6748390 () Bool)

(assert (=> bs!1371420 m!6748390))

(assert (=> bs!1371420 m!6748390))

(declare-fun m!6748392 () Bool)

(assert (=> bs!1371420 m!6748392))

(assert (=> b!5809636 d!1829509))

(declare-fun bs!1371421 () Bool)

(declare-fun b!5809950 () Bool)

(assert (= bs!1371421 (and b!5809950 d!1829459)))

(declare-fun lambda!317353 () Int)

(assert (=> bs!1371421 (not (= lambda!317353 lambda!317326))))

(declare-fun bs!1371422 () Bool)

(assert (= bs!1371422 (and b!5809950 d!1829503)))

(assert (=> bs!1371422 (not (= lambda!317353 lambda!317352))))

(declare-fun bs!1371423 () Bool)

(assert (= bs!1371423 (and b!5809950 b!5809628)))

(assert (=> bs!1371423 (= lambda!317353 lambda!317308)))

(declare-fun bs!1371424 () Bool)

(assert (= bs!1371424 (and b!5809950 d!1829483)))

(assert (=> bs!1371424 (not (= lambda!317353 lambda!317339))))

(declare-fun bs!1371425 () Bool)

(assert (= bs!1371425 (and b!5809950 b!5809700)))

(assert (=> bs!1371425 (not (= lambda!317353 lambda!317318))))

(assert (=> bs!1371423 (not (= lambda!317353 lambda!317309))))

(assert (=> bs!1371421 (= (= r!7292 (Star!15827 (reg!16156 r!7292))) (= lambda!317353 lambda!317327))))

(declare-fun bs!1371426 () Bool)

(assert (= bs!1371426 (and b!5809950 b!5809703)))

(assert (=> bs!1371426 (= (and (= (reg!16156 r!7292) (reg!16156 lt!2299853)) (= r!7292 lt!2299853)) (= lambda!317353 lambda!317317))))

(assert (=> bs!1371423 (not (= lambda!317353 lambda!317307))))

(assert (=> bs!1371424 (not (= lambda!317353 lambda!317338))))

(assert (=> b!5809950 true))

(assert (=> b!5809950 true))

(declare-fun bs!1371427 () Bool)

(declare-fun b!5809947 () Bool)

(assert (= bs!1371427 (and b!5809947 d!1829459)))

(declare-fun lambda!317354 () Int)

(assert (=> bs!1371427 (not (= lambda!317354 lambda!317326))))

(declare-fun bs!1371428 () Bool)

(assert (= bs!1371428 (and b!5809947 d!1829503)))

(assert (=> bs!1371428 (not (= lambda!317354 lambda!317352))))

(declare-fun bs!1371429 () Bool)

(assert (= bs!1371429 (and b!5809947 b!5809628)))

(assert (=> bs!1371429 (not (= lambda!317354 lambda!317308))))

(declare-fun bs!1371430 () Bool)

(assert (= bs!1371430 (and b!5809947 d!1829483)))

(assert (=> bs!1371430 (= (and (= (regOne!32166 r!7292) (reg!16156 r!7292)) (= (regTwo!32166 r!7292) r!7292)) (= lambda!317354 lambda!317339))))

(declare-fun bs!1371431 () Bool)

(assert (= bs!1371431 (and b!5809947 b!5809950)))

(assert (=> bs!1371431 (not (= lambda!317354 lambda!317353))))

(declare-fun bs!1371432 () Bool)

(assert (= bs!1371432 (and b!5809947 b!5809700)))

(assert (=> bs!1371432 (= (and (= (regOne!32166 r!7292) (regOne!32166 lt!2299853)) (= (regTwo!32166 r!7292) (regTwo!32166 lt!2299853))) (= lambda!317354 lambda!317318))))

(assert (=> bs!1371429 (= (and (= (regOne!32166 r!7292) (reg!16156 r!7292)) (= (regTwo!32166 r!7292) r!7292)) (= lambda!317354 lambda!317309))))

(assert (=> bs!1371427 (not (= lambda!317354 lambda!317327))))

(declare-fun bs!1371433 () Bool)

(assert (= bs!1371433 (and b!5809947 b!5809703)))

(assert (=> bs!1371433 (not (= lambda!317354 lambda!317317))))

(assert (=> bs!1371429 (not (= lambda!317354 lambda!317307))))

(assert (=> bs!1371430 (not (= lambda!317354 lambda!317338))))

(assert (=> b!5809947 true))

(assert (=> b!5809947 true))

(declare-fun b!5809942 () Bool)

(declare-fun e!3566319 () Bool)

(declare-fun e!3566317 () Bool)

(assert (=> b!5809942 (= e!3566319 e!3566317)))

(declare-fun c!1029405 () Bool)

(assert (=> b!5809942 (= c!1029405 ((_ is Star!15827) r!7292))))

(declare-fun bm!453589 () Bool)

(declare-fun call!453594 () Bool)

(assert (=> bm!453589 (= call!453594 (Exists!2927 (ite c!1029405 lambda!317353 lambda!317354)))))

(declare-fun b!5809943 () Bool)

(declare-fun res!2450168 () Bool)

(declare-fun e!3566320 () Bool)

(assert (=> b!5809943 (=> res!2450168 e!3566320)))

(declare-fun call!453595 () Bool)

(assert (=> b!5809943 (= res!2450168 call!453595)))

(assert (=> b!5809943 (= e!3566317 e!3566320)))

(declare-fun b!5809944 () Bool)

(declare-fun e!3566318 () Bool)

(assert (=> b!5809944 (= e!3566318 call!453595)))

(declare-fun b!5809945 () Bool)

(declare-fun e!3566321 () Bool)

(assert (=> b!5809945 (= e!3566321 (= s!2326 (Cons!63657 (c!1029329 r!7292) Nil!63657)))))

(declare-fun b!5809946 () Bool)

(declare-fun c!1029408 () Bool)

(assert (=> b!5809946 (= c!1029408 ((_ is ElementMatch!15827) r!7292))))

(declare-fun e!3566322 () Bool)

(assert (=> b!5809946 (= e!3566322 e!3566321)))

(declare-fun bm!453590 () Bool)

(assert (=> bm!453590 (= call!453595 (isEmpty!35571 s!2326))))

(declare-fun d!1829511 () Bool)

(declare-fun c!1029407 () Bool)

(assert (=> d!1829511 (= c!1029407 ((_ is EmptyExpr!15827) r!7292))))

(assert (=> d!1829511 (= (matchRSpec!2930 r!7292 s!2326) e!3566318)))

(assert (=> b!5809947 (= e!3566317 call!453594)))

(declare-fun b!5809948 () Bool)

(declare-fun c!1029406 () Bool)

(assert (=> b!5809948 (= c!1029406 ((_ is Union!15827) r!7292))))

(assert (=> b!5809948 (= e!3566321 e!3566319)))

(declare-fun b!5809949 () Bool)

(assert (=> b!5809949 (= e!3566318 e!3566322)))

(declare-fun res!2450169 () Bool)

(assert (=> b!5809949 (= res!2450169 (not ((_ is EmptyLang!15827) r!7292)))))

(assert (=> b!5809949 (=> (not res!2450169) (not e!3566322))))

(assert (=> b!5809950 (= e!3566320 call!453594)))

(declare-fun b!5809951 () Bool)

(declare-fun e!3566316 () Bool)

(assert (=> b!5809951 (= e!3566319 e!3566316)))

(declare-fun res!2450170 () Bool)

(assert (=> b!5809951 (= res!2450170 (matchRSpec!2930 (regOne!32167 r!7292) s!2326))))

(assert (=> b!5809951 (=> res!2450170 e!3566316)))

(declare-fun b!5809952 () Bool)

(assert (=> b!5809952 (= e!3566316 (matchRSpec!2930 (regTwo!32167 r!7292) s!2326))))

(assert (= (and d!1829511 c!1029407) b!5809944))

(assert (= (and d!1829511 (not c!1029407)) b!5809949))

(assert (= (and b!5809949 res!2450169) b!5809946))

(assert (= (and b!5809946 c!1029408) b!5809945))

(assert (= (and b!5809946 (not c!1029408)) b!5809948))

(assert (= (and b!5809948 c!1029406) b!5809951))

(assert (= (and b!5809948 (not c!1029406)) b!5809942))

(assert (= (and b!5809951 (not res!2450170)) b!5809952))

(assert (= (and b!5809942 c!1029405) b!5809943))

(assert (= (and b!5809942 (not c!1029405)) b!5809947))

(assert (= (and b!5809943 (not res!2450168)) b!5809950))

(assert (= (or b!5809950 b!5809947) bm!453589))

(assert (= (or b!5809944 b!5809943) bm!453590))

(declare-fun m!6748404 () Bool)

(assert (=> bm!453589 m!6748404))

(assert (=> bm!453590 m!6748148))

(declare-fun m!6748406 () Bool)

(assert (=> b!5809951 m!6748406))

(declare-fun m!6748408 () Bool)

(assert (=> b!5809952 m!6748408))

(assert (=> b!5809646 d!1829511))

(declare-fun d!1829515 () Bool)

(declare-fun e!3566330 () Bool)

(assert (=> d!1829515 e!3566330))

(declare-fun c!1029412 () Bool)

(assert (=> d!1829515 (= c!1029412 ((_ is EmptyExpr!15827) r!7292))))

(declare-fun lt!2299909 () Bool)

(declare-fun e!3566335 () Bool)

(assert (=> d!1829515 (= lt!2299909 e!3566335)))

(declare-fun c!1029414 () Bool)

(assert (=> d!1829515 (= c!1029414 (isEmpty!35571 s!2326))))

(assert (=> d!1829515 (validRegex!7563 r!7292)))

(assert (=> d!1829515 (= (matchR!8012 r!7292 s!2326) lt!2299909)))

(declare-fun bm!453592 () Bool)

(declare-fun call!453597 () Bool)

(assert (=> bm!453592 (= call!453597 (isEmpty!35571 s!2326))))

(declare-fun b!5809967 () Bool)

(declare-fun res!2450184 () Bool)

(declare-fun e!3566336 () Bool)

(assert (=> b!5809967 (=> res!2450184 e!3566336)))

(declare-fun e!3566332 () Bool)

(assert (=> b!5809967 (= res!2450184 e!3566332)))

(declare-fun res!2450183 () Bool)

(assert (=> b!5809967 (=> (not res!2450183) (not e!3566332))))

(assert (=> b!5809967 (= res!2450183 lt!2299909)))

(declare-fun b!5809968 () Bool)

(assert (=> b!5809968 (= e!3566332 (= (head!12260 s!2326) (c!1029329 r!7292)))))

(declare-fun b!5809969 () Bool)

(declare-fun e!3566334 () Bool)

(assert (=> b!5809969 (= e!3566330 e!3566334)))

(declare-fun c!1029413 () Bool)

(assert (=> b!5809969 (= c!1029413 ((_ is EmptyLang!15827) r!7292))))

(declare-fun b!5809970 () Bool)

(declare-fun res!2450181 () Bool)

(declare-fun e!3566331 () Bool)

(assert (=> b!5809970 (=> res!2450181 e!3566331)))

(assert (=> b!5809970 (= res!2450181 (not (isEmpty!35571 (tail!11355 s!2326))))))

(declare-fun b!5809971 () Bool)

(assert (=> b!5809971 (= e!3566334 (not lt!2299909))))

(declare-fun b!5809972 () Bool)

(declare-fun e!3566333 () Bool)

(assert (=> b!5809972 (= e!3566333 e!3566331)))

(declare-fun res!2450186 () Bool)

(assert (=> b!5809972 (=> res!2450186 e!3566331)))

(assert (=> b!5809972 (= res!2450186 call!453597)))

(declare-fun b!5809973 () Bool)

(assert (=> b!5809973 (= e!3566335 (nullable!5850 r!7292))))

(declare-fun b!5809974 () Bool)

(declare-fun res!2450179 () Bool)

(assert (=> b!5809974 (=> (not res!2450179) (not e!3566332))))

(assert (=> b!5809974 (= res!2450179 (not call!453597))))

(declare-fun b!5809975 () Bool)

(declare-fun res!2450180 () Bool)

(assert (=> b!5809975 (=> res!2450180 e!3566336)))

(assert (=> b!5809975 (= res!2450180 (not ((_ is ElementMatch!15827) r!7292)))))

(assert (=> b!5809975 (= e!3566334 e!3566336)))

(declare-fun b!5809976 () Bool)

(assert (=> b!5809976 (= e!3566335 (matchR!8012 (derivativeStep!4593 r!7292 (head!12260 s!2326)) (tail!11355 s!2326)))))

(declare-fun b!5809977 () Bool)

(assert (=> b!5809977 (= e!3566331 (not (= (head!12260 s!2326) (c!1029329 r!7292))))))

(declare-fun b!5809978 () Bool)

(declare-fun res!2450185 () Bool)

(assert (=> b!5809978 (=> (not res!2450185) (not e!3566332))))

(assert (=> b!5809978 (= res!2450185 (isEmpty!35571 (tail!11355 s!2326)))))

(declare-fun b!5809979 () Bool)

(assert (=> b!5809979 (= e!3566330 (= lt!2299909 call!453597))))

(declare-fun b!5809980 () Bool)

(assert (=> b!5809980 (= e!3566336 e!3566333)))

(declare-fun res!2450182 () Bool)

(assert (=> b!5809980 (=> (not res!2450182) (not e!3566333))))

(assert (=> b!5809980 (= res!2450182 (not lt!2299909))))

(assert (= (and d!1829515 c!1029414) b!5809973))

(assert (= (and d!1829515 (not c!1029414)) b!5809976))

(assert (= (and d!1829515 c!1029412) b!5809979))

(assert (= (and d!1829515 (not c!1029412)) b!5809969))

(assert (= (and b!5809969 c!1029413) b!5809971))

(assert (= (and b!5809969 (not c!1029413)) b!5809975))

(assert (= (and b!5809975 (not res!2450180)) b!5809967))

(assert (= (and b!5809967 res!2450183) b!5809974))

(assert (= (and b!5809974 res!2450179) b!5809978))

(assert (= (and b!5809978 res!2450185) b!5809968))

(assert (= (and b!5809967 (not res!2450184)) b!5809980))

(assert (= (and b!5809980 res!2450182) b!5809972))

(assert (= (and b!5809972 (not res!2450186)) b!5809970))

(assert (= (and b!5809970 (not res!2450181)) b!5809977))

(assert (= (or b!5809979 b!5809974 b!5809972) bm!453592))

(assert (=> d!1829515 m!6748148))

(assert (=> d!1829515 m!6748206))

(assert (=> b!5809976 m!6748228))

(assert (=> b!5809976 m!6748228))

(declare-fun m!6748410 () Bool)

(assert (=> b!5809976 m!6748410))

(assert (=> b!5809976 m!6748232))

(assert (=> b!5809976 m!6748410))

(assert (=> b!5809976 m!6748232))

(declare-fun m!6748412 () Bool)

(assert (=> b!5809976 m!6748412))

(declare-fun m!6748414 () Bool)

(assert (=> b!5809973 m!6748414))

(assert (=> b!5809978 m!6748232))

(assert (=> b!5809978 m!6748232))

(assert (=> b!5809978 m!6748238))

(assert (=> b!5809977 m!6748228))

(assert (=> bm!453592 m!6748148))

(assert (=> b!5809968 m!6748228))

(assert (=> b!5809970 m!6748232))

(assert (=> b!5809970 m!6748232))

(assert (=> b!5809970 m!6748238))

(assert (=> b!5809646 d!1829515))

(declare-fun d!1829517 () Bool)

(assert (=> d!1829517 (= (matchR!8012 r!7292 s!2326) (matchRSpec!2930 r!7292 s!2326))))

(declare-fun lt!2299912 () Unit!156914)

(assert (=> d!1829517 (= lt!2299912 (choose!44107 r!7292 s!2326))))

(assert (=> d!1829517 (validRegex!7563 r!7292)))

(assert (=> d!1829517 (= (mainMatchTheorem!2930 r!7292 s!2326) lt!2299912)))

(declare-fun bs!1371434 () Bool)

(assert (= bs!1371434 d!1829517))

(assert (=> bs!1371434 m!6748200))

(assert (=> bs!1371434 m!6748198))

(declare-fun m!6748416 () Bool)

(assert (=> bs!1371434 m!6748416))

(assert (=> bs!1371434 m!6748206))

(assert (=> b!5809646 d!1829517))

(declare-fun bs!1371451 () Bool)

(declare-fun d!1829519 () Bool)

(assert (= bs!1371451 (and d!1829519 b!5809629)))

(declare-fun lambda!317360 () Int)

(assert (=> bs!1371451 (= lambda!317360 lambda!317312)))

(declare-fun b!5810026 () Bool)

(declare-fun e!3566363 () Bool)

(declare-fun lt!2299922 () Regex!15827)

(declare-fun isConcat!821 (Regex!15827) Bool)

(assert (=> b!5810026 (= e!3566363 (isConcat!821 lt!2299922))))

(declare-fun e!3566367 () Bool)

(assert (=> d!1829519 e!3566367))

(declare-fun res!2450202 () Bool)

(assert (=> d!1829519 (=> (not res!2450202) (not e!3566367))))

(assert (=> d!1829519 (= res!2450202 (validRegex!7563 lt!2299922))))

(declare-fun e!3566364 () Regex!15827)

(assert (=> d!1829519 (= lt!2299922 e!3566364)))

(declare-fun c!1029433 () Bool)

(declare-fun e!3566368 () Bool)

(assert (=> d!1829519 (= c!1029433 e!3566368)))

(declare-fun res!2450203 () Bool)

(assert (=> d!1829519 (=> (not res!2450203) (not e!3566368))))

(assert (=> d!1829519 (= res!2450203 ((_ is Cons!63656) (exprs!5711 (h!70106 zl!343))))))

(declare-fun forall!14933 (List!63780 Int) Bool)

(assert (=> d!1829519 (forall!14933 (exprs!5711 (h!70106 zl!343)) lambda!317360)))

(assert (=> d!1829519 (= (generalisedConcat!1442 (exprs!5711 (h!70106 zl!343))) lt!2299922)))

(declare-fun b!5810027 () Bool)

(declare-fun e!3566365 () Regex!15827)

(assert (=> b!5810027 (= e!3566365 (Concat!24672 (h!70104 (exprs!5711 (h!70106 zl!343))) (generalisedConcat!1442 (t!377133 (exprs!5711 (h!70106 zl!343))))))))

(declare-fun b!5810028 () Bool)

(assert (=> b!5810028 (= e!3566364 (h!70104 (exprs!5711 (h!70106 zl!343))))))

(declare-fun b!5810029 () Bool)

(declare-fun head!12263 (List!63780) Regex!15827)

(assert (=> b!5810029 (= e!3566363 (= lt!2299922 (head!12263 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5810030 () Bool)

(declare-fun e!3566366 () Bool)

(declare-fun isEmptyExpr!1298 (Regex!15827) Bool)

(assert (=> b!5810030 (= e!3566366 (isEmptyExpr!1298 lt!2299922))))

(declare-fun b!5810031 () Bool)

(assert (=> b!5810031 (= e!3566364 e!3566365)))

(declare-fun c!1029430 () Bool)

(assert (=> b!5810031 (= c!1029430 ((_ is Cons!63656) (exprs!5711 (h!70106 zl!343))))))

(declare-fun b!5810032 () Bool)

(assert (=> b!5810032 (= e!3566367 e!3566366)))

(declare-fun c!1029432 () Bool)

(declare-fun isEmpty!35575 (List!63780) Bool)

(assert (=> b!5810032 (= c!1029432 (isEmpty!35575 (exprs!5711 (h!70106 zl!343))))))

(declare-fun b!5810033 () Bool)

(assert (=> b!5810033 (= e!3566365 EmptyExpr!15827)))

(declare-fun b!5810034 () Bool)

(assert (=> b!5810034 (= e!3566366 e!3566363)))

(declare-fun c!1029431 () Bool)

(declare-fun tail!11358 (List!63780) List!63780)

(assert (=> b!5810034 (= c!1029431 (isEmpty!35575 (tail!11358 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5810035 () Bool)

(assert (=> b!5810035 (= e!3566368 (isEmpty!35575 (t!377133 (exprs!5711 (h!70106 zl!343)))))))

(assert (= (and d!1829519 res!2450203) b!5810035))

(assert (= (and d!1829519 c!1029433) b!5810028))

(assert (= (and d!1829519 (not c!1029433)) b!5810031))

(assert (= (and b!5810031 c!1029430) b!5810027))

(assert (= (and b!5810031 (not c!1029430)) b!5810033))

(assert (= (and d!1829519 res!2450202) b!5810032))

(assert (= (and b!5810032 c!1029432) b!5810030))

(assert (= (and b!5810032 (not c!1029432)) b!5810034))

(assert (= (and b!5810034 c!1029431) b!5810029))

(assert (= (and b!5810034 (not c!1029431)) b!5810026))

(declare-fun m!6748448 () Bool)

(assert (=> b!5810032 m!6748448))

(declare-fun m!6748450 () Bool)

(assert (=> b!5810035 m!6748450))

(declare-fun m!6748452 () Bool)

(assert (=> b!5810027 m!6748452))

(declare-fun m!6748454 () Bool)

(assert (=> b!5810029 m!6748454))

(declare-fun m!6748456 () Bool)

(assert (=> b!5810030 m!6748456))

(declare-fun m!6748458 () Bool)

(assert (=> b!5810034 m!6748458))

(assert (=> b!5810034 m!6748458))

(declare-fun m!6748460 () Bool)

(assert (=> b!5810034 m!6748460))

(declare-fun m!6748462 () Bool)

(assert (=> b!5810026 m!6748462))

(declare-fun m!6748464 () Bool)

(assert (=> d!1829519 m!6748464))

(declare-fun m!6748466 () Bool)

(assert (=> d!1829519 m!6748466))

(assert (=> b!5809634 d!1829519))

(declare-fun d!1829537 () Bool)

(declare-fun c!1029440 () Bool)

(assert (=> d!1829537 (= c!1029440 (isEmpty!35571 s!2326))))

(declare-fun e!3566385 () Bool)

(assert (=> d!1829537 (= (matchZipper!1955 lt!2299862 s!2326) e!3566385)))

(declare-fun b!5810058 () Bool)

(declare-fun nullableZipper!1734 ((InoxSet Context!10422)) Bool)

(assert (=> b!5810058 (= e!3566385 (nullableZipper!1734 lt!2299862))))

(declare-fun b!5810059 () Bool)

(assert (=> b!5810059 (= e!3566385 (matchZipper!1955 (derivationStepZipper!1896 lt!2299862 (head!12260 s!2326)) (tail!11355 s!2326)))))

(assert (= (and d!1829537 c!1029440) b!5810058))

(assert (= (and d!1829537 (not c!1029440)) b!5810059))

(assert (=> d!1829537 m!6748148))

(declare-fun m!6748468 () Bool)

(assert (=> b!5810058 m!6748468))

(assert (=> b!5810059 m!6748228))

(assert (=> b!5810059 m!6748228))

(declare-fun m!6748470 () Bool)

(assert (=> b!5810059 m!6748470))

(assert (=> b!5810059 m!6748232))

(assert (=> b!5810059 m!6748470))

(assert (=> b!5810059 m!6748232))

(declare-fun m!6748472 () Bool)

(assert (=> b!5810059 m!6748472))

(assert (=> b!5809625 d!1829537))

(declare-fun d!1829539 () Bool)

(declare-fun c!1029441 () Bool)

(assert (=> d!1829539 (= c!1029441 (isEmpty!35571 (t!377134 s!2326)))))

(declare-fun e!3566386 () Bool)

(assert (=> d!1829539 (= (matchZipper!1955 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326)) (t!377134 s!2326)) e!3566386)))

(declare-fun b!5810060 () Bool)

(assert (=> b!5810060 (= e!3566386 (nullableZipper!1734 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326))))))

(declare-fun b!5810061 () Bool)

(assert (=> b!5810061 (= e!3566386 (matchZipper!1955 (derivationStepZipper!1896 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326)) (head!12260 (t!377134 s!2326))) (tail!11355 (t!377134 s!2326))))))

(assert (= (and d!1829539 c!1029441) b!5810060))

(assert (= (and d!1829539 (not c!1029441)) b!5810061))

(declare-fun m!6748474 () Bool)

(assert (=> d!1829539 m!6748474))

(assert (=> b!5810060 m!6748194))

(declare-fun m!6748476 () Bool)

(assert (=> b!5810060 m!6748476))

(declare-fun m!6748478 () Bool)

(assert (=> b!5810061 m!6748478))

(assert (=> b!5810061 m!6748194))

(assert (=> b!5810061 m!6748478))

(declare-fun m!6748480 () Bool)

(assert (=> b!5810061 m!6748480))

(declare-fun m!6748482 () Bool)

(assert (=> b!5810061 m!6748482))

(assert (=> b!5810061 m!6748480))

(assert (=> b!5810061 m!6748482))

(declare-fun m!6748484 () Bool)

(assert (=> b!5810061 m!6748484))

(assert (=> b!5809625 d!1829539))

(declare-fun bs!1371453 () Bool)

(declare-fun d!1829541 () Bool)

(assert (= bs!1371453 (and d!1829541 b!5809649)))

(declare-fun lambda!317363 () Int)

(assert (=> bs!1371453 (= lambda!317363 lambda!317310)))

(assert (=> d!1829541 true))

(assert (=> d!1829541 (= (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326)) (flatMap!1434 lt!2299862 lambda!317363))))

(declare-fun bs!1371454 () Bool)

(assert (= bs!1371454 d!1829541))

(declare-fun m!6748494 () Bool)

(assert (=> bs!1371454 m!6748494))

(assert (=> b!5809625 d!1829541))

(declare-fun d!1829547 () Bool)

(declare-fun lt!2299924 () Regex!15827)

(assert (=> d!1829547 (validRegex!7563 lt!2299924)))

(assert (=> d!1829547 (= lt!2299924 (generalisedUnion!1690 (unfocusZipperList!1255 zl!343)))))

(assert (=> d!1829547 (= (unfocusZipper!1569 zl!343) lt!2299924)))

(declare-fun bs!1371455 () Bool)

(assert (= bs!1371455 d!1829547))

(declare-fun m!6748496 () Bool)

(assert (=> bs!1371455 m!6748496))

(assert (=> bs!1371455 m!6748130))

(assert (=> bs!1371455 m!6748130))

(assert (=> bs!1371455 m!6748132))

(assert (=> b!5809654 d!1829547))

(declare-fun d!1829549 () Bool)

(declare-fun lt!2299925 () Regex!15827)

(assert (=> d!1829549 (validRegex!7563 lt!2299925)))

(assert (=> d!1829549 (= lt!2299925 (generalisedUnion!1690 (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658))))))

(assert (=> d!1829549 (= (unfocusZipper!1569 (Cons!63658 lt!2299834 Nil!63658)) lt!2299925)))

(declare-fun bs!1371456 () Bool)

(assert (= bs!1371456 d!1829549))

(declare-fun m!6748498 () Bool)

(assert (=> bs!1371456 m!6748498))

(declare-fun m!6748500 () Bool)

(assert (=> bs!1371456 m!6748500))

(assert (=> bs!1371456 m!6748500))

(declare-fun m!6748502 () Bool)

(assert (=> bs!1371456 m!6748502))

(assert (=> b!5809643 d!1829549))

(declare-fun b!5810097 () Bool)

(declare-fun e!3566406 () (InoxSet Context!10422))

(declare-fun call!453627 () (InoxSet Context!10422))

(assert (=> b!5810097 (= e!3566406 call!453627)))

(declare-fun bm!453617 () Bool)

(declare-fun call!453625 () (InoxSet Context!10422))

(declare-fun call!453623 () (InoxSet Context!10422))

(assert (=> bm!453617 (= call!453625 call!453623)))

(declare-fun b!5810098 () Bool)

(declare-fun c!1029459 () Bool)

(assert (=> b!5810098 (= c!1029459 ((_ is Star!15827) (reg!16156 r!7292)))))

(declare-fun e!3566407 () (InoxSet Context!10422))

(assert (=> b!5810098 (= e!3566406 e!3566407)))

(declare-fun b!5810099 () Bool)

(declare-fun e!3566410 () Bool)

(assert (=> b!5810099 (= e!3566410 (nullable!5850 (regOne!32166 (reg!16156 r!7292))))))

(declare-fun c!1029457 () Bool)

(declare-fun bm!453618 () Bool)

(declare-fun c!1029461 () Bool)

(declare-fun call!453622 () List!63780)

(declare-fun $colon$colon!1805 (List!63780 Regex!15827) List!63780)

(assert (=> bm!453618 (= call!453622 ($colon$colon!1805 (exprs!5711 lt!2299852) (ite (or c!1029457 c!1029461) (regTwo!32166 (reg!16156 r!7292)) (reg!16156 r!7292))))))

(declare-fun bm!453619 () Bool)

(declare-fun call!453624 () List!63780)

(assert (=> bm!453619 (= call!453624 call!453622)))

(declare-fun c!1029458 () Bool)

(declare-fun bm!453620 () Bool)

(assert (=> bm!453620 (= call!453623 (derivationStepZipperDown!1165 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292))))) (ite (or c!1029458 c!1029457) lt!2299852 (Context!10423 call!453624)) (h!70105 s!2326)))))

(declare-fun b!5810100 () Bool)

(assert (=> b!5810100 (= e!3566407 call!453627)))

(declare-fun b!5810102 () Bool)

(assert (=> b!5810102 (= e!3566407 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810105 () Bool)

(declare-fun e!3566408 () (InoxSet Context!10422))

(declare-fun call!453626 () (InoxSet Context!10422))

(assert (=> b!5810105 (= e!3566408 ((_ map or) call!453623 call!453626))))

(declare-fun bm!453621 () Bool)

(assert (=> bm!453621 (= call!453626 (derivationStepZipperDown!1165 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292))) (ite c!1029458 lt!2299852 (Context!10423 call!453622)) (h!70105 s!2326)))))

(declare-fun bm!453622 () Bool)

(assert (=> bm!453622 (= call!453627 call!453625)))

(declare-fun b!5810106 () Bool)

(declare-fun e!3566409 () (InoxSet Context!10422))

(assert (=> b!5810106 (= e!3566409 e!3566406)))

(assert (=> b!5810106 (= c!1029461 ((_ is Concat!24672) (reg!16156 r!7292)))))

(declare-fun b!5810101 () Bool)

(declare-fun e!3566411 () (InoxSet Context!10422))

(assert (=> b!5810101 (= e!3566411 (store ((as const (Array Context!10422 Bool)) false) lt!2299852 true))))

(declare-fun d!1829551 () Bool)

(declare-fun c!1029460 () Bool)

(assert (=> d!1829551 (= c!1029460 (and ((_ is ElementMatch!15827) (reg!16156 r!7292)) (= (c!1029329 (reg!16156 r!7292)) (h!70105 s!2326))))))

(assert (=> d!1829551 (= (derivationStepZipperDown!1165 (reg!16156 r!7292) lt!2299852 (h!70105 s!2326)) e!3566411)))

(declare-fun b!5810107 () Bool)

(assert (=> b!5810107 (= e!3566411 e!3566408)))

(assert (=> b!5810107 (= c!1029458 ((_ is Union!15827) (reg!16156 r!7292)))))

(declare-fun b!5810108 () Bool)

(assert (=> b!5810108 (= c!1029457 e!3566410)))

(declare-fun res!2450221 () Bool)

(assert (=> b!5810108 (=> (not res!2450221) (not e!3566410))))

(assert (=> b!5810108 (= res!2450221 ((_ is Concat!24672) (reg!16156 r!7292)))))

(assert (=> b!5810108 (= e!3566408 e!3566409)))

(declare-fun b!5810109 () Bool)

(assert (=> b!5810109 (= e!3566409 ((_ map or) call!453626 call!453625))))

(assert (= (and d!1829551 c!1029460) b!5810101))

(assert (= (and d!1829551 (not c!1029460)) b!5810107))

(assert (= (and b!5810107 c!1029458) b!5810105))

(assert (= (and b!5810107 (not c!1029458)) b!5810108))

(assert (= (and b!5810108 res!2450221) b!5810099))

(assert (= (and b!5810108 c!1029457) b!5810109))

(assert (= (and b!5810108 (not c!1029457)) b!5810106))

(assert (= (and b!5810106 c!1029461) b!5810097))

(assert (= (and b!5810106 (not c!1029461)) b!5810098))

(assert (= (and b!5810098 c!1029459) b!5810100))

(assert (= (and b!5810098 (not c!1029459)) b!5810102))

(assert (= (or b!5810097 b!5810100) bm!453619))

(assert (= (or b!5810097 b!5810100) bm!453622))

(assert (= (or b!5810109 bm!453619) bm!453618))

(assert (= (or b!5810109 bm!453622) bm!453617))

(assert (= (or b!5810105 b!5810109) bm!453621))

(assert (= (or b!5810105 bm!453617) bm!453620))

(declare-fun m!6748518 () Bool)

(assert (=> bm!453620 m!6748518))

(declare-fun m!6748520 () Bool)

(assert (=> bm!453618 m!6748520))

(declare-fun m!6748522 () Bool)

(assert (=> bm!453621 m!6748522))

(assert (=> b!5810101 m!6748188))

(declare-fun m!6748524 () Bool)

(assert (=> b!5810099 m!6748524))

(assert (=> b!5809632 d!1829551))

(declare-fun d!1829559 () Bool)

(declare-fun choose!44117 ((InoxSet Context!10422) Int) (InoxSet Context!10422))

(assert (=> d!1829559 (= (flatMap!1434 lt!2299862 lambda!317310) (choose!44117 lt!2299862 lambda!317310))))

(declare-fun bs!1371461 () Bool)

(assert (= bs!1371461 d!1829559))

(declare-fun m!6748526 () Bool)

(assert (=> bs!1371461 m!6748526))

(assert (=> b!5809632 d!1829559))

(declare-fun d!1829561 () Bool)

(declare-fun c!1029469 () Bool)

(declare-fun e!3566425 () Bool)

(assert (=> d!1829561 (= c!1029469 e!3566425)))

(declare-fun res!2450230 () Bool)

(assert (=> d!1829561 (=> (not res!2450230) (not e!3566425))))

(assert (=> d!1829561 (= res!2450230 ((_ is Cons!63656) (exprs!5711 lt!2299848)))))

(declare-fun e!3566426 () (InoxSet Context!10422))

(assert (=> d!1829561 (= (derivationStepZipperUp!1091 lt!2299848 (h!70105 s!2326)) e!3566426)))

(declare-fun b!5810130 () Bool)

(declare-fun e!3566424 () (InoxSet Context!10422))

(declare-fun call!453630 () (InoxSet Context!10422))

(assert (=> b!5810130 (= e!3566424 call!453630)))

(declare-fun b!5810131 () Bool)

(assert (=> b!5810131 (= e!3566426 e!3566424)))

(declare-fun c!1029470 () Bool)

(assert (=> b!5810131 (= c!1029470 ((_ is Cons!63656) (exprs!5711 lt!2299848)))))

(declare-fun bm!453625 () Bool)

(assert (=> bm!453625 (= call!453630 (derivationStepZipperDown!1165 (h!70104 (exprs!5711 lt!2299848)) (Context!10423 (t!377133 (exprs!5711 lt!2299848))) (h!70105 s!2326)))))

(declare-fun b!5810132 () Bool)

(assert (=> b!5810132 (= e!3566424 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810133 () Bool)

(assert (=> b!5810133 (= e!3566425 (nullable!5850 (h!70104 (exprs!5711 lt!2299848))))))

(declare-fun b!5810134 () Bool)

(assert (=> b!5810134 (= e!3566426 ((_ map or) call!453630 (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 lt!2299848))) (h!70105 s!2326))))))

(assert (= (and d!1829561 res!2450230) b!5810133))

(assert (= (and d!1829561 c!1029469) b!5810134))

(assert (= (and d!1829561 (not c!1029469)) b!5810131))

(assert (= (and b!5810131 c!1029470) b!5810130))

(assert (= (and b!5810131 (not c!1029470)) b!5810132))

(assert (= (or b!5810134 b!5810130) bm!453625))

(declare-fun m!6748546 () Bool)

(assert (=> bm!453625 m!6748546))

(declare-fun m!6748548 () Bool)

(assert (=> b!5810133 m!6748548))

(declare-fun m!6748550 () Bool)

(assert (=> b!5810134 m!6748550))

(assert (=> b!5809632 d!1829561))

(declare-fun d!1829569 () Bool)

(declare-fun dynLambda!24920 (Int Context!10422) (InoxSet Context!10422))

(assert (=> d!1829569 (= (flatMap!1434 lt!2299862 lambda!317310) (dynLambda!24920 lambda!317310 lt!2299848))))

(declare-fun lt!2299939 () Unit!156914)

(declare-fun choose!44118 ((InoxSet Context!10422) Context!10422 Int) Unit!156914)

(assert (=> d!1829569 (= lt!2299939 (choose!44118 lt!2299862 lt!2299848 lambda!317310))))

(assert (=> d!1829569 (= lt!2299862 (store ((as const (Array Context!10422 Bool)) false) lt!2299848 true))))

(assert (=> d!1829569 (= (lemmaFlatMapOnSingletonSet!966 lt!2299862 lt!2299848 lambda!317310) lt!2299939)))

(declare-fun b_lambda!218987 () Bool)

(assert (=> (not b_lambda!218987) (not d!1829569)))

(declare-fun bs!1371464 () Bool)

(assert (= bs!1371464 d!1829569))

(assert (=> bs!1371464 m!6748160))

(declare-fun m!6748552 () Bool)

(assert (=> bs!1371464 m!6748552))

(declare-fun m!6748554 () Bool)

(assert (=> bs!1371464 m!6748554))

(assert (=> bs!1371464 m!6748158))

(assert (=> b!5809632 d!1829569))

(declare-fun d!1829571 () Bool)

(declare-fun lt!2299942 () Regex!15827)

(assert (=> d!1829571 (validRegex!7563 lt!2299942)))

(assert (=> d!1829571 (= lt!2299942 (generalisedUnion!1690 (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658))))))

(assert (=> d!1829571 (= (unfocusZipper!1569 (Cons!63658 lt!2299852 Nil!63658)) lt!2299942)))

(declare-fun bs!1371465 () Bool)

(assert (= bs!1371465 d!1829571))

(declare-fun m!6748556 () Bool)

(assert (=> bs!1371465 m!6748556))

(declare-fun m!6748558 () Bool)

(assert (=> bs!1371465 m!6748558))

(assert (=> bs!1371465 m!6748558))

(declare-fun m!6748560 () Bool)

(assert (=> bs!1371465 m!6748560))

(assert (=> b!5809653 d!1829571))

(declare-fun bm!453632 () Bool)

(declare-fun c!1029476 () Bool)

(declare-fun c!1029475 () Bool)

(declare-fun call!453638 () Bool)

(assert (=> bm!453632 (= call!453638 (validRegex!7563 (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292)))))))

(declare-fun b!5810163 () Bool)

(declare-fun e!3566447 () Bool)

(declare-fun e!3566445 () Bool)

(assert (=> b!5810163 (= e!3566447 e!3566445)))

(declare-fun res!2450254 () Bool)

(assert (=> b!5810163 (= res!2450254 (not (nullable!5850 (reg!16156 r!7292))))))

(assert (=> b!5810163 (=> (not res!2450254) (not e!3566445))))

(declare-fun b!5810164 () Bool)

(declare-fun res!2450252 () Bool)

(declare-fun e!3566446 () Bool)

(assert (=> b!5810164 (=> res!2450252 e!3566446)))

(assert (=> b!5810164 (= res!2450252 (not ((_ is Concat!24672) r!7292)))))

(declare-fun e!3566448 () Bool)

(assert (=> b!5810164 (= e!3566448 e!3566446)))

(declare-fun bm!453633 () Bool)

(declare-fun call!453637 () Bool)

(assert (=> bm!453633 (= call!453637 call!453638)))

(declare-fun b!5810165 () Bool)

(declare-fun e!3566449 () Bool)

(assert (=> b!5810165 (= e!3566449 call!453637)))

(declare-fun b!5810166 () Bool)

(assert (=> b!5810166 (= e!3566446 e!3566449)))

(declare-fun res!2450255 () Bool)

(assert (=> b!5810166 (=> (not res!2450255) (not e!3566449))))

(declare-fun call!453639 () Bool)

(assert (=> b!5810166 (= res!2450255 call!453639)))

(declare-fun bm!453634 () Bool)

(assert (=> bm!453634 (= call!453639 (validRegex!7563 (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292))))))

(declare-fun d!1829573 () Bool)

(declare-fun res!2450251 () Bool)

(declare-fun e!3566450 () Bool)

(assert (=> d!1829573 (=> res!2450251 e!3566450)))

(assert (=> d!1829573 (= res!2450251 ((_ is ElementMatch!15827) r!7292))))

(assert (=> d!1829573 (= (validRegex!7563 r!7292) e!3566450)))

(declare-fun b!5810167 () Bool)

(declare-fun e!3566451 () Bool)

(assert (=> b!5810167 (= e!3566451 call!453637)))

(declare-fun b!5810168 () Bool)

(assert (=> b!5810168 (= e!3566445 call!453638)))

(declare-fun b!5810169 () Bool)

(assert (=> b!5810169 (= e!3566447 e!3566448)))

(assert (=> b!5810169 (= c!1029476 ((_ is Union!15827) r!7292))))

(declare-fun b!5810170 () Bool)

(declare-fun res!2450253 () Bool)

(assert (=> b!5810170 (=> (not res!2450253) (not e!3566451))))

(assert (=> b!5810170 (= res!2450253 call!453639)))

(assert (=> b!5810170 (= e!3566448 e!3566451)))

(declare-fun b!5810171 () Bool)

(assert (=> b!5810171 (= e!3566450 e!3566447)))

(assert (=> b!5810171 (= c!1029475 ((_ is Star!15827) r!7292))))

(assert (= (and d!1829573 (not res!2450251)) b!5810171))

(assert (= (and b!5810171 c!1029475) b!5810163))

(assert (= (and b!5810171 (not c!1029475)) b!5810169))

(assert (= (and b!5810163 res!2450254) b!5810168))

(assert (= (and b!5810169 c!1029476) b!5810170))

(assert (= (and b!5810169 (not c!1029476)) b!5810164))

(assert (= (and b!5810170 res!2450253) b!5810167))

(assert (= (and b!5810164 (not res!2450252)) b!5810166))

(assert (= (and b!5810166 res!2450255) b!5810165))

(assert (= (or b!5810167 b!5810165) bm!453633))

(assert (= (or b!5810170 b!5810166) bm!453634))

(assert (= (or b!5810168 bm!453633) bm!453632))

(declare-fun m!6748562 () Bool)

(assert (=> bm!453632 m!6748562))

(declare-fun m!6748564 () Bool)

(assert (=> b!5810163 m!6748564))

(declare-fun m!6748566 () Bool)

(assert (=> bm!453634 m!6748566))

(assert (=> start!595264 d!1829573))

(declare-fun bs!1371472 () Bool)

(declare-fun d!1829575 () Bool)

(assert (= bs!1371472 (and d!1829575 b!5809629)))

(declare-fun lambda!317377 () Int)

(assert (=> bs!1371472 (= lambda!317377 lambda!317312)))

(declare-fun bs!1371473 () Bool)

(assert (= bs!1371473 (and d!1829575 d!1829519)))

(assert (=> bs!1371473 (= lambda!317377 lambda!317360)))

(assert (=> d!1829575 (= (inv!82814 setElem!39116) (forall!14933 (exprs!5711 setElem!39116) lambda!317377))))

(declare-fun bs!1371474 () Bool)

(assert (= bs!1371474 d!1829575))

(declare-fun m!6748576 () Bool)

(assert (=> bs!1371474 m!6748576))

(assert (=> setNonEmpty!39116 d!1829575))

(declare-fun b!5810172 () Bool)

(declare-fun e!3566452 () (InoxSet Context!10422))

(declare-fun call!453645 () (InoxSet Context!10422))

(assert (=> b!5810172 (= e!3566452 call!453645)))

(declare-fun bm!453635 () Bool)

(declare-fun call!453643 () (InoxSet Context!10422))

(declare-fun call!453641 () (InoxSet Context!10422))

(assert (=> bm!453635 (= call!453643 call!453641)))

(declare-fun b!5810173 () Bool)

(declare-fun c!1029479 () Bool)

(assert (=> b!5810173 (= c!1029479 ((_ is Star!15827) r!7292))))

(declare-fun e!3566453 () (InoxSet Context!10422))

(assert (=> b!5810173 (= e!3566452 e!3566453)))

(declare-fun b!5810174 () Bool)

(declare-fun e!3566456 () Bool)

(assert (=> b!5810174 (= e!3566456 (nullable!5850 (regOne!32166 r!7292)))))

(declare-fun bm!453636 () Bool)

(declare-fun call!453640 () List!63780)

(declare-fun c!1029477 () Bool)

(declare-fun c!1029481 () Bool)

(assert (=> bm!453636 (= call!453640 ($colon$colon!1805 (exprs!5711 (Context!10423 Nil!63656)) (ite (or c!1029477 c!1029481) (regTwo!32166 r!7292) r!7292)))))

(declare-fun bm!453637 () Bool)

(declare-fun call!453642 () List!63780)

(assert (=> bm!453637 (= call!453642 call!453640)))

(declare-fun c!1029478 () Bool)

(declare-fun bm!453638 () Bool)

(assert (=> bm!453638 (= call!453641 (derivationStepZipperDown!1165 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292)))) (ite (or c!1029478 c!1029477) (Context!10423 Nil!63656) (Context!10423 call!453642)) (h!70105 s!2326)))))

(declare-fun b!5810175 () Bool)

(assert (=> b!5810175 (= e!3566453 call!453645)))

(declare-fun b!5810177 () Bool)

(assert (=> b!5810177 (= e!3566453 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810178 () Bool)

(declare-fun e!3566454 () (InoxSet Context!10422))

(declare-fun call!453644 () (InoxSet Context!10422))

(assert (=> b!5810178 (= e!3566454 ((_ map or) call!453641 call!453644))))

(declare-fun bm!453639 () Bool)

(assert (=> bm!453639 (= call!453644 (derivationStepZipperDown!1165 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292)) (ite c!1029478 (Context!10423 Nil!63656) (Context!10423 call!453640)) (h!70105 s!2326)))))

(declare-fun bm!453640 () Bool)

(assert (=> bm!453640 (= call!453645 call!453643)))

(declare-fun b!5810179 () Bool)

(declare-fun e!3566455 () (InoxSet Context!10422))

(assert (=> b!5810179 (= e!3566455 e!3566452)))

(assert (=> b!5810179 (= c!1029481 ((_ is Concat!24672) r!7292))))

(declare-fun b!5810176 () Bool)

(declare-fun e!3566457 () (InoxSet Context!10422))

(assert (=> b!5810176 (= e!3566457 (store ((as const (Array Context!10422 Bool)) false) (Context!10423 Nil!63656) true))))

(declare-fun d!1829579 () Bool)

(declare-fun c!1029480 () Bool)

(assert (=> d!1829579 (= c!1029480 (and ((_ is ElementMatch!15827) r!7292) (= (c!1029329 r!7292) (h!70105 s!2326))))))

(assert (=> d!1829579 (= (derivationStepZipperDown!1165 r!7292 (Context!10423 Nil!63656) (h!70105 s!2326)) e!3566457)))

(declare-fun b!5810180 () Bool)

(assert (=> b!5810180 (= e!3566457 e!3566454)))

(assert (=> b!5810180 (= c!1029478 ((_ is Union!15827) r!7292))))

(declare-fun b!5810181 () Bool)

(assert (=> b!5810181 (= c!1029477 e!3566456)))

(declare-fun res!2450256 () Bool)

(assert (=> b!5810181 (=> (not res!2450256) (not e!3566456))))

(assert (=> b!5810181 (= res!2450256 ((_ is Concat!24672) r!7292))))

(assert (=> b!5810181 (= e!3566454 e!3566455)))

(declare-fun b!5810182 () Bool)

(assert (=> b!5810182 (= e!3566455 ((_ map or) call!453644 call!453643))))

(assert (= (and d!1829579 c!1029480) b!5810176))

(assert (= (and d!1829579 (not c!1029480)) b!5810180))

(assert (= (and b!5810180 c!1029478) b!5810178))

(assert (= (and b!5810180 (not c!1029478)) b!5810181))

(assert (= (and b!5810181 res!2450256) b!5810174))

(assert (= (and b!5810181 c!1029477) b!5810182))

(assert (= (and b!5810181 (not c!1029477)) b!5810179))

(assert (= (and b!5810179 c!1029481) b!5810172))

(assert (= (and b!5810179 (not c!1029481)) b!5810173))

(assert (= (and b!5810173 c!1029479) b!5810175))

(assert (= (and b!5810173 (not c!1029479)) b!5810177))

(assert (= (or b!5810172 b!5810175) bm!453637))

(assert (= (or b!5810172 b!5810175) bm!453640))

(assert (= (or b!5810182 bm!453637) bm!453636))

(assert (= (or b!5810182 bm!453640) bm!453635))

(assert (= (or b!5810178 b!5810182) bm!453639))

(assert (= (or b!5810178 bm!453635) bm!453638))

(declare-fun m!6748582 () Bool)

(assert (=> bm!453638 m!6748582))

(declare-fun m!6748584 () Bool)

(assert (=> bm!453636 m!6748584))

(declare-fun m!6748586 () Bool)

(assert (=> bm!453639 m!6748586))

(declare-fun m!6748588 () Bool)

(assert (=> b!5810176 m!6748588))

(declare-fun m!6748590 () Bool)

(assert (=> b!5810174 m!6748590))

(assert (=> b!5809641 d!1829579))

(declare-fun d!1829587 () Bool)

(declare-fun c!1029482 () Bool)

(declare-fun e!3566459 () Bool)

(assert (=> d!1829587 (= c!1029482 e!3566459)))

(declare-fun res!2450257 () Bool)

(assert (=> d!1829587 (=> (not res!2450257) (not e!3566459))))

(assert (=> d!1829587 (= res!2450257 ((_ is Cons!63656) (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))))))

(declare-fun e!3566460 () (InoxSet Context!10422))

(assert (=> d!1829587 (= (derivationStepZipperUp!1091 (Context!10423 (Cons!63656 r!7292 Nil!63656)) (h!70105 s!2326)) e!3566460)))

(declare-fun b!5810183 () Bool)

(declare-fun e!3566458 () (InoxSet Context!10422))

(declare-fun call!453646 () (InoxSet Context!10422))

(assert (=> b!5810183 (= e!3566458 call!453646)))

(declare-fun b!5810184 () Bool)

(assert (=> b!5810184 (= e!3566460 e!3566458)))

(declare-fun c!1029483 () Bool)

(assert (=> b!5810184 (= c!1029483 ((_ is Cons!63656) (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))))))

(declare-fun bm!453641 () Bool)

(assert (=> bm!453641 (= call!453646 (derivationStepZipperDown!1165 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))) (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (h!70105 s!2326)))))

(declare-fun b!5810185 () Bool)

(assert (=> b!5810185 (= e!3566458 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810186 () Bool)

(assert (=> b!5810186 (= e!3566459 (nullable!5850 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))))))

(declare-fun b!5810187 () Bool)

(assert (=> b!5810187 (= e!3566460 ((_ map or) call!453646 (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (h!70105 s!2326))))))

(assert (= (and d!1829587 res!2450257) b!5810186))

(assert (= (and d!1829587 c!1029482) b!5810187))

(assert (= (and d!1829587 (not c!1029482)) b!5810184))

(assert (= (and b!5810184 c!1029483) b!5810183))

(assert (= (and b!5810184 (not c!1029483)) b!5810185))

(assert (= (or b!5810187 b!5810183) bm!453641))

(declare-fun m!6748592 () Bool)

(assert (=> bm!453641 m!6748592))

(declare-fun m!6748594 () Bool)

(assert (=> b!5810186 m!6748594))

(declare-fun m!6748596 () Bool)

(assert (=> b!5810187 m!6748596))

(assert (=> b!5809641 d!1829587))

(declare-fun bs!1371477 () Bool)

(declare-fun d!1829589 () Bool)

(assert (= bs!1371477 (and d!1829589 b!5809649)))

(declare-fun lambda!317378 () Int)

(assert (=> bs!1371477 (= lambda!317378 lambda!317310)))

(declare-fun bs!1371478 () Bool)

(assert (= bs!1371478 (and d!1829589 d!1829541)))

(assert (=> bs!1371478 (= lambda!317378 lambda!317363)))

(assert (=> d!1829589 true))

(assert (=> d!1829589 (= (derivationStepZipper!1896 z!1189 (h!70105 s!2326)) (flatMap!1434 z!1189 lambda!317378))))

(declare-fun bs!1371479 () Bool)

(assert (= bs!1371479 d!1829589))

(declare-fun m!6748598 () Bool)

(assert (=> bs!1371479 m!6748598))

(assert (=> b!5809641 d!1829589))

(declare-fun d!1829591 () Bool)

(assert (=> d!1829591 (= (isEmpty!35572 (t!377135 zl!343)) ((_ is Nil!63658) (t!377135 zl!343)))))

(assert (=> b!5809631 d!1829591))

(declare-fun d!1829593 () Bool)

(assert (=> d!1829593 (= (flatMap!1434 lt!2299860 lambda!317310) (choose!44117 lt!2299860 lambda!317310))))

(declare-fun bs!1371480 () Bool)

(assert (= bs!1371480 d!1829593))

(declare-fun m!6748600 () Bool)

(assert (=> bs!1371480 m!6748600))

(assert (=> b!5809650 d!1829593))

(declare-fun bs!1371481 () Bool)

(declare-fun d!1829595 () Bool)

(assert (= bs!1371481 (and d!1829595 b!5809649)))

(declare-fun lambda!317379 () Int)

(assert (=> bs!1371481 (= lambda!317379 lambda!317310)))

(declare-fun bs!1371482 () Bool)

(assert (= bs!1371482 (and d!1829595 d!1829541)))

(assert (=> bs!1371482 (= lambda!317379 lambda!317363)))

(declare-fun bs!1371483 () Bool)

(assert (= bs!1371483 (and d!1829595 d!1829589)))

(assert (=> bs!1371483 (= lambda!317379 lambda!317378)))

(assert (=> d!1829595 true))

(assert (=> d!1829595 (= (derivationStepZipper!1896 lt!2299860 (h!70105 s!2326)) (flatMap!1434 lt!2299860 lambda!317379))))

(declare-fun bs!1371484 () Bool)

(assert (= bs!1371484 d!1829595))

(declare-fun m!6748602 () Bool)

(assert (=> bs!1371484 m!6748602))

(assert (=> b!5809650 d!1829595))

(declare-fun d!1829597 () Bool)

(assert (=> d!1829597 (= (flatMap!1434 lt!2299860 lambda!317310) (dynLambda!24920 lambda!317310 lt!2299852))))

(declare-fun lt!2299944 () Unit!156914)

(assert (=> d!1829597 (= lt!2299944 (choose!44118 lt!2299860 lt!2299852 lambda!317310))))

(assert (=> d!1829597 (= lt!2299860 (store ((as const (Array Context!10422 Bool)) false) lt!2299852 true))))

(assert (=> d!1829597 (= (lemmaFlatMapOnSingletonSet!966 lt!2299860 lt!2299852 lambda!317310) lt!2299944)))

(declare-fun b_lambda!218989 () Bool)

(assert (=> (not b_lambda!218989) (not d!1829597)))

(declare-fun bs!1371485 () Bool)

(assert (= bs!1371485 d!1829597))

(assert (=> bs!1371485 m!6748186))

(declare-fun m!6748604 () Bool)

(assert (=> bs!1371485 m!6748604))

(declare-fun m!6748606 () Bool)

(assert (=> bs!1371485 m!6748606))

(assert (=> bs!1371485 m!6748188))

(assert (=> b!5809650 d!1829597))

(declare-fun d!1829599 () Bool)

(assert (=> d!1829599 (= (flatMap!1434 lt!2299836 lambda!317310) (dynLambda!24920 lambda!317310 lt!2299834))))

(declare-fun lt!2299945 () Unit!156914)

(assert (=> d!1829599 (= lt!2299945 (choose!44118 lt!2299836 lt!2299834 lambda!317310))))

(assert (=> d!1829599 (= lt!2299836 (store ((as const (Array Context!10422 Bool)) false) lt!2299834 true))))

(assert (=> d!1829599 (= (lemmaFlatMapOnSingletonSet!966 lt!2299836 lt!2299834 lambda!317310) lt!2299945)))

(declare-fun b_lambda!218991 () Bool)

(assert (=> (not b_lambda!218991) (not d!1829599)))

(declare-fun bs!1371486 () Bool)

(assert (= bs!1371486 d!1829599))

(assert (=> bs!1371486 m!6748180))

(declare-fun m!6748608 () Bool)

(assert (=> bs!1371486 m!6748608))

(declare-fun m!6748610 () Bool)

(assert (=> bs!1371486 m!6748610))

(assert (=> bs!1371486 m!6748174))

(assert (=> b!5809650 d!1829599))

(declare-fun d!1829601 () Bool)

(assert (=> d!1829601 (= (flatMap!1434 lt!2299836 lambda!317310) (choose!44117 lt!2299836 lambda!317310))))

(declare-fun bs!1371487 () Bool)

(assert (= bs!1371487 d!1829601))

(declare-fun m!6748612 () Bool)

(assert (=> bs!1371487 m!6748612))

(assert (=> b!5809650 d!1829601))

(declare-fun d!1829603 () Bool)

(declare-fun c!1029484 () Bool)

(declare-fun e!3566462 () Bool)

(assert (=> d!1829603 (= c!1029484 e!3566462)))

(declare-fun res!2450258 () Bool)

(assert (=> d!1829603 (=> (not res!2450258) (not e!3566462))))

(assert (=> d!1829603 (= res!2450258 ((_ is Cons!63656) (exprs!5711 lt!2299852)))))

(declare-fun e!3566463 () (InoxSet Context!10422))

(assert (=> d!1829603 (= (derivationStepZipperUp!1091 lt!2299852 (h!70105 s!2326)) e!3566463)))

(declare-fun b!5810188 () Bool)

(declare-fun e!3566461 () (InoxSet Context!10422))

(declare-fun call!453647 () (InoxSet Context!10422))

(assert (=> b!5810188 (= e!3566461 call!453647)))

(declare-fun b!5810189 () Bool)

(assert (=> b!5810189 (= e!3566463 e!3566461)))

(declare-fun c!1029485 () Bool)

(assert (=> b!5810189 (= c!1029485 ((_ is Cons!63656) (exprs!5711 lt!2299852)))))

(declare-fun bm!453642 () Bool)

(assert (=> bm!453642 (= call!453647 (derivationStepZipperDown!1165 (h!70104 (exprs!5711 lt!2299852)) (Context!10423 (t!377133 (exprs!5711 lt!2299852))) (h!70105 s!2326)))))

(declare-fun b!5810190 () Bool)

(assert (=> b!5810190 (= e!3566461 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810191 () Bool)

(assert (=> b!5810191 (= e!3566462 (nullable!5850 (h!70104 (exprs!5711 lt!2299852))))))

(declare-fun b!5810192 () Bool)

(assert (=> b!5810192 (= e!3566463 ((_ map or) call!453647 (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 lt!2299852))) (h!70105 s!2326))))))

(assert (= (and d!1829603 res!2450258) b!5810191))

(assert (= (and d!1829603 c!1029484) b!5810192))

(assert (= (and d!1829603 (not c!1029484)) b!5810189))

(assert (= (and b!5810189 c!1029485) b!5810188))

(assert (= (and b!5810189 (not c!1029485)) b!5810190))

(assert (= (or b!5810192 b!5810188) bm!453642))

(declare-fun m!6748614 () Bool)

(assert (=> bm!453642 m!6748614))

(declare-fun m!6748616 () Bool)

(assert (=> b!5810191 m!6748616))

(declare-fun m!6748618 () Bool)

(assert (=> b!5810192 m!6748618))

(assert (=> b!5809650 d!1829603))

(declare-fun d!1829605 () Bool)

(declare-fun c!1029486 () Bool)

(declare-fun e!3566465 () Bool)

(assert (=> d!1829605 (= c!1029486 e!3566465)))

(declare-fun res!2450259 () Bool)

(assert (=> d!1829605 (=> (not res!2450259) (not e!3566465))))

(assert (=> d!1829605 (= res!2450259 ((_ is Cons!63656) (exprs!5711 lt!2299834)))))

(declare-fun e!3566466 () (InoxSet Context!10422))

(assert (=> d!1829605 (= (derivationStepZipperUp!1091 lt!2299834 (h!70105 s!2326)) e!3566466)))

(declare-fun b!5810193 () Bool)

(declare-fun e!3566464 () (InoxSet Context!10422))

(declare-fun call!453648 () (InoxSet Context!10422))

(assert (=> b!5810193 (= e!3566464 call!453648)))

(declare-fun b!5810194 () Bool)

(assert (=> b!5810194 (= e!3566466 e!3566464)))

(declare-fun c!1029487 () Bool)

(assert (=> b!5810194 (= c!1029487 ((_ is Cons!63656) (exprs!5711 lt!2299834)))))

(declare-fun bm!453643 () Bool)

(assert (=> bm!453643 (= call!453648 (derivationStepZipperDown!1165 (h!70104 (exprs!5711 lt!2299834)) (Context!10423 (t!377133 (exprs!5711 lt!2299834))) (h!70105 s!2326)))))

(declare-fun b!5810195 () Bool)

(assert (=> b!5810195 (= e!3566464 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810196 () Bool)

(assert (=> b!5810196 (= e!3566465 (nullable!5850 (h!70104 (exprs!5711 lt!2299834))))))

(declare-fun b!5810197 () Bool)

(assert (=> b!5810197 (= e!3566466 ((_ map or) call!453648 (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 lt!2299834))) (h!70105 s!2326))))))

(assert (= (and d!1829605 res!2450259) b!5810196))

(assert (= (and d!1829605 c!1029486) b!5810197))

(assert (= (and d!1829605 (not c!1029486)) b!5810194))

(assert (= (and b!5810194 c!1029487) b!5810193))

(assert (= (and b!5810194 (not c!1029487)) b!5810195))

(assert (= (or b!5810197 b!5810193) bm!453643))

(declare-fun m!6748620 () Bool)

(assert (=> bm!453643 m!6748620))

(declare-fun m!6748622 () Bool)

(assert (=> b!5810196 m!6748622))

(declare-fun m!6748624 () Bool)

(assert (=> b!5810197 m!6748624))

(assert (=> b!5809650 d!1829605))

(declare-fun bs!1371488 () Bool)

(declare-fun d!1829607 () Bool)

(assert (= bs!1371488 (and d!1829607 b!5809629)))

(declare-fun lambda!317380 () Int)

(assert (=> bs!1371488 (= lambda!317380 lambda!317312)))

(declare-fun bs!1371489 () Bool)

(assert (= bs!1371489 (and d!1829607 d!1829519)))

(assert (=> bs!1371489 (= lambda!317380 lambda!317360)))

(declare-fun bs!1371490 () Bool)

(assert (= bs!1371490 (and d!1829607 d!1829575)))

(assert (=> bs!1371490 (= lambda!317380 lambda!317377)))

(assert (=> d!1829607 (= (inv!82814 (h!70106 zl!343)) (forall!14933 (exprs!5711 (h!70106 zl!343)) lambda!317380))))

(declare-fun bs!1371491 () Bool)

(assert (= bs!1371491 d!1829607))

(declare-fun m!6748626 () Bool)

(assert (=> bs!1371491 m!6748626))

(assert (=> b!5809639 d!1829607))

(declare-fun bs!1371494 () Bool)

(declare-fun d!1829609 () Bool)

(assert (= bs!1371494 (and d!1829609 b!5809629)))

(declare-fun lambda!317390 () Int)

(assert (=> bs!1371494 (= (= (exprs!5711 lt!2299852) lt!2299835) (= lambda!317390 lambda!317311))))

(assert (=> d!1829609 true))

(assert (=> d!1829609 (= (appendTo!136 lt!2299836 lt!2299852) (map!14593 lt!2299836 lambda!317390))))

(declare-fun bs!1371497 () Bool)

(assert (= bs!1371497 d!1829609))

(declare-fun m!6748628 () Bool)

(assert (=> bs!1371497 m!6748628))

(assert (=> b!5809629 d!1829609))

(declare-fun d!1829611 () Bool)

(assert (=> d!1829611 (forall!14933 (++!14037 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835) lambda!317312)))

(declare-fun lt!2299953 () Unit!156914)

(declare-fun choose!44124 (List!63780 List!63780 Int) Unit!156914)

(assert (=> d!1829611 (= lt!2299953 (choose!44124 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835 lambda!317312))))

(assert (=> d!1829611 (forall!14933 (Cons!63656 (reg!16156 r!7292) Nil!63656) lambda!317312)))

(assert (=> d!1829611 (= (lemmaConcatPreservesForall!328 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835 lambda!317312) lt!2299953)))

(declare-fun bs!1371501 () Bool)

(assert (= bs!1371501 d!1829611))

(assert (=> bs!1371501 m!6748216))

(assert (=> bs!1371501 m!6748216))

(declare-fun m!6748636 () Bool)

(assert (=> bs!1371501 m!6748636))

(declare-fun m!6748640 () Bool)

(assert (=> bs!1371501 m!6748640))

(declare-fun m!6748642 () Bool)

(assert (=> bs!1371501 m!6748642))

(assert (=> b!5809629 d!1829611))

(declare-fun d!1829615 () Bool)

(declare-fun choose!44126 ((InoxSet Context!10422) Int) (InoxSet Context!10422))

(assert (=> d!1829615 (= (map!14593 lt!2299836 lambda!317311) (choose!44126 lt!2299836 lambda!317311))))

(declare-fun bs!1371503 () Bool)

(assert (= bs!1371503 d!1829615))

(declare-fun m!6748644 () Bool)

(assert (=> bs!1371503 m!6748644))

(assert (=> b!5809629 d!1829615))

(declare-fun d!1829619 () Bool)

(declare-fun dynLambda!24922 (Int Context!10422) Context!10422)

(assert (=> d!1829619 (= (map!14593 lt!2299836 lambda!317311) (store ((as const (Array Context!10422 Bool)) false) (dynLambda!24922 lambda!317311 lt!2299834) true))))

(declare-fun lt!2299956 () Unit!156914)

(declare-fun choose!44127 ((InoxSet Context!10422) Context!10422 Int) Unit!156914)

(assert (=> d!1829619 (= lt!2299956 (choose!44127 lt!2299836 lt!2299834 lambda!317311))))

(assert (=> d!1829619 (= lt!2299836 (store ((as const (Array Context!10422 Bool)) false) lt!2299834 true))))

(assert (=> d!1829619 (= (lemmaMapOnSingletonSet!154 lt!2299836 lt!2299834 lambda!317311) lt!2299956)))

(declare-fun b_lambda!218993 () Bool)

(assert (=> (not b_lambda!218993) (not d!1829619)))

(declare-fun bs!1371504 () Bool)

(assert (= bs!1371504 d!1829619))

(declare-fun m!6748646 () Bool)

(assert (=> bs!1371504 m!6748646))

(declare-fun m!6748648 () Bool)

(assert (=> bs!1371504 m!6748648))

(declare-fun m!6748650 () Bool)

(assert (=> bs!1371504 m!6748650))

(assert (=> bs!1371504 m!6748646))

(assert (=> bs!1371504 m!6748212))

(assert (=> bs!1371504 m!6748174))

(assert (=> b!5809629 d!1829619))

(declare-fun b!5810217 () Bool)

(declare-fun e!3566476 () List!63780)

(assert (=> b!5810217 (= e!3566476 (Cons!63656 (h!70104 (Cons!63656 (reg!16156 r!7292) Nil!63656)) (++!14037 (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656)) lt!2299835)))))

(declare-fun b!5810216 () Bool)

(assert (=> b!5810216 (= e!3566476 lt!2299835)))

(declare-fun b!5810218 () Bool)

(declare-fun res!2450272 () Bool)

(declare-fun e!3566475 () Bool)

(assert (=> b!5810218 (=> (not res!2450272) (not e!3566475))))

(declare-fun lt!2299959 () List!63780)

(declare-fun size!40110 (List!63780) Int)

(assert (=> b!5810218 (= res!2450272 (= (size!40110 lt!2299959) (+ (size!40110 (Cons!63656 (reg!16156 r!7292) Nil!63656)) (size!40110 lt!2299835))))))

(declare-fun d!1829621 () Bool)

(assert (=> d!1829621 e!3566475))

(declare-fun res!2450273 () Bool)

(assert (=> d!1829621 (=> (not res!2450273) (not e!3566475))))

(declare-fun content!11664 (List!63780) (InoxSet Regex!15827))

(assert (=> d!1829621 (= res!2450273 (= (content!11664 lt!2299959) ((_ map or) (content!11664 (Cons!63656 (reg!16156 r!7292) Nil!63656)) (content!11664 lt!2299835))))))

(assert (=> d!1829621 (= lt!2299959 e!3566476)))

(declare-fun c!1029491 () Bool)

(assert (=> d!1829621 (= c!1029491 ((_ is Nil!63656) (Cons!63656 (reg!16156 r!7292) Nil!63656)))))

(assert (=> d!1829621 (= (++!14037 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835) lt!2299959)))

(declare-fun b!5810219 () Bool)

(assert (=> b!5810219 (= e!3566475 (or (not (= lt!2299835 Nil!63656)) (= lt!2299959 (Cons!63656 (reg!16156 r!7292) Nil!63656))))))

(assert (= (and d!1829621 c!1029491) b!5810216))

(assert (= (and d!1829621 (not c!1029491)) b!5810217))

(assert (= (and d!1829621 res!2450273) b!5810218))

(assert (= (and b!5810218 res!2450272) b!5810219))

(declare-fun m!6748652 () Bool)

(assert (=> b!5810217 m!6748652))

(declare-fun m!6748654 () Bool)

(assert (=> b!5810218 m!6748654))

(declare-fun m!6748656 () Bool)

(assert (=> b!5810218 m!6748656))

(declare-fun m!6748658 () Bool)

(assert (=> b!5810218 m!6748658))

(declare-fun m!6748660 () Bool)

(assert (=> d!1829621 m!6748660))

(declare-fun m!6748662 () Bool)

(assert (=> d!1829621 m!6748662))

(declare-fun m!6748664 () Bool)

(assert (=> d!1829621 m!6748664))

(assert (=> b!5809629 d!1829621))

(declare-fun d!1829623 () Bool)

(assert (=> d!1829623 (= (flatMap!1434 z!1189 lambda!317310) (choose!44117 z!1189 lambda!317310))))

(declare-fun bs!1371505 () Bool)

(assert (= bs!1371505 d!1829623))

(declare-fun m!6748666 () Bool)

(assert (=> bs!1371505 m!6748666))

(assert (=> b!5809649 d!1829623))

(declare-fun d!1829625 () Bool)

(declare-fun c!1029492 () Bool)

(declare-fun e!3566478 () Bool)

(assert (=> d!1829625 (= c!1029492 e!3566478)))

(declare-fun res!2450274 () Bool)

(assert (=> d!1829625 (=> (not res!2450274) (not e!3566478))))

(assert (=> d!1829625 (= res!2450274 ((_ is Cons!63656) (exprs!5711 (h!70106 zl!343))))))

(declare-fun e!3566479 () (InoxSet Context!10422))

(assert (=> d!1829625 (= (derivationStepZipperUp!1091 (h!70106 zl!343) (h!70105 s!2326)) e!3566479)))

(declare-fun b!5810220 () Bool)

(declare-fun e!3566477 () (InoxSet Context!10422))

(declare-fun call!453649 () (InoxSet Context!10422))

(assert (=> b!5810220 (= e!3566477 call!453649)))

(declare-fun b!5810221 () Bool)

(assert (=> b!5810221 (= e!3566479 e!3566477)))

(declare-fun c!1029493 () Bool)

(assert (=> b!5810221 (= c!1029493 ((_ is Cons!63656) (exprs!5711 (h!70106 zl!343))))))

(declare-fun bm!453644 () Bool)

(assert (=> bm!453644 (= call!453649 (derivationStepZipperDown!1165 (h!70104 (exprs!5711 (h!70106 zl!343))) (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343)))) (h!70105 s!2326)))))

(declare-fun b!5810222 () Bool)

(assert (=> b!5810222 (= e!3566477 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810223 () Bool)

(assert (=> b!5810223 (= e!3566478 (nullable!5850 (h!70104 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5810224 () Bool)

(assert (=> b!5810224 (= e!3566479 ((_ map or) call!453649 (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343)))) (h!70105 s!2326))))))

(assert (= (and d!1829625 res!2450274) b!5810223))

(assert (= (and d!1829625 c!1029492) b!5810224))

(assert (= (and d!1829625 (not c!1029492)) b!5810221))

(assert (= (and b!5810221 c!1029493) b!5810220))

(assert (= (and b!5810221 (not c!1029493)) b!5810222))

(assert (= (or b!5810224 b!5810220) bm!453644))

(declare-fun m!6748668 () Bool)

(assert (=> bm!453644 m!6748668))

(declare-fun m!6748670 () Bool)

(assert (=> b!5810223 m!6748670))

(declare-fun m!6748672 () Bool)

(assert (=> b!5810224 m!6748672))

(assert (=> b!5809649 d!1829625))

(declare-fun d!1829627 () Bool)

(assert (=> d!1829627 (= (flatMap!1434 z!1189 lambda!317310) (dynLambda!24920 lambda!317310 (h!70106 zl!343)))))

(declare-fun lt!2299960 () Unit!156914)

(assert (=> d!1829627 (= lt!2299960 (choose!44118 z!1189 (h!70106 zl!343) lambda!317310))))

(assert (=> d!1829627 (= z!1189 (store ((as const (Array Context!10422 Bool)) false) (h!70106 zl!343) true))))

(assert (=> d!1829627 (= (lemmaFlatMapOnSingletonSet!966 z!1189 (h!70106 zl!343) lambda!317310) lt!2299960)))

(declare-fun b_lambda!218995 () Bool)

(assert (=> (not b_lambda!218995) (not d!1829627)))

(declare-fun bs!1371506 () Bool)

(assert (= bs!1371506 d!1829627))

(assert (=> bs!1371506 m!6748116))

(declare-fun m!6748674 () Bool)

(assert (=> bs!1371506 m!6748674))

(declare-fun m!6748676 () Bool)

(assert (=> bs!1371506 m!6748676))

(declare-fun m!6748678 () Bool)

(assert (=> bs!1371506 m!6748678))

(assert (=> b!5809649 d!1829627))

(declare-fun d!1829629 () Bool)

(declare-fun c!1029494 () Bool)

(assert (=> d!1829629 (= c!1029494 (isEmpty!35571 s!2326))))

(declare-fun e!3566480 () Bool)

(assert (=> d!1829629 (= (matchZipper!1955 z!1189 s!2326) e!3566480)))

(declare-fun b!5810225 () Bool)

(assert (=> b!5810225 (= e!3566480 (nullableZipper!1734 z!1189))))

(declare-fun b!5810226 () Bool)

(assert (=> b!5810226 (= e!3566480 (matchZipper!1955 (derivationStepZipper!1896 z!1189 (head!12260 s!2326)) (tail!11355 s!2326)))))

(assert (= (and d!1829629 c!1029494) b!5810225))

(assert (= (and d!1829629 (not c!1029494)) b!5810226))

(assert (=> d!1829629 m!6748148))

(declare-fun m!6748680 () Bool)

(assert (=> b!5810225 m!6748680))

(assert (=> b!5810226 m!6748228))

(assert (=> b!5810226 m!6748228))

(declare-fun m!6748682 () Bool)

(assert (=> b!5810226 m!6748682))

(assert (=> b!5810226 m!6748232))

(assert (=> b!5810226 m!6748682))

(assert (=> b!5810226 m!6748232))

(declare-fun m!6748684 () Bool)

(assert (=> b!5810226 m!6748684))

(assert (=> b!5809638 d!1829629))

(declare-fun bs!1371507 () Bool)

(declare-fun d!1829631 () Bool)

(assert (= bs!1371507 (and d!1829631 b!5809629)))

(declare-fun lambda!317394 () Int)

(assert (=> bs!1371507 (= lambda!317394 lambda!317312)))

(declare-fun bs!1371508 () Bool)

(assert (= bs!1371508 (and d!1829631 d!1829519)))

(assert (=> bs!1371508 (= lambda!317394 lambda!317360)))

(declare-fun bs!1371509 () Bool)

(assert (= bs!1371509 (and d!1829631 d!1829575)))

(assert (=> bs!1371509 (= lambda!317394 lambda!317377)))

(declare-fun bs!1371510 () Bool)

(assert (= bs!1371510 (and d!1829631 d!1829607)))

(assert (=> bs!1371510 (= lambda!317394 lambda!317380)))

(declare-fun b!5810274 () Bool)

(declare-fun e!3566512 () Regex!15827)

(assert (=> b!5810274 (= e!3566512 EmptyLang!15827)))

(declare-fun b!5810275 () Bool)

(declare-fun e!3566510 () Bool)

(declare-fun lt!2299972 () Regex!15827)

(declare-fun isUnion!738 (Regex!15827) Bool)

(assert (=> b!5810275 (= e!3566510 (isUnion!738 lt!2299972))))

(declare-fun b!5810276 () Bool)

(declare-fun e!3566509 () Bool)

(assert (=> b!5810276 (= e!3566509 e!3566510)))

(declare-fun c!1029509 () Bool)

(assert (=> b!5810276 (= c!1029509 (isEmpty!35575 (tail!11358 (unfocusZipperList!1255 zl!343))))))

(declare-fun b!5810277 () Bool)

(declare-fun e!3566513 () Bool)

(assert (=> b!5810277 (= e!3566513 (isEmpty!35575 (t!377133 (unfocusZipperList!1255 zl!343))))))

(declare-fun b!5810278 () Bool)

(declare-fun e!3566508 () Bool)

(assert (=> b!5810278 (= e!3566508 e!3566509)))

(declare-fun c!1029511 () Bool)

(assert (=> b!5810278 (= c!1029511 (isEmpty!35575 (unfocusZipperList!1255 zl!343)))))

(assert (=> d!1829631 e!3566508))

(declare-fun res!2450294 () Bool)

(assert (=> d!1829631 (=> (not res!2450294) (not e!3566508))))

(assert (=> d!1829631 (= res!2450294 (validRegex!7563 lt!2299972))))

(declare-fun e!3566511 () Regex!15827)

(assert (=> d!1829631 (= lt!2299972 e!3566511)))

(declare-fun c!1029510 () Bool)

(assert (=> d!1829631 (= c!1029510 e!3566513)))

(declare-fun res!2450295 () Bool)

(assert (=> d!1829631 (=> (not res!2450295) (not e!3566513))))

(assert (=> d!1829631 (= res!2450295 ((_ is Cons!63656) (unfocusZipperList!1255 zl!343)))))

(assert (=> d!1829631 (forall!14933 (unfocusZipperList!1255 zl!343) lambda!317394)))

(assert (=> d!1829631 (= (generalisedUnion!1690 (unfocusZipperList!1255 zl!343)) lt!2299972)))

(declare-fun b!5810279 () Bool)

(assert (=> b!5810279 (= e!3566512 (Union!15827 (h!70104 (unfocusZipperList!1255 zl!343)) (generalisedUnion!1690 (t!377133 (unfocusZipperList!1255 zl!343)))))))

(declare-fun b!5810280 () Bool)

(assert (=> b!5810280 (= e!3566511 (h!70104 (unfocusZipperList!1255 zl!343)))))

(declare-fun b!5810281 () Bool)

(declare-fun isEmptyLang!1308 (Regex!15827) Bool)

(assert (=> b!5810281 (= e!3566509 (isEmptyLang!1308 lt!2299972))))

(declare-fun b!5810282 () Bool)

(assert (=> b!5810282 (= e!3566511 e!3566512)))

(declare-fun c!1029512 () Bool)

(assert (=> b!5810282 (= c!1029512 ((_ is Cons!63656) (unfocusZipperList!1255 zl!343)))))

(declare-fun b!5810283 () Bool)

(assert (=> b!5810283 (= e!3566510 (= lt!2299972 (head!12263 (unfocusZipperList!1255 zl!343))))))

(assert (= (and d!1829631 res!2450295) b!5810277))

(assert (= (and d!1829631 c!1029510) b!5810280))

(assert (= (and d!1829631 (not c!1029510)) b!5810282))

(assert (= (and b!5810282 c!1029512) b!5810279))

(assert (= (and b!5810282 (not c!1029512)) b!5810274))

(assert (= (and d!1829631 res!2450294) b!5810278))

(assert (= (and b!5810278 c!1029511) b!5810281))

(assert (= (and b!5810278 (not c!1029511)) b!5810276))

(assert (= (and b!5810276 c!1029509) b!5810283))

(assert (= (and b!5810276 (not c!1029509)) b!5810275))

(assert (=> b!5810276 m!6748130))

(declare-fun m!6748706 () Bool)

(assert (=> b!5810276 m!6748706))

(assert (=> b!5810276 m!6748706))

(declare-fun m!6748708 () Bool)

(assert (=> b!5810276 m!6748708))

(declare-fun m!6748710 () Bool)

(assert (=> d!1829631 m!6748710))

(assert (=> d!1829631 m!6748130))

(declare-fun m!6748712 () Bool)

(assert (=> d!1829631 m!6748712))

(declare-fun m!6748714 () Bool)

(assert (=> b!5810277 m!6748714))

(declare-fun m!6748716 () Bool)

(assert (=> b!5810279 m!6748716))

(declare-fun m!6748718 () Bool)

(assert (=> b!5810281 m!6748718))

(declare-fun m!6748720 () Bool)

(assert (=> b!5810275 m!6748720))

(assert (=> b!5810283 m!6748130))

(declare-fun m!6748722 () Bool)

(assert (=> b!5810283 m!6748722))

(assert (=> b!5810278 m!6748130))

(declare-fun m!6748724 () Bool)

(assert (=> b!5810278 m!6748724))

(assert (=> b!5809648 d!1829631))

(declare-fun bs!1371511 () Bool)

(declare-fun d!1829635 () Bool)

(assert (= bs!1371511 (and d!1829635 d!1829575)))

(declare-fun lambda!317399 () Int)

(assert (=> bs!1371511 (= lambda!317399 lambda!317377)))

(declare-fun bs!1371512 () Bool)

(assert (= bs!1371512 (and d!1829635 b!5809629)))

(assert (=> bs!1371512 (= lambda!317399 lambda!317312)))

(declare-fun bs!1371513 () Bool)

(assert (= bs!1371513 (and d!1829635 d!1829607)))

(assert (=> bs!1371513 (= lambda!317399 lambda!317380)))

(declare-fun bs!1371514 () Bool)

(assert (= bs!1371514 (and d!1829635 d!1829631)))

(assert (=> bs!1371514 (= lambda!317399 lambda!317394)))

(declare-fun bs!1371515 () Bool)

(assert (= bs!1371515 (and d!1829635 d!1829519)))

(assert (=> bs!1371515 (= lambda!317399 lambda!317360)))

(declare-fun lt!2299977 () List!63780)

(assert (=> d!1829635 (forall!14933 lt!2299977 lambda!317399)))

(declare-fun e!3566518 () List!63780)

(assert (=> d!1829635 (= lt!2299977 e!3566518)))

(declare-fun c!1029515 () Bool)

(assert (=> d!1829635 (= c!1029515 ((_ is Cons!63658) zl!343))))

(assert (=> d!1829635 (= (unfocusZipperList!1255 zl!343) lt!2299977)))

(declare-fun b!5810292 () Bool)

(assert (=> b!5810292 (= e!3566518 (Cons!63656 (generalisedConcat!1442 (exprs!5711 (h!70106 zl!343))) (unfocusZipperList!1255 (t!377135 zl!343))))))

(declare-fun b!5810293 () Bool)

(assert (=> b!5810293 (= e!3566518 Nil!63656)))

(assert (= (and d!1829635 c!1029515) b!5810292))

(assert (= (and d!1829635 (not c!1029515)) b!5810293))

(declare-fun m!6748726 () Bool)

(assert (=> d!1829635 m!6748726))

(assert (=> b!5810292 m!6748164))

(declare-fun m!6748728 () Bool)

(assert (=> b!5810292 m!6748728))

(assert (=> b!5809648 d!1829635))

(declare-fun condSetEmpty!39119 () Bool)

(assert (=> setNonEmpty!39116 (= condSetEmpty!39119 (= setRest!39116 ((as const (Array Context!10422 Bool)) false)))))

(declare-fun setRes!39119 () Bool)

(assert (=> setNonEmpty!39116 (= tp!1603376 setRes!39119)))

(declare-fun setIsEmpty!39119 () Bool)

(assert (=> setIsEmpty!39119 setRes!39119))

(declare-fun setElem!39119 () Context!10422)

(declare-fun e!3566521 () Bool)

(declare-fun tp!1603389 () Bool)

(declare-fun setNonEmpty!39119 () Bool)

(assert (=> setNonEmpty!39119 (= setRes!39119 (and tp!1603389 (inv!82814 setElem!39119) e!3566521))))

(declare-fun setRest!39119 () (InoxSet Context!10422))

(assert (=> setNonEmpty!39119 (= setRest!39116 ((_ map or) (store ((as const (Array Context!10422 Bool)) false) setElem!39119 true) setRest!39119))))

(declare-fun b!5810298 () Bool)

(declare-fun tp!1603390 () Bool)

(assert (=> b!5810298 (= e!3566521 tp!1603390)))

(assert (= (and setNonEmpty!39116 condSetEmpty!39119) setIsEmpty!39119))

(assert (= (and setNonEmpty!39116 (not condSetEmpty!39119)) setNonEmpty!39119))

(assert (= setNonEmpty!39119 b!5810298))

(declare-fun m!6748730 () Bool)

(assert (=> setNonEmpty!39119 m!6748730))

(declare-fun b!5810303 () Bool)

(declare-fun e!3566524 () Bool)

(declare-fun tp!1603395 () Bool)

(declare-fun tp!1603396 () Bool)

(assert (=> b!5810303 (= e!3566524 (and tp!1603395 tp!1603396))))

(assert (=> b!5809627 (= tp!1603377 e!3566524)))

(assert (= (and b!5809627 ((_ is Cons!63656) (exprs!5711 setElem!39116))) b!5810303))

(declare-fun b!5810304 () Bool)

(declare-fun e!3566525 () Bool)

(declare-fun tp!1603397 () Bool)

(declare-fun tp!1603398 () Bool)

(assert (=> b!5810304 (= e!3566525 (and tp!1603397 tp!1603398))))

(assert (=> b!5809651 (= tp!1603382 e!3566525)))

(assert (= (and b!5809651 ((_ is Cons!63656) (exprs!5711 (h!70106 zl!343)))) b!5810304))

(declare-fun b!5810315 () Bool)

(declare-fun e!3566528 () Bool)

(assert (=> b!5810315 (= e!3566528 tp_is_empty!40907)))

(assert (=> b!5809626 (= tp!1603378 e!3566528)))

(declare-fun b!5810316 () Bool)

(declare-fun tp!1603409 () Bool)

(declare-fun tp!1603412 () Bool)

(assert (=> b!5810316 (= e!3566528 (and tp!1603409 tp!1603412))))

(declare-fun b!5810317 () Bool)

(declare-fun tp!1603410 () Bool)

(assert (=> b!5810317 (= e!3566528 tp!1603410)))

(declare-fun b!5810318 () Bool)

(declare-fun tp!1603413 () Bool)

(declare-fun tp!1603411 () Bool)

(assert (=> b!5810318 (= e!3566528 (and tp!1603413 tp!1603411))))

(assert (= (and b!5809626 ((_ is ElementMatch!15827) (regOne!32166 r!7292))) b!5810315))

(assert (= (and b!5809626 ((_ is Concat!24672) (regOne!32166 r!7292))) b!5810316))

(assert (= (and b!5809626 ((_ is Star!15827) (regOne!32166 r!7292))) b!5810317))

(assert (= (and b!5809626 ((_ is Union!15827) (regOne!32166 r!7292))) b!5810318))

(declare-fun b!5810319 () Bool)

(declare-fun e!3566529 () Bool)

(assert (=> b!5810319 (= e!3566529 tp_is_empty!40907)))

(assert (=> b!5809626 (= tp!1603384 e!3566529)))

(declare-fun b!5810320 () Bool)

(declare-fun tp!1603414 () Bool)

(declare-fun tp!1603417 () Bool)

(assert (=> b!5810320 (= e!3566529 (and tp!1603414 tp!1603417))))

(declare-fun b!5810321 () Bool)

(declare-fun tp!1603415 () Bool)

(assert (=> b!5810321 (= e!3566529 tp!1603415)))

(declare-fun b!5810322 () Bool)

(declare-fun tp!1603418 () Bool)

(declare-fun tp!1603416 () Bool)

(assert (=> b!5810322 (= e!3566529 (and tp!1603418 tp!1603416))))

(assert (= (and b!5809626 ((_ is ElementMatch!15827) (regTwo!32166 r!7292))) b!5810319))

(assert (= (and b!5809626 ((_ is Concat!24672) (regTwo!32166 r!7292))) b!5810320))

(assert (= (and b!5809626 ((_ is Star!15827) (regTwo!32166 r!7292))) b!5810321))

(assert (= (and b!5809626 ((_ is Union!15827) (regTwo!32166 r!7292))) b!5810322))

(declare-fun b!5810327 () Bool)

(declare-fun e!3566532 () Bool)

(declare-fun tp!1603421 () Bool)

(assert (=> b!5810327 (= e!3566532 (and tp_is_empty!40907 tp!1603421))))

(assert (=> b!5809640 (= tp!1603379 e!3566532)))

(assert (= (and b!5809640 ((_ is Cons!63657) (t!377134 s!2326))) b!5810327))

(declare-fun b!5810328 () Bool)

(declare-fun e!3566533 () Bool)

(assert (=> b!5810328 (= e!3566533 tp_is_empty!40907)))

(assert (=> b!5809630 (= tp!1603380 e!3566533)))

(declare-fun b!5810329 () Bool)

(declare-fun tp!1603422 () Bool)

(declare-fun tp!1603425 () Bool)

(assert (=> b!5810329 (= e!3566533 (and tp!1603422 tp!1603425))))

(declare-fun b!5810330 () Bool)

(declare-fun tp!1603423 () Bool)

(assert (=> b!5810330 (= e!3566533 tp!1603423)))

(declare-fun b!5810331 () Bool)

(declare-fun tp!1603426 () Bool)

(declare-fun tp!1603424 () Bool)

(assert (=> b!5810331 (= e!3566533 (and tp!1603426 tp!1603424))))

(assert (= (and b!5809630 ((_ is ElementMatch!15827) (reg!16156 r!7292))) b!5810328))

(assert (= (and b!5809630 ((_ is Concat!24672) (reg!16156 r!7292))) b!5810329))

(assert (= (and b!5809630 ((_ is Star!15827) (reg!16156 r!7292))) b!5810330))

(assert (= (and b!5809630 ((_ is Union!15827) (reg!16156 r!7292))) b!5810331))

(declare-fun b!5810339 () Bool)

(declare-fun e!3566539 () Bool)

(declare-fun tp!1603431 () Bool)

(assert (=> b!5810339 (= e!3566539 tp!1603431)))

(declare-fun tp!1603432 () Bool)

(declare-fun b!5810338 () Bool)

(declare-fun e!3566538 () Bool)

(assert (=> b!5810338 (= e!3566538 (and (inv!82814 (h!70106 (t!377135 zl!343))) e!3566539 tp!1603432))))

(assert (=> b!5809639 (= tp!1603375 e!3566538)))

(assert (= b!5810338 b!5810339))

(assert (= (and b!5809639 ((_ is Cons!63658) (t!377135 zl!343))) b!5810338))

(declare-fun m!6748742 () Bool)

(assert (=> b!5810338 m!6748742))

(declare-fun b!5810340 () Bool)

(declare-fun e!3566540 () Bool)

(assert (=> b!5810340 (= e!3566540 tp_is_empty!40907)))

(assert (=> b!5809633 (= tp!1603383 e!3566540)))

(declare-fun b!5810341 () Bool)

(declare-fun tp!1603433 () Bool)

(declare-fun tp!1603436 () Bool)

(assert (=> b!5810341 (= e!3566540 (and tp!1603433 tp!1603436))))

(declare-fun b!5810342 () Bool)

(declare-fun tp!1603434 () Bool)

(assert (=> b!5810342 (= e!3566540 tp!1603434)))

(declare-fun b!5810343 () Bool)

(declare-fun tp!1603437 () Bool)

(declare-fun tp!1603435 () Bool)

(assert (=> b!5810343 (= e!3566540 (and tp!1603437 tp!1603435))))

(assert (= (and b!5809633 ((_ is ElementMatch!15827) (regOne!32167 r!7292))) b!5810340))

(assert (= (and b!5809633 ((_ is Concat!24672) (regOne!32167 r!7292))) b!5810341))

(assert (= (and b!5809633 ((_ is Star!15827) (regOne!32167 r!7292))) b!5810342))

(assert (= (and b!5809633 ((_ is Union!15827) (regOne!32167 r!7292))) b!5810343))

(declare-fun b!5810344 () Bool)

(declare-fun e!3566541 () Bool)

(assert (=> b!5810344 (= e!3566541 tp_is_empty!40907)))

(assert (=> b!5809633 (= tp!1603381 e!3566541)))

(declare-fun b!5810345 () Bool)

(declare-fun tp!1603438 () Bool)

(declare-fun tp!1603441 () Bool)

(assert (=> b!5810345 (= e!3566541 (and tp!1603438 tp!1603441))))

(declare-fun b!5810346 () Bool)

(declare-fun tp!1603439 () Bool)

(assert (=> b!5810346 (= e!3566541 tp!1603439)))

(declare-fun b!5810347 () Bool)

(declare-fun tp!1603442 () Bool)

(declare-fun tp!1603440 () Bool)

(assert (=> b!5810347 (= e!3566541 (and tp!1603442 tp!1603440))))

(assert (= (and b!5809633 ((_ is ElementMatch!15827) (regTwo!32167 r!7292))) b!5810344))

(assert (= (and b!5809633 ((_ is Concat!24672) (regTwo!32167 r!7292))) b!5810345))

(assert (= (and b!5809633 ((_ is Star!15827) (regTwo!32167 r!7292))) b!5810346))

(assert (= (and b!5809633 ((_ is Union!15827) (regTwo!32167 r!7292))) b!5810347))

(declare-fun b_lambda!218997 () Bool)

(assert (= b_lambda!218989 (or b!5809649 b_lambda!218997)))

(declare-fun bs!1371525 () Bool)

(declare-fun d!1829641 () Bool)

(assert (= bs!1371525 (and d!1829641 b!5809649)))

(assert (=> bs!1371525 (= (dynLambda!24920 lambda!317310 lt!2299852) (derivationStepZipperUp!1091 lt!2299852 (h!70105 s!2326)))))

(assert (=> bs!1371525 m!6748176))

(assert (=> d!1829597 d!1829641))

(declare-fun b_lambda!218999 () Bool)

(assert (= b_lambda!218987 (or b!5809649 b_lambda!218999)))

(declare-fun bs!1371526 () Bool)

(declare-fun d!1829643 () Bool)

(assert (= bs!1371526 (and d!1829643 b!5809649)))

(assert (=> bs!1371526 (= (dynLambda!24920 lambda!317310 lt!2299848) (derivationStepZipperUp!1091 lt!2299848 (h!70105 s!2326)))))

(assert (=> bs!1371526 m!6748156))

(assert (=> d!1829569 d!1829643))

(declare-fun b_lambda!219001 () Bool)

(assert (= b_lambda!218991 (or b!5809649 b_lambda!219001)))

(declare-fun bs!1371527 () Bool)

(declare-fun d!1829645 () Bool)

(assert (= bs!1371527 (and d!1829645 b!5809649)))

(assert (=> bs!1371527 (= (dynLambda!24920 lambda!317310 lt!2299834) (derivationStepZipperUp!1091 lt!2299834 (h!70105 s!2326)))))

(assert (=> bs!1371527 m!6748178))

(assert (=> d!1829599 d!1829645))

(declare-fun b_lambda!219003 () Bool)

(assert (= b_lambda!218993 (or b!5809629 b_lambda!219003)))

(declare-fun bs!1371528 () Bool)

(declare-fun d!1829647 () Bool)

(assert (= bs!1371528 (and d!1829647 b!5809629)))

(declare-fun lt!2299980 () Unit!156914)

(assert (=> bs!1371528 (= lt!2299980 (lemmaConcatPreservesForall!328 (exprs!5711 lt!2299834) lt!2299835 lambda!317312))))

(assert (=> bs!1371528 (= (dynLambda!24922 lambda!317311 lt!2299834) (Context!10423 (++!14037 (exprs!5711 lt!2299834) lt!2299835)))))

(declare-fun m!6748744 () Bool)

(assert (=> bs!1371528 m!6748744))

(declare-fun m!6748746 () Bool)

(assert (=> bs!1371528 m!6748746))

(assert (=> d!1829619 d!1829647))

(declare-fun b_lambda!219005 () Bool)

(assert (= b_lambda!218995 (or b!5809649 b_lambda!219005)))

(declare-fun bs!1371529 () Bool)

(declare-fun d!1829649 () Bool)

(assert (= bs!1371529 (and d!1829649 b!5809649)))

(assert (=> bs!1371529 (= (dynLambda!24920 lambda!317310 (h!70106 zl!343)) (derivationStepZipperUp!1091 (h!70106 zl!343) (h!70105 s!2326)))))

(assert (=> bs!1371529 m!6748118))

(assert (=> d!1829627 d!1829649))

(check-sat (not b!5809735) (not b!5810163) (not b!5810058) (not d!1829517) (not d!1829599) (not b!5809704) (not b!5810226) (not b!5809978) (not b!5810192) (not b!5810317) (not b!5810029) (not b!5810278) (not b!5810133) (not d!1829483) (not setNonEmpty!39119) (not b!5810191) (not b_lambda!218999) (not b!5810279) (not b!5810321) (not d!1829575) (not d!1829589) (not d!1829635) (not b!5809968) (not b!5810225) (not b!5810059) (not d!1829627) (not b!5810292) (not d!1829601) (not d!1829623) (not b!5810343) (not d!1829571) (not d!1829559) (not d!1829547) (not b!5809891) (not d!1829541) (not b!5809973) (not bs!1371527) (not bm!453621) (not b!5810320) (not b!5809895) (not b!5810217) (not d!1829479) (not b!5810134) (not b!5810218) (not bm!453636) (not b!5810035) (not bm!453618) (not d!1829615) (not b!5809744) (not b!5809745) (not b!5810327) (not bm!453634) (not b!5810339) (not d!1829631) (not b!5810275) (not b!5809893) (not d!1829515) (not bm!453592) (not bm!453642) (not d!1829477) (not b!5810032) (not b!5810318) (not b_lambda!219005) (not b!5810060) (not b!5810329) (not b!5810027) (not b!5810224) (not b!5810174) (not b!5810346) (not b!5810347) (not b_lambda!218997) tp_is_empty!40907 (not b!5810026) (not bs!1371529) (not b!5809737) (not bm!453643) (not b!5809892) (not b!5809740) (not b!5809705) (not d!1829459) (not d!1829539) (not bs!1371525) (not b!5809941) (not b!5810186) (not b!5810276) (not b!5809951) (not d!1829619) (not d!1829597) (not b!5810196) (not d!1829509) (not d!1829495) (not b!5810099) (not b!5809976) (not b!5809743) (not b!5810298) (not b!5809894) (not bm!453589) (not bm!453573) (not d!1829507) (not d!1829497) (not bm!453576) (not bm!453644) (not d!1829621) (not b!5810034) (not b!5810223) (not b!5809970) (not d!1829569) (not b!5810277) (not d!1829549) (not b!5810342) (not bm!453632) (not b!5810197) (not b!5810061) (not bm!453572) (not d!1829607) (not b!5810030) (not d!1829519) (not d!1829593) (not bm!453620) (not b!5810338) (not d!1829503) (not b_lambda!219001) (not b!5810345) (not d!1829537) (not b!5810322) (not b!5810281) (not d!1829453) (not b!5810341) (not d!1829457) (not d!1829609) (not d!1829629) (not d!1829595) (not b!5810303) (not d!1829451) (not bm!453638) (not d!1829611) (not bm!453625) (not b!5809977) (not b!5810283) (not b!5810330) (not b!5809952) (not b_lambda!219003) (not b!5810304) (not bm!453641) (not b!5810316) (not bm!453639) (not b!5809887) (not bs!1371528) (not bm!453590) (not b!5810187) (not b!5810331) (not bs!1371526))
(check-sat)
(get-model)

(declare-fun d!1829681 () Bool)

(declare-fun res!2450317 () Bool)

(declare-fun e!3566620 () Bool)

(assert (=> d!1829681 (=> res!2450317 e!3566620)))

(assert (=> d!1829681 (= res!2450317 ((_ is Nil!63656) lt!2299977))))

(assert (=> d!1829681 (= (forall!14933 lt!2299977 lambda!317399) e!3566620)))

(declare-fun b!5810495 () Bool)

(declare-fun e!3566621 () Bool)

(assert (=> b!5810495 (= e!3566620 e!3566621)))

(declare-fun res!2450318 () Bool)

(assert (=> b!5810495 (=> (not res!2450318) (not e!3566621))))

(declare-fun dynLambda!24923 (Int Regex!15827) Bool)

(assert (=> b!5810495 (= res!2450318 (dynLambda!24923 lambda!317399 (h!70104 lt!2299977)))))

(declare-fun b!5810496 () Bool)

(assert (=> b!5810496 (= e!3566621 (forall!14933 (t!377133 lt!2299977) lambda!317399))))

(assert (= (and d!1829681 (not res!2450317)) b!5810495))

(assert (= (and b!5810495 res!2450318) b!5810496))

(declare-fun b_lambda!219021 () Bool)

(assert (=> (not b_lambda!219021) (not b!5810495)))

(declare-fun m!6748828 () Bool)

(assert (=> b!5810495 m!6748828))

(declare-fun m!6748830 () Bool)

(assert (=> b!5810496 m!6748830))

(assert (=> d!1829635 d!1829681))

(declare-fun b!5810497 () Bool)

(declare-fun e!3566622 () (InoxSet Context!10422))

(declare-fun call!453682 () (InoxSet Context!10422))

(assert (=> b!5810497 (= e!3566622 call!453682)))

(declare-fun bm!453672 () Bool)

(declare-fun call!453680 () (InoxSet Context!10422))

(declare-fun call!453678 () (InoxSet Context!10422))

(assert (=> bm!453672 (= call!453680 call!453678)))

(declare-fun c!1029556 () Bool)

(declare-fun b!5810498 () Bool)

(assert (=> b!5810498 (= c!1029556 ((_ is Star!15827) (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))))))

(declare-fun e!3566623 () (InoxSet Context!10422))

(assert (=> b!5810498 (= e!3566622 e!3566623)))

(declare-fun e!3566626 () Bool)

(declare-fun b!5810499 () Bool)

(assert (=> b!5810499 (= e!3566626 (nullable!5850 (regOne!32166 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292))))))))))

(declare-fun call!453677 () List!63780)

(declare-fun c!1029554 () Bool)

(declare-fun bm!453673 () Bool)

(declare-fun c!1029558 () Bool)

(assert (=> bm!453673 (= call!453677 ($colon$colon!1805 (exprs!5711 (ite (or c!1029458 c!1029457) lt!2299852 (Context!10423 call!453624))) (ite (or c!1029554 c!1029558) (regTwo!32166 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))) (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292))))))))))

(declare-fun bm!453674 () Bool)

(declare-fun call!453679 () List!63780)

(assert (=> bm!453674 (= call!453679 call!453677)))

(declare-fun c!1029555 () Bool)

(declare-fun bm!453675 () Bool)

(assert (=> bm!453675 (= call!453678 (derivationStepZipperDown!1165 (ite c!1029555 (regOne!32167 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))) (ite c!1029554 (regTwo!32166 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))) (ite c!1029558 (regOne!32166 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))) (reg!16156 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292))))))))) (ite (or c!1029555 c!1029554) (ite (or c!1029458 c!1029457) lt!2299852 (Context!10423 call!453624)) (Context!10423 call!453679)) (h!70105 s!2326)))))

(declare-fun b!5810500 () Bool)

(assert (=> b!5810500 (= e!3566623 call!453682)))

(declare-fun b!5810502 () Bool)

(assert (=> b!5810502 (= e!3566623 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810503 () Bool)

(declare-fun e!3566624 () (InoxSet Context!10422))

(declare-fun call!453681 () (InoxSet Context!10422))

(assert (=> b!5810503 (= e!3566624 ((_ map or) call!453678 call!453681))))

(declare-fun bm!453676 () Bool)

(assert (=> bm!453676 (= call!453681 (derivationStepZipperDown!1165 (ite c!1029555 (regTwo!32167 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))) (regOne!32166 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292))))))) (ite c!1029555 (ite (or c!1029458 c!1029457) lt!2299852 (Context!10423 call!453624)) (Context!10423 call!453677)) (h!70105 s!2326)))))

(declare-fun bm!453677 () Bool)

(assert (=> bm!453677 (= call!453682 call!453680)))

(declare-fun b!5810504 () Bool)

(declare-fun e!3566625 () (InoxSet Context!10422))

(assert (=> b!5810504 (= e!3566625 e!3566622)))

(assert (=> b!5810504 (= c!1029558 ((_ is Concat!24672) (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))))))

(declare-fun b!5810501 () Bool)

(declare-fun e!3566627 () (InoxSet Context!10422))

(assert (=> b!5810501 (= e!3566627 (store ((as const (Array Context!10422 Bool)) false) (ite (or c!1029458 c!1029457) lt!2299852 (Context!10423 call!453624)) true))))

(declare-fun d!1829683 () Bool)

(declare-fun c!1029557 () Bool)

(assert (=> d!1829683 (= c!1029557 (and ((_ is ElementMatch!15827) (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))) (= (c!1029329 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))) (h!70105 s!2326))))))

(assert (=> d!1829683 (= (derivationStepZipperDown!1165 (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292))))) (ite (or c!1029458 c!1029457) lt!2299852 (Context!10423 call!453624)) (h!70105 s!2326)) e!3566627)))

(declare-fun b!5810505 () Bool)

(assert (=> b!5810505 (= e!3566627 e!3566624)))

(assert (=> b!5810505 (= c!1029555 ((_ is Union!15827) (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))))))

(declare-fun b!5810506 () Bool)

(assert (=> b!5810506 (= c!1029554 e!3566626)))

(declare-fun res!2450319 () Bool)

(assert (=> b!5810506 (=> (not res!2450319) (not e!3566626))))

(assert (=> b!5810506 (= res!2450319 ((_ is Concat!24672) (ite c!1029458 (regOne!32167 (reg!16156 r!7292)) (ite c!1029457 (regTwo!32166 (reg!16156 r!7292)) (ite c!1029461 (regOne!32166 (reg!16156 r!7292)) (reg!16156 (reg!16156 r!7292)))))))))

(assert (=> b!5810506 (= e!3566624 e!3566625)))

(declare-fun b!5810507 () Bool)

(assert (=> b!5810507 (= e!3566625 ((_ map or) call!453681 call!453680))))

(assert (= (and d!1829683 c!1029557) b!5810501))

(assert (= (and d!1829683 (not c!1029557)) b!5810505))

(assert (= (and b!5810505 c!1029555) b!5810503))

(assert (= (and b!5810505 (not c!1029555)) b!5810506))

(assert (= (and b!5810506 res!2450319) b!5810499))

(assert (= (and b!5810506 c!1029554) b!5810507))

(assert (= (and b!5810506 (not c!1029554)) b!5810504))

(assert (= (and b!5810504 c!1029558) b!5810497))

(assert (= (and b!5810504 (not c!1029558)) b!5810498))

(assert (= (and b!5810498 c!1029556) b!5810500))

(assert (= (and b!5810498 (not c!1029556)) b!5810502))

(assert (= (or b!5810497 b!5810500) bm!453674))

(assert (= (or b!5810497 b!5810500) bm!453677))

(assert (= (or b!5810507 bm!453674) bm!453673))

(assert (= (or b!5810507 bm!453677) bm!453672))

(assert (= (or b!5810503 b!5810507) bm!453676))

(assert (= (or b!5810503 bm!453672) bm!453675))

(declare-fun m!6748832 () Bool)

(assert (=> bm!453675 m!6748832))

(declare-fun m!6748834 () Bool)

(assert (=> bm!453673 m!6748834))

(declare-fun m!6748836 () Bool)

(assert (=> bm!453676 m!6748836))

(declare-fun m!6748838 () Bool)

(assert (=> b!5810501 m!6748838))

(declare-fun m!6748840 () Bool)

(assert (=> b!5810499 m!6748840))

(assert (=> bm!453620 d!1829683))

(assert (=> d!1829619 d!1829615))

(declare-fun d!1829685 () Bool)

(assert (=> d!1829685 (= (map!14593 lt!2299836 lambda!317311) (store ((as const (Array Context!10422 Bool)) false) (dynLambda!24922 lambda!317311 lt!2299834) true))))

(assert (=> d!1829685 true))

(declare-fun _$12!1601 () Unit!156914)

(assert (=> d!1829685 (= (choose!44127 lt!2299836 lt!2299834 lambda!317311) _$12!1601)))

(declare-fun b_lambda!219023 () Bool)

(assert (=> (not b_lambda!219023) (not d!1829685)))

(declare-fun bs!1371548 () Bool)

(assert (= bs!1371548 d!1829685))

(assert (=> bs!1371548 m!6748212))

(assert (=> bs!1371548 m!6748646))

(assert (=> bs!1371548 m!6748646))

(assert (=> bs!1371548 m!6748648))

(assert (=> d!1829619 d!1829685))

(declare-fun d!1829687 () Bool)

(assert (=> d!1829687 true))

(assert (=> d!1829687 true))

(declare-fun res!2450322 () Bool)

(assert (=> d!1829687 (= (choose!44109 lambda!317307) res!2450322)))

(assert (=> d!1829495 d!1829687))

(declare-fun b!5810508 () Bool)

(declare-fun e!3566628 () (InoxSet Context!10422))

(declare-fun call!453688 () (InoxSet Context!10422))

(assert (=> b!5810508 (= e!3566628 call!453688)))

(declare-fun bm!453678 () Bool)

(declare-fun call!453686 () (InoxSet Context!10422))

(declare-fun call!453684 () (InoxSet Context!10422))

(assert (=> bm!453678 (= call!453686 call!453684)))

(declare-fun b!5810509 () Bool)

(declare-fun c!1029561 () Bool)

(assert (=> b!5810509 (= c!1029561 ((_ is Star!15827) (h!70104 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun e!3566629 () (InoxSet Context!10422))

(assert (=> b!5810509 (= e!3566628 e!3566629)))

(declare-fun b!5810510 () Bool)

(declare-fun e!3566632 () Bool)

(assert (=> b!5810510 (= e!3566632 (nullable!5850 (regOne!32166 (h!70104 (exprs!5711 (h!70106 zl!343))))))))

(declare-fun c!1029563 () Bool)

(declare-fun c!1029559 () Bool)

(declare-fun call!453683 () List!63780)

(declare-fun bm!453679 () Bool)

(assert (=> bm!453679 (= call!453683 ($colon$colon!1805 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343))))) (ite (or c!1029559 c!1029563) (regTwo!32166 (h!70104 (exprs!5711 (h!70106 zl!343)))) (h!70104 (exprs!5711 (h!70106 zl!343))))))))

(declare-fun bm!453680 () Bool)

(declare-fun call!453685 () List!63780)

(assert (=> bm!453680 (= call!453685 call!453683)))

(declare-fun bm!453681 () Bool)

(declare-fun c!1029560 () Bool)

(assert (=> bm!453681 (= call!453684 (derivationStepZipperDown!1165 (ite c!1029560 (regOne!32167 (h!70104 (exprs!5711 (h!70106 zl!343)))) (ite c!1029559 (regTwo!32166 (h!70104 (exprs!5711 (h!70106 zl!343)))) (ite c!1029563 (regOne!32166 (h!70104 (exprs!5711 (h!70106 zl!343)))) (reg!16156 (h!70104 (exprs!5711 (h!70106 zl!343))))))) (ite (or c!1029560 c!1029559) (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343)))) (Context!10423 call!453685)) (h!70105 s!2326)))))

(declare-fun b!5810511 () Bool)

(assert (=> b!5810511 (= e!3566629 call!453688)))

(declare-fun b!5810513 () Bool)

(assert (=> b!5810513 (= e!3566629 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810514 () Bool)

(declare-fun e!3566630 () (InoxSet Context!10422))

(declare-fun call!453687 () (InoxSet Context!10422))

(assert (=> b!5810514 (= e!3566630 ((_ map or) call!453684 call!453687))))

(declare-fun bm!453682 () Bool)

(assert (=> bm!453682 (= call!453687 (derivationStepZipperDown!1165 (ite c!1029560 (regTwo!32167 (h!70104 (exprs!5711 (h!70106 zl!343)))) (regOne!32166 (h!70104 (exprs!5711 (h!70106 zl!343))))) (ite c!1029560 (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343)))) (Context!10423 call!453683)) (h!70105 s!2326)))))

(declare-fun bm!453683 () Bool)

(assert (=> bm!453683 (= call!453688 call!453686)))

(declare-fun b!5810515 () Bool)

(declare-fun e!3566631 () (InoxSet Context!10422))

(assert (=> b!5810515 (= e!3566631 e!3566628)))

(assert (=> b!5810515 (= c!1029563 ((_ is Concat!24672) (h!70104 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5810512 () Bool)

(declare-fun e!3566633 () (InoxSet Context!10422))

(assert (=> b!5810512 (= e!3566633 (store ((as const (Array Context!10422 Bool)) false) (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343)))) true))))

(declare-fun d!1829689 () Bool)

(declare-fun c!1029562 () Bool)

(assert (=> d!1829689 (= c!1029562 (and ((_ is ElementMatch!15827) (h!70104 (exprs!5711 (h!70106 zl!343)))) (= (c!1029329 (h!70104 (exprs!5711 (h!70106 zl!343)))) (h!70105 s!2326))))))

(assert (=> d!1829689 (= (derivationStepZipperDown!1165 (h!70104 (exprs!5711 (h!70106 zl!343))) (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343)))) (h!70105 s!2326)) e!3566633)))

(declare-fun b!5810516 () Bool)

(assert (=> b!5810516 (= e!3566633 e!3566630)))

(assert (=> b!5810516 (= c!1029560 ((_ is Union!15827) (h!70104 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5810517 () Bool)

(assert (=> b!5810517 (= c!1029559 e!3566632)))

(declare-fun res!2450323 () Bool)

(assert (=> b!5810517 (=> (not res!2450323) (not e!3566632))))

(assert (=> b!5810517 (= res!2450323 ((_ is Concat!24672) (h!70104 (exprs!5711 (h!70106 zl!343)))))))

(assert (=> b!5810517 (= e!3566630 e!3566631)))

(declare-fun b!5810518 () Bool)

(assert (=> b!5810518 (= e!3566631 ((_ map or) call!453687 call!453686))))

(assert (= (and d!1829689 c!1029562) b!5810512))

(assert (= (and d!1829689 (not c!1029562)) b!5810516))

(assert (= (and b!5810516 c!1029560) b!5810514))

(assert (= (and b!5810516 (not c!1029560)) b!5810517))

(assert (= (and b!5810517 res!2450323) b!5810510))

(assert (= (and b!5810517 c!1029559) b!5810518))

(assert (= (and b!5810517 (not c!1029559)) b!5810515))

(assert (= (and b!5810515 c!1029563) b!5810508))

(assert (= (and b!5810515 (not c!1029563)) b!5810509))

(assert (= (and b!5810509 c!1029561) b!5810511))

(assert (= (and b!5810509 (not c!1029561)) b!5810513))

(assert (= (or b!5810508 b!5810511) bm!453680))

(assert (= (or b!5810508 b!5810511) bm!453683))

(assert (= (or b!5810518 bm!453680) bm!453679))

(assert (= (or b!5810518 bm!453683) bm!453678))

(assert (= (or b!5810514 b!5810518) bm!453682))

(assert (= (or b!5810514 bm!453678) bm!453681))

(declare-fun m!6748842 () Bool)

(assert (=> bm!453681 m!6748842))

(declare-fun m!6748844 () Bool)

(assert (=> bm!453679 m!6748844))

(declare-fun m!6748846 () Bool)

(assert (=> bm!453682 m!6748846))

(declare-fun m!6748848 () Bool)

(assert (=> b!5810512 m!6748848))

(declare-fun m!6748850 () Bool)

(assert (=> b!5810510 m!6748850))

(assert (=> bm!453644 d!1829689))

(declare-fun b!5810519 () Bool)

(declare-fun e!3566634 () (InoxSet Context!10422))

(declare-fun call!453694 () (InoxSet Context!10422))

(assert (=> b!5810519 (= e!3566634 call!453694)))

(declare-fun bm!453684 () Bool)

(declare-fun call!453692 () (InoxSet Context!10422))

(declare-fun call!453690 () (InoxSet Context!10422))

(assert (=> bm!453684 (= call!453692 call!453690)))

(declare-fun b!5810520 () Bool)

(declare-fun c!1029566 () Bool)

(assert (=> b!5810520 (= c!1029566 ((_ is Star!15827) (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))))))

(declare-fun e!3566635 () (InoxSet Context!10422))

(assert (=> b!5810520 (= e!3566634 e!3566635)))

(declare-fun b!5810521 () Bool)

(declare-fun e!3566638 () Bool)

(assert (=> b!5810521 (= e!3566638 (nullable!5850 (regOne!32166 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))))))))

(declare-fun call!453689 () List!63780)

(declare-fun c!1029564 () Bool)

(declare-fun c!1029568 () Bool)

(declare-fun bm!453685 () Bool)

(assert (=> bm!453685 (= call!453689 ($colon$colon!1805 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))))) (ite (or c!1029564 c!1029568) (regTwo!32166 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))))))))

(declare-fun bm!453686 () Bool)

(declare-fun call!453691 () List!63780)

(assert (=> bm!453686 (= call!453691 call!453689)))

(declare-fun bm!453687 () Bool)

(declare-fun c!1029565 () Bool)

(assert (=> bm!453687 (= call!453690 (derivationStepZipperDown!1165 (ite c!1029565 (regOne!32167 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (ite c!1029564 (regTwo!32166 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (ite c!1029568 (regOne!32166 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (reg!16156 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))))))) (ite (or c!1029565 c!1029564) (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (Context!10423 call!453691)) (h!70105 s!2326)))))

(declare-fun b!5810522 () Bool)

(assert (=> b!5810522 (= e!3566635 call!453694)))

(declare-fun b!5810524 () Bool)

(assert (=> b!5810524 (= e!3566635 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810525 () Bool)

(declare-fun e!3566636 () (InoxSet Context!10422))

(declare-fun call!453693 () (InoxSet Context!10422))

(assert (=> b!5810525 (= e!3566636 ((_ map or) call!453690 call!453693))))

(declare-fun bm!453688 () Bool)

(assert (=> bm!453688 (= call!453693 (derivationStepZipperDown!1165 (ite c!1029565 (regTwo!32167 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (regOne!32166 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))))) (ite c!1029565 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (Context!10423 call!453689)) (h!70105 s!2326)))))

(declare-fun bm!453689 () Bool)

(assert (=> bm!453689 (= call!453694 call!453692)))

(declare-fun b!5810526 () Bool)

(declare-fun e!3566637 () (InoxSet Context!10422))

(assert (=> b!5810526 (= e!3566637 e!3566634)))

(assert (=> b!5810526 (= c!1029568 ((_ is Concat!24672) (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))))))

(declare-fun b!5810523 () Bool)

(declare-fun e!3566639 () (InoxSet Context!10422))

(assert (=> b!5810523 (= e!3566639 (store ((as const (Array Context!10422 Bool)) false) (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) true))))

(declare-fun d!1829691 () Bool)

(declare-fun c!1029567 () Bool)

(assert (=> d!1829691 (= c!1029567 (and ((_ is ElementMatch!15827) (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (= (c!1029329 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (h!70105 s!2326))))))

(assert (=> d!1829691 (= (derivationStepZipperDown!1165 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))) (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (h!70105 s!2326)) e!3566639)))

(declare-fun b!5810527 () Bool)

(assert (=> b!5810527 (= e!3566639 e!3566636)))

(assert (=> b!5810527 (= c!1029565 ((_ is Union!15827) (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))))))

(declare-fun b!5810528 () Bool)

(assert (=> b!5810528 (= c!1029564 e!3566638)))

(declare-fun res!2450324 () Bool)

(assert (=> b!5810528 (=> (not res!2450324) (not e!3566638))))

(assert (=> b!5810528 (= res!2450324 ((_ is Concat!24672) (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))))))

(assert (=> b!5810528 (= e!3566636 e!3566637)))

(declare-fun b!5810529 () Bool)

(assert (=> b!5810529 (= e!3566637 ((_ map or) call!453693 call!453692))))

(assert (= (and d!1829691 c!1029567) b!5810523))

(assert (= (and d!1829691 (not c!1029567)) b!5810527))

(assert (= (and b!5810527 c!1029565) b!5810525))

(assert (= (and b!5810527 (not c!1029565)) b!5810528))

(assert (= (and b!5810528 res!2450324) b!5810521))

(assert (= (and b!5810528 c!1029564) b!5810529))

(assert (= (and b!5810528 (not c!1029564)) b!5810526))

(assert (= (and b!5810526 c!1029568) b!5810519))

(assert (= (and b!5810526 (not c!1029568)) b!5810520))

(assert (= (and b!5810520 c!1029566) b!5810522))

(assert (= (and b!5810520 (not c!1029566)) b!5810524))

(assert (= (or b!5810519 b!5810522) bm!453686))

(assert (= (or b!5810519 b!5810522) bm!453689))

(assert (= (or b!5810529 bm!453686) bm!453685))

(assert (= (or b!5810529 bm!453689) bm!453684))

(assert (= (or b!5810525 b!5810529) bm!453688))

(assert (= (or b!5810525 bm!453684) bm!453687))

(declare-fun m!6748852 () Bool)

(assert (=> bm!453687 m!6748852))

(declare-fun m!6748854 () Bool)

(assert (=> bm!453685 m!6748854))

(declare-fun m!6748856 () Bool)

(assert (=> bm!453688 m!6748856))

(declare-fun m!6748858 () Bool)

(assert (=> b!5810523 m!6748858))

(declare-fun m!6748860 () Bool)

(assert (=> b!5810521 m!6748860))

(assert (=> bm!453641 d!1829691))

(declare-fun c!1029569 () Bool)

(declare-fun call!453696 () Bool)

(declare-fun c!1029570 () Bool)

(declare-fun bm!453690 () Bool)

(assert (=> bm!453690 (= call!453696 (validRegex!7563 (ite c!1029569 (reg!16156 lt!2299942) (ite c!1029570 (regTwo!32167 lt!2299942) (regTwo!32166 lt!2299942)))))))

(declare-fun b!5810530 () Bool)

(declare-fun e!3566642 () Bool)

(declare-fun e!3566640 () Bool)

(assert (=> b!5810530 (= e!3566642 e!3566640)))

(declare-fun res!2450328 () Bool)

(assert (=> b!5810530 (= res!2450328 (not (nullable!5850 (reg!16156 lt!2299942))))))

(assert (=> b!5810530 (=> (not res!2450328) (not e!3566640))))

(declare-fun b!5810531 () Bool)

(declare-fun res!2450326 () Bool)

(declare-fun e!3566641 () Bool)

(assert (=> b!5810531 (=> res!2450326 e!3566641)))

(assert (=> b!5810531 (= res!2450326 (not ((_ is Concat!24672) lt!2299942)))))

(declare-fun e!3566643 () Bool)

(assert (=> b!5810531 (= e!3566643 e!3566641)))

(declare-fun bm!453691 () Bool)

(declare-fun call!453695 () Bool)

(assert (=> bm!453691 (= call!453695 call!453696)))

(declare-fun b!5810532 () Bool)

(declare-fun e!3566644 () Bool)

(assert (=> b!5810532 (= e!3566644 call!453695)))

(declare-fun b!5810533 () Bool)

(assert (=> b!5810533 (= e!3566641 e!3566644)))

(declare-fun res!2450329 () Bool)

(assert (=> b!5810533 (=> (not res!2450329) (not e!3566644))))

(declare-fun call!453697 () Bool)

(assert (=> b!5810533 (= res!2450329 call!453697)))

(declare-fun bm!453692 () Bool)

(assert (=> bm!453692 (= call!453697 (validRegex!7563 (ite c!1029570 (regOne!32167 lt!2299942) (regOne!32166 lt!2299942))))))

(declare-fun d!1829693 () Bool)

(declare-fun res!2450325 () Bool)

(declare-fun e!3566645 () Bool)

(assert (=> d!1829693 (=> res!2450325 e!3566645)))

(assert (=> d!1829693 (= res!2450325 ((_ is ElementMatch!15827) lt!2299942))))

(assert (=> d!1829693 (= (validRegex!7563 lt!2299942) e!3566645)))

(declare-fun b!5810534 () Bool)

(declare-fun e!3566646 () Bool)

(assert (=> b!5810534 (= e!3566646 call!453695)))

(declare-fun b!5810535 () Bool)

(assert (=> b!5810535 (= e!3566640 call!453696)))

(declare-fun b!5810536 () Bool)

(assert (=> b!5810536 (= e!3566642 e!3566643)))

(assert (=> b!5810536 (= c!1029570 ((_ is Union!15827) lt!2299942))))

(declare-fun b!5810537 () Bool)

(declare-fun res!2450327 () Bool)

(assert (=> b!5810537 (=> (not res!2450327) (not e!3566646))))

(assert (=> b!5810537 (= res!2450327 call!453697)))

(assert (=> b!5810537 (= e!3566643 e!3566646)))

(declare-fun b!5810538 () Bool)

(assert (=> b!5810538 (= e!3566645 e!3566642)))

(assert (=> b!5810538 (= c!1029569 ((_ is Star!15827) lt!2299942))))

(assert (= (and d!1829693 (not res!2450325)) b!5810538))

(assert (= (and b!5810538 c!1029569) b!5810530))

(assert (= (and b!5810538 (not c!1029569)) b!5810536))

(assert (= (and b!5810530 res!2450328) b!5810535))

(assert (= (and b!5810536 c!1029570) b!5810537))

(assert (= (and b!5810536 (not c!1029570)) b!5810531))

(assert (= (and b!5810537 res!2450327) b!5810534))

(assert (= (and b!5810531 (not res!2450326)) b!5810533))

(assert (= (and b!5810533 res!2450329) b!5810532))

(assert (= (or b!5810534 b!5810532) bm!453691))

(assert (= (or b!5810537 b!5810533) bm!453692))

(assert (= (or b!5810535 bm!453691) bm!453690))

(declare-fun m!6748862 () Bool)

(assert (=> bm!453690 m!6748862))

(declare-fun m!6748864 () Bool)

(assert (=> b!5810530 m!6748864))

(declare-fun m!6748866 () Bool)

(assert (=> bm!453692 m!6748866))

(assert (=> d!1829571 d!1829693))

(declare-fun bs!1371549 () Bool)

(declare-fun d!1829695 () Bool)

(assert (= bs!1371549 (and d!1829695 d!1829575)))

(declare-fun lambda!317405 () Int)

(assert (=> bs!1371549 (= lambda!317405 lambda!317377)))

(declare-fun bs!1371550 () Bool)

(assert (= bs!1371550 (and d!1829695 b!5809629)))

(assert (=> bs!1371550 (= lambda!317405 lambda!317312)))

(declare-fun bs!1371551 () Bool)

(assert (= bs!1371551 (and d!1829695 d!1829607)))

(assert (=> bs!1371551 (= lambda!317405 lambda!317380)))

(declare-fun bs!1371552 () Bool)

(assert (= bs!1371552 (and d!1829695 d!1829635)))

(assert (=> bs!1371552 (= lambda!317405 lambda!317399)))

(declare-fun bs!1371553 () Bool)

(assert (= bs!1371553 (and d!1829695 d!1829631)))

(assert (=> bs!1371553 (= lambda!317405 lambda!317394)))

(declare-fun bs!1371554 () Bool)

(assert (= bs!1371554 (and d!1829695 d!1829519)))

(assert (=> bs!1371554 (= lambda!317405 lambda!317360)))

(declare-fun b!5810539 () Bool)

(declare-fun e!3566651 () Regex!15827)

(assert (=> b!5810539 (= e!3566651 EmptyLang!15827)))

(declare-fun b!5810540 () Bool)

(declare-fun e!3566649 () Bool)

(declare-fun lt!2299987 () Regex!15827)

(assert (=> b!5810540 (= e!3566649 (isUnion!738 lt!2299987))))

(declare-fun b!5810541 () Bool)

(declare-fun e!3566648 () Bool)

(assert (=> b!5810541 (= e!3566648 e!3566649)))

(declare-fun c!1029571 () Bool)

(assert (=> b!5810541 (= c!1029571 (isEmpty!35575 (tail!11358 (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658)))))))

(declare-fun b!5810542 () Bool)

(declare-fun e!3566652 () Bool)

(assert (=> b!5810542 (= e!3566652 (isEmpty!35575 (t!377133 (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658)))))))

(declare-fun b!5810543 () Bool)

(declare-fun e!3566647 () Bool)

(assert (=> b!5810543 (= e!3566647 e!3566648)))

(declare-fun c!1029573 () Bool)

(assert (=> b!5810543 (= c!1029573 (isEmpty!35575 (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658))))))

(assert (=> d!1829695 e!3566647))

(declare-fun res!2450330 () Bool)

(assert (=> d!1829695 (=> (not res!2450330) (not e!3566647))))

(assert (=> d!1829695 (= res!2450330 (validRegex!7563 lt!2299987))))

(declare-fun e!3566650 () Regex!15827)

(assert (=> d!1829695 (= lt!2299987 e!3566650)))

(declare-fun c!1029572 () Bool)

(assert (=> d!1829695 (= c!1029572 e!3566652)))

(declare-fun res!2450331 () Bool)

(assert (=> d!1829695 (=> (not res!2450331) (not e!3566652))))

(assert (=> d!1829695 (= res!2450331 ((_ is Cons!63656) (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658))))))

(assert (=> d!1829695 (forall!14933 (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658)) lambda!317405)))

(assert (=> d!1829695 (= (generalisedUnion!1690 (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658))) lt!2299987)))

(declare-fun b!5810544 () Bool)

(assert (=> b!5810544 (= e!3566651 (Union!15827 (h!70104 (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658))) (generalisedUnion!1690 (t!377133 (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658))))))))

(declare-fun b!5810545 () Bool)

(assert (=> b!5810545 (= e!3566650 (h!70104 (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658))))))

(declare-fun b!5810546 () Bool)

(assert (=> b!5810546 (= e!3566648 (isEmptyLang!1308 lt!2299987))))

(declare-fun b!5810547 () Bool)

(assert (=> b!5810547 (= e!3566650 e!3566651)))

(declare-fun c!1029574 () Bool)

(assert (=> b!5810547 (= c!1029574 ((_ is Cons!63656) (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658))))))

(declare-fun b!5810548 () Bool)

(assert (=> b!5810548 (= e!3566649 (= lt!2299987 (head!12263 (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658)))))))

(assert (= (and d!1829695 res!2450331) b!5810542))

(assert (= (and d!1829695 c!1029572) b!5810545))

(assert (= (and d!1829695 (not c!1029572)) b!5810547))

(assert (= (and b!5810547 c!1029574) b!5810544))

(assert (= (and b!5810547 (not c!1029574)) b!5810539))

(assert (= (and d!1829695 res!2450330) b!5810543))

(assert (= (and b!5810543 c!1029573) b!5810546))

(assert (= (and b!5810543 (not c!1029573)) b!5810541))

(assert (= (and b!5810541 c!1029571) b!5810548))

(assert (= (and b!5810541 (not c!1029571)) b!5810540))

(assert (=> b!5810541 m!6748558))

(declare-fun m!6748868 () Bool)

(assert (=> b!5810541 m!6748868))

(assert (=> b!5810541 m!6748868))

(declare-fun m!6748870 () Bool)

(assert (=> b!5810541 m!6748870))

(declare-fun m!6748872 () Bool)

(assert (=> d!1829695 m!6748872))

(assert (=> d!1829695 m!6748558))

(declare-fun m!6748874 () Bool)

(assert (=> d!1829695 m!6748874))

(declare-fun m!6748876 () Bool)

(assert (=> b!5810542 m!6748876))

(declare-fun m!6748878 () Bool)

(assert (=> b!5810544 m!6748878))

(declare-fun m!6748880 () Bool)

(assert (=> b!5810546 m!6748880))

(declare-fun m!6748882 () Bool)

(assert (=> b!5810540 m!6748882))

(assert (=> b!5810548 m!6748558))

(declare-fun m!6748884 () Bool)

(assert (=> b!5810548 m!6748884))

(assert (=> b!5810543 m!6748558))

(declare-fun m!6748886 () Bool)

(assert (=> b!5810543 m!6748886))

(assert (=> d!1829571 d!1829695))

(declare-fun bs!1371555 () Bool)

(declare-fun d!1829697 () Bool)

(assert (= bs!1371555 (and d!1829697 d!1829575)))

(declare-fun lambda!317406 () Int)

(assert (=> bs!1371555 (= lambda!317406 lambda!317377)))

(declare-fun bs!1371556 () Bool)

(assert (= bs!1371556 (and d!1829697 b!5809629)))

(assert (=> bs!1371556 (= lambda!317406 lambda!317312)))

(declare-fun bs!1371557 () Bool)

(assert (= bs!1371557 (and d!1829697 d!1829635)))

(assert (=> bs!1371557 (= lambda!317406 lambda!317399)))

(declare-fun bs!1371558 () Bool)

(assert (= bs!1371558 (and d!1829697 d!1829631)))

(assert (=> bs!1371558 (= lambda!317406 lambda!317394)))

(declare-fun bs!1371559 () Bool)

(assert (= bs!1371559 (and d!1829697 d!1829519)))

(assert (=> bs!1371559 (= lambda!317406 lambda!317360)))

(declare-fun bs!1371560 () Bool)

(assert (= bs!1371560 (and d!1829697 d!1829695)))

(assert (=> bs!1371560 (= lambda!317406 lambda!317405)))

(declare-fun bs!1371561 () Bool)

(assert (= bs!1371561 (and d!1829697 d!1829607)))

(assert (=> bs!1371561 (= lambda!317406 lambda!317380)))

(declare-fun lt!2299988 () List!63780)

(assert (=> d!1829697 (forall!14933 lt!2299988 lambda!317406)))

(declare-fun e!3566653 () List!63780)

(assert (=> d!1829697 (= lt!2299988 e!3566653)))

(declare-fun c!1029575 () Bool)

(assert (=> d!1829697 (= c!1029575 ((_ is Cons!63658) (Cons!63658 lt!2299852 Nil!63658)))))

(assert (=> d!1829697 (= (unfocusZipperList!1255 (Cons!63658 lt!2299852 Nil!63658)) lt!2299988)))

(declare-fun b!5810549 () Bool)

(assert (=> b!5810549 (= e!3566653 (Cons!63656 (generalisedConcat!1442 (exprs!5711 (h!70106 (Cons!63658 lt!2299852 Nil!63658)))) (unfocusZipperList!1255 (t!377135 (Cons!63658 lt!2299852 Nil!63658)))))))

(declare-fun b!5810550 () Bool)

(assert (=> b!5810550 (= e!3566653 Nil!63656)))

(assert (= (and d!1829697 c!1029575) b!5810549))

(assert (= (and d!1829697 (not c!1029575)) b!5810550))

(declare-fun m!6748888 () Bool)

(assert (=> d!1829697 m!6748888))

(declare-fun m!6748890 () Bool)

(assert (=> b!5810549 m!6748890))

(declare-fun m!6748892 () Bool)

(assert (=> b!5810549 m!6748892))

(assert (=> d!1829571 d!1829697))

(declare-fun d!1829699 () Bool)

(declare-fun nullableFct!1875 (Regex!15827) Bool)

(assert (=> d!1829699 (= (nullable!5850 lt!2299853) (nullableFct!1875 lt!2299853))))

(declare-fun bs!1371562 () Bool)

(assert (= bs!1371562 d!1829699))

(declare-fun m!6748894 () Bool)

(assert (=> bs!1371562 m!6748894))

(assert (=> b!5809740 d!1829699))

(declare-fun d!1829701 () Bool)

(assert (=> d!1829701 (= (nullable!5850 (h!70104 (exprs!5711 lt!2299848))) (nullableFct!1875 (h!70104 (exprs!5711 lt!2299848))))))

(declare-fun bs!1371563 () Bool)

(assert (= bs!1371563 d!1829701))

(declare-fun m!6748896 () Bool)

(assert (=> bs!1371563 m!6748896))

(assert (=> b!5810133 d!1829701))

(declare-fun d!1829703 () Bool)

(assert (=> d!1829703 (forall!14933 (++!14037 (exprs!5711 lt!2299834) lt!2299835) lambda!317312)))

(declare-fun lt!2299989 () Unit!156914)

(assert (=> d!1829703 (= lt!2299989 (choose!44124 (exprs!5711 lt!2299834) lt!2299835 lambda!317312))))

(assert (=> d!1829703 (forall!14933 (exprs!5711 lt!2299834) lambda!317312)))

(assert (=> d!1829703 (= (lemmaConcatPreservesForall!328 (exprs!5711 lt!2299834) lt!2299835 lambda!317312) lt!2299989)))

(declare-fun bs!1371564 () Bool)

(assert (= bs!1371564 d!1829703))

(assert (=> bs!1371564 m!6748746))

(assert (=> bs!1371564 m!6748746))

(declare-fun m!6748898 () Bool)

(assert (=> bs!1371564 m!6748898))

(declare-fun m!6748900 () Bool)

(assert (=> bs!1371564 m!6748900))

(declare-fun m!6748902 () Bool)

(assert (=> bs!1371564 m!6748902))

(assert (=> bs!1371528 d!1829703))

(declare-fun b!5810552 () Bool)

(declare-fun e!3566655 () List!63780)

(assert (=> b!5810552 (= e!3566655 (Cons!63656 (h!70104 (exprs!5711 lt!2299834)) (++!14037 (t!377133 (exprs!5711 lt!2299834)) lt!2299835)))))

(declare-fun b!5810551 () Bool)

(assert (=> b!5810551 (= e!3566655 lt!2299835)))

(declare-fun b!5810553 () Bool)

(declare-fun res!2450332 () Bool)

(declare-fun e!3566654 () Bool)

(assert (=> b!5810553 (=> (not res!2450332) (not e!3566654))))

(declare-fun lt!2299990 () List!63780)

(assert (=> b!5810553 (= res!2450332 (= (size!40110 lt!2299990) (+ (size!40110 (exprs!5711 lt!2299834)) (size!40110 lt!2299835))))))

(declare-fun d!1829705 () Bool)

(assert (=> d!1829705 e!3566654))

(declare-fun res!2450333 () Bool)

(assert (=> d!1829705 (=> (not res!2450333) (not e!3566654))))

(assert (=> d!1829705 (= res!2450333 (= (content!11664 lt!2299990) ((_ map or) (content!11664 (exprs!5711 lt!2299834)) (content!11664 lt!2299835))))))

(assert (=> d!1829705 (= lt!2299990 e!3566655)))

(declare-fun c!1029576 () Bool)

(assert (=> d!1829705 (= c!1029576 ((_ is Nil!63656) (exprs!5711 lt!2299834)))))

(assert (=> d!1829705 (= (++!14037 (exprs!5711 lt!2299834) lt!2299835) lt!2299990)))

(declare-fun b!5810554 () Bool)

(assert (=> b!5810554 (= e!3566654 (or (not (= lt!2299835 Nil!63656)) (= lt!2299990 (exprs!5711 lt!2299834))))))

(assert (= (and d!1829705 c!1029576) b!5810551))

(assert (= (and d!1829705 (not c!1029576)) b!5810552))

(assert (= (and d!1829705 res!2450333) b!5810553))

(assert (= (and b!5810553 res!2450332) b!5810554))

(declare-fun m!6748904 () Bool)

(assert (=> b!5810552 m!6748904))

(declare-fun m!6748906 () Bool)

(assert (=> b!5810553 m!6748906))

(declare-fun m!6748908 () Bool)

(assert (=> b!5810553 m!6748908))

(assert (=> b!5810553 m!6748658))

(declare-fun m!6748910 () Bool)

(assert (=> d!1829705 m!6748910))

(declare-fun m!6748912 () Bool)

(assert (=> d!1829705 m!6748912))

(assert (=> d!1829705 m!6748664))

(assert (=> bs!1371528 d!1829705))

(declare-fun d!1829707 () Bool)

(assert (=> d!1829707 (= (flatMap!1434 lt!2299860 lambda!317379) (choose!44117 lt!2299860 lambda!317379))))

(declare-fun bs!1371565 () Bool)

(assert (= bs!1371565 d!1829707))

(declare-fun m!6748914 () Bool)

(assert (=> bs!1371565 m!6748914))

(assert (=> d!1829595 d!1829707))

(declare-fun d!1829709 () Bool)

(assert (=> d!1829709 (= (flatMap!1434 lt!2299862 lambda!317363) (choose!44117 lt!2299862 lambda!317363))))

(declare-fun bs!1371566 () Bool)

(assert (= bs!1371566 d!1829709))

(declare-fun m!6748916 () Bool)

(assert (=> bs!1371566 m!6748916))

(assert (=> d!1829541 d!1829709))

(declare-fun bs!1371567 () Bool)

(declare-fun b!5810563 () Bool)

(assert (= bs!1371567 (and b!5810563 d!1829459)))

(declare-fun lambda!317407 () Int)

(assert (=> bs!1371567 (not (= lambda!317407 lambda!317326))))

(declare-fun bs!1371568 () Bool)

(assert (= bs!1371568 (and b!5810563 d!1829503)))

(assert (=> bs!1371568 (not (= lambda!317407 lambda!317352))))

(declare-fun bs!1371569 () Bool)

(assert (= bs!1371569 (and b!5810563 b!5809628)))

(assert (=> bs!1371569 (= (and (= (reg!16156 (regOne!32167 r!7292)) (reg!16156 r!7292)) (= (regOne!32167 r!7292) r!7292)) (= lambda!317407 lambda!317308))))

(declare-fun bs!1371570 () Bool)

(assert (= bs!1371570 (and b!5810563 d!1829483)))

(assert (=> bs!1371570 (not (= lambda!317407 lambda!317339))))

(declare-fun bs!1371571 () Bool)

(assert (= bs!1371571 (and b!5810563 b!5809950)))

(assert (=> bs!1371571 (= (and (= (reg!16156 (regOne!32167 r!7292)) (reg!16156 r!7292)) (= (regOne!32167 r!7292) r!7292)) (= lambda!317407 lambda!317353))))

(declare-fun bs!1371572 () Bool)

(assert (= bs!1371572 (and b!5810563 b!5809700)))

(assert (=> bs!1371572 (not (= lambda!317407 lambda!317318))))

(assert (=> bs!1371569 (not (= lambda!317407 lambda!317309))))

(assert (=> bs!1371567 (= (and (= (reg!16156 (regOne!32167 r!7292)) (reg!16156 r!7292)) (= (regOne!32167 r!7292) (Star!15827 (reg!16156 r!7292)))) (= lambda!317407 lambda!317327))))

(declare-fun bs!1371573 () Bool)

(assert (= bs!1371573 (and b!5810563 b!5809947)))

(assert (=> bs!1371573 (not (= lambda!317407 lambda!317354))))

(declare-fun bs!1371574 () Bool)

(assert (= bs!1371574 (and b!5810563 b!5809703)))

(assert (=> bs!1371574 (= (and (= (reg!16156 (regOne!32167 r!7292)) (reg!16156 lt!2299853)) (= (regOne!32167 r!7292) lt!2299853)) (= lambda!317407 lambda!317317))))

(assert (=> bs!1371569 (not (= lambda!317407 lambda!317307))))

(assert (=> bs!1371570 (not (= lambda!317407 lambda!317338))))

(assert (=> b!5810563 true))

(assert (=> b!5810563 true))

(declare-fun bs!1371575 () Bool)

(declare-fun b!5810560 () Bool)

(assert (= bs!1371575 (and b!5810560 d!1829459)))

(declare-fun lambda!317408 () Int)

(assert (=> bs!1371575 (not (= lambda!317408 lambda!317326))))

(declare-fun bs!1371576 () Bool)

(assert (= bs!1371576 (and b!5810560 d!1829503)))

(assert (=> bs!1371576 (not (= lambda!317408 lambda!317352))))

(declare-fun bs!1371577 () Bool)

(assert (= bs!1371577 (and b!5810560 b!5809628)))

(assert (=> bs!1371577 (not (= lambda!317408 lambda!317308))))

(declare-fun bs!1371578 () Bool)

(assert (= bs!1371578 (and b!5810560 d!1829483)))

(assert (=> bs!1371578 (= (and (= (regOne!32166 (regOne!32167 r!7292)) (reg!16156 r!7292)) (= (regTwo!32166 (regOne!32167 r!7292)) r!7292)) (= lambda!317408 lambda!317339))))

(declare-fun bs!1371579 () Bool)

(assert (= bs!1371579 (and b!5810560 b!5809950)))

(assert (=> bs!1371579 (not (= lambda!317408 lambda!317353))))

(declare-fun bs!1371580 () Bool)

(assert (= bs!1371580 (and b!5810560 b!5809700)))

(assert (=> bs!1371580 (= (and (= (regOne!32166 (regOne!32167 r!7292)) (regOne!32166 lt!2299853)) (= (regTwo!32166 (regOne!32167 r!7292)) (regTwo!32166 lt!2299853))) (= lambda!317408 lambda!317318))))

(assert (=> bs!1371577 (= (and (= (regOne!32166 (regOne!32167 r!7292)) (reg!16156 r!7292)) (= (regTwo!32166 (regOne!32167 r!7292)) r!7292)) (= lambda!317408 lambda!317309))))

(assert (=> bs!1371575 (not (= lambda!317408 lambda!317327))))

(declare-fun bs!1371581 () Bool)

(assert (= bs!1371581 (and b!5810560 b!5809947)))

(assert (=> bs!1371581 (= (and (= (regOne!32166 (regOne!32167 r!7292)) (regOne!32166 r!7292)) (= (regTwo!32166 (regOne!32167 r!7292)) (regTwo!32166 r!7292))) (= lambda!317408 lambda!317354))))

(declare-fun bs!1371582 () Bool)

(assert (= bs!1371582 (and b!5810560 b!5810563)))

(assert (=> bs!1371582 (not (= lambda!317408 lambda!317407))))

(declare-fun bs!1371583 () Bool)

(assert (= bs!1371583 (and b!5810560 b!5809703)))

(assert (=> bs!1371583 (not (= lambda!317408 lambda!317317))))

(assert (=> bs!1371577 (not (= lambda!317408 lambda!317307))))

(assert (=> bs!1371578 (not (= lambda!317408 lambda!317338))))

(assert (=> b!5810560 true))

(assert (=> b!5810560 true))

(declare-fun b!5810555 () Bool)

(declare-fun e!3566659 () Bool)

(declare-fun e!3566657 () Bool)

(assert (=> b!5810555 (= e!3566659 e!3566657)))

(declare-fun c!1029577 () Bool)

(assert (=> b!5810555 (= c!1029577 ((_ is Star!15827) (regOne!32167 r!7292)))))

(declare-fun bm!453693 () Bool)

(declare-fun call!453698 () Bool)

(assert (=> bm!453693 (= call!453698 (Exists!2927 (ite c!1029577 lambda!317407 lambda!317408)))))

(declare-fun b!5810556 () Bool)

(declare-fun res!2450334 () Bool)

(declare-fun e!3566660 () Bool)

(assert (=> b!5810556 (=> res!2450334 e!3566660)))

(declare-fun call!453699 () Bool)

(assert (=> b!5810556 (= res!2450334 call!453699)))

(assert (=> b!5810556 (= e!3566657 e!3566660)))

(declare-fun b!5810557 () Bool)

(declare-fun e!3566658 () Bool)

(assert (=> b!5810557 (= e!3566658 call!453699)))

(declare-fun b!5810558 () Bool)

(declare-fun e!3566661 () Bool)

(assert (=> b!5810558 (= e!3566661 (= s!2326 (Cons!63657 (c!1029329 (regOne!32167 r!7292)) Nil!63657)))))

(declare-fun b!5810559 () Bool)

(declare-fun c!1029580 () Bool)

(assert (=> b!5810559 (= c!1029580 ((_ is ElementMatch!15827) (regOne!32167 r!7292)))))

(declare-fun e!3566662 () Bool)

(assert (=> b!5810559 (= e!3566662 e!3566661)))

(declare-fun bm!453694 () Bool)

(assert (=> bm!453694 (= call!453699 (isEmpty!35571 s!2326))))

(declare-fun d!1829711 () Bool)

(declare-fun c!1029579 () Bool)

(assert (=> d!1829711 (= c!1029579 ((_ is EmptyExpr!15827) (regOne!32167 r!7292)))))

(assert (=> d!1829711 (= (matchRSpec!2930 (regOne!32167 r!7292) s!2326) e!3566658)))

(assert (=> b!5810560 (= e!3566657 call!453698)))

(declare-fun b!5810561 () Bool)

(declare-fun c!1029578 () Bool)

(assert (=> b!5810561 (= c!1029578 ((_ is Union!15827) (regOne!32167 r!7292)))))

(assert (=> b!5810561 (= e!3566661 e!3566659)))

(declare-fun b!5810562 () Bool)

(assert (=> b!5810562 (= e!3566658 e!3566662)))

(declare-fun res!2450335 () Bool)

(assert (=> b!5810562 (= res!2450335 (not ((_ is EmptyLang!15827) (regOne!32167 r!7292))))))

(assert (=> b!5810562 (=> (not res!2450335) (not e!3566662))))

(assert (=> b!5810563 (= e!3566660 call!453698)))

(declare-fun b!5810564 () Bool)

(declare-fun e!3566656 () Bool)

(assert (=> b!5810564 (= e!3566659 e!3566656)))

(declare-fun res!2450336 () Bool)

(assert (=> b!5810564 (= res!2450336 (matchRSpec!2930 (regOne!32167 (regOne!32167 r!7292)) s!2326))))

(assert (=> b!5810564 (=> res!2450336 e!3566656)))

(declare-fun b!5810565 () Bool)

(assert (=> b!5810565 (= e!3566656 (matchRSpec!2930 (regTwo!32167 (regOne!32167 r!7292)) s!2326))))

(assert (= (and d!1829711 c!1029579) b!5810557))

(assert (= (and d!1829711 (not c!1029579)) b!5810562))

(assert (= (and b!5810562 res!2450335) b!5810559))

(assert (= (and b!5810559 c!1029580) b!5810558))

(assert (= (and b!5810559 (not c!1029580)) b!5810561))

(assert (= (and b!5810561 c!1029578) b!5810564))

(assert (= (and b!5810561 (not c!1029578)) b!5810555))

(assert (= (and b!5810564 (not res!2450336)) b!5810565))

(assert (= (and b!5810555 c!1029577) b!5810556))

(assert (= (and b!5810555 (not c!1029577)) b!5810560))

(assert (= (and b!5810556 (not res!2450334)) b!5810563))

(assert (= (or b!5810563 b!5810560) bm!453693))

(assert (= (or b!5810557 b!5810556) bm!453694))

(declare-fun m!6748918 () Bool)

(assert (=> bm!453693 m!6748918))

(assert (=> bm!453694 m!6748148))

(declare-fun m!6748920 () Bool)

(assert (=> b!5810564 m!6748920))

(declare-fun m!6748922 () Bool)

(assert (=> b!5810565 m!6748922))

(assert (=> b!5809951 d!1829711))

(declare-fun d!1829713 () Bool)

(assert (=> d!1829713 (= (isEmpty!35575 (exprs!5711 (h!70106 zl!343))) ((_ is Nil!63656) (exprs!5711 (h!70106 zl!343))))))

(assert (=> b!5810032 d!1829713))

(declare-fun c!1029581 () Bool)

(declare-fun c!1029582 () Bool)

(declare-fun call!453701 () Bool)

(declare-fun bm!453695 () Bool)

(assert (=> bm!453695 (= call!453701 (validRegex!7563 (ite c!1029581 (reg!16156 lt!2299925) (ite c!1029582 (regTwo!32167 lt!2299925) (regTwo!32166 lt!2299925)))))))

(declare-fun b!5810566 () Bool)

(declare-fun e!3566665 () Bool)

(declare-fun e!3566663 () Bool)

(assert (=> b!5810566 (= e!3566665 e!3566663)))

(declare-fun res!2450340 () Bool)

(assert (=> b!5810566 (= res!2450340 (not (nullable!5850 (reg!16156 lt!2299925))))))

(assert (=> b!5810566 (=> (not res!2450340) (not e!3566663))))

(declare-fun b!5810567 () Bool)

(declare-fun res!2450338 () Bool)

(declare-fun e!3566664 () Bool)

(assert (=> b!5810567 (=> res!2450338 e!3566664)))

(assert (=> b!5810567 (= res!2450338 (not ((_ is Concat!24672) lt!2299925)))))

(declare-fun e!3566666 () Bool)

(assert (=> b!5810567 (= e!3566666 e!3566664)))

(declare-fun bm!453696 () Bool)

(declare-fun call!453700 () Bool)

(assert (=> bm!453696 (= call!453700 call!453701)))

(declare-fun b!5810568 () Bool)

(declare-fun e!3566667 () Bool)

(assert (=> b!5810568 (= e!3566667 call!453700)))

(declare-fun b!5810569 () Bool)

(assert (=> b!5810569 (= e!3566664 e!3566667)))

(declare-fun res!2450341 () Bool)

(assert (=> b!5810569 (=> (not res!2450341) (not e!3566667))))

(declare-fun call!453702 () Bool)

(assert (=> b!5810569 (= res!2450341 call!453702)))

(declare-fun bm!453697 () Bool)

(assert (=> bm!453697 (= call!453702 (validRegex!7563 (ite c!1029582 (regOne!32167 lt!2299925) (regOne!32166 lt!2299925))))))

(declare-fun d!1829715 () Bool)

(declare-fun res!2450337 () Bool)

(declare-fun e!3566668 () Bool)

(assert (=> d!1829715 (=> res!2450337 e!3566668)))

(assert (=> d!1829715 (= res!2450337 ((_ is ElementMatch!15827) lt!2299925))))

(assert (=> d!1829715 (= (validRegex!7563 lt!2299925) e!3566668)))

(declare-fun b!5810570 () Bool)

(declare-fun e!3566669 () Bool)

(assert (=> b!5810570 (= e!3566669 call!453700)))

(declare-fun b!5810571 () Bool)

(assert (=> b!5810571 (= e!3566663 call!453701)))

(declare-fun b!5810572 () Bool)

(assert (=> b!5810572 (= e!3566665 e!3566666)))

(assert (=> b!5810572 (= c!1029582 ((_ is Union!15827) lt!2299925))))

(declare-fun b!5810573 () Bool)

(declare-fun res!2450339 () Bool)

(assert (=> b!5810573 (=> (not res!2450339) (not e!3566669))))

(assert (=> b!5810573 (= res!2450339 call!453702)))

(assert (=> b!5810573 (= e!3566666 e!3566669)))

(declare-fun b!5810574 () Bool)

(assert (=> b!5810574 (= e!3566668 e!3566665)))

(assert (=> b!5810574 (= c!1029581 ((_ is Star!15827) lt!2299925))))

(assert (= (and d!1829715 (not res!2450337)) b!5810574))

(assert (= (and b!5810574 c!1029581) b!5810566))

(assert (= (and b!5810574 (not c!1029581)) b!5810572))

(assert (= (and b!5810566 res!2450340) b!5810571))

(assert (= (and b!5810572 c!1029582) b!5810573))

(assert (= (and b!5810572 (not c!1029582)) b!5810567))

(assert (= (and b!5810573 res!2450339) b!5810570))

(assert (= (and b!5810567 (not res!2450338)) b!5810569))

(assert (= (and b!5810569 res!2450341) b!5810568))

(assert (= (or b!5810570 b!5810568) bm!453696))

(assert (= (or b!5810573 b!5810569) bm!453697))

(assert (= (or b!5810571 bm!453696) bm!453695))

(declare-fun m!6748924 () Bool)

(assert (=> bm!453695 m!6748924))

(declare-fun m!6748926 () Bool)

(assert (=> b!5810566 m!6748926))

(declare-fun m!6748928 () Bool)

(assert (=> bm!453697 m!6748928))

(assert (=> d!1829549 d!1829715))

(declare-fun bs!1371584 () Bool)

(declare-fun d!1829717 () Bool)

(assert (= bs!1371584 (and d!1829717 d!1829575)))

(declare-fun lambda!317409 () Int)

(assert (=> bs!1371584 (= lambda!317409 lambda!317377)))

(declare-fun bs!1371585 () Bool)

(assert (= bs!1371585 (and d!1829717 d!1829697)))

(assert (=> bs!1371585 (= lambda!317409 lambda!317406)))

(declare-fun bs!1371586 () Bool)

(assert (= bs!1371586 (and d!1829717 b!5809629)))

(assert (=> bs!1371586 (= lambda!317409 lambda!317312)))

(declare-fun bs!1371587 () Bool)

(assert (= bs!1371587 (and d!1829717 d!1829635)))

(assert (=> bs!1371587 (= lambda!317409 lambda!317399)))

(declare-fun bs!1371588 () Bool)

(assert (= bs!1371588 (and d!1829717 d!1829631)))

(assert (=> bs!1371588 (= lambda!317409 lambda!317394)))

(declare-fun bs!1371589 () Bool)

(assert (= bs!1371589 (and d!1829717 d!1829519)))

(assert (=> bs!1371589 (= lambda!317409 lambda!317360)))

(declare-fun bs!1371590 () Bool)

(assert (= bs!1371590 (and d!1829717 d!1829695)))

(assert (=> bs!1371590 (= lambda!317409 lambda!317405)))

(declare-fun bs!1371591 () Bool)

(assert (= bs!1371591 (and d!1829717 d!1829607)))

(assert (=> bs!1371591 (= lambda!317409 lambda!317380)))

(declare-fun b!5810575 () Bool)

(declare-fun e!3566674 () Regex!15827)

(assert (=> b!5810575 (= e!3566674 EmptyLang!15827)))

(declare-fun b!5810576 () Bool)

(declare-fun e!3566672 () Bool)

(declare-fun lt!2299991 () Regex!15827)

(assert (=> b!5810576 (= e!3566672 (isUnion!738 lt!2299991))))

(declare-fun b!5810577 () Bool)

(declare-fun e!3566671 () Bool)

(assert (=> b!5810577 (= e!3566671 e!3566672)))

(declare-fun c!1029583 () Bool)

(assert (=> b!5810577 (= c!1029583 (isEmpty!35575 (tail!11358 (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658)))))))

(declare-fun b!5810578 () Bool)

(declare-fun e!3566675 () Bool)

(assert (=> b!5810578 (= e!3566675 (isEmpty!35575 (t!377133 (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658)))))))

(declare-fun b!5810579 () Bool)

(declare-fun e!3566670 () Bool)

(assert (=> b!5810579 (= e!3566670 e!3566671)))

(declare-fun c!1029585 () Bool)

(assert (=> b!5810579 (= c!1029585 (isEmpty!35575 (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658))))))

(assert (=> d!1829717 e!3566670))

(declare-fun res!2450342 () Bool)

(assert (=> d!1829717 (=> (not res!2450342) (not e!3566670))))

(assert (=> d!1829717 (= res!2450342 (validRegex!7563 lt!2299991))))

(declare-fun e!3566673 () Regex!15827)

(assert (=> d!1829717 (= lt!2299991 e!3566673)))

(declare-fun c!1029584 () Bool)

(assert (=> d!1829717 (= c!1029584 e!3566675)))

(declare-fun res!2450343 () Bool)

(assert (=> d!1829717 (=> (not res!2450343) (not e!3566675))))

(assert (=> d!1829717 (= res!2450343 ((_ is Cons!63656) (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658))))))

(assert (=> d!1829717 (forall!14933 (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658)) lambda!317409)))

(assert (=> d!1829717 (= (generalisedUnion!1690 (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658))) lt!2299991)))

(declare-fun b!5810580 () Bool)

(assert (=> b!5810580 (= e!3566674 (Union!15827 (h!70104 (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658))) (generalisedUnion!1690 (t!377133 (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658))))))))

(declare-fun b!5810581 () Bool)

(assert (=> b!5810581 (= e!3566673 (h!70104 (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658))))))

(declare-fun b!5810582 () Bool)

(assert (=> b!5810582 (= e!3566671 (isEmptyLang!1308 lt!2299991))))

(declare-fun b!5810583 () Bool)

(assert (=> b!5810583 (= e!3566673 e!3566674)))

(declare-fun c!1029586 () Bool)

(assert (=> b!5810583 (= c!1029586 ((_ is Cons!63656) (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658))))))

(declare-fun b!5810584 () Bool)

(assert (=> b!5810584 (= e!3566672 (= lt!2299991 (head!12263 (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658)))))))

(assert (= (and d!1829717 res!2450343) b!5810578))

(assert (= (and d!1829717 c!1029584) b!5810581))

(assert (= (and d!1829717 (not c!1029584)) b!5810583))

(assert (= (and b!5810583 c!1029586) b!5810580))

(assert (= (and b!5810583 (not c!1029586)) b!5810575))

(assert (= (and d!1829717 res!2450342) b!5810579))

(assert (= (and b!5810579 c!1029585) b!5810582))

(assert (= (and b!5810579 (not c!1029585)) b!5810577))

(assert (= (and b!5810577 c!1029583) b!5810584))

(assert (= (and b!5810577 (not c!1029583)) b!5810576))

(assert (=> b!5810577 m!6748500))

(declare-fun m!6748930 () Bool)

(assert (=> b!5810577 m!6748930))

(assert (=> b!5810577 m!6748930))

(declare-fun m!6748932 () Bool)

(assert (=> b!5810577 m!6748932))

(declare-fun m!6748934 () Bool)

(assert (=> d!1829717 m!6748934))

(assert (=> d!1829717 m!6748500))

(declare-fun m!6748936 () Bool)

(assert (=> d!1829717 m!6748936))

(declare-fun m!6748938 () Bool)

(assert (=> b!5810578 m!6748938))

(declare-fun m!6748940 () Bool)

(assert (=> b!5810580 m!6748940))

(declare-fun m!6748942 () Bool)

(assert (=> b!5810582 m!6748942))

(declare-fun m!6748944 () Bool)

(assert (=> b!5810576 m!6748944))

(assert (=> b!5810584 m!6748500))

(declare-fun m!6748946 () Bool)

(assert (=> b!5810584 m!6748946))

(assert (=> b!5810579 m!6748500))

(declare-fun m!6748948 () Bool)

(assert (=> b!5810579 m!6748948))

(assert (=> d!1829549 d!1829717))

(declare-fun bs!1371592 () Bool)

(declare-fun d!1829719 () Bool)

(assert (= bs!1371592 (and d!1829719 d!1829575)))

(declare-fun lambda!317410 () Int)

(assert (=> bs!1371592 (= lambda!317410 lambda!317377)))

(declare-fun bs!1371593 () Bool)

(assert (= bs!1371593 (and d!1829719 d!1829697)))

(assert (=> bs!1371593 (= lambda!317410 lambda!317406)))

(declare-fun bs!1371594 () Bool)

(assert (= bs!1371594 (and d!1829719 b!5809629)))

(assert (=> bs!1371594 (= lambda!317410 lambda!317312)))

(declare-fun bs!1371595 () Bool)

(assert (= bs!1371595 (and d!1829719 d!1829717)))

(assert (=> bs!1371595 (= lambda!317410 lambda!317409)))

(declare-fun bs!1371596 () Bool)

(assert (= bs!1371596 (and d!1829719 d!1829635)))

(assert (=> bs!1371596 (= lambda!317410 lambda!317399)))

(declare-fun bs!1371597 () Bool)

(assert (= bs!1371597 (and d!1829719 d!1829631)))

(assert (=> bs!1371597 (= lambda!317410 lambda!317394)))

(declare-fun bs!1371598 () Bool)

(assert (= bs!1371598 (and d!1829719 d!1829519)))

(assert (=> bs!1371598 (= lambda!317410 lambda!317360)))

(declare-fun bs!1371599 () Bool)

(assert (= bs!1371599 (and d!1829719 d!1829695)))

(assert (=> bs!1371599 (= lambda!317410 lambda!317405)))

(declare-fun bs!1371600 () Bool)

(assert (= bs!1371600 (and d!1829719 d!1829607)))

(assert (=> bs!1371600 (= lambda!317410 lambda!317380)))

(declare-fun lt!2299992 () List!63780)

(assert (=> d!1829719 (forall!14933 lt!2299992 lambda!317410)))

(declare-fun e!3566676 () List!63780)

(assert (=> d!1829719 (= lt!2299992 e!3566676)))

(declare-fun c!1029587 () Bool)

(assert (=> d!1829719 (= c!1029587 ((_ is Cons!63658) (Cons!63658 lt!2299834 Nil!63658)))))

(assert (=> d!1829719 (= (unfocusZipperList!1255 (Cons!63658 lt!2299834 Nil!63658)) lt!2299992)))

(declare-fun b!5810585 () Bool)

(assert (=> b!5810585 (= e!3566676 (Cons!63656 (generalisedConcat!1442 (exprs!5711 (h!70106 (Cons!63658 lt!2299834 Nil!63658)))) (unfocusZipperList!1255 (t!377135 (Cons!63658 lt!2299834 Nil!63658)))))))

(declare-fun b!5810586 () Bool)

(assert (=> b!5810586 (= e!3566676 Nil!63656)))

(assert (= (and d!1829719 c!1029587) b!5810585))

(assert (= (and d!1829719 (not c!1029587)) b!5810586))

(declare-fun m!6748950 () Bool)

(assert (=> d!1829719 m!6748950))

(declare-fun m!6748952 () Bool)

(assert (=> b!5810585 m!6748952))

(declare-fun m!6748954 () Bool)

(assert (=> b!5810585 m!6748954))

(assert (=> d!1829549 d!1829719))

(declare-fun d!1829721 () Bool)

(assert (=> d!1829721 (= (head!12260 s!2326) (h!70105 s!2326))))

(assert (=> b!5809744 d!1829721))

(assert (=> d!1829515 d!1829481))

(assert (=> d!1829515 d!1829573))

(assert (=> bm!453592 d!1829481))

(assert (=> bm!453573 d!1829481))

(declare-fun d!1829723 () Bool)

(assert (=> d!1829723 (= (nullable!5850 (h!70104 (exprs!5711 lt!2299852))) (nullableFct!1875 (h!70104 (exprs!5711 lt!2299852))))))

(declare-fun bs!1371601 () Bool)

(assert (= bs!1371601 d!1829723))

(declare-fun m!6748956 () Bool)

(assert (=> bs!1371601 m!6748956))

(assert (=> b!5810191 d!1829723))

(declare-fun d!1829725 () Bool)

(assert (=> d!1829725 (= (isEmpty!35575 (tail!11358 (unfocusZipperList!1255 zl!343))) ((_ is Nil!63656) (tail!11358 (unfocusZipperList!1255 zl!343))))))

(assert (=> b!5810276 d!1829725))

(declare-fun d!1829727 () Bool)

(assert (=> d!1829727 (= (tail!11358 (unfocusZipperList!1255 zl!343)) (t!377133 (unfocusZipperList!1255 zl!343)))))

(assert (=> b!5810276 d!1829727))

(declare-fun d!1829729 () Bool)

(assert (=> d!1829729 (= (nullable!5850 (h!70104 (exprs!5711 lt!2299834))) (nullableFct!1875 (h!70104 (exprs!5711 lt!2299834))))))

(declare-fun bs!1371602 () Bool)

(assert (= bs!1371602 d!1829729))

(declare-fun m!6748958 () Bool)

(assert (=> bs!1371602 m!6748958))

(assert (=> b!5810196 d!1829729))

(declare-fun d!1829731 () Bool)

(declare-fun e!3566682 () Bool)

(assert (=> d!1829731 e!3566682))

(declare-fun res!2450348 () Bool)

(assert (=> d!1829731 (=> (not res!2450348) (not e!3566682))))

(declare-fun lt!2299995 () List!63781)

(declare-fun content!11665 (List!63781) (InoxSet C!31924))

(assert (=> d!1829731 (= res!2450348 (= (content!11665 lt!2299995) ((_ map or) (content!11665 (_1!36227 (get!21975 lt!2299895))) (content!11665 (_2!36227 (get!21975 lt!2299895))))))))

(declare-fun e!3566681 () List!63781)

(assert (=> d!1829731 (= lt!2299995 e!3566681)))

(declare-fun c!1029590 () Bool)

(assert (=> d!1829731 (= c!1029590 ((_ is Nil!63657) (_1!36227 (get!21975 lt!2299895))))))

(assert (=> d!1829731 (= (++!14038 (_1!36227 (get!21975 lt!2299895)) (_2!36227 (get!21975 lt!2299895))) lt!2299995)))

(declare-fun b!5810597 () Bool)

(declare-fun res!2450349 () Bool)

(assert (=> b!5810597 (=> (not res!2450349) (not e!3566682))))

(declare-fun size!40111 (List!63781) Int)

(assert (=> b!5810597 (= res!2450349 (= (size!40111 lt!2299995) (+ (size!40111 (_1!36227 (get!21975 lt!2299895))) (size!40111 (_2!36227 (get!21975 lt!2299895))))))))

(declare-fun b!5810596 () Bool)

(assert (=> b!5810596 (= e!3566681 (Cons!63657 (h!70105 (_1!36227 (get!21975 lt!2299895))) (++!14038 (t!377134 (_1!36227 (get!21975 lt!2299895))) (_2!36227 (get!21975 lt!2299895)))))))

(declare-fun b!5810598 () Bool)

(assert (=> b!5810598 (= e!3566682 (or (not (= (_2!36227 (get!21975 lt!2299895)) Nil!63657)) (= lt!2299995 (_1!36227 (get!21975 lt!2299895)))))))

(declare-fun b!5810595 () Bool)

(assert (=> b!5810595 (= e!3566681 (_2!36227 (get!21975 lt!2299895)))))

(assert (= (and d!1829731 c!1029590) b!5810595))

(assert (= (and d!1829731 (not c!1029590)) b!5810596))

(assert (= (and d!1829731 res!2450348) b!5810597))

(assert (= (and b!5810597 res!2450349) b!5810598))

(declare-fun m!6748960 () Bool)

(assert (=> d!1829731 m!6748960))

(declare-fun m!6748962 () Bool)

(assert (=> d!1829731 m!6748962))

(declare-fun m!6748964 () Bool)

(assert (=> d!1829731 m!6748964))

(declare-fun m!6748966 () Bool)

(assert (=> b!5810597 m!6748966))

(declare-fun m!6748968 () Bool)

(assert (=> b!5810597 m!6748968))

(declare-fun m!6748970 () Bool)

(assert (=> b!5810597 m!6748970))

(declare-fun m!6748972 () Bool)

(assert (=> b!5810596 m!6748972))

(assert (=> b!5809893 d!1829731))

(declare-fun d!1829733 () Bool)

(assert (=> d!1829733 (= (get!21975 lt!2299895) (v!51899 lt!2299895))))

(assert (=> b!5809893 d!1829733))

(assert (=> bs!1371525 d!1829603))

(declare-fun bs!1371603 () Bool)

(declare-fun d!1829735 () Bool)

(assert (= bs!1371603 (and d!1829735 d!1829719)))

(declare-fun lambda!317411 () Int)

(assert (=> bs!1371603 (= lambda!317411 lambda!317410)))

(declare-fun bs!1371604 () Bool)

(assert (= bs!1371604 (and d!1829735 d!1829575)))

(assert (=> bs!1371604 (= lambda!317411 lambda!317377)))

(declare-fun bs!1371605 () Bool)

(assert (= bs!1371605 (and d!1829735 d!1829697)))

(assert (=> bs!1371605 (= lambda!317411 lambda!317406)))

(declare-fun bs!1371606 () Bool)

(assert (= bs!1371606 (and d!1829735 b!5809629)))

(assert (=> bs!1371606 (= lambda!317411 lambda!317312)))

(declare-fun bs!1371607 () Bool)

(assert (= bs!1371607 (and d!1829735 d!1829717)))

(assert (=> bs!1371607 (= lambda!317411 lambda!317409)))

(declare-fun bs!1371608 () Bool)

(assert (= bs!1371608 (and d!1829735 d!1829635)))

(assert (=> bs!1371608 (= lambda!317411 lambda!317399)))

(declare-fun bs!1371609 () Bool)

(assert (= bs!1371609 (and d!1829735 d!1829631)))

(assert (=> bs!1371609 (= lambda!317411 lambda!317394)))

(declare-fun bs!1371610 () Bool)

(assert (= bs!1371610 (and d!1829735 d!1829519)))

(assert (=> bs!1371610 (= lambda!317411 lambda!317360)))

(declare-fun bs!1371611 () Bool)

(assert (= bs!1371611 (and d!1829735 d!1829695)))

(assert (=> bs!1371611 (= lambda!317411 lambda!317405)))

(declare-fun bs!1371612 () Bool)

(assert (= bs!1371612 (and d!1829735 d!1829607)))

(assert (=> bs!1371612 (= lambda!317411 lambda!317380)))

(assert (=> d!1829735 (= (inv!82814 setElem!39119) (forall!14933 (exprs!5711 setElem!39119) lambda!317411))))

(declare-fun bs!1371613 () Bool)

(assert (= bs!1371613 d!1829735))

(declare-fun m!6748974 () Bool)

(assert (=> bs!1371613 m!6748974))

(assert (=> setNonEmpty!39119 d!1829735))

(declare-fun d!1829737 () Bool)

(assert (=> d!1829737 (= (isEmpty!35571 (tail!11355 s!2326)) ((_ is Nil!63657) (tail!11355 s!2326)))))

(assert (=> b!5809970 d!1829737))

(declare-fun d!1829739 () Bool)

(assert (=> d!1829739 (= (tail!11355 s!2326) (t!377134 s!2326))))

(assert (=> b!5809970 d!1829739))

(declare-fun d!1829741 () Bool)

(assert (=> d!1829741 true))

(declare-fun setRes!39125 () Bool)

(assert (=> d!1829741 setRes!39125))

(declare-fun condSetEmpty!39125 () Bool)

(declare-fun res!2450352 () (InoxSet Context!10422))

(assert (=> d!1829741 (= condSetEmpty!39125 (= res!2450352 ((as const (Array Context!10422 Bool)) false)))))

(assert (=> d!1829741 (= (choose!44117 lt!2299836 lambda!317310) res!2450352)))

(declare-fun setIsEmpty!39125 () Bool)

(assert (=> setIsEmpty!39125 setRes!39125))

(declare-fun tp!1603506 () Bool)

(declare-fun e!3566685 () Bool)

(declare-fun setElem!39125 () Context!10422)

(declare-fun setNonEmpty!39125 () Bool)

(assert (=> setNonEmpty!39125 (= setRes!39125 (and tp!1603506 (inv!82814 setElem!39125) e!3566685))))

(declare-fun setRest!39125 () (InoxSet Context!10422))

(assert (=> setNonEmpty!39125 (= res!2450352 ((_ map or) (store ((as const (Array Context!10422 Bool)) false) setElem!39125 true) setRest!39125))))

(declare-fun b!5810601 () Bool)

(declare-fun tp!1603505 () Bool)

(assert (=> b!5810601 (= e!3566685 tp!1603505)))

(assert (= (and d!1829741 condSetEmpty!39125) setIsEmpty!39125))

(assert (= (and d!1829741 (not condSetEmpty!39125)) setNonEmpty!39125))

(assert (= setNonEmpty!39125 b!5810601))

(declare-fun m!6748976 () Bool)

(assert (=> setNonEmpty!39125 m!6748976))

(assert (=> d!1829601 d!1829741))

(assert (=> bs!1371529 d!1829625))

(declare-fun d!1829743 () Bool)

(declare-fun c!1029593 () Bool)

(assert (=> d!1829743 (= c!1029593 ((_ is Nil!63658) lt!2299904))))

(declare-fun e!3566688 () (InoxSet Context!10422))

(assert (=> d!1829743 (= (content!11662 lt!2299904) e!3566688)))

(declare-fun b!5810606 () Bool)

(assert (=> b!5810606 (= e!3566688 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810607 () Bool)

(assert (=> b!5810607 (= e!3566688 ((_ map or) (store ((as const (Array Context!10422 Bool)) false) (h!70106 lt!2299904) true) (content!11662 (t!377135 lt!2299904))))))

(assert (= (and d!1829743 c!1029593) b!5810606))

(assert (= (and d!1829743 (not c!1029593)) b!5810607))

(declare-fun m!6748978 () Bool)

(assert (=> b!5810607 m!6748978))

(declare-fun m!6748980 () Bool)

(assert (=> b!5810607 m!6748980))

(assert (=> b!5809941 d!1829743))

(declare-fun call!453704 () Bool)

(declare-fun bm!453698 () Bool)

(declare-fun c!1029595 () Bool)

(declare-fun c!1029594 () Bool)

(assert (=> bm!453698 (= call!453704 (validRegex!7563 (ite c!1029594 (reg!16156 (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292)))) (ite c!1029595 (regTwo!32167 (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292)))) (regTwo!32166 (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292))))))))))

(declare-fun b!5810608 () Bool)

(declare-fun e!3566691 () Bool)

(declare-fun e!3566689 () Bool)

(assert (=> b!5810608 (= e!3566691 e!3566689)))

(declare-fun res!2450356 () Bool)

(assert (=> b!5810608 (= res!2450356 (not (nullable!5850 (reg!16156 (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292)))))))))

(assert (=> b!5810608 (=> (not res!2450356) (not e!3566689))))

(declare-fun b!5810609 () Bool)

(declare-fun res!2450354 () Bool)

(declare-fun e!3566690 () Bool)

(assert (=> b!5810609 (=> res!2450354 e!3566690)))

(assert (=> b!5810609 (= res!2450354 (not ((_ is Concat!24672) (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292))))))))

(declare-fun e!3566692 () Bool)

(assert (=> b!5810609 (= e!3566692 e!3566690)))

(declare-fun bm!453699 () Bool)

(declare-fun call!453703 () Bool)

(assert (=> bm!453699 (= call!453703 call!453704)))

(declare-fun b!5810610 () Bool)

(declare-fun e!3566693 () Bool)

(assert (=> b!5810610 (= e!3566693 call!453703)))

(declare-fun b!5810611 () Bool)

(assert (=> b!5810611 (= e!3566690 e!3566693)))

(declare-fun res!2450357 () Bool)

(assert (=> b!5810611 (=> (not res!2450357) (not e!3566693))))

(declare-fun call!453705 () Bool)

(assert (=> b!5810611 (= res!2450357 call!453705)))

(declare-fun bm!453700 () Bool)

(assert (=> bm!453700 (= call!453705 (validRegex!7563 (ite c!1029595 (regOne!32167 (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292)))) (regOne!32166 (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292)))))))))

(declare-fun d!1829745 () Bool)

(declare-fun res!2450353 () Bool)

(declare-fun e!3566694 () Bool)

(assert (=> d!1829745 (=> res!2450353 e!3566694)))

(assert (=> d!1829745 (= res!2450353 ((_ is ElementMatch!15827) (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292)))))))

(assert (=> d!1829745 (= (validRegex!7563 (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292)))) e!3566694)))

(declare-fun b!5810612 () Bool)

(declare-fun e!3566695 () Bool)

(assert (=> b!5810612 (= e!3566695 call!453703)))

(declare-fun b!5810613 () Bool)

(assert (=> b!5810613 (= e!3566689 call!453704)))

(declare-fun b!5810614 () Bool)

(assert (=> b!5810614 (= e!3566691 e!3566692)))

(assert (=> b!5810614 (= c!1029595 ((_ is Union!15827) (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292)))))))

(declare-fun b!5810615 () Bool)

(declare-fun res!2450355 () Bool)

(assert (=> b!5810615 (=> (not res!2450355) (not e!3566695))))

(assert (=> b!5810615 (= res!2450355 call!453705)))

(assert (=> b!5810615 (= e!3566692 e!3566695)))

(declare-fun b!5810616 () Bool)

(assert (=> b!5810616 (= e!3566694 e!3566691)))

(assert (=> b!5810616 (= c!1029594 ((_ is Star!15827) (ite c!1029475 (reg!16156 r!7292) (ite c!1029476 (regTwo!32167 r!7292) (regTwo!32166 r!7292)))))))

(assert (= (and d!1829745 (not res!2450353)) b!5810616))

(assert (= (and b!5810616 c!1029594) b!5810608))

(assert (= (and b!5810616 (not c!1029594)) b!5810614))

(assert (= (and b!5810608 res!2450356) b!5810613))

(assert (= (and b!5810614 c!1029595) b!5810615))

(assert (= (and b!5810614 (not c!1029595)) b!5810609))

(assert (= (and b!5810615 res!2450355) b!5810612))

(assert (= (and b!5810609 (not res!2450354)) b!5810611))

(assert (= (and b!5810611 res!2450357) b!5810610))

(assert (= (or b!5810612 b!5810610) bm!453699))

(assert (= (or b!5810615 b!5810611) bm!453700))

(assert (= (or b!5810613 bm!453699) bm!453698))

(declare-fun m!6748982 () Bool)

(assert (=> bm!453698 m!6748982))

(declare-fun m!6748984 () Bool)

(assert (=> b!5810608 m!6748984))

(declare-fun m!6748986 () Bool)

(assert (=> bm!453700 m!6748986))

(assert (=> bm!453632 d!1829745))

(assert (=> bs!1371527 d!1829605))

(assert (=> bm!453576 d!1829481))

(declare-fun d!1829747 () Bool)

(assert (=> d!1829747 (= (head!12263 (exprs!5711 (h!70106 zl!343))) (h!70104 (exprs!5711 (h!70106 zl!343))))))

(assert (=> b!5810029 d!1829747))

(declare-fun d!1829749 () Bool)

(declare-fun res!2450358 () Bool)

(declare-fun e!3566696 () Bool)

(assert (=> d!1829749 (=> res!2450358 e!3566696)))

(assert (=> d!1829749 (= res!2450358 ((_ is Nil!63656) (exprs!5711 setElem!39116)))))

(assert (=> d!1829749 (= (forall!14933 (exprs!5711 setElem!39116) lambda!317377) e!3566696)))

(declare-fun b!5810617 () Bool)

(declare-fun e!3566697 () Bool)

(assert (=> b!5810617 (= e!3566696 e!3566697)))

(declare-fun res!2450359 () Bool)

(assert (=> b!5810617 (=> (not res!2450359) (not e!3566697))))

(assert (=> b!5810617 (= res!2450359 (dynLambda!24923 lambda!317377 (h!70104 (exprs!5711 setElem!39116))))))

(declare-fun b!5810618 () Bool)

(assert (=> b!5810618 (= e!3566697 (forall!14933 (t!377133 (exprs!5711 setElem!39116)) lambda!317377))))

(assert (= (and d!1829749 (not res!2450358)) b!5810617))

(assert (= (and b!5810617 res!2450359) b!5810618))

(declare-fun b_lambda!219025 () Bool)

(assert (=> (not b_lambda!219025) (not b!5810617)))

(declare-fun m!6748988 () Bool)

(assert (=> b!5810617 m!6748988))

(declare-fun m!6748990 () Bool)

(assert (=> b!5810618 m!6748990))

(assert (=> d!1829575 d!1829749))

(declare-fun d!1829751 () Bool)

(declare-fun e!3566698 () Bool)

(assert (=> d!1829751 e!3566698))

(declare-fun c!1029596 () Bool)

(assert (=> d!1829751 (= c!1029596 ((_ is EmptyExpr!15827) (derivativeStep!4593 r!7292 (head!12260 s!2326))))))

(declare-fun lt!2299996 () Bool)

(declare-fun e!3566703 () Bool)

(assert (=> d!1829751 (= lt!2299996 e!3566703)))

(declare-fun c!1029598 () Bool)

(assert (=> d!1829751 (= c!1029598 (isEmpty!35571 (tail!11355 s!2326)))))

(assert (=> d!1829751 (validRegex!7563 (derivativeStep!4593 r!7292 (head!12260 s!2326)))))

(assert (=> d!1829751 (= (matchR!8012 (derivativeStep!4593 r!7292 (head!12260 s!2326)) (tail!11355 s!2326)) lt!2299996)))

(declare-fun bm!453701 () Bool)

(declare-fun call!453706 () Bool)

(assert (=> bm!453701 (= call!453706 (isEmpty!35571 (tail!11355 s!2326)))))

(declare-fun b!5810619 () Bool)

(declare-fun res!2450365 () Bool)

(declare-fun e!3566704 () Bool)

(assert (=> b!5810619 (=> res!2450365 e!3566704)))

(declare-fun e!3566700 () Bool)

(assert (=> b!5810619 (= res!2450365 e!3566700)))

(declare-fun res!2450364 () Bool)

(assert (=> b!5810619 (=> (not res!2450364) (not e!3566700))))

(assert (=> b!5810619 (= res!2450364 lt!2299996)))

(declare-fun b!5810620 () Bool)

(assert (=> b!5810620 (= e!3566700 (= (head!12260 (tail!11355 s!2326)) (c!1029329 (derivativeStep!4593 r!7292 (head!12260 s!2326)))))))

(declare-fun b!5810621 () Bool)

(declare-fun e!3566702 () Bool)

(assert (=> b!5810621 (= e!3566698 e!3566702)))

(declare-fun c!1029597 () Bool)

(assert (=> b!5810621 (= c!1029597 ((_ is EmptyLang!15827) (derivativeStep!4593 r!7292 (head!12260 s!2326))))))

(declare-fun b!5810622 () Bool)

(declare-fun res!2450362 () Bool)

(declare-fun e!3566699 () Bool)

(assert (=> b!5810622 (=> res!2450362 e!3566699)))

(assert (=> b!5810622 (= res!2450362 (not (isEmpty!35571 (tail!11355 (tail!11355 s!2326)))))))

(declare-fun b!5810623 () Bool)

(assert (=> b!5810623 (= e!3566702 (not lt!2299996))))

(declare-fun b!5810624 () Bool)

(declare-fun e!3566701 () Bool)

(assert (=> b!5810624 (= e!3566701 e!3566699)))

(declare-fun res!2450367 () Bool)

(assert (=> b!5810624 (=> res!2450367 e!3566699)))

(assert (=> b!5810624 (= res!2450367 call!453706)))

(declare-fun b!5810625 () Bool)

(assert (=> b!5810625 (= e!3566703 (nullable!5850 (derivativeStep!4593 r!7292 (head!12260 s!2326))))))

(declare-fun b!5810626 () Bool)

(declare-fun res!2450360 () Bool)

(assert (=> b!5810626 (=> (not res!2450360) (not e!3566700))))

(assert (=> b!5810626 (= res!2450360 (not call!453706))))

(declare-fun b!5810627 () Bool)

(declare-fun res!2450361 () Bool)

(assert (=> b!5810627 (=> res!2450361 e!3566704)))

(assert (=> b!5810627 (= res!2450361 (not ((_ is ElementMatch!15827) (derivativeStep!4593 r!7292 (head!12260 s!2326)))))))

(assert (=> b!5810627 (= e!3566702 e!3566704)))

(declare-fun b!5810628 () Bool)

(assert (=> b!5810628 (= e!3566703 (matchR!8012 (derivativeStep!4593 (derivativeStep!4593 r!7292 (head!12260 s!2326)) (head!12260 (tail!11355 s!2326))) (tail!11355 (tail!11355 s!2326))))))

(declare-fun b!5810629 () Bool)

(assert (=> b!5810629 (= e!3566699 (not (= (head!12260 (tail!11355 s!2326)) (c!1029329 (derivativeStep!4593 r!7292 (head!12260 s!2326))))))))

(declare-fun b!5810630 () Bool)

(declare-fun res!2450366 () Bool)

(assert (=> b!5810630 (=> (not res!2450366) (not e!3566700))))

(assert (=> b!5810630 (= res!2450366 (isEmpty!35571 (tail!11355 (tail!11355 s!2326))))))

(declare-fun b!5810631 () Bool)

(assert (=> b!5810631 (= e!3566698 (= lt!2299996 call!453706))))

(declare-fun b!5810632 () Bool)

(assert (=> b!5810632 (= e!3566704 e!3566701)))

(declare-fun res!2450363 () Bool)

(assert (=> b!5810632 (=> (not res!2450363) (not e!3566701))))

(assert (=> b!5810632 (= res!2450363 (not lt!2299996))))

(assert (= (and d!1829751 c!1029598) b!5810625))

(assert (= (and d!1829751 (not c!1029598)) b!5810628))

(assert (= (and d!1829751 c!1029596) b!5810631))

(assert (= (and d!1829751 (not c!1029596)) b!5810621))

(assert (= (and b!5810621 c!1029597) b!5810623))

(assert (= (and b!5810621 (not c!1029597)) b!5810627))

(assert (= (and b!5810627 (not res!2450361)) b!5810619))

(assert (= (and b!5810619 res!2450364) b!5810626))

(assert (= (and b!5810626 res!2450360) b!5810630))

(assert (= (and b!5810630 res!2450366) b!5810620))

(assert (= (and b!5810619 (not res!2450365)) b!5810632))

(assert (= (and b!5810632 res!2450363) b!5810624))

(assert (= (and b!5810624 (not res!2450367)) b!5810622))

(assert (= (and b!5810622 (not res!2450362)) b!5810629))

(assert (= (or b!5810631 b!5810626 b!5810624) bm!453701))

(assert (=> d!1829751 m!6748232))

(assert (=> d!1829751 m!6748238))

(assert (=> d!1829751 m!6748410))

(declare-fun m!6748992 () Bool)

(assert (=> d!1829751 m!6748992))

(assert (=> b!5810628 m!6748232))

(declare-fun m!6748994 () Bool)

(assert (=> b!5810628 m!6748994))

(assert (=> b!5810628 m!6748410))

(assert (=> b!5810628 m!6748994))

(declare-fun m!6748996 () Bool)

(assert (=> b!5810628 m!6748996))

(assert (=> b!5810628 m!6748232))

(declare-fun m!6748998 () Bool)

(assert (=> b!5810628 m!6748998))

(assert (=> b!5810628 m!6748996))

(assert (=> b!5810628 m!6748998))

(declare-fun m!6749000 () Bool)

(assert (=> b!5810628 m!6749000))

(assert (=> b!5810625 m!6748410))

(declare-fun m!6749002 () Bool)

(assert (=> b!5810625 m!6749002))

(assert (=> b!5810630 m!6748232))

(assert (=> b!5810630 m!6748998))

(assert (=> b!5810630 m!6748998))

(declare-fun m!6749004 () Bool)

(assert (=> b!5810630 m!6749004))

(assert (=> b!5810629 m!6748232))

(assert (=> b!5810629 m!6748994))

(assert (=> bm!453701 m!6748232))

(assert (=> bm!453701 m!6748238))

(assert (=> b!5810620 m!6748232))

(assert (=> b!5810620 m!6748994))

(assert (=> b!5810622 m!6748232))

(assert (=> b!5810622 m!6748998))

(assert (=> b!5810622 m!6748998))

(assert (=> b!5810622 m!6749004))

(assert (=> b!5809976 d!1829751))

(declare-fun b!5810653 () Bool)

(declare-fun c!1029610 () Bool)

(assert (=> b!5810653 (= c!1029610 (nullable!5850 (regOne!32166 r!7292)))))

(declare-fun e!3566719 () Regex!15827)

(declare-fun e!3566718 () Regex!15827)

(assert (=> b!5810653 (= e!3566719 e!3566718)))

(declare-fun b!5810654 () Bool)

(declare-fun c!1029612 () Bool)

(assert (=> b!5810654 (= c!1029612 ((_ is Union!15827) r!7292))))

(declare-fun e!3566715 () Regex!15827)

(declare-fun e!3566717 () Regex!15827)

(assert (=> b!5810654 (= e!3566715 e!3566717)))

(declare-fun b!5810655 () Bool)

(declare-fun e!3566716 () Regex!15827)

(assert (=> b!5810655 (= e!3566716 EmptyLang!15827)))

(declare-fun b!5810656 () Bool)

(assert (=> b!5810656 (= e!3566716 e!3566715)))

(declare-fun c!1029611 () Bool)

(assert (=> b!5810656 (= c!1029611 ((_ is ElementMatch!15827) r!7292))))

(declare-fun c!1029609 () Bool)

(declare-fun call!453715 () Regex!15827)

(declare-fun bm!453710 () Bool)

(assert (=> bm!453710 (= call!453715 (derivativeStep!4593 (ite c!1029612 (regTwo!32167 r!7292) (ite c!1029609 (reg!16156 r!7292) (regOne!32166 r!7292))) (head!12260 s!2326)))))

(declare-fun b!5810657 () Bool)

(declare-fun call!453718 () Regex!15827)

(assert (=> b!5810657 (= e!3566719 (Concat!24672 call!453718 r!7292))))

(declare-fun b!5810658 () Bool)

(assert (=> b!5810658 (= e!3566715 (ite (= (head!12260 s!2326) (c!1029329 r!7292)) EmptyExpr!15827 EmptyLang!15827))))

(declare-fun call!453716 () Regex!15827)

(declare-fun b!5810659 () Bool)

(assert (=> b!5810659 (= e!3566718 (Union!15827 (Concat!24672 call!453718 (regTwo!32166 r!7292)) call!453716))))

(declare-fun b!5810660 () Bool)

(assert (=> b!5810660 (= e!3566717 e!3566719)))

(assert (=> b!5810660 (= c!1029609 ((_ is Star!15827) r!7292))))

(declare-fun d!1829753 () Bool)

(declare-fun lt!2299999 () Regex!15827)

(assert (=> d!1829753 (validRegex!7563 lt!2299999)))

(assert (=> d!1829753 (= lt!2299999 e!3566716)))

(declare-fun c!1029613 () Bool)

(assert (=> d!1829753 (= c!1029613 (or ((_ is EmptyExpr!15827) r!7292) ((_ is EmptyLang!15827) r!7292)))))

(assert (=> d!1829753 (validRegex!7563 r!7292)))

(assert (=> d!1829753 (= (derivativeStep!4593 r!7292 (head!12260 s!2326)) lt!2299999)))

(declare-fun bm!453711 () Bool)

(declare-fun call!453717 () Regex!15827)

(assert (=> bm!453711 (= call!453717 (derivativeStep!4593 (ite c!1029612 (regOne!32167 r!7292) (ite c!1029610 (regTwo!32166 r!7292) (regOne!32166 r!7292))) (head!12260 s!2326)))))

(declare-fun bm!453712 () Bool)

(assert (=> bm!453712 (= call!453716 call!453717)))

(declare-fun b!5810661 () Bool)

(assert (=> b!5810661 (= e!3566717 (Union!15827 call!453717 call!453715))))

(declare-fun bm!453713 () Bool)

(assert (=> bm!453713 (= call!453718 call!453715)))

(declare-fun b!5810662 () Bool)

(assert (=> b!5810662 (= e!3566718 (Union!15827 (Concat!24672 call!453716 (regTwo!32166 r!7292)) EmptyLang!15827))))

(assert (= (and d!1829753 c!1029613) b!5810655))

(assert (= (and d!1829753 (not c!1029613)) b!5810656))

(assert (= (and b!5810656 c!1029611) b!5810658))

(assert (= (and b!5810656 (not c!1029611)) b!5810654))

(assert (= (and b!5810654 c!1029612) b!5810661))

(assert (= (and b!5810654 (not c!1029612)) b!5810660))

(assert (= (and b!5810660 c!1029609) b!5810657))

(assert (= (and b!5810660 (not c!1029609)) b!5810653))

(assert (= (and b!5810653 c!1029610) b!5810659))

(assert (= (and b!5810653 (not c!1029610)) b!5810662))

(assert (= (or b!5810659 b!5810662) bm!453712))

(assert (= (or b!5810657 b!5810659) bm!453713))

(assert (= (or b!5810661 bm!453713) bm!453710))

(assert (= (or b!5810661 bm!453712) bm!453711))

(assert (=> b!5810653 m!6748590))

(assert (=> bm!453710 m!6748228))

(declare-fun m!6749006 () Bool)

(assert (=> bm!453710 m!6749006))

(declare-fun m!6749008 () Bool)

(assert (=> d!1829753 m!6749008))

(assert (=> d!1829753 m!6748206))

(assert (=> bm!453711 m!6748228))

(declare-fun m!6749010 () Bool)

(assert (=> bm!453711 m!6749010))

(assert (=> b!5809976 d!1829753))

(assert (=> b!5809976 d!1829721))

(assert (=> b!5809976 d!1829739))

(declare-fun b!5810664 () Bool)

(declare-fun e!3566721 () List!63780)

(assert (=> b!5810664 (= e!3566721 (Cons!63656 (h!70104 (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656))) (++!14037 (t!377133 (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656))) lt!2299835)))))

(declare-fun b!5810663 () Bool)

(assert (=> b!5810663 (= e!3566721 lt!2299835)))

(declare-fun b!5810665 () Bool)

(declare-fun res!2450368 () Bool)

(declare-fun e!3566720 () Bool)

(assert (=> b!5810665 (=> (not res!2450368) (not e!3566720))))

(declare-fun lt!2300000 () List!63780)

(assert (=> b!5810665 (= res!2450368 (= (size!40110 lt!2300000) (+ (size!40110 (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656))) (size!40110 lt!2299835))))))

(declare-fun d!1829755 () Bool)

(assert (=> d!1829755 e!3566720))

(declare-fun res!2450369 () Bool)

(assert (=> d!1829755 (=> (not res!2450369) (not e!3566720))))

(assert (=> d!1829755 (= res!2450369 (= (content!11664 lt!2300000) ((_ map or) (content!11664 (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656))) (content!11664 lt!2299835))))))

(assert (=> d!1829755 (= lt!2300000 e!3566721)))

(declare-fun c!1029614 () Bool)

(assert (=> d!1829755 (= c!1029614 ((_ is Nil!63656) (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656))))))

(assert (=> d!1829755 (= (++!14037 (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656)) lt!2299835) lt!2300000)))

(declare-fun b!5810666 () Bool)

(assert (=> b!5810666 (= e!3566720 (or (not (= lt!2299835 Nil!63656)) (= lt!2300000 (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656)))))))

(assert (= (and d!1829755 c!1029614) b!5810663))

(assert (= (and d!1829755 (not c!1029614)) b!5810664))

(assert (= (and d!1829755 res!2450369) b!5810665))

(assert (= (and b!5810665 res!2450368) b!5810666))

(declare-fun m!6749012 () Bool)

(assert (=> b!5810664 m!6749012))

(declare-fun m!6749014 () Bool)

(assert (=> b!5810665 m!6749014))

(declare-fun m!6749016 () Bool)

(assert (=> b!5810665 m!6749016))

(assert (=> b!5810665 m!6748658))

(declare-fun m!6749018 () Bool)

(assert (=> d!1829755 m!6749018))

(declare-fun m!6749020 () Bool)

(assert (=> d!1829755 m!6749020))

(assert (=> d!1829755 m!6748664))

(assert (=> b!5810217 d!1829755))

(declare-fun d!1829757 () Bool)

(declare-fun res!2450370 () Bool)

(declare-fun e!3566722 () Bool)

(assert (=> d!1829757 (=> res!2450370 e!3566722)))

(assert (=> d!1829757 (= res!2450370 ((_ is Nil!63656) (exprs!5711 (h!70106 zl!343))))))

(assert (=> d!1829757 (= (forall!14933 (exprs!5711 (h!70106 zl!343)) lambda!317380) e!3566722)))

(declare-fun b!5810667 () Bool)

(declare-fun e!3566723 () Bool)

(assert (=> b!5810667 (= e!3566722 e!3566723)))

(declare-fun res!2450371 () Bool)

(assert (=> b!5810667 (=> (not res!2450371) (not e!3566723))))

(assert (=> b!5810667 (= res!2450371 (dynLambda!24923 lambda!317380 (h!70104 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5810668 () Bool)

(assert (=> b!5810668 (= e!3566723 (forall!14933 (t!377133 (exprs!5711 (h!70106 zl!343))) lambda!317380))))

(assert (= (and d!1829757 (not res!2450370)) b!5810667))

(assert (= (and b!5810667 res!2450371) b!5810668))

(declare-fun b_lambda!219027 () Bool)

(assert (=> (not b_lambda!219027) (not b!5810667)))

(declare-fun m!6749022 () Bool)

(assert (=> b!5810667 m!6749022))

(declare-fun m!6749024 () Bool)

(assert (=> b!5810668 m!6749024))

(assert (=> d!1829607 d!1829757))

(declare-fun bs!1371614 () Bool)

(declare-fun b!5810677 () Bool)

(assert (= bs!1371614 (and b!5810677 d!1829459)))

(declare-fun lambda!317412 () Int)

(assert (=> bs!1371614 (not (= lambda!317412 lambda!317326))))

(declare-fun bs!1371615 () Bool)

(assert (= bs!1371615 (and b!5810677 d!1829503)))

(assert (=> bs!1371615 (not (= lambda!317412 lambda!317352))))

(declare-fun bs!1371616 () Bool)

(assert (= bs!1371616 (and b!5810677 b!5809628)))

(assert (=> bs!1371616 (= (and (= (reg!16156 (regTwo!32167 r!7292)) (reg!16156 r!7292)) (= (regTwo!32167 r!7292) r!7292)) (= lambda!317412 lambda!317308))))

(declare-fun bs!1371617 () Bool)

(assert (= bs!1371617 (and b!5810677 d!1829483)))

(assert (=> bs!1371617 (not (= lambda!317412 lambda!317339))))

(declare-fun bs!1371618 () Bool)

(assert (= bs!1371618 (and b!5810677 b!5809950)))

(assert (=> bs!1371618 (= (and (= (reg!16156 (regTwo!32167 r!7292)) (reg!16156 r!7292)) (= (regTwo!32167 r!7292) r!7292)) (= lambda!317412 lambda!317353))))

(declare-fun bs!1371619 () Bool)

(assert (= bs!1371619 (and b!5810677 b!5809700)))

(assert (=> bs!1371619 (not (= lambda!317412 lambda!317318))))

(declare-fun bs!1371620 () Bool)

(assert (= bs!1371620 (and b!5810677 b!5810560)))

(assert (=> bs!1371620 (not (= lambda!317412 lambda!317408))))

(assert (=> bs!1371616 (not (= lambda!317412 lambda!317309))))

(assert (=> bs!1371614 (= (and (= (reg!16156 (regTwo!32167 r!7292)) (reg!16156 r!7292)) (= (regTwo!32167 r!7292) (Star!15827 (reg!16156 r!7292)))) (= lambda!317412 lambda!317327))))

(declare-fun bs!1371621 () Bool)

(assert (= bs!1371621 (and b!5810677 b!5809947)))

(assert (=> bs!1371621 (not (= lambda!317412 lambda!317354))))

(declare-fun bs!1371622 () Bool)

(assert (= bs!1371622 (and b!5810677 b!5810563)))

(assert (=> bs!1371622 (= (and (= (reg!16156 (regTwo!32167 r!7292)) (reg!16156 (regOne!32167 r!7292))) (= (regTwo!32167 r!7292) (regOne!32167 r!7292))) (= lambda!317412 lambda!317407))))

(declare-fun bs!1371623 () Bool)

(assert (= bs!1371623 (and b!5810677 b!5809703)))

(assert (=> bs!1371623 (= (and (= (reg!16156 (regTwo!32167 r!7292)) (reg!16156 lt!2299853)) (= (regTwo!32167 r!7292) lt!2299853)) (= lambda!317412 lambda!317317))))

(assert (=> bs!1371616 (not (= lambda!317412 lambda!317307))))

(assert (=> bs!1371617 (not (= lambda!317412 lambda!317338))))

(assert (=> b!5810677 true))

(assert (=> b!5810677 true))

(declare-fun bs!1371624 () Bool)

(declare-fun b!5810674 () Bool)

(assert (= bs!1371624 (and b!5810674 d!1829459)))

(declare-fun lambda!317413 () Int)

(assert (=> bs!1371624 (not (= lambda!317413 lambda!317326))))

(declare-fun bs!1371625 () Bool)

(assert (= bs!1371625 (and b!5810674 d!1829503)))

(assert (=> bs!1371625 (not (= lambda!317413 lambda!317352))))

(declare-fun bs!1371626 () Bool)

(assert (= bs!1371626 (and b!5810674 b!5809628)))

(assert (=> bs!1371626 (not (= lambda!317413 lambda!317308))))

(declare-fun bs!1371627 () Bool)

(assert (= bs!1371627 (and b!5810674 d!1829483)))

(assert (=> bs!1371627 (= (and (= (regOne!32166 (regTwo!32167 r!7292)) (reg!16156 r!7292)) (= (regTwo!32166 (regTwo!32167 r!7292)) r!7292)) (= lambda!317413 lambda!317339))))

(declare-fun bs!1371628 () Bool)

(assert (= bs!1371628 (and b!5810674 b!5809950)))

(assert (=> bs!1371628 (not (= lambda!317413 lambda!317353))))

(declare-fun bs!1371629 () Bool)

(assert (= bs!1371629 (and b!5810674 b!5809700)))

(assert (=> bs!1371629 (= (and (= (regOne!32166 (regTwo!32167 r!7292)) (regOne!32166 lt!2299853)) (= (regTwo!32166 (regTwo!32167 r!7292)) (regTwo!32166 lt!2299853))) (= lambda!317413 lambda!317318))))

(declare-fun bs!1371630 () Bool)

(assert (= bs!1371630 (and b!5810674 b!5810677)))

(assert (=> bs!1371630 (not (= lambda!317413 lambda!317412))))

(declare-fun bs!1371631 () Bool)

(assert (= bs!1371631 (and b!5810674 b!5810560)))

(assert (=> bs!1371631 (= (and (= (regOne!32166 (regTwo!32167 r!7292)) (regOne!32166 (regOne!32167 r!7292))) (= (regTwo!32166 (regTwo!32167 r!7292)) (regTwo!32166 (regOne!32167 r!7292)))) (= lambda!317413 lambda!317408))))

(assert (=> bs!1371626 (= (and (= (regOne!32166 (regTwo!32167 r!7292)) (reg!16156 r!7292)) (= (regTwo!32166 (regTwo!32167 r!7292)) r!7292)) (= lambda!317413 lambda!317309))))

(assert (=> bs!1371624 (not (= lambda!317413 lambda!317327))))

(declare-fun bs!1371632 () Bool)

(assert (= bs!1371632 (and b!5810674 b!5809947)))

(assert (=> bs!1371632 (= (and (= (regOne!32166 (regTwo!32167 r!7292)) (regOne!32166 r!7292)) (= (regTwo!32166 (regTwo!32167 r!7292)) (regTwo!32166 r!7292))) (= lambda!317413 lambda!317354))))

(declare-fun bs!1371633 () Bool)

(assert (= bs!1371633 (and b!5810674 b!5810563)))

(assert (=> bs!1371633 (not (= lambda!317413 lambda!317407))))

(declare-fun bs!1371634 () Bool)

(assert (= bs!1371634 (and b!5810674 b!5809703)))

(assert (=> bs!1371634 (not (= lambda!317413 lambda!317317))))

(assert (=> bs!1371626 (not (= lambda!317413 lambda!317307))))

(assert (=> bs!1371627 (not (= lambda!317413 lambda!317338))))

(assert (=> b!5810674 true))

(assert (=> b!5810674 true))

(declare-fun b!5810669 () Bool)

(declare-fun e!3566727 () Bool)

(declare-fun e!3566725 () Bool)

(assert (=> b!5810669 (= e!3566727 e!3566725)))

(declare-fun c!1029615 () Bool)

(assert (=> b!5810669 (= c!1029615 ((_ is Star!15827) (regTwo!32167 r!7292)))))

(declare-fun call!453719 () Bool)

(declare-fun bm!453714 () Bool)

(assert (=> bm!453714 (= call!453719 (Exists!2927 (ite c!1029615 lambda!317412 lambda!317413)))))

(declare-fun b!5810670 () Bool)

(declare-fun res!2450372 () Bool)

(declare-fun e!3566728 () Bool)

(assert (=> b!5810670 (=> res!2450372 e!3566728)))

(declare-fun call!453720 () Bool)

(assert (=> b!5810670 (= res!2450372 call!453720)))

(assert (=> b!5810670 (= e!3566725 e!3566728)))

(declare-fun b!5810671 () Bool)

(declare-fun e!3566726 () Bool)

(assert (=> b!5810671 (= e!3566726 call!453720)))

(declare-fun b!5810672 () Bool)

(declare-fun e!3566729 () Bool)

(assert (=> b!5810672 (= e!3566729 (= s!2326 (Cons!63657 (c!1029329 (regTwo!32167 r!7292)) Nil!63657)))))

(declare-fun b!5810673 () Bool)

(declare-fun c!1029618 () Bool)

(assert (=> b!5810673 (= c!1029618 ((_ is ElementMatch!15827) (regTwo!32167 r!7292)))))

(declare-fun e!3566730 () Bool)

(assert (=> b!5810673 (= e!3566730 e!3566729)))

(declare-fun bm!453715 () Bool)

(assert (=> bm!453715 (= call!453720 (isEmpty!35571 s!2326))))

(declare-fun d!1829759 () Bool)

(declare-fun c!1029617 () Bool)

(assert (=> d!1829759 (= c!1029617 ((_ is EmptyExpr!15827) (regTwo!32167 r!7292)))))

(assert (=> d!1829759 (= (matchRSpec!2930 (regTwo!32167 r!7292) s!2326) e!3566726)))

(assert (=> b!5810674 (= e!3566725 call!453719)))

(declare-fun b!5810675 () Bool)

(declare-fun c!1029616 () Bool)

(assert (=> b!5810675 (= c!1029616 ((_ is Union!15827) (regTwo!32167 r!7292)))))

(assert (=> b!5810675 (= e!3566729 e!3566727)))

(declare-fun b!5810676 () Bool)

(assert (=> b!5810676 (= e!3566726 e!3566730)))

(declare-fun res!2450373 () Bool)

(assert (=> b!5810676 (= res!2450373 (not ((_ is EmptyLang!15827) (regTwo!32167 r!7292))))))

(assert (=> b!5810676 (=> (not res!2450373) (not e!3566730))))

(assert (=> b!5810677 (= e!3566728 call!453719)))

(declare-fun b!5810678 () Bool)

(declare-fun e!3566724 () Bool)

(assert (=> b!5810678 (= e!3566727 e!3566724)))

(declare-fun res!2450374 () Bool)

(assert (=> b!5810678 (= res!2450374 (matchRSpec!2930 (regOne!32167 (regTwo!32167 r!7292)) s!2326))))

(assert (=> b!5810678 (=> res!2450374 e!3566724)))

(declare-fun b!5810679 () Bool)

(assert (=> b!5810679 (= e!3566724 (matchRSpec!2930 (regTwo!32167 (regTwo!32167 r!7292)) s!2326))))

(assert (= (and d!1829759 c!1029617) b!5810671))

(assert (= (and d!1829759 (not c!1029617)) b!5810676))

(assert (= (and b!5810676 res!2450373) b!5810673))

(assert (= (and b!5810673 c!1029618) b!5810672))

(assert (= (and b!5810673 (not c!1029618)) b!5810675))

(assert (= (and b!5810675 c!1029616) b!5810678))

(assert (= (and b!5810675 (not c!1029616)) b!5810669))

(assert (= (and b!5810678 (not res!2450374)) b!5810679))

(assert (= (and b!5810669 c!1029615) b!5810670))

(assert (= (and b!5810669 (not c!1029615)) b!5810674))

(assert (= (and b!5810670 (not res!2450372)) b!5810677))

(assert (= (or b!5810677 b!5810674) bm!453714))

(assert (= (or b!5810671 b!5810670) bm!453715))

(declare-fun m!6749026 () Bool)

(assert (=> bm!453714 m!6749026))

(assert (=> bm!453715 m!6748148))

(declare-fun m!6749028 () Bool)

(assert (=> b!5810678 m!6749028))

(declare-fun m!6749030 () Bool)

(assert (=> b!5810679 m!6749030))

(assert (=> b!5809952 d!1829759))

(assert (=> d!1829629 d!1829481))

(assert (=> b!5809737 d!1829737))

(assert (=> b!5809737 d!1829739))

(declare-fun b!5810680 () Bool)

(declare-fun e!3566731 () (InoxSet Context!10422))

(declare-fun call!453726 () (InoxSet Context!10422))

(assert (=> b!5810680 (= e!3566731 call!453726)))

(declare-fun bm!453716 () Bool)

(declare-fun call!453724 () (InoxSet Context!10422))

(declare-fun call!453722 () (InoxSet Context!10422))

(assert (=> bm!453716 (= call!453724 call!453722)))

(declare-fun b!5810681 () Bool)

(declare-fun c!1029621 () Bool)

(assert (=> b!5810681 (= c!1029621 ((_ is Star!15827) (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))))))

(declare-fun e!3566732 () (InoxSet Context!10422))

(assert (=> b!5810681 (= e!3566731 e!3566732)))

(declare-fun e!3566735 () Bool)

(declare-fun b!5810682 () Bool)

(assert (=> b!5810682 (= e!3566735 (nullable!5850 (regOne!32166 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292)))))))))

(declare-fun call!453721 () List!63780)

(declare-fun c!1029623 () Bool)

(declare-fun c!1029619 () Bool)

(declare-fun bm!453717 () Bool)

(assert (=> bm!453717 (= call!453721 ($colon$colon!1805 (exprs!5711 (ite (or c!1029478 c!1029477) (Context!10423 Nil!63656) (Context!10423 call!453642))) (ite (or c!1029619 c!1029623) (regTwo!32166 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))) (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292)))))))))

(declare-fun bm!453718 () Bool)

(declare-fun call!453723 () List!63780)

(assert (=> bm!453718 (= call!453723 call!453721)))

(declare-fun c!1029620 () Bool)

(declare-fun bm!453719 () Bool)

(assert (=> bm!453719 (= call!453722 (derivationStepZipperDown!1165 (ite c!1029620 (regOne!32167 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))) (ite c!1029619 (regTwo!32166 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))) (ite c!1029623 (regOne!32166 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))) (reg!16156 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292)))))))) (ite (or c!1029620 c!1029619) (ite (or c!1029478 c!1029477) (Context!10423 Nil!63656) (Context!10423 call!453642)) (Context!10423 call!453723)) (h!70105 s!2326)))))

(declare-fun b!5810683 () Bool)

(assert (=> b!5810683 (= e!3566732 call!453726)))

(declare-fun b!5810685 () Bool)

(assert (=> b!5810685 (= e!3566732 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810686 () Bool)

(declare-fun e!3566733 () (InoxSet Context!10422))

(declare-fun call!453725 () (InoxSet Context!10422))

(assert (=> b!5810686 (= e!3566733 ((_ map or) call!453722 call!453725))))

(declare-fun bm!453720 () Bool)

(assert (=> bm!453720 (= call!453725 (derivationStepZipperDown!1165 (ite c!1029620 (regTwo!32167 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))) (regOne!32166 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292)))))) (ite c!1029620 (ite (or c!1029478 c!1029477) (Context!10423 Nil!63656) (Context!10423 call!453642)) (Context!10423 call!453721)) (h!70105 s!2326)))))

(declare-fun bm!453721 () Bool)

(assert (=> bm!453721 (= call!453726 call!453724)))

(declare-fun b!5810687 () Bool)

(declare-fun e!3566734 () (InoxSet Context!10422))

(assert (=> b!5810687 (= e!3566734 e!3566731)))

(assert (=> b!5810687 (= c!1029623 ((_ is Concat!24672) (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))))))

(declare-fun e!3566736 () (InoxSet Context!10422))

(declare-fun b!5810684 () Bool)

(assert (=> b!5810684 (= e!3566736 (store ((as const (Array Context!10422 Bool)) false) (ite (or c!1029478 c!1029477) (Context!10423 Nil!63656) (Context!10423 call!453642)) true))))

(declare-fun c!1029622 () Bool)

(declare-fun d!1829761 () Bool)

(assert (=> d!1829761 (= c!1029622 (and ((_ is ElementMatch!15827) (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))) (= (c!1029329 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))) (h!70105 s!2326))))))

(assert (=> d!1829761 (= (derivationStepZipperDown!1165 (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292)))) (ite (or c!1029478 c!1029477) (Context!10423 Nil!63656) (Context!10423 call!453642)) (h!70105 s!2326)) e!3566736)))

(declare-fun b!5810688 () Bool)

(assert (=> b!5810688 (= e!3566736 e!3566733)))

(assert (=> b!5810688 (= c!1029620 ((_ is Union!15827) (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))))))

(declare-fun b!5810689 () Bool)

(assert (=> b!5810689 (= c!1029619 e!3566735)))

(declare-fun res!2450375 () Bool)

(assert (=> b!5810689 (=> (not res!2450375) (not e!3566735))))

(assert (=> b!5810689 (= res!2450375 ((_ is Concat!24672) (ite c!1029478 (regOne!32167 r!7292) (ite c!1029477 (regTwo!32166 r!7292) (ite c!1029481 (regOne!32166 r!7292) (reg!16156 r!7292))))))))

(assert (=> b!5810689 (= e!3566733 e!3566734)))

(declare-fun b!5810690 () Bool)

(assert (=> b!5810690 (= e!3566734 ((_ map or) call!453725 call!453724))))

(assert (= (and d!1829761 c!1029622) b!5810684))

(assert (= (and d!1829761 (not c!1029622)) b!5810688))

(assert (= (and b!5810688 c!1029620) b!5810686))

(assert (= (and b!5810688 (not c!1029620)) b!5810689))

(assert (= (and b!5810689 res!2450375) b!5810682))

(assert (= (and b!5810689 c!1029619) b!5810690))

(assert (= (and b!5810689 (not c!1029619)) b!5810687))

(assert (= (and b!5810687 c!1029623) b!5810680))

(assert (= (and b!5810687 (not c!1029623)) b!5810681))

(assert (= (and b!5810681 c!1029621) b!5810683))

(assert (= (and b!5810681 (not c!1029621)) b!5810685))

(assert (= (or b!5810680 b!5810683) bm!453718))

(assert (= (or b!5810680 b!5810683) bm!453721))

(assert (= (or b!5810690 bm!453718) bm!453717))

(assert (= (or b!5810690 bm!453721) bm!453716))

(assert (= (or b!5810686 b!5810690) bm!453720))

(assert (= (or b!5810686 bm!453716) bm!453719))

(declare-fun m!6749032 () Bool)

(assert (=> bm!453719 m!6749032))

(declare-fun m!6749034 () Bool)

(assert (=> bm!453717 m!6749034))

(declare-fun m!6749036 () Bool)

(assert (=> bm!453720 m!6749036))

(declare-fun m!6749038 () Bool)

(assert (=> b!5810684 m!6749038))

(declare-fun m!6749040 () Bool)

(assert (=> b!5810682 m!6749040))

(assert (=> bm!453638 d!1829761))

(declare-fun d!1829763 () Bool)

(assert (=> d!1829763 true))

(assert (=> d!1829763 true))

(declare-fun res!2450376 () Bool)

(assert (=> d!1829763 (= (choose!44109 lambda!317308) res!2450376)))

(assert (=> d!1829477 d!1829763))

(declare-fun bs!1371635 () Bool)

(declare-fun d!1829765 () Bool)

(assert (= bs!1371635 (and d!1829765 d!1829719)))

(declare-fun lambda!317414 () Int)

(assert (=> bs!1371635 (= lambda!317414 lambda!317410)))

(declare-fun bs!1371636 () Bool)

(assert (= bs!1371636 (and d!1829765 d!1829575)))

(assert (=> bs!1371636 (= lambda!317414 lambda!317377)))

(declare-fun bs!1371637 () Bool)

(assert (= bs!1371637 (and d!1829765 b!5809629)))

(assert (=> bs!1371637 (= lambda!317414 lambda!317312)))

(declare-fun bs!1371638 () Bool)

(assert (= bs!1371638 (and d!1829765 d!1829717)))

(assert (=> bs!1371638 (= lambda!317414 lambda!317409)))

(declare-fun bs!1371639 () Bool)

(assert (= bs!1371639 (and d!1829765 d!1829635)))

(assert (=> bs!1371639 (= lambda!317414 lambda!317399)))

(declare-fun bs!1371640 () Bool)

(assert (= bs!1371640 (and d!1829765 d!1829697)))

(assert (=> bs!1371640 (= lambda!317414 lambda!317406)))

(declare-fun bs!1371641 () Bool)

(assert (= bs!1371641 (and d!1829765 d!1829735)))

(assert (=> bs!1371641 (= lambda!317414 lambda!317411)))

(declare-fun bs!1371642 () Bool)

(assert (= bs!1371642 (and d!1829765 d!1829631)))

(assert (=> bs!1371642 (= lambda!317414 lambda!317394)))

(declare-fun bs!1371643 () Bool)

(assert (= bs!1371643 (and d!1829765 d!1829519)))

(assert (=> bs!1371643 (= lambda!317414 lambda!317360)))

(declare-fun bs!1371644 () Bool)

(assert (= bs!1371644 (and d!1829765 d!1829695)))

(assert (=> bs!1371644 (= lambda!317414 lambda!317405)))

(declare-fun bs!1371645 () Bool)

(assert (= bs!1371645 (and d!1829765 d!1829607)))

(assert (=> bs!1371645 (= lambda!317414 lambda!317380)))

(assert (=> d!1829765 (= (inv!82814 (h!70106 (t!377135 zl!343))) (forall!14933 (exprs!5711 (h!70106 (t!377135 zl!343))) lambda!317414))))

(declare-fun bs!1371646 () Bool)

(assert (= bs!1371646 d!1829765))

(declare-fun m!6749042 () Bool)

(assert (=> bs!1371646 m!6749042))

(assert (=> b!5810338 d!1829765))

(declare-fun d!1829767 () Bool)

(assert (=> d!1829767 (= (isDefined!12539 lt!2299895) (not (isEmpty!35573 lt!2299895)))))

(declare-fun bs!1371647 () Bool)

(assert (= bs!1371647 d!1829767))

(declare-fun m!6749044 () Bool)

(assert (=> bs!1371647 m!6749044))

(assert (=> d!1829497 d!1829767))

(declare-fun d!1829769 () Bool)

(declare-fun e!3566737 () Bool)

(assert (=> d!1829769 e!3566737))

(declare-fun c!1029624 () Bool)

(assert (=> d!1829769 (= c!1029624 ((_ is EmptyExpr!15827) (reg!16156 r!7292)))))

(declare-fun lt!2300001 () Bool)

(declare-fun e!3566742 () Bool)

(assert (=> d!1829769 (= lt!2300001 e!3566742)))

(declare-fun c!1029626 () Bool)

(assert (=> d!1829769 (= c!1029626 (isEmpty!35571 Nil!63657))))

(assert (=> d!1829769 (validRegex!7563 (reg!16156 r!7292))))

(assert (=> d!1829769 (= (matchR!8012 (reg!16156 r!7292) Nil!63657) lt!2300001)))

(declare-fun bm!453722 () Bool)

(declare-fun call!453727 () Bool)

(assert (=> bm!453722 (= call!453727 (isEmpty!35571 Nil!63657))))

(declare-fun b!5810691 () Bool)

(declare-fun res!2450382 () Bool)

(declare-fun e!3566743 () Bool)

(assert (=> b!5810691 (=> res!2450382 e!3566743)))

(declare-fun e!3566739 () Bool)

(assert (=> b!5810691 (= res!2450382 e!3566739)))

(declare-fun res!2450381 () Bool)

(assert (=> b!5810691 (=> (not res!2450381) (not e!3566739))))

(assert (=> b!5810691 (= res!2450381 lt!2300001)))

(declare-fun b!5810692 () Bool)

(assert (=> b!5810692 (= e!3566739 (= (head!12260 Nil!63657) (c!1029329 (reg!16156 r!7292))))))

(declare-fun b!5810693 () Bool)

(declare-fun e!3566741 () Bool)

(assert (=> b!5810693 (= e!3566737 e!3566741)))

(declare-fun c!1029625 () Bool)

(assert (=> b!5810693 (= c!1029625 ((_ is EmptyLang!15827) (reg!16156 r!7292)))))

(declare-fun b!5810694 () Bool)

(declare-fun res!2450379 () Bool)

(declare-fun e!3566738 () Bool)

(assert (=> b!5810694 (=> res!2450379 e!3566738)))

(assert (=> b!5810694 (= res!2450379 (not (isEmpty!35571 (tail!11355 Nil!63657))))))

(declare-fun b!5810695 () Bool)

(assert (=> b!5810695 (= e!3566741 (not lt!2300001))))

(declare-fun b!5810696 () Bool)

(declare-fun e!3566740 () Bool)

(assert (=> b!5810696 (= e!3566740 e!3566738)))

(declare-fun res!2450384 () Bool)

(assert (=> b!5810696 (=> res!2450384 e!3566738)))

(assert (=> b!5810696 (= res!2450384 call!453727)))

(declare-fun b!5810697 () Bool)

(assert (=> b!5810697 (= e!3566742 (nullable!5850 (reg!16156 r!7292)))))

(declare-fun b!5810698 () Bool)

(declare-fun res!2450377 () Bool)

(assert (=> b!5810698 (=> (not res!2450377) (not e!3566739))))

(assert (=> b!5810698 (= res!2450377 (not call!453727))))

(declare-fun b!5810699 () Bool)

(declare-fun res!2450378 () Bool)

(assert (=> b!5810699 (=> res!2450378 e!3566743)))

(assert (=> b!5810699 (= res!2450378 (not ((_ is ElementMatch!15827) (reg!16156 r!7292))))))

(assert (=> b!5810699 (= e!3566741 e!3566743)))

(declare-fun b!5810700 () Bool)

(assert (=> b!5810700 (= e!3566742 (matchR!8012 (derivativeStep!4593 (reg!16156 r!7292) (head!12260 Nil!63657)) (tail!11355 Nil!63657)))))

(declare-fun b!5810701 () Bool)

(assert (=> b!5810701 (= e!3566738 (not (= (head!12260 Nil!63657) (c!1029329 (reg!16156 r!7292)))))))

(declare-fun b!5810702 () Bool)

(declare-fun res!2450383 () Bool)

(assert (=> b!5810702 (=> (not res!2450383) (not e!3566739))))

(assert (=> b!5810702 (= res!2450383 (isEmpty!35571 (tail!11355 Nil!63657)))))

(declare-fun b!5810703 () Bool)

(assert (=> b!5810703 (= e!3566737 (= lt!2300001 call!453727))))

(declare-fun b!5810704 () Bool)

(assert (=> b!5810704 (= e!3566743 e!3566740)))

(declare-fun res!2450380 () Bool)

(assert (=> b!5810704 (=> (not res!2450380) (not e!3566740))))

(assert (=> b!5810704 (= res!2450380 (not lt!2300001))))

(assert (= (and d!1829769 c!1029626) b!5810697))

(assert (= (and d!1829769 (not c!1029626)) b!5810700))

(assert (= (and d!1829769 c!1029624) b!5810703))

(assert (= (and d!1829769 (not c!1029624)) b!5810693))

(assert (= (and b!5810693 c!1029625) b!5810695))

(assert (= (and b!5810693 (not c!1029625)) b!5810699))

(assert (= (and b!5810699 (not res!2450378)) b!5810691))

(assert (= (and b!5810691 res!2450381) b!5810698))

(assert (= (and b!5810698 res!2450377) b!5810702))

(assert (= (and b!5810702 res!2450383) b!5810692))

(assert (= (and b!5810691 (not res!2450382)) b!5810704))

(assert (= (and b!5810704 res!2450380) b!5810696))

(assert (= (and b!5810696 (not res!2450384)) b!5810694))

(assert (= (and b!5810694 (not res!2450379)) b!5810701))

(assert (= (or b!5810703 b!5810698 b!5810696) bm!453722))

(declare-fun m!6749046 () Bool)

(assert (=> d!1829769 m!6749046))

(assert (=> d!1829769 m!6748296))

(declare-fun m!6749048 () Bool)

(assert (=> b!5810700 m!6749048))

(assert (=> b!5810700 m!6749048))

(declare-fun m!6749050 () Bool)

(assert (=> b!5810700 m!6749050))

(declare-fun m!6749052 () Bool)

(assert (=> b!5810700 m!6749052))

(assert (=> b!5810700 m!6749050))

(assert (=> b!5810700 m!6749052))

(declare-fun m!6749054 () Bool)

(assert (=> b!5810700 m!6749054))

(assert (=> b!5810697 m!6748564))

(assert (=> b!5810702 m!6749052))

(assert (=> b!5810702 m!6749052))

(declare-fun m!6749056 () Bool)

(assert (=> b!5810702 m!6749056))

(assert (=> b!5810701 m!6749048))

(assert (=> bm!453722 m!6749046))

(assert (=> b!5810692 m!6749048))

(assert (=> b!5810694 m!6749052))

(assert (=> b!5810694 m!6749052))

(assert (=> b!5810694 m!6749056))

(assert (=> d!1829497 d!1829769))

(declare-fun c!1029628 () Bool)

(declare-fun bm!453723 () Bool)

(declare-fun c!1029627 () Bool)

(declare-fun call!453729 () Bool)

(assert (=> bm!453723 (= call!453729 (validRegex!7563 (ite c!1029627 (reg!16156 (reg!16156 r!7292)) (ite c!1029628 (regTwo!32167 (reg!16156 r!7292)) (regTwo!32166 (reg!16156 r!7292))))))))

(declare-fun b!5810705 () Bool)

(declare-fun e!3566746 () Bool)

(declare-fun e!3566744 () Bool)

(assert (=> b!5810705 (= e!3566746 e!3566744)))

(declare-fun res!2450388 () Bool)

(assert (=> b!5810705 (= res!2450388 (not (nullable!5850 (reg!16156 (reg!16156 r!7292)))))))

(assert (=> b!5810705 (=> (not res!2450388) (not e!3566744))))

(declare-fun b!5810706 () Bool)

(declare-fun res!2450386 () Bool)

(declare-fun e!3566745 () Bool)

(assert (=> b!5810706 (=> res!2450386 e!3566745)))

(assert (=> b!5810706 (= res!2450386 (not ((_ is Concat!24672) (reg!16156 r!7292))))))

(declare-fun e!3566747 () Bool)

(assert (=> b!5810706 (= e!3566747 e!3566745)))

(declare-fun bm!453724 () Bool)

(declare-fun call!453728 () Bool)

(assert (=> bm!453724 (= call!453728 call!453729)))

(declare-fun b!5810707 () Bool)

(declare-fun e!3566748 () Bool)

(assert (=> b!5810707 (= e!3566748 call!453728)))

(declare-fun b!5810708 () Bool)

(assert (=> b!5810708 (= e!3566745 e!3566748)))

(declare-fun res!2450389 () Bool)

(assert (=> b!5810708 (=> (not res!2450389) (not e!3566748))))

(declare-fun call!453730 () Bool)

(assert (=> b!5810708 (= res!2450389 call!453730)))

(declare-fun bm!453725 () Bool)

(assert (=> bm!453725 (= call!453730 (validRegex!7563 (ite c!1029628 (regOne!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))))))

(declare-fun d!1829771 () Bool)

(declare-fun res!2450385 () Bool)

(declare-fun e!3566749 () Bool)

(assert (=> d!1829771 (=> res!2450385 e!3566749)))

(assert (=> d!1829771 (= res!2450385 ((_ is ElementMatch!15827) (reg!16156 r!7292)))))

(assert (=> d!1829771 (= (validRegex!7563 (reg!16156 r!7292)) e!3566749)))

(declare-fun b!5810709 () Bool)

(declare-fun e!3566750 () Bool)

(assert (=> b!5810709 (= e!3566750 call!453728)))

(declare-fun b!5810710 () Bool)

(assert (=> b!5810710 (= e!3566744 call!453729)))

(declare-fun b!5810711 () Bool)

(assert (=> b!5810711 (= e!3566746 e!3566747)))

(assert (=> b!5810711 (= c!1029628 ((_ is Union!15827) (reg!16156 r!7292)))))

(declare-fun b!5810712 () Bool)

(declare-fun res!2450387 () Bool)

(assert (=> b!5810712 (=> (not res!2450387) (not e!3566750))))

(assert (=> b!5810712 (= res!2450387 call!453730)))

(assert (=> b!5810712 (= e!3566747 e!3566750)))

(declare-fun b!5810713 () Bool)

(assert (=> b!5810713 (= e!3566749 e!3566746)))

(assert (=> b!5810713 (= c!1029627 ((_ is Star!15827) (reg!16156 r!7292)))))

(assert (= (and d!1829771 (not res!2450385)) b!5810713))

(assert (= (and b!5810713 c!1029627) b!5810705))

(assert (= (and b!5810713 (not c!1029627)) b!5810711))

(assert (= (and b!5810705 res!2450388) b!5810710))

(assert (= (and b!5810711 c!1029628) b!5810712))

(assert (= (and b!5810711 (not c!1029628)) b!5810706))

(assert (= (and b!5810712 res!2450387) b!5810709))

(assert (= (and b!5810706 (not res!2450386)) b!5810708))

(assert (= (and b!5810708 res!2450389) b!5810707))

(assert (= (or b!5810709 b!5810707) bm!453724))

(assert (= (or b!5810712 b!5810708) bm!453725))

(assert (= (or b!5810710 bm!453724) bm!453723))

(declare-fun m!6749058 () Bool)

(assert (=> bm!453723 m!6749058))

(declare-fun m!6749060 () Bool)

(assert (=> b!5810705 m!6749060))

(declare-fun m!6749062 () Bool)

(assert (=> bm!453725 m!6749062))

(assert (=> d!1829497 d!1829771))

(assert (=> b!5809745 d!1829737))

(assert (=> b!5809745 d!1829739))

(declare-fun d!1829773 () Bool)

(assert (=> d!1829773 (= (isEmpty!35575 (t!377133 (unfocusZipperList!1255 zl!343))) ((_ is Nil!63656) (t!377133 (unfocusZipperList!1255 zl!343))))))

(assert (=> b!5810277 d!1829773))

(declare-fun d!1829775 () Bool)

(declare-fun e!3566752 () Bool)

(assert (=> d!1829775 e!3566752))

(declare-fun res!2450390 () Bool)

(assert (=> d!1829775 (=> (not res!2450390) (not e!3566752))))

(declare-fun lt!2300002 () List!63781)

(assert (=> d!1829775 (= res!2450390 (= (content!11665 lt!2300002) ((_ map or) (content!11665 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657))) (content!11665 (t!377134 s!2326)))))))

(declare-fun e!3566751 () List!63781)

(assert (=> d!1829775 (= lt!2300002 e!3566751)))

(declare-fun c!1029629 () Bool)

(assert (=> d!1829775 (= c!1029629 ((_ is Nil!63657) (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657))))))

(assert (=> d!1829775 (= (++!14038 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)) (t!377134 s!2326)) lt!2300002)))

(declare-fun b!5810716 () Bool)

(declare-fun res!2450391 () Bool)

(assert (=> b!5810716 (=> (not res!2450391) (not e!3566752))))

(assert (=> b!5810716 (= res!2450391 (= (size!40111 lt!2300002) (+ (size!40111 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657))) (size!40111 (t!377134 s!2326)))))))

(declare-fun b!5810715 () Bool)

(assert (=> b!5810715 (= e!3566751 (Cons!63657 (h!70105 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657))) (++!14038 (t!377134 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657))) (t!377134 s!2326))))))

(declare-fun b!5810717 () Bool)

(assert (=> b!5810717 (= e!3566752 (or (not (= (t!377134 s!2326) Nil!63657)) (= lt!2300002 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)))))))

(declare-fun b!5810714 () Bool)

(assert (=> b!5810714 (= e!3566751 (t!377134 s!2326))))

(assert (= (and d!1829775 c!1029629) b!5810714))

(assert (= (and d!1829775 (not c!1029629)) b!5810715))

(assert (= (and d!1829775 res!2450390) b!5810716))

(assert (= (and b!5810716 res!2450391) b!5810717))

(declare-fun m!6749064 () Bool)

(assert (=> d!1829775 m!6749064))

(assert (=> d!1829775 m!6748352))

(declare-fun m!6749066 () Bool)

(assert (=> d!1829775 m!6749066))

(declare-fun m!6749068 () Bool)

(assert (=> d!1829775 m!6749068))

(declare-fun m!6749070 () Bool)

(assert (=> b!5810716 m!6749070))

(assert (=> b!5810716 m!6748352))

(declare-fun m!6749072 () Bool)

(assert (=> b!5810716 m!6749072))

(declare-fun m!6749074 () Bool)

(assert (=> b!5810716 m!6749074))

(declare-fun m!6749076 () Bool)

(assert (=> b!5810715 m!6749076))

(assert (=> b!5809894 d!1829775))

(declare-fun d!1829777 () Bool)

(declare-fun e!3566754 () Bool)

(assert (=> d!1829777 e!3566754))

(declare-fun res!2450392 () Bool)

(assert (=> d!1829777 (=> (not res!2450392) (not e!3566754))))

(declare-fun lt!2300003 () List!63781)

(assert (=> d!1829777 (= res!2450392 (= (content!11665 lt!2300003) ((_ map or) (content!11665 Nil!63657) (content!11665 (Cons!63657 (h!70105 s!2326) Nil!63657)))))))

(declare-fun e!3566753 () List!63781)

(assert (=> d!1829777 (= lt!2300003 e!3566753)))

(declare-fun c!1029630 () Bool)

(assert (=> d!1829777 (= c!1029630 ((_ is Nil!63657) Nil!63657))))

(assert (=> d!1829777 (= (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)) lt!2300003)))

(declare-fun b!5810720 () Bool)

(declare-fun res!2450393 () Bool)

(assert (=> b!5810720 (=> (not res!2450393) (not e!3566754))))

(assert (=> b!5810720 (= res!2450393 (= (size!40111 lt!2300003) (+ (size!40111 Nil!63657) (size!40111 (Cons!63657 (h!70105 s!2326) Nil!63657)))))))

(declare-fun b!5810719 () Bool)

(assert (=> b!5810719 (= e!3566753 (Cons!63657 (h!70105 Nil!63657) (++!14038 (t!377134 Nil!63657) (Cons!63657 (h!70105 s!2326) Nil!63657))))))

(declare-fun b!5810721 () Bool)

(assert (=> b!5810721 (= e!3566754 (or (not (= (Cons!63657 (h!70105 s!2326) Nil!63657) Nil!63657)) (= lt!2300003 Nil!63657)))))

(declare-fun b!5810718 () Bool)

(assert (=> b!5810718 (= e!3566753 (Cons!63657 (h!70105 s!2326) Nil!63657))))

(assert (= (and d!1829777 c!1029630) b!5810718))

(assert (= (and d!1829777 (not c!1029630)) b!5810719))

(assert (= (and d!1829777 res!2450392) b!5810720))

(assert (= (and b!5810720 res!2450393) b!5810721))

(declare-fun m!6749078 () Bool)

(assert (=> d!1829777 m!6749078))

(declare-fun m!6749080 () Bool)

(assert (=> d!1829777 m!6749080))

(declare-fun m!6749082 () Bool)

(assert (=> d!1829777 m!6749082))

(declare-fun m!6749084 () Bool)

(assert (=> b!5810720 m!6749084))

(declare-fun m!6749086 () Bool)

(assert (=> b!5810720 m!6749086))

(declare-fun m!6749088 () Bool)

(assert (=> b!5810720 m!6749088))

(declare-fun m!6749090 () Bool)

(assert (=> b!5810719 m!6749090))

(assert (=> b!5809894 d!1829777))

(declare-fun d!1829779 () Bool)

(assert (=> d!1829779 (= (++!14038 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)) (t!377134 s!2326)) s!2326)))

(declare-fun lt!2300006 () Unit!156914)

(declare-fun choose!44129 (List!63781 C!31924 List!63781 List!63781) Unit!156914)

(assert (=> d!1829779 (= lt!2300006 (choose!44129 Nil!63657 (h!70105 s!2326) (t!377134 s!2326) s!2326))))

(assert (=> d!1829779 (= (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) (t!377134 s!2326))) s!2326)))

(assert (=> d!1829779 (= (lemmaMoveElementToOtherListKeepsConcatEq!2143 Nil!63657 (h!70105 s!2326) (t!377134 s!2326) s!2326) lt!2300006)))

(declare-fun bs!1371648 () Bool)

(assert (= bs!1371648 d!1829779))

(assert (=> bs!1371648 m!6748352))

(assert (=> bs!1371648 m!6748352))

(assert (=> bs!1371648 m!6748354))

(declare-fun m!6749092 () Bool)

(assert (=> bs!1371648 m!6749092))

(declare-fun m!6749094 () Bool)

(assert (=> bs!1371648 m!6749094))

(assert (=> b!5809894 d!1829779))

(declare-fun b!5810722 () Bool)

(declare-fun res!2450397 () Bool)

(declare-fun e!3566759 () Bool)

(assert (=> b!5810722 (=> (not res!2450397) (not e!3566759))))

(declare-fun lt!2300008 () Option!15836)

(assert (=> b!5810722 (= res!2450397 (matchR!8012 (reg!16156 r!7292) (_1!36227 (get!21975 lt!2300008))))))

(declare-fun b!5810723 () Bool)

(declare-fun e!3566757 () Option!15836)

(assert (=> b!5810723 (= e!3566757 None!15835)))

(declare-fun d!1829781 () Bool)

(declare-fun e!3566755 () Bool)

(assert (=> d!1829781 e!3566755))

(declare-fun res!2450395 () Bool)

(assert (=> d!1829781 (=> res!2450395 e!3566755)))

(assert (=> d!1829781 (= res!2450395 e!3566759)))

(declare-fun res!2450396 () Bool)

(assert (=> d!1829781 (=> (not res!2450396) (not e!3566759))))

(assert (=> d!1829781 (= res!2450396 (isDefined!12539 lt!2300008))))

(declare-fun e!3566758 () Option!15836)

(assert (=> d!1829781 (= lt!2300008 e!3566758)))

(declare-fun c!1029632 () Bool)

(declare-fun e!3566756 () Bool)

(assert (=> d!1829781 (= c!1029632 e!3566756)))

(declare-fun res!2450394 () Bool)

(assert (=> d!1829781 (=> (not res!2450394) (not e!3566756))))

(assert (=> d!1829781 (= res!2450394 (matchR!8012 (reg!16156 r!7292) (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657))))))

(assert (=> d!1829781 (validRegex!7563 (reg!16156 r!7292))))

(assert (=> d!1829781 (= (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)) (t!377134 s!2326) s!2326) lt!2300008)))

(declare-fun b!5810724 () Bool)

(assert (=> b!5810724 (= e!3566758 (Some!15835 (tuple2!65849 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)) (t!377134 s!2326))))))

(declare-fun b!5810725 () Bool)

(assert (=> b!5810725 (= e!3566758 e!3566757)))

(declare-fun c!1029631 () Bool)

(assert (=> b!5810725 (= c!1029631 ((_ is Nil!63657) (t!377134 s!2326)))))

(declare-fun b!5810726 () Bool)

(assert (=> b!5810726 (= e!3566755 (not (isDefined!12539 lt!2300008)))))

(declare-fun b!5810727 () Bool)

(assert (=> b!5810727 (= e!3566756 (matchR!8012 r!7292 (t!377134 s!2326)))))

(declare-fun b!5810728 () Bool)

(assert (=> b!5810728 (= e!3566759 (= (++!14038 (_1!36227 (get!21975 lt!2300008)) (_2!36227 (get!21975 lt!2300008))) s!2326))))

(declare-fun b!5810729 () Bool)

(declare-fun lt!2300009 () Unit!156914)

(declare-fun lt!2300007 () Unit!156914)

(assert (=> b!5810729 (= lt!2300009 lt!2300007)))

(assert (=> b!5810729 (= (++!14038 (++!14038 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)) (Cons!63657 (h!70105 (t!377134 s!2326)) Nil!63657)) (t!377134 (t!377134 s!2326))) s!2326)))

(assert (=> b!5810729 (= lt!2300007 (lemmaMoveElementToOtherListKeepsConcatEq!2143 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)) (h!70105 (t!377134 s!2326)) (t!377134 (t!377134 s!2326)) s!2326))))

(assert (=> b!5810729 (= e!3566757 (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 (++!14038 (++!14038 Nil!63657 (Cons!63657 (h!70105 s!2326) Nil!63657)) (Cons!63657 (h!70105 (t!377134 s!2326)) Nil!63657)) (t!377134 (t!377134 s!2326)) s!2326))))

(declare-fun b!5810730 () Bool)

(declare-fun res!2450398 () Bool)

(assert (=> b!5810730 (=> (not res!2450398) (not e!3566759))))

(assert (=> b!5810730 (= res!2450398 (matchR!8012 r!7292 (_2!36227 (get!21975 lt!2300008))))))

(assert (= (and d!1829781 res!2450394) b!5810727))

(assert (= (and d!1829781 c!1029632) b!5810724))

(assert (= (and d!1829781 (not c!1029632)) b!5810725))

(assert (= (and b!5810725 c!1029631) b!5810723))

(assert (= (and b!5810725 (not c!1029631)) b!5810729))

(assert (= (and d!1829781 res!2450396) b!5810722))

(assert (= (and b!5810722 res!2450397) b!5810730))

(assert (= (and b!5810730 res!2450398) b!5810728))

(assert (= (and d!1829781 (not res!2450395)) b!5810726))

(assert (=> b!5810729 m!6748352))

(declare-fun m!6749096 () Bool)

(assert (=> b!5810729 m!6749096))

(assert (=> b!5810729 m!6749096))

(declare-fun m!6749098 () Bool)

(assert (=> b!5810729 m!6749098))

(assert (=> b!5810729 m!6748352))

(declare-fun m!6749100 () Bool)

(assert (=> b!5810729 m!6749100))

(assert (=> b!5810729 m!6749096))

(declare-fun m!6749102 () Bool)

(assert (=> b!5810729 m!6749102))

(declare-fun m!6749104 () Bool)

(assert (=> b!5810728 m!6749104))

(declare-fun m!6749106 () Bool)

(assert (=> b!5810728 m!6749106))

(declare-fun m!6749108 () Bool)

(assert (=> b!5810727 m!6749108))

(declare-fun m!6749110 () Bool)

(assert (=> d!1829781 m!6749110))

(assert (=> d!1829781 m!6748352))

(declare-fun m!6749112 () Bool)

(assert (=> d!1829781 m!6749112))

(assert (=> d!1829781 m!6748296))

(assert (=> b!5810722 m!6749104))

(declare-fun m!6749114 () Bool)

(assert (=> b!5810722 m!6749114))

(assert (=> b!5810730 m!6749104))

(declare-fun m!6749116 () Bool)

(assert (=> b!5810730 m!6749116))

(assert (=> b!5810726 m!6749110))

(assert (=> b!5809894 d!1829781))

(declare-fun d!1829783 () Bool)

(declare-fun c!1029633 () Bool)

(declare-fun e!3566761 () Bool)

(assert (=> d!1829783 (= c!1029633 e!3566761)))

(declare-fun res!2450399 () Bool)

(assert (=> d!1829783 (=> (not res!2450399) (not e!3566761))))

(assert (=> d!1829783 (= res!2450399 ((_ is Cons!63656) (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299852))))))))

(declare-fun e!3566762 () (InoxSet Context!10422))

(assert (=> d!1829783 (= (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 lt!2299852))) (h!70105 s!2326)) e!3566762)))

(declare-fun b!5810731 () Bool)

(declare-fun e!3566760 () (InoxSet Context!10422))

(declare-fun call!453731 () (InoxSet Context!10422))

(assert (=> b!5810731 (= e!3566760 call!453731)))

(declare-fun b!5810732 () Bool)

(assert (=> b!5810732 (= e!3566762 e!3566760)))

(declare-fun c!1029634 () Bool)

(assert (=> b!5810732 (= c!1029634 ((_ is Cons!63656) (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299852))))))))

(declare-fun bm!453726 () Bool)

(assert (=> bm!453726 (= call!453731 (derivationStepZipperDown!1165 (h!70104 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299852))))) (Context!10423 (t!377133 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299852)))))) (h!70105 s!2326)))))

(declare-fun b!5810733 () Bool)

(assert (=> b!5810733 (= e!3566760 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810734 () Bool)

(assert (=> b!5810734 (= e!3566761 (nullable!5850 (h!70104 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299852)))))))))

(declare-fun b!5810735 () Bool)

(assert (=> b!5810735 (= e!3566762 ((_ map or) call!453731 (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299852)))))) (h!70105 s!2326))))))

(assert (= (and d!1829783 res!2450399) b!5810734))

(assert (= (and d!1829783 c!1029633) b!5810735))

(assert (= (and d!1829783 (not c!1029633)) b!5810732))

(assert (= (and b!5810732 c!1029634) b!5810731))

(assert (= (and b!5810732 (not c!1029634)) b!5810733))

(assert (= (or b!5810735 b!5810731) bm!453726))

(declare-fun m!6749118 () Bool)

(assert (=> bm!453726 m!6749118))

(declare-fun m!6749120 () Bool)

(assert (=> b!5810734 m!6749120))

(declare-fun m!6749122 () Bool)

(assert (=> b!5810735 m!6749122))

(assert (=> b!5810192 d!1829783))

(declare-fun d!1829785 () Bool)

(declare-fun c!1029635 () Bool)

(declare-fun e!3566764 () Bool)

(assert (=> d!1829785 (= c!1029635 e!3566764)))

(declare-fun res!2450400 () Bool)

(assert (=> d!1829785 (=> (not res!2450400) (not e!3566764))))

(assert (=> d!1829785 (= res!2450400 ((_ is Cons!63656) (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299834))))))))

(declare-fun e!3566765 () (InoxSet Context!10422))

(assert (=> d!1829785 (= (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 lt!2299834))) (h!70105 s!2326)) e!3566765)))

(declare-fun b!5810736 () Bool)

(declare-fun e!3566763 () (InoxSet Context!10422))

(declare-fun call!453732 () (InoxSet Context!10422))

(assert (=> b!5810736 (= e!3566763 call!453732)))

(declare-fun b!5810737 () Bool)

(assert (=> b!5810737 (= e!3566765 e!3566763)))

(declare-fun c!1029636 () Bool)

(assert (=> b!5810737 (= c!1029636 ((_ is Cons!63656) (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299834))))))))

(declare-fun bm!453727 () Bool)

(assert (=> bm!453727 (= call!453732 (derivationStepZipperDown!1165 (h!70104 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299834))))) (Context!10423 (t!377133 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299834)))))) (h!70105 s!2326)))))

(declare-fun b!5810738 () Bool)

(assert (=> b!5810738 (= e!3566763 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810739 () Bool)

(assert (=> b!5810739 (= e!3566764 (nullable!5850 (h!70104 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299834)))))))))

(declare-fun b!5810740 () Bool)

(assert (=> b!5810740 (= e!3566765 ((_ map or) call!453732 (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299834)))))) (h!70105 s!2326))))))

(assert (= (and d!1829785 res!2450400) b!5810739))

(assert (= (and d!1829785 c!1029635) b!5810740))

(assert (= (and d!1829785 (not c!1029635)) b!5810737))

(assert (= (and b!5810737 c!1029636) b!5810736))

(assert (= (and b!5810737 (not c!1029636)) b!5810738))

(assert (= (or b!5810740 b!5810736) bm!453727))

(declare-fun m!6749124 () Bool)

(assert (=> bm!453727 m!6749124))

(declare-fun m!6749126 () Bool)

(assert (=> b!5810739 m!6749126))

(declare-fun m!6749128 () Bool)

(assert (=> b!5810740 m!6749128))

(assert (=> b!5810197 d!1829785))

(declare-fun b!5810741 () Bool)

(declare-fun e!3566766 () (InoxSet Context!10422))

(declare-fun call!453738 () (InoxSet Context!10422))

(assert (=> b!5810741 (= e!3566766 call!453738)))

(declare-fun bm!453728 () Bool)

(declare-fun call!453736 () (InoxSet Context!10422))

(declare-fun call!453734 () (InoxSet Context!10422))

(assert (=> bm!453728 (= call!453736 call!453734)))

(declare-fun b!5810742 () Bool)

(declare-fun c!1029639 () Bool)

(assert (=> b!5810742 (= c!1029639 ((_ is Star!15827) (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))))))

(declare-fun e!3566767 () (InoxSet Context!10422))

(assert (=> b!5810742 (= e!3566766 e!3566767)))

(declare-fun b!5810743 () Bool)

(declare-fun e!3566770 () Bool)

(assert (=> b!5810743 (= e!3566770 (nullable!5850 (regOne!32166 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292))))))))

(declare-fun c!1029637 () Bool)

(declare-fun c!1029641 () Bool)

(declare-fun bm!453729 () Bool)

(declare-fun call!453733 () List!63780)

(assert (=> bm!453729 (= call!453733 ($colon$colon!1805 (exprs!5711 (ite c!1029458 lt!2299852 (Context!10423 call!453622))) (ite (or c!1029637 c!1029641) (regTwo!32166 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))) (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292))))))))

(declare-fun bm!453730 () Bool)

(declare-fun call!453735 () List!63780)

(assert (=> bm!453730 (= call!453735 call!453733)))

(declare-fun c!1029638 () Bool)

(declare-fun bm!453731 () Bool)

(assert (=> bm!453731 (= call!453734 (derivationStepZipperDown!1165 (ite c!1029638 (regOne!32167 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))) (ite c!1029637 (regTwo!32166 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))) (ite c!1029641 (regOne!32166 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))) (reg!16156 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292))))))) (ite (or c!1029638 c!1029637) (ite c!1029458 lt!2299852 (Context!10423 call!453622)) (Context!10423 call!453735)) (h!70105 s!2326)))))

(declare-fun b!5810744 () Bool)

(assert (=> b!5810744 (= e!3566767 call!453738)))

(declare-fun b!5810746 () Bool)

(assert (=> b!5810746 (= e!3566767 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810747 () Bool)

(declare-fun e!3566768 () (InoxSet Context!10422))

(declare-fun call!453737 () (InoxSet Context!10422))

(assert (=> b!5810747 (= e!3566768 ((_ map or) call!453734 call!453737))))

(declare-fun bm!453732 () Bool)

(assert (=> bm!453732 (= call!453737 (derivationStepZipperDown!1165 (ite c!1029638 (regTwo!32167 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))) (regOne!32166 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292))))) (ite c!1029638 (ite c!1029458 lt!2299852 (Context!10423 call!453622)) (Context!10423 call!453733)) (h!70105 s!2326)))))

(declare-fun bm!453733 () Bool)

(assert (=> bm!453733 (= call!453738 call!453736)))

(declare-fun b!5810748 () Bool)

(declare-fun e!3566769 () (InoxSet Context!10422))

(assert (=> b!5810748 (= e!3566769 e!3566766)))

(assert (=> b!5810748 (= c!1029641 ((_ is Concat!24672) (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))))))

(declare-fun e!3566771 () (InoxSet Context!10422))

(declare-fun b!5810745 () Bool)

(assert (=> b!5810745 (= e!3566771 (store ((as const (Array Context!10422 Bool)) false) (ite c!1029458 lt!2299852 (Context!10423 call!453622)) true))))

(declare-fun d!1829787 () Bool)

(declare-fun c!1029640 () Bool)

(assert (=> d!1829787 (= c!1029640 (and ((_ is ElementMatch!15827) (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))) (= (c!1029329 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))) (h!70105 s!2326))))))

(assert (=> d!1829787 (= (derivationStepZipperDown!1165 (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292))) (ite c!1029458 lt!2299852 (Context!10423 call!453622)) (h!70105 s!2326)) e!3566771)))

(declare-fun b!5810749 () Bool)

(assert (=> b!5810749 (= e!3566771 e!3566768)))

(assert (=> b!5810749 (= c!1029638 ((_ is Union!15827) (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))))))

(declare-fun b!5810750 () Bool)

(assert (=> b!5810750 (= c!1029637 e!3566770)))

(declare-fun res!2450401 () Bool)

(assert (=> b!5810750 (=> (not res!2450401) (not e!3566770))))

(assert (=> b!5810750 (= res!2450401 ((_ is Concat!24672) (ite c!1029458 (regTwo!32167 (reg!16156 r!7292)) (regOne!32166 (reg!16156 r!7292)))))))

(assert (=> b!5810750 (= e!3566768 e!3566769)))

(declare-fun b!5810751 () Bool)

(assert (=> b!5810751 (= e!3566769 ((_ map or) call!453737 call!453736))))

(assert (= (and d!1829787 c!1029640) b!5810745))

(assert (= (and d!1829787 (not c!1029640)) b!5810749))

(assert (= (and b!5810749 c!1029638) b!5810747))

(assert (= (and b!5810749 (not c!1029638)) b!5810750))

(assert (= (and b!5810750 res!2450401) b!5810743))

(assert (= (and b!5810750 c!1029637) b!5810751))

(assert (= (and b!5810750 (not c!1029637)) b!5810748))

(assert (= (and b!5810748 c!1029641) b!5810741))

(assert (= (and b!5810748 (not c!1029641)) b!5810742))

(assert (= (and b!5810742 c!1029639) b!5810744))

(assert (= (and b!5810742 (not c!1029639)) b!5810746))

(assert (= (or b!5810741 b!5810744) bm!453730))

(assert (= (or b!5810741 b!5810744) bm!453733))

(assert (= (or b!5810751 bm!453730) bm!453729))

(assert (= (or b!5810751 bm!453733) bm!453728))

(assert (= (or b!5810747 b!5810751) bm!453732))

(assert (= (or b!5810747 bm!453728) bm!453731))

(declare-fun m!6749130 () Bool)

(assert (=> bm!453731 m!6749130))

(declare-fun m!6749132 () Bool)

(assert (=> bm!453729 m!6749132))

(declare-fun m!6749134 () Bool)

(assert (=> bm!453732 m!6749134))

(declare-fun m!6749136 () Bool)

(assert (=> b!5810745 m!6749136))

(declare-fun m!6749138 () Bool)

(assert (=> b!5810743 m!6749138))

(assert (=> bm!453621 d!1829787))

(declare-fun d!1829789 () Bool)

(declare-fun c!1029642 () Bool)

(declare-fun e!3566773 () Bool)

(assert (=> d!1829789 (= c!1029642 e!3566773)))

(declare-fun res!2450402 () Bool)

(assert (=> d!1829789 (=> (not res!2450402) (not e!3566773))))

(assert (=> d!1829789 (= res!2450402 ((_ is Cons!63656) (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299848))))))))

(declare-fun e!3566774 () (InoxSet Context!10422))

(assert (=> d!1829789 (= (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 lt!2299848))) (h!70105 s!2326)) e!3566774)))

(declare-fun b!5810752 () Bool)

(declare-fun e!3566772 () (InoxSet Context!10422))

(declare-fun call!453739 () (InoxSet Context!10422))

(assert (=> b!5810752 (= e!3566772 call!453739)))

(declare-fun b!5810753 () Bool)

(assert (=> b!5810753 (= e!3566774 e!3566772)))

(declare-fun c!1029643 () Bool)

(assert (=> b!5810753 (= c!1029643 ((_ is Cons!63656) (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299848))))))))

(declare-fun bm!453734 () Bool)

(assert (=> bm!453734 (= call!453739 (derivationStepZipperDown!1165 (h!70104 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299848))))) (Context!10423 (t!377133 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299848)))))) (h!70105 s!2326)))))

(declare-fun b!5810754 () Bool)

(assert (=> b!5810754 (= e!3566772 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810755 () Bool)

(assert (=> b!5810755 (= e!3566773 (nullable!5850 (h!70104 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299848)))))))))

(declare-fun b!5810756 () Bool)

(assert (=> b!5810756 (= e!3566774 ((_ map or) call!453739 (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299848)))))) (h!70105 s!2326))))))

(assert (= (and d!1829789 res!2450402) b!5810755))

(assert (= (and d!1829789 c!1029642) b!5810756))

(assert (= (and d!1829789 (not c!1029642)) b!5810753))

(assert (= (and b!5810753 c!1029643) b!5810752))

(assert (= (and b!5810753 (not c!1029643)) b!5810754))

(assert (= (or b!5810756 b!5810752) bm!453734))

(declare-fun m!6749140 () Bool)

(assert (=> bm!453734 m!6749140))

(declare-fun m!6749142 () Bool)

(assert (=> b!5810755 m!6749142))

(declare-fun m!6749144 () Bool)

(assert (=> b!5810756 m!6749144))

(assert (=> b!5810134 d!1829789))

(declare-fun d!1829791 () Bool)

(assert (=> d!1829791 (= (map!14593 lt!2299836 lambda!317390) (choose!44126 lt!2299836 lambda!317390))))

(declare-fun bs!1371649 () Bool)

(assert (= bs!1371649 d!1829791))

(declare-fun m!6749146 () Bool)

(assert (=> bs!1371649 m!6749146))

(assert (=> d!1829609 d!1829791))

(declare-fun d!1829793 () Bool)

(assert (=> d!1829793 (= ($colon$colon!1805 (exprs!5711 lt!2299852) (ite (or c!1029457 c!1029461) (regTwo!32166 (reg!16156 r!7292)) (reg!16156 r!7292))) (Cons!63656 (ite (or c!1029457 c!1029461) (regTwo!32166 (reg!16156 r!7292)) (reg!16156 r!7292)) (exprs!5711 lt!2299852)))))

(assert (=> bm!453618 d!1829793))

(assert (=> d!1829569 d!1829559))

(declare-fun d!1829795 () Bool)

(assert (=> d!1829795 (= (flatMap!1434 lt!2299862 lambda!317310) (dynLambda!24920 lambda!317310 lt!2299848))))

(assert (=> d!1829795 true))

(declare-fun _$13!2538 () Unit!156914)

(assert (=> d!1829795 (= (choose!44118 lt!2299862 lt!2299848 lambda!317310) _$13!2538)))

(declare-fun b_lambda!219029 () Bool)

(assert (=> (not b_lambda!219029) (not d!1829795)))

(declare-fun bs!1371650 () Bool)

(assert (= bs!1371650 d!1829795))

(assert (=> bs!1371650 m!6748160))

(assert (=> bs!1371650 m!6748552))

(assert (=> d!1829569 d!1829795))

(assert (=> d!1829597 d!1829593))

(declare-fun d!1829797 () Bool)

(assert (=> d!1829797 (= (flatMap!1434 lt!2299860 lambda!317310) (dynLambda!24920 lambda!317310 lt!2299852))))

(assert (=> d!1829797 true))

(declare-fun _$13!2539 () Unit!156914)

(assert (=> d!1829797 (= (choose!44118 lt!2299860 lt!2299852 lambda!317310) _$13!2539)))

(declare-fun b_lambda!219031 () Bool)

(assert (=> (not b_lambda!219031) (not d!1829797)))

(declare-fun bs!1371651 () Bool)

(assert (= bs!1371651 d!1829797))

(assert (=> bs!1371651 m!6748186))

(assert (=> bs!1371651 m!6748604))

(assert (=> d!1829597 d!1829797))

(declare-fun bs!1371652 () Bool)

(declare-fun b!5810765 () Bool)

(assert (= bs!1371652 (and b!5810765 d!1829459)))

(declare-fun lambda!317415 () Int)

(assert (=> bs!1371652 (not (= lambda!317415 lambda!317326))))

(declare-fun bs!1371653 () Bool)

(assert (= bs!1371653 (and b!5810765 b!5810674)))

(assert (=> bs!1371653 (not (= lambda!317415 lambda!317413))))

(declare-fun bs!1371654 () Bool)

(assert (= bs!1371654 (and b!5810765 d!1829503)))

(assert (=> bs!1371654 (not (= lambda!317415 lambda!317352))))

(declare-fun bs!1371655 () Bool)

(assert (= bs!1371655 (and b!5810765 b!5809628)))

(assert (=> bs!1371655 (= (and (= (reg!16156 (regOne!32167 lt!2299853)) (reg!16156 r!7292)) (= (regOne!32167 lt!2299853) r!7292)) (= lambda!317415 lambda!317308))))

(declare-fun bs!1371656 () Bool)

(assert (= bs!1371656 (and b!5810765 d!1829483)))

(assert (=> bs!1371656 (not (= lambda!317415 lambda!317339))))

(declare-fun bs!1371657 () Bool)

(assert (= bs!1371657 (and b!5810765 b!5809950)))

(assert (=> bs!1371657 (= (and (= (reg!16156 (regOne!32167 lt!2299853)) (reg!16156 r!7292)) (= (regOne!32167 lt!2299853) r!7292)) (= lambda!317415 lambda!317353))))

(declare-fun bs!1371658 () Bool)

(assert (= bs!1371658 (and b!5810765 b!5809700)))

(assert (=> bs!1371658 (not (= lambda!317415 lambda!317318))))

(declare-fun bs!1371659 () Bool)

(assert (= bs!1371659 (and b!5810765 b!5810677)))

(assert (=> bs!1371659 (= (and (= (reg!16156 (regOne!32167 lt!2299853)) (reg!16156 (regTwo!32167 r!7292))) (= (regOne!32167 lt!2299853) (regTwo!32167 r!7292))) (= lambda!317415 lambda!317412))))

(declare-fun bs!1371660 () Bool)

(assert (= bs!1371660 (and b!5810765 b!5810560)))

(assert (=> bs!1371660 (not (= lambda!317415 lambda!317408))))

(assert (=> bs!1371655 (not (= lambda!317415 lambda!317309))))

(assert (=> bs!1371652 (= (and (= (reg!16156 (regOne!32167 lt!2299853)) (reg!16156 r!7292)) (= (regOne!32167 lt!2299853) (Star!15827 (reg!16156 r!7292)))) (= lambda!317415 lambda!317327))))

(declare-fun bs!1371661 () Bool)

(assert (= bs!1371661 (and b!5810765 b!5809947)))

(assert (=> bs!1371661 (not (= lambda!317415 lambda!317354))))

(declare-fun bs!1371662 () Bool)

(assert (= bs!1371662 (and b!5810765 b!5810563)))

(assert (=> bs!1371662 (= (and (= (reg!16156 (regOne!32167 lt!2299853)) (reg!16156 (regOne!32167 r!7292))) (= (regOne!32167 lt!2299853) (regOne!32167 r!7292))) (= lambda!317415 lambda!317407))))

(declare-fun bs!1371663 () Bool)

(assert (= bs!1371663 (and b!5810765 b!5809703)))

(assert (=> bs!1371663 (= (and (= (reg!16156 (regOne!32167 lt!2299853)) (reg!16156 lt!2299853)) (= (regOne!32167 lt!2299853) lt!2299853)) (= lambda!317415 lambda!317317))))

(assert (=> bs!1371655 (not (= lambda!317415 lambda!317307))))

(assert (=> bs!1371656 (not (= lambda!317415 lambda!317338))))

(assert (=> b!5810765 true))

(assert (=> b!5810765 true))

(declare-fun bs!1371664 () Bool)

(declare-fun b!5810762 () Bool)

(assert (= bs!1371664 (and b!5810762 d!1829459)))

(declare-fun lambda!317416 () Int)

(assert (=> bs!1371664 (not (= lambda!317416 lambda!317326))))

(declare-fun bs!1371665 () Bool)

(assert (= bs!1371665 (and b!5810762 b!5810674)))

(assert (=> bs!1371665 (= (and (= (regOne!32166 (regOne!32167 lt!2299853)) (regOne!32166 (regTwo!32167 r!7292))) (= (regTwo!32166 (regOne!32167 lt!2299853)) (regTwo!32166 (regTwo!32167 r!7292)))) (= lambda!317416 lambda!317413))))

(declare-fun bs!1371666 () Bool)

(assert (= bs!1371666 (and b!5810762 d!1829503)))

(assert (=> bs!1371666 (not (= lambda!317416 lambda!317352))))

(declare-fun bs!1371667 () Bool)

(assert (= bs!1371667 (and b!5810762 b!5809628)))

(assert (=> bs!1371667 (not (= lambda!317416 lambda!317308))))

(declare-fun bs!1371668 () Bool)

(assert (= bs!1371668 (and b!5810762 d!1829483)))

(assert (=> bs!1371668 (= (and (= (regOne!32166 (regOne!32167 lt!2299853)) (reg!16156 r!7292)) (= (regTwo!32166 (regOne!32167 lt!2299853)) r!7292)) (= lambda!317416 lambda!317339))))

(declare-fun bs!1371669 () Bool)

(assert (= bs!1371669 (and b!5810762 b!5809950)))

(assert (=> bs!1371669 (not (= lambda!317416 lambda!317353))))

(declare-fun bs!1371670 () Bool)

(assert (= bs!1371670 (and b!5810762 b!5809700)))

(assert (=> bs!1371670 (= (and (= (regOne!32166 (regOne!32167 lt!2299853)) (regOne!32166 lt!2299853)) (= (regTwo!32166 (regOne!32167 lt!2299853)) (regTwo!32166 lt!2299853))) (= lambda!317416 lambda!317318))))

(declare-fun bs!1371671 () Bool)

(assert (= bs!1371671 (and b!5810762 b!5810677)))

(assert (=> bs!1371671 (not (= lambda!317416 lambda!317412))))

(declare-fun bs!1371672 () Bool)

(assert (= bs!1371672 (and b!5810762 b!5810560)))

(assert (=> bs!1371672 (= (and (= (regOne!32166 (regOne!32167 lt!2299853)) (regOne!32166 (regOne!32167 r!7292))) (= (regTwo!32166 (regOne!32167 lt!2299853)) (regTwo!32166 (regOne!32167 r!7292)))) (= lambda!317416 lambda!317408))))

(assert (=> bs!1371667 (= (and (= (regOne!32166 (regOne!32167 lt!2299853)) (reg!16156 r!7292)) (= (regTwo!32166 (regOne!32167 lt!2299853)) r!7292)) (= lambda!317416 lambda!317309))))

(assert (=> bs!1371664 (not (= lambda!317416 lambda!317327))))

(declare-fun bs!1371673 () Bool)

(assert (= bs!1371673 (and b!5810762 b!5810563)))

(assert (=> bs!1371673 (not (= lambda!317416 lambda!317407))))

(declare-fun bs!1371674 () Bool)

(assert (= bs!1371674 (and b!5810762 b!5809703)))

(assert (=> bs!1371674 (not (= lambda!317416 lambda!317317))))

(assert (=> bs!1371667 (not (= lambda!317416 lambda!317307))))

(assert (=> bs!1371668 (not (= lambda!317416 lambda!317338))))

(declare-fun bs!1371675 () Bool)

(assert (= bs!1371675 (and b!5810762 b!5810765)))

(assert (=> bs!1371675 (not (= lambda!317416 lambda!317415))))

(declare-fun bs!1371676 () Bool)

(assert (= bs!1371676 (and b!5810762 b!5809947)))

(assert (=> bs!1371676 (= (and (= (regOne!32166 (regOne!32167 lt!2299853)) (regOne!32166 r!7292)) (= (regTwo!32166 (regOne!32167 lt!2299853)) (regTwo!32166 r!7292))) (= lambda!317416 lambda!317354))))

(assert (=> b!5810762 true))

(assert (=> b!5810762 true))

(declare-fun b!5810757 () Bool)

(declare-fun e!3566778 () Bool)

(declare-fun e!3566776 () Bool)

(assert (=> b!5810757 (= e!3566778 e!3566776)))

(declare-fun c!1029644 () Bool)

(assert (=> b!5810757 (= c!1029644 ((_ is Star!15827) (regOne!32167 lt!2299853)))))

(declare-fun bm!453735 () Bool)

(declare-fun call!453740 () Bool)

(assert (=> bm!453735 (= call!453740 (Exists!2927 (ite c!1029644 lambda!317415 lambda!317416)))))

(declare-fun b!5810758 () Bool)

(declare-fun res!2450403 () Bool)

(declare-fun e!3566779 () Bool)

(assert (=> b!5810758 (=> res!2450403 e!3566779)))

(declare-fun call!453741 () Bool)

(assert (=> b!5810758 (= res!2450403 call!453741)))

(assert (=> b!5810758 (= e!3566776 e!3566779)))

(declare-fun b!5810759 () Bool)

(declare-fun e!3566777 () Bool)

(assert (=> b!5810759 (= e!3566777 call!453741)))

(declare-fun b!5810760 () Bool)

(declare-fun e!3566780 () Bool)

(assert (=> b!5810760 (= e!3566780 (= s!2326 (Cons!63657 (c!1029329 (regOne!32167 lt!2299853)) Nil!63657)))))

(declare-fun b!5810761 () Bool)

(declare-fun c!1029647 () Bool)

(assert (=> b!5810761 (= c!1029647 ((_ is ElementMatch!15827) (regOne!32167 lt!2299853)))))

(declare-fun e!3566781 () Bool)

(assert (=> b!5810761 (= e!3566781 e!3566780)))

(declare-fun bm!453736 () Bool)

(assert (=> bm!453736 (= call!453741 (isEmpty!35571 s!2326))))

(declare-fun d!1829799 () Bool)

(declare-fun c!1029646 () Bool)

(assert (=> d!1829799 (= c!1029646 ((_ is EmptyExpr!15827) (regOne!32167 lt!2299853)))))

(assert (=> d!1829799 (= (matchRSpec!2930 (regOne!32167 lt!2299853) s!2326) e!3566777)))

(assert (=> b!5810762 (= e!3566776 call!453740)))

(declare-fun b!5810763 () Bool)

(declare-fun c!1029645 () Bool)

(assert (=> b!5810763 (= c!1029645 ((_ is Union!15827) (regOne!32167 lt!2299853)))))

(assert (=> b!5810763 (= e!3566780 e!3566778)))

(declare-fun b!5810764 () Bool)

(assert (=> b!5810764 (= e!3566777 e!3566781)))

(declare-fun res!2450404 () Bool)

(assert (=> b!5810764 (= res!2450404 (not ((_ is EmptyLang!15827) (regOne!32167 lt!2299853))))))

(assert (=> b!5810764 (=> (not res!2450404) (not e!3566781))))

(assert (=> b!5810765 (= e!3566779 call!453740)))

(declare-fun b!5810766 () Bool)

(declare-fun e!3566775 () Bool)

(assert (=> b!5810766 (= e!3566778 e!3566775)))

(declare-fun res!2450405 () Bool)

(assert (=> b!5810766 (= res!2450405 (matchRSpec!2930 (regOne!32167 (regOne!32167 lt!2299853)) s!2326))))

(assert (=> b!5810766 (=> res!2450405 e!3566775)))

(declare-fun b!5810767 () Bool)

(assert (=> b!5810767 (= e!3566775 (matchRSpec!2930 (regTwo!32167 (regOne!32167 lt!2299853)) s!2326))))

(assert (= (and d!1829799 c!1029646) b!5810759))

(assert (= (and d!1829799 (not c!1029646)) b!5810764))

(assert (= (and b!5810764 res!2450404) b!5810761))

(assert (= (and b!5810761 c!1029647) b!5810760))

(assert (= (and b!5810761 (not c!1029647)) b!5810763))

(assert (= (and b!5810763 c!1029645) b!5810766))

(assert (= (and b!5810763 (not c!1029645)) b!5810757))

(assert (= (and b!5810766 (not res!2450405)) b!5810767))

(assert (= (and b!5810757 c!1029644) b!5810758))

(assert (= (and b!5810757 (not c!1029644)) b!5810762))

(assert (= (and b!5810758 (not res!2450403)) b!5810765))

(assert (= (or b!5810765 b!5810762) bm!453735))

(assert (= (or b!5810759 b!5810758) bm!453736))

(declare-fun m!6749154 () Bool)

(assert (=> bm!453735 m!6749154))

(assert (=> bm!453736 m!6748148))

(declare-fun m!6749156 () Bool)

(assert (=> b!5810766 m!6749156))

(declare-fun m!6749158 () Bool)

(assert (=> b!5810767 m!6749158))

(assert (=> b!5809704 d!1829799))

(declare-fun d!1829805 () Bool)

(assert (=> d!1829805 (= (isEmptyLang!1308 lt!2299972) ((_ is EmptyLang!15827) lt!2299972))))

(assert (=> b!5810281 d!1829805))

(declare-fun d!1829807 () Bool)

(declare-fun e!3566795 () Bool)

(assert (=> d!1829807 e!3566795))

(declare-fun c!1029654 () Bool)

(assert (=> d!1829807 (= c!1029654 ((_ is EmptyExpr!15827) (reg!16156 r!7292)))))

(declare-fun lt!2300011 () Bool)

(declare-fun e!3566800 () Bool)

(assert (=> d!1829807 (= lt!2300011 e!3566800)))

(declare-fun c!1029656 () Bool)

(assert (=> d!1829807 (= c!1029656 (isEmpty!35571 (_1!36227 (get!21975 lt!2299895))))))

(assert (=> d!1829807 (validRegex!7563 (reg!16156 r!7292))))

(assert (=> d!1829807 (= (matchR!8012 (reg!16156 r!7292) (_1!36227 (get!21975 lt!2299895))) lt!2300011)))

(declare-fun bm!453740 () Bool)

(declare-fun call!453745 () Bool)

(assert (=> bm!453740 (= call!453745 (isEmpty!35571 (_1!36227 (get!21975 lt!2299895))))))

(declare-fun b!5810787 () Bool)

(declare-fun res!2450418 () Bool)

(declare-fun e!3566801 () Bool)

(assert (=> b!5810787 (=> res!2450418 e!3566801)))

(declare-fun e!3566797 () Bool)

(assert (=> b!5810787 (= res!2450418 e!3566797)))

(declare-fun res!2450417 () Bool)

(assert (=> b!5810787 (=> (not res!2450417) (not e!3566797))))

(assert (=> b!5810787 (= res!2450417 lt!2300011)))

(declare-fun b!5810788 () Bool)

(assert (=> b!5810788 (= e!3566797 (= (head!12260 (_1!36227 (get!21975 lt!2299895))) (c!1029329 (reg!16156 r!7292))))))

(declare-fun b!5810789 () Bool)

(declare-fun e!3566799 () Bool)

(assert (=> b!5810789 (= e!3566795 e!3566799)))

(declare-fun c!1029655 () Bool)

(assert (=> b!5810789 (= c!1029655 ((_ is EmptyLang!15827) (reg!16156 r!7292)))))

(declare-fun b!5810790 () Bool)

(declare-fun res!2450415 () Bool)

(declare-fun e!3566796 () Bool)

(assert (=> b!5810790 (=> res!2450415 e!3566796)))

(assert (=> b!5810790 (= res!2450415 (not (isEmpty!35571 (tail!11355 (_1!36227 (get!21975 lt!2299895))))))))

(declare-fun b!5810791 () Bool)

(assert (=> b!5810791 (= e!3566799 (not lt!2300011))))

(declare-fun b!5810792 () Bool)

(declare-fun e!3566798 () Bool)

(assert (=> b!5810792 (= e!3566798 e!3566796)))

(declare-fun res!2450420 () Bool)

(assert (=> b!5810792 (=> res!2450420 e!3566796)))

(assert (=> b!5810792 (= res!2450420 call!453745)))

(declare-fun b!5810793 () Bool)

(assert (=> b!5810793 (= e!3566800 (nullable!5850 (reg!16156 r!7292)))))

(declare-fun b!5810794 () Bool)

(declare-fun res!2450413 () Bool)

(assert (=> b!5810794 (=> (not res!2450413) (not e!3566797))))

(assert (=> b!5810794 (= res!2450413 (not call!453745))))

(declare-fun b!5810795 () Bool)

(declare-fun res!2450414 () Bool)

(assert (=> b!5810795 (=> res!2450414 e!3566801)))

(assert (=> b!5810795 (= res!2450414 (not ((_ is ElementMatch!15827) (reg!16156 r!7292))))))

(assert (=> b!5810795 (= e!3566799 e!3566801)))

(declare-fun b!5810796 () Bool)

(assert (=> b!5810796 (= e!3566800 (matchR!8012 (derivativeStep!4593 (reg!16156 r!7292) (head!12260 (_1!36227 (get!21975 lt!2299895)))) (tail!11355 (_1!36227 (get!21975 lt!2299895)))))))

(declare-fun b!5810797 () Bool)

(assert (=> b!5810797 (= e!3566796 (not (= (head!12260 (_1!36227 (get!21975 lt!2299895))) (c!1029329 (reg!16156 r!7292)))))))

(declare-fun b!5810798 () Bool)

(declare-fun res!2450419 () Bool)

(assert (=> b!5810798 (=> (not res!2450419) (not e!3566797))))

(assert (=> b!5810798 (= res!2450419 (isEmpty!35571 (tail!11355 (_1!36227 (get!21975 lt!2299895)))))))

(declare-fun b!5810799 () Bool)

(assert (=> b!5810799 (= e!3566795 (= lt!2300011 call!453745))))

(declare-fun b!5810800 () Bool)

(assert (=> b!5810800 (= e!3566801 e!3566798)))

(declare-fun res!2450416 () Bool)

(assert (=> b!5810800 (=> (not res!2450416) (not e!3566798))))

(assert (=> b!5810800 (= res!2450416 (not lt!2300011))))

(assert (= (and d!1829807 c!1029656) b!5810793))

(assert (= (and d!1829807 (not c!1029656)) b!5810796))

(assert (= (and d!1829807 c!1029654) b!5810799))

(assert (= (and d!1829807 (not c!1029654)) b!5810789))

(assert (= (and b!5810789 c!1029655) b!5810791))

(assert (= (and b!5810789 (not c!1029655)) b!5810795))

(assert (= (and b!5810795 (not res!2450414)) b!5810787))

(assert (= (and b!5810787 res!2450417) b!5810794))

(assert (= (and b!5810794 res!2450413) b!5810798))

(assert (= (and b!5810798 res!2450419) b!5810788))

(assert (= (and b!5810787 (not res!2450418)) b!5810800))

(assert (= (and b!5810800 res!2450416) b!5810792))

(assert (= (and b!5810792 (not res!2450420)) b!5810790))

(assert (= (and b!5810790 (not res!2450415)) b!5810797))

(assert (= (or b!5810799 b!5810794 b!5810792) bm!453740))

(declare-fun m!6749160 () Bool)

(assert (=> d!1829807 m!6749160))

(assert (=> d!1829807 m!6748296))

(declare-fun m!6749162 () Bool)

(assert (=> b!5810796 m!6749162))

(assert (=> b!5810796 m!6749162))

(declare-fun m!6749164 () Bool)

(assert (=> b!5810796 m!6749164))

(declare-fun m!6749166 () Bool)

(assert (=> b!5810796 m!6749166))

(assert (=> b!5810796 m!6749164))

(assert (=> b!5810796 m!6749166))

(declare-fun m!6749168 () Bool)

(assert (=> b!5810796 m!6749168))

(assert (=> b!5810793 m!6748564))

(assert (=> b!5810798 m!6749166))

(assert (=> b!5810798 m!6749166))

(declare-fun m!6749170 () Bool)

(assert (=> b!5810798 m!6749170))

(assert (=> b!5810797 m!6749162))

(assert (=> bm!453740 m!6749160))

(assert (=> b!5810788 m!6749162))

(assert (=> b!5810790 m!6749166))

(assert (=> b!5810790 m!6749166))

(assert (=> b!5810790 m!6749170))

(assert (=> b!5809887 d!1829807))

(assert (=> b!5809887 d!1829733))

(declare-fun d!1829809 () Bool)

(assert (=> d!1829809 (= (nullable!5850 (reg!16156 r!7292)) (nullableFct!1875 (reg!16156 r!7292)))))

(declare-fun bs!1371683 () Bool)

(assert (= bs!1371683 d!1829809))

(declare-fun m!6749172 () Bool)

(assert (=> bs!1371683 m!6749172))

(assert (=> b!5810163 d!1829809))

(assert (=> b!5809977 d!1829721))

(declare-fun d!1829811 () Bool)

(assert (=> d!1829811 (= (nullable!5850 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (nullableFct!1875 (h!70104 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))))))

(declare-fun bs!1371684 () Bool)

(assert (= bs!1371684 d!1829811))

(declare-fun m!6749176 () Bool)

(assert (=> bs!1371684 m!6749176))

(assert (=> b!5810186 d!1829811))

(declare-fun d!1829813 () Bool)

(assert (=> d!1829813 (= (Exists!2927 lambda!317326) (choose!44109 lambda!317326))))

(declare-fun bs!1371685 () Bool)

(assert (= bs!1371685 d!1829813))

(declare-fun m!6749182 () Bool)

(assert (=> bs!1371685 m!6749182))

(assert (=> d!1829459 d!1829813))

(declare-fun d!1829815 () Bool)

(assert (=> d!1829815 (= (Exists!2927 lambda!317327) (choose!44109 lambda!317327))))

(declare-fun bs!1371686 () Bool)

(assert (= bs!1371686 d!1829815))

(declare-fun m!6749188 () Bool)

(assert (=> bs!1371686 m!6749188))

(assert (=> d!1829459 d!1829815))

(declare-fun bs!1371694 () Bool)

(declare-fun d!1829817 () Bool)

(assert (= bs!1371694 (and d!1829817 d!1829459)))

(declare-fun lambda!317423 () Int)

(assert (=> bs!1371694 (= lambda!317423 lambda!317326)))

(declare-fun bs!1371695 () Bool)

(assert (= bs!1371695 (and d!1829817 b!5810674)))

(assert (=> bs!1371695 (not (= lambda!317423 lambda!317413))))

(declare-fun bs!1371696 () Bool)

(assert (= bs!1371696 (and d!1829817 d!1829503)))

(assert (=> bs!1371696 (= (= (Star!15827 (reg!16156 r!7292)) r!7292) (= lambda!317423 lambda!317352))))

(declare-fun bs!1371697 () Bool)

(assert (= bs!1371697 (and d!1829817 b!5809628)))

(assert (=> bs!1371697 (not (= lambda!317423 lambda!317308))))

(declare-fun bs!1371698 () Bool)

(assert (= bs!1371698 (and d!1829817 d!1829483)))

(assert (=> bs!1371698 (not (= lambda!317423 lambda!317339))))

(declare-fun bs!1371699 () Bool)

(assert (= bs!1371699 (and d!1829817 b!5809950)))

(assert (=> bs!1371699 (not (= lambda!317423 lambda!317353))))

(declare-fun bs!1371700 () Bool)

(assert (= bs!1371700 (and d!1829817 b!5809700)))

(assert (=> bs!1371700 (not (= lambda!317423 lambda!317318))))

(declare-fun bs!1371701 () Bool)

(assert (= bs!1371701 (and d!1829817 b!5810677)))

(assert (=> bs!1371701 (not (= lambda!317423 lambda!317412))))

(declare-fun bs!1371702 () Bool)

(assert (= bs!1371702 (and d!1829817 b!5810560)))

(assert (=> bs!1371702 (not (= lambda!317423 lambda!317408))))

(declare-fun bs!1371703 () Bool)

(assert (= bs!1371703 (and d!1829817 b!5810762)))

(assert (=> bs!1371703 (not (= lambda!317423 lambda!317416))))

(assert (=> bs!1371697 (not (= lambda!317423 lambda!317309))))

(assert (=> bs!1371694 (not (= lambda!317423 lambda!317327))))

(declare-fun bs!1371704 () Bool)

(assert (= bs!1371704 (and d!1829817 b!5810563)))

(assert (=> bs!1371704 (not (= lambda!317423 lambda!317407))))

(declare-fun bs!1371705 () Bool)

(assert (= bs!1371705 (and d!1829817 b!5809703)))

(assert (=> bs!1371705 (not (= lambda!317423 lambda!317317))))

(assert (=> bs!1371697 (= (= (Star!15827 (reg!16156 r!7292)) r!7292) (= lambda!317423 lambda!317307))))

(assert (=> bs!1371698 (= (= (Star!15827 (reg!16156 r!7292)) r!7292) (= lambda!317423 lambda!317338))))

(declare-fun bs!1371708 () Bool)

(assert (= bs!1371708 (and d!1829817 b!5810765)))

(assert (=> bs!1371708 (not (= lambda!317423 lambda!317415))))

(declare-fun bs!1371709 () Bool)

(assert (= bs!1371709 (and d!1829817 b!5809947)))

(assert (=> bs!1371709 (not (= lambda!317423 lambda!317354))))

(assert (=> d!1829817 true))

(assert (=> d!1829817 true))

(declare-fun lambda!317425 () Int)

(assert (=> bs!1371694 (not (= lambda!317425 lambda!317326))))

(declare-fun bs!1371716 () Bool)

(assert (= bs!1371716 d!1829817))

(assert (=> bs!1371716 (not (= lambda!317425 lambda!317423))))

(assert (=> bs!1371695 (not (= lambda!317425 lambda!317413))))

(assert (=> bs!1371696 (not (= lambda!317425 lambda!317352))))

(assert (=> bs!1371697 (= (= (Star!15827 (reg!16156 r!7292)) r!7292) (= lambda!317425 lambda!317308))))

(assert (=> bs!1371698 (not (= lambda!317425 lambda!317339))))

(assert (=> bs!1371699 (= (= (Star!15827 (reg!16156 r!7292)) r!7292) (= lambda!317425 lambda!317353))))

(assert (=> bs!1371700 (not (= lambda!317425 lambda!317318))))

(assert (=> bs!1371701 (= (and (= (reg!16156 r!7292) (reg!16156 (regTwo!32167 r!7292))) (= (Star!15827 (reg!16156 r!7292)) (regTwo!32167 r!7292))) (= lambda!317425 lambda!317412))))

(assert (=> bs!1371702 (not (= lambda!317425 lambda!317408))))

(assert (=> bs!1371703 (not (= lambda!317425 lambda!317416))))

(assert (=> bs!1371697 (not (= lambda!317425 lambda!317309))))

(assert (=> bs!1371694 (= lambda!317425 lambda!317327)))

(assert (=> bs!1371704 (= (and (= (reg!16156 r!7292) (reg!16156 (regOne!32167 r!7292))) (= (Star!15827 (reg!16156 r!7292)) (regOne!32167 r!7292))) (= lambda!317425 lambda!317407))))

(assert (=> bs!1371705 (= (and (= (reg!16156 r!7292) (reg!16156 lt!2299853)) (= (Star!15827 (reg!16156 r!7292)) lt!2299853)) (= lambda!317425 lambda!317317))))

(assert (=> bs!1371697 (not (= lambda!317425 lambda!317307))))

(assert (=> bs!1371698 (not (= lambda!317425 lambda!317338))))

(assert (=> bs!1371708 (= (and (= (reg!16156 r!7292) (reg!16156 (regOne!32167 lt!2299853))) (= (Star!15827 (reg!16156 r!7292)) (regOne!32167 lt!2299853))) (= lambda!317425 lambda!317415))))

(assert (=> bs!1371709 (not (= lambda!317425 lambda!317354))))

(assert (=> d!1829817 true))

(assert (=> d!1829817 true))

(assert (=> d!1829817 (= (Exists!2927 lambda!317423) (Exists!2927 lambda!317425))))

(assert (=> d!1829817 true))

(declare-fun _$91!566 () Unit!156914)

(assert (=> d!1829817 (= (choose!44108 (reg!16156 r!7292) s!2326) _$91!566)))

(declare-fun m!6749222 () Bool)

(assert (=> bs!1371716 m!6749222))

(declare-fun m!6749224 () Bool)

(assert (=> bs!1371716 m!6749224))

(assert (=> d!1829459 d!1829817))

(assert (=> d!1829459 d!1829771))

(declare-fun d!1829833 () Bool)

(assert (=> d!1829833 (= (isEmptyExpr!1298 lt!2299922) ((_ is EmptyExpr!15827) lt!2299922))))

(assert (=> b!5810030 d!1829833))

(declare-fun d!1829835 () Bool)

(assert (=> d!1829835 (= (nullable!5850 (regOne!32166 r!7292)) (nullableFct!1875 (regOne!32166 r!7292)))))

(declare-fun bs!1371717 () Bool)

(assert (= bs!1371717 d!1829835))

(declare-fun m!6749226 () Bool)

(assert (=> bs!1371717 m!6749226))

(assert (=> b!5810174 d!1829835))

(declare-fun d!1829837 () Bool)

(assert (=> d!1829837 (= (nullable!5850 (h!70104 (exprs!5711 (h!70106 zl!343)))) (nullableFct!1875 (h!70104 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun bs!1371718 () Bool)

(assert (= bs!1371718 d!1829837))

(declare-fun m!6749228 () Bool)

(assert (=> bs!1371718 m!6749228))

(assert (=> b!5810223 d!1829837))

(assert (=> bs!1371526 d!1829561))

(declare-fun d!1829839 () Bool)

(declare-fun lambda!317431 () Int)

(declare-fun exists!2259 ((InoxSet Context!10422) Int) Bool)

(assert (=> d!1829839 (= (nullableZipper!1734 lt!2299862) (exists!2259 lt!2299862 lambda!317431))))

(declare-fun bs!1371720 () Bool)

(assert (= bs!1371720 d!1829839))

(declare-fun m!6749232 () Bool)

(assert (=> bs!1371720 m!6749232))

(assert (=> b!5810058 d!1829839))

(declare-fun d!1829843 () Bool)

(assert (=> d!1829843 true))

(declare-fun setRes!39126 () Bool)

(assert (=> d!1829843 setRes!39126))

(declare-fun condSetEmpty!39126 () Bool)

(declare-fun res!2450438 () (InoxSet Context!10422))

(assert (=> d!1829843 (= condSetEmpty!39126 (= res!2450438 ((as const (Array Context!10422 Bool)) false)))))

(assert (=> d!1829843 (= (choose!44117 lt!2299862 lambda!317310) res!2450438)))

(declare-fun setIsEmpty!39126 () Bool)

(assert (=> setIsEmpty!39126 setRes!39126))

(declare-fun tp!1603508 () Bool)

(declare-fun setElem!39126 () Context!10422)

(declare-fun setNonEmpty!39126 () Bool)

(declare-fun e!3566817 () Bool)

(assert (=> setNonEmpty!39126 (= setRes!39126 (and tp!1603508 (inv!82814 setElem!39126) e!3566817))))

(declare-fun setRest!39126 () (InoxSet Context!10422))

(assert (=> setNonEmpty!39126 (= res!2450438 ((_ map or) (store ((as const (Array Context!10422 Bool)) false) setElem!39126 true) setRest!39126))))

(declare-fun b!5810826 () Bool)

(declare-fun tp!1603507 () Bool)

(assert (=> b!5810826 (= e!3566817 tp!1603507)))

(assert (= (and d!1829843 condSetEmpty!39126) setIsEmpty!39126))

(assert (= (and d!1829843 (not condSetEmpty!39126)) setNonEmpty!39126))

(assert (= setNonEmpty!39126 b!5810826))

(declare-fun m!6749234 () Bool)

(assert (=> setNonEmpty!39126 m!6749234))

(assert (=> d!1829559 d!1829843))

(declare-fun d!1829845 () Bool)

(assert (=> d!1829845 (= (Exists!2927 lambda!317352) (choose!44109 lambda!317352))))

(declare-fun bs!1371721 () Bool)

(assert (= bs!1371721 d!1829845))

(declare-fun m!6749236 () Bool)

(assert (=> bs!1371721 m!6749236))

(assert (=> d!1829503 d!1829845))

(assert (=> d!1829503 d!1829457))

(declare-fun bs!1371722 () Bool)

(declare-fun d!1829847 () Bool)

(assert (= bs!1371722 (and d!1829847 d!1829459)))

(declare-fun lambda!317434 () Int)

(assert (=> bs!1371722 (= (= r!7292 (Star!15827 (reg!16156 r!7292))) (= lambda!317434 lambda!317326))))

(declare-fun bs!1371723 () Bool)

(assert (= bs!1371723 (and d!1829847 d!1829817)))

(assert (=> bs!1371723 (= (= r!7292 (Star!15827 (reg!16156 r!7292))) (= lambda!317434 lambda!317423))))

(declare-fun bs!1371724 () Bool)

(assert (= bs!1371724 (and d!1829847 d!1829503)))

(assert (=> bs!1371724 (= lambda!317434 lambda!317352)))

(declare-fun bs!1371725 () Bool)

(assert (= bs!1371725 (and d!1829847 b!5809628)))

(assert (=> bs!1371725 (not (= lambda!317434 lambda!317308))))

(declare-fun bs!1371726 () Bool)

(assert (= bs!1371726 (and d!1829847 d!1829483)))

(assert (=> bs!1371726 (not (= lambda!317434 lambda!317339))))

(declare-fun bs!1371727 () Bool)

(assert (= bs!1371727 (and d!1829847 b!5809950)))

(assert (=> bs!1371727 (not (= lambda!317434 lambda!317353))))

(declare-fun bs!1371728 () Bool)

(assert (= bs!1371728 (and d!1829847 b!5809700)))

(assert (=> bs!1371728 (not (= lambda!317434 lambda!317318))))

(declare-fun bs!1371729 () Bool)

(assert (= bs!1371729 (and d!1829847 b!5810677)))

(assert (=> bs!1371729 (not (= lambda!317434 lambda!317412))))

(declare-fun bs!1371730 () Bool)

(assert (= bs!1371730 (and d!1829847 b!5810560)))

(assert (=> bs!1371730 (not (= lambda!317434 lambda!317408))))

(declare-fun bs!1371731 () Bool)

(assert (= bs!1371731 (and d!1829847 b!5810762)))

(assert (=> bs!1371731 (not (= lambda!317434 lambda!317416))))

(assert (=> bs!1371725 (not (= lambda!317434 lambda!317309))))

(assert (=> bs!1371722 (not (= lambda!317434 lambda!317327))))

(declare-fun bs!1371732 () Bool)

(assert (= bs!1371732 (and d!1829847 b!5810563)))

(assert (=> bs!1371732 (not (= lambda!317434 lambda!317407))))

(declare-fun bs!1371733 () Bool)

(assert (= bs!1371733 (and d!1829847 b!5809703)))

(assert (=> bs!1371733 (not (= lambda!317434 lambda!317317))))

(declare-fun bs!1371734 () Bool)

(assert (= bs!1371734 (and d!1829847 b!5810674)))

(assert (=> bs!1371734 (not (= lambda!317434 lambda!317413))))

(assert (=> bs!1371723 (not (= lambda!317434 lambda!317425))))

(assert (=> bs!1371725 (= lambda!317434 lambda!317307)))

(assert (=> bs!1371726 (= lambda!317434 lambda!317338)))

(declare-fun bs!1371735 () Bool)

(assert (= bs!1371735 (and d!1829847 b!5810765)))

(assert (=> bs!1371735 (not (= lambda!317434 lambda!317415))))

(declare-fun bs!1371736 () Bool)

(assert (= bs!1371736 (and d!1829847 b!5809947)))

(assert (=> bs!1371736 (not (= lambda!317434 lambda!317354))))

(assert (=> d!1829847 true))

(assert (=> d!1829847 true))

(assert (=> d!1829847 true))

(assert (=> d!1829847 (= (isDefined!12539 (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 Nil!63657 s!2326 s!2326)) (Exists!2927 lambda!317434))))

(assert (=> d!1829847 true))

(declare-fun _$89!1939 () Unit!156914)

(assert (=> d!1829847 (= (choose!44114 (reg!16156 r!7292) r!7292 s!2326) _$89!1939)))

(declare-fun bs!1371737 () Bool)

(assert (= bs!1371737 d!1829847))

(assert (=> bs!1371737 m!6748142))

(assert (=> bs!1371737 m!6748142))

(assert (=> bs!1371737 m!6748144))

(declare-fun m!6749252 () Bool)

(assert (=> bs!1371737 m!6749252))

(assert (=> d!1829503 d!1829847))

(assert (=> d!1829503 d!1829497))

(assert (=> d!1829503 d!1829771))

(assert (=> d!1829451 d!1829481))

(declare-fun bm!453742 () Bool)

(declare-fun c!1029668 () Bool)

(declare-fun call!453748 () Bool)

(declare-fun c!1029669 () Bool)

(assert (=> bm!453742 (= call!453748 (validRegex!7563 (ite c!1029668 (reg!16156 lt!2299853) (ite c!1029669 (regTwo!32167 lt!2299853) (regTwo!32166 lt!2299853)))))))

(declare-fun b!5810843 () Bool)

(declare-fun e!3566828 () Bool)

(declare-fun e!3566826 () Bool)

(assert (=> b!5810843 (= e!3566828 e!3566826)))

(declare-fun res!2450452 () Bool)

(assert (=> b!5810843 (= res!2450452 (not (nullable!5850 (reg!16156 lt!2299853))))))

(assert (=> b!5810843 (=> (not res!2450452) (not e!3566826))))

(declare-fun b!5810844 () Bool)

(declare-fun res!2450450 () Bool)

(declare-fun e!3566827 () Bool)

(assert (=> b!5810844 (=> res!2450450 e!3566827)))

(assert (=> b!5810844 (= res!2450450 (not ((_ is Concat!24672) lt!2299853)))))

(declare-fun e!3566829 () Bool)

(assert (=> b!5810844 (= e!3566829 e!3566827)))

(declare-fun bm!453743 () Bool)

(declare-fun call!453747 () Bool)

(assert (=> bm!453743 (= call!453747 call!453748)))

(declare-fun b!5810845 () Bool)

(declare-fun e!3566830 () Bool)

(assert (=> b!5810845 (= e!3566830 call!453747)))

(declare-fun b!5810846 () Bool)

(assert (=> b!5810846 (= e!3566827 e!3566830)))

(declare-fun res!2450453 () Bool)

(assert (=> b!5810846 (=> (not res!2450453) (not e!3566830))))

(declare-fun call!453749 () Bool)

(assert (=> b!5810846 (= res!2450453 call!453749)))

(declare-fun bm!453744 () Bool)

(assert (=> bm!453744 (= call!453749 (validRegex!7563 (ite c!1029669 (regOne!32167 lt!2299853) (regOne!32166 lt!2299853))))))

(declare-fun d!1829851 () Bool)

(declare-fun res!2450449 () Bool)

(declare-fun e!3566831 () Bool)

(assert (=> d!1829851 (=> res!2450449 e!3566831)))

(assert (=> d!1829851 (= res!2450449 ((_ is ElementMatch!15827) lt!2299853))))

(assert (=> d!1829851 (= (validRegex!7563 lt!2299853) e!3566831)))

(declare-fun b!5810847 () Bool)

(declare-fun e!3566832 () Bool)

(assert (=> b!5810847 (= e!3566832 call!453747)))

(declare-fun b!5810848 () Bool)

(assert (=> b!5810848 (= e!3566826 call!453748)))

(declare-fun b!5810849 () Bool)

(assert (=> b!5810849 (= e!3566828 e!3566829)))

(assert (=> b!5810849 (= c!1029669 ((_ is Union!15827) lt!2299853))))

(declare-fun b!5810850 () Bool)

(declare-fun res!2450451 () Bool)

(assert (=> b!5810850 (=> (not res!2450451) (not e!3566832))))

(assert (=> b!5810850 (= res!2450451 call!453749)))

(assert (=> b!5810850 (= e!3566829 e!3566832)))

(declare-fun b!5810851 () Bool)

(assert (=> b!5810851 (= e!3566831 e!3566828)))

(assert (=> b!5810851 (= c!1029668 ((_ is Star!15827) lt!2299853))))

(assert (= (and d!1829851 (not res!2450449)) b!5810851))

(assert (= (and b!5810851 c!1029668) b!5810843))

(assert (= (and b!5810851 (not c!1029668)) b!5810849))

(assert (= (and b!5810843 res!2450452) b!5810848))

(assert (= (and b!5810849 c!1029669) b!5810850))

(assert (= (and b!5810849 (not c!1029669)) b!5810844))

(assert (= (and b!5810850 res!2450451) b!5810847))

(assert (= (and b!5810844 (not res!2450450)) b!5810846))

(assert (= (and b!5810846 res!2450453) b!5810845))

(assert (= (or b!5810847 b!5810845) bm!453743))

(assert (= (or b!5810850 b!5810846) bm!453744))

(assert (= (or b!5810848 bm!453743) bm!453742))

(declare-fun m!6749254 () Bool)

(assert (=> bm!453742 m!6749254))

(declare-fun m!6749256 () Bool)

(assert (=> b!5810843 m!6749256))

(declare-fun m!6749258 () Bool)

(assert (=> bm!453744 m!6749258))

(assert (=> d!1829451 d!1829851))

(declare-fun b!5810852 () Bool)

(declare-fun e!3566833 () (InoxSet Context!10422))

(declare-fun call!453755 () (InoxSet Context!10422))

(assert (=> b!5810852 (= e!3566833 call!453755)))

(declare-fun bm!453745 () Bool)

(declare-fun call!453753 () (InoxSet Context!10422))

(declare-fun call!453751 () (InoxSet Context!10422))

(assert (=> bm!453745 (= call!453753 call!453751)))

(declare-fun b!5810853 () Bool)

(declare-fun c!1029672 () Bool)

(assert (=> b!5810853 (= c!1029672 ((_ is Star!15827) (h!70104 (exprs!5711 lt!2299834))))))

(declare-fun e!3566834 () (InoxSet Context!10422))

(assert (=> b!5810853 (= e!3566833 e!3566834)))

(declare-fun b!5810854 () Bool)

(declare-fun e!3566837 () Bool)

(assert (=> b!5810854 (= e!3566837 (nullable!5850 (regOne!32166 (h!70104 (exprs!5711 lt!2299834)))))))

(declare-fun c!1029674 () Bool)

(declare-fun call!453750 () List!63780)

(declare-fun c!1029670 () Bool)

(declare-fun bm!453746 () Bool)

(assert (=> bm!453746 (= call!453750 ($colon$colon!1805 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299834)))) (ite (or c!1029670 c!1029674) (regTwo!32166 (h!70104 (exprs!5711 lt!2299834))) (h!70104 (exprs!5711 lt!2299834)))))))

(declare-fun bm!453747 () Bool)

(declare-fun call!453752 () List!63780)

(assert (=> bm!453747 (= call!453752 call!453750)))

(declare-fun bm!453748 () Bool)

(declare-fun c!1029671 () Bool)

(assert (=> bm!453748 (= call!453751 (derivationStepZipperDown!1165 (ite c!1029671 (regOne!32167 (h!70104 (exprs!5711 lt!2299834))) (ite c!1029670 (regTwo!32166 (h!70104 (exprs!5711 lt!2299834))) (ite c!1029674 (regOne!32166 (h!70104 (exprs!5711 lt!2299834))) (reg!16156 (h!70104 (exprs!5711 lt!2299834)))))) (ite (or c!1029671 c!1029670) (Context!10423 (t!377133 (exprs!5711 lt!2299834))) (Context!10423 call!453752)) (h!70105 s!2326)))))

(declare-fun b!5810855 () Bool)

(assert (=> b!5810855 (= e!3566834 call!453755)))

(declare-fun b!5810857 () Bool)

(assert (=> b!5810857 (= e!3566834 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810858 () Bool)

(declare-fun e!3566835 () (InoxSet Context!10422))

(declare-fun call!453754 () (InoxSet Context!10422))

(assert (=> b!5810858 (= e!3566835 ((_ map or) call!453751 call!453754))))

(declare-fun bm!453749 () Bool)

(assert (=> bm!453749 (= call!453754 (derivationStepZipperDown!1165 (ite c!1029671 (regTwo!32167 (h!70104 (exprs!5711 lt!2299834))) (regOne!32166 (h!70104 (exprs!5711 lt!2299834)))) (ite c!1029671 (Context!10423 (t!377133 (exprs!5711 lt!2299834))) (Context!10423 call!453750)) (h!70105 s!2326)))))

(declare-fun bm!453750 () Bool)

(assert (=> bm!453750 (= call!453755 call!453753)))

(declare-fun b!5810859 () Bool)

(declare-fun e!3566836 () (InoxSet Context!10422))

(assert (=> b!5810859 (= e!3566836 e!3566833)))

(assert (=> b!5810859 (= c!1029674 ((_ is Concat!24672) (h!70104 (exprs!5711 lt!2299834))))))

(declare-fun b!5810856 () Bool)

(declare-fun e!3566838 () (InoxSet Context!10422))

(assert (=> b!5810856 (= e!3566838 (store ((as const (Array Context!10422 Bool)) false) (Context!10423 (t!377133 (exprs!5711 lt!2299834))) true))))

(declare-fun d!1829855 () Bool)

(declare-fun c!1029673 () Bool)

(assert (=> d!1829855 (= c!1029673 (and ((_ is ElementMatch!15827) (h!70104 (exprs!5711 lt!2299834))) (= (c!1029329 (h!70104 (exprs!5711 lt!2299834))) (h!70105 s!2326))))))

(assert (=> d!1829855 (= (derivationStepZipperDown!1165 (h!70104 (exprs!5711 lt!2299834)) (Context!10423 (t!377133 (exprs!5711 lt!2299834))) (h!70105 s!2326)) e!3566838)))

(declare-fun b!5810860 () Bool)

(assert (=> b!5810860 (= e!3566838 e!3566835)))

(assert (=> b!5810860 (= c!1029671 ((_ is Union!15827) (h!70104 (exprs!5711 lt!2299834))))))

(declare-fun b!5810861 () Bool)

(assert (=> b!5810861 (= c!1029670 e!3566837)))

(declare-fun res!2450454 () Bool)

(assert (=> b!5810861 (=> (not res!2450454) (not e!3566837))))

(assert (=> b!5810861 (= res!2450454 ((_ is Concat!24672) (h!70104 (exprs!5711 lt!2299834))))))

(assert (=> b!5810861 (= e!3566835 e!3566836)))

(declare-fun b!5810862 () Bool)

(assert (=> b!5810862 (= e!3566836 ((_ map or) call!453754 call!453753))))

(assert (= (and d!1829855 c!1029673) b!5810856))

(assert (= (and d!1829855 (not c!1029673)) b!5810860))

(assert (= (and b!5810860 c!1029671) b!5810858))

(assert (= (and b!5810860 (not c!1029671)) b!5810861))

(assert (= (and b!5810861 res!2450454) b!5810854))

(assert (= (and b!5810861 c!1029670) b!5810862))

(assert (= (and b!5810861 (not c!1029670)) b!5810859))

(assert (= (and b!5810859 c!1029674) b!5810852))

(assert (= (and b!5810859 (not c!1029674)) b!5810853))

(assert (= (and b!5810853 c!1029672) b!5810855))

(assert (= (and b!5810853 (not c!1029672)) b!5810857))

(assert (= (or b!5810852 b!5810855) bm!453747))

(assert (= (or b!5810852 b!5810855) bm!453750))

(assert (= (or b!5810862 bm!453747) bm!453746))

(assert (= (or b!5810862 bm!453750) bm!453745))

(assert (= (or b!5810858 b!5810862) bm!453749))

(assert (= (or b!5810858 bm!453745) bm!453748))

(declare-fun m!6749260 () Bool)

(assert (=> bm!453748 m!6749260))

(declare-fun m!6749262 () Bool)

(assert (=> bm!453746 m!6749262))

(declare-fun m!6749264 () Bool)

(assert (=> bm!453749 m!6749264))

(declare-fun m!6749266 () Bool)

(assert (=> b!5810856 m!6749266))

(declare-fun m!6749268 () Bool)

(assert (=> b!5810854 m!6749268))

(assert (=> bm!453643 d!1829855))

(declare-fun b!5810874 () Bool)

(declare-fun e!3566845 () (InoxSet Context!10422))

(declare-fun call!453767 () (InoxSet Context!10422))

(assert (=> b!5810874 (= e!3566845 call!453767)))

(declare-fun bm!453757 () Bool)

(declare-fun call!453765 () (InoxSet Context!10422))

(declare-fun call!453763 () (InoxSet Context!10422))

(assert (=> bm!453757 (= call!453765 call!453763)))

(declare-fun b!5810875 () Bool)

(declare-fun c!1029682 () Bool)

(assert (=> b!5810875 (= c!1029682 ((_ is Star!15827) (h!70104 (exprs!5711 lt!2299852))))))

(declare-fun e!3566846 () (InoxSet Context!10422))

(assert (=> b!5810875 (= e!3566845 e!3566846)))

(declare-fun b!5810876 () Bool)

(declare-fun e!3566849 () Bool)

(assert (=> b!5810876 (= e!3566849 (nullable!5850 (regOne!32166 (h!70104 (exprs!5711 lt!2299852)))))))

(declare-fun call!453762 () List!63780)

(declare-fun c!1029684 () Bool)

(declare-fun c!1029680 () Bool)

(declare-fun bm!453758 () Bool)

(assert (=> bm!453758 (= call!453762 ($colon$colon!1805 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299852)))) (ite (or c!1029680 c!1029684) (regTwo!32166 (h!70104 (exprs!5711 lt!2299852))) (h!70104 (exprs!5711 lt!2299852)))))))

(declare-fun bm!453759 () Bool)

(declare-fun call!453764 () List!63780)

(assert (=> bm!453759 (= call!453764 call!453762)))

(declare-fun bm!453760 () Bool)

(declare-fun c!1029681 () Bool)

(assert (=> bm!453760 (= call!453763 (derivationStepZipperDown!1165 (ite c!1029681 (regOne!32167 (h!70104 (exprs!5711 lt!2299852))) (ite c!1029680 (regTwo!32166 (h!70104 (exprs!5711 lt!2299852))) (ite c!1029684 (regOne!32166 (h!70104 (exprs!5711 lt!2299852))) (reg!16156 (h!70104 (exprs!5711 lt!2299852)))))) (ite (or c!1029681 c!1029680) (Context!10423 (t!377133 (exprs!5711 lt!2299852))) (Context!10423 call!453764)) (h!70105 s!2326)))))

(declare-fun b!5810877 () Bool)

(assert (=> b!5810877 (= e!3566846 call!453767)))

(declare-fun b!5810879 () Bool)

(assert (=> b!5810879 (= e!3566846 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810880 () Bool)

(declare-fun e!3566847 () (InoxSet Context!10422))

(declare-fun call!453766 () (InoxSet Context!10422))

(assert (=> b!5810880 (= e!3566847 ((_ map or) call!453763 call!453766))))

(declare-fun bm!453761 () Bool)

(assert (=> bm!453761 (= call!453766 (derivationStepZipperDown!1165 (ite c!1029681 (regTwo!32167 (h!70104 (exprs!5711 lt!2299852))) (regOne!32166 (h!70104 (exprs!5711 lt!2299852)))) (ite c!1029681 (Context!10423 (t!377133 (exprs!5711 lt!2299852))) (Context!10423 call!453762)) (h!70105 s!2326)))))

(declare-fun bm!453762 () Bool)

(assert (=> bm!453762 (= call!453767 call!453765)))

(declare-fun b!5810881 () Bool)

(declare-fun e!3566848 () (InoxSet Context!10422))

(assert (=> b!5810881 (= e!3566848 e!3566845)))

(assert (=> b!5810881 (= c!1029684 ((_ is Concat!24672) (h!70104 (exprs!5711 lt!2299852))))))

(declare-fun b!5810878 () Bool)

(declare-fun e!3566850 () (InoxSet Context!10422))

(assert (=> b!5810878 (= e!3566850 (store ((as const (Array Context!10422 Bool)) false) (Context!10423 (t!377133 (exprs!5711 lt!2299852))) true))))

(declare-fun d!1829859 () Bool)

(declare-fun c!1029683 () Bool)

(assert (=> d!1829859 (= c!1029683 (and ((_ is ElementMatch!15827) (h!70104 (exprs!5711 lt!2299852))) (= (c!1029329 (h!70104 (exprs!5711 lt!2299852))) (h!70105 s!2326))))))

(assert (=> d!1829859 (= (derivationStepZipperDown!1165 (h!70104 (exprs!5711 lt!2299852)) (Context!10423 (t!377133 (exprs!5711 lt!2299852))) (h!70105 s!2326)) e!3566850)))

(declare-fun b!5810882 () Bool)

(assert (=> b!5810882 (= e!3566850 e!3566847)))

(assert (=> b!5810882 (= c!1029681 ((_ is Union!15827) (h!70104 (exprs!5711 lt!2299852))))))

(declare-fun b!5810883 () Bool)

(assert (=> b!5810883 (= c!1029680 e!3566849)))

(declare-fun res!2450456 () Bool)

(assert (=> b!5810883 (=> (not res!2450456) (not e!3566849))))

(assert (=> b!5810883 (= res!2450456 ((_ is Concat!24672) (h!70104 (exprs!5711 lt!2299852))))))

(assert (=> b!5810883 (= e!3566847 e!3566848)))

(declare-fun b!5810884 () Bool)

(assert (=> b!5810884 (= e!3566848 ((_ map or) call!453766 call!453765))))

(assert (= (and d!1829859 c!1029683) b!5810878))

(assert (= (and d!1829859 (not c!1029683)) b!5810882))

(assert (= (and b!5810882 c!1029681) b!5810880))

(assert (= (and b!5810882 (not c!1029681)) b!5810883))

(assert (= (and b!5810883 res!2450456) b!5810876))

(assert (= (and b!5810883 c!1029680) b!5810884))

(assert (= (and b!5810883 (not c!1029680)) b!5810881))

(assert (= (and b!5810881 c!1029684) b!5810874))

(assert (= (and b!5810881 (not c!1029684)) b!5810875))

(assert (= (and b!5810875 c!1029682) b!5810877))

(assert (= (and b!5810875 (not c!1029682)) b!5810879))

(assert (= (or b!5810874 b!5810877) bm!453759))

(assert (= (or b!5810874 b!5810877) bm!453762))

(assert (= (or b!5810884 bm!453759) bm!453758))

(assert (= (or b!5810884 bm!453762) bm!453757))

(assert (= (or b!5810880 b!5810884) bm!453761))

(assert (= (or b!5810880 bm!453757) bm!453760))

(declare-fun m!6749276 () Bool)

(assert (=> bm!453760 m!6749276))

(declare-fun m!6749278 () Bool)

(assert (=> bm!453758 m!6749278))

(declare-fun m!6749280 () Bool)

(assert (=> bm!453761 m!6749280))

(declare-fun m!6749282 () Bool)

(assert (=> b!5810878 m!6749282))

(declare-fun m!6749284 () Bool)

(assert (=> b!5810876 m!6749284))

(assert (=> bm!453642 d!1829859))

(assert (=> b!5809891 d!1829767))

(declare-fun c!1029686 () Bool)

(declare-fun call!453769 () Bool)

(declare-fun bm!453763 () Bool)

(declare-fun c!1029685 () Bool)

(assert (=> bm!453763 (= call!453769 (validRegex!7563 (ite c!1029685 (reg!16156 lt!2299924) (ite c!1029686 (regTwo!32167 lt!2299924) (regTwo!32166 lt!2299924)))))))

(declare-fun b!5810885 () Bool)

(declare-fun e!3566853 () Bool)

(declare-fun e!3566851 () Bool)

(assert (=> b!5810885 (= e!3566853 e!3566851)))

(declare-fun res!2450460 () Bool)

(assert (=> b!5810885 (= res!2450460 (not (nullable!5850 (reg!16156 lt!2299924))))))

(assert (=> b!5810885 (=> (not res!2450460) (not e!3566851))))

(declare-fun b!5810886 () Bool)

(declare-fun res!2450458 () Bool)

(declare-fun e!3566852 () Bool)

(assert (=> b!5810886 (=> res!2450458 e!3566852)))

(assert (=> b!5810886 (= res!2450458 (not ((_ is Concat!24672) lt!2299924)))))

(declare-fun e!3566854 () Bool)

(assert (=> b!5810886 (= e!3566854 e!3566852)))

(declare-fun bm!453764 () Bool)

(declare-fun call!453768 () Bool)

(assert (=> bm!453764 (= call!453768 call!453769)))

(declare-fun b!5810887 () Bool)

(declare-fun e!3566855 () Bool)

(assert (=> b!5810887 (= e!3566855 call!453768)))

(declare-fun b!5810888 () Bool)

(assert (=> b!5810888 (= e!3566852 e!3566855)))

(declare-fun res!2450461 () Bool)

(assert (=> b!5810888 (=> (not res!2450461) (not e!3566855))))

(declare-fun call!453770 () Bool)

(assert (=> b!5810888 (= res!2450461 call!453770)))

(declare-fun bm!453765 () Bool)

(assert (=> bm!453765 (= call!453770 (validRegex!7563 (ite c!1029686 (regOne!32167 lt!2299924) (regOne!32166 lt!2299924))))))

(declare-fun d!1829861 () Bool)

(declare-fun res!2450457 () Bool)

(declare-fun e!3566856 () Bool)

(assert (=> d!1829861 (=> res!2450457 e!3566856)))

(assert (=> d!1829861 (= res!2450457 ((_ is ElementMatch!15827) lt!2299924))))

(assert (=> d!1829861 (= (validRegex!7563 lt!2299924) e!3566856)))

(declare-fun b!5810889 () Bool)

(declare-fun e!3566857 () Bool)

(assert (=> b!5810889 (= e!3566857 call!453768)))

(declare-fun b!5810890 () Bool)

(assert (=> b!5810890 (= e!3566851 call!453769)))

(declare-fun b!5810891 () Bool)

(assert (=> b!5810891 (= e!3566853 e!3566854)))

(assert (=> b!5810891 (= c!1029686 ((_ is Union!15827) lt!2299924))))

(declare-fun b!5810892 () Bool)

(declare-fun res!2450459 () Bool)

(assert (=> b!5810892 (=> (not res!2450459) (not e!3566857))))

(assert (=> b!5810892 (= res!2450459 call!453770)))

(assert (=> b!5810892 (= e!3566854 e!3566857)))

(declare-fun b!5810893 () Bool)

(assert (=> b!5810893 (= e!3566856 e!3566853)))

(assert (=> b!5810893 (= c!1029685 ((_ is Star!15827) lt!2299924))))

(assert (= (and d!1829861 (not res!2450457)) b!5810893))

(assert (= (and b!5810893 c!1029685) b!5810885))

(assert (= (and b!5810893 (not c!1029685)) b!5810891))

(assert (= (and b!5810885 res!2450460) b!5810890))

(assert (= (and b!5810891 c!1029686) b!5810892))

(assert (= (and b!5810891 (not c!1029686)) b!5810886))

(assert (= (and b!5810892 res!2450459) b!5810889))

(assert (= (and b!5810886 (not res!2450458)) b!5810888))

(assert (= (and b!5810888 res!2450461) b!5810887))

(assert (= (or b!5810889 b!5810887) bm!453764))

(assert (= (or b!5810892 b!5810888) bm!453765))

(assert (= (or b!5810890 bm!453764) bm!453763))

(declare-fun m!6749290 () Bool)

(assert (=> bm!453763 m!6749290))

(declare-fun m!6749292 () Bool)

(assert (=> b!5810885 m!6749292))

(declare-fun m!6749294 () Bool)

(assert (=> bm!453765 m!6749294))

(assert (=> d!1829547 d!1829861))

(assert (=> d!1829547 d!1829631))

(assert (=> d!1829547 d!1829635))

(declare-fun d!1829865 () Bool)

(assert (=> d!1829865 (= (isEmpty!35575 (tail!11358 (exprs!5711 (h!70106 zl!343)))) ((_ is Nil!63656) (tail!11358 (exprs!5711 (h!70106 zl!343)))))))

(assert (=> b!5810034 d!1829865))

(declare-fun d!1829867 () Bool)

(assert (=> d!1829867 (= (tail!11358 (exprs!5711 (h!70106 zl!343))) (t!377133 (exprs!5711 (h!70106 zl!343))))))

(assert (=> b!5810034 d!1829867))

(declare-fun b!5810894 () Bool)

(declare-fun e!3566858 () (InoxSet Context!10422))

(declare-fun call!453776 () (InoxSet Context!10422))

(assert (=> b!5810894 (= e!3566858 call!453776)))

(declare-fun bm!453766 () Bool)

(declare-fun call!453774 () (InoxSet Context!10422))

(declare-fun call!453772 () (InoxSet Context!10422))

(assert (=> bm!453766 (= call!453774 call!453772)))

(declare-fun b!5810895 () Bool)

(declare-fun c!1029689 () Bool)

(assert (=> b!5810895 (= c!1029689 ((_ is Star!15827) (h!70104 (exprs!5711 lt!2299848))))))

(declare-fun e!3566859 () (InoxSet Context!10422))

(assert (=> b!5810895 (= e!3566858 e!3566859)))

(declare-fun b!5810896 () Bool)

(declare-fun e!3566862 () Bool)

(assert (=> b!5810896 (= e!3566862 (nullable!5850 (regOne!32166 (h!70104 (exprs!5711 lt!2299848)))))))

(declare-fun bm!453767 () Bool)

(declare-fun c!1029687 () Bool)

(declare-fun c!1029691 () Bool)

(declare-fun call!453771 () List!63780)

(assert (=> bm!453767 (= call!453771 ($colon$colon!1805 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 lt!2299848)))) (ite (or c!1029687 c!1029691) (regTwo!32166 (h!70104 (exprs!5711 lt!2299848))) (h!70104 (exprs!5711 lt!2299848)))))))

(declare-fun bm!453768 () Bool)

(declare-fun call!453773 () List!63780)

(assert (=> bm!453768 (= call!453773 call!453771)))

(declare-fun c!1029688 () Bool)

(declare-fun bm!453769 () Bool)

(assert (=> bm!453769 (= call!453772 (derivationStepZipperDown!1165 (ite c!1029688 (regOne!32167 (h!70104 (exprs!5711 lt!2299848))) (ite c!1029687 (regTwo!32166 (h!70104 (exprs!5711 lt!2299848))) (ite c!1029691 (regOne!32166 (h!70104 (exprs!5711 lt!2299848))) (reg!16156 (h!70104 (exprs!5711 lt!2299848)))))) (ite (or c!1029688 c!1029687) (Context!10423 (t!377133 (exprs!5711 lt!2299848))) (Context!10423 call!453773)) (h!70105 s!2326)))))

(declare-fun b!5810897 () Bool)

(assert (=> b!5810897 (= e!3566859 call!453776)))

(declare-fun b!5810899 () Bool)

(assert (=> b!5810899 (= e!3566859 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5810900 () Bool)

(declare-fun e!3566860 () (InoxSet Context!10422))

(declare-fun call!453775 () (InoxSet Context!10422))

(assert (=> b!5810900 (= e!3566860 ((_ map or) call!453772 call!453775))))

(declare-fun bm!453770 () Bool)

(assert (=> bm!453770 (= call!453775 (derivationStepZipperDown!1165 (ite c!1029688 (regTwo!32167 (h!70104 (exprs!5711 lt!2299848))) (regOne!32166 (h!70104 (exprs!5711 lt!2299848)))) (ite c!1029688 (Context!10423 (t!377133 (exprs!5711 lt!2299848))) (Context!10423 call!453771)) (h!70105 s!2326)))))

(declare-fun bm!453771 () Bool)

(assert (=> bm!453771 (= call!453776 call!453774)))

(declare-fun b!5810901 () Bool)

(declare-fun e!3566861 () (InoxSet Context!10422))

(assert (=> b!5810901 (= e!3566861 e!3566858)))

(assert (=> b!5810901 (= c!1029691 ((_ is Concat!24672) (h!70104 (exprs!5711 lt!2299848))))))

(declare-fun b!5810898 () Bool)

(declare-fun e!3566863 () (InoxSet Context!10422))

(assert (=> b!5810898 (= e!3566863 (store ((as const (Array Context!10422 Bool)) false) (Context!10423 (t!377133 (exprs!5711 lt!2299848))) true))))

(declare-fun d!1829869 () Bool)

(declare-fun c!1029690 () Bool)

(assert (=> d!1829869 (= c!1029690 (and ((_ is ElementMatch!15827) (h!70104 (exprs!5711 lt!2299848))) (= (c!1029329 (h!70104 (exprs!5711 lt!2299848))) (h!70105 s!2326))))))

(assert (=> d!1829869 (= (derivationStepZipperDown!1165 (h!70104 (exprs!5711 lt!2299848)) (Context!10423 (t!377133 (exprs!5711 lt!2299848))) (h!70105 s!2326)) e!3566863)))

(declare-fun b!5810902 () Bool)

(assert (=> b!5810902 (= e!3566863 e!3566860)))

(assert (=> b!5810902 (= c!1029688 ((_ is Union!15827) (h!70104 (exprs!5711 lt!2299848))))))

(declare-fun b!5810903 () Bool)

(assert (=> b!5810903 (= c!1029687 e!3566862)))

(declare-fun res!2450462 () Bool)

(assert (=> b!5810903 (=> (not res!2450462) (not e!3566862))))

(assert (=> b!5810903 (= res!2450462 ((_ is Concat!24672) (h!70104 (exprs!5711 lt!2299848))))))

(assert (=> b!5810903 (= e!3566860 e!3566861)))

(declare-fun b!5810904 () Bool)

(assert (=> b!5810904 (= e!3566861 ((_ map or) call!453775 call!453774))))

(assert (= (and d!1829869 c!1029690) b!5810898))

(assert (= (and d!1829869 (not c!1029690)) b!5810902))

(assert (= (and b!5810902 c!1029688) b!5810900))

(assert (= (and b!5810902 (not c!1029688)) b!5810903))

(assert (= (and b!5810903 res!2450462) b!5810896))

(assert (= (and b!5810903 c!1029687) b!5810904))

(assert (= (and b!5810903 (not c!1029687)) b!5810901))

(assert (= (and b!5810901 c!1029691) b!5810894))

(assert (= (and b!5810901 (not c!1029691)) b!5810895))

(assert (= (and b!5810895 c!1029689) b!5810897))

(assert (= (and b!5810895 (not c!1029689)) b!5810899))

(assert (= (or b!5810894 b!5810897) bm!453768))

(assert (= (or b!5810894 b!5810897) bm!453771))

(assert (= (or b!5810904 bm!453768) bm!453767))

(assert (= (or b!5810904 bm!453771) bm!453766))

(assert (= (or b!5810900 b!5810904) bm!453770))

(assert (= (or b!5810900 bm!453766) bm!453769))

(declare-fun m!6749296 () Bool)

(assert (=> bm!453769 m!6749296))

(declare-fun m!6749298 () Bool)

(assert (=> bm!453767 m!6749298))

(declare-fun m!6749300 () Bool)

(assert (=> bm!453770 m!6749300))

(declare-fun m!6749302 () Bool)

(assert (=> b!5810898 m!6749302))

(declare-fun m!6749304 () Bool)

(assert (=> b!5810896 m!6749304))

(assert (=> bm!453625 d!1829869))

(declare-fun bm!453772 () Bool)

(declare-fun c!1029693 () Bool)

(declare-fun call!453778 () Bool)

(declare-fun c!1029692 () Bool)

(assert (=> bm!453772 (= call!453778 (validRegex!7563 (ite c!1029692 (reg!16156 lt!2299922) (ite c!1029693 (regTwo!32167 lt!2299922) (regTwo!32166 lt!2299922)))))))

(declare-fun b!5810905 () Bool)

(declare-fun e!3566866 () Bool)

(declare-fun e!3566864 () Bool)

(assert (=> b!5810905 (= e!3566866 e!3566864)))

(declare-fun res!2450466 () Bool)

(assert (=> b!5810905 (= res!2450466 (not (nullable!5850 (reg!16156 lt!2299922))))))

(assert (=> b!5810905 (=> (not res!2450466) (not e!3566864))))

(declare-fun b!5810906 () Bool)

(declare-fun res!2450464 () Bool)

(declare-fun e!3566865 () Bool)

(assert (=> b!5810906 (=> res!2450464 e!3566865)))

(assert (=> b!5810906 (= res!2450464 (not ((_ is Concat!24672) lt!2299922)))))

(declare-fun e!3566867 () Bool)

(assert (=> b!5810906 (= e!3566867 e!3566865)))

(declare-fun bm!453773 () Bool)

(declare-fun call!453777 () Bool)

(assert (=> bm!453773 (= call!453777 call!453778)))

(declare-fun b!5810907 () Bool)

(declare-fun e!3566868 () Bool)

(assert (=> b!5810907 (= e!3566868 call!453777)))

(declare-fun b!5810908 () Bool)

(assert (=> b!5810908 (= e!3566865 e!3566868)))

(declare-fun res!2450467 () Bool)

(assert (=> b!5810908 (=> (not res!2450467) (not e!3566868))))

(declare-fun call!453779 () Bool)

(assert (=> b!5810908 (= res!2450467 call!453779)))

(declare-fun bm!453774 () Bool)

(assert (=> bm!453774 (= call!453779 (validRegex!7563 (ite c!1029693 (regOne!32167 lt!2299922) (regOne!32166 lt!2299922))))))

(declare-fun d!1829873 () Bool)

(declare-fun res!2450463 () Bool)

(declare-fun e!3566869 () Bool)

(assert (=> d!1829873 (=> res!2450463 e!3566869)))

(assert (=> d!1829873 (= res!2450463 ((_ is ElementMatch!15827) lt!2299922))))

(assert (=> d!1829873 (= (validRegex!7563 lt!2299922) e!3566869)))

(declare-fun b!5810909 () Bool)

(declare-fun e!3566870 () Bool)

(assert (=> b!5810909 (= e!3566870 call!453777)))

(declare-fun b!5810910 () Bool)

(assert (=> b!5810910 (= e!3566864 call!453778)))

(declare-fun b!5810911 () Bool)

(assert (=> b!5810911 (= e!3566866 e!3566867)))

(assert (=> b!5810911 (= c!1029693 ((_ is Union!15827) lt!2299922))))

(declare-fun b!5810912 () Bool)

(declare-fun res!2450465 () Bool)

(assert (=> b!5810912 (=> (not res!2450465) (not e!3566870))))

(assert (=> b!5810912 (= res!2450465 call!453779)))

(assert (=> b!5810912 (= e!3566867 e!3566870)))

(declare-fun b!5810913 () Bool)

(assert (=> b!5810913 (= e!3566869 e!3566866)))

(assert (=> b!5810913 (= c!1029692 ((_ is Star!15827) lt!2299922))))

(assert (= (and d!1829873 (not res!2450463)) b!5810913))

(assert (= (and b!5810913 c!1029692) b!5810905))

(assert (= (and b!5810913 (not c!1029692)) b!5810911))

(assert (= (and b!5810905 res!2450466) b!5810910))

(assert (= (and b!5810911 c!1029693) b!5810912))

(assert (= (and b!5810911 (not c!1029693)) b!5810906))

(assert (= (and b!5810912 res!2450465) b!5810909))

(assert (= (and b!5810906 (not res!2450464)) b!5810908))

(assert (= (and b!5810908 res!2450467) b!5810907))

(assert (= (or b!5810909 b!5810907) bm!453773))

(assert (= (or b!5810912 b!5810908) bm!453774))

(assert (= (or b!5810910 bm!453773) bm!453772))

(declare-fun m!6749306 () Bool)

(assert (=> bm!453772 m!6749306))

(declare-fun m!6749308 () Bool)

(assert (=> b!5810905 m!6749308))

(declare-fun m!6749310 () Bool)

(assert (=> bm!453774 m!6749310))

(assert (=> d!1829519 d!1829873))

(declare-fun d!1829875 () Bool)

(declare-fun res!2450468 () Bool)

(declare-fun e!3566871 () Bool)

(assert (=> d!1829875 (=> res!2450468 e!3566871)))

(assert (=> d!1829875 (= res!2450468 ((_ is Nil!63656) (exprs!5711 (h!70106 zl!343))))))

(assert (=> d!1829875 (= (forall!14933 (exprs!5711 (h!70106 zl!343)) lambda!317360) e!3566871)))

(declare-fun b!5810914 () Bool)

(declare-fun e!3566872 () Bool)

(assert (=> b!5810914 (= e!3566871 e!3566872)))

(declare-fun res!2450469 () Bool)

(assert (=> b!5810914 (=> (not res!2450469) (not e!3566872))))

(assert (=> b!5810914 (= res!2450469 (dynLambda!24923 lambda!317360 (h!70104 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5810915 () Bool)

(assert (=> b!5810915 (= e!3566872 (forall!14933 (t!377133 (exprs!5711 (h!70106 zl!343))) lambda!317360))))

(assert (= (and d!1829875 (not res!2450468)) b!5810914))

(assert (= (and b!5810914 res!2450469) b!5810915))

(declare-fun b_lambda!219035 () Bool)

(assert (=> (not b_lambda!219035) (not b!5810914)))

(declare-fun m!6749312 () Bool)

(assert (=> b!5810914 m!6749312))

(declare-fun m!6749314 () Bool)

(assert (=> b!5810915 m!6749314))

(assert (=> d!1829519 d!1829875))

(assert (=> d!1829599 d!1829601))

(declare-fun d!1829879 () Bool)

(assert (=> d!1829879 (= (flatMap!1434 lt!2299836 lambda!317310) (dynLambda!24920 lambda!317310 lt!2299834))))

(assert (=> d!1829879 true))

(declare-fun _$13!2540 () Unit!156914)

(assert (=> d!1829879 (= (choose!44118 lt!2299836 lt!2299834 lambda!317310) _$13!2540)))

(declare-fun b_lambda!219037 () Bool)

(assert (=> (not b_lambda!219037) (not d!1829879)))

(declare-fun bs!1371738 () Bool)

(assert (= bs!1371738 d!1829879))

(assert (=> bs!1371738 m!6748180))

(assert (=> bs!1371738 m!6748608))

(assert (=> d!1829599 d!1829879))

(declare-fun d!1829881 () Bool)

(assert (=> d!1829881 true))

(declare-fun setRes!39127 () Bool)

(assert (=> d!1829881 setRes!39127))

(declare-fun condSetEmpty!39127 () Bool)

(declare-fun res!2450472 () (InoxSet Context!10422))

(assert (=> d!1829881 (= condSetEmpty!39127 (= res!2450472 ((as const (Array Context!10422 Bool)) false)))))

(assert (=> d!1829881 (= (choose!44117 z!1189 lambda!317310) res!2450472)))

(declare-fun setIsEmpty!39127 () Bool)

(assert (=> setIsEmpty!39127 setRes!39127))

(declare-fun tp!1603510 () Bool)

(declare-fun setElem!39127 () Context!10422)

(declare-fun setNonEmpty!39127 () Bool)

(declare-fun e!3566875 () Bool)

(assert (=> setNonEmpty!39127 (= setRes!39127 (and tp!1603510 (inv!82814 setElem!39127) e!3566875))))

(declare-fun setRest!39127 () (InoxSet Context!10422))

(assert (=> setNonEmpty!39127 (= res!2450472 ((_ map or) (store ((as const (Array Context!10422 Bool)) false) setElem!39127 true) setRest!39127))))

(declare-fun b!5810920 () Bool)

(declare-fun tp!1603509 () Bool)

(assert (=> b!5810920 (= e!3566875 tp!1603509)))

(assert (= (and d!1829881 condSetEmpty!39127) setIsEmpty!39127))

(assert (= (and d!1829881 (not condSetEmpty!39127)) setNonEmpty!39127))

(assert (= setNonEmpty!39127 b!5810920))

(declare-fun m!6749316 () Bool)

(assert (=> setNonEmpty!39127 m!6749316))

(assert (=> d!1829623 d!1829881))

(assert (=> b!5809968 d!1829721))

(declare-fun d!1829883 () Bool)

(assert (=> d!1829883 (= (isEmpty!35575 (unfocusZipperList!1255 zl!343)) ((_ is Nil!63656) (unfocusZipperList!1255 zl!343)))))

(assert (=> b!5810278 d!1829883))

(declare-fun bs!1371739 () Bool)

(declare-fun d!1829885 () Bool)

(assert (= bs!1371739 (and d!1829885 d!1829839)))

(declare-fun lambda!317435 () Int)

(assert (=> bs!1371739 (= lambda!317435 lambda!317431)))

(assert (=> d!1829885 (= (nullableZipper!1734 z!1189) (exists!2259 z!1189 lambda!317435))))

(declare-fun bs!1371740 () Bool)

(assert (= bs!1371740 d!1829885))

(declare-fun m!6749328 () Bool)

(assert (=> bs!1371740 m!6749328))

(assert (=> b!5810225 d!1829885))

(declare-fun bs!1371741 () Bool)

(declare-fun d!1829889 () Bool)

(assert (= bs!1371741 (and d!1829889 d!1829839)))

(declare-fun lambda!317436 () Int)

(assert (=> bs!1371741 (= lambda!317436 lambda!317431)))

(declare-fun bs!1371742 () Bool)

(assert (= bs!1371742 (and d!1829889 d!1829885)))

(assert (=> bs!1371742 (= lambda!317436 lambda!317435)))

(assert (=> d!1829889 (= (nullableZipper!1734 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326))) (exists!2259 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326)) lambda!317436))))

(declare-fun bs!1371743 () Bool)

(assert (= bs!1371743 d!1829889))

(assert (=> bs!1371743 m!6748194))

(declare-fun m!6749330 () Bool)

(assert (=> bs!1371743 m!6749330))

(assert (=> b!5810060 d!1829889))

(declare-fun d!1829891 () Bool)

(declare-fun e!3566879 () Bool)

(assert (=> d!1829891 e!3566879))

(declare-fun c!1029697 () Bool)

(assert (=> d!1829891 (= c!1029697 ((_ is EmptyExpr!15827) r!7292))))

(declare-fun lt!2300018 () Bool)

(declare-fun e!3566884 () Bool)

(assert (=> d!1829891 (= lt!2300018 e!3566884)))

(declare-fun c!1029699 () Bool)

(assert (=> d!1829891 (= c!1029699 (isEmpty!35571 (_2!36227 (get!21975 lt!2299895))))))

(assert (=> d!1829891 (validRegex!7563 r!7292)))

(assert (=> d!1829891 (= (matchR!8012 r!7292 (_2!36227 (get!21975 lt!2299895))) lt!2300018)))

(declare-fun bm!453776 () Bool)

(declare-fun call!453781 () Bool)

(assert (=> bm!453776 (= call!453781 (isEmpty!35571 (_2!36227 (get!21975 lt!2299895))))))

(declare-fun b!5810926 () Bool)

(declare-fun res!2450479 () Bool)

(declare-fun e!3566885 () Bool)

(assert (=> b!5810926 (=> res!2450479 e!3566885)))

(declare-fun e!3566881 () Bool)

(assert (=> b!5810926 (= res!2450479 e!3566881)))

(declare-fun res!2450478 () Bool)

(assert (=> b!5810926 (=> (not res!2450478) (not e!3566881))))

(assert (=> b!5810926 (= res!2450478 lt!2300018)))

(declare-fun b!5810927 () Bool)

(assert (=> b!5810927 (= e!3566881 (= (head!12260 (_2!36227 (get!21975 lt!2299895))) (c!1029329 r!7292)))))

(declare-fun b!5810928 () Bool)

(declare-fun e!3566883 () Bool)

(assert (=> b!5810928 (= e!3566879 e!3566883)))

(declare-fun c!1029698 () Bool)

(assert (=> b!5810928 (= c!1029698 ((_ is EmptyLang!15827) r!7292))))

(declare-fun b!5810929 () Bool)

(declare-fun res!2450476 () Bool)

(declare-fun e!3566880 () Bool)

(assert (=> b!5810929 (=> res!2450476 e!3566880)))

(assert (=> b!5810929 (= res!2450476 (not (isEmpty!35571 (tail!11355 (_2!36227 (get!21975 lt!2299895))))))))

(declare-fun b!5810930 () Bool)

(assert (=> b!5810930 (= e!3566883 (not lt!2300018))))

(declare-fun b!5810931 () Bool)

(declare-fun e!3566882 () Bool)

(assert (=> b!5810931 (= e!3566882 e!3566880)))

(declare-fun res!2450481 () Bool)

(assert (=> b!5810931 (=> res!2450481 e!3566880)))

(assert (=> b!5810931 (= res!2450481 call!453781)))

(declare-fun b!5810932 () Bool)

(assert (=> b!5810932 (= e!3566884 (nullable!5850 r!7292))))

(declare-fun b!5810933 () Bool)

(declare-fun res!2450474 () Bool)

(assert (=> b!5810933 (=> (not res!2450474) (not e!3566881))))

(assert (=> b!5810933 (= res!2450474 (not call!453781))))

(declare-fun b!5810934 () Bool)

(declare-fun res!2450475 () Bool)

(assert (=> b!5810934 (=> res!2450475 e!3566885)))

(assert (=> b!5810934 (= res!2450475 (not ((_ is ElementMatch!15827) r!7292)))))

(assert (=> b!5810934 (= e!3566883 e!3566885)))

(declare-fun b!5810935 () Bool)

(assert (=> b!5810935 (= e!3566884 (matchR!8012 (derivativeStep!4593 r!7292 (head!12260 (_2!36227 (get!21975 lt!2299895)))) (tail!11355 (_2!36227 (get!21975 lt!2299895)))))))

(declare-fun b!5810936 () Bool)

(assert (=> b!5810936 (= e!3566880 (not (= (head!12260 (_2!36227 (get!21975 lt!2299895))) (c!1029329 r!7292))))))

(declare-fun b!5810937 () Bool)

(declare-fun res!2450480 () Bool)

(assert (=> b!5810937 (=> (not res!2450480) (not e!3566881))))

(assert (=> b!5810937 (= res!2450480 (isEmpty!35571 (tail!11355 (_2!36227 (get!21975 lt!2299895)))))))

(declare-fun b!5810938 () Bool)

(assert (=> b!5810938 (= e!3566879 (= lt!2300018 call!453781))))

(declare-fun b!5810939 () Bool)

(assert (=> b!5810939 (= e!3566885 e!3566882)))

(declare-fun res!2450477 () Bool)

(assert (=> b!5810939 (=> (not res!2450477) (not e!3566882))))

(assert (=> b!5810939 (= res!2450477 (not lt!2300018))))

(assert (= (and d!1829891 c!1029699) b!5810932))

(assert (= (and d!1829891 (not c!1029699)) b!5810935))

(assert (= (and d!1829891 c!1029697) b!5810938))

(assert (= (and d!1829891 (not c!1029697)) b!5810928))

(assert (= (and b!5810928 c!1029698) b!5810930))

(assert (= (and b!5810928 (not c!1029698)) b!5810934))

(assert (= (and b!5810934 (not res!2450475)) b!5810926))

(assert (= (and b!5810926 res!2450478) b!5810933))

(assert (= (and b!5810933 res!2450474) b!5810937))

(assert (= (and b!5810937 res!2450480) b!5810927))

(assert (= (and b!5810926 (not res!2450479)) b!5810939))

(assert (= (and b!5810939 res!2450477) b!5810931))

(assert (= (and b!5810931 (not res!2450481)) b!5810929))

(assert (= (and b!5810929 (not res!2450476)) b!5810936))

(assert (= (or b!5810938 b!5810933 b!5810931) bm!453776))

(declare-fun m!6749338 () Bool)

(assert (=> d!1829891 m!6749338))

(assert (=> d!1829891 m!6748206))

(declare-fun m!6749340 () Bool)

(assert (=> b!5810935 m!6749340))

(assert (=> b!5810935 m!6749340))

(declare-fun m!6749342 () Bool)

(assert (=> b!5810935 m!6749342))

(declare-fun m!6749344 () Bool)

(assert (=> b!5810935 m!6749344))

(assert (=> b!5810935 m!6749342))

(assert (=> b!5810935 m!6749344))

(declare-fun m!6749346 () Bool)

(assert (=> b!5810935 m!6749346))

(assert (=> b!5810932 m!6748414))

(assert (=> b!5810937 m!6749344))

(assert (=> b!5810937 m!6749344))

(declare-fun m!6749348 () Bool)

(assert (=> b!5810937 m!6749348))

(assert (=> b!5810936 m!6749340))

(assert (=> bm!453776 m!6749338))

(assert (=> b!5810927 m!6749340))

(assert (=> b!5810929 m!6749344))

(assert (=> b!5810929 m!6749344))

(assert (=> b!5810929 m!6749348))

(assert (=> b!5809895 d!1829891))

(assert (=> b!5809895 d!1829733))

(assert (=> d!1829453 d!1829451))

(assert (=> d!1829453 d!1829449))

(declare-fun d!1829895 () Bool)

(assert (=> d!1829895 (= (matchR!8012 lt!2299853 s!2326) (matchRSpec!2930 lt!2299853 s!2326))))

(assert (=> d!1829895 true))

(declare-fun _$88!4133 () Unit!156914)

(assert (=> d!1829895 (= (choose!44107 lt!2299853 s!2326) _$88!4133)))

(declare-fun bs!1371744 () Bool)

(assert (= bs!1371744 d!1829895))

(assert (=> bs!1371744 m!6748124))

(assert (=> bs!1371744 m!6748122))

(assert (=> d!1829453 d!1829895))

(assert (=> d!1829453 d!1829851))

(declare-fun d!1829897 () Bool)

(declare-fun lt!2300021 () Int)

(assert (=> d!1829897 (>= lt!2300021 0)))

(declare-fun e!3566891 () Int)

(assert (=> d!1829897 (= lt!2300021 e!3566891)))

(declare-fun c!1029702 () Bool)

(assert (=> d!1829897 (= c!1029702 ((_ is Nil!63656) lt!2299959))))

(assert (=> d!1829897 (= (size!40110 lt!2299959) lt!2300021)))

(declare-fun b!5810947 () Bool)

(assert (=> b!5810947 (= e!3566891 0)))

(declare-fun b!5810948 () Bool)

(assert (=> b!5810948 (= e!3566891 (+ 1 (size!40110 (t!377133 lt!2299959))))))

(assert (= (and d!1829897 c!1029702) b!5810947))

(assert (= (and d!1829897 (not c!1029702)) b!5810948))

(declare-fun m!6749352 () Bool)

(assert (=> b!5810948 m!6749352))

(assert (=> b!5810218 d!1829897))

(declare-fun d!1829901 () Bool)

(declare-fun lt!2300022 () Int)

(assert (=> d!1829901 (>= lt!2300022 0)))

(declare-fun e!3566892 () Int)

(assert (=> d!1829901 (= lt!2300022 e!3566892)))

(declare-fun c!1029703 () Bool)

(assert (=> d!1829901 (= c!1029703 ((_ is Nil!63656) (Cons!63656 (reg!16156 r!7292) Nil!63656)))))

(assert (=> d!1829901 (= (size!40110 (Cons!63656 (reg!16156 r!7292) Nil!63656)) lt!2300022)))

(declare-fun b!5810949 () Bool)

(assert (=> b!5810949 (= e!3566892 0)))

(declare-fun b!5810950 () Bool)

(assert (=> b!5810950 (= e!3566892 (+ 1 (size!40110 (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656)))))))

(assert (= (and d!1829901 c!1029703) b!5810949))

(assert (= (and d!1829901 (not c!1029703)) b!5810950))

(assert (=> b!5810950 m!6749016))

(assert (=> b!5810218 d!1829901))

(declare-fun d!1829903 () Bool)

(declare-fun lt!2300023 () Int)

(assert (=> d!1829903 (>= lt!2300023 0)))

(declare-fun e!3566893 () Int)

(assert (=> d!1829903 (= lt!2300023 e!3566893)))

(declare-fun c!1029704 () Bool)

(assert (=> d!1829903 (= c!1029704 ((_ is Nil!63656) lt!2299835))))

(assert (=> d!1829903 (= (size!40110 lt!2299835) lt!2300023)))

(declare-fun b!5810951 () Bool)

(assert (=> b!5810951 (= e!3566893 0)))

(declare-fun b!5810952 () Bool)

(assert (=> b!5810952 (= e!3566893 (+ 1 (size!40110 (t!377133 lt!2299835))))))

(assert (= (and d!1829903 c!1029704) b!5810951))

(assert (= (and d!1829903 (not c!1029704)) b!5810952))

(declare-fun m!6749354 () Bool)

(assert (=> b!5810952 m!6749354))

(assert (=> b!5810218 d!1829903))

(declare-fun d!1829905 () Bool)

(assert (=> d!1829905 (= (Exists!2927 lambda!317338) (choose!44109 lambda!317338))))

(declare-fun bs!1371754 () Bool)

(assert (= bs!1371754 d!1829905))

(declare-fun m!6749356 () Bool)

(assert (=> bs!1371754 m!6749356))

(assert (=> d!1829483 d!1829905))

(declare-fun d!1829907 () Bool)

(assert (=> d!1829907 (= (Exists!2927 lambda!317339) (choose!44109 lambda!317339))))

(declare-fun bs!1371756 () Bool)

(assert (= bs!1371756 d!1829907))

(declare-fun m!6749360 () Bool)

(assert (=> bs!1371756 m!6749360))

(assert (=> d!1829483 d!1829907))

(declare-fun bs!1371759 () Bool)

(declare-fun d!1829909 () Bool)

(assert (= bs!1371759 (and d!1829909 d!1829459)))

(declare-fun lambda!317442 () Int)

(assert (=> bs!1371759 (= (= r!7292 (Star!15827 (reg!16156 r!7292))) (= lambda!317442 lambda!317326))))

(declare-fun bs!1371761 () Bool)

(assert (= bs!1371761 (and d!1829909 d!1829817)))

(assert (=> bs!1371761 (= (= r!7292 (Star!15827 (reg!16156 r!7292))) (= lambda!317442 lambda!317423))))

(declare-fun bs!1371763 () Bool)

(assert (= bs!1371763 (and d!1829909 b!5809628)))

(assert (=> bs!1371763 (not (= lambda!317442 lambda!317308))))

(declare-fun bs!1371765 () Bool)

(assert (= bs!1371765 (and d!1829909 d!1829483)))

(assert (=> bs!1371765 (not (= lambda!317442 lambda!317339))))

(declare-fun bs!1371767 () Bool)

(assert (= bs!1371767 (and d!1829909 b!5809950)))

(assert (=> bs!1371767 (not (= lambda!317442 lambda!317353))))

(declare-fun bs!1371768 () Bool)

(assert (= bs!1371768 (and d!1829909 b!5809700)))

(assert (=> bs!1371768 (not (= lambda!317442 lambda!317318))))

(declare-fun bs!1371769 () Bool)

(assert (= bs!1371769 (and d!1829909 b!5810677)))

(assert (=> bs!1371769 (not (= lambda!317442 lambda!317412))))

(declare-fun bs!1371771 () Bool)

(assert (= bs!1371771 (and d!1829909 b!5810560)))

(assert (=> bs!1371771 (not (= lambda!317442 lambda!317408))))

(declare-fun bs!1371772 () Bool)

(assert (= bs!1371772 (and d!1829909 b!5810762)))

(assert (=> bs!1371772 (not (= lambda!317442 lambda!317416))))

(assert (=> bs!1371763 (not (= lambda!317442 lambda!317309))))

(assert (=> bs!1371759 (not (= lambda!317442 lambda!317327))))

(declare-fun bs!1371773 () Bool)

(assert (= bs!1371773 (and d!1829909 b!5810563)))

(assert (=> bs!1371773 (not (= lambda!317442 lambda!317407))))

(declare-fun bs!1371774 () Bool)

(assert (= bs!1371774 (and d!1829909 b!5809703)))

(assert (=> bs!1371774 (not (= lambda!317442 lambda!317317))))

(declare-fun bs!1371775 () Bool)

(assert (= bs!1371775 (and d!1829909 b!5810674)))

(assert (=> bs!1371775 (not (= lambda!317442 lambda!317413))))

(assert (=> bs!1371761 (not (= lambda!317442 lambda!317425))))

(declare-fun bs!1371776 () Bool)

(assert (= bs!1371776 (and d!1829909 d!1829847)))

(assert (=> bs!1371776 (= lambda!317442 lambda!317434)))

(declare-fun bs!1371777 () Bool)

(assert (= bs!1371777 (and d!1829909 d!1829503)))

(assert (=> bs!1371777 (= lambda!317442 lambda!317352)))

(assert (=> bs!1371763 (= lambda!317442 lambda!317307)))

(assert (=> bs!1371765 (= lambda!317442 lambda!317338)))

(declare-fun bs!1371778 () Bool)

(assert (= bs!1371778 (and d!1829909 b!5810765)))

(assert (=> bs!1371778 (not (= lambda!317442 lambda!317415))))

(declare-fun bs!1371779 () Bool)

(assert (= bs!1371779 (and d!1829909 b!5809947)))

(assert (=> bs!1371779 (not (= lambda!317442 lambda!317354))))

(assert (=> d!1829909 true))

(assert (=> d!1829909 true))

(assert (=> d!1829909 true))

(declare-fun lambda!317444 () Int)

(assert (=> bs!1371759 (not (= lambda!317444 lambda!317326))))

(assert (=> bs!1371761 (not (= lambda!317444 lambda!317423))))

(assert (=> bs!1371763 (not (= lambda!317444 lambda!317308))))

(assert (=> bs!1371765 (= lambda!317444 lambda!317339)))

(assert (=> bs!1371767 (not (= lambda!317444 lambda!317353))))

(assert (=> bs!1371768 (= (and (= (reg!16156 r!7292) (regOne!32166 lt!2299853)) (= r!7292 (regTwo!32166 lt!2299853))) (= lambda!317444 lambda!317318))))

(assert (=> bs!1371769 (not (= lambda!317444 lambda!317412))))

(assert (=> bs!1371771 (= (and (= (reg!16156 r!7292) (regOne!32166 (regOne!32167 r!7292))) (= r!7292 (regTwo!32166 (regOne!32167 r!7292)))) (= lambda!317444 lambda!317408))))

(declare-fun bs!1371780 () Bool)

(assert (= bs!1371780 d!1829909))

(assert (=> bs!1371780 (not (= lambda!317444 lambda!317442))))

(assert (=> bs!1371772 (= (and (= (reg!16156 r!7292) (regOne!32166 (regOne!32167 lt!2299853))) (= r!7292 (regTwo!32166 (regOne!32167 lt!2299853)))) (= lambda!317444 lambda!317416))))

(assert (=> bs!1371763 (= lambda!317444 lambda!317309)))

(assert (=> bs!1371759 (not (= lambda!317444 lambda!317327))))

(assert (=> bs!1371773 (not (= lambda!317444 lambda!317407))))

(assert (=> bs!1371774 (not (= lambda!317444 lambda!317317))))

(assert (=> bs!1371775 (= (and (= (reg!16156 r!7292) (regOne!32166 (regTwo!32167 r!7292))) (= r!7292 (regTwo!32166 (regTwo!32167 r!7292)))) (= lambda!317444 lambda!317413))))

(assert (=> bs!1371761 (not (= lambda!317444 lambda!317425))))

(assert (=> bs!1371776 (not (= lambda!317444 lambda!317434))))

(assert (=> bs!1371777 (not (= lambda!317444 lambda!317352))))

(assert (=> bs!1371763 (not (= lambda!317444 lambda!317307))))

(assert (=> bs!1371765 (not (= lambda!317444 lambda!317338))))

(assert (=> bs!1371778 (not (= lambda!317444 lambda!317415))))

(assert (=> bs!1371779 (= (and (= (reg!16156 r!7292) (regOne!32166 r!7292)) (= r!7292 (regTwo!32166 r!7292))) (= lambda!317444 lambda!317354))))

(assert (=> d!1829909 true))

(assert (=> d!1829909 true))

(assert (=> d!1829909 true))

(assert (=> d!1829909 (= (Exists!2927 lambda!317442) (Exists!2927 lambda!317444))))

(assert (=> d!1829909 true))

(declare-fun _$90!1563 () Unit!156914)

(assert (=> d!1829909 (= (choose!44110 (reg!16156 r!7292) r!7292 s!2326) _$90!1563)))

(declare-fun m!6749400 () Bool)

(assert (=> bs!1371780 m!6749400))

(declare-fun m!6749402 () Bool)

(assert (=> bs!1371780 m!6749402))

(assert (=> d!1829483 d!1829909))

(assert (=> d!1829483 d!1829771))

(declare-fun b!5810994 () Bool)

(declare-fun e!3566919 () (InoxSet Context!10422))

(declare-fun call!453792 () (InoxSet Context!10422))

(assert (=> b!5810994 (= e!3566919 call!453792)))

(declare-fun bm!453782 () Bool)

(declare-fun call!453790 () (InoxSet Context!10422))

(declare-fun call!453788 () (InoxSet Context!10422))

(assert (=> bm!453782 (= call!453790 call!453788)))

(declare-fun b!5810995 () Bool)

(declare-fun c!1029715 () Bool)

(assert (=> b!5810995 (= c!1029715 ((_ is Star!15827) (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))))))

(declare-fun e!3566920 () (InoxSet Context!10422))

(assert (=> b!5810995 (= e!3566919 e!3566920)))

(declare-fun b!5810996 () Bool)

(declare-fun e!3566923 () Bool)

(assert (=> b!5810996 (= e!3566923 (nullable!5850 (regOne!32166 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292)))))))

(declare-fun c!1029713 () Bool)

(declare-fun bm!453783 () Bool)

(declare-fun c!1029717 () Bool)

(declare-fun call!453787 () List!63780)

(assert (=> bm!453783 (= call!453787 ($colon$colon!1805 (exprs!5711 (ite c!1029478 (Context!10423 Nil!63656) (Context!10423 call!453640))) (ite (or c!1029713 c!1029717) (regTwo!32166 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))) (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292)))))))

(declare-fun bm!453784 () Bool)

(declare-fun call!453789 () List!63780)

(assert (=> bm!453784 (= call!453789 call!453787)))

(declare-fun bm!453785 () Bool)

(declare-fun c!1029714 () Bool)

(assert (=> bm!453785 (= call!453788 (derivationStepZipperDown!1165 (ite c!1029714 (regOne!32167 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))) (ite c!1029713 (regTwo!32166 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))) (ite c!1029717 (regOne!32166 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))) (reg!16156 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292)))))) (ite (or c!1029714 c!1029713) (ite c!1029478 (Context!10423 Nil!63656) (Context!10423 call!453640)) (Context!10423 call!453789)) (h!70105 s!2326)))))

(declare-fun b!5810997 () Bool)

(assert (=> b!5810997 (= e!3566920 call!453792)))

(declare-fun b!5810999 () Bool)

(assert (=> b!5810999 (= e!3566920 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5811000 () Bool)

(declare-fun e!3566921 () (InoxSet Context!10422))

(declare-fun call!453791 () (InoxSet Context!10422))

(assert (=> b!5811000 (= e!3566921 ((_ map or) call!453788 call!453791))))

(declare-fun bm!453786 () Bool)

(assert (=> bm!453786 (= call!453791 (derivationStepZipperDown!1165 (ite c!1029714 (regTwo!32167 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))) (regOne!32166 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292)))) (ite c!1029714 (ite c!1029478 (Context!10423 Nil!63656) (Context!10423 call!453640)) (Context!10423 call!453787)) (h!70105 s!2326)))))

(declare-fun bm!453787 () Bool)

(assert (=> bm!453787 (= call!453792 call!453790)))

(declare-fun b!5811001 () Bool)

(declare-fun e!3566922 () (InoxSet Context!10422))

(assert (=> b!5811001 (= e!3566922 e!3566919)))

(assert (=> b!5811001 (= c!1029717 ((_ is Concat!24672) (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))))))

(declare-fun b!5810998 () Bool)

(declare-fun e!3566924 () (InoxSet Context!10422))

(assert (=> b!5810998 (= e!3566924 (store ((as const (Array Context!10422 Bool)) false) (ite c!1029478 (Context!10423 Nil!63656) (Context!10423 call!453640)) true))))

(declare-fun c!1029716 () Bool)

(declare-fun d!1829929 () Bool)

(assert (=> d!1829929 (= c!1029716 (and ((_ is ElementMatch!15827) (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))) (= (c!1029329 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))) (h!70105 s!2326))))))

(assert (=> d!1829929 (= (derivationStepZipperDown!1165 (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292)) (ite c!1029478 (Context!10423 Nil!63656) (Context!10423 call!453640)) (h!70105 s!2326)) e!3566924)))

(declare-fun b!5811002 () Bool)

(assert (=> b!5811002 (= e!3566924 e!3566921)))

(assert (=> b!5811002 (= c!1029714 ((_ is Union!15827) (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))))))

(declare-fun b!5811003 () Bool)

(assert (=> b!5811003 (= c!1029713 e!3566923)))

(declare-fun res!2450510 () Bool)

(assert (=> b!5811003 (=> (not res!2450510) (not e!3566923))))

(assert (=> b!5811003 (= res!2450510 ((_ is Concat!24672) (ite c!1029478 (regTwo!32167 r!7292) (regOne!32166 r!7292))))))

(assert (=> b!5811003 (= e!3566921 e!3566922)))

(declare-fun b!5811004 () Bool)

(assert (=> b!5811004 (= e!3566922 ((_ map or) call!453791 call!453790))))

(assert (= (and d!1829929 c!1029716) b!5810998))

(assert (= (and d!1829929 (not c!1029716)) b!5811002))

(assert (= (and b!5811002 c!1029714) b!5811000))

(assert (= (and b!5811002 (not c!1029714)) b!5811003))

(assert (= (and b!5811003 res!2450510) b!5810996))

(assert (= (and b!5811003 c!1029713) b!5811004))

(assert (= (and b!5811003 (not c!1029713)) b!5811001))

(assert (= (and b!5811001 c!1029717) b!5810994))

(assert (= (and b!5811001 (not c!1029717)) b!5810995))

(assert (= (and b!5810995 c!1029715) b!5810997))

(assert (= (and b!5810995 (not c!1029715)) b!5810999))

(assert (= (or b!5810994 b!5810997) bm!453784))

(assert (= (or b!5810994 b!5810997) bm!453787))

(assert (= (or b!5811004 bm!453784) bm!453783))

(assert (= (or b!5811004 bm!453787) bm!453782))

(assert (= (or b!5811000 b!5811004) bm!453786))

(assert (= (or b!5811000 bm!453782) bm!453785))

(declare-fun m!6749406 () Bool)

(assert (=> bm!453785 m!6749406))

(declare-fun m!6749408 () Bool)

(assert (=> bm!453783 m!6749408))

(declare-fun m!6749412 () Bool)

(assert (=> bm!453786 m!6749412))

(declare-fun m!6749414 () Bool)

(assert (=> b!5810998 m!6749414))

(declare-fun m!6749416 () Bool)

(assert (=> b!5810996 m!6749416))

(assert (=> bm!453639 d!1829929))

(assert (=> d!1829537 d!1829481))

(declare-fun d!1829935 () Bool)

(assert (=> d!1829935 true))

(declare-fun setRes!39136 () Bool)

(assert (=> d!1829935 setRes!39136))

(declare-fun condSetEmpty!39136 () Bool)

(declare-fun res!2450513 () (InoxSet Context!10422))

(assert (=> d!1829935 (= condSetEmpty!39136 (= res!2450513 ((as const (Array Context!10422 Bool)) false)))))

(assert (=> d!1829935 (= (choose!44126 lt!2299836 lambda!317311) res!2450513)))

(declare-fun setIsEmpty!39136 () Bool)

(assert (=> setIsEmpty!39136 setRes!39136))

(declare-fun setElem!39136 () Context!10422)

(declare-fun e!3566927 () Bool)

(declare-fun tp!1603528 () Bool)

(declare-fun setNonEmpty!39136 () Bool)

(assert (=> setNonEmpty!39136 (= setRes!39136 (and tp!1603528 (inv!82814 setElem!39136) e!3566927))))

(declare-fun setRest!39136 () (InoxSet Context!10422))

(assert (=> setNonEmpty!39136 (= res!2450513 ((_ map or) (store ((as const (Array Context!10422 Bool)) false) setElem!39136 true) setRest!39136))))

(declare-fun b!5811007 () Bool)

(declare-fun tp!1603527 () Bool)

(assert (=> b!5811007 (= e!3566927 tp!1603527)))

(assert (= (and d!1829935 condSetEmpty!39136) setIsEmpty!39136))

(assert (= (and d!1829935 (not condSetEmpty!39136)) setNonEmpty!39136))

(assert (= setNonEmpty!39136 b!5811007))

(declare-fun m!6749418 () Bool)

(assert (=> setNonEmpty!39136 m!6749418))

(assert (=> d!1829615 d!1829935))

(declare-fun bs!1371782 () Bool)

(declare-fun b!5811025 () Bool)

(assert (= bs!1371782 (and b!5811025 d!1829459)))

(declare-fun lambda!317445 () Int)

(assert (=> bs!1371782 (not (= lambda!317445 lambda!317326))))

(declare-fun bs!1371783 () Bool)

(assert (= bs!1371783 (and b!5811025 d!1829817)))

(assert (=> bs!1371783 (not (= lambda!317445 lambda!317423))))

(declare-fun bs!1371784 () Bool)

(assert (= bs!1371784 (and b!5811025 b!5809628)))

(assert (=> bs!1371784 (= (and (= (reg!16156 (regTwo!32167 lt!2299853)) (reg!16156 r!7292)) (= (regTwo!32167 lt!2299853) r!7292)) (= lambda!317445 lambda!317308))))

(declare-fun bs!1371785 () Bool)

(assert (= bs!1371785 (and b!5811025 d!1829483)))

(assert (=> bs!1371785 (not (= lambda!317445 lambda!317339))))

(declare-fun bs!1371786 () Bool)

(assert (= bs!1371786 (and b!5811025 b!5809950)))

(assert (=> bs!1371786 (= (and (= (reg!16156 (regTwo!32167 lt!2299853)) (reg!16156 r!7292)) (= (regTwo!32167 lt!2299853) r!7292)) (= lambda!317445 lambda!317353))))

(declare-fun bs!1371787 () Bool)

(assert (= bs!1371787 (and b!5811025 b!5809700)))

(assert (=> bs!1371787 (not (= lambda!317445 lambda!317318))))

(declare-fun bs!1371788 () Bool)

(assert (= bs!1371788 (and b!5811025 b!5810677)))

(assert (=> bs!1371788 (= (and (= (reg!16156 (regTwo!32167 lt!2299853)) (reg!16156 (regTwo!32167 r!7292))) (= (regTwo!32167 lt!2299853) (regTwo!32167 r!7292))) (= lambda!317445 lambda!317412))))

(declare-fun bs!1371790 () Bool)

(assert (= bs!1371790 (and b!5811025 b!5810560)))

(assert (=> bs!1371790 (not (= lambda!317445 lambda!317408))))

(declare-fun bs!1371791 () Bool)

(assert (= bs!1371791 (and b!5811025 d!1829909)))

(assert (=> bs!1371791 (not (= lambda!317445 lambda!317442))))

(declare-fun bs!1371793 () Bool)

(assert (= bs!1371793 (and b!5811025 b!5810762)))

(assert (=> bs!1371793 (not (= lambda!317445 lambda!317416))))

(assert (=> bs!1371782 (= (and (= (reg!16156 (regTwo!32167 lt!2299853)) (reg!16156 r!7292)) (= (regTwo!32167 lt!2299853) (Star!15827 (reg!16156 r!7292)))) (= lambda!317445 lambda!317327))))

(declare-fun bs!1371796 () Bool)

(assert (= bs!1371796 (and b!5811025 b!5810563)))

(assert (=> bs!1371796 (= (and (= (reg!16156 (regTwo!32167 lt!2299853)) (reg!16156 (regOne!32167 r!7292))) (= (regTwo!32167 lt!2299853) (regOne!32167 r!7292))) (= lambda!317445 lambda!317407))))

(declare-fun bs!1371798 () Bool)

(assert (= bs!1371798 (and b!5811025 b!5809703)))

(assert (=> bs!1371798 (= (and (= (reg!16156 (regTwo!32167 lt!2299853)) (reg!16156 lt!2299853)) (= (regTwo!32167 lt!2299853) lt!2299853)) (= lambda!317445 lambda!317317))))

(declare-fun bs!1371800 () Bool)

(assert (= bs!1371800 (and b!5811025 b!5810674)))

(assert (=> bs!1371800 (not (= lambda!317445 lambda!317413))))

(assert (=> bs!1371783 (= (and (= (reg!16156 (regTwo!32167 lt!2299853)) (reg!16156 r!7292)) (= (regTwo!32167 lt!2299853) (Star!15827 (reg!16156 r!7292)))) (= lambda!317445 lambda!317425))))

(declare-fun bs!1371803 () Bool)

(assert (= bs!1371803 (and b!5811025 d!1829847)))

(assert (=> bs!1371803 (not (= lambda!317445 lambda!317434))))

(declare-fun bs!1371805 () Bool)

(assert (= bs!1371805 (and b!5811025 d!1829503)))

(assert (=> bs!1371805 (not (= lambda!317445 lambda!317352))))

(assert (=> bs!1371784 (not (= lambda!317445 lambda!317307))))

(assert (=> bs!1371785 (not (= lambda!317445 lambda!317338))))

(assert (=> bs!1371784 (not (= lambda!317445 lambda!317309))))

(assert (=> bs!1371791 (not (= lambda!317445 lambda!317444))))

(declare-fun bs!1371807 () Bool)

(assert (= bs!1371807 (and b!5811025 b!5810765)))

(assert (=> bs!1371807 (= (and (= (reg!16156 (regTwo!32167 lt!2299853)) (reg!16156 (regOne!32167 lt!2299853))) (= (regTwo!32167 lt!2299853) (regOne!32167 lt!2299853))) (= lambda!317445 lambda!317415))))

(declare-fun bs!1371808 () Bool)

(assert (= bs!1371808 (and b!5811025 b!5809947)))

(assert (=> bs!1371808 (not (= lambda!317445 lambda!317354))))

(assert (=> b!5811025 true))

(assert (=> b!5811025 true))

(declare-fun bs!1371809 () Bool)

(declare-fun b!5811022 () Bool)

(assert (= bs!1371809 (and b!5811022 d!1829459)))

(declare-fun lambda!317447 () Int)

(assert (=> bs!1371809 (not (= lambda!317447 lambda!317326))))

(declare-fun bs!1371810 () Bool)

(assert (= bs!1371810 (and b!5811022 b!5809628)))

(assert (=> bs!1371810 (not (= lambda!317447 lambda!317308))))

(declare-fun bs!1371811 () Bool)

(assert (= bs!1371811 (and b!5811022 d!1829483)))

(assert (=> bs!1371811 (= (and (= (regOne!32166 (regTwo!32167 lt!2299853)) (reg!16156 r!7292)) (= (regTwo!32166 (regTwo!32167 lt!2299853)) r!7292)) (= lambda!317447 lambda!317339))))

(declare-fun bs!1371812 () Bool)

(assert (= bs!1371812 (and b!5811022 b!5809950)))

(assert (=> bs!1371812 (not (= lambda!317447 lambda!317353))))

(declare-fun bs!1371813 () Bool)

(assert (= bs!1371813 (and b!5811022 b!5809700)))

(assert (=> bs!1371813 (= (and (= (regOne!32166 (regTwo!32167 lt!2299853)) (regOne!32166 lt!2299853)) (= (regTwo!32166 (regTwo!32167 lt!2299853)) (regTwo!32166 lt!2299853))) (= lambda!317447 lambda!317318))))

(declare-fun bs!1371814 () Bool)

(assert (= bs!1371814 (and b!5811022 b!5810677)))

(assert (=> bs!1371814 (not (= lambda!317447 lambda!317412))))

(declare-fun bs!1371815 () Bool)

(assert (= bs!1371815 (and b!5811022 b!5810560)))

(assert (=> bs!1371815 (= (and (= (regOne!32166 (regTwo!32167 lt!2299853)) (regOne!32166 (regOne!32167 r!7292))) (= (regTwo!32166 (regTwo!32167 lt!2299853)) (regTwo!32166 (regOne!32167 r!7292)))) (= lambda!317447 lambda!317408))))

(declare-fun bs!1371816 () Bool)

(assert (= bs!1371816 (and b!5811022 d!1829909)))

(assert (=> bs!1371816 (not (= lambda!317447 lambda!317442))))

(declare-fun bs!1371818 () Bool)

(assert (= bs!1371818 (and b!5811022 b!5810762)))

(assert (=> bs!1371818 (= (and (= (regOne!32166 (regTwo!32167 lt!2299853)) (regOne!32166 (regOne!32167 lt!2299853))) (= (regTwo!32166 (regTwo!32167 lt!2299853)) (regTwo!32166 (regOne!32167 lt!2299853)))) (= lambda!317447 lambda!317416))))

(assert (=> bs!1371809 (not (= lambda!317447 lambda!317327))))

(declare-fun bs!1371820 () Bool)

(assert (= bs!1371820 (and b!5811022 b!5810563)))

(assert (=> bs!1371820 (not (= lambda!317447 lambda!317407))))

(declare-fun bs!1371822 () Bool)

(assert (= bs!1371822 (and b!5811022 b!5809703)))

(assert (=> bs!1371822 (not (= lambda!317447 lambda!317317))))

(declare-fun bs!1371824 () Bool)

(assert (= bs!1371824 (and b!5811022 d!1829817)))

(assert (=> bs!1371824 (not (= lambda!317447 lambda!317423))))

(declare-fun bs!1371826 () Bool)

(assert (= bs!1371826 (and b!5811022 b!5811025)))

(assert (=> bs!1371826 (not (= lambda!317447 lambda!317445))))

(declare-fun bs!1371828 () Bool)

(assert (= bs!1371828 (and b!5811022 b!5810674)))

(assert (=> bs!1371828 (= (and (= (regOne!32166 (regTwo!32167 lt!2299853)) (regOne!32166 (regTwo!32167 r!7292))) (= (regTwo!32166 (regTwo!32167 lt!2299853)) (regTwo!32166 (regTwo!32167 r!7292)))) (= lambda!317447 lambda!317413))))

(assert (=> bs!1371824 (not (= lambda!317447 lambda!317425))))

(declare-fun bs!1371831 () Bool)

(assert (= bs!1371831 (and b!5811022 d!1829847)))

(assert (=> bs!1371831 (not (= lambda!317447 lambda!317434))))

(declare-fun bs!1371833 () Bool)

(assert (= bs!1371833 (and b!5811022 d!1829503)))

(assert (=> bs!1371833 (not (= lambda!317447 lambda!317352))))

(assert (=> bs!1371810 (not (= lambda!317447 lambda!317307))))

(assert (=> bs!1371811 (not (= lambda!317447 lambda!317338))))

(assert (=> bs!1371810 (= (and (= (regOne!32166 (regTwo!32167 lt!2299853)) (reg!16156 r!7292)) (= (regTwo!32166 (regTwo!32167 lt!2299853)) r!7292)) (= lambda!317447 lambda!317309))))

(assert (=> bs!1371816 (= (and (= (regOne!32166 (regTwo!32167 lt!2299853)) (reg!16156 r!7292)) (= (regTwo!32166 (regTwo!32167 lt!2299853)) r!7292)) (= lambda!317447 lambda!317444))))

(declare-fun bs!1371836 () Bool)

(assert (= bs!1371836 (and b!5811022 b!5810765)))

(assert (=> bs!1371836 (not (= lambda!317447 lambda!317415))))

(declare-fun bs!1371837 () Bool)

(assert (= bs!1371837 (and b!5811022 b!5809947)))

(assert (=> bs!1371837 (= (and (= (regOne!32166 (regTwo!32167 lt!2299853)) (regOne!32166 r!7292)) (= (regTwo!32166 (regTwo!32167 lt!2299853)) (regTwo!32166 r!7292))) (= lambda!317447 lambda!317354))))

(assert (=> b!5811022 true))

(assert (=> b!5811022 true))

(declare-fun b!5811017 () Bool)

(declare-fun e!3566938 () Bool)

(declare-fun e!3566936 () Bool)

(assert (=> b!5811017 (= e!3566938 e!3566936)))

(declare-fun c!1029720 () Bool)

(assert (=> b!5811017 (= c!1029720 ((_ is Star!15827) (regTwo!32167 lt!2299853)))))

(declare-fun call!453796 () Bool)

(declare-fun bm!453791 () Bool)

(assert (=> bm!453791 (= call!453796 (Exists!2927 (ite c!1029720 lambda!317445 lambda!317447)))))

(declare-fun b!5811018 () Bool)

(declare-fun res!2450519 () Bool)

(declare-fun e!3566939 () Bool)

(assert (=> b!5811018 (=> res!2450519 e!3566939)))

(declare-fun call!453797 () Bool)

(assert (=> b!5811018 (= res!2450519 call!453797)))

(assert (=> b!5811018 (= e!3566936 e!3566939)))

(declare-fun b!5811019 () Bool)

(declare-fun e!3566937 () Bool)

(assert (=> b!5811019 (= e!3566937 call!453797)))

(declare-fun b!5811020 () Bool)

(declare-fun e!3566940 () Bool)

(assert (=> b!5811020 (= e!3566940 (= s!2326 (Cons!63657 (c!1029329 (regTwo!32167 lt!2299853)) Nil!63657)))))

(declare-fun b!5811021 () Bool)

(declare-fun c!1029723 () Bool)

(assert (=> b!5811021 (= c!1029723 ((_ is ElementMatch!15827) (regTwo!32167 lt!2299853)))))

(declare-fun e!3566941 () Bool)

(assert (=> b!5811021 (= e!3566941 e!3566940)))

(declare-fun bm!453792 () Bool)

(assert (=> bm!453792 (= call!453797 (isEmpty!35571 s!2326))))

(declare-fun d!1829943 () Bool)

(declare-fun c!1029722 () Bool)

(assert (=> d!1829943 (= c!1029722 ((_ is EmptyExpr!15827) (regTwo!32167 lt!2299853)))))

(assert (=> d!1829943 (= (matchRSpec!2930 (regTwo!32167 lt!2299853) s!2326) e!3566937)))

(assert (=> b!5811022 (= e!3566936 call!453796)))

(declare-fun b!5811023 () Bool)

(declare-fun c!1029721 () Bool)

(assert (=> b!5811023 (= c!1029721 ((_ is Union!15827) (regTwo!32167 lt!2299853)))))

(assert (=> b!5811023 (= e!3566940 e!3566938)))

(declare-fun b!5811024 () Bool)

(assert (=> b!5811024 (= e!3566937 e!3566941)))

(declare-fun res!2450520 () Bool)

(assert (=> b!5811024 (= res!2450520 (not ((_ is EmptyLang!15827) (regTwo!32167 lt!2299853))))))

(assert (=> b!5811024 (=> (not res!2450520) (not e!3566941))))

(assert (=> b!5811025 (= e!3566939 call!453796)))

(declare-fun b!5811026 () Bool)

(declare-fun e!3566935 () Bool)

(assert (=> b!5811026 (= e!3566938 e!3566935)))

(declare-fun res!2450521 () Bool)

(assert (=> b!5811026 (= res!2450521 (matchRSpec!2930 (regOne!32167 (regTwo!32167 lt!2299853)) s!2326))))

(assert (=> b!5811026 (=> res!2450521 e!3566935)))

(declare-fun b!5811027 () Bool)

(assert (=> b!5811027 (= e!3566935 (matchRSpec!2930 (regTwo!32167 (regTwo!32167 lt!2299853)) s!2326))))

(assert (= (and d!1829943 c!1029722) b!5811019))

(assert (= (and d!1829943 (not c!1029722)) b!5811024))

(assert (= (and b!5811024 res!2450520) b!5811021))

(assert (= (and b!5811021 c!1029723) b!5811020))

(assert (= (and b!5811021 (not c!1029723)) b!5811023))

(assert (= (and b!5811023 c!1029721) b!5811026))

(assert (= (and b!5811023 (not c!1029721)) b!5811017))

(assert (= (and b!5811026 (not res!2450521)) b!5811027))

(assert (= (and b!5811017 c!1029720) b!5811018))

(assert (= (and b!5811017 (not c!1029720)) b!5811022))

(assert (= (and b!5811018 (not res!2450519)) b!5811025))

(assert (= (or b!5811025 b!5811022) bm!453791))

(assert (= (or b!5811019 b!5811018) bm!453792))

(declare-fun m!6749452 () Bool)

(assert (=> bm!453791 m!6749452))

(assert (=> bm!453792 m!6748148))

(declare-fun m!6749454 () Bool)

(assert (=> b!5811026 m!6749454))

(declare-fun m!6749456 () Bool)

(assert (=> b!5811027 m!6749456))

(assert (=> b!5809705 d!1829943))

(declare-fun d!1829951 () Bool)

(assert (=> d!1829951 (= (nullable!5850 (regOne!32166 (reg!16156 r!7292))) (nullableFct!1875 (regOne!32166 (reg!16156 r!7292))))))

(declare-fun bs!1371838 () Bool)

(assert (= bs!1371838 d!1829951))

(declare-fun m!6749458 () Bool)

(assert (=> bs!1371838 m!6749458))

(assert (=> b!5810099 d!1829951))

(declare-fun d!1829953 () Bool)

(assert (=> d!1829953 (= (isEmpty!35573 (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 Nil!63657 s!2326 s!2326)) (not ((_ is Some!15835) (findConcatSeparation!2250 (reg!16156 r!7292) r!7292 Nil!63657 s!2326 s!2326))))))

(assert (=> d!1829457 d!1829953))

(declare-fun d!1829957 () Bool)

(declare-fun c!1029731 () Bool)

(declare-fun e!3566959 () Bool)

(assert (=> d!1829957 (= c!1029731 e!3566959)))

(declare-fun res!2450531 () Bool)

(assert (=> d!1829957 (=> (not res!2450531) (not e!3566959))))

(assert (=> d!1829957 (= res!2450531 ((_ is Cons!63656) (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))))))))

(declare-fun e!3566960 () (InoxSet Context!10422))

(assert (=> d!1829957 (= (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))) (h!70105 s!2326)) e!3566960)))

(declare-fun b!5811051 () Bool)

(declare-fun e!3566958 () (InoxSet Context!10422))

(declare-fun call!453801 () (InoxSet Context!10422))

(assert (=> b!5811051 (= e!3566958 call!453801)))

(declare-fun b!5811052 () Bool)

(assert (=> b!5811052 (= e!3566960 e!3566958)))

(declare-fun c!1029732 () Bool)

(assert (=> b!5811052 (= c!1029732 ((_ is Cons!63656) (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))))))))

(declare-fun bm!453796 () Bool)

(assert (=> bm!453796 (= call!453801 (derivationStepZipperDown!1165 (h!70104 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656))))))) (Context!10423 (t!377133 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))))))) (h!70105 s!2326)))))

(declare-fun b!5811053 () Bool)

(assert (=> b!5811053 (= e!3566958 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5811054 () Bool)

(assert (=> b!5811054 (= e!3566959 (nullable!5850 (h!70104 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))))))))))

(declare-fun b!5811055 () Bool)

(assert (=> b!5811055 (= e!3566960 ((_ map or) call!453801 (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (Cons!63656 r!7292 Nil!63656)))))))) (h!70105 s!2326))))))

(assert (= (and d!1829957 res!2450531) b!5811054))

(assert (= (and d!1829957 c!1029731) b!5811055))

(assert (= (and d!1829957 (not c!1029731)) b!5811052))

(assert (= (and b!5811052 c!1029732) b!5811051))

(assert (= (and b!5811052 (not c!1029732)) b!5811053))

(assert (= (or b!5811055 b!5811051) bm!453796))

(declare-fun m!6749464 () Bool)

(assert (=> bm!453796 m!6749464))

(declare-fun m!6749466 () Bool)

(assert (=> b!5811054 m!6749466))

(declare-fun m!6749468 () Bool)

(assert (=> b!5811055 m!6749468))

(assert (=> b!5810187 d!1829957))

(assert (=> b!5809978 d!1829737))

(assert (=> b!5809978 d!1829739))

(declare-fun d!1829959 () Bool)

(assert (=> d!1829959 (= ($colon$colon!1805 (exprs!5711 (Context!10423 Nil!63656)) (ite (or c!1029477 c!1029481) (regTwo!32166 r!7292) r!7292)) (Cons!63656 (ite (or c!1029477 c!1029481) (regTwo!32166 r!7292) r!7292) (exprs!5711 (Context!10423 Nil!63656))))))

(assert (=> bm!453636 d!1829959))

(declare-fun d!1829963 () Bool)

(declare-fun c!1029737 () Bool)

(assert (=> d!1829963 (= c!1029737 (isEmpty!35571 (tail!11355 s!2326)))))

(declare-fun e!3566968 () Bool)

(assert (=> d!1829963 (= (matchZipper!1955 (derivationStepZipper!1896 lt!2299862 (head!12260 s!2326)) (tail!11355 s!2326)) e!3566968)))

(declare-fun b!5811067 () Bool)

(assert (=> b!5811067 (= e!3566968 (nullableZipper!1734 (derivationStepZipper!1896 lt!2299862 (head!12260 s!2326))))))

(declare-fun b!5811068 () Bool)

(assert (=> b!5811068 (= e!3566968 (matchZipper!1955 (derivationStepZipper!1896 (derivationStepZipper!1896 lt!2299862 (head!12260 s!2326)) (head!12260 (tail!11355 s!2326))) (tail!11355 (tail!11355 s!2326))))))

(assert (= (and d!1829963 c!1029737) b!5811067))

(assert (= (and d!1829963 (not c!1029737)) b!5811068))

(assert (=> d!1829963 m!6748232))

(assert (=> d!1829963 m!6748238))

(assert (=> b!5811067 m!6748470))

(declare-fun m!6749476 () Bool)

(assert (=> b!5811067 m!6749476))

(assert (=> b!5811068 m!6748232))

(assert (=> b!5811068 m!6748994))

(assert (=> b!5811068 m!6748470))

(assert (=> b!5811068 m!6748994))

(declare-fun m!6749478 () Bool)

(assert (=> b!5811068 m!6749478))

(assert (=> b!5811068 m!6748232))

(assert (=> b!5811068 m!6748998))

(assert (=> b!5811068 m!6749478))

(assert (=> b!5811068 m!6748998))

(declare-fun m!6749480 () Bool)

(assert (=> b!5811068 m!6749480))

(assert (=> b!5810059 d!1829963))

(declare-fun bs!1371839 () Bool)

(declare-fun d!1829965 () Bool)

(assert (= bs!1371839 (and d!1829965 b!5809649)))

(declare-fun lambda!317449 () Int)

(assert (=> bs!1371839 (= (= (head!12260 s!2326) (h!70105 s!2326)) (= lambda!317449 lambda!317310))))

(declare-fun bs!1371840 () Bool)

(assert (= bs!1371840 (and d!1829965 d!1829541)))

(assert (=> bs!1371840 (= (= (head!12260 s!2326) (h!70105 s!2326)) (= lambda!317449 lambda!317363))))

(declare-fun bs!1371841 () Bool)

(assert (= bs!1371841 (and d!1829965 d!1829589)))

(assert (=> bs!1371841 (= (= (head!12260 s!2326) (h!70105 s!2326)) (= lambda!317449 lambda!317378))))

(declare-fun bs!1371842 () Bool)

(assert (= bs!1371842 (and d!1829965 d!1829595)))

(assert (=> bs!1371842 (= (= (head!12260 s!2326) (h!70105 s!2326)) (= lambda!317449 lambda!317379))))

(assert (=> d!1829965 true))

(assert (=> d!1829965 (= (derivationStepZipper!1896 lt!2299862 (head!12260 s!2326)) (flatMap!1434 lt!2299862 lambda!317449))))

(declare-fun bs!1371844 () Bool)

(assert (= bs!1371844 d!1829965))

(declare-fun m!6749482 () Bool)

(assert (=> bs!1371844 m!6749482))

(assert (=> b!5810059 d!1829965))

(assert (=> b!5810059 d!1829721))

(assert (=> b!5810059 d!1829739))

(declare-fun d!1829967 () Bool)

(declare-fun c!1029738 () Bool)

(declare-fun e!3566970 () Bool)

(assert (=> d!1829967 (= c!1029738 e!3566970)))

(declare-fun res!2450535 () Bool)

(assert (=> d!1829967 (=> (not res!2450535) (not e!3566970))))

(assert (=> d!1829967 (= res!2450535 ((_ is Cons!63656) (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343)))))))))

(declare-fun e!3566971 () (InoxSet Context!10422))

(assert (=> d!1829967 (= (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343)))) (h!70105 s!2326)) e!3566971)))

(declare-fun b!5811069 () Bool)

(declare-fun e!3566969 () (InoxSet Context!10422))

(declare-fun call!453804 () (InoxSet Context!10422))

(assert (=> b!5811069 (= e!3566969 call!453804)))

(declare-fun b!5811070 () Bool)

(assert (=> b!5811070 (= e!3566971 e!3566969)))

(declare-fun c!1029739 () Bool)

(assert (=> b!5811070 (= c!1029739 ((_ is Cons!63656) (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343)))))))))

(declare-fun bm!453799 () Bool)

(assert (=> bm!453799 (= call!453804 (derivationStepZipperDown!1165 (h!70104 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343)))))) (Context!10423 (t!377133 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343))))))) (h!70105 s!2326)))))

(declare-fun b!5811071 () Bool)

(assert (=> b!5811071 (= e!3566969 ((as const (Array Context!10422 Bool)) false))))

(declare-fun b!5811072 () Bool)

(assert (=> b!5811072 (= e!3566970 (nullable!5850 (h!70104 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343))))))))))

(declare-fun b!5811073 () Bool)

(assert (=> b!5811073 (= e!3566971 ((_ map or) call!453804 (derivationStepZipperUp!1091 (Context!10423 (t!377133 (exprs!5711 (Context!10423 (t!377133 (exprs!5711 (h!70106 zl!343))))))) (h!70105 s!2326))))))

(assert (= (and d!1829967 res!2450535) b!5811072))

(assert (= (and d!1829967 c!1029738) b!5811073))

(assert (= (and d!1829967 (not c!1029738)) b!5811070))

(assert (= (and b!5811070 c!1029739) b!5811069))

(assert (= (and b!5811070 (not c!1029739)) b!5811071))

(assert (= (or b!5811073 b!5811069) bm!453799))

(declare-fun m!6749484 () Bool)

(assert (=> bm!453799 m!6749484))

(declare-fun m!6749486 () Bool)

(assert (=> b!5811072 m!6749486))

(declare-fun m!6749488 () Bool)

(assert (=> b!5811073 m!6749488))

(assert (=> b!5810224 d!1829967))

(declare-fun bm!453800 () Bool)

(declare-fun call!453806 () Bool)

(declare-fun c!1029740 () Bool)

(declare-fun c!1029741 () Bool)

(assert (=> bm!453800 (= call!453806 (validRegex!7563 (ite c!1029740 (reg!16156 lt!2299907) (ite c!1029741 (regTwo!32167 lt!2299907) (regTwo!32166 lt!2299907)))))))

(declare-fun b!5811074 () Bool)

(declare-fun e!3566974 () Bool)

(declare-fun e!3566972 () Bool)

(assert (=> b!5811074 (= e!3566974 e!3566972)))

(declare-fun res!2450539 () Bool)

(assert (=> b!5811074 (= res!2450539 (not (nullable!5850 (reg!16156 lt!2299907))))))

(assert (=> b!5811074 (=> (not res!2450539) (not e!3566972))))

(declare-fun b!5811075 () Bool)

(declare-fun res!2450537 () Bool)

(declare-fun e!3566973 () Bool)

(assert (=> b!5811075 (=> res!2450537 e!3566973)))

(assert (=> b!5811075 (= res!2450537 (not ((_ is Concat!24672) lt!2299907)))))

(declare-fun e!3566975 () Bool)

(assert (=> b!5811075 (= e!3566975 e!3566973)))

(declare-fun bm!453801 () Bool)

(declare-fun call!453805 () Bool)

(assert (=> bm!453801 (= call!453805 call!453806)))

(declare-fun b!5811076 () Bool)

(declare-fun e!3566976 () Bool)

(assert (=> b!5811076 (= e!3566976 call!453805)))

(declare-fun b!5811077 () Bool)

(assert (=> b!5811077 (= e!3566973 e!3566976)))

(declare-fun res!2450540 () Bool)

(assert (=> b!5811077 (=> (not res!2450540) (not e!3566976))))

(declare-fun call!453807 () Bool)

(assert (=> b!5811077 (= res!2450540 call!453807)))

(declare-fun bm!453802 () Bool)

(assert (=> bm!453802 (= call!453807 (validRegex!7563 (ite c!1029741 (regOne!32167 lt!2299907) (regOne!32166 lt!2299907))))))

(declare-fun d!1829969 () Bool)

(declare-fun res!2450536 () Bool)

(declare-fun e!3566977 () Bool)

(assert (=> d!1829969 (=> res!2450536 e!3566977)))

(assert (=> d!1829969 (= res!2450536 ((_ is ElementMatch!15827) lt!2299907))))

(assert (=> d!1829969 (= (validRegex!7563 lt!2299907) e!3566977)))

(declare-fun b!5811078 () Bool)

(declare-fun e!3566978 () Bool)

(assert (=> b!5811078 (= e!3566978 call!453805)))

(declare-fun b!5811079 () Bool)

(assert (=> b!5811079 (= e!3566972 call!453806)))

(declare-fun b!5811080 () Bool)

(assert (=> b!5811080 (= e!3566974 e!3566975)))

(assert (=> b!5811080 (= c!1029741 ((_ is Union!15827) lt!2299907))))

(declare-fun b!5811081 () Bool)

(declare-fun res!2450538 () Bool)

(assert (=> b!5811081 (=> (not res!2450538) (not e!3566978))))

(assert (=> b!5811081 (= res!2450538 call!453807)))

(assert (=> b!5811081 (= e!3566975 e!3566978)))

(declare-fun b!5811082 () Bool)

(assert (=> b!5811082 (= e!3566977 e!3566974)))

(assert (=> b!5811082 (= c!1029740 ((_ is Star!15827) lt!2299907))))

(assert (= (and d!1829969 (not res!2450536)) b!5811082))

(assert (= (and b!5811082 c!1029740) b!5811074))

(assert (= (and b!5811082 (not c!1029740)) b!5811080))

(assert (= (and b!5811074 res!2450539) b!5811079))

(assert (= (and b!5811080 c!1029741) b!5811081))

(assert (= (and b!5811080 (not c!1029741)) b!5811075))

(assert (= (and b!5811081 res!2450538) b!5811078))

(assert (= (and b!5811075 (not res!2450537)) b!5811077))

(assert (= (and b!5811077 res!2450540) b!5811076))

(assert (= (or b!5811078 b!5811076) bm!453801))

(assert (= (or b!5811081 b!5811077) bm!453802))

(assert (= (or b!5811079 bm!453801) bm!453800))

(declare-fun m!6749490 () Bool)

(assert (=> bm!453800 m!6749490))

(declare-fun m!6749492 () Bool)

(assert (=> b!5811074 m!6749492))

(declare-fun m!6749494 () Bool)

(assert (=> bm!453802 m!6749494))

(assert (=> d!1829509 d!1829969))

(declare-fun bs!1371851 () Bool)

(declare-fun d!1829971 () Bool)

(assert (= bs!1371851 (and d!1829971 d!1829719)))

(declare-fun lambda!317451 () Int)

(assert (=> bs!1371851 (= lambda!317451 lambda!317410)))

(declare-fun bs!1371852 () Bool)

(assert (= bs!1371852 (and d!1829971 d!1829575)))

(assert (=> bs!1371852 (= lambda!317451 lambda!317377)))

(declare-fun bs!1371853 () Bool)

(assert (= bs!1371853 (and d!1829971 d!1829765)))

(assert (=> bs!1371853 (= lambda!317451 lambda!317414)))

(declare-fun bs!1371854 () Bool)

(assert (= bs!1371854 (and d!1829971 b!5809629)))

(assert (=> bs!1371854 (= lambda!317451 lambda!317312)))

(declare-fun bs!1371855 () Bool)

(assert (= bs!1371855 (and d!1829971 d!1829717)))

(assert (=> bs!1371855 (= lambda!317451 lambda!317409)))

(declare-fun bs!1371856 () Bool)

(assert (= bs!1371856 (and d!1829971 d!1829635)))

(assert (=> bs!1371856 (= lambda!317451 lambda!317399)))

(declare-fun bs!1371857 () Bool)

(assert (= bs!1371857 (and d!1829971 d!1829697)))

(assert (=> bs!1371857 (= lambda!317451 lambda!317406)))

(declare-fun bs!1371858 () Bool)

(assert (= bs!1371858 (and d!1829971 d!1829735)))

(assert (=> bs!1371858 (= lambda!317451 lambda!317411)))

(declare-fun bs!1371859 () Bool)

(assert (= bs!1371859 (and d!1829971 d!1829631)))

(assert (=> bs!1371859 (= lambda!317451 lambda!317394)))

(declare-fun bs!1371860 () Bool)

(assert (= bs!1371860 (and d!1829971 d!1829519)))

(assert (=> bs!1371860 (= lambda!317451 lambda!317360)))

(declare-fun bs!1371861 () Bool)

(assert (= bs!1371861 (and d!1829971 d!1829695)))

(assert (=> bs!1371861 (= lambda!317451 lambda!317405)))

(declare-fun bs!1371863 () Bool)

(assert (= bs!1371863 (and d!1829971 d!1829607)))

(assert (=> bs!1371863 (= lambda!317451 lambda!317380)))

(declare-fun b!5811083 () Bool)

(declare-fun e!3566983 () Regex!15827)

(assert (=> b!5811083 (= e!3566983 EmptyLang!15827)))

(declare-fun b!5811084 () Bool)

(declare-fun e!3566981 () Bool)

(declare-fun lt!2300027 () Regex!15827)

(assert (=> b!5811084 (= e!3566981 (isUnion!738 lt!2300027))))

(declare-fun b!5811085 () Bool)

(declare-fun e!3566980 () Bool)

(assert (=> b!5811085 (= e!3566980 e!3566981)))

(declare-fun c!1029742 () Bool)

(assert (=> b!5811085 (= c!1029742 (isEmpty!35575 (tail!11358 (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658)))))))

(declare-fun b!5811086 () Bool)

(declare-fun e!3566984 () Bool)

(assert (=> b!5811086 (= e!3566984 (isEmpty!35575 (t!377133 (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658)))))))

(declare-fun b!5811087 () Bool)

(declare-fun e!3566979 () Bool)

(assert (=> b!5811087 (= e!3566979 e!3566980)))

(declare-fun c!1029744 () Bool)

(assert (=> b!5811087 (= c!1029744 (isEmpty!35575 (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658))))))

(assert (=> d!1829971 e!3566979))

(declare-fun res!2450541 () Bool)

(assert (=> d!1829971 (=> (not res!2450541) (not e!3566979))))

(assert (=> d!1829971 (= res!2450541 (validRegex!7563 lt!2300027))))

(declare-fun e!3566982 () Regex!15827)

(assert (=> d!1829971 (= lt!2300027 e!3566982)))

(declare-fun c!1029743 () Bool)

(assert (=> d!1829971 (= c!1029743 e!3566984)))

(declare-fun res!2450542 () Bool)

(assert (=> d!1829971 (=> (not res!2450542) (not e!3566984))))

(assert (=> d!1829971 (= res!2450542 ((_ is Cons!63656) (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658))))))

(assert (=> d!1829971 (forall!14933 (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658)) lambda!317451)))

(assert (=> d!1829971 (= (generalisedUnion!1690 (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658))) lt!2300027)))

(declare-fun b!5811088 () Bool)

(assert (=> b!5811088 (= e!3566983 (Union!15827 (h!70104 (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658))) (generalisedUnion!1690 (t!377133 (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658))))))))

(declare-fun b!5811089 () Bool)

(assert (=> b!5811089 (= e!3566982 (h!70104 (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658))))))

(declare-fun b!5811090 () Bool)

(assert (=> b!5811090 (= e!3566980 (isEmptyLang!1308 lt!2300027))))

(declare-fun b!5811091 () Bool)

(assert (=> b!5811091 (= e!3566982 e!3566983)))

(declare-fun c!1029745 () Bool)

(assert (=> b!5811091 (= c!1029745 ((_ is Cons!63656) (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658))))))

(declare-fun b!5811092 () Bool)

(assert (=> b!5811092 (= e!3566981 (= lt!2300027 (head!12263 (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658)))))))

(assert (= (and d!1829971 res!2450542) b!5811086))

(assert (= (and d!1829971 c!1029743) b!5811089))

(assert (= (and d!1829971 (not c!1029743)) b!5811091))

(assert (= (and b!5811091 c!1029745) b!5811088))

(assert (= (and b!5811091 (not c!1029745)) b!5811083))

(assert (= (and d!1829971 res!2450541) b!5811087))

(assert (= (and b!5811087 c!1029744) b!5811090))

(assert (= (and b!5811087 (not c!1029744)) b!5811085))

(assert (= (and b!5811085 c!1029742) b!5811092))

(assert (= (and b!5811085 (not c!1029742)) b!5811084))

(assert (=> b!5811085 m!6748390))

(declare-fun m!6749496 () Bool)

(assert (=> b!5811085 m!6749496))

(assert (=> b!5811085 m!6749496))

(declare-fun m!6749498 () Bool)

(assert (=> b!5811085 m!6749498))

(declare-fun m!6749500 () Bool)

(assert (=> d!1829971 m!6749500))

(assert (=> d!1829971 m!6748390))

(declare-fun m!6749502 () Bool)

(assert (=> d!1829971 m!6749502))

(declare-fun m!6749504 () Bool)

(assert (=> b!5811086 m!6749504))

(declare-fun m!6749506 () Bool)

(assert (=> b!5811088 m!6749506))

(declare-fun m!6749508 () Bool)

(assert (=> b!5811090 m!6749508))

(declare-fun m!6749510 () Bool)

(assert (=> b!5811084 m!6749510))

(assert (=> b!5811092 m!6748390))

(declare-fun m!6749512 () Bool)

(assert (=> b!5811092 m!6749512))

(assert (=> b!5811087 m!6748390))

(declare-fun m!6749514 () Bool)

(assert (=> b!5811087 m!6749514))

(assert (=> d!1829509 d!1829971))

(declare-fun bs!1371864 () Bool)

(declare-fun d!1829973 () Bool)

(assert (= bs!1371864 (and d!1829973 d!1829719)))

(declare-fun lambda!317453 () Int)

(assert (=> bs!1371864 (= lambda!317453 lambda!317410)))

(declare-fun bs!1371865 () Bool)

(assert (= bs!1371865 (and d!1829973 d!1829575)))

(assert (=> bs!1371865 (= lambda!317453 lambda!317377)))

(declare-fun bs!1371866 () Bool)

(assert (= bs!1371866 (and d!1829973 d!1829765)))

(assert (=> bs!1371866 (= lambda!317453 lambda!317414)))

(declare-fun bs!1371867 () Bool)

(assert (= bs!1371867 (and d!1829973 b!5809629)))

(assert (=> bs!1371867 (= lambda!317453 lambda!317312)))

(declare-fun bs!1371869 () Bool)

(assert (= bs!1371869 (and d!1829973 d!1829717)))

(assert (=> bs!1371869 (= lambda!317453 lambda!317409)))

(declare-fun bs!1371870 () Bool)

(assert (= bs!1371870 (and d!1829973 d!1829635)))

(assert (=> bs!1371870 (= lambda!317453 lambda!317399)))

(declare-fun bs!1371872 () Bool)

(assert (= bs!1371872 (and d!1829973 d!1829971)))

(assert (=> bs!1371872 (= lambda!317453 lambda!317451)))

(declare-fun bs!1371873 () Bool)

(assert (= bs!1371873 (and d!1829973 d!1829697)))

(assert (=> bs!1371873 (= lambda!317453 lambda!317406)))

(declare-fun bs!1371875 () Bool)

(assert (= bs!1371875 (and d!1829973 d!1829735)))

(assert (=> bs!1371875 (= lambda!317453 lambda!317411)))

(declare-fun bs!1371876 () Bool)

(assert (= bs!1371876 (and d!1829973 d!1829631)))

(assert (=> bs!1371876 (= lambda!317453 lambda!317394)))

(declare-fun bs!1371878 () Bool)

(assert (= bs!1371878 (and d!1829973 d!1829519)))

(assert (=> bs!1371878 (= lambda!317453 lambda!317360)))

(declare-fun bs!1371879 () Bool)

(assert (= bs!1371879 (and d!1829973 d!1829695)))

(assert (=> bs!1371879 (= lambda!317453 lambda!317405)))

(declare-fun bs!1371881 () Bool)

(assert (= bs!1371881 (and d!1829973 d!1829607)))

(assert (=> bs!1371881 (= lambda!317453 lambda!317380)))

(declare-fun lt!2300028 () List!63780)

(assert (=> d!1829973 (forall!14933 lt!2300028 lambda!317453)))

(declare-fun e!3566985 () List!63780)

(assert (=> d!1829973 (= lt!2300028 e!3566985)))

(declare-fun c!1029746 () Bool)

(assert (=> d!1829973 (= c!1029746 ((_ is Cons!63658) (Cons!63658 lt!2299848 Nil!63658)))))

(assert (=> d!1829973 (= (unfocusZipperList!1255 (Cons!63658 lt!2299848 Nil!63658)) lt!2300028)))

(declare-fun b!5811093 () Bool)

(assert (=> b!5811093 (= e!3566985 (Cons!63656 (generalisedConcat!1442 (exprs!5711 (h!70106 (Cons!63658 lt!2299848 Nil!63658)))) (unfocusZipperList!1255 (t!377135 (Cons!63658 lt!2299848 Nil!63658)))))))

(declare-fun b!5811094 () Bool)

(assert (=> b!5811094 (= e!3566985 Nil!63656)))

(assert (= (and d!1829973 c!1029746) b!5811093))

(assert (= (and d!1829973 (not c!1029746)) b!5811094))

(declare-fun m!6749516 () Bool)

(assert (=> d!1829973 m!6749516))

(declare-fun m!6749518 () Bool)

(assert (=> b!5811093 m!6749518))

(declare-fun m!6749520 () Bool)

(assert (=> b!5811093 m!6749520))

(assert (=> d!1829509 d!1829973))

(declare-fun d!1829975 () Bool)

(assert (=> d!1829975 true))

(declare-fun setRes!39137 () Bool)

(assert (=> d!1829975 setRes!39137))

(declare-fun condSetEmpty!39137 () Bool)

(declare-fun res!2450543 () (InoxSet Context!10422))

(assert (=> d!1829975 (= condSetEmpty!39137 (= res!2450543 ((as const (Array Context!10422 Bool)) false)))))

(assert (=> d!1829975 (= (choose!44117 lt!2299860 lambda!317310) res!2450543)))

(declare-fun setIsEmpty!39137 () Bool)

(assert (=> setIsEmpty!39137 setRes!39137))

(declare-fun tp!1603530 () Bool)

(declare-fun setElem!39137 () Context!10422)

(declare-fun e!3566986 () Bool)

(declare-fun setNonEmpty!39137 () Bool)

(assert (=> setNonEmpty!39137 (= setRes!39137 (and tp!1603530 (inv!82814 setElem!39137) e!3566986))))

(declare-fun setRest!39137 () (InoxSet Context!10422))

(assert (=> setNonEmpty!39137 (= res!2450543 ((_ map or) (store ((as const (Array Context!10422 Bool)) false) setElem!39137 true) setRest!39137))))

(declare-fun b!5811095 () Bool)

(declare-fun tp!1603529 () Bool)

(assert (=> b!5811095 (= e!3566986 tp!1603529)))

(assert (= (and d!1829975 condSetEmpty!39137) setIsEmpty!39137))

(assert (= (and d!1829975 (not condSetEmpty!39137)) setNonEmpty!39137))

(assert (= setNonEmpty!39137 b!5811095))

(declare-fun m!6749522 () Bool)

(assert (=> setNonEmpty!39137 m!6749522))

(assert (=> d!1829593 d!1829975))

(assert (=> bm!453590 d!1829481))

(declare-fun d!1829977 () Bool)

(assert (=> d!1829977 true))

(assert (=> d!1829977 true))

(declare-fun res!2450544 () Bool)

(assert (=> d!1829977 (= (choose!44109 lambda!317309) res!2450544)))

(assert (=> d!1829479 d!1829977))

(declare-fun bs!1371886 () Bool)

(declare-fun d!1829979 () Bool)

(assert (= bs!1371886 (and d!1829979 d!1829719)))

(declare-fun lambda!317454 () Int)

(assert (=> bs!1371886 (= lambda!317454 lambda!317410)))

(declare-fun bs!1371887 () Bool)

(assert (= bs!1371887 (and d!1829979 d!1829575)))

(assert (=> bs!1371887 (= lambda!317454 lambda!317377)))

(declare-fun bs!1371888 () Bool)

(assert (= bs!1371888 (and d!1829979 d!1829765)))

(assert (=> bs!1371888 (= lambda!317454 lambda!317414)))

(declare-fun bs!1371889 () Bool)

(assert (= bs!1371889 (and d!1829979 b!5809629)))

(assert (=> bs!1371889 (= lambda!317454 lambda!317312)))

(declare-fun bs!1371890 () Bool)

(assert (= bs!1371890 (and d!1829979 d!1829973)))

(assert (=> bs!1371890 (= lambda!317454 lambda!317453)))

(declare-fun bs!1371891 () Bool)

(assert (= bs!1371891 (and d!1829979 d!1829717)))

(assert (=> bs!1371891 (= lambda!317454 lambda!317409)))

(declare-fun bs!1371892 () Bool)

(assert (= bs!1371892 (and d!1829979 d!1829635)))

(assert (=> bs!1371892 (= lambda!317454 lambda!317399)))

(declare-fun bs!1371893 () Bool)

(assert (= bs!1371893 (and d!1829979 d!1829971)))

(assert (=> bs!1371893 (= lambda!317454 lambda!317451)))

(declare-fun bs!1371894 () Bool)

(assert (= bs!1371894 (and d!1829979 d!1829697)))

(assert (=> bs!1371894 (= lambda!317454 lambda!317406)))

(declare-fun bs!1371896 () Bool)

(assert (= bs!1371896 (and d!1829979 d!1829735)))

(assert (=> bs!1371896 (= lambda!317454 lambda!317411)))

(declare-fun bs!1371897 () Bool)

(assert (= bs!1371897 (and d!1829979 d!1829631)))

(assert (=> bs!1371897 (= lambda!317454 lambda!317394)))

(declare-fun bs!1371898 () Bool)

(assert (= bs!1371898 (and d!1829979 d!1829519)))

(assert (=> bs!1371898 (= lambda!317454 lambda!317360)))

(declare-fun bs!1371899 () Bool)

(assert (= bs!1371899 (and d!1829979 d!1829695)))

(assert (=> bs!1371899 (= lambda!317454 lambda!317405)))

(declare-fun bs!1371900 () Bool)

(assert (= bs!1371900 (and d!1829979 d!1829607)))

(assert (=> bs!1371900 (= lambda!317454 lambda!317380)))

(declare-fun b!5811096 () Bool)

(declare-fun e!3566987 () Bool)

(declare-fun lt!2300029 () Regex!15827)

(assert (=> b!5811096 (= e!3566987 (isConcat!821 lt!2300029))))

(declare-fun e!3566991 () Bool)

(assert (=> d!1829979 e!3566991))

(declare-fun res!2450545 () Bool)

(assert (=> d!1829979 (=> (not res!2450545) (not e!3566991))))

(assert (=> d!1829979 (= res!2450545 (validRegex!7563 lt!2300029))))

(declare-fun e!3566988 () Regex!15827)

(assert (=> d!1829979 (= lt!2300029 e!3566988)))

(declare-fun c!1029750 () Bool)

(declare-fun e!3566992 () Bool)

(assert (=> d!1829979 (= c!1029750 e!3566992)))

(declare-fun res!2450546 () Bool)

(assert (=> d!1829979 (=> (not res!2450546) (not e!3566992))))

(assert (=> d!1829979 (= res!2450546 ((_ is Cons!63656) (t!377133 (exprs!5711 (h!70106 zl!343)))))))

(assert (=> d!1829979 (forall!14933 (t!377133 (exprs!5711 (h!70106 zl!343))) lambda!317454)))

(assert (=> d!1829979 (= (generalisedConcat!1442 (t!377133 (exprs!5711 (h!70106 zl!343)))) lt!2300029)))

(declare-fun b!5811097 () Bool)

(declare-fun e!3566989 () Regex!15827)

(assert (=> b!5811097 (= e!3566989 (Concat!24672 (h!70104 (t!377133 (exprs!5711 (h!70106 zl!343)))) (generalisedConcat!1442 (t!377133 (t!377133 (exprs!5711 (h!70106 zl!343)))))))))

(declare-fun b!5811098 () Bool)

(assert (=> b!5811098 (= e!3566988 (h!70104 (t!377133 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5811099 () Bool)

(assert (=> b!5811099 (= e!3566987 (= lt!2300029 (head!12263 (t!377133 (exprs!5711 (h!70106 zl!343))))))))

(declare-fun b!5811100 () Bool)

(declare-fun e!3566990 () Bool)

(assert (=> b!5811100 (= e!3566990 (isEmptyExpr!1298 lt!2300029))))

(declare-fun b!5811101 () Bool)

(assert (=> b!5811101 (= e!3566988 e!3566989)))

(declare-fun c!1029747 () Bool)

(assert (=> b!5811101 (= c!1029747 ((_ is Cons!63656) (t!377133 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5811102 () Bool)

(assert (=> b!5811102 (= e!3566991 e!3566990)))

(declare-fun c!1029749 () Bool)

(assert (=> b!5811102 (= c!1029749 (isEmpty!35575 (t!377133 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun b!5811103 () Bool)

(assert (=> b!5811103 (= e!3566989 EmptyExpr!15827)))

(declare-fun b!5811104 () Bool)

(assert (=> b!5811104 (= e!3566990 e!3566987)))

(declare-fun c!1029748 () Bool)

(assert (=> b!5811104 (= c!1029748 (isEmpty!35575 (tail!11358 (t!377133 (exprs!5711 (h!70106 zl!343))))))))

(declare-fun b!5811105 () Bool)

(assert (=> b!5811105 (= e!3566992 (isEmpty!35575 (t!377133 (t!377133 (exprs!5711 (h!70106 zl!343))))))))

(assert (= (and d!1829979 res!2450546) b!5811105))

(assert (= (and d!1829979 c!1029750) b!5811098))

(assert (= (and d!1829979 (not c!1029750)) b!5811101))

(assert (= (and b!5811101 c!1029747) b!5811097))

(assert (= (and b!5811101 (not c!1029747)) b!5811103))

(assert (= (and d!1829979 res!2450545) b!5811102))

(assert (= (and b!5811102 c!1029749) b!5811100))

(assert (= (and b!5811102 (not c!1029749)) b!5811104))

(assert (= (and b!5811104 c!1029748) b!5811099))

(assert (= (and b!5811104 (not c!1029748)) b!5811096))

(assert (=> b!5811102 m!6748450))

(declare-fun m!6749532 () Bool)

(assert (=> b!5811105 m!6749532))

(declare-fun m!6749534 () Bool)

(assert (=> b!5811097 m!6749534))

(declare-fun m!6749536 () Bool)

(assert (=> b!5811099 m!6749536))

(declare-fun m!6749538 () Bool)

(assert (=> b!5811100 m!6749538))

(declare-fun m!6749540 () Bool)

(assert (=> b!5811104 m!6749540))

(assert (=> b!5811104 m!6749540))

(declare-fun m!6749544 () Bool)

(assert (=> b!5811104 m!6749544))

(declare-fun m!6749546 () Bool)

(assert (=> b!5811096 m!6749546))

(declare-fun m!6749548 () Bool)

(assert (=> d!1829979 m!6749548))

(declare-fun m!6749552 () Bool)

(assert (=> d!1829979 m!6749552))

(assert (=> b!5810027 d!1829979))

(declare-fun d!1829991 () Bool)

(declare-fun res!2450547 () Bool)

(declare-fun e!3566994 () Bool)

(assert (=> d!1829991 (=> res!2450547 e!3566994)))

(assert (=> d!1829991 (= res!2450547 ((_ is Nil!63656) (++!14037 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835)))))

(assert (=> d!1829991 (= (forall!14933 (++!14037 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835) lambda!317312) e!3566994)))

(declare-fun b!5811108 () Bool)

(declare-fun e!3566995 () Bool)

(assert (=> b!5811108 (= e!3566994 e!3566995)))

(declare-fun res!2450548 () Bool)

(assert (=> b!5811108 (=> (not res!2450548) (not e!3566995))))

(assert (=> b!5811108 (= res!2450548 (dynLambda!24923 lambda!317312 (h!70104 (++!14037 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835))))))

(declare-fun b!5811109 () Bool)

(assert (=> b!5811109 (= e!3566995 (forall!14933 (t!377133 (++!14037 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835)) lambda!317312))))

(assert (= (and d!1829991 (not res!2450547)) b!5811108))

(assert (= (and b!5811108 res!2450548) b!5811109))

(declare-fun b_lambda!219043 () Bool)

(assert (=> (not b_lambda!219043) (not b!5811108)))

(declare-fun m!6749562 () Bool)

(assert (=> b!5811108 m!6749562))

(declare-fun m!6749564 () Bool)

(assert (=> b!5811109 m!6749564))

(assert (=> d!1829611 d!1829991))

(assert (=> d!1829611 d!1829621))

(declare-fun d!1829995 () Bool)

(assert (=> d!1829995 (forall!14933 (++!14037 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835) lambda!317312)))

(assert (=> d!1829995 true))

(declare-fun _$78!292 () Unit!156914)

(assert (=> d!1829995 (= (choose!44124 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835 lambda!317312) _$78!292)))

(declare-fun bs!1371907 () Bool)

(assert (= bs!1371907 d!1829995))

(assert (=> bs!1371907 m!6748216))

(assert (=> bs!1371907 m!6748216))

(assert (=> bs!1371907 m!6748636))

(assert (=> d!1829611 d!1829995))

(declare-fun d!1830005 () Bool)

(declare-fun res!2450551 () Bool)

(declare-fun e!3567003 () Bool)

(assert (=> d!1830005 (=> res!2450551 e!3567003)))

(assert (=> d!1830005 (= res!2450551 ((_ is Nil!63656) (Cons!63656 (reg!16156 r!7292) Nil!63656)))))

(assert (=> d!1830005 (= (forall!14933 (Cons!63656 (reg!16156 r!7292) Nil!63656) lambda!317312) e!3567003)))

(declare-fun b!5811122 () Bool)

(declare-fun e!3567004 () Bool)

(assert (=> b!5811122 (= e!3567003 e!3567004)))

(declare-fun res!2450552 () Bool)

(assert (=> b!5811122 (=> (not res!2450552) (not e!3567004))))

(assert (=> b!5811122 (= res!2450552 (dynLambda!24923 lambda!317312 (h!70104 (Cons!63656 (reg!16156 r!7292) Nil!63656))))))

(declare-fun b!5811123 () Bool)

(assert (=> b!5811123 (= e!3567004 (forall!14933 (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656)) lambda!317312))))

(assert (= (and d!1830005 (not res!2450551)) b!5811122))

(assert (= (and b!5811122 res!2450552) b!5811123))

(declare-fun b_lambda!219045 () Bool)

(assert (=> (not b_lambda!219045) (not b!5811122)))

(declare-fun m!6749570 () Bool)

(assert (=> b!5811122 m!6749570))

(declare-fun m!6749572 () Bool)

(assert (=> b!5811123 m!6749572))

(assert (=> d!1829611 d!1830005))

(assert (=> b!5809892 d!1829515))

(declare-fun c!1029758 () Bool)

(declare-fun c!1029757 () Bool)

(declare-fun bm!453809 () Bool)

(declare-fun call!453815 () Bool)

(assert (=> bm!453809 (= call!453815 (validRegex!7563 (ite c!1029757 (reg!16156 (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292))) (ite c!1029758 (regTwo!32167 (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292))) (regTwo!32166 (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292)))))))))

(declare-fun b!5811124 () Bool)

(declare-fun e!3567007 () Bool)

(declare-fun e!3567005 () Bool)

(assert (=> b!5811124 (= e!3567007 e!3567005)))

(declare-fun res!2450556 () Bool)

(assert (=> b!5811124 (= res!2450556 (not (nullable!5850 (reg!16156 (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292))))))))

(assert (=> b!5811124 (=> (not res!2450556) (not e!3567005))))

(declare-fun b!5811125 () Bool)

(declare-fun res!2450554 () Bool)

(declare-fun e!3567006 () Bool)

(assert (=> b!5811125 (=> res!2450554 e!3567006)))

(assert (=> b!5811125 (= res!2450554 (not ((_ is Concat!24672) (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292)))))))

(declare-fun e!3567008 () Bool)

(assert (=> b!5811125 (= e!3567008 e!3567006)))

(declare-fun bm!453810 () Bool)

(declare-fun call!453814 () Bool)

(assert (=> bm!453810 (= call!453814 call!453815)))

(declare-fun b!5811126 () Bool)

(declare-fun e!3567009 () Bool)

(assert (=> b!5811126 (= e!3567009 call!453814)))

(declare-fun b!5811127 () Bool)

(assert (=> b!5811127 (= e!3567006 e!3567009)))

(declare-fun res!2450557 () Bool)

(assert (=> b!5811127 (=> (not res!2450557) (not e!3567009))))

(declare-fun call!453816 () Bool)

(assert (=> b!5811127 (= res!2450557 call!453816)))

(declare-fun bm!453811 () Bool)

(assert (=> bm!453811 (= call!453816 (validRegex!7563 (ite c!1029758 (regOne!32167 (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292))) (regOne!32166 (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292))))))))

(declare-fun d!1830007 () Bool)

(declare-fun res!2450553 () Bool)

(declare-fun e!3567010 () Bool)

(assert (=> d!1830007 (=> res!2450553 e!3567010)))

(assert (=> d!1830007 (= res!2450553 ((_ is ElementMatch!15827) (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292))))))

(assert (=> d!1830007 (= (validRegex!7563 (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292))) e!3567010)))

(declare-fun b!5811128 () Bool)

(declare-fun e!3567011 () Bool)

(assert (=> b!5811128 (= e!3567011 call!453814)))

(declare-fun b!5811129 () Bool)

(assert (=> b!5811129 (= e!3567005 call!453815)))

(declare-fun b!5811130 () Bool)

(assert (=> b!5811130 (= e!3567007 e!3567008)))

(assert (=> b!5811130 (= c!1029758 ((_ is Union!15827) (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292))))))

(declare-fun b!5811131 () Bool)

(declare-fun res!2450555 () Bool)

(assert (=> b!5811131 (=> (not res!2450555) (not e!3567011))))

(assert (=> b!5811131 (= res!2450555 call!453816)))

(assert (=> b!5811131 (= e!3567008 e!3567011)))

(declare-fun b!5811132 () Bool)

(assert (=> b!5811132 (= e!3567010 e!3567007)))

(assert (=> b!5811132 (= c!1029757 ((_ is Star!15827) (ite c!1029476 (regOne!32167 r!7292) (regOne!32166 r!7292))))))

(assert (= (and d!1830007 (not res!2450553)) b!5811132))

(assert (= (and b!5811132 c!1029757) b!5811124))

(assert (= (and b!5811132 (not c!1029757)) b!5811130))

(assert (= (and b!5811124 res!2450556) b!5811129))

(assert (= (and b!5811130 c!1029758) b!5811131))

(assert (= (and b!5811130 (not c!1029758)) b!5811125))

(assert (= (and b!5811131 res!2450555) b!5811128))

(assert (= (and b!5811125 (not res!2450554)) b!5811127))

(assert (= (and b!5811127 res!2450557) b!5811126))

(assert (= (or b!5811128 b!5811126) bm!453810))

(assert (= (or b!5811131 b!5811127) bm!453811))

(assert (= (or b!5811129 bm!453810) bm!453809))

(declare-fun m!6749584 () Bool)

(assert (=> bm!453809 m!6749584))

(declare-fun m!6749586 () Bool)

(assert (=> b!5811124 m!6749586))

(declare-fun m!6749588 () Bool)

(assert (=> bm!453811 m!6749588))

(assert (=> bm!453634 d!1830007))

(declare-fun d!1830013 () Bool)

(assert (=> d!1830013 (= (isEmpty!35575 (t!377133 (exprs!5711 (h!70106 zl!343)))) ((_ is Nil!63656) (t!377133 (exprs!5711 (h!70106 zl!343)))))))

(assert (=> b!5810035 d!1830013))

(declare-fun d!1830015 () Bool)

(assert (=> d!1830015 (= (Exists!2927 (ite c!1029338 lambda!317317 lambda!317318)) (choose!44109 (ite c!1029338 lambda!317317 lambda!317318)))))

(declare-fun bs!1371908 () Bool)

(assert (= bs!1371908 d!1830015))

(declare-fun m!6749590 () Bool)

(assert (=> bs!1371908 m!6749590))

(assert (=> bm!453572 d!1830015))

(assert (=> b!5810292 d!1829519))

(declare-fun bs!1371909 () Bool)

(declare-fun d!1830017 () Bool)

(assert (= bs!1371909 (and d!1830017 d!1829719)))

(declare-fun lambda!317456 () Int)

(assert (=> bs!1371909 (= lambda!317456 lambda!317410)))

(declare-fun bs!1371910 () Bool)

(assert (= bs!1371910 (and d!1830017 d!1829575)))

(assert (=> bs!1371910 (= lambda!317456 lambda!317377)))

(declare-fun bs!1371911 () Bool)

(assert (= bs!1371911 (and d!1830017 d!1829765)))

(assert (=> bs!1371911 (= lambda!317456 lambda!317414)))

(declare-fun bs!1371912 () Bool)

(assert (= bs!1371912 (and d!1830017 b!5809629)))

(assert (=> bs!1371912 (= lambda!317456 lambda!317312)))

(declare-fun bs!1371914 () Bool)

(assert (= bs!1371914 (and d!1830017 d!1829973)))

(assert (=> bs!1371914 (= lambda!317456 lambda!317453)))

(declare-fun bs!1371915 () Bool)

(assert (= bs!1371915 (and d!1830017 d!1829717)))

(assert (=> bs!1371915 (= lambda!317456 lambda!317409)))

(declare-fun bs!1371916 () Bool)

(assert (= bs!1371916 (and d!1830017 d!1829635)))

(assert (=> bs!1371916 (= lambda!317456 lambda!317399)))

(declare-fun bs!1371917 () Bool)

(assert (= bs!1371917 (and d!1830017 d!1829971)))

(assert (=> bs!1371917 (= lambda!317456 lambda!317451)))

(declare-fun bs!1371918 () Bool)

(assert (= bs!1371918 (and d!1830017 d!1829697)))

(assert (=> bs!1371918 (= lambda!317456 lambda!317406)))

(declare-fun bs!1371919 () Bool)

(assert (= bs!1371919 (and d!1830017 d!1829735)))

(assert (=> bs!1371919 (= lambda!317456 lambda!317411)))

(declare-fun bs!1371920 () Bool)

(assert (= bs!1371920 (and d!1830017 d!1829631)))

(assert (=> bs!1371920 (= lambda!317456 lambda!317394)))

(declare-fun bs!1371921 () Bool)

(assert (= bs!1371921 (and d!1830017 d!1829519)))

(assert (=> bs!1371921 (= lambda!317456 lambda!317360)))

(declare-fun bs!1371922 () Bool)

(assert (= bs!1371922 (and d!1830017 d!1829979)))

(assert (=> bs!1371922 (= lambda!317456 lambda!317454)))

(declare-fun bs!1371923 () Bool)

(assert (= bs!1371923 (and d!1830017 d!1829695)))

(assert (=> bs!1371923 (= lambda!317456 lambda!317405)))

(declare-fun bs!1371924 () Bool)

(assert (= bs!1371924 (and d!1830017 d!1829607)))

(assert (=> bs!1371924 (= lambda!317456 lambda!317380)))

(declare-fun lt!2300030 () List!63780)

(assert (=> d!1830017 (forall!14933 lt!2300030 lambda!317456)))

(declare-fun e!3567019 () List!63780)

(assert (=> d!1830017 (= lt!2300030 e!3567019)))

(declare-fun c!1029761 () Bool)

(assert (=> d!1830017 (= c!1029761 ((_ is Cons!63658) (t!377135 zl!343)))))

(assert (=> d!1830017 (= (unfocusZipperList!1255 (t!377135 zl!343)) lt!2300030)))

(declare-fun b!5811142 () Bool)

(assert (=> b!5811142 (= e!3567019 (Cons!63656 (generalisedConcat!1442 (exprs!5711 (h!70106 (t!377135 zl!343)))) (unfocusZipperList!1255 (t!377135 (t!377135 zl!343)))))))

(declare-fun b!5811143 () Bool)

(assert (=> b!5811143 (= e!3567019 Nil!63656)))

(assert (= (and d!1830017 c!1029761) b!5811142))

(assert (= (and d!1830017 (not c!1029761)) b!5811143))

(declare-fun m!6749604 () Bool)

(assert (=> d!1830017 m!6749604))

(declare-fun m!6749606 () Bool)

(assert (=> b!5811142 m!6749606))

(declare-fun m!6749608 () Bool)

(assert (=> b!5811142 m!6749608))

(assert (=> b!5810292 d!1830017))

(declare-fun c!1029766 () Bool)

(declare-fun call!453823 () Bool)

(declare-fun c!1029767 () Bool)

(declare-fun bm!453817 () Bool)

(assert (=> bm!453817 (= call!453823 (validRegex!7563 (ite c!1029766 (reg!16156 lt!2299972) (ite c!1029767 (regTwo!32167 lt!2299972) (regTwo!32166 lt!2299972)))))))

(declare-fun b!5811157 () Bool)

(declare-fun e!3567031 () Bool)

(declare-fun e!3567029 () Bool)

(assert (=> b!5811157 (= e!3567031 e!3567029)))

(declare-fun res!2450571 () Bool)

(assert (=> b!5811157 (= res!2450571 (not (nullable!5850 (reg!16156 lt!2299972))))))

(assert (=> b!5811157 (=> (not res!2450571) (not e!3567029))))

(declare-fun b!5811158 () Bool)

(declare-fun res!2450569 () Bool)

(declare-fun e!3567030 () Bool)

(assert (=> b!5811158 (=> res!2450569 e!3567030)))

(assert (=> b!5811158 (= res!2450569 (not ((_ is Concat!24672) lt!2299972)))))

(declare-fun e!3567032 () Bool)

(assert (=> b!5811158 (= e!3567032 e!3567030)))

(declare-fun bm!453818 () Bool)

(declare-fun call!453822 () Bool)

(assert (=> bm!453818 (= call!453822 call!453823)))

(declare-fun b!5811159 () Bool)

(declare-fun e!3567033 () Bool)

(assert (=> b!5811159 (= e!3567033 call!453822)))

(declare-fun b!5811160 () Bool)

(assert (=> b!5811160 (= e!3567030 e!3567033)))

(declare-fun res!2450572 () Bool)

(assert (=> b!5811160 (=> (not res!2450572) (not e!3567033))))

(declare-fun call!453824 () Bool)

(assert (=> b!5811160 (= res!2450572 call!453824)))

(declare-fun bm!453819 () Bool)

(assert (=> bm!453819 (= call!453824 (validRegex!7563 (ite c!1029767 (regOne!32167 lt!2299972) (regOne!32166 lt!2299972))))))

(declare-fun d!1830025 () Bool)

(declare-fun res!2450568 () Bool)

(declare-fun e!3567034 () Bool)

(assert (=> d!1830025 (=> res!2450568 e!3567034)))

(assert (=> d!1830025 (= res!2450568 ((_ is ElementMatch!15827) lt!2299972))))

(assert (=> d!1830025 (= (validRegex!7563 lt!2299972) e!3567034)))

(declare-fun b!5811161 () Bool)

(declare-fun e!3567035 () Bool)

(assert (=> b!5811161 (= e!3567035 call!453822)))

(declare-fun b!5811162 () Bool)

(assert (=> b!5811162 (= e!3567029 call!453823)))

(declare-fun b!5811163 () Bool)

(assert (=> b!5811163 (= e!3567031 e!3567032)))

(assert (=> b!5811163 (= c!1029767 ((_ is Union!15827) lt!2299972))))

(declare-fun b!5811164 () Bool)

(declare-fun res!2450570 () Bool)

(assert (=> b!5811164 (=> (not res!2450570) (not e!3567035))))

(assert (=> b!5811164 (= res!2450570 call!453824)))

(assert (=> b!5811164 (= e!3567032 e!3567035)))

(declare-fun b!5811165 () Bool)

(assert (=> b!5811165 (= e!3567034 e!3567031)))

(assert (=> b!5811165 (= c!1029766 ((_ is Star!15827) lt!2299972))))

(assert (= (and d!1830025 (not res!2450568)) b!5811165))

(assert (= (and b!5811165 c!1029766) b!5811157))

(assert (= (and b!5811165 (not c!1029766)) b!5811163))

(assert (= (and b!5811157 res!2450571) b!5811162))

(assert (= (and b!5811163 c!1029767) b!5811164))

(assert (= (and b!5811163 (not c!1029767)) b!5811158))

(assert (= (and b!5811164 res!2450570) b!5811161))

(assert (= (and b!5811158 (not res!2450569)) b!5811160))

(assert (= (and b!5811160 res!2450572) b!5811159))

(assert (= (or b!5811161 b!5811159) bm!453818))

(assert (= (or b!5811164 b!5811160) bm!453819))

(assert (= (or b!5811162 bm!453818) bm!453817))

(declare-fun m!6749610 () Bool)

(assert (=> bm!453817 m!6749610))

(declare-fun m!6749612 () Bool)

(assert (=> b!5811157 m!6749612))

(declare-fun m!6749614 () Bool)

(assert (=> bm!453819 m!6749614))

(assert (=> d!1829631 d!1830025))

(declare-fun d!1830027 () Bool)

(declare-fun res!2450573 () Bool)

(declare-fun e!3567036 () Bool)

(assert (=> d!1830027 (=> res!2450573 e!3567036)))

(assert (=> d!1830027 (= res!2450573 ((_ is Nil!63656) (unfocusZipperList!1255 zl!343)))))

(assert (=> d!1830027 (= (forall!14933 (unfocusZipperList!1255 zl!343) lambda!317394) e!3567036)))

(declare-fun b!5811166 () Bool)

(declare-fun e!3567037 () Bool)

(assert (=> b!5811166 (= e!3567036 e!3567037)))

(declare-fun res!2450574 () Bool)

(assert (=> b!5811166 (=> (not res!2450574) (not e!3567037))))

(assert (=> b!5811166 (= res!2450574 (dynLambda!24923 lambda!317394 (h!70104 (unfocusZipperList!1255 zl!343))))))

(declare-fun b!5811167 () Bool)

(assert (=> b!5811167 (= e!3567037 (forall!14933 (t!377133 (unfocusZipperList!1255 zl!343)) lambda!317394))))

(assert (= (and d!1830027 (not res!2450573)) b!5811166))

(assert (= (and b!5811166 res!2450574) b!5811167))

(declare-fun b_lambda!219049 () Bool)

(assert (=> (not b_lambda!219049) (not b!5811166)))

(declare-fun m!6749616 () Bool)

(assert (=> b!5811166 m!6749616))

(declare-fun m!6749618 () Bool)

(assert (=> b!5811167 m!6749618))

(assert (=> d!1829631 d!1830027))

(assert (=> b!5809735 d!1829721))

(declare-fun d!1830029 () Bool)

(declare-fun c!1029768 () Bool)

(assert (=> d!1830029 (= c!1029768 (isEmpty!35571 (tail!11355 (t!377134 s!2326))))))

(declare-fun e!3567038 () Bool)

(assert (=> d!1830029 (= (matchZipper!1955 (derivationStepZipper!1896 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326)) (head!12260 (t!377134 s!2326))) (tail!11355 (t!377134 s!2326))) e!3567038)))

(declare-fun b!5811168 () Bool)

(assert (=> b!5811168 (= e!3567038 (nullableZipper!1734 (derivationStepZipper!1896 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326)) (head!12260 (t!377134 s!2326)))))))

(declare-fun b!5811169 () Bool)

(assert (=> b!5811169 (= e!3567038 (matchZipper!1955 (derivationStepZipper!1896 (derivationStepZipper!1896 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326)) (head!12260 (t!377134 s!2326))) (head!12260 (tail!11355 (t!377134 s!2326)))) (tail!11355 (tail!11355 (t!377134 s!2326)))))))

(assert (= (and d!1830029 c!1029768) b!5811168))

(assert (= (and d!1830029 (not c!1029768)) b!5811169))

(assert (=> d!1830029 m!6748482))

(declare-fun m!6749620 () Bool)

(assert (=> d!1830029 m!6749620))

(assert (=> b!5811168 m!6748480))

(declare-fun m!6749622 () Bool)

(assert (=> b!5811168 m!6749622))

(assert (=> b!5811169 m!6748482))

(declare-fun m!6749624 () Bool)

(assert (=> b!5811169 m!6749624))

(assert (=> b!5811169 m!6748480))

(assert (=> b!5811169 m!6749624))

(declare-fun m!6749626 () Bool)

(assert (=> b!5811169 m!6749626))

(assert (=> b!5811169 m!6748482))

(declare-fun m!6749628 () Bool)

(assert (=> b!5811169 m!6749628))

(assert (=> b!5811169 m!6749626))

(assert (=> b!5811169 m!6749628))

(declare-fun m!6749630 () Bool)

(assert (=> b!5811169 m!6749630))

(assert (=> b!5810061 d!1830029))

(declare-fun bs!1371935 () Bool)

(declare-fun d!1830031 () Bool)

(assert (= bs!1371935 (and d!1830031 d!1829595)))

(declare-fun lambda!317459 () Int)

(assert (=> bs!1371935 (= (= (head!12260 (t!377134 s!2326)) (h!70105 s!2326)) (= lambda!317459 lambda!317379))))

(declare-fun bs!1371937 () Bool)

(assert (= bs!1371937 (and d!1830031 d!1829589)))

(assert (=> bs!1371937 (= (= (head!12260 (t!377134 s!2326)) (h!70105 s!2326)) (= lambda!317459 lambda!317378))))

(declare-fun bs!1371939 () Bool)

(assert (= bs!1371939 (and d!1830031 b!5809649)))

(assert (=> bs!1371939 (= (= (head!12260 (t!377134 s!2326)) (h!70105 s!2326)) (= lambda!317459 lambda!317310))))

(declare-fun bs!1371940 () Bool)

(assert (= bs!1371940 (and d!1830031 d!1829541)))

(assert (=> bs!1371940 (= (= (head!12260 (t!377134 s!2326)) (h!70105 s!2326)) (= lambda!317459 lambda!317363))))

(declare-fun bs!1371942 () Bool)

(assert (= bs!1371942 (and d!1830031 d!1829965)))

(assert (=> bs!1371942 (= (= (head!12260 (t!377134 s!2326)) (head!12260 s!2326)) (= lambda!317459 lambda!317449))))

(assert (=> d!1830031 true))

(assert (=> d!1830031 (= (derivationStepZipper!1896 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326)) (head!12260 (t!377134 s!2326))) (flatMap!1434 (derivationStepZipper!1896 lt!2299862 (h!70105 s!2326)) lambda!317459))))

(declare-fun bs!1371944 () Bool)

(assert (= bs!1371944 d!1830031))

(assert (=> bs!1371944 m!6748194))

(declare-fun m!6749632 () Bool)

(assert (=> bs!1371944 m!6749632))

(assert (=> b!5810061 d!1830031))

(declare-fun d!1830033 () Bool)

(assert (=> d!1830033 (= (head!12260 (t!377134 s!2326)) (h!70105 (t!377134 s!2326)))))

(assert (=> b!5810061 d!1830033))

(declare-fun d!1830035 () Bool)

(assert (=> d!1830035 (= (tail!11355 (t!377134 s!2326)) (t!377134 (t!377134 s!2326)))))

(assert (=> b!5810061 d!1830035))

(declare-fun d!1830037 () Bool)

(declare-fun c!1029769 () Bool)

(assert (=> d!1830037 (= c!1029769 (isEmpty!35571 (tail!11355 s!2326)))))

(declare-fun e!3567039 () Bool)

(assert (=> d!1830037 (= (matchZipper!1955 (derivationStepZipper!1896 z!1189 (head!12260 s!2326)) (tail!11355 s!2326)) e!3567039)))

(declare-fun b!5811170 () Bool)

(assert (=> b!5811170 (= e!3567039 (nullableZipper!1734 (derivationStepZipper!1896 z!1189 (head!12260 s!2326))))))

(declare-fun b!5811171 () Bool)

(assert (=> b!5811171 (= e!3567039 (matchZipper!1955 (derivationStepZipper!1896 (derivationStepZipper!1896 z!1189 (head!12260 s!2326)) (head!12260 (tail!11355 s!2326))) (tail!11355 (tail!11355 s!2326))))))

(assert (= (and d!1830037 c!1029769) b!5811170))

(assert (= (and d!1830037 (not c!1029769)) b!5811171))

(assert (=> d!1830037 m!6748232))

(assert (=> d!1830037 m!6748238))

(assert (=> b!5811170 m!6748682))

(declare-fun m!6749634 () Bool)

(assert (=> b!5811170 m!6749634))

(assert (=> b!5811171 m!6748232))

(assert (=> b!5811171 m!6748994))

(assert (=> b!5811171 m!6748682))

(assert (=> b!5811171 m!6748994))

(declare-fun m!6749636 () Bool)

(assert (=> b!5811171 m!6749636))

(assert (=> b!5811171 m!6748232))

(assert (=> b!5811171 m!6748998))

(assert (=> b!5811171 m!6749636))

(assert (=> b!5811171 m!6748998))

(declare-fun m!6749638 () Bool)

(assert (=> b!5811171 m!6749638))

(assert (=> b!5810226 d!1830037))

(declare-fun bs!1371951 () Bool)

(declare-fun d!1830039 () Bool)

(assert (= bs!1371951 (and d!1830039 d!1829595)))

(declare-fun lambda!317460 () Int)

(assert (=> bs!1371951 (= (= (head!12260 s!2326) (h!70105 s!2326)) (= lambda!317460 lambda!317379))))

(declare-fun bs!1371952 () Bool)

(assert (= bs!1371952 (and d!1830039 d!1829589)))

(assert (=> bs!1371952 (= (= (head!12260 s!2326) (h!70105 s!2326)) (= lambda!317460 lambda!317378))))

(declare-fun bs!1371954 () Bool)

(assert (= bs!1371954 (and d!1830039 b!5809649)))

(assert (=> bs!1371954 (= (= (head!12260 s!2326) (h!70105 s!2326)) (= lambda!317460 lambda!317310))))

(declare-fun bs!1371955 () Bool)

(assert (= bs!1371955 (and d!1830039 d!1829541)))

(assert (=> bs!1371955 (= (= (head!12260 s!2326) (h!70105 s!2326)) (= lambda!317460 lambda!317363))))

(declare-fun bs!1371956 () Bool)

(assert (= bs!1371956 (and d!1830039 d!1829965)))

(assert (=> bs!1371956 (= lambda!317460 lambda!317449)))

(declare-fun bs!1371957 () Bool)

(assert (= bs!1371957 (and d!1830039 d!1830031)))

(assert (=> bs!1371957 (= (= (head!12260 s!2326) (head!12260 (t!377134 s!2326))) (= lambda!317460 lambda!317459))))

(assert (=> d!1830039 true))

(assert (=> d!1830039 (= (derivationStepZipper!1896 z!1189 (head!12260 s!2326)) (flatMap!1434 z!1189 lambda!317460))))

(declare-fun bs!1371958 () Bool)

(assert (= bs!1371958 d!1830039))

(declare-fun m!6749640 () Bool)

(assert (=> bs!1371958 m!6749640))

(assert (=> b!5810226 d!1830039))

(assert (=> b!5810226 d!1829721))

(assert (=> b!5810226 d!1829739))

(declare-fun d!1830041 () Bool)

(declare-fun e!3567040 () Bool)

(assert (=> d!1830041 e!3567040))

(declare-fun c!1029770 () Bool)

(assert (=> d!1830041 (= c!1029770 ((_ is EmptyExpr!15827) (derivativeStep!4593 lt!2299853 (head!12260 s!2326))))))

(declare-fun lt!2300031 () Bool)

(declare-fun e!3567045 () Bool)

(assert (=> d!1830041 (= lt!2300031 e!3567045)))

(declare-fun c!1029772 () Bool)

(assert (=> d!1830041 (= c!1029772 (isEmpty!35571 (tail!11355 s!2326)))))

(assert (=> d!1830041 (validRegex!7563 (derivativeStep!4593 lt!2299853 (head!12260 s!2326)))))

(assert (=> d!1830041 (= (matchR!8012 (derivativeStep!4593 lt!2299853 (head!12260 s!2326)) (tail!11355 s!2326)) lt!2300031)))

(declare-fun bm!453820 () Bool)

(declare-fun call!453825 () Bool)

(assert (=> bm!453820 (= call!453825 (isEmpty!35571 (tail!11355 s!2326)))))

(declare-fun b!5811172 () Bool)

(declare-fun res!2450580 () Bool)

(declare-fun e!3567046 () Bool)

(assert (=> b!5811172 (=> res!2450580 e!3567046)))

(declare-fun e!3567042 () Bool)

(assert (=> b!5811172 (= res!2450580 e!3567042)))

(declare-fun res!2450579 () Bool)

(assert (=> b!5811172 (=> (not res!2450579) (not e!3567042))))

(assert (=> b!5811172 (= res!2450579 lt!2300031)))

(declare-fun b!5811173 () Bool)

(assert (=> b!5811173 (= e!3567042 (= (head!12260 (tail!11355 s!2326)) (c!1029329 (derivativeStep!4593 lt!2299853 (head!12260 s!2326)))))))

(declare-fun b!5811174 () Bool)

(declare-fun e!3567044 () Bool)

(assert (=> b!5811174 (= e!3567040 e!3567044)))

(declare-fun c!1029771 () Bool)

(assert (=> b!5811174 (= c!1029771 ((_ is EmptyLang!15827) (derivativeStep!4593 lt!2299853 (head!12260 s!2326))))))

(declare-fun b!5811175 () Bool)

(declare-fun res!2450577 () Bool)

(declare-fun e!3567041 () Bool)

(assert (=> b!5811175 (=> res!2450577 e!3567041)))

(assert (=> b!5811175 (= res!2450577 (not (isEmpty!35571 (tail!11355 (tail!11355 s!2326)))))))

(declare-fun b!5811176 () Bool)

(assert (=> b!5811176 (= e!3567044 (not lt!2300031))))

(declare-fun b!5811177 () Bool)

(declare-fun e!3567043 () Bool)

(assert (=> b!5811177 (= e!3567043 e!3567041)))

(declare-fun res!2450582 () Bool)

(assert (=> b!5811177 (=> res!2450582 e!3567041)))

(assert (=> b!5811177 (= res!2450582 call!453825)))

(declare-fun b!5811178 () Bool)

(assert (=> b!5811178 (= e!3567045 (nullable!5850 (derivativeStep!4593 lt!2299853 (head!12260 s!2326))))))

(declare-fun b!5811179 () Bool)

(declare-fun res!2450575 () Bool)

(assert (=> b!5811179 (=> (not res!2450575) (not e!3567042))))

(assert (=> b!5811179 (= res!2450575 (not call!453825))))

(declare-fun b!5811180 () Bool)

(declare-fun res!2450576 () Bool)

(assert (=> b!5811180 (=> res!2450576 e!3567046)))

(assert (=> b!5811180 (= res!2450576 (not ((_ is ElementMatch!15827) (derivativeStep!4593 lt!2299853 (head!12260 s!2326)))))))

(assert (=> b!5811180 (= e!3567044 e!3567046)))

(declare-fun b!5811181 () Bool)

(assert (=> b!5811181 (= e!3567045 (matchR!8012 (derivativeStep!4593 (derivativeStep!4593 lt!2299853 (head!12260 s!2326)) (head!12260 (tail!11355 s!2326))) (tail!11355 (tail!11355 s!2326))))))

(declare-fun b!5811182 () Bool)

(assert (=> b!5811182 (= e!3567041 (not (= (head!12260 (tail!11355 s!2326)) (c!1029329 (derivativeStep!4593 lt!2299853 (head!12260 s!2326))))))))

(declare-fun b!5811183 () Bool)

(declare-fun res!2450581 () Bool)

(assert (=> b!5811183 (=> (not res!2450581) (not e!3567042))))

(assert (=> b!5811183 (= res!2450581 (isEmpty!35571 (tail!11355 (tail!11355 s!2326))))))

(declare-fun b!5811184 () Bool)

(assert (=> b!5811184 (= e!3567040 (= lt!2300031 call!453825))))

(declare-fun b!5811185 () Bool)

(assert (=> b!5811185 (= e!3567046 e!3567043)))

(declare-fun res!2450578 () Bool)

(assert (=> b!5811185 (=> (not res!2450578) (not e!3567043))))

(assert (=> b!5811185 (= res!2450578 (not lt!2300031))))

(assert (= (and d!1830041 c!1029772) b!5811178))

(assert (= (and d!1830041 (not c!1029772)) b!5811181))

(assert (= (and d!1830041 c!1029770) b!5811184))

(assert (= (and d!1830041 (not c!1029770)) b!5811174))

(assert (= (and b!5811174 c!1029771) b!5811176))

(assert (= (and b!5811174 (not c!1029771)) b!5811180))

(assert (= (and b!5811180 (not res!2450576)) b!5811172))

(assert (= (and b!5811172 res!2450579) b!5811179))

(assert (= (and b!5811179 res!2450575) b!5811183))

(assert (= (and b!5811183 res!2450581) b!5811173))

(assert (= (and b!5811172 (not res!2450580)) b!5811185))

(assert (= (and b!5811185 res!2450578) b!5811177))

(assert (= (and b!5811177 (not res!2450582)) b!5811175))

(assert (= (and b!5811175 (not res!2450577)) b!5811182))

(assert (= (or b!5811184 b!5811179 b!5811177) bm!453820))

(assert (=> d!1830041 m!6748232))

(assert (=> d!1830041 m!6748238))

(assert (=> d!1830041 m!6748230))

(declare-fun m!6749650 () Bool)

(assert (=> d!1830041 m!6749650))

(assert (=> b!5811181 m!6748232))

(assert (=> b!5811181 m!6748994))

(assert (=> b!5811181 m!6748230))

(assert (=> b!5811181 m!6748994))

(declare-fun m!6749652 () Bool)

(assert (=> b!5811181 m!6749652))

(assert (=> b!5811181 m!6748232))

(assert (=> b!5811181 m!6748998))

(assert (=> b!5811181 m!6749652))

(assert (=> b!5811181 m!6748998))

(declare-fun m!6749654 () Bool)

(assert (=> b!5811181 m!6749654))

(assert (=> b!5811178 m!6748230))

(declare-fun m!6749656 () Bool)

(assert (=> b!5811178 m!6749656))

(assert (=> b!5811183 m!6748232))

(assert (=> b!5811183 m!6748998))

(assert (=> b!5811183 m!6748998))

(assert (=> b!5811183 m!6749004))

(assert (=> b!5811182 m!6748232))

(assert (=> b!5811182 m!6748994))

(assert (=> bm!453820 m!6748232))

(assert (=> bm!453820 m!6748238))

(assert (=> b!5811173 m!6748232))

(assert (=> b!5811173 m!6748994))

(assert (=> b!5811175 m!6748232))

(assert (=> b!5811175 m!6748998))

(assert (=> b!5811175 m!6748998))

(assert (=> b!5811175 m!6749004))

(assert (=> b!5809743 d!1830041))

(declare-fun b!5811197 () Bool)

(declare-fun c!1029779 () Bool)

(assert (=> b!5811197 (= c!1029779 (nullable!5850 (regOne!32166 lt!2299853)))))

(declare-fun e!3567057 () Regex!15827)

(declare-fun e!3567056 () Regex!15827)

(assert (=> b!5811197 (= e!3567057 e!3567056)))

(declare-fun b!5811198 () Bool)

(declare-fun c!1029781 () Bool)

(assert (=> b!5811198 (= c!1029781 ((_ is Union!15827) lt!2299853))))

(declare-fun e!3567053 () Regex!15827)

(declare-fun e!3567055 () Regex!15827)

(assert (=> b!5811198 (= e!3567053 e!3567055)))

(declare-fun b!5811199 () Bool)

(declare-fun e!3567054 () Regex!15827)

(assert (=> b!5811199 (= e!3567054 EmptyLang!15827)))

(declare-fun b!5811200 () Bool)

(assert (=> b!5811200 (= e!3567054 e!3567053)))

(declare-fun c!1029780 () Bool)

(assert (=> b!5811200 (= c!1029780 ((_ is ElementMatch!15827) lt!2299853))))

(declare-fun bm!453827 () Bool)

(declare-fun call!453832 () Regex!15827)

(declare-fun c!1029778 () Bool)

(assert (=> bm!453827 (= call!453832 (derivativeStep!4593 (ite c!1029781 (regTwo!32167 lt!2299853) (ite c!1029778 (reg!16156 lt!2299853) (regOne!32166 lt!2299853))) (head!12260 s!2326)))))

(declare-fun b!5811201 () Bool)

(declare-fun call!453835 () Regex!15827)

(assert (=> b!5811201 (= e!3567057 (Concat!24672 call!453835 lt!2299853))))

(declare-fun b!5811202 () Bool)

(assert (=> b!5811202 (= e!3567053 (ite (= (head!12260 s!2326) (c!1029329 lt!2299853)) EmptyExpr!15827 EmptyLang!15827))))

(declare-fun b!5811203 () Bool)

(declare-fun call!453833 () Regex!15827)

(assert (=> b!5811203 (= e!3567056 (Union!15827 (Concat!24672 call!453835 (regTwo!32166 lt!2299853)) call!453833))))

(declare-fun b!5811204 () Bool)

(assert (=> b!5811204 (= e!3567055 e!3567057)))

(assert (=> b!5811204 (= c!1029778 ((_ is Star!15827) lt!2299853))))

(declare-fun d!1830047 () Bool)

(declare-fun lt!2300032 () Regex!15827)

(assert (=> d!1830047 (validRegex!7563 lt!2300032)))

(assert (=> d!1830047 (= lt!2300032 e!3567054)))

(declare-fun c!1029782 () Bool)

(assert (=> d!1830047 (= c!1029782 (or ((_ is EmptyExpr!15827) lt!2299853) ((_ is EmptyLang!15827) lt!2299853)))))

(assert (=> d!1830047 (validRegex!7563 lt!2299853)))

(assert (=> d!1830047 (= (derivativeStep!4593 lt!2299853 (head!12260 s!2326)) lt!2300032)))

(declare-fun call!453834 () Regex!15827)

(declare-fun bm!453828 () Bool)

(assert (=> bm!453828 (= call!453834 (derivativeStep!4593 (ite c!1029781 (regOne!32167 lt!2299853) (ite c!1029779 (regTwo!32166 lt!2299853) (regOne!32166 lt!2299853))) (head!12260 s!2326)))))

(declare-fun bm!453829 () Bool)

(assert (=> bm!453829 (= call!453833 call!453834)))

(declare-fun b!5811205 () Bool)

(assert (=> b!5811205 (= e!3567055 (Union!15827 call!453834 call!453832))))

(declare-fun bm!453830 () Bool)

(assert (=> bm!453830 (= call!453835 call!453832)))

(declare-fun b!5811206 () Bool)

(assert (=> b!5811206 (= e!3567056 (Union!15827 (Concat!24672 call!453833 (regTwo!32166 lt!2299853)) EmptyLang!15827))))

(assert (= (and d!1830047 c!1029782) b!5811199))

(assert (= (and d!1830047 (not c!1029782)) b!5811200))

(assert (= (and b!5811200 c!1029780) b!5811202))

(assert (= (and b!5811200 (not c!1029780)) b!5811198))

(assert (= (and b!5811198 c!1029781) b!5811205))

(assert (= (and b!5811198 (not c!1029781)) b!5811204))

(assert (= (and b!5811204 c!1029778) b!5811201))

(assert (= (and b!5811204 (not c!1029778)) b!5811197))

(assert (= (and b!5811197 c!1029779) b!5811203))

(assert (= (and b!5811197 (not c!1029779)) b!5811206))

(assert (= (or b!5811203 b!5811206) bm!453829))

(assert (= (or b!5811201 b!5811203) bm!453830))

(assert (= (or b!5811205 bm!453830) bm!453827))

(assert (= (or b!5811205 bm!453829) bm!453828))

(declare-fun m!6749668 () Bool)

(assert (=> b!5811197 m!6749668))

(assert (=> bm!453827 m!6748228))

(declare-fun m!6749670 () Bool)

(assert (=> bm!453827 m!6749670))

(declare-fun m!6749672 () Bool)

(assert (=> d!1830047 m!6749672))

(assert (=> d!1830047 m!6748226))

(assert (=> bm!453828 m!6748228))

(declare-fun m!6749674 () Bool)

(assert (=> bm!453828 m!6749674))

(assert (=> b!5809743 d!1830047))

(assert (=> b!5809743 d!1829721))

(assert (=> b!5809743 d!1829739))

(declare-fun d!1830051 () Bool)

(assert (=> d!1830051 (= (isUnion!738 lt!2299972) ((_ is Union!15827) lt!2299972))))

(assert (=> b!5810275 d!1830051))

(declare-fun d!1830053 () Bool)

(assert (=> d!1830053 (= (flatMap!1434 z!1189 lambda!317378) (choose!44117 z!1189 lambda!317378))))

(declare-fun bs!1371961 () Bool)

(assert (= bs!1371961 d!1830053))

(declare-fun m!6749676 () Bool)

(assert (=> bs!1371961 m!6749676))

(assert (=> d!1829589 d!1830053))

(declare-fun d!1830055 () Bool)

(assert (=> d!1830055 (= (isEmpty!35571 (t!377134 s!2326)) ((_ is Nil!63657) (t!377134 s!2326)))))

(assert (=> d!1829539 d!1830055))

(assert (=> d!1829627 d!1829623))

(declare-fun d!1830057 () Bool)

(assert (=> d!1830057 (= (flatMap!1434 z!1189 lambda!317310) (dynLambda!24920 lambda!317310 (h!70106 zl!343)))))

(assert (=> d!1830057 true))

(declare-fun _$13!2544 () Unit!156914)

(assert (=> d!1830057 (= (choose!44118 z!1189 (h!70106 zl!343) lambda!317310) _$13!2544)))

(declare-fun b_lambda!219051 () Bool)

(assert (=> (not b_lambda!219051) (not d!1830057)))

(declare-fun bs!1371962 () Bool)

(assert (= bs!1371962 d!1830057))

(assert (=> bs!1371962 m!6748116))

(assert (=> bs!1371962 m!6748674))

(assert (=> d!1829627 d!1830057))

(declare-fun d!1830059 () Bool)

(assert (=> d!1830059 (= (nullable!5850 r!7292) (nullableFct!1875 r!7292))))

(declare-fun bs!1371963 () Bool)

(assert (= bs!1371963 d!1830059))

(declare-fun m!6749678 () Bool)

(assert (=> bs!1371963 m!6749678))

(assert (=> b!5809973 d!1830059))

(declare-fun d!1830061 () Bool)

(assert (=> d!1830061 (= (head!12263 (unfocusZipperList!1255 zl!343)) (h!70104 (unfocusZipperList!1255 zl!343)))))

(assert (=> b!5810283 d!1830061))

(declare-fun d!1830063 () Bool)

(declare-fun c!1029791 () Bool)

(assert (=> d!1830063 (= c!1029791 ((_ is Nil!63656) lt!2299959))))

(declare-fun e!3567070 () (InoxSet Regex!15827))

(assert (=> d!1830063 (= (content!11664 lt!2299959) e!3567070)))

(declare-fun b!5811231 () Bool)

(assert (=> b!5811231 (= e!3567070 ((as const (Array Regex!15827 Bool)) false))))

(declare-fun b!5811232 () Bool)

(assert (=> b!5811232 (= e!3567070 ((_ map or) (store ((as const (Array Regex!15827 Bool)) false) (h!70104 lt!2299959) true) (content!11664 (t!377133 lt!2299959))))))

(assert (= (and d!1830063 c!1029791) b!5811231))

(assert (= (and d!1830063 (not c!1029791)) b!5811232))

(declare-fun m!6749696 () Bool)

(assert (=> b!5811232 m!6749696))

(declare-fun m!6749698 () Bool)

(assert (=> b!5811232 m!6749698))

(assert (=> d!1829621 d!1830063))

(declare-fun d!1830073 () Bool)

(declare-fun c!1029796 () Bool)

(assert (=> d!1830073 (= c!1029796 ((_ is Nil!63656) (Cons!63656 (reg!16156 r!7292) Nil!63656)))))

(declare-fun e!3567077 () (InoxSet Regex!15827))

(assert (=> d!1830073 (= (content!11664 (Cons!63656 (reg!16156 r!7292) Nil!63656)) e!3567077)))

(declare-fun b!5811243 () Bool)

(assert (=> b!5811243 (= e!3567077 ((as const (Array Regex!15827 Bool)) false))))

(declare-fun b!5811244 () Bool)

(assert (=> b!5811244 (= e!3567077 ((_ map or) (store ((as const (Array Regex!15827 Bool)) false) (h!70104 (Cons!63656 (reg!16156 r!7292) Nil!63656)) true) (content!11664 (t!377133 (Cons!63656 (reg!16156 r!7292) Nil!63656)))))))

(assert (= (and d!1830073 c!1029796) b!5811243))

(assert (= (and d!1830073 (not c!1029796)) b!5811244))

(declare-fun m!6749700 () Bool)

(assert (=> b!5811244 m!6749700))

(assert (=> b!5811244 m!6749020))

(assert (=> d!1829621 d!1830073))

(declare-fun d!1830075 () Bool)

(declare-fun c!1029797 () Bool)

(assert (=> d!1830075 (= c!1029797 ((_ is Nil!63656) lt!2299835))))

(declare-fun e!3567078 () (InoxSet Regex!15827))

(assert (=> d!1830075 (= (content!11664 lt!2299835) e!3567078)))

(declare-fun b!5811245 () Bool)

(assert (=> b!5811245 (= e!3567078 ((as const (Array Regex!15827 Bool)) false))))

(declare-fun b!5811246 () Bool)

(assert (=> b!5811246 (= e!3567078 ((_ map or) (store ((as const (Array Regex!15827 Bool)) false) (h!70104 lt!2299835) true) (content!11664 (t!377133 lt!2299835))))))

(assert (= (and d!1830075 c!1029797) b!5811245))

(assert (= (and d!1830075 (not c!1029797)) b!5811246))

(declare-fun m!6749702 () Bool)

(assert (=> b!5811246 m!6749702))

(declare-fun m!6749704 () Bool)

(assert (=> b!5811246 m!6749704))

(assert (=> d!1829621 d!1830075))

(declare-fun d!1830077 () Bool)

(assert (=> d!1830077 (= (isConcat!821 lt!2299922) ((_ is Concat!24672) lt!2299922))))

(assert (=> b!5810026 d!1830077))

(assert (=> d!1829517 d!1829515))

(assert (=> d!1829517 d!1829511))

(declare-fun d!1830079 () Bool)

(assert (=> d!1830079 (= (matchR!8012 r!7292 s!2326) (matchRSpec!2930 r!7292 s!2326))))

(assert (=> d!1830079 true))

(declare-fun _$88!4134 () Unit!156914)

(assert (=> d!1830079 (= (choose!44107 r!7292 s!2326) _$88!4134)))

(declare-fun bs!1371976 () Bool)

(assert (= bs!1371976 d!1830079))

(assert (=> bs!1371976 m!6748200))

(assert (=> bs!1371976 m!6748198))

(assert (=> d!1829517 d!1830079))

(assert (=> d!1829517 d!1829573))

(declare-fun d!1830081 () Bool)

(assert (=> d!1830081 (= (Exists!2927 (ite c!1029405 lambda!317353 lambda!317354)) (choose!44109 (ite c!1029405 lambda!317353 lambda!317354)))))

(declare-fun bs!1371977 () Bool)

(assert (= bs!1371977 d!1830081))

(declare-fun m!6749706 () Bool)

(assert (=> bs!1371977 m!6749706))

(assert (=> bm!453589 d!1830081))

(declare-fun bs!1371978 () Bool)

(declare-fun d!1830083 () Bool)

(assert (= bs!1371978 (and d!1830083 d!1829719)))

(declare-fun lambda!317463 () Int)

(assert (=> bs!1371978 (= lambda!317463 lambda!317410)))

(declare-fun bs!1371979 () Bool)

(assert (= bs!1371979 (and d!1830083 d!1829575)))

(assert (=> bs!1371979 (= lambda!317463 lambda!317377)))

(declare-fun bs!1371980 () Bool)

(assert (= bs!1371980 (and d!1830083 d!1829765)))

(assert (=> bs!1371980 (= lambda!317463 lambda!317414)))

(declare-fun bs!1371981 () Bool)

(assert (= bs!1371981 (and d!1830083 b!5809629)))

(assert (=> bs!1371981 (= lambda!317463 lambda!317312)))

(declare-fun bs!1371982 () Bool)

(assert (= bs!1371982 (and d!1830083 d!1829973)))

(assert (=> bs!1371982 (= lambda!317463 lambda!317453)))

(declare-fun bs!1371983 () Bool)

(assert (= bs!1371983 (and d!1830083 d!1830017)))

(assert (=> bs!1371983 (= lambda!317463 lambda!317456)))

(declare-fun bs!1371984 () Bool)

(assert (= bs!1371984 (and d!1830083 d!1829717)))

(assert (=> bs!1371984 (= lambda!317463 lambda!317409)))

(declare-fun bs!1371985 () Bool)

(assert (= bs!1371985 (and d!1830083 d!1829635)))

(assert (=> bs!1371985 (= lambda!317463 lambda!317399)))

(declare-fun bs!1371986 () Bool)

(assert (= bs!1371986 (and d!1830083 d!1829971)))

(assert (=> bs!1371986 (= lambda!317463 lambda!317451)))

(declare-fun bs!1371987 () Bool)

(assert (= bs!1371987 (and d!1830083 d!1829697)))

(assert (=> bs!1371987 (= lambda!317463 lambda!317406)))

(declare-fun bs!1371988 () Bool)

(assert (= bs!1371988 (and d!1830083 d!1829735)))

(assert (=> bs!1371988 (= lambda!317463 lambda!317411)))

(declare-fun bs!1371989 () Bool)

(assert (= bs!1371989 (and d!1830083 d!1829631)))

(assert (=> bs!1371989 (= lambda!317463 lambda!317394)))

(declare-fun bs!1371990 () Bool)

(assert (= bs!1371990 (and d!1830083 d!1829519)))

(assert (=> bs!1371990 (= lambda!317463 lambda!317360)))

(declare-fun bs!1371991 () Bool)

(assert (= bs!1371991 (and d!1830083 d!1829979)))

(assert (=> bs!1371991 (= lambda!317463 lambda!317454)))

(declare-fun bs!1371992 () Bool)

(assert (= bs!1371992 (and d!1830083 d!1829695)))

(assert (=> bs!1371992 (= lambda!317463 lambda!317405)))

(declare-fun bs!1371993 () Bool)

(assert (= bs!1371993 (and d!1830083 d!1829607)))

(assert (=> bs!1371993 (= lambda!317463 lambda!317380)))

(declare-fun b!5811247 () Bool)

(declare-fun e!3567083 () Regex!15827)

(assert (=> b!5811247 (= e!3567083 EmptyLang!15827)))

(declare-fun b!5811248 () Bool)

(declare-fun e!3567081 () Bool)

(declare-fun lt!2300035 () Regex!15827)

(assert (=> b!5811248 (= e!3567081 (isUnion!738 lt!2300035))))

(declare-fun b!5811249 () Bool)

(declare-fun e!3567080 () Bool)

(assert (=> b!5811249 (= e!3567080 e!3567081)))

(declare-fun c!1029798 () Bool)

(assert (=> b!5811249 (= c!1029798 (isEmpty!35575 (tail!11358 (t!377133 (unfocusZipperList!1255 zl!343)))))))

(declare-fun b!5811250 () Bool)

(declare-fun e!3567084 () Bool)

(assert (=> b!5811250 (= e!3567084 (isEmpty!35575 (t!377133 (t!377133 (unfocusZipperList!1255 zl!343)))))))

(declare-fun b!5811251 () Bool)

(declare-fun e!3567079 () Bool)

(assert (=> b!5811251 (= e!3567079 e!3567080)))

(declare-fun c!1029800 () Bool)

(assert (=> b!5811251 (= c!1029800 (isEmpty!35575 (t!377133 (unfocusZipperList!1255 zl!343))))))

(assert (=> d!1830083 e!3567079))

(declare-fun res!2450594 () Bool)

(assert (=> d!1830083 (=> (not res!2450594) (not e!3567079))))

(assert (=> d!1830083 (= res!2450594 (validRegex!7563 lt!2300035))))

(declare-fun e!3567082 () Regex!15827)

(assert (=> d!1830083 (= lt!2300035 e!3567082)))

(declare-fun c!1029799 () Bool)

(assert (=> d!1830083 (= c!1029799 e!3567084)))

(declare-fun res!2450595 () Bool)

(assert (=> d!1830083 (=> (not res!2450595) (not e!3567084))))

(assert (=> d!1830083 (= res!2450595 ((_ is Cons!63656) (t!377133 (unfocusZipperList!1255 zl!343))))))

(assert (=> d!1830083 (forall!14933 (t!377133 (unfocusZipperList!1255 zl!343)) lambda!317463)))

(assert (=> d!1830083 (= (generalisedUnion!1690 (t!377133 (unfocusZipperList!1255 zl!343))) lt!2300035)))

(declare-fun b!5811252 () Bool)

(assert (=> b!5811252 (= e!3567083 (Union!15827 (h!70104 (t!377133 (unfocusZipperList!1255 zl!343))) (generalisedUnion!1690 (t!377133 (t!377133 (unfocusZipperList!1255 zl!343))))))))

(declare-fun b!5811253 () Bool)

(assert (=> b!5811253 (= e!3567082 (h!70104 (t!377133 (unfocusZipperList!1255 zl!343))))))

(declare-fun b!5811254 () Bool)

(assert (=> b!5811254 (= e!3567080 (isEmptyLang!1308 lt!2300035))))

(declare-fun b!5811255 () Bool)

(assert (=> b!5811255 (= e!3567082 e!3567083)))

(declare-fun c!1029801 () Bool)

(assert (=> b!5811255 (= c!1029801 ((_ is Cons!63656) (t!377133 (unfocusZipperList!1255 zl!343))))))

(declare-fun b!5811256 () Bool)

(assert (=> b!5811256 (= e!3567081 (= lt!2300035 (head!12263 (t!377133 (unfocusZipperList!1255 zl!343)))))))

(assert (= (and d!1830083 res!2450595) b!5811250))

(assert (= (and d!1830083 c!1029799) b!5811253))

(assert (= (and d!1830083 (not c!1029799)) b!5811255))

(assert (= (and b!5811255 c!1029801) b!5811252))

(assert (= (and b!5811255 (not c!1029801)) b!5811247))

(assert (= (and d!1830083 res!2450594) b!5811251))

(assert (= (and b!5811251 c!1029800) b!5811254))

(assert (= (and b!5811251 (not c!1029800)) b!5811249))

(assert (= (and b!5811249 c!1029798) b!5811256))

(assert (= (and b!5811249 (not c!1029798)) b!5811248))

(declare-fun m!6749726 () Bool)

(assert (=> b!5811249 m!6749726))

(assert (=> b!5811249 m!6749726))

(declare-fun m!6749728 () Bool)

(assert (=> b!5811249 m!6749728))

(declare-fun m!6749730 () Bool)

(assert (=> d!1830083 m!6749730))

(declare-fun m!6749732 () Bool)

(assert (=> d!1830083 m!6749732))

(declare-fun m!6749734 () Bool)

(assert (=> b!5811250 m!6749734))

(declare-fun m!6749736 () Bool)

(assert (=> b!5811252 m!6749736))

(declare-fun m!6749738 () Bool)

(assert (=> b!5811254 m!6749738))

(declare-fun m!6749740 () Bool)

(assert (=> b!5811248 m!6749740))

(declare-fun m!6749742 () Bool)

(assert (=> b!5811256 m!6749742))

(assert (=> b!5811251 m!6748714))

(assert (=> b!5810279 d!1830083))

(declare-fun d!1830087 () Bool)

(declare-fun res!2450603 () Bool)

(declare-fun e!3567096 () Bool)

(assert (=> d!1830087 (=> res!2450603 e!3567096)))

(assert (=> d!1830087 (= res!2450603 ((_ is Nil!63658) lt!2299904))))

(assert (=> d!1830087 (= (noDuplicate!1720 lt!2299904) e!3567096)))

(declare-fun b!5811272 () Bool)

(declare-fun e!3567097 () Bool)

(assert (=> b!5811272 (= e!3567096 e!3567097)))

(declare-fun res!2450604 () Bool)

(assert (=> b!5811272 (=> (not res!2450604) (not e!3567097))))

(declare-fun contains!19884 (List!63782 Context!10422) Bool)

(assert (=> b!5811272 (= res!2450604 (not (contains!19884 (t!377135 lt!2299904) (h!70106 lt!2299904))))))

(declare-fun b!5811273 () Bool)

(assert (=> b!5811273 (= e!3567097 (noDuplicate!1720 (t!377135 lt!2299904)))))

(assert (= (and d!1830087 (not res!2450603)) b!5811272))

(assert (= (and b!5811272 res!2450604) b!5811273))

(declare-fun m!6749744 () Bool)

(assert (=> b!5811272 m!6749744))

(declare-fun m!6749746 () Bool)

(assert (=> b!5811273 m!6749746))

(assert (=> d!1829507 d!1830087))

(declare-fun d!1830089 () Bool)

(declare-fun e!3567104 () Bool)

(assert (=> d!1830089 e!3567104))

(declare-fun res!2450609 () Bool)

(assert (=> d!1830089 (=> (not res!2450609) (not e!3567104))))

(declare-fun res!2450610 () List!63782)

(assert (=> d!1830089 (= res!2450609 (noDuplicate!1720 res!2450610))))

(declare-fun e!3567105 () Bool)

(assert (=> d!1830089 e!3567105))

(assert (=> d!1830089 (= (choose!44115 z!1189) res!2450610)))

(declare-fun b!5811281 () Bool)

(declare-fun e!3567106 () Bool)

(declare-fun tp!1603537 () Bool)

(assert (=> b!5811281 (= e!3567106 tp!1603537)))

(declare-fun tp!1603538 () Bool)

(declare-fun b!5811280 () Bool)

(assert (=> b!5811280 (= e!3567105 (and (inv!82814 (h!70106 res!2450610)) e!3567106 tp!1603538))))

(declare-fun b!5811282 () Bool)

(assert (=> b!5811282 (= e!3567104 (= (content!11662 res!2450610) z!1189))))

(assert (= b!5811280 b!5811281))

(assert (= (and d!1830089 ((_ is Cons!63658) res!2450610)) b!5811280))

(assert (= (and d!1830089 res!2450609) b!5811282))

(declare-fun m!6749754 () Bool)

(assert (=> d!1830089 m!6749754))

(declare-fun m!6749756 () Bool)

(assert (=> b!5811280 m!6749756))

(declare-fun m!6749758 () Bool)

(assert (=> b!5811282 m!6749758))

(assert (=> d!1829507 d!1830089))

(declare-fun b!5811297 () Bool)

(declare-fun e!3567114 () Bool)

(assert (=> b!5811297 (= e!3567114 tp_is_empty!40907)))

(assert (=> b!5810331 (= tp!1603426 e!3567114)))

(declare-fun b!5811298 () Bool)

(declare-fun tp!1603539 () Bool)

(declare-fun tp!1603542 () Bool)

(assert (=> b!5811298 (= e!3567114 (and tp!1603539 tp!1603542))))

(declare-fun b!5811299 () Bool)

(declare-fun tp!1603540 () Bool)

(assert (=> b!5811299 (= e!3567114 tp!1603540)))

(declare-fun b!5811300 () Bool)

(declare-fun tp!1603543 () Bool)

(declare-fun tp!1603541 () Bool)

(assert (=> b!5811300 (= e!3567114 (and tp!1603543 tp!1603541))))

(assert (= (and b!5810331 ((_ is ElementMatch!15827) (regOne!32167 (reg!16156 r!7292)))) b!5811297))

(assert (= (and b!5810331 ((_ is Concat!24672) (regOne!32167 (reg!16156 r!7292)))) b!5811298))

(assert (= (and b!5810331 ((_ is Star!15827) (regOne!32167 (reg!16156 r!7292)))) b!5811299))

(assert (= (and b!5810331 ((_ is Union!15827) (regOne!32167 (reg!16156 r!7292)))) b!5811300))

(declare-fun b!5811301 () Bool)

(declare-fun e!3567115 () Bool)

(assert (=> b!5811301 (= e!3567115 tp_is_empty!40907)))

(assert (=> b!5810331 (= tp!1603424 e!3567115)))

(declare-fun b!5811302 () Bool)

(declare-fun tp!1603544 () Bool)

(declare-fun tp!1603547 () Bool)

(assert (=> b!5811302 (= e!3567115 (and tp!1603544 tp!1603547))))

(declare-fun b!5811303 () Bool)

(declare-fun tp!1603545 () Bool)

(assert (=> b!5811303 (= e!3567115 tp!1603545)))

(declare-fun b!5811304 () Bool)

(declare-fun tp!1603548 () Bool)

(declare-fun tp!1603546 () Bool)

(assert (=> b!5811304 (= e!3567115 (and tp!1603548 tp!1603546))))

(assert (= (and b!5810331 ((_ is ElementMatch!15827) (regTwo!32167 (reg!16156 r!7292)))) b!5811301))

(assert (= (and b!5810331 ((_ is Concat!24672) (regTwo!32167 (reg!16156 r!7292)))) b!5811302))

(assert (= (and b!5810331 ((_ is Star!15827) (regTwo!32167 (reg!16156 r!7292)))) b!5811303))

(assert (= (and b!5810331 ((_ is Union!15827) (regTwo!32167 (reg!16156 r!7292)))) b!5811304))

(declare-fun b!5811305 () Bool)

(declare-fun e!3567116 () Bool)

(assert (=> b!5811305 (= e!3567116 tp_is_empty!40907)))

(assert (=> b!5810304 (= tp!1603397 e!3567116)))

(declare-fun b!5811306 () Bool)

(declare-fun tp!1603549 () Bool)

(declare-fun tp!1603552 () Bool)

(assert (=> b!5811306 (= e!3567116 (and tp!1603549 tp!1603552))))

(declare-fun b!5811307 () Bool)

(declare-fun tp!1603550 () Bool)

(assert (=> b!5811307 (= e!3567116 tp!1603550)))

(declare-fun b!5811308 () Bool)

(declare-fun tp!1603553 () Bool)

(declare-fun tp!1603551 () Bool)

(assert (=> b!5811308 (= e!3567116 (and tp!1603553 tp!1603551))))

(assert (= (and b!5810304 ((_ is ElementMatch!15827) (h!70104 (exprs!5711 (h!70106 zl!343))))) b!5811305))

(assert (= (and b!5810304 ((_ is Concat!24672) (h!70104 (exprs!5711 (h!70106 zl!343))))) b!5811306))

(assert (= (and b!5810304 ((_ is Star!15827) (h!70104 (exprs!5711 (h!70106 zl!343))))) b!5811307))

(assert (= (and b!5810304 ((_ is Union!15827) (h!70104 (exprs!5711 (h!70106 zl!343))))) b!5811308))

(declare-fun b!5811309 () Bool)

(declare-fun e!3567117 () Bool)

(declare-fun tp!1603554 () Bool)

(declare-fun tp!1603555 () Bool)

(assert (=> b!5811309 (= e!3567117 (and tp!1603554 tp!1603555))))

(assert (=> b!5810304 (= tp!1603398 e!3567117)))

(assert (= (and b!5810304 ((_ is Cons!63656) (t!377133 (exprs!5711 (h!70106 zl!343))))) b!5811309))

(declare-fun b!5811310 () Bool)

(declare-fun e!3567118 () Bool)

(assert (=> b!5811310 (= e!3567118 tp_is_empty!40907)))

(assert (=> b!5810330 (= tp!1603423 e!3567118)))

(declare-fun b!5811311 () Bool)

(declare-fun tp!1603556 () Bool)

(declare-fun tp!1603559 () Bool)

(assert (=> b!5811311 (= e!3567118 (and tp!1603556 tp!1603559))))

(declare-fun b!5811312 () Bool)

(declare-fun tp!1603557 () Bool)

(assert (=> b!5811312 (= e!3567118 tp!1603557)))

(declare-fun b!5811313 () Bool)

(declare-fun tp!1603560 () Bool)

(declare-fun tp!1603558 () Bool)

(assert (=> b!5811313 (= e!3567118 (and tp!1603560 tp!1603558))))

(assert (= (and b!5810330 ((_ is ElementMatch!15827) (reg!16156 (reg!16156 r!7292)))) b!5811310))

(assert (= (and b!5810330 ((_ is Concat!24672) (reg!16156 (reg!16156 r!7292)))) b!5811311))

(assert (= (and b!5810330 ((_ is Star!15827) (reg!16156 (reg!16156 r!7292)))) b!5811312))

(assert (= (and b!5810330 ((_ is Union!15827) (reg!16156 (reg!16156 r!7292)))) b!5811313))

(declare-fun b!5811314 () Bool)

(declare-fun e!3567119 () Bool)

(assert (=> b!5811314 (= e!3567119 tp_is_empty!40907)))

(assert (=> b!5810329 (= tp!1603422 e!3567119)))

(declare-fun b!5811315 () Bool)

(declare-fun tp!1603561 () Bool)

(declare-fun tp!1603564 () Bool)

(assert (=> b!5811315 (= e!3567119 (and tp!1603561 tp!1603564))))

(declare-fun b!5811316 () Bool)

(declare-fun tp!1603562 () Bool)

(assert (=> b!5811316 (= e!3567119 tp!1603562)))

(declare-fun b!5811317 () Bool)

(declare-fun tp!1603565 () Bool)

(declare-fun tp!1603563 () Bool)

(assert (=> b!5811317 (= e!3567119 (and tp!1603565 tp!1603563))))

(assert (= (and b!5810329 ((_ is ElementMatch!15827) (regOne!32166 (reg!16156 r!7292)))) b!5811314))

(assert (= (and b!5810329 ((_ is Concat!24672) (regOne!32166 (reg!16156 r!7292)))) b!5811315))

(assert (= (and b!5810329 ((_ is Star!15827) (regOne!32166 (reg!16156 r!7292)))) b!5811316))

(assert (= (and b!5810329 ((_ is Union!15827) (regOne!32166 (reg!16156 r!7292)))) b!5811317))

(declare-fun b!5811318 () Bool)

(declare-fun e!3567120 () Bool)

(assert (=> b!5811318 (= e!3567120 tp_is_empty!40907)))

(assert (=> b!5810329 (= tp!1603425 e!3567120)))

(declare-fun b!5811319 () Bool)

(declare-fun tp!1603566 () Bool)

(declare-fun tp!1603569 () Bool)

(assert (=> b!5811319 (= e!3567120 (and tp!1603566 tp!1603569))))

(declare-fun b!5811320 () Bool)

(declare-fun tp!1603567 () Bool)

(assert (=> b!5811320 (= e!3567120 tp!1603567)))

(declare-fun b!5811321 () Bool)

(declare-fun tp!1603570 () Bool)

(declare-fun tp!1603568 () Bool)

(assert (=> b!5811321 (= e!3567120 (and tp!1603570 tp!1603568))))

(assert (= (and b!5810329 ((_ is ElementMatch!15827) (regTwo!32166 (reg!16156 r!7292)))) b!5811318))

(assert (= (and b!5810329 ((_ is Concat!24672) (regTwo!32166 (reg!16156 r!7292)))) b!5811319))

(assert (= (and b!5810329 ((_ is Star!15827) (regTwo!32166 (reg!16156 r!7292)))) b!5811320))

(assert (= (and b!5810329 ((_ is Union!15827) (regTwo!32166 (reg!16156 r!7292)))) b!5811321))

(declare-fun b!5811322 () Bool)

(declare-fun e!3567121 () Bool)

(assert (=> b!5811322 (= e!3567121 tp_is_empty!40907)))

(assert (=> b!5810322 (= tp!1603418 e!3567121)))

(declare-fun b!5811323 () Bool)

(declare-fun tp!1603571 () Bool)

(declare-fun tp!1603574 () Bool)

(assert (=> b!5811323 (= e!3567121 (and tp!1603571 tp!1603574))))

(declare-fun b!5811324 () Bool)

(declare-fun tp!1603572 () Bool)

(assert (=> b!5811324 (= e!3567121 tp!1603572)))

(declare-fun b!5811325 () Bool)

(declare-fun tp!1603575 () Bool)

(declare-fun tp!1603573 () Bool)

(assert (=> b!5811325 (= e!3567121 (and tp!1603575 tp!1603573))))

(assert (= (and b!5810322 ((_ is ElementMatch!15827) (regOne!32167 (regTwo!32166 r!7292)))) b!5811322))

(assert (= (and b!5810322 ((_ is Concat!24672) (regOne!32167 (regTwo!32166 r!7292)))) b!5811323))

(assert (= (and b!5810322 ((_ is Star!15827) (regOne!32167 (regTwo!32166 r!7292)))) b!5811324))

(assert (= (and b!5810322 ((_ is Union!15827) (regOne!32167 (regTwo!32166 r!7292)))) b!5811325))

(declare-fun b!5811326 () Bool)

(declare-fun e!3567122 () Bool)

(assert (=> b!5811326 (= e!3567122 tp_is_empty!40907)))

(assert (=> b!5810322 (= tp!1603416 e!3567122)))

(declare-fun b!5811327 () Bool)

(declare-fun tp!1603576 () Bool)

(declare-fun tp!1603579 () Bool)

(assert (=> b!5811327 (= e!3567122 (and tp!1603576 tp!1603579))))

(declare-fun b!5811328 () Bool)

(declare-fun tp!1603577 () Bool)

(assert (=> b!5811328 (= e!3567122 tp!1603577)))

(declare-fun b!5811329 () Bool)

(declare-fun tp!1603580 () Bool)

(declare-fun tp!1603578 () Bool)

(assert (=> b!5811329 (= e!3567122 (and tp!1603580 tp!1603578))))

(assert (= (and b!5810322 ((_ is ElementMatch!15827) (regTwo!32167 (regTwo!32166 r!7292)))) b!5811326))

(assert (= (and b!5810322 ((_ is Concat!24672) (regTwo!32167 (regTwo!32166 r!7292)))) b!5811327))

(assert (= (and b!5810322 ((_ is Star!15827) (regTwo!32167 (regTwo!32166 r!7292)))) b!5811328))

(assert (= (and b!5810322 ((_ is Union!15827) (regTwo!32167 (regTwo!32166 r!7292)))) b!5811329))

(declare-fun b!5811330 () Bool)

(declare-fun e!3567123 () Bool)

(assert (=> b!5811330 (= e!3567123 tp_is_empty!40907)))

(assert (=> b!5810303 (= tp!1603395 e!3567123)))

(declare-fun b!5811331 () Bool)

(declare-fun tp!1603581 () Bool)

(declare-fun tp!1603584 () Bool)

(assert (=> b!5811331 (= e!3567123 (and tp!1603581 tp!1603584))))

(declare-fun b!5811332 () Bool)

(declare-fun tp!1603582 () Bool)

(assert (=> b!5811332 (= e!3567123 tp!1603582)))

(declare-fun b!5811333 () Bool)

(declare-fun tp!1603585 () Bool)

(declare-fun tp!1603583 () Bool)

(assert (=> b!5811333 (= e!3567123 (and tp!1603585 tp!1603583))))

(assert (= (and b!5810303 ((_ is ElementMatch!15827) (h!70104 (exprs!5711 setElem!39116)))) b!5811330))

(assert (= (and b!5810303 ((_ is Concat!24672) (h!70104 (exprs!5711 setElem!39116)))) b!5811331))

(assert (= (and b!5810303 ((_ is Star!15827) (h!70104 (exprs!5711 setElem!39116)))) b!5811332))

(assert (= (and b!5810303 ((_ is Union!15827) (h!70104 (exprs!5711 setElem!39116)))) b!5811333))

(declare-fun b!5811334 () Bool)

(declare-fun e!3567124 () Bool)

(declare-fun tp!1603586 () Bool)

(declare-fun tp!1603587 () Bool)

(assert (=> b!5811334 (= e!3567124 (and tp!1603586 tp!1603587))))

(assert (=> b!5810303 (= tp!1603396 e!3567124)))

(assert (= (and b!5810303 ((_ is Cons!63656) (t!377133 (exprs!5711 setElem!39116)))) b!5811334))

(declare-fun b!5811335 () Bool)

(declare-fun e!3567125 () Bool)

(assert (=> b!5811335 (= e!3567125 tp_is_empty!40907)))

(assert (=> b!5810316 (= tp!1603409 e!3567125)))

(declare-fun b!5811336 () Bool)

(declare-fun tp!1603588 () Bool)

(declare-fun tp!1603591 () Bool)

(assert (=> b!5811336 (= e!3567125 (and tp!1603588 tp!1603591))))

(declare-fun b!5811337 () Bool)

(declare-fun tp!1603589 () Bool)

(assert (=> b!5811337 (= e!3567125 tp!1603589)))

(declare-fun b!5811338 () Bool)

(declare-fun tp!1603592 () Bool)

(declare-fun tp!1603590 () Bool)

(assert (=> b!5811338 (= e!3567125 (and tp!1603592 tp!1603590))))

(assert (= (and b!5810316 ((_ is ElementMatch!15827) (regOne!32166 (regOne!32166 r!7292)))) b!5811335))

(assert (= (and b!5810316 ((_ is Concat!24672) (regOne!32166 (regOne!32166 r!7292)))) b!5811336))

(assert (= (and b!5810316 ((_ is Star!15827) (regOne!32166 (regOne!32166 r!7292)))) b!5811337))

(assert (= (and b!5810316 ((_ is Union!15827) (regOne!32166 (regOne!32166 r!7292)))) b!5811338))

(declare-fun b!5811339 () Bool)

(declare-fun e!3567126 () Bool)

(assert (=> b!5811339 (= e!3567126 tp_is_empty!40907)))

(assert (=> b!5810316 (= tp!1603412 e!3567126)))

(declare-fun b!5811340 () Bool)

(declare-fun tp!1603593 () Bool)

(declare-fun tp!1603596 () Bool)

(assert (=> b!5811340 (= e!3567126 (and tp!1603593 tp!1603596))))

(declare-fun b!5811341 () Bool)

(declare-fun tp!1603594 () Bool)

(assert (=> b!5811341 (= e!3567126 tp!1603594)))

(declare-fun b!5811342 () Bool)

(declare-fun tp!1603597 () Bool)

(declare-fun tp!1603595 () Bool)

(assert (=> b!5811342 (= e!3567126 (and tp!1603597 tp!1603595))))

(assert (= (and b!5810316 ((_ is ElementMatch!15827) (regTwo!32166 (regOne!32166 r!7292)))) b!5811339))

(assert (= (and b!5810316 ((_ is Concat!24672) (regTwo!32166 (regOne!32166 r!7292)))) b!5811340))

(assert (= (and b!5810316 ((_ is Star!15827) (regTwo!32166 (regOne!32166 r!7292)))) b!5811341))

(assert (= (and b!5810316 ((_ is Union!15827) (regTwo!32166 (regOne!32166 r!7292)))) b!5811342))

(declare-fun b!5811343 () Bool)

(declare-fun e!3567127 () Bool)

(declare-fun tp!1603598 () Bool)

(declare-fun tp!1603599 () Bool)

(assert (=> b!5811343 (= e!3567127 (and tp!1603598 tp!1603599))))

(assert (=> b!5810339 (= tp!1603431 e!3567127)))

(assert (= (and b!5810339 ((_ is Cons!63656) (exprs!5711 (h!70106 (t!377135 zl!343))))) b!5811343))

(declare-fun b!5811344 () Bool)

(declare-fun e!3567128 () Bool)

(assert (=> b!5811344 (= e!3567128 tp_is_empty!40907)))

(assert (=> b!5810347 (= tp!1603442 e!3567128)))

(declare-fun b!5811345 () Bool)

(declare-fun tp!1603600 () Bool)

(declare-fun tp!1603603 () Bool)

(assert (=> b!5811345 (= e!3567128 (and tp!1603600 tp!1603603))))

(declare-fun b!5811346 () Bool)

(declare-fun tp!1603601 () Bool)

(assert (=> b!5811346 (= e!3567128 tp!1603601)))

(declare-fun b!5811347 () Bool)

(declare-fun tp!1603604 () Bool)

(declare-fun tp!1603602 () Bool)

(assert (=> b!5811347 (= e!3567128 (and tp!1603604 tp!1603602))))

(assert (= (and b!5810347 ((_ is ElementMatch!15827) (regOne!32167 (regTwo!32167 r!7292)))) b!5811344))

(assert (= (and b!5810347 ((_ is Concat!24672) (regOne!32167 (regTwo!32167 r!7292)))) b!5811345))

(assert (= (and b!5810347 ((_ is Star!15827) (regOne!32167 (regTwo!32167 r!7292)))) b!5811346))

(assert (= (and b!5810347 ((_ is Union!15827) (regOne!32167 (regTwo!32167 r!7292)))) b!5811347))

(declare-fun b!5811348 () Bool)

(declare-fun e!3567129 () Bool)

(assert (=> b!5811348 (= e!3567129 tp_is_empty!40907)))

(assert (=> b!5810347 (= tp!1603440 e!3567129)))

(declare-fun b!5811349 () Bool)

(declare-fun tp!1603605 () Bool)

(declare-fun tp!1603608 () Bool)

(assert (=> b!5811349 (= e!3567129 (and tp!1603605 tp!1603608))))

(declare-fun b!5811350 () Bool)

(declare-fun tp!1603606 () Bool)

(assert (=> b!5811350 (= e!3567129 tp!1603606)))

(declare-fun b!5811351 () Bool)

(declare-fun tp!1603609 () Bool)

(declare-fun tp!1603607 () Bool)

(assert (=> b!5811351 (= e!3567129 (and tp!1603609 tp!1603607))))

(assert (= (and b!5810347 ((_ is ElementMatch!15827) (regTwo!32167 (regTwo!32167 r!7292)))) b!5811348))

(assert (= (and b!5810347 ((_ is Concat!24672) (regTwo!32167 (regTwo!32167 r!7292)))) b!5811349))

(assert (= (and b!5810347 ((_ is Star!15827) (regTwo!32167 (regTwo!32167 r!7292)))) b!5811350))

(assert (= (and b!5810347 ((_ is Union!15827) (regTwo!32167 (regTwo!32167 r!7292)))) b!5811351))

(declare-fun b!5811352 () Bool)

(declare-fun e!3567130 () Bool)

(assert (=> b!5811352 (= e!3567130 tp_is_empty!40907)))

(assert (=> b!5810345 (= tp!1603438 e!3567130)))

(declare-fun b!5811353 () Bool)

(declare-fun tp!1603610 () Bool)

(declare-fun tp!1603613 () Bool)

(assert (=> b!5811353 (= e!3567130 (and tp!1603610 tp!1603613))))

(declare-fun b!5811354 () Bool)

(declare-fun tp!1603611 () Bool)

(assert (=> b!5811354 (= e!3567130 tp!1603611)))

(declare-fun b!5811355 () Bool)

(declare-fun tp!1603614 () Bool)

(declare-fun tp!1603612 () Bool)

(assert (=> b!5811355 (= e!3567130 (and tp!1603614 tp!1603612))))

(assert (= (and b!5810345 ((_ is ElementMatch!15827) (regOne!32166 (regTwo!32167 r!7292)))) b!5811352))

(assert (= (and b!5810345 ((_ is Concat!24672) (regOne!32166 (regTwo!32167 r!7292)))) b!5811353))

(assert (= (and b!5810345 ((_ is Star!15827) (regOne!32166 (regTwo!32167 r!7292)))) b!5811354))

(assert (= (and b!5810345 ((_ is Union!15827) (regOne!32166 (regTwo!32167 r!7292)))) b!5811355))

(declare-fun b!5811356 () Bool)

(declare-fun e!3567131 () Bool)

(assert (=> b!5811356 (= e!3567131 tp_is_empty!40907)))

(assert (=> b!5810345 (= tp!1603441 e!3567131)))

(declare-fun b!5811357 () Bool)

(declare-fun tp!1603615 () Bool)

(declare-fun tp!1603618 () Bool)

(assert (=> b!5811357 (= e!3567131 (and tp!1603615 tp!1603618))))

(declare-fun b!5811358 () Bool)

(declare-fun tp!1603616 () Bool)

(assert (=> b!5811358 (= e!3567131 tp!1603616)))

(declare-fun b!5811359 () Bool)

(declare-fun tp!1603619 () Bool)

(declare-fun tp!1603617 () Bool)

(assert (=> b!5811359 (= e!3567131 (and tp!1603619 tp!1603617))))

(assert (= (and b!5810345 ((_ is ElementMatch!15827) (regTwo!32166 (regTwo!32167 r!7292)))) b!5811356))

(assert (= (and b!5810345 ((_ is Concat!24672) (regTwo!32166 (regTwo!32167 r!7292)))) b!5811357))

(assert (= (and b!5810345 ((_ is Star!15827) (regTwo!32166 (regTwo!32167 r!7292)))) b!5811358))

(assert (= (and b!5810345 ((_ is Union!15827) (regTwo!32166 (regTwo!32167 r!7292)))) b!5811359))

(declare-fun b!5811361 () Bool)

(declare-fun e!3567133 () Bool)

(declare-fun tp!1603620 () Bool)

(assert (=> b!5811361 (= e!3567133 tp!1603620)))

(declare-fun e!3567132 () Bool)

(declare-fun b!5811360 () Bool)

(declare-fun tp!1603621 () Bool)

(assert (=> b!5811360 (= e!3567132 (and (inv!82814 (h!70106 (t!377135 (t!377135 zl!343)))) e!3567133 tp!1603621))))

(assert (=> b!5810338 (= tp!1603432 e!3567132)))

(assert (= b!5811360 b!5811361))

(assert (= (and b!5810338 ((_ is Cons!63658) (t!377135 (t!377135 zl!343)))) b!5811360))

(declare-fun m!6749770 () Bool)

(assert (=> b!5811360 m!6749770))

(declare-fun b!5811362 () Bool)

(declare-fun e!3567134 () Bool)

(assert (=> b!5811362 (= e!3567134 tp_is_empty!40907)))

(assert (=> b!5810346 (= tp!1603439 e!3567134)))

(declare-fun b!5811363 () Bool)

(declare-fun tp!1603622 () Bool)

(declare-fun tp!1603625 () Bool)

(assert (=> b!5811363 (= e!3567134 (and tp!1603622 tp!1603625))))

(declare-fun b!5811364 () Bool)

(declare-fun tp!1603623 () Bool)

(assert (=> b!5811364 (= e!3567134 tp!1603623)))

(declare-fun b!5811365 () Bool)

(declare-fun tp!1603626 () Bool)

(declare-fun tp!1603624 () Bool)

(assert (=> b!5811365 (= e!3567134 (and tp!1603626 tp!1603624))))

(assert (= (and b!5810346 ((_ is ElementMatch!15827) (reg!16156 (regTwo!32167 r!7292)))) b!5811362))

(assert (= (and b!5810346 ((_ is Concat!24672) (reg!16156 (regTwo!32167 r!7292)))) b!5811363))

(assert (= (and b!5810346 ((_ is Star!15827) (reg!16156 (regTwo!32167 r!7292)))) b!5811364))

(assert (= (and b!5810346 ((_ is Union!15827) (reg!16156 (regTwo!32167 r!7292)))) b!5811365))

(declare-fun b!5811366 () Bool)

(declare-fun e!3567135 () Bool)

(declare-fun tp!1603627 () Bool)

(assert (=> b!5811366 (= e!3567135 (and tp_is_empty!40907 tp!1603627))))

(assert (=> b!5810327 (= tp!1603421 e!3567135)))

(assert (= (and b!5810327 ((_ is Cons!63657) (t!377134 (t!377134 s!2326)))) b!5811366))

(declare-fun b!5811367 () Bool)

(declare-fun e!3567136 () Bool)

(assert (=> b!5811367 (= e!3567136 tp_is_empty!40907)))

(assert (=> b!5810317 (= tp!1603410 e!3567136)))

(declare-fun b!5811368 () Bool)

(declare-fun tp!1603628 () Bool)

(declare-fun tp!1603631 () Bool)

(assert (=> b!5811368 (= e!3567136 (and tp!1603628 tp!1603631))))

(declare-fun b!5811369 () Bool)

(declare-fun tp!1603629 () Bool)

(assert (=> b!5811369 (= e!3567136 tp!1603629)))

(declare-fun b!5811370 () Bool)

(declare-fun tp!1603632 () Bool)

(declare-fun tp!1603630 () Bool)

(assert (=> b!5811370 (= e!3567136 (and tp!1603632 tp!1603630))))

(assert (= (and b!5810317 ((_ is ElementMatch!15827) (reg!16156 (regOne!32166 r!7292)))) b!5811367))

(assert (= (and b!5810317 ((_ is Concat!24672) (reg!16156 (regOne!32166 r!7292)))) b!5811368))

(assert (= (and b!5810317 ((_ is Star!15827) (reg!16156 (regOne!32166 r!7292)))) b!5811369))

(assert (= (and b!5810317 ((_ is Union!15827) (reg!16156 (regOne!32166 r!7292)))) b!5811370))

(declare-fun b!5811371 () Bool)

(declare-fun e!3567137 () Bool)

(assert (=> b!5811371 (= e!3567137 tp_is_empty!40907)))

(assert (=> b!5810318 (= tp!1603413 e!3567137)))

(declare-fun b!5811372 () Bool)

(declare-fun tp!1603633 () Bool)

(declare-fun tp!1603636 () Bool)

(assert (=> b!5811372 (= e!3567137 (and tp!1603633 tp!1603636))))

(declare-fun b!5811373 () Bool)

(declare-fun tp!1603634 () Bool)

(assert (=> b!5811373 (= e!3567137 tp!1603634)))

(declare-fun b!5811374 () Bool)

(declare-fun tp!1603637 () Bool)

(declare-fun tp!1603635 () Bool)

(assert (=> b!5811374 (= e!3567137 (and tp!1603637 tp!1603635))))

(assert (= (and b!5810318 ((_ is ElementMatch!15827) (regOne!32167 (regOne!32166 r!7292)))) b!5811371))

(assert (= (and b!5810318 ((_ is Concat!24672) (regOne!32167 (regOne!32166 r!7292)))) b!5811372))

(assert (= (and b!5810318 ((_ is Star!15827) (regOne!32167 (regOne!32166 r!7292)))) b!5811373))

(assert (= (and b!5810318 ((_ is Union!15827) (regOne!32167 (regOne!32166 r!7292)))) b!5811374))

(declare-fun b!5811375 () Bool)

(declare-fun e!3567138 () Bool)

(assert (=> b!5811375 (= e!3567138 tp_is_empty!40907)))

(assert (=> b!5810318 (= tp!1603411 e!3567138)))

(declare-fun b!5811376 () Bool)

(declare-fun tp!1603638 () Bool)

(declare-fun tp!1603641 () Bool)

(assert (=> b!5811376 (= e!3567138 (and tp!1603638 tp!1603641))))

(declare-fun b!5811377 () Bool)

(declare-fun tp!1603639 () Bool)

(assert (=> b!5811377 (= e!3567138 tp!1603639)))

(declare-fun b!5811378 () Bool)

(declare-fun tp!1603642 () Bool)

(declare-fun tp!1603640 () Bool)

(assert (=> b!5811378 (= e!3567138 (and tp!1603642 tp!1603640))))

(assert (= (and b!5810318 ((_ is ElementMatch!15827) (regTwo!32167 (regOne!32166 r!7292)))) b!5811375))

(assert (= (and b!5810318 ((_ is Concat!24672) (regTwo!32167 (regOne!32166 r!7292)))) b!5811376))

(assert (= (and b!5810318 ((_ is Star!15827) (regTwo!32167 (regOne!32166 r!7292)))) b!5811377))

(assert (= (and b!5810318 ((_ is Union!15827) (regTwo!32167 (regOne!32166 r!7292)))) b!5811378))

(declare-fun b!5811379 () Bool)

(declare-fun e!3567139 () Bool)

(declare-fun tp!1603643 () Bool)

(declare-fun tp!1603644 () Bool)

(assert (=> b!5811379 (= e!3567139 (and tp!1603643 tp!1603644))))

(assert (=> b!5810298 (= tp!1603390 e!3567139)))

(assert (= (and b!5810298 ((_ is Cons!63656) (exprs!5711 setElem!39119))) b!5811379))

(declare-fun b!5811380 () Bool)

(declare-fun e!3567140 () Bool)

(assert (=> b!5811380 (= e!3567140 tp_is_empty!40907)))

(assert (=> b!5810321 (= tp!1603415 e!3567140)))

(declare-fun b!5811381 () Bool)

(declare-fun tp!1603645 () Bool)

(declare-fun tp!1603648 () Bool)

(assert (=> b!5811381 (= e!3567140 (and tp!1603645 tp!1603648))))

(declare-fun b!5811382 () Bool)

(declare-fun tp!1603646 () Bool)

(assert (=> b!5811382 (= e!3567140 tp!1603646)))

(declare-fun b!5811383 () Bool)

(declare-fun tp!1603649 () Bool)

(declare-fun tp!1603647 () Bool)

(assert (=> b!5811383 (= e!3567140 (and tp!1603649 tp!1603647))))

(assert (= (and b!5810321 ((_ is ElementMatch!15827) (reg!16156 (regTwo!32166 r!7292)))) b!5811380))

(assert (= (and b!5810321 ((_ is Concat!24672) (reg!16156 (regTwo!32166 r!7292)))) b!5811381))

(assert (= (and b!5810321 ((_ is Star!15827) (reg!16156 (regTwo!32166 r!7292)))) b!5811382))

(assert (= (and b!5810321 ((_ is Union!15827) (reg!16156 (regTwo!32166 r!7292)))) b!5811383))

(declare-fun b!5811384 () Bool)

(declare-fun e!3567141 () Bool)

(assert (=> b!5811384 (= e!3567141 tp_is_empty!40907)))

(assert (=> b!5810343 (= tp!1603437 e!3567141)))

(declare-fun b!5811385 () Bool)

(declare-fun tp!1603650 () Bool)

(declare-fun tp!1603653 () Bool)

(assert (=> b!5811385 (= e!3567141 (and tp!1603650 tp!1603653))))

(declare-fun b!5811386 () Bool)

(declare-fun tp!1603651 () Bool)

(assert (=> b!5811386 (= e!3567141 tp!1603651)))

(declare-fun b!5811387 () Bool)

(declare-fun tp!1603654 () Bool)

(declare-fun tp!1603652 () Bool)

(assert (=> b!5811387 (= e!3567141 (and tp!1603654 tp!1603652))))

(assert (= (and b!5810343 ((_ is ElementMatch!15827) (regOne!32167 (regOne!32167 r!7292)))) b!5811384))

(assert (= (and b!5810343 ((_ is Concat!24672) (regOne!32167 (regOne!32167 r!7292)))) b!5811385))

(assert (= (and b!5810343 ((_ is Star!15827) (regOne!32167 (regOne!32167 r!7292)))) b!5811386))

(assert (= (and b!5810343 ((_ is Union!15827) (regOne!32167 (regOne!32167 r!7292)))) b!5811387))

(declare-fun b!5811388 () Bool)

(declare-fun e!3567142 () Bool)

(assert (=> b!5811388 (= e!3567142 tp_is_empty!40907)))

(assert (=> b!5810343 (= tp!1603435 e!3567142)))

(declare-fun b!5811389 () Bool)

(declare-fun tp!1603655 () Bool)

(declare-fun tp!1603658 () Bool)

(assert (=> b!5811389 (= e!3567142 (and tp!1603655 tp!1603658))))

(declare-fun b!5811390 () Bool)

(declare-fun tp!1603656 () Bool)

(assert (=> b!5811390 (= e!3567142 tp!1603656)))

(declare-fun b!5811391 () Bool)

(declare-fun tp!1603659 () Bool)

(declare-fun tp!1603657 () Bool)

(assert (=> b!5811391 (= e!3567142 (and tp!1603659 tp!1603657))))

(assert (= (and b!5810343 ((_ is ElementMatch!15827) (regTwo!32167 (regOne!32167 r!7292)))) b!5811388))

(assert (= (and b!5810343 ((_ is Concat!24672) (regTwo!32167 (regOne!32167 r!7292)))) b!5811389))

(assert (= (and b!5810343 ((_ is Star!15827) (regTwo!32167 (regOne!32167 r!7292)))) b!5811390))

(assert (= (and b!5810343 ((_ is Union!15827) (regTwo!32167 (regOne!32167 r!7292)))) b!5811391))

(declare-fun condSetEmpty!39139 () Bool)

(assert (=> setNonEmpty!39119 (= condSetEmpty!39139 (= setRest!39119 ((as const (Array Context!10422 Bool)) false)))))

(declare-fun setRes!39139 () Bool)

(assert (=> setNonEmpty!39119 (= tp!1603389 setRes!39139)))

(declare-fun setIsEmpty!39139 () Bool)

(assert (=> setIsEmpty!39139 setRes!39139))

(declare-fun setNonEmpty!39139 () Bool)

(declare-fun e!3567143 () Bool)

(declare-fun setElem!39139 () Context!10422)

(declare-fun tp!1603660 () Bool)

(assert (=> setNonEmpty!39139 (= setRes!39139 (and tp!1603660 (inv!82814 setElem!39139) e!3567143))))

(declare-fun setRest!39139 () (InoxSet Context!10422))

(assert (=> setNonEmpty!39139 (= setRest!39119 ((_ map or) (store ((as const (Array Context!10422 Bool)) false) setElem!39139 true) setRest!39139))))

(declare-fun b!5811392 () Bool)

(declare-fun tp!1603661 () Bool)

(assert (=> b!5811392 (= e!3567143 tp!1603661)))

(assert (= (and setNonEmpty!39119 condSetEmpty!39139) setIsEmpty!39139))

(assert (= (and setNonEmpty!39119 (not condSetEmpty!39139)) setNonEmpty!39139))

(assert (= setNonEmpty!39139 b!5811392))

(declare-fun m!6749772 () Bool)

(assert (=> setNonEmpty!39139 m!6749772))

(declare-fun b!5811393 () Bool)

(declare-fun e!3567144 () Bool)

(assert (=> b!5811393 (= e!3567144 tp_is_empty!40907)))

(assert (=> b!5810320 (= tp!1603414 e!3567144)))

(declare-fun b!5811394 () Bool)

(declare-fun tp!1603662 () Bool)

(declare-fun tp!1603665 () Bool)

(assert (=> b!5811394 (= e!3567144 (and tp!1603662 tp!1603665))))

(declare-fun b!5811395 () Bool)

(declare-fun tp!1603663 () Bool)

(assert (=> b!5811395 (= e!3567144 tp!1603663)))

(declare-fun b!5811396 () Bool)

(declare-fun tp!1603666 () Bool)

(declare-fun tp!1603664 () Bool)

(assert (=> b!5811396 (= e!3567144 (and tp!1603666 tp!1603664))))

(assert (= (and b!5810320 ((_ is ElementMatch!15827) (regOne!32166 (regTwo!32166 r!7292)))) b!5811393))

(assert (= (and b!5810320 ((_ is Concat!24672) (regOne!32166 (regTwo!32166 r!7292)))) b!5811394))

(assert (= (and b!5810320 ((_ is Star!15827) (regOne!32166 (regTwo!32166 r!7292)))) b!5811395))

(assert (= (and b!5810320 ((_ is Union!15827) (regOne!32166 (regTwo!32166 r!7292)))) b!5811396))

(declare-fun b!5811397 () Bool)

(declare-fun e!3567145 () Bool)

(assert (=> b!5811397 (= e!3567145 tp_is_empty!40907)))

(assert (=> b!5810320 (= tp!1603417 e!3567145)))

(declare-fun b!5811398 () Bool)

(declare-fun tp!1603667 () Bool)

(declare-fun tp!1603670 () Bool)

(assert (=> b!5811398 (= e!3567145 (and tp!1603667 tp!1603670))))

(declare-fun b!5811399 () Bool)

(declare-fun tp!1603668 () Bool)

(assert (=> b!5811399 (= e!3567145 tp!1603668)))

(declare-fun b!5811400 () Bool)

(declare-fun tp!1603671 () Bool)

(declare-fun tp!1603669 () Bool)

(assert (=> b!5811400 (= e!3567145 (and tp!1603671 tp!1603669))))

(assert (= (and b!5810320 ((_ is ElementMatch!15827) (regTwo!32166 (regTwo!32166 r!7292)))) b!5811397))

(assert (= (and b!5810320 ((_ is Concat!24672) (regTwo!32166 (regTwo!32166 r!7292)))) b!5811398))

(assert (= (and b!5810320 ((_ is Star!15827) (regTwo!32166 (regTwo!32166 r!7292)))) b!5811399))

(assert (= (and b!5810320 ((_ is Union!15827) (regTwo!32166 (regTwo!32166 r!7292)))) b!5811400))

(declare-fun b!5811401 () Bool)

(declare-fun e!3567146 () Bool)

(assert (=> b!5811401 (= e!3567146 tp_is_empty!40907)))

(assert (=> b!5810342 (= tp!1603434 e!3567146)))

(declare-fun b!5811402 () Bool)

(declare-fun tp!1603672 () Bool)

(declare-fun tp!1603675 () Bool)

(assert (=> b!5811402 (= e!3567146 (and tp!1603672 tp!1603675))))

(declare-fun b!5811403 () Bool)

(declare-fun tp!1603673 () Bool)

(assert (=> b!5811403 (= e!3567146 tp!1603673)))

(declare-fun b!5811404 () Bool)

(declare-fun tp!1603676 () Bool)

(declare-fun tp!1603674 () Bool)

(assert (=> b!5811404 (= e!3567146 (and tp!1603676 tp!1603674))))

(assert (= (and b!5810342 ((_ is ElementMatch!15827) (reg!16156 (regOne!32167 r!7292)))) b!5811401))

(assert (= (and b!5810342 ((_ is Concat!24672) (reg!16156 (regOne!32167 r!7292)))) b!5811402))

(assert (= (and b!5810342 ((_ is Star!15827) (reg!16156 (regOne!32167 r!7292)))) b!5811403))

(assert (= (and b!5810342 ((_ is Union!15827) (reg!16156 (regOne!32167 r!7292)))) b!5811404))

(declare-fun b!5811405 () Bool)

(declare-fun e!3567147 () Bool)

(assert (=> b!5811405 (= e!3567147 tp_is_empty!40907)))

(assert (=> b!5810341 (= tp!1603433 e!3567147)))

(declare-fun b!5811406 () Bool)

(declare-fun tp!1603677 () Bool)

(declare-fun tp!1603680 () Bool)

(assert (=> b!5811406 (= e!3567147 (and tp!1603677 tp!1603680))))

(declare-fun b!5811407 () Bool)

(declare-fun tp!1603678 () Bool)

(assert (=> b!5811407 (= e!3567147 tp!1603678)))

(declare-fun b!5811408 () Bool)

(declare-fun tp!1603681 () Bool)

(declare-fun tp!1603679 () Bool)

(assert (=> b!5811408 (= e!3567147 (and tp!1603681 tp!1603679))))

(assert (= (and b!5810341 ((_ is ElementMatch!15827) (regOne!32166 (regOne!32167 r!7292)))) b!5811405))

(assert (= (and b!5810341 ((_ is Concat!24672) (regOne!32166 (regOne!32167 r!7292)))) b!5811406))

(assert (= (and b!5810341 ((_ is Star!15827) (regOne!32166 (regOne!32167 r!7292)))) b!5811407))

(assert (= (and b!5810341 ((_ is Union!15827) (regOne!32166 (regOne!32167 r!7292)))) b!5811408))

(declare-fun b!5811409 () Bool)

(declare-fun e!3567148 () Bool)

(assert (=> b!5811409 (= e!3567148 tp_is_empty!40907)))

(assert (=> b!5810341 (= tp!1603436 e!3567148)))

(declare-fun b!5811410 () Bool)

(declare-fun tp!1603682 () Bool)

(declare-fun tp!1603685 () Bool)

(assert (=> b!5811410 (= e!3567148 (and tp!1603682 tp!1603685))))

(declare-fun b!5811411 () Bool)

(declare-fun tp!1603683 () Bool)

(assert (=> b!5811411 (= e!3567148 tp!1603683)))

(declare-fun b!5811412 () Bool)

(declare-fun tp!1603686 () Bool)

(declare-fun tp!1603684 () Bool)

(assert (=> b!5811412 (= e!3567148 (and tp!1603686 tp!1603684))))

(assert (= (and b!5810341 ((_ is ElementMatch!15827) (regTwo!32166 (regOne!32167 r!7292)))) b!5811409))

(assert (= (and b!5810341 ((_ is Concat!24672) (regTwo!32166 (regOne!32167 r!7292)))) b!5811410))

(assert (= (and b!5810341 ((_ is Star!15827) (regTwo!32166 (regOne!32167 r!7292)))) b!5811411))

(assert (= (and b!5810341 ((_ is Union!15827) (regTwo!32166 (regOne!32167 r!7292)))) b!5811412))

(declare-fun b_lambda!219053 () Bool)

(assert (= b_lambda!219051 (or b!5809649 b_lambda!219053)))

(assert (=> d!1830057 d!1829649))

(declare-fun b_lambda!219055 () Bool)

(assert (= b_lambda!219037 (or b!5809649 b_lambda!219055)))

(assert (=> d!1829879 d!1829645))

(declare-fun b_lambda!219057 () Bool)

(assert (= b_lambda!219031 (or b!5809649 b_lambda!219057)))

(assert (=> d!1829797 d!1829641))

(declare-fun b_lambda!219059 () Bool)

(assert (= b_lambda!219021 (or d!1829635 b_lambda!219059)))

(declare-fun bs!1372019 () Bool)

(declare-fun d!1830095 () Bool)

(assert (= bs!1372019 (and d!1830095 d!1829635)))

(assert (=> bs!1372019 (= (dynLambda!24923 lambda!317399 (h!70104 lt!2299977)) (validRegex!7563 (h!70104 lt!2299977)))))

(declare-fun m!6749774 () Bool)

(assert (=> bs!1372019 m!6749774))

(assert (=> b!5810495 d!1830095))

(declare-fun b_lambda!219061 () Bool)

(assert (= b_lambda!219043 (or b!5809629 b_lambda!219061)))

(declare-fun bs!1372020 () Bool)

(declare-fun d!1830097 () Bool)

(assert (= bs!1372020 (and d!1830097 b!5809629)))

(assert (=> bs!1372020 (= (dynLambda!24923 lambda!317312 (h!70104 (++!14037 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835))) (validRegex!7563 (h!70104 (++!14037 (Cons!63656 (reg!16156 r!7292) Nil!63656) lt!2299835))))))

(declare-fun m!6749776 () Bool)

(assert (=> bs!1372020 m!6749776))

(assert (=> b!5811108 d!1830097))

(declare-fun b_lambda!219063 () Bool)

(assert (= b_lambda!219025 (or d!1829575 b_lambda!219063)))

(declare-fun bs!1372021 () Bool)

(declare-fun d!1830099 () Bool)

(assert (= bs!1372021 (and d!1830099 d!1829575)))

(assert (=> bs!1372021 (= (dynLambda!24923 lambda!317377 (h!70104 (exprs!5711 setElem!39116))) (validRegex!7563 (h!70104 (exprs!5711 setElem!39116))))))

(declare-fun m!6749778 () Bool)

(assert (=> bs!1372021 m!6749778))

(assert (=> b!5810617 d!1830099))

(declare-fun b_lambda!219065 () Bool)

(assert (= b_lambda!219049 (or d!1829631 b_lambda!219065)))

(declare-fun bs!1372022 () Bool)

(declare-fun d!1830101 () Bool)

(assert (= bs!1372022 (and d!1830101 d!1829631)))

(assert (=> bs!1372022 (= (dynLambda!24923 lambda!317394 (h!70104 (unfocusZipperList!1255 zl!343))) (validRegex!7563 (h!70104 (unfocusZipperList!1255 zl!343))))))

(declare-fun m!6749780 () Bool)

(assert (=> bs!1372022 m!6749780))

(assert (=> b!5811166 d!1830101))

(declare-fun b_lambda!219067 () Bool)

(assert (= b_lambda!219045 (or b!5809629 b_lambda!219067)))

(declare-fun bs!1372023 () Bool)

(declare-fun d!1830103 () Bool)

(assert (= bs!1372023 (and d!1830103 b!5809629)))

(assert (=> bs!1372023 (= (dynLambda!24923 lambda!317312 (h!70104 (Cons!63656 (reg!16156 r!7292) Nil!63656))) (validRegex!7563 (h!70104 (Cons!63656 (reg!16156 r!7292) Nil!63656))))))

(declare-fun m!6749782 () Bool)

(assert (=> bs!1372023 m!6749782))

(assert (=> b!5811122 d!1830103))

(declare-fun b_lambda!219069 () Bool)

(assert (= b_lambda!219029 (or b!5809649 b_lambda!219069)))

(assert (=> d!1829795 d!1829643))

(declare-fun b_lambda!219071 () Bool)

(assert (= b_lambda!219027 (or d!1829607 b_lambda!219071)))

(declare-fun bs!1372024 () Bool)

(declare-fun d!1830105 () Bool)

(assert (= bs!1372024 (and d!1830105 d!1829607)))

(assert (=> bs!1372024 (= (dynLambda!24923 lambda!317380 (h!70104 (exprs!5711 (h!70106 zl!343)))) (validRegex!7563 (h!70104 (exprs!5711 (h!70106 zl!343)))))))

(declare-fun m!6749784 () Bool)

(assert (=> bs!1372024 m!6749784))

(assert (=> b!5810667 d!1830105))

(declare-fun b_lambda!219073 () Bool)

(assert (= b_lambda!219035 (or d!1829519 b_lambda!219073)))

(declare-fun bs!1372025 () Bool)

(declare-fun d!1830107 () Bool)

(assert (= bs!1372025 (and d!1830107 d!1829519)))

(assert (=> bs!1372025 (= (dynLambda!24923 lambda!317360 (h!70104 (exprs!5711 (h!70106 zl!343)))) (validRegex!7563 (h!70104 (exprs!5711 (h!70106 zl!343)))))))

(assert (=> bs!1372025 m!6749784))

(assert (=> b!5810914 d!1830107))

(declare-fun b_lambda!219075 () Bool)

(assert (= b_lambda!219023 (or b!5809629 b_lambda!219075)))

(assert (=> d!1829685 d!1829647))

(check-sat (not b!5810716) (not b!5811363) (not b!5811359) (not d!1829815) (not b!5810541) (not d!1829777) (not b!5811168) (not bm!453685) (not d!1829753) (not b!5810622) (not b!5811308) (not d!1830017) (not b!5810596) (not b!5811181) (not b!5811092) (not bm!453817) (not b!5811358) (not bm!453811) (not d!1829731) (not b!5811325) (not b!5811197) (not b!5811171) (not b_lambda!219059) (not b!5811321) (not b!5811329) (not b!5811312) (not d!1829769) (not d!1829705) (not b!5811370) (not bm!453785) (not bm!453694) (not b!5811369) (not b_lambda!218999) (not b!5811102) (not b!5811328) (not bm!453800) (not b!5810935) (not bm!453760) (not b!5811387) (not b!5810937) (not b!5811300) (not b!5810682) (not b!5811373) (not d!1829751) (not b!5810548) (not b!5811248) (not b!5810540) (not bm!453719) (not b!5811383) (not b!5811298) (not b!5810727) (not d!1829965) (not b!5811183) (not bm!453729) (not bm!453761) (not d!1829971) (not b!5810702) (not b!5811400) (not b!5811374) (not b!5810920) (not b!5811085) (not bs!1372021) (not b!5811398) (not b!5811346) (not bm!453802) (not bm!453710) (not b!5811402) (not d!1830029) (not b!5810722) (not b!5810896) (not d!1829767) (not bs!1372020) (not b!5810608) (not b!5810885) (not b!5811304) (not b!5810678) (not bm!453786) (not b!5811095) (not b!5810579) (not bm!453723) (not d!1829797) (not b!5811254) (not d!1829845) (not d!1829891) (not d!1829907) (not bm!453799) (not bm!453769) (not d!1830041) (not bm!453695) (not b!5811360) (not d!1829795) (not b!5811068) (not b!5811169) (not b!5811395) (not bm!453748) (not b!5811251) (not b!5810740) (not b!5811316) (not d!1830089) (not b!5811378) (not b!5811390) (not d!1829837) (not b!5810530) (not d!1830059) (not bs!1372025) (not b!5811272) (not b!5810664) (not b!5811368) (not b!5811178) (not b!5810542) (not b!5811372) (not d!1829951) (not b!5811317) (not b!5810665) (not b!5810543) (not b!5811175) (not b!5810653) (not b!5810854) (not b!5811410) (not b!5810720) (not b_lambda!219057) (not b_lambda!219069) (not d!1829813) (not b!5810566) (not d!1830053) (not bm!453734) (not b!5810996) (not b!5810578) (not d!1830081) (not b!5810601) (not b!5811273) (not bm!453819) (not bm!453740) (not b!5810798) (not bm!453735) (not b!5811376) (not b!5811365) (not bm!453679) (not b!5811100) (not d!1829807) (not b!5811320) (not setNonEmpty!39126) (not bm!453681) (not b!5811377) (not b!5810797) (not b!5811244) (not b!5811093) (not b!5810544) (not b!5810729) (not b!5811386) (not setNonEmpty!39137) (not bm!453732) (not b!5811324) (not b_lambda!219005) (not b_lambda!219053) (not b!5811311) (not setNonEmpty!39125) (not d!1829885) (not b!5810679) (not b!5810694) (not b!5811364) (not b!5811252) (not b!5811412) (not b!5811340) (not b!5810726) (not b_lambda!219061) (not d!1830079) (not b!5810597) (not bm!453820) (not b!5811313) (not b!5810767) (not b!5810734) (not bm!453687) (not d!1830083) (not d!1829809) (not b!5810552) (not b!5810735) (not b_lambda!218997) (not b!5811007) tp_is_empty!40907 (not b!5811173) (not b!5811407) (not d!1829791) (not bm!453772) (not b!5811088) (not bm!453827) (not d!1830037) (not b!5811381) (not d!1829697) (not bm!453783) (not b!5810692) (not setNonEmpty!39136) (not bm!453717) (not d!1829709) (not bm!453673) (not b!5810936) (not b!5811334) (not bm!453770) (not b!5810929) (not b!5811404) (not b!5811353) (not b!5811124) (not d!1829973) (not b!5811394) (not b!5811411) (not b!5811302) (not b!5811327) (not b!5810715) (not b!5810700) (not bm!453746) (not b!5810625) (not b_lambda!219063) (not b!5811349) (not d!1829765) (not b_lambda!219073) (not b!5811337) (not b!5811396) (not b!5810790) (not bm!453742) (not b!5811099) (not d!1829755) (not b!5811027) (not b!5811351) (not d!1829735) (not b_lambda!219065) (not b!5811333) (not b!5810948) (not b!5811336) (not b!5810499) (not bm!453828) (not b!5811246) (not b!5811072) (not bm!453711) (not bm!453776) (not b!5810728) (not b!5811323) (not b!5811354) (not bm!453767) (not b!5810628) (not d!1829895) (not bm!453763) (not b!5811341) (not d!1829905) (not d!1829995) (not b!5810582) (not b!5810553) (not d!1830031) (not b!5811104) (not bm!453676) (not b!5810549) (not b!5810668) (not b!5811142) (not b!5811319) (not b!5811406) (not b!5811067) (not b!5811074) (not b!5811399) (not setNonEmpty!39127) (not b!5810565) (not b!5810766) (not b!5810629) (not b!5810697) (not b!5811282) (not b!5810876) (not setNonEmpty!39139) (not bm!453725) (not b!5810730) (not b!5810788) (not b!5811250) (not b!5810952) (not d!1830057) (not b!5811087) (not d!1829835) (not b!5810793) (not b!5811357) (not d!1829685) (not b!5810510) (not b!5811232) (not bm!453701) (not b!5811403) (not bm!453731) (not b!5811306) (not b!5810743) (not b!5810630) (not bm!453744) (not b!5810905) (not bm!453791) (not bm!453722) (not b!5810546) (not b!5811105) (not bs!1372024) (not b!5811347) (not b!5811123) (not b!5811385) (not b!5810576) (not d!1829811) (not b!5810950) (not d!1829909) (not b!5811332) (not b!5810756) (not b_lambda!219001) (not d!1829963) (not b!5811256) (not bm!453692) (not bm!453688) (not bm!453700) (not bm!453736) (not bm!453697) (not b!5810719) (not b!5810796) (not b!5811361) (not b!5811391) (not b!5811355) (not d!1829703) (not b!5811343) (not bm!453682) (not d!1829839) (not b!5810932) (not bm!453796) (not b!5811392) (not b!5811109) (not b!5811084) (not d!1829775) (not d!1830047) (not b!5810843) (not b!5811366) (not b!5811382) (not b!5811408) (not b!5811350) (not b!5811299) (not b!5811331) (not b!5811097) (not bm!453720) (not b!5811170) (not b!5811309) (not b!5810755) (not b!5810585) (not b_lambda!219075) (not d!1829695) (not b!5811342) (not b!5811303) (not b!5811315) (not b!5810584) (not bm!453690) (not b_lambda!219071) (not d!1830015) (not b!5810739) (not b!5810580) (not b!5811096) (not d!1829779) (not d!1829719) (not b!5811167) (not d!1829817) (not b_lambda!219055) (not b!5810701) (not bm!453758) (not bm!453675) (not bs!1372019) (not bm!453727) (not b!5811086) (not d!1829723) (not b!5810927) (not d!1829701) (not d!1829979) (not b!5811054) (not bm!453698) (not d!1829717) (not bm!453774) (not b!5810564) (not b!5810521) (not b!5810496) (not b!5810620) (not b!5811379) (not b_lambda!219003) (not b!5811157) (not d!1829699) (not d!1829729) (not b!5811055) (not d!1829879) (not bm!453809) (not b!5811307) (not b!5811182) (not bm!453726) (not bs!1372022) (not b!5811281) (not d!1829889) (not bm!453765) (not b!5810915) (not bs!1372023) (not d!1829781) (not b!5810577) (not b!5810826) (not bm!453714) (not b!5811090) (not bm!453693) (not b!5811389) (not b!5810705) (not b!5811073) (not b!5811345) (not bm!453792) (not d!1829847) (not b!5810607) (not bm!453749) (not b!5811280) (not b!5811338) (not b_lambda!219067) (not b!5811249) (not d!1830039) (not b!5810618) (not d!1829707) (not b!5811026) (not bm!453715))
(check-sat)
