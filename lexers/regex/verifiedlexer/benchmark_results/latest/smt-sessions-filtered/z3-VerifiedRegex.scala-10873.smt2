; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561594 () Bool)

(assert start!561594)

(declare-fun b!5327897 () Bool)

(assert (=> b!5327897 true))

(assert (=> b!5327897 true))

(declare-fun lambda!272111 () Int)

(declare-fun lambda!272110 () Int)

(assert (=> b!5327897 (not (= lambda!272111 lambda!272110))))

(assert (=> b!5327897 true))

(assert (=> b!5327897 true))

(declare-fun b!5327891 () Bool)

(assert (=> b!5327891 true))

(declare-fun bs!1234874 () Bool)

(declare-fun b!5327884 () Bool)

(assert (= bs!1234874 (and b!5327884 b!5327897)))

(declare-datatypes ((C!30256 0))(
  ( (C!30257 (val!24830 Int)) )
))
(declare-datatypes ((Regex!14993 0))(
  ( (ElementMatch!14993 (c!926337 C!30256)) (Concat!23838 (regOne!30498 Regex!14993) (regTwo!30498 Regex!14993)) (EmptyExpr!14993) (Star!14993 (reg!15322 Regex!14993)) (EmptyLang!14993) (Union!14993 (regOne!30499 Regex!14993) (regTwo!30499 Regex!14993)) )
))
(declare-fun r!7292 () Regex!14993)

(declare-fun lambda!272113 () Int)

(declare-fun lt!2173809 () Regex!14993)

(assert (=> bs!1234874 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272113 lambda!272110))))

(assert (=> bs!1234874 (not (= lambda!272113 lambda!272111))))

(assert (=> b!5327884 true))

(assert (=> b!5327884 true))

(assert (=> b!5327884 true))

(declare-fun lambda!272114 () Int)

(assert (=> bs!1234874 (not (= lambda!272114 lambda!272110))))

(assert (=> bs!1234874 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272114 lambda!272111))))

(assert (=> b!5327884 (not (= lambda!272114 lambda!272113))))

(assert (=> b!5327884 true))

(assert (=> b!5327884 true))

(assert (=> b!5327884 true))

(declare-fun b!5327870 () Bool)

(declare-fun e!3309412 () Bool)

(declare-fun e!3309416 () Bool)

(assert (=> b!5327870 (= e!3309412 e!3309416)))

(declare-fun res!2259900 () Bool)

(assert (=> b!5327870 (=> res!2259900 e!3309416)))

(declare-datatypes ((List!61278 0))(
  ( (Nil!61154) (Cons!61154 (h!67602 Regex!14993) (t!374493 List!61278)) )
))
(declare-datatypes ((Context!8754 0))(
  ( (Context!8755 (exprs!4877 List!61278)) )
))
(declare-datatypes ((List!61279 0))(
  ( (Nil!61155) (Cons!61155 (h!67603 Context!8754) (t!374494 List!61279)) )
))
(declare-fun lt!2173795 () List!61279)

(declare-fun zl!343 () List!61279)

(declare-fun zipperDepthTotal!146 (List!61279) Int)

(assert (=> b!5327870 (= res!2259900 (>= (zipperDepthTotal!146 lt!2173795) (zipperDepthTotal!146 zl!343)))))

(declare-fun lt!2173808 () Context!8754)

(assert (=> b!5327870 (= lt!2173795 (Cons!61155 lt!2173808 Nil!61155))))

(declare-fun b!5327871 () Bool)

(declare-fun res!2259915 () Bool)

(declare-fun e!3309410 () Bool)

(assert (=> b!5327871 (=> (not res!2259915) (not e!3309410))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8754))

(declare-fun toList!8777 ((InoxSet Context!8754)) List!61279)

(assert (=> b!5327871 (= res!2259915 (= (toList!8777 z!1189) zl!343))))

(declare-fun b!5327872 () Bool)

(declare-fun e!3309419 () Bool)

(declare-fun tp!1483068 () Bool)

(assert (=> b!5327872 (= e!3309419 tp!1483068)))

(declare-fun b!5327874 () Bool)

(declare-fun res!2259896 () Bool)

(declare-fun e!3309422 () Bool)

(assert (=> b!5327874 (=> res!2259896 e!3309422)))

(get-info :version)

(assert (=> b!5327874 (= res!2259896 (not ((_ is Cons!61154) (exprs!4877 (h!67603 zl!343)))))))

(declare-fun b!5327875 () Bool)

(declare-fun e!3309414 () Bool)

(declare-fun e!3309418 () Bool)

(assert (=> b!5327875 (= e!3309414 e!3309418)))

(declare-fun res!2259894 () Bool)

(assert (=> b!5327875 (=> res!2259894 e!3309418)))

(declare-datatypes ((List!61280 0))(
  ( (Nil!61156) (Cons!61156 (h!67604 C!30256) (t!374495 List!61280)) )
))
(declare-fun s!2326 () List!61280)

(declare-fun lt!2173797 () Bool)

(declare-fun lt!2173815 () (InoxSet Context!8754))

(declare-fun matchZipper!1237 ((InoxSet Context!8754) List!61280) Bool)

(assert (=> b!5327875 (= res!2259894 (not (= lt!2173797 (matchZipper!1237 lt!2173815 (t!374495 s!2326)))))))

(declare-fun lt!2173814 () (InoxSet Context!8754))

(assert (=> b!5327875 (= lt!2173797 (matchZipper!1237 lt!2173814 (t!374495 s!2326)))))

(declare-fun b!5327876 () Bool)

(declare-fun res!2259908 () Bool)

(assert (=> b!5327876 (=> res!2259908 e!3309422)))

(assert (=> b!5327876 (= res!2259908 (or ((_ is EmptyExpr!14993) r!7292) ((_ is EmptyLang!14993) r!7292) ((_ is ElementMatch!14993) r!7292) ((_ is Union!14993) r!7292) (not ((_ is Concat!23838) r!7292))))))

(declare-fun b!5327877 () Bool)

(declare-fun e!3309417 () Bool)

(declare-fun lt!2173807 () (InoxSet Context!8754))

(assert (=> b!5327877 (= e!3309417 (matchZipper!1237 lt!2173807 (t!374495 s!2326)))))

(declare-fun setIsEmpty!34335 () Bool)

(declare-fun setRes!34335 () Bool)

(assert (=> setIsEmpty!34335 setRes!34335))

(declare-fun setElem!34335 () Context!8754)

(declare-fun tp!1483067 () Bool)

(declare-fun setNonEmpty!34335 () Bool)

(declare-fun e!3309409 () Bool)

(declare-fun inv!80729 (Context!8754) Bool)

(assert (=> setNonEmpty!34335 (= setRes!34335 (and tp!1483067 (inv!80729 setElem!34335) e!3309409))))

(declare-fun setRest!34335 () (InoxSet Context!8754))

(assert (=> setNonEmpty!34335 (= z!1189 ((_ map or) (store ((as const (Array Context!8754 Bool)) false) setElem!34335 true) setRest!34335))))

(declare-fun b!5327878 () Bool)

(declare-fun res!2259914 () Bool)

(assert (=> b!5327878 (=> res!2259914 e!3309422)))

(declare-fun generalisedConcat!662 (List!61278) Regex!14993)

(assert (=> b!5327878 (= res!2259914 (not (= r!7292 (generalisedConcat!662 (exprs!4877 (h!67603 zl!343))))))))

(declare-fun b!5327879 () Bool)

(declare-fun res!2259906 () Bool)

(assert (=> b!5327879 (=> res!2259906 e!3309416)))

(declare-fun zipperDepth!102 (List!61279) Int)

(assert (=> b!5327879 (= res!2259906 (> (zipperDepth!102 lt!2173795) (zipperDepth!102 zl!343)))))

(declare-fun b!5327880 () Bool)

(declare-fun res!2259905 () Bool)

(assert (=> b!5327880 (=> res!2259905 e!3309412)))

(declare-fun lt!2173802 () (InoxSet Context!8754))

(assert (=> b!5327880 (= res!2259905 (not (= lt!2173797 (matchZipper!1237 lt!2173802 (t!374495 s!2326)))))))

(declare-fun b!5327881 () Bool)

(declare-fun e!3309420 () Bool)

(assert (=> b!5327881 (= e!3309420 e!3309414)))

(declare-fun res!2259907 () Bool)

(assert (=> b!5327881 (=> res!2259907 e!3309414)))

(assert (=> b!5327881 (= res!2259907 (not (= lt!2173814 lt!2173815)))))

(declare-fun lt!2173812 () List!61278)

(declare-fun derivationStepZipperDown!441 (Regex!14993 Context!8754 C!30256) (InoxSet Context!8754))

(assert (=> b!5327881 (= lt!2173815 (derivationStepZipperDown!441 (regOne!30498 (regOne!30498 r!7292)) (Context!8755 lt!2173812) (h!67604 s!2326)))))

(assert (=> b!5327881 (= lt!2173812 (Cons!61154 (regTwo!30498 (regOne!30498 r!7292)) (t!374493 (exprs!4877 (h!67603 zl!343)))))))

(declare-fun b!5327882 () Bool)

(declare-fun res!2259898 () Bool)

(assert (=> b!5327882 (=> res!2259898 e!3309422)))

(declare-fun generalisedUnion!922 (List!61278) Regex!14993)

(declare-fun unfocusZipperList!435 (List!61279) List!61278)

(assert (=> b!5327882 (= res!2259898 (not (= r!7292 (generalisedUnion!922 (unfocusZipperList!435 zl!343)))))))

(declare-fun b!5327883 () Bool)

(declare-fun res!2259912 () Bool)

(assert (=> b!5327883 (=> res!2259912 e!3309420)))

(declare-fun e!3309421 () Bool)

(assert (=> b!5327883 (= res!2259912 e!3309421)))

(declare-fun res!2259901 () Bool)

(assert (=> b!5327883 (=> (not res!2259901) (not e!3309421))))

(assert (=> b!5327883 (= res!2259901 ((_ is Concat!23838) (regOne!30498 r!7292)))))

(declare-fun lambda!272115 () Int)

(declare-fun forall!14411 (List!61278 Int) Bool)

(assert (=> b!5327884 (= e!3309416 (forall!14411 lt!2173812 lambda!272115))))

(declare-fun Exists!2174 (Int) Bool)

(assert (=> b!5327884 (= (Exists!2174 lambda!272113) (Exists!2174 lambda!272114))))

(declare-datatypes ((Unit!153490 0))(
  ( (Unit!153491) )
))
(declare-fun lt!2173790 () Unit!153490)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!828 (Regex!14993 Regex!14993 List!61280) Unit!153490)

(assert (=> b!5327884 (= lt!2173790 (lemmaExistCutMatchRandMatchRSpecEquivalent!828 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 s!2326))))

(declare-datatypes ((tuple2!64384 0))(
  ( (tuple2!64385 (_1!35495 List!61280) (_2!35495 List!61280)) )
))
(declare-datatypes ((Option!15104 0))(
  ( (None!15103) (Some!15103 (v!51132 tuple2!64384)) )
))
(declare-fun isDefined!11807 (Option!15104) Bool)

(declare-fun findConcatSeparation!1518 (Regex!14993 Regex!14993 List!61280 List!61280 List!61280) Option!15104)

(assert (=> b!5327884 (= (isDefined!11807 (findConcatSeparation!1518 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 Nil!61156 s!2326 s!2326)) (Exists!2174 lambda!272113))))

(declare-fun lt!2173793 () Unit!153490)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1282 (Regex!14993 Regex!14993 List!61280) Unit!153490)

(assert (=> b!5327884 (= lt!2173793 (lemmaFindConcatSeparationEquivalentToExists!1282 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 s!2326))))

(assert (=> b!5327884 (= lt!2173809 (generalisedConcat!662 lt!2173812))))

(declare-fun lt!2173794 () Bool)

(declare-fun lt!2173801 () Regex!14993)

(declare-fun matchRSpec!2096 (Regex!14993 List!61280) Bool)

(assert (=> b!5327884 (= lt!2173794 (matchRSpec!2096 lt!2173801 s!2326))))

(declare-fun lt!2173813 () Unit!153490)

(declare-fun mainMatchTheorem!2096 (Regex!14993 List!61280) Unit!153490)

(assert (=> b!5327884 (= lt!2173813 (mainMatchTheorem!2096 lt!2173801 s!2326))))

(declare-fun lt!2173806 () (InoxSet Context!8754))

(assert (=> b!5327884 (= lt!2173794 (matchZipper!1237 lt!2173806 s!2326))))

(declare-fun matchR!7178 (Regex!14993 List!61280) Bool)

(assert (=> b!5327884 (= lt!2173794 (matchR!7178 lt!2173801 s!2326))))

(declare-fun lt!2173818 () Unit!153490)

(declare-fun theoremZipperRegexEquiv!391 ((InoxSet Context!8754) List!61279 Regex!14993 List!61280) Unit!153490)

(assert (=> b!5327884 (= lt!2173818 (theoremZipperRegexEquiv!391 lt!2173806 lt!2173795 lt!2173801 s!2326))))

(declare-fun lt!2173792 () List!61278)

(assert (=> b!5327884 (= lt!2173801 (generalisedConcat!662 lt!2173792))))

(declare-fun b!5327885 () Bool)

(declare-fun e!3309408 () Bool)

(declare-fun tp_is_empty!39239 () Bool)

(declare-fun tp!1483069 () Bool)

(assert (=> b!5327885 (= e!3309408 (and tp_is_empty!39239 tp!1483069))))

(declare-fun b!5327886 () Bool)

(declare-fun res!2259910 () Bool)

(assert (=> b!5327886 (=> res!2259910 e!3309420)))

(assert (=> b!5327886 (= res!2259910 (not ((_ is Concat!23838) (regOne!30498 r!7292))))))

(declare-fun b!5327887 () Bool)

(declare-fun e!3309413 () Bool)

(declare-fun tp!1483071 () Bool)

(declare-fun tp!1483073 () Bool)

(assert (=> b!5327887 (= e!3309413 (and tp!1483071 tp!1483073))))

(declare-fun res!2259895 () Bool)

(assert (=> start!561594 (=> (not res!2259895) (not e!3309410))))

(declare-fun validRegex!6729 (Regex!14993) Bool)

(assert (=> start!561594 (= res!2259895 (validRegex!6729 r!7292))))

(assert (=> start!561594 e!3309410))

(assert (=> start!561594 e!3309413))

(declare-fun condSetEmpty!34335 () Bool)

(assert (=> start!561594 (= condSetEmpty!34335 (= z!1189 ((as const (Array Context!8754 Bool)) false)))))

(assert (=> start!561594 setRes!34335))

(declare-fun e!3309411 () Bool)

(assert (=> start!561594 e!3309411))

(assert (=> start!561594 e!3309408))

(declare-fun b!5327873 () Bool)

(assert (=> b!5327873 (= e!3309413 tp_is_empty!39239)))

(declare-fun b!5327888 () Bool)

(declare-fun res!2259899 () Bool)

(assert (=> b!5327888 (=> res!2259899 e!3309422)))

(declare-fun isEmpty!33123 (List!61279) Bool)

(assert (=> b!5327888 (= res!2259899 (not (isEmpty!33123 (t!374494 zl!343))))))

(declare-fun tp!1483072 () Bool)

(declare-fun b!5327889 () Bool)

(assert (=> b!5327889 (= e!3309411 (and (inv!80729 (h!67603 zl!343)) e!3309419 tp!1483072))))

(declare-fun b!5327890 () Bool)

(declare-fun e!3309407 () Unit!153490)

(declare-fun Unit!153492 () Unit!153490)

(assert (=> b!5327890 (= e!3309407 Unit!153492)))

(declare-fun e!3309415 () Bool)

(assert (=> b!5327891 (= e!3309415 e!3309420)))

(declare-fun res!2259897 () Bool)

(assert (=> b!5327891 (=> res!2259897 e!3309420)))

(assert (=> b!5327891 (= res!2259897 (or (and ((_ is ElementMatch!14993) (regOne!30498 r!7292)) (= (c!926337 (regOne!30498 r!7292)) (h!67604 s!2326))) ((_ is Union!14993) (regOne!30498 r!7292))))))

(declare-fun lt!2173816 () Unit!153490)

(assert (=> b!5327891 (= lt!2173816 e!3309407)))

(declare-fun c!926336 () Bool)

(declare-fun nullable!5162 (Regex!14993) Bool)

(assert (=> b!5327891 (= c!926336 (nullable!5162 (h!67602 (exprs!4877 (h!67603 zl!343)))))))

(declare-fun lambda!272112 () Int)

(declare-fun flatMap!720 ((InoxSet Context!8754) Int) (InoxSet Context!8754))

(declare-fun derivationStepZipperUp!365 (Context!8754 C!30256) (InoxSet Context!8754))

(assert (=> b!5327891 (= (flatMap!720 z!1189 lambda!272112) (derivationStepZipperUp!365 (h!67603 zl!343) (h!67604 s!2326)))))

(declare-fun lt!2173791 () Unit!153490)

(declare-fun lemmaFlatMapOnSingletonSet!252 ((InoxSet Context!8754) Context!8754 Int) Unit!153490)

(assert (=> b!5327891 (= lt!2173791 (lemmaFlatMapOnSingletonSet!252 z!1189 (h!67603 zl!343) lambda!272112))))

(declare-fun lt!2173804 () Context!8754)

(assert (=> b!5327891 (= lt!2173807 (derivationStepZipperUp!365 lt!2173804 (h!67604 s!2326)))))

(assert (=> b!5327891 (= lt!2173814 (derivationStepZipperDown!441 (h!67602 (exprs!4877 (h!67603 zl!343))) lt!2173804 (h!67604 s!2326)))))

(assert (=> b!5327891 (= lt!2173804 (Context!8755 (t!374493 (exprs!4877 (h!67603 zl!343)))))))

(declare-fun lt!2173796 () (InoxSet Context!8754))

(assert (=> b!5327891 (= lt!2173796 (derivationStepZipperUp!365 (Context!8755 (Cons!61154 (h!67602 (exprs!4877 (h!67603 zl!343))) (t!374493 (exprs!4877 (h!67603 zl!343))))) (h!67604 s!2326)))))

(declare-fun b!5327892 () Bool)

(declare-fun tp!1483064 () Bool)

(assert (=> b!5327892 (= e!3309409 tp!1483064)))

(declare-fun b!5327893 () Bool)

(declare-fun res!2259909 () Bool)

(assert (=> b!5327893 (=> res!2259909 e!3309412)))

(assert (=> b!5327893 (= res!2259909 (not (= (exprs!4877 (h!67603 zl!343)) (Cons!61154 (Concat!23838 (regOne!30498 (regOne!30498 r!7292)) (regTwo!30498 (regOne!30498 r!7292))) (t!374493 (exprs!4877 (h!67603 zl!343)))))))))

(declare-fun b!5327894 () Bool)

(declare-fun tp!1483070 () Bool)

(assert (=> b!5327894 (= e!3309413 tp!1483070)))

(declare-fun b!5327895 () Bool)

(declare-fun res!2259911 () Bool)

(assert (=> b!5327895 (=> (not res!2259911) (not e!3309410))))

(declare-fun unfocusZipper!735 (List!61279) Regex!14993)

(assert (=> b!5327895 (= res!2259911 (= r!7292 (unfocusZipper!735 zl!343)))))

(declare-fun b!5327896 () Bool)

(declare-fun tp!1483066 () Bool)

(declare-fun tp!1483065 () Bool)

(assert (=> b!5327896 (= e!3309413 (and tp!1483066 tp!1483065))))

(assert (=> b!5327897 (= e!3309422 e!3309415)))

(declare-fun res!2259893 () Bool)

(assert (=> b!5327897 (=> res!2259893 e!3309415)))

(declare-fun lt!2173811 () Bool)

(declare-fun lt!2173810 () Bool)

(assert (=> b!5327897 (= res!2259893 (or (not (= lt!2173811 lt!2173810)) ((_ is Nil!61156) s!2326)))))

(assert (=> b!5327897 (= (Exists!2174 lambda!272110) (Exists!2174 lambda!272111))))

(declare-fun lt!2173817 () Unit!153490)

(assert (=> b!5327897 (= lt!2173817 (lemmaExistCutMatchRandMatchRSpecEquivalent!828 (regOne!30498 r!7292) (regTwo!30498 r!7292) s!2326))))

(assert (=> b!5327897 (= lt!2173810 (Exists!2174 lambda!272110))))

(assert (=> b!5327897 (= lt!2173810 (isDefined!11807 (findConcatSeparation!1518 (regOne!30498 r!7292) (regTwo!30498 r!7292) Nil!61156 s!2326 s!2326)))))

(declare-fun lt!2173799 () Unit!153490)

(assert (=> b!5327897 (= lt!2173799 (lemmaFindConcatSeparationEquivalentToExists!1282 (regOne!30498 r!7292) (regTwo!30498 r!7292) s!2326))))

(declare-fun b!5327898 () Bool)

(assert (=> b!5327898 (= e!3309421 (nullable!5162 (regOne!30498 (regOne!30498 r!7292))))))

(declare-fun b!5327899 () Bool)

(assert (=> b!5327899 (= e!3309410 (not e!3309422))))

(declare-fun res!2259892 () Bool)

(assert (=> b!5327899 (=> res!2259892 e!3309422)))

(assert (=> b!5327899 (= res!2259892 (not ((_ is Cons!61155) zl!343)))))

(assert (=> b!5327899 (= lt!2173811 (matchRSpec!2096 r!7292 s!2326))))

(assert (=> b!5327899 (= lt!2173811 (matchR!7178 r!7292 s!2326))))

(declare-fun lt!2173803 () Unit!153490)

(assert (=> b!5327899 (= lt!2173803 (mainMatchTheorem!2096 r!7292 s!2326))))

(declare-fun b!5327900 () Bool)

(assert (=> b!5327900 (= e!3309418 e!3309412)))

(declare-fun res!2259904 () Bool)

(assert (=> b!5327900 (=> res!2259904 e!3309412)))

(assert (=> b!5327900 (= res!2259904 (not (= lt!2173802 lt!2173815)))))

(assert (=> b!5327900 (= (flatMap!720 lt!2173806 lambda!272112) (derivationStepZipperUp!365 lt!2173808 (h!67604 s!2326)))))

(declare-fun lt!2173800 () Unit!153490)

(assert (=> b!5327900 (= lt!2173800 (lemmaFlatMapOnSingletonSet!252 lt!2173806 lt!2173808 lambda!272112))))

(declare-fun lt!2173805 () (InoxSet Context!8754))

(assert (=> b!5327900 (= lt!2173805 (derivationStepZipperUp!365 lt!2173808 (h!67604 s!2326)))))

(declare-fun derivationStepZipper!1234 ((InoxSet Context!8754) C!30256) (InoxSet Context!8754))

(assert (=> b!5327900 (= lt!2173802 (derivationStepZipper!1234 lt!2173806 (h!67604 s!2326)))))

(assert (=> b!5327900 (= lt!2173806 (store ((as const (Array Context!8754 Bool)) false) lt!2173808 true))))

(assert (=> b!5327900 (= lt!2173808 (Context!8755 lt!2173792))))

(assert (=> b!5327900 (= lt!2173792 (Cons!61154 (regOne!30498 (regOne!30498 r!7292)) lt!2173812))))

(declare-fun b!5327901 () Bool)

(declare-fun res!2259913 () Bool)

(assert (=> b!5327901 (=> res!2259913 e!3309412)))

(declare-fun contextDepthTotal!126 (Context!8754) Int)

(assert (=> b!5327901 (= res!2259913 (>= (contextDepthTotal!126 lt!2173808) (contextDepthTotal!126 (h!67603 zl!343))))))

(declare-fun b!5327902 () Bool)

(declare-fun Unit!153493 () Unit!153490)

(assert (=> b!5327902 (= e!3309407 Unit!153493)))

(declare-fun lt!2173798 () Unit!153490)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!230 ((InoxSet Context!8754) (InoxSet Context!8754) List!61280) Unit!153490)

(assert (=> b!5327902 (= lt!2173798 (lemmaZipperConcatMatchesSameAsBothZippers!230 lt!2173814 lt!2173807 (t!374495 s!2326)))))

(declare-fun res!2259903 () Bool)

(assert (=> b!5327902 (= res!2259903 (matchZipper!1237 lt!2173814 (t!374495 s!2326)))))

(assert (=> b!5327902 (=> res!2259903 e!3309417)))

(assert (=> b!5327902 (= (matchZipper!1237 ((_ map or) lt!2173814 lt!2173807) (t!374495 s!2326)) e!3309417)))

(declare-fun b!5327903 () Bool)

(declare-fun res!2259902 () Bool)

(assert (=> b!5327903 (=> res!2259902 e!3309415)))

(declare-fun isEmpty!33124 (List!61278) Bool)

(assert (=> b!5327903 (= res!2259902 (isEmpty!33124 (t!374493 (exprs!4877 (h!67603 zl!343)))))))

(assert (= (and start!561594 res!2259895) b!5327871))

(assert (= (and b!5327871 res!2259915) b!5327895))

