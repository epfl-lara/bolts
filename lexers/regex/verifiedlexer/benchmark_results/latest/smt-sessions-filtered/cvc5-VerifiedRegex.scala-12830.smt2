; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708656 () Bool)

(assert start!708656)

(declare-fun b!7266052 () Bool)

(assert (=> b!7266052 true))

(declare-fun e!4357280 () Bool)

(declare-fun e!4357279 () Bool)

(assert (=> b!7266052 (= e!4357280 (not e!4357279))))

(declare-fun res!2945801 () Bool)

(assert (=> b!7266052 (=> res!2945801 e!4357279)))

(declare-datatypes ((C!37810 0))(
  ( (C!37811 (val!28853 Int)) )
))
(declare-datatypes ((Regex!18768 0))(
  ( (ElementMatch!18768 (c!1352016 C!37810)) (Concat!27613 (regOne!38048 Regex!18768) (regTwo!38048 Regex!18768)) (EmptyExpr!18768) (Star!18768 (reg!19097 Regex!18768)) (EmptyLang!18768) (Union!18768 (regOne!38049 Regex!18768) (regTwo!38049 Regex!18768)) )
))
(declare-datatypes ((List!70851 0))(
  ( (Nil!70727) (Cons!70727 (h!77175 Regex!18768) (t!384919 List!70851)) )
))
(declare-datatypes ((Context!15416 0))(
  ( (Context!15417 (exprs!8208 List!70851)) )
))
(declare-fun lt!2592417 () (Set Context!15416))

(declare-datatypes ((List!70852 0))(
  ( (Nil!70728) (Cons!70728 (h!77176 C!37810) (t!384920 List!70852)) )
))
(declare-fun s!7854 () List!70852)

(declare-fun lt!2592414 () (Set Context!15416))

(declare-fun derivationStepZipper!3508 ((Set Context!15416) C!37810) (Set Context!15416))

(assert (=> b!7266052 (= res!2945801 (not (= lt!2592417 (derivationStepZipper!3508 lt!2592414 (h!77176 s!7854)))))))

(declare-datatypes ((Unit!164154 0))(
  ( (Unit!164155) )
))
(declare-fun lt!2592412 () Unit!164154)

(declare-fun ct1!250 () Context!15416)

(declare-fun lambda!447470 () Int)

(declare-fun ct2!346 () Context!15416)

(declare-fun lemmaConcatPreservesForall!1525 (List!70851 List!70851 Int) Unit!164154)

(assert (=> b!7266052 (= lt!2592412 (lemmaConcatPreservesForall!1525 (exprs!8208 ct1!250) (exprs!8208 ct2!346) lambda!447470))))

(declare-fun lt!2592416 () Context!15416)

(declare-fun lambda!447471 () Int)

(declare-fun flatMap!2881 ((Set Context!15416) Int) (Set Context!15416))

(declare-fun derivationStepZipperUp!2538 (Context!15416 C!37810) (Set Context!15416))

(assert (=> b!7266052 (= (flatMap!2881 lt!2592414 lambda!447471) (derivationStepZipperUp!2538 lt!2592416 (h!77176 s!7854)))))

(declare-fun lt!2592422 () Unit!164154)

(declare-fun lemmaFlatMapOnSingletonSet!2281 ((Set Context!15416) Context!15416 Int) Unit!164154)

(assert (=> b!7266052 (= lt!2592422 (lemmaFlatMapOnSingletonSet!2281 lt!2592414 lt!2592416 lambda!447471))))

(assert (=> b!7266052 (= lt!2592414 (set.insert lt!2592416 (as set.empty (Set Context!15416))))))

(declare-fun lt!2592409 () Unit!164154)

(assert (=> b!7266052 (= lt!2592409 (lemmaConcatPreservesForall!1525 (exprs!8208 ct1!250) (exprs!8208 ct2!346) lambda!447470))))

(declare-fun lt!2592408 () Unit!164154)

(assert (=> b!7266052 (= lt!2592408 (lemmaConcatPreservesForall!1525 (exprs!8208 ct1!250) (exprs!8208 ct2!346) lambda!447470))))

(declare-fun lt!2592421 () (Set Context!15416))

(assert (=> b!7266052 (= (flatMap!2881 lt!2592421 lambda!447471) (derivationStepZipperUp!2538 ct1!250 (h!77176 s!7854)))))

(declare-fun lt!2592415 () Unit!164154)

(assert (=> b!7266052 (= lt!2592415 (lemmaFlatMapOnSingletonSet!2281 lt!2592421 ct1!250 lambda!447471))))

(assert (=> b!7266052 (= lt!2592421 (set.insert ct1!250 (as set.empty (Set Context!15416))))))

(assert (=> b!7266052 (= lt!2592417 (derivationStepZipperUp!2538 lt!2592416 (h!77176 s!7854)))))

(declare-fun ++!16668 (List!70851 List!70851) List!70851)

(assert (=> b!7266052 (= lt!2592416 (Context!15417 (++!16668 (exprs!8208 ct1!250) (exprs!8208 ct2!346))))))

(declare-fun lt!2592419 () Unit!164154)

(assert (=> b!7266052 (= lt!2592419 (lemmaConcatPreservesForall!1525 (exprs!8208 ct1!250) (exprs!8208 ct2!346) lambda!447470))))

(declare-fun b!7266053 () Bool)

(declare-fun res!2945798 () Bool)

(declare-fun e!4357282 () Bool)

(assert (=> b!7266053 (=> res!2945798 e!4357282)))

(declare-fun lt!2592423 () (Set Context!15416))

(declare-fun lt!2592410 () Context!15416)

(declare-fun derivationStepZipperDown!2702 (Regex!18768 Context!15416 C!37810) (Set Context!15416))

(assert (=> b!7266053 (= res!2945798 (not (= lt!2592423 (set.union (derivationStepZipperDown!2702 (h!77175 (exprs!8208 ct1!250)) lt!2592410 (h!77176 s!7854)) (derivationStepZipperUp!2538 lt!2592410 (h!77176 s!7854))))))))

(declare-fun res!2945799 () Bool)

(assert (=> start!708656 (=> (not res!2945799) (not e!4357280))))

(declare-fun matchZipper!3672 ((Set Context!15416) List!70852) Bool)

(assert (=> start!708656 (= res!2945799 (matchZipper!3672 (set.insert ct2!346 (as set.empty (Set Context!15416))) s!7854))))

(assert (=> start!708656 e!4357280))

(declare-fun e!4357281 () Bool)

(declare-fun inv!89931 (Context!15416) Bool)

(assert (=> start!708656 (and (inv!89931 ct2!346) e!4357281)))

(declare-fun e!4357278 () Bool)

(assert (=> start!708656 e!4357278))

(declare-fun e!4357283 () Bool)

(assert (=> start!708656 (and (inv!89931 ct1!250) e!4357283)))

(declare-fun b!7266054 () Bool)

(declare-fun tp_is_empty!47001 () Bool)

(declare-fun tp!2040461 () Bool)

(assert (=> b!7266054 (= e!4357278 (and tp_is_empty!47001 tp!2040461))))

(declare-fun b!7266055 () Bool)

(declare-fun tp!2040463 () Bool)

(assert (=> b!7266055 (= e!4357281 tp!2040463)))

(declare-fun b!7266056 () Bool)

(declare-fun res!2945804 () Bool)

(assert (=> b!7266056 (=> res!2945804 e!4357279)))

(assert (=> b!7266056 (= res!2945804 (not (is-Cons!70727 (exprs!8208 ct1!250))))))

(declare-fun b!7266057 () Bool)

(declare-fun validRegex!9571 (Regex!18768) Bool)

(assert (=> b!7266057 (= e!4357282 (validRegex!9571 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun lt!2592418 () List!70851)

(declare-fun lt!2592411 () List!70851)

(assert (=> b!7266057 (= lt!2592418 (++!16668 lt!2592411 (exprs!8208 ct2!346)))))

(declare-fun lt!2592420 () Unit!164154)

(assert (=> b!7266057 (= lt!2592420 (lemmaConcatPreservesForall!1525 lt!2592411 (exprs!8208 ct2!346) lambda!447470))))

(declare-fun lt!2592413 () Unit!164154)

(assert (=> b!7266057 (= lt!2592413 (lemmaConcatPreservesForall!1525 lt!2592411 (exprs!8208 ct2!346) lambda!447470))))

(declare-fun b!7266058 () Bool)

(declare-fun res!2945800 () Bool)

(assert (=> b!7266058 (=> res!2945800 e!4357279)))

(declare-fun isEmpty!40657 (List!70851) Bool)

(assert (=> b!7266058 (= res!2945800 (isEmpty!40657 (exprs!8208 ct1!250)))))

(declare-fun b!7266059 () Bool)

(declare-fun res!2945802 () Bool)

(assert (=> b!7266059 (=> (not res!2945802) (not e!4357280))))

(assert (=> b!7266059 (= res!2945802 (is-Cons!70728 s!7854))))

(declare-fun b!7266060 () Bool)

(declare-fun tp!2040462 () Bool)

(assert (=> b!7266060 (= e!4357283 tp!2040462)))

(declare-fun b!7266061 () Bool)

(assert (=> b!7266061 (= e!4357279 e!4357282)))

(declare-fun res!2945805 () Bool)

(assert (=> b!7266061 (=> res!2945805 e!4357282)))

(declare-fun nullable!7968 (Regex!18768) Bool)

(assert (=> b!7266061 (= res!2945805 (not (nullable!7968 (h!77175 (exprs!8208 ct1!250)))))))

(assert (=> b!7266061 (= lt!2592423 (derivationStepZipperUp!2538 ct1!250 (h!77176 s!7854)))))

(assert (=> b!7266061 (= lt!2592410 (Context!15417 lt!2592411))))

(declare-fun tail!14445 (List!70851) List!70851)

(assert (=> b!7266061 (= lt!2592411 (tail!14445 (exprs!8208 ct1!250)))))

(declare-fun b!7266062 () Bool)

(declare-fun res!2945803 () Bool)

(assert (=> b!7266062 (=> (not res!2945803) (not e!4357280))))

(declare-fun nullableContext!258 (Context!15416) Bool)

(assert (=> b!7266062 (= res!2945803 (nullableContext!258 ct1!250))))

(assert (= (and start!708656 res!2945799) b!7266062))

(assert (= (and b!7266062 res!2945803) b!7266059))

(assert (= (and b!7266059 res!2945802) b!7266052))

(assert (= (and b!7266052 (not res!2945801)) b!7266056))

(assert (= (and b!7266056 (not res!2945804)) b!7266058))

(assert (= (and b!7266058 (not res!2945800)) b!7266061))

(assert (= (and b!7266061 (not res!2945805)) b!7266053))

(assert (= (and b!7266053 (not res!2945798)) b!7266057))

(assert (= start!708656 b!7266055))

(assert (= (and start!708656 (is-Cons!70728 s!7854)) b!7266054))

(assert (= start!708656 b!7266060))

(declare-fun m!7950726 () Bool)

(assert (=> start!708656 m!7950726))

(assert (=> start!708656 m!7950726))

(declare-fun m!7950728 () Bool)

(assert (=> start!708656 m!7950728))

(declare-fun m!7950730 () Bool)

(assert (=> start!708656 m!7950730))

(declare-fun m!7950732 () Bool)

(assert (=> start!708656 m!7950732))

(declare-fun m!7950734 () Bool)

(assert (=> b!7266062 m!7950734))

(declare-fun m!7950736 () Bool)

(assert (=> b!7266053 m!7950736))

(declare-fun m!7950738 () Bool)

(assert (=> b!7266053 m!7950738))

(declare-fun m!7950740 () Bool)

(assert (=> b!7266061 m!7950740))

(declare-fun m!7950742 () Bool)

(assert (=> b!7266061 m!7950742))

(declare-fun m!7950744 () Bool)

(assert (=> b!7266061 m!7950744))

(declare-fun m!7950746 () Bool)

(assert (=> b!7266057 m!7950746))

(declare-fun m!7950748 () Bool)

(assert (=> b!7266057 m!7950748))

(declare-fun m!7950750 () Bool)

(assert (=> b!7266057 m!7950750))

(assert (=> b!7266057 m!7950750))

(declare-fun m!7950752 () Bool)

(assert (=> b!7266052 m!7950752))

(declare-fun m!7950754 () Bool)

(assert (=> b!7266052 m!7950754))

(declare-fun m!7950756 () Bool)

(assert (=> b!7266052 m!7950756))

(assert (=> b!7266052 m!7950742))

(declare-fun m!7950758 () Bool)

(assert (=> b!7266052 m!7950758))

(declare-fun m!7950760 () Bool)

(assert (=> b!7266052 m!7950760))

(assert (=> b!7266052 m!7950760))

(assert (=> b!7266052 m!7950760))

(assert (=> b!7266052 m!7950760))

(declare-fun m!7950762 () Bool)

(assert (=> b!7266052 m!7950762))

(declare-fun m!7950764 () Bool)

(assert (=> b!7266052 m!7950764))

(declare-fun m!7950766 () Bool)

(assert (=> b!7266052 m!7950766))

(declare-fun m!7950768 () Bool)

(assert (=> b!7266052 m!7950768))

(declare-fun m!7950770 () Bool)

(assert (=> b!7266052 m!7950770))

(declare-fun m!7950772 () Bool)

(assert (=> b!7266058 m!7950772))

(push 1)

(assert (not b!7266054))

(assert (not b!7266061))

(assert (not b!7266053))

(assert (not b!7266055))

(assert (not b!7266057))

(assert (not b!7266060))

(assert (not start!708656))

(assert (not b!7266058))

(assert (not b!7266062))

(assert (not b!7266052))

(assert tp_is_empty!47001)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7266122 () Bool)

(declare-fun e!4357315 () Bool)

(assert (=> b!7266122 (= e!4357315 (nullable!7968 (regOne!38048 (h!77175 (exprs!8208 ct1!250)))))))

(declare-fun b!7266123 () Bool)

(declare-fun e!4357317 () (Set Context!15416))

(declare-fun e!4357318 () (Set Context!15416))

(assert (=> b!7266123 (= e!4357317 e!4357318)))

(declare-fun c!1352036 () Bool)

(assert (=> b!7266123 (= c!1352036 (is-Union!18768 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun b!7266124 () Bool)

(declare-fun e!4357314 () (Set Context!15416))

(declare-fun call!662241 () (Set Context!15416))

(assert (=> b!7266124 (= e!4357314 call!662241)))

(declare-fun b!7266125 () Bool)

(assert (=> b!7266125 (= e!4357317 (set.insert lt!2592410 (as set.empty (Set Context!15416))))))

(declare-fun b!7266126 () Bool)

(declare-fun e!4357316 () (Set Context!15416))

(assert (=> b!7266126 (= e!4357316 call!662241)))

(declare-fun bm!662235 () Bool)

(declare-fun call!662244 () List!70851)

(declare-fun call!662242 () List!70851)

(assert (=> bm!662235 (= call!662244 call!662242)))

(declare-fun b!7266127 () Bool)

(declare-fun c!1352034 () Bool)

(assert (=> b!7266127 (= c!1352034 (is-Star!18768 (h!77175 (exprs!8208 ct1!250))))))

(assert (=> b!7266127 (= e!4357316 e!4357314)))

(declare-fun d!2260731 () Bool)

(declare-fun c!1352032 () Bool)

(assert (=> d!2260731 (= c!1352032 (and (is-ElementMatch!18768 (h!77175 (exprs!8208 ct1!250))) (= (c!1352016 (h!77175 (exprs!8208 ct1!250))) (h!77176 s!7854))))))

(assert (=> d!2260731 (= (derivationStepZipperDown!2702 (h!77175 (exprs!8208 ct1!250)) lt!2592410 (h!77176 s!7854)) e!4357317)))

(declare-fun bm!662236 () Bool)

(declare-fun call!662245 () (Set Context!15416))

(declare-fun call!662240 () (Set Context!15416))

(assert (=> bm!662236 (= call!662245 call!662240)))

(declare-fun b!7266128 () Bool)

(declare-fun call!662243 () (Set Context!15416))

(assert (=> b!7266128 (= e!4357318 (set.union call!662240 call!662243))))

(declare-fun c!1352035 () Bool)

(declare-fun bm!662237 () Bool)

(declare-fun c!1352033 () Bool)

(assert (=> bm!662237 (= call!662240 (derivationStepZipperDown!2702 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250)))))) (ite (or c!1352036 c!1352033) lt!2592410 (Context!15417 call!662244)) (h!77176 s!7854)))))

(declare-fun b!7266129 () Bool)

(declare-fun e!4357319 () (Set Context!15416))

(assert (=> b!7266129 (= e!4357319 e!4357316)))

(assert (=> b!7266129 (= c!1352035 (is-Concat!27613 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun b!7266130 () Bool)

(assert (=> b!7266130 (= e!4357314 (as set.empty (Set Context!15416)))))

(declare-fun b!7266131 () Bool)

(assert (=> b!7266131 (= e!4357319 (set.union call!662243 call!662245))))

(declare-fun bm!662238 () Bool)

(assert (=> bm!662238 (= call!662241 call!662245)))

(declare-fun bm!662239 () Bool)

(declare-fun $colon$colon!2948 (List!70851 Regex!18768) List!70851)

(assert (=> bm!662239 (= call!662242 ($colon$colon!2948 (exprs!8208 lt!2592410) (ite (or c!1352033 c!1352035) (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (h!77175 (exprs!8208 ct1!250)))))))

(declare-fun b!7266132 () Bool)

(assert (=> b!7266132 (= c!1352033 e!4357315)))

(declare-fun res!2945832 () Bool)

(assert (=> b!7266132 (=> (not res!2945832) (not e!4357315))))

(assert (=> b!7266132 (= res!2945832 (is-Concat!27613 (h!77175 (exprs!8208 ct1!250))))))

(assert (=> b!7266132 (= e!4357318 e!4357319)))

(declare-fun bm!662240 () Bool)

(assert (=> bm!662240 (= call!662243 (derivationStepZipperDown!2702 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250)))) (ite c!1352036 lt!2592410 (Context!15417 call!662242)) (h!77176 s!7854)))))

(assert (= (and d!2260731 c!1352032) b!7266125))

(assert (= (and d!2260731 (not c!1352032)) b!7266123))

(assert (= (and b!7266123 c!1352036) b!7266128))

(assert (= (and b!7266123 (not c!1352036)) b!7266132))

(assert (= (and b!7266132 res!2945832) b!7266122))

(assert (= (and b!7266132 c!1352033) b!7266131))

(assert (= (and b!7266132 (not c!1352033)) b!7266129))

(assert (= (and b!7266129 c!1352035) b!7266126))

(assert (= (and b!7266129 (not c!1352035)) b!7266127))

(assert (= (and b!7266127 c!1352034) b!7266124))

(assert (= (and b!7266127 (not c!1352034)) b!7266130))

(assert (= (or b!7266126 b!7266124) bm!662235))

(assert (= (or b!7266126 b!7266124) bm!662238))

(assert (= (or b!7266131 bm!662235) bm!662239))

(assert (= (or b!7266131 bm!662238) bm!662236))

(assert (= (or b!7266128 bm!662236) bm!662237))

(assert (= (or b!7266128 b!7266131) bm!662240))

(declare-fun m!7950822 () Bool)

(assert (=> b!7266125 m!7950822))

(declare-fun m!7950824 () Bool)

(assert (=> bm!662237 m!7950824))

(declare-fun m!7950826 () Bool)

(assert (=> bm!662240 m!7950826))

(declare-fun m!7950828 () Bool)

(assert (=> bm!662239 m!7950828))

(declare-fun m!7950830 () Bool)

(assert (=> b!7266122 m!7950830))

(assert (=> b!7266053 d!2260731))

(declare-fun bm!662243 () Bool)

(declare-fun call!662248 () (Set Context!15416))

(assert (=> bm!662243 (= call!662248 (derivationStepZipperDown!2702 (h!77175 (exprs!8208 lt!2592410)) (Context!15417 (t!384919 (exprs!8208 lt!2592410))) (h!77176 s!7854)))))

(declare-fun b!7266143 () Bool)

(declare-fun e!4357328 () (Set Context!15416))

(assert (=> b!7266143 (= e!4357328 call!662248)))

