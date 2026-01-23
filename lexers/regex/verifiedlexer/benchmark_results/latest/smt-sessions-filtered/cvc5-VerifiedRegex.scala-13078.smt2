; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715918 () Bool)

(assert start!715918)

(declare-fun b!7330986 () Bool)

(declare-fun e!4389778 () Bool)

(declare-fun tp!2081470 () Bool)

(assert (=> b!7330986 (= e!4389778 tp!2081470)))

(declare-fun res!2962710 () Bool)

(declare-fun e!4389777 () Bool)

(assert (=> start!715918 (=> (not res!2962710) (not e!4389777))))

(declare-datatypes ((C!38362 0))(
  ( (C!38363 (val!29541 Int)) )
))
(declare-datatypes ((Regex!19044 0))(
  ( (ElementMatch!19044 (c!1361174 C!38362)) (Concat!27889 (regOne!38600 Regex!19044) (regTwo!38600 Regex!19044)) (EmptyExpr!19044) (Star!19044 (reg!19373 Regex!19044)) (EmptyLang!19044) (Union!19044 (regOne!38601 Regex!19044) (regTwo!38601 Regex!19044)) )
))
(declare-datatypes ((List!71540 0))(
  ( (Nil!71416) (Cons!71416 (h!77864 Regex!19044) (t!385927 List!71540)) )
))
(declare-datatypes ((Context!15968 0))(
  ( (Context!15969 (exprs!8484 List!71540)) )
))
(declare-fun cWitness!35 () Context!15968)

(declare-fun lt!2607871 () (Set Context!15968))

(assert (=> start!715918 (= res!2962710 (set.member cWitness!35 lt!2607871))))

(declare-fun ct1!256 () Context!15968)

(declare-fun c!10305 () C!38362)

(declare-fun derivationStepZipperUp!2724 (Context!15968 C!38362) (Set Context!15968))

(assert (=> start!715918 (= lt!2607871 (derivationStepZipperUp!2724 ct1!256 c!10305))))

(assert (=> start!715918 e!4389777))

(declare-fun tp_is_empty!48333 () Bool)

(assert (=> start!715918 tp_is_empty!48333))

(declare-fun e!4389779 () Bool)

(declare-fun inv!90951 (Context!15968) Bool)

(assert (=> start!715918 (and (inv!90951 cWitness!35) e!4389779)))

(assert (=> start!715918 (and (inv!90951 ct1!256) e!4389778)))

(declare-fun ct2!352 () Context!15968)

(declare-fun e!4389781 () Bool)

(assert (=> start!715918 (and (inv!90951 ct2!352) e!4389781)))

(declare-fun b!7330987 () Bool)

(declare-fun res!2962705 () Bool)

(declare-fun e!4389780 () Bool)

(assert (=> b!7330987 (=> (not res!2962705) (not e!4389780))))

(declare-fun isEmpty!40956 (List!71540) Bool)

(assert (=> b!7330987 (= res!2962705 (not (isEmpty!40956 (exprs!8484 ct1!256))))))

(declare-fun b!7330988 () Bool)

(declare-fun e!4389782 () Bool)

(declare-fun e!4389776 () Bool)

(assert (=> b!7330988 (= e!4389782 e!4389776)))

(declare-fun res!2962707 () Bool)

(assert (=> b!7330988 (=> (not res!2962707) (not e!4389776))))

(declare-fun lt!2607878 () (Set Context!15968))

(declare-fun lt!2607880 () (Set Context!15968))

(assert (=> b!7330988 (= res!2962707 (and (= lt!2607871 (set.union lt!2607880 lt!2607878)) (or (set.member cWitness!35 lt!2607880) (set.member cWitness!35 lt!2607878)) (set.member cWitness!35 lt!2607878)))))

(declare-fun lt!2607876 () Context!15968)

(assert (=> b!7330988 (= lt!2607878 (derivationStepZipperUp!2724 lt!2607876 c!10305))))

(declare-fun b!7330989 () Bool)

(declare-fun e!4389775 () Bool)

