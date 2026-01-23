; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719730 () Bool)

(assert start!719730)

(declare-fun res!2975607 () Bool)

(declare-fun e!4415424 () Bool)

(assert (=> start!719730 (=> (not res!2975607) (not e!4415424))))

(declare-datatypes ((C!38878 0))(
  ( (C!38879 (val!29799 Int)) )
))
(declare-datatypes ((Regex!19302 0))(
  ( (ElementMatch!19302 (c!1370902 C!38878)) (Concat!28147 (regOne!39116 Regex!19302) (regTwo!39116 Regex!19302)) (EmptyExpr!19302) (Star!19302 (reg!19631 Regex!19302)) (EmptyLang!19302) (Union!19302 (regOne!39117 Regex!19302) (regTwo!39117 Regex!19302)) )
))
(declare-fun r1!2370 () Regex!19302)

(declare-fun validRegex!9898 (Regex!19302) Bool)

(assert (=> start!719730 (= res!2975607 (validRegex!9898 r1!2370))))

(assert (=> start!719730 e!4415424))

(declare-fun tp_is_empty!48849 () Bool)

(assert (=> start!719730 tp_is_empty!48849))

(declare-datatypes ((List!71798 0))(
  ( (Nil!71674) (Cons!71674 (h!78122 Regex!19302) (t!386275 List!71798)) )
))
(declare-datatypes ((Context!16484 0))(
  ( (Context!16485 (exprs!8742 List!71798)) )
))
(declare-fun cWitness!61 () Context!16484)

(declare-fun e!4415431 () Bool)

(declare-fun inv!91596 (Context!16484) Bool)

(assert (=> start!719730 (and (inv!91596 cWitness!61) e!4415431)))

(declare-fun ct1!282 () Context!16484)

(declare-fun e!4415426 () Bool)

(assert (=> start!719730 (and (inv!91596 ct1!282) e!4415426)))

(declare-fun e!4415423 () Bool)

(assert (=> start!719730 e!4415423))

(declare-fun ct2!378 () Context!16484)

(declare-fun e!4415427 () Bool)

(assert (=> start!719730 (and (inv!91596 ct2!378) e!4415427)))

(declare-fun b!7375968 () Bool)

(declare-fun tp!2097435 () Bool)

(declare-fun tp!2097434 () Bool)

(assert (=> b!7375968 (= e!4415423 (and tp!2097435 tp!2097434))))

(declare-fun b!7375969 () Bool)

(declare-fun res!2975608 () Bool)

(declare-fun e!4415425 () Bool)

(assert (=> b!7375969 (=> (not res!2975608) (not e!4415425))))

(assert (=> b!7375969 (= res!2975608 (is-Concat!28147 r1!2370))))

(declare-fun b!7375970 () Bool)

(declare-fun tp!2097432 () Bool)

(assert (=> b!7375970 (= e!4415431 tp!2097432)))

(declare-fun b!7375971 () Bool)

(declare-fun res!2975610 () Bool)

(assert (=> b!7375971 (=> (not res!2975610) (not e!4415425))))

(declare-fun e!4415428 () Bool)

(assert (=> b!7375971 (= res!2975610 e!4415428)))

(declare-fun res!2975609 () Bool)

(assert (=> b!7375971 (=> res!2975609 e!4415428)))

(assert (=> b!7375971 (= res!2975609 (not (is-Concat!28147 r1!2370)))))

(declare-fun b!7375972 () Bool)

(declare-fun e!4415429 () Bool)

(assert (=> b!7375972 (= e!4415429 e!4415425)))

(declare-fun res!2975605 () Bool)

(assert (=> b!7375972 (=> (not res!2975605) (not e!4415425))))

(declare-fun c!10362 () C!38878)

(assert (=> b!7375972 (= res!2975605 (and (or (not (is-ElementMatch!19302 r1!2370)) (not (= c!10362 (c!1370902 r1!2370)))) (not (is-Union!19302 r1!2370))))))

(declare-fun lt!2616248 () (Set Context!16484))

(declare-fun derivationStepZipperDown!3128 (Regex!19302 Context!16484 C!38878) (Set Context!16484))

(declare-fun ++!17118 (List!71798 List!71798) List!71798)

(assert (=> b!7375972 (= lt!2616248 (derivationStepZipperDown!3128 r1!2370 (Context!16485 (++!17118 (exprs!8742 ct1!282) (exprs!8742 ct2!378))) c!10362))))

(declare-fun lambda!458290 () Int)

(declare-datatypes ((Unit!165553 0))(
  ( (Unit!165554) )
))
(declare-fun lt!2616249 () Unit!165553)

(declare-fun lemmaConcatPreservesForall!1975 (List!71798 List!71798 Int) Unit!165553)

(assert (=> b!7375972 (= lt!2616249 (lemmaConcatPreservesForall!1975 (exprs!8742 ct1!282) (exprs!8742 ct2!378) lambda!458290))))

(declare-fun b!7375973 () Bool)

(declare-fun tp!2097430 () Bool)

(declare-fun tp!2097433 () Bool)

(assert (=> b!7375973 (= e!4415423 (and tp!2097430 tp!2097433))))

(declare-fun b!7375974 () Bool)

(declare-fun tp!2097431 () Bool)

(assert (=> b!7375974 (= e!4415423 tp!2097431)))

(declare-fun b!7375975 () Bool)

(declare-fun res!2975613 () Bool)

(declare-fun e!4415430 () Bool)

(assert (=> b!7375975 (=> (not res!2975613) (not e!4415430))))

(declare-fun lt!2616251 () (Set Context!16484))

(assert (=> b!7375975 (= res!2975613 (set.member cWitness!61 lt!2616251))))

(declare-fun b!7375976 () Bool)

(declare-fun regexDepth!442 (Regex!19302) Int)

(assert (=> b!7375976 (= e!4415430 (>= (regexDepth!442 (regOne!39116 r1!2370)) (regexDepth!442 r1!2370)))))

(declare-fun b!7375977 () Bool)

(assert (=> b!7375977 (= e!4415424 e!4415429)))

(declare-fun res!2975614 () Bool)

(assert (=> b!7375977 (=> (not res!2975614) (not e!4415429))))

(declare-fun lt!2616250 () (Set Context!16484))

(assert (=> b!7375977 (= res!2975614 (set.member cWitness!61 lt!2616250))))

(assert (=> b!7375977 (= lt!2616250 (derivationStepZipperDown!3128 r1!2370 ct1!282 c!10362))))

(declare-fun b!7375978 () Bool)

(declare-fun tp!2097429 () Bool)

(assert (=> b!7375978 (= e!4415427 tp!2097429)))

(declare-fun b!7375979 () Bool)

(assert (=> b!7375979 (= e!4415425 e!4415430)))

(declare-fun res!2975606 () Bool)

(assert (=> b!7375979 (=> (not res!2975606) (not e!4415430))))

(assert (=> b!7375979 (= res!2975606 (= lt!2616250 lt!2616251))))

(declare-fun $colon$colon!3284 (List!71798 Regex!19302) List!71798)

(assert (=> b!7375979 (= lt!2616251 (derivationStepZipperDown!3128 (regOne!39116 r1!2370) (Context!16485 ($colon$colon!3284 (exprs!8742 ct1!282) (regTwo!39116 r1!2370))) c!10362))))

(declare-fun b!7375980 () Bool)

(declare-fun res!2975611 () Bool)

(assert (=> b!7375980 (=> (not res!2975611) (not e!4415430))))

(assert (=> b!7375980 (= res!2975611 (validRegex!9898 (regOne!39116 r1!2370)))))

(declare-fun b!7375981 () Bool)

(declare-fun tp!2097428 () Bool)

(assert (=> b!7375981 (= e!4415426 tp!2097428)))

(declare-fun b!7375982 () Bool)

(declare-fun nullable!8378 (Regex!19302) Bool)

(assert (=> b!7375982 (= e!4415428 (not (nullable!8378 (regOne!39116 r1!2370))))))

(declare-fun b!7375983 () Bool)

(assert (=> b!7375983 (= e!4415423 tp_is_empty!48849)))

(declare-fun b!7375984 () Bool)

(declare-fun res!2975612 () Bool)

(assert (=> b!7375984 (=> (not res!2975612) (not e!4415425))))

(assert (=> b!7375984 (= res!2975612 (validRegex!9898 (regTwo!39116 r1!2370)))))

(assert (= (and start!719730 res!2975607) b!7375977))

(assert (= (and b!7375977 res!2975614) b!7375972))

(assert (= (and b!7375972 res!2975605) b!7375971))

(assert (= (and b!7375971 (not res!2975609)) b!7375982))

(assert (= (and b!7375971 res!2975610) b!7375969))

(assert (= (and b!7375969 res!2975608) b!7375984))

(assert (= (and b!7375984 res!2975612) b!7375979))

(assert (= (and b!7375979 res!2975606) b!7375980))

(assert (= (and b!7375980 res!2975611) b!7375975))

(assert (= (and b!7375975 res!2975613) b!7375976))

(assert (= start!719730 b!7375970))

(assert (= start!719730 b!7375981))

(assert (= (and start!719730 (is-ElementMatch!19302 r1!2370)) b!7375983))

(assert (= (and start!719730 (is-Concat!28147 r1!2370)) b!7375973))

(assert (= (and start!719730 (is-Star!19302 r1!2370)) b!7375974))

(assert (= (and start!719730 (is-Union!19302 r1!2370)) b!7375968))

(assert (= start!719730 b!7375978))

(declare-fun m!8027806 () Bool)

(assert (=> b!7375979 m!8027806))

(declare-fun m!8027808 () Bool)

(assert (=> b!7375979 m!8027808))

(declare-fun m!8027810 () Bool)

(assert (=> b!7375982 m!8027810))

(declare-fun m!8027812 () Bool)

(assert (=> b!7375977 m!8027812))

(declare-fun m!8027814 () Bool)

(assert (=> b!7375977 m!8027814))

(declare-fun m!8027816 () Bool)

