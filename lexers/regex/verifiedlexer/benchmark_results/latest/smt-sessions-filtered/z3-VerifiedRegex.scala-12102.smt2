; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!678632 () Bool)

(assert start!678632)

(declare-fun b!7027824 () Bool)

(assert (=> b!7027824 true))

(declare-fun b!7027809 () Bool)

(assert (=> b!7027809 true))

(declare-fun b!7027814 () Bool)

(assert (=> b!7027814 true))

(declare-fun b!7027806 () Bool)

(declare-fun e!4224823 () Bool)

(declare-fun tp!1935812 () Bool)

(assert (=> b!7027806 (= e!4224823 tp!1935812)))

(declare-fun res!2868921 () Bool)

(declare-fun e!4224818 () Bool)

(assert (=> start!678632 (=> (not res!2868921) (not e!4224818))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35172 0))(
  ( (C!35173 (val!27288 Int)) )
))
(declare-datatypes ((Regex!17451 0))(
  ( (ElementMatch!17451 (c!1306580 C!35172)) (Concat!26296 (regOne!35414 Regex!17451) (regTwo!35414 Regex!17451)) (EmptyExpr!17451) (Star!17451 (reg!17780 Regex!17451)) (EmptyLang!17451) (Union!17451 (regOne!35415 Regex!17451) (regTwo!35415 Regex!17451)) )
))
(declare-datatypes ((List!67881 0))(
  ( (Nil!67757) (Cons!67757 (h!74205 Regex!17451) (t!381642 List!67881)) )
))
(declare-datatypes ((Context!12894 0))(
  ( (Context!12895 (exprs!6947 List!67881)) )
))
(declare-fun lt!2515849 () (InoxSet Context!12894))

(declare-datatypes ((List!67882 0))(
  ( (Nil!67758) (Cons!67758 (h!74206 C!35172) (t!381643 List!67882)) )
))
(declare-fun s!7408 () List!67882)

(declare-fun matchZipper!2991 ((InoxSet Context!12894) List!67882) Bool)

