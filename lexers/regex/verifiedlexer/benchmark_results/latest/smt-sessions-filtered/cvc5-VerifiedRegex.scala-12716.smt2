; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703038 () Bool)

(assert start!703038)

(declare-fun b!7238616 () Bool)

(assert (=> b!7238616 true))

(declare-fun b!7238611 () Bool)

(assert (=> b!7238611 true))

(declare-fun b!7238607 () Bool)

(declare-fun e!4339775 () Bool)

(declare-fun tp!2034945 () Bool)

(assert (=> b!7238607 (= e!4339775 tp!2034945)))

(declare-fun b!7238608 () Bool)

(declare-fun e!4339770 () Bool)

(declare-fun tp!2034947 () Bool)

(assert (=> b!7238608 (= e!4339770 tp!2034947)))

(declare-fun b!7238609 () Bool)

(declare-fun e!4339777 () Bool)

(declare-fun e!4339767 () Bool)

(assert (=> b!7238609 (= e!4339777 e!4339767)))

(declare-fun res!2936564 () Bool)

(assert (=> b!7238609 (=> res!2936564 e!4339767)))

(declare-datatypes ((C!37354 0))(
  ( (C!37355 (val!28625 Int)) )
))
(declare-datatypes ((Regex!18540 0))(
  ( (ElementMatch!18540 (c!1343845 C!37354)) (Concat!27385 (regOne!37592 Regex!18540) (regTwo!37592 Regex!18540)) (EmptyExpr!18540) (Star!18540 (reg!18869 Regex!18540)) (EmptyLang!18540) (Union!18540 (regOne!37593 Regex!18540) (regTwo!37593 Regex!18540)) )
))
(declare-datatypes ((List!70228 0))(
  ( (Nil!70104) (Cons!70104 (h!76552 Regex!18540) (t!384279 List!70228)) )
))
(declare-fun lt!2577724 () List!70228)

(declare-fun isEmpty!40400 (List!70228) Bool)

(assert (=> b!7238609 (= res!2936564 (isEmpty!40400 lt!2577724))))

(declare-datatypes ((Context!14960 0))(
  ( (Context!14961 (exprs!7980 List!70228)) )
))
(declare-fun ct1!232 () Context!14960)

(declare-datatypes ((Unit!163634 0))(
  ( (Unit!163635) )
))
(declare-fun lt!2577728 () Unit!163634)

(declare-fun lambda!441088 () Int)

(declare-fun ct2!328 () Context!14960)

(declare-fun lemmaConcatPreservesForall!1349 (List!70228 List!70228 Int) Unit!163634)

(assert (=> b!7238609 (= lt!2577728 (lemmaConcatPreservesForall!1349 (exprs!7980 ct1!232) (exprs!7980 ct2!328) lambda!441088))))

(declare-fun lt!2577719 () (Set Context!14960))

(declare-fun lt!2577713 () Context!14960)

(declare-datatypes ((List!70229 0))(
  ( (Nil!70105) (Cons!70105 (h!76553 C!37354) (t!384280 List!70229)) )
))
(declare-fun s1!1971 () List!70229)

(declare-fun derivationStepZipperUp!2414 (Context!14960 C!37354) (Set Context!14960))

(assert (=> b!7238609 (= lt!2577719 (derivationStepZipperUp!2414 lt!2577713 (h!76553 s1!1971)))))

(declare-fun lt!2577731 () Unit!163634)

(assert (=> b!7238609 (= lt!2577731 (lemmaConcatPreservesForall!1349 (exprs!7980 ct1!232) (exprs!7980 ct2!328) lambda!441088))))

(declare-fun lt!2577730 () Context!14960)

(declare-fun lt!2577716 () (Set Context!14960))

(declare-fun derivationStepZipperDown!2584 (Regex!18540 Context!14960 C!37354) (Set Context!14960))

(assert (=> b!7238609 (= lt!2577716 (derivationStepZipperDown!2584 (h!76552 (exprs!7980 ct1!232)) lt!2577730 (h!76553 s1!1971)))))

(declare-fun tail!14190 (List!70228) List!70228)

(assert (=> b!7238609 (= lt!2577730 (Context!14961 (tail!14190 (exprs!7980 ct1!232))))))

(declare-fun res!2936571 () Bool)

(declare-fun e!4339779 () Bool)

(assert (=> start!703038 (=> (not res!2936571) (not e!4339779))))

(declare-fun lt!2577732 () (Set Context!14960))

(declare-fun matchZipper!3450 ((Set Context!14960) List!70229) Bool)

(assert (=> start!703038 (= res!2936571 (matchZipper!3450 lt!2577732 s1!1971))))

(assert (=> start!703038 (= lt!2577732 (set.insert ct1!232 (as set.empty (Set Context!14960))))))

(assert (=> start!703038 e!4339779))

(declare-fun inv!89361 (Context!14960) Bool)

(assert (=> start!703038 (and (inv!89361 ct1!232) e!4339775)))

(declare-fun e!4339774 () Bool)

(assert (=> start!703038 e!4339774))

(declare-fun e!4339771 () Bool)

(assert (=> start!703038 e!4339771))

(assert (=> start!703038 (and (inv!89361 ct2!328) e!4339770)))

(declare-fun b!7238610 () Bool)

(declare-fun tp_is_empty!46545 () Bool)

(declare-fun tp!2034948 () Bool)

(assert (=> b!7238610 (= e!4339774 (and tp_is_empty!46545 tp!2034948))))

(declare-fun lt!2577701 () Context!14960)

(declare-fun forall!17378 (List!70228 Int) Bool)

(assert (=> b!7238611 (= e!4339767 (forall!17378 (exprs!7980 lt!2577701) lambda!441088))))

(declare-fun lt!2577729 () Context!14960)

(declare-fun lt!2577712 () (Set Context!14960))

(declare-fun derivationStepZipper!3332 ((Set Context!14960) C!37354) (Set Context!14960))

(assert (=> b!7238611 (set.member lt!2577729 (derivationStepZipper!3332 lt!2577712 (h!76553 s1!1971)))))

(declare-fun lt!2577715 () Unit!163634)

(assert (=> b!7238611 (= lt!2577715 (lemmaConcatPreservesForall!1349 (exprs!7980 lt!2577701) (exprs!7980 ct2!328) lambda!441088))))

(assert (=> b!7238611 (set.member lt!2577729 lt!2577719)))

(declare-fun lt!2577704 () Unit!163634)

(assert (=> b!7238611 (= lt!2577704 (lemmaConcatPreservesForall!1349 (exprs!7980 ct1!232) (exprs!7980 ct2!328) lambda!441088))))

(declare-fun lt!2577721 () Unit!163634)

(assert (=> b!7238611 (= lt!2577721 (lemmaConcatPreservesForall!1349 (exprs!7980 lt!2577701) (exprs!7980 ct2!328) lambda!441088))))

(declare-fun lt!2577711 () Unit!163634)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!5 (Context!14960 Context!14960 Context!14960 C!37354) Unit!163634)

(assert (=> b!7238611 (= lt!2577711 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!5 ct1!232 ct2!328 lt!2577701 (h!76553 s1!1971)))))

(declare-fun s2!1849 () List!70229)

(declare-fun lt!2577702 () List!70229)

(declare-fun tail!14191 (List!70229) List!70229)

(declare-fun ++!16380 (List!70229 List!70229) List!70229)

(assert (=> b!7238611 (= (tail!14191 (++!16380 s1!1971 s2!1849)) lt!2577702)))

(declare-fun lt!2577700 () Unit!163634)

(declare-fun e!4339772 () Unit!163634)

(assert (=> b!7238611 (= lt!2577700 e!4339772)))

(declare-fun c!1343844 () Bool)

(declare-fun nullable!7853 (Regex!18540) Bool)

(assert (=> b!7238611 (= c!1343844 (nullable!7853 (h!76552 (exprs!7980 ct1!232))))))

(declare-fun lambda!441090 () Int)

(declare-fun flatMap!2744 ((Set Context!14960) Int) (Set Context!14960))

(assert (=> b!7238611 (= (flatMap!2744 lt!2577712 lambda!441090) (derivationStepZipperUp!2414 lt!2577713 (h!76553 s1!1971)))))

(declare-fun lt!2577733 () Unit!163634)

(declare-fun lemmaFlatMapOnSingletonSet!2171 ((Set Context!14960) Context!14960 Int) Unit!163634)

(assert (=> b!7238611 (= lt!2577733 (lemmaFlatMapOnSingletonSet!2171 lt!2577712 lt!2577713 lambda!441090))))

(declare-fun lt!2577717 () Unit!163634)

(assert (=> b!7238611 (= lt!2577717 (lemmaConcatPreservesForall!1349 (exprs!7980 ct1!232) (exprs!7980 ct2!328) lambda!441088))))

(assert (=> b!7238611 (= (flatMap!2744 lt!2577732 lambda!441090) (derivationStepZipperUp!2414 ct1!232 (h!76553 s1!1971)))))

(declare-fun lt!2577727 () Unit!163634)

(assert (=> b!7238611 (= lt!2577727 (lemmaFlatMapOnSingletonSet!2171 lt!2577732 ct1!232 lambda!441090))))

(declare-fun lt!2577705 () Context!14960)

(declare-fun lt!2577703 () (Set Context!14960))

(assert (=> b!7238611 (= lt!2577703 (derivationStepZipperDown!2584 (h!76552 (exprs!7980 ct1!232)) lt!2577705 (h!76553 s1!1971)))))

(assert (=> b!7238611 (= lt!2577705 (Context!14961 (tail!14190 lt!2577724)))))

(declare-fun b!7238612 () Bool)

(declare-fun tp!2034946 () Bool)

(assert (=> b!7238612 (= e!4339771 (and tp_is_empty!46545 tp!2034946))))

(declare-fun b!7238613 () Bool)

(declare-fun res!2936572 () Bool)

(assert (=> b!7238613 (=> (not res!2936572) (not e!4339779))))

(assert (=> b!7238613 (= res!2936572 (matchZipper!3450 (set.insert ct2!328 (as set.empty (Set Context!14960))) s2!1849))))

(declare-fun b!7238614 () Bool)

(declare-fun e!4339773 () Bool)

(declare-fun e!4339776 () Bool)

(assert (=> b!7238614 (= e!4339773 e!4339776)))

(declare-fun res!2936569 () Bool)

(assert (=> b!7238614 (=> (not res!2936569) (not e!4339776))))

(declare-fun lt!2577722 () (Set Context!14960))

(assert (=> b!7238614 (= res!2936569 (matchZipper!3450 lt!2577722 (t!384280 s1!1971)))))

(assert (=> b!7238614 (= lt!2577722 (derivationStepZipper!3332 lt!2577732 (h!76553 s1!1971)))))

(declare-fun b!7238615 () Bool)

(declare-fun e!4339769 () Bool)

(declare-fun lt!2577699 () (Set Context!14960))

(assert (=> b!7238615 (= e!4339769 (matchZipper!3450 lt!2577699 lt!2577702))))

(declare-fun e!4339768 () Bool)

(assert (=> b!7238616 (= e!4339776 (not e!4339768))))

(declare-fun res!2936570 () Bool)

(assert (=> b!7238616 (=> res!2936570 e!4339768)))

(declare-fun lambda!441089 () Int)

(declare-fun exists!4223 ((Set Context!14960) Int) Bool)

(assert (=> b!7238616 (= res!2936570 (not (exists!4223 lt!2577722 lambda!441089)))))

(declare-datatypes ((List!70230 0))(
  ( (Nil!70106) (Cons!70106 (h!76554 Context!14960) (t!384281 List!70230)) )
))
(declare-fun lt!2577725 () List!70230)

(declare-fun exists!4224 (List!70230 Int) Bool)

(assert (=> b!7238616 (exists!4224 lt!2577725 lambda!441089)))

(declare-fun lt!2577720 () Unit!163634)

(declare-fun lemmaZipperMatchesExistsMatchingContext!683 (List!70230 List!70229) Unit!163634)

(assert (=> b!7238616 (= lt!2577720 (lemmaZipperMatchesExistsMatchingContext!683 lt!2577725 (t!384280 s1!1971)))))

(declare-fun toList!11397 ((Set Context!14960)) List!70230)

(assert (=> b!7238616 (= lt!2577725 (toList!11397 lt!2577722))))

(declare-fun b!7238617 () Bool)

(assert (=> b!7238617 (= e!4339768 e!4339777)))

(declare-fun res!2936567 () Bool)

(assert (=> b!7238617 (=> res!2936567 e!4339777)))

(assert (=> b!7238617 (= res!2936567 (isEmpty!40400 (exprs!7980 ct1!232)))))

(declare-fun lt!2577723 () (Set Context!14960))

(assert (=> b!7238617 (= lt!2577723 (derivationStepZipperUp!2414 ct1!232 (h!76553 s1!1971)))))

(declare-fun lt!2577710 () Unit!163634)

(assert (=> b!7238617 (= lt!2577710 (lemmaConcatPreservesForall!1349 (exprs!7980 lt!2577701) (exprs!7980 ct2!328) lambda!441088))))

(assert (=> b!7238617 (matchZipper!3450 (set.insert lt!2577729 (as set.empty (Set Context!14960))) lt!2577702)))

(assert (=> b!7238617 (= lt!2577702 (++!16380 (t!384280 s1!1971) s2!1849))))

(declare-fun ++!16381 (List!70228 List!70228) List!70228)

(assert (=> b!7238617 (= lt!2577729 (Context!14961 (++!16381 (exprs!7980 lt!2577701) (exprs!7980 ct2!328))))))

(declare-fun lt!2577709 () Unit!163634)

(assert (=> b!7238617 (= lt!2577709 (lemmaConcatPreservesForall!1349 (exprs!7980 lt!2577701) (exprs!7980 ct2!328) lambda!441088))))

(declare-fun lt!2577726 () Unit!163634)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!331 (Context!14960 Context!14960 List!70229 List!70229) Unit!163634)

