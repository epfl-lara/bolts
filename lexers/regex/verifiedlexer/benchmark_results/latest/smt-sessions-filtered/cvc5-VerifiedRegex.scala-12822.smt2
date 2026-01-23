; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708184 () Bool)

(assert start!708184)

(declare-fun b!7263718 () Bool)

(assert (=> b!7263718 true))

(declare-fun b!7263716 () Bool)

(declare-fun e!4355887 () Bool)

(declare-fun tp!2040033 () Bool)

(assert (=> b!7263716 (= e!4355887 tp!2040033)))

(declare-fun b!7263717 () Bool)

(declare-fun e!4355886 () Bool)

(declare-fun tp!2040031 () Bool)

(assert (=> b!7263717 (= e!4355886 tp!2040031)))

(declare-fun e!4355885 () Bool)

(declare-datatypes ((C!37778 0))(
  ( (C!37779 (val!28837 Int)) )
))
(declare-datatypes ((Regex!18752 0))(
  ( (ElementMatch!18752 (c!1351360 C!37778)) (Concat!27597 (regOne!38016 Regex!18752) (regTwo!38016 Regex!18752)) (EmptyExpr!18752) (Star!18752 (reg!19081 Regex!18752)) (EmptyLang!18752) (Union!18752 (regOne!38017 Regex!18752) (regTwo!38017 Regex!18752)) )
))
(declare-datatypes ((List!70819 0))(
  ( (Nil!70695) (Cons!70695 (h!77143 Regex!18752) (t!384885 List!70819)) )
))
(declare-datatypes ((Context!15384 0))(
  ( (Context!15385 (exprs!8192 List!70819)) )
))
(declare-fun ct1!250 () Context!15384)

(declare-fun lambda!447074 () Int)

(declare-fun forall!17587 (List!70819 Int) Bool)

(assert (=> b!7263718 (= e!4355885 (not (forall!17587 (exprs!8192 ct1!250) lambda!447074)))))

(declare-fun lt!2591676 () (Set Context!15384))

(declare-datatypes ((List!70820 0))(
  ( (Nil!70696) (Cons!70696 (h!77144 C!37778) (t!384886 List!70820)) )
))
(declare-fun s!7854 () List!70820)

(declare-fun lt!2591668 () Context!15384)

(declare-fun lambda!447075 () Int)

(declare-fun flatMap!2865 ((Set Context!15384) Int) (Set Context!15384))

(declare-fun derivationStepZipperUp!2522 (Context!15384 C!37778) (Set Context!15384))

(assert (=> b!7263718 (= (flatMap!2865 lt!2591676 lambda!447075) (derivationStepZipperUp!2522 lt!2591668 (h!77144 s!7854)))))

(declare-datatypes ((Unit!164122 0))(
  ( (Unit!164123) )
))
(declare-fun lt!2591669 () Unit!164122)

(declare-fun lemmaFlatMapOnSingletonSet!2265 ((Set Context!15384) Context!15384 Int) Unit!164122)

(assert (=> b!7263718 (= lt!2591669 (lemmaFlatMapOnSingletonSet!2265 lt!2591676 lt!2591668 lambda!447075))))

(assert (=> b!7263718 (= lt!2591676 (set.insert lt!2591668 (as set.empty (Set Context!15384))))))

(declare-fun lt!2591675 () Unit!164122)

(declare-fun ct2!346 () Context!15384)

(declare-fun lemmaConcatPreservesForall!1509 (List!70819 List!70819 Int) Unit!164122)

(assert (=> b!7263718 (= lt!2591675 (lemmaConcatPreservesForall!1509 (exprs!8192 ct1!250) (exprs!8192 ct2!346) lambda!447074))))

(declare-fun lt!2591670 () Unit!164122)

(assert (=> b!7263718 (= lt!2591670 (lemmaConcatPreservesForall!1509 (exprs!8192 ct1!250) (exprs!8192 ct2!346) lambda!447074))))

(declare-fun lt!2591671 () (Set Context!15384))

(assert (=> b!7263718 (= (flatMap!2865 lt!2591671 lambda!447075) (derivationStepZipperUp!2522 ct1!250 (h!77144 s!7854)))))

