; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716906 () Bool)

(assert start!716906)

(declare-fun b!7339732 () Bool)

(declare-fun e!4395048 () Bool)

(declare-fun tp_is_empty!48457 () Bool)

(assert (=> b!7339732 (= e!4395048 tp_is_empty!48457)))

(declare-fun b!7339733 () Bool)

(declare-fun e!4395050 () Bool)

(declare-fun tp!2084078 () Bool)

(assert (=> b!7339733 (= e!4395050 tp!2084078)))

(declare-fun b!7339734 () Bool)

(declare-fun e!4395044 () Bool)

(declare-fun tp!2084079 () Bool)

(assert (=> b!7339734 (= e!4395044 tp!2084079)))

(declare-fun b!7339735 () Bool)

(declare-fun e!4395049 () Bool)

(declare-fun e!4395043 () Bool)

(assert (=> b!7339735 (= e!4395049 e!4395043)))

(declare-fun res!2965312 () Bool)

(assert (=> b!7339735 (=> (not res!2965312) (not e!4395043))))

(declare-datatypes ((C!38486 0))(
  ( (C!38487 (val!29603 Int)) )
))
(declare-datatypes ((Regex!19106 0))(
  ( (ElementMatch!19106 (c!1363226 C!38486)) (Concat!27951 (regOne!38724 Regex!19106) (regTwo!38724 Regex!19106)) (EmptyExpr!19106) (Star!19106 (reg!19435 Regex!19106)) (EmptyLang!19106) (Union!19106 (regOne!38725 Regex!19106) (regTwo!38725 Regex!19106)) )
))
(declare-datatypes ((List!71602 0))(
  ( (Nil!71478) (Cons!71478 (h!77926 Regex!19106) (t!385997 List!71602)) )
))
(declare-datatypes ((Context!16092 0))(
  ( (Context!16093 (exprs!8546 List!71602)) )
))
(declare-fun cWitness!61 () Context!16092)

(declare-fun lt!2609775 () (Set Context!16092))

(assert (=> b!7339735 (= res!2965312 (set.member cWitness!61 lt!2609775))))

(declare-fun r1!2370 () Regex!19106)

(declare-fun c!10362 () C!38486)

(declare-fun ct1!282 () Context!16092)

(declare-fun derivationStepZipperDown!2932 (Regex!19106 Context!16092 C!38486) (Set Context!16092))

(assert (=> b!7339735 (= lt!2609775 (derivationStepZipperDown!2932 r1!2370 ct1!282 c!10362))))

(declare-fun b!7339736 () Bool)

(declare-fun tp!2084081 () Bool)

(declare-fun tp!2084077 () Bool)

(assert (=> b!7339736 (= e!4395048 (and tp!2084081 tp!2084077))))

(declare-fun b!7339737 () Bool)

(declare-fun tp!2084075 () Bool)

(declare-fun tp!2084074 () Bool)

(assert (=> b!7339737 (= e!4395048 (and tp!2084075 tp!2084074))))

(declare-fun b!7339738 () Bool)

(declare-fun e!4395045 () Bool)

(declare-fun lambda!455482 () Int)

(declare-fun forall!17938 (List!71602 Int) Bool)

(assert (=> b!7339738 (= e!4395045 (not (forall!17938 (exprs!8546 cWitness!61) lambda!455482)))))

(declare-fun lt!2609773 () Context!16092)

(declare-fun ct2!378 () Context!16092)

(declare-fun ++!16924 (List!71602 List!71602) List!71602)

(assert (=> b!7339738 (set.member (Context!16093 (++!16924 (exprs!8546 cWitness!61) (exprs!8546 ct2!378))) (derivationStepZipperDown!2932 (regOne!38725 r1!2370) lt!2609773 c!10362))))

(declare-datatypes ((Unit!165165 0))(
  ( (Unit!165166) )
))
(declare-fun lt!2609772 () Unit!165165)

(declare-fun lemmaConcatPreservesForall!1781 (List!71602 List!71602 Int) Unit!165165)

(assert (=> b!7339738 (= lt!2609772 (lemmaConcatPreservesForall!1781 (exprs!8546 ct1!282) (exprs!8546 ct2!378) lambda!455482))))

(declare-fun lt!2609770 () Unit!165165)

(assert (=> b!7339738 (= lt!2609770 (lemmaConcatPreservesForall!1781 (exprs!8546 cWitness!61) (exprs!8546 ct2!378) lambda!455482))))

(declare-fun lt!2609768 () Unit!165165)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!41 (Regex!19106 Context!16092 Context!16092 Context!16092 C!38486) Unit!165165)

