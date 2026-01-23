; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709284 () Bool)

(assert start!709284)

(declare-fun b!7269430 () Bool)

(assert (=> b!7269430 true))

(declare-fun b!7269418 () Bool)

(declare-fun e!4359238 () Bool)

(declare-fun e!4359237 () Bool)

(assert (=> b!7269418 (= e!4359238 e!4359237)))

(declare-fun res!2946997 () Bool)

(assert (=> b!7269418 (=> res!2946997 e!4359237)))

(declare-datatypes ((C!37854 0))(
  ( (C!37855 (val!28875 Int)) )
))
(declare-datatypes ((Regex!18790 0))(
  ( (ElementMatch!18790 (c!1353020 C!37854)) (Concat!27635 (regOne!38092 Regex!18790) (regTwo!38092 Regex!18790)) (EmptyExpr!18790) (Star!18790 (reg!19119 Regex!18790)) (EmptyLang!18790) (Union!18790 (regOne!38093 Regex!18790) (regTwo!38093 Regex!18790)) )
))
(declare-datatypes ((List!70895 0))(
  ( (Nil!70771) (Cons!70771 (h!77219 Regex!18790) (t!384965 List!70895)) )
))
(declare-datatypes ((Context!15460 0))(
  ( (Context!15461 (exprs!8230 List!70895)) )
))
(declare-fun lt!2594060 () (Set Context!15460))

(declare-datatypes ((List!70896 0))(
  ( (Nil!70772) (Cons!70772 (h!77220 C!37854) (t!384966 List!70896)) )
))
(declare-fun s!7854 () List!70896)

(declare-fun matchZipper!3694 ((Set Context!15460) List!70896) Bool)

(assert (=> b!7269418 (= res!2946997 (not (matchZipper!3694 lt!2594060 (t!384966 s!7854))))))

(declare-datatypes ((Unit!164198 0))(
  ( (Unit!164199) )
))
(declare-fun lt!2594056 () Unit!164198)

(declare-fun lt!2594068 () List!70895)

(declare-fun lambda!448252 () Int)

(declare-fun ct2!346 () Context!15460)

(declare-fun lemmaConcatPreservesForall!1547 (List!70895 List!70895 Int) Unit!164198)

(assert (=> b!7269418 (= lt!2594056 (lemmaConcatPreservesForall!1547 lt!2594068 (exprs!8230 ct2!346) lambda!448252))))

(declare-fun lambda!448253 () Int)

(declare-fun lt!2594059 () Context!15460)

(declare-fun lt!2594063 () (Set Context!15460))

(declare-fun flatMap!2903 ((Set Context!15460) Int) (Set Context!15460))

(declare-fun derivationStepZipperUp!2560 (Context!15460 C!37854) (Set Context!15460))

(assert (=> b!7269418 (= (flatMap!2903 lt!2594063 lambda!448253) (derivationStepZipperUp!2560 lt!2594059 (h!77220 s!7854)))))

(declare-fun lt!2594071 () Unit!164198)

(declare-fun lemmaFlatMapOnSingletonSet!2303 ((Set Context!15460) Context!15460 Int) Unit!164198)

(assert (=> b!7269418 (= lt!2594071 (lemmaFlatMapOnSingletonSet!2303 lt!2594063 lt!2594059 lambda!448253))))

(declare-fun lt!2594048 () Unit!164198)

(assert (=> b!7269418 (= lt!2594048 (lemmaConcatPreservesForall!1547 lt!2594068 (exprs!8230 ct2!346) lambda!448252))))

(declare-fun lt!2594054 () Unit!164198)

(assert (=> b!7269418 (= lt!2594054 (lemmaConcatPreservesForall!1547 lt!2594068 (exprs!8230 ct2!346) lambda!448252))))

(declare-fun lt!2594046 () Unit!164198)

(assert (=> b!7269418 (= lt!2594046 (lemmaConcatPreservesForall!1547 lt!2594068 (exprs!8230 ct2!346) lambda!448252))))

(assert (=> b!7269418 (matchZipper!3694 lt!2594063 s!7854)))

(assert (=> b!7269418 (= lt!2594063 (set.insert lt!2594059 (as set.empty (Set Context!15460))))))

(declare-fun lt!2594052 () Unit!164198)

(assert (=> b!7269418 (= lt!2594052 (lemmaConcatPreservesForall!1547 lt!2594068 (exprs!8230 ct2!346) lambda!448252))))

(declare-fun lt!2594069 () Context!15460)

(declare-fun lt!2594047 () Unit!164198)

(declare-fun lemmaPrependingNullableCtxStillMatches!27 (Context!15460 Context!15460 List!70896) Unit!164198)

(assert (=> b!7269418 (= lt!2594047 (lemmaPrependingNullableCtxStillMatches!27 lt!2594069 ct2!346 s!7854))))

(declare-fun b!7269419 () Bool)

(declare-fun res!2946996 () Bool)

(declare-fun e!4359235 () Bool)

(assert (=> b!7269419 (=> res!2946996 e!4359235)))

(declare-fun ct1!250 () Context!15460)

(declare-fun isEmpty!40697 (List!70895) Bool)

(assert (=> b!7269419 (= res!2946996 (isEmpty!40697 (exprs!8230 ct1!250)))))

(declare-fun res!2946995 () Bool)

(declare-fun e!4359232 () Bool)

(assert (=> start!709284 (=> (not res!2946995) (not e!4359232))))

(assert (=> start!709284 (= res!2946995 (matchZipper!3694 (set.insert ct2!346 (as set.empty (Set Context!15460))) s!7854))))

(assert (=> start!709284 e!4359232))

(declare-fun e!4359236 () Bool)

(declare-fun inv!89986 (Context!15460) Bool)

(assert (=> start!709284 (and (inv!89986 ct2!346) e!4359236)))

(declare-fun e!4359233 () Bool)

(assert (=> start!709284 e!4359233))

(declare-fun e!4359239 () Bool)

(assert (=> start!709284 (and (inv!89986 ct1!250) e!4359239)))

(declare-fun b!7269420 () Bool)

(declare-fun e!4359234 () Bool)

(assert (=> b!7269420 (= e!4359235 e!4359234)))

(declare-fun res!2947003 () Bool)

(assert (=> b!7269420 (=> res!2947003 e!4359234)))

(declare-fun nullable!7990 (Regex!18790) Bool)

(assert (=> b!7269420 (= res!2947003 (not (nullable!7990 (h!77219 (exprs!8230 ct1!250)))))))

(declare-fun lt!2594058 () (Set Context!15460))

(assert (=> b!7269420 (= lt!2594058 (derivationStepZipperUp!2560 ct1!250 (h!77220 s!7854)))))

(assert (=> b!7269420 (= lt!2594069 (Context!15461 lt!2594068))))

(declare-fun tail!14484 (List!70895) List!70895)

(assert (=> b!7269420 (= lt!2594068 (tail!14484 (exprs!8230 ct1!250)))))

(declare-fun b!7269421 () Bool)

(declare-fun res!2946994 () Bool)

(assert (=> b!7269421 (=> (not res!2946994) (not e!4359232))))

(assert (=> b!7269421 (= res!2946994 (is-Cons!70772 s!7854))))

(declare-fun b!7269422 () Bool)

(declare-fun res!2946998 () Bool)

(assert (=> b!7269422 (=> res!2946998 e!4359235)))

(assert (=> b!7269422 (= res!2946998 (not (is-Cons!70771 (exprs!8230 ct1!250))))))

(declare-fun b!7269423 () Bool)

(declare-fun tp!2040925 () Bool)

(assert (=> b!7269423 (= e!4359236 tp!2040925)))

(declare-fun b!7269424 () Bool)

(assert (=> b!7269424 (= e!4359234 e!4359238)))

(declare-fun res!2947000 () Bool)

(assert (=> b!7269424 (=> res!2947000 e!4359238)))

(declare-fun lt!2594066 () (Set Context!15460))

(declare-fun lt!2594067 () (Set Context!15460))

(assert (=> b!7269424 (= res!2947000 (not (= lt!2594066 (set.union lt!2594067 lt!2594060))))))

(assert (=> b!7269424 (= lt!2594060 (derivationStepZipperUp!2560 lt!2594059 (h!77220 s!7854)))))

(declare-fun derivationStepZipperDown!2724 (Regex!18790 Context!15460 C!37854) (Set Context!15460))

(assert (=> b!7269424 (= lt!2594067 (derivationStepZipperDown!2724 (h!77219 (exprs!8230 ct1!250)) lt!2594059 (h!77220 s!7854)))))

(declare-fun ++!16690 (List!70895 List!70895) List!70895)

(assert (=> b!7269424 (= lt!2594059 (Context!15461 (++!16690 lt!2594068 (exprs!8230 ct2!346))))))

(declare-fun lt!2594053 () Unit!164198)

(assert (=> b!7269424 (= lt!2594053 (lemmaConcatPreservesForall!1547 lt!2594068 (exprs!8230 ct2!346) lambda!448252))))

(declare-fun lt!2594070 () Unit!164198)

(assert (=> b!7269424 (= lt!2594070 (lemmaConcatPreservesForall!1547 lt!2594068 (exprs!8230 ct2!346) lambda!448252))))

(declare-fun b!7269425 () Bool)

(declare-fun res!2947002 () Bool)

(assert (=> b!7269425 (=> res!2947002 e!4359234)))

