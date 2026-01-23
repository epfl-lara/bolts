; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709860 () Bool)

(assert start!709860)

(declare-fun b!7272595 () Bool)

(assert (=> b!7272595 true))

(declare-fun b!7272584 () Bool)

(declare-fun e!4361105 () Bool)

(declare-fun tp!2041315 () Bool)

(assert (=> b!7272584 (= e!4361105 tp!2041315)))

(declare-fun b!7272585 () Bool)

(declare-fun e!4361106 () Bool)

(declare-fun e!4361098 () Bool)

(assert (=> b!7272585 (= e!4361106 e!4361098)))

(declare-fun res!2948068 () Bool)

(assert (=> b!7272585 (=> res!2948068 e!4361098)))

(declare-datatypes ((C!37886 0))(
  ( (C!37887 (val!28891 Int)) )
))
(declare-datatypes ((Regex!18806 0))(
  ( (ElementMatch!18806 (c!1354018 C!37886)) (Concat!27651 (regOne!38124 Regex!18806) (regTwo!38124 Regex!18806)) (EmptyExpr!18806) (Star!18806 (reg!19135 Regex!18806)) (EmptyLang!18806) (Union!18806 (regOne!38125 Regex!18806) (regTwo!38125 Regex!18806)) )
))
(declare-datatypes ((List!70927 0))(
  ( (Nil!70803) (Cons!70803 (h!77251 Regex!18806) (t!384999 List!70927)) )
))
(declare-datatypes ((Context!15492 0))(
  ( (Context!15493 (exprs!8246 List!70927)) )
))
(declare-fun ct1!250 () Context!15492)

(declare-fun nullable!8006 (Regex!18806) Bool)

(assert (=> b!7272585 (= res!2948068 (not (nullable!8006 (h!77251 (exprs!8246 ct1!250)))))))

(declare-fun lt!2595800 () (Set Context!15492))

(declare-datatypes ((List!70928 0))(
  ( (Nil!70804) (Cons!70804 (h!77252 C!37886) (t!385000 List!70928)) )
))
(declare-fun s!7854 () List!70928)

(declare-fun derivationStepZipperUp!2576 (Context!15492 C!37886) (Set Context!15492))

(assert (=> b!7272585 (= lt!2595800 (derivationStepZipperUp!2576 ct1!250 (h!77252 s!7854)))))

(declare-fun lt!2595801 () Context!15492)

(declare-fun lt!2595788 () List!70927)

(assert (=> b!7272585 (= lt!2595801 (Context!15493 lt!2595788))))

(declare-fun tail!14514 (List!70927) List!70927)

(assert (=> b!7272585 (= lt!2595788 (tail!14514 (exprs!8246 ct1!250)))))

(declare-fun res!2948067 () Bool)

(declare-fun e!4361102 () Bool)

(assert (=> start!709860 (=> (not res!2948067) (not e!4361102))))

(declare-fun ct2!346 () Context!15492)

(declare-fun matchZipper!3710 ((Set Context!15492) List!70928) Bool)

(assert (=> start!709860 (= res!2948067 (matchZipper!3710 (set.insert ct2!346 (as set.empty (Set Context!15492))) s!7854))))

(assert (=> start!709860 e!4361102))

(declare-fun e!4361107 () Bool)

(declare-fun inv!90026 (Context!15492) Bool)

(assert (=> start!709860 (and (inv!90026 ct2!346) e!4361107)))

(declare-fun e!4361099 () Bool)

(assert (=> start!709860 e!4361099))

(assert (=> start!709860 (and (inv!90026 ct1!250) e!4361105)))

(declare-fun b!7272586 () Bool)

(declare-fun tp_is_empty!47077 () Bool)

(declare-fun tp!2041314 () Bool)

(assert (=> b!7272586 (= e!4361099 (and tp_is_empty!47077 tp!2041314))))

(declare-fun b!7272587 () Bool)

(declare-fun res!2948070 () Bool)

(assert (=> b!7272587 (=> res!2948070 e!4361098)))

(declare-fun derivationStepZipperDown!2740 (Regex!18806 Context!15492 C!37886) (Set Context!15492))

(assert (=> b!7272587 (= res!2948070 (not (= lt!2595800 (set.union (derivationStepZipperDown!2740 (h!77251 (exprs!8246 ct1!250)) lt!2595801 (h!77252 s!7854)) (derivationStepZipperUp!2576 lt!2595801 (h!77252 s!7854))))))))

(declare-fun b!7272588 () Bool)

(declare-fun e!4361100 () Bool)

(declare-fun e!4361104 () Bool)

(assert (=> b!7272588 (= e!4361100 e!4361104)))

(declare-fun res!2948071 () Bool)

(assert (=> b!7272588 (=> res!2948071 e!4361104)))

(declare-fun lt!2595791 () (Set Context!15492))

(assert (=> b!7272588 (= res!2948071 (not (matchZipper!3710 lt!2595791 s!7854)))))

(declare-fun lambda!449040 () Int)

(declare-datatypes ((Unit!164230 0))(
  ( (Unit!164231) )
))
(declare-fun lt!2595798 () Unit!164230)

(declare-fun lemmaConcatPreservesForall!1563 (List!70927 List!70927 Int) Unit!164230)

(assert (=> b!7272588 (= lt!2595798 (lemmaConcatPreservesForall!1563 (exprs!8246 ct1!250) (exprs!8246 ct2!346) lambda!449040))))

(declare-fun lt!2595785 () (Set Context!15492))

(assert (=> b!7272588 (matchZipper!3710 lt!2595785 (t!385000 s!7854))))

(declare-fun lt!2595778 () Bool)

(declare-fun lt!2595803 () (Set Context!15492))

(assert (=> b!7272588 (= lt!2595778 (matchZipper!3710 lt!2595803 (t!385000 s!7854)))))

(declare-fun lt!2595786 () (Set Context!15492))

(declare-fun lt!2595806 () Unit!164230)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1779 ((Set Context!15492) (Set Context!15492) List!70928) Unit!164230)

(assert (=> b!7272588 (= lt!2595806 (lemmaZipperConcatMatchesSameAsBothZippers!1779 lt!2595803 lt!2595786 (t!385000 s!7854)))))

(declare-fun lt!2595793 () Unit!164230)

(assert (=> b!7272588 (= lt!2595793 (lemmaConcatPreservesForall!1563 lt!2595788 (exprs!8246 ct2!346) lambda!449040))))

(declare-fun lt!2595782 () Unit!164230)

(assert (=> b!7272588 (= lt!2595782 (lemmaConcatPreservesForall!1563 lt!2595788 (exprs!8246 ct2!346) lambda!449040))))

(declare-fun b!7272589 () Bool)

(declare-fun res!2948073 () Bool)

(assert (=> b!7272589 (=> res!2948073 e!4361106)))

(assert (=> b!7272589 (= res!2948073 (not (is-Cons!70803 (exprs!8246 ct1!250))))))

(declare-fun b!7272590 () Bool)

(declare-fun e!4361101 () Bool)

(assert (=> b!7272590 (= e!4361101 e!4361100)))

(declare-fun res!2948074 () Bool)

(assert (=> b!7272590 (=> res!2948074 e!4361100)))

(assert (=> b!7272590 (= res!2948074 (not (matchZipper!3710 lt!2595786 (t!385000 s!7854))))))

(declare-fun lt!2595792 () Unit!164230)

(assert (=> b!7272590 (= lt!2595792 (lemmaConcatPreservesForall!1563 lt!2595788 (exprs!8246 ct2!346) lambda!449040))))

(declare-fun lambda!449041 () Int)

(declare-fun lt!2595783 () Context!15492)

(declare-fun lt!2595776 () (Set Context!15492))

(declare-fun flatMap!2919 ((Set Context!15492) Int) (Set Context!15492))

(assert (=> b!7272590 (= (flatMap!2919 lt!2595776 lambda!449041) (derivationStepZipperUp!2576 lt!2595783 (h!77252 s!7854)))))

(declare-fun lt!2595789 () Unit!164230)

(declare-fun lemmaFlatMapOnSingletonSet!2319 ((Set Context!15492) Context!15492 Int) Unit!164230)

(assert (=> b!7272590 (= lt!2595789 (lemmaFlatMapOnSingletonSet!2319 lt!2595776 lt!2595783 lambda!449041))))

(declare-fun lt!2595797 () Unit!164230)

(assert (=> b!7272590 (= lt!2595797 (lemmaConcatPreservesForall!1563 lt!2595788 (exprs!8246 ct2!346) lambda!449040))))

(declare-fun lt!2595777 () Unit!164230)

(assert (=> b!7272590 (= lt!2595777 (lemmaConcatPreservesForall!1563 lt!2595788 (exprs!8246 ct2!346) lambda!449040))))

(declare-fun lt!2595784 () Unit!164230)

(assert (=> b!7272590 (= lt!2595784 (lemmaConcatPreservesForall!1563 lt!2595788 (exprs!8246 ct2!346) lambda!449040))))

(assert (=> b!7272590 (matchZipper!3710 lt!2595776 s!7854)))

(assert (=> b!7272590 (= lt!2595776 (set.insert lt!2595783 (as set.empty (Set Context!15492))))))

(declare-fun lt!2595807 () Unit!164230)

(assert (=> b!7272590 (= lt!2595807 (lemmaConcatPreservesForall!1563 lt!2595788 (exprs!8246 ct2!346) lambda!449040))))

(declare-fun lt!2595779 () Unit!164230)

(declare-fun lemmaPrependingNullableCtxStillMatches!43 (Context!15492 Context!15492 List!70928) Unit!164230)

(assert (=> b!7272590 (= lt!2595779 (lemmaPrependingNullableCtxStillMatches!43 lt!2595801 ct2!346 s!7854))))

(declare-fun b!7272591 () Bool)

(declare-fun e!4361103 () Bool)

(assert (=> b!7272591 (= e!4361104 e!4361103)))

(declare-fun res!2948077 () Bool)

(assert (=> b!7272591 (=> res!2948077 e!4361103)))

(declare-fun forall!17635 (List!70927 Int) Bool)

(assert (=> b!7272591 (= res!2948077 (not (forall!17635 (exprs!8246 ct1!250) lambda!449040)))))

(declare-fun b!7272592 () Bool)

(assert (=> b!7272592 (= e!4361098 e!4361101)))

(declare-fun res!2948066 () Bool)

(assert (=> b!7272592 (=> res!2948066 e!4361101)))

(declare-fun lt!2595802 () (Set Context!15492))

(assert (=> b!7272592 (= res!2948066 (not (= lt!2595802 lt!2595785)))))

(assert (=> b!7272592 (= lt!2595785 (set.union lt!2595803 lt!2595786))))

(assert (=> b!7272592 (= lt!2595786 (derivationStepZipperUp!2576 lt!2595783 (h!77252 s!7854)))))

(assert (=> b!7272592 (= lt!2595803 (derivationStepZipperDown!2740 (h!77251 (exprs!8246 ct1!250)) lt!2595783 (h!77252 s!7854)))))