(assert (=> b!7238617 (= lt!2577726 (lemmaConcatenateContextMatchesConcatOfStrings!331 lt!2577701 ct2!328 (t!384280 s1!1971) s2!1849))))

(declare-fun getWitness!2084 ((Set Context!14960) Int) Context!14960)

(assert (=> b!7238617 (= lt!2577701 (getWitness!2084 lt!2577722 lambda!441089))))

(declare-fun b!7238618 () Bool)

(declare-fun Unit!163636 () Unit!163634)

(assert (=> b!7238618 (= e!4339772 Unit!163636)))

(declare-fun lt!2577714 () Unit!163634)

(assert (=> b!7238618 (= lt!2577714 (lemmaConcatPreservesForall!1349 (exprs!7980 ct1!232) (exprs!7980 ct2!328) lambda!441088))))

(declare-fun lt!2577698 () (Set Context!14960))

(assert (=> b!7238618 (= lt!2577698 (derivationStepZipperUp!2414 lt!2577730 (h!76553 s1!1971)))))

(declare-fun lt!2577708 () Unit!163634)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1687 ((Set Context!14960) (Set Context!14960) List!70229) Unit!163634)

(assert (=> b!7238618 (= lt!2577708 (lemmaZipperConcatMatchesSameAsBothZippers!1687 lt!2577716 lt!2577698 (t!384280 s1!1971)))))

(declare-fun res!2936565 () Bool)

(assert (=> b!7238618 (= res!2936565 (matchZipper!3450 lt!2577716 (t!384280 s1!1971)))))

(declare-fun e!4339778 () Bool)

(assert (=> b!7238618 (=> res!2936565 e!4339778)))

(assert (=> b!7238618 (= (matchZipper!3450 (set.union lt!2577716 lt!2577698) (t!384280 s1!1971)) e!4339778)))

(declare-fun lt!2577718 () Unit!163634)

(assert (=> b!7238618 (= lt!2577718 (lemmaConcatPreservesForall!1349 (exprs!7980 ct1!232) (exprs!7980 ct2!328) lambda!441088))))

(assert (=> b!7238618 (= lt!2577699 (derivationStepZipperUp!2414 lt!2577705 (h!76553 s1!1971)))))

(declare-fun lt!2577706 () Unit!163634)

(assert (=> b!7238618 (= lt!2577706 (lemmaZipperConcatMatchesSameAsBothZippers!1687 lt!2577703 lt!2577699 lt!2577702))))

(declare-fun res!2936568 () Bool)

(assert (=> b!7238618 (= res!2936568 (matchZipper!3450 lt!2577703 lt!2577702))))

(assert (=> b!7238618 (=> res!2936568 e!4339769)))

(assert (=> b!7238618 (= (matchZipper!3450 (set.union lt!2577703 lt!2577699) lt!2577702) e!4339769)))

(declare-fun b!7238619 () Bool)

(assert (=> b!7238619 (= e!4339779 e!4339773)))

(declare-fun res!2936566 () Bool)

(assert (=> b!7238619 (=> (not res!2936566) (not e!4339773))))

(assert (=> b!7238619 (= res!2936566 (and (not (is-Nil!70104 (exprs!7980 ct1!232))) (is-Cons!70105 s1!1971)))))

(assert (=> b!7238619 (= lt!2577712 (set.insert lt!2577713 (as set.empty (Set Context!14960))))))

(assert (=> b!7238619 (= lt!2577713 (Context!14961 lt!2577724))))

(assert (=> b!7238619 (= lt!2577724 (++!16381 (exprs!7980 ct1!232) (exprs!7980 ct2!328)))))

(declare-fun lt!2577707 () Unit!163634)

(assert (=> b!7238619 (= lt!2577707 (lemmaConcatPreservesForall!1349 (exprs!7980 ct1!232) (exprs!7980 ct2!328) lambda!441088))))

(declare-fun b!7238620 () Bool)

(declare-fun Unit!163637 () Unit!163634)

(assert (=> b!7238620 (= e!4339772 Unit!163637)))

(declare-fun b!7238621 () Bool)

(assert (=> b!7238621 (= e!4339778 (matchZipper!3450 lt!2577698 (t!384280 s1!1971)))))

(assert (= (and start!703038 res!2936571) b!7238613))

(assert (= (and b!7238613 res!2936572) b!7238619))

(assert (= (and b!7238619 res!2936566) b!7238614))

(assert (= (and b!7238614 res!2936569) b!7238616))

(assert (= (and b!7238616 (not res!2936570)) b!7238617))

(assert (= (and b!7238617 (not res!2936567)) b!7238609))

(assert (= (and b!7238609 (not res!2936564)) b!7238611))

(assert (= (and b!7238611 c!1343844) b!7238618))

(assert (= (and b!7238611 (not c!1343844)) b!7238620))

(assert (= (and b!7238618 (not res!2936565)) b!7238621))

(assert (= (and b!7238618 (not res!2936568)) b!7238615))

(assert (= start!703038 b!7238607))

(assert (= (and start!703038 (is-Cons!70105 s1!1971)) b!7238610))

(assert (= (and start!703038 (is-Cons!70105 s2!1849)) b!7238612))

(assert (= start!703038 b!7238608))

(declare-fun m!7910796 () Bool)

(assert (=> b!7238616 m!7910796))

(declare-fun m!7910798 () Bool)

(assert (=> b!7238616 m!7910798))

(declare-fun m!7910800 () Bool)

(assert (=> b!7238616 m!7910800))

(declare-fun m!7910802 () Bool)

(assert (=> b!7238616 m!7910802))

(declare-fun m!7910804 () Bool)

(assert (=> b!7238613 m!7910804))

(assert (=> b!7238613 m!7910804))

(declare-fun m!7910806 () Bool)

(assert (=> b!7238613 m!7910806))

(declare-fun m!7910808 () Bool)

(assert (=> start!703038 m!7910808))

(declare-fun m!7910810 () Bool)

(assert (=> start!703038 m!7910810))

(declare-fun m!7910812 () Bool)

(assert (=> start!703038 m!7910812))

(declare-fun m!7910814 () Bool)

(assert (=> start!703038 m!7910814))

(declare-fun m!7910816 () Bool)

(assert (=> b!7238619 m!7910816))

(declare-fun m!7910818 () Bool)

(assert (=> b!7238619 m!7910818))

(declare-fun m!7910820 () Bool)

(assert (=> b!7238619 m!7910820))

(declare-fun m!7910822 () Bool)

(assert (=> b!7238617 m!7910822))

(declare-fun m!7910824 () Bool)

(assert (=> b!7238617 m!7910824))

(declare-fun m!7910826 () Bool)

(assert (=> b!7238617 m!7910826))

(declare-fun m!7910828 () Bool)

(assert (=> b!7238617 m!7910828))

(declare-fun m!7910830 () Bool)

(assert (=> b!7238617 m!7910830))

(declare-fun m!7910832 () Bool)

(assert (=> b!7238617 m!7910832))

(declare-fun m!7910834 () Bool)

(assert (=> b!7238617 m!7910834))

(declare-fun m!7910836 () Bool)

(assert (=> b!7238617 m!7910836))

(assert (=> b!7238617 m!7910824))

(declare-fun m!7910838 () Bool)

(assert (=> b!7238617 m!7910838))

(assert (=> b!7238617 m!7910822))

(assert (=> b!7238609 m!7910820))

(declare-fun m!7910840 () Bool)

(assert (=> b!7238609 m!7910840))

(declare-fun m!7910842 () Bool)

(assert (=> b!7238609 m!7910842))

(declare-fun m!7910844 () Bool)

(assert (=> b!7238609 m!7910844))

(declare-fun m!7910846 () Bool)

(assert (=> b!7238609 m!7910846))

(assert (=> b!7238609 m!7910820))

(declare-fun m!7910848 () Bool)

(assert (=> b!7238614 m!7910848))

(declare-fun m!7910850 () Bool)

(assert (=> b!7238614 m!7910850))

(declare-fun m!7910852 () Bool)

(assert (=> b!7238621 m!7910852))

(declare-fun m!7910854 () Bool)

(assert (=> b!7238618 m!7910854))

(declare-fun m!7910856 () Bool)

(assert (=> b!7238618 m!7910856))

(declare-fun m!7910858 () Bool)

(assert (=> b!7238618 m!7910858))

(declare-fun m!7910860 () Bool)

(assert (=> b!7238618 m!7910860))

(assert (=> b!7238618 m!7910820))

(declare-fun m!7910862 () Bool)

(assert (=> b!7238618 m!7910862))

(declare-fun m!7910864 () Bool)

(assert (=> b!7238618 m!7910864))

(assert (=> b!7238618 m!7910820))

(declare-fun m!7910866 () Bool)

(assert (=> b!7238618 m!7910866))

(declare-fun m!7910868 () Bool)

(assert (=> b!7238618 m!7910868))

(declare-fun m!7910870 () Bool)

(assert (=> b!7238611 m!7910870))

(assert (=> b!7238611 m!7910822))

(assert (=> b!7238611 m!7910834))

(declare-fun m!7910872 () Bool)

(assert (=> b!7238611 m!7910872))

(declare-fun m!7910874 () Bool)

(assert (=> b!7238611 m!7910874))

(declare-fun m!7910876 () Bool)

(assert (=> b!7238611 m!7910876))

(declare-fun m!7910878 () Bool)

(assert (=> b!7238611 m!7910878))

(assert (=> b!7238611 m!7910822))

(assert (=> b!7238611 m!7910820))

(declare-fun m!7910880 () Bool)

(assert (=> b!7238611 m!7910880))

(declare-fun m!7910882 () Bool)

(assert (=> b!7238611 m!7910882))

(declare-fun m!7910884 () Bool)

(assert (=> b!7238611 m!7910884))

(declare-fun m!7910886 () Bool)

(assert (=> b!7238611 m!7910886))

(declare-fun m!7910888 () Bool)

(assert (=> b!7238611 m!7910888))

(declare-fun m!7910890 () Bool)

(assert (=> b!7238611 m!7910890))

(assert (=> b!7238611 m!7910820))

(assert (=> b!7238611 m!7910840))

(declare-fun m!7910892 () Bool)

(assert (=> b!7238611 m!7910892))

(declare-fun m!7910894 () Bool)

(assert (=> b!7238611 m!7910894))

(assert (=> b!7238611 m!7910886))

(declare-fun m!7910896 () Bool)

(assert (=> b!7238611 m!7910896))

(declare-fun m!7910898 () Bool)

(assert (=> b!7238615 m!7910898))

(push 1)

(assert tp_is_empty!46545)

(assert (not start!703038))

(assert (not b!7238612))

(assert (not b!7238607))

(assert (not b!7238621))

(assert (not b!7238615))

(assert (not b!7238610))

(assert (not b!7238611))

(assert (not b!7238614))

(assert (not b!7238616))

(assert (not b!7238608))

(assert (not b!7238609))

(assert (not b!7238619))

(assert (not b!7238617))

(assert (not b!7238613))