(assert (=> b!7269425 (= res!2947002 (not (= lt!2594058 (set.union (derivationStepZipperDown!2724 (h!77219 (exprs!8230 ct1!250)) lt!2594069 (h!77220 s!7854)) (derivationStepZipperUp!2560 lt!2594069 (h!77220 s!7854))))))))

(declare-fun b!7269426 () Bool)

(declare-fun tp_is_empty!47045 () Bool)

(declare-fun tp!2040923 () Bool)

(assert (=> b!7269426 (= e!4359233 (and tp_is_empty!47045 tp!2040923))))

(declare-fun b!7269427 () Bool)

(declare-fun forall!17619 (List!70895 Int) Bool)

(assert (=> b!7269427 (= e!4359237 (forall!17619 lt!2594068 lambda!448252))))

(declare-fun b!7269428 () Bool)

(declare-fun tp!2040924 () Bool)

(assert (=> b!7269428 (= e!4359239 tp!2040924)))

(declare-fun b!7269429 () Bool)

(declare-fun res!2946999 () Bool)

(assert (=> b!7269429 (=> (not res!2946999) (not e!4359232))))

(declare-fun nullableContext!280 (Context!15460) Bool)

(assert (=> b!7269429 (= res!2946999 (nullableContext!280 ct1!250))))

(assert (=> b!7269430 (= e!4359232 (not e!4359235))))

(declare-fun res!2947001 () Bool)

(assert (=> b!7269430 (=> res!2947001 e!4359235)))

(declare-fun lt!2594064 () (Set Context!15460))

(declare-fun derivationStepZipper!3530 ((Set Context!15460) C!37854) (Set Context!15460))

(assert (=> b!7269430 (= res!2947001 (not (= lt!2594066 (derivationStepZipper!3530 lt!2594064 (h!77220 s!7854)))))))

(declare-fun lt!2594057 () Unit!164198)

(assert (=> b!7269430 (= lt!2594057 (lemmaConcatPreservesForall!1547 (exprs!8230 ct1!250) (exprs!8230 ct2!346) lambda!448252))))

(declare-fun lt!2594065 () Context!15460)

(assert (=> b!7269430 (= (flatMap!2903 lt!2594064 lambda!448253) (derivationStepZipperUp!2560 lt!2594065 (h!77220 s!7854)))))

(declare-fun lt!2594050 () Unit!164198)

(assert (=> b!7269430 (= lt!2594050 (lemmaFlatMapOnSingletonSet!2303 lt!2594064 lt!2594065 lambda!448253))))

(assert (=> b!7269430 (= lt!2594064 (set.insert lt!2594065 (as set.empty (Set Context!15460))))))

(declare-fun lt!2594062 () Unit!164198)

(assert (=> b!7269430 (= lt!2594062 (lemmaConcatPreservesForall!1547 (exprs!8230 ct1!250) (exprs!8230 ct2!346) lambda!448252))))

(declare-fun lt!2594049 () Unit!164198)

(assert (=> b!7269430 (= lt!2594049 (lemmaConcatPreservesForall!1547 (exprs!8230 ct1!250) (exprs!8230 ct2!346) lambda!448252))))

(declare-fun lt!2594055 () (Set Context!15460))

(assert (=> b!7269430 (= (flatMap!2903 lt!2594055 lambda!448253) (derivationStepZipperUp!2560 ct1!250 (h!77220 s!7854)))))

(declare-fun lt!2594051 () Unit!164198)

(assert (=> b!7269430 (= lt!2594051 (lemmaFlatMapOnSingletonSet!2303 lt!2594055 ct1!250 lambda!448253))))

(assert (=> b!7269430 (= lt!2594055 (set.insert ct1!250 (as set.empty (Set Context!15460))))))

(assert (=> b!7269430 (= lt!2594066 (derivationStepZipperUp!2560 lt!2594065 (h!77220 s!7854)))))

(assert (=> b!7269430 (= lt!2594065 (Context!15461 (++!16690 (exprs!8230 ct1!250) (exprs!8230 ct2!346))))))

(declare-fun lt!2594061 () Unit!164198)

(assert (=> b!7269430 (= lt!2594061 (lemmaConcatPreservesForall!1547 (exprs!8230 ct1!250) (exprs!8230 ct2!346) lambda!448252))))

(assert (= (and start!709284 res!2946995) b!7269429))

(assert (= (and b!7269429 res!2946999) b!7269421))

(assert (= (and b!7269421 res!2946994) b!7269430))

(assert (= (and b!7269430 (not res!2947001)) b!7269422))

(assert (= (and b!7269422 (not res!2946998)) b!7269419))

(assert (= (and b!7269419 (not res!2946996)) b!7269420))

(assert (= (and b!7269420 (not res!2947003)) b!7269425))

(assert (= (and b!7269425 (not res!2947002)) b!7269424))

(assert (= (and b!7269424 (not res!2947000)) b!7269418))

(assert (= (and b!7269418 (not res!2946997)) b!7269427))

(assert (= start!709284 b!7269423))

(assert (= (and start!709284 (is-Cons!70772 s!7854)) b!7269426))

(assert (= start!709284 b!7269428))

(declare-fun m!7954702 () Bool)

(assert (=> b!7269420 m!7954702))

(declare-fun m!7954704 () Bool)

(assert (=> b!7269420 m!7954704))

(declare-fun m!7954706 () Bool)

(assert (=> b!7269420 m!7954706))

(declare-fun m!7954708 () Bool)

(assert (=> b!7269418 m!7954708))

(declare-fun m!7954710 () Bool)

(assert (=> b!7269418 m!7954710))

(declare-fun m!7954712 () Bool)

(assert (=> b!7269418 m!7954712))

(declare-fun m!7954714 () Bool)

(assert (=> b!7269418 m!7954714))

(declare-fun m!7954716 () Bool)

(assert (=> b!7269418 m!7954716))

(assert (=> b!7269418 m!7954708))

(assert (=> b!7269418 m!7954708))

(declare-fun m!7954718 () Bool)

(assert (=> b!7269418 m!7954718))

(declare-fun m!7954720 () Bool)

(assert (=> b!7269418 m!7954720))

(declare-fun m!7954722 () Bool)

(assert (=> b!7269418 m!7954722))

(assert (=> b!7269418 m!7954708))

(assert (=> b!7269418 m!7954708))

(declare-fun m!7954724 () Bool)

(assert (=> b!7269430 m!7954724))

(declare-fun m!7954726 () Bool)

(assert (=> b!7269430 m!7954726))

(declare-fun m!7954728 () Bool)

(assert (=> b!7269430 m!7954728))

(declare-fun m!7954730 () Bool)

(assert (=> b!7269430 m!7954730))

(declare-fun m!7954732 () Bool)

(assert (=> b!7269430 m!7954732))

(declare-fun m!7954734 () Bool)

(assert (=> b!7269430 m!7954734))

(assert (=> b!7269430 m!7954728))

(assert (=> b!7269430 m!7954728))

(declare-fun m!7954736 () Bool)

(assert (=> b!7269430 m!7954736))

(declare-fun m!7954738 () Bool)

(assert (=> b!7269430 m!7954738))

(assert (=> b!7269430 m!7954728))

(assert (=> b!7269430 m!7954704))

(declare-fun m!7954740 () Bool)

(assert (=> b!7269430 m!7954740))

(declare-fun m!7954742 () Bool)

(assert (=> b!7269430 m!7954742))

(assert (=> b!7269424 m!7954708))

(assert (=> b!7269424 m!7954716))

(declare-fun m!7954744 () Bool)

(assert (=> b!7269424 m!7954744))

(declare-fun m!7954746 () Bool)

(assert (=> b!7269424 m!7954746))

(assert (=> b!7269424 m!7954708))

(declare-fun m!7954748 () Bool)

(assert (=> start!709284 m!7954748))

(assert (=> start!709284 m!7954748))

(declare-fun m!7954750 () Bool)

(assert (=> start!709284 m!7954750))

(declare-fun m!7954752 () Bool)

(assert (=> start!709284 m!7954752))

(declare-fun m!7954754 () Bool)

(assert (=> start!709284 m!7954754))

(declare-fun m!7954756 () Bool)

(assert (=> b!7269419 m!7954756))

(declare-fun m!7954758 () Bool)

(assert (=> b!7269427 m!7954758))

(declare-fun m!7954760 () Bool)

(assert (=> b!7269425 m!7954760))

(declare-fun m!7954762 () Bool)

(assert (=> b!7269425 m!7954762))

(declare-fun m!7954764 () Bool)

(assert (=> b!7269429 m!7954764))

(push 1)

(assert (not b!7269423))

(assert (not b!7269424))

(assert (not b!7269420))

(assert (not b!7269419))

(assert (not b!7269429))

(assert (not b!7269418))

(assert (not b!7269426))

(assert tp_is_empty!47045)

(assert (not b!7269427))

(assert (not b!7269428))

(assert (not b!7269425))

(assert (not b!7269430))

