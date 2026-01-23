; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716586 () Bool)

(assert start!716586)

(declare-fun b!7335770 () Bool)

(declare-fun res!2964179 () Bool)

(declare-fun e!4392717 () Bool)

(assert (=> b!7335770 (=> (not res!2964179) (not e!4392717))))

(declare-datatypes ((C!38430 0))(
  ( (C!38431 (val!29575 Int)) )
))
(declare-fun c!10362 () C!38430)

(declare-datatypes ((Regex!19078 0))(
  ( (ElementMatch!19078 (c!1362518 C!38430)) (Concat!27923 (regOne!38668 Regex!19078) (regTwo!38668 Regex!19078)) (EmptyExpr!19078) (Star!19078 (reg!19407 Regex!19078)) (EmptyLang!19078) (Union!19078 (regOne!38669 Regex!19078) (regTwo!38669 Regex!19078)) )
))
(declare-datatypes ((List!71574 0))(
  ( (Nil!71450) (Cons!71450 (h!77898 Regex!19078) (t!385969 List!71574)) )
))
(declare-datatypes ((Context!16036 0))(
  ( (Context!16037 (exprs!8518 List!71574)) )
))
(declare-fun cWitness!61 () Context!16036)

(declare-fun ct1!282 () Context!16036)

(declare-fun r1!2370 () Regex!19078)

(declare-fun derivationStepZipperDown!2904 (Regex!19078 Context!16036 C!38430) (Set Context!16036))

