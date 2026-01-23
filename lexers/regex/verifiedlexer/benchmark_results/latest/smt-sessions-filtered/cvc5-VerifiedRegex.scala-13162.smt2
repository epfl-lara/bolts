; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718542 () Bool)

(assert start!718542)

(declare-fun b!7358619 () Bool)

(declare-fun e!4405860 () Bool)

(declare-fun tp!2090671 () Bool)

(assert (=> b!7358619 (= e!4405860 tp!2090671)))

(declare-fun b!7358620 () Bool)

(declare-fun e!4405855 () Bool)

(declare-fun tp!2090672 () Bool)

(assert (=> b!7358620 (= e!4405855 tp!2090672)))

(declare-datatypes ((C!38698 0))(
  ( (C!38699 (val!29709 Int)) )
))
(declare-datatypes ((Regex!19212 0))(
  ( (ElementMatch!19212 (c!1367202 C!38698)) (Concat!28057 (regOne!38936 Regex!19212) (regTwo!38936 Regex!19212)) (EmptyExpr!19212) (Star!19212 (reg!19541 Regex!19212)) (EmptyLang!19212) (Union!19212 (regOne!38937 Regex!19212) (regTwo!38937 Regex!19212)) )
))
(declare-fun r1!2370 () Regex!19212)

(declare-fun c!10362 () C!38698)

(declare-fun e!4405858 () Bool)

(declare-fun b!7358621 () Bool)

(declare-datatypes ((List!71708 0))(
  ( (Nil!71584) (Cons!71584 (h!78032 Regex!19212) (t!386151 List!71708)) )
))
(declare-datatypes ((Context!16304 0))(
  ( (Context!16305 (exprs!8652 List!71708)) )
))
(declare-fun lt!2613626 () (Set Context!16304))

(declare-fun ct1!282 () Context!16304)

(declare-fun derivationStepZipperDown!3038 (Regex!19212 Context!16304 C!38698) (Set Context!16304))

(assert (=> b!7358621 (= e!4405858 (not (= lt!2613626 (set.union (derivationStepZipperDown!3038 (regOne!38937 r1!2370) ct1!282 c!10362) (derivationStepZipperDown!3038 (regTwo!38937 r1!2370) ct1!282 c!10362)))))))

(declare-fun b!7358622 () Bool)

(declare-fun e!4405859 () Bool)

(declare-fun tp!2090674 () Bool)

(declare-fun tp!2090668 () Bool)

(assert (=> b!7358622 (= e!4405859 (and tp!2090674 tp!2090668))))

(declare-fun b!7358623 () Bool)

(declare-fun e!4405861 () Bool)

(declare-fun tp!2090675 () Bool)

(assert (=> b!7358623 (= e!4405861 tp!2090675)))

(declare-fun b!7358624 () Bool)

(declare-fun e!4405856 () Bool)

(declare-fun e!4405857 () Bool)

(assert (=> b!7358624 (= e!4405856 e!4405857)))

(declare-fun res!2971047 () Bool)

(assert (=> b!7358624 (=> (not res!2971047) (not e!4405857))))

(declare-fun cWitness!61 () Context!16304)

(assert (=> b!7358624 (= res!2971047 (set.member cWitness!61 lt!2613626))))

(assert (=> b!7358624 (= lt!2613626 (derivationStepZipperDown!3038 r1!2370 ct1!282 c!10362))))

(declare-fun b!7358625 () Bool)

(declare-fun tp!2090673 () Bool)

(assert (=> b!7358625 (= e!4405859 tp!2090673)))

(declare-fun b!7358626 () Bool)

(assert (=> b!7358626 (= e!4405857 e!4405858)))

(declare-fun res!2971045 () Bool)

(assert (=> b!7358626 (=> (not res!2971045) (not e!4405858))))

(assert (=> b!7358626 (= res!2971045 (and (or (not (is-ElementMatch!19212 r1!2370)) (not (= c!10362 (c!1367202 r1!2370)))) (is-Union!19212 r1!2370)))))

(declare-fun lt!2613628 () (Set Context!16304))

(declare-fun ct2!378 () Context!16304)

(declare-fun ++!17030 (List!71708 List!71708) List!71708)

(assert (=> b!7358626 (= lt!2613628 (derivationStepZipperDown!3038 r1!2370 (Context!16305 (++!17030 (exprs!8652 ct1!282) (exprs!8652 ct2!378))) c!10362))))

(declare-fun lambda!457208 () Int)

(declare-datatypes ((Unit!165377 0))(
  ( (Unit!165378) )
))
(declare-fun lt!2613627 () Unit!165377)

(declare-fun lemmaConcatPreservesForall!1887 (List!71708 List!71708 Int) Unit!165377)

(assert (=> b!7358626 (= lt!2613627 (lemmaConcatPreservesForall!1887 (exprs!8652 ct1!282) (exprs!8652 ct2!378) lambda!457208))))

(declare-fun b!7358627 () Bool)

(declare-fun tp_is_empty!48669 () Bool)

(assert (=> b!7358627 (= e!4405859 tp_is_empty!48669)))

(declare-fun b!7358618 () Bool)

(declare-fun tp!2090669 () Bool)

(declare-fun tp!2090670 () Bool)

(assert (=> b!7358618 (= e!4405859 (and tp!2090669 tp!2090670))))

(declare-fun res!2971046 () Bool)

(assert (=> start!718542 (=> (not res!2971046) (not e!4405856))))

(declare-fun validRegex!9808 (Regex!19212) Bool)

(assert (=> start!718542 (= res!2971046 (validRegex!9808 r1!2370))))

(assert (=> start!718542 e!4405856))

(assert (=> start!718542 tp_is_empty!48669))

(declare-fun inv!91371 (Context!16304) Bool)

(assert (=> start!718542 (and (inv!91371 cWitness!61) e!4405860)))

(assert (=> start!718542 (and (inv!91371 ct1!282) e!4405861)))

(assert (=> start!718542 e!4405859))

(assert (=> start!718542 (and (inv!91371 ct2!378) e!4405855)))

(assert (= (and start!718542 res!2971046) b!7358624))

(assert (= (and b!7358624 res!2971047) b!7358626))

(assert (= (and b!7358626 res!2971045) b!7358621))

(assert (= start!718542 b!7358619))

(assert (= start!718542 b!7358623))

(assert (= (and start!718542 (is-ElementMatch!19212 r1!2370)) b!7358627))

(assert (= (and start!718542 (is-Concat!28057 r1!2370)) b!7358622))

(assert (= (and start!718542 (is-Star!19212 r1!2370)) b!7358625))

(assert (= (and start!718542 (is-Union!19212 r1!2370)) b!7358618))

(assert (= start!718542 b!7358620))

(declare-fun m!8017398 () Bool)

(assert (=> b!7358621 m!8017398))

(declare-fun m!8017400 () Bool)

(assert (=> b!7358621 m!8017400))