(assert (=> start!719730 m!8027816))

(declare-fun m!8027818 () Bool)

(assert (=> start!719730 m!8027818))

(declare-fun m!8027820 () Bool)

(assert (=> start!719730 m!8027820))

(declare-fun m!8027822 () Bool)

(assert (=> start!719730 m!8027822))

(declare-fun m!8027824 () Bool)

(assert (=> b!7375976 m!8027824))

(declare-fun m!8027826 () Bool)

(assert (=> b!7375976 m!8027826))

(declare-fun m!8027828 () Bool)

(assert (=> b!7375975 m!8027828))

(declare-fun m!8027830 () Bool)

(assert (=> b!7375984 m!8027830))

(declare-fun m!8027832 () Bool)

(assert (=> b!7375980 m!8027832))

(declare-fun m!8027834 () Bool)

(assert (=> b!7375972 m!8027834))

(declare-fun m!8027836 () Bool)

(assert (=> b!7375972 m!8027836))

(declare-fun m!8027838 () Bool)

(assert (=> b!7375972 m!8027838))

(push 1)

(assert (not b!7375976))

(assert (not b!7375973))

(assert (not b!7375980))

(assert (not b!7375979))

(assert (not b!7375984))

(assert (not start!719730))

(assert (not b!7375970))

(assert (not b!7375981))

(assert (not b!7375972))

(assert tp_is_empty!48849)

(assert (not b!7375982))

(assert (not b!7375974))

(assert (not b!7375978))

(assert (not b!7375968))

(assert (not b!7375977))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2284622 () Bool)

(declare-fun nullableFct!3355 (Regex!19302) Bool)

(assert (=> d!2284622 (= (nullable!8378 (regOne!39116 r1!2370)) (nullableFct!3355 (regOne!39116 r1!2370)))))

(declare-fun bs!1921238 () Bool)

(assert (= bs!1921238 d!2284622))

(declare-fun m!8027874 () Bool)

(assert (=> bs!1921238 m!8027874))

(assert (=> b!7375982 d!2284622))

(declare-fun b!7376058 () Bool)

(declare-fun e!4415476 () (Set Context!16484))

(declare-fun call!678029 () (Set Context!16484))

(assert (=> b!7376058 (= e!4415476 call!678029)))

(declare-fun b!7376059 () Bool)

(declare-fun c!1370914 () Bool)

(declare-fun e!4415471 () Bool)

(assert (=> b!7376059 (= c!1370914 e!4415471)))

(declare-fun res!2975647 () Bool)

(assert (=> b!7376059 (=> (not res!2975647) (not e!4415471))))

(assert (=> b!7376059 (= res!2975647 (is-Concat!28147 r1!2370))))

(declare-fun e!4415472 () (Set Context!16484))

(declare-fun e!4415474 () (Set Context!16484))

(assert (=> b!7376059 (= e!4415472 e!4415474)))

(declare-fun b!7376060 () Bool)

(declare-fun call!678031 () (Set Context!16484))

(declare-fun call!678026 () (Set Context!16484))

(assert (=> b!7376060 (= e!4415472 (set.union call!678031 call!678026))))

(declare-fun b!7376061 () Bool)

(declare-fun e!4415473 () (Set Context!16484))

(assert (=> b!7376061 (= e!4415474 e!4415473)))

(declare-fun c!1370917 () Bool)

(assert (=> b!7376061 (= c!1370917 (is-Concat!28147 r1!2370))))

(declare-fun b!7376062 () Bool)

(assert (=> b!7376062 (= e!4415473 call!678029)))

(declare-fun bm!678022 () Bool)

(declare-fun call!678030 () (Set Context!16484))

(assert (=> bm!678022 (= call!678030 call!678031)))

(declare-fun bm!678023 () Bool)

(declare-fun call!678027 () List!71798)

(declare-fun call!678028 () List!71798)

(assert (=> bm!678023 (= call!678027 call!678028)))

(declare-fun bm!678024 () Bool)

(assert (=> bm!678024 (= call!678029 call!678030)))

(declare-fun b!7376063 () Bool)

(declare-fun e!4415475 () (Set Context!16484))

(assert (=> b!7376063 (= e!4415475 e!4415472)))

(declare-fun c!1370915 () Bool)

(assert (=> b!7376063 (= c!1370915 (is-Union!19302 r1!2370))))

(declare-fun b!7376064 () Bool)

(declare-fun c!1370918 () Bool)

(assert (=> b!7376064 (= c!1370918 (is-Star!19302 r1!2370))))

(assert (=> b!7376064 (= e!4415473 e!4415476)))

(declare-fun bm!678021 () Bool)

(assert (=> bm!678021 (= call!678026 (derivationStepZipperDown!3128 (ite c!1370915 (regTwo!39117 r1!2370) (regOne!39116 r1!2370)) (ite c!1370915 ct1!282 (Context!16485 call!678028)) c!10362))))

(declare-fun d!2284624 () Bool)

(declare-fun c!1370916 () Bool)

(assert (=> d!2284624 (= c!1370916 (and (is-ElementMatch!19302 r1!2370) (= (c!1370902 r1!2370) c!10362)))))

(assert (=> d!2284624 (= (derivationStepZipperDown!3128 r1!2370 ct1!282 c!10362) e!4415475)))

(declare-fun b!7376065 () Bool)

(assert (=> b!7376065 (= e!4415474 (set.union call!678026 call!678030))))

(declare-fun b!7376066 () Bool)

(assert (=> b!7376066 (= e!4415471 (nullable!8378 (regOne!39116 r1!2370)))))

(declare-fun bm!678025 () Bool)

(assert (=> bm!678025 (= call!678031 (derivationStepZipperDown!3128 (ite c!1370915 (regOne!39117 r1!2370) (ite c!1370914 (regTwo!39116 r1!2370) (ite c!1370917 (regOne!39116 r1!2370) (reg!19631 r1!2370)))) (ite (or c!1370915 c!1370914) ct1!282 (Context!16485 call!678027)) c!10362))))

(declare-fun bm!678026 () Bool)

(assert (=> bm!678026 (= call!678028 ($colon$colon!3284 (exprs!8742 ct1!282) (ite (or c!1370914 c!1370917) (regTwo!39116 r1!2370) r1!2370)))))

(declare-fun b!7376067 () Bool)

(assert (=> b!7376067 (= e!4415476 (as set.empty (Set Context!16484)))))

(declare-fun b!7376068 () Bool)

(assert (=> b!7376068 (= e!4415475 (set.insert ct1!282 (as set.empty (Set Context!16484))))))

(assert (= (and d!2284624 c!1370916) b!7376068))

(assert (= (and d!2284624 (not c!1370916)) b!7376063))

(assert (= (and b!7376063 c!1370915) b!7376060))

(assert (= (and b!7376063 (not c!1370915)) b!7376059))

(assert (= (and b!7376059 res!2975647) b!7376066))

(assert (= (and b!7376059 c!1370914) b!7376065))

(assert (= (and b!7376059 (not c!1370914)) b!7376061))

(assert (= (and b!7376061 c!1370917) b!7376062))

(assert (= (and b!7376061 (not c!1370917)) b!7376064))

(assert (= (and b!7376064 c!1370918) b!7376058))

(assert (= (and b!7376064 (not c!1370918)) b!7376067))

(assert (= (or b!7376062 b!7376058) bm!678023))

(assert (= (or b!7376062 b!7376058) bm!678024))

(assert (= (or b!7376065 bm!678024) bm!678022))

(assert (= (or b!7376065 bm!678023) bm!678026))

(assert (= (or b!7376060 b!7376065) bm!678021))

(assert (= (or b!7376060 bm!678022) bm!678025))

(assert (=> b!7376066 m!8027810))

(declare-fun m!8027876 () Bool)

(assert (=> bm!678021 m!8027876))

(declare-fun m!8027878 () Bool)

(assert (=> bm!678026 m!8027878))

(declare-fun m!8027880 () Bool)

(assert (=> bm!678025 m!8027880))

(declare-fun m!8027882 () Bool)

(assert (=> b!7376068 m!8027882))

(assert (=> b!7375977 d!2284624))

(declare-fun b!7376073 () Bool)

(declare-fun e!4415484 () (Set Context!16484))

(declare-fun call!678035 () (Set Context!16484))

(assert (=> b!7376073 (= e!4415484 call!678035)))

(declare-fun b!7376074 () Bool)

(declare-fun c!1370921 () Bool)

(declare-fun e!4415479 () Bool)

(assert (=> b!7376074 (= c!1370921 e!4415479)))

(declare-fun res!2975648 () Bool)

(assert (=> b!7376074 (=> (not res!2975648) (not e!4415479))))

(assert (=> b!7376074 (= res!2975648 (is-Concat!28147 r1!2370))))

(declare-fun e!4415480 () (Set Context!16484))

(declare-fun e!4415482 () (Set Context!16484))

(assert (=> b!7376074 (= e!4415480 e!4415482)))

(declare-fun b!7376075 () Bool)

(declare-fun call!678037 () (Set Context!16484))

(declare-fun call!678032 () (Set Context!16484))

(assert (=> b!7376075 (= e!4415480 (set.union call!678037 call!678032))))

(declare-fun b!7376076 () Bool)

(declare-fun e!4415481 () (Set Context!16484))

(assert (=> b!7376076 (= e!4415482 e!4415481)))

(declare-fun c!1370924 () Bool)

(assert (=> b!7376076 (= c!1370924 (is-Concat!28147 r1!2370))))

(declare-fun b!7376077 () Bool)

(assert (=> b!7376077 (= e!4415481 call!678035)))

(declare-fun bm!678028 () Bool)

(declare-fun call!678036 () (Set Context!16484))

(assert (=> bm!678028 (= call!678036 call!678037)))

(declare-fun bm!678029 () Bool)

(declare-fun call!678033 () List!71798)

(declare-fun call!678034 () List!71798)

(assert (=> bm!678029 (= call!678033 call!678034)))