(assert (not b!7238618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2248611 () Bool)

(declare-fun dynLambda!28611 (Int Context!14960) (Set Context!14960))

(assert (=> d!2248611 (= (flatMap!2744 lt!2577732 lambda!441090) (dynLambda!28611 lambda!441090 ct1!232))))

(declare-fun lt!2577844 () Unit!163634)

(declare-fun choose!55707 ((Set Context!14960) Context!14960 Int) Unit!163634)

(assert (=> d!2248611 (= lt!2577844 (choose!55707 lt!2577732 ct1!232 lambda!441090))))

(assert (=> d!2248611 (= lt!2577732 (set.insert ct1!232 (as set.empty (Set Context!14960))))))

(assert (=> d!2248611 (= (lemmaFlatMapOnSingletonSet!2171 lt!2577732 ct1!232 lambda!441090) lt!2577844)))

(declare-fun b_lambda!277619 () Bool)

(assert (=> (not b_lambda!277619) (not d!2248611)))

(declare-fun bs!1903717 () Bool)

(assert (= bs!1903717 d!2248611))

(assert (=> bs!1903717 m!7910872))

(declare-fun m!7911004 () Bool)

(assert (=> bs!1903717 m!7911004))

(declare-fun m!7911006 () Bool)

(assert (=> bs!1903717 m!7911006))

(assert (=> bs!1903717 m!7910810))

(assert (=> b!7238611 d!2248611))

(declare-fun d!2248613 () Bool)

(assert (=> d!2248613 (forall!17378 (++!16381 (exprs!7980 ct1!232) (exprs!7980 ct2!328)) lambda!441088)))

(declare-fun lt!2577847 () Unit!163634)

(declare-fun choose!55708 (List!70228 List!70228 Int) Unit!163634)

(assert (=> d!2248613 (= lt!2577847 (choose!55708 (exprs!7980 ct1!232) (exprs!7980 ct2!328) lambda!441088))))

(assert (=> d!2248613 (forall!17378 (exprs!7980 ct1!232) lambda!441088)))

(assert (=> d!2248613 (= (lemmaConcatPreservesForall!1349 (exprs!7980 ct1!232) (exprs!7980 ct2!328) lambda!441088) lt!2577847)))

(declare-fun bs!1903718 () Bool)

(assert (= bs!1903718 d!2248613))

(assert (=> bs!1903718 m!7910818))

(assert (=> bs!1903718 m!7910818))

(declare-fun m!7911008 () Bool)

(assert (=> bs!1903718 m!7911008))

(declare-fun m!7911010 () Bool)

(assert (=> bs!1903718 m!7911010))

(declare-fun m!7911012 () Bool)

(assert (=> bs!1903718 m!7911012))

(assert (=> b!7238611 d!2248613))

(declare-fun c!1343874 () Bool)

(declare-fun call!659172 () (Set Context!14960))

(declare-fun bm!659162 () Bool)

(declare-fun call!659171 () List!70228)

(assert (=> bm!659162 (= call!659172 (derivationStepZipperDown!2584 (ite c!1343874 (regOne!37593 (h!76552 (exprs!7980 ct1!232))) (regOne!37592 (h!76552 (exprs!7980 ct1!232)))) (ite c!1343874 lt!2577705 (Context!14961 call!659171)) (h!76553 s1!1971)))))

(declare-fun b!7238697 () Bool)

(declare-fun e!4339835 () (Set Context!14960))

(assert (=> b!7238697 (= e!4339835 (as set.empty (Set Context!14960)))))

(declare-fun bm!659163 () Bool)

(declare-fun call!659167 () List!70228)

(assert (=> bm!659163 (= call!659167 call!659171)))

(declare-fun b!7238698 () Bool)

(declare-fun e!4339836 () (Set Context!14960))

(assert (=> b!7238698 (= e!4339836 (set.insert lt!2577705 (as set.empty (Set Context!14960))))))

(declare-fun b!7238699 () Bool)

(declare-fun c!1343871 () Bool)

(assert (=> b!7238699 (= c!1343871 (is-Star!18540 (h!76552 (exprs!7980 ct1!232))))))

(declare-fun e!4339831 () (Set Context!14960))

(assert (=> b!7238699 (= e!4339831 e!4339835)))

(declare-fun b!7238700 () Bool)

(declare-fun e!4339832 () (Set Context!14960))

(assert (=> b!7238700 (= e!4339836 e!4339832)))

(assert (=> b!7238700 (= c!1343874 (is-Union!18540 (h!76552 (exprs!7980 ct1!232))))))

(declare-fun bm!659164 () Bool)

(declare-fun call!659168 () (Set Context!14960))

(declare-fun call!659170 () (Set Context!14960))

(assert (=> bm!659164 (= call!659168 call!659170)))

(declare-fun d!2248615 () Bool)

(declare-fun c!1343870 () Bool)

(assert (=> d!2248615 (= c!1343870 (and (is-ElementMatch!18540 (h!76552 (exprs!7980 ct1!232))) (= (c!1343845 (h!76552 (exprs!7980 ct1!232))) (h!76553 s1!1971))))))

(assert (=> d!2248615 (= (derivationStepZipperDown!2584 (h!76552 (exprs!7980 ct1!232)) lt!2577705 (h!76553 s1!1971)) e!4339836)))

(declare-fun b!7238701 () Bool)

(assert (=> b!7238701 (= e!4339832 (set.union call!659172 call!659170))))

(declare-fun b!7238702 () Bool)

(declare-fun e!4339833 () (Set Context!14960))

(assert (=> b!7238702 (= e!4339833 e!4339831)))

(declare-fun c!1343872 () Bool)

(assert (=> b!7238702 (= c!1343872 (is-Concat!27385 (h!76552 (exprs!7980 ct1!232))))))

(declare-fun b!7238703 () Bool)

(declare-fun call!659169 () (Set Context!14960))

(assert (=> b!7238703 (= e!4339835 call!659169)))

(declare-fun c!1343873 () Bool)

(declare-fun bm!659165 () Bool)

(declare-fun $colon$colon!2886 (List!70228 Regex!18540) List!70228)

(assert (=> bm!659165 (= call!659171 ($colon$colon!2886 (exprs!7980 lt!2577705) (ite (or c!1343873 c!1343872) (regTwo!37592 (h!76552 (exprs!7980 ct1!232))) (h!76552 (exprs!7980 ct1!232)))))))

(declare-fun b!7238704 () Bool)

(assert (=> b!7238704 (= e!4339833 (set.union call!659172 call!659168))))

(declare-fun bm!659166 () Bool)

(assert (=> bm!659166 (= call!659169 call!659168)))

(declare-fun b!7238705 () Bool)

(declare-fun e!4339834 () Bool)

(assert (=> b!7238705 (= e!4339834 (nullable!7853 (regOne!37592 (h!76552 (exprs!7980 ct1!232)))))))

(declare-fun bm!659167 () Bool)

(assert (=> bm!659167 (= call!659170 (derivationStepZipperDown!2584 (ite c!1343874 (regTwo!37593 (h!76552 (exprs!7980 ct1!232))) (ite c!1343873 (regTwo!37592 (h!76552 (exprs!7980 ct1!232))) (ite c!1343872 (regOne!37592 (h!76552 (exprs!7980 ct1!232))) (reg!18869 (h!76552 (exprs!7980 ct1!232)))))) (ite (or c!1343874 c!1343873) lt!2577705 (Context!14961 call!659167)) (h!76553 s1!1971)))))

(declare-fun b!7238706 () Bool)

(assert (=> b!7238706 (= c!1343873 e!4339834)))

(declare-fun res!2936602 () Bool)

(assert (=> b!7238706 (=> (not res!2936602) (not e!4339834))))

(assert (=> b!7238706 (= res!2936602 (is-Concat!27385 (h!76552 (exprs!7980 ct1!232))))))

(assert (=> b!7238706 (= e!4339832 e!4339833)))

(declare-fun b!7238707 () Bool)

(assert (=> b!7238707 (= e!4339831 call!659169)))

(assert (= (and d!2248615 c!1343870) b!7238698))

(assert (= (and d!2248615 (not c!1343870)) b!7238700))

(assert (= (and b!7238700 c!1343874) b!7238701))

(assert (= (and b!7238700 (not c!1343874)) b!7238706))

(assert (= (and b!7238706 res!2936602) b!7238705))

(assert (= (and b!7238706 c!1343873) b!7238704))

(assert (= (and b!7238706 (not c!1343873)) b!7238702))

(assert (= (and b!7238702 c!1343872) b!7238707))

(assert (= (and b!7238702 (not c!1343872)) b!7238699))

(assert (= (and b!7238699 c!1343871) b!7238703))

(assert (= (and b!7238699 (not c!1343871)) b!7238697))

(assert (= (or b!7238707 b!7238703) bm!659163))

(assert (= (or b!7238707 b!7238703) bm!659166))

(assert (= (or b!7238704 bm!659163) bm!659165))

(assert (= (or b!7238704 bm!659166) bm!659164))

(assert (= (or b!7238701 bm!659164) bm!659167))

(assert (= (or b!7238701 b!7238704) bm!659162))

(declare-fun m!7911014 () Bool)

(assert (=> b!7238698 m!7911014))

(declare-fun m!7911016 () Bool)

(assert (=> bm!659165 m!7911016))

(declare-fun m!7911018 () Bool)

(assert (=> b!7238705 m!7911018))

(declare-fun m!7911020 () Bool)

(assert (=> bm!659162 m!7911020))

(declare-fun m!7911022 () Bool)

(assert (=> bm!659167 m!7911022))

(assert (=> b!7238611 d!2248615))

(declare-fun b!7238718 () Bool)

(declare-fun e!4339845 () Bool)

(assert (=> b!7238718 (= e!4339845 (nullable!7853 (h!76552 (exprs!7980 lt!2577713))))))

(declare-fun b!7238719 () Bool)

(declare-fun e!4339843 () (Set Context!14960))

(assert (=> b!7238719 (= e!4339843 (as set.empty (Set Context!14960)))))

(declare-fun b!7238720 () Bool)

(declare-fun e!4339844 () (Set Context!14960))

(assert (=> b!7238720 (= e!4339844 e!4339843)))

(declare-fun c!1343880 () Bool)

(assert (=> b!7238720 (= c!1343880 (is-Cons!70104 (exprs!7980 lt!2577713)))))

(declare-fun bm!659170 () Bool)

(declare-fun call!659175 () (Set Context!14960))

(assert (=> bm!659170 (= call!659175 (derivationStepZipperDown!2584 (h!76552 (exprs!7980 lt!2577713)) (Context!14961 (t!384279 (exprs!7980 lt!2577713))) (h!76553 s1!1971)))))

(declare-fun b!7238721 () Bool)

(assert (=> b!7238721 (= e!4339843 call!659175)))

(declare-fun d!2248617 () Bool)

(declare-fun c!1343879 () Bool)

(assert (=> d!2248617 (= c!1343879 e!4339845)))

(declare-fun res!2936605 () Bool)

(assert (=> d!2248617 (=> (not res!2936605) (not e!4339845))))

(assert (=> d!2248617 (= res!2936605 (is-Cons!70104 (exprs!7980 lt!2577713)))))

(assert (=> d!2248617 (= (derivationStepZipperUp!2414 lt!2577713 (h!76553 s1!1971)) e!4339844)))

(declare-fun b!7238722 () Bool)

(assert (=> b!7238722 (= e!4339844 (set.union call!659175 (derivationStepZipperUp!2414 (Context!14961 (t!384279 (exprs!7980 lt!2577713))) (h!76553 s1!1971))))))

(assert (= (and d!2248617 res!2936605) b!7238718))

(assert (= (and d!2248617 c!1343879) b!7238722))

(assert (= (and d!2248617 (not c!1343879)) b!7238720))

(assert (= (and b!7238720 c!1343880) b!7238721))

(assert (= (and b!7238720 (not c!1343880)) b!7238719))

(assert (= (or b!7238722 b!7238721) bm!659170))

(declare-fun m!7911024 () Bool)

(assert (=> b!7238718 m!7911024))

(declare-fun m!7911026 () Bool)

(assert (=> bm!659170 m!7911026))

(declare-fun m!7911028 () Bool)

(assert (=> b!7238722 m!7911028))

(assert (=> b!7238611 d!2248617))

(declare-fun b!7238732 () Bool)

(declare-fun e!4339850 () List!70229)

(assert (=> b!7238732 (= e!4339850 (Cons!70105 (h!76553 s1!1971) (++!16380 (t!384280 s1!1971) s2!1849)))))

(declare-fun d!2248619 () Bool)

(declare-fun e!4339851 () Bool)

(assert (=> d!2248619 e!4339851))

(declare-fun res!2936610 () Bool)

(assert (=> d!2248619 (=> (not res!2936610) (not e!4339851))))

(declare-fun lt!2577850 () List!70229)

(declare-fun content!14464 (List!70229) (Set C!37354))

(assert (=> d!2248619 (= res!2936610 (= (content!14464 lt!2577850) (set.union (content!14464 s1!1971) (content!14464 s2!1849))))))

(assert (=> d!2248619 (= lt!2577850 e!4339850)))

(declare-fun c!1343883 () Bool)

(assert (=> d!2248619 (= c!1343883 (is-Nil!70105 s1!1971))))

(assert (=> d!2248619 (= (++!16380 s1!1971 s2!1849) lt!2577850)))

(declare-fun b!7238733 () Bool)

(declare-fun res!2936611 () Bool)

(assert (=> b!7238733 (=> (not res!2936611) (not e!4339851))))

(declare-fun size!41610 (List!70229) Int)

(assert (=> b!7238733 (= res!2936611 (= (size!41610 lt!2577850) (+ (size!41610 s1!1971) (size!41610 s2!1849))))))

(declare-fun b!7238734 () Bool)

(assert (=> b!7238734 (= e!4339851 (or (not (= s2!1849 Nil!70105)) (= lt!2577850 s1!1971)))))

(declare-fun b!7238731 () Bool)

(assert (=> b!7238731 (= e!4339850 s2!1849)))

(assert (= (and d!2248619 c!1343883) b!7238731))

(assert (= (and d!2248619 (not c!1343883)) b!7238732))

(assert (= (and d!2248619 res!2936610) b!7238733))

(assert (= (and b!7238733 res!2936611) b!7238734))

(assert (=> b!7238732 m!7910836))

(declare-fun m!7911030 () Bool)

(assert (=> d!2248619 m!7911030))

(declare-fun m!7911032 () Bool)

(assert (=> d!2248619 m!7911032))

(declare-fun m!7911034 () Bool)

(assert (=> d!2248619 m!7911034))

(declare-fun m!7911036 () Bool)

(assert (=> b!7238733 m!7911036))

(declare-fun m!7911038 () Bool)

(assert (=> b!7238733 m!7911038))

(declare-fun m!7911040 () Bool)

(assert (=> b!7238733 m!7911040))

(assert (=> b!7238611 d!2248619))

(declare-fun bs!1903719 () Bool)

(declare-fun d!2248621 () Bool)

(assert (= bs!1903719 (and d!2248621 b!7238619)))

(declare-fun lambda!441132 () Int)

(assert (=> bs!1903719 (= lambda!441132 lambda!441088)))

(assert (=> d!2248621 (set.member (Context!14961 (++!16381 (exprs!7980 lt!2577701) (exprs!7980 ct2!328))) (derivationStepZipperUp!2414 (Context!14961 (++!16381 (exprs!7980 ct1!232) (exprs!7980 ct2!328))) (h!76553 s1!1971)))))

(declare-fun lt!2577859 () Unit!163634)

(assert (=> d!2248621 (= lt!2577859 (lemmaConcatPreservesForall!1349 (exprs!7980 ct1!232) (exprs!7980 ct2!328) lambda!441132))))

(declare-fun lt!2577858 () Unit!163634)

(assert (=> d!2248621 (= lt!2577858 (lemmaConcatPreservesForall!1349 (exprs!7980 lt!2577701) (exprs!7980 ct2!328) lambda!441132))))

(declare-fun lt!2577857 () Unit!163634)

(declare-fun choose!55709 (Context!14960 Context!14960 Context!14960 C!37354) Unit!163634)

(assert (=> d!2248621 (= lt!2577857 (choose!55709 ct1!232 ct2!328 lt!2577701 (h!76553 s1!1971)))))

(assert (=> d!2248621 (set.member lt!2577701 (derivationStepZipperUp!2414 ct1!232 (h!76553 s1!1971)))))

(assert (=> d!2248621 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!5 ct1!232 ct2!328 lt!2577701 (h!76553 s1!1971)) lt!2577857)))

(declare-fun bs!1903720 () Bool)

(assert (= bs!1903720 d!2248621))

(assert (=> bs!1903720 m!7910818))

(declare-fun m!7911042 () Bool)

(assert (=> bs!1903720 m!7911042))

(declare-fun m!7911044 () Bool)

(assert (=> bs!1903720 m!7911044))

(assert (=> bs!1903720 m!7910834))

(declare-fun m!7911046 () Bool)

(assert (=> bs!1903720 m!7911046))

(declare-fun m!7911048 () Bool)