(declare-fun b!7266144 () Bool)

(assert (=> b!7266144 (= e!4357328 (as set.empty (Set Context!15416)))))

(declare-fun b!7266146 () Bool)

(declare-fun e!4357326 () (Set Context!15416))

(assert (=> b!7266146 (= e!4357326 e!4357328)))

(declare-fun c!1352041 () Bool)

(assert (=> b!7266146 (= c!1352041 (is-Cons!70727 (exprs!8208 lt!2592410)))))

(declare-fun b!7266147 () Bool)

(declare-fun e!4357327 () Bool)

(assert (=> b!7266147 (= e!4357327 (nullable!7968 (h!77175 (exprs!8208 lt!2592410))))))

(declare-fun b!7266145 () Bool)

(assert (=> b!7266145 (= e!4357326 (set.union call!662248 (derivationStepZipperUp!2538 (Context!15417 (t!384919 (exprs!8208 lt!2592410))) (h!77176 s!7854))))))

(declare-fun d!2260733 () Bool)

(declare-fun c!1352042 () Bool)

(assert (=> d!2260733 (= c!1352042 e!4357327)))

(declare-fun res!2945835 () Bool)

(assert (=> d!2260733 (=> (not res!2945835) (not e!4357327))))

(assert (=> d!2260733 (= res!2945835 (is-Cons!70727 (exprs!8208 lt!2592410)))))

(assert (=> d!2260733 (= (derivationStepZipperUp!2538 lt!2592410 (h!77176 s!7854)) e!4357326)))

(assert (= (and d!2260733 res!2945835) b!7266147))

(assert (= (and d!2260733 c!1352042) b!7266145))

(assert (= (and d!2260733 (not c!1352042)) b!7266146))

(assert (= (and b!7266146 c!1352041) b!7266143))

(assert (= (and b!7266146 (not c!1352041)) b!7266144))

(assert (= (or b!7266145 b!7266143) bm!662243))

(declare-fun m!7950832 () Bool)

(assert (=> bm!662243 m!7950832))

(declare-fun m!7950834 () Bool)

(assert (=> b!7266147 m!7950834))

(declare-fun m!7950836 () Bool)

(assert (=> b!7266145 m!7950836))

(assert (=> b!7266053 d!2260733))

(declare-fun d!2260735 () Bool)

(assert (=> d!2260735 (= (isEmpty!40657 (exprs!8208 ct1!250)) (is-Nil!70727 (exprs!8208 ct1!250)))))

(assert (=> b!7266058 d!2260735))

(declare-fun d!2260737 () Bool)

(declare-fun nullableFct!3134 (Regex!18768) Bool)