(declare-fun m!8017402 () Bool)

(assert (=> b!7358624 m!8017402))

(declare-fun m!8017404 () Bool)

(assert (=> b!7358624 m!8017404))

(declare-fun m!8017406 () Bool)

(assert (=> b!7358626 m!8017406))

(declare-fun m!8017408 () Bool)

(assert (=> b!7358626 m!8017408))

(declare-fun m!8017410 () Bool)

(assert (=> b!7358626 m!8017410))

(declare-fun m!8017412 () Bool)

(assert (=> start!718542 m!8017412))

(declare-fun m!8017414 () Bool)

(assert (=> start!718542 m!8017414))

(declare-fun m!8017416 () Bool)

(assert (=> start!718542 m!8017416))

(declare-fun m!8017418 () Bool)

(assert (=> start!718542 m!8017418))

(push 1)

(assert (not b!7358618))

(assert (not b!7358624))

(assert (not b!7358620))

(assert (not b!7358621))

(assert (not b!7358625))

(assert (not b!7358626))

(assert (not b!7358623))

(assert (not start!718542))

(assert (not b!7358619))

(assert (not b!7358622))

(assert tp_is_empty!48669)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1367216 () Bool)

(declare-fun call!674016 () (Set Context!16304))

(declare-fun call!674021 () List!71708)

(declare-fun c!1367214 () Bool)

(declare-fun c!1367215 () Bool)

(declare-fun bm!674011 () Bool)

(assert (=> bm!674011 (= call!674016 (derivationStepZipperDown!3038 (ite c!1367214 (regOne!38937 r1!2370) (ite c!1367215 (regTwo!38936 r1!2370) (ite c!1367216 (regOne!38936 r1!2370) (reg!19541 r1!2370)))) (ite (or c!1367214 c!1367215) (Context!16305 (++!17030 (exprs!8652 ct1!282) (exprs!8652 ct2!378))) (Context!16305 call!674021)) c!10362))))

(declare-fun bm!674012 () Bool)

(declare-fun call!674017 () List!71708)

(assert (=> bm!674012 (= call!674021 call!674017)))

(declare-fun bm!674013 () Bool)

(declare-fun call!674019 () (Set Context!16304))

(declare-fun call!674018 () (Set Context!16304))

(assert (=> bm!674013 (= call!674019 call!674018)))

(declare-fun b!7358681 () Bool)

(declare-fun e!4405897 () Bool)

(assert (=> b!7358681 (= c!1367215 e!4405897)))

(declare-fun res!2971059 () Bool)

(assert (=> b!7358681 (=> (not res!2971059) (not e!4405897))))

(assert (=> b!7358681 (= res!2971059 (is-Concat!28057 r1!2370))))

(declare-fun e!4405899 () (Set Context!16304))

(declare-fun e!4405898 () (Set Context!16304))

(assert (=> b!7358681 (= e!4405899 e!4405898)))

(declare-fun b!7358682 () Bool)

(declare-fun call!674020 () (Set Context!16304))

(assert (=> b!7358682 (= e!4405898 (set.union call!674020 call!674018))))

(declare-fun b!7358683 () Bool)

(declare-fun e!4405900 () (Set Context!16304))

(assert (=> b!7358683 (= e!4405898 e!4405900)))

(assert (=> b!7358683 (= c!1367216 (is-Concat!28057 r1!2370))))

(declare-fun b!7358684 () Bool)

(declare-fun e!4405895 () (Set Context!16304))

(assert (=> b!7358684 (= e!4405895 (set.insert (Context!16305 (++!17030 (exprs!8652 ct1!282) (exprs!8652 ct2!378))) (as set.empty (Set Context!16304))))))

(declare-fun b!7358685 () Bool)

(declare-fun nullable!8299 (Regex!19212) Bool)

(assert (=> b!7358685 (= e!4405897 (nullable!8299 (regOne!38936 r1!2370)))))

(declare-fun bm!674014 () Bool)

(assert (=> bm!674014 (= call!674020 (derivationStepZipperDown!3038 (ite c!1367214 (regTwo!38937 r1!2370) (regOne!38936 r1!2370)) (ite c!1367214 (Context!16305 (++!17030 (exprs!8652 ct1!282) (exprs!8652 ct2!378))) (Context!16305 call!674017)) c!10362))))

(declare-fun b!7358680 () Bool)

(declare-fun e!4405896 () (Set Context!16304))

(assert (=> b!7358680 (= e!4405896 call!674019)))

(declare-fun d!2281857 () Bool)

(declare-fun c!1367218 () Bool)

(assert (=> d!2281857 (= c!1367218 (and (is-ElementMatch!19212 r1!2370) (= (c!1367202 r1!2370) c!10362)))))

(assert (=> d!2281857 (= (derivationStepZipperDown!3038 r1!2370 (Context!16305 (++!17030 (exprs!8652 ct1!282) (exprs!8652 ct2!378))) c!10362) e!4405895)))

(declare-fun b!7358686 () Bool)

(assert (=> b!7358686 (= e!4405900 call!674019)))

(declare-fun bm!674015 () Bool)

(declare-fun $colon$colon!3205 (List!71708 Regex!19212) List!71708)

(assert (=> bm!674015 (= call!674017 ($colon$colon!3205 (exprs!8652 (Context!16305 (++!17030 (exprs!8652 ct1!282) (exprs!8652 ct2!378)))) (ite (or c!1367215 c!1367216) (regTwo!38936 r1!2370) r1!2370)))))

(declare-fun b!7358687 () Bool)

(assert (=> b!7358687 (= e!4405896 (as set.empty (Set Context!16304)))))

(declare-fun b!7358688 () Bool)

(declare-fun c!1367217 () Bool)

(assert (=> b!7358688 (= c!1367217 (is-Star!19212 r1!2370))))

(assert (=> b!7358688 (= e!4405900 e!4405896)))

(declare-fun b!7358689 () Bool)

(assert (=> b!7358689 (= e!4405895 e!4405899)))

(assert (=> b!7358689 (= c!1367214 (is-Union!19212 r1!2370))))

(declare-fun bm!674016 () Bool)

(assert (=> bm!674016 (= call!674018 call!674016)))

(declare-fun b!7358690 () Bool)

(assert (=> b!7358690 (= e!4405899 (set.union call!674016 call!674020))))

(assert (= (and d!2281857 c!1367218) b!7358684))

(assert (= (and d!2281857 (not c!1367218)) b!7358689))

(assert (= (and b!7358689 c!1367214) b!7358690))

(assert (= (and b!7358689 (not c!1367214)) b!7358681))

(assert (= (and b!7358681 res!2971059) b!7358685))

(assert (= (and b!7358681 c!1367215) b!7358682))

(assert (= (and b!7358681 (not c!1367215)) b!7358683))

(assert (= (and b!7358683 c!1367216) b!7358686))

(assert (= (and b!7358683 (not c!1367216)) b!7358688))

