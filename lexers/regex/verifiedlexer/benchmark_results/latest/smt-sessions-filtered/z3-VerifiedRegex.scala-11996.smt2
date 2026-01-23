; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!672330 () Bool)

(assert start!672330)

(declare-fun b!6992823 () Bool)

(assert (=> b!6992823 true))

(declare-fun b!6992814 () Bool)

(assert (=> b!6992814 true))

(declare-fun b!6992818 () Bool)

(assert (=> b!6992818 true))

(declare-fun b!6992810 () Bool)

(declare-fun res!2852030 () Bool)

(declare-fun e!4203158 () Bool)

(assert (=> b!6992810 (=> (not res!2852030) (not e!4203158))))

(declare-datatypes ((C!34748 0))(
  ( (C!34749 (val!27076 Int)) )
))
(declare-datatypes ((List!67262 0))(
  ( (Nil!67138) (Cons!67138 (h!73586 C!34748) (t!381009 List!67262)) )
))
(declare-fun s!7408 () List!67262)

(get-info :version)

(assert (=> b!6992810 (= res!2852030 ((_ is Cons!67138) s!7408))))

(declare-fun b!6992811 () Bool)

(declare-fun res!2852029 () Bool)

(declare-fun e!4203171 () Bool)

(assert (=> b!6992811 (=> res!2852029 e!4203171)))

(declare-datatypes ((Regex!17239 0))(
  ( (ElementMatch!17239 (c!1297250 C!34748)) (Concat!26084 (regOne!34990 Regex!17239) (regTwo!34990 Regex!17239)) (EmptyExpr!17239) (Star!17239 (reg!17568 Regex!17239)) (EmptyLang!17239) (Union!17239 (regOne!34991 Regex!17239) (regTwo!34991 Regex!17239)) )
))
(declare-datatypes ((List!67263 0))(
  ( (Nil!67139) (Cons!67139 (h!73587 Regex!17239) (t!381010 List!67263)) )
))
(declare-datatypes ((Context!12470 0))(
  ( (Context!12471 (exprs!6735 List!67263)) )
))
(declare-fun lt!2489691 () Context!12470)

(declare-fun isEmpty!39185 (List!67263) Bool)

(assert (=> b!6992811 (= res!2852029 (isEmpty!39185 (exprs!6735 lt!2489691)))))

(declare-fun b!6992812 () Bool)

(declare-fun e!4203160 () Bool)

(assert (=> b!6992812 (= e!4203171 e!4203160)))

(declare-fun res!2852040 () Bool)

(assert (=> b!6992812 (=> res!2852040 e!4203160)))

(declare-fun nullable!6999 (Regex!17239) Bool)

(assert (=> b!6992812 (= res!2852040 (not (nullable!6999 (h!73587 (exprs!6735 lt!2489691)))))))

(declare-fun lt!2489700 () Context!12470)

(declare-fun lt!2489713 () List!67263)

(assert (=> b!6992812 (= lt!2489700 (Context!12471 lt!2489713))))

(declare-fun tail!13261 (List!67263) List!67263)

(assert (=> b!6992812 (= lt!2489713 (tail!13261 (exprs!6735 lt!2489691)))))

(declare-fun b!6992813 () Bool)

(declare-fun res!2852042 () Bool)

(assert (=> b!6992813 (=> res!2852042 e!4203171)))

(assert (=> b!6992813 (= res!2852042 (not ((_ is Cons!67139) (exprs!6735 lt!2489691))))))

(declare-fun e!4203166 () Bool)

(declare-fun e!4203159 () Bool)

(assert (=> b!6992814 (= e!4203166 e!4203159)))

(declare-fun res!2852039 () Bool)

(assert (=> b!6992814 (=> res!2852039 e!4203159)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12470))

(declare-fun lt!2489694 () Context!12470)

(declare-fun lt!2489684 () Context!12470)

(assert (=> b!6992814 (= res!2852039 (or (not (= lt!2489694 lt!2489684)) (not (select z1!570 lt!2489691))))))

(declare-fun ct2!306 () Context!12470)