(assert (=> d!2260737 (= (nullable!7968 (h!77175 (exprs!8208 ct1!250))) (nullableFct!3134 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun bs!1910271 () Bool)

(assert (= bs!1910271 d!2260737))

(declare-fun m!7950838 () Bool)

(assert (=> bs!1910271 m!7950838))

(assert (=> b!7266061 d!2260737))

(declare-fun bm!662244 () Bool)

(declare-fun call!662249 () (Set Context!15416))

(assert (=> bm!662244 (= call!662249 (derivationStepZipperDown!2702 (h!77175 (exprs!8208 ct1!250)) (Context!15417 (t!384919 (exprs!8208 ct1!250))) (h!77176 s!7854)))))

(declare-fun b!7266148 () Bool)

(declare-fun e!4357331 () (Set Context!15416))

(assert (=> b!7266148 (= e!4357331 call!662249)))

(declare-fun b!7266149 () Bool)

(assert (=> b!7266149 (= e!4357331 (as set.empty (Set Context!15416)))))

(declare-fun b!7266151 () Bool)

(declare-fun e!4357329 () (Set Context!15416))

(assert (=> b!7266151 (= e!4357329 e!4357331)))

(declare-fun c!1352043 () Bool)

(assert (=> b!7266151 (= c!1352043 (is-Cons!70727 (exprs!8208 ct1!250)))))

(declare-fun b!7266152 () Bool)

(declare-fun e!4357330 () Bool)

(assert (=> b!7266152 (= e!4357330 (nullable!7968 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun b!7266150 () Bool)

(assert (=> b!7266150 (= e!4357329 (set.union call!662249 (derivationStepZipperUp!2538 (Context!15417 (t!384919 (exprs!8208 ct1!250))) (h!77176 s!7854))))))

(declare-fun d!2260739 () Bool)

(declare-fun c!1352044 () Bool)

(assert (=> d!2260739 (= c!1352044 e!4357330)))

(declare-fun res!2945836 () Bool)

(assert (=> d!2260739 (=> (not res!2945836) (not e!4357330))))

(assert (=> d!2260739 (= res!2945836 (is-Cons!70727 (exprs!8208 ct1!250)))))

(assert (=> d!2260739 (= (derivationStepZipperUp!2538 ct1!250 (h!77176 s!7854)) e!4357329)))

(assert (= (and d!2260739 res!2945836) b!7266152))

(assert (= (and d!2260739 c!1352044) b!7266150))

(assert (= (and d!2260739 (not c!1352044)) b!7266151))

(assert (= (and b!7266151 c!1352043) b!7266148))

(assert (= (and b!7266151 (not c!1352043)) b!7266149))

(assert (= (or b!7266150 b!7266148) bm!662244))

(declare-fun m!7950840 () Bool)

(assert (=> bm!662244 m!7950840))

(assert (=> b!7266152 m!7950740))

(declare-fun m!7950842 () Bool)

(assert (=> b!7266150 m!7950842))

(assert (=> b!7266061 d!2260739))

(declare-fun d!2260741 () Bool)

(assert (=> d!2260741 (= (tail!14445 (exprs!8208 ct1!250)) (t!384919 (exprs!8208 ct1!250)))))

(assert (=> b!7266061 d!2260741))

(declare-fun bm!662245 () Bool)

(declare-fun call!662250 () (Set Context!15416))

(assert (=> bm!662245 (= call!662250 (derivationStepZipperDown!2702 (h!77175 (exprs!8208 lt!2592416)) (Context!15417 (t!384919 (exprs!8208 lt!2592416))) (h!77176 s!7854)))))

(declare-fun b!7266153 () Bool)

(declare-fun e!4357334 () (Set Context!15416))

(assert (=> b!7266153 (= e!4357334 call!662250)))

(declare-fun b!7266154 () Bool)

(assert (=> b!7266154 (= e!4357334 (as set.empty (Set Context!15416)))))

(declare-fun b!7266156 () Bool)

(declare-fun e!4357332 () (Set Context!15416))

(assert (=> b!7266156 (= e!4357332 e!4357334)))

(declare-fun c!1352045 () Bool)

(assert (=> b!7266156 (= c!1352045 (is-Cons!70727 (exprs!8208 lt!2592416)))))

(declare-fun b!7266157 () Bool)

(declare-fun e!4357333 () Bool)

(assert (=> b!7266157 (= e!4357333 (nullable!7968 (h!77175 (exprs!8208 lt!2592416))))))

(declare-fun b!7266155 () Bool)

(assert (=> b!7266155 (= e!4357332 (set.union call!662250 (derivationStepZipperUp!2538 (Context!15417 (t!384919 (exprs!8208 lt!2592416))) (h!77176 s!7854))))))

(declare-fun d!2260743 () Bool)

(declare-fun c!1352046 () Bool)

(assert (=> d!2260743 (= c!1352046 e!4357333)))

(declare-fun res!2945837 () Bool)

(assert (=> d!2260743 (=> (not res!2945837) (not e!4357333))))

(assert (=> d!2260743 (= res!2945837 (is-Cons!70727 (exprs!8208 lt!2592416)))))

(assert (=> d!2260743 (= (derivationStepZipperUp!2538 lt!2592416 (h!77176 s!7854)) e!4357332)))

(assert (= (and d!2260743 res!2945837) b!7266157))

(assert (= (and d!2260743 c!1352046) b!7266155))

(assert (= (and d!2260743 (not c!1352046)) b!7266156))

(assert (= (and b!7266156 c!1352045) b!7266153))

(assert (= (and b!7266156 (not c!1352045)) b!7266154))

(assert (= (or b!7266155 b!7266153) bm!662245))

(declare-fun m!7950844 () Bool)

(assert (=> bm!662245 m!7950844))

(declare-fun m!7950846 () Bool)

(assert (=> b!7266157 m!7950846))

(declare-fun m!7950848 () Bool)

(assert (=> b!7266155 m!7950848))

(assert (=> b!7266052 d!2260743))

(declare-fun d!2260745 () Bool)

(declare-fun choose!56314 ((Set Context!15416) Int) (Set Context!15416))

(assert (=> d!2260745 (= (flatMap!2881 lt!2592421 lambda!447471) (choose!56314 lt!2592421 lambda!447471))))

(declare-fun bs!1910272 () Bool)

(assert (= bs!1910272 d!2260745))

(declare-fun m!7950850 () Bool)

(assert (=> bs!1910272 m!7950850))

(assert (=> b!7266052 d!2260745))

(declare-fun b!7266166 () Bool)

(declare-fun e!4357339 () List!70851)

(assert (=> b!7266166 (= e!4357339 (exprs!8208 ct2!346))))

(declare-fun b!7266168 () Bool)

(declare-fun res!2945843 () Bool)

(declare-fun e!4357340 () Bool)

(assert (=> b!7266168 (=> (not res!2945843) (not e!4357340))))

(declare-fun lt!2592474 () List!70851)

(declare-fun size!41799 (List!70851) Int)

(assert (=> b!7266168 (= res!2945843 (= (size!41799 lt!2592474) (+ (size!41799 (exprs!8208 ct1!250)) (size!41799 (exprs!8208 ct2!346)))))))

(declare-fun d!2260749 () Bool)

(assert (=> d!2260749 e!4357340))

(declare-fun res!2945842 () Bool)

(assert (=> d!2260749 (=> (not res!2945842) (not e!4357340))))

(declare-fun content!14751 (List!70851) (Set Regex!18768))

(assert (=> d!2260749 (= res!2945842 (= (content!14751 lt!2592474) (set.union (content!14751 (exprs!8208 ct1!250)) (content!14751 (exprs!8208 ct2!346)))))))

(assert (=> d!2260749 (= lt!2592474 e!4357339)))

(declare-fun c!1352049 () Bool)

(assert (=> d!2260749 (= c!1352049 (is-Nil!70727 (exprs!8208 ct1!250)))))

(assert (=> d!2260749 (= (++!16668 (exprs!8208 ct1!250) (exprs!8208 ct2!346)) lt!2592474)))

(declare-fun b!7266169 () Bool)

(assert (=> b!7266169 (= e!4357340 (or (not (= (exprs!8208 ct2!346) Nil!70727)) (= lt!2592474 (exprs!8208 ct1!250))))))

(declare-fun b!7266167 () Bool)

(assert (=> b!7266167 (= e!4357339 (Cons!70727 (h!77175 (exprs!8208 ct1!250)) (++!16668 (t!384919 (exprs!8208 ct1!250)) (exprs!8208 ct2!346))))))

(assert (= (and d!2260749 c!1352049) b!7266166))

(assert (= (and d!2260749 (not c!1352049)) b!7266167))

(assert (= (and d!2260749 res!2945842) b!7266168))

(assert (= (and b!7266168 res!2945843) b!7266169))

(declare-fun m!7950854 () Bool)

(assert (=> b!7266168 m!7950854))

(declare-fun m!7950856 () Bool)

(assert (=> b!7266168 m!7950856))

(declare-fun m!7950858 () Bool)

(assert (=> b!7266168 m!7950858))

(declare-fun m!7950860 () Bool)

(assert (=> d!2260749 m!7950860))

(declare-fun m!7950862 () Bool)

(assert (=> d!2260749 m!7950862))

(declare-fun m!7950864 () Bool)

(assert (=> d!2260749 m!7950864))

(declare-fun m!7950866 () Bool)

(assert (=> b!7266167 m!7950866))

(assert (=> b!7266052 d!2260749))

(declare-fun d!2260753 () Bool)

(declare-fun dynLambda!28886 (Int Context!15416) (Set Context!15416))

(assert (=> d!2260753 (= (flatMap!2881 lt!2592414 lambda!447471) (dynLambda!28886 lambda!447471 lt!2592416))))

(declare-fun lt!2592477 () Unit!164154)

(declare-fun choose!56315 ((Set Context!15416) Context!15416 Int) Unit!164154)

(assert (=> d!2260753 (= lt!2592477 (choose!56315 lt!2592414 lt!2592416 lambda!447471))))

(assert (=> d!2260753 (= lt!2592414 (set.insert lt!2592416 (as set.empty (Set Context!15416))))))

(assert (=> d!2260753 (= (lemmaFlatMapOnSingletonSet!2281 lt!2592414 lt!2592416 lambda!447471) lt!2592477)))

(declare-fun b_lambda!279789 () Bool)

(assert (=> (not b_lambda!279789) (not d!2260753)))

(declare-fun bs!1910274 () Bool)

(assert (= bs!1910274 d!2260753))

(assert (=> bs!1910274 m!7950758))

(declare-fun m!7950868 () Bool)

(assert (=> bs!1910274 m!7950868))

(declare-fun m!7950870 () Bool)

(assert (=> bs!1910274 m!7950870))

(assert (=> bs!1910274 m!7950756))

(assert (=> b!7266052 d!2260753))

(declare-fun d!2260755 () Bool)

(declare-fun forall!17601 (List!70851 Int) Bool)

(assert (=> d!2260755 (forall!17601 (++!16668 (exprs!8208 ct1!250) (exprs!8208 ct2!346)) lambda!447470)))

(declare-fun lt!2592480 () Unit!164154)

(declare-fun choose!56316 (List!70851 List!70851 Int) Unit!164154)

(assert (=> d!2260755 (= lt!2592480 (choose!56316 (exprs!8208 ct1!250) (exprs!8208 ct2!346) lambda!447470))))

(assert (=> d!2260755 (forall!17601 (exprs!8208 ct1!250) lambda!447470)))

(assert (=> d!2260755 (= (lemmaConcatPreservesForall!1525 (exprs!8208 ct1!250) (exprs!8208 ct2!346) lambda!447470) lt!2592480)))

(declare-fun bs!1910275 () Bool)

(assert (= bs!1910275 d!2260755))

(assert (=> bs!1910275 m!7950766))

(assert (=> bs!1910275 m!7950766))

(declare-fun m!7950872 () Bool)

(assert (=> bs!1910275 m!7950872))

(declare-fun m!7950874 () Bool)

(assert (=> bs!1910275 m!7950874))

(declare-fun m!7950876 () Bool)

(assert (=> bs!1910275 m!7950876))

(assert (=> b!7266052 d!2260755))

(declare-fun bs!1910276 () Bool)

(declare-fun d!2260757 () Bool)

(assert (= bs!1910276 (and d!2260757 b!7266052)))

(declare-fun lambda!447492 () Int)

(assert (=> bs!1910276 (= lambda!447492 lambda!447471)))

(assert (=> d!2260757 true))

(assert (=> d!2260757 (= (derivationStepZipper!3508 lt!2592414 (h!77176 s!7854)) (flatMap!2881 lt!2592414 lambda!447492))))

(declare-fun bs!1910277 () Bool)

(assert (= bs!1910277 d!2260757))

(declare-fun m!7950878 () Bool)

(assert (=> bs!1910277 m!7950878))

(assert (=> b!7266052 d!2260757))

(assert (=> b!7266052 d!2260739))

(declare-fun d!2260759 () Bool)

(assert (=> d!2260759 (= (flatMap!2881 lt!2592421 lambda!447471) (dynLambda!28886 lambda!447471 ct1!250))))

(declare-fun lt!2592481 () Unit!164154)

(assert (=> d!2260759 (= lt!2592481 (choose!56315 lt!2592421 ct1!250 lambda!447471))))

(assert (=> d!2260759 (= lt!2592421 (set.insert ct1!250 (as set.empty (Set Context!15416))))))

(assert (=> d!2260759 (= (lemmaFlatMapOnSingletonSet!2281 lt!2592421 ct1!250 lambda!447471) lt!2592481)))

(declare-fun b_lambda!279791 () Bool)

(assert (=> (not b_lambda!279791) (not d!2260759)))

(declare-fun bs!1910278 () Bool)

(assert (= bs!1910278 d!2260759))

(assert (=> bs!1910278 m!7950768))

(declare-fun m!7950880 () Bool)

(assert (=> bs!1910278 m!7950880))

(declare-fun m!7950882 () Bool)

(assert (=> bs!1910278 m!7950882))

(assert (=> bs!1910278 m!7950762))

(assert (=> b!7266052 d!2260759))

(declare-fun d!2260761 () Bool)

(assert (=> d!2260761 (= (flatMap!2881 lt!2592414 lambda!447471) (choose!56314 lt!2592414 lambda!447471))))

(declare-fun bs!1910279 () Bool)

(assert (= bs!1910279 d!2260761))

(declare-fun m!7950884 () Bool)

(assert (=> bs!1910279 m!7950884))

(assert (=> b!7266052 d!2260761))

(declare-fun b!7266205 () Bool)

(declare-fun e!4357366 () Bool)

(declare-fun call!662262 () Bool)

(assert (=> b!7266205 (= e!4357366 call!662262)))

(declare-fun b!7266206 () Bool)

(declare-fun e!4357365 () Bool)

(assert (=> b!7266206 (= e!4357365 call!662262)))

(declare-fun b!7266207 () Bool)

(declare-fun e!4357369 () Bool)

(declare-fun call!662261 () Bool)

(assert (=> b!7266207 (= e!4357369 call!662261)))

(declare-fun b!7266208 () Bool)

(declare-fun res!2945858 () Bool)

(assert (=> b!7266208 (=> (not res!2945858) (not e!4357365))))

(declare-fun call!662260 () Bool)

(assert (=> b!7266208 (= res!2945858 call!662260)))

(declare-fun e!4357368 () Bool)

(assert (=> b!7266208 (= e!4357368 e!4357365)))

(declare-fun bm!662255 () Bool)

(declare-fun c!1352062 () Bool)

(assert (=> bm!662255 (= call!662260 (validRegex!9571 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))

(declare-fun bm!662256 () Bool)

(declare-fun c!1352063 () Bool)

(assert (=> bm!662256 (= call!662261 (validRegex!9571 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250)))))))))

(declare-fun d!2260763 () Bool)

(declare-fun res!2945859 () Bool)

(declare-fun e!4357364 () Bool)

(assert (=> d!2260763 (=> res!2945859 e!4357364)))

(assert (=> d!2260763 (= res!2945859 (is-ElementMatch!18768 (h!77175 (exprs!8208 ct1!250))))))

(assert (=> d!2260763 (= (validRegex!9571 (h!77175 (exprs!8208 ct1!250))) e!4357364)))

(declare-fun b!7266209 () Bool)

(declare-fun e!4357370 () Bool)

(assert (=> b!7266209 (= e!4357370 e!4357366)))

(declare-fun res!2945861 () Bool)

(assert (=> b!7266209 (=> (not res!2945861) (not e!4357366))))

(assert (=> b!7266209 (= res!2945861 call!662260)))

(declare-fun b!7266210 () Bool)

(declare-fun res!2945860 () Bool)

(assert (=> b!7266210 (=> res!2945860 e!4357370)))

(assert (=> b!7266210 (= res!2945860 (not (is-Concat!27613 (h!77175 (exprs!8208 ct1!250)))))))

(assert (=> b!7266210 (= e!4357368 e!4357370)))

(declare-fun b!7266211 () Bool)

(declare-fun e!4357367 () Bool)

(assert (=> b!7266211 (= e!4357364 e!4357367)))

(assert (=> b!7266211 (= c!1352063 (is-Star!18768 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun bm!662257 () Bool)

(assert (=> bm!662257 (= call!662262 call!662261)))

(declare-fun b!7266212 () Bool)

(assert (=> b!7266212 (= e!4357367 e!4357368)))

(assert (=> b!7266212 (= c!1352062 (is-Union!18768 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun b!7266213 () Bool)

(assert (=> b!7266213 (= e!4357367 e!4357369)))

(declare-fun res!2945857 () Bool)

(assert (=> b!7266213 (= res!2945857 (not (nullable!7968 (reg!19097 (h!77175 (exprs!8208 ct1!250))))))))

(assert (=> b!7266213 (=> (not res!2945857) (not e!4357369))))

(assert (= (and d!2260763 (not res!2945859)) b!7266211))

(assert (= (and b!7266211 c!1352063) b!7266213))

(assert (= (and b!7266211 (not c!1352063)) b!7266212))

(assert (= (and b!7266213 res!2945857) b!7266207))

(assert (= (and b!7266212 c!1352062) b!7266208))

(assert (= (and b!7266212 (not c!1352062)) b!7266210))

(assert (= (and b!7266208 res!2945858) b!7266206))

(assert (= (and b!7266210 (not res!2945860)) b!7266209))

(assert (= (and b!7266209 res!2945861) b!7266205))

(assert (= (or b!7266208 b!7266209) bm!662255))

(assert (= (or b!7266206 b!7266205) bm!662257))

(assert (= (or b!7266207 bm!662257) bm!662256))

(declare-fun m!7950890 () Bool)

(assert (=> bm!662255 m!7950890))

(declare-fun m!7950892 () Bool)

(assert (=> bm!662256 m!7950892))

(declare-fun m!7950894 () Bool)

(assert (=> b!7266213 m!7950894))

(assert (=> b!7266057 d!2260763))

(declare-fun b!7266214 () Bool)

(declare-fun e!4357371 () List!70851)

(assert (=> b!7266214 (= e!4357371 (exprs!8208 ct2!346))))

(declare-fun b!7266216 () Bool)

(declare-fun res!2945863 () Bool)

(declare-fun e!4357372 () Bool)

(assert (=> b!7266216 (=> (not res!2945863) (not e!4357372))))

(declare-fun lt!2592482 () List!70851)

(assert (=> b!7266216 (= res!2945863 (= (size!41799 lt!2592482) (+ (size!41799 lt!2592411) (size!41799 (exprs!8208 ct2!346)))))))

(declare-fun d!2260769 () Bool)

(assert (=> d!2260769 e!4357372))

(declare-fun res!2945862 () Bool)

(assert (=> d!2260769 (=> (not res!2945862) (not e!4357372))))

(assert (=> d!2260769 (= res!2945862 (= (content!14751 lt!2592482) (set.union (content!14751 lt!2592411) (content!14751 (exprs!8208 ct2!346)))))))

(assert (=> d!2260769 (= lt!2592482 e!4357371)))

(declare-fun c!1352064 () Bool)

(assert (=> d!2260769 (= c!1352064 (is-Nil!70727 lt!2592411))))

(assert (=> d!2260769 (= (++!16668 lt!2592411 (exprs!8208 ct2!346)) lt!2592482)))

(declare-fun b!7266217 () Bool)

(assert (=> b!7266217 (= e!4357372 (or (not (= (exprs!8208 ct2!346) Nil!70727)) (= lt!2592482 lt!2592411)))))

(declare-fun b!7266215 () Bool)

(assert (=> b!7266215 (= e!4357371 (Cons!70727 (h!77175 lt!2592411) (++!16668 (t!384919 lt!2592411) (exprs!8208 ct2!346))))))

(assert (= (and d!2260769 c!1352064) b!7266214))

(assert (= (and d!2260769 (not c!1352064)) b!7266215))

(assert (= (and d!2260769 res!2945862) b!7266216))

(assert (= (and b!7266216 res!2945863) b!7266217))

(declare-fun m!7950896 () Bool)

(assert (=> b!7266216 m!7950896))

(declare-fun m!7950898 () Bool)

(assert (=> b!7266216 m!7950898))

(assert (=> b!7266216 m!7950858))

(declare-fun m!7950900 () Bool)

(assert (=> d!2260769 m!7950900))

(declare-fun m!7950902 () Bool)

(assert (=> d!2260769 m!7950902))

(assert (=> d!2260769 m!7950864))

(declare-fun m!7950904 () Bool)

(assert (=> b!7266215 m!7950904))

(assert (=> b!7266057 d!2260769))

(declare-fun d!2260771 () Bool)

(assert (=> d!2260771 (forall!17601 (++!16668 lt!2592411 (exprs!8208 ct2!346)) lambda!447470)))

(declare-fun lt!2592483 () Unit!164154)

(assert (=> d!2260771 (= lt!2592483 (choose!56316 lt!2592411 (exprs!8208 ct2!346) lambda!447470))))

(assert (=> d!2260771 (forall!17601 lt!2592411 lambda!447470)))

(assert (=> d!2260771 (= (lemmaConcatPreservesForall!1525 lt!2592411 (exprs!8208 ct2!346) lambda!447470) lt!2592483)))

(declare-fun bs!1910280 () Bool)

(assert (= bs!1910280 d!2260771))

(assert (=> bs!1910280 m!7950748))

(assert (=> bs!1910280 m!7950748))

(declare-fun m!7950906 () Bool)

(assert (=> bs!1910280 m!7950906))

(declare-fun m!7950908 () Bool)

(assert (=> bs!1910280 m!7950908))

(declare-fun m!7950910 () Bool)

(assert (=> bs!1910280 m!7950910))

(assert (=> b!7266057 d!2260771))

(declare-fun bs!1910281 () Bool)

(declare-fun d!2260773 () Bool)

(assert (= bs!1910281 (and d!2260773 b!7266052)))

(declare-fun lambda!447495 () Int)

(assert (=> bs!1910281 (not (= lambda!447495 lambda!447470))))

(assert (=> d!2260773 (= (nullableContext!258 ct1!250) (forall!17601 (exprs!8208 ct1!250) lambda!447495))))

(declare-fun bs!1910282 () Bool)

(assert (= bs!1910282 d!2260773))

(declare-fun m!7950912 () Bool)

(assert (=> bs!1910282 m!7950912))

(assert (=> b!7266062 d!2260773))

(declare-fun d!2260775 () Bool)

(declare-fun c!1352072 () Bool)

(declare-fun isEmpty!40659 (List!70852) Bool)

(assert (=> d!2260775 (= c!1352072 (isEmpty!40659 s!7854))))

(declare-fun e!4357389 () Bool)

(assert (=> d!2260775 (= (matchZipper!3672 (set.insert ct2!346 (as set.empty (Set Context!15416))) s!7854) e!4357389)))

(declare-fun b!7266240 () Bool)

(declare-fun nullableZipper!2979 ((Set Context!15416)) Bool)

(assert (=> b!7266240 (= e!4357389 (nullableZipper!2979 (set.insert ct2!346 (as set.empty (Set Context!15416)))))))

(declare-fun b!7266241 () Bool)

(declare-fun head!14978 (List!70852) C!37810)

(declare-fun tail!14447 (List!70852) List!70852)

(assert (=> b!7266241 (= e!4357389 (matchZipper!3672 (derivationStepZipper!3508 (set.insert ct2!346 (as set.empty (Set Context!15416))) (head!14978 s!7854)) (tail!14447 s!7854)))))

(assert (= (and d!2260775 c!1352072) b!7266240))

(assert (= (and d!2260775 (not c!1352072)) b!7266241))

(declare-fun m!7950914 () Bool)

(assert (=> d!2260775 m!7950914))

(assert (=> b!7266240 m!7950726))

(declare-fun m!7950916 () Bool)

(assert (=> b!7266240 m!7950916))

(declare-fun m!7950918 () Bool)

(assert (=> b!7266241 m!7950918))

(assert (=> b!7266241 m!7950726))

(assert (=> b!7266241 m!7950918))

(declare-fun m!7950920 () Bool)

(assert (=> b!7266241 m!7950920))

(declare-fun m!7950922 () Bool)

(assert (=> b!7266241 m!7950922))

(assert (=> b!7266241 m!7950920))

(assert (=> b!7266241 m!7950922))

(declare-fun m!7950924 () Bool)

(assert (=> b!7266241 m!7950924))

(assert (=> start!708656 d!2260775))

(declare-fun bs!1910283 () Bool)

(declare-fun d!2260777 () Bool)

(assert (= bs!1910283 (and d!2260777 b!7266052)))

(declare-fun lambda!447498 () Int)

(assert (=> bs!1910283 (= lambda!447498 lambda!447470)))

(declare-fun bs!1910284 () Bool)

(assert (= bs!1910284 (and d!2260777 d!2260773)))

(assert (=> bs!1910284 (not (= lambda!447498 lambda!447495))))

(assert (=> d!2260777 (= (inv!89931 ct2!346) (forall!17601 (exprs!8208 ct2!346) lambda!447498))))

(declare-fun bs!1910285 () Bool)

(assert (= bs!1910285 d!2260777))

(declare-fun m!7950926 () Bool)

(assert (=> bs!1910285 m!7950926))

(assert (=> start!708656 d!2260777))

(declare-fun bs!1910286 () Bool)

(declare-fun d!2260779 () Bool)

(assert (= bs!1910286 (and d!2260779 b!7266052)))

(declare-fun lambda!447499 () Int)

(assert (=> bs!1910286 (= lambda!447499 lambda!447470)))

(declare-fun bs!1910287 () Bool)

(assert (= bs!1910287 (and d!2260779 d!2260773)))

(assert (=> bs!1910287 (not (= lambda!447499 lambda!447495))))

(declare-fun bs!1910288 () Bool)

(assert (= bs!1910288 (and d!2260779 d!2260777)))

(assert (=> bs!1910288 (= lambda!447499 lambda!447498)))

(assert (=> d!2260779 (= (inv!89931 ct1!250) (forall!17601 (exprs!8208 ct1!250) lambda!447499))))

(declare-fun bs!1910289 () Bool)

(assert (= bs!1910289 d!2260779))

(declare-fun m!7950928 () Bool)

(assert (=> bs!1910289 m!7950928))

(assert (=> start!708656 d!2260779))

(declare-fun b!7266246 () Bool)

(declare-fun e!4357392 () Bool)

(declare-fun tp!2040477 () Bool)

(declare-fun tp!2040478 () Bool)

(assert (=> b!7266246 (= e!4357392 (and tp!2040477 tp!2040478))))

(assert (=> b!7266055 (= tp!2040463 e!4357392)))

(assert (= (and b!7266055 (is-Cons!70727 (exprs!8208 ct2!346))) b!7266246))

(declare-fun b!7266247 () Bool)

(declare-fun e!4357393 () Bool)

(declare-fun tp!2040479 () Bool)

(declare-fun tp!2040480 () Bool)

(assert (=> b!7266247 (= e!4357393 (and tp!2040479 tp!2040480))))

(assert (=> b!7266060 (= tp!2040462 e!4357393)))

(assert (= (and b!7266060 (is-Cons!70727 (exprs!8208 ct1!250))) b!7266247))

(declare-fun b!7266252 () Bool)

(declare-fun e!4357396 () Bool)

(declare-fun tp!2040483 () Bool)

(assert (=> b!7266252 (= e!4357396 (and tp_is_empty!47001 tp!2040483))))

(assert (=> b!7266054 (= tp!2040461 e!4357396)))

(assert (= (and b!7266054 (is-Cons!70728 (t!384920 s!7854))) b!7266252))

(declare-fun b_lambda!279793 () Bool)

(assert (= b_lambda!279791 (or b!7266052 b_lambda!279793)))

(declare-fun bs!1910290 () Bool)

(declare-fun d!2260781 () Bool)

(assert (= bs!1910290 (and d!2260781 b!7266052)))

(assert (=> bs!1910290 (= (dynLambda!28886 lambda!447471 ct1!250) (derivationStepZipperUp!2538 ct1!250 (h!77176 s!7854)))))

(assert (=> bs!1910290 m!7950742))

(assert (=> d!2260759 d!2260781))

(declare-fun b_lambda!279795 () Bool)

(assert (= b_lambda!279789 (or b!7266052 b_lambda!279795)))

(declare-fun bs!1910291 () Bool)

(declare-fun d!2260783 () Bool)

(assert (= bs!1910291 (and d!2260783 b!7266052)))

(assert (=> bs!1910291 (= (dynLambda!28886 lambda!447471 lt!2592416) (derivationStepZipperUp!2538 lt!2592416 (h!77176 s!7854)))))

(assert (=> bs!1910291 m!7950764))

(assert (=> d!2260753 d!2260783))

(push 1)

(assert (not bm!662240))

(assert (not bm!662243))

(assert (not d!2260759))

(assert (not b!7266155))

(assert (not d!2260745))

(assert (not d!2260771))

(assert (not bs!1910291))

(assert (not bm!662256))

(assert tp_is_empty!47001)

(assert (not b!7266157))

(assert (not b!7266150))

(assert (not d!2260775))

(assert (not b!7266216))

(assert (not b!7266147))

(assert (not d!2260737))

(assert (not bm!662245))

(assert (not b!7266213))

(assert (not bm!662244))

(assert (not d!2260755))

(assert (not b_lambda!279795))

(assert (not d!2260749))

(assert (not b!7266168))

(assert (not b!7266240))

(assert (not b!7266145))

(assert (not d!2260753))

(assert (not b_lambda!279793))

(assert (not d!2260769))

(assert (not bm!662255))

(assert (not d!2260779))

(assert (not bm!662239))

(assert (not d!2260757))

(assert (not b!7266152))

(assert (not b!7266215))

(assert (not b!7266122))

(assert (not b!7266246))

(assert (not b!7266252))

(assert (not bm!662237))

(assert (not d!2260777))

(assert (not d!2260773))

(assert (not b!7266167))

(assert (not d!2260761))

(assert (not b!7266241))

(assert (not bs!1910290))

(assert (not b!7266247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2260823 () Bool)

(assert (=> d!2260823 (= (isEmpty!40659 s!7854) (is-Nil!70728 s!7854))))

(assert (=> d!2260775 d!2260823))

(declare-fun d!2260825 () Bool)

(declare-fun res!2945904 () Bool)

(declare-fun e!4357462 () Bool)

(assert (=> d!2260825 (=> res!2945904 e!4357462)))

(assert (=> d!2260825 (= res!2945904 (is-EmptyExpr!18768 (h!77175 (exprs!8208 ct1!250))))))

(assert (=> d!2260825 (= (nullableFct!3134 (h!77175 (exprs!8208 ct1!250))) e!4357462)))

(declare-fun b!7266354 () Bool)

(declare-fun e!4357458 () Bool)

(declare-fun e!4357463 () Bool)

(assert (=> b!7266354 (= e!4357458 e!4357463)))

(declare-fun c!1352106 () Bool)

(assert (=> b!7266354 (= c!1352106 (is-Union!18768 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun bm!662291 () Bool)

(declare-fun call!662297 () Bool)

(assert (=> bm!662291 (= call!662297 (nullable!7968 (ite c!1352106 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))

(declare-fun b!7266355 () Bool)

(declare-fun e!4357460 () Bool)

(assert (=> b!7266355 (= e!4357463 e!4357460)))

(declare-fun res!2945905 () Bool)

(assert (=> b!7266355 (= res!2945905 call!662297)))

(assert (=> b!7266355 (=> (not res!2945905) (not e!4357460))))

(declare-fun b!7266356 () Bool)

(declare-fun e!4357459 () Bool)

(assert (=> b!7266356 (= e!4357462 e!4357459)))

(declare-fun res!2945902 () Bool)

(assert (=> b!7266356 (=> (not res!2945902) (not e!4357459))))

(assert (=> b!7266356 (= res!2945902 (and (not (is-EmptyLang!18768 (h!77175 (exprs!8208 ct1!250)))) (not (is-ElementMatch!18768 (h!77175 (exprs!8208 ct1!250))))))))

(declare-fun b!7266357 () Bool)

(declare-fun e!4357461 () Bool)

(assert (=> b!7266357 (= e!4357463 e!4357461)))

(declare-fun res!2945906 () Bool)

(declare-fun call!662296 () Bool)

(assert (=> b!7266357 (= res!2945906 call!662296)))

(assert (=> b!7266357 (=> res!2945906 e!4357461)))

(declare-fun b!7266358 () Bool)

(assert (=> b!7266358 (= e!4357460 call!662296)))

(declare-fun b!7266359 () Bool)

(assert (=> b!7266359 (= e!4357459 e!4357458)))

(declare-fun res!2945903 () Bool)

(assert (=> b!7266359 (=> res!2945903 e!4357458)))

(assert (=> b!7266359 (= res!2945903 (is-Star!18768 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun b!7266360 () Bool)

(assert (=> b!7266360 (= e!4357461 call!662297)))

(declare-fun bm!662292 () Bool)

(assert (=> bm!662292 (= call!662296 (nullable!7968 (ite c!1352106 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250))))))))

(assert (= (and d!2260825 (not res!2945904)) b!7266356))

(assert (= (and b!7266356 res!2945902) b!7266359))

(assert (= (and b!7266359 (not res!2945903)) b!7266354))

(assert (= (and b!7266354 c!1352106) b!7266357))

(assert (= (and b!7266354 (not c!1352106)) b!7266355))

(assert (= (and b!7266357 (not res!2945906)) b!7266360))

(assert (= (and b!7266355 res!2945905) b!7266358))

(assert (= (or b!7266357 b!7266358) bm!662292))

(assert (= (or b!7266360 b!7266355) bm!662291))

(declare-fun m!7951026 () Bool)

(assert (=> bm!662291 m!7951026))

(declare-fun m!7951028 () Bool)

(assert (=> bm!662292 m!7951028))

(assert (=> d!2260737 d!2260825))

(declare-fun b!7266361 () Bool)

(declare-fun e!4357465 () Bool)

(assert (=> b!7266361 (= e!4357465 (nullable!7968 (regOne!38048 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250)))))))))))

(declare-fun b!7266362 () Bool)

(declare-fun e!4357467 () (Set Context!15416))

(declare-fun e!4357468 () (Set Context!15416))

(assert (=> b!7266362 (= e!4357467 e!4357468)))

(declare-fun c!1352111 () Bool)

(assert (=> b!7266362 (= c!1352111 (is-Union!18768 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))))))

(declare-fun b!7266363 () Bool)

(declare-fun e!4357464 () (Set Context!15416))

(declare-fun call!662299 () (Set Context!15416))

(assert (=> b!7266363 (= e!4357464 call!662299)))

(declare-fun b!7266364 () Bool)

(assert (=> b!7266364 (= e!4357467 (set.insert (ite (or c!1352036 c!1352033) lt!2592410 (Context!15417 call!662244)) (as set.empty (Set Context!15416))))))

(declare-fun b!7266365 () Bool)

(declare-fun e!4357466 () (Set Context!15416))

(assert (=> b!7266365 (= e!4357466 call!662299)))

(declare-fun bm!662293 () Bool)

(declare-fun call!662302 () List!70851)

(declare-fun call!662300 () List!70851)

(assert (=> bm!662293 (= call!662302 call!662300)))

(declare-fun b!7266366 () Bool)

(declare-fun c!1352109 () Bool)

(assert (=> b!7266366 (= c!1352109 (is-Star!18768 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))))))

(assert (=> b!7266366 (= e!4357466 e!4357464)))

(declare-fun d!2260827 () Bool)

(declare-fun c!1352107 () Bool)

(assert (=> d!2260827 (= c!1352107 (and (is-ElementMatch!18768 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))) (= (c!1352016 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))) (h!77176 s!7854))))))

(assert (=> d!2260827 (= (derivationStepZipperDown!2702 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250)))))) (ite (or c!1352036 c!1352033) lt!2592410 (Context!15417 call!662244)) (h!77176 s!7854)) e!4357467)))

(declare-fun bm!662294 () Bool)

(declare-fun call!662303 () (Set Context!15416))

(declare-fun call!662298 () (Set Context!15416))

(assert (=> bm!662294 (= call!662303 call!662298)))

(declare-fun b!7266367 () Bool)

(declare-fun call!662301 () (Set Context!15416))

(assert (=> b!7266367 (= e!4357468 (set.union call!662298 call!662301))))

(declare-fun c!1352108 () Bool)

(declare-fun c!1352110 () Bool)

(declare-fun bm!662295 () Bool)

(assert (=> bm!662295 (= call!662298 (derivationStepZipperDown!2702 (ite c!1352111 (regOne!38049 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))) (ite c!1352108 (regTwo!38048 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))) (ite c!1352110 (regOne!38048 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))) (reg!19097 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250)))))))))) (ite (or c!1352111 c!1352108) (ite (or c!1352036 c!1352033) lt!2592410 (Context!15417 call!662244)) (Context!15417 call!662302)) (h!77176 s!7854)))))