(assert (=> start!678632 (= res!2868921 (matchZipper!2991 lt!2515849 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12894))

(declare-fun ct2!306 () Context!12894)

(declare-fun appendTo!572 ((InoxSet Context!12894) Context!12894) (InoxSet Context!12894))

(assert (=> start!678632 (= lt!2515849 (appendTo!572 z1!570 ct2!306))))

(assert (=> start!678632 e!4224818))

(declare-fun condSetEmpty!49040 () Bool)

(assert (=> start!678632 (= condSetEmpty!49040 (= z1!570 ((as const (Array Context!12894 Bool)) false)))))

(declare-fun setRes!49040 () Bool)

(assert (=> start!678632 setRes!49040))

(declare-fun inv!86486 (Context!12894) Bool)

(assert (=> start!678632 (and (inv!86486 ct2!306) e!4224823)))

(declare-fun e!4224813 () Bool)

(assert (=> start!678632 e!4224813))

(declare-fun b!7027807 () Bool)

(declare-fun e!4224819 () Bool)

(declare-fun e!4224825 () Bool)

(assert (=> b!7027807 (= e!4224819 e!4224825)))

(declare-fun res!2868923 () Bool)

(assert (=> b!7027807 (=> res!2868923 e!4224825)))

(declare-fun lt!2515837 () (InoxSet Context!12894))

(declare-fun lt!2515842 () (InoxSet Context!12894))

(assert (=> b!7027807 (= res!2868923 (not (= lt!2515837 lt!2515842)))))

(declare-fun lt!2515841 () Context!12894)

(assert (=> b!7027807 (= lt!2515837 (store ((as const (Array Context!12894 Bool)) false) lt!2515841 true))))

(declare-datatypes ((Unit!161568 0))(
  ( (Unit!161569) )
))
(declare-fun lt!2515872 () Unit!161568)

(declare-fun lt!2515860 () Context!12894)

(declare-fun lambda!413592 () Int)

(declare-fun lemmaConcatPreservesForall!772 (List!67881 List!67881 Int) Unit!161568)

(assert (=> b!7027807 (= lt!2515872 (lemmaConcatPreservesForall!772 (exprs!6947 lt!2515860) (exprs!6947 ct2!306) lambda!413592))))

(declare-fun b!7027808 () Bool)

(declare-fun e!4224826 () Bool)

(declare-fun e!4224824 () Bool)

(assert (=> b!7027808 (= e!4224826 e!4224824)))

(declare-fun res!2868932 () Bool)

(assert (=> b!7027808 (=> res!2868932 e!4224824)))

(declare-fun e!4224821 () Bool)

(assert (=> b!7027808 (= res!2868932 e!4224821)))

(declare-fun res!2868924 () Bool)

(assert (=> b!7027808 (=> (not res!2868924) (not e!4224821))))

(declare-fun lt!2515865 () Bool)

(declare-fun lt!2515850 () Bool)

(assert (=> b!7027808 (= res!2868924 (not (= lt!2515865 lt!2515850)))))

(declare-fun lt!2515870 () (InoxSet Context!12894))

(assert (=> b!7027808 (= lt!2515865 (matchZipper!2991 lt!2515870 (t!381643 s!7408)))))

(declare-fun lt!2515861 () Unit!161568)

(declare-fun lt!2515844 () List!67881)

(assert (=> b!7027808 (= lt!2515861 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lt!2515847 () (InoxSet Context!12894))

(declare-fun e!4224822 () Bool)

(assert (=> b!7027808 (= (matchZipper!2991 lt!2515847 (t!381643 s!7408)) e!4224822)))

(declare-fun res!2868927 () Bool)

(assert (=> b!7027808 (=> res!2868927 e!4224822)))

(assert (=> b!7027808 (= res!2868927 lt!2515850)))

(declare-fun lt!2515859 () (InoxSet Context!12894))

(assert (=> b!7027808 (= lt!2515850 (matchZipper!2991 lt!2515859 (t!381643 s!7408)))))

(declare-fun lt!2515848 () (InoxSet Context!12894))

(declare-fun lt!2515874 () Unit!161568)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1524 ((InoxSet Context!12894) (InoxSet Context!12894) List!67882) Unit!161568)

(assert (=> b!7027808 (= lt!2515874 (lemmaZipperConcatMatchesSameAsBothZippers!1524 lt!2515859 lt!2515848 (t!381643 s!7408)))))

(declare-fun lt!2515857 () Unit!161568)

(assert (=> b!7027808 (= lt!2515857 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lt!2515856 () Unit!161568)

(assert (=> b!7027808 (= lt!2515856 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun e!4224814 () Bool)

(assert (=> b!7027809 (= e!4224814 e!4224819)))

(declare-fun res!2868930 () Bool)

(assert (=> b!7027809 (=> res!2868930 e!4224819)))

(declare-fun lt!2515858 () Context!12894)

(assert (=> b!7027809 (= res!2868930 (or (not (= lt!2515841 lt!2515858)) (not (select z1!570 lt!2515860))))))

(declare-fun ++!15484 (List!67881 List!67881) List!67881)

(assert (=> b!7027809 (= lt!2515841 (Context!12895 (++!15484 (exprs!6947 lt!2515860) (exprs!6947 ct2!306))))))

(declare-fun lt!2515854 () Unit!161568)

(assert (=> b!7027809 (= lt!2515854 (lemmaConcatPreservesForall!772 (exprs!6947 lt!2515860) (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lambda!413591 () Int)

(declare-fun mapPost2!292 ((InoxSet Context!12894) Int Context!12894) Context!12894)

(assert (=> b!7027809 (= lt!2515860 (mapPost2!292 z1!570 lambda!413591 lt!2515858))))

(declare-fun b!7027810 () Bool)

(declare-fun e!4224828 () Bool)

(declare-fun e!4224827 () Bool)

(assert (=> b!7027810 (= e!4224828 e!4224827)))

(declare-fun res!2868929 () Bool)

(assert (=> b!7027810 (=> res!2868929 e!4224827)))

(declare-fun nullable!7162 (Regex!17451) Bool)

(assert (=> b!7027810 (= res!2868929 (not (nullable!7162 (h!74205 (exprs!6947 lt!2515860)))))))

(declare-fun lt!2515855 () Context!12894)

(assert (=> b!7027810 (= lt!2515855 (Context!12895 lt!2515844))))

(declare-fun tail!13526 (List!67881) List!67881)

(assert (=> b!7027810 (= lt!2515844 (tail!13526 (exprs!6947 lt!2515860)))))

(declare-fun b!7027811 () Bool)

(declare-fun res!2868937 () Bool)

(assert (=> b!7027811 (=> res!2868937 e!4224828)))

(declare-fun isEmpty!39505 (List!67881) Bool)

(assert (=> b!7027811 (= res!2868937 (isEmpty!39505 (exprs!6947 lt!2515860)))))

(declare-fun b!7027812 () Bool)

(declare-fun e!4224815 () Bool)

(declare-fun tp!1935813 () Bool)

(assert (=> b!7027812 (= e!4224815 tp!1935813)))

(declare-fun b!7027813 () Bool)

(declare-fun res!2868922 () Bool)

(assert (=> b!7027813 (=> (not res!2868922) (not e!4224818))))

(get-info :version)

(assert (=> b!7027813 (= res!2868922 ((_ is Cons!67758) s!7408))))

(declare-fun setElem!49040 () Context!12894)

(declare-fun setNonEmpty!49040 () Bool)

(declare-fun tp!1935811 () Bool)

(assert (=> setNonEmpty!49040 (= setRes!49040 (and tp!1935811 (inv!86486 setElem!49040) e!4224815))))

(declare-fun setRest!49040 () (InoxSet Context!12894))

(assert (=> setNonEmpty!49040 (= z1!570 ((_ map or) (store ((as const (Array Context!12894 Bool)) false) setElem!49040 true) setRest!49040))))

(assert (=> b!7027814 (= e!4224825 e!4224828)))

(declare-fun res!2868926 () Bool)

(assert (=> b!7027814 (=> res!2868926 e!4224828)))

(declare-fun derivationStepZipper!2907 ((InoxSet Context!12894) C!35172) (InoxSet Context!12894))

(assert (=> b!7027814 (= res!2868926 (not (= (derivationStepZipper!2907 lt!2515837 (h!74206 s!7408)) lt!2515870)))))

(declare-fun lambda!413593 () Int)

(declare-fun flatMap!2398 ((InoxSet Context!12894) Int) (InoxSet Context!12894))

(declare-fun derivationStepZipperUp!2061 (Context!12894 C!35172) (InoxSet Context!12894))

(assert (=> b!7027814 (= (flatMap!2398 lt!2515837 lambda!413593) (derivationStepZipperUp!2061 lt!2515841 (h!74206 s!7408)))))

(declare-fun lt!2515835 () Unit!161568)

(declare-fun lemmaFlatMapOnSingletonSet!1912 ((InoxSet Context!12894) Context!12894 Int) Unit!161568)

(assert (=> b!7027814 (= lt!2515835 (lemmaFlatMapOnSingletonSet!1912 lt!2515837 lt!2515841 lambda!413593))))

(assert (=> b!7027814 (= lt!2515870 (derivationStepZipperUp!2061 lt!2515841 (h!74206 s!7408)))))

(declare-fun lt!2515840 () Unit!161568)

(assert (=> b!7027814 (= lt!2515840 (lemmaConcatPreservesForall!772 (exprs!6947 lt!2515860) (exprs!6947 ct2!306) lambda!413592))))

(declare-fun b!7027815 () Bool)

(declare-fun e!4224820 () Bool)

(declare-fun e!4224817 () Bool)

(assert (=> b!7027815 (= e!4224820 e!4224817)))

(declare-fun res!2868933 () Bool)

(assert (=> b!7027815 (=> res!2868933 e!4224817)))

(declare-fun lt!2515843 () (InoxSet Context!12894))

(assert (=> b!7027815 (= res!2868933 (not (= (derivationStepZipper!2907 lt!2515843 (h!74206 s!7408)) lt!2515848)))))

(declare-fun lt!2515836 () Unit!161568)

(assert (=> b!7027815 (= lt!2515836 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lt!2515868 () Unit!161568)

(assert (=> b!7027815 (= lt!2515868 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lt!2515862 () Context!12894)

(assert (=> b!7027815 (= (flatMap!2398 lt!2515843 lambda!413593) (derivationStepZipperUp!2061 lt!2515862 (h!74206 s!7408)))))

(declare-fun lt!2515871 () Unit!161568)

(assert (=> b!7027815 (= lt!2515871 (lemmaFlatMapOnSingletonSet!1912 lt!2515843 lt!2515862 lambda!413593))))

(assert (=> b!7027815 (= lt!2515843 (store ((as const (Array Context!12894 Bool)) false) lt!2515862 true))))

(declare-fun lt!2515833 () Unit!161568)

(assert (=> b!7027815 (= lt!2515833 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lt!2515839 () Unit!161568)

(assert (=> b!7027815 (= lt!2515839 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun b!7027816 () Bool)

(assert (=> b!7027816 (= e!4224827 e!4224826)))

(declare-fun res!2868936 () Bool)

(assert (=> b!7027816 (=> res!2868936 e!4224826)))

(assert (=> b!7027816 (= res!2868936 (not (= lt!2515870 lt!2515847)))))

(assert (=> b!7027816 (= lt!2515847 ((_ map or) lt!2515859 lt!2515848))))

(assert (=> b!7027816 (= lt!2515848 (derivationStepZipperUp!2061 lt!2515862 (h!74206 s!7408)))))

(declare-fun derivationStepZipperDown!2115 (Regex!17451 Context!12894 C!35172) (InoxSet Context!12894))

(assert (=> b!7027816 (= lt!2515859 (derivationStepZipperDown!2115 (h!74205 (exprs!6947 lt!2515860)) lt!2515862 (h!74206 s!7408)))))

(assert (=> b!7027816 (= lt!2515862 (Context!12895 (++!15484 lt!2515844 (exprs!6947 ct2!306))))))

(declare-fun lt!2515866 () Unit!161568)

(assert (=> b!7027816 (= lt!2515866 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lt!2515869 () Unit!161568)

(assert (=> b!7027816 (= lt!2515869 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun b!7027817 () Bool)

(assert (=> b!7027817 (= e!4224824 e!4224820)))

(declare-fun res!2868931 () Bool)

(assert (=> b!7027817 (=> res!2868931 e!4224820)))

(assert (=> b!7027817 (= res!2868931 (not (matchZipper!2991 lt!2515848 (t!381643 s!7408))))))

(declare-fun lt!2515875 () Unit!161568)

(assert (=> b!7027817 (= lt!2515875 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun b!7027818 () Bool)

(declare-fun res!2868928 () Bool)

(assert (=> b!7027818 (=> res!2868928 e!4224828)))

(assert (=> b!7027818 (= res!2868928 (not ((_ is Cons!67757) (exprs!6947 lt!2515860))))))

(declare-fun b!7027819 () Bool)

(declare-fun tp_is_empty!44127 () Bool)

(declare-fun tp!1935810 () Bool)

(assert (=> b!7027819 (= e!4224813 (and tp_is_empty!44127 tp!1935810))))

(declare-fun b!7027820 () Bool)

(declare-fun res!2868935 () Bool)

(assert (=> b!7027820 (=> res!2868935 e!4224814)))

(assert (=> b!7027820 (= res!2868935 (not (select lt!2515849 lt!2515858)))))

(declare-fun b!7027821 () Bool)

(assert (=> b!7027821 (= e!4224822 (matchZipper!2991 lt!2515848 (t!381643 s!7408)))))

(declare-fun b!7027822 () Bool)

(declare-fun res!2868920 () Bool)

(assert (=> b!7027822 (=> res!2868920 e!4224824)))

(assert (=> b!7027822 (= res!2868920 (not lt!2515865))))

(declare-fun b!7027823 () Bool)

(declare-fun e!4224829 () Bool)

(declare-fun lt!2515832 () Int)

(declare-datatypes ((List!67883 0))(
  ( (Nil!67759) (Cons!67759 (h!74207 Context!12894) (t!381644 List!67883)) )
))
(declare-fun zipperDepthTotal!514 (List!67883) Int)

(assert (=> b!7027823 (= e!4224829 (< (zipperDepthTotal!514 (Cons!67759 lt!2515855 Nil!67759)) lt!2515832))))

(assert (=> b!7027824 (= e!4224818 (not e!4224814))))

(declare-fun res!2868934 () Bool)

(assert (=> b!7027824 (=> res!2868934 e!4224814)))

(assert (=> b!7027824 (= res!2868934 (not (matchZipper!2991 lt!2515842 s!7408)))))

(assert (=> b!7027824 (= lt!2515842 (store ((as const (Array Context!12894 Bool)) false) lt!2515858 true))))

(declare-fun lambda!413590 () Int)

(declare-fun getWitness!1446 ((InoxSet Context!12894) Int) Context!12894)

(assert (=> b!7027824 (= lt!2515858 (getWitness!1446 lt!2515849 lambda!413590))))

(declare-fun lt!2515845 () List!67883)

(declare-fun exists!3365 (List!67883 Int) Bool)

(assert (=> b!7027824 (exists!3365 lt!2515845 lambda!413590)))

(declare-fun lt!2515846 () Unit!161568)

(declare-fun lemmaZipperMatchesExistsMatchingContext!390 (List!67883 List!67882) Unit!161568)

(assert (=> b!7027824 (= lt!2515846 (lemmaZipperMatchesExistsMatchingContext!390 lt!2515845 s!7408))))

(declare-fun toList!10794 ((InoxSet Context!12894)) List!67883)

(assert (=> b!7027824 (= lt!2515845 (toList!10794 lt!2515849))))

(declare-fun b!7027825 () Bool)

(declare-fun e!4224816 () Bool)

(assert (=> b!7027825 (= e!4224817 e!4224816)))

(declare-fun res!2868925 () Bool)

(assert (=> b!7027825 (=> res!2868925 e!4224816)))

(assert (=> b!7027825 (= res!2868925 (not (matchZipper!2991 lt!2515843 s!7408)))))

(declare-fun lt!2515851 () Unit!161568)

(assert (=> b!7027825 (= lt!2515851 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun setIsEmpty!49040 () Bool)

(assert (=> setIsEmpty!49040 setRes!49040))

(declare-fun b!7027826 () Bool)

(assert (=> b!7027826 (= e!4224816 e!4224829)))

(declare-fun res!2868938 () Bool)

(assert (=> b!7027826 (=> res!2868938 e!4224829)))

(declare-fun lt!2515830 () Int)

(declare-fun contextDepthTotal!486 (Context!12894) Int)

(assert (=> b!7027826 (= res!2868938 (<= lt!2515830 (contextDepthTotal!486 lt!2515855)))))

(assert (=> b!7027826 (<= lt!2515830 lt!2515832)))

(declare-fun lt!2515838 () List!67883)

(assert (=> b!7027826 (= lt!2515832 (zipperDepthTotal!514 lt!2515838))))

(assert (=> b!7027826 (= lt!2515830 (contextDepthTotal!486 lt!2515860))))

(declare-fun lt!2515831 () Unit!161568)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!54 (List!67883 Context!12894) Unit!161568)

(assert (=> b!7027826 (= lt!2515831 (lemmaTotalDepthZipperLargerThanOfAnyContext!54 lt!2515838 lt!2515860))))

(assert (=> b!7027826 (= lt!2515838 (toList!10794 z1!570))))

(declare-fun lt!2515863 () Unit!161568)

(assert (=> b!7027826 (= lt!2515863 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lt!2515852 () Unit!161568)

(assert (=> b!7027826 (= lt!2515852 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lt!2515864 () Unit!161568)

(assert (=> b!7027826 (= lt!2515864 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lt!2515867 () (InoxSet Context!12894))

(assert (=> b!7027826 (= (flatMap!2398 lt!2515867 lambda!413593) (derivationStepZipperUp!2061 lt!2515855 (h!74206 s!7408)))))

(declare-fun lt!2515834 () Unit!161568)

(assert (=> b!7027826 (= lt!2515834 (lemmaFlatMapOnSingletonSet!1912 lt!2515867 lt!2515855 lambda!413593))))

(declare-fun map!15744 ((InoxSet Context!12894) Int) (InoxSet Context!12894))

(assert (=> b!7027826 (= (map!15744 lt!2515867 lambda!413591) (store ((as const (Array Context!12894 Bool)) false) (Context!12895 (++!15484 lt!2515844 (exprs!6947 ct2!306))) true))))

(declare-fun lt!2515873 () Unit!161568)

(assert (=> b!7027826 (= lt!2515873 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(declare-fun lt!2515853 () Unit!161568)

(declare-fun lemmaMapOnSingletonSet!362 ((InoxSet Context!12894) Context!12894 Int) Unit!161568)

(assert (=> b!7027826 (= lt!2515853 (lemmaMapOnSingletonSet!362 lt!2515867 lt!2515855 lambda!413591))))

(assert (=> b!7027826 (= lt!2515867 (store ((as const (Array Context!12894 Bool)) false) lt!2515855 true))))

(declare-fun b!7027827 () Bool)

(assert (=> b!7027827 (= e!4224821 (not (matchZipper!2991 lt!2515848 (t!381643 s!7408))))))

(declare-fun lt!2515829 () Unit!161568)

(assert (=> b!7027827 (= lt!2515829 (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(assert (= (and start!678632 res!2868921) b!7027813))

(assert (= (and b!7027813 res!2868922) b!7027824))

(assert (= (and b!7027824 (not res!2868934)) b!7027820))

(assert (= (and b!7027820 (not res!2868935)) b!7027809))

(assert (= (and b!7027809 (not res!2868930)) b!7027807))

(assert (= (and b!7027807 (not res!2868923)) b!7027814))

(assert (= (and b!7027814 (not res!2868926)) b!7027818))

(assert (= (and b!7027818 (not res!2868928)) b!7027811))

(assert (= (and b!7027811 (not res!2868937)) b!7027810))

(assert (= (and b!7027810 (not res!2868929)) b!7027816))

(assert (= (and b!7027816 (not res!2868936)) b!7027808))

(assert (= (and b!7027808 (not res!2868927)) b!7027821))

(assert (= (and b!7027808 res!2868924) b!7027827))

(assert (= (and b!7027808 (not res!2868932)) b!7027822))

(assert (= (and b!7027822 (not res!2868920)) b!7027817))

(assert (= (and b!7027817 (not res!2868931)) b!7027815))

(assert (= (and b!7027815 (not res!2868933)) b!7027825))

(assert (= (and b!7027825 (not res!2868925)) b!7027826))

(assert (= (and b!7027826 (not res!2868938)) b!7027823))

(assert (= (and start!678632 condSetEmpty!49040) setIsEmpty!49040))

(assert (= (and start!678632 (not condSetEmpty!49040)) setNonEmpty!49040))

(assert (= setNonEmpty!49040 b!7027812))

(assert (= start!678632 b!7027806))

(assert (= (and start!678632 ((_ is Cons!67758) s!7408)) b!7027819))

(declare-fun m!7731832 () Bool)

(assert (=> b!7027826 m!7731832))

(declare-fun m!7731834 () Bool)

(assert (=> b!7027826 m!7731834))

(declare-fun m!7731836 () Bool)

(assert (=> b!7027826 m!7731836))

(declare-fun m!7731838 () Bool)

(assert (=> b!7027826 m!7731838))

(declare-fun m!7731840 () Bool)

(assert (=> b!7027826 m!7731840))

(assert (=> b!7027826 m!7731838))

(declare-fun m!7731842 () Bool)

(assert (=> b!7027826 m!7731842))

(declare-fun m!7731844 () Bool)

(assert (=> b!7027826 m!7731844))

(assert (=> b!7027826 m!7731838))

(declare-fun m!7731846 () Bool)

(assert (=> b!7027826 m!7731846))

(declare-fun m!7731848 () Bool)

(assert (=> b!7027826 m!7731848))

(assert (=> b!7027826 m!7731838))

(declare-fun m!7731850 () Bool)

(assert (=> b!7027826 m!7731850))

(declare-fun m!7731852 () Bool)

(assert (=> b!7027826 m!7731852))

(declare-fun m!7731854 () Bool)

(assert (=> b!7027826 m!7731854))

(declare-fun m!7731856 () Bool)

(assert (=> b!7027826 m!7731856))

(declare-fun m!7731858 () Bool)

(assert (=> b!7027826 m!7731858))

(declare-fun m!7731860 () Bool)

(assert (=> b!7027816 m!7731860))

(declare-fun m!7731862 () Bool)

(assert (=> b!7027816 m!7731862))

(assert (=> b!7027816 m!7731834))

(assert (=> b!7027816 m!7731838))

(assert (=> b!7027816 m!7731838))

(assert (=> b!7027808 m!7731838))

(declare-fun m!7731864 () Bool)

(assert (=> b!7027808 m!7731864))

(assert (=> b!7027808 m!7731838))

(declare-fun m!7731866 () Bool)

(assert (=> b!7027808 m!7731866))

(assert (=> b!7027808 m!7731838))

(declare-fun m!7731868 () Bool)

(assert (=> b!7027808 m!7731868))

(declare-fun m!7731870 () Bool)

(assert (=> b!7027808 m!7731870))

(declare-fun m!7731872 () Bool)

(assert (=> b!7027810 m!7731872))

(declare-fun m!7731874 () Bool)

(assert (=> b!7027810 m!7731874))

(assert (=> b!7027815 m!7731860))

(declare-fun m!7731876 () Bool)

(assert (=> b!7027815 m!7731876))

(assert (=> b!7027815 m!7731838))

(assert (=> b!7027815 m!7731838))

(declare-fun m!7731878 () Bool)

(assert (=> b!7027815 m!7731878))

(declare-fun m!7731880 () Bool)

(assert (=> b!7027815 m!7731880))

(assert (=> b!7027815 m!7731838))

(assert (=> b!7027815 m!7731838))

(declare-fun m!7731882 () Bool)

(assert (=> b!7027815 m!7731882))

(declare-fun m!7731884 () Bool)

(assert (=> b!7027827 m!7731884))

(assert (=> b!7027827 m!7731838))

(declare-fun m!7731886 () Bool)

(assert (=> start!678632 m!7731886))

(declare-fun m!7731888 () Bool)

(assert (=> start!678632 m!7731888))

(declare-fun m!7731890 () Bool)

(assert (=> start!678632 m!7731890))

(declare-fun m!7731892 () Bool)

(assert (=> b!7027807 m!7731892))

(declare-fun m!7731894 () Bool)

(assert (=> b!7027807 m!7731894))

(declare-fun m!7731896 () Bool)

(assert (=> b!7027823 m!7731896))

(declare-fun m!7731898 () Bool)

(assert (=> b!7027824 m!7731898))

(declare-fun m!7731900 () Bool)

(assert (=> b!7027824 m!7731900))

(declare-fun m!7731902 () Bool)

(assert (=> b!7027824 m!7731902))

(declare-fun m!7731904 () Bool)

(assert (=> b!7027824 m!7731904))

(declare-fun m!7731906 () Bool)

(assert (=> b!7027824 m!7731906))

(declare-fun m!7731908 () Bool)

(assert (=> b!7027824 m!7731908))

(declare-fun m!7731910 () Bool)

(assert (=> b!7027814 m!7731910))

(declare-fun m!7731912 () Bool)

(assert (=> b!7027814 m!7731912))

(declare-fun m!7731914 () Bool)

(assert (=> b!7027814 m!7731914))

(assert (=> b!7027814 m!7731894))

(declare-fun m!7731916 () Bool)

(assert (=> b!7027814 m!7731916))

(declare-fun m!7731918 () Bool)

(assert (=> setNonEmpty!49040 m!7731918))

(declare-fun m!7731920 () Bool)

(assert (=> b!7027820 m!7731920))

(assert (=> b!7027821 m!7731884))

(declare-fun m!7731922 () Bool)

(assert (=> b!7027811 m!7731922))

(declare-fun m!7731924 () Bool)

(assert (=> b!7027825 m!7731924))

(assert (=> b!7027825 m!7731838))

(assert (=> b!7027817 m!7731884))

(assert (=> b!7027817 m!7731838))

(declare-fun m!7731926 () Bool)

(assert (=> b!7027809 m!7731926))

(declare-fun m!7731928 () Bool)

(assert (=> b!7027809 m!7731928))

(assert (=> b!7027809 m!7731894))

(declare-fun m!7731930 () Bool)

(assert (=> b!7027809 m!7731930))

(check-sat (not b!7027819) (not b!7027812) (not b!7027814) (not b!7027824) (not b!7027826) (not b!7027815) (not start!678632) (not b!7027806) (not b!7027809) (not b!7027810) (not b!7027808) (not b!7027827) tp_is_empty!44127 (not b!7027811) (not b!7027823) (not b!7027816) (not b!7027825) (not b!7027821) (not b!7027807) (not b!7027817) (not setNonEmpty!49040))
(check-sat)
(get-model)

(declare-fun b!7027915 () Bool)

(declare-fun res!2868968 () Bool)

(declare-fun e!4224874 () Bool)

(assert (=> b!7027915 (=> (not res!2868968) (not e!4224874))))

(declare-fun lt!2515913 () List!67881)

(declare-fun size!41046 (List!67881) Int)

(assert (=> b!7027915 (= res!2868968 (= (size!41046 lt!2515913) (+ (size!41046 (exprs!6947 lt!2515860)) (size!41046 (exprs!6947 ct2!306)))))))

(declare-fun b!7027914 () Bool)

(declare-fun e!4224875 () List!67881)

(assert (=> b!7027914 (= e!4224875 (Cons!67757 (h!74205 (exprs!6947 lt!2515860)) (++!15484 (t!381642 (exprs!6947 lt!2515860)) (exprs!6947 ct2!306))))))

(declare-fun b!7027913 () Bool)

(assert (=> b!7027913 (= e!4224875 (exprs!6947 ct2!306))))

(declare-fun d!2191465 () Bool)

(assert (=> d!2191465 e!4224874))

(declare-fun res!2868967 () Bool)

(assert (=> d!2191465 (=> (not res!2868967) (not e!4224874))))

(declare-fun content!13506 (List!67881) (InoxSet Regex!17451))

(assert (=> d!2191465 (= res!2868967 (= (content!13506 lt!2515913) ((_ map or) (content!13506 (exprs!6947 lt!2515860)) (content!13506 (exprs!6947 ct2!306)))))))

(assert (=> d!2191465 (= lt!2515913 e!4224875)))

(declare-fun c!1306609 () Bool)

(assert (=> d!2191465 (= c!1306609 ((_ is Nil!67757) (exprs!6947 lt!2515860)))))

(assert (=> d!2191465 (= (++!15484 (exprs!6947 lt!2515860) (exprs!6947 ct2!306)) lt!2515913)))

(declare-fun b!7027916 () Bool)

(assert (=> b!7027916 (= e!4224874 (or (not (= (exprs!6947 ct2!306) Nil!67757)) (= lt!2515913 (exprs!6947 lt!2515860))))))

(assert (= (and d!2191465 c!1306609) b!7027913))

(assert (= (and d!2191465 (not c!1306609)) b!7027914))

(assert (= (and d!2191465 res!2868967) b!7027915))

(assert (= (and b!7027915 res!2868968) b!7027916))

(declare-fun m!7732064 () Bool)

(assert (=> b!7027915 m!7732064))

(declare-fun m!7732066 () Bool)

(assert (=> b!7027915 m!7732066))

(declare-fun m!7732068 () Bool)

(assert (=> b!7027915 m!7732068))

(declare-fun m!7732070 () Bool)

(assert (=> b!7027914 m!7732070))

(declare-fun m!7732072 () Bool)

(assert (=> d!2191465 m!7732072))

(declare-fun m!7732074 () Bool)

(assert (=> d!2191465 m!7732074))

(declare-fun m!7732076 () Bool)

(assert (=> d!2191465 m!7732076))

(assert (=> b!7027809 d!2191465))

(declare-fun d!2191477 () Bool)

(declare-fun forall!16356 (List!67881 Int) Bool)

(assert (=> d!2191477 (forall!16356 (++!15484 (exprs!6947 lt!2515860) (exprs!6947 ct2!306)) lambda!413592)))

(declare-fun lt!2515919 () Unit!161568)

(declare-fun choose!53129 (List!67881 List!67881 Int) Unit!161568)

(assert (=> d!2191477 (= lt!2515919 (choose!53129 (exprs!6947 lt!2515860) (exprs!6947 ct2!306) lambda!413592))))

(assert (=> d!2191477 (forall!16356 (exprs!6947 lt!2515860) lambda!413592)))

(assert (=> d!2191477 (= (lemmaConcatPreservesForall!772 (exprs!6947 lt!2515860) (exprs!6947 ct2!306) lambda!413592) lt!2515919)))

(declare-fun bs!1869333 () Bool)

(assert (= bs!1869333 d!2191477))

(assert (=> bs!1869333 m!7731928))

(assert (=> bs!1869333 m!7731928))

(declare-fun m!7732098 () Bool)

(assert (=> bs!1869333 m!7732098))

(declare-fun m!7732100 () Bool)

(assert (=> bs!1869333 m!7732100))

(declare-fun m!7732102 () Bool)

(assert (=> bs!1869333 m!7732102))

(assert (=> b!7027809 d!2191477))

(declare-fun d!2191483 () Bool)

(declare-fun e!4224891 () Bool)

(assert (=> d!2191483 e!4224891))

(declare-fun res!2868973 () Bool)

(assert (=> d!2191483 (=> (not res!2868973) (not e!4224891))))

(declare-fun lt!2515922 () Context!12894)

(declare-fun dynLambda!27332 (Int Context!12894) Context!12894)

(assert (=> d!2191483 (= res!2868973 (= lt!2515858 (dynLambda!27332 lambda!413591 lt!2515922)))))

(declare-fun choose!53130 ((InoxSet Context!12894) Int Context!12894) Context!12894)

(assert (=> d!2191483 (= lt!2515922 (choose!53130 z1!570 lambda!413591 lt!2515858))))

(assert (=> d!2191483 (select (map!15744 z1!570 lambda!413591) lt!2515858)))

(assert (=> d!2191483 (= (mapPost2!292 z1!570 lambda!413591 lt!2515858) lt!2515922)))

(declare-fun b!7027944 () Bool)

(assert (=> b!7027944 (= e!4224891 (select z1!570 lt!2515922))))

(assert (= (and d!2191483 res!2868973) b!7027944))

(declare-fun b_lambda!265885 () Bool)

(assert (=> (not b_lambda!265885) (not d!2191483)))

(declare-fun m!7732104 () Bool)

(assert (=> d!2191483 m!7732104))

(declare-fun m!7732106 () Bool)

(assert (=> d!2191483 m!7732106))

(declare-fun m!7732108 () Bool)

(assert (=> d!2191483 m!7732108))

(declare-fun m!7732110 () Bool)

(assert (=> d!2191483 m!7732110))

(declare-fun m!7732112 () Bool)

(assert (=> b!7027944 m!7732112))

(assert (=> b!7027809 d!2191483))

(declare-fun d!2191485 () Bool)

(declare-fun e!4224907 () Bool)

(assert (=> d!2191485 (= (matchZipper!2991 ((_ map or) lt!2515859 lt!2515848) (t!381643 s!7408)) e!4224907)))

(declare-fun res!2868981 () Bool)

(assert (=> d!2191485 (=> res!2868981 e!4224907)))

(assert (=> d!2191485 (= res!2868981 (matchZipper!2991 lt!2515859 (t!381643 s!7408)))))

(declare-fun lt!2515929 () Unit!161568)

(declare-fun choose!53131 ((InoxSet Context!12894) (InoxSet Context!12894) List!67882) Unit!161568)

(assert (=> d!2191485 (= lt!2515929 (choose!53131 lt!2515859 lt!2515848 (t!381643 s!7408)))))

(assert (=> d!2191485 (= (lemmaZipperConcatMatchesSameAsBothZippers!1524 lt!2515859 lt!2515848 (t!381643 s!7408)) lt!2515929)))

(declare-fun b!7027968 () Bool)

(assert (=> b!7027968 (= e!4224907 (matchZipper!2991 lt!2515848 (t!381643 s!7408)))))

(assert (= (and d!2191485 (not res!2868981)) b!7027968))

(declare-fun m!7732150 () Bool)

(assert (=> d!2191485 m!7732150))

(assert (=> d!2191485 m!7731868))

(declare-fun m!7732154 () Bool)

(assert (=> d!2191485 m!7732154))

(assert (=> b!7027968 m!7731884))

(assert (=> b!7027808 d!2191485))

(declare-fun d!2191503 () Bool)

(assert (=> d!2191503 (forall!16356 (++!15484 lt!2515844 (exprs!6947 ct2!306)) lambda!413592)))

(declare-fun lt!2515930 () Unit!161568)

(assert (=> d!2191503 (= lt!2515930 (choose!53129 lt!2515844 (exprs!6947 ct2!306) lambda!413592))))

(assert (=> d!2191503 (forall!16356 lt!2515844 lambda!413592)))

(assert (=> d!2191503 (= (lemmaConcatPreservesForall!772 lt!2515844 (exprs!6947 ct2!306) lambda!413592) lt!2515930)))

(declare-fun bs!1869339 () Bool)

(assert (= bs!1869339 d!2191503))

(assert (=> bs!1869339 m!7731834))

(assert (=> bs!1869339 m!7731834))

(declare-fun m!7732168 () Bool)

(assert (=> bs!1869339 m!7732168))

(declare-fun m!7732170 () Bool)

(assert (=> bs!1869339 m!7732170))

(declare-fun m!7732172 () Bool)

(assert (=> bs!1869339 m!7732172))

(assert (=> b!7027808 d!2191503))

(declare-fun d!2191509 () Bool)

(declare-fun c!1306639 () Bool)

(declare-fun isEmpty!39507 (List!67882) Bool)

(assert (=> d!2191509 (= c!1306639 (isEmpty!39507 (t!381643 s!7408)))))

(declare-fun e!4224918 () Bool)

(assert (=> d!2191509 (= (matchZipper!2991 lt!2515847 (t!381643 s!7408)) e!4224918)))

(declare-fun b!7027990 () Bool)

(declare-fun nullableZipper!2568 ((InoxSet Context!12894)) Bool)

(assert (=> b!7027990 (= e!4224918 (nullableZipper!2568 lt!2515847))))

(declare-fun b!7027991 () Bool)

(declare-fun head!14247 (List!67882) C!35172)

(declare-fun tail!13528 (List!67882) List!67882)

(assert (=> b!7027991 (= e!4224918 (matchZipper!2991 (derivationStepZipper!2907 lt!2515847 (head!14247 (t!381643 s!7408))) (tail!13528 (t!381643 s!7408))))))

(assert (= (and d!2191509 c!1306639) b!7027990))

(assert (= (and d!2191509 (not c!1306639)) b!7027991))

(declare-fun m!7732190 () Bool)

(assert (=> d!2191509 m!7732190))

(declare-fun m!7732192 () Bool)

(assert (=> b!7027990 m!7732192))

(declare-fun m!7732194 () Bool)

(assert (=> b!7027991 m!7732194))

(assert (=> b!7027991 m!7732194))

(declare-fun m!7732196 () Bool)

(assert (=> b!7027991 m!7732196))

(declare-fun m!7732198 () Bool)

(assert (=> b!7027991 m!7732198))

(assert (=> b!7027991 m!7732196))

(assert (=> b!7027991 m!7732198))

(declare-fun m!7732200 () Bool)

(assert (=> b!7027991 m!7732200))

(assert (=> b!7027808 d!2191509))

(declare-fun d!2191519 () Bool)

(declare-fun c!1306640 () Bool)

(assert (=> d!2191519 (= c!1306640 (isEmpty!39507 (t!381643 s!7408)))))

(declare-fun e!4224922 () Bool)

(assert (=> d!2191519 (= (matchZipper!2991 lt!2515859 (t!381643 s!7408)) e!4224922)))

(declare-fun b!7027995 () Bool)

(assert (=> b!7027995 (= e!4224922 (nullableZipper!2568 lt!2515859))))

(declare-fun b!7027996 () Bool)

(assert (=> b!7027996 (= e!4224922 (matchZipper!2991 (derivationStepZipper!2907 lt!2515859 (head!14247 (t!381643 s!7408))) (tail!13528 (t!381643 s!7408))))))

(assert (= (and d!2191519 c!1306640) b!7027995))

(assert (= (and d!2191519 (not c!1306640)) b!7027996))

(assert (=> d!2191519 m!7732190))

(declare-fun m!7732204 () Bool)

(assert (=> b!7027995 m!7732204))

(assert (=> b!7027996 m!7732194))

(assert (=> b!7027996 m!7732194))

(declare-fun m!7732206 () Bool)

(assert (=> b!7027996 m!7732206))

(assert (=> b!7027996 m!7732198))

(assert (=> b!7027996 m!7732206))

(assert (=> b!7027996 m!7732198))

(declare-fun m!7732208 () Bool)

(assert (=> b!7027996 m!7732208))

(assert (=> b!7027808 d!2191519))

(declare-fun d!2191521 () Bool)

(declare-fun c!1306641 () Bool)

(assert (=> d!2191521 (= c!1306641 (isEmpty!39507 (t!381643 s!7408)))))

(declare-fun e!4224927 () Bool)

(assert (=> d!2191521 (= (matchZipper!2991 lt!2515870 (t!381643 s!7408)) e!4224927)))

(declare-fun b!7028003 () Bool)

(assert (=> b!7028003 (= e!4224927 (nullableZipper!2568 lt!2515870))))

(declare-fun b!7028004 () Bool)

(assert (=> b!7028004 (= e!4224927 (matchZipper!2991 (derivationStepZipper!2907 lt!2515870 (head!14247 (t!381643 s!7408))) (tail!13528 (t!381643 s!7408))))))

(assert (= (and d!2191521 c!1306641) b!7028003))

(assert (= (and d!2191521 (not c!1306641)) b!7028004))

(assert (=> d!2191521 m!7732190))

(declare-fun m!7732214 () Bool)

(assert (=> b!7028003 m!7732214))

(assert (=> b!7028004 m!7732194))

(assert (=> b!7028004 m!7732194))

(declare-fun m!7732216 () Bool)

(assert (=> b!7028004 m!7732216))

(assert (=> b!7028004 m!7732198))

(assert (=> b!7028004 m!7732216))

(assert (=> b!7028004 m!7732198))

(declare-fun m!7732218 () Bool)

(assert (=> b!7028004 m!7732218))

(assert (=> b!7027808 d!2191521))

(declare-fun d!2191533 () Bool)

(declare-fun nullableFct!2717 (Regex!17451) Bool)

(assert (=> d!2191533 (= (nullable!7162 (h!74205 (exprs!6947 lt!2515860))) (nullableFct!2717 (h!74205 (exprs!6947 lt!2515860))))))

(declare-fun bs!1869353 () Bool)

(assert (= bs!1869353 d!2191533))

(declare-fun m!7732228 () Bool)

(assert (=> bs!1869353 m!7732228))

(assert (=> b!7027810 d!2191533))

(declare-fun d!2191537 () Bool)

(assert (=> d!2191537 (= (tail!13526 (exprs!6947 lt!2515860)) (t!381642 (exprs!6947 lt!2515860)))))

(assert (=> b!7027810 d!2191537))

(declare-fun b!7028015 () Bool)

(declare-fun e!4224936 () (InoxSet Context!12894))

(declare-fun call!638130 () (InoxSet Context!12894))

(assert (=> b!7028015 (= e!4224936 call!638130)))

(declare-fun b!7028016 () Bool)

(declare-fun e!4224934 () (InoxSet Context!12894))

(assert (=> b!7028016 (= e!4224934 e!4224936)))

(declare-fun c!1306646 () Bool)

(assert (=> b!7028016 (= c!1306646 ((_ is Cons!67757) (exprs!6947 lt!2515862)))))

(declare-fun b!7028017 () Bool)

(assert (=> b!7028017 (= e!4224934 ((_ map or) call!638130 (derivationStepZipperUp!2061 (Context!12895 (t!381642 (exprs!6947 lt!2515862))) (h!74206 s!7408))))))

(declare-fun b!7028018 () Bool)

(declare-fun e!4224935 () Bool)

(assert (=> b!7028018 (= e!4224935 (nullable!7162 (h!74205 (exprs!6947 lt!2515862))))))

(declare-fun b!7028019 () Bool)

(assert (=> b!7028019 (= e!4224936 ((as const (Array Context!12894 Bool)) false))))

(declare-fun bm!638125 () Bool)

(assert (=> bm!638125 (= call!638130 (derivationStepZipperDown!2115 (h!74205 (exprs!6947 lt!2515862)) (Context!12895 (t!381642 (exprs!6947 lt!2515862))) (h!74206 s!7408)))))

(declare-fun d!2191539 () Bool)

(declare-fun c!1306647 () Bool)

(assert (=> d!2191539 (= c!1306647 e!4224935)))

(declare-fun res!2868984 () Bool)

(assert (=> d!2191539 (=> (not res!2868984) (not e!4224935))))

(assert (=> d!2191539 (= res!2868984 ((_ is Cons!67757) (exprs!6947 lt!2515862)))))

(assert (=> d!2191539 (= (derivationStepZipperUp!2061 lt!2515862 (h!74206 s!7408)) e!4224934)))

(assert (= (and d!2191539 res!2868984) b!7028018))

(assert (= (and d!2191539 c!1306647) b!7028017))

(assert (= (and d!2191539 (not c!1306647)) b!7028016))

(assert (= (and b!7028016 c!1306646) b!7028015))

(assert (= (and b!7028016 (not c!1306646)) b!7028019))

(assert (= (or b!7028017 b!7028015) bm!638125))

(declare-fun m!7732230 () Bool)

(assert (=> b!7028017 m!7732230))

(declare-fun m!7732232 () Bool)

(assert (=> b!7028018 m!7732232))

(declare-fun m!7732234 () Bool)

(assert (=> bm!638125 m!7732234))

(assert (=> b!7027816 d!2191539))

(declare-fun b!7028022 () Bool)

(declare-fun res!2868986 () Bool)

(declare-fun e!4224937 () Bool)

(assert (=> b!7028022 (=> (not res!2868986) (not e!4224937))))

(declare-fun lt!2515936 () List!67881)

(assert (=> b!7028022 (= res!2868986 (= (size!41046 lt!2515936) (+ (size!41046 lt!2515844) (size!41046 (exprs!6947 ct2!306)))))))

(declare-fun b!7028021 () Bool)

(declare-fun e!4224938 () List!67881)

(assert (=> b!7028021 (= e!4224938 (Cons!67757 (h!74205 lt!2515844) (++!15484 (t!381642 lt!2515844) (exprs!6947 ct2!306))))))

(declare-fun b!7028020 () Bool)

(assert (=> b!7028020 (= e!4224938 (exprs!6947 ct2!306))))

(declare-fun d!2191541 () Bool)

(assert (=> d!2191541 e!4224937))

(declare-fun res!2868985 () Bool)

(assert (=> d!2191541 (=> (not res!2868985) (not e!4224937))))

(assert (=> d!2191541 (= res!2868985 (= (content!13506 lt!2515936) ((_ map or) (content!13506 lt!2515844) (content!13506 (exprs!6947 ct2!306)))))))

(assert (=> d!2191541 (= lt!2515936 e!4224938)))

(declare-fun c!1306648 () Bool)

(assert (=> d!2191541 (= c!1306648 ((_ is Nil!67757) lt!2515844))))

(assert (=> d!2191541 (= (++!15484 lt!2515844 (exprs!6947 ct2!306)) lt!2515936)))

(declare-fun b!7028023 () Bool)

(assert (=> b!7028023 (= e!4224937 (or (not (= (exprs!6947 ct2!306) Nil!67757)) (= lt!2515936 lt!2515844)))))

(assert (= (and d!2191541 c!1306648) b!7028020))

(assert (= (and d!2191541 (not c!1306648)) b!7028021))

(assert (= (and d!2191541 res!2868985) b!7028022))

(assert (= (and b!7028022 res!2868986) b!7028023))

(declare-fun m!7732236 () Bool)

(assert (=> b!7028022 m!7732236))

(declare-fun m!7732238 () Bool)

(assert (=> b!7028022 m!7732238))

(assert (=> b!7028022 m!7732068))

(declare-fun m!7732240 () Bool)

(assert (=> b!7028021 m!7732240))

(declare-fun m!7732242 () Bool)

(assert (=> d!2191541 m!7732242))

(declare-fun m!7732244 () Bool)

(assert (=> d!2191541 m!7732244))

(assert (=> d!2191541 m!7732076))

(assert (=> b!7027816 d!2191541))

(declare-fun b!7028046 () Bool)

(declare-fun e!4224954 () (InoxSet Context!12894))

(assert (=> b!7028046 (= e!4224954 (store ((as const (Array Context!12894 Bool)) false) lt!2515862 true))))

(declare-fun b!7028047 () Bool)

(declare-fun e!4224955 () (InoxSet Context!12894))

(declare-fun call!638144 () (InoxSet Context!12894))

(declare-fun call!638145 () (InoxSet Context!12894))

(assert (=> b!7028047 (= e!4224955 ((_ map or) call!638144 call!638145))))

(declare-fun b!7028048 () Bool)

(declare-fun e!4224956 () (InoxSet Context!12894))

(assert (=> b!7028048 (= e!4224954 e!4224956)))

(declare-fun c!1306660 () Bool)

(assert (=> b!7028048 (= c!1306660 ((_ is Union!17451) (h!74205 (exprs!6947 lt!2515860))))))

(declare-fun b!7028049 () Bool)

(declare-fun e!4224952 () (InoxSet Context!12894))

(assert (=> b!7028049 (= e!4224952 ((as const (Array Context!12894 Bool)) false))))

(declare-fun c!1306659 () Bool)

(declare-fun c!1306663 () Bool)

(declare-fun call!638148 () (InoxSet Context!12894))

(declare-fun bm!638138 () Bool)

(declare-fun call!638146 () List!67881)

(assert (=> bm!638138 (= call!638148 (derivationStepZipperDown!2115 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860)))))) (ite (or c!1306660 c!1306659) lt!2515862 (Context!12895 call!638146)) (h!74206 s!7408)))))

(declare-fun b!7028050 () Bool)

(declare-fun e!4224953 () (InoxSet Context!12894))

(assert (=> b!7028050 (= e!4224955 e!4224953)))

(assert (=> b!7028050 (= c!1306663 ((_ is Concat!26296) (h!74205 (exprs!6947 lt!2515860))))))

(declare-fun b!7028051 () Bool)

(declare-fun e!4224951 () Bool)

(assert (=> b!7028051 (= e!4224951 (nullable!7162 (regOne!35414 (h!74205 (exprs!6947 lt!2515860)))))))

(declare-fun bm!638139 () Bool)

(declare-fun call!638143 () List!67881)

(assert (=> bm!638139 (= call!638146 call!638143)))

(declare-fun bm!638140 () Bool)

(assert (=> bm!638140 (= call!638144 (derivationStepZipperDown!2115 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860)))) (ite c!1306660 lt!2515862 (Context!12895 call!638143)) (h!74206 s!7408)))))

(declare-fun bm!638141 () Bool)

(assert (=> bm!638141 (= call!638145 call!638148)))

(declare-fun b!7028052 () Bool)

(declare-fun call!638147 () (InoxSet Context!12894))

(assert (=> b!7028052 (= e!4224953 call!638147)))

(declare-fun b!7028053 () Bool)

(assert (=> b!7028053 (= e!4224956 ((_ map or) call!638148 call!638144))))

(declare-fun d!2191543 () Bool)

(declare-fun c!1306661 () Bool)

(assert (=> d!2191543 (= c!1306661 (and ((_ is ElementMatch!17451) (h!74205 (exprs!6947 lt!2515860))) (= (c!1306580 (h!74205 (exprs!6947 lt!2515860))) (h!74206 s!7408))))))

(assert (=> d!2191543 (= (derivationStepZipperDown!2115 (h!74205 (exprs!6947 lt!2515860)) lt!2515862 (h!74206 s!7408)) e!4224954)))

(declare-fun bm!638142 () Bool)

(assert (=> bm!638142 (= call!638147 call!638145)))

(declare-fun b!7028054 () Bool)

(assert (=> b!7028054 (= e!4224952 call!638147)))

(declare-fun b!7028055 () Bool)

(declare-fun c!1306662 () Bool)

(assert (=> b!7028055 (= c!1306662 ((_ is Star!17451) (h!74205 (exprs!6947 lt!2515860))))))

(assert (=> b!7028055 (= e!4224953 e!4224952)))

(declare-fun bm!638143 () Bool)

(declare-fun $colon$colon!2563 (List!67881 Regex!17451) List!67881)

(assert (=> bm!638143 (= call!638143 ($colon$colon!2563 (exprs!6947 lt!2515862) (ite (or c!1306659 c!1306663) (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (h!74205 (exprs!6947 lt!2515860)))))))

(declare-fun b!7028056 () Bool)

(assert (=> b!7028056 (= c!1306659 e!4224951)))

(declare-fun res!2868989 () Bool)

(assert (=> b!7028056 (=> (not res!2868989) (not e!4224951))))

(assert (=> b!7028056 (= res!2868989 ((_ is Concat!26296) (h!74205 (exprs!6947 lt!2515860))))))

(assert (=> b!7028056 (= e!4224956 e!4224955)))

(assert (= (and d!2191543 c!1306661) b!7028046))

(assert (= (and d!2191543 (not c!1306661)) b!7028048))

(assert (= (and b!7028048 c!1306660) b!7028053))

(assert (= (and b!7028048 (not c!1306660)) b!7028056))

(assert (= (and b!7028056 res!2868989) b!7028051))

(assert (= (and b!7028056 c!1306659) b!7028047))

(assert (= (and b!7028056 (not c!1306659)) b!7028050))

(assert (= (and b!7028050 c!1306663) b!7028052))

(assert (= (and b!7028050 (not c!1306663)) b!7028055))

(assert (= (and b!7028055 c!1306662) b!7028054))

(assert (= (and b!7028055 (not c!1306662)) b!7028049))

(assert (= (or b!7028052 b!7028054) bm!638139))

(assert (= (or b!7028052 b!7028054) bm!638142))

(assert (= (or b!7028047 bm!638142) bm!638141))

(assert (= (or b!7028047 bm!638139) bm!638143))

(assert (= (or b!7028053 bm!638141) bm!638138))

(assert (= (or b!7028053 b!7028047) bm!638140))

(declare-fun m!7732246 () Bool)

(assert (=> bm!638140 m!7732246))

(assert (=> b!7028046 m!7731880))

(declare-fun m!7732248 () Bool)

(assert (=> bm!638143 m!7732248))

(declare-fun m!7732250 () Bool)

(assert (=> b!7028051 m!7732250))

(declare-fun m!7732252 () Bool)

(assert (=> bm!638138 m!7732252))

(assert (=> b!7027816 d!2191543))

(assert (=> b!7027816 d!2191503))

(declare-fun bs!1869354 () Bool)

(declare-fun d!2191545 () Bool)

(assert (= bs!1869354 (and d!2191545 b!7027814)))

(declare-fun lambda!413615 () Int)

(assert (=> bs!1869354 (= lambda!413615 lambda!413593)))

(assert (=> d!2191545 true))

(assert (=> d!2191545 (= (derivationStepZipper!2907 lt!2515843 (h!74206 s!7408)) (flatMap!2398 lt!2515843 lambda!413615))))

(declare-fun bs!1869355 () Bool)

(assert (= bs!1869355 d!2191545))

(declare-fun m!7732254 () Bool)

(assert (=> bs!1869355 m!7732254))

(assert (=> b!7027815 d!2191545))

(assert (=> b!7027815 d!2191503))

(declare-fun d!2191547 () Bool)

(declare-fun choose!53132 ((InoxSet Context!12894) Int) (InoxSet Context!12894))

(assert (=> d!2191547 (= (flatMap!2398 lt!2515843 lambda!413593) (choose!53132 lt!2515843 lambda!413593))))

(declare-fun bs!1869356 () Bool)

(assert (= bs!1869356 d!2191547))

(declare-fun m!7732256 () Bool)

(assert (=> bs!1869356 m!7732256))

(assert (=> b!7027815 d!2191547))

(assert (=> b!7027815 d!2191539))

(declare-fun d!2191549 () Bool)

(declare-fun dynLambda!27333 (Int Context!12894) (InoxSet Context!12894))

(assert (=> d!2191549 (= (flatMap!2398 lt!2515843 lambda!413593) (dynLambda!27333 lambda!413593 lt!2515862))))

(declare-fun lt!2515939 () Unit!161568)

(declare-fun choose!53133 ((InoxSet Context!12894) Context!12894 Int) Unit!161568)

(assert (=> d!2191549 (= lt!2515939 (choose!53133 lt!2515843 lt!2515862 lambda!413593))))

(assert (=> d!2191549 (= lt!2515843 (store ((as const (Array Context!12894 Bool)) false) lt!2515862 true))))

(assert (=> d!2191549 (= (lemmaFlatMapOnSingletonSet!1912 lt!2515843 lt!2515862 lambda!413593) lt!2515939)))

(declare-fun b_lambda!265901 () Bool)

(assert (=> (not b_lambda!265901) (not d!2191549)))

(declare-fun bs!1869357 () Bool)

(assert (= bs!1869357 d!2191549))

(assert (=> bs!1869357 m!7731878))

(declare-fun m!7732258 () Bool)

(assert (=> bs!1869357 m!7732258))

(declare-fun m!7732260 () Bool)

(assert (=> bs!1869357 m!7732260))

(assert (=> bs!1869357 m!7731880))

(assert (=> b!7027815 d!2191549))

(declare-fun d!2191551 () Bool)

(declare-fun c!1306666 () Bool)

(assert (=> d!2191551 (= c!1306666 (isEmpty!39507 (t!381643 s!7408)))))

(declare-fun e!4224957 () Bool)

(assert (=> d!2191551 (= (matchZipper!2991 lt!2515848 (t!381643 s!7408)) e!4224957)))

(declare-fun b!7028059 () Bool)

(assert (=> b!7028059 (= e!4224957 (nullableZipper!2568 lt!2515848))))

(declare-fun b!7028060 () Bool)

(assert (=> b!7028060 (= e!4224957 (matchZipper!2991 (derivationStepZipper!2907 lt!2515848 (head!14247 (t!381643 s!7408))) (tail!13528 (t!381643 s!7408))))))

(assert (= (and d!2191551 c!1306666) b!7028059))

(assert (= (and d!2191551 (not c!1306666)) b!7028060))

(assert (=> d!2191551 m!7732190))

(declare-fun m!7732262 () Bool)

(assert (=> b!7028059 m!7732262))

(assert (=> b!7028060 m!7732194))

(assert (=> b!7028060 m!7732194))

(declare-fun m!7732264 () Bool)

(assert (=> b!7028060 m!7732264))

(assert (=> b!7028060 m!7732198))

(assert (=> b!7028060 m!7732264))

(assert (=> b!7028060 m!7732198))

(declare-fun m!7732266 () Bool)

(assert (=> b!7028060 m!7732266))

(assert (=> b!7027827 d!2191551))

(assert (=> b!7027827 d!2191503))

(assert (=> b!7027817 d!2191551))

(assert (=> b!7027817 d!2191503))

(assert (=> b!7027807 d!2191477))

(declare-fun d!2191553 () Bool)

(assert (=> d!2191553 (= (flatMap!2398 lt!2515867 lambda!413593) (dynLambda!27333 lambda!413593 lt!2515855))))

(declare-fun lt!2515940 () Unit!161568)

(assert (=> d!2191553 (= lt!2515940 (choose!53133 lt!2515867 lt!2515855 lambda!413593))))

(assert (=> d!2191553 (= lt!2515867 (store ((as const (Array Context!12894 Bool)) false) lt!2515855 true))))

(assert (=> d!2191553 (= (lemmaFlatMapOnSingletonSet!1912 lt!2515867 lt!2515855 lambda!413593) lt!2515940)))

(declare-fun b_lambda!265903 () Bool)

(assert (=> (not b_lambda!265903) (not d!2191553)))

(declare-fun bs!1869358 () Bool)

(assert (= bs!1869358 d!2191553))

(assert (=> bs!1869358 m!7731854))

(declare-fun m!7732268 () Bool)

(assert (=> bs!1869358 m!7732268))

(declare-fun m!7732270 () Bool)

(assert (=> bs!1869358 m!7732270))

(assert (=> bs!1869358 m!7731832))

(assert (=> b!7027826 d!2191553))

(declare-fun d!2191555 () Bool)

(assert (=> d!2191555 (= (flatMap!2398 lt!2515867 lambda!413593) (choose!53132 lt!2515867 lambda!413593))))

(declare-fun bs!1869359 () Bool)

(assert (= bs!1869359 d!2191555))

(declare-fun m!7732272 () Bool)

(assert (=> bs!1869359 m!7732272))

(assert (=> b!7027826 d!2191555))

(assert (=> b!7027826 d!2191503))

(declare-fun d!2191557 () Bool)

(declare-fun lt!2515943 () Int)

(assert (=> d!2191557 (>= lt!2515943 0)))

(declare-fun e!4224960 () Int)

(assert (=> d!2191557 (= lt!2515943 e!4224960)))

(declare-fun c!1306670 () Bool)

(assert (=> d!2191557 (= c!1306670 ((_ is Cons!67757) (exprs!6947 lt!2515855)))))

(assert (=> d!2191557 (= (contextDepthTotal!486 lt!2515855) lt!2515943)))

(declare-fun b!7028065 () Bool)

(declare-fun regexDepthTotal!292 (Regex!17451) Int)

(assert (=> b!7028065 (= e!4224960 (+ (regexDepthTotal!292 (h!74205 (exprs!6947 lt!2515855))) (contextDepthTotal!486 (Context!12895 (t!381642 (exprs!6947 lt!2515855))))))))

(declare-fun b!7028066 () Bool)

(assert (=> b!7028066 (= e!4224960 1)))

(assert (= (and d!2191557 c!1306670) b!7028065))

(assert (= (and d!2191557 (not c!1306670)) b!7028066))

(declare-fun m!7732274 () Bool)

(assert (=> b!7028065 m!7732274))

(declare-fun m!7732276 () Bool)

(assert (=> b!7028065 m!7732276))

(assert (=> b!7027826 d!2191557))

(declare-fun d!2191559 () Bool)

(declare-fun choose!53134 ((InoxSet Context!12894) Int) (InoxSet Context!12894))

(assert (=> d!2191559 (= (map!15744 lt!2515867 lambda!413591) (choose!53134 lt!2515867 lambda!413591))))

(declare-fun bs!1869360 () Bool)

(assert (= bs!1869360 d!2191559))

(declare-fun m!7732278 () Bool)

(assert (=> bs!1869360 m!7732278))

(assert (=> b!7027826 d!2191559))

(declare-fun b!7028067 () Bool)

(declare-fun e!4224963 () (InoxSet Context!12894))

(declare-fun call!638149 () (InoxSet Context!12894))

(assert (=> b!7028067 (= e!4224963 call!638149)))

(declare-fun b!7028068 () Bool)

(declare-fun e!4224961 () (InoxSet Context!12894))

(assert (=> b!7028068 (= e!4224961 e!4224963)))

(declare-fun c!1306671 () Bool)

(assert (=> b!7028068 (= c!1306671 ((_ is Cons!67757) (exprs!6947 lt!2515855)))))

(declare-fun b!7028069 () Bool)

(assert (=> b!7028069 (= e!4224961 ((_ map or) call!638149 (derivationStepZipperUp!2061 (Context!12895 (t!381642 (exprs!6947 lt!2515855))) (h!74206 s!7408))))))

(declare-fun b!7028070 () Bool)

(declare-fun e!4224962 () Bool)

(assert (=> b!7028070 (= e!4224962 (nullable!7162 (h!74205 (exprs!6947 lt!2515855))))))

(declare-fun b!7028071 () Bool)

(assert (=> b!7028071 (= e!4224963 ((as const (Array Context!12894 Bool)) false))))

(declare-fun bm!638144 () Bool)

(assert (=> bm!638144 (= call!638149 (derivationStepZipperDown!2115 (h!74205 (exprs!6947 lt!2515855)) (Context!12895 (t!381642 (exprs!6947 lt!2515855))) (h!74206 s!7408)))))

(declare-fun d!2191561 () Bool)

(declare-fun c!1306672 () Bool)

(assert (=> d!2191561 (= c!1306672 e!4224962)))

(declare-fun res!2868990 () Bool)

(assert (=> d!2191561 (=> (not res!2868990) (not e!4224962))))

(assert (=> d!2191561 (= res!2868990 ((_ is Cons!67757) (exprs!6947 lt!2515855)))))

(assert (=> d!2191561 (= (derivationStepZipperUp!2061 lt!2515855 (h!74206 s!7408)) e!4224961)))

(assert (= (and d!2191561 res!2868990) b!7028070))

(assert (= (and d!2191561 c!1306672) b!7028069))

(assert (= (and d!2191561 (not c!1306672)) b!7028068))

(assert (= (and b!7028068 c!1306671) b!7028067))

(assert (= (and b!7028068 (not c!1306671)) b!7028071))

(assert (= (or b!7028069 b!7028067) bm!638144))

(declare-fun m!7732280 () Bool)

(assert (=> b!7028069 m!7732280))

(declare-fun m!7732282 () Bool)

(assert (=> b!7028070 m!7732282))

(declare-fun m!7732284 () Bool)

(assert (=> bm!638144 m!7732284))

(assert (=> b!7027826 d!2191561))

(declare-fun d!2191563 () Bool)

(declare-fun lt!2515944 () Int)

(assert (=> d!2191563 (>= lt!2515944 0)))

(declare-fun e!4224964 () Int)

(assert (=> d!2191563 (= lt!2515944 e!4224964)))

(declare-fun c!1306673 () Bool)

(assert (=> d!2191563 (= c!1306673 ((_ is Cons!67757) (exprs!6947 lt!2515860)))))

(assert (=> d!2191563 (= (contextDepthTotal!486 lt!2515860) lt!2515944)))

(declare-fun b!7028072 () Bool)

(assert (=> b!7028072 (= e!4224964 (+ (regexDepthTotal!292 (h!74205 (exprs!6947 lt!2515860))) (contextDepthTotal!486 (Context!12895 (t!381642 (exprs!6947 lt!2515860))))))))

(declare-fun b!7028073 () Bool)

(assert (=> b!7028073 (= e!4224964 1)))

(assert (= (and d!2191563 c!1306673) b!7028072))

(assert (= (and d!2191563 (not c!1306673)) b!7028073))

(declare-fun m!7732286 () Bool)

(assert (=> b!7028072 m!7732286))

(declare-fun m!7732288 () Bool)

(assert (=> b!7028072 m!7732288))

(assert (=> b!7027826 d!2191563))

(assert (=> b!7027826 d!2191541))

(declare-fun d!2191565 () Bool)

(assert (=> d!2191565 (= (map!15744 lt!2515867 lambda!413591) (store ((as const (Array Context!12894 Bool)) false) (dynLambda!27332 lambda!413591 lt!2515855) true))))

(declare-fun lt!2515947 () Unit!161568)

(declare-fun choose!53135 ((InoxSet Context!12894) Context!12894 Int) Unit!161568)

(assert (=> d!2191565 (= lt!2515947 (choose!53135 lt!2515867 lt!2515855 lambda!413591))))

(assert (=> d!2191565 (= lt!2515867 (store ((as const (Array Context!12894 Bool)) false) lt!2515855 true))))

(assert (=> d!2191565 (= (lemmaMapOnSingletonSet!362 lt!2515867 lt!2515855 lambda!413591) lt!2515947)))

(declare-fun b_lambda!265905 () Bool)

(assert (=> (not b_lambda!265905) (not d!2191565)))

(declare-fun bs!1869361 () Bool)

(assert (= bs!1869361 d!2191565))

(declare-fun m!7732290 () Bool)

(assert (=> bs!1869361 m!7732290))

(declare-fun m!7732292 () Bool)

(assert (=> bs!1869361 m!7732292))

(assert (=> bs!1869361 m!7732290))

(declare-fun m!7732294 () Bool)

(assert (=> bs!1869361 m!7732294))

(assert (=> bs!1869361 m!7731832))

(assert (=> bs!1869361 m!7731846))

(assert (=> b!7027826 d!2191565))

(declare-fun d!2191567 () Bool)

(declare-fun e!4224967 () Bool)

(assert (=> d!2191567 e!4224967))

(declare-fun res!2868993 () Bool)

(assert (=> d!2191567 (=> (not res!2868993) (not e!4224967))))

(declare-fun lt!2515950 () List!67883)

(declare-fun noDuplicate!2617 (List!67883) Bool)

(assert (=> d!2191567 (= res!2868993 (noDuplicate!2617 lt!2515950))))

(declare-fun choose!53136 ((InoxSet Context!12894)) List!67883)

(assert (=> d!2191567 (= lt!2515950 (choose!53136 z1!570))))

(assert (=> d!2191567 (= (toList!10794 z1!570) lt!2515950)))

(declare-fun b!7028076 () Bool)

(declare-fun content!13507 (List!67883) (InoxSet Context!12894))

(assert (=> b!7028076 (= e!4224967 (= (content!13507 lt!2515950) z1!570))))

(assert (= (and d!2191567 res!2868993) b!7028076))

(declare-fun m!7732296 () Bool)

(assert (=> d!2191567 m!7732296))

(declare-fun m!7732298 () Bool)

(assert (=> d!2191567 m!7732298))

(declare-fun m!7732300 () Bool)

(assert (=> b!7028076 m!7732300))

(assert (=> b!7027826 d!2191567))

(declare-fun d!2191569 () Bool)

(declare-fun lt!2515953 () Int)

(assert (=> d!2191569 (>= lt!2515953 0)))

(declare-fun e!4224970 () Int)

(assert (=> d!2191569 (= lt!2515953 e!4224970)))

(declare-fun c!1306676 () Bool)

(assert (=> d!2191569 (= c!1306676 ((_ is Cons!67759) lt!2515838))))

(assert (=> d!2191569 (= (zipperDepthTotal!514 lt!2515838) lt!2515953)))

(declare-fun b!7028081 () Bool)

(assert (=> b!7028081 (= e!4224970 (+ (contextDepthTotal!486 (h!74207 lt!2515838)) (zipperDepthTotal!514 (t!381644 lt!2515838))))))

(declare-fun b!7028082 () Bool)

(assert (=> b!7028082 (= e!4224970 0)))

(assert (= (and d!2191569 c!1306676) b!7028081))

(assert (= (and d!2191569 (not c!1306676)) b!7028082))

(declare-fun m!7732302 () Bool)

(assert (=> b!7028081 m!7732302))

(declare-fun m!7732304 () Bool)

(assert (=> b!7028081 m!7732304))

(assert (=> b!7027826 d!2191569))

(declare-fun d!2191571 () Bool)

(assert (=> d!2191571 (<= (contextDepthTotal!486 lt!2515860) (zipperDepthTotal!514 lt!2515838))))

(declare-fun lt!2515956 () Unit!161568)

(declare-fun choose!53137 (List!67883 Context!12894) Unit!161568)

(assert (=> d!2191571 (= lt!2515956 (choose!53137 lt!2515838 lt!2515860))))

(declare-fun contains!20446 (List!67883 Context!12894) Bool)

(assert (=> d!2191571 (contains!20446 lt!2515838 lt!2515860)))

(assert (=> d!2191571 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!54 lt!2515838 lt!2515860) lt!2515956)))

(declare-fun bs!1869362 () Bool)

(assert (= bs!1869362 d!2191571))

(assert (=> bs!1869362 m!7731840))

(assert (=> bs!1869362 m!7731852))

(declare-fun m!7732306 () Bool)

(assert (=> bs!1869362 m!7732306))

(declare-fun m!7732308 () Bool)

(assert (=> bs!1869362 m!7732308))

(assert (=> b!7027826 d!2191571))

(declare-fun d!2191573 () Bool)

(declare-fun e!4224973 () Bool)

(assert (=> d!2191573 e!4224973))

(declare-fun res!2868996 () Bool)

(assert (=> d!2191573 (=> (not res!2868996) (not e!4224973))))

(declare-fun lt!2515959 () Context!12894)

(declare-fun dynLambda!27334 (Int Context!12894) Bool)

(assert (=> d!2191573 (= res!2868996 (dynLambda!27334 lambda!413590 lt!2515959))))

(declare-fun getWitness!1448 (List!67883 Int) Context!12894)

(assert (=> d!2191573 (= lt!2515959 (getWitness!1448 (toList!10794 lt!2515849) lambda!413590))))

(declare-fun exists!3367 ((InoxSet Context!12894) Int) Bool)

(assert (=> d!2191573 (exists!3367 lt!2515849 lambda!413590)))

(assert (=> d!2191573 (= (getWitness!1446 lt!2515849 lambda!413590) lt!2515959)))

(declare-fun b!7028085 () Bool)

(assert (=> b!7028085 (= e!4224973 (select lt!2515849 lt!2515959))))

(assert (= (and d!2191573 res!2868996) b!7028085))

(declare-fun b_lambda!265907 () Bool)

(assert (=> (not b_lambda!265907) (not d!2191573)))

(declare-fun m!7732310 () Bool)

(assert (=> d!2191573 m!7732310))

(assert (=> d!2191573 m!7731898))

(assert (=> d!2191573 m!7731898))

(declare-fun m!7732312 () Bool)

(assert (=> d!2191573 m!7732312))

(declare-fun m!7732314 () Bool)

(assert (=> d!2191573 m!7732314))

(declare-fun m!7732316 () Bool)

(assert (=> b!7028085 m!7732316))

(assert (=> b!7027824 d!2191573))

(declare-fun bs!1869363 () Bool)

(declare-fun d!2191575 () Bool)

(assert (= bs!1869363 (and d!2191575 b!7027824)))

(declare-fun lambda!413618 () Int)

(assert (=> bs!1869363 (not (= lambda!413618 lambda!413590))))

(assert (=> d!2191575 true))

(declare-fun order!28151 () Int)

(declare-fun dynLambda!27335 (Int Int) Int)

(assert (=> d!2191575 (< (dynLambda!27335 order!28151 lambda!413590) (dynLambda!27335 order!28151 lambda!413618))))

(declare-fun forall!16357 (List!67883 Int) Bool)

(assert (=> d!2191575 (= (exists!3365 lt!2515845 lambda!413590) (not (forall!16357 lt!2515845 lambda!413618)))))

(declare-fun bs!1869364 () Bool)

(assert (= bs!1869364 d!2191575))

(declare-fun m!7732318 () Bool)

(assert (=> bs!1869364 m!7732318))

(assert (=> b!7027824 d!2191575))

(declare-fun d!2191577 () Bool)

(declare-fun c!1306678 () Bool)

(assert (=> d!2191577 (= c!1306678 (isEmpty!39507 s!7408))))

(declare-fun e!4224974 () Bool)

(assert (=> d!2191577 (= (matchZipper!2991 lt!2515842 s!7408) e!4224974)))

(declare-fun b!7028088 () Bool)

(assert (=> b!7028088 (= e!4224974 (nullableZipper!2568 lt!2515842))))

(declare-fun b!7028089 () Bool)

(assert (=> b!7028089 (= e!4224974 (matchZipper!2991 (derivationStepZipper!2907 lt!2515842 (head!14247 s!7408)) (tail!13528 s!7408)))))

(assert (= (and d!2191577 c!1306678) b!7028088))

(assert (= (and d!2191577 (not c!1306678)) b!7028089))

(declare-fun m!7732320 () Bool)

(assert (=> d!2191577 m!7732320))

(declare-fun m!7732322 () Bool)

(assert (=> b!7028088 m!7732322))

(declare-fun m!7732324 () Bool)

(assert (=> b!7028089 m!7732324))

(assert (=> b!7028089 m!7732324))

(declare-fun m!7732326 () Bool)

(assert (=> b!7028089 m!7732326))

(declare-fun m!7732328 () Bool)

(assert (=> b!7028089 m!7732328))

(assert (=> b!7028089 m!7732326))

(assert (=> b!7028089 m!7732328))

(declare-fun m!7732330 () Bool)

(assert (=> b!7028089 m!7732330))

(assert (=> b!7027824 d!2191577))

(declare-fun d!2191579 () Bool)

(declare-fun e!4224975 () Bool)

(assert (=> d!2191579 e!4224975))

(declare-fun res!2868997 () Bool)

(assert (=> d!2191579 (=> (not res!2868997) (not e!4224975))))

(declare-fun lt!2515960 () List!67883)

(assert (=> d!2191579 (= res!2868997 (noDuplicate!2617 lt!2515960))))

(assert (=> d!2191579 (= lt!2515960 (choose!53136 lt!2515849))))

(assert (=> d!2191579 (= (toList!10794 lt!2515849) lt!2515960)))

(declare-fun b!7028090 () Bool)

(assert (=> b!7028090 (= e!4224975 (= (content!13507 lt!2515960) lt!2515849))))

(assert (= (and d!2191579 res!2868997) b!7028090))

(declare-fun m!7732332 () Bool)

(assert (=> d!2191579 m!7732332))

(declare-fun m!7732334 () Bool)

(assert (=> d!2191579 m!7732334))

(declare-fun m!7732336 () Bool)

(assert (=> b!7028090 m!7732336))

(assert (=> b!7027824 d!2191579))

(declare-fun bs!1869365 () Bool)

(declare-fun d!2191581 () Bool)

(assert (= bs!1869365 (and d!2191581 b!7027824)))

(declare-fun lambda!413621 () Int)

(assert (=> bs!1869365 (= lambda!413621 lambda!413590)))

(declare-fun bs!1869366 () Bool)

(assert (= bs!1869366 (and d!2191581 d!2191575)))

(assert (=> bs!1869366 (not (= lambda!413621 lambda!413618))))

(assert (=> d!2191581 true))

(assert (=> d!2191581 (exists!3365 lt!2515845 lambda!413621)))

(declare-fun lt!2515963 () Unit!161568)

(declare-fun choose!53138 (List!67883 List!67882) Unit!161568)

(assert (=> d!2191581 (= lt!2515963 (choose!53138 lt!2515845 s!7408))))

(assert (=> d!2191581 (matchZipper!2991 (content!13507 lt!2515845) s!7408)))

(assert (=> d!2191581 (= (lemmaZipperMatchesExistsMatchingContext!390 lt!2515845 s!7408) lt!2515963)))

(declare-fun bs!1869367 () Bool)

(assert (= bs!1869367 d!2191581))

(declare-fun m!7732338 () Bool)

(assert (=> bs!1869367 m!7732338))

(declare-fun m!7732340 () Bool)

(assert (=> bs!1869367 m!7732340))

(declare-fun m!7732342 () Bool)

(assert (=> bs!1869367 m!7732342))

(assert (=> bs!1869367 m!7732342))

(declare-fun m!7732344 () Bool)

(assert (=> bs!1869367 m!7732344))

(assert (=> b!7027824 d!2191581))

(declare-fun d!2191583 () Bool)

(declare-fun c!1306681 () Bool)

(assert (=> d!2191583 (= c!1306681 (isEmpty!39507 s!7408))))

(declare-fun e!4224976 () Bool)

(assert (=> d!2191583 (= (matchZipper!2991 lt!2515849 s!7408) e!4224976)))

(declare-fun b!7028091 () Bool)

(assert (=> b!7028091 (= e!4224976 (nullableZipper!2568 lt!2515849))))

(declare-fun b!7028092 () Bool)

(assert (=> b!7028092 (= e!4224976 (matchZipper!2991 (derivationStepZipper!2907 lt!2515849 (head!14247 s!7408)) (tail!13528 s!7408)))))

(assert (= (and d!2191583 c!1306681) b!7028091))

(assert (= (and d!2191583 (not c!1306681)) b!7028092))

(assert (=> d!2191583 m!7732320))

(declare-fun m!7732346 () Bool)

(assert (=> b!7028091 m!7732346))

(assert (=> b!7028092 m!7732324))

(assert (=> b!7028092 m!7732324))

(declare-fun m!7732348 () Bool)

(assert (=> b!7028092 m!7732348))

(assert (=> b!7028092 m!7732328))

(assert (=> b!7028092 m!7732348))

(assert (=> b!7028092 m!7732328))

(declare-fun m!7732350 () Bool)

(assert (=> b!7028092 m!7732350))

(assert (=> start!678632 d!2191583))

(declare-fun bs!1869368 () Bool)

(declare-fun d!2191585 () Bool)

(assert (= bs!1869368 (and d!2191585 b!7027809)))

(declare-fun lambda!413626 () Int)

(assert (=> bs!1869368 (= lambda!413626 lambda!413591)))

(assert (=> d!2191585 true))

(assert (=> d!2191585 (= (appendTo!572 z1!570 ct2!306) (map!15744 z1!570 lambda!413626))))

(declare-fun bs!1869369 () Bool)

(assert (= bs!1869369 d!2191585))

(declare-fun m!7732352 () Bool)

(assert (=> bs!1869369 m!7732352))

(assert (=> start!678632 d!2191585))

(declare-fun bs!1869370 () Bool)

(declare-fun d!2191587 () Bool)

(assert (= bs!1869370 (and d!2191587 b!7027809)))

(declare-fun lambda!413629 () Int)

(assert (=> bs!1869370 (= lambda!413629 lambda!413592)))

(assert (=> d!2191587 (= (inv!86486 ct2!306) (forall!16356 (exprs!6947 ct2!306) lambda!413629))))

(declare-fun bs!1869371 () Bool)

(assert (= bs!1869371 d!2191587))

(declare-fun m!7732354 () Bool)

(assert (=> bs!1869371 m!7732354))

(assert (=> start!678632 d!2191587))

(declare-fun bs!1869372 () Bool)

(declare-fun d!2191589 () Bool)

(assert (= bs!1869372 (and d!2191589 b!7027809)))

(declare-fun lambda!413630 () Int)

(assert (=> bs!1869372 (= lambda!413630 lambda!413592)))

(declare-fun bs!1869373 () Bool)

(assert (= bs!1869373 (and d!2191589 d!2191587)))

(assert (=> bs!1869373 (= lambda!413630 lambda!413629)))

(assert (=> d!2191589 (= (inv!86486 setElem!49040) (forall!16356 (exprs!6947 setElem!49040) lambda!413630))))

(declare-fun bs!1869374 () Bool)

(assert (= bs!1869374 d!2191589))

(declare-fun m!7732356 () Bool)

(assert (=> bs!1869374 m!7732356))

(assert (=> setNonEmpty!49040 d!2191589))

(declare-fun d!2191591 () Bool)

(declare-fun lt!2515966 () Int)

(assert (=> d!2191591 (>= lt!2515966 0)))

(declare-fun e!4224977 () Int)

(assert (=> d!2191591 (= lt!2515966 e!4224977)))

(declare-fun c!1306683 () Bool)

(assert (=> d!2191591 (= c!1306683 ((_ is Cons!67759) (Cons!67759 lt!2515855 Nil!67759)))))

(assert (=> d!2191591 (= (zipperDepthTotal!514 (Cons!67759 lt!2515855 Nil!67759)) lt!2515966)))

(declare-fun b!7028093 () Bool)

(assert (=> b!7028093 (= e!4224977 (+ (contextDepthTotal!486 (h!74207 (Cons!67759 lt!2515855 Nil!67759))) (zipperDepthTotal!514 (t!381644 (Cons!67759 lt!2515855 Nil!67759)))))))

(declare-fun b!7028094 () Bool)

(assert (=> b!7028094 (= e!4224977 0)))

(assert (= (and d!2191591 c!1306683) b!7028093))

(assert (= (and d!2191591 (not c!1306683)) b!7028094))

(declare-fun m!7732358 () Bool)

(assert (=> b!7028093 m!7732358))

(declare-fun m!7732360 () Bool)

(assert (=> b!7028093 m!7732360))

(assert (=> b!7027823 d!2191591))

(declare-fun d!2191593 () Bool)

(declare-fun c!1306684 () Bool)

(assert (=> d!2191593 (= c!1306684 (isEmpty!39507 s!7408))))

(declare-fun e!4224978 () Bool)

(assert (=> d!2191593 (= (matchZipper!2991 lt!2515843 s!7408) e!4224978)))

(declare-fun b!7028095 () Bool)

(assert (=> b!7028095 (= e!4224978 (nullableZipper!2568 lt!2515843))))

(declare-fun b!7028096 () Bool)

(assert (=> b!7028096 (= e!4224978 (matchZipper!2991 (derivationStepZipper!2907 lt!2515843 (head!14247 s!7408)) (tail!13528 s!7408)))))

(assert (= (and d!2191593 c!1306684) b!7028095))

(assert (= (and d!2191593 (not c!1306684)) b!7028096))

(assert (=> d!2191593 m!7732320))

(declare-fun m!7732362 () Bool)

(assert (=> b!7028095 m!7732362))

(assert (=> b!7028096 m!7732324))

(assert (=> b!7028096 m!7732324))

(declare-fun m!7732364 () Bool)

(assert (=> b!7028096 m!7732364))

(assert (=> b!7028096 m!7732328))

(assert (=> b!7028096 m!7732364))

(assert (=> b!7028096 m!7732328))

(declare-fun m!7732366 () Bool)

(assert (=> b!7028096 m!7732366))

(assert (=> b!7027825 d!2191593))

(assert (=> b!7027825 d!2191503))

(declare-fun d!2191595 () Bool)

(assert (=> d!2191595 (= (flatMap!2398 lt!2515837 lambda!413593) (dynLambda!27333 lambda!413593 lt!2515841))))

(declare-fun lt!2515967 () Unit!161568)

(assert (=> d!2191595 (= lt!2515967 (choose!53133 lt!2515837 lt!2515841 lambda!413593))))

(assert (=> d!2191595 (= lt!2515837 (store ((as const (Array Context!12894 Bool)) false) lt!2515841 true))))

(assert (=> d!2191595 (= (lemmaFlatMapOnSingletonSet!1912 lt!2515837 lt!2515841 lambda!413593) lt!2515967)))

(declare-fun b_lambda!265909 () Bool)

(assert (=> (not b_lambda!265909) (not d!2191595)))

(declare-fun bs!1869375 () Bool)

(assert (= bs!1869375 d!2191595))

(assert (=> bs!1869375 m!7731916))

(declare-fun m!7732368 () Bool)

(assert (=> bs!1869375 m!7732368))

(declare-fun m!7732370 () Bool)

(assert (=> bs!1869375 m!7732370))

(assert (=> bs!1869375 m!7731892))

(assert (=> b!7027814 d!2191595))

(declare-fun b!7028097 () Bool)

(declare-fun e!4224981 () (InoxSet Context!12894))

(declare-fun call!638150 () (InoxSet Context!12894))

(assert (=> b!7028097 (= e!4224981 call!638150)))

(declare-fun b!7028098 () Bool)

(declare-fun e!4224979 () (InoxSet Context!12894))

(assert (=> b!7028098 (= e!4224979 e!4224981)))

(declare-fun c!1306685 () Bool)

(assert (=> b!7028098 (= c!1306685 ((_ is Cons!67757) (exprs!6947 lt!2515841)))))

(declare-fun b!7028099 () Bool)

(assert (=> b!7028099 (= e!4224979 ((_ map or) call!638150 (derivationStepZipperUp!2061 (Context!12895 (t!381642 (exprs!6947 lt!2515841))) (h!74206 s!7408))))))

(declare-fun b!7028100 () Bool)

(declare-fun e!4224980 () Bool)

(assert (=> b!7028100 (= e!4224980 (nullable!7162 (h!74205 (exprs!6947 lt!2515841))))))

(declare-fun b!7028101 () Bool)

(assert (=> b!7028101 (= e!4224981 ((as const (Array Context!12894 Bool)) false))))

(declare-fun bm!638145 () Bool)

(assert (=> bm!638145 (= call!638150 (derivationStepZipperDown!2115 (h!74205 (exprs!6947 lt!2515841)) (Context!12895 (t!381642 (exprs!6947 lt!2515841))) (h!74206 s!7408)))))

(declare-fun d!2191597 () Bool)

(declare-fun c!1306686 () Bool)

(assert (=> d!2191597 (= c!1306686 e!4224980)))

(declare-fun res!2868998 () Bool)

(assert (=> d!2191597 (=> (not res!2868998) (not e!4224980))))

(assert (=> d!2191597 (= res!2868998 ((_ is Cons!67757) (exprs!6947 lt!2515841)))))

(assert (=> d!2191597 (= (derivationStepZipperUp!2061 lt!2515841 (h!74206 s!7408)) e!4224979)))

(assert (= (and d!2191597 res!2868998) b!7028100))

(assert (= (and d!2191597 c!1306686) b!7028099))

(assert (= (and d!2191597 (not c!1306686)) b!7028098))

(assert (= (and b!7028098 c!1306685) b!7028097))

(assert (= (and b!7028098 (not c!1306685)) b!7028101))

(assert (= (or b!7028099 b!7028097) bm!638145))

(declare-fun m!7732372 () Bool)

(assert (=> b!7028099 m!7732372))

(declare-fun m!7732374 () Bool)

(assert (=> b!7028100 m!7732374))

(declare-fun m!7732376 () Bool)

(assert (=> bm!638145 m!7732376))

(assert (=> b!7027814 d!2191597))

(assert (=> b!7027814 d!2191477))

(declare-fun d!2191599 () Bool)

(assert (=> d!2191599 (= (flatMap!2398 lt!2515837 lambda!413593) (choose!53132 lt!2515837 lambda!413593))))

(declare-fun bs!1869376 () Bool)

(assert (= bs!1869376 d!2191599))

(declare-fun m!7732378 () Bool)

(assert (=> bs!1869376 m!7732378))

(assert (=> b!7027814 d!2191599))

(declare-fun bs!1869377 () Bool)

(declare-fun d!2191601 () Bool)

(assert (= bs!1869377 (and d!2191601 b!7027814)))

(declare-fun lambda!413631 () Int)

(assert (=> bs!1869377 (= lambda!413631 lambda!413593)))

(declare-fun bs!1869378 () Bool)

(assert (= bs!1869378 (and d!2191601 d!2191545)))

(assert (=> bs!1869378 (= lambda!413631 lambda!413615)))

(assert (=> d!2191601 true))

(assert (=> d!2191601 (= (derivationStepZipper!2907 lt!2515837 (h!74206 s!7408)) (flatMap!2398 lt!2515837 lambda!413631))))

(declare-fun bs!1869379 () Bool)

(assert (= bs!1869379 d!2191601))

(declare-fun m!7732380 () Bool)

(assert (=> bs!1869379 m!7732380))

(assert (=> b!7027814 d!2191601))

(assert (=> b!7027821 d!2191551))

(declare-fun d!2191603 () Bool)

(assert (=> d!2191603 (= (isEmpty!39505 (exprs!6947 lt!2515860)) ((_ is Nil!67757) (exprs!6947 lt!2515860)))))

(assert (=> b!7027811 d!2191603))

(declare-fun condSetEmpty!49046 () Bool)

(assert (=> setNonEmpty!49040 (= condSetEmpty!49046 (= setRest!49040 ((as const (Array Context!12894 Bool)) false)))))

(declare-fun setRes!49046 () Bool)

(assert (=> setNonEmpty!49040 (= tp!1935811 setRes!49046)))

(declare-fun setIsEmpty!49046 () Bool)

(assert (=> setIsEmpty!49046 setRes!49046))

(declare-fun tp!1935836 () Bool)

(declare-fun setElem!49046 () Context!12894)

(declare-fun setNonEmpty!49046 () Bool)

(declare-fun e!4224984 () Bool)

(assert (=> setNonEmpty!49046 (= setRes!49046 (and tp!1935836 (inv!86486 setElem!49046) e!4224984))))

(declare-fun setRest!49046 () (InoxSet Context!12894))

(assert (=> setNonEmpty!49046 (= setRest!49040 ((_ map or) (store ((as const (Array Context!12894 Bool)) false) setElem!49046 true) setRest!49046))))

(declare-fun b!7028106 () Bool)

(declare-fun tp!1935835 () Bool)

(assert (=> b!7028106 (= e!4224984 tp!1935835)))

(assert (= (and setNonEmpty!49040 condSetEmpty!49046) setIsEmpty!49046))

(assert (= (and setNonEmpty!49040 (not condSetEmpty!49046)) setNonEmpty!49046))

(assert (= setNonEmpty!49046 b!7028106))

(declare-fun m!7732382 () Bool)

(assert (=> setNonEmpty!49046 m!7732382))

(declare-fun b!7028111 () Bool)

(declare-fun e!4224987 () Bool)

(declare-fun tp!1935839 () Bool)

(assert (=> b!7028111 (= e!4224987 (and tp_is_empty!44127 tp!1935839))))

(assert (=> b!7027819 (= tp!1935810 e!4224987)))

(assert (= (and b!7027819 ((_ is Cons!67758) (t!381643 s!7408))) b!7028111))

(declare-fun b!7028116 () Bool)

(declare-fun e!4224990 () Bool)

(declare-fun tp!1935844 () Bool)

(declare-fun tp!1935845 () Bool)

(assert (=> b!7028116 (= e!4224990 (and tp!1935844 tp!1935845))))

(assert (=> b!7027806 (= tp!1935812 e!4224990)))

(assert (= (and b!7027806 ((_ is Cons!67757) (exprs!6947 ct2!306))) b!7028116))

(declare-fun b!7028117 () Bool)

(declare-fun e!4224991 () Bool)

(declare-fun tp!1935846 () Bool)

(declare-fun tp!1935847 () Bool)

(assert (=> b!7028117 (= e!4224991 (and tp!1935846 tp!1935847))))

(assert (=> b!7027812 (= tp!1935813 e!4224991)))

(assert (= (and b!7027812 ((_ is Cons!67757) (exprs!6947 setElem!49040))) b!7028117))

(declare-fun b_lambda!265911 () Bool)

(assert (= b_lambda!265907 (or b!7027824 b_lambda!265911)))

(declare-fun bs!1869380 () Bool)

(declare-fun d!2191605 () Bool)

(assert (= bs!1869380 (and d!2191605 b!7027824)))

(assert (=> bs!1869380 (= (dynLambda!27334 lambda!413590 lt!2515959) (matchZipper!2991 (store ((as const (Array Context!12894 Bool)) false) lt!2515959 true) s!7408))))

(declare-fun m!7732384 () Bool)

(assert (=> bs!1869380 m!7732384))

(assert (=> bs!1869380 m!7732384))

(declare-fun m!7732386 () Bool)

(assert (=> bs!1869380 m!7732386))

(assert (=> d!2191573 d!2191605))

(declare-fun b_lambda!265913 () Bool)

(assert (= b_lambda!265901 (or b!7027814 b_lambda!265913)))

(declare-fun bs!1869381 () Bool)

(declare-fun d!2191607 () Bool)

(assert (= bs!1869381 (and d!2191607 b!7027814)))

(assert (=> bs!1869381 (= (dynLambda!27333 lambda!413593 lt!2515862) (derivationStepZipperUp!2061 lt!2515862 (h!74206 s!7408)))))

(assert (=> bs!1869381 m!7731860))

(assert (=> d!2191549 d!2191607))

(declare-fun b_lambda!265915 () Bool)

(assert (= b_lambda!265903 (or b!7027814 b_lambda!265915)))

(declare-fun bs!1869382 () Bool)

(declare-fun d!2191609 () Bool)

(assert (= bs!1869382 (and d!2191609 b!7027814)))

(assert (=> bs!1869382 (= (dynLambda!27333 lambda!413593 lt!2515855) (derivationStepZipperUp!2061 lt!2515855 (h!74206 s!7408)))))

(assert (=> bs!1869382 m!7731848))

(assert (=> d!2191553 d!2191609))

(declare-fun b_lambda!265917 () Bool)

(assert (= b_lambda!265905 (or b!7027809 b_lambda!265917)))

(declare-fun bs!1869383 () Bool)

(declare-fun d!2191611 () Bool)

(assert (= bs!1869383 (and d!2191611 b!7027809)))

(declare-fun lt!2515968 () Unit!161568)

(assert (=> bs!1869383 (= lt!2515968 (lemmaConcatPreservesForall!772 (exprs!6947 lt!2515855) (exprs!6947 ct2!306) lambda!413592))))

(assert (=> bs!1869383 (= (dynLambda!27332 lambda!413591 lt!2515855) (Context!12895 (++!15484 (exprs!6947 lt!2515855) (exprs!6947 ct2!306))))))

(declare-fun m!7732388 () Bool)

(assert (=> bs!1869383 m!7732388))

(declare-fun m!7732390 () Bool)

(assert (=> bs!1869383 m!7732390))

(assert (=> d!2191565 d!2191611))

(declare-fun b_lambda!265919 () Bool)

(assert (= b_lambda!265885 (or b!7027809 b_lambda!265919)))

(declare-fun bs!1869384 () Bool)

(declare-fun d!2191613 () Bool)

(assert (= bs!1869384 (and d!2191613 b!7027809)))

(declare-fun lt!2515969 () Unit!161568)

(assert (=> bs!1869384 (= lt!2515969 (lemmaConcatPreservesForall!772 (exprs!6947 lt!2515922) (exprs!6947 ct2!306) lambda!413592))))

(assert (=> bs!1869384 (= (dynLambda!27332 lambda!413591 lt!2515922) (Context!12895 (++!15484 (exprs!6947 lt!2515922) (exprs!6947 ct2!306))))))

(declare-fun m!7732392 () Bool)

(assert (=> bs!1869384 m!7732392))

(declare-fun m!7732394 () Bool)

(assert (=> bs!1869384 m!7732394))

(assert (=> d!2191483 d!2191613))

(declare-fun b_lambda!265921 () Bool)

(assert (= b_lambda!265909 (or b!7027814 b_lambda!265921)))

(declare-fun bs!1869385 () Bool)

(declare-fun d!2191615 () Bool)

(assert (= bs!1869385 (and d!2191615 b!7027814)))

(assert (=> bs!1869385 (= (dynLambda!27333 lambda!413593 lt!2515841) (derivationStepZipperUp!2061 lt!2515841 (h!74206 s!7408)))))

(assert (=> bs!1869385 m!7731912))

(assert (=> d!2191595 d!2191615))

(check-sat (not b!7028070) (not b!7028100) (not b!7028022) (not d!2191595) (not d!2191565) (not b_lambda!265911) (not d!2191483) (not b_lambda!265913) (not d!2191509) (not b!7028106) (not d!2191485) (not b!7028021) (not b!7027990) (not bm!638140) (not d!2191521) (not d!2191477) (not b!7028117) (not d!2191533) (not d!2191465) (not b!7028096) (not b!7027991) (not bm!638144) (not d!2191599) (not bm!638138) (not bs!1869381) (not d!2191519) (not d!2191571) (not d!2191583) (not b_lambda!265915) (not d!2191553) (not bs!1869382) (not d!2191547) (not b!7028076) (not d!2191541) (not b!7028093) (not d!2191587) tp_is_empty!44127 (not d!2191549) (not d!2191577) (not d!2191573) (not bs!1869380) (not d!2191579) (not d!2191551) (not d!2191585) (not bm!638125) (not bm!638143) (not b!7027995) (not b!7028092) (not d!2191601) (not b!7028069) (not b!7028116) (not b!7028003) (not b!7028072) (not b!7028090) (not d!2191559) (not d!2191575) (not b!7027914) (not b!7028111) (not b!7028017) (not b!7027915) (not d!2191545) (not b!7028051) (not b_lambda!265917) (not b!7028060) (not d!2191503) (not d!2191567) (not b!7028095) (not b!7028099) (not bs!1869384) (not b!7028088) (not bs!1869385) (not b!7027996) (not b!7028004) (not d!2191593) (not b!7028059) (not bs!1869383) (not b!7028081) (not d!2191581) (not b!7027968) (not b_lambda!265919) (not b!7028089) (not b!7028091) (not bm!638145) (not b_lambda!265921) (not b!7028065) (not d!2191555) (not d!2191589) (not setNonEmpty!49046) (not b!7028018))
(check-sat)
(get-model)

(declare-fun d!2191847 () Bool)

(declare-fun lt!2516008 () Int)

(assert (=> d!2191847 (>= lt!2516008 0)))

(declare-fun e!4225196 () Int)

(assert (=> d!2191847 (= lt!2516008 e!4225196)))

(declare-fun c!1306789 () Bool)

(assert (=> d!2191847 (= c!1306789 ((_ is Nil!67757) lt!2515936))))

(assert (=> d!2191847 (= (size!41046 lt!2515936) lt!2516008)))

(declare-fun b!7028438 () Bool)

(assert (=> b!7028438 (= e!4225196 0)))

(declare-fun b!7028439 () Bool)

(assert (=> b!7028439 (= e!4225196 (+ 1 (size!41046 (t!381642 lt!2515936))))))

(assert (= (and d!2191847 c!1306789) b!7028438))

(assert (= (and d!2191847 (not c!1306789)) b!7028439))

(declare-fun m!7732818 () Bool)

(assert (=> b!7028439 m!7732818))

(assert (=> b!7028022 d!2191847))

(declare-fun d!2191849 () Bool)

(declare-fun lt!2516009 () Int)

(assert (=> d!2191849 (>= lt!2516009 0)))

(declare-fun e!4225197 () Int)

(assert (=> d!2191849 (= lt!2516009 e!4225197)))

(declare-fun c!1306790 () Bool)

(assert (=> d!2191849 (= c!1306790 ((_ is Nil!67757) lt!2515844))))

(assert (=> d!2191849 (= (size!41046 lt!2515844) lt!2516009)))

(declare-fun b!7028440 () Bool)

(assert (=> b!7028440 (= e!4225197 0)))

(declare-fun b!7028441 () Bool)

(assert (=> b!7028441 (= e!4225197 (+ 1 (size!41046 (t!381642 lt!2515844))))))

(assert (= (and d!2191849 c!1306790) b!7028440))

(assert (= (and d!2191849 (not c!1306790)) b!7028441))

(declare-fun m!7732820 () Bool)

(assert (=> b!7028441 m!7732820))

(assert (=> b!7028022 d!2191849))

(declare-fun d!2191851 () Bool)

(declare-fun lt!2516010 () Int)

(assert (=> d!2191851 (>= lt!2516010 0)))

(declare-fun e!4225198 () Int)

(assert (=> d!2191851 (= lt!2516010 e!4225198)))

(declare-fun c!1306791 () Bool)

(assert (=> d!2191851 (= c!1306791 ((_ is Nil!67757) (exprs!6947 ct2!306)))))

(assert (=> d!2191851 (= (size!41046 (exprs!6947 ct2!306)) lt!2516010)))

(declare-fun b!7028442 () Bool)

(assert (=> b!7028442 (= e!4225198 0)))

(declare-fun b!7028443 () Bool)

(assert (=> b!7028443 (= e!4225198 (+ 1 (size!41046 (t!381642 (exprs!6947 ct2!306)))))))

(assert (= (and d!2191851 c!1306791) b!7028442))

(assert (= (and d!2191851 (not c!1306791)) b!7028443))

(declare-fun m!7732822 () Bool)

(assert (=> b!7028443 m!7732822))

(assert (=> b!7028022 d!2191851))

(declare-fun d!2191853 () Bool)

(assert (=> d!2191853 (= (nullable!7162 (h!74205 (exprs!6947 lt!2515862))) (nullableFct!2717 (h!74205 (exprs!6947 lt!2515862))))))

(declare-fun bs!1869539 () Bool)

(assert (= bs!1869539 d!2191853))

(declare-fun m!7732824 () Bool)

(assert (=> bs!1869539 m!7732824))

(assert (=> b!7028018 d!2191853))

(declare-fun d!2191855 () Bool)

(assert (=> d!2191855 (= (isEmpty!39507 (t!381643 s!7408)) ((_ is Nil!67758) (t!381643 s!7408)))))

(assert (=> d!2191551 d!2191855))

(declare-fun d!2191857 () Bool)

(assert (=> d!2191857 (forall!16356 (++!15484 (exprs!6947 lt!2515855) (exprs!6947 ct2!306)) lambda!413592)))

(declare-fun lt!2516011 () Unit!161568)

(assert (=> d!2191857 (= lt!2516011 (choose!53129 (exprs!6947 lt!2515855) (exprs!6947 ct2!306) lambda!413592))))

(assert (=> d!2191857 (forall!16356 (exprs!6947 lt!2515855) lambda!413592)))

(assert (=> d!2191857 (= (lemmaConcatPreservesForall!772 (exprs!6947 lt!2515855) (exprs!6947 ct2!306) lambda!413592) lt!2516011)))

(declare-fun bs!1869540 () Bool)

(assert (= bs!1869540 d!2191857))

(assert (=> bs!1869540 m!7732390))

(assert (=> bs!1869540 m!7732390))

(declare-fun m!7732826 () Bool)

(assert (=> bs!1869540 m!7732826))

(declare-fun m!7732828 () Bool)

(assert (=> bs!1869540 m!7732828))

(declare-fun m!7732830 () Bool)

(assert (=> bs!1869540 m!7732830))

(assert (=> bs!1869383 d!2191857))

(declare-fun b!7028446 () Bool)

(declare-fun res!2869095 () Bool)

(declare-fun e!4225199 () Bool)

(assert (=> b!7028446 (=> (not res!2869095) (not e!4225199))))

(declare-fun lt!2516012 () List!67881)

(assert (=> b!7028446 (= res!2869095 (= (size!41046 lt!2516012) (+ (size!41046 (exprs!6947 lt!2515855)) (size!41046 (exprs!6947 ct2!306)))))))

(declare-fun b!7028445 () Bool)

(declare-fun e!4225200 () List!67881)

(assert (=> b!7028445 (= e!4225200 (Cons!67757 (h!74205 (exprs!6947 lt!2515855)) (++!15484 (t!381642 (exprs!6947 lt!2515855)) (exprs!6947 ct2!306))))))

(declare-fun b!7028444 () Bool)

(assert (=> b!7028444 (= e!4225200 (exprs!6947 ct2!306))))

(declare-fun d!2191859 () Bool)

(assert (=> d!2191859 e!4225199))

(declare-fun res!2869094 () Bool)

(assert (=> d!2191859 (=> (not res!2869094) (not e!4225199))))

(assert (=> d!2191859 (= res!2869094 (= (content!13506 lt!2516012) ((_ map or) (content!13506 (exprs!6947 lt!2515855)) (content!13506 (exprs!6947 ct2!306)))))))

(assert (=> d!2191859 (= lt!2516012 e!4225200)))

(declare-fun c!1306792 () Bool)

(assert (=> d!2191859 (= c!1306792 ((_ is Nil!67757) (exprs!6947 lt!2515855)))))

(assert (=> d!2191859 (= (++!15484 (exprs!6947 lt!2515855) (exprs!6947 ct2!306)) lt!2516012)))

(declare-fun b!7028447 () Bool)

(assert (=> b!7028447 (= e!4225199 (or (not (= (exprs!6947 ct2!306) Nil!67757)) (= lt!2516012 (exprs!6947 lt!2515855))))))

(assert (= (and d!2191859 c!1306792) b!7028444))

(assert (= (and d!2191859 (not c!1306792)) b!7028445))

(assert (= (and d!2191859 res!2869094) b!7028446))

(assert (= (and b!7028446 res!2869095) b!7028447))

(declare-fun m!7732832 () Bool)

(assert (=> b!7028446 m!7732832))

(declare-fun m!7732834 () Bool)

(assert (=> b!7028446 m!7732834))

(assert (=> b!7028446 m!7732068))

(declare-fun m!7732836 () Bool)

(assert (=> b!7028445 m!7732836))

(declare-fun m!7732838 () Bool)

(assert (=> d!2191859 m!7732838))

(declare-fun m!7732840 () Bool)

(assert (=> d!2191859 m!7732840))

(assert (=> d!2191859 m!7732076))

(assert (=> bs!1869383 d!2191859))

(declare-fun d!2191861 () Bool)

(declare-fun c!1306793 () Bool)

(assert (=> d!2191861 (= c!1306793 (isEmpty!39507 s!7408))))

(declare-fun e!4225201 () Bool)

(assert (=> d!2191861 (= (matchZipper!2991 (store ((as const (Array Context!12894 Bool)) false) lt!2515959 true) s!7408) e!4225201)))

(declare-fun b!7028448 () Bool)

(assert (=> b!7028448 (= e!4225201 (nullableZipper!2568 (store ((as const (Array Context!12894 Bool)) false) lt!2515959 true)))))

(declare-fun b!7028449 () Bool)

(assert (=> b!7028449 (= e!4225201 (matchZipper!2991 (derivationStepZipper!2907 (store ((as const (Array Context!12894 Bool)) false) lt!2515959 true) (head!14247 s!7408)) (tail!13528 s!7408)))))

(assert (= (and d!2191861 c!1306793) b!7028448))

(assert (= (and d!2191861 (not c!1306793)) b!7028449))

(assert (=> d!2191861 m!7732320))

(assert (=> b!7028448 m!7732384))

(declare-fun m!7732842 () Bool)

(assert (=> b!7028448 m!7732842))

(assert (=> b!7028449 m!7732324))

(assert (=> b!7028449 m!7732384))

(assert (=> b!7028449 m!7732324))

(declare-fun m!7732844 () Bool)

(assert (=> b!7028449 m!7732844))

(assert (=> b!7028449 m!7732328))

(assert (=> b!7028449 m!7732844))

(assert (=> b!7028449 m!7732328))

(declare-fun m!7732846 () Bool)

(assert (=> b!7028449 m!7732846))

(assert (=> bs!1869380 d!2191861))

(declare-fun d!2191863 () Bool)

(assert (=> d!2191863 (forall!16356 (++!15484 (exprs!6947 lt!2515922) (exprs!6947 ct2!306)) lambda!413592)))

(declare-fun lt!2516013 () Unit!161568)

(assert (=> d!2191863 (= lt!2516013 (choose!53129 (exprs!6947 lt!2515922) (exprs!6947 ct2!306) lambda!413592))))

(assert (=> d!2191863 (forall!16356 (exprs!6947 lt!2515922) lambda!413592)))

(assert (=> d!2191863 (= (lemmaConcatPreservesForall!772 (exprs!6947 lt!2515922) (exprs!6947 ct2!306) lambda!413592) lt!2516013)))

(declare-fun bs!1869541 () Bool)

(assert (= bs!1869541 d!2191863))

(assert (=> bs!1869541 m!7732394))

(assert (=> bs!1869541 m!7732394))

(declare-fun m!7732848 () Bool)

(assert (=> bs!1869541 m!7732848))

(declare-fun m!7732850 () Bool)

(assert (=> bs!1869541 m!7732850))

(declare-fun m!7732852 () Bool)

(assert (=> bs!1869541 m!7732852))

(assert (=> bs!1869384 d!2191863))

(declare-fun b!7028452 () Bool)

(declare-fun res!2869097 () Bool)

(declare-fun e!4225202 () Bool)

(assert (=> b!7028452 (=> (not res!2869097) (not e!4225202))))

(declare-fun lt!2516014 () List!67881)

(assert (=> b!7028452 (= res!2869097 (= (size!41046 lt!2516014) (+ (size!41046 (exprs!6947 lt!2515922)) (size!41046 (exprs!6947 ct2!306)))))))

(declare-fun b!7028451 () Bool)

(declare-fun e!4225203 () List!67881)

(assert (=> b!7028451 (= e!4225203 (Cons!67757 (h!74205 (exprs!6947 lt!2515922)) (++!15484 (t!381642 (exprs!6947 lt!2515922)) (exprs!6947 ct2!306))))))

(declare-fun b!7028450 () Bool)

(assert (=> b!7028450 (= e!4225203 (exprs!6947 ct2!306))))

(declare-fun d!2191865 () Bool)

(assert (=> d!2191865 e!4225202))

(declare-fun res!2869096 () Bool)

(assert (=> d!2191865 (=> (not res!2869096) (not e!4225202))))

(assert (=> d!2191865 (= res!2869096 (= (content!13506 lt!2516014) ((_ map or) (content!13506 (exprs!6947 lt!2515922)) (content!13506 (exprs!6947 ct2!306)))))))

(assert (=> d!2191865 (= lt!2516014 e!4225203)))

(declare-fun c!1306794 () Bool)

(assert (=> d!2191865 (= c!1306794 ((_ is Nil!67757) (exprs!6947 lt!2515922)))))

(assert (=> d!2191865 (= (++!15484 (exprs!6947 lt!2515922) (exprs!6947 ct2!306)) lt!2516014)))

(declare-fun b!7028453 () Bool)

(assert (=> b!7028453 (= e!4225202 (or (not (= (exprs!6947 ct2!306) Nil!67757)) (= lt!2516014 (exprs!6947 lt!2515922))))))

(assert (= (and d!2191865 c!1306794) b!7028450))

(assert (= (and d!2191865 (not c!1306794)) b!7028451))

(assert (= (and d!2191865 res!2869096) b!7028452))

(assert (= (and b!7028452 res!2869097) b!7028453))

(declare-fun m!7732854 () Bool)

(assert (=> b!7028452 m!7732854))

(declare-fun m!7732856 () Bool)

(assert (=> b!7028452 m!7732856))

(assert (=> b!7028452 m!7732068))

(declare-fun m!7732858 () Bool)

(assert (=> b!7028451 m!7732858))

(declare-fun m!7732860 () Bool)

(assert (=> d!2191865 m!7732860))

(declare-fun m!7732862 () Bool)

(assert (=> d!2191865 m!7732862))

(assert (=> d!2191865 m!7732076))

(assert (=> bs!1869384 d!2191865))

(declare-fun d!2191867 () Bool)

(declare-fun res!2869102 () Bool)

(declare-fun e!4225208 () Bool)

(assert (=> d!2191867 (=> res!2869102 e!4225208)))

(assert (=> d!2191867 (= res!2869102 ((_ is Nil!67757) (++!15484 (exprs!6947 lt!2515860) (exprs!6947 ct2!306))))))

(assert (=> d!2191867 (= (forall!16356 (++!15484 (exprs!6947 lt!2515860) (exprs!6947 ct2!306)) lambda!413592) e!4225208)))

(declare-fun b!7028458 () Bool)

(declare-fun e!4225209 () Bool)

(assert (=> b!7028458 (= e!4225208 e!4225209)))

(declare-fun res!2869103 () Bool)

(assert (=> b!7028458 (=> (not res!2869103) (not e!4225209))))

(declare-fun dynLambda!27337 (Int Regex!17451) Bool)

(assert (=> b!7028458 (= res!2869103 (dynLambda!27337 lambda!413592 (h!74205 (++!15484 (exprs!6947 lt!2515860) (exprs!6947 ct2!306)))))))

(declare-fun b!7028459 () Bool)

(assert (=> b!7028459 (= e!4225209 (forall!16356 (t!381642 (++!15484 (exprs!6947 lt!2515860) (exprs!6947 ct2!306))) lambda!413592))))

(assert (= (and d!2191867 (not res!2869102)) b!7028458))

(assert (= (and b!7028458 res!2869103) b!7028459))

(declare-fun b_lambda!265981 () Bool)

(assert (=> (not b_lambda!265981) (not b!7028458)))

(declare-fun m!7732864 () Bool)

(assert (=> b!7028458 m!7732864))

(declare-fun m!7732866 () Bool)

(assert (=> b!7028459 m!7732866))

(assert (=> d!2191477 d!2191867))

(assert (=> d!2191477 d!2191465))

(declare-fun d!2191869 () Bool)

(assert (=> d!2191869 (forall!16356 (++!15484 (exprs!6947 lt!2515860) (exprs!6947 ct2!306)) lambda!413592)))

(assert (=> d!2191869 true))

(declare-fun _$78!569 () Unit!161568)

(assert (=> d!2191869 (= (choose!53129 (exprs!6947 lt!2515860) (exprs!6947 ct2!306) lambda!413592) _$78!569)))

(declare-fun bs!1869542 () Bool)

(assert (= bs!1869542 d!2191869))

(assert (=> bs!1869542 m!7731928))

(assert (=> bs!1869542 m!7731928))

(assert (=> bs!1869542 m!7732098))

(assert (=> d!2191477 d!2191869))

(declare-fun d!2191871 () Bool)

(declare-fun res!2869104 () Bool)

(declare-fun e!4225210 () Bool)

(assert (=> d!2191871 (=> res!2869104 e!4225210)))

(assert (=> d!2191871 (= res!2869104 ((_ is Nil!67757) (exprs!6947 lt!2515860)))))

(assert (=> d!2191871 (= (forall!16356 (exprs!6947 lt!2515860) lambda!413592) e!4225210)))

(declare-fun b!7028460 () Bool)

(declare-fun e!4225211 () Bool)

(assert (=> b!7028460 (= e!4225210 e!4225211)))

(declare-fun res!2869105 () Bool)

(assert (=> b!7028460 (=> (not res!2869105) (not e!4225211))))

(assert (=> b!7028460 (= res!2869105 (dynLambda!27337 lambda!413592 (h!74205 (exprs!6947 lt!2515860))))))

(declare-fun b!7028461 () Bool)

(assert (=> b!7028461 (= e!4225211 (forall!16356 (t!381642 (exprs!6947 lt!2515860)) lambda!413592))))

(assert (= (and d!2191871 (not res!2869104)) b!7028460))

(assert (= (and b!7028460 res!2869105) b!7028461))

(declare-fun b_lambda!265983 () Bool)

(assert (=> (not b_lambda!265983) (not b!7028460)))

(declare-fun m!7732868 () Bool)

(assert (=> b!7028460 m!7732868))

(declare-fun m!7732870 () Bool)

(assert (=> b!7028461 m!7732870))

(assert (=> d!2191477 d!2191871))

(declare-fun d!2191873 () Bool)

(declare-fun c!1306795 () Bool)

(assert (=> d!2191873 (= c!1306795 (isEmpty!39507 (tail!13528 (t!381643 s!7408))))))

(declare-fun e!4225212 () Bool)

(assert (=> d!2191873 (= (matchZipper!2991 (derivationStepZipper!2907 lt!2515848 (head!14247 (t!381643 s!7408))) (tail!13528 (t!381643 s!7408))) e!4225212)))

(declare-fun b!7028462 () Bool)

(assert (=> b!7028462 (= e!4225212 (nullableZipper!2568 (derivationStepZipper!2907 lt!2515848 (head!14247 (t!381643 s!7408)))))))

(declare-fun b!7028463 () Bool)

(assert (=> b!7028463 (= e!4225212 (matchZipper!2991 (derivationStepZipper!2907 (derivationStepZipper!2907 lt!2515848 (head!14247 (t!381643 s!7408))) (head!14247 (tail!13528 (t!381643 s!7408)))) (tail!13528 (tail!13528 (t!381643 s!7408)))))))

(assert (= (and d!2191873 c!1306795) b!7028462))

(assert (= (and d!2191873 (not c!1306795)) b!7028463))

(assert (=> d!2191873 m!7732198))

(declare-fun m!7732872 () Bool)

(assert (=> d!2191873 m!7732872))

(assert (=> b!7028462 m!7732264))

(declare-fun m!7732874 () Bool)

(assert (=> b!7028462 m!7732874))

(assert (=> b!7028463 m!7732198))

(declare-fun m!7732876 () Bool)

(assert (=> b!7028463 m!7732876))

(assert (=> b!7028463 m!7732264))

(assert (=> b!7028463 m!7732876))

(declare-fun m!7732878 () Bool)

(assert (=> b!7028463 m!7732878))

(assert (=> b!7028463 m!7732198))

(declare-fun m!7732880 () Bool)

(assert (=> b!7028463 m!7732880))

(assert (=> b!7028463 m!7732878))

(assert (=> b!7028463 m!7732880))

(declare-fun m!7732882 () Bool)

(assert (=> b!7028463 m!7732882))

(assert (=> b!7028060 d!2191873))

(declare-fun bs!1869543 () Bool)

(declare-fun d!2191875 () Bool)

(assert (= bs!1869543 (and d!2191875 b!7027814)))

(declare-fun lambda!413653 () Int)

(assert (=> bs!1869543 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413653 lambda!413593))))

(declare-fun bs!1869544 () Bool)

(assert (= bs!1869544 (and d!2191875 d!2191545)))

(assert (=> bs!1869544 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413653 lambda!413615))))

(declare-fun bs!1869545 () Bool)

(assert (= bs!1869545 (and d!2191875 d!2191601)))

(assert (=> bs!1869545 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413653 lambda!413631))))

(assert (=> d!2191875 true))

(assert (=> d!2191875 (= (derivationStepZipper!2907 lt!2515848 (head!14247 (t!381643 s!7408))) (flatMap!2398 lt!2515848 lambda!413653))))

(declare-fun bs!1869546 () Bool)

(assert (= bs!1869546 d!2191875))

(declare-fun m!7732884 () Bool)

(assert (=> bs!1869546 m!7732884))

(assert (=> b!7028060 d!2191875))

(declare-fun d!2191877 () Bool)

(assert (=> d!2191877 (= (head!14247 (t!381643 s!7408)) (h!74206 (t!381643 s!7408)))))

(assert (=> b!7028060 d!2191877))

(declare-fun d!2191879 () Bool)

(assert (=> d!2191879 (= (tail!13528 (t!381643 s!7408)) (t!381643 (t!381643 s!7408)))))

(assert (=> b!7028060 d!2191879))

(declare-fun d!2191881 () Bool)

(assert (=> d!2191881 (= (isEmpty!39507 s!7408) ((_ is Nil!67758) s!7408))))

(assert (=> d!2191577 d!2191881))

(assert (=> d!2191593 d!2191881))

(assert (=> d!2191519 d!2191855))

(declare-fun d!2191883 () Bool)

(assert (=> d!2191883 true))

(declare-fun setRes!49058 () Bool)

(assert (=> d!2191883 setRes!49058))

(declare-fun condSetEmpty!49058 () Bool)

(declare-fun res!2869108 () (InoxSet Context!12894))

(assert (=> d!2191883 (= condSetEmpty!49058 (= res!2869108 ((as const (Array Context!12894 Bool)) false)))))

(assert (=> d!2191883 (= (choose!53132 lt!2515867 lambda!413593) res!2869108)))

(declare-fun setIsEmpty!49058 () Bool)

(assert (=> setIsEmpty!49058 setRes!49058))

(declare-fun tp!1935908 () Bool)

(declare-fun e!4225215 () Bool)

(declare-fun setNonEmpty!49058 () Bool)

(declare-fun setElem!49058 () Context!12894)

(assert (=> setNonEmpty!49058 (= setRes!49058 (and tp!1935908 (inv!86486 setElem!49058) e!4225215))))

(declare-fun setRest!49058 () (InoxSet Context!12894))

(assert (=> setNonEmpty!49058 (= res!2869108 ((_ map or) (store ((as const (Array Context!12894 Bool)) false) setElem!49058 true) setRest!49058))))

(declare-fun b!7028466 () Bool)

(declare-fun tp!1935909 () Bool)

(assert (=> b!7028466 (= e!4225215 tp!1935909)))

(assert (= (and d!2191883 condSetEmpty!49058) setIsEmpty!49058))

(assert (= (and d!2191883 (not condSetEmpty!49058)) setNonEmpty!49058))

(assert (= setNonEmpty!49058 b!7028466))

(declare-fun m!7732886 () Bool)

(assert (=> setNonEmpty!49058 m!7732886))

(assert (=> d!2191555 d!2191883))

(declare-fun bs!1869547 () Bool)

(declare-fun d!2191885 () Bool)

(assert (= bs!1869547 (and d!2191885 b!7027824)))

(declare-fun lambda!413656 () Int)

(assert (=> bs!1869547 (not (= lambda!413656 lambda!413590))))

(declare-fun bs!1869548 () Bool)

(assert (= bs!1869548 (and d!2191885 d!2191575)))

(assert (=> bs!1869548 (not (= lambda!413656 lambda!413618))))

(declare-fun bs!1869549 () Bool)

(assert (= bs!1869549 (and d!2191885 d!2191581)))

(assert (=> bs!1869549 (not (= lambda!413656 lambda!413621))))

(assert (=> d!2191885 (= (nullableZipper!2568 lt!2515849) (exists!3367 lt!2515849 lambda!413656))))

(declare-fun bs!1869550 () Bool)

(assert (= bs!1869550 d!2191885))

(declare-fun m!7732888 () Bool)

(assert (=> bs!1869550 m!7732888))

(assert (=> b!7028091 d!2191885))

(assert (=> d!2191509 d!2191855))

(declare-fun d!2191887 () Bool)

(assert (=> d!2191887 (= ($colon$colon!2563 (exprs!6947 lt!2515862) (ite (or c!1306659 c!1306663) (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (h!74205 (exprs!6947 lt!2515860)))) (Cons!67757 (ite (or c!1306659 c!1306663) (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (h!74205 (exprs!6947 lt!2515860))) (exprs!6947 lt!2515862)))))

(assert (=> bm!638143 d!2191887))

(declare-fun d!2191889 () Bool)

(declare-fun c!1306798 () Bool)

(assert (=> d!2191889 (= c!1306798 (isEmpty!39507 (t!381643 s!7408)))))

(declare-fun e!4225216 () Bool)

(assert (=> d!2191889 (= (matchZipper!2991 ((_ map or) lt!2515859 lt!2515848) (t!381643 s!7408)) e!4225216)))

(declare-fun b!7028467 () Bool)

(assert (=> b!7028467 (= e!4225216 (nullableZipper!2568 ((_ map or) lt!2515859 lt!2515848)))))

(declare-fun b!7028468 () Bool)

(assert (=> b!7028468 (= e!4225216 (matchZipper!2991 (derivationStepZipper!2907 ((_ map or) lt!2515859 lt!2515848) (head!14247 (t!381643 s!7408))) (tail!13528 (t!381643 s!7408))))))

(assert (= (and d!2191889 c!1306798) b!7028467))

(assert (= (and d!2191889 (not c!1306798)) b!7028468))

(assert (=> d!2191889 m!7732190))

(declare-fun m!7732890 () Bool)

(assert (=> b!7028467 m!7732890))

(assert (=> b!7028468 m!7732194))

(assert (=> b!7028468 m!7732194))

(declare-fun m!7732892 () Bool)

(assert (=> b!7028468 m!7732892))

(assert (=> b!7028468 m!7732198))

(assert (=> b!7028468 m!7732892))

(assert (=> b!7028468 m!7732198))

(declare-fun m!7732894 () Bool)

(assert (=> b!7028468 m!7732894))

(assert (=> d!2191485 d!2191889))

(assert (=> d!2191485 d!2191519))

(declare-fun e!4225219 () Bool)

(declare-fun d!2191891 () Bool)

(assert (=> d!2191891 (= (matchZipper!2991 ((_ map or) lt!2515859 lt!2515848) (t!381643 s!7408)) e!4225219)))

(declare-fun res!2869111 () Bool)

(assert (=> d!2191891 (=> res!2869111 e!4225219)))

(assert (=> d!2191891 (= res!2869111 (matchZipper!2991 lt!2515859 (t!381643 s!7408)))))

(assert (=> d!2191891 true))

(declare-fun _$48!2476 () Unit!161568)

(assert (=> d!2191891 (= (choose!53131 lt!2515859 lt!2515848 (t!381643 s!7408)) _$48!2476)))

(declare-fun b!7028471 () Bool)

(assert (=> b!7028471 (= e!4225219 (matchZipper!2991 lt!2515848 (t!381643 s!7408)))))

(assert (= (and d!2191891 (not res!2869111)) b!7028471))

(assert (=> d!2191891 m!7732150))

(assert (=> d!2191891 m!7731868))

(assert (=> b!7028471 m!7731884))

(assert (=> d!2191485 d!2191891))

(declare-fun b!7028472 () Bool)

(declare-fun e!4225223 () (InoxSet Context!12894))

(assert (=> b!7028472 (= e!4225223 (store ((as const (Array Context!12894 Bool)) false) (Context!12895 (t!381642 (exprs!6947 lt!2515862))) true))))

(declare-fun b!7028473 () Bool)

(declare-fun e!4225224 () (InoxSet Context!12894))

(declare-fun call!638203 () (InoxSet Context!12894))

(declare-fun call!638204 () (InoxSet Context!12894))

(assert (=> b!7028473 (= e!4225224 ((_ map or) call!638203 call!638204))))

(declare-fun b!7028474 () Bool)

(declare-fun e!4225225 () (InoxSet Context!12894))

(assert (=> b!7028474 (= e!4225223 e!4225225)))

(declare-fun c!1306800 () Bool)

(assert (=> b!7028474 (= c!1306800 ((_ is Union!17451) (h!74205 (exprs!6947 lt!2515862))))))

(declare-fun b!7028475 () Bool)

(declare-fun e!4225221 () (InoxSet Context!12894))

(assert (=> b!7028475 (= e!4225221 ((as const (Array Context!12894 Bool)) false))))

(declare-fun c!1306799 () Bool)

(declare-fun c!1306803 () Bool)

(declare-fun bm!638197 () Bool)

(declare-fun call!638205 () List!67881)

(declare-fun call!638207 () (InoxSet Context!12894))

(assert (=> bm!638197 (= call!638207 (derivationStepZipperDown!2115 (ite c!1306800 (regOne!35415 (h!74205 (exprs!6947 lt!2515862))) (ite c!1306799 (regTwo!35414 (h!74205 (exprs!6947 lt!2515862))) (ite c!1306803 (regOne!35414 (h!74205 (exprs!6947 lt!2515862))) (reg!17780 (h!74205 (exprs!6947 lt!2515862)))))) (ite (or c!1306800 c!1306799) (Context!12895 (t!381642 (exprs!6947 lt!2515862))) (Context!12895 call!638205)) (h!74206 s!7408)))))

(declare-fun b!7028476 () Bool)

(declare-fun e!4225222 () (InoxSet Context!12894))

(assert (=> b!7028476 (= e!4225224 e!4225222)))

(assert (=> b!7028476 (= c!1306803 ((_ is Concat!26296) (h!74205 (exprs!6947 lt!2515862))))))

(declare-fun b!7028477 () Bool)

(declare-fun e!4225220 () Bool)

(assert (=> b!7028477 (= e!4225220 (nullable!7162 (regOne!35414 (h!74205 (exprs!6947 lt!2515862)))))))

(declare-fun bm!638198 () Bool)

(declare-fun call!638202 () List!67881)

(assert (=> bm!638198 (= call!638205 call!638202)))

(declare-fun bm!638199 () Bool)

(assert (=> bm!638199 (= call!638203 (derivationStepZipperDown!2115 (ite c!1306800 (regTwo!35415 (h!74205 (exprs!6947 lt!2515862))) (regOne!35414 (h!74205 (exprs!6947 lt!2515862)))) (ite c!1306800 (Context!12895 (t!381642 (exprs!6947 lt!2515862))) (Context!12895 call!638202)) (h!74206 s!7408)))))

(declare-fun bm!638200 () Bool)

(assert (=> bm!638200 (= call!638204 call!638207)))

(declare-fun b!7028478 () Bool)

(declare-fun call!638206 () (InoxSet Context!12894))

(assert (=> b!7028478 (= e!4225222 call!638206)))

(declare-fun b!7028479 () Bool)

(assert (=> b!7028479 (= e!4225225 ((_ map or) call!638207 call!638203))))

(declare-fun d!2191893 () Bool)

(declare-fun c!1306801 () Bool)

(assert (=> d!2191893 (= c!1306801 (and ((_ is ElementMatch!17451) (h!74205 (exprs!6947 lt!2515862))) (= (c!1306580 (h!74205 (exprs!6947 lt!2515862))) (h!74206 s!7408))))))

(assert (=> d!2191893 (= (derivationStepZipperDown!2115 (h!74205 (exprs!6947 lt!2515862)) (Context!12895 (t!381642 (exprs!6947 lt!2515862))) (h!74206 s!7408)) e!4225223)))

(declare-fun bm!638201 () Bool)

(assert (=> bm!638201 (= call!638206 call!638204)))

(declare-fun b!7028480 () Bool)

(assert (=> b!7028480 (= e!4225221 call!638206)))

(declare-fun b!7028481 () Bool)

(declare-fun c!1306802 () Bool)

(assert (=> b!7028481 (= c!1306802 ((_ is Star!17451) (h!74205 (exprs!6947 lt!2515862))))))

(assert (=> b!7028481 (= e!4225222 e!4225221)))

(declare-fun bm!638202 () Bool)

(assert (=> bm!638202 (= call!638202 ($colon$colon!2563 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515862)))) (ite (or c!1306799 c!1306803) (regTwo!35414 (h!74205 (exprs!6947 lt!2515862))) (h!74205 (exprs!6947 lt!2515862)))))))

(declare-fun b!7028482 () Bool)

(assert (=> b!7028482 (= c!1306799 e!4225220)))

(declare-fun res!2869112 () Bool)

(assert (=> b!7028482 (=> (not res!2869112) (not e!4225220))))

(assert (=> b!7028482 (= res!2869112 ((_ is Concat!26296) (h!74205 (exprs!6947 lt!2515862))))))

(assert (=> b!7028482 (= e!4225225 e!4225224)))

(assert (= (and d!2191893 c!1306801) b!7028472))

(assert (= (and d!2191893 (not c!1306801)) b!7028474))

(assert (= (and b!7028474 c!1306800) b!7028479))

(assert (= (and b!7028474 (not c!1306800)) b!7028482))

(assert (= (and b!7028482 res!2869112) b!7028477))

(assert (= (and b!7028482 c!1306799) b!7028473))

(assert (= (and b!7028482 (not c!1306799)) b!7028476))

(assert (= (and b!7028476 c!1306803) b!7028478))

(assert (= (and b!7028476 (not c!1306803)) b!7028481))

(assert (= (and b!7028481 c!1306802) b!7028480))

(assert (= (and b!7028481 (not c!1306802)) b!7028475))

(assert (= (or b!7028478 b!7028480) bm!638198))

(assert (= (or b!7028478 b!7028480) bm!638201))

(assert (= (or b!7028473 bm!638201) bm!638200))

(assert (= (or b!7028473 bm!638198) bm!638202))

(assert (= (or b!7028479 bm!638200) bm!638197))

(assert (= (or b!7028479 b!7028473) bm!638199))

(declare-fun m!7732896 () Bool)

(assert (=> bm!638199 m!7732896))

(declare-fun m!7732898 () Bool)

(assert (=> b!7028472 m!7732898))

(declare-fun m!7732900 () Bool)

(assert (=> bm!638202 m!7732900))

(declare-fun m!7732902 () Bool)

(assert (=> b!7028477 m!7732902))

(declare-fun m!7732904 () Bool)

(assert (=> bm!638197 m!7732904))

(assert (=> bm!638125 d!2191893))

(declare-fun c!1306812 () Bool)

(declare-fun bm!638209 () Bool)

(declare-fun c!1306813 () Bool)

(declare-fun call!638215 () Int)

(assert (=> bm!638209 (= call!638215 (regexDepthTotal!292 (ite c!1306812 (reg!17780 (h!74205 (exprs!6947 lt!2515855))) (ite c!1306813 (regOne!35415 (h!74205 (exprs!6947 lt!2515855))) (regTwo!35414 (h!74205 (exprs!6947 lt!2515855)))))))))

(declare-fun b!7028499 () Bool)

(declare-fun e!4225237 () Int)

(assert (=> b!7028499 (= e!4225237 (+ 1 call!638215))))

(declare-fun b!7028500 () Bool)

(declare-fun e!4225236 () Int)

(declare-fun e!4225235 () Int)

(assert (=> b!7028500 (= e!4225236 e!4225235)))

(declare-fun c!1306814 () Bool)

(assert (=> b!7028500 (= c!1306814 ((_ is Concat!26296) (h!74205 (exprs!6947 lt!2515855))))))

(declare-fun bm!638210 () Bool)

(declare-fun call!638216 () Int)

(assert (=> bm!638210 (= call!638216 call!638215)))

(declare-fun bm!638211 () Bool)

(declare-fun call!638214 () Int)

(assert (=> bm!638211 (= call!638214 (regexDepthTotal!292 (ite c!1306813 (regTwo!35415 (h!74205 (exprs!6947 lt!2515855))) (regOne!35414 (h!74205 (exprs!6947 lt!2515855))))))))

(declare-fun b!7028501 () Bool)

(assert (=> b!7028501 (= e!4225235 1)))

(declare-fun b!7028503 () Bool)

(assert (=> b!7028503 (= e!4225236 (+ 1 call!638216 call!638214))))

(declare-fun b!7028504 () Bool)

(assert (=> b!7028504 (= c!1306813 ((_ is Union!17451) (h!74205 (exprs!6947 lt!2515855))))))

(assert (=> b!7028504 (= e!4225237 e!4225236)))

(declare-fun b!7028502 () Bool)

(declare-fun e!4225234 () Int)

(assert (=> b!7028502 (= e!4225234 1)))

(declare-fun d!2191895 () Bool)

(declare-fun lt!2516017 () Int)

(assert (=> d!2191895 (> lt!2516017 0)))

(assert (=> d!2191895 (= lt!2516017 e!4225234)))

(declare-fun c!1306815 () Bool)

(assert (=> d!2191895 (= c!1306815 ((_ is ElementMatch!17451) (h!74205 (exprs!6947 lt!2515855))))))

(assert (=> d!2191895 (= (regexDepthTotal!292 (h!74205 (exprs!6947 lt!2515855))) lt!2516017)))

(declare-fun b!7028505 () Bool)

(assert (=> b!7028505 (= e!4225235 (+ 1 call!638214 call!638216))))

(declare-fun b!7028506 () Bool)

(assert (=> b!7028506 (= e!4225234 e!4225237)))

(assert (=> b!7028506 (= c!1306812 ((_ is Star!17451) (h!74205 (exprs!6947 lt!2515855))))))

(assert (= (and d!2191895 c!1306815) b!7028502))

(assert (= (and d!2191895 (not c!1306815)) b!7028506))

(assert (= (and b!7028506 c!1306812) b!7028499))

(assert (= (and b!7028506 (not c!1306812)) b!7028504))

(assert (= (and b!7028504 c!1306813) b!7028503))

(assert (= (and b!7028504 (not c!1306813)) b!7028500))

(assert (= (and b!7028500 c!1306814) b!7028505))

(assert (= (and b!7028500 (not c!1306814)) b!7028501))

(assert (= (or b!7028503 b!7028505) bm!638211))

(assert (= (or b!7028503 b!7028505) bm!638210))

(assert (= (or b!7028499 bm!638210) bm!638209))

(declare-fun m!7732906 () Bool)

(assert (=> bm!638209 m!7732906))

(declare-fun m!7732908 () Bool)

(assert (=> bm!638211 m!7732908))

(assert (=> b!7028065 d!2191895))

(declare-fun d!2191897 () Bool)

(declare-fun lt!2516018 () Int)

(assert (=> d!2191897 (>= lt!2516018 0)))

(declare-fun e!4225238 () Int)

(assert (=> d!2191897 (= lt!2516018 e!4225238)))

(declare-fun c!1306816 () Bool)

(assert (=> d!2191897 (= c!1306816 ((_ is Cons!67757) (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515855))))))))

(assert (=> d!2191897 (= (contextDepthTotal!486 (Context!12895 (t!381642 (exprs!6947 lt!2515855)))) lt!2516018)))

(declare-fun b!7028507 () Bool)

(assert (=> b!7028507 (= e!4225238 (+ (regexDepthTotal!292 (h!74205 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515855)))))) (contextDepthTotal!486 (Context!12895 (t!381642 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515855)))))))))))

(declare-fun b!7028508 () Bool)

(assert (=> b!7028508 (= e!4225238 1)))

(assert (= (and d!2191897 c!1306816) b!7028507))

(assert (= (and d!2191897 (not c!1306816)) b!7028508))

(declare-fun m!7732910 () Bool)

(assert (=> b!7028507 m!7732910))

(declare-fun m!7732912 () Bool)

(assert (=> b!7028507 m!7732912))

(assert (=> b!7028065 d!2191897))

(declare-fun d!2191899 () Bool)

(declare-fun lt!2516019 () Int)

(assert (=> d!2191899 (>= lt!2516019 0)))

(declare-fun e!4225239 () Int)

(assert (=> d!2191899 (= lt!2516019 e!4225239)))

(declare-fun c!1306817 () Bool)

(assert (=> d!2191899 (= c!1306817 ((_ is Cons!67757) (exprs!6947 (h!74207 lt!2515838))))))

(assert (=> d!2191899 (= (contextDepthTotal!486 (h!74207 lt!2515838)) lt!2516019)))

(declare-fun b!7028509 () Bool)

(assert (=> b!7028509 (= e!4225239 (+ (regexDepthTotal!292 (h!74205 (exprs!6947 (h!74207 lt!2515838)))) (contextDepthTotal!486 (Context!12895 (t!381642 (exprs!6947 (h!74207 lt!2515838)))))))))

(declare-fun b!7028510 () Bool)

(assert (=> b!7028510 (= e!4225239 1)))

(assert (= (and d!2191899 c!1306817) b!7028509))

(assert (= (and d!2191899 (not c!1306817)) b!7028510))

(declare-fun m!7732914 () Bool)

(assert (=> b!7028509 m!7732914))

(declare-fun m!7732916 () Bool)

(assert (=> b!7028509 m!7732916))

(assert (=> b!7028081 d!2191899))

(declare-fun d!2191901 () Bool)

(declare-fun lt!2516020 () Int)

(assert (=> d!2191901 (>= lt!2516020 0)))

(declare-fun e!4225240 () Int)

(assert (=> d!2191901 (= lt!2516020 e!4225240)))

(declare-fun c!1306818 () Bool)

(assert (=> d!2191901 (= c!1306818 ((_ is Cons!67759) (t!381644 lt!2515838)))))

(assert (=> d!2191901 (= (zipperDepthTotal!514 (t!381644 lt!2515838)) lt!2516020)))

(declare-fun b!7028511 () Bool)

(assert (=> b!7028511 (= e!4225240 (+ (contextDepthTotal!486 (h!74207 (t!381644 lt!2515838))) (zipperDepthTotal!514 (t!381644 (t!381644 lt!2515838)))))))

(declare-fun b!7028512 () Bool)

(assert (=> b!7028512 (= e!4225240 0)))

(assert (= (and d!2191901 c!1306818) b!7028511))

(assert (= (and d!2191901 (not c!1306818)) b!7028512))

(declare-fun m!7732918 () Bool)

(assert (=> b!7028511 m!7732918))

(declare-fun m!7732920 () Bool)

(assert (=> b!7028511 m!7732920))

(assert (=> b!7028081 d!2191901))

(declare-fun bs!1869551 () Bool)

(declare-fun d!2191903 () Bool)

(assert (= bs!1869551 (and d!2191903 b!7027824)))

(declare-fun lambda!413657 () Int)

(assert (=> bs!1869551 (not (= lambda!413657 lambda!413590))))

(declare-fun bs!1869552 () Bool)

(assert (= bs!1869552 (and d!2191903 d!2191575)))

(assert (=> bs!1869552 (not (= lambda!413657 lambda!413618))))

(declare-fun bs!1869553 () Bool)

(assert (= bs!1869553 (and d!2191903 d!2191581)))

(assert (=> bs!1869553 (not (= lambda!413657 lambda!413621))))

(declare-fun bs!1869554 () Bool)

(assert (= bs!1869554 (and d!2191903 d!2191885)))

(assert (=> bs!1869554 (= lambda!413657 lambda!413656)))

(assert (=> d!2191903 (= (nullableZipper!2568 lt!2515847) (exists!3367 lt!2515847 lambda!413657))))

(declare-fun bs!1869555 () Bool)

(assert (= bs!1869555 d!2191903))

(declare-fun m!7732922 () Bool)

(assert (=> bs!1869555 m!7732922))

(assert (=> b!7027990 d!2191903))

(declare-fun d!2191905 () Bool)

(assert (=> d!2191905 (= (map!15744 z1!570 lambda!413626) (choose!53134 z1!570 lambda!413626))))

(declare-fun bs!1869556 () Bool)

(assert (= bs!1869556 d!2191905))

(declare-fun m!7732924 () Bool)

(assert (=> bs!1869556 m!7732924))

(assert (=> d!2191585 d!2191905))

(declare-fun d!2191907 () Bool)

(assert (=> d!2191907 true))

(declare-fun setRes!49061 () Bool)

(assert (=> d!2191907 setRes!49061))

(declare-fun condSetEmpty!49061 () Bool)

(declare-fun res!2869115 () (InoxSet Context!12894))

(assert (=> d!2191907 (= condSetEmpty!49061 (= res!2869115 ((as const (Array Context!12894 Bool)) false)))))

(assert (=> d!2191907 (= (choose!53134 lt!2515867 lambda!413591) res!2869115)))

(declare-fun setIsEmpty!49061 () Bool)

(assert (=> setIsEmpty!49061 setRes!49061))

(declare-fun setElem!49061 () Context!12894)

(declare-fun setNonEmpty!49061 () Bool)

(declare-fun e!4225243 () Bool)

(declare-fun tp!1935915 () Bool)

(assert (=> setNonEmpty!49061 (= setRes!49061 (and tp!1935915 (inv!86486 setElem!49061) e!4225243))))

(declare-fun setRest!49061 () (InoxSet Context!12894))

(assert (=> setNonEmpty!49061 (= res!2869115 ((_ map or) (store ((as const (Array Context!12894 Bool)) false) setElem!49061 true) setRest!49061))))

(declare-fun b!7028515 () Bool)

(declare-fun tp!1935914 () Bool)

(assert (=> b!7028515 (= e!4225243 tp!1935914)))

(assert (= (and d!2191907 condSetEmpty!49061) setIsEmpty!49061))

(assert (= (and d!2191907 (not condSetEmpty!49061)) setNonEmpty!49061))

(assert (= setNonEmpty!49061 b!7028515))

(declare-fun m!7732926 () Bool)

(assert (=> setNonEmpty!49061 m!7732926))

(assert (=> d!2191559 d!2191907))

(assert (=> bs!1869381 d!2191539))

(declare-fun b!7028518 () Bool)

(declare-fun res!2869117 () Bool)

(declare-fun e!4225244 () Bool)

(assert (=> b!7028518 (=> (not res!2869117) (not e!4225244))))

(declare-fun lt!2516021 () List!67881)

(assert (=> b!7028518 (= res!2869117 (= (size!41046 lt!2516021) (+ (size!41046 (t!381642 (exprs!6947 lt!2515860))) (size!41046 (exprs!6947 ct2!306)))))))

(declare-fun b!7028517 () Bool)

(declare-fun e!4225245 () List!67881)

(assert (=> b!7028517 (= e!4225245 (Cons!67757 (h!74205 (t!381642 (exprs!6947 lt!2515860))) (++!15484 (t!381642 (t!381642 (exprs!6947 lt!2515860))) (exprs!6947 ct2!306))))))

(declare-fun b!7028516 () Bool)

(assert (=> b!7028516 (= e!4225245 (exprs!6947 ct2!306))))

(declare-fun d!2191909 () Bool)

(assert (=> d!2191909 e!4225244))

(declare-fun res!2869116 () Bool)

(assert (=> d!2191909 (=> (not res!2869116) (not e!4225244))))

(assert (=> d!2191909 (= res!2869116 (= (content!13506 lt!2516021) ((_ map or) (content!13506 (t!381642 (exprs!6947 lt!2515860))) (content!13506 (exprs!6947 ct2!306)))))))

(assert (=> d!2191909 (= lt!2516021 e!4225245)))

(declare-fun c!1306819 () Bool)

(assert (=> d!2191909 (= c!1306819 ((_ is Nil!67757) (t!381642 (exprs!6947 lt!2515860))))))

(assert (=> d!2191909 (= (++!15484 (t!381642 (exprs!6947 lt!2515860)) (exprs!6947 ct2!306)) lt!2516021)))

(declare-fun b!7028519 () Bool)

(assert (=> b!7028519 (= e!4225244 (or (not (= (exprs!6947 ct2!306) Nil!67757)) (= lt!2516021 (t!381642 (exprs!6947 lt!2515860)))))))

(assert (= (and d!2191909 c!1306819) b!7028516))

(assert (= (and d!2191909 (not c!1306819)) b!7028517))

(assert (= (and d!2191909 res!2869116) b!7028518))

(assert (= (and b!7028518 res!2869117) b!7028519))

(declare-fun m!7732928 () Bool)

(assert (=> b!7028518 m!7732928))

(declare-fun m!7732930 () Bool)

(assert (=> b!7028518 m!7732930))

(assert (=> b!7028518 m!7732068))

(declare-fun m!7732932 () Bool)

(assert (=> b!7028517 m!7732932))

(declare-fun m!7732934 () Bool)

(assert (=> d!2191909 m!7732934))

(declare-fun m!7732936 () Bool)

(assert (=> d!2191909 m!7732936))

(assert (=> d!2191909 m!7732076))

(assert (=> b!7027914 d!2191909))

(declare-fun d!2191911 () Bool)

(declare-fun res!2869122 () Bool)

(declare-fun e!4225250 () Bool)

(assert (=> d!2191911 (=> res!2869122 e!4225250)))

(assert (=> d!2191911 (= res!2869122 ((_ is Nil!67759) lt!2515950))))

(assert (=> d!2191911 (= (noDuplicate!2617 lt!2515950) e!4225250)))

(declare-fun b!7028524 () Bool)

(declare-fun e!4225251 () Bool)

(assert (=> b!7028524 (= e!4225250 e!4225251)))

(declare-fun res!2869123 () Bool)

(assert (=> b!7028524 (=> (not res!2869123) (not e!4225251))))

(assert (=> b!7028524 (= res!2869123 (not (contains!20446 (t!381644 lt!2515950) (h!74207 lt!2515950))))))

(declare-fun b!7028525 () Bool)

(assert (=> b!7028525 (= e!4225251 (noDuplicate!2617 (t!381644 lt!2515950)))))

(assert (= (and d!2191911 (not res!2869122)) b!7028524))

(assert (= (and b!7028524 res!2869123) b!7028525))

(declare-fun m!7732938 () Bool)

(assert (=> b!7028524 m!7732938))

(declare-fun m!7732940 () Bool)

(assert (=> b!7028525 m!7732940))

(assert (=> d!2191567 d!2191911))

(declare-fun d!2191913 () Bool)

(declare-fun e!4225260 () Bool)

(assert (=> d!2191913 e!4225260))

(declare-fun res!2869128 () Bool)

(assert (=> d!2191913 (=> (not res!2869128) (not e!4225260))))

(declare-fun res!2869129 () List!67883)

(assert (=> d!2191913 (= res!2869128 (noDuplicate!2617 res!2869129))))

(declare-fun e!4225258 () Bool)

(assert (=> d!2191913 e!4225258))

(assert (=> d!2191913 (= (choose!53136 z1!570) res!2869129)))

(declare-fun b!7028533 () Bool)

(declare-fun e!4225259 () Bool)

(declare-fun tp!1935920 () Bool)

(assert (=> b!7028533 (= e!4225259 tp!1935920)))

(declare-fun tp!1935921 () Bool)

(declare-fun b!7028532 () Bool)

(assert (=> b!7028532 (= e!4225258 (and (inv!86486 (h!74207 res!2869129)) e!4225259 tp!1935921))))

(declare-fun b!7028534 () Bool)

(assert (=> b!7028534 (= e!4225260 (= (content!13507 res!2869129) z1!570))))

(assert (= b!7028532 b!7028533))

(assert (= (and d!2191913 ((_ is Cons!67759) res!2869129)) b!7028532))

(assert (= (and d!2191913 res!2869128) b!7028534))

(declare-fun m!7732942 () Bool)

(assert (=> d!2191913 m!7732942))

(declare-fun m!7732944 () Bool)

(assert (=> b!7028532 m!7732944))

(declare-fun m!7732946 () Bool)

(assert (=> b!7028534 m!7732946))

(assert (=> d!2191567 d!2191913))

(declare-fun bs!1869557 () Bool)

(declare-fun d!2191915 () Bool)

(assert (= bs!1869557 (and d!2191915 b!7027824)))

(declare-fun lambda!413658 () Int)

(assert (=> bs!1869557 (not (= lambda!413658 lambda!413590))))

(declare-fun bs!1869558 () Bool)

(assert (= bs!1869558 (and d!2191915 d!2191575)))

(assert (=> bs!1869558 (not (= lambda!413658 lambda!413618))))

(declare-fun bs!1869559 () Bool)

(assert (= bs!1869559 (and d!2191915 d!2191903)))

(assert (=> bs!1869559 (= lambda!413658 lambda!413657)))

(declare-fun bs!1869560 () Bool)

(assert (= bs!1869560 (and d!2191915 d!2191581)))

(assert (=> bs!1869560 (not (= lambda!413658 lambda!413621))))

(declare-fun bs!1869561 () Bool)

(assert (= bs!1869561 (and d!2191915 d!2191885)))

(assert (=> bs!1869561 (= lambda!413658 lambda!413656)))

(assert (=> d!2191915 (= (nullableZipper!2568 lt!2515842) (exists!3367 lt!2515842 lambda!413658))))

(declare-fun bs!1869562 () Bool)

(assert (= bs!1869562 d!2191915))

(declare-fun m!7732948 () Bool)

(assert (=> bs!1869562 m!7732948))

(assert (=> b!7028088 d!2191915))

(declare-fun bs!1869563 () Bool)

(declare-fun d!2191917 () Bool)

(assert (= bs!1869563 (and d!2191917 d!2191915)))

(declare-fun lambda!413659 () Int)

(assert (=> bs!1869563 (= lambda!413659 lambda!413658)))

(declare-fun bs!1869564 () Bool)

(assert (= bs!1869564 (and d!2191917 b!7027824)))

(assert (=> bs!1869564 (not (= lambda!413659 lambda!413590))))

(declare-fun bs!1869565 () Bool)

(assert (= bs!1869565 (and d!2191917 d!2191575)))

(assert (=> bs!1869565 (not (= lambda!413659 lambda!413618))))

(declare-fun bs!1869566 () Bool)

(assert (= bs!1869566 (and d!2191917 d!2191903)))

(assert (=> bs!1869566 (= lambda!413659 lambda!413657)))

(declare-fun bs!1869567 () Bool)

(assert (= bs!1869567 (and d!2191917 d!2191581)))

(assert (=> bs!1869567 (not (= lambda!413659 lambda!413621))))

(declare-fun bs!1869568 () Bool)

(assert (= bs!1869568 (and d!2191917 d!2191885)))

(assert (=> bs!1869568 (= lambda!413659 lambda!413656)))

(assert (=> d!2191917 (= (nullableZipper!2568 lt!2515843) (exists!3367 lt!2515843 lambda!413659))))

(declare-fun bs!1869569 () Bool)

(assert (= bs!1869569 d!2191917))

(declare-fun m!7732950 () Bool)

(assert (=> bs!1869569 m!7732950))

(assert (=> b!7028095 d!2191917))

(declare-fun bs!1869570 () Bool)

(declare-fun d!2191919 () Bool)

(assert (= bs!1869570 (and d!2191919 d!2191915)))

(declare-fun lambda!413660 () Int)

(assert (=> bs!1869570 (= lambda!413660 lambda!413658)))

(declare-fun bs!1869571 () Bool)

(assert (= bs!1869571 (and d!2191919 b!7027824)))

(assert (=> bs!1869571 (not (= lambda!413660 lambda!413590))))

(declare-fun bs!1869572 () Bool)

(assert (= bs!1869572 (and d!2191919 d!2191917)))

(assert (=> bs!1869572 (= lambda!413660 lambda!413659)))

(declare-fun bs!1869573 () Bool)

(assert (= bs!1869573 (and d!2191919 d!2191575)))

(assert (=> bs!1869573 (not (= lambda!413660 lambda!413618))))

(declare-fun bs!1869574 () Bool)

(assert (= bs!1869574 (and d!2191919 d!2191903)))

(assert (=> bs!1869574 (= lambda!413660 lambda!413657)))

(declare-fun bs!1869575 () Bool)

(assert (= bs!1869575 (and d!2191919 d!2191581)))

(assert (=> bs!1869575 (not (= lambda!413660 lambda!413621))))

(declare-fun bs!1869576 () Bool)

(assert (= bs!1869576 (and d!2191919 d!2191885)))

(assert (=> bs!1869576 (= lambda!413660 lambda!413656)))

(assert (=> d!2191919 (= (nullableZipper!2568 lt!2515859) (exists!3367 lt!2515859 lambda!413660))))

(declare-fun bs!1869577 () Bool)

(assert (= bs!1869577 d!2191919))

(declare-fun m!7732952 () Bool)

(assert (=> bs!1869577 m!7732952))

(assert (=> b!7027995 d!2191919))

(declare-fun b!7028535 () Bool)

(declare-fun e!4225263 () (InoxSet Context!12894))

(declare-fun call!638217 () (InoxSet Context!12894))

(assert (=> b!7028535 (= e!4225263 call!638217)))

(declare-fun b!7028536 () Bool)

(declare-fun e!4225261 () (InoxSet Context!12894))

(assert (=> b!7028536 (= e!4225261 e!4225263)))

(declare-fun c!1306820 () Bool)

(assert (=> b!7028536 (= c!1306820 ((_ is Cons!67757) (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515855))))))))

(declare-fun b!7028537 () Bool)

(assert (=> b!7028537 (= e!4225261 ((_ map or) call!638217 (derivationStepZipperUp!2061 (Context!12895 (t!381642 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515855)))))) (h!74206 s!7408))))))

(declare-fun b!7028538 () Bool)

(declare-fun e!4225262 () Bool)

(assert (=> b!7028538 (= e!4225262 (nullable!7162 (h!74205 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515855)))))))))