(declare-fun bm!678030 () Bool)

(assert (=> bm!678030 (= call!678035 call!678036)))

(declare-fun b!7376078 () Bool)

(declare-fun e!4415483 () (Set Context!16484))

(assert (=> b!7376078 (= e!4415483 e!4415480)))

(declare-fun c!1370922 () Bool)

(assert (=> b!7376078 (= c!1370922 (is-Union!19302 r1!2370))))

(declare-fun b!7376079 () Bool)

(declare-fun c!1370925 () Bool)

(assert (=> b!7376079 (= c!1370925 (is-Star!19302 r1!2370))))

(assert (=> b!7376079 (= e!4415481 e!4415484)))

(declare-fun bm!678027 () Bool)

(assert (=> bm!678027 (= call!678032 (derivationStepZipperDown!3128 (ite c!1370922 (regTwo!39117 r1!2370) (regOne!39116 r1!2370)) (ite c!1370922 (Context!16485 (++!17118 (exprs!8742 ct1!282) (exprs!8742 ct2!378))) (Context!16485 call!678034)) c!10362))))

(declare-fun d!2284628 () Bool)

(declare-fun c!1370923 () Bool)

(assert (=> d!2284628 (= c!1370923 (and (is-ElementMatch!19302 r1!2370) (= (c!1370902 r1!2370) c!10362)))))

(assert (=> d!2284628 (= (derivationStepZipperDown!3128 r1!2370 (Context!16485 (++!17118 (exprs!8742 ct1!282) (exprs!8742 ct2!378))) c!10362) e!4415483)))

(declare-fun b!7376080 () Bool)

(assert (=> b!7376080 (= e!4415482 (set.union call!678032 call!678036))))

(declare-fun b!7376081 () Bool)

(assert (=> b!7376081 (= e!4415479 (nullable!8378 (regOne!39116 r1!2370)))))

(declare-fun bm!678031 () Bool)

(assert (=> bm!678031 (= call!678037 (derivationStepZipperDown!3128 (ite c!1370922 (regOne!39117 r1!2370) (ite c!1370921 (regTwo!39116 r1!2370) (ite c!1370924 (regOne!39116 r1!2370) (reg!19631 r1!2370)))) (ite (or c!1370922 c!1370921) (Context!16485 (++!17118 (exprs!8742 ct1!282) (exprs!8742 ct2!378))) (Context!16485 call!678033)) c!10362))))

(declare-fun bm!678032 () Bool)

(assert (=> bm!678032 (= call!678034 ($colon$colon!3284 (exprs!8742 (Context!16485 (++!17118 (exprs!8742 ct1!282) (exprs!8742 ct2!378)))) (ite (or c!1370921 c!1370924) (regTwo!39116 r1!2370) r1!2370)))))

(declare-fun b!7376082 () Bool)

(assert (=> b!7376082 (= e!4415484 (as set.empty (Set Context!16484)))))

(declare-fun b!7376083 () Bool)

(assert (=> b!7376083 (= e!4415483 (set.insert (Context!16485 (++!17118 (exprs!8742 ct1!282) (exprs!8742 ct2!378))) (as set.empty (Set Context!16484))))))

(assert (= (and d!2284628 c!1370923) b!7376083))

(assert (= (and d!2284628 (not c!1370923)) b!7376078))

(assert (= (and b!7376078 c!1370922) b!7376075))

(assert (= (and b!7376078 (not c!1370922)) b!7376074))

(assert (= (and b!7376074 res!2975648) b!7376081))

(assert (= (and b!7376074 c!1370921) b!7376080))

(assert (= (and b!7376074 (not c!1370921)) b!7376076))

(assert (= (and b!7376076 c!1370924) b!7376077))

(assert (= (and b!7376076 (not c!1370924)) b!7376079))

(assert (= (and b!7376079 c!1370925) b!7376073))

(assert (= (and b!7376079 (not c!1370925)) b!7376082))

(assert (= (or b!7376077 b!7376073) bm!678029))

(assert (= (or b!7376077 b!7376073) bm!678030))

(assert (= (or b!7376080 bm!678030) bm!678028))

(assert (= (or b!7376080 bm!678029) bm!678032))

(assert (= (or b!7376075 b!7376080) bm!678027))

(assert (= (or b!7376075 bm!678028) bm!678031))

(assert (=> b!7376081 m!8027810))

(declare-fun m!8027884 () Bool)

(assert (=> bm!678027 m!8027884))

(declare-fun m!8027886 () Bool)

(assert (=> bm!678032 m!8027886))

(declare-fun m!8027888 () Bool)

(assert (=> bm!678031 m!8027888))

(declare-fun m!8027890 () Bool)

(assert (=> b!7376083 m!8027890))

(assert (=> b!7375972 d!2284628))

(declare-fun b!7376110 () Bool)

(declare-fun e!4415500 () List!71798)

(assert (=> b!7376110 (= e!4415500 (exprs!8742 ct2!378))))

(declare-fun b!7376111 () Bool)

(assert (=> b!7376111 (= e!4415500 (Cons!71674 (h!78122 (exprs!8742 ct1!282)) (++!17118 (t!386275 (exprs!8742 ct1!282)) (exprs!8742 ct2!378))))))

(declare-fun d!2284630 () Bool)

(declare-fun e!4415499 () Bool)

(assert (=> d!2284630 e!4415499))

(declare-fun res!2975655 () Bool)

(assert (=> d!2284630 (=> (not res!2975655) (not e!4415499))))

(declare-fun lt!2616266 () List!71798)

(declare-fun content!15171 (List!71798) (Set Regex!19302))

(assert (=> d!2284630 (= res!2975655 (= (content!15171 lt!2616266) (set.union (content!15171 (exprs!8742 ct1!282)) (content!15171 (exprs!8742 ct2!378)))))))

(assert (=> d!2284630 (= lt!2616266 e!4415500)))

(declare-fun c!1370936 () Bool)

(assert (=> d!2284630 (= c!1370936 (is-Nil!71674 (exprs!8742 ct1!282)))))

(assert (=> d!2284630 (= (++!17118 (exprs!8742 ct1!282) (exprs!8742 ct2!378)) lt!2616266)))

(declare-fun b!7376113 () Bool)

(assert (=> b!7376113 (= e!4415499 (or (not (= (exprs!8742 ct2!378) Nil!71674)) (= lt!2616266 (exprs!8742 ct1!282))))))

(declare-fun b!7376112 () Bool)

(declare-fun res!2975656 () Bool)

(assert (=> b!7376112 (=> (not res!2975656) (not e!4415499))))

(declare-fun size!42149 (List!71798) Int)

(assert (=> b!7376112 (= res!2975656 (= (size!42149 lt!2616266) (+ (size!42149 (exprs!8742 ct1!282)) (size!42149 (exprs!8742 ct2!378)))))))

(assert (= (and d!2284630 c!1370936) b!7376110))

(assert (= (and d!2284630 (not c!1370936)) b!7376111))

(assert (= (and d!2284630 res!2975655) b!7376112))

(assert (= (and b!7376112 res!2975656) b!7376113))

(declare-fun m!8027892 () Bool)

(assert (=> b!7376111 m!8027892))

(declare-fun m!8027894 () Bool)

(assert (=> d!2284630 m!8027894))

(declare-fun m!8027896 () Bool)

(assert (=> d!2284630 m!8027896))

(declare-fun m!8027898 () Bool)

(assert (=> d!2284630 m!8027898))

(declare-fun m!8027900 () Bool)

(assert (=> b!7376112 m!8027900))

(declare-fun m!8027902 () Bool)

(assert (=> b!7376112 m!8027902))

(declare-fun m!8027904 () Bool)

(assert (=> b!7376112 m!8027904))

(assert (=> b!7375972 d!2284630))

(declare-fun d!2284632 () Bool)

(declare-fun forall!18098 (List!71798 Int) Bool)

(assert (=> d!2284632 (forall!18098 (++!17118 (exprs!8742 ct1!282) (exprs!8742 ct2!378)) lambda!458290)))

(declare-fun lt!2616269 () Unit!165553)

(declare-fun choose!57325 (List!71798 List!71798 Int) Unit!165553)

(assert (=> d!2284632 (= lt!2616269 (choose!57325 (exprs!8742 ct1!282) (exprs!8742 ct2!378) lambda!458290))))

(assert (=> d!2284632 (forall!18098 (exprs!8742 ct1!282) lambda!458290)))

(assert (=> d!2284632 (= (lemmaConcatPreservesForall!1975 (exprs!8742 ct1!282) (exprs!8742 ct2!378) lambda!458290) lt!2616269)))

(declare-fun bs!1921239 () Bool)

(assert (= bs!1921239 d!2284632))

(assert (=> bs!1921239 m!8027834))

(assert (=> bs!1921239 m!8027834))

(declare-fun m!8027906 () Bool)

(assert (=> bs!1921239 m!8027906))

(declare-fun m!8027908 () Bool)

(assert (=> bs!1921239 m!8027908))

(declare-fun m!8027910 () Bool)

(assert (=> bs!1921239 m!8027910))

(assert (=> b!7375972 d!2284632))

(declare-fun b!7376132 () Bool)

(declare-fun e!4415517 () Bool)

(declare-fun e!4415518 () Bool)

(assert (=> b!7376132 (= e!4415517 e!4415518)))

(declare-fun c!1370941 () Bool)

(assert (=> b!7376132 (= c!1370941 (is-Union!19302 (regTwo!39116 r1!2370)))))

(declare-fun b!7376133 () Bool)

(declare-fun e!4415516 () Bool)

(declare-fun call!678056 () Bool)

(assert (=> b!7376133 (= e!4415516 call!678056)))

(declare-fun bm!678051 () Bool)

(declare-fun call!678057 () Bool)

(declare-fun c!1370942 () Bool)

(assert (=> bm!678051 (= call!678057 (validRegex!9898 (ite c!1370942 (reg!19631 (regTwo!39116 r1!2370)) (ite c!1370941 (regTwo!39117 (regTwo!39116 r1!2370)) (regOne!39116 (regTwo!39116 r1!2370))))))))