(assert (= (and b!5327895 res!2259911) b!5327899))

(assert (= (and b!5327899 (not res!2259892)) b!5327888))

(assert (= (and b!5327888 (not res!2259899)) b!5327878))

(assert (= (and b!5327878 (not res!2259914)) b!5327874))

(assert (= (and b!5327874 (not res!2259896)) b!5327882))

(assert (= (and b!5327882 (not res!2259898)) b!5327876))

(assert (= (and b!5327876 (not res!2259908)) b!5327897))

(assert (= (and b!5327897 (not res!2259893)) b!5327903))

(assert (= (and b!5327903 (not res!2259902)) b!5327891))

(assert (= (and b!5327891 c!926336) b!5327902))

(assert (= (and b!5327891 (not c!926336)) b!5327890))

(assert (= (and b!5327902 (not res!2259903)) b!5327877))

(assert (= (and b!5327891 (not res!2259897)) b!5327883))

(assert (= (and b!5327883 res!2259901) b!5327898))

(assert (= (and b!5327883 (not res!2259912)) b!5327886))

(assert (= (and b!5327886 (not res!2259910)) b!5327881))

(assert (= (and b!5327881 (not res!2259907)) b!5327875))

(assert (= (and b!5327875 (not res!2259894)) b!5327900))

(assert (= (and b!5327900 (not res!2259904)) b!5327880))

(assert (= (and b!5327880 (not res!2259905)) b!5327893))

(assert (= (and b!5327893 (not res!2259909)) b!5327901))

(assert (= (and b!5327901 (not res!2259913)) b!5327870))

(assert (= (and b!5327870 (not res!2259900)) b!5327879))

(assert (= (and b!5327879 (not res!2259906)) b!5327884))

(assert (= (and start!561594 ((_ is ElementMatch!14993) r!7292)) b!5327873))

(assert (= (and start!561594 ((_ is Concat!23838) r!7292)) b!5327896))

(assert (= (and start!561594 ((_ is Star!14993) r!7292)) b!5327894))

(assert (= (and start!561594 ((_ is Union!14993) r!7292)) b!5327887))

(assert (= (and start!561594 condSetEmpty!34335) setIsEmpty!34335))

(assert (= (and start!561594 (not condSetEmpty!34335)) setNonEmpty!34335))

(assert (= setNonEmpty!34335 b!5327892))

(assert (= b!5327889 b!5327872))

(assert (= (and start!561594 ((_ is Cons!61155) zl!343)) b!5327889))

(assert (= (and start!561594 ((_ is Cons!61156) s!2326)) b!5327885))

(declare-fun m!6361666 () Bool)

(assert (=> b!5327879 m!6361666))

(declare-fun m!6361668 () Bool)

(assert (=> b!5327879 m!6361668))

(declare-fun m!6361670 () Bool)

(assert (=> b!5327882 m!6361670))

(assert (=> b!5327882 m!6361670))

(declare-fun m!6361672 () Bool)

(assert (=> b!5327882 m!6361672))

(declare-fun m!6361674 () Bool)

(assert (=> b!5327901 m!6361674))

(declare-fun m!6361676 () Bool)

(assert (=> b!5327901 m!6361676))

(declare-fun m!6361678 () Bool)

(assert (=> b!5327897 m!6361678))

(declare-fun m!6361680 () Bool)

(assert (=> b!5327897 m!6361680))

(declare-fun m!6361682 () Bool)

(assert (=> b!5327897 m!6361682))

(declare-fun m!6361684 () Bool)

(assert (=> b!5327897 m!6361684))

(declare-fun m!6361686 () Bool)

(assert (=> b!5327897 m!6361686))

(assert (=> b!5327897 m!6361682))

(assert (=> b!5327897 m!6361678))

(declare-fun m!6361688 () Bool)

(assert (=> b!5327897 m!6361688))

(declare-fun m!6361690 () Bool)

(assert (=> b!5327875 m!6361690))

(declare-fun m!6361692 () Bool)

(assert (=> b!5327875 m!6361692))

(declare-fun m!6361694 () Bool)

(assert (=> b!5327870 m!6361694))

(declare-fun m!6361696 () Bool)

(assert (=> b!5327870 m!6361696))

(declare-fun m!6361698 () Bool)

(assert (=> b!5327889 m!6361698))

(declare-fun m!6361700 () Bool)

(assert (=> setNonEmpty!34335 m!6361700))

(declare-fun m!6361702 () Bool)

(assert (=> b!5327878 m!6361702))

(declare-fun m!6361704 () Bool)

(assert (=> b!5327884 m!6361704))

(declare-fun m!6361706 () Bool)

(assert (=> b!5327884 m!6361706))

(declare-fun m!6361708 () Bool)

(assert (=> b!5327884 m!6361708))

(declare-fun m!6361710 () Bool)

(assert (=> b!5327884 m!6361710))

(declare-fun m!6361712 () Bool)

(assert (=> b!5327884 m!6361712))

(declare-fun m!6361714 () Bool)

(assert (=> b!5327884 m!6361714))

(assert (=> b!5327884 m!6361706))

(declare-fun m!6361716 () Bool)

(assert (=> b!5327884 m!6361716))

(declare-fun m!6361718 () Bool)

(assert (=> b!5327884 m!6361718))

(declare-fun m!6361720 () Bool)

(assert (=> b!5327884 m!6361720))

(assert (=> b!5327884 m!6361710))

(declare-fun m!6361722 () Bool)

(assert (=> b!5327884 m!6361722))

(declare-fun m!6361724 () Bool)

(assert (=> b!5327884 m!6361724))

(declare-fun m!6361726 () Bool)

(assert (=> b!5327884 m!6361726))

(declare-fun m!6361728 () Bool)

(assert (=> b!5327884 m!6361728))

(declare-fun m!6361730 () Bool)

(assert (=> b!5327884 m!6361730))

(declare-fun m!6361732 () Bool)

(assert (=> b!5327903 m!6361732))

(declare-fun m!6361734 () Bool)

(assert (=> b!5327880 m!6361734))

(declare-fun m!6361736 () Bool)

(assert (=> b!5327899 m!6361736))

(declare-fun m!6361738 () Bool)

(assert (=> b!5327899 m!6361738))

(declare-fun m!6361740 () Bool)

(assert (=> b!5327899 m!6361740))

(declare-fun m!6361742 () Bool)

(assert (=> b!5327895 m!6361742))

(declare-fun m!6361744 () Bool)

(assert (=> b!5327888 m!6361744))

(declare-fun m!6361746 () Bool)

(assert (=> b!5327881 m!6361746))

(declare-fun m!6361748 () Bool)

(assert (=> b!5327902 m!6361748))

(assert (=> b!5327902 m!6361692))

(declare-fun m!6361750 () Bool)

(assert (=> b!5327902 m!6361750))

(declare-fun m!6361752 () Bool)

(assert (=> b!5327900 m!6361752))

(declare-fun m!6361754 () Bool)

(assert (=> b!5327900 m!6361754))

(declare-fun m!6361756 () Bool)

(assert (=> b!5327900 m!6361756))

(declare-fun m!6361758 () Bool)

(assert (=> b!5327900 m!6361758))

(declare-fun m!6361760 () Bool)

(assert (=> b!5327900 m!6361760))

(declare-fun m!6361762 () Bool)

(assert (=> b!5327891 m!6361762))

(declare-fun m!6361764 () Bool)

(assert (=> b!5327891 m!6361764))

(declare-fun m!6361766 () Bool)

(assert (=> b!5327891 m!6361766))

(declare-fun m!6361768 () Bool)

(assert (=> b!5327891 m!6361768))

(declare-fun m!6361770 () Bool)

(assert (=> b!5327891 m!6361770))

(declare-fun m!6361772 () Bool)

(assert (=> b!5327891 m!6361772))

(declare-fun m!6361774 () Bool)

(assert (=> b!5327891 m!6361774))

(declare-fun m!6361776 () Bool)

(assert (=> b!5327898 m!6361776))

(declare-fun m!6361778 () Bool)

(assert (=> start!561594 m!6361778))

(declare-fun m!6361780 () Bool)

(assert (=> b!5327877 m!6361780))

(declare-fun m!6361782 () Bool)

(assert (=> b!5327871 m!6361782))

(check-sat (not b!5327881) (not b!5327889) (not b!5327882) (not b!5327877) (not b!5327895) (not start!561594) (not b!5327888) (not b!5327899) (not b!5327892) (not b!5327878) (not setNonEmpty!34335) (not b!5327872) (not b!5327879) (not b!5327891) (not b!5327870) (not b!5327880) (not b!5327901) (not b!5327902) (not b!5327900) (not b!5327885) (not b!5327903) (not b!5327896) tp_is_empty!39239 (not b!5327898) (not b!5327884) (not b!5327897) (not b!5327875) (not b!5327871) (not b!5327887) (not b!5327894))
(check-sat)
(get-model)

(declare-fun d!1710920 () Bool)

(declare-fun c!926373 () Bool)

(declare-fun isEmpty!33127 (List!61280) Bool)

(assert (=> d!1710920 (= c!926373 (isEmpty!33127 (t!374495 s!2326)))))

(declare-fun e!3309498 () Bool)

(assert (=> d!1710920 (= (matchZipper!1237 lt!2173802 (t!374495 s!2326)) e!3309498)))

(declare-fun b!5328038 () Bool)

(declare-fun nullableZipper!1352 ((InoxSet Context!8754)) Bool)

(assert (=> b!5328038 (= e!3309498 (nullableZipper!1352 lt!2173802))))

(declare-fun b!5328039 () Bool)

(declare-fun head!11422 (List!61280) C!30256)

(declare-fun tail!10519 (List!61280) List!61280)

(assert (=> b!5328039 (= e!3309498 (matchZipper!1237 (derivationStepZipper!1234 lt!2173802 (head!11422 (t!374495 s!2326))) (tail!10519 (t!374495 s!2326))))))

(assert (= (and d!1710920 c!926373) b!5328038))

(assert (= (and d!1710920 (not c!926373)) b!5328039))

(declare-fun m!6361872 () Bool)

(assert (=> d!1710920 m!6361872))

(declare-fun m!6361874 () Bool)

(assert (=> b!5328038 m!6361874))

(declare-fun m!6361876 () Bool)

(assert (=> b!5328039 m!6361876))

(assert (=> b!5328039 m!6361876))

(declare-fun m!6361878 () Bool)

(assert (=> b!5328039 m!6361878))

(declare-fun m!6361880 () Bool)

(assert (=> b!5328039 m!6361880))

(assert (=> b!5328039 m!6361878))

(assert (=> b!5328039 m!6361880))

(declare-fun m!6361882 () Bool)

(assert (=> b!5328039 m!6361882))

(assert (=> b!5327880 d!1710920))

(declare-fun b!5328122 () Bool)

(declare-fun e!3309550 () Bool)

(declare-fun e!3309549 () Bool)

(assert (=> b!5328122 (= e!3309550 e!3309549)))

(declare-fun c!926393 () Bool)

(assert (=> b!5328122 (= c!926393 ((_ is Star!14993) r!7292))))

(declare-fun b!5328123 () Bool)

(declare-fun e!3309551 () Bool)

(assert (=> b!5328123 (= e!3309549 e!3309551)))

(declare-fun res!2260021 () Bool)

(assert (=> b!5328123 (= res!2260021 (not (nullable!5162 (reg!15322 r!7292))))))

(assert (=> b!5328123 (=> (not res!2260021) (not e!3309551))))

(declare-fun d!1710924 () Bool)

(declare-fun res!2260018 () Bool)

(assert (=> d!1710924 (=> res!2260018 e!3309550)))

(assert (=> d!1710924 (= res!2260018 ((_ is ElementMatch!14993) r!7292))))

(assert (=> d!1710924 (= (validRegex!6729 r!7292) e!3309550)))

(declare-fun b!5328124 () Bool)

(declare-fun res!2260020 () Bool)

(declare-fun e!3309553 () Bool)

(assert (=> b!5328124 (=> (not res!2260020) (not e!3309553))))

(declare-fun call!380638 () Bool)

(assert (=> b!5328124 (= res!2260020 call!380638)))

(declare-fun e!3309554 () Bool)

(assert (=> b!5328124 (= e!3309554 e!3309553)))

(declare-fun b!5328125 () Bool)

(declare-fun res!2260019 () Bool)

(declare-fun e!3309548 () Bool)

(assert (=> b!5328125 (=> res!2260019 e!3309548)))

(assert (=> b!5328125 (= res!2260019 (not ((_ is Concat!23838) r!7292)))))

(assert (=> b!5328125 (= e!3309554 e!3309548)))

(declare-fun b!5328126 () Bool)

(declare-fun call!380636 () Bool)

(assert (=> b!5328126 (= e!3309553 call!380636)))

(declare-fun b!5328127 () Bool)

(assert (=> b!5328127 (= e!3309549 e!3309554)))

(declare-fun c!926394 () Bool)

(assert (=> b!5328127 (= c!926394 ((_ is Union!14993) r!7292))))

(declare-fun bm!380631 () Bool)

(declare-fun call!380637 () Bool)

(assert (=> bm!380631 (= call!380636 call!380637)))

(declare-fun bm!380632 () Bool)

(assert (=> bm!380632 (= call!380637 (validRegex!6729 (ite c!926393 (reg!15322 r!7292) (ite c!926394 (regTwo!30499 r!7292) (regTwo!30498 r!7292)))))))

(declare-fun b!5328128 () Bool)

(declare-fun e!3309552 () Bool)

(assert (=> b!5328128 (= e!3309548 e!3309552)))

(declare-fun res!2260022 () Bool)

(assert (=> b!5328128 (=> (not res!2260022) (not e!3309552))))

(assert (=> b!5328128 (= res!2260022 call!380638)))

(declare-fun b!5328129 () Bool)

(assert (=> b!5328129 (= e!3309552 call!380636)))

(declare-fun b!5328130 () Bool)

(assert (=> b!5328130 (= e!3309551 call!380637)))

(declare-fun bm!380633 () Bool)

(assert (=> bm!380633 (= call!380638 (validRegex!6729 (ite c!926394 (regOne!30499 r!7292) (regOne!30498 r!7292))))))

(assert (= (and d!1710924 (not res!2260018)) b!5328122))

(assert (= (and b!5328122 c!926393) b!5328123))

(assert (= (and b!5328122 (not c!926393)) b!5328127))

(assert (= (and b!5328123 res!2260021) b!5328130))

(assert (= (and b!5328127 c!926394) b!5328124))

(assert (= (and b!5328127 (not c!926394)) b!5328125))

(assert (= (and b!5328124 res!2260020) b!5328126))

(assert (= (and b!5328125 (not res!2260019)) b!5328128))

(assert (= (and b!5328128 res!2260022) b!5328129))

(assert (= (or b!5328126 b!5328129) bm!380631))

(assert (= (or b!5328124 b!5328128) bm!380633))

(assert (= (or b!5328130 bm!380631) bm!380632))

(declare-fun m!6361944 () Bool)

(assert (=> b!5328123 m!6361944))

(declare-fun m!6361946 () Bool)

(assert (=> bm!380632 m!6361946))

(declare-fun m!6361948 () Bool)

(assert (=> bm!380633 m!6361948))

(assert (=> start!561594 d!1710924))

(declare-fun d!1710942 () Bool)

(declare-fun lt!2173860 () Int)

(assert (=> d!1710942 (>= lt!2173860 0)))

(declare-fun e!3309571 () Int)

(assert (=> d!1710942 (= lt!2173860 e!3309571)))

(declare-fun c!926402 () Bool)

(assert (=> d!1710942 (= c!926402 ((_ is Cons!61154) (exprs!4877 lt!2173808)))))

(assert (=> d!1710942 (= (contextDepthTotal!126 lt!2173808) lt!2173860)))

(declare-fun b!5328153 () Bool)

(declare-fun regexDepthTotal!56 (Regex!14993) Int)

(assert (=> b!5328153 (= e!3309571 (+ (regexDepthTotal!56 (h!67602 (exprs!4877 lt!2173808))) (contextDepthTotal!126 (Context!8755 (t!374493 (exprs!4877 lt!2173808))))))))

(declare-fun b!5328154 () Bool)

(assert (=> b!5328154 (= e!3309571 1)))

(assert (= (and d!1710942 c!926402) b!5328153))

(assert (= (and d!1710942 (not c!926402)) b!5328154))

(declare-fun m!6361960 () Bool)

(assert (=> b!5328153 m!6361960))

(declare-fun m!6361962 () Bool)

(assert (=> b!5328153 m!6361962))

(assert (=> b!5327901 d!1710942))

(declare-fun d!1710950 () Bool)

(declare-fun lt!2173861 () Int)

(assert (=> d!1710950 (>= lt!2173861 0)))

(declare-fun e!3309572 () Int)

(assert (=> d!1710950 (= lt!2173861 e!3309572)))

(declare-fun c!926403 () Bool)

(assert (=> d!1710950 (= c!926403 ((_ is Cons!61154) (exprs!4877 (h!67603 zl!343))))))

(assert (=> d!1710950 (= (contextDepthTotal!126 (h!67603 zl!343)) lt!2173861)))

(declare-fun b!5328155 () Bool)

(assert (=> b!5328155 (= e!3309572 (+ (regexDepthTotal!56 (h!67602 (exprs!4877 (h!67603 zl!343)))) (contextDepthTotal!126 (Context!8755 (t!374493 (exprs!4877 (h!67603 zl!343)))))))))

(declare-fun b!5328156 () Bool)

(assert (=> b!5328156 (= e!3309572 1)))

(assert (= (and d!1710950 c!926403) b!5328155))

(assert (= (and d!1710950 (not c!926403)) b!5328156))

(declare-fun m!6361964 () Bool)

(assert (=> b!5328155 m!6361964))

(declare-fun m!6361966 () Bool)

(assert (=> b!5328155 m!6361966))

(assert (=> b!5327901 d!1710950))

(declare-fun d!1710952 () Bool)

(assert (=> d!1710952 (= (isEmpty!33124 (t!374493 (exprs!4877 (h!67603 zl!343)))) ((_ is Nil!61154) (t!374493 (exprs!4877 (h!67603 zl!343)))))))

(assert (=> b!5327903 d!1710952))

(declare-fun b!5328246 () Bool)

(declare-fun e!3309627 () (InoxSet Context!8754))

(declare-fun e!3309629 () (InoxSet Context!8754))

(assert (=> b!5328246 (= e!3309627 e!3309629)))

(declare-fun c!926445 () Bool)

(assert (=> b!5328246 (= c!926445 ((_ is Concat!23838) (regOne!30498 (regOne!30498 r!7292))))))

(declare-fun b!5328247 () Bool)

(declare-fun e!3309625 () (InoxSet Context!8754))

(declare-fun call!380686 () (InoxSet Context!8754))

(assert (=> b!5328247 (= e!3309625 call!380686)))

(declare-fun b!5328248 () Bool)

(declare-fun call!380685 () (InoxSet Context!8754))

(declare-fun call!380687 () (InoxSet Context!8754))

(assert (=> b!5328248 (= e!3309627 ((_ map or) call!380685 call!380687))))

(declare-fun bm!380678 () Bool)

(assert (=> bm!380678 (= call!380686 call!380687)))

(declare-fun b!5328249 () Bool)

(assert (=> b!5328249 (= e!3309629 call!380686)))

(declare-fun b!5328250 () Bool)

(assert (=> b!5328250 (= e!3309625 ((as const (Array Context!8754 Bool)) false))))

(declare-fun d!1710954 () Bool)

(declare-fun c!926441 () Bool)

(assert (=> d!1710954 (= c!926441 (and ((_ is ElementMatch!14993) (regOne!30498 (regOne!30498 r!7292))) (= (c!926337 (regOne!30498 (regOne!30498 r!7292))) (h!67604 s!2326))))))

(declare-fun e!3309630 () (InoxSet Context!8754))

(assert (=> d!1710954 (= (derivationStepZipperDown!441 (regOne!30498 (regOne!30498 r!7292)) (Context!8755 lt!2173812) (h!67604 s!2326)) e!3309630)))

(declare-fun b!5328251 () Bool)

(declare-fun e!3309626 () (InoxSet Context!8754))

(declare-fun call!380683 () (InoxSet Context!8754))

(assert (=> b!5328251 (= e!3309626 ((_ map or) call!380685 call!380683))))

(declare-fun call!380684 () List!61278)

(declare-fun bm!380679 () Bool)

(declare-fun c!926444 () Bool)

(declare-fun c!926443 () Bool)

(assert (=> bm!380679 (= call!380683 (derivationStepZipperDown!441 (ite c!926444 (regTwo!30499 (regOne!30498 (regOne!30498 r!7292))) (ite c!926443 (regTwo!30498 (regOne!30498 (regOne!30498 r!7292))) (ite c!926445 (regOne!30498 (regOne!30498 (regOne!30498 r!7292))) (reg!15322 (regOne!30498 (regOne!30498 r!7292)))))) (ite (or c!926444 c!926443) (Context!8755 lt!2173812) (Context!8755 call!380684)) (h!67604 s!2326)))))

(declare-fun bm!380680 () Bool)

(declare-fun call!380688 () List!61278)

(assert (=> bm!380680 (= call!380684 call!380688)))

(declare-fun b!5328252 () Bool)

(declare-fun e!3309628 () Bool)

(assert (=> b!5328252 (= c!926443 e!3309628)))

(declare-fun res!2260048 () Bool)

(assert (=> b!5328252 (=> (not res!2260048) (not e!3309628))))

(assert (=> b!5328252 (= res!2260048 ((_ is Concat!23838) (regOne!30498 (regOne!30498 r!7292))))))

(assert (=> b!5328252 (= e!3309626 e!3309627)))

(declare-fun b!5328253 () Bool)

(assert (=> b!5328253 (= e!3309630 (store ((as const (Array Context!8754 Bool)) false) (Context!8755 lt!2173812) true))))

(declare-fun b!5328254 () Bool)

(declare-fun c!926442 () Bool)

(assert (=> b!5328254 (= c!926442 ((_ is Star!14993) (regOne!30498 (regOne!30498 r!7292))))))

(assert (=> b!5328254 (= e!3309629 e!3309625)))

(declare-fun bm!380681 () Bool)

(declare-fun $colon$colon!1401 (List!61278 Regex!14993) List!61278)

(assert (=> bm!380681 (= call!380688 ($colon$colon!1401 (exprs!4877 (Context!8755 lt!2173812)) (ite (or c!926443 c!926445) (regTwo!30498 (regOne!30498 (regOne!30498 r!7292))) (regOne!30498 (regOne!30498 r!7292)))))))

(declare-fun bm!380682 () Bool)

(assert (=> bm!380682 (= call!380687 call!380683)))

(declare-fun b!5328255 () Bool)

(assert (=> b!5328255 (= e!3309630 e!3309626)))

(assert (=> b!5328255 (= c!926444 ((_ is Union!14993) (regOne!30498 (regOne!30498 r!7292))))))

(declare-fun bm!380683 () Bool)

(assert (=> bm!380683 (= call!380685 (derivationStepZipperDown!441 (ite c!926444 (regOne!30499 (regOne!30498 (regOne!30498 r!7292))) (regOne!30498 (regOne!30498 (regOne!30498 r!7292)))) (ite c!926444 (Context!8755 lt!2173812) (Context!8755 call!380688)) (h!67604 s!2326)))))

(declare-fun b!5328256 () Bool)

(assert (=> b!5328256 (= e!3309628 (nullable!5162 (regOne!30498 (regOne!30498 (regOne!30498 r!7292)))))))

(assert (= (and d!1710954 c!926441) b!5328253))

(assert (= (and d!1710954 (not c!926441)) b!5328255))

(assert (= (and b!5328255 c!926444) b!5328251))

(assert (= (and b!5328255 (not c!926444)) b!5328252))

(assert (= (and b!5328252 res!2260048) b!5328256))

(assert (= (and b!5328252 c!926443) b!5328248))

(assert (= (and b!5328252 (not c!926443)) b!5328246))

(assert (= (and b!5328246 c!926445) b!5328249))

(assert (= (and b!5328246 (not c!926445)) b!5328254))

(assert (= (and b!5328254 c!926442) b!5328247))

(assert (= (and b!5328254 (not c!926442)) b!5328250))

(assert (= (or b!5328249 b!5328247) bm!380680))

(assert (= (or b!5328249 b!5328247) bm!380678))

(assert (= (or b!5328248 bm!380680) bm!380681))

(assert (= (or b!5328248 bm!380678) bm!380682))

(assert (= (or b!5328251 bm!380682) bm!380679))

(assert (= (or b!5328251 b!5328248) bm!380683))

(declare-fun m!6362010 () Bool)

(assert (=> b!5328253 m!6362010))

(declare-fun m!6362012 () Bool)

(assert (=> bm!380683 m!6362012))

(declare-fun m!6362014 () Bool)

(assert (=> bm!380679 m!6362014))

(declare-fun m!6362016 () Bool)

(assert (=> b!5328256 m!6362016))

(declare-fun m!6362018 () Bool)