(declare-fun b!7028539 () Bool)

(assert (=> b!7028539 (= e!4225263 ((as const (Array Context!12894 Bool)) false))))

(declare-fun bm!638212 () Bool)

(assert (=> bm!638212 (= call!638217 (derivationStepZipperDown!2115 (h!74205 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515855))))) (Context!12895 (t!381642 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515855)))))) (h!74206 s!7408)))))

(declare-fun d!2191921 () Bool)

(declare-fun c!1306821 () Bool)

(assert (=> d!2191921 (= c!1306821 e!4225262)))

(declare-fun res!2869130 () Bool)

(assert (=> d!2191921 (=> (not res!2869130) (not e!4225262))))

(assert (=> d!2191921 (= res!2869130 ((_ is Cons!67757) (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515855))))))))

(assert (=> d!2191921 (= (derivationStepZipperUp!2061 (Context!12895 (t!381642 (exprs!6947 lt!2515855))) (h!74206 s!7408)) e!4225261)))

(assert (= (and d!2191921 res!2869130) b!7028538))

(assert (= (and d!2191921 c!1306821) b!7028537))

(assert (= (and d!2191921 (not c!1306821)) b!7028536))

(assert (= (and b!7028536 c!1306820) b!7028535))

(assert (= (and b!7028536 (not c!1306820)) b!7028539))