(assert (=> b!7330989 (= e!4389775 true)))

(declare-datatypes ((Unit!165049 0))(
  ( (Unit!165050) )
))
(declare-fun lt!2607882 () Unit!165049)

(declare-fun lambda!454712 () Int)

(declare-fun lemmaConcatPreservesForall!1723 (List!71540 List!71540 Int) Unit!165049)

(assert (=> b!7330989 (= lt!2607882 (lemmaConcatPreservesForall!1723 (exprs!8484 ct1!256) (exprs!8484 ct2!352) lambda!454712))))

(declare-fun lt!2607872 () Unit!165049)

(assert (=> b!7330989 (= lt!2607872 (lemmaConcatPreservesForall!1723 (exprs!8484 cWitness!35) (exprs!8484 ct2!352) lambda!454712))))

(declare-fun b!7330990 () Bool)

(assert (=> b!7330990 (= e!4389777 e!4389780)))

(declare-fun res!2962706 () Bool)

(assert (=> b!7330990 (=> (not res!2962706) (not e!4389780))))

(assert (=> b!7330990 (= res!2962706 (is-Cons!71416 (exprs!8484 ct1!256)))))

(declare-fun lt!2607870 () List!71540)

(declare-fun ++!16866 (List!71540 List!71540) List!71540)

(assert (=> b!7330990 (= lt!2607870 (++!16866 (exprs!8484 ct1!256) (exprs!8484 ct2!352)))))

(declare-fun lt!2607873 () Unit!165049)

(assert (=> b!7330990 (= lt!2607873 (lemmaConcatPreservesForall!1723 (exprs!8484 ct1!256) (exprs!8484 ct2!352) lambda!454712))))

(declare-fun b!7330991 () Bool)

(assert (=> b!7330991 (= e!4389776 (not e!4389775))))

(declare-fun res!2962709 () Bool)

(assert (=> b!7330991 (=> res!2962709 e!4389775)))

(declare-fun lt!2607877 () Context!15968)

(assert (=> b!7330991 (= res!2962709 (not (set.member lt!2607877 (derivationStepZipperUp!2724 (Context!15969 lt!2607870) c!10305))))))

(declare-fun lt!2607875 () Unit!165049)

(assert (=> b!7330991 (= lt!2607875 (lemmaConcatPreservesForall!1723 (exprs!8484 cWitness!35) (exprs!8484 ct2!352) lambda!454712))))

(declare-fun lt!2607881 () List!71540)

(assert (=> b!7330991 (set.member lt!2607877 (derivationStepZipperUp!2724 (Context!15969 (++!16866 lt!2607881 (exprs!8484 ct2!352))) c!10305))))

(assert (=> b!7330991 (= lt!2607877 (Context!15969 (++!16866 (exprs!8484 cWitness!35) (exprs!8484 ct2!352))))))

(declare-fun lt!2607879 () Unit!165049)

(assert (=> b!7330991 (= lt!2607879 (lemmaConcatPreservesForall!1723 lt!2607881 (exprs!8484 ct2!352) lambda!454712))))

(declare-fun lt!2607874 () Unit!165049)

(assert (=> b!7330991 (= lt!2607874 (lemmaConcatPreservesForall!1723 (exprs!8484 cWitness!35) (exprs!8484 ct2!352) lambda!454712))))

(declare-fun lt!2607883 () Unit!165049)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!59 (Context!15968 Context!15968 Context!15968 C!38362) Unit!165049)

(assert (=> b!7330991 (= lt!2607883 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!59 lt!2607876 ct2!352 cWitness!35 c!10305))))

(declare-fun b!7330992 () Bool)

(declare-fun tp!2081468 () Bool)

(assert (=> b!7330992 (= e!4389781 tp!2081468)))

(declare-fun b!7330993 () Bool)

(assert (=> b!7330993 (= e!4389780 e!4389782)))

(declare-fun res!2962708 () Bool)

(assert (=> b!7330993 (=> (not res!2962708) (not e!4389782))))

(declare-fun nullable!8145 (Regex!19044) Bool)

