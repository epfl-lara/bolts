; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720126 () Bool)

(assert start!720126)

(declare-fun b!7381958 () Bool)

(declare-fun e!4418728 () Bool)

(declare-fun tp!2099793 () Bool)

(declare-fun tp!2099792 () Bool)

(assert (=> b!7381958 (= e!4418728 (and tp!2099793 tp!2099792))))

(declare-fun b!7381959 () Bool)

(declare-fun e!4418721 () Bool)

(declare-fun e!4418724 () Bool)

(assert (=> b!7381959 (= e!4418721 e!4418724)))

(declare-fun res!2977323 () Bool)

(assert (=> b!7381959 (=> (not res!2977323) (not e!4418724))))

(declare-datatypes ((C!38934 0))(
  ( (C!38935 (val!29827 Int)) )
))
(declare-datatypes ((Regex!19330 0))(
  ( (ElementMatch!19330 (c!1372106 C!38934)) (Concat!28175 (regOne!39172 Regex!19330) (regTwo!39172 Regex!19330)) (EmptyExpr!19330) (Star!19330 (reg!19659 Regex!19330)) (EmptyLang!19330) (Union!19330 (regOne!39173 Regex!19330) (regTwo!39173 Regex!19330)) )
))
(declare-fun r1!2370 () Regex!19330)

(declare-datatypes ((List!71826 0))(
  ( (Nil!71702) (Cons!71702 (h!78150 Regex!19330) (t!386321 List!71826)) )
))
(declare-datatypes ((Context!16540 0))(
  ( (Context!16541 (exprs!8770 List!71826)) )
))
(declare-fun lt!2617090 () (Set Context!16540))

(declare-fun c!10362 () C!38934)

(declare-fun lt!2617091 () Context!16540)

(declare-fun derivationStepZipperDown!3156 (Regex!19330 Context!16540 C!38934) (Set Context!16540))

(assert (=> b!7381959 (= res!2977323 (= lt!2617090 (derivationStepZipperDown!3156 (reg!19659 r1!2370) lt!2617091 c!10362)))))

(declare-fun lt!2617095 () List!71826)

(assert (=> b!7381959 (= lt!2617091 (Context!16541 lt!2617095))))

(declare-fun ct1!282 () Context!16540)

(declare-fun lt!2617096 () Regex!19330)

(declare-fun $colon$colon!3308 (List!71826 Regex!19330) List!71826)

(assert (=> b!7381959 (= lt!2617095 ($colon$colon!3308 (exprs!8770 ct1!282) lt!2617096))))

(declare-fun b!7381960 () Bool)

(declare-fun e!4418719 () Bool)

(declare-fun tp!2099786 () Bool)

(assert (=> b!7381960 (= e!4418719 tp!2099786)))

(declare-fun b!7381961 () Bool)

(declare-fun e!4418725 () Bool)

(declare-fun tp!2099791 () Bool)

(assert (=> b!7381961 (= e!4418725 tp!2099791)))

(declare-fun b!7381962 () Bool)

(declare-fun res!2977319 () Bool)

(declare-fun e!4418720 () Bool)

(assert (=> b!7381962 (=> (not res!2977319) (not e!4418720))))

(declare-fun e!4418722 () Bool)

(assert (=> b!7381962 (= res!2977319 e!4418722)))

(declare-fun res!2977325 () Bool)

(assert (=> b!7381962 (=> res!2977325 e!4418722)))

(assert (=> b!7381962 (= res!2977325 (not (is-Concat!28175 r1!2370)))))

(declare-fun b!7381963 () Bool)

(declare-fun tp_is_empty!48905 () Bool)

(assert (=> b!7381963 (= e!4418728 tp_is_empty!48905)))

(declare-fun b!7381964 () Bool)

(declare-fun res!2977322 () Bool)

(assert (=> b!7381964 (=> (not res!2977322) (not e!4418720))))

(assert (=> b!7381964 (= res!2977322 (and (not (is-Concat!28175 r1!2370)) (is-Star!19330 r1!2370)))))

(declare-fun b!7381965 () Bool)

(declare-fun tp!2099789 () Bool)

(assert (=> b!7381965 (= e!4418728 tp!2099789)))

(declare-fun b!7381967 () Bool)

(declare-fun tp!2099788 () Bool)

(declare-fun tp!2099787 () Bool)

(assert (=> b!7381967 (= e!4418728 (and tp!2099788 tp!2099787))))

(declare-fun b!7381968 () Bool)

(declare-fun e!4418726 () Bool)

(declare-fun e!4418723 () Bool)

(assert (=> b!7381968 (= e!4418726 e!4418723)))

(declare-fun res!2977324 () Bool)

(assert (=> b!7381968 (=> (not res!2977324) (not e!4418723))))

(declare-fun cWitness!61 () Context!16540)

(assert (=> b!7381968 (= res!2977324 (set.member cWitness!61 lt!2617090))))

(assert (=> b!7381968 (= lt!2617090 (derivationStepZipperDown!3156 r1!2370 ct1!282 c!10362))))

(declare-fun b!7381969 () Bool)

(declare-fun nullable!8404 (Regex!19330) Bool)

(assert (=> b!7381969 (= e!4418722 (not (nullable!8404 (regOne!39172 r1!2370))))))

(declare-fun b!7381970 () Bool)

(assert (=> b!7381970 (= e!4418720 e!4418721)))

(declare-fun res!2977326 () Bool)

(assert (=> b!7381970 (=> (not res!2977326) (not e!4418721))))

(declare-fun validRegex!9926 (Regex!19330) Bool)

(assert (=> b!7381970 (= res!2977326 (validRegex!9926 lt!2617096))))

(assert (=> b!7381970 (= lt!2617096 (Star!19330 (reg!19659 r1!2370)))))

(declare-fun b!7381971 () Bool)

(declare-fun e!4418727 () Bool)

(declare-fun tp!2099790 () Bool)

(assert (=> b!7381971 (= e!4418727 tp!2099790)))

(declare-fun b!7381972 () Bool)

(declare-fun lt!2617099 () Context!16540)

(declare-fun lt!2617098 () (Set Context!16540))

(assert (=> b!7381972 (= e!4418724 (not (set.member lt!2617099 lt!2617098)))))

(declare-fun lambda!458606 () Int)

(declare-fun ct2!378 () Context!16540)

(declare-datatypes ((Unit!165609 0))(
  ( (Unit!165610) )
))
(declare-fun lt!2617093 () Unit!165609)

(declare-fun lemmaConcatPreservesForall!2003 (List!71826 List!71826 Int) Unit!165609)

(assert (=> b!7381972 (= lt!2617093 (lemmaConcatPreservesForall!2003 (exprs!8770 cWitness!61) (exprs!8770 ct2!378) lambda!458606))))

(declare-fun ++!17146 (List!71826 List!71826) List!71826)

(assert (=> b!7381972 (set.member lt!2617099 (derivationStepZipperDown!3156 (reg!19659 r1!2370) (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) c!10362))))

(assert (=> b!7381972 (= lt!2617099 (Context!16541 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378))))))

(declare-fun lt!2617100 () Unit!165609)

(assert (=> b!7381972 (= lt!2617100 (lemmaConcatPreservesForall!2003 lt!2617095 (exprs!8770 ct2!378) lambda!458606))))

(declare-fun lt!2617092 () Unit!165609)

(assert (=> b!7381972 (= lt!2617092 (lemmaConcatPreservesForall!2003 (exprs!8770 cWitness!61) (exprs!8770 ct2!378) lambda!458606))))

(declare-fun lt!2617094 () Unit!165609)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!155 (Regex!19330 Context!16540 Context!16540 Context!16540 C!38934) Unit!165609)

(assert (=> b!7381972 (= lt!2617094 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!155 (reg!19659 r1!2370) lt!2617091 ct2!378 cWitness!61 c!10362))))

(declare-fun res!2977320 () Bool)

(assert (=> start!720126 (=> (not res!2977320) (not e!4418726))))

(assert (=> start!720126 (= res!2977320 (validRegex!9926 r1!2370))))

(assert (=> start!720126 e!4418726))

(assert (=> start!720126 tp_is_empty!48905))

(declare-fun inv!91666 (Context!16540) Bool)

(assert (=> start!720126 (and (inv!91666 cWitness!61) e!4418727)))

(assert (=> start!720126 (and (inv!91666 ct1!282) e!4418719)))

(assert (=> start!720126 e!4418728))

(assert (=> start!720126 (and (inv!91666 ct2!378) e!4418725)))

(declare-fun b!7381966 () Bool)

(assert (=> b!7381966 (= e!4418723 e!4418720)))

(declare-fun res!2977321 () Bool)

(assert (=> b!7381966 (=> (not res!2977321) (not e!4418720))))

(assert (=> b!7381966 (= res!2977321 (and (or (not (is-ElementMatch!19330 r1!2370)) (not (= c!10362 (c!1372106 r1!2370)))) (not (is-Union!19330 r1!2370))))))

(assert (=> b!7381966 (= lt!2617098 (derivationStepZipperDown!3156 r1!2370 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) c!10362))))

(declare-fun lt!2617097 () Unit!165609)

(assert (=> b!7381966 (= lt!2617097 (lemmaConcatPreservesForall!2003 (exprs!8770 ct1!282) (exprs!8770 ct2!378) lambda!458606))))

(assert (= (and start!720126 res!2977320) b!7381968))

(assert (= (and b!7381968 res!2977324) b!7381966))

(assert (= (and b!7381966 res!2977321) b!7381962))

(assert (= (and b!7381962 (not res!2977325)) b!7381969))

(assert (= (and b!7381962 res!2977319) b!7381964))

(assert (= (and b!7381964 res!2977322) b!7381970))

(assert (= (and b!7381970 res!2977326) b!7381959))

(assert (= (and b!7381959 res!2977323) b!7381972))

(assert (= start!720126 b!7381971))

(assert (= start!720126 b!7381960))

(assert (= (and start!720126 (is-ElementMatch!19330 r1!2370)) b!7381963))

(assert (= (and start!720126 (is-Concat!28175 r1!2370)) b!7381967))

(assert (= (and start!720126 (is-Star!19330 r1!2370)) b!7381965))

(assert (= (and start!720126 (is-Union!19330 r1!2370)) b!7381958))

(assert (= start!720126 b!7381961))

(declare-fun m!8031550 () Bool)

(assert (=> b!7381968 m!8031550))

(declare-fun m!8031552 () Bool)

(assert (=> b!7381968 m!8031552))

(declare-fun m!8031554 () Bool)

(assert (=> b!7381959 m!8031554))

(declare-fun m!8031556 () Bool)

(assert (=> b!7381959 m!8031556))

(declare-fun m!8031558 () Bool)

(assert (=> b!7381966 m!8031558))

(declare-fun m!8031560 () Bool)

(assert (=> b!7381966 m!8031560))

(declare-fun m!8031562 () Bool)

(assert (=> b!7381966 m!8031562))

(declare-fun m!8031564 () Bool)

(assert (=> b!7381969 m!8031564))

(declare-fun m!8031566 () Bool)

(assert (=> start!720126 m!8031566))

(declare-fun m!8031568 () Bool)

(assert (=> start!720126 m!8031568))

(declare-fun m!8031570 () Bool)

(assert (=> start!720126 m!8031570))

(declare-fun m!8031572 () Bool)

(assert (=> start!720126 m!8031572))

(declare-fun m!8031574 () Bool)

(assert (=> b!7381972 m!8031574))

(declare-fun m!8031576 () Bool)

(assert (=> b!7381972 m!8031576))

(declare-fun m!8031578 () Bool)

(assert (=> b!7381972 m!8031578))

(declare-fun m!8031580 () Bool)

(assert (=> b!7381972 m!8031580))

(declare-fun m!8031582 () Bool)

(assert (=> b!7381972 m!8031582))

(declare-fun m!8031584 () Bool)

(assert (=> b!7381972 m!8031584))

(declare-fun m!8031586 () Bool)

(assert (=> b!7381972 m!8031586))

(assert (=> b!7381972 m!8031584))

(declare-fun m!8031588 () Bool)

(assert (=> b!7381972 m!8031588))

(declare-fun m!8031590 () Bool)

(assert (=> b!7381970 m!8031590))

(push 1)

(assert (not b!7381969))

(assert (not b!7381968))

(assert (not b!7381958))

(assert (not b!7381966))

(assert (not b!7381971))

(assert (not b!7381960))

(assert (not b!7381961))

(assert (not b!7381959))

(assert (not b!7381972))

(assert tp_is_empty!48905)

(assert (not b!7381970))

(assert (not b!7381967))

(assert (not start!720126))

(assert (not b!7381965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2285744 () Bool)

(declare-fun res!2977362 () Bool)

(declare-fun e!4418778 () Bool)

(assert (=> d!2285744 (=> res!2977362 e!4418778)))

(assert (=> d!2285744 (= res!2977362 (is-ElementMatch!19330 lt!2617096))))

(assert (=> d!2285744 (= (validRegex!9926 lt!2617096) e!4418778)))

(declare-fun b!7382036 () Bool)

(declare-fun res!2977364 () Bool)

(declare-fun e!4418776 () Bool)

(assert (=> b!7382036 (=> res!2977364 e!4418776)))

(assert (=> b!7382036 (= res!2977364 (not (is-Concat!28175 lt!2617096)))))

(declare-fun e!4418775 () Bool)

(assert (=> b!7382036 (= e!4418775 e!4418776)))

(declare-fun b!7382037 () Bool)

(declare-fun e!4418773 () Bool)

(assert (=> b!7382037 (= e!4418776 e!4418773)))

(declare-fun res!2977361 () Bool)

(assert (=> b!7382037 (=> (not res!2977361) (not e!4418773))))

(declare-fun call!679286 () Bool)

(assert (=> b!7382037 (= res!2977361 call!679286)))

(declare-fun b!7382038 () Bool)

(declare-fun e!4418777 () Bool)

(declare-fun e!4418774 () Bool)

(assert (=> b!7382038 (= e!4418777 e!4418774)))

(declare-fun res!2977363 () Bool)

(assert (=> b!7382038 (= res!2977363 (not (nullable!8404 (reg!19659 lt!2617096))))))

(assert (=> b!7382038 (=> (not res!2977363) (not e!4418774))))

(declare-fun b!7382039 () Bool)

(declare-fun e!4418779 () Bool)

(assert (=> b!7382039 (= e!4418779 call!679286)))

(declare-fun bm!679279 () Bool)

(declare-fun c!1372113 () Bool)

(assert (=> bm!679279 (= call!679286 (validRegex!9926 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096))))))

(declare-fun b!7382040 () Bool)

(assert (=> b!7382040 (= e!4418778 e!4418777)))

(declare-fun c!1372112 () Bool)

(assert (=> b!7382040 (= c!1372112 (is-Star!19330 lt!2617096))))

(declare-fun b!7382041 () Bool)

(declare-fun call!679285 () Bool)

(assert (=> b!7382041 (= e!4418773 call!679285)))

(declare-fun b!7382042 () Bool)

(assert (=> b!7382042 (= e!4418777 e!4418775)))

(assert (=> b!7382042 (= c!1372113 (is-Union!19330 lt!2617096))))

(declare-fun bm!679280 () Bool)

(declare-fun call!679284 () Bool)

(assert (=> bm!679280 (= call!679285 call!679284)))

(declare-fun b!7382043 () Bool)

(assert (=> b!7382043 (= e!4418774 call!679284)))

(declare-fun bm!679281 () Bool)

(assert (=> bm!679281 (= call!679284 (validRegex!9926 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096)))))))

(declare-fun b!7382044 () Bool)

(declare-fun res!2977365 () Bool)

(assert (=> b!7382044 (=> (not res!2977365) (not e!4418779))))

(assert (=> b!7382044 (= res!2977365 call!679285)))

(assert (=> b!7382044 (= e!4418775 e!4418779)))

(assert (= (and d!2285744 (not res!2977362)) b!7382040))

(assert (= (and b!7382040 c!1372112) b!7382038))

(assert (= (and b!7382040 (not c!1372112)) b!7382042))

(assert (= (and b!7382038 res!2977363) b!7382043))

(assert (= (and b!7382042 c!1372113) b!7382044))

(assert (= (and b!7382042 (not c!1372113)) b!7382036))

(assert (= (and b!7382044 res!2977365) b!7382039))

(assert (= (and b!7382036 (not res!2977364)) b!7382037))

(assert (= (and b!7382037 res!2977361) b!7382041))

(assert (= (or b!7382044 b!7382041) bm!679280))

(assert (= (or b!7382039 b!7382037) bm!679279))

(assert (= (or b!7382043 bm!679280) bm!679281))

(declare-fun m!8031634 () Bool)

(assert (=> b!7382038 m!8031634))

(declare-fun m!8031636 () Bool)

(assert (=> bm!679279 m!8031636))

(declare-fun m!8031638 () Bool)

(assert (=> bm!679281 m!8031638))

(assert (=> b!7381970 d!2285744))

(declare-fun d!2285746 () Bool)

(declare-fun res!2977367 () Bool)

(declare-fun e!4418785 () Bool)

(assert (=> d!2285746 (=> res!2977367 e!4418785)))

(assert (=> d!2285746 (= res!2977367 (is-ElementMatch!19330 r1!2370))))

(assert (=> d!2285746 (= (validRegex!9926 r1!2370) e!4418785)))

(declare-fun b!7382045 () Bool)

(declare-fun res!2977369 () Bool)

(declare-fun e!4418783 () Bool)

(assert (=> b!7382045 (=> res!2977369 e!4418783)))

(assert (=> b!7382045 (= res!2977369 (not (is-Concat!28175 r1!2370)))))

(declare-fun e!4418782 () Bool)

(assert (=> b!7382045 (= e!4418782 e!4418783)))

(declare-fun b!7382046 () Bool)

(declare-fun e!4418780 () Bool)

(assert (=> b!7382046 (= e!4418783 e!4418780)))

(declare-fun res!2977366 () Bool)

(assert (=> b!7382046 (=> (not res!2977366) (not e!4418780))))

(declare-fun call!679289 () Bool)

(assert (=> b!7382046 (= res!2977366 call!679289)))

(declare-fun b!7382047 () Bool)

(declare-fun e!4418784 () Bool)

(declare-fun e!4418781 () Bool)

(assert (=> b!7382047 (= e!4418784 e!4418781)))

(declare-fun res!2977368 () Bool)

(assert (=> b!7382047 (= res!2977368 (not (nullable!8404 (reg!19659 r1!2370))))))

(assert (=> b!7382047 (=> (not res!2977368) (not e!4418781))))

(declare-fun b!7382048 () Bool)

(declare-fun e!4418786 () Bool)

(assert (=> b!7382048 (= e!4418786 call!679289)))

(declare-fun bm!679282 () Bool)

(declare-fun c!1372115 () Bool)

(assert (=> bm!679282 (= call!679289 (validRegex!9926 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(declare-fun b!7382049 () Bool)

(assert (=> b!7382049 (= e!4418785 e!4418784)))

(declare-fun c!1372114 () Bool)

(assert (=> b!7382049 (= c!1372114 (is-Star!19330 r1!2370))))

(declare-fun b!7382050 () Bool)

(declare-fun call!679288 () Bool)

(assert (=> b!7382050 (= e!4418780 call!679288)))

(declare-fun b!7382051 () Bool)

(assert (=> b!7382051 (= e!4418784 e!4418782)))

(assert (=> b!7382051 (= c!1372115 (is-Union!19330 r1!2370))))

(declare-fun bm!679283 () Bool)

(declare-fun call!679287 () Bool)

(assert (=> bm!679283 (= call!679288 call!679287)))

(declare-fun b!7382052 () Bool)

(assert (=> b!7382052 (= e!4418781 call!679287)))

(declare-fun bm!679284 () Bool)

(assert (=> bm!679284 (= call!679287 (validRegex!9926 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370)))))))

(declare-fun b!7382053 () Bool)

(declare-fun res!2977370 () Bool)

(assert (=> b!7382053 (=> (not res!2977370) (not e!4418786))))

(assert (=> b!7382053 (= res!2977370 call!679288)))

(assert (=> b!7382053 (= e!4418782 e!4418786)))

(assert (= (and d!2285746 (not res!2977367)) b!7382049))

(assert (= (and b!7382049 c!1372114) b!7382047))

(assert (= (and b!7382049 (not c!1372114)) b!7382051))

(assert (= (and b!7382047 res!2977368) b!7382052))

(assert (= (and b!7382051 c!1372115) b!7382053))

(assert (= (and b!7382051 (not c!1372115)) b!7382045))

(assert (= (and b!7382053 res!2977370) b!7382048))

(assert (= (and b!7382045 (not res!2977369)) b!7382046))

(assert (= (and b!7382046 res!2977366) b!7382050))

(assert (= (or b!7382053 b!7382050) bm!679283))

(assert (= (or b!7382048 b!7382046) bm!679282))

(assert (= (or b!7382052 bm!679283) bm!679284))

(declare-fun m!8031640 () Bool)

(assert (=> b!7382047 m!8031640))

(declare-fun m!8031642 () Bool)

(assert (=> bm!679282 m!8031642))

(declare-fun m!8031644 () Bool)

(assert (=> bm!679284 m!8031644))

(assert (=> start!720126 d!2285746))

(declare-fun bs!1921660 () Bool)

(declare-fun d!2285748 () Bool)

(assert (= bs!1921660 (and d!2285748 b!7381966)))

(declare-fun lambda!458618 () Int)

(assert (=> bs!1921660 (= lambda!458618 lambda!458606)))

(declare-fun forall!18116 (List!71826 Int) Bool)

(assert (=> d!2285748 (= (inv!91666 cWitness!61) (forall!18116 (exprs!8770 cWitness!61) lambda!458618))))

(declare-fun bs!1921661 () Bool)

(assert (= bs!1921661 d!2285748))

(declare-fun m!8031646 () Bool)

(assert (=> bs!1921661 m!8031646))

(assert (=> start!720126 d!2285748))

(declare-fun bs!1921662 () Bool)

(declare-fun d!2285750 () Bool)

(assert (= bs!1921662 (and d!2285750 b!7381966)))

(declare-fun lambda!458619 () Int)

(assert (=> bs!1921662 (= lambda!458619 lambda!458606)))

(declare-fun bs!1921663 () Bool)

(assert (= bs!1921663 (and d!2285750 d!2285748)))

(assert (=> bs!1921663 (= lambda!458619 lambda!458618)))

(assert (=> d!2285750 (= (inv!91666 ct1!282) (forall!18116 (exprs!8770 ct1!282) lambda!458619))))

(declare-fun bs!1921664 () Bool)

(assert (= bs!1921664 d!2285750))

(declare-fun m!8031648 () Bool)

(assert (=> bs!1921664 m!8031648))

(assert (=> start!720126 d!2285750))

(declare-fun bs!1921665 () Bool)

(declare-fun d!2285752 () Bool)

(assert (= bs!1921665 (and d!2285752 b!7381966)))

(declare-fun lambda!458620 () Int)

(assert (=> bs!1921665 (= lambda!458620 lambda!458606)))

(declare-fun bs!1921666 () Bool)

(assert (= bs!1921666 (and d!2285752 d!2285748)))

(assert (=> bs!1921666 (= lambda!458620 lambda!458618)))

(declare-fun bs!1921667 () Bool)

(assert (= bs!1921667 (and d!2285752 d!2285750)))

(assert (=> bs!1921667 (= lambda!458620 lambda!458619)))

(assert (=> d!2285752 (= (inv!91666 ct2!378) (forall!18116 (exprs!8770 ct2!378) lambda!458620))))

(declare-fun bs!1921668 () Bool)

(assert (= bs!1921668 d!2285752))

(declare-fun m!8031650 () Bool)

(assert (=> bs!1921668 m!8031650))

(assert (=> start!720126 d!2285752))

(declare-fun c!1372126 () Bool)

(declare-fun call!679303 () (Set Context!16540))

(declare-fun bm!679297 () Bool)

(declare-fun c!1372130 () Bool)

(declare-fun call!679307 () List!71826)

(declare-fun c!1372129 () Bool)

(assert (=> bm!679297 (= call!679303 (derivationStepZipperDown!3156 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))) (ite (or c!1372129 c!1372126) lt!2617091 (Context!16541 call!679307)) c!10362))))

(declare-fun bm!679298 () Bool)

(declare-fun call!679304 () List!71826)

(assert (=> bm!679298 (= call!679307 call!679304)))

(declare-fun b!7382080 () Bool)

(declare-fun e!4418806 () (Set Context!16540))

(assert (=> b!7382080 (= e!4418806 (set.insert lt!2617091 (as set.empty (Set Context!16540))))))

(declare-fun b!7382081 () Bool)

(declare-fun e!4418803 () Bool)

(assert (=> b!7382081 (= e!4418803 (nullable!8404 (regOne!39172 (reg!19659 r1!2370))))))

(declare-fun bm!679299 () Bool)

(assert (=> bm!679299 (= call!679304 ($colon$colon!3308 (exprs!8770 lt!2617091) (ite (or c!1372126 c!1372130) (regTwo!39172 (reg!19659 r1!2370)) (reg!19659 r1!2370))))))

(declare-fun bm!679300 () Bool)

(declare-fun call!679305 () (Set Context!16540))

(assert (=> bm!679300 (= call!679305 call!679303)))

(declare-fun b!7382082 () Bool)

(declare-fun e!4418805 () (Set Context!16540))

(declare-fun call!679306 () (Set Context!16540))

(assert (=> b!7382082 (= e!4418805 call!679306)))

(declare-fun b!7382084 () Bool)

(declare-fun e!4418804 () (Set Context!16540))

(assert (=> b!7382084 (= e!4418806 e!4418804)))

(assert (=> b!7382084 (= c!1372129 (is-Union!19330 (reg!19659 r1!2370)))))

(declare-fun b!7382085 () Bool)

(declare-fun e!4418801 () (Set Context!16540))

(declare-fun call!679302 () (Set Context!16540))

(assert (=> b!7382085 (= e!4418801 (set.union call!679302 call!679305))))

(declare-fun bm!679301 () Bool)

(assert (=> bm!679301 (= call!679302 (derivationStepZipperDown!3156 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))) (ite c!1372129 lt!2617091 (Context!16541 call!679304)) c!10362))))

(declare-fun b!7382086 () Bool)

(assert (=> b!7382086 (= e!4418804 (set.union call!679303 call!679302))))

(declare-fun b!7382087 () Bool)

(assert (=> b!7382087 (= c!1372126 e!4418803)))

(declare-fun res!2977375 () Bool)

(assert (=> b!7382087 (=> (not res!2977375) (not e!4418803))))

(assert (=> b!7382087 (= res!2977375 (is-Concat!28175 (reg!19659 r1!2370)))))

(assert (=> b!7382087 (= e!4418804 e!4418801)))

(declare-fun d!2285754 () Bool)

(declare-fun c!1372127 () Bool)

(assert (=> d!2285754 (= c!1372127 (and (is-ElementMatch!19330 (reg!19659 r1!2370)) (= (c!1372106 (reg!19659 r1!2370)) c!10362)))))

(assert (=> d!2285754 (= (derivationStepZipperDown!3156 (reg!19659 r1!2370) lt!2617091 c!10362) e!4418806)))

(declare-fun b!7382083 () Bool)

(declare-fun e!4418802 () (Set Context!16540))

(assert (=> b!7382083 (= e!4418802 call!679306)))

(declare-fun b!7382088 () Bool)

(assert (=> b!7382088 (= e!4418805 (as set.empty (Set Context!16540)))))

(declare-fun b!7382089 () Bool)

(declare-fun c!1372128 () Bool)

(assert (=> b!7382089 (= c!1372128 (is-Star!19330 (reg!19659 r1!2370)))))

(assert (=> b!7382089 (= e!4418802 e!4418805)))

(declare-fun b!7382090 () Bool)

(assert (=> b!7382090 (= e!4418801 e!4418802)))

(assert (=> b!7382090 (= c!1372130 (is-Concat!28175 (reg!19659 r1!2370)))))

(declare-fun bm!679302 () Bool)

(assert (=> bm!679302 (= call!679306 call!679305)))

(assert (= (and d!2285754 c!1372127) b!7382080))

(assert (= (and d!2285754 (not c!1372127)) b!7382084))

(assert (= (and b!7382084 c!1372129) b!7382086))

(assert (= (and b!7382084 (not c!1372129)) b!7382087))

(assert (= (and b!7382087 res!2977375) b!7382081))

(assert (= (and b!7382087 c!1372126) b!7382085))

(assert (= (and b!7382087 (not c!1372126)) b!7382090))

(assert (= (and b!7382090 c!1372130) b!7382083))

(assert (= (and b!7382090 (not c!1372130)) b!7382089))

(assert (= (and b!7382089 c!1372128) b!7382082))

(assert (= (and b!7382089 (not c!1372128)) b!7382088))

(assert (= (or b!7382083 b!7382082) bm!679298))

(assert (= (or b!7382083 b!7382082) bm!679302))

(assert (= (or b!7382085 bm!679302) bm!679300))

(assert (= (or b!7382085 bm!679298) bm!679299))

(assert (= (or b!7382086 b!7382085) bm!679301))

(assert (= (or b!7382086 bm!679300) bm!679297))

(declare-fun m!8031652 () Bool)

(assert (=> bm!679301 m!8031652))

(declare-fun m!8031654 () Bool)

(assert (=> bm!679299 m!8031654))

(declare-fun m!8031656 () Bool)

(assert (=> b!7382080 m!8031656))

(declare-fun m!8031658 () Bool)

(assert (=> bm!679297 m!8031658))

(declare-fun m!8031660 () Bool)

(assert (=> b!7382081 m!8031660))

(assert (=> b!7381959 d!2285754))

(declare-fun d!2285758 () Bool)

(assert (=> d!2285758 (= ($colon$colon!3308 (exprs!8770 ct1!282) lt!2617096) (Cons!71702 lt!2617096 (exprs!8770 ct1!282)))))

(assert (=> b!7381959 d!2285758))

(declare-fun d!2285760 () Bool)

(declare-fun nullableFct!3373 (Regex!19330) Bool)

(assert (=> d!2285760 (= (nullable!8404 (regOne!39172 r1!2370)) (nullableFct!3373 (regOne!39172 r1!2370)))))

(declare-fun bs!1921669 () Bool)

(assert (= bs!1921669 d!2285760))

(declare-fun m!8031662 () Bool)

(assert (=> bs!1921669 m!8031662))

(assert (=> b!7381969 d!2285760))

(declare-fun c!1372138 () Bool)

(declare-fun c!1372135 () Bool)

(declare-fun bm!679305 () Bool)

(declare-fun call!679317 () List!71826)

(declare-fun c!1372139 () Bool)

(declare-fun call!679313 () (Set Context!16540))

(assert (=> bm!679305 (= call!679313 (derivationStepZipperDown!3156 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370)))) (ite (or c!1372138 c!1372135) ct1!282 (Context!16541 call!679317)) c!10362))))

(declare-fun bm!679306 () Bool)

(declare-fun call!679314 () List!71826)

(assert (=> bm!679306 (= call!679317 call!679314)))

(declare-fun b!7382105 () Bool)

(declare-fun e!4418824 () (Set Context!16540))

(assert (=> b!7382105 (= e!4418824 (set.insert ct1!282 (as set.empty (Set Context!16540))))))

(declare-fun b!7382106 () Bool)

(declare-fun e!4418821 () Bool)

(assert (=> b!7382106 (= e!4418821 (nullable!8404 (regOne!39172 r1!2370)))))

(declare-fun bm!679307 () Bool)

(assert (=> bm!679307 (= call!679314 ($colon$colon!3308 (exprs!8770 ct1!282) (ite (or c!1372135 c!1372139) (regTwo!39172 r1!2370) r1!2370)))))

(declare-fun bm!679308 () Bool)

(declare-fun call!679315 () (Set Context!16540))

(assert (=> bm!679308 (= call!679315 call!679313)))

(declare-fun b!7382107 () Bool)

(declare-fun e!4418823 () (Set Context!16540))

(declare-fun call!679316 () (Set Context!16540))

(assert (=> b!7382107 (= e!4418823 call!679316)))

(declare-fun b!7382109 () Bool)

(declare-fun e!4418822 () (Set Context!16540))

