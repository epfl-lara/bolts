; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715516 () Bool)

(assert start!715516)

(declare-fun b!7328782 () Bool)

(declare-fun e!4388344 () Bool)

(declare-fun tp!2080945 () Bool)

(assert (=> b!7328782 (= e!4388344 tp!2080945)))

(declare-fun b!7328783 () Bool)

(declare-fun res!2962050 () Bool)

(declare-fun e!4388348 () Bool)

(assert (=> b!7328783 (=> (not res!2962050) (not e!4388348))))

(declare-datatypes ((C!38306 0))(
  ( (C!38307 (val!29513 Int)) )
))
(declare-datatypes ((Regex!19016 0))(
  ( (ElementMatch!19016 (c!1360585 C!38306)) (Concat!27861 (regOne!38544 Regex!19016) (regTwo!38544 Regex!19016)) (EmptyExpr!19016) (Star!19016 (reg!19345 Regex!19016)) (EmptyLang!19016) (Union!19016 (regOne!38545 Regex!19016) (regTwo!38545 Regex!19016)) )
))
(declare-datatypes ((List!71512 0))(
  ( (Nil!71388) (Cons!71388 (h!77836 Regex!19016) (t!385899 List!71512)) )
))
(declare-fun lt!2607078 () List!71512)

(declare-fun isEmpty!40934 (List!71512) Bool)

(assert (=> b!7328783 (= res!2962050 (not (isEmpty!40934 lt!2607078)))))

(declare-fun res!2962053 () Bool)

(declare-fun e!4388346 () Bool)

(assert (=> start!715516 (=> (not res!2962053) (not e!4388346))))

(declare-datatypes ((Context!15912 0))(
  ( (Context!15913 (exprs!8456 List!71512)) )
))
(declare-fun cWitness!35 () Context!15912)

(declare-fun lt!2607079 () (Set Context!15912))

(assert (=> start!715516 (= res!2962053 (set.member cWitness!35 lt!2607079))))

(declare-fun ct1!256 () Context!15912)

(declare-fun c!10305 () C!38306)

(declare-fun derivationStepZipperUp!2696 (Context!15912 C!38306) (Set Context!15912))

(assert (=> start!715516 (= lt!2607079 (derivationStepZipperUp!2696 ct1!256 c!10305))))

(assert (=> start!715516 e!4388346))

(declare-fun tp_is_empty!48277 () Bool)

(assert (=> start!715516 tp_is_empty!48277))

(declare-fun e!4388349 () Bool)

(declare-fun inv!90881 (Context!15912) Bool)

(assert (=> start!715516 (and (inv!90881 cWitness!35) e!4388349)))

(assert (=> start!715516 (and (inv!90881 ct1!256) e!4388344)))

(declare-fun ct2!352 () Context!15912)

(declare-fun e!4388345 () Bool)

(assert (=> start!715516 (and (inv!90881 ct2!352) e!4388345)))

(declare-fun b!7328784 () Bool)

(declare-fun e!4388351 () Bool)

(assert (=> b!7328784 (= e!4388346 e!4388351)))

(declare-fun res!2962056 () Bool)

(assert (=> b!7328784 (=> (not res!2962056) (not e!4388351))))

(assert (=> b!7328784 (= res!2962056 (is-Cons!71388 (exprs!8456 ct1!256)))))

(declare-fun ++!16840 (List!71512 List!71512) List!71512)

(assert (=> b!7328784 (= lt!2607078 (++!16840 (exprs!8456 ct1!256) (exprs!8456 ct2!352)))))

(declare-datatypes ((Unit!164997 0))(
  ( (Unit!164998) )
))
(declare-fun lt!2607080 () Unit!164997)

(declare-fun lambda!454415 () Int)

(declare-fun lemmaConcatPreservesForall!1697 (List!71512 List!71512 Int) Unit!164997)

(assert (=> b!7328784 (= lt!2607080 (lemmaConcatPreservesForall!1697 (exprs!8456 ct1!256) (exprs!8456 ct2!352) lambda!454415))))

(declare-fun b!7328785 () Bool)

(declare-fun e!4388347 () Bool)

(assert (=> b!7328785 (= e!4388348 (not e!4388347))))

(declare-fun res!2962052 () Bool)

(assert (=> b!7328785 (=> res!2962052 e!4388347)))

(declare-fun lt!2607081 () Context!15912)

(declare-fun lt!2607075 () (Set Context!15912))

(assert (=> b!7328785 (= res!2962052 (not (set.member lt!2607081 lt!2607075)))))

(declare-fun lt!2607077 () Unit!164997)

(assert (=> b!7328785 (= lt!2607077 (lemmaConcatPreservesForall!1697 (exprs!8456 cWitness!35) (exprs!8456 ct2!352) lambda!454415))))

(declare-fun lt!2607076 () List!71512)

(declare-fun derivationStepZipperDown!2847 (Regex!19016 Context!15912 C!38306) (Set Context!15912))

(assert (=> b!7328785 (set.member lt!2607081 (derivationStepZipperDown!2847 (h!77836 (exprs!8456 ct1!256)) (Context!15913 (++!16840 lt!2607076 (exprs!8456 ct2!352))) c!10305))))

(assert (=> b!7328785 (= lt!2607081 (Context!15913 (++!16840 (exprs!8456 cWitness!35) (exprs!8456 ct2!352))))))

(declare-fun lt!2607073 () Unit!164997)

(assert (=> b!7328785 (= lt!2607073 (lemmaConcatPreservesForall!1697 lt!2607076 (exprs!8456 ct2!352) lambda!454415))))

(declare-fun lt!2607074 () Unit!164997)

(assert (=> b!7328785 (= lt!2607074 (lemmaConcatPreservesForall!1697 (exprs!8456 cWitness!35) (exprs!8456 ct2!352) lambda!454415))))

(declare-fun lt!2607082 () Context!15912)

(declare-fun lt!2607072 () Unit!164997)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!23 (Regex!19016 Context!15912 Context!15912 Context!15912 C!38306) Unit!164997)

(assert (=> b!7328785 (= lt!2607072 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!23 (h!77836 (exprs!8456 ct1!256)) lt!2607082 ct2!352 cWitness!35 c!10305))))

(declare-fun tail!14705 (List!71512) List!71512)

(assert (=> b!7328785 (= lt!2607075 (derivationStepZipperDown!2847 (h!77836 (exprs!8456 ct1!256)) (Context!15913 (tail!14705 lt!2607078)) c!10305))))

(declare-fun b!7328786 () Bool)

(assert (=> b!7328786 (= e!4388351 e!4388348)))

(declare-fun res!2962054 () Bool)

(assert (=> b!7328786 (=> (not res!2962054) (not e!4388348))))

(declare-fun nullable!8120 (Regex!19016) Bool)

(assert (=> b!7328786 (= res!2962054 (not (nullable!8120 (h!77836 (exprs!8456 ct1!256)))))))

(declare-fun lt!2607071 () (Set Context!15912))

(assert (=> b!7328786 (= lt!2607071 (derivationStepZipperDown!2847 (h!77836 (exprs!8456 ct1!256)) lt!2607082 c!10305))))

(assert (=> b!7328786 (= lt!2607082 (Context!15913 lt!2607076))))

(assert (=> b!7328786 (= lt!2607076 (tail!14705 (exprs!8456 ct1!256)))))

(declare-fun b!7328787 () Bool)

(declare-fun e!4388350 () Bool)

(assert (=> b!7328787 (= e!4388347 e!4388350)))

(declare-fun res!2962049 () Bool)

(assert (=> b!7328787 (=> res!2962049 e!4388350)))

(declare-fun forall!17865 (List!71512 Int) Bool)

(assert (=> b!7328787 (= res!2962049 (not (forall!17865 (exprs!8456 ct1!256) lambda!454415)))))

(declare-fun lt!2607083 () Unit!164997)