(declare-fun b!7376134 () Bool)

(declare-fun e!4415520 () Bool)

(assert (=> b!7376134 (= e!4415520 call!678057)))

(declare-fun b!7376135 () Bool)

(declare-fun res!2975667 () Bool)

(declare-fun e!4415519 () Bool)

(assert (=> b!7376135 (=> res!2975667 e!4415519)))

(assert (=> b!7376135 (= res!2975667 (not (is-Concat!28147 (regTwo!39116 r1!2370))))))

(assert (=> b!7376135 (= e!4415518 e!4415519)))

(declare-fun bm!678052 () Bool)

(assert (=> bm!678052 (= call!678056 call!678057)))

(declare-fun bm!678053 () Bool)

(declare-fun call!678058 () Bool)

(assert (=> bm!678053 (= call!678058 (validRegex!9898 (ite c!1370941 (regOne!39117 (regTwo!39116 r1!2370)) (regTwo!39116 (regTwo!39116 r1!2370)))))))

(declare-fun b!7376137 () Bool)

(declare-fun e!4415515 () Bool)

(assert (=> b!7376137 (= e!4415515 e!4415517)))

(assert (=> b!7376137 (= c!1370942 (is-Star!19302 (regTwo!39116 r1!2370)))))

(declare-fun b!7376138 () Bool)

(declare-fun res!2975671 () Bool)

(assert (=> b!7376138 (=> (not res!2975671) (not e!4415516))))

(assert (=> b!7376138 (= res!2975671 call!678058)))

(assert (=> b!7376138 (= e!4415518 e!4415516)))

(declare-fun b!7376139 () Bool)

(assert (=> b!7376139 (= e!4415517 e!4415520)))

(declare-fun res!2975670 () Bool)

(assert (=> b!7376139 (= res!2975670 (not (nullable!8378 (reg!19631 (regTwo!39116 r1!2370)))))))

(assert (=> b!7376139 (=> (not res!2975670) (not e!4415520))))

(declare-fun b!7376140 () Bool)

(declare-fun e!4415521 () Bool)

(assert (=> b!7376140 (= e!4415519 e!4415521)))

(declare-fun res!2975669 () Bool)

(assert (=> b!7376140 (=> (not res!2975669) (not e!4415521))))

(assert (=> b!7376140 (= res!2975669 call!678056)))

(declare-fun b!7376136 () Bool)

(assert (=> b!7376136 (= e!4415521 call!678058)))

(declare-fun d!2284634 () Bool)

(declare-fun res!2975668 () Bool)

(assert (=> d!2284634 (=> res!2975668 e!4415515)))

(assert (=> d!2284634 (= res!2975668 (is-ElementMatch!19302 (regTwo!39116 r1!2370)))))

(assert (=> d!2284634 (= (validRegex!9898 (regTwo!39116 r1!2370)) e!4415515)))

(assert (= (and d!2284634 (not res!2975668)) b!7376137))

(assert (= (and b!7376137 c!1370942) b!7376139))

(assert (= (and b!7376137 (not c!1370942)) b!7376132))

(assert (= (and b!7376139 res!2975670) b!7376134))

(assert (= (and b!7376132 c!1370941) b!7376138))

(assert (= (and b!7376132 (not c!1370941)) b!7376135))

(assert (= (and b!7376138 res!2975671) b!7376133))

(assert (= (and b!7376135 (not res!2975667)) b!7376140))

(assert (= (and b!7376140 res!2975669) b!7376136))

(assert (= (or b!7376138 b!7376136) bm!678053))

(assert (= (or b!7376133 b!7376140) bm!678052))

(assert (= (or b!7376134 bm!678052) bm!678051))

(declare-fun m!8027912 () Bool)

(assert (=> bm!678051 m!8027912))

(declare-fun m!8027914 () Bool)

(assert (=> bm!678053 m!8027914))

(declare-fun m!8027916 () Bool)

(assert (=> b!7376139 m!8027916))

(assert (=> b!7375984 d!2284634))

(declare-fun b!7376141 () Bool)

(declare-fun e!4415527 () (Set Context!16484))

(declare-fun call!678062 () (Set Context!16484))

(assert (=> b!7376141 (= e!4415527 call!678062)))

(declare-fun b!7376142 () Bool)

(declare-fun c!1370943 () Bool)

(declare-fun e!4415522 () Bool)

(assert (=> b!7376142 (= c!1370943 e!4415522)))

(declare-fun res!2975672 () Bool)

(assert (=> b!7376142 (=> (not res!2975672) (not e!4415522))))

(assert (=> b!7376142 (= res!2975672 (is-Concat!28147 (regOne!39116 r1!2370)))))

(declare-fun e!4415523 () (Set Context!16484))

(declare-fun e!4415525 () (Set Context!16484))

(assert (=> b!7376142 (= e!4415523 e!4415525)))

(declare-fun b!7376143 () Bool)

(declare-fun call!678064 () (Set Context!16484))

(declare-fun call!678059 () (Set Context!16484))

(assert (=> b!7376143 (= e!4415523 (set.union call!678064 call!678059))))

(declare-fun b!7376144 () Bool)

(declare-fun e!4415524 () (Set Context!16484))

(assert (=> b!7376144 (= e!4415525 e!4415524)))

(declare-fun c!1370946 () Bool)

(assert (=> b!7376144 (= c!1370946 (is-Concat!28147 (regOne!39116 r1!2370)))))

(declare-fun b!7376145 () Bool)

(assert (=> b!7376145 (= e!4415524 call!678062)))

(declare-fun bm!678055 () Bool)

(declare-fun call!678063 () (Set Context!16484))

(assert (=> bm!678055 (= call!678063 call!678064)))

(declare-fun bm!678056 () Bool)

(declare-fun call!678060 () List!71798)

(declare-fun call!678061 () List!71798)

(assert (=> bm!678056 (= call!678060 call!678061)))

(declare-fun bm!678057 () Bool)

(assert (=> bm!678057 (= call!678062 call!678063)))

(declare-fun b!7376146 () Bool)

(declare-fun e!4415526 () (Set Context!16484))

(assert (=> b!7376146 (= e!4415526 e!4415523)))

(declare-fun c!1370944 () Bool)

(assert (=> b!7376146 (= c!1370944 (is-Union!19302 (regOne!39116 r1!2370)))))

(declare-fun b!7376147 () Bool)

(declare-fun c!1370947 () Bool)

(assert (=> b!7376147 (= c!1370947 (is-Star!19302 (regOne!39116 r1!2370)))))

(assert (=> b!7376147 (= e!4415524 e!4415527)))

(declare-fun bm!678054 () Bool)

(assert (=> bm!678054 (= call!678059 (derivationStepZipperDown!3128 (ite c!1370944 (regTwo!39117 (regOne!39116 r1!2370)) (regOne!39116 (regOne!39116 r1!2370))) (ite c!1370944 (Context!16485 ($colon$colon!3284 (exprs!8742 ct1!282) (regTwo!39116 r1!2370))) (Context!16485 call!678061)) c!10362))))

(declare-fun d!2284636 () Bool)

(declare-fun c!1370945 () Bool)

(assert (=> d!2284636 (= c!1370945 (and (is-ElementMatch!19302 (regOne!39116 r1!2370)) (= (c!1370902 (regOne!39116 r1!2370)) c!10362)))))

(assert (=> d!2284636 (= (derivationStepZipperDown!3128 (regOne!39116 r1!2370) (Context!16485 ($colon$colon!3284 (exprs!8742 ct1!282) (regTwo!39116 r1!2370))) c!10362) e!4415526)))

(declare-fun b!7376148 () Bool)

(assert (=> b!7376148 (= e!4415525 (set.union call!678059 call!678063))))

(declare-fun b!7376149 () Bool)

(assert (=> b!7376149 (= e!4415522 (nullable!8378 (regOne!39116 (regOne!39116 r1!2370))))))

(declare-fun bm!678058 () Bool)

(assert (=> bm!678058 (= call!678064 (derivationStepZipperDown!3128 (ite c!1370944 (regOne!39117 (regOne!39116 r1!2370)) (ite c!1370943 (regTwo!39116 (regOne!39116 r1!2370)) (ite c!1370946 (regOne!39116 (regOne!39116 r1!2370)) (reg!19631 (regOne!39116 r1!2370))))) (ite (or c!1370944 c!1370943) (Context!16485 ($colon$colon!3284 (exprs!8742 ct1!282) (regTwo!39116 r1!2370))) (Context!16485 call!678060)) c!10362))))

(declare-fun bm!678059 () Bool)

(assert (=> bm!678059 (= call!678061 ($colon$colon!3284 (exprs!8742 (Context!16485 ($colon$colon!3284 (exprs!8742 ct1!282) (regTwo!39116 r1!2370)))) (ite (or c!1370943 c!1370946) (regTwo!39116 (regOne!39116 r1!2370)) (regOne!39116 r1!2370))))))

(declare-fun b!7376150 () Bool)

(assert (=> b!7376150 (= e!4415527 (as set.empty (Set Context!16484)))))

(declare-fun b!7376151 () Bool)

(assert (=> b!7376151 (= e!4415526 (set.insert (Context!16485 ($colon$colon!3284 (exprs!8742 ct1!282) (regTwo!39116 r1!2370))) (as set.empty (Set Context!16484))))))

(assert (= (and d!2284636 c!1370945) b!7376151))

(assert (= (and d!2284636 (not c!1370945)) b!7376146))

(assert (= (and b!7376146 c!1370944) b!7376143))

(assert (= (and b!7376146 (not c!1370944)) b!7376142))

(assert (= (and b!7376142 res!2975672) b!7376149))

(assert (= (and b!7376142 c!1370943) b!7376148))

(assert (= (and b!7376142 (not c!1370943)) b!7376144))

(assert (= (and b!7376144 c!1370946) b!7376145))