(assert (=> bs!1903720 m!7911048))

(declare-fun m!7911050 () Bool)

(assert (=> bs!1903720 m!7911050))

(assert (=> bs!1903720 m!7910828))

(declare-fun m!7911052 () Bool)

(assert (=> bs!1903720 m!7911052))

(assert (=> b!7238611 d!2248621))

(declare-fun d!2248623 () Bool)

(declare-fun choose!55710 ((Set Context!14960) Int) (Set Context!14960))

(assert (=> d!2248623 (= (flatMap!2744 lt!2577712 lambda!441090) (choose!55710 lt!2577712 lambda!441090))))

(declare-fun bs!1903721 () Bool)

(assert (= bs!1903721 d!2248623))

(declare-fun m!7911054 () Bool)

(assert (=> bs!1903721 m!7911054))

(assert (=> b!7238611 d!2248623))

(declare-fun d!2248625 () Bool)

(declare-fun res!2936616 () Bool)

(declare-fun e!4339856 () Bool)

(assert (=> d!2248625 (=> res!2936616 e!4339856)))

(assert (=> d!2248625 (= res!2936616 (is-Nil!70104 (exprs!7980 lt!2577701)))))

(assert (=> d!2248625 (= (forall!17378 (exprs!7980 lt!2577701) lambda!441088) e!4339856)))

(declare-fun b!7238739 () Bool)

(declare-fun e!4339857 () Bool)

(assert (=> b!7238739 (= e!4339856 e!4339857)))

(declare-fun res!2936617 () Bool)

(assert (=> b!7238739 (=> (not res!2936617) (not e!4339857))))

(declare-fun dynLambda!28612 (Int Regex!18540) Bool)

(assert (=> b!7238739 (= res!2936617 (dynLambda!28612 lambda!441088 (h!76552 (exprs!7980 lt!2577701))))))

(declare-fun b!7238740 () Bool)

(assert (=> b!7238740 (= e!4339857 (forall!17378 (t!384279 (exprs!7980 lt!2577701)) lambda!441088))))

(assert (= (and d!2248625 (not res!2936616)) b!7238739))

(assert (= (and b!7238739 res!2936617) b!7238740))

(declare-fun b_lambda!277621 () Bool)

(assert (=> (not b_lambda!277621) (not b!7238739)))

(declare-fun m!7911056 () Bool)

(assert (=> b!7238739 m!7911056))

(declare-fun m!7911058 () Bool)

(assert (=> b!7238740 m!7911058))

(assert (=> b!7238611 d!2248625))

(declare-fun d!2248627 () Bool)

(assert (=> d!2248627 (= (tail!14191 (++!16380 s1!1971 s2!1849)) (t!384280 (++!16380 s1!1971 s2!1849)))))

(assert (=> b!7238611 d!2248627))

(declare-fun d!2248629 () Bool)

(assert (=> d!2248629 (= (flatMap!2744 lt!2577712 lambda!441090) (dynLambda!28611 lambda!441090 lt!2577713))))

(declare-fun lt!2577860 () Unit!163634)

(assert (=> d!2248629 (= lt!2577860 (choose!55707 lt!2577712 lt!2577713 lambda!441090))))

(assert (=> d!2248629 (= lt!2577712 (set.insert lt!2577713 (as set.empty (Set Context!14960))))))

(assert (=> d!2248629 (= (lemmaFlatMapOnSingletonSet!2171 lt!2577712 lt!2577713 lambda!441090) lt!2577860)))

(declare-fun b_lambda!277623 () Bool)

(assert (=> (not b_lambda!277623) (not d!2248629)))

(declare-fun bs!1903722 () Bool)

(assert (= bs!1903722 d!2248629))

(assert (=> bs!1903722 m!7910870))

(declare-fun m!7911060 () Bool)

(assert (=> bs!1903722 m!7911060))

(declare-fun m!7911062 () Bool)

(assert (=> bs!1903722 m!7911062))

(assert (=> bs!1903722 m!7910816))

(assert (=> b!7238611 d!2248629))

(declare-fun d!2248631 () Bool)

(assert (=> d!2248631 (= (tail!14190 lt!2577724) (t!384279 lt!2577724))))

(assert (=> b!7238611 d!2248631))

(declare-fun d!2248633 () Bool)

(declare-fun nullableFct!3078 (Regex!18540) Bool)

(assert (=> d!2248633 (= (nullable!7853 (h!76552 (exprs!7980 ct1!232))) (nullableFct!3078 (h!76552 (exprs!7980 ct1!232))))))

(declare-fun bs!1903723 () Bool)

(assert (= bs!1903723 d!2248633))

(declare-fun m!7911064 () Bool)

(assert (=> bs!1903723 m!7911064))

(assert (=> b!7238611 d!2248633))

(declare-fun bs!1903724 () Bool)

(declare-fun d!2248635 () Bool)

(assert (= bs!1903724 (and d!2248635 b!7238611)))

(declare-fun lambda!441135 () Int)

(assert (=> bs!1903724 (= lambda!441135 lambda!441090)))

(assert (=> d!2248635 true))

(assert (=> d!2248635 (= (derivationStepZipper!3332 lt!2577712 (h!76553 s1!1971)) (flatMap!2744 lt!2577712 lambda!441135))))

(declare-fun bs!1903725 () Bool)

(assert (= bs!1903725 d!2248635))

(declare-fun m!7911066 () Bool)

(assert (=> bs!1903725 m!7911066))

(assert (=> b!7238611 d!2248635))

(declare-fun d!2248637 () Bool)

(assert (=> d!2248637 (forall!17378 (++!16381 (exprs!7980 lt!2577701) (exprs!7980 ct2!328)) lambda!441088)))

(declare-fun lt!2577861 () Unit!163634)

(assert (=> d!2248637 (= lt!2577861 (choose!55708 (exprs!7980 lt!2577701) (exprs!7980 ct2!328) lambda!441088))))

(assert (=> d!2248637 (forall!17378 (exprs!7980 lt!2577701) lambda!441088)))

(assert (=> d!2248637 (= (lemmaConcatPreservesForall!1349 (exprs!7980 lt!2577701) (exprs!7980 ct2!328) lambda!441088) lt!2577861)))

(declare-fun bs!1903726 () Bool)

(assert (= bs!1903726 d!2248637))

(assert (=> bs!1903726 m!7910828))

(assert (=> bs!1903726 m!7910828))

(declare-fun m!7911068 () Bool)

(assert (=> bs!1903726 m!7911068))

(declare-fun m!7911070 () Bool)

(assert (=> bs!1903726 m!7911070))

(assert (=> bs!1903726 m!7910892))

(assert (=> b!7238611 d!2248637))

(declare-fun b!7238743 () Bool)

(declare-fun e!4339860 () Bool)

(assert (=> b!7238743 (= e!4339860 (nullable!7853 (h!76552 (exprs!7980 ct1!232))))))

(declare-fun b!7238744 () Bool)

(declare-fun e!4339858 () (Set Context!14960))

(assert (=> b!7238744 (= e!4339858 (as set.empty (Set Context!14960)))))

(declare-fun b!7238745 () Bool)

(declare-fun e!4339859 () (Set Context!14960))

(assert (=> b!7238745 (= e!4339859 e!4339858)))

(declare-fun c!1343888 () Bool)

(assert (=> b!7238745 (= c!1343888 (is-Cons!70104 (exprs!7980 ct1!232)))))

(declare-fun bm!659171 () Bool)

(declare-fun call!659176 () (Set Context!14960))

(assert (=> bm!659171 (= call!659176 (derivationStepZipperDown!2584 (h!76552 (exprs!7980 ct1!232)) (Context!14961 (t!384279 (exprs!7980 ct1!232))) (h!76553 s1!1971)))))

(declare-fun b!7238746 () Bool)

(assert (=> b!7238746 (= e!4339858 call!659176)))

(declare-fun d!2248639 () Bool)

(declare-fun c!1343887 () Bool)

(assert (=> d!2248639 (= c!1343887 e!4339860)))

(declare-fun res!2936618 () Bool)

(assert (=> d!2248639 (=> (not res!2936618) (not e!4339860))))

(assert (=> d!2248639 (= res!2936618 (is-Cons!70104 (exprs!7980 ct1!232)))))

(assert (=> d!2248639 (= (derivationStepZipperUp!2414 ct1!232 (h!76553 s1!1971)) e!4339859)))

(declare-fun b!7238747 () Bool)

(assert (=> b!7238747 (= e!4339859 (set.union call!659176 (derivationStepZipperUp!2414 (Context!14961 (t!384279 (exprs!7980 ct1!232))) (h!76553 s1!1971))))))

(assert (= (and d!2248639 res!2936618) b!7238743))

(assert (= (and d!2248639 c!1343887) b!7238747))

(assert (= (and d!2248639 (not c!1343887)) b!7238745))

(assert (= (and b!7238745 c!1343888) b!7238746))

(assert (= (and b!7238745 (not c!1343888)) b!7238744))

(assert (= (or b!7238747 b!7238746) bm!659171))

(assert (=> b!7238743 m!7910880))

(declare-fun m!7911072 () Bool)

(assert (=> bm!659171 m!7911072))

(declare-fun m!7911074 () Bool)

(assert (=> b!7238747 m!7911074))

(assert (=> b!7238611 d!2248639))

(declare-fun d!2248641 () Bool)

(assert (=> d!2248641 (= (flatMap!2744 lt!2577732 lambda!441090) (choose!55710 lt!2577732 lambda!441090))))

(declare-fun bs!1903727 () Bool)

(assert (= bs!1903727 d!2248641))

(declare-fun m!7911076 () Bool)

(assert (=> bs!1903727 m!7911076))

(assert (=> b!7238611 d!2248641))

(declare-fun d!2248643 () Bool)

(declare-fun c!1343891 () Bool)

(declare-fun isEmpty!40402 (List!70229) Bool)

(assert (=> d!2248643 (= c!1343891 (isEmpty!40402 s2!1849))))

(declare-fun e!4339863 () Bool)

(assert (=> d!2248643 (= (matchZipper!3450 (set.insert ct2!328 (as set.empty (Set Context!14960))) s2!1849) e!4339863)))

(declare-fun b!7238752 () Bool)

(declare-fun nullableZipper!2839 ((Set Context!14960)) Bool)

(assert (=> b!7238752 (= e!4339863 (nullableZipper!2839 (set.insert ct2!328 (as set.empty (Set Context!14960)))))))

(declare-fun b!7238753 () Bool)

(declare-fun head!14828 (List!70229) C!37354)

(assert (=> b!7238753 (= e!4339863 (matchZipper!3450 (derivationStepZipper!3332 (set.insert ct2!328 (as set.empty (Set Context!14960))) (head!14828 s2!1849)) (tail!14191 s2!1849)))))

(assert (= (and d!2248643 c!1343891) b!7238752))

(assert (= (and d!2248643 (not c!1343891)) b!7238753))

(declare-fun m!7911078 () Bool)

(assert (=> d!2248643 m!7911078))

(assert (=> b!7238752 m!7910804))

(declare-fun m!7911080 () Bool)

(assert (=> b!7238752 m!7911080))

(declare-fun m!7911082 () Bool)

(assert (=> b!7238753 m!7911082))

(assert (=> b!7238753 m!7910804))

(assert (=> b!7238753 m!7911082))

(declare-fun m!7911084 () Bool)

(assert (=> b!7238753 m!7911084))

(declare-fun m!7911086 () Bool)

(assert (=> b!7238753 m!7911086))

(assert (=> b!7238753 m!7911084))

(assert (=> b!7238753 m!7911086))

(declare-fun m!7911088 () Bool)

(assert (=> b!7238753 m!7911088))

(assert (=> b!7238613 d!2248643))

(assert (=> b!7238609 d!2248617))

(declare-fun d!2248645 () Bool)

(assert (=> d!2248645 (= (isEmpty!40400 lt!2577724) (is-Nil!70104 lt!2577724))))

(assert (=> b!7238609 d!2248645))

(declare-fun bm!659172 () Bool)

(declare-fun c!1343896 () Bool)

(declare-fun call!659181 () List!70228)

(declare-fun call!659182 () (Set Context!14960))

(assert (=> bm!659172 (= call!659182 (derivationStepZipperDown!2584 (ite c!1343896 (regOne!37593 (h!76552 (exprs!7980 ct1!232))) (regOne!37592 (h!76552 (exprs!7980 ct1!232)))) (ite c!1343896 lt!2577730 (Context!14961 call!659181)) (h!76553 s1!1971)))))

(declare-fun b!7238754 () Bool)

(declare-fun e!4339868 () (Set Context!14960))

(assert (=> b!7238754 (= e!4339868 (as set.empty (Set Context!14960)))))

(declare-fun bm!659173 () Bool)

(declare-fun call!659177 () List!70228)

(assert (=> bm!659173 (= call!659177 call!659181)))

(declare-fun b!7238755 () Bool)

(declare-fun e!4339869 () (Set Context!14960))

(assert (=> b!7238755 (= e!4339869 (set.insert lt!2577730 (as set.empty (Set Context!14960))))))

(declare-fun b!7238756 () Bool)

(declare-fun c!1343893 () Bool)

(assert (=> b!7238756 (= c!1343893 (is-Star!18540 (h!76552 (exprs!7980 ct1!232))))))

(declare-fun e!4339864 () (Set Context!14960))

(assert (=> b!7238756 (= e!4339864 e!4339868)))

(declare-fun b!7238757 () Bool)

(declare-fun e!4339865 () (Set Context!14960))

(assert (=> b!7238757 (= e!4339869 e!4339865)))

(assert (=> b!7238757 (= c!1343896 (is-Union!18540 (h!76552 (exprs!7980 ct1!232))))))

(declare-fun bm!659174 () Bool)

(declare-fun call!659178 () (Set Context!14960))

(declare-fun call!659180 () (Set Context!14960))

(assert (=> bm!659174 (= call!659178 call!659180)))

(declare-fun d!2248647 () Bool)

(declare-fun c!1343892 () Bool)