(declare-fun ++!15184 (List!67263 List!67263) List!67263)

(assert (=> b!6992814 (= lt!2489694 (Context!12471 (++!15184 (exprs!6735 lt!2489691) (exprs!6735 ct2!306))))))

(declare-fun lambda!402947 () Int)

(declare-datatypes ((Unit!161133 0))(
  ( (Unit!161134) )
))
(declare-fun lt!2489710 () Unit!161133)

(declare-fun lemmaConcatPreservesForall!575 (List!67263 List!67263 Int) Unit!161133)

(assert (=> b!6992814 (= lt!2489710 (lemmaConcatPreservesForall!575 (exprs!6735 lt!2489691) (exprs!6735 ct2!306) lambda!402947))))

(declare-fun lambda!402946 () Int)

(declare-fun mapPost2!94 ((InoxSet Context!12470) Int Context!12470) Context!12470)

(assert (=> b!6992814 (= lt!2489691 (mapPost2!94 z1!570 lambda!402946 lt!2489684))))

(declare-fun b!6992815 () Bool)

(declare-fun e!4203162 () Bool)

(declare-fun e!4203168 () Bool)

(assert (=> b!6992815 (= e!4203162 e!4203168)))

(declare-fun res!2852027 () Bool)

(assert (=> b!6992815 (=> res!2852027 e!4203168)))

(declare-fun e!4203161 () Bool)

(assert (=> b!6992815 (= res!2852027 e!4203161)))

(declare-fun res!2852043 () Bool)

(assert (=> b!6992815 (=> (not res!2852043) (not e!4203161))))

(declare-fun lt!2489698 () Bool)

(declare-fun lt!2489689 () Bool)

(assert (=> b!6992815 (= res!2852043 (not (= lt!2489698 lt!2489689)))))

(declare-fun lt!2489701 () (InoxSet Context!12470))

(declare-fun matchZipper!2779 ((InoxSet Context!12470) List!67262) Bool)

(assert (=> b!6992815 (= lt!2489698 (matchZipper!2779 lt!2489701 (t!381009 s!7408)))))

(declare-fun lt!2489715 () Unit!161133)