(assert (=> bm!380681 m!6362018))

(assert (=> b!5327881 d!1710954))

(declare-fun e!3309651 () Bool)

(declare-fun d!1710972 () Bool)

(assert (=> d!1710972 (= (matchZipper!1237 ((_ map or) lt!2173814 lt!2173807) (t!374495 s!2326)) e!3309651)))

(declare-fun res!2260062 () Bool)

(assert (=> d!1710972 (=> res!2260062 e!3309651)))

(assert (=> d!1710972 (= res!2260062 (matchZipper!1237 lt!2173814 (t!374495 s!2326)))))

(declare-fun lt!2173872 () Unit!153490)

(declare-fun choose!39898 ((InoxSet Context!8754) (InoxSet Context!8754) List!61280) Unit!153490)

(assert (=> d!1710972 (= lt!2173872 (choose!39898 lt!2173814 lt!2173807 (t!374495 s!2326)))))

(assert (=> d!1710972 (= (lemmaZipperConcatMatchesSameAsBothZippers!230 lt!2173814 lt!2173807 (t!374495 s!2326)) lt!2173872)))

(declare-fun b!5328292 () Bool)

(assert (=> b!5328292 (= e!3309651 (matchZipper!1237 lt!2173807 (t!374495 s!2326)))))

(assert (= (and d!1710972 (not res!2260062)) b!5328292))

(assert (=> d!1710972 m!6361750))

(assert (=> d!1710972 m!6361692))

(declare-fun m!6362032 () Bool)

(assert (=> d!1710972 m!6362032))

(assert (=> b!5328292 m!6361780))

(assert (=> b!5327902 d!1710972))

(declare-fun d!1710980 () Bool)

(declare-fun c!926457 () Bool)

(assert (=> d!1710980 (= c!926457 (isEmpty!33127 (t!374495 s!2326)))))

(declare-fun e!3309652 () Bool)

(assert (=> d!1710980 (= (matchZipper!1237 lt!2173814 (t!374495 s!2326)) e!3309652)))

(declare-fun b!5328293 () Bool)

(assert (=> b!5328293 (= e!3309652 (nullableZipper!1352 lt!2173814))))

(declare-fun b!5328294 () Bool)

(assert (=> b!5328294 (= e!3309652 (matchZipper!1237 (derivationStepZipper!1234 lt!2173814 (head!11422 (t!374495 s!2326))) (tail!10519 (t!374495 s!2326))))))

(assert (= (and d!1710980 c!926457) b!5328293))

(assert (= (and d!1710980 (not c!926457)) b!5328294))

(assert (=> d!1710980 m!6361872))

(declare-fun m!6362040 () Bool)

(assert (=> b!5328293 m!6362040))

(assert (=> b!5328294 m!6361876))

(assert (=> b!5328294 m!6361876))

(declare-fun m!6362042 () Bool)

(assert (=> b!5328294 m!6362042))

(assert (=> b!5328294 m!6361880))

(assert (=> b!5328294 m!6362042))

(assert (=> b!5328294 m!6361880))

(declare-fun m!6362044 () Bool)

(assert (=> b!5328294 m!6362044))

(assert (=> b!5327902 d!1710980))

(declare-fun d!1710984 () Bool)

(declare-fun c!926458 () Bool)

(assert (=> d!1710984 (= c!926458 (isEmpty!33127 (t!374495 s!2326)))))

(declare-fun e!3309653 () Bool)

(assert (=> d!1710984 (= (matchZipper!1237 ((_ map or) lt!2173814 lt!2173807) (t!374495 s!2326)) e!3309653)))

(declare-fun b!5328295 () Bool)

(assert (=> b!5328295 (= e!3309653 (nullableZipper!1352 ((_ map or) lt!2173814 lt!2173807)))))

(declare-fun b!5328296 () Bool)

(assert (=> b!5328296 (= e!3309653 (matchZipper!1237 (derivationStepZipper!1234 ((_ map or) lt!2173814 lt!2173807) (head!11422 (t!374495 s!2326))) (tail!10519 (t!374495 s!2326))))))

(assert (= (and d!1710984 c!926458) b!5328295))

(assert (= (and d!1710984 (not c!926458)) b!5328296))

(assert (=> d!1710984 m!6361872))

(declare-fun m!6362048 () Bool)

(assert (=> b!5328295 m!6362048))

(assert (=> b!5328296 m!6361876))

(assert (=> b!5328296 m!6361876))

(declare-fun m!6362050 () Bool)

(assert (=> b!5328296 m!6362050))

(assert (=> b!5328296 m!6361880))

(assert (=> b!5328296 m!6362050))

(assert (=> b!5328296 m!6361880))

(declare-fun m!6362052 () Bool)

(assert (=> b!5328296 m!6362052))

(assert (=> b!5327902 d!1710984))

(declare-fun bs!1234960 () Bool)

(declare-fun b!5328395 () Bool)

(assert (= bs!1234960 (and b!5328395 b!5327897)))

(declare-fun lambda!272163 () Int)

(assert (=> bs!1234960 (not (= lambda!272163 lambda!272110))))

(assert (=> bs!1234960 (not (= lambda!272163 lambda!272111))))

(declare-fun bs!1234961 () Bool)

(assert (= bs!1234961 (and b!5328395 b!5327884)))

(assert (=> bs!1234961 (not (= lambda!272163 lambda!272113))))

(assert (=> bs!1234961 (not (= lambda!272163 lambda!272114))))

(assert (=> b!5328395 true))

(assert (=> b!5328395 true))

(declare-fun bs!1234968 () Bool)

(declare-fun b!5328390 () Bool)

(assert (= bs!1234968 (and b!5328390 b!5327884)))

(declare-fun lambda!272165 () Int)

(assert (=> bs!1234968 (= (and (= (regOne!30498 r!7292) (regOne!30498 (regOne!30498 r!7292))) (= (regTwo!30498 r!7292) lt!2173809)) (= lambda!272165 lambda!272114))))

(declare-fun bs!1234969 () Bool)

(assert (= bs!1234969 (and b!5328390 b!5328395)))

(assert (=> bs!1234969 (not (= lambda!272165 lambda!272163))))

(declare-fun bs!1234970 () Bool)

(assert (= bs!1234970 (and b!5328390 b!5327897)))

(assert (=> bs!1234970 (not (= lambda!272165 lambda!272110))))

(assert (=> bs!1234968 (not (= lambda!272165 lambda!272113))))

(assert (=> bs!1234970 (= lambda!272165 lambda!272111)))

(assert (=> b!5328390 true))

(assert (=> b!5328390 true))

(declare-fun e!3309712 () Bool)

(declare-fun call!380703 () Bool)

(assert (=> b!5328390 (= e!3309712 call!380703)))

(declare-fun bm!380697 () Bool)

(declare-fun c!926498 () Bool)

(assert (=> bm!380697 (= call!380703 (Exists!2174 (ite c!926498 lambda!272163 lambda!272165)))))

(declare-fun b!5328391 () Bool)

(declare-fun c!926499 () Bool)

(assert (=> b!5328391 (= c!926499 ((_ is ElementMatch!14993) r!7292))))

(declare-fun e!3309708 () Bool)

(declare-fun e!3309710 () Bool)

(assert (=> b!5328391 (= e!3309708 e!3309710)))

(declare-fun bm!380698 () Bool)

(declare-fun call!380702 () Bool)

(assert (=> bm!380698 (= call!380702 (isEmpty!33127 s!2326))))

(declare-fun b!5328392 () Bool)

(declare-fun e!3309713 () Bool)

(assert (=> b!5328392 (= e!3309713 call!380702)))

(declare-fun b!5328393 () Bool)

(declare-fun e!3309711 () Bool)

(assert (=> b!5328393 (= e!3309711 e!3309712)))

(assert (=> b!5328393 (= c!926498 ((_ is Star!14993) r!7292))))

(declare-fun b!5328394 () Bool)

(declare-fun e!3309707 () Bool)

(assert (=> b!5328394 (= e!3309707 (matchRSpec!2096 (regTwo!30499 r!7292) s!2326))))

(declare-fun e!3309709 () Bool)

(assert (=> b!5328395 (= e!3309709 call!380703)))

(declare-fun b!5328397 () Bool)

(assert (=> b!5328397 (= e!3309711 e!3309707)))

(declare-fun res!2260092 () Bool)

(assert (=> b!5328397 (= res!2260092 (matchRSpec!2096 (regOne!30499 r!7292) s!2326))))

(assert (=> b!5328397 (=> res!2260092 e!3309707)))

(declare-fun b!5328398 () Bool)

(assert (=> b!5328398 (= e!3309713 e!3309708)))

(declare-fun res!2260090 () Bool)

(assert (=> b!5328398 (= res!2260090 (not ((_ is EmptyLang!14993) r!7292)))))

(assert (=> b!5328398 (=> (not res!2260090) (not e!3309708))))

(declare-fun b!5328399 () Bool)

(declare-fun c!926500 () Bool)

(assert (=> b!5328399 (= c!926500 ((_ is Union!14993) r!7292))))

(assert (=> b!5328399 (= e!3309710 e!3309711)))

(declare-fun b!5328400 () Bool)

(assert (=> b!5328400 (= e!3309710 (= s!2326 (Cons!61156 (c!926337 r!7292) Nil!61156)))))

(declare-fun b!5328396 () Bool)

(declare-fun res!2260091 () Bool)

(assert (=> b!5328396 (=> res!2260091 e!3309709)))

(assert (=> b!5328396 (= res!2260091 call!380702)))

(assert (=> b!5328396 (= e!3309712 e!3309709)))

(declare-fun d!1710988 () Bool)

(declare-fun c!926497 () Bool)

(assert (=> d!1710988 (= c!926497 ((_ is EmptyExpr!14993) r!7292))))

(assert (=> d!1710988 (= (matchRSpec!2096 r!7292 s!2326) e!3309713)))

(assert (= (and d!1710988 c!926497) b!5328392))

(assert (= (and d!1710988 (not c!926497)) b!5328398))

(assert (= (and b!5328398 res!2260090) b!5328391))

(assert (= (and b!5328391 c!926499) b!5328400))

(assert (= (and b!5328391 (not c!926499)) b!5328399))

(assert (= (and b!5328399 c!926500) b!5328397))

(assert (= (and b!5328399 (not c!926500)) b!5328393))

(assert (= (and b!5328397 (not res!2260092)) b!5328394))

(assert (= (and b!5328393 c!926498) b!5328396))

(assert (= (and b!5328393 (not c!926498)) b!5328390))

(assert (= (and b!5328396 (not res!2260091)) b!5328395))

(assert (= (or b!5328395 b!5328390) bm!380697))

(assert (= (or b!5328392 b!5328396) bm!380698))

(declare-fun m!6362156 () Bool)

(assert (=> bm!380697 m!6362156))

(declare-fun m!6362158 () Bool)

(assert (=> bm!380698 m!6362158))

(declare-fun m!6362160 () Bool)

(assert (=> b!5328394 m!6362160))

(declare-fun m!6362162 () Bool)

(assert (=> b!5328397 m!6362162))

(assert (=> b!5327899 d!1710988))

(declare-fun b!5328461 () Bool)

(declare-fun e!3309748 () Bool)

(declare-fun e!3309746 () Bool)

(assert (=> b!5328461 (= e!3309748 e!3309746)))

(declare-fun c!926523 () Bool)

(assert (=> b!5328461 (= c!926523 ((_ is EmptyLang!14993) r!7292))))

(declare-fun b!5328462 () Bool)

(declare-fun e!3309747 () Bool)

(assert (=> b!5328462 (= e!3309747 (not (= (head!11422 s!2326) (c!926337 r!7292))))))

(declare-fun b!5328463 () Bool)

(declare-fun res!2260116 () Bool)

(declare-fun e!3309750 () Bool)

(assert (=> b!5328463 (=> (not res!2260116) (not e!3309750))))

(declare-fun call!380706 () Bool)

(assert (=> b!5328463 (= res!2260116 (not call!380706))))

(declare-fun b!5328464 () Bool)

(declare-fun res!2260119 () Bool)

(declare-fun e!3309751 () Bool)

(assert (=> b!5328464 (=> res!2260119 e!3309751)))

(assert (=> b!5328464 (= res!2260119 (not ((_ is ElementMatch!14993) r!7292)))))

(assert (=> b!5328464 (= e!3309746 e!3309751)))

(declare-fun b!5328465 () Bool)

(declare-fun e!3309749 () Bool)

(assert (=> b!5328465 (= e!3309751 e!3309749)))

(declare-fun res!2260118 () Bool)

(assert (=> b!5328465 (=> (not res!2260118) (not e!3309749))))

(declare-fun lt!2173906 () Bool)

(assert (=> b!5328465 (= res!2260118 (not lt!2173906))))

(declare-fun b!5328466 () Bool)

(assert (=> b!5328466 (= e!3309750 (= (head!11422 s!2326) (c!926337 r!7292)))))

(declare-fun b!5328467 () Bool)

(declare-fun res!2260114 () Bool)

(assert (=> b!5328467 (=> (not res!2260114) (not e!3309750))))

(assert (=> b!5328467 (= res!2260114 (isEmpty!33127 (tail!10519 s!2326)))))

(declare-fun b!5328460 () Bool)

(assert (=> b!5328460 (= e!3309749 e!3309747)))

(declare-fun res!2260121 () Bool)

(assert (=> b!5328460 (=> res!2260121 e!3309747)))

(assert (=> b!5328460 (= res!2260121 call!380706)))

(declare-fun d!1711014 () Bool)

(assert (=> d!1711014 e!3309748))

(declare-fun c!926522 () Bool)

(assert (=> d!1711014 (= c!926522 ((_ is EmptyExpr!14993) r!7292))))

(declare-fun e!3309752 () Bool)

(assert (=> d!1711014 (= lt!2173906 e!3309752)))

(declare-fun c!926521 () Bool)

(assert (=> d!1711014 (= c!926521 (isEmpty!33127 s!2326))))

(assert (=> d!1711014 (validRegex!6729 r!7292)))

(assert (=> d!1711014 (= (matchR!7178 r!7292 s!2326) lt!2173906)))

(declare-fun b!5328468 () Bool)

(assert (=> b!5328468 (= e!3309746 (not lt!2173906))))

(declare-fun b!5328469 () Bool)

(assert (=> b!5328469 (= e!3309752 (nullable!5162 r!7292))))

(declare-fun b!5328470 () Bool)

(declare-fun res!2260117 () Bool)

(assert (=> b!5328470 (=> res!2260117 e!3309751)))

(assert (=> b!5328470 (= res!2260117 e!3309750)))

(declare-fun res!2260115 () Bool)

(assert (=> b!5328470 (=> (not res!2260115) (not e!3309750))))

(assert (=> b!5328470 (= res!2260115 lt!2173906)))

(declare-fun b!5328471 () Bool)

(declare-fun derivativeStep!4173 (Regex!14993 C!30256) Regex!14993)

(assert (=> b!5328471 (= e!3309752 (matchR!7178 (derivativeStep!4173 r!7292 (head!11422 s!2326)) (tail!10519 s!2326)))))

(declare-fun b!5328472 () Bool)

(declare-fun res!2260120 () Bool)

(assert (=> b!5328472 (=> res!2260120 e!3309747)))

(assert (=> b!5328472 (= res!2260120 (not (isEmpty!33127 (tail!10519 s!2326))))))

(declare-fun b!5328474 () Bool)

(assert (=> b!5328474 (= e!3309748 (= lt!2173906 call!380706))))

(declare-fun bm!380701 () Bool)

(assert (=> bm!380701 (= call!380706 (isEmpty!33127 s!2326))))

(assert (= (and d!1711014 c!926521) b!5328469))

(assert (= (and d!1711014 (not c!926521)) b!5328471))

(assert (= (and d!1711014 c!926522) b!5328474))

(assert (= (and d!1711014 (not c!926522)) b!5328461))

(assert (= (and b!5328461 c!926523) b!5328468))

(assert (= (and b!5328461 (not c!926523)) b!5328464))

(assert (= (and b!5328464 (not res!2260119)) b!5328470))

(assert (= (and b!5328470 res!2260115) b!5328463))

(assert (= (and b!5328463 res!2260116) b!5328467))

(assert (= (and b!5328467 res!2260114) b!5328466))

(assert (= (and b!5328470 (not res!2260117)) b!5328465))

(assert (= (and b!5328465 res!2260118) b!5328460))

(assert (= (and b!5328460 (not res!2260121)) b!5328472))

(assert (= (and b!5328472 (not res!2260120)) b!5328462))

(assert (= (or b!5328474 b!5328460 b!5328463) bm!380701))

(assert (=> bm!380701 m!6362158))

(declare-fun m!6362202 () Bool)

(assert (=> b!5328467 m!6362202))

(assert (=> b!5328467 m!6362202))

(declare-fun m!6362204 () Bool)

(assert (=> b!5328467 m!6362204))

(declare-fun m!6362206 () Bool)

(assert (=> b!5328462 m!6362206))

(assert (=> d!1711014 m!6362158))

(assert (=> d!1711014 m!6361778))

(assert (=> b!5328471 m!6362206))

(assert (=> b!5328471 m!6362206))

(declare-fun m!6362208 () Bool)

(assert (=> b!5328471 m!6362208))

(assert (=> b!5328471 m!6362202))

(assert (=> b!5328471 m!6362208))

(assert (=> b!5328471 m!6362202))

(declare-fun m!6362210 () Bool)

(assert (=> b!5328471 m!6362210))

(declare-fun m!6362212 () Bool)

(assert (=> b!5328469 m!6362212))

(assert (=> b!5328472 m!6362202))

(assert (=> b!5328472 m!6362202))

(assert (=> b!5328472 m!6362204))

(assert (=> b!5328466 m!6362206))

(assert (=> b!5327899 d!1711014))

(declare-fun d!1711034 () Bool)

(assert (=> d!1711034 (= (matchR!7178 r!7292 s!2326) (matchRSpec!2096 r!7292 s!2326))))

(declare-fun lt!2173910 () Unit!153490)

(declare-fun choose!39899 (Regex!14993 List!61280) Unit!153490)

(assert (=> d!1711034 (= lt!2173910 (choose!39899 r!7292 s!2326))))

(assert (=> d!1711034 (validRegex!6729 r!7292)))

(assert (=> d!1711034 (= (mainMatchTheorem!2096 r!7292 s!2326) lt!2173910)))

(declare-fun bs!1234982 () Bool)

(assert (= bs!1234982 d!1711034))

(assert (=> bs!1234982 m!6361738))

(assert (=> bs!1234982 m!6361736))

(declare-fun m!6362216 () Bool)

(assert (=> bs!1234982 m!6362216))

(assert (=> bs!1234982 m!6361778))

(assert (=> b!5327899 d!1711034))

(declare-fun bs!1234983 () Bool)

(declare-fun d!1711036 () Bool)

(assert (= bs!1234983 (and d!1711036 b!5327884)))

(declare-fun lambda!272174 () Int)

(assert (=> bs!1234983 (= lambda!272174 lambda!272115)))

(assert (=> d!1711036 (= (inv!80729 setElem!34335) (forall!14411 (exprs!4877 setElem!34335) lambda!272174))))

(declare-fun bs!1234984 () Bool)

(assert (= bs!1234984 d!1711036))

(declare-fun m!6362218 () Bool)

(assert (=> bs!1234984 m!6362218))

(assert (=> setNonEmpty!34335 d!1711036))

(declare-fun d!1711038 () Bool)

(declare-fun nullableFct!1504 (Regex!14993) Bool)

(assert (=> d!1711038 (= (nullable!5162 (regOne!30498 (regOne!30498 r!7292))) (nullableFct!1504 (regOne!30498 (regOne!30498 r!7292))))))

(declare-fun bs!1234985 () Bool)

(assert (= bs!1234985 d!1711038))

(declare-fun m!6362220 () Bool)

(assert (=> bs!1234985 m!6362220))

(assert (=> b!5327898 d!1711038))

(declare-fun b!5328541 () Bool)

(assert (=> b!5328541 true))

(declare-fun bs!1234989 () Bool)

(declare-fun b!5328543 () Bool)

(assert (= bs!1234989 (and b!5328543 b!5328541)))

(declare-fun lambda!272182 () Int)

(declare-fun lt!2173920 () Int)

(declare-fun lambda!272183 () Int)

(declare-fun lt!2173921 () Int)

(assert (=> bs!1234989 (= (= lt!2173921 lt!2173920) (= lambda!272183 lambda!272182))))

(assert (=> b!5328543 true))

(declare-fun d!1711040 () Bool)

(declare-fun e!3309784 () Bool)

(assert (=> d!1711040 e!3309784))

(declare-fun res!2260125 () Bool)

(assert (=> d!1711040 (=> (not res!2260125) (not e!3309784))))

(assert (=> d!1711040 (= res!2260125 (>= lt!2173921 0))))

(declare-fun e!3309783 () Int)

(assert (=> d!1711040 (= lt!2173921 e!3309783)))

(declare-fun c!926536 () Bool)

(assert (=> d!1711040 (= c!926536 ((_ is Cons!61155) lt!2173795))))

(assert (=> d!1711040 (= (zipperDepth!102 lt!2173795) lt!2173921)))