(assert (= (or b!7028537 b!7028535) bm!638212))

(declare-fun m!7732954 () Bool)

(assert (=> b!7028537 m!7732954))

(declare-fun m!7732956 () Bool)

(assert (=> b!7028538 m!7732956))

(declare-fun m!7732958 () Bool)

(assert (=> bm!638212 m!7732958))

(assert (=> b!7028069 d!2191921))

(declare-fun b!7028540 () Bool)

(declare-fun e!4225266 () (InoxSet Context!12894))

(declare-fun call!638218 () (InoxSet Context!12894))

(assert (=> b!7028540 (= e!4225266 call!638218)))

(declare-fun b!7028541 () Bool)

(declare-fun e!4225264 () (InoxSet Context!12894))

(assert (=> b!7028541 (= e!4225264 e!4225266)))

(declare-fun c!1306822 () Bool)

(assert (=> b!7028541 (= c!1306822 ((_ is Cons!67757) (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515841))))))))

(declare-fun b!7028542 () Bool)

(assert (=> b!7028542 (= e!4225264 ((_ map or) call!638218 (derivationStepZipperUp!2061 (Context!12895 (t!381642 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515841)))))) (h!74206 s!7408))))))

(declare-fun b!7028543 () Bool)

(declare-fun e!4225265 () Bool)

