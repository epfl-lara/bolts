; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!680792 () Bool)

(assert start!680792)

(declare-fun b!7039131 () Bool)

(assert (=> b!7039131 true))

(declare-fun b!7039141 () Bool)

(assert (=> b!7039141 true))

(declare-fun b!7039138 () Bool)

(assert (=> b!7039138 true))

(declare-fun b!7039116 () Bool)

(declare-fun e!4231657 () Bool)

(declare-fun e!4231649 () Bool)

(assert (=> b!7039116 (= e!4231657 e!4231649)))

(declare-fun res!2873575 () Bool)

(assert (=> b!7039116 (=> res!2873575 e!4231649)))

(declare-fun lt!2522821 () Int)

(declare-datatypes ((C!35230 0))(
  ( (C!35231 (val!27317 Int)) )
))
(declare-datatypes ((Regex!17480 0))(
  ( (ElementMatch!17480 (c!1310054 C!35230)) (Concat!26325 (regOne!35472 Regex!17480) (regTwo!35472 Regex!17480)) (EmptyExpr!17480) (Star!17480 (reg!17809 Regex!17480)) (EmptyLang!17480) (Union!17480 (regOne!35473 Regex!17480) (regTwo!35473 Regex!17480)) )
))
(declare-datatypes ((List!67968 0))(
  ( (Nil!67844) (Cons!67844 (h!74292 Regex!17480) (t!381739 List!67968)) )
))
(declare-datatypes ((Context!12952 0))(
  ( (Context!12953 (exprs!6976 List!67968)) )
))
(declare-fun lt!2522863 () Context!12952)

(declare-fun contextDepthTotal!515 (Context!12952) Int)

(assert (=> b!7039116 (= res!2873575 (<= lt!2522821 (contextDepthTotal!515 lt!2522863)))))

(declare-fun lt!2522846 () Int)

(assert (=> b!7039116 (<= lt!2522821 lt!2522846)))

(declare-datatypes ((List!67969 0))(
  ( (Nil!67845) (Cons!67845 (h!74293 Context!12952) (t!381740 List!67969)) )
))
(declare-fun lt!2522882 () List!67969)

(declare-fun zipperDepthTotal!543 (List!67969) Int)

(assert (=> b!7039116 (= lt!2522846 (zipperDepthTotal!543 lt!2522882))))

(declare-fun lt!2522864 () Context!12952)

(assert (=> b!7039116 (= lt!2522821 (contextDepthTotal!515 lt!2522864))))

(declare-datatypes ((Unit!161640 0))(
  ( (Unit!161641) )
))
(declare-fun lt!2522856 () Unit!161640)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!83 (List!67969 Context!12952) Unit!161640)

(assert (=> b!7039116 (= lt!2522856 (lemmaTotalDepthZipperLargerThanOfAnyContext!83 lt!2522882 lt!2522864))))

(declare-fun z1!570 () (Set Context!12952))

(declare-fun toList!10823 ((Set Context!12952)) List!67969)

(assert (=> b!7039116 (= lt!2522882 (toList!10823 z1!570))))

(declare-fun lt!2522868 () Unit!161640)

(declare-fun lambda!416223 () Int)

(declare-fun ct2!306 () Context!12952)

(declare-fun lt!2522851 () List!67968)

(declare-fun lemmaConcatPreservesForall!801 (List!67968 List!67968 Int) Unit!161640)