(assert (=> b!5328541 (= e!3309783 lt!2173920)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!57 (Context!8754) Int)

(assert (=> b!5328541 (= lt!2173920 (maxBigInt!0 (contextDepth!57 (h!67603 lt!2173795)) (zipperDepth!102 (t!374494 lt!2173795))))))

(declare-fun lt!2173922 () Unit!153490)

(declare-fun lambda!272181 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!51 (List!61279 Int Int Int) Unit!153490)

(assert (=> b!5328541 (= lt!2173922 (lemmaForallContextDepthBiggerThanTransitive!51 (t!374494 lt!2173795) lt!2173920 (zipperDepth!102 (t!374494 lt!2173795)) lambda!272181))))

(declare-fun forall!14412 (List!61279 Int) Bool)

(assert (=> b!5328541 (forall!14412 (t!374494 lt!2173795) lambda!272182)))

(declare-fun lt!2173919 () Unit!153490)

(assert (=> b!5328541 (= lt!2173919 lt!2173922)))

(declare-fun b!5328542 () Bool)

(assert (=> b!5328542 (= e!3309783 0)))

(assert (=> b!5328543 (= e!3309784 (forall!14412 lt!2173795 lambda!272183))))

(assert (= (and d!1711040 c!926536) b!5328541))

(assert (= (and d!1711040 (not c!926536)) b!5328542))

(assert (= (and d!1711040 res!2260125) b!5328543))

(declare-fun m!6362228 () Bool)

(assert (=> b!5328541 m!6362228))

(declare-fun m!6362230 () Bool)

(assert (=> b!5328541 m!6362230))

(declare-fun m!6362232 () Bool)

(assert (=> b!5328541 m!6362232))

(assert (=> b!5328541 m!6362230))

(assert (=> b!5328541 m!6362228))

(declare-fun m!6362234 () Bool)

(assert (=> b!5328541 m!6362234))

(assert (=> b!5328541 m!6362228))

(declare-fun m!6362236 () Bool)

(assert (=> b!5328541 m!6362236))

(declare-fun m!6362238 () Bool)

(assert (=> b!5328543 m!6362238))

(assert (=> b!5327879 d!1711040))

(declare-fun bs!1234990 () Bool)

(declare-fun b!5328546 () Bool)

(assert (= bs!1234990 (and b!5328546 b!5328541)))

(declare-fun lambda!272184 () Int)

(assert (=> bs!1234990 (= lambda!272184 lambda!272181)))

(declare-fun lt!2173924 () Int)

(declare-fun lambda!272185 () Int)

(assert (=> bs!1234990 (= (= lt!2173924 lt!2173920) (= lambda!272185 lambda!272182))))

(declare-fun bs!1234991 () Bool)

(assert (= bs!1234991 (and b!5328546 b!5328543)))

(assert (=> bs!1234991 (= (= lt!2173924 lt!2173921) (= lambda!272185 lambda!272183))))

(assert (=> b!5328546 true))

(declare-fun bs!1234992 () Bool)

(declare-fun b!5328548 () Bool)

(assert (= bs!1234992 (and b!5328548 b!5328541)))

(declare-fun lambda!272186 () Int)

(declare-fun lt!2173925 () Int)

(assert (=> bs!1234992 (= (= lt!2173925 lt!2173920) (= lambda!272186 lambda!272182))))

(declare-fun bs!1234993 () Bool)

(assert (= bs!1234993 (and b!5328548 b!5328543)))

(assert (=> bs!1234993 (= (= lt!2173925 lt!2173921) (= lambda!272186 lambda!272183))))

(declare-fun bs!1234994 () Bool)

(assert (= bs!1234994 (and b!5328548 b!5328546)))

(assert (=> bs!1234994 (= (= lt!2173925 lt!2173924) (= lambda!272186 lambda!272185))))

(assert (=> b!5328548 true))

(declare-fun d!1711048 () Bool)

(declare-fun e!3309786 () Bool)

(assert (=> d!1711048 e!3309786))

(declare-fun res!2260126 () Bool)

(assert (=> d!1711048 (=> (not res!2260126) (not e!3309786))))

(assert (=> d!1711048 (= res!2260126 (>= lt!2173925 0))))

(declare-fun e!3309785 () Int)

(assert (=> d!1711048 (= lt!2173925 e!3309785)))

(declare-fun c!926537 () Bool)

(assert (=> d!1711048 (= c!926537 ((_ is Cons!61155) zl!343))))

(assert (=> d!1711048 (= (zipperDepth!102 zl!343) lt!2173925)))

(assert (=> b!5328546 (= e!3309785 lt!2173924)))

(assert (=> b!5328546 (= lt!2173924 (maxBigInt!0 (contextDepth!57 (h!67603 zl!343)) (zipperDepth!102 (t!374494 zl!343))))))

(declare-fun lt!2173926 () Unit!153490)

(assert (=> b!5328546 (= lt!2173926 (lemmaForallContextDepthBiggerThanTransitive!51 (t!374494 zl!343) lt!2173924 (zipperDepth!102 (t!374494 zl!343)) lambda!272184))))

(assert (=> b!5328546 (forall!14412 (t!374494 zl!343) lambda!272185)))

(declare-fun lt!2173923 () Unit!153490)

(assert (=> b!5328546 (= lt!2173923 lt!2173926)))

(declare-fun b!5328547 () Bool)

(assert (=> b!5328547 (= e!3309785 0)))

(assert (=> b!5328548 (= e!3309786 (forall!14412 zl!343 lambda!272186))))

(assert (= (and d!1711048 c!926537) b!5328546))

(assert (= (and d!1711048 (not c!926537)) b!5328547))

(assert (= (and d!1711048 res!2260126) b!5328548))

(declare-fun m!6362240 () Bool)

(assert (=> b!5328546 m!6362240))

(declare-fun m!6362242 () Bool)

(assert (=> b!5328546 m!6362242))

(declare-fun m!6362244 () Bool)

(assert (=> b!5328546 m!6362244))

(assert (=> b!5328546 m!6362242))

(assert (=> b!5328546 m!6362240))

(declare-fun m!6362246 () Bool)

(assert (=> b!5328546 m!6362246))

(assert (=> b!5328546 m!6362240))

(declare-fun m!6362248 () Bool)

(assert (=> b!5328546 m!6362248))

(declare-fun m!6362250 () Bool)

(assert (=> b!5328548 m!6362250))

(assert (=> b!5327879 d!1711048))

(declare-fun d!1711050 () Bool)

(declare-fun choose!39900 ((InoxSet Context!8754) Int) (InoxSet Context!8754))

(assert (=> d!1711050 (= (flatMap!720 lt!2173806 lambda!272112) (choose!39900 lt!2173806 lambda!272112))))

(declare-fun bs!1234995 () Bool)

(assert (= bs!1234995 d!1711050))

(declare-fun m!6362252 () Bool)

(assert (=> bs!1234995 m!6362252))

(assert (=> b!5327900 d!1711050))

(declare-fun b!5328559 () Bool)

(declare-fun e!3309795 () Bool)

(assert (=> b!5328559 (= e!3309795 (nullable!5162 (h!67602 (exprs!4877 lt!2173808))))))

(declare-fun b!5328560 () Bool)

(declare-fun e!3309793 () (InoxSet Context!8754))

(declare-fun e!3309794 () (InoxSet Context!8754))

(assert (=> b!5328560 (= e!3309793 e!3309794)))

(declare-fun c!926543 () Bool)

(assert (=> b!5328560 (= c!926543 ((_ is Cons!61154) (exprs!4877 lt!2173808)))))

(declare-fun b!5328561 () Bool)

(declare-fun call!380710 () (InoxSet Context!8754))

(assert (=> b!5328561 (= e!3309794 call!380710)))

(declare-fun b!5328562 () Bool)

(assert (=> b!5328562 (= e!3309793 ((_ map or) call!380710 (derivationStepZipperUp!365 (Context!8755 (t!374493 (exprs!4877 lt!2173808))) (h!67604 s!2326))))))

(declare-fun bm!380705 () Bool)

(assert (=> bm!380705 (= call!380710 (derivationStepZipperDown!441 (h!67602 (exprs!4877 lt!2173808)) (Context!8755 (t!374493 (exprs!4877 lt!2173808))) (h!67604 s!2326)))))

(declare-fun d!1711052 () Bool)

(declare-fun c!926542 () Bool)

(assert (=> d!1711052 (= c!926542 e!3309795)))

(declare-fun res!2260129 () Bool)

(assert (=> d!1711052 (=> (not res!2260129) (not e!3309795))))

(assert (=> d!1711052 (= res!2260129 ((_ is Cons!61154) (exprs!4877 lt!2173808)))))

(assert (=> d!1711052 (= (derivationStepZipperUp!365 lt!2173808 (h!67604 s!2326)) e!3309793)))

(declare-fun b!5328563 () Bool)

(assert (=> b!5328563 (= e!3309794 ((as const (Array Context!8754 Bool)) false))))

(assert (= (and d!1711052 res!2260129) b!5328559))

(assert (= (and d!1711052 c!926542) b!5328562))

(assert (= (and d!1711052 (not c!926542)) b!5328560))

(assert (= (and b!5328560 c!926543) b!5328561))

(assert (= (and b!5328560 (not c!926543)) b!5328563))

(assert (= (or b!5328562 b!5328561) bm!380705))

(declare-fun m!6362254 () Bool)

(assert (=> b!5328559 m!6362254))

(declare-fun m!6362256 () Bool)

(assert (=> b!5328562 m!6362256))

(declare-fun m!6362258 () Bool)

(assert (=> bm!380705 m!6362258))

(assert (=> b!5327900 d!1711052))

(declare-fun d!1711054 () Bool)

(declare-fun dynLambda!24182 (Int Context!8754) (InoxSet Context!8754))

(assert (=> d!1711054 (= (flatMap!720 lt!2173806 lambda!272112) (dynLambda!24182 lambda!272112 lt!2173808))))

(declare-fun lt!2173929 () Unit!153490)

(declare-fun choose!39901 ((InoxSet Context!8754) Context!8754 Int) Unit!153490)

(assert (=> d!1711054 (= lt!2173929 (choose!39901 lt!2173806 lt!2173808 lambda!272112))))

(assert (=> d!1711054 (= lt!2173806 (store ((as const (Array Context!8754 Bool)) false) lt!2173808 true))))

(assert (=> d!1711054 (= (lemmaFlatMapOnSingletonSet!252 lt!2173806 lt!2173808 lambda!272112) lt!2173929)))

(declare-fun b_lambda!204945 () Bool)

(assert (=> (not b_lambda!204945) (not d!1711054)))

(declare-fun bs!1234996 () Bool)

(assert (= bs!1234996 d!1711054))

(assert (=> bs!1234996 m!6361760))

(declare-fun m!6362260 () Bool)

(assert (=> bs!1234996 m!6362260))

(declare-fun m!6362262 () Bool)

(assert (=> bs!1234996 m!6362262))

(assert (=> bs!1234996 m!6361754))

(assert (=> b!5327900 d!1711054))

(declare-fun bs!1234997 () Bool)

(declare-fun d!1711056 () Bool)

(assert (= bs!1234997 (and d!1711056 b!5327891)))

(declare-fun lambda!272189 () Int)

(assert (=> bs!1234997 (= lambda!272189 lambda!272112)))

(assert (=> d!1711056 true))

(assert (=> d!1711056 (= (derivationStepZipper!1234 lt!2173806 (h!67604 s!2326)) (flatMap!720 lt!2173806 lambda!272189))))

(declare-fun bs!1234998 () Bool)

(assert (= bs!1234998 d!1711056))

(declare-fun m!6362264 () Bool)

(assert (=> bs!1234998 m!6362264))

(assert (=> b!5327900 d!1711056))

(declare-fun bs!1234999 () Bool)

(declare-fun d!1711058 () Bool)

(assert (= bs!1234999 (and d!1711058 b!5327884)))

(declare-fun lambda!272192 () Int)

(assert (=> bs!1234999 (= lambda!272192 lambda!272115)))

(declare-fun bs!1235000 () Bool)

(assert (= bs!1235000 (and d!1711058 d!1711036)))

(assert (=> bs!1235000 (= lambda!272192 lambda!272174)))

(declare-fun b!5328586 () Bool)

(declare-fun e!3309811 () Regex!14993)

(declare-fun e!3309812 () Regex!14993)

(assert (=> b!5328586 (= e!3309811 e!3309812)))

(declare-fun c!926555 () Bool)

(assert (=> b!5328586 (= c!926555 ((_ is Cons!61154) (exprs!4877 (h!67603 zl!343))))))

(declare-fun b!5328587 () Bool)

(assert (=> b!5328587 (= e!3309812 (Concat!23838 (h!67602 (exprs!4877 (h!67603 zl!343))) (generalisedConcat!662 (t!374493 (exprs!4877 (h!67603 zl!343))))))))

(declare-fun b!5328588 () Bool)

(assert (=> b!5328588 (= e!3309812 EmptyExpr!14993)))

(declare-fun b!5328589 () Bool)

(declare-fun e!3309810 () Bool)

(declare-fun e!3309808 () Bool)

(assert (=> b!5328589 (= e!3309810 e!3309808)))

(declare-fun c!926557 () Bool)

(assert (=> b!5328589 (= c!926557 (isEmpty!33124 (exprs!4877 (h!67603 zl!343))))))

(declare-fun b!5328590 () Bool)

(declare-fun e!3309809 () Bool)

(declare-fun lt!2173932 () Regex!14993)

(declare-fun head!11423 (List!61278) Regex!14993)

(assert (=> b!5328590 (= e!3309809 (= lt!2173932 (head!11423 (exprs!4877 (h!67603 zl!343)))))))

(declare-fun b!5328591 () Bool)

(assert (=> b!5328591 (= e!3309811 (h!67602 (exprs!4877 (h!67603 zl!343))))))

(declare-fun b!5328592 () Bool)

(declare-fun isConcat!410 (Regex!14993) Bool)

(assert (=> b!5328592 (= e!3309809 (isConcat!410 lt!2173932))))

(declare-fun b!5328593 () Bool)

(assert (=> b!5328593 (= e!3309808 e!3309809)))

(declare-fun c!926554 () Bool)

(declare-fun tail!10520 (List!61278) List!61278)

(assert (=> b!5328593 (= c!926554 (isEmpty!33124 (tail!10520 (exprs!4877 (h!67603 zl!343)))))))

(assert (=> d!1711058 e!3309810))

(declare-fun res!2260135 () Bool)

(assert (=> d!1711058 (=> (not res!2260135) (not e!3309810))))

(assert (=> d!1711058 (= res!2260135 (validRegex!6729 lt!2173932))))

(assert (=> d!1711058 (= lt!2173932 e!3309811)))

(declare-fun c!926556 () Bool)

(declare-fun e!3309813 () Bool)

(assert (=> d!1711058 (= c!926556 e!3309813)))

(declare-fun res!2260134 () Bool)

(assert (=> d!1711058 (=> (not res!2260134) (not e!3309813))))

(assert (=> d!1711058 (= res!2260134 ((_ is Cons!61154) (exprs!4877 (h!67603 zl!343))))))

(assert (=> d!1711058 (forall!14411 (exprs!4877 (h!67603 zl!343)) lambda!272192)))

(assert (=> d!1711058 (= (generalisedConcat!662 (exprs!4877 (h!67603 zl!343))) lt!2173932)))

(declare-fun b!5328594 () Bool)

(assert (=> b!5328594 (= e!3309813 (isEmpty!33124 (t!374493 (exprs!4877 (h!67603 zl!343)))))))

(declare-fun b!5328595 () Bool)

(declare-fun isEmptyExpr!887 (Regex!14993) Bool)

(assert (=> b!5328595 (= e!3309808 (isEmptyExpr!887 lt!2173932))))

(assert (= (and d!1711058 res!2260134) b!5328594))

(assert (= (and d!1711058 c!926556) b!5328591))

(assert (= (and d!1711058 (not c!926556)) b!5328586))

(assert (= (and b!5328586 c!926555) b!5328587))

(assert (= (and b!5328586 (not c!926555)) b!5328588))

(assert (= (and d!1711058 res!2260135) b!5328589))

(assert (= (and b!5328589 c!926557) b!5328595))

(assert (= (and b!5328589 (not c!926557)) b!5328593))

(assert (= (and b!5328593 c!926554) b!5328590))

(assert (= (and b!5328593 (not c!926554)) b!5328592))

(declare-fun m!6362266 () Bool)

(assert (=> b!5328590 m!6362266))

(declare-fun m!6362268 () Bool)

(assert (=> d!1711058 m!6362268))

(declare-fun m!6362270 () Bool)

(assert (=> d!1711058 m!6362270))

(declare-fun m!6362272 () Bool)

(assert (=> b!5328595 m!6362272))

(declare-fun m!6362274 () Bool)

(assert (=> b!5328592 m!6362274))

(declare-fun m!6362276 () Bool)

(assert (=> b!5328587 m!6362276))

(assert (=> b!5328594 m!6361732))

(declare-fun m!6362278 () Bool)

(assert (=> b!5328593 m!6362278))

(assert (=> b!5328593 m!6362278))

(declare-fun m!6362280 () Bool)

(assert (=> b!5328593 m!6362280))

(declare-fun m!6362282 () Bool)

(assert (=> b!5328589 m!6362282))

(assert (=> b!5327878 d!1711058))

(declare-fun d!1711060 () Bool)

(declare-fun c!926558 () Bool)

(assert (=> d!1711060 (= c!926558 (isEmpty!33127 (t!374495 s!2326)))))

(declare-fun e!3309814 () Bool)

(assert (=> d!1711060 (= (matchZipper!1237 lt!2173807 (t!374495 s!2326)) e!3309814)))

(declare-fun b!5328596 () Bool)

(assert (=> b!5328596 (= e!3309814 (nullableZipper!1352 lt!2173807))))

(declare-fun b!5328597 () Bool)

(assert (=> b!5328597 (= e!3309814 (matchZipper!1237 (derivationStepZipper!1234 lt!2173807 (head!11422 (t!374495 s!2326))) (tail!10519 (t!374495 s!2326))))))

(assert (= (and d!1711060 c!926558) b!5328596))

(assert (= (and d!1711060 (not c!926558)) b!5328597))

(assert (=> d!1711060 m!6361872))

(declare-fun m!6362284 () Bool)

(assert (=> b!5328596 m!6362284))

(assert (=> b!5328597 m!6361876))

(assert (=> b!5328597 m!6361876))

(declare-fun m!6362286 () Bool)

(assert (=> b!5328597 m!6362286))

(assert (=> b!5328597 m!6361880))

(assert (=> b!5328597 m!6362286))

(assert (=> b!5328597 m!6361880))

(declare-fun m!6362288 () Bool)

(assert (=> b!5328597 m!6362288))

(assert (=> b!5327877 d!1711060))

(declare-fun b!5328616 () Bool)

(declare-fun res!2260148 () Bool)

(declare-fun e!3309828 () Bool)

(assert (=> b!5328616 (=> (not res!2260148) (not e!3309828))))

(declare-fun lt!2173939 () Option!15104)

(declare-fun get!21034 (Option!15104) tuple2!64384)

(assert (=> b!5328616 (= res!2260148 (matchR!7178 (regOne!30498 r!7292) (_1!35495 (get!21034 lt!2173939))))))

(declare-fun b!5328617 () Bool)

(declare-fun lt!2173941 () Unit!153490)

(declare-fun lt!2173940 () Unit!153490)

(assert (=> b!5328617 (= lt!2173941 lt!2173940)))

(declare-fun ++!13332 (List!61280 List!61280) List!61280)

(assert (=> b!5328617 (= (++!13332 (++!13332 Nil!61156 (Cons!61156 (h!67604 s!2326) Nil!61156)) (t!374495 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1747 (List!61280 C!30256 List!61280 List!61280) Unit!153490)

(assert (=> b!5328617 (= lt!2173940 (lemmaMoveElementToOtherListKeepsConcatEq!1747 Nil!61156 (h!67604 s!2326) (t!374495 s!2326) s!2326))))

(declare-fun e!3309825 () Option!15104)

(assert (=> b!5328617 (= e!3309825 (findConcatSeparation!1518 (regOne!30498 r!7292) (regTwo!30498 r!7292) (++!13332 Nil!61156 (Cons!61156 (h!67604 s!2326) Nil!61156)) (t!374495 s!2326) s!2326))))

(declare-fun b!5328618 () Bool)

(declare-fun e!3309826 () Option!15104)

(assert (=> b!5328618 (= e!3309826 (Some!15103 (tuple2!64385 Nil!61156 s!2326)))))

(declare-fun b!5328619 () Bool)

(declare-fun e!3309827 () Bool)

(assert (=> b!5328619 (= e!3309827 (not (isDefined!11807 lt!2173939)))))

(declare-fun b!5328620 () Bool)

(assert (=> b!5328620 (= e!3309825 None!15103)))

(declare-fun b!5328621 () Bool)

(assert (=> b!5328621 (= e!3309828 (= (++!13332 (_1!35495 (get!21034 lt!2173939)) (_2!35495 (get!21034 lt!2173939))) s!2326))))

(declare-fun d!1711062 () Bool)

(assert (=> d!1711062 e!3309827))

(declare-fun res!2260147 () Bool)

(assert (=> d!1711062 (=> res!2260147 e!3309827)))

(assert (=> d!1711062 (= res!2260147 e!3309828)))

(declare-fun res!2260150 () Bool)

(assert (=> d!1711062 (=> (not res!2260150) (not e!3309828))))

(assert (=> d!1711062 (= res!2260150 (isDefined!11807 lt!2173939))))

(assert (=> d!1711062 (= lt!2173939 e!3309826)))

(declare-fun c!926563 () Bool)

(declare-fun e!3309829 () Bool)

(assert (=> d!1711062 (= c!926563 e!3309829)))

(declare-fun res!2260149 () Bool)

(assert (=> d!1711062 (=> (not res!2260149) (not e!3309829))))

(assert (=> d!1711062 (= res!2260149 (matchR!7178 (regOne!30498 r!7292) Nil!61156))))

(assert (=> d!1711062 (validRegex!6729 (regOne!30498 r!7292))))

(assert (=> d!1711062 (= (findConcatSeparation!1518 (regOne!30498 r!7292) (regTwo!30498 r!7292) Nil!61156 s!2326 s!2326) lt!2173939)))

(declare-fun b!5328622 () Bool)

(assert (=> b!5328622 (= e!3309826 e!3309825)))

(declare-fun c!926564 () Bool)

(assert (=> b!5328622 (= c!926564 ((_ is Nil!61156) s!2326))))

(declare-fun b!5328623 () Bool)

(assert (=> b!5328623 (= e!3309829 (matchR!7178 (regTwo!30498 r!7292) s!2326))))

(declare-fun b!5328624 () Bool)

(declare-fun res!2260146 () Bool)

(assert (=> b!5328624 (=> (not res!2260146) (not e!3309828))))

(assert (=> b!5328624 (= res!2260146 (matchR!7178 (regTwo!30498 r!7292) (_2!35495 (get!21034 lt!2173939))))))

(assert (= (and d!1711062 res!2260149) b!5328623))

(assert (= (and d!1711062 c!926563) b!5328618))

(assert (= (and d!1711062 (not c!926563)) b!5328622))

(assert (= (and b!5328622 c!926564) b!5328620))

(assert (= (and b!5328622 (not c!926564)) b!5328617))

(assert (= (and d!1711062 res!2260150) b!5328616))

(assert (= (and b!5328616 res!2260148) b!5328624))

(assert (= (and b!5328624 res!2260146) b!5328621))

(assert (= (and d!1711062 (not res!2260147)) b!5328619))

(declare-fun m!6362290 () Bool)

(assert (=> b!5328621 m!6362290))

(declare-fun m!6362292 () Bool)

(assert (=> b!5328621 m!6362292))

(assert (=> b!5328616 m!6362290))

(declare-fun m!6362294 () Bool)

(assert (=> b!5328616 m!6362294))

(declare-fun m!6362296 () Bool)

(assert (=> b!5328619 m!6362296))

(assert (=> d!1711062 m!6362296))

(declare-fun m!6362298 () Bool)

(assert (=> d!1711062 m!6362298))

(declare-fun m!6362300 () Bool)

(assert (=> d!1711062 m!6362300))

(declare-fun m!6362302 () Bool)

(assert (=> b!5328617 m!6362302))

(assert (=> b!5328617 m!6362302))

(declare-fun m!6362304 () Bool)

(assert (=> b!5328617 m!6362304))

(declare-fun m!6362306 () Bool)

(assert (=> b!5328617 m!6362306))

(assert (=> b!5328617 m!6362302))

(declare-fun m!6362308 () Bool)

(assert (=> b!5328617 m!6362308))

(assert (=> b!5328624 m!6362290))

(declare-fun m!6362310 () Bool)

(assert (=> b!5328624 m!6362310))

(declare-fun m!6362312 () Bool)

(assert (=> b!5328623 m!6362312))

(assert (=> b!5327897 d!1711062))

(declare-fun d!1711064 () Bool)

(declare-fun choose!39902 (Int) Bool)

(assert (=> d!1711064 (= (Exists!2174 lambda!272110) (choose!39902 lambda!272110))))

(declare-fun bs!1235001 () Bool)

(assert (= bs!1235001 d!1711064))

(declare-fun m!6362314 () Bool)

(assert (=> bs!1235001 m!6362314))

(assert (=> b!5327897 d!1711064))

(declare-fun d!1711066 () Bool)

(assert (=> d!1711066 (= (Exists!2174 lambda!272111) (choose!39902 lambda!272111))))

(declare-fun bs!1235002 () Bool)

(assert (= bs!1235002 d!1711066))

(declare-fun m!6362316 () Bool)

(assert (=> bs!1235002 m!6362316))

(assert (=> b!5327897 d!1711066))

(declare-fun bs!1235003 () Bool)

(declare-fun d!1711068 () Bool)

(assert (= bs!1235003 (and d!1711068 b!5327884)))

(declare-fun lambda!272195 () Int)

(assert (=> bs!1235003 (not (= lambda!272195 lambda!272114))))

(declare-fun bs!1235004 () Bool)

(assert (= bs!1235004 (and d!1711068 b!5328395)))

(assert (=> bs!1235004 (not (= lambda!272195 lambda!272163))))

(assert (=> bs!1235003 (= (and (= (regOne!30498 r!7292) (regOne!30498 (regOne!30498 r!7292))) (= (regTwo!30498 r!7292) lt!2173809)) (= lambda!272195 lambda!272113))))

(declare-fun bs!1235005 () Bool)

(assert (= bs!1235005 (and d!1711068 b!5327897)))

(assert (=> bs!1235005 (not (= lambda!272195 lambda!272111))))

(assert (=> bs!1235005 (= lambda!272195 lambda!272110)))

(declare-fun bs!1235006 () Bool)

(assert (= bs!1235006 (and d!1711068 b!5328390)))

(assert (=> bs!1235006 (not (= lambda!272195 lambda!272165))))

(assert (=> d!1711068 true))

(assert (=> d!1711068 true))

(assert (=> d!1711068 true))

(assert (=> d!1711068 (= (isDefined!11807 (findConcatSeparation!1518 (regOne!30498 r!7292) (regTwo!30498 r!7292) Nil!61156 s!2326 s!2326)) (Exists!2174 lambda!272195))))

(declare-fun lt!2173944 () Unit!153490)

(declare-fun choose!39903 (Regex!14993 Regex!14993 List!61280) Unit!153490)

(assert (=> d!1711068 (= lt!2173944 (choose!39903 (regOne!30498 r!7292) (regTwo!30498 r!7292) s!2326))))

(assert (=> d!1711068 (validRegex!6729 (regOne!30498 r!7292))))

(assert (=> d!1711068 (= (lemmaFindConcatSeparationEquivalentToExists!1282 (regOne!30498 r!7292) (regTwo!30498 r!7292) s!2326) lt!2173944)))

(declare-fun bs!1235007 () Bool)

(assert (= bs!1235007 d!1711068))

(declare-fun m!6362318 () Bool)

(assert (=> bs!1235007 m!6362318))

(assert (=> bs!1235007 m!6361678))

(assert (=> bs!1235007 m!6361678))

(assert (=> bs!1235007 m!6361680))

(assert (=> bs!1235007 m!6362300))

(declare-fun m!6362320 () Bool)

(assert (=> bs!1235007 m!6362320))

(assert (=> b!5327897 d!1711068))

(declare-fun bs!1235008 () Bool)

(declare-fun d!1711070 () Bool)

(assert (= bs!1235008 (and d!1711070 b!5327884)))

(declare-fun lambda!272200 () Int)

(assert (=> bs!1235008 (not (= lambda!272200 lambda!272114))))

(declare-fun bs!1235009 () Bool)

(assert (= bs!1235009 (and d!1711070 b!5328395)))

(assert (=> bs!1235009 (not (= lambda!272200 lambda!272163))))

(assert (=> bs!1235008 (= (and (= (regOne!30498 r!7292) (regOne!30498 (regOne!30498 r!7292))) (= (regTwo!30498 r!7292) lt!2173809)) (= lambda!272200 lambda!272113))))

(declare-fun bs!1235010 () Bool)

(assert (= bs!1235010 (and d!1711070 b!5327897)))

(assert (=> bs!1235010 (not (= lambda!272200 lambda!272111))))

(assert (=> bs!1235010 (= lambda!272200 lambda!272110)))

(declare-fun bs!1235011 () Bool)

(assert (= bs!1235011 (and d!1711070 b!5328390)))

(assert (=> bs!1235011 (not (= lambda!272200 lambda!272165))))

(declare-fun bs!1235012 () Bool)

(assert (= bs!1235012 (and d!1711070 d!1711068)))

(assert (=> bs!1235012 (= lambda!272200 lambda!272195)))

(assert (=> d!1711070 true))

(assert (=> d!1711070 true))

(assert (=> d!1711070 true))

(declare-fun bs!1235013 () Bool)

(assert (= bs!1235013 d!1711070))

(declare-fun lambda!272201 () Int)

(assert (=> bs!1235013 (not (= lambda!272201 lambda!272200))))

(assert (=> bs!1235008 (= (and (= (regOne!30498 r!7292) (regOne!30498 (regOne!30498 r!7292))) (= (regTwo!30498 r!7292) lt!2173809)) (= lambda!272201 lambda!272114))))

(assert (=> bs!1235009 (not (= lambda!272201 lambda!272163))))

(assert (=> bs!1235008 (not (= lambda!272201 lambda!272113))))

(assert (=> bs!1235010 (= lambda!272201 lambda!272111)))

(assert (=> bs!1235010 (not (= lambda!272201 lambda!272110))))

(assert (=> bs!1235011 (= lambda!272201 lambda!272165)))

(assert (=> bs!1235012 (not (= lambda!272201 lambda!272195))))

(assert (=> d!1711070 true))

(assert (=> d!1711070 true))

(assert (=> d!1711070 true))

(assert (=> d!1711070 (= (Exists!2174 lambda!272200) (Exists!2174 lambda!272201))))

(declare-fun lt!2173947 () Unit!153490)

(declare-fun choose!39904 (Regex!14993 Regex!14993 List!61280) Unit!153490)

(assert (=> d!1711070 (= lt!2173947 (choose!39904 (regOne!30498 r!7292) (regTwo!30498 r!7292) s!2326))))

(assert (=> d!1711070 (validRegex!6729 (regOne!30498 r!7292))))

(assert (=> d!1711070 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!828 (regOne!30498 r!7292) (regTwo!30498 r!7292) s!2326) lt!2173947)))

(declare-fun m!6362322 () Bool)

(assert (=> bs!1235013 m!6362322))

(declare-fun m!6362324 () Bool)

(assert (=> bs!1235013 m!6362324))

(declare-fun m!6362326 () Bool)

(assert (=> bs!1235013 m!6362326))

(assert (=> bs!1235013 m!6362300))

(assert (=> b!5327897 d!1711070))

(declare-fun d!1711072 () Bool)

(declare-fun isEmpty!33128 (Option!15104) Bool)

(assert (=> d!1711072 (= (isDefined!11807 (findConcatSeparation!1518 (regOne!30498 r!7292) (regTwo!30498 r!7292) Nil!61156 s!2326 s!2326)) (not (isEmpty!33128 (findConcatSeparation!1518 (regOne!30498 r!7292) (regTwo!30498 r!7292) Nil!61156 s!2326 s!2326))))))

(declare-fun bs!1235014 () Bool)

(assert (= bs!1235014 d!1711072))

(assert (=> bs!1235014 m!6361678))

(declare-fun m!6362328 () Bool)

(assert (=> bs!1235014 m!6362328))

(assert (=> b!5327897 d!1711072))

(declare-fun d!1711074 () Bool)

(declare-fun lt!2173950 () Regex!14993)

(assert (=> d!1711074 (validRegex!6729 lt!2173950)))

(assert (=> d!1711074 (= lt!2173950 (generalisedUnion!922 (unfocusZipperList!435 zl!343)))))

(assert (=> d!1711074 (= (unfocusZipper!735 zl!343) lt!2173950)))

(declare-fun bs!1235015 () Bool)

(assert (= bs!1235015 d!1711074))

(declare-fun m!6362330 () Bool)

(assert (=> bs!1235015 m!6362330))

(assert (=> bs!1235015 m!6361670))

(assert (=> bs!1235015 m!6361670))

(assert (=> bs!1235015 m!6361672))

(assert (=> b!5327895 d!1711074))

(declare-fun d!1711076 () Bool)

(declare-fun c!926565 () Bool)

(assert (=> d!1711076 (= c!926565 (isEmpty!33127 (t!374495 s!2326)))))

(declare-fun e!3309836 () Bool)

(assert (=> d!1711076 (= (matchZipper!1237 lt!2173815 (t!374495 s!2326)) e!3309836)))

(declare-fun b!5328637 () Bool)

(assert (=> b!5328637 (= e!3309836 (nullableZipper!1352 lt!2173815))))

(declare-fun b!5328638 () Bool)

(assert (=> b!5328638 (= e!3309836 (matchZipper!1237 (derivationStepZipper!1234 lt!2173815 (head!11422 (t!374495 s!2326))) (tail!10519 (t!374495 s!2326))))))

(assert (= (and d!1711076 c!926565) b!5328637))

(assert (= (and d!1711076 (not c!926565)) b!5328638))

(assert (=> d!1711076 m!6361872))

(declare-fun m!6362332 () Bool)

(assert (=> b!5328637 m!6362332))

(assert (=> b!5328638 m!6361876))

(assert (=> b!5328638 m!6361876))

(declare-fun m!6362334 () Bool)

(assert (=> b!5328638 m!6362334))

(assert (=> b!5328638 m!6361880))

(assert (=> b!5328638 m!6362334))

(assert (=> b!5328638 m!6361880))

(declare-fun m!6362336 () Bool)

(assert (=> b!5328638 m!6362336))

(assert (=> b!5327875 d!1711076))

(assert (=> b!5327875 d!1710980))

(declare-fun b!5328639 () Bool)

(declare-fun e!3309839 () (InoxSet Context!8754))

(declare-fun e!3309841 () (InoxSet Context!8754))

(assert (=> b!5328639 (= e!3309839 e!3309841)))

(declare-fun c!926570 () Bool)

(assert (=> b!5328639 (= c!926570 ((_ is Concat!23838) (h!67602 (exprs!4877 (h!67603 zl!343)))))))

(declare-fun b!5328640 () Bool)

(declare-fun e!3309837 () (InoxSet Context!8754))

(declare-fun call!380714 () (InoxSet Context!8754))

(assert (=> b!5328640 (= e!3309837 call!380714)))

(declare-fun b!5328641 () Bool)

(declare-fun call!380713 () (InoxSet Context!8754))

(declare-fun call!380715 () (InoxSet Context!8754))

(assert (=> b!5328641 (= e!3309839 ((_ map or) call!380713 call!380715))))

(declare-fun bm!380706 () Bool)

(assert (=> bm!380706 (= call!380714 call!380715)))

(declare-fun b!5328642 () Bool)

(assert (=> b!5328642 (= e!3309841 call!380714)))

(declare-fun b!5328643 () Bool)

(assert (=> b!5328643 (= e!3309837 ((as const (Array Context!8754 Bool)) false))))

(declare-fun d!1711078 () Bool)

(declare-fun c!926566 () Bool)

(assert (=> d!1711078 (= c!926566 (and ((_ is ElementMatch!14993) (h!67602 (exprs!4877 (h!67603 zl!343)))) (= (c!926337 (h!67602 (exprs!4877 (h!67603 zl!343)))) (h!67604 s!2326))))))

(declare-fun e!3309842 () (InoxSet Context!8754))

(assert (=> d!1711078 (= (derivationStepZipperDown!441 (h!67602 (exprs!4877 (h!67603 zl!343))) lt!2173804 (h!67604 s!2326)) e!3309842)))

(declare-fun b!5328644 () Bool)

(declare-fun e!3309838 () (InoxSet Context!8754))

(declare-fun call!380711 () (InoxSet Context!8754))

(assert (=> b!5328644 (= e!3309838 ((_ map or) call!380713 call!380711))))

(declare-fun bm!380707 () Bool)

(declare-fun c!926569 () Bool)

(declare-fun c!926568 () Bool)

(declare-fun call!380712 () List!61278)

(assert (=> bm!380707 (= call!380711 (derivationStepZipperDown!441 (ite c!926569 (regTwo!30499 (h!67602 (exprs!4877 (h!67603 zl!343)))) (ite c!926568 (regTwo!30498 (h!67602 (exprs!4877 (h!67603 zl!343)))) (ite c!926570 (regOne!30498 (h!67602 (exprs!4877 (h!67603 zl!343)))) (reg!15322 (h!67602 (exprs!4877 (h!67603 zl!343))))))) (ite (or c!926569 c!926568) lt!2173804 (Context!8755 call!380712)) (h!67604 s!2326)))))

(declare-fun bm!380708 () Bool)

(declare-fun call!380716 () List!61278)

(assert (=> bm!380708 (= call!380712 call!380716)))

(declare-fun b!5328645 () Bool)

(declare-fun e!3309840 () Bool)

(assert (=> b!5328645 (= c!926568 e!3309840)))

(declare-fun res!2260163 () Bool)

(assert (=> b!5328645 (=> (not res!2260163) (not e!3309840))))

(assert (=> b!5328645 (= res!2260163 ((_ is Concat!23838) (h!67602 (exprs!4877 (h!67603 zl!343)))))))

(assert (=> b!5328645 (= e!3309838 e!3309839)))

(declare-fun b!5328646 () Bool)

(assert (=> b!5328646 (= e!3309842 (store ((as const (Array Context!8754 Bool)) false) lt!2173804 true))))

(declare-fun b!5328647 () Bool)

(declare-fun c!926567 () Bool)

(assert (=> b!5328647 (= c!926567 ((_ is Star!14993) (h!67602 (exprs!4877 (h!67603 zl!343)))))))

(assert (=> b!5328647 (= e!3309841 e!3309837)))

(declare-fun bm!380709 () Bool)

(assert (=> bm!380709 (= call!380716 ($colon$colon!1401 (exprs!4877 lt!2173804) (ite (or c!926568 c!926570) (regTwo!30498 (h!67602 (exprs!4877 (h!67603 zl!343)))) (h!67602 (exprs!4877 (h!67603 zl!343))))))))

(declare-fun bm!380710 () Bool)

(assert (=> bm!380710 (= call!380715 call!380711)))

(declare-fun b!5328648 () Bool)

(assert (=> b!5328648 (= e!3309842 e!3309838)))

(assert (=> b!5328648 (= c!926569 ((_ is Union!14993) (h!67602 (exprs!4877 (h!67603 zl!343)))))))

(declare-fun bm!380711 () Bool)

(assert (=> bm!380711 (= call!380713 (derivationStepZipperDown!441 (ite c!926569 (regOne!30499 (h!67602 (exprs!4877 (h!67603 zl!343)))) (regOne!30498 (h!67602 (exprs!4877 (h!67603 zl!343))))) (ite c!926569 lt!2173804 (Context!8755 call!380716)) (h!67604 s!2326)))))

(declare-fun b!5328649 () Bool)

(assert (=> b!5328649 (= e!3309840 (nullable!5162 (regOne!30498 (h!67602 (exprs!4877 (h!67603 zl!343))))))))

(assert (= (and d!1711078 c!926566) b!5328646))

(assert (= (and d!1711078 (not c!926566)) b!5328648))

(assert (= (and b!5328648 c!926569) b!5328644))

(assert (= (and b!5328648 (not c!926569)) b!5328645))

(assert (= (and b!5328645 res!2260163) b!5328649))

(assert (= (and b!5328645 c!926568) b!5328641))

(assert (= (and b!5328645 (not c!926568)) b!5328639))

(assert (= (and b!5328639 c!926570) b!5328642))

(assert (= (and b!5328639 (not c!926570)) b!5328647))

(assert (= (and b!5328647 c!926567) b!5328640))

(assert (= (and b!5328647 (not c!926567)) b!5328643))

(assert (= (or b!5328642 b!5328640) bm!380708))

(assert (= (or b!5328642 b!5328640) bm!380706))

(assert (= (or b!5328641 bm!380708) bm!380709))

(assert (= (or b!5328641 bm!380706) bm!380710))

(assert (= (or b!5328644 bm!380710) bm!380707))

(assert (= (or b!5328644 b!5328641) bm!380711))

(declare-fun m!6362338 () Bool)

(assert (=> b!5328646 m!6362338))

(declare-fun m!6362340 () Bool)

(assert (=> bm!380711 m!6362340))

(declare-fun m!6362342 () Bool)

(assert (=> bm!380707 m!6362342))

(declare-fun m!6362344 () Bool)

(assert (=> b!5328649 m!6362344))

(declare-fun m!6362346 () Bool)

(assert (=> bm!380709 m!6362346))

(assert (=> b!5327891 d!1711078))

(declare-fun d!1711080 () Bool)

(assert (=> d!1711080 (= (nullable!5162 (h!67602 (exprs!4877 (h!67603 zl!343)))) (nullableFct!1504 (h!67602 (exprs!4877 (h!67603 zl!343)))))))

(declare-fun bs!1235016 () Bool)

(assert (= bs!1235016 d!1711080))

(declare-fun m!6362348 () Bool)

(assert (=> bs!1235016 m!6362348))

(assert (=> b!5327891 d!1711080))

(declare-fun b!5328650 () Bool)

(declare-fun e!3309845 () Bool)

(assert (=> b!5328650 (= e!3309845 (nullable!5162 (h!67602 (exprs!4877 (Context!8755 (Cons!61154 (h!67602 (exprs!4877 (h!67603 zl!343))) (t!374493 (exprs!4877 (h!67603 zl!343)))))))))))

(declare-fun b!5328651 () Bool)

(declare-fun e!3309843 () (InoxSet Context!8754))

(declare-fun e!3309844 () (InoxSet Context!8754))

(assert (=> b!5328651 (= e!3309843 e!3309844)))

(declare-fun c!926572 () Bool)

(assert (=> b!5328651 (= c!926572 ((_ is Cons!61154) (exprs!4877 (Context!8755 (Cons!61154 (h!67602 (exprs!4877 (h!67603 zl!343))) (t!374493 (exprs!4877 (h!67603 zl!343))))))))))

(declare-fun b!5328652 () Bool)

(declare-fun call!380717 () (InoxSet Context!8754))

(assert (=> b!5328652 (= e!3309844 call!380717)))

(declare-fun b!5328653 () Bool)

(assert (=> b!5328653 (= e!3309843 ((_ map or) call!380717 (derivationStepZipperUp!365 (Context!8755 (t!374493 (exprs!4877 (Context!8755 (Cons!61154 (h!67602 (exprs!4877 (h!67603 zl!343))) (t!374493 (exprs!4877 (h!67603 zl!343)))))))) (h!67604 s!2326))))))

(declare-fun bm!380712 () Bool)

(assert (=> bm!380712 (= call!380717 (derivationStepZipperDown!441 (h!67602 (exprs!4877 (Context!8755 (Cons!61154 (h!67602 (exprs!4877 (h!67603 zl!343))) (t!374493 (exprs!4877 (h!67603 zl!343))))))) (Context!8755 (t!374493 (exprs!4877 (Context!8755 (Cons!61154 (h!67602 (exprs!4877 (h!67603 zl!343))) (t!374493 (exprs!4877 (h!67603 zl!343)))))))) (h!67604 s!2326)))))

(declare-fun d!1711082 () Bool)

(declare-fun c!926571 () Bool)

(assert (=> d!1711082 (= c!926571 e!3309845)))

(declare-fun res!2260164 () Bool)

(assert (=> d!1711082 (=> (not res!2260164) (not e!3309845))))

(assert (=> d!1711082 (= res!2260164 ((_ is Cons!61154) (exprs!4877 (Context!8755 (Cons!61154 (h!67602 (exprs!4877 (h!67603 zl!343))) (t!374493 (exprs!4877 (h!67603 zl!343))))))))))

(assert (=> d!1711082 (= (derivationStepZipperUp!365 (Context!8755 (Cons!61154 (h!67602 (exprs!4877 (h!67603 zl!343))) (t!374493 (exprs!4877 (h!67603 zl!343))))) (h!67604 s!2326)) e!3309843)))

(declare-fun b!5328654 () Bool)

(assert (=> b!5328654 (= e!3309844 ((as const (Array Context!8754 Bool)) false))))

(assert (= (and d!1711082 res!2260164) b!5328650))

(assert (= (and d!1711082 c!926571) b!5328653))

(assert (= (and d!1711082 (not c!926571)) b!5328651))

(assert (= (and b!5328651 c!926572) b!5328652))

(assert (= (and b!5328651 (not c!926572)) b!5328654))

(assert (= (or b!5328653 b!5328652) bm!380712))

(declare-fun m!6362350 () Bool)

(assert (=> b!5328650 m!6362350))

(declare-fun m!6362352 () Bool)

(assert (=> b!5328653 m!6362352))

(declare-fun m!6362354 () Bool)

(assert (=> bm!380712 m!6362354))

(assert (=> b!5327891 d!1711082))

(declare-fun d!1711084 () Bool)

(assert (=> d!1711084 (= (flatMap!720 z!1189 lambda!272112) (dynLambda!24182 lambda!272112 (h!67603 zl!343)))))

(declare-fun lt!2173951 () Unit!153490)

(assert (=> d!1711084 (= lt!2173951 (choose!39901 z!1189 (h!67603 zl!343) lambda!272112))))

(assert (=> d!1711084 (= z!1189 (store ((as const (Array Context!8754 Bool)) false) (h!67603 zl!343) true))))

(assert (=> d!1711084 (= (lemmaFlatMapOnSingletonSet!252 z!1189 (h!67603 zl!343) lambda!272112) lt!2173951)))

(declare-fun b_lambda!204947 () Bool)

(assert (=> (not b_lambda!204947) (not d!1711084)))

(declare-fun bs!1235017 () Bool)

(assert (= bs!1235017 d!1711084))

(assert (=> bs!1235017 m!6361764))

(declare-fun m!6362356 () Bool)

(assert (=> bs!1235017 m!6362356))

(declare-fun m!6362358 () Bool)

(assert (=> bs!1235017 m!6362358))

(declare-fun m!6362360 () Bool)

(assert (=> bs!1235017 m!6362360))

(assert (=> b!5327891 d!1711084))

(declare-fun b!5328655 () Bool)

(declare-fun e!3309848 () Bool)

(assert (=> b!5328655 (= e!3309848 (nullable!5162 (h!67602 (exprs!4877 lt!2173804))))))

(declare-fun b!5328656 () Bool)

(declare-fun e!3309846 () (InoxSet Context!8754))

(declare-fun e!3309847 () (InoxSet Context!8754))

(assert (=> b!5328656 (= e!3309846 e!3309847)))

(declare-fun c!926574 () Bool)

(assert (=> b!5328656 (= c!926574 ((_ is Cons!61154) (exprs!4877 lt!2173804)))))

(declare-fun b!5328657 () Bool)

(declare-fun call!380718 () (InoxSet Context!8754))

(assert (=> b!5328657 (= e!3309847 call!380718)))

(declare-fun b!5328658 () Bool)

(assert (=> b!5328658 (= e!3309846 ((_ map or) call!380718 (derivationStepZipperUp!365 (Context!8755 (t!374493 (exprs!4877 lt!2173804))) (h!67604 s!2326))))))

(declare-fun bm!380713 () Bool)

(assert (=> bm!380713 (= call!380718 (derivationStepZipperDown!441 (h!67602 (exprs!4877 lt!2173804)) (Context!8755 (t!374493 (exprs!4877 lt!2173804))) (h!67604 s!2326)))))

(declare-fun d!1711086 () Bool)

(declare-fun c!926573 () Bool)

(assert (=> d!1711086 (= c!926573 e!3309848)))

(declare-fun res!2260165 () Bool)

(assert (=> d!1711086 (=> (not res!2260165) (not e!3309848))))

(assert (=> d!1711086 (= res!2260165 ((_ is Cons!61154) (exprs!4877 lt!2173804)))))

(assert (=> d!1711086 (= (derivationStepZipperUp!365 lt!2173804 (h!67604 s!2326)) e!3309846)))

(declare-fun b!5328659 () Bool)

(assert (=> b!5328659 (= e!3309847 ((as const (Array Context!8754 Bool)) false))))

(assert (= (and d!1711086 res!2260165) b!5328655))

(assert (= (and d!1711086 c!926573) b!5328658))

(assert (= (and d!1711086 (not c!926573)) b!5328656))

(assert (= (and b!5328656 c!926574) b!5328657))

(assert (= (and b!5328656 (not c!926574)) b!5328659))

(assert (= (or b!5328658 b!5328657) bm!380713))

(declare-fun m!6362362 () Bool)

(assert (=> b!5328655 m!6362362))

(declare-fun m!6362364 () Bool)

(assert (=> b!5328658 m!6362364))

(declare-fun m!6362366 () Bool)

(assert (=> bm!380713 m!6362366))

(assert (=> b!5327891 d!1711086))

(declare-fun d!1711088 () Bool)

(assert (=> d!1711088 (= (flatMap!720 z!1189 lambda!272112) (choose!39900 z!1189 lambda!272112))))

(declare-fun bs!1235018 () Bool)

(assert (= bs!1235018 d!1711088))

(declare-fun m!6362368 () Bool)

(assert (=> bs!1235018 m!6362368))

(assert (=> b!5327891 d!1711088))

(declare-fun b!5328660 () Bool)

(declare-fun e!3309851 () Bool)

(assert (=> b!5328660 (= e!3309851 (nullable!5162 (h!67602 (exprs!4877 (h!67603 zl!343)))))))

(declare-fun b!5328661 () Bool)

(declare-fun e!3309849 () (InoxSet Context!8754))

(declare-fun e!3309850 () (InoxSet Context!8754))

(assert (=> b!5328661 (= e!3309849 e!3309850)))

(declare-fun c!926576 () Bool)

(assert (=> b!5328661 (= c!926576 ((_ is Cons!61154) (exprs!4877 (h!67603 zl!343))))))

(declare-fun b!5328662 () Bool)

(declare-fun call!380719 () (InoxSet Context!8754))

(assert (=> b!5328662 (= e!3309850 call!380719)))

(declare-fun b!5328663 () Bool)

(assert (=> b!5328663 (= e!3309849 ((_ map or) call!380719 (derivationStepZipperUp!365 (Context!8755 (t!374493 (exprs!4877 (h!67603 zl!343)))) (h!67604 s!2326))))))

(declare-fun bm!380714 () Bool)

(assert (=> bm!380714 (= call!380719 (derivationStepZipperDown!441 (h!67602 (exprs!4877 (h!67603 zl!343))) (Context!8755 (t!374493 (exprs!4877 (h!67603 zl!343)))) (h!67604 s!2326)))))

(declare-fun d!1711090 () Bool)

(declare-fun c!926575 () Bool)

(assert (=> d!1711090 (= c!926575 e!3309851)))

(declare-fun res!2260166 () Bool)

(assert (=> d!1711090 (=> (not res!2260166) (not e!3309851))))

(assert (=> d!1711090 (= res!2260166 ((_ is Cons!61154) (exprs!4877 (h!67603 zl!343))))))

(assert (=> d!1711090 (= (derivationStepZipperUp!365 (h!67603 zl!343) (h!67604 s!2326)) e!3309849)))

(declare-fun b!5328664 () Bool)

(assert (=> b!5328664 (= e!3309850 ((as const (Array Context!8754 Bool)) false))))

(assert (= (and d!1711090 res!2260166) b!5328660))

(assert (= (and d!1711090 c!926575) b!5328663))

(assert (= (and d!1711090 (not c!926575)) b!5328661))

(assert (= (and b!5328661 c!926576) b!5328662))

(assert (= (and b!5328661 (not c!926576)) b!5328664))

(assert (= (or b!5328663 b!5328662) bm!380714))

(assert (=> b!5328660 m!6361766))

(declare-fun m!6362370 () Bool)

(assert (=> b!5328663 m!6362370))

(declare-fun m!6362372 () Bool)

(assert (=> bm!380714 m!6362372))

(assert (=> b!5327891 d!1711090))

(declare-fun d!1711092 () Bool)

(declare-fun e!3309854 () Bool)

(assert (=> d!1711092 e!3309854))

(declare-fun res!2260169 () Bool)

(assert (=> d!1711092 (=> (not res!2260169) (not e!3309854))))

(declare-fun lt!2173954 () List!61279)

(declare-fun noDuplicate!1307 (List!61279) Bool)

(assert (=> d!1711092 (= res!2260169 (noDuplicate!1307 lt!2173954))))

(declare-fun choose!39906 ((InoxSet Context!8754)) List!61279)

(assert (=> d!1711092 (= lt!2173954 (choose!39906 z!1189))))

(assert (=> d!1711092 (= (toList!8777 z!1189) lt!2173954)))

(declare-fun b!5328667 () Bool)

(declare-fun content!10907 (List!61279) (InoxSet Context!8754))

(assert (=> b!5328667 (= e!3309854 (= (content!10907 lt!2173954) z!1189))))

(assert (= (and d!1711092 res!2260169) b!5328667))

(declare-fun m!6362374 () Bool)

(assert (=> d!1711092 m!6362374))

(declare-fun m!6362376 () Bool)

(assert (=> d!1711092 m!6362376))

(declare-fun m!6362378 () Bool)

(assert (=> b!5328667 m!6362378))

(assert (=> b!5327871 d!1711092))

(declare-fun d!1711094 () Bool)

(assert (=> d!1711094 (= (isEmpty!33123 (t!374494 zl!343)) ((_ is Nil!61155) (t!374494 zl!343)))))

(assert (=> b!5327888 d!1711094))

(declare-fun d!1711096 () Bool)

(declare-fun lt!2173957 () Int)

(assert (=> d!1711096 (>= lt!2173957 0)))

(declare-fun e!3309857 () Int)

(assert (=> d!1711096 (= lt!2173957 e!3309857)))

(declare-fun c!926579 () Bool)

(assert (=> d!1711096 (= c!926579 ((_ is Cons!61155) lt!2173795))))

(assert (=> d!1711096 (= (zipperDepthTotal!146 lt!2173795) lt!2173957)))

(declare-fun b!5328672 () Bool)

(assert (=> b!5328672 (= e!3309857 (+ (contextDepthTotal!126 (h!67603 lt!2173795)) (zipperDepthTotal!146 (t!374494 lt!2173795))))))

(declare-fun b!5328673 () Bool)

(assert (=> b!5328673 (= e!3309857 0)))

(assert (= (and d!1711096 c!926579) b!5328672))

(assert (= (and d!1711096 (not c!926579)) b!5328673))

(declare-fun m!6362380 () Bool)

(assert (=> b!5328672 m!6362380))

(declare-fun m!6362382 () Bool)

(assert (=> b!5328672 m!6362382))

(assert (=> b!5327870 d!1711096))

(declare-fun d!1711098 () Bool)

(declare-fun lt!2173958 () Int)

(assert (=> d!1711098 (>= lt!2173958 0)))

(declare-fun e!3309858 () Int)

(assert (=> d!1711098 (= lt!2173958 e!3309858)))

(declare-fun c!926580 () Bool)

(assert (=> d!1711098 (= c!926580 ((_ is Cons!61155) zl!343))))

(assert (=> d!1711098 (= (zipperDepthTotal!146 zl!343) lt!2173958)))

(declare-fun b!5328674 () Bool)

(assert (=> b!5328674 (= e!3309858 (+ (contextDepthTotal!126 (h!67603 zl!343)) (zipperDepthTotal!146 (t!374494 zl!343))))))

(declare-fun b!5328675 () Bool)

(assert (=> b!5328675 (= e!3309858 0)))

(assert (= (and d!1711098 c!926580) b!5328674))

(assert (= (and d!1711098 (not c!926580)) b!5328675))

(assert (=> b!5328674 m!6361676))

(declare-fun m!6362384 () Bool)

(assert (=> b!5328674 m!6362384))

(assert (=> b!5327870 d!1711098))

(declare-fun bs!1235019 () Bool)

(declare-fun d!1711100 () Bool)

(assert (= bs!1235019 (and d!1711100 b!5327884)))

(declare-fun lambda!272202 () Int)

(assert (=> bs!1235019 (= lambda!272202 lambda!272115)))

(declare-fun bs!1235020 () Bool)

(assert (= bs!1235020 (and d!1711100 d!1711036)))

(assert (=> bs!1235020 (= lambda!272202 lambda!272174)))

(declare-fun bs!1235021 () Bool)

(assert (= bs!1235021 (and d!1711100 d!1711058)))

(assert (=> bs!1235021 (= lambda!272202 lambda!272192)))

(assert (=> d!1711100 (= (inv!80729 (h!67603 zl!343)) (forall!14411 (exprs!4877 (h!67603 zl!343)) lambda!272202))))

(declare-fun bs!1235022 () Bool)

(assert (= bs!1235022 d!1711100))

(declare-fun m!6362386 () Bool)

(assert (=> bs!1235022 m!6362386))

(assert (=> b!5327889 d!1711100))

(declare-fun bs!1235023 () Bool)

(declare-fun d!1711102 () Bool)

(assert (= bs!1235023 (and d!1711102 b!5327884)))

(declare-fun lambda!272205 () Int)

(assert (=> bs!1235023 (= lambda!272205 lambda!272115)))

(declare-fun bs!1235024 () Bool)

(assert (= bs!1235024 (and d!1711102 d!1711036)))

(assert (=> bs!1235024 (= lambda!272205 lambda!272174)))

(declare-fun bs!1235025 () Bool)

(assert (= bs!1235025 (and d!1711102 d!1711058)))

(assert (=> bs!1235025 (= lambda!272205 lambda!272192)))

(declare-fun bs!1235026 () Bool)

(assert (= bs!1235026 (and d!1711102 d!1711100)))

(assert (=> bs!1235026 (= lambda!272205 lambda!272202)))

(declare-fun b!5328696 () Bool)

(declare-fun e!3309876 () Regex!14993)

(assert (=> b!5328696 (= e!3309876 EmptyLang!14993)))

(declare-fun b!5328697 () Bool)

(assert (=> b!5328697 (= e!3309876 (Union!14993 (h!67602 (unfocusZipperList!435 zl!343)) (generalisedUnion!922 (t!374493 (unfocusZipperList!435 zl!343)))))))

(declare-fun b!5328698 () Bool)

(declare-fun e!3309874 () Regex!14993)

(assert (=> b!5328698 (= e!3309874 (h!67602 (unfocusZipperList!435 zl!343)))))

(declare-fun e!3309873 () Bool)

(assert (=> d!1711102 e!3309873))

(declare-fun res!2260175 () Bool)

(assert (=> d!1711102 (=> (not res!2260175) (not e!3309873))))

(declare-fun lt!2173961 () Regex!14993)

(assert (=> d!1711102 (= res!2260175 (validRegex!6729 lt!2173961))))

(assert (=> d!1711102 (= lt!2173961 e!3309874)))

(declare-fun c!926589 () Bool)

(declare-fun e!3309872 () Bool)

(assert (=> d!1711102 (= c!926589 e!3309872)))

(declare-fun res!2260174 () Bool)

(assert (=> d!1711102 (=> (not res!2260174) (not e!3309872))))

(assert (=> d!1711102 (= res!2260174 ((_ is Cons!61154) (unfocusZipperList!435 zl!343)))))

(assert (=> d!1711102 (forall!14411 (unfocusZipperList!435 zl!343) lambda!272205)))

(assert (=> d!1711102 (= (generalisedUnion!922 (unfocusZipperList!435 zl!343)) lt!2173961)))

(declare-fun b!5328699 () Bool)

(declare-fun e!3309871 () Bool)

(declare-fun isEmptyLang!895 (Regex!14993) Bool)

(assert (=> b!5328699 (= e!3309871 (isEmptyLang!895 lt!2173961))))

(declare-fun b!5328700 () Bool)

(assert (=> b!5328700 (= e!3309872 (isEmpty!33124 (t!374493 (unfocusZipperList!435 zl!343))))))

(declare-fun b!5328701 () Bool)

(declare-fun e!3309875 () Bool)

(declare-fun isUnion!327 (Regex!14993) Bool)

(assert (=> b!5328701 (= e!3309875 (isUnion!327 lt!2173961))))

(declare-fun b!5328702 () Bool)

(assert (=> b!5328702 (= e!3309873 e!3309871)))

(declare-fun c!926592 () Bool)

(assert (=> b!5328702 (= c!926592 (isEmpty!33124 (unfocusZipperList!435 zl!343)))))

(declare-fun b!5328703 () Bool)

(assert (=> b!5328703 (= e!3309875 (= lt!2173961 (head!11423 (unfocusZipperList!435 zl!343))))))

(declare-fun b!5328704 () Bool)

(assert (=> b!5328704 (= e!3309871 e!3309875)))

(declare-fun c!926590 () Bool)

(assert (=> b!5328704 (= c!926590 (isEmpty!33124 (tail!10520 (unfocusZipperList!435 zl!343))))))

(declare-fun b!5328705 () Bool)

(assert (=> b!5328705 (= e!3309874 e!3309876)))

(declare-fun c!926591 () Bool)

(assert (=> b!5328705 (= c!926591 ((_ is Cons!61154) (unfocusZipperList!435 zl!343)))))

(assert (= (and d!1711102 res!2260174) b!5328700))

(assert (= (and d!1711102 c!926589) b!5328698))

(assert (= (and d!1711102 (not c!926589)) b!5328705))

(assert (= (and b!5328705 c!926591) b!5328697))

(assert (= (and b!5328705 (not c!926591)) b!5328696))

(assert (= (and d!1711102 res!2260175) b!5328702))

(assert (= (and b!5328702 c!926592) b!5328699))

(assert (= (and b!5328702 (not c!926592)) b!5328704))

(assert (= (and b!5328704 c!926590) b!5328703))

(assert (= (and b!5328704 (not c!926590)) b!5328701))

(assert (=> b!5328703 m!6361670))

(declare-fun m!6362388 () Bool)

(assert (=> b!5328703 m!6362388))

(declare-fun m!6362390 () Bool)

(assert (=> b!5328701 m!6362390))

(declare-fun m!6362392 () Bool)

(assert (=> b!5328699 m!6362392))

(assert (=> b!5328704 m!6361670))

(declare-fun m!6362394 () Bool)

(assert (=> b!5328704 m!6362394))

(assert (=> b!5328704 m!6362394))

(declare-fun m!6362396 () Bool)

(assert (=> b!5328704 m!6362396))

(declare-fun m!6362398 () Bool)

(assert (=> b!5328697 m!6362398))

(declare-fun m!6362400 () Bool)

(assert (=> d!1711102 m!6362400))

(assert (=> d!1711102 m!6361670))

(declare-fun m!6362402 () Bool)

(assert (=> d!1711102 m!6362402))

(assert (=> b!5328702 m!6361670))

(declare-fun m!6362404 () Bool)

(assert (=> b!5328702 m!6362404))

(declare-fun m!6362406 () Bool)

(assert (=> b!5328700 m!6362406))

(assert (=> b!5327882 d!1711102))

(declare-fun bs!1235027 () Bool)

(declare-fun d!1711104 () Bool)

(assert (= bs!1235027 (and d!1711104 d!1711058)))

(declare-fun lambda!272208 () Int)

(assert (=> bs!1235027 (= lambda!272208 lambda!272192)))

(declare-fun bs!1235028 () Bool)

(assert (= bs!1235028 (and d!1711104 d!1711102)))

(assert (=> bs!1235028 (= lambda!272208 lambda!272205)))

(declare-fun bs!1235029 () Bool)

(assert (= bs!1235029 (and d!1711104 d!1711100)))

(assert (=> bs!1235029 (= lambda!272208 lambda!272202)))

(declare-fun bs!1235030 () Bool)

(assert (= bs!1235030 (and d!1711104 b!5327884)))

(assert (=> bs!1235030 (= lambda!272208 lambda!272115)))

(declare-fun bs!1235031 () Bool)

(assert (= bs!1235031 (and d!1711104 d!1711036)))

(assert (=> bs!1235031 (= lambda!272208 lambda!272174)))

(declare-fun lt!2173964 () List!61278)

(assert (=> d!1711104 (forall!14411 lt!2173964 lambda!272208)))

(declare-fun e!3309879 () List!61278)

(assert (=> d!1711104 (= lt!2173964 e!3309879)))

(declare-fun c!926595 () Bool)

(assert (=> d!1711104 (= c!926595 ((_ is Cons!61155) zl!343))))

(assert (=> d!1711104 (= (unfocusZipperList!435 zl!343) lt!2173964)))

(declare-fun b!5328710 () Bool)

(assert (=> b!5328710 (= e!3309879 (Cons!61154 (generalisedConcat!662 (exprs!4877 (h!67603 zl!343))) (unfocusZipperList!435 (t!374494 zl!343))))))

(declare-fun b!5328711 () Bool)

(assert (=> b!5328711 (= e!3309879 Nil!61154)))

(assert (= (and d!1711104 c!926595) b!5328710))

(assert (= (and d!1711104 (not c!926595)) b!5328711))

(declare-fun m!6362408 () Bool)

(assert (=> d!1711104 m!6362408))

(assert (=> b!5328710 m!6361702))

(declare-fun m!6362410 () Bool)

(assert (=> b!5328710 m!6362410))

(assert (=> b!5327882 d!1711104))

(declare-fun bs!1235032 () Bool)

(declare-fun d!1711106 () Bool)

(assert (= bs!1235032 (and d!1711106 d!1711104)))

(declare-fun lambda!272209 () Int)

(assert (=> bs!1235032 (= lambda!272209 lambda!272208)))

(declare-fun bs!1235033 () Bool)

(assert (= bs!1235033 (and d!1711106 d!1711058)))

(assert (=> bs!1235033 (= lambda!272209 lambda!272192)))

(declare-fun bs!1235034 () Bool)

(assert (= bs!1235034 (and d!1711106 d!1711102)))

(assert (=> bs!1235034 (= lambda!272209 lambda!272205)))

(declare-fun bs!1235035 () Bool)

(assert (= bs!1235035 (and d!1711106 d!1711100)))

(assert (=> bs!1235035 (= lambda!272209 lambda!272202)))

(declare-fun bs!1235036 () Bool)

(assert (= bs!1235036 (and d!1711106 b!5327884)))

(assert (=> bs!1235036 (= lambda!272209 lambda!272115)))

(declare-fun bs!1235037 () Bool)

(assert (= bs!1235037 (and d!1711106 d!1711036)))

(assert (=> bs!1235037 (= lambda!272209 lambda!272174)))

(declare-fun b!5328712 () Bool)

(declare-fun e!3309883 () Regex!14993)

(declare-fun e!3309884 () Regex!14993)

(assert (=> b!5328712 (= e!3309883 e!3309884)))

(declare-fun c!926597 () Bool)

(assert (=> b!5328712 (= c!926597 ((_ is Cons!61154) lt!2173792))))

(declare-fun b!5328713 () Bool)

(assert (=> b!5328713 (= e!3309884 (Concat!23838 (h!67602 lt!2173792) (generalisedConcat!662 (t!374493 lt!2173792))))))

(declare-fun b!5328714 () Bool)

(assert (=> b!5328714 (= e!3309884 EmptyExpr!14993)))

(declare-fun b!5328715 () Bool)

(declare-fun e!3309882 () Bool)

(declare-fun e!3309880 () Bool)

(assert (=> b!5328715 (= e!3309882 e!3309880)))

(declare-fun c!926599 () Bool)

(assert (=> b!5328715 (= c!926599 (isEmpty!33124 lt!2173792))))

(declare-fun b!5328716 () Bool)

(declare-fun e!3309881 () Bool)

(declare-fun lt!2173965 () Regex!14993)

(assert (=> b!5328716 (= e!3309881 (= lt!2173965 (head!11423 lt!2173792)))))

(declare-fun b!5328717 () Bool)

(assert (=> b!5328717 (= e!3309883 (h!67602 lt!2173792))))

(declare-fun b!5328718 () Bool)

(assert (=> b!5328718 (= e!3309881 (isConcat!410 lt!2173965))))

(declare-fun b!5328719 () Bool)

(assert (=> b!5328719 (= e!3309880 e!3309881)))

(declare-fun c!926596 () Bool)

(assert (=> b!5328719 (= c!926596 (isEmpty!33124 (tail!10520 lt!2173792)))))

(assert (=> d!1711106 e!3309882))

(declare-fun res!2260177 () Bool)

(assert (=> d!1711106 (=> (not res!2260177) (not e!3309882))))

(assert (=> d!1711106 (= res!2260177 (validRegex!6729 lt!2173965))))

(assert (=> d!1711106 (= lt!2173965 e!3309883)))

(declare-fun c!926598 () Bool)

(declare-fun e!3309885 () Bool)

(assert (=> d!1711106 (= c!926598 e!3309885)))

(declare-fun res!2260176 () Bool)

(assert (=> d!1711106 (=> (not res!2260176) (not e!3309885))))

(assert (=> d!1711106 (= res!2260176 ((_ is Cons!61154) lt!2173792))))

(assert (=> d!1711106 (forall!14411 lt!2173792 lambda!272209)))

(assert (=> d!1711106 (= (generalisedConcat!662 lt!2173792) lt!2173965)))

(declare-fun b!5328720 () Bool)

(assert (=> b!5328720 (= e!3309885 (isEmpty!33124 (t!374493 lt!2173792)))))

(declare-fun b!5328721 () Bool)

(assert (=> b!5328721 (= e!3309880 (isEmptyExpr!887 lt!2173965))))

(assert (= (and d!1711106 res!2260176) b!5328720))

(assert (= (and d!1711106 c!926598) b!5328717))

(assert (= (and d!1711106 (not c!926598)) b!5328712))

(assert (= (and b!5328712 c!926597) b!5328713))

(assert (= (and b!5328712 (not c!926597)) b!5328714))

(assert (= (and d!1711106 res!2260177) b!5328715))

(assert (= (and b!5328715 c!926599) b!5328721))

(assert (= (and b!5328715 (not c!926599)) b!5328719))

(assert (= (and b!5328719 c!926596) b!5328716))

(assert (= (and b!5328719 (not c!926596)) b!5328718))

(declare-fun m!6362412 () Bool)

(assert (=> b!5328716 m!6362412))

(declare-fun m!6362414 () Bool)

(assert (=> d!1711106 m!6362414))

(declare-fun m!6362416 () Bool)

(assert (=> d!1711106 m!6362416))

(declare-fun m!6362418 () Bool)

(assert (=> b!5328721 m!6362418))

(declare-fun m!6362420 () Bool)

(assert (=> b!5328718 m!6362420))

(declare-fun m!6362422 () Bool)

(assert (=> b!5328713 m!6362422))

(declare-fun m!6362424 () Bool)

(assert (=> b!5328720 m!6362424))

(declare-fun m!6362426 () Bool)

(assert (=> b!5328719 m!6362426))

(assert (=> b!5328719 m!6362426))

(declare-fun m!6362428 () Bool)

(assert (=> b!5328719 m!6362428))

(declare-fun m!6362430 () Bool)

(assert (=> b!5328715 m!6362430))

(assert (=> b!5327884 d!1711106))

(declare-fun bs!1235038 () Bool)

(declare-fun b!5328727 () Bool)

(assert (= bs!1235038 (and b!5328727 d!1711070)))

(declare-fun lambda!272210 () Int)

(assert (=> bs!1235038 (not (= lambda!272210 lambda!272200))))

(declare-fun bs!1235039 () Bool)

(assert (= bs!1235039 (and b!5328727 b!5327884)))

(assert (=> bs!1235039 (not (= lambda!272210 lambda!272114))))

(declare-fun bs!1235040 () Bool)

(assert (= bs!1235040 (and b!5328727 b!5328395)))

(assert (=> bs!1235040 (= (and (= (reg!15322 lt!2173801) (reg!15322 r!7292)) (= lt!2173801 r!7292)) (= lambda!272210 lambda!272163))))

(assert (=> bs!1235038 (not (= lambda!272210 lambda!272201))))

(assert (=> bs!1235039 (not (= lambda!272210 lambda!272113))))

(declare-fun bs!1235041 () Bool)

(assert (= bs!1235041 (and b!5328727 b!5327897)))

(assert (=> bs!1235041 (not (= lambda!272210 lambda!272111))))

(assert (=> bs!1235041 (not (= lambda!272210 lambda!272110))))

(declare-fun bs!1235042 () Bool)

(assert (= bs!1235042 (and b!5328727 b!5328390)))

(assert (=> bs!1235042 (not (= lambda!272210 lambda!272165))))

(declare-fun bs!1235043 () Bool)

(assert (= bs!1235043 (and b!5328727 d!1711068)))

(assert (=> bs!1235043 (not (= lambda!272210 lambda!272195))))

(assert (=> b!5328727 true))

(assert (=> b!5328727 true))

(declare-fun bs!1235044 () Bool)

(declare-fun b!5328722 () Bool)

(assert (= bs!1235044 (and b!5328722 d!1711070)))

(declare-fun lambda!272211 () Int)

(assert (=> bs!1235044 (not (= lambda!272211 lambda!272200))))

(declare-fun bs!1235045 () Bool)

(assert (= bs!1235045 (and b!5328722 b!5327884)))

(assert (=> bs!1235045 (= (and (= (regOne!30498 lt!2173801) (regOne!30498 (regOne!30498 r!7292))) (= (regTwo!30498 lt!2173801) lt!2173809)) (= lambda!272211 lambda!272114))))

(declare-fun bs!1235046 () Bool)

(assert (= bs!1235046 (and b!5328722 b!5328395)))

(assert (=> bs!1235046 (not (= lambda!272211 lambda!272163))))

(assert (=> bs!1235044 (= (and (= (regOne!30498 lt!2173801) (regOne!30498 r!7292)) (= (regTwo!30498 lt!2173801) (regTwo!30498 r!7292))) (= lambda!272211 lambda!272201))))

(declare-fun bs!1235047 () Bool)

(assert (= bs!1235047 (and b!5328722 b!5328727)))

(assert (=> bs!1235047 (not (= lambda!272211 lambda!272210))))

(assert (=> bs!1235045 (not (= lambda!272211 lambda!272113))))

(declare-fun bs!1235048 () Bool)

(assert (= bs!1235048 (and b!5328722 b!5327897)))

(assert (=> bs!1235048 (= (and (= (regOne!30498 lt!2173801) (regOne!30498 r!7292)) (= (regTwo!30498 lt!2173801) (regTwo!30498 r!7292))) (= lambda!272211 lambda!272111))))

(assert (=> bs!1235048 (not (= lambda!272211 lambda!272110))))

(declare-fun bs!1235049 () Bool)

(assert (= bs!1235049 (and b!5328722 b!5328390)))

(assert (=> bs!1235049 (= (and (= (regOne!30498 lt!2173801) (regOne!30498 r!7292)) (= (regTwo!30498 lt!2173801) (regTwo!30498 r!7292))) (= lambda!272211 lambda!272165))))

(declare-fun bs!1235050 () Bool)

(assert (= bs!1235050 (and b!5328722 d!1711068)))

(assert (=> bs!1235050 (not (= lambda!272211 lambda!272195))))

(assert (=> b!5328722 true))

(assert (=> b!5328722 true))

(declare-fun e!3309891 () Bool)

(declare-fun call!380721 () Bool)

(assert (=> b!5328722 (= e!3309891 call!380721)))

(declare-fun c!926601 () Bool)

(declare-fun bm!380715 () Bool)

(assert (=> bm!380715 (= call!380721 (Exists!2174 (ite c!926601 lambda!272210 lambda!272211)))))

(declare-fun b!5328723 () Bool)

(declare-fun c!926602 () Bool)

(assert (=> b!5328723 (= c!926602 ((_ is ElementMatch!14993) lt!2173801))))

(declare-fun e!3309887 () Bool)

(declare-fun e!3309889 () Bool)

(assert (=> b!5328723 (= e!3309887 e!3309889)))

(declare-fun bm!380716 () Bool)

(declare-fun call!380720 () Bool)

(assert (=> bm!380716 (= call!380720 (isEmpty!33127 s!2326))))

(declare-fun b!5328724 () Bool)

(declare-fun e!3309892 () Bool)

(assert (=> b!5328724 (= e!3309892 call!380720)))

(declare-fun b!5328725 () Bool)

(declare-fun e!3309890 () Bool)

(assert (=> b!5328725 (= e!3309890 e!3309891)))

(assert (=> b!5328725 (= c!926601 ((_ is Star!14993) lt!2173801))))

(declare-fun b!5328726 () Bool)

(declare-fun e!3309886 () Bool)

(assert (=> b!5328726 (= e!3309886 (matchRSpec!2096 (regTwo!30499 lt!2173801) s!2326))))

(declare-fun e!3309888 () Bool)

(assert (=> b!5328727 (= e!3309888 call!380721)))

(declare-fun b!5328729 () Bool)

(assert (=> b!5328729 (= e!3309890 e!3309886)))

(declare-fun res!2260180 () Bool)

(assert (=> b!5328729 (= res!2260180 (matchRSpec!2096 (regOne!30499 lt!2173801) s!2326))))

(assert (=> b!5328729 (=> res!2260180 e!3309886)))

(declare-fun b!5328730 () Bool)

(assert (=> b!5328730 (= e!3309892 e!3309887)))

(declare-fun res!2260178 () Bool)

(assert (=> b!5328730 (= res!2260178 (not ((_ is EmptyLang!14993) lt!2173801)))))

(assert (=> b!5328730 (=> (not res!2260178) (not e!3309887))))

(declare-fun b!5328731 () Bool)

(declare-fun c!926603 () Bool)

(assert (=> b!5328731 (= c!926603 ((_ is Union!14993) lt!2173801))))

(assert (=> b!5328731 (= e!3309889 e!3309890)))

(declare-fun b!5328732 () Bool)

(assert (=> b!5328732 (= e!3309889 (= s!2326 (Cons!61156 (c!926337 lt!2173801) Nil!61156)))))

(declare-fun b!5328728 () Bool)

(declare-fun res!2260179 () Bool)

(assert (=> b!5328728 (=> res!2260179 e!3309888)))

(assert (=> b!5328728 (= res!2260179 call!380720)))

(assert (=> b!5328728 (= e!3309891 e!3309888)))

(declare-fun d!1711108 () Bool)

(declare-fun c!926600 () Bool)

(assert (=> d!1711108 (= c!926600 ((_ is EmptyExpr!14993) lt!2173801))))

(assert (=> d!1711108 (= (matchRSpec!2096 lt!2173801 s!2326) e!3309892)))

(assert (= (and d!1711108 c!926600) b!5328724))

(assert (= (and d!1711108 (not c!926600)) b!5328730))

(assert (= (and b!5328730 res!2260178) b!5328723))

(assert (= (and b!5328723 c!926602) b!5328732))

(assert (= (and b!5328723 (not c!926602)) b!5328731))

(assert (= (and b!5328731 c!926603) b!5328729))

(assert (= (and b!5328731 (not c!926603)) b!5328725))

(assert (= (and b!5328729 (not res!2260180)) b!5328726))

(assert (= (and b!5328725 c!926601) b!5328728))

(assert (= (and b!5328725 (not c!926601)) b!5328722))

(assert (= (and b!5328728 (not res!2260179)) b!5328727))

(assert (= (or b!5328727 b!5328722) bm!380715))

(assert (= (or b!5328724 b!5328728) bm!380716))

(declare-fun m!6362432 () Bool)

(assert (=> bm!380715 m!6362432))

(assert (=> bm!380716 m!6362158))

(declare-fun m!6362434 () Bool)

(assert (=> b!5328726 m!6362434))

(declare-fun m!6362436 () Bool)

(assert (=> b!5328729 m!6362436))

(assert (=> b!5327884 d!1711108))

(declare-fun d!1711110 () Bool)

(assert (=> d!1711110 (= (isDefined!11807 (findConcatSeparation!1518 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 Nil!61156 s!2326 s!2326)) (not (isEmpty!33128 (findConcatSeparation!1518 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 Nil!61156 s!2326 s!2326))))))

(declare-fun bs!1235051 () Bool)

(assert (= bs!1235051 d!1711110))

(assert (=> bs!1235051 m!6361710))

(declare-fun m!6362438 () Bool)

(assert (=> bs!1235051 m!6362438))

(assert (=> b!5327884 d!1711110))

(declare-fun bs!1235052 () Bool)

(declare-fun d!1711112 () Bool)

(assert (= bs!1235052 (and d!1711112 d!1711070)))

(declare-fun lambda!272212 () Int)

(assert (=> bs!1235052 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272212 lambda!272200))))

(declare-fun bs!1235053 () Bool)

(assert (= bs!1235053 (and d!1711112 b!5327884)))

(assert (=> bs!1235053 (not (= lambda!272212 lambda!272114))))

(declare-fun bs!1235054 () Bool)

(assert (= bs!1235054 (and d!1711112 b!5328395)))

(assert (=> bs!1235054 (not (= lambda!272212 lambda!272163))))

(assert (=> bs!1235052 (not (= lambda!272212 lambda!272201))))

(declare-fun bs!1235055 () Bool)

(assert (= bs!1235055 (and d!1711112 b!5328727)))

(assert (=> bs!1235055 (not (= lambda!272212 lambda!272210))))

(assert (=> bs!1235053 (= lambda!272212 lambda!272113)))

(declare-fun bs!1235056 () Bool)

(assert (= bs!1235056 (and d!1711112 b!5328722)))

(assert (=> bs!1235056 (not (= lambda!272212 lambda!272211))))

(declare-fun bs!1235057 () Bool)

(assert (= bs!1235057 (and d!1711112 b!5327897)))

(assert (=> bs!1235057 (not (= lambda!272212 lambda!272111))))

(assert (=> bs!1235057 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272212 lambda!272110))))