(declare-fun b!7266368 () Bool)

(declare-fun e!4357469 () (Set Context!15416))

(assert (=> b!7266368 (= e!4357469 e!4357466)))

(assert (=> b!7266368 (= c!1352110 (is-Concat!27613 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))))))

(declare-fun b!7266369 () Bool)

(assert (=> b!7266369 (= e!4357464 (as set.empty (Set Context!15416)))))

(declare-fun b!7266370 () Bool)

(assert (=> b!7266370 (= e!4357469 (set.union call!662301 call!662303))))

(declare-fun bm!662296 () Bool)

(assert (=> bm!662296 (= call!662299 call!662303)))

(declare-fun bm!662297 () Bool)

(assert (=> bm!662297 (= call!662300 ($colon$colon!2948 (exprs!8208 (ite (or c!1352036 c!1352033) lt!2592410 (Context!15417 call!662244))) (ite (or c!1352108 c!1352110) (regTwo!38048 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))) (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250)))))))))))

(declare-fun b!7266371 () Bool)

(assert (=> b!7266371 (= c!1352108 e!4357465)))

(declare-fun res!2945907 () Bool)

(assert (=> b!7266371 (=> (not res!2945907) (not e!4357465))))

(assert (=> b!7266371 (= res!2945907 (is-Concat!27613 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))))))

(assert (=> b!7266371 (= e!4357468 e!4357469)))

(declare-fun bm!662298 () Bool)

(assert (=> bm!662298 (= call!662301 (derivationStepZipperDown!2702 (ite c!1352111 (regTwo!38049 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250))))))) (regOne!38048 (ite c!1352036 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352033 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352035 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250)))))))) (ite c!1352111 (ite (or c!1352036 c!1352033) lt!2592410 (Context!15417 call!662244)) (Context!15417 call!662300)) (h!77176 s!7854)))))

(assert (= (and d!2260827 c!1352107) b!7266364))

(assert (= (and d!2260827 (not c!1352107)) b!7266362))

(assert (= (and b!7266362 c!1352111) b!7266367))

(assert (= (and b!7266362 (not c!1352111)) b!7266371))

(assert (= (and b!7266371 res!2945907) b!7266361))

(assert (= (and b!7266371 c!1352108) b!7266370))

(assert (= (and b!7266371 (not c!1352108)) b!7266368))

(assert (= (and b!7266368 c!1352110) b!7266365))

(assert (= (and b!7266368 (not c!1352110)) b!7266366))

(assert (= (and b!7266366 c!1352109) b!7266363))

(assert (= (and b!7266366 (not c!1352109)) b!7266369))

(assert (= (or b!7266365 b!7266363) bm!662293))

(assert (= (or b!7266365 b!7266363) bm!662296))

(assert (= (or b!7266370 bm!662293) bm!662297))

(assert (= (or b!7266370 bm!662296) bm!662294))

(assert (= (or b!7266367 bm!662294) bm!662295))

(assert (= (or b!7266367 b!7266370) bm!662298))

(declare-fun m!7951030 () Bool)

(assert (=> b!7266364 m!7951030))

(declare-fun m!7951032 () Bool)

(assert (=> bm!662295 m!7951032))

(declare-fun m!7951034 () Bool)

(assert (=> bm!662298 m!7951034))

(declare-fun m!7951036 () Bool)

(assert (=> bm!662297 m!7951036))

(declare-fun m!7951038 () Bool)

(assert (=> b!7266361 m!7951038))

(assert (=> bm!662237 d!2260827))

(declare-fun d!2260829 () Bool)

(declare-fun lt!2592498 () Int)

(assert (=> d!2260829 (>= lt!2592498 0)))

(declare-fun e!4357472 () Int)

(assert (=> d!2260829 (= lt!2592498 e!4357472)))

(declare-fun c!1352114 () Bool)

(assert (=> d!2260829 (= c!1352114 (is-Nil!70727 lt!2592474))))

(assert (=> d!2260829 (= (size!41799 lt!2592474) lt!2592498)))

(declare-fun b!7266376 () Bool)

(assert (=> b!7266376 (= e!4357472 0)))

(declare-fun b!7266377 () Bool)

(assert (=> b!7266377 (= e!4357472 (+ 1 (size!41799 (t!384919 lt!2592474))))))

(assert (= (and d!2260829 c!1352114) b!7266376))

(assert (= (and d!2260829 (not c!1352114)) b!7266377))

(declare-fun m!7951040 () Bool)

(assert (=> b!7266377 m!7951040))

(assert (=> b!7266168 d!2260829))

(declare-fun d!2260831 () Bool)

(declare-fun lt!2592499 () Int)

(assert (=> d!2260831 (>= lt!2592499 0)))

(declare-fun e!4357473 () Int)

(assert (=> d!2260831 (= lt!2592499 e!4357473)))

(declare-fun c!1352115 () Bool)

(assert (=> d!2260831 (= c!1352115 (is-Nil!70727 (exprs!8208 ct1!250)))))

(assert (=> d!2260831 (= (size!41799 (exprs!8208 ct1!250)) lt!2592499)))

(declare-fun b!7266378 () Bool)

(assert (=> b!7266378 (= e!4357473 0)))

(declare-fun b!7266379 () Bool)

(assert (=> b!7266379 (= e!4357473 (+ 1 (size!41799 (t!384919 (exprs!8208 ct1!250)))))))

(assert (= (and d!2260831 c!1352115) b!7266378))

(assert (= (and d!2260831 (not c!1352115)) b!7266379))

(declare-fun m!7951042 () Bool)

(assert (=> b!7266379 m!7951042))

(assert (=> b!7266168 d!2260831))

(declare-fun d!2260833 () Bool)

(declare-fun lt!2592500 () Int)

(assert (=> d!2260833 (>= lt!2592500 0)))

(declare-fun e!4357474 () Int)

(assert (=> d!2260833 (= lt!2592500 e!4357474)))

(declare-fun c!1352116 () Bool)

(assert (=> d!2260833 (= c!1352116 (is-Nil!70727 (exprs!8208 ct2!346)))))

(assert (=> d!2260833 (= (size!41799 (exprs!8208 ct2!346)) lt!2592500)))

(declare-fun b!7266380 () Bool)

(assert (=> b!7266380 (= e!4357474 0)))

(declare-fun b!7266381 () Bool)

(assert (=> b!7266381 (= e!4357474 (+ 1 (size!41799 (t!384919 (exprs!8208 ct2!346)))))))

(assert (= (and d!2260833 c!1352116) b!7266380))

(assert (= (and d!2260833 (not c!1352116)) b!7266381))

(declare-fun m!7951044 () Bool)

(assert (=> b!7266381 m!7951044))

(assert (=> b!7266168 d!2260833))

(declare-fun b!7266382 () Bool)

(declare-fun e!4357476 () Bool)

(assert (=> b!7266382 (= e!4357476 (nullable!7968 (regOne!38048 (h!77175 (exprs!8208 lt!2592416)))))))

(declare-fun b!7266383 () Bool)

(declare-fun e!4357478 () (Set Context!15416))

(declare-fun e!4357479 () (Set Context!15416))

(assert (=> b!7266383 (= e!4357478 e!4357479)))

(declare-fun c!1352121 () Bool)

(assert (=> b!7266383 (= c!1352121 (is-Union!18768 (h!77175 (exprs!8208 lt!2592416))))))

(declare-fun b!7266384 () Bool)

(declare-fun e!4357475 () (Set Context!15416))

(declare-fun call!662305 () (Set Context!15416))

(assert (=> b!7266384 (= e!4357475 call!662305)))

(declare-fun b!7266385 () Bool)

(assert (=> b!7266385 (= e!4357478 (set.insert (Context!15417 (t!384919 (exprs!8208 lt!2592416))) (as set.empty (Set Context!15416))))))

(declare-fun b!7266386 () Bool)

(declare-fun e!4357477 () (Set Context!15416))

(assert (=> b!7266386 (= e!4357477 call!662305)))

(declare-fun bm!662299 () Bool)

(declare-fun call!662308 () List!70851)

(declare-fun call!662306 () List!70851)

(assert (=> bm!662299 (= call!662308 call!662306)))

(declare-fun b!7266387 () Bool)

(declare-fun c!1352119 () Bool)

(assert (=> b!7266387 (= c!1352119 (is-Star!18768 (h!77175 (exprs!8208 lt!2592416))))))

(assert (=> b!7266387 (= e!4357477 e!4357475)))

(declare-fun d!2260835 () Bool)

(declare-fun c!1352117 () Bool)

(assert (=> d!2260835 (= c!1352117 (and (is-ElementMatch!18768 (h!77175 (exprs!8208 lt!2592416))) (= (c!1352016 (h!77175 (exprs!8208 lt!2592416))) (h!77176 s!7854))))))

(assert (=> d!2260835 (= (derivationStepZipperDown!2702 (h!77175 (exprs!8208 lt!2592416)) (Context!15417 (t!384919 (exprs!8208 lt!2592416))) (h!77176 s!7854)) e!4357478)))

(declare-fun bm!662300 () Bool)

(declare-fun call!662309 () (Set Context!15416))

(declare-fun call!662304 () (Set Context!15416))

(assert (=> bm!662300 (= call!662309 call!662304)))

(declare-fun b!7266388 () Bool)

(declare-fun call!662307 () (Set Context!15416))

(assert (=> b!7266388 (= e!4357479 (set.union call!662304 call!662307))))

(declare-fun c!1352118 () Bool)

(declare-fun bm!662301 () Bool)

(declare-fun c!1352120 () Bool)

(assert (=> bm!662301 (= call!662304 (derivationStepZipperDown!2702 (ite c!1352121 (regOne!38049 (h!77175 (exprs!8208 lt!2592416))) (ite c!1352118 (regTwo!38048 (h!77175 (exprs!8208 lt!2592416))) (ite c!1352120 (regOne!38048 (h!77175 (exprs!8208 lt!2592416))) (reg!19097 (h!77175 (exprs!8208 lt!2592416)))))) (ite (or c!1352121 c!1352118) (Context!15417 (t!384919 (exprs!8208 lt!2592416))) (Context!15417 call!662308)) (h!77176 s!7854)))))

(declare-fun b!7266389 () Bool)

(declare-fun e!4357480 () (Set Context!15416))

(assert (=> b!7266389 (= e!4357480 e!4357477)))

(assert (=> b!7266389 (= c!1352120 (is-Concat!27613 (h!77175 (exprs!8208 lt!2592416))))))

(declare-fun b!7266390 () Bool)

(assert (=> b!7266390 (= e!4357475 (as set.empty (Set Context!15416)))))

(declare-fun b!7266391 () Bool)

(assert (=> b!7266391 (= e!4357480 (set.union call!662307 call!662309))))

(declare-fun bm!662302 () Bool)

(assert (=> bm!662302 (= call!662305 call!662309)))

(declare-fun bm!662303 () Bool)

(assert (=> bm!662303 (= call!662306 ($colon$colon!2948 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592416)))) (ite (or c!1352118 c!1352120) (regTwo!38048 (h!77175 (exprs!8208 lt!2592416))) (h!77175 (exprs!8208 lt!2592416)))))))

(declare-fun b!7266392 () Bool)

(assert (=> b!7266392 (= c!1352118 e!4357476)))

(declare-fun res!2945908 () Bool)

(assert (=> b!7266392 (=> (not res!2945908) (not e!4357476))))

(assert (=> b!7266392 (= res!2945908 (is-Concat!27613 (h!77175 (exprs!8208 lt!2592416))))))

(assert (=> b!7266392 (= e!4357479 e!4357480)))

(declare-fun bm!662304 () Bool)

(assert (=> bm!662304 (= call!662307 (derivationStepZipperDown!2702 (ite c!1352121 (regTwo!38049 (h!77175 (exprs!8208 lt!2592416))) (regOne!38048 (h!77175 (exprs!8208 lt!2592416)))) (ite c!1352121 (Context!15417 (t!384919 (exprs!8208 lt!2592416))) (Context!15417 call!662306)) (h!77176 s!7854)))))

(assert (= (and d!2260835 c!1352117) b!7266385))

(assert (= (and d!2260835 (not c!1352117)) b!7266383))

(assert (= (and b!7266383 c!1352121) b!7266388))

(assert (= (and b!7266383 (not c!1352121)) b!7266392))

(assert (= (and b!7266392 res!2945908) b!7266382))

(assert (= (and b!7266392 c!1352118) b!7266391))

(assert (= (and b!7266392 (not c!1352118)) b!7266389))

(assert (= (and b!7266389 c!1352120) b!7266386))

(assert (= (and b!7266389 (not c!1352120)) b!7266387))

(assert (= (and b!7266387 c!1352119) b!7266384))

(assert (= (and b!7266387 (not c!1352119)) b!7266390))

(assert (= (or b!7266386 b!7266384) bm!662299))

(assert (= (or b!7266386 b!7266384) bm!662302))

(assert (= (or b!7266391 bm!662299) bm!662303))

(assert (= (or b!7266391 bm!662302) bm!662300))

(assert (= (or b!7266388 bm!662300) bm!662301))

(assert (= (or b!7266388 b!7266391) bm!662304))

(declare-fun m!7951046 () Bool)

(assert (=> b!7266385 m!7951046))

(declare-fun m!7951048 () Bool)

(assert (=> bm!662301 m!7951048))

(declare-fun m!7951050 () Bool)

(assert (=> bm!662304 m!7951050))

(declare-fun m!7951052 () Bool)

(assert (=> bm!662303 m!7951052))

(declare-fun m!7951054 () Bool)

(assert (=> b!7266382 m!7951054))

(assert (=> bm!662245 d!2260835))

(declare-fun b!7266393 () Bool)

(declare-fun e!4357481 () List!70851)

(assert (=> b!7266393 (= e!4357481 (exprs!8208 ct2!346))))

(declare-fun b!7266395 () Bool)

(declare-fun res!2945910 () Bool)

(declare-fun e!4357482 () Bool)

(assert (=> b!7266395 (=> (not res!2945910) (not e!4357482))))

(declare-fun lt!2592501 () List!70851)

(assert (=> b!7266395 (= res!2945910 (= (size!41799 lt!2592501) (+ (size!41799 (t!384919 (exprs!8208 ct1!250))) (size!41799 (exprs!8208 ct2!346)))))))

(declare-fun d!2260837 () Bool)

(assert (=> d!2260837 e!4357482))

(declare-fun res!2945909 () Bool)

(assert (=> d!2260837 (=> (not res!2945909) (not e!4357482))))

(assert (=> d!2260837 (= res!2945909 (= (content!14751 lt!2592501) (set.union (content!14751 (t!384919 (exprs!8208 ct1!250))) (content!14751 (exprs!8208 ct2!346)))))))

(assert (=> d!2260837 (= lt!2592501 e!4357481)))

(declare-fun c!1352122 () Bool)

(assert (=> d!2260837 (= c!1352122 (is-Nil!70727 (t!384919 (exprs!8208 ct1!250))))))

(assert (=> d!2260837 (= (++!16668 (t!384919 (exprs!8208 ct1!250)) (exprs!8208 ct2!346)) lt!2592501)))

(declare-fun b!7266396 () Bool)

(assert (=> b!7266396 (= e!4357482 (or (not (= (exprs!8208 ct2!346) Nil!70727)) (= lt!2592501 (t!384919 (exprs!8208 ct1!250)))))))

(declare-fun b!7266394 () Bool)

(assert (=> b!7266394 (= e!4357481 (Cons!70727 (h!77175 (t!384919 (exprs!8208 ct1!250))) (++!16668 (t!384919 (t!384919 (exprs!8208 ct1!250))) (exprs!8208 ct2!346))))))

(assert (= (and d!2260837 c!1352122) b!7266393))

(assert (= (and d!2260837 (not c!1352122)) b!7266394))

(assert (= (and d!2260837 res!2945909) b!7266395))

(assert (= (and b!7266395 res!2945910) b!7266396))

(declare-fun m!7951056 () Bool)

(assert (=> b!7266395 m!7951056))

(assert (=> b!7266395 m!7951042))

(assert (=> b!7266395 m!7950858))

(declare-fun m!7951058 () Bool)

(assert (=> d!2260837 m!7951058))

(declare-fun m!7951060 () Bool)

(assert (=> d!2260837 m!7951060))

(assert (=> d!2260837 m!7950864))

(declare-fun m!7951062 () Bool)

(assert (=> b!7266394 m!7951062))

(assert (=> b!7266167 d!2260837))

(declare-fun d!2260839 () Bool)

(declare-fun lambda!447512 () Int)

(declare-fun exists!4489 ((Set Context!15416) Int) Bool)

(assert (=> d!2260839 (= (nullableZipper!2979 (set.insert ct2!346 (as set.empty (Set Context!15416)))) (exists!4489 (set.insert ct2!346 (as set.empty (Set Context!15416))) lambda!447512))))

(declare-fun bs!1910311 () Bool)

(assert (= bs!1910311 d!2260839))

(assert (=> bs!1910311 m!7950726))

(declare-fun m!7951064 () Bool)

(assert (=> bs!1910311 m!7951064))

(assert (=> b!7266240 d!2260839))

(assert (=> b!7266152 d!2260737))

(declare-fun d!2260841 () Bool)

(declare-fun res!2945915 () Bool)

(declare-fun e!4357487 () Bool)

(assert (=> d!2260841 (=> res!2945915 e!4357487)))

(assert (=> d!2260841 (= res!2945915 (is-Nil!70727 (++!16668 (exprs!8208 ct1!250) (exprs!8208 ct2!346))))))

(assert (=> d!2260841 (= (forall!17601 (++!16668 (exprs!8208 ct1!250) (exprs!8208 ct2!346)) lambda!447470) e!4357487)))

(declare-fun b!7266401 () Bool)

(declare-fun e!4357488 () Bool)

(assert (=> b!7266401 (= e!4357487 e!4357488)))

(declare-fun res!2945916 () Bool)

(assert (=> b!7266401 (=> (not res!2945916) (not e!4357488))))

(declare-fun dynLambda!28888 (Int Regex!18768) Bool)

(assert (=> b!7266401 (= res!2945916 (dynLambda!28888 lambda!447470 (h!77175 (++!16668 (exprs!8208 ct1!250) (exprs!8208 ct2!346)))))))

(declare-fun b!7266402 () Bool)

(assert (=> b!7266402 (= e!4357488 (forall!17601 (t!384919 (++!16668 (exprs!8208 ct1!250) (exprs!8208 ct2!346))) lambda!447470))))

(assert (= (and d!2260841 (not res!2945915)) b!7266401))

(assert (= (and b!7266401 res!2945916) b!7266402))

(declare-fun b_lambda!279805 () Bool)

(assert (=> (not b_lambda!279805) (not b!7266401)))

(declare-fun m!7951066 () Bool)

(assert (=> b!7266401 m!7951066))

(declare-fun m!7951068 () Bool)

(assert (=> b!7266402 m!7951068))

(assert (=> d!2260755 d!2260841))

(assert (=> d!2260755 d!2260749))

(declare-fun d!2260843 () Bool)

(assert (=> d!2260843 (forall!17601 (++!16668 (exprs!8208 ct1!250) (exprs!8208 ct2!346)) lambda!447470)))

(assert (=> d!2260843 true))

(declare-fun _$78!816 () Unit!164154)

(assert (=> d!2260843 (= (choose!56316 (exprs!8208 ct1!250) (exprs!8208 ct2!346) lambda!447470) _$78!816)))

(declare-fun bs!1910312 () Bool)

(assert (= bs!1910312 d!2260843))

(assert (=> bs!1910312 m!7950766))

(assert (=> bs!1910312 m!7950766))

(assert (=> bs!1910312 m!7950872))

(assert (=> d!2260755 d!2260843))

(declare-fun d!2260845 () Bool)

(declare-fun res!2945917 () Bool)

(declare-fun e!4357489 () Bool)

(assert (=> d!2260845 (=> res!2945917 e!4357489)))

(assert (=> d!2260845 (= res!2945917 (is-Nil!70727 (exprs!8208 ct1!250)))))