(declare-fun lt!2591674 () Unit!164122)

(assert (=> b!7263718 (= lt!2591674 (lemmaFlatMapOnSingletonSet!2265 lt!2591671 ct1!250 lambda!447075))))

(assert (=> b!7263718 (= lt!2591671 (set.insert ct1!250 (as set.empty (Set Context!15384))))))

(declare-fun lt!2591672 () (Set Context!15384))

(assert (=> b!7263718 (= lt!2591672 (derivationStepZipperUp!2522 lt!2591668 (h!77144 s!7854)))))

(declare-fun ++!16652 (List!70819 List!70819) List!70819)

(assert (=> b!7263718 (= lt!2591668 (Context!15385 (++!16652 (exprs!8192 ct1!250) (exprs!8192 ct2!346))))))

(declare-fun lt!2591673 () Unit!164122)

(assert (=> b!7263718 (= lt!2591673 (lemmaConcatPreservesForall!1509 (exprs!8192 ct1!250) (exprs!8192 ct2!346) lambda!447074))))

(declare-fun res!2944965 () Bool)

(assert (=> start!708184 (=> (not res!2944965) (not e!4355885))))

(declare-fun matchZipper!3656 ((Set Context!15384) List!70820) Bool)

(assert (=> start!708184 (= res!2944965 (matchZipper!3656 (set.insert ct2!346 (as set.empty (Set Context!15384))) s!7854))))

(assert (=> start!708184 e!4355885))

(declare-fun inv!89891 (Context!15384) Bool)

(assert (=> start!708184 (and (inv!89891 ct2!346) e!4355887)))

(declare-fun e!4355884 () Bool)

(assert (=> start!708184 e!4355884))

(assert (=> start!708184 (and (inv!89891 ct1!250) e!4355886)))

(declare-fun b!7263719 () Bool)

(declare-fun res!2944964 () Bool)

(assert (=> b!7263719 (=> (not res!2944964) (not e!4355885))))

(declare-fun nullableContext!242 (Context!15384) Bool)

(assert (=> b!7263719 (= res!2944964 (nullableContext!242 ct1!250))))

(declare-fun b!7263720 () Bool)

(declare-fun tp_is_empty!46969 () Bool)

(declare-fun tp!2040032 () Bool)

(assert (=> b!7263720 (= e!4355884 (and tp_is_empty!46969 tp!2040032))))

(declare-fun b!7263721 () Bool)

(declare-fun res!2944966 () Bool)

(assert (=> b!7263721 (=> (not res!2944966) (not e!4355885))))

(assert (=> b!7263721 (= res!2944966 (is-Cons!70696 s!7854))))

(assert (= (and start!708184 res!2944965) b!7263719))

(assert (= (and b!7263719 res!2944964) b!7263721))

(assert (= (and b!7263721 res!2944966) b!7263718))

(assert (= start!708184 b!7263716))

(assert (= (and start!708184 (is-Cons!70696 s!7854)) b!7263720))

(assert (= start!708184 b!7263717))

(declare-fun m!7948370 () Bool)

(assert (=> b!7263718 m!7948370))

(declare-fun m!7948372 () Bool)

(assert (=> b!7263718 m!7948372))

(declare-fun m!7948374 () Bool)

(assert (=> b!7263718 m!7948374))

(assert (=> b!7263718 m!7948370))

(declare-fun m!7948376 () Bool)

(assert (=> b!7263718 m!7948376))

(declare-fun m!7948378 () Bool)

(assert (=> b!7263718 m!7948378))

(declare-fun m!7948380 () Bool)

(assert (=> b!7263718 m!7948380))

(declare-fun m!7948382 () Bool)

(assert (=> b!7263718 m!7948382))

(declare-fun m!7948384 () Bool)

(assert (=> b!7263718 m!7948384))

(declare-fun m!7948386 () Bool)

(assert (=> b!7263718 m!7948386))

(assert (=> b!7263718 m!7948370))

(declare-fun m!7948388 () Bool)

(assert (=> b!7263718 m!7948388))

(declare-fun m!7948390 () Bool)

(assert (=> b!7263718 m!7948390))

(declare-fun m!7948392 () Bool)

(assert (=> start!708184 m!7948392))