(declare-fun bs!1235058 () Bool)

(assert (= bs!1235058 (and d!1711112 b!5328390)))

(assert (=> bs!1235058 (not (= lambda!272212 lambda!272165))))

(declare-fun bs!1235059 () Bool)

(assert (= bs!1235059 (and d!1711112 d!1711068)))

(assert (=> bs!1235059 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272212 lambda!272195))))

(assert (=> d!1711112 true))

(assert (=> d!1711112 true))

(assert (=> d!1711112 true))

(declare-fun lambda!272213 () Int)

(assert (=> bs!1235052 (not (= lambda!272213 lambda!272200))))

(assert (=> bs!1235053 (= lambda!272213 lambda!272114)))

(assert (=> bs!1235054 (not (= lambda!272213 lambda!272163))))

(assert (=> bs!1235052 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272213 lambda!272201))))

(declare-fun bs!1235060 () Bool)

(assert (= bs!1235060 d!1711112))

(assert (=> bs!1235060 (not (= lambda!272213 lambda!272212))))

(assert (=> bs!1235055 (not (= lambda!272213 lambda!272210))))

(assert (=> bs!1235053 (not (= lambda!272213 lambda!272113))))

(assert (=> bs!1235056 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 lt!2173801)) (= lt!2173809 (regTwo!30498 lt!2173801))) (= lambda!272213 lambda!272211))))