(assert (= (and b!7358688 c!1367217) b!7358680))

(assert (= (and b!7358688 (not c!1367217)) b!7358687))

(assert (= (or b!7358686 b!7358680) bm!674012))

(assert (= (or b!7358686 b!7358680) bm!674013))

(assert (= (or b!7358682 bm!674013) bm!674016))

(assert (= (or b!7358682 bm!674012) bm!674015))

(assert (= (or b!7358690 b!7358682) bm!674014))

(assert (= (or b!7358690 bm!674016) bm!674011))

(declare-fun m!8017442 () Bool)

(assert (=> bm!674011 m!8017442))

(declare-fun m!8017444 () Bool)

(assert (=> bm!674015 m!8017444))

(declare-fun m!8017446 () Bool)

(assert (=> b!7358685 m!8017446))

(declare-fun m!8017448 () Bool)

(assert (=> b!7358684 m!8017448))

(declare-fun m!8017450 () Bool)

(assert (=> bm!674014 m!8017450))

(assert (=> b!7358626 d!2281857))

(declare-fun b!7358700 () Bool)

(declare-fun e!4405905 () List!71708)

(assert (=> b!7358700 (= e!4405905 (Cons!71584 (h!78032 (exprs!8652 ct1!282)) (++!17030 (t!386151 (exprs!8652 ct1!282)) (exprs!8652 ct2!378))))))

(declare-fun b!7358699 () Bool)

(assert (=> b!7358699 (= e!4405905 (exprs!8652 ct2!378))))

(declare-fun b!7358701 () Bool)

(declare-fun res!2971064 () Bool)

(declare-fun e!4405906 () Bool)

(assert (=> b!7358701 (=> (not res!2971064) (not e!4405906))))

(declare-fun lt!2613640 () List!71708)

(declare-fun size!42087 (List!71708) Int)

(assert (=> b!7358701 (= res!2971064 (= (size!42087 lt!2613640) (+ (size!42087 (exprs!8652 ct1!282)) (size!42087 (exprs!8652 ct2!378)))))))

(declare-fun b!7358702 () Bool)

(assert (=> b!7358702 (= e!4405906 (or (not (= (exprs!8652 ct2!378) Nil!71584)) (= lt!2613640 (exprs!8652 ct1!282))))))

(declare-fun d!2281861 () Bool)

(assert (=> d!2281861 e!4405906))

(declare-fun res!2971065 () Bool)

(assert (=> d!2281861 (=> (not res!2971065) (not e!4405906))))

(declare-fun content!15109 (List!71708) (Set Regex!19212))

(assert (=> d!2281861 (= res!2971065 (= (content!15109 lt!2613640) (set.union (content!15109 (exprs!8652 ct1!282)) (content!15109 (exprs!8652 ct2!378)))))))

(assert (=> d!2281861 (= lt!2613640 e!4405905)))

(declare-fun c!1367221 () Bool)

(assert (=> d!2281861 (= c!1367221 (is-Nil!71584 (exprs!8652 ct1!282)))))

(assert (=> d!2281861 (= (++!17030 (exprs!8652 ct1!282) (exprs!8652 ct2!378)) lt!2613640)))

(assert (= (and d!2281861 c!1367221) b!7358699))

(assert (= (and d!2281861 (not c!1367221)) b!7358700))

(assert (= (and d!2281861 res!2971065) b!7358701))

(assert (= (and b!7358701 res!2971064) b!7358702))

(declare-fun m!8017452 () Bool)

(assert (=> b!7358700 m!8017452))

(declare-fun m!8017454 () Bool)

(assert (=> b!7358701 m!8017454))

(declare-fun m!8017456 () Bool)

(assert (=> b!7358701 m!8017456))

(declare-fun m!8017458 () Bool)

(assert (=> b!7358701 m!8017458))

(declare-fun m!8017460 () Bool)

(assert (=> d!2281861 m!8017460))

(declare-fun m!8017462 () Bool)

(assert (=> d!2281861 m!8017462))

(declare-fun m!8017464 () Bool)

(assert (=> d!2281861 m!8017464))

(assert (=> b!7358626 d!2281861))

(declare-fun d!2281863 () Bool)

(declare-fun forall!18028 (List!71708 Int) Bool)

(assert (=> d!2281863 (forall!18028 (++!17030 (exprs!8652 ct1!282) (exprs!8652 ct2!378)) lambda!457208)))

(declare-fun lt!2613643 () Unit!165377)

(declare-fun choose!57239 (List!71708 List!71708 Int) Unit!165377)

(assert (=> d!2281863 (= lt!2613643 (choose!57239 (exprs!8652 ct1!282) (exprs!8652 ct2!378) lambda!457208))))

(assert (=> d!2281863 (forall!18028 (exprs!8652 ct1!282) lambda!457208)))

(assert (=> d!2281863 (= (lemmaConcatPreservesForall!1887 (exprs!8652 ct1!282) (exprs!8652 ct2!378) lambda!457208) lt!2613643)))

(declare-fun bs!1919968 () Bool)

(assert (= bs!1919968 d!2281863))

(assert (=> bs!1919968 m!8017406))

(assert (=> bs!1919968 m!8017406))

(declare-fun m!8017466 () Bool)

(assert (=> bs!1919968 m!8017466))

(declare-fun m!8017468 () Bool)

(assert (=> bs!1919968 m!8017468))

(declare-fun m!8017470 () Bool)

(assert (=> bs!1919968 m!8017470))

(assert (=> b!7358626 d!2281863))

(declare-fun bm!674035 () Bool)

(declare-fun call!674042 () Bool)

(declare-fun c!1367236 () Bool)

(assert (=> bm!674035 (= call!674042 (validRegex!9808 (ite c!1367236 (regOne!38937 r1!2370) (regTwo!38936 r1!2370))))))

(declare-fun b!7358744 () Bool)

(declare-fun e!4405935 () Bool)

(declare-fun e!4405939 () Bool)

(assert (=> b!7358744 (= e!4405935 e!4405939)))

(assert (=> b!7358744 (= c!1367236 (is-Union!19212 r1!2370))))

(declare-fun bm!674036 () Bool)

(declare-fun call!674041 () Bool)

(declare-fun call!674040 () Bool)

(assert (=> bm!674036 (= call!674041 call!674040)))

(declare-fun b!7358745 () Bool)

(declare-fun e!4405938 () Bool)

(assert (=> b!7358745 (= e!4405938 call!674040)))

(declare-fun b!7358746 () Bool)

(declare-fun res!2971078 () Bool)

(declare-fun e!4405936 () Bool)

(assert (=> b!7358746 (=> res!2971078 e!4405936)))

(assert (=> b!7358746 (= res!2971078 (not (is-Concat!28057 r1!2370)))))

(assert (=> b!7358746 (= e!4405939 e!4405936)))

(declare-fun b!7358747 () Bool)