(assert (=> d!2248647 (= c!1343892 (and (is-ElementMatch!18540 (h!76552 (exprs!7980 ct1!232))) (= (c!1343845 (h!76552 (exprs!7980 ct1!232))) (h!76553 s1!1971))))))

(assert (=> d!2248647 (= (derivationStepZipperDown!2584 (h!76552 (exprs!7980 ct1!232)) lt!2577730 (h!76553 s1!1971)) e!4339869)))

(declare-fun b!7238758 () Bool)

(assert (=> b!7238758 (= e!4339865 (set.union call!659182 call!659180))))

(declare-fun b!7238759 () Bool)

(declare-fun e!4339866 () (Set Context!14960))

(assert (=> b!7238759 (= e!4339866 e!4339864)))

(declare-fun c!1343894 () Bool)

(assert (=> b!7238759 (= c!1343894 (is-Concat!27385 (h!76552 (exprs!7980 ct1!232))))))

(declare-fun b!7238760 () Bool)

(declare-fun call!659179 () (Set Context!14960))

(assert (=> b!7238760 (= e!4339868 call!659179)))

(declare-fun c!1343895 () Bool)

(declare-fun bm!659175 () Bool)

(assert (=> bm!659175 (= call!659181 ($colon$colon!2886 (exprs!7980 lt!2577730) (ite (or c!1343895 c!1343894) (regTwo!37592 (h!76552 (exprs!7980 ct1!232))) (h!76552 (exprs!7980 ct1!232)))))))

(declare-fun b!7238761 () Bool)

(assert (=> b!7238761 (= e!4339866 (set.union call!659182 call!659178))))

(declare-fun bm!659176 () Bool)

(assert (=> bm!659176 (= call!659179 call!659178)))

(declare-fun b!7238762 () Bool)

(declare-fun e!4339867 () Bool)

(assert (=> b!7238762 (= e!4339867 (nullable!7853 (regOne!37592 (h!76552 (exprs!7980 ct1!232)))))))

(declare-fun bm!659177 () Bool)

(assert (=> bm!659177 (= call!659180 (derivationStepZipperDown!2584 (ite c!1343896 (regTwo!37593 (h!76552 (exprs!7980 ct1!232))) (ite c!1343895 (regTwo!37592 (h!76552 (exprs!7980 ct1!232))) (ite c!1343894 (regOne!37592 (h!76552 (exprs!7980 ct1!232))) (reg!18869 (h!76552 (exprs!7980 ct1!232)))))) (ite (or c!1343896 c!1343895) lt!2577730 (Context!14961 call!659177)) (h!76553 s1!1971)))))

(declare-fun b!7238763 () Bool)

(assert (=> b!7238763 (= c!1343895 e!4339867)))

(declare-fun res!2936619 () Bool)

(assert (=> b!7238763 (=> (not res!2936619) (not e!4339867))))

(assert (=> b!7238763 (= res!2936619 (is-Concat!27385 (h!76552 (exprs!7980 ct1!232))))))

(assert (=> b!7238763 (= e!4339865 e!4339866)))

(declare-fun b!7238764 () Bool)

(assert (=> b!7238764 (= e!4339864 call!659179)))

(assert (= (and d!2248647 c!1343892) b!7238755))

(assert (= (and d!2248647 (not c!1343892)) b!7238757))

(assert (= (and b!7238757 c!1343896) b!7238758))

(assert (= (and b!7238757 (not c!1343896)) b!7238763))

(assert (= (and b!7238763 res!2936619) b!7238762))

(assert (= (and b!7238763 c!1343895) b!7238761))

(assert (= (and b!7238763 (not c!1343895)) b!7238759))

(assert (= (and b!7238759 c!1343894) b!7238764))

(assert (= (and b!7238759 (not c!1343894)) b!7238756))

(assert (= (and b!7238756 c!1343893) b!7238760))

(assert (= (and b!7238756 (not c!1343893)) b!7238754))

(assert (= (or b!7238764 b!7238760) bm!659173))

(assert (= (or b!7238764 b!7238760) bm!659176))

(assert (= (or b!7238761 bm!659173) bm!659175))

(assert (= (or b!7238761 bm!659176) bm!659174))

(assert (= (or b!7238758 bm!659174) bm!659177))

(assert (= (or b!7238758 b!7238761) bm!659172))

(declare-fun m!7911090 () Bool)

(assert (=> b!7238755 m!7911090))

(declare-fun m!7911092 () Bool)

(assert (=> bm!659175 m!7911092))

(assert (=> b!7238762 m!7911018))

(declare-fun m!7911094 () Bool)

(assert (=> bm!659172 m!7911094))

(declare-fun m!7911096 () Bool)

(assert (=> bm!659177 m!7911096))

(assert (=> b!7238609 d!2248647))

(assert (=> b!7238609 d!2248613))

(declare-fun d!2248649 () Bool)

(assert (=> d!2248649 (= (tail!14190 (exprs!7980 ct1!232)) (t!384279 (exprs!7980 ct1!232)))))

(assert (=> b!7238609 d!2248649))

(declare-fun b!7238775 () Bool)

(declare-fun res!2936625 () Bool)

(declare-fun e!4339875 () Bool)

(assert (=> b!7238775 (=> (not res!2936625) (not e!4339875))))

(declare-fun lt!2577864 () List!70228)

(declare-fun size!41611 (List!70228) Int)

(assert (=> b!7238775 (= res!2936625 (= (size!41611 lt!2577864) (+ (size!41611 (exprs!7980 ct1!232)) (size!41611 (exprs!7980 ct2!328)))))))

(declare-fun d!2248651 () Bool)

(assert (=> d!2248651 e!4339875))

(declare-fun res!2936624 () Bool)

(assert (=> d!2248651 (=> (not res!2936624) (not e!4339875))))

(declare-fun content!14465 (List!70228) (Set Regex!18540))

(assert (=> d!2248651 (= res!2936624 (= (content!14465 lt!2577864) (set.union (content!14465 (exprs!7980 ct1!232)) (content!14465 (exprs!7980 ct2!328)))))))

(declare-fun e!4339874 () List!70228)

(assert (=> d!2248651 (= lt!2577864 e!4339874)))

(declare-fun c!1343899 () Bool)

(assert (=> d!2248651 (= c!1343899 (is-Nil!70104 (exprs!7980 ct1!232)))))

(assert (=> d!2248651 (= (++!16381 (exprs!7980 ct1!232) (exprs!7980 ct2!328)) lt!2577864)))

(declare-fun b!7238773 () Bool)

(assert (=> b!7238773 (= e!4339874 (exprs!7980 ct2!328))))

(declare-fun b!7238774 () Bool)

(assert (=> b!7238774 (= e!4339874 (Cons!70104 (h!76552 (exprs!7980 ct1!232)) (++!16381 (t!384279 (exprs!7980 ct1!232)) (exprs!7980 ct2!328))))))

(declare-fun b!7238776 () Bool)

(assert (=> b!7238776 (= e!4339875 (or (not (= (exprs!7980 ct2!328) Nil!70104)) (= lt!2577864 (exprs!7980 ct1!232))))))

(assert (= (and d!2248651 c!1343899) b!7238773))

(assert (= (and d!2248651 (not c!1343899)) b!7238774))

(assert (= (and d!2248651 res!2936624) b!7238775))

(assert (= (and b!7238775 res!2936625) b!7238776))

(declare-fun m!7911098 () Bool)

(assert (=> b!7238775 m!7911098))

(declare-fun m!7911100 () Bool)

(assert (=> b!7238775 m!7911100))

(declare-fun m!7911102 () Bool)

(assert (=> b!7238775 m!7911102))

(declare-fun m!7911104 () Bool)

(assert (=> d!2248651 m!7911104))

(declare-fun m!7911106 () Bool)

(assert (=> d!2248651 m!7911106))

(declare-fun m!7911108 () Bool)

(assert (=> d!2248651 m!7911108))

(declare-fun m!7911110 () Bool)

(assert (=> b!7238774 m!7911110))

(assert (=> b!7238619 d!2248651))

(assert (=> b!7238619 d!2248613))

(declare-fun d!2248653 () Bool)

(declare-fun c!1343900 () Bool)

(assert (=> d!2248653 (= c!1343900 (isEmpty!40402 (t!384280 s1!1971)))))

(declare-fun e!4339876 () Bool)

(assert (=> d!2248653 (= (matchZipper!3450 lt!2577698 (t!384280 s1!1971)) e!4339876)))

(declare-fun b!7238777 () Bool)

(assert (=> b!7238777 (= e!4339876 (nullableZipper!2839 lt!2577698))))

(declare-fun b!7238778 () Bool)

(assert (=> b!7238778 (= e!4339876 (matchZipper!3450 (derivationStepZipper!3332 lt!2577698 (head!14828 (t!384280 s1!1971))) (tail!14191 (t!384280 s1!1971))))))

(assert (= (and d!2248653 c!1343900) b!7238777))

(assert (= (and d!2248653 (not c!1343900)) b!7238778))

(declare-fun m!7911112 () Bool)

(assert (=> d!2248653 m!7911112))

(declare-fun m!7911114 () Bool)

(assert (=> b!7238777 m!7911114))

(declare-fun m!7911116 () Bool)

(assert (=> b!7238778 m!7911116))

(assert (=> b!7238778 m!7911116))

(declare-fun m!7911118 () Bool)

(assert (=> b!7238778 m!7911118))

(declare-fun m!7911120 () Bool)

(assert (=> b!7238778 m!7911120))

(assert (=> b!7238778 m!7911118))

(assert (=> b!7238778 m!7911120))

(declare-fun m!7911122 () Bool)

(assert (=> b!7238778 m!7911122))

(assert (=> b!7238621 d!2248653))

(declare-fun d!2248655 () Bool)

(declare-fun c!1343901 () Bool)

(assert (=> d!2248655 (= c!1343901 (isEmpty!40402 s1!1971))))

(declare-fun e!4339877 () Bool)

(assert (=> d!2248655 (= (matchZipper!3450 lt!2577732 s1!1971) e!4339877)))

(declare-fun b!7238779 () Bool)

(assert (=> b!7238779 (= e!4339877 (nullableZipper!2839 lt!2577732))))

(declare-fun b!7238780 () Bool)

(assert (=> b!7238780 (= e!4339877 (matchZipper!3450 (derivationStepZipper!3332 lt!2577732 (head!14828 s1!1971)) (tail!14191 s1!1971)))))

(assert (= (and d!2248655 c!1343901) b!7238779))

(assert (= (and d!2248655 (not c!1343901)) b!7238780))

(declare-fun m!7911124 () Bool)

(assert (=> d!2248655 m!7911124))

(declare-fun m!7911126 () Bool)

(assert (=> b!7238779 m!7911126))

(declare-fun m!7911128 () Bool)

(assert (=> b!7238780 m!7911128))

(assert (=> b!7238780 m!7911128))

(declare-fun m!7911130 () Bool)

(assert (=> b!7238780 m!7911130))

(declare-fun m!7911132 () Bool)

(assert (=> b!7238780 m!7911132))

(assert (=> b!7238780 m!7911130))

(assert (=> b!7238780 m!7911132))

(declare-fun m!7911134 () Bool)

(assert (=> b!7238780 m!7911134))

(assert (=> start!703038 d!2248655))

(declare-fun bs!1903728 () Bool)

(declare-fun d!2248657 () Bool)

(assert (= bs!1903728 (and d!2248657 b!7238619)))

(declare-fun lambda!441138 () Int)

(assert (=> bs!1903728 (= lambda!441138 lambda!441088)))

(declare-fun bs!1903729 () Bool)

(assert (= bs!1903729 (and d!2248657 d!2248621)))

(assert (=> bs!1903729 (= lambda!441138 lambda!441132)))

(assert (=> d!2248657 (= (inv!89361 ct1!232) (forall!17378 (exprs!7980 ct1!232) lambda!441138))))

(declare-fun bs!1903730 () Bool)

(assert (= bs!1903730 d!2248657))

(declare-fun m!7911136 () Bool)

(assert (=> bs!1903730 m!7911136))

(assert (=> start!703038 d!2248657))

(declare-fun bs!1903731 () Bool)

(declare-fun d!2248659 () Bool)

(assert (= bs!1903731 (and d!2248659 b!7238619)))

(declare-fun lambda!441139 () Int)

(assert (=> bs!1903731 (= lambda!441139 lambda!441088)))

(declare-fun bs!1903732 () Bool)

(assert (= bs!1903732 (and d!2248659 d!2248621)))

(assert (=> bs!1903732 (= lambda!441139 lambda!441132)))

(declare-fun bs!1903733 () Bool)

(assert (= bs!1903733 (and d!2248659 d!2248657)))

(assert (=> bs!1903733 (= lambda!441139 lambda!441138)))

(assert (=> d!2248659 (= (inv!89361 ct2!328) (forall!17378 (exprs!7980 ct2!328) lambda!441139))))

(declare-fun bs!1903734 () Bool)

(assert (= bs!1903734 d!2248659))

(declare-fun m!7911138 () Bool)

(assert (=> bs!1903734 m!7911138))

(assert (=> start!703038 d!2248659))

(declare-fun bs!1903735 () Bool)

(declare-fun d!2248661 () Bool)

(assert (= bs!1903735 (and d!2248661 b!7238619)))

(declare-fun lambda!441142 () Int)

(assert (=> bs!1903735 (= lambda!441142 lambda!441088)))

(declare-fun bs!1903736 () Bool)

(assert (= bs!1903736 (and d!2248661 d!2248621)))

(assert (=> bs!1903736 (= lambda!441142 lambda!441132)))

(declare-fun bs!1903737 () Bool)

(assert (= bs!1903737 (and d!2248661 d!2248657)))

(assert (=> bs!1903737 (= lambda!441142 lambda!441138)))

(declare-fun bs!1903738 () Bool)

(assert (= bs!1903738 (and d!2248661 d!2248659)))

(assert (=> bs!1903738 (= lambda!441142 lambda!441139)))