(assert (=> b!7039116 (= lt!2522868 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun lt!2522822 () Unit!161640)

(assert (=> b!7039116 (= lt!2522822 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun lt!2522878 () Unit!161640)

(assert (=> b!7039116 (= lt!2522878 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun lt!2522842 () (Set Context!12952))

(declare-fun lambda!416224 () Int)

(declare-datatypes ((List!67970 0))(
  ( (Nil!67846) (Cons!67846 (h!74294 C!35230) (t!381741 List!67970)) )
))
(declare-fun s!7408 () List!67970)

(declare-fun flatMap!2427 ((Set Context!12952) Int) (Set Context!12952))

(declare-fun derivationStepZipperUp!2090 (Context!12952 C!35230) (Set Context!12952))

(assert (=> b!7039116 (= (flatMap!2427 lt!2522842 lambda!416224) (derivationStepZipperUp!2090 lt!2522863 (h!74294 s!7408)))))

(declare-fun lt!2522849 () Unit!161640)

(declare-fun lemmaFlatMapOnSingletonSet!1941 ((Set Context!12952) Context!12952 Int) Unit!161640)

(assert (=> b!7039116 (= lt!2522849 (lemmaFlatMapOnSingletonSet!1941 lt!2522842 lt!2522863 lambda!416224))))

(declare-fun lambda!416222 () Int)

(declare-fun map!15788 ((Set Context!12952) Int) (Set Context!12952))

(declare-fun ++!15540 (List!67968 List!67968) List!67968)

(assert (=> b!7039116 (= (map!15788 lt!2522842 lambda!416222) (set.insert (Context!12953 (++!15540 lt!2522851 (exprs!6976 ct2!306))) (as set.empty (Set Context!12952))))))

(declare-fun lt!2522883 () Unit!161640)

(assert (=> b!7039116 (= lt!2522883 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun lt!2522824 () Unit!161640)

(declare-fun lemmaMapOnSingletonSet!391 ((Set Context!12952) Context!12952 Int) Unit!161640)

(assert (=> b!7039116 (= lt!2522824 (lemmaMapOnSingletonSet!391 lt!2522842 lt!2522863 lambda!416222))))

(assert (=> b!7039116 (= lt!2522842 (set.insert lt!2522863 (as set.empty (Set Context!12952))))))

(declare-fun setRes!49297 () Bool)

(declare-fun setElem!49297 () Context!12952)

(declare-fun setNonEmpty!49297 () Bool)

(declare-fun tp!1937166 () Bool)

(declare-fun e!4231640 () Bool)

(declare-fun inv!86560 (Context!12952) Bool)

(assert (=> setNonEmpty!49297 (= setRes!49297 (and tp!1937166 (inv!86560 setElem!49297) e!4231640))))

(declare-fun setRest!49297 () (Set Context!12952))

(assert (=> setNonEmpty!49297 (= z1!570 (set.union (set.insert setElem!49297 (as set.empty (Set Context!12952))) setRest!49297))))

(declare-fun b!7039117 () Bool)

(declare-fun e!4231635 () Bool)

(declare-fun e!4231647 () Bool)

(assert (=> b!7039117 (= e!4231635 e!4231647)))

(declare-fun res!2873580 () Bool)

(assert (=> b!7039117 (=> res!2873580 e!4231647)))

(declare-fun lt!2522836 () (Set Context!12952))

(declare-fun lt!2522825 () (Set Context!12952))

(declare-fun derivationStepZipper!2936 ((Set Context!12952) C!35230) (Set Context!12952))

(assert (=> b!7039117 (= res!2873580 (not (= (derivationStepZipper!2936 lt!2522825 (h!74294 s!7408)) lt!2522836)))))

(declare-fun lt!2522845 () Unit!161640)

(assert (=> b!7039117 (= lt!2522845 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun lt!2522827 () Unit!161640)

(assert (=> b!7039117 (= lt!2522827 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun lt!2522852 () Context!12952)

(assert (=> b!7039117 (= (flatMap!2427 lt!2522825 lambda!416224) (derivationStepZipperUp!2090 lt!2522852 (h!74294 s!7408)))))

(declare-fun lt!2522833 () Unit!161640)

(assert (=> b!7039117 (= lt!2522833 (lemmaFlatMapOnSingletonSet!1941 lt!2522825 lt!2522852 lambda!416224))))

(assert (=> b!7039117 (= lt!2522825 (set.insert lt!2522852 (as set.empty (Set Context!12952))))))

(declare-fun lt!2522869 () Unit!161640)

(assert (=> b!7039117 (= lt!2522869 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun lt!2522870 () Unit!161640)

(assert (=> b!7039117 (= lt!2522870 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun b!7039118 () Bool)

(declare-fun res!2873585 () Bool)

(declare-fun e!4231652 () Bool)

(assert (=> b!7039118 (=> res!2873585 e!4231652)))

(declare-fun isEmpty!39585 (List!67968) Bool)

(assert (=> b!7039118 (= res!2873585 (isEmpty!39585 (exprs!6976 lt!2522864)))))

(declare-fun b!7039119 () Bool)

(declare-fun res!2873579 () Bool)

(declare-fun e!4231644 () Bool)

(assert (=> b!7039119 (=> res!2873579 e!4231644)))

(declare-fun lt!2522830 () (Set Context!12952))

(declare-fun lt!2522832 () List!67970)

(declare-fun matchZipper!3020 ((Set Context!12952) List!67970) Bool)

(assert (=> b!7039119 (= res!2873579 (not (matchZipper!3020 lt!2522830 lt!2522832)))))

(declare-fun b!7039120 () Bool)

(declare-fun e!4231639 () Bool)

(assert (=> b!7039120 (= e!4231639 e!4231635)))

(declare-fun res!2873582 () Bool)

(assert (=> b!7039120 (=> res!2873582 e!4231635)))

(assert (=> b!7039120 (= res!2873582 (not (matchZipper!3020 lt!2522836 (t!381741 s!7408))))))

(declare-fun lt!2522873 () Unit!161640)

(assert (=> b!7039120 (= lt!2522873 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun b!7039121 () Bool)

(declare-fun res!2873565 () Bool)

(declare-fun e!4231656 () Bool)

(assert (=> b!7039121 (=> res!2873565 e!4231656)))

(declare-datatypes ((tuple2!68106 0))(
  ( (tuple2!68107 (_1!37356 List!67970) (_2!37356 List!67970)) )
))
(declare-fun lt!2522831 () tuple2!68106)

(declare-fun isEmpty!39586 (List!67970) Bool)

(assert (=> b!7039121 (= res!2873565 (isEmpty!39586 (_1!37356 lt!2522831)))))

(declare-fun b!7039122 () Bool)

(declare-fun e!4231655 () Bool)

(assert (=> b!7039122 (= e!4231656 e!4231655)))

(declare-fun res!2873562 () Bool)

(assert (=> b!7039122 (=> res!2873562 e!4231655)))

(declare-fun lt!2522823 () (Set Context!12952))

(declare-fun lt!2522834 () (Set Context!12952))

(assert (=> b!7039122 (= res!2873562 (not (= (derivationStepZipper!2936 lt!2522834 (h!74294 s!7408)) lt!2522823)))))

(assert (=> b!7039122 (= lt!2522823 (derivationStepZipperUp!2090 lt!2522864 (h!74294 s!7408)))))

(assert (=> b!7039122 (= (flatMap!2427 lt!2522834 lambda!416224) (derivationStepZipperUp!2090 lt!2522864 (h!74294 s!7408)))))

(declare-fun lt!2522826 () Unit!161640)

(assert (=> b!7039122 (= lt!2522826 (lemmaFlatMapOnSingletonSet!1941 lt!2522834 lt!2522864 lambda!416224))))

(assert (=> b!7039122 (= lt!2522834 (set.insert lt!2522864 (as set.empty (Set Context!12952))))))

(declare-fun b!7039123 () Bool)

(declare-fun e!4231636 () Bool)

(declare-fun lt!2522881 () (Set Context!12952))

(assert (=> b!7039123 (= e!4231636 (matchZipper!3020 lt!2522881 lt!2522832))))

(declare-fun b!7039124 () Bool)

(declare-fun e!4231650 () Bool)

(declare-fun e!4231653 () Bool)

(assert (=> b!7039124 (= e!4231650 e!4231653)))

(declare-fun res!2873576 () Bool)

(assert (=> b!7039124 (=> res!2873576 e!4231653)))

(declare-fun lt!2522862 () (Set Context!12952))

(declare-fun lt!2522876 () (Set Context!12952))

(assert (=> b!7039124 (= res!2873576 (not (= lt!2522862 lt!2522876)))))

(declare-fun lt!2522847 () Context!12952)

(assert (=> b!7039124 (= lt!2522862 (set.insert lt!2522847 (as set.empty (Set Context!12952))))))

(declare-fun lt!2522866 () Unit!161640)

(assert (=> b!7039124 (= lt!2522866 (lemmaConcatPreservesForall!801 (exprs!6976 lt!2522864) (exprs!6976 ct2!306) lambda!416223))))

(declare-fun b!7039125 () Bool)

(declare-fun e!4231641 () Bool)

(assert (=> b!7039125 (= e!4231641 e!4231639)))

(declare-fun res!2873561 () Bool)

(assert (=> b!7039125 (=> res!2873561 e!4231639)))

(declare-fun e!4231651 () Bool)

(assert (=> b!7039125 (= res!2873561 e!4231651)))

(declare-fun res!2873569 () Bool)

(assert (=> b!7039125 (=> (not res!2873569) (not e!4231651))))

(declare-fun lt!2522854 () Bool)

(declare-fun lt!2522855 () Bool)

(assert (=> b!7039125 (= res!2873569 (not (= lt!2522854 lt!2522855)))))

(declare-fun lt!2522861 () (Set Context!12952))

(assert (=> b!7039125 (= lt!2522854 (matchZipper!3020 lt!2522861 (t!381741 s!7408)))))

(declare-fun lt!2522858 () Unit!161640)

(assert (=> b!7039125 (= lt!2522858 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun lt!2522857 () (Set Context!12952))

(declare-fun e!4231637 () Bool)

(assert (=> b!7039125 (= (matchZipper!3020 lt!2522857 (t!381741 s!7408)) e!4231637)))

(declare-fun res!2873573 () Bool)

(assert (=> b!7039125 (=> res!2873573 e!4231637)))

(assert (=> b!7039125 (= res!2873573 lt!2522855)))

(declare-fun lt!2522839 () (Set Context!12952))

(assert (=> b!7039125 (= lt!2522855 (matchZipper!3020 lt!2522839 (t!381741 s!7408)))))

(declare-fun lt!2522828 () Unit!161640)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1553 ((Set Context!12952) (Set Context!12952) List!67970) Unit!161640)

(assert (=> b!7039125 (= lt!2522828 (lemmaZipperConcatMatchesSameAsBothZippers!1553 lt!2522839 lt!2522836 (t!381741 s!7408)))))

(declare-fun lt!2522877 () Unit!161640)

(assert (=> b!7039125 (= lt!2522877 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun lt!2522850 () Unit!161640)

(assert (=> b!7039125 (= lt!2522850 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun b!7039126 () Bool)

(declare-fun res!2873568 () Bool)

(declare-fun e!4231643 () Bool)

(assert (=> b!7039126 (=> res!2873568 e!4231643)))

(declare-fun lt!2522838 () Context!12952)

(declare-fun lt!2522871 () (Set Context!12952))

(assert (=> b!7039126 (= res!2873568 (not (set.member lt!2522838 lt!2522871)))))

(declare-fun b!7039127 () Bool)

(declare-fun res!2873572 () Bool)

(assert (=> b!7039127 (=> res!2873572 e!4231656)))

(declare-fun ++!15541 (List!67970 List!67970) List!67970)

(assert (=> b!7039127 (= res!2873572 (not (= (++!15541 (_1!37356 lt!2522831) (_2!37356 lt!2522831)) s!7408)))))

(declare-fun b!7039128 () Bool)

(assert (=> b!7039128 (= e!4231647 e!4231657)))

(declare-fun res!2873559 () Bool)

(assert (=> b!7039128 (=> res!2873559 e!4231657)))

(assert (=> b!7039128 (= res!2873559 (not (matchZipper!3020 lt!2522825 s!7408)))))

(declare-fun lt!2522843 () Unit!161640)

(assert (=> b!7039128 (= lt!2522843 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun b!7039129 () Bool)

(declare-fun e!4231658 () Bool)

(assert (=> b!7039129 (= e!4231658 e!4231641)))

(declare-fun res!2873577 () Bool)

(assert (=> b!7039129 (=> res!2873577 e!4231641)))

(assert (=> b!7039129 (= res!2873577 (not (= lt!2522861 lt!2522857)))))

(assert (=> b!7039129 (= lt!2522857 (set.union lt!2522839 lt!2522836))))

(assert (=> b!7039129 (= lt!2522836 (derivationStepZipperUp!2090 lt!2522852 (h!74294 s!7408)))))

(declare-fun derivationStepZipperDown!2144 (Regex!17480 Context!12952 C!35230) (Set Context!12952))

(assert (=> b!7039129 (= lt!2522839 (derivationStepZipperDown!2144 (h!74292 (exprs!6976 lt!2522864)) lt!2522852 (h!74294 s!7408)))))

(assert (=> b!7039129 (= lt!2522852 (Context!12953 (++!15540 lt!2522851 (exprs!6976 ct2!306))))))

(declare-fun lt!2522841 () Unit!161640)

(assert (=> b!7039129 (= lt!2522841 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun lt!2522867 () Unit!161640)

(assert (=> b!7039129 (= lt!2522867 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun b!7039130 () Bool)

(assert (=> b!7039130 (= e!4231637 (matchZipper!3020 lt!2522836 (t!381741 s!7408)))))

(declare-fun e!4231654 () Bool)

(assert (=> b!7039131 (= e!4231654 (not e!4231643))))

(declare-fun res!2873584 () Bool)

(assert (=> b!7039131 (=> res!2873584 e!4231643)))

(assert (=> b!7039131 (= res!2873584 (not (matchZipper!3020 lt!2522876 s!7408)))))

(assert (=> b!7039131 (= lt!2522876 (set.insert lt!2522838 (as set.empty (Set Context!12952))))))

(declare-fun lambda!416221 () Int)

(declare-fun getWitness!1497 ((Set Context!12952) Int) Context!12952)

(assert (=> b!7039131 (= lt!2522838 (getWitness!1497 lt!2522871 lambda!416221))))

(declare-fun lt!2522880 () List!67969)

(declare-fun exists!3418 (List!67969 Int) Bool)

(assert (=> b!7039131 (exists!3418 lt!2522880 lambda!416221)))

(declare-fun lt!2522859 () Unit!161640)

(declare-fun lemmaZipperMatchesExistsMatchingContext!419 (List!67969 List!67970) Unit!161640)

(assert (=> b!7039131 (= lt!2522859 (lemmaZipperMatchesExistsMatchingContext!419 lt!2522880 s!7408))))

(assert (=> b!7039131 (= lt!2522880 (toList!10823 lt!2522871))))

(declare-fun b!7039132 () Bool)

(declare-fun lt!2522844 () Bool)

(assert (=> b!7039132 (= e!4231644 lt!2522844)))

(declare-fun b!7039133 () Bool)

(declare-fun e!4231646 () Bool)

(declare-fun tp!1937165 () Bool)

(assert (=> b!7039133 (= e!4231646 tp!1937165)))

(declare-fun setIsEmpty!49297 () Bool)

(assert (=> setIsEmpty!49297 setRes!49297))

(declare-fun b!7039134 () Bool)

(declare-fun res!2873557 () Bool)

(assert (=> b!7039134 (=> (not res!2873557) (not e!4231654))))

(assert (=> b!7039134 (= res!2873557 (is-Cons!67846 s!7408))))

(declare-fun b!7039135 () Bool)

(assert (=> b!7039135 (= e!4231651 (not (matchZipper!3020 lt!2522836 (t!381741 s!7408))))))

(declare-fun lt!2522835 () Unit!161640)

(assert (=> b!7039135 (= lt!2522835 (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(declare-fun b!7039136 () Bool)

(declare-fun tp!1937164 () Bool)

(assert (=> b!7039136 (= e!4231640 tp!1937164)))

(declare-fun b!7039137 () Bool)

(declare-fun e!4231638 () Bool)

(assert (=> b!7039137 (= e!4231638 e!4231644)))

(declare-fun res!2873566 () Bool)

(assert (=> b!7039137 (=> res!2873566 e!4231644)))

(declare-fun lt!2522853 () C!35230)

(assert (=> b!7039137 (= res!2873566 (not (= (derivationStepZipper!2936 lt!2522842 lt!2522853) lt!2522830)))))

(assert (=> b!7039137 (= lt!2522830 (derivationStepZipperUp!2090 lt!2522863 lt!2522853))))

(declare-fun head!14282 (List!67970) C!35230)

(assert (=> b!7039137 (= lt!2522853 (head!14282 (_1!37356 lt!2522831)))))

(assert (=> b!7039137 (= (flatMap!2427 lt!2522842 lambda!416224) (derivationStepZipperUp!2090 lt!2522863 (h!74294 s!7408)))))

(declare-fun lt!2522875 () Unit!161640)

(assert (=> b!7039137 (= lt!2522875 (lemmaFlatMapOnSingletonSet!1941 lt!2522842 lt!2522863 lambda!416224))))

(assert (=> b!7039138 (= e!4231653 e!4231652)))

(declare-fun res!2873567 () Bool)

(assert (=> b!7039138 (=> res!2873567 e!4231652)))

(assert (=> b!7039138 (= res!2873567 (not (= (derivationStepZipper!2936 lt!2522862 (h!74294 s!7408)) lt!2522861)))))

(assert (=> b!7039138 (= (flatMap!2427 lt!2522862 lambda!416224) (derivationStepZipperUp!2090 lt!2522847 (h!74294 s!7408)))))

(declare-fun lt!2522829 () Unit!161640)

(assert (=> b!7039138 (= lt!2522829 (lemmaFlatMapOnSingletonSet!1941 lt!2522862 lt!2522847 lambda!416224))))

(assert (=> b!7039138 (= lt!2522861 (derivationStepZipperUp!2090 lt!2522847 (h!74294 s!7408)))))

(declare-fun lt!2522837 () Unit!161640)

(assert (=> b!7039138 (= lt!2522837 (lemmaConcatPreservesForall!801 (exprs!6976 lt!2522864) (exprs!6976 ct2!306) lambda!416223))))

(declare-fun b!7039139 () Bool)

(assert (=> b!7039139 (= e!4231649 e!4231656)))

(declare-fun res!2873587 () Bool)

(assert (=> b!7039139 (=> res!2873587 e!4231656)))

(assert (=> b!7039139 (= res!2873587 (not (matchZipper!3020 lt!2522842 (_1!37356 lt!2522831))))))

(declare-datatypes ((Option!16885 0))(
  ( (None!16884) (Some!16884 (v!53174 tuple2!68106)) )
))
(declare-fun lt!2522848 () Option!16885)

(declare-fun get!23776 (Option!16885) tuple2!68106)

(assert (=> b!7039139 (= lt!2522831 (get!23776 lt!2522848))))

(declare-fun isDefined!13586 (Option!16885) Bool)

(assert (=> b!7039139 (isDefined!13586 lt!2522848)))

(declare-fun lt!2522874 () (Set Context!12952))

(declare-fun findConcatSeparationZippers!401 ((Set Context!12952) (Set Context!12952) List!67970 List!67970 List!67970) Option!16885)

(assert (=> b!7039139 (= lt!2522848 (findConcatSeparationZippers!401 lt!2522842 lt!2522874 Nil!67846 s!7408 s!7408))))

(assert (=> b!7039139 (= lt!2522874 (set.insert ct2!306 (as set.empty (Set Context!12952))))))

(declare-fun lt!2522840 () Unit!161640)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!389 ((Set Context!12952) Context!12952 List!67970) Unit!161640)

(assert (=> b!7039139 (= lt!2522840 (lemmaConcatZipperMatchesStringThenFindConcatDefined!389 lt!2522842 ct2!306 s!7408))))

(declare-fun b!7039140 () Bool)

(declare-fun res!2873571 () Bool)

(assert (=> b!7039140 (=> res!2873571 e!4231639)))

(assert (=> b!7039140 (= res!2873571 (not lt!2522854))))

(assert (=> b!7039141 (= e!4231643 e!4231650)))

(declare-fun res!2873578 () Bool)

(assert (=> b!7039141 (=> res!2873578 e!4231650)))

(assert (=> b!7039141 (= res!2873578 (or (not (= lt!2522847 lt!2522838)) (not (set.member lt!2522864 z1!570))))))

(assert (=> b!7039141 (= lt!2522847 (Context!12953 (++!15540 (exprs!6976 lt!2522864) (exprs!6976 ct2!306))))))

(declare-fun lt!2522879 () Unit!161640)

(assert (=> b!7039141 (= lt!2522879 (lemmaConcatPreservesForall!801 (exprs!6976 lt!2522864) (exprs!6976 ct2!306) lambda!416223))))

(declare-fun mapPost2!321 ((Set Context!12952) Int Context!12952) Context!12952)

(assert (=> b!7039141 (= lt!2522864 (mapPost2!321 z1!570 lambda!416222 lt!2522838))))

(declare-fun b!7039142 () Bool)

(declare-fun e!4231642 () Bool)

(assert (=> b!7039142 (= e!4231655 e!4231642)))

(declare-fun res!2873560 () Bool)

(assert (=> b!7039142 (=> res!2873560 e!4231642)))

(declare-fun lt!2522860 () (Set Context!12952))

(assert (=> b!7039142 (= res!2873560 (not (= lt!2522823 lt!2522860)))))

(declare-fun lt!2522865 () (Set Context!12952))

(assert (=> b!7039142 (= lt!2522860 (set.union lt!2522865 lt!2522881))))

(assert (=> b!7039142 (= lt!2522881 (derivationStepZipperUp!2090 lt!2522863 (h!74294 s!7408)))))

(assert (=> b!7039142 (= lt!2522865 (derivationStepZipperDown!2144 (h!74292 (exprs!6976 lt!2522864)) lt!2522863 (h!74294 s!7408)))))

(declare-fun b!7039143 () Bool)

(assert (=> b!7039143 (= e!4231642 e!4231638)))

(declare-fun res!2873558 () Bool)

(assert (=> b!7039143 (=> res!2873558 e!4231638)))

(declare-fun e!4231648 () Bool)

(assert (=> b!7039143 (= res!2873558 e!4231648)))

(declare-fun res!2873583 () Bool)

(assert (=> b!7039143 (=> (not res!2873583) (not e!4231648))))

(declare-fun lt!2522872 () Bool)

(assert (=> b!7039143 (= res!2873583 (not (= lt!2522844 lt!2522872)))))

(assert (=> b!7039143 (= lt!2522844 (matchZipper!3020 lt!2522834 (_1!37356 lt!2522831)))))

(assert (=> b!7039143 (= (matchZipper!3020 lt!2522860 lt!2522832) e!4231636)))

(declare-fun res!2873574 () Bool)

(assert (=> b!7039143 (=> res!2873574 e!4231636)))

(assert (=> b!7039143 (= res!2873574 lt!2522872)))

(assert (=> b!7039143 (= lt!2522872 (matchZipper!3020 lt!2522865 lt!2522832))))

(declare-fun lt!2522884 () Unit!161640)

(assert (=> b!7039143 (= lt!2522884 (lemmaZipperConcatMatchesSameAsBothZippers!1553 lt!2522865 lt!2522881 lt!2522832))))

(declare-fun tail!13581 (List!67970) List!67970)

(assert (=> b!7039143 (= lt!2522832 (tail!13581 (_1!37356 lt!2522831)))))

(declare-fun res!2873563 () Bool)

(assert (=> start!680792 (=> (not res!2873563) (not e!4231654))))

(assert (=> start!680792 (= res!2873563 (matchZipper!3020 lt!2522871 s!7408))))

(declare-fun appendTo!601 ((Set Context!12952) Context!12952) (Set Context!12952))

(assert (=> start!680792 (= lt!2522871 (appendTo!601 z1!570 ct2!306))))

(assert (=> start!680792 e!4231654))

(declare-fun condSetEmpty!49297 () Bool)

(assert (=> start!680792 (= condSetEmpty!49297 (= z1!570 (as set.empty (Set Context!12952))))))

(assert (=> start!680792 setRes!49297))

(assert (=> start!680792 (and (inv!86560 ct2!306) e!4231646)))

(declare-fun e!4231645 () Bool)

(assert (=> start!680792 e!4231645))

(declare-fun b!7039144 () Bool)

(declare-fun res!2873570 () Bool)

(assert (=> b!7039144 (=> res!2873570 e!4231656)))

(assert (=> b!7039144 (= res!2873570 (not (matchZipper!3020 lt!2522874 (_2!37356 lt!2522831))))))

(declare-fun b!7039145 () Bool)

(declare-fun res!2873581 () Bool)

(assert (=> b!7039145 (=> res!2873581 e!4231649)))

(assert (=> b!7039145 (= res!2873581 (>= (zipperDepthTotal!543 (Cons!67845 lt!2522863 Nil!67845)) lt!2522846))))

(declare-fun b!7039146 () Bool)

(assert (=> b!7039146 (= e!4231648 (not (matchZipper!3020 lt!2522881 lt!2522832)))))

(declare-fun b!7039147 () Bool)

(declare-fun res!2873564 () Bool)

(assert (=> b!7039147 (=> res!2873564 e!4231652)))

(assert (=> b!7039147 (= res!2873564 (not (is-Cons!67844 (exprs!6976 lt!2522864))))))

(declare-fun b!7039148 () Bool)

(assert (=> b!7039148 (= e!4231652 e!4231658)))

(declare-fun res!2873586 () Bool)

(assert (=> b!7039148 (=> res!2873586 e!4231658)))

(declare-fun nullable!7191 (Regex!17480) Bool)

(assert (=> b!7039148 (= res!2873586 (not (nullable!7191 (h!74292 (exprs!6976 lt!2522864)))))))

(assert (=> b!7039148 (= lt!2522863 (Context!12953 lt!2522851))))

(declare-fun tail!13582 (List!67968) List!67968)

(assert (=> b!7039148 (= lt!2522851 (tail!13582 (exprs!6976 lt!2522864)))))

(declare-fun b!7039149 () Bool)

(declare-fun tp_is_empty!44185 () Bool)

(declare-fun tp!1937167 () Bool)

(assert (=> b!7039149 (= e!4231645 (and tp_is_empty!44185 tp!1937167))))

(assert (= (and start!680792 res!2873563) b!7039134))

(assert (= (and b!7039134 res!2873557) b!7039131))

(assert (= (and b!7039131 (not res!2873584)) b!7039126))

(assert (= (and b!7039126 (not res!2873568)) b!7039141))

(assert (= (and b!7039141 (not res!2873578)) b!7039124))

(assert (= (and b!7039124 (not res!2873576)) b!7039138))

(assert (= (and b!7039138 (not res!2873567)) b!7039147))

(assert (= (and b!7039147 (not res!2873564)) b!7039118))

(assert (= (and b!7039118 (not res!2873585)) b!7039148))

(assert (= (and b!7039148 (not res!2873586)) b!7039129))

(assert (= (and b!7039129 (not res!2873577)) b!7039125))

(assert (= (and b!7039125 (not res!2873573)) b!7039130))

(assert (= (and b!7039125 res!2873569) b!7039135))

(assert (= (and b!7039125 (not res!2873561)) b!7039140))

(assert (= (and b!7039140 (not res!2873571)) b!7039120))

(assert (= (and b!7039120 (not res!2873582)) b!7039117))

(assert (= (and b!7039117 (not res!2873580)) b!7039128))

(assert (= (and b!7039128 (not res!2873559)) b!7039116))

(assert (= (and b!7039116 (not res!2873575)) b!7039145))

(assert (= (and b!7039145 (not res!2873581)) b!7039139))

(assert (= (and b!7039139 (not res!2873587)) b!7039144))

(assert (= (and b!7039144 (not res!2873570)) b!7039127))

(assert (= (and b!7039127 (not res!2873572)) b!7039121))

(assert (= (and b!7039121 (not res!2873565)) b!7039122))

(assert (= (and b!7039122 (not res!2873562)) b!7039142))

(assert (= (and b!7039142 (not res!2873560)) b!7039143))

(assert (= (and b!7039143 (not res!2873574)) b!7039123))

(assert (= (and b!7039143 res!2873583) b!7039146))

(assert (= (and b!7039143 (not res!2873558)) b!7039137))

(assert (= (and b!7039137 (not res!2873566)) b!7039119))

(assert (= (and b!7039119 (not res!2873579)) b!7039132))

(assert (= (and start!680792 condSetEmpty!49297) setIsEmpty!49297))

(assert (= (and start!680792 (not condSetEmpty!49297)) setNonEmpty!49297))

(assert (= setNonEmpty!49297 b!7039136))

(assert (= start!680792 b!7039133))

(assert (= (and start!680792 (is-Cons!67846 s!7408)) b!7039149))

(declare-fun m!7749610 () Bool)

(assert (=> b!7039144 m!7749610))

(declare-fun m!7749612 () Bool)

(assert (=> b!7039148 m!7749612))

(declare-fun m!7749614 () Bool)

(assert (=> b!7039148 m!7749614))

(declare-fun m!7749616 () Bool)

(assert (=> start!680792 m!7749616))

(declare-fun m!7749618 () Bool)

(assert (=> start!680792 m!7749618))

(declare-fun m!7749620 () Bool)

(assert (=> start!680792 m!7749620))

(declare-fun m!7749622 () Bool)

(assert (=> b!7039117 m!7749622))

(declare-fun m!7749624 () Bool)

(assert (=> b!7039117 m!7749624))

(assert (=> b!7039117 m!7749624))

(declare-fun m!7749626 () Bool)

(assert (=> b!7039117 m!7749626))

(declare-fun m!7749628 () Bool)

(assert (=> b!7039117 m!7749628))

(declare-fun m!7749630 () Bool)

(assert (=> b!7039117 m!7749630))

(assert (=> b!7039117 m!7749624))

(assert (=> b!7039117 m!7749624))

(declare-fun m!7749632 () Bool)

(assert (=> b!7039117 m!7749632))

(declare-fun m!7749634 () Bool)

(assert (=> b!7039135 m!7749634))

(assert (=> b!7039135 m!7749624))

(assert (=> b!7039129 m!7749624))

(assert (=> b!7039129 m!7749624))

(assert (=> b!7039129 m!7749626))

(declare-fun m!7749636 () Bool)

(assert (=> b!7039129 m!7749636))

(declare-fun m!7749638 () Bool)

(assert (=> b!7039129 m!7749638))

(declare-fun m!7749640 () Bool)

(assert (=> b!7039143 m!7749640))

(declare-fun m!7749642 () Bool)

(assert (=> b!7039143 m!7749642))

(declare-fun m!7749644 () Bool)

(assert (=> b!7039143 m!7749644))

(declare-fun m!7749646 () Bool)

(assert (=> b!7039143 m!7749646))

(declare-fun m!7749648 () Bool)

(assert (=> b!7039143 m!7749648))

(declare-fun m!7749650 () Bool)

(assert (=> b!7039124 m!7749650))

(declare-fun m!7749652 () Bool)

(assert (=> b!7039124 m!7749652))

(declare-fun m!7749654 () Bool)

(assert (=> b!7039121 m!7749654))

(declare-fun m!7749656 () Bool)

(assert (=> b!7039131 m!7749656))

(declare-fun m!7749658 () Bool)

(assert (=> b!7039131 m!7749658))

(declare-fun m!7749660 () Bool)

(assert (=> b!7039131 m!7749660))

(declare-fun m!7749662 () Bool)

(assert (=> b!7039131 m!7749662))

(declare-fun m!7749664 () Bool)

(assert (=> b!7039131 m!7749664))

(declare-fun m!7749666 () Bool)

(assert (=> b!7039131 m!7749666))

(assert (=> b!7039130 m!7749634))

(declare-fun m!7749668 () Bool)

(assert (=> b!7039145 m!7749668))

(declare-fun m!7749670 () Bool)

(assert (=> b!7039128 m!7749670))

(assert (=> b!7039128 m!7749624))

(declare-fun m!7749672 () Bool)

(assert (=> b!7039123 m!7749672))

(declare-fun m!7749674 () Bool)

(assert (=> setNonEmpty!49297 m!7749674))

(declare-fun m!7749676 () Bool)

(assert (=> b!7039126 m!7749676))

(declare-fun m!7749678 () Bool)

(assert (=> b!7039119 m!7749678))

(declare-fun m!7749680 () Bool)

(assert (=> b!7039138 m!7749680))

(assert (=> b!7039138 m!7749652))

(declare-fun m!7749682 () Bool)

(assert (=> b!7039138 m!7749682))

(declare-fun m!7749684 () Bool)

(assert (=> b!7039138 m!7749684))

(declare-fun m!7749686 () Bool)

(assert (=> b!7039138 m!7749686))

(declare-fun m!7749688 () Bool)

(assert (=> b!7039141 m!7749688))

(declare-fun m!7749690 () Bool)

(assert (=> b!7039141 m!7749690))

(assert (=> b!7039141 m!7749652))

(declare-fun m!7749692 () Bool)

(assert (=> b!7039141 m!7749692))

(declare-fun m!7749694 () Bool)

(assert (=> b!7039142 m!7749694))

(declare-fun m!7749696 () Bool)

(assert (=> b!7039142 m!7749696))

(assert (=> b!7039125 m!7749624))

(assert (=> b!7039125 m!7749624))

(declare-fun m!7749698 () Bool)

(assert (=> b!7039125 m!7749698))

(declare-fun m!7749700 () Bool)

(assert (=> b!7039125 m!7749700))

(assert (=> b!7039125 m!7749624))

(declare-fun m!7749702 () Bool)

(assert (=> b!7039125 m!7749702))

(declare-fun m!7749704 () Bool)

(assert (=> b!7039125 m!7749704))

(assert (=> b!7039116 m!7749624))

(declare-fun m!7749706 () Bool)

(assert (=> b!7039116 m!7749706))

(declare-fun m!7749708 () Bool)

(assert (=> b!7039116 m!7749708))

(assert (=> b!7039116 m!7749624))

(declare-fun m!7749710 () Bool)

(assert (=> b!7039116 m!7749710))

(declare-fun m!7749712 () Bool)

(assert (=> b!7039116 m!7749712))

(declare-fun m!7749714 () Bool)

(assert (=> b!7039116 m!7749714))

(assert (=> b!7039116 m!7749638))

(declare-fun m!7749716 () Bool)

(assert (=> b!7039116 m!7749716))

(assert (=> b!7039116 m!7749624))

(assert (=> b!7039116 m!7749624))

(declare-fun m!7749718 () Bool)

(assert (=> b!7039116 m!7749718))

(assert (=> b!7039116 m!7749694))

(declare-fun m!7749720 () Bool)

(assert (=> b!7039116 m!7749720))

(declare-fun m!7749722 () Bool)

(assert (=> b!7039116 m!7749722))

(declare-fun m!7749724 () Bool)

(assert (=> b!7039116 m!7749724))

(declare-fun m!7749726 () Bool)

(assert (=> b!7039116 m!7749726))

(assert (=> b!7039120 m!7749634))

(assert (=> b!7039120 m!7749624))

(assert (=> b!7039146 m!7749672))

(assert (=> b!7039137 m!7749694))

(declare-fun m!7749728 () Bool)

(assert (=> b!7039137 m!7749728))

(declare-fun m!7749730 () Bool)

(assert (=> b!7039137 m!7749730))

(declare-fun m!7749732 () Bool)

(assert (=> b!7039137 m!7749732))

(assert (=> b!7039137 m!7749706))

(assert (=> b!7039137 m!7749708))

(declare-fun m!7749734 () Bool)

(assert (=> b!7039127 m!7749734))

(declare-fun m!7749736 () Bool)

(assert (=> b!7039139 m!7749736))

(declare-fun m!7749738 () Bool)

(assert (=> b!7039139 m!7749738))

(declare-fun m!7749740 () Bool)

(assert (=> b!7039139 m!7749740))

(declare-fun m!7749742 () Bool)

(assert (=> b!7039139 m!7749742))

(declare-fun m!7749744 () Bool)

(assert (=> b!7039139 m!7749744))

(declare-fun m!7749746 () Bool)

(assert (=> b!7039139 m!7749746))

(declare-fun m!7749748 () Bool)

(assert (=> b!7039118 m!7749748))

(declare-fun m!7749750 () Bool)

(assert (=> b!7039122 m!7749750))

(declare-fun m!7749752 () Bool)

(assert (=> b!7039122 m!7749752))

(declare-fun m!7749754 () Bool)

(assert (=> b!7039122 m!7749754))

(declare-fun m!7749756 () Bool)

(assert (=> b!7039122 m!7749756))

(declare-fun m!7749758 () Bool)

(assert (=> b!7039122 m!7749758))

(push 1)

(assert (not b!7039123))

(assert tp_is_empty!44185)

(assert (not b!7039117))

(assert (not b!7039128))

(assert (not b!7039139))

(assert (not b!7039135))

(assert (not b!7039143))

(assert (not setNonEmpty!49297))

(assert (not b!7039142))

(assert (not b!7039141))

(assert (not b!7039127))

(assert (not b!7039131))

(assert (not b!7039149))

(assert (not b!7039120))

(assert (not b!7039118))

(assert (not b!7039129))

(assert (not b!7039144))

(assert (not b!7039124))

(assert (not b!7039125))

(assert (not b!7039138))

(assert (not b!7039116))

(assert (not b!7039133))

(assert (not b!7039137))

(assert (not b!7039130))

(assert (not b!7039121))

(assert (not b!7039136))

(assert (not b!7039122))

(assert (not start!680792))

(assert (not b!7039148))

(assert (not b!7039146))

(assert (not b!7039119))

(assert (not b!7039145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2197612 () Bool)

(declare-fun c!1310076 () Bool)

(assert (=> d!2197612 (= c!1310076 (isEmpty!39586 lt!2522832))))

(declare-fun e!4231733 () Bool)

(assert (=> d!2197612 (= (matchZipper!3020 lt!2522865 lt!2522832) e!4231733)))

(declare-fun b!7039268 () Bool)

(declare-fun nullableZipper!2591 ((Set Context!12952)) Bool)

(assert (=> b!7039268 (= e!4231733 (nullableZipper!2591 lt!2522865))))

(declare-fun b!7039269 () Bool)

(assert (=> b!7039269 (= e!4231733 (matchZipper!3020 (derivationStepZipper!2936 lt!2522865 (head!14282 lt!2522832)) (tail!13581 lt!2522832)))))

(assert (= (and d!2197612 c!1310076) b!7039268))

(assert (= (and d!2197612 (not c!1310076)) b!7039269))

(declare-fun m!7749910 () Bool)

(assert (=> d!2197612 m!7749910))

(declare-fun m!7749912 () Bool)

(assert (=> b!7039268 m!7749912))

(declare-fun m!7749914 () Bool)

(assert (=> b!7039269 m!7749914))

(assert (=> b!7039269 m!7749914))

(declare-fun m!7749916 () Bool)

(assert (=> b!7039269 m!7749916))

(declare-fun m!7749918 () Bool)

(assert (=> b!7039269 m!7749918))

(assert (=> b!7039269 m!7749916))

(assert (=> b!7039269 m!7749918))

(declare-fun m!7749920 () Bool)

(assert (=> b!7039269 m!7749920))

(assert (=> b!7039143 d!2197612))

(declare-fun d!2197614 () Bool)

(assert (=> d!2197614 (= (tail!13581 (_1!37356 lt!2522831)) (t!381741 (_1!37356 lt!2522831)))))

(assert (=> b!7039143 d!2197614))

(declare-fun d!2197616 () Bool)

(declare-fun c!1310077 () Bool)

(assert (=> d!2197616 (= c!1310077 (isEmpty!39586 (_1!37356 lt!2522831)))))

(declare-fun e!4231734 () Bool)

(assert (=> d!2197616 (= (matchZipper!3020 lt!2522834 (_1!37356 lt!2522831)) e!4231734)))

(declare-fun b!7039270 () Bool)

(assert (=> b!7039270 (= e!4231734 (nullableZipper!2591 lt!2522834))))

(declare-fun b!7039271 () Bool)

(assert (=> b!7039271 (= e!4231734 (matchZipper!3020 (derivationStepZipper!2936 lt!2522834 (head!14282 (_1!37356 lt!2522831))) (tail!13581 (_1!37356 lt!2522831))))))

(assert (= (and d!2197616 c!1310077) b!7039270))

(assert (= (and d!2197616 (not c!1310077)) b!7039271))

(assert (=> d!2197616 m!7749654))

(declare-fun m!7749922 () Bool)

(assert (=> b!7039270 m!7749922))

(assert (=> b!7039271 m!7749728))

(assert (=> b!7039271 m!7749728))

(declare-fun m!7749924 () Bool)

(assert (=> b!7039271 m!7749924))

(assert (=> b!7039271 m!7749640))

(assert (=> b!7039271 m!7749924))

(assert (=> b!7039271 m!7749640))

(declare-fun m!7749926 () Bool)

(assert (=> b!7039271 m!7749926))

(assert (=> b!7039143 d!2197616))

(declare-fun e!4231737 () Bool)

(declare-fun d!2197618 () Bool)

(assert (=> d!2197618 (= (matchZipper!3020 (set.union lt!2522865 lt!2522881) lt!2522832) e!4231737)))

(declare-fun res!2873685 () Bool)

(assert (=> d!2197618 (=> res!2873685 e!4231737)))

(assert (=> d!2197618 (= res!2873685 (matchZipper!3020 lt!2522865 lt!2522832))))

(declare-fun lt!2523083 () Unit!161640)

(declare-fun choose!53390 ((Set Context!12952) (Set Context!12952) List!67970) Unit!161640)

(assert (=> d!2197618 (= lt!2523083 (choose!53390 lt!2522865 lt!2522881 lt!2522832))))

(assert (=> d!2197618 (= (lemmaZipperConcatMatchesSameAsBothZippers!1553 lt!2522865 lt!2522881 lt!2522832) lt!2523083)))

(declare-fun b!7039274 () Bool)

(assert (=> b!7039274 (= e!4231737 (matchZipper!3020 lt!2522881 lt!2522832))))

(assert (= (and d!2197618 (not res!2873685)) b!7039274))

(declare-fun m!7749928 () Bool)

(assert (=> d!2197618 m!7749928))

(assert (=> d!2197618 m!7749648))

(declare-fun m!7749930 () Bool)

(assert (=> d!2197618 m!7749930))

(assert (=> b!7039274 m!7749672))

(assert (=> b!7039143 d!2197618))

(declare-fun d!2197620 () Bool)

(declare-fun c!1310078 () Bool)

(assert (=> d!2197620 (= c!1310078 (isEmpty!39586 lt!2522832))))

(declare-fun e!4231738 () Bool)

(assert (=> d!2197620 (= (matchZipper!3020 lt!2522860 lt!2522832) e!4231738)))

(declare-fun b!7039275 () Bool)

(assert (=> b!7039275 (= e!4231738 (nullableZipper!2591 lt!2522860))))

(declare-fun b!7039276 () Bool)

(assert (=> b!7039276 (= e!4231738 (matchZipper!3020 (derivationStepZipper!2936 lt!2522860 (head!14282 lt!2522832)) (tail!13581 lt!2522832)))))

(assert (= (and d!2197620 c!1310078) b!7039275))

(assert (= (and d!2197620 (not c!1310078)) b!7039276))

(assert (=> d!2197620 m!7749910))

(declare-fun m!7749932 () Bool)

(assert (=> b!7039275 m!7749932))

(assert (=> b!7039276 m!7749914))

(assert (=> b!7039276 m!7749914))

(declare-fun m!7749934 () Bool)

(assert (=> b!7039276 m!7749934))

(assert (=> b!7039276 m!7749918))

(assert (=> b!7039276 m!7749934))

(assert (=> b!7039276 m!7749918))

(declare-fun m!7749936 () Bool)

(assert (=> b!7039276 m!7749936))

(assert (=> b!7039143 d!2197620))

(declare-fun d!2197622 () Bool)

(declare-fun c!1310079 () Bool)

(assert (=> d!2197622 (= c!1310079 (isEmpty!39586 lt!2522832))))

(declare-fun e!4231739 () Bool)

(assert (=> d!2197622 (= (matchZipper!3020 lt!2522881 lt!2522832) e!4231739)))

(declare-fun b!7039277 () Bool)

(assert (=> b!7039277 (= e!4231739 (nullableZipper!2591 lt!2522881))))

(declare-fun b!7039278 () Bool)

(assert (=> b!7039278 (= e!4231739 (matchZipper!3020 (derivationStepZipper!2936 lt!2522881 (head!14282 lt!2522832)) (tail!13581 lt!2522832)))))

(assert (= (and d!2197622 c!1310079) b!7039277))

(assert (= (and d!2197622 (not c!1310079)) b!7039278))

(assert (=> d!2197622 m!7749910))

(declare-fun m!7749938 () Bool)

(assert (=> b!7039277 m!7749938))

(assert (=> b!7039278 m!7749914))

(assert (=> b!7039278 m!7749914))

(declare-fun m!7749940 () Bool)

(assert (=> b!7039278 m!7749940))

(assert (=> b!7039278 m!7749918))

(assert (=> b!7039278 m!7749940))

(assert (=> b!7039278 m!7749918))

(declare-fun m!7749942 () Bool)

(assert (=> b!7039278 m!7749942))

(assert (=> b!7039123 d!2197622))

(declare-fun d!2197624 () Bool)

(declare-fun c!1310080 () Bool)

(assert (=> d!2197624 (= c!1310080 (isEmpty!39586 (_2!37356 lt!2522831)))))

(declare-fun e!4231740 () Bool)

(assert (=> d!2197624 (= (matchZipper!3020 lt!2522874 (_2!37356 lt!2522831)) e!4231740)))

(declare-fun b!7039279 () Bool)

(assert (=> b!7039279 (= e!4231740 (nullableZipper!2591 lt!2522874))))

(declare-fun b!7039280 () Bool)

(assert (=> b!7039280 (= e!4231740 (matchZipper!3020 (derivationStepZipper!2936 lt!2522874 (head!14282 (_2!37356 lt!2522831))) (tail!13581 (_2!37356 lt!2522831))))))

(assert (= (and d!2197624 c!1310080) b!7039279))

(assert (= (and d!2197624 (not c!1310080)) b!7039280))

(declare-fun m!7749944 () Bool)

(assert (=> d!2197624 m!7749944))

(declare-fun m!7749946 () Bool)

(assert (=> b!7039279 m!7749946))

(declare-fun m!7749948 () Bool)

(assert (=> b!7039280 m!7749948))

(assert (=> b!7039280 m!7749948))

(declare-fun m!7749950 () Bool)

(assert (=> b!7039280 m!7749950))

(declare-fun m!7749952 () Bool)

(assert (=> b!7039280 m!7749952))

(assert (=> b!7039280 m!7749950))

(assert (=> b!7039280 m!7749952))

(declare-fun m!7749954 () Bool)

(assert (=> b!7039280 m!7749954))

(assert (=> b!7039144 d!2197624))

(declare-fun call!639312 () (Set Context!12952))

(declare-fun e!4231747 () (Set Context!12952))

(declare-fun b!7039291 () Bool)

(assert (=> b!7039291 (= e!4231747 (set.union call!639312 (derivationStepZipperUp!2090 (Context!12953 (t!381739 (exprs!6976 lt!2522863))) (h!74294 s!7408))))))

(declare-fun b!7039292 () Bool)

(declare-fun e!4231749 () (Set Context!12952))

(assert (=> b!7039292 (= e!4231747 e!4231749)))

(declare-fun c!1310085 () Bool)

(assert (=> b!7039292 (= c!1310085 (is-Cons!67844 (exprs!6976 lt!2522863)))))

(declare-fun b!7039293 () Bool)

(declare-fun e!4231748 () Bool)

(assert (=> b!7039293 (= e!4231748 (nullable!7191 (h!74292 (exprs!6976 lt!2522863))))))

(declare-fun b!7039294 () Bool)

(assert (=> b!7039294 (= e!4231749 (as set.empty (Set Context!12952)))))

(declare-fun d!2197626 () Bool)

(declare-fun c!1310086 () Bool)

(assert (=> d!2197626 (= c!1310086 e!4231748)))

(declare-fun res!2873688 () Bool)

(assert (=> d!2197626 (=> (not res!2873688) (not e!4231748))))

(assert (=> d!2197626 (= res!2873688 (is-Cons!67844 (exprs!6976 lt!2522863)))))

(assert (=> d!2197626 (= (derivationStepZipperUp!2090 lt!2522863 (h!74294 s!7408)) e!4231747)))

(declare-fun bm!639307 () Bool)

(assert (=> bm!639307 (= call!639312 (derivationStepZipperDown!2144 (h!74292 (exprs!6976 lt!2522863)) (Context!12953 (t!381739 (exprs!6976 lt!2522863))) (h!74294 s!7408)))))

(declare-fun b!7039295 () Bool)

(assert (=> b!7039295 (= e!4231749 call!639312)))

(assert (= (and d!2197626 res!2873688) b!7039293))

(assert (= (and d!2197626 c!1310086) b!7039291))

(assert (= (and d!2197626 (not c!1310086)) b!7039292))

(assert (= (and b!7039292 c!1310085) b!7039295))

(assert (= (and b!7039292 (not c!1310085)) b!7039294))

(assert (= (or b!7039291 b!7039295) bm!639307))

(declare-fun m!7749956 () Bool)

(assert (=> b!7039291 m!7749956))

(declare-fun m!7749958 () Bool)

(assert (=> b!7039293 m!7749958))

(declare-fun m!7749960 () Bool)

(assert (=> bm!639307 m!7749960))

(assert (=> b!7039142 d!2197626))

(declare-fun b!7039318 () Bool)

(declare-fun e!4231762 () (Set Context!12952))

(declare-fun e!4231765 () (Set Context!12952))

(assert (=> b!7039318 (= e!4231762 e!4231765)))

(declare-fun c!1310101 () Bool)

(assert (=> b!7039318 (= c!1310101 (is-Concat!26325 (h!74292 (exprs!6976 lt!2522864))))))

(declare-fun b!7039319 () Bool)

(declare-fun call!639329 () (Set Context!12952))

(declare-fun call!639326 () (Set Context!12952))

(assert (=> b!7039319 (= e!4231762 (set.union call!639329 call!639326))))

(declare-fun b!7039320 () Bool)

(declare-fun e!4231766 () (Set Context!12952))

(assert (=> b!7039320 (= e!4231766 (as set.empty (Set Context!12952)))))

(declare-fun b!7039321 () Bool)

(declare-fun e!4231764 () Bool)

(assert (=> b!7039321 (= e!4231764 (nullable!7191 (regOne!35472 (h!74292 (exprs!6976 lt!2522864)))))))

(declare-fun c!1310099 () Bool)

(declare-fun bm!639320 () Bool)

(declare-fun c!1310100 () Bool)

(declare-fun call!639330 () (Set Context!12952))

(declare-fun call!639328 () List!67968)

(assert (=> bm!639320 (= call!639330 (derivationStepZipperDown!2144 (ite c!1310099 (regOne!35473 (h!74292 (exprs!6976 lt!2522864))) (ite c!1310100 (regTwo!35472 (h!74292 (exprs!6976 lt!2522864))) (ite c!1310101 (regOne!35472 (h!74292 (exprs!6976 lt!2522864))) (reg!17809 (h!74292 (exprs!6976 lt!2522864)))))) (ite (or c!1310099 c!1310100) lt!2522863 (Context!12953 call!639328)) (h!74294 s!7408)))))

(declare-fun call!639325 () List!67968)

(declare-fun bm!639321 () Bool)

(declare-fun $colon$colon!2584 (List!67968 Regex!17480) List!67968)

(assert (=> bm!639321 (= call!639325 ($colon$colon!2584 (exprs!6976 lt!2522863) (ite (or c!1310100 c!1310101) (regTwo!35472 (h!74292 (exprs!6976 lt!2522864))) (h!74292 (exprs!6976 lt!2522864)))))))

(declare-fun b!7039322 () Bool)

(declare-fun e!4231767 () (Set Context!12952))

(assert (=> b!7039322 (= e!4231767 (set.insert lt!2522863 (as set.empty (Set Context!12952))))))

(declare-fun b!7039323 () Bool)

(declare-fun call!639327 () (Set Context!12952))

(assert (=> b!7039323 (= e!4231765 call!639327)))

(declare-fun bm!639322 () Bool)

(assert (=> bm!639322 (= call!639328 call!639325)))

(declare-fun d!2197628 () Bool)

(declare-fun c!1310097 () Bool)

(assert (=> d!2197628 (= c!1310097 (and (is-ElementMatch!17480 (h!74292 (exprs!6976 lt!2522864))) (= (c!1310054 (h!74292 (exprs!6976 lt!2522864))) (h!74294 s!7408))))))

(assert (=> d!2197628 (= (derivationStepZipperDown!2144 (h!74292 (exprs!6976 lt!2522864)) lt!2522863 (h!74294 s!7408)) e!4231767)))

(declare-fun b!7039324 () Bool)

(assert (=> b!7039324 (= c!1310100 e!4231764)))

(declare-fun res!2873691 () Bool)

(assert (=> b!7039324 (=> (not res!2873691) (not e!4231764))))

(assert (=> b!7039324 (= res!2873691 (is-Concat!26325 (h!74292 (exprs!6976 lt!2522864))))))

(declare-fun e!4231763 () (Set Context!12952))

(assert (=> b!7039324 (= e!4231763 e!4231762)))

(declare-fun bm!639323 () Bool)

(assert (=> bm!639323 (= call!639326 call!639330)))

(declare-fun bm!639324 () Bool)

(assert (=> bm!639324 (= call!639329 (derivationStepZipperDown!2144 (ite c!1310099 (regTwo!35473 (h!74292 (exprs!6976 lt!2522864))) (regOne!35472 (h!74292 (exprs!6976 lt!2522864)))) (ite c!1310099 lt!2522863 (Context!12953 call!639325)) (h!74294 s!7408)))))

(declare-fun b!7039325 () Bool)

(assert (=> b!7039325 (= e!4231763 (set.union call!639330 call!639329))))

(declare-fun b!7039326 () Bool)

(declare-fun c!1310098 () Bool)

(assert (=> b!7039326 (= c!1310098 (is-Star!17480 (h!74292 (exprs!6976 lt!2522864))))))

(assert (=> b!7039326 (= e!4231765 e!4231766)))

(declare-fun bm!639325 () Bool)

(assert (=> bm!639325 (= call!639327 call!639326)))

(declare-fun b!7039327 () Bool)

(assert (=> b!7039327 (= e!4231767 e!4231763)))

(assert (=> b!7039327 (= c!1310099 (is-Union!17480 (h!74292 (exprs!6976 lt!2522864))))))

(declare-fun b!7039328 () Bool)

(assert (=> b!7039328 (= e!4231766 call!639327)))

(assert (= (and d!2197628 c!1310097) b!7039322))

(assert (= (and d!2197628 (not c!1310097)) b!7039327))

(assert (= (and b!7039327 c!1310099) b!7039325))

(assert (= (and b!7039327 (not c!1310099)) b!7039324))

(assert (= (and b!7039324 res!2873691) b!7039321))

(assert (= (and b!7039324 c!1310100) b!7039319))

(assert (= (and b!7039324 (not c!1310100)) b!7039318))

(assert (= (and b!7039318 c!1310101) b!7039323))

(assert (= (and b!7039318 (not c!1310101)) b!7039326))

(assert (= (and b!7039326 c!1310098) b!7039328))

(assert (= (and b!7039326 (not c!1310098)) b!7039320))

(assert (= (or b!7039323 b!7039328) bm!639322))

(assert (= (or b!7039323 b!7039328) bm!639325))

(assert (= (or b!7039319 bm!639325) bm!639323))

(assert (= (or b!7039319 bm!639322) bm!639321))

(assert (= (or b!7039325 bm!639323) bm!639320))

(assert (= (or b!7039325 b!7039319) bm!639324))

(declare-fun m!7749962 () Bool)

(assert (=> bm!639320 m!7749962))

(declare-fun m!7749964 () Bool)

(assert (=> b!7039321 m!7749964))

(assert (=> b!7039322 m!7749726))

(declare-fun m!7749966 () Bool)

(assert (=> bm!639321 m!7749966))

(declare-fun m!7749968 () Bool)

(assert (=> bm!639324 m!7749968))

(assert (=> b!7039142 d!2197628))

(declare-fun bs!1873020 () Bool)

(declare-fun d!2197630 () Bool)

(assert (= bs!1873020 (and d!2197630 b!7039138)))

(declare-fun lambda!416291 () Int)

(assert (=> bs!1873020 (= lambda!416291 lambda!416224)))

(assert (=> d!2197630 true))

(assert (=> d!2197630 (= (derivationStepZipper!2936 lt!2522834 (h!74294 s!7408)) (flatMap!2427 lt!2522834 lambda!416291))))

(declare-fun bs!1873021 () Bool)

(assert (= bs!1873021 d!2197630))

(declare-fun m!7749970 () Bool)

(assert (=> bs!1873021 m!7749970))

(assert (=> b!7039122 d!2197630))

(declare-fun b!7039331 () Bool)

(declare-fun e!4231768 () (Set Context!12952))

(declare-fun call!639331 () (Set Context!12952))

(assert (=> b!7039331 (= e!4231768 (set.union call!639331 (derivationStepZipperUp!2090 (Context!12953 (t!381739 (exprs!6976 lt!2522864))) (h!74294 s!7408))))))

(declare-fun b!7039332 () Bool)

(declare-fun e!4231770 () (Set Context!12952))

(assert (=> b!7039332 (= e!4231768 e!4231770)))

(declare-fun c!1310104 () Bool)

(assert (=> b!7039332 (= c!1310104 (is-Cons!67844 (exprs!6976 lt!2522864)))))

(declare-fun b!7039333 () Bool)

(declare-fun e!4231769 () Bool)

(assert (=> b!7039333 (= e!4231769 (nullable!7191 (h!74292 (exprs!6976 lt!2522864))))))

(declare-fun b!7039334 () Bool)

(assert (=> b!7039334 (= e!4231770 (as set.empty (Set Context!12952)))))

(declare-fun d!2197632 () Bool)

(declare-fun c!1310105 () Bool)

(assert (=> d!2197632 (= c!1310105 e!4231769)))

(declare-fun res!2873692 () Bool)

(assert (=> d!2197632 (=> (not res!2873692) (not e!4231769))))

(assert (=> d!2197632 (= res!2873692 (is-Cons!67844 (exprs!6976 lt!2522864)))))

(assert (=> d!2197632 (= (derivationStepZipperUp!2090 lt!2522864 (h!74294 s!7408)) e!4231768)))

(declare-fun bm!639326 () Bool)

(assert (=> bm!639326 (= call!639331 (derivationStepZipperDown!2144 (h!74292 (exprs!6976 lt!2522864)) (Context!12953 (t!381739 (exprs!6976 lt!2522864))) (h!74294 s!7408)))))

(declare-fun b!7039335 () Bool)

(assert (=> b!7039335 (= e!4231770 call!639331)))

(assert (= (and d!2197632 res!2873692) b!7039333))

(assert (= (and d!2197632 c!1310105) b!7039331))

(assert (= (and d!2197632 (not c!1310105)) b!7039332))

(assert (= (and b!7039332 c!1310104) b!7039335))

(assert (= (and b!7039332 (not c!1310104)) b!7039334))

(assert (= (or b!7039331 b!7039335) bm!639326))

(declare-fun m!7749972 () Bool)

(assert (=> b!7039331 m!7749972))

(assert (=> b!7039333 m!7749612))

(declare-fun m!7749974 () Bool)

(assert (=> bm!639326 m!7749974))

(assert (=> b!7039122 d!2197632))

(declare-fun d!2197634 () Bool)

(declare-fun choose!53391 ((Set Context!12952) Int) (Set Context!12952))

(assert (=> d!2197634 (= (flatMap!2427 lt!2522834 lambda!416224) (choose!53391 lt!2522834 lambda!416224))))

(declare-fun bs!1873022 () Bool)

(assert (= bs!1873022 d!2197634))

(declare-fun m!7749976 () Bool)

(assert (=> bs!1873022 m!7749976))

(assert (=> b!7039122 d!2197634))

(declare-fun d!2197636 () Bool)

(declare-fun dynLambda!27428 (Int Context!12952) (Set Context!12952))

(assert (=> d!2197636 (= (flatMap!2427 lt!2522834 lambda!416224) (dynLambda!27428 lambda!416224 lt!2522864))))

(declare-fun lt!2523086 () Unit!161640)

(declare-fun choose!53392 ((Set Context!12952) Context!12952 Int) Unit!161640)

(assert (=> d!2197636 (= lt!2523086 (choose!53392 lt!2522834 lt!2522864 lambda!416224))))

(assert (=> d!2197636 (= lt!2522834 (set.insert lt!2522864 (as set.empty (Set Context!12952))))))

(assert (=> d!2197636 (= (lemmaFlatMapOnSingletonSet!1941 lt!2522834 lt!2522864 lambda!416224) lt!2523086)))

(declare-fun b_lambda!267183 () Bool)

(assert (=> (not b_lambda!267183) (not d!2197636)))

(declare-fun bs!1873023 () Bool)

(assert (= bs!1873023 d!2197636))

(assert (=> bs!1873023 m!7749752))

(declare-fun m!7749978 () Bool)

(assert (=> bs!1873023 m!7749978))

(declare-fun m!7749980 () Bool)

(assert (=> bs!1873023 m!7749980))

(assert (=> bs!1873023 m!7749756))

(assert (=> b!7039122 d!2197636))

(declare-fun d!2197638 () Bool)

(declare-fun c!1310106 () Bool)

(assert (=> d!2197638 (= c!1310106 (isEmpty!39586 (t!381741 s!7408)))))

(declare-fun e!4231771 () Bool)

(assert (=> d!2197638 (= (matchZipper!3020 lt!2522836 (t!381741 s!7408)) e!4231771)))

(declare-fun b!7039336 () Bool)

(assert (=> b!7039336 (= e!4231771 (nullableZipper!2591 lt!2522836))))

(declare-fun b!7039337 () Bool)

(assert (=> b!7039337 (= e!4231771 (matchZipper!3020 (derivationStepZipper!2936 lt!2522836 (head!14282 (t!381741 s!7408))) (tail!13581 (t!381741 s!7408))))))

(assert (= (and d!2197638 c!1310106) b!7039336))

(assert (= (and d!2197638 (not c!1310106)) b!7039337))

(declare-fun m!7749982 () Bool)

(assert (=> d!2197638 m!7749982))

(declare-fun m!7749984 () Bool)

(assert (=> b!7039336 m!7749984))

(declare-fun m!7749986 () Bool)

(assert (=> b!7039337 m!7749986))

(assert (=> b!7039337 m!7749986))

(declare-fun m!7749988 () Bool)

(assert (=> b!7039337 m!7749988))

(declare-fun m!7749990 () Bool)

(assert (=> b!7039337 m!7749990))

(assert (=> b!7039337 m!7749988))

(assert (=> b!7039337 m!7749990))

(declare-fun m!7749992 () Bool)

(assert (=> b!7039337 m!7749992))

(assert (=> b!7039120 d!2197638))

(declare-fun d!2197640 () Bool)

(declare-fun forall!16400 (List!67968 Int) Bool)

(assert (=> d!2197640 (forall!16400 (++!15540 lt!2522851 (exprs!6976 ct2!306)) lambda!416223)))

(declare-fun lt!2523089 () Unit!161640)

(declare-fun choose!53393 (List!67968 List!67968 Int) Unit!161640)

(assert (=> d!2197640 (= lt!2523089 (choose!53393 lt!2522851 (exprs!6976 ct2!306) lambda!416223))))

(assert (=> d!2197640 (forall!16400 lt!2522851 lambda!416223)))

(assert (=> d!2197640 (= (lemmaConcatPreservesForall!801 lt!2522851 (exprs!6976 ct2!306) lambda!416223) lt!2523089)))

(declare-fun bs!1873024 () Bool)

(assert (= bs!1873024 d!2197640))

(assert (=> bs!1873024 m!7749638))

(assert (=> bs!1873024 m!7749638))

(declare-fun m!7749994 () Bool)

(assert (=> bs!1873024 m!7749994))

(declare-fun m!7749996 () Bool)

(assert (=> bs!1873024 m!7749996))

(declare-fun m!7749998 () Bool)

(assert (=> bs!1873024 m!7749998))

(assert (=> b!7039120 d!2197640))

(declare-fun d!2197642 () Bool)

(declare-fun e!4231777 () Bool)

(assert (=> d!2197642 e!4231777))

(declare-fun res!2873698 () Bool)

(assert (=> d!2197642 (=> (not res!2873698) (not e!4231777))))

(declare-fun lt!2523092 () List!67968)

(declare-fun content!13565 (List!67968) (Set Regex!17480))

(assert (=> d!2197642 (= res!2873698 (= (content!13565 lt!2523092) (set.union (content!13565 (exprs!6976 lt!2522864)) (content!13565 (exprs!6976 ct2!306)))))))

(declare-fun e!4231776 () List!67968)

(assert (=> d!2197642 (= lt!2523092 e!4231776)))

(declare-fun c!1310109 () Bool)

(assert (=> d!2197642 (= c!1310109 (is-Nil!67844 (exprs!6976 lt!2522864)))))

(assert (=> d!2197642 (= (++!15540 (exprs!6976 lt!2522864) (exprs!6976 ct2!306)) lt!2523092)))

(declare-fun b!7039346 () Bool)

(assert (=> b!7039346 (= e!4231776 (exprs!6976 ct2!306))))

(declare-fun b!7039348 () Bool)

(declare-fun res!2873697 () Bool)

(assert (=> b!7039348 (=> (not res!2873697) (not e!4231777))))

(declare-fun size!41084 (List!67968) Int)

(assert (=> b!7039348 (= res!2873697 (= (size!41084 lt!2523092) (+ (size!41084 (exprs!6976 lt!2522864)) (size!41084 (exprs!6976 ct2!306)))))))

(declare-fun b!7039349 () Bool)

(assert (=> b!7039349 (= e!4231777 (or (not (= (exprs!6976 ct2!306) Nil!67844)) (= lt!2523092 (exprs!6976 lt!2522864))))))

(declare-fun b!7039347 () Bool)

(assert (=> b!7039347 (= e!4231776 (Cons!67844 (h!74292 (exprs!6976 lt!2522864)) (++!15540 (t!381739 (exprs!6976 lt!2522864)) (exprs!6976 ct2!306))))))

(assert (= (and d!2197642 c!1310109) b!7039346))

(assert (= (and d!2197642 (not c!1310109)) b!7039347))

(assert (= (and d!2197642 res!2873698) b!7039348))

(assert (= (and b!7039348 res!2873697) b!7039349))

(declare-fun m!7750000 () Bool)

(assert (=> d!2197642 m!7750000))

(declare-fun m!7750002 () Bool)

(assert (=> d!2197642 m!7750002))

(declare-fun m!7750004 () Bool)

(assert (=> d!2197642 m!7750004))

(declare-fun m!7750006 () Bool)

(assert (=> b!7039348 m!7750006))

(declare-fun m!7750008 () Bool)

(assert (=> b!7039348 m!7750008))

(declare-fun m!7750010 () Bool)

(assert (=> b!7039348 m!7750010))

(declare-fun m!7750012 () Bool)

(assert (=> b!7039347 m!7750012))

(assert (=> b!7039141 d!2197642))

(declare-fun d!2197644 () Bool)

(assert (=> d!2197644 (forall!16400 (++!15540 (exprs!6976 lt!2522864) (exprs!6976 ct2!306)) lambda!416223)))

(declare-fun lt!2523093 () Unit!161640)

(assert (=> d!2197644 (= lt!2523093 (choose!53393 (exprs!6976 lt!2522864) (exprs!6976 ct2!306) lambda!416223))))

(assert (=> d!2197644 (forall!16400 (exprs!6976 lt!2522864) lambda!416223)))

(assert (=> d!2197644 (= (lemmaConcatPreservesForall!801 (exprs!6976 lt!2522864) (exprs!6976 ct2!306) lambda!416223) lt!2523093)))

(declare-fun bs!1873025 () Bool)

(assert (= bs!1873025 d!2197644))

(assert (=> bs!1873025 m!7749690))

(assert (=> bs!1873025 m!7749690))

(declare-fun m!7750014 () Bool)

(assert (=> bs!1873025 m!7750014))

(declare-fun m!7750016 () Bool)

(assert (=> bs!1873025 m!7750016))

(declare-fun m!7750018 () Bool)

(assert (=> bs!1873025 m!7750018))

(assert (=> b!7039141 d!2197644))

(declare-fun d!2197646 () Bool)

(declare-fun e!4231780 () Bool)

(assert (=> d!2197646 e!4231780))

(declare-fun res!2873701 () Bool)

(assert (=> d!2197646 (=> (not res!2873701) (not e!4231780))))

(declare-fun lt!2523096 () Context!12952)

(declare-fun dynLambda!27429 (Int Context!12952) Context!12952)

(assert (=> d!2197646 (= res!2873701 (= lt!2522838 (dynLambda!27429 lambda!416222 lt!2523096)))))

(declare-fun choose!53394 ((Set Context!12952) Int Context!12952) Context!12952)

(assert (=> d!2197646 (= lt!2523096 (choose!53394 z1!570 lambda!416222 lt!2522838))))

(assert (=> d!2197646 (set.member lt!2522838 (map!15788 z1!570 lambda!416222))))

(assert (=> d!2197646 (= (mapPost2!321 z1!570 lambda!416222 lt!2522838) lt!2523096)))

(declare-fun b!7039353 () Bool)

(assert (=> b!7039353 (= e!4231780 (set.member lt!2523096 z1!570))))

(assert (= (and d!2197646 res!2873701) b!7039353))

(declare-fun b_lambda!267185 () Bool)

(assert (=> (not b_lambda!267185) (not d!2197646)))

(declare-fun m!7750020 () Bool)

(assert (=> d!2197646 m!7750020))

(declare-fun m!7750022 () Bool)

(assert (=> d!2197646 m!7750022))

(declare-fun m!7750024 () Bool)

(assert (=> d!2197646 m!7750024))

(declare-fun m!7750026 () Bool)

(assert (=> d!2197646 m!7750026))

(declare-fun m!7750028 () Bool)

(assert (=> b!7039353 m!7750028))

(assert (=> b!7039141 d!2197646))

(declare-fun d!2197648 () Bool)

(declare-fun c!1310110 () Bool)

(assert (=> d!2197648 (= c!1310110 (isEmpty!39586 s!7408))))

(declare-fun e!4231781 () Bool)

(assert (=> d!2197648 (= (matchZipper!3020 lt!2522871 s!7408) e!4231781)))

(declare-fun b!7039354 () Bool)

(assert (=> b!7039354 (= e!4231781 (nullableZipper!2591 lt!2522871))))

(declare-fun b!7039355 () Bool)

(assert (=> b!7039355 (= e!4231781 (matchZipper!3020 (derivationStepZipper!2936 lt!2522871 (head!14282 s!7408)) (tail!13581 s!7408)))))

(assert (= (and d!2197648 c!1310110) b!7039354))

(assert (= (and d!2197648 (not c!1310110)) b!7039355))

(declare-fun m!7750030 () Bool)

(assert (=> d!2197648 m!7750030))

(declare-fun m!7750032 () Bool)

(assert (=> b!7039354 m!7750032))

(declare-fun m!7750034 () Bool)

(assert (=> b!7039355 m!7750034))

(assert (=> b!7039355 m!7750034))

(declare-fun m!7750036 () Bool)

(assert (=> b!7039355 m!7750036))

(declare-fun m!7750038 () Bool)

(assert (=> b!7039355 m!7750038))

(assert (=> b!7039355 m!7750036))

(assert (=> b!7039355 m!7750038))

(declare-fun m!7750040 () Bool)

(assert (=> b!7039355 m!7750040))

(assert (=> start!680792 d!2197648))

(declare-fun bs!1873026 () Bool)

(declare-fun d!2197650 () Bool)

(assert (= bs!1873026 (and d!2197650 b!7039141)))

(declare-fun lambda!416296 () Int)

(assert (=> bs!1873026 (= lambda!416296 lambda!416222)))

(assert (=> d!2197650 true))

(assert (=> d!2197650 (= (appendTo!601 z1!570 ct2!306) (map!15788 z1!570 lambda!416296))))

(declare-fun bs!1873027 () Bool)

(assert (= bs!1873027 d!2197650))

(declare-fun m!7750042 () Bool)

(assert (=> bs!1873027 m!7750042))

(assert (=> start!680792 d!2197650))

(declare-fun bs!1873028 () Bool)

(declare-fun d!2197652 () Bool)

(assert (= bs!1873028 (and d!2197652 b!7039141)))

(declare-fun lambda!416299 () Int)

(assert (=> bs!1873028 (= lambda!416299 lambda!416223)))

(assert (=> d!2197652 (= (inv!86560 ct2!306) (forall!16400 (exprs!6976 ct2!306) lambda!416299))))

(declare-fun bs!1873029 () Bool)

(assert (= bs!1873029 d!2197652))

(declare-fun m!7750044 () Bool)

(assert (=> bs!1873029 m!7750044))

(assert (=> start!680792 d!2197652))

(declare-fun d!2197654 () Bool)

(assert (=> d!2197654 (= (isEmpty!39586 (_1!37356 lt!2522831)) (is-Nil!67846 (_1!37356 lt!2522831)))))

(assert (=> b!7039121 d!2197654))

(declare-fun d!2197656 () Bool)

(declare-fun c!1310112 () Bool)

(assert (=> d!2197656 (= c!1310112 (isEmpty!39586 (_1!37356 lt!2522831)))))

(declare-fun e!4231782 () Bool)

(assert (=> d!2197656 (= (matchZipper!3020 lt!2522842 (_1!37356 lt!2522831)) e!4231782)))

(declare-fun b!7039356 () Bool)

(assert (=> b!7039356 (= e!4231782 (nullableZipper!2591 lt!2522842))))

(declare-fun b!7039357 () Bool)

(assert (=> b!7039357 (= e!4231782 (matchZipper!3020 (derivationStepZipper!2936 lt!2522842 (head!14282 (_1!37356 lt!2522831))) (tail!13581 (_1!37356 lt!2522831))))))

(assert (= (and d!2197656 c!1310112) b!7039356))

(assert (= (and d!2197656 (not c!1310112)) b!7039357))

(assert (=> d!2197656 m!7749654))

(declare-fun m!7750046 () Bool)

(assert (=> b!7039356 m!7750046))

(assert (=> b!7039357 m!7749728))

(assert (=> b!7039357 m!7749728))

(declare-fun m!7750048 () Bool)

(assert (=> b!7039357 m!7750048))

(assert (=> b!7039357 m!7749640))

(assert (=> b!7039357 m!7750048))

(assert (=> b!7039357 m!7749640))

(declare-fun m!7750050 () Bool)

(assert (=> b!7039357 m!7750050))

(assert (=> b!7039139 d!2197656))

(declare-fun d!2197658 () Bool)

(assert (=> d!2197658 (isDefined!13586 (findConcatSeparationZippers!401 lt!2522842 (set.insert ct2!306 (as set.empty (Set Context!12952))) Nil!67846 s!7408 s!7408))))

(declare-fun lt!2523101 () Unit!161640)

(declare-fun choose!53395 ((Set Context!12952) Context!12952 List!67970) Unit!161640)

(assert (=> d!2197658 (= lt!2523101 (choose!53395 lt!2522842 ct2!306 s!7408))))

(assert (=> d!2197658 (matchZipper!3020 (appendTo!601 lt!2522842 ct2!306) s!7408)))

(assert (=> d!2197658 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!389 lt!2522842 ct2!306 s!7408) lt!2523101)))

(declare-fun bs!1873030 () Bool)

(assert (= bs!1873030 d!2197658))

(assert (=> bs!1873030 m!7749738))

(declare-fun m!7750052 () Bool)

(assert (=> bs!1873030 m!7750052))

(declare-fun m!7750054 () Bool)

(assert (=> bs!1873030 m!7750054))

(assert (=> bs!1873030 m!7749738))

(assert (=> bs!1873030 m!7750052))

(declare-fun m!7750056 () Bool)

(assert (=> bs!1873030 m!7750056))

(declare-fun m!7750058 () Bool)

(assert (=> bs!1873030 m!7750058))

(declare-fun m!7750060 () Bool)

(assert (=> bs!1873030 m!7750060))

(assert (=> bs!1873030 m!7750058))

(assert (=> b!7039139 d!2197658))

(declare-fun b!7039376 () Bool)

(declare-fun res!2873715 () Bool)

(declare-fun e!4231794 () Bool)

(assert (=> b!7039376 (=> (not res!2873715) (not e!4231794))))

(declare-fun lt!2523108 () Option!16885)

(assert (=> b!7039376 (= res!2873715 (matchZipper!3020 lt!2522874 (_2!37356 (get!23776 lt!2523108))))))

(declare-fun b!7039378 () Bool)

(declare-fun e!4231797 () Option!16885)

(assert (=> b!7039378 (= e!4231797 (Some!16884 (tuple2!68107 Nil!67846 s!7408)))))

(declare-fun b!7039379 () Bool)

(declare-fun e!4231793 () Bool)

(assert (=> b!7039379 (= e!4231793 (not (isDefined!13586 lt!2523108)))))

(declare-fun b!7039380 () Bool)

(declare-fun e!4231796 () Bool)

(assert (=> b!7039380 (= e!4231796 (matchZipper!3020 lt!2522874 s!7408))))

(declare-fun b!7039381 () Bool)

(declare-fun e!4231795 () Option!16885)

(assert (=> b!7039381 (= e!4231797 e!4231795)))

(declare-fun c!1310117 () Bool)

(assert (=> b!7039381 (= c!1310117 (is-Nil!67846 s!7408))))

(declare-fun b!7039382 () Bool)

(assert (=> b!7039382 (= e!4231794 (= (++!15541 (_1!37356 (get!23776 lt!2523108)) (_2!37356 (get!23776 lt!2523108))) s!7408))))

(declare-fun d!2197660 () Bool)

(assert (=> d!2197660 e!4231793))

(declare-fun res!2873716 () Bool)

(assert (=> d!2197660 (=> res!2873716 e!4231793)))

(assert (=> d!2197660 (= res!2873716 e!4231794)))

(declare-fun res!2873712 () Bool)

(assert (=> d!2197660 (=> (not res!2873712) (not e!4231794))))

(assert (=> d!2197660 (= res!2873712 (isDefined!13586 lt!2523108))))

(assert (=> d!2197660 (= lt!2523108 e!4231797)))

(declare-fun c!1310118 () Bool)

(assert (=> d!2197660 (= c!1310118 e!4231796)))

(declare-fun res!2873714 () Bool)

(assert (=> d!2197660 (=> (not res!2873714) (not e!4231796))))

(assert (=> d!2197660 (= res!2873714 (matchZipper!3020 lt!2522842 Nil!67846))))

(assert (=> d!2197660 (= (++!15541 Nil!67846 s!7408) s!7408)))

(assert (=> d!2197660 (= (findConcatSeparationZippers!401 lt!2522842 lt!2522874 Nil!67846 s!7408 s!7408) lt!2523108)))

(declare-fun b!7039377 () Bool)

(assert (=> b!7039377 (= e!4231795 None!16884)))

(declare-fun b!7039383 () Bool)

(declare-fun lt!2523110 () Unit!161640)

(declare-fun lt!2523109 () Unit!161640)

(assert (=> b!7039383 (= lt!2523110 lt!2523109)))

(assert (=> b!7039383 (= (++!15541 (++!15541 Nil!67846 (Cons!67846 (h!74294 s!7408) Nil!67846)) (t!381741 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2934 (List!67970 C!35230 List!67970 List!67970) Unit!161640)

(assert (=> b!7039383 (= lt!2523109 (lemmaMoveElementToOtherListKeepsConcatEq!2934 Nil!67846 (h!74294 s!7408) (t!381741 s!7408) s!7408))))

(assert (=> b!7039383 (= e!4231795 (findConcatSeparationZippers!401 lt!2522842 lt!2522874 (++!15541 Nil!67846 (Cons!67846 (h!74294 s!7408) Nil!67846)) (t!381741 s!7408) s!7408))))

(declare-fun b!7039384 () Bool)

(declare-fun res!2873713 () Bool)

(assert (=> b!7039384 (=> (not res!2873713) (not e!4231794))))

(assert (=> b!7039384 (= res!2873713 (matchZipper!3020 lt!2522842 (_1!37356 (get!23776 lt!2523108))))))

(assert (= (and d!2197660 res!2873714) b!7039380))

(assert (= (and d!2197660 c!1310118) b!7039378))

(assert (= (and d!2197660 (not c!1310118)) b!7039381))

(assert (= (and b!7039381 c!1310117) b!7039377))

(assert (= (and b!7039381 (not c!1310117)) b!7039383))

(assert (= (and d!2197660 res!2873712) b!7039384))

(assert (= (and b!7039384 res!2873713) b!7039376))

(assert (= (and b!7039376 res!2873715) b!7039382))

(assert (= (and d!2197660 (not res!2873716)) b!7039379))

(declare-fun m!7750062 () Bool)

(assert (=> b!7039383 m!7750062))

(assert (=> b!7039383 m!7750062))

(declare-fun m!7750064 () Bool)

(assert (=> b!7039383 m!7750064))

(declare-fun m!7750066 () Bool)

(assert (=> b!7039383 m!7750066))

(assert (=> b!7039383 m!7750062))

(declare-fun m!7750068 () Bool)

(assert (=> b!7039383 m!7750068))

(declare-fun m!7750070 () Bool)

(assert (=> b!7039382 m!7750070))

(declare-fun m!7750072 () Bool)

(assert (=> b!7039382 m!7750072))

(declare-fun m!7750074 () Bool)

(assert (=> b!7039380 m!7750074))

(declare-fun m!7750076 () Bool)

(assert (=> d!2197660 m!7750076))

(declare-fun m!7750078 () Bool)

(assert (=> d!2197660 m!7750078))

(declare-fun m!7750080 () Bool)

(assert (=> d!2197660 m!7750080))

(assert (=> b!7039384 m!7750070))

(declare-fun m!7750082 () Bool)

(assert (=> b!7039384 m!7750082))

(assert (=> b!7039379 m!7750076))

(assert (=> b!7039376 m!7750070))

(declare-fun m!7750084 () Bool)

(assert (=> b!7039376 m!7750084))

(assert (=> b!7039139 d!2197660))

(declare-fun d!2197662 () Bool)

(declare-fun isEmpty!39589 (Option!16885) Bool)

(assert (=> d!2197662 (= (isDefined!13586 lt!2522848) (not (isEmpty!39589 lt!2522848)))))

(declare-fun bs!1873031 () Bool)

(assert (= bs!1873031 d!2197662))

(declare-fun m!7750086 () Bool)

(assert (=> bs!1873031 m!7750086))

(assert (=> b!7039139 d!2197662))

(declare-fun d!2197664 () Bool)

(assert (=> d!2197664 (= (get!23776 lt!2522848) (v!53174 lt!2522848))))

(assert (=> b!7039139 d!2197664))

(declare-fun d!2197666 () Bool)

(declare-fun c!1310119 () Bool)

(assert (=> d!2197666 (= c!1310119 (isEmpty!39586 lt!2522832))))

(declare-fun e!4231798 () Bool)

(assert (=> d!2197666 (= (matchZipper!3020 lt!2522830 lt!2522832) e!4231798)))

(declare-fun b!7039385 () Bool)

(assert (=> b!7039385 (= e!4231798 (nullableZipper!2591 lt!2522830))))

(declare-fun b!7039386 () Bool)

(assert (=> b!7039386 (= e!4231798 (matchZipper!3020 (derivationStepZipper!2936 lt!2522830 (head!14282 lt!2522832)) (tail!13581 lt!2522832)))))

(assert (= (and d!2197666 c!1310119) b!7039385))

(assert (= (and d!2197666 (not c!1310119)) b!7039386))

(assert (=> d!2197666 m!7749910))

(declare-fun m!7750088 () Bool)

(assert (=> b!7039385 m!7750088))

(assert (=> b!7039386 m!7749914))

(assert (=> b!7039386 m!7749914))

(declare-fun m!7750090 () Bool)

(assert (=> b!7039386 m!7750090))

(assert (=> b!7039386 m!7749918))

(assert (=> b!7039386 m!7750090))

(assert (=> b!7039386 m!7749918))

(declare-fun m!7750092 () Bool)

(assert (=> b!7039386 m!7750092))

(assert (=> b!7039119 d!2197666))

(declare-fun bs!1873032 () Bool)

(declare-fun d!2197668 () Bool)

(assert (= bs!1873032 (and d!2197668 b!7039138)))

(declare-fun lambda!416300 () Int)

(assert (=> bs!1873032 (= lambda!416300 lambda!416224)))

(declare-fun bs!1873033 () Bool)

(assert (= bs!1873033 (and d!2197668 d!2197630)))

(assert (=> bs!1873033 (= lambda!416300 lambda!416291)))

(assert (=> d!2197668 true))

(assert (=> d!2197668 (= (derivationStepZipper!2936 lt!2522862 (h!74294 s!7408)) (flatMap!2427 lt!2522862 lambda!416300))))

(declare-fun bs!1873034 () Bool)

(assert (= bs!1873034 d!2197668))

(declare-fun m!7750094 () Bool)

(assert (=> bs!1873034 m!7750094))

(assert (=> b!7039138 d!2197668))

(declare-fun b!7039387 () Bool)

(declare-fun call!639332 () (Set Context!12952))

(declare-fun e!4231799 () (Set Context!12952))

(assert (=> b!7039387 (= e!4231799 (set.union call!639332 (derivationStepZipperUp!2090 (Context!12953 (t!381739 (exprs!6976 lt!2522847))) (h!74294 s!7408))))))

(declare-fun b!7039388 () Bool)

(declare-fun e!4231801 () (Set Context!12952))

(assert (=> b!7039388 (= e!4231799 e!4231801)))

(declare-fun c!1310120 () Bool)

(assert (=> b!7039388 (= c!1310120 (is-Cons!67844 (exprs!6976 lt!2522847)))))

(declare-fun b!7039389 () Bool)

(declare-fun e!4231800 () Bool)

(assert (=> b!7039389 (= e!4231800 (nullable!7191 (h!74292 (exprs!6976 lt!2522847))))))

(declare-fun b!7039390 () Bool)

(assert (=> b!7039390 (= e!4231801 (as set.empty (Set Context!12952)))))

(declare-fun d!2197670 () Bool)

(declare-fun c!1310121 () Bool)

(assert (=> d!2197670 (= c!1310121 e!4231800)))

(declare-fun res!2873717 () Bool)

(assert (=> d!2197670 (=> (not res!2873717) (not e!4231800))))

(assert (=> d!2197670 (= res!2873717 (is-Cons!67844 (exprs!6976 lt!2522847)))))

(assert (=> d!2197670 (= (derivationStepZipperUp!2090 lt!2522847 (h!74294 s!7408)) e!4231799)))

(declare-fun bm!639327 () Bool)

(assert (=> bm!639327 (= call!639332 (derivationStepZipperDown!2144 (h!74292 (exprs!6976 lt!2522847)) (Context!12953 (t!381739 (exprs!6976 lt!2522847))) (h!74294 s!7408)))))

(declare-fun b!7039391 () Bool)

(assert (=> b!7039391 (= e!4231801 call!639332)))

(assert (= (and d!2197670 res!2873717) b!7039389))

(assert (= (and d!2197670 c!1310121) b!7039387))

(assert (= (and d!2197670 (not c!1310121)) b!7039388))

(assert (= (and b!7039388 c!1310120) b!7039391))

(assert (= (and b!7039388 (not c!1310120)) b!7039390))

(assert (= (or b!7039387 b!7039391) bm!639327))

(declare-fun m!7750096 () Bool)

(assert (=> b!7039387 m!7750096))

(declare-fun m!7750098 () Bool)

(assert (=> b!7039389 m!7750098))

(declare-fun m!7750100 () Bool)

(assert (=> bm!639327 m!7750100))

(assert (=> b!7039138 d!2197670))

(declare-fun d!2197672 () Bool)

(assert (=> d!2197672 (= (flatMap!2427 lt!2522862 lambda!416224) (dynLambda!27428 lambda!416224 lt!2522847))))

(declare-fun lt!2523111 () Unit!161640)

(assert (=> d!2197672 (= lt!2523111 (choose!53392 lt!2522862 lt!2522847 lambda!416224))))

(assert (=> d!2197672 (= lt!2522862 (set.insert lt!2522847 (as set.empty (Set Context!12952))))))

(assert (=> d!2197672 (= (lemmaFlatMapOnSingletonSet!1941 lt!2522862 lt!2522847 lambda!416224) lt!2523111)))

(declare-fun b_lambda!267187 () Bool)

(assert (=> (not b_lambda!267187) (not d!2197672)))

(declare-fun bs!1873035 () Bool)

(assert (= bs!1873035 d!2197672))

(assert (=> bs!1873035 m!7749680))

(declare-fun m!7750102 () Bool)

(assert (=> bs!1873035 m!7750102))

(declare-fun m!7750104 () Bool)

(assert (=> bs!1873035 m!7750104))

(assert (=> bs!1873035 m!7749650))

(assert (=> b!7039138 d!2197672))

(declare-fun d!2197674 () Bool)

(assert (=> d!2197674 (= (flatMap!2427 lt!2522862 lambda!416224) (choose!53391 lt!2522862 lambda!416224))))

(declare-fun bs!1873036 () Bool)

(assert (= bs!1873036 d!2197674))

(declare-fun m!7750106 () Bool)

(assert (=> bs!1873036 m!7750106))

(assert (=> b!7039138 d!2197674))

(assert (=> b!7039138 d!2197644))

(declare-fun d!2197676 () Bool)

(assert (=> d!2197676 (= (isEmpty!39585 (exprs!6976 lt!2522864)) (is-Nil!67844 (exprs!6976 lt!2522864)))))

(assert (=> b!7039118 d!2197676))

(declare-fun bs!1873037 () Bool)

(declare-fun d!2197678 () Bool)

(assert (= bs!1873037 (and d!2197678 b!7039141)))

(declare-fun lambda!416301 () Int)

(assert (=> bs!1873037 (= lambda!416301 lambda!416223)))

(declare-fun bs!1873038 () Bool)

(assert (= bs!1873038 (and d!2197678 d!2197652)))

(assert (=> bs!1873038 (= lambda!416301 lambda!416299)))

(assert (=> d!2197678 (= (inv!86560 setElem!49297) (forall!16400 (exprs!6976 setElem!49297) lambda!416301))))

(declare-fun bs!1873039 () Bool)

(assert (= bs!1873039 d!2197678))

(declare-fun m!7750108 () Bool)

(assert (=> bs!1873039 m!7750108))

(assert (=> setNonEmpty!49297 d!2197678))

(declare-fun d!2197680 () Bool)

(assert (=> d!2197680 (= (head!14282 (_1!37356 lt!2522831)) (h!74294 (_1!37356 lt!2522831)))))

(assert (=> b!7039137 d!2197680))

(declare-fun d!2197682 () Bool)

(assert (=> d!2197682 (= (flatMap!2427 lt!2522842 lambda!416224) (dynLambda!27428 lambda!416224 lt!2522863))))

(declare-fun lt!2523112 () Unit!161640)

(assert (=> d!2197682 (= lt!2523112 (choose!53392 lt!2522842 lt!2522863 lambda!416224))))

(assert (=> d!2197682 (= lt!2522842 (set.insert lt!2522863 (as set.empty (Set Context!12952))))))

(assert (=> d!2197682 (= (lemmaFlatMapOnSingletonSet!1941 lt!2522842 lt!2522863 lambda!416224) lt!2523112)))

(declare-fun b_lambda!267189 () Bool)

(assert (=> (not b_lambda!267189) (not d!2197682)))

(declare-fun bs!1873040 () Bool)

(assert (= bs!1873040 d!2197682))

(assert (=> bs!1873040 m!7749706))

(declare-fun m!7750110 () Bool)

(assert (=> bs!1873040 m!7750110))

(declare-fun m!7750112 () Bool)

(assert (=> bs!1873040 m!7750112))

(assert (=> bs!1873040 m!7749726))

(assert (=> b!7039137 d!2197682))

(assert (=> b!7039137 d!2197626))

(declare-fun b!7039392 () Bool)

(declare-fun call!639333 () (Set Context!12952))

(declare-fun e!4231802 () (Set Context!12952))

(assert (=> b!7039392 (= e!4231802 (set.union call!639333 (derivationStepZipperUp!2090 (Context!12953 (t!381739 (exprs!6976 lt!2522863))) lt!2522853)))))

(declare-fun b!7039393 () Bool)

(declare-fun e!4231804 () (Set Context!12952))

(assert (=> b!7039393 (= e!4231802 e!4231804)))

(declare-fun c!1310122 () Bool)

(assert (=> b!7039393 (= c!1310122 (is-Cons!67844 (exprs!6976 lt!2522863)))))

(declare-fun b!7039394 () Bool)

(declare-fun e!4231803 () Bool)

(assert (=> b!7039394 (= e!4231803 (nullable!7191 (h!74292 (exprs!6976 lt!2522863))))))

(declare-fun b!7039395 () Bool)

(assert (=> b!7039395 (= e!4231804 (as set.empty (Set Context!12952)))))

(declare-fun d!2197684 () Bool)

(declare-fun c!1310123 () Bool)

(assert (=> d!2197684 (= c!1310123 e!4231803)))

(declare-fun res!2873718 () Bool)

(assert (=> d!2197684 (=> (not res!2873718) (not e!4231803))))

(assert (=> d!2197684 (= res!2873718 (is-Cons!67844 (exprs!6976 lt!2522863)))))

(assert (=> d!2197684 (= (derivationStepZipperUp!2090 lt!2522863 lt!2522853) e!4231802)))

(declare-fun bm!639328 () Bool)

(assert (=> bm!639328 (= call!639333 (derivationStepZipperDown!2144 (h!74292 (exprs!6976 lt!2522863)) (Context!12953 (t!381739 (exprs!6976 lt!2522863))) lt!2522853))))

(declare-fun b!7039396 () Bool)

(assert (=> b!7039396 (= e!4231804 call!639333)))

(assert (= (and d!2197684 res!2873718) b!7039394))

(assert (= (and d!2197684 c!1310123) b!7039392))

(assert (= (and d!2197684 (not c!1310123)) b!7039393))

(assert (= (and b!7039393 c!1310122) b!7039396))

(assert (= (and b!7039393 (not c!1310122)) b!7039395))

(assert (= (or b!7039392 b!7039396) bm!639328))

(declare-fun m!7750114 () Bool)

(assert (=> b!7039392 m!7750114))

(assert (=> b!7039394 m!7749958))

(declare-fun m!7750116 () Bool)

(assert (=> bm!639328 m!7750116))

(assert (=> b!7039137 d!2197684))

(declare-fun bs!1873041 () Bool)

(declare-fun d!2197686 () Bool)

(assert (= bs!1873041 (and d!2197686 b!7039138)))

(declare-fun lambda!416302 () Int)

(assert (=> bs!1873041 (= (= lt!2522853 (h!74294 s!7408)) (= lambda!416302 lambda!416224))))

(declare-fun bs!1873042 () Bool)

(assert (= bs!1873042 (and d!2197686 d!2197630)))

(assert (=> bs!1873042 (= (= lt!2522853 (h!74294 s!7408)) (= lambda!416302 lambda!416291))))

(declare-fun bs!1873043 () Bool)

(assert (= bs!1873043 (and d!2197686 d!2197668)))

(assert (=> bs!1873043 (= (= lt!2522853 (h!74294 s!7408)) (= lambda!416302 lambda!416300))))

(assert (=> d!2197686 true))

(assert (=> d!2197686 (= (derivationStepZipper!2936 lt!2522842 lt!2522853) (flatMap!2427 lt!2522842 lambda!416302))))

(declare-fun bs!1873044 () Bool)

(assert (= bs!1873044 d!2197686))

(declare-fun m!7750118 () Bool)

(assert (=> bs!1873044 m!7750118))

(assert (=> b!7039137 d!2197686))

(declare-fun d!2197688 () Bool)

(assert (=> d!2197688 (= (flatMap!2427 lt!2522842 lambda!416224) (choose!53391 lt!2522842 lambda!416224))))

(declare-fun bs!1873045 () Bool)

(assert (= bs!1873045 d!2197688))

(declare-fun m!7750120 () Bool)

(assert (=> bs!1873045 m!7750120))

(assert (=> b!7039137 d!2197688))

(declare-fun e!4231805 () (Set Context!12952))

(declare-fun call!639334 () (Set Context!12952))

(declare-fun b!7039397 () Bool)

(assert (=> b!7039397 (= e!4231805 (set.union call!639334 (derivationStepZipperUp!2090 (Context!12953 (t!381739 (exprs!6976 lt!2522852))) (h!74294 s!7408))))))

(declare-fun b!7039398 () Bool)

(declare-fun e!4231807 () (Set Context!12952))

(assert (=> b!7039398 (= e!4231805 e!4231807)))

(declare-fun c!1310124 () Bool)

(assert (=> b!7039398 (= c!1310124 (is-Cons!67844 (exprs!6976 lt!2522852)))))

(declare-fun b!7039399 () Bool)

(declare-fun e!4231806 () Bool)

(assert (=> b!7039399 (= e!4231806 (nullable!7191 (h!74292 (exprs!6976 lt!2522852))))))

(declare-fun b!7039400 () Bool)

(assert (=> b!7039400 (= e!4231807 (as set.empty (Set Context!12952)))))

(declare-fun d!2197690 () Bool)

(declare-fun c!1310125 () Bool)

(assert (=> d!2197690 (= c!1310125 e!4231806)))

(declare-fun res!2873719 () Bool)

(assert (=> d!2197690 (=> (not res!2873719) (not e!4231806))))

(assert (=> d!2197690 (= res!2873719 (is-Cons!67844 (exprs!6976 lt!2522852)))))

(assert (=> d!2197690 (= (derivationStepZipperUp!2090 lt!2522852 (h!74294 s!7408)) e!4231805)))

(declare-fun bm!639329 () Bool)

(assert (=> bm!639329 (= call!639334 (derivationStepZipperDown!2144 (h!74292 (exprs!6976 lt!2522852)) (Context!12953 (t!381739 (exprs!6976 lt!2522852))) (h!74294 s!7408)))))

(declare-fun b!7039401 () Bool)

(assert (=> b!7039401 (= e!4231807 call!639334)))

(assert (= (and d!2197690 res!2873719) b!7039399))

(assert (= (and d!2197690 c!1310125) b!7039397))

(assert (= (and d!2197690 (not c!1310125)) b!7039398))

(assert (= (and b!7039398 c!1310124) b!7039401))

(assert (= (and b!7039398 (not c!1310124)) b!7039400))

(assert (= (or b!7039397 b!7039401) bm!639329))

(declare-fun m!7750122 () Bool)

(assert (=> b!7039397 m!7750122))

(declare-fun m!7750124 () Bool)

(assert (=> b!7039399 m!7750124))

(declare-fun m!7750126 () Bool)

(assert (=> bm!639329 m!7750126))

(assert (=> b!7039117 d!2197690))

(declare-fun d!2197692 () Bool)

(assert (=> d!2197692 (= (flatMap!2427 lt!2522825 lambda!416224) (choose!53391 lt!2522825 lambda!416224))))

(declare-fun bs!1873046 () Bool)

(assert (= bs!1873046 d!2197692))

(declare-fun m!7750128 () Bool)

(assert (=> bs!1873046 m!7750128))

(assert (=> b!7039117 d!2197692))

(declare-fun d!2197694 () Bool)

(assert (=> d!2197694 (= (flatMap!2427 lt!2522825 lambda!416224) (dynLambda!27428 lambda!416224 lt!2522852))))

(declare-fun lt!2523113 () Unit!161640)

(assert (=> d!2197694 (= lt!2523113 (choose!53392 lt!2522825 lt!2522852 lambda!416224))))

(assert (=> d!2197694 (= lt!2522825 (set.insert lt!2522852 (as set.empty (Set Context!12952))))))

(assert (=> d!2197694 (= (lemmaFlatMapOnSingletonSet!1941 lt!2522825 lt!2522852 lambda!416224) lt!2523113)))

(declare-fun b_lambda!267191 () Bool)

(assert (=> (not b_lambda!267191) (not d!2197694)))

(declare-fun bs!1873047 () Bool)

(assert (= bs!1873047 d!2197694))

(assert (=> bs!1873047 m!7749632))

(declare-fun m!7750130 () Bool)

(assert (=> bs!1873047 m!7750130))

(declare-fun m!7750132 () Bool)

(assert (=> bs!1873047 m!7750132))

(assert (=> bs!1873047 m!7749622))

(assert (=> b!7039117 d!2197694))

(assert (=> b!7039117 d!2197640))

(declare-fun bs!1873048 () Bool)

(declare-fun d!2197696 () Bool)

(assert (= bs!1873048 (and d!2197696 b!7039138)))

(declare-fun lambda!416303 () Int)

(assert (=> bs!1873048 (= lambda!416303 lambda!416224)))

(declare-fun bs!1873049 () Bool)

(assert (= bs!1873049 (and d!2197696 d!2197630)))

(assert (=> bs!1873049 (= lambda!416303 lambda!416291)))

(declare-fun bs!1873050 () Bool)

(assert (= bs!1873050 (and d!2197696 d!2197668)))

(assert (=> bs!1873050 (= lambda!416303 lambda!416300)))

(declare-fun bs!1873051 () Bool)

(assert (= bs!1873051 (and d!2197696 d!2197686)))

(assert (=> bs!1873051 (= (= (h!74294 s!7408) lt!2522853) (= lambda!416303 lambda!416302))))

(assert (=> d!2197696 true))

(assert (=> d!2197696 (= (derivationStepZipper!2936 lt!2522825 (h!74294 s!7408)) (flatMap!2427 lt!2522825 lambda!416303))))

(declare-fun bs!1873052 () Bool)

(assert (= bs!1873052 d!2197696))

(declare-fun m!7750134 () Bool)

(assert (=> bs!1873052 m!7750134))

(assert (=> b!7039117 d!2197696))

(assert (=> b!7039135 d!2197638))

(assert (=> b!7039135 d!2197640))

(declare-fun d!2197698 () Bool)

(declare-fun choose!53396 ((Set Context!12952) Int) (Set Context!12952))

(assert (=> d!2197698 (= (map!15788 lt!2522842 lambda!416222) (choose!53396 lt!2522842 lambda!416222))))

(declare-fun bs!1873053 () Bool)

(assert (= bs!1873053 d!2197698))

(declare-fun m!7750136 () Bool)

(assert (=> bs!1873053 m!7750136))

(assert (=> b!7039116 d!2197698))

(assert (=> b!7039116 d!2197682))

(assert (=> b!7039116 d!2197626))

(declare-fun d!2197700 () Bool)

(declare-fun lt!2523116 () Int)

(assert (=> d!2197700 (>= lt!2523116 0)))

(declare-fun e!4231810 () Int)

(assert (=> d!2197700 (= lt!2523116 e!4231810)))

(declare-fun c!1310128 () Bool)

(assert (=> d!2197700 (= c!1310128 (is-Cons!67845 lt!2522882))))

(assert (=> d!2197700 (= (zipperDepthTotal!543 lt!2522882) lt!2523116)))

(declare-fun b!7039406 () Bool)

(assert (=> b!7039406 (= e!4231810 (+ (contextDepthTotal!515 (h!74293 lt!2522882)) (zipperDepthTotal!543 (t!381740 lt!2522882))))))

(declare-fun b!7039407 () Bool)

(assert (=> b!7039407 (= e!4231810 0)))

(assert (= (and d!2197700 c!1310128) b!7039406))

(assert (= (and d!2197700 (not c!1310128)) b!7039407))

(declare-fun m!7750138 () Bool)

(assert (=> b!7039406 m!7750138))

(declare-fun m!7750140 () Bool)

(assert (=> b!7039406 m!7750140))

(assert (=> b!7039116 d!2197700))

(declare-fun d!2197702 () Bool)

(declare-fun e!4231813 () Bool)

(assert (=> d!2197702 e!4231813))

(declare-fun res!2873722 () Bool)

(assert (=> d!2197702 (=> (not res!2873722) (not e!4231813))))

(declare-fun lt!2523119 () List!67969)

(declare-fun noDuplicate!2638 (List!67969) Bool)

(assert (=> d!2197702 (= res!2873722 (noDuplicate!2638 lt!2523119))))

(declare-fun choose!53397 ((Set Context!12952)) List!67969)

(assert (=> d!2197702 (= lt!2523119 (choose!53397 z1!570))))

(assert (=> d!2197702 (= (toList!10823 z1!570) lt!2523119)))

(declare-fun b!7039410 () Bool)

(declare-fun content!13566 (List!67969) (Set Context!12952))

(assert (=> b!7039410 (= e!4231813 (= (content!13566 lt!2523119) z1!570))))

(assert (= (and d!2197702 res!2873722) b!7039410))

(declare-fun m!7750142 () Bool)

(assert (=> d!2197702 m!7750142))

(declare-fun m!7750144 () Bool)

(assert (=> d!2197702 m!7750144))

(declare-fun m!7750146 () Bool)

(assert (=> b!7039410 m!7750146))

(assert (=> b!7039116 d!2197702))

(declare-fun d!2197704 () Bool)

(declare-fun e!4231815 () Bool)

(assert (=> d!2197704 e!4231815))

(declare-fun res!2873724 () Bool)

(assert (=> d!2197704 (=> (not res!2873724) (not e!4231815))))

(declare-fun lt!2523120 () List!67968)

(assert (=> d!2197704 (= res!2873724 (= (content!13565 lt!2523120) (set.union (content!13565 lt!2522851) (content!13565 (exprs!6976 ct2!306)))))))

(declare-fun e!4231814 () List!67968)

(assert (=> d!2197704 (= lt!2523120 e!4231814)))

(declare-fun c!1310129 () Bool)

(assert (=> d!2197704 (= c!1310129 (is-Nil!67844 lt!2522851))))

(assert (=> d!2197704 (= (++!15540 lt!2522851 (exprs!6976 ct2!306)) lt!2523120)))

(declare-fun b!7039411 () Bool)

(assert (=> b!7039411 (= e!4231814 (exprs!6976 ct2!306))))

(declare-fun b!7039413 () Bool)

(declare-fun res!2873723 () Bool)

(assert (=> b!7039413 (=> (not res!2873723) (not e!4231815))))

(assert (=> b!7039413 (= res!2873723 (= (size!41084 lt!2523120) (+ (size!41084 lt!2522851) (size!41084 (exprs!6976 ct2!306)))))))

(declare-fun b!7039414 () Bool)

(assert (=> b!7039414 (= e!4231815 (or (not (= (exprs!6976 ct2!306) Nil!67844)) (= lt!2523120 lt!2522851)))))

(declare-fun b!7039412 () Bool)

(assert (=> b!7039412 (= e!4231814 (Cons!67844 (h!74292 lt!2522851) (++!15540 (t!381739 lt!2522851) (exprs!6976 ct2!306))))))

(assert (= (and d!2197704 c!1310129) b!7039411))

(assert (= (and d!2197704 (not c!1310129)) b!7039412))

(assert (= (and d!2197704 res!2873724) b!7039413))

(assert (= (and b!7039413 res!2873723) b!7039414))

(declare-fun m!7750148 () Bool)

(assert (=> d!2197704 m!7750148))

(declare-fun m!7750150 () Bool)

(assert (=> d!2197704 m!7750150))

(assert (=> d!2197704 m!7750004))

(declare-fun m!7750152 () Bool)

(assert (=> b!7039413 m!7750152))

(declare-fun m!7750154 () Bool)

(assert (=> b!7039413 m!7750154))

(assert (=> b!7039413 m!7750010))

(declare-fun m!7750156 () Bool)

(assert (=> b!7039412 m!7750156))

(assert (=> b!7039116 d!2197704))

(declare-fun d!2197706 () Bool)

(assert (=> d!2197706 (<= (contextDepthTotal!515 lt!2522864) (zipperDepthTotal!543 lt!2522882))))

(declare-fun lt!2523123 () Unit!161640)

(declare-fun choose!53398 (List!67969 Context!12952) Unit!161640)

(assert (=> d!2197706 (= lt!2523123 (choose!53398 lt!2522882 lt!2522864))))

(declare-fun contains!20467 (List!67969 Context!12952) Bool)

(assert (=> d!2197706 (contains!20467 lt!2522882 lt!2522864)))

(assert (=> d!2197706 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!83 lt!2522882 lt!2522864) lt!2523123)))

(declare-fun bs!1873054 () Bool)

(assert (= bs!1873054 d!2197706))

(assert (=> bs!1873054 m!7749714))

(assert (=> bs!1873054 m!7749724))

(declare-fun m!7750158 () Bool)

(assert (=> bs!1873054 m!7750158))

(declare-fun m!7750160 () Bool)

(assert (=> bs!1873054 m!7750160))

(assert (=> b!7039116 d!2197706))

(assert (=> b!7039116 d!2197688))

(declare-fun d!2197708 () Bool)

(declare-fun lt!2523126 () Int)

(assert (=> d!2197708 (>= lt!2523126 0)))

(declare-fun e!4231818 () Int)

(assert (=> d!2197708 (= lt!2523126 e!4231818)))

(declare-fun c!1310134 () Bool)

(assert (=> d!2197708 (= c!1310134 (is-Cons!67844 (exprs!6976 lt!2522863)))))

(assert (=> d!2197708 (= (contextDepthTotal!515 lt!2522863) lt!2523126)))

(declare-fun b!7039419 () Bool)

(declare-fun regexDepthTotal!313 (Regex!17480) Int)

(assert (=> b!7039419 (= e!4231818 (+ (regexDepthTotal!313 (h!74292 (exprs!6976 lt!2522863))) (contextDepthTotal!515 (Context!12953 (t!381739 (exprs!6976 lt!2522863))))))))

(declare-fun b!7039420 () Bool)

(assert (=> b!7039420 (= e!4231818 1)))

(assert (= (and d!2197708 c!1310134) b!7039419))

(assert (= (and d!2197708 (not c!1310134)) b!7039420))

(declare-fun m!7750162 () Bool)

(assert (=> b!7039419 m!7750162))

(declare-fun m!7750164 () Bool)

(assert (=> b!7039419 m!7750164))

(assert (=> b!7039116 d!2197708))

(declare-fun d!2197710 () Bool)

(assert (=> d!2197710 (= (map!15788 lt!2522842 lambda!416222) (set.insert (dynLambda!27429 lambda!416222 lt!2522863) (as set.empty (Set Context!12952))))))

(declare-fun lt!2523129 () Unit!161640)

(declare-fun choose!53399 ((Set Context!12952) Context!12952 Int) Unit!161640)

(assert (=> d!2197710 (= lt!2523129 (choose!53399 lt!2522842 lt!2522863 lambda!416222))))

(assert (=> d!2197710 (= lt!2522842 (set.insert lt!2522863 (as set.empty (Set Context!12952))))))

(assert (=> d!2197710 (= (lemmaMapOnSingletonSet!391 lt!2522842 lt!2522863 lambda!416222) lt!2523129)))

(declare-fun b_lambda!267193 () Bool)

(assert (=> (not b_lambda!267193) (not d!2197710)))

(declare-fun bs!1873055 () Bool)

(assert (= bs!1873055 d!2197710))

(declare-fun m!7750166 () Bool)

(assert (=> bs!1873055 m!7750166))

(assert (=> bs!1873055 m!7750166))

(declare-fun m!7750168 () Bool)

(assert (=> bs!1873055 m!7750168))

(assert (=> bs!1873055 m!7749726))

(declare-fun m!7750170 () Bool)

(assert (=> bs!1873055 m!7750170))

(assert (=> bs!1873055 m!7749722))

(assert (=> b!7039116 d!2197710))

(assert (=> b!7039116 d!2197640))

(declare-fun d!2197712 () Bool)

(declare-fun lt!2523130 () Int)

(assert (=> d!2197712 (>= lt!2523130 0)))

(declare-fun e!4231819 () Int)

(assert (=> d!2197712 (= lt!2523130 e!4231819)))

(declare-fun c!1310135 () Bool)

(assert (=> d!2197712 (= c!1310135 (is-Cons!67844 (exprs!6976 lt!2522864)))))

(assert (=> d!2197712 (= (contextDepthTotal!515 lt!2522864) lt!2523130)))

(declare-fun b!7039421 () Bool)

(assert (=> b!7039421 (= e!4231819 (+ (regexDepthTotal!313 (h!74292 (exprs!6976 lt!2522864))) (contextDepthTotal!515 (Context!12953 (t!381739 (exprs!6976 lt!2522864))))))))

(declare-fun b!7039422 () Bool)

(assert (=> b!7039422 (= e!4231819 1)))

(assert (= (and d!2197712 c!1310135) b!7039421))

(assert (= (and d!2197712 (not c!1310135)) b!7039422))

(declare-fun m!7750172 () Bool)

(assert (=> b!7039421 m!7750172))

(declare-fun m!7750174 () Bool)

(assert (=> b!7039421 m!7750174))

(assert (=> b!7039116 d!2197712))

(declare-fun bs!1873056 () Bool)

(declare-fun d!2197714 () Bool)

(assert (= bs!1873056 (and d!2197714 b!7039131)))

(declare-fun lambda!416306 () Int)

(assert (=> bs!1873056 (= lambda!416306 lambda!416221)))

(assert (=> d!2197714 true))

(assert (=> d!2197714 (exists!3418 lt!2522880 lambda!416306)))

(declare-fun lt!2523133 () Unit!161640)

(declare-fun choose!53400 (List!67969 List!67970) Unit!161640)

(assert (=> d!2197714 (= lt!2523133 (choose!53400 lt!2522880 s!7408))))

(assert (=> d!2197714 (matchZipper!3020 (content!13566 lt!2522880) s!7408)))

(assert (=> d!2197714 (= (lemmaZipperMatchesExistsMatchingContext!419 lt!2522880 s!7408) lt!2523133)))

(declare-fun bs!1873057 () Bool)

(assert (= bs!1873057 d!2197714))

(declare-fun m!7750176 () Bool)

(assert (=> bs!1873057 m!7750176))

(declare-fun m!7750178 () Bool)

(assert (=> bs!1873057 m!7750178))

(declare-fun m!7750180 () Bool)

(assert (=> bs!1873057 m!7750180))

(assert (=> bs!1873057 m!7750180))

(declare-fun m!7750182 () Bool)

(assert (=> bs!1873057 m!7750182))

(assert (=> b!7039131 d!2197714))

(declare-fun bs!1873058 () Bool)

(declare-fun d!2197716 () Bool)

(assert (= bs!1873058 (and d!2197716 b!7039131)))

(declare-fun lambda!416309 () Int)

(assert (=> bs!1873058 (not (= lambda!416309 lambda!416221))))

(declare-fun bs!1873059 () Bool)

(assert (= bs!1873059 (and d!2197716 d!2197714)))

(assert (=> bs!1873059 (not (= lambda!416309 lambda!416306))))

(assert (=> d!2197716 true))

(declare-fun order!28197 () Int)

(declare-fun dynLambda!27430 (Int Int) Int)

(assert (=> d!2197716 (< (dynLambda!27430 order!28197 lambda!416221) (dynLambda!27430 order!28197 lambda!416309))))

(declare-fun forall!16401 (List!67969 Int) Bool)

(assert (=> d!2197716 (= (exists!3418 lt!2522880 lambda!416221) (not (forall!16401 lt!2522880 lambda!416309)))))

(declare-fun bs!1873060 () Bool)

(assert (= bs!1873060 d!2197716))

(declare-fun m!7750184 () Bool)

(assert (=> bs!1873060 m!7750184))

(assert (=> b!7039131 d!2197716))

(declare-fun d!2197718 () Bool)

(declare-fun e!4231822 () Bool)

(assert (=> d!2197718 e!4231822))

(declare-fun res!2873727 () Bool)

(assert (=> d!2197718 (=> (not res!2873727) (not e!4231822))))

(declare-fun lt!2523136 () Context!12952)

(declare-fun dynLambda!27431 (Int Context!12952) Bool)

(assert (=> d!2197718 (= res!2873727 (dynLambda!27431 lambda!416221 lt!2523136))))

(declare-fun getWitness!1499 (List!67969 Int) Context!12952)

(assert (=> d!2197718 (= lt!2523136 (getWitness!1499 (toList!10823 lt!2522871) lambda!416221))))

(declare-fun exists!3420 ((Set Context!12952) Int) Bool)

(assert (=> d!2197718 (exists!3420 lt!2522871 lambda!416221)))

(assert (=> d!2197718 (= (getWitness!1497 lt!2522871 lambda!416221) lt!2523136)))

(declare-fun b!7039427 () Bool)

(assert (=> b!7039427 (= e!4231822 (set.member lt!2523136 lt!2522871))))

(assert (= (and d!2197718 res!2873727) b!7039427))

(declare-fun b_lambda!267195 () Bool)

(assert (=> (not b_lambda!267195) (not d!2197718)))

(declare-fun m!7750186 () Bool)

(assert (=> d!2197718 m!7750186))

(assert (=> d!2197718 m!7749662))

(assert (=> d!2197718 m!7749662))

(declare-fun m!7750188 () Bool)

(assert (=> d!2197718 m!7750188))

(declare-fun m!7750190 () Bool)

(assert (=> d!2197718 m!7750190))

(declare-fun m!7750192 () Bool)

(assert (=> b!7039427 m!7750192))

(assert (=> b!7039131 d!2197718))

(declare-fun d!2197720 () Bool)

(declare-fun e!4231823 () Bool)

(assert (=> d!2197720 e!4231823))

(declare-fun res!2873728 () Bool)

(assert (=> d!2197720 (=> (not res!2873728) (not e!4231823))))

(declare-fun lt!2523137 () List!67969)

(assert (=> d!2197720 (= res!2873728 (noDuplicate!2638 lt!2523137))))

(assert (=> d!2197720 (= lt!2523137 (choose!53397 lt!2522871))))

(assert (=> d!2197720 (= (toList!10823 lt!2522871) lt!2523137)))

(declare-fun b!7039428 () Bool)

(assert (=> b!7039428 (= e!4231823 (= (content!13566 lt!2523137) lt!2522871))))

(assert (= (and d!2197720 res!2873728) b!7039428))

(declare-fun m!7750194 () Bool)

(assert (=> d!2197720 m!7750194))

(declare-fun m!7750196 () Bool)

(assert (=> d!2197720 m!7750196))

(declare-fun m!7750198 () Bool)

(assert (=> b!7039428 m!7750198))

(assert (=> b!7039131 d!2197720))

(declare-fun d!2197722 () Bool)

(declare-fun c!1310138 () Bool)

(assert (=> d!2197722 (= c!1310138 (isEmpty!39586 s!7408))))

(declare-fun e!4231824 () Bool)

(assert (=> d!2197722 (= (matchZipper!3020 lt!2522876 s!7408) e!4231824)))

(declare-fun b!7039429 () Bool)

(assert (=> b!7039429 (= e!4231824 (nullableZipper!2591 lt!2522876))))

(declare-fun b!7039430 () Bool)

(assert (=> b!7039430 (= e!4231824 (matchZipper!3020 (derivationStepZipper!2936 lt!2522876 (head!14282 s!7408)) (tail!13581 s!7408)))))

(assert (= (and d!2197722 c!1310138) b!7039429))

(assert (= (and d!2197722 (not c!1310138)) b!7039430))

(assert (=> d!2197722 m!7750030))

(declare-fun m!7750200 () Bool)

(assert (=> b!7039429 m!7750200))

(assert (=> b!7039430 m!7750034))

(assert (=> b!7039430 m!7750034))

(declare-fun m!7750202 () Bool)

(assert (=> b!7039430 m!7750202))

(assert (=> b!7039430 m!7750038))

(assert (=> b!7039430 m!7750202))

(assert (=> b!7039430 m!7750038))

(declare-fun m!7750204 () Bool)

(assert (=> b!7039430 m!7750204))

(assert (=> b!7039131 d!2197722))

(assert (=> b!7039130 d!2197638))

(declare-fun d!2197724 () Bool)

(declare-fun c!1310139 () Bool)

(assert (=> d!2197724 (= c!1310139 (isEmpty!39586 s!7408))))

(declare-fun e!4231825 () Bool)

(assert (=> d!2197724 (= (matchZipper!3020 lt!2522825 s!7408) e!4231825)))

(declare-fun b!7039431 () Bool)

(assert (=> b!7039431 (= e!4231825 (nullableZipper!2591 lt!2522825))))

(declare-fun b!7039432 () Bool)

(assert (=> b!7039432 (= e!4231825 (matchZipper!3020 (derivationStepZipper!2936 lt!2522825 (head!14282 s!7408)) (tail!13581 s!7408)))))

(assert (= (and d!2197724 c!1310139) b!7039431))

(assert (= (and d!2197724 (not c!1310139)) b!7039432))

(assert (=> d!2197724 m!7750030))

(declare-fun m!7750206 () Bool)

(assert (=> b!7039431 m!7750206))

(assert (=> b!7039432 m!7750034))

(assert (=> b!7039432 m!7750034))

(declare-fun m!7750208 () Bool)

(assert (=> b!7039432 m!7750208))

(assert (=> b!7039432 m!7750038))

(assert (=> b!7039432 m!7750208))

(assert (=> b!7039432 m!7750038))

(declare-fun m!7750210 () Bool)

(assert (=> b!7039432 m!7750210))

(assert (=> b!7039128 d!2197724))

(assert (=> b!7039128 d!2197640))

(assert (=> b!7039129 d!2197690))

(declare-fun b!7039433 () Bool)

(declare-fun e!4231826 () (Set Context!12952))

(declare-fun e!4231829 () (Set Context!12952))

(assert (=> b!7039433 (= e!4231826 e!4231829)))

(declare-fun c!1310144 () Bool)

(assert (=> b!7039433 (= c!1310144 (is-Concat!26325 (h!74292 (exprs!6976 lt!2522864))))))

(declare-fun b!7039434 () Bool)

(declare-fun call!639339 () (Set Context!12952))

(declare-fun call!639336 () (Set Context!12952))

(assert (=> b!7039434 (= e!4231826 (set.union call!639339 call!639336))))

(declare-fun b!7039435 () Bool)

(declare-fun e!4231830 () (Set Context!12952))

(assert (=> b!7039435 (= e!4231830 (as set.empty (Set Context!12952)))))

(declare-fun b!7039436 () Bool)

(declare-fun e!4231828 () Bool)

(assert (=> b!7039436 (= e!4231828 (nullable!7191 (regOne!35472 (h!74292 (exprs!6976 lt!2522864)))))))

(declare-fun call!639340 () (Set Context!12952))

(declare-fun call!639338 () List!67968)

(declare-fun c!1310142 () Bool)

(declare-fun c!1310143 () Bool)

(declare-fun bm!639330 () Bool)

(assert (=> bm!639330 (= call!639340 (derivationStepZipperDown!2144 (ite c!1310142 (regOne!35473 (h!74292 (exprs!6976 lt!2522864))) (ite c!1310143 (regTwo!35472 (h!74292 (exprs!6976 lt!2522864))) (ite c!1310144 (regOne!35472 (h!74292 (exprs!6976 lt!2522864))) (reg!17809 (h!74292 (exprs!6976 lt!2522864)))))) (ite (or c!1310142 c!1310143) lt!2522852 (Context!12953 call!639338)) (h!74294 s!7408)))))

(declare-fun call!639335 () List!67968)

(declare-fun bm!639331 () Bool)

(assert (=> bm!639331 (= call!639335 ($colon$colon!2584 (exprs!6976 lt!2522852) (ite (or c!1310143 c!1310144) (regTwo!35472 (h!74292 (exprs!6976 lt!2522864))) (h!74292 (exprs!6976 lt!2522864)))))))

(declare-fun b!7039437 () Bool)

(declare-fun e!4231831 () (Set Context!12952))

(assert (=> b!7039437 (= e!4231831 (set.insert lt!2522852 (as set.empty (Set Context!12952))))))

(declare-fun b!7039438 () Bool)

(declare-fun call!639337 () (Set Context!12952))

(assert (=> b!7039438 (= e!4231829 call!639337)))

(declare-fun bm!639332 () Bool)

(assert (=> bm!639332 (= call!639338 call!639335)))

(declare-fun d!2197726 () Bool)

(declare-fun c!1310140 () Bool)

(assert (=> d!2197726 (= c!1310140 (and (is-ElementMatch!17480 (h!74292 (exprs!6976 lt!2522864))) (= (c!1310054 (h!74292 (exprs!6976 lt!2522864))) (h!74294 s!7408))))))

(assert (=> d!2197726 (= (derivationStepZipperDown!2144 (h!74292 (exprs!6976 lt!2522864)) lt!2522852 (h!74294 s!7408)) e!4231831)))

(declare-fun b!7039439 () Bool)

(assert (=> b!7039439 (= c!1310143 e!4231828)))

(declare-fun res!2873729 () Bool)

(assert (=> b!7039439 (=> (not res!2873729) (not e!4231828))))

(assert (=> b!7039439 (= res!2873729 (is-Concat!26325 (h!74292 (exprs!6976 lt!2522864))))))

(declare-fun e!4231827 () (Set Context!12952))

(assert (=> b!7039439 (= e!4231827 e!4231826)))

(declare-fun bm!639333 () Bool)

(assert (=> bm!639333 (= call!639336 call!639340)))

(declare-fun bm!639334 () Bool)

(assert (=> bm!639334 (= call!639339 (derivationStepZipperDown!2144 (ite c!1310142 (regTwo!35473 (h!74292 (exprs!6976 lt!2522864))) (regOne!35472 (h!74292 (exprs!6976 lt!2522864)))) (ite c!1310142 lt!2522852 (Context!12953 call!639335)) (h!74294 s!7408)))))

(declare-fun b!7039440 () Bool)

(assert (=> b!7039440 (= e!4231827 (set.union call!639340 call!639339))))

(declare-fun b!7039441 () Bool)

(declare-fun c!1310141 () Bool)

(assert (=> b!7039441 (= c!1310141 (is-Star!17480 (h!74292 (exprs!6976 lt!2522864))))))

(assert (=> b!7039441 (= e!4231829 e!4231830)))

(declare-fun bm!639335 () Bool)

(assert (=> bm!639335 (= call!639337 call!639336)))

(declare-fun b!7039442 () Bool)

(assert (=> b!7039442 (= e!4231831 e!4231827)))

(assert (=> b!7039442 (= c!1310142 (is-Union!17480 (h!74292 (exprs!6976 lt!2522864))))))

(declare-fun b!7039443 () Bool)

(assert (=> b!7039443 (= e!4231830 call!639337)))

(assert (= (and d!2197726 c!1310140) b!7039437))

(assert (= (and d!2197726 (not c!1310140)) b!7039442))

(assert (= (and b!7039442 c!1310142) b!7039440))

(assert (= (and b!7039442 (not c!1310142)) b!7039439))

(assert (= (and b!7039439 res!2873729) b!7039436))

(assert (= (and b!7039439 c!1310143) b!7039434))

(assert (= (and b!7039439 (not c!1310143)) b!7039433))

(assert (= (and b!7039433 c!1310144) b!7039438))

(assert (= (and b!7039433 (not c!1310144)) b!7039441))

(assert (= (and b!7039441 c!1310141) b!7039443))

(assert (= (and b!7039441 (not c!1310141)) b!7039435))

(assert (= (or b!7039438 b!7039443) bm!639332))

(assert (= (or b!7039438 b!7039443) bm!639335))

(assert (= (or b!7039434 bm!639335) bm!639333))

(assert (= (or b!7039434 bm!639332) bm!639331))

(assert (= (or b!7039440 bm!639333) bm!639330))

(assert (= (or b!7039440 b!7039434) bm!639334))

(declare-fun m!7750212 () Bool)

(assert (=> bm!639330 m!7750212))

(assert (=> b!7039436 m!7749964))

(assert (=> b!7039437 m!7749622))

(declare-fun m!7750214 () Bool)

(assert (=> bm!639331 m!7750214))

(declare-fun m!7750216 () Bool)

(assert (=> bm!639334 m!7750216))

(assert (=> b!7039129 d!2197726))

(assert (=> b!7039129 d!2197704))

(assert (=> b!7039129 d!2197640))

(declare-fun b!7039453 () Bool)

(declare-fun e!4231836 () List!67970)

(assert (=> b!7039453 (= e!4231836 (Cons!67846 (h!74294 (_1!37356 lt!2522831)) (++!15541 (t!381741 (_1!37356 lt!2522831)) (_2!37356 lt!2522831))))))

(declare-fun d!2197728 () Bool)

(declare-fun e!4231837 () Bool)

(assert (=> d!2197728 e!4231837))

(declare-fun res!2873734 () Bool)

(assert (=> d!2197728 (=> (not res!2873734) (not e!4231837))))

(declare-fun lt!2523140 () List!67970)

(declare-fun content!13567 (List!67970) (Set C!35230))

(assert (=> d!2197728 (= res!2873734 (= (content!13567 lt!2523140) (set.union (content!13567 (_1!37356 lt!2522831)) (content!13567 (_2!37356 lt!2522831)))))))

(assert (=> d!2197728 (= lt!2523140 e!4231836)))

(declare-fun c!1310147 () Bool)

(assert (=> d!2197728 (= c!1310147 (is-Nil!67846 (_1!37356 lt!2522831)))))

(assert (=> d!2197728 (= (++!15541 (_1!37356 lt!2522831) (_2!37356 lt!2522831)) lt!2523140)))

(declare-fun b!7039452 () Bool)

(assert (=> b!7039452 (= e!4231836 (_2!37356 lt!2522831))))

(declare-fun b!7039455 () Bool)

(assert (=> b!7039455 (= e!4231837 (or (not (= (_2!37356 lt!2522831) Nil!67846)) (= lt!2523140 (_1!37356 lt!2522831))))))

(declare-fun b!7039454 () Bool)

(declare-fun res!2873735 () Bool)

(assert (=> b!7039454 (=> (not res!2873735) (not e!4231837))))

(declare-fun size!41085 (List!67970) Int)

(assert (=> b!7039454 (= res!2873735 (= (size!41085 lt!2523140) (+ (size!41085 (_1!37356 lt!2522831)) (size!41085 (_2!37356 lt!2522831)))))))

(assert (= (and d!2197728 c!1310147) b!7039452))

(assert (= (and d!2197728 (not c!1310147)) b!7039453))

(assert (= (and d!2197728 res!2873734) b!7039454))

(assert (= (and b!7039454 res!2873735) b!7039455))

(declare-fun m!7750218 () Bool)

(assert (=> b!7039453 m!7750218))

(declare-fun m!7750220 () Bool)

(assert (=> d!2197728 m!7750220))

(declare-fun m!7750222 () Bool)

(assert (=> d!2197728 m!7750222))

(declare-fun m!7750224 () Bool)

(assert (=> d!2197728 m!7750224))

(declare-fun m!7750226 () Bool)

(assert (=> b!7039454 m!7750226))

(declare-fun m!7750228 () Bool)

(assert (=> b!7039454 m!7750228))

(declare-fun m!7750230 () Bool)

(assert (=> b!7039454 m!7750230))

(assert (=> b!7039127 d!2197728))

(declare-fun d!2197730 () Bool)

(declare-fun nullableFct!2738 (Regex!17480) Bool)

(assert (=> d!2197730 (= (nullable!7191 (h!74292 (exprs!6976 lt!2522864))) (nullableFct!2738 (h!74292 (exprs!6976 lt!2522864))))))

(declare-fun bs!1873061 () Bool)

(assert (= bs!1873061 d!2197730))

(declare-fun m!7750232 () Bool)

(assert (=> bs!1873061 m!7750232))

(assert (=> b!7039148 d!2197730))

(declare-fun d!2197732 () Bool)

(assert (=> d!2197732 (= (tail!13582 (exprs!6976 lt!2522864)) (t!381739 (exprs!6976 lt!2522864)))))

(assert (=> b!7039148 d!2197732))

(assert (=> b!7039146 d!2197622))

(assert (=> b!7039124 d!2197644))

(declare-fun d!2197734 () Bool)

(declare-fun lt!2523141 () Int)

(assert (=> d!2197734 (>= lt!2523141 0)))

(declare-fun e!4231838 () Int)

(assert (=> d!2197734 (= lt!2523141 e!4231838)))

(declare-fun c!1310148 () Bool)

(assert (=> d!2197734 (= c!1310148 (is-Cons!67845 (Cons!67845 lt!2522863 Nil!67845)))))

(assert (=> d!2197734 (= (zipperDepthTotal!543 (Cons!67845 lt!2522863 Nil!67845)) lt!2523141)))

(declare-fun b!7039456 () Bool)

(assert (=> b!7039456 (= e!4231838 (+ (contextDepthTotal!515 (h!74293 (Cons!67845 lt!2522863 Nil!67845))) (zipperDepthTotal!543 (t!381740 (Cons!67845 lt!2522863 Nil!67845)))))))

(declare-fun b!7039457 () Bool)

(assert (=> b!7039457 (= e!4231838 0)))

(assert (= (and d!2197734 c!1310148) b!7039456))

(assert (= (and d!2197734 (not c!1310148)) b!7039457))

(declare-fun m!7750234 () Bool)

(assert (=> b!7039456 m!7750234))

(declare-fun m!7750236 () Bool)

(assert (=> b!7039456 m!7750236))

(assert (=> b!7039145 d!2197734))

(declare-fun d!2197736 () Bool)

(declare-fun c!1310149 () Bool)

(assert (=> d!2197736 (= c!1310149 (isEmpty!39586 (t!381741 s!7408)))))

(declare-fun e!4231839 () Bool)

(assert (=> d!2197736 (= (matchZipper!3020 lt!2522857 (t!381741 s!7408)) e!4231839)))

(declare-fun b!7039458 () Bool)

(assert (=> b!7039458 (= e!4231839 (nullableZipper!2591 lt!2522857))))

(declare-fun b!7039459 () Bool)

(assert (=> b!7039459 (= e!4231839 (matchZipper!3020 (derivationStepZipper!2936 lt!2522857 (head!14282 (t!381741 s!7408))) (tail!13581 (t!381741 s!7408))))))

(assert (= (and d!2197736 c!1310149) b!7039458))

(assert (= (and d!2197736 (not c!1310149)) b!7039459))

(assert (=> d!2197736 m!7749982))

(declare-fun m!7750238 () Bool)

(assert (=> b!7039458 m!7750238))

(assert (=> b!7039459 m!7749986))

(assert (=> b!7039459 m!7749986))

(declare-fun m!7750240 () Bool)

(assert (=> b!7039459 m!7750240))

(assert (=> b!7039459 m!7749990))

(assert (=> b!7039459 m!7750240))

(assert (=> b!7039459 m!7749990))

(declare-fun m!7750242 () Bool)

(assert (=> b!7039459 m!7750242))

(assert (=> b!7039125 d!2197736))

(declare-fun d!2197738 () Bool)

(declare-fun c!1310150 () Bool)

(assert (=> d!2197738 (= c!1310150 (isEmpty!39586 (t!381741 s!7408)))))

(declare-fun e!4231840 () Bool)

(assert (=> d!2197738 (= (matchZipper!3020 lt!2522861 (t!381741 s!7408)) e!4231840)))

(declare-fun b!7039460 () Bool)

(assert (=> b!7039460 (= e!4231840 (nullableZipper!2591 lt!2522861))))

(declare-fun b!7039461 () Bool)

(assert (=> b!7039461 (= e!4231840 (matchZipper!3020 (derivationStepZipper!2936 lt!2522861 (head!14282 (t!381741 s!7408))) (tail!13581 (t!381741 s!7408))))))

(assert (= (and d!2197738 c!1310150) b!7039460))

(assert (= (and d!2197738 (not c!1310150)) b!7039461))

(assert (=> d!2197738 m!7749982))

(declare-fun m!7750244 () Bool)

(assert (=> b!7039460 m!7750244))

(assert (=> b!7039461 m!7749986))

(assert (=> b!7039461 m!7749986))

(declare-fun m!7750246 () Bool)

(assert (=> b!7039461 m!7750246))

(assert (=> b!7039461 m!7749990))

(assert (=> b!7039461 m!7750246))

(assert (=> b!7039461 m!7749990))

(declare-fun m!7750248 () Bool)

(assert (=> b!7039461 m!7750248))

(assert (=> b!7039125 d!2197738))

(assert (=> b!7039125 d!2197640))

(declare-fun d!2197740 () Bool)

(declare-fun c!1310151 () Bool)

(assert (=> d!2197740 (= c!1310151 (isEmpty!39586 (t!381741 s!7408)))))

(declare-fun e!4231841 () Bool)

(assert (=> d!2197740 (= (matchZipper!3020 lt!2522839 (t!381741 s!7408)) e!4231841)))

(declare-fun b!7039462 () Bool)

(assert (=> b!7039462 (= e!4231841 (nullableZipper!2591 lt!2522839))))

(declare-fun b!7039463 () Bool)

(assert (=> b!7039463 (= e!4231841 (matchZipper!3020 (derivationStepZipper!2936 lt!2522839 (head!14282 (t!381741 s!7408))) (tail!13581 (t!381741 s!7408))))))

(assert (= (and d!2197740 c!1310151) b!7039462))

(assert (= (and d!2197740 (not c!1310151)) b!7039463))

(assert (=> d!2197740 m!7749982))

(declare-fun m!7750250 () Bool)

(assert (=> b!7039462 m!7750250))

(assert (=> b!7039463 m!7749986))

(assert (=> b!7039463 m!7749986))

(declare-fun m!7750252 () Bool)

(assert (=> b!7039463 m!7750252))

(assert (=> b!7039463 m!7749990))

(assert (=> b!7039463 m!7750252))

(assert (=> b!7039463 m!7749990))

(declare-fun m!7750254 () Bool)

(assert (=> b!7039463 m!7750254))

(assert (=> b!7039125 d!2197740))

(declare-fun d!2197742 () Bool)

(declare-fun e!4231842 () Bool)

(assert (=> d!2197742 (= (matchZipper!3020 (set.union lt!2522839 lt!2522836) (t!381741 s!7408)) e!4231842)))

(declare-fun res!2873736 () Bool)

(assert (=> d!2197742 (=> res!2873736 e!4231842)))

(assert (=> d!2197742 (= res!2873736 (matchZipper!3020 lt!2522839 (t!381741 s!7408)))))

(declare-fun lt!2523142 () Unit!161640)

(assert (=> d!2197742 (= lt!2523142 (choose!53390 lt!2522839 lt!2522836 (t!381741 s!7408)))))

(assert (=> d!2197742 (= (lemmaZipperConcatMatchesSameAsBothZippers!1553 lt!2522839 lt!2522836 (t!381741 s!7408)) lt!2523142)))

(declare-fun b!7039464 () Bool)

(assert (=> b!7039464 (= e!4231842 (matchZipper!3020 lt!2522836 (t!381741 s!7408)))))

(assert (= (and d!2197742 (not res!2873736)) b!7039464))

(declare-fun m!7750256 () Bool)

(assert (=> d!2197742 m!7750256))

(assert (=> d!2197742 m!7749702))

(declare-fun m!7750258 () Bool)

(assert (=> d!2197742 m!7750258))

(assert (=> b!7039464 m!7749634))

(assert (=> b!7039125 d!2197742))

(declare-fun b!7039469 () Bool)

(declare-fun e!4231845 () Bool)

(declare-fun tp!1937182 () Bool)

(assert (=> b!7039469 (= e!4231845 (and tp_is_empty!44185 tp!1937182))))

(assert (=> b!7039149 (= tp!1937167 e!4231845)))

(assert (= (and b!7039149 (is-Cons!67846 (t!381741 s!7408))) b!7039469))

(declare-fun condSetEmpty!49303 () Bool)

(assert (=> setNonEmpty!49297 (= condSetEmpty!49303 (= setRest!49297 (as set.empty (Set Context!12952))))))

(declare-fun setRes!49303 () Bool)

(assert (=> setNonEmpty!49297 (= tp!1937166 setRes!49303)))

(declare-fun setIsEmpty!49303 () Bool)

(assert (=> setIsEmpty!49303 setRes!49303))

(declare-fun setNonEmpty!49303 () Bool)

(declare-fun tp!1937187 () Bool)

(declare-fun e!4231848 () Bool)

(declare-fun setElem!49303 () Context!12952)

(assert (=> setNonEmpty!49303 (= setRes!49303 (and tp!1937187 (inv!86560 setElem!49303) e!4231848))))

(declare-fun setRest!49303 () (Set Context!12952))

(assert (=> setNonEmpty!49303 (= setRest!49297 (set.union (set.insert setElem!49303 (as set.empty (Set Context!12952))) setRest!49303))))

(declare-fun b!7039474 () Bool)

(declare-fun tp!1937188 () Bool)

(assert (=> b!7039474 (= e!4231848 tp!1937188)))

(assert (= (and setNonEmpty!49297 condSetEmpty!49303) setIsEmpty!49303))

(assert (= (and setNonEmpty!49297 (not condSetEmpty!49303)) setNonEmpty!49303))

(assert (= setNonEmpty!49303 b!7039474))

(declare-fun m!7750260 () Bool)

(assert (=> setNonEmpty!49303 m!7750260))

(declare-fun b!7039479 () Bool)

(declare-fun e!4231851 () Bool)

(declare-fun tp!1937193 () Bool)

(declare-fun tp!1937194 () Bool)

(assert (=> b!7039479 (= e!4231851 (and tp!1937193 tp!1937194))))

(assert (=> b!7039133 (= tp!1937165 e!4231851)))

(assert (= (and b!7039133 (is-Cons!67844 (exprs!6976 ct2!306))) b!7039479))

(declare-fun b!7039480 () Bool)

(declare-fun e!4231852 () Bool)

(declare-fun tp!1937195 () Bool)

(declare-fun tp!1937196 () Bool)

(assert (=> b!7039480 (= e!4231852 (and tp!1937195 tp!1937196))))

(assert (=> b!7039136 (= tp!1937164 e!4231852)))

(assert (= (and b!7039136 (is-Cons!67844 (exprs!6976 setElem!49297))) b!7039480))

(declare-fun b_lambda!267197 () Bool)

(assert (= b_lambda!267191 (or b!7039138 b_lambda!267197)))

(declare-fun bs!1873062 () Bool)

(declare-fun d!2197744 () Bool)

(assert (= bs!1873062 (and d!2197744 b!7039138)))

(assert (=> bs!1873062 (= (dynLambda!27428 lambda!416224 lt!2522852) (derivationStepZipperUp!2090 lt!2522852 (h!74294 s!7408)))))

(assert (=> bs!1873062 m!7749626))

(assert (=> d!2197694 d!2197744))

(declare-fun b_lambda!267199 () Bool)

(assert (= b_lambda!267187 (or b!7039138 b_lambda!267199)))

(declare-fun bs!1873063 () Bool)

(declare-fun d!2197746 () Bool)

(assert (= bs!1873063 (and d!2197746 b!7039138)))

(assert (=> bs!1873063 (= (dynLambda!27428 lambda!416224 lt!2522847) (derivationStepZipperUp!2090 lt!2522847 (h!74294 s!7408)))))

(assert (=> bs!1873063 m!7749684))

(assert (=> d!2197672 d!2197746))

(declare-fun b_lambda!267201 () Bool)

(assert (= b_lambda!267195 (or b!7039131 b_lambda!267201)))

(declare-fun bs!1873064 () Bool)

(declare-fun d!2197748 () Bool)

(assert (= bs!1873064 (and d!2197748 b!7039131)))

(assert (=> bs!1873064 (= (dynLambda!27431 lambda!416221 lt!2523136) (matchZipper!3020 (set.insert lt!2523136 (as set.empty (Set Context!12952))) s!7408))))

(declare-fun m!7750262 () Bool)

(assert (=> bs!1873064 m!7750262))

(assert (=> bs!1873064 m!7750262))

(declare-fun m!7750264 () Bool)

(assert (=> bs!1873064 m!7750264))

(assert (=> d!2197718 d!2197748))

(declare-fun b_lambda!267203 () Bool)

(assert (= b_lambda!267183 (or b!7039138 b_lambda!267203)))

(declare-fun bs!1873065 () Bool)

(declare-fun d!2197750 () Bool)

(assert (= bs!1873065 (and d!2197750 b!7039138)))

(assert (=> bs!1873065 (= (dynLambda!27428 lambda!416224 lt!2522864) (derivationStepZipperUp!2090 lt!2522864 (h!74294 s!7408)))))

(assert (=> bs!1873065 m!7749758))

(assert (=> d!2197636 d!2197750))

(declare-fun b_lambda!267205 () Bool)

(assert (= b_lambda!267185 (or b!7039141 b_lambda!267205)))

(declare-fun bs!1873066 () Bool)

(declare-fun d!2197752 () Bool)

(assert (= bs!1873066 (and d!2197752 b!7039141)))

(declare-fun lt!2523143 () Unit!161640)

(assert (=> bs!1873066 (= lt!2523143 (lemmaConcatPreservesForall!801 (exprs!6976 lt!2523096) (exprs!6976 ct2!306) lambda!416223))))

(assert (=> bs!1873066 (= (dynLambda!27429 lambda!416222 lt!2523096) (Context!12953 (++!15540 (exprs!6976 lt!2523096) (exprs!6976 ct2!306))))))

(declare-fun m!7750266 () Bool)

(assert (=> bs!1873066 m!7750266))

(declare-fun m!7750268 () Bool)

(assert (=> bs!1873066 m!7750268))

(assert (=> d!2197646 d!2197752))

(declare-fun b_lambda!267207 () Bool)

(assert (= b_lambda!267193 (or b!7039141 b_lambda!267207)))

(declare-fun bs!1873067 () Bool)

(declare-fun d!2197754 () Bool)

(assert (= bs!1873067 (and d!2197754 b!7039141)))

(declare-fun lt!2523144 () Unit!161640)

(assert (=> bs!1873067 (= lt!2523144 (lemmaConcatPreservesForall!801 (exprs!6976 lt!2522863) (exprs!6976 ct2!306) lambda!416223))))

(assert (=> bs!1873067 (= (dynLambda!27429 lambda!416222 lt!2522863) (Context!12953 (++!15540 (exprs!6976 lt!2522863) (exprs!6976 ct2!306))))))

(declare-fun m!7750270 () Bool)

(assert (=> bs!1873067 m!7750270))

(declare-fun m!7750272 () Bool)

(assert (=> bs!1873067 m!7750272))

(assert (=> d!2197710 d!2197754))

(declare-fun b_lambda!267209 () Bool)

(assert (= b_lambda!267189 (or b!7039138 b_lambda!267209)))

(declare-fun bs!1873068 () Bool)

(declare-fun d!2197756 () Bool)

(assert (= bs!1873068 (and d!2197756 b!7039138)))

(assert (=> bs!1873068 (= (dynLambda!27428 lambda!416224 lt!2522863) (derivationStepZipperUp!2090 lt!2522863 (h!74294 s!7408)))))

(assert (=> bs!1873068 m!7749694))

(assert (=> d!2197682 d!2197756))

(push 1)

(assert (not b!7039421))

(assert (not b!7039462))

(assert (not d!2197644))

(assert (not d!2197620))

(assert (not setNonEmpty!49303))

(assert (not b!7039354))

(assert (not d!2197650))

(assert (not b!7039382))

(assert (not b!7039293))

(assert (not d!2197678))

(assert tp_is_empty!44185)

(assert (not b!7039270))

(assert (not b!7039428))

(assert (not d!2197656))

(assert (not d!2197730))

(assert (not b!7039386))

(assert (not b!7039463))

(assert (not b!7039474))

(assert (not b!7039412))

(assert (not b!7039321))

(assert (not b!7039431))

(assert (not d!2197646))

(assert (not d!2197662))

(assert (not b_lambda!267201))

(assert (not b!7039355))

(assert (not d!2197630))

(assert (not bs!1873063))

(assert (not d!2197714))

(assert (not b!7039380))

(assert (not d!2197668))

(assert (not bs!1873064))

(assert (not b!7039280))

(assert (not bm!639307))

(assert (not b!7039406))

(assert (not d!2197642))

(assert (not d!2197634))

(assert (not d!2197728))

(assert (not d!2197696))

(assert (not d!2197652))

(assert (not d!2197720))

(assert (not d!2197698))

(assert (not b!7039460))

(assert (not b!7039429))

(assert (not b!7039276))

(assert (not b!7039337))

(assert (not d!2197742))

(assert (not d!2197648))

(assert (not bm!639334))

(assert (not d!2197718))

(assert (not d!2197688))

(assert (not d!2197740))

(assert (not b!7039333))

(assert (not b!7039430))

(assert (not d!2197686))

(assert (not bm!639331))

(assert (not b!7039356))

(assert (not d!2197674))

(assert (not d!2197736))

(assert (not b!7039436))

(assert (not b!7039454))

(assert (not b_lambda!267197))

(assert (not d!2197672))

(assert (not b!7039275))

(assert (not b!7039461))

(assert (not b!7039347))

(assert (not d!2197724))

(assert (not b_lambda!267209))

(assert (not b!7039336))

(assert (not d!2197702))

(assert (not d!2197666))

(assert (not b!7039410))

(assert (not b_lambda!267203))

(assert (not b!7039456))

(assert (not bm!639326))

(assert (not b!7039279))

(assert (not b_lambda!267205))

(assert (not b!7039268))

(assert (not b!7039419))

(assert (not bm!639329))

(assert (not d!2197710))

(assert (not b!7039389))

(assert (not d!2197722))

(assert (not bm!639327))

(assert (not bs!1873066))

(assert (not b_lambda!267207))

(assert (not bm!639320))

(assert (not b!7039271))

(assert (not b!7039348))

(assert (not d!2197616))

(assert (not d!2197682))

(assert (not b!7039453))

(assert (not bs!1873062))

(assert (not b!7039384))

(assert (not b!7039376))

(assert (not b!7039469))

(assert (not d!2197612))

(assert (not bs!1873068))

(assert (not d!2197618))

(assert (not d!2197704))

(assert (not b!7039331))

(assert (not b!7039413))

(assert (not b!7039387))

(assert (not d!2197706))

(assert (not d!2197624))

(assert (not b!7039385))

(assert (not b!7039278))

(assert (not bm!639321))

(assert (not b_lambda!267199))

(assert (not b!7039458))

(assert (not b!7039277))

(assert (not b!7039432))

(assert (not b!7039464))

(assert (not d!2197660))

(assert (not d!2197638))

(assert (not b!7039291))

(assert (not d!2197640))

(assert (not d!2197636))

(assert (not d!2197622))

(assert (not bs!1873067))

(assert (not b!7039397))

(assert (not d!2197738))

(assert (not b!7039479))

(assert (not d!2197716))

(assert (not d!2197692))

(assert (not b!7039357))

(assert (not b!7039392))

(assert (not b!7039269))

(assert (not bs!1873065))

(assert (not b!7039399))

(assert (not b!7039394))

(assert (not b!7039480))

(assert (not d!2197658))

(assert (not bm!639324))

(assert (not d!2197694))

(assert (not bm!639330))

(assert (not b!7039459))

(assert (not bm!639328))

(assert (not b!7039383))

(assert (not b!7039274))

(assert (not b!7039379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