(assert (= (and b!7376144 (not c!1370946)) b!7376147))

(assert (= (and b!7376147 c!1370947) b!7376141))

(assert (= (and b!7376147 (not c!1370947)) b!7376150))

(assert (= (or b!7376145 b!7376141) bm!678056))

(assert (= (or b!7376145 b!7376141) bm!678057))

(assert (= (or b!7376148 bm!678057) bm!678055))

(assert (= (or b!7376148 bm!678056) bm!678059))

(assert (= (or b!7376143 b!7376148) bm!678054))

(assert (= (or b!7376143 bm!678055) bm!678058))

(declare-fun m!8027918 () Bool)

(assert (=> b!7376149 m!8027918))

(declare-fun m!8027920 () Bool)

(assert (=> bm!678054 m!8027920))

(declare-fun m!8027922 () Bool)

(assert (=> bm!678059 m!8027922))

(declare-fun m!8027924 () Bool)

(assert (=> bm!678058 m!8027924))

(declare-fun m!8027926 () Bool)

(assert (=> b!7376151 m!8027926))

(assert (=> b!7375979 d!2284636))

(declare-fun d!2284638 () Bool)

(assert (=> d!2284638 (= ($colon$colon!3284 (exprs!8742 ct1!282) (regTwo!39116 r1!2370)) (Cons!71674 (regTwo!39116 r1!2370) (exprs!8742 ct1!282)))))

(assert (=> b!7375979 d!2284638))

(declare-fun b!7376153 () Bool)

(declare-fun e!4415536 () Bool)

(declare-fun e!4415537 () Bool)

(assert (=> b!7376153 (= e!4415536 e!4415537)))

(declare-fun c!1370950 () Bool)

(assert (=> b!7376153 (= c!1370950 (is-Union!19302 r1!2370))))

(declare-fun b!7376154 () Bool)

(declare-fun e!4415535 () Bool)

(declare-fun call!678070 () Bool)

(assert (=> b!7376154 (= e!4415535 call!678070)))

(declare-fun call!678071 () Bool)

(declare-fun c!1370954 () Bool)

(declare-fun bm!678060 () Bool)

(assert (=> bm!678060 (= call!678071 (validRegex!9898 (ite c!1370954 (reg!19631 r1!2370) (ite c!1370950 (regTwo!39117 r1!2370) (regOne!39116 r1!2370)))))))

(declare-fun b!7376155 () Bool)

(declare-fun e!4415539 () Bool)

(assert (=> b!7376155 (= e!4415539 call!678071)))

(declare-fun b!7376156 () Bool)

(declare-fun res!2975673 () Bool)

(declare-fun e!4415538 () Bool)

(assert (=> b!7376156 (=> res!2975673 e!4415538)))

(assert (=> b!7376156 (= res!2975673 (not (is-Concat!28147 r1!2370)))))

(assert (=> b!7376156 (= e!4415537 e!4415538)))

(declare-fun bm!678061 () Bool)

(assert (=> bm!678061 (= call!678070 call!678071)))

(declare-fun bm!678062 () Bool)

(declare-fun call!678073 () Bool)

(assert (=> bm!678062 (= call!678073 (validRegex!9898 (ite c!1370950 (regOne!39117 r1!2370) (regTwo!39116 r1!2370))))))

(declare-fun b!7376159 () Bool)

(declare-fun e!4415533 () Bool)

(assert (=> b!7376159 (= e!4415533 e!4415536)))

(assert (=> b!7376159 (= c!1370954 (is-Star!19302 r1!2370))))

(declare-fun b!7376160 () Bool)

(declare-fun res!2975677 () Bool)

(assert (=> b!7376160 (=> (not res!2975677) (not e!4415535))))

(assert (=> b!7376160 (= res!2975677 call!678073)))

(assert (=> b!7376160 (= e!4415537 e!4415535)))

(declare-fun b!7376162 () Bool)

(assert (=> b!7376162 (= e!4415536 e!4415539)))

(declare-fun res!2975676 () Bool)

(assert (=> b!7376162 (= res!2975676 (not (nullable!8378 (reg!19631 r1!2370))))))

(assert (=> b!7376162 (=> (not res!2975676) (not e!4415539))))

(declare-fun b!7376163 () Bool)

(declare-fun e!4415540 () Bool)

(assert (=> b!7376163 (= e!4415538 e!4415540)))

(declare-fun res!2975675 () Bool)

(assert (=> b!7376163 (=> (not res!2975675) (not e!4415540))))

(assert (=> b!7376163 (= res!2975675 call!678070)))

(declare-fun b!7376157 () Bool)

(assert (=> b!7376157 (= e!4415540 call!678073)))

(declare-fun d!2284640 () Bool)

(declare-fun res!2975674 () Bool)

(assert (=> d!2284640 (=> res!2975674 e!4415533)))

(assert (=> d!2284640 (= res!2975674 (is-ElementMatch!19302 r1!2370))))

(assert (=> d!2284640 (= (validRegex!9898 r1!2370) e!4415533)))

(assert (= (and d!2284640 (not res!2975674)) b!7376159))

(assert (= (and b!7376159 c!1370954) b!7376162))

(assert (= (and b!7376159 (not c!1370954)) b!7376153))

(assert (= (and b!7376162 res!2975676) b!7376155))

(assert (= (and b!7376153 c!1370950) b!7376160))

(assert (= (and b!7376153 (not c!1370950)) b!7376156))

(assert (= (and b!7376160 res!2975677) b!7376154))

(assert (= (and b!7376156 (not res!2975673)) b!7376163))

(assert (= (and b!7376163 res!2975675) b!7376157))

(assert (= (or b!7376160 b!7376157) bm!678062))

(assert (= (or b!7376154 b!7376163) bm!678061))

(assert (= (or b!7376155 bm!678061) bm!678060))

(declare-fun m!8027928 () Bool)

(assert (=> bm!678060 m!8027928))

(declare-fun m!8027930 () Bool)

(assert (=> bm!678062 m!8027930))

(declare-fun m!8027932 () Bool)

(assert (=> b!7376162 m!8027932))

(assert (=> start!719730 d!2284640))

(declare-fun bs!1921240 () Bool)

(declare-fun d!2284642 () Bool)

(assert (= bs!1921240 (and d!2284642 b!7375972)))

(declare-fun lambda!458296 () Int)

(assert (=> bs!1921240 (= lambda!458296 lambda!458290)))

(assert (=> d!2284642 (= (inv!91596 cWitness!61) (forall!18098 (exprs!8742 cWitness!61) lambda!458296))))

(declare-fun bs!1921241 () Bool)

(assert (= bs!1921241 d!2284642))

(declare-fun m!8027936 () Bool)

(assert (=> bs!1921241 m!8027936))

(assert (=> start!719730 d!2284642))

(declare-fun bs!1921242 () Bool)

(declare-fun d!2284644 () Bool)

(assert (= bs!1921242 (and d!2284644 b!7375972)))

(declare-fun lambda!458297 () Int)

(assert (=> bs!1921242 (= lambda!458297 lambda!458290)))

(declare-fun bs!1921243 () Bool)

(assert (= bs!1921243 (and d!2284644 d!2284642)))

(assert (=> bs!1921243 (= lambda!458297 lambda!458296)))

(assert (=> d!2284644 (= (inv!91596 ct1!282) (forall!18098 (exprs!8742 ct1!282) lambda!458297))))

(declare-fun bs!1921244 () Bool)

(assert (= bs!1921244 d!2284644))

(declare-fun m!8027942 () Bool)

(assert (=> bs!1921244 m!8027942))

(assert (=> start!719730 d!2284644))

(declare-fun bs!1921245 () Bool)

(declare-fun d!2284646 () Bool)

(assert (= bs!1921245 (and d!2284646 b!7375972)))

(declare-fun lambda!458298 () Int)

(assert (=> bs!1921245 (= lambda!458298 lambda!458290)))

(declare-fun bs!1921246 () Bool)

(assert (= bs!1921246 (and d!2284646 d!2284642)))

(assert (=> bs!1921246 (= lambda!458298 lambda!458296)))

(declare-fun bs!1921247 () Bool)

(assert (= bs!1921247 (and d!2284646 d!2284644)))

(assert (=> bs!1921247 (= lambda!458298 lambda!458297)))

(assert (=> d!2284646 (= (inv!91596 ct2!378) (forall!18098 (exprs!8742 ct2!378) lambda!458298))))

(declare-fun bs!1921248 () Bool)

(assert (= bs!1921248 d!2284646))

(declare-fun m!8027946 () Bool)

(assert (=> bs!1921248 m!8027946))

(assert (=> start!719730 d!2284646))

(declare-fun b!7376172 () Bool)

(declare-fun e!4415543 () Bool)

(declare-fun e!4415544 () Bool)

(assert (=> b!7376172 (= e!4415543 e!4415544)))

(declare-fun c!1370955 () Bool)

(assert (=> b!7376172 (= c!1370955 (is-Union!19302 (regOne!39116 r1!2370)))))

(declare-fun b!7376173 () Bool)

(declare-fun e!4415542 () Bool)

(declare-fun call!678074 () Bool)

(assert (=> b!7376173 (= e!4415542 call!678074)))

(declare-fun bm!678069 () Bool)

(declare-fun call!678075 () Bool)

(declare-fun c!1370956 () Bool)

(assert (=> bm!678069 (= call!678075 (validRegex!9898 (ite c!1370956 (reg!19631 (regOne!39116 r1!2370)) (ite c!1370955 (regTwo!39117 (regOne!39116 r1!2370)) (regOne!39116 (regOne!39116 r1!2370))))))))

(declare-fun b!7376174 () Bool)

(declare-fun e!4415546 () Bool)

(assert (=> b!7376174 (= e!4415546 call!678075)))

(declare-fun b!7376175 () Bool)

(declare-fun res!2975679 () Bool)

(declare-fun e!4415545 () Bool)

(assert (=> b!7376175 (=> res!2975679 e!4415545)))