(assert (=> start!708184 m!7948392))

(declare-fun m!7948394 () Bool)

(assert (=> start!708184 m!7948394))

(declare-fun m!7948396 () Bool)

(assert (=> start!708184 m!7948396))

(declare-fun m!7948398 () Bool)

(assert (=> start!708184 m!7948398))

(declare-fun m!7948400 () Bool)

(assert (=> b!7263719 m!7948400))

(push 1)

(assert (not b!7263719))

(assert (not b!7263716))

(assert (not start!708184))

(assert (not b!7263718))

(assert (not b!7263717))

(assert tp_is_empty!46969)

(assert (not b!7263720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!661832 () (Set Context!15384))

(declare-fun b!7263754 () Bool)

(declare-fun e!4355908 () (Set Context!15384))

(assert (=> b!7263754 (= e!4355908 (set.union call!661832 (derivationStepZipperUp!2522 (Context!15385 (t!384885 (exprs!8192 ct1!250))) (h!77144 s!7854))))))

(declare-fun b!7263755 () Bool)

(declare-fun e!4355907 () (Set Context!15384))

(assert (=> b!7263755 (= e!4355907 (as set.empty (Set Context!15384)))))

(declare-fun b!7263756 () Bool)

(assert (=> b!7263756 (= e!4355907 call!661832)))

(declare-fun bm!661827 () Bool)

(declare-fun derivationStepZipperDown!2688 (Regex!18752 Context!15384 C!37778) (Set Context!15384))

(assert (=> bm!661827 (= call!661832 (derivationStepZipperDown!2688 (h!77143 (exprs!8192 ct1!250)) (Context!15385 (t!384885 (exprs!8192 ct1!250))) (h!77144 s!7854)))))

(declare-fun b!7263757 () Bool)

(declare-fun e!4355906 () Bool)

(declare-fun nullable!7954 (Regex!18752) Bool)

(assert (=> b!7263757 (= e!4355906 (nullable!7954 (h!77143 (exprs!8192 ct1!250))))))

(declare-fun b!7263758 () Bool)

(assert (=> b!7263758 (= e!4355908 e!4355907)))

(declare-fun c!1351370 () Bool)

(assert (=> b!7263758 (= c!1351370 (is-Cons!70695 (exprs!8192 ct1!250)))))

(declare-fun d!2259815 () Bool)

(declare-fun c!1351371 () Bool)

(assert (=> d!2259815 (= c!1351371 e!4355906)))

(declare-fun res!2944978 () Bool)

(assert (=> d!2259815 (=> (not res!2944978) (not e!4355906))))

(assert (=> d!2259815 (= res!2944978 (is-Cons!70695 (exprs!8192 ct1!250)))))

(assert (=> d!2259815 (= (derivationStepZipperUp!2522 ct1!250 (h!77144 s!7854)) e!4355908)))

(assert (= (and d!2259815 res!2944978) b!7263757))

(assert (= (and d!2259815 c!1351371) b!7263754))

(assert (= (and d!2259815 (not c!1351371)) b!7263758))

(assert (= (and b!7263758 c!1351370) b!7263756))

(assert (= (and b!7263758 (not c!1351370)) b!7263755))

(assert (= (or b!7263754 b!7263756) bm!661827))

(declare-fun m!7948434 () Bool)

(assert (=> b!7263754 m!7948434))

(declare-fun m!7948436 () Bool)

(assert (=> bm!661827 m!7948436))

(declare-fun m!7948438 () Bool)

(assert (=> b!7263757 m!7948438))

(assert (=> b!7263718 d!2259815))

(declare-fun d!2259817 () Bool)

(declare-fun choose!56276 ((Set Context!15384) Int) (Set Context!15384))

(assert (=> d!2259817 (= (flatMap!2865 lt!2591671 lambda!447075) (choose!56276 lt!2591671 lambda!447075))))

(declare-fun bs!1909919 () Bool)

(assert (= bs!1909919 d!2259817))

(declare-fun m!7948440 () Bool)

(assert (=> bs!1909919 m!7948440))

(assert (=> b!7263718 d!2259817))

(declare-fun call!661833 () (Set Context!15384))

(declare-fun e!4355911 () (Set Context!15384))

(declare-fun b!7263759 () Bool)

(assert (=> b!7263759 (= e!4355911 (set.union call!661833 (derivationStepZipperUp!2522 (Context!15385 (t!384885 (exprs!8192 lt!2591668))) (h!77144 s!7854))))))

(declare-fun b!7263760 () Bool)

(declare-fun e!4355910 () (Set Context!15384))

(assert (=> b!7263760 (= e!4355910 (as set.empty (Set Context!15384)))))

(declare-fun b!7263761 () Bool)

(assert (=> b!7263761 (= e!4355910 call!661833)))

(declare-fun bm!661828 () Bool)

(assert (=> bm!661828 (= call!661833 (derivationStepZipperDown!2688 (h!77143 (exprs!8192 lt!2591668)) (Context!15385 (t!384885 (exprs!8192 lt!2591668))) (h!77144 s!7854)))))

(declare-fun b!7263762 () Bool)

(declare-fun e!4355909 () Bool)

(assert (=> b!7263762 (= e!4355909 (nullable!7954 (h!77143 (exprs!8192 lt!2591668))))))

(declare-fun b!7263763 () Bool)

(assert (=> b!7263763 (= e!4355911 e!4355910)))

(declare-fun c!1351372 () Bool)

(assert (=> b!7263763 (= c!1351372 (is-Cons!70695 (exprs!8192 lt!2591668)))))

(declare-fun d!2259819 () Bool)

(declare-fun c!1351373 () Bool)

(assert (=> d!2259819 (= c!1351373 e!4355909)))

(declare-fun res!2944979 () Bool)

(assert (=> d!2259819 (=> (not res!2944979) (not e!4355909))))

(assert (=> d!2259819 (= res!2944979 (is-Cons!70695 (exprs!8192 lt!2591668)))))

(assert (=> d!2259819 (= (derivationStepZipperUp!2522 lt!2591668 (h!77144 s!7854)) e!4355911)))

(assert (= (and d!2259819 res!2944979) b!7263762))

(assert (= (and d!2259819 c!1351373) b!7263759))

(assert (= (and d!2259819 (not c!1351373)) b!7263763))

(assert (= (and b!7263763 c!1351372) b!7263761))

(assert (= (and b!7263763 (not c!1351372)) b!7263760))

(assert (= (or b!7263759 b!7263761) bm!661828))

(declare-fun m!7948442 () Bool)

(assert (=> b!7263759 m!7948442))

(declare-fun m!7948444 () Bool)

(assert (=> bm!661828 m!7948444))

(declare-fun m!7948446 () Bool)

(assert (=> b!7263762 m!7948446))

(assert (=> b!7263718 d!2259819))

(declare-fun d!2259821 () Bool)

(declare-fun res!2944984 () Bool)

(declare-fun e!4355916 () Bool)

(assert (=> d!2259821 (=> res!2944984 e!4355916)))

(assert (=> d!2259821 (= res!2944984 (is-Nil!70695 (exprs!8192 ct1!250)))))

(assert (=> d!2259821 (= (forall!17587 (exprs!8192 ct1!250) lambda!447074) e!4355916)))

(declare-fun b!7263768 () Bool)

(declare-fun e!4355917 () Bool)

(assert (=> b!7263768 (= e!4355916 e!4355917)))

(declare-fun res!2944985 () Bool)

(assert (=> b!7263768 (=> (not res!2944985) (not e!4355917))))

(declare-fun dynLambda!28861 (Int Regex!18752) Bool)

(assert (=> b!7263768 (= res!2944985 (dynLambda!28861 lambda!447074 (h!77143 (exprs!8192 ct1!250))))))

(declare-fun b!7263769 () Bool)

(assert (=> b!7263769 (= e!4355917 (forall!17587 (t!384885 (exprs!8192 ct1!250)) lambda!447074))))

(assert (= (and d!2259821 (not res!2944984)) b!7263768))

(assert (= (and b!7263768 res!2944985) b!7263769))

(declare-fun b_lambda!279485 () Bool)

(assert (=> (not b_lambda!279485) (not b!7263768)))

(declare-fun m!7948448 () Bool)

(assert (=> b!7263768 m!7948448))

(declare-fun m!7948450 () Bool)

(assert (=> b!7263769 m!7948450))

(assert (=> b!7263718 d!2259821))

(declare-fun d!2259823 () Bool)

(assert (=> d!2259823 (= (flatMap!2865 lt!2591676 lambda!447075) (choose!56276 lt!2591676 lambda!447075))))

(declare-fun bs!1909920 () Bool)

(assert (= bs!1909920 d!2259823))

(declare-fun m!7948452 () Bool)

(assert (=> bs!1909920 m!7948452))

(assert (=> b!7263718 d!2259823))

(declare-fun d!2259825 () Bool)

(declare-fun dynLambda!28862 (Int Context!15384) (Set Context!15384))

(assert (=> d!2259825 (= (flatMap!2865 lt!2591671 lambda!447075) (dynLambda!28862 lambda!447075 ct1!250))))

(declare-fun lt!2591706 () Unit!164122)

(declare-fun choose!56277 ((Set Context!15384) Context!15384 Int) Unit!164122)

(assert (=> d!2259825 (= lt!2591706 (choose!56277 lt!2591671 ct1!250 lambda!447075))))

(assert (=> d!2259825 (= lt!2591671 (set.insert ct1!250 (as set.empty (Set Context!15384))))))

(assert (=> d!2259825 (= (lemmaFlatMapOnSingletonSet!2265 lt!2591671 ct1!250 lambda!447075) lt!2591706)))

(declare-fun b_lambda!279487 () Bool)

(assert (=> (not b_lambda!279487) (not d!2259825)))

(declare-fun bs!1909921 () Bool)

(assert (= bs!1909921 d!2259825))

(assert (=> bs!1909921 m!7948388))

(declare-fun m!7948454 () Bool)

(assert (=> bs!1909921 m!7948454))

(declare-fun m!7948456 () Bool)

(assert (=> bs!1909921 m!7948456))

(assert (=> bs!1909921 m!7948384))

(assert (=> b!7263718 d!2259825))

(declare-fun d!2259829 () Bool)

(declare-fun e!4355928 () Bool)

(assert (=> d!2259829 e!4355928))

(declare-fun res!2944993 () Bool)

(assert (=> d!2259829 (=> (not res!2944993) (not e!4355928))))

(declare-fun lt!2591709 () List!70819)

(declare-fun content!14738 (List!70819) (Set Regex!18752))

(assert (=> d!2259829 (= res!2944993 (= (content!14738 lt!2591709) (set.union (content!14738 (exprs!8192 ct1!250)) (content!14738 (exprs!8192 ct2!346)))))))

(declare-fun e!4355929 () List!70819)

(assert (=> d!2259829 (= lt!2591709 e!4355929)))

(declare-fun c!1351380 () Bool)

(assert (=> d!2259829 (= c!1351380 (is-Nil!70695 (exprs!8192 ct1!250)))))

(assert (=> d!2259829 (= (++!16652 (exprs!8192 ct1!250) (exprs!8192 ct2!346)) lt!2591709)))

(declare-fun b!7263789 () Bool)

(assert (=> b!7263789 (= e!4355929 (Cons!70695 (h!77143 (exprs!8192 ct1!250)) (++!16652 (t!384885 (exprs!8192 ct1!250)) (exprs!8192 ct2!346))))))

(declare-fun b!7263790 () Bool)

(declare-fun res!2944992 () Bool)

(assert (=> b!7263790 (=> (not res!2944992) (not e!4355928))))

(declare-fun size!41786 (List!70819) Int)

(assert (=> b!7263790 (= res!2944992 (= (size!41786 lt!2591709) (+ (size!41786 (exprs!8192 ct1!250)) (size!41786 (exprs!8192 ct2!346)))))))

(declare-fun b!7263788 () Bool)

(assert (=> b!7263788 (= e!4355929 (exprs!8192 ct2!346))))

(declare-fun b!7263791 () Bool)

(assert (=> b!7263791 (= e!4355928 (or (not (= (exprs!8192 ct2!346) Nil!70695)) (= lt!2591709 (exprs!8192 ct1!250))))))

(assert (= (and d!2259829 c!1351380) b!7263788))

(assert (= (and d!2259829 (not c!1351380)) b!7263789))

(assert (= (and d!2259829 res!2944993) b!7263790))

(assert (= (and b!7263790 res!2944992) b!7263791))

(declare-fun m!7948458 () Bool)

(assert (=> d!2259829 m!7948458))

(declare-fun m!7948460 () Bool)

(assert (=> d!2259829 m!7948460))

(declare-fun m!7948462 () Bool)

(assert (=> d!2259829 m!7948462))

(declare-fun m!7948464 () Bool)

(assert (=> b!7263789 m!7948464))

(declare-fun m!7948466 () Bool)

(assert (=> b!7263790 m!7948466))

(declare-fun m!7948468 () Bool)

(assert (=> b!7263790 m!7948468))

(declare-fun m!7948470 () Bool)

(assert (=> b!7263790 m!7948470))

(assert (=> b!7263718 d!2259829))

(declare-fun d!2259831 () Bool)

(assert (=> d!2259831 (= (flatMap!2865 lt!2591676 lambda!447075) (dynLambda!28862 lambda!447075 lt!2591668))))

(declare-fun lt!2591710 () Unit!164122)

(assert (=> d!2259831 (= lt!2591710 (choose!56277 lt!2591676 lt!2591668 lambda!447075))))

(assert (=> d!2259831 (= lt!2591676 (set.insert lt!2591668 (as set.empty (Set Context!15384))))))

(assert (=> d!2259831 (= (lemmaFlatMapOnSingletonSet!2265 lt!2591676 lt!2591668 lambda!447075) lt!2591710)))

(declare-fun b_lambda!279489 () Bool)

(assert (=> (not b_lambda!279489) (not d!2259831)))

(declare-fun bs!1909922 () Bool)

(assert (= bs!1909922 d!2259831))

(assert (=> bs!1909922 m!7948372))

(declare-fun m!7948472 () Bool)

(assert (=> bs!1909922 m!7948472))

(declare-fun m!7948474 () Bool)

(assert (=> bs!1909922 m!7948474))

(assert (=> bs!1909922 m!7948382))

(assert (=> b!7263718 d!2259831))

(declare-fun d!2259833 () Bool)

(assert (=> d!2259833 (forall!17587 (++!16652 (exprs!8192 ct1!250) (exprs!8192 ct2!346)) lambda!447074)))

(declare-fun lt!2591713 () Unit!164122)

(declare-fun choose!56278 (List!70819 List!70819 Int) Unit!164122)

(assert (=> d!2259833 (= lt!2591713 (choose!56278 (exprs!8192 ct1!250) (exprs!8192 ct2!346) lambda!447074))))

(assert (=> d!2259833 (forall!17587 (exprs!8192 ct1!250) lambda!447074)))

(assert (=> d!2259833 (= (lemmaConcatPreservesForall!1509 (exprs!8192 ct1!250) (exprs!8192 ct2!346) lambda!447074) lt!2591713)))

(declare-fun bs!1909923 () Bool)

(assert (= bs!1909923 d!2259833))

(assert (=> bs!1909923 m!7948386))

(assert (=> bs!1909923 m!7948386))

(declare-fun m!7948476 () Bool)

(assert (=> bs!1909923 m!7948476))

(declare-fun m!7948478 () Bool)

(assert (=> bs!1909923 m!7948478))

(assert (=> bs!1909923 m!7948376))

(assert (=> b!7263718 d!2259833))

(declare-fun bs!1909924 () Bool)

(declare-fun d!2259835 () Bool)

(assert (= bs!1909924 (and d!2259835 b!7263718)))

(declare-fun lambda!447092 () Int)

(assert (=> bs!1909924 (not (= lambda!447092 lambda!447074))))

(assert (=> d!2259835 (= (nullableContext!242 ct1!250) (forall!17587 (exprs!8192 ct1!250) lambda!447092))))

(declare-fun bs!1909925 () Bool)

(assert (= bs!1909925 d!2259835))

(declare-fun m!7948480 () Bool)

(assert (=> bs!1909925 m!7948480))

(assert (=> b!7263719 d!2259835))

(declare-fun d!2259837 () Bool)

(declare-fun c!1351386 () Bool)

(declare-fun isEmpty!40633 (List!70820) Bool)

(assert (=> d!2259837 (= c!1351386 (isEmpty!40633 s!7854))))

(declare-fun e!4355935 () Bool)

(assert (=> d!2259837 (= (matchZipper!3656 (set.insert ct2!346 (as set.empty (Set Context!15384))) s!7854) e!4355935)))

(declare-fun b!7263801 () Bool)

(declare-fun nullableZipper!2967 ((Set Context!15384)) Bool)

(assert (=> b!7263801 (= e!4355935 (nullableZipper!2967 (set.insert ct2!346 (as set.empty (Set Context!15384)))))))

(declare-fun b!7263802 () Bool)

(declare-fun derivationStepZipper!3493 ((Set Context!15384) C!37778) (Set Context!15384))

(declare-fun head!14966 (List!70820) C!37778)

(declare-fun tail!14425 (List!70820) List!70820)

(assert (=> b!7263802 (= e!4355935 (matchZipper!3656 (derivationStepZipper!3493 (set.insert ct2!346 (as set.empty (Set Context!15384))) (head!14966 s!7854)) (tail!14425 s!7854)))))

(assert (= (and d!2259837 c!1351386) b!7263801))

(assert (= (and d!2259837 (not c!1351386)) b!7263802))

(declare-fun m!7948488 () Bool)

(assert (=> d!2259837 m!7948488))

(assert (=> b!7263801 m!7948392))

(declare-fun m!7948490 () Bool)

(assert (=> b!7263801 m!7948490))

(declare-fun m!7948492 () Bool)

(assert (=> b!7263802 m!7948492))

(assert (=> b!7263802 m!7948392))

(assert (=> b!7263802 m!7948492))

(declare-fun m!7948494 () Bool)

(assert (=> b!7263802 m!7948494))

(declare-fun m!7948496 () Bool)

(assert (=> b!7263802 m!7948496))

(assert (=> b!7263802 m!7948494))

(assert (=> b!7263802 m!7948496))

(declare-fun m!7948498 () Bool)

(assert (=> b!7263802 m!7948498))

(assert (=> start!708184 d!2259837))

(declare-fun bs!1909926 () Bool)

(declare-fun d!2259841 () Bool)

(assert (= bs!1909926 (and d!2259841 b!7263718)))

(declare-fun lambda!447095 () Int)

(assert (=> bs!1909926 (= lambda!447095 lambda!447074)))

(declare-fun bs!1909927 () Bool)

(assert (= bs!1909927 (and d!2259841 d!2259835)))

(assert (=> bs!1909927 (not (= lambda!447095 lambda!447092))))

(assert (=> d!2259841 (= (inv!89891 ct2!346) (forall!17587 (exprs!8192 ct2!346) lambda!447095))))

(declare-fun bs!1909928 () Bool)

(assert (= bs!1909928 d!2259841))

(declare-fun m!7948500 () Bool)

(assert (=> bs!1909928 m!7948500))

(assert (=> start!708184 d!2259841))

(declare-fun bs!1909929 () Bool)

(declare-fun d!2259843 () Bool)

(assert (= bs!1909929 (and d!2259843 b!7263718)))

(declare-fun lambda!447096 () Int)

(assert (=> bs!1909929 (= lambda!447096 lambda!447074)))

(declare-fun bs!1909930 () Bool)

(assert (= bs!1909930 (and d!2259843 d!2259835)))

(assert (=> bs!1909930 (not (= lambda!447096 lambda!447092))))

(declare-fun bs!1909931 () Bool)

(assert (= bs!1909931 (and d!2259843 d!2259841)))

(assert (=> bs!1909931 (= lambda!447096 lambda!447095)))

(assert (=> d!2259843 (= (inv!89891 ct1!250) (forall!17587 (exprs!8192 ct1!250) lambda!447096))))

(declare-fun bs!1909932 () Bool)

(assert (= bs!1909932 d!2259843))

(declare-fun m!7948502 () Bool)

(assert (=> bs!1909932 m!7948502))

(assert (=> start!708184 d!2259843))

(declare-fun b!7263807 () Bool)

(declare-fun e!4355938 () Bool)

(declare-fun tp!2040045 () Bool)

(assert (=> b!7263807 (= e!4355938 (and tp_is_empty!46969 tp!2040045))))

(assert (=> b!7263720 (= tp!2040032 e!4355938)))

(assert (= (and b!7263720 (is-Cons!70696 (t!384886 s!7854))) b!7263807))

(declare-fun b!7263817 () Bool)

(declare-fun e!4355944 () Bool)

(declare-fun tp!2040050 () Bool)

(declare-fun tp!2040051 () Bool)

(assert (=> b!7263817 (= e!4355944 (and tp!2040050 tp!2040051))))

(assert (=> b!7263716 (= tp!2040033 e!4355944)))

(assert (= (and b!7263716 (is-Cons!70695 (exprs!8192 ct2!346))) b!7263817))

(declare-fun b!7263818 () Bool)

(declare-fun e!4355945 () Bool)

(declare-fun tp!2040052 () Bool)

(declare-fun tp!2040053 () Bool)

(assert (=> b!7263818 (= e!4355945 (and tp!2040052 tp!2040053))))

(assert (=> b!7263717 (= tp!2040031 e!4355945)))

(assert (= (and b!7263717 (is-Cons!70695 (exprs!8192 ct1!250))) b!7263818))

(declare-fun b_lambda!279493 () Bool)

(assert (= b_lambda!279487 (or b!7263718 b_lambda!279493)))

(declare-fun bs!1909934 () Bool)

(declare-fun d!2259847 () Bool)

(assert (= bs!1909934 (and d!2259847 b!7263718)))

(assert (=> bs!1909934 (= (dynLambda!28862 lambda!447075 ct1!250) (derivationStepZipperUp!2522 ct1!250 (h!77144 s!7854)))))

(assert (=> bs!1909934 m!7948390))

(assert (=> d!2259825 d!2259847))

(declare-fun b_lambda!279495 () Bool)

(assert (= b_lambda!279489 (or b!7263718 b_lambda!279495)))

(declare-fun bs!1909935 () Bool)

(declare-fun d!2259849 () Bool)

(assert (= bs!1909935 (and d!2259849 b!7263718)))

(assert (=> bs!1909935 (= (dynLambda!28862 lambda!447075 lt!2591668) (derivationStepZipperUp!2522 lt!2591668 (h!77144 s!7854)))))

(assert (=> bs!1909935 m!7948378))

(assert (=> d!2259831 d!2259849))

(declare-fun b_lambda!279497 () Bool)

(assert (= b_lambda!279485 (or b!7263718 b_lambda!279497)))

(declare-fun bs!1909936 () Bool)

(declare-fun d!2259851 () Bool)

(assert (= bs!1909936 (and d!2259851 b!7263718)))

(declare-fun validRegex!9561 (Regex!18752) Bool)

(assert (=> bs!1909936 (= (dynLambda!28861 lambda!447074 (h!77143 (exprs!8192 ct1!250))) (validRegex!9561 (h!77143 (exprs!8192 ct1!250))))))

(declare-fun m!7948510 () Bool)

(assert (=> bs!1909936 m!7948510))

(assert (=> b!7263768 d!2259851))

(push 1)

(assert (not b!7263769))

(assert (not b!7263802))

(assert (not bs!1909935))

(assert tp_is_empty!46969)

(assert (not b_lambda!279495))

(assert (not b_lambda!279497))

(assert (not d!2259833))

(assert (not b!7263754))

(assert (not b!7263790))

(assert (not d!2259837))

(assert (not b!7263762))

(assert (not b!7263817))

(assert (not b!7263789))

(assert (not d!2259835))

(assert (not bm!661827))

(assert (not d!2259825))

(assert (not bs!1909934))

(assert (not b_lambda!279493))

(assert (not d!2259823))

(assert (not b!7263757))

(assert (not b!7263801))

(assert (not d!2259829))

(assert (not b!7263807))

(assert (not d!2259831))

(assert (not d!2259843))

(assert (not b!7263759))

(assert (not d!2259817))

(assert (not b!7263818))

(assert (not bm!661828))

(assert (not d!2259841))

(assert (not bs!1909936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

