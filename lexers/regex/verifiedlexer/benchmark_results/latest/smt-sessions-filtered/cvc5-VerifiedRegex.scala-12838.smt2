; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709152 () Bool)

(assert start!709152)

(declare-fun b!7268717 () Bool)

(assert (=> b!7268717 true))

(declare-fun b!7268710 () Bool)

(declare-fun e!4358827 () Bool)

(declare-fun tp!2040826 () Bool)

(assert (=> b!7268710 (= e!4358827 tp!2040826)))

(declare-fun b!7268711 () Bool)

(declare-fun res!2946725 () Bool)

(declare-fun e!4358828 () Bool)

(assert (=> b!7268711 (=> res!2946725 e!4358828)))

(declare-datatypes ((C!37842 0))(
  ( (C!37843 (val!28869 Int)) )
))
(declare-datatypes ((Regex!18784 0))(
  ( (ElementMatch!18784 (c!1352808 C!37842)) (Concat!27629 (regOne!38080 Regex!18784) (regTwo!38080 Regex!18784)) (EmptyExpr!18784) (Star!18784 (reg!19113 Regex!18784)) (EmptyLang!18784) (Union!18784 (regOne!38081 Regex!18784) (regTwo!38081 Regex!18784)) )
))
(declare-datatypes ((List!70883 0))(
  ( (Nil!70759) (Cons!70759 (h!77207 Regex!18784) (t!384953 List!70883)) )
))
(declare-datatypes ((Context!15448 0))(
  ( (Context!15449 (exprs!8224 List!70883)) )
))
(declare-fun ct1!250 () Context!15448)

(declare-fun isEmpty!40687 (List!70883) Bool)

(assert (=> b!7268711 (= res!2946725 (isEmpty!40687 (exprs!8224 ct1!250)))))

(declare-fun b!7268712 () Bool)

(declare-fun res!2946732 () Bool)

(declare-fun e!4358829 () Bool)

(assert (=> b!7268712 (=> (not res!2946732) (not e!4358829))))

(declare-fun nullableContext!274 (Context!15448) Bool)

(assert (=> b!7268712 (= res!2946732 (nullableContext!274 ct1!250))))

(declare-fun res!2946728 () Bool)

(assert (=> start!709152 (=> (not res!2946728) (not e!4358829))))

(declare-fun ct2!346 () Context!15448)

(declare-datatypes ((List!70884 0))(
  ( (Nil!70760) (Cons!70760 (h!77208 C!37842) (t!384954 List!70884)) )
))
(declare-fun s!7854 () List!70884)

(declare-fun matchZipper!3688 ((Set Context!15448) List!70884) Bool)

(assert (=> start!709152 (= res!2946728 (matchZipper!3688 (set.insert ct2!346 (as set.empty (Set Context!15448))) s!7854))))

(assert (=> start!709152 e!4358829))

(declare-fun inv!89971 (Context!15448) Bool)

(assert (=> start!709152 (and (inv!89971 ct2!346) e!4358827)))

(declare-fun e!4358826 () Bool)

(assert (=> start!709152 e!4358826))

(declare-fun e!4358830 () Bool)

(assert (=> start!709152 (and (inv!89971 ct1!250) e!4358830)))

(declare-fun b!7268713 () Bool)

(declare-fun tp!2040825 () Bool)

(assert (=> b!7268713 (= e!4358830 tp!2040825)))

(declare-fun b!7268714 () Bool)

(declare-fun res!2946731 () Bool)

(declare-fun e!4358832 () Bool)

(assert (=> b!7268714 (=> res!2946731 e!4358832)))

(declare-fun lt!2593561 () (Set Context!15448))

(declare-fun lt!2593577 () Context!15448)

(declare-fun derivationStepZipperDown!2718 (Regex!18784 Context!15448 C!37842) (Set Context!15448))

(declare-fun derivationStepZipperUp!2554 (Context!15448 C!37842) (Set Context!15448))

(assert (=> b!7268714 (= res!2946731 (not (= lt!2593561 (set.union (derivationStepZipperDown!2718 (h!77207 (exprs!8224 ct1!250)) lt!2593577 (h!77208 s!7854)) (derivationStepZipperUp!2554 lt!2593577 (h!77208 s!7854))))))))