(assert (=> b!7376175 (= res!2975679 (not (is-Concat!28147 (regOne!39116 r1!2370))))))

(assert (=> b!7376175 (= e!4415544 e!4415545)))

(declare-fun bm!678070 () Bool)

(assert (=> bm!678070 (= call!678074 call!678075)))

(declare-fun bm!678071 () Bool)

(declare-fun call!678076 () Bool)

(assert (=> bm!678071 (= call!678076 (validRegex!9898 (ite c!1370955 (regOne!39117 (regOne!39116 r1!2370)) (regTwo!39116 (regOne!39116 r1!2370)))))))

(declare-fun b!7376177 () Bool)

(declare-fun e!4415541 () Bool)

(assert (=> b!7376177 (= e!4415541 e!4415543)))

(assert (=> b!7376177 (= c!1370956 (is-Star!19302 (regOne!39116 r1!2370)))))

(declare-fun b!7376178 () Bool)

(declare-fun res!2975683 () Bool)

(assert (=> b!7376178 (=> (not res!2975683) (not e!4415542))))

(assert (=> b!7376178 (= res!2975683 call!678076)))

(assert (=> b!7376178 (= e!4415544 e!4415542)))

(declare-fun b!7376179 () Bool)

(assert (=> b!7376179 (= e!4415543 e!4415546)))

(declare-fun res!2975682 () Bool)

(assert (=> b!7376179 (= res!2975682 (not (nullable!8378 (reg!19631 (regOne!39116 r1!2370)))))))

(assert (=> b!7376179 (=> (not res!2975682) (not e!4415546))))

(declare-fun b!7376180 () Bool)

(declare-fun e!4415547 () Bool)

(assert (=> b!7376180 (= e!4415545 e!4415547)))

(declare-fun res!2975681 () Bool)

(assert (=> b!7376180 (=> (not res!2975681) (not e!4415547))))

(assert (=> b!7376180 (= res!2975681 call!678074)))

(declare-fun b!7376176 () Bool)

(assert (=> b!7376176 (= e!4415547 call!678076)))

(declare-fun d!2284650 () Bool)

(declare-fun res!2975680 () Bool)

(assert (=> d!2284650 (=> res!2975680 e!4415541)))

(assert (=> d!2284650 (= res!2975680 (is-ElementMatch!19302 (regOne!39116 r1!2370)))))

(assert (=> d!2284650 (= (validRegex!9898 (regOne!39116 r1!2370)) e!4415541)))

(assert (= (and d!2284650 (not res!2975680)) b!7376177))

(assert (= (and b!7376177 c!1370956) b!7376179))

(assert (= (and b!7376177 (not c!1370956)) b!7376172))

(assert (= (and b!7376179 res!2975682) b!7376174))

(assert (= (and b!7376172 c!1370955) b!7376178))

(assert (= (and b!7376172 (not c!1370955)) b!7376175))

(assert (= (and b!7376178 res!2975683) b!7376173))

(assert (= (and b!7376175 (not res!2975679)) b!7376180))

(assert (= (and b!7376180 res!2975681) b!7376176))

(assert (= (or b!7376178 b!7376176) bm!678071))

(assert (= (or b!7376173 b!7376180) bm!678070))

(assert (= (or b!7376174 bm!678070) bm!678069))

(declare-fun m!8027948 () Bool)

(assert (=> bm!678069 m!8027948))

(declare-fun m!8027950 () Bool)

(assert (=> bm!678071 m!8027950))

(declare-fun m!8027952 () Bool)

(assert (=> b!7376179 m!8027952))

(assert (=> b!7375980 d!2284650))

(declare-fun b!7376228 () Bool)

(declare-fun e!4415581 () Int)

(assert (=> b!7376228 (= e!4415581 1)))

(declare-fun b!7376229 () Bool)

(declare-fun e!4415576 () Bool)

(declare-fun e!4415580 () Bool)

(assert (=> b!7376229 (= e!4415576 e!4415580)))

(declare-fun c!1370976 () Bool)

(assert (=> b!7376229 (= c!1370976 (is-Union!19302 (regOne!39116 r1!2370)))))

(declare-fun call!678094 () Int)

(declare-fun bm!678086 () Bool)

(declare-fun c!1370978 () Bool)

(assert (=> bm!678086 (= call!678094 (regexDepth!442 (ite c!1370976 (regOne!39117 (regOne!39116 r1!2370)) (ite c!1370978 (regOne!39116 (regOne!39116 r1!2370)) (reg!19631 (regOne!39116 r1!2370))))))))

(declare-fun b!7376230 () Bool)

(declare-fun c!1370975 () Bool)

(assert (=> b!7376230 (= c!1370975 (is-Star!19302 (regOne!39116 r1!2370)))))

(declare-fun e!4415577 () Bool)

(declare-fun e!4415582 () Bool)

(assert (=> b!7376230 (= e!4415577 e!4415582)))

(declare-fun b!7376231 () Bool)

(declare-fun res!2975698 () Bool)

(declare-fun e!4415574 () Bool)

(assert (=> b!7376231 (=> (not res!2975698) (not e!4415574))))

(declare-fun lt!2616275 () Int)

(declare-fun call!678091 () Int)

(assert (=> b!7376231 (= res!2975698 (> lt!2616275 call!678091))))

(assert (=> b!7376231 (= e!4415577 e!4415574)))

(declare-fun bm!678087 () Bool)

(declare-fun call!678097 () Int)

(declare-fun call!678096 () Int)

(assert (=> bm!678087 (= call!678097 call!678096)))

(declare-fun bm!678088 () Bool)

(assert (=> bm!678088 (= call!678091 call!678094)))

(declare-fun b!7376232 () Bool)

(declare-fun e!4415579 () Bool)

(assert (=> b!7376232 (= e!4415580 e!4415579)))

(declare-fun res!2975696 () Bool)

(assert (=> b!7376232 (= res!2975696 (> lt!2616275 call!678094))))

(assert (=> b!7376232 (=> (not res!2975696) (not e!4415579))))

(declare-fun b!7376233 () Bool)

(assert (=> b!7376233 (= e!4415582 (= lt!2616275 1))))

(declare-fun b!7376234 () Bool)

(assert (=> b!7376234 (= e!4415580 e!4415577)))

(assert (=> b!7376234 (= c!1370978 (is-Concat!28147 (regOne!39116 r1!2370)))))

(declare-fun b!7376235 () Bool)

(declare-fun e!4415583 () Int)

(declare-fun call!678092 () Int)

(assert (=> b!7376235 (= e!4415583 (+ 1 call!678092))))

(declare-fun b!7376236 () Bool)

(declare-fun e!4415578 () Int)

(declare-fun e!4415575 () Int)

(assert (=> b!7376236 (= e!4415578 e!4415575)))

(declare-fun c!1370979 () Bool)

(assert (=> b!7376236 (= c!1370979 (is-Star!19302 (regOne!39116 r1!2370)))))

(declare-fun b!7376237 () Bool)

(declare-fun call!678095 () Int)

(assert (=> b!7376237 (= e!4415579 (> lt!2616275 call!678095))))

(declare-fun b!7376238 () Bool)

(assert (=> b!7376238 (= e!4415582 (> lt!2616275 call!678091))))

(declare-fun bm!678089 () Bool)

(declare-fun call!678093 () Int)

(declare-fun c!1370977 () Bool)

(assert (=> bm!678089 (= call!678093 (regexDepth!442 (ite c!1370977 (regOne!39117 (regOne!39116 r1!2370)) (regTwo!39116 (regOne!39116 r1!2370)))))))

(declare-fun b!7376239 () Bool)

(assert (=> b!7376239 (= c!1370977 (is-Union!19302 (regOne!39116 r1!2370)))))

(assert (=> b!7376239 (= e!4415575 e!4415583)))

(declare-fun b!7376227 () Bool)

(assert (=> b!7376227 (= e!4415583 e!4415581)))

(declare-fun c!1370974 () Bool)

(assert (=> b!7376227 (= c!1370974 (is-Concat!28147 (regOne!39116 r1!2370)))))

(declare-fun d!2284652 () Bool)

(assert (=> d!2284652 e!4415576))

(declare-fun res!2975697 () Bool)

(assert (=> d!2284652 (=> (not res!2975697) (not e!4415576))))

(assert (=> d!2284652 (= res!2975697 (> lt!2616275 0))))

(assert (=> d!2284652 (= lt!2616275 e!4415578)))

(declare-fun c!1370980 () Bool)

(assert (=> d!2284652 (= c!1370980 (is-ElementMatch!19302 (regOne!39116 r1!2370)))))

(assert (=> d!2284652 (= (regexDepth!442 (regOne!39116 r1!2370)) lt!2616275)))

(declare-fun b!7376240 () Bool)

(assert (=> b!7376240 (= e!4415575 (+ 1 call!678096))))

(declare-fun b!7376241 () Bool)

(assert (=> b!7376241 (= e!4415581 (+ 1 call!678092))))

(declare-fun b!7376242 () Bool)

(assert (=> b!7376242 (= e!4415578 1)))

(declare-fun b!7376243 () Bool)

(assert (=> b!7376243 (= e!4415574 (> lt!2616275 call!678095))))

(declare-fun bm!678090 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!678090 (= call!678092 (maxBigInt!0 (ite c!1370977 call!678093 call!678097) (ite c!1370977 call!678097 call!678093)))))

(declare-fun bm!678091 () Bool)

(assert (=> bm!678091 (= call!678095 (regexDepth!442 (ite c!1370976 (regTwo!39117 (regOne!39116 r1!2370)) (regTwo!39116 (regOne!39116 r1!2370)))))))

(declare-fun bm!678092 () Bool)

(assert (=> bm!678092 (= call!678096 (regexDepth!442 (ite c!1370979 (reg!19631 (regOne!39116 r1!2370)) (ite c!1370977 (regTwo!39117 (regOne!39116 r1!2370)) (regOne!39116 (regOne!39116 r1!2370))))))))

(assert (= (and d!2284652 c!1370980) b!7376242))