(assert (=> b!7028543 (= e!4225265 (nullable!7162 (h!74205 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515841)))))))))

(declare-fun b!7028544 () Bool)

(assert (=> b!7028544 (= e!4225266 ((as const (Array Context!12894 Bool)) false))))

(declare-fun bm!638213 () Bool)

(assert (=> bm!638213 (= call!638218 (derivationStepZipperDown!2115 (h!74205 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515841))))) (Context!12895 (t!381642 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515841)))))) (h!74206 s!7408)))))

(declare-fun d!2191923 () Bool)

(declare-fun c!1306823 () Bool)

(assert (=> d!2191923 (= c!1306823 e!4225265)))

(declare-fun res!2869131 () Bool)

(assert (=> d!2191923 (=> (not res!2869131) (not e!4225265))))

(assert (=> d!2191923 (= res!2869131 ((_ is Cons!67757) (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515841))))))))

(assert (=> d!2191923 (= (derivationStepZipperUp!2061 (Context!12895 (t!381642 (exprs!6947 lt!2515841))) (h!74206 s!7408)) e!4225264)))

(assert (= (and d!2191923 res!2869131) b!7028543))

(assert (= (and d!2191923 c!1306823) b!7028542))

(assert (= (and d!2191923 (not c!1306823)) b!7028541))

(assert (= (and b!7028541 c!1306822) b!7028540))

(assert (= (and b!7028541 (not c!1306822)) b!7028544))

(assert (= (or b!7028542 b!7028540) bm!638213))

(declare-fun m!7732960 () Bool)

(assert (=> b!7028542 m!7732960))

(declare-fun m!7732962 () Bool)

(assert (=> b!7028543 m!7732962))

(declare-fun m!7732964 () Bool)

(assert (=> bm!638213 m!7732964))

(assert (=> b!7028099 d!2191923))

(declare-fun bs!1869578 () Bool)

(declare-fun d!2191925 () Bool)

(assert (= bs!1869578 (and d!2191925 d!2191915)))

(declare-fun lambda!413661 () Int)

(assert (=> bs!1869578 (= lambda!413661 lambda!413658)))

(declare-fun bs!1869579 () Bool)

(assert (= bs!1869579 (and d!2191925 b!7027824)))

(assert (=> bs!1869579 (not (= lambda!413661 lambda!413590))))

(declare-fun bs!1869580 () Bool)

(assert (= bs!1869580 (and d!2191925 d!2191917)))

(assert (=> bs!1869580 (= lambda!413661 lambda!413659)))

(declare-fun bs!1869581 () Bool)

(assert (= bs!1869581 (and d!2191925 d!2191919)))

(assert (=> bs!1869581 (= lambda!413661 lambda!413660)))

(declare-fun bs!1869582 () Bool)

(assert (= bs!1869582 (and d!2191925 d!2191575)))

(assert (=> bs!1869582 (not (= lambda!413661 lambda!413618))))

(declare-fun bs!1869583 () Bool)

(assert (= bs!1869583 (and d!2191925 d!2191903)))

(assert (=> bs!1869583 (= lambda!413661 lambda!413657)))

(declare-fun bs!1869584 () Bool)

(assert (= bs!1869584 (and d!2191925 d!2191581)))

(assert (=> bs!1869584 (not (= lambda!413661 lambda!413621))))

(declare-fun bs!1869585 () Bool)

(assert (= bs!1869585 (and d!2191925 d!2191885)))

(assert (=> bs!1869585 (= lambda!413661 lambda!413656)))

(assert (=> d!2191925 (= (nullableZipper!2568 lt!2515870) (exists!3367 lt!2515870 lambda!413661))))

(declare-fun bs!1869586 () Bool)

(assert (= bs!1869586 d!2191925))

(declare-fun m!7732966 () Bool)

(assert (=> bs!1869586 m!7732966))

(assert (=> b!7028003 d!2191925))

(declare-fun bs!1869587 () Bool)

(declare-fun d!2191927 () Bool)

(assert (= bs!1869587 (and d!2191927 d!2191915)))

(declare-fun lambda!413662 () Int)

(assert (=> bs!1869587 (not (= lambda!413662 lambda!413658))))

(declare-fun bs!1869588 () Bool)

(assert (= bs!1869588 (and d!2191927 b!7027824)))

(assert (=> bs!1869588 (not (= lambda!413662 lambda!413590))))

(declare-fun bs!1869589 () Bool)

(assert (= bs!1869589 (and d!2191927 d!2191917)))

(assert (=> bs!1869589 (not (= lambda!413662 lambda!413659))))

(declare-fun bs!1869590 () Bool)

(assert (= bs!1869590 (and d!2191927 d!2191925)))

(assert (=> bs!1869590 (not (= lambda!413662 lambda!413661))))

(declare-fun bs!1869591 () Bool)

(assert (= bs!1869591 (and d!2191927 d!2191919)))

(assert (=> bs!1869591 (not (= lambda!413662 lambda!413660))))

(declare-fun bs!1869592 () Bool)

(assert (= bs!1869592 (and d!2191927 d!2191575)))

(assert (=> bs!1869592 (= (= lambda!413621 lambda!413590) (= lambda!413662 lambda!413618))))

(declare-fun bs!1869593 () Bool)

(assert (= bs!1869593 (and d!2191927 d!2191903)))

(assert (=> bs!1869593 (not (= lambda!413662 lambda!413657))))

(declare-fun bs!1869594 () Bool)

(assert (= bs!1869594 (and d!2191927 d!2191581)))

(assert (=> bs!1869594 (not (= lambda!413662 lambda!413621))))

(declare-fun bs!1869595 () Bool)

(assert (= bs!1869595 (and d!2191927 d!2191885)))

(assert (=> bs!1869595 (not (= lambda!413662 lambda!413656))))

(assert (=> d!2191927 true))

(assert (=> d!2191927 (< (dynLambda!27335 order!28151 lambda!413621) (dynLambda!27335 order!28151 lambda!413662))))

(assert (=> d!2191927 (= (exists!3365 lt!2515845 lambda!413621) (not (forall!16357 lt!2515845 lambda!413662)))))

(declare-fun bs!1869596 () Bool)

(assert (= bs!1869596 d!2191927))

(declare-fun m!7732968 () Bool)

(assert (=> bs!1869596 m!7732968))

(assert (=> d!2191581 d!2191927))

(declare-fun bs!1869597 () Bool)

(declare-fun d!2191929 () Bool)

(assert (= bs!1869597 (and d!2191929 d!2191915)))

(declare-fun lambda!413665 () Int)

(assert (=> bs!1869597 (not (= lambda!413665 lambda!413658))))

(declare-fun bs!1869598 () Bool)

(assert (= bs!1869598 (and d!2191929 b!7027824)))

(assert (=> bs!1869598 (= lambda!413665 lambda!413590)))

(declare-fun bs!1869599 () Bool)

(assert (= bs!1869599 (and d!2191929 d!2191917)))

(assert (=> bs!1869599 (not (= lambda!413665 lambda!413659))))

(declare-fun bs!1869600 () Bool)

(assert (= bs!1869600 (and d!2191929 d!2191925)))

(assert (=> bs!1869600 (not (= lambda!413665 lambda!413661))))

(declare-fun bs!1869601 () Bool)

(assert (= bs!1869601 (and d!2191929 d!2191927)))

(assert (=> bs!1869601 (not (= lambda!413665 lambda!413662))))

(declare-fun bs!1869602 () Bool)

(assert (= bs!1869602 (and d!2191929 d!2191919)))

(assert (=> bs!1869602 (not (= lambda!413665 lambda!413660))))

(declare-fun bs!1869603 () Bool)

(assert (= bs!1869603 (and d!2191929 d!2191575)))

(assert (=> bs!1869603 (not (= lambda!413665 lambda!413618))))

(declare-fun bs!1869604 () Bool)

(assert (= bs!1869604 (and d!2191929 d!2191903)))

(assert (=> bs!1869604 (not (= lambda!413665 lambda!413657))))

(declare-fun bs!1869605 () Bool)

(assert (= bs!1869605 (and d!2191929 d!2191581)))

(assert (=> bs!1869605 (= lambda!413665 lambda!413621)))

(declare-fun bs!1869606 () Bool)

(assert (= bs!1869606 (and d!2191929 d!2191885)))

(assert (=> bs!1869606 (not (= lambda!413665 lambda!413656))))

(assert (=> d!2191929 true))

(assert (=> d!2191929 (exists!3365 lt!2515845 lambda!413665)))

(assert (=> d!2191929 true))

(declare-fun _$60!1114 () Unit!161568)

(assert (=> d!2191929 (= (choose!53138 lt!2515845 s!7408) _$60!1114)))

(declare-fun bs!1869607 () Bool)

(assert (= bs!1869607 d!2191929))

(declare-fun m!7732970 () Bool)

(assert (=> bs!1869607 m!7732970))

(assert (=> d!2191581 d!2191929))

(declare-fun d!2191931 () Bool)

(declare-fun c!1306826 () Bool)

(assert (=> d!2191931 (= c!1306826 (isEmpty!39507 s!7408))))

(declare-fun e!4225267 () Bool)

(assert (=> d!2191931 (= (matchZipper!2991 (content!13507 lt!2515845) s!7408) e!4225267)))

(declare-fun b!7028545 () Bool)

(assert (=> b!7028545 (= e!4225267 (nullableZipper!2568 (content!13507 lt!2515845)))))

(declare-fun b!7028546 () Bool)

(assert (=> b!7028546 (= e!4225267 (matchZipper!2991 (derivationStepZipper!2907 (content!13507 lt!2515845) (head!14247 s!7408)) (tail!13528 s!7408)))))

(assert (= (and d!2191931 c!1306826) b!7028545))

(assert (= (and d!2191931 (not c!1306826)) b!7028546))

(assert (=> d!2191931 m!7732320))

(assert (=> b!7028545 m!7732342))

(declare-fun m!7732972 () Bool)

(assert (=> b!7028545 m!7732972))

(assert (=> b!7028546 m!7732324))

(assert (=> b!7028546 m!7732342))

(assert (=> b!7028546 m!7732324))

(declare-fun m!7732974 () Bool)

(assert (=> b!7028546 m!7732974))

(assert (=> b!7028546 m!7732328))

(assert (=> b!7028546 m!7732974))

(assert (=> b!7028546 m!7732328))

(declare-fun m!7732976 () Bool)

(assert (=> b!7028546 m!7732976))

(assert (=> d!2191581 d!2191931))

(declare-fun d!2191933 () Bool)

(declare-fun c!1306829 () Bool)

(assert (=> d!2191933 (= c!1306829 ((_ is Nil!67759) lt!2515845))))

(declare-fun e!4225270 () (InoxSet Context!12894))

(assert (=> d!2191933 (= (content!13507 lt!2515845) e!4225270)))

(declare-fun b!7028551 () Bool)

(assert (=> b!7028551 (= e!4225270 ((as const (Array Context!12894 Bool)) false))))

(declare-fun b!7028552 () Bool)

(assert (=> b!7028552 (= e!4225270 ((_ map or) (store ((as const (Array Context!12894 Bool)) false) (h!74207 lt!2515845) true) (content!13507 (t!381644 lt!2515845))))))

(assert (= (and d!2191933 c!1306829) b!7028551))

(assert (= (and d!2191933 (not c!1306829)) b!7028552))

(declare-fun m!7732978 () Bool)

(assert (=> b!7028552 m!7732978))

(declare-fun m!7732980 () Bool)

(assert (=> b!7028552 m!7732980))

(assert (=> d!2191581 d!2191933))

(declare-fun d!2191935 () Bool)

(declare-fun res!2869132 () Bool)

(declare-fun e!4225271 () Bool)

(assert (=> d!2191935 (=> res!2869132 e!4225271)))

(assert (=> d!2191935 (= res!2869132 ((_ is Nil!67757) (exprs!6947 ct2!306)))))

(assert (=> d!2191935 (= (forall!16356 (exprs!6947 ct2!306) lambda!413629) e!4225271)))

(declare-fun b!7028553 () Bool)

(declare-fun e!4225272 () Bool)

(assert (=> b!7028553 (= e!4225271 e!4225272)))

(declare-fun res!2869133 () Bool)

(assert (=> b!7028553 (=> (not res!2869133) (not e!4225272))))

(assert (=> b!7028553 (= res!2869133 (dynLambda!27337 lambda!413629 (h!74205 (exprs!6947 ct2!306))))))

(declare-fun b!7028554 () Bool)

(assert (=> b!7028554 (= e!4225272 (forall!16356 (t!381642 (exprs!6947 ct2!306)) lambda!413629))))

(assert (= (and d!2191935 (not res!2869132)) b!7028553))

(assert (= (and b!7028553 res!2869133) b!7028554))

(declare-fun b_lambda!265985 () Bool)

(assert (=> (not b_lambda!265985) (not b!7028553)))

(declare-fun m!7732982 () Bool)

(assert (=> b!7028553 m!7732982))

(declare-fun m!7732984 () Bool)

(assert (=> b!7028554 m!7732984))

(assert (=> d!2191587 d!2191935))

(assert (=> d!2191583 d!2191881))

(declare-fun b!7028555 () Bool)

(declare-fun e!4225275 () (InoxSet Context!12894))

(declare-fun call!638219 () (InoxSet Context!12894))

(assert (=> b!7028555 (= e!4225275 call!638219)))

(declare-fun b!7028556 () Bool)

(declare-fun e!4225273 () (InoxSet Context!12894))

(assert (=> b!7028556 (= e!4225273 e!4225275)))

(declare-fun c!1306830 () Bool)

(assert (=> b!7028556 (= c!1306830 ((_ is Cons!67757) (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515862))))))))

(declare-fun b!7028557 () Bool)

(assert (=> b!7028557 (= e!4225273 ((_ map or) call!638219 (derivationStepZipperUp!2061 (Context!12895 (t!381642 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515862)))))) (h!74206 s!7408))))))

(declare-fun b!7028558 () Bool)

(declare-fun e!4225274 () Bool)

(assert (=> b!7028558 (= e!4225274 (nullable!7162 (h!74205 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515862)))))))))

(declare-fun b!7028559 () Bool)

(assert (=> b!7028559 (= e!4225275 ((as const (Array Context!12894 Bool)) false))))

(declare-fun bm!638214 () Bool)

(assert (=> bm!638214 (= call!638219 (derivationStepZipperDown!2115 (h!74205 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515862))))) (Context!12895 (t!381642 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515862)))))) (h!74206 s!7408)))))

(declare-fun d!2191937 () Bool)

(declare-fun c!1306831 () Bool)

(assert (=> d!2191937 (= c!1306831 e!4225274)))

(declare-fun res!2869134 () Bool)

(assert (=> d!2191937 (=> (not res!2869134) (not e!4225274))))

(assert (=> d!2191937 (= res!2869134 ((_ is Cons!67757) (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515862))))))))

(assert (=> d!2191937 (= (derivationStepZipperUp!2061 (Context!12895 (t!381642 (exprs!6947 lt!2515862))) (h!74206 s!7408)) e!4225273)))

(assert (= (and d!2191937 res!2869134) b!7028558))

(assert (= (and d!2191937 c!1306831) b!7028557))

(assert (= (and d!2191937 (not c!1306831)) b!7028556))

(assert (= (and b!7028556 c!1306830) b!7028555))

(assert (= (and b!7028556 (not c!1306830)) b!7028559))

(assert (= (or b!7028557 b!7028555) bm!638214))

(declare-fun m!7732986 () Bool)

(assert (=> b!7028557 m!7732986))

(declare-fun m!7732988 () Bool)

(assert (=> b!7028558 m!7732988))

(declare-fun m!7732990 () Bool)

(assert (=> bm!638214 m!7732990))

(assert (=> b!7028017 d!2191937))

(declare-fun d!2191939 () Bool)

(declare-fun res!2869139 () Bool)

(declare-fun e!4225280 () Bool)

(assert (=> d!2191939 (=> res!2869139 e!4225280)))

(assert (=> d!2191939 (= res!2869139 ((_ is Nil!67759) lt!2515845))))

(assert (=> d!2191939 (= (forall!16357 lt!2515845 lambda!413618) e!4225280)))

(declare-fun b!7028564 () Bool)

(declare-fun e!4225281 () Bool)

(assert (=> b!7028564 (= e!4225280 e!4225281)))

(declare-fun res!2869140 () Bool)

(assert (=> b!7028564 (=> (not res!2869140) (not e!4225281))))

(assert (=> b!7028564 (= res!2869140 (dynLambda!27334 lambda!413618 (h!74207 lt!2515845)))))

(declare-fun b!7028565 () Bool)

(assert (=> b!7028565 (= e!4225281 (forall!16357 (t!381644 lt!2515845) lambda!413618))))

(assert (= (and d!2191939 (not res!2869139)) b!7028564))

(assert (= (and b!7028564 res!2869140) b!7028565))

(declare-fun b_lambda!265987 () Bool)

(assert (=> (not b_lambda!265987) (not b!7028564)))

(declare-fun m!7732992 () Bool)

(assert (=> b!7028564 m!7732992))

(declare-fun m!7732994 () Bool)

(assert (=> b!7028565 m!7732994))

(assert (=> d!2191575 d!2191939))

(declare-fun b!7028566 () Bool)

(declare-fun e!4225285 () (InoxSet Context!12894))

(assert (=> b!7028566 (= e!4225285 (store ((as const (Array Context!12894 Bool)) false) (Context!12895 (t!381642 (exprs!6947 lt!2515841))) true))))

(declare-fun b!7028567 () Bool)

(declare-fun e!4225286 () (InoxSet Context!12894))

(declare-fun call!638221 () (InoxSet Context!12894))

(declare-fun call!638222 () (InoxSet Context!12894))

(assert (=> b!7028567 (= e!4225286 ((_ map or) call!638221 call!638222))))

(declare-fun b!7028568 () Bool)

(declare-fun e!4225287 () (InoxSet Context!12894))

(assert (=> b!7028568 (= e!4225285 e!4225287)))

(declare-fun c!1306833 () Bool)

(assert (=> b!7028568 (= c!1306833 ((_ is Union!17451) (h!74205 (exprs!6947 lt!2515841))))))

(declare-fun b!7028569 () Bool)

(declare-fun e!4225283 () (InoxSet Context!12894))

(assert (=> b!7028569 (= e!4225283 ((as const (Array Context!12894 Bool)) false))))

(declare-fun call!638223 () List!67881)

(declare-fun c!1306836 () Bool)

(declare-fun c!1306832 () Bool)

(declare-fun bm!638215 () Bool)

(declare-fun call!638225 () (InoxSet Context!12894))

(assert (=> bm!638215 (= call!638225 (derivationStepZipperDown!2115 (ite c!1306833 (regOne!35415 (h!74205 (exprs!6947 lt!2515841))) (ite c!1306832 (regTwo!35414 (h!74205 (exprs!6947 lt!2515841))) (ite c!1306836 (regOne!35414 (h!74205 (exprs!6947 lt!2515841))) (reg!17780 (h!74205 (exprs!6947 lt!2515841)))))) (ite (or c!1306833 c!1306832) (Context!12895 (t!381642 (exprs!6947 lt!2515841))) (Context!12895 call!638223)) (h!74206 s!7408)))))

(declare-fun b!7028570 () Bool)

(declare-fun e!4225284 () (InoxSet Context!12894))

(assert (=> b!7028570 (= e!4225286 e!4225284)))

(assert (=> b!7028570 (= c!1306836 ((_ is Concat!26296) (h!74205 (exprs!6947 lt!2515841))))))

(declare-fun b!7028571 () Bool)

(declare-fun e!4225282 () Bool)

(assert (=> b!7028571 (= e!4225282 (nullable!7162 (regOne!35414 (h!74205 (exprs!6947 lt!2515841)))))))

(declare-fun bm!638216 () Bool)

(declare-fun call!638220 () List!67881)

(assert (=> bm!638216 (= call!638223 call!638220)))

(declare-fun bm!638217 () Bool)

(assert (=> bm!638217 (= call!638221 (derivationStepZipperDown!2115 (ite c!1306833 (regTwo!35415 (h!74205 (exprs!6947 lt!2515841))) (regOne!35414 (h!74205 (exprs!6947 lt!2515841)))) (ite c!1306833 (Context!12895 (t!381642 (exprs!6947 lt!2515841))) (Context!12895 call!638220)) (h!74206 s!7408)))))

(declare-fun bm!638218 () Bool)

(assert (=> bm!638218 (= call!638222 call!638225)))

(declare-fun b!7028572 () Bool)

(declare-fun call!638224 () (InoxSet Context!12894))

(assert (=> b!7028572 (= e!4225284 call!638224)))

(declare-fun b!7028573 () Bool)

(assert (=> b!7028573 (= e!4225287 ((_ map or) call!638225 call!638221))))

(declare-fun d!2191941 () Bool)

(declare-fun c!1306834 () Bool)

(assert (=> d!2191941 (= c!1306834 (and ((_ is ElementMatch!17451) (h!74205 (exprs!6947 lt!2515841))) (= (c!1306580 (h!74205 (exprs!6947 lt!2515841))) (h!74206 s!7408))))))

(assert (=> d!2191941 (= (derivationStepZipperDown!2115 (h!74205 (exprs!6947 lt!2515841)) (Context!12895 (t!381642 (exprs!6947 lt!2515841))) (h!74206 s!7408)) e!4225285)))

(declare-fun bm!638219 () Bool)

(assert (=> bm!638219 (= call!638224 call!638222)))

(declare-fun b!7028574 () Bool)

(assert (=> b!7028574 (= e!4225283 call!638224)))

(declare-fun b!7028575 () Bool)

(declare-fun c!1306835 () Bool)

(assert (=> b!7028575 (= c!1306835 ((_ is Star!17451) (h!74205 (exprs!6947 lt!2515841))))))

(assert (=> b!7028575 (= e!4225284 e!4225283)))

(declare-fun bm!638220 () Bool)

(assert (=> bm!638220 (= call!638220 ($colon$colon!2563 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515841)))) (ite (or c!1306832 c!1306836) (regTwo!35414 (h!74205 (exprs!6947 lt!2515841))) (h!74205 (exprs!6947 lt!2515841)))))))

(declare-fun b!7028576 () Bool)

(assert (=> b!7028576 (= c!1306832 e!4225282)))

(declare-fun res!2869141 () Bool)

(assert (=> b!7028576 (=> (not res!2869141) (not e!4225282))))

(assert (=> b!7028576 (= res!2869141 ((_ is Concat!26296) (h!74205 (exprs!6947 lt!2515841))))))

(assert (=> b!7028576 (= e!4225287 e!4225286)))

(assert (= (and d!2191941 c!1306834) b!7028566))

(assert (= (and d!2191941 (not c!1306834)) b!7028568))

(assert (= (and b!7028568 c!1306833) b!7028573))

(assert (= (and b!7028568 (not c!1306833)) b!7028576))

(assert (= (and b!7028576 res!2869141) b!7028571))

(assert (= (and b!7028576 c!1306832) b!7028567))

(assert (= (and b!7028576 (not c!1306832)) b!7028570))

(assert (= (and b!7028570 c!1306836) b!7028572))

(assert (= (and b!7028570 (not c!1306836)) b!7028575))

(assert (= (and b!7028575 c!1306835) b!7028574))

(assert (= (and b!7028575 (not c!1306835)) b!7028569))

(assert (= (or b!7028572 b!7028574) bm!638216))

(assert (= (or b!7028572 b!7028574) bm!638219))

(assert (= (or b!7028567 bm!638219) bm!638218))

(assert (= (or b!7028567 bm!638216) bm!638220))

(assert (= (or b!7028573 bm!638218) bm!638215))

(assert (= (or b!7028573 b!7028567) bm!638217))

(declare-fun m!7732996 () Bool)

(assert (=> bm!638217 m!7732996))

(declare-fun m!7732998 () Bool)

(assert (=> b!7028566 m!7732998))

(declare-fun m!7733000 () Bool)

(assert (=> bm!638220 m!7733000))

(declare-fun m!7733002 () Bool)

(assert (=> b!7028571 m!7733002))

(declare-fun m!7733004 () Bool)

(assert (=> bm!638215 m!7733004))

(assert (=> bm!638145 d!2191941))

(assert (=> d!2191571 d!2191563))

(assert (=> d!2191571 d!2191569))

(declare-fun d!2191943 () Bool)

(assert (=> d!2191943 (<= (contextDepthTotal!486 lt!2515860) (zipperDepthTotal!514 lt!2515838))))

(assert (=> d!2191943 true))

(declare-fun _$53!107 () Unit!161568)

(assert (=> d!2191943 (= (choose!53137 lt!2515838 lt!2515860) _$53!107)))

(declare-fun bs!1869608 () Bool)

(assert (= bs!1869608 d!2191943))

(assert (=> bs!1869608 m!7731840))

(assert (=> bs!1869608 m!7731852))

(assert (=> d!2191571 d!2191943))

(declare-fun d!2191945 () Bool)

(declare-fun lt!2516024 () Bool)

(assert (=> d!2191945 (= lt!2516024 (select (content!13507 lt!2515838) lt!2515860))))

(declare-fun e!4225292 () Bool)

(assert (=> d!2191945 (= lt!2516024 e!4225292)))

(declare-fun res!2869147 () Bool)

(assert (=> d!2191945 (=> (not res!2869147) (not e!4225292))))

(assert (=> d!2191945 (= res!2869147 ((_ is Cons!67759) lt!2515838))))

(assert (=> d!2191945 (= (contains!20446 lt!2515838 lt!2515860) lt!2516024)))

(declare-fun b!7028581 () Bool)

(declare-fun e!4225293 () Bool)

(assert (=> b!7028581 (= e!4225292 e!4225293)))

(declare-fun res!2869146 () Bool)

(assert (=> b!7028581 (=> res!2869146 e!4225293)))

(assert (=> b!7028581 (= res!2869146 (= (h!74207 lt!2515838) lt!2515860))))

(declare-fun b!7028582 () Bool)

(assert (=> b!7028582 (= e!4225293 (contains!20446 (t!381644 lt!2515838) lt!2515860))))

(assert (= (and d!2191945 res!2869147) b!7028581))

(assert (= (and b!7028581 (not res!2869146)) b!7028582))

(declare-fun m!7733006 () Bool)

(assert (=> d!2191945 m!7733006))

(declare-fun m!7733008 () Bool)

(assert (=> d!2191945 m!7733008))

(declare-fun m!7733010 () Bool)

(assert (=> b!7028582 m!7733010))

(assert (=> d!2191571 d!2191945))

(declare-fun d!2191947 () Bool)

(declare-fun lt!2516025 () Int)

(assert (=> d!2191947 (>= lt!2516025 0)))

(declare-fun e!4225294 () Int)

(assert (=> d!2191947 (= lt!2516025 e!4225294)))

(declare-fun c!1306838 () Bool)

(assert (=> d!2191947 (= c!1306838 ((_ is Cons!67757) (exprs!6947 (h!74207 (Cons!67759 lt!2515855 Nil!67759)))))))

(assert (=> d!2191947 (= (contextDepthTotal!486 (h!74207 (Cons!67759 lt!2515855 Nil!67759))) lt!2516025)))

(declare-fun b!7028583 () Bool)

(assert (=> b!7028583 (= e!4225294 (+ (regexDepthTotal!292 (h!74205 (exprs!6947 (h!74207 (Cons!67759 lt!2515855 Nil!67759))))) (contextDepthTotal!486 (Context!12895 (t!381642 (exprs!6947 (h!74207 (Cons!67759 lt!2515855 Nil!67759))))))))))

(declare-fun b!7028584 () Bool)

(assert (=> b!7028584 (= e!4225294 1)))

(assert (= (and d!2191947 c!1306838) b!7028583))

(assert (= (and d!2191947 (not c!1306838)) b!7028584))

(declare-fun m!7733012 () Bool)

(assert (=> b!7028583 m!7733012))

(declare-fun m!7733014 () Bool)

(assert (=> b!7028583 m!7733014))

(assert (=> b!7028093 d!2191947))

(declare-fun d!2191949 () Bool)

(declare-fun lt!2516026 () Int)

(assert (=> d!2191949 (>= lt!2516026 0)))

(declare-fun e!4225295 () Int)

(assert (=> d!2191949 (= lt!2516026 e!4225295)))

(declare-fun c!1306839 () Bool)

(assert (=> d!2191949 (= c!1306839 ((_ is Cons!67759) (t!381644 (Cons!67759 lt!2515855 Nil!67759))))))

(assert (=> d!2191949 (= (zipperDepthTotal!514 (t!381644 (Cons!67759 lt!2515855 Nil!67759))) lt!2516026)))

(declare-fun b!7028585 () Bool)

(assert (=> b!7028585 (= e!4225295 (+ (contextDepthTotal!486 (h!74207 (t!381644 (Cons!67759 lt!2515855 Nil!67759)))) (zipperDepthTotal!514 (t!381644 (t!381644 (Cons!67759 lt!2515855 Nil!67759))))))))

(declare-fun b!7028586 () Bool)

(assert (=> b!7028586 (= e!4225295 0)))

(assert (= (and d!2191949 c!1306839) b!7028585))

(assert (= (and d!2191949 (not c!1306839)) b!7028586))

(declare-fun m!7733016 () Bool)