(assert (=> b!6992815 (= lt!2489715 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun lt!2489719 () (InoxSet Context!12470))

(declare-fun e!4203170 () Bool)

(assert (=> b!6992815 (= (matchZipper!2779 lt!2489719 (t!381009 s!7408)) e!4203170)))

(declare-fun res!2852033 () Bool)

(assert (=> b!6992815 (=> res!2852033 e!4203170)))

(assert (=> b!6992815 (= res!2852033 lt!2489689)))

(declare-fun lt!2489727 () (InoxSet Context!12470))

(assert (=> b!6992815 (= lt!2489689 (matchZipper!2779 lt!2489727 (t!381009 s!7408)))))

(declare-fun lt!2489693 () (InoxSet Context!12470))

(declare-fun lt!2489703 () Unit!161133)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1412 ((InoxSet Context!12470) (InoxSet Context!12470) List!67262) Unit!161133)

(assert (=> b!6992815 (= lt!2489703 (lemmaZipperConcatMatchesSameAsBothZippers!1412 lt!2489727 lt!2489693 (t!381009 s!7408)))))

(declare-fun lt!2489712 () Unit!161133)

(assert (=> b!6992815 (= lt!2489712 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun lt!2489720 () Unit!161133)

(assert (=> b!6992815 (= lt!2489720 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun b!6992816 () Bool)

(assert (=> b!6992816 (= e!4203160 e!4203162)))

(declare-fun res!2852028 () Bool)

(assert (=> b!6992816 (=> res!2852028 e!4203162)))

(assert (=> b!6992816 (= res!2852028 (not (= lt!2489701 lt!2489719)))))

(assert (=> b!6992816 (= lt!2489719 ((_ map or) lt!2489727 lt!2489693))))

(declare-fun lt!2489702 () Context!12470)

(declare-fun derivationStepZipperUp!1889 (Context!12470 C!34748) (InoxSet Context!12470))

(assert (=> b!6992816 (= lt!2489693 (derivationStepZipperUp!1889 lt!2489702 (h!73586 s!7408)))))

(declare-fun derivationStepZipperDown!1957 (Regex!17239 Context!12470 C!34748) (InoxSet Context!12470))

(assert (=> b!6992816 (= lt!2489727 (derivationStepZipperDown!1957 (h!73587 (exprs!6735 lt!2489691)) lt!2489702 (h!73586 s!7408)))))

(assert (=> b!6992816 (= lt!2489702 (Context!12471 (++!15184 lt!2489713 (exprs!6735 ct2!306))))))

(declare-fun lt!2489707 () Unit!161133)

(assert (=> b!6992816 (= lt!2489707 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun lt!2489725 () Unit!161133)

(assert (=> b!6992816 (= lt!2489725 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun b!6992817 () Bool)

(assert (=> b!6992817 (= e!4203161 (not (matchZipper!2779 lt!2489693 (t!381009 s!7408))))))

(declare-fun lt!2489706 () Unit!161133)

(assert (=> b!6992817 (= lt!2489706 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun e!4203167 () Bool)

(assert (=> b!6992818 (= e!4203167 e!4203171)))

(declare-fun res!2852031 () Bool)

(assert (=> b!6992818 (=> res!2852031 e!4203171)))

(declare-fun lt!2489709 () (InoxSet Context!12470))

(declare-fun derivationStepZipper!2719 ((InoxSet Context!12470) C!34748) (InoxSet Context!12470))

(assert (=> b!6992818 (= res!2852031 (not (= (derivationStepZipper!2719 lt!2489709 (h!73586 s!7408)) lt!2489701)))))

(declare-fun lambda!402948 () Int)

(declare-fun flatMap!2225 ((InoxSet Context!12470) Int) (InoxSet Context!12470))

(assert (=> b!6992818 (= (flatMap!2225 lt!2489709 lambda!402948) (derivationStepZipperUp!1889 lt!2489694 (h!73586 s!7408)))))

(declare-fun lt!2489722 () Unit!161133)

(declare-fun lemmaFlatMapOnSingletonSet!1740 ((InoxSet Context!12470) Context!12470 Int) Unit!161133)

(assert (=> b!6992818 (= lt!2489722 (lemmaFlatMapOnSingletonSet!1740 lt!2489709 lt!2489694 lambda!402948))))

(assert (=> b!6992818 (= lt!2489701 (derivationStepZipperUp!1889 lt!2489694 (h!73586 s!7408)))))

(declare-fun lt!2489716 () Unit!161133)

(assert (=> b!6992818 (= lt!2489716 (lemmaConcatPreservesForall!575 (exprs!6735 lt!2489691) (exprs!6735 ct2!306) lambda!402947))))

(declare-fun b!6992819 () Bool)

(declare-fun res!2852044 () Bool)

(assert (=> b!6992819 (=> res!2852044 e!4203168)))

(assert (=> b!6992819 (= res!2852044 (not lt!2489698))))

(declare-fun b!6992820 () Bool)

(declare-fun e!4203172 () Bool)

(declare-fun tp!1930187 () Bool)

(assert (=> b!6992820 (= e!4203172 tp!1930187)))

(declare-fun b!6992821 () Bool)

(declare-fun e!4203164 () Bool)

(declare-fun tp_is_empty!43703 () Bool)

(declare-fun tp!1930189 () Bool)

(assert (=> b!6992821 (= e!4203164 (and tp_is_empty!43703 tp!1930189))))

(declare-fun b!6992822 () Bool)

(declare-fun e!4203157 () Bool)

(declare-fun e!4203169 () Bool)

(assert (=> b!6992822 (= e!4203157 e!4203169)))

(declare-fun res!2852037 () Bool)

(assert (=> b!6992822 (=> res!2852037 e!4203169)))

(declare-fun lt!2489697 () (InoxSet Context!12470))

(assert (=> b!6992822 (= res!2852037 (not (matchZipper!2779 lt!2489697 s!7408)))))

(declare-fun lt!2489714 () Unit!161133)

(assert (=> b!6992822 (= lt!2489714 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun res!2852041 () Bool)

(assert (=> start!672330 (=> (not res!2852041) (not e!4203158))))

(declare-fun lt!2489705 () (InoxSet Context!12470))

(assert (=> start!672330 (= res!2852041 (matchZipper!2779 lt!2489705 s!7408))))

(declare-fun appendTo!360 ((InoxSet Context!12470) Context!12470) (InoxSet Context!12470))

(assert (=> start!672330 (= lt!2489705 (appendTo!360 z1!570 ct2!306))))

(assert (=> start!672330 e!4203158))

(declare-fun condSetEmpty!47913 () Bool)

(assert (=> start!672330 (= condSetEmpty!47913 (= z1!570 ((as const (Array Context!12470 Bool)) false)))))

(declare-fun setRes!47913 () Bool)

(assert (=> start!672330 setRes!47913))

(declare-fun e!4203163 () Bool)

(declare-fun inv!85956 (Context!12470) Bool)

(assert (=> start!672330 (and (inv!85956 ct2!306) e!4203163)))

(assert (=> start!672330 e!4203164))

(declare-fun setIsEmpty!47913 () Bool)

(assert (=> setIsEmpty!47913 setRes!47913))

(declare-fun tp!1930190 () Bool)

(declare-fun setElem!47913 () Context!12470)

(declare-fun setNonEmpty!47913 () Bool)

(assert (=> setNonEmpty!47913 (= setRes!47913 (and tp!1930190 (inv!85956 setElem!47913) e!4203172))))

(declare-fun setRest!47913 () (InoxSet Context!12470))

(assert (=> setNonEmpty!47913 (= z1!570 ((_ map or) (store ((as const (Array Context!12470 Bool)) false) setElem!47913 true) setRest!47913))))

(assert (=> b!6992823 (= e!4203158 (not e!4203166))))

(declare-fun res!2852032 () Bool)

(assert (=> b!6992823 (=> res!2852032 e!4203166)))

(declare-fun lt!2489721 () (InoxSet Context!12470))

(assert (=> b!6992823 (= res!2852032 (not (matchZipper!2779 lt!2489721 s!7408)))))

(assert (=> b!6992823 (= lt!2489721 (store ((as const (Array Context!12470 Bool)) false) lt!2489684 true))))

(declare-fun lambda!402945 () Int)

(declare-fun getWitness!1147 ((InoxSet Context!12470) Int) Context!12470)

(assert (=> b!6992823 (= lt!2489684 (getWitness!1147 lt!2489705 lambda!402945))))

(declare-datatypes ((List!67264 0))(
  ( (Nil!67140) (Cons!67140 (h!73588 Context!12470) (t!381011 List!67264)) )
))
(declare-fun lt!2489717 () List!67264)

(declare-fun exists!3035 (List!67264 Int) Bool)

(assert (=> b!6992823 (exists!3035 lt!2489717 lambda!402945)))

(declare-fun lt!2489696 () Unit!161133)

(declare-fun lemmaZipperMatchesExistsMatchingContext!208 (List!67264 List!67262) Unit!161133)

(assert (=> b!6992823 (= lt!2489696 (lemmaZipperMatchesExistsMatchingContext!208 lt!2489717 s!7408))))

(declare-fun toList!10599 ((InoxSet Context!12470)) List!67264)

(assert (=> b!6992823 (= lt!2489717 (toList!10599 lt!2489705))))

(declare-fun b!6992824 () Bool)

(declare-fun tp!1930188 () Bool)

(assert (=> b!6992824 (= e!4203163 tp!1930188)))

(declare-fun b!6992825 () Bool)

(assert (=> b!6992825 (= e!4203159 e!4203167)))

(declare-fun res!2852034 () Bool)

(assert (=> b!6992825 (=> res!2852034 e!4203167)))

(assert (=> b!6992825 (= res!2852034 (not (= lt!2489709 lt!2489721)))))

(assert (=> b!6992825 (= lt!2489709 (store ((as const (Array Context!12470 Bool)) false) lt!2489694 true))))

(declare-fun lt!2489686 () Unit!161133)

(assert (=> b!6992825 (= lt!2489686 (lemmaConcatPreservesForall!575 (exprs!6735 lt!2489691) (exprs!6735 ct2!306) lambda!402947))))

(declare-fun b!6992826 () Bool)

(declare-fun e!4203165 () Bool)

(assert (=> b!6992826 (= e!4203168 e!4203165)))

(declare-fun res!2852038 () Bool)

(assert (=> b!6992826 (=> res!2852038 e!4203165)))

(assert (=> b!6992826 (= res!2852038 (not (matchZipper!2779 lt!2489693 (t!381009 s!7408))))))

(declare-fun lt!2489685 () Unit!161133)

(assert (=> b!6992826 (= lt!2489685 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun b!6992827 () Bool)

(declare-fun res!2852035 () Bool)

(assert (=> b!6992827 (=> res!2852035 e!4203166)))

(assert (=> b!6992827 (= res!2852035 (not (select lt!2489705 lt!2489684)))))

(declare-fun b!6992828 () Bool)

(assert (=> b!6992828 (= e!4203170 (matchZipper!2779 lt!2489693 (t!381009 s!7408)))))

(declare-fun b!6992829 () Bool)

(assert (=> b!6992829 (= e!4203169 true)))

(declare-fun lt!2489726 () Bool)

(declare-fun contains!20412 (List!67264 Context!12470) Bool)

(assert (=> b!6992829 (= lt!2489726 (contains!20412 (toList!10599 z1!570) lt!2489691))))

(declare-fun lt!2489704 () Unit!161133)

(assert (=> b!6992829 (= lt!2489704 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun lt!2489708 () Unit!161133)

(assert (=> b!6992829 (= lt!2489708 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun lt!2489687 () Unit!161133)

(assert (=> b!6992829 (= lt!2489687 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun lt!2489695 () (InoxSet Context!12470))

(assert (=> b!6992829 (= (flatMap!2225 lt!2489695 lambda!402948) (derivationStepZipperUp!1889 lt!2489700 (h!73586 s!7408)))))

(declare-fun lt!2489711 () Unit!161133)

(assert (=> b!6992829 (= lt!2489711 (lemmaFlatMapOnSingletonSet!1740 lt!2489695 lt!2489700 lambda!402948))))

(declare-fun map!15505 ((InoxSet Context!12470) Int) (InoxSet Context!12470))

(assert (=> b!6992829 (= (map!15505 lt!2489695 lambda!402946) (store ((as const (Array Context!12470 Bool)) false) (Context!12471 (++!15184 lt!2489713 (exprs!6735 ct2!306))) true))))

(declare-fun lt!2489723 () Unit!161133)

(assert (=> b!6992829 (= lt!2489723 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun lt!2489718 () Unit!161133)

(declare-fun lemmaMapOnSingletonSet!304 ((InoxSet Context!12470) Context!12470 Int) Unit!161133)

(assert (=> b!6992829 (= lt!2489718 (lemmaMapOnSingletonSet!304 lt!2489695 lt!2489700 lambda!402946))))

(assert (=> b!6992829 (= lt!2489695 (store ((as const (Array Context!12470 Bool)) false) lt!2489700 true))))

(declare-fun b!6992830 () Bool)

(assert (=> b!6992830 (= e!4203165 e!4203157)))

(declare-fun res!2852036 () Bool)

(assert (=> b!6992830 (=> res!2852036 e!4203157)))

(assert (=> b!6992830 (= res!2852036 (not (= (derivationStepZipper!2719 lt!2489697 (h!73586 s!7408)) lt!2489693)))))

(declare-fun lt!2489690 () Unit!161133)

(assert (=> b!6992830 (= lt!2489690 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun lt!2489699 () Unit!161133)

(assert (=> b!6992830 (= lt!2489699 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(assert (=> b!6992830 (= (flatMap!2225 lt!2489697 lambda!402948) (derivationStepZipperUp!1889 lt!2489702 (h!73586 s!7408)))))

(declare-fun lt!2489688 () Unit!161133)

(assert (=> b!6992830 (= lt!2489688 (lemmaFlatMapOnSingletonSet!1740 lt!2489697 lt!2489702 lambda!402948))))

(assert (=> b!6992830 (= lt!2489697 (store ((as const (Array Context!12470 Bool)) false) lt!2489702 true))))

(declare-fun lt!2489692 () Unit!161133)

(assert (=> b!6992830 (= lt!2489692 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(declare-fun lt!2489724 () Unit!161133)

(assert (=> b!6992830 (= lt!2489724 (lemmaConcatPreservesForall!575 lt!2489713 (exprs!6735 ct2!306) lambda!402947))))

(assert (= (and start!672330 res!2852041) b!6992810))

(assert (= (and b!6992810 res!2852030) b!6992823))

(assert (= (and b!6992823 (not res!2852032)) b!6992827))

(assert (= (and b!6992827 (not res!2852035)) b!6992814))

(assert (= (and b!6992814 (not res!2852039)) b!6992825))

(assert (= (and b!6992825 (not res!2852034)) b!6992818))

(assert (= (and b!6992818 (not res!2852031)) b!6992813))

(assert (= (and b!6992813 (not res!2852042)) b!6992811))

(assert (= (and b!6992811 (not res!2852029)) b!6992812))

(assert (= (and b!6992812 (not res!2852040)) b!6992816))

(assert (= (and b!6992816 (not res!2852028)) b!6992815))

(assert (= (and b!6992815 (not res!2852033)) b!6992828))

(assert (= (and b!6992815 res!2852043) b!6992817))

(assert (= (and b!6992815 (not res!2852027)) b!6992819))

(assert (= (and b!6992819 (not res!2852044)) b!6992826))

(assert (= (and b!6992826 (not res!2852038)) b!6992830))

(assert (= (and b!6992830 (not res!2852036)) b!6992822))

(assert (= (and b!6992822 (not res!2852037)) b!6992829))

(assert (= (and start!672330 condSetEmpty!47913) setIsEmpty!47913))

(assert (= (and start!672330 (not condSetEmpty!47913)) setNonEmpty!47913))

(assert (= setNonEmpty!47913 b!6992820))

(assert (= start!672330 b!6992824))

(assert (= (and start!672330 ((_ is Cons!67138) s!7408)) b!6992821))

(declare-fun m!7682836 () Bool)

(assert (=> b!6992827 m!7682836))

(declare-fun m!7682838 () Bool)

(assert (=> b!6992817 m!7682838))

(declare-fun m!7682840 () Bool)

(assert (=> b!6992817 m!7682840))

(declare-fun m!7682842 () Bool)

(assert (=> b!6992815 m!7682842))

(declare-fun m!7682844 () Bool)

(assert (=> b!6992815 m!7682844))

(declare-fun m!7682846 () Bool)

(assert (=> b!6992815 m!7682846))

(assert (=> b!6992815 m!7682840))

(assert (=> b!6992815 m!7682840))

(assert (=> b!6992815 m!7682840))

(declare-fun m!7682848 () Bool)

(assert (=> b!6992815 m!7682848))

(declare-fun m!7682850 () Bool)

(assert (=> b!6992825 m!7682850))

(declare-fun m!7682852 () Bool)

(assert (=> b!6992825 m!7682852))

(assert (=> b!6992830 m!7682840))

(assert (=> b!6992830 m!7682840))

(declare-fun m!7682854 () Bool)

(assert (=> b!6992830 m!7682854))

(assert (=> b!6992830 m!7682840))

(declare-fun m!7682856 () Bool)

(assert (=> b!6992830 m!7682856))

(declare-fun m!7682858 () Bool)

(assert (=> b!6992830 m!7682858))

(assert (=> b!6992830 m!7682840))

(declare-fun m!7682860 () Bool)

(assert (=> b!6992830 m!7682860))

(declare-fun m!7682862 () Bool)

(assert (=> b!6992830 m!7682862))

(declare-fun m!7682864 () Bool)

(assert (=> b!6992812 m!7682864))

(declare-fun m!7682866 () Bool)

(assert (=> b!6992812 m!7682866))

(declare-fun m!7682868 () Bool)

(assert (=> b!6992818 m!7682868))

(declare-fun m!7682870 () Bool)

(assert (=> b!6992818 m!7682870))

(declare-fun m!7682872 () Bool)

(assert (=> b!6992818 m!7682872))

(assert (=> b!6992818 m!7682852))

(declare-fun m!7682874 () Bool)

(assert (=> b!6992818 m!7682874))

(assert (=> b!6992828 m!7682838))

(declare-fun m!7682876 () Bool)

(assert (=> b!6992823 m!7682876))

(declare-fun m!7682878 () Bool)

(assert (=> b!6992823 m!7682878))

(declare-fun m!7682880 () Bool)

(assert (=> b!6992823 m!7682880))

(declare-fun m!7682882 () Bool)

(assert (=> b!6992823 m!7682882))

(declare-fun m!7682884 () Bool)

(assert (=> b!6992823 m!7682884))

(declare-fun m!7682886 () Bool)

(assert (=> b!6992823 m!7682886))

(assert (=> b!6992816 m!7682840))

(declare-fun m!7682888 () Bool)

(assert (=> b!6992816 m!7682888))

(assert (=> b!6992816 m!7682854))

(declare-fun m!7682890 () Bool)

(assert (=> b!6992816 m!7682890))

(assert (=> b!6992816 m!7682840))

(declare-fun m!7682892 () Bool)

(assert (=> start!672330 m!7682892))

(declare-fun m!7682894 () Bool)

(assert (=> start!672330 m!7682894))

(declare-fun m!7682896 () Bool)

(assert (=> start!672330 m!7682896))

(declare-fun m!7682898 () Bool)

(assert (=> b!6992822 m!7682898))

(assert (=> b!6992822 m!7682840))

(declare-fun m!7682900 () Bool)

(assert (=> b!6992829 m!7682900))

(declare-fun m!7682902 () Bool)

(assert (=> b!6992829 m!7682902))

(assert (=> b!6992829 m!7682840))

(declare-fun m!7682904 () Bool)

(assert (=> b!6992829 m!7682904))

(assert (=> b!6992829 m!7682840))

(assert (=> b!6992829 m!7682890))

(assert (=> b!6992829 m!7682840))

(declare-fun m!7682906 () Bool)

(assert (=> b!6992829 m!7682906))

(declare-fun m!7682908 () Bool)

(assert (=> b!6992829 m!7682908))

(declare-fun m!7682910 () Bool)

(assert (=> b!6992829 m!7682910))

(declare-fun m!7682912 () Bool)

(assert (=> b!6992829 m!7682912))

(assert (=> b!6992829 m!7682908))

(declare-fun m!7682914 () Bool)

(assert (=> b!6992829 m!7682914))

(declare-fun m!7682916 () Bool)

(assert (=> b!6992829 m!7682916))

(assert (=> b!6992829 m!7682840))

(assert (=> b!6992826 m!7682838))

(assert (=> b!6992826 m!7682840))

(declare-fun m!7682918 () Bool)

(assert (=> b!6992814 m!7682918))

(declare-fun m!7682920 () Bool)

(assert (=> b!6992814 m!7682920))

(assert (=> b!6992814 m!7682852))

(declare-fun m!7682922 () Bool)

(assert (=> b!6992814 m!7682922))

(declare-fun m!7682924 () Bool)

(assert (=> setNonEmpty!47913 m!7682924))

(declare-fun m!7682926 () Bool)

(assert (=> b!6992811 m!7682926))

(check-sat tp_is_empty!43703 (not b!6992821) (not b!6992823) (not b!6992812) (not b!6992820) (not b!6992822) (not b!6992815) (not b!6992826) (not b!6992824) (not b!6992825) (not b!6992828) (not b!6992829) (not b!6992814) (not start!672330) (not b!6992818) (not b!6992830) (not b!6992811) (not b!6992816) (not b!6992817) (not setNonEmpty!47913))
(check-sat)