(assert (= (and d!2284652 (not c!1370980)) b!7376236))

(assert (= (and b!7376236 c!1370979) b!7376240))

(assert (= (and b!7376236 (not c!1370979)) b!7376239))

(assert (= (and b!7376239 c!1370977) b!7376235))

(assert (= (and b!7376239 (not c!1370977)) b!7376227))

(assert (= (and b!7376227 c!1370974) b!7376241))

(assert (= (and b!7376227 (not c!1370974)) b!7376228))

(assert (= (or b!7376235 b!7376241) bm!678087))

(assert (= (or b!7376235 b!7376241) bm!678089))

(assert (= (or b!7376235 b!7376241) bm!678090))

(assert (= (or b!7376240 bm!678087) bm!678092))

(assert (= (and d!2284652 res!2975697) b!7376229))

(assert (= (and b!7376229 c!1370976) b!7376232))

(assert (= (and b!7376229 (not c!1370976)) b!7376234))

(assert (= (and b!7376232 res!2975696) b!7376237))

(assert (= (and b!7376234 c!1370978) b!7376231))

(assert (= (and b!7376234 (not c!1370978)) b!7376230))

(assert (= (and b!7376231 res!2975698) b!7376243))

(assert (= (and b!7376230 c!1370975) b!7376238))

(assert (= (and b!7376230 (not c!1370975)) b!7376233))

(assert (= (or b!7376231 b!7376238) bm!678088))

(assert (= (or b!7376237 b!7376243) bm!678091))

(assert (= (or b!7376232 bm!678088) bm!678086))

(declare-fun m!8027968 () Bool)

(assert (=> bm!678089 m!8027968))

(declare-fun m!8027970 () Bool)

(assert (=> bm!678092 m!8027970))

(declare-fun m!8027972 () Bool)

(assert (=> bm!678091 m!8027972))

(declare-fun m!8027974 () Bool)

(assert (=> bm!678086 m!8027974))

(declare-fun m!8027976 () Bool)

(assert (=> bm!678090 m!8027976))

(assert (=> b!7375976 d!2284652))

(declare-fun b!7376245 () Bool)

(declare-fun e!4415591 () Int)

(assert (=> b!7376245 (= e!4415591 1)))

(declare-fun b!7376246 () Bool)

(declare-fun e!4415586 () Bool)

(declare-fun e!4415590 () Bool)

(assert (=> b!7376246 (= e!4415586 e!4415590)))

(declare-fun c!1370983 () Bool)

(assert (=> b!7376246 (= c!1370983 (is-Union!19302 r1!2370))))

(declare-fun call!678101 () Int)

(declare-fun bm!678093 () Bool)

(declare-fun c!1370985 () Bool)

(assert (=> bm!678093 (= call!678101 (regexDepth!442 (ite c!1370983 (regOne!39117 r1!2370) (ite c!1370985 (regOne!39116 r1!2370) (reg!19631 r1!2370)))))))

(declare-fun b!7376247 () Bool)

(declare-fun c!1370982 () Bool)

(assert (=> b!7376247 (= c!1370982 (is-Star!19302 r1!2370))))

(declare-fun e!4415587 () Bool)

(declare-fun e!4415592 () Bool)

(assert (=> b!7376247 (= e!4415587 e!4415592)))

(declare-fun b!7376248 () Bool)

(declare-fun res!2975701 () Bool)

(declare-fun e!4415584 () Bool)

(assert (=> b!7376248 (=> (not res!2975701) (not e!4415584))))

(declare-fun lt!2616276 () Int)

(declare-fun call!678098 () Int)

(assert (=> b!7376248 (= res!2975701 (> lt!2616276 call!678098))))

(assert (=> b!7376248 (= e!4415587 e!4415584)))

(declare-fun bm!678094 () Bool)

(declare-fun call!678104 () Int)

(declare-fun call!678103 () Int)

(assert (=> bm!678094 (= call!678104 call!678103)))

(declare-fun bm!678095 () Bool)

(assert (=> bm!678095 (= call!678098 call!678101)))

(declare-fun b!7376249 () Bool)

(declare-fun e!4415589 () Bool)

(assert (=> b!7376249 (= e!4415590 e!4415589)))

(declare-fun res!2975699 () Bool)

(assert (=> b!7376249 (= res!2975699 (> lt!2616276 call!678101))))

(assert (=> b!7376249 (=> (not res!2975699) (not e!4415589))))

(declare-fun b!7376250 () Bool)

(assert (=> b!7376250 (= e!4415592 (= lt!2616276 1))))

(declare-fun b!7376251 () Bool)

(assert (=> b!7376251 (= e!4415590 e!4415587)))

(assert (=> b!7376251 (= c!1370985 (is-Concat!28147 r1!2370))))

(declare-fun b!7376252 () Bool)

(declare-fun e!4415593 () Int)

(declare-fun call!678099 () Int)

(assert (=> b!7376252 (= e!4415593 (+ 1 call!678099))))

(declare-fun b!7376253 () Bool)

(declare-fun e!4415588 () Int)

(declare-fun e!4415585 () Int)

(assert (=> b!7376253 (= e!4415588 e!4415585)))

(declare-fun c!1370986 () Bool)

(assert (=> b!7376253 (= c!1370986 (is-Star!19302 r1!2370))))

(declare-fun b!7376254 () Bool)

(declare-fun call!678102 () Int)

(assert (=> b!7376254 (= e!4415589 (> lt!2616276 call!678102))))

(declare-fun b!7376255 () Bool)

(assert (=> b!7376255 (= e!4415592 (> lt!2616276 call!678098))))

(declare-fun bm!678096 () Bool)

(declare-fun call!678100 () Int)

(declare-fun c!1370984 () Bool)

(assert (=> bm!678096 (= call!678100 (regexDepth!442 (ite c!1370984 (regOne!39117 r1!2370) (regTwo!39116 r1!2370))))))

(declare-fun b!7376256 () Bool)

(assert (=> b!7376256 (= c!1370984 (is-Union!19302 r1!2370))))

(assert (=> b!7376256 (= e!4415585 e!4415593)))

(declare-fun b!7376244 () Bool)

(assert (=> b!7376244 (= e!4415593 e!4415591)))

(declare-fun c!1370981 () Bool)

(assert (=> b!7376244 (= c!1370981 (is-Concat!28147 r1!2370))))

(declare-fun d!2284656 () Bool)

(assert (=> d!2284656 e!4415586))

(declare-fun res!2975700 () Bool)

(assert (=> d!2284656 (=> (not res!2975700) (not e!4415586))))

(assert (=> d!2284656 (= res!2975700 (> lt!2616276 0))))

(assert (=> d!2284656 (= lt!2616276 e!4415588)))

(declare-fun c!1370987 () Bool)

(assert (=> d!2284656 (= c!1370987 (is-ElementMatch!19302 r1!2370))))

(assert (=> d!2284656 (= (regexDepth!442 r1!2370) lt!2616276)))

(declare-fun b!7376257 () Bool)

(assert (=> b!7376257 (= e!4415585 (+ 1 call!678103))))

(declare-fun b!7376258 () Bool)

(assert (=> b!7376258 (= e!4415591 (+ 1 call!678099))))

(declare-fun b!7376259 () Bool)

(assert (=> b!7376259 (= e!4415588 1)))

(declare-fun b!7376260 () Bool)

(assert (=> b!7376260 (= e!4415584 (> lt!2616276 call!678102))))

(declare-fun bm!678097 () Bool)

(assert (=> bm!678097 (= call!678099 (maxBigInt!0 (ite c!1370984 call!678100 call!678104) (ite c!1370984 call!678104 call!678100)))))

(declare-fun bm!678098 () Bool)

(assert (=> bm!678098 (= call!678102 (regexDepth!442 (ite c!1370983 (regTwo!39117 r1!2370) (regTwo!39116 r1!2370))))))

(declare-fun bm!678099 () Bool)

(assert (=> bm!678099 (= call!678103 (regexDepth!442 (ite c!1370986 (reg!19631 r1!2370) (ite c!1370984 (regTwo!39117 r1!2370) (regOne!39116 r1!2370)))))))

(assert (= (and d!2284656 c!1370987) b!7376259))

(assert (= (and d!2284656 (not c!1370987)) b!7376253))

(assert (= (and b!7376253 c!1370986) b!7376257))

(assert (= (and b!7376253 (not c!1370986)) b!7376256))

(assert (= (and b!7376256 c!1370984) b!7376252))

(assert (= (and b!7376256 (not c!1370984)) b!7376244))

(assert (= (and b!7376244 c!1370981) b!7376258))

(assert (= (and b!7376244 (not c!1370981)) b!7376245))

(assert (= (or b!7376252 b!7376258) bm!678094))

(assert (= (or b!7376252 b!7376258) bm!678096))

(assert (= (or b!7376252 b!7376258) bm!678097))

(assert (= (or b!7376257 bm!678094) bm!678099))

(assert (= (and d!2284656 res!2975700) b!7376246))

(assert (= (and b!7376246 c!1370983) b!7376249))

(assert (= (and b!7376246 (not c!1370983)) b!7376251))

(assert (= (and b!7376249 res!2975699) b!7376254))

(assert (= (and b!7376251 c!1370985) b!7376248))

(assert (= (and b!7376251 (not c!1370985)) b!7376247))

(assert (= (and b!7376248 res!2975701) b!7376260))

(assert (= (and b!7376247 c!1370982) b!7376255))

(assert (= (and b!7376247 (not c!1370982)) b!7376250))

(assert (= (or b!7376248 b!7376255) bm!678095))

(assert (= (or b!7376254 b!7376260) bm!678098))

(assert (= (or b!7376249 bm!678095) bm!678093))

(declare-fun m!8027978 () Bool)

(assert (=> bm!678096 m!8027978))

(declare-fun m!8027980 () Bool)

(assert (=> bm!678099 m!8027980))

(declare-fun m!8027982 () Bool)

(assert (=> bm!678098 m!8027982))