(assert (=> bs!1235057 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272213 lambda!272111))))

(assert (=> bs!1235057 (not (= lambda!272213 lambda!272110))))

(assert (=> bs!1235058 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272213 lambda!272165))))

(assert (=> bs!1235059 (not (= lambda!272213 lambda!272195))))

(assert (=> d!1711112 true))

(assert (=> d!1711112 true))

(assert (=> d!1711112 true))

(assert (=> d!1711112 (= (Exists!2174 lambda!272212) (Exists!2174 lambda!272213))))

(declare-fun lt!2173966 () Unit!153490)

(assert (=> d!1711112 (= lt!2173966 (choose!39904 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 s!2326))))

(assert (=> d!1711112 (validRegex!6729 (regOne!30498 (regOne!30498 r!7292)))))

(assert (=> d!1711112 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!828 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 s!2326) lt!2173966)))

(declare-fun m!6362440 () Bool)

(assert (=> bs!1235060 m!6362440))

(declare-fun m!6362442 () Bool)

(assert (=> bs!1235060 m!6362442))

(declare-fun m!6362444 () Bool)

(assert (=> bs!1235060 m!6362444))

(declare-fun m!6362446 () Bool)

(assert (=> bs!1235060 m!6362446))

(assert (=> b!5327884 d!1711112))