(assert (not start!709284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2262006 () Bool)

(declare-fun dynLambda!28919 (Int Context!15460) (Set Context!15460))

(assert (=> d!2262006 (= (flatMap!2903 lt!2594063 lambda!448253) (dynLambda!28919 lambda!448253 lt!2594059))))

(declare-fun lt!2594152 () Unit!164198)

(declare-fun choose!56378 ((Set Context!15460) Context!15460 Int) Unit!164198)

(assert (=> d!2262006 (= lt!2594152 (choose!56378 lt!2594063 lt!2594059 lambda!448253))))

(assert (=> d!2262006 (= lt!2594063 (set.insert lt!2594059 (as set.empty (Set Context!15460))))))

(assert (=> d!2262006 (= (lemmaFlatMapOnSingletonSet!2303 lt!2594063 lt!2594059 lambda!448253) lt!2594152)))

(declare-fun b_lambda!280117 () Bool)

(assert (=> (not b_lambda!280117) (not d!2262006)))

(declare-fun bs!1910809 () Bool)

(assert (= bs!1910809 d!2262006))

(assert (=> bs!1910809 m!7954720))

(declare-fun m!7954830 () Bool)

(assert (=> bs!1910809 m!7954830))

(declare-fun m!7954832 () Bool)

(assert (=> bs!1910809 m!7954832))

(assert (=> bs!1910809 m!7954714))

(assert (=> b!7269418 d!2262006))

(declare-fun d!2262008 () Bool)

(declare-fun c!1353030 () Bool)

(declare-fun isEmpty!40699 (List!70896) Bool)

(assert (=> d!2262008 (= c!1353030 (isEmpty!40699 s!7854))))

(declare-fun e!4359266 () Bool)

(assert (=> d!2262008 (= (matchZipper!3694 lt!2594063 s!7854) e!4359266)))

(declare-fun b!7269478 () Bool)

(declare-fun nullableZipper!2997 ((Set Context!15460)) Bool)

(assert (=> b!7269478 (= e!4359266 (nullableZipper!2997 lt!2594063))))

(declare-fun b!7269479 () Bool)

(declare-fun head!14995 (List!70896) C!37854)

(declare-fun tail!14486 (List!70896) List!70896)

(assert (=> b!7269479 (= e!4359266 (matchZipper!3694 (derivationStepZipper!3530 lt!2594063 (head!14995 s!7854)) (tail!14486 s!7854)))))

(assert (= (and d!2262008 c!1353030) b!7269478))

(assert (= (and d!2262008 (not c!1353030)) b!7269479))

(declare-fun m!7954834 () Bool)

(assert (=> d!2262008 m!7954834))

(declare-fun m!7954836 () Bool)

(assert (=> b!7269478 m!7954836))

(declare-fun m!7954838 () Bool)

(assert (=> b!7269479 m!7954838))

(assert (=> b!7269479 m!7954838))

(declare-fun m!7954840 () Bool)

(assert (=> b!7269479 m!7954840))

(declare-fun m!7954842 () Bool)

(assert (=> b!7269479 m!7954842))

(assert (=> b!7269479 m!7954840))

(assert (=> b!7269479 m!7954842))

(declare-fun m!7954844 () Bool)

(assert (=> b!7269479 m!7954844))

(assert (=> b!7269418 d!2262008))

(declare-fun d!2262010 () Bool)

(declare-fun c!1353031 () Bool)

(assert (=> d!2262010 (= c!1353031 (isEmpty!40699 (t!384966 s!7854)))))

(declare-fun e!4359267 () Bool)

(assert (=> d!2262010 (= (matchZipper!3694 lt!2594060 (t!384966 s!7854)) e!4359267)))

(declare-fun b!7269480 () Bool)

(assert (=> b!7269480 (= e!4359267 (nullableZipper!2997 lt!2594060))))

(declare-fun b!7269481 () Bool)

(assert (=> b!7269481 (= e!4359267 (matchZipper!3694 (derivationStepZipper!3530 lt!2594060 (head!14995 (t!384966 s!7854))) (tail!14486 (t!384966 s!7854))))))

(assert (= (and d!2262010 c!1353031) b!7269480))

(assert (= (and d!2262010 (not c!1353031)) b!7269481))

(declare-fun m!7954846 () Bool)

(assert (=> d!2262010 m!7954846))

(declare-fun m!7954848 () Bool)

(assert (=> b!7269480 m!7954848))

(declare-fun m!7954850 () Bool)

(assert (=> b!7269481 m!7954850))

(assert (=> b!7269481 m!7954850))

(declare-fun m!7954852 () Bool)

(assert (=> b!7269481 m!7954852))

(declare-fun m!7954854 () Bool)

(assert (=> b!7269481 m!7954854))

(assert (=> b!7269481 m!7954852))

(assert (=> b!7269481 m!7954854))

(declare-fun m!7954856 () Bool)

(assert (=> b!7269481 m!7954856))

(assert (=> b!7269418 d!2262010))

(declare-fun d!2262012 () Bool)

(declare-fun c!1353036 () Bool)

(declare-fun e!4359274 () Bool)

(assert (=> d!2262012 (= c!1353036 e!4359274)))

(declare-fun res!2947036 () Bool)

(assert (=> d!2262012 (=> (not res!2947036) (not e!4359274))))

(assert (=> d!2262012 (= res!2947036 (is-Cons!70771 (exprs!8230 lt!2594059)))))

(declare-fun e!4359276 () (Set Context!15460))

(assert (=> d!2262012 (= (derivationStepZipperUp!2560 lt!2594059 (h!77220 s!7854)) e!4359276)))

(declare-fun b!7269492 () Bool)

(declare-fun e!4359275 () (Set Context!15460))

(assert (=> b!7269492 (= e!4359276 e!4359275)))

(declare-fun c!1353037 () Bool)

(assert (=> b!7269492 (= c!1353037 (is-Cons!70771 (exprs!8230 lt!2594059)))))

(declare-fun bm!662859 () Bool)

(declare-fun call!662864 () (Set Context!15460))

(assert (=> bm!662859 (= call!662864 (derivationStepZipperDown!2724 (h!77219 (exprs!8230 lt!2594059)) (Context!15461 (t!384965 (exprs!8230 lt!2594059))) (h!77220 s!7854)))))

(declare-fun b!7269493 () Bool)

(assert (=> b!7269493 (= e!4359275 call!662864)))

(declare-fun b!7269494 () Bool)

(assert (=> b!7269494 (= e!4359276 (set.union call!662864 (derivationStepZipperUp!2560 (Context!15461 (t!384965 (exprs!8230 lt!2594059))) (h!77220 s!7854))))))

(declare-fun b!7269495 () Bool)

(assert (=> b!7269495 (= e!4359275 (as set.empty (Set Context!15460)))))

(declare-fun b!7269496 () Bool)

(assert (=> b!7269496 (= e!4359274 (nullable!7990 (h!77219 (exprs!8230 lt!2594059))))))

(assert (= (and d!2262012 res!2947036) b!7269496))

(assert (= (and d!2262012 c!1353036) b!7269494))

(assert (= (and d!2262012 (not c!1353036)) b!7269492))

(assert (= (and b!7269492 c!1353037) b!7269493))

(assert (= (and b!7269492 (not c!1353037)) b!7269495))

(assert (= (or b!7269494 b!7269493) bm!662859))

(declare-fun m!7954858 () Bool)

(assert (=> bm!662859 m!7954858))

(declare-fun m!7954860 () Bool)

(assert (=> b!7269494 m!7954860))

(declare-fun m!7954862 () Bool)

(assert (=> b!7269496 m!7954862))

(assert (=> b!7269418 d!2262012))

(declare-fun bs!1910810 () Bool)

(declare-fun d!2262014 () Bool)

(assert (= bs!1910810 (and d!2262014 b!7269430)))

(declare-fun lambda!448288 () Int)

(assert (=> bs!1910810 (= lambda!448288 lambda!448252)))

(assert (=> d!2262014 (matchZipper!3694 (set.insert (Context!15461 (++!16690 (exprs!8230 lt!2594069) (exprs!8230 ct2!346))) (as set.empty (Set Context!15460))) s!7854)))

(declare-fun lt!2594158 () Unit!164198)

(assert (=> d!2262014 (= lt!2594158 (lemmaConcatPreservesForall!1547 (exprs!8230 lt!2594069) (exprs!8230 ct2!346) lambda!448288))))

(declare-fun lt!2594157 () Unit!164198)

(declare-fun choose!56379 (Context!15460 Context!15460 List!70896) Unit!164198)

(assert (=> d!2262014 (= lt!2594157 (choose!56379 lt!2594069 ct2!346 s!7854))))

(assert (=> d!2262014 (matchZipper!3694 (set.insert ct2!346 (as set.empty (Set Context!15460))) s!7854)))

(assert (=> d!2262014 (= (lemmaPrependingNullableCtxStillMatches!27 lt!2594069 ct2!346 s!7854) lt!2594157)))

(declare-fun bs!1910811 () Bool)

(assert (= bs!1910811 d!2262014))

(assert (=> bs!1910811 m!7954748))

(assert (=> bs!1910811 m!7954748))

(assert (=> bs!1910811 m!7954750))

(declare-fun m!7954864 () Bool)

(assert (=> bs!1910811 m!7954864))

(declare-fun m!7954866 () Bool)

(assert (=> bs!1910811 m!7954866))

(declare-fun m!7954868 () Bool)

(assert (=> bs!1910811 m!7954868))

(assert (=> bs!1910811 m!7954866))

(declare-fun m!7954870 () Bool)

(assert (=> bs!1910811 m!7954870))

(declare-fun m!7954872 () Bool)

(assert (=> bs!1910811 m!7954872))

(assert (=> b!7269418 d!2262014))

(declare-fun d!2262016 () Bool)

(assert (=> d!2262016 (forall!17619 (++!16690 lt!2594068 (exprs!8230 ct2!346)) lambda!448252)))

(declare-fun lt!2594161 () Unit!164198)

(declare-fun choose!56380 (List!70895 List!70895 Int) Unit!164198)

(assert (=> d!2262016 (= lt!2594161 (choose!56380 lt!2594068 (exprs!8230 ct2!346) lambda!448252))))

(assert (=> d!2262016 (forall!17619 lt!2594068 lambda!448252)))

(assert (=> d!2262016 (= (lemmaConcatPreservesForall!1547 lt!2594068 (exprs!8230 ct2!346) lambda!448252) lt!2594161)))

(declare-fun bs!1910812 () Bool)

(assert (= bs!1910812 d!2262016))

(assert (=> bs!1910812 m!7954744))

(assert (=> bs!1910812 m!7954744))

(declare-fun m!7954874 () Bool)

(assert (=> bs!1910812 m!7954874))

(declare-fun m!7954876 () Bool)

(assert (=> bs!1910812 m!7954876))

(assert (=> bs!1910812 m!7954758))

(assert (=> b!7269418 d!2262016))

(declare-fun d!2262018 () Bool)

(declare-fun choose!56381 ((Set Context!15460) Int) (Set Context!15460))

(assert (=> d!2262018 (= (flatMap!2903 lt!2594063 lambda!448253) (choose!56381 lt!2594063 lambda!448253))))

(declare-fun bs!1910813 () Bool)

(assert (= bs!1910813 d!2262018))

(declare-fun m!7954878 () Bool)

(assert (=> bs!1910813 m!7954878))

(assert (=> b!7269418 d!2262018))

(declare-fun bs!1910814 () Bool)

(declare-fun d!2262020 () Bool)

(assert (= bs!1910814 (and d!2262020 b!7269430)))

(declare-fun lambda!448291 () Int)

(assert (=> bs!1910814 (not (= lambda!448291 lambda!448252))))

(declare-fun bs!1910815 () Bool)

(assert (= bs!1910815 (and d!2262020 d!2262014)))

(assert (=> bs!1910815 (not (= lambda!448291 lambda!448288))))

(assert (=> d!2262020 (= (nullableContext!280 ct1!250) (forall!17619 (exprs!8230 ct1!250) lambda!448291))))

(declare-fun bs!1910816 () Bool)

(assert (= bs!1910816 d!2262020))

(declare-fun m!7954880 () Bool)

(assert (=> bs!1910816 m!7954880))

(assert (=> b!7269429 d!2262020))

(declare-fun d!2262022 () Bool)

(declare-fun c!1353039 () Bool)

(assert (=> d!2262022 (= c!1353039 (isEmpty!40699 s!7854))))

(declare-fun e!4359277 () Bool)

(assert (=> d!2262022 (= (matchZipper!3694 (set.insert ct2!346 (as set.empty (Set Context!15460))) s!7854) e!4359277)))

(declare-fun b!7269497 () Bool)

(assert (=> b!7269497 (= e!4359277 (nullableZipper!2997 (set.insert ct2!346 (as set.empty (Set Context!15460)))))))

(declare-fun b!7269498 () Bool)

(assert (=> b!7269498 (= e!4359277 (matchZipper!3694 (derivationStepZipper!3530 (set.insert ct2!346 (as set.empty (Set Context!15460))) (head!14995 s!7854)) (tail!14486 s!7854)))))

(assert (= (and d!2262022 c!1353039) b!7269497))

(assert (= (and d!2262022 (not c!1353039)) b!7269498))

(assert (=> d!2262022 m!7954834))

(assert (=> b!7269497 m!7954748))

(declare-fun m!7954882 () Bool)

(assert (=> b!7269497 m!7954882))

(assert (=> b!7269498 m!7954838))

(assert (=> b!7269498 m!7954748))

(assert (=> b!7269498 m!7954838))

(declare-fun m!7954884 () Bool)

(assert (=> b!7269498 m!7954884))

(assert (=> b!7269498 m!7954842))

(assert (=> b!7269498 m!7954884))

(assert (=> b!7269498 m!7954842))

(declare-fun m!7954886 () Bool)

(assert (=> b!7269498 m!7954886))

(assert (=> start!709284 d!2262022))

(declare-fun bs!1910817 () Bool)

(declare-fun d!2262024 () Bool)

(assert (= bs!1910817 (and d!2262024 b!7269430)))

(declare-fun lambda!448294 () Int)

(assert (=> bs!1910817 (= lambda!448294 lambda!448252)))

(declare-fun bs!1910818 () Bool)

(assert (= bs!1910818 (and d!2262024 d!2262014)))

(assert (=> bs!1910818 (= lambda!448294 lambda!448288)))

(declare-fun bs!1910819 () Bool)

(assert (= bs!1910819 (and d!2262024 d!2262020)))

(assert (=> bs!1910819 (not (= lambda!448294 lambda!448291))))

(assert (=> d!2262024 (= (inv!89986 ct2!346) (forall!17619 (exprs!8230 ct2!346) lambda!448294))))

(declare-fun bs!1910820 () Bool)

(assert (= bs!1910820 d!2262024))

(declare-fun m!7954888 () Bool)

(assert (=> bs!1910820 m!7954888))

(assert (=> start!709284 d!2262024))

(declare-fun bs!1910821 () Bool)

(declare-fun d!2262028 () Bool)

(assert (= bs!1910821 (and d!2262028 b!7269430)))

(declare-fun lambda!448295 () Int)

(assert (=> bs!1910821 (= lambda!448295 lambda!448252)))

(declare-fun bs!1910822 () Bool)

(assert (= bs!1910822 (and d!2262028 d!2262014)))

(assert (=> bs!1910822 (= lambda!448295 lambda!448288)))

(declare-fun bs!1910823 () Bool)

(assert (= bs!1910823 (and d!2262028 d!2262020)))

(assert (=> bs!1910823 (not (= lambda!448295 lambda!448291))))

(declare-fun bs!1910824 () Bool)

(assert (= bs!1910824 (and d!2262028 d!2262024)))

(assert (=> bs!1910824 (= lambda!448295 lambda!448294)))

(assert (=> d!2262028 (= (inv!89986 ct1!250) (forall!17619 (exprs!8230 ct1!250) lambda!448295))))

(declare-fun bs!1910825 () Bool)

(assert (= bs!1910825 d!2262028))

(declare-fun m!7954890 () Bool)

(assert (=> bs!1910825 m!7954890))

(assert (=> start!709284 d!2262028))

(declare-fun d!2262030 () Bool)

(declare-fun res!2947041 () Bool)

(declare-fun e!4359282 () Bool)

(assert (=> d!2262030 (=> res!2947041 e!4359282)))

(assert (=> d!2262030 (= res!2947041 (is-Nil!70771 lt!2594068))))

(assert (=> d!2262030 (= (forall!17619 lt!2594068 lambda!448252) e!4359282)))

(declare-fun b!7269503 () Bool)

(declare-fun e!4359283 () Bool)

(assert (=> b!7269503 (= e!4359282 e!4359283)))

(declare-fun res!2947042 () Bool)

(assert (=> b!7269503 (=> (not res!2947042) (not e!4359283))))

(declare-fun dynLambda!28920 (Int Regex!18790) Bool)

(assert (=> b!7269503 (= res!2947042 (dynLambda!28920 lambda!448252 (h!77219 lt!2594068)))))

(declare-fun b!7269504 () Bool)

(assert (=> b!7269504 (= e!4359283 (forall!17619 (t!384965 lt!2594068) lambda!448252))))

(assert (= (and d!2262030 (not res!2947041)) b!7269503))

(assert (= (and b!7269503 res!2947042) b!7269504))

(declare-fun b_lambda!280119 () Bool)

(assert (=> (not b_lambda!280119) (not b!7269503)))

(declare-fun m!7954892 () Bool)

(assert (=> b!7269503 m!7954892))

(declare-fun m!7954894 () Bool)

(assert (=> b!7269504 m!7954894))

(assert (=> b!7269427 d!2262030))

(declare-fun d!2262032 () Bool)

(declare-fun nullableFct!3149 (Regex!18790) Bool)

(assert (=> d!2262032 (= (nullable!7990 (h!77219 (exprs!8230 ct1!250))) (nullableFct!3149 (h!77219 (exprs!8230 ct1!250))))))

(declare-fun bs!1910826 () Bool)

(assert (= bs!1910826 d!2262032))

(declare-fun m!7954896 () Bool)

(assert (=> bs!1910826 m!7954896))

(assert (=> b!7269420 d!2262032))

(declare-fun d!2262034 () Bool)

(declare-fun c!1353040 () Bool)

(declare-fun e!4359284 () Bool)

(assert (=> d!2262034 (= c!1353040 e!4359284)))

(declare-fun res!2947043 () Bool)

(assert (=> d!2262034 (=> (not res!2947043) (not e!4359284))))

(assert (=> d!2262034 (= res!2947043 (is-Cons!70771 (exprs!8230 ct1!250)))))

(declare-fun e!4359286 () (Set Context!15460))

(assert (=> d!2262034 (= (derivationStepZipperUp!2560 ct1!250 (h!77220 s!7854)) e!4359286)))

(declare-fun b!7269505 () Bool)

(declare-fun e!4359285 () (Set Context!15460))

(assert (=> b!7269505 (= e!4359286 e!4359285)))

(declare-fun c!1353041 () Bool)

(assert (=> b!7269505 (= c!1353041 (is-Cons!70771 (exprs!8230 ct1!250)))))

(declare-fun bm!662860 () Bool)

(declare-fun call!662865 () (Set Context!15460))

(assert (=> bm!662860 (= call!662865 (derivationStepZipperDown!2724 (h!77219 (exprs!8230 ct1!250)) (Context!15461 (t!384965 (exprs!8230 ct1!250))) (h!77220 s!7854)))))

(declare-fun b!7269506 () Bool)

(assert (=> b!7269506 (= e!4359285 call!662865)))

(declare-fun b!7269507 () Bool)

(assert (=> b!7269507 (= e!4359286 (set.union call!662865 (derivationStepZipperUp!2560 (Context!15461 (t!384965 (exprs!8230 ct1!250))) (h!77220 s!7854))))))

(declare-fun b!7269508 () Bool)

(assert (=> b!7269508 (= e!4359285 (as set.empty (Set Context!15460)))))

(declare-fun b!7269509 () Bool)

(assert (=> b!7269509 (= e!4359284 (nullable!7990 (h!77219 (exprs!8230 ct1!250))))))

(assert (= (and d!2262034 res!2947043) b!7269509))

(assert (= (and d!2262034 c!1353040) b!7269507))

(assert (= (and d!2262034 (not c!1353040)) b!7269505))

(assert (= (and b!7269505 c!1353041) b!7269506))

(assert (= (and b!7269505 (not c!1353041)) b!7269508))

(assert (= (or b!7269507 b!7269506) bm!662860))

(declare-fun m!7954898 () Bool)

(assert (=> bm!662860 m!7954898))

(declare-fun m!7954900 () Bool)

(assert (=> b!7269507 m!7954900))

(assert (=> b!7269509 m!7954702))

(assert (=> b!7269420 d!2262034))

(declare-fun d!2262036 () Bool)

(assert (=> d!2262036 (= (tail!14484 (exprs!8230 ct1!250)) (t!384965 (exprs!8230 ct1!250)))))

(assert (=> b!7269420 d!2262036))

(declare-fun bs!1910827 () Bool)

(declare-fun d!2262038 () Bool)

(assert (= bs!1910827 (and d!2262038 b!7269430)))

(declare-fun lambda!448298 () Int)

(assert (=> bs!1910827 (= lambda!448298 lambda!448253)))

(assert (=> d!2262038 true))

(assert (=> d!2262038 (= (derivationStepZipper!3530 lt!2594064 (h!77220 s!7854)) (flatMap!2903 lt!2594064 lambda!448298))))

(declare-fun bs!1910828 () Bool)

(assert (= bs!1910828 d!2262038))

(declare-fun m!7954902 () Bool)

(assert (=> bs!1910828 m!7954902))

(assert (=> b!7269430 d!2262038))

(assert (=> b!7269430 d!2262034))

(declare-fun d!2262040 () Bool)

(assert (=> d!2262040 (= (flatMap!2903 lt!2594055 lambda!448253) (dynLambda!28919 lambda!448253 ct1!250))))

(declare-fun lt!2594164 () Unit!164198)

(assert (=> d!2262040 (= lt!2594164 (choose!56378 lt!2594055 ct1!250 lambda!448253))))

(assert (=> d!2262040 (= lt!2594055 (set.insert ct1!250 (as set.empty (Set Context!15460))))))

(assert (=> d!2262040 (= (lemmaFlatMapOnSingletonSet!2303 lt!2594055 ct1!250 lambda!448253) lt!2594164)))

(declare-fun b_lambda!280121 () Bool)

(assert (=> (not b_lambda!280121) (not d!2262040)))

(declare-fun bs!1910829 () Bool)

(assert (= bs!1910829 d!2262040))

(assert (=> bs!1910829 m!7954724))

(declare-fun m!7954904 () Bool)

(assert (=> bs!1910829 m!7954904))

(declare-fun m!7954906 () Bool)

(assert (=> bs!1910829 m!7954906))

(assert (=> bs!1910829 m!7954736))

(assert (=> b!7269430 d!2262040))

(declare-fun d!2262042 () Bool)

(declare-fun c!1353046 () Bool)

(declare-fun e!4359289 () Bool)

(assert (=> d!2262042 (= c!1353046 e!4359289)))

(declare-fun res!2947044 () Bool)

(assert (=> d!2262042 (=> (not res!2947044) (not e!4359289))))

(assert (=> d!2262042 (= res!2947044 (is-Cons!70771 (exprs!8230 lt!2594065)))))

(declare-fun e!4359291 () (Set Context!15460))

(assert (=> d!2262042 (= (derivationStepZipperUp!2560 lt!2594065 (h!77220 s!7854)) e!4359291)))

(declare-fun b!7269516 () Bool)

(declare-fun e!4359290 () (Set Context!15460))

(assert (=> b!7269516 (= e!4359291 e!4359290)))

(declare-fun c!1353047 () Bool)

(assert (=> b!7269516 (= c!1353047 (is-Cons!70771 (exprs!8230 lt!2594065)))))

(declare-fun bm!662861 () Bool)

(declare-fun call!662866 () (Set Context!15460))

(assert (=> bm!662861 (= call!662866 (derivationStepZipperDown!2724 (h!77219 (exprs!8230 lt!2594065)) (Context!15461 (t!384965 (exprs!8230 lt!2594065))) (h!77220 s!7854)))))

(declare-fun b!7269517 () Bool)

(assert (=> b!7269517 (= e!4359290 call!662866)))

(declare-fun b!7269518 () Bool)

(assert (=> b!7269518 (= e!4359291 (set.union call!662866 (derivationStepZipperUp!2560 (Context!15461 (t!384965 (exprs!8230 lt!2594065))) (h!77220 s!7854))))))

(declare-fun b!7269519 () Bool)

(assert (=> b!7269519 (= e!4359290 (as set.empty (Set Context!15460)))))

(declare-fun b!7269520 () Bool)

(assert (=> b!7269520 (= e!4359289 (nullable!7990 (h!77219 (exprs!8230 lt!2594065))))))

(assert (= (and d!2262042 res!2947044) b!7269520))

(assert (= (and d!2262042 c!1353046) b!7269518))

(assert (= (and d!2262042 (not c!1353046)) b!7269516))

(assert (= (and b!7269516 c!1353047) b!7269517))

(assert (= (and b!7269516 (not c!1353047)) b!7269519))

(assert (= (or b!7269518 b!7269517) bm!662861))

(declare-fun m!7954908 () Bool)

(assert (=> bm!662861 m!7954908))

(declare-fun m!7954910 () Bool)

(assert (=> b!7269518 m!7954910))

(declare-fun m!7954912 () Bool)

(assert (=> b!7269520 m!7954912))

(assert (=> b!7269430 d!2262042))

(declare-fun b!7269538 () Bool)

(declare-fun e!4359301 () List!70895)

(assert (=> b!7269538 (= e!4359301 (Cons!70771 (h!77219 (exprs!8230 ct1!250)) (++!16690 (t!384965 (exprs!8230 ct1!250)) (exprs!8230 ct2!346))))))

(declare-fun d!2262044 () Bool)

(declare-fun e!4359300 () Bool)

(assert (=> d!2262044 e!4359300))

(declare-fun res!2947056 () Bool)

(assert (=> d!2262044 (=> (not res!2947056) (not e!4359300))))

(declare-fun lt!2594168 () List!70895)

(declare-fun content!14768 (List!70895) (Set Regex!18790))

(assert (=> d!2262044 (= res!2947056 (= (content!14768 lt!2594168) (set.union (content!14768 (exprs!8230 ct1!250)) (content!14768 (exprs!8230 ct2!346)))))))

(assert (=> d!2262044 (= lt!2594168 e!4359301)))

(declare-fun c!1353051 () Bool)

(assert (=> d!2262044 (= c!1353051 (is-Nil!70771 (exprs!8230 ct1!250)))))

(assert (=> d!2262044 (= (++!16690 (exprs!8230 ct1!250) (exprs!8230 ct2!346)) lt!2594168)))

(declare-fun b!7269539 () Bool)

(declare-fun res!2947055 () Bool)

(assert (=> b!7269539 (=> (not res!2947055) (not e!4359300))))

(declare-fun size!41816 (List!70895) Int)

(assert (=> b!7269539 (= res!2947055 (= (size!41816 lt!2594168) (+ (size!41816 (exprs!8230 ct1!250)) (size!41816 (exprs!8230 ct2!346)))))))

(declare-fun b!7269537 () Bool)

(assert (=> b!7269537 (= e!4359301 (exprs!8230 ct2!346))))

(declare-fun b!7269540 () Bool)

(assert (=> b!7269540 (= e!4359300 (or (not (= (exprs!8230 ct2!346) Nil!70771)) (= lt!2594168 (exprs!8230 ct1!250))))))

(assert (= (and d!2262044 c!1353051) b!7269537))

(assert (= (and d!2262044 (not c!1353051)) b!7269538))

(assert (= (and d!2262044 res!2947056) b!7269539))

(assert (= (and b!7269539 res!2947055) b!7269540))

(declare-fun m!7954914 () Bool)

(assert (=> b!7269538 m!7954914))

(declare-fun m!7954916 () Bool)

(assert (=> d!2262044 m!7954916))

(declare-fun m!7954918 () Bool)

(assert (=> d!2262044 m!7954918))

(declare-fun m!7954920 () Bool)

(assert (=> d!2262044 m!7954920))

(declare-fun m!7954924 () Bool)

(assert (=> b!7269539 m!7954924))

(declare-fun m!7954926 () Bool)

(assert (=> b!7269539 m!7954926))

(declare-fun m!7954928 () Bool)

(assert (=> b!7269539 m!7954928))

(assert (=> b!7269430 d!2262044))

(declare-fun d!2262046 () Bool)

(assert (=> d!2262046 (= (flatMap!2903 lt!2594064 lambda!448253) (choose!56381 lt!2594064 lambda!448253))))

(declare-fun bs!1910830 () Bool)

(assert (= bs!1910830 d!2262046))

(declare-fun m!7954936 () Bool)

(assert (=> bs!1910830 m!7954936))

(assert (=> b!7269430 d!2262046))

(declare-fun d!2262048 () Bool)

(assert (=> d!2262048 (forall!17619 (++!16690 (exprs!8230 ct1!250) (exprs!8230 ct2!346)) lambda!448252)))

(declare-fun lt!2594169 () Unit!164198)

(assert (=> d!2262048 (= lt!2594169 (choose!56380 (exprs!8230 ct1!250) (exprs!8230 ct2!346) lambda!448252))))

(assert (=> d!2262048 (forall!17619 (exprs!8230 ct1!250) lambda!448252)))

(assert (=> d!2262048 (= (lemmaConcatPreservesForall!1547 (exprs!8230 ct1!250) (exprs!8230 ct2!346) lambda!448252) lt!2594169)))

(declare-fun bs!1910831 () Bool)

(assert (= bs!1910831 d!2262048))

(assert (=> bs!1910831 m!7954738))

(assert (=> bs!1910831 m!7954738))

(declare-fun m!7954944 () Bool)

(assert (=> bs!1910831 m!7954944))

(declare-fun m!7954946 () Bool)

(assert (=> bs!1910831 m!7954946))

(declare-fun m!7954948 () Bool)

(assert (=> bs!1910831 m!7954948))

(assert (=> b!7269430 d!2262048))

(declare-fun d!2262052 () Bool)

(assert (=> d!2262052 (= (flatMap!2903 lt!2594064 lambda!448253) (dynLambda!28919 lambda!448253 lt!2594065))))

(declare-fun lt!2594170 () Unit!164198)

(assert (=> d!2262052 (= lt!2594170 (choose!56378 lt!2594064 lt!2594065 lambda!448253))))

(assert (=> d!2262052 (= lt!2594064 (set.insert lt!2594065 (as set.empty (Set Context!15460))))))

(assert (=> d!2262052 (= (lemmaFlatMapOnSingletonSet!2303 lt!2594064 lt!2594065 lambda!448253) lt!2594170)))

(declare-fun b_lambda!280123 () Bool)

(assert (=> (not b_lambda!280123) (not d!2262052)))

(declare-fun bs!1910832 () Bool)

(assert (= bs!1910832 d!2262052))

(assert (=> bs!1910832 m!7954726))

(declare-fun m!7954950 () Bool)

(assert (=> bs!1910832 m!7954950))

(declare-fun m!7954952 () Bool)

(assert (=> bs!1910832 m!7954952))

(assert (=> bs!1910832 m!7954732))

(assert (=> b!7269430 d!2262052))

(declare-fun d!2262054 () Bool)

(assert (=> d!2262054 (= (flatMap!2903 lt!2594055 lambda!448253) (choose!56381 lt!2594055 lambda!448253))))

(declare-fun bs!1910833 () Bool)

(assert (= bs!1910833 d!2262054))

(declare-fun m!7954954 () Bool)

(assert (=> bs!1910833 m!7954954))

(assert (=> b!7269430 d!2262054))

(declare-fun d!2262056 () Bool)

(declare-fun c!1353075 () Bool)

(assert (=> d!2262056 (= c!1353075 (and (is-ElementMatch!18790 (h!77219 (exprs!8230 ct1!250))) (= (c!1353020 (h!77219 (exprs!8230 ct1!250))) (h!77220 s!7854))))))

(declare-fun e!4359328 () (Set Context!15460))

(assert (=> d!2262056 (= (derivationStepZipperDown!2724 (h!77219 (exprs!8230 ct1!250)) lt!2594069 (h!77220 s!7854)) e!4359328)))

(declare-fun bm!662876 () Bool)

(declare-fun call!662882 () (Set Context!15460))

(declare-fun call!662881 () (Set Context!15460))

(assert (=> bm!662876 (= call!662882 call!662881)))

(declare-fun b!7269585 () Bool)

(declare-fun e!4359326 () Bool)

(assert (=> b!7269585 (= e!4359326 (nullable!7990 (regOne!38092 (h!77219 (exprs!8230 ct1!250)))))))

(declare-fun b!7269586 () Bool)

(declare-fun e!4359327 () (Set Context!15460))

(assert (=> b!7269586 (= e!4359327 call!662882)))

(declare-fun b!7269587 () Bool)

(declare-fun e!4359330 () (Set Context!15460))

(declare-fun call!662884 () (Set Context!15460))

(declare-fun call!662886 () (Set Context!15460))

(assert (=> b!7269587 (= e!4359330 (set.union call!662884 call!662886))))

(declare-fun bm!662877 () Bool)

(assert (=> bm!662877 (= call!662881 call!662886)))

(declare-fun b!7269588 () Bool)

(declare-fun c!1353072 () Bool)

(assert (=> b!7269588 (= c!1353072 e!4359326)))

(declare-fun res!2947061 () Bool)

(assert (=> b!7269588 (=> (not res!2947061) (not e!4359326))))

(assert (=> b!7269588 (= res!2947061 (is-Concat!27635 (h!77219 (exprs!8230 ct1!250))))))

(declare-fun e!4359329 () (Set Context!15460))

(assert (=> b!7269588 (= e!4359330 e!4359329)))

(declare-fun bm!662878 () Bool)

(declare-fun call!662883 () List!70895)

(declare-fun call!662885 () List!70895)

(assert (=> bm!662878 (= call!662883 call!662885)))

(declare-fun b!7269589 () Bool)

(assert (=> b!7269589 (= e!4359328 (set.insert lt!2594069 (as set.empty (Set Context!15460))))))

(declare-fun b!7269590 () Bool)

(assert (=> b!7269590 (= e!4359329 (set.union call!662884 call!662881))))

(declare-fun bm!662879 () Bool)

(declare-fun c!1353074 () Bool)

(declare-fun $colon$colon!2964 (List!70895 Regex!18790) List!70895)

(assert (=> bm!662879 (= call!662885 ($colon$colon!2964 (exprs!8230 lt!2594069) (ite (or c!1353072 c!1353074) (regTwo!38092 (h!77219 (exprs!8230 ct1!250))) (h!77219 (exprs!8230 ct1!250)))))))

(declare-fun b!7269591 () Bool)

(declare-fun e!4359331 () (Set Context!15460))

(assert (=> b!7269591 (= e!4359331 (as set.empty (Set Context!15460)))))

(declare-fun c!1353073 () Bool)

(declare-fun bm!662880 () Bool)

(assert (=> bm!662880 (= call!662886 (derivationStepZipperDown!2724 (ite c!1353073 (regTwo!38093 (h!77219 (exprs!8230 ct1!250))) (ite c!1353072 (regTwo!38092 (h!77219 (exprs!8230 ct1!250))) (ite c!1353074 (regOne!38092 (h!77219 (exprs!8230 ct1!250))) (reg!19119 (h!77219 (exprs!8230 ct1!250)))))) (ite (or c!1353073 c!1353072) lt!2594069 (Context!15461 call!662883)) (h!77220 s!7854)))))

(declare-fun b!7269592 () Bool)

(assert (=> b!7269592 (= e!4359331 call!662882)))

(declare-fun b!7269593 () Bool)

(assert (=> b!7269593 (= e!4359328 e!4359330)))

(assert (=> b!7269593 (= c!1353073 (is-Union!18790 (h!77219 (exprs!8230 ct1!250))))))

(declare-fun bm!662881 () Bool)

(assert (=> bm!662881 (= call!662884 (derivationStepZipperDown!2724 (ite c!1353073 (regOne!38093 (h!77219 (exprs!8230 ct1!250))) (regOne!38092 (h!77219 (exprs!8230 ct1!250)))) (ite c!1353073 lt!2594069 (Context!15461 call!662885)) (h!77220 s!7854)))))

(declare-fun b!7269594 () Bool)

(assert (=> b!7269594 (= e!4359329 e!4359327)))

(assert (=> b!7269594 (= c!1353074 (is-Concat!27635 (h!77219 (exprs!8230 ct1!250))))))

(declare-fun b!7269595 () Bool)

(declare-fun c!1353076 () Bool)

(assert (=> b!7269595 (= c!1353076 (is-Star!18790 (h!77219 (exprs!8230 ct1!250))))))

(assert (=> b!7269595 (= e!4359327 e!4359331)))

(assert (= (and d!2262056 c!1353075) b!7269589))

(assert (= (and d!2262056 (not c!1353075)) b!7269593))

(assert (= (and b!7269593 c!1353073) b!7269587))

(assert (= (and b!7269593 (not c!1353073)) b!7269588))

(assert (= (and b!7269588 res!2947061) b!7269585))

(assert (= (and b!7269588 c!1353072) b!7269590))

(assert (= (and b!7269588 (not c!1353072)) b!7269594))

(assert (= (and b!7269594 c!1353074) b!7269586))

(assert (= (and b!7269594 (not c!1353074)) b!7269595))

(assert (= (and b!7269595 c!1353076) b!7269592))

(assert (= (and b!7269595 (not c!1353076)) b!7269591))

(assert (= (or b!7269586 b!7269592) bm!662878))

(assert (= (or b!7269586 b!7269592) bm!662876))

(assert (= (or b!7269590 bm!662878) bm!662879))

(assert (= (or b!7269590 bm!662876) bm!662877))

(assert (= (or b!7269587 b!7269590) bm!662881))

(assert (= (or b!7269587 bm!662877) bm!662880))

(declare-fun m!7954956 () Bool)

(assert (=> bm!662880 m!7954956))

(declare-fun m!7954958 () Bool)

(assert (=> bm!662881 m!7954958))

(declare-fun m!7954960 () Bool)

(assert (=> b!7269585 m!7954960))

(declare-fun m!7954962 () Bool)

(assert (=> b!7269589 m!7954962))

(declare-fun m!7954964 () Bool)

(assert (=> bm!662879 m!7954964))

(assert (=> b!7269425 d!2262056))

(declare-fun d!2262058 () Bool)

(declare-fun c!1353077 () Bool)

(declare-fun e!4359332 () Bool)

(assert (=> d!2262058 (= c!1353077 e!4359332)))

(declare-fun res!2947062 () Bool)

(assert (=> d!2262058 (=> (not res!2947062) (not e!4359332))))

(assert (=> d!2262058 (= res!2947062 (is-Cons!70771 (exprs!8230 lt!2594069)))))

(declare-fun e!4359334 () (Set Context!15460))

(assert (=> d!2262058 (= (derivationStepZipperUp!2560 lt!2594069 (h!77220 s!7854)) e!4359334)))

(declare-fun b!7269596 () Bool)

(declare-fun e!4359333 () (Set Context!15460))

(assert (=> b!7269596 (= e!4359334 e!4359333)))

(declare-fun c!1353078 () Bool)

(assert (=> b!7269596 (= c!1353078 (is-Cons!70771 (exprs!8230 lt!2594069)))))

(declare-fun bm!662884 () Bool)

(declare-fun call!662889 () (Set Context!15460))

(assert (=> bm!662884 (= call!662889 (derivationStepZipperDown!2724 (h!77219 (exprs!8230 lt!2594069)) (Context!15461 (t!384965 (exprs!8230 lt!2594069))) (h!77220 s!7854)))))

(declare-fun b!7269597 () Bool)

(assert (=> b!7269597 (= e!4359333 call!662889)))

(declare-fun b!7269598 () Bool)

(assert (=> b!7269598 (= e!4359334 (set.union call!662889 (derivationStepZipperUp!2560 (Context!15461 (t!384965 (exprs!8230 lt!2594069))) (h!77220 s!7854))))))

(declare-fun b!7269599 () Bool)

(assert (=> b!7269599 (= e!4359333 (as set.empty (Set Context!15460)))))

(declare-fun b!7269600 () Bool)

(assert (=> b!7269600 (= e!4359332 (nullable!7990 (h!77219 (exprs!8230 lt!2594069))))))

(assert (= (and d!2262058 res!2947062) b!7269600))

(assert (= (and d!2262058 c!1353077) b!7269598))

(assert (= (and d!2262058 (not c!1353077)) b!7269596))

(assert (= (and b!7269596 c!1353078) b!7269597))

(assert (= (and b!7269596 (not c!1353078)) b!7269599))

(assert (= (or b!7269598 b!7269597) bm!662884))

(declare-fun m!7954966 () Bool)

(assert (=> bm!662884 m!7954966))

(declare-fun m!7954968 () Bool)

(assert (=> b!7269598 m!7954968))

(declare-fun m!7954970 () Bool)

(assert (=> b!7269600 m!7954970))

(assert (=> b!7269425 d!2262058))

(assert (=> b!7269424 d!2262016))

(assert (=> b!7269424 d!2262012))

(declare-fun d!2262060 () Bool)

(declare-fun c!1353082 () Bool)

(assert (=> d!2262060 (= c!1353082 (and (is-ElementMatch!18790 (h!77219 (exprs!8230 ct1!250))) (= (c!1353020 (h!77219 (exprs!8230 ct1!250))) (h!77220 s!7854))))))

(declare-fun e!4359337 () (Set Context!15460))

(assert (=> d!2262060 (= (derivationStepZipperDown!2724 (h!77219 (exprs!8230 ct1!250)) lt!2594059 (h!77220 s!7854)) e!4359337)))

(declare-fun bm!662887 () Bool)

(declare-fun call!662893 () (Set Context!15460))

(declare-fun call!662892 () (Set Context!15460))

(assert (=> bm!662887 (= call!662893 call!662892)))

(declare-fun b!7269601 () Bool)

(declare-fun e!4359335 () Bool)

(assert (=> b!7269601 (= e!4359335 (nullable!7990 (regOne!38092 (h!77219 (exprs!8230 ct1!250)))))))

(declare-fun b!7269602 () Bool)

(declare-fun e!4359336 () (Set Context!15460))

(assert (=> b!7269602 (= e!4359336 call!662893)))

(declare-fun b!7269603 () Bool)

(declare-fun e!4359339 () (Set Context!15460))

(declare-fun call!662895 () (Set Context!15460))

(declare-fun call!662897 () (Set Context!15460))

(assert (=> b!7269603 (= e!4359339 (set.union call!662895 call!662897))))

(declare-fun bm!662888 () Bool)

(assert (=> bm!662888 (= call!662892 call!662897)))

(declare-fun b!7269604 () Bool)

(declare-fun c!1353079 () Bool)

(assert (=> b!7269604 (= c!1353079 e!4359335)))

(declare-fun res!2947063 () Bool)

(assert (=> b!7269604 (=> (not res!2947063) (not e!4359335))))

(assert (=> b!7269604 (= res!2947063 (is-Concat!27635 (h!77219 (exprs!8230 ct1!250))))))

(declare-fun e!4359338 () (Set Context!15460))

(assert (=> b!7269604 (= e!4359339 e!4359338)))

(declare-fun bm!662889 () Bool)

(declare-fun call!662894 () List!70895)

(declare-fun call!662896 () List!70895)

(assert (=> bm!662889 (= call!662894 call!662896)))

(declare-fun b!7269605 () Bool)

(assert (=> b!7269605 (= e!4359337 (set.insert lt!2594059 (as set.empty (Set Context!15460))))))

(declare-fun b!7269606 () Bool)

(assert (=> b!7269606 (= e!4359338 (set.union call!662895 call!662892))))

(declare-fun bm!662890 () Bool)

(declare-fun c!1353081 () Bool)

(assert (=> bm!662890 (= call!662896 ($colon$colon!2964 (exprs!8230 lt!2594059) (ite (or c!1353079 c!1353081) (regTwo!38092 (h!77219 (exprs!8230 ct1!250))) (h!77219 (exprs!8230 ct1!250)))))))

(declare-fun b!7269607 () Bool)

(declare-fun e!4359340 () (Set Context!15460))

(assert (=> b!7269607 (= e!4359340 (as set.empty (Set Context!15460)))))

(declare-fun c!1353080 () Bool)

(declare-fun bm!662891 () Bool)

(assert (=> bm!662891 (= call!662897 (derivationStepZipperDown!2724 (ite c!1353080 (regTwo!38093 (h!77219 (exprs!8230 ct1!250))) (ite c!1353079 (regTwo!38092 (h!77219 (exprs!8230 ct1!250))) (ite c!1353081 (regOne!38092 (h!77219 (exprs!8230 ct1!250))) (reg!19119 (h!77219 (exprs!8230 ct1!250)))))) (ite (or c!1353080 c!1353079) lt!2594059 (Context!15461 call!662894)) (h!77220 s!7854)))))

(declare-fun b!7269608 () Bool)

(assert (=> b!7269608 (= e!4359340 call!662893)))

(declare-fun b!7269609 () Bool)

(assert (=> b!7269609 (= e!4359337 e!4359339)))

(assert (=> b!7269609 (= c!1353080 (is-Union!18790 (h!77219 (exprs!8230 ct1!250))))))

(declare-fun bm!662892 () Bool)

(assert (=> bm!662892 (= call!662895 (derivationStepZipperDown!2724 (ite c!1353080 (regOne!38093 (h!77219 (exprs!8230 ct1!250))) (regOne!38092 (h!77219 (exprs!8230 ct1!250)))) (ite c!1353080 lt!2594059 (Context!15461 call!662896)) (h!77220 s!7854)))))

(declare-fun b!7269610 () Bool)

(assert (=> b!7269610 (= e!4359338 e!4359336)))

(assert (=> b!7269610 (= c!1353081 (is-Concat!27635 (h!77219 (exprs!8230 ct1!250))))))

(declare-fun b!7269611 () Bool)

(declare-fun c!1353083 () Bool)

(assert (=> b!7269611 (= c!1353083 (is-Star!18790 (h!77219 (exprs!8230 ct1!250))))))

(assert (=> b!7269611 (= e!4359336 e!4359340)))

(assert (= (and d!2262060 c!1353082) b!7269605))

(assert (= (and d!2262060 (not c!1353082)) b!7269609))

(assert (= (and b!7269609 c!1353080) b!7269603))

(assert (= (and b!7269609 (not c!1353080)) b!7269604))

(assert (= (and b!7269604 res!2947063) b!7269601))

(assert (= (and b!7269604 c!1353079) b!7269606))

(assert (= (and b!7269604 (not c!1353079)) b!7269610))

(assert (= (and b!7269610 c!1353081) b!7269602))

(assert (= (and b!7269610 (not c!1353081)) b!7269611))

(assert (= (and b!7269611 c!1353083) b!7269608))

(assert (= (and b!7269611 (not c!1353083)) b!7269607))

(assert (= (or b!7269602 b!7269608) bm!662889))

(assert (= (or b!7269602 b!7269608) bm!662887))

(assert (= (or b!7269606 bm!662889) bm!662890))

(assert (= (or b!7269606 bm!662887) bm!662888))

(assert (= (or b!7269603 b!7269606) bm!662892))

(assert (= (or b!7269603 bm!662888) bm!662891))

(declare-fun m!7954972 () Bool)

(assert (=> bm!662891 m!7954972))

(declare-fun m!7954974 () Bool)

(assert (=> bm!662892 m!7954974))

(assert (=> b!7269601 m!7954960))

(assert (=> b!7269605 m!7954714))

(declare-fun m!7954976 () Bool)

(assert (=> bm!662890 m!7954976))

(assert (=> b!7269424 d!2262060))

(declare-fun b!7269613 () Bool)

(declare-fun e!4359342 () List!70895)

(assert (=> b!7269613 (= e!4359342 (Cons!70771 (h!77219 lt!2594068) (++!16690 (t!384965 lt!2594068) (exprs!8230 ct2!346))))))

(declare-fun d!2262062 () Bool)

(declare-fun e!4359341 () Bool)

(assert (=> d!2262062 e!4359341))

(declare-fun res!2947065 () Bool)

(assert (=> d!2262062 (=> (not res!2947065) (not e!4359341))))

(declare-fun lt!2594171 () List!70895)

(assert (=> d!2262062 (= res!2947065 (= (content!14768 lt!2594171) (set.union (content!14768 lt!2594068) (content!14768 (exprs!8230 ct2!346)))))))

(assert (=> d!2262062 (= lt!2594171 e!4359342)))

(declare-fun c!1353084 () Bool)

(assert (=> d!2262062 (= c!1353084 (is-Nil!70771 lt!2594068))))

(assert (=> d!2262062 (= (++!16690 lt!2594068 (exprs!8230 ct2!346)) lt!2594171)))

(declare-fun b!7269614 () Bool)

(declare-fun res!2947064 () Bool)

(assert (=> b!7269614 (=> (not res!2947064) (not e!4359341))))

(assert (=> b!7269614 (= res!2947064 (= (size!41816 lt!2594171) (+ (size!41816 lt!2594068) (size!41816 (exprs!8230 ct2!346)))))))

(declare-fun b!7269612 () Bool)

(assert (=> b!7269612 (= e!4359342 (exprs!8230 ct2!346))))

(declare-fun b!7269615 () Bool)

(assert (=> b!7269615 (= e!4359341 (or (not (= (exprs!8230 ct2!346) Nil!70771)) (= lt!2594171 lt!2594068)))))

(assert (= (and d!2262062 c!1353084) b!7269612))

(assert (= (and d!2262062 (not c!1353084)) b!7269613))

(assert (= (and d!2262062 res!2947065) b!7269614))

(assert (= (and b!7269614 res!2947064) b!7269615))

(declare-fun m!7954978 () Bool)

(assert (=> b!7269613 m!7954978))

(declare-fun m!7954980 () Bool)

(assert (=> d!2262062 m!7954980))

(declare-fun m!7954982 () Bool)

(assert (=> d!2262062 m!7954982))

(assert (=> d!2262062 m!7954920))

(declare-fun m!7954984 () Bool)

(assert (=> b!7269614 m!7954984))

(declare-fun m!7954986 () Bool)

(assert (=> b!7269614 m!7954986))

(assert (=> b!7269614 m!7954928))

(assert (=> b!7269424 d!2262062))

(declare-fun d!2262064 () Bool)

(assert (=> d!2262064 (= (isEmpty!40697 (exprs!8230 ct1!250)) (is-Nil!70771 (exprs!8230 ct1!250)))))

(assert (=> b!7269419 d!2262064))

(declare-fun b!7269620 () Bool)

(declare-fun e!4359345 () Bool)

(declare-fun tp!2040939 () Bool)

(declare-fun tp!2040940 () Bool)

(assert (=> b!7269620 (= e!4359345 (and tp!2040939 tp!2040940))))

(assert (=> b!7269428 (= tp!2040924 e!4359345)))

(assert (= (and b!7269428 (is-Cons!70771 (exprs!8230 ct1!250))) b!7269620))

(declare-fun b!7269621 () Bool)

(declare-fun e!4359346 () Bool)

(declare-fun tp!2040941 () Bool)

(declare-fun tp!2040942 () Bool)

(assert (=> b!7269621 (= e!4359346 (and tp!2040941 tp!2040942))))

(assert (=> b!7269423 (= tp!2040925 e!4359346)))

(assert (= (and b!7269423 (is-Cons!70771 (exprs!8230 ct2!346))) b!7269621))

(declare-fun b!7269626 () Bool)

(declare-fun e!4359349 () Bool)

(declare-fun tp!2040945 () Bool)

(assert (=> b!7269626 (= e!4359349 (and tp_is_empty!47045 tp!2040945))))

(assert (=> b!7269426 (= tp!2040923 e!4359349)))

(assert (= (and b!7269426 (is-Cons!70772 (t!384966 s!7854))) b!7269626))

(declare-fun b_lambda!280125 () Bool)

(assert (= b_lambda!280119 (or b!7269430 b_lambda!280125)))

(declare-fun bs!1910834 () Bool)

(declare-fun d!2262066 () Bool)

(assert (= bs!1910834 (and d!2262066 b!7269430)))

(declare-fun validRegex!9581 (Regex!18790) Bool)

(assert (=> bs!1910834 (= (dynLambda!28920 lambda!448252 (h!77219 lt!2594068)) (validRegex!9581 (h!77219 lt!2594068)))))

(declare-fun m!7954988 () Bool)

(assert (=> bs!1910834 m!7954988))

(assert (=> b!7269503 d!2262066))

(declare-fun b_lambda!280127 () Bool)

(assert (= b_lambda!280121 (or b!7269430 b_lambda!280127)))

(declare-fun bs!1910835 () Bool)

(declare-fun d!2262068 () Bool)

(assert (= bs!1910835 (and d!2262068 b!7269430)))

(assert (=> bs!1910835 (= (dynLambda!28919 lambda!448253 ct1!250) (derivationStepZipperUp!2560 ct1!250 (h!77220 s!7854)))))

(assert (=> bs!1910835 m!7954704))

(assert (=> d!2262040 d!2262068))

(declare-fun b_lambda!280129 () Bool)

(assert (= b_lambda!280123 (or b!7269430 b_lambda!280129)))

(declare-fun bs!1910836 () Bool)

(declare-fun d!2262070 () Bool)

(assert (= bs!1910836 (and d!2262070 b!7269430)))

(assert (=> bs!1910836 (= (dynLambda!28919 lambda!448253 lt!2594065) (derivationStepZipperUp!2560 lt!2594065 (h!77220 s!7854)))))

(assert (=> bs!1910836 m!7954734))

(assert (=> d!2262052 d!2262070))

(declare-fun b_lambda!280131 () Bool)

(assert (= b_lambda!280117 (or b!7269430 b_lambda!280131)))

(declare-fun bs!1910837 () Bool)

(declare-fun d!2262072 () Bool)

(assert (= bs!1910837 (and d!2262072 b!7269430)))

(assert (=> bs!1910837 (= (dynLambda!28919 lambda!448253 lt!2594059) (derivationStepZipperUp!2560 lt!2594059 (h!77220 s!7854)))))

(assert (=> bs!1910837 m!7954716))

(assert (=> d!2262006 d!2262072))

(push 1)

(assert (not d!2262054))

(assert (not d!2262016))

(assert (not b!7269481))

(assert (not bm!662884))

(assert (not b!7269621))

(assert (not d!2262010))

(assert (not b_lambda!280125))

(assert (not b!7269585))

(assert (not d!2262048))

(assert (not d!2262044))

(assert (not bs!1910834))

(assert (not b!7269626))

(assert (not b!7269518))

(assert (not b!7269494))

(assert (not bs!1910835))

(assert (not d!2262014))

(assert (not d!2262040))

(assert (not b!7269478))

(assert (not b_lambda!280127))

(assert (not d!2262024))

(assert (not bm!662861))

(assert (not b!7269600))

(assert (not d!2262038))

(assert (not d!2262032))

(assert (not b!7269497))

(assert (not bm!662859))

(assert (not b!7269539))

(assert (not bs!1910837))

(assert (not b!7269504))

(assert (not b!7269520))

(assert (not b!7269479))

(assert (not b!7269538))

(assert (not bm!662881))

(assert (not b!7269496))

(assert (not b!7269498))

(assert (not b!7269509))

(assert (not b!7269598))

(assert (not d!2262052))

(assert (not bm!662890))

(assert (not bm!662880))

(assert (not bm!662860))

(assert (not b!7269601))

(assert (not bm!662879))

(assert (not b!7269480))

(assert (not d!2262018))

(assert (not d!2262028))

(assert (not bs!1910836))

(assert (not bm!662892))

(assert (not bm!662891))

(assert (not b_lambda!280131))

(assert (not b_lambda!280129))

(assert (not b!7269507))

(assert (not b!7269613))

(assert tp_is_empty!47045)

(assert (not d!2262022))

(assert (not d!2262006))

(assert (not b!7269614))

(assert (not d!2262020))

(assert (not d!2262062))

(assert (not d!2262046))

(assert (not b!7269620))

(assert (not d!2262008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