(assert (=> b!7382109 (= e!4418824 e!4418822)))

(assert (=> b!7382109 (= c!1372138 (is-Union!19330 r1!2370))))

(declare-fun b!7382110 () Bool)

(declare-fun e!4418819 () (Set Context!16540))

(declare-fun call!679310 () (Set Context!16540))

(assert (=> b!7382110 (= e!4418819 (set.union call!679310 call!679315))))

(declare-fun bm!679309 () Bool)

(assert (=> bm!679309 (= call!679310 (derivationStepZipperDown!3156 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)) (ite c!1372138 ct1!282 (Context!16541 call!679314)) c!10362))))

(declare-fun b!7382111 () Bool)

(assert (=> b!7382111 (= e!4418822 (set.union call!679313 call!679310))))

(declare-fun b!7382112 () Bool)

(assert (=> b!7382112 (= c!1372135 e!4418821)))

(declare-fun res!2977384 () Bool)

(assert (=> b!7382112 (=> (not res!2977384) (not e!4418821))))

(assert (=> b!7382112 (= res!2977384 (is-Concat!28175 r1!2370))))

(assert (=> b!7382112 (= e!4418822 e!4418819)))

(declare-fun d!2285762 () Bool)

(declare-fun c!1372136 () Bool)

(assert (=> d!2285762 (= c!1372136 (and (is-ElementMatch!19330 r1!2370) (= (c!1372106 r1!2370) c!10362)))))

(assert (=> d!2285762 (= (derivationStepZipperDown!3156 r1!2370 ct1!282 c!10362) e!4418824)))

(declare-fun b!7382108 () Bool)

(declare-fun e!4418820 () (Set Context!16540))

(assert (=> b!7382108 (= e!4418820 call!679316)))

(declare-fun b!7382113 () Bool)

(assert (=> b!7382113 (= e!4418823 (as set.empty (Set Context!16540)))))

(declare-fun b!7382114 () Bool)

(declare-fun c!1372137 () Bool)

(assert (=> b!7382114 (= c!1372137 (is-Star!19330 r1!2370))))

(assert (=> b!7382114 (= e!4418820 e!4418823)))

(declare-fun b!7382115 () Bool)

(assert (=> b!7382115 (= e!4418819 e!4418820)))

(assert (=> b!7382115 (= c!1372139 (is-Concat!28175 r1!2370))))

(declare-fun bm!679310 () Bool)

(assert (=> bm!679310 (= call!679316 call!679315)))

(assert (= (and d!2285762 c!1372136) b!7382105))

(assert (= (and d!2285762 (not c!1372136)) b!7382109))

(assert (= (and b!7382109 c!1372138) b!7382111))

(assert (= (and b!7382109 (not c!1372138)) b!7382112))

(assert (= (and b!7382112 res!2977384) b!7382106))

(assert (= (and b!7382112 c!1372135) b!7382110))

(assert (= (and b!7382112 (not c!1372135)) b!7382115))

(assert (= (and b!7382115 c!1372139) b!7382108))

(assert (= (and b!7382115 (not c!1372139)) b!7382114))

(assert (= (and b!7382114 c!1372137) b!7382107))

(assert (= (and b!7382114 (not c!1372137)) b!7382113))

(assert (= (or b!7382108 b!7382107) bm!679306))

(assert (= (or b!7382108 b!7382107) bm!679310))

(assert (= (or b!7382110 bm!679310) bm!679308))

(assert (= (or b!7382110 bm!679306) bm!679307))

(assert (= (or b!7382111 b!7382110) bm!679309))

(assert (= (or b!7382111 bm!679308) bm!679305))

(declare-fun m!8031664 () Bool)

(assert (=> bm!679309 m!8031664))

(declare-fun m!8031666 () Bool)

(assert (=> bm!679307 m!8031666))

(declare-fun m!8031668 () Bool)

(assert (=> b!7382105 m!8031668))

(declare-fun m!8031670 () Bool)

(assert (=> bm!679305 m!8031670))

(assert (=> b!7382106 m!8031564))

(assert (=> b!7381968 d!2285762))

(declare-fun bs!1921670 () Bool)

(declare-fun d!2285764 () Bool)

(assert (= bs!1921670 (and d!2285764 b!7381966)))

(declare-fun lambda!458625 () Int)

(assert (=> bs!1921670 (= lambda!458625 lambda!458606)))

(declare-fun bs!1921671 () Bool)

(assert (= bs!1921671 (and d!2285764 d!2285748)))

(assert (=> bs!1921671 (= lambda!458625 lambda!458618)))

(declare-fun bs!1921672 () Bool)

(assert (= bs!1921672 (and d!2285764 d!2285750)))

(assert (=> bs!1921672 (= lambda!458625 lambda!458619)))

(declare-fun bs!1921673 () Bool)

(assert (= bs!1921673 (and d!2285764 d!2285752)))

(assert (=> bs!1921673 (= lambda!458625 lambda!458620)))

(assert (=> d!2285764 (set.member (Context!16541 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378))) (derivationStepZipperDown!3156 (reg!19659 r1!2370) (Context!16541 (++!17146 (exprs!8770 lt!2617091) (exprs!8770 ct2!378))) c!10362))))

(declare-fun lt!2617142 () Unit!165609)

(assert (=> d!2285764 (= lt!2617142 (lemmaConcatPreservesForall!2003 (exprs!8770 lt!2617091) (exprs!8770 ct2!378) lambda!458625))))

(declare-fun lt!2617141 () Unit!165609)

(assert (=> d!2285764 (= lt!2617141 (lemmaConcatPreservesForall!2003 (exprs!8770 cWitness!61) (exprs!8770 ct2!378) lambda!458625))))

(declare-fun lt!2617140 () Unit!165609)

(declare-fun choose!57350 (Regex!19330 Context!16540 Context!16540 Context!16540 C!38934) Unit!165609)

(assert (=> d!2285764 (= lt!2617140 (choose!57350 (reg!19659 r1!2370) lt!2617091 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2285764 (validRegex!9926 (reg!19659 r1!2370))))

(assert (=> d!2285764 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!155 (reg!19659 r1!2370) lt!2617091 ct2!378 cWitness!61 c!10362) lt!2617140)))

(declare-fun bs!1921674 () Bool)

(assert (= bs!1921674 d!2285764))

(declare-fun m!8031672 () Bool)

(assert (=> bs!1921674 m!8031672))

(declare-fun m!8031674 () Bool)

(assert (=> bs!1921674 m!8031674))

(declare-fun m!8031676 () Bool)

(assert (=> bs!1921674 m!8031676))

(assert (=> bs!1921674 m!8031578))

(declare-fun m!8031678 () Bool)

(assert (=> bs!1921674 m!8031678))

(declare-fun m!8031680 () Bool)

(assert (=> bs!1921674 m!8031680))

(declare-fun m!8031682 () Bool)

(assert (=> bs!1921674 m!8031682))

(declare-fun m!8031684 () Bool)

(assert (=> bs!1921674 m!8031684))

(assert (=> b!7381972 d!2285764))

(declare-fun d!2285766 () Bool)

(assert (=> d!2285766 (forall!18116 (++!17146 lt!2617095 (exprs!8770 ct2!378)) lambda!458606)))

(declare-fun lt!2617145 () Unit!165609)

(declare-fun choose!57351 (List!71826 List!71826 Int) Unit!165609)

(assert (=> d!2285766 (= lt!2617145 (choose!57351 lt!2617095 (exprs!8770 ct2!378) lambda!458606))))

(assert (=> d!2285766 (forall!18116 lt!2617095 lambda!458606)))

(assert (=> d!2285766 (= (lemmaConcatPreservesForall!2003 lt!2617095 (exprs!8770 ct2!378) lambda!458606) lt!2617145)))

(declare-fun bs!1921675 () Bool)

(assert (= bs!1921675 d!2285766))

(assert (=> bs!1921675 m!8031586))

(assert (=> bs!1921675 m!8031586))

(declare-fun m!8031692 () Bool)

(assert (=> bs!1921675 m!8031692))

(declare-fun m!8031694 () Bool)

(assert (=> bs!1921675 m!8031694))

(declare-fun m!8031696 () Bool)

(assert (=> bs!1921675 m!8031696))

(assert (=> b!7381972 d!2285766))

(declare-fun d!2285770 () Bool)

(assert (=> d!2285770 (forall!18116 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378)) lambda!458606)))

(declare-fun lt!2617146 () Unit!165609)

(assert (=> d!2285770 (= lt!2617146 (choose!57351 (exprs!8770 cWitness!61) (exprs!8770 ct2!378) lambda!458606))))

(assert (=> d!2285770 (forall!18116 (exprs!8770 cWitness!61) lambda!458606)))

(assert (=> d!2285770 (= (lemmaConcatPreservesForall!2003 (exprs!8770 cWitness!61) (exprs!8770 ct2!378) lambda!458606) lt!2617146)))

(declare-fun bs!1921676 () Bool)

(assert (= bs!1921676 d!2285770))

(assert (=> bs!1921676 m!8031578))

(assert (=> bs!1921676 m!8031578))

(declare-fun m!8031698 () Bool)

(assert (=> bs!1921676 m!8031698))

(declare-fun m!8031700 () Bool)

(assert (=> bs!1921676 m!8031700))

(declare-fun m!8031702 () Bool)

(assert (=> bs!1921676 m!8031702))

(assert (=> b!7381972 d!2285770))

(declare-fun b!7382135 () Bool)

(declare-fun res!2977394 () Bool)

(declare-fun e!4418837 () Bool)

(assert (=> b!7382135 (=> (not res!2977394) (not e!4418837))))

(declare-fun lt!2617149 () List!71826)

(declare-fun size!42167 (List!71826) Int)

(assert (=> b!7382135 (= res!2977394 (= (size!42167 lt!2617149) (+ (size!42167 lt!2617095) (size!42167 (exprs!8770 ct2!378)))))))

(declare-fun b!7382136 () Bool)

(assert (=> b!7382136 (= e!4418837 (or (not (= (exprs!8770 ct2!378) Nil!71702)) (= lt!2617149 lt!2617095)))))

(declare-fun b!7382133 () Bool)

(declare-fun e!4418836 () List!71826)

(assert (=> b!7382133 (= e!4418836 (exprs!8770 ct2!378))))

(declare-fun d!2285772 () Bool)

(assert (=> d!2285772 e!4418837))

(declare-fun res!2977395 () Bool)

(assert (=> d!2285772 (=> (not res!2977395) (not e!4418837))))

(declare-fun content!15189 (List!71826) (Set Regex!19330))

(assert (=> d!2285772 (= res!2977395 (= (content!15189 lt!2617149) (set.union (content!15189 lt!2617095) (content!15189 (exprs!8770 ct2!378)))))))

(assert (=> d!2285772 (= lt!2617149 e!4418836)))

(declare-fun c!1372145 () Bool)

(assert (=> d!2285772 (= c!1372145 (is-Nil!71702 lt!2617095))))

(assert (=> d!2285772 (= (++!17146 lt!2617095 (exprs!8770 ct2!378)) lt!2617149)))

(declare-fun b!7382134 () Bool)

(assert (=> b!7382134 (= e!4418836 (Cons!71702 (h!78150 lt!2617095) (++!17146 (t!386321 lt!2617095) (exprs!8770 ct2!378))))))

(assert (= (and d!2285772 c!1372145) b!7382133))

(assert (= (and d!2285772 (not c!1372145)) b!7382134))

(assert (= (and d!2285772 res!2977395) b!7382135))

(assert (= (and b!7382135 res!2977394) b!7382136))

(declare-fun m!8031704 () Bool)

(assert (=> b!7382135 m!8031704))

(declare-fun m!8031706 () Bool)

(assert (=> b!7382135 m!8031706))

(declare-fun m!8031708 () Bool)

(assert (=> b!7382135 m!8031708))

(declare-fun m!8031710 () Bool)

(assert (=> d!2285772 m!8031710))

(declare-fun m!8031712 () Bool)

(assert (=> d!2285772 m!8031712))

(declare-fun m!8031714 () Bool)

(assert (=> d!2285772 m!8031714))

(declare-fun m!8031716 () Bool)

(assert (=> b!7382134 m!8031716))

(assert (=> b!7381972 d!2285772))

(declare-fun bm!679318 () Bool)

(declare-fun c!1372146 () Bool)

(declare-fun c!1372149 () Bool)

(declare-fun c!1372150 () Bool)

(declare-fun call!679324 () (Set Context!16540))

(declare-fun call!679328 () List!71826)

(assert (=> bm!679318 (= call!679324 (derivationStepZipperDown!3156 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))) (ite (or c!1372149 c!1372146) (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679328)) c!10362))))

(declare-fun bm!679319 () Bool)

(declare-fun call!679325 () List!71826)

(assert (=> bm!679319 (= call!679328 call!679325)))

(declare-fun b!7382137 () Bool)

(declare-fun e!4418843 () (Set Context!16540))

(assert (=> b!7382137 (= e!4418843 (set.insert (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (as set.empty (Set Context!16540))))))

(declare-fun b!7382138 () Bool)

(declare-fun e!4418840 () Bool)

(assert (=> b!7382138 (= e!4418840 (nullable!8404 (regOne!39172 (reg!19659 r1!2370))))))

(declare-fun bm!679320 () Bool)

(assert (=> bm!679320 (= call!679325 ($colon$colon!3308 (exprs!8770 (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378)))) (ite (or c!1372146 c!1372150) (regTwo!39172 (reg!19659 r1!2370)) (reg!19659 r1!2370))))))

(declare-fun bm!679321 () Bool)

(declare-fun call!679326 () (Set Context!16540))

(assert (=> bm!679321 (= call!679326 call!679324)))

(declare-fun b!7382139 () Bool)

(declare-fun e!4418842 () (Set Context!16540))

(declare-fun call!679327 () (Set Context!16540))

(assert (=> b!7382139 (= e!4418842 call!679327)))

(declare-fun b!7382141 () Bool)

(declare-fun e!4418841 () (Set Context!16540))

(assert (=> b!7382141 (= e!4418843 e!4418841)))

(assert (=> b!7382141 (= c!1372149 (is-Union!19330 (reg!19659 r1!2370)))))

(declare-fun b!7382142 () Bool)

(declare-fun e!4418838 () (Set Context!16540))

(declare-fun call!679323 () (Set Context!16540))

(assert (=> b!7382142 (= e!4418838 (set.union call!679323 call!679326))))

(declare-fun bm!679322 () Bool)

(assert (=> bm!679322 (= call!679323 (derivationStepZipperDown!3156 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))) (ite c!1372149 (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679325)) c!10362))))

(declare-fun b!7382143 () Bool)

(assert (=> b!7382143 (= e!4418841 (set.union call!679324 call!679323))))

(declare-fun b!7382144 () Bool)

(assert (=> b!7382144 (= c!1372146 e!4418840)))

(declare-fun res!2977396 () Bool)

(assert (=> b!7382144 (=> (not res!2977396) (not e!4418840))))

(assert (=> b!7382144 (= res!2977396 (is-Concat!28175 (reg!19659 r1!2370)))))

(assert (=> b!7382144 (= e!4418841 e!4418838)))

(declare-fun d!2285774 () Bool)

(declare-fun c!1372147 () Bool)

(assert (=> d!2285774 (= c!1372147 (and (is-ElementMatch!19330 (reg!19659 r1!2370)) (= (c!1372106 (reg!19659 r1!2370)) c!10362)))))

(assert (=> d!2285774 (= (derivationStepZipperDown!3156 (reg!19659 r1!2370) (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) c!10362) e!4418843)))

(declare-fun b!7382140 () Bool)

(declare-fun e!4418839 () (Set Context!16540))

(assert (=> b!7382140 (= e!4418839 call!679327)))

(declare-fun b!7382145 () Bool)

(assert (=> b!7382145 (= e!4418842 (as set.empty (Set Context!16540)))))

(declare-fun b!7382146 () Bool)

(declare-fun c!1372148 () Bool)

(assert (=> b!7382146 (= c!1372148 (is-Star!19330 (reg!19659 r1!2370)))))

(assert (=> b!7382146 (= e!4418839 e!4418842)))

(declare-fun b!7382147 () Bool)

(assert (=> b!7382147 (= e!4418838 e!4418839)))

(assert (=> b!7382147 (= c!1372150 (is-Concat!28175 (reg!19659 r1!2370)))))

(declare-fun bm!679323 () Bool)

(assert (=> bm!679323 (= call!679327 call!679326)))

(assert (= (and d!2285774 c!1372147) b!7382137))

(assert (= (and d!2285774 (not c!1372147)) b!7382141))

(assert (= (and b!7382141 c!1372149) b!7382143))

(assert (= (and b!7382141 (not c!1372149)) b!7382144))

(assert (= (and b!7382144 res!2977396) b!7382138))

(assert (= (and b!7382144 c!1372146) b!7382142))

(assert (= (and b!7382144 (not c!1372146)) b!7382147))

(assert (= (and b!7382147 c!1372150) b!7382140))

(assert (= (and b!7382147 (not c!1372150)) b!7382146))

(assert (= (and b!7382146 c!1372148) b!7382139))

(assert (= (and b!7382146 (not c!1372148)) b!7382145))

(assert (= (or b!7382140 b!7382139) bm!679319))

(assert (= (or b!7382140 b!7382139) bm!679323))

(assert (= (or b!7382142 bm!679323) bm!679321))

(assert (= (or b!7382142 bm!679319) bm!679320))

(assert (= (or b!7382143 b!7382142) bm!679322))

(assert (= (or b!7382143 bm!679321) bm!679318))

(declare-fun m!8031718 () Bool)

(assert (=> bm!679322 m!8031718))

(declare-fun m!8031720 () Bool)

(assert (=> bm!679320 m!8031720))

(declare-fun m!8031722 () Bool)

(assert (=> b!7382137 m!8031722))

(declare-fun m!8031724 () Bool)

(assert (=> bm!679318 m!8031724))

(assert (=> b!7382138 m!8031660))

(assert (=> b!7381972 d!2285774))

(declare-fun b!7382150 () Bool)

(declare-fun res!2977397 () Bool)

(declare-fun e!4418845 () Bool)

(assert (=> b!7382150 (=> (not res!2977397) (not e!4418845))))

(declare-fun lt!2617150 () List!71826)

(assert (=> b!7382150 (= res!2977397 (= (size!42167 lt!2617150) (+ (size!42167 (exprs!8770 cWitness!61)) (size!42167 (exprs!8770 ct2!378)))))))

(declare-fun b!7382151 () Bool)

(assert (=> b!7382151 (= e!4418845 (or (not (= (exprs!8770 ct2!378) Nil!71702)) (= lt!2617150 (exprs!8770 cWitness!61))))))

(declare-fun b!7382148 () Bool)

(declare-fun e!4418844 () List!71826)

(assert (=> b!7382148 (= e!4418844 (exprs!8770 ct2!378))))

(declare-fun d!2285776 () Bool)

(assert (=> d!2285776 e!4418845))

(declare-fun res!2977398 () Bool)

(assert (=> d!2285776 (=> (not res!2977398) (not e!4418845))))

(assert (=> d!2285776 (= res!2977398 (= (content!15189 lt!2617150) (set.union (content!15189 (exprs!8770 cWitness!61)) (content!15189 (exprs!8770 ct2!378)))))))

(assert (=> d!2285776 (= lt!2617150 e!4418844)))

(declare-fun c!1372151 () Bool)

(assert (=> d!2285776 (= c!1372151 (is-Nil!71702 (exprs!8770 cWitness!61)))))

(assert (=> d!2285776 (= (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378)) lt!2617150)))

(declare-fun b!7382149 () Bool)

(assert (=> b!7382149 (= e!4418844 (Cons!71702 (h!78150 (exprs!8770 cWitness!61)) (++!17146 (t!386321 (exprs!8770 cWitness!61)) (exprs!8770 ct2!378))))))

(assert (= (and d!2285776 c!1372151) b!7382148))

(assert (= (and d!2285776 (not c!1372151)) b!7382149))

(assert (= (and d!2285776 res!2977398) b!7382150))

(assert (= (and b!7382150 res!2977397) b!7382151))

(declare-fun m!8031726 () Bool)

(assert (=> b!7382150 m!8031726))

(declare-fun m!8031728 () Bool)

(assert (=> b!7382150 m!8031728))

(assert (=> b!7382150 m!8031708))

(declare-fun m!8031730 () Bool)

(assert (=> d!2285776 m!8031730))

(declare-fun m!8031732 () Bool)

(assert (=> d!2285776 m!8031732))

(assert (=> d!2285776 m!8031714))

(declare-fun m!8031734 () Bool)

(assert (=> b!7382149 m!8031734))

(assert (=> b!7381972 d!2285776))

(declare-fun call!679334 () List!71826)

(declare-fun c!1372155 () Bool)

(declare-fun call!679330 () (Set Context!16540))

(declare-fun bm!679324 () Bool)

(declare-fun c!1372156 () Bool)

(declare-fun c!1372152 () Bool)

(assert (=> bm!679324 (= call!679330 (derivationStepZipperDown!3156 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370)))) (ite (or c!1372155 c!1372152) (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679334)) c!10362))))

(declare-fun bm!679325 () Bool)

(declare-fun call!679331 () List!71826)

(assert (=> bm!679325 (= call!679334 call!679331)))

(declare-fun b!7382152 () Bool)

(declare-fun e!4418851 () (Set Context!16540))

(assert (=> b!7382152 (= e!4418851 (set.insert (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (as set.empty (Set Context!16540))))))

(declare-fun b!7382153 () Bool)

(declare-fun e!4418848 () Bool)

(assert (=> b!7382153 (= e!4418848 (nullable!8404 (regOne!39172 r1!2370)))))

(declare-fun bm!679326 () Bool)

(assert (=> bm!679326 (= call!679331 ($colon$colon!3308 (exprs!8770 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378)))) (ite (or c!1372152 c!1372156) (regTwo!39172 r1!2370) r1!2370)))))

(declare-fun bm!679327 () Bool)

(declare-fun call!679332 () (Set Context!16540))

(assert (=> bm!679327 (= call!679332 call!679330)))

(declare-fun b!7382154 () Bool)

(declare-fun e!4418850 () (Set Context!16540))

(declare-fun call!679333 () (Set Context!16540))

(assert (=> b!7382154 (= e!4418850 call!679333)))

(declare-fun b!7382156 () Bool)

(declare-fun e!4418849 () (Set Context!16540))

(assert (=> b!7382156 (= e!4418851 e!4418849)))

(assert (=> b!7382156 (= c!1372155 (is-Union!19330 r1!2370))))

(declare-fun b!7382157 () Bool)

(declare-fun e!4418846 () (Set Context!16540))

(declare-fun call!679329 () (Set Context!16540))

(assert (=> b!7382157 (= e!4418846 (set.union call!679329 call!679332))))

(declare-fun bm!679328 () Bool)

(assert (=> bm!679328 (= call!679329 (derivationStepZipperDown!3156 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)) (ite c!1372155 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679331)) c!10362))))

(declare-fun b!7382158 () Bool)

(assert (=> b!7382158 (= e!4418849 (set.union call!679330 call!679329))))

(declare-fun b!7382159 () Bool)

(assert (=> b!7382159 (= c!1372152 e!4418848)))

(declare-fun res!2977399 () Bool)

(assert (=> b!7382159 (=> (not res!2977399) (not e!4418848))))

(assert (=> b!7382159 (= res!2977399 (is-Concat!28175 r1!2370))))

(assert (=> b!7382159 (= e!4418849 e!4418846)))

(declare-fun d!2285778 () Bool)

(declare-fun c!1372153 () Bool)

(assert (=> d!2285778 (= c!1372153 (and (is-ElementMatch!19330 r1!2370) (= (c!1372106 r1!2370) c!10362)))))

(assert (=> d!2285778 (= (derivationStepZipperDown!3156 r1!2370 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) c!10362) e!4418851)))

(declare-fun b!7382155 () Bool)

(declare-fun e!4418847 () (Set Context!16540))

(assert (=> b!7382155 (= e!4418847 call!679333)))

(declare-fun b!7382160 () Bool)

(assert (=> b!7382160 (= e!4418850 (as set.empty (Set Context!16540)))))

(declare-fun b!7382161 () Bool)

(declare-fun c!1372154 () Bool)

(assert (=> b!7382161 (= c!1372154 (is-Star!19330 r1!2370))))

(assert (=> b!7382161 (= e!4418847 e!4418850)))

(declare-fun b!7382162 () Bool)

(assert (=> b!7382162 (= e!4418846 e!4418847)))

(assert (=> b!7382162 (= c!1372156 (is-Concat!28175 r1!2370))))

(declare-fun bm!679329 () Bool)

(assert (=> bm!679329 (= call!679333 call!679332)))

(assert (= (and d!2285778 c!1372153) b!7382152))

(assert (= (and d!2285778 (not c!1372153)) b!7382156))

(assert (= (and b!7382156 c!1372155) b!7382158))

(assert (= (and b!7382156 (not c!1372155)) b!7382159))

(assert (= (and b!7382159 res!2977399) b!7382153))

(assert (= (and b!7382159 c!1372152) b!7382157))

(assert (= (and b!7382159 (not c!1372152)) b!7382162))

(assert (= (and b!7382162 c!1372156) b!7382155))

(assert (= (and b!7382162 (not c!1372156)) b!7382161))

(assert (= (and b!7382161 c!1372154) b!7382154))

(assert (= (and b!7382161 (not c!1372154)) b!7382160))

(assert (= (or b!7382155 b!7382154) bm!679325))

(assert (= (or b!7382155 b!7382154) bm!679329))

(assert (= (or b!7382157 bm!679329) bm!679327))

(assert (= (or b!7382157 bm!679325) bm!679326))

(assert (= (or b!7382158 b!7382157) bm!679328))

(assert (= (or b!7382158 bm!679327) bm!679324))

(declare-fun m!8031736 () Bool)

(assert (=> bm!679328 m!8031736))

(declare-fun m!8031738 () Bool)

(assert (=> bm!679326 m!8031738))

(declare-fun m!8031740 () Bool)

(assert (=> b!7382152 m!8031740))

(declare-fun m!8031742 () Bool)

(assert (=> bm!679324 m!8031742))

(assert (=> b!7382153 m!8031564))

(assert (=> b!7381966 d!2285778))

(declare-fun b!7382169 () Bool)

(declare-fun res!2977400 () Bool)

(declare-fun e!4418855 () Bool)

(assert (=> b!7382169 (=> (not res!2977400) (not e!4418855))))

(declare-fun lt!2617151 () List!71826)

(assert (=> b!7382169 (= res!2977400 (= (size!42167 lt!2617151) (+ (size!42167 (exprs!8770 ct1!282)) (size!42167 (exprs!8770 ct2!378)))))))

(declare-fun b!7382170 () Bool)

(assert (=> b!7382170 (= e!4418855 (or (not (= (exprs!8770 ct2!378) Nil!71702)) (= lt!2617151 (exprs!8770 ct1!282))))))

(declare-fun b!7382167 () Bool)

(declare-fun e!4418854 () List!71826)

(assert (=> b!7382167 (= e!4418854 (exprs!8770 ct2!378))))

(declare-fun d!2285780 () Bool)

(assert (=> d!2285780 e!4418855))

(declare-fun res!2977401 () Bool)

(assert (=> d!2285780 (=> (not res!2977401) (not e!4418855))))

(assert (=> d!2285780 (= res!2977401 (= (content!15189 lt!2617151) (set.union (content!15189 (exprs!8770 ct1!282)) (content!15189 (exprs!8770 ct2!378)))))))

(assert (=> d!2285780 (= lt!2617151 e!4418854)))

(declare-fun c!1372159 () Bool)

(assert (=> d!2285780 (= c!1372159 (is-Nil!71702 (exprs!8770 ct1!282)))))

(assert (=> d!2285780 (= (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378)) lt!2617151)))

(declare-fun b!7382168 () Bool)

(assert (=> b!7382168 (= e!4418854 (Cons!71702 (h!78150 (exprs!8770 ct1!282)) (++!17146 (t!386321 (exprs!8770 ct1!282)) (exprs!8770 ct2!378))))))

(assert (= (and d!2285780 c!1372159) b!7382167))

(assert (= (and d!2285780 (not c!1372159)) b!7382168))

(assert (= (and d!2285780 res!2977401) b!7382169))

(assert (= (and b!7382169 res!2977400) b!7382170))

(declare-fun m!8031744 () Bool)

(assert (=> b!7382169 m!8031744))

(declare-fun m!8031746 () Bool)

(assert (=> b!7382169 m!8031746))

(assert (=> b!7382169 m!8031708))

(declare-fun m!8031748 () Bool)

(assert (=> d!2285780 m!8031748))

(declare-fun m!8031750 () Bool)

(assert (=> d!2285780 m!8031750))

(assert (=> d!2285780 m!8031714))

(declare-fun m!8031752 () Bool)

(assert (=> b!7382168 m!8031752))

(assert (=> b!7381966 d!2285780))

(declare-fun d!2285782 () Bool)

(assert (=> d!2285782 (forall!18116 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378)) lambda!458606)))

(declare-fun lt!2617152 () Unit!165609)

(assert (=> d!2285782 (= lt!2617152 (choose!57351 (exprs!8770 ct1!282) (exprs!8770 ct2!378) lambda!458606))))

(assert (=> d!2285782 (forall!18116 (exprs!8770 ct1!282) lambda!458606)))

(assert (=> d!2285782 (= (lemmaConcatPreservesForall!2003 (exprs!8770 ct1!282) (exprs!8770 ct2!378) lambda!458606) lt!2617152)))

(declare-fun bs!1921677 () Bool)

(assert (= bs!1921677 d!2285782))

(assert (=> bs!1921677 m!8031558))

(assert (=> bs!1921677 m!8031558))

(declare-fun m!8031754 () Bool)

(assert (=> bs!1921677 m!8031754))

(declare-fun m!8031756 () Bool)

(assert (=> bs!1921677 m!8031756))

(declare-fun m!8031758 () Bool)

(assert (=> bs!1921677 m!8031758))

(assert (=> b!7381966 d!2285782))

(declare-fun e!4418868 () Bool)

(assert (=> b!7381965 (= tp!2099789 e!4418868)))

(declare-fun b!7382199 () Bool)

(assert (=> b!7382199 (= e!4418868 tp_is_empty!48905)))

(declare-fun b!7382200 () Bool)

(declare-fun tp!2099828 () Bool)

(declare-fun tp!2099829 () Bool)

(assert (=> b!7382200 (= e!4418868 (and tp!2099828 tp!2099829))))

(declare-fun b!7382201 () Bool)

(declare-fun tp!2099831 () Bool)

(assert (=> b!7382201 (= e!4418868 tp!2099831)))

(declare-fun b!7382202 () Bool)

(declare-fun tp!2099830 () Bool)

(declare-fun tp!2099832 () Bool)

(assert (=> b!7382202 (= e!4418868 (and tp!2099830 tp!2099832))))

(assert (= (and b!7381965 (is-ElementMatch!19330 (reg!19659 r1!2370))) b!7382199))

(assert (= (and b!7381965 (is-Concat!28175 (reg!19659 r1!2370))) b!7382200))

(assert (= (and b!7381965 (is-Star!19330 (reg!19659 r1!2370))) b!7382201))

(assert (= (and b!7381965 (is-Union!19330 (reg!19659 r1!2370))) b!7382202))

(declare-fun e!4418869 () Bool)

(assert (=> b!7381958 (= tp!2099793 e!4418869)))

(declare-fun b!7382203 () Bool)

(assert (=> b!7382203 (= e!4418869 tp_is_empty!48905)))

(declare-fun b!7382204 () Bool)

(declare-fun tp!2099833 () Bool)

(declare-fun tp!2099834 () Bool)

(assert (=> b!7382204 (= e!4418869 (and tp!2099833 tp!2099834))))

(declare-fun b!7382205 () Bool)

(declare-fun tp!2099836 () Bool)

(assert (=> b!7382205 (= e!4418869 tp!2099836)))

(declare-fun b!7382206 () Bool)

(declare-fun tp!2099835 () Bool)

(declare-fun tp!2099837 () Bool)

(assert (=> b!7382206 (= e!4418869 (and tp!2099835 tp!2099837))))

