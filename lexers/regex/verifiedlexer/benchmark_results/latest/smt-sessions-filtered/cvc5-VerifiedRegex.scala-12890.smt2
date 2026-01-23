; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711800 () Bool)

(assert start!711800)

(declare-fun b!7299065 () Bool)

(assert (=> b!7299065 true))

(declare-fun b!7299059 () Bool)

(declare-fun e!4371655 () Bool)

(assert (=> b!7299059 (= e!4371655 true)))

(declare-datatypes ((C!38050 0))(
  ( (C!38051 (val!28973 Int)) )
))
(declare-datatypes ((Regex!18888 0))(
  ( (ElementMatch!18888 (c!1356996 C!38050)) (Concat!27733 (regOne!38288 Regex!18888) (regTwo!38288 Regex!18888)) (EmptyExpr!18888) (Star!18888 (reg!19217 Regex!18888)) (EmptyLang!18888) (Union!18888 (regOne!38289 Regex!18888) (regTwo!38289 Regex!18888)) )
))
(declare-datatypes ((List!71093 0))(
  ( (Nil!70969) (Cons!70969 (h!77417 Regex!18888) (t!385171 List!71093)) )
))
(declare-datatypes ((Context!15656 0))(
  ( (Context!15657 (exprs!8328 List!71093)) )
))
(declare-fun ct1!250 () Context!15656)

(declare-fun lambda!451296 () Int)

(declare-datatypes ((Unit!164374 0))(
  ( (Unit!164375) )
))
(declare-fun lt!2599920 () Unit!164374)

(declare-fun ct2!346 () Context!15656)

(declare-fun lemmaConcatPreservesForall!1635 (List!71093 List!71093 Int) Unit!164374)

(assert (=> b!7299059 (= lt!2599920 (lemmaConcatPreservesForall!1635 (exprs!8328 ct1!250) (exprs!8328 ct2!346) lambda!451296))))

(declare-fun b!7299060 () Bool)

(declare-fun res!2952028 () Bool)

(declare-fun e!4371654 () Bool)

(assert (=> b!7299060 (=> (not res!2952028) (not e!4371654))))

(declare-fun nullableContext!378 (Context!15656) Bool)

(assert (=> b!7299060 (= res!2952028 (nullableContext!378 ct1!250))))

(declare-fun b!7299061 () Bool)

(declare-fun e!4371652 () Bool)

(declare-fun tp_is_empty!47241 () Bool)

(declare-fun tp!2062849 () Bool)

(assert (=> b!7299061 (= e!4371652 (and tp_is_empty!47241 tp!2062849))))

(declare-fun b!7299062 () Bool)

(declare-fun e!4371650 () Bool)

(declare-fun tp!2062851 () Bool)

(assert (=> b!7299062 (= e!4371650 tp!2062851)))

(declare-fun b!7299063 () Bool)

(declare-fun e!4371651 () Bool)

(declare-fun tp!2062850 () Bool)

(assert (=> b!7299063 (= e!4371651 tp!2062850)))

(declare-fun b!7299064 () Bool)

(declare-fun e!4371653 () Bool)

(assert (=> b!7299064 (= e!4371653 e!4371655)))

(declare-fun res!2952029 () Bool)

(assert (=> b!7299064 (=> res!2952029 e!4371655)))

(declare-fun lt!2599914 () (Set Context!15656))

(declare-datatypes ((List!71094 0))(
  ( (Nil!70970) (Cons!70970 (h!77418 C!38050) (t!385172 List!71094)) )
))
(declare-fun s!7854 () List!71094)

(declare-fun matchZipper!3792 ((Set Context!15656) List!71094) Bool)

(assert (=> b!7299064 (= res!2952029 (not (matchZipper!3792 lt!2599914 s!7854)))))

(declare-fun lt!2599925 () Unit!164374)

(assert (=> b!7299064 (= lt!2599925 (lemmaConcatPreservesForall!1635 (exprs!8328 ct1!250) (exprs!8328 ct2!346) lambda!451296))))

(declare-fun b!7299058 () Bool)

(declare-fun res!2952026 () Bool)

(assert (=> b!7299058 (=> (not res!2952026) (not e!4371654))))

(assert (=> b!7299058 (= res!2952026 (is-Cons!70970 s!7854))))

(declare-fun res!2952031 () Bool)

(assert (=> start!711800 (=> (not res!2952031) (not e!4371654))))

(assert (=> start!711800 (= res!2952031 (matchZipper!3792 (set.insert ct2!346 (as set.empty (Set Context!15656))) s!7854))))

(assert (=> start!711800 e!4371654))

(declare-fun inv!90231 (Context!15656) Bool)

(assert (=> start!711800 (and (inv!90231 ct2!346) e!4371651)))

(assert (=> start!711800 e!4371652))

(assert (=> start!711800 (and (inv!90231 ct1!250) e!4371650)))

(assert (=> b!7299065 (= e!4371654 (not e!4371653))))

(declare-fun res!2952027 () Bool)

(assert (=> b!7299065 (=> res!2952027 e!4371653)))

(declare-fun lt!2599924 () (Set Context!15656))

(declare-fun derivationStepZipper!3621 ((Set Context!15656) C!38050) (Set Context!15656))

(assert (=> b!7299065 (= res!2952027 (not (= lt!2599924 (derivationStepZipper!3621 lt!2599914 (h!77418 s!7854)))))))

(declare-fun lt!2599916 () Unit!164374)

(assert (=> b!7299065 (= lt!2599916 (lemmaConcatPreservesForall!1635 (exprs!8328 ct1!250) (exprs!8328 ct2!346) lambda!451296))))