(assert (=> b!7339738 (= lt!2609768 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!41 (regOne!38725 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7339739 () Bool)

(declare-fun tp!2084080 () Bool)

(assert (=> b!7339739 (= e!4395048 tp!2084080)))

(declare-fun b!7339740 () Bool)

(declare-fun e!4395046 () Bool)

(declare-fun tp!2084076 () Bool)

(assert (=> b!7339740 (= e!4395046 tp!2084076)))

(declare-fun b!7339741 () Bool)

(declare-fun e!4395047 () Bool)

(assert (=> b!7339741 (= e!4395047 e!4395045)))

(declare-fun res!2965314 () Bool)

(assert (=> b!7339741 (=> (not res!2965314) (not e!4395045))))

(declare-fun lt!2609771 () (Set Context!16092))

(assert (=> b!7339741 (= res!2965314 (= lt!2609775 (set.union lt!2609771 (derivationStepZipperDown!2932 (regTwo!38725 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7339741 (= lt!2609771 (derivationStepZipperDown!2932 (regOne!38725 r1!2370) ct1!282 c!10362))))

(declare-fun res!2965313 () Bool)

(assert (=> start!716906 (=> (not res!2965313) (not e!4395049))))

(declare-fun validRegex!9702 (Regex!19106) Bool)

(assert (=> start!716906 (= res!2965313 (validRegex!9702 r1!2370))))

(assert (=> start!716906 e!4395049))

(assert (=> start!716906 tp_is_empty!48457))

(declare-fun inv!91106 (Context!16092) Bool)

(assert (=> start!716906 (and (inv!91106 cWitness!61) e!4395050)))

(assert (=> start!716906 (and (inv!91106 ct1!282) e!4395046)))

(assert (=> start!716906 e!4395048))

(assert (=> start!716906 (and (inv!91106 ct2!378) e!4395044)))

(declare-fun b!7339742 () Bool)

(assert (=> b!7339742 (= e!4395043 e!4395047)))

(declare-fun res!2965315 () Bool)

(assert (=> b!7339742 (=> (not res!2965315) (not e!4395047))))

(assert (=> b!7339742 (= res!2965315 (and (or (not (is-ElementMatch!19106 r1!2370)) (not (= c!10362 (c!1363226 r1!2370)))) (is-Union!19106 r1!2370)))))

(declare-fun lt!2609774 () (Set Context!16092))

(assert (=> b!7339742 (= lt!2609774 (derivationStepZipperDown!2932 r1!2370 lt!2609773 c!10362))))

(assert (=> b!7339742 (= lt!2609773 (Context!16093 (++!16924 (exprs!8546 ct1!282) (exprs!8546 ct2!378))))))

(declare-fun lt!2609769 () Unit!165165)

(assert (=> b!7339742 (= lt!2609769 (lemmaConcatPreservesForall!1781 (exprs!8546 ct1!282) (exprs!8546 ct2!378) lambda!455482))))

(declare-fun b!7339743 () Bool)

(declare-fun res!2965311 () Bool)

(assert (=> b!7339743 (=> (not res!2965311) (not e!4395045))))

(assert (=> b!7339743 (= res!2965311 (set.member cWitness!61 lt!2609771))))

(assert (= (and start!716906 res!2965313) b!7339735))

(assert (= (and b!7339735 res!2965312) b!7339742))

(assert (= (and b!7339742 res!2965315) b!7339741))

(assert (= (and b!7339741 res!2965314) b!7339743))

(assert (= (and b!7339743 res!2965311) b!7339738))

(assert (= start!716906 b!7339733))

(assert (= start!716906 b!7339740))

(assert (= (and start!716906 (is-ElementMatch!19106 r1!2370)) b!7339732))

(assert (= (and start!716906 (is-Concat!27951 r1!2370)) b!7339736))

(assert (= (and start!716906 (is-Star!19106 r1!2370)) b!7339739))

(assert (= (and start!716906 (is-Union!19106 r1!2370)) b!7339737))

(assert (= start!716906 b!7339734))

(declare-fun m!8003846 () Bool)

(assert (=> b!7339738 m!8003846))

(declare-fun m!8003848 () Bool)

(assert (=> b!7339738 m!8003848))

(declare-fun m!8003850 () Bool)

(assert (=> b!7339738 m!8003850))

(declare-fun m!8003852 () Bool)

(assert (=> b!7339738 m!8003852))

(declare-fun m!8003854 () Bool)

(assert (=> b!7339738 m!8003854))

(declare-fun m!8003856 () Bool)

(assert (=> b!7339738 m!8003856))

(declare-fun m!8003858 () Bool)

(assert (=> b!7339738 m!8003858))

(declare-fun m!8003860 () Bool)

(assert (=> start!716906 m!8003860))

(declare-fun m!8003862 () Bool)

(assert (=> start!716906 m!8003862))

(declare-fun m!8003864 () Bool)

(assert (=> start!716906 m!8003864))

(declare-fun m!8003866 () Bool)

(assert (=> start!716906 m!8003866))

(declare-fun m!8003868 () Bool)

(assert (=> b!7339742 m!8003868))

(declare-fun m!8003870 () Bool)

(assert (=> b!7339742 m!8003870))

(assert (=> b!7339742 m!8003848))

(declare-fun m!8003872 () Bool)

(assert (=> b!7339735 m!8003872))

(declare-fun m!8003874 () Bool)

(assert (=> b!7339735 m!8003874))

(declare-fun m!8003876 () Bool)

(assert (=> b!7339741 m!8003876))

(declare-fun m!8003878 () Bool)

(assert (=> b!7339741 m!8003878))

(declare-fun m!8003880 () Bool)

(assert (=> b!7339743 m!8003880))

(push 1)

(assert (not b!7339739))

(assert (not b!7339737))

(assert (not start!716906))

(assert (not b!7339734))

(assert (not b!7339735))

(assert (not b!7339733))

(assert (not b!7339742))

(assert tp_is_empty!48457)

(assert (not b!7339738))

(assert (not b!7339740))

(assert (not b!7339741))

(assert (not b!7339736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1918308 () Bool)

(declare-fun d!2278578 () Bool)

(assert (= bs!1918308 (and d!2278578 b!7339742)))

(declare-fun lambda!455496 () Int)

(assert (=> bs!1918308 (= lambda!455496 lambda!455482)))

(assert (=> d!2278578 (set.member (Context!16093 (++!16924 (exprs!8546 cWitness!61) (exprs!8546 ct2!378))) (derivationStepZipperDown!2932 (regOne!38725 r1!2370) (Context!16093 (++!16924 (exprs!8546 ct1!282) (exprs!8546 ct2!378))) c!10362))))

(declare-fun lt!2609808 () Unit!165165)

(assert (=> d!2278578 (= lt!2609808 (lemmaConcatPreservesForall!1781 (exprs!8546 ct1!282) (exprs!8546 ct2!378) lambda!455496))))

(declare-fun lt!2609807 () Unit!165165)

(assert (=> d!2278578 (= lt!2609807 (lemmaConcatPreservesForall!1781 (exprs!8546 cWitness!61) (exprs!8546 ct2!378) lambda!455496))))

(declare-fun lt!2609806 () Unit!165165)

(declare-fun choose!57085 (Regex!19106 Context!16092 Context!16092 Context!16092 C!38486) Unit!165165)

(assert (=> d!2278578 (= lt!2609806 (choose!57085 (regOne!38725 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2278578 (validRegex!9702 (regOne!38725 r1!2370))))

(assert (=> d!2278578 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!41 (regOne!38725 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2609806)))

(declare-fun bs!1918309 () Bool)

(assert (= bs!1918309 d!2278578))

(declare-fun m!8003924 () Bool)

(assert (=> bs!1918309 m!8003924))

(declare-fun m!8003926 () Bool)

(assert (=> bs!1918309 m!8003926))

(declare-fun m!8003928 () Bool)

(assert (=> bs!1918309 m!8003928))

(declare-fun m!8003930 () Bool)

(assert (=> bs!1918309 m!8003930))

(declare-fun m!8003932 () Bool)

(assert (=> bs!1918309 m!8003932))

(declare-fun m!8003934 () Bool)

(assert (=> bs!1918309 m!8003934))

(assert (=> bs!1918309 m!8003870))

(assert (=> bs!1918309 m!8003852))

(assert (=> b!7339738 d!2278578))

(declare-fun d!2278582 () Bool)

(assert (=> d!2278582 (forall!17938 (++!16924 (exprs!8546 ct1!282) (exprs!8546 ct2!378)) lambda!455482)))

(declare-fun lt!2609811 () Unit!165165)

(declare-fun choose!57086 (List!71602 List!71602 Int) Unit!165165)

(assert (=> d!2278582 (= lt!2609811 (choose!57086 (exprs!8546 ct1!282) (exprs!8546 ct2!378) lambda!455482))))

(assert (=> d!2278582 (forall!17938 (exprs!8546 ct1!282) lambda!455482)))

(assert (=> d!2278582 (= (lemmaConcatPreservesForall!1781 (exprs!8546 ct1!282) (exprs!8546 ct2!378) lambda!455482) lt!2609811)))

(declare-fun bs!1918313 () Bool)

(assert (= bs!1918313 d!2278582))

(assert (=> bs!1918313 m!8003870))

(assert (=> bs!1918313 m!8003870))

(declare-fun m!8003938 () Bool)

(assert (=> bs!1918313 m!8003938))

(declare-fun m!8003940 () Bool)

(assert (=> bs!1918313 m!8003940))

(declare-fun m!8003942 () Bool)

(assert (=> bs!1918313 m!8003942))

(assert (=> b!7339738 d!2278582))

(declare-fun b!7339817 () Bool)

(declare-fun res!2965351 () Bool)

(declare-fun e!4395100 () Bool)

(assert (=> b!7339817 (=> (not res!2965351) (not e!4395100))))

(declare-fun lt!2609814 () List!71602)

(declare-fun size!42002 (List!71602) Int)

(assert (=> b!7339817 (= res!2965351 (= (size!42002 lt!2609814) (+ (size!42002 (exprs!8546 cWitness!61)) (size!42002 (exprs!8546 ct2!378)))))))

(declare-fun b!7339816 () Bool)

(declare-fun e!4395101 () List!71602)

(assert (=> b!7339816 (= e!4395101 (Cons!71478 (h!77926 (exprs!8546 cWitness!61)) (++!16924 (t!385997 (exprs!8546 cWitness!61)) (exprs!8546 ct2!378))))))

(declare-fun b!7339815 () Bool)

(assert (=> b!7339815 (= e!4395101 (exprs!8546 ct2!378))))

(declare-fun b!7339818 () Bool)

(assert (=> b!7339818 (= e!4395100 (or (not (= (exprs!8546 ct2!378) Nil!71478)) (= lt!2609814 (exprs!8546 cWitness!61))))))

(declare-fun d!2278586 () Bool)

(assert (=> d!2278586 e!4395100))

(declare-fun res!2965350 () Bool)

(assert (=> d!2278586 (=> (not res!2965350) (not e!4395100))))

(declare-fun content!15023 (List!71602) (Set Regex!19106))

(assert (=> d!2278586 (= res!2965350 (= (content!15023 lt!2609814) (set.union (content!15023 (exprs!8546 cWitness!61)) (content!15023 (exprs!8546 ct2!378)))))))

(assert (=> d!2278586 (= lt!2609814 e!4395101)))

(declare-fun c!1363237 () Bool)

(assert (=> d!2278586 (= c!1363237 (is-Nil!71478 (exprs!8546 cWitness!61)))))

(assert (=> d!2278586 (= (++!16924 (exprs!8546 cWitness!61) (exprs!8546 ct2!378)) lt!2609814)))

(assert (= (and d!2278586 c!1363237) b!7339815))

(assert (= (and d!2278586 (not c!1363237)) b!7339816))

(assert (= (and d!2278586 res!2965350) b!7339817))

(assert (= (and b!7339817 res!2965351) b!7339818))

(declare-fun m!8003948 () Bool)

(assert (=> b!7339817 m!8003948))

(declare-fun m!8003950 () Bool)

(assert (=> b!7339817 m!8003950))

(declare-fun m!8003952 () Bool)

(assert (=> b!7339817 m!8003952))

(declare-fun m!8003954 () Bool)

(assert (=> b!7339816 m!8003954))

(declare-fun m!8003956 () Bool)

(assert (=> d!2278586 m!8003956))

(declare-fun m!8003958 () Bool)

(assert (=> d!2278586 m!8003958))

(declare-fun m!8003960 () Bool)

(assert (=> d!2278586 m!8003960))

(assert (=> b!7339738 d!2278586))

(declare-fun d!2278592 () Bool)

(declare-fun res!2965356 () Bool)

(declare-fun e!4395106 () Bool)

(assert (=> d!2278592 (=> res!2965356 e!4395106)))

(assert (=> d!2278592 (= res!2965356 (is-Nil!71478 (exprs!8546 cWitness!61)))))

(assert (=> d!2278592 (= (forall!17938 (exprs!8546 cWitness!61) lambda!455482) e!4395106)))

(declare-fun b!7339823 () Bool)

(declare-fun e!4395107 () Bool)

(assert (=> b!7339823 (= e!4395106 e!4395107)))

(declare-fun res!2965357 () Bool)

(assert (=> b!7339823 (=> (not res!2965357) (not e!4395107))))

(declare-fun dynLambda!29446 (Int Regex!19106) Bool)

(assert (=> b!7339823 (= res!2965357 (dynLambda!29446 lambda!455482 (h!77926 (exprs!8546 cWitness!61))))))

(declare-fun b!7339824 () Bool)

(assert (=> b!7339824 (= e!4395107 (forall!17938 (t!385997 (exprs!8546 cWitness!61)) lambda!455482))))

(assert (= (and d!2278592 (not res!2965356)) b!7339823))

(assert (= (and b!7339823 res!2965357) b!7339824))

(declare-fun b_lambda!283835 () Bool)

(assert (=> (not b_lambda!283835) (not b!7339823)))

(declare-fun m!8003962 () Bool)

(assert (=> b!7339823 m!8003962))

(declare-fun m!8003964 () Bool)

(assert (=> b!7339824 m!8003964))

(assert (=> b!7339738 d!2278592))

(declare-fun d!2278594 () Bool)

(assert (=> d!2278594 (forall!17938 (++!16924 (exprs!8546 cWitness!61) (exprs!8546 ct2!378)) lambda!455482)))

(declare-fun lt!2609815 () Unit!165165)

(assert (=> d!2278594 (= lt!2609815 (choose!57086 (exprs!8546 cWitness!61) (exprs!8546 ct2!378) lambda!455482))))

(assert (=> d!2278594 (forall!17938 (exprs!8546 cWitness!61) lambda!455482)))

(assert (=> d!2278594 (= (lemmaConcatPreservesForall!1781 (exprs!8546 cWitness!61) (exprs!8546 ct2!378) lambda!455482) lt!2609815)))

(declare-fun bs!1918320 () Bool)

(assert (= bs!1918320 d!2278594))

(assert (=> bs!1918320 m!8003852))

(assert (=> bs!1918320 m!8003852))

(declare-fun m!8003966 () Bool)

(assert (=> bs!1918320 m!8003966))

(declare-fun m!8003968 () Bool)

(assert (=> bs!1918320 m!8003968))

(assert (=> bs!1918320 m!8003854))

(assert (=> b!7339738 d!2278594))

(declare-fun call!669735 () List!71602)

(declare-fun bm!669730 () Bool)

(declare-fun c!1363261 () Bool)

(declare-fun c!1363258 () Bool)

(declare-fun c!1363259 () Bool)

(declare-fun call!669740 () (Set Context!16092))

(assert (=> bm!669730 (= call!669740 (derivationStepZipperDown!2932 (ite c!1363259 (regOne!38725 (regOne!38725 r1!2370)) (ite c!1363261 (regTwo!38724 (regOne!38725 r1!2370)) (ite c!1363258 (regOne!38724 (regOne!38725 r1!2370)) (reg!19435 (regOne!38725 r1!2370))))) (ite (or c!1363259 c!1363261) lt!2609773 (Context!16093 call!669735)) c!10362))))

(declare-fun call!669739 () List!71602)

(declare-fun bm!669731 () Bool)

(declare-fun $colon$colon!3108 (List!71602 Regex!19106) List!71602)

(assert (=> bm!669731 (= call!669739 ($colon$colon!3108 (exprs!8546 lt!2609773) (ite (or c!1363261 c!1363258) (regTwo!38724 (regOne!38725 r1!2370)) (regOne!38725 r1!2370))))))

(declare-fun b!7339870 () Bool)

(declare-fun c!1363260 () Bool)

(assert (=> b!7339870 (= c!1363260 (is-Star!19106 (regOne!38725 r1!2370)))))

(declare-fun e!4395133 () (Set Context!16092))

(declare-fun e!4395134 () (Set Context!16092))

(assert (=> b!7339870 (= e!4395133 e!4395134)))

(declare-fun b!7339871 () Bool)

(declare-fun call!669738 () (Set Context!16092))

(assert (=> b!7339871 (= e!4395133 call!669738)))

(declare-fun b!7339872 () Bool)

(assert (=> b!7339872 (= e!4395134 (as set.empty (Set Context!16092)))))

(declare-fun b!7339873 () Bool)

(assert (=> b!7339873 (= e!4395134 call!669738)))

(declare-fun b!7339874 () Bool)

(declare-fun e!4395136 () Bool)

(assert (=> b!7339874 (= c!1363261 e!4395136)))

(declare-fun res!2965362 () Bool)

(assert (=> b!7339874 (=> (not res!2965362) (not e!4395136))))

(assert (=> b!7339874 (= res!2965362 (is-Concat!27951 (regOne!38725 r1!2370)))))

(declare-fun e!4395137 () (Set Context!16092))

(declare-fun e!4395132 () (Set Context!16092))

(assert (=> b!7339874 (= e!4395137 e!4395132)))

(declare-fun bm!669732 () Bool)

(declare-fun call!669737 () (Set Context!16092))

(assert (=> bm!669732 (= call!669737 call!669740)))

(declare-fun b!7339875 () Bool)

(assert (=> b!7339875 (= e!4395132 e!4395133)))

(assert (=> b!7339875 (= c!1363258 (is-Concat!27951 (regOne!38725 r1!2370)))))

(declare-fun b!7339876 () Bool)

(declare-fun e!4395135 () (Set Context!16092))

(assert (=> b!7339876 (= e!4395135 (set.insert lt!2609773 (as set.empty (Set Context!16092))))))

(declare-fun bm!669733 () Bool)

(assert (=> bm!669733 (= call!669738 call!669737)))

(declare-fun b!7339877 () Bool)

(declare-fun call!669736 () (Set Context!16092))

(assert (=> b!7339877 (= e!4395132 (set.union call!669736 call!669737))))

(declare-fun d!2278596 () Bool)

(declare-fun c!1363262 () Bool)

(assert (=> d!2278596 (= c!1363262 (and (is-ElementMatch!19106 (regOne!38725 r1!2370)) (= (c!1363226 (regOne!38725 r1!2370)) c!10362)))))

(assert (=> d!2278596 (= (derivationStepZipperDown!2932 (regOne!38725 r1!2370) lt!2609773 c!10362) e!4395135)))

(declare-fun b!7339869 () Bool)

(assert (=> b!7339869 (= e!4395137 (set.union call!669740 call!669736))))

(declare-fun bm!669734 () Bool)

(assert (=> bm!669734 (= call!669735 call!669739)))

(declare-fun b!7339878 () Bool)

(assert (=> b!7339878 (= e!4395135 e!4395137)))

(assert (=> b!7339878 (= c!1363259 (is-Union!19106 (regOne!38725 r1!2370)))))

(declare-fun b!7339879 () Bool)

(declare-fun nullable!8201 (Regex!19106) Bool)

(assert (=> b!7339879 (= e!4395136 (nullable!8201 (regOne!38724 (regOne!38725 r1!2370))))))

(declare-fun bm!669735 () Bool)

(assert (=> bm!669735 (= call!669736 (derivationStepZipperDown!2932 (ite c!1363259 (regTwo!38725 (regOne!38725 r1!2370)) (regOne!38724 (regOne!38725 r1!2370))) (ite c!1363259 lt!2609773 (Context!16093 call!669739)) c!10362))))

(assert (= (and d!2278596 c!1363262) b!7339876))

(assert (= (and d!2278596 (not c!1363262)) b!7339878))

(assert (= (and b!7339878 c!1363259) b!7339869))

(assert (= (and b!7339878 (not c!1363259)) b!7339874))

(assert (= (and b!7339874 res!2965362) b!7339879))

(assert (= (and b!7339874 c!1363261) b!7339877))

(assert (= (and b!7339874 (not c!1363261)) b!7339875))

(assert (= (and b!7339875 c!1363258) b!7339871))

(assert (= (and b!7339875 (not c!1363258)) b!7339870))

(assert (= (and b!7339870 c!1363260) b!7339873))

(assert (= (and b!7339870 (not c!1363260)) b!7339872))

(assert (= (or b!7339871 b!7339873) bm!669734))

(assert (= (or b!7339871 b!7339873) bm!669733))

(assert (= (or b!7339877 bm!669733) bm!669732))

(assert (= (or b!7339877 bm!669734) bm!669731))

(assert (= (or b!7339869 b!7339877) bm!669735))

(assert (= (or b!7339869 bm!669732) bm!669730))

(declare-fun m!8003970 () Bool)

(assert (=> bm!669730 m!8003970))

(declare-fun m!8003972 () Bool)

(assert (=> b!7339879 m!8003972))

(declare-fun m!8003974 () Bool)

(assert (=> bm!669735 m!8003974))

(declare-fun m!8003976 () Bool)

(assert (=> b!7339876 m!8003976))

(declare-fun m!8003978 () Bool)

(assert (=> bm!669731 m!8003978))

(assert (=> b!7339738 d!2278596))

(declare-fun c!1363266 () Bool)

(declare-fun c!1363264 () Bool)

(declare-fun bm!669736 () Bool)

(declare-fun c!1363263 () Bool)

(declare-fun call!669741 () List!71602)

(declare-fun call!669746 () (Set Context!16092))

(assert (=> bm!669736 (= call!669746 (derivationStepZipperDown!2932 (ite c!1363264 (regOne!38725 r1!2370) (ite c!1363266 (regTwo!38724 r1!2370) (ite c!1363263 (regOne!38724 r1!2370) (reg!19435 r1!2370)))) (ite (or c!1363264 c!1363266) ct1!282 (Context!16093 call!669741)) c!10362))))

(declare-fun bm!669737 () Bool)

(declare-fun call!669745 () List!71602)

(assert (=> bm!669737 (= call!669745 ($colon$colon!3108 (exprs!8546 ct1!282) (ite (or c!1363266 c!1363263) (regTwo!38724 r1!2370) r1!2370)))))

(declare-fun b!7339881 () Bool)

(declare-fun c!1363265 () Bool)

(assert (=> b!7339881 (= c!1363265 (is-Star!19106 r1!2370))))

(declare-fun e!4395139 () (Set Context!16092))

(declare-fun e!4395140 () (Set Context!16092))

(assert (=> b!7339881 (= e!4395139 e!4395140)))

(declare-fun b!7339882 () Bool)

(declare-fun call!669744 () (Set Context!16092))

(assert (=> b!7339882 (= e!4395139 call!669744)))

(declare-fun b!7339883 () Bool)

(assert (=> b!7339883 (= e!4395140 (as set.empty (Set Context!16092)))))

(declare-fun b!7339884 () Bool)

(assert (=> b!7339884 (= e!4395140 call!669744)))

(declare-fun b!7339885 () Bool)

(declare-fun e!4395142 () Bool)

(assert (=> b!7339885 (= c!1363266 e!4395142)))

(declare-fun res!2965363 () Bool)

(assert (=> b!7339885 (=> (not res!2965363) (not e!4395142))))

(assert (=> b!7339885 (= res!2965363 (is-Concat!27951 r1!2370))))

(declare-fun e!4395143 () (Set Context!16092))

(declare-fun e!4395138 () (Set Context!16092))

(assert (=> b!7339885 (= e!4395143 e!4395138)))

(declare-fun bm!669738 () Bool)

(declare-fun call!669743 () (Set Context!16092))

(assert (=> bm!669738 (= call!669743 call!669746)))

(declare-fun b!7339886 () Bool)

(assert (=> b!7339886 (= e!4395138 e!4395139)))

(assert (=> b!7339886 (= c!1363263 (is-Concat!27951 r1!2370))))

(declare-fun b!7339887 () Bool)

(declare-fun e!4395141 () (Set Context!16092))

(assert (=> b!7339887 (= e!4395141 (set.insert ct1!282 (as set.empty (Set Context!16092))))))

(declare-fun bm!669739 () Bool)

(assert (=> bm!669739 (= call!669744 call!669743)))

(declare-fun b!7339888 () Bool)

(declare-fun call!669742 () (Set Context!16092))

(assert (=> b!7339888 (= e!4395138 (set.union call!669742 call!669743))))

(declare-fun d!2278598 () Bool)

(declare-fun c!1363267 () Bool)

(assert (=> d!2278598 (= c!1363267 (and (is-ElementMatch!19106 r1!2370) (= (c!1363226 r1!2370) c!10362)))))

(assert (=> d!2278598 (= (derivationStepZipperDown!2932 r1!2370 ct1!282 c!10362) e!4395141)))

(declare-fun b!7339880 () Bool)

(assert (=> b!7339880 (= e!4395143 (set.union call!669746 call!669742))))

(declare-fun bm!669740 () Bool)

(assert (=> bm!669740 (= call!669741 call!669745)))

(declare-fun b!7339889 () Bool)

(assert (=> b!7339889 (= e!4395141 e!4395143)))

(assert (=> b!7339889 (= c!1363264 (is-Union!19106 r1!2370))))

(declare-fun b!7339890 () Bool)

(assert (=> b!7339890 (= e!4395142 (nullable!8201 (regOne!38724 r1!2370)))))

(declare-fun bm!669741 () Bool)

(assert (=> bm!669741 (= call!669742 (derivationStepZipperDown!2932 (ite c!1363264 (regTwo!38725 r1!2370) (regOne!38724 r1!2370)) (ite c!1363264 ct1!282 (Context!16093 call!669745)) c!10362))))

(assert (= (and d!2278598 c!1363267) b!7339887))

(assert (= (and d!2278598 (not c!1363267)) b!7339889))

(assert (= (and b!7339889 c!1363264) b!7339880))

(assert (= (and b!7339889 (not c!1363264)) b!7339885))

(assert (= (and b!7339885 res!2965363) b!7339890))

(assert (= (and b!7339885 c!1363266) b!7339888))

(assert (= (and b!7339885 (not c!1363266)) b!7339886))

(assert (= (and b!7339886 c!1363263) b!7339882))

(assert (= (and b!7339886 (not c!1363263)) b!7339881))

(assert (= (and b!7339881 c!1363265) b!7339884))

(assert (= (and b!7339881 (not c!1363265)) b!7339883))

(assert (= (or b!7339882 b!7339884) bm!669740))

(assert (= (or b!7339882 b!7339884) bm!669739))

(assert (= (or b!7339888 bm!669739) bm!669738))

(assert (= (or b!7339888 bm!669740) bm!669737))

(assert (= (or b!7339880 b!7339888) bm!669741))

(assert (= (or b!7339880 bm!669738) bm!669736))

(declare-fun m!8003980 () Bool)

(assert (=> bm!669736 m!8003980))

(declare-fun m!8003982 () Bool)

(assert (=> b!7339890 m!8003982))

(declare-fun m!8003984 () Bool)

(assert (=> bm!669741 m!8003984))

(declare-fun m!8003986 () Bool)

(assert (=> b!7339887 m!8003986))

(declare-fun m!8003988 () Bool)

(assert (=> bm!669737 m!8003988))

(assert (=> b!7339735 d!2278598))

(declare-fun c!1363269 () Bool)

(declare-fun call!669752 () (Set Context!16092))

(declare-fun call!669747 () List!71602)

(declare-fun bm!669742 () Bool)

(declare-fun c!1363268 () Bool)

(declare-fun c!1363271 () Bool)

(assert (=> bm!669742 (= call!669752 (derivationStepZipperDown!2932 (ite c!1363269 (regOne!38725 (regTwo!38725 r1!2370)) (ite c!1363271 (regTwo!38724 (regTwo!38725 r1!2370)) (ite c!1363268 (regOne!38724 (regTwo!38725 r1!2370)) (reg!19435 (regTwo!38725 r1!2370))))) (ite (or c!1363269 c!1363271) ct1!282 (Context!16093 call!669747)) c!10362))))

(declare-fun call!669751 () List!71602)

(declare-fun bm!669743 () Bool)

(assert (=> bm!669743 (= call!669751 ($colon$colon!3108 (exprs!8546 ct1!282) (ite (or c!1363271 c!1363268) (regTwo!38724 (regTwo!38725 r1!2370)) (regTwo!38725 r1!2370))))))

(declare-fun b!7339892 () Bool)

(declare-fun c!1363270 () Bool)

(assert (=> b!7339892 (= c!1363270 (is-Star!19106 (regTwo!38725 r1!2370)))))

(declare-fun e!4395145 () (Set Context!16092))

(declare-fun e!4395146 () (Set Context!16092))

(assert (=> b!7339892 (= e!4395145 e!4395146)))

(declare-fun b!7339893 () Bool)

(declare-fun call!669750 () (Set Context!16092))

(assert (=> b!7339893 (= e!4395145 call!669750)))

(declare-fun b!7339894 () Bool)

(assert (=> b!7339894 (= e!4395146 (as set.empty (Set Context!16092)))))

(declare-fun b!7339895 () Bool)

(assert (=> b!7339895 (= e!4395146 call!669750)))

(declare-fun b!7339896 () Bool)

(declare-fun e!4395148 () Bool)

(assert (=> b!7339896 (= c!1363271 e!4395148)))

(declare-fun res!2965364 () Bool)

(assert (=> b!7339896 (=> (not res!2965364) (not e!4395148))))

(assert (=> b!7339896 (= res!2965364 (is-Concat!27951 (regTwo!38725 r1!2370)))))

(declare-fun e!4395149 () (Set Context!16092))

(declare-fun e!4395144 () (Set Context!16092))

(assert (=> b!7339896 (= e!4395149 e!4395144)))

(declare-fun bm!669744 () Bool)

(declare-fun call!669749 () (Set Context!16092))

(assert (=> bm!669744 (= call!669749 call!669752)))

(declare-fun b!7339897 () Bool)

(assert (=> b!7339897 (= e!4395144 e!4395145)))

(assert (=> b!7339897 (= c!1363268 (is-Concat!27951 (regTwo!38725 r1!2370)))))

(declare-fun b!7339898 () Bool)

(declare-fun e!4395147 () (Set Context!16092))

(assert (=> b!7339898 (= e!4395147 (set.insert ct1!282 (as set.empty (Set Context!16092))))))

(declare-fun bm!669745 () Bool)

(assert (=> bm!669745 (= call!669750 call!669749)))

(declare-fun b!7339899 () Bool)

(declare-fun call!669748 () (Set Context!16092))

(assert (=> b!7339899 (= e!4395144 (set.union call!669748 call!669749))))

(declare-fun d!2278600 () Bool)

(declare-fun c!1363272 () Bool)

(assert (=> d!2278600 (= c!1363272 (and (is-ElementMatch!19106 (regTwo!38725 r1!2370)) (= (c!1363226 (regTwo!38725 r1!2370)) c!10362)))))

(assert (=> d!2278600 (= (derivationStepZipperDown!2932 (regTwo!38725 r1!2370) ct1!282 c!10362) e!4395147)))

(declare-fun b!7339891 () Bool)

(assert (=> b!7339891 (= e!4395149 (set.union call!669752 call!669748))))

(declare-fun bm!669746 () Bool)

(assert (=> bm!669746 (= call!669747 call!669751)))

(declare-fun b!7339900 () Bool)

(assert (=> b!7339900 (= e!4395147 e!4395149)))

(assert (=> b!7339900 (= c!1363269 (is-Union!19106 (regTwo!38725 r1!2370)))))

(declare-fun b!7339901 () Bool)

(assert (=> b!7339901 (= e!4395148 (nullable!8201 (regOne!38724 (regTwo!38725 r1!2370))))))

(declare-fun bm!669747 () Bool)

(assert (=> bm!669747 (= call!669748 (derivationStepZipperDown!2932 (ite c!1363269 (regTwo!38725 (regTwo!38725 r1!2370)) (regOne!38724 (regTwo!38725 r1!2370))) (ite c!1363269 ct1!282 (Context!16093 call!669751)) c!10362))))

(assert (= (and d!2278600 c!1363272) b!7339898))

(assert (= (and d!2278600 (not c!1363272)) b!7339900))

(assert (= (and b!7339900 c!1363269) b!7339891))

(assert (= (and b!7339900 (not c!1363269)) b!7339896))

(assert (= (and b!7339896 res!2965364) b!7339901))

(assert (= (and b!7339896 c!1363271) b!7339899))

(assert (= (and b!7339896 (not c!1363271)) b!7339897))

(assert (= (and b!7339897 c!1363268) b!7339893))

(assert (= (and b!7339897 (not c!1363268)) b!7339892))

(assert (= (and b!7339892 c!1363270) b!7339895))

(assert (= (and b!7339892 (not c!1363270)) b!7339894))

(assert (= (or b!7339893 b!7339895) bm!669746))

(assert (= (or b!7339893 b!7339895) bm!669745))

(assert (= (or b!7339899 bm!669745) bm!669744))

(assert (= (or b!7339899 bm!669746) bm!669743))

(assert (= (or b!7339891 b!7339899) bm!669747))

(assert (= (or b!7339891 bm!669744) bm!669742))

(declare-fun m!8003990 () Bool)

(assert (=> bm!669742 m!8003990))

(declare-fun m!8003992 () Bool)

(assert (=> b!7339901 m!8003992))

(declare-fun m!8003994 () Bool)

(assert (=> bm!669747 m!8003994))

(assert (=> b!7339898 m!8003986))

(declare-fun m!8003996 () Bool)

(assert (=> bm!669743 m!8003996))

(assert (=> b!7339741 d!2278600))

(declare-fun c!1363281 () Bool)

(declare-fun bm!669754 () Bool)

(declare-fun c!1363279 () Bool)

(declare-fun c!1363278 () Bool)

(declare-fun call!669764 () (Set Context!16092))

(declare-fun call!669759 () List!71602)

(assert (=> bm!669754 (= call!669764 (derivationStepZipperDown!2932 (ite c!1363279 (regOne!38725 (regOne!38725 r1!2370)) (ite c!1363281 (regTwo!38724 (regOne!38725 r1!2370)) (ite c!1363278 (regOne!38724 (regOne!38725 r1!2370)) (reg!19435 (regOne!38725 r1!2370))))) (ite (or c!1363279 c!1363281) ct1!282 (Context!16093 call!669759)) c!10362))))

(declare-fun call!669763 () List!71602)

(declare-fun bm!669755 () Bool)

(assert (=> bm!669755 (= call!669763 ($colon$colon!3108 (exprs!8546 ct1!282) (ite (or c!1363281 c!1363278) (regTwo!38724 (regOne!38725 r1!2370)) (regOne!38725 r1!2370))))))

(declare-fun b!7339914 () Bool)

(declare-fun c!1363280 () Bool)

(assert (=> b!7339914 (= c!1363280 (is-Star!19106 (regOne!38725 r1!2370)))))

(declare-fun e!4395157 () (Set Context!16092))

(declare-fun e!4395158 () (Set Context!16092))

(assert (=> b!7339914 (= e!4395157 e!4395158)))

(declare-fun b!7339915 () Bool)

(declare-fun call!669762 () (Set Context!16092))

(assert (=> b!7339915 (= e!4395157 call!669762)))

(declare-fun b!7339916 () Bool)

(assert (=> b!7339916 (= e!4395158 (as set.empty (Set Context!16092)))))

(declare-fun b!7339917 () Bool)

(assert (=> b!7339917 (= e!4395158 call!669762)))

(declare-fun b!7339918 () Bool)

(declare-fun e!4395160 () Bool)

(assert (=> b!7339918 (= c!1363281 e!4395160)))

(declare-fun res!2965366 () Bool)

(assert (=> b!7339918 (=> (not res!2965366) (not e!4395160))))

(assert (=> b!7339918 (= res!2965366 (is-Concat!27951 (regOne!38725 r1!2370)))))

(declare-fun e!4395161 () (Set Context!16092))

(declare-fun e!4395156 () (Set Context!16092))

(assert (=> b!7339918 (= e!4395161 e!4395156)))

(declare-fun bm!669756 () Bool)

(declare-fun call!669761 () (Set Context!16092))

(assert (=> bm!669756 (= call!669761 call!669764)))

(declare-fun b!7339919 () Bool)

(assert (=> b!7339919 (= e!4395156 e!4395157)))

(assert (=> b!7339919 (= c!1363278 (is-Concat!27951 (regOne!38725 r1!2370)))))

(declare-fun b!7339920 () Bool)

(declare-fun e!4395159 () (Set Context!16092))

(assert (=> b!7339920 (= e!4395159 (set.insert ct1!282 (as set.empty (Set Context!16092))))))

(declare-fun bm!669757 () Bool)

(assert (=> bm!669757 (= call!669762 call!669761)))

(declare-fun b!7339921 () Bool)

(declare-fun call!669760 () (Set Context!16092))

(assert (=> b!7339921 (= e!4395156 (set.union call!669760 call!669761))))

(declare-fun d!2278602 () Bool)

(declare-fun c!1363282 () Bool)

(assert (=> d!2278602 (= c!1363282 (and (is-ElementMatch!19106 (regOne!38725 r1!2370)) (= (c!1363226 (regOne!38725 r1!2370)) c!10362)))))

(assert (=> d!2278602 (= (derivationStepZipperDown!2932 (regOne!38725 r1!2370) ct1!282 c!10362) e!4395159)))

(declare-fun b!7339913 () Bool)

(assert (=> b!7339913 (= e!4395161 (set.union call!669764 call!669760))))

(declare-fun bm!669758 () Bool)

(assert (=> bm!669758 (= call!669759 call!669763)))

(declare-fun b!7339922 () Bool)

(assert (=> b!7339922 (= e!4395159 e!4395161)))

(assert (=> b!7339922 (= c!1363279 (is-Union!19106 (regOne!38725 r1!2370)))))

(declare-fun b!7339923 () Bool)

(assert (=> b!7339923 (= e!4395160 (nullable!8201 (regOne!38724 (regOne!38725 r1!2370))))))

(declare-fun bm!669759 () Bool)

(assert (=> bm!669759 (= call!669760 (derivationStepZipperDown!2932 (ite c!1363279 (regTwo!38725 (regOne!38725 r1!2370)) (regOne!38724 (regOne!38725 r1!2370))) (ite c!1363279 ct1!282 (Context!16093 call!669763)) c!10362))))

(assert (= (and d!2278602 c!1363282) b!7339920))

(assert (= (and d!2278602 (not c!1363282)) b!7339922))

(assert (= (and b!7339922 c!1363279) b!7339913))

(assert (= (and b!7339922 (not c!1363279)) b!7339918))

(assert (= (and b!7339918 res!2965366) b!7339923))

(assert (= (and b!7339918 c!1363281) b!7339921))

(assert (= (and b!7339918 (not c!1363281)) b!7339919))

(assert (= (and b!7339919 c!1363278) b!7339915))

(assert (= (and b!7339919 (not c!1363278)) b!7339914))

(assert (= (and b!7339914 c!1363280) b!7339917))

(assert (= (and b!7339914 (not c!1363280)) b!7339916))

(assert (= (or b!7339915 b!7339917) bm!669758))

(assert (= (or b!7339915 b!7339917) bm!669757))

(assert (= (or b!7339921 bm!669757) bm!669756))

(assert (= (or b!7339921 bm!669758) bm!669755))

(assert (= (or b!7339913 b!7339921) bm!669759))

(assert (= (or b!7339913 bm!669756) bm!669754))

(declare-fun m!8003998 () Bool)

(assert (=> bm!669754 m!8003998))

(assert (=> b!7339923 m!8003972))

(declare-fun m!8004000 () Bool)

(assert (=> bm!669759 m!8004000))

(assert (=> b!7339920 m!8003986))

(declare-fun m!8004002 () Bool)

(assert (=> bm!669755 m!8004002))

(assert (=> b!7339741 d!2278602))

(declare-fun c!1363283 () Bool)

(declare-fun call!669765 () List!71602)

(declare-fun call!669770 () (Set Context!16092))

(declare-fun c!1363284 () Bool)

(declare-fun bm!669760 () Bool)

(declare-fun c!1363286 () Bool)

(assert (=> bm!669760 (= call!669770 (derivationStepZipperDown!2932 (ite c!1363284 (regOne!38725 r1!2370) (ite c!1363286 (regTwo!38724 r1!2370) (ite c!1363283 (regOne!38724 r1!2370) (reg!19435 r1!2370)))) (ite (or c!1363284 c!1363286) lt!2609773 (Context!16093 call!669765)) c!10362))))

(declare-fun call!669769 () List!71602)

(declare-fun bm!669761 () Bool)

(assert (=> bm!669761 (= call!669769 ($colon$colon!3108 (exprs!8546 lt!2609773) (ite (or c!1363286 c!1363283) (regTwo!38724 r1!2370) r1!2370)))))

(declare-fun b!7339925 () Bool)

(declare-fun c!1363285 () Bool)

(assert (=> b!7339925 (= c!1363285 (is-Star!19106 r1!2370))))

(declare-fun e!4395163 () (Set Context!16092))

(declare-fun e!4395164 () (Set Context!16092))

(assert (=> b!7339925 (= e!4395163 e!4395164)))

(declare-fun b!7339926 () Bool)

(declare-fun call!669768 () (Set Context!16092))

(assert (=> b!7339926 (= e!4395163 call!669768)))

(declare-fun b!7339927 () Bool)

(assert (=> b!7339927 (= e!4395164 (as set.empty (Set Context!16092)))))

(declare-fun b!7339928 () Bool)

(assert (=> b!7339928 (= e!4395164 call!669768)))

(declare-fun b!7339929 () Bool)

(declare-fun e!4395166 () Bool)

(assert (=> b!7339929 (= c!1363286 e!4395166)))

(declare-fun res!2965367 () Bool)

(assert (=> b!7339929 (=> (not res!2965367) (not e!4395166))))

(assert (=> b!7339929 (= res!2965367 (is-Concat!27951 r1!2370))))

(declare-fun e!4395167 () (Set Context!16092))

(declare-fun e!4395162 () (Set Context!16092))

(assert (=> b!7339929 (= e!4395167 e!4395162)))

(declare-fun bm!669762 () Bool)

(declare-fun call!669767 () (Set Context!16092))

(assert (=> bm!669762 (= call!669767 call!669770)))

(declare-fun b!7339930 () Bool)

(assert (=> b!7339930 (= e!4395162 e!4395163)))

(assert (=> b!7339930 (= c!1363283 (is-Concat!27951 r1!2370))))

(declare-fun b!7339931 () Bool)

(declare-fun e!4395165 () (Set Context!16092))

(assert (=> b!7339931 (= e!4395165 (set.insert lt!2609773 (as set.empty (Set Context!16092))))))

(declare-fun bm!669763 () Bool)

(assert (=> bm!669763 (= call!669768 call!669767)))

(declare-fun b!7339932 () Bool)

(declare-fun call!669766 () (Set Context!16092))

(assert (=> b!7339932 (= e!4395162 (set.union call!669766 call!669767))))

(declare-fun d!2278604 () Bool)

(declare-fun c!1363287 () Bool)

(assert (=> d!2278604 (= c!1363287 (and (is-ElementMatch!19106 r1!2370) (= (c!1363226 r1!2370) c!10362)))))

(assert (=> d!2278604 (= (derivationStepZipperDown!2932 r1!2370 lt!2609773 c!10362) e!4395165)))

(declare-fun b!7339924 () Bool)

(assert (=> b!7339924 (= e!4395167 (set.union call!669770 call!669766))))

(declare-fun bm!669764 () Bool)

(assert (=> bm!669764 (= call!669765 call!669769)))

(declare-fun b!7339933 () Bool)

(assert (=> b!7339933 (= e!4395165 e!4395167)))

(assert (=> b!7339933 (= c!1363284 (is-Union!19106 r1!2370))))

(declare-fun b!7339934 () Bool)

(assert (=> b!7339934 (= e!4395166 (nullable!8201 (regOne!38724 r1!2370)))))

(declare-fun bm!669765 () Bool)

(assert (=> bm!669765 (= call!669766 (derivationStepZipperDown!2932 (ite c!1363284 (regTwo!38725 r1!2370) (regOne!38724 r1!2370)) (ite c!1363284 lt!2609773 (Context!16093 call!669769)) c!10362))))

(assert (= (and d!2278604 c!1363287) b!7339931))

(assert (= (and d!2278604 (not c!1363287)) b!7339933))

(assert (= (and b!7339933 c!1363284) b!7339924))

(assert (= (and b!7339933 (not c!1363284)) b!7339929))

(assert (= (and b!7339929 res!2965367) b!7339934))

(assert (= (and b!7339929 c!1363286) b!7339932))

(assert (= (and b!7339929 (not c!1363286)) b!7339930))

(assert (= (and b!7339930 c!1363283) b!7339926))

(assert (= (and b!7339930 (not c!1363283)) b!7339925))

(assert (= (and b!7339925 c!1363285) b!7339928))

(assert (= (and b!7339925 (not c!1363285)) b!7339927))

(assert (= (or b!7339926 b!7339928) bm!669764))

(assert (= (or b!7339926 b!7339928) bm!669763))

(assert (= (or b!7339932 bm!669763) bm!669762))

(assert (= (or b!7339932 bm!669764) bm!669761))

(assert (= (or b!7339924 b!7339932) bm!669765))

(assert (= (or b!7339924 bm!669762) bm!669760))

(declare-fun m!8004014 () Bool)

(assert (=> bm!669760 m!8004014))

(assert (=> b!7339934 m!8003982))

(declare-fun m!8004016 () Bool)

(assert (=> bm!669765 m!8004016))

(assert (=> b!7339931 m!8003976))

(declare-fun m!8004018 () Bool)

(assert (=> bm!669761 m!8004018))

(assert (=> b!7339742 d!2278604))

(declare-fun b!7339948 () Bool)

(declare-fun res!2965370 () Bool)

(declare-fun e!4395174 () Bool)

(assert (=> b!7339948 (=> (not res!2965370) (not e!4395174))))

(declare-fun lt!2609816 () List!71602)

(assert (=> b!7339948 (= res!2965370 (= (size!42002 lt!2609816) (+ (size!42002 (exprs!8546 ct1!282)) (size!42002 (exprs!8546 ct2!378)))))))

(declare-fun b!7339947 () Bool)

(declare-fun e!4395175 () List!71602)

(assert (=> b!7339947 (= e!4395175 (Cons!71478 (h!77926 (exprs!8546 ct1!282)) (++!16924 (t!385997 (exprs!8546 ct1!282)) (exprs!8546 ct2!378))))))

(declare-fun b!7339946 () Bool)

(assert (=> b!7339946 (= e!4395175 (exprs!8546 ct2!378))))

(declare-fun b!7339949 () Bool)

(assert (=> b!7339949 (= e!4395174 (or (not (= (exprs!8546 ct2!378) Nil!71478)) (= lt!2609816 (exprs!8546 ct1!282))))))

(declare-fun d!2278608 () Bool)

(assert (=> d!2278608 e!4395174))

(declare-fun res!2965369 () Bool)

(assert (=> d!2278608 (=> (not res!2965369) (not e!4395174))))

(assert (=> d!2278608 (= res!2965369 (= (content!15023 lt!2609816) (set.union (content!15023 (exprs!8546 ct1!282)) (content!15023 (exprs!8546 ct2!378)))))))

(assert (=> d!2278608 (= lt!2609816 e!4395175)))

(declare-fun c!1363293 () Bool)

(assert (=> d!2278608 (= c!1363293 (is-Nil!71478 (exprs!8546 ct1!282)))))

(assert (=> d!2278608 (= (++!16924 (exprs!8546 ct1!282) (exprs!8546 ct2!378)) lt!2609816)))

(assert (= (and d!2278608 c!1363293) b!7339946))

(assert (= (and d!2278608 (not c!1363293)) b!7339947))

(assert (= (and d!2278608 res!2965369) b!7339948))

(assert (= (and b!7339948 res!2965370) b!7339949))

(declare-fun m!8004020 () Bool)

(assert (=> b!7339948 m!8004020))

(declare-fun m!8004022 () Bool)

(assert (=> b!7339948 m!8004022))

(assert (=> b!7339948 m!8003952))

(declare-fun m!8004024 () Bool)

(assert (=> b!7339947 m!8004024))

(declare-fun m!8004026 () Bool)

(assert (=> d!2278608 m!8004026))

(declare-fun m!8004028 () Bool)

(assert (=> d!2278608 m!8004028))

(assert (=> d!2278608 m!8003960))

(assert (=> b!7339742 d!2278608))

(assert (=> b!7339742 d!2278582))

(declare-fun bm!669778 () Bool)

(declare-fun call!669784 () Bool)

(declare-fun call!669785 () Bool)

(assert (=> bm!669778 (= call!669784 call!669785)))

(declare-fun bm!669779 () Bool)

(declare-fun c!1363299 () Bool)

(declare-fun c!1363298 () Bool)

(assert (=> bm!669779 (= call!669785 (validRegex!9702 (ite c!1363298 (reg!19435 r1!2370) (ite c!1363299 (regOne!38725 r1!2370) (regTwo!38724 r1!2370)))))))

(declare-fun b!7339968 () Bool)

(declare-fun e!4395196 () Bool)

(assert (=> b!7339968 (= e!4395196 call!669785)))

(declare-fun b!7339969 () Bool)

(declare-fun e!4395190 () Bool)

(declare-fun call!669783 () Bool)

(assert (=> b!7339969 (= e!4395190 call!669783)))

(declare-fun b!7339970 () Bool)

(declare-fun e!4395195 () Bool)

(assert (=> b!7339970 (= e!4395195 call!669784)))

(declare-fun bm!669780 () Bool)

(assert (=> bm!669780 (= call!669783 (validRegex!9702 (ite c!1363299 (regTwo!38725 r1!2370) (regOne!38724 r1!2370))))))

(declare-fun d!2278610 () Bool)

(declare-fun res!2965381 () Bool)

(declare-fun e!4395194 () Bool)

(assert (=> d!2278610 (=> res!2965381 e!4395194)))

(assert (=> d!2278610 (= res!2965381 (is-ElementMatch!19106 r1!2370))))

(assert (=> d!2278610 (= (validRegex!9702 r1!2370) e!4395194)))

(declare-fun b!7339971 () Bool)

(declare-fun res!2965382 () Bool)

(declare-fun e!4395193 () Bool)

(assert (=> b!7339971 (=> res!2965382 e!4395193)))

(assert (=> b!7339971 (= res!2965382 (not (is-Concat!27951 r1!2370)))))

(declare-fun e!4395192 () Bool)

(assert (=> b!7339971 (= e!4395192 e!4395193)))

(declare-fun b!7339972 () Bool)

(declare-fun e!4395191 () Bool)

(assert (=> b!7339972 (= e!4395191 e!4395196)))

(declare-fun res!2965384 () Bool)

(assert (=> b!7339972 (= res!2965384 (not (nullable!8201 (reg!19435 r1!2370))))))

(assert (=> b!7339972 (=> (not res!2965384) (not e!4395196))))

(declare-fun b!7339973 () Bool)

(declare-fun res!2965383 () Bool)

(assert (=> b!7339973 (=> (not res!2965383) (not e!4395190))))

(assert (=> b!7339973 (= res!2965383 call!669784)))

(assert (=> b!7339973 (= e!4395192 e!4395190)))

(declare-fun b!7339974 () Bool)

(assert (=> b!7339974 (= e!4395191 e!4395192)))

(assert (=> b!7339974 (= c!1363299 (is-Union!19106 r1!2370))))

(declare-fun b!7339975 () Bool)

(assert (=> b!7339975 (= e!4395193 e!4395195)))

(declare-fun res!2965385 () Bool)

(assert (=> b!7339975 (=> (not res!2965385) (not e!4395195))))

(assert (=> b!7339975 (= res!2965385 call!669783)))

(declare-fun b!7339976 () Bool)

(assert (=> b!7339976 (= e!4395194 e!4395191)))

(assert (=> b!7339976 (= c!1363298 (is-Star!19106 r1!2370))))

(assert (= (and d!2278610 (not res!2965381)) b!7339976))

(assert (= (and b!7339976 c!1363298) b!7339972))

(assert (= (and b!7339976 (not c!1363298)) b!7339974))

(assert (= (and b!7339972 res!2965384) b!7339968))

(assert (= (and b!7339974 c!1363299) b!7339973))

(assert (= (and b!7339974 (not c!1363299)) b!7339971))

(assert (= (and b!7339973 res!2965383) b!7339969))

(assert (= (and b!7339971 (not res!2965382)) b!7339975))

(assert (= (and b!7339975 res!2965385) b!7339970))

(assert (= (or b!7339973 b!7339970) bm!669778))

(assert (= (or b!7339969 b!7339975) bm!669780))

(assert (= (or b!7339968 bm!669778) bm!669779))

(declare-fun m!8004038 () Bool)

(assert (=> bm!669779 m!8004038))

(declare-fun m!8004040 () Bool)

(assert (=> bm!669780 m!8004040))

(declare-fun m!8004042 () Bool)

(assert (=> b!7339972 m!8004042))

(assert (=> start!716906 d!2278610))

(declare-fun bs!1918321 () Bool)

(declare-fun d!2278614 () Bool)

(assert (= bs!1918321 (and d!2278614 b!7339742)))

(declare-fun lambda!455504 () Int)

(assert (=> bs!1918321 (= lambda!455504 lambda!455482)))

(declare-fun bs!1918322 () Bool)

(assert (= bs!1918322 (and d!2278614 d!2278578)))

(assert (=> bs!1918322 (= lambda!455504 lambda!455496)))

(assert (=> d!2278614 (= (inv!91106 cWitness!61) (forall!17938 (exprs!8546 cWitness!61) lambda!455504))))

(declare-fun bs!1918323 () Bool)

(assert (= bs!1918323 d!2278614))

(declare-fun m!8004044 () Bool)

(assert (=> bs!1918323 m!8004044))

(assert (=> start!716906 d!2278614))

(declare-fun bs!1918324 () Bool)

(declare-fun d!2278616 () Bool)

(assert (= bs!1918324 (and d!2278616 b!7339742)))

(declare-fun lambda!455505 () Int)

(assert (=> bs!1918324 (= lambda!455505 lambda!455482)))

(declare-fun bs!1918325 () Bool)

(assert (= bs!1918325 (and d!2278616 d!2278578)))

(assert (=> bs!1918325 (= lambda!455505 lambda!455496)))

(declare-fun bs!1918326 () Bool)

(assert (= bs!1918326 (and d!2278616 d!2278614)))

(assert (=> bs!1918326 (= lambda!455505 lambda!455504)))

(assert (=> d!2278616 (= (inv!91106 ct1!282) (forall!17938 (exprs!8546 ct1!282) lambda!455505))))

(declare-fun bs!1918327 () Bool)

(assert (= bs!1918327 d!2278616))

(declare-fun m!8004046 () Bool)

(assert (=> bs!1918327 m!8004046))

(assert (=> start!716906 d!2278616))

(declare-fun bs!1918328 () Bool)

(declare-fun d!2278618 () Bool)

(assert (= bs!1918328 (and d!2278618 b!7339742)))

(declare-fun lambda!455506 () Int)

(assert (=> bs!1918328 (= lambda!455506 lambda!455482)))

(declare-fun bs!1918329 () Bool)

(assert (= bs!1918329 (and d!2278618 d!2278578)))

(assert (=> bs!1918329 (= lambda!455506 lambda!455496)))

(declare-fun bs!1918330 () Bool)

(assert (= bs!1918330 (and d!2278618 d!2278614)))

(assert (=> bs!1918330 (= lambda!455506 lambda!455504)))

(declare-fun bs!1918331 () Bool)

(assert (= bs!1918331 (and d!2278618 d!2278616)))

(assert (=> bs!1918331 (= lambda!455506 lambda!455505)))

(assert (=> d!2278618 (= (inv!91106 ct2!378) (forall!17938 (exprs!8546 ct2!378) lambda!455506))))

(declare-fun bs!1918332 () Bool)

(assert (= bs!1918332 d!2278618))

(declare-fun m!8004048 () Bool)

(assert (=> bs!1918332 m!8004048))

(assert (=> start!716906 d!2278618))

(declare-fun b!7339991 () Bool)

(declare-fun e!4395205 () Bool)

(declare-fun tp!2084110 () Bool)

(declare-fun tp!2084111 () Bool)

(assert (=> b!7339991 (= e!4395205 (and tp!2084110 tp!2084111))))

(assert (=> b!7339733 (= tp!2084078 e!4395205)))

(assert (= (and b!7339733 (is-Cons!71478 (exprs!8546 cWitness!61))) b!7339991))

(declare-fun b!7340006 () Bool)

(declare-fun e!4395208 () Bool)

(declare-fun tp!2084122 () Bool)

(assert (=> b!7340006 (= e!4395208 tp!2084122)))

(assert (=> b!7339739 (= tp!2084080 e!4395208)))

(declare-fun b!7340005 () Bool)

(declare-fun tp!2084124 () Bool)

(declare-fun tp!2084126 () Bool)

(assert (=> b!7340005 (= e!4395208 (and tp!2084124 tp!2084126))))

(declare-fun b!7340004 () Bool)

(assert (=> b!7340004 (= e!4395208 tp_is_empty!48457)))

(declare-fun b!7340007 () Bool)

(declare-fun tp!2084123 () Bool)

(declare-fun tp!2084125 () Bool)

(assert (=> b!7340007 (= e!4395208 (and tp!2084123 tp!2084125))))

(assert (= (and b!7339739 (is-ElementMatch!19106 (reg!19435 r1!2370))) b!7340004))

(assert (= (and b!7339739 (is-Concat!27951 (reg!19435 r1!2370))) b!7340005))

(assert (= (and b!7339739 (is-Star!19106 (reg!19435 r1!2370))) b!7340006))

(assert (= (and b!7339739 (is-Union!19106 (reg!19435 r1!2370))) b!7340007))

(declare-fun b!7340008 () Bool)

(declare-fun e!4395209 () Bool)

(declare-fun tp!2084127 () Bool)

(declare-fun tp!2084128 () Bool)

(assert (=> b!7340008 (= e!4395209 (and tp!2084127 tp!2084128))))

(assert (=> b!7339734 (= tp!2084079 e!4395209)))

(assert (= (and b!7339734 (is-Cons!71478 (exprs!8546 ct2!378))) b!7340008))

(declare-fun b!7340009 () Bool)

(declare-fun e!4395210 () Bool)

(declare-fun tp!2084129 () Bool)

(declare-fun tp!2084130 () Bool)

(assert (=> b!7340009 (= e!4395210 (and tp!2084129 tp!2084130))))

(assert (=> b!7339740 (= tp!2084076 e!4395210)))

(assert (= (and b!7339740 (is-Cons!71478 (exprs!8546 ct1!282))) b!7340009))

(declare-fun b!7340012 () Bool)

(declare-fun e!4395211 () Bool)

(declare-fun tp!2084131 () Bool)

(assert (=> b!7340012 (= e!4395211 tp!2084131)))

(assert (=> b!7339736 (= tp!2084081 e!4395211)))

(declare-fun b!7340011 () Bool)

(declare-fun tp!2084133 () Bool)

(declare-fun tp!2084135 () Bool)

(assert (=> b!7340011 (= e!4395211 (and tp!2084133 tp!2084135))))

(declare-fun b!7340010 () Bool)

(assert (=> b!7340010 (= e!4395211 tp_is_empty!48457)))

(declare-fun b!7340013 () Bool)

(declare-fun tp!2084132 () Bool)

(declare-fun tp!2084134 () Bool)

(assert (=> b!7340013 (= e!4395211 (and tp!2084132 tp!2084134))))

(assert (= (and b!7339736 (is-ElementMatch!19106 (regOne!38724 r1!2370))) b!7340010))

(assert (= (and b!7339736 (is-Concat!27951 (regOne!38724 r1!2370))) b!7340011))

(assert (= (and b!7339736 (is-Star!19106 (regOne!38724 r1!2370))) b!7340012))

(assert (= (and b!7339736 (is-Union!19106 (regOne!38724 r1!2370))) b!7340013))

(declare-fun b!7340016 () Bool)

(declare-fun e!4395212 () Bool)

(declare-fun tp!2084136 () Bool)

(assert (=> b!7340016 (= e!4395212 tp!2084136)))

(assert (=> b!7339736 (= tp!2084077 e!4395212)))

(declare-fun b!7340015 () Bool)

(declare-fun tp!2084138 () Bool)

(declare-fun tp!2084140 () Bool)

(assert (=> b!7340015 (= e!4395212 (and tp!2084138 tp!2084140))))

(declare-fun b!7340014 () Bool)

(assert (=> b!7340014 (= e!4395212 tp_is_empty!48457)))

(declare-fun b!7340017 () Bool)

(declare-fun tp!2084137 () Bool)

(declare-fun tp!2084139 () Bool)

(assert (=> b!7340017 (= e!4395212 (and tp!2084137 tp!2084139))))

(assert (= (and b!7339736 (is-ElementMatch!19106 (regTwo!38724 r1!2370))) b!7340014))

(assert (= (and b!7339736 (is-Concat!27951 (regTwo!38724 r1!2370))) b!7340015))

(assert (= (and b!7339736 (is-Star!19106 (regTwo!38724 r1!2370))) b!7340016))

(assert (= (and b!7339736 (is-Union!19106 (regTwo!38724 r1!2370))) b!7340017))

(declare-fun b!7340020 () Bool)

(declare-fun e!4395213 () Bool)

(declare-fun tp!2084141 () Bool)

(assert (=> b!7340020 (= e!4395213 tp!2084141)))

(assert (=> b!7339737 (= tp!2084075 e!4395213)))

(declare-fun b!7340019 () Bool)

(declare-fun tp!2084143 () Bool)

(declare-fun tp!2084145 () Bool)

(assert (=> b!7340019 (= e!4395213 (and tp!2084143 tp!2084145))))

(declare-fun b!7340018 () Bool)

(assert (=> b!7340018 (= e!4395213 tp_is_empty!48457)))

(declare-fun b!7340021 () Bool)

(declare-fun tp!2084142 () Bool)

(declare-fun tp!2084144 () Bool)

(assert (=> b!7340021 (= e!4395213 (and tp!2084142 tp!2084144))))

(assert (= (and b!7339737 (is-ElementMatch!19106 (regOne!38725 r1!2370))) b!7340018))

(assert (= (and b!7339737 (is-Concat!27951 (regOne!38725 r1!2370))) b!7340019))

(assert (= (and b!7339737 (is-Star!19106 (regOne!38725 r1!2370))) b!7340020))

(assert (= (and b!7339737 (is-Union!19106 (regOne!38725 r1!2370))) b!7340021))

(declare-fun b!7340024 () Bool)

(declare-fun e!4395214 () Bool)

(declare-fun tp!2084146 () Bool)

(assert (=> b!7340024 (= e!4395214 tp!2084146)))

(assert (=> b!7339737 (= tp!2084074 e!4395214)))

(declare-fun b!7340023 () Bool)

(declare-fun tp!2084148 () Bool)

(declare-fun tp!2084150 () Bool)

(assert (=> b!7340023 (= e!4395214 (and tp!2084148 tp!2084150))))

(declare-fun b!7340022 () Bool)

(assert (=> b!7340022 (= e!4395214 tp_is_empty!48457)))

(declare-fun b!7340025 () Bool)

(declare-fun tp!2084147 () Bool)

(declare-fun tp!2084149 () Bool)

(assert (=> b!7340025 (= e!4395214 (and tp!2084147 tp!2084149))))

(assert (= (and b!7339737 (is-ElementMatch!19106 (regTwo!38725 r1!2370))) b!7340022))

(assert (= (and b!7339737 (is-Concat!27951 (regTwo!38725 r1!2370))) b!7340023))

(assert (= (and b!7339737 (is-Star!19106 (regTwo!38725 r1!2370))) b!7340024))

(assert (= (and b!7339737 (is-Union!19106 (regTwo!38725 r1!2370))) b!7340025))

(declare-fun b_lambda!283837 () Bool)

(assert (= b_lambda!283835 (or b!7339742 b_lambda!283837)))

(declare-fun bs!1918333 () Bool)

(declare-fun d!2278622 () Bool)

(assert (= bs!1918333 (and d!2278622 b!7339742)))

(assert (=> bs!1918333 (= (dynLambda!29446 lambda!455482 (h!77926 (exprs!8546 cWitness!61))) (validRegex!9702 (h!77926 (exprs!8546 cWitness!61))))))

(declare-fun m!8004064 () Bool)

(assert (=> bs!1918333 m!8004064))

(assert (=> b!7339823 d!2278622))

(push 1)

(assert (not b!7339879))

(assert (not bm!669761))

(assert (not b!7340008))

(assert (not bm!669760))

(assert (not d!2278582))

(assert (not b!7340015))

(assert (not bm!669779))

(assert (not b!7340017))

(assert (not bm!669736))

(assert (not d!2278614))

(assert (not b!7339972))

(assert (not bm!669765))

(assert (not bs!1918333))

(assert (not d!2278618))

(assert (not bm!669755))

(assert tp_is_empty!48457)

(assert (not b!7340006))

(assert (not b_lambda!283837))

(assert (not b!7340021))

(assert (not bm!669759))

(assert (not b!7339890))

(assert (not b!7340020))

(assert (not bm!669741))

(assert (not b!7340012))

(assert (not bm!669735))

(assert (not b!7340019))

(assert (not b!7340024))

(assert (not b!7340011))

(assert (not b!7340007))

(assert (not bm!669747))

(assert (not b!7339817))

(assert (not bm!669731))

(assert (not b!7339824))

(assert (not b!7340016))

(assert (not d!2278616))

(assert (not b!7340009))

(assert (not bm!669743))

(assert (not b!7339947))

(assert (not bm!669737))

(assert (not d!2278608))

(assert (not bm!669730))

(assert (not d!2278594))

(assert (not bm!669742))

(assert (not bm!669780))

(assert (not b!7340005))

(assert (not b!7339901))

(assert (not b!7339816))

(assert (not b!7340025))

(assert (not b!7339923))

(assert (not b!7340013))

(assert (not b!7339948))

(assert (not d!2278586))

(assert (not bm!669754))

(assert (not d!2278578))

(assert (not b!7340023))

(assert (not b!7339934))

(assert (not b!7339991))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