(declare-fun ++!16706 (List!70927 List!70927) List!70927)

(assert (=> b!7272592 (= lt!2595783 (Context!15493 (++!16706 lt!2595788 (exprs!8246 ct2!346))))))

(declare-fun lt!2595787 () Unit!164230)

(assert (=> b!7272592 (= lt!2595787 (lemmaConcatPreservesForall!1563 lt!2595788 (exprs!8246 ct2!346) lambda!449040))))

(declare-fun lt!2595790 () Unit!164230)

(assert (=> b!7272592 (= lt!2595790 (lemmaConcatPreservesForall!1563 lt!2595788 (exprs!8246 ct2!346) lambda!449040))))

(declare-fun b!7272593 () Bool)

(declare-fun tp!2041313 () Bool)

(assert (=> b!7272593 (= e!4361107 tp!2041313)))

(declare-fun b!7272594 () Bool)

(declare-fun res!2948076 () Bool)

(assert (=> b!7272594 (=> res!2948076 e!4361106)))

(declare-fun isEmpty!40727 (List!70927) Bool)

(assert (=> b!7272594 (= res!2948076 (isEmpty!40727 (exprs!8246 ct1!250)))))

(assert (=> b!7272595 (= e!4361102 (not e!4361106))))

(declare-fun res!2948069 () Bool)

(assert (=> b!7272595 (=> res!2948069 e!4361106)))

(declare-fun derivationStepZipper!3546 ((Set Context!15492) C!37886) (Set Context!15492))

(assert (=> b!7272595 (= res!2948069 (not (= lt!2595802 (derivationStepZipper!3546 lt!2595791 (h!77252 s!7854)))))))

(declare-fun lt!2595781 () Unit!164230)

(assert (=> b!7272595 (= lt!2595781 (lemmaConcatPreservesForall!1563 (exprs!8246 ct1!250) (exprs!8246 ct2!346) lambda!449040))))

(declare-fun lt!2595780 () Context!15492)

(assert (=> b!7272595 (= (flatMap!2919 lt!2595791 lambda!449041) (derivationStepZipperUp!2576 lt!2595780 (h!77252 s!7854)))))

(declare-fun lt!2595805 () Unit!164230)

(assert (=> b!7272595 (= lt!2595805 (lemmaFlatMapOnSingletonSet!2319 lt!2595791 lt!2595780 lambda!449041))))

(assert (=> b!7272595 (= lt!2595791 (set.insert lt!2595780 (as set.empty (Set Context!15492))))))

(declare-fun lt!2595795 () Unit!164230)

(assert (=> b!7272595 (= lt!2595795 (lemmaConcatPreservesForall!1563 (exprs!8246 ct1!250) (exprs!8246 ct2!346) lambda!449040))))

(declare-fun lt!2595804 () Unit!164230)

(assert (=> b!7272595 (= lt!2595804 (lemmaConcatPreservesForall!1563 (exprs!8246 ct1!250) (exprs!8246 ct2!346) lambda!449040))))

(declare-fun lt!2595799 () (Set Context!15492))

(assert (=> b!7272595 (= (flatMap!2919 lt!2595799 lambda!449041) (derivationStepZipperUp!2576 ct1!250 (h!77252 s!7854)))))

(declare-fun lt!2595796 () Unit!164230)

(assert (=> b!7272595 (= lt!2595796 (lemmaFlatMapOnSingletonSet!2319 lt!2595799 ct1!250 lambda!449041))))

(assert (=> b!7272595 (= lt!2595799 (set.insert ct1!250 (as set.empty (Set Context!15492))))))

(assert (=> b!7272595 (= lt!2595802 (derivationStepZipperUp!2576 lt!2595780 (h!77252 s!7854)))))

(assert (=> b!7272595 (= lt!2595780 (Context!15493 (++!16706 (exprs!8246 ct1!250) (exprs!8246 ct2!346))))))

(declare-fun lt!2595794 () Unit!164230)

(assert (=> b!7272595 (= lt!2595794 (lemmaConcatPreservesForall!1563 (exprs!8246 ct1!250) (exprs!8246 ct2!346) lambda!449040))))

(declare-fun b!7272596 () Bool)

(declare-fun res!2948072 () Bool)

(assert (=> b!7272596 (=> (not res!2948072) (not e!4361102))))

(assert (=> b!7272596 (= res!2948072 (is-Cons!70804 s!7854))))

(declare-fun b!7272597 () Bool)

(declare-fun res!2948075 () Bool)

(assert (=> b!7272597 (=> (not res!2948075) (not e!4361102))))

(declare-fun nullableContext!296 (Context!15492) Bool)

(assert (=> b!7272597 (= res!2948075 (nullableContext!296 ct1!250))))

(declare-fun b!7272598 () Bool)

(assert (=> b!7272598 (= e!4361103 (forall!17635 (exprs!8246 ct2!346) lambda!449040))))

(assert (= (and start!709860 res!2948067) b!7272597))

(assert (= (and b!7272597 res!2948075) b!7272596))

(assert (= (and b!7272596 res!2948072) b!7272595))

(assert (= (and b!7272595 (not res!2948069)) b!7272589))

(assert (= (and b!7272589 (not res!2948073)) b!7272594))

(assert (= (and b!7272594 (not res!2948076)) b!7272585))

(assert (= (and b!7272585 (not res!2948068)) b!7272587))

(assert (= (and b!7272587 (not res!2948070)) b!7272592))

(assert (= (and b!7272592 (not res!2948066)) b!7272590))

(assert (= (and b!7272590 (not res!2948074)) b!7272588))

(assert (= (and b!7272588 (not res!2948071)) b!7272591))

(assert (= (and b!7272591 (not res!2948077)) b!7272598))

(assert (= start!709860 b!7272593))

(assert (= (and start!709860 (is-Cons!70804 s!7854)) b!7272586))

(assert (= start!709860 b!7272584))

(declare-fun m!7958818 () Bool)

(assert (=> b!7272597 m!7958818))

(declare-fun m!7958820 () Bool)

(assert (=> start!709860 m!7958820))

(assert (=> start!709860 m!7958820))

(declare-fun m!7958822 () Bool)

(assert (=> start!709860 m!7958822))

(declare-fun m!7958824 () Bool)

(assert (=> start!709860 m!7958824))

(declare-fun m!7958826 () Bool)

(assert (=> start!709860 m!7958826))

(declare-fun m!7958828 () Bool)

(assert (=> b!7272587 m!7958828))

(declare-fun m!7958830 () Bool)

(assert (=> b!7272587 m!7958830))

(declare-fun m!7958832 () Bool)

(assert (=> b!7272591 m!7958832))

(declare-fun m!7958834 () Bool)

(assert (=> b!7272595 m!7958834))

(declare-fun m!7958836 () Bool)

(assert (=> b!7272595 m!7958836))

(assert (=> b!7272595 m!7958834))

(declare-fun m!7958838 () Bool)

(assert (=> b!7272595 m!7958838))

(assert (=> b!7272595 m!7958834))

(assert (=> b!7272595 m!7958834))

(declare-fun m!7958840 () Bool)

(assert (=> b!7272595 m!7958840))

(declare-fun m!7958842 () Bool)

(assert (=> b!7272595 m!7958842))

(declare-fun m!7958844 () Bool)

(assert (=> b!7272595 m!7958844))

(declare-fun m!7958846 () Bool)

(assert (=> b!7272595 m!7958846))

(declare-fun m!7958848 () Bool)

(assert (=> b!7272595 m!7958848))

(declare-fun m!7958850 () Bool)

(assert (=> b!7272595 m!7958850))

(declare-fun m!7958852 () Bool)

(assert (=> b!7272595 m!7958852))

(declare-fun m!7958854 () Bool)

(assert (=> b!7272595 m!7958854))

(declare-fun m!7958856 () Bool)

(assert (=> b!7272585 m!7958856))

(assert (=> b!7272585 m!7958836))

(declare-fun m!7958858 () Bool)

(assert (=> b!7272585 m!7958858))

(declare-fun m!7958860 () Bool)

(assert (=> b!7272592 m!7958860))

(declare-fun m!7958862 () Bool)

(assert (=> b!7272592 m!7958862))

(declare-fun m!7958864 () Bool)

(assert (=> b!7272592 m!7958864))

(assert (=> b!7272592 m!7958860))

(declare-fun m!7958866 () Bool)

(assert (=> b!7272592 m!7958866))

(declare-fun m!7958868 () Bool)

(assert (=> b!7272598 m!7958868))

(declare-fun m!7958870 () Bool)

(assert (=> b!7272590 m!7958870))

(declare-fun m!7958872 () Bool)

(assert (=> b!7272590 m!7958872))

(declare-fun m!7958874 () Bool)

(assert (=> b!7272590 m!7958874))

(assert (=> b!7272590 m!7958866))

(assert (=> b!7272590 m!7958860))

(assert (=> b!7272590 m!7958860))

(assert (=> b!7272590 m!7958860))

(assert (=> b!7272590 m!7958860))

(declare-fun m!7958876 () Bool)

(assert (=> b!7272590 m!7958876))

(declare-fun m!7958878 () Bool)

(assert (=> b!7272590 m!7958878))

(declare-fun m!7958880 () Bool)

(assert (=> b!7272590 m!7958880))

(assert (=> b!7272590 m!7958860))

(declare-fun m!7958882 () Bool)

(assert (=> b!7272594 m!7958882))

(assert (=> b!7272588 m!7958860))

(assert (=> b!7272588 m!7958834))

(declare-fun m!7958884 () Bool)

(assert (=> b!7272588 m!7958884))

(declare-fun m!7958886 () Bool)

(assert (=> b!7272588 m!7958886))

(declare-fun m!7958888 () Bool)

(assert (=> b!7272588 m!7958888))

(declare-fun m!7958890 () Bool)

(assert (=> b!7272588 m!7958890))

(assert (=> b!7272588 m!7958860))

(push 1)

(assert (not b!7272594))

(assert (not b!7272585))

(assert (not b!7272588))

(assert (not b!7272590))

(assert (not b!7272595))

(assert (not b!7272593))

(assert (not b!7272597))

(assert tp_is_empty!47077)

(assert (not b!7272591))

(assert (not b!7272598))

(assert (not b!7272592))

(assert (not b!7272586))

(assert (not b!7272587))

(assert (not start!709860))