(declare-fun lambda!451297 () Int)

(declare-fun lt!2599915 () Context!15656)

(declare-fun flatMap!2983 ((Set Context!15656) Int) (Set Context!15656))

(declare-fun derivationStepZipperUp!2638 (Context!15656 C!38050) (Set Context!15656))

(assert (=> b!7299065 (= (flatMap!2983 lt!2599914 lambda!451297) (derivationStepZipperUp!2638 lt!2599915 (h!77418 s!7854)))))

(declare-fun lt!2599917 () Unit!164374)

(declare-fun lemmaFlatMapOnSingletonSet!2381 ((Set Context!15656) Context!15656 Int) Unit!164374)

(assert (=> b!7299065 (= lt!2599917 (lemmaFlatMapOnSingletonSet!2381 lt!2599914 lt!2599915 lambda!451297))))

(assert (=> b!7299065 (= lt!2599914 (set.insert lt!2599915 (as set.empty (Set Context!15656))))))

(declare-fun lt!2599918 () Unit!164374)

(assert (=> b!7299065 (= lt!2599918 (lemmaConcatPreservesForall!1635 (exprs!8328 ct1!250) (exprs!8328 ct2!346) lambda!451296))))

(declare-fun lt!2599922 () Unit!164374)

(assert (=> b!7299065 (= lt!2599922 (lemmaConcatPreservesForall!1635 (exprs!8328 ct1!250) (exprs!8328 ct2!346) lambda!451296))))

(declare-fun lt!2599921 () (Set Context!15656))

(assert (=> b!7299065 (= (flatMap!2983 lt!2599921 lambda!451297) (derivationStepZipperUp!2638 ct1!250 (h!77418 s!7854)))))

(declare-fun lt!2599919 () Unit!164374)

(assert (=> b!7299065 (= lt!2599919 (lemmaFlatMapOnSingletonSet!2381 lt!2599921 ct1!250 lambda!451297))))

(assert (=> b!7299065 (= lt!2599921 (set.insert ct1!250 (as set.empty (Set Context!15656))))))

(assert (=> b!7299065 (= lt!2599924 (derivationStepZipperUp!2638 lt!2599915 (h!77418 s!7854)))))

(declare-fun ++!16778 (List!71093 List!71093) List!71093)

(assert (=> b!7299065 (= lt!2599915 (Context!15657 (++!16778 (exprs!8328 ct1!250) (exprs!8328 ct2!346))))))

(declare-fun lt!2599923 () Unit!164374)

(assert (=> b!7299065 (= lt!2599923 (lemmaConcatPreservesForall!1635 (exprs!8328 ct1!250) (exprs!8328 ct2!346) lambda!451296))))

(declare-fun b!7299066 () Bool)

(declare-fun res!2952030 () Bool)

(assert (=> b!7299066 (=> res!2952030 e!4371653)))

(assert (=> b!7299066 (= res!2952030 (is-Cons!70969 (exprs!8328 ct1!250)))))

(assert (= (and start!711800 res!2952031) b!7299060))

(assert (= (and b!7299060 res!2952028) b!7299058))

(assert (= (and b!7299058 res!2952026) b!7299065))

(assert (= (and b!7299065 (not res!2952027)) b!7299066))

(assert (= (and b!7299066 (not res!2952030)) b!7299064))

(assert (= (and b!7299064 (not res!2952029)) b!7299059))

(assert (= start!711800 b!7299063))

(assert (= (and start!711800 (is-Cons!70970 s!7854)) b!7299061))

(assert (= start!711800 b!7299062))

(declare-fun m!7971826 () Bool)

(assert (=> b!7299060 m!7971826))

(declare-fun m!7971828 () Bool)

(assert (=> b!7299065 m!7971828))

(declare-fun m!7971830 () Bool)

(assert (=> b!7299065 m!7971830))

(declare-fun m!7971832 () Bool)

(assert (=> b!7299065 m!7971832))

(declare-fun m!7971834 () Bool)

(assert (=> b!7299065 m!7971834))

(declare-fun m!7971836 () Bool)

(assert (=> b!7299065 m!7971836))

(assert (=> b!7299065 m!7971834))

(declare-fun m!7971838 () Bool)

(assert (=> b!7299065 m!7971838))

(declare-fun m!7971840 () Bool)

(assert (=> b!7299065 m!7971840))

(declare-fun m!7971842 () Bool)

(assert (=> b!7299065 m!7971842))

(assert (=> b!7299065 m!7971834))

(declare-fun m!7971844 () Bool)

(assert (=> b!7299065 m!7971844))

(assert (=> b!7299065 m!7971834))

(declare-fun m!7971846 () Bool)

(assert (=> b!7299065 m!7971846))

(declare-fun m!7971848 () Bool)

(assert (=> b!7299065 m!7971848))

(declare-fun m!7971850 () Bool)

(assert (=> b!7299064 m!7971850))

(assert (=> b!7299064 m!7971834))

(declare-fun m!7971852 () Bool)

(assert (=> start!711800 m!7971852))

(assert (=> start!711800 m!7971852))

(declare-fun m!7971854 () Bool)

(assert (=> start!711800 m!7971854))

(declare-fun m!7971856 () Bool)

(assert (=> start!711800 m!7971856))

(declare-fun m!7971858 () Bool)

(assert (=> start!711800 m!7971858))

(assert (=> b!7299059 m!7971834))

(push 1)

(assert (not b!7299062))

(assert (not start!711800))

(assert (not b!7299065))

(assert (not b!7299061))

(assert (not b!7299060))

(assert tp_is_empty!47241)

(assert (not b!7299063))

(assert (not b!7299064))

(assert (not b!7299059))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