(assert (=> d!2248661 (matchZipper!3450 (set.insert (Context!14961 (++!16381 (exprs!7980 lt!2577701) (exprs!7980 ct2!328))) (as set.empty (Set Context!14960))) (++!16380 (t!384280 s1!1971) s2!1849))))

(declare-fun lt!2577870 () Unit!163634)

(assert (=> d!2248661 (= lt!2577870 (lemmaConcatPreservesForall!1349 (exprs!7980 lt!2577701) (exprs!7980 ct2!328) lambda!441142))))

(declare-fun lt!2577869 () Unit!163634)

(declare-fun choose!55711 (Context!14960 Context!14960 List!70229 List!70229) Unit!163634)

(assert (=> d!2248661 (= lt!2577869 (choose!55711 lt!2577701 ct2!328 (t!384280 s1!1971) s2!1849))))

(assert (=> d!2248661 (matchZipper!3450 (set.insert lt!2577701 (as set.empty (Set Context!14960))) (t!384280 s1!1971))))

(assert (=> d!2248661 (= (lemmaConcatenateContextMatchesConcatOfStrings!331 lt!2577701 ct2!328 (t!384280 s1!1971) s2!1849) lt!2577869)))

(declare-fun bs!1903739 () Bool)

(assert (= bs!1903739 d!2248661))

(declare-fun m!7911140 () Bool)

(assert (=> bs!1903739 m!7911140))

(assert (=> bs!1903739 m!7910836))

(declare-fun m!7911142 () Bool)

(assert (=> bs!1903739 m!7911142))

(declare-fun m!7911144 () Bool)

(assert (=> bs!1903739 m!7911144))

(declare-fun m!7911146 () Bool)

(assert (=> bs!1903739 m!7911146))

(declare-fun m!7911148 () Bool)

(assert (=> bs!1903739 m!7911148))

(assert (=> bs!1903739 m!7911140))

(assert (=> bs!1903739 m!7910828))

(assert (=> bs!1903739 m!7910836))

(declare-fun m!7911150 () Bool)

(assert (=> bs!1903739 m!7911150))

(assert (=> bs!1903739 m!7911144))

(assert (=> b!7238617 d!2248661))

(declare-fun d!2248663 () Bool)

(assert (=> d!2248663 (= (isEmpty!40400 (exprs!7980 ct1!232)) (is-Nil!70104 (exprs!7980 ct1!232)))))

(assert (=> b!7238617 d!2248663))

(declare-fun d!2248665 () Bool)

(declare-fun c!1343902 () Bool)

(assert (=> d!2248665 (= c!1343902 (isEmpty!40402 lt!2577702))))

(declare-fun e!4339878 () Bool)

(assert (=> d!2248665 (= (matchZipper!3450 (set.insert lt!2577729 (as set.empty (Set Context!14960))) lt!2577702) e!4339878)))

(declare-fun b!7238781 () Bool)

(assert (=> b!7238781 (= e!4339878 (nullableZipper!2839 (set.insert lt!2577729 (as set.empty (Set Context!14960)))))))

(declare-fun b!7238782 () Bool)

(assert (=> b!7238782 (= e!4339878 (matchZipper!3450 (derivationStepZipper!3332 (set.insert lt!2577729 (as set.empty (Set Context!14960))) (head!14828 lt!2577702)) (tail!14191 lt!2577702)))))

(assert (= (and d!2248665 c!1343902) b!7238781))

(assert (= (and d!2248665 (not c!1343902)) b!7238782))

(declare-fun m!7911152 () Bool)

(assert (=> d!2248665 m!7911152))

(assert (=> b!7238781 m!7910824))

(declare-fun m!7911154 () Bool)

(assert (=> b!7238781 m!7911154))

(declare-fun m!7911156 () Bool)

(assert (=> b!7238782 m!7911156))

(assert (=> b!7238782 m!7910824))

(assert (=> b!7238782 m!7911156))

(declare-fun m!7911158 () Bool)

(assert (=> b!7238782 m!7911158))

(declare-fun m!7911160 () Bool)

(assert (=> b!7238782 m!7911160))

(assert (=> b!7238782 m!7911158))

(assert (=> b!7238782 m!7911160))

(declare-fun m!7911162 () Bool)

(assert (=> b!7238782 m!7911162))

(assert (=> b!7238617 d!2248665))

(assert (=> b!7238617 d!2248637))

(declare-fun d!2248667 () Bool)

(declare-fun e!4339881 () Bool)

(assert (=> d!2248667 e!4339881))

(declare-fun res!2936628 () Bool)

(assert (=> d!2248667 (=> (not res!2936628) (not e!4339881))))

(declare-fun lt!2577873 () Context!14960)

(declare-fun dynLambda!28613 (Int Context!14960) Bool)

(assert (=> d!2248667 (= res!2936628 (dynLambda!28613 lambda!441089 lt!2577873))))

(declare-fun getWitness!2086 (List!70230 Int) Context!14960)

(assert (=> d!2248667 (= lt!2577873 (getWitness!2086 (toList!11397 lt!2577722) lambda!441089))))

(assert (=> d!2248667 (exists!4223 lt!2577722 lambda!441089)))

(assert (=> d!2248667 (= (getWitness!2084 lt!2577722 lambda!441089) lt!2577873)))

(declare-fun b!7238785 () Bool)

(assert (=> b!7238785 (= e!4339881 (set.member lt!2577873 lt!2577722))))

(assert (= (and d!2248667 res!2936628) b!7238785))

(declare-fun b_lambda!277625 () Bool)

(assert (=> (not b_lambda!277625) (not d!2248667)))

(declare-fun m!7911164 () Bool)

(assert (=> d!2248667 m!7911164))

(assert (=> d!2248667 m!7910802))

(assert (=> d!2248667 m!7910802))

(declare-fun m!7911166 () Bool)

(assert (=> d!2248667 m!7911166))

(assert (=> d!2248667 m!7910796))

(declare-fun m!7911168 () Bool)

(assert (=> b!7238785 m!7911168))

(assert (=> b!7238617 d!2248667))

(declare-fun b!7238787 () Bool)

(declare-fun e!4339882 () List!70229)

(assert (=> b!7238787 (= e!4339882 (Cons!70105 (h!76553 (t!384280 s1!1971)) (++!16380 (t!384280 (t!384280 s1!1971)) s2!1849)))))

(declare-fun d!2248669 () Bool)

(declare-fun e!4339883 () Bool)

(assert (=> d!2248669 e!4339883))

(declare-fun res!2936629 () Bool)

(assert (=> d!2248669 (=> (not res!2936629) (not e!4339883))))

(declare-fun lt!2577874 () List!70229)

(assert (=> d!2248669 (= res!2936629 (= (content!14464 lt!2577874) (set.union (content!14464 (t!384280 s1!1971)) (content!14464 s2!1849))))))

(assert (=> d!2248669 (= lt!2577874 e!4339882)))

(declare-fun c!1343903 () Bool)

(assert (=> d!2248669 (= c!1343903 (is-Nil!70105 (t!384280 s1!1971)))))

(assert (=> d!2248669 (= (++!16380 (t!384280 s1!1971) s2!1849) lt!2577874)))

(declare-fun b!7238788 () Bool)

(declare-fun res!2936630 () Bool)

(assert (=> b!7238788 (=> (not res!2936630) (not e!4339883))))

(assert (=> b!7238788 (= res!2936630 (= (size!41610 lt!2577874) (+ (size!41610 (t!384280 s1!1971)) (size!41610 s2!1849))))))

(declare-fun b!7238789 () Bool)

(assert (=> b!7238789 (= e!4339883 (or (not (= s2!1849 Nil!70105)) (= lt!2577874 (t!384280 s1!1971))))))

(declare-fun b!7238786 () Bool)

(assert (=> b!7238786 (= e!4339882 s2!1849)))

(assert (= (and d!2248669 c!1343903) b!7238786))

(assert (= (and d!2248669 (not c!1343903)) b!7238787))

(assert (= (and d!2248669 res!2936629) b!7238788))

(assert (= (and b!7238788 res!2936630) b!7238789))

(declare-fun m!7911170 () Bool)

(assert (=> b!7238787 m!7911170))

(declare-fun m!7911172 () Bool)

(assert (=> d!2248669 m!7911172))

(declare-fun m!7911174 () Bool)

(assert (=> d!2248669 m!7911174))

(assert (=> d!2248669 m!7911034))

(declare-fun m!7911176 () Bool)

(assert (=> b!7238788 m!7911176))

(declare-fun m!7911178 () Bool)

(assert (=> b!7238788 m!7911178))

(assert (=> b!7238788 m!7911040))

(assert (=> b!7238617 d!2248669))

(assert (=> b!7238617 d!2248639))

(declare-fun b!7238792 () Bool)

(declare-fun res!2936632 () Bool)

(declare-fun e!4339885 () Bool)

(assert (=> b!7238792 (=> (not res!2936632) (not e!4339885))))

(declare-fun lt!2577875 () List!70228)

(assert (=> b!7238792 (= res!2936632 (= (size!41611 lt!2577875) (+ (size!41611 (exprs!7980 lt!2577701)) (size!41611 (exprs!7980 ct2!328)))))))

(declare-fun d!2248671 () Bool)

(assert (=> d!2248671 e!4339885))

(declare-fun res!2936631 () Bool)

(assert (=> d!2248671 (=> (not res!2936631) (not e!4339885))))

(assert (=> d!2248671 (= res!2936631 (= (content!14465 lt!2577875) (set.union (content!14465 (exprs!7980 lt!2577701)) (content!14465 (exprs!7980 ct2!328)))))))

(declare-fun e!4339884 () List!70228)

(assert (=> d!2248671 (= lt!2577875 e!4339884)))

(declare-fun c!1343904 () Bool)

(assert (=> d!2248671 (= c!1343904 (is-Nil!70104 (exprs!7980 lt!2577701)))))

(assert (=> d!2248671 (= (++!16381 (exprs!7980 lt!2577701) (exprs!7980 ct2!328)) lt!2577875)))

(declare-fun b!7238790 () Bool)

(assert (=> b!7238790 (= e!4339884 (exprs!7980 ct2!328))))

(declare-fun b!7238791 () Bool)

(assert (=> b!7238791 (= e!4339884 (Cons!70104 (h!76552 (exprs!7980 lt!2577701)) (++!16381 (t!384279 (exprs!7980 lt!2577701)) (exprs!7980 ct2!328))))))

(declare-fun b!7238793 () Bool)

(assert (=> b!7238793 (= e!4339885 (or (not (= (exprs!7980 ct2!328) Nil!70104)) (= lt!2577875 (exprs!7980 lt!2577701))))))

(assert (= (and d!2248671 c!1343904) b!7238790))

(assert (= (and d!2248671 (not c!1343904)) b!7238791))

(assert (= (and d!2248671 res!2936631) b!7238792))

(assert (= (and b!7238792 res!2936632) b!7238793))

(declare-fun m!7911180 () Bool)

(assert (=> b!7238792 m!7911180))

(declare-fun m!7911182 () Bool)

(assert (=> b!7238792 m!7911182))

(assert (=> b!7238792 m!7911102))

(declare-fun m!7911184 () Bool)

(assert (=> d!2248671 m!7911184))

(declare-fun m!7911186 () Bool)

(assert (=> d!2248671 m!7911186))

(assert (=> d!2248671 m!7911108))

(declare-fun m!7911188 () Bool)

(assert (=> b!7238791 m!7911188))

(assert (=> b!7238617 d!2248671))

(declare-fun d!2248673 () Bool)

(declare-fun lt!2577878 () Bool)

(assert (=> d!2248673 (= lt!2577878 (exists!4224 (toList!11397 lt!2577722) lambda!441089))))

(declare-fun choose!55712 ((Set Context!14960) Int) Bool)

(assert (=> d!2248673 (= lt!2577878 (choose!55712 lt!2577722 lambda!441089))))

(assert (=> d!2248673 (= (exists!4223 lt!2577722 lambda!441089) lt!2577878)))

(declare-fun bs!1903740 () Bool)

(assert (= bs!1903740 d!2248673))

(assert (=> bs!1903740 m!7910802))

(assert (=> bs!1903740 m!7910802))

(declare-fun m!7911190 () Bool)

(assert (=> bs!1903740 m!7911190))

(declare-fun m!7911192 () Bool)

(assert (=> bs!1903740 m!7911192))

(assert (=> b!7238616 d!2248673))

(declare-fun bs!1903741 () Bool)

(declare-fun d!2248675 () Bool)

(assert (= bs!1903741 (and d!2248675 b!7238616)))

(declare-fun lambda!441145 () Int)

(assert (=> bs!1903741 (not (= lambda!441145 lambda!441089))))

(assert (=> d!2248675 true))

(declare-fun order!28879 () Int)

(declare-fun dynLambda!28614 (Int Int) Int)

(assert (=> d!2248675 (< (dynLambda!28614 order!28879 lambda!441089) (dynLambda!28614 order!28879 lambda!441145))))

(declare-fun forall!17380 (List!70230 Int) Bool)

(assert (=> d!2248675 (= (exists!4224 lt!2577725 lambda!441089) (not (forall!17380 lt!2577725 lambda!441145)))))

(declare-fun bs!1903742 () Bool)

(assert (= bs!1903742 d!2248675))

(declare-fun m!7911194 () Bool)

(assert (=> bs!1903742 m!7911194))

(assert (=> b!7238616 d!2248675))

(declare-fun bs!1903743 () Bool)

(declare-fun d!2248677 () Bool)

(assert (= bs!1903743 (and d!2248677 b!7238616)))

(declare-fun lambda!441148 () Int)

(assert (=> bs!1903743 (= lambda!441148 lambda!441089)))

(declare-fun bs!1903744 () Bool)

(assert (= bs!1903744 (and d!2248677 d!2248675)))

(assert (=> bs!1903744 (not (= lambda!441148 lambda!441145))))

(assert (=> d!2248677 true))

(assert (=> d!2248677 (exists!4224 lt!2577725 lambda!441148)))

(declare-fun lt!2577881 () Unit!163634)

(declare-fun choose!55713 (List!70230 List!70229) Unit!163634)