(declare-fun d!1711114 () Bool)

(declare-fun res!2260185 () Bool)

(declare-fun e!3309897 () Bool)

(assert (=> d!1711114 (=> res!2260185 e!3309897)))

(assert (=> d!1711114 (= res!2260185 ((_ is Nil!61154) lt!2173812))))

(assert (=> d!1711114 (= (forall!14411 lt!2173812 lambda!272115) e!3309897)))

(declare-fun b!5328737 () Bool)

(declare-fun e!3309898 () Bool)

(assert (=> b!5328737 (= e!3309897 e!3309898)))

(declare-fun res!2260186 () Bool)

(assert (=> b!5328737 (=> (not res!2260186) (not e!3309898))))

(declare-fun dynLambda!24183 (Int Regex!14993) Bool)

(assert (=> b!5328737 (= res!2260186 (dynLambda!24183 lambda!272115 (h!67602 lt!2173812)))))

(declare-fun b!5328738 () Bool)

(assert (=> b!5328738 (= e!3309898 (forall!14411 (t!374493 lt!2173812) lambda!272115))))

(assert (= (and d!1711114 (not res!2260185)) b!5328737))

(assert (= (and b!5328737 res!2260186) b!5328738))

(declare-fun b_lambda!204949 () Bool)

(assert (=> (not b_lambda!204949) (not b!5328737)))

(declare-fun m!6362448 () Bool)

(assert (=> b!5328737 m!6362448))

(declare-fun m!6362450 () Bool)

(assert (=> b!5328738 m!6362450))

(assert (=> b!5327884 d!1711114))

(declare-fun d!1711116 () Bool)

(assert (=> d!1711116 (= (Exists!2174 lambda!272114) (choose!39902 lambda!272114))))

(declare-fun bs!1235061 () Bool)

(assert (= bs!1235061 d!1711116))

(declare-fun m!6362452 () Bool)

(assert (=> bs!1235061 m!6362452))

(assert (=> b!5327884 d!1711116))

(declare-fun b!5328739 () Bool)

(declare-fun res!2260189 () Bool)

(declare-fun e!3309902 () Bool)

(assert (=> b!5328739 (=> (not res!2260189) (not e!3309902))))

(declare-fun lt!2173967 () Option!15104)

(assert (=> b!5328739 (= res!2260189 (matchR!7178 (regOne!30498 (regOne!30498 r!7292)) (_1!35495 (get!21034 lt!2173967))))))

(declare-fun b!5328740 () Bool)

(declare-fun lt!2173969 () Unit!153490)

(declare-fun lt!2173968 () Unit!153490)

(assert (=> b!5328740 (= lt!2173969 lt!2173968)))

(assert (=> b!5328740 (= (++!13332 (++!13332 Nil!61156 (Cons!61156 (h!67604 s!2326) Nil!61156)) (t!374495 s!2326)) s!2326)))

(assert (=> b!5328740 (= lt!2173968 (lemmaMoveElementToOtherListKeepsConcatEq!1747 Nil!61156 (h!67604 s!2326) (t!374495 s!2326) s!2326))))

(declare-fun e!3309899 () Option!15104)

(assert (=> b!5328740 (= e!3309899 (findConcatSeparation!1518 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 (++!13332 Nil!61156 (Cons!61156 (h!67604 s!2326) Nil!61156)) (t!374495 s!2326) s!2326))))

(declare-fun b!5328741 () Bool)

(declare-fun e!3309900 () Option!15104)

(assert (=> b!5328741 (= e!3309900 (Some!15103 (tuple2!64385 Nil!61156 s!2326)))))

(declare-fun b!5328742 () Bool)

(declare-fun e!3309901 () Bool)

(assert (=> b!5328742 (= e!3309901 (not (isDefined!11807 lt!2173967)))))

(declare-fun b!5328743 () Bool)

(assert (=> b!5328743 (= e!3309899 None!15103)))

(declare-fun b!5328744 () Bool)

(assert (=> b!5328744 (= e!3309902 (= (++!13332 (_1!35495 (get!21034 lt!2173967)) (_2!35495 (get!21034 lt!2173967))) s!2326))))

(declare-fun d!1711118 () Bool)

(assert (=> d!1711118 e!3309901))

(declare-fun res!2260188 () Bool)

(assert (=> d!1711118 (=> res!2260188 e!3309901)))

(assert (=> d!1711118 (= res!2260188 e!3309902)))

(declare-fun res!2260191 () Bool)

(assert (=> d!1711118 (=> (not res!2260191) (not e!3309902))))

(assert (=> d!1711118 (= res!2260191 (isDefined!11807 lt!2173967))))

(assert (=> d!1711118 (= lt!2173967 e!3309900)))

(declare-fun c!926604 () Bool)

(declare-fun e!3309903 () Bool)

(assert (=> d!1711118 (= c!926604 e!3309903)))

(declare-fun res!2260190 () Bool)

(assert (=> d!1711118 (=> (not res!2260190) (not e!3309903))))

(assert (=> d!1711118 (= res!2260190 (matchR!7178 (regOne!30498 (regOne!30498 r!7292)) Nil!61156))))

(assert (=> d!1711118 (validRegex!6729 (regOne!30498 (regOne!30498 r!7292)))))

(assert (=> d!1711118 (= (findConcatSeparation!1518 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 Nil!61156 s!2326 s!2326) lt!2173967)))

(declare-fun b!5328745 () Bool)

(assert (=> b!5328745 (= e!3309900 e!3309899)))

(declare-fun c!926605 () Bool)

(assert (=> b!5328745 (= c!926605 ((_ is Nil!61156) s!2326))))

(declare-fun b!5328746 () Bool)

(assert (=> b!5328746 (= e!3309903 (matchR!7178 lt!2173809 s!2326))))

(declare-fun b!5328747 () Bool)

(declare-fun res!2260187 () Bool)

(assert (=> b!5328747 (=> (not res!2260187) (not e!3309902))))

(assert (=> b!5328747 (= res!2260187 (matchR!7178 lt!2173809 (_2!35495 (get!21034 lt!2173967))))))

(assert (= (and d!1711118 res!2260190) b!5328746))

(assert (= (and d!1711118 c!926604) b!5328741))

(assert (= (and d!1711118 (not c!926604)) b!5328745))

(assert (= (and b!5328745 c!926605) b!5328743))

(assert (= (and b!5328745 (not c!926605)) b!5328740))

(assert (= (and d!1711118 res!2260191) b!5328739))

(assert (= (and b!5328739 res!2260189) b!5328747))

(assert (= (and b!5328747 res!2260187) b!5328744))

(assert (= (and d!1711118 (not res!2260188)) b!5328742))

(declare-fun m!6362454 () Bool)

(assert (=> b!5328744 m!6362454))

(declare-fun m!6362456 () Bool)

(assert (=> b!5328744 m!6362456))

(assert (=> b!5328739 m!6362454))

(declare-fun m!6362458 () Bool)

(assert (=> b!5328739 m!6362458))

(declare-fun m!6362460 () Bool)

(assert (=> b!5328742 m!6362460))

(assert (=> d!1711118 m!6362460))

(declare-fun m!6362462 () Bool)

(assert (=> d!1711118 m!6362462))

(assert (=> d!1711118 m!6362446))

(assert (=> b!5328740 m!6362302))

(assert (=> b!5328740 m!6362302))

(assert (=> b!5328740 m!6362304))

(assert (=> b!5328740 m!6362306))

(assert (=> b!5328740 m!6362302))

(declare-fun m!6362464 () Bool)

(assert (=> b!5328740 m!6362464))

(assert (=> b!5328747 m!6362454))

(declare-fun m!6362466 () Bool)

(assert (=> b!5328747 m!6362466))

(declare-fun m!6362468 () Bool)

(assert (=> b!5328746 m!6362468))

(assert (=> b!5327884 d!1711118))

(declare-fun d!1711120 () Bool)

(assert (=> d!1711120 (= (Exists!2174 lambda!272113) (choose!39902 lambda!272113))))

(declare-fun bs!1235062 () Bool)

(assert (= bs!1235062 d!1711120))

(declare-fun m!6362470 () Bool)

(assert (=> bs!1235062 m!6362470))

(assert (=> b!5327884 d!1711120))

(declare-fun bs!1235063 () Bool)

(declare-fun d!1711122 () Bool)

(assert (= bs!1235063 (and d!1711122 d!1711104)))

(declare-fun lambda!272214 () Int)

(assert (=> bs!1235063 (= lambda!272214 lambda!272208)))

(declare-fun bs!1235064 () Bool)

(assert (= bs!1235064 (and d!1711122 d!1711106)))

(assert (=> bs!1235064 (= lambda!272214 lambda!272209)))

(declare-fun bs!1235065 () Bool)

(assert (= bs!1235065 (and d!1711122 d!1711058)))

(assert (=> bs!1235065 (= lambda!272214 lambda!272192)))

(declare-fun bs!1235066 () Bool)

(assert (= bs!1235066 (and d!1711122 d!1711102)))

(assert (=> bs!1235066 (= lambda!272214 lambda!272205)))

(declare-fun bs!1235067 () Bool)

(assert (= bs!1235067 (and d!1711122 d!1711100)))

(assert (=> bs!1235067 (= lambda!272214 lambda!272202)))

(declare-fun bs!1235068 () Bool)

(assert (= bs!1235068 (and d!1711122 b!5327884)))

(assert (=> bs!1235068 (= lambda!272214 lambda!272115)))

(declare-fun bs!1235069 () Bool)

(assert (= bs!1235069 (and d!1711122 d!1711036)))

(assert (=> bs!1235069 (= lambda!272214 lambda!272174)))

(declare-fun b!5328748 () Bool)

(declare-fun e!3309907 () Regex!14993)

(declare-fun e!3309908 () Regex!14993)

(assert (=> b!5328748 (= e!3309907 e!3309908)))

(declare-fun c!926607 () Bool)

(assert (=> b!5328748 (= c!926607 ((_ is Cons!61154) lt!2173812))))

(declare-fun b!5328749 () Bool)

(assert (=> b!5328749 (= e!3309908 (Concat!23838 (h!67602 lt!2173812) (generalisedConcat!662 (t!374493 lt!2173812))))))

(declare-fun b!5328750 () Bool)

(assert (=> b!5328750 (= e!3309908 EmptyExpr!14993)))

(declare-fun b!5328751 () Bool)

(declare-fun e!3309906 () Bool)

(declare-fun e!3309904 () Bool)

(assert (=> b!5328751 (= e!3309906 e!3309904)))

(declare-fun c!926609 () Bool)

(assert (=> b!5328751 (= c!926609 (isEmpty!33124 lt!2173812))))

(declare-fun b!5328752 () Bool)

(declare-fun e!3309905 () Bool)

(declare-fun lt!2173970 () Regex!14993)

(assert (=> b!5328752 (= e!3309905 (= lt!2173970 (head!11423 lt!2173812)))))

(declare-fun b!5328753 () Bool)

(assert (=> b!5328753 (= e!3309907 (h!67602 lt!2173812))))

(declare-fun b!5328754 () Bool)

(assert (=> b!5328754 (= e!3309905 (isConcat!410 lt!2173970))))

(declare-fun b!5328755 () Bool)

(assert (=> b!5328755 (= e!3309904 e!3309905)))

(declare-fun c!926606 () Bool)

(assert (=> b!5328755 (= c!926606 (isEmpty!33124 (tail!10520 lt!2173812)))))

(assert (=> d!1711122 e!3309906))

(declare-fun res!2260193 () Bool)

(assert (=> d!1711122 (=> (not res!2260193) (not e!3309906))))

(assert (=> d!1711122 (= res!2260193 (validRegex!6729 lt!2173970))))

(assert (=> d!1711122 (= lt!2173970 e!3309907)))

(declare-fun c!926608 () Bool)

(declare-fun e!3309909 () Bool)

(assert (=> d!1711122 (= c!926608 e!3309909)))

(declare-fun res!2260192 () Bool)

(assert (=> d!1711122 (=> (not res!2260192) (not e!3309909))))

(assert (=> d!1711122 (= res!2260192 ((_ is Cons!61154) lt!2173812))))

(assert (=> d!1711122 (forall!14411 lt!2173812 lambda!272214)))

(assert (=> d!1711122 (= (generalisedConcat!662 lt!2173812) lt!2173970)))

(declare-fun b!5328756 () Bool)

(assert (=> b!5328756 (= e!3309909 (isEmpty!33124 (t!374493 lt!2173812)))))

(declare-fun b!5328757 () Bool)

(assert (=> b!5328757 (= e!3309904 (isEmptyExpr!887 lt!2173970))))

(assert (= (and d!1711122 res!2260192) b!5328756))

(assert (= (and d!1711122 c!926608) b!5328753))

(assert (= (and d!1711122 (not c!926608)) b!5328748))

(assert (= (and b!5328748 c!926607) b!5328749))

(assert (= (and b!5328748 (not c!926607)) b!5328750))

(assert (= (and d!1711122 res!2260193) b!5328751))

(assert (= (and b!5328751 c!926609) b!5328757))

(assert (= (and b!5328751 (not c!926609)) b!5328755))

(assert (= (and b!5328755 c!926606) b!5328752))

(assert (= (and b!5328755 (not c!926606)) b!5328754))

(declare-fun m!6362472 () Bool)

(assert (=> b!5328752 m!6362472))

(declare-fun m!6362474 () Bool)

(assert (=> d!1711122 m!6362474))

(declare-fun m!6362476 () Bool)

(assert (=> d!1711122 m!6362476))

(declare-fun m!6362478 () Bool)

(assert (=> b!5328757 m!6362478))

(declare-fun m!6362480 () Bool)

(assert (=> b!5328754 m!6362480))

(declare-fun m!6362482 () Bool)

(assert (=> b!5328749 m!6362482))

(declare-fun m!6362484 () Bool)

(assert (=> b!5328756 m!6362484))

(declare-fun m!6362486 () Bool)

(assert (=> b!5328755 m!6362486))

(assert (=> b!5328755 m!6362486))

(declare-fun m!6362488 () Bool)

(assert (=> b!5328755 m!6362488))

(declare-fun m!6362490 () Bool)

(assert (=> b!5328751 m!6362490))

(assert (=> b!5327884 d!1711122))

(declare-fun d!1711124 () Bool)

(assert (=> d!1711124 (= (matchR!7178 lt!2173801 s!2326) (matchZipper!1237 lt!2173806 s!2326))))

(declare-fun lt!2173973 () Unit!153490)

(declare-fun choose!39907 ((InoxSet Context!8754) List!61279 Regex!14993 List!61280) Unit!153490)

(assert (=> d!1711124 (= lt!2173973 (choose!39907 lt!2173806 lt!2173795 lt!2173801 s!2326))))

(assert (=> d!1711124 (validRegex!6729 lt!2173801)))

(assert (=> d!1711124 (= (theoremZipperRegexEquiv!391 lt!2173806 lt!2173795 lt!2173801 s!2326) lt!2173973)))

(declare-fun bs!1235070 () Bool)

(assert (= bs!1235070 d!1711124))

(assert (=> bs!1235070 m!6361722))

(assert (=> bs!1235070 m!6361728))

(declare-fun m!6362492 () Bool)

(assert (=> bs!1235070 m!6362492))

(declare-fun m!6362494 () Bool)

(assert (=> bs!1235070 m!6362494))

(assert (=> b!5327884 d!1711124))

(declare-fun d!1711126 () Bool)

(assert (=> d!1711126 (= (matchR!7178 lt!2173801 s!2326) (matchRSpec!2096 lt!2173801 s!2326))))

(declare-fun lt!2173974 () Unit!153490)

(assert (=> d!1711126 (= lt!2173974 (choose!39899 lt!2173801 s!2326))))

(assert (=> d!1711126 (validRegex!6729 lt!2173801)))

(assert (=> d!1711126 (= (mainMatchTheorem!2096 lt!2173801 s!2326) lt!2173974)))

(declare-fun bs!1235071 () Bool)

(assert (= bs!1235071 d!1711126))

(assert (=> bs!1235071 m!6361722))

(assert (=> bs!1235071 m!6361726))

(declare-fun m!6362496 () Bool)

(assert (=> bs!1235071 m!6362496))

(assert (=> bs!1235071 m!6362494))

(assert (=> b!5327884 d!1711126))

(declare-fun b!5328759 () Bool)

(declare-fun e!3309912 () Bool)

(declare-fun e!3309910 () Bool)

(assert (=> b!5328759 (= e!3309912 e!3309910)))

(declare-fun c!926612 () Bool)

(assert (=> b!5328759 (= c!926612 ((_ is EmptyLang!14993) lt!2173801))))

(declare-fun b!5328760 () Bool)

(declare-fun e!3309911 () Bool)

(assert (=> b!5328760 (= e!3309911 (not (= (head!11422 s!2326) (c!926337 lt!2173801))))))

(declare-fun b!5328761 () Bool)

(declare-fun res!2260196 () Bool)

(declare-fun e!3309914 () Bool)

(assert (=> b!5328761 (=> (not res!2260196) (not e!3309914))))

(declare-fun call!380722 () Bool)

(assert (=> b!5328761 (= res!2260196 (not call!380722))))

(declare-fun b!5328762 () Bool)

(declare-fun res!2260199 () Bool)

(declare-fun e!3309915 () Bool)

(assert (=> b!5328762 (=> res!2260199 e!3309915)))

(assert (=> b!5328762 (= res!2260199 (not ((_ is ElementMatch!14993) lt!2173801)))))

(assert (=> b!5328762 (= e!3309910 e!3309915)))

(declare-fun b!5328763 () Bool)

(declare-fun e!3309913 () Bool)

(assert (=> b!5328763 (= e!3309915 e!3309913)))

(declare-fun res!2260198 () Bool)

(assert (=> b!5328763 (=> (not res!2260198) (not e!3309913))))

(declare-fun lt!2173975 () Bool)

(assert (=> b!5328763 (= res!2260198 (not lt!2173975))))

(declare-fun b!5328764 () Bool)

(assert (=> b!5328764 (= e!3309914 (= (head!11422 s!2326) (c!926337 lt!2173801)))))

(declare-fun b!5328765 () Bool)

(declare-fun res!2260194 () Bool)

(assert (=> b!5328765 (=> (not res!2260194) (not e!3309914))))