(declare-fun m!8027984 () Bool)

(assert (=> bm!678093 m!8027984))

(declare-fun m!8027986 () Bool)

(assert (=> bm!678097 m!8027986))

(assert (=> b!7375976 d!2284656))

(declare-fun b!7376265 () Bool)

(declare-fun e!4415596 () Bool)

(declare-fun tp!2097464 () Bool)

(declare-fun tp!2097465 () Bool)

(assert (=> b!7376265 (= e!4415596 (and tp!2097464 tp!2097465))))

(assert (=> b!7375978 (= tp!2097429 e!4415596)))

(assert (= (and b!7375978 (is-Cons!71674 (exprs!8742 ct2!378))) b!7376265))

(declare-fun b!7376277 () Bool)

(declare-fun e!4415599 () Bool)

(declare-fun tp!2097477 () Bool)

(declare-fun tp!2097479 () Bool)

(assert (=> b!7376277 (= e!4415599 (and tp!2097477 tp!2097479))))

(declare-fun b!7376279 () Bool)

(declare-fun tp!2097480 () Bool)

(declare-fun tp!2097478 () Bool)

(assert (=> b!7376279 (= e!4415599 (and tp!2097480 tp!2097478))))

(declare-fun b!7376276 () Bool)

(assert (=> b!7376276 (= e!4415599 tp_is_empty!48849)))

(declare-fun b!7376278 () Bool)

(declare-fun tp!2097476 () Bool)

(assert (=> b!7376278 (= e!4415599 tp!2097476)))

(assert (=> b!7375973 (= tp!2097430 e!4415599)))

(assert (= (and b!7375973 (is-ElementMatch!19302 (regOne!39116 r1!2370))) b!7376276))

(assert (= (and b!7375973 (is-Concat!28147 (regOne!39116 r1!2370))) b!7376277))

(assert (= (and b!7375973 (is-Star!19302 (regOne!39116 r1!2370))) b!7376278))

(assert (= (and b!7375973 (is-Union!19302 (regOne!39116 r1!2370))) b!7376279))

(declare-fun b!7376281 () Bool)

(declare-fun e!4415600 () Bool)

(declare-fun tp!2097482 () Bool)

(declare-fun tp!2097484 () Bool)

(assert (=> b!7376281 (= e!4415600 (and tp!2097482 tp!2097484))))

(declare-fun b!7376283 () Bool)

(declare-fun tp!2097485 () Bool)

(declare-fun tp!2097483 () Bool)

(assert (=> b!7376283 (= e!4415600 (and tp!2097485 tp!2097483))))

(declare-fun b!7376280 () Bool)

(assert (=> b!7376280 (= e!4415600 tp_is_empty!48849)))

(declare-fun b!7376282 () Bool)

(declare-fun tp!2097481 () Bool)

(assert (=> b!7376282 (= e!4415600 tp!2097481)))

(assert (=> b!7375973 (= tp!2097433 e!4415600)))

(assert (= (and b!7375973 (is-ElementMatch!19302 (regTwo!39116 r1!2370))) b!7376280))

(assert (= (and b!7375973 (is-Concat!28147 (regTwo!39116 r1!2370))) b!7376281))

(assert (= (and b!7375973 (is-Star!19302 (regTwo!39116 r1!2370))) b!7376282))

(assert (= (and b!7375973 (is-Union!19302 (regTwo!39116 r1!2370))) b!7376283))

(declare-fun b!7376285 () Bool)

(declare-fun e!4415601 () Bool)

(declare-fun tp!2097487 () Bool)

(declare-fun tp!2097489 () Bool)

(assert (=> b!7376285 (= e!4415601 (and tp!2097487 tp!2097489))))

(declare-fun b!7376287 () Bool)

(declare-fun tp!2097490 () Bool)

(declare-fun tp!2097488 () Bool)

(assert (=> b!7376287 (= e!4415601 (and tp!2097490 tp!2097488))))

(declare-fun b!7376284 () Bool)

(assert (=> b!7376284 (= e!4415601 tp_is_empty!48849)))

(declare-fun b!7376286 () Bool)

(declare-fun tp!2097486 () Bool)

(assert (=> b!7376286 (= e!4415601 tp!2097486)))

(assert (=> b!7375968 (= tp!2097435 e!4415601)))

(assert (= (and b!7375968 (is-ElementMatch!19302 (regOne!39117 r1!2370))) b!7376284))

(assert (= (and b!7375968 (is-Concat!28147 (regOne!39117 r1!2370))) b!7376285))

(assert (= (and b!7375968 (is-Star!19302 (regOne!39117 r1!2370))) b!7376286))

(assert (= (and b!7375968 (is-Union!19302 (regOne!39117 r1!2370))) b!7376287))

(declare-fun b!7376289 () Bool)

(declare-fun e!4415602 () Bool)

(declare-fun tp!2097492 () Bool)

(declare-fun tp!2097494 () Bool)

(assert (=> b!7376289 (= e!4415602 (and tp!2097492 tp!2097494))))

(declare-fun b!7376291 () Bool)

(declare-fun tp!2097495 () Bool)

(declare-fun tp!2097493 () Bool)

(assert (=> b!7376291 (= e!4415602 (and tp!2097495 tp!2097493))))

(declare-fun b!7376288 () Bool)

(assert (=> b!7376288 (= e!4415602 tp_is_empty!48849)))

(declare-fun b!7376290 () Bool)

(declare-fun tp!2097491 () Bool)

(assert (=> b!7376290 (= e!4415602 tp!2097491)))

(assert (=> b!7375968 (= tp!2097434 e!4415602)))

(assert (= (and b!7375968 (is-ElementMatch!19302 (regTwo!39117 r1!2370))) b!7376288))

(assert (= (and b!7375968 (is-Concat!28147 (regTwo!39117 r1!2370))) b!7376289))

(assert (= (and b!7375968 (is-Star!19302 (regTwo!39117 r1!2370))) b!7376290))

(assert (= (and b!7375968 (is-Union!19302 (regTwo!39117 r1!2370))) b!7376291))

(declare-fun b!7376293 () Bool)

(declare-fun e!4415603 () Bool)

(declare-fun tp!2097497 () Bool)

(declare-fun tp!2097499 () Bool)

(assert (=> b!7376293 (= e!4415603 (and tp!2097497 tp!2097499))))

(declare-fun b!7376295 () Bool)

(declare-fun tp!2097500 () Bool)

(declare-fun tp!2097498 () Bool)

(assert (=> b!7376295 (= e!4415603 (and tp!2097500 tp!2097498))))

(declare-fun b!7376292 () Bool)

(assert (=> b!7376292 (= e!4415603 tp_is_empty!48849)))

(declare-fun b!7376294 () Bool)

(declare-fun tp!2097496 () Bool)

(assert (=> b!7376294 (= e!4415603 tp!2097496)))

(assert (=> b!7375974 (= tp!2097431 e!4415603)))

(assert (= (and b!7375974 (is-ElementMatch!19302 (reg!19631 r1!2370))) b!7376292))

(assert (= (and b!7375974 (is-Concat!28147 (reg!19631 r1!2370))) b!7376293))

(assert (= (and b!7375974 (is-Star!19302 (reg!19631 r1!2370))) b!7376294))

(assert (= (and b!7375974 (is-Union!19302 (reg!19631 r1!2370))) b!7376295))

(declare-fun b!7376296 () Bool)

(declare-fun e!4415604 () Bool)

(declare-fun tp!2097501 () Bool)

(declare-fun tp!2097502 () Bool)

(assert (=> b!7376296 (= e!4415604 (and tp!2097501 tp!2097502))))

(assert (=> b!7375970 (= tp!2097432 e!4415604)))

(assert (= (and b!7375970 (is-Cons!71674 (exprs!8742 cWitness!61))) b!7376296))

(declare-fun b!7376297 () Bool)

(declare-fun e!4415605 () Bool)

(declare-fun tp!2097503 () Bool)

(declare-fun tp!2097504 () Bool)

(assert (=> b!7376297 (= e!4415605 (and tp!2097503 tp!2097504))))

(assert (=> b!7375981 (= tp!2097428 e!4415605)))

(assert (= (and b!7375981 (is-Cons!71674 (exprs!8742 ct1!282))) b!7376297))

(push 1)

(assert (not bm!678027))

(assert (not bm!678071))

(assert (not bm!678054))

(assert (not d!2284646))

(assert (not bm!678091))

(assert (not b!7376290))

(assert (not bm!678089))

(assert (not b!7376278))

(assert (not bm!678059))

(assert (not b!7376112))

(assert (not b!7376281))

(assert (not b!7376066))

(assert (not d!2284632))

(assert (not b!7376279))

(assert (not b!7376286))

(assert (not b!7376081))

(assert (not bm!678090))

(assert (not b!7376291))

(assert (not bm!678021))

(assert (not bm!678097))

(assert (not bm!678069))

(assert (not bm!678086))

(assert (not b!7376297))

(assert (not bm!678053))

(assert (not d!2284622))

(assert (not bm!678032))

(assert (not b!7376295))

(assert tp_is_empty!48849)

(assert (not bm!678026))

(assert (not d!2284642))

(assert (not b!7376277))

(assert (not bm!678060))

(assert (not b!7376282))

(assert (not bm!678096))

(assert (not bm!678031))

(assert (not b!7376293))

(assert (not bm!678092))

(assert (not bm!678062))

(assert (not b!7376265))

(assert (not bm!678051))

(assert (not bm!678098))

(assert (not b!7376111))

(assert (not b!7376139))

(assert (not bm!678099))

(assert (not d!2284630))

(assert (not b!7376289))

(assert (not b!7376283))

(assert (not bm!678093))

(assert (not b!7376287))

(assert (not b!7376285))

(assert (not b!7376294))

(assert (not d!2284644))

(assert (not b!7376296))

(assert (not b!7376162))

(assert (not b!7376179))

(assert (not bm!678058))

(assert (not bm!678025))

(assert (not b!7376149))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