(assert (=> d!2248677 (= lt!2577881 (choose!55713 lt!2577725 (t!384280 s1!1971)))))

(declare-fun content!14466 (List!70230) (Set Context!14960))

(assert (=> d!2248677 (matchZipper!3450 (content!14466 lt!2577725) (t!384280 s1!1971))))

(assert (=> d!2248677 (= (lemmaZipperMatchesExistsMatchingContext!683 lt!2577725 (t!384280 s1!1971)) lt!2577881)))

(declare-fun bs!1903745 () Bool)

(assert (= bs!1903745 d!2248677))

(declare-fun m!7911196 () Bool)

(assert (=> bs!1903745 m!7911196))

(declare-fun m!7911198 () Bool)

(assert (=> bs!1903745 m!7911198))

(declare-fun m!7911200 () Bool)

(assert (=> bs!1903745 m!7911200))

(assert (=> bs!1903745 m!7911200))

(declare-fun m!7911202 () Bool)

(assert (=> bs!1903745 m!7911202))

(assert (=> b!7238616 d!2248677))

(declare-fun d!2248679 () Bool)

(declare-fun e!4339888 () Bool)

(assert (=> d!2248679 e!4339888))

(declare-fun res!2936635 () Bool)

(assert (=> d!2248679 (=> (not res!2936635) (not e!4339888))))

(declare-fun lt!2577884 () List!70230)

(declare-fun noDuplicate!2948 (List!70230) Bool)

(assert (=> d!2248679 (= res!2936635 (noDuplicate!2948 lt!2577884))))

(declare-fun choose!55714 ((Set Context!14960)) List!70230)

(assert (=> d!2248679 (= lt!2577884 (choose!55714 lt!2577722))))

(assert (=> d!2248679 (= (toList!11397 lt!2577722) lt!2577884)))

(declare-fun b!7238798 () Bool)

(assert (=> b!7238798 (= e!4339888 (= (content!14466 lt!2577884) lt!2577722))))

(assert (= (and d!2248679 res!2936635) b!7238798))

(declare-fun m!7911204 () Bool)

(assert (=> d!2248679 m!7911204))

(declare-fun m!7911206 () Bool)

(assert (=> d!2248679 m!7911206))

(declare-fun m!7911208 () Bool)

(assert (=> b!7238798 m!7911208))

(assert (=> b!7238616 d!2248679))

(assert (=> b!7238618 d!2248613))

(declare-fun d!2248681 () Bool)

(declare-fun c!1343907 () Bool)

(assert (=> d!2248681 (= c!1343907 (isEmpty!40402 lt!2577702))))

(declare-fun e!4339889 () Bool)

(assert (=> d!2248681 (= (matchZipper!3450 lt!2577703 lt!2577702) e!4339889)))

(declare-fun b!7238799 () Bool)

(assert (=> b!7238799 (= e!4339889 (nullableZipper!2839 lt!2577703))))

(declare-fun b!7238800 () Bool)

(assert (=> b!7238800 (= e!4339889 (matchZipper!3450 (derivationStepZipper!3332 lt!2577703 (head!14828 lt!2577702)) (tail!14191 lt!2577702)))))

(assert (= (and d!2248681 c!1343907) b!7238799))

(assert (= (and d!2248681 (not c!1343907)) b!7238800))

(assert (=> d!2248681 m!7911152))

(declare-fun m!7911210 () Bool)

(assert (=> b!7238799 m!7911210))

(assert (=> b!7238800 m!7911156))

(assert (=> b!7238800 m!7911156))

(declare-fun m!7911212 () Bool)

(assert (=> b!7238800 m!7911212))

(assert (=> b!7238800 m!7911160))

(assert (=> b!7238800 m!7911212))

(assert (=> b!7238800 m!7911160))

(declare-fun m!7911214 () Bool)

(assert (=> b!7238800 m!7911214))

(assert (=> b!7238618 d!2248681))

(declare-fun b!7238801 () Bool)

(declare-fun e!4339892 () Bool)

(assert (=> b!7238801 (= e!4339892 (nullable!7853 (h!76552 (exprs!7980 lt!2577730))))))

(declare-fun b!7238802 () Bool)

(declare-fun e!4339890 () (Set Context!14960))

(assert (=> b!7238802 (= e!4339890 (as set.empty (Set Context!14960)))))

(declare-fun b!7238803 () Bool)

(declare-fun e!4339891 () (Set Context!14960))

(assert (=> b!7238803 (= e!4339891 e!4339890)))

(declare-fun c!1343909 () Bool)

(assert (=> b!7238803 (= c!1343909 (is-Cons!70104 (exprs!7980 lt!2577730)))))

(declare-fun bm!659178 () Bool)

(declare-fun call!659183 () (Set Context!14960))

(assert (=> bm!659178 (= call!659183 (derivationStepZipperDown!2584 (h!76552 (exprs!7980 lt!2577730)) (Context!14961 (t!384279 (exprs!7980 lt!2577730))) (h!76553 s1!1971)))))

(declare-fun b!7238804 () Bool)

(assert (=> b!7238804 (= e!4339890 call!659183)))

(declare-fun d!2248683 () Bool)

(declare-fun c!1343908 () Bool)

(assert (=> d!2248683 (= c!1343908 e!4339892)))

(declare-fun res!2936636 () Bool)

(assert (=> d!2248683 (=> (not res!2936636) (not e!4339892))))

(assert (=> d!2248683 (= res!2936636 (is-Cons!70104 (exprs!7980 lt!2577730)))))

(assert (=> d!2248683 (= (derivationStepZipperUp!2414 lt!2577730 (h!76553 s1!1971)) e!4339891)))

(declare-fun b!7238805 () Bool)

(assert (=> b!7238805 (= e!4339891 (set.union call!659183 (derivationStepZipperUp!2414 (Context!14961 (t!384279 (exprs!7980 lt!2577730))) (h!76553 s1!1971))))))

(assert (= (and d!2248683 res!2936636) b!7238801))

(assert (= (and d!2248683 c!1343908) b!7238805))

(assert (= (and d!2248683 (not c!1343908)) b!7238803))

(assert (= (and b!7238803 c!1343909) b!7238804))

(assert (= (and b!7238803 (not c!1343909)) b!7238802))

(assert (= (or b!7238805 b!7238804) bm!659178))

(declare-fun m!7911216 () Bool)

(assert (=> b!7238801 m!7911216))

(declare-fun m!7911218 () Bool)

(assert (=> bm!659178 m!7911218))

(declare-fun m!7911220 () Bool)

(assert (=> b!7238805 m!7911220))

(assert (=> b!7238618 d!2248683))

(declare-fun d!2248685 () Bool)

(declare-fun e!4339895 () Bool)

(assert (=> d!2248685 (= (matchZipper!3450 (set.union lt!2577716 lt!2577698) (t!384280 s1!1971)) e!4339895)))

(declare-fun res!2936639 () Bool)

(assert (=> d!2248685 (=> res!2936639 e!4339895)))

(assert (=> d!2248685 (= res!2936639 (matchZipper!3450 lt!2577716 (t!384280 s1!1971)))))

(declare-fun lt!2577887 () Unit!163634)

(declare-fun choose!55715 ((Set Context!14960) (Set Context!14960) List!70229) Unit!163634)

(assert (=> d!2248685 (= lt!2577887 (choose!55715 lt!2577716 lt!2577698 (t!384280 s1!1971)))))

(assert (=> d!2248685 (= (lemmaZipperConcatMatchesSameAsBothZippers!1687 lt!2577716 lt!2577698 (t!384280 s1!1971)) lt!2577887)))

(declare-fun b!7238808 () Bool)

(assert (=> b!7238808 (= e!4339895 (matchZipper!3450 lt!2577698 (t!384280 s1!1971)))))

(assert (= (and d!2248685 (not res!2936639)) b!7238808))

(assert (=> d!2248685 m!7910860))

(assert (=> d!2248685 m!7910868))

(declare-fun m!7911222 () Bool)

(assert (=> d!2248685 m!7911222))

(assert (=> b!7238808 m!7910852))

(assert (=> b!7238618 d!2248685))

(declare-fun d!2248687 () Bool)

(declare-fun e!4339896 () Bool)

(assert (=> d!2248687 (= (matchZipper!3450 (set.union lt!2577703 lt!2577699) lt!2577702) e!4339896)))

(declare-fun res!2936640 () Bool)

(assert (=> d!2248687 (=> res!2936640 e!4339896)))

(assert (=> d!2248687 (= res!2936640 (matchZipper!3450 lt!2577703 lt!2577702))))

(declare-fun lt!2577888 () Unit!163634)

(assert (=> d!2248687 (= lt!2577888 (choose!55715 lt!2577703 lt!2577699 lt!2577702))))

(assert (=> d!2248687 (= (lemmaZipperConcatMatchesSameAsBothZippers!1687 lt!2577703 lt!2577699 lt!2577702) lt!2577888)))

(declare-fun b!7238809 () Bool)

(assert (=> b!7238809 (= e!4339896 (matchZipper!3450 lt!2577699 lt!2577702))))

(assert (= (and d!2248687 (not res!2936640)) b!7238809))

(assert (=> d!2248687 m!7910862))

(assert (=> d!2248687 m!7910856))

(declare-fun m!7911224 () Bool)

(assert (=> d!2248687 m!7911224))

(assert (=> b!7238809 m!7910898))

(assert (=> b!7238618 d!2248687))

(declare-fun b!7238810 () Bool)

(declare-fun e!4339899 () Bool)

(assert (=> b!7238810 (= e!4339899 (nullable!7853 (h!76552 (exprs!7980 lt!2577705))))))

(declare-fun b!7238811 () Bool)

(declare-fun e!4339897 () (Set Context!14960))

(assert (=> b!7238811 (= e!4339897 (as set.empty (Set Context!14960)))))

(declare-fun b!7238812 () Bool)

(declare-fun e!4339898 () (Set Context!14960))

(assert (=> b!7238812 (= e!4339898 e!4339897)))

(declare-fun c!1343911 () Bool)

(assert (=> b!7238812 (= c!1343911 (is-Cons!70104 (exprs!7980 lt!2577705)))))

(declare-fun bm!659179 () Bool)

(declare-fun call!659184 () (Set Context!14960))

(assert (=> bm!659179 (= call!659184 (derivationStepZipperDown!2584 (h!76552 (exprs!7980 lt!2577705)) (Context!14961 (t!384279 (exprs!7980 lt!2577705))) (h!76553 s1!1971)))))

(declare-fun b!7238813 () Bool)

(assert (=> b!7238813 (= e!4339897 call!659184)))

(declare-fun d!2248689 () Bool)

(declare-fun c!1343910 () Bool)

(assert (=> d!2248689 (= c!1343910 e!4339899)))

(declare-fun res!2936641 () Bool)

(assert (=> d!2248689 (=> (not res!2936641) (not e!4339899))))

(assert (=> d!2248689 (= res!2936641 (is-Cons!70104 (exprs!7980 lt!2577705)))))

(assert (=> d!2248689 (= (derivationStepZipperUp!2414 lt!2577705 (h!76553 s1!1971)) e!4339898)))

(declare-fun b!7238814 () Bool)

(assert (=> b!7238814 (= e!4339898 (set.union call!659184 (derivationStepZipperUp!2414 (Context!14961 (t!384279 (exprs!7980 lt!2577705))) (h!76553 s1!1971))))))

(assert (= (and d!2248689 res!2936641) b!7238810))

(assert (= (and d!2248689 c!1343910) b!7238814))

(assert (= (and d!2248689 (not c!1343910)) b!7238812))

(assert (= (and b!7238812 c!1343911) b!7238813))

(assert (= (and b!7238812 (not c!1343911)) b!7238811))

(assert (= (or b!7238814 b!7238813) bm!659179))

(declare-fun m!7911226 () Bool)

(assert (=> b!7238810 m!7911226))

(declare-fun m!7911228 () Bool)

(assert (=> bm!659179 m!7911228))

(declare-fun m!7911230 () Bool)

(assert (=> b!7238814 m!7911230))

(assert (=> b!7238618 d!2248689))

(declare-fun d!2248691 () Bool)

(declare-fun c!1343912 () Bool)

(assert (=> d!2248691 (= c!1343912 (isEmpty!40402 (t!384280 s1!1971)))))

(declare-fun e!4339900 () Bool)

(assert (=> d!2248691 (= (matchZipper!3450 (set.union lt!2577716 lt!2577698) (t!384280 s1!1971)) e!4339900)))

(declare-fun b!7238815 () Bool)

(assert (=> b!7238815 (= e!4339900 (nullableZipper!2839 (set.union lt!2577716 lt!2577698)))))

(declare-fun b!7238816 () Bool)

(assert (=> b!7238816 (= e!4339900 (matchZipper!3450 (derivationStepZipper!3332 (set.union lt!2577716 lt!2577698) (head!14828 (t!384280 s1!1971))) (tail!14191 (t!384280 s1!1971))))))

(assert (= (and d!2248691 c!1343912) b!7238815))

(assert (= (and d!2248691 (not c!1343912)) b!7238816))

(assert (=> d!2248691 m!7911112))

(declare-fun m!7911232 () Bool)

(assert (=> b!7238815 m!7911232))

(assert (=> b!7238816 m!7911116))

(assert (=> b!7238816 m!7911116))

(declare-fun m!7911234 () Bool)

(assert (=> b!7238816 m!7911234))

(assert (=> b!7238816 m!7911120))

(assert (=> b!7238816 m!7911234))

(assert (=> b!7238816 m!7911120))

(declare-fun m!7911236 () Bool)

(assert (=> b!7238816 m!7911236))

(assert (=> b!7238618 d!2248691))

(declare-fun d!2248693 () Bool)

(declare-fun c!1343913 () Bool)

(assert (=> d!2248693 (= c!1343913 (isEmpty!40402 lt!2577702))))

(declare-fun e!4339901 () Bool)

(assert (=> d!2248693 (= (matchZipper!3450 (set.union lt!2577703 lt!2577699) lt!2577702) e!4339901)))