(assert (=> b!7335770 (= res!2964179 (set.member cWitness!61 (derivationStepZipperDown!2904 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7335771 () Bool)

(declare-fun e!4392718 () Bool)

(declare-fun tp!2082334 () Bool)

(declare-fun tp!2082331 () Bool)

(assert (=> b!7335771 (= e!4392718 (and tp!2082334 tp!2082331))))

(declare-fun b!7335772 () Bool)

(declare-fun tp!2082335 () Bool)

(declare-fun tp!2082332 () Bool)

(assert (=> b!7335772 (= e!4392718 (and tp!2082335 tp!2082332))))

(declare-fun b!7335773 () Bool)

(declare-fun tp!2082333 () Bool)

(assert (=> b!7335773 (= e!4392718 tp!2082333)))

(declare-fun res!2964180 () Bool)

(assert (=> start!716586 (=> (not res!2964180) (not e!4392717))))

(declare-fun validRegex!9674 (Regex!19078) Bool)

(assert (=> start!716586 (= res!2964180 (validRegex!9674 r1!2370))))

(assert (=> start!716586 e!4392717))

(assert (=> start!716586 e!4392718))

(declare-fun e!4392719 () Bool)

(declare-fun inv!91036 (Context!16036) Bool)

(assert (=> start!716586 (and (inv!91036 cWitness!61) e!4392719)))

(declare-fun e!4392720 () Bool)

(assert (=> start!716586 (and (inv!91036 ct1!282) e!4392720)))

(declare-fun tp_is_empty!48401 () Bool)

(assert (=> start!716586 tp_is_empty!48401))

(declare-fun b!7335774 () Bool)

(declare-fun lambda!455194 () Int)

(declare-fun forall!17914 (List!71574 Int) Bool)

(assert (=> b!7335774 (= e!4392717 (not (forall!17914 (exprs!8518 ct1!282) lambda!455194)))))

(declare-fun b!7335775 () Bool)

(declare-fun tp!2082336 () Bool)

(assert (=> b!7335775 (= e!4392719 tp!2082336)))

(declare-fun b!7335776 () Bool)

(declare-fun tp!2082330 () Bool)

(assert (=> b!7335776 (= e!4392720 tp!2082330)))

(declare-fun b!7335777 () Bool)

(assert (=> b!7335777 (= e!4392718 tp_is_empty!48401)))

(assert (= (and start!716586 res!2964180) b!7335770))

(assert (= (and b!7335770 res!2964179) b!7335774))

(assert (= (and start!716586 (is-ElementMatch!19078 r1!2370)) b!7335777))

(assert (= (and start!716586 (is-Concat!27923 r1!2370)) b!7335772))

(assert (= (and start!716586 (is-Star!19078 r1!2370)) b!7335773))

(assert (= (and start!716586 (is-Union!19078 r1!2370)) b!7335771))

(assert (= start!716586 b!7335775))

(assert (= start!716586 b!7335776))

(declare-fun m!8001826 () Bool)

(assert (=> b!7335770 m!8001826))

(declare-fun m!8001828 () Bool)

(assert (=> b!7335770 m!8001828))

(declare-fun m!8001830 () Bool)

(assert (=> start!716586 m!8001830))

(declare-fun m!8001832 () Bool)

(assert (=> start!716586 m!8001832))

(declare-fun m!8001834 () Bool)

(assert (=> start!716586 m!8001834))

(declare-fun m!8001836 () Bool)

(assert (=> b!7335774 m!8001836))

(push 1)

(assert (not b!7335775))

(assert (not b!7335772))

(assert (not b!7335771))

(assert (not start!716586))

(assert (not b!7335773))

(assert tp_is_empty!48401)

(assert (not b!7335770))

(assert (not b!7335774))

(assert (not b!7335776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7335842 () Bool)

(declare-fun e!4392760 () (Set Context!16036))

(declare-fun call!668941 () (Set Context!16036))

(declare-fun call!668945 () (Set Context!16036))

(assert (=> b!7335842 (= e!4392760 (set.union call!668941 call!668945))))

(declare-fun call!668942 () List!71574)

(declare-fun c!1362537 () Bool)

(declare-fun c!1362534 () Bool)

(declare-fun c!1362538 () Bool)

(declare-fun bm!668935 () Bool)

(assert (=> bm!668935 (= call!668945 (derivationStepZipperDown!2904 (ite c!1362534 (regTwo!38669 r1!2370) (ite c!1362538 (regTwo!38668 r1!2370) (ite c!1362537 (regOne!38668 r1!2370) (reg!19407 r1!2370)))) (ite (or c!1362534 c!1362538) ct1!282 (Context!16037 call!668942)) c!10362))))

(declare-fun b!7335843 () Bool)

(declare-fun e!4392763 () (Set Context!16036))

(assert (=> b!7335843 (= e!4392763 e!4392760)))

(assert (=> b!7335843 (= c!1362534 (is-Union!19078 r1!2370))))

(declare-fun b!7335844 () Bool)

(declare-fun e!4392761 () (Set Context!16036))

(declare-fun call!668944 () (Set Context!16036))

(assert (=> b!7335844 (= e!4392761 call!668944)))

(declare-fun bm!668936 () Bool)

(declare-fun call!668943 () List!71574)

(assert (=> bm!668936 (= call!668941 (derivationStepZipperDown!2904 (ite c!1362534 (regOne!38669 r1!2370) (regOne!38668 r1!2370)) (ite c!1362534 ct1!282 (Context!16037 call!668943)) c!10362))))

(declare-fun bm!668937 () Bool)

(declare-fun $colon$colon!3085 (List!71574 Regex!19078) List!71574)

(assert (=> bm!668937 (= call!668943 ($colon$colon!3085 (exprs!8518 ct1!282) (ite (or c!1362538 c!1362537) (regTwo!38668 r1!2370) r1!2370)))))

(declare-fun bm!668938 () Bool)

(assert (=> bm!668938 (= call!668942 call!668943)))

(declare-fun b!7335846 () Bool)

(declare-fun e!4392764 () (Set Context!16036))

(assert (=> b!7335846 (= e!4392764 e!4392761)))

(assert (=> b!7335846 (= c!1362537 (is-Concat!27923 r1!2370))))

(declare-fun bm!668939 () Bool)

(declare-fun call!668940 () (Set Context!16036))

(assert (=> bm!668939 (= call!668940 call!668945)))

(declare-fun b!7335847 () Bool)

(declare-fun c!1362535 () Bool)

(assert (=> b!7335847 (= c!1362535 (is-Star!19078 r1!2370))))

(declare-fun e!4392759 () (Set Context!16036))

(assert (=> b!7335847 (= e!4392761 e!4392759)))

(declare-fun b!7335848 () Bool)

(assert (=> b!7335848 (= e!4392764 (set.union call!668941 call!668940))))

(declare-fun b!7335849 () Bool)

(declare-fun e!4392762 () Bool)

(declare-fun nullable!8178 (Regex!19078) Bool)

(assert (=> b!7335849 (= e!4392762 (nullable!8178 (regOne!38668 r1!2370)))))

(declare-fun b!7335850 () Bool)

(assert (=> b!7335850 (= c!1362538 e!4392762)))

(declare-fun res!2964199 () Bool)

(assert (=> b!7335850 (=> (not res!2964199) (not e!4392762))))

(assert (=> b!7335850 (= res!2964199 (is-Concat!27923 r1!2370))))

(assert (=> b!7335850 (= e!4392760 e!4392764)))

(declare-fun b!7335851 () Bool)

(assert (=> b!7335851 (= e!4392763 (set.insert ct1!282 (as set.empty (Set Context!16036))))))

(declare-fun b!7335852 () Bool)

(assert (=> b!7335852 (= e!4392759 call!668944)))

(declare-fun bm!668940 () Bool)

(assert (=> bm!668940 (= call!668944 call!668940)))

(declare-fun d!2278046 () Bool)

(declare-fun c!1362536 () Bool)

(assert (=> d!2278046 (= c!1362536 (and (is-ElementMatch!19078 r1!2370) (= (c!1362518 r1!2370) c!10362)))))

(assert (=> d!2278046 (= (derivationStepZipperDown!2904 r1!2370 ct1!282 c!10362) e!4392763)))

(declare-fun b!7335845 () Bool)

(assert (=> b!7335845 (= e!4392759 (as set.empty (Set Context!16036)))))

(assert (= (and d!2278046 c!1362536) b!7335851))

(assert (= (and d!2278046 (not c!1362536)) b!7335843))

(assert (= (and b!7335843 c!1362534) b!7335842))

(assert (= (and b!7335843 (not c!1362534)) b!7335850))

(assert (= (and b!7335850 res!2964199) b!7335849))

(assert (= (and b!7335850 c!1362538) b!7335848))

(assert (= (and b!7335850 (not c!1362538)) b!7335846))

(assert (= (and b!7335846 c!1362537) b!7335844))

(assert (= (and b!7335846 (not c!1362537)) b!7335847))

(assert (= (and b!7335847 c!1362535) b!7335852))

(assert (= (and b!7335847 (not c!1362535)) b!7335845))

(assert (= (or b!7335844 b!7335852) bm!668938))

(assert (= (or b!7335844 b!7335852) bm!668940))

(assert (= (or b!7335848 bm!668940) bm!668939))

(assert (= (or b!7335848 bm!668938) bm!668937))

(assert (= (or b!7335842 bm!668939) bm!668935))

(assert (= (or b!7335842 b!7335848) bm!668936))

(declare-fun m!8001850 () Bool)

(assert (=> bm!668937 m!8001850))

(declare-fun m!8001852 () Bool)

(assert (=> bm!668936 m!8001852))

(declare-fun m!8001854 () Bool)

(assert (=> bm!668935 m!8001854))

(declare-fun m!8001856 () Bool)

(assert (=> b!7335851 m!8001856))

(declare-fun m!8001858 () Bool)

(assert (=> b!7335849 m!8001858))

(assert (=> b!7335770 d!2278046))

(declare-fun b!7335880 () Bool)

(declare-fun res!2964217 () Bool)

(declare-fun e!4392788 () Bool)

(assert (=> b!7335880 (=> (not res!2964217) (not e!4392788))))

(declare-fun call!668956 () Bool)

(assert (=> b!7335880 (= res!2964217 call!668956)))

(declare-fun e!4392789 () Bool)

(assert (=> b!7335880 (= e!4392789 e!4392788)))

(declare-fun b!7335881 () Bool)

(declare-fun e!4392787 () Bool)

(declare-fun e!4392786 () Bool)

(assert (=> b!7335881 (= e!4392787 e!4392786)))

(declare-fun res!2964219 () Bool)

(assert (=> b!7335881 (=> (not res!2964219) (not e!4392786))))

(declare-fun call!668955 () Bool)

(assert (=> b!7335881 (= res!2964219 call!668955)))

(declare-fun d!2278050 () Bool)

(declare-fun res!2964216 () Bool)

(declare-fun e!4392790 () Bool)

(assert (=> d!2278050 (=> res!2964216 e!4392790)))

(assert (=> d!2278050 (= res!2964216 (is-ElementMatch!19078 r1!2370))))

(assert (=> d!2278050 (= (validRegex!9674 r1!2370) e!4392790)))

(declare-fun c!1362545 () Bool)

(declare-fun bm!668950 () Bool)

(declare-fun call!668957 () Bool)

(declare-fun c!1362546 () Bool)

(assert (=> bm!668950 (= call!668957 (validRegex!9674 (ite c!1362546 (reg!19407 r1!2370) (ite c!1362545 (regTwo!38669 r1!2370) (regOne!38668 r1!2370)))))))

(declare-fun b!7335882 () Bool)

(assert (=> b!7335882 (= e!4392786 call!668956)))

(declare-fun bm!668951 () Bool)

(assert (=> bm!668951 (= call!668956 (validRegex!9674 (ite c!1362545 (regOne!38669 r1!2370) (regTwo!38668 r1!2370))))))

(declare-fun b!7335883 () Bool)

(declare-fun res!2964218 () Bool)

(assert (=> b!7335883 (=> res!2964218 e!4392787)))

(assert (=> b!7335883 (= res!2964218 (not (is-Concat!27923 r1!2370)))))

(assert (=> b!7335883 (= e!4392789 e!4392787)))

(declare-fun b!7335884 () Bool)

(declare-fun e!4392791 () Bool)

(assert (=> b!7335884 (= e!4392791 e!4392789)))

(assert (=> b!7335884 (= c!1362545 (is-Union!19078 r1!2370))))

(declare-fun b!7335885 () Bool)

(declare-fun e!4392792 () Bool)

(assert (=> b!7335885 (= e!4392791 e!4392792)))

(declare-fun res!2964215 () Bool)

(assert (=> b!7335885 (= res!2964215 (not (nullable!8178 (reg!19407 r1!2370))))))

(assert (=> b!7335885 (=> (not res!2964215) (not e!4392792))))

(declare-fun bm!668952 () Bool)

(assert (=> bm!668952 (= call!668955 call!668957)))

(declare-fun b!7335886 () Bool)

(assert (=> b!7335886 (= e!4392792 call!668957)))

(declare-fun b!7335887 () Bool)

(assert (=> b!7335887 (= e!4392790 e!4392791)))

(assert (=> b!7335887 (= c!1362546 (is-Star!19078 r1!2370))))

(declare-fun b!7335888 () Bool)

(assert (=> b!7335888 (= e!4392788 call!668955)))

(assert (= (and d!2278050 (not res!2964216)) b!7335887))

(assert (= (and b!7335887 c!1362546) b!7335885))

(assert (= (and b!7335887 (not c!1362546)) b!7335884))

(assert (= (and b!7335885 res!2964215) b!7335886))

(assert (= (and b!7335884 c!1362545) b!7335880))

(assert (= (and b!7335884 (not c!1362545)) b!7335883))

(assert (= (and b!7335880 res!2964217) b!7335888))

(assert (= (and b!7335883 (not res!2964218)) b!7335881))

(assert (= (and b!7335881 res!2964219) b!7335882))

(assert (= (or b!7335880 b!7335882) bm!668951))

(assert (= (or b!7335888 b!7335881) bm!668952))

(assert (= (or b!7335886 bm!668952) bm!668950))

(declare-fun m!8001860 () Bool)

(assert (=> bm!668950 m!8001860))

(declare-fun m!8001864 () Bool)

(assert (=> bm!668951 m!8001864))

(declare-fun m!8001866 () Bool)

(assert (=> b!7335885 m!8001866))

(assert (=> start!716586 d!2278050))

(declare-fun bs!1918014 () Bool)

(declare-fun d!2278052 () Bool)

(assert (= bs!1918014 (and d!2278052 b!7335774)))

(declare-fun lambda!455200 () Int)

(assert (=> bs!1918014 (= lambda!455200 lambda!455194)))

(assert (=> d!2278052 (= (inv!91036 cWitness!61) (forall!17914 (exprs!8518 cWitness!61) lambda!455200))))

(declare-fun bs!1918015 () Bool)

(assert (= bs!1918015 d!2278052))

(declare-fun m!8001872 () Bool)

(assert (=> bs!1918015 m!8001872))

(assert (=> start!716586 d!2278052))

(declare-fun bs!1918016 () Bool)

(declare-fun d!2278056 () Bool)

(assert (= bs!1918016 (and d!2278056 b!7335774)))

(declare-fun lambda!455201 () Int)

(assert (=> bs!1918016 (= lambda!455201 lambda!455194)))

(declare-fun bs!1918017 () Bool)

(assert (= bs!1918017 (and d!2278056 d!2278052)))

(assert (=> bs!1918017 (= lambda!455201 lambda!455200)))

(assert (=> d!2278056 (= (inv!91036 ct1!282) (forall!17914 (exprs!8518 ct1!282) lambda!455201))))

(declare-fun bs!1918018 () Bool)

(assert (= bs!1918018 d!2278056))

(declare-fun m!8001874 () Bool)

(assert (=> bs!1918018 m!8001874))

(assert (=> start!716586 d!2278056))

(declare-fun d!2278058 () Bool)

(declare-fun res!2964224 () Bool)

(declare-fun e!4392797 () Bool)

(assert (=> d!2278058 (=> res!2964224 e!4392797)))

(assert (=> d!2278058 (= res!2964224 (is-Nil!71450 (exprs!8518 ct1!282)))))

(assert (=> d!2278058 (= (forall!17914 (exprs!8518 ct1!282) lambda!455194) e!4392797)))

(declare-fun b!7335893 () Bool)

(declare-fun e!4392798 () Bool)

(assert (=> b!7335893 (= e!4392797 e!4392798)))

(declare-fun res!2964225 () Bool)

(assert (=> b!7335893 (=> (not res!2964225) (not e!4392798))))

(declare-fun dynLambda!29431 (Int Regex!19078) Bool)

(assert (=> b!7335893 (= res!2964225 (dynLambda!29431 lambda!455194 (h!77898 (exprs!8518 ct1!282))))))

(declare-fun b!7335894 () Bool)

(assert (=> b!7335894 (= e!4392798 (forall!17914 (t!385969 (exprs!8518 ct1!282)) lambda!455194))))

(assert (= (and d!2278058 (not res!2964224)) b!7335893))

(assert (= (and b!7335893 res!2964225) b!7335894))

(declare-fun b_lambda!283715 () Bool)

(assert (=> (not b_lambda!283715) (not b!7335893)))

(declare-fun m!8001878 () Bool)

(assert (=> b!7335893 m!8001878))

(declare-fun m!8001880 () Bool)

(assert (=> b!7335894 m!8001880))

(assert (=> b!7335774 d!2278058))

(declare-fun b!7335907 () Bool)

(declare-fun e!4392801 () Bool)

(declare-fun tp!2082368 () Bool)

(assert (=> b!7335907 (= e!4392801 tp!2082368)))

(assert (=> b!7335771 (= tp!2082334 e!4392801)))

(declare-fun b!7335905 () Bool)

(assert (=> b!7335905 (= e!4392801 tp_is_empty!48401)))

(declare-fun b!7335908 () Bool)

(declare-fun tp!2082371 () Bool)

(declare-fun tp!2082372 () Bool)

(assert (=> b!7335908 (= e!4392801 (and tp!2082371 tp!2082372))))

(declare-fun b!7335906 () Bool)

(declare-fun tp!2082370 () Bool)

(declare-fun tp!2082369 () Bool)

(assert (=> b!7335906 (= e!4392801 (and tp!2082370 tp!2082369))))

(assert (= (and b!7335771 (is-ElementMatch!19078 (regOne!38669 r1!2370))) b!7335905))

(assert (= (and b!7335771 (is-Concat!27923 (regOne!38669 r1!2370))) b!7335906))

(assert (= (and b!7335771 (is-Star!19078 (regOne!38669 r1!2370))) b!7335907))

(assert (= (and b!7335771 (is-Union!19078 (regOne!38669 r1!2370))) b!7335908))

(declare-fun b!7335911 () Bool)

(declare-fun e!4392802 () Bool)

(declare-fun tp!2082373 () Bool)

(assert (=> b!7335911 (= e!4392802 tp!2082373)))

(assert (=> b!7335771 (= tp!2082331 e!4392802)))

(declare-fun b!7335909 () Bool)

(assert (=> b!7335909 (= e!4392802 tp_is_empty!48401)))

(declare-fun b!7335912 () Bool)

(declare-fun tp!2082376 () Bool)

(declare-fun tp!2082377 () Bool)

(assert (=> b!7335912 (= e!4392802 (and tp!2082376 tp!2082377))))

(declare-fun b!7335910 () Bool)

(declare-fun tp!2082375 () Bool)

(declare-fun tp!2082374 () Bool)

(assert (=> b!7335910 (= e!4392802 (and tp!2082375 tp!2082374))))

(assert (= (and b!7335771 (is-ElementMatch!19078 (regTwo!38669 r1!2370))) b!7335909))

(assert (= (and b!7335771 (is-Concat!27923 (regTwo!38669 r1!2370))) b!7335910))

(assert (= (and b!7335771 (is-Star!19078 (regTwo!38669 r1!2370))) b!7335911))

(assert (= (and b!7335771 (is-Union!19078 (regTwo!38669 r1!2370))) b!7335912))

(declare-fun b!7335917 () Bool)

(declare-fun e!4392805 () Bool)

(declare-fun tp!2082382 () Bool)

(declare-fun tp!2082383 () Bool)

(assert (=> b!7335917 (= e!4392805 (and tp!2082382 tp!2082383))))

(assert (=> b!7335776 (= tp!2082330 e!4392805)))

(assert (= (and b!7335776 (is-Cons!71450 (exprs!8518 ct1!282))) b!7335917))

(declare-fun b!7335920 () Bool)

(declare-fun e!4392806 () Bool)

(declare-fun tp!2082384 () Bool)

(assert (=> b!7335920 (= e!4392806 tp!2082384)))

(assert (=> b!7335772 (= tp!2082335 e!4392806)))

(declare-fun b!7335918 () Bool)

(assert (=> b!7335918 (= e!4392806 tp_is_empty!48401)))

(declare-fun b!7335921 () Bool)

(declare-fun tp!2082387 () Bool)

(declare-fun tp!2082388 () Bool)

(assert (=> b!7335921 (= e!4392806 (and tp!2082387 tp!2082388))))

(declare-fun b!7335919 () Bool)

(declare-fun tp!2082386 () Bool)

(declare-fun tp!2082385 () Bool)

(assert (=> b!7335919 (= e!4392806 (and tp!2082386 tp!2082385))))

(assert (= (and b!7335772 (is-ElementMatch!19078 (regOne!38668 r1!2370))) b!7335918))

(assert (= (and b!7335772 (is-Concat!27923 (regOne!38668 r1!2370))) b!7335919))

(assert (= (and b!7335772 (is-Star!19078 (regOne!38668 r1!2370))) b!7335920))

(assert (= (and b!7335772 (is-Union!19078 (regOne!38668 r1!2370))) b!7335921))

(declare-fun b!7335924 () Bool)

(declare-fun e!4392807 () Bool)

(declare-fun tp!2082389 () Bool)

(assert (=> b!7335924 (= e!4392807 tp!2082389)))

(assert (=> b!7335772 (= tp!2082332 e!4392807)))

(declare-fun b!7335922 () Bool)

(assert (=> b!7335922 (= e!4392807 tp_is_empty!48401)))

(declare-fun b!7335925 () Bool)

(declare-fun tp!2082392 () Bool)

(declare-fun tp!2082393 () Bool)

(assert (=> b!7335925 (= e!4392807 (and tp!2082392 tp!2082393))))

(declare-fun b!7335923 () Bool)

(declare-fun tp!2082391 () Bool)

(declare-fun tp!2082390 () Bool)

(assert (=> b!7335923 (= e!4392807 (and tp!2082391 tp!2082390))))

(assert (= (and b!7335772 (is-ElementMatch!19078 (regTwo!38668 r1!2370))) b!7335922))

(assert (= (and b!7335772 (is-Concat!27923 (regTwo!38668 r1!2370))) b!7335923))

(assert (= (and b!7335772 (is-Star!19078 (regTwo!38668 r1!2370))) b!7335924))

(assert (= (and b!7335772 (is-Union!19078 (regTwo!38668 r1!2370))) b!7335925))

(declare-fun b!7335928 () Bool)

(declare-fun e!4392808 () Bool)

(declare-fun tp!2082394 () Bool)

(assert (=> b!7335928 (= e!4392808 tp!2082394)))

(assert (=> b!7335773 (= tp!2082333 e!4392808)))

(declare-fun b!7335926 () Bool)

(assert (=> b!7335926 (= e!4392808 tp_is_empty!48401)))

(declare-fun b!7335929 () Bool)

(declare-fun tp!2082397 () Bool)

(declare-fun tp!2082398 () Bool)

(assert (=> b!7335929 (= e!4392808 (and tp!2082397 tp!2082398))))

(declare-fun b!7335927 () Bool)

(declare-fun tp!2082396 () Bool)

(declare-fun tp!2082395 () Bool)

(assert (=> b!7335927 (= e!4392808 (and tp!2082396 tp!2082395))))

(assert (= (and b!7335773 (is-ElementMatch!19078 (reg!19407 r1!2370))) b!7335926))

(assert (= (and b!7335773 (is-Concat!27923 (reg!19407 r1!2370))) b!7335927))

(assert (= (and b!7335773 (is-Star!19078 (reg!19407 r1!2370))) b!7335928))

(assert (= (and b!7335773 (is-Union!19078 (reg!19407 r1!2370))) b!7335929))

(declare-fun b!7335930 () Bool)

(declare-fun e!4392809 () Bool)

(declare-fun tp!2082399 () Bool)

(declare-fun tp!2082400 () Bool)

(assert (=> b!7335930 (= e!4392809 (and tp!2082399 tp!2082400))))

(assert (=> b!7335775 (= tp!2082336 e!4392809)))

(assert (= (and b!7335775 (is-Cons!71450 (exprs!8518 cWitness!61))) b!7335930))

(declare-fun b_lambda!283717 () Bool)

(assert (= b_lambda!283715 (or b!7335774 b_lambda!283717)))

(declare-fun bs!1918024 () Bool)

(declare-fun d!2278064 () Bool)

(assert (= bs!1918024 (and d!2278064 b!7335774)))

(assert (=> bs!1918024 (= (dynLambda!29431 lambda!455194 (h!77898 (exprs!8518 ct1!282))) (validRegex!9674 (h!77898 (exprs!8518 ct1!282))))))

(declare-fun m!8001884 () Bool)

(assert (=> bs!1918024 m!8001884))

(assert (=> b!7335893 d!2278064))

(push 1)

(assert (not b!7335920))

(assert (not b!7335906))

(assert (not b!7335921))

(assert (not b!7335927))

(assert tp_is_empty!48401)

(assert (not b_lambda!283717))

(assert (not b!7335912))

(assert (not bm!668950))

(assert (not bm!668937))

(assert (not d!2278056))

(assert (not bs!1918024))

(assert (not b!7335930))

(assert (not b!7335894))

(assert (not d!2278052))

(assert (not b!7335910))

(assert (not bm!668951))

(assert (not b!7335908))

(assert (not b!7335907))

(assert (not bm!668936))

(assert (not b!7335917))

(assert (not b!7335924))

(assert (not b!7335925))

(assert (not b!7335929))

(assert (not bm!668935))

(assert (not b!7335849))

(assert (not b!7335923))

(assert (not b!7335919))

(assert (not b!7335928))

(assert (not b!7335885))

(assert (not b!7335911))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