(assert (= (and b!7381958 (is-ElementMatch!19330 (regOne!39173 r1!2370))) b!7382203))

(assert (= (and b!7381958 (is-Concat!28175 (regOne!39173 r1!2370))) b!7382204))

(assert (= (and b!7381958 (is-Star!19330 (regOne!39173 r1!2370))) b!7382205))

(assert (= (and b!7381958 (is-Union!19330 (regOne!39173 r1!2370))) b!7382206))

(declare-fun e!4418870 () Bool)

(assert (=> b!7381958 (= tp!2099792 e!4418870)))

(declare-fun b!7382207 () Bool)

(assert (=> b!7382207 (= e!4418870 tp_is_empty!48905)))

(declare-fun b!7382208 () Bool)

(declare-fun tp!2099838 () Bool)

(declare-fun tp!2099839 () Bool)

(assert (=> b!7382208 (= e!4418870 (and tp!2099838 tp!2099839))))

(declare-fun b!7382209 () Bool)

(declare-fun tp!2099841 () Bool)

(assert (=> b!7382209 (= e!4418870 tp!2099841)))

(declare-fun b!7382210 () Bool)

(declare-fun tp!2099840 () Bool)

(declare-fun tp!2099842 () Bool)

(assert (=> b!7382210 (= e!4418870 (and tp!2099840 tp!2099842))))

(assert (= (and b!7381958 (is-ElementMatch!19330 (regTwo!39173 r1!2370))) b!7382207))

(assert (= (and b!7381958 (is-Concat!28175 (regTwo!39173 r1!2370))) b!7382208))

(assert (= (and b!7381958 (is-Star!19330 (regTwo!39173 r1!2370))) b!7382209))

(assert (= (and b!7381958 (is-Union!19330 (regTwo!39173 r1!2370))) b!7382210))

(declare-fun e!4418871 () Bool)

(assert (=> b!7381967 (= tp!2099788 e!4418871)))

(declare-fun b!7382211 () Bool)

(assert (=> b!7382211 (= e!4418871 tp_is_empty!48905)))

(declare-fun b!7382212 () Bool)

(declare-fun tp!2099843 () Bool)

(declare-fun tp!2099844 () Bool)

(assert (=> b!7382212 (= e!4418871 (and tp!2099843 tp!2099844))))

(declare-fun b!7382213 () Bool)

(declare-fun tp!2099846 () Bool)

(assert (=> b!7382213 (= e!4418871 tp!2099846)))

(declare-fun b!7382214 () Bool)

(declare-fun tp!2099845 () Bool)

(declare-fun tp!2099847 () Bool)

(assert (=> b!7382214 (= e!4418871 (and tp!2099845 tp!2099847))))

(assert (= (and b!7381967 (is-ElementMatch!19330 (regOne!39172 r1!2370))) b!7382211))

(assert (= (and b!7381967 (is-Concat!28175 (regOne!39172 r1!2370))) b!7382212))

(assert (= (and b!7381967 (is-Star!19330 (regOne!39172 r1!2370))) b!7382213))

(assert (= (and b!7381967 (is-Union!19330 (regOne!39172 r1!2370))) b!7382214))

(declare-fun e!4418872 () Bool)

(assert (=> b!7381967 (= tp!2099787 e!4418872)))

(declare-fun b!7382215 () Bool)

(assert (=> b!7382215 (= e!4418872 tp_is_empty!48905)))

(declare-fun b!7382216 () Bool)

(declare-fun tp!2099848 () Bool)

(declare-fun tp!2099849 () Bool)

(assert (=> b!7382216 (= e!4418872 (and tp!2099848 tp!2099849))))

(declare-fun b!7382217 () Bool)

(declare-fun tp!2099851 () Bool)

(assert (=> b!7382217 (= e!4418872 tp!2099851)))

(declare-fun b!7382218 () Bool)

(declare-fun tp!2099850 () Bool)

(declare-fun tp!2099852 () Bool)

(assert (=> b!7382218 (= e!4418872 (and tp!2099850 tp!2099852))))

(assert (= (and b!7381967 (is-ElementMatch!19330 (regTwo!39172 r1!2370))) b!7382215))

(assert (= (and b!7381967 (is-Concat!28175 (regTwo!39172 r1!2370))) b!7382216))

(assert (= (and b!7381967 (is-Star!19330 (regTwo!39172 r1!2370))) b!7382217))

(assert (= (and b!7381967 (is-Union!19330 (regTwo!39172 r1!2370))) b!7382218))

(declare-fun b!7382223 () Bool)

(declare-fun e!4418875 () Bool)

(declare-fun tp!2099857 () Bool)

(declare-fun tp!2099858 () Bool)

(assert (=> b!7382223 (= e!4418875 (and tp!2099857 tp!2099858))))

(assert (=> b!7381961 (= tp!2099791 e!4418875)))

(assert (= (and b!7381961 (is-Cons!71702 (exprs!8770 ct2!378))) b!7382223))

(declare-fun b!7382224 () Bool)

(declare-fun e!4418876 () Bool)

(declare-fun tp!2099859 () Bool)

(declare-fun tp!2099860 () Bool)

(assert (=> b!7382224 (= e!4418876 (and tp!2099859 tp!2099860))))

(assert (=> b!7381971 (= tp!2099790 e!4418876)))

(assert (= (and b!7381971 (is-Cons!71702 (exprs!8770 cWitness!61))) b!7382224))

(declare-fun b!7382225 () Bool)

(declare-fun e!4418877 () Bool)

(declare-fun tp!2099861 () Bool)

(declare-fun tp!2099862 () Bool)

(assert (=> b!7382225 (= e!4418877 (and tp!2099861 tp!2099862))))

(assert (=> b!7381960 (= tp!2099786 e!4418877)))

(assert (= (and b!7381960 (is-Cons!71702 (exprs!8770 ct1!282))) b!7382225))

(push 1)

(assert (not bm!679301))

(assert (not bm!679326))

(assert (not d!2285772))

(assert (not bm!679282))

(assert (not b!7382135))

(assert (not b!7382216))

(assert tp_is_empty!48905)

(assert (not b!7382047))

(assert (not bm!679297))

(assert (not bm!679284))

(assert (not bm!679299))

(assert (not d!2285782))

(assert (not d!2285770))

(assert (not b!7382225))

(assert (not b!7382153))

(assert (not b!7382223))

(assert (not b!7382201))

(assert (not b!7382134))

(assert (not bm!679328))

(assert (not d!2285752))

(assert (not b!7382209))

(assert (not b!7382217))

(assert (not b!7382169))

(assert (not b!7382212))

(assert (not bm!679324))

(assert (not d!2285780))

(assert (not b!7382168))

(assert (not b!7382208))

(assert (not bm!679281))

(assert (not bm!679307))

(assert (not b!7382081))

(assert (not d!2285748))

(assert (not b!7382200))

(assert (not bm!679305))

(assert (not d!2285776))

(assert (not b!7382206))

(assert (not b!7382149))

(assert (not d!2285764))

(assert (not b!7382106))

(assert (not b!7382214))

(assert (not b!7382218))

(assert (not b!7382202))

(assert (not b!7382224))

(assert (not b!7382213))

(assert (not bm!679318))

(assert (not d!2285750))

(assert (not b!7382210))

(assert (not d!2285760))

(assert (not bm!679320))

(assert (not b!7382205))

(assert (not b!7382138))

(assert (not b!7382150))

(assert (not bm!679322))

(assert (not bm!679309))

(assert (not d!2285766))

(assert (not b!7382038))

(assert (not b!7382204))

(assert (not bm!679279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1372196 () Bool)

(declare-fun bm!679369 () Bool)

(declare-fun call!679379 () List!71826)

(declare-fun c!1372199 () Bool)

(declare-fun c!1372200 () Bool)

(declare-fun call!679375 () (Set Context!16540))

(assert (=> bm!679369 (= call!679375 (derivationStepZipperDown!3156 (ite c!1372199 (regOne!39173 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (ite c!1372196 (regTwo!39172 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (ite c!1372200 (regOne!39172 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (reg!19659 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))))))) (ite (or c!1372199 c!1372196) (ite c!1372149 (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679325)) (Context!16541 call!679379)) c!10362))))

(declare-fun bm!679370 () Bool)

(declare-fun call!679376 () List!71826)

(assert (=> bm!679370 (= call!679379 call!679376)))

(declare-fun e!4418936 () (Set Context!16540))

(declare-fun b!7382336 () Bool)

(assert (=> b!7382336 (= e!4418936 (set.insert (ite c!1372149 (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679325)) (as set.empty (Set Context!16540))))))

(declare-fun b!7382337 () Bool)

(declare-fun e!4418933 () Bool)

(assert (=> b!7382337 (= e!4418933 (nullable!8404 (regOne!39172 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))))))))

(declare-fun bm!679371 () Bool)

(assert (=> bm!679371 (= call!679376 ($colon$colon!3308 (exprs!8770 (ite c!1372149 (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679325))) (ite (or c!1372196 c!1372200) (regTwo!39172 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))))))))

(declare-fun bm!679372 () Bool)

(declare-fun call!679377 () (Set Context!16540))

(assert (=> bm!679372 (= call!679377 call!679375)))

(declare-fun b!7382338 () Bool)

(declare-fun e!4418935 () (Set Context!16540))

(declare-fun call!679378 () (Set Context!16540))

(assert (=> b!7382338 (= e!4418935 call!679378)))

(declare-fun b!7382340 () Bool)

(declare-fun e!4418934 () (Set Context!16540))

(assert (=> b!7382340 (= e!4418936 e!4418934)))

(assert (=> b!7382340 (= c!1372199 (is-Union!19330 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))))))

(declare-fun b!7382341 () Bool)

(declare-fun e!4418931 () (Set Context!16540))

(declare-fun call!679374 () (Set Context!16540))

(assert (=> b!7382341 (= e!4418931 (set.union call!679374 call!679377))))

(declare-fun bm!679373 () Bool)

(assert (=> bm!679373 (= call!679374 (derivationStepZipperDown!3156 (ite c!1372199 (regTwo!39173 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (regOne!39172 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))))) (ite c!1372199 (ite c!1372149 (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679325)) (Context!16541 call!679376)) c!10362))))

(declare-fun b!7382342 () Bool)

(assert (=> b!7382342 (= e!4418934 (set.union call!679375 call!679374))))

(declare-fun b!7382343 () Bool)

(assert (=> b!7382343 (= c!1372196 e!4418933)))

(declare-fun res!2977423 () Bool)

(assert (=> b!7382343 (=> (not res!2977423) (not e!4418933))))

(assert (=> b!7382343 (= res!2977423 (is-Concat!28175 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))))))

(assert (=> b!7382343 (= e!4418934 e!4418931)))

(declare-fun c!1372197 () Bool)

(declare-fun d!2285816 () Bool)

(assert (=> d!2285816 (= c!1372197 (and (is-ElementMatch!19330 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (= (c!1372106 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) c!10362)))))

(assert (=> d!2285816 (= (derivationStepZipperDown!3156 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))) (ite c!1372149 (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679325)) c!10362) e!4418936)))

(declare-fun b!7382339 () Bool)

(declare-fun e!4418932 () (Set Context!16540))

(assert (=> b!7382339 (= e!4418932 call!679378)))

(declare-fun b!7382344 () Bool)

(assert (=> b!7382344 (= e!4418935 (as set.empty (Set Context!16540)))))

(declare-fun b!7382345 () Bool)

(declare-fun c!1372198 () Bool)

(assert (=> b!7382345 (= c!1372198 (is-Star!19330 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))))))

(assert (=> b!7382345 (= e!4418932 e!4418935)))

(declare-fun b!7382346 () Bool)

(assert (=> b!7382346 (= e!4418931 e!4418932)))

(assert (=> b!7382346 (= c!1372200 (is-Concat!28175 (ite c!1372149 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))))))

(declare-fun bm!679374 () Bool)

(assert (=> bm!679374 (= call!679378 call!679377)))

(assert (= (and d!2285816 c!1372197) b!7382336))

(assert (= (and d!2285816 (not c!1372197)) b!7382340))

(assert (= (and b!7382340 c!1372199) b!7382342))

(assert (= (and b!7382340 (not c!1372199)) b!7382343))

(assert (= (and b!7382343 res!2977423) b!7382337))

(assert (= (and b!7382343 c!1372196) b!7382341))

(assert (= (and b!7382343 (not c!1372196)) b!7382346))

(assert (= (and b!7382346 c!1372200) b!7382339))

(assert (= (and b!7382346 (not c!1372200)) b!7382345))

(assert (= (and b!7382345 c!1372198) b!7382338))

(assert (= (and b!7382345 (not c!1372198)) b!7382344))

(assert (= (or b!7382339 b!7382338) bm!679370))

(assert (= (or b!7382339 b!7382338) bm!679374))

(assert (= (or b!7382341 bm!679374) bm!679372))

(assert (= (or b!7382341 bm!679370) bm!679371))

(assert (= (or b!7382342 b!7382341) bm!679373))

(assert (= (or b!7382342 bm!679372) bm!679369))

(declare-fun m!8031874 () Bool)

(assert (=> bm!679373 m!8031874))

(declare-fun m!8031876 () Bool)

(assert (=> bm!679371 m!8031876))

(declare-fun m!8031878 () Bool)

(assert (=> b!7382336 m!8031878))

(declare-fun m!8031880 () Bool)

(assert (=> bm!679369 m!8031880))

(declare-fun m!8031882 () Bool)

(assert (=> b!7382337 m!8031882))

(assert (=> bm!679322 d!2285816))

(assert (=> d!2285764 d!2285776))

(declare-fun d!2285818 () Bool)

(declare-fun res!2977425 () Bool)

(declare-fun e!4418942 () Bool)

(assert (=> d!2285818 (=> res!2977425 e!4418942)))

(assert (=> d!2285818 (= res!2977425 (is-ElementMatch!19330 (reg!19659 r1!2370)))))

(assert (=> d!2285818 (= (validRegex!9926 (reg!19659 r1!2370)) e!4418942)))

(declare-fun b!7382347 () Bool)

(declare-fun res!2977427 () Bool)

(declare-fun e!4418940 () Bool)

(assert (=> b!7382347 (=> res!2977427 e!4418940)))

(assert (=> b!7382347 (= res!2977427 (not (is-Concat!28175 (reg!19659 r1!2370))))))

(declare-fun e!4418939 () Bool)

(assert (=> b!7382347 (= e!4418939 e!4418940)))

(declare-fun b!7382348 () Bool)

(declare-fun e!4418937 () Bool)

(assert (=> b!7382348 (= e!4418940 e!4418937)))

(declare-fun res!2977424 () Bool)

(assert (=> b!7382348 (=> (not res!2977424) (not e!4418937))))

(declare-fun call!679382 () Bool)

(assert (=> b!7382348 (= res!2977424 call!679382)))

(declare-fun b!7382349 () Bool)

(declare-fun e!4418941 () Bool)

(declare-fun e!4418938 () Bool)

(assert (=> b!7382349 (= e!4418941 e!4418938)))

(declare-fun res!2977426 () Bool)

(assert (=> b!7382349 (= res!2977426 (not (nullable!8404 (reg!19659 (reg!19659 r1!2370)))))))

(assert (=> b!7382349 (=> (not res!2977426) (not e!4418938))))

(declare-fun b!7382350 () Bool)

(declare-fun e!4418943 () Bool)

(assert (=> b!7382350 (= e!4418943 call!679382)))

(declare-fun bm!679375 () Bool)

(declare-fun c!1372202 () Bool)

(assert (=> bm!679375 (= call!679382 (validRegex!9926 (ite c!1372202 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))))))

(declare-fun b!7382351 () Bool)

(assert (=> b!7382351 (= e!4418942 e!4418941)))

(declare-fun c!1372201 () Bool)

(assert (=> b!7382351 (= c!1372201 (is-Star!19330 (reg!19659 r1!2370)))))

(declare-fun b!7382352 () Bool)

(declare-fun call!679381 () Bool)

(assert (=> b!7382352 (= e!4418937 call!679381)))

(declare-fun b!7382353 () Bool)

(assert (=> b!7382353 (= e!4418941 e!4418939)))

(assert (=> b!7382353 (= c!1372202 (is-Union!19330 (reg!19659 r1!2370)))))

(declare-fun bm!679376 () Bool)

(declare-fun call!679380 () Bool)

(assert (=> bm!679376 (= call!679381 call!679380)))

(declare-fun b!7382354 () Bool)

(assert (=> b!7382354 (= e!4418938 call!679380)))

(declare-fun bm!679377 () Bool)

(assert (=> bm!679377 (= call!679380 (validRegex!9926 (ite c!1372201 (reg!19659 (reg!19659 r1!2370)) (ite c!1372202 (regOne!39173 (reg!19659 r1!2370)) (regTwo!39172 (reg!19659 r1!2370))))))))

(declare-fun b!7382355 () Bool)

(declare-fun res!2977428 () Bool)

(assert (=> b!7382355 (=> (not res!2977428) (not e!4418943))))

(assert (=> b!7382355 (= res!2977428 call!679381)))

(assert (=> b!7382355 (= e!4418939 e!4418943)))

(assert (= (and d!2285818 (not res!2977425)) b!7382351))

(assert (= (and b!7382351 c!1372201) b!7382349))

(assert (= (and b!7382351 (not c!1372201)) b!7382353))

(assert (= (and b!7382349 res!2977426) b!7382354))

(assert (= (and b!7382353 c!1372202) b!7382355))

(assert (= (and b!7382353 (not c!1372202)) b!7382347))

(assert (= (and b!7382355 res!2977428) b!7382350))

(assert (= (and b!7382347 (not res!2977427)) b!7382348))

(assert (= (and b!7382348 res!2977424) b!7382352))

(assert (= (or b!7382355 b!7382352) bm!679376))

(assert (= (or b!7382350 b!7382348) bm!679375))

(assert (= (or b!7382354 bm!679376) bm!679377))

(declare-fun m!8031884 () Bool)

(assert (=> b!7382349 m!8031884))

(declare-fun m!8031886 () Bool)

(assert (=> bm!679375 m!8031886))

(declare-fun m!8031888 () Bool)

(assert (=> bm!679377 m!8031888))

(assert (=> d!2285764 d!2285818))

(declare-fun d!2285820 () Bool)

(assert (=> d!2285820 (forall!18116 (++!17146 (exprs!8770 lt!2617091) (exprs!8770 ct2!378)) lambda!458625)))

(declare-fun lt!2617172 () Unit!165609)

(assert (=> d!2285820 (= lt!2617172 (choose!57351 (exprs!8770 lt!2617091) (exprs!8770 ct2!378) lambda!458625))))

(assert (=> d!2285820 (forall!18116 (exprs!8770 lt!2617091) lambda!458625)))

(assert (=> d!2285820 (= (lemmaConcatPreservesForall!2003 (exprs!8770 lt!2617091) (exprs!8770 ct2!378) lambda!458625) lt!2617172)))

(declare-fun bs!1921696 () Bool)

(assert (= bs!1921696 d!2285820))

(assert (=> bs!1921696 m!8031680))

(assert (=> bs!1921696 m!8031680))

(declare-fun m!8031890 () Bool)

(assert (=> bs!1921696 m!8031890))

(declare-fun m!8031892 () Bool)

(assert (=> bs!1921696 m!8031892))

(declare-fun m!8031894 () Bool)

(assert (=> bs!1921696 m!8031894))

(assert (=> d!2285764 d!2285820))

(declare-fun d!2285822 () Bool)

(assert (=> d!2285822 (forall!18116 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378)) lambda!458625)))

(declare-fun lt!2617173 () Unit!165609)

(assert (=> d!2285822 (= lt!2617173 (choose!57351 (exprs!8770 cWitness!61) (exprs!8770 ct2!378) lambda!458625))))

(assert (=> d!2285822 (forall!18116 (exprs!8770 cWitness!61) lambda!458625)))

(assert (=> d!2285822 (= (lemmaConcatPreservesForall!2003 (exprs!8770 cWitness!61) (exprs!8770 ct2!378) lambda!458625) lt!2617173)))

(declare-fun bs!1921697 () Bool)

(assert (= bs!1921697 d!2285822))

(assert (=> bs!1921697 m!8031578))

(assert (=> bs!1921697 m!8031578))

(declare-fun m!8031896 () Bool)

(assert (=> bs!1921697 m!8031896))

(declare-fun m!8031898 () Bool)

(assert (=> bs!1921697 m!8031898))

(declare-fun m!8031900 () Bool)

(assert (=> bs!1921697 m!8031900))

(assert (=> d!2285764 d!2285822))

(declare-fun bs!1921698 () Bool)

(declare-fun d!2285824 () Bool)

(assert (= bs!1921698 (and d!2285824 d!2285764)))

(declare-fun lambda!458640 () Int)

(assert (=> bs!1921698 (= lambda!458640 lambda!458625)))

(declare-fun bs!1921699 () Bool)

(assert (= bs!1921699 (and d!2285824 b!7381966)))

(assert (=> bs!1921699 (= lambda!458640 lambda!458606)))

(declare-fun bs!1921700 () Bool)

(assert (= bs!1921700 (and d!2285824 d!2285748)))

(assert (=> bs!1921700 (= lambda!458640 lambda!458618)))

(declare-fun bs!1921701 () Bool)

(assert (= bs!1921701 (and d!2285824 d!2285752)))

(assert (=> bs!1921701 (= lambda!458640 lambda!458620)))

(declare-fun bs!1921702 () Bool)

(assert (= bs!1921702 (and d!2285824 d!2285750)))

(assert (=> bs!1921702 (= lambda!458640 lambda!458619)))

(assert (=> d!2285824 (set.member (Context!16541 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378))) (derivationStepZipperDown!3156 (reg!19659 r1!2370) (Context!16541 (++!17146 (exprs!8770 lt!2617091) (exprs!8770 ct2!378))) c!10362))))

(declare-fun lt!2617179 () Unit!165609)

(assert (=> d!2285824 (= lt!2617179 (lemmaConcatPreservesForall!2003 (exprs!8770 lt!2617091) (exprs!8770 ct2!378) lambda!458640))))

(declare-fun lt!2617178 () Unit!165609)

(assert (=> d!2285824 (= lt!2617178 (lemmaConcatPreservesForall!2003 (exprs!8770 cWitness!61) (exprs!8770 ct2!378) lambda!458640))))

(assert (=> d!2285824 true))

(declare-fun _$59!754 () Unit!165609)

(assert (=> d!2285824 (= (choose!57350 (reg!19659 r1!2370) lt!2617091 ct2!378 cWitness!61 c!10362) _$59!754)))

(declare-fun bs!1921703 () Bool)

(assert (= bs!1921703 d!2285824))

(declare-fun m!8031902 () Bool)

(assert (=> bs!1921703 m!8031902))

(assert (=> bs!1921703 m!8031672))

(assert (=> bs!1921703 m!8031674))

(assert (=> bs!1921703 m!8031680))

(declare-fun m!8031904 () Bool)

(assert (=> bs!1921703 m!8031904))

(assert (=> bs!1921703 m!8031578))

(assert (=> d!2285764 d!2285824))

(declare-fun b!7382358 () Bool)

(declare-fun res!2977429 () Bool)

(declare-fun e!4418945 () Bool)

(assert (=> b!7382358 (=> (not res!2977429) (not e!4418945))))

(declare-fun lt!2617180 () List!71826)

(assert (=> b!7382358 (= res!2977429 (= (size!42167 lt!2617180) (+ (size!42167 (exprs!8770 lt!2617091)) (size!42167 (exprs!8770 ct2!378)))))))

(declare-fun b!7382359 () Bool)

(assert (=> b!7382359 (= e!4418945 (or (not (= (exprs!8770 ct2!378) Nil!71702)) (= lt!2617180 (exprs!8770 lt!2617091))))))

(declare-fun b!7382356 () Bool)

(declare-fun e!4418944 () List!71826)

(assert (=> b!7382356 (= e!4418944 (exprs!8770 ct2!378))))

(declare-fun d!2285826 () Bool)

(assert (=> d!2285826 e!4418945))

(declare-fun res!2977430 () Bool)

(assert (=> d!2285826 (=> (not res!2977430) (not e!4418945))))

(assert (=> d!2285826 (= res!2977430 (= (content!15189 lt!2617180) (set.union (content!15189 (exprs!8770 lt!2617091)) (content!15189 (exprs!8770 ct2!378)))))))

(assert (=> d!2285826 (= lt!2617180 e!4418944)))

(declare-fun c!1372204 () Bool)

(assert (=> d!2285826 (= c!1372204 (is-Nil!71702 (exprs!8770 lt!2617091)))))

(assert (=> d!2285826 (= (++!17146 (exprs!8770 lt!2617091) (exprs!8770 ct2!378)) lt!2617180)))

(declare-fun b!7382357 () Bool)

(assert (=> b!7382357 (= e!4418944 (Cons!71702 (h!78150 (exprs!8770 lt!2617091)) (++!17146 (t!386321 (exprs!8770 lt!2617091)) (exprs!8770 ct2!378))))))

(assert (= (and d!2285826 c!1372204) b!7382356))

(assert (= (and d!2285826 (not c!1372204)) b!7382357))

(assert (= (and d!2285826 res!2977430) b!7382358))

(assert (= (and b!7382358 res!2977429) b!7382359))

(declare-fun m!8031906 () Bool)

(assert (=> b!7382358 m!8031906))

(declare-fun m!8031908 () Bool)

(assert (=> b!7382358 m!8031908))

(assert (=> b!7382358 m!8031708))

(declare-fun m!8031910 () Bool)

(assert (=> d!2285826 m!8031910))

(declare-fun m!8031912 () Bool)

(assert (=> d!2285826 m!8031912))

(assert (=> d!2285826 m!8031714))

(declare-fun m!8031914 () Bool)

(assert (=> b!7382357 m!8031914))

(assert (=> d!2285764 d!2285826))

(declare-fun call!679388 () List!71826)

(declare-fun c!1372205 () Bool)

(declare-fun c!1372208 () Bool)

(declare-fun c!1372209 () Bool)

(declare-fun call!679384 () (Set Context!16540))

(declare-fun bm!679378 () Bool)

(assert (=> bm!679378 (= call!679384 (derivationStepZipperDown!3156 (ite c!1372208 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372205 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372209 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))) (ite (or c!1372208 c!1372205) (Context!16541 (++!17146 (exprs!8770 lt!2617091) (exprs!8770 ct2!378))) (Context!16541 call!679388)) c!10362))))

(declare-fun bm!679379 () Bool)

(declare-fun call!679385 () List!71826)

(assert (=> bm!679379 (= call!679388 call!679385)))

(declare-fun b!7382360 () Bool)

(declare-fun e!4418951 () (Set Context!16540))

(assert (=> b!7382360 (= e!4418951 (set.insert (Context!16541 (++!17146 (exprs!8770 lt!2617091) (exprs!8770 ct2!378))) (as set.empty (Set Context!16540))))))

(declare-fun b!7382361 () Bool)

(declare-fun e!4418948 () Bool)

(assert (=> b!7382361 (= e!4418948 (nullable!8404 (regOne!39172 (reg!19659 r1!2370))))))

(declare-fun bm!679380 () Bool)

(assert (=> bm!679380 (= call!679385 ($colon$colon!3308 (exprs!8770 (Context!16541 (++!17146 (exprs!8770 lt!2617091) (exprs!8770 ct2!378)))) (ite (or c!1372205 c!1372209) (regTwo!39172 (reg!19659 r1!2370)) (reg!19659 r1!2370))))))

(declare-fun bm!679381 () Bool)

(declare-fun call!679386 () (Set Context!16540))

(assert (=> bm!679381 (= call!679386 call!679384)))

(declare-fun b!7382362 () Bool)

(declare-fun e!4418950 () (Set Context!16540))

(declare-fun call!679387 () (Set Context!16540))

(assert (=> b!7382362 (= e!4418950 call!679387)))

(declare-fun b!7382364 () Bool)

(declare-fun e!4418949 () (Set Context!16540))

(assert (=> b!7382364 (= e!4418951 e!4418949)))

(assert (=> b!7382364 (= c!1372208 (is-Union!19330 (reg!19659 r1!2370)))))

(declare-fun b!7382365 () Bool)

(declare-fun e!4418946 () (Set Context!16540))

(declare-fun call!679383 () (Set Context!16540))

(assert (=> b!7382365 (= e!4418946 (set.union call!679383 call!679386))))

(declare-fun bm!679382 () Bool)

(assert (=> bm!679382 (= call!679383 (derivationStepZipperDown!3156 (ite c!1372208 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))) (ite c!1372208 (Context!16541 (++!17146 (exprs!8770 lt!2617091) (exprs!8770 ct2!378))) (Context!16541 call!679385)) c!10362))))

(declare-fun b!7382366 () Bool)

(assert (=> b!7382366 (= e!4418949 (set.union call!679384 call!679383))))

(declare-fun b!7382367 () Bool)

(assert (=> b!7382367 (= c!1372205 e!4418948)))

(declare-fun res!2977431 () Bool)

(assert (=> b!7382367 (=> (not res!2977431) (not e!4418948))))

(assert (=> b!7382367 (= res!2977431 (is-Concat!28175 (reg!19659 r1!2370)))))

(assert (=> b!7382367 (= e!4418949 e!4418946)))

(declare-fun d!2285828 () Bool)

(declare-fun c!1372206 () Bool)

(assert (=> d!2285828 (= c!1372206 (and (is-ElementMatch!19330 (reg!19659 r1!2370)) (= (c!1372106 (reg!19659 r1!2370)) c!10362)))))

(assert (=> d!2285828 (= (derivationStepZipperDown!3156 (reg!19659 r1!2370) (Context!16541 (++!17146 (exprs!8770 lt!2617091) (exprs!8770 ct2!378))) c!10362) e!4418951)))

(declare-fun b!7382363 () Bool)

(declare-fun e!4418947 () (Set Context!16540))

(assert (=> b!7382363 (= e!4418947 call!679387)))

(declare-fun b!7382368 () Bool)

(assert (=> b!7382368 (= e!4418950 (as set.empty (Set Context!16540)))))

(declare-fun b!7382369 () Bool)

(declare-fun c!1372207 () Bool)

(assert (=> b!7382369 (= c!1372207 (is-Star!19330 (reg!19659 r1!2370)))))

(assert (=> b!7382369 (= e!4418947 e!4418950)))

(declare-fun b!7382370 () Bool)

(assert (=> b!7382370 (= e!4418946 e!4418947)))

(assert (=> b!7382370 (= c!1372209 (is-Concat!28175 (reg!19659 r1!2370)))))

(declare-fun bm!679383 () Bool)

(assert (=> bm!679383 (= call!679387 call!679386)))

(assert (= (and d!2285828 c!1372206) b!7382360))

(assert (= (and d!2285828 (not c!1372206)) b!7382364))

(assert (= (and b!7382364 c!1372208) b!7382366))

(assert (= (and b!7382364 (not c!1372208)) b!7382367))

(assert (= (and b!7382367 res!2977431) b!7382361))

(assert (= (and b!7382367 c!1372205) b!7382365))

(assert (= (and b!7382367 (not c!1372205)) b!7382370))

(assert (= (and b!7382370 c!1372209) b!7382363))

(assert (= (and b!7382370 (not c!1372209)) b!7382369))

(assert (= (and b!7382369 c!1372207) b!7382362))

(assert (= (and b!7382369 (not c!1372207)) b!7382368))

(assert (= (or b!7382363 b!7382362) bm!679379))

(assert (= (or b!7382363 b!7382362) bm!679383))

(assert (= (or b!7382365 bm!679383) bm!679381))

(assert (= (or b!7382365 bm!679379) bm!679380))

(assert (= (or b!7382366 b!7382365) bm!679382))

(assert (= (or b!7382366 bm!679381) bm!679378))

(declare-fun m!8031916 () Bool)

(assert (=> bm!679382 m!8031916))

(declare-fun m!8031918 () Bool)

(assert (=> bm!679380 m!8031918))

(declare-fun m!8031920 () Bool)

(assert (=> b!7382360 m!8031920))

(declare-fun m!8031922 () Bool)

(assert (=> bm!679378 m!8031922))

(assert (=> b!7382361 m!8031660))