(assert (=> b!5328765 (= res!2260194 (isEmpty!33127 (tail!10519 s!2326)))))

(declare-fun b!5328758 () Bool)

(assert (=> b!5328758 (= e!3309913 e!3309911)))

(declare-fun res!2260201 () Bool)

(assert (=> b!5328758 (=> res!2260201 e!3309911)))

(assert (=> b!5328758 (= res!2260201 call!380722)))

(declare-fun d!1711128 () Bool)

(assert (=> d!1711128 e!3309912))

(declare-fun c!926611 () Bool)

(assert (=> d!1711128 (= c!926611 ((_ is EmptyExpr!14993) lt!2173801))))

(declare-fun e!3309916 () Bool)

(assert (=> d!1711128 (= lt!2173975 e!3309916)))

(declare-fun c!926610 () Bool)

(assert (=> d!1711128 (= c!926610 (isEmpty!33127 s!2326))))

(assert (=> d!1711128 (validRegex!6729 lt!2173801)))

(assert (=> d!1711128 (= (matchR!7178 lt!2173801 s!2326) lt!2173975)))

(declare-fun b!5328766 () Bool)

(assert (=> b!5328766 (= e!3309910 (not lt!2173975))))

(declare-fun b!5328767 () Bool)

(assert (=> b!5328767 (= e!3309916 (nullable!5162 lt!2173801))))

(declare-fun b!5328768 () Bool)

(declare-fun res!2260197 () Bool)

(assert (=> b!5328768 (=> res!2260197 e!3309915)))

(assert (=> b!5328768 (= res!2260197 e!3309914)))

(declare-fun res!2260195 () Bool)

(assert (=> b!5328768 (=> (not res!2260195) (not e!3309914))))

(assert (=> b!5328768 (= res!2260195 lt!2173975)))

(declare-fun b!5328769 () Bool)

(assert (=> b!5328769 (= e!3309916 (matchR!7178 (derivativeStep!4173 lt!2173801 (head!11422 s!2326)) (tail!10519 s!2326)))))

(declare-fun b!5328770 () Bool)

(declare-fun res!2260200 () Bool)

(assert (=> b!5328770 (=> res!2260200 e!3309911)))

(assert (=> b!5328770 (= res!2260200 (not (isEmpty!33127 (tail!10519 s!2326))))))

(declare-fun b!5328771 () Bool)

(assert (=> b!5328771 (= e!3309912 (= lt!2173975 call!380722))))

(declare-fun bm!380717 () Bool)

(assert (=> bm!380717 (= call!380722 (isEmpty!33127 s!2326))))

(assert (= (and d!1711128 c!926610) b!5328767))

(assert (= (and d!1711128 (not c!926610)) b!5328769))

(assert (= (and d!1711128 c!926611) b!5328771))

(assert (= (and d!1711128 (not c!926611)) b!5328759))

(assert (= (and b!5328759 c!926612) b!5328766))

(assert (= (and b!5328759 (not c!926612)) b!5328762))

(assert (= (and b!5328762 (not res!2260199)) b!5328768))

(assert (= (and b!5328768 res!2260195) b!5328761))

(assert (= (and b!5328761 res!2260196) b!5328765))

(assert (= (and b!5328765 res!2260194) b!5328764))

(assert (= (and b!5328768 (not res!2260197)) b!5328763))

(assert (= (and b!5328763 res!2260198) b!5328758))

(assert (= (and b!5328758 (not res!2260201)) b!5328770))

(assert (= (and b!5328770 (not res!2260200)) b!5328760))

(assert (= (or b!5328771 b!5328758 b!5328761) bm!380717))

(assert (=> bm!380717 m!6362158))

(assert (=> b!5328765 m!6362202))

(assert (=> b!5328765 m!6362202))

(assert (=> b!5328765 m!6362204))

(assert (=> b!5328760 m!6362206))

(assert (=> d!1711128 m!6362158))

(assert (=> d!1711128 m!6362494))

(assert (=> b!5328769 m!6362206))

(assert (=> b!5328769 m!6362206))

(declare-fun m!6362498 () Bool)

(assert (=> b!5328769 m!6362498))

(assert (=> b!5328769 m!6362202))

(assert (=> b!5328769 m!6362498))

(assert (=> b!5328769 m!6362202))

(declare-fun m!6362500 () Bool)

(assert (=> b!5328769 m!6362500))

(declare-fun m!6362502 () Bool)

(assert (=> b!5328767 m!6362502))

(assert (=> b!5328770 m!6362202))

(assert (=> b!5328770 m!6362202))

(assert (=> b!5328770 m!6362204))

(assert (=> b!5328764 m!6362206))

(assert (=> b!5327884 d!1711128))

(declare-fun d!1711130 () Bool)

(declare-fun c!926613 () Bool)

(assert (=> d!1711130 (= c!926613 (isEmpty!33127 s!2326))))

(declare-fun e!3309917 () Bool)

(assert (=> d!1711130 (= (matchZipper!1237 lt!2173806 s!2326) e!3309917)))

(declare-fun b!5328772 () Bool)

(assert (=> b!5328772 (= e!3309917 (nullableZipper!1352 lt!2173806))))

(declare-fun b!5328773 () Bool)

(assert (=> b!5328773 (= e!3309917 (matchZipper!1237 (derivationStepZipper!1234 lt!2173806 (head!11422 s!2326)) (tail!10519 s!2326)))))

(assert (= (and d!1711130 c!926613) b!5328772))

(assert (= (and d!1711130 (not c!926613)) b!5328773))

(assert (=> d!1711130 m!6362158))

(declare-fun m!6362504 () Bool)

(assert (=> b!5328772 m!6362504))

(assert (=> b!5328773 m!6362206))

(assert (=> b!5328773 m!6362206))

(declare-fun m!6362506 () Bool)

(assert (=> b!5328773 m!6362506))

(assert (=> b!5328773 m!6362202))

(assert (=> b!5328773 m!6362506))

(assert (=> b!5328773 m!6362202))

(declare-fun m!6362508 () Bool)

(assert (=> b!5328773 m!6362508))

(assert (=> b!5327884 d!1711130))

(declare-fun bs!1235072 () Bool)

(declare-fun d!1711132 () Bool)

(assert (= bs!1235072 (and d!1711132 d!1711070)))

(declare-fun lambda!272215 () Int)

(assert (=> bs!1235072 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272215 lambda!272200))))

(declare-fun bs!1235073 () Bool)

(assert (= bs!1235073 (and d!1711132 b!5327884)))

(assert (=> bs!1235073 (not (= lambda!272215 lambda!272114))))

(declare-fun bs!1235074 () Bool)

(assert (= bs!1235074 (and d!1711132 b!5328395)))

(assert (=> bs!1235074 (not (= lambda!272215 lambda!272163))))

(assert (=> bs!1235072 (not (= lambda!272215 lambda!272201))))

(declare-fun bs!1235075 () Bool)

(assert (= bs!1235075 (and d!1711132 d!1711112)))

(assert (=> bs!1235075 (= lambda!272215 lambda!272212)))

(declare-fun bs!1235076 () Bool)

(assert (= bs!1235076 (and d!1711132 b!5328727)))

(assert (=> bs!1235076 (not (= lambda!272215 lambda!272210))))

(assert (=> bs!1235073 (= lambda!272215 lambda!272113)))

(assert (=> bs!1235075 (not (= lambda!272215 lambda!272213))))

(declare-fun bs!1235077 () Bool)

(assert (= bs!1235077 (and d!1711132 b!5328722)))

(assert (=> bs!1235077 (not (= lambda!272215 lambda!272211))))

(declare-fun bs!1235078 () Bool)

(assert (= bs!1235078 (and d!1711132 b!5327897)))

(assert (=> bs!1235078 (not (= lambda!272215 lambda!272111))))

(assert (=> bs!1235078 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272215 lambda!272110))))

(declare-fun bs!1235079 () Bool)

(assert (= bs!1235079 (and d!1711132 b!5328390)))

(assert (=> bs!1235079 (not (= lambda!272215 lambda!272165))))

(declare-fun bs!1235080 () Bool)

(assert (= bs!1235080 (and d!1711132 d!1711068)))

(assert (=> bs!1235080 (= (and (= (regOne!30498 (regOne!30498 r!7292)) (regOne!30498 r!7292)) (= lt!2173809 (regTwo!30498 r!7292))) (= lambda!272215 lambda!272195))))

(assert (=> d!1711132 true))

(assert (=> d!1711132 true))

(assert (=> d!1711132 true))

(assert (=> d!1711132 (= (isDefined!11807 (findConcatSeparation!1518 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 Nil!61156 s!2326 s!2326)) (Exists!2174 lambda!272215))))

(declare-fun lt!2173976 () Unit!153490)

(assert (=> d!1711132 (= lt!2173976 (choose!39903 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 s!2326))))

(assert (=> d!1711132 (validRegex!6729 (regOne!30498 (regOne!30498 r!7292)))))

(assert (=> d!1711132 (= (lemmaFindConcatSeparationEquivalentToExists!1282 (regOne!30498 (regOne!30498 r!7292)) lt!2173809 s!2326) lt!2173976)))

(declare-fun bs!1235081 () Bool)

(assert (= bs!1235081 d!1711132))

(declare-fun m!6362510 () Bool)

(assert (=> bs!1235081 m!6362510))

(assert (=> bs!1235081 m!6361710))

(assert (=> bs!1235081 m!6361710))

(assert (=> bs!1235081 m!6361712))

(assert (=> bs!1235081 m!6362446))

(declare-fun m!6362512 () Bool)

(assert (=> bs!1235081 m!6362512))

(assert (=> b!5327884 d!1711132))

(declare-fun b!5328787 () Bool)

(declare-fun e!3309920 () Bool)

(declare-fun tp!1483143 () Bool)

(declare-fun tp!1483144 () Bool)

(assert (=> b!5328787 (= e!3309920 (and tp!1483143 tp!1483144))))

(assert (=> b!5327896 (= tp!1483066 e!3309920)))

(declare-fun b!5328784 () Bool)

(assert (=> b!5328784 (= e!3309920 tp_is_empty!39239)))

(declare-fun b!5328785 () Bool)

(declare-fun tp!1483146 () Bool)

(declare-fun tp!1483145 () Bool)

(assert (=> b!5328785 (= e!3309920 (and tp!1483146 tp!1483145))))

(declare-fun b!5328786 () Bool)

(declare-fun tp!1483142 () Bool)

(assert (=> b!5328786 (= e!3309920 tp!1483142)))

(assert (= (and b!5327896 ((_ is ElementMatch!14993) (regOne!30498 r!7292))) b!5328784))

(assert (= (and b!5327896 ((_ is Concat!23838) (regOne!30498 r!7292))) b!5328785))

(assert (= (and b!5327896 ((_ is Star!14993) (regOne!30498 r!7292))) b!5328786))

(assert (= (and b!5327896 ((_ is Union!14993) (regOne!30498 r!7292))) b!5328787))

(declare-fun b!5328791 () Bool)

(declare-fun e!3309921 () Bool)

(declare-fun tp!1483148 () Bool)

(declare-fun tp!1483149 () Bool)

(assert (=> b!5328791 (= e!3309921 (and tp!1483148 tp!1483149))))

(assert (=> b!5327896 (= tp!1483065 e!3309921)))

(declare-fun b!5328788 () Bool)

(assert (=> b!5328788 (= e!3309921 tp_is_empty!39239)))

(declare-fun b!5328789 () Bool)

(declare-fun tp!1483151 () Bool)

(declare-fun tp!1483150 () Bool)

(assert (=> b!5328789 (= e!3309921 (and tp!1483151 tp!1483150))))

(declare-fun b!5328790 () Bool)

(declare-fun tp!1483147 () Bool)

(assert (=> b!5328790 (= e!3309921 tp!1483147)))

(assert (= (and b!5327896 ((_ is ElementMatch!14993) (regTwo!30498 r!7292))) b!5328788))

(assert (= (and b!5327896 ((_ is Concat!23838) (regTwo!30498 r!7292))) b!5328789))

(assert (= (and b!5327896 ((_ is Star!14993) (regTwo!30498 r!7292))) b!5328790))

(assert (= (and b!5327896 ((_ is Union!14993) (regTwo!30498 r!7292))) b!5328791))

(declare-fun b!5328796 () Bool)

(declare-fun e!3309924 () Bool)

(declare-fun tp!1483154 () Bool)

(assert (=> b!5328796 (= e!3309924 (and tp_is_empty!39239 tp!1483154))))

(assert (=> b!5327885 (= tp!1483069 e!3309924)))

(assert (= (and b!5327885 ((_ is Cons!61156) (t!374495 s!2326))) b!5328796))

(declare-fun b!5328800 () Bool)

(declare-fun e!3309925 () Bool)

(declare-fun tp!1483156 () Bool)

(declare-fun tp!1483157 () Bool)

(assert (=> b!5328800 (= e!3309925 (and tp!1483156 tp!1483157))))

(assert (=> b!5327887 (= tp!1483071 e!3309925)))

(declare-fun b!5328797 () Bool)

(assert (=> b!5328797 (= e!3309925 tp_is_empty!39239)))

(declare-fun b!5328798 () Bool)

(declare-fun tp!1483159 () Bool)

(declare-fun tp!1483158 () Bool)

(assert (=> b!5328798 (= e!3309925 (and tp!1483159 tp!1483158))))

(declare-fun b!5328799 () Bool)

(declare-fun tp!1483155 () Bool)

(assert (=> b!5328799 (= e!3309925 tp!1483155)))

(assert (= (and b!5327887 ((_ is ElementMatch!14993) (regOne!30499 r!7292))) b!5328797))

(assert (= (and b!5327887 ((_ is Concat!23838) (regOne!30499 r!7292))) b!5328798))

(assert (= (and b!5327887 ((_ is Star!14993) (regOne!30499 r!7292))) b!5328799))

(assert (= (and b!5327887 ((_ is Union!14993) (regOne!30499 r!7292))) b!5328800))

(declare-fun b!5328804 () Bool)

(declare-fun e!3309926 () Bool)

(declare-fun tp!1483161 () Bool)

(declare-fun tp!1483162 () Bool)

(assert (=> b!5328804 (= e!3309926 (and tp!1483161 tp!1483162))))

(assert (=> b!5327887 (= tp!1483073 e!3309926)))

(declare-fun b!5328801 () Bool)

(assert (=> b!5328801 (= e!3309926 tp_is_empty!39239)))

(declare-fun b!5328802 () Bool)

(declare-fun tp!1483164 () Bool)

(declare-fun tp!1483163 () Bool)

(assert (=> b!5328802 (= e!3309926 (and tp!1483164 tp!1483163))))

(declare-fun b!5328803 () Bool)

(declare-fun tp!1483160 () Bool)

(assert (=> b!5328803 (= e!3309926 tp!1483160)))

(assert (= (and b!5327887 ((_ is ElementMatch!14993) (regTwo!30499 r!7292))) b!5328801))

(assert (= (and b!5327887 ((_ is Concat!23838) (regTwo!30499 r!7292))) b!5328802))

(assert (= (and b!5327887 ((_ is Star!14993) (regTwo!30499 r!7292))) b!5328803))

(assert (= (and b!5327887 ((_ is Union!14993) (regTwo!30499 r!7292))) b!5328804))

(declare-fun b!5328809 () Bool)

(declare-fun e!3309929 () Bool)

(declare-fun tp!1483169 () Bool)

(declare-fun tp!1483170 () Bool)

(assert (=> b!5328809 (= e!3309929 (and tp!1483169 tp!1483170))))

(assert (=> b!5327892 (= tp!1483064 e!3309929)))

(assert (= (and b!5327892 ((_ is Cons!61154) (exprs!4877 setElem!34335))) b!5328809))

(declare-fun b!5328810 () Bool)

(declare-fun e!3309930 () Bool)

(declare-fun tp!1483171 () Bool)

(declare-fun tp!1483172 () Bool)

(assert (=> b!5328810 (= e!3309930 (and tp!1483171 tp!1483172))))

(assert (=> b!5327872 (= tp!1483068 e!3309930)))

(assert (= (and b!5327872 ((_ is Cons!61154) (exprs!4877 (h!67603 zl!343)))) b!5328810))

(declare-fun condSetEmpty!34341 () Bool)

(assert (=> setNonEmpty!34335 (= condSetEmpty!34341 (= setRest!34335 ((as const (Array Context!8754 Bool)) false)))))

(declare-fun setRes!34341 () Bool)

(assert (=> setNonEmpty!34335 (= tp!1483067 setRes!34341)))

(declare-fun setIsEmpty!34341 () Bool)

(assert (=> setIsEmpty!34341 setRes!34341))

(declare-fun setNonEmpty!34341 () Bool)

(declare-fun setElem!34341 () Context!8754)

(declare-fun e!3309933 () Bool)

(declare-fun tp!1483177 () Bool)

(assert (=> setNonEmpty!34341 (= setRes!34341 (and tp!1483177 (inv!80729 setElem!34341) e!3309933))))

(declare-fun setRest!34341 () (InoxSet Context!8754))

(assert (=> setNonEmpty!34341 (= setRest!34335 ((_ map or) (store ((as const (Array Context!8754 Bool)) false) setElem!34341 true) setRest!34341))))

(declare-fun b!5328815 () Bool)

(declare-fun tp!1483178 () Bool)

(assert (=> b!5328815 (= e!3309933 tp!1483178)))

(assert (= (and setNonEmpty!34335 condSetEmpty!34341) setIsEmpty!34341))

(assert (= (and setNonEmpty!34335 (not condSetEmpty!34341)) setNonEmpty!34341))

(assert (= setNonEmpty!34341 b!5328815))

(declare-fun m!6362514 () Bool)

(assert (=> setNonEmpty!34341 m!6362514))

(declare-fun b!5328823 () Bool)

(declare-fun e!3309939 () Bool)

(declare-fun tp!1483183 () Bool)

(assert (=> b!5328823 (= e!3309939 tp!1483183)))

(declare-fun e!3309938 () Bool)

(declare-fun b!5328822 () Bool)

(declare-fun tp!1483184 () Bool)

(assert (=> b!5328822 (= e!3309938 (and (inv!80729 (h!67603 (t!374494 zl!343))) e!3309939 tp!1483184))))

(assert (=> b!5327889 (= tp!1483072 e!3309938)))

(assert (= b!5328822 b!5328823))

(assert (= (and b!5327889 ((_ is Cons!61155) (t!374494 zl!343))) b!5328822))

(declare-fun m!6362516 () Bool)

(assert (=> b!5328822 m!6362516))

(declare-fun b!5328827 () Bool)

(declare-fun e!3309940 () Bool)

(declare-fun tp!1483186 () Bool)

(declare-fun tp!1483187 () Bool)

(assert (=> b!5328827 (= e!3309940 (and tp!1483186 tp!1483187))))

(assert (=> b!5327894 (= tp!1483070 e!3309940)))

(declare-fun b!5328824 () Bool)

(assert (=> b!5328824 (= e!3309940 tp_is_empty!39239)))

(declare-fun b!5328825 () Bool)

(declare-fun tp!1483189 () Bool)

(declare-fun tp!1483188 () Bool)

(assert (=> b!5328825 (= e!3309940 (and tp!1483189 tp!1483188))))

(declare-fun b!5328826 () Bool)

(declare-fun tp!1483185 () Bool)

(assert (=> b!5328826 (= e!3309940 tp!1483185)))

(assert (= (and b!5327894 ((_ is ElementMatch!14993) (reg!15322 r!7292))) b!5328824))

(assert (= (and b!5327894 ((_ is Concat!23838) (reg!15322 r!7292))) b!5328825))

(assert (= (and b!5327894 ((_ is Star!14993) (reg!15322 r!7292))) b!5328826))

(assert (= (and b!5327894 ((_ is Union!14993) (reg!15322 r!7292))) b!5328827))

(declare-fun b_lambda!204951 () Bool)

(assert (= b_lambda!204947 (or b!5327891 b_lambda!204951)))

(declare-fun bs!1235082 () Bool)

(declare-fun d!1711134 () Bool)

(assert (= bs!1235082 (and d!1711134 b!5327891)))

(assert (=> bs!1235082 (= (dynLambda!24182 lambda!272112 (h!67603 zl!343)) (derivationStepZipperUp!365 (h!67603 zl!343) (h!67604 s!2326)))))

(assert (=> bs!1235082 m!6361774))

(assert (=> d!1711084 d!1711134))

(declare-fun b_lambda!204953 () Bool)

(assert (= b_lambda!204949 (or b!5327884 b_lambda!204953)))

(declare-fun bs!1235083 () Bool)

(declare-fun d!1711136 () Bool)

(assert (= bs!1235083 (and d!1711136 b!5327884)))

(assert (=> bs!1235083 (= (dynLambda!24183 lambda!272115 (h!67602 lt!2173812)) (validRegex!6729 (h!67602 lt!2173812)))))

(declare-fun m!6362518 () Bool)

(assert (=> bs!1235083 m!6362518))

(assert (=> b!5328737 d!1711136))

(declare-fun b_lambda!204955 () Bool)

(assert (= b_lambda!204945 (or b!5327891 b_lambda!204955)))

(declare-fun bs!1235084 () Bool)

(declare-fun d!1711138 () Bool)

(assert (= bs!1235084 (and d!1711138 b!5327891)))

(assert (=> bs!1235084 (= (dynLambda!24182 lambda!272112 lt!2173808) (derivationStepZipperUp!365 lt!2173808 (h!67604 s!2326)))))

(assert (=> bs!1235084 m!6361758))

(assert (=> d!1711054 d!1711138))

(check-sat (not b!5328595) (not b!5328697) (not b!5328785) (not b!5328823) (not b!5328756) (not bm!380632) (not b!5328754) (not b!5328751) (not b!5328825) (not bs!1235083) (not d!1711132) (not b!5328596) (not b!5328546) (not b!5328621) (not b!5328802) (not b!5328729) (not d!1711084) (not b!5328293) (not b!5328701) (not d!1711130) (not b!5328738) (not b!5328772) (not d!1711060) (not b!5328587) (not d!1711072) (not bm!380707) (not b!5328810) (not b!5328804) (not b!5328462) (not b!5328744) (not d!1711102) (not d!1711112) (not b!5328742) (not b!5328755) (not b!5328803) (not d!1711106) (not d!1711058) (not b!5328619) (not b!5328038) (not bm!380701) (not b!5328702) (not d!1710920) (not bm!380716) (not b!5328594) (not b!5328787) (not b!5328827) (not d!1711066) (not b!5328153) (not bm!380683) (not d!1711120) (not b!5328672) (not b!5328294) (not b!5328796) (not b!5328713) (not b_lambda!204953) (not b!5328472) (not b_lambda!204951) (not b!5328798) (not b!5328562) (not b!5328650) (not b!5328815) (not b!5328826) (not b!5328791) (not b!5328649) (not b!5328715) (not d!1710984) (not b!5328726) (not b!5328471) (not b!5328394) (not d!1711036) (not b!5328747) (not b!5328716) (not b!5328752) (not b!5328800) (not d!1710980) (not b!5328767) (not b!5328739) (not b!5328667) (not b!5328548) (not d!1711062) (not d!1711054) (not b!5328467) (not b!5328740) (not bm!380698) tp_is_empty!39239 (not d!1711126) (not b!5328765) (not b!5328799) (not b!5328809) (not b!5328638) (not d!1711104) (not b!5328720) (not b!5328592) (not d!1711080) (not b!5328295) (not d!1711110) (not b!5328397) (not b!5328718) (not d!1711064) (not b!5328700) (not d!1711118) (not b!5328590) (not d!1711014) (not bm!380711) (not b!5328769) (not b!5328789) (not b!5328704) (not b!5328749) (not bm!380709) (not b!5328123) (not b!5328256) (not d!1711088) (not b!5328466) (not bs!1235082) (not b!5328663) (not b!5328589) (not b!5328660) (not b!5328699) (not b!5328786) (not d!1711092) (not d!1711128) (not b!5328541) (not bm!380715) (not b!5328593) (not b!5328746) (not b!5328296) (not b!5328710) (not b!5328770) (not bm!380717) (not d!1711124) (not b!5328790) (not b!5328292) (not bm!380681) (not b_lambda!204955) (not b!5328559) (not d!1711076) (not d!1711034) (not d!1711074) (not bm!380679) (not b!5328543) (not d!1711116) (not bs!1235084) (not d!1711056) (not b!5328039) (not b!5328616) (not b!5328617) (not b!5328822) (not b!5328760) (not bm!380633) (not b!5328624) (not d!1711068) (not bm!380713) (not b!5328623) (not d!1711122) (not setNonEmpty!34341) (not d!1710972) (not d!1711050) (not b!5328773) (not b!5328655) (not bm!380714) (not b!5328653) (not b!5328764) (not d!1711038) (not b!5328719) (not b!5328703) (not bm!380697) (not b!5328721) (not bm!380712) (not b!5328469) (not b!5328674) (not b!5328757) (not b!5328597) (not b!5328658) (not d!1711100) (not b!5328155) (not d!1711070) (not b!5328637) (not bm!380705))
(check-sat)