(declare-fun e!4405937 () Bool)

(assert (=> b!7358747 (= e!4405936 e!4405937)))

(declare-fun res!2971081 () Bool)

(assert (=> b!7358747 (=> (not res!2971081) (not e!4405937))))

(assert (=> b!7358747 (= res!2971081 call!674041)))

(declare-fun b!7358748 () Bool)

(declare-fun res!2971079 () Bool)

(declare-fun e!4405934 () Bool)

(assert (=> b!7358748 (=> (not res!2971079) (not e!4405934))))

(assert (=> b!7358748 (= res!2971079 call!674042)))

(assert (=> b!7358748 (= e!4405939 e!4405934)))

(declare-fun d!2281865 () Bool)

(declare-fun res!2971080 () Bool)

(declare-fun e!4405933 () Bool)

(assert (=> d!2281865 (=> res!2971080 e!4405933)))

(assert (=> d!2281865 (= res!2971080 (is-ElementMatch!19212 r1!2370))))

(assert (=> d!2281865 (= (validRegex!9808 r1!2370) e!4405933)))

(declare-fun b!7358743 () Bool)

(assert (=> b!7358743 (= e!4405937 call!674042)))

(declare-fun b!7358749 () Bool)

(assert (=> b!7358749 (= e!4405935 e!4405938)))

(declare-fun res!2971082 () Bool)

(assert (=> b!7358749 (= res!2971082 (not (nullable!8299 (reg!19541 r1!2370))))))

(assert (=> b!7358749 (=> (not res!2971082) (not e!4405938))))

(declare-fun b!7358750 () Bool)

(assert (=> b!7358750 (= e!4405934 call!674041)))

(declare-fun bm!674037 () Bool)

(declare-fun c!1367237 () Bool)

(assert (=> bm!674037 (= call!674040 (validRegex!9808 (ite c!1367237 (reg!19541 r1!2370) (ite c!1367236 (regTwo!38937 r1!2370) (regOne!38936 r1!2370)))))))

(declare-fun b!7358751 () Bool)

(assert (=> b!7358751 (= e!4405933 e!4405935)))

(assert (=> b!7358751 (= c!1367237 (is-Star!19212 r1!2370))))

(assert (= (and d!2281865 (not res!2971080)) b!7358751))

(assert (= (and b!7358751 c!1367237) b!7358749))

(assert (= (and b!7358751 (not c!1367237)) b!7358744))

(assert (= (and b!7358749 res!2971082) b!7358745))

(assert (= (and b!7358744 c!1367236) b!7358748))

(assert (= (and b!7358744 (not c!1367236)) b!7358746))

(assert (= (and b!7358748 res!2971079) b!7358750))

(assert (= (and b!7358746 (not res!2971078)) b!7358747))

(assert (= (and b!7358747 res!2971081) b!7358743))

(assert (= (or b!7358748 b!7358743) bm!674035))

(assert (= (or b!7358750 b!7358747) bm!674036))

(assert (= (or b!7358745 bm!674036) bm!674037))

(declare-fun m!8017472 () Bool)

(assert (=> bm!674035 m!8017472))

(declare-fun m!8017474 () Bool)

(assert (=> b!7358749 m!8017474))

(declare-fun m!8017476 () Bool)

(assert (=> bm!674037 m!8017476))

(assert (=> start!718542 d!2281865))

(declare-fun bs!1919969 () Bool)

(declare-fun d!2281867 () Bool)

(assert (= bs!1919969 (and d!2281867 b!7358626)))

(declare-fun lambda!457214 () Int)

(assert (=> bs!1919969 (= lambda!457214 lambda!457208)))

(assert (=> d!2281867 (= (inv!91371 cWitness!61) (forall!18028 (exprs!8652 cWitness!61) lambda!457214))))

(declare-fun bs!1919970 () Bool)

(assert (= bs!1919970 d!2281867))

(declare-fun m!8017478 () Bool)

(assert (=> bs!1919970 m!8017478))

(assert (=> start!718542 d!2281867))

(declare-fun bs!1919971 () Bool)

(declare-fun d!2281869 () Bool)

(assert (= bs!1919971 (and d!2281869 b!7358626)))

(declare-fun lambda!457215 () Int)

(assert (=> bs!1919971 (= lambda!457215 lambda!457208)))

(declare-fun bs!1919972 () Bool)

(assert (= bs!1919972 (and d!2281869 d!2281867)))

(assert (=> bs!1919972 (= lambda!457215 lambda!457214)))

(assert (=> d!2281869 (= (inv!91371 ct1!282) (forall!18028 (exprs!8652 ct1!282) lambda!457215))))

(declare-fun bs!1919973 () Bool)

(assert (= bs!1919973 d!2281869))

(declare-fun m!8017480 () Bool)

(assert (=> bs!1919973 m!8017480))

(assert (=> start!718542 d!2281869))

(declare-fun bs!1919974 () Bool)

(declare-fun d!2281871 () Bool)

(assert (= bs!1919974 (and d!2281871 b!7358626)))

(declare-fun lambda!457216 () Int)

(assert (=> bs!1919974 (= lambda!457216 lambda!457208)))

(declare-fun bs!1919975 () Bool)

(assert (= bs!1919975 (and d!2281871 d!2281867)))

(assert (=> bs!1919975 (= lambda!457216 lambda!457214)))

(declare-fun bs!1919976 () Bool)

(assert (= bs!1919976 (and d!2281871 d!2281869)))

(assert (=> bs!1919976 (= lambda!457216 lambda!457215)))

(assert (=> d!2281871 (= (inv!91371 ct2!378) (forall!18028 (exprs!8652 ct2!378) lambda!457216))))

(declare-fun bs!1919977 () Bool)

(assert (= bs!1919977 d!2281871))

(declare-fun m!8017482 () Bool)

(assert (=> bs!1919977 m!8017482))

(assert (=> start!718542 d!2281871))

(declare-fun c!1367240 () Bool)

(declare-fun call!674048 () List!71708)

(declare-fun bm!674038 () Bool)

(declare-fun c!1367238 () Bool)

(declare-fun call!674043 () (Set Context!16304))

(declare-fun c!1367239 () Bool)

(assert (=> bm!674038 (= call!674043 (derivationStepZipperDown!3038 (ite c!1367238 (regOne!38937 (regOne!38937 r1!2370)) (ite c!1367239 (regTwo!38936 (regOne!38937 r1!2370)) (ite c!1367240 (regOne!38936 (regOne!38937 r1!2370)) (reg!19541 (regOne!38937 r1!2370))))) (ite (or c!1367238 c!1367239) ct1!282 (Context!16305 call!674048)) c!10362))))

(declare-fun bm!674039 () Bool)

(declare-fun call!674044 () List!71708)

(assert (=> bm!674039 (= call!674048 call!674044)))

(declare-fun bm!674040 () Bool)

(declare-fun call!674046 () (Set Context!16304))