(assert (=> d!2285764 d!2285828))

(declare-fun d!2285830 () Bool)

(declare-fun lt!2617183 () Int)

(assert (=> d!2285830 (>= lt!2617183 0)))

(declare-fun e!4418954 () Int)

(assert (=> d!2285830 (= lt!2617183 e!4418954)))

(declare-fun c!1372212 () Bool)

(assert (=> d!2285830 (= c!1372212 (is-Nil!71702 lt!2617151))))

(assert (=> d!2285830 (= (size!42167 lt!2617151) lt!2617183)))

(declare-fun b!7382375 () Bool)

(assert (=> b!7382375 (= e!4418954 0)))

(declare-fun b!7382376 () Bool)

(assert (=> b!7382376 (= e!4418954 (+ 1 (size!42167 (t!386321 lt!2617151))))))

(assert (= (and d!2285830 c!1372212) b!7382375))

(assert (= (and d!2285830 (not c!1372212)) b!7382376))

(declare-fun m!8031924 () Bool)

(assert (=> b!7382376 m!8031924))

(assert (=> b!7382169 d!2285830))

(declare-fun d!2285832 () Bool)

(declare-fun lt!2617184 () Int)

(assert (=> d!2285832 (>= lt!2617184 0)))

(declare-fun e!4418955 () Int)

(assert (=> d!2285832 (= lt!2617184 e!4418955)))

(declare-fun c!1372213 () Bool)

(assert (=> d!2285832 (= c!1372213 (is-Nil!71702 (exprs!8770 ct1!282)))))

(assert (=> d!2285832 (= (size!42167 (exprs!8770 ct1!282)) lt!2617184)))

(declare-fun b!7382377 () Bool)

(assert (=> b!7382377 (= e!4418955 0)))

(declare-fun b!7382378 () Bool)

(assert (=> b!7382378 (= e!4418955 (+ 1 (size!42167 (t!386321 (exprs!8770 ct1!282)))))))

(assert (= (and d!2285832 c!1372213) b!7382377))

(assert (= (and d!2285832 (not c!1372213)) b!7382378))

(declare-fun m!8031926 () Bool)

(assert (=> b!7382378 m!8031926))

(assert (=> b!7382169 d!2285832))

(declare-fun d!2285834 () Bool)

(declare-fun lt!2617185 () Int)

(assert (=> d!2285834 (>= lt!2617185 0)))

(declare-fun e!4418956 () Int)

(assert (=> d!2285834 (= lt!2617185 e!4418956)))

(declare-fun c!1372214 () Bool)

(assert (=> d!2285834 (= c!1372214 (is-Nil!71702 (exprs!8770 ct2!378)))))

(assert (=> d!2285834 (= (size!42167 (exprs!8770 ct2!378)) lt!2617185)))

(declare-fun b!7382379 () Bool)

(assert (=> b!7382379 (= e!4418956 0)))

(declare-fun b!7382380 () Bool)

(assert (=> b!7382380 (= e!4418956 (+ 1 (size!42167 (t!386321 (exprs!8770 ct2!378)))))))

(assert (= (and d!2285834 c!1372214) b!7382379))

(assert (= (and d!2285834 (not c!1372214)) b!7382380))

(declare-fun m!8031928 () Bool)

(assert (=> b!7382380 m!8031928))

(assert (=> b!7382169 d!2285834))

(declare-fun c!1372218 () Bool)

(declare-fun call!679390 () (Set Context!16540))

(declare-fun c!1372219 () Bool)

(declare-fun bm!679384 () Bool)

(declare-fun c!1372215 () Bool)

(declare-fun call!679394 () List!71826)

(assert (=> bm!679384 (= call!679390 (derivationStepZipperDown!3156 (ite c!1372218 (regOne!39173 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (ite c!1372215 (regTwo!39172 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (ite c!1372219 (regOne!39172 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (reg!19659 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)))))) (ite (or c!1372218 c!1372215) (ite c!1372155 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679331)) (Context!16541 call!679394)) c!10362))))

(declare-fun bm!679385 () Bool)

(declare-fun call!679391 () List!71826)

(assert (=> bm!679385 (= call!679394 call!679391)))

(declare-fun e!4418962 () (Set Context!16540))

(declare-fun b!7382381 () Bool)

(assert (=> b!7382381 (= e!4418962 (set.insert (ite c!1372155 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679331)) (as set.empty (Set Context!16540))))))

(declare-fun b!7382382 () Bool)

(declare-fun e!4418959 () Bool)

(assert (=> b!7382382 (= e!4418959 (nullable!8404 (regOne!39172 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)))))))

(declare-fun bm!679386 () Bool)

(assert (=> bm!679386 (= call!679391 ($colon$colon!3308 (exprs!8770 (ite c!1372155 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679331))) (ite (or c!1372215 c!1372219) (regTwo!39172 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)))))))

(declare-fun bm!679387 () Bool)

(declare-fun call!679392 () (Set Context!16540))

(assert (=> bm!679387 (= call!679392 call!679390)))

(declare-fun b!7382383 () Bool)

(declare-fun e!4418961 () (Set Context!16540))

(declare-fun call!679393 () (Set Context!16540))

(assert (=> b!7382383 (= e!4418961 call!679393)))

(declare-fun b!7382385 () Bool)

(declare-fun e!4418960 () (Set Context!16540))

(assert (=> b!7382385 (= e!4418962 e!4418960)))

(assert (=> b!7382385 (= c!1372218 (is-Union!19330 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(declare-fun b!7382386 () Bool)

(declare-fun e!4418957 () (Set Context!16540))

(declare-fun call!679389 () (Set Context!16540))

(assert (=> b!7382386 (= e!4418957 (set.union call!679389 call!679392))))

(declare-fun bm!679388 () Bool)

(assert (=> bm!679388 (= call!679389 (derivationStepZipperDown!3156 (ite c!1372218 (regTwo!39173 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (regOne!39172 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)))) (ite c!1372218 (ite c!1372155 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679331)) (Context!16541 call!679391)) c!10362))))

(declare-fun b!7382387 () Bool)

(assert (=> b!7382387 (= e!4418960 (set.union call!679390 call!679389))))

(declare-fun b!7382388 () Bool)

(assert (=> b!7382388 (= c!1372215 e!4418959)))

(declare-fun res!2977432 () Bool)

(assert (=> b!7382388 (=> (not res!2977432) (not e!4418959))))

(assert (=> b!7382388 (= res!2977432 (is-Concat!28175 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(assert (=> b!7382388 (= e!4418960 e!4418957)))

(declare-fun c!1372216 () Bool)

(declare-fun d!2285836 () Bool)

(assert (=> d!2285836 (= c!1372216 (and (is-ElementMatch!19330 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (= (c!1372106 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) c!10362)))))

(assert (=> d!2285836 (= (derivationStepZipperDown!3156 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)) (ite c!1372155 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679331)) c!10362) e!4418962)))

(declare-fun b!7382384 () Bool)

(declare-fun e!4418958 () (Set Context!16540))

(assert (=> b!7382384 (= e!4418958 call!679393)))

(declare-fun b!7382389 () Bool)

(assert (=> b!7382389 (= e!4418961 (as set.empty (Set Context!16540)))))

(declare-fun b!7382390 () Bool)

(declare-fun c!1372217 () Bool)

(assert (=> b!7382390 (= c!1372217 (is-Star!19330 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(assert (=> b!7382390 (= e!4418958 e!4418961)))

(declare-fun b!7382391 () Bool)

(assert (=> b!7382391 (= e!4418957 e!4418958)))

(assert (=> b!7382391 (= c!1372219 (is-Concat!28175 (ite c!1372155 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(declare-fun bm!679389 () Bool)

(assert (=> bm!679389 (= call!679393 call!679392)))

(assert (= (and d!2285836 c!1372216) b!7382381))

(assert (= (and d!2285836 (not c!1372216)) b!7382385))

(assert (= (and b!7382385 c!1372218) b!7382387))

(assert (= (and b!7382385 (not c!1372218)) b!7382388))

(assert (= (and b!7382388 res!2977432) b!7382382))

(assert (= (and b!7382388 c!1372215) b!7382386))

(assert (= (and b!7382388 (not c!1372215)) b!7382391))

(assert (= (and b!7382391 c!1372219) b!7382384))

(assert (= (and b!7382391 (not c!1372219)) b!7382390))

(assert (= (and b!7382390 c!1372217) b!7382383))

(assert (= (and b!7382390 (not c!1372217)) b!7382389))

(assert (= (or b!7382384 b!7382383) bm!679385))

(assert (= (or b!7382384 b!7382383) bm!679389))

(assert (= (or b!7382386 bm!679389) bm!679387))

(assert (= (or b!7382386 bm!679385) bm!679386))

(assert (= (or b!7382387 b!7382386) bm!679388))

(assert (= (or b!7382387 bm!679387) bm!679384))

(declare-fun m!8031930 () Bool)

(assert (=> bm!679388 m!8031930))

(declare-fun m!8031932 () Bool)

(assert (=> bm!679386 m!8031932))

(declare-fun m!8031934 () Bool)

(assert (=> b!7382381 m!8031934))

(declare-fun m!8031936 () Bool)

(assert (=> bm!679384 m!8031936))

(declare-fun m!8031938 () Bool)

(assert (=> b!7382382 m!8031938))

(assert (=> bm!679328 d!2285836))

(declare-fun c!1372220 () Bool)

(declare-fun c!1372223 () Bool)

(declare-fun c!1372224 () Bool)

(declare-fun call!679396 () (Set Context!16540))

(declare-fun call!679400 () List!71826)

(declare-fun bm!679390 () Bool)

(assert (=> bm!679390 (= call!679396 (derivationStepZipperDown!3156 (ite c!1372223 (regOne!39173 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (ite c!1372220 (regTwo!39172 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (ite c!1372224 (regOne!39172 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (reg!19659 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)))))) (ite (or c!1372223 c!1372220) (ite c!1372138 ct1!282 (Context!16541 call!679314)) (Context!16541 call!679400)) c!10362))))

(declare-fun bm!679391 () Bool)

(declare-fun call!679397 () List!71826)

(assert (=> bm!679391 (= call!679400 call!679397)))

(declare-fun e!4418968 () (Set Context!16540))

(declare-fun b!7382392 () Bool)

(assert (=> b!7382392 (= e!4418968 (set.insert (ite c!1372138 ct1!282 (Context!16541 call!679314)) (as set.empty (Set Context!16540))))))

(declare-fun b!7382393 () Bool)

(declare-fun e!4418965 () Bool)

(assert (=> b!7382393 (= e!4418965 (nullable!8404 (regOne!39172 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)))))))

(declare-fun bm!679392 () Bool)

(assert (=> bm!679392 (= call!679397 ($colon$colon!3308 (exprs!8770 (ite c!1372138 ct1!282 (Context!16541 call!679314))) (ite (or c!1372220 c!1372224) (regTwo!39172 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)))))))

(declare-fun bm!679393 () Bool)

(declare-fun call!679398 () (Set Context!16540))

(assert (=> bm!679393 (= call!679398 call!679396)))

(declare-fun b!7382394 () Bool)

(declare-fun e!4418967 () (Set Context!16540))

(declare-fun call!679399 () (Set Context!16540))

(assert (=> b!7382394 (= e!4418967 call!679399)))

(declare-fun b!7382396 () Bool)

(declare-fun e!4418966 () (Set Context!16540))

(assert (=> b!7382396 (= e!4418968 e!4418966)))

(assert (=> b!7382396 (= c!1372223 (is-Union!19330 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(declare-fun b!7382397 () Bool)

(declare-fun e!4418963 () (Set Context!16540))

(declare-fun call!679395 () (Set Context!16540))

(assert (=> b!7382397 (= e!4418963 (set.union call!679395 call!679398))))

(declare-fun bm!679394 () Bool)

(assert (=> bm!679394 (= call!679395 (derivationStepZipperDown!3156 (ite c!1372223 (regTwo!39173 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (regOne!39172 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)))) (ite c!1372223 (ite c!1372138 ct1!282 (Context!16541 call!679314)) (Context!16541 call!679397)) c!10362))))

(declare-fun b!7382398 () Bool)

(assert (=> b!7382398 (= e!4418966 (set.union call!679396 call!679395))))

(declare-fun b!7382399 () Bool)

(assert (=> b!7382399 (= c!1372220 e!4418965)))

(declare-fun res!2977433 () Bool)

(assert (=> b!7382399 (=> (not res!2977433) (not e!4418965))))

(assert (=> b!7382399 (= res!2977433 (is-Concat!28175 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(assert (=> b!7382399 (= e!4418966 e!4418963)))

(declare-fun d!2285838 () Bool)

(declare-fun c!1372221 () Bool)

(assert (=> d!2285838 (= c!1372221 (and (is-ElementMatch!19330 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (= (c!1372106 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) c!10362)))))

(assert (=> d!2285838 (= (derivationStepZipperDown!3156 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)) (ite c!1372138 ct1!282 (Context!16541 call!679314)) c!10362) e!4418968)))

(declare-fun b!7382395 () Bool)

(declare-fun e!4418964 () (Set Context!16540))

(assert (=> b!7382395 (= e!4418964 call!679399)))

(declare-fun b!7382400 () Bool)

(assert (=> b!7382400 (= e!4418967 (as set.empty (Set Context!16540)))))

(declare-fun b!7382401 () Bool)

(declare-fun c!1372222 () Bool)

(assert (=> b!7382401 (= c!1372222 (is-Star!19330 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(assert (=> b!7382401 (= e!4418964 e!4418967)))

(declare-fun b!7382402 () Bool)

(assert (=> b!7382402 (= e!4418963 e!4418964)))

(assert (=> b!7382402 (= c!1372224 (is-Concat!28175 (ite c!1372138 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(declare-fun bm!679395 () Bool)

(assert (=> bm!679395 (= call!679399 call!679398)))

(assert (= (and d!2285838 c!1372221) b!7382392))

(assert (= (and d!2285838 (not c!1372221)) b!7382396))

(assert (= (and b!7382396 c!1372223) b!7382398))

(assert (= (and b!7382396 (not c!1372223)) b!7382399))

(assert (= (and b!7382399 res!2977433) b!7382393))

(assert (= (and b!7382399 c!1372220) b!7382397))

(assert (= (and b!7382399 (not c!1372220)) b!7382402))

(assert (= (and b!7382402 c!1372224) b!7382395))

(assert (= (and b!7382402 (not c!1372224)) b!7382401))

(assert (= (and b!7382401 c!1372222) b!7382394))

(assert (= (and b!7382401 (not c!1372222)) b!7382400))

(assert (= (or b!7382395 b!7382394) bm!679391))

(assert (= (or b!7382395 b!7382394) bm!679395))

(assert (= (or b!7382397 bm!679395) bm!679393))

(assert (= (or b!7382397 bm!679391) bm!679392))

(assert (= (or b!7382398 b!7382397) bm!679394))

(assert (= (or b!7382398 bm!679393) bm!679390))

(declare-fun m!8031940 () Bool)

(assert (=> bm!679394 m!8031940))

(declare-fun m!8031942 () Bool)

(assert (=> bm!679392 m!8031942))

(declare-fun m!8031944 () Bool)

(assert (=> b!7382392 m!8031944))

(declare-fun m!8031946 () Bool)

(assert (=> bm!679390 m!8031946))

(declare-fun m!8031948 () Bool)

(assert (=> b!7382393 m!8031948))

(assert (=> bm!679309 d!2285838))

(declare-fun b!7382405 () Bool)

(declare-fun res!2977434 () Bool)

(declare-fun e!4418970 () Bool)

(assert (=> b!7382405 (=> (not res!2977434) (not e!4418970))))

(declare-fun lt!2617186 () List!71826)

(assert (=> b!7382405 (= res!2977434 (= (size!42167 lt!2617186) (+ (size!42167 (t!386321 (exprs!8770 cWitness!61))) (size!42167 (exprs!8770 ct2!378)))))))

(declare-fun b!7382406 () Bool)

(assert (=> b!7382406 (= e!4418970 (or (not (= (exprs!8770 ct2!378) Nil!71702)) (= lt!2617186 (t!386321 (exprs!8770 cWitness!61)))))))

(declare-fun b!7382403 () Bool)

(declare-fun e!4418969 () List!71826)

(assert (=> b!7382403 (= e!4418969 (exprs!8770 ct2!378))))

(declare-fun d!2285840 () Bool)

(assert (=> d!2285840 e!4418970))

(declare-fun res!2977435 () Bool)

(assert (=> d!2285840 (=> (not res!2977435) (not e!4418970))))

(assert (=> d!2285840 (= res!2977435 (= (content!15189 lt!2617186) (set.union (content!15189 (t!386321 (exprs!8770 cWitness!61))) (content!15189 (exprs!8770 ct2!378)))))))

(assert (=> d!2285840 (= lt!2617186 e!4418969)))

(declare-fun c!1372225 () Bool)

(assert (=> d!2285840 (= c!1372225 (is-Nil!71702 (t!386321 (exprs!8770 cWitness!61))))))

(assert (=> d!2285840 (= (++!17146 (t!386321 (exprs!8770 cWitness!61)) (exprs!8770 ct2!378)) lt!2617186)))

(declare-fun b!7382404 () Bool)

(assert (=> b!7382404 (= e!4418969 (Cons!71702 (h!78150 (t!386321 (exprs!8770 cWitness!61))) (++!17146 (t!386321 (t!386321 (exprs!8770 cWitness!61))) (exprs!8770 ct2!378))))))

(assert (= (and d!2285840 c!1372225) b!7382403))

(assert (= (and d!2285840 (not c!1372225)) b!7382404))

(assert (= (and d!2285840 res!2977435) b!7382405))

(assert (= (and b!7382405 res!2977434) b!7382406))

(declare-fun m!8031950 () Bool)

(assert (=> b!7382405 m!8031950))

(declare-fun m!8031952 () Bool)

(assert (=> b!7382405 m!8031952))

(assert (=> b!7382405 m!8031708))

(declare-fun m!8031954 () Bool)

(assert (=> d!2285840 m!8031954))

(declare-fun m!8031956 () Bool)

(assert (=> d!2285840 m!8031956))

(assert (=> d!2285840 m!8031714))

(declare-fun m!8031958 () Bool)

(assert (=> b!7382404 m!8031958))

(assert (=> b!7382149 d!2285840))

(declare-fun d!2285842 () Bool)

(declare-fun res!2977440 () Bool)

(declare-fun e!4418975 () Bool)

(assert (=> d!2285842 (=> res!2977440 e!4418975)))

(assert (=> d!2285842 (= res!2977440 (is-Nil!71702 (exprs!8770 ct2!378)))))

(assert (=> d!2285842 (= (forall!18116 (exprs!8770 ct2!378) lambda!458620) e!4418975)))

(declare-fun b!7382411 () Bool)

(declare-fun e!4418976 () Bool)

(assert (=> b!7382411 (= e!4418975 e!4418976)))

(declare-fun res!2977441 () Bool)

(assert (=> b!7382411 (=> (not res!2977441) (not e!4418976))))

(declare-fun dynLambda!29536 (Int Regex!19330) Bool)

(assert (=> b!7382411 (= res!2977441 (dynLambda!29536 lambda!458620 (h!78150 (exprs!8770 ct2!378))))))

(declare-fun b!7382412 () Bool)

(assert (=> b!7382412 (= e!4418976 (forall!18116 (t!386321 (exprs!8770 ct2!378)) lambda!458620))))

(assert (= (and d!2285842 (not res!2977440)) b!7382411))

(assert (= (and b!7382411 res!2977441) b!7382412))

(declare-fun b_lambda!284747 () Bool)

(assert (=> (not b_lambda!284747) (not b!7382411)))

(declare-fun m!8031960 () Bool)

(assert (=> b!7382411 m!8031960))

(declare-fun m!8031962 () Bool)

(assert (=> b!7382412 m!8031962))

(assert (=> d!2285752 d!2285842))

(declare-fun b!7382427 () Bool)

(declare-fun e!4418992 () Bool)

(declare-fun e!4418990 () Bool)

(assert (=> b!7382427 (= e!4418992 e!4418990)))

(declare-fun res!2977454 () Bool)

(declare-fun call!679406 () Bool)

(assert (=> b!7382427 (= res!2977454 call!679406)))

(assert (=> b!7382427 (=> res!2977454 e!4418990)))

(declare-fun bm!679400 () Bool)

(declare-fun call!679405 () Bool)

(declare-fun c!1372228 () Bool)

(assert (=> bm!679400 (= call!679405 (nullable!8404 (ite c!1372228 (regTwo!39173 (regOne!39172 r1!2370)) (regOne!39172 (regOne!39172 r1!2370)))))))

(declare-fun b!7382428 () Bool)

(declare-fun e!4418993 () Bool)

(assert (=> b!7382428 (= e!4418993 call!679406)))

(declare-fun b!7382429 () Bool)

(declare-fun e!4418994 () Bool)

(declare-fun e!4418991 () Bool)

(assert (=> b!7382429 (= e!4418994 e!4418991)))

(declare-fun res!2977455 () Bool)

(assert (=> b!7382429 (=> (not res!2977455) (not e!4418991))))

(assert (=> b!7382429 (= res!2977455 (and (not (is-EmptyLang!19330 (regOne!39172 r1!2370))) (not (is-ElementMatch!19330 (regOne!39172 r1!2370)))))))

(declare-fun b!7382430 () Bool)

(assert (=> b!7382430 (= e!4418990 call!679405)))

(declare-fun bm!679401 () Bool)

(assert (=> bm!679401 (= call!679406 (nullable!8404 (ite c!1372228 (regOne!39173 (regOne!39172 r1!2370)) (regTwo!39172 (regOne!39172 r1!2370)))))))

(declare-fun b!7382431 () Bool)

(assert (=> b!7382431 (= e!4418992 e!4418993)))

(declare-fun res!2977456 () Bool)

(assert (=> b!7382431 (= res!2977456 call!679405)))

(assert (=> b!7382431 (=> (not res!2977456) (not e!4418993))))

(declare-fun d!2285844 () Bool)

(declare-fun res!2977453 () Bool)

(assert (=> d!2285844 (=> res!2977453 e!4418994)))

(assert (=> d!2285844 (= res!2977453 (is-EmptyExpr!19330 (regOne!39172 r1!2370)))))

(assert (=> d!2285844 (= (nullableFct!3373 (regOne!39172 r1!2370)) e!4418994)))

(declare-fun b!7382432 () Bool)

(declare-fun e!4418989 () Bool)

(assert (=> b!7382432 (= e!4418989 e!4418992)))

(assert (=> b!7382432 (= c!1372228 (is-Union!19330 (regOne!39172 r1!2370)))))

(declare-fun b!7382433 () Bool)

(assert (=> b!7382433 (= e!4418991 e!4418989)))

(declare-fun res!2977452 () Bool)

(assert (=> b!7382433 (=> res!2977452 e!4418989)))

(assert (=> b!7382433 (= res!2977452 (is-Star!19330 (regOne!39172 r1!2370)))))

(assert (= (and d!2285844 (not res!2977453)) b!7382429))

(assert (= (and b!7382429 res!2977455) b!7382433))

(assert (= (and b!7382433 (not res!2977452)) b!7382432))

(assert (= (and b!7382432 c!1372228) b!7382427))

(assert (= (and b!7382432 (not c!1372228)) b!7382431))

(assert (= (and b!7382427 (not res!2977454)) b!7382430))

(assert (= (and b!7382431 res!2977456) b!7382428))

(assert (= (or b!7382430 b!7382431) bm!679400))

(assert (= (or b!7382427 b!7382428) bm!679401))

(declare-fun m!8031964 () Bool)

(assert (=> bm!679400 m!8031964))

(declare-fun m!8031966 () Bool)

(assert (=> bm!679401 m!8031966))

(assert (=> d!2285760 d!2285844))

(declare-fun d!2285846 () Bool)

(declare-fun res!2977457 () Bool)

(declare-fun e!4418995 () Bool)

(assert (=> d!2285846 (=> res!2977457 e!4418995)))

(assert (=> d!2285846 (= res!2977457 (is-Nil!71702 (exprs!8770 cWitness!61)))))

(assert (=> d!2285846 (= (forall!18116 (exprs!8770 cWitness!61) lambda!458618) e!4418995)))

(declare-fun b!7382434 () Bool)

(declare-fun e!4418996 () Bool)

(assert (=> b!7382434 (= e!4418995 e!4418996)))

(declare-fun res!2977458 () Bool)

(assert (=> b!7382434 (=> (not res!2977458) (not e!4418996))))

(assert (=> b!7382434 (= res!2977458 (dynLambda!29536 lambda!458618 (h!78150 (exprs!8770 cWitness!61))))))

(declare-fun b!7382435 () Bool)

(assert (=> b!7382435 (= e!4418996 (forall!18116 (t!386321 (exprs!8770 cWitness!61)) lambda!458618))))

(assert (= (and d!2285846 (not res!2977457)) b!7382434))

(assert (= (and b!7382434 res!2977458) b!7382435))

(declare-fun b_lambda!284749 () Bool)

(assert (=> (not b_lambda!284749) (not b!7382434)))

(declare-fun m!8031968 () Bool)

(assert (=> b!7382434 m!8031968))

(declare-fun m!8031970 () Bool)

(assert (=> b!7382435 m!8031970))

(assert (=> d!2285748 d!2285846))

(assert (=> b!7382106 d!2285760))

(declare-fun d!2285848 () Bool)

(declare-fun c!1372231 () Bool)

(assert (=> d!2285848 (= c!1372231 (is-Nil!71702 lt!2617150))))

(declare-fun e!4418999 () (Set Regex!19330))

(assert (=> d!2285848 (= (content!15189 lt!2617150) e!4418999)))

(declare-fun b!7382440 () Bool)

(assert (=> b!7382440 (= e!4418999 (as set.empty (Set Regex!19330)))))

(declare-fun b!7382441 () Bool)

(assert (=> b!7382441 (= e!4418999 (set.union (set.insert (h!78150 lt!2617150) (as set.empty (Set Regex!19330))) (content!15189 (t!386321 lt!2617150))))))

(assert (= (and d!2285848 c!1372231) b!7382440))

(assert (= (and d!2285848 (not c!1372231)) b!7382441))

(declare-fun m!8031972 () Bool)

(assert (=> b!7382441 m!8031972))

(declare-fun m!8031974 () Bool)

(assert (=> b!7382441 m!8031974))

(assert (=> d!2285776 d!2285848))

(declare-fun d!2285850 () Bool)

(declare-fun c!1372232 () Bool)

(assert (=> d!2285850 (= c!1372232 (is-Nil!71702 (exprs!8770 cWitness!61)))))

(declare-fun e!4419000 () (Set Regex!19330))

(assert (=> d!2285850 (= (content!15189 (exprs!8770 cWitness!61)) e!4419000)))

(declare-fun b!7382442 () Bool)

(assert (=> b!7382442 (= e!4419000 (as set.empty (Set Regex!19330)))))

(declare-fun b!7382443 () Bool)

(assert (=> b!7382443 (= e!4419000 (set.union (set.insert (h!78150 (exprs!8770 cWitness!61)) (as set.empty (Set Regex!19330))) (content!15189 (t!386321 (exprs!8770 cWitness!61)))))))

(assert (= (and d!2285850 c!1372232) b!7382442))

(assert (= (and d!2285850 (not c!1372232)) b!7382443))

(declare-fun m!8031976 () Bool)

(assert (=> b!7382443 m!8031976))

(assert (=> b!7382443 m!8031956))

(assert (=> d!2285776 d!2285850))

(declare-fun d!2285852 () Bool)

(declare-fun c!1372233 () Bool)

(assert (=> d!2285852 (= c!1372233 (is-Nil!71702 (exprs!8770 ct2!378)))))

(declare-fun e!4419001 () (Set Regex!19330))

(assert (=> d!2285852 (= (content!15189 (exprs!8770 ct2!378)) e!4419001)))

(declare-fun b!7382444 () Bool)

(assert (=> b!7382444 (= e!4419001 (as set.empty (Set Regex!19330)))))

(declare-fun b!7382445 () Bool)

(assert (=> b!7382445 (= e!4419001 (set.union (set.insert (h!78150 (exprs!8770 ct2!378)) (as set.empty (Set Regex!19330))) (content!15189 (t!386321 (exprs!8770 ct2!378)))))))

(assert (= (and d!2285852 c!1372233) b!7382444))

(assert (= (and d!2285852 (not c!1372233)) b!7382445))

(declare-fun m!8031978 () Bool)

(assert (=> b!7382445 m!8031978))

(declare-fun m!8031980 () Bool)

(assert (=> b!7382445 m!8031980))

(assert (=> d!2285776 d!2285852))

(declare-fun d!2285854 () Bool)

(declare-fun res!2977459 () Bool)

(declare-fun e!4419002 () Bool)

(assert (=> d!2285854 (=> res!2977459 e!4419002)))

(assert (=> d!2285854 (= res!2977459 (is-Nil!71702 (exprs!8770 ct1!282)))))

(assert (=> d!2285854 (= (forall!18116 (exprs!8770 ct1!282) lambda!458619) e!4419002)))

(declare-fun b!7382446 () Bool)

(declare-fun e!4419003 () Bool)

(assert (=> b!7382446 (= e!4419002 e!4419003)))

(declare-fun res!2977460 () Bool)

(assert (=> b!7382446 (=> (not res!2977460) (not e!4419003))))

(assert (=> b!7382446 (= res!2977460 (dynLambda!29536 lambda!458619 (h!78150 (exprs!8770 ct1!282))))))

(declare-fun b!7382447 () Bool)

(assert (=> b!7382447 (= e!4419003 (forall!18116 (t!386321 (exprs!8770 ct1!282)) lambda!458619))))

(assert (= (and d!2285854 (not res!2977459)) b!7382446))

(assert (= (and b!7382446 res!2977460) b!7382447))

(declare-fun b_lambda!284751 () Bool)

(assert (=> (not b_lambda!284751) (not b!7382446)))

(declare-fun m!8031982 () Bool)

(assert (=> b!7382446 m!8031982))

(declare-fun m!8031984 () Bool)

(assert (=> b!7382447 m!8031984))

(assert (=> d!2285750 d!2285854))

(declare-fun c!1372238 () Bool)

(declare-fun bm!679402 () Bool)

(declare-fun call!679408 () (Set Context!16540))

(declare-fun call!679412 () List!71826)

(declare-fun c!1372234 () Bool)

(declare-fun c!1372237 () Bool)

(assert (=> bm!679402 (= call!679408 (derivationStepZipperDown!3156 (ite c!1372237 (regOne!39173 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (ite c!1372234 (regTwo!39172 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (ite c!1372238 (regOne!39172 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (reg!19659 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))))))) (ite (or c!1372237 c!1372234) (ite (or c!1372129 c!1372126) lt!2617091 (Context!16541 call!679307)) (Context!16541 call!679412)) c!10362))))

(declare-fun bm!679403 () Bool)

(declare-fun call!679409 () List!71826)

(assert (=> bm!679403 (= call!679412 call!679409)))

(declare-fun b!7382448 () Bool)

(declare-fun e!4419009 () (Set Context!16540))

(assert (=> b!7382448 (= e!4419009 (set.insert (ite (or c!1372129 c!1372126) lt!2617091 (Context!16541 call!679307)) (as set.empty (Set Context!16540))))))

(declare-fun b!7382449 () Bool)

(declare-fun e!4419006 () Bool)

(assert (=> b!7382449 (= e!4419006 (nullable!8404 (regOne!39172 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))))))))

(declare-fun bm!679404 () Bool)

(assert (=> bm!679404 (= call!679409 ($colon$colon!3308 (exprs!8770 (ite (or c!1372129 c!1372126) lt!2617091 (Context!16541 call!679307))) (ite (or c!1372234 c!1372238) (regTwo!39172 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))))))))

(declare-fun bm!679405 () Bool)

(declare-fun call!679410 () (Set Context!16540))

(assert (=> bm!679405 (= call!679410 call!679408)))

(declare-fun b!7382450 () Bool)

(declare-fun e!4419008 () (Set Context!16540))

(declare-fun call!679411 () (Set Context!16540))

(assert (=> b!7382450 (= e!4419008 call!679411)))

(declare-fun b!7382452 () Bool)

(declare-fun e!4419007 () (Set Context!16540))

(assert (=> b!7382452 (= e!4419009 e!4419007)))

(assert (=> b!7382452 (= c!1372237 (is-Union!19330 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))))))

(declare-fun b!7382453 () Bool)

(declare-fun e!4419004 () (Set Context!16540))

(declare-fun call!679407 () (Set Context!16540))

(assert (=> b!7382453 (= e!4419004 (set.union call!679407 call!679410))))

(declare-fun bm!679406 () Bool)

(assert (=> bm!679406 (= call!679407 (derivationStepZipperDown!3156 (ite c!1372237 (regTwo!39173 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (regOne!39172 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))))) (ite c!1372237 (ite (or c!1372129 c!1372126) lt!2617091 (Context!16541 call!679307)) (Context!16541 call!679409)) c!10362))))

(declare-fun b!7382454 () Bool)

(assert (=> b!7382454 (= e!4419007 (set.union call!679408 call!679407))))

(declare-fun b!7382455 () Bool)

(assert (=> b!7382455 (= c!1372234 e!4419006)))

(declare-fun res!2977461 () Bool)

(assert (=> b!7382455 (=> (not res!2977461) (not e!4419006))))

(assert (=> b!7382455 (= res!2977461 (is-Concat!28175 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))))))

(assert (=> b!7382455 (= e!4419007 e!4419004)))

(declare-fun d!2285856 () Bool)

(declare-fun c!1372235 () Bool)

(assert (=> d!2285856 (= c!1372235 (and (is-ElementMatch!19330 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (= (c!1372106 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) c!10362)))))

(assert (=> d!2285856 (= (derivationStepZipperDown!3156 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))) (ite (or c!1372129 c!1372126) lt!2617091 (Context!16541 call!679307)) c!10362) e!4419009)))

(declare-fun b!7382451 () Bool)

(declare-fun e!4419005 () (Set Context!16540))

(assert (=> b!7382451 (= e!4419005 call!679411)))

(declare-fun b!7382456 () Bool)

(assert (=> b!7382456 (= e!4419008 (as set.empty (Set Context!16540)))))

(declare-fun c!1372236 () Bool)

(declare-fun b!7382457 () Bool)

(assert (=> b!7382457 (= c!1372236 (is-Star!19330 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))))))

(assert (=> b!7382457 (= e!4419005 e!4419008)))

(declare-fun b!7382458 () Bool)

(assert (=> b!7382458 (= e!4419004 e!4419005)))

(assert (=> b!7382458 (= c!1372238 (is-Concat!28175 (ite c!1372129 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372126 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372130 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))))))

(declare-fun bm!679407 () Bool)

(assert (=> bm!679407 (= call!679411 call!679410)))

(assert (= (and d!2285856 c!1372235) b!7382448))

(assert (= (and d!2285856 (not c!1372235)) b!7382452))

(assert (= (and b!7382452 c!1372237) b!7382454))

(assert (= (and b!7382452 (not c!1372237)) b!7382455))

(assert (= (and b!7382455 res!2977461) b!7382449))

(assert (= (and b!7382455 c!1372234) b!7382453))

(assert (= (and b!7382455 (not c!1372234)) b!7382458))

(assert (= (and b!7382458 c!1372238) b!7382451))

(assert (= (and b!7382458 (not c!1372238)) b!7382457))

(assert (= (and b!7382457 c!1372236) b!7382450))

(assert (= (and b!7382457 (not c!1372236)) b!7382456))

(assert (= (or b!7382451 b!7382450) bm!679403))

(assert (= (or b!7382451 b!7382450) bm!679407))

(assert (= (or b!7382453 bm!679407) bm!679405))

(assert (= (or b!7382453 bm!679403) bm!679404))

(assert (= (or b!7382454 b!7382453) bm!679406))

(assert (= (or b!7382454 bm!679405) bm!679402))

(declare-fun m!8031986 () Bool)

(assert (=> bm!679406 m!8031986))

(declare-fun m!8031988 () Bool)

(assert (=> bm!679404 m!8031988))

(declare-fun m!8031990 () Bool)

(assert (=> b!7382448 m!8031990))

(declare-fun m!8031992 () Bool)

(assert (=> bm!679402 m!8031992))

(declare-fun m!8031994 () Bool)

(assert (=> b!7382449 m!8031994))

(assert (=> bm!679297 d!2285856))

(declare-fun d!2285858 () Bool)

(assert (=> d!2285858 (= ($colon$colon!3308 (exprs!8770 (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378)))) (ite (or c!1372146 c!1372150) (regTwo!39172 (reg!19659 r1!2370)) (reg!19659 r1!2370))) (Cons!71702 (ite (or c!1372146 c!1372150) (regTwo!39172 (reg!19659 r1!2370)) (reg!19659 r1!2370)) (exprs!8770 (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))))))))

(assert (=> bm!679320 d!2285858))

(declare-fun bm!679408 () Bool)

(declare-fun c!1372243 () Bool)

(declare-fun c!1372242 () Bool)

(declare-fun c!1372239 () Bool)

(declare-fun call!679418 () List!71826)

(declare-fun call!679414 () (Set Context!16540))

(assert (=> bm!679408 (= call!679414 (derivationStepZipperDown!3156 (ite c!1372242 (regOne!39173 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (ite c!1372239 (regTwo!39172 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (ite c!1372243 (regOne!39172 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (reg!19659 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370)))))))) (ite (or c!1372242 c!1372239) (ite (or c!1372155 c!1372152) (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679334)) (Context!16541 call!679418)) c!10362))))

(declare-fun bm!679409 () Bool)

(declare-fun call!679415 () List!71826)

(assert (=> bm!679409 (= call!679418 call!679415)))

(declare-fun e!4419015 () (Set Context!16540))

(declare-fun b!7382459 () Bool)

(assert (=> b!7382459 (= e!4419015 (set.insert (ite (or c!1372155 c!1372152) (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679334)) (as set.empty (Set Context!16540))))))

(declare-fun e!4419012 () Bool)

(declare-fun b!7382460 () Bool)

(assert (=> b!7382460 (= e!4419012 (nullable!8404 (regOne!39172 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370)))))))))

(declare-fun bm!679410 () Bool)

(assert (=> bm!679410 (= call!679415 ($colon$colon!3308 (exprs!8770 (ite (or c!1372155 c!1372152) (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679334))) (ite (or c!1372239 c!1372243) (regTwo!39172 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370)))))))))