(assert (=> b!7028585 m!7733016))

(declare-fun m!7733018 () Bool)

(assert (=> b!7028585 m!7733018))

(assert (=> b!7028093 d!2191949))

(declare-fun b!7028589 () Bool)

(declare-fun res!2869149 () Bool)

(declare-fun e!4225296 () Bool)

(assert (=> b!7028589 (=> (not res!2869149) (not e!4225296))))

(declare-fun lt!2516027 () List!67881)

(assert (=> b!7028589 (= res!2869149 (= (size!41046 lt!2516027) (+ (size!41046 (t!381642 lt!2515844)) (size!41046 (exprs!6947 ct2!306)))))))

(declare-fun b!7028588 () Bool)

(declare-fun e!4225297 () List!67881)

(assert (=> b!7028588 (= e!4225297 (Cons!67757 (h!74205 (t!381642 lt!2515844)) (++!15484 (t!381642 (t!381642 lt!2515844)) (exprs!6947 ct2!306))))))

(declare-fun b!7028587 () Bool)

(assert (=> b!7028587 (= e!4225297 (exprs!6947 ct2!306))))

(declare-fun d!2191951 () Bool)

(assert (=> d!2191951 e!4225296))

(declare-fun res!2869148 () Bool)

(assert (=> d!2191951 (=> (not res!2869148) (not e!4225296))))

(assert (=> d!2191951 (= res!2869148 (= (content!13506 lt!2516027) ((_ map or) (content!13506 (t!381642 lt!2515844)) (content!13506 (exprs!6947 ct2!306)))))))

(assert (=> d!2191951 (= lt!2516027 e!4225297)))

(declare-fun c!1306840 () Bool)

(assert (=> d!2191951 (= c!1306840 ((_ is Nil!67757) (t!381642 lt!2515844)))))

(assert (=> d!2191951 (= (++!15484 (t!381642 lt!2515844) (exprs!6947 ct2!306)) lt!2516027)))

(declare-fun b!7028590 () Bool)

(assert (=> b!7028590 (= e!4225296 (or (not (= (exprs!6947 ct2!306) Nil!67757)) (= lt!2516027 (t!381642 lt!2515844))))))

(assert (= (and d!2191951 c!1306840) b!7028587))

(assert (= (and d!2191951 (not c!1306840)) b!7028588))

(assert (= (and d!2191951 res!2869148) b!7028589))

(assert (= (and b!7028589 res!2869149) b!7028590))

(declare-fun m!7733020 () Bool)

(assert (=> b!7028589 m!7733020))

(assert (=> b!7028589 m!7732820))

(assert (=> b!7028589 m!7732068))

(declare-fun m!7733022 () Bool)

(assert (=> b!7028588 m!7733022))

(declare-fun m!7733024 () Bool)

(assert (=> d!2191951 m!7733024))

(declare-fun m!7733026 () Bool)

(assert (=> d!2191951 m!7733026))

(assert (=> d!2191951 m!7732076))

(assert (=> b!7028021 d!2191951))

(declare-fun d!2191953 () Bool)

(declare-fun c!1306843 () Bool)

(assert (=> d!2191953 (= c!1306843 ((_ is Nil!67757) lt!2515913))))

(declare-fun e!4225300 () (InoxSet Regex!17451))

(assert (=> d!2191953 (= (content!13506 lt!2515913) e!4225300)))

(declare-fun b!7028595 () Bool)

(assert (=> b!7028595 (= e!4225300 ((as const (Array Regex!17451 Bool)) false))))

(declare-fun b!7028596 () Bool)

(assert (=> b!7028596 (= e!4225300 ((_ map or) (store ((as const (Array Regex!17451 Bool)) false) (h!74205 lt!2515913) true) (content!13506 (t!381642 lt!2515913))))))

(assert (= (and d!2191953 c!1306843) b!7028595))

(assert (= (and d!2191953 (not c!1306843)) b!7028596))

(declare-fun m!7733028 () Bool)

(assert (=> b!7028596 m!7733028))

(declare-fun m!7733030 () Bool)

(assert (=> b!7028596 m!7733030))

(assert (=> d!2191465 d!2191953))

(declare-fun d!2191955 () Bool)

(declare-fun c!1306844 () Bool)

(assert (=> d!2191955 (= c!1306844 ((_ is Nil!67757) (exprs!6947 lt!2515860)))))

(declare-fun e!4225301 () (InoxSet Regex!17451))

(assert (=> d!2191955 (= (content!13506 (exprs!6947 lt!2515860)) e!4225301)))

(declare-fun b!7028597 () Bool)

(assert (=> b!7028597 (= e!4225301 ((as const (Array Regex!17451 Bool)) false))))

(declare-fun b!7028598 () Bool)

(assert (=> b!7028598 (= e!4225301 ((_ map or) (store ((as const (Array Regex!17451 Bool)) false) (h!74205 (exprs!6947 lt!2515860)) true) (content!13506 (t!381642 (exprs!6947 lt!2515860)))))))

(assert (= (and d!2191955 c!1306844) b!7028597))

(assert (= (and d!2191955 (not c!1306844)) b!7028598))

(declare-fun m!7733032 () Bool)

(assert (=> b!7028598 m!7733032))

(assert (=> b!7028598 m!7732936))

(assert (=> d!2191465 d!2191955))

(declare-fun d!2191957 () Bool)

(declare-fun c!1306845 () Bool)

(assert (=> d!2191957 (= c!1306845 ((_ is Nil!67757) (exprs!6947 ct2!306)))))

(declare-fun e!4225302 () (InoxSet Regex!17451))

(assert (=> d!2191957 (= (content!13506 (exprs!6947 ct2!306)) e!4225302)))

(declare-fun b!7028599 () Bool)

(assert (=> b!7028599 (= e!4225302 ((as const (Array Regex!17451 Bool)) false))))

(declare-fun b!7028600 () Bool)

(assert (=> b!7028600 (= e!4225302 ((_ map or) (store ((as const (Array Regex!17451 Bool)) false) (h!74205 (exprs!6947 ct2!306)) true) (content!13506 (t!381642 (exprs!6947 ct2!306)))))))

(assert (= (and d!2191957 c!1306845) b!7028599))

(assert (= (and d!2191957 (not c!1306845)) b!7028600))

(declare-fun m!7733034 () Bool)

(assert (=> b!7028600 m!7733034))

(declare-fun m!7733036 () Bool)

(assert (=> b!7028600 m!7733036))

(assert (=> d!2191465 d!2191957))

(declare-fun b!7028615 () Bool)

(declare-fun e!4225316 () Bool)

(declare-fun call!638231 () Bool)

(assert (=> b!7028615 (= e!4225316 call!638231)))

(declare-fun b!7028616 () Bool)

(declare-fun e!4225319 () Bool)

(declare-fun e!4225317 () Bool)

(assert (=> b!7028616 (= e!4225319 e!4225317)))

(declare-fun res!2869164 () Bool)

(assert (=> b!7028616 (=> (not res!2869164) (not e!4225317))))

(assert (=> b!7028616 (= res!2869164 (and (not ((_ is EmptyLang!17451) (h!74205 (exprs!6947 lt!2515860)))) (not ((_ is ElementMatch!17451) (h!74205 (exprs!6947 lt!2515860))))))))

(declare-fun d!2191959 () Bool)

(declare-fun res!2869160 () Bool)

(assert (=> d!2191959 (=> res!2869160 e!4225319)))

(assert (=> d!2191959 (= res!2869160 ((_ is EmptyExpr!17451) (h!74205 (exprs!6947 lt!2515860))))))

(assert (=> d!2191959 (= (nullableFct!2717 (h!74205 (exprs!6947 lt!2515860))) e!4225319)))

(declare-fun b!7028617 () Bool)

(declare-fun e!4225318 () Bool)

(declare-fun e!4225315 () Bool)

(assert (=> b!7028617 (= e!4225318 e!4225315)))

(declare-fun c!1306848 () Bool)

(assert (=> b!7028617 (= c!1306848 ((_ is Union!17451) (h!74205 (exprs!6947 lt!2515860))))))

(declare-fun b!7028618 () Bool)

(assert (=> b!7028618 (= e!4225317 e!4225318)))

(declare-fun res!2869162 () Bool)

(assert (=> b!7028618 (=> res!2869162 e!4225318)))

(assert (=> b!7028618 (= res!2869162 ((_ is Star!17451) (h!74205 (exprs!6947 lt!2515860))))))

(declare-fun b!7028619 () Bool)

(declare-fun e!4225320 () Bool)

(declare-fun call!638230 () Bool)

(assert (=> b!7028619 (= e!4225320 call!638230)))

(declare-fun bm!638225 () Bool)

(assert (=> bm!638225 (= call!638231 (nullable!7162 (ite c!1306848 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))))))

(declare-fun b!7028620 () Bool)

(assert (=> b!7028620 (= e!4225315 e!4225320)))

(declare-fun res!2869161 () Bool)

(assert (=> b!7028620 (= res!2869161 call!638231)))

(assert (=> b!7028620 (=> (not res!2869161) (not e!4225320))))

(declare-fun b!7028621 () Bool)

(assert (=> b!7028621 (= e!4225315 e!4225316)))

(declare-fun res!2869163 () Bool)

(assert (=> b!7028621 (= res!2869163 call!638230)))

(assert (=> b!7028621 (=> res!2869163 e!4225316)))

(declare-fun bm!638226 () Bool)

(assert (=> bm!638226 (= call!638230 (nullable!7162 (ite c!1306848 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))))))))

(assert (= (and d!2191959 (not res!2869160)) b!7028616))

(assert (= (and b!7028616 res!2869164) b!7028618))

(assert (= (and b!7028618 (not res!2869162)) b!7028617))

(assert (= (and b!7028617 c!1306848) b!7028621))

(assert (= (and b!7028617 (not c!1306848)) b!7028620))

(assert (= (and b!7028621 (not res!2869163)) b!7028615))

(assert (= (and b!7028620 res!2869161) b!7028619))

(assert (= (or b!7028615 b!7028620) bm!638225))

(assert (= (or b!7028621 b!7028619) bm!638226))

(declare-fun m!7733038 () Bool)

(assert (=> bm!638225 m!7733038))

(declare-fun m!7733040 () Bool)

(assert (=> bm!638226 m!7733040))

(assert (=> d!2191533 d!2191959))

(declare-fun d!2191961 () Bool)

(assert (=> d!2191961 true))

(declare-fun setRes!49062 () Bool)

(assert (=> d!2191961 setRes!49062))

(declare-fun condSetEmpty!49062 () Bool)

(declare-fun res!2869165 () (InoxSet Context!12894))

(assert (=> d!2191961 (= condSetEmpty!49062 (= res!2869165 ((as const (Array Context!12894 Bool)) false)))))

(assert (=> d!2191961 (= (choose!53132 lt!2515837 lambda!413593) res!2869165)))

(declare-fun setIsEmpty!49062 () Bool)

(assert (=> setIsEmpty!49062 setRes!49062))

(declare-fun setElem!49062 () Context!12894)

(declare-fun tp!1935922 () Bool)

(declare-fun setNonEmpty!49062 () Bool)

(declare-fun e!4225321 () Bool)

(assert (=> setNonEmpty!49062 (= setRes!49062 (and tp!1935922 (inv!86486 setElem!49062) e!4225321))))

(declare-fun setRest!49062 () (InoxSet Context!12894))

(assert (=> setNonEmpty!49062 (= res!2869165 ((_ map or) (store ((as const (Array Context!12894 Bool)) false) setElem!49062 true) setRest!49062))))

(declare-fun b!7028622 () Bool)

(declare-fun tp!1935923 () Bool)

(assert (=> b!7028622 (= e!4225321 tp!1935923)))

(assert (= (and d!2191961 condSetEmpty!49062) setIsEmpty!49062))

(assert (= (and d!2191961 (not condSetEmpty!49062)) setNonEmpty!49062))

(assert (= setNonEmpty!49062 b!7028622))

(declare-fun m!7733042 () Bool)

(assert (=> setNonEmpty!49062 m!7733042))

(assert (=> d!2191599 d!2191961))

(assert (=> b!7027968 d!2191551))

(declare-fun d!2191963 () Bool)

(declare-fun c!1306849 () Bool)

(assert (=> d!2191963 (= c!1306849 ((_ is Nil!67759) lt!2515950))))

(declare-fun e!4225322 () (InoxSet Context!12894))

(assert (=> d!2191963 (= (content!13507 lt!2515950) e!4225322)))

(declare-fun b!7028623 () Bool)

(assert (=> b!7028623 (= e!4225322 ((as const (Array Context!12894 Bool)) false))))

(declare-fun b!7028624 () Bool)

(assert (=> b!7028624 (= e!4225322 ((_ map or) (store ((as const (Array Context!12894 Bool)) false) (h!74207 lt!2515950) true) (content!13507 (t!381644 lt!2515950))))))

(assert (= (and d!2191963 c!1306849) b!7028623))

(assert (= (and d!2191963 (not c!1306849)) b!7028624))

(declare-fun m!7733044 () Bool)

(assert (=> b!7028624 m!7733044))

(declare-fun m!7733046 () Bool)

(assert (=> b!7028624 m!7733046))

(assert (=> b!7028076 d!2191963))

(declare-fun d!2191965 () Bool)

(declare-fun c!1306850 () Bool)

(assert (=> d!2191965 (= c!1306850 ((_ is Nil!67759) lt!2515960))))

(declare-fun e!4225323 () (InoxSet Context!12894))

(assert (=> d!2191965 (= (content!13507 lt!2515960) e!4225323)))

(declare-fun b!7028625 () Bool)

(assert (=> b!7028625 (= e!4225323 ((as const (Array Context!12894 Bool)) false))))

(declare-fun b!7028626 () Bool)

(assert (=> b!7028626 (= e!4225323 ((_ map or) (store ((as const (Array Context!12894 Bool)) false) (h!74207 lt!2515960) true) (content!13507 (t!381644 lt!2515960))))))

(assert (= (and d!2191965 c!1306850) b!7028625))

(assert (= (and d!2191965 (not c!1306850)) b!7028626))

(declare-fun m!7733048 () Bool)

(assert (=> b!7028626 m!7733048))

(declare-fun m!7733050 () Bool)

(assert (=> b!7028626 m!7733050))

(assert (=> b!7028090 d!2191965))

(declare-fun d!2191967 () Bool)

(declare-fun e!4225329 () Bool)

(assert (=> d!2191967 e!4225329))

(declare-fun res!2869168 () Bool)

(assert (=> d!2191967 (=> (not res!2869168) (not e!4225329))))

(declare-fun a!13158 () Context!12894)

(assert (=> d!2191967 (= res!2869168 (= lt!2515858 (dynLambda!27332 lambda!413591 a!13158)))))

(declare-fun e!4225328 () Bool)

(assert (=> d!2191967 (and (inv!86486 a!13158) e!4225328)))

(assert (=> d!2191967 (= (choose!53130 z1!570 lambda!413591 lt!2515858) a!13158)))

(declare-fun b!7028632 () Bool)

(declare-fun tp!1935926 () Bool)

(assert (=> b!7028632 (= e!4225328 tp!1935926)))

(declare-fun b!7028633 () Bool)

(assert (=> b!7028633 (= e!4225329 (select z1!570 a!13158))))

(assert (= d!2191967 b!7028632))

(assert (= (and d!2191967 res!2869168) b!7028633))

(declare-fun b_lambda!265989 () Bool)

(assert (=> (not b_lambda!265989) (not d!2191967)))

(declare-fun m!7733052 () Bool)

(assert (=> d!2191967 m!7733052))

(declare-fun m!7733054 () Bool)

(assert (=> d!2191967 m!7733054))

(declare-fun m!7733056 () Bool)

(assert (=> b!7028633 m!7733056))

(assert (=> d!2191483 d!2191967))

(declare-fun d!2191969 () Bool)

(assert (=> d!2191969 (= (map!15744 z1!570 lambda!413591) (choose!53134 z1!570 lambda!413591))))

(declare-fun bs!1869609 () Bool)

(assert (= bs!1869609 d!2191969))

(declare-fun m!7733058 () Bool)

(assert (=> bs!1869609 m!7733058))

(assert (=> d!2191483 d!2191969))

(declare-fun d!2191971 () Bool)

(declare-fun res!2869169 () Bool)

(declare-fun e!4225330 () Bool)

(assert (=> d!2191971 (=> res!2869169 e!4225330)))

(assert (=> d!2191971 (= res!2869169 ((_ is Nil!67759) lt!2515960))))

(assert (=> d!2191971 (= (noDuplicate!2617 lt!2515960) e!4225330)))

(declare-fun b!7028634 () Bool)

(declare-fun e!4225331 () Bool)

(assert (=> b!7028634 (= e!4225330 e!4225331)))

(declare-fun res!2869170 () Bool)

(assert (=> b!7028634 (=> (not res!2869170) (not e!4225331))))

(assert (=> b!7028634 (= res!2869170 (not (contains!20446 (t!381644 lt!2515960) (h!74207 lt!2515960))))))

(declare-fun b!7028635 () Bool)

(assert (=> b!7028635 (= e!4225331 (noDuplicate!2617 (t!381644 lt!2515960)))))

(assert (= (and d!2191971 (not res!2869169)) b!7028634))

(assert (= (and b!7028634 res!2869170) b!7028635))

(declare-fun m!7733060 () Bool)

(assert (=> b!7028634 m!7733060))

(declare-fun m!7733062 () Bool)

(assert (=> b!7028635 m!7733062))

(assert (=> d!2191579 d!2191971))

(declare-fun d!2191973 () Bool)

(declare-fun e!4225334 () Bool)

(assert (=> d!2191973 e!4225334))

(declare-fun res!2869171 () Bool)

(assert (=> d!2191973 (=> (not res!2869171) (not e!4225334))))

(declare-fun res!2869172 () List!67883)

(assert (=> d!2191973 (= res!2869171 (noDuplicate!2617 res!2869172))))

(declare-fun e!4225332 () Bool)

(assert (=> d!2191973 e!4225332))

(assert (=> d!2191973 (= (choose!53136 lt!2515849) res!2869172)))

(declare-fun b!7028637 () Bool)

(declare-fun e!4225333 () Bool)

(declare-fun tp!1935927 () Bool)

(assert (=> b!7028637 (= e!4225333 tp!1935927)))

(declare-fun tp!1935928 () Bool)

(declare-fun b!7028636 () Bool)

(assert (=> b!7028636 (= e!4225332 (and (inv!86486 (h!74207 res!2869172)) e!4225333 tp!1935928))))

(declare-fun b!7028638 () Bool)

(assert (=> b!7028638 (= e!4225334 (= (content!13507 res!2869172) lt!2515849))))

(assert (= b!7028636 b!7028637))

(assert (= (and d!2191973 ((_ is Cons!67759) res!2869172)) b!7028636))

(assert (= (and d!2191973 res!2869171) b!7028638))

(declare-fun m!7733064 () Bool)

(assert (=> d!2191973 m!7733064))

(declare-fun m!7733066 () Bool)

(assert (=> b!7028636 m!7733066))

(declare-fun m!7733068 () Bool)

(assert (=> b!7028638 m!7733068))

(assert (=> d!2191579 d!2191973))

(declare-fun c!1306852 () Bool)

(declare-fun c!1306851 () Bool)

(declare-fun call!638233 () Int)

(declare-fun bm!638227 () Bool)

(assert (=> bm!638227 (= call!638233 (regexDepthTotal!292 (ite c!1306851 (reg!17780 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306852 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (regTwo!35414 (h!74205 (exprs!6947 lt!2515860)))))))))

(declare-fun b!7028639 () Bool)

(declare-fun e!4225338 () Int)

(assert (=> b!7028639 (= e!4225338 (+ 1 call!638233))))

(declare-fun b!7028640 () Bool)

(declare-fun e!4225337 () Int)

(declare-fun e!4225336 () Int)

(assert (=> b!7028640 (= e!4225337 e!4225336)))

(declare-fun c!1306853 () Bool)

(assert (=> b!7028640 (= c!1306853 ((_ is Concat!26296) (h!74205 (exprs!6947 lt!2515860))))))

(declare-fun bm!638228 () Bool)

(declare-fun call!638234 () Int)

(assert (=> bm!638228 (= call!638234 call!638233)))

(declare-fun bm!638229 () Bool)

(declare-fun call!638232 () Int)

(assert (=> bm!638229 (= call!638232 (regexDepthTotal!292 (ite c!1306852 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))))))

(declare-fun b!7028641 () Bool)

(assert (=> b!7028641 (= e!4225336 1)))

(declare-fun b!7028643 () Bool)

(assert (=> b!7028643 (= e!4225337 (+ 1 call!638234 call!638232))))

(declare-fun b!7028644 () Bool)

(assert (=> b!7028644 (= c!1306852 ((_ is Union!17451) (h!74205 (exprs!6947 lt!2515860))))))

(assert (=> b!7028644 (= e!4225338 e!4225337)))

(declare-fun b!7028642 () Bool)

(declare-fun e!4225335 () Int)

(assert (=> b!7028642 (= e!4225335 1)))

(declare-fun d!2191975 () Bool)

(declare-fun lt!2516028 () Int)

(assert (=> d!2191975 (> lt!2516028 0)))

(assert (=> d!2191975 (= lt!2516028 e!4225335)))

(declare-fun c!1306854 () Bool)

(assert (=> d!2191975 (= c!1306854 ((_ is ElementMatch!17451) (h!74205 (exprs!6947 lt!2515860))))))

(assert (=> d!2191975 (= (regexDepthTotal!292 (h!74205 (exprs!6947 lt!2515860))) lt!2516028)))

(declare-fun b!7028645 () Bool)

(assert (=> b!7028645 (= e!4225336 (+ 1 call!638232 call!638234))))

(declare-fun b!7028646 () Bool)

(assert (=> b!7028646 (= e!4225335 e!4225338)))

(assert (=> b!7028646 (= c!1306851 ((_ is Star!17451) (h!74205 (exprs!6947 lt!2515860))))))

(assert (= (and d!2191975 c!1306854) b!7028642))

(assert (= (and d!2191975 (not c!1306854)) b!7028646))

(assert (= (and b!7028646 c!1306851) b!7028639))

(assert (= (and b!7028646 (not c!1306851)) b!7028644))

(assert (= (and b!7028644 c!1306852) b!7028643))

(assert (= (and b!7028644 (not c!1306852)) b!7028640))

(assert (= (and b!7028640 c!1306853) b!7028645))

(assert (= (and b!7028640 (not c!1306853)) b!7028641))

(assert (= (or b!7028643 b!7028645) bm!638229))

(assert (= (or b!7028643 b!7028645) bm!638228))

(assert (= (or b!7028639 bm!638228) bm!638227))

(declare-fun m!7733070 () Bool)

(assert (=> bm!638227 m!7733070))

(declare-fun m!7733072 () Bool)

(assert (=> bm!638229 m!7733072))

(assert (=> b!7028072 d!2191975))

(declare-fun d!2191977 () Bool)

(declare-fun lt!2516029 () Int)

(assert (=> d!2191977 (>= lt!2516029 0)))

(declare-fun e!4225339 () Int)

(assert (=> d!2191977 (= lt!2516029 e!4225339)))

(declare-fun c!1306855 () Bool)

(assert (=> d!2191977 (= c!1306855 ((_ is Cons!67757) (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515860))))))))

(assert (=> d!2191977 (= (contextDepthTotal!486 (Context!12895 (t!381642 (exprs!6947 lt!2515860)))) lt!2516029)))

(declare-fun b!7028647 () Bool)

(assert (=> b!7028647 (= e!4225339 (+ (regexDepthTotal!292 (h!74205 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515860)))))) (contextDepthTotal!486 (Context!12895 (t!381642 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515860)))))))))))

(declare-fun b!7028648 () Bool)

(assert (=> b!7028648 (= e!4225339 1)))

(assert (= (and d!2191977 c!1306855) b!7028647))

(assert (= (and d!2191977 (not c!1306855)) b!7028648))

(declare-fun m!7733074 () Bool)

(assert (=> b!7028647 m!7733074))

(declare-fun m!7733076 () Bool)

(assert (=> b!7028647 m!7733076))

(assert (=> b!7028072 d!2191977))

(declare-fun bs!1869610 () Bool)

(declare-fun d!2191979 () Bool)

(assert (= bs!1869610 (and d!2191979 d!2191929)))

(declare-fun lambda!413666 () Int)

(assert (=> bs!1869610 (not (= lambda!413666 lambda!413665))))

(declare-fun bs!1869611 () Bool)

(assert (= bs!1869611 (and d!2191979 d!2191915)))

(assert (=> bs!1869611 (= lambda!413666 lambda!413658)))

(declare-fun bs!1869612 () Bool)

(assert (= bs!1869612 (and d!2191979 b!7027824)))

(assert (=> bs!1869612 (not (= lambda!413666 lambda!413590))))

(declare-fun bs!1869613 () Bool)

(assert (= bs!1869613 (and d!2191979 d!2191917)))

(assert (=> bs!1869613 (= lambda!413666 lambda!413659)))

(declare-fun bs!1869614 () Bool)

(assert (= bs!1869614 (and d!2191979 d!2191925)))

(assert (=> bs!1869614 (= lambda!413666 lambda!413661)))

(declare-fun bs!1869615 () Bool)

(assert (= bs!1869615 (and d!2191979 d!2191927)))

(assert (=> bs!1869615 (not (= lambda!413666 lambda!413662))))

(declare-fun bs!1869616 () Bool)

(assert (= bs!1869616 (and d!2191979 d!2191919)))

(assert (=> bs!1869616 (= lambda!413666 lambda!413660)))

(declare-fun bs!1869617 () Bool)

(assert (= bs!1869617 (and d!2191979 d!2191575)))

(assert (=> bs!1869617 (not (= lambda!413666 lambda!413618))))

(declare-fun bs!1869618 () Bool)

(assert (= bs!1869618 (and d!2191979 d!2191903)))

(assert (=> bs!1869618 (= lambda!413666 lambda!413657)))

(declare-fun bs!1869619 () Bool)

(assert (= bs!1869619 (and d!2191979 d!2191581)))

(assert (=> bs!1869619 (not (= lambda!413666 lambda!413621))))

(declare-fun bs!1869620 () Bool)

(assert (= bs!1869620 (and d!2191979 d!2191885)))

(assert (=> bs!1869620 (= lambda!413666 lambda!413656)))

(assert (=> d!2191979 (= (nullableZipper!2568 lt!2515848) (exists!3367 lt!2515848 lambda!413666))))

(declare-fun bs!1869621 () Bool)

(assert (= bs!1869621 d!2191979))

(declare-fun m!7733078 () Bool)

(assert (=> bs!1869621 m!7733078))

(assert (=> b!7028059 d!2191979))

(assert (=> d!2191549 d!2191547))

(declare-fun d!2191981 () Bool)

(assert (=> d!2191981 (= (flatMap!2398 lt!2515843 lambda!413593) (dynLambda!27333 lambda!413593 lt!2515862))))

(assert (=> d!2191981 true))

(declare-fun _$13!4459 () Unit!161568)

(assert (=> d!2191981 (= (choose!53133 lt!2515843 lt!2515862 lambda!413593) _$13!4459)))

(declare-fun b_lambda!265991 () Bool)

(assert (=> (not b_lambda!265991) (not d!2191981)))

(declare-fun bs!1869622 () Bool)

(assert (= bs!1869622 d!2191981))

(assert (=> bs!1869622 m!7731878))

(assert (=> bs!1869622 m!7732258))

(assert (=> d!2191549 d!2191981))

(declare-fun d!2191983 () Bool)

(declare-fun c!1306856 () Bool)

(assert (=> d!2191983 (= c!1306856 (isEmpty!39507 (tail!13528 s!7408)))))

(declare-fun e!4225340 () Bool)

(assert (=> d!2191983 (= (matchZipper!2991 (derivationStepZipper!2907 lt!2515849 (head!14247 s!7408)) (tail!13528 s!7408)) e!4225340)))

(declare-fun b!7028649 () Bool)

(assert (=> b!7028649 (= e!4225340 (nullableZipper!2568 (derivationStepZipper!2907 lt!2515849 (head!14247 s!7408))))))

(declare-fun b!7028650 () Bool)

(assert (=> b!7028650 (= e!4225340 (matchZipper!2991 (derivationStepZipper!2907 (derivationStepZipper!2907 lt!2515849 (head!14247 s!7408)) (head!14247 (tail!13528 s!7408))) (tail!13528 (tail!13528 s!7408))))))

(assert (= (and d!2191983 c!1306856) b!7028649))

(assert (= (and d!2191983 (not c!1306856)) b!7028650))

(assert (=> d!2191983 m!7732328))

(declare-fun m!7733080 () Bool)

(assert (=> d!2191983 m!7733080))

(assert (=> b!7028649 m!7732348))

(declare-fun m!7733082 () Bool)

(assert (=> b!7028649 m!7733082))

(assert (=> b!7028650 m!7732328))

(declare-fun m!7733084 () Bool)

(assert (=> b!7028650 m!7733084))

(assert (=> b!7028650 m!7732348))

(assert (=> b!7028650 m!7733084))

(declare-fun m!7733086 () Bool)

(assert (=> b!7028650 m!7733086))

(assert (=> b!7028650 m!7732328))

(declare-fun m!7733088 () Bool)

(assert (=> b!7028650 m!7733088))

(assert (=> b!7028650 m!7733086))

(assert (=> b!7028650 m!7733088))

(declare-fun m!7733090 () Bool)

(assert (=> b!7028650 m!7733090))

(assert (=> b!7028092 d!2191983))

(declare-fun bs!1869623 () Bool)

(declare-fun d!2191985 () Bool)

(assert (= bs!1869623 (and d!2191985 b!7027814)))

(declare-fun lambda!413667 () Int)

(assert (=> bs!1869623 (= (= (head!14247 s!7408) (h!74206 s!7408)) (= lambda!413667 lambda!413593))))

(declare-fun bs!1869624 () Bool)

(assert (= bs!1869624 (and d!2191985 d!2191545)))

(assert (=> bs!1869624 (= (= (head!14247 s!7408) (h!74206 s!7408)) (= lambda!413667 lambda!413615))))

(declare-fun bs!1869625 () Bool)

(assert (= bs!1869625 (and d!2191985 d!2191601)))

(assert (=> bs!1869625 (= (= (head!14247 s!7408) (h!74206 s!7408)) (= lambda!413667 lambda!413631))))

(declare-fun bs!1869626 () Bool)

(assert (= bs!1869626 (and d!2191985 d!2191875)))

(assert (=> bs!1869626 (= (= (head!14247 s!7408) (head!14247 (t!381643 s!7408))) (= lambda!413667 lambda!413653))))

(assert (=> d!2191985 true))

(assert (=> d!2191985 (= (derivationStepZipper!2907 lt!2515849 (head!14247 s!7408)) (flatMap!2398 lt!2515849 lambda!413667))))

(declare-fun bs!1869627 () Bool)

(assert (= bs!1869627 d!2191985))

(declare-fun m!7733092 () Bool)

(assert (=> bs!1869627 m!7733092))

(assert (=> b!7028092 d!2191985))

(declare-fun d!2191987 () Bool)

(assert (=> d!2191987 (= (head!14247 s!7408) (h!74206 s!7408))))

(assert (=> b!7028092 d!2191987))

(declare-fun d!2191989 () Bool)

(assert (=> d!2191989 (= (tail!13528 s!7408) (t!381643 s!7408))))

(assert (=> b!7028092 d!2191989))

(declare-fun d!2191991 () Bool)

(assert (=> d!2191991 (= (nullable!7162 (h!74205 (exprs!6947 lt!2515855))) (nullableFct!2717 (h!74205 (exprs!6947 lt!2515855))))))

(declare-fun bs!1869628 () Bool)

(assert (= bs!1869628 d!2191991))

(declare-fun m!7733094 () Bool)

(assert (=> bs!1869628 m!7733094))

(assert (=> b!7028070 d!2191991))

(declare-fun d!2191993 () Bool)

(assert (=> d!2191993 (= (flatMap!2398 lt!2515837 lambda!413631) (choose!53132 lt!2515837 lambda!413631))))

(declare-fun bs!1869629 () Bool)

(assert (= bs!1869629 d!2191993))

(declare-fun m!7733096 () Bool)

(assert (=> bs!1869629 m!7733096))

(assert (=> d!2191601 d!2191993))

(declare-fun d!2191995 () Bool)

(declare-fun c!1306857 () Bool)

(assert (=> d!2191995 (= c!1306857 ((_ is Nil!67757) lt!2515936))))

(declare-fun e!4225341 () (InoxSet Regex!17451))

(assert (=> d!2191995 (= (content!13506 lt!2515936) e!4225341)))

(declare-fun b!7028651 () Bool)

(assert (=> b!7028651 (= e!4225341 ((as const (Array Regex!17451 Bool)) false))))

(declare-fun b!7028652 () Bool)

(assert (=> b!7028652 (= e!4225341 ((_ map or) (store ((as const (Array Regex!17451 Bool)) false) (h!74205 lt!2515936) true) (content!13506 (t!381642 lt!2515936))))))

(assert (= (and d!2191995 c!1306857) b!7028651))

(assert (= (and d!2191995 (not c!1306857)) b!7028652))

(declare-fun m!7733098 () Bool)

(assert (=> b!7028652 m!7733098))

(declare-fun m!7733100 () Bool)

(assert (=> b!7028652 m!7733100))

(assert (=> d!2191541 d!2191995))

(declare-fun d!2191997 () Bool)

(declare-fun c!1306858 () Bool)

(assert (=> d!2191997 (= c!1306858 ((_ is Nil!67757) lt!2515844))))

(declare-fun e!4225342 () (InoxSet Regex!17451))

(assert (=> d!2191997 (= (content!13506 lt!2515844) e!4225342)))

(declare-fun b!7028653 () Bool)

(assert (=> b!7028653 (= e!4225342 ((as const (Array Regex!17451 Bool)) false))))

(declare-fun b!7028654 () Bool)

(assert (=> b!7028654 (= e!4225342 ((_ map or) (store ((as const (Array Regex!17451 Bool)) false) (h!74205 lt!2515844) true) (content!13506 (t!381642 lt!2515844))))))

(assert (= (and d!2191997 c!1306858) b!7028653))

(assert (= (and d!2191997 (not c!1306858)) b!7028654))

(declare-fun m!7733102 () Bool)

(assert (=> b!7028654 m!7733102))

(assert (=> b!7028654 m!7733026))

(assert (=> d!2191541 d!2191997))

(assert (=> d!2191541 d!2191957))

(declare-fun e!4225346 () (InoxSet Context!12894))

(declare-fun b!7028655 () Bool)

(assert (=> b!7028655 (= e!4225346 (store ((as const (Array Context!12894 Bool)) false) (ite (or c!1306660 c!1306659) lt!2515862 (Context!12895 call!638146)) true))))

(declare-fun b!7028656 () Bool)

(declare-fun e!4225347 () (InoxSet Context!12894))

(declare-fun call!638236 () (InoxSet Context!12894))

(declare-fun call!638237 () (InoxSet Context!12894))

(assert (=> b!7028656 (= e!4225347 ((_ map or) call!638236 call!638237))))

(declare-fun b!7028657 () Bool)

(declare-fun e!4225348 () (InoxSet Context!12894))

(assert (=> b!7028657 (= e!4225346 e!4225348)))

(declare-fun c!1306860 () Bool)

(assert (=> b!7028657 (= c!1306860 ((_ is Union!17451) (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))))))

(declare-fun b!7028658 () Bool)

(declare-fun e!4225344 () (InoxSet Context!12894))

(assert (=> b!7028658 (= e!4225344 ((as const (Array Context!12894 Bool)) false))))

(declare-fun call!638238 () List!67881)

(declare-fun c!1306863 () Bool)

(declare-fun c!1306859 () Bool)

(declare-fun bm!638230 () Bool)

(declare-fun call!638240 () (InoxSet Context!12894))

(assert (=> bm!638230 (= call!638240 (derivationStepZipperDown!2115 (ite c!1306860 (regOne!35415 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))) (ite c!1306859 (regTwo!35414 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))) (ite c!1306863 (regOne!35414 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))) (reg!17780 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860)))))))))) (ite (or c!1306860 c!1306859) (ite (or c!1306660 c!1306659) lt!2515862 (Context!12895 call!638146)) (Context!12895 call!638238)) (h!74206 s!7408)))))

(declare-fun b!7028659 () Bool)

(declare-fun e!4225345 () (InoxSet Context!12894))

(assert (=> b!7028659 (= e!4225347 e!4225345)))

(assert (=> b!7028659 (= c!1306863 ((_ is Concat!26296) (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))))))

(declare-fun e!4225343 () Bool)

(declare-fun b!7028660 () Bool)

(assert (=> b!7028660 (= e!4225343 (nullable!7162 (regOne!35414 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860)))))))))))

(declare-fun bm!638231 () Bool)

(declare-fun call!638235 () List!67881)

(assert (=> bm!638231 (= call!638238 call!638235)))

(declare-fun bm!638232 () Bool)

(assert (=> bm!638232 (= call!638236 (derivationStepZipperDown!2115 (ite c!1306860 (regTwo!35415 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))) (regOne!35414 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860)))))))) (ite c!1306860 (ite (or c!1306660 c!1306659) lt!2515862 (Context!12895 call!638146)) (Context!12895 call!638235)) (h!74206 s!7408)))))

(declare-fun bm!638233 () Bool)

(assert (=> bm!638233 (= call!638237 call!638240)))

(declare-fun b!7028661 () Bool)

(declare-fun call!638239 () (InoxSet Context!12894))

(assert (=> b!7028661 (= e!4225345 call!638239)))

(declare-fun b!7028662 () Bool)

(assert (=> b!7028662 (= e!4225348 ((_ map or) call!638240 call!638236))))

(declare-fun c!1306861 () Bool)

(declare-fun d!2191999 () Bool)