(assert (=> b!7328787 (= lt!2607083 (lemmaConcatPreservesForall!1697 (exprs!8456 cWitness!35) (exprs!8456 ct2!352) lambda!454415))))

(declare-fun b!7328788 () Bool)

(declare-fun res!2962055 () Bool)

(assert (=> b!7328788 (=> (not res!2962055) (not e!4388348))))

(assert (=> b!7328788 (= res!2962055 (and (= lt!2607079 lt!2607071) (set.member cWitness!35 lt!2607071)))))

(declare-fun b!7328789 () Bool)

(declare-fun res!2962051 () Bool)

(assert (=> b!7328789 (=> (not res!2962051) (not e!4388351))))

(assert (=> b!7328789 (= res!2962051 (not (isEmpty!40934 (exprs!8456 ct1!256))))))

(declare-fun b!7328790 () Bool)

(declare-fun tp!2080946 () Bool)

(assert (=> b!7328790 (= e!4388349 tp!2080946)))

(declare-fun b!7328791 () Bool)

(assert (=> b!7328791 (= e!4388350 (forall!17865 (exprs!8456 ct2!352) lambda!454415))))

(declare-fun b!7328792 () Bool)

(declare-fun tp!2080944 () Bool)

(assert (=> b!7328792 (= e!4388345 tp!2080944)))

(assert (= (and start!715516 res!2962053) b!7328784))

(assert (= (and b!7328784 res!2962056) b!7328789))

(assert (= (and b!7328789 res!2962051) b!7328786))

(assert (= (and b!7328786 res!2962054) b!7328788))

(assert (= (and b!7328788 res!2962055) b!7328783))

(assert (= (and b!7328783 res!2962050) b!7328785))

(assert (= (and b!7328785 (not res!2962052)) b!7328787))

(assert (= (and b!7328787 (not res!2962049)) b!7328791))

(assert (= start!715516 b!7328790))

(assert (= start!715516 b!7328782))

(assert (= start!715516 b!7328792))

(declare-fun m!7994804 () Bool)

(assert (=> b!7328789 m!7994804))

(declare-fun m!7994806 () Bool)

(assert (=> b!7328783 m!7994806))

(declare-fun m!7994808 () Bool)

(assert (=> b!7328788 m!7994808))

(declare-fun m!7994810 () Bool)

(assert (=> b!7328787 m!7994810))

(declare-fun m!7994812 () Bool)

(assert (=> b!7328787 m!7994812))

(declare-fun m!7994814 () Bool)

(assert (=> b!7328786 m!7994814))

(declare-fun m!7994816 () Bool)

(assert (=> b!7328786 m!7994816))

(declare-fun m!7994818 () Bool)

(assert (=> b!7328786 m!7994818))

(declare-fun m!7994820 () Bool)

(assert (=> start!715516 m!7994820))

(declare-fun m!7994822 () Bool)

(assert (=> start!715516 m!7994822))

(declare-fun m!7994824 () Bool)

(assert (=> start!715516 m!7994824))

(declare-fun m!7994826 () Bool)

(assert (=> start!715516 m!7994826))

(declare-fun m!7994828 () Bool)

(assert (=> start!715516 m!7994828))

(declare-fun m!7994830 () Bool)

(assert (=> b!7328791 m!7994830))

(declare-fun m!7994832 () Bool)

(assert (=> b!7328784 m!7994832))

(declare-fun m!7994834 () Bool)

(assert (=> b!7328784 m!7994834))

(assert (=> b!7328785 m!7994812))

(declare-fun m!7994836 () Bool)

(assert (=> b!7328785 m!7994836))

(declare-fun m!7994838 () Bool)

(assert (=> b!7328785 m!7994838))

(declare-fun m!7994840 () Bool)

(assert (=> b!7328785 m!7994840))

(declare-fun m!7994842 () Bool)

(assert (=> b!7328785 m!7994842))

(declare-fun m!7994844 () Bool)

(assert (=> b!7328785 m!7994844))

(declare-fun m!7994846 () Bool)

(assert (=> b!7328785 m!7994846))

(assert (=> b!7328785 m!7994812))

(declare-fun m!7994848 () Bool)

(assert (=> b!7328785 m!7994848))

(declare-fun m!7994850 () Bool)

(assert (=> b!7328785 m!7994850))

(declare-fun m!7994852 () Bool)

(assert (=> b!7328785 m!7994852))

(push 1)

(assert (not b!7328790))

(assert (not b!7328783))

(assert (not b!7328786))

(assert (not b!7328784))

(assert tp_is_empty!48277)

(assert (not b!7328789))

(assert (not b!7328791))

(assert (not b!7328787))

(assert (not b!7328792))

(assert (not b!7328782))

(assert (not start!715516))