(declare-fun bm!679411 () Bool)

(declare-fun call!679416 () (Set Context!16540))

(assert (=> bm!679411 (= call!679416 call!679414)))

(declare-fun b!7382461 () Bool)

(declare-fun e!4419014 () (Set Context!16540))

(declare-fun call!679417 () (Set Context!16540))

(assert (=> b!7382461 (= e!4419014 call!679417)))

(declare-fun b!7382463 () Bool)

(declare-fun e!4419013 () (Set Context!16540))

(assert (=> b!7382463 (= e!4419015 e!4419013)))

(assert (=> b!7382463 (= c!1372242 (is-Union!19330 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))))))

(declare-fun b!7382464 () Bool)

(declare-fun e!4419010 () (Set Context!16540))

(declare-fun call!679413 () (Set Context!16540))

(assert (=> b!7382464 (= e!4419010 (set.union call!679413 call!679416))))

(declare-fun bm!679412 () Bool)

(assert (=> bm!679412 (= call!679413 (derivationStepZipperDown!3156 (ite c!1372242 (regTwo!39173 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (regOne!39172 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370)))))) (ite c!1372242 (ite (or c!1372155 c!1372152) (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679334)) (Context!16541 call!679415)) c!10362))))

(declare-fun b!7382465 () Bool)

(assert (=> b!7382465 (= e!4419013 (set.union call!679414 call!679413))))

(declare-fun b!7382466 () Bool)

(assert (=> b!7382466 (= c!1372239 e!4419012)))

(declare-fun res!2977462 () Bool)

(assert (=> b!7382466 (=> (not res!2977462) (not e!4419012))))

(assert (=> b!7382466 (= res!2977462 (is-Concat!28175 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))))))

(assert (=> b!7382466 (= e!4419013 e!4419010)))

(declare-fun d!2285860 () Bool)

(declare-fun c!1372240 () Bool)

(assert (=> d!2285860 (= c!1372240 (and (is-ElementMatch!19330 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (= (c!1372106 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) c!10362)))))

(assert (=> d!2285860 (= (derivationStepZipperDown!3156 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370)))) (ite (or c!1372155 c!1372152) (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) (Context!16541 call!679334)) c!10362) e!4419015)))

(declare-fun b!7382462 () Bool)

(declare-fun e!4419011 () (Set Context!16540))

(assert (=> b!7382462 (= e!4419011 call!679417)))

(declare-fun b!7382467 () Bool)

(assert (=> b!7382467 (= e!4419014 (as set.empty (Set Context!16540)))))

(declare-fun b!7382468 () Bool)

(declare-fun c!1372241 () Bool)

(assert (=> b!7382468 (= c!1372241 (is-Star!19330 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))))))

(assert (=> b!7382468 (= e!4419011 e!4419014)))

(declare-fun b!7382469 () Bool)

(assert (=> b!7382469 (= e!4419010 e!4419011)))

(assert (=> b!7382469 (= c!1372243 (is-Concat!28175 (ite c!1372155 (regOne!39173 r1!2370) (ite c!1372152 (regTwo!39172 r1!2370) (ite c!1372156 (regOne!39172 r1!2370) (reg!19659 r1!2370))))))))

(declare-fun bm!679413 () Bool)

(assert (=> bm!679413 (= call!679417 call!679416)))

(assert (= (and d!2285860 c!1372240) b!7382459))

(assert (= (and d!2285860 (not c!1372240)) b!7382463))

(assert (= (and b!7382463 c!1372242) b!7382465))

(assert (= (and b!7382463 (not c!1372242)) b!7382466))

(assert (= (and b!7382466 res!2977462) b!7382460))

(assert (= (and b!7382466 c!1372239) b!7382464))

(assert (= (and b!7382466 (not c!1372239)) b!7382469))

(assert (= (and b!7382469 c!1372243) b!7382462))

(assert (= (and b!7382469 (not c!1372243)) b!7382468))

(assert (= (and b!7382468 c!1372241) b!7382461))

(assert (= (and b!7382468 (not c!1372241)) b!7382467))

(assert (= (or b!7382462 b!7382461) bm!679409))

(assert (= (or b!7382462 b!7382461) bm!679413))

(assert (= (or b!7382464 bm!679413) bm!679411))

(assert (= (or b!7382464 bm!679409) bm!679410))

(assert (= (or b!7382465 b!7382464) bm!679412))

(assert (= (or b!7382465 bm!679411) bm!679408))

(declare-fun m!8031996 () Bool)

(assert (=> bm!679412 m!8031996))

(declare-fun m!8031998 () Bool)

(assert (=> bm!679410 m!8031998))

(declare-fun m!8032000 () Bool)

(assert (=> b!7382459 m!8032000))

(declare-fun m!8032002 () Bool)

(assert (=> bm!679408 m!8032002))

(declare-fun m!8032004 () Bool)

(assert (=> b!7382460 m!8032004))

(assert (=> bm!679324 d!2285860))

(declare-fun d!2285862 () Bool)

(assert (=> d!2285862 (= (nullable!8404 (regOne!39172 (reg!19659 r1!2370))) (nullableFct!3373 (regOne!39172 (reg!19659 r1!2370))))))

(declare-fun bs!1921704 () Bool)

(assert (= bs!1921704 d!2285862))

(declare-fun m!8032006 () Bool)

(assert (=> bs!1921704 m!8032006))

(assert (=> b!7382138 d!2285862))

(declare-fun d!2285864 () Bool)

(assert (=> d!2285864 (= ($colon$colon!3308 (exprs!8770 lt!2617091) (ite (or c!1372126 c!1372130) (regTwo!39172 (reg!19659 r1!2370)) (reg!19659 r1!2370))) (Cons!71702 (ite (or c!1372126 c!1372130) (regTwo!39172 (reg!19659 r1!2370)) (reg!19659 r1!2370)) (exprs!8770 lt!2617091)))))

(assert (=> bm!679299 d!2285864))

(declare-fun d!2285866 () Bool)

(assert (=> d!2285866 (= ($colon$colon!3308 (exprs!8770 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378)))) (ite (or c!1372152 c!1372156) (regTwo!39172 r1!2370) r1!2370)) (Cons!71702 (ite (or c!1372152 c!1372156) (regTwo!39172 r1!2370) r1!2370) (exprs!8770 (Context!16541 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))))))))

(assert (=> bm!679326 d!2285866))

(declare-fun d!2285868 () Bool)

(declare-fun res!2977464 () Bool)

(declare-fun e!4419021 () Bool)

(assert (=> d!2285868 (=> res!2977464 e!4419021)))

(assert (=> d!2285868 (= res!2977464 (is-ElementMatch!19330 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096)))))))

(assert (=> d!2285868 (= (validRegex!9926 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096)))) e!4419021)))

(declare-fun b!7382470 () Bool)

(declare-fun res!2977466 () Bool)

(declare-fun e!4419019 () Bool)

(assert (=> b!7382470 (=> res!2977466 e!4419019)))

(assert (=> b!7382470 (= res!2977466 (not (is-Concat!28175 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096))))))))

(declare-fun e!4419018 () Bool)

(assert (=> b!7382470 (= e!4419018 e!4419019)))

(declare-fun b!7382471 () Bool)

(declare-fun e!4419016 () Bool)

(assert (=> b!7382471 (= e!4419019 e!4419016)))

(declare-fun res!2977463 () Bool)

(assert (=> b!7382471 (=> (not res!2977463) (not e!4419016))))

(declare-fun call!679421 () Bool)

(assert (=> b!7382471 (= res!2977463 call!679421)))

(declare-fun b!7382472 () Bool)

(declare-fun e!4419020 () Bool)

(declare-fun e!4419017 () Bool)

(assert (=> b!7382472 (= e!4419020 e!4419017)))

(declare-fun res!2977465 () Bool)

(assert (=> b!7382472 (= res!2977465 (not (nullable!8404 (reg!19659 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096)))))))))

(assert (=> b!7382472 (=> (not res!2977465) (not e!4419017))))

(declare-fun b!7382473 () Bool)

(declare-fun e!4419022 () Bool)

(assert (=> b!7382473 (= e!4419022 call!679421)))

(declare-fun c!1372245 () Bool)

(declare-fun bm!679414 () Bool)

(assert (=> bm!679414 (= call!679421 (validRegex!9926 (ite c!1372245 (regTwo!39173 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096)))) (regOne!39172 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096)))))))))

(declare-fun b!7382474 () Bool)

(assert (=> b!7382474 (= e!4419021 e!4419020)))

(declare-fun c!1372244 () Bool)

(assert (=> b!7382474 (= c!1372244 (is-Star!19330 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096)))))))

(declare-fun b!7382475 () Bool)

(declare-fun call!679420 () Bool)

(assert (=> b!7382475 (= e!4419016 call!679420)))

(declare-fun b!7382476 () Bool)

(assert (=> b!7382476 (= e!4419020 e!4419018)))

(assert (=> b!7382476 (= c!1372245 (is-Union!19330 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096)))))))

(declare-fun bm!679415 () Bool)

(declare-fun call!679419 () Bool)

(assert (=> bm!679415 (= call!679420 call!679419)))

(declare-fun b!7382477 () Bool)

(assert (=> b!7382477 (= e!4419017 call!679419)))

(declare-fun bm!679416 () Bool)

(assert (=> bm!679416 (= call!679419 (validRegex!9926 (ite c!1372244 (reg!19659 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096)))) (ite c!1372245 (regOne!39173 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096)))) (regTwo!39172 (ite c!1372112 (reg!19659 lt!2617096) (ite c!1372113 (regOne!39173 lt!2617096) (regTwo!39172 lt!2617096))))))))))

(declare-fun b!7382478 () Bool)

(declare-fun res!2977467 () Bool)

(assert (=> b!7382478 (=> (not res!2977467) (not e!4419022))))

(assert (=> b!7382478 (= res!2977467 call!679420)))

(assert (=> b!7382478 (= e!4419018 e!4419022)))

(assert (= (and d!2285868 (not res!2977464)) b!7382474))

(assert (= (and b!7382474 c!1372244) b!7382472))

(assert (= (and b!7382474 (not c!1372244)) b!7382476))

(assert (= (and b!7382472 res!2977465) b!7382477))

(assert (= (and b!7382476 c!1372245) b!7382478))

(assert (= (and b!7382476 (not c!1372245)) b!7382470))

(assert (= (and b!7382478 res!2977467) b!7382473))

(assert (= (and b!7382470 (not res!2977466)) b!7382471))

(assert (= (and b!7382471 res!2977463) b!7382475))

(assert (= (or b!7382478 b!7382475) bm!679415))

(assert (= (or b!7382473 b!7382471) bm!679414))

(assert (= (or b!7382477 bm!679415) bm!679416))

(declare-fun m!8032008 () Bool)

(assert (=> b!7382472 m!8032008))

(declare-fun m!8032010 () Bool)

(assert (=> bm!679414 m!8032010))

(declare-fun m!8032012 () Bool)

(assert (=> bm!679416 m!8032012))

(assert (=> bm!679281 d!2285868))

(assert (=> b!7382081 d!2285862))

(declare-fun b!7382481 () Bool)

(declare-fun res!2977468 () Bool)

(declare-fun e!4419024 () Bool)

(assert (=> b!7382481 (=> (not res!2977468) (not e!4419024))))

(declare-fun lt!2617187 () List!71826)

(assert (=> b!7382481 (= res!2977468 (= (size!42167 lt!2617187) (+ (size!42167 (t!386321 (exprs!8770 ct1!282))) (size!42167 (exprs!8770 ct2!378)))))))

(declare-fun b!7382482 () Bool)

(assert (=> b!7382482 (= e!4419024 (or (not (= (exprs!8770 ct2!378) Nil!71702)) (= lt!2617187 (t!386321 (exprs!8770 ct1!282)))))))

(declare-fun b!7382479 () Bool)

(declare-fun e!4419023 () List!71826)

(assert (=> b!7382479 (= e!4419023 (exprs!8770 ct2!378))))

(declare-fun d!2285870 () Bool)

(assert (=> d!2285870 e!4419024))

(declare-fun res!2977469 () Bool)

(assert (=> d!2285870 (=> (not res!2977469) (not e!4419024))))

(assert (=> d!2285870 (= res!2977469 (= (content!15189 lt!2617187) (set.union (content!15189 (t!386321 (exprs!8770 ct1!282))) (content!15189 (exprs!8770 ct2!378)))))))

(assert (=> d!2285870 (= lt!2617187 e!4419023)))

(declare-fun c!1372246 () Bool)

(assert (=> d!2285870 (= c!1372246 (is-Nil!71702 (t!386321 (exprs!8770 ct1!282))))))

(assert (=> d!2285870 (= (++!17146 (t!386321 (exprs!8770 ct1!282)) (exprs!8770 ct2!378)) lt!2617187)))

(declare-fun b!7382480 () Bool)

(assert (=> b!7382480 (= e!4419023 (Cons!71702 (h!78150 (t!386321 (exprs!8770 ct1!282))) (++!17146 (t!386321 (t!386321 (exprs!8770 ct1!282))) (exprs!8770 ct2!378))))))

(assert (= (and d!2285870 c!1372246) b!7382479))

(assert (= (and d!2285870 (not c!1372246)) b!7382480))

(assert (= (and d!2285870 res!2977469) b!7382481))

(assert (= (and b!7382481 res!2977468) b!7382482))

(declare-fun m!8032014 () Bool)

(assert (=> b!7382481 m!8032014))

(assert (=> b!7382481 m!8031926))

(assert (=> b!7382481 m!8031708))

(declare-fun m!8032016 () Bool)

(assert (=> d!2285870 m!8032016))

(declare-fun m!8032018 () Bool)

(assert (=> d!2285870 m!8032018))

(assert (=> d!2285870 m!8031714))

(declare-fun m!8032020 () Bool)

(assert (=> b!7382480 m!8032020))

(assert (=> b!7382168 d!2285870))

(declare-fun d!2285872 () Bool)

(assert (=> d!2285872 (= ($colon$colon!3308 (exprs!8770 ct1!282) (ite (or c!1372135 c!1372139) (regTwo!39172 r1!2370) r1!2370)) (Cons!71702 (ite (or c!1372135 c!1372139) (regTwo!39172 r1!2370) r1!2370) (exprs!8770 ct1!282)))))

(assert (=> bm!679307 d!2285872))

(declare-fun d!2285874 () Bool)

(declare-fun res!2977470 () Bool)

(declare-fun e!4419025 () Bool)

(assert (=> d!2285874 (=> res!2977470 e!4419025)))

(assert (=> d!2285874 (= res!2977470 (is-Nil!71702 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378))))))

(assert (=> d!2285874 (= (forall!18116 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378)) lambda!458606) e!4419025)))

(declare-fun b!7382483 () Bool)

(declare-fun e!4419026 () Bool)

(assert (=> b!7382483 (= e!4419025 e!4419026)))

(declare-fun res!2977471 () Bool)

(assert (=> b!7382483 (=> (not res!2977471) (not e!4419026))))

(assert (=> b!7382483 (= res!2977471 (dynLambda!29536 lambda!458606 (h!78150 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378)))))))

(declare-fun b!7382484 () Bool)

(assert (=> b!7382484 (= e!4419026 (forall!18116 (t!386321 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378))) lambda!458606))))

(assert (= (and d!2285874 (not res!2977470)) b!7382483))

(assert (= (and b!7382483 res!2977471) b!7382484))

(declare-fun b_lambda!284753 () Bool)

(assert (=> (not b_lambda!284753) (not b!7382483)))

(declare-fun m!8032022 () Bool)

(assert (=> b!7382483 m!8032022))

(declare-fun m!8032024 () Bool)

(assert (=> b!7382484 m!8032024))

(assert (=> d!2285770 d!2285874))

(assert (=> d!2285770 d!2285776))

(declare-fun d!2285876 () Bool)

(assert (=> d!2285876 (forall!18116 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378)) lambda!458606)))

(assert (=> d!2285876 true))

(declare-fun _$78!980 () Unit!165609)

(assert (=> d!2285876 (= (choose!57351 (exprs!8770 cWitness!61) (exprs!8770 ct2!378) lambda!458606) _$78!980)))

(declare-fun bs!1921705 () Bool)

(assert (= bs!1921705 d!2285876))

(assert (=> bs!1921705 m!8031578))

(assert (=> bs!1921705 m!8031578))

(assert (=> bs!1921705 m!8031698))

(assert (=> d!2285770 d!2285876))

(declare-fun d!2285878 () Bool)

(declare-fun res!2977472 () Bool)

(declare-fun e!4419027 () Bool)

(assert (=> d!2285878 (=> res!2977472 e!4419027)))

(assert (=> d!2285878 (= res!2977472 (is-Nil!71702 (exprs!8770 cWitness!61)))))

(assert (=> d!2285878 (= (forall!18116 (exprs!8770 cWitness!61) lambda!458606) e!4419027)))

(declare-fun b!7382485 () Bool)

(declare-fun e!4419028 () Bool)

(assert (=> b!7382485 (= e!4419027 e!4419028)))

(declare-fun res!2977473 () Bool)

(assert (=> b!7382485 (=> (not res!2977473) (not e!4419028))))

(assert (=> b!7382485 (= res!2977473 (dynLambda!29536 lambda!458606 (h!78150 (exprs!8770 cWitness!61))))))

(declare-fun b!7382486 () Bool)

(assert (=> b!7382486 (= e!4419028 (forall!18116 (t!386321 (exprs!8770 cWitness!61)) lambda!458606))))

(assert (= (and d!2285878 (not res!2977472)) b!7382485))

(assert (= (and b!7382485 res!2977473) b!7382486))

(declare-fun b_lambda!284755 () Bool)

(assert (=> (not b_lambda!284755) (not b!7382485)))

(declare-fun m!8032026 () Bool)

(assert (=> b!7382485 m!8032026))

(declare-fun m!8032028 () Bool)

(assert (=> b!7382486 m!8032028))

(assert (=> d!2285770 d!2285878))

(declare-fun d!2285880 () Bool)

(declare-fun lt!2617188 () Int)

(assert (=> d!2285880 (>= lt!2617188 0)))

(declare-fun e!4419029 () Int)

(assert (=> d!2285880 (= lt!2617188 e!4419029)))

(declare-fun c!1372247 () Bool)

(assert (=> d!2285880 (= c!1372247 (is-Nil!71702 lt!2617149))))

(assert (=> d!2285880 (= (size!42167 lt!2617149) lt!2617188)))

(declare-fun b!7382487 () Bool)

(assert (=> b!7382487 (= e!4419029 0)))

(declare-fun b!7382488 () Bool)

(assert (=> b!7382488 (= e!4419029 (+ 1 (size!42167 (t!386321 lt!2617149))))))

(assert (= (and d!2285880 c!1372247) b!7382487))

(assert (= (and d!2285880 (not c!1372247)) b!7382488))

(declare-fun m!8032030 () Bool)

(assert (=> b!7382488 m!8032030))

(assert (=> b!7382135 d!2285880))

(declare-fun d!2285882 () Bool)

(declare-fun lt!2617189 () Int)

(assert (=> d!2285882 (>= lt!2617189 0)))

(declare-fun e!4419030 () Int)

(assert (=> d!2285882 (= lt!2617189 e!4419030)))

(declare-fun c!1372248 () Bool)

(assert (=> d!2285882 (= c!1372248 (is-Nil!71702 lt!2617095))))

(assert (=> d!2285882 (= (size!42167 lt!2617095) lt!2617189)))

(declare-fun b!7382489 () Bool)

(assert (=> b!7382489 (= e!4419030 0)))

(declare-fun b!7382490 () Bool)

(assert (=> b!7382490 (= e!4419030 (+ 1 (size!42167 (t!386321 lt!2617095))))))

(assert (= (and d!2285882 c!1372248) b!7382489))

(assert (= (and d!2285882 (not c!1372248)) b!7382490))

(declare-fun m!8032032 () Bool)

(assert (=> b!7382490 m!8032032))

(assert (=> b!7382135 d!2285882))

(assert (=> b!7382135 d!2285834))

(declare-fun b!7382493 () Bool)

(declare-fun res!2977474 () Bool)

(declare-fun e!4419032 () Bool)

(assert (=> b!7382493 (=> (not res!2977474) (not e!4419032))))

(declare-fun lt!2617190 () List!71826)

(assert (=> b!7382493 (= res!2977474 (= (size!42167 lt!2617190) (+ (size!42167 (t!386321 lt!2617095)) (size!42167 (exprs!8770 ct2!378)))))))

(declare-fun b!7382494 () Bool)

(assert (=> b!7382494 (= e!4419032 (or (not (= (exprs!8770 ct2!378) Nil!71702)) (= lt!2617190 (t!386321 lt!2617095))))))

(declare-fun b!7382491 () Bool)

(declare-fun e!4419031 () List!71826)

(assert (=> b!7382491 (= e!4419031 (exprs!8770 ct2!378))))

(declare-fun d!2285884 () Bool)

(assert (=> d!2285884 e!4419032))

(declare-fun res!2977475 () Bool)

(assert (=> d!2285884 (=> (not res!2977475) (not e!4419032))))

(assert (=> d!2285884 (= res!2977475 (= (content!15189 lt!2617190) (set.union (content!15189 (t!386321 lt!2617095)) (content!15189 (exprs!8770 ct2!378)))))))

(assert (=> d!2285884 (= lt!2617190 e!4419031)))

(declare-fun c!1372249 () Bool)

(assert (=> d!2285884 (= c!1372249 (is-Nil!71702 (t!386321 lt!2617095)))))

(assert (=> d!2285884 (= (++!17146 (t!386321 lt!2617095) (exprs!8770 ct2!378)) lt!2617190)))

(declare-fun b!7382492 () Bool)

(assert (=> b!7382492 (= e!4419031 (Cons!71702 (h!78150 (t!386321 lt!2617095)) (++!17146 (t!386321 (t!386321 lt!2617095)) (exprs!8770 ct2!378))))))

(assert (= (and d!2285884 c!1372249) b!7382491))

(assert (= (and d!2285884 (not c!1372249)) b!7382492))

(assert (= (and d!2285884 res!2977475) b!7382493))

(assert (= (and b!7382493 res!2977474) b!7382494))

(declare-fun m!8032034 () Bool)

(assert (=> b!7382493 m!8032034))

(assert (=> b!7382493 m!8032032))

(assert (=> b!7382493 m!8031708))

(declare-fun m!8032036 () Bool)

(assert (=> d!2285884 m!8032036))

(declare-fun m!8032038 () Bool)

(assert (=> d!2285884 m!8032038))

(assert (=> d!2285884 m!8031714))

(declare-fun m!8032040 () Bool)

(assert (=> b!7382492 m!8032040))

(assert (=> b!7382134 d!2285884))

(assert (=> b!7382153 d!2285760))

(declare-fun c!1372250 () Bool)

(declare-fun bm!679417 () Bool)

(declare-fun c!1372253 () Bool)

(declare-fun call!679423 () (Set Context!16540))

(declare-fun call!679427 () List!71826)

(declare-fun c!1372254 () Bool)

(assert (=> bm!679417 (= call!679423 (derivationStepZipperDown!3156 (ite c!1372253 (regOne!39173 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (ite c!1372250 (regTwo!39172 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (ite c!1372254 (regOne!39172 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (reg!19659 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))))))) (ite (or c!1372253 c!1372250) (ite (or c!1372149 c!1372146) (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679328)) (Context!16541 call!679427)) c!10362))))

(declare-fun bm!679418 () Bool)

(declare-fun call!679424 () List!71826)

(assert (=> bm!679418 (= call!679427 call!679424)))

(declare-fun e!4419038 () (Set Context!16540))

(declare-fun b!7382495 () Bool)

(assert (=> b!7382495 (= e!4419038 (set.insert (ite (or c!1372149 c!1372146) (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679328)) (as set.empty (Set Context!16540))))))

(declare-fun e!4419035 () Bool)

(declare-fun b!7382496 () Bool)

(assert (=> b!7382496 (= e!4419035 (nullable!8404 (regOne!39172 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))))))))

(declare-fun bm!679419 () Bool)

(assert (=> bm!679419 (= call!679424 ($colon$colon!3308 (exprs!8770 (ite (or c!1372149 c!1372146) (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679328))) (ite (or c!1372250 c!1372254) (regTwo!39172 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))))))))

(declare-fun bm!679420 () Bool)

(declare-fun call!679425 () (Set Context!16540))

(assert (=> bm!679420 (= call!679425 call!679423)))

(declare-fun b!7382497 () Bool)

(declare-fun e!4419037 () (Set Context!16540))

(declare-fun call!679426 () (Set Context!16540))

(assert (=> b!7382497 (= e!4419037 call!679426)))

(declare-fun b!7382499 () Bool)

(declare-fun e!4419036 () (Set Context!16540))

(assert (=> b!7382499 (= e!4419038 e!4419036)))

(assert (=> b!7382499 (= c!1372253 (is-Union!19330 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))))))

(declare-fun b!7382500 () Bool)

(declare-fun e!4419033 () (Set Context!16540))

(declare-fun call!679422 () (Set Context!16540))

(assert (=> b!7382500 (= e!4419033 (set.union call!679422 call!679425))))

(declare-fun bm!679421 () Bool)

(assert (=> bm!679421 (= call!679422 (derivationStepZipperDown!3156 (ite c!1372253 (regTwo!39173 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (regOne!39172 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))))) (ite c!1372253 (ite (or c!1372149 c!1372146) (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679328)) (Context!16541 call!679424)) c!10362))))

(declare-fun b!7382501 () Bool)

(assert (=> b!7382501 (= e!4419036 (set.union call!679423 call!679422))))

(declare-fun b!7382502 () Bool)

(assert (=> b!7382502 (= c!1372250 e!4419035)))

(declare-fun res!2977476 () Bool)

(assert (=> b!7382502 (=> (not res!2977476) (not e!4419035))))

(assert (=> b!7382502 (= res!2977476 (is-Concat!28175 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))))))

