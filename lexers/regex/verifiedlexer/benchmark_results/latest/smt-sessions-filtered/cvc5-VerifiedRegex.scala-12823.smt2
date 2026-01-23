; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708224 () Bool)

(assert start!708224)

(declare-fun b!7263873 () Bool)

(assert (=> b!7263873 true))

(declare-fun b!7263868 () Bool)

(declare-fun e!4355979 () Bool)

(declare-fun tp!2040072 () Bool)

(assert (=> b!7263868 (= e!4355979 tp!2040072)))

(declare-fun b!7263869 () Bool)

(declare-fun res!2945019 () Bool)

(declare-fun e!4355981 () Bool)

(assert (=> b!7263869 (=> (not res!2945019) (not e!4355981))))

(declare-datatypes ((C!37782 0))(
  ( (C!37783 (val!28839 Int)) )
))
(declare-datatypes ((List!70823 0))(
  ( (Nil!70699) (Cons!70699 (h!77147 C!37782) (t!384889 List!70823)) )
))
(declare-fun s!7854 () List!70823)

(assert (=> b!7263869 (= res!2945019 (is-Cons!70699 s!7854))))

(declare-fun b!7263870 () Bool)

(declare-fun e!4355978 () Bool)

(declare-fun tp_is_empty!46973 () Bool)

(declare-fun tp!2040073 () Bool)

(assert (=> b!7263870 (= e!4355978 (and tp_is_empty!46973 tp!2040073))))

(declare-fun b!7263871 () Bool)

(declare-fun e!4355982 () Bool)

(declare-datatypes ((Regex!18754 0))(
  ( (ElementMatch!18754 (c!1351400 C!37782)) (Concat!27599 (regOne!38020 Regex!18754) (regTwo!38020 Regex!18754)) (EmptyExpr!18754) (Star!18754 (reg!19083 Regex!18754)) (EmptyLang!18754) (Union!18754 (regOne!38021 Regex!18754) (regTwo!38021 Regex!18754)) )
))
(declare-datatypes ((List!70824 0))(
  ( (Nil!70700) (Cons!70700 (h!77148 Regex!18754) (t!384890 List!70824)) )
))
(declare-datatypes ((Context!15388 0))(
  ( (Context!15389 (exprs!8194 List!70824)) )
))
(declare-fun ct2!346 () Context!15388)

(declare-fun lambda!447116 () Int)

(declare-fun forall!17589 (List!70824 Int) Bool)

(assert (=> b!7263871 (= e!4355982 (forall!17589 (exprs!8194 ct2!346) lambda!447116))))

(declare-fun b!7263872 () Bool)

(declare-fun res!2945018 () Bool)

(assert (=> b!7263872 (=> (not res!2945018) (not e!4355981))))

(declare-fun ct1!250 () Context!15388)

(declare-fun nullableContext!244 (Context!15388) Bool)

(assert (=> b!7263872 (= res!2945018 (nullableContext!244 ct1!250))))

(declare-fun res!2945017 () Bool)

(assert (=> start!708224 (=> (not res!2945017) (not e!4355981))))

(declare-fun matchZipper!3658 ((Set Context!15388) List!70823) Bool)

(assert (=> start!708224 (= res!2945017 (matchZipper!3658 (set.insert ct2!346 (as set.empty (Set Context!15388))) s!7854))))

(assert (=> start!708224 e!4355981))

(declare-fun e!4355980 () Bool)

(declare-fun inv!89896 (Context!15388) Bool)

(assert (=> start!708224 (and (inv!89896 ct2!346) e!4355980)))

(assert (=> start!708224 e!4355978))

(assert (=> start!708224 (and (inv!89896 ct1!250) e!4355979)))

(assert (=> b!7263873 (= e!4355981 (not e!4355982))))

(declare-fun res!2945016 () Bool)

(assert (=> b!7263873 (=> res!2945016 e!4355982)))

(assert (=> b!7263873 (= res!2945016 (not (forall!17589 (exprs!8194 ct1!250) lambda!447116)))))

(declare-fun lt!2591748 () Context!15388)

(declare-fun lambda!447117 () Int)

(declare-fun lt!2591750 () (Set Context!15388))

(declare-fun flatMap!2867 ((Set Context!15388) Int) (Set Context!15388))

(declare-fun derivationStepZipperUp!2524 (Context!15388 C!37782) (Set Context!15388))

(assert (=> b!7263873 (= (flatMap!2867 lt!2591750 lambda!447117) (derivationStepZipperUp!2524 lt!2591748 (h!77147 s!7854)))))