(assert (=> d!2260845 (= (forall!17601 (exprs!8208 ct1!250) lambda!447470) e!4357489)))

(declare-fun b!7266403 () Bool)

(declare-fun e!4357490 () Bool)

(assert (=> b!7266403 (= e!4357489 e!4357490)))

(declare-fun res!2945918 () Bool)

(assert (=> b!7266403 (=> (not res!2945918) (not e!4357490))))

(assert (=> b!7266403 (= res!2945918 (dynLambda!28888 lambda!447470 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun b!7266404 () Bool)

(assert (=> b!7266404 (= e!4357490 (forall!17601 (t!384919 (exprs!8208 ct1!250)) lambda!447470))))

(assert (= (and d!2260845 (not res!2945917)) b!7266403))

(assert (= (and b!7266403 res!2945918) b!7266404))

(declare-fun b_lambda!279807 () Bool)

(assert (=> (not b_lambda!279807) (not b!7266403)))

(declare-fun m!7951070 () Bool)

(assert (=> b!7266403 m!7951070))

(declare-fun m!7951072 () Bool)

(assert (=> b!7266404 m!7951072))

(assert (=> d!2260755 d!2260845))

(assert (=> d!2260753 d!2260761))

(declare-fun d!2260847 () Bool)

(assert (=> d!2260847 (= (flatMap!2881 lt!2592414 lambda!447471) (dynLambda!28886 lambda!447471 lt!2592416))))

(assert (=> d!2260847 true))

(declare-fun _$13!4628 () Unit!164154)

(assert (=> d!2260847 (= (choose!56315 lt!2592414 lt!2592416 lambda!447471) _$13!4628)))

(declare-fun b_lambda!279809 () Bool)

(assert (=> (not b_lambda!279809) (not d!2260847)))

(declare-fun bs!1910313 () Bool)

(assert (= bs!1910313 d!2260847))

(assert (=> bs!1910313 m!7950758))

(assert (=> bs!1910313 m!7950868))

(assert (=> d!2260753 d!2260847))

(declare-fun d!2260849 () Bool)

(assert (=> d!2260849 (= (flatMap!2881 lt!2592414 lambda!447492) (choose!56314 lt!2592414 lambda!447492))))

(declare-fun bs!1910314 () Bool)

(assert (= bs!1910314 d!2260849))

(declare-fun m!7951074 () Bool)

(assert (=> bs!1910314 m!7951074))

(assert (=> d!2260757 d!2260849))

(declare-fun d!2260851 () Bool)

(assert (=> d!2260851 (= (nullable!7968 (reg!19097 (h!77175 (exprs!8208 ct1!250)))) (nullableFct!3134 (reg!19097 (h!77175 (exprs!8208 ct1!250)))))))

(declare-fun bs!1910315 () Bool)

(assert (= bs!1910315 d!2260851))

(declare-fun m!7951076 () Bool)

(assert (=> bs!1910315 m!7951076))

(assert (=> b!7266213 d!2260851))

(declare-fun bm!662305 () Bool)

(declare-fun call!662310 () (Set Context!15416))

(assert (=> bm!662305 (= call!662310 (derivationStepZipperDown!2702 (h!77175 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 ct1!250))))) (Context!15417 (t!384919 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 ct1!250)))))) (h!77176 s!7854)))))

(declare-fun b!7266405 () Bool)

(declare-fun e!4357493 () (Set Context!15416))

(assert (=> b!7266405 (= e!4357493 call!662310)))

(declare-fun b!7266406 () Bool)

(assert (=> b!7266406 (= e!4357493 (as set.empty (Set Context!15416)))))

(declare-fun b!7266408 () Bool)

(declare-fun e!4357491 () (Set Context!15416))

(assert (=> b!7266408 (= e!4357491 e!4357493)))

(declare-fun c!1352125 () Bool)

(assert (=> b!7266408 (= c!1352125 (is-Cons!70727 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 ct1!250))))))))

(declare-fun b!7266409 () Bool)

(declare-fun e!4357492 () Bool)

(assert (=> b!7266409 (= e!4357492 (nullable!7968 (h!77175 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 ct1!250)))))))))

(declare-fun b!7266407 () Bool)

(assert (=> b!7266407 (= e!4357491 (set.union call!662310 (derivationStepZipperUp!2538 (Context!15417 (t!384919 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 ct1!250)))))) (h!77176 s!7854))))))

(declare-fun d!2260853 () Bool)

(declare-fun c!1352126 () Bool)

(assert (=> d!2260853 (= c!1352126 e!4357492)))

(declare-fun res!2945919 () Bool)

(assert (=> d!2260853 (=> (not res!2945919) (not e!4357492))))

(assert (=> d!2260853 (= res!2945919 (is-Cons!70727 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 ct1!250))))))))

(assert (=> d!2260853 (= (derivationStepZipperUp!2538 (Context!15417 (t!384919 (exprs!8208 ct1!250))) (h!77176 s!7854)) e!4357491)))

(assert (= (and d!2260853 res!2945919) b!7266409))

(assert (= (and d!2260853 c!1352126) b!7266407))

(assert (= (and d!2260853 (not c!1352126)) b!7266408))

(assert (= (and b!7266408 c!1352125) b!7266405))

(assert (= (and b!7266408 (not c!1352125)) b!7266406))

(assert (= (or b!7266407 b!7266405) bm!662305))

(declare-fun m!7951078 () Bool)

(assert (=> bm!662305 m!7951078))

(declare-fun m!7951080 () Bool)

(assert (=> b!7266409 m!7951080))

(declare-fun m!7951082 () Bool)

(assert (=> b!7266407 m!7951082))

(assert (=> b!7266150 d!2260853))

(assert (=> d!2260759 d!2260745))

(declare-fun d!2260855 () Bool)

(assert (=> d!2260855 (= (flatMap!2881 lt!2592421 lambda!447471) (dynLambda!28886 lambda!447471 ct1!250))))

(assert (=> d!2260855 true))

(declare-fun _$13!4629 () Unit!164154)

(assert (=> d!2260855 (= (choose!56315 lt!2592421 ct1!250 lambda!447471) _$13!4629)))

(declare-fun b_lambda!279811 () Bool)

(assert (=> (not b_lambda!279811) (not d!2260855)))

(declare-fun bs!1910316 () Bool)

(assert (= bs!1910316 d!2260855))

(assert (=> bs!1910316 m!7950768))

(assert (=> bs!1910316 m!7950880))

(assert (=> d!2260759 d!2260855))

(declare-fun d!2260857 () Bool)

(declare-fun res!2945920 () Bool)

(declare-fun e!4357494 () Bool)

(assert (=> d!2260857 (=> res!2945920 e!4357494)))

(assert (=> d!2260857 (= res!2945920 (is-Nil!70727 (exprs!8208 ct1!250)))))

(assert (=> d!2260857 (= (forall!17601 (exprs!8208 ct1!250) lambda!447495) e!4357494)))

(declare-fun b!7266410 () Bool)

(declare-fun e!4357495 () Bool)

(assert (=> b!7266410 (= e!4357494 e!4357495)))

(declare-fun res!2945921 () Bool)

(assert (=> b!7266410 (=> (not res!2945921) (not e!4357495))))

(assert (=> b!7266410 (= res!2945921 (dynLambda!28888 lambda!447495 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun b!7266411 () Bool)

(assert (=> b!7266411 (= e!4357495 (forall!17601 (t!384919 (exprs!8208 ct1!250)) lambda!447495))))

(assert (= (and d!2260857 (not res!2945920)) b!7266410))

(assert (= (and b!7266410 res!2945921) b!7266411))

(declare-fun b_lambda!279813 () Bool)

(assert (=> (not b_lambda!279813) (not b!7266410)))

(declare-fun m!7951084 () Bool)

(assert (=> b!7266410 m!7951084))

(declare-fun m!7951086 () Bool)

(assert (=> b!7266411 m!7951086))

(assert (=> d!2260773 d!2260857))

(assert (=> bs!1910290 d!2260739))

(declare-fun bm!662306 () Bool)

(declare-fun call!662311 () (Set Context!15416))

(assert (=> bm!662306 (= call!662311 (derivationStepZipperDown!2702 (h!77175 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592410))))) (Context!15417 (t!384919 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592410)))))) (h!77176 s!7854)))))

(declare-fun b!7266412 () Bool)

(declare-fun e!4357498 () (Set Context!15416))

(assert (=> b!7266412 (= e!4357498 call!662311)))

(declare-fun b!7266413 () Bool)

(assert (=> b!7266413 (= e!4357498 (as set.empty (Set Context!15416)))))

(declare-fun b!7266415 () Bool)

(declare-fun e!4357496 () (Set Context!15416))

(assert (=> b!7266415 (= e!4357496 e!4357498)))

(declare-fun c!1352127 () Bool)

(assert (=> b!7266415 (= c!1352127 (is-Cons!70727 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592410))))))))

(declare-fun b!7266416 () Bool)

(declare-fun e!4357497 () Bool)

(assert (=> b!7266416 (= e!4357497 (nullable!7968 (h!77175 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592410)))))))))

(declare-fun b!7266414 () Bool)

(assert (=> b!7266414 (= e!4357496 (set.union call!662311 (derivationStepZipperUp!2538 (Context!15417 (t!384919 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592410)))))) (h!77176 s!7854))))))

(declare-fun d!2260859 () Bool)

(declare-fun c!1352128 () Bool)

(assert (=> d!2260859 (= c!1352128 e!4357497)))

(declare-fun res!2945922 () Bool)

(assert (=> d!2260859 (=> (not res!2945922) (not e!4357497))))

(assert (=> d!2260859 (= res!2945922 (is-Cons!70727 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592410))))))))

(assert (=> d!2260859 (= (derivationStepZipperUp!2538 (Context!15417 (t!384919 (exprs!8208 lt!2592410))) (h!77176 s!7854)) e!4357496)))

(assert (= (and d!2260859 res!2945922) b!7266416))

(assert (= (and d!2260859 c!1352128) b!7266414))

(assert (= (and d!2260859 (not c!1352128)) b!7266415))

(assert (= (and b!7266415 c!1352127) b!7266412))

(assert (= (and b!7266415 (not c!1352127)) b!7266413))

(assert (= (or b!7266414 b!7266412) bm!662306))

(declare-fun m!7951088 () Bool)

(assert (=> bm!662306 m!7951088))

(declare-fun m!7951090 () Bool)

(assert (=> b!7266416 m!7951090))

(declare-fun m!7951092 () Bool)

(assert (=> b!7266414 m!7951092))

(assert (=> b!7266145 d!2260859))

(declare-fun d!2260861 () Bool)

(assert (=> d!2260861 (= (nullable!7968 (h!77175 (exprs!8208 lt!2592416))) (nullableFct!3134 (h!77175 (exprs!8208 lt!2592416))))))

(declare-fun bs!1910317 () Bool)

(assert (= bs!1910317 d!2260861))

(declare-fun m!7951094 () Bool)

(assert (=> bs!1910317 m!7951094))

(assert (=> b!7266157 d!2260861))

(declare-fun d!2260863 () Bool)

(assert (=> d!2260863 (= ($colon$colon!2948 (exprs!8208 lt!2592410) (ite (or c!1352033 c!1352035) (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (h!77175 (exprs!8208 ct1!250)))) (Cons!70727 (ite (or c!1352033 c!1352035) (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (h!77175 (exprs!8208 ct1!250))) (exprs!8208 lt!2592410)))))

(assert (=> bm!662239 d!2260863))

(declare-fun d!2260865 () Bool)

(declare-fun c!1352131 () Bool)

(assert (=> d!2260865 (= c!1352131 (is-Nil!70727 lt!2592482))))

(declare-fun e!4357501 () (Set Regex!18768))

(assert (=> d!2260865 (= (content!14751 lt!2592482) e!4357501)))

(declare-fun b!7266421 () Bool)

(assert (=> b!7266421 (= e!4357501 (as set.empty (Set Regex!18768)))))

(declare-fun b!7266422 () Bool)

(assert (=> b!7266422 (= e!4357501 (set.union (set.insert (h!77175 lt!2592482) (as set.empty (Set Regex!18768))) (content!14751 (t!384919 lt!2592482))))))

(assert (= (and d!2260865 c!1352131) b!7266421))

(assert (= (and d!2260865 (not c!1352131)) b!7266422))

(declare-fun m!7951096 () Bool)

(assert (=> b!7266422 m!7951096))

(declare-fun m!7951098 () Bool)

(assert (=> b!7266422 m!7951098))

(assert (=> d!2260769 d!2260865))

(declare-fun d!2260867 () Bool)

(declare-fun c!1352132 () Bool)

(assert (=> d!2260867 (= c!1352132 (is-Nil!70727 lt!2592411))))

(declare-fun e!4357502 () (Set Regex!18768))

(assert (=> d!2260867 (= (content!14751 lt!2592411) e!4357502)))

(declare-fun b!7266423 () Bool)

(assert (=> b!7266423 (= e!4357502 (as set.empty (Set Regex!18768)))))

(declare-fun b!7266424 () Bool)

(assert (=> b!7266424 (= e!4357502 (set.union (set.insert (h!77175 lt!2592411) (as set.empty (Set Regex!18768))) (content!14751 (t!384919 lt!2592411))))))

(assert (= (and d!2260867 c!1352132) b!7266423))

(assert (= (and d!2260867 (not c!1352132)) b!7266424))

(declare-fun m!7951100 () Bool)

(assert (=> b!7266424 m!7951100))

(declare-fun m!7951102 () Bool)

(assert (=> b!7266424 m!7951102))

(assert (=> d!2260769 d!2260867))

(declare-fun d!2260869 () Bool)

(declare-fun c!1352133 () Bool)

(assert (=> d!2260869 (= c!1352133 (is-Nil!70727 (exprs!8208 ct2!346)))))

(declare-fun e!4357503 () (Set Regex!18768))

(assert (=> d!2260869 (= (content!14751 (exprs!8208 ct2!346)) e!4357503)))

(declare-fun b!7266425 () Bool)

(assert (=> b!7266425 (= e!4357503 (as set.empty (Set Regex!18768)))))

(declare-fun b!7266426 () Bool)

(assert (=> b!7266426 (= e!4357503 (set.union (set.insert (h!77175 (exprs!8208 ct2!346)) (as set.empty (Set Regex!18768))) (content!14751 (t!384919 (exprs!8208 ct2!346)))))))

(assert (= (and d!2260869 c!1352133) b!7266425))

(assert (= (and d!2260869 (not c!1352133)) b!7266426))

(declare-fun m!7951104 () Bool)

(assert (=> b!7266426 m!7951104))

(declare-fun m!7951106 () Bool)

(assert (=> b!7266426 m!7951106))

(assert (=> d!2260769 d!2260869))

(declare-fun b!7266427 () Bool)

(declare-fun e!4357505 () Bool)

(assert (=> b!7266427 (= e!4357505 (nullable!7968 (regOne!38048 (h!77175 (exprs!8208 lt!2592410)))))))

(declare-fun b!7266428 () Bool)

(declare-fun e!4357507 () (Set Context!15416))

(declare-fun e!4357508 () (Set Context!15416))

(assert (=> b!7266428 (= e!4357507 e!4357508)))

(declare-fun c!1352138 () Bool)

(assert (=> b!7266428 (= c!1352138 (is-Union!18768 (h!77175 (exprs!8208 lt!2592410))))))

(declare-fun b!7266429 () Bool)

(declare-fun e!4357504 () (Set Context!15416))

(declare-fun call!662313 () (Set Context!15416))

(assert (=> b!7266429 (= e!4357504 call!662313)))

(declare-fun b!7266430 () Bool)

(assert (=> b!7266430 (= e!4357507 (set.insert (Context!15417 (t!384919 (exprs!8208 lt!2592410))) (as set.empty (Set Context!15416))))))

(declare-fun b!7266431 () Bool)

(declare-fun e!4357506 () (Set Context!15416))

(assert (=> b!7266431 (= e!4357506 call!662313)))

(declare-fun bm!662307 () Bool)

(declare-fun call!662316 () List!70851)

(declare-fun call!662314 () List!70851)

(assert (=> bm!662307 (= call!662316 call!662314)))

(declare-fun b!7266432 () Bool)

(declare-fun c!1352136 () Bool)

(assert (=> b!7266432 (= c!1352136 (is-Star!18768 (h!77175 (exprs!8208 lt!2592410))))))

(assert (=> b!7266432 (= e!4357506 e!4357504)))

(declare-fun d!2260871 () Bool)

(declare-fun c!1352134 () Bool)

(assert (=> d!2260871 (= c!1352134 (and (is-ElementMatch!18768 (h!77175 (exprs!8208 lt!2592410))) (= (c!1352016 (h!77175 (exprs!8208 lt!2592410))) (h!77176 s!7854))))))

(assert (=> d!2260871 (= (derivationStepZipperDown!2702 (h!77175 (exprs!8208 lt!2592410)) (Context!15417 (t!384919 (exprs!8208 lt!2592410))) (h!77176 s!7854)) e!4357507)))

(declare-fun bm!662308 () Bool)

(declare-fun call!662317 () (Set Context!15416))

(declare-fun call!662312 () (Set Context!15416))

(assert (=> bm!662308 (= call!662317 call!662312)))

(declare-fun b!7266433 () Bool)

(declare-fun call!662315 () (Set Context!15416))

(assert (=> b!7266433 (= e!4357508 (set.union call!662312 call!662315))))

(declare-fun c!1352135 () Bool)

(declare-fun c!1352137 () Bool)

(declare-fun bm!662309 () Bool)

(assert (=> bm!662309 (= call!662312 (derivationStepZipperDown!2702 (ite c!1352138 (regOne!38049 (h!77175 (exprs!8208 lt!2592410))) (ite c!1352135 (regTwo!38048 (h!77175 (exprs!8208 lt!2592410))) (ite c!1352137 (regOne!38048 (h!77175 (exprs!8208 lt!2592410))) (reg!19097 (h!77175 (exprs!8208 lt!2592410)))))) (ite (or c!1352138 c!1352135) (Context!15417 (t!384919 (exprs!8208 lt!2592410))) (Context!15417 call!662316)) (h!77176 s!7854)))))

(declare-fun b!7266434 () Bool)

(declare-fun e!4357509 () (Set Context!15416))

(assert (=> b!7266434 (= e!4357509 e!4357506)))

(assert (=> b!7266434 (= c!1352137 (is-Concat!27613 (h!77175 (exprs!8208 lt!2592410))))))

(declare-fun b!7266435 () Bool)

(assert (=> b!7266435 (= e!4357504 (as set.empty (Set Context!15416)))))

(declare-fun b!7266436 () Bool)

(assert (=> b!7266436 (= e!4357509 (set.union call!662315 call!662317))))

(declare-fun bm!662310 () Bool)

(assert (=> bm!662310 (= call!662313 call!662317)))

(declare-fun bm!662311 () Bool)

(assert (=> bm!662311 (= call!662314 ($colon$colon!2948 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592410)))) (ite (or c!1352135 c!1352137) (regTwo!38048 (h!77175 (exprs!8208 lt!2592410))) (h!77175 (exprs!8208 lt!2592410)))))))

(declare-fun b!7266437 () Bool)

(assert (=> b!7266437 (= c!1352135 e!4357505)))

(declare-fun res!2945923 () Bool)

(assert (=> b!7266437 (=> (not res!2945923) (not e!4357505))))

(assert (=> b!7266437 (= res!2945923 (is-Concat!27613 (h!77175 (exprs!8208 lt!2592410))))))

(assert (=> b!7266437 (= e!4357508 e!4357509)))

(declare-fun bm!662312 () Bool)

(assert (=> bm!662312 (= call!662315 (derivationStepZipperDown!2702 (ite c!1352138 (regTwo!38049 (h!77175 (exprs!8208 lt!2592410))) (regOne!38048 (h!77175 (exprs!8208 lt!2592410)))) (ite c!1352138 (Context!15417 (t!384919 (exprs!8208 lt!2592410))) (Context!15417 call!662314)) (h!77176 s!7854)))))

(assert (= (and d!2260871 c!1352134) b!7266430))

(assert (= (and d!2260871 (not c!1352134)) b!7266428))

(assert (= (and b!7266428 c!1352138) b!7266433))

(assert (= (and b!7266428 (not c!1352138)) b!7266437))