(assert (=> d!2191999 (= c!1306861 (and ((_ is ElementMatch!17451) (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))) (= (c!1306580 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))) (h!74206 s!7408))))))

(assert (=> d!2191999 (= (derivationStepZipperDown!2115 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860)))))) (ite (or c!1306660 c!1306659) lt!2515862 (Context!12895 call!638146)) (h!74206 s!7408)) e!4225346)))

(declare-fun bm!638234 () Bool)

(assert (=> bm!638234 (= call!638239 call!638237)))

(declare-fun b!7028663 () Bool)

(assert (=> b!7028663 (= e!4225344 call!638239)))

(declare-fun b!7028664 () Bool)

(declare-fun c!1306862 () Bool)

(assert (=> b!7028664 (= c!1306862 ((_ is Star!17451) (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))))))

(assert (=> b!7028664 (= e!4225345 e!4225344)))

(declare-fun bm!638235 () Bool)

(assert (=> bm!638235 (= call!638235 ($colon$colon!2563 (exprs!6947 (ite (or c!1306660 c!1306659) lt!2515862 (Context!12895 call!638146))) (ite (or c!1306859 c!1306863) (regTwo!35414 (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))) (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860)))))))))))

(declare-fun b!7028665 () Bool)

(assert (=> b!7028665 (= c!1306859 e!4225343)))

(declare-fun res!2869173 () Bool)

(assert (=> b!7028665 (=> (not res!2869173) (not e!4225343))))

(assert (=> b!7028665 (= res!2869173 ((_ is Concat!26296) (ite c!1306660 (regOne!35415 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306659 (regTwo!35414 (h!74205 (exprs!6947 lt!2515860))) (ite c!1306663 (regOne!35414 (h!74205 (exprs!6947 lt!2515860))) (reg!17780 (h!74205 (exprs!6947 lt!2515860))))))))))

(assert (=> b!7028665 (= e!4225348 e!4225347)))

(assert (= (and d!2191999 c!1306861) b!7028655))

(assert (= (and d!2191999 (not c!1306861)) b!7028657))

(assert (= (and b!7028657 c!1306860) b!7028662))

(assert (= (and b!7028657 (not c!1306860)) b!7028665))

(assert (= (and b!7028665 res!2869173) b!7028660))

(assert (= (and b!7028665 c!1306859) b!7028656))

(assert (= (and b!7028665 (not c!1306859)) b!7028659))

(assert (= (and b!7028659 c!1306863) b!7028661))

(assert (= (and b!7028659 (not c!1306863)) b!7028664))

(assert (= (and b!7028664 c!1306862) b!7028663))

(assert (= (and b!7028664 (not c!1306862)) b!7028658))

(assert (= (or b!7028661 b!7028663) bm!638231))

(assert (= (or b!7028661 b!7028663) bm!638234))

(assert (= (or b!7028656 bm!638234) bm!638233))

(assert (= (or b!7028656 bm!638231) bm!638235))

(assert (= (or b!7028662 bm!638233) bm!638230))

(assert (= (or b!7028662 b!7028656) bm!638232))

(declare-fun m!7733104 () Bool)

(assert (=> bm!638232 m!7733104))

(declare-fun m!7733106 () Bool)

(assert (=> b!7028655 m!7733106))

(declare-fun m!7733108 () Bool)

(assert (=> bm!638235 m!7733108))

(declare-fun m!7733110 () Bool)

(assert (=> b!7028660 m!7733110))

(declare-fun m!7733112 () Bool)

(assert (=> bm!638230 m!7733112))

(assert (=> bm!638138 d!2191999))

(declare-fun b!7028666 () Bool)

(declare-fun e!4225352 () (InoxSet Context!12894))

(assert (=> b!7028666 (= e!4225352 (store ((as const (Array Context!12894 Bool)) false) (Context!12895 (t!381642 (exprs!6947 lt!2515855))) true))))

(declare-fun b!7028667 () Bool)

(declare-fun e!4225353 () (InoxSet Context!12894))

(declare-fun call!638242 () (InoxSet Context!12894))

(declare-fun call!638243 () (InoxSet Context!12894))

(assert (=> b!7028667 (= e!4225353 ((_ map or) call!638242 call!638243))))

(declare-fun b!7028668 () Bool)

(declare-fun e!4225354 () (InoxSet Context!12894))

(assert (=> b!7028668 (= e!4225352 e!4225354)))

(declare-fun c!1306865 () Bool)

(assert (=> b!7028668 (= c!1306865 ((_ is Union!17451) (h!74205 (exprs!6947 lt!2515855))))))

(declare-fun b!7028669 () Bool)

(declare-fun e!4225350 () (InoxSet Context!12894))

(assert (=> b!7028669 (= e!4225350 ((as const (Array Context!12894 Bool)) false))))

(declare-fun call!638246 () (InoxSet Context!12894))

(declare-fun c!1306868 () Bool)

(declare-fun call!638244 () List!67881)

(declare-fun bm!638236 () Bool)

(declare-fun c!1306864 () Bool)

(assert (=> bm!638236 (= call!638246 (derivationStepZipperDown!2115 (ite c!1306865 (regOne!35415 (h!74205 (exprs!6947 lt!2515855))) (ite c!1306864 (regTwo!35414 (h!74205 (exprs!6947 lt!2515855))) (ite c!1306868 (regOne!35414 (h!74205 (exprs!6947 lt!2515855))) (reg!17780 (h!74205 (exprs!6947 lt!2515855)))))) (ite (or c!1306865 c!1306864) (Context!12895 (t!381642 (exprs!6947 lt!2515855))) (Context!12895 call!638244)) (h!74206 s!7408)))))

(declare-fun b!7028670 () Bool)

(declare-fun e!4225351 () (InoxSet Context!12894))

(assert (=> b!7028670 (= e!4225353 e!4225351)))

(assert (=> b!7028670 (= c!1306868 ((_ is Concat!26296) (h!74205 (exprs!6947 lt!2515855))))))

(declare-fun b!7028671 () Bool)

(declare-fun e!4225349 () Bool)

(assert (=> b!7028671 (= e!4225349 (nullable!7162 (regOne!35414 (h!74205 (exprs!6947 lt!2515855)))))))

(declare-fun bm!638237 () Bool)

(declare-fun call!638241 () List!67881)

(assert (=> bm!638237 (= call!638244 call!638241)))

(declare-fun bm!638238 () Bool)

(assert (=> bm!638238 (= call!638242 (derivationStepZipperDown!2115 (ite c!1306865 (regTwo!35415 (h!74205 (exprs!6947 lt!2515855))) (regOne!35414 (h!74205 (exprs!6947 lt!2515855)))) (ite c!1306865 (Context!12895 (t!381642 (exprs!6947 lt!2515855))) (Context!12895 call!638241)) (h!74206 s!7408)))))

(declare-fun bm!638239 () Bool)

(assert (=> bm!638239 (= call!638243 call!638246)))

(declare-fun b!7028672 () Bool)

(declare-fun call!638245 () (InoxSet Context!12894))

(assert (=> b!7028672 (= e!4225351 call!638245)))

(declare-fun b!7028673 () Bool)

(assert (=> b!7028673 (= e!4225354 ((_ map or) call!638246 call!638242))))

(declare-fun d!2192001 () Bool)

(declare-fun c!1306866 () Bool)

(assert (=> d!2192001 (= c!1306866 (and ((_ is ElementMatch!17451) (h!74205 (exprs!6947 lt!2515855))) (= (c!1306580 (h!74205 (exprs!6947 lt!2515855))) (h!74206 s!7408))))))

(assert (=> d!2192001 (= (derivationStepZipperDown!2115 (h!74205 (exprs!6947 lt!2515855)) (Context!12895 (t!381642 (exprs!6947 lt!2515855))) (h!74206 s!7408)) e!4225352)))

(declare-fun bm!638240 () Bool)

(assert (=> bm!638240 (= call!638245 call!638243)))

(declare-fun b!7028674 () Bool)

(assert (=> b!7028674 (= e!4225350 call!638245)))

(declare-fun b!7028675 () Bool)

(declare-fun c!1306867 () Bool)

(assert (=> b!7028675 (= c!1306867 ((_ is Star!17451) (h!74205 (exprs!6947 lt!2515855))))))

(assert (=> b!7028675 (= e!4225351 e!4225350)))

(declare-fun bm!638241 () Bool)

(assert (=> bm!638241 (= call!638241 ($colon$colon!2563 (exprs!6947 (Context!12895 (t!381642 (exprs!6947 lt!2515855)))) (ite (or c!1306864 c!1306868) (regTwo!35414 (h!74205 (exprs!6947 lt!2515855))) (h!74205 (exprs!6947 lt!2515855)))))))

(declare-fun b!7028676 () Bool)

(assert (=> b!7028676 (= c!1306864 e!4225349)))

(declare-fun res!2869174 () Bool)

(assert (=> b!7028676 (=> (not res!2869174) (not e!4225349))))

(assert (=> b!7028676 (= res!2869174 ((_ is Concat!26296) (h!74205 (exprs!6947 lt!2515855))))))

(assert (=> b!7028676 (= e!4225354 e!4225353)))

(assert (= (and d!2192001 c!1306866) b!7028666))

(assert (= (and d!2192001 (not c!1306866)) b!7028668))

(assert (= (and b!7028668 c!1306865) b!7028673))

(assert (= (and b!7028668 (not c!1306865)) b!7028676))

(assert (= (and b!7028676 res!2869174) b!7028671))

(assert (= (and b!7028676 c!1306864) b!7028667))

(assert (= (and b!7028676 (not c!1306864)) b!7028670))

(assert (= (and b!7028670 c!1306868) b!7028672))

(assert (= (and b!7028670 (not c!1306868)) b!7028675))

(assert (= (and b!7028675 c!1306867) b!7028674))

(assert (= (and b!7028675 (not c!1306867)) b!7028669))

(assert (= (or b!7028672 b!7028674) bm!638237))

(assert (= (or b!7028672 b!7028674) bm!638240))

(assert (= (or b!7028667 bm!638240) bm!638239))

(assert (= (or b!7028667 bm!638237) bm!638241))

(assert (= (or b!7028673 bm!638239) bm!638236))

(assert (= (or b!7028673 b!7028667) bm!638238))

(declare-fun m!7733114 () Bool)

(assert (=> bm!638238 m!7733114))

(declare-fun m!7733116 () Bool)

(assert (=> b!7028666 m!7733116))

(declare-fun m!7733118 () Bool)

(assert (=> bm!638241 m!7733118))

(declare-fun m!7733120 () Bool)

(assert (=> b!7028671 m!7733120))

(declare-fun m!7733122 () Bool)

(assert (=> bm!638236 m!7733122))

(assert (=> bm!638144 d!2192001))

(assert (=> d!2191521 d!2191855))

(declare-fun d!2192003 () Bool)

(declare-fun res!2869175 () Bool)

(declare-fun e!4225355 () Bool)

(assert (=> d!2192003 (=> res!2869175 e!4225355)))

(assert (=> d!2192003 (= res!2869175 ((_ is Nil!67757) (exprs!6947 setElem!49040)))))

(assert (=> d!2192003 (= (forall!16356 (exprs!6947 setElem!49040) lambda!413630) e!4225355)))

(declare-fun b!7028677 () Bool)

(declare-fun e!4225356 () Bool)

(assert (=> b!7028677 (= e!4225355 e!4225356)))

(declare-fun res!2869176 () Bool)

(assert (=> b!7028677 (=> (not res!2869176) (not e!4225356))))

(assert (=> b!7028677 (= res!2869176 (dynLambda!27337 lambda!413630 (h!74205 (exprs!6947 setElem!49040))))))

(declare-fun b!7028678 () Bool)

(assert (=> b!7028678 (= e!4225356 (forall!16356 (t!381642 (exprs!6947 setElem!49040)) lambda!413630))))

(assert (= (and d!2192003 (not res!2869175)) b!7028677))

(assert (= (and b!7028677 res!2869176) b!7028678))

(declare-fun b_lambda!265993 () Bool)

(assert (=> (not b_lambda!265993) (not b!7028677)))

(declare-fun m!7733124 () Bool)

(assert (=> b!7028677 m!7733124))

(declare-fun m!7733126 () Bool)

(assert (=> b!7028678 m!7733126))

(assert (=> d!2191589 d!2192003))

(declare-fun d!2192005 () Bool)

(declare-fun c!1306869 () Bool)

(assert (=> d!2192005 (= c!1306869 (isEmpty!39507 (tail!13528 (t!381643 s!7408))))))

(declare-fun e!4225357 () Bool)

(assert (=> d!2192005 (= (matchZipper!2991 (derivationStepZipper!2907 lt!2515859 (head!14247 (t!381643 s!7408))) (tail!13528 (t!381643 s!7408))) e!4225357)))

(declare-fun b!7028679 () Bool)

(assert (=> b!7028679 (= e!4225357 (nullableZipper!2568 (derivationStepZipper!2907 lt!2515859 (head!14247 (t!381643 s!7408)))))))

(declare-fun b!7028680 () Bool)

(assert (=> b!7028680 (= e!4225357 (matchZipper!2991 (derivationStepZipper!2907 (derivationStepZipper!2907 lt!2515859 (head!14247 (t!381643 s!7408))) (head!14247 (tail!13528 (t!381643 s!7408)))) (tail!13528 (tail!13528 (t!381643 s!7408)))))))

(assert (= (and d!2192005 c!1306869) b!7028679))

(assert (= (and d!2192005 (not c!1306869)) b!7028680))

(assert (=> d!2192005 m!7732198))

(assert (=> d!2192005 m!7732872))

(assert (=> b!7028679 m!7732206))

(declare-fun m!7733128 () Bool)

(assert (=> b!7028679 m!7733128))

(assert (=> b!7028680 m!7732198))

(assert (=> b!7028680 m!7732876))

(assert (=> b!7028680 m!7732206))

(assert (=> b!7028680 m!7732876))

(declare-fun m!7733130 () Bool)

(assert (=> b!7028680 m!7733130))

(assert (=> b!7028680 m!7732198))

(assert (=> b!7028680 m!7732880))

(assert (=> b!7028680 m!7733130))

(assert (=> b!7028680 m!7732880))

(declare-fun m!7733132 () Bool)

(assert (=> b!7028680 m!7733132))

(assert (=> b!7027996 d!2192005))

(declare-fun bs!1869630 () Bool)

(declare-fun d!2192007 () Bool)

(assert (= bs!1869630 (and d!2192007 d!2191601)))

(declare-fun lambda!413668 () Int)

(assert (=> bs!1869630 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413668 lambda!413631))))

(declare-fun bs!1869631 () Bool)

(assert (= bs!1869631 (and d!2192007 d!2191545)))

(assert (=> bs!1869631 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413668 lambda!413615))))

(declare-fun bs!1869632 () Bool)

(assert (= bs!1869632 (and d!2192007 d!2191875)))

(assert (=> bs!1869632 (= lambda!413668 lambda!413653)))

(declare-fun bs!1869633 () Bool)

(assert (= bs!1869633 (and d!2192007 b!7027814)))

(assert (=> bs!1869633 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413668 lambda!413593))))

(declare-fun bs!1869634 () Bool)

(assert (= bs!1869634 (and d!2192007 d!2191985)))

(assert (=> bs!1869634 (= (= (head!14247 (t!381643 s!7408)) (head!14247 s!7408)) (= lambda!413668 lambda!413667))))

(assert (=> d!2192007 true))

(assert (=> d!2192007 (= (derivationStepZipper!2907 lt!2515859 (head!14247 (t!381643 s!7408))) (flatMap!2398 lt!2515859 lambda!413668))))

(declare-fun bs!1869635 () Bool)

(assert (= bs!1869635 d!2192007))

(declare-fun m!7733134 () Bool)

(assert (=> bs!1869635 m!7733134))

(assert (=> b!7027996 d!2192007))

(assert (=> b!7027996 d!2191877))

(assert (=> b!7027996 d!2191879))

(assert (=> d!2191565 d!2191559))

(declare-fun d!2192009 () Bool)

(assert (=> d!2192009 (= (map!15744 lt!2515867 lambda!413591) (store ((as const (Array Context!12894 Bool)) false) (dynLambda!27332 lambda!413591 lt!2515855) true))))

(assert (=> d!2192009 true))

(declare-fun _$12!2315 () Unit!161568)

(assert (=> d!2192009 (= (choose!53135 lt!2515867 lt!2515855 lambda!413591) _$12!2315)))

(declare-fun b_lambda!265995 () Bool)

(assert (=> (not b_lambda!265995) (not d!2192009)))

(declare-fun bs!1869636 () Bool)

(assert (= bs!1869636 d!2192009))

(assert (=> bs!1869636 m!7731846))

(assert (=> bs!1869636 m!7732290))

(assert (=> bs!1869636 m!7732290))

(assert (=> bs!1869636 m!7732294))

(assert (=> d!2191565 d!2192009))

(declare-fun d!2192011 () Bool)

(declare-fun lt!2516030 () Int)

(assert (=> d!2192011 (>= lt!2516030 0)))

(declare-fun e!4225358 () Int)

(assert (=> d!2192011 (= lt!2516030 e!4225358)))

(declare-fun c!1306870 () Bool)

(assert (=> d!2192011 (= c!1306870 ((_ is Nil!67757) lt!2515913))))

(assert (=> d!2192011 (= (size!41046 lt!2515913) lt!2516030)))

(declare-fun b!7028681 () Bool)

(assert (=> b!7028681 (= e!4225358 0)))

(declare-fun b!7028682 () Bool)

(assert (=> b!7028682 (= e!4225358 (+ 1 (size!41046 (t!381642 lt!2515913))))))

(assert (= (and d!2192011 c!1306870) b!7028681))

(assert (= (and d!2192011 (not c!1306870)) b!7028682))

(declare-fun m!7733136 () Bool)

(assert (=> b!7028682 m!7733136))

(assert (=> b!7027915 d!2192011))

(declare-fun d!2192013 () Bool)

(declare-fun lt!2516031 () Int)

(assert (=> d!2192013 (>= lt!2516031 0)))

(declare-fun e!4225359 () Int)

(assert (=> d!2192013 (= lt!2516031 e!4225359)))

(declare-fun c!1306871 () Bool)

(assert (=> d!2192013 (= c!1306871 ((_ is Nil!67757) (exprs!6947 lt!2515860)))))

(assert (=> d!2192013 (= (size!41046 (exprs!6947 lt!2515860)) lt!2516031)))

(declare-fun b!7028683 () Bool)

(assert (=> b!7028683 (= e!4225359 0)))

(declare-fun b!7028684 () Bool)

(assert (=> b!7028684 (= e!4225359 (+ 1 (size!41046 (t!381642 (exprs!6947 lt!2515860)))))))

(assert (= (and d!2192013 c!1306871) b!7028683))

(assert (= (and d!2192013 (not c!1306871)) b!7028684))

(assert (=> b!7028684 m!7732930))

(assert (=> b!7027915 d!2192013))

(assert (=> b!7027915 d!2191851))

(declare-fun d!2192015 () Bool)

(declare-fun c!1306872 () Bool)

(assert (=> d!2192015 (= c!1306872 (isEmpty!39507 (tail!13528 s!7408)))))

(declare-fun e!4225360 () Bool)

(assert (=> d!2192015 (= (matchZipper!2991 (derivationStepZipper!2907 lt!2515842 (head!14247 s!7408)) (tail!13528 s!7408)) e!4225360)))

(declare-fun b!7028685 () Bool)

(assert (=> b!7028685 (= e!4225360 (nullableZipper!2568 (derivationStepZipper!2907 lt!2515842 (head!14247 s!7408))))))

(declare-fun b!7028686 () Bool)

(assert (=> b!7028686 (= e!4225360 (matchZipper!2991 (derivationStepZipper!2907 (derivationStepZipper!2907 lt!2515842 (head!14247 s!7408)) (head!14247 (tail!13528 s!7408))) (tail!13528 (tail!13528 s!7408))))))

(assert (= (and d!2192015 c!1306872) b!7028685))

(assert (= (and d!2192015 (not c!1306872)) b!7028686))

(assert (=> d!2192015 m!7732328))

(assert (=> d!2192015 m!7733080))

(assert (=> b!7028685 m!7732326))

(declare-fun m!7733138 () Bool)

(assert (=> b!7028685 m!7733138))

(assert (=> b!7028686 m!7732328))

(assert (=> b!7028686 m!7733084))

(assert (=> b!7028686 m!7732326))

(assert (=> b!7028686 m!7733084))

(declare-fun m!7733140 () Bool)

(assert (=> b!7028686 m!7733140))

(assert (=> b!7028686 m!7732328))

(assert (=> b!7028686 m!7733088))

(assert (=> b!7028686 m!7733140))

(assert (=> b!7028686 m!7733088))

(declare-fun m!7733142 () Bool)

(assert (=> b!7028686 m!7733142))

(assert (=> b!7028089 d!2192015))

(declare-fun bs!1869637 () Bool)

(declare-fun d!2192017 () Bool)

(assert (= bs!1869637 (and d!2192017 d!2191601)))

(declare-fun lambda!413669 () Int)

(assert (=> bs!1869637 (= (= (head!14247 s!7408) (h!74206 s!7408)) (= lambda!413669 lambda!413631))))

(declare-fun bs!1869638 () Bool)

(assert (= bs!1869638 (and d!2192017 d!2191545)))

(assert (=> bs!1869638 (= (= (head!14247 s!7408) (h!74206 s!7408)) (= lambda!413669 lambda!413615))))

(declare-fun bs!1869639 () Bool)

(assert (= bs!1869639 (and d!2192017 d!2192007)))

(assert (=> bs!1869639 (= (= (head!14247 s!7408) (head!14247 (t!381643 s!7408))) (= lambda!413669 lambda!413668))))

(declare-fun bs!1869640 () Bool)

(assert (= bs!1869640 (and d!2192017 d!2191875)))

(assert (=> bs!1869640 (= (= (head!14247 s!7408) (head!14247 (t!381643 s!7408))) (= lambda!413669 lambda!413653))))

(declare-fun bs!1869641 () Bool)

(assert (= bs!1869641 (and d!2192017 b!7027814)))

(assert (=> bs!1869641 (= (= (head!14247 s!7408) (h!74206 s!7408)) (= lambda!413669 lambda!413593))))

(declare-fun bs!1869642 () Bool)

(assert (= bs!1869642 (and d!2192017 d!2191985)))

(assert (=> bs!1869642 (= lambda!413669 lambda!413667)))

(assert (=> d!2192017 true))

(assert (=> d!2192017 (= (derivationStepZipper!2907 lt!2515842 (head!14247 s!7408)) (flatMap!2398 lt!2515842 lambda!413669))))

(declare-fun bs!1869643 () Bool)

(assert (= bs!1869643 d!2192017))

(declare-fun m!7733144 () Bool)

(assert (=> bs!1869643 m!7733144))

(assert (=> b!7028089 d!2192017))

(assert (=> b!7028089 d!2191987))

(assert (=> b!7028089 d!2191989))

(declare-fun d!2192019 () Bool)

(declare-fun c!1306873 () Bool)

(assert (=> d!2192019 (= c!1306873 (isEmpty!39507 (tail!13528 s!7408)))))

(declare-fun e!4225361 () Bool)

(assert (=> d!2192019 (= (matchZipper!2991 (derivationStepZipper!2907 lt!2515843 (head!14247 s!7408)) (tail!13528 s!7408)) e!4225361)))

(declare-fun b!7028687 () Bool)

(assert (=> b!7028687 (= e!4225361 (nullableZipper!2568 (derivationStepZipper!2907 lt!2515843 (head!14247 s!7408))))))

(declare-fun b!7028688 () Bool)

(assert (=> b!7028688 (= e!4225361 (matchZipper!2991 (derivationStepZipper!2907 (derivationStepZipper!2907 lt!2515843 (head!14247 s!7408)) (head!14247 (tail!13528 s!7408))) (tail!13528 (tail!13528 s!7408))))))

(assert (= (and d!2192019 c!1306873) b!7028687))

(assert (= (and d!2192019 (not c!1306873)) b!7028688))

(assert (=> d!2192019 m!7732328))

(assert (=> d!2192019 m!7733080))

(assert (=> b!7028687 m!7732364))

(declare-fun m!7733146 () Bool)

(assert (=> b!7028687 m!7733146))

(assert (=> b!7028688 m!7732328))

(assert (=> b!7028688 m!7733084))

(assert (=> b!7028688 m!7732364))

(assert (=> b!7028688 m!7733084))

(declare-fun m!7733148 () Bool)

(assert (=> b!7028688 m!7733148))

(assert (=> b!7028688 m!7732328))

(assert (=> b!7028688 m!7733088))

(assert (=> b!7028688 m!7733148))

(assert (=> b!7028688 m!7733088))

(declare-fun m!7733150 () Bool)

(assert (=> b!7028688 m!7733150))

(assert (=> b!7028096 d!2192019))

(declare-fun bs!1869644 () Bool)

(declare-fun d!2192021 () Bool)

(assert (= bs!1869644 (and d!2192021 d!2191601)))

(declare-fun lambda!413670 () Int)

(assert (=> bs!1869644 (= (= (head!14247 s!7408) (h!74206 s!7408)) (= lambda!413670 lambda!413631))))

(declare-fun bs!1869645 () Bool)

(assert (= bs!1869645 (and d!2192021 d!2191545)))

(assert (=> bs!1869645 (= (= (head!14247 s!7408) (h!74206 s!7408)) (= lambda!413670 lambda!413615))))

(declare-fun bs!1869646 () Bool)

(assert (= bs!1869646 (and d!2192021 d!2192007)))

(assert (=> bs!1869646 (= (= (head!14247 s!7408) (head!14247 (t!381643 s!7408))) (= lambda!413670 lambda!413668))))

(declare-fun bs!1869647 () Bool)

(assert (= bs!1869647 (and d!2192021 d!2191875)))

(assert (=> bs!1869647 (= (= (head!14247 s!7408) (head!14247 (t!381643 s!7408))) (= lambda!413670 lambda!413653))))

(declare-fun bs!1869648 () Bool)

(assert (= bs!1869648 (and d!2192021 d!2192017)))

(assert (=> bs!1869648 (= lambda!413670 lambda!413669)))

(declare-fun bs!1869649 () Bool)

(assert (= bs!1869649 (and d!2192021 b!7027814)))

(assert (=> bs!1869649 (= (= (head!14247 s!7408) (h!74206 s!7408)) (= lambda!413670 lambda!413593))))

(declare-fun bs!1869650 () Bool)

(assert (= bs!1869650 (and d!2192021 d!2191985)))

(assert (=> bs!1869650 (= lambda!413670 lambda!413667)))

(assert (=> d!2192021 true))

(assert (=> d!2192021 (= (derivationStepZipper!2907 lt!2515843 (head!14247 s!7408)) (flatMap!2398 lt!2515843 lambda!413670))))

(declare-fun bs!1869651 () Bool)

(assert (= bs!1869651 d!2192021))

(declare-fun m!7733152 () Bool)

(assert (=> bs!1869651 m!7733152))

(assert (=> b!7028096 d!2192021))

(assert (=> b!7028096 d!2191987))

(assert (=> b!7028096 d!2191989))

(declare-fun b!7028689 () Bool)

(declare-fun e!4225365 () (InoxSet Context!12894))

(assert (=> b!7028689 (= e!4225365 (store ((as const (Array Context!12894 Bool)) false) (ite c!1306660 lt!2515862 (Context!12895 call!638143)) true))))

(declare-fun b!7028690 () Bool)

(declare-fun e!4225366 () (InoxSet Context!12894))

(declare-fun call!638248 () (InoxSet Context!12894))

(declare-fun call!638249 () (InoxSet Context!12894))

(assert (=> b!7028690 (= e!4225366 ((_ map or) call!638248 call!638249))))

(declare-fun b!7028691 () Bool)

(declare-fun e!4225367 () (InoxSet Context!12894))

(assert (=> b!7028691 (= e!4225365 e!4225367)))

(declare-fun c!1306875 () Bool)

(assert (=> b!7028691 (= c!1306875 ((_ is Union!17451) (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))))))

(declare-fun b!7028692 () Bool)

(declare-fun e!4225363 () (InoxSet Context!12894))

(assert (=> b!7028692 (= e!4225363 ((as const (Array Context!12894 Bool)) false))))

(declare-fun call!638250 () List!67881)

(declare-fun c!1306874 () Bool)

(declare-fun c!1306878 () Bool)

(declare-fun call!638252 () (InoxSet Context!12894))

(declare-fun bm!638242 () Bool)

(assert (=> bm!638242 (= call!638252 (derivationStepZipperDown!2115 (ite c!1306875 (regOne!35415 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))) (ite c!1306874 (regTwo!35414 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))) (ite c!1306878 (regOne!35414 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))) (reg!17780 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860)))))))) (ite (or c!1306875 c!1306874) (ite c!1306660 lt!2515862 (Context!12895 call!638143)) (Context!12895 call!638250)) (h!74206 s!7408)))))

(declare-fun b!7028693 () Bool)

(declare-fun e!4225364 () (InoxSet Context!12894))

(assert (=> b!7028693 (= e!4225366 e!4225364)))

(assert (=> b!7028693 (= c!1306878 ((_ is Concat!26296) (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))))))

(declare-fun b!7028694 () Bool)

(declare-fun e!4225362 () Bool)

(assert (=> b!7028694 (= e!4225362 (nullable!7162 (regOne!35414 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860)))))))))

(declare-fun bm!638243 () Bool)

(declare-fun call!638247 () List!67881)

(assert (=> bm!638243 (= call!638250 call!638247)))

(declare-fun bm!638244 () Bool)

(assert (=> bm!638244 (= call!638248 (derivationStepZipperDown!2115 (ite c!1306875 (regTwo!35415 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))) (regOne!35414 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860)))))) (ite c!1306875 (ite c!1306660 lt!2515862 (Context!12895 call!638143)) (Context!12895 call!638247)) (h!74206 s!7408)))))

(declare-fun bm!638245 () Bool)

(assert (=> bm!638245 (= call!638249 call!638252)))

(declare-fun b!7028695 () Bool)

(declare-fun call!638251 () (InoxSet Context!12894))

(assert (=> b!7028695 (= e!4225364 call!638251)))

(declare-fun b!7028696 () Bool)

(assert (=> b!7028696 (= e!4225367 ((_ map or) call!638252 call!638248))))

(declare-fun c!1306876 () Bool)

(declare-fun d!2192023 () Bool)

(assert (=> d!2192023 (= c!1306876 (and ((_ is ElementMatch!17451) (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))) (= (c!1306580 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))) (h!74206 s!7408))))))

(assert (=> d!2192023 (= (derivationStepZipperDown!2115 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860)))) (ite c!1306660 lt!2515862 (Context!12895 call!638143)) (h!74206 s!7408)) e!4225365)))

(declare-fun bm!638246 () Bool)

(assert (=> bm!638246 (= call!638251 call!638249)))

(declare-fun b!7028697 () Bool)

(assert (=> b!7028697 (= e!4225363 call!638251)))

(declare-fun b!7028698 () Bool)

(declare-fun c!1306877 () Bool)

(assert (=> b!7028698 (= c!1306877 ((_ is Star!17451) (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))))))

(assert (=> b!7028698 (= e!4225364 e!4225363)))

(declare-fun bm!638247 () Bool)

(assert (=> bm!638247 (= call!638247 ($colon$colon!2563 (exprs!6947 (ite c!1306660 lt!2515862 (Context!12895 call!638143))) (ite (or c!1306874 c!1306878) (regTwo!35414 (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))) (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860)))))))))

(declare-fun b!7028699 () Bool)

(assert (=> b!7028699 (= c!1306874 e!4225362)))

(declare-fun res!2869177 () Bool)

(assert (=> b!7028699 (=> (not res!2869177) (not e!4225362))))

(assert (=> b!7028699 (= res!2869177 ((_ is Concat!26296) (ite c!1306660 (regTwo!35415 (h!74205 (exprs!6947 lt!2515860))) (regOne!35414 (h!74205 (exprs!6947 lt!2515860))))))))

(assert (=> b!7028699 (= e!4225367 e!4225366)))

(assert (= (and d!2192023 c!1306876) b!7028689))

(assert (= (and d!2192023 (not c!1306876)) b!7028691))

(assert (= (and b!7028691 c!1306875) b!7028696))

(assert (= (and b!7028691 (not c!1306875)) b!7028699))

(assert (= (and b!7028699 res!2869177) b!7028694))

(assert (= (and b!7028699 c!1306874) b!7028690))

(assert (= (and b!7028699 (not c!1306874)) b!7028693))

(assert (= (and b!7028693 c!1306878) b!7028695))

(assert (= (and b!7028693 (not c!1306878)) b!7028698))

(assert (= (and b!7028698 c!1306877) b!7028697))

(assert (= (and b!7028698 (not c!1306877)) b!7028692))

(assert (= (or b!7028695 b!7028697) bm!638243))

(assert (= (or b!7028695 b!7028697) bm!638246))

(assert (= (or b!7028690 bm!638246) bm!638245))

(assert (= (or b!7028690 bm!638243) bm!638247))

(assert (= (or b!7028696 bm!638245) bm!638242))

(assert (= (or b!7028696 b!7028690) bm!638244))

(declare-fun m!7733154 () Bool)

(assert (=> bm!638244 m!7733154))

(declare-fun m!7733156 () Bool)

(assert (=> b!7028689 m!7733156))

(declare-fun m!7733158 () Bool)

(assert (=> bm!638247 m!7733158))

(declare-fun m!7733160 () Bool)

(assert (=> b!7028694 m!7733160))

(declare-fun m!7733162 () Bool)

(assert (=> bm!638242 m!7733162))

(assert (=> bm!638140 d!2192023))

(declare-fun d!2192025 () Bool)

(assert (=> d!2192025 true))

(declare-fun setRes!49063 () Bool)

(assert (=> d!2192025 setRes!49063))

(declare-fun condSetEmpty!49063 () Bool)

(declare-fun res!2869178 () (InoxSet Context!12894))

(assert (=> d!2192025 (= condSetEmpty!49063 (= res!2869178 ((as const (Array Context!12894 Bool)) false)))))

(assert (=> d!2192025 (= (choose!53132 lt!2515843 lambda!413593) res!2869178)))

(declare-fun setIsEmpty!49063 () Bool)

(assert (=> setIsEmpty!49063 setRes!49063))

(declare-fun setNonEmpty!49063 () Bool)

(declare-fun tp!1935929 () Bool)

(declare-fun setElem!49063 () Context!12894)

(declare-fun e!4225368 () Bool)

(assert (=> setNonEmpty!49063 (= setRes!49063 (and tp!1935929 (inv!86486 setElem!49063) e!4225368))))

(declare-fun setRest!49063 () (InoxSet Context!12894))

(assert (=> setNonEmpty!49063 (= res!2869178 ((_ map or) (store ((as const (Array Context!12894 Bool)) false) setElem!49063 true) setRest!49063))))

(declare-fun b!7028700 () Bool)

(declare-fun tp!1935930 () Bool)

(assert (=> b!7028700 (= e!4225368 tp!1935930)))

(assert (= (and d!2192025 condSetEmpty!49063) setIsEmpty!49063))

(assert (= (and d!2192025 (not condSetEmpty!49063)) setNonEmpty!49063))

(assert (= setNonEmpty!49063 b!7028700))

(declare-fun m!7733164 () Bool)

(assert (=> setNonEmpty!49063 m!7733164))

(assert (=> d!2191547 d!2192025))

(declare-fun d!2192027 () Bool)

(declare-fun res!2869179 () Bool)

(declare-fun e!4225369 () Bool)

(assert (=> d!2192027 (=> res!2869179 e!4225369)))

(assert (=> d!2192027 (= res!2869179 ((_ is Nil!67757) (++!15484 lt!2515844 (exprs!6947 ct2!306))))))

(assert (=> d!2192027 (= (forall!16356 (++!15484 lt!2515844 (exprs!6947 ct2!306)) lambda!413592) e!4225369)))

(declare-fun b!7028701 () Bool)

(declare-fun e!4225370 () Bool)

(assert (=> b!7028701 (= e!4225369 e!4225370)))

(declare-fun res!2869180 () Bool)

(assert (=> b!7028701 (=> (not res!2869180) (not e!4225370))))

(assert (=> b!7028701 (= res!2869180 (dynLambda!27337 lambda!413592 (h!74205 (++!15484 lt!2515844 (exprs!6947 ct2!306)))))))

(declare-fun b!7028702 () Bool)

(assert (=> b!7028702 (= e!4225370 (forall!16356 (t!381642 (++!15484 lt!2515844 (exprs!6947 ct2!306))) lambda!413592))))

(assert (= (and d!2192027 (not res!2869179)) b!7028701))

(assert (= (and b!7028701 res!2869180) b!7028702))

(declare-fun b_lambda!265997 () Bool)

(assert (=> (not b_lambda!265997) (not b!7028701)))

(declare-fun m!7733166 () Bool)

(assert (=> b!7028701 m!7733166))

(declare-fun m!7733168 () Bool)

(assert (=> b!7028702 m!7733168))

(assert (=> d!2191503 d!2192027))

(assert (=> d!2191503 d!2191541))

(declare-fun d!2192029 () Bool)

(assert (=> d!2192029 (forall!16356 (++!15484 lt!2515844 (exprs!6947 ct2!306)) lambda!413592)))

(assert (=> d!2192029 true))

(declare-fun _$78!570 () Unit!161568)

(assert (=> d!2192029 (= (choose!53129 lt!2515844 (exprs!6947 ct2!306) lambda!413592) _$78!570)))

(declare-fun bs!1869652 () Bool)

(assert (= bs!1869652 d!2192029))

(assert (=> bs!1869652 m!7731834))

(assert (=> bs!1869652 m!7731834))

(assert (=> bs!1869652 m!7732168))

(assert (=> d!2191503 d!2192029))

(declare-fun d!2192031 () Bool)

(declare-fun res!2869181 () Bool)

(declare-fun e!4225371 () Bool)