(declare-fun call!674045 () (Set Context!16304))

(assert (=> bm!674040 (= call!674046 call!674045)))

(declare-fun b!7358753 () Bool)

(declare-fun e!4405942 () Bool)

(assert (=> b!7358753 (= c!1367239 e!4405942)))

(declare-fun res!2971083 () Bool)

(assert (=> b!7358753 (=> (not res!2971083) (not e!4405942))))

(assert (=> b!7358753 (= res!2971083 (is-Concat!28057 (regOne!38937 r1!2370)))))

(declare-fun e!4405944 () (Set Context!16304))

(declare-fun e!4405943 () (Set Context!16304))

(assert (=> b!7358753 (= e!4405944 e!4405943)))

(declare-fun b!7358754 () Bool)

(declare-fun call!674047 () (Set Context!16304))

(assert (=> b!7358754 (= e!4405943 (set.union call!674047 call!674045))))

(declare-fun b!7358755 () Bool)

(declare-fun e!4405945 () (Set Context!16304))

(assert (=> b!7358755 (= e!4405943 e!4405945)))

(assert (=> b!7358755 (= c!1367240 (is-Concat!28057 (regOne!38937 r1!2370)))))

(declare-fun b!7358756 () Bool)

(declare-fun e!4405940 () (Set Context!16304))

(assert (=> b!7358756 (= e!4405940 (set.insert ct1!282 (as set.empty (Set Context!16304))))))

(declare-fun b!7358757 () Bool)

(assert (=> b!7358757 (= e!4405942 (nullable!8299 (regOne!38936 (regOne!38937 r1!2370))))))

(declare-fun bm!674041 () Bool)

(assert (=> bm!674041 (= call!674047 (derivationStepZipperDown!3038 (ite c!1367238 (regTwo!38937 (regOne!38937 r1!2370)) (regOne!38936 (regOne!38937 r1!2370))) (ite c!1367238 ct1!282 (Context!16305 call!674044)) c!10362))))

(declare-fun b!7358752 () Bool)

(declare-fun e!4405941 () (Set Context!16304))

(assert (=> b!7358752 (= e!4405941 call!674046)))

(declare-fun d!2281873 () Bool)

(declare-fun c!1367242 () Bool)

(assert (=> d!2281873 (= c!1367242 (and (is-ElementMatch!19212 (regOne!38937 r1!2370)) (= (c!1367202 (regOne!38937 r1!2370)) c!10362)))))

(assert (=> d!2281873 (= (derivationStepZipperDown!3038 (regOne!38937 r1!2370) ct1!282 c!10362) e!4405940)))

(declare-fun b!7358758 () Bool)

(assert (=> b!7358758 (= e!4405945 call!674046)))

(declare-fun bm!674042 () Bool)

(assert (=> bm!674042 (= call!674044 ($colon$colon!3205 (exprs!8652 ct1!282) (ite (or c!1367239 c!1367240) (regTwo!38936 (regOne!38937 r1!2370)) (regOne!38937 r1!2370))))))

(declare-fun b!7358759 () Bool)

(assert (=> b!7358759 (= e!4405941 (as set.empty (Set Context!16304)))))

(declare-fun b!7358760 () Bool)

(declare-fun c!1367241 () Bool)

(assert (=> b!7358760 (= c!1367241 (is-Star!19212 (regOne!38937 r1!2370)))))

(assert (=> b!7358760 (= e!4405945 e!4405941)))

(declare-fun b!7358761 () Bool)

(assert (=> b!7358761 (= e!4405940 e!4405944)))

(assert (=> b!7358761 (= c!1367238 (is-Union!19212 (regOne!38937 r1!2370)))))

(declare-fun bm!674043 () Bool)

(assert (=> bm!674043 (= call!674045 call!674043)))

(declare-fun b!7358762 () Bool)

(assert (=> b!7358762 (= e!4405944 (set.union call!674043 call!674047))))

(assert (= (and d!2281873 c!1367242) b!7358756))

(assert (= (and d!2281873 (not c!1367242)) b!7358761))

(assert (= (and b!7358761 c!1367238) b!7358762))

(assert (= (and b!7358761 (not c!1367238)) b!7358753))

(assert (= (and b!7358753 res!2971083) b!7358757))

(assert (= (and b!7358753 c!1367239) b!7358754))

(assert (= (and b!7358753 (not c!1367239)) b!7358755))

(assert (= (and b!7358755 c!1367240) b!7358758))

(assert (= (and b!7358755 (not c!1367240)) b!7358760))

(assert (= (and b!7358760 c!1367241) b!7358752))

(assert (= (and b!7358760 (not c!1367241)) b!7358759))

(assert (= (or b!7358758 b!7358752) bm!674039))

(assert (= (or b!7358758 b!7358752) bm!674040))

(assert (= (or b!7358754 bm!674040) bm!674043))

(assert (= (or b!7358754 bm!674039) bm!674042))

(assert (= (or b!7358762 b!7358754) bm!674041))

(assert (= (or b!7358762 bm!674043) bm!674038))

(declare-fun m!8017484 () Bool)

(assert (=> bm!674038 m!8017484))

(declare-fun m!8017486 () Bool)

(assert (=> bm!674042 m!8017486))

(declare-fun m!8017488 () Bool)

(assert (=> b!7358757 m!8017488))

(declare-fun m!8017490 () Bool)

(assert (=> b!7358756 m!8017490))

(declare-fun m!8017492 () Bool)

(assert (=> bm!674041 m!8017492))

(assert (=> b!7358621 d!2281873))

(declare-fun call!674049 () (Set Context!16304))

(declare-fun c!1367243 () Bool)

(declare-fun c!1367244 () Bool)

(declare-fun bm!674044 () Bool)

(declare-fun c!1367245 () Bool)

(declare-fun call!674054 () List!71708)

(assert (=> bm!674044 (= call!674049 (derivationStepZipperDown!3038 (ite c!1367243 (regOne!38937 (regTwo!38937 r1!2370)) (ite c!1367244 (regTwo!38936 (regTwo!38937 r1!2370)) (ite c!1367245 (regOne!38936 (regTwo!38937 r1!2370)) (reg!19541 (regTwo!38937 r1!2370))))) (ite (or c!1367243 c!1367244) ct1!282 (Context!16305 call!674054)) c!10362))))

(declare-fun bm!674045 () Bool)

(declare-fun call!674050 () List!71708)

(assert (=> bm!674045 (= call!674054 call!674050)))

(declare-fun bm!674046 () Bool)

(declare-fun call!674052 () (Set Context!16304))

(declare-fun call!674051 () (Set Context!16304))

(assert (=> bm!674046 (= call!674052 call!674051)))

(declare-fun b!7358764 () Bool)

(declare-fun e!4405948 () Bool)

(assert (=> b!7358764 (= c!1367244 e!4405948)))

(declare-fun res!2971084 () Bool)