(assert (= (and b!7266437 res!2945923) b!7266427))

(assert (= (and b!7266437 c!1352135) b!7266436))

(assert (= (and b!7266437 (not c!1352135)) b!7266434))

(assert (= (and b!7266434 c!1352137) b!7266431))

(assert (= (and b!7266434 (not c!1352137)) b!7266432))

(assert (= (and b!7266432 c!1352136) b!7266429))

(assert (= (and b!7266432 (not c!1352136)) b!7266435))

(assert (= (or b!7266431 b!7266429) bm!662307))

(assert (= (or b!7266431 b!7266429) bm!662310))

(assert (= (or b!7266436 bm!662307) bm!662311))

(assert (= (or b!7266436 bm!662310) bm!662308))

(assert (= (or b!7266433 bm!662308) bm!662309))

(assert (= (or b!7266433 b!7266436) bm!662312))

(declare-fun m!7951108 () Bool)

(assert (=> b!7266430 m!7951108))

(declare-fun m!7951110 () Bool)

(assert (=> bm!662309 m!7951110))

(declare-fun m!7951112 () Bool)

(assert (=> bm!662312 m!7951112))

(declare-fun m!7951114 () Bool)

(assert (=> bm!662311 m!7951114))

(declare-fun m!7951116 () Bool)

(assert (=> b!7266427 m!7951116))

(assert (=> bm!662243 d!2260871))

(declare-fun d!2260873 () Bool)

(declare-fun c!1352139 () Bool)

(assert (=> d!2260873 (= c!1352139 (isEmpty!40659 (tail!14447 s!7854)))))

(declare-fun e!4357510 () Bool)

(assert (=> d!2260873 (= (matchZipper!3672 (derivationStepZipper!3508 (set.insert ct2!346 (as set.empty (Set Context!15416))) (head!14978 s!7854)) (tail!14447 s!7854)) e!4357510)))

(declare-fun b!7266438 () Bool)

(assert (=> b!7266438 (= e!4357510 (nullableZipper!2979 (derivationStepZipper!3508 (set.insert ct2!346 (as set.empty (Set Context!15416))) (head!14978 s!7854))))))

(declare-fun b!7266439 () Bool)

(assert (=> b!7266439 (= e!4357510 (matchZipper!3672 (derivationStepZipper!3508 (derivationStepZipper!3508 (set.insert ct2!346 (as set.empty (Set Context!15416))) (head!14978 s!7854)) (head!14978 (tail!14447 s!7854))) (tail!14447 (tail!14447 s!7854))))))

(assert (= (and d!2260873 c!1352139) b!7266438))

(assert (= (and d!2260873 (not c!1352139)) b!7266439))

(assert (=> d!2260873 m!7950922))

(declare-fun m!7951118 () Bool)

(assert (=> d!2260873 m!7951118))

(assert (=> b!7266438 m!7950920))

(declare-fun m!7951120 () Bool)

(assert (=> b!7266438 m!7951120))

(assert (=> b!7266439 m!7950922))

(declare-fun m!7951122 () Bool)

(assert (=> b!7266439 m!7951122))

(assert (=> b!7266439 m!7950920))

(assert (=> b!7266439 m!7951122))

(declare-fun m!7951124 () Bool)

(assert (=> b!7266439 m!7951124))

(assert (=> b!7266439 m!7950922))

(declare-fun m!7951126 () Bool)

(assert (=> b!7266439 m!7951126))

(assert (=> b!7266439 m!7951124))

(assert (=> b!7266439 m!7951126))

(declare-fun m!7951128 () Bool)

(assert (=> b!7266439 m!7951128))

(assert (=> b!7266241 d!2260873))

(declare-fun bs!1910318 () Bool)

(declare-fun d!2260875 () Bool)

(assert (= bs!1910318 (and d!2260875 b!7266052)))

(declare-fun lambda!447513 () Int)

(assert (=> bs!1910318 (= (= (head!14978 s!7854) (h!77176 s!7854)) (= lambda!447513 lambda!447471))))

(declare-fun bs!1910319 () Bool)

(assert (= bs!1910319 (and d!2260875 d!2260757)))

(assert (=> bs!1910319 (= (= (head!14978 s!7854) (h!77176 s!7854)) (= lambda!447513 lambda!447492))))

(assert (=> d!2260875 true))

(assert (=> d!2260875 (= (derivationStepZipper!3508 (set.insert ct2!346 (as set.empty (Set Context!15416))) (head!14978 s!7854)) (flatMap!2881 (set.insert ct2!346 (as set.empty (Set Context!15416))) lambda!447513))))

(declare-fun bs!1910320 () Bool)

(assert (= bs!1910320 d!2260875))

(assert (=> bs!1910320 m!7950726))

(declare-fun m!7951130 () Bool)

(assert (=> bs!1910320 m!7951130))

(assert (=> b!7266241 d!2260875))

(declare-fun d!2260877 () Bool)

(assert (=> d!2260877 (= (head!14978 s!7854) (h!77176 s!7854))))

(assert (=> b!7266241 d!2260877))

(declare-fun d!2260879 () Bool)

(assert (=> d!2260879 (= (tail!14447 s!7854) (t!384920 s!7854))))

(assert (=> b!7266241 d!2260879))

(declare-fun d!2260881 () Bool)

(declare-fun c!1352140 () Bool)

(assert (=> d!2260881 (= c!1352140 (is-Nil!70727 lt!2592474))))

(declare-fun e!4357511 () (Set Regex!18768))

(assert (=> d!2260881 (= (content!14751 lt!2592474) e!4357511)))

(declare-fun b!7266440 () Bool)

(assert (=> b!7266440 (= e!4357511 (as set.empty (Set Regex!18768)))))

(declare-fun b!7266441 () Bool)

(assert (=> b!7266441 (= e!4357511 (set.union (set.insert (h!77175 lt!2592474) (as set.empty (Set Regex!18768))) (content!14751 (t!384919 lt!2592474))))))

(assert (= (and d!2260881 c!1352140) b!7266440))

(assert (= (and d!2260881 (not c!1352140)) b!7266441))

(declare-fun m!7951132 () Bool)

(assert (=> b!7266441 m!7951132))

(declare-fun m!7951134 () Bool)

(assert (=> b!7266441 m!7951134))

(assert (=> d!2260749 d!2260881))

(declare-fun d!2260883 () Bool)

(declare-fun c!1352141 () Bool)

(assert (=> d!2260883 (= c!1352141 (is-Nil!70727 (exprs!8208 ct1!250)))))

(declare-fun e!4357512 () (Set Regex!18768))

(assert (=> d!2260883 (= (content!14751 (exprs!8208 ct1!250)) e!4357512)))

(declare-fun b!7266442 () Bool)

(assert (=> b!7266442 (= e!4357512 (as set.empty (Set Regex!18768)))))

(declare-fun b!7266443 () Bool)

(assert (=> b!7266443 (= e!4357512 (set.union (set.insert (h!77175 (exprs!8208 ct1!250)) (as set.empty (Set Regex!18768))) (content!14751 (t!384919 (exprs!8208 ct1!250)))))))

(assert (= (and d!2260883 c!1352141) b!7266442))

(assert (= (and d!2260883 (not c!1352141)) b!7266443))

(declare-fun m!7951136 () Bool)

(assert (=> b!7266443 m!7951136))

(assert (=> b!7266443 m!7951060))

(assert (=> d!2260749 d!2260883))

(assert (=> d!2260749 d!2260869))

(declare-fun bm!662313 () Bool)

(declare-fun call!662318 () (Set Context!15416))

(assert (=> bm!662313 (= call!662318 (derivationStepZipperDown!2702 (h!77175 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592416))))) (Context!15417 (t!384919 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592416)))))) (h!77176 s!7854)))))

(declare-fun b!7266444 () Bool)

(declare-fun e!4357515 () (Set Context!15416))

(assert (=> b!7266444 (= e!4357515 call!662318)))

(declare-fun b!7266445 () Bool)

(assert (=> b!7266445 (= e!4357515 (as set.empty (Set Context!15416)))))

(declare-fun b!7266447 () Bool)

(declare-fun e!4357513 () (Set Context!15416))

(assert (=> b!7266447 (= e!4357513 e!4357515)))

(declare-fun c!1352142 () Bool)

(assert (=> b!7266447 (= c!1352142 (is-Cons!70727 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592416))))))))

(declare-fun b!7266448 () Bool)

(declare-fun e!4357514 () Bool)

(assert (=> b!7266448 (= e!4357514 (nullable!7968 (h!77175 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592416)))))))))

(declare-fun b!7266446 () Bool)

(assert (=> b!7266446 (= e!4357513 (set.union call!662318 (derivationStepZipperUp!2538 (Context!15417 (t!384919 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592416)))))) (h!77176 s!7854))))))

(declare-fun d!2260885 () Bool)

(declare-fun c!1352143 () Bool)

(assert (=> d!2260885 (= c!1352143 e!4357514)))

(declare-fun res!2945924 () Bool)

(assert (=> d!2260885 (=> (not res!2945924) (not e!4357514))))

(assert (=> d!2260885 (= res!2945924 (is-Cons!70727 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 lt!2592416))))))))

(assert (=> d!2260885 (= (derivationStepZipperUp!2538 (Context!15417 (t!384919 (exprs!8208 lt!2592416))) (h!77176 s!7854)) e!4357513)))

(assert (= (and d!2260885 res!2945924) b!7266448))

(assert (= (and d!2260885 c!1352143) b!7266446))

(assert (= (and d!2260885 (not c!1352143)) b!7266447))

(assert (= (and b!7266447 c!1352142) b!7266444))

(assert (= (and b!7266447 (not c!1352142)) b!7266445))

(assert (= (or b!7266446 b!7266444) bm!662313))

(declare-fun m!7951138 () Bool)

(assert (=> bm!662313 m!7951138))

(declare-fun m!7951140 () Bool)

(assert (=> b!7266448 m!7951140))

(declare-fun m!7951142 () Bool)

(assert (=> b!7266446 m!7951142))

(assert (=> b!7266155 d!2260885))

(declare-fun d!2260887 () Bool)

(assert (=> d!2260887 true))

(declare-fun setRes!53630 () Bool)

(assert (=> d!2260887 setRes!53630))

(declare-fun condSetEmpty!53630 () Bool)

(declare-fun res!2945927 () (Set Context!15416))

(assert (=> d!2260887 (= condSetEmpty!53630 (= res!2945927 (as set.empty (Set Context!15416))))))

(assert (=> d!2260887 (= (choose!56314 lt!2592414 lambda!447471) res!2945927)))

(declare-fun setIsEmpty!53630 () Bool)

(assert (=> setIsEmpty!53630 setRes!53630))

(declare-fun setNonEmpty!53630 () Bool)

(declare-fun tp!2040500 () Bool)

(declare-fun e!4357518 () Bool)

(declare-fun setElem!53630 () Context!15416)

(assert (=> setNonEmpty!53630 (= setRes!53630 (and tp!2040500 (inv!89931 setElem!53630) e!4357518))))

(declare-fun setRest!53630 () (Set Context!15416))

(assert (=> setNonEmpty!53630 (= res!2945927 (set.union (set.insert setElem!53630 (as set.empty (Set Context!15416))) setRest!53630))))

(declare-fun b!7266451 () Bool)

(declare-fun tp!2040499 () Bool)

(assert (=> b!7266451 (= e!4357518 tp!2040499)))

(assert (= (and d!2260887 condSetEmpty!53630) setIsEmpty!53630))

(assert (= (and d!2260887 (not condSetEmpty!53630)) setNonEmpty!53630))

(assert (= setNonEmpty!53630 b!7266451))

(declare-fun m!7951144 () Bool)

(assert (=> setNonEmpty!53630 m!7951144))

(assert (=> d!2260761 d!2260887))

(assert (=> bs!1910291 d!2260743))

(declare-fun d!2260889 () Bool)

(declare-fun res!2945928 () Bool)

(declare-fun e!4357519 () Bool)

(assert (=> d!2260889 (=> res!2945928 e!4357519)))

(assert (=> d!2260889 (= res!2945928 (is-Nil!70727 (++!16668 lt!2592411 (exprs!8208 ct2!346))))))

(assert (=> d!2260889 (= (forall!17601 (++!16668 lt!2592411 (exprs!8208 ct2!346)) lambda!447470) e!4357519)))

(declare-fun b!7266452 () Bool)

(declare-fun e!4357520 () Bool)

(assert (=> b!7266452 (= e!4357519 e!4357520)))

(declare-fun res!2945929 () Bool)

(assert (=> b!7266452 (=> (not res!2945929) (not e!4357520))))

(assert (=> b!7266452 (= res!2945929 (dynLambda!28888 lambda!447470 (h!77175 (++!16668 lt!2592411 (exprs!8208 ct2!346)))))))

(declare-fun b!7266453 () Bool)

(assert (=> b!7266453 (= e!4357520 (forall!17601 (t!384919 (++!16668 lt!2592411 (exprs!8208 ct2!346))) lambda!447470))))

(assert (= (and d!2260889 (not res!2945928)) b!7266452))

(assert (= (and b!7266452 res!2945929) b!7266453))

(declare-fun b_lambda!279815 () Bool)

(assert (=> (not b_lambda!279815) (not b!7266452)))

(declare-fun m!7951146 () Bool)

(assert (=> b!7266452 m!7951146))

(declare-fun m!7951148 () Bool)

(assert (=> b!7266453 m!7951148))

(assert (=> d!2260771 d!2260889))

(assert (=> d!2260771 d!2260769))

(declare-fun d!2260891 () Bool)

(assert (=> d!2260891 (forall!17601 (++!16668 lt!2592411 (exprs!8208 ct2!346)) lambda!447470)))

(assert (=> d!2260891 true))

(declare-fun _$78!817 () Unit!164154)

(assert (=> d!2260891 (= (choose!56316 lt!2592411 (exprs!8208 ct2!346) lambda!447470) _$78!817)))

(declare-fun bs!1910321 () Bool)

(assert (= bs!1910321 d!2260891))

(assert (=> bs!1910321 m!7950748))

(assert (=> bs!1910321 m!7950748))

(assert (=> bs!1910321 m!7950906))

(assert (=> d!2260771 d!2260891))

(declare-fun d!2260893 () Bool)

(declare-fun res!2945930 () Bool)

(declare-fun e!4357521 () Bool)

(assert (=> d!2260893 (=> res!2945930 e!4357521)))

(assert (=> d!2260893 (= res!2945930 (is-Nil!70727 lt!2592411))))

(assert (=> d!2260893 (= (forall!17601 lt!2592411 lambda!447470) e!4357521)))

(declare-fun b!7266454 () Bool)

(declare-fun e!4357522 () Bool)

(assert (=> b!7266454 (= e!4357521 e!4357522)))

(declare-fun res!2945931 () Bool)

(assert (=> b!7266454 (=> (not res!2945931) (not e!4357522))))

(assert (=> b!7266454 (= res!2945931 (dynLambda!28888 lambda!447470 (h!77175 lt!2592411)))))

(declare-fun b!7266455 () Bool)

(assert (=> b!7266455 (= e!4357522 (forall!17601 (t!384919 lt!2592411) lambda!447470))))

(assert (= (and d!2260893 (not res!2945930)) b!7266454))

(assert (= (and b!7266454 res!2945931) b!7266455))

(declare-fun b_lambda!279817 () Bool)

(assert (=> (not b_lambda!279817) (not b!7266454)))

(declare-fun m!7951150 () Bool)

(assert (=> b!7266454 m!7951150))

(declare-fun m!7951152 () Bool)

(assert (=> b!7266455 m!7951152))

(assert (=> d!2260771 d!2260893))

(declare-fun d!2260895 () Bool)

(assert (=> d!2260895 (= (nullable!7968 (h!77175 (exprs!8208 lt!2592410))) (nullableFct!3134 (h!77175 (exprs!8208 lt!2592410))))))

(declare-fun bs!1910322 () Bool)

(assert (= bs!1910322 d!2260895))

(declare-fun m!7951154 () Bool)

(assert (=> bs!1910322 m!7951154))

(assert (=> b!7266147 d!2260895))

(declare-fun d!2260897 () Bool)

(declare-fun res!2945932 () Bool)

(declare-fun e!4357523 () Bool)

(assert (=> d!2260897 (=> res!2945932 e!4357523)))

(assert (=> d!2260897 (= res!2945932 (is-Nil!70727 (exprs!8208 ct1!250)))))

(assert (=> d!2260897 (= (forall!17601 (exprs!8208 ct1!250) lambda!447499) e!4357523)))

(declare-fun b!7266456 () Bool)

(declare-fun e!4357524 () Bool)

(assert (=> b!7266456 (= e!4357523 e!4357524)))

(declare-fun res!2945933 () Bool)

(assert (=> b!7266456 (=> (not res!2945933) (not e!4357524))))

(assert (=> b!7266456 (= res!2945933 (dynLambda!28888 lambda!447499 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun b!7266457 () Bool)

(assert (=> b!7266457 (= e!4357524 (forall!17601 (t!384919 (exprs!8208 ct1!250)) lambda!447499))))

(assert (= (and d!2260897 (not res!2945932)) b!7266456))

(assert (= (and b!7266456 res!2945933) b!7266457))

(declare-fun b_lambda!279819 () Bool)

(assert (=> (not b_lambda!279819) (not b!7266456)))

(declare-fun m!7951156 () Bool)

(assert (=> b!7266456 m!7951156))

(declare-fun m!7951158 () Bool)

(assert (=> b!7266457 m!7951158))

(assert (=> d!2260779 d!2260897))

(declare-fun b!7266458 () Bool)

(declare-fun e!4357526 () Bool)

(assert (=> b!7266458 (= e!4357526 (nullable!7968 (regOne!38048 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250)))))))))

(declare-fun b!7266459 () Bool)

(declare-fun e!4357528 () (Set Context!15416))

(declare-fun e!4357529 () (Set Context!15416))

(assert (=> b!7266459 (= e!4357528 e!4357529)))

(declare-fun c!1352148 () Bool)

(assert (=> b!7266459 (= c!1352148 (is-Union!18768 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))

(declare-fun b!7266460 () Bool)

(declare-fun e!4357525 () (Set Context!15416))

(declare-fun call!662320 () (Set Context!15416))

(assert (=> b!7266460 (= e!4357525 call!662320)))

(declare-fun b!7266461 () Bool)

(assert (=> b!7266461 (= e!4357528 (set.insert (ite c!1352036 lt!2592410 (Context!15417 call!662242)) (as set.empty (Set Context!15416))))))

(declare-fun b!7266462 () Bool)

(declare-fun e!4357527 () (Set Context!15416))

(assert (=> b!7266462 (= e!4357527 call!662320)))

(declare-fun bm!662314 () Bool)

(declare-fun call!662323 () List!70851)

(declare-fun call!662321 () List!70851)

(assert (=> bm!662314 (= call!662323 call!662321)))

(declare-fun b!7266463 () Bool)

(declare-fun c!1352146 () Bool)

(assert (=> b!7266463 (= c!1352146 (is-Star!18768 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))

(assert (=> b!7266463 (= e!4357527 e!4357525)))

(declare-fun c!1352144 () Bool)

(declare-fun d!2260899 () Bool)

(assert (=> d!2260899 (= c!1352144 (and (is-ElementMatch!18768 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) (= (c!1352016 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) (h!77176 s!7854))))))

(assert (=> d!2260899 (= (derivationStepZipperDown!2702 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250)))) (ite c!1352036 lt!2592410 (Context!15417 call!662242)) (h!77176 s!7854)) e!4357528)))

(declare-fun bm!662315 () Bool)

(declare-fun call!662324 () (Set Context!15416))

(declare-fun call!662319 () (Set Context!15416))

(assert (=> bm!662315 (= call!662324 call!662319)))

(declare-fun b!7266464 () Bool)

(declare-fun call!662322 () (Set Context!15416))

(assert (=> b!7266464 (= e!4357529 (set.union call!662319 call!662322))))

(declare-fun c!1352147 () Bool)

(declare-fun c!1352145 () Bool)

(declare-fun bm!662316 () Bool)