(declare-datatypes ((Unit!164126 0))(
  ( (Unit!164127) )
))
(declare-fun lt!2591743 () Unit!164126)

(declare-fun lemmaFlatMapOnSingletonSet!2267 ((Set Context!15388) Context!15388 Int) Unit!164126)

(assert (=> b!7263873 (= lt!2591743 (lemmaFlatMapOnSingletonSet!2267 lt!2591750 lt!2591748 lambda!447117))))

(assert (=> b!7263873 (= lt!2591750 (set.insert lt!2591748 (as set.empty (Set Context!15388))))))

(declare-fun lt!2591744 () Unit!164126)

(declare-fun lemmaConcatPreservesForall!1511 (List!70824 List!70824 Int) Unit!164126)

(assert (=> b!7263873 (= lt!2591744 (lemmaConcatPreservesForall!1511 (exprs!8194 ct1!250) (exprs!8194 ct2!346) lambda!447116))))

(declare-fun lt!2591747 () Unit!164126)

(assert (=> b!7263873 (= lt!2591747 (lemmaConcatPreservesForall!1511 (exprs!8194 ct1!250) (exprs!8194 ct2!346) lambda!447116))))

(declare-fun lt!2591746 () (Set Context!15388))

(assert (=> b!7263873 (= (flatMap!2867 lt!2591746 lambda!447117) (derivationStepZipperUp!2524 ct1!250 (h!77147 s!7854)))))

(declare-fun lt!2591745 () Unit!164126)

(assert (=> b!7263873 (= lt!2591745 (lemmaFlatMapOnSingletonSet!2267 lt!2591746 ct1!250 lambda!447117))))

(assert (=> b!7263873 (= lt!2591746 (set.insert ct1!250 (as set.empty (Set Context!15388))))))

(declare-fun lt!2591742 () (Set Context!15388))

(assert (=> b!7263873 (= lt!2591742 (derivationStepZipperUp!2524 lt!2591748 (h!77147 s!7854)))))

(declare-fun ++!16654 (List!70824 List!70824) List!70824)

(assert (=> b!7263873 (= lt!2591748 (Context!15389 (++!16654 (exprs!8194 ct1!250) (exprs!8194 ct2!346))))))

(declare-fun lt!2591749 () Unit!164126)

(assert (=> b!7263873 (= lt!2591749 (lemmaConcatPreservesForall!1511 (exprs!8194 ct1!250) (exprs!8194 ct2!346) lambda!447116))))

(declare-fun b!7263874 () Bool)

(declare-fun tp!2040071 () Bool)

(assert (=> b!7263874 (= e!4355980 tp!2040071)))

(assert (= (and start!708224 res!2945017) b!7263872))

(assert (= (and b!7263872 res!2945018) b!7263869))

(assert (= (and b!7263869 res!2945019) b!7263873))

(assert (= (and b!7263873 (not res!2945016)) b!7263871))

(assert (= start!708224 b!7263874))

(assert (= (and start!708224 (is-Cons!70699 s!7854)) b!7263870))

(assert (= start!708224 b!7263868))

(declare-fun m!7948566 () Bool)

(assert (=> b!7263871 m!7948566))

(declare-fun m!7948568 () Bool)

(assert (=> b!7263872 m!7948568))

(declare-fun m!7948570 () Bool)

(assert (=> start!708224 m!7948570))

(assert (=> start!708224 m!7948570))

(declare-fun m!7948572 () Bool)

(assert (=> start!708224 m!7948572))

(declare-fun m!7948574 () Bool)

(assert (=> start!708224 m!7948574))

(declare-fun m!7948576 () Bool)

(assert (=> start!708224 m!7948576))

(declare-fun m!7948578 () Bool)

(assert (=> b!7263873 m!7948578))

(declare-fun m!7948580 () Bool)

(assert (=> b!7263873 m!7948580))

(declare-fun m!7948582 () Bool)

(assert (=> b!7263873 m!7948582))

(declare-fun m!7948584 () Bool)

(assert (=> b!7263873 m!7948584))

(declare-fun m!7948586 () Bool)

(assert (=> b!7263873 m!7948586))

(declare-fun m!7948588 () Bool)

(assert (=> b!7263873 m!7948588))

(declare-fun m!7948590 () Bool)

(assert (=> b!7263873 m!7948590))

(declare-fun m!7948592 () Bool)

(assert (=> b!7263873 m!7948592))

(assert (=> b!7263873 m!7948592))

(declare-fun m!7948594 () Bool)

(assert (=> b!7263873 m!7948594))