(assert (not b!7328785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2275909 () Bool)

(assert (=> d!2275909 (= (tail!14705 lt!2607078) (t!385899 lt!2607078))))

(assert (=> b!7328785 d!2275909))

(declare-fun d!2275911 () Bool)

(declare-fun e!4388387 () Bool)

(assert (=> d!2275911 e!4388387))

(declare-fun res!2962088 () Bool)

(assert (=> d!2275911 (=> (not res!2962088) (not e!4388387))))

(declare-fun lt!2607125 () List!71512)

(declare-fun content!14957 (List!71512) (Set Regex!19016))

(assert (=> d!2275911 (= res!2962088 (= (content!14957 lt!2607125) (set.union (content!14957 lt!2607076) (content!14957 (exprs!8456 ct2!352)))))))

(declare-fun e!4388386 () List!71512)

(assert (=> d!2275911 (= lt!2607125 e!4388386)))

(declare-fun c!1360593 () Bool)

(assert (=> d!2275911 (= c!1360593 (is-Nil!71388 lt!2607076))))

(assert (=> d!2275911 (= (++!16840 lt!2607076 (exprs!8456 ct2!352)) lt!2607125)))

(declare-fun b!7328845 () Bool)

(assert (=> b!7328845 (= e!4388386 (Cons!71388 (h!77836 lt!2607076) (++!16840 (t!385899 lt!2607076) (exprs!8456 ct2!352))))))

(declare-fun b!7328847 () Bool)

(assert (=> b!7328847 (= e!4388387 (or (not (= (exprs!8456 ct2!352) Nil!71388)) (= lt!2607125 lt!2607076)))))

(declare-fun b!7328846 () Bool)

(declare-fun res!2962087 () Bool)

(assert (=> b!7328846 (=> (not res!2962087) (not e!4388387))))

(declare-fun size!41934 (List!71512) Int)

(assert (=> b!7328846 (= res!2962087 (= (size!41934 lt!2607125) (+ (size!41934 lt!2607076) (size!41934 (exprs!8456 ct2!352)))))))

(declare-fun b!7328844 () Bool)

(assert (=> b!7328844 (= e!4388386 (exprs!8456 ct2!352))))

(assert (= (and d!2275911 c!1360593) b!7328844))

(assert (= (and d!2275911 (not c!1360593)) b!7328845))

(assert (= (and d!2275911 res!2962088) b!7328846))

(assert (= (and b!7328846 res!2962087) b!7328847))

(declare-fun m!7994904 () Bool)

(assert (=> d!2275911 m!7994904))

(declare-fun m!7994906 () Bool)

(assert (=> d!2275911 m!7994906))

(declare-fun m!7994908 () Bool)

(assert (=> d!2275911 m!7994908))

(declare-fun m!7994910 () Bool)

(assert (=> b!7328845 m!7994910))

(declare-fun m!7994912 () Bool)

(assert (=> b!7328846 m!7994912))

(declare-fun m!7994914 () Bool)

(assert (=> b!7328846 m!7994914))

(declare-fun m!7994916 () Bool)

(assert (=> b!7328846 m!7994916))

(assert (=> b!7328785 d!2275911))

(declare-fun d!2275913 () Bool)

(assert (=> d!2275913 (forall!17865 (++!16840 lt!2607076 (exprs!8456 ct2!352)) lambda!454415)))

(declare-fun lt!2607128 () Unit!164997)

(declare-fun choose!57001 (List!71512 List!71512 Int) Unit!164997)

(assert (=> d!2275913 (= lt!2607128 (choose!57001 lt!2607076 (exprs!8456 ct2!352) lambda!454415))))

(assert (=> d!2275913 (forall!17865 lt!2607076 lambda!454415)))

(assert (=> d!2275913 (= (lemmaConcatPreservesForall!1697 lt!2607076 (exprs!8456 ct2!352) lambda!454415) lt!2607128)))

(declare-fun bs!1917046 () Bool)

(assert (= bs!1917046 d!2275913))

(assert (=> bs!1917046 m!7994846))

(assert (=> bs!1917046 m!7994846))

(declare-fun m!7994918 () Bool)

(assert (=> bs!1917046 m!7994918))

(declare-fun m!7994920 () Bool)

(assert (=> bs!1917046 m!7994920))

(declare-fun m!7994922 () Bool)

(assert (=> bs!1917046 m!7994922))

(assert (=> b!7328785 d!2275913))

(declare-fun d!2275915 () Bool)

(assert (=> d!2275915 (forall!17865 (++!16840 (exprs!8456 cWitness!35) (exprs!8456 ct2!352)) lambda!454415)))

(declare-fun lt!2607129 () Unit!164997)

(assert (=> d!2275915 (= lt!2607129 (choose!57001 (exprs!8456 cWitness!35) (exprs!8456 ct2!352) lambda!454415))))

(assert (=> d!2275915 (forall!17865 (exprs!8456 cWitness!35) lambda!454415)))

(assert (=> d!2275915 (= (lemmaConcatPreservesForall!1697 (exprs!8456 cWitness!35) (exprs!8456 ct2!352) lambda!454415) lt!2607129)))

(declare-fun bs!1917047 () Bool)

(assert (= bs!1917047 d!2275915))

(assert (=> bs!1917047 m!7994838))

(assert (=> bs!1917047 m!7994838))

(declare-fun m!7994924 () Bool)

(assert (=> bs!1917047 m!7994924))

(declare-fun m!7994926 () Bool)

(assert (=> bs!1917047 m!7994926))

(declare-fun m!7994928 () Bool)

(assert (=> bs!1917047 m!7994928))

(assert (=> b!7328785 d!2275915))

(declare-fun b!7328875 () Bool)

(declare-fun e!4388408 () (Set Context!15912))

(assert (=> b!7328875 (= e!4388408 (as set.empty (Set Context!15912)))))

(declare-fun bm!667368 () Bool)

(declare-fun call!667373 () (Set Context!15912))

(declare-fun call!667377 () (Set Context!15912))

(assert (=> bm!667368 (= call!667373 call!667377)))

(declare-fun call!667374 () List!71512)

(declare-fun bm!667369 () Bool)

(declare-fun c!1360610 () Bool)

(declare-fun call!667375 () (Set Context!15912))

(assert (=> bm!667369 (= call!667375 (derivationStepZipperDown!2847 (ite c!1360610 (regOne!38545 (h!77836 (exprs!8456 ct1!256))) (regOne!38544 (h!77836 (exprs!8456 ct1!256)))) (ite c!1360610 (Context!15913 (++!16840 lt!2607076 (exprs!8456 ct2!352))) (Context!15913 call!667374)) c!10305))))

(declare-fun bm!667370 () Bool)

(declare-fun call!667378 () (Set Context!15912))

(assert (=> bm!667370 (= call!667378 call!667373)))

(declare-fun b!7328876 () Bool)

(declare-fun e!4388406 () (Set Context!15912))

(assert (=> b!7328876 (= e!4388406 (set.insert (Context!15913 (++!16840 lt!2607076 (exprs!8456 ct2!352))) (as set.empty (Set Context!15912))))))

(declare-fun d!2275917 () Bool)

(declare-fun c!1360607 () Bool)

(assert (=> d!2275917 (= c!1360607 (and (is-ElementMatch!19016 (h!77836 (exprs!8456 ct1!256))) (= (c!1360585 (h!77836 (exprs!8456 ct1!256))) c!10305)))))

(assert (=> d!2275917 (= (derivationStepZipperDown!2847 (h!77836 (exprs!8456 ct1!256)) (Context!15913 (++!16840 lt!2607076 (exprs!8456 ct2!352))) c!10305) e!4388406)))

(declare-fun bm!667371 () Bool)

(declare-fun call!667376 () List!71512)

(assert (=> bm!667371 (= call!667376 call!667374)))

(declare-fun b!7328877 () Bool)

(declare-fun e!4388403 () (Set Context!15912))

(assert (=> b!7328877 (= e!4388403 call!667378)))

(declare-fun b!7328878 () Bool)

(declare-fun e!4388407 () Bool)

(assert (=> b!7328878 (= e!4388407 (nullable!8120 (regOne!38544 (h!77836 (exprs!8456 ct1!256)))))))

(declare-fun b!7328879 () Bool)

(declare-fun e!4388405 () (Set Context!15912))

(assert (=> b!7328879 (= e!4388405 e!4388403)))

(declare-fun c!1360608 () Bool)

(assert (=> b!7328879 (= c!1360608 (is-Concat!27861 (h!77836 (exprs!8456 ct1!256))))))

(declare-fun b!7328880 () Bool)

(declare-fun e!4388404 () (Set Context!15912))

(assert (=> b!7328880 (= e!4388406 e!4388404)))

(assert (=> b!7328880 (= c!1360610 (is-Union!19016 (h!77836 (exprs!8456 ct1!256))))))

(declare-fun b!7328881 () Bool)

(declare-fun c!1360606 () Bool)

(assert (=> b!7328881 (= c!1360606 e!4388407)))

(declare-fun res!2962092 () Bool)

(assert (=> b!7328881 (=> (not res!2962092) (not e!4388407))))

(assert (=> b!7328881 (= res!2962092 (is-Concat!27861 (h!77836 (exprs!8456 ct1!256))))))

(assert (=> b!7328881 (= e!4388404 e!4388405)))

(declare-fun b!7328882 () Bool)

(assert (=> b!7328882 (= e!4388408 call!667378)))

(declare-fun bm!667372 () Bool)

(declare-fun $colon$colon!3045 (List!71512 Regex!19016) List!71512)

(assert (=> bm!667372 (= call!667374 ($colon$colon!3045 (exprs!8456 (Context!15913 (++!16840 lt!2607076 (exprs!8456 ct2!352)))) (ite (or c!1360606 c!1360608) (regTwo!38544 (h!77836 (exprs!8456 ct1!256))) (h!77836 (exprs!8456 ct1!256)))))))

(declare-fun b!7328883 () Bool)

(assert (=> b!7328883 (= e!4388404 (set.union call!667375 call!667377))))

(declare-fun b!7328884 () Bool)

(assert (=> b!7328884 (= e!4388405 (set.union call!667375 call!667373))))

(declare-fun bm!667373 () Bool)

(assert (=> bm!667373 (= call!667377 (derivationStepZipperDown!2847 (ite c!1360610 (regTwo!38545 (h!77836 (exprs!8456 ct1!256))) (ite c!1360606 (regTwo!38544 (h!77836 (exprs!8456 ct1!256))) (ite c!1360608 (regOne!38544 (h!77836 (exprs!8456 ct1!256))) (reg!19345 (h!77836 (exprs!8456 ct1!256)))))) (ite (or c!1360610 c!1360606) (Context!15913 (++!16840 lt!2607076 (exprs!8456 ct2!352))) (Context!15913 call!667376)) c!10305))))

(declare-fun b!7328885 () Bool)

(declare-fun c!1360609 () Bool)

(assert (=> b!7328885 (= c!1360609 (is-Star!19016 (h!77836 (exprs!8456 ct1!256))))))

(assert (=> b!7328885 (= e!4388403 e!4388408)))

(assert (= (and d!2275917 c!1360607) b!7328876))

(assert (= (and d!2275917 (not c!1360607)) b!7328880))

(assert (= (and b!7328880 c!1360610) b!7328883))

(assert (= (and b!7328880 (not c!1360610)) b!7328881))

(assert (= (and b!7328881 res!2962092) b!7328878))

(assert (= (and b!7328881 c!1360606) b!7328884))

(assert (= (and b!7328881 (not c!1360606)) b!7328879))

(assert (= (and b!7328879 c!1360608) b!7328877))

(assert (= (and b!7328879 (not c!1360608)) b!7328885))

(assert (= (and b!7328885 c!1360609) b!7328882))

(assert (= (and b!7328885 (not c!1360609)) b!7328875))

(assert (= (or b!7328877 b!7328882) bm!667371))

(assert (= (or b!7328877 b!7328882) bm!667370))

(assert (= (or b!7328884 bm!667370) bm!667368))

(assert (= (or b!7328884 bm!667371) bm!667372))

(assert (= (or b!7328883 bm!667368) bm!667373))

(assert (= (or b!7328883 b!7328884) bm!667369))

(declare-fun m!7994940 () Bool)

(assert (=> bm!667369 m!7994940))

(declare-fun m!7994942 () Bool)

(assert (=> b!7328878 m!7994942))

(declare-fun m!7994944 () Bool)

(assert (=> b!7328876 m!7994944))

(declare-fun m!7994946 () Bool)

(assert (=> bm!667373 m!7994946))

(declare-fun m!7994948 () Bool)

(assert (=> bm!667372 m!7994948))

(assert (=> b!7328785 d!2275917))

(declare-fun bs!1917057 () Bool)

(declare-fun d!2275927 () Bool)

(assert (= bs!1917057 (and d!2275927 b!7328784)))

(declare-fun lambda!454438 () Int)

(assert (=> bs!1917057 (= lambda!454438 lambda!454415)))

(assert (=> d!2275927 (set.member (Context!15913 (++!16840 (exprs!8456 cWitness!35) (exprs!8456 ct2!352))) (derivationStepZipperDown!2847 (h!77836 (exprs!8456 ct1!256)) (Context!15913 (++!16840 (exprs!8456 lt!2607082) (exprs!8456 ct2!352))) c!10305))))

(declare-fun lt!2607138 () Unit!164997)

(assert (=> d!2275927 (= lt!2607138 (lemmaConcatPreservesForall!1697 (exprs!8456 lt!2607082) (exprs!8456 ct2!352) lambda!454438))))

(declare-fun lt!2607137 () Unit!164997)

(assert (=> d!2275927 (= lt!2607137 (lemmaConcatPreservesForall!1697 (exprs!8456 cWitness!35) (exprs!8456 ct2!352) lambda!454438))))

(declare-fun lt!2607136 () Unit!164997)

(declare-fun choose!57002 (Regex!19016 Context!15912 Context!15912 Context!15912 C!38306) Unit!164997)

(assert (=> d!2275927 (= lt!2607136 (choose!57002 (h!77836 (exprs!8456 ct1!256)) lt!2607082 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9649 (Regex!19016) Bool)

(assert (=> d!2275927 (validRegex!9649 (h!77836 (exprs!8456 ct1!256)))))

(assert (=> d!2275927 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!23 (h!77836 (exprs!8456 ct1!256)) lt!2607082 ct2!352 cWitness!35 c!10305) lt!2607136)))

(declare-fun bs!1917058 () Bool)

(assert (= bs!1917058 d!2275927))

(declare-fun m!7994950 () Bool)

(assert (=> bs!1917058 m!7994950))

(assert (=> bs!1917058 m!7994838))

(declare-fun m!7994952 () Bool)

(assert (=> bs!1917058 m!7994952))

(declare-fun m!7994954 () Bool)

(assert (=> bs!1917058 m!7994954))

(declare-fun m!7994956 () Bool)

(assert (=> bs!1917058 m!7994956))

(declare-fun m!7994958 () Bool)

(assert (=> bs!1917058 m!7994958))

(declare-fun m!7994960 () Bool)

(assert (=> bs!1917058 m!7994960))

(declare-fun m!7994962 () Bool)

(assert (=> bs!1917058 m!7994962))

(assert (=> b!7328785 d!2275927))

(declare-fun d!2275929 () Bool)

(declare-fun e!4388422 () Bool)

(assert (=> d!2275929 e!4388422))

(declare-fun res!2962096 () Bool)

(assert (=> d!2275929 (=> (not res!2962096) (not e!4388422))))

(declare-fun lt!2607139 () List!71512)

(assert (=> d!2275929 (= res!2962096 (= (content!14957 lt!2607139) (set.union (content!14957 (exprs!8456 cWitness!35)) (content!14957 (exprs!8456 ct2!352)))))))

(declare-fun e!4388421 () List!71512)

(assert (=> d!2275929 (= lt!2607139 e!4388421)))

(declare-fun c!1360622 () Bool)

(assert (=> d!2275929 (= c!1360622 (is-Nil!71388 (exprs!8456 cWitness!35)))))

(assert (=> d!2275929 (= (++!16840 (exprs!8456 cWitness!35) (exprs!8456 ct2!352)) lt!2607139)))

(declare-fun b!7328909 () Bool)

(assert (=> b!7328909 (= e!4388421 (Cons!71388 (h!77836 (exprs!8456 cWitness!35)) (++!16840 (t!385899 (exprs!8456 cWitness!35)) (exprs!8456 ct2!352))))))

(declare-fun b!7328911 () Bool)

(assert (=> b!7328911 (= e!4388422 (or (not (= (exprs!8456 ct2!352) Nil!71388)) (= lt!2607139 (exprs!8456 cWitness!35))))))

(declare-fun b!7328910 () Bool)

(declare-fun res!2962095 () Bool)

(assert (=> b!7328910 (=> (not res!2962095) (not e!4388422))))

(assert (=> b!7328910 (= res!2962095 (= (size!41934 lt!2607139) (+ (size!41934 (exprs!8456 cWitness!35)) (size!41934 (exprs!8456 ct2!352)))))))

(declare-fun b!7328908 () Bool)

(assert (=> b!7328908 (= e!4388421 (exprs!8456 ct2!352))))

(assert (= (and d!2275929 c!1360622) b!7328908))

(assert (= (and d!2275929 (not c!1360622)) b!7328909))

(assert (= (and d!2275929 res!2962096) b!7328910))

(assert (= (and b!7328910 res!2962095) b!7328911))

(declare-fun m!7994964 () Bool)

(assert (=> d!2275929 m!7994964))

(declare-fun m!7994966 () Bool)

(assert (=> d!2275929 m!7994966))

(assert (=> d!2275929 m!7994908))

(declare-fun m!7994968 () Bool)

(assert (=> b!7328909 m!7994968))

(declare-fun m!7994970 () Bool)

(assert (=> b!7328910 m!7994970))

(declare-fun m!7994972 () Bool)

(assert (=> b!7328910 m!7994972))

(assert (=> b!7328910 m!7994916))

(assert (=> b!7328785 d!2275929))

(declare-fun b!7328912 () Bool)

(declare-fun e!4388428 () (Set Context!15912))

(assert (=> b!7328912 (= e!4388428 (as set.empty (Set Context!15912)))))

(declare-fun bm!667384 () Bool)

(declare-fun call!667389 () (Set Context!15912))

(declare-fun call!667393 () (Set Context!15912))

(assert (=> bm!667384 (= call!667389 call!667393)))

(declare-fun call!667391 () (Set Context!15912))

(declare-fun call!667390 () List!71512)

(declare-fun bm!667385 () Bool)

(declare-fun c!1360627 () Bool)

(assert (=> bm!667385 (= call!667391 (derivationStepZipperDown!2847 (ite c!1360627 (regOne!38545 (h!77836 (exprs!8456 ct1!256))) (regOne!38544 (h!77836 (exprs!8456 ct1!256)))) (ite c!1360627 (Context!15913 (tail!14705 lt!2607078)) (Context!15913 call!667390)) c!10305))))

(declare-fun bm!667386 () Bool)

(declare-fun call!667394 () (Set Context!15912))

(assert (=> bm!667386 (= call!667394 call!667389)))

(declare-fun b!7328913 () Bool)

(declare-fun e!4388426 () (Set Context!15912))

(assert (=> b!7328913 (= e!4388426 (set.insert (Context!15913 (tail!14705 lt!2607078)) (as set.empty (Set Context!15912))))))

(declare-fun d!2275931 () Bool)

(declare-fun c!1360624 () Bool)

(assert (=> d!2275931 (= c!1360624 (and (is-ElementMatch!19016 (h!77836 (exprs!8456 ct1!256))) (= (c!1360585 (h!77836 (exprs!8456 ct1!256))) c!10305)))))

(assert (=> d!2275931 (= (derivationStepZipperDown!2847 (h!77836 (exprs!8456 ct1!256)) (Context!15913 (tail!14705 lt!2607078)) c!10305) e!4388426)))

(declare-fun bm!667387 () Bool)

(declare-fun call!667392 () List!71512)

(assert (=> bm!667387 (= call!667392 call!667390)))

(declare-fun b!7328914 () Bool)

(declare-fun e!4388423 () (Set Context!15912))

(assert (=> b!7328914 (= e!4388423 call!667394)))

(declare-fun b!7328915 () Bool)

(declare-fun e!4388427 () Bool)

(assert (=> b!7328915 (= e!4388427 (nullable!8120 (regOne!38544 (h!77836 (exprs!8456 ct1!256)))))))

(declare-fun b!7328916 () Bool)

(declare-fun e!4388425 () (Set Context!15912))

(assert (=> b!7328916 (= e!4388425 e!4388423)))

(declare-fun c!1360625 () Bool)

(assert (=> b!7328916 (= c!1360625 (is-Concat!27861 (h!77836 (exprs!8456 ct1!256))))))

(declare-fun b!7328917 () Bool)

(declare-fun e!4388424 () (Set Context!15912))

(assert (=> b!7328917 (= e!4388426 e!4388424)))

(assert (=> b!7328917 (= c!1360627 (is-Union!19016 (h!77836 (exprs!8456 ct1!256))))))

(declare-fun b!7328918 () Bool)

(declare-fun c!1360623 () Bool)

(assert (=> b!7328918 (= c!1360623 e!4388427)))

(declare-fun res!2962097 () Bool)

(assert (=> b!7328918 (=> (not res!2962097) (not e!4388427))))

(assert (=> b!7328918 (= res!2962097 (is-Concat!27861 (h!77836 (exprs!8456 ct1!256))))))

(assert (=> b!7328918 (= e!4388424 e!4388425)))

(declare-fun b!7328919 () Bool)

(assert (=> b!7328919 (= e!4388428 call!667394)))

(declare-fun bm!667388 () Bool)

(assert (=> bm!667388 (= call!667390 ($colon$colon!3045 (exprs!8456 (Context!15913 (tail!14705 lt!2607078))) (ite (or c!1360623 c!1360625) (regTwo!38544 (h!77836 (exprs!8456 ct1!256))) (h!77836 (exprs!8456 ct1!256)))))))

(declare-fun b!7328920 () Bool)

(assert (=> b!7328920 (= e!4388424 (set.union call!667391 call!667393))))

(declare-fun b!7328921 () Bool)

(assert (=> b!7328921 (= e!4388425 (set.union call!667391 call!667389))))

(declare-fun bm!667389 () Bool)

(assert (=> bm!667389 (= call!667393 (derivationStepZipperDown!2847 (ite c!1360627 (regTwo!38545 (h!77836 (exprs!8456 ct1!256))) (ite c!1360623 (regTwo!38544 (h!77836 (exprs!8456 ct1!256))) (ite c!1360625 (regOne!38544 (h!77836 (exprs!8456 ct1!256))) (reg!19345 (h!77836 (exprs!8456 ct1!256)))))) (ite (or c!1360627 c!1360623) (Context!15913 (tail!14705 lt!2607078)) (Context!15913 call!667392)) c!10305))))

(declare-fun b!7328922 () Bool)

(declare-fun c!1360626 () Bool)

(assert (=> b!7328922 (= c!1360626 (is-Star!19016 (h!77836 (exprs!8456 ct1!256))))))

(assert (=> b!7328922 (= e!4388423 e!4388428)))

(assert (= (and d!2275931 c!1360624) b!7328913))

(assert (= (and d!2275931 (not c!1360624)) b!7328917))

(assert (= (and b!7328917 c!1360627) b!7328920))

(assert (= (and b!7328917 (not c!1360627)) b!7328918))

(assert (= (and b!7328918 res!2962097) b!7328915))

(assert (= (and b!7328918 c!1360623) b!7328921))

(assert (= (and b!7328918 (not c!1360623)) b!7328916))

(assert (= (and b!7328916 c!1360625) b!7328914))

(assert (= (and b!7328916 (not c!1360625)) b!7328922))

(assert (= (and b!7328922 c!1360626) b!7328919))

(assert (= (and b!7328922 (not c!1360626)) b!7328912))

(assert (= (or b!7328914 b!7328919) bm!667387))

(assert (= (or b!7328914 b!7328919) bm!667386))

(assert (= (or b!7328921 bm!667386) bm!667384))

(assert (= (or b!7328921 bm!667387) bm!667388))

(assert (= (or b!7328920 bm!667384) bm!667389))

(assert (= (or b!7328920 b!7328921) bm!667385))

(declare-fun m!7994974 () Bool)

(assert (=> bm!667385 m!7994974))

(assert (=> b!7328915 m!7994942))

(declare-fun m!7994976 () Bool)

(assert (=> b!7328913 m!7994976))

(declare-fun m!7994978 () Bool)

(assert (=> bm!667389 m!7994978))

(declare-fun m!7994980 () Bool)

(assert (=> bm!667388 m!7994980))

(assert (=> b!7328785 d!2275931))

(declare-fun d!2275933 () Bool)

(declare-fun res!2962102 () Bool)

(declare-fun e!4388433 () Bool)

(assert (=> d!2275933 (=> res!2962102 e!4388433)))

(assert (=> d!2275933 (= res!2962102 (is-Nil!71388 (exprs!8456 ct2!352)))))

(assert (=> d!2275933 (= (forall!17865 (exprs!8456 ct2!352) lambda!454415) e!4388433)))

(declare-fun b!7328927 () Bool)

(declare-fun e!4388434 () Bool)

(assert (=> b!7328927 (= e!4388433 e!4388434)))

(declare-fun res!2962103 () Bool)

(assert (=> b!7328927 (=> (not res!2962103) (not e!4388434))))

(declare-fun dynLambda!29420 (Int Regex!19016) Bool)

(assert (=> b!7328927 (= res!2962103 (dynLambda!29420 lambda!454415 (h!77836 (exprs!8456 ct2!352))))))

(declare-fun b!7328928 () Bool)

(assert (=> b!7328928 (= e!4388434 (forall!17865 (t!385899 (exprs!8456 ct2!352)) lambda!454415))))

(assert (= (and d!2275933 (not res!2962102)) b!7328927))

(assert (= (and b!7328927 res!2962103) b!7328928))

(declare-fun b_lambda!283475 () Bool)

(assert (=> (not b_lambda!283475) (not b!7328927)))

(declare-fun m!7994982 () Bool)

(assert (=> b!7328927 m!7994982))

(declare-fun m!7994984 () Bool)

(assert (=> b!7328928 m!7994984))

(assert (=> b!7328791 d!2275933))

(declare-fun d!2275935 () Bool)

(declare-fun nullableFct!3228 (Regex!19016) Bool)

(assert (=> d!2275935 (= (nullable!8120 (h!77836 (exprs!8456 ct1!256))) (nullableFct!3228 (h!77836 (exprs!8456 ct1!256))))))

(declare-fun bs!1917059 () Bool)

(assert (= bs!1917059 d!2275935))

(declare-fun m!7994986 () Bool)

(assert (=> bs!1917059 m!7994986))

(assert (=> b!7328786 d!2275935))

(declare-fun b!7328929 () Bool)

(declare-fun e!4388440 () (Set Context!15912))

(assert (=> b!7328929 (= e!4388440 (as set.empty (Set Context!15912)))))

(declare-fun bm!667392 () Bool)

(declare-fun call!667397 () (Set Context!15912))

(declare-fun call!667401 () (Set Context!15912))

(assert (=> bm!667392 (= call!667397 call!667401)))

(declare-fun c!1360632 () Bool)

(declare-fun call!667399 () (Set Context!15912))

(declare-fun bm!667393 () Bool)

(declare-fun call!667398 () List!71512)

(assert (=> bm!667393 (= call!667399 (derivationStepZipperDown!2847 (ite c!1360632 (regOne!38545 (h!77836 (exprs!8456 ct1!256))) (regOne!38544 (h!77836 (exprs!8456 ct1!256)))) (ite c!1360632 lt!2607082 (Context!15913 call!667398)) c!10305))))

(declare-fun bm!667394 () Bool)

(declare-fun call!667402 () (Set Context!15912))

(assert (=> bm!667394 (= call!667402 call!667397)))

(declare-fun b!7328930 () Bool)

(declare-fun e!4388438 () (Set Context!15912))

(assert (=> b!7328930 (= e!4388438 (set.insert lt!2607082 (as set.empty (Set Context!15912))))))

(declare-fun d!2275937 () Bool)

(declare-fun c!1360629 () Bool)

(assert (=> d!2275937 (= c!1360629 (and (is-ElementMatch!19016 (h!77836 (exprs!8456 ct1!256))) (= (c!1360585 (h!77836 (exprs!8456 ct1!256))) c!10305)))))

(assert (=> d!2275937 (= (derivationStepZipperDown!2847 (h!77836 (exprs!8456 ct1!256)) lt!2607082 c!10305) e!4388438)))

(declare-fun bm!667395 () Bool)

(declare-fun call!667400 () List!71512)

(assert (=> bm!667395 (= call!667400 call!667398)))

(declare-fun b!7328931 () Bool)

(declare-fun e!4388435 () (Set Context!15912))

(assert (=> b!7328931 (= e!4388435 call!667402)))

(declare-fun b!7328932 () Bool)

(declare-fun e!4388439 () Bool)

(assert (=> b!7328932 (= e!4388439 (nullable!8120 (regOne!38544 (h!77836 (exprs!8456 ct1!256)))))))

(declare-fun b!7328933 () Bool)

(declare-fun e!4388437 () (Set Context!15912))

(assert (=> b!7328933 (= e!4388437 e!4388435)))

(declare-fun c!1360630 () Bool)

(assert (=> b!7328933 (= c!1360630 (is-Concat!27861 (h!77836 (exprs!8456 ct1!256))))))

(declare-fun b!7328934 () Bool)

(declare-fun e!4388436 () (Set Context!15912))

(assert (=> b!7328934 (= e!4388438 e!4388436)))

(assert (=> b!7328934 (= c!1360632 (is-Union!19016 (h!77836 (exprs!8456 ct1!256))))))

(declare-fun b!7328935 () Bool)

(declare-fun c!1360628 () Bool)

(assert (=> b!7328935 (= c!1360628 e!4388439)))

(declare-fun res!2962104 () Bool)

(assert (=> b!7328935 (=> (not res!2962104) (not e!4388439))))

(assert (=> b!7328935 (= res!2962104 (is-Concat!27861 (h!77836 (exprs!8456 ct1!256))))))

(assert (=> b!7328935 (= e!4388436 e!4388437)))

(declare-fun b!7328936 () Bool)

(assert (=> b!7328936 (= e!4388440 call!667402)))

(declare-fun bm!667396 () Bool)

(assert (=> bm!667396 (= call!667398 ($colon$colon!3045 (exprs!8456 lt!2607082) (ite (or c!1360628 c!1360630) (regTwo!38544 (h!77836 (exprs!8456 ct1!256))) (h!77836 (exprs!8456 ct1!256)))))))

(declare-fun b!7328937 () Bool)

(assert (=> b!7328937 (= e!4388436 (set.union call!667399 call!667401))))

(declare-fun b!7328938 () Bool)

(assert (=> b!7328938 (= e!4388437 (set.union call!667399 call!667397))))

(declare-fun bm!667397 () Bool)

(assert (=> bm!667397 (= call!667401 (derivationStepZipperDown!2847 (ite c!1360632 (regTwo!38545 (h!77836 (exprs!8456 ct1!256))) (ite c!1360628 (regTwo!38544 (h!77836 (exprs!8456 ct1!256))) (ite c!1360630 (regOne!38544 (h!77836 (exprs!8456 ct1!256))) (reg!19345 (h!77836 (exprs!8456 ct1!256)))))) (ite (or c!1360632 c!1360628) lt!2607082 (Context!15913 call!667400)) c!10305))))

(declare-fun b!7328939 () Bool)

(declare-fun c!1360631 () Bool)

(assert (=> b!7328939 (= c!1360631 (is-Star!19016 (h!77836 (exprs!8456 ct1!256))))))

(assert (=> b!7328939 (= e!4388435 e!4388440)))

(assert (= (and d!2275937 c!1360629) b!7328930))

(assert (= (and d!2275937 (not c!1360629)) b!7328934))

(assert (= (and b!7328934 c!1360632) b!7328937))

(assert (= (and b!7328934 (not c!1360632)) b!7328935))

(assert (= (and b!7328935 res!2962104) b!7328932))

(assert (= (and b!7328935 c!1360628) b!7328938))

(assert (= (and b!7328935 (not c!1360628)) b!7328933))

(assert (= (and b!7328933 c!1360630) b!7328931))

(assert (= (and b!7328933 (not c!1360630)) b!7328939))

(assert (= (and b!7328939 c!1360631) b!7328936))

(assert (= (and b!7328939 (not c!1360631)) b!7328929))

(assert (= (or b!7328931 b!7328936) bm!667395))

(assert (= (or b!7328931 b!7328936) bm!667394))

(assert (= (or b!7328938 bm!667394) bm!667392))

(assert (= (or b!7328938 bm!667395) bm!667396))

(assert (= (or b!7328937 bm!667392) bm!667397))

(assert (= (or b!7328937 b!7328938) bm!667393))

(declare-fun m!7994988 () Bool)

(assert (=> bm!667393 m!7994988))

(assert (=> b!7328932 m!7994942))

(declare-fun m!7994990 () Bool)

(assert (=> b!7328930 m!7994990))

(declare-fun m!7994992 () Bool)

(assert (=> bm!667397 m!7994992))

(declare-fun m!7994994 () Bool)

(assert (=> bm!667396 m!7994994))

(assert (=> b!7328786 d!2275937))

(declare-fun d!2275939 () Bool)

(assert (=> d!2275939 (= (tail!14705 (exprs!8456 ct1!256)) (t!385899 (exprs!8456 ct1!256)))))

(assert (=> b!7328786 d!2275939))

(declare-fun d!2275941 () Bool)

(declare-fun res!2962105 () Bool)

(declare-fun e!4388441 () Bool)

(assert (=> d!2275941 (=> res!2962105 e!4388441)))

(assert (=> d!2275941 (= res!2962105 (is-Nil!71388 (exprs!8456 ct1!256)))))

(assert (=> d!2275941 (= (forall!17865 (exprs!8456 ct1!256) lambda!454415) e!4388441)))

(declare-fun b!7328940 () Bool)

(declare-fun e!4388442 () Bool)

(assert (=> b!7328940 (= e!4388441 e!4388442)))

(declare-fun res!2962106 () Bool)

(assert (=> b!7328940 (=> (not res!2962106) (not e!4388442))))

(assert (=> b!7328940 (= res!2962106 (dynLambda!29420 lambda!454415 (h!77836 (exprs!8456 ct1!256))))))

(declare-fun b!7328941 () Bool)

(assert (=> b!7328941 (= e!4388442 (forall!17865 (t!385899 (exprs!8456 ct1!256)) lambda!454415))))

(assert (= (and d!2275941 (not res!2962105)) b!7328940))

(assert (= (and b!7328940 res!2962106) b!7328941))

(declare-fun b_lambda!283477 () Bool)

(assert (=> (not b_lambda!283477) (not b!7328940)))

(declare-fun m!7994996 () Bool)

(assert (=> b!7328940 m!7994996))

(declare-fun m!7994998 () Bool)

(assert (=> b!7328941 m!7994998))

(assert (=> b!7328787 d!2275941))

(assert (=> b!7328787 d!2275915))

(declare-fun d!2275943 () Bool)

(assert (=> d!2275943 (= (isEmpty!40934 lt!2607078) (is-Nil!71388 lt!2607078))))

(assert (=> b!7328783 d!2275943))

(declare-fun b!7328963 () Bool)

(declare-fun e!4388457 () (Set Context!15912))

(declare-fun call!667411 () (Set Context!15912))

(assert (=> b!7328963 (= e!4388457 call!667411)))

(declare-fun b!7328964 () Bool)

(assert (=> b!7328964 (= e!4388457 (as set.empty (Set Context!15912)))))

(declare-fun d!2275945 () Bool)

(declare-fun c!1360643 () Bool)

(declare-fun e!4388455 () Bool)

(assert (=> d!2275945 (= c!1360643 e!4388455)))

(declare-fun res!2962110 () Bool)

(assert (=> d!2275945 (=> (not res!2962110) (not e!4388455))))

(assert (=> d!2275945 (= res!2962110 (is-Cons!71388 (exprs!8456 ct1!256)))))

(declare-fun e!4388456 () (Set Context!15912))

(assert (=> d!2275945 (= (derivationStepZipperUp!2696 ct1!256 c!10305) e!4388456)))

(declare-fun b!7328965 () Bool)

(assert (=> b!7328965 (= e!4388455 (nullable!8120 (h!77836 (exprs!8456 ct1!256))))))

(declare-fun bm!667406 () Bool)

(assert (=> bm!667406 (= call!667411 (derivationStepZipperDown!2847 (h!77836 (exprs!8456 ct1!256)) (Context!15913 (t!385899 (exprs!8456 ct1!256))) c!10305))))

(declare-fun b!7328966 () Bool)

(assert (=> b!7328966 (= e!4388456 (set.union call!667411 (derivationStepZipperUp!2696 (Context!15913 (t!385899 (exprs!8456 ct1!256))) c!10305)))))

(declare-fun b!7328967 () Bool)

(assert (=> b!7328967 (= e!4388456 e!4388457)))

(declare-fun c!1360642 () Bool)

(assert (=> b!7328967 (= c!1360642 (is-Cons!71388 (exprs!8456 ct1!256)))))

(assert (= (and d!2275945 res!2962110) b!7328965))

(assert (= (and d!2275945 c!1360643) b!7328966))

(assert (= (and d!2275945 (not c!1360643)) b!7328967))

(assert (= (and b!7328967 c!1360642) b!7328963))

(assert (= (and b!7328967 (not c!1360642)) b!7328964))

(assert (= (or b!7328966 b!7328963) bm!667406))

(assert (=> b!7328965 m!7994814))

(declare-fun m!7995000 () Bool)

(assert (=> bm!667406 m!7995000))

(declare-fun m!7995002 () Bool)

(assert (=> b!7328966 m!7995002))

(assert (=> start!715516 d!2275945))

(declare-fun bs!1917060 () Bool)

(declare-fun d!2275947 () Bool)

(assert (= bs!1917060 (and d!2275947 b!7328784)))

(declare-fun lambda!454441 () Int)

(assert (=> bs!1917060 (= lambda!454441 lambda!454415)))

(declare-fun bs!1917061 () Bool)

(assert (= bs!1917061 (and d!2275947 d!2275927)))

(assert (=> bs!1917061 (= lambda!454441 lambda!454438)))

(assert (=> d!2275947 (= (inv!90881 cWitness!35) (forall!17865 (exprs!8456 cWitness!35) lambda!454441))))

(declare-fun bs!1917062 () Bool)

(assert (= bs!1917062 d!2275947))

(declare-fun m!7995006 () Bool)

(assert (=> bs!1917062 m!7995006))

(assert (=> start!715516 d!2275947))

(declare-fun bs!1917063 () Bool)

(declare-fun d!2275949 () Bool)

(assert (= bs!1917063 (and d!2275949 b!7328784)))

(declare-fun lambda!454442 () Int)

(assert (=> bs!1917063 (= lambda!454442 lambda!454415)))

(declare-fun bs!1917064 () Bool)

(assert (= bs!1917064 (and d!2275949 d!2275927)))

(assert (=> bs!1917064 (= lambda!454442 lambda!454438)))

(declare-fun bs!1917065 () Bool)

(assert (= bs!1917065 (and d!2275949 d!2275947)))

(assert (=> bs!1917065 (= lambda!454442 lambda!454441)))

(assert (=> d!2275949 (= (inv!90881 ct1!256) (forall!17865 (exprs!8456 ct1!256) lambda!454442))))

(declare-fun bs!1917066 () Bool)

(assert (= bs!1917066 d!2275949))

(declare-fun m!7995016 () Bool)

(assert (=> bs!1917066 m!7995016))

(assert (=> start!715516 d!2275949))

(declare-fun bs!1917067 () Bool)

(declare-fun d!2275953 () Bool)

(assert (= bs!1917067 (and d!2275953 b!7328784)))

(declare-fun lambda!454443 () Int)

(assert (=> bs!1917067 (= lambda!454443 lambda!454415)))

(declare-fun bs!1917068 () Bool)

(assert (= bs!1917068 (and d!2275953 d!2275927)))

(assert (=> bs!1917068 (= lambda!454443 lambda!454438)))

(declare-fun bs!1917069 () Bool)

(assert (= bs!1917069 (and d!2275953 d!2275947)))

(assert (=> bs!1917069 (= lambda!454443 lambda!454441)))

(declare-fun bs!1917070 () Bool)

(assert (= bs!1917070 (and d!2275953 d!2275949)))

(assert (=> bs!1917070 (= lambda!454443 lambda!454442)))

(assert (=> d!2275953 (= (inv!90881 ct2!352) (forall!17865 (exprs!8456 ct2!352) lambda!454443))))

(declare-fun bs!1917071 () Bool)

(assert (= bs!1917071 d!2275953))

(declare-fun m!7995018 () Bool)

(assert (=> bs!1917071 m!7995018))

(assert (=> start!715516 d!2275953))

(declare-fun d!2275955 () Bool)

(assert (=> d!2275955 (= (isEmpty!40934 (exprs!8456 ct1!256)) (is-Nil!71388 (exprs!8456 ct1!256)))))

(assert (=> b!7328789 d!2275955))

(declare-fun d!2275957 () Bool)

(declare-fun e!4388459 () Bool)

(assert (=> d!2275957 e!4388459))

(declare-fun res!2962112 () Bool)

(assert (=> d!2275957 (=> (not res!2962112) (not e!4388459))))

(declare-fun lt!2607140 () List!71512)

(assert (=> d!2275957 (= res!2962112 (= (content!14957 lt!2607140) (set.union (content!14957 (exprs!8456 ct1!256)) (content!14957 (exprs!8456 ct2!352)))))))

(declare-fun e!4388458 () List!71512)

(assert (=> d!2275957 (= lt!2607140 e!4388458)))

(declare-fun c!1360644 () Bool)

(assert (=> d!2275957 (= c!1360644 (is-Nil!71388 (exprs!8456 ct1!256)))))

(assert (=> d!2275957 (= (++!16840 (exprs!8456 ct1!256) (exprs!8456 ct2!352)) lt!2607140)))

(declare-fun b!7328969 () Bool)

(assert (=> b!7328969 (= e!4388458 (Cons!71388 (h!77836 (exprs!8456 ct1!256)) (++!16840 (t!385899 (exprs!8456 ct1!256)) (exprs!8456 ct2!352))))))

(declare-fun b!7328971 () Bool)

(assert (=> b!7328971 (= e!4388459 (or (not (= (exprs!8456 ct2!352) Nil!71388)) (= lt!2607140 (exprs!8456 ct1!256))))))

(declare-fun b!7328970 () Bool)

(declare-fun res!2962111 () Bool)

(assert (=> b!7328970 (=> (not res!2962111) (not e!4388459))))

(assert (=> b!7328970 (= res!2962111 (= (size!41934 lt!2607140) (+ (size!41934 (exprs!8456 ct1!256)) (size!41934 (exprs!8456 ct2!352)))))))

(declare-fun b!7328968 () Bool)

(assert (=> b!7328968 (= e!4388458 (exprs!8456 ct2!352))))

(assert (= (and d!2275957 c!1360644) b!7328968))

(assert (= (and d!2275957 (not c!1360644)) b!7328969))

(assert (= (and d!2275957 res!2962112) b!7328970))

(assert (= (and b!7328970 res!2962111) b!7328971))

(declare-fun m!7995020 () Bool)

(assert (=> d!2275957 m!7995020))

(declare-fun m!7995022 () Bool)

(assert (=> d!2275957 m!7995022))

(assert (=> d!2275957 m!7994908))

(declare-fun m!7995024 () Bool)

(assert (=> b!7328969 m!7995024))

(declare-fun m!7995026 () Bool)

(assert (=> b!7328970 m!7995026))

(declare-fun m!7995028 () Bool)

(assert (=> b!7328970 m!7995028))

(assert (=> b!7328970 m!7994916))

(assert (=> b!7328784 d!2275957))

(declare-fun d!2275961 () Bool)

(assert (=> d!2275961 (forall!17865 (++!16840 (exprs!8456 ct1!256) (exprs!8456 ct2!352)) lambda!454415)))

(declare-fun lt!2607141 () Unit!164997)

(assert (=> d!2275961 (= lt!2607141 (choose!57001 (exprs!8456 ct1!256) (exprs!8456 ct2!352) lambda!454415))))

(assert (=> d!2275961 (forall!17865 (exprs!8456 ct1!256) lambda!454415)))

(assert (=> d!2275961 (= (lemmaConcatPreservesForall!1697 (exprs!8456 ct1!256) (exprs!8456 ct2!352) lambda!454415) lt!2607141)))

(declare-fun bs!1917072 () Bool)

(assert (= bs!1917072 d!2275961))

(assert (=> bs!1917072 m!7994832))

(assert (=> bs!1917072 m!7994832))

(declare-fun m!7995030 () Bool)

(assert (=> bs!1917072 m!7995030))

(declare-fun m!7995032 () Bool)

(assert (=> bs!1917072 m!7995032))

(assert (=> bs!1917072 m!7994810))

(assert (=> b!7328784 d!2275961))

(declare-fun b!7328976 () Bool)

(declare-fun e!4388462 () Bool)

(declare-fun tp!2080960 () Bool)

(declare-fun tp!2080961 () Bool)

(assert (=> b!7328976 (= e!4388462 (and tp!2080960 tp!2080961))))

(assert (=> b!7328790 (= tp!2080946 e!4388462)))

(assert (= (and b!7328790 (is-Cons!71388 (exprs!8456 cWitness!35))) b!7328976))

(declare-fun b!7328977 () Bool)

(declare-fun e!4388463 () Bool)

(declare-fun tp!2080962 () Bool)

(declare-fun tp!2080963 () Bool)

(assert (=> b!7328977 (= e!4388463 (and tp!2080962 tp!2080963))))

(assert (=> b!7328792 (= tp!2080944 e!4388463)))

(assert (= (and b!7328792 (is-Cons!71388 (exprs!8456 ct2!352))) b!7328977))

(declare-fun b!7328978 () Bool)

(declare-fun e!4388464 () Bool)

(declare-fun tp!2080964 () Bool)

(declare-fun tp!2080965 () Bool)

(assert (=> b!7328978 (= e!4388464 (and tp!2080964 tp!2080965))))

(assert (=> b!7328782 (= tp!2080945 e!4388464)))

(assert (= (and b!7328782 (is-Cons!71388 (exprs!8456 ct1!256))) b!7328978))

(declare-fun b_lambda!283479 () Bool)

(assert (= b_lambda!283475 (or b!7328784 b_lambda!283479)))

(declare-fun bs!1917073 () Bool)

(declare-fun d!2275963 () Bool)

(assert (= bs!1917073 (and d!2275963 b!7328784)))

(assert (=> bs!1917073 (= (dynLambda!29420 lambda!454415 (h!77836 (exprs!8456 ct2!352))) (validRegex!9649 (h!77836 (exprs!8456 ct2!352))))))

(declare-fun m!7995034 () Bool)

(assert (=> bs!1917073 m!7995034))

(assert (=> b!7328927 d!2275963))

(declare-fun b_lambda!283481 () Bool)

(assert (= b_lambda!283477 (or b!7328784 b_lambda!283481)))

(declare-fun bs!1917074 () Bool)

(declare-fun d!2275965 () Bool)

(assert (= bs!1917074 (and d!2275965 b!7328784)))

(assert (=> bs!1917074 (= (dynLambda!29420 lambda!454415 (h!77836 (exprs!8456 ct1!256))) (validRegex!9649 (h!77836 (exprs!8456 ct1!256))))))

(assert (=> bs!1917074 m!7994958))

(assert (=> b!7328940 d!2275965))

(push 1)

(assert (not b!7328915))

(assert (not d!2275911))

(assert (not b!7328909))

(assert (not b!7328928))

(assert (not b!7328970))

(assert (not b!7328910))

(assert (not b!7328969))

(assert (not bm!667397))

(assert (not bm!667406))

(assert (not bm!667389))

(assert (not d!2275929))

(assert (not bs!1917074))

(assert (not b!7328846))

(assert (not d!2275947))

(assert (not b!7328932))

(assert (not b!7328978))

(assert (not bm!667385))

(assert (not bm!667393))

(assert (not d!2275927))

(assert (not d!2275915))

(assert (not b!7328965))

(assert (not d!2275953))

(assert (not d!2275961))

(assert (not bs!1917073))

(assert (not b!7328976))

(assert (not b_lambda!283479))

(assert (not bm!667372))

(assert tp_is_empty!48277)

(assert (not d!2275935))

(assert (not b!7328966))

(assert (not bm!667388))

(assert (not bm!667369))

(assert (not d!2275957))

(assert (not d!2275913))

(assert (not bm!667373))

(assert (not b!7328941))

(assert (not b!7328977))

(assert (not b!7328845))

(assert (not bm!667396))

(assert (not b!7328878))

(assert (not b_lambda!283481))

(assert (not d!2275949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