(declare-fun b!7268715 () Bool)

(declare-fun res!2946726 () Bool)

(assert (=> b!7268715 (=> res!2946726 e!4358828)))

(assert (=> b!7268715 (= res!2946726 (not (is-Cons!70759 (exprs!8224 ct1!250))))))

(declare-fun b!7268716 () Bool)

(declare-fun e!4358831 () Bool)

(assert (=> b!7268716 (= e!4358831 true)))

(declare-fun lambda!448022 () Int)

(declare-datatypes ((Unit!164186 0))(
  ( (Unit!164187) )
))
(declare-fun lt!2593565 () Unit!164186)

(declare-fun lt!2593571 () List!70883)

(declare-fun lemmaConcatPreservesForall!1541 (List!70883 List!70883 Int) Unit!164186)

(assert (=> b!7268716 (= lt!2593565 (lemmaConcatPreservesForall!1541 lt!2593571 (exprs!8224 ct2!346) lambda!448022))))

(declare-fun lt!2593569 () Unit!164186)

(assert (=> b!7268716 (= lt!2593569 (lemmaConcatPreservesForall!1541 lt!2593571 (exprs!8224 ct2!346) lambda!448022))))

(declare-fun lt!2593564 () Unit!164186)

(assert (=> b!7268716 (= lt!2593564 (lemmaConcatPreservesForall!1541 lt!2593571 (exprs!8224 ct2!346) lambda!448022))))

(declare-fun lt!2593576 () Context!15448)

(assert (=> b!7268716 (matchZipper!3688 (set.insert lt!2593576 (as set.empty (Set Context!15448))) s!7854)))

(declare-fun lt!2593578 () Unit!164186)

(assert (=> b!7268716 (= lt!2593578 (lemmaConcatPreservesForall!1541 lt!2593571 (exprs!8224 ct2!346) lambda!448022))))

(declare-fun lt!2593567 () Unit!164186)

(declare-fun lemmaPrependingNullableCtxStillMatches!21 (Context!15448 Context!15448 List!70884) Unit!164186)

(assert (=> b!7268716 (= lt!2593567 (lemmaPrependingNullableCtxStillMatches!21 lt!2593577 ct2!346 s!7854))))

(assert (=> b!7268717 (= e!4358829 (not e!4358828))))

(declare-fun res!2946727 () Bool)

(assert (=> b!7268717 (=> res!2946727 e!4358828)))

(declare-fun lt!2593573 () (Set Context!15448))

(declare-fun lt!2593574 () (Set Context!15448))

(declare-fun derivationStepZipper!3524 ((Set Context!15448) C!37842) (Set Context!15448))

(assert (=> b!7268717 (= res!2946727 (not (= lt!2593574 (derivationStepZipper!3524 lt!2593573 (h!77208 s!7854)))))))

(declare-fun lt!2593570 () Unit!164186)

(assert (=> b!7268717 (= lt!2593570 (lemmaConcatPreservesForall!1541 (exprs!8224 ct1!250) (exprs!8224 ct2!346) lambda!448022))))

(declare-fun lambda!448023 () Int)

(declare-fun lt!2593566 () Context!15448)

(declare-fun flatMap!2897 ((Set Context!15448) Int) (Set Context!15448))

(assert (=> b!7268717 (= (flatMap!2897 lt!2593573 lambda!448023) (derivationStepZipperUp!2554 lt!2593566 (h!77208 s!7854)))))

(declare-fun lt!2593562 () Unit!164186)

(declare-fun lemmaFlatMapOnSingletonSet!2297 ((Set Context!15448) Context!15448 Int) Unit!164186)

(assert (=> b!7268717 (= lt!2593562 (lemmaFlatMapOnSingletonSet!2297 lt!2593573 lt!2593566 lambda!448023))))

(assert (=> b!7268717 (= lt!2593573 (set.insert lt!2593566 (as set.empty (Set Context!15448))))))

(declare-fun lt!2593575 () Unit!164186)

(assert (=> b!7268717 (= lt!2593575 (lemmaConcatPreservesForall!1541 (exprs!8224 ct1!250) (exprs!8224 ct2!346) lambda!448022))))