(assert (not b!7272584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1911374 () Bool)

(declare-fun d!2263394 () Bool)

(assert (= bs!1911374 (and d!2263394 b!7272595)))

(declare-fun lambda!449082 () Int)

(assert (=> bs!1911374 (not (= lambda!449082 lambda!449040))))

(assert (=> d!2263394 (= (nullableContext!296 ct1!250) (forall!17635 (exprs!8246 ct1!250) lambda!449082))))

(declare-fun bs!1911375 () Bool)

(assert (= bs!1911375 d!2263394))

(declare-fun m!7958966 () Bool)

(assert (=> bs!1911375 m!7958966))

(assert (=> b!7272597 d!2263394))

(declare-fun d!2263396 () Bool)

(declare-fun res!2948118 () Bool)

(declare-fun e!4361142 () Bool)

(assert (=> d!2263396 (=> res!2948118 e!4361142)))

(assert (=> d!2263396 (= res!2948118 (is-Nil!70803 (exprs!8246 ct2!346)))))

(assert (=> d!2263396 (= (forall!17635 (exprs!8246 ct2!346) lambda!449040) e!4361142)))

(declare-fun b!7272652 () Bool)

(declare-fun e!4361143 () Bool)

(assert (=> b!7272652 (= e!4361142 e!4361143)))

(declare-fun res!2948119 () Bool)

(assert (=> b!7272652 (=> (not res!2948119) (not e!4361143))))

(declare-fun dynLambda!28945 (Int Regex!18806) Bool)

(assert (=> b!7272652 (= res!2948119 (dynLambda!28945 lambda!449040 (h!77251 (exprs!8246 ct2!346))))))

(declare-fun b!7272653 () Bool)

(assert (=> b!7272653 (= e!4361143 (forall!17635 (t!384999 (exprs!8246 ct2!346)) lambda!449040))))

(assert (= (and d!2263396 (not res!2948118)) b!7272652))

(assert (= (and b!7272652 res!2948119) b!7272653))

(declare-fun b_lambda!280469 () Bool)

(assert (=> (not b_lambda!280469) (not b!7272652)))

(declare-fun m!7958968 () Bool)

(assert (=> b!7272652 m!7958968))

(declare-fun m!7958970 () Bool)

(assert (=> b!7272653 m!7958970))

(assert (=> b!7272598 d!2263396))

(declare-fun b!7272676 () Bool)

(declare-fun e!4361159 () Bool)

(assert (=> b!7272676 (= e!4361159 (nullable!8006 (regOne!38124 (h!77251 (exprs!8246 ct1!250)))))))

(declare-fun b!7272678 () Bool)

(declare-fun e!4361157 () (Set Context!15492))

(declare-fun call!663501 () (Set Context!15492))

(assert (=> b!7272678 (= e!4361157 call!663501)))

(declare-fun bm!663495 () Bool)

(declare-fun call!663505 () (Set Context!15492))

(declare-fun call!663504 () (Set Context!15492))

(assert (=> bm!663495 (= call!663505 call!663504)))

(declare-fun call!663502 () (Set Context!15492))

(declare-fun bm!663496 () Bool)

(declare-fun c!1354038 () Bool)

(declare-fun call!663500 () List!70927)

(assert (=> bm!663496 (= call!663502 (derivationStepZipperDown!2740 (ite c!1354038 (regTwo!38125 (h!77251 (exprs!8246 ct1!250))) (regOne!38124 (h!77251 (exprs!8246 ct1!250)))) (ite c!1354038 lt!2595801 (Context!15493 call!663500)) (h!77252 s!7854)))))

(declare-fun bm!663497 () Bool)

(declare-fun c!1354040 () Bool)

(declare-fun call!663503 () List!70927)

(declare-fun c!1354041 () Bool)

(assert (=> bm!663497 (= call!663504 (derivationStepZipperDown!2740 (ite c!1354038 (regOne!38125 (h!77251 (exprs!8246 ct1!250))) (ite c!1354040 (regTwo!38124 (h!77251 (exprs!8246 ct1!250))) (ite c!1354041 (regOne!38124 (h!77251 (exprs!8246 ct1!250))) (reg!19135 (h!77251 (exprs!8246 ct1!250)))))) (ite (or c!1354038 c!1354040) lt!2595801 (Context!15493 call!663503)) (h!77252 s!7854)))))

(declare-fun bm!663498 () Bool)

(assert (=> bm!663498 (= call!663501 call!663505)))

(declare-fun b!7272679 () Bool)

(declare-fun e!4361161 () (Set Context!15492))

(assert (=> b!7272679 (= e!4361161 (set.insert lt!2595801 (as set.empty (Set Context!15492))))))

(declare-fun b!7272680 () Bool)

(assert (=> b!7272680 (= c!1354040 e!4361159)))

(declare-fun res!2948122 () Bool)

(assert (=> b!7272680 (=> (not res!2948122) (not e!4361159))))

(assert (=> b!7272680 (= res!2948122 (is-Concat!27651 (h!77251 (exprs!8246 ct1!250))))))

(declare-fun e!4361160 () (Set Context!15492))

(declare-fun e!4361156 () (Set Context!15492))

(assert (=> b!7272680 (= e!4361160 e!4361156)))

(declare-fun b!7272681 () Bool)

(assert (=> b!7272681 (= e!4361160 (set.union call!663504 call!663502))))

(declare-fun b!7272682 () Bool)

(declare-fun e!4361158 () (Set Context!15492))

(assert (=> b!7272682 (= e!4361156 e!4361158)))

(assert (=> b!7272682 (= c!1354041 (is-Concat!27651 (h!77251 (exprs!8246 ct1!250))))))

(declare-fun b!7272683 () Bool)

(assert (=> b!7272683 (= e!4361158 call!663501)))

(declare-fun b!7272684 () Bool)

(assert (=> b!7272684 (= e!4361157 (as set.empty (Set Context!15492)))))

(declare-fun b!7272677 () Bool)

(declare-fun c!1354037 () Bool)

(assert (=> b!7272677 (= c!1354037 (is-Star!18806 (h!77251 (exprs!8246 ct1!250))))))

(assert (=> b!7272677 (= e!4361158 e!4361157)))

(declare-fun d!2263398 () Bool)

(declare-fun c!1354039 () Bool)

(assert (=> d!2263398 (= c!1354039 (and (is-ElementMatch!18806 (h!77251 (exprs!8246 ct1!250))) (= (c!1354018 (h!77251 (exprs!8246 ct1!250))) (h!77252 s!7854))))))

(assert (=> d!2263398 (= (derivationStepZipperDown!2740 (h!77251 (exprs!8246 ct1!250)) lt!2595801 (h!77252 s!7854)) e!4361161)))

(declare-fun b!7272685 () Bool)

(assert (=> b!7272685 (= e!4361156 (set.union call!663502 call!663505))))

(declare-fun bm!663499 () Bool)

(assert (=> bm!663499 (= call!663503 call!663500)))

(declare-fun b!7272686 () Bool)

(assert (=> b!7272686 (= e!4361161 e!4361160)))

(assert (=> b!7272686 (= c!1354038 (is-Union!18806 (h!77251 (exprs!8246 ct1!250))))))

(declare-fun bm!663500 () Bool)

(declare-fun $colon$colon!2979 (List!70927 Regex!18806) List!70927)

(assert (=> bm!663500 (= call!663500 ($colon$colon!2979 (exprs!8246 lt!2595801) (ite (or c!1354040 c!1354041) (regTwo!38124 (h!77251 (exprs!8246 ct1!250))) (h!77251 (exprs!8246 ct1!250)))))))

(assert (= (and d!2263398 c!1354039) b!7272679))

(assert (= (and d!2263398 (not c!1354039)) b!7272686))

(assert (= (and b!7272686 c!1354038) b!7272681))

(assert (= (and b!7272686 (not c!1354038)) b!7272680))

(assert (= (and b!7272680 res!2948122) b!7272676))

(assert (= (and b!7272680 c!1354040) b!7272685))

(assert (= (and b!7272680 (not c!1354040)) b!7272682))

(assert (= (and b!7272682 c!1354041) b!7272683))

(assert (= (and b!7272682 (not c!1354041)) b!7272677))

(assert (= (and b!7272677 c!1354037) b!7272678))

(assert (= (and b!7272677 (not c!1354037)) b!7272684))

(assert (= (or b!7272683 b!7272678) bm!663499))

(assert (= (or b!7272683 b!7272678) bm!663498))

(assert (= (or b!7272685 bm!663499) bm!663500))

(assert (= (or b!7272685 bm!663498) bm!663495))

(assert (= (or b!7272681 bm!663495) bm!663497))

(assert (= (or b!7272681 b!7272685) bm!663496))

(declare-fun m!7958972 () Bool)

(assert (=> b!7272679 m!7958972))

(declare-fun m!7958974 () Bool)

(assert (=> bm!663496 m!7958974))

(declare-fun m!7958976 () Bool)

(assert (=> b!7272676 m!7958976))

(declare-fun m!7958978 () Bool)

(assert (=> bm!663500 m!7958978))

(declare-fun m!7958980 () Bool)

(assert (=> bm!663497 m!7958980))

(assert (=> b!7272587 d!2263398))

(declare-fun b!7272697 () Bool)

(declare-fun e!4361168 () (Set Context!15492))

(declare-fun call!663508 () (Set Context!15492))

(assert (=> b!7272697 (= e!4361168 call!663508)))

(declare-fun b!7272699 () Bool)

(declare-fun e!4361170 () Bool)

(assert (=> b!7272699 (= e!4361170 (nullable!8006 (h!77251 (exprs!8246 lt!2595801))))))

(declare-fun bm!663503 () Bool)

(assert (=> bm!663503 (= call!663508 (derivationStepZipperDown!2740 (h!77251 (exprs!8246 lt!2595801)) (Context!15493 (t!384999 (exprs!8246 lt!2595801))) (h!77252 s!7854)))))

(declare-fun b!7272700 () Bool)

(declare-fun e!4361169 () (Set Context!15492))

(assert (=> b!7272700 (= e!4361169 (set.union call!663508 (derivationStepZipperUp!2576 (Context!15493 (t!384999 (exprs!8246 lt!2595801))) (h!77252 s!7854))))))

(declare-fun b!7272701 () Bool)

(assert (=> b!7272701 (= e!4361168 (as set.empty (Set Context!15492)))))

(declare-fun d!2263400 () Bool)

(declare-fun c!1354046 () Bool)

(assert (=> d!2263400 (= c!1354046 e!4361170)))

(declare-fun res!2948125 () Bool)

(assert (=> d!2263400 (=> (not res!2948125) (not e!4361170))))

(assert (=> d!2263400 (= res!2948125 (is-Cons!70803 (exprs!8246 lt!2595801)))))

(assert (=> d!2263400 (= (derivationStepZipperUp!2576 lt!2595801 (h!77252 s!7854)) e!4361169)))

(declare-fun b!7272698 () Bool)

(assert (=> b!7272698 (= e!4361169 e!4361168)))

(declare-fun c!1354047 () Bool)

(assert (=> b!7272698 (= c!1354047 (is-Cons!70803 (exprs!8246 lt!2595801)))))

(assert (= (and d!2263400 res!2948125) b!7272699))

(assert (= (and d!2263400 c!1354046) b!7272700))

(assert (= (and d!2263400 (not c!1354046)) b!7272698))

(assert (= (and b!7272698 c!1354047) b!7272697))

(assert (= (and b!7272698 (not c!1354047)) b!7272701))

(assert (= (or b!7272700 b!7272697) bm!663503))

(declare-fun m!7958982 () Bool)

(assert (=> b!7272699 m!7958982))

(declare-fun m!7958984 () Bool)

(assert (=> bm!663503 m!7958984))

(declare-fun m!7958986 () Bool)

(assert (=> b!7272700 m!7958986))

(assert (=> b!7272587 d!2263400))

(declare-fun d!2263402 () Bool)

(declare-fun c!1354050 () Bool)

(declare-fun isEmpty!40729 (List!70928) Bool)

(assert (=> d!2263402 (= c!1354050 (isEmpty!40729 s!7854))))

(declare-fun e!4361173 () Bool)

(assert (=> d!2263402 (= (matchZipper!3710 lt!2595791 s!7854) e!4361173)))

(declare-fun b!7272706 () Bool)

(declare-fun nullableZipper!3011 ((Set Context!15492)) Bool)

(assert (=> b!7272706 (= e!4361173 (nullableZipper!3011 lt!2595791))))

(declare-fun b!7272707 () Bool)

(declare-fun head!15009 (List!70928) C!37886)

(declare-fun tail!14516 (List!70928) List!70928)

(assert (=> b!7272707 (= e!4361173 (matchZipper!3710 (derivationStepZipper!3546 lt!2595791 (head!15009 s!7854)) (tail!14516 s!7854)))))

(assert (= (and d!2263402 c!1354050) b!7272706))

(assert (= (and d!2263402 (not c!1354050)) b!7272707))

(declare-fun m!7958988 () Bool)

(assert (=> d!2263402 m!7958988))

(declare-fun m!7958990 () Bool)

(assert (=> b!7272706 m!7958990))

(declare-fun m!7958992 () Bool)

(assert (=> b!7272707 m!7958992))

(assert (=> b!7272707 m!7958992))

(declare-fun m!7958994 () Bool)

(assert (=> b!7272707 m!7958994))

(declare-fun m!7958996 () Bool)

(assert (=> b!7272707 m!7958996))

(assert (=> b!7272707 m!7958994))

(assert (=> b!7272707 m!7958996))

(declare-fun m!7958998 () Bool)

(assert (=> b!7272707 m!7958998))

(assert (=> b!7272588 d!2263402))

(declare-fun e!4361176 () Bool)

(declare-fun d!2263404 () Bool)

(assert (=> d!2263404 (= (matchZipper!3710 (set.union lt!2595803 lt!2595786) (t!385000 s!7854)) e!4361176)))

(declare-fun res!2948128 () Bool)

(assert (=> d!2263404 (=> res!2948128 e!4361176)))

(assert (=> d!2263404 (= res!2948128 (matchZipper!3710 lt!2595803 (t!385000 s!7854)))))

(declare-fun lt!2595906 () Unit!164230)

(declare-fun choose!56429 ((Set Context!15492) (Set Context!15492) List!70928) Unit!164230)

(assert (=> d!2263404 (= lt!2595906 (choose!56429 lt!2595803 lt!2595786 (t!385000 s!7854)))))

(assert (=> d!2263404 (= (lemmaZipperConcatMatchesSameAsBothZippers!1779 lt!2595803 lt!2595786 (t!385000 s!7854)) lt!2595906)))

(declare-fun b!7272710 () Bool)

(assert (=> b!7272710 (= e!4361176 (matchZipper!3710 lt!2595786 (t!385000 s!7854)))))

(assert (= (and d!2263404 (not res!2948128)) b!7272710))

(declare-fun m!7959000 () Bool)

(assert (=> d!2263404 m!7959000))

(assert (=> d!2263404 m!7958888))

(declare-fun m!7959002 () Bool)

(assert (=> d!2263404 m!7959002))

(assert (=> b!7272710 m!7958874))

(assert (=> b!7272588 d!2263404))

(declare-fun d!2263406 () Bool)

(assert (=> d!2263406 (forall!17635 (++!16706 (exprs!8246 ct1!250) (exprs!8246 ct2!346)) lambda!449040)))

(declare-fun lt!2595909 () Unit!164230)

(declare-fun choose!56430 (List!70927 List!70927 Int) Unit!164230)

(assert (=> d!2263406 (= lt!2595909 (choose!56430 (exprs!8246 ct1!250) (exprs!8246 ct2!346) lambda!449040))))

(assert (=> d!2263406 (forall!17635 (exprs!8246 ct1!250) lambda!449040)))

(assert (=> d!2263406 (= (lemmaConcatPreservesForall!1563 (exprs!8246 ct1!250) (exprs!8246 ct2!346) lambda!449040) lt!2595909)))

(declare-fun bs!1911376 () Bool)

(assert (= bs!1911376 d!2263406))

(assert (=> bs!1911376 m!7958848))

(assert (=> bs!1911376 m!7958848))

(declare-fun m!7959004 () Bool)

(assert (=> bs!1911376 m!7959004))

(declare-fun m!7959006 () Bool)

(assert (=> bs!1911376 m!7959006))

(assert (=> bs!1911376 m!7958832))

(assert (=> b!7272588 d!2263406))

(declare-fun d!2263408 () Bool)

(assert (=> d!2263408 (forall!17635 (++!16706 lt!2595788 (exprs!8246 ct2!346)) lambda!449040)))

(declare-fun lt!2595910 () Unit!164230)

(assert (=> d!2263408 (= lt!2595910 (choose!56430 lt!2595788 (exprs!8246 ct2!346) lambda!449040))))

(assert (=> d!2263408 (forall!17635 lt!2595788 lambda!449040)))

(assert (=> d!2263408 (= (lemmaConcatPreservesForall!1563 lt!2595788 (exprs!8246 ct2!346) lambda!449040) lt!2595910)))

(declare-fun bs!1911377 () Bool)

(assert (= bs!1911377 d!2263408))

(assert (=> bs!1911377 m!7958862))

(assert (=> bs!1911377 m!7958862))

(declare-fun m!7959008 () Bool)

(assert (=> bs!1911377 m!7959008))

(declare-fun m!7959010 () Bool)

(assert (=> bs!1911377 m!7959010))

(declare-fun m!7959012 () Bool)

(assert (=> bs!1911377 m!7959012))

(assert (=> b!7272588 d!2263408))

(declare-fun d!2263410 () Bool)

(declare-fun c!1354051 () Bool)

(assert (=> d!2263410 (= c!1354051 (isEmpty!40729 (t!385000 s!7854)))))

(declare-fun e!4361177 () Bool)

(assert (=> d!2263410 (= (matchZipper!3710 lt!2595803 (t!385000 s!7854)) e!4361177)))

(declare-fun b!7272711 () Bool)

(assert (=> b!7272711 (= e!4361177 (nullableZipper!3011 lt!2595803))))

(declare-fun b!7272712 () Bool)

(assert (=> b!7272712 (= e!4361177 (matchZipper!3710 (derivationStepZipper!3546 lt!2595803 (head!15009 (t!385000 s!7854))) (tail!14516 (t!385000 s!7854))))))

(assert (= (and d!2263410 c!1354051) b!7272711))

(assert (= (and d!2263410 (not c!1354051)) b!7272712))

(declare-fun m!7959014 () Bool)

(assert (=> d!2263410 m!7959014))

(declare-fun m!7959016 () Bool)

(assert (=> b!7272711 m!7959016))

(declare-fun m!7959018 () Bool)

(assert (=> b!7272712 m!7959018))

(assert (=> b!7272712 m!7959018))

(declare-fun m!7959020 () Bool)

(assert (=> b!7272712 m!7959020))

(declare-fun m!7959022 () Bool)

(assert (=> b!7272712 m!7959022))

(assert (=> b!7272712 m!7959020))

(assert (=> b!7272712 m!7959022))

(declare-fun m!7959024 () Bool)

(assert (=> b!7272712 m!7959024))

(assert (=> b!7272588 d!2263410))

(declare-fun d!2263412 () Bool)

(declare-fun c!1354052 () Bool)

(assert (=> d!2263412 (= c!1354052 (isEmpty!40729 (t!385000 s!7854)))))

(declare-fun e!4361178 () Bool)

(assert (=> d!2263412 (= (matchZipper!3710 lt!2595785 (t!385000 s!7854)) e!4361178)))

(declare-fun b!7272713 () Bool)

(assert (=> b!7272713 (= e!4361178 (nullableZipper!3011 lt!2595785))))

(declare-fun b!7272714 () Bool)

(assert (=> b!7272714 (= e!4361178 (matchZipper!3710 (derivationStepZipper!3546 lt!2595785 (head!15009 (t!385000 s!7854))) (tail!14516 (t!385000 s!7854))))))

(assert (= (and d!2263412 c!1354052) b!7272713))

(assert (= (and d!2263412 (not c!1354052)) b!7272714))

(assert (=> d!2263412 m!7959014))

(declare-fun m!7959026 () Bool)

(assert (=> b!7272713 m!7959026))

(assert (=> b!7272714 m!7959018))

(assert (=> b!7272714 m!7959018))

(declare-fun m!7959028 () Bool)

(assert (=> b!7272714 m!7959028))

(assert (=> b!7272714 m!7959022))

(assert (=> b!7272714 m!7959028))

(assert (=> b!7272714 m!7959022))

(declare-fun m!7959030 () Bool)

(assert (=> b!7272714 m!7959030))

(assert (=> b!7272588 d!2263412))

(declare-fun b!7272715 () Bool)

(declare-fun e!4361179 () (Set Context!15492))

(declare-fun call!663509 () (Set Context!15492))

(assert (=> b!7272715 (= e!4361179 call!663509)))

(declare-fun b!7272717 () Bool)

(declare-fun e!4361181 () Bool)

(assert (=> b!7272717 (= e!4361181 (nullable!8006 (h!77251 (exprs!8246 lt!2595783))))))

(declare-fun bm!663504 () Bool)

(assert (=> bm!663504 (= call!663509 (derivationStepZipperDown!2740 (h!77251 (exprs!8246 lt!2595783)) (Context!15493 (t!384999 (exprs!8246 lt!2595783))) (h!77252 s!7854)))))

(declare-fun e!4361180 () (Set Context!15492))

(declare-fun b!7272718 () Bool)

(assert (=> b!7272718 (= e!4361180 (set.union call!663509 (derivationStepZipperUp!2576 (Context!15493 (t!384999 (exprs!8246 lt!2595783))) (h!77252 s!7854))))))

(declare-fun b!7272719 () Bool)

(assert (=> b!7272719 (= e!4361179 (as set.empty (Set Context!15492)))))

(declare-fun d!2263414 () Bool)

(declare-fun c!1354053 () Bool)

(assert (=> d!2263414 (= c!1354053 e!4361181)))

(declare-fun res!2948129 () Bool)

(assert (=> d!2263414 (=> (not res!2948129) (not e!4361181))))

(assert (=> d!2263414 (= res!2948129 (is-Cons!70803 (exprs!8246 lt!2595783)))))

(assert (=> d!2263414 (= (derivationStepZipperUp!2576 lt!2595783 (h!77252 s!7854)) e!4361180)))

(declare-fun b!7272716 () Bool)

(assert (=> b!7272716 (= e!4361180 e!4361179)))

(declare-fun c!1354054 () Bool)

(assert (=> b!7272716 (= c!1354054 (is-Cons!70803 (exprs!8246 lt!2595783)))))

(assert (= (and d!2263414 res!2948129) b!7272717))

(assert (= (and d!2263414 c!1354053) b!7272718))

(assert (= (and d!2263414 (not c!1354053)) b!7272716))

(assert (= (and b!7272716 c!1354054) b!7272715))

(assert (= (and b!7272716 (not c!1354054)) b!7272719))

(assert (= (or b!7272718 b!7272715) bm!663504))

(declare-fun m!7959032 () Bool)

(assert (=> b!7272717 m!7959032))

(declare-fun m!7959034 () Bool)

(assert (=> bm!663504 m!7959034))

(declare-fun m!7959036 () Bool)

(assert (=> b!7272718 m!7959036))

(assert (=> b!7272590 d!2263414))

(declare-fun d!2263416 () Bool)

(declare-fun choose!56431 ((Set Context!15492) Int) (Set Context!15492))

(assert (=> d!2263416 (= (flatMap!2919 lt!2595776 lambda!449041) (choose!56431 lt!2595776 lambda!449041))))

(declare-fun bs!1911378 () Bool)

(assert (= bs!1911378 d!2263416))

(declare-fun m!7959038 () Bool)

(assert (=> bs!1911378 m!7959038))

(assert (=> b!7272590 d!2263416))

(declare-fun d!2263418 () Bool)

(declare-fun c!1354055 () Bool)

(assert (=> d!2263418 (= c!1354055 (isEmpty!40729 (t!385000 s!7854)))))

(declare-fun e!4361182 () Bool)

(assert (=> d!2263418 (= (matchZipper!3710 lt!2595786 (t!385000 s!7854)) e!4361182)))

(declare-fun b!7272720 () Bool)

(assert (=> b!7272720 (= e!4361182 (nullableZipper!3011 lt!2595786))))

(declare-fun b!7272721 () Bool)

(assert (=> b!7272721 (= e!4361182 (matchZipper!3710 (derivationStepZipper!3546 lt!2595786 (head!15009 (t!385000 s!7854))) (tail!14516 (t!385000 s!7854))))))

(assert (= (and d!2263418 c!1354055) b!7272720))

(assert (= (and d!2263418 (not c!1354055)) b!7272721))

(assert (=> d!2263418 m!7959014))

(declare-fun m!7959040 () Bool)

(assert (=> b!7272720 m!7959040))

(assert (=> b!7272721 m!7959018))

(assert (=> b!7272721 m!7959018))

(declare-fun m!7959042 () Bool)

(assert (=> b!7272721 m!7959042))

(assert (=> b!7272721 m!7959022))

(assert (=> b!7272721 m!7959042))

(assert (=> b!7272721 m!7959022))

(declare-fun m!7959044 () Bool)

(assert (=> b!7272721 m!7959044))

(assert (=> b!7272590 d!2263418))

(assert (=> b!7272590 d!2263408))

(declare-fun bs!1911379 () Bool)

(declare-fun d!2263420 () Bool)

(assert (= bs!1911379 (and d!2263420 b!7272595)))

(declare-fun lambda!449085 () Int)

(assert (=> bs!1911379 (= lambda!449085 lambda!449040)))

(declare-fun bs!1911380 () Bool)

(assert (= bs!1911380 (and d!2263420 d!2263394)))

(assert (=> bs!1911380 (not (= lambda!449085 lambda!449082))))

(assert (=> d!2263420 (matchZipper!3710 (set.insert (Context!15493 (++!16706 (exprs!8246 lt!2595801) (exprs!8246 ct2!346))) (as set.empty (Set Context!15492))) s!7854)))

(declare-fun lt!2595916 () Unit!164230)

(assert (=> d!2263420 (= lt!2595916 (lemmaConcatPreservesForall!1563 (exprs!8246 lt!2595801) (exprs!8246 ct2!346) lambda!449085))))

(declare-fun lt!2595915 () Unit!164230)

(declare-fun choose!56432 (Context!15492 Context!15492 List!70928) Unit!164230)

(assert (=> d!2263420 (= lt!2595915 (choose!56432 lt!2595801 ct2!346 s!7854))))

(assert (=> d!2263420 (matchZipper!3710 (set.insert ct2!346 (as set.empty (Set Context!15492))) s!7854)))

(assert (=> d!2263420 (= (lemmaPrependingNullableCtxStillMatches!43 lt!2595801 ct2!346 s!7854) lt!2595915)))

(declare-fun bs!1911381 () Bool)

(assert (= bs!1911381 d!2263420))

(assert (=> bs!1911381 m!7958820))

(assert (=> bs!1911381 m!7958822))

(assert (=> bs!1911381 m!7958820))

(declare-fun m!7959046 () Bool)

(assert (=> bs!1911381 m!7959046))

(declare-fun m!7959048 () Bool)

(assert (=> bs!1911381 m!7959048))

(declare-fun m!7959050 () Bool)

(assert (=> bs!1911381 m!7959050))

(declare-fun m!7959052 () Bool)

(assert (=> bs!1911381 m!7959052))

(assert (=> bs!1911381 m!7959050))

(declare-fun m!7959054 () Bool)

(assert (=> bs!1911381 m!7959054))

(assert (=> b!7272590 d!2263420))

(declare-fun d!2263422 () Bool)

(declare-fun dynLambda!28946 (Int Context!15492) (Set Context!15492))

(assert (=> d!2263422 (= (flatMap!2919 lt!2595776 lambda!449041) (dynLambda!28946 lambda!449041 lt!2595783))))

(declare-fun lt!2595919 () Unit!164230)

(declare-fun choose!56433 ((Set Context!15492) Context!15492 Int) Unit!164230)

(assert (=> d!2263422 (= lt!2595919 (choose!56433 lt!2595776 lt!2595783 lambda!449041))))

(assert (=> d!2263422 (= lt!2595776 (set.insert lt!2595783 (as set.empty (Set Context!15492))))))

(assert (=> d!2263422 (= (lemmaFlatMapOnSingletonSet!2319 lt!2595776 lt!2595783 lambda!449041) lt!2595919)))

(declare-fun b_lambda!280471 () Bool)

(assert (=> (not b_lambda!280471) (not d!2263422)))

(declare-fun bs!1911382 () Bool)

(assert (= bs!1911382 d!2263422))

(assert (=> bs!1911382 m!7958870))

(declare-fun m!7959056 () Bool)

(assert (=> bs!1911382 m!7959056))

(declare-fun m!7959058 () Bool)

(assert (=> bs!1911382 m!7959058))

(assert (=> bs!1911382 m!7958880))

(assert (=> b!7272590 d!2263422))

(declare-fun d!2263424 () Bool)

(declare-fun c!1354056 () Bool)

(assert (=> d!2263424 (= c!1354056 (isEmpty!40729 s!7854))))

(declare-fun e!4361183 () Bool)

(assert (=> d!2263424 (= (matchZipper!3710 lt!2595776 s!7854) e!4361183)))

(declare-fun b!7272722 () Bool)

(assert (=> b!7272722 (= e!4361183 (nullableZipper!3011 lt!2595776))))

(declare-fun b!7272723 () Bool)

(assert (=> b!7272723 (= e!4361183 (matchZipper!3710 (derivationStepZipper!3546 lt!2595776 (head!15009 s!7854)) (tail!14516 s!7854)))))

(assert (= (and d!2263424 c!1354056) b!7272722))

(assert (= (and d!2263424 (not c!1354056)) b!7272723))

(assert (=> d!2263424 m!7958988))

(declare-fun m!7959060 () Bool)

(assert (=> b!7272722 m!7959060))

(assert (=> b!7272723 m!7958992))

(assert (=> b!7272723 m!7958992))

(declare-fun m!7959062 () Bool)

(assert (=> b!7272723 m!7959062))

(assert (=> b!7272723 m!7958996))

(assert (=> b!7272723 m!7959062))

(assert (=> b!7272723 m!7958996))

(declare-fun m!7959064 () Bool)

(assert (=> b!7272723 m!7959064))

(assert (=> b!7272590 d!2263424))

(declare-fun d!2263426 () Bool)

(declare-fun res!2948130 () Bool)

(declare-fun e!4361184 () Bool)

(assert (=> d!2263426 (=> res!2948130 e!4361184)))

(assert (=> d!2263426 (= res!2948130 (is-Nil!70803 (exprs!8246 ct1!250)))))

(assert (=> d!2263426 (= (forall!17635 (exprs!8246 ct1!250) lambda!449040) e!4361184)))

(declare-fun b!7272724 () Bool)

(declare-fun e!4361185 () Bool)

(assert (=> b!7272724 (= e!4361184 e!4361185)))

(declare-fun res!2948131 () Bool)

(assert (=> b!7272724 (=> (not res!2948131) (not e!4361185))))

(assert (=> b!7272724 (= res!2948131 (dynLambda!28945 lambda!449040 (h!77251 (exprs!8246 ct1!250))))))

(declare-fun b!7272725 () Bool)

(assert (=> b!7272725 (= e!4361185 (forall!17635 (t!384999 (exprs!8246 ct1!250)) lambda!449040))))

(assert (= (and d!2263426 (not res!2948130)) b!7272724))

(assert (= (and b!7272724 res!2948131) b!7272725))

(declare-fun b_lambda!280473 () Bool)

(assert (=> (not b_lambda!280473) (not b!7272724)))

(declare-fun m!7959066 () Bool)

(assert (=> b!7272724 m!7959066))

(declare-fun m!7959068 () Bool)

(assert (=> b!7272725 m!7959068))

(assert (=> b!7272591 d!2263426))

(assert (=> b!7272592 d!2263408))

(declare-fun b!7272726 () Bool)

(declare-fun e!4361189 () Bool)

(assert (=> b!7272726 (= e!4361189 (nullable!8006 (regOne!38124 (h!77251 (exprs!8246 ct1!250)))))))

(declare-fun b!7272728 () Bool)

(declare-fun e!4361187 () (Set Context!15492))

(declare-fun call!663511 () (Set Context!15492))

(assert (=> b!7272728 (= e!4361187 call!663511)))

(declare-fun bm!663505 () Bool)

(declare-fun call!663515 () (Set Context!15492))

(declare-fun call!663514 () (Set Context!15492))

(assert (=> bm!663505 (= call!663515 call!663514)))

(declare-fun call!663510 () List!70927)

(declare-fun c!1354058 () Bool)

(declare-fun call!663512 () (Set Context!15492))

(declare-fun bm!663506 () Bool)

(assert (=> bm!663506 (= call!663512 (derivationStepZipperDown!2740 (ite c!1354058 (regTwo!38125 (h!77251 (exprs!8246 ct1!250))) (regOne!38124 (h!77251 (exprs!8246 ct1!250)))) (ite c!1354058 lt!2595783 (Context!15493 call!663510)) (h!77252 s!7854)))))

(declare-fun c!1354061 () Bool)

(declare-fun c!1354060 () Bool)

(declare-fun bm!663507 () Bool)

(declare-fun call!663513 () List!70927)

(assert (=> bm!663507 (= call!663514 (derivationStepZipperDown!2740 (ite c!1354058 (regOne!38125 (h!77251 (exprs!8246 ct1!250))) (ite c!1354060 (regTwo!38124 (h!77251 (exprs!8246 ct1!250))) (ite c!1354061 (regOne!38124 (h!77251 (exprs!8246 ct1!250))) (reg!19135 (h!77251 (exprs!8246 ct1!250)))))) (ite (or c!1354058 c!1354060) lt!2595783 (Context!15493 call!663513)) (h!77252 s!7854)))))

(declare-fun bm!663508 () Bool)

(assert (=> bm!663508 (= call!663511 call!663515)))

(declare-fun b!7272729 () Bool)

(declare-fun e!4361191 () (Set Context!15492))

(assert (=> b!7272729 (= e!4361191 (set.insert lt!2595783 (as set.empty (Set Context!15492))))))

(declare-fun b!7272730 () Bool)

(assert (=> b!7272730 (= c!1354060 e!4361189)))

(declare-fun res!2948132 () Bool)

(assert (=> b!7272730 (=> (not res!2948132) (not e!4361189))))

(assert (=> b!7272730 (= res!2948132 (is-Concat!27651 (h!77251 (exprs!8246 ct1!250))))))

(declare-fun e!4361190 () (Set Context!15492))

(declare-fun e!4361186 () (Set Context!15492))

(assert (=> b!7272730 (= e!4361190 e!4361186)))

(declare-fun b!7272731 () Bool)

(assert (=> b!7272731 (= e!4361190 (set.union call!663514 call!663512))))

(declare-fun b!7272732 () Bool)

(declare-fun e!4361188 () (Set Context!15492))

(assert (=> b!7272732 (= e!4361186 e!4361188)))

(assert (=> b!7272732 (= c!1354061 (is-Concat!27651 (h!77251 (exprs!8246 ct1!250))))))

(declare-fun b!7272733 () Bool)

(assert (=> b!7272733 (= e!4361188 call!663511)))

(declare-fun b!7272734 () Bool)

(assert (=> b!7272734 (= e!4361187 (as set.empty (Set Context!15492)))))

(declare-fun b!7272727 () Bool)

(declare-fun c!1354057 () Bool)

(assert (=> b!7272727 (= c!1354057 (is-Star!18806 (h!77251 (exprs!8246 ct1!250))))))

(assert (=> b!7272727 (= e!4361188 e!4361187)))

(declare-fun d!2263428 () Bool)

(declare-fun c!1354059 () Bool)

(assert (=> d!2263428 (= c!1354059 (and (is-ElementMatch!18806 (h!77251 (exprs!8246 ct1!250))) (= (c!1354018 (h!77251 (exprs!8246 ct1!250))) (h!77252 s!7854))))))

(assert (=> d!2263428 (= (derivationStepZipperDown!2740 (h!77251 (exprs!8246 ct1!250)) lt!2595783 (h!77252 s!7854)) e!4361191)))

(declare-fun b!7272735 () Bool)

(assert (=> b!7272735 (= e!4361186 (set.union call!663512 call!663515))))

(declare-fun bm!663509 () Bool)

(assert (=> bm!663509 (= call!663513 call!663510)))

(declare-fun b!7272736 () Bool)

(assert (=> b!7272736 (= e!4361191 e!4361190)))

(assert (=> b!7272736 (= c!1354058 (is-Union!18806 (h!77251 (exprs!8246 ct1!250))))))

(declare-fun bm!663510 () Bool)

(assert (=> bm!663510 (= call!663510 ($colon$colon!2979 (exprs!8246 lt!2595783) (ite (or c!1354060 c!1354061) (regTwo!38124 (h!77251 (exprs!8246 ct1!250))) (h!77251 (exprs!8246 ct1!250)))))))

(assert (= (and d!2263428 c!1354059) b!7272729))

(assert (= (and d!2263428 (not c!1354059)) b!7272736))

(assert (= (and b!7272736 c!1354058) b!7272731))

(assert (= (and b!7272736 (not c!1354058)) b!7272730))

(assert (= (and b!7272730 res!2948132) b!7272726))

(assert (= (and b!7272730 c!1354060) b!7272735))

(assert (= (and b!7272730 (not c!1354060)) b!7272732))

(assert (= (and b!7272732 c!1354061) b!7272733))

(assert (= (and b!7272732 (not c!1354061)) b!7272727))

(assert (= (and b!7272727 c!1354057) b!7272728))

(assert (= (and b!7272727 (not c!1354057)) b!7272734))

(assert (= (or b!7272733 b!7272728) bm!663509))

(assert (= (or b!7272733 b!7272728) bm!663508))

(assert (= (or b!7272735 bm!663509) bm!663510))

(assert (= (or b!7272735 bm!663508) bm!663505))

(assert (= (or b!7272731 bm!663505) bm!663507))

(assert (= (or b!7272731 b!7272735) bm!663506))

(assert (=> b!7272729 m!7958880))

(declare-fun m!7959070 () Bool)

(assert (=> bm!663506 m!7959070))

(assert (=> b!7272726 m!7958976))

(declare-fun m!7959072 () Bool)

(assert (=> bm!663510 m!7959072))

(declare-fun m!7959074 () Bool)

(assert (=> bm!663507 m!7959074))

(assert (=> b!7272592 d!2263428))

(declare-fun b!7272748 () Bool)

(declare-fun e!4361196 () Bool)

(declare-fun lt!2595922 () List!70927)

(assert (=> b!7272748 (= e!4361196 (or (not (= (exprs!8246 ct2!346) Nil!70803)) (= lt!2595922 lt!2595788)))))

(declare-fun b!7272746 () Bool)

(declare-fun e!4361197 () List!70927)

(assert (=> b!7272746 (= e!4361197 (Cons!70803 (h!77251 lt!2595788) (++!16706 (t!384999 lt!2595788) (exprs!8246 ct2!346))))))

(declare-fun b!7272747 () Bool)

(declare-fun res!2948138 () Bool)

(assert (=> b!7272747 (=> (not res!2948138) (not e!4361196))))

(declare-fun size!41830 (List!70927) Int)

(assert (=> b!7272747 (= res!2948138 (= (size!41830 lt!2595922) (+ (size!41830 lt!2595788) (size!41830 (exprs!8246 ct2!346)))))))

(declare-fun d!2263430 () Bool)

(assert (=> d!2263430 e!4361196))

(declare-fun res!2948137 () Bool)

(assert (=> d!2263430 (=> (not res!2948137) (not e!4361196))))

(declare-fun content!14782 (List!70927) (Set Regex!18806))

(assert (=> d!2263430 (= res!2948137 (= (content!14782 lt!2595922) (set.union (content!14782 lt!2595788) (content!14782 (exprs!8246 ct2!346)))))))

(assert (=> d!2263430 (= lt!2595922 e!4361197)))

(declare-fun c!1354064 () Bool)

(assert (=> d!2263430 (= c!1354064 (is-Nil!70803 lt!2595788))))

(assert (=> d!2263430 (= (++!16706 lt!2595788 (exprs!8246 ct2!346)) lt!2595922)))

(declare-fun b!7272745 () Bool)

(assert (=> b!7272745 (= e!4361197 (exprs!8246 ct2!346))))

(assert (= (and d!2263430 c!1354064) b!7272745))

(assert (= (and d!2263430 (not c!1354064)) b!7272746))

(assert (= (and d!2263430 res!2948137) b!7272747))

(assert (= (and b!7272747 res!2948138) b!7272748))

(declare-fun m!7959076 () Bool)

(assert (=> b!7272746 m!7959076))

(declare-fun m!7959078 () Bool)

(assert (=> b!7272747 m!7959078))

(declare-fun m!7959080 () Bool)

(assert (=> b!7272747 m!7959080))

(declare-fun m!7959082 () Bool)

(assert (=> b!7272747 m!7959082))

(declare-fun m!7959084 () Bool)

(assert (=> d!2263430 m!7959084))

(declare-fun m!7959086 () Bool)

(assert (=> d!2263430 m!7959086))

(declare-fun m!7959088 () Bool)

(assert (=> d!2263430 m!7959088))

(assert (=> b!7272592 d!2263430))

(assert (=> b!7272592 d!2263414))

(declare-fun d!2263432 () Bool)

(assert (=> d!2263432 (= (isEmpty!40727 (exprs!8246 ct1!250)) (is-Nil!70803 (exprs!8246 ct1!250)))))

(assert (=> b!7272594 d!2263432))

(declare-fun b!7272749 () Bool)

(declare-fun e!4361198 () (Set Context!15492))

(declare-fun call!663516 () (Set Context!15492))

(assert (=> b!7272749 (= e!4361198 call!663516)))

(declare-fun b!7272751 () Bool)

(declare-fun e!4361200 () Bool)

(assert (=> b!7272751 (= e!4361200 (nullable!8006 (h!77251 (exprs!8246 ct1!250))))))

(declare-fun bm!663511 () Bool)

(assert (=> bm!663511 (= call!663516 (derivationStepZipperDown!2740 (h!77251 (exprs!8246 ct1!250)) (Context!15493 (t!384999 (exprs!8246 ct1!250))) (h!77252 s!7854)))))

(declare-fun b!7272752 () Bool)

(declare-fun e!4361199 () (Set Context!15492))

(assert (=> b!7272752 (= e!4361199 (set.union call!663516 (derivationStepZipperUp!2576 (Context!15493 (t!384999 (exprs!8246 ct1!250))) (h!77252 s!7854))))))

(declare-fun b!7272753 () Bool)

(assert (=> b!7272753 (= e!4361198 (as set.empty (Set Context!15492)))))

(declare-fun d!2263434 () Bool)

(declare-fun c!1354065 () Bool)

(assert (=> d!2263434 (= c!1354065 e!4361200)))

(declare-fun res!2948139 () Bool)

(assert (=> d!2263434 (=> (not res!2948139) (not e!4361200))))

(assert (=> d!2263434 (= res!2948139 (is-Cons!70803 (exprs!8246 ct1!250)))))

(assert (=> d!2263434 (= (derivationStepZipperUp!2576 ct1!250 (h!77252 s!7854)) e!4361199)))

(declare-fun b!7272750 () Bool)

(assert (=> b!7272750 (= e!4361199 e!4361198)))

(declare-fun c!1354066 () Bool)

(assert (=> b!7272750 (= c!1354066 (is-Cons!70803 (exprs!8246 ct1!250)))))

(assert (= (and d!2263434 res!2948139) b!7272751))

(assert (= (and d!2263434 c!1354065) b!7272752))

(assert (= (and d!2263434 (not c!1354065)) b!7272750))

(assert (= (and b!7272750 c!1354066) b!7272749))

(assert (= (and b!7272750 (not c!1354066)) b!7272753))

(assert (= (or b!7272752 b!7272749) bm!663511))

(assert (=> b!7272751 m!7958856))

(declare-fun m!7959090 () Bool)

(assert (=> bm!663511 m!7959090))

(declare-fun m!7959092 () Bool)

(assert (=> b!7272752 m!7959092))

(assert (=> b!7272595 d!2263434))

(declare-fun d!2263436 () Bool)

(assert (=> d!2263436 (= (flatMap!2919 lt!2595799 lambda!449041) (choose!56431 lt!2595799 lambda!449041))))

(declare-fun bs!1911383 () Bool)

(assert (= bs!1911383 d!2263436))

(declare-fun m!7959094 () Bool)

(assert (=> bs!1911383 m!7959094))

(assert (=> b!7272595 d!2263436))

(declare-fun d!2263438 () Bool)

(assert (=> d!2263438 (= (flatMap!2919 lt!2595791 lambda!449041) (choose!56431 lt!2595791 lambda!449041))))

(declare-fun bs!1911384 () Bool)

(assert (= bs!1911384 d!2263438))

(declare-fun m!7959096 () Bool)

(assert (=> bs!1911384 m!7959096))

(assert (=> b!7272595 d!2263438))

(declare-fun d!2263440 () Bool)

(assert (=> d!2263440 (= (flatMap!2919 lt!2595791 lambda!449041) (dynLambda!28946 lambda!449041 lt!2595780))))

(declare-fun lt!2595923 () Unit!164230)

(assert (=> d!2263440 (= lt!2595923 (choose!56433 lt!2595791 lt!2595780 lambda!449041))))

(assert (=> d!2263440 (= lt!2595791 (set.insert lt!2595780 (as set.empty (Set Context!15492))))))

(assert (=> d!2263440 (= (lemmaFlatMapOnSingletonSet!2319 lt!2595791 lt!2595780 lambda!449041) lt!2595923)))

(declare-fun b_lambda!280475 () Bool)

(assert (=> (not b_lambda!280475) (not d!2263440)))

(declare-fun bs!1911385 () Bool)

(assert (= bs!1911385 d!2263440))

(assert (=> bs!1911385 m!7958838))

(declare-fun m!7959098 () Bool)

(assert (=> bs!1911385 m!7959098))

(declare-fun m!7959100 () Bool)

(assert (=> bs!1911385 m!7959100))

(assert (=> bs!1911385 m!7958850))

(assert (=> b!7272595 d!2263440))

(declare-fun lt!2595924 () List!70927)

(declare-fun e!4361201 () Bool)

(declare-fun b!7272757 () Bool)

(assert (=> b!7272757 (= e!4361201 (or (not (= (exprs!8246 ct2!346) Nil!70803)) (= lt!2595924 (exprs!8246 ct1!250))))))

(declare-fun b!7272755 () Bool)

(declare-fun e!4361202 () List!70927)

(assert (=> b!7272755 (= e!4361202 (Cons!70803 (h!77251 (exprs!8246 ct1!250)) (++!16706 (t!384999 (exprs!8246 ct1!250)) (exprs!8246 ct2!346))))))

(declare-fun b!7272756 () Bool)

(declare-fun res!2948141 () Bool)

(assert (=> b!7272756 (=> (not res!2948141) (not e!4361201))))

(assert (=> b!7272756 (= res!2948141 (= (size!41830 lt!2595924) (+ (size!41830 (exprs!8246 ct1!250)) (size!41830 (exprs!8246 ct2!346)))))))

(declare-fun d!2263442 () Bool)

(assert (=> d!2263442 e!4361201))

(declare-fun res!2948140 () Bool)

(assert (=> d!2263442 (=> (not res!2948140) (not e!4361201))))

(assert (=> d!2263442 (= res!2948140 (= (content!14782 lt!2595924) (set.union (content!14782 (exprs!8246 ct1!250)) (content!14782 (exprs!8246 ct2!346)))))))

(assert (=> d!2263442 (= lt!2595924 e!4361202)))

(declare-fun c!1354067 () Bool)

(assert (=> d!2263442 (= c!1354067 (is-Nil!70803 (exprs!8246 ct1!250)))))

(assert (=> d!2263442 (= (++!16706 (exprs!8246 ct1!250) (exprs!8246 ct2!346)) lt!2595924)))

(declare-fun b!7272754 () Bool)

(assert (=> b!7272754 (= e!4361202 (exprs!8246 ct2!346))))

(assert (= (and d!2263442 c!1354067) b!7272754))

(assert (= (and d!2263442 (not c!1354067)) b!7272755))

(assert (= (and d!2263442 res!2948140) b!7272756))

(assert (= (and b!7272756 res!2948141) b!7272757))

(declare-fun m!7959102 () Bool)

(assert (=> b!7272755 m!7959102))

(declare-fun m!7959104 () Bool)

(assert (=> b!7272756 m!7959104))

(declare-fun m!7959106 () Bool)

(assert (=> b!7272756 m!7959106))

(assert (=> b!7272756 m!7959082))

(declare-fun m!7959108 () Bool)

(assert (=> d!2263442 m!7959108))

(declare-fun m!7959110 () Bool)

(assert (=> d!2263442 m!7959110))

(assert (=> d!2263442 m!7959088))

(assert (=> b!7272595 d!2263442))

(declare-fun b!7272758 () Bool)

(declare-fun e!4361203 () (Set Context!15492))

(declare-fun call!663517 () (Set Context!15492))

(assert (=> b!7272758 (= e!4361203 call!663517)))

(declare-fun b!7272760 () Bool)

(declare-fun e!4361205 () Bool)

(assert (=> b!7272760 (= e!4361205 (nullable!8006 (h!77251 (exprs!8246 lt!2595780))))))

(declare-fun bm!663512 () Bool)

(assert (=> bm!663512 (= call!663517 (derivationStepZipperDown!2740 (h!77251 (exprs!8246 lt!2595780)) (Context!15493 (t!384999 (exprs!8246 lt!2595780))) (h!77252 s!7854)))))

(declare-fun e!4361204 () (Set Context!15492))

(declare-fun b!7272761 () Bool)

(assert (=> b!7272761 (= e!4361204 (set.union call!663517 (derivationStepZipperUp!2576 (Context!15493 (t!384999 (exprs!8246 lt!2595780))) (h!77252 s!7854))))))

(declare-fun b!7272762 () Bool)

(assert (=> b!7272762 (= e!4361203 (as set.empty (Set Context!15492)))))

(declare-fun d!2263444 () Bool)

(declare-fun c!1354068 () Bool)

(assert (=> d!2263444 (= c!1354068 e!4361205)))

(declare-fun res!2948142 () Bool)

(assert (=> d!2263444 (=> (not res!2948142) (not e!4361205))))

(assert (=> d!2263444 (= res!2948142 (is-Cons!70803 (exprs!8246 lt!2595780)))))

(assert (=> d!2263444 (= (derivationStepZipperUp!2576 lt!2595780 (h!77252 s!7854)) e!4361204)))

(declare-fun b!7272759 () Bool)

(assert (=> b!7272759 (= e!4361204 e!4361203)))

(declare-fun c!1354069 () Bool)

(assert (=> b!7272759 (= c!1354069 (is-Cons!70803 (exprs!8246 lt!2595780)))))

(assert (= (and d!2263444 res!2948142) b!7272760))

(assert (= (and d!2263444 c!1354068) b!7272761))

(assert (= (and d!2263444 (not c!1354068)) b!7272759))

(assert (= (and b!7272759 c!1354069) b!7272758))

(assert (= (and b!7272759 (not c!1354069)) b!7272762))

(assert (= (or b!7272761 b!7272758) bm!663512))

(declare-fun m!7959112 () Bool)

(assert (=> b!7272760 m!7959112))

(declare-fun m!7959114 () Bool)

(assert (=> bm!663512 m!7959114))

(declare-fun m!7959116 () Bool)

(assert (=> b!7272761 m!7959116))

(assert (=> b!7272595 d!2263444))

(declare-fun bs!1911386 () Bool)

(declare-fun d!2263446 () Bool)

(assert (= bs!1911386 (and d!2263446 b!7272595)))

(declare-fun lambda!449088 () Int)

(assert (=> bs!1911386 (= lambda!449088 lambda!449041)))

(assert (=> d!2263446 true))

(assert (=> d!2263446 (= (derivationStepZipper!3546 lt!2595791 (h!77252 s!7854)) (flatMap!2919 lt!2595791 lambda!449088))))

(declare-fun bs!1911387 () Bool)

(assert (= bs!1911387 d!2263446))

(declare-fun m!7959118 () Bool)

(assert (=> bs!1911387 m!7959118))

(assert (=> b!7272595 d!2263446))

(assert (=> b!7272595 d!2263406))

(declare-fun d!2263448 () Bool)

(assert (=> d!2263448 (= (flatMap!2919 lt!2595799 lambda!449041) (dynLambda!28946 lambda!449041 ct1!250))))

(declare-fun lt!2595925 () Unit!164230)

(assert (=> d!2263448 (= lt!2595925 (choose!56433 lt!2595799 ct1!250 lambda!449041))))

(assert (=> d!2263448 (= lt!2595799 (set.insert ct1!250 (as set.empty (Set Context!15492))))))

(assert (=> d!2263448 (= (lemmaFlatMapOnSingletonSet!2319 lt!2595799 ct1!250 lambda!449041) lt!2595925)))

(declare-fun b_lambda!280477 () Bool)

(assert (=> (not b_lambda!280477) (not d!2263448)))

(declare-fun bs!1911388 () Bool)

(assert (= bs!1911388 d!2263448))

(assert (=> bs!1911388 m!7958840))

(declare-fun m!7959120 () Bool)

(assert (=> bs!1911388 m!7959120))

(declare-fun m!7959122 () Bool)

(assert (=> bs!1911388 m!7959122))

(assert (=> bs!1911388 m!7958844))

(assert (=> b!7272595 d!2263448))

(declare-fun d!2263450 () Bool)

(declare-fun nullableFct!3162 (Regex!18806) Bool)

(assert (=> d!2263450 (= (nullable!8006 (h!77251 (exprs!8246 ct1!250))) (nullableFct!3162 (h!77251 (exprs!8246 ct1!250))))))

(declare-fun bs!1911389 () Bool)

(assert (= bs!1911389 d!2263450))

(declare-fun m!7959124 () Bool)

(assert (=> bs!1911389 m!7959124))

(assert (=> b!7272585 d!2263450))

(assert (=> b!7272585 d!2263434))

(declare-fun d!2263452 () Bool)

(assert (=> d!2263452 (= (tail!14514 (exprs!8246 ct1!250)) (t!384999 (exprs!8246 ct1!250)))))

(assert (=> b!7272585 d!2263452))

(declare-fun d!2263454 () Bool)

(declare-fun c!1354072 () Bool)

(assert (=> d!2263454 (= c!1354072 (isEmpty!40729 s!7854))))

(declare-fun e!4361206 () Bool)

(assert (=> d!2263454 (= (matchZipper!3710 (set.insert ct2!346 (as set.empty (Set Context!15492))) s!7854) e!4361206)))

(declare-fun b!7272765 () Bool)

(assert (=> b!7272765 (= e!4361206 (nullableZipper!3011 (set.insert ct2!346 (as set.empty (Set Context!15492)))))))

(declare-fun b!7272766 () Bool)

(assert (=> b!7272766 (= e!4361206 (matchZipper!3710 (derivationStepZipper!3546 (set.insert ct2!346 (as set.empty (Set Context!15492))) (head!15009 s!7854)) (tail!14516 s!7854)))))

(assert (= (and d!2263454 c!1354072) b!7272765))

(assert (= (and d!2263454 (not c!1354072)) b!7272766))

(assert (=> d!2263454 m!7958988))

(assert (=> b!7272765 m!7958820))

(declare-fun m!7959126 () Bool)

(assert (=> b!7272765 m!7959126))

(assert (=> b!7272766 m!7958992))

(assert (=> b!7272766 m!7958820))

(assert (=> b!7272766 m!7958992))

(declare-fun m!7959128 () Bool)

(assert (=> b!7272766 m!7959128))

(assert (=> b!7272766 m!7958996))

(assert (=> b!7272766 m!7959128))

(assert (=> b!7272766 m!7958996))

(declare-fun m!7959130 () Bool)

(assert (=> b!7272766 m!7959130))

(assert (=> start!709860 d!2263454))

(declare-fun bs!1911390 () Bool)

(declare-fun d!2263456 () Bool)

(assert (= bs!1911390 (and d!2263456 b!7272595)))

(declare-fun lambda!449091 () Int)

(assert (=> bs!1911390 (= lambda!449091 lambda!449040)))

(declare-fun bs!1911391 () Bool)

(assert (= bs!1911391 (and d!2263456 d!2263394)))

(assert (=> bs!1911391 (not (= lambda!449091 lambda!449082))))

(declare-fun bs!1911392 () Bool)

(assert (= bs!1911392 (and d!2263456 d!2263420)))

(assert (=> bs!1911392 (= lambda!449091 lambda!449085)))

(assert (=> d!2263456 (= (inv!90026 ct2!346) (forall!17635 (exprs!8246 ct2!346) lambda!449091))))

(declare-fun bs!1911393 () Bool)

(assert (= bs!1911393 d!2263456))

(declare-fun m!7959132 () Bool)

(assert (=> bs!1911393 m!7959132))

(assert (=> start!709860 d!2263456))

(declare-fun bs!1911394 () Bool)

(declare-fun d!2263458 () Bool)

(assert (= bs!1911394 (and d!2263458 b!7272595)))

(declare-fun lambda!449092 () Int)

(assert (=> bs!1911394 (= lambda!449092 lambda!449040)))

(declare-fun bs!1911395 () Bool)

(assert (= bs!1911395 (and d!2263458 d!2263394)))

(assert (=> bs!1911395 (not (= lambda!449092 lambda!449082))))

(declare-fun bs!1911396 () Bool)

(assert (= bs!1911396 (and d!2263458 d!2263420)))

(assert (=> bs!1911396 (= lambda!449092 lambda!449085)))

(declare-fun bs!1911397 () Bool)

(assert (= bs!1911397 (and d!2263458 d!2263456)))

(assert (=> bs!1911397 (= lambda!449092 lambda!449091)))

(assert (=> d!2263458 (= (inv!90026 ct1!250) (forall!17635 (exprs!8246 ct1!250) lambda!449092))))

(declare-fun bs!1911398 () Bool)

(assert (= bs!1911398 d!2263458))

(declare-fun m!7959134 () Bool)

(assert (=> bs!1911398 m!7959134))

(assert (=> start!709860 d!2263458))

(declare-fun b!7272771 () Bool)

(declare-fun e!4361209 () Bool)

(declare-fun tp!2041329 () Bool)

(declare-fun tp!2041330 () Bool)

(assert (=> b!7272771 (= e!4361209 (and tp!2041329 tp!2041330))))

(assert (=> b!7272593 (= tp!2041313 e!4361209)))

(assert (= (and b!7272593 (is-Cons!70803 (exprs!8246 ct2!346))) b!7272771))

(declare-fun b!7272772 () Bool)

(declare-fun e!4361210 () Bool)

(declare-fun tp!2041331 () Bool)

(declare-fun tp!2041332 () Bool)

(assert (=> b!7272772 (= e!4361210 (and tp!2041331 tp!2041332))))

(assert (=> b!7272584 (= tp!2041315 e!4361210)))

(assert (= (and b!7272584 (is-Cons!70803 (exprs!8246 ct1!250))) b!7272772))

(declare-fun b!7272777 () Bool)

(declare-fun e!4361213 () Bool)

(declare-fun tp!2041335 () Bool)

(assert (=> b!7272777 (= e!4361213 (and tp_is_empty!47077 tp!2041335))))

(assert (=> b!7272586 (= tp!2041314 e!4361213)))

(assert (= (and b!7272586 (is-Cons!70804 (t!385000 s!7854))) b!7272777))

(declare-fun b_lambda!280479 () Bool)

(assert (= b_lambda!280471 (or b!7272595 b_lambda!280479)))

(declare-fun bs!1911399 () Bool)

(declare-fun d!2263460 () Bool)

(assert (= bs!1911399 (and d!2263460 b!7272595)))

(assert (=> bs!1911399 (= (dynLambda!28946 lambda!449041 lt!2595783) (derivationStepZipperUp!2576 lt!2595783 (h!77252 s!7854)))))

(assert (=> bs!1911399 m!7958866))

(assert (=> d!2263422 d!2263460))

(declare-fun b_lambda!280481 () Bool)

(assert (= b_lambda!280473 (or b!7272595 b_lambda!280481)))

(declare-fun bs!1911400 () Bool)

(declare-fun d!2263462 () Bool)

(assert (= bs!1911400 (and d!2263462 b!7272595)))

(declare-fun validRegex!9590 (Regex!18806) Bool)

(assert (=> bs!1911400 (= (dynLambda!28945 lambda!449040 (h!77251 (exprs!8246 ct1!250))) (validRegex!9590 (h!77251 (exprs!8246 ct1!250))))))

(declare-fun m!7959136 () Bool)

(assert (=> bs!1911400 m!7959136))

(assert (=> b!7272724 d!2263462))

(declare-fun b_lambda!280483 () Bool)

(assert (= b_lambda!280477 (or b!7272595 b_lambda!280483)))

(declare-fun bs!1911401 () Bool)

(declare-fun d!2263464 () Bool)

(assert (= bs!1911401 (and d!2263464 b!7272595)))

(assert (=> bs!1911401 (= (dynLambda!28946 lambda!449041 ct1!250) (derivationStepZipperUp!2576 ct1!250 (h!77252 s!7854)))))

(assert (=> bs!1911401 m!7958836))

(assert (=> d!2263448 d!2263464))

(declare-fun b_lambda!280485 () Bool)

(assert (= b_lambda!280469 (or b!7272595 b_lambda!280485)))

(declare-fun bs!1911402 () Bool)

(declare-fun d!2263466 () Bool)

(assert (= bs!1911402 (and d!2263466 b!7272595)))

(assert (=> bs!1911402 (= (dynLambda!28945 lambda!449040 (h!77251 (exprs!8246 ct2!346))) (validRegex!9590 (h!77251 (exprs!8246 ct2!346))))))

(declare-fun m!7959138 () Bool)

(assert (=> bs!1911402 m!7959138))

(assert (=> b!7272652 d!2263466))

(declare-fun b_lambda!280487 () Bool)

(assert (= b_lambda!280475 (or b!7272595 b_lambda!280487)))

(declare-fun bs!1911403 () Bool)

(declare-fun d!2263468 () Bool)

(assert (= bs!1911403 (and d!2263468 b!7272595)))

(assert (=> bs!1911403 (= (dynLambda!28946 lambda!449041 lt!2595780) (derivationStepZipperUp!2576 lt!2595780 (h!77252 s!7854)))))

(assert (=> bs!1911403 m!7958854))

(assert (=> d!2263440 d!2263468))

(push 1)

(assert (not d!2263454))

(assert (not b!7272653))

(assert (not d!2263412))

(assert (not bs!1911403))

(assert (not d!2263402))

(assert (not b!7272710))

(assert (not bm!663512))

(assert (not bs!1911400))

(assert (not d!2263404))

(assert (not b!7272772))

(assert (not b!7272720))

(assert (not b!7272746))

(assert (not d!2263458))

(assert (not bm!663511))

(assert (not b!7272751))

(assert (not b!7272700))

(assert (not b!7272717))

(assert (not b!7272713))

(assert (not b!7272755))

(assert (not d!2263448))

(assert (not d!2263420))

(assert (not bm!663510))

(assert (not b!7272777))

(assert (not d!2263440))

(assert (not b_lambda!280485))

(assert (not bm!663496))

(assert (not bm!663504))

(assert (not b_lambda!280481))

(assert (not b!7272714))

(assert (not d!2263422))

(assert (not b!7272765))

(assert (not b!7272761))

(assert (not d!2263442))

(assert (not d!2263446))

(assert (not d!2263410))

(assert (not b!7272726))

(assert (not b!7272699))

(assert (not bs!1911402))

(assert (not b_lambda!280479))

(assert (not d!2263416))

(assert (not bm!663507))

(assert (not d!2263456))

(assert (not b!7272725))

(assert (not d!2263424))

(assert (not d!2263418))

(assert (not b_lambda!280483))

(assert (not b!7272706))

(assert (not b!7272747))

(assert (not b!7272760))

(assert (not b!7272722))

(assert (not bm!663500))

(assert (not d!2263436))

(assert (not b!7272712))

(assert (not b!7272721))

(assert (not bm!663506))

(assert (not d!2263406))

(assert (not b_lambda!280487))

(assert (not d!2263438))

(assert (not bm!663503))

(assert (not b!7272756))

(assert (not b!7272711))

(assert (not b!7272752))

(assert (not bm!663497))

(assert (not d!2263450))

(assert tp_is_empty!47077)

(assert (not d!2263394))

(assert (not b!7272718))

(assert (not d!2263430))

(assert (not d!2263408))

(assert (not b!7272766))

(assert (not b!7272771))

(assert (not bs!1911399))

(assert (not bs!1911401))

(assert (not b!7272676))

(assert (not b!7272707))

(assert (not b!7272723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