(assert (=> b!7358764 (=> (not res!2971084) (not e!4405948))))

(assert (=> b!7358764 (= res!2971084 (is-Concat!28057 (regTwo!38937 r1!2370)))))

(declare-fun e!4405950 () (Set Context!16304))

(declare-fun e!4405949 () (Set Context!16304))

(assert (=> b!7358764 (= e!4405950 e!4405949)))

(declare-fun b!7358765 () Bool)

(declare-fun call!674053 () (Set Context!16304))

(assert (=> b!7358765 (= e!4405949 (set.union call!674053 call!674051))))

(declare-fun b!7358766 () Bool)

(declare-fun e!4405951 () (Set Context!16304))

(assert (=> b!7358766 (= e!4405949 e!4405951)))

(assert (=> b!7358766 (= c!1367245 (is-Concat!28057 (regTwo!38937 r1!2370)))))

(declare-fun b!7358767 () Bool)

(declare-fun e!4405946 () (Set Context!16304))

(assert (=> b!7358767 (= e!4405946 (set.insert ct1!282 (as set.empty (Set Context!16304))))))

(declare-fun b!7358768 () Bool)

(assert (=> b!7358768 (= e!4405948 (nullable!8299 (regOne!38936 (regTwo!38937 r1!2370))))))

(declare-fun bm!674047 () Bool)

(assert (=> bm!674047 (= call!674053 (derivationStepZipperDown!3038 (ite c!1367243 (regTwo!38937 (regTwo!38937 r1!2370)) (regOne!38936 (regTwo!38937 r1!2370))) (ite c!1367243 ct1!282 (Context!16305 call!674050)) c!10362))))

(declare-fun b!7358763 () Bool)

(declare-fun e!4405947 () (Set Context!16304))

(assert (=> b!7358763 (= e!4405947 call!674052)))

(declare-fun d!2281875 () Bool)

(declare-fun c!1367247 () Bool)

(assert (=> d!2281875 (= c!1367247 (and (is-ElementMatch!19212 (regTwo!38937 r1!2370)) (= (c!1367202 (regTwo!38937 r1!2370)) c!10362)))))

(assert (=> d!2281875 (= (derivationStepZipperDown!3038 (regTwo!38937 r1!2370) ct1!282 c!10362) e!4405946)))

(declare-fun b!7358769 () Bool)

(assert (=> b!7358769 (= e!4405951 call!674052)))

(declare-fun bm!674048 () Bool)

(assert (=> bm!674048 (= call!674050 ($colon$colon!3205 (exprs!8652 ct1!282) (ite (or c!1367244 c!1367245) (regTwo!38936 (regTwo!38937 r1!2370)) (regTwo!38937 r1!2370))))))

(declare-fun b!7358770 () Bool)

(assert (=> b!7358770 (= e!4405947 (as set.empty (Set Context!16304)))))

(declare-fun b!7358771 () Bool)

(declare-fun c!1367246 () Bool)

(assert (=> b!7358771 (= c!1367246 (is-Star!19212 (regTwo!38937 r1!2370)))))

(assert (=> b!7358771 (= e!4405951 e!4405947)))

(declare-fun b!7358772 () Bool)

(assert (=> b!7358772 (= e!4405946 e!4405950)))

(assert (=> b!7358772 (= c!1367243 (is-Union!19212 (regTwo!38937 r1!2370)))))

(declare-fun bm!674049 () Bool)

(assert (=> bm!674049 (= call!674051 call!674049)))

(declare-fun b!7358773 () Bool)

(assert (=> b!7358773 (= e!4405950 (set.union call!674049 call!674053))))

(assert (= (and d!2281875 c!1367247) b!7358767))

(assert (= (and d!2281875 (not c!1367247)) b!7358772))

(assert (= (and b!7358772 c!1367243) b!7358773))

(assert (= (and b!7358772 (not c!1367243)) b!7358764))

(assert (= (and b!7358764 res!2971084) b!7358768))

(assert (= (and b!7358764 c!1367244) b!7358765))

(assert (= (and b!7358764 (not c!1367244)) b!7358766))

(assert (= (and b!7358766 c!1367245) b!7358769))

(assert (= (and b!7358766 (not c!1367245)) b!7358771))

(assert (= (and b!7358771 c!1367246) b!7358763))

(assert (= (and b!7358771 (not c!1367246)) b!7358770))

(assert (= (or b!7358769 b!7358763) bm!674045))

(assert (= (or b!7358769 b!7358763) bm!674046))

(assert (= (or b!7358765 bm!674046) bm!674049))

(assert (= (or b!7358765 bm!674045) bm!674048))

(assert (= (or b!7358773 b!7358765) bm!674047))

(assert (= (or b!7358773 bm!674049) bm!674044))

(declare-fun m!8017494 () Bool)

(assert (=> bm!674044 m!8017494))

(declare-fun m!8017496 () Bool)

(assert (=> bm!674048 m!8017496))

(declare-fun m!8017498 () Bool)

(assert (=> b!7358768 m!8017498))

(assert (=> b!7358767 m!8017490))

(declare-fun m!8017500 () Bool)

(assert (=> bm!674047 m!8017500))

(assert (=> b!7358621 d!2281875))

(declare-fun c!1367249 () Bool)

(declare-fun call!674055 () (Set Context!16304))

(declare-fun bm!674050 () Bool)

(declare-fun c!1367250 () Bool)

(declare-fun call!674060 () List!71708)

(declare-fun c!1367248 () Bool)

(assert (=> bm!674050 (= call!674055 (derivationStepZipperDown!3038 (ite c!1367248 (regOne!38937 r1!2370) (ite c!1367249 (regTwo!38936 r1!2370) (ite c!1367250 (regOne!38936 r1!2370) (reg!19541 r1!2370)))) (ite (or c!1367248 c!1367249) ct1!282 (Context!16305 call!674060)) c!10362))))

(declare-fun bm!674051 () Bool)

(declare-fun call!674056 () List!71708)

(assert (=> bm!674051 (= call!674060 call!674056)))

(declare-fun bm!674052 () Bool)

(declare-fun call!674058 () (Set Context!16304))

(declare-fun call!674057 () (Set Context!16304))

(assert (=> bm!674052 (= call!674058 call!674057)))

(declare-fun b!7358775 () Bool)

(declare-fun e!4405954 () Bool)

(assert (=> b!7358775 (= c!1367249 e!4405954)))

(declare-fun res!2971085 () Bool)

(assert (=> b!7358775 (=> (not res!2971085) (not e!4405954))))

(assert (=> b!7358775 (= res!2971085 (is-Concat!28057 r1!2370))))

(declare-fun e!4405956 () (Set Context!16304))

(declare-fun e!4405955 () (Set Context!16304))

(assert (=> b!7358775 (= e!4405956 e!4405955)))

(declare-fun b!7358776 () Bool)

(declare-fun call!674059 () (Set Context!16304))