(assert (=> b!7330993 (= res!2962708 (nullable!8145 (h!77864 (exprs!8484 ct1!256))))))

(declare-fun derivationStepZipperDown!2871 (Regex!19044 Context!15968 C!38362) (Set Context!15968))

(assert (=> b!7330993 (= lt!2607880 (derivationStepZipperDown!2871 (h!77864 (exprs!8484 ct1!256)) lt!2607876 c!10305))))

(assert (=> b!7330993 (= lt!2607876 (Context!15969 lt!2607881))))

(declare-fun tail!14725 (List!71540) List!71540)

(assert (=> b!7330993 (= lt!2607881 (tail!14725 (exprs!8484 ct1!256)))))

(declare-fun b!7330994 () Bool)

(declare-fun tp!2081469 () Bool)

(assert (=> b!7330994 (= e!4389779 tp!2081469)))

(assert (= (and start!715918 res!2962710) b!7330990))

(assert (= (and b!7330990 res!2962706) b!7330987))

(assert (= (and b!7330987 res!2962705) b!7330993))

(assert (= (and b!7330993 res!2962708) b!7330988))

(assert (= (and b!7330988 res!2962707) b!7330991))

(assert (= (and b!7330991 (not res!2962709)) b!7330989))

(assert (= start!715918 b!7330994))

(assert (= start!715918 b!7330986))

(assert (= start!715918 b!7330992))

(declare-fun m!7997086 () Bool)

(assert (=> b!7330993 m!7997086))

(declare-fun m!7997088 () Bool)

(assert (=> b!7330993 m!7997088))

(declare-fun m!7997090 () Bool)

(assert (=> b!7330993 m!7997090))

(declare-fun m!7997092 () Bool)

(assert (=> b!7330990 m!7997092))

(declare-fun m!7997094 () Bool)

(assert (=> b!7330990 m!7997094))

(assert (=> b!7330989 m!7997094))

(declare-fun m!7997096 () Bool)

(assert (=> b!7330989 m!7997096))

(declare-fun m!7997098 () Bool)

(assert (=> b!7330991 m!7997098))

(assert (=> b!7330991 m!7997096))

(declare-fun m!7997100 () Bool)

(assert (=> b!7330991 m!7997100))

(declare-fun m!7997102 () Bool)

(assert (=> b!7330991 m!7997102))

(declare-fun m!7997104 () Bool)

(assert (=> b!7330991 m!7997104))

(assert (=> b!7330991 m!7997096))

(declare-fun m!7997106 () Bool)

(assert (=> b!7330991 m!7997106))

(declare-fun m!7997108 () Bool)

(assert (=> b!7330991 m!7997108))

(declare-fun m!7997110 () Bool)

(assert (=> b!7330991 m!7997110))

(declare-fun m!7997112 () Bool)

(assert (=> b!7330991 m!7997112))

(declare-fun m!7997114 () Bool)

(assert (=> b!7330988 m!7997114))

(declare-fun m!7997116 () Bool)

(assert (=> b!7330988 m!7997116))

(declare-fun m!7997118 () Bool)

(assert (=> b!7330988 m!7997118))

(declare-fun m!7997120 () Bool)

(assert (=> b!7330987 m!7997120))

(declare-fun m!7997122 () Bool)

(assert (=> start!715918 m!7997122))

(declare-fun m!7997124 () Bool)

(assert (=> start!715918 m!7997124))

(declare-fun m!7997126 () Bool)

(assert (=> start!715918 m!7997126))

(declare-fun m!7997128 () Bool)

(assert (=> start!715918 m!7997128))

(declare-fun m!7997130 () Bool)

(assert (=> start!715918 m!7997130))

(push 1)

(assert (not start!715918))

(assert (not b!7330986))

(assert (not b!7330994))

(assert (not b!7330987))

(assert (not b!7330991))

(assert tp_is_empty!48333)

(assert (not b!7330993))

(assert (not b!7330989))

(assert (not b!7330990))

(assert (not b!7330992))

(assert (not b!7330988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