(assert (=> d!2192031 (=> res!2869181 e!4225371)))

(assert (=> d!2192031 (= res!2869181 ((_ is Nil!67757) lt!2515844))))

(assert (=> d!2192031 (= (forall!16356 lt!2515844 lambda!413592) e!4225371)))

(declare-fun b!7028703 () Bool)

(declare-fun e!4225372 () Bool)

(assert (=> b!7028703 (= e!4225371 e!4225372)))

(declare-fun res!2869182 () Bool)

(assert (=> b!7028703 (=> (not res!2869182) (not e!4225372))))

(assert (=> b!7028703 (= res!2869182 (dynLambda!27337 lambda!413592 (h!74205 lt!2515844)))))

(declare-fun b!7028704 () Bool)

(assert (=> b!7028704 (= e!4225372 (forall!16356 (t!381642 lt!2515844) lambda!413592))))

(assert (= (and d!2192031 (not res!2869181)) b!7028703))

(assert (= (and b!7028703 res!2869182) b!7028704))

(declare-fun b_lambda!265999 () Bool)

(assert (=> (not b_lambda!265999) (not b!7028703)))

(declare-fun m!7733170 () Bool)

(assert (=> b!7028703 m!7733170))

(declare-fun m!7733172 () Bool)

(assert (=> b!7028704 m!7733172))

(assert (=> d!2191503 d!2192031))

(declare-fun d!2192033 () Bool)

(assert (=> d!2192033 (= (nullable!7162 (h!74205 (exprs!6947 lt!2515841))) (nullableFct!2717 (h!74205 (exprs!6947 lt!2515841))))))

(declare-fun bs!1869653 () Bool)

(assert (= bs!1869653 d!2192033))

(declare-fun m!7733174 () Bool)

(assert (=> bs!1869653 m!7733174))

(assert (=> b!7028100 d!2192033))

(assert (=> d!2191595 d!2191599))

(declare-fun d!2192035 () Bool)

(assert (=> d!2192035 (= (flatMap!2398 lt!2515837 lambda!413593) (dynLambda!27333 lambda!413593 lt!2515841))))

(assert (=> d!2192035 true))

(declare-fun _$13!4460 () Unit!161568)

(assert (=> d!2192035 (= (choose!53133 lt!2515837 lt!2515841 lambda!413593) _$13!4460)))

(declare-fun b_lambda!266001 () Bool)

(assert (=> (not b_lambda!266001) (not d!2192035)))

(declare-fun bs!1869654 () Bool)

(assert (= bs!1869654 d!2192035))

(assert (=> bs!1869654 m!7731916))

(assert (=> bs!1869654 m!7732368))

(assert (=> d!2191595 d!2192035))

(declare-fun d!2192037 () Bool)

(declare-fun c!1306879 () Bool)

(assert (=> d!2192037 (= c!1306879 (isEmpty!39507 (tail!13528 (t!381643 s!7408))))))

(declare-fun e!4225373 () Bool)

(assert (=> d!2192037 (= (matchZipper!2991 (derivationStepZipper!2907 lt!2515847 (head!14247 (t!381643 s!7408))) (tail!13528 (t!381643 s!7408))) e!4225373)))

(declare-fun b!7028705 () Bool)

(assert (=> b!7028705 (= e!4225373 (nullableZipper!2568 (derivationStepZipper!2907 lt!2515847 (head!14247 (t!381643 s!7408)))))))

(declare-fun b!7028706 () Bool)

(assert (=> b!7028706 (= e!4225373 (matchZipper!2991 (derivationStepZipper!2907 (derivationStepZipper!2907 lt!2515847 (head!14247 (t!381643 s!7408))) (head!14247 (tail!13528 (t!381643 s!7408)))) (tail!13528 (tail!13528 (t!381643 s!7408)))))))

(assert (= (and d!2192037 c!1306879) b!7028705))

(assert (= (and d!2192037 (not c!1306879)) b!7028706))

(assert (=> d!2192037 m!7732198))

(assert (=> d!2192037 m!7732872))

(assert (=> b!7028705 m!7732196))

(declare-fun m!7733176 () Bool)

(assert (=> b!7028705 m!7733176))

(assert (=> b!7028706 m!7732198))

(assert (=> b!7028706 m!7732876))

(assert (=> b!7028706 m!7732196))

(assert (=> b!7028706 m!7732876))

(declare-fun m!7733178 () Bool)

(assert (=> b!7028706 m!7733178))

(assert (=> b!7028706 m!7732198))

(assert (=> b!7028706 m!7732880))

(assert (=> b!7028706 m!7733178))

(assert (=> b!7028706 m!7732880))

(declare-fun m!7733180 () Bool)

(assert (=> b!7028706 m!7733180))

(assert (=> b!7027991 d!2192037))

(declare-fun bs!1869655 () Bool)

(declare-fun d!2192039 () Bool)

(assert (= bs!1869655 (and d!2192039 d!2191601)))

(declare-fun lambda!413671 () Int)

(assert (=> bs!1869655 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413671 lambda!413631))))

(declare-fun bs!1869656 () Bool)

(assert (= bs!1869656 (and d!2192039 d!2191545)))

(assert (=> bs!1869656 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413671 lambda!413615))))

(declare-fun bs!1869657 () Bool)

(assert (= bs!1869657 (and d!2192039 d!2192007)))

(assert (=> bs!1869657 (= lambda!413671 lambda!413668)))

(declare-fun bs!1869658 () Bool)

(assert (= bs!1869658 (and d!2192039 d!2191875)))

(assert (=> bs!1869658 (= lambda!413671 lambda!413653)))

(declare-fun bs!1869659 () Bool)

(assert (= bs!1869659 (and d!2192039 d!2192021)))

(assert (=> bs!1869659 (= (= (head!14247 (t!381643 s!7408)) (head!14247 s!7408)) (= lambda!413671 lambda!413670))))

(declare-fun bs!1869660 () Bool)

(assert (= bs!1869660 (and d!2192039 d!2192017)))

(assert (=> bs!1869660 (= (= (head!14247 (t!381643 s!7408)) (head!14247 s!7408)) (= lambda!413671 lambda!413669))))

(declare-fun bs!1869661 () Bool)

(assert (= bs!1869661 (and d!2192039 b!7027814)))

(assert (=> bs!1869661 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413671 lambda!413593))))

(declare-fun bs!1869662 () Bool)

(assert (= bs!1869662 (and d!2192039 d!2191985)))

(assert (=> bs!1869662 (= (= (head!14247 (t!381643 s!7408)) (head!14247 s!7408)) (= lambda!413671 lambda!413667))))

(assert (=> d!2192039 true))

(assert (=> d!2192039 (= (derivationStepZipper!2907 lt!2515847 (head!14247 (t!381643 s!7408))) (flatMap!2398 lt!2515847 lambda!413671))))

(declare-fun bs!1869663 () Bool)

(assert (= bs!1869663 d!2192039))

(declare-fun m!7733182 () Bool)

(assert (=> bs!1869663 m!7733182))

(assert (=> b!7027991 d!2192039))

(assert (=> b!7027991 d!2191877))

(assert (=> b!7027991 d!2191879))

(assert (=> bs!1869385 d!2191597))

(assert (=> d!2191553 d!2191555))

(declare-fun d!2192041 () Bool)

(assert (=> d!2192041 (= (flatMap!2398 lt!2515867 lambda!413593) (dynLambda!27333 lambda!413593 lt!2515855))))

(assert (=> d!2192041 true))

(declare-fun _$13!4461 () Unit!161568)

(assert (=> d!2192041 (= (choose!53133 lt!2515867 lt!2515855 lambda!413593) _$13!4461)))

(declare-fun b_lambda!266003 () Bool)

(assert (=> (not b_lambda!266003) (not d!2192041)))

(declare-fun bs!1869664 () Bool)

(assert (= bs!1869664 d!2192041))

(assert (=> bs!1869664 m!7731854))

(assert (=> bs!1869664 m!7732268))

(assert (=> d!2191553 d!2192041))

(declare-fun b!7028719 () Bool)

(declare-fun e!4225382 () Context!12894)

(declare-fun e!4225384 () Context!12894)

(assert (=> b!7028719 (= e!4225382 e!4225384)))

(declare-fun c!1306884 () Bool)

(assert (=> b!7028719 (= c!1306884 ((_ is Cons!67759) (toList!10794 lt!2515849)))))

(declare-fun b!7028720 () Bool)

(assert (=> b!7028720 (= e!4225382 (h!74207 (toList!10794 lt!2515849)))))

(declare-fun b!7028721 () Bool)

(declare-fun e!4225383 () Bool)

(assert (=> b!7028721 (= e!4225383 (dynLambda!27334 lambda!413590 (h!74207 (toList!10794 lt!2515849))))))

(declare-fun b!7028722 () Bool)

(assert (=> b!7028722 (= e!4225384 (getWitness!1448 (t!381644 (toList!10794 lt!2515849)) lambda!413590))))

(declare-fun d!2192043 () Bool)

(declare-fun e!4225385 () Bool)

(assert (=> d!2192043 e!4225385))

(declare-fun res!2869187 () Bool)

(assert (=> d!2192043 (=> (not res!2869187) (not e!4225385))))

(declare-fun lt!2516036 () Context!12894)

(assert (=> d!2192043 (= res!2869187 (dynLambda!27334 lambda!413590 lt!2516036))))

(assert (=> d!2192043 (= lt!2516036 e!4225382)))

(declare-fun c!1306885 () Bool)

(assert (=> d!2192043 (= c!1306885 e!4225383)))

(declare-fun res!2869188 () Bool)

(assert (=> d!2192043 (=> (not res!2869188) (not e!4225383))))

(assert (=> d!2192043 (= res!2869188 ((_ is Cons!67759) (toList!10794 lt!2515849)))))

(assert (=> d!2192043 (exists!3365 (toList!10794 lt!2515849) lambda!413590)))

(assert (=> d!2192043 (= (getWitness!1448 (toList!10794 lt!2515849) lambda!413590) lt!2516036)))

(declare-fun b!7028723 () Bool)

(assert (=> b!7028723 (= e!4225385 (contains!20446 (toList!10794 lt!2515849) lt!2516036))))

(declare-fun b!7028724 () Bool)

(declare-fun lt!2516037 () Unit!161568)

(declare-fun Unit!161571 () Unit!161568)

(assert (=> b!7028724 (= lt!2516037 Unit!161571)))

(assert (=> b!7028724 false))

(declare-fun head!14249 (List!67883) Context!12894)

(assert (=> b!7028724 (= e!4225384 (head!14249 (toList!10794 lt!2515849)))))

(assert (= (and d!2192043 res!2869188) b!7028721))

(assert (= (and d!2192043 c!1306885) b!7028720))

(assert (= (and d!2192043 (not c!1306885)) b!7028719))

(assert (= (and b!7028719 c!1306884) b!7028722))

(assert (= (and b!7028719 (not c!1306884)) b!7028724))

(assert (= (and d!2192043 res!2869187) b!7028723))

(declare-fun b_lambda!266005 () Bool)

(assert (=> (not b_lambda!266005) (not b!7028721)))

(declare-fun b_lambda!266007 () Bool)

(assert (=> (not b_lambda!266007) (not d!2192043)))

(declare-fun m!7733184 () Bool)

(assert (=> b!7028721 m!7733184))

(assert (=> b!7028723 m!7731898))

(declare-fun m!7733186 () Bool)

(assert (=> b!7028723 m!7733186))

(assert (=> b!7028724 m!7731898))

(declare-fun m!7733188 () Bool)

(assert (=> b!7028724 m!7733188))

(declare-fun m!7733190 () Bool)

(assert (=> d!2192043 m!7733190))

(assert (=> d!2192043 m!7731898))

(declare-fun m!7733192 () Bool)

(assert (=> d!2192043 m!7733192))

(declare-fun m!7733194 () Bool)

(assert (=> b!7028722 m!7733194))

(assert (=> d!2191573 d!2192043))

(assert (=> d!2191573 d!2191579))

(declare-fun d!2192045 () Bool)

(declare-fun lt!2516040 () Bool)

(assert (=> d!2192045 (= lt!2516040 (exists!3365 (toList!10794 lt!2515849) lambda!413590))))

(declare-fun choose!53140 ((InoxSet Context!12894) Int) Bool)

(assert (=> d!2192045 (= lt!2516040 (choose!53140 lt!2515849 lambda!413590))))

(assert (=> d!2192045 (= (exists!3367 lt!2515849 lambda!413590) lt!2516040)))

(declare-fun bs!1869665 () Bool)

(assert (= bs!1869665 d!2192045))

(assert (=> bs!1869665 m!7731898))

(assert (=> bs!1869665 m!7731898))

(assert (=> bs!1869665 m!7733192))

(declare-fun m!7733196 () Bool)

(assert (=> bs!1869665 m!7733196))

(assert (=> d!2191573 d!2192045))

(declare-fun bs!1869666 () Bool)

(declare-fun d!2192047 () Bool)

(assert (= bs!1869666 (and d!2192047 b!7027809)))

(declare-fun lambda!413672 () Int)

(assert (=> bs!1869666 (= lambda!413672 lambda!413592)))

(declare-fun bs!1869667 () Bool)

(assert (= bs!1869667 (and d!2192047 d!2191587)))

(assert (=> bs!1869667 (= lambda!413672 lambda!413629)))

(declare-fun bs!1869668 () Bool)

(assert (= bs!1869668 (and d!2192047 d!2191589)))

(assert (=> bs!1869668 (= lambda!413672 lambda!413630)))

(assert (=> d!2192047 (= (inv!86486 setElem!49046) (forall!16356 (exprs!6947 setElem!49046) lambda!413672))))

(declare-fun bs!1869669 () Bool)

(assert (= bs!1869669 d!2192047))

(declare-fun m!7733198 () Bool)

(assert (=> bs!1869669 m!7733198))

(assert (=> setNonEmpty!49046 d!2192047))

(declare-fun d!2192049 () Bool)

(declare-fun c!1306886 () Bool)

(assert (=> d!2192049 (= c!1306886 (isEmpty!39507 (tail!13528 (t!381643 s!7408))))))

(declare-fun e!4225386 () Bool)

(assert (=> d!2192049 (= (matchZipper!2991 (derivationStepZipper!2907 lt!2515870 (head!14247 (t!381643 s!7408))) (tail!13528 (t!381643 s!7408))) e!4225386)))

(declare-fun b!7028725 () Bool)

(assert (=> b!7028725 (= e!4225386 (nullableZipper!2568 (derivationStepZipper!2907 lt!2515870 (head!14247 (t!381643 s!7408)))))))

(declare-fun b!7028726 () Bool)

(assert (=> b!7028726 (= e!4225386 (matchZipper!2991 (derivationStepZipper!2907 (derivationStepZipper!2907 lt!2515870 (head!14247 (t!381643 s!7408))) (head!14247 (tail!13528 (t!381643 s!7408)))) (tail!13528 (tail!13528 (t!381643 s!7408)))))))

(assert (= (and d!2192049 c!1306886) b!7028725))

(assert (= (and d!2192049 (not c!1306886)) b!7028726))

(assert (=> d!2192049 m!7732198))

(assert (=> d!2192049 m!7732872))

(assert (=> b!7028725 m!7732216))

(declare-fun m!7733200 () Bool)

(assert (=> b!7028725 m!7733200))

(assert (=> b!7028726 m!7732198))

(assert (=> b!7028726 m!7732876))

(assert (=> b!7028726 m!7732216))

(assert (=> b!7028726 m!7732876))

(declare-fun m!7733202 () Bool)

(assert (=> b!7028726 m!7733202))

(assert (=> b!7028726 m!7732198))

(assert (=> b!7028726 m!7732880))

(assert (=> b!7028726 m!7733202))

(assert (=> b!7028726 m!7732880))

(declare-fun m!7733204 () Bool)

(assert (=> b!7028726 m!7733204))

(assert (=> b!7028004 d!2192049))

(declare-fun bs!1869670 () Bool)

(declare-fun d!2192051 () Bool)

(assert (= bs!1869670 (and d!2192051 d!2191601)))

(declare-fun lambda!413673 () Int)

(assert (=> bs!1869670 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413673 lambda!413631))))

(declare-fun bs!1869671 () Bool)

(assert (= bs!1869671 (and d!2192051 d!2192039)))

(assert (=> bs!1869671 (= lambda!413673 lambda!413671)))

(declare-fun bs!1869672 () Bool)

(assert (= bs!1869672 (and d!2192051 d!2191545)))

(assert (=> bs!1869672 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413673 lambda!413615))))

(declare-fun bs!1869673 () Bool)

(assert (= bs!1869673 (and d!2192051 d!2192007)))

(assert (=> bs!1869673 (= lambda!413673 lambda!413668)))

(declare-fun bs!1869674 () Bool)

(assert (= bs!1869674 (and d!2192051 d!2191875)))

(assert (=> bs!1869674 (= lambda!413673 lambda!413653)))

(declare-fun bs!1869675 () Bool)

(assert (= bs!1869675 (and d!2192051 d!2192021)))

(assert (=> bs!1869675 (= (= (head!14247 (t!381643 s!7408)) (head!14247 s!7408)) (= lambda!413673 lambda!413670))))

(declare-fun bs!1869676 () Bool)

(assert (= bs!1869676 (and d!2192051 d!2192017)))

(assert (=> bs!1869676 (= (= (head!14247 (t!381643 s!7408)) (head!14247 s!7408)) (= lambda!413673 lambda!413669))))

(declare-fun bs!1869677 () Bool)

(assert (= bs!1869677 (and d!2192051 b!7027814)))

(assert (=> bs!1869677 (= (= (head!14247 (t!381643 s!7408)) (h!74206 s!7408)) (= lambda!413673 lambda!413593))))

(declare-fun bs!1869678 () Bool)

(assert (= bs!1869678 (and d!2192051 d!2191985)))

(assert (=> bs!1869678 (= (= (head!14247 (t!381643 s!7408)) (head!14247 s!7408)) (= lambda!413673 lambda!413667))))

(assert (=> d!2192051 true))

(assert (=> d!2192051 (= (derivationStepZipper!2907 lt!2515870 (head!14247 (t!381643 s!7408))) (flatMap!2398 lt!2515870 lambda!413673))))

(declare-fun bs!1869679 () Bool)

(assert (= bs!1869679 d!2192051))

(declare-fun m!7733206 () Bool)

(assert (=> bs!1869679 m!7733206))

(assert (=> b!7028004 d!2192051))

(assert (=> b!7028004 d!2191877))

(assert (=> b!7028004 d!2191879))

(declare-fun d!2192053 () Bool)

(assert (=> d!2192053 (= (flatMap!2398 lt!2515843 lambda!413615) (choose!53132 lt!2515843 lambda!413615))))

(declare-fun bs!1869680 () Bool)

(assert (= bs!1869680 d!2192053))

(declare-fun m!7733208 () Bool)

(assert (=> bs!1869680 m!7733208))

(assert (=> d!2191545 d!2192053))

(assert (=> bs!1869382 d!2191561))

(declare-fun d!2192055 () Bool)

(assert (=> d!2192055 (= (nullable!7162 (regOne!35414 (h!74205 (exprs!6947 lt!2515860)))) (nullableFct!2717 (regOne!35414 (h!74205 (exprs!6947 lt!2515860)))))))

(declare-fun bs!1869681 () Bool)

(assert (= bs!1869681 d!2192055))

(declare-fun m!7733210 () Bool)

(assert (=> bs!1869681 m!7733210))

(assert (=> b!7028051 d!2192055))

(declare-fun b!7028727 () Bool)

(declare-fun e!4225387 () Bool)

(declare-fun tp!1935931 () Bool)

(assert (=> b!7028727 (= e!4225387 (and tp_is_empty!44127 tp!1935931))))

(assert (=> b!7028111 (= tp!1935839 e!4225387)))

(assert (= (and b!7028111 ((_ is Cons!67758) (t!381643 (t!381643 s!7408)))) b!7028727))

(declare-fun b!7028738 () Bool)

(declare-fun e!4225390 () Bool)

(assert (=> b!7028738 (= e!4225390 tp_is_empty!44127)))

(declare-fun b!7028739 () Bool)

(declare-fun tp!1935944 () Bool)

(declare-fun tp!1935942 () Bool)

(assert (=> b!7028739 (= e!4225390 (and tp!1935944 tp!1935942))))

(declare-fun b!7028740 () Bool)

(declare-fun tp!1935943 () Bool)

(assert (=> b!7028740 (= e!4225390 tp!1935943)))

(assert (=> b!7028117 (= tp!1935846 e!4225390)))

(declare-fun b!7028741 () Bool)

(declare-fun tp!1935945 () Bool)

(declare-fun tp!1935946 () Bool)

(assert (=> b!7028741 (= e!4225390 (and tp!1935945 tp!1935946))))

(assert (= (and b!7028117 ((_ is ElementMatch!17451) (h!74205 (exprs!6947 setElem!49040)))) b!7028738))

(assert (= (and b!7028117 ((_ is Concat!26296) (h!74205 (exprs!6947 setElem!49040)))) b!7028739))

(assert (= (and b!7028117 ((_ is Star!17451) (h!74205 (exprs!6947 setElem!49040)))) b!7028740))

(assert (= (and b!7028117 ((_ is Union!17451) (h!74205 (exprs!6947 setElem!49040)))) b!7028741))

(declare-fun b!7028742 () Bool)

(declare-fun e!4225391 () Bool)

(declare-fun tp!1935947 () Bool)

(declare-fun tp!1935948 () Bool)

(assert (=> b!7028742 (= e!4225391 (and tp!1935947 tp!1935948))))

(assert (=> b!7028117 (= tp!1935847 e!4225391)))

(assert (= (and b!7028117 ((_ is Cons!67757) (t!381642 (exprs!6947 setElem!49040)))) b!7028742))

(declare-fun b!7028743 () Bool)

(declare-fun e!4225392 () Bool)

(assert (=> b!7028743 (= e!4225392 tp_is_empty!44127)))

(declare-fun b!7028744 () Bool)

(declare-fun tp!1935951 () Bool)

(declare-fun tp!1935949 () Bool)

(assert (=> b!7028744 (= e!4225392 (and tp!1935951 tp!1935949))))

(declare-fun b!7028745 () Bool)

(declare-fun tp!1935950 () Bool)

(assert (=> b!7028745 (= e!4225392 tp!1935950)))

(assert (=> b!7028116 (= tp!1935844 e!4225392)))

(declare-fun b!7028746 () Bool)

(declare-fun tp!1935952 () Bool)

(declare-fun tp!1935953 () Bool)

(assert (=> b!7028746 (= e!4225392 (and tp!1935952 tp!1935953))))

(assert (= (and b!7028116 ((_ is ElementMatch!17451) (h!74205 (exprs!6947 ct2!306)))) b!7028743))

(assert (= (and b!7028116 ((_ is Concat!26296) (h!74205 (exprs!6947 ct2!306)))) b!7028744))

(assert (= (and b!7028116 ((_ is Star!17451) (h!74205 (exprs!6947 ct2!306)))) b!7028745))

(assert (= (and b!7028116 ((_ is Union!17451) (h!74205 (exprs!6947 ct2!306)))) b!7028746))

(declare-fun b!7028747 () Bool)

(declare-fun e!4225393 () Bool)

(declare-fun tp!1935954 () Bool)

(declare-fun tp!1935955 () Bool)

(assert (=> b!7028747 (= e!4225393 (and tp!1935954 tp!1935955))))

(assert (=> b!7028116 (= tp!1935845 e!4225393)))

(assert (= (and b!7028116 ((_ is Cons!67757) (t!381642 (exprs!6947 ct2!306)))) b!7028747))

(declare-fun condSetEmpty!49064 () Bool)

(assert (=> setNonEmpty!49046 (= condSetEmpty!49064 (= setRest!49046 ((as const (Array Context!12894 Bool)) false)))))

(declare-fun setRes!49064 () Bool)

(assert (=> setNonEmpty!49046 (= tp!1935836 setRes!49064)))

(declare-fun setIsEmpty!49064 () Bool)

(assert (=> setIsEmpty!49064 setRes!49064))

(declare-fun tp!1935957 () Bool)

(declare-fun e!4225394 () Bool)

(declare-fun setNonEmpty!49064 () Bool)

(declare-fun setElem!49064 () Context!12894)

(assert (=> setNonEmpty!49064 (= setRes!49064 (and tp!1935957 (inv!86486 setElem!49064) e!4225394))))

(declare-fun setRest!49064 () (InoxSet Context!12894))

(assert (=> setNonEmpty!49064 (= setRest!49046 ((_ map or) (store ((as const (Array Context!12894 Bool)) false) setElem!49064 true) setRest!49064))))

(declare-fun b!7028748 () Bool)

(declare-fun tp!1935956 () Bool)

(assert (=> b!7028748 (= e!4225394 tp!1935956)))

(assert (= (and setNonEmpty!49046 condSetEmpty!49064) setIsEmpty!49064))

(assert (= (and setNonEmpty!49046 (not condSetEmpty!49064)) setNonEmpty!49064))

(assert (= setNonEmpty!49064 b!7028748))

(declare-fun m!7733212 () Bool)

(assert (=> setNonEmpty!49064 m!7733212))

(declare-fun b!7028749 () Bool)

(declare-fun e!4225395 () Bool)

(declare-fun tp!1935958 () Bool)

(declare-fun tp!1935959 () Bool)

(assert (=> b!7028749 (= e!4225395 (and tp!1935958 tp!1935959))))

(assert (=> b!7028106 (= tp!1935835 e!4225395)))

(assert (= (and b!7028106 ((_ is Cons!67757) (exprs!6947 setElem!49046))) b!7028749))

(declare-fun b_lambda!266009 () Bool)

(assert (= b_lambda!265981 (or b!7027809 b_lambda!266009)))

(declare-fun bs!1869682 () Bool)

(declare-fun d!2192057 () Bool)

(assert (= bs!1869682 (and d!2192057 b!7027809)))

(declare-fun validRegex!8926 (Regex!17451) Bool)

(assert (=> bs!1869682 (= (dynLambda!27337 lambda!413592 (h!74205 (++!15484 (exprs!6947 lt!2515860) (exprs!6947 ct2!306)))) (validRegex!8926 (h!74205 (++!15484 (exprs!6947 lt!2515860) (exprs!6947 ct2!306)))))))

(declare-fun m!7733214 () Bool)

(assert (=> bs!1869682 m!7733214))

(assert (=> b!7028458 d!2192057))

(declare-fun b_lambda!266011 () Bool)

(assert (= b_lambda!265997 (or b!7027809 b_lambda!266011)))

(declare-fun bs!1869683 () Bool)

(declare-fun d!2192059 () Bool)

(assert (= bs!1869683 (and d!2192059 b!7027809)))

(assert (=> bs!1869683 (= (dynLambda!27337 lambda!413592 (h!74205 (++!15484 lt!2515844 (exprs!6947 ct2!306)))) (validRegex!8926 (h!74205 (++!15484 lt!2515844 (exprs!6947 ct2!306)))))))

(declare-fun m!7733216 () Bool)

(assert (=> bs!1869683 m!7733216))

(assert (=> b!7028701 d!2192059))

(declare-fun b_lambda!266013 () Bool)

(assert (= b_lambda!265989 (or b!7027809 b_lambda!266013)))

(declare-fun bs!1869684 () Bool)

(declare-fun d!2192061 () Bool)

(assert (= bs!1869684 (and d!2192061 b!7027809)))

(declare-fun lt!2516041 () Unit!161568)

(assert (=> bs!1869684 (= lt!2516041 (lemmaConcatPreservesForall!772 (exprs!6947 a!13158) (exprs!6947 ct2!306) lambda!413592))))

(assert (=> bs!1869684 (= (dynLambda!27332 lambda!413591 a!13158) (Context!12895 (++!15484 (exprs!6947 a!13158) (exprs!6947 ct2!306))))))

(declare-fun m!7733218 () Bool)

(assert (=> bs!1869684 m!7733218))

(declare-fun m!7733220 () Bool)

(assert (=> bs!1869684 m!7733220))

(assert (=> d!2191967 d!2192061))

(declare-fun b_lambda!266015 () Bool)

(assert (= b_lambda!265987 (or d!2191575 b_lambda!266015)))

(declare-fun bs!1869685 () Bool)

(declare-fun d!2192063 () Bool)

(assert (= bs!1869685 (and d!2192063 d!2191575)))

(assert (=> bs!1869685 (= (dynLambda!27334 lambda!413618 (h!74207 lt!2515845)) (not (dynLambda!27334 lambda!413590 (h!74207 lt!2515845))))))

(declare-fun b_lambda!266037 () Bool)

(assert (=> (not b_lambda!266037) (not bs!1869685)))

(declare-fun m!7733222 () Bool)

(assert (=> bs!1869685 m!7733222))

(assert (=> b!7028564 d!2192063))

(declare-fun b_lambda!266017 () Bool)

(assert (= b_lambda!265983 (or b!7027809 b_lambda!266017)))

(declare-fun bs!1869686 () Bool)

(declare-fun d!2192065 () Bool)

(assert (= bs!1869686 (and d!2192065 b!7027809)))

(assert (=> bs!1869686 (= (dynLambda!27337 lambda!413592 (h!74205 (exprs!6947 lt!2515860))) (validRegex!8926 (h!74205 (exprs!6947 lt!2515860))))))

(declare-fun m!7733224 () Bool)

(assert (=> bs!1869686 m!7733224))

(assert (=> b!7028460 d!2192065))

(declare-fun b_lambda!266019 () Bool)

(assert (= b_lambda!265993 (or d!2191589 b_lambda!266019)))

(declare-fun bs!1869687 () Bool)

(declare-fun d!2192067 () Bool)

(assert (= bs!1869687 (and d!2192067 d!2191589)))

(assert (=> bs!1869687 (= (dynLambda!27337 lambda!413630 (h!74205 (exprs!6947 setElem!49040))) (validRegex!8926 (h!74205 (exprs!6947 setElem!49040))))))

(declare-fun m!7733226 () Bool)

(assert (=> bs!1869687 m!7733226))

(assert (=> b!7028677 d!2192067))

(declare-fun b_lambda!266021 () Bool)

(assert (= b_lambda!265999 (or b!7027809 b_lambda!266021)))

(declare-fun bs!1869688 () Bool)

(declare-fun d!2192069 () Bool)

(assert (= bs!1869688 (and d!2192069 b!7027809)))

(assert (=> bs!1869688 (= (dynLambda!27337 lambda!413592 (h!74205 lt!2515844)) (validRegex!8926 (h!74205 lt!2515844)))))

(declare-fun m!7733228 () Bool)

(assert (=> bs!1869688 m!7733228))

(assert (=> b!7028703 d!2192069))

(declare-fun b_lambda!266023 () Bool)

(assert (= b_lambda!265991 (or b!7027814 b_lambda!266023)))

(assert (=> d!2191981 d!2191607))

(declare-fun b_lambda!266025 () Bool)

(assert (= b_lambda!266005 (or b!7027824 b_lambda!266025)))

(declare-fun bs!1869689 () Bool)

(declare-fun d!2192071 () Bool)

(assert (= bs!1869689 (and d!2192071 b!7027824)))

(assert (=> bs!1869689 (= (dynLambda!27334 lambda!413590 (h!74207 (toList!10794 lt!2515849))) (matchZipper!2991 (store ((as const (Array Context!12894 Bool)) false) (h!74207 (toList!10794 lt!2515849)) true) s!7408))))

(declare-fun m!7733230 () Bool)

(assert (=> bs!1869689 m!7733230))

(assert (=> bs!1869689 m!7733230))

(declare-fun m!7733232 () Bool)

(assert (=> bs!1869689 m!7733232))

(assert (=> b!7028721 d!2192071))

(declare-fun b_lambda!266027 () Bool)

(assert (= b_lambda!265995 (or b!7027809 b_lambda!266027)))

(assert (=> d!2192009 d!2191611))

(declare-fun b_lambda!266029 () Bool)

(assert (= b_lambda!266003 (or b!7027814 b_lambda!266029)))

(assert (=> d!2192041 d!2191609))

(declare-fun b_lambda!266031 () Bool)

(assert (= b_lambda!266001 (or b!7027814 b_lambda!266031)))

(assert (=> d!2192035 d!2191615))

(declare-fun b_lambda!266033 () Bool)

(assert (= b_lambda!265985 (or d!2191587 b_lambda!266033)))

(declare-fun bs!1869690 () Bool)

(declare-fun d!2192073 () Bool)

(assert (= bs!1869690 (and d!2192073 d!2191587)))

(assert (=> bs!1869690 (= (dynLambda!27337 lambda!413629 (h!74205 (exprs!6947 ct2!306))) (validRegex!8926 (h!74205 (exprs!6947 ct2!306))))))

(declare-fun m!7733234 () Bool)

(assert (=> bs!1869690 m!7733234))

(assert (=> b!7028553 d!2192073))

(declare-fun b_lambda!266035 () Bool)

(assert (= b_lambda!266007 (or b!7027824 b_lambda!266035)))

(declare-fun bs!1869691 () Bool)

(declare-fun d!2192075 () Bool)

(assert (= bs!1869691 (and d!2192075 b!7027824)))

(assert (=> bs!1869691 (= (dynLambda!27334 lambda!413590 lt!2516036) (matchZipper!2991 (store ((as const (Array Context!12894 Bool)) false) lt!2516036 true) s!7408))))

(declare-fun m!7733236 () Bool)

(assert (=> bs!1869691 m!7733236))

(assert (=> bs!1869691 m!7733236))

(declare-fun m!7733238 () Bool)

(assert (=> bs!1869691 m!7733238))

(assert (=> d!2192043 d!2192075))

(check-sat (not bs!1869689) (not d!2191915) (not bm!638197) (not bm!638226) (not b!7028515) (not b_lambda!265911) (not d!2191885) (not b!7028635) (not b!7028467) (not b!7028705) (not b!7028671) (not b_lambda!265913) (not d!2192037) (not b!7028649) (not bm!638225) (not b!7028589) (not b!7028524) (not b!7028744) (not b!7028545) (not d!2191951) (not b!7028680) (not b_lambda!266031) (not d!2191927) (not d!2191967) (not b!7028626) (not d!2192051) (not b!7028546) (not b!7028554) (not b!7028538) (not b!7028654) (not d!2192045) (not d!2192035) (not d!2191917) (not b_lambda!266025) (not d!2192047) (not b_lambda!266029) (not bm!638209) (not b!7028748) (not b!7028660) (not b!7028588) (not b!7028636) (not d!2192007) (not d!2192053) (not d!2191993) (not bm!638236) (not d!2192043) (not b!7028686) (not b!7028468) (not b_lambda!266015) (not d!2191945) (not b!7028741) (not b!7028558) (not bm!638229) (not d!2192029) (not bm!638244) (not b!7028723) (not d!2192009) (not b!7028449) (not d!2191943) (not b_lambda!265915) (not b_lambda!266023) (not b!7028726) (not b!7028533) (not bs!1869690) (not b!7028724) (not b!7028722) (not d!2191969) (not b!7028600) (not b!7028532) (not b!7028557) (not bs!1869691) (not b!7028652) (not d!2191909) (not bm!638214) (not d!2191983) (not b!7028517) (not b_lambda!266027) (not b!7028451) (not b!7028682) (not bm!638213) (not b!7028747) tp_is_empty!44127 (not b!7028463) (not b!7028632) (not setNonEmpty!49061) (not d!2191859) (not b!7028477) (not b!7028687) (not b_lambda!266013) (not bm!638230) (not b!7028583) (not d!2192005) (not b!7028507) (not setNonEmpty!49063) (not d!2191925) (not b!7028634) (not b!7028452) (not b!7028704) (not d!2191985) (not bs!1869682) (not bs!1869687) (not d!2191857) (not b!7028725) (not d!2192049) (not d!2191889) (not b!7028622) (not bm!638235) (not d!2191979) (not setNonEmpty!49062) (not b!7028582) (not bs!1869686) (not d!2192039) (not b!7028466) (not b!7028439) (not b!7028565) (not b!7028647) (not b!7028571) (not b_lambda!266011) (not b!7028511) (not b_lambda!266021) (not bs!1869688) (not b!7028585) (not b!7028727) (not bm!638241) (not b!7028749) (not b!7028624) (not d!2192017) (not bm!638232) (not d!2191873) (not bm!638199) (not b!7028471) (not b!7028684) (not bm!638202) (not d!2191863) (not bm!638215) (not b!7028638) (not b!7028739) (not b!7028679) (not b!7028446) (not d!2191903) (not bm!638238) (not d!2191931) (not b!7028694) (not b_lambda!265917) (not b_lambda!266017) (not b!7028552) (not d!2192015) (not d!2191875) (not d!2192033) (not bs!1869684) (not b!7028509) (not b!7028542) (not d!2191913) (not d!2191865) (not b!7028537) (not b!7028685) (not bm!638242) (not b!7028678) (not b!7028746) (not setNonEmpty!49058) (not b!7028637) (not d!2191869) (not d!2191853) (not bm!638212) (not b!7028518) (not d!2192041) (not b!7028742) (not b!7028462) (not b_lambda!266019) (not d!2191991) (not d!2192019) (not b!7028461) (not b!7028688) (not bm!638247) (not b_lambda!266009) (not b!7028598) (not d!2191891) (not d!2191973) (not bm!638217) (not b!7028448) (not b!7028596) (not b!7028445) (not b!7028745) (not b!7028650) (not b!7028534) (not d!2191861) (not setNonEmpty!49064) (not b_lambda!265919) (not b!7028525) (not b_lambda!265921) (not b!7028702) (not bm!638227) (not d!2192055) (not b!7028443) (not b!7028740) (not d!2191919) (not bs!1869683) (not d!2191905) (not b!7028700) (not b!7028706) (not b_lambda!266037) (not b!7028441) (not b!7028459) (not b_lambda!266035) (not b!7028543) (not d!2191929) (not b_lambda!266033) (not bm!638211) (not d!2192021) (not bm!638220) (not d!2191981))
(check-sat)