(declare-fun b!7238817 () Bool)

(assert (=> b!7238817 (= e!4339901 (nullableZipper!2839 (set.union lt!2577703 lt!2577699)))))

(declare-fun b!7238818 () Bool)

(assert (=> b!7238818 (= e!4339901 (matchZipper!3450 (derivationStepZipper!3332 (set.union lt!2577703 lt!2577699) (head!14828 lt!2577702)) (tail!14191 lt!2577702)))))

(assert (= (and d!2248693 c!1343913) b!7238817))

(assert (= (and d!2248693 (not c!1343913)) b!7238818))

(assert (=> d!2248693 m!7911152))

(declare-fun m!7911238 () Bool)

(assert (=> b!7238817 m!7911238))

(assert (=> b!7238818 m!7911156))

(assert (=> b!7238818 m!7911156))

(declare-fun m!7911240 () Bool)

(assert (=> b!7238818 m!7911240))

(assert (=> b!7238818 m!7911160))

(assert (=> b!7238818 m!7911240))

(assert (=> b!7238818 m!7911160))

(declare-fun m!7911242 () Bool)

(assert (=> b!7238818 m!7911242))

(assert (=> b!7238618 d!2248693))

(declare-fun d!2248695 () Bool)

(declare-fun c!1343914 () Bool)

(assert (=> d!2248695 (= c!1343914 (isEmpty!40402 (t!384280 s1!1971)))))

(declare-fun e!4339902 () Bool)

(assert (=> d!2248695 (= (matchZipper!3450 lt!2577716 (t!384280 s1!1971)) e!4339902)))

(declare-fun b!7238819 () Bool)

(assert (=> b!7238819 (= e!4339902 (nullableZipper!2839 lt!2577716))))

(declare-fun b!7238820 () Bool)

(assert (=> b!7238820 (= e!4339902 (matchZipper!3450 (derivationStepZipper!3332 lt!2577716 (head!14828 (t!384280 s1!1971))) (tail!14191 (t!384280 s1!1971))))))

(assert (= (and d!2248695 c!1343914) b!7238819))

(assert (= (and d!2248695 (not c!1343914)) b!7238820))

(assert (=> d!2248695 m!7911112))

(declare-fun m!7911244 () Bool)

(assert (=> b!7238819 m!7911244))

(assert (=> b!7238820 m!7911116))

(assert (=> b!7238820 m!7911116))

(declare-fun m!7911246 () Bool)

(assert (=> b!7238820 m!7911246))

(assert (=> b!7238820 m!7911120))

(assert (=> b!7238820 m!7911246))

(assert (=> b!7238820 m!7911120))

(declare-fun m!7911248 () Bool)

(assert (=> b!7238820 m!7911248))

(assert (=> b!7238618 d!2248695))

(declare-fun d!2248697 () Bool)

(declare-fun c!1343915 () Bool)

(assert (=> d!2248697 (= c!1343915 (isEmpty!40402 (t!384280 s1!1971)))))

(declare-fun e!4339903 () Bool)

(assert (=> d!2248697 (= (matchZipper!3450 lt!2577722 (t!384280 s1!1971)) e!4339903)))

(declare-fun b!7238821 () Bool)

(assert (=> b!7238821 (= e!4339903 (nullableZipper!2839 lt!2577722))))

(declare-fun b!7238822 () Bool)

(assert (=> b!7238822 (= e!4339903 (matchZipper!3450 (derivationStepZipper!3332 lt!2577722 (head!14828 (t!384280 s1!1971))) (tail!14191 (t!384280 s1!1971))))))

(assert (= (and d!2248697 c!1343915) b!7238821))

(assert (= (and d!2248697 (not c!1343915)) b!7238822))

(assert (=> d!2248697 m!7911112))

(declare-fun m!7911250 () Bool)

(assert (=> b!7238821 m!7911250))

(assert (=> b!7238822 m!7911116))

(assert (=> b!7238822 m!7911116))

(declare-fun m!7911252 () Bool)

(assert (=> b!7238822 m!7911252))

(assert (=> b!7238822 m!7911120))

(assert (=> b!7238822 m!7911252))

(assert (=> b!7238822 m!7911120))

(declare-fun m!7911254 () Bool)

(assert (=> b!7238822 m!7911254))

(assert (=> b!7238614 d!2248697))

(declare-fun bs!1903746 () Bool)

(declare-fun d!2248699 () Bool)

(assert (= bs!1903746 (and d!2248699 b!7238611)))

(declare-fun lambda!441149 () Int)

(assert (=> bs!1903746 (= lambda!441149 lambda!441090)))

(declare-fun bs!1903747 () Bool)

(assert (= bs!1903747 (and d!2248699 d!2248635)))

(assert (=> bs!1903747 (= lambda!441149 lambda!441135)))

(assert (=> d!2248699 true))

(assert (=> d!2248699 (= (derivationStepZipper!3332 lt!2577732 (h!76553 s1!1971)) (flatMap!2744 lt!2577732 lambda!441149))))

(declare-fun bs!1903748 () Bool)

(assert (= bs!1903748 d!2248699))

(declare-fun m!7911256 () Bool)

(assert (=> bs!1903748 m!7911256))

(assert (=> b!7238614 d!2248699))

(declare-fun d!2248701 () Bool)

(declare-fun c!1343916 () Bool)

(assert (=> d!2248701 (= c!1343916 (isEmpty!40402 lt!2577702))))

(declare-fun e!4339904 () Bool)

(assert (=> d!2248701 (= (matchZipper!3450 lt!2577699 lt!2577702) e!4339904)))

(declare-fun b!7238823 () Bool)

(assert (=> b!7238823 (= e!4339904 (nullableZipper!2839 lt!2577699))))

(declare-fun b!7238824 () Bool)

(assert (=> b!7238824 (= e!4339904 (matchZipper!3450 (derivationStepZipper!3332 lt!2577699 (head!14828 lt!2577702)) (tail!14191 lt!2577702)))))

(assert (= (and d!2248701 c!1343916) b!7238823))

(assert (= (and d!2248701 (not c!1343916)) b!7238824))

(assert (=> d!2248701 m!7911152))

(declare-fun m!7911258 () Bool)

(assert (=> b!7238823 m!7911258))

(assert (=> b!7238824 m!7911156))

(assert (=> b!7238824 m!7911156))

(declare-fun m!7911260 () Bool)

(assert (=> b!7238824 m!7911260))

(assert (=> b!7238824 m!7911160))

(assert (=> b!7238824 m!7911260))

(assert (=> b!7238824 m!7911160))

(declare-fun m!7911262 () Bool)

(assert (=> b!7238824 m!7911262))

(assert (=> b!7238615 d!2248701))

(declare-fun b!7238829 () Bool)

(declare-fun e!4339907 () Bool)

(declare-fun tp!2034963 () Bool)

(assert (=> b!7238829 (= e!4339907 (and tp_is_empty!46545 tp!2034963))))

(assert (=> b!7238612 (= tp!2034946 e!4339907)))

(assert (= (and b!7238612 (is-Cons!70105 (t!384280 s2!1849))) b!7238829))

(declare-fun b!7238834 () Bool)

(declare-fun e!4339910 () Bool)

(declare-fun tp!2034968 () Bool)

(declare-fun tp!2034969 () Bool)

(assert (=> b!7238834 (= e!4339910 (and tp!2034968 tp!2034969))))

(assert (=> b!7238607 (= tp!2034945 e!4339910)))

(assert (= (and b!7238607 (is-Cons!70104 (exprs!7980 ct1!232))) b!7238834))

(declare-fun b!7238835 () Bool)

(declare-fun e!4339911 () Bool)

(declare-fun tp!2034970 () Bool)

(declare-fun tp!2034971 () Bool)

(assert (=> b!7238835 (= e!4339911 (and tp!2034970 tp!2034971))))

(assert (=> b!7238608 (= tp!2034947 e!4339911)))

(assert (= (and b!7238608 (is-Cons!70104 (exprs!7980 ct2!328))) b!7238835))

(declare-fun b!7238836 () Bool)

(declare-fun e!4339912 () Bool)

(declare-fun tp!2034972 () Bool)

(assert (=> b!7238836 (= e!4339912 (and tp_is_empty!46545 tp!2034972))))

(assert (=> b!7238610 (= tp!2034948 e!4339912)))

(assert (= (and b!7238610 (is-Cons!70105 (t!384280 s1!1971))) b!7238836))

(declare-fun b_lambda!277627 () Bool)

(assert (= b_lambda!277625 (or b!7238616 b_lambda!277627)))

(declare-fun bs!1903749 () Bool)

(declare-fun d!2248703 () Bool)

(assert (= bs!1903749 (and d!2248703 b!7238616)))

(assert (=> bs!1903749 (= (dynLambda!28613 lambda!441089 lt!2577873) (matchZipper!3450 (set.insert lt!2577873 (as set.empty (Set Context!14960))) (t!384280 s1!1971)))))

(declare-fun m!7911264 () Bool)

(assert (=> bs!1903749 m!7911264))

(assert (=> bs!1903749 m!7911264))

(declare-fun m!7911266 () Bool)

(assert (=> bs!1903749 m!7911266))

(assert (=> d!2248667 d!2248703))

(declare-fun b_lambda!277629 () Bool)

(assert (= b_lambda!277623 (or b!7238611 b_lambda!277629)))

(declare-fun bs!1903750 () Bool)

(declare-fun d!2248705 () Bool)

(assert (= bs!1903750 (and d!2248705 b!7238611)))

(assert (=> bs!1903750 (= (dynLambda!28611 lambda!441090 lt!2577713) (derivationStepZipperUp!2414 lt!2577713 (h!76553 s1!1971)))))

(assert (=> bs!1903750 m!7910840))

(assert (=> d!2248629 d!2248705))

(declare-fun b_lambda!277631 () Bool)

(assert (= b_lambda!277619 (or b!7238611 b_lambda!277631)))

(declare-fun bs!1903751 () Bool)

(declare-fun d!2248707 () Bool)

(assert (= bs!1903751 (and d!2248707 b!7238611)))

(assert (=> bs!1903751 (= (dynLambda!28611 lambda!441090 ct1!232) (derivationStepZipperUp!2414 ct1!232 (h!76553 s1!1971)))))

(assert (=> bs!1903751 m!7910834))

(assert (=> d!2248611 d!2248707))

(declare-fun b_lambda!277633 () Bool)

(assert (= b_lambda!277621 (or b!7238619 b_lambda!277633)))

(declare-fun bs!1903752 () Bool)

(declare-fun d!2248709 () Bool)

(assert (= bs!1903752 (and d!2248709 b!7238619)))

(declare-fun validRegex!9527 (Regex!18540) Bool)

(assert (=> bs!1903752 (= (dynLambda!28612 lambda!441088 (h!76552 (exprs!7980 lt!2577701))) (validRegex!9527 (h!76552 (exprs!7980 lt!2577701))))))

(declare-fun m!7911268 () Bool)

(assert (=> bs!1903752 m!7911268))

(assert (=> b!7238739 d!2248709))

(push 1)

(assert (not b!7238747))

(assert (not b!7238705))

(assert (not b_lambda!277631))

(assert (not d!2248699))

(assert (not d!2248619))

(assert (not b!7238774))

(assert (not d!2248701))

(assert tp_is_empty!46545)

(assert (not d!2248623))

(assert (not b!7238819))

(assert (not b!7238788))

(assert (not d!2248697))

(assert (not d!2248621))

(assert (not bs!1903750))

(assert (not bm!659175))

(assert (not d!2248641))

(assert (not d!2248687))

(assert (not b!7238816))

(assert (not b!7238743))

(assert (not b!7238822))

(assert (not d!2248659))

(assert (not b!7238836))

(assert (not b!7238781))

(assert (not b_lambda!277629))

(assert (not b!7238800))

(assert (not bm!659171))

(assert (not d!2248679))

(assert (not d!2248629))

(assert (not b!7238798))

(assert (not bs!1903749))

(assert (not b!7238817))

(assert (not b!7238792))

(assert (not b!7238762))

(assert (not bm!659165))

(assert (not b!7238820))

(assert (not b!7238835))

(assert (not d!2248673))

(assert (not d!2248669))

(assert (not d!2248653))

(assert (not b!7238782))

(assert (not bm!659172))

(assert (not b!7238809))

(assert (not d!2248695))

(assert (not b_lambda!277633))

(assert (not bs!1903751))

(assert (not b!7238829))

(assert (not bm!659178))

(assert (not d!2248675))

(assert (not b_lambda!277627))

(assert (not b!7238775))

(assert (not b!7238799))

(assert (not b!7238815))

(assert (not d!2248635))

(assert (not d!2248633))

(assert (not d!2248667))

(assert (not d!2248685))

(assert (not b!7238823))

(assert (not b!7238814))

(assert (not b!7238801))

(assert (not bs!1903752))

(assert (not b!7238780))

(assert (not bm!659170))

(assert (not d!2248657))

(assert (not b!7238732))

(assert (not bm!659177))

(assert (not b!7238824))

(assert (not d!2248677))

(assert (not d!2248655))

(assert (not b!7238834))

(assert (not b!7238752))

(assert (not b!7238740))

(assert (not d!2248681))

(assert (not b!7238733))

(assert (not d!2248613))

(assert (not b!7238810))

(assert (not b!7238821))

(assert (not b!7238778))

(assert (not b!7238818))

(assert (not d!2248693))

(assert (not b!7238777))

(assert (not b!7238791))

(assert (not bm!659179))

(assert (not b!7238779))

(assert (not d!2248665))

(assert (not d!2248637))

(assert (not d!2248691))

(assert (not d!2248671))

(assert (not bm!659162))

(assert (not b!7238722))

(assert (not d!2248651))

(assert (not d!2248611))

(assert (not b!7238753))

(assert (not b!7238808))

(assert (not b!7238718))

(assert (not d!2248661))

(assert (not d!2248643))

(assert (not bm!659167))

(assert (not b!7238805))

(assert (not b!7238787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