(declare-fun m!7948596 () Bool)

(assert (=> b!7263873 m!7948596))

(assert (=> b!7263873 m!7948592))

(declare-fun m!7948598 () Bool)

(assert (=> b!7263873 m!7948598))

(push 1)

(assert (not b!7263868))

(assert (not b!7263870))

(assert (not b!7263873))

(assert (not start!708224))

(assert (not b!7263874))

(assert tp_is_empty!46973)

(assert (not b!7263871))

(assert (not b!7263872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259882 () Bool)

(assert (=> d!2259882 (forall!17589 (++!16654 (exprs!8194 ct1!250) (exprs!8194 ct2!346)) lambda!447116)))

(declare-fun lt!2591782 () Unit!164126)

(declare-fun choose!56281 (List!70824 List!70824 Int) Unit!164126)

(assert (=> d!2259882 (= lt!2591782 (choose!56281 (exprs!8194 ct1!250) (exprs!8194 ct2!346) lambda!447116))))

(assert (=> d!2259882 (forall!17589 (exprs!8194 ct1!250) lambda!447116)))

(assert (=> d!2259882 (= (lemmaConcatPreservesForall!1511 (exprs!8194 ct1!250) (exprs!8194 ct2!346) lambda!447116) lt!2591782)))

(declare-fun bs!1909955 () Bool)

(assert (= bs!1909955 d!2259882))

(assert (=> bs!1909955 m!7948596))

(assert (=> bs!1909955 m!7948596))

(declare-fun m!7948634 () Bool)

(assert (=> bs!1909955 m!7948634))

(declare-fun m!7948636 () Bool)

(assert (=> bs!1909955 m!7948636))

(assert (=> bs!1909955 m!7948590))

(assert (=> b!7263873 d!2259882))

(declare-fun b!7263910 () Bool)

(declare-fun e!4356006 () (Set Context!15388))

(declare-fun call!661840 () (Set Context!15388))

(assert (=> b!7263910 (= e!4356006 call!661840)))

(declare-fun bm!661835 () Bool)

(declare-fun derivationStepZipperDown!2690 (Regex!18754 Context!15388 C!37782) (Set Context!15388))

(assert (=> bm!661835 (= call!661840 (derivationStepZipperDown!2690 (h!77148 (exprs!8194 ct1!250)) (Context!15389 (t!384890 (exprs!8194 ct1!250))) (h!77147 s!7854)))))

(declare-fun e!4356005 () (Set Context!15388))

(declare-fun b!7263911 () Bool)

(assert (=> b!7263911 (= e!4356005 (set.union call!661840 (derivationStepZipperUp!2524 (Context!15389 (t!384890 (exprs!8194 ct1!250))) (h!77147 s!7854))))))

(declare-fun d!2259884 () Bool)

(declare-fun c!1351411 () Bool)

(declare-fun e!4356004 () Bool)

(assert (=> d!2259884 (= c!1351411 e!4356004)))

(declare-fun res!2945034 () Bool)

(assert (=> d!2259884 (=> (not res!2945034) (not e!4356004))))

(assert (=> d!2259884 (= res!2945034 (is-Cons!70700 (exprs!8194 ct1!250)))))

(assert (=> d!2259884 (= (derivationStepZipperUp!2524 ct1!250 (h!77147 s!7854)) e!4356005)))

(declare-fun b!7263912 () Bool)

(assert (=> b!7263912 (= e!4356005 e!4356006)))

(declare-fun c!1351410 () Bool)

(assert (=> b!7263912 (= c!1351410 (is-Cons!70700 (exprs!8194 ct1!250)))))

(declare-fun b!7263913 () Bool)

(declare-fun nullable!7956 (Regex!18754) Bool)

(assert (=> b!7263913 (= e!4356004 (nullable!7956 (h!77148 (exprs!8194 ct1!250))))))

(declare-fun b!7263914 () Bool)

(assert (=> b!7263914 (= e!4356006 (as set.empty (Set Context!15388)))))

(assert (= (and d!2259884 res!2945034) b!7263913))

(assert (= (and d!2259884 c!1351411) b!7263911))

(assert (= (and d!2259884 (not c!1351411)) b!7263912))

(assert (= (and b!7263912 c!1351410) b!7263910))

(assert (= (and b!7263912 (not c!1351410)) b!7263914))

(assert (= (or b!7263911 b!7263910) bm!661835))

(declare-fun m!7948642 () Bool)

(assert (=> bm!661835 m!7948642))

(declare-fun m!7948644 () Bool)

(assert (=> b!7263911 m!7948644))

(declare-fun m!7948646 () Bool)

(assert (=> b!7263913 m!7948646))

(assert (=> b!7263873 d!2259884))

(declare-fun d!2259888 () Bool)

(declare-fun e!4356018 () Bool)

(assert (=> d!2259888 e!4356018))

(declare-fun res!2945041 () Bool)

(assert (=> d!2259888 (=> (not res!2945041) (not e!4356018))))

(declare-fun lt!2591786 () List!70824)

(declare-fun content!14740 (List!70824) (Set Regex!18754))

(assert (=> d!2259888 (= res!2945041 (= (content!14740 lt!2591786) (set.union (content!14740 (exprs!8194 ct1!250)) (content!14740 (exprs!8194 ct2!346)))))))

(declare-fun e!4356017 () List!70824)

(assert (=> d!2259888 (= lt!2591786 e!4356017)))

(declare-fun c!1351418 () Bool)

(assert (=> d!2259888 (= c!1351418 (is-Nil!70700 (exprs!8194 ct1!250)))))

(assert (=> d!2259888 (= (++!16654 (exprs!8194 ct1!250) (exprs!8194 ct2!346)) lt!2591786)))

(declare-fun b!7263933 () Bool)

(assert (=> b!7263933 (= e!4356017 (exprs!8194 ct2!346))))

(declare-fun b!7263934 () Bool)

(assert (=> b!7263934 (= e!4356017 (Cons!70700 (h!77148 (exprs!8194 ct1!250)) (++!16654 (t!384890 (exprs!8194 ct1!250)) (exprs!8194 ct2!346))))))

(declare-fun b!7263936 () Bool)

(assert (=> b!7263936 (= e!4356018 (or (not (= (exprs!8194 ct2!346) Nil!70700)) (= lt!2591786 (exprs!8194 ct1!250))))))

(declare-fun b!7263935 () Bool)

(declare-fun res!2945042 () Bool)

(assert (=> b!7263935 (=> (not res!2945042) (not e!4356018))))

(declare-fun size!41788 (List!70824) Int)

(assert (=> b!7263935 (= res!2945042 (= (size!41788 lt!2591786) (+ (size!41788 (exprs!8194 ct1!250)) (size!41788 (exprs!8194 ct2!346)))))))

(assert (= (and d!2259888 c!1351418) b!7263933))

(assert (= (and d!2259888 (not c!1351418)) b!7263934))

(assert (= (and d!2259888 res!2945041) b!7263935))

(assert (= (and b!7263935 res!2945042) b!7263936))

(declare-fun m!7948648 () Bool)

(assert (=> d!2259888 m!7948648))

(declare-fun m!7948650 () Bool)

(assert (=> d!2259888 m!7948650))

(declare-fun m!7948652 () Bool)

(assert (=> d!2259888 m!7948652))

(declare-fun m!7948654 () Bool)

(assert (=> b!7263934 m!7948654))

(declare-fun m!7948656 () Bool)

(assert (=> b!7263935 m!7948656))

(declare-fun m!7948658 () Bool)

(assert (=> b!7263935 m!7948658))

(declare-fun m!7948660 () Bool)

(assert (=> b!7263935 m!7948660))

(assert (=> b!7263873 d!2259888))

(declare-fun d!2259890 () Bool)

(declare-fun dynLambda!28864 (Int Context!15388) (Set Context!15388))

(assert (=> d!2259890 (= (flatMap!2867 lt!2591750 lambda!447117) (dynLambda!28864 lambda!447117 lt!2591748))))

(declare-fun lt!2591789 () Unit!164126)

(declare-fun choose!56282 ((Set Context!15388) Context!15388 Int) Unit!164126)

(assert (=> d!2259890 (= lt!2591789 (choose!56282 lt!2591750 lt!2591748 lambda!447117))))

(assert (=> d!2259890 (= lt!2591750 (set.insert lt!2591748 (as set.empty (Set Context!15388))))))

(assert (=> d!2259890 (= (lemmaFlatMapOnSingletonSet!2267 lt!2591750 lt!2591748 lambda!447117) lt!2591789)))

(declare-fun b_lambda!279511 () Bool)

(assert (=> (not b_lambda!279511) (not d!2259890)))

(declare-fun bs!1909957 () Bool)

(assert (= bs!1909957 d!2259890))

(assert (=> bs!1909957 m!7948578))

(declare-fun m!7948668 () Bool)

(assert (=> bs!1909957 m!7948668))

(declare-fun m!7948670 () Bool)

(assert (=> bs!1909957 m!7948670))

(assert (=> bs!1909957 m!7948598))

(assert (=> b!7263873 d!2259890))

(declare-fun d!2259894 () Bool)

(declare-fun res!2945048 () Bool)

(declare-fun e!4356026 () Bool)

(assert (=> d!2259894 (=> res!2945048 e!4356026)))

(assert (=> d!2259894 (= res!2945048 (is-Nil!70700 (exprs!8194 ct1!250)))))

(assert (=> d!2259894 (= (forall!17589 (exprs!8194 ct1!250) lambda!447116) e!4356026)))

(declare-fun b!7263946 () Bool)

(declare-fun e!4356027 () Bool)

(assert (=> b!7263946 (= e!4356026 e!4356027)))

(declare-fun res!2945049 () Bool)

(assert (=> b!7263946 (=> (not res!2945049) (not e!4356027))))

(declare-fun dynLambda!28865 (Int Regex!18754) Bool)

(assert (=> b!7263946 (= res!2945049 (dynLambda!28865 lambda!447116 (h!77148 (exprs!8194 ct1!250))))))

(declare-fun b!7263947 () Bool)

(assert (=> b!7263947 (= e!4356027 (forall!17589 (t!384890 (exprs!8194 ct1!250)) lambda!447116))))

(assert (= (and d!2259894 (not res!2945048)) b!7263946))

(assert (= (and b!7263946 res!2945049) b!7263947))

(declare-fun b_lambda!279513 () Bool)

(assert (=> (not b_lambda!279513) (not b!7263946)))

(declare-fun m!7948674 () Bool)

(assert (=> b!7263946 m!7948674))

(declare-fun m!7948676 () Bool)

(assert (=> b!7263947 m!7948676))

(assert (=> b!7263873 d!2259894))

(declare-fun d!2259898 () Bool)

(declare-fun choose!56283 ((Set Context!15388) Int) (Set Context!15388))

(assert (=> d!2259898 (= (flatMap!2867 lt!2591746 lambda!447117) (choose!56283 lt!2591746 lambda!447117))))

(declare-fun bs!1909959 () Bool)

(assert (= bs!1909959 d!2259898))

(declare-fun m!7948678 () Bool)

(assert (=> bs!1909959 m!7948678))

(assert (=> b!7263873 d!2259898))

(declare-fun b!7263948 () Bool)

(declare-fun e!4356030 () (Set Context!15388))

(declare-fun call!661844 () (Set Context!15388))

(assert (=> b!7263948 (= e!4356030 call!661844)))

(declare-fun bm!661839 () Bool)

(assert (=> bm!661839 (= call!661844 (derivationStepZipperDown!2690 (h!77148 (exprs!8194 lt!2591748)) (Context!15389 (t!384890 (exprs!8194 lt!2591748))) (h!77147 s!7854)))))

(declare-fun b!7263949 () Bool)

(declare-fun e!4356029 () (Set Context!15388))

(assert (=> b!7263949 (= e!4356029 (set.union call!661844 (derivationStepZipperUp!2524 (Context!15389 (t!384890 (exprs!8194 lt!2591748))) (h!77147 s!7854))))))

(declare-fun d!2259900 () Bool)

(declare-fun c!1351422 () Bool)

(declare-fun e!4356028 () Bool)

(assert (=> d!2259900 (= c!1351422 e!4356028)))

(declare-fun res!2945050 () Bool)

(assert (=> d!2259900 (=> (not res!2945050) (not e!4356028))))

(assert (=> d!2259900 (= res!2945050 (is-Cons!70700 (exprs!8194 lt!2591748)))))

(assert (=> d!2259900 (= (derivationStepZipperUp!2524 lt!2591748 (h!77147 s!7854)) e!4356029)))

(declare-fun b!7263950 () Bool)

(assert (=> b!7263950 (= e!4356029 e!4356030)))

(declare-fun c!1351421 () Bool)

(assert (=> b!7263950 (= c!1351421 (is-Cons!70700 (exprs!8194 lt!2591748)))))

(declare-fun b!7263951 () Bool)

(assert (=> b!7263951 (= e!4356028 (nullable!7956 (h!77148 (exprs!8194 lt!2591748))))))

(declare-fun b!7263952 () Bool)

(assert (=> b!7263952 (= e!4356030 (as set.empty (Set Context!15388)))))

(assert (= (and d!2259900 res!2945050) b!7263951))

(assert (= (and d!2259900 c!1351422) b!7263949))

(assert (= (and d!2259900 (not c!1351422)) b!7263950))

(assert (= (and b!7263950 c!1351421) b!7263948))

(assert (= (and b!7263950 (not c!1351421)) b!7263952))

(assert (= (or b!7263949 b!7263948) bm!661839))

(declare-fun m!7948680 () Bool)

(assert (=> bm!661839 m!7948680))

(declare-fun m!7948682 () Bool)

(assert (=> b!7263949 m!7948682))

(declare-fun m!7948684 () Bool)

(assert (=> b!7263951 m!7948684))

(assert (=> b!7263873 d!2259900))

(declare-fun d!2259902 () Bool)

(assert (=> d!2259902 (= (flatMap!2867 lt!2591746 lambda!447117) (dynLambda!28864 lambda!447117 ct1!250))))

(declare-fun lt!2591790 () Unit!164126)

(assert (=> d!2259902 (= lt!2591790 (choose!56282 lt!2591746 ct1!250 lambda!447117))))

(assert (=> d!2259902 (= lt!2591746 (set.insert ct1!250 (as set.empty (Set Context!15388))))))

(assert (=> d!2259902 (= (lemmaFlatMapOnSingletonSet!2267 lt!2591746 ct1!250 lambda!447117) lt!2591790)))

(declare-fun b_lambda!279515 () Bool)

(assert (=> (not b_lambda!279515) (not d!2259902)))

(declare-fun bs!1909960 () Bool)

(assert (= bs!1909960 d!2259902))

(assert (=> bs!1909960 m!7948588))

(declare-fun m!7948686 () Bool)

(assert (=> bs!1909960 m!7948686))

(declare-fun m!7948688 () Bool)

(assert (=> bs!1909960 m!7948688))

(assert (=> bs!1909960 m!7948594))

(assert (=> b!7263873 d!2259902))

(declare-fun d!2259904 () Bool)

(assert (=> d!2259904 (= (flatMap!2867 lt!2591750 lambda!447117) (choose!56283 lt!2591750 lambda!447117))))

(declare-fun bs!1909961 () Bool)

(assert (= bs!1909961 d!2259904))

(declare-fun m!7948690 () Bool)

(assert (=> bs!1909961 m!7948690))

(assert (=> b!7263873 d!2259904))

(declare-fun d!2259906 () Bool)

(declare-fun res!2945051 () Bool)

(declare-fun e!4356031 () Bool)

(assert (=> d!2259906 (=> res!2945051 e!4356031)))

(assert (=> d!2259906 (= res!2945051 (is-Nil!70700 (exprs!8194 ct2!346)))))

(assert (=> d!2259906 (= (forall!17589 (exprs!8194 ct2!346) lambda!447116) e!4356031)))

(declare-fun b!7263953 () Bool)

(declare-fun e!4356032 () Bool)

(assert (=> b!7263953 (= e!4356031 e!4356032)))

(declare-fun res!2945052 () Bool)

(assert (=> b!7263953 (=> (not res!2945052) (not e!4356032))))

(assert (=> b!7263953 (= res!2945052 (dynLambda!28865 lambda!447116 (h!77148 (exprs!8194 ct2!346))))))

(declare-fun b!7263954 () Bool)

(assert (=> b!7263954 (= e!4356032 (forall!17589 (t!384890 (exprs!8194 ct2!346)) lambda!447116))))

(assert (= (and d!2259906 (not res!2945051)) b!7263953))

(assert (= (and b!7263953 res!2945052) b!7263954))

(declare-fun b_lambda!279517 () Bool)

(assert (=> (not b_lambda!279517) (not b!7263953)))

(declare-fun m!7948692 () Bool)

(assert (=> b!7263953 m!7948692))

(declare-fun m!7948694 () Bool)

(assert (=> b!7263954 m!7948694))

(assert (=> b!7263871 d!2259906))

(declare-fun d!2259908 () Bool)

(declare-fun c!1351427 () Bool)

(declare-fun isEmpty!40634 (List!70823) Bool)

(assert (=> d!2259908 (= c!1351427 (isEmpty!40634 s!7854))))

(declare-fun e!4356039 () Bool)

(assert (=> d!2259908 (= (matchZipper!3658 (set.insert ct2!346 (as set.empty (Set Context!15388))) s!7854) e!4356039)))

(declare-fun b!7263967 () Bool)

(declare-fun nullableZipper!2968 ((Set Context!15388)) Bool)

(assert (=> b!7263967 (= e!4356039 (nullableZipper!2968 (set.insert ct2!346 (as set.empty (Set Context!15388)))))))

(declare-fun b!7263968 () Bool)

(declare-fun derivationStepZipper!3494 ((Set Context!15388) C!37782) (Set Context!15388))

(declare-fun head!14967 (List!70823) C!37782)

(declare-fun tail!14426 (List!70823) List!70823)

(assert (=> b!7263968 (= e!4356039 (matchZipper!3658 (derivationStepZipper!3494 (set.insert ct2!346 (as set.empty (Set Context!15388))) (head!14967 s!7854)) (tail!14426 s!7854)))))

(assert (= (and d!2259908 c!1351427) b!7263967))

(assert (= (and d!2259908 (not c!1351427)) b!7263968))

(declare-fun m!7948696 () Bool)

(assert (=> d!2259908 m!7948696))

(assert (=> b!7263967 m!7948570))

(declare-fun m!7948698 () Bool)

(assert (=> b!7263967 m!7948698))

(declare-fun m!7948700 () Bool)

(assert (=> b!7263968 m!7948700))

(assert (=> b!7263968 m!7948570))

(assert (=> b!7263968 m!7948700))

(declare-fun m!7948702 () Bool)

(assert (=> b!7263968 m!7948702))

(declare-fun m!7948704 () Bool)

(assert (=> b!7263968 m!7948704))

(assert (=> b!7263968 m!7948702))

(assert (=> b!7263968 m!7948704))

(declare-fun m!7948706 () Bool)

(assert (=> b!7263968 m!7948706))

(assert (=> start!708224 d!2259908))

(declare-fun bs!1909962 () Bool)

(declare-fun d!2259910 () Bool)

(assert (= bs!1909962 (and d!2259910 b!7263873)))

(declare-fun lambda!447134 () Int)

(assert (=> bs!1909962 (= lambda!447134 lambda!447116)))

(assert (=> d!2259910 (= (inv!89896 ct2!346) (forall!17589 (exprs!8194 ct2!346) lambda!447134))))

(declare-fun bs!1909963 () Bool)

(assert (= bs!1909963 d!2259910))

(declare-fun m!7948708 () Bool)

(assert (=> bs!1909963 m!7948708))

(assert (=> start!708224 d!2259910))

(declare-fun bs!1909964 () Bool)

(declare-fun d!2259912 () Bool)

(assert (= bs!1909964 (and d!2259912 b!7263873)))

(declare-fun lambda!447135 () Int)

(assert (=> bs!1909964 (= lambda!447135 lambda!447116)))

(declare-fun bs!1909965 () Bool)

(assert (= bs!1909965 (and d!2259912 d!2259910)))

(assert (=> bs!1909965 (= lambda!447135 lambda!447134)))

(assert (=> d!2259912 (= (inv!89896 ct1!250) (forall!17589 (exprs!8194 ct1!250) lambda!447135))))

(declare-fun bs!1909966 () Bool)

(assert (= bs!1909966 d!2259912))

(declare-fun m!7948710 () Bool)

(assert (=> bs!1909966 m!7948710))

(assert (=> start!708224 d!2259912))

(declare-fun bs!1909967 () Bool)

(declare-fun d!2259914 () Bool)

(assert (= bs!1909967 (and d!2259914 b!7263873)))

(declare-fun lambda!447138 () Int)

(assert (=> bs!1909967 (not (= lambda!447138 lambda!447116))))

(declare-fun bs!1909968 () Bool)

(assert (= bs!1909968 (and d!2259914 d!2259910)))

(assert (=> bs!1909968 (not (= lambda!447138 lambda!447134))))

(declare-fun bs!1909969 () Bool)

(assert (= bs!1909969 (and d!2259914 d!2259912)))

(assert (=> bs!1909969 (not (= lambda!447138 lambda!447135))))

(assert (=> d!2259914 (= (nullableContext!244 ct1!250) (forall!17589 (exprs!8194 ct1!250) lambda!447138))))

(declare-fun bs!1909971 () Bool)

(assert (= bs!1909971 d!2259914))

(declare-fun m!7948728 () Bool)

(assert (=> bs!1909971 m!7948728))

(assert (=> b!7263872 d!2259914))

(declare-fun b!7263977 () Bool)

(declare-fun e!4356044 () Bool)

(declare-fun tp!2040087 () Bool)

(declare-fun tp!2040088 () Bool)

(assert (=> b!7263977 (= e!4356044 (and tp!2040087 tp!2040088))))

(assert (=> b!7263868 (= tp!2040072 e!4356044)))

(assert (= (and b!7263868 (is-Cons!70700 (exprs!8194 ct1!250))) b!7263977))

(declare-fun b!7263978 () Bool)

(declare-fun e!4356045 () Bool)

(declare-fun tp!2040089 () Bool)

(declare-fun tp!2040090 () Bool)

(assert (=> b!7263978 (= e!4356045 (and tp!2040089 tp!2040090))))

(assert (=> b!7263874 (= tp!2040071 e!4356045)))

(assert (= (and b!7263874 (is-Cons!70700 (exprs!8194 ct2!346))) b!7263978))

(declare-fun b!7263983 () Bool)

(declare-fun e!4356048 () Bool)

(declare-fun tp!2040093 () Bool)

(assert (=> b!7263983 (= e!4356048 (and tp_is_empty!46973 tp!2040093))))

(assert (=> b!7263870 (= tp!2040073 e!4356048)))

(assert (= (and b!7263870 (is-Cons!70699 (t!384889 s!7854))) b!7263983))

(declare-fun b_lambda!279519 () Bool)

(assert (= b_lambda!279513 (or b!7263873 b_lambda!279519)))

(declare-fun bs!1909972 () Bool)

(declare-fun d!2259920 () Bool)

(assert (= bs!1909972 (and d!2259920 b!7263873)))

(declare-fun validRegex!9562 (Regex!18754) Bool)

(assert (=> bs!1909972 (= (dynLambda!28865 lambda!447116 (h!77148 (exprs!8194 ct1!250))) (validRegex!9562 (h!77148 (exprs!8194 ct1!250))))))

(declare-fun m!7948730 () Bool)

(assert (=> bs!1909972 m!7948730))

(assert (=> b!7263946 d!2259920))

(declare-fun b_lambda!279521 () Bool)

(assert (= b_lambda!279511 (or b!7263873 b_lambda!279521)))

(declare-fun bs!1909973 () Bool)

(declare-fun d!2259922 () Bool)

(assert (= bs!1909973 (and d!2259922 b!7263873)))

(assert (=> bs!1909973 (= (dynLambda!28864 lambda!447117 lt!2591748) (derivationStepZipperUp!2524 lt!2591748 (h!77147 s!7854)))))

(assert (=> bs!1909973 m!7948582))

(assert (=> d!2259890 d!2259922))

(declare-fun b_lambda!279523 () Bool)

(assert (= b_lambda!279517 (or b!7263873 b_lambda!279523)))

(declare-fun bs!1909974 () Bool)

(declare-fun d!2259924 () Bool)

(assert (= bs!1909974 (and d!2259924 b!7263873)))

(assert (=> bs!1909974 (= (dynLambda!28865 lambda!447116 (h!77148 (exprs!8194 ct2!346))) (validRegex!9562 (h!77148 (exprs!8194 ct2!346))))))

(declare-fun m!7948732 () Bool)

(assert (=> bs!1909974 m!7948732))

(assert (=> b!7263953 d!2259924))

(declare-fun b_lambda!279525 () Bool)

(assert (= b_lambda!279515 (or b!7263873 b_lambda!279525)))

(declare-fun bs!1909975 () Bool)

(declare-fun d!2259926 () Bool)

(assert (= bs!1909975 (and d!2259926 b!7263873)))

(assert (=> bs!1909975 (= (dynLambda!28864 lambda!447117 ct1!250) (derivationStepZipperUp!2524 ct1!250 (h!77147 s!7854)))))

(assert (=> bs!1909975 m!7948580))

(assert (=> d!2259902 d!2259926))

(push 1)

(assert (not d!2259902))

(assert (not b_lambda!279519))

(assert (not bm!661835))

(assert (not d!2259888))

(assert (not b!7263967))

(assert (not b!7263934))

(assert (not d!2259890))

(assert (not b!7263978))

(assert (not b!7263911))

(assert (not b!7263983))

(assert (not b!7263951))

(assert (not bs!1909973))

(assert (not b_lambda!279521))

(assert (not b!7263977))

(assert (not d!2259914))

(assert (not bs!1909972))

(assert (not b!7263968))

(assert (not bs!1909975))

(assert (not bm!661839))

(assert (not b!7263913))

(assert (not b!7263935))

(assert (not d!2259898))

(assert (not b!7263949))

(assert (not d!2259910))

(assert (not b_lambda!279525))

(assert tp_is_empty!46973)

(assert (not d!2259908))

(assert (not d!2259882))

(assert (not d!2259912))

(assert (not bs!1909974))

(assert (not b!7263947))

(assert (not b_lambda!279523))

(assert (not b!7263954))

(assert (not d!2259904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