(declare-fun lt!2593568 () Unit!164186)

(assert (=> b!7268717 (= lt!2593568 (lemmaConcatPreservesForall!1541 (exprs!8224 ct1!250) (exprs!8224 ct2!346) lambda!448022))))

(declare-fun lt!2593559 () (Set Context!15448))

(assert (=> b!7268717 (= (flatMap!2897 lt!2593559 lambda!448023) (derivationStepZipperUp!2554 ct1!250 (h!77208 s!7854)))))

(declare-fun lt!2593563 () Unit!164186)

(assert (=> b!7268717 (= lt!2593563 (lemmaFlatMapOnSingletonSet!2297 lt!2593559 ct1!250 lambda!448023))))

(assert (=> b!7268717 (= lt!2593559 (set.insert ct1!250 (as set.empty (Set Context!15448))))))

(assert (=> b!7268717 (= lt!2593574 (derivationStepZipperUp!2554 lt!2593566 (h!77208 s!7854)))))

(declare-fun ++!16684 (List!70883 List!70883) List!70883)

(assert (=> b!7268717 (= lt!2593566 (Context!15449 (++!16684 (exprs!8224 ct1!250) (exprs!8224 ct2!346))))))

(declare-fun lt!2593572 () Unit!164186)

(assert (=> b!7268717 (= lt!2593572 (lemmaConcatPreservesForall!1541 (exprs!8224 ct1!250) (exprs!8224 ct2!346) lambda!448022))))

(declare-fun b!7268718 () Bool)

(declare-fun tp_is_empty!47033 () Bool)

(declare-fun tp!2040827 () Bool)

(assert (=> b!7268718 (= e!4358826 (and tp_is_empty!47033 tp!2040827))))

(declare-fun b!7268719 () Bool)

(assert (=> b!7268719 (= e!4358828 e!4358832)))

(declare-fun res!2946729 () Bool)

(assert (=> b!7268719 (=> res!2946729 e!4358832)))

(declare-fun nullable!7984 (Regex!18784) Bool)

(assert (=> b!7268719 (= res!2946729 (not (nullable!7984 (h!77207 (exprs!8224 ct1!250)))))))

(assert (=> b!7268719 (= lt!2593561 (derivationStepZipperUp!2554 ct1!250 (h!77208 s!7854)))))

(assert (=> b!7268719 (= lt!2593577 (Context!15449 lt!2593571))))

(declare-fun tail!14474 (List!70883) List!70883)

(assert (=> b!7268719 (= lt!2593571 (tail!14474 (exprs!8224 ct1!250)))))

(declare-fun b!7268720 () Bool)

(assert (=> b!7268720 (= e!4358832 e!4358831)))

(declare-fun res!2946724 () Bool)

(assert (=> b!7268720 (=> res!2946724 e!4358831)))

(assert (=> b!7268720 (= res!2946724 (not (= lt!2593574 (set.union (derivationStepZipperDown!2718 (h!77207 (exprs!8224 ct1!250)) lt!2593576 (h!77208 s!7854)) (derivationStepZipperUp!2554 lt!2593576 (h!77208 s!7854))))))))

(assert (=> b!7268720 (= lt!2593576 (Context!15449 (++!16684 lt!2593571 (exprs!8224 ct2!346))))))

(declare-fun lt!2593560 () Unit!164186)

(assert (=> b!7268720 (= lt!2593560 (lemmaConcatPreservesForall!1541 lt!2593571 (exprs!8224 ct2!346) lambda!448022))))

(declare-fun lt!2593558 () Unit!164186)

(assert (=> b!7268720 (= lt!2593558 (lemmaConcatPreservesForall!1541 lt!2593571 (exprs!8224 ct2!346) lambda!448022))))

(declare-fun b!7268721 () Bool)

(declare-fun res!2946730 () Bool)

(assert (=> b!7268721 (=> (not res!2946730) (not e!4358829))))

(assert (=> b!7268721 (= res!2946730 (is-Cons!70760 s!7854))))

(assert (= (and start!709152 res!2946728) b!7268712))

(assert (= (and b!7268712 res!2946732) b!7268721))