(assert (=> b!7358776 (= e!4405955 (set.union call!674059 call!674057))))

(declare-fun b!7358777 () Bool)

(declare-fun e!4405957 () (Set Context!16304))

(assert (=> b!7358777 (= e!4405955 e!4405957)))

(assert (=> b!7358777 (= c!1367250 (is-Concat!28057 r1!2370))))

(declare-fun b!7358778 () Bool)

(declare-fun e!4405952 () (Set Context!16304))

(assert (=> b!7358778 (= e!4405952 (set.insert ct1!282 (as set.empty (Set Context!16304))))))

(declare-fun b!7358779 () Bool)

(assert (=> b!7358779 (= e!4405954 (nullable!8299 (regOne!38936 r1!2370)))))

(declare-fun bm!674053 () Bool)

(assert (=> bm!674053 (= call!674059 (derivationStepZipperDown!3038 (ite c!1367248 (regTwo!38937 r1!2370) (regOne!38936 r1!2370)) (ite c!1367248 ct1!282 (Context!16305 call!674056)) c!10362))))

(declare-fun b!7358774 () Bool)

(declare-fun e!4405953 () (Set Context!16304))

(assert (=> b!7358774 (= e!4405953 call!674058)))

(declare-fun d!2281877 () Bool)

(declare-fun c!1367252 () Bool)

(assert (=> d!2281877 (= c!1367252 (and (is-ElementMatch!19212 r1!2370) (= (c!1367202 r1!2370) c!10362)))))

(assert (=> d!2281877 (= (derivationStepZipperDown!3038 r1!2370 ct1!282 c!10362) e!4405952)))

(declare-fun b!7358780 () Bool)

(assert (=> b!7358780 (= e!4405957 call!674058)))

(declare-fun bm!674054 () Bool)

(assert (=> bm!674054 (= call!674056 ($colon$colon!3205 (exprs!8652 ct1!282) (ite (or c!1367249 c!1367250) (regTwo!38936 r1!2370) r1!2370)))))

(declare-fun b!7358781 () Bool)

(assert (=> b!7358781 (= e!4405953 (as set.empty (Set Context!16304)))))

(declare-fun b!7358782 () Bool)

(declare-fun c!1367251 () Bool)

(assert (=> b!7358782 (= c!1367251 (is-Star!19212 r1!2370))))

(assert (=> b!7358782 (= e!4405957 e!4405953)))

(declare-fun b!7358783 () Bool)

(assert (=> b!7358783 (= e!4405952 e!4405956)))

(assert (=> b!7358783 (= c!1367248 (is-Union!19212 r1!2370))))

(declare-fun bm!674055 () Bool)

(assert (=> bm!674055 (= call!674057 call!674055)))

(declare-fun b!7358784 () Bool)

(assert (=> b!7358784 (= e!4405956 (set.union call!674055 call!674059))))

(assert (= (and d!2281877 c!1367252) b!7358778))

(assert (= (and d!2281877 (not c!1367252)) b!7358783))

(assert (= (and b!7358783 c!1367248) b!7358784))

(assert (= (and b!7358783 (not c!1367248)) b!7358775))

(assert (= (and b!7358775 res!2971085) b!7358779))

(assert (= (and b!7358775 c!1367249) b!7358776))

(assert (= (and b!7358775 (not c!1367249)) b!7358777))

(assert (= (and b!7358777 c!1367250) b!7358780))

(assert (= (and b!7358777 (not c!1367250)) b!7358782))

(assert (= (and b!7358782 c!1367251) b!7358774))

(assert (= (and b!7358782 (not c!1367251)) b!7358781))

(assert (= (or b!7358780 b!7358774) bm!674051))

(assert (= (or b!7358780 b!7358774) bm!674052))

(assert (= (or b!7358776 bm!674052) bm!674055))

(assert (= (or b!7358776 bm!674051) bm!674054))

(assert (= (or b!7358784 b!7358776) bm!674053))

(assert (= (or b!7358784 bm!674055) bm!674050))

(declare-fun m!8017502 () Bool)

(assert (=> bm!674050 m!8017502))

(declare-fun m!8017504 () Bool)

(assert (=> bm!674054 m!8017504))

(assert (=> b!7358779 m!8017446))

(assert (=> b!7358778 m!8017490))

(declare-fun m!8017506 () Bool)

(assert (=> bm!674053 m!8017506))

(assert (=> b!7358624 d!2281877))

(declare-fun b!7358798 () Bool)

(declare-fun e!4405960 () Bool)

(declare-fun tp!2090714 () Bool)

(declare-fun tp!2090713 () Bool)

(assert (=> b!7358798 (= e!4405960 (and tp!2090714 tp!2090713))))

(declare-fun b!7358797 () Bool)

(declare-fun tp!2090711 () Bool)

(assert (=> b!7358797 (= e!4405960 tp!2090711)))

(declare-fun b!7358795 () Bool)

(assert (=> b!7358795 (= e!4405960 tp_is_empty!48669)))

(assert (=> b!7358625 (= tp!2090673 e!4405960)))

(declare-fun b!7358796 () Bool)

(declare-fun tp!2090710 () Bool)

(declare-fun tp!2090712 () Bool)

(assert (=> b!7358796 (= e!4405960 (and tp!2090710 tp!2090712))))

(assert (= (and b!7358625 (is-ElementMatch!19212 (reg!19541 r1!2370))) b!7358795))

(assert (= (and b!7358625 (is-Concat!28057 (reg!19541 r1!2370))) b!7358796))

(assert (= (and b!7358625 (is-Star!19212 (reg!19541 r1!2370))) b!7358797))

(assert (= (and b!7358625 (is-Union!19212 (reg!19541 r1!2370))) b!7358798))

(declare-fun b!7358814 () Bool)

(declare-fun e!4405969 () Bool)

(declare-fun tp!2090719 () Bool)

(declare-fun tp!2090720 () Bool)

(assert (=> b!7358814 (= e!4405969 (and tp!2090719 tp!2090720))))

(assert (=> b!7358620 (= tp!2090672 e!4405969)))

(assert (= (and b!7358620 (is-Cons!71584 (exprs!8652 ct2!378))) b!7358814))

(declare-fun b!7358818 () Bool)

(declare-fun e!4405970 () Bool)

(declare-fun tp!2090725 () Bool)

(declare-fun tp!2090724 () Bool)

(assert (=> b!7358818 (= e!4405970 (and tp!2090725 tp!2090724))))

(declare-fun b!7358817 () Bool)

(declare-fun tp!2090722 () Bool)

(assert (=> b!7358817 (= e!4405970 tp!2090722)))

(declare-fun b!7358815 () Bool)

(assert (=> b!7358815 (= e!4405970 tp_is_empty!48669)))

(assert (=> b!7358622 (= tp!2090674 e!4405970)))

(declare-fun b!7358816 () Bool)

(declare-fun tp!2090721 () Bool)

