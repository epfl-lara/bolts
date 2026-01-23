; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716446 () Bool)

(assert start!716446)

(declare-fun b!7334914 () Bool)

(declare-fun e!4392207 () Bool)

(declare-fun tp!2082171 () Bool)

(assert (=> b!7334914 (= e!4392207 tp!2082171)))

(declare-fun b!7334915 () Bool)

(declare-fun res!2963936 () Bool)

(declare-fun e!4392210 () Bool)

(assert (=> b!7334915 (=> (not res!2963936) (not e!4392210))))

(declare-datatypes ((C!38414 0))(
  ( (C!38415 (val!29567 Int)) )
))
(declare-datatypes ((Regex!19070 0))(
  ( (ElementMatch!19070 (c!1362266 C!38414)) (Concat!27915 (regOne!38652 Regex!19070) (regTwo!38652 Regex!19070)) (EmptyExpr!19070) (Star!19070 (reg!19399 Regex!19070)) (EmptyLang!19070) (Union!19070 (regOne!38653 Regex!19070) (regTwo!38653 Regex!19070)) )
))
(declare-datatypes ((List!71566 0))(
  ( (Nil!71442) (Cons!71442 (h!77890 Regex!19070) (t!385961 List!71566)) )
))
(declare-datatypes ((Context!16020 0))(
  ( (Context!16021 (exprs!8510 List!71566)) )
))
(declare-fun lt!2608915 () (Set Context!16020))

(declare-fun lt!2608911 () (Set Context!16020))

(declare-fun cWitness!35 () Context!16020)

(assert (=> b!7334915 (= res!2963936 (and (= lt!2608911 lt!2608915) (set.member cWitness!35 lt!2608915)))))

(declare-fun b!7334916 () Bool)

(declare-fun lt!2608914 () Context!16020)

(declare-fun lt!2608919 () (Set Context!16020))

(assert (=> b!7334916 (= e!4392210 (not (set.member lt!2608914 lt!2608919)))))

(declare-fun lambda!455052 () Int)

(declare-fun ct2!352 () Context!16020)

(declare-datatypes ((Unit!165101 0))(
  ( (Unit!165102) )
))
(declare-fun lt!2608917 () Unit!165101)

(declare-fun lemmaConcatPreservesForall!1749 (List!71566 List!71566 Int) Unit!165101)

(assert (=> b!7334916 (= lt!2608917 (lemmaConcatPreservesForall!1749 (exprs!8510 cWitness!35) (exprs!8510 ct2!352) lambda!455052))))

(declare-fun c!10305 () C!38414)

(declare-fun lt!2608909 () List!71566)

(declare-fun ct1!256 () Context!16020)

(declare-fun derivationStepZipperDown!2897 (Regex!19070 Context!16020 C!38414) (Set Context!16020))

(declare-fun ++!16892 (List!71566 List!71566) List!71566)

(assert (=> b!7334916 (set.member lt!2608914 (derivationStepZipperDown!2897 (h!77890 (exprs!8510 ct1!256)) (Context!16021 (++!16892 lt!2608909 (exprs!8510 ct2!352))) c!10305))))

(assert (=> b!7334916 (= lt!2608914 (Context!16021 (++!16892 (exprs!8510 cWitness!35) (exprs!8510 ct2!352))))))

(declare-fun lt!2608908 () Unit!165101)

(assert (=> b!7334916 (= lt!2608908 (lemmaConcatPreservesForall!1749 lt!2608909 (exprs!8510 ct2!352) lambda!455052))))

(declare-fun lt!2608913 () Unit!165101)

(assert (=> b!7334916 (= lt!2608913 (lemmaConcatPreservesForall!1749 (exprs!8510 cWitness!35) (exprs!8510 ct2!352) lambda!455052))))

(declare-fun lt!2608916 () Unit!165101)

(declare-fun lt!2608910 () Context!16020)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!35 (Regex!19070 Context!16020 Context!16020 Context!16020 C!38414) Unit!165101)