(assert (=> b!7382502 (= e!4419036 e!4419033)))

(declare-fun c!1372251 () Bool)

(declare-fun d!2285886 () Bool)

(assert (=> d!2285886 (= c!1372251 (and (is-ElementMatch!19330 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) (= (c!1372106 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))) c!10362)))))

(assert (=> d!2285886 (= (derivationStepZipperDown!3156 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370))))) (ite (or c!1372149 c!1372146) (Context!16541 (++!17146 lt!2617095 (exprs!8770 ct2!378))) (Context!16541 call!679328)) c!10362) e!4419038)))

(declare-fun b!7382498 () Bool)

(declare-fun e!4419034 () (Set Context!16540))

(assert (=> b!7382498 (= e!4419034 call!679426)))

(declare-fun b!7382503 () Bool)

(assert (=> b!7382503 (= e!4419037 (as set.empty (Set Context!16540)))))

(declare-fun b!7382504 () Bool)

(declare-fun c!1372252 () Bool)

(assert (=> b!7382504 (= c!1372252 (is-Star!19330 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))))))

(assert (=> b!7382504 (= e!4419034 e!4419037)))

(declare-fun b!7382505 () Bool)

(assert (=> b!7382505 (= e!4419033 e!4419034)))

(assert (=> b!7382505 (= c!1372254 (is-Concat!28175 (ite c!1372149 (regOne!39173 (reg!19659 r1!2370)) (ite c!1372146 (regTwo!39172 (reg!19659 r1!2370)) (ite c!1372150 (regOne!39172 (reg!19659 r1!2370)) (reg!19659 (reg!19659 r1!2370)))))))))

(declare-fun bm!679422 () Bool)

(assert (=> bm!679422 (= call!679426 call!679425)))

(assert (= (and d!2285886 c!1372251) b!7382495))

(assert (= (and d!2285886 (not c!1372251)) b!7382499))

(assert (= (and b!7382499 c!1372253) b!7382501))

(assert (= (and b!7382499 (not c!1372253)) b!7382502))

(assert (= (and b!7382502 res!2977476) b!7382496))

(assert (= (and b!7382502 c!1372250) b!7382500))

(assert (= (and b!7382502 (not c!1372250)) b!7382505))

(assert (= (and b!7382505 c!1372254) b!7382498))

(assert (= (and b!7382505 (not c!1372254)) b!7382504))

(assert (= (and b!7382504 c!1372252) b!7382497))

(assert (= (and b!7382504 (not c!1372252)) b!7382503))

(assert (= (or b!7382498 b!7382497) bm!679418))

(assert (= (or b!7382498 b!7382497) bm!679422))

(assert (= (or b!7382500 bm!679422) bm!679420))

(assert (= (or b!7382500 bm!679418) bm!679419))

(assert (= (or b!7382501 b!7382500) bm!679421))

(assert (= (or b!7382501 bm!679420) bm!679417))

(declare-fun m!8032042 () Bool)

(assert (=> bm!679421 m!8032042))

(declare-fun m!8032044 () Bool)

(assert (=> bm!679419 m!8032044))

(declare-fun m!8032046 () Bool)

(assert (=> b!7382495 m!8032046))

(declare-fun m!8032048 () Bool)

(assert (=> bm!679417 m!8032048))

(declare-fun m!8032050 () Bool)

(assert (=> b!7382496 m!8032050))

(assert (=> bm!679318 d!2285886))

(declare-fun d!2285888 () Bool)

(assert (=> d!2285888 (= (nullable!8404 (reg!19659 lt!2617096)) (nullableFct!3373 (reg!19659 lt!2617096)))))

(declare-fun bs!1921706 () Bool)

(assert (= bs!1921706 d!2285888))

(declare-fun m!8032052 () Bool)

(assert (=> bs!1921706 m!8032052))

(assert (=> b!7382038 d!2285888))

(declare-fun d!2285890 () Bool)

(declare-fun c!1372255 () Bool)

(assert (=> d!2285890 (= c!1372255 (is-Nil!71702 lt!2617151))))

(declare-fun e!4419039 () (Set Regex!19330))

(assert (=> d!2285890 (= (content!15189 lt!2617151) e!4419039)))

(declare-fun b!7382506 () Bool)

(assert (=> b!7382506 (= e!4419039 (as set.empty (Set Regex!19330)))))

(declare-fun b!7382507 () Bool)

(assert (=> b!7382507 (= e!4419039 (set.union (set.insert (h!78150 lt!2617151) (as set.empty (Set Regex!19330))) (content!15189 (t!386321 lt!2617151))))))

(assert (= (and d!2285890 c!1372255) b!7382506))

(assert (= (and d!2285890 (not c!1372255)) b!7382507))

(declare-fun m!8032054 () Bool)

(assert (=> b!7382507 m!8032054))

(declare-fun m!8032056 () Bool)

(assert (=> b!7382507 m!8032056))

(assert (=> d!2285780 d!2285890))

(declare-fun d!2285892 () Bool)

(declare-fun c!1372256 () Bool)

(assert (=> d!2285892 (= c!1372256 (is-Nil!71702 (exprs!8770 ct1!282)))))

(declare-fun e!4419040 () (Set Regex!19330))

(assert (=> d!2285892 (= (content!15189 (exprs!8770 ct1!282)) e!4419040)))

(declare-fun b!7382508 () Bool)

(assert (=> b!7382508 (= e!4419040 (as set.empty (Set Regex!19330)))))

(declare-fun b!7382509 () Bool)

(assert (=> b!7382509 (= e!4419040 (set.union (set.insert (h!78150 (exprs!8770 ct1!282)) (as set.empty (Set Regex!19330))) (content!15189 (t!386321 (exprs!8770 ct1!282)))))))

(assert (= (and d!2285892 c!1372256) b!7382508))

(assert (= (and d!2285892 (not c!1372256)) b!7382509))

(declare-fun m!8032058 () Bool)

(assert (=> b!7382509 m!8032058))

(assert (=> b!7382509 m!8032018))

(assert (=> d!2285780 d!2285892))

(assert (=> d!2285780 d!2285852))

(declare-fun d!2285894 () Bool)

(declare-fun res!2977478 () Bool)

(declare-fun e!4419046 () Bool)

(assert (=> d!2285894 (=> res!2977478 e!4419046)))

(assert (=> d!2285894 (= res!2977478 (is-ElementMatch!19330 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370)))))))

(assert (=> d!2285894 (= (validRegex!9926 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370)))) e!4419046)))

(declare-fun b!7382510 () Bool)

(declare-fun res!2977480 () Bool)

(declare-fun e!4419044 () Bool)

(assert (=> b!7382510 (=> res!2977480 e!4419044)))

(assert (=> b!7382510 (= res!2977480 (not (is-Concat!28175 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370))))))))

(declare-fun e!4419043 () Bool)

(assert (=> b!7382510 (= e!4419043 e!4419044)))

(declare-fun b!7382511 () Bool)

(declare-fun e!4419041 () Bool)

(assert (=> b!7382511 (= e!4419044 e!4419041)))

(declare-fun res!2977477 () Bool)

(assert (=> b!7382511 (=> (not res!2977477) (not e!4419041))))

(declare-fun call!679430 () Bool)

(assert (=> b!7382511 (= res!2977477 call!679430)))

(declare-fun b!7382512 () Bool)

(declare-fun e!4419045 () Bool)

(declare-fun e!4419042 () Bool)

(assert (=> b!7382512 (= e!4419045 e!4419042)))

(declare-fun res!2977479 () Bool)

(assert (=> b!7382512 (= res!2977479 (not (nullable!8404 (reg!19659 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370)))))))))

(assert (=> b!7382512 (=> (not res!2977479) (not e!4419042))))

(declare-fun b!7382513 () Bool)

(declare-fun e!4419047 () Bool)

(assert (=> b!7382513 (= e!4419047 call!679430)))

(declare-fun c!1372258 () Bool)

(declare-fun bm!679423 () Bool)

(assert (=> bm!679423 (= call!679430 (validRegex!9926 (ite c!1372258 (regTwo!39173 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370)))) (regOne!39172 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370)))))))))

(declare-fun b!7382514 () Bool)

(assert (=> b!7382514 (= e!4419046 e!4419045)))

(declare-fun c!1372257 () Bool)

(assert (=> b!7382514 (= c!1372257 (is-Star!19330 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370)))))))

(declare-fun b!7382515 () Bool)

(declare-fun call!679429 () Bool)

(assert (=> b!7382515 (= e!4419041 call!679429)))

(declare-fun b!7382516 () Bool)

(assert (=> b!7382516 (= e!4419045 e!4419043)))

(assert (=> b!7382516 (= c!1372258 (is-Union!19330 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370)))))))

(declare-fun bm!679424 () Bool)

(declare-fun call!679428 () Bool)

(assert (=> bm!679424 (= call!679429 call!679428)))

(declare-fun b!7382517 () Bool)

(assert (=> b!7382517 (= e!4419042 call!679428)))

(declare-fun bm!679425 () Bool)

(assert (=> bm!679425 (= call!679428 (validRegex!9926 (ite c!1372257 (reg!19659 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370)))) (ite c!1372258 (regOne!39173 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370)))) (regTwo!39172 (ite c!1372114 (reg!19659 r1!2370) (ite c!1372115 (regOne!39173 r1!2370) (regTwo!39172 r1!2370))))))))))

(declare-fun b!7382518 () Bool)

(declare-fun res!2977481 () Bool)

(assert (=> b!7382518 (=> (not res!2977481) (not e!4419047))))

(assert (=> b!7382518 (= res!2977481 call!679429)))

(assert (=> b!7382518 (= e!4419043 e!4419047)))

(assert (= (and d!2285894 (not res!2977478)) b!7382514))

(assert (= (and b!7382514 c!1372257) b!7382512))

(assert (= (and b!7382514 (not c!1372257)) b!7382516))

(assert (= (and b!7382512 res!2977479) b!7382517))

(assert (= (and b!7382516 c!1372258) b!7382518))

(assert (= (and b!7382516 (not c!1372258)) b!7382510))

(assert (= (and b!7382518 res!2977481) b!7382513))

(assert (= (and b!7382510 (not res!2977480)) b!7382511))

(assert (= (and b!7382511 res!2977477) b!7382515))

(assert (= (or b!7382518 b!7382515) bm!679424))

(assert (= (or b!7382513 b!7382511) bm!679423))

(assert (= (or b!7382517 bm!679424) bm!679425))

(declare-fun m!8032060 () Bool)

(assert (=> b!7382512 m!8032060))

(declare-fun m!8032062 () Bool)

(assert (=> bm!679423 m!8032062))

(declare-fun m!8032064 () Bool)

(assert (=> bm!679425 m!8032064))

(assert (=> bm!679284 d!2285894))

(declare-fun c!1372262 () Bool)

(declare-fun c!1372259 () Bool)

(declare-fun call!679432 () (Set Context!16540))

(declare-fun c!1372263 () Bool)

(declare-fun call!679436 () List!71826)

(declare-fun bm!679426 () Bool)

(assert (=> bm!679426 (= call!679432 (derivationStepZipperDown!3156 (ite c!1372262 (regOne!39173 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (ite c!1372259 (regTwo!39172 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (ite c!1372263 (regOne!39172 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (reg!19659 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370)))))))) (ite (or c!1372262 c!1372259) (ite (or c!1372138 c!1372135) ct1!282 (Context!16541 call!679317)) (Context!16541 call!679436)) c!10362))))

(declare-fun bm!679427 () Bool)

(declare-fun call!679433 () List!71826)

(assert (=> bm!679427 (= call!679436 call!679433)))

(declare-fun e!4419053 () (Set Context!16540))

(declare-fun b!7382519 () Bool)

(assert (=> b!7382519 (= e!4419053 (set.insert (ite (or c!1372138 c!1372135) ct1!282 (Context!16541 call!679317)) (as set.empty (Set Context!16540))))))

(declare-fun e!4419050 () Bool)

(declare-fun b!7382520 () Bool)

(assert (=> b!7382520 (= e!4419050 (nullable!8404 (regOne!39172 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370)))))))))

(declare-fun bm!679428 () Bool)

(assert (=> bm!679428 (= call!679433 ($colon$colon!3308 (exprs!8770 (ite (or c!1372138 c!1372135) ct1!282 (Context!16541 call!679317))) (ite (or c!1372259 c!1372263) (regTwo!39172 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370)))))))))

(declare-fun bm!679429 () Bool)

(declare-fun call!679434 () (Set Context!16540))

(assert (=> bm!679429 (= call!679434 call!679432)))

(declare-fun b!7382521 () Bool)

(declare-fun e!4419052 () (Set Context!16540))

(declare-fun call!679435 () (Set Context!16540))

(assert (=> b!7382521 (= e!4419052 call!679435)))

(declare-fun b!7382523 () Bool)

(declare-fun e!4419051 () (Set Context!16540))

(assert (=> b!7382523 (= e!4419053 e!4419051)))

(assert (=> b!7382523 (= c!1372262 (is-Union!19330 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))))))

(declare-fun b!7382524 () Bool)

(declare-fun e!4419048 () (Set Context!16540))

(declare-fun call!679431 () (Set Context!16540))

(assert (=> b!7382524 (= e!4419048 (set.union call!679431 call!679434))))

(declare-fun bm!679430 () Bool)

(assert (=> bm!679430 (= call!679431 (derivationStepZipperDown!3156 (ite c!1372262 (regTwo!39173 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (regOne!39172 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370)))))) (ite c!1372262 (ite (or c!1372138 c!1372135) ct1!282 (Context!16541 call!679317)) (Context!16541 call!679433)) c!10362))))

(declare-fun b!7382525 () Bool)

(assert (=> b!7382525 (= e!4419051 (set.union call!679432 call!679431))))

(declare-fun b!7382526 () Bool)

(assert (=> b!7382526 (= c!1372259 e!4419050)))

(declare-fun res!2977482 () Bool)

(assert (=> b!7382526 (=> (not res!2977482) (not e!4419050))))

(assert (=> b!7382526 (= res!2977482 (is-Concat!28175 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))))))

(assert (=> b!7382526 (= e!4419051 e!4419048)))

(declare-fun d!2285896 () Bool)

(declare-fun c!1372260 () Bool)

(assert (=> d!2285896 (= c!1372260 (and (is-ElementMatch!19330 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) (= (c!1372106 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))) c!10362)))))

(assert (=> d!2285896 (= (derivationStepZipperDown!3156 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370)))) (ite (or c!1372138 c!1372135) ct1!282 (Context!16541 call!679317)) c!10362) e!4419053)))

(declare-fun b!7382522 () Bool)

(declare-fun e!4419049 () (Set Context!16540))

(assert (=> b!7382522 (= e!4419049 call!679435)))

(declare-fun b!7382527 () Bool)

(assert (=> b!7382527 (= e!4419052 (as set.empty (Set Context!16540)))))

(declare-fun b!7382528 () Bool)

(declare-fun c!1372261 () Bool)

(assert (=> b!7382528 (= c!1372261 (is-Star!19330 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))))))

(assert (=> b!7382528 (= e!4419049 e!4419052)))

(declare-fun b!7382529 () Bool)

(assert (=> b!7382529 (= e!4419048 e!4419049)))

(assert (=> b!7382529 (= c!1372263 (is-Concat!28175 (ite c!1372138 (regOne!39173 r1!2370) (ite c!1372135 (regTwo!39172 r1!2370) (ite c!1372139 (regOne!39172 r1!2370) (reg!19659 r1!2370))))))))

(declare-fun bm!679431 () Bool)

(assert (=> bm!679431 (= call!679435 call!679434)))

(assert (= (and d!2285896 c!1372260) b!7382519))

(assert (= (and d!2285896 (not c!1372260)) b!7382523))

(assert (= (and b!7382523 c!1372262) b!7382525))

(assert (= (and b!7382523 (not c!1372262)) b!7382526))

(assert (= (and b!7382526 res!2977482) b!7382520))

(assert (= (and b!7382526 c!1372259) b!7382524))

(assert (= (and b!7382526 (not c!1372259)) b!7382529))

(assert (= (and b!7382529 c!1372263) b!7382522))

(assert (= (and b!7382529 (not c!1372263)) b!7382528))

(assert (= (and b!7382528 c!1372261) b!7382521))

(assert (= (and b!7382528 (not c!1372261)) b!7382527))

(assert (= (or b!7382522 b!7382521) bm!679427))

(assert (= (or b!7382522 b!7382521) bm!679431))

(assert (= (or b!7382524 bm!679431) bm!679429))

(assert (= (or b!7382524 bm!679427) bm!679428))

(assert (= (or b!7382525 b!7382524) bm!679430))

(assert (= (or b!7382525 bm!679429) bm!679426))

(declare-fun m!8032066 () Bool)

(assert (=> bm!679430 m!8032066))

(declare-fun m!8032068 () Bool)

(assert (=> bm!679428 m!8032068))

(declare-fun m!8032070 () Bool)

(assert (=> b!7382519 m!8032070))

(declare-fun m!8032072 () Bool)

(assert (=> bm!679426 m!8032072))

(declare-fun m!8032074 () Bool)

(assert (=> b!7382520 m!8032074))

(assert (=> bm!679305 d!2285896))

(declare-fun d!2285898 () Bool)

(declare-fun res!2977483 () Bool)

(declare-fun e!4419054 () Bool)

(assert (=> d!2285898 (=> res!2977483 e!4419054)))

(assert (=> d!2285898 (= res!2977483 (is-Nil!71702 (++!17146 lt!2617095 (exprs!8770 ct2!378))))))

(assert (=> d!2285898 (= (forall!18116 (++!17146 lt!2617095 (exprs!8770 ct2!378)) lambda!458606) e!4419054)))

(declare-fun b!7382530 () Bool)

(declare-fun e!4419055 () Bool)

(assert (=> b!7382530 (= e!4419054 e!4419055)))

(declare-fun res!2977484 () Bool)

(assert (=> b!7382530 (=> (not res!2977484) (not e!4419055))))

(assert (=> b!7382530 (= res!2977484 (dynLambda!29536 lambda!458606 (h!78150 (++!17146 lt!2617095 (exprs!8770 ct2!378)))))))

(declare-fun b!7382531 () Bool)

(assert (=> b!7382531 (= e!4419055 (forall!18116 (t!386321 (++!17146 lt!2617095 (exprs!8770 ct2!378))) lambda!458606))))

(assert (= (and d!2285898 (not res!2977483)) b!7382530))

(assert (= (and b!7382530 res!2977484) b!7382531))

(declare-fun b_lambda!284757 () Bool)

(assert (=> (not b_lambda!284757) (not b!7382530)))

(declare-fun m!8032076 () Bool)

(assert (=> b!7382530 m!8032076))

(declare-fun m!8032078 () Bool)

(assert (=> b!7382531 m!8032078))

(assert (=> d!2285766 d!2285898))

(assert (=> d!2285766 d!2285772))

(declare-fun d!2285900 () Bool)

(assert (=> d!2285900 (forall!18116 (++!17146 lt!2617095 (exprs!8770 ct2!378)) lambda!458606)))

(assert (=> d!2285900 true))

(declare-fun _$78!981 () Unit!165609)

(assert (=> d!2285900 (= (choose!57351 lt!2617095 (exprs!8770 ct2!378) lambda!458606) _$78!981)))

(declare-fun bs!1921707 () Bool)

(assert (= bs!1921707 d!2285900))

(assert (=> bs!1921707 m!8031586))

(assert (=> bs!1921707 m!8031586))

(assert (=> bs!1921707 m!8031692))

(assert (=> d!2285766 d!2285900))

(declare-fun d!2285902 () Bool)

(declare-fun res!2977485 () Bool)

(declare-fun e!4419056 () Bool)

(assert (=> d!2285902 (=> res!2977485 e!4419056)))

(assert (=> d!2285902 (= res!2977485 (is-Nil!71702 lt!2617095))))

(assert (=> d!2285902 (= (forall!18116 lt!2617095 lambda!458606) e!4419056)))

(declare-fun b!7382532 () Bool)

(declare-fun e!4419057 () Bool)

(assert (=> b!7382532 (= e!4419056 e!4419057)))

(declare-fun res!2977486 () Bool)

(assert (=> b!7382532 (=> (not res!2977486) (not e!4419057))))

(assert (=> b!7382532 (= res!2977486 (dynLambda!29536 lambda!458606 (h!78150 lt!2617095)))))

(declare-fun b!7382533 () Bool)

(assert (=> b!7382533 (= e!4419057 (forall!18116 (t!386321 lt!2617095) lambda!458606))))

(assert (= (and d!2285902 (not res!2977485)) b!7382532))

(assert (= (and b!7382532 res!2977486) b!7382533))

(declare-fun b_lambda!284759 () Bool)

(assert (=> (not b_lambda!284759) (not b!7382532)))

(declare-fun m!8032080 () Bool)

(assert (=> b!7382532 m!8032080))

(declare-fun m!8032082 () Bool)

(assert (=> b!7382533 m!8032082))

(assert (=> d!2285766 d!2285902))

(declare-fun d!2285904 () Bool)

(declare-fun res!2977488 () Bool)

(declare-fun e!4419063 () Bool)

(assert (=> d!2285904 (=> res!2977488 e!4419063)))

(assert (=> d!2285904 (= res!2977488 (is-ElementMatch!19330 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096))))))

(assert (=> d!2285904 (= (validRegex!9926 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096))) e!4419063)))

(declare-fun b!7382534 () Bool)

(declare-fun res!2977490 () Bool)

(declare-fun e!4419061 () Bool)

(assert (=> b!7382534 (=> res!2977490 e!4419061)))

(assert (=> b!7382534 (= res!2977490 (not (is-Concat!28175 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096)))))))

(declare-fun e!4419060 () Bool)

(assert (=> b!7382534 (= e!4419060 e!4419061)))

(declare-fun b!7382535 () Bool)

(declare-fun e!4419058 () Bool)

(assert (=> b!7382535 (= e!4419061 e!4419058)))

(declare-fun res!2977487 () Bool)

(assert (=> b!7382535 (=> (not res!2977487) (not e!4419058))))

(declare-fun call!679439 () Bool)

(assert (=> b!7382535 (= res!2977487 call!679439)))

(declare-fun b!7382536 () Bool)

(declare-fun e!4419062 () Bool)

(declare-fun e!4419059 () Bool)

(assert (=> b!7382536 (= e!4419062 e!4419059)))

(declare-fun res!2977489 () Bool)

(assert (=> b!7382536 (= res!2977489 (not (nullable!8404 (reg!19659 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096))))))))

(assert (=> b!7382536 (=> (not res!2977489) (not e!4419059))))

(declare-fun b!7382537 () Bool)

(declare-fun e!4419064 () Bool)

(assert (=> b!7382537 (= e!4419064 call!679439)))

(declare-fun c!1372265 () Bool)

(declare-fun bm!679432 () Bool)

(assert (=> bm!679432 (= call!679439 (validRegex!9926 (ite c!1372265 (regTwo!39173 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096))) (regOne!39172 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096))))))))

(declare-fun b!7382538 () Bool)

(assert (=> b!7382538 (= e!4419063 e!4419062)))

(declare-fun c!1372264 () Bool)

(assert (=> b!7382538 (= c!1372264 (is-Star!19330 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096))))))

(declare-fun b!7382539 () Bool)

(declare-fun call!679438 () Bool)

(assert (=> b!7382539 (= e!4419058 call!679438)))

(declare-fun b!7382540 () Bool)

(assert (=> b!7382540 (= e!4419062 e!4419060)))

(assert (=> b!7382540 (= c!1372265 (is-Union!19330 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096))))))

(declare-fun bm!679433 () Bool)

(declare-fun call!679437 () Bool)

(assert (=> bm!679433 (= call!679438 call!679437)))

(declare-fun b!7382541 () Bool)

(assert (=> b!7382541 (= e!4419059 call!679437)))

(declare-fun bm!679434 () Bool)

(assert (=> bm!679434 (= call!679437 (validRegex!9926 (ite c!1372264 (reg!19659 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096))) (ite c!1372265 (regOne!39173 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096))) (regTwo!39172 (ite c!1372113 (regTwo!39173 lt!2617096) (regOne!39172 lt!2617096)))))))))

(declare-fun b!7382542 () Bool)

(declare-fun res!2977491 () Bool)

(assert (=> b!7382542 (=> (not res!2977491) (not e!4419064))))

(assert (=> b!7382542 (= res!2977491 call!679438)))

(assert (=> b!7382542 (= e!4419060 e!4419064)))

(assert (= (and d!2285904 (not res!2977488)) b!7382538))

(assert (= (and b!7382538 c!1372264) b!7382536))

(assert (= (and b!7382538 (not c!1372264)) b!7382540))

(assert (= (and b!7382536 res!2977489) b!7382541))

(assert (= (and b!7382540 c!1372265) b!7382542))

(assert (= (and b!7382540 (not c!1372265)) b!7382534))

(assert (= (and b!7382542 res!2977491) b!7382537))

(assert (= (and b!7382534 (not res!2977490)) b!7382535))

(assert (= (and b!7382535 res!2977487) b!7382539))

(assert (= (or b!7382542 b!7382539) bm!679433))

(assert (= (or b!7382537 b!7382535) bm!679432))

(assert (= (or b!7382541 bm!679433) bm!679434))

(declare-fun m!8032084 () Bool)

(assert (=> b!7382536 m!8032084))

(declare-fun m!8032086 () Bool)

(assert (=> bm!679432 m!8032086))

(declare-fun m!8032088 () Bool)

(assert (=> bm!679434 m!8032088))

(assert (=> bm!679279 d!2285904))

(declare-fun d!2285906 () Bool)

(declare-fun res!2977492 () Bool)

(declare-fun e!4419065 () Bool)

(assert (=> d!2285906 (=> res!2977492 e!4419065)))

(assert (=> d!2285906 (= res!2977492 (is-Nil!71702 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))))))

(assert (=> d!2285906 (= (forall!18116 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378)) lambda!458606) e!4419065)))

(declare-fun b!7382543 () Bool)

(declare-fun e!4419066 () Bool)

(assert (=> b!7382543 (= e!4419065 e!4419066)))

(declare-fun res!2977493 () Bool)

(assert (=> b!7382543 (=> (not res!2977493) (not e!4419066))))

(assert (=> b!7382543 (= res!2977493 (dynLambda!29536 lambda!458606 (h!78150 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378)))))))

(declare-fun b!7382544 () Bool)

(assert (=> b!7382544 (= e!4419066 (forall!18116 (t!386321 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378))) lambda!458606))))

(assert (= (and d!2285906 (not res!2977492)) b!7382543))

(assert (= (and b!7382543 res!2977493) b!7382544))

(declare-fun b_lambda!284761 () Bool)

(assert (=> (not b_lambda!284761) (not b!7382543)))

(declare-fun m!8032090 () Bool)

(assert (=> b!7382543 m!8032090))

(declare-fun m!8032092 () Bool)

(assert (=> b!7382544 m!8032092))

(assert (=> d!2285782 d!2285906))

(assert (=> d!2285782 d!2285780))

(declare-fun d!2285908 () Bool)

(assert (=> d!2285908 (forall!18116 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378)) lambda!458606)))

(assert (=> d!2285908 true))

(declare-fun _$78!982 () Unit!165609)

(assert (=> d!2285908 (= (choose!57351 (exprs!8770 ct1!282) (exprs!8770 ct2!378) lambda!458606) _$78!982)))

(declare-fun bs!1921708 () Bool)

(assert (= bs!1921708 d!2285908))

(assert (=> bs!1921708 m!8031558))

(assert (=> bs!1921708 m!8031558))

(assert (=> bs!1921708 m!8031754))

(assert (=> d!2285782 d!2285908))

(declare-fun d!2285910 () Bool)

(declare-fun res!2977494 () Bool)

(declare-fun e!4419067 () Bool)

(assert (=> d!2285910 (=> res!2977494 e!4419067)))

(assert (=> d!2285910 (= res!2977494 (is-Nil!71702 (exprs!8770 ct1!282)))))

(assert (=> d!2285910 (= (forall!18116 (exprs!8770 ct1!282) lambda!458606) e!4419067)))

(declare-fun b!7382545 () Bool)

(declare-fun e!4419068 () Bool)

(assert (=> b!7382545 (= e!4419067 e!4419068)))

(declare-fun res!2977495 () Bool)

(assert (=> b!7382545 (=> (not res!2977495) (not e!4419068))))

(assert (=> b!7382545 (= res!2977495 (dynLambda!29536 lambda!458606 (h!78150 (exprs!8770 ct1!282))))))

(declare-fun b!7382546 () Bool)

(assert (=> b!7382546 (= e!4419068 (forall!18116 (t!386321 (exprs!8770 ct1!282)) lambda!458606))))

(assert (= (and d!2285910 (not res!2977494)) b!7382545))

(assert (= (and b!7382545 res!2977495) b!7382546))

(declare-fun b_lambda!284763 () Bool)

(assert (=> (not b_lambda!284763) (not b!7382545)))

(declare-fun m!8032094 () Bool)

(assert (=> b!7382545 m!8032094))

(declare-fun m!8032096 () Bool)

(assert (=> b!7382546 m!8032096))

(assert (=> d!2285782 d!2285910))

(declare-fun d!2285912 () Bool)

(assert (=> d!2285912 (= (nullable!8404 (reg!19659 r1!2370)) (nullableFct!3373 (reg!19659 r1!2370)))))

(declare-fun bs!1921709 () Bool)

(assert (= bs!1921709 d!2285912))

(declare-fun m!8032098 () Bool)

(assert (=> bs!1921709 m!8032098))

(assert (=> b!7382047 d!2285912))

(declare-fun d!2285914 () Bool)

(declare-fun lt!2617191 () Int)

(assert (=> d!2285914 (>= lt!2617191 0)))

(declare-fun e!4419069 () Int)

(assert (=> d!2285914 (= lt!2617191 e!4419069)))

(declare-fun c!1372266 () Bool)

(assert (=> d!2285914 (= c!1372266 (is-Nil!71702 lt!2617150))))

(assert (=> d!2285914 (= (size!42167 lt!2617150) lt!2617191)))

(declare-fun b!7382547 () Bool)

(assert (=> b!7382547 (= e!4419069 0)))

(declare-fun b!7382548 () Bool)

(assert (=> b!7382548 (= e!4419069 (+ 1 (size!42167 (t!386321 lt!2617150))))))

(assert (= (and d!2285914 c!1372266) b!7382547))

(assert (= (and d!2285914 (not c!1372266)) b!7382548))

(declare-fun m!8032100 () Bool)

(assert (=> b!7382548 m!8032100))

(assert (=> b!7382150 d!2285914))

(declare-fun d!2285916 () Bool)

(declare-fun lt!2617192 () Int)

(assert (=> d!2285916 (>= lt!2617192 0)))

(declare-fun e!4419070 () Int)

(assert (=> d!2285916 (= lt!2617192 e!4419070)))

(declare-fun c!1372267 () Bool)

(assert (=> d!2285916 (= c!1372267 (is-Nil!71702 (exprs!8770 cWitness!61)))))

(assert (=> d!2285916 (= (size!42167 (exprs!8770 cWitness!61)) lt!2617192)))

(declare-fun b!7382549 () Bool)

(assert (=> b!7382549 (= e!4419070 0)))

(declare-fun b!7382550 () Bool)

(assert (=> b!7382550 (= e!4419070 (+ 1 (size!42167 (t!386321 (exprs!8770 cWitness!61)))))))

(assert (= (and d!2285916 c!1372267) b!7382549))

(assert (= (and d!2285916 (not c!1372267)) b!7382550))

(assert (=> b!7382550 m!8031952))

(assert (=> b!7382150 d!2285916))

(assert (=> b!7382150 d!2285834))

(declare-fun call!679441 () (Set Context!16540))

(declare-fun c!1372271 () Bool)

(declare-fun call!679445 () List!71826)

(declare-fun c!1372272 () Bool)

(declare-fun bm!679435 () Bool)

(declare-fun c!1372268 () Bool)

(assert (=> bm!679435 (= call!679441 (derivationStepZipperDown!3156 (ite c!1372271 (regOne!39173 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (ite c!1372268 (regTwo!39172 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (ite c!1372272 (regOne!39172 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (reg!19659 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))))))) (ite (or c!1372271 c!1372268) (ite c!1372129 lt!2617091 (Context!16541 call!679304)) (Context!16541 call!679445)) c!10362))))