(assert (=> bm!662316 (= call!662319 (derivationStepZipperDown!2702 (ite c!1352148 (regOne!38049 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) (ite c!1352145 (regTwo!38048 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) (ite c!1352147 (regOne!38048 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) (reg!19097 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250)))))))) (ite (or c!1352148 c!1352145) (ite c!1352036 lt!2592410 (Context!15417 call!662242)) (Context!15417 call!662323)) (h!77176 s!7854)))))

(declare-fun b!7266465 () Bool)

(declare-fun e!4357530 () (Set Context!15416))

(assert (=> b!7266465 (= e!4357530 e!4357527)))

(assert (=> b!7266465 (= c!1352147 (is-Concat!27613 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))

(declare-fun b!7266466 () Bool)

(assert (=> b!7266466 (= e!4357525 (as set.empty (Set Context!15416)))))

(declare-fun b!7266467 () Bool)

(assert (=> b!7266467 (= e!4357530 (set.union call!662322 call!662324))))

(declare-fun bm!662317 () Bool)

(assert (=> bm!662317 (= call!662320 call!662324)))

(declare-fun bm!662318 () Bool)

(assert (=> bm!662318 (= call!662321 ($colon$colon!2948 (exprs!8208 (ite c!1352036 lt!2592410 (Context!15417 call!662242))) (ite (or c!1352145 c!1352147) (regTwo!38048 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250)))))))))

(declare-fun b!7266468 () Bool)

(assert (=> b!7266468 (= c!1352145 e!4357526)))

(declare-fun res!2945934 () Bool)

(assert (=> b!7266468 (=> (not res!2945934) (not e!4357526))))

(assert (=> b!7266468 (= res!2945934 (is-Concat!27613 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))

(assert (=> b!7266468 (= e!4357529 e!4357530)))

(declare-fun bm!662319 () Bool)

(assert (=> bm!662319 (= call!662322 (derivationStepZipperDown!2702 (ite c!1352148 (regTwo!38049 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) (regOne!38048 (ite c!1352036 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250)))))) (ite c!1352148 (ite c!1352036 lt!2592410 (Context!15417 call!662242)) (Context!15417 call!662321)) (h!77176 s!7854)))))

(assert (= (and d!2260899 c!1352144) b!7266461))

(assert (= (and d!2260899 (not c!1352144)) b!7266459))

(assert (= (and b!7266459 c!1352148) b!7266464))

(assert (= (and b!7266459 (not c!1352148)) b!7266468))

(assert (= (and b!7266468 res!2945934) b!7266458))

(assert (= (and b!7266468 c!1352145) b!7266467))

(assert (= (and b!7266468 (not c!1352145)) b!7266465))

(assert (= (and b!7266465 c!1352147) b!7266462))

(assert (= (and b!7266465 (not c!1352147)) b!7266463))

(assert (= (and b!7266463 c!1352146) b!7266460))

(assert (= (and b!7266463 (not c!1352146)) b!7266466))

(assert (= (or b!7266462 b!7266460) bm!662314))

(assert (= (or b!7266462 b!7266460) bm!662317))

(assert (= (or b!7266467 bm!662314) bm!662318))

(assert (= (or b!7266467 bm!662317) bm!662315))

(assert (= (or b!7266464 bm!662315) bm!662316))

(assert (= (or b!7266464 b!7266467) bm!662319))

(declare-fun m!7951160 () Bool)

(assert (=> b!7266461 m!7951160))

(declare-fun m!7951162 () Bool)

(assert (=> bm!662316 m!7951162))

(declare-fun m!7951164 () Bool)

(assert (=> bm!662319 m!7951164))

(declare-fun m!7951166 () Bool)

(assert (=> bm!662318 m!7951166))

(declare-fun m!7951168 () Bool)

(assert (=> b!7266458 m!7951168))

(assert (=> bm!662240 d!2260899))

(declare-fun d!2260901 () Bool)

(declare-fun lt!2592502 () Int)

(assert (=> d!2260901 (>= lt!2592502 0)))

(declare-fun e!4357531 () Int)

(assert (=> d!2260901 (= lt!2592502 e!4357531)))

(declare-fun c!1352149 () Bool)

(assert (=> d!2260901 (= c!1352149 (is-Nil!70727 lt!2592482))))

(assert (=> d!2260901 (= (size!41799 lt!2592482) lt!2592502)))

(declare-fun b!7266469 () Bool)

(assert (=> b!7266469 (= e!4357531 0)))

(declare-fun b!7266470 () Bool)

(assert (=> b!7266470 (= e!4357531 (+ 1 (size!41799 (t!384919 lt!2592482))))))

(assert (= (and d!2260901 c!1352149) b!7266469))

(assert (= (and d!2260901 (not c!1352149)) b!7266470))

(declare-fun m!7951170 () Bool)

(assert (=> b!7266470 m!7951170))

(assert (=> b!7266216 d!2260901))

(declare-fun d!2260903 () Bool)

(declare-fun lt!2592503 () Int)

(assert (=> d!2260903 (>= lt!2592503 0)))

(declare-fun e!4357532 () Int)

(assert (=> d!2260903 (= lt!2592503 e!4357532)))

(declare-fun c!1352150 () Bool)

(assert (=> d!2260903 (= c!1352150 (is-Nil!70727 lt!2592411))))

(assert (=> d!2260903 (= (size!41799 lt!2592411) lt!2592503)))

(declare-fun b!7266471 () Bool)

(assert (=> b!7266471 (= e!4357532 0)))

(declare-fun b!7266472 () Bool)

(assert (=> b!7266472 (= e!4357532 (+ 1 (size!41799 (t!384919 lt!2592411))))))

(assert (= (and d!2260903 c!1352150) b!7266471))

(assert (= (and d!2260903 (not c!1352150)) b!7266472))

(declare-fun m!7951172 () Bool)

(assert (=> b!7266472 m!7951172))

(assert (=> b!7266216 d!2260903))

(assert (=> b!7266216 d!2260833))

(declare-fun d!2260905 () Bool)

(declare-fun res!2945935 () Bool)

(declare-fun e!4357533 () Bool)

(assert (=> d!2260905 (=> res!2945935 e!4357533)))

(assert (=> d!2260905 (= res!2945935 (is-Nil!70727 (exprs!8208 ct2!346)))))

(assert (=> d!2260905 (= (forall!17601 (exprs!8208 ct2!346) lambda!447498) e!4357533)))

(declare-fun b!7266473 () Bool)

(declare-fun e!4357534 () Bool)

(assert (=> b!7266473 (= e!4357533 e!4357534)))

(declare-fun res!2945936 () Bool)

(assert (=> b!7266473 (=> (not res!2945936) (not e!4357534))))

(assert (=> b!7266473 (= res!2945936 (dynLambda!28888 lambda!447498 (h!77175 (exprs!8208 ct2!346))))))

(declare-fun b!7266474 () Bool)

(assert (=> b!7266474 (= e!4357534 (forall!17601 (t!384919 (exprs!8208 ct2!346)) lambda!447498))))

(assert (= (and d!2260905 (not res!2945935)) b!7266473))

(assert (= (and b!7266473 res!2945936) b!7266474))

(declare-fun b_lambda!279821 () Bool)

(assert (=> (not b_lambda!279821) (not b!7266473)))

(declare-fun m!7951174 () Bool)

(assert (=> b!7266473 m!7951174))

(declare-fun m!7951176 () Bool)

(assert (=> b!7266474 m!7951176))

(assert (=> d!2260777 d!2260905))

(declare-fun b!7266475 () Bool)

(declare-fun e!4357536 () Bool)

(assert (=> b!7266475 (= e!4357536 (nullable!7968 (regOne!38048 (h!77175 (exprs!8208 ct1!250)))))))

(declare-fun b!7266476 () Bool)

(declare-fun e!4357538 () (Set Context!15416))

(declare-fun e!4357539 () (Set Context!15416))

(assert (=> b!7266476 (= e!4357538 e!4357539)))

(declare-fun c!1352155 () Bool)

(assert (=> b!7266476 (= c!1352155 (is-Union!18768 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun b!7266477 () Bool)

(declare-fun e!4357535 () (Set Context!15416))

(declare-fun call!662326 () (Set Context!15416))

(assert (=> b!7266477 (= e!4357535 call!662326)))

(declare-fun b!7266478 () Bool)

(assert (=> b!7266478 (= e!4357538 (set.insert (Context!15417 (t!384919 (exprs!8208 ct1!250))) (as set.empty (Set Context!15416))))))

(declare-fun b!7266479 () Bool)

(declare-fun e!4357537 () (Set Context!15416))

(assert (=> b!7266479 (= e!4357537 call!662326)))

(declare-fun bm!662320 () Bool)

(declare-fun call!662329 () List!70851)

(declare-fun call!662327 () List!70851)

(assert (=> bm!662320 (= call!662329 call!662327)))

(declare-fun b!7266480 () Bool)

(declare-fun c!1352153 () Bool)

(assert (=> b!7266480 (= c!1352153 (is-Star!18768 (h!77175 (exprs!8208 ct1!250))))))

(assert (=> b!7266480 (= e!4357537 e!4357535)))

(declare-fun d!2260907 () Bool)

(declare-fun c!1352151 () Bool)

(assert (=> d!2260907 (= c!1352151 (and (is-ElementMatch!18768 (h!77175 (exprs!8208 ct1!250))) (= (c!1352016 (h!77175 (exprs!8208 ct1!250))) (h!77176 s!7854))))))

(assert (=> d!2260907 (= (derivationStepZipperDown!2702 (h!77175 (exprs!8208 ct1!250)) (Context!15417 (t!384919 (exprs!8208 ct1!250))) (h!77176 s!7854)) e!4357538)))

(declare-fun bm!662321 () Bool)

(declare-fun call!662330 () (Set Context!15416))

(declare-fun call!662325 () (Set Context!15416))

(assert (=> bm!662321 (= call!662330 call!662325)))

(declare-fun b!7266481 () Bool)

(declare-fun call!662328 () (Set Context!15416))

(assert (=> b!7266481 (= e!4357539 (set.union call!662325 call!662328))))

(declare-fun bm!662322 () Bool)

(declare-fun c!1352154 () Bool)

(declare-fun c!1352152 () Bool)

(assert (=> bm!662322 (= call!662325 (derivationStepZipperDown!2702 (ite c!1352155 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (ite c!1352152 (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (ite c!1352154 (regOne!38048 (h!77175 (exprs!8208 ct1!250))) (reg!19097 (h!77175 (exprs!8208 ct1!250)))))) (ite (or c!1352155 c!1352152) (Context!15417 (t!384919 (exprs!8208 ct1!250))) (Context!15417 call!662329)) (h!77176 s!7854)))))

(declare-fun b!7266482 () Bool)

(declare-fun e!4357540 () (Set Context!15416))

(assert (=> b!7266482 (= e!4357540 e!4357537)))

(assert (=> b!7266482 (= c!1352154 (is-Concat!27613 (h!77175 (exprs!8208 ct1!250))))))

(declare-fun b!7266483 () Bool)

(assert (=> b!7266483 (= e!4357535 (as set.empty (Set Context!15416)))))

(declare-fun b!7266484 () Bool)

(assert (=> b!7266484 (= e!4357540 (set.union call!662328 call!662330))))

(declare-fun bm!662323 () Bool)

(assert (=> bm!662323 (= call!662326 call!662330)))

(declare-fun bm!662324 () Bool)

(assert (=> bm!662324 (= call!662327 ($colon$colon!2948 (exprs!8208 (Context!15417 (t!384919 (exprs!8208 ct1!250)))) (ite (or c!1352152 c!1352154) (regTwo!38048 (h!77175 (exprs!8208 ct1!250))) (h!77175 (exprs!8208 ct1!250)))))))

(declare-fun b!7266485 () Bool)

(assert (=> b!7266485 (= c!1352152 e!4357536)))

(declare-fun res!2945937 () Bool)

(assert (=> b!7266485 (=> (not res!2945937) (not e!4357536))))

(assert (=> b!7266485 (= res!2945937 (is-Concat!27613 (h!77175 (exprs!8208 ct1!250))))))

(assert (=> b!7266485 (= e!4357539 e!4357540)))

(declare-fun bm!662325 () Bool)

(assert (=> bm!662325 (= call!662328 (derivationStepZipperDown!2702 (ite c!1352155 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250)))) (ite c!1352155 (Context!15417 (t!384919 (exprs!8208 ct1!250))) (Context!15417 call!662327)) (h!77176 s!7854)))))

(assert (= (and d!2260907 c!1352151) b!7266478))

(assert (= (and d!2260907 (not c!1352151)) b!7266476))

(assert (= (and b!7266476 c!1352155) b!7266481))

(assert (= (and b!7266476 (not c!1352155)) b!7266485))

(assert (= (and b!7266485 res!2945937) b!7266475))

(assert (= (and b!7266485 c!1352152) b!7266484))

(assert (= (and b!7266485 (not c!1352152)) b!7266482))

(assert (= (and b!7266482 c!1352154) b!7266479))

(assert (= (and b!7266482 (not c!1352154)) b!7266480))

(assert (= (and b!7266480 c!1352153) b!7266477))

(assert (= (and b!7266480 (not c!1352153)) b!7266483))

(assert (= (or b!7266479 b!7266477) bm!662320))

(assert (= (or b!7266479 b!7266477) bm!662323))

(assert (= (or b!7266484 bm!662320) bm!662324))

(assert (= (or b!7266484 bm!662323) bm!662321))

(assert (= (or b!7266481 bm!662321) bm!662322))

(assert (= (or b!7266481 b!7266484) bm!662325))

(declare-fun m!7951178 () Bool)

(assert (=> b!7266478 m!7951178))

(declare-fun m!7951180 () Bool)

(assert (=> bm!662322 m!7951180))

(declare-fun m!7951182 () Bool)

(assert (=> bm!662325 m!7951182))

(declare-fun m!7951184 () Bool)

(assert (=> bm!662324 m!7951184))

(assert (=> b!7266475 m!7950830))

(assert (=> bm!662244 d!2260907))

(declare-fun b!7266486 () Bool)

(declare-fun e!4357543 () Bool)

(declare-fun call!662333 () Bool)

(assert (=> b!7266486 (= e!4357543 call!662333)))

(declare-fun b!7266487 () Bool)

(declare-fun e!4357542 () Bool)

(assert (=> b!7266487 (= e!4357542 call!662333)))

(declare-fun b!7266488 () Bool)

(declare-fun e!4357546 () Bool)

(declare-fun call!662332 () Bool)

(assert (=> b!7266488 (= e!4357546 call!662332)))

(declare-fun b!7266489 () Bool)

(declare-fun res!2945939 () Bool)

(assert (=> b!7266489 (=> (not res!2945939) (not e!4357542))))

(declare-fun call!662331 () Bool)

(assert (=> b!7266489 (= res!2945939 call!662331)))

(declare-fun e!4357545 () Bool)

(assert (=> b!7266489 (= e!4357545 e!4357542)))

(declare-fun bm!662326 () Bool)

(declare-fun c!1352156 () Bool)

(assert (=> bm!662326 (= call!662331 (validRegex!9571 (ite c!1352156 (regOne!38049 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) (regOne!38048 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))))

(declare-fun c!1352157 () Bool)

(declare-fun bm!662327 () Bool)

(assert (=> bm!662327 (= call!662332 (validRegex!9571 (ite c!1352157 (reg!19097 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) (ite c!1352156 (regTwo!38049 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) (regTwo!38048 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250)))))))))))

(declare-fun d!2260909 () Bool)

(declare-fun res!2945940 () Bool)

(declare-fun e!4357541 () Bool)

(assert (=> d!2260909 (=> res!2945940 e!4357541)))

(assert (=> d!2260909 (= res!2945940 (is-ElementMatch!18768 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))

(assert (=> d!2260909 (= (validRegex!9571 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))) e!4357541)))

(declare-fun b!7266490 () Bool)

(declare-fun e!4357547 () Bool)

(assert (=> b!7266490 (= e!4357547 e!4357543)))

(declare-fun res!2945942 () Bool)

(assert (=> b!7266490 (=> (not res!2945942) (not e!4357543))))

(assert (=> b!7266490 (= res!2945942 call!662331)))

(declare-fun b!7266491 () Bool)

(declare-fun res!2945941 () Bool)

(assert (=> b!7266491 (=> res!2945941 e!4357547)))

(assert (=> b!7266491 (= res!2945941 (not (is-Concat!27613 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250)))))))))

(assert (=> b!7266491 (= e!4357545 e!4357547)))

(declare-fun b!7266492 () Bool)

(declare-fun e!4357544 () Bool)

(assert (=> b!7266492 (= e!4357541 e!4357544)))