(declare-fun tp!2090723 () Bool)

(assert (=> b!7358816 (= e!4405970 (and tp!2090721 tp!2090723))))

(assert (= (and b!7358622 (is-ElementMatch!19212 (regOne!38936 r1!2370))) b!7358815))

(assert (= (and b!7358622 (is-Concat!28057 (regOne!38936 r1!2370))) b!7358816))

(assert (= (and b!7358622 (is-Star!19212 (regOne!38936 r1!2370))) b!7358817))

(assert (= (and b!7358622 (is-Union!19212 (regOne!38936 r1!2370))) b!7358818))

(declare-fun b!7358822 () Bool)

(declare-fun e!4405971 () Bool)

(declare-fun tp!2090730 () Bool)

(declare-fun tp!2090729 () Bool)

(assert (=> b!7358822 (= e!4405971 (and tp!2090730 tp!2090729))))

(declare-fun b!7358821 () Bool)

(declare-fun tp!2090727 () Bool)

(assert (=> b!7358821 (= e!4405971 tp!2090727)))

(declare-fun b!7358819 () Bool)

(assert (=> b!7358819 (= e!4405971 tp_is_empty!48669)))

(assert (=> b!7358622 (= tp!2090668 e!4405971)))

(declare-fun b!7358820 () Bool)

(declare-fun tp!2090726 () Bool)

(declare-fun tp!2090728 () Bool)

(assert (=> b!7358820 (= e!4405971 (and tp!2090726 tp!2090728))))

(assert (= (and b!7358622 (is-ElementMatch!19212 (regTwo!38936 r1!2370))) b!7358819))

(assert (= (and b!7358622 (is-Concat!28057 (regTwo!38936 r1!2370))) b!7358820))

(assert (= (and b!7358622 (is-Star!19212 (regTwo!38936 r1!2370))) b!7358821))

(assert (= (and b!7358622 (is-Union!19212 (regTwo!38936 r1!2370))) b!7358822))

(declare-fun b!7358823 () Bool)

(declare-fun e!4405972 () Bool)

(declare-fun tp!2090731 () Bool)

(declare-fun tp!2090732 () Bool)

(assert (=> b!7358823 (= e!4405972 (and tp!2090731 tp!2090732))))

(assert (=> b!7358623 (= tp!2090675 e!4405972)))

(assert (= (and b!7358623 (is-Cons!71584 (exprs!8652 ct1!282))) b!7358823))

(declare-fun b!7358827 () Bool)

(declare-fun e!4405973 () Bool)

(declare-fun tp!2090737 () Bool)

(declare-fun tp!2090736 () Bool)

(assert (=> b!7358827 (= e!4405973 (and tp!2090737 tp!2090736))))

(declare-fun b!7358826 () Bool)

(declare-fun tp!2090734 () Bool)

(assert (=> b!7358826 (= e!4405973 tp!2090734)))

(declare-fun b!7358824 () Bool)

(assert (=> b!7358824 (= e!4405973 tp_is_empty!48669)))

(assert (=> b!7358618 (= tp!2090669 e!4405973)))

(declare-fun b!7358825 () Bool)

(declare-fun tp!2090733 () Bool)

(declare-fun tp!2090735 () Bool)

(assert (=> b!7358825 (= e!4405973 (and tp!2090733 tp!2090735))))

(assert (= (and b!7358618 (is-ElementMatch!19212 (regOne!38937 r1!2370))) b!7358824))

(assert (= (and b!7358618 (is-Concat!28057 (regOne!38937 r1!2370))) b!7358825))

(assert (= (and b!7358618 (is-Star!19212 (regOne!38937 r1!2370))) b!7358826))

(assert (= (and b!7358618 (is-Union!19212 (regOne!38937 r1!2370))) b!7358827))

(declare-fun b!7358831 () Bool)

(declare-fun e!4405974 () Bool)

(declare-fun tp!2090742 () Bool)

(declare-fun tp!2090741 () Bool)

(assert (=> b!7358831 (= e!4405974 (and tp!2090742 tp!2090741))))

(declare-fun b!7358830 () Bool)

(declare-fun tp!2090739 () Bool)

(assert (=> b!7358830 (= e!4405974 tp!2090739)))

(declare-fun b!7358828 () Bool)

(assert (=> b!7358828 (= e!4405974 tp_is_empty!48669)))

(assert (=> b!7358618 (= tp!2090670 e!4405974)))

(declare-fun b!7358829 () Bool)

(declare-fun tp!2090738 () Bool)

(declare-fun tp!2090740 () Bool)

(assert (=> b!7358829 (= e!4405974 (and tp!2090738 tp!2090740))))

(assert (= (and b!7358618 (is-ElementMatch!19212 (regTwo!38937 r1!2370))) b!7358828))

(assert (= (and b!7358618 (is-Concat!28057 (regTwo!38937 r1!2370))) b!7358829))

(assert (= (and b!7358618 (is-Star!19212 (regTwo!38937 r1!2370))) b!7358830))

(assert (= (and b!7358618 (is-Union!19212 (regTwo!38937 r1!2370))) b!7358831))

(declare-fun b!7358832 () Bool)

(declare-fun e!4405975 () Bool)

(declare-fun tp!2090743 () Bool)

(declare-fun tp!2090744 () Bool)

(assert (=> b!7358832 (= e!4405975 (and tp!2090743 tp!2090744))))

(assert (=> b!7358619 (= tp!2090671 e!4405975)))

(assert (= (and b!7358619 (is-Cons!71584 (exprs!8652 cWitness!61))) b!7358832))

(push 1)

(assert (not bm!674014))

(assert (not bm!674044))

(assert (not b!7358779))

(assert (not b!7358818))

(assert (not d!2281871))

(assert (not d!2281867))

(assert (not b!7358830))

(assert (not bm!674037))

(assert (not b!7358814))

(assert (not b!7358832))

(assert (not bm!674042))

(assert (not b!7358825))

(assert (not b!7358749))

(assert (not b!7358826))

(assert (not bm!674054))

(assert (not b!7358685))

(assert (not bm!674041))

(assert (not d!2281869))

(assert (not b!7358700))

(assert (not b!7358820))

(assert (not b!7358822))

(assert (not b!7358821))

(assert (not b!7358768))

(assert (not bm!674047))

(assert (not b!7358796))

(assert (not bm!674048))

(assert (not b!7358701))

(assert (not b!7358816))

(assert (not d!2281861))

(assert (not bm!674038))

(assert (not b!7358823))

(assert (not b!7358797))

(assert (not bm!674035))

(assert (not b!7358827))

(assert (not b!7358798))

(assert (not b!7358757))

(assert (not b!7358829))

(assert (not bm!674053))

(assert (not b!7358831))

(assert tp_is_empty!48669)

(assert (not d!2281863))

(assert (not b!7358817))

(assert (not bm!674011))

(assert (not bm!674050))

(assert (not bm!674015))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