(declare-fun bm!679436 () Bool)

(declare-fun call!679442 () List!71826)

(assert (=> bm!679436 (= call!679445 call!679442)))

(declare-fun e!4419076 () (Set Context!16540))

(declare-fun b!7382551 () Bool)

(assert (=> b!7382551 (= e!4419076 (set.insert (ite c!1372129 lt!2617091 (Context!16541 call!679304)) (as set.empty (Set Context!16540))))))

(declare-fun b!7382552 () Bool)

(declare-fun e!4419073 () Bool)

(assert (=> b!7382552 (= e!4419073 (nullable!8404 (regOne!39172 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))))))))

(declare-fun bm!679437 () Bool)

(assert (=> bm!679437 (= call!679442 ($colon$colon!3308 (exprs!8770 (ite c!1372129 lt!2617091 (Context!16541 call!679304))) (ite (or c!1372268 c!1372272) (regTwo!39172 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))))))))

(declare-fun bm!679438 () Bool)

(declare-fun call!679443 () (Set Context!16540))

(assert (=> bm!679438 (= call!679443 call!679441)))

(declare-fun b!7382553 () Bool)

(declare-fun e!4419075 () (Set Context!16540))

(declare-fun call!679444 () (Set Context!16540))

(assert (=> b!7382553 (= e!4419075 call!679444)))

(declare-fun b!7382555 () Bool)

(declare-fun e!4419074 () (Set Context!16540))

(assert (=> b!7382555 (= e!4419076 e!4419074)))

(assert (=> b!7382555 (= c!1372271 (is-Union!19330 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))))))

(declare-fun b!7382556 () Bool)

(declare-fun e!4419071 () (Set Context!16540))

(declare-fun call!679440 () (Set Context!16540))

(assert (=> b!7382556 (= e!4419071 (set.union call!679440 call!679443))))

(declare-fun bm!679439 () Bool)

(assert (=> bm!679439 (= call!679440 (derivationStepZipperDown!3156 (ite c!1372271 (regTwo!39173 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (regOne!39172 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))))) (ite c!1372271 (ite c!1372129 lt!2617091 (Context!16541 call!679304)) (Context!16541 call!679442)) c!10362))))

(declare-fun b!7382557 () Bool)

(assert (=> b!7382557 (= e!4419074 (set.union call!679441 call!679440))))

(declare-fun b!7382558 () Bool)

(assert (=> b!7382558 (= c!1372268 e!4419073)))

(declare-fun res!2977496 () Bool)

(assert (=> b!7382558 (=> (not res!2977496) (not e!4419073))))

(assert (=> b!7382558 (= res!2977496 (is-Concat!28175 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))))))

(assert (=> b!7382558 (= e!4419074 e!4419071)))

(declare-fun c!1372269 () Bool)

(declare-fun d!2285918 () Bool)

(assert (=> d!2285918 (= c!1372269 (and (is-ElementMatch!19330 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) (= (c!1372106 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))) c!10362)))))

(assert (=> d!2285918 (= (derivationStepZipperDown!3156 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370))) (ite c!1372129 lt!2617091 (Context!16541 call!679304)) c!10362) e!4419076)))

(declare-fun b!7382554 () Bool)

(declare-fun e!4419072 () (Set Context!16540))

(assert (=> b!7382554 (= e!4419072 call!679444)))

(declare-fun b!7382559 () Bool)

(assert (=> b!7382559 (= e!4419075 (as set.empty (Set Context!16540)))))

(declare-fun b!7382560 () Bool)

(declare-fun c!1372270 () Bool)

(assert (=> b!7382560 (= c!1372270 (is-Star!19330 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))))))

(assert (=> b!7382560 (= e!4419072 e!4419075)))

(declare-fun b!7382561 () Bool)

(assert (=> b!7382561 (= e!4419071 e!4419072)))

(assert (=> b!7382561 (= c!1372272 (is-Concat!28175 (ite c!1372129 (regTwo!39173 (reg!19659 r1!2370)) (regOne!39172 (reg!19659 r1!2370)))))))

(declare-fun bm!679440 () Bool)

(assert (=> bm!679440 (= call!679444 call!679443)))

(assert (= (and d!2285918 c!1372269) b!7382551))

(assert (= (and d!2285918 (not c!1372269)) b!7382555))

(assert (= (and b!7382555 c!1372271) b!7382557))

(assert (= (and b!7382555 (not c!1372271)) b!7382558))

(assert (= (and b!7382558 res!2977496) b!7382552))

(assert (= (and b!7382558 c!1372268) b!7382556))

(assert (= (and b!7382558 (not c!1372268)) b!7382561))

(assert (= (and b!7382561 c!1372272) b!7382554))

(assert (= (and b!7382561 (not c!1372272)) b!7382560))

(assert (= (and b!7382560 c!1372270) b!7382553))

(assert (= (and b!7382560 (not c!1372270)) b!7382559))

(assert (= (or b!7382554 b!7382553) bm!679436))

(assert (= (or b!7382554 b!7382553) bm!679440))

(assert (= (or b!7382556 bm!679440) bm!679438))

(assert (= (or b!7382556 bm!679436) bm!679437))

(assert (= (or b!7382557 b!7382556) bm!679439))

(assert (= (or b!7382557 bm!679438) bm!679435))

(declare-fun m!8032102 () Bool)

(assert (=> bm!679439 m!8032102))

(declare-fun m!8032104 () Bool)

(assert (=> bm!679437 m!8032104))

(declare-fun m!8032106 () Bool)

(assert (=> b!7382551 m!8032106))

(declare-fun m!8032108 () Bool)

(assert (=> bm!679435 m!8032108))

(declare-fun m!8032110 () Bool)

(assert (=> b!7382552 m!8032110))

(assert (=> bm!679301 d!2285918))

(declare-fun d!2285920 () Bool)

(declare-fun res!2977498 () Bool)

(declare-fun e!4419082 () Bool)

(assert (=> d!2285920 (=> res!2977498 e!4419082)))