(assert (=> b!7266492 (= c!1352157 (is-Star!18768 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))

(declare-fun bm!662328 () Bool)

(assert (=> bm!662328 (= call!662333 call!662332)))

(declare-fun b!7266493 () Bool)

(assert (=> b!7266493 (= e!4357544 e!4357545)))

(assert (=> b!7266493 (= c!1352156 (is-Union!18768 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))

(declare-fun b!7266494 () Bool)

(assert (=> b!7266494 (= e!4357544 e!4357546)))

(declare-fun res!2945938 () Bool)

(assert (=> b!7266494 (= res!2945938 (not (nullable!7968 (reg!19097 (ite c!1352062 (regOne!38049 (h!77175 (exprs!8208 ct1!250))) (regOne!38048 (h!77175 (exprs!8208 ct1!250))))))))))

(assert (=> b!7266494 (=> (not res!2945938) (not e!4357546))))

(assert (= (and d!2260909 (not res!2945940)) b!7266492))

(assert (= (and b!7266492 c!1352157) b!7266494))

(assert (= (and b!7266492 (not c!1352157)) b!7266493))

(assert (= (and b!7266494 res!2945938) b!7266488))

(assert (= (and b!7266493 c!1352156) b!7266489))

(assert (= (and b!7266493 (not c!1352156)) b!7266491))

(assert (= (and b!7266489 res!2945939) b!7266487))

(assert (= (and b!7266491 (not res!2945941)) b!7266490))

(assert (= (and b!7266490 res!2945942) b!7266486))

(assert (= (or b!7266489 b!7266490) bm!662326))

(assert (= (or b!7266487 b!7266486) bm!662328))

(assert (= (or b!7266488 bm!662328) bm!662327))

(declare-fun m!7951186 () Bool)

(assert (=> bm!662326 m!7951186))

(declare-fun m!7951188 () Bool)

(assert (=> bm!662327 m!7951188))

(declare-fun m!7951190 () Bool)

(assert (=> b!7266494 m!7951190))

(assert (=> bm!662255 d!2260909))

(declare-fun d!2260911 () Bool)

(assert (=> d!2260911 true))

(declare-fun setRes!53631 () Bool)

(assert (=> d!2260911 setRes!53631))

(declare-fun condSetEmpty!53631 () Bool)

(declare-fun res!2945943 () (Set Context!15416))

(assert (=> d!2260911 (= condSetEmpty!53631 (= res!2945943 (as set.empty (Set Context!15416))))))

(assert (=> d!2260911 (= (choose!56314 lt!2592421 lambda!447471) res!2945943)))

(declare-fun setIsEmpty!53631 () Bool)

(assert (=> setIsEmpty!53631 setRes!53631))

(declare-fun setNonEmpty!53631 () Bool)

(declare-fun e!4357548 () Bool)

(declare-fun tp!2040502 () Bool)

(declare-fun setElem!53631 () Context!15416)

(assert (=> setNonEmpty!53631 (= setRes!53631 (and tp!2040502 (inv!89931 setElem!53631) e!4357548))))

(declare-fun setRest!53631 () (Set Context!15416))

(assert (=> setNonEmpty!53631 (= res!2945943 (set.union (set.insert setElem!53631 (as set.empty (Set Context!15416))) setRest!53631))))

(declare-fun b!7266495 () Bool)

(declare-fun tp!2040501 () Bool)

(assert (=> b!7266495 (= e!4357548 tp!2040501)))

(assert (= (and d!2260911 condSetEmpty!53631) setIsEmpty!53631))

(assert (= (and d!2260911 (not condSetEmpty!53631)) setNonEmpty!53631))

(assert (= setNonEmpty!53631 b!7266495))

(declare-fun m!7951192 () Bool)

(assert (=> setNonEmpty!53631 m!7951192))

(assert (=> d!2260745 d!2260911))

(declare-fun b!7266496 () Bool)

(declare-fun e!4357549 () List!70851)

(assert (=> b!7266496 (= e!4357549 (exprs!8208 ct2!346))))

(declare-fun b!7266498 () Bool)

(declare-fun res!2945945 () Bool)

(declare-fun e!4357550 () Bool)

(assert (=> b!7266498 (=> (not res!2945945) (not e!4357550))))

(declare-fun lt!2592504 () List!70851)

(assert (=> b!7266498 (= res!2945945 (= (size!41799 lt!2592504) (+ (size!41799 (t!384919 lt!2592411)) (size!41799 (exprs!8208 ct2!346)))))))

(declare-fun d!2260913 () Bool)

(assert (=> d!2260913 e!4357550))

(declare-fun res!2945944 () Bool)

(assert (=> d!2260913 (=> (not res!2945944) (not e!4357550))))

(assert (=> d!2260913 (= res!2945944 (= (content!14751 lt!2592504) (set.union (content!14751 (t!384919 lt!2592411)) (content!14751 (exprs!8208 ct2!346)))))))

(assert (=> d!2260913 (= lt!2592504 e!4357549)))

(declare-fun c!1352158 () Bool)

(assert (=> d!2260913 (= c!1352158 (is-Nil!70727 (t!384919 lt!2592411)))))

(assert (=> d!2260913 (= (++!16668 (t!384919 lt!2592411) (exprs!8208 ct2!346)) lt!2592504)))

(declare-fun b!7266499 () Bool)

(assert (=> b!7266499 (= e!4357550 (or (not (= (exprs!8208 ct2!346) Nil!70727)) (= lt!2592504 (t!384919 lt!2592411))))))

(declare-fun b!7266497 () Bool)

(assert (=> b!7266497 (= e!4357549 (Cons!70727 (h!77175 (t!384919 lt!2592411)) (++!16668 (t!384919 (t!384919 lt!2592411)) (exprs!8208 ct2!346))))))

(assert (= (and d!2260913 c!1352158) b!7266496))

(assert (= (and d!2260913 (not c!1352158)) b!7266497))

(assert (= (and d!2260913 res!2945944) b!7266498))

(assert (= (and b!7266498 res!2945945) b!7266499))

(declare-fun m!7951194 () Bool)

(assert (=> b!7266498 m!7951194))

(assert (=> b!7266498 m!7951172))

(assert (=> b!7266498 m!7950858))

(declare-fun m!7951196 () Bool)

(assert (=> d!2260913 m!7951196))

(assert (=> d!2260913 m!7951102))

(assert (=> d!2260913 m!7950864))

(declare-fun m!7951198 () Bool)

(assert (=> b!7266497 m!7951198))

(assert (=> b!7266215 d!2260913))

(declare-fun d!2260915 () Bool)

(assert (=> d!2260915 (= (nullable!7968 (regOne!38048 (h!77175 (exprs!8208 ct1!250)))) (nullableFct!3134 (regOne!38048 (h!77175 (exprs!8208 ct1!250)))))))

(declare-fun bs!1910323 () Bool)

(assert (= bs!1910323 d!2260915))

(declare-fun m!7951200 () Bool)

(assert (=> bs!1910323 m!7951200))

(assert (=> b!7266122 d!2260915))

(declare-fun b!7266500 () Bool)

(declare-fun e!4357553 () Bool)

(declare-fun call!662336 () Bool)

(assert (=> b!7266500 (= e!4357553 call!662336)))

(declare-fun b!7266501 () Bool)

(declare-fun e!4357552 () Bool)

(assert (=> b!7266501 (= e!4357552 call!662336)))

(declare-fun b!7266502 () Bool)

(declare-fun e!4357556 () Bool)

(declare-fun call!662335 () Bool)

(assert (=> b!7266502 (= e!4357556 call!662335)))

(declare-fun b!7266503 () Bool)

(declare-fun res!2945947 () Bool)

(assert (=> b!7266503 (=> (not res!2945947) (not e!4357552))))

(declare-fun call!662334 () Bool)

(assert (=> b!7266503 (= res!2945947 call!662334)))

(declare-fun e!4357555 () Bool)

(assert (=> b!7266503 (= e!4357555 e!4357552)))

(declare-fun bm!662329 () Bool)

(declare-fun c!1352159 () Bool)

(assert (=> bm!662329 (= call!662334 (validRegex!9571 (ite c!1352159 (regOne!38049 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250)))))) (regOne!38048 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250)))))))))))

(declare-fun bm!662330 () Bool)

(declare-fun c!1352160 () Bool)

(assert (=> bm!662330 (= call!662335 (validRegex!9571 (ite c!1352160 (reg!19097 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250)))))) (ite c!1352159 (regTwo!38049 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250)))))) (regTwo!38048 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250))))))))))))

(declare-fun d!2260917 () Bool)

(declare-fun res!2945948 () Bool)

(declare-fun e!4357551 () Bool)

(assert (=> d!2260917 (=> res!2945948 e!4357551)))

(assert (=> d!2260917 (= res!2945948 (is-ElementMatch!18768 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250)))))))))

(assert (=> d!2260917 (= (validRegex!9571 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250)))))) e!4357551)))

(declare-fun b!7266504 () Bool)

(declare-fun e!4357557 () Bool)

(assert (=> b!7266504 (= e!4357557 e!4357553)))

(declare-fun res!2945950 () Bool)

(assert (=> b!7266504 (=> (not res!2945950) (not e!4357553))))

(assert (=> b!7266504 (= res!2945950 call!662334)))

(declare-fun b!7266505 () Bool)

(declare-fun res!2945949 () Bool)

(assert (=> b!7266505 (=> res!2945949 e!4357557)))

(assert (=> b!7266505 (= res!2945949 (not (is-Concat!27613 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250))))))))))

(assert (=> b!7266505 (= e!4357555 e!4357557)))

(declare-fun b!7266506 () Bool)

(declare-fun e!4357554 () Bool)

(assert (=> b!7266506 (= e!4357551 e!4357554)))

(assert (=> b!7266506 (= c!1352160 (is-Star!18768 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250)))))))))

(declare-fun bm!662331 () Bool)

(assert (=> bm!662331 (= call!662336 call!662335)))

(declare-fun b!7266507 () Bool)

(assert (=> b!7266507 (= e!4357554 e!4357555)))

(assert (=> b!7266507 (= c!1352159 (is-Union!18768 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250)))))))))

(declare-fun b!7266508 () Bool)

(assert (=> b!7266508 (= e!4357554 e!4357556)))

(declare-fun res!2945946 () Bool)

(assert (=> b!7266508 (= res!2945946 (not (nullable!7968 (reg!19097 (ite c!1352063 (reg!19097 (h!77175 (exprs!8208 ct1!250))) (ite c!1352062 (regTwo!38049 (h!77175 (exprs!8208 ct1!250))) (regTwo!38048 (h!77175 (exprs!8208 ct1!250)))))))))))

(assert (=> b!7266508 (=> (not res!2945946) (not e!4357556))))

(assert (= (and d!2260917 (not res!2945948)) b!7266506))

(assert (= (and b!7266506 c!1352160) b!7266508))

(assert (= (and b!7266506 (not c!1352160)) b!7266507))

(assert (= (and b!7266508 res!2945946) b!7266502))

(assert (= (and b!7266507 c!1352159) b!7266503))

(assert (= (and b!7266507 (not c!1352159)) b!7266505))

(assert (= (and b!7266503 res!2945947) b!7266501))

(assert (= (and b!7266505 (not res!2945949)) b!7266504))

(assert (= (and b!7266504 res!2945950) b!7266500))

(assert (= (or b!7266503 b!7266504) bm!662329))

(assert (= (or b!7266501 b!7266500) bm!662331))

(assert (= (or b!7266502 bm!662331) bm!662330))

(declare-fun m!7951202 () Bool)

(assert (=> bm!662329 m!7951202))

(declare-fun m!7951204 () Bool)

(assert (=> bm!662330 m!7951204))

(declare-fun m!7951206 () Bool)

(assert (=> b!7266508 m!7951206))

(assert (=> bm!662256 d!2260917))

(declare-fun b!7266509 () Bool)

(declare-fun e!4357558 () Bool)

(declare-fun tp!2040503 () Bool)

(assert (=> b!7266509 (= e!4357558 (and tp_is_empty!47001 tp!2040503))))

(assert (=> b!7266252 (= tp!2040483 e!4357558)))

(assert (= (and b!7266252 (is-Cons!70728 (t!384920 (t!384920 s!7854)))) b!7266509))

(declare-fun b!7266522 () Bool)

(declare-fun e!4357561 () Bool)

(declare-fun tp!2040516 () Bool)

(assert (=> b!7266522 (= e!4357561 tp!2040516)))

(declare-fun b!7266523 () Bool)

(declare-fun tp!2040518 () Bool)

(declare-fun tp!2040517 () Bool)

(assert (=> b!7266523 (= e!4357561 (and tp!2040518 tp!2040517))))

(declare-fun b!7266521 () Bool)

(declare-fun tp!2040514 () Bool)

(declare-fun tp!2040515 () Bool)

(assert (=> b!7266521 (= e!4357561 (and tp!2040514 tp!2040515))))

(assert (=> b!7266247 (= tp!2040479 e!4357561)))

(declare-fun b!7266520 () Bool)

(assert (=> b!7266520 (= e!4357561 tp_is_empty!47001)))

(assert (= (and b!7266247 (is-ElementMatch!18768 (h!77175 (exprs!8208 ct1!250)))) b!7266520))

(assert (= (and b!7266247 (is-Concat!27613 (h!77175 (exprs!8208 ct1!250)))) b!7266521))

(assert (= (and b!7266247 (is-Star!18768 (h!77175 (exprs!8208 ct1!250)))) b!7266522))

(assert (= (and b!7266247 (is-Union!18768 (h!77175 (exprs!8208 ct1!250)))) b!7266523))

(declare-fun b!7266524 () Bool)

(declare-fun e!4357562 () Bool)

(declare-fun tp!2040519 () Bool)

(declare-fun tp!2040520 () Bool)

(assert (=> b!7266524 (= e!4357562 (and tp!2040519 tp!2040520))))

(assert (=> b!7266247 (= tp!2040480 e!4357562)))

(assert (= (and b!7266247 (is-Cons!70727 (t!384919 (exprs!8208 ct1!250)))) b!7266524))

(declare-fun b!7266527 () Bool)

(declare-fun e!4357563 () Bool)

(declare-fun tp!2040523 () Bool)

(assert (=> b!7266527 (= e!4357563 tp!2040523)))

(declare-fun b!7266528 () Bool)

(declare-fun tp!2040525 () Bool)

(declare-fun tp!2040524 () Bool)

(assert (=> b!7266528 (= e!4357563 (and tp!2040525 tp!2040524))))

(declare-fun b!7266526 () Bool)

(declare-fun tp!2040521 () Bool)

(declare-fun tp!2040522 () Bool)

(assert (=> b!7266526 (= e!4357563 (and tp!2040521 tp!2040522))))

(assert (=> b!7266246 (= tp!2040477 e!4357563)))

(declare-fun b!7266525 () Bool)

(assert (=> b!7266525 (= e!4357563 tp_is_empty!47001)))

(assert (= (and b!7266246 (is-ElementMatch!18768 (h!77175 (exprs!8208 ct2!346)))) b!7266525))

(assert (= (and b!7266246 (is-Concat!27613 (h!77175 (exprs!8208 ct2!346)))) b!7266526))

(assert (= (and b!7266246 (is-Star!18768 (h!77175 (exprs!8208 ct2!346)))) b!7266527))

(assert (= (and b!7266246 (is-Union!18768 (h!77175 (exprs!8208 ct2!346)))) b!7266528))

(declare-fun b!7266529 () Bool)

(declare-fun e!4357564 () Bool)

(declare-fun tp!2040526 () Bool)

(declare-fun tp!2040527 () Bool)

(assert (=> b!7266529 (= e!4357564 (and tp!2040526 tp!2040527))))

(assert (=> b!7266246 (= tp!2040478 e!4357564)))

(assert (= (and b!7266246 (is-Cons!70727 (t!384919 (exprs!8208 ct2!346)))) b!7266529))

(declare-fun b_lambda!279823 () Bool)

(assert (= b_lambda!279811 (or b!7266052 b_lambda!279823)))

(assert (=> d!2260855 d!2260781))

(declare-fun b_lambda!279825 () Bool)

(assert (= b_lambda!279819 (or d!2260779 b_lambda!279825)))

(declare-fun bs!1910324 () Bool)

(declare-fun d!2260919 () Bool)

(assert (= bs!1910324 (and d!2260919 d!2260779)))

(assert (=> bs!1910324 (= (dynLambda!28888 lambda!447499 (h!77175 (exprs!8208 ct1!250))) (validRegex!9571 (h!77175 (exprs!8208 ct1!250))))))

(assert (=> bs!1910324 m!7950746))

(assert (=> b!7266456 d!2260919))

(declare-fun b_lambda!279827 () Bool)

(assert (= b_lambda!279809 (or b!7266052 b_lambda!279827)))

(assert (=> d!2260847 d!2260783))

(declare-fun b_lambda!279829 () Bool)

(assert (= b_lambda!279821 (or d!2260777 b_lambda!279829)))

(declare-fun bs!1910325 () Bool)

(declare-fun d!2260921 () Bool)

(assert (= bs!1910325 (and d!2260921 d!2260777)))

(assert (=> bs!1910325 (= (dynLambda!28888 lambda!447498 (h!77175 (exprs!8208 ct2!346))) (validRegex!9571 (h!77175 (exprs!8208 ct2!346))))))

(declare-fun m!7951208 () Bool)

(assert (=> bs!1910325 m!7951208))

(assert (=> b!7266473 d!2260921))

(declare-fun b_lambda!279831 () Bool)

(assert (= b_lambda!279807 (or b!7266052 b_lambda!279831)))

(declare-fun bs!1910326 () Bool)

(declare-fun d!2260923 () Bool)

(assert (= bs!1910326 (and d!2260923 b!7266052)))

(assert (=> bs!1910326 (= (dynLambda!28888 lambda!447470 (h!77175 (exprs!8208 ct1!250))) (validRegex!9571 (h!77175 (exprs!8208 ct1!250))))))

(assert (=> bs!1910326 m!7950746))

(assert (=> b!7266403 d!2260923))

(declare-fun b_lambda!279833 () Bool)

(assert (= b_lambda!279813 (or d!2260773 b_lambda!279833)))

(declare-fun bs!1910327 () Bool)

(declare-fun d!2260925 () Bool)

(assert (= bs!1910327 (and d!2260925 d!2260773)))

(assert (=> bs!1910327 (= (dynLambda!28888 lambda!447495 (h!77175 (exprs!8208 ct1!250))) (nullable!7968 (h!77175 (exprs!8208 ct1!250))))))

(assert (=> bs!1910327 m!7950740))

(assert (=> b!7266410 d!2260925))

(declare-fun b_lambda!279835 () Bool)

(assert (= b_lambda!279815 (or b!7266052 b_lambda!279835)))

(declare-fun bs!1910328 () Bool)

(declare-fun d!2260927 () Bool)

(assert (= bs!1910328 (and d!2260927 b!7266052)))

(assert (=> bs!1910328 (= (dynLambda!28888 lambda!447470 (h!77175 (++!16668 lt!2592411 (exprs!8208 ct2!346)))) (validRegex!9571 (h!77175 (++!16668 lt!2592411 (exprs!8208 ct2!346)))))))

(declare-fun m!7951210 () Bool)

(assert (=> bs!1910328 m!7951210))

(assert (=> b!7266452 d!2260927))

(declare-fun b_lambda!279837 () Bool)

(assert (= b_lambda!279817 (or b!7266052 b_lambda!279837)))

(declare-fun bs!1910329 () Bool)

(declare-fun d!2260929 () Bool)

(assert (= bs!1910329 (and d!2260929 b!7266052)))

(assert (=> bs!1910329 (= (dynLambda!28888 lambda!447470 (h!77175 lt!2592411)) (validRegex!9571 (h!77175 lt!2592411)))))

(declare-fun m!7951212 () Bool)

(assert (=> bs!1910329 m!7951212))

(assert (=> b!7266454 d!2260929))

(declare-fun b_lambda!279839 () Bool)

(assert (= b_lambda!279805 (or b!7266052 b_lambda!279839)))

(declare-fun bs!1910330 () Bool)

(declare-fun d!2260931 () Bool)

(assert (= bs!1910330 (and d!2260931 b!7266052)))

(assert (=> bs!1910330 (= (dynLambda!28888 lambda!447470 (h!77175 (++!16668 (exprs!8208 ct1!250) (exprs!8208 ct2!346)))) (validRegex!9571 (h!77175 (++!16668 (exprs!8208 ct1!250) (exprs!8208 ct2!346)))))))

(declare-fun m!7951214 () Bool)

(assert (=> bs!1910330 m!7951214))

(assert (=> b!7266401 d!2260931))

(push 1)

(assert (not bm!662295))

(assert (not bm!662326))

(assert (not bm!662311))

(assert (not b!7266382))

(assert (not bm!662327))

(assert (not b!7266411))

(assert (not b!7266402))

(assert (not bm!662325))

(assert (not bm!662297))

(assert (not bs!1910324))

(assert (not b!7266523))

(assert (not b!7266424))

(assert (not b!7266426))

(assert (not d!2260915))

(assert (not b!7266497))

(assert (not bm!662309))

(assert (not b!7266439))

(assert (not b_lambda!279839))

(assert (not d!2260839))

(assert (not d!2260873))

(assert (not b!7266455))

(assert (not b!7266508))

(assert (not bs!1910325))

(assert (not d!2260847))

(assert (not b_lambda!279795))

(assert (not b!7266475))

(assert (not b!7266395))

(assert (not bm!662329))

(assert (not bs!1910327))

(assert (not bm!662305))

(assert (not b_lambda!279837))

(assert (not b!7266509))

(assert (not b!7266522))

(assert (not b!7266416))

(assert (not bm!662303))

(assert (not b!7266524))

(assert (not b_lambda!279793))

(assert (not b!7266498))

(assert (not b!7266446))

(assert (not b!7266394))

(assert (not bm!662312))

(assert (not bm!662318))

(assert (not b_lambda!279829))

(assert (not d!2260913))

(assert (not bm!662330))

(assert (not bs!1910330))

(assert (not bm!662313))

(assert (not b_lambda!279827))

(assert (not b!7266495))

(assert (not bs!1910329))

(assert (not setNonEmpty!53630))

(assert (not bm!662298))

(assert (not d!2260875))

(assert (not d!2260891))

(assert (not b!7266414))

(assert (not b!7266494))

(assert (not b!7266409))

(assert (not b!7266427))

(assert (not bm!662322))

(assert (not b!7266470))

(assert (not d!2260837))

(assert (not b_lambda!279825))

(assert (not setNonEmpty!53631))

(assert (not b!7266457))

(assert (not b!7266474))

(assert (not b!7266451))

(assert (not b!7266527))

(assert (not bs!1910328))

(assert (not b!7266443))

(assert (not b!7266441))

(assert (not b!7266521))

(assert (not bm!662301))

(assert (not bm!662291))

(assert (not b!7266458))

(assert (not d!2260851))

(assert (not b!7266377))

(assert (not b!7266448))

(assert (not bm!662306))

(assert (not b!7266528))

(assert (not b!7266453))

(assert (not b!7266529))

(assert (not b!7266381))

(assert (not b!7266404))

(assert (not bm!662304))

(assert (not b!7266472))

(assert (not bm!662292))

(assert (not b!7266361))

(assert tp_is_empty!47001)

(assert (not b!7266422))

(assert (not bs!1910326))

(assert (not bm!662324))

(assert (not b!7266379))

(assert (not bm!662316))

(assert (not bm!662319))

(assert (not d!2260895))

(assert (not b!7266438))

(assert (not d!2260849))

(assert (not d!2260861))

(assert (not d!2260843))

(assert (not b_lambda!279823))

(assert (not b_lambda!279833))

(assert (not b_lambda!279835))

(assert (not b!7266526))

(assert (not b!7266407))

(assert (not d!2260855))

(assert (not b_lambda!279831))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