(assert (= (and b!7268721 res!2946730) b!7268717))

(assert (= (and b!7268717 (not res!2946727)) b!7268715))

(assert (= (and b!7268715 (not res!2946726)) b!7268711))

(assert (= (and b!7268711 (not res!2946725)) b!7268719))

(assert (= (and b!7268719 (not res!2946729)) b!7268714))

(assert (= (and b!7268714 (not res!2946731)) b!7268720))

(assert (= (and b!7268720 (not res!2946724)) b!7268716))

(assert (= start!709152 b!7268710))

(assert (= (and start!709152 (is-Cons!70760 s!7854)) b!7268718))

(assert (= start!709152 b!7268713))

(declare-fun m!7953790 () Bool)

(assert (=> b!7268716 m!7953790))

(assert (=> b!7268716 m!7953790))

(declare-fun m!7953792 () Bool)

(assert (=> b!7268716 m!7953792))

(assert (=> b!7268716 m!7953790))

(declare-fun m!7953794 () Bool)

(assert (=> b!7268716 m!7953794))

(assert (=> b!7268716 m!7953794))

(declare-fun m!7953796 () Bool)

(assert (=> b!7268716 m!7953796))

(assert (=> b!7268716 m!7953790))

(declare-fun m!7953798 () Bool)

(assert (=> start!709152 m!7953798))

(assert (=> start!709152 m!7953798))

(declare-fun m!7953800 () Bool)

(assert (=> start!709152 m!7953800))

(declare-fun m!7953802 () Bool)

(assert (=> start!709152 m!7953802))

(declare-fun m!7953804 () Bool)

(assert (=> start!709152 m!7953804))

(declare-fun m!7953806 () Bool)

(assert (=> b!7268719 m!7953806))

(declare-fun m!7953808 () Bool)

(assert (=> b!7268719 m!7953808))

(declare-fun m!7953810 () Bool)

(assert (=> b!7268719 m!7953810))

(declare-fun m!7953812 () Bool)

(assert (=> b!7268717 m!7953812))

(declare-fun m!7953814 () Bool)

(assert (=> b!7268717 m!7953814))

(declare-fun m!7953816 () Bool)

(assert (=> b!7268717 m!7953816))

(declare-fun m!7953818 () Bool)

(assert (=> b!7268717 m!7953818))

(assert (=> b!7268717 m!7953808))

(declare-fun m!7953820 () Bool)

(assert (=> b!7268717 m!7953820))

(declare-fun m!7953822 () Bool)

(assert (=> b!7268717 m!7953822))

(assert (=> b!7268717 m!7953814))

(declare-fun m!7953824 () Bool)

(assert (=> b!7268717 m!7953824))

(assert (=> b!7268717 m!7953814))

(declare-fun m!7953826 () Bool)

(assert (=> b!7268717 m!7953826))

(declare-fun m!7953828 () Bool)

(assert (=> b!7268717 m!7953828))

(assert (=> b!7268717 m!7953814))

(declare-fun m!7953830 () Bool)

(assert (=> b!7268717 m!7953830))

(declare-fun m!7953832 () Bool)

(assert (=> b!7268714 m!7953832))

(declare-fun m!7953834 () Bool)

(assert (=> b!7268714 m!7953834))

(declare-fun m!7953836 () Bool)

(assert (=> b!7268720 m!7953836))

(assert (=> b!7268720 m!7953790))

(declare-fun m!7953838 () Bool)

(assert (=> b!7268720 m!7953838))

(declare-fun m!7953840 () Bool)

(assert (=> b!7268720 m!7953840))

(assert (=> b!7268720 m!7953790))

(declare-fun m!7953842 () Bool)

(assert (=> b!7268711 m!7953842))

(declare-fun m!7953844 () Bool)

(assert (=> b!7268712 m!7953844))

(push 1)

(assert (not b!7268714))

(assert (not b!7268720))

(assert tp_is_empty!47033)

(assert (not b!7268718))

(assert (not b!7268711))

(assert (not b!7268712))

(assert (not b!7268719))

(assert (not b!7268716))

(assert (not start!709152))

(assert (not b!7268713))

(assert (not b!7268717))

(assert (not b!7268710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