(assert (=> b!7334916 (= lt!2608916 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!35 (h!77890 (exprs!8510 ct1!256)) lt!2608910 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2608912 () List!71566)

(declare-fun tail!14751 (List!71566) List!71566)

(assert (=> b!7334916 (= lt!2608919 (derivationStepZipperDown!2897 (h!77890 (exprs!8510 ct1!256)) (Context!16021 (tail!14751 lt!2608912)) c!10305))))

(declare-fun b!7334917 () Bool)

(declare-fun res!2963937 () Bool)

(assert (=> b!7334917 (=> (not res!2963937) (not e!4392210))))

(declare-fun isEmpty!40982 (List!71566) Bool)

(assert (=> b!7334917 (= res!2963937 (not (isEmpty!40982 lt!2608912)))))

(declare-fun b!7334918 () Bool)

(declare-fun res!2963938 () Bool)

(declare-fun e!4392209 () Bool)

(assert (=> b!7334918 (=> (not res!2963938) (not e!4392209))))

(assert (=> b!7334918 (= res!2963938 (not (isEmpty!40982 (exprs!8510 ct1!256))))))

(declare-fun b!7334919 () Bool)

(declare-fun e!4392208 () Bool)

(assert (=> b!7334919 (= e!4392208 e!4392209)))

(declare-fun res!2963934 () Bool)

(assert (=> b!7334919 (=> (not res!2963934) (not e!4392209))))

(assert (=> b!7334919 (= res!2963934 (is-Cons!71442 (exprs!8510 ct1!256)))))

(assert (=> b!7334919 (= lt!2608912 (++!16892 (exprs!8510 ct1!256) (exprs!8510 ct2!352)))))

(declare-fun lt!2608918 () Unit!165101)

(assert (=> b!7334919 (= lt!2608918 (lemmaConcatPreservesForall!1749 (exprs!8510 ct1!256) (exprs!8510 ct2!352) lambda!455052))))

(declare-fun res!2963935 () Bool)

(assert (=> start!716446 (=> (not res!2963935) (not e!4392208))))

(assert (=> start!716446 (= res!2963935 (set.member cWitness!35 lt!2608911))))

(declare-fun derivationStepZipperUp!2750 (Context!16020 C!38414) (Set Context!16020))

(assert (=> start!716446 (= lt!2608911 (derivationStepZipperUp!2750 ct1!256 c!10305))))

(assert (=> start!716446 e!4392208))

(declare-fun tp_is_empty!48385 () Bool)

(assert (=> start!716446 tp_is_empty!48385))

(declare-fun inv!91016 (Context!16020) Bool)

(assert (=> start!716446 (and (inv!91016 cWitness!35) e!4392207)))

(declare-fun e!4392212 () Bool)

(assert (=> start!716446 (and (inv!91016 ct1!256) e!4392212)))

(declare-fun e!4392211 () Bool)

(assert (=> start!716446 (and (inv!91016 ct2!352) e!4392211)))

(declare-fun b!7334920 () Bool)

(declare-fun tp!2082170 () Bool)

(assert (=> b!7334920 (= e!4392211 tp!2082170)))

(declare-fun b!7334921 () Bool)

(declare-fun tp!2082172 () Bool)

(assert (=> b!7334921 (= e!4392212 tp!2082172)))

(declare-fun b!7334922 () Bool)

(assert (=> b!7334922 (= e!4392209 e!4392210)))

(declare-fun res!2963933 () Bool)

(assert (=> b!7334922 (=> (not res!2963933) (not e!4392210))))

(declare-fun nullable!8171 (Regex!19070) Bool)

(assert (=> b!7334922 (= res!2963933 (not (nullable!8171 (h!77890 (exprs!8510 ct1!256)))))))

(assert (=> b!7334922 (= lt!2608915 (derivationStepZipperDown!2897 (h!77890 (exprs!8510 ct1!256)) lt!2608910 c!10305))))

(assert (=> b!7334922 (= lt!2608910 (Context!16021 lt!2608909))))

(assert (=> b!7334922 (= lt!2608909 (tail!14751 (exprs!8510 ct1!256)))))

(assert (= (and start!716446 res!2963935) b!7334919))

(assert (= (and b!7334919 res!2963934) b!7334918))

(assert (= (and b!7334918 res!2963938) b!7334922))

(assert (= (and b!7334922 res!2963933) b!7334915))

(assert (= (and b!7334915 res!2963936) b!7334917))

(assert (= (and b!7334917 res!2963937) b!7334916))

(assert (= start!716446 b!7334914))

(assert (= start!716446 b!7334921))

(assert (= start!716446 b!7334920))

(declare-fun m!8000806 () Bool)

(assert (=> b!7334917 m!8000806))

(declare-fun m!8000808 () Bool)

(assert (=> start!716446 m!8000808))

(declare-fun m!8000810 () Bool)

(assert (=> start!716446 m!8000810))

(declare-fun m!8000812 () Bool)

(assert (=> start!716446 m!8000812))

(declare-fun m!8000814 () Bool)

(assert (=> start!716446 m!8000814))

(declare-fun m!8000816 () Bool)

(assert (=> start!716446 m!8000816))

(declare-fun m!8000818 () Bool)

(assert (=> b!7334922 m!8000818))

(declare-fun m!8000820 () Bool)

(assert (=> b!7334922 m!8000820))

(declare-fun m!8000822 () Bool)

(assert (=> b!7334922 m!8000822))

(declare-fun m!8000824 () Bool)

(assert (=> b!7334918 m!8000824))

(declare-fun m!8000826 () Bool)

(assert (=> b!7334916 m!8000826))

(declare-fun m!8000828 () Bool)

(assert (=> b!7334916 m!8000828))

(declare-fun m!8000830 () Bool)

(assert (=> b!7334916 m!8000830))

(declare-fun m!8000832 () Bool)

(assert (=> b!7334916 m!8000832))

(declare-fun m!8000834 () Bool)

(assert (=> b!7334916 m!8000834))

(declare-fun m!8000836 () Bool)

(assert (=> b!7334916 m!8000836))

(declare-fun m!8000838 () Bool)

(assert (=> b!7334916 m!8000838))

(declare-fun m!8000840 () Bool)

(assert (=> b!7334916 m!8000840))

(declare-fun m!8000842 () Bool)

(assert (=> b!7334916 m!8000842))

(assert (=> b!7334916 m!8000828))

(declare-fun m!8000844 () Bool)

(assert (=> b!7334916 m!8000844))

(declare-fun m!8000846 () Bool)

(assert (=> b!7334915 m!8000846))

(declare-fun m!8000848 () Bool)

(assert (=> b!7334919 m!8000848))

(declare-fun m!8000850 () Bool)

(assert (=> b!7334919 m!8000850))

(push 1)

(assert (not b!7334919))

(assert (not b!7334921))

(assert (not b!7334918))

(assert (not start!716446))

(assert (not b!7334914))

(assert (not b!7334917))

(assert tp_is_empty!48385)

(assert (not b!7334920))

(assert (not b!7334916))

(assert (not b!7334922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7334961 () Bool)

(declare-fun e!4392239 () Bool)

(assert (=> b!7334961 (= e!4392239 (nullable!8171 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun b!7334962 () Bool)

(declare-fun e!4392238 () (Set Context!16020))

(assert (=> b!7334962 (= e!4392238 (as set.empty (Set Context!16020)))))

(declare-fun call!668718 () (Set Context!16020))

(declare-fun e!4392237 () (Set Context!16020))

(declare-fun b!7334963 () Bool)

(assert (=> b!7334963 (= e!4392237 (set.union call!668718 (derivationStepZipperUp!2750 (Context!16021 (t!385961 (exprs!8510 ct1!256))) c!10305)))))

(declare-fun b!7334960 () Bool)

(assert (=> b!7334960 (= e!4392238 call!668718)))

(declare-fun d!2277782 () Bool)

(declare-fun c!1362272 () Bool)

(assert (=> d!2277782 (= c!1362272 e!4392239)))

(declare-fun res!2963959 () Bool)

(assert (=> d!2277782 (=> (not res!2963959) (not e!4392239))))

(assert (=> d!2277782 (= res!2963959 (is-Cons!71442 (exprs!8510 ct1!256)))))

(assert (=> d!2277782 (= (derivationStepZipperUp!2750 ct1!256 c!10305) e!4392237)))

(declare-fun bm!668713 () Bool)

(assert (=> bm!668713 (= call!668718 (derivationStepZipperDown!2897 (h!77890 (exprs!8510 ct1!256)) (Context!16021 (t!385961 (exprs!8510 ct1!256))) c!10305))))

(declare-fun b!7334964 () Bool)

(assert (=> b!7334964 (= e!4392237 e!4392238)))

(declare-fun c!1362273 () Bool)

(assert (=> b!7334964 (= c!1362273 (is-Cons!71442 (exprs!8510 ct1!256)))))

(assert (= (and d!2277782 res!2963959) b!7334961))

(assert (= (and d!2277782 c!1362272) b!7334963))

(assert (= (and d!2277782 (not c!1362272)) b!7334964))

(assert (= (and b!7334964 c!1362273) b!7334960))

(assert (= (and b!7334964 (not c!1362273)) b!7334962))

(assert (= (or b!7334963 b!7334960) bm!668713))

(assert (=> b!7334961 m!8000818))

(declare-fun m!8000900 () Bool)

(assert (=> b!7334963 m!8000900))

(declare-fun m!8000902 () Bool)

(assert (=> bm!668713 m!8000902))

(assert (=> start!716446 d!2277782))

(declare-fun bs!1917867 () Bool)

(declare-fun d!2277788 () Bool)

(assert (= bs!1917867 (and d!2277788 b!7334919)))

(declare-fun lambda!455064 () Int)

(assert (=> bs!1917867 (= lambda!455064 lambda!455052)))

(declare-fun forall!17906 (List!71566 Int) Bool)

(assert (=> d!2277788 (= (inv!91016 cWitness!35) (forall!17906 (exprs!8510 cWitness!35) lambda!455064))))

(declare-fun bs!1917868 () Bool)

(assert (= bs!1917868 d!2277788))

(declare-fun m!8000904 () Bool)

(assert (=> bs!1917868 m!8000904))

(assert (=> start!716446 d!2277788))

(declare-fun bs!1917869 () Bool)

(declare-fun d!2277790 () Bool)

(assert (= bs!1917869 (and d!2277790 b!7334919)))

(declare-fun lambda!455065 () Int)

(assert (=> bs!1917869 (= lambda!455065 lambda!455052)))

(declare-fun bs!1917870 () Bool)

(assert (= bs!1917870 (and d!2277790 d!2277788)))

(assert (=> bs!1917870 (= lambda!455065 lambda!455064)))

(assert (=> d!2277790 (= (inv!91016 ct1!256) (forall!17906 (exprs!8510 ct1!256) lambda!455065))))

(declare-fun bs!1917871 () Bool)

(assert (= bs!1917871 d!2277790))

(declare-fun m!8000906 () Bool)

(assert (=> bs!1917871 m!8000906))

(assert (=> start!716446 d!2277790))

(declare-fun bs!1917872 () Bool)

(declare-fun d!2277792 () Bool)

(assert (= bs!1917872 (and d!2277792 b!7334919)))

(declare-fun lambda!455066 () Int)

(assert (=> bs!1917872 (= lambda!455066 lambda!455052)))

(declare-fun bs!1917873 () Bool)

(assert (= bs!1917873 (and d!2277792 d!2277788)))

(assert (=> bs!1917873 (= lambda!455066 lambda!455064)))

(declare-fun bs!1917874 () Bool)

(assert (= bs!1917874 (and d!2277792 d!2277790)))

(assert (=> bs!1917874 (= lambda!455066 lambda!455065)))

(assert (=> d!2277792 (= (inv!91016 ct2!352) (forall!17906 (exprs!8510 ct2!352) lambda!455066))))

(declare-fun bs!1917875 () Bool)

(assert (= bs!1917875 d!2277792))

(declare-fun m!8000908 () Bool)

(assert (=> bs!1917875 m!8000908))

(assert (=> start!716446 d!2277792))

(declare-fun bs!1917876 () Bool)

(declare-fun d!2277794 () Bool)

(assert (= bs!1917876 (and d!2277794 b!7334919)))

(declare-fun lambda!455071 () Int)

(assert (=> bs!1917876 (= lambda!455071 lambda!455052)))

(declare-fun bs!1917877 () Bool)

(assert (= bs!1917877 (and d!2277794 d!2277788)))

(assert (=> bs!1917877 (= lambda!455071 lambda!455064)))

(declare-fun bs!1917878 () Bool)

(assert (= bs!1917878 (and d!2277794 d!2277790)))

(assert (=> bs!1917878 (= lambda!455071 lambda!455065)))

(declare-fun bs!1917879 () Bool)

(assert (= bs!1917879 (and d!2277794 d!2277792)))

(assert (=> bs!1917879 (= lambda!455071 lambda!455066)))

(assert (=> d!2277794 (set.member (Context!16021 (++!16892 (exprs!8510 cWitness!35) (exprs!8510 ct2!352))) (derivationStepZipperDown!2897 (h!77890 (exprs!8510 ct1!256)) (Context!16021 (++!16892 (exprs!8510 lt!2608910) (exprs!8510 ct2!352))) c!10305))))

(declare-fun lt!2608964 () Unit!165101)

(assert (=> d!2277794 (= lt!2608964 (lemmaConcatPreservesForall!1749 (exprs!8510 lt!2608910) (exprs!8510 ct2!352) lambda!455071))))

(declare-fun lt!2608963 () Unit!165101)

(assert (=> d!2277794 (= lt!2608963 (lemmaConcatPreservesForall!1749 (exprs!8510 cWitness!35) (exprs!8510 ct2!352) lambda!455071))))

(declare-fun lt!2608962 () Unit!165101)

(declare-fun choose!57053 (Regex!19070 Context!16020 Context!16020 Context!16020 C!38414) Unit!165101)

(assert (=> d!2277794 (= lt!2608962 (choose!57053 (h!77890 (exprs!8510 ct1!256)) lt!2608910 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9668 (Regex!19070) Bool)

(assert (=> d!2277794 (validRegex!9668 (h!77890 (exprs!8510 ct1!256)))))

(assert (=> d!2277794 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!35 (h!77890 (exprs!8510 ct1!256)) lt!2608910 ct2!352 cWitness!35 c!10305) lt!2608962)))

(declare-fun bs!1917880 () Bool)

(assert (= bs!1917880 d!2277794))

(declare-fun m!8000910 () Bool)

(assert (=> bs!1917880 m!8000910))

(declare-fun m!8000912 () Bool)

(assert (=> bs!1917880 m!8000912))

(declare-fun m!8000914 () Bool)

(assert (=> bs!1917880 m!8000914))

(declare-fun m!8000916 () Bool)

(assert (=> bs!1917880 m!8000916))

(declare-fun m!8000918 () Bool)

(assert (=> bs!1917880 m!8000918))

(declare-fun m!8000920 () Bool)

(assert (=> bs!1917880 m!8000920))

(assert (=> bs!1917880 m!8000836))

(declare-fun m!8000922 () Bool)

(assert (=> bs!1917880 m!8000922))

(assert (=> b!7334916 d!2277794))

(declare-fun b!7335009 () Bool)

(declare-fun e!4392264 () (Set Context!16020))

(declare-fun call!668748 () (Set Context!16020))

(assert (=> b!7335009 (= e!4392264 call!668748)))

(declare-fun b!7335010 () Bool)

(assert (=> b!7335010 (= e!4392264 (as set.empty (Set Context!16020)))))

(declare-fun call!668745 () (Set Context!16020))

(declare-fun call!668747 () List!71566)

(declare-fun c!1362297 () Bool)

(declare-fun bm!668738 () Bool)

(assert (=> bm!668738 (= call!668745 (derivationStepZipperDown!2897 (ite c!1362297 (regOne!38653 (h!77890 (exprs!8510 ct1!256))) (regOne!38652 (h!77890 (exprs!8510 ct1!256)))) (ite c!1362297 (Context!16021 (tail!14751 lt!2608912)) (Context!16021 call!668747)) c!10305))))

(declare-fun b!7335011 () Bool)

(declare-fun e!4392266 () (Set Context!16020))

(assert (=> b!7335011 (= e!4392266 (set.insert (Context!16021 (tail!14751 lt!2608912)) (as set.empty (Set Context!16020))))))

(declare-fun b!7335012 () Bool)

(declare-fun c!1362296 () Bool)

(assert (=> b!7335012 (= c!1362296 (is-Star!19070 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun e!4392267 () (Set Context!16020))

(assert (=> b!7335012 (= e!4392267 e!4392264)))

(declare-fun b!7335013 () Bool)

(declare-fun e!4392265 () (Set Context!16020))

(declare-fun call!668743 () (Set Context!16020))

(assert (=> b!7335013 (= e!4392265 (set.union call!668745 call!668743))))

(declare-fun b!7335014 () Bool)

(declare-fun c!1362299 () Bool)

(declare-fun e!4392268 () Bool)

(assert (=> b!7335014 (= c!1362299 e!4392268)))

(declare-fun res!2963964 () Bool)

(assert (=> b!7335014 (=> (not res!2963964) (not e!4392268))))

(assert (=> b!7335014 (= res!2963964 (is-Concat!27915 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun e!4392269 () (Set Context!16020))

(assert (=> b!7335014 (= e!4392269 e!4392265)))

(declare-fun b!7335015 () Bool)

(declare-fun call!668746 () (Set Context!16020))

(assert (=> b!7335015 (= e!4392269 (set.union call!668745 call!668746))))

(declare-fun bm!668739 () Bool)

(assert (=> bm!668739 (= call!668743 call!668746)))

(declare-fun bm!668740 () Bool)

(declare-fun call!668744 () List!71566)

(assert (=> bm!668740 (= call!668744 call!668747)))

(declare-fun bm!668741 () Bool)

(assert (=> bm!668741 (= call!668748 call!668743)))

(declare-fun b!7335016 () Bool)

(assert (=> b!7335016 (= e!4392266 e!4392269)))

(assert (=> b!7335016 (= c!1362297 (is-Union!19070 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun b!7335017 () Bool)

(assert (=> b!7335017 (= e!4392267 call!668748)))

(declare-fun c!1362295 () Bool)

(declare-fun bm!668742 () Bool)

(declare-fun $colon$colon!3079 (List!71566 Regex!19070) List!71566)

(assert (=> bm!668742 (= call!668747 ($colon$colon!3079 (exprs!8510 (Context!16021 (tail!14751 lt!2608912))) (ite (or c!1362299 c!1362295) (regTwo!38652 (h!77890 (exprs!8510 ct1!256))) (h!77890 (exprs!8510 ct1!256)))))))

(declare-fun b!7335018 () Bool)

(assert (=> b!7335018 (= e!4392265 e!4392267)))

(assert (=> b!7335018 (= c!1362295 (is-Concat!27915 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun bm!668743 () Bool)

(assert (=> bm!668743 (= call!668746 (derivationStepZipperDown!2897 (ite c!1362297 (regTwo!38653 (h!77890 (exprs!8510 ct1!256))) (ite c!1362299 (regTwo!38652 (h!77890 (exprs!8510 ct1!256))) (ite c!1362295 (regOne!38652 (h!77890 (exprs!8510 ct1!256))) (reg!19399 (h!77890 (exprs!8510 ct1!256)))))) (ite (or c!1362297 c!1362299) (Context!16021 (tail!14751 lt!2608912)) (Context!16021 call!668744)) c!10305))))

(declare-fun b!7335019 () Bool)

(assert (=> b!7335019 (= e!4392268 (nullable!8171 (regOne!38652 (h!77890 (exprs!8510 ct1!256)))))))

(declare-fun d!2277796 () Bool)

(declare-fun c!1362298 () Bool)

(assert (=> d!2277796 (= c!1362298 (and (is-ElementMatch!19070 (h!77890 (exprs!8510 ct1!256))) (= (c!1362266 (h!77890 (exprs!8510 ct1!256))) c!10305)))))

(assert (=> d!2277796 (= (derivationStepZipperDown!2897 (h!77890 (exprs!8510 ct1!256)) (Context!16021 (tail!14751 lt!2608912)) c!10305) e!4392266)))

(assert (= (and d!2277796 c!1362298) b!7335011))

(assert (= (and d!2277796 (not c!1362298)) b!7335016))

(assert (= (and b!7335016 c!1362297) b!7335015))

(assert (= (and b!7335016 (not c!1362297)) b!7335014))

(assert (= (and b!7335014 res!2963964) b!7335019))

(assert (= (and b!7335014 c!1362299) b!7335013))

(assert (= (and b!7335014 (not c!1362299)) b!7335018))

(assert (= (and b!7335018 c!1362295) b!7335017))

(assert (= (and b!7335018 (not c!1362295)) b!7335012))

(assert (= (and b!7335012 c!1362296) b!7335009))

(assert (= (and b!7335012 (not c!1362296)) b!7335010))

(assert (= (or b!7335017 b!7335009) bm!668740))

(assert (= (or b!7335017 b!7335009) bm!668741))

(assert (= (or b!7335013 bm!668741) bm!668739))

(assert (= (or b!7335013 bm!668740) bm!668742))

(assert (= (or b!7335015 bm!668739) bm!668743))

(assert (= (or b!7335015 b!7335013) bm!668738))

(declare-fun m!8000924 () Bool)

(assert (=> bm!668743 m!8000924))

(declare-fun m!8000926 () Bool)

(assert (=> b!7335011 m!8000926))

(declare-fun m!8000928 () Bool)

(assert (=> b!7335019 m!8000928))

(declare-fun m!8000930 () Bool)

(assert (=> bm!668742 m!8000930))

(declare-fun m!8000932 () Bool)

(assert (=> bm!668738 m!8000932))

(assert (=> b!7334916 d!2277796))

(declare-fun d!2277798 () Bool)

(declare-fun e!4392281 () Bool)

(assert (=> d!2277798 e!4392281))

(declare-fun res!2963970 () Bool)

(assert (=> d!2277798 (=> (not res!2963970) (not e!4392281))))

(declare-fun lt!2608967 () List!71566)

(declare-fun content!14997 (List!71566) (Set Regex!19070))

(assert (=> d!2277798 (= res!2963970 (= (content!14997 lt!2608967) (set.union (content!14997 lt!2608909) (content!14997 (exprs!8510 ct2!352)))))))

(declare-fun e!4392280 () List!71566)

(assert (=> d!2277798 (= lt!2608967 e!4392280)))

(declare-fun c!1362307 () Bool)

(assert (=> d!2277798 (= c!1362307 (is-Nil!71442 lt!2608909))))

(assert (=> d!2277798 (= (++!16892 lt!2608909 (exprs!8510 ct2!352)) lt!2608967)))

(declare-fun b!7335040 () Bool)

(assert (=> b!7335040 (= e!4392280 (Cons!71442 (h!77890 lt!2608909) (++!16892 (t!385961 lt!2608909) (exprs!8510 ct2!352))))))

(declare-fun b!7335042 () Bool)

(assert (=> b!7335042 (= e!4392281 (or (not (= (exprs!8510 ct2!352) Nil!71442)) (= lt!2608967 lt!2608909)))))

(declare-fun b!7335039 () Bool)

(assert (=> b!7335039 (= e!4392280 (exprs!8510 ct2!352))))

(declare-fun b!7335041 () Bool)

(declare-fun res!2963971 () Bool)

(assert (=> b!7335041 (=> (not res!2963971) (not e!4392281))))

(declare-fun size!41976 (List!71566) Int)

(assert (=> b!7335041 (= res!2963971 (= (size!41976 lt!2608967) (+ (size!41976 lt!2608909) (size!41976 (exprs!8510 ct2!352)))))))

(assert (= (and d!2277798 c!1362307) b!7335039))

(assert (= (and d!2277798 (not c!1362307)) b!7335040))

(assert (= (and d!2277798 res!2963970) b!7335041))

(assert (= (and b!7335041 res!2963971) b!7335042))

(declare-fun m!8000934 () Bool)

(assert (=> d!2277798 m!8000934))

(declare-fun m!8000936 () Bool)

(assert (=> d!2277798 m!8000936))

(declare-fun m!8000938 () Bool)

(assert (=> d!2277798 m!8000938))

(declare-fun m!8000940 () Bool)

(assert (=> b!7335040 m!8000940))

(declare-fun m!8000942 () Bool)

(assert (=> b!7335041 m!8000942))

(declare-fun m!8000944 () Bool)

(assert (=> b!7335041 m!8000944))

(declare-fun m!8000946 () Bool)

(assert (=> b!7335041 m!8000946))

(assert (=> b!7334916 d!2277798))

(declare-fun d!2277800 () Bool)

(assert (=> d!2277800 (forall!17906 (++!16892 lt!2608909 (exprs!8510 ct2!352)) lambda!455052)))

(declare-fun lt!2608970 () Unit!165101)

(declare-fun choose!57054 (List!71566 List!71566 Int) Unit!165101)

(assert (=> d!2277800 (= lt!2608970 (choose!57054 lt!2608909 (exprs!8510 ct2!352) lambda!455052))))

(assert (=> d!2277800 (forall!17906 lt!2608909 lambda!455052)))

(assert (=> d!2277800 (= (lemmaConcatPreservesForall!1749 lt!2608909 (exprs!8510 ct2!352) lambda!455052) lt!2608970)))

(declare-fun bs!1917881 () Bool)

(assert (= bs!1917881 d!2277800))

(assert (=> bs!1917881 m!8000830))

(assert (=> bs!1917881 m!8000830))

(declare-fun m!8000958 () Bool)

(assert (=> bs!1917881 m!8000958))

(declare-fun m!8000960 () Bool)

(assert (=> bs!1917881 m!8000960))

(declare-fun m!8000962 () Bool)

(assert (=> bs!1917881 m!8000962))

(assert (=> b!7334916 d!2277800))

(declare-fun d!2277806 () Bool)

(declare-fun e!4392283 () Bool)

(assert (=> d!2277806 e!4392283))

(declare-fun res!2963972 () Bool)

(assert (=> d!2277806 (=> (not res!2963972) (not e!4392283))))

(declare-fun lt!2608971 () List!71566)

(assert (=> d!2277806 (= res!2963972 (= (content!14997 lt!2608971) (set.union (content!14997 (exprs!8510 cWitness!35)) (content!14997 (exprs!8510 ct2!352)))))))

(declare-fun e!4392282 () List!71566)

(assert (=> d!2277806 (= lt!2608971 e!4392282)))

(declare-fun c!1362308 () Bool)

(assert (=> d!2277806 (= c!1362308 (is-Nil!71442 (exprs!8510 cWitness!35)))))

(assert (=> d!2277806 (= (++!16892 (exprs!8510 cWitness!35) (exprs!8510 ct2!352)) lt!2608971)))

(declare-fun b!7335044 () Bool)

(assert (=> b!7335044 (= e!4392282 (Cons!71442 (h!77890 (exprs!8510 cWitness!35)) (++!16892 (t!385961 (exprs!8510 cWitness!35)) (exprs!8510 ct2!352))))))

(declare-fun b!7335046 () Bool)

(assert (=> b!7335046 (= e!4392283 (or (not (= (exprs!8510 ct2!352) Nil!71442)) (= lt!2608971 (exprs!8510 cWitness!35))))))

(declare-fun b!7335043 () Bool)

(assert (=> b!7335043 (= e!4392282 (exprs!8510 ct2!352))))

(declare-fun b!7335045 () Bool)

(declare-fun res!2963973 () Bool)

(assert (=> b!7335045 (=> (not res!2963973) (not e!4392283))))

(assert (=> b!7335045 (= res!2963973 (= (size!41976 lt!2608971) (+ (size!41976 (exprs!8510 cWitness!35)) (size!41976 (exprs!8510 ct2!352)))))))

(assert (= (and d!2277806 c!1362308) b!7335043))

(assert (= (and d!2277806 (not c!1362308)) b!7335044))

(assert (= (and d!2277806 res!2963972) b!7335045))

(assert (= (and b!7335045 res!2963973) b!7335046))

(declare-fun m!8000964 () Bool)

(assert (=> d!2277806 m!8000964))

(declare-fun m!8000966 () Bool)

(assert (=> d!2277806 m!8000966))

(assert (=> d!2277806 m!8000938))

(declare-fun m!8000968 () Bool)

(assert (=> b!7335044 m!8000968))

(declare-fun m!8000970 () Bool)

(assert (=> b!7335045 m!8000970))

(declare-fun m!8000972 () Bool)

(assert (=> b!7335045 m!8000972))

(assert (=> b!7335045 m!8000946))

(assert (=> b!7334916 d!2277806))

(declare-fun d!2277808 () Bool)

(assert (=> d!2277808 (forall!17906 (++!16892 (exprs!8510 cWitness!35) (exprs!8510 ct2!352)) lambda!455052)))

(declare-fun lt!2608972 () Unit!165101)

(assert (=> d!2277808 (= lt!2608972 (choose!57054 (exprs!8510 cWitness!35) (exprs!8510 ct2!352) lambda!455052))))

(assert (=> d!2277808 (forall!17906 (exprs!8510 cWitness!35) lambda!455052)))

(assert (=> d!2277808 (= (lemmaConcatPreservesForall!1749 (exprs!8510 cWitness!35) (exprs!8510 ct2!352) lambda!455052) lt!2608972)))

(declare-fun bs!1917882 () Bool)

(assert (= bs!1917882 d!2277808))

(assert (=> bs!1917882 m!8000836))

(assert (=> bs!1917882 m!8000836))

(declare-fun m!8000974 () Bool)

(assert (=> bs!1917882 m!8000974))

(declare-fun m!8000976 () Bool)

(assert (=> bs!1917882 m!8000976))

(declare-fun m!8000978 () Bool)

(assert (=> bs!1917882 m!8000978))

(assert (=> b!7334916 d!2277808))

(declare-fun b!7335047 () Bool)

(declare-fun e!4392284 () (Set Context!16020))

(declare-fun call!668760 () (Set Context!16020))

(assert (=> b!7335047 (= e!4392284 call!668760)))

(declare-fun b!7335048 () Bool)

(assert (=> b!7335048 (= e!4392284 (as set.empty (Set Context!16020)))))

(declare-fun call!668759 () List!71566)

(declare-fun c!1362311 () Bool)

(declare-fun bm!668750 () Bool)

(declare-fun call!668757 () (Set Context!16020))

(assert (=> bm!668750 (= call!668757 (derivationStepZipperDown!2897 (ite c!1362311 (regOne!38653 (h!77890 (exprs!8510 ct1!256))) (regOne!38652 (h!77890 (exprs!8510 ct1!256)))) (ite c!1362311 (Context!16021 (++!16892 lt!2608909 (exprs!8510 ct2!352))) (Context!16021 call!668759)) c!10305))))

(declare-fun b!7335049 () Bool)

(declare-fun e!4392286 () (Set Context!16020))

(assert (=> b!7335049 (= e!4392286 (set.insert (Context!16021 (++!16892 lt!2608909 (exprs!8510 ct2!352))) (as set.empty (Set Context!16020))))))

(declare-fun b!7335050 () Bool)

(declare-fun c!1362310 () Bool)

(assert (=> b!7335050 (= c!1362310 (is-Star!19070 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun e!4392287 () (Set Context!16020))

(assert (=> b!7335050 (= e!4392287 e!4392284)))

(declare-fun b!7335051 () Bool)

(declare-fun e!4392285 () (Set Context!16020))

(declare-fun call!668755 () (Set Context!16020))

(assert (=> b!7335051 (= e!4392285 (set.union call!668757 call!668755))))

(declare-fun b!7335052 () Bool)

(declare-fun c!1362313 () Bool)

(declare-fun e!4392288 () Bool)

(assert (=> b!7335052 (= c!1362313 e!4392288)))

(declare-fun res!2963974 () Bool)

(assert (=> b!7335052 (=> (not res!2963974) (not e!4392288))))

(assert (=> b!7335052 (= res!2963974 (is-Concat!27915 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun e!4392289 () (Set Context!16020))

(assert (=> b!7335052 (= e!4392289 e!4392285)))

(declare-fun b!7335053 () Bool)

(declare-fun call!668758 () (Set Context!16020))

(assert (=> b!7335053 (= e!4392289 (set.union call!668757 call!668758))))

(declare-fun bm!668751 () Bool)

(assert (=> bm!668751 (= call!668755 call!668758)))

(declare-fun bm!668752 () Bool)

(declare-fun call!668756 () List!71566)

(assert (=> bm!668752 (= call!668756 call!668759)))

(declare-fun bm!668753 () Bool)

(assert (=> bm!668753 (= call!668760 call!668755)))

(declare-fun b!7335054 () Bool)

(assert (=> b!7335054 (= e!4392286 e!4392289)))

(assert (=> b!7335054 (= c!1362311 (is-Union!19070 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun b!7335055 () Bool)

(assert (=> b!7335055 (= e!4392287 call!668760)))

(declare-fun bm!668754 () Bool)

(declare-fun c!1362309 () Bool)

(assert (=> bm!668754 (= call!668759 ($colon$colon!3079 (exprs!8510 (Context!16021 (++!16892 lt!2608909 (exprs!8510 ct2!352)))) (ite (or c!1362313 c!1362309) (regTwo!38652 (h!77890 (exprs!8510 ct1!256))) (h!77890 (exprs!8510 ct1!256)))))))

(declare-fun b!7335056 () Bool)

(assert (=> b!7335056 (= e!4392285 e!4392287)))

(assert (=> b!7335056 (= c!1362309 (is-Concat!27915 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun bm!668755 () Bool)

(assert (=> bm!668755 (= call!668758 (derivationStepZipperDown!2897 (ite c!1362311 (regTwo!38653 (h!77890 (exprs!8510 ct1!256))) (ite c!1362313 (regTwo!38652 (h!77890 (exprs!8510 ct1!256))) (ite c!1362309 (regOne!38652 (h!77890 (exprs!8510 ct1!256))) (reg!19399 (h!77890 (exprs!8510 ct1!256)))))) (ite (or c!1362311 c!1362313) (Context!16021 (++!16892 lt!2608909 (exprs!8510 ct2!352))) (Context!16021 call!668756)) c!10305))))

(declare-fun b!7335057 () Bool)

(assert (=> b!7335057 (= e!4392288 (nullable!8171 (regOne!38652 (h!77890 (exprs!8510 ct1!256)))))))

(declare-fun d!2277810 () Bool)

(declare-fun c!1362312 () Bool)

(assert (=> d!2277810 (= c!1362312 (and (is-ElementMatch!19070 (h!77890 (exprs!8510 ct1!256))) (= (c!1362266 (h!77890 (exprs!8510 ct1!256))) c!10305)))))

(assert (=> d!2277810 (= (derivationStepZipperDown!2897 (h!77890 (exprs!8510 ct1!256)) (Context!16021 (++!16892 lt!2608909 (exprs!8510 ct2!352))) c!10305) e!4392286)))

(assert (= (and d!2277810 c!1362312) b!7335049))

(assert (= (and d!2277810 (not c!1362312)) b!7335054))

(assert (= (and b!7335054 c!1362311) b!7335053))

(assert (= (and b!7335054 (not c!1362311)) b!7335052))

(assert (= (and b!7335052 res!2963974) b!7335057))

(assert (= (and b!7335052 c!1362313) b!7335051))

(assert (= (and b!7335052 (not c!1362313)) b!7335056))

(assert (= (and b!7335056 c!1362309) b!7335055))

(assert (= (and b!7335056 (not c!1362309)) b!7335050))

(assert (= (and b!7335050 c!1362310) b!7335047))

(assert (= (and b!7335050 (not c!1362310)) b!7335048))

(assert (= (or b!7335055 b!7335047) bm!668752))

(assert (= (or b!7335055 b!7335047) bm!668753))

(assert (= (or b!7335051 bm!668753) bm!668751))

(assert (= (or b!7335051 bm!668752) bm!668754))

(assert (= (or b!7335053 bm!668751) bm!668755))

(assert (= (or b!7335053 b!7335051) bm!668750))

(declare-fun m!8000980 () Bool)

(assert (=> bm!668755 m!8000980))

(declare-fun m!8000982 () Bool)

(assert (=> b!7335049 m!8000982))

(assert (=> b!7335057 m!8000928))

(declare-fun m!8000984 () Bool)

(assert (=> bm!668754 m!8000984))

(declare-fun m!8000986 () Bool)

(assert (=> bm!668750 m!8000986))

(assert (=> b!7334916 d!2277810))

(declare-fun d!2277812 () Bool)

(assert (=> d!2277812 (= (tail!14751 lt!2608912) (t!385961 lt!2608912))))

(assert (=> b!7334916 d!2277812))

(declare-fun d!2277814 () Bool)

(declare-fun nullableFct!3261 (Regex!19070) Bool)

(assert (=> d!2277814 (= (nullable!8171 (h!77890 (exprs!8510 ct1!256))) (nullableFct!3261 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun bs!1917883 () Bool)

(assert (= bs!1917883 d!2277814))

(declare-fun m!8000988 () Bool)

(assert (=> bs!1917883 m!8000988))

(assert (=> b!7334922 d!2277814))

(declare-fun b!7335058 () Bool)

(declare-fun e!4392290 () (Set Context!16020))

(declare-fun call!668766 () (Set Context!16020))

(assert (=> b!7335058 (= e!4392290 call!668766)))

(declare-fun b!7335059 () Bool)

(assert (=> b!7335059 (= e!4392290 (as set.empty (Set Context!16020)))))

(declare-fun bm!668756 () Bool)

(declare-fun call!668765 () List!71566)

(declare-fun call!668763 () (Set Context!16020))

(declare-fun c!1362316 () Bool)

(assert (=> bm!668756 (= call!668763 (derivationStepZipperDown!2897 (ite c!1362316 (regOne!38653 (h!77890 (exprs!8510 ct1!256))) (regOne!38652 (h!77890 (exprs!8510 ct1!256)))) (ite c!1362316 lt!2608910 (Context!16021 call!668765)) c!10305))))

(declare-fun b!7335060 () Bool)

(declare-fun e!4392292 () (Set Context!16020))

(assert (=> b!7335060 (= e!4392292 (set.insert lt!2608910 (as set.empty (Set Context!16020))))))

(declare-fun b!7335061 () Bool)

(declare-fun c!1362315 () Bool)

(assert (=> b!7335061 (= c!1362315 (is-Star!19070 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun e!4392293 () (Set Context!16020))

(assert (=> b!7335061 (= e!4392293 e!4392290)))

(declare-fun b!7335062 () Bool)

(declare-fun e!4392291 () (Set Context!16020))

(declare-fun call!668761 () (Set Context!16020))

(assert (=> b!7335062 (= e!4392291 (set.union call!668763 call!668761))))

(declare-fun b!7335063 () Bool)

(declare-fun c!1362318 () Bool)

(declare-fun e!4392294 () Bool)

(assert (=> b!7335063 (= c!1362318 e!4392294)))

(declare-fun res!2963975 () Bool)

(assert (=> b!7335063 (=> (not res!2963975) (not e!4392294))))

(assert (=> b!7335063 (= res!2963975 (is-Concat!27915 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun e!4392295 () (Set Context!16020))

(assert (=> b!7335063 (= e!4392295 e!4392291)))

(declare-fun b!7335064 () Bool)

(declare-fun call!668764 () (Set Context!16020))

(assert (=> b!7335064 (= e!4392295 (set.union call!668763 call!668764))))

(declare-fun bm!668757 () Bool)

(assert (=> bm!668757 (= call!668761 call!668764)))

(declare-fun bm!668758 () Bool)

(declare-fun call!668762 () List!71566)

(assert (=> bm!668758 (= call!668762 call!668765)))

(declare-fun bm!668759 () Bool)

(assert (=> bm!668759 (= call!668766 call!668761)))

(declare-fun b!7335065 () Bool)

(assert (=> b!7335065 (= e!4392292 e!4392295)))

(assert (=> b!7335065 (= c!1362316 (is-Union!19070 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun b!7335066 () Bool)

(assert (=> b!7335066 (= e!4392293 call!668766)))

(declare-fun bm!668760 () Bool)

(declare-fun c!1362314 () Bool)

(assert (=> bm!668760 (= call!668765 ($colon$colon!3079 (exprs!8510 lt!2608910) (ite (or c!1362318 c!1362314) (regTwo!38652 (h!77890 (exprs!8510 ct1!256))) (h!77890 (exprs!8510 ct1!256)))))))

(declare-fun b!7335067 () Bool)

(assert (=> b!7335067 (= e!4392291 e!4392293)))

(assert (=> b!7335067 (= c!1362314 (is-Concat!27915 (h!77890 (exprs!8510 ct1!256))))))

(declare-fun bm!668761 () Bool)

(assert (=> bm!668761 (= call!668764 (derivationStepZipperDown!2897 (ite c!1362316 (regTwo!38653 (h!77890 (exprs!8510 ct1!256))) (ite c!1362318 (regTwo!38652 (h!77890 (exprs!8510 ct1!256))) (ite c!1362314 (regOne!38652 (h!77890 (exprs!8510 ct1!256))) (reg!19399 (h!77890 (exprs!8510 ct1!256)))))) (ite (or c!1362316 c!1362318) lt!2608910 (Context!16021 call!668762)) c!10305))))

(declare-fun b!7335068 () Bool)

(assert (=> b!7335068 (= e!4392294 (nullable!8171 (regOne!38652 (h!77890 (exprs!8510 ct1!256)))))))

(declare-fun d!2277816 () Bool)

(declare-fun c!1362317 () Bool)

(assert (=> d!2277816 (= c!1362317 (and (is-ElementMatch!19070 (h!77890 (exprs!8510 ct1!256))) (= (c!1362266 (h!77890 (exprs!8510 ct1!256))) c!10305)))))

(assert (=> d!2277816 (= (derivationStepZipperDown!2897 (h!77890 (exprs!8510 ct1!256)) lt!2608910 c!10305) e!4392292)))

(assert (= (and d!2277816 c!1362317) b!7335060))

(assert (= (and d!2277816 (not c!1362317)) b!7335065))

(assert (= (and b!7335065 c!1362316) b!7335064))

(assert (= (and b!7335065 (not c!1362316)) b!7335063))

(assert (= (and b!7335063 res!2963975) b!7335068))

(assert (= (and b!7335063 c!1362318) b!7335062))

(assert (= (and b!7335063 (not c!1362318)) b!7335067))

(assert (= (and b!7335067 c!1362314) b!7335066))

(assert (= (and b!7335067 (not c!1362314)) b!7335061))

(assert (= (and b!7335061 c!1362315) b!7335058))

(assert (= (and b!7335061 (not c!1362315)) b!7335059))

(assert (= (or b!7335066 b!7335058) bm!668758))

(assert (= (or b!7335066 b!7335058) bm!668759))

(assert (= (or b!7335062 bm!668759) bm!668757))

(assert (= (or b!7335062 bm!668758) bm!668760))

(assert (= (or b!7335064 bm!668757) bm!668761))

(assert (= (or b!7335064 b!7335062) bm!668756))

(declare-fun m!8000990 () Bool)

(assert (=> bm!668761 m!8000990))

(declare-fun m!8000992 () Bool)

(assert (=> b!7335060 m!8000992))

(assert (=> b!7335068 m!8000928))

(declare-fun m!8000994 () Bool)

(assert (=> bm!668760 m!8000994))

(declare-fun m!8000996 () Bool)

(assert (=> bm!668756 m!8000996))

(assert (=> b!7334922 d!2277816))

(declare-fun d!2277818 () Bool)

(assert (=> d!2277818 (= (tail!14751 (exprs!8510 ct1!256)) (t!385961 (exprs!8510 ct1!256)))))

(assert (=> b!7334922 d!2277818))

(declare-fun d!2277820 () Bool)

(assert (=> d!2277820 (= (isEmpty!40982 lt!2608912) (is-Nil!71442 lt!2608912))))

(assert (=> b!7334917 d!2277820))

(declare-fun d!2277822 () Bool)

(assert (=> d!2277822 (= (isEmpty!40982 (exprs!8510 ct1!256)) (is-Nil!71442 (exprs!8510 ct1!256)))))

(assert (=> b!7334918 d!2277822))

(declare-fun d!2277824 () Bool)

(declare-fun e!4392301 () Bool)

(assert (=> d!2277824 e!4392301))

(declare-fun res!2963978 () Bool)

(assert (=> d!2277824 (=> (not res!2963978) (not e!4392301))))

(declare-fun lt!2608973 () List!71566)

(assert (=> d!2277824 (= res!2963978 (= (content!14997 lt!2608973) (set.union (content!14997 (exprs!8510 ct1!256)) (content!14997 (exprs!8510 ct2!352)))))))

(declare-fun e!4392300 () List!71566)

(assert (=> d!2277824 (= lt!2608973 e!4392300)))

(declare-fun c!1362321 () Bool)

(assert (=> d!2277824 (= c!1362321 (is-Nil!71442 (exprs!8510 ct1!256)))))

(assert (=> d!2277824 (= (++!16892 (exprs!8510 ct1!256) (exprs!8510 ct2!352)) lt!2608973)))

(declare-fun b!7335078 () Bool)

(assert (=> b!7335078 (= e!4392300 (Cons!71442 (h!77890 (exprs!8510 ct1!256)) (++!16892 (t!385961 (exprs!8510 ct1!256)) (exprs!8510 ct2!352))))))

(declare-fun b!7335082 () Bool)

(assert (=> b!7335082 (= e!4392301 (or (not (= (exprs!8510 ct2!352) Nil!71442)) (= lt!2608973 (exprs!8510 ct1!256))))))

(declare-fun b!7335077 () Bool)

(assert (=> b!7335077 (= e!4392300 (exprs!8510 ct2!352))))

(declare-fun b!7335080 () Bool)

(declare-fun res!2963979 () Bool)

(assert (=> b!7335080 (=> (not res!2963979) (not e!4392301))))

(assert (=> b!7335080 (= res!2963979 (= (size!41976 lt!2608973) (+ (size!41976 (exprs!8510 ct1!256)) (size!41976 (exprs!8510 ct2!352)))))))

(assert (= (and d!2277824 c!1362321) b!7335077))

(assert (= (and d!2277824 (not c!1362321)) b!7335078))

(assert (= (and d!2277824 res!2963978) b!7335080))

(assert (= (and b!7335080 res!2963979) b!7335082))

(declare-fun m!8000998 () Bool)

(assert (=> d!2277824 m!8000998))

(declare-fun m!8001000 () Bool)

(assert (=> d!2277824 m!8001000))

(assert (=> d!2277824 m!8000938))

(declare-fun m!8001002 () Bool)

(assert (=> b!7335078 m!8001002))

(declare-fun m!8001004 () Bool)

(assert (=> b!7335080 m!8001004))

(declare-fun m!8001006 () Bool)

(assert (=> b!7335080 m!8001006))

(assert (=> b!7335080 m!8000946))

(assert (=> b!7334919 d!2277824))

(declare-fun d!2277826 () Bool)

(assert (=> d!2277826 (forall!17906 (++!16892 (exprs!8510 ct1!256) (exprs!8510 ct2!352)) lambda!455052)))

(declare-fun lt!2608974 () Unit!165101)

(assert (=> d!2277826 (= lt!2608974 (choose!57054 (exprs!8510 ct1!256) (exprs!8510 ct2!352) lambda!455052))))

(assert (=> d!2277826 (forall!17906 (exprs!8510 ct1!256) lambda!455052)))

(assert (=> d!2277826 (= (lemmaConcatPreservesForall!1749 (exprs!8510 ct1!256) (exprs!8510 ct2!352) lambda!455052) lt!2608974)))

(declare-fun bs!1917884 () Bool)

(assert (= bs!1917884 d!2277826))

(assert (=> bs!1917884 m!8000848))

(assert (=> bs!1917884 m!8000848))

(declare-fun m!8001008 () Bool)

(assert (=> bs!1917884 m!8001008))

(declare-fun m!8001010 () Bool)

(assert (=> bs!1917884 m!8001010))

(declare-fun m!8001012 () Bool)

(assert (=> bs!1917884 m!8001012))

(assert (=> b!7334919 d!2277826))

(declare-fun b!7335087 () Bool)

(declare-fun e!4392306 () Bool)

(declare-fun tp!2082186 () Bool)

(declare-fun tp!2082187 () Bool)

(assert (=> b!7335087 (= e!4392306 (and tp!2082186 tp!2082187))))

(assert (=> b!7334914 (= tp!2082171 e!4392306)))

(assert (= (and b!7334914 (is-Cons!71442 (exprs!8510 cWitness!35))) b!7335087))

(declare-fun b!7335088 () Bool)

(declare-fun e!4392307 () Bool)

(declare-fun tp!2082188 () Bool)

(declare-fun tp!2082189 () Bool)

(assert (=> b!7335088 (= e!4392307 (and tp!2082188 tp!2082189))))

(assert (=> b!7334920 (= tp!2082170 e!4392307)))

(assert (= (and b!7334920 (is-Cons!71442 (exprs!8510 ct2!352))) b!7335088))

(declare-fun b!7335089 () Bool)

(declare-fun e!4392308 () Bool)

(declare-fun tp!2082190 () Bool)

(declare-fun tp!2082191 () Bool)

(assert (=> b!7335089 (= e!4392308 (and tp!2082190 tp!2082191))))

(assert (=> b!7334921 (= tp!2082172 e!4392308)))

(assert (= (and b!7334921 (is-Cons!71442 (exprs!8510 ct1!256))) b!7335089))

(push 1)

(assert (not d!2277790))

(assert (not d!2277798))

(assert (not bm!668756))

(assert (not b!7335088))

(assert (not b!7334961))

(assert (not d!2277788))

(assert (not b!7335089))

(assert (not b!7335068))

(assert (not bm!668755))

(assert (not b!7335080))

(assert (not d!2277808))

(assert (not bm!668750))

(assert tp_is_empty!48385)

(assert (not b!7335057))

(assert (not b!7335044))

(assert (not bm!668754))

(assert (not bm!668760))

(assert (not d!2277826))

(assert (not bm!668761))

(assert (not d!2277806))

(assert (not b!7334963))

(assert (not d!2277800))

(assert (not b!7335019))

(assert (not bm!668738))

(assert (not bm!668743))

(assert (not bm!668742))

(assert (not d!2277814))

(assert (not d!2277792))

(assert (not b!7335045))

(assert (not bm!668713))

(assert (not b!7335040))

(assert (not b!7335078))

(assert (not b!7335041))

(assert (not d!2277794))

(assert (not b!7335087))

(assert (not d!2277824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