(assert (=> d!2285920 (= res!2977498 (is-ElementMatch!19330 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(assert (=> d!2285920 (= (validRegex!9926 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) e!4419082)))

(declare-fun b!7382562 () Bool)

(declare-fun res!2977500 () Bool)

(declare-fun e!4419080 () Bool)

(assert (=> b!7382562 (=> res!2977500 e!4419080)))

(assert (=> b!7382562 (= res!2977500 (not (is-Concat!28175 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)))))))

(declare-fun e!4419079 () Bool)

(assert (=> b!7382562 (= e!4419079 e!4419080)))

(declare-fun b!7382563 () Bool)

(declare-fun e!4419077 () Bool)

(assert (=> b!7382563 (= e!4419080 e!4419077)))

(declare-fun res!2977497 () Bool)

(assert (=> b!7382563 (=> (not res!2977497) (not e!4419077))))

(declare-fun call!679448 () Bool)

(assert (=> b!7382563 (= res!2977497 call!679448)))

(declare-fun b!7382564 () Bool)

(declare-fun e!4419081 () Bool)

(declare-fun e!4419078 () Bool)

(assert (=> b!7382564 (= e!4419081 e!4419078)))

(declare-fun res!2977499 () Bool)

(assert (=> b!7382564 (= res!2977499 (not (nullable!8404 (reg!19659 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))))

(assert (=> b!7382564 (=> (not res!2977499) (not e!4419078))))

(declare-fun b!7382565 () Bool)

(declare-fun e!4419083 () Bool)

(assert (=> b!7382565 (= e!4419083 call!679448)))

(declare-fun bm!679441 () Bool)

(declare-fun c!1372274 () Bool)

(assert (=> bm!679441 (= call!679448 (validRegex!9926 (ite c!1372274 (regTwo!39173 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (regOne!39172 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))))

(declare-fun b!7382566 () Bool)

(assert (=> b!7382566 (= e!4419082 e!4419081)))

(declare-fun c!1372273 () Bool)

(assert (=> b!7382566 (= c!1372273 (is-Star!19330 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(declare-fun b!7382567 () Bool)

(declare-fun call!679447 () Bool)

(assert (=> b!7382567 (= e!4419077 call!679447)))

(declare-fun b!7382568 () Bool)

(assert (=> b!7382568 (= e!4419081 e!4419079)))

(assert (=> b!7382568 (= c!1372274 (is-Union!19330 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))))))

(declare-fun bm!679442 () Bool)

(declare-fun call!679446 () Bool)

(assert (=> bm!679442 (= call!679447 call!679446)))

(declare-fun b!7382569 () Bool)

(assert (=> b!7382569 (= e!4419078 call!679446)))

(declare-fun bm!679443 () Bool)

(assert (=> bm!679443 (= call!679446 (validRegex!9926 (ite c!1372273 (reg!19659 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (ite c!1372274 (regOne!39173 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370))) (regTwo!39172 (ite c!1372115 (regTwo!39173 r1!2370) (regOne!39172 r1!2370)))))))))

(declare-fun b!7382570 () Bool)

(declare-fun res!2977501 () Bool)

(assert (=> b!7382570 (=> (not res!2977501) (not e!4419083))))

(assert (=> b!7382570 (= res!2977501 call!679447)))

(assert (=> b!7382570 (= e!4419079 e!4419083)))

(assert (= (and d!2285920 (not res!2977498)) b!7382566))

(assert (= (and b!7382566 c!1372273) b!7382564))

(assert (= (and b!7382566 (not c!1372273)) b!7382568))

(assert (= (and b!7382564 res!2977499) b!7382569))

(assert (= (and b!7382568 c!1372274) b!7382570))

(assert (= (and b!7382568 (not c!1372274)) b!7382562))

(assert (= (and b!7382570 res!2977501) b!7382565))

(assert (= (and b!7382562 (not res!2977500)) b!7382563))

(assert (= (and b!7382563 res!2977497) b!7382567))

(assert (= (or b!7382570 b!7382567) bm!679442))

(assert (= (or b!7382565 b!7382563) bm!679441))

(assert (= (or b!7382569 bm!679442) bm!679443))

(declare-fun m!8032112 () Bool)

(assert (=> b!7382564 m!8032112))

(declare-fun m!8032114 () Bool)

(assert (=> bm!679441 m!8032114))

(declare-fun m!8032116 () Bool)

(assert (=> bm!679443 m!8032116))

(assert (=> bm!679282 d!2285920))

(declare-fun d!2285922 () Bool)

(declare-fun c!1372275 () Bool)

(assert (=> d!2285922 (= c!1372275 (is-Nil!71702 lt!2617149))))

(declare-fun e!4419084 () (Set Regex!19330))

(assert (=> d!2285922 (= (content!15189 lt!2617149) e!4419084)))

(declare-fun b!7382571 () Bool)

(assert (=> b!7382571 (= e!4419084 (as set.empty (Set Regex!19330)))))

(declare-fun b!7382572 () Bool)

(assert (=> b!7382572 (= e!4419084 (set.union (set.insert (h!78150 lt!2617149) (as set.empty (Set Regex!19330))) (content!15189 (t!386321 lt!2617149))))))

(assert (= (and d!2285922 c!1372275) b!7382571))

(assert (= (and d!2285922 (not c!1372275)) b!7382572))

(declare-fun m!8032118 () Bool)

(assert (=> b!7382572 m!8032118))

(declare-fun m!8032120 () Bool)

(assert (=> b!7382572 m!8032120))

(assert (=> d!2285772 d!2285922))

(declare-fun d!2285924 () Bool)

(declare-fun c!1372276 () Bool)

(assert (=> d!2285924 (= c!1372276 (is-Nil!71702 lt!2617095))))

(declare-fun e!4419085 () (Set Regex!19330))

(assert (=> d!2285924 (= (content!15189 lt!2617095) e!4419085)))

(declare-fun b!7382573 () Bool)

(assert (=> b!7382573 (= e!4419085 (as set.empty (Set Regex!19330)))))

(declare-fun b!7382574 () Bool)

(assert (=> b!7382574 (= e!4419085 (set.union (set.insert (h!78150 lt!2617095) (as set.empty (Set Regex!19330))) (content!15189 (t!386321 lt!2617095))))))

(assert (= (and d!2285924 c!1372276) b!7382573))

(assert (= (and d!2285924 (not c!1372276)) b!7382574))

(declare-fun m!8032122 () Bool)

(assert (=> b!7382574 m!8032122))

(assert (=> b!7382574 m!8032038))

(assert (=> d!2285772 d!2285924))

(assert (=> d!2285772 d!2285852))

(declare-fun e!4419086 () Bool)

(assert (=> b!7382213 (= tp!2099846 e!4419086)))

(declare-fun b!7382575 () Bool)

(assert (=> b!7382575 (= e!4419086 tp_is_empty!48905)))

(declare-fun b!7382576 () Bool)

(declare-fun tp!2099908 () Bool)

(declare-fun tp!2099909 () Bool)

(assert (=> b!7382576 (= e!4419086 (and tp!2099908 tp!2099909))))

(declare-fun b!7382577 () Bool)

(declare-fun tp!2099911 () Bool)

(assert (=> b!7382577 (= e!4419086 tp!2099911)))

(declare-fun b!7382578 () Bool)

(declare-fun tp!2099910 () Bool)

(declare-fun tp!2099912 () Bool)

(assert (=> b!7382578 (= e!4419086 (and tp!2099910 tp!2099912))))

(assert (= (and b!7382213 (is-ElementMatch!19330 (reg!19659 (regOne!39172 r1!2370)))) b!7382575))

(assert (= (and b!7382213 (is-Concat!28175 (reg!19659 (regOne!39172 r1!2370)))) b!7382576))

(assert (= (and b!7382213 (is-Star!19330 (reg!19659 (regOne!39172 r1!2370)))) b!7382577))

(assert (= (and b!7382213 (is-Union!19330 (reg!19659 (regOne!39172 r1!2370)))) b!7382578))

(declare-fun e!4419087 () Bool)

(assert (=> b!7382216 (= tp!2099848 e!4419087)))

(declare-fun b!7382579 () Bool)

(assert (=> b!7382579 (= e!4419087 tp_is_empty!48905)))

(declare-fun b!7382580 () Bool)

(declare-fun tp!2099913 () Bool)

(declare-fun tp!2099914 () Bool)

(assert (=> b!7382580 (= e!4419087 (and tp!2099913 tp!2099914))))

(declare-fun b!7382581 () Bool)

(declare-fun tp!2099916 () Bool)

(assert (=> b!7382581 (= e!4419087 tp!2099916)))

(declare-fun b!7382582 () Bool)

(declare-fun tp!2099915 () Bool)

(declare-fun tp!2099917 () Bool)

(assert (=> b!7382582 (= e!4419087 (and tp!2099915 tp!2099917))))

(assert (= (and b!7382216 (is-ElementMatch!19330 (regOne!39172 (regTwo!39172 r1!2370)))) b!7382579))

(assert (= (and b!7382216 (is-Concat!28175 (regOne!39172 (regTwo!39172 r1!2370)))) b!7382580))

(assert (= (and b!7382216 (is-Star!19330 (regOne!39172 (regTwo!39172 r1!2370)))) b!7382581))

(assert (= (and b!7382216 (is-Union!19330 (regOne!39172 (regTwo!39172 r1!2370)))) b!7382582))

(declare-fun e!4419088 () Bool)

(assert (=> b!7382216 (= tp!2099849 e!4419088)))

(declare-fun b!7382583 () Bool)

(assert (=> b!7382583 (= e!4419088 tp_is_empty!48905)))

(declare-fun b!7382584 () Bool)

(declare-fun tp!2099918 () Bool)

(declare-fun tp!2099919 () Bool)

(assert (=> b!7382584 (= e!4419088 (and tp!2099918 tp!2099919))))

(declare-fun b!7382585 () Bool)

(declare-fun tp!2099921 () Bool)

(assert (=> b!7382585 (= e!4419088 tp!2099921)))

(declare-fun b!7382586 () Bool)

(declare-fun tp!2099920 () Bool)

(declare-fun tp!2099922 () Bool)

(assert (=> b!7382586 (= e!4419088 (and tp!2099920 tp!2099922))))

(assert (= (and b!7382216 (is-ElementMatch!19330 (regTwo!39172 (regTwo!39172 r1!2370)))) b!7382583))

(assert (= (and b!7382216 (is-Concat!28175 (regTwo!39172 (regTwo!39172 r1!2370)))) b!7382584))

(assert (= (and b!7382216 (is-Star!19330 (regTwo!39172 (regTwo!39172 r1!2370)))) b!7382585))

(assert (= (and b!7382216 (is-Union!19330 (regTwo!39172 (regTwo!39172 r1!2370)))) b!7382586))

(declare-fun e!4419089 () Bool)

(assert (=> b!7382206 (= tp!2099835 e!4419089)))

(declare-fun b!7382587 () Bool)

(assert (=> b!7382587 (= e!4419089 tp_is_empty!48905)))

(declare-fun b!7382588 () Bool)

(declare-fun tp!2099923 () Bool)

(declare-fun tp!2099924 () Bool)

(assert (=> b!7382588 (= e!4419089 (and tp!2099923 tp!2099924))))

(declare-fun b!7382589 () Bool)

(declare-fun tp!2099926 () Bool)

(assert (=> b!7382589 (= e!4419089 tp!2099926)))

(declare-fun b!7382590 () Bool)

(declare-fun tp!2099925 () Bool)

(declare-fun tp!2099927 () Bool)

(assert (=> b!7382590 (= e!4419089 (and tp!2099925 tp!2099927))))

(assert (= (and b!7382206 (is-ElementMatch!19330 (regOne!39173 (regOne!39173 r1!2370)))) b!7382587))

(assert (= (and b!7382206 (is-Concat!28175 (regOne!39173 (regOne!39173 r1!2370)))) b!7382588))

(assert (= (and b!7382206 (is-Star!19330 (regOne!39173 (regOne!39173 r1!2370)))) b!7382589))

(assert (= (and b!7382206 (is-Union!19330 (regOne!39173 (regOne!39173 r1!2370)))) b!7382590))

(declare-fun e!4419090 () Bool)

(assert (=> b!7382206 (= tp!2099837 e!4419090)))

(declare-fun b!7382591 () Bool)

(assert (=> b!7382591 (= e!4419090 tp_is_empty!48905)))

(declare-fun b!7382592 () Bool)

(declare-fun tp!2099928 () Bool)

(declare-fun tp!2099929 () Bool)

(assert (=> b!7382592 (= e!4419090 (and tp!2099928 tp!2099929))))

(declare-fun b!7382593 () Bool)

(declare-fun tp!2099931 () Bool)

(assert (=> b!7382593 (= e!4419090 tp!2099931)))

(declare-fun b!7382594 () Bool)

(declare-fun tp!2099930 () Bool)

(declare-fun tp!2099932 () Bool)

(assert (=> b!7382594 (= e!4419090 (and tp!2099930 tp!2099932))))

(assert (= (and b!7382206 (is-ElementMatch!19330 (regTwo!39173 (regOne!39173 r1!2370)))) b!7382591))

(assert (= (and b!7382206 (is-Concat!28175 (regTwo!39173 (regOne!39173 r1!2370)))) b!7382592))

(assert (= (and b!7382206 (is-Star!19330 (regTwo!39173 (regOne!39173 r1!2370)))) b!7382593))

(assert (= (and b!7382206 (is-Union!19330 (regTwo!39173 (regOne!39173 r1!2370)))) b!7382594))

(declare-fun e!4419091 () Bool)

(assert (=> b!7382205 (= tp!2099836 e!4419091)))

(declare-fun b!7382595 () Bool)

(assert (=> b!7382595 (= e!4419091 tp_is_empty!48905)))

(declare-fun b!7382596 () Bool)

(declare-fun tp!2099933 () Bool)

(declare-fun tp!2099934 () Bool)

(assert (=> b!7382596 (= e!4419091 (and tp!2099933 tp!2099934))))

(declare-fun b!7382597 () Bool)

(declare-fun tp!2099936 () Bool)

(assert (=> b!7382597 (= e!4419091 tp!2099936)))

(declare-fun b!7382598 () Bool)

(declare-fun tp!2099935 () Bool)

(declare-fun tp!2099937 () Bool)

(assert (=> b!7382598 (= e!4419091 (and tp!2099935 tp!2099937))))

(assert (= (and b!7382205 (is-ElementMatch!19330 (reg!19659 (regOne!39173 r1!2370)))) b!7382595))

(assert (= (and b!7382205 (is-Concat!28175 (reg!19659 (regOne!39173 r1!2370)))) b!7382596))

(assert (= (and b!7382205 (is-Star!19330 (reg!19659 (regOne!39173 r1!2370)))) b!7382597))

(assert (= (and b!7382205 (is-Union!19330 (reg!19659 (regOne!39173 r1!2370)))) b!7382598))

(declare-fun e!4419092 () Bool)

(assert (=> b!7382210 (= tp!2099840 e!4419092)))

(declare-fun b!7382599 () Bool)

(assert (=> b!7382599 (= e!4419092 tp_is_empty!48905)))

(declare-fun b!7382600 () Bool)

(declare-fun tp!2099938 () Bool)

(declare-fun tp!2099939 () Bool)

(assert (=> b!7382600 (= e!4419092 (and tp!2099938 tp!2099939))))

(declare-fun b!7382601 () Bool)

(declare-fun tp!2099941 () Bool)

(assert (=> b!7382601 (= e!4419092 tp!2099941)))

(declare-fun b!7382602 () Bool)

(declare-fun tp!2099940 () Bool)

(declare-fun tp!2099942 () Bool)

(assert (=> b!7382602 (= e!4419092 (and tp!2099940 tp!2099942))))

(assert (= (and b!7382210 (is-ElementMatch!19330 (regOne!39173 (regTwo!39173 r1!2370)))) b!7382599))

(assert (= (and b!7382210 (is-Concat!28175 (regOne!39173 (regTwo!39173 r1!2370)))) b!7382600))

(assert (= (and b!7382210 (is-Star!19330 (regOne!39173 (regTwo!39173 r1!2370)))) b!7382601))

(assert (= (and b!7382210 (is-Union!19330 (regOne!39173 (regTwo!39173 r1!2370)))) b!7382602))

(declare-fun e!4419093 () Bool)

(assert (=> b!7382210 (= tp!2099842 e!4419093)))

(declare-fun b!7382603 () Bool)

(assert (=> b!7382603 (= e!4419093 tp_is_empty!48905)))

(declare-fun b!7382604 () Bool)

(declare-fun tp!2099943 () Bool)

(declare-fun tp!2099944 () Bool)

(assert (=> b!7382604 (= e!4419093 (and tp!2099943 tp!2099944))))

(declare-fun b!7382605 () Bool)

(declare-fun tp!2099946 () Bool)

(assert (=> b!7382605 (= e!4419093 tp!2099946)))

(declare-fun b!7382606 () Bool)

(declare-fun tp!2099945 () Bool)

(declare-fun tp!2099947 () Bool)

(assert (=> b!7382606 (= e!4419093 (and tp!2099945 tp!2099947))))

(assert (= (and b!7382210 (is-ElementMatch!19330 (regTwo!39173 (regTwo!39173 r1!2370)))) b!7382603))

(assert (= (and b!7382210 (is-Concat!28175 (regTwo!39173 (regTwo!39173 r1!2370)))) b!7382604))

(assert (= (and b!7382210 (is-Star!19330 (regTwo!39173 (regTwo!39173 r1!2370)))) b!7382605))

(assert (= (and b!7382210 (is-Union!19330 (regTwo!39173 (regTwo!39173 r1!2370)))) b!7382606))

(declare-fun e!4419094 () Bool)

(assert (=> b!7382209 (= tp!2099841 e!4419094)))

(declare-fun b!7382607 () Bool)

(assert (=> b!7382607 (= e!4419094 tp_is_empty!48905)))

(declare-fun b!7382608 () Bool)

(declare-fun tp!2099948 () Bool)

(declare-fun tp!2099949 () Bool)

(assert (=> b!7382608 (= e!4419094 (and tp!2099948 tp!2099949))))

(declare-fun b!7382609 () Bool)

(declare-fun tp!2099951 () Bool)

(assert (=> b!7382609 (= e!4419094 tp!2099951)))

(declare-fun b!7382610 () Bool)

(declare-fun tp!2099950 () Bool)

(declare-fun tp!2099952 () Bool)

(assert (=> b!7382610 (= e!4419094 (and tp!2099950 tp!2099952))))

(assert (= (and b!7382209 (is-ElementMatch!19330 (reg!19659 (regTwo!39173 r1!2370)))) b!7382607))

(assert (= (and b!7382209 (is-Concat!28175 (reg!19659 (regTwo!39173 r1!2370)))) b!7382608))

(assert (= (and b!7382209 (is-Star!19330 (reg!19659 (regTwo!39173 r1!2370)))) b!7382609))

(assert (= (and b!7382209 (is-Union!19330 (reg!19659 (regTwo!39173 r1!2370)))) b!7382610))

(declare-fun e!4419095 () Bool)

(assert (=> b!7382223 (= tp!2099857 e!4419095)))

(declare-fun b!7382611 () Bool)

(assert (=> b!7382611 (= e!4419095 tp_is_empty!48905)))

(declare-fun b!7382612 () Bool)

(declare-fun tp!2099953 () Bool)

(declare-fun tp!2099954 () Bool)

(assert (=> b!7382612 (= e!4419095 (and tp!2099953 tp!2099954))))

(declare-fun b!7382613 () Bool)

(declare-fun tp!2099956 () Bool)

(assert (=> b!7382613 (= e!4419095 tp!2099956)))

(declare-fun b!7382614 () Bool)

(declare-fun tp!2099955 () Bool)

(declare-fun tp!2099957 () Bool)

(assert (=> b!7382614 (= e!4419095 (and tp!2099955 tp!2099957))))

(assert (= (and b!7382223 (is-ElementMatch!19330 (h!78150 (exprs!8770 ct2!378)))) b!7382611))

(assert (= (and b!7382223 (is-Concat!28175 (h!78150 (exprs!8770 ct2!378)))) b!7382612))

(assert (= (and b!7382223 (is-Star!19330 (h!78150 (exprs!8770 ct2!378)))) b!7382613))

(assert (= (and b!7382223 (is-Union!19330 (h!78150 (exprs!8770 ct2!378)))) b!7382614))

(declare-fun b!7382615 () Bool)

(declare-fun e!4419096 () Bool)

(declare-fun tp!2099958 () Bool)

(declare-fun tp!2099959 () Bool)

(assert (=> b!7382615 (= e!4419096 (and tp!2099958 tp!2099959))))

(assert (=> b!7382223 (= tp!2099858 e!4419096)))

(assert (= (and b!7382223 (is-Cons!71702 (t!386321 (exprs!8770 ct2!378)))) b!7382615))

(declare-fun e!4419097 () Bool)

(assert (=> b!7382212 (= tp!2099843 e!4419097)))

(declare-fun b!7382616 () Bool)

(assert (=> b!7382616 (= e!4419097 tp_is_empty!48905)))

(declare-fun b!7382617 () Bool)

(declare-fun tp!2099960 () Bool)

(declare-fun tp!2099961 () Bool)

(assert (=> b!7382617 (= e!4419097 (and tp!2099960 tp!2099961))))

(declare-fun b!7382618 () Bool)

(declare-fun tp!2099963 () Bool)

(assert (=> b!7382618 (= e!4419097 tp!2099963)))

(declare-fun b!7382619 () Bool)

(declare-fun tp!2099962 () Bool)

(declare-fun tp!2099964 () Bool)

(assert (=> b!7382619 (= e!4419097 (and tp!2099962 tp!2099964))))

(assert (= (and b!7382212 (is-ElementMatch!19330 (regOne!39172 (regOne!39172 r1!2370)))) b!7382616))

(assert (= (and b!7382212 (is-Concat!28175 (regOne!39172 (regOne!39172 r1!2370)))) b!7382617))

(assert (= (and b!7382212 (is-Star!19330 (regOne!39172 (regOne!39172 r1!2370)))) b!7382618))

(assert (= (and b!7382212 (is-Union!19330 (regOne!39172 (regOne!39172 r1!2370)))) b!7382619))

(declare-fun e!4419098 () Bool)

(assert (=> b!7382212 (= tp!2099844 e!4419098)))

(declare-fun b!7382620 () Bool)

(assert (=> b!7382620 (= e!4419098 tp_is_empty!48905)))

(declare-fun b!7382621 () Bool)

(declare-fun tp!2099965 () Bool)

(declare-fun tp!2099966 () Bool)

(assert (=> b!7382621 (= e!4419098 (and tp!2099965 tp!2099966))))

(declare-fun b!7382622 () Bool)

(declare-fun tp!2099968 () Bool)

(assert (=> b!7382622 (= e!4419098 tp!2099968)))

(declare-fun b!7382623 () Bool)

(declare-fun tp!2099967 () Bool)

(declare-fun tp!2099969 () Bool)

(assert (=> b!7382623 (= e!4419098 (and tp!2099967 tp!2099969))))

(assert (= (and b!7382212 (is-ElementMatch!19330 (regTwo!39172 (regOne!39172 r1!2370)))) b!7382620))

(assert (= (and b!7382212 (is-Concat!28175 (regTwo!39172 (regOne!39172 r1!2370)))) b!7382621))

(assert (= (and b!7382212 (is-Star!19330 (regTwo!39172 (regOne!39172 r1!2370)))) b!7382622))

(assert (= (and b!7382212 (is-Union!19330 (regTwo!39172 (regOne!39172 r1!2370)))) b!7382623))

(declare-fun e!4419099 () Bool)

(assert (=> b!7382202 (= tp!2099830 e!4419099)))

(declare-fun b!7382624 () Bool)

(assert (=> b!7382624 (= e!4419099 tp_is_empty!48905)))

(declare-fun b!7382625 () Bool)

(declare-fun tp!2099970 () Bool)

(declare-fun tp!2099971 () Bool)

(assert (=> b!7382625 (= e!4419099 (and tp!2099970 tp!2099971))))

(declare-fun b!7382626 () Bool)

(declare-fun tp!2099973 () Bool)

(assert (=> b!7382626 (= e!4419099 tp!2099973)))

(declare-fun b!7382627 () Bool)

(declare-fun tp!2099972 () Bool)

(declare-fun tp!2099974 () Bool)

(assert (=> b!7382627 (= e!4419099 (and tp!2099972 tp!2099974))))

(assert (= (and b!7382202 (is-ElementMatch!19330 (regOne!39173 (reg!19659 r1!2370)))) b!7382624))

(assert (= (and b!7382202 (is-Concat!28175 (regOne!39173 (reg!19659 r1!2370)))) b!7382625))

(assert (= (and b!7382202 (is-Star!19330 (regOne!39173 (reg!19659 r1!2370)))) b!7382626))

(assert (= (and b!7382202 (is-Union!19330 (regOne!39173 (reg!19659 r1!2370)))) b!7382627))

(declare-fun e!4419100 () Bool)

(assert (=> b!7382202 (= tp!2099832 e!4419100)))

(declare-fun b!7382628 () Bool)

(assert (=> b!7382628 (= e!4419100 tp_is_empty!48905)))

(declare-fun b!7382629 () Bool)

(declare-fun tp!2099975 () Bool)

(declare-fun tp!2099976 () Bool)

(assert (=> b!7382629 (= e!4419100 (and tp!2099975 tp!2099976))))

(declare-fun b!7382630 () Bool)

(declare-fun tp!2099978 () Bool)

(assert (=> b!7382630 (= e!4419100 tp!2099978)))

(declare-fun b!7382631 () Bool)

(declare-fun tp!2099977 () Bool)

(declare-fun tp!2099979 () Bool)

(assert (=> b!7382631 (= e!4419100 (and tp!2099977 tp!2099979))))

(assert (= (and b!7382202 (is-ElementMatch!19330 (regTwo!39173 (reg!19659 r1!2370)))) b!7382628))

(assert (= (and b!7382202 (is-Concat!28175 (regTwo!39173 (reg!19659 r1!2370)))) b!7382629))

(assert (= (and b!7382202 (is-Star!19330 (regTwo!39173 (reg!19659 r1!2370)))) b!7382630))

(assert (= (and b!7382202 (is-Union!19330 (regTwo!39173 (reg!19659 r1!2370)))) b!7382631))

(declare-fun e!4419101 () Bool)

(assert (=> b!7382201 (= tp!2099831 e!4419101)))

(declare-fun b!7382632 () Bool)

(assert (=> b!7382632 (= e!4419101 tp_is_empty!48905)))

(declare-fun b!7382633 () Bool)

(declare-fun tp!2099980 () Bool)

(declare-fun tp!2099981 () Bool)

(assert (=> b!7382633 (= e!4419101 (and tp!2099980 tp!2099981))))

(declare-fun b!7382634 () Bool)

(declare-fun tp!2099983 () Bool)

(assert (=> b!7382634 (= e!4419101 tp!2099983)))

(declare-fun b!7382635 () Bool)

(declare-fun tp!2099982 () Bool)

(declare-fun tp!2099984 () Bool)

(assert (=> b!7382635 (= e!4419101 (and tp!2099982 tp!2099984))))

(assert (= (and b!7382201 (is-ElementMatch!19330 (reg!19659 (reg!19659 r1!2370)))) b!7382632))

(assert (= (and b!7382201 (is-Concat!28175 (reg!19659 (reg!19659 r1!2370)))) b!7382633))

(assert (= (and b!7382201 (is-Star!19330 (reg!19659 (reg!19659 r1!2370)))) b!7382634))

(assert (= (and b!7382201 (is-Union!19330 (reg!19659 (reg!19659 r1!2370)))) b!7382635))

(declare-fun e!4419102 () Bool)

(assert (=> b!7382204 (= tp!2099833 e!4419102)))

(declare-fun b!7382636 () Bool)

(assert (=> b!7382636 (= e!4419102 tp_is_empty!48905)))

(declare-fun b!7382637 () Bool)

(declare-fun tp!2099985 () Bool)

(declare-fun tp!2099986 () Bool)

(assert (=> b!7382637 (= e!4419102 (and tp!2099985 tp!2099986))))

(declare-fun b!7382638 () Bool)

(declare-fun tp!2099988 () Bool)

(assert (=> b!7382638 (= e!4419102 tp!2099988)))

(declare-fun b!7382639 () Bool)

(declare-fun tp!2099987 () Bool)

(declare-fun tp!2099989 () Bool)

(assert (=> b!7382639 (= e!4419102 (and tp!2099987 tp!2099989))))

(assert (= (and b!7382204 (is-ElementMatch!19330 (regOne!39172 (regOne!39173 r1!2370)))) b!7382636))

(assert (= (and b!7382204 (is-Concat!28175 (regOne!39172 (regOne!39173 r1!2370)))) b!7382637))

(assert (= (and b!7382204 (is-Star!19330 (regOne!39172 (regOne!39173 r1!2370)))) b!7382638))

(assert (= (and b!7382204 (is-Union!19330 (regOne!39172 (regOne!39173 r1!2370)))) b!7382639))

(declare-fun e!4419103 () Bool)

(assert (=> b!7382204 (= tp!2099834 e!4419103)))

(declare-fun b!7382640 () Bool)

(assert (=> b!7382640 (= e!4419103 tp_is_empty!48905)))

(declare-fun b!7382641 () Bool)

(declare-fun tp!2099990 () Bool)

(declare-fun tp!2099991 () Bool)

(assert (=> b!7382641 (= e!4419103 (and tp!2099990 tp!2099991))))

(declare-fun b!7382642 () Bool)

(declare-fun tp!2099993 () Bool)

(assert (=> b!7382642 (= e!4419103 tp!2099993)))

(declare-fun b!7382643 () Bool)

(declare-fun tp!2099992 () Bool)

(declare-fun tp!2099994 () Bool)

(assert (=> b!7382643 (= e!4419103 (and tp!2099992 tp!2099994))))

(assert (= (and b!7382204 (is-ElementMatch!19330 (regTwo!39172 (regOne!39173 r1!2370)))) b!7382640))

(assert (= (and b!7382204 (is-Concat!28175 (regTwo!39172 (regOne!39173 r1!2370)))) b!7382641))

(assert (= (and b!7382204 (is-Star!19330 (regTwo!39172 (regOne!39173 r1!2370)))) b!7382642))

(assert (= (and b!7382204 (is-Union!19330 (regTwo!39172 (regOne!39173 r1!2370)))) b!7382643))

(declare-fun e!4419104 () Bool)

(assert (=> b!7382224 (= tp!2099859 e!4419104)))

(declare-fun b!7382644 () Bool)

(assert (=> b!7382644 (= e!4419104 tp_is_empty!48905)))

(declare-fun b!7382645 () Bool)

(declare-fun tp!2099995 () Bool)

(declare-fun tp!2099996 () Bool)

(assert (=> b!7382645 (= e!4419104 (and tp!2099995 tp!2099996))))

(declare-fun b!7382646 () Bool)

(declare-fun tp!2099998 () Bool)

(assert (=> b!7382646 (= e!4419104 tp!2099998)))

(declare-fun b!7382647 () Bool)

(declare-fun tp!2099997 () Bool)

(declare-fun tp!2099999 () Bool)

(assert (=> b!7382647 (= e!4419104 (and tp!2099997 tp!2099999))))

(assert (= (and b!7382224 (is-ElementMatch!19330 (h!78150 (exprs!8770 cWitness!61)))) b!7382644))

(assert (= (and b!7382224 (is-Concat!28175 (h!78150 (exprs!8770 cWitness!61)))) b!7382645))

(assert (= (and b!7382224 (is-Star!19330 (h!78150 (exprs!8770 cWitness!61)))) b!7382646))

(assert (= (and b!7382224 (is-Union!19330 (h!78150 (exprs!8770 cWitness!61)))) b!7382647))

(declare-fun b!7382648 () Bool)

(declare-fun e!4419105 () Bool)

(declare-fun tp!2100000 () Bool)

(declare-fun tp!2100001 () Bool)

(assert (=> b!7382648 (= e!4419105 (and tp!2100000 tp!2100001))))

(assert (=> b!7382224 (= tp!2099860 e!4419105)))

(assert (= (and b!7382224 (is-Cons!71702 (t!386321 (exprs!8770 cWitness!61)))) b!7382648))

(declare-fun e!4419106 () Bool)

(assert (=> b!7382218 (= tp!2099850 e!4419106)))

(declare-fun b!7382649 () Bool)

(assert (=> b!7382649 (= e!4419106 tp_is_empty!48905)))

(declare-fun b!7382650 () Bool)

(declare-fun tp!2100002 () Bool)

(declare-fun tp!2100003 () Bool)

(assert (=> b!7382650 (= e!4419106 (and tp!2100002 tp!2100003))))

(declare-fun b!7382651 () Bool)

(declare-fun tp!2100005 () Bool)

(assert (=> b!7382651 (= e!4419106 tp!2100005)))

(declare-fun b!7382652 () Bool)

(declare-fun tp!2100004 () Bool)

(declare-fun tp!2100006 () Bool)

(assert (=> b!7382652 (= e!4419106 (and tp!2100004 tp!2100006))))

(assert (= (and b!7382218 (is-ElementMatch!19330 (regOne!39173 (regTwo!39172 r1!2370)))) b!7382649))

(assert (= (and b!7382218 (is-Concat!28175 (regOne!39173 (regTwo!39172 r1!2370)))) b!7382650))

(assert (= (and b!7382218 (is-Star!19330 (regOne!39173 (regTwo!39172 r1!2370)))) b!7382651))

(assert (= (and b!7382218 (is-Union!19330 (regOne!39173 (regTwo!39172 r1!2370)))) b!7382652))

(declare-fun e!4419107 () Bool)

(assert (=> b!7382218 (= tp!2099852 e!4419107)))

(declare-fun b!7382653 () Bool)

(assert (=> b!7382653 (= e!4419107 tp_is_empty!48905)))

(declare-fun b!7382654 () Bool)

(declare-fun tp!2100007 () Bool)

(declare-fun tp!2100008 () Bool)

(assert (=> b!7382654 (= e!4419107 (and tp!2100007 tp!2100008))))

(declare-fun b!7382655 () Bool)

(declare-fun tp!2100010 () Bool)

(assert (=> b!7382655 (= e!4419107 tp!2100010)))

(declare-fun b!7382656 () Bool)

(declare-fun tp!2100009 () Bool)

(declare-fun tp!2100011 () Bool)

(assert (=> b!7382656 (= e!4419107 (and tp!2100009 tp!2100011))))

(assert (= (and b!7382218 (is-ElementMatch!19330 (regTwo!39173 (regTwo!39172 r1!2370)))) b!7382653))

(assert (= (and b!7382218 (is-Concat!28175 (regTwo!39173 (regTwo!39172 r1!2370)))) b!7382654))

(assert (= (and b!7382218 (is-Star!19330 (regTwo!39173 (regTwo!39172 r1!2370)))) b!7382655))

(assert (= (and b!7382218 (is-Union!19330 (regTwo!39173 (regTwo!39172 r1!2370)))) b!7382656))

(declare-fun e!4419108 () Bool)

(assert (=> b!7382217 (= tp!2099851 e!4419108)))

(declare-fun b!7382657 () Bool)

(assert (=> b!7382657 (= e!4419108 tp_is_empty!48905)))

(declare-fun b!7382658 () Bool)

(declare-fun tp!2100012 () Bool)

(declare-fun tp!2100013 () Bool)

(assert (=> b!7382658 (= e!4419108 (and tp!2100012 tp!2100013))))

(declare-fun b!7382659 () Bool)

(declare-fun tp!2100015 () Bool)

(assert (=> b!7382659 (= e!4419108 tp!2100015)))

(declare-fun b!7382660 () Bool)

(declare-fun tp!2100014 () Bool)

(declare-fun tp!2100016 () Bool)

(assert (=> b!7382660 (= e!4419108 (and tp!2100014 tp!2100016))))

(assert (= (and b!7382217 (is-ElementMatch!19330 (reg!19659 (regTwo!39172 r1!2370)))) b!7382657))

(assert (= (and b!7382217 (is-Concat!28175 (reg!19659 (regTwo!39172 r1!2370)))) b!7382658))

(assert (= (and b!7382217 (is-Star!19330 (reg!19659 (regTwo!39172 r1!2370)))) b!7382659))

(assert (= (and b!7382217 (is-Union!19330 (reg!19659 (regTwo!39172 r1!2370)))) b!7382660))

(declare-fun e!4419109 () Bool)

(assert (=> b!7382214 (= tp!2099845 e!4419109)))

(declare-fun b!7382661 () Bool)

(assert (=> b!7382661 (= e!4419109 tp_is_empty!48905)))

(declare-fun b!7382662 () Bool)

(declare-fun tp!2100017 () Bool)

(declare-fun tp!2100018 () Bool)

(assert (=> b!7382662 (= e!4419109 (and tp!2100017 tp!2100018))))

(declare-fun b!7382663 () Bool)

(declare-fun tp!2100020 () Bool)

(assert (=> b!7382663 (= e!4419109 tp!2100020)))

(declare-fun b!7382664 () Bool)

(declare-fun tp!2100019 () Bool)

(declare-fun tp!2100021 () Bool)

(assert (=> b!7382664 (= e!4419109 (and tp!2100019 tp!2100021))))

(assert (= (and b!7382214 (is-ElementMatch!19330 (regOne!39173 (regOne!39172 r1!2370)))) b!7382661))

(assert (= (and b!7382214 (is-Concat!28175 (regOne!39173 (regOne!39172 r1!2370)))) b!7382662))

(assert (= (and b!7382214 (is-Star!19330 (regOne!39173 (regOne!39172 r1!2370)))) b!7382663))

(assert (= (and b!7382214 (is-Union!19330 (regOne!39173 (regOne!39172 r1!2370)))) b!7382664))

(declare-fun e!4419110 () Bool)

(assert (=> b!7382214 (= tp!2099847 e!4419110)))

(declare-fun b!7382665 () Bool)

(assert (=> b!7382665 (= e!4419110 tp_is_empty!48905)))

(declare-fun b!7382666 () Bool)

(declare-fun tp!2100022 () Bool)

(declare-fun tp!2100023 () Bool)

(assert (=> b!7382666 (= e!4419110 (and tp!2100022 tp!2100023))))

(declare-fun b!7382667 () Bool)

(declare-fun tp!2100025 () Bool)

(assert (=> b!7382667 (= e!4419110 tp!2100025)))

(declare-fun b!7382668 () Bool)

(declare-fun tp!2100024 () Bool)

(declare-fun tp!2100026 () Bool)

(assert (=> b!7382668 (= e!4419110 (and tp!2100024 tp!2100026))))

(assert (= (and b!7382214 (is-ElementMatch!19330 (regTwo!39173 (regOne!39172 r1!2370)))) b!7382665))

(assert (= (and b!7382214 (is-Concat!28175 (regTwo!39173 (regOne!39172 r1!2370)))) b!7382666))

(assert (= (and b!7382214 (is-Star!19330 (regTwo!39173 (regOne!39172 r1!2370)))) b!7382667))

(assert (= (and b!7382214 (is-Union!19330 (regTwo!39173 (regOne!39172 r1!2370)))) b!7382668))

(declare-fun e!4419111 () Bool)

(assert (=> b!7382208 (= tp!2099838 e!4419111)))

(declare-fun b!7382669 () Bool)

(assert (=> b!7382669 (= e!4419111 tp_is_empty!48905)))

(declare-fun b!7382670 () Bool)

(declare-fun tp!2100027 () Bool)

(declare-fun tp!2100028 () Bool)

(assert (=> b!7382670 (= e!4419111 (and tp!2100027 tp!2100028))))

(declare-fun b!7382671 () Bool)

(declare-fun tp!2100030 () Bool)

(assert (=> b!7382671 (= e!4419111 tp!2100030)))

(declare-fun b!7382672 () Bool)

(declare-fun tp!2100029 () Bool)

(declare-fun tp!2100031 () Bool)

(assert (=> b!7382672 (= e!4419111 (and tp!2100029 tp!2100031))))

(assert (= (and b!7382208 (is-ElementMatch!19330 (regOne!39172 (regTwo!39173 r1!2370)))) b!7382669))

(assert (= (and b!7382208 (is-Concat!28175 (regOne!39172 (regTwo!39173 r1!2370)))) b!7382670))

(assert (= (and b!7382208 (is-Star!19330 (regOne!39172 (regTwo!39173 r1!2370)))) b!7382671))

(assert (= (and b!7382208 (is-Union!19330 (regOne!39172 (regTwo!39173 r1!2370)))) b!7382672))

(declare-fun e!4419112 () Bool)

(assert (=> b!7382208 (= tp!2099839 e!4419112)))

(declare-fun b!7382673 () Bool)

(assert (=> b!7382673 (= e!4419112 tp_is_empty!48905)))

(declare-fun b!7382674 () Bool)

(declare-fun tp!2100032 () Bool)

(declare-fun tp!2100033 () Bool)

(assert (=> b!7382674 (= e!4419112 (and tp!2100032 tp!2100033))))

(declare-fun b!7382675 () Bool)

(declare-fun tp!2100035 () Bool)

(assert (=> b!7382675 (= e!4419112 tp!2100035)))

(declare-fun b!7382676 () Bool)

(declare-fun tp!2100034 () Bool)

(declare-fun tp!2100036 () Bool)

(assert (=> b!7382676 (= e!4419112 (and tp!2100034 tp!2100036))))

(assert (= (and b!7382208 (is-ElementMatch!19330 (regTwo!39172 (regTwo!39173 r1!2370)))) b!7382673))

(assert (= (and b!7382208 (is-Concat!28175 (regTwo!39172 (regTwo!39173 r1!2370)))) b!7382674))

(assert (= (and b!7382208 (is-Star!19330 (regTwo!39172 (regTwo!39173 r1!2370)))) b!7382675))

(assert (= (and b!7382208 (is-Union!19330 (regTwo!39172 (regTwo!39173 r1!2370)))) b!7382676))

(declare-fun e!4419113 () Bool)

(assert (=> b!7382200 (= tp!2099828 e!4419113)))

(declare-fun b!7382677 () Bool)

(assert (=> b!7382677 (= e!4419113 tp_is_empty!48905)))

(declare-fun b!7382678 () Bool)

(declare-fun tp!2100037 () Bool)

(declare-fun tp!2100038 () Bool)

(assert (=> b!7382678 (= e!4419113 (and tp!2100037 tp!2100038))))

(declare-fun b!7382679 () Bool)

(declare-fun tp!2100040 () Bool)

(assert (=> b!7382679 (= e!4419113 tp!2100040)))

(declare-fun b!7382680 () Bool)

(declare-fun tp!2100039 () Bool)

(declare-fun tp!2100041 () Bool)

(assert (=> b!7382680 (= e!4419113 (and tp!2100039 tp!2100041))))

(assert (= (and b!7382200 (is-ElementMatch!19330 (regOne!39172 (reg!19659 r1!2370)))) b!7382677))

(assert (= (and b!7382200 (is-Concat!28175 (regOne!39172 (reg!19659 r1!2370)))) b!7382678))

(assert (= (and b!7382200 (is-Star!19330 (regOne!39172 (reg!19659 r1!2370)))) b!7382679))

(assert (= (and b!7382200 (is-Union!19330 (regOne!39172 (reg!19659 r1!2370)))) b!7382680))

(declare-fun e!4419114 () Bool)

(assert (=> b!7382200 (= tp!2099829 e!4419114)))

(declare-fun b!7382681 () Bool)

(assert (=> b!7382681 (= e!4419114 tp_is_empty!48905)))

(declare-fun b!7382682 () Bool)

(declare-fun tp!2100042 () Bool)

(declare-fun tp!2100043 () Bool)

(assert (=> b!7382682 (= e!4419114 (and tp!2100042 tp!2100043))))

(declare-fun b!7382683 () Bool)

(declare-fun tp!2100045 () Bool)

(assert (=> b!7382683 (= e!4419114 tp!2100045)))

(declare-fun b!7382684 () Bool)

(declare-fun tp!2100044 () Bool)

(declare-fun tp!2100046 () Bool)

(assert (=> b!7382684 (= e!4419114 (and tp!2100044 tp!2100046))))

(assert (= (and b!7382200 (is-ElementMatch!19330 (regTwo!39172 (reg!19659 r1!2370)))) b!7382681))

(assert (= (and b!7382200 (is-Concat!28175 (regTwo!39172 (reg!19659 r1!2370)))) b!7382682))

(assert (= (and b!7382200 (is-Star!19330 (regTwo!39172 (reg!19659 r1!2370)))) b!7382683))

(assert (= (and b!7382200 (is-Union!19330 (regTwo!39172 (reg!19659 r1!2370)))) b!7382684))

(declare-fun e!4419115 () Bool)

(assert (=> b!7382225 (= tp!2099861 e!4419115)))

(declare-fun b!7382685 () Bool)

(assert (=> b!7382685 (= e!4419115 tp_is_empty!48905)))

(declare-fun b!7382686 () Bool)

(declare-fun tp!2100047 () Bool)

(declare-fun tp!2100048 () Bool)

(assert (=> b!7382686 (= e!4419115 (and tp!2100047 tp!2100048))))

(declare-fun b!7382687 () Bool)

(declare-fun tp!2100050 () Bool)

(assert (=> b!7382687 (= e!4419115 tp!2100050)))

(declare-fun b!7382688 () Bool)

(declare-fun tp!2100049 () Bool)

(declare-fun tp!2100051 () Bool)

(assert (=> b!7382688 (= e!4419115 (and tp!2100049 tp!2100051))))

(assert (= (and b!7382225 (is-ElementMatch!19330 (h!78150 (exprs!8770 ct1!282)))) b!7382685))

(assert (= (and b!7382225 (is-Concat!28175 (h!78150 (exprs!8770 ct1!282)))) b!7382686))

(assert (= (and b!7382225 (is-Star!19330 (h!78150 (exprs!8770 ct1!282)))) b!7382687))

(assert (= (and b!7382225 (is-Union!19330 (h!78150 (exprs!8770 ct1!282)))) b!7382688))

(declare-fun b!7382689 () Bool)

(declare-fun e!4419116 () Bool)

(declare-fun tp!2100052 () Bool)

(declare-fun tp!2100053 () Bool)

(assert (=> b!7382689 (= e!4419116 (and tp!2100052 tp!2100053))))

(assert (=> b!7382225 (= tp!2099862 e!4419116)))

(assert (= (and b!7382225 (is-Cons!71702 (t!386321 (exprs!8770 ct1!282)))) b!7382689))

(declare-fun b_lambda!284765 () Bool)

(assert (= b_lambda!284755 (or b!7381966 b_lambda!284765)))

(declare-fun bs!1921710 () Bool)

(declare-fun d!2285926 () Bool)

(assert (= bs!1921710 (and d!2285926 b!7381966)))

(assert (=> bs!1921710 (= (dynLambda!29536 lambda!458606 (h!78150 (exprs!8770 cWitness!61))) (validRegex!9926 (h!78150 (exprs!8770 cWitness!61))))))

(declare-fun m!8032124 () Bool)

(assert (=> bs!1921710 m!8032124))

(assert (=> b!7382485 d!2285926))

(declare-fun b_lambda!284767 () Bool)

(assert (= b_lambda!284749 (or d!2285748 b_lambda!284767)))

(declare-fun bs!1921711 () Bool)

(declare-fun d!2285928 () Bool)

(assert (= bs!1921711 (and d!2285928 d!2285748)))

(assert (=> bs!1921711 (= (dynLambda!29536 lambda!458618 (h!78150 (exprs!8770 cWitness!61))) (validRegex!9926 (h!78150 (exprs!8770 cWitness!61))))))

(assert (=> bs!1921711 m!8032124))

(assert (=> b!7382434 d!2285928))

(declare-fun b_lambda!284769 () Bool)

(assert (= b_lambda!284761 (or b!7381966 b_lambda!284769)))

(declare-fun bs!1921712 () Bool)

(declare-fun d!2285930 () Bool)

(assert (= bs!1921712 (and d!2285930 b!7381966)))

(assert (=> bs!1921712 (= (dynLambda!29536 lambda!458606 (h!78150 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378)))) (validRegex!9926 (h!78150 (++!17146 (exprs!8770 ct1!282) (exprs!8770 ct2!378)))))))

(declare-fun m!8032126 () Bool)

(assert (=> bs!1921712 m!8032126))

(assert (=> b!7382543 d!2285930))

(declare-fun b_lambda!284771 () Bool)

(assert (= b_lambda!284751 (or d!2285750 b_lambda!284771)))

(declare-fun bs!1921713 () Bool)

(declare-fun d!2285932 () Bool)

(assert (= bs!1921713 (and d!2285932 d!2285750)))

(assert (=> bs!1921713 (= (dynLambda!29536 lambda!458619 (h!78150 (exprs!8770 ct1!282))) (validRegex!9926 (h!78150 (exprs!8770 ct1!282))))))

(declare-fun m!8032128 () Bool)

(assert (=> bs!1921713 m!8032128))

(assert (=> b!7382446 d!2285932))

(declare-fun b_lambda!284773 () Bool)

(assert (= b_lambda!284753 (or b!7381966 b_lambda!284773)))

(declare-fun bs!1921714 () Bool)

(declare-fun d!2285934 () Bool)

(assert (= bs!1921714 (and d!2285934 b!7381966)))

(assert (=> bs!1921714 (= (dynLambda!29536 lambda!458606 (h!78150 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378)))) (validRegex!9926 (h!78150 (++!17146 (exprs!8770 cWitness!61) (exprs!8770 ct2!378)))))))

(declare-fun m!8032130 () Bool)

(assert (=> bs!1921714 m!8032130))

(assert (=> b!7382483 d!2285934))

(declare-fun b_lambda!284775 () Bool)

(assert (= b_lambda!284759 (or b!7381966 b_lambda!284775)))

(declare-fun bs!1921715 () Bool)

(declare-fun d!2285936 () Bool)

(assert (= bs!1921715 (and d!2285936 b!7381966)))

(assert (=> bs!1921715 (= (dynLambda!29536 lambda!458606 (h!78150 lt!2617095)) (validRegex!9926 (h!78150 lt!2617095)))))

(declare-fun m!8032132 () Bool)

(assert (=> bs!1921715 m!8032132))

(assert (=> b!7382532 d!2285936))

(declare-fun b_lambda!284777 () Bool)

(assert (= b_lambda!284747 (or d!2285752 b_lambda!284777)))

(declare-fun bs!1921716 () Bool)

(declare-fun d!2285938 () Bool)

(assert (= bs!1921716 (and d!2285938 d!2285752)))

(assert (=> bs!1921716 (= (dynLambda!29536 lambda!458620 (h!78150 (exprs!8770 ct2!378))) (validRegex!9926 (h!78150 (exprs!8770 ct2!378))))))

(declare-fun m!8032134 () Bool)

(assert (=> bs!1921716 m!8032134))

(assert (=> b!7382411 d!2285938))

(declare-fun b_lambda!284779 () Bool)

(assert (= b_lambda!284763 (or b!7381966 b_lambda!284779)))

(declare-fun bs!1921717 () Bool)

(declare-fun d!2285940 () Bool)

(assert (= bs!1921717 (and d!2285940 b!7381966)))

(assert (=> bs!1921717 (= (dynLambda!29536 lambda!458606 (h!78150 (exprs!8770 ct1!282))) (validRegex!9926 (h!78150 (exprs!8770 ct1!282))))))

(assert (=> bs!1921717 m!8032128))

(assert (=> b!7382545 d!2285940))

(declare-fun b_lambda!284781 () Bool)

(assert (= b_lambda!284757 (or b!7381966 b_lambda!284781)))

(declare-fun bs!1921718 () Bool)

(declare-fun d!2285942 () Bool)

(assert (= bs!1921718 (and d!2285942 b!7381966)))

(assert (=> bs!1921718 (= (dynLambda!29536 lambda!458606 (h!78150 (++!17146 lt!2617095 (exprs!8770 ct2!378)))) (validRegex!9926 (h!78150 (++!17146 lt!2617095 (exprs!8770 ct2!378)))))))

(declare-fun m!8032136 () Bool)

(assert (=> bs!1921718 m!8032136))

(assert (=> b!7382530 d!2285942))

(push 1)

(assert (not bm!679408))

(assert (not b!7382619))

(assert tp_is_empty!48905)

(assert (not b!7382546))

(assert (not b!7382630))

(assert (not b!7382544))

(assert (not bm!679434))

(assert (not bm!679404))

(assert (not bm!679371))

(assert (not b!7382589))

(assert (not bs!1921717))

(assert (not b!7382679))

(assert (not b!7382671))

(assert (not b!7382509))

(assert (not bm!679437))

(assert (not b!7382689))

(assert (not b!7382507))

(assert (not d!2285862))

(assert (not bm!679401))

(assert (not b!7382613))

(assert (not b!7382626))

(assert (not b!7382647))

(assert (not b!7382486))

(assert (not b!7382520))

(assert (not b!7382650))

(assert (not bm!679419))

(assert (not b!7382412))

(assert (not b!7382664))

(assert (not b!7382638))

(assert (not b!7382378))

(assert (not bm!679390))

(assert (not bs!1921716))

(assert (not b!7382610))

(assert (not b!7382488))

(assert (not d!2285884))

(assert (not b_lambda!284775))

(assert (not b!7382674))

(assert (not b!7382623))

(assert (not bm!679425))

(assert (not b!7382443))

(assert (not b!7382675))

(assert (not b!7382621))

(assert (not b!7382654))

(assert (not b!7382667))

(assert (not bm!679441))

(assert (not b!7382659))

(assert (not d!2285840))

(assert (not bm!679430))

(assert (not b!7382480))

(assert (not b!7382576))

(assert (not b_lambda!284765))

(assert (not d!2285822))

(assert (not b!7382687))

(assert (not b_lambda!284773))

(assert (not b!7382585))

(assert (not bs!1921718))

(assert (not b!7382449))

(assert (not b!7382581))

(assert (not b!7382639))

(assert (not b!7382548))

(assert (not bm!679375))

(assert (not b!7382572))

(assert (not b!7382600))

(assert (not b!7382645))

(assert (not b!7382660))

(assert (not bm!679392))

(assert (not bm!679377))

(assert (not d!2285824))

(assert (not bm!679432))

(assert (not b!7382682))

(assert (not bm!679373))

(assert (not b!7382574))

(assert (not b!7382651))

(assert (not b!7382680))

(assert (not b!7382663))

(assert (not b!7382612))

(assert (not b!7382604))

(assert (not bm!679386))

(assert (not b!7382580))

(assert (not bm!679412))

(assert (not b!7382590))

(assert (not b!7382648))

(assert (not bs!1921712))

(assert (not b!7382496))

(assert (not b!7382405))

(assert (not b!7382493))

(assert (not bm!679380))

(assert (not bs!1921715))

(assert (not b!7382472))

(assert (not b!7382622))

(assert (not b!7382634))

(assert (not bm!679414))

(assert (not b!7382614))

(assert (not b!7382625))

(assert (not b!7382357))

(assert (not bm!679410))

(assert (not b_lambda!284771))

(assert (not b!7382635))

(assert (not b!7382646))

(assert (not b!7382550))

(assert (not b!7382484))

(assert (not bm!679384))

(assert (not bm!679416))

(assert (not b!7382584))

(assert (not d!2285888))

(assert (not b!7382672))

(assert (not b!7382652))

(assert (not b!7382608))

(assert (not b!7382533))

(assert (not b!7382447))

(assert (not b!7382441))

(assert (not b!7382380))

(assert (not b!7382602))

(assert (not b!7382445))

(assert (not d!2285820))

(assert (not bm!679426))

(assert (not b!7382349))

(assert (not bm!679369))

(assert (not b!7382668))

(assert (not b!7382393))

(assert (not d!2285908))

(assert (not b!7382361))

(assert (not bm!679439))

(assert (not b!7382358))

(assert (not b_lambda!284779))

(assert (not b!7382678))

(assert (not b!7382435))

(assert (not b!7382633))

(assert (not b!7382617))

(assert (not b!7382642))

(assert (not b_lambda!284781))

(assert (not d!2285826))

(assert (not bm!679400))

(assert (not bm!679423))

(assert (not b!7382577))

(assert (not b!7382688))

(assert (not b!7382594))

(assert (not bm!679402))

(assert (not b!7382490))

(assert (not b!7382605))

(assert (not bm!679382))

(assert (not b!7382627))

(assert (not b!7382531))

(assert (not b!7382601))

(assert (not bs!1921711))

(assert (not b!7382592))

(assert (not b!7382684))

(assert (not b!7382578))

(assert (not b!7382606))

(assert (not bm!679428))

(assert (not d!2285870))

(assert (not d!2285912))

(assert (not b!7382460))

(assert (not b!7382676))

(assert (not bm!679388))

(assert (not b!7382492))

(assert (not b!7382536))

(assert (not b_lambda!284767))

(assert (not bs!1921713))

(assert (not b!7382512))

(assert (not d!2285876))

(assert (not b!7382596))

(assert (not b!7382481))

(assert (not b!7382552))

(assert (not bm!679406))

(assert (not b_lambda!284769))

(assert (not b!7382662))

(assert (not bs!1921714))

(assert (not b!7382637))

(assert (not b!7382564))

(assert (not b!7382598))

(assert (not b!7382683))

(assert (not b!7382382))

(assert (not b!7382593))

(assert (not bm!679421))

(assert (not b!7382597))

(assert (not b!7382629))

(assert (not b!7382655))

(assert (not bm!679443))

(assert (not bm!679417))

(assert (not b!7382666))

(assert (not b!7382641))

(assert (not b!7382631))

(assert (not b!7382337))

(assert (not b!7382586))

(assert (not b!7382582))

(assert (not bm!679435))

(assert (not b!7382658))

(assert (not b!7382686))

(assert (not bm!679394))

(assert (not b!7382643))

(assert (not bs!1921710))

(assert (not b!7382404))

(assert (not b!7382656))

(assert (not b!7382376))

(assert (not d!2285900))

(assert (not b!7382609))

(assert (not b!7382588))

(assert (not b!7382670))

(assert (not bm!679378))

(assert (not b_lambda!284777))

(assert (not b!7382618))

(assert (not b!7382615))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

