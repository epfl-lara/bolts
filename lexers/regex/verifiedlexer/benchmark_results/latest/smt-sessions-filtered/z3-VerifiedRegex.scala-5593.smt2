; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!280496 () Bool)

(assert start!280496)

(declare-fun b!2873926 () Bool)

(declare-fun e!1818785 () Bool)

(declare-fun e!1818787 () Bool)

(assert (=> b!2873926 (= e!1818785 e!1818787)))

(declare-fun res!1192032 () Bool)

(assert (=> b!2873926 (=> (not res!1192032) (not e!1818787))))

(declare-datatypes ((C!17664 0))(
  ( (C!17665 (val!10866 Int)) )
))
(declare-datatypes ((List!34514 0))(
  ( (Nil!34390) (Cons!34390 (h!39810 C!17664) (t!233557 List!34514)) )
))
(declare-datatypes ((Option!6416 0))(
  ( (None!6415) (Some!6415 (v!34539 List!34514)) )
))
(declare-fun lt!1018432 () Option!6416)

(get-info :version)

(assert (=> b!2873926 (= res!1192032 ((_ is Some!6415) lt!1018432))))

(declare-datatypes ((Regex!8741 0))(
  ( (ElementMatch!8741 (c!465376 C!17664)) (Concat!14062 (regOne!17994 Regex!8741) (regTwo!17994 Regex!8741)) (EmptyExpr!8741) (Star!8741 (reg!9070 Regex!8741)) (EmptyLang!8741) (Union!8741 (regOne!17995 Regex!8741) (regTwo!17995 Regex!8741)) )
))
(declare-datatypes ((List!34515 0))(
  ( (Nil!34391) (Cons!34391 (h!39811 Regex!8741) (t!233558 List!34515)) )
))
(declare-datatypes ((Context!5402 0))(
  ( (Context!5403 (exprs!3201 List!34515)) )
))
(declare-fun c!7184 () Context!5402)

(declare-fun getLanguageWitness!433 (Regex!8741) Option!6416)

(assert (=> b!2873926 (= lt!1018432 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2873927 () Bool)

(declare-fun e!1818786 () Bool)

(declare-fun e!1818788 () Bool)

(assert (=> b!2873927 (= e!1818786 e!1818788)))

(declare-fun res!1192035 () Bool)

(assert (=> b!2873927 (=> res!1192035 e!1818788)))

(declare-fun validRegex!3519 (Regex!8741) Bool)

(assert (=> b!2873927 (= res!1192035 (not (validRegex!3519 (h!39811 (exprs!3201 c!7184)))))))

(declare-datatypes ((List!34516 0))(
  ( (Nil!34392) (Cons!34392 (h!39812 Context!5402) (t!233559 List!34516)) )
))
(declare-fun lt!1018429 () List!34516)

(declare-fun lt!1018430 () Context!5402)

(assert (=> b!2873927 (= lt!1018429 (Cons!34392 lt!1018430 Nil!34392))))

(assert (=> b!2873927 (= lt!1018430 (Context!5403 (Cons!34391 (h!39811 (exprs!3201 c!7184)) Nil!34391)))))

(declare-fun b!2873928 () Bool)

(declare-fun res!1192036 () Bool)

(assert (=> b!2873928 (=> (not res!1192036) (not e!1818785))))

(assert (=> b!2873928 (= res!1192036 ((_ is Cons!34391) (exprs!3201 c!7184)))))

(declare-fun res!1192034 () Bool)

(assert (=> start!280496 (=> (not res!1192034) (not e!1818785))))

(declare-fun lostCause!833 (Context!5402) Bool)

(assert (=> start!280496 (= res!1192034 (not (lostCause!833 c!7184)))))

(assert (=> start!280496 e!1818785))

(declare-fun e!1818784 () Bool)

(declare-fun inv!46439 (Context!5402) Bool)

(assert (=> start!280496 (and (inv!46439 c!7184) e!1818784)))

(declare-fun b!2873929 () Bool)

(declare-fun tp!923632 () Bool)

(assert (=> b!2873929 (= e!1818784 tp!923632)))

(declare-fun b!2873930 () Bool)

(declare-fun res!1192037 () Bool)

(assert (=> b!2873930 (=> res!1192037 e!1818788)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!2026 ((InoxSet Context!5402)) List!34516)

(assert (=> b!2873930 (= res!1192037 (not (= (toList!2026 (store ((as const (Array Context!5402 Bool)) false) lt!1018430 true)) lt!1018429)))))

(declare-fun b!2873931 () Bool)

(declare-fun e!1818789 () Bool)

(assert (=> b!2873931 (= e!1818789 (not e!1818786))))

(declare-fun res!1192031 () Bool)

(assert (=> b!2873931 (=> res!1192031 e!1818786)))

(declare-fun matchR!3741 (Regex!8741 List!34514) Bool)

(assert (=> b!2873931 (= res!1192031 (not (matchR!3741 (h!39811 (exprs!3201 c!7184)) (v!34539 lt!1018432))))))

(declare-fun lt!1018434 () Context!5402)

(declare-fun lt!1018433 () Option!6416)

(declare-fun matchZipper!483 ((InoxSet Context!5402) List!34514) Bool)

(declare-fun get!10338 (Option!6416) List!34514)

(assert (=> b!2873931 (matchZipper!483 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (get!10338 lt!1018433))))

(declare-datatypes ((Unit!47983 0))(
  ( (Unit!47984) )
))
(declare-fun lt!1018435 () Unit!47983)

(declare-fun lemmaGetWitnessMatchesContext!40 (Context!5402) Unit!47983)

(assert (=> b!2873931 (= lt!1018435 (lemmaGetWitnessMatchesContext!40 lt!1018434))))

(assert (=> b!2873931 (matchR!3741 (h!39811 (exprs!3201 c!7184)) (get!10338 lt!1018432))))

(declare-fun lt!1018431 () Unit!47983)

(declare-fun lemmaGetWitnessMatches!48 (Regex!8741) Unit!47983)

(assert (=> b!2873931 (= lt!1018431 (lemmaGetWitnessMatches!48 (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2873932 () Bool)

(declare-fun unfocusZipper!241 (List!34516) Regex!8741)

(assert (=> b!2873932 (= e!1818788 (= (h!39811 (exprs!3201 c!7184)) (unfocusZipper!241 lt!1018429)))))

(declare-fun b!2873933 () Bool)

(assert (=> b!2873933 (= e!1818787 e!1818789)))

(declare-fun res!1192033 () Bool)

(assert (=> b!2873933 (=> (not res!1192033) (not e!1818789))))

(assert (=> b!2873933 (= res!1192033 ((_ is Some!6415) lt!1018433))))

(declare-fun getLanguageWitness!434 (Context!5402) Option!6416)

(assert (=> b!2873933 (= lt!1018433 (getLanguageWitness!434 lt!1018434))))

(assert (=> b!2873933 (= lt!1018434 (Context!5403 (t!233558 (exprs!3201 c!7184))))))

(assert (= (and start!280496 res!1192034) b!2873928))

(assert (= (and b!2873928 res!1192036) b!2873926))

(assert (= (and b!2873926 res!1192032) b!2873933))

(assert (= (and b!2873933 res!1192033) b!2873931))

(assert (= (and b!2873931 (not res!1192031)) b!2873927))

(assert (= (and b!2873927 (not res!1192035)) b!2873930))

(assert (= (and b!2873930 (not res!1192037)) b!2873932))

(assert (= start!280496 b!2873929))

(declare-fun m!3291959 () Bool)

(assert (=> b!2873932 m!3291959))

(declare-fun m!3291961 () Bool)

(assert (=> start!280496 m!3291961))

(declare-fun m!3291963 () Bool)

(assert (=> start!280496 m!3291963))

(declare-fun m!3291965 () Bool)

(assert (=> b!2873930 m!3291965))

(assert (=> b!2873930 m!3291965))

(declare-fun m!3291967 () Bool)

(assert (=> b!2873930 m!3291967))

(declare-fun m!3291969 () Bool)

(assert (=> b!2873926 m!3291969))

(declare-fun m!3291971 () Bool)

(assert (=> b!2873927 m!3291971))

(declare-fun m!3291973 () Bool)

(assert (=> b!2873931 m!3291973))

(declare-fun m!3291975 () Bool)

(assert (=> b!2873931 m!3291975))

(declare-fun m!3291977 () Bool)

(assert (=> b!2873931 m!3291977))

(declare-fun m!3291979 () Bool)

(assert (=> b!2873931 m!3291979))

(declare-fun m!3291981 () Bool)

(assert (=> b!2873931 m!3291981))

(declare-fun m!3291983 () Bool)

(assert (=> b!2873931 m!3291983))

(assert (=> b!2873931 m!3291973))

(assert (=> b!2873931 m!3291975))

(assert (=> b!2873931 m!3291983))

(declare-fun m!3291985 () Bool)

(assert (=> b!2873931 m!3291985))

(declare-fun m!3291987 () Bool)

(assert (=> b!2873931 m!3291987))

(declare-fun m!3291989 () Bool)

(assert (=> b!2873933 m!3291989))

(check-sat (not b!2873929) (not b!2873926) (not start!280496) (not b!2873927) (not b!2873932) (not b!2873931) (not b!2873930) (not b!2873933))
(check-sat)
(get-model)

(declare-fun d!830646 () Bool)

(declare-fun e!1818792 () Bool)

(assert (=> d!830646 e!1818792))

(declare-fun res!1192040 () Bool)

(assert (=> d!830646 (=> (not res!1192040) (not e!1818792))))

(declare-fun lt!1018438 () List!34516)

(declare-fun noDuplicate!581 (List!34516) Bool)

(assert (=> d!830646 (= res!1192040 (noDuplicate!581 lt!1018438))))

(declare-fun choose!16996 ((InoxSet Context!5402)) List!34516)

(assert (=> d!830646 (= lt!1018438 (choose!16996 (store ((as const (Array Context!5402 Bool)) false) lt!1018430 true)))))

(assert (=> d!830646 (= (toList!2026 (store ((as const (Array Context!5402 Bool)) false) lt!1018430 true)) lt!1018438)))

(declare-fun b!2873936 () Bool)

(declare-fun content!4702 (List!34516) (InoxSet Context!5402))

(assert (=> b!2873936 (= e!1818792 (= (content!4702 lt!1018438) (store ((as const (Array Context!5402 Bool)) false) lt!1018430 true)))))

(assert (= (and d!830646 res!1192040) b!2873936))

(declare-fun m!3291991 () Bool)

(assert (=> d!830646 m!3291991))

(assert (=> d!830646 m!3291965))

(declare-fun m!3291993 () Bool)

(assert (=> d!830646 m!3291993))

(declare-fun m!3291995 () Bool)

(assert (=> b!2873936 m!3291995))

(assert (=> b!2873930 d!830646))

(declare-fun d!830648 () Bool)

(assert (=> d!830648 (= (get!10338 lt!1018433) (v!34539 lt!1018433))))

(assert (=> b!2873931 d!830648))

(declare-fun d!830650 () Bool)

(declare-fun c!465383 () Bool)

(declare-fun isEmpty!18722 (List!34514) Bool)

(assert (=> d!830650 (= c!465383 (isEmpty!18722 (get!10338 lt!1018433)))))

(declare-fun e!1818809 () Bool)

(assert (=> d!830650 (= (matchZipper!483 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (get!10338 lt!1018433)) e!1818809)))

(declare-fun b!2873959 () Bool)

(declare-fun nullableZipper!719 ((InoxSet Context!5402)) Bool)

(assert (=> b!2873959 (= e!1818809 (nullableZipper!719 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true)))))

(declare-fun b!2873960 () Bool)

(declare-fun derivationStepZipper!475 ((InoxSet Context!5402) C!17664) (InoxSet Context!5402))

(declare-fun head!6346 (List!34514) C!17664)

(declare-fun tail!4571 (List!34514) List!34514)

(assert (=> b!2873960 (= e!1818809 (matchZipper!483 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433))) (tail!4571 (get!10338 lt!1018433))))))

(assert (= (and d!830650 c!465383) b!2873959))

(assert (= (and d!830650 (not c!465383)) b!2873960))

(assert (=> d!830650 m!3291975))

(declare-fun m!3291997 () Bool)

(assert (=> d!830650 m!3291997))

(assert (=> b!2873959 m!3291973))

(declare-fun m!3291999 () Bool)

(assert (=> b!2873959 m!3291999))

(assert (=> b!2873960 m!3291975))

(declare-fun m!3292001 () Bool)

(assert (=> b!2873960 m!3292001))

(assert (=> b!2873960 m!3291973))

(assert (=> b!2873960 m!3292001))

(declare-fun m!3292003 () Bool)

(assert (=> b!2873960 m!3292003))

(assert (=> b!2873960 m!3291975))

(declare-fun m!3292005 () Bool)

(assert (=> b!2873960 m!3292005))

(assert (=> b!2873960 m!3292003))

(assert (=> b!2873960 m!3292005))

(declare-fun m!3292007 () Bool)

(assert (=> b!2873960 m!3292007))

(assert (=> b!2873931 d!830650))

(declare-fun d!830654 () Bool)

(assert (=> d!830654 (matchR!3741 (h!39811 (exprs!3201 c!7184)) (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))

(declare-fun lt!1018441 () Unit!47983)

(declare-fun choose!16997 (Regex!8741) Unit!47983)

(assert (=> d!830654 (= lt!1018441 (choose!16997 (h!39811 (exprs!3201 c!7184))))))

(assert (=> d!830654 (validRegex!3519 (h!39811 (exprs!3201 c!7184)))))

(assert (=> d!830654 (= (lemmaGetWitnessMatches!48 (h!39811 (exprs!3201 c!7184))) lt!1018441)))

(declare-fun bs!522358 () Bool)

(assert (= bs!522358 d!830654))

(declare-fun m!3292015 () Bool)

(assert (=> bs!522358 m!3292015))

(declare-fun m!3292017 () Bool)

(assert (=> bs!522358 m!3292017))

(declare-fun m!3292019 () Bool)

(assert (=> bs!522358 m!3292019))

(assert (=> bs!522358 m!3291971))

(assert (=> bs!522358 m!3291969))

(assert (=> bs!522358 m!3292015))

(assert (=> bs!522358 m!3291969))

(assert (=> b!2873931 d!830654))

(declare-fun d!830658 () Bool)

(assert (=> d!830658 (matchZipper!483 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (get!10338 (getLanguageWitness!434 lt!1018434)))))

(declare-fun lt!1018447 () Unit!47983)

(declare-fun choose!16998 (Context!5402) Unit!47983)

(assert (=> d!830658 (= lt!1018447 (choose!16998 lt!1018434))))

(assert (=> d!830658 (not (lostCause!833 lt!1018434))))

(assert (=> d!830658 (= (lemmaGetWitnessMatchesContext!40 lt!1018434) lt!1018447)))

(declare-fun bs!522360 () Bool)

(assert (= bs!522360 d!830658))

(declare-fun m!3292027 () Bool)

(assert (=> bs!522360 m!3292027))

(assert (=> bs!522360 m!3291973))

(declare-fun m!3292029 () Bool)

(assert (=> bs!522360 m!3292029))

(declare-fun m!3292031 () Bool)

(assert (=> bs!522360 m!3292031))

(assert (=> bs!522360 m!3291989))

(assert (=> bs!522360 m!3291989))

(assert (=> bs!522360 m!3292029))

(assert (=> bs!522360 m!3291973))

(declare-fun m!3292033 () Bool)

(assert (=> bs!522360 m!3292033))

(assert (=> b!2873931 d!830658))

(declare-fun bm!185833 () Bool)

(declare-fun call!185838 () Bool)

(assert (=> bm!185833 (= call!185838 (isEmpty!18722 (v!34539 lt!1018432)))))

(declare-fun d!830662 () Bool)

(declare-fun e!1818856 () Bool)

(assert (=> d!830662 e!1818856))

(declare-fun c!465419 () Bool)

(assert (=> d!830662 (= c!465419 ((_ is EmptyExpr!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun lt!1018459 () Bool)

(declare-fun e!1818859 () Bool)

(assert (=> d!830662 (= lt!1018459 e!1818859)))

(declare-fun c!465418 () Bool)

(assert (=> d!830662 (= c!465418 (isEmpty!18722 (v!34539 lt!1018432)))))

(assert (=> d!830662 (validRegex!3519 (h!39811 (exprs!3201 c!7184)))))

(assert (=> d!830662 (= (matchR!3741 (h!39811 (exprs!3201 c!7184)) (v!34539 lt!1018432)) lt!1018459)))

(declare-fun b!2874046 () Bool)

(declare-fun e!1818855 () Bool)

(assert (=> b!2874046 (= e!1818855 (not (= (head!6346 (v!34539 lt!1018432)) (c!465376 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874047 () Bool)

(declare-fun res!1192076 () Bool)

(declare-fun e!1818860 () Bool)

(assert (=> b!2874047 (=> (not res!1192076) (not e!1818860))))

(assert (=> b!2874047 (= res!1192076 (isEmpty!18722 (tail!4571 (v!34539 lt!1018432))))))

(declare-fun b!2874048 () Bool)

(declare-fun e!1818858 () Bool)

(assert (=> b!2874048 (= e!1818858 e!1818855)))

(declare-fun res!1192077 () Bool)

(assert (=> b!2874048 (=> res!1192077 e!1818855)))

(assert (=> b!2874048 (= res!1192077 call!185838)))

(declare-fun b!2874049 () Bool)

(declare-fun e!1818861 () Bool)

(assert (=> b!2874049 (= e!1818861 (not lt!1018459))))

(declare-fun b!2874050 () Bool)

(declare-fun res!1192078 () Bool)

(assert (=> b!2874050 (=> res!1192078 e!1818855)))

(assert (=> b!2874050 (= res!1192078 (not (isEmpty!18722 (tail!4571 (v!34539 lt!1018432)))))))

(declare-fun b!2874051 () Bool)

(declare-fun res!1192073 () Bool)

(declare-fun e!1818857 () Bool)

(assert (=> b!2874051 (=> res!1192073 e!1818857)))

(assert (=> b!2874051 (= res!1192073 (not ((_ is ElementMatch!8741) (h!39811 (exprs!3201 c!7184)))))))

(assert (=> b!2874051 (= e!1818861 e!1818857)))

(declare-fun b!2874052 () Bool)

(declare-fun res!1192072 () Bool)

(assert (=> b!2874052 (=> res!1192072 e!1818857)))

(assert (=> b!2874052 (= res!1192072 e!1818860)))

(declare-fun res!1192079 () Bool)

(assert (=> b!2874052 (=> (not res!1192079) (not e!1818860))))

(assert (=> b!2874052 (= res!1192079 lt!1018459)))

(declare-fun b!2874053 () Bool)

(assert (=> b!2874053 (= e!1818860 (= (head!6346 (v!34539 lt!1018432)) (c!465376 (h!39811 (exprs!3201 c!7184)))))))

(declare-fun b!2874054 () Bool)

(declare-fun res!1192074 () Bool)

(assert (=> b!2874054 (=> (not res!1192074) (not e!1818860))))

(assert (=> b!2874054 (= res!1192074 (not call!185838))))

(declare-fun b!2874055 () Bool)

(declare-fun nullable!2691 (Regex!8741) Bool)

(assert (=> b!2874055 (= e!1818859 (nullable!2691 (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2874056 () Bool)

(assert (=> b!2874056 (= e!1818857 e!1818858)))

(declare-fun res!1192075 () Bool)

(assert (=> b!2874056 (=> (not res!1192075) (not e!1818858))))

(assert (=> b!2874056 (= res!1192075 (not lt!1018459))))

(declare-fun b!2874057 () Bool)

(assert (=> b!2874057 (= e!1818856 (= lt!1018459 call!185838))))

(declare-fun b!2874058 () Bool)

(declare-fun derivativeStep!2324 (Regex!8741 C!17664) Regex!8741)

(assert (=> b!2874058 (= e!1818859 (matchR!3741 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (tail!4571 (v!34539 lt!1018432))))))

(declare-fun b!2874059 () Bool)

(assert (=> b!2874059 (= e!1818856 e!1818861)))

(declare-fun c!465417 () Bool)

(assert (=> b!2874059 (= c!465417 ((_ is EmptyLang!8741) (h!39811 (exprs!3201 c!7184))))))

(assert (= (and d!830662 c!465418) b!2874055))

(assert (= (and d!830662 (not c!465418)) b!2874058))

(assert (= (and d!830662 c!465419) b!2874057))

(assert (= (and d!830662 (not c!465419)) b!2874059))

(assert (= (and b!2874059 c!465417) b!2874049))

(assert (= (and b!2874059 (not c!465417)) b!2874051))

(assert (= (and b!2874051 (not res!1192073)) b!2874052))

(assert (= (and b!2874052 res!1192079) b!2874054))

(assert (= (and b!2874054 res!1192074) b!2874047))

(assert (= (and b!2874047 res!1192076) b!2874053))

(assert (= (and b!2874052 (not res!1192072)) b!2874056))

(assert (= (and b!2874056 res!1192075) b!2874048))

(assert (= (and b!2874048 (not res!1192077)) b!2874050))

(assert (= (and b!2874050 (not res!1192078)) b!2874046))

(assert (= (or b!2874057 b!2874054 b!2874048) bm!185833))

(declare-fun m!3292041 () Bool)

(assert (=> bm!185833 m!3292041))

(declare-fun m!3292043 () Bool)

(assert (=> b!2874047 m!3292043))

(assert (=> b!2874047 m!3292043))

(declare-fun m!3292045 () Bool)

(assert (=> b!2874047 m!3292045))

(assert (=> d!830662 m!3292041))

(assert (=> d!830662 m!3291971))

(declare-fun m!3292047 () Bool)

(assert (=> b!2874053 m!3292047))

(assert (=> b!2874058 m!3292047))

(assert (=> b!2874058 m!3292047))

(declare-fun m!3292049 () Bool)

(assert (=> b!2874058 m!3292049))

(assert (=> b!2874058 m!3292043))

(assert (=> b!2874058 m!3292049))

(assert (=> b!2874058 m!3292043))

(declare-fun m!3292051 () Bool)

(assert (=> b!2874058 m!3292051))

(assert (=> b!2874050 m!3292043))

(assert (=> b!2874050 m!3292043))

(assert (=> b!2874050 m!3292045))

(declare-fun m!3292053 () Bool)

(assert (=> b!2874055 m!3292053))

(assert (=> b!2874046 m!3292047))

(assert (=> b!2873931 d!830662))

(declare-fun bm!185834 () Bool)

(declare-fun call!185839 () Bool)

(assert (=> bm!185834 (= call!185839 (isEmpty!18722 (get!10338 lt!1018432)))))

(declare-fun d!830668 () Bool)

(declare-fun e!1818863 () Bool)

(assert (=> d!830668 e!1818863))

(declare-fun c!465423 () Bool)

(assert (=> d!830668 (= c!465423 ((_ is EmptyExpr!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun lt!1018462 () Bool)

(declare-fun e!1818866 () Bool)

(assert (=> d!830668 (= lt!1018462 e!1818866)))

(declare-fun c!465422 () Bool)

(assert (=> d!830668 (= c!465422 (isEmpty!18722 (get!10338 lt!1018432)))))

(assert (=> d!830668 (validRegex!3519 (h!39811 (exprs!3201 c!7184)))))

(assert (=> d!830668 (= (matchR!3741 (h!39811 (exprs!3201 c!7184)) (get!10338 lt!1018432)) lt!1018462)))

(declare-fun b!2874060 () Bool)

(declare-fun e!1818862 () Bool)

(assert (=> b!2874060 (= e!1818862 (not (= (head!6346 (get!10338 lt!1018432)) (c!465376 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874061 () Bool)

(declare-fun res!1192084 () Bool)

(declare-fun e!1818867 () Bool)

(assert (=> b!2874061 (=> (not res!1192084) (not e!1818867))))

(assert (=> b!2874061 (= res!1192084 (isEmpty!18722 (tail!4571 (get!10338 lt!1018432))))))

(declare-fun b!2874062 () Bool)

(declare-fun e!1818865 () Bool)

(assert (=> b!2874062 (= e!1818865 e!1818862)))

(declare-fun res!1192085 () Bool)

(assert (=> b!2874062 (=> res!1192085 e!1818862)))

(assert (=> b!2874062 (= res!1192085 call!185839)))

(declare-fun b!2874063 () Bool)

(declare-fun e!1818868 () Bool)

(assert (=> b!2874063 (= e!1818868 (not lt!1018462))))

(declare-fun b!2874064 () Bool)

(declare-fun res!1192086 () Bool)

(assert (=> b!2874064 (=> res!1192086 e!1818862)))

(assert (=> b!2874064 (= res!1192086 (not (isEmpty!18722 (tail!4571 (get!10338 lt!1018432)))))))

(declare-fun b!2874065 () Bool)

(declare-fun res!1192081 () Bool)

(declare-fun e!1818864 () Bool)

(assert (=> b!2874065 (=> res!1192081 e!1818864)))

(assert (=> b!2874065 (= res!1192081 (not ((_ is ElementMatch!8741) (h!39811 (exprs!3201 c!7184)))))))

(assert (=> b!2874065 (= e!1818868 e!1818864)))

(declare-fun b!2874066 () Bool)

(declare-fun res!1192080 () Bool)

(assert (=> b!2874066 (=> res!1192080 e!1818864)))

(assert (=> b!2874066 (= res!1192080 e!1818867)))

(declare-fun res!1192087 () Bool)

(assert (=> b!2874066 (=> (not res!1192087) (not e!1818867))))

(assert (=> b!2874066 (= res!1192087 lt!1018462)))

(declare-fun b!2874067 () Bool)

(assert (=> b!2874067 (= e!1818867 (= (head!6346 (get!10338 lt!1018432)) (c!465376 (h!39811 (exprs!3201 c!7184)))))))

(declare-fun b!2874068 () Bool)

(declare-fun res!1192082 () Bool)

(assert (=> b!2874068 (=> (not res!1192082) (not e!1818867))))

(assert (=> b!2874068 (= res!1192082 (not call!185839))))

(declare-fun b!2874069 () Bool)

(assert (=> b!2874069 (= e!1818866 (nullable!2691 (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2874070 () Bool)

(assert (=> b!2874070 (= e!1818864 e!1818865)))

(declare-fun res!1192083 () Bool)

(assert (=> b!2874070 (=> (not res!1192083) (not e!1818865))))

(assert (=> b!2874070 (= res!1192083 (not lt!1018462))))

(declare-fun b!2874071 () Bool)

(assert (=> b!2874071 (= e!1818863 (= lt!1018462 call!185839))))

(declare-fun b!2874072 () Bool)

(assert (=> b!2874072 (= e!1818866 (matchR!3741 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (tail!4571 (get!10338 lt!1018432))))))

(declare-fun b!2874073 () Bool)

(assert (=> b!2874073 (= e!1818863 e!1818868)))

(declare-fun c!465421 () Bool)

(assert (=> b!2874073 (= c!465421 ((_ is EmptyLang!8741) (h!39811 (exprs!3201 c!7184))))))

(assert (= (and d!830668 c!465422) b!2874069))

(assert (= (and d!830668 (not c!465422)) b!2874072))

(assert (= (and d!830668 c!465423) b!2874071))

(assert (= (and d!830668 (not c!465423)) b!2874073))

(assert (= (and b!2874073 c!465421) b!2874063))

(assert (= (and b!2874073 (not c!465421)) b!2874065))

(assert (= (and b!2874065 (not res!1192081)) b!2874066))

(assert (= (and b!2874066 res!1192087) b!2874068))

(assert (= (and b!2874068 res!1192082) b!2874061))

(assert (= (and b!2874061 res!1192084) b!2874067))

(assert (= (and b!2874066 (not res!1192080)) b!2874070))

(assert (= (and b!2874070 res!1192083) b!2874062))

(assert (= (and b!2874062 (not res!1192085)) b!2874064))

(assert (= (and b!2874064 (not res!1192086)) b!2874060))

(assert (= (or b!2874071 b!2874068 b!2874062) bm!185834))

(assert (=> bm!185834 m!3291983))

(declare-fun m!3292063 () Bool)

(assert (=> bm!185834 m!3292063))

(assert (=> b!2874061 m!3291983))

(declare-fun m!3292065 () Bool)

(assert (=> b!2874061 m!3292065))

(assert (=> b!2874061 m!3292065))

(declare-fun m!3292067 () Bool)

(assert (=> b!2874061 m!3292067))

(assert (=> d!830668 m!3291983))

(assert (=> d!830668 m!3292063))

(assert (=> d!830668 m!3291971))

(assert (=> b!2874067 m!3291983))

(declare-fun m!3292069 () Bool)

(assert (=> b!2874067 m!3292069))

(assert (=> b!2874072 m!3291983))

(assert (=> b!2874072 m!3292069))

(assert (=> b!2874072 m!3292069))

(declare-fun m!3292071 () Bool)

(assert (=> b!2874072 m!3292071))

(assert (=> b!2874072 m!3291983))

(assert (=> b!2874072 m!3292065))

(assert (=> b!2874072 m!3292071))

(assert (=> b!2874072 m!3292065))

(declare-fun m!3292073 () Bool)

(assert (=> b!2874072 m!3292073))

(assert (=> b!2874064 m!3291983))

(assert (=> b!2874064 m!3292065))

(assert (=> b!2874064 m!3292065))

(assert (=> b!2874064 m!3292067))

(assert (=> b!2874069 m!3292053))

(assert (=> b!2874060 m!3291983))

(assert (=> b!2874060 m!3292069))

(assert (=> b!2873931 d!830668))

(declare-fun d!830674 () Bool)

(assert (=> d!830674 (= (get!10338 lt!1018432) (v!34539 lt!1018432))))

(assert (=> b!2873931 d!830674))

(declare-fun d!830676 () Bool)

(declare-fun lambda!107196 () Int)

(declare-fun exists!1167 (List!34515 Int) Bool)

(assert (=> d!830676 (= (lostCause!833 c!7184) (exists!1167 (exprs!3201 c!7184) lambda!107196))))

(declare-fun bs!522368 () Bool)

(assert (= bs!522368 d!830676))

(declare-fun m!3292139 () Bool)

(assert (=> bs!522368 m!3292139))

(assert (=> start!280496 d!830676))

(declare-fun bs!522369 () Bool)

(declare-fun d!830692 () Bool)

(assert (= bs!522369 (and d!830692 d!830676)))

(declare-fun lambda!107199 () Int)

(assert (=> bs!522369 (not (= lambda!107199 lambda!107196))))

(declare-fun forall!7085 (List!34515 Int) Bool)

(assert (=> d!830692 (= (inv!46439 c!7184) (forall!7085 (exprs!3201 c!7184) lambda!107199))))

(declare-fun bs!522370 () Bool)

(assert (= bs!522370 d!830692))

(declare-fun m!3292141 () Bool)

(assert (=> bs!522370 m!3292141))

(assert (=> start!280496 d!830692))

(declare-fun bm!185843 () Bool)

(declare-fun call!185849 () Option!6416)

(declare-fun c!465470 () Bool)

(assert (=> bm!185843 (= call!185849 (getLanguageWitness!433 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun bm!185844 () Bool)

(declare-fun call!185848 () Option!6416)

(assert (=> bm!185844 (= call!185848 (getLanguageWitness!433 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874195 () Bool)

(declare-fun e!1818931 () Option!6416)

(assert (=> b!2874195 (= e!1818931 (Some!6415 (Cons!34390 (c!465376 (h!39811 (exprs!3201 c!7184))) Nil!34390)))))

(declare-fun b!2874196 () Bool)

(declare-fun e!1818935 () Option!6416)

(assert (=> b!2874196 (= e!1818935 None!6415)))

(declare-fun b!2874197 () Bool)

(declare-fun e!1818938 () Option!6416)

(assert (=> b!2874197 (= e!1818938 (Some!6415 Nil!34390))))

(declare-fun b!2874198 () Bool)

(declare-fun e!1818936 () Option!6416)

(assert (=> b!2874198 (= e!1818936 None!6415)))

(declare-fun b!2874199 () Bool)

(declare-fun e!1818932 () Option!6416)

(assert (=> b!2874199 (= e!1818932 e!1818936)))

(declare-fun lt!1018491 () Option!6416)

(assert (=> b!2874199 (= lt!1018491 call!185849)))

(declare-fun c!465472 () Bool)

(assert (=> b!2874199 (= c!465472 ((_ is Some!6415) lt!1018491))))

(declare-fun b!2874200 () Bool)

(assert (=> b!2874200 (= e!1818931 e!1818938)))

(declare-fun c!465471 () Bool)

(assert (=> b!2874200 (= c!465471 ((_ is Star!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2874194 () Bool)

(declare-fun e!1818933 () Option!6416)

(declare-fun lt!1018490 () Option!6416)

(assert (=> b!2874194 (= e!1818933 lt!1018490)))

(declare-fun d!830694 () Bool)

(declare-fun c!465465 () Bool)

(assert (=> d!830694 (= c!465465 ((_ is EmptyExpr!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun e!1818934 () Option!6416)

(assert (=> d!830694 (= (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))) e!1818934)))

(declare-fun b!2874201 () Bool)

(declare-fun e!1818937 () Option!6416)

(assert (=> b!2874201 (= e!1818934 e!1818937)))

(declare-fun c!465467 () Bool)

(assert (=> b!2874201 (= c!465467 ((_ is EmptyLang!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2874202 () Bool)

(declare-fun c!465468 () Bool)

(declare-fun lt!1018489 () Option!6416)

(assert (=> b!2874202 (= c!465468 ((_ is Some!6415) lt!1018489))))

(assert (=> b!2874202 (= lt!1018489 call!185848)))

(assert (=> b!2874202 (= e!1818936 e!1818935)))

(declare-fun b!2874203 () Bool)

(assert (=> b!2874203 (= e!1818937 None!6415)))

(declare-fun b!2874204 () Bool)

(assert (=> b!2874204 (= c!465470 ((_ is Union!8741) (h!39811 (exprs!3201 c!7184))))))

(assert (=> b!2874204 (= e!1818938 e!1818932)))

(declare-fun b!2874205 () Bool)

(declare-fun ++!8177 (List!34514 List!34514) List!34514)

(assert (=> b!2874205 (= e!1818935 (Some!6415 (++!8177 (v!34539 lt!1018491) (v!34539 lt!1018489))))))

(declare-fun b!2874206 () Bool)

(declare-fun c!465469 () Bool)

(assert (=> b!2874206 (= c!465469 ((_ is ElementMatch!8741) (h!39811 (exprs!3201 c!7184))))))

(assert (=> b!2874206 (= e!1818937 e!1818931)))

(declare-fun b!2874207 () Bool)

(assert (=> b!2874207 (= e!1818934 (Some!6415 Nil!34390))))

(declare-fun b!2874208 () Bool)

(assert (=> b!2874208 (= e!1818933 call!185848)))

(declare-fun b!2874209 () Bool)

(assert (=> b!2874209 (= e!1818932 e!1818933)))

(assert (=> b!2874209 (= lt!1018490 call!185849)))

(declare-fun c!465466 () Bool)

(assert (=> b!2874209 (= c!465466 ((_ is Some!6415) lt!1018490))))

(assert (= (and d!830694 c!465465) b!2874207))

(assert (= (and d!830694 (not c!465465)) b!2874201))

(assert (= (and b!2874201 c!465467) b!2874203))

(assert (= (and b!2874201 (not c!465467)) b!2874206))

(assert (= (and b!2874206 c!465469) b!2874195))

(assert (= (and b!2874206 (not c!465469)) b!2874200))

(assert (= (and b!2874200 c!465471) b!2874197))

(assert (= (and b!2874200 (not c!465471)) b!2874204))

(assert (= (and b!2874204 c!465470) b!2874209))

(assert (= (and b!2874204 (not c!465470)) b!2874199))

(assert (= (and b!2874209 c!465466) b!2874194))

(assert (= (and b!2874209 (not c!465466)) b!2874208))

(assert (= (and b!2874199 c!465472) b!2874202))

(assert (= (and b!2874199 (not c!465472)) b!2874198))

(assert (= (and b!2874202 c!465468) b!2874205))

(assert (= (and b!2874202 (not c!465468)) b!2874196))

(assert (= (or b!2874208 b!2874202) bm!185844))

(assert (= (or b!2874209 b!2874199) bm!185843))

(declare-fun m!3292143 () Bool)

(assert (=> bm!185843 m!3292143))

(declare-fun m!3292145 () Bool)

(assert (=> bm!185844 m!3292145))

(declare-fun m!3292147 () Bool)

(assert (=> b!2874205 m!3292147))

(assert (=> b!2873926 d!830694))

(declare-fun d!830696 () Bool)

(declare-fun lt!1018494 () Regex!8741)

(assert (=> d!830696 (validRegex!3519 lt!1018494)))

(declare-fun generalisedUnion!555 (List!34515) Regex!8741)

(declare-fun unfocusZipperList!68 (List!34516) List!34515)

(assert (=> d!830696 (= lt!1018494 (generalisedUnion!555 (unfocusZipperList!68 lt!1018429)))))

(assert (=> d!830696 (= (unfocusZipper!241 lt!1018429) lt!1018494)))

(declare-fun bs!522371 () Bool)

(assert (= bs!522371 d!830696))

(declare-fun m!3292149 () Bool)

(assert (=> bs!522371 m!3292149))

(declare-fun m!3292151 () Bool)

(assert (=> bs!522371 m!3292151))

(assert (=> bs!522371 m!3292151))

(declare-fun m!3292153 () Bool)

(assert (=> bs!522371 m!3292153))

(assert (=> b!2873932 d!830696))

(declare-fun bm!185851 () Bool)

(declare-fun c!465477 () Bool)

(declare-fun c!465478 () Bool)

(declare-fun call!185858 () Bool)

(assert (=> bm!185851 (= call!185858 (validRegex!3519 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun b!2874228 () Bool)

(declare-fun res!1192133 () Bool)

(declare-fun e!1818955 () Bool)

(assert (=> b!2874228 (=> res!1192133 e!1818955)))

(assert (=> b!2874228 (= res!1192133 (not ((_ is Concat!14062) (h!39811 (exprs!3201 c!7184)))))))

(declare-fun e!1818954 () Bool)

(assert (=> b!2874228 (= e!1818954 e!1818955)))

(declare-fun bm!185852 () Bool)

(declare-fun call!185856 () Bool)

(assert (=> bm!185852 (= call!185856 call!185858)))

(declare-fun bm!185853 () Bool)

(declare-fun call!185857 () Bool)

(assert (=> bm!185853 (= call!185857 (validRegex!3519 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874229 () Bool)

(declare-fun e!1818959 () Bool)

(assert (=> b!2874229 (= e!1818959 call!185856)))

(declare-fun b!2874230 () Bool)

(declare-fun e!1818958 () Bool)

(assert (=> b!2874230 (= e!1818958 call!185857)))

(declare-fun b!2874231 () Bool)

(declare-fun res!1192134 () Bool)

(assert (=> b!2874231 (=> (not res!1192134) (not e!1818959))))

(assert (=> b!2874231 (= res!1192134 call!185857)))

(assert (=> b!2874231 (= e!1818954 e!1818959)))

(declare-fun b!2874232 () Bool)

(assert (=> b!2874232 (= e!1818955 e!1818958)))

(declare-fun res!1192137 () Bool)

(assert (=> b!2874232 (=> (not res!1192137) (not e!1818958))))

(assert (=> b!2874232 (= res!1192137 call!185856)))

(declare-fun b!2874233 () Bool)

(declare-fun e!1818953 () Bool)

(declare-fun e!1818957 () Bool)

(assert (=> b!2874233 (= e!1818953 e!1818957)))

(declare-fun res!1192136 () Bool)

(assert (=> b!2874233 (= res!1192136 (not (nullable!2691 (reg!9070 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> b!2874233 (=> (not res!1192136) (not e!1818957))))

(declare-fun d!830698 () Bool)

(declare-fun res!1192135 () Bool)

(declare-fun e!1818956 () Bool)

(assert (=> d!830698 (=> res!1192135 e!1818956)))

(assert (=> d!830698 (= res!1192135 ((_ is ElementMatch!8741) (h!39811 (exprs!3201 c!7184))))))

(assert (=> d!830698 (= (validRegex!3519 (h!39811 (exprs!3201 c!7184))) e!1818956)))

(declare-fun b!2874234 () Bool)

(assert (=> b!2874234 (= e!1818953 e!1818954)))

(assert (=> b!2874234 (= c!465477 ((_ is Union!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2874235 () Bool)

(assert (=> b!2874235 (= e!1818957 call!185858)))

(declare-fun b!2874236 () Bool)

(assert (=> b!2874236 (= e!1818956 e!1818953)))

(assert (=> b!2874236 (= c!465478 ((_ is Star!8741) (h!39811 (exprs!3201 c!7184))))))

(assert (= (and d!830698 (not res!1192135)) b!2874236))

(assert (= (and b!2874236 c!465478) b!2874233))

(assert (= (and b!2874236 (not c!465478)) b!2874234))

(assert (= (and b!2874233 res!1192136) b!2874235))

(assert (= (and b!2874234 c!465477) b!2874231))

(assert (= (and b!2874234 (not c!465477)) b!2874228))

(assert (= (and b!2874231 res!1192134) b!2874229))

(assert (= (and b!2874228 (not res!1192133)) b!2874232))

(assert (= (and b!2874232 res!1192137) b!2874230))

(assert (= (or b!2874229 b!2874232) bm!185852))

(assert (= (or b!2874231 b!2874230) bm!185853))

(assert (= (or b!2874235 bm!185852) bm!185851))

(declare-fun m!3292155 () Bool)

(assert (=> bm!185851 m!3292155))

(declare-fun m!3292157 () Bool)

(assert (=> bm!185853 m!3292157))

(declare-fun m!3292159 () Bool)

(assert (=> b!2874233 m!3292159))

(assert (=> b!2873927 d!830698))

(declare-fun bs!522372 () Bool)

(declare-fun d!830700 () Bool)

(assert (= bs!522372 (and d!830700 d!830676)))

(declare-fun lambda!107202 () Int)

(assert (=> bs!522372 (= lambda!107202 lambda!107196)))

(declare-fun bs!522373 () Bool)

(assert (= bs!522373 (and d!830700 d!830692)))

(assert (=> bs!522373 (not (= lambda!107202 lambda!107199))))

(declare-fun b!2874249 () Bool)

(declare-fun e!1818968 () Option!6416)

(assert (=> b!2874249 (= e!1818968 (Some!6415 Nil!34390))))

(declare-fun b!2874250 () Bool)

(declare-fun c!465486 () Bool)

(declare-fun lt!1018503 () Option!6416)

(assert (=> b!2874250 (= c!465486 ((_ is Some!6415) lt!1018503))))

(assert (=> b!2874250 (= lt!1018503 (getLanguageWitness!434 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))

(declare-fun e!1818966 () Option!6416)

(declare-fun e!1818967 () Option!6416)

(assert (=> b!2874250 (= e!1818966 e!1818967)))

(declare-fun b!2874251 () Bool)

(assert (=> b!2874251 (= e!1818966 None!6415)))

(declare-fun lt!1018501 () Option!6416)

(declare-fun isEmpty!18724 (Option!6416) Bool)

(assert (=> d!830700 (= (isEmpty!18724 lt!1018501) (exists!1167 (exprs!3201 lt!1018434) lambda!107202))))

(assert (=> d!830700 (= lt!1018501 e!1818968)))

(declare-fun c!465487 () Bool)

(assert (=> d!830700 (= c!465487 ((_ is Cons!34391) (exprs!3201 lt!1018434)))))

(assert (=> d!830700 (= (getLanguageWitness!434 lt!1018434) lt!1018501)))

(declare-fun b!2874252 () Bool)

(assert (=> b!2874252 (= e!1818967 None!6415)))

(declare-fun b!2874253 () Bool)

(declare-fun lt!1018502 () Option!6416)

(assert (=> b!2874253 (= e!1818967 (Some!6415 (++!8177 (v!34539 lt!1018502) (v!34539 lt!1018503))))))

(declare-fun b!2874254 () Bool)

(assert (=> b!2874254 (= e!1818968 e!1818966)))

(assert (=> b!2874254 (= lt!1018502 (getLanguageWitness!433 (h!39811 (exprs!3201 lt!1018434))))))

(declare-fun c!465488 () Bool)

(assert (=> b!2874254 (= c!465488 ((_ is Some!6415) lt!1018502))))

(assert (= (and d!830700 c!465487) b!2874254))

(assert (= (and d!830700 (not c!465487)) b!2874249))

(assert (= (and b!2874254 c!465488) b!2874250))

(assert (= (and b!2874254 (not c!465488)) b!2874251))

(assert (= (and b!2874250 c!465486) b!2874253))

(assert (= (and b!2874250 (not c!465486)) b!2874252))

(declare-fun m!3292161 () Bool)

(assert (=> b!2874250 m!3292161))

(declare-fun m!3292163 () Bool)

(assert (=> d!830700 m!3292163))

(declare-fun m!3292165 () Bool)

(assert (=> d!830700 m!3292165))

(declare-fun m!3292167 () Bool)

(assert (=> b!2874253 m!3292167))

(declare-fun m!3292169 () Bool)

(assert (=> b!2874254 m!3292169))

(assert (=> b!2873933 d!830700))

(declare-fun b!2874259 () Bool)

(declare-fun e!1818971 () Bool)

(declare-fun tp!923643 () Bool)

(declare-fun tp!923644 () Bool)

(assert (=> b!2874259 (= e!1818971 (and tp!923643 tp!923644))))

(assert (=> b!2873929 (= tp!923632 e!1818971)))

(assert (= (and b!2873929 ((_ is Cons!34391) (exprs!3201 c!7184))) b!2874259))

(check-sat (not b!2874046) (not b!2874067) (not d!830692) (not b!2874250) (not b!2874064) (not b!2874053) (not d!830646) (not bm!185844) (not b!2874072) (not b!2874254) (not b!2873960) (not b!2874253) (not b!2874233) (not b!2874061) (not b!2874069) (not b!2874050) (not bm!185833) (not d!830650) (not d!830700) (not b!2873936) (not bm!185851) (not b!2874055) (not d!830662) (not bm!185853) (not d!830658) (not d!830668) (not d!830676) (not d!830696) (not b!2874259) (not d!830654) (not b!2874047) (not b!2873959) (not b!2874205) (not bm!185843) (not b!2874060) (not bm!185834) (not b!2874058))
(check-sat)
(get-model)

(declare-fun d!830702 () Bool)

(assert (=> d!830702 (= (isEmpty!18722 (tail!4571 (v!34539 lt!1018432))) ((_ is Nil!34390) (tail!4571 (v!34539 lt!1018432))))))

(assert (=> b!2874050 d!830702))

(declare-fun d!830704 () Bool)

(assert (=> d!830704 (= (tail!4571 (v!34539 lt!1018432)) (t!233557 (v!34539 lt!1018432)))))

(assert (=> b!2874050 d!830704))

(declare-fun bm!185854 () Bool)

(declare-fun call!185859 () Bool)

(assert (=> bm!185854 (= call!185859 (isEmpty!18722 (tail!4571 (get!10338 lt!1018432))))))

(declare-fun d!830706 () Bool)

(declare-fun e!1818973 () Bool)

(assert (=> d!830706 e!1818973))

(declare-fun c!465491 () Bool)

(assert (=> d!830706 (= c!465491 ((_ is EmptyExpr!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(declare-fun lt!1018504 () Bool)

(declare-fun e!1818976 () Bool)

(assert (=> d!830706 (= lt!1018504 e!1818976)))

(declare-fun c!465490 () Bool)

(assert (=> d!830706 (= c!465490 (isEmpty!18722 (tail!4571 (get!10338 lt!1018432))))))

(assert (=> d!830706 (validRegex!3519 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))))

(assert (=> d!830706 (= (matchR!3741 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (tail!4571 (get!10338 lt!1018432))) lt!1018504)))

(declare-fun b!2874260 () Bool)

(declare-fun e!1818972 () Bool)

(assert (=> b!2874260 (= e!1818972 (not (= (head!6346 (tail!4571 (get!10338 lt!1018432))) (c!465376 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))))

(declare-fun b!2874261 () Bool)

(declare-fun res!1192142 () Bool)

(declare-fun e!1818977 () Bool)

(assert (=> b!2874261 (=> (not res!1192142) (not e!1818977))))

(assert (=> b!2874261 (= res!1192142 (isEmpty!18722 (tail!4571 (tail!4571 (get!10338 lt!1018432)))))))

(declare-fun b!2874262 () Bool)

(declare-fun e!1818975 () Bool)

(assert (=> b!2874262 (= e!1818975 e!1818972)))

(declare-fun res!1192143 () Bool)

(assert (=> b!2874262 (=> res!1192143 e!1818972)))

(assert (=> b!2874262 (= res!1192143 call!185859)))

(declare-fun b!2874263 () Bool)

(declare-fun e!1818978 () Bool)

(assert (=> b!2874263 (= e!1818978 (not lt!1018504))))

(declare-fun b!2874264 () Bool)

(declare-fun res!1192144 () Bool)

(assert (=> b!2874264 (=> res!1192144 e!1818972)))

(assert (=> b!2874264 (= res!1192144 (not (isEmpty!18722 (tail!4571 (tail!4571 (get!10338 lt!1018432))))))))

(declare-fun b!2874265 () Bool)

(declare-fun res!1192139 () Bool)

(declare-fun e!1818974 () Bool)

(assert (=> b!2874265 (=> res!1192139 e!1818974)))

(assert (=> b!2874265 (= res!1192139 (not ((_ is ElementMatch!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))))))

(assert (=> b!2874265 (= e!1818978 e!1818974)))

(declare-fun b!2874266 () Bool)

(declare-fun res!1192138 () Bool)

(assert (=> b!2874266 (=> res!1192138 e!1818974)))

(assert (=> b!2874266 (= res!1192138 e!1818977)))

(declare-fun res!1192145 () Bool)

(assert (=> b!2874266 (=> (not res!1192145) (not e!1818977))))

(assert (=> b!2874266 (= res!1192145 lt!1018504)))

(declare-fun b!2874267 () Bool)

(assert (=> b!2874267 (= e!1818977 (= (head!6346 (tail!4571 (get!10338 lt!1018432))) (c!465376 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))))))

(declare-fun b!2874268 () Bool)

(declare-fun res!1192140 () Bool)

(assert (=> b!2874268 (=> (not res!1192140) (not e!1818977))))

(assert (=> b!2874268 (= res!1192140 (not call!185859))))

(declare-fun b!2874269 () Bool)

(assert (=> b!2874269 (= e!1818976 (nullable!2691 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(declare-fun b!2874270 () Bool)

(assert (=> b!2874270 (= e!1818974 e!1818975)))

(declare-fun res!1192141 () Bool)

(assert (=> b!2874270 (=> (not res!1192141) (not e!1818975))))

(assert (=> b!2874270 (= res!1192141 (not lt!1018504))))

(declare-fun b!2874271 () Bool)

(assert (=> b!2874271 (= e!1818973 (= lt!1018504 call!185859))))

(declare-fun b!2874272 () Bool)

(assert (=> b!2874272 (= e!1818976 (matchR!3741 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432)))) (tail!4571 (tail!4571 (get!10338 lt!1018432)))))))

(declare-fun b!2874273 () Bool)

(assert (=> b!2874273 (= e!1818973 e!1818978)))

(declare-fun c!465489 () Bool)

(assert (=> b!2874273 (= c!465489 ((_ is EmptyLang!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(assert (= (and d!830706 c!465490) b!2874269))

(assert (= (and d!830706 (not c!465490)) b!2874272))

(assert (= (and d!830706 c!465491) b!2874271))

(assert (= (and d!830706 (not c!465491)) b!2874273))

(assert (= (and b!2874273 c!465489) b!2874263))

(assert (= (and b!2874273 (not c!465489)) b!2874265))

(assert (= (and b!2874265 (not res!1192139)) b!2874266))

(assert (= (and b!2874266 res!1192145) b!2874268))

(assert (= (and b!2874268 res!1192140) b!2874261))

(assert (= (and b!2874261 res!1192142) b!2874267))

(assert (= (and b!2874266 (not res!1192138)) b!2874270))

(assert (= (and b!2874270 res!1192141) b!2874262))

(assert (= (and b!2874262 (not res!1192143)) b!2874264))

(assert (= (and b!2874264 (not res!1192144)) b!2874260))

(assert (= (or b!2874271 b!2874268 b!2874262) bm!185854))

(assert (=> bm!185854 m!3292065))

(assert (=> bm!185854 m!3292067))

(assert (=> b!2874261 m!3292065))

(declare-fun m!3292171 () Bool)

(assert (=> b!2874261 m!3292171))

(assert (=> b!2874261 m!3292171))

(declare-fun m!3292173 () Bool)

(assert (=> b!2874261 m!3292173))

(assert (=> d!830706 m!3292065))

(assert (=> d!830706 m!3292067))

(assert (=> d!830706 m!3292071))

(declare-fun m!3292175 () Bool)

(assert (=> d!830706 m!3292175))

(assert (=> b!2874267 m!3292065))

(declare-fun m!3292177 () Bool)

(assert (=> b!2874267 m!3292177))

(assert (=> b!2874272 m!3292065))

(assert (=> b!2874272 m!3292177))

(assert (=> b!2874272 m!3292071))

(assert (=> b!2874272 m!3292177))

(declare-fun m!3292179 () Bool)

(assert (=> b!2874272 m!3292179))

(assert (=> b!2874272 m!3292065))

(assert (=> b!2874272 m!3292171))

(assert (=> b!2874272 m!3292179))

(assert (=> b!2874272 m!3292171))

(declare-fun m!3292181 () Bool)

(assert (=> b!2874272 m!3292181))

(assert (=> b!2874264 m!3292065))

(assert (=> b!2874264 m!3292171))

(assert (=> b!2874264 m!3292171))

(assert (=> b!2874264 m!3292173))

(assert (=> b!2874269 m!3292071))

(declare-fun m!3292183 () Bool)

(assert (=> b!2874269 m!3292183))

(assert (=> b!2874260 m!3292065))

(assert (=> b!2874260 m!3292177))

(assert (=> b!2874072 d!830706))

(declare-fun b!2874296 () Bool)

(declare-fun e!1818990 () Regex!8741)

(declare-fun e!1818991 () Regex!8741)

(assert (=> b!2874296 (= e!1818990 e!1818991)))

(declare-fun c!465504 () Bool)

(assert (=> b!2874296 (= c!465504 ((_ is Star!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun e!1818992 () Regex!8741)

(declare-fun b!2874297 () Bool)

(declare-fun call!185870 () Regex!8741)

(declare-fun call!185869 () Regex!8741)

(assert (=> b!2874297 (= e!1818992 (Union!8741 (Concat!14062 call!185869 (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) call!185870))))

(declare-fun b!2874298 () Bool)

(declare-fun c!465506 () Bool)

(assert (=> b!2874298 (= c!465506 ((_ is Union!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun e!1818994 () Regex!8741)

(assert (=> b!2874298 (= e!1818994 e!1818990)))

(declare-fun b!2874299 () Bool)

(declare-fun c!465505 () Bool)

(assert (=> b!2874299 (= c!465505 (nullable!2691 (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))

(assert (=> b!2874299 (= e!1818991 e!1818992)))

(declare-fun bm!185863 () Bool)

(declare-fun call!185871 () Regex!8741)

(declare-fun call!185868 () Regex!8741)

(assert (=> bm!185863 (= call!185871 call!185868)))

(declare-fun d!830708 () Bool)

(declare-fun lt!1018507 () Regex!8741)

(assert (=> d!830708 (validRegex!3519 lt!1018507)))

(declare-fun e!1818993 () Regex!8741)

(assert (=> d!830708 (= lt!1018507 e!1818993)))

(declare-fun c!465507 () Bool)

(assert (=> d!830708 (= c!465507 (or ((_ is EmptyExpr!8741) (h!39811 (exprs!3201 c!7184))) ((_ is EmptyLang!8741) (h!39811 (exprs!3201 c!7184)))))))

(assert (=> d!830708 (validRegex!3519 (h!39811 (exprs!3201 c!7184)))))

(assert (=> d!830708 (= (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) lt!1018507)))

(declare-fun b!2874300 () Bool)

(assert (=> b!2874300 (= e!1818993 EmptyLang!8741)))

(declare-fun b!2874301 () Bool)

(assert (=> b!2874301 (= e!1818994 (ite (= (head!6346 (get!10338 lt!1018432)) (c!465376 (h!39811 (exprs!3201 c!7184)))) EmptyExpr!8741 EmptyLang!8741))))

(declare-fun b!2874302 () Bool)

(assert (=> b!2874302 (= e!1818993 e!1818994)))

(declare-fun c!465503 () Bool)

(assert (=> b!2874302 (= c!465503 ((_ is ElementMatch!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2874303 () Bool)

(assert (=> b!2874303 (= e!1818991 (Concat!14062 call!185871 (h!39811 (exprs!3201 c!7184))))))

(declare-fun bm!185864 () Bool)

(assert (=> bm!185864 (= call!185870 (derivativeStep!2324 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) (head!6346 (get!10338 lt!1018432))))))

(declare-fun b!2874304 () Bool)

(assert (=> b!2874304 (= e!1818990 (Union!8741 call!185870 call!185868))))

(declare-fun b!2874305 () Bool)

(assert (=> b!2874305 (= e!1818992 (Union!8741 (Concat!14062 call!185869 (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) EmptyLang!8741))))

(declare-fun bm!185865 () Bool)

(assert (=> bm!185865 (= call!185868 (derivativeStep!2324 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (head!6346 (get!10338 lt!1018432))))))

(declare-fun bm!185866 () Bool)

(assert (=> bm!185866 (= call!185869 call!185871)))

(assert (= (and d!830708 c!465507) b!2874300))

(assert (= (and d!830708 (not c!465507)) b!2874302))

(assert (= (and b!2874302 c!465503) b!2874301))

(assert (= (and b!2874302 (not c!465503)) b!2874298))

(assert (= (and b!2874298 c!465506) b!2874304))

(assert (= (and b!2874298 (not c!465506)) b!2874296))

(assert (= (and b!2874296 c!465504) b!2874303))

(assert (= (and b!2874296 (not c!465504)) b!2874299))

(assert (= (and b!2874299 c!465505) b!2874297))

(assert (= (and b!2874299 (not c!465505)) b!2874305))

(assert (= (or b!2874297 b!2874305) bm!185866))

(assert (= (or b!2874303 bm!185866) bm!185863))

(assert (= (or b!2874304 b!2874297) bm!185864))

(assert (= (or b!2874304 bm!185863) bm!185865))

(declare-fun m!3292197 () Bool)

(assert (=> b!2874299 m!3292197))

(declare-fun m!3292199 () Bool)

(assert (=> d!830708 m!3292199))

(assert (=> d!830708 m!3291971))

(assert (=> bm!185864 m!3292069))

(declare-fun m!3292201 () Bool)

(assert (=> bm!185864 m!3292201))

(assert (=> bm!185865 m!3292069))

(declare-fun m!3292203 () Bool)

(assert (=> bm!185865 m!3292203))

(assert (=> b!2874072 d!830708))

(declare-fun d!830714 () Bool)

(assert (=> d!830714 (= (head!6346 (get!10338 lt!1018432)) (h!39810 (get!10338 lt!1018432)))))

(assert (=> b!2874072 d!830714))

(declare-fun d!830716 () Bool)

(assert (=> d!830716 (= (tail!4571 (get!10338 lt!1018432)) (t!233557 (get!10338 lt!1018432)))))

(assert (=> b!2874072 d!830716))

(assert (=> d!830654 d!830698))

(declare-fun d!830718 () Bool)

(assert (=> d!830718 (= (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))) (v!34539 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))

(assert (=> d!830654 d!830718))

(assert (=> d!830654 d!830694))

(declare-fun bm!185867 () Bool)

(declare-fun call!185872 () Bool)

(assert (=> bm!185867 (= call!185872 (isEmpty!18722 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun d!830720 () Bool)

(declare-fun e!1818996 () Bool)

(assert (=> d!830720 e!1818996))

(declare-fun c!465512 () Bool)

(assert (=> d!830720 (= c!465512 ((_ is EmptyExpr!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun lt!1018508 () Bool)

(declare-fun e!1818999 () Bool)

(assert (=> d!830720 (= lt!1018508 e!1818999)))

(declare-fun c!465511 () Bool)

(assert (=> d!830720 (= c!465511 (isEmpty!18722 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> d!830720 (validRegex!3519 (h!39811 (exprs!3201 c!7184)))))

(assert (=> d!830720 (= (matchR!3741 (h!39811 (exprs!3201 c!7184)) (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))) lt!1018508)))

(declare-fun b!2874306 () Bool)

(declare-fun e!1818995 () Bool)

(assert (=> b!2874306 (= e!1818995 (not (= (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))) (c!465376 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874307 () Bool)

(declare-fun res!1192150 () Bool)

(declare-fun e!1819000 () Bool)

(assert (=> b!2874307 (=> (not res!1192150) (not e!1819000))))

(assert (=> b!2874307 (= res!1192150 (isEmpty!18722 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun b!2874308 () Bool)

(declare-fun e!1818998 () Bool)

(assert (=> b!2874308 (= e!1818998 e!1818995)))

(declare-fun res!1192151 () Bool)

(assert (=> b!2874308 (=> res!1192151 e!1818995)))

(assert (=> b!2874308 (= res!1192151 call!185872)))

(declare-fun b!2874309 () Bool)

(declare-fun e!1819001 () Bool)

(assert (=> b!2874309 (= e!1819001 (not lt!1018508))))

(declare-fun b!2874310 () Bool)

(declare-fun res!1192152 () Bool)

(assert (=> b!2874310 (=> res!1192152 e!1818995)))

(assert (=> b!2874310 (= res!1192152 (not (isEmpty!18722 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2874311 () Bool)

(declare-fun res!1192147 () Bool)

(declare-fun e!1818997 () Bool)

(assert (=> b!2874311 (=> res!1192147 e!1818997)))

(assert (=> b!2874311 (= res!1192147 (not ((_ is ElementMatch!8741) (h!39811 (exprs!3201 c!7184)))))))

(assert (=> b!2874311 (= e!1819001 e!1818997)))

(declare-fun b!2874312 () Bool)

(declare-fun res!1192146 () Bool)

(assert (=> b!2874312 (=> res!1192146 e!1818997)))

(assert (=> b!2874312 (= res!1192146 e!1819000)))

(declare-fun res!1192153 () Bool)

(assert (=> b!2874312 (=> (not res!1192153) (not e!1819000))))

(assert (=> b!2874312 (= res!1192153 lt!1018508)))

(declare-fun b!2874313 () Bool)

(assert (=> b!2874313 (= e!1819000 (= (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))) (c!465376 (h!39811 (exprs!3201 c!7184)))))))

(declare-fun b!2874314 () Bool)

(declare-fun res!1192148 () Bool)

(assert (=> b!2874314 (=> (not res!1192148) (not e!1819000))))

(assert (=> b!2874314 (= res!1192148 (not call!185872))))

(declare-fun b!2874315 () Bool)

(assert (=> b!2874315 (= e!1818999 (nullable!2691 (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2874316 () Bool)

(assert (=> b!2874316 (= e!1818997 e!1818998)))

(declare-fun res!1192149 () Bool)

(assert (=> b!2874316 (=> (not res!1192149) (not e!1818998))))

(assert (=> b!2874316 (= res!1192149 (not lt!1018508))))

(declare-fun b!2874317 () Bool)

(assert (=> b!2874317 (= e!1818996 (= lt!1018508 call!185872))))

(declare-fun b!2874318 () Bool)

(assert (=> b!2874318 (= e!1818999 (matchR!3741 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))) (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun b!2874319 () Bool)

(assert (=> b!2874319 (= e!1818996 e!1819001)))

(declare-fun c!465510 () Bool)

(assert (=> b!2874319 (= c!465510 ((_ is EmptyLang!8741) (h!39811 (exprs!3201 c!7184))))))

(assert (= (and d!830720 c!465511) b!2874315))

(assert (= (and d!830720 (not c!465511)) b!2874318))

(assert (= (and d!830720 c!465512) b!2874317))

(assert (= (and d!830720 (not c!465512)) b!2874319))

(assert (= (and b!2874319 c!465510) b!2874309))

(assert (= (and b!2874319 (not c!465510)) b!2874311))

(assert (= (and b!2874311 (not res!1192147)) b!2874312))

(assert (= (and b!2874312 res!1192153) b!2874314))

(assert (= (and b!2874314 res!1192148) b!2874307))

(assert (= (and b!2874307 res!1192150) b!2874313))

(assert (= (and b!2874312 (not res!1192146)) b!2874316))

(assert (= (and b!2874316 res!1192149) b!2874308))

(assert (= (and b!2874308 (not res!1192151)) b!2874310))

(assert (= (and b!2874310 (not res!1192152)) b!2874306))

(assert (= (or b!2874317 b!2874314 b!2874308) bm!185867))

(assert (=> bm!185867 m!3292015))

(declare-fun m!3292205 () Bool)

(assert (=> bm!185867 m!3292205))

(assert (=> b!2874307 m!3292015))

(declare-fun m!3292207 () Bool)

(assert (=> b!2874307 m!3292207))

(assert (=> b!2874307 m!3292207))

(declare-fun m!3292211 () Bool)

(assert (=> b!2874307 m!3292211))

(assert (=> d!830720 m!3292015))

(assert (=> d!830720 m!3292205))

(assert (=> d!830720 m!3291971))

(assert (=> b!2874313 m!3292015))

(declare-fun m!3292213 () Bool)

(assert (=> b!2874313 m!3292213))

(assert (=> b!2874318 m!3292015))

(assert (=> b!2874318 m!3292213))

(assert (=> b!2874318 m!3292213))

(declare-fun m!3292215 () Bool)

(assert (=> b!2874318 m!3292215))

(assert (=> b!2874318 m!3292015))

(assert (=> b!2874318 m!3292207))

(assert (=> b!2874318 m!3292215))

(assert (=> b!2874318 m!3292207))

(declare-fun m!3292217 () Bool)

(assert (=> b!2874318 m!3292217))

(assert (=> b!2874310 m!3292015))

(assert (=> b!2874310 m!3292207))

(assert (=> b!2874310 m!3292207))

(assert (=> b!2874310 m!3292211))

(assert (=> b!2874315 m!3292053))

(assert (=> b!2874306 m!3292015))

(assert (=> b!2874306 m!3292213))

(assert (=> d!830654 d!830720))

(declare-fun d!830724 () Bool)

(assert (=> d!830724 (matchR!3741 (h!39811 (exprs!3201 c!7184)) (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))

(assert (=> d!830724 true))

(declare-fun _$101!102 () Unit!47983)

(assert (=> d!830724 (= (choose!16997 (h!39811 (exprs!3201 c!7184))) _$101!102)))

(declare-fun bs!522375 () Bool)

(assert (= bs!522375 d!830724))

(assert (=> bs!522375 m!3291969))

(assert (=> bs!522375 m!3291969))

(assert (=> bs!522375 m!3292015))

(assert (=> bs!522375 m!3292015))

(assert (=> bs!522375 m!3292017))

(assert (=> d!830654 d!830724))

(assert (=> b!2874047 d!830702))

(assert (=> b!2874047 d!830704))

(declare-fun d!830734 () Bool)

(declare-fun nullableFct!818 (Regex!8741) Bool)

(assert (=> d!830734 (= (nullable!2691 (h!39811 (exprs!3201 c!7184))) (nullableFct!818 (h!39811 (exprs!3201 c!7184))))))

(declare-fun bs!522376 () Bool)

(assert (= bs!522376 d!830734))

(declare-fun m!3292225 () Bool)

(assert (=> bs!522376 m!3292225))

(assert (=> b!2874069 d!830734))

(declare-fun d!830736 () Bool)

(declare-fun c!465525 () Bool)

(assert (=> d!830736 (= c!465525 ((_ is Nil!34392) lt!1018438))))

(declare-fun e!1819012 () (InoxSet Context!5402))

(assert (=> d!830736 (= (content!4702 lt!1018438) e!1819012)))

(declare-fun b!2874342 () Bool)

(assert (=> b!2874342 (= e!1819012 ((as const (Array Context!5402 Bool)) false))))

(declare-fun b!2874343 () Bool)

(assert (=> b!2874343 (= e!1819012 ((_ map or) (store ((as const (Array Context!5402 Bool)) false) (h!39812 lt!1018438) true) (content!4702 (t!233559 lt!1018438))))))

(assert (= (and d!830736 c!465525) b!2874342))

(assert (= (and d!830736 (not c!465525)) b!2874343))

(declare-fun m!3292229 () Bool)

(assert (=> b!2874343 m!3292229))

(declare-fun m!3292231 () Bool)

(assert (=> b!2874343 m!3292231))

(assert (=> b!2873936 d!830736))

(declare-fun d!830740 () Bool)

(assert (=> d!830740 (= (nullable!2691 (reg!9070 (h!39811 (exprs!3201 c!7184)))) (nullableFct!818 (reg!9070 (h!39811 (exprs!3201 c!7184)))))))

(declare-fun bs!522378 () Bool)

(assert (= bs!522378 d!830740))

(declare-fun m!3292233 () Bool)

(assert (=> bs!522378 m!3292233))

(assert (=> b!2874233 d!830740))

(declare-fun bm!185870 () Bool)

(declare-fun c!465526 () Bool)

(declare-fun call!185877 () Bool)

(declare-fun c!465527 () Bool)

(assert (=> bm!185870 (= call!185877 (validRegex!3519 (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494)))))))

(declare-fun b!2874344 () Bool)

(declare-fun res!1192154 () Bool)

(declare-fun e!1819015 () Bool)

(assert (=> b!2874344 (=> res!1192154 e!1819015)))

(assert (=> b!2874344 (= res!1192154 (not ((_ is Concat!14062) lt!1018494)))))

(declare-fun e!1819014 () Bool)

(assert (=> b!2874344 (= e!1819014 e!1819015)))

(declare-fun bm!185871 () Bool)

(declare-fun call!185875 () Bool)

(assert (=> bm!185871 (= call!185875 call!185877)))

(declare-fun bm!185872 () Bool)

(declare-fun call!185876 () Bool)

(assert (=> bm!185872 (= call!185876 (validRegex!3519 (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494))))))

(declare-fun b!2874345 () Bool)

(declare-fun e!1819019 () Bool)

(assert (=> b!2874345 (= e!1819019 call!185875)))

(declare-fun b!2874346 () Bool)

(declare-fun e!1819018 () Bool)

(assert (=> b!2874346 (= e!1819018 call!185876)))

(declare-fun b!2874347 () Bool)

(declare-fun res!1192155 () Bool)

(assert (=> b!2874347 (=> (not res!1192155) (not e!1819019))))

(assert (=> b!2874347 (= res!1192155 call!185876)))

(assert (=> b!2874347 (= e!1819014 e!1819019)))

(declare-fun b!2874348 () Bool)

(assert (=> b!2874348 (= e!1819015 e!1819018)))

(declare-fun res!1192158 () Bool)

(assert (=> b!2874348 (=> (not res!1192158) (not e!1819018))))

(assert (=> b!2874348 (= res!1192158 call!185875)))

(declare-fun b!2874349 () Bool)

(declare-fun e!1819013 () Bool)

(declare-fun e!1819017 () Bool)

(assert (=> b!2874349 (= e!1819013 e!1819017)))

(declare-fun res!1192157 () Bool)

(assert (=> b!2874349 (= res!1192157 (not (nullable!2691 (reg!9070 lt!1018494))))))

(assert (=> b!2874349 (=> (not res!1192157) (not e!1819017))))

(declare-fun d!830742 () Bool)

(declare-fun res!1192156 () Bool)

(declare-fun e!1819016 () Bool)

(assert (=> d!830742 (=> res!1192156 e!1819016)))

(assert (=> d!830742 (= res!1192156 ((_ is ElementMatch!8741) lt!1018494))))

(assert (=> d!830742 (= (validRegex!3519 lt!1018494) e!1819016)))

(declare-fun b!2874350 () Bool)

(assert (=> b!2874350 (= e!1819013 e!1819014)))

(assert (=> b!2874350 (= c!465526 ((_ is Union!8741) lt!1018494))))

(declare-fun b!2874351 () Bool)

(assert (=> b!2874351 (= e!1819017 call!185877)))

(declare-fun b!2874352 () Bool)

(assert (=> b!2874352 (= e!1819016 e!1819013)))

(assert (=> b!2874352 (= c!465527 ((_ is Star!8741) lt!1018494))))

(assert (= (and d!830742 (not res!1192156)) b!2874352))

(assert (= (and b!2874352 c!465527) b!2874349))

(assert (= (and b!2874352 (not c!465527)) b!2874350))

(assert (= (and b!2874349 res!1192157) b!2874351))

(assert (= (and b!2874350 c!465526) b!2874347))

(assert (= (and b!2874350 (not c!465526)) b!2874344))

(assert (= (and b!2874347 res!1192155) b!2874345))

(assert (= (and b!2874344 (not res!1192154)) b!2874348))

(assert (= (and b!2874348 res!1192158) b!2874346))

(assert (= (or b!2874345 b!2874348) bm!185871))

(assert (= (or b!2874347 b!2874346) bm!185872))

(assert (= (or b!2874351 bm!185871) bm!185870))

(declare-fun m!3292235 () Bool)

(assert (=> bm!185870 m!3292235))

(declare-fun m!3292237 () Bool)

(assert (=> bm!185872 m!3292237))

(declare-fun m!3292239 () Bool)

(assert (=> b!2874349 m!3292239))

(assert (=> d!830696 d!830742))

(declare-fun bs!522379 () Bool)

(declare-fun d!830744 () Bool)

(assert (= bs!522379 (and d!830744 d!830676)))

(declare-fun lambda!107211 () Int)

(assert (=> bs!522379 (not (= lambda!107211 lambda!107196))))

(declare-fun bs!522380 () Bool)

(assert (= bs!522380 (and d!830744 d!830692)))

(assert (=> bs!522380 (= lambda!107211 lambda!107199)))

(declare-fun bs!522381 () Bool)

(assert (= bs!522381 (and d!830744 d!830700)))

(assert (=> bs!522381 (not (= lambda!107211 lambda!107202))))

(declare-fun b!2874412 () Bool)

(declare-fun e!1819072 () Regex!8741)

(assert (=> b!2874412 (= e!1819072 (Union!8741 (h!39811 (unfocusZipperList!68 lt!1018429)) (generalisedUnion!555 (t!233558 (unfocusZipperList!68 lt!1018429)))))))

(declare-fun b!2874413 () Bool)

(declare-fun e!1819071 () Regex!8741)

(assert (=> b!2874413 (= e!1819071 (h!39811 (unfocusZipperList!68 lt!1018429)))))

(declare-fun b!2874414 () Bool)

(assert (=> b!2874414 (= e!1819072 EmptyLang!8741)))

(declare-fun b!2874415 () Bool)

(declare-fun e!1819069 () Bool)

(declare-fun lt!1018514 () Regex!8741)

(declare-fun isEmptyLang!153 (Regex!8741) Bool)

(assert (=> b!2874415 (= e!1819069 (isEmptyLang!153 lt!1018514))))

(declare-fun b!2874416 () Bool)

(declare-fun e!1819068 () Bool)

(declare-fun isUnion!153 (Regex!8741) Bool)

(assert (=> b!2874416 (= e!1819068 (isUnion!153 lt!1018514))))

(declare-fun b!2874417 () Bool)

(assert (=> b!2874417 (= e!1819071 e!1819072)))

(declare-fun c!465542 () Bool)

(assert (=> b!2874417 (= c!465542 ((_ is Cons!34391) (unfocusZipperList!68 lt!1018429)))))

(declare-fun b!2874418 () Bool)

(declare-fun e!1819070 () Bool)

(assert (=> b!2874418 (= e!1819070 e!1819069)))

(declare-fun c!465543 () Bool)

(declare-fun isEmpty!18725 (List!34515) Bool)

(assert (=> b!2874418 (= c!465543 (isEmpty!18725 (unfocusZipperList!68 lt!1018429)))))

(declare-fun b!2874419 () Bool)

(assert (=> b!2874419 (= e!1819069 e!1819068)))

(declare-fun c!465541 () Bool)

(declare-fun tail!4572 (List!34515) List!34515)

(assert (=> b!2874419 (= c!465541 (isEmpty!18725 (tail!4572 (unfocusZipperList!68 lt!1018429))))))

(assert (=> d!830744 e!1819070))

(declare-fun res!1192192 () Bool)

(assert (=> d!830744 (=> (not res!1192192) (not e!1819070))))

(assert (=> d!830744 (= res!1192192 (validRegex!3519 lt!1018514))))

(assert (=> d!830744 (= lt!1018514 e!1819071)))

(declare-fun c!465540 () Bool)

(declare-fun e!1819067 () Bool)

(assert (=> d!830744 (= c!465540 e!1819067)))

(declare-fun res!1192191 () Bool)

(assert (=> d!830744 (=> (not res!1192191) (not e!1819067))))

(assert (=> d!830744 (= res!1192191 ((_ is Cons!34391) (unfocusZipperList!68 lt!1018429)))))

(assert (=> d!830744 (forall!7085 (unfocusZipperList!68 lt!1018429) lambda!107211)))

(assert (=> d!830744 (= (generalisedUnion!555 (unfocusZipperList!68 lt!1018429)) lt!1018514)))

(declare-fun b!2874420 () Bool)

(declare-fun head!6347 (List!34515) Regex!8741)

(assert (=> b!2874420 (= e!1819068 (= lt!1018514 (head!6347 (unfocusZipperList!68 lt!1018429))))))

(declare-fun b!2874421 () Bool)

(assert (=> b!2874421 (= e!1819067 (isEmpty!18725 (t!233558 (unfocusZipperList!68 lt!1018429))))))

(assert (= (and d!830744 res!1192191) b!2874421))

(assert (= (and d!830744 c!465540) b!2874413))

(assert (= (and d!830744 (not c!465540)) b!2874417))

(assert (= (and b!2874417 c!465542) b!2874412))

(assert (= (and b!2874417 (not c!465542)) b!2874414))

(assert (= (and d!830744 res!1192192) b!2874418))

(assert (= (and b!2874418 c!465543) b!2874415))

(assert (= (and b!2874418 (not c!465543)) b!2874419))

(assert (= (and b!2874419 c!465541) b!2874420))

(assert (= (and b!2874419 (not c!465541)) b!2874416))

(declare-fun m!3292267 () Bool)

(assert (=> b!2874416 m!3292267))

(assert (=> b!2874419 m!3292151))

(declare-fun m!3292269 () Bool)

(assert (=> b!2874419 m!3292269))

(assert (=> b!2874419 m!3292269))

(declare-fun m!3292271 () Bool)

(assert (=> b!2874419 m!3292271))

(declare-fun m!3292273 () Bool)

(assert (=> b!2874415 m!3292273))

(assert (=> b!2874420 m!3292151))

(declare-fun m!3292275 () Bool)

(assert (=> b!2874420 m!3292275))

(declare-fun m!3292277 () Bool)

(assert (=> d!830744 m!3292277))

(assert (=> d!830744 m!3292151))

(declare-fun m!3292279 () Bool)

(assert (=> d!830744 m!3292279))

(assert (=> b!2874418 m!3292151))

(declare-fun m!3292281 () Bool)

(assert (=> b!2874418 m!3292281))

(declare-fun m!3292283 () Bool)

(assert (=> b!2874421 m!3292283))

(declare-fun m!3292285 () Bool)

(assert (=> b!2874412 m!3292285))

(assert (=> d!830696 d!830744))

(declare-fun bs!522382 () Bool)

(declare-fun d!830756 () Bool)

(assert (= bs!522382 (and d!830756 d!830676)))

(declare-fun lambda!107216 () Int)

(assert (=> bs!522382 (not (= lambda!107216 lambda!107196))))

(declare-fun bs!522383 () Bool)

(assert (= bs!522383 (and d!830756 d!830692)))

(assert (=> bs!522383 (= lambda!107216 lambda!107199)))

(declare-fun bs!522384 () Bool)

(assert (= bs!522384 (and d!830756 d!830700)))

(assert (=> bs!522384 (not (= lambda!107216 lambda!107202))))

(declare-fun bs!522385 () Bool)

(assert (= bs!522385 (and d!830756 d!830744)))

(assert (=> bs!522385 (= lambda!107216 lambda!107211)))

(declare-fun lt!1018519 () List!34515)

(assert (=> d!830756 (forall!7085 lt!1018519 lambda!107216)))

(declare-fun e!1819087 () List!34515)

(assert (=> d!830756 (= lt!1018519 e!1819087)))

(declare-fun c!465554 () Bool)

(assert (=> d!830756 (= c!465554 ((_ is Cons!34392) lt!1018429))))

(assert (=> d!830756 (= (unfocusZipperList!68 lt!1018429) lt!1018519)))

(declare-fun b!2874446 () Bool)

(declare-fun generalisedConcat!339 (List!34515) Regex!8741)

(assert (=> b!2874446 (= e!1819087 (Cons!34391 (generalisedConcat!339 (exprs!3201 (h!39812 lt!1018429))) (unfocusZipperList!68 (t!233559 lt!1018429))))))

(declare-fun b!2874447 () Bool)

(assert (=> b!2874447 (= e!1819087 Nil!34391)))

(assert (= (and d!830756 c!465554) b!2874446))

(assert (= (and d!830756 (not c!465554)) b!2874447))

(declare-fun m!3292287 () Bool)

(assert (=> d!830756 m!3292287))

(declare-fun m!3292289 () Bool)

(assert (=> b!2874446 m!3292289))

(declare-fun m!3292291 () Bool)

(assert (=> b!2874446 m!3292291))

(assert (=> d!830696 d!830756))

(declare-fun d!830758 () Bool)

(assert (=> d!830758 (= (head!6346 (v!34539 lt!1018432)) (h!39810 (v!34539 lt!1018432)))))

(assert (=> b!2874046 d!830758))

(declare-fun bm!185879 () Bool)

(declare-fun call!185885 () Option!6416)

(declare-fun c!465560 () Bool)

(assert (=> bm!185879 (= call!185885 (getLanguageWitness!433 (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(declare-fun bm!185880 () Bool)

(declare-fun call!185884 () Option!6416)

(assert (=> bm!185880 (= call!185884 (getLanguageWitness!433 (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(declare-fun b!2874449 () Bool)

(declare-fun e!1819088 () Option!6416)

(assert (=> b!2874449 (= e!1819088 (Some!6415 (Cons!34390 (c!465376 (h!39811 (exprs!3201 lt!1018434))) Nil!34390)))))

(declare-fun b!2874450 () Bool)

(declare-fun e!1819092 () Option!6416)

(assert (=> b!2874450 (= e!1819092 None!6415)))

(declare-fun b!2874451 () Bool)

(declare-fun e!1819095 () Option!6416)

(assert (=> b!2874451 (= e!1819095 (Some!6415 Nil!34390))))

(declare-fun b!2874452 () Bool)

(declare-fun e!1819093 () Option!6416)

(assert (=> b!2874452 (= e!1819093 None!6415)))

(declare-fun b!2874453 () Bool)

(declare-fun e!1819089 () Option!6416)

(assert (=> b!2874453 (= e!1819089 e!1819093)))

(declare-fun lt!1018522 () Option!6416)

(assert (=> b!2874453 (= lt!1018522 call!185885)))

(declare-fun c!465562 () Bool)

(assert (=> b!2874453 (= c!465562 ((_ is Some!6415) lt!1018522))))

(declare-fun b!2874454 () Bool)

(assert (=> b!2874454 (= e!1819088 e!1819095)))

(declare-fun c!465561 () Bool)

(assert (=> b!2874454 (= c!465561 ((_ is Star!8741) (h!39811 (exprs!3201 lt!1018434))))))

(declare-fun b!2874448 () Bool)

(declare-fun e!1819090 () Option!6416)

(declare-fun lt!1018521 () Option!6416)

(assert (=> b!2874448 (= e!1819090 lt!1018521)))

(declare-fun d!830760 () Bool)

(declare-fun c!465555 () Bool)

(assert (=> d!830760 (= c!465555 ((_ is EmptyExpr!8741) (h!39811 (exprs!3201 lt!1018434))))))

(declare-fun e!1819091 () Option!6416)

(assert (=> d!830760 (= (getLanguageWitness!433 (h!39811 (exprs!3201 lt!1018434))) e!1819091)))

(declare-fun b!2874455 () Bool)

(declare-fun e!1819094 () Option!6416)

(assert (=> b!2874455 (= e!1819091 e!1819094)))

(declare-fun c!465557 () Bool)

(assert (=> b!2874455 (= c!465557 ((_ is EmptyLang!8741) (h!39811 (exprs!3201 lt!1018434))))))

(declare-fun b!2874456 () Bool)

(declare-fun c!465558 () Bool)

(declare-fun lt!1018520 () Option!6416)

(assert (=> b!2874456 (= c!465558 ((_ is Some!6415) lt!1018520))))

(assert (=> b!2874456 (= lt!1018520 call!185884)))

(assert (=> b!2874456 (= e!1819093 e!1819092)))

(declare-fun b!2874457 () Bool)

(assert (=> b!2874457 (= e!1819094 None!6415)))

(declare-fun b!2874458 () Bool)

(assert (=> b!2874458 (= c!465560 ((_ is Union!8741) (h!39811 (exprs!3201 lt!1018434))))))

(assert (=> b!2874458 (= e!1819095 e!1819089)))

(declare-fun b!2874459 () Bool)

(assert (=> b!2874459 (= e!1819092 (Some!6415 (++!8177 (v!34539 lt!1018522) (v!34539 lt!1018520))))))

(declare-fun b!2874460 () Bool)

(declare-fun c!465559 () Bool)

(assert (=> b!2874460 (= c!465559 ((_ is ElementMatch!8741) (h!39811 (exprs!3201 lt!1018434))))))

(assert (=> b!2874460 (= e!1819094 e!1819088)))

(declare-fun b!2874461 () Bool)

(assert (=> b!2874461 (= e!1819091 (Some!6415 Nil!34390))))

(declare-fun b!2874462 () Bool)

(assert (=> b!2874462 (= e!1819090 call!185884)))

(declare-fun b!2874463 () Bool)

(assert (=> b!2874463 (= e!1819089 e!1819090)))

(assert (=> b!2874463 (= lt!1018521 call!185885)))

(declare-fun c!465556 () Bool)

(assert (=> b!2874463 (= c!465556 ((_ is Some!6415) lt!1018521))))

(assert (= (and d!830760 c!465555) b!2874461))

(assert (= (and d!830760 (not c!465555)) b!2874455))

(assert (= (and b!2874455 c!465557) b!2874457))

(assert (= (and b!2874455 (not c!465557)) b!2874460))

(assert (= (and b!2874460 c!465559) b!2874449))

(assert (= (and b!2874460 (not c!465559)) b!2874454))

(assert (= (and b!2874454 c!465561) b!2874451))

(assert (= (and b!2874454 (not c!465561)) b!2874458))

(assert (= (and b!2874458 c!465560) b!2874463))

(assert (= (and b!2874458 (not c!465560)) b!2874453))

(assert (= (and b!2874463 c!465556) b!2874448))

(assert (= (and b!2874463 (not c!465556)) b!2874462))

(assert (= (and b!2874453 c!465562) b!2874456))

(assert (= (and b!2874453 (not c!465562)) b!2874452))

(assert (= (and b!2874456 c!465558) b!2874459))

(assert (= (and b!2874456 (not c!465558)) b!2874450))

(assert (= (or b!2874462 b!2874456) bm!185880))

(assert (= (or b!2874463 b!2874453) bm!185879))

(declare-fun m!3292293 () Bool)

(assert (=> bm!185879 m!3292293))

(declare-fun m!3292295 () Bool)

(assert (=> bm!185880 m!3292295))

(declare-fun m!3292297 () Bool)

(assert (=> b!2874459 m!3292297))

(assert (=> b!2874254 d!830760))

(declare-fun d!830762 () Bool)

(assert (=> d!830762 (= (isEmpty!18722 (v!34539 lt!1018432)) ((_ is Nil!34390) (v!34539 lt!1018432)))))

(assert (=> bm!185833 d!830762))

(assert (=> b!2874067 d!830714))

(declare-fun c!465572 () Bool)

(declare-fun bm!185881 () Bool)

(declare-fun call!185887 () Option!6416)

(assert (=> bm!185881 (= call!185887 (getLanguageWitness!433 (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun call!185886 () Option!6416)

(declare-fun bm!185882 () Bool)

(assert (=> bm!185882 (= call!185886 (getLanguageWitness!433 (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2874475 () Bool)

(declare-fun e!1819102 () Option!6416)

(assert (=> b!2874475 (= e!1819102 (Some!6415 (Cons!34390 (c!465376 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) Nil!34390)))))

(declare-fun b!2874476 () Bool)

(declare-fun e!1819106 () Option!6416)

(assert (=> b!2874476 (= e!1819106 None!6415)))

(declare-fun b!2874477 () Bool)

(declare-fun e!1819109 () Option!6416)

(assert (=> b!2874477 (= e!1819109 (Some!6415 Nil!34390))))

(declare-fun b!2874478 () Bool)

(declare-fun e!1819107 () Option!6416)

(assert (=> b!2874478 (= e!1819107 None!6415)))

(declare-fun b!2874479 () Bool)

(declare-fun e!1819103 () Option!6416)

(assert (=> b!2874479 (= e!1819103 e!1819107)))

(declare-fun lt!1018526 () Option!6416)

(assert (=> b!2874479 (= lt!1018526 call!185887)))

(declare-fun c!465574 () Bool)

(assert (=> b!2874479 (= c!465574 ((_ is Some!6415) lt!1018526))))

(declare-fun b!2874480 () Bool)

(assert (=> b!2874480 (= e!1819102 e!1819109)))

(declare-fun c!465573 () Bool)

(assert (=> b!2874480 (= c!465573 ((_ is Star!8741) (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874474 () Bool)

(declare-fun e!1819104 () Option!6416)

(declare-fun lt!1018525 () Option!6416)

(assert (=> b!2874474 (= e!1819104 lt!1018525)))

(declare-fun d!830764 () Bool)

(declare-fun c!465567 () Bool)

(assert (=> d!830764 (= c!465567 ((_ is EmptyExpr!8741) (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun e!1819105 () Option!6416)

(assert (=> d!830764 (= (getLanguageWitness!433 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) e!1819105)))

(declare-fun b!2874481 () Bool)

(declare-fun e!1819108 () Option!6416)

(assert (=> b!2874481 (= e!1819105 e!1819108)))

(declare-fun c!465569 () Bool)

(assert (=> b!2874481 (= c!465569 ((_ is EmptyLang!8741) (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874482 () Bool)

(declare-fun c!465570 () Bool)

(declare-fun lt!1018524 () Option!6416)

(assert (=> b!2874482 (= c!465570 ((_ is Some!6415) lt!1018524))))

(assert (=> b!2874482 (= lt!1018524 call!185886)))

(assert (=> b!2874482 (= e!1819107 e!1819106)))

(declare-fun b!2874483 () Bool)

(assert (=> b!2874483 (= e!1819108 None!6415)))

(declare-fun b!2874484 () Bool)

(assert (=> b!2874484 (= c!465572 ((_ is Union!8741) (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> b!2874484 (= e!1819109 e!1819103)))

(declare-fun b!2874485 () Bool)

(assert (=> b!2874485 (= e!1819106 (Some!6415 (++!8177 (v!34539 lt!1018526) (v!34539 lt!1018524))))))

(declare-fun b!2874486 () Bool)

(declare-fun c!465571 () Bool)

(assert (=> b!2874486 (= c!465571 ((_ is ElementMatch!8741) (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> b!2874486 (= e!1819108 e!1819102)))

(declare-fun b!2874487 () Bool)

(assert (=> b!2874487 (= e!1819105 (Some!6415 Nil!34390))))

(declare-fun b!2874488 () Bool)

(assert (=> b!2874488 (= e!1819104 call!185886)))

(declare-fun b!2874489 () Bool)

(assert (=> b!2874489 (= e!1819103 e!1819104)))

(assert (=> b!2874489 (= lt!1018525 call!185887)))

(declare-fun c!465568 () Bool)

(assert (=> b!2874489 (= c!465568 ((_ is Some!6415) lt!1018525))))

(assert (= (and d!830764 c!465567) b!2874487))

(assert (= (and d!830764 (not c!465567)) b!2874481))

(assert (= (and b!2874481 c!465569) b!2874483))

(assert (= (and b!2874481 (not c!465569)) b!2874486))

(assert (= (and b!2874486 c!465571) b!2874475))

(assert (= (and b!2874486 (not c!465571)) b!2874480))

(assert (= (and b!2874480 c!465573) b!2874477))

(assert (= (and b!2874480 (not c!465573)) b!2874484))

(assert (= (and b!2874484 c!465572) b!2874489))

(assert (= (and b!2874484 (not c!465572)) b!2874479))

(assert (= (and b!2874489 c!465568) b!2874474))

(assert (= (and b!2874489 (not c!465568)) b!2874488))

(assert (= (and b!2874479 c!465574) b!2874482))

(assert (= (and b!2874479 (not c!465574)) b!2874478))

(assert (= (and b!2874482 c!465570) b!2874485))

(assert (= (and b!2874482 (not c!465570)) b!2874476))

(assert (= (or b!2874488 b!2874482) bm!185882))

(assert (= (or b!2874489 b!2874479) bm!185881))

(declare-fun m!3292299 () Bool)

(assert (=> bm!185881 m!3292299))

(declare-fun m!3292301 () Bool)

(assert (=> bm!185882 m!3292301))

(declare-fun m!3292305 () Bool)

(assert (=> b!2874485 m!3292305))

(assert (=> bm!185844 d!830764))

(declare-fun b!2874507 () Bool)

(declare-fun e!1819118 () Bool)

(declare-fun lt!1018532 () List!34514)

(assert (=> b!2874507 (= e!1819118 (or (not (= (v!34539 lt!1018503) Nil!34390)) (= lt!1018532 (v!34539 lt!1018502))))))

(declare-fun d!830766 () Bool)

(assert (=> d!830766 e!1819118))

(declare-fun res!1192203 () Bool)

(assert (=> d!830766 (=> (not res!1192203) (not e!1819118))))

(declare-fun content!4704 (List!34514) (InoxSet C!17664))

(assert (=> d!830766 (= res!1192203 (= (content!4704 lt!1018532) ((_ map or) (content!4704 (v!34539 lt!1018502)) (content!4704 (v!34539 lt!1018503)))))))

(declare-fun e!1819117 () List!34514)

(assert (=> d!830766 (= lt!1018532 e!1819117)))

(declare-fun c!465580 () Bool)

(assert (=> d!830766 (= c!465580 ((_ is Nil!34390) (v!34539 lt!1018502)))))

(assert (=> d!830766 (= (++!8177 (v!34539 lt!1018502) (v!34539 lt!1018503)) lt!1018532)))

(declare-fun b!2874506 () Bool)

(declare-fun res!1192204 () Bool)

(assert (=> b!2874506 (=> (not res!1192204) (not e!1819118))))

(declare-fun size!26323 (List!34514) Int)

(assert (=> b!2874506 (= res!1192204 (= (size!26323 lt!1018532) (+ (size!26323 (v!34539 lt!1018502)) (size!26323 (v!34539 lt!1018503)))))))

(declare-fun b!2874505 () Bool)

(assert (=> b!2874505 (= e!1819117 (Cons!34390 (h!39810 (v!34539 lt!1018502)) (++!8177 (t!233557 (v!34539 lt!1018502)) (v!34539 lt!1018503))))))

(declare-fun b!2874504 () Bool)

(assert (=> b!2874504 (= e!1819117 (v!34539 lt!1018503))))

(assert (= (and d!830766 c!465580) b!2874504))

(assert (= (and d!830766 (not c!465580)) b!2874505))

(assert (= (and d!830766 res!1192203) b!2874506))

(assert (= (and b!2874506 res!1192204) b!2874507))

(declare-fun m!3292331 () Bool)

(assert (=> d!830766 m!3292331))

(declare-fun m!3292333 () Bool)

(assert (=> d!830766 m!3292333))

(declare-fun m!3292335 () Bool)

(assert (=> d!830766 m!3292335))

(declare-fun m!3292337 () Bool)

(assert (=> b!2874506 m!3292337))

(declare-fun m!3292339 () Bool)

(assert (=> b!2874506 m!3292339))

(declare-fun m!3292341 () Bool)

(assert (=> b!2874506 m!3292341))

(declare-fun m!3292343 () Bool)

(assert (=> b!2874505 m!3292343))

(assert (=> b!2874253 d!830766))

(assert (=> d!830662 d!830762))

(assert (=> d!830662 d!830698))

(declare-fun call!185889 () Option!6416)

(declare-fun c!465586 () Bool)

(declare-fun bm!185883 () Bool)

(assert (=> bm!185883 (= call!185889 (getLanguageWitness!433 (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun bm!185884 () Bool)

(declare-fun call!185888 () Option!6416)

(assert (=> bm!185884 (= call!185888 (getLanguageWitness!433 (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2874509 () Bool)

(declare-fun e!1819119 () Option!6416)

(assert (=> b!2874509 (= e!1819119 (Some!6415 (Cons!34390 (c!465376 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) Nil!34390)))))

(declare-fun b!2874510 () Bool)

(declare-fun e!1819123 () Option!6416)

(assert (=> b!2874510 (= e!1819123 None!6415)))

(declare-fun b!2874511 () Bool)

(declare-fun e!1819126 () Option!6416)

(assert (=> b!2874511 (= e!1819126 (Some!6415 Nil!34390))))

(declare-fun b!2874512 () Bool)

(declare-fun e!1819124 () Option!6416)

(assert (=> b!2874512 (= e!1819124 None!6415)))

(declare-fun b!2874513 () Bool)

(declare-fun e!1819120 () Option!6416)

(assert (=> b!2874513 (= e!1819120 e!1819124)))

(declare-fun lt!1018535 () Option!6416)

(assert (=> b!2874513 (= lt!1018535 call!185889)))

(declare-fun c!465588 () Bool)

(assert (=> b!2874513 (= c!465588 ((_ is Some!6415) lt!1018535))))

(declare-fun b!2874514 () Bool)

(assert (=> b!2874514 (= e!1819119 e!1819126)))

(declare-fun c!465587 () Bool)

(assert (=> b!2874514 (= c!465587 ((_ is Star!8741) (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874508 () Bool)

(declare-fun e!1819121 () Option!6416)

(declare-fun lt!1018534 () Option!6416)

(assert (=> b!2874508 (= e!1819121 lt!1018534)))

(declare-fun d!830772 () Bool)

(declare-fun c!465581 () Bool)

(assert (=> d!830772 (= c!465581 ((_ is EmptyExpr!8741) (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun e!1819122 () Option!6416)

(assert (=> d!830772 (= (getLanguageWitness!433 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) e!1819122)))

(declare-fun b!2874515 () Bool)

(declare-fun e!1819125 () Option!6416)

(assert (=> b!2874515 (= e!1819122 e!1819125)))

(declare-fun c!465583 () Bool)

(assert (=> b!2874515 (= c!465583 ((_ is EmptyLang!8741) (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874516 () Bool)

(declare-fun c!465584 () Bool)

(declare-fun lt!1018533 () Option!6416)

(assert (=> b!2874516 (= c!465584 ((_ is Some!6415) lt!1018533))))

(assert (=> b!2874516 (= lt!1018533 call!185888)))

(assert (=> b!2874516 (= e!1819124 e!1819123)))

(declare-fun b!2874517 () Bool)

(assert (=> b!2874517 (= e!1819125 None!6415)))

(declare-fun b!2874518 () Bool)

(assert (=> b!2874518 (= c!465586 ((_ is Union!8741) (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> b!2874518 (= e!1819126 e!1819120)))

(declare-fun b!2874519 () Bool)

(assert (=> b!2874519 (= e!1819123 (Some!6415 (++!8177 (v!34539 lt!1018535) (v!34539 lt!1018533))))))

(declare-fun b!2874520 () Bool)

(declare-fun c!465585 () Bool)

(assert (=> b!2874520 (= c!465585 ((_ is ElementMatch!8741) (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> b!2874520 (= e!1819125 e!1819119)))

(declare-fun b!2874521 () Bool)

(assert (=> b!2874521 (= e!1819122 (Some!6415 Nil!34390))))

(declare-fun b!2874522 () Bool)

(assert (=> b!2874522 (= e!1819121 call!185888)))

(declare-fun b!2874523 () Bool)

(assert (=> b!2874523 (= e!1819120 e!1819121)))

(assert (=> b!2874523 (= lt!1018534 call!185889)))

(declare-fun c!465582 () Bool)

(assert (=> b!2874523 (= c!465582 ((_ is Some!6415) lt!1018534))))

(assert (= (and d!830772 c!465581) b!2874521))

(assert (= (and d!830772 (not c!465581)) b!2874515))

(assert (= (and b!2874515 c!465583) b!2874517))

(assert (= (and b!2874515 (not c!465583)) b!2874520))

(assert (= (and b!2874520 c!465585) b!2874509))

(assert (= (and b!2874520 (not c!465585)) b!2874514))

(assert (= (and b!2874514 c!465587) b!2874511))

(assert (= (and b!2874514 (not c!465587)) b!2874518))

(assert (= (and b!2874518 c!465586) b!2874523))

(assert (= (and b!2874518 (not c!465586)) b!2874513))

(assert (= (and b!2874523 c!465582) b!2874508))

(assert (= (and b!2874523 (not c!465582)) b!2874522))

(assert (= (and b!2874513 c!465588) b!2874516))

(assert (= (and b!2874513 (not c!465588)) b!2874512))

(assert (= (and b!2874516 c!465584) b!2874519))

(assert (= (and b!2874516 (not c!465584)) b!2874510))

(assert (= (or b!2874522 b!2874516) bm!185884))

(assert (= (or b!2874523 b!2874513) bm!185883))

(declare-fun m!3292347 () Bool)

(assert (=> bm!185883 m!3292347))

(declare-fun m!3292349 () Bool)

(assert (=> bm!185884 m!3292349))

(declare-fun m!3292351 () Bool)

(assert (=> b!2874519 m!3292351))

(assert (=> bm!185843 d!830772))

(declare-fun d!830776 () Bool)

(assert (=> d!830776 (= (isEmpty!18722 (tail!4571 (get!10338 lt!1018432))) ((_ is Nil!34390) (tail!4571 (get!10338 lt!1018432))))))

(assert (=> b!2874064 d!830776))

(assert (=> b!2874064 d!830716))

(declare-fun bm!185886 () Bool)

(declare-fun c!465592 () Bool)

(declare-fun c!465593 () Bool)

(declare-fun call!185893 () Bool)

(assert (=> bm!185886 (= call!185893 (validRegex!3519 (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))))

(declare-fun b!2874538 () Bool)

(declare-fun res!1192213 () Bool)

(declare-fun e!1819136 () Bool)

(assert (=> b!2874538 (=> res!1192213 e!1819136)))

(assert (=> b!2874538 (= res!1192213 (not ((_ is Concat!14062) (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun e!1819135 () Bool)

(assert (=> b!2874538 (= e!1819135 e!1819136)))

(declare-fun bm!185887 () Bool)

(declare-fun call!185891 () Bool)

(assert (=> bm!185887 (= call!185891 call!185893)))

(declare-fun bm!185888 () Bool)

(declare-fun call!185892 () Bool)

(assert (=> bm!185888 (= call!185892 (validRegex!3519 (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2874539 () Bool)

(declare-fun e!1819140 () Bool)

(assert (=> b!2874539 (= e!1819140 call!185891)))

(declare-fun b!2874540 () Bool)

(declare-fun e!1819139 () Bool)

(assert (=> b!2874540 (= e!1819139 call!185892)))

(declare-fun b!2874541 () Bool)

(declare-fun res!1192214 () Bool)

(assert (=> b!2874541 (=> (not res!1192214) (not e!1819140))))

(assert (=> b!2874541 (= res!1192214 call!185892)))

(assert (=> b!2874541 (= e!1819135 e!1819140)))

(declare-fun b!2874542 () Bool)

(assert (=> b!2874542 (= e!1819136 e!1819139)))

(declare-fun res!1192217 () Bool)

(assert (=> b!2874542 (=> (not res!1192217) (not e!1819139))))

(assert (=> b!2874542 (= res!1192217 call!185891)))

(declare-fun b!2874543 () Bool)

(declare-fun e!1819134 () Bool)

(declare-fun e!1819138 () Bool)

(assert (=> b!2874543 (= e!1819134 e!1819138)))

(declare-fun res!1192216 () Bool)

(assert (=> b!2874543 (= res!1192216 (not (nullable!2691 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2874543 (=> (not res!1192216) (not e!1819138))))

(declare-fun d!830778 () Bool)

(declare-fun res!1192215 () Bool)

(declare-fun e!1819137 () Bool)

(assert (=> d!830778 (=> res!1192215 e!1819137)))

(assert (=> d!830778 (= res!1192215 ((_ is ElementMatch!8741) (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> d!830778 (= (validRegex!3519 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) e!1819137)))

(declare-fun b!2874544 () Bool)

(assert (=> b!2874544 (= e!1819134 e!1819135)))

(assert (=> b!2874544 (= c!465592 ((_ is Union!8741) (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874545 () Bool)

(assert (=> b!2874545 (= e!1819138 call!185893)))

(declare-fun b!2874546 () Bool)

(assert (=> b!2874546 (= e!1819137 e!1819134)))

(assert (=> b!2874546 (= c!465593 ((_ is Star!8741) (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(assert (= (and d!830778 (not res!1192215)) b!2874546))

(assert (= (and b!2874546 c!465593) b!2874543))

(assert (= (and b!2874546 (not c!465593)) b!2874544))

(assert (= (and b!2874543 res!1192216) b!2874545))

(assert (= (and b!2874544 c!465592) b!2874541))

(assert (= (and b!2874544 (not c!465592)) b!2874538))

(assert (= (and b!2874541 res!1192214) b!2874539))

(assert (= (and b!2874538 (not res!1192213)) b!2874542))

(assert (= (and b!2874542 res!1192217) b!2874540))

(assert (= (or b!2874539 b!2874542) bm!185887))

(assert (= (or b!2874541 b!2874540) bm!185888))

(assert (= (or b!2874545 bm!185887) bm!185886))

(declare-fun m!3292365 () Bool)

(assert (=> bm!185886 m!3292365))

(declare-fun m!3292369 () Bool)

(assert (=> bm!185888 m!3292369))

(declare-fun m!3292371 () Bool)

(assert (=> b!2874543 m!3292371))

(assert (=> bm!185853 d!830778))

(declare-fun bs!522394 () Bool)

(declare-fun d!830780 () Bool)

(assert (= bs!522394 (and d!830780 d!830700)))

(declare-fun lambda!107221 () Int)

(assert (=> bs!522394 (= lambda!107221 lambda!107202)))

(declare-fun bs!522395 () Bool)

(assert (= bs!522395 (and d!830780 d!830756)))

(assert (=> bs!522395 (not (= lambda!107221 lambda!107216))))

(declare-fun bs!522396 () Bool)

(assert (= bs!522396 (and d!830780 d!830744)))

(assert (=> bs!522396 (not (= lambda!107221 lambda!107211))))

(declare-fun bs!522397 () Bool)

(assert (= bs!522397 (and d!830780 d!830692)))

(assert (=> bs!522397 (not (= lambda!107221 lambda!107199))))

(declare-fun bs!522398 () Bool)

(assert (= bs!522398 (and d!830780 d!830676)))

(assert (=> bs!522398 (= lambda!107221 lambda!107196)))

(declare-fun b!2874547 () Bool)

(declare-fun e!1819143 () Option!6416)

(assert (=> b!2874547 (= e!1819143 (Some!6415 Nil!34390))))

(declare-fun b!2874548 () Bool)

(declare-fun c!465594 () Bool)

(declare-fun lt!1018539 () Option!6416)

(assert (=> b!2874548 (= c!465594 ((_ is Some!6415) lt!1018539))))

(assert (=> b!2874548 (= lt!1018539 (getLanguageWitness!434 (Context!5403 (t!233558 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434))))))))))

(declare-fun e!1819141 () Option!6416)

(declare-fun e!1819142 () Option!6416)

(assert (=> b!2874548 (= e!1819141 e!1819142)))

(declare-fun b!2874549 () Bool)

(assert (=> b!2874549 (= e!1819141 None!6415)))

(declare-fun lt!1018537 () Option!6416)

(assert (=> d!830780 (= (isEmpty!18724 lt!1018537) (exists!1167 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))) lambda!107221))))

(assert (=> d!830780 (= lt!1018537 e!1819143)))

(declare-fun c!465595 () Bool)

(assert (=> d!830780 (= c!465595 ((_ is Cons!34391) (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434))))))))

(assert (=> d!830780 (= (getLanguageWitness!434 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))) lt!1018537)))

(declare-fun b!2874550 () Bool)

(assert (=> b!2874550 (= e!1819142 None!6415)))

(declare-fun b!2874551 () Bool)

(declare-fun lt!1018538 () Option!6416)

(assert (=> b!2874551 (= e!1819142 (Some!6415 (++!8177 (v!34539 lt!1018538) (v!34539 lt!1018539))))))

(declare-fun b!2874552 () Bool)

(assert (=> b!2874552 (= e!1819143 e!1819141)))

(assert (=> b!2874552 (= lt!1018538 (getLanguageWitness!433 (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))))

(declare-fun c!465596 () Bool)

(assert (=> b!2874552 (= c!465596 ((_ is Some!6415) lt!1018538))))

(assert (= (and d!830780 c!465595) b!2874552))

(assert (= (and d!830780 (not c!465595)) b!2874547))

(assert (= (and b!2874552 c!465596) b!2874548))

(assert (= (and b!2874552 (not c!465596)) b!2874549))

(assert (= (and b!2874548 c!465594) b!2874551))

(assert (= (and b!2874548 (not c!465594)) b!2874550))

(declare-fun m!3292373 () Bool)

(assert (=> b!2874548 m!3292373))

(declare-fun m!3292375 () Bool)

(assert (=> d!830780 m!3292375))

(declare-fun m!3292377 () Bool)

(assert (=> d!830780 m!3292377))

(declare-fun m!3292379 () Bool)

(assert (=> b!2874551 m!3292379))

(declare-fun m!3292381 () Bool)

(assert (=> b!2874552 m!3292381))

(assert (=> b!2874250 d!830780))

(declare-fun d!830784 () Bool)

(declare-fun lambda!107224 () Int)

(declare-fun exists!1169 ((InoxSet Context!5402) Int) Bool)

(assert (=> d!830784 (= (nullableZipper!719 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true)) (exists!1169 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) lambda!107224))))

(declare-fun bs!522399 () Bool)

(assert (= bs!522399 d!830784))

(assert (=> bs!522399 m!3291973))

(declare-fun m!3292383 () Bool)

(assert (=> bs!522399 m!3292383))

(assert (=> b!2873959 d!830784))

(declare-fun d!830786 () Bool)

(declare-fun res!1192222 () Bool)

(declare-fun e!1819158 () Bool)

(assert (=> d!830786 (=> res!1192222 e!1819158)))

(assert (=> d!830786 (= res!1192222 ((_ is Nil!34392) lt!1018438))))

(assert (=> d!830786 (= (noDuplicate!581 lt!1018438) e!1819158)))

(declare-fun b!2874577 () Bool)

(declare-fun e!1819159 () Bool)

(assert (=> b!2874577 (= e!1819158 e!1819159)))

(declare-fun res!1192223 () Bool)

(assert (=> b!2874577 (=> (not res!1192223) (not e!1819159))))

(declare-fun contains!6127 (List!34516 Context!5402) Bool)

(assert (=> b!2874577 (= res!1192223 (not (contains!6127 (t!233559 lt!1018438) (h!39812 lt!1018438))))))

(declare-fun b!2874578 () Bool)

(assert (=> b!2874578 (= e!1819159 (noDuplicate!581 (t!233559 lt!1018438)))))

(assert (= (and d!830786 (not res!1192222)) b!2874577))

(assert (= (and b!2874577 res!1192223) b!2874578))

(declare-fun m!3292385 () Bool)

(assert (=> b!2874577 m!3292385))

(declare-fun m!3292387 () Bool)

(assert (=> b!2874578 m!3292387))

(assert (=> d!830646 d!830786))

(declare-fun d!830788 () Bool)

(declare-fun e!1819167 () Bool)

(assert (=> d!830788 e!1819167))

(declare-fun res!1192229 () Bool)

(assert (=> d!830788 (=> (not res!1192229) (not e!1819167))))

(declare-fun res!1192228 () List!34516)

(assert (=> d!830788 (= res!1192229 (noDuplicate!581 res!1192228))))

(declare-fun e!1819168 () Bool)

(assert (=> d!830788 e!1819168))

(assert (=> d!830788 (= (choose!16996 (store ((as const (Array Context!5402 Bool)) false) lt!1018430 true)) res!1192228)))

(declare-fun b!2874586 () Bool)

(declare-fun e!1819166 () Bool)

(declare-fun tp!923655 () Bool)

(assert (=> b!2874586 (= e!1819166 tp!923655)))

(declare-fun tp!923656 () Bool)

(declare-fun b!2874585 () Bool)

(assert (=> b!2874585 (= e!1819168 (and (inv!46439 (h!39812 res!1192228)) e!1819166 tp!923656))))

(declare-fun b!2874587 () Bool)

(assert (=> b!2874587 (= e!1819167 (= (content!4702 res!1192228) (store ((as const (Array Context!5402 Bool)) false) lt!1018430 true)))))

(assert (= b!2874585 b!2874586))

(assert (= (and d!830788 ((_ is Cons!34392) res!1192228)) b!2874585))

(assert (= (and d!830788 res!1192229) b!2874587))

(declare-fun m!3292389 () Bool)

(assert (=> d!830788 m!3292389))

(declare-fun m!3292391 () Bool)

(assert (=> b!2874585 m!3292391))

(declare-fun m!3292393 () Bool)

(assert (=> b!2874587 m!3292393))

(assert (=> d!830646 d!830788))

(declare-fun d!830790 () Bool)

(declare-fun c!465609 () Bool)

(assert (=> d!830790 (= c!465609 (isEmpty!18722 (tail!4571 (get!10338 lt!1018433))))))

(declare-fun e!1819169 () Bool)

(assert (=> d!830790 (= (matchZipper!483 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433))) (tail!4571 (get!10338 lt!1018433))) e!1819169)))

(declare-fun b!2874588 () Bool)

(assert (=> b!2874588 (= e!1819169 (nullableZipper!719 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433)))))))

(declare-fun b!2874589 () Bool)

(assert (=> b!2874589 (= e!1819169 (matchZipper!483 (derivationStepZipper!475 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433))) (head!6346 (tail!4571 (get!10338 lt!1018433)))) (tail!4571 (tail!4571 (get!10338 lt!1018433)))))))

(assert (= (and d!830790 c!465609) b!2874588))

(assert (= (and d!830790 (not c!465609)) b!2874589))

(assert (=> d!830790 m!3292005))

(declare-fun m!3292395 () Bool)

(assert (=> d!830790 m!3292395))

(assert (=> b!2874588 m!3292003))

(declare-fun m!3292397 () Bool)

(assert (=> b!2874588 m!3292397))

(assert (=> b!2874589 m!3292005))

(declare-fun m!3292399 () Bool)

(assert (=> b!2874589 m!3292399))

(assert (=> b!2874589 m!3292003))

(assert (=> b!2874589 m!3292399))

(declare-fun m!3292401 () Bool)

(assert (=> b!2874589 m!3292401))

(assert (=> b!2874589 m!3292005))

(declare-fun m!3292403 () Bool)

(assert (=> b!2874589 m!3292403))

(assert (=> b!2874589 m!3292401))

(assert (=> b!2874589 m!3292403))

(declare-fun m!3292405 () Bool)

(assert (=> b!2874589 m!3292405))

(assert (=> b!2873960 d!830790))

(declare-fun d!830792 () Bool)

(assert (=> d!830792 true))

(declare-fun lambda!107227 () Int)

(declare-fun flatMap!222 ((InoxSet Context!5402) Int) (InoxSet Context!5402))

(assert (=> d!830792 (= (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433))) (flatMap!222 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) lambda!107227))))

(declare-fun bs!522400 () Bool)

(assert (= bs!522400 d!830792))

(assert (=> bs!522400 m!3291973))

(declare-fun m!3292415 () Bool)

(assert (=> bs!522400 m!3292415))

(assert (=> b!2873960 d!830792))

(declare-fun d!830796 () Bool)

(assert (=> d!830796 (= (head!6346 (get!10338 lt!1018433)) (h!39810 (get!10338 lt!1018433)))))

(assert (=> b!2873960 d!830796))

(declare-fun d!830800 () Bool)

(assert (=> d!830800 (= (tail!4571 (get!10338 lt!1018433)) (t!233557 (get!10338 lt!1018433)))))

(assert (=> b!2873960 d!830800))

(assert (=> b!2874061 d!830776))

(assert (=> b!2874061 d!830716))

(declare-fun c!465617 () Bool)

(declare-fun call!185908 () Bool)

(declare-fun bm!185901 () Bool)

(declare-fun c!465618 () Bool)

(assert (=> bm!185901 (= call!185908 (validRegex!3519 (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun b!2874602 () Bool)

(declare-fun res!1192230 () Bool)

(declare-fun e!1819177 () Bool)

(assert (=> b!2874602 (=> res!1192230 e!1819177)))

(assert (=> b!2874602 (= res!1192230 (not ((_ is Concat!14062) (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun e!1819176 () Bool)

(assert (=> b!2874602 (= e!1819176 e!1819177)))

(declare-fun bm!185902 () Bool)

(declare-fun call!185906 () Bool)

(assert (=> bm!185902 (= call!185906 call!185908)))

(declare-fun bm!185903 () Bool)

(declare-fun call!185907 () Bool)

(assert (=> bm!185903 (= call!185907 (validRegex!3519 (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))))

(declare-fun b!2874603 () Bool)

(declare-fun e!1819181 () Bool)

(assert (=> b!2874603 (= e!1819181 call!185906)))

(declare-fun b!2874604 () Bool)

(declare-fun e!1819180 () Bool)

(assert (=> b!2874604 (= e!1819180 call!185907)))

(declare-fun b!2874605 () Bool)

(declare-fun res!1192231 () Bool)

(assert (=> b!2874605 (=> (not res!1192231) (not e!1819181))))

(assert (=> b!2874605 (= res!1192231 call!185907)))

(assert (=> b!2874605 (= e!1819176 e!1819181)))

(declare-fun b!2874606 () Bool)

(assert (=> b!2874606 (= e!1819177 e!1819180)))

(declare-fun res!1192234 () Bool)

(assert (=> b!2874606 (=> (not res!1192234) (not e!1819180))))

(assert (=> b!2874606 (= res!1192234 call!185906)))

(declare-fun b!2874607 () Bool)

(declare-fun e!1819175 () Bool)

(declare-fun e!1819179 () Bool)

(assert (=> b!2874607 (= e!1819175 e!1819179)))

(declare-fun res!1192233 () Bool)

(assert (=> b!2874607 (= res!1192233 (not (nullable!2691 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))))

(assert (=> b!2874607 (=> (not res!1192233) (not e!1819179))))

(declare-fun d!830804 () Bool)

(declare-fun res!1192232 () Bool)

(declare-fun e!1819178 () Bool)

(assert (=> d!830804 (=> res!1192232 e!1819178)))

(assert (=> d!830804 (= res!1192232 ((_ is ElementMatch!8741) (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(assert (=> d!830804 (= (validRegex!3519 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) e!1819178)))

(declare-fun b!2874608 () Bool)

(assert (=> b!2874608 (= e!1819175 e!1819176)))

(assert (=> b!2874608 (= c!465617 ((_ is Union!8741) (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun b!2874609 () Bool)

(assert (=> b!2874609 (= e!1819179 call!185908)))

(declare-fun b!2874610 () Bool)

(assert (=> b!2874610 (= e!1819178 e!1819175)))

(assert (=> b!2874610 (= c!465618 ((_ is Star!8741) (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(assert (= (and d!830804 (not res!1192232)) b!2874610))

(assert (= (and b!2874610 c!465618) b!2874607))

(assert (= (and b!2874610 (not c!465618)) b!2874608))

(assert (= (and b!2874607 res!1192233) b!2874609))

(assert (= (and b!2874608 c!465617) b!2874605))

(assert (= (and b!2874608 (not c!465617)) b!2874602))

(assert (= (and b!2874605 res!1192231) b!2874603))

(assert (= (and b!2874602 (not res!1192230)) b!2874606))

(assert (= (and b!2874606 res!1192234) b!2874604))

(assert (= (or b!2874603 b!2874606) bm!185902))

(assert (= (or b!2874605 b!2874604) bm!185903))

(assert (= (or b!2874609 bm!185902) bm!185901))

(declare-fun m!3292419 () Bool)

(assert (=> bm!185901 m!3292419))

(declare-fun m!3292421 () Bool)

(assert (=> bm!185903 m!3292421))

(declare-fun m!3292423 () Bool)

(assert (=> b!2874607 m!3292423))

(assert (=> bm!185851 d!830804))

(declare-fun bs!522407 () Bool)

(declare-fun d!830808 () Bool)

(assert (= bs!522407 (and d!830808 d!830700)))

(declare-fun lambda!107231 () Int)

(assert (=> bs!522407 (not (= lambda!107231 lambda!107202))))

(declare-fun bs!522408 () Bool)

(assert (= bs!522408 (and d!830808 d!830756)))

(assert (=> bs!522408 (not (= lambda!107231 lambda!107216))))

(declare-fun bs!522409 () Bool)

(assert (= bs!522409 (and d!830808 d!830744)))

(assert (=> bs!522409 (not (= lambda!107231 lambda!107211))))

(declare-fun bs!522410 () Bool)

(assert (= bs!522410 (and d!830808 d!830692)))

(assert (=> bs!522410 (not (= lambda!107231 lambda!107199))))

(declare-fun bs!522411 () Bool)

(assert (= bs!522411 (and d!830808 d!830676)))

(assert (=> bs!522411 (not (= lambda!107231 lambda!107196))))

(declare-fun bs!522412 () Bool)

(assert (= bs!522412 (and d!830808 d!830780)))

(assert (=> bs!522412 (not (= lambda!107231 lambda!107221))))

(assert (=> d!830808 true))

(declare-fun order!18133 () Int)

(declare-fun dynLambda!14315 (Int Int) Int)

(assert (=> d!830808 (< (dynLambda!14315 order!18133 lambda!107196) (dynLambda!14315 order!18133 lambda!107231))))

(assert (=> d!830808 (= (exists!1167 (exprs!3201 c!7184) lambda!107196) (not (forall!7085 (exprs!3201 c!7184) lambda!107231)))))

(declare-fun bs!522413 () Bool)

(assert (= bs!522413 d!830808))

(declare-fun m!3292435 () Bool)

(assert (=> bs!522413 m!3292435))

(assert (=> d!830676 d!830808))

(assert (=> d!830658 d!830700))

(declare-fun bs!522414 () Bool)

(declare-fun d!830814 () Bool)

(assert (= bs!522414 (and d!830814 d!830700)))

(declare-fun lambda!107232 () Int)

(assert (=> bs!522414 (= lambda!107232 lambda!107202)))

(declare-fun bs!522415 () Bool)

(assert (= bs!522415 (and d!830814 d!830756)))

(assert (=> bs!522415 (not (= lambda!107232 lambda!107216))))

(declare-fun bs!522416 () Bool)

(assert (= bs!522416 (and d!830814 d!830744)))

(assert (=> bs!522416 (not (= lambda!107232 lambda!107211))))

(declare-fun bs!522417 () Bool)

(assert (= bs!522417 (and d!830814 d!830692)))

(assert (=> bs!522417 (not (= lambda!107232 lambda!107199))))

(declare-fun bs!522418 () Bool)

(assert (= bs!522418 (and d!830814 d!830780)))

(assert (=> bs!522418 (= lambda!107232 lambda!107221)))

(declare-fun bs!522419 () Bool)

(assert (= bs!522419 (and d!830814 d!830808)))

(assert (=> bs!522419 (not (= lambda!107232 lambda!107231))))

(declare-fun bs!522420 () Bool)

(assert (= bs!522420 (and d!830814 d!830676)))

(assert (=> bs!522420 (= lambda!107232 lambda!107196)))

(assert (=> d!830814 (= (lostCause!833 lt!1018434) (exists!1167 (exprs!3201 lt!1018434) lambda!107232))))

(declare-fun bs!522421 () Bool)

(assert (= bs!522421 d!830814))

(declare-fun m!3292437 () Bool)

(assert (=> bs!522421 m!3292437))

(assert (=> d!830658 d!830814))

(declare-fun d!830816 () Bool)

(declare-fun c!465620 () Bool)

(assert (=> d!830816 (= c!465620 (isEmpty!18722 (get!10338 (getLanguageWitness!434 lt!1018434))))))

(declare-fun e!1819183 () Bool)

(assert (=> d!830816 (= (matchZipper!483 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (get!10338 (getLanguageWitness!434 lt!1018434))) e!1819183)))

(declare-fun b!2874615 () Bool)

(assert (=> b!2874615 (= e!1819183 (nullableZipper!719 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true)))))

(declare-fun b!2874616 () Bool)

(assert (=> b!2874616 (= e!1819183 (matchZipper!483 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 (getLanguageWitness!434 lt!1018434)))) (tail!4571 (get!10338 (getLanguageWitness!434 lt!1018434)))))))

(assert (= (and d!830816 c!465620) b!2874615))

(assert (= (and d!830816 (not c!465620)) b!2874616))

(assert (=> d!830816 m!3292029))

(declare-fun m!3292439 () Bool)

(assert (=> d!830816 m!3292439))

(assert (=> b!2874615 m!3291973))

(assert (=> b!2874615 m!3291999))

(assert (=> b!2874616 m!3292029))

(declare-fun m!3292441 () Bool)

(assert (=> b!2874616 m!3292441))

(assert (=> b!2874616 m!3291973))

(assert (=> b!2874616 m!3292441))

(declare-fun m!3292443 () Bool)

(assert (=> b!2874616 m!3292443))

(assert (=> b!2874616 m!3292029))

(declare-fun m!3292445 () Bool)

(assert (=> b!2874616 m!3292445))

(assert (=> b!2874616 m!3292443))

(assert (=> b!2874616 m!3292445))

(declare-fun m!3292447 () Bool)

(assert (=> b!2874616 m!3292447))

(assert (=> d!830658 d!830816))

(declare-fun d!830818 () Bool)

(assert (=> d!830818 (matchZipper!483 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (get!10338 (getLanguageWitness!434 lt!1018434)))))

(assert (=> d!830818 true))

(declare-fun _$31!154 () Unit!47983)

(assert (=> d!830818 (= (choose!16998 lt!1018434) _$31!154)))

(declare-fun bs!522423 () Bool)

(assert (= bs!522423 d!830818))

(assert (=> bs!522423 m!3291973))

(assert (=> bs!522423 m!3291989))

(assert (=> bs!522423 m!3291989))

(assert (=> bs!522423 m!3292029))

(assert (=> bs!522423 m!3291973))

(assert (=> bs!522423 m!3292029))

(assert (=> bs!522423 m!3292031))

(assert (=> d!830658 d!830818))

(declare-fun d!830828 () Bool)

(assert (=> d!830828 (= (get!10338 (getLanguageWitness!434 lt!1018434)) (v!34539 (getLanguageWitness!434 lt!1018434)))))

(assert (=> d!830658 d!830828))

(assert (=> b!2874060 d!830714))

(declare-fun d!830830 () Bool)

(assert (=> d!830830 (= (isEmpty!18722 (get!10338 lt!1018432)) ((_ is Nil!34390) (get!10338 lt!1018432)))))

(assert (=> d!830668 d!830830))

(assert (=> d!830668 d!830698))

(assert (=> bm!185834 d!830830))

(declare-fun bm!185908 () Bool)

(declare-fun call!185913 () Bool)

(assert (=> bm!185908 (= call!185913 (isEmpty!18722 (tail!4571 (v!34539 lt!1018432))))))

(declare-fun d!830832 () Bool)

(declare-fun e!1819199 () Bool)

(assert (=> d!830832 e!1819199))

(declare-fun c!465630 () Bool)

(assert (=> d!830832 (= c!465630 ((_ is EmptyExpr!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(declare-fun lt!1018544 () Bool)

(declare-fun e!1819202 () Bool)

(assert (=> d!830832 (= lt!1018544 e!1819202)))

(declare-fun c!465629 () Bool)

(assert (=> d!830832 (= c!465629 (isEmpty!18722 (tail!4571 (v!34539 lt!1018432))))))

(assert (=> d!830832 (validRegex!3519 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))))

(assert (=> d!830832 (= (matchR!3741 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (tail!4571 (v!34539 lt!1018432))) lt!1018544)))

(declare-fun b!2874640 () Bool)

(declare-fun e!1819198 () Bool)

(assert (=> b!2874640 (= e!1819198 (not (= (head!6346 (tail!4571 (v!34539 lt!1018432))) (c!465376 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))))

(declare-fun b!2874641 () Bool)

(declare-fun res!1192252 () Bool)

(declare-fun e!1819203 () Bool)

(assert (=> b!2874641 (=> (not res!1192252) (not e!1819203))))

(assert (=> b!2874641 (= res!1192252 (isEmpty!18722 (tail!4571 (tail!4571 (v!34539 lt!1018432)))))))

(declare-fun b!2874642 () Bool)

(declare-fun e!1819201 () Bool)

(assert (=> b!2874642 (= e!1819201 e!1819198)))

(declare-fun res!1192253 () Bool)

(assert (=> b!2874642 (=> res!1192253 e!1819198)))

(assert (=> b!2874642 (= res!1192253 call!185913)))

(declare-fun b!2874643 () Bool)

(declare-fun e!1819204 () Bool)

(assert (=> b!2874643 (= e!1819204 (not lt!1018544))))

(declare-fun b!2874644 () Bool)

(declare-fun res!1192254 () Bool)

(assert (=> b!2874644 (=> res!1192254 e!1819198)))

(assert (=> b!2874644 (= res!1192254 (not (isEmpty!18722 (tail!4571 (tail!4571 (v!34539 lt!1018432))))))))

(declare-fun b!2874645 () Bool)

(declare-fun res!1192249 () Bool)

(declare-fun e!1819200 () Bool)

(assert (=> b!2874645 (=> res!1192249 e!1819200)))

(assert (=> b!2874645 (= res!1192249 (not ((_ is ElementMatch!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))))))

(assert (=> b!2874645 (= e!1819204 e!1819200)))

(declare-fun b!2874646 () Bool)

(declare-fun res!1192248 () Bool)

(assert (=> b!2874646 (=> res!1192248 e!1819200)))

(assert (=> b!2874646 (= res!1192248 e!1819203)))

(declare-fun res!1192255 () Bool)

(assert (=> b!2874646 (=> (not res!1192255) (not e!1819203))))

(assert (=> b!2874646 (= res!1192255 lt!1018544)))

(declare-fun b!2874647 () Bool)

(assert (=> b!2874647 (= e!1819203 (= (head!6346 (tail!4571 (v!34539 lt!1018432))) (c!465376 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))))))

(declare-fun b!2874648 () Bool)

(declare-fun res!1192250 () Bool)

(assert (=> b!2874648 (=> (not res!1192250) (not e!1819203))))

(assert (=> b!2874648 (= res!1192250 (not call!185913))))

(declare-fun b!2874649 () Bool)

(assert (=> b!2874649 (= e!1819202 (nullable!2691 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(declare-fun b!2874650 () Bool)

(assert (=> b!2874650 (= e!1819200 e!1819201)))

(declare-fun res!1192251 () Bool)

(assert (=> b!2874650 (=> (not res!1192251) (not e!1819201))))

(assert (=> b!2874650 (= res!1192251 (not lt!1018544))))

(declare-fun b!2874651 () Bool)

(assert (=> b!2874651 (= e!1819199 (= lt!1018544 call!185913))))

(declare-fun b!2874652 () Bool)

(assert (=> b!2874652 (= e!1819202 (matchR!3741 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432)))) (tail!4571 (tail!4571 (v!34539 lt!1018432)))))))

(declare-fun b!2874653 () Bool)

(assert (=> b!2874653 (= e!1819199 e!1819204)))

(declare-fun c!465628 () Bool)

(assert (=> b!2874653 (= c!465628 ((_ is EmptyLang!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(assert (= (and d!830832 c!465629) b!2874649))

(assert (= (and d!830832 (not c!465629)) b!2874652))

(assert (= (and d!830832 c!465630) b!2874651))

(assert (= (and d!830832 (not c!465630)) b!2874653))

(assert (= (and b!2874653 c!465628) b!2874643))

(assert (= (and b!2874653 (not c!465628)) b!2874645))

(assert (= (and b!2874645 (not res!1192249)) b!2874646))

(assert (= (and b!2874646 res!1192255) b!2874648))

(assert (= (and b!2874648 res!1192250) b!2874641))

(assert (= (and b!2874641 res!1192252) b!2874647))

(assert (= (and b!2874646 (not res!1192248)) b!2874650))

(assert (= (and b!2874650 res!1192251) b!2874642))

(assert (= (and b!2874642 (not res!1192253)) b!2874644))

(assert (= (and b!2874644 (not res!1192254)) b!2874640))

(assert (= (or b!2874651 b!2874648 b!2874642) bm!185908))

(assert (=> bm!185908 m!3292043))

(assert (=> bm!185908 m!3292045))

(assert (=> b!2874641 m!3292043))

(declare-fun m!3292467 () Bool)

(assert (=> b!2874641 m!3292467))

(assert (=> b!2874641 m!3292467))

(declare-fun m!3292469 () Bool)

(assert (=> b!2874641 m!3292469))

(assert (=> d!830832 m!3292043))

(assert (=> d!830832 m!3292045))

(assert (=> d!830832 m!3292049))

(declare-fun m!3292471 () Bool)

(assert (=> d!830832 m!3292471))

(assert (=> b!2874647 m!3292043))

(declare-fun m!3292473 () Bool)

(assert (=> b!2874647 m!3292473))

(assert (=> b!2874652 m!3292043))

(assert (=> b!2874652 m!3292473))

(assert (=> b!2874652 m!3292049))

(assert (=> b!2874652 m!3292473))

(declare-fun m!3292475 () Bool)

(assert (=> b!2874652 m!3292475))

(assert (=> b!2874652 m!3292043))

(assert (=> b!2874652 m!3292467))

(assert (=> b!2874652 m!3292475))

(assert (=> b!2874652 m!3292467))

(declare-fun m!3292477 () Bool)

(assert (=> b!2874652 m!3292477))

(assert (=> b!2874644 m!3292043))

(assert (=> b!2874644 m!3292467))

(assert (=> b!2874644 m!3292467))

(assert (=> b!2874644 m!3292469))

(assert (=> b!2874649 m!3292049))

(declare-fun m!3292479 () Bool)

(assert (=> b!2874649 m!3292479))

(assert (=> b!2874640 m!3292043))

(assert (=> b!2874640 m!3292473))

(assert (=> b!2874058 d!830832))

(declare-fun b!2874670 () Bool)

(declare-fun e!1819213 () Regex!8741)

(declare-fun e!1819214 () Regex!8741)

(assert (=> b!2874670 (= e!1819213 e!1819214)))

(declare-fun c!465640 () Bool)

(assert (=> b!2874670 (= c!465640 ((_ is Star!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun e!1819215 () Regex!8741)

(declare-fun b!2874671 () Bool)

(declare-fun call!185917 () Regex!8741)

(declare-fun call!185918 () Regex!8741)

(assert (=> b!2874671 (= e!1819215 (Union!8741 (Concat!14062 call!185917 (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) call!185918))))

(declare-fun b!2874672 () Bool)

(declare-fun c!465642 () Bool)

(assert (=> b!2874672 (= c!465642 ((_ is Union!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun e!1819217 () Regex!8741)

(assert (=> b!2874672 (= e!1819217 e!1819213)))

(declare-fun b!2874673 () Bool)

(declare-fun c!465641 () Bool)

(assert (=> b!2874673 (= c!465641 (nullable!2691 (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))

(assert (=> b!2874673 (= e!1819214 e!1819215)))

(declare-fun bm!185911 () Bool)

(declare-fun call!185919 () Regex!8741)

(declare-fun call!185916 () Regex!8741)

(assert (=> bm!185911 (= call!185919 call!185916)))

(declare-fun d!830836 () Bool)

(declare-fun lt!1018548 () Regex!8741)

(assert (=> d!830836 (validRegex!3519 lt!1018548)))

(declare-fun e!1819216 () Regex!8741)

(assert (=> d!830836 (= lt!1018548 e!1819216)))

(declare-fun c!465643 () Bool)

(assert (=> d!830836 (= c!465643 (or ((_ is EmptyExpr!8741) (h!39811 (exprs!3201 c!7184))) ((_ is EmptyLang!8741) (h!39811 (exprs!3201 c!7184)))))))

(assert (=> d!830836 (validRegex!3519 (h!39811 (exprs!3201 c!7184)))))

(assert (=> d!830836 (= (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) lt!1018548)))

(declare-fun b!2874674 () Bool)

(assert (=> b!2874674 (= e!1819216 EmptyLang!8741)))

(declare-fun b!2874675 () Bool)

(assert (=> b!2874675 (= e!1819217 (ite (= (head!6346 (v!34539 lt!1018432)) (c!465376 (h!39811 (exprs!3201 c!7184)))) EmptyExpr!8741 EmptyLang!8741))))

(declare-fun b!2874676 () Bool)

(assert (=> b!2874676 (= e!1819216 e!1819217)))

(declare-fun c!465639 () Bool)

(assert (=> b!2874676 (= c!465639 ((_ is ElementMatch!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2874677 () Bool)

(assert (=> b!2874677 (= e!1819214 (Concat!14062 call!185919 (h!39811 (exprs!3201 c!7184))))))

(declare-fun bm!185912 () Bool)

(assert (=> bm!185912 (= call!185918 (derivativeStep!2324 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) (head!6346 (v!34539 lt!1018432))))))

(declare-fun b!2874678 () Bool)

(assert (=> b!2874678 (= e!1819213 (Union!8741 call!185918 call!185916))))

(declare-fun b!2874679 () Bool)

(assert (=> b!2874679 (= e!1819215 (Union!8741 (Concat!14062 call!185917 (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) EmptyLang!8741))))

(declare-fun bm!185913 () Bool)

(assert (=> bm!185913 (= call!185916 (derivativeStep!2324 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (head!6346 (v!34539 lt!1018432))))))

(declare-fun bm!185914 () Bool)

(assert (=> bm!185914 (= call!185917 call!185919)))

(assert (= (and d!830836 c!465643) b!2874674))

(assert (= (and d!830836 (not c!465643)) b!2874676))

(assert (= (and b!2874676 c!465639) b!2874675))

(assert (= (and b!2874676 (not c!465639)) b!2874672))

(assert (= (and b!2874672 c!465642) b!2874678))

(assert (= (and b!2874672 (not c!465642)) b!2874670))

(assert (= (and b!2874670 c!465640) b!2874677))

(assert (= (and b!2874670 (not c!465640)) b!2874673))

(assert (= (and b!2874673 c!465641) b!2874671))

(assert (= (and b!2874673 (not c!465641)) b!2874679))

(assert (= (or b!2874671 b!2874679) bm!185914))

(assert (= (or b!2874677 bm!185914) bm!185911))

(assert (= (or b!2874678 b!2874671) bm!185912))

(assert (= (or b!2874678 bm!185911) bm!185913))

(assert (=> b!2874673 m!3292197))

(declare-fun m!3292481 () Bool)

(assert (=> d!830836 m!3292481))

(assert (=> d!830836 m!3291971))

(assert (=> bm!185912 m!3292047))

(declare-fun m!3292483 () Bool)

(assert (=> bm!185912 m!3292483))

(assert (=> bm!185913 m!3292047))

(declare-fun m!3292487 () Bool)

(assert (=> bm!185913 m!3292487))

(assert (=> b!2874058 d!830836))

(assert (=> b!2874058 d!830758))

(assert (=> b!2874058 d!830704))

(declare-fun d!830838 () Bool)

(assert (=> d!830838 (= (isEmpty!18724 lt!1018501) (not ((_ is Some!6415) lt!1018501)))))

(assert (=> d!830700 d!830838))

(declare-fun bs!522425 () Bool)

(declare-fun d!830844 () Bool)

(assert (= bs!522425 (and d!830844 d!830700)))

(declare-fun lambda!107233 () Int)

(assert (=> bs!522425 (not (= lambda!107233 lambda!107202))))

(declare-fun bs!522426 () Bool)

(assert (= bs!522426 (and d!830844 d!830814)))

(assert (=> bs!522426 (not (= lambda!107233 lambda!107232))))

(declare-fun bs!522427 () Bool)

(assert (= bs!522427 (and d!830844 d!830756)))

(assert (=> bs!522427 (not (= lambda!107233 lambda!107216))))

(declare-fun bs!522428 () Bool)

(assert (= bs!522428 (and d!830844 d!830744)))

(assert (=> bs!522428 (not (= lambda!107233 lambda!107211))))

(declare-fun bs!522429 () Bool)

(assert (= bs!522429 (and d!830844 d!830692)))

(assert (=> bs!522429 (not (= lambda!107233 lambda!107199))))

(declare-fun bs!522430 () Bool)

(assert (= bs!522430 (and d!830844 d!830780)))

(assert (=> bs!522430 (not (= lambda!107233 lambda!107221))))

(declare-fun bs!522431 () Bool)

(assert (= bs!522431 (and d!830844 d!830808)))

(assert (=> bs!522431 (= (= lambda!107202 lambda!107196) (= lambda!107233 lambda!107231))))

(declare-fun bs!522432 () Bool)

(assert (= bs!522432 (and d!830844 d!830676)))

(assert (=> bs!522432 (not (= lambda!107233 lambda!107196))))

(assert (=> d!830844 true))

(assert (=> d!830844 (< (dynLambda!14315 order!18133 lambda!107202) (dynLambda!14315 order!18133 lambda!107233))))

(assert (=> d!830844 (= (exists!1167 (exprs!3201 lt!1018434) lambda!107202) (not (forall!7085 (exprs!3201 lt!1018434) lambda!107233)))))

(declare-fun bs!522433 () Bool)

(assert (= bs!522433 d!830844))

(declare-fun m!3292493 () Bool)

(assert (=> bs!522433 m!3292493))

(assert (=> d!830700 d!830844))

(declare-fun b!2874687 () Bool)

(declare-fun lt!1018549 () List!34514)

(declare-fun e!1819221 () Bool)

(assert (=> b!2874687 (= e!1819221 (or (not (= (v!34539 lt!1018489) Nil!34390)) (= lt!1018549 (v!34539 lt!1018491))))))

(declare-fun d!830846 () Bool)

(assert (=> d!830846 e!1819221))

(declare-fun res!1192256 () Bool)

(assert (=> d!830846 (=> (not res!1192256) (not e!1819221))))

(assert (=> d!830846 (= res!1192256 (= (content!4704 lt!1018549) ((_ map or) (content!4704 (v!34539 lt!1018491)) (content!4704 (v!34539 lt!1018489)))))))

(declare-fun e!1819220 () List!34514)

(assert (=> d!830846 (= lt!1018549 e!1819220)))

(declare-fun c!465646 () Bool)

(assert (=> d!830846 (= c!465646 ((_ is Nil!34390) (v!34539 lt!1018491)))))

(assert (=> d!830846 (= (++!8177 (v!34539 lt!1018491) (v!34539 lt!1018489)) lt!1018549)))

(declare-fun b!2874686 () Bool)

(declare-fun res!1192257 () Bool)

(assert (=> b!2874686 (=> (not res!1192257) (not e!1819221))))

(assert (=> b!2874686 (= res!1192257 (= (size!26323 lt!1018549) (+ (size!26323 (v!34539 lt!1018491)) (size!26323 (v!34539 lt!1018489)))))))

(declare-fun b!2874685 () Bool)

(assert (=> b!2874685 (= e!1819220 (Cons!34390 (h!39810 (v!34539 lt!1018491)) (++!8177 (t!233557 (v!34539 lt!1018491)) (v!34539 lt!1018489))))))

(declare-fun b!2874684 () Bool)

(assert (=> b!2874684 (= e!1819220 (v!34539 lt!1018489))))

(assert (= (and d!830846 c!465646) b!2874684))

(assert (= (and d!830846 (not c!465646)) b!2874685))

(assert (= (and d!830846 res!1192256) b!2874686))

(assert (= (and b!2874686 res!1192257) b!2874687))

(declare-fun m!3292495 () Bool)

(assert (=> d!830846 m!3292495))

(declare-fun m!3292497 () Bool)

(assert (=> d!830846 m!3292497))

(declare-fun m!3292499 () Bool)

(assert (=> d!830846 m!3292499))

(declare-fun m!3292501 () Bool)

(assert (=> b!2874686 m!3292501))

(declare-fun m!3292503 () Bool)

(assert (=> b!2874686 m!3292503))

(declare-fun m!3292505 () Bool)

(assert (=> b!2874686 m!3292505))

(declare-fun m!3292507 () Bool)

(assert (=> b!2874685 m!3292507))

(assert (=> b!2874205 d!830846))

(declare-fun d!830848 () Bool)

(assert (=> d!830848 (= (isEmpty!18722 (get!10338 lt!1018433)) ((_ is Nil!34390) (get!10338 lt!1018433)))))

(assert (=> d!830650 d!830848))

(assert (=> b!2874055 d!830734))

(assert (=> b!2874053 d!830758))

(declare-fun d!830850 () Bool)

(declare-fun res!1192262 () Bool)

(declare-fun e!1819227 () Bool)

(assert (=> d!830850 (=> res!1192262 e!1819227)))

(assert (=> d!830850 (= res!1192262 ((_ is Nil!34391) (exprs!3201 c!7184)))))

(assert (=> d!830850 (= (forall!7085 (exprs!3201 c!7184) lambda!107199) e!1819227)))

(declare-fun b!2874694 () Bool)

(declare-fun e!1819228 () Bool)

(assert (=> b!2874694 (= e!1819227 e!1819228)))

(declare-fun res!1192263 () Bool)

(assert (=> b!2874694 (=> (not res!1192263) (not e!1819228))))

(declare-fun dynLambda!14317 (Int Regex!8741) Bool)

(assert (=> b!2874694 (= res!1192263 (dynLambda!14317 lambda!107199 (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2874695 () Bool)

(assert (=> b!2874695 (= e!1819228 (forall!7085 (t!233558 (exprs!3201 c!7184)) lambda!107199))))

(assert (= (and d!830850 (not res!1192262)) b!2874694))

(assert (= (and b!2874694 res!1192263) b!2874695))

(declare-fun b_lambda!86093 () Bool)

(assert (=> (not b_lambda!86093) (not b!2874694)))

(declare-fun m!3292513 () Bool)

(assert (=> b!2874694 m!3292513))

(declare-fun m!3292515 () Bool)

(assert (=> b!2874695 m!3292515))

(assert (=> d!830692 d!830850))

(declare-fun e!1819235 () Bool)

(assert (=> b!2874259 (= tp!923643 e!1819235)))

(declare-fun b!2874717 () Bool)

(declare-fun tp!923670 () Bool)

(declare-fun tp!923667 () Bool)

(assert (=> b!2874717 (= e!1819235 (and tp!923670 tp!923667))))

(declare-fun b!2874716 () Bool)

(declare-fun tp!923671 () Bool)

(assert (=> b!2874716 (= e!1819235 tp!923671)))

(declare-fun b!2874715 () Bool)

(declare-fun tp!923668 () Bool)

(declare-fun tp!923669 () Bool)

(assert (=> b!2874715 (= e!1819235 (and tp!923668 tp!923669))))

(declare-fun b!2874714 () Bool)

(declare-fun tp_is_empty!15077 () Bool)

(assert (=> b!2874714 (= e!1819235 tp_is_empty!15077)))

(assert (= (and b!2874259 ((_ is ElementMatch!8741) (h!39811 (exprs!3201 c!7184)))) b!2874714))

(assert (= (and b!2874259 ((_ is Concat!14062) (h!39811 (exprs!3201 c!7184)))) b!2874715))

(assert (= (and b!2874259 ((_ is Star!8741) (h!39811 (exprs!3201 c!7184)))) b!2874716))

(assert (= (and b!2874259 ((_ is Union!8741) (h!39811 (exprs!3201 c!7184)))) b!2874717))

(declare-fun b!2874718 () Bool)

(declare-fun e!1819236 () Bool)

(declare-fun tp!923672 () Bool)

(declare-fun tp!923673 () Bool)

(assert (=> b!2874718 (= e!1819236 (and tp!923672 tp!923673))))

(assert (=> b!2874259 (= tp!923644 e!1819236)))

(assert (= (and b!2874259 ((_ is Cons!34391) (t!233558 (exprs!3201 c!7184)))) b!2874718))

(declare-fun b_lambda!86095 () Bool)

(assert (= b_lambda!86093 (or d!830692 b_lambda!86095)))

(declare-fun bs!522434 () Bool)

(declare-fun d!830854 () Bool)

(assert (= bs!522434 (and d!830854 d!830692)))

(assert (=> bs!522434 (= (dynLambda!14317 lambda!107199 (h!39811 (exprs!3201 c!7184))) (validRegex!3519 (h!39811 (exprs!3201 c!7184))))))

(assert (=> bs!522434 m!3291971))

(assert (=> b!2874694 d!830854))

(check-sat (not d!830816) (not b!2874652) (not b!2874649) (not b!2874552) (not b!2874716) (not b!2874446) (not b!2874644) (not d!830792) (not b!2874685) tp_is_empty!15077 (not b!2874318) (not b!2874415) (not bm!185872) (not b!2874419) (not b!2874615) (not d!830844) (not d!830734) (not b!2874640) (not b!2874421) (not bm!185870) (not bm!185913) (not bm!185883) (not b!2874343) (not b!2874313) (not b!2874551) (not b!2874589) (not b!2874459) (not b!2874647) (not bm!185867) (not b!2874673) (not b!2874588) (not d!830832) (not bm!185854) (not bm!185879) (not b!2874315) (not b!2874418) (not b!2874695) (not d!830780) (not d!830846) (not b!2874519) (not bm!185886) (not d!830744) (not b!2874299) (not b!2874412) (not bs!522434) (not d!830756) (not b!2874267) (not b!2874261) (not b!2874641) (not d!830784) (not b!2874506) (not bm!185901) (not b!2874505) (not b!2874260) (not b!2874307) (not b!2874686) (not bm!185903) (not bm!185880) (not d!830808) (not d!830724) (not d!830814) (not d!830766) (not bm!185888) (not b!2874585) (not b!2874264) (not b!2874616) (not b!2874587) (not bm!185865) (not d!830708) (not b!2874543) (not b!2874349) (not b!2874310) (not d!830818) (not b!2874718) (not b!2874272) (not b!2874577) (not d!830836) (not bm!185864) (not b!2874269) (not b!2874586) (not bm!185882) (not bm!185912) (not d!830788) (not bm!185908) (not b!2874548) (not bm!185881) (not b!2874717) (not b!2874306) (not d!830790) (not b!2874715) (not b!2874420) (not b!2874485) (not bm!185884) (not b_lambda!86095) (not d!830706) (not b!2874578) (not b!2874607) (not d!830720) (not d!830740) (not b!2874416))
(check-sat)
(get-model)

(assert (=> d!830706 d!830776))

(declare-fun call!185929 () Bool)

(declare-fun bm!185922 () Bool)

(declare-fun c!465672 () Bool)

(declare-fun c!465671 () Bool)

(assert (=> bm!185922 (= call!185929 (validRegex!3519 (ite c!465672 (reg!9070 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))) (ite c!465671 (regTwo!17995 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))) (regOne!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))))))))

(declare-fun b!2874790 () Bool)

(declare-fun res!1192280 () Bool)

(declare-fun e!1819270 () Bool)

(assert (=> b!2874790 (=> res!1192280 e!1819270)))

(assert (=> b!2874790 (= res!1192280 (not ((_ is Concat!14062) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))))))

(declare-fun e!1819269 () Bool)

(assert (=> b!2874790 (= e!1819269 e!1819270)))

(declare-fun bm!185923 () Bool)

(declare-fun call!185927 () Bool)

(assert (=> bm!185923 (= call!185927 call!185929)))

(declare-fun call!185928 () Bool)

(declare-fun bm!185924 () Bool)

(assert (=> bm!185924 (= call!185928 (validRegex!3519 (ite c!465671 (regOne!17995 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))) (regTwo!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))))

(declare-fun b!2874791 () Bool)

(declare-fun e!1819274 () Bool)

(assert (=> b!2874791 (= e!1819274 call!185927)))

(declare-fun b!2874792 () Bool)

(declare-fun e!1819273 () Bool)

(assert (=> b!2874792 (= e!1819273 call!185928)))

(declare-fun b!2874793 () Bool)

(declare-fun res!1192281 () Bool)

(assert (=> b!2874793 (=> (not res!1192281) (not e!1819274))))

(assert (=> b!2874793 (= res!1192281 call!185928)))

(assert (=> b!2874793 (= e!1819269 e!1819274)))

(declare-fun b!2874794 () Bool)

(assert (=> b!2874794 (= e!1819270 e!1819273)))

(declare-fun res!1192284 () Bool)

(assert (=> b!2874794 (=> (not res!1192284) (not e!1819273))))

(assert (=> b!2874794 (= res!1192284 call!185927)))

(declare-fun b!2874795 () Bool)

(declare-fun e!1819268 () Bool)

(declare-fun e!1819272 () Bool)

(assert (=> b!2874795 (= e!1819268 e!1819272)))

(declare-fun res!1192283 () Bool)

(assert (=> b!2874795 (= res!1192283 (not (nullable!2691 (reg!9070 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))))

(assert (=> b!2874795 (=> (not res!1192283) (not e!1819272))))

(declare-fun d!830886 () Bool)

(declare-fun res!1192282 () Bool)

(declare-fun e!1819271 () Bool)

(assert (=> d!830886 (=> res!1192282 e!1819271)))

(assert (=> d!830886 (= res!1192282 ((_ is ElementMatch!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(assert (=> d!830886 (= (validRegex!3519 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))) e!1819271)))

(declare-fun b!2874796 () Bool)

(assert (=> b!2874796 (= e!1819268 e!1819269)))

(assert (=> b!2874796 (= c!465671 ((_ is Union!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(declare-fun b!2874797 () Bool)

(assert (=> b!2874797 (= e!1819272 call!185929)))

(declare-fun b!2874798 () Bool)

(assert (=> b!2874798 (= e!1819271 e!1819268)))

(assert (=> b!2874798 (= c!465672 ((_ is Star!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(assert (= (and d!830886 (not res!1192282)) b!2874798))

(assert (= (and b!2874798 c!465672) b!2874795))

(assert (= (and b!2874798 (not c!465672)) b!2874796))

(assert (= (and b!2874795 res!1192283) b!2874797))

(assert (= (and b!2874796 c!465671) b!2874793))

(assert (= (and b!2874796 (not c!465671)) b!2874790))

(assert (= (and b!2874793 res!1192281) b!2874791))

(assert (= (and b!2874790 (not res!1192280)) b!2874794))

(assert (= (and b!2874794 res!1192284) b!2874792))

(assert (= (or b!2874791 b!2874794) bm!185923))

(assert (= (or b!2874793 b!2874792) bm!185924))

(assert (= (or b!2874797 bm!185923) bm!185922))

(declare-fun m!3292587 () Bool)

(assert (=> bm!185922 m!3292587))

(declare-fun m!3292589 () Bool)

(assert (=> bm!185924 m!3292589))

(declare-fun m!3292591 () Bool)

(assert (=> b!2874795 m!3292591))

(assert (=> d!830706 d!830886))

(declare-fun bs!522460 () Bool)

(declare-fun d!830888 () Bool)

(assert (= bs!522460 (and d!830888 d!830700)))

(declare-fun lambda!107239 () Int)

(assert (=> bs!522460 (= lambda!107239 lambda!107202)))

(declare-fun bs!522461 () Bool)

(assert (= bs!522461 (and d!830888 d!830814)))

(assert (=> bs!522461 (= lambda!107239 lambda!107232)))

(declare-fun bs!522462 () Bool)

(assert (= bs!522462 (and d!830888 d!830756)))

(assert (=> bs!522462 (not (= lambda!107239 lambda!107216))))

(declare-fun bs!522463 () Bool)

(assert (= bs!522463 (and d!830888 d!830744)))

(assert (=> bs!522463 (not (= lambda!107239 lambda!107211))))

(declare-fun bs!522464 () Bool)

(assert (= bs!522464 (and d!830888 d!830692)))

(assert (=> bs!522464 (not (= lambda!107239 lambda!107199))))

(declare-fun bs!522465 () Bool)

(assert (= bs!522465 (and d!830888 d!830780)))

(assert (=> bs!522465 (= lambda!107239 lambda!107221)))

(declare-fun bs!522466 () Bool)

(assert (= bs!522466 (and d!830888 d!830844)))

(assert (=> bs!522466 (not (= lambda!107239 lambda!107233))))

(declare-fun bs!522467 () Bool)

(assert (= bs!522467 (and d!830888 d!830808)))

(assert (=> bs!522467 (not (= lambda!107239 lambda!107231))))

(declare-fun bs!522468 () Bool)

(assert (= bs!522468 (and d!830888 d!830676)))

(assert (=> bs!522468 (= lambda!107239 lambda!107196)))

(declare-fun b!2874799 () Bool)

(declare-fun e!1819277 () Option!6416)

(assert (=> b!2874799 (= e!1819277 (Some!6415 Nil!34390))))

(declare-fun b!2874800 () Bool)

(declare-fun c!465673 () Bool)

(declare-fun lt!1018564 () Option!6416)

(assert (=> b!2874800 (= c!465673 ((_ is Some!6415) lt!1018564))))

(assert (=> b!2874800 (= lt!1018564 (getLanguageWitness!434 (Context!5403 (t!233558 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))))))))

(declare-fun e!1819275 () Option!6416)

(declare-fun e!1819276 () Option!6416)

(assert (=> b!2874800 (= e!1819275 e!1819276)))

(declare-fun b!2874801 () Bool)

(assert (=> b!2874801 (= e!1819275 None!6415)))

(declare-fun lt!1018562 () Option!6416)

(assert (=> d!830888 (= (isEmpty!18724 lt!1018562) (exists!1167 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434))))))) lambda!107239))))

(assert (=> d!830888 (= lt!1018562 e!1819277)))

(declare-fun c!465674 () Bool)

(assert (=> d!830888 (= c!465674 ((_ is Cons!34391) (exprs!3201 (Context!5403 (t!233558 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))))))

(assert (=> d!830888 (= (getLanguageWitness!434 (Context!5403 (t!233558 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434))))))) lt!1018562)))

(declare-fun b!2874802 () Bool)

(assert (=> b!2874802 (= e!1819276 None!6415)))

(declare-fun b!2874803 () Bool)

(declare-fun lt!1018563 () Option!6416)

(assert (=> b!2874803 (= e!1819276 (Some!6415 (++!8177 (v!34539 lt!1018563) (v!34539 lt!1018564))))))

(declare-fun b!2874804 () Bool)

(assert (=> b!2874804 (= e!1819277 e!1819275)))

(assert (=> b!2874804 (= lt!1018563 (getLanguageWitness!433 (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434))))))))))))

(declare-fun c!465675 () Bool)

(assert (=> b!2874804 (= c!465675 ((_ is Some!6415) lt!1018563))))

(assert (= (and d!830888 c!465674) b!2874804))

(assert (= (and d!830888 (not c!465674)) b!2874799))

(assert (= (and b!2874804 c!465675) b!2874800))

(assert (= (and b!2874804 (not c!465675)) b!2874801))

(assert (= (and b!2874800 c!465673) b!2874803))

(assert (= (and b!2874800 (not c!465673)) b!2874802))

(declare-fun m!3292593 () Bool)

(assert (=> b!2874800 m!3292593))

(declare-fun m!3292595 () Bool)

(assert (=> d!830888 m!3292595))

(declare-fun m!3292597 () Bool)

(assert (=> d!830888 m!3292597))

(declare-fun m!3292599 () Bool)

(assert (=> b!2874803 m!3292599))

(declare-fun m!3292601 () Bool)

(assert (=> b!2874804 m!3292601))

(assert (=> b!2874548 d!830888))

(assert (=> bm!185854 d!830776))

(declare-fun lt!1018565 () List!34514)

(declare-fun b!2874808 () Bool)

(declare-fun e!1819279 () Bool)

(assert (=> b!2874808 (= e!1819279 (or (not (= (v!34539 lt!1018524) Nil!34390)) (= lt!1018565 (v!34539 lt!1018526))))))

(declare-fun d!830890 () Bool)

(assert (=> d!830890 e!1819279))

(declare-fun res!1192285 () Bool)

(assert (=> d!830890 (=> (not res!1192285) (not e!1819279))))

(assert (=> d!830890 (= res!1192285 (= (content!4704 lt!1018565) ((_ map or) (content!4704 (v!34539 lt!1018526)) (content!4704 (v!34539 lt!1018524)))))))

(declare-fun e!1819278 () List!34514)

(assert (=> d!830890 (= lt!1018565 e!1819278)))

(declare-fun c!465676 () Bool)

(assert (=> d!830890 (= c!465676 ((_ is Nil!34390) (v!34539 lt!1018526)))))

(assert (=> d!830890 (= (++!8177 (v!34539 lt!1018526) (v!34539 lt!1018524)) lt!1018565)))

(declare-fun b!2874807 () Bool)

(declare-fun res!1192286 () Bool)

(assert (=> b!2874807 (=> (not res!1192286) (not e!1819279))))

(assert (=> b!2874807 (= res!1192286 (= (size!26323 lt!1018565) (+ (size!26323 (v!34539 lt!1018526)) (size!26323 (v!34539 lt!1018524)))))))

(declare-fun b!2874806 () Bool)

(assert (=> b!2874806 (= e!1819278 (Cons!34390 (h!39810 (v!34539 lt!1018526)) (++!8177 (t!233557 (v!34539 lt!1018526)) (v!34539 lt!1018524))))))

(declare-fun b!2874805 () Bool)

(assert (=> b!2874805 (= e!1819278 (v!34539 lt!1018524))))

(assert (= (and d!830890 c!465676) b!2874805))

(assert (= (and d!830890 (not c!465676)) b!2874806))

(assert (= (and d!830890 res!1192285) b!2874807))

(assert (= (and b!2874807 res!1192286) b!2874808))

(declare-fun m!3292603 () Bool)

(assert (=> d!830890 m!3292603))

(declare-fun m!3292605 () Bool)

(assert (=> d!830890 m!3292605))

(declare-fun m!3292607 () Bool)

(assert (=> d!830890 m!3292607))

(declare-fun m!3292609 () Bool)

(assert (=> b!2874807 m!3292609))

(declare-fun m!3292611 () Bool)

(assert (=> b!2874807 m!3292611))

(declare-fun m!3292613 () Bool)

(assert (=> b!2874807 m!3292613))

(declare-fun m!3292615 () Bool)

(assert (=> b!2874806 m!3292615))

(assert (=> b!2874485 d!830890))

(assert (=> b!2874315 d!830734))

(declare-fun bm!185925 () Bool)

(declare-fun call!185930 () Bool)

(assert (=> bm!185925 (= call!185930 (isEmpty!18722 (tail!4571 (tail!4571 (v!34539 lt!1018432)))))))

(declare-fun d!830892 () Bool)

(declare-fun e!1819281 () Bool)

(assert (=> d!830892 e!1819281))

(declare-fun c!465679 () Bool)

(assert (=> d!830892 (= c!465679 ((_ is EmptyExpr!8741) (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432))))))))

(declare-fun lt!1018566 () Bool)

(declare-fun e!1819284 () Bool)

(assert (=> d!830892 (= lt!1018566 e!1819284)))

(declare-fun c!465678 () Bool)

(assert (=> d!830892 (= c!465678 (isEmpty!18722 (tail!4571 (tail!4571 (v!34539 lt!1018432)))))))

(assert (=> d!830892 (validRegex!3519 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432)))))))

(assert (=> d!830892 (= (matchR!3741 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432)))) (tail!4571 (tail!4571 (v!34539 lt!1018432)))) lt!1018566)))

(declare-fun b!2874809 () Bool)

(declare-fun e!1819280 () Bool)

(assert (=> b!2874809 (= e!1819280 (not (= (head!6346 (tail!4571 (tail!4571 (v!34539 lt!1018432)))) (c!465376 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432))))))))))

(declare-fun b!2874810 () Bool)

(declare-fun res!1192291 () Bool)

(declare-fun e!1819285 () Bool)

(assert (=> b!2874810 (=> (not res!1192291) (not e!1819285))))

(assert (=> b!2874810 (= res!1192291 (isEmpty!18722 (tail!4571 (tail!4571 (tail!4571 (v!34539 lt!1018432))))))))

(declare-fun b!2874811 () Bool)

(declare-fun e!1819283 () Bool)

(assert (=> b!2874811 (= e!1819283 e!1819280)))

(declare-fun res!1192292 () Bool)

(assert (=> b!2874811 (=> res!1192292 e!1819280)))

(assert (=> b!2874811 (= res!1192292 call!185930)))

(declare-fun b!2874812 () Bool)

(declare-fun e!1819286 () Bool)

(assert (=> b!2874812 (= e!1819286 (not lt!1018566))))

(declare-fun b!2874813 () Bool)

(declare-fun res!1192293 () Bool)

(assert (=> b!2874813 (=> res!1192293 e!1819280)))

(assert (=> b!2874813 (= res!1192293 (not (isEmpty!18722 (tail!4571 (tail!4571 (tail!4571 (v!34539 lt!1018432)))))))))

(declare-fun b!2874814 () Bool)

(declare-fun res!1192288 () Bool)

(declare-fun e!1819282 () Bool)

(assert (=> b!2874814 (=> res!1192288 e!1819282)))

(assert (=> b!2874814 (= res!1192288 (not ((_ is ElementMatch!8741) (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432)))))))))

(assert (=> b!2874814 (= e!1819286 e!1819282)))

(declare-fun b!2874815 () Bool)

(declare-fun res!1192287 () Bool)

(assert (=> b!2874815 (=> res!1192287 e!1819282)))

(assert (=> b!2874815 (= res!1192287 e!1819285)))

(declare-fun res!1192294 () Bool)

(assert (=> b!2874815 (=> (not res!1192294) (not e!1819285))))

(assert (=> b!2874815 (= res!1192294 lt!1018566)))

(declare-fun b!2874816 () Bool)

(assert (=> b!2874816 (= e!1819285 (= (head!6346 (tail!4571 (tail!4571 (v!34539 lt!1018432)))) (c!465376 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432)))))))))

(declare-fun b!2874817 () Bool)

(declare-fun res!1192289 () Bool)

(assert (=> b!2874817 (=> (not res!1192289) (not e!1819285))))

(assert (=> b!2874817 (= res!1192289 (not call!185930))))

(declare-fun b!2874818 () Bool)

(assert (=> b!2874818 (= e!1819284 (nullable!2691 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432))))))))

(declare-fun b!2874819 () Bool)

(assert (=> b!2874819 (= e!1819282 e!1819283)))

(declare-fun res!1192290 () Bool)

(assert (=> b!2874819 (=> (not res!1192290) (not e!1819283))))

(assert (=> b!2874819 (= res!1192290 (not lt!1018566))))

(declare-fun b!2874820 () Bool)

(assert (=> b!2874820 (= e!1819281 (= lt!1018566 call!185930))))

(declare-fun b!2874821 () Bool)

(assert (=> b!2874821 (= e!1819284 (matchR!3741 (derivativeStep!2324 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432)))) (head!6346 (tail!4571 (tail!4571 (v!34539 lt!1018432))))) (tail!4571 (tail!4571 (tail!4571 (v!34539 lt!1018432))))))))

(declare-fun b!2874822 () Bool)

(assert (=> b!2874822 (= e!1819281 e!1819286)))

(declare-fun c!465677 () Bool)

(assert (=> b!2874822 (= c!465677 ((_ is EmptyLang!8741) (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432))))))))

(assert (= (and d!830892 c!465678) b!2874818))

(assert (= (and d!830892 (not c!465678)) b!2874821))

(assert (= (and d!830892 c!465679) b!2874820))

(assert (= (and d!830892 (not c!465679)) b!2874822))

(assert (= (and b!2874822 c!465677) b!2874812))

(assert (= (and b!2874822 (not c!465677)) b!2874814))

(assert (= (and b!2874814 (not res!1192288)) b!2874815))

(assert (= (and b!2874815 res!1192294) b!2874817))

(assert (= (and b!2874817 res!1192289) b!2874810))

(assert (= (and b!2874810 res!1192291) b!2874816))

(assert (= (and b!2874815 (not res!1192287)) b!2874819))

(assert (= (and b!2874819 res!1192290) b!2874811))

(assert (= (and b!2874811 (not res!1192292)) b!2874813))

(assert (= (and b!2874813 (not res!1192293)) b!2874809))

(assert (= (or b!2874820 b!2874817 b!2874811) bm!185925))

(assert (=> bm!185925 m!3292467))

(assert (=> bm!185925 m!3292469))

(assert (=> b!2874810 m!3292467))

(declare-fun m!3292617 () Bool)

(assert (=> b!2874810 m!3292617))

(assert (=> b!2874810 m!3292617))

(declare-fun m!3292619 () Bool)

(assert (=> b!2874810 m!3292619))

(assert (=> d!830892 m!3292467))

(assert (=> d!830892 m!3292469))

(assert (=> d!830892 m!3292475))

(declare-fun m!3292621 () Bool)

(assert (=> d!830892 m!3292621))

(assert (=> b!2874816 m!3292467))

(declare-fun m!3292623 () Bool)

(assert (=> b!2874816 m!3292623))

(assert (=> b!2874821 m!3292467))

(assert (=> b!2874821 m!3292623))

(assert (=> b!2874821 m!3292475))

(assert (=> b!2874821 m!3292623))

(declare-fun m!3292625 () Bool)

(assert (=> b!2874821 m!3292625))

(assert (=> b!2874821 m!3292467))

(assert (=> b!2874821 m!3292617))

(assert (=> b!2874821 m!3292625))

(assert (=> b!2874821 m!3292617))

(declare-fun m!3292627 () Bool)

(assert (=> b!2874821 m!3292627))

(assert (=> b!2874813 m!3292467))

(assert (=> b!2874813 m!3292617))

(assert (=> b!2874813 m!3292617))

(assert (=> b!2874813 m!3292619))

(assert (=> b!2874818 m!3292475))

(declare-fun m!3292629 () Bool)

(assert (=> b!2874818 m!3292629))

(assert (=> b!2874809 m!3292467))

(assert (=> b!2874809 m!3292623))

(assert (=> b!2874652 d!830892))

(declare-fun b!2874823 () Bool)

(declare-fun e!1819287 () Regex!8741)

(declare-fun e!1819288 () Regex!8741)

(assert (=> b!2874823 (= e!1819287 e!1819288)))

(declare-fun c!465681 () Bool)

(assert (=> b!2874823 (= c!465681 ((_ is Star!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(declare-fun call!185933 () Regex!8741)

(declare-fun e!1819289 () Regex!8741)

(declare-fun call!185932 () Regex!8741)

(declare-fun b!2874824 () Bool)

(assert (=> b!2874824 (= e!1819289 (Union!8741 (Concat!14062 call!185932 (regTwo!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))) call!185933))))

(declare-fun b!2874825 () Bool)

(declare-fun c!465683 () Bool)

(assert (=> b!2874825 (= c!465683 ((_ is Union!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(declare-fun e!1819291 () Regex!8741)

(assert (=> b!2874825 (= e!1819291 e!1819287)))

(declare-fun b!2874826 () Bool)

(declare-fun c!465682 () Bool)

(assert (=> b!2874826 (= c!465682 (nullable!2691 (regOne!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))))))

(assert (=> b!2874826 (= e!1819288 e!1819289)))

(declare-fun bm!185926 () Bool)

(declare-fun call!185934 () Regex!8741)

(declare-fun call!185931 () Regex!8741)

(assert (=> bm!185926 (= call!185934 call!185931)))

(declare-fun d!830894 () Bool)

(declare-fun lt!1018567 () Regex!8741)

(assert (=> d!830894 (validRegex!3519 lt!1018567)))

(declare-fun e!1819290 () Regex!8741)

(assert (=> d!830894 (= lt!1018567 e!1819290)))

(declare-fun c!465684 () Bool)

(assert (=> d!830894 (= c!465684 (or ((_ is EmptyExpr!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))) ((_ is EmptyLang!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))))))

(assert (=> d!830894 (validRegex!3519 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))))

(assert (=> d!830894 (= (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))) (head!6346 (tail!4571 (v!34539 lt!1018432)))) lt!1018567)))

(declare-fun b!2874827 () Bool)

(assert (=> b!2874827 (= e!1819290 EmptyLang!8741)))

(declare-fun b!2874828 () Bool)

(assert (=> b!2874828 (= e!1819291 (ite (= (head!6346 (tail!4571 (v!34539 lt!1018432))) (c!465376 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))) EmptyExpr!8741 EmptyLang!8741))))

(declare-fun b!2874829 () Bool)

(assert (=> b!2874829 (= e!1819290 e!1819291)))

(declare-fun c!465680 () Bool)

(assert (=> b!2874829 (= c!465680 ((_ is ElementMatch!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(declare-fun b!2874830 () Bool)

(assert (=> b!2874830 (= e!1819288 (Concat!14062 call!185934 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(declare-fun bm!185927 () Bool)

(assert (=> bm!185927 (= call!185933 (derivativeStep!2324 (ite c!465683 (regOne!17995 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))) (regTwo!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))) (head!6346 (tail!4571 (v!34539 lt!1018432)))))))

(declare-fun b!2874831 () Bool)

(assert (=> b!2874831 (= e!1819287 (Union!8741 call!185933 call!185931))))

(declare-fun b!2874832 () Bool)

(assert (=> b!2874832 (= e!1819289 (Union!8741 (Concat!14062 call!185932 (regTwo!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))) EmptyLang!8741))))

(declare-fun bm!185928 () Bool)

(assert (=> bm!185928 (= call!185931 (derivativeStep!2324 (ite c!465683 (regTwo!17995 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))) (ite c!465681 (reg!9070 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))) (regOne!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))) (head!6346 (tail!4571 (v!34539 lt!1018432)))))))

(declare-fun bm!185929 () Bool)

(assert (=> bm!185929 (= call!185932 call!185934)))

(assert (= (and d!830894 c!465684) b!2874827))

(assert (= (and d!830894 (not c!465684)) b!2874829))

(assert (= (and b!2874829 c!465680) b!2874828))

(assert (= (and b!2874829 (not c!465680)) b!2874825))

(assert (= (and b!2874825 c!465683) b!2874831))

(assert (= (and b!2874825 (not c!465683)) b!2874823))

(assert (= (and b!2874823 c!465681) b!2874830))

(assert (= (and b!2874823 (not c!465681)) b!2874826))

(assert (= (and b!2874826 c!465682) b!2874824))

(assert (= (and b!2874826 (not c!465682)) b!2874832))

(assert (= (or b!2874824 b!2874832) bm!185929))

(assert (= (or b!2874830 bm!185929) bm!185926))

(assert (= (or b!2874831 b!2874824) bm!185927))

(assert (= (or b!2874831 bm!185926) bm!185928))

(declare-fun m!3292631 () Bool)

(assert (=> b!2874826 m!3292631))

(declare-fun m!3292633 () Bool)

(assert (=> d!830894 m!3292633))

(assert (=> d!830894 m!3292049))

(assert (=> d!830894 m!3292471))

(assert (=> bm!185927 m!3292473))

(declare-fun m!3292635 () Bool)

(assert (=> bm!185927 m!3292635))

(assert (=> bm!185928 m!3292473))

(declare-fun m!3292637 () Bool)

(assert (=> bm!185928 m!3292637))

(assert (=> b!2874652 d!830894))

(declare-fun d!830896 () Bool)

(assert (=> d!830896 (= (head!6346 (tail!4571 (v!34539 lt!1018432))) (h!39810 (tail!4571 (v!34539 lt!1018432))))))

(assert (=> b!2874652 d!830896))

(declare-fun d!830898 () Bool)

(assert (=> d!830898 (= (tail!4571 (tail!4571 (v!34539 lt!1018432))) (t!233557 (tail!4571 (v!34539 lt!1018432))))))

(assert (=> b!2874652 d!830898))

(declare-fun d!830900 () Bool)

(assert (=> d!830900 (= (nullable!2691 (regOne!17994 (h!39811 (exprs!3201 c!7184)))) (nullableFct!818 (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))

(declare-fun bs!522469 () Bool)

(assert (= bs!522469 d!830900))

(declare-fun m!3292639 () Bool)

(assert (=> bs!522469 m!3292639))

(assert (=> b!2874673 d!830900))

(declare-fun d!830902 () Bool)

(assert (=> d!830902 (= (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))) (h!39810 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> b!2874313 d!830902))

(declare-fun bm!185930 () Bool)

(declare-fun c!465685 () Bool)

(declare-fun call!185937 () Bool)

(declare-fun c!465686 () Bool)

(assert (=> bm!185930 (= call!185937 (validRegex!3519 (ite c!465686 (reg!9070 (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))) (ite c!465685 (regTwo!17995 (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))) (regOne!17994 (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))))))

(declare-fun b!2874833 () Bool)

(declare-fun res!1192295 () Bool)

(declare-fun e!1819294 () Bool)

(assert (=> b!2874833 (=> res!1192295 e!1819294)))

(assert (=> b!2874833 (= res!1192295 (not ((_ is Concat!14062) (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun e!1819293 () Bool)

(assert (=> b!2874833 (= e!1819293 e!1819294)))

(declare-fun bm!185931 () Bool)

(declare-fun call!185935 () Bool)

(assert (=> bm!185931 (= call!185935 call!185937)))

(declare-fun call!185936 () Bool)

(declare-fun bm!185932 () Bool)

(assert (=> bm!185932 (= call!185936 (validRegex!3519 (ite c!465685 (regOne!17995 (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))) (regTwo!17994 (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))))))

(declare-fun b!2874834 () Bool)

(declare-fun e!1819298 () Bool)

(assert (=> b!2874834 (= e!1819298 call!185935)))

(declare-fun b!2874835 () Bool)

(declare-fun e!1819297 () Bool)

(assert (=> b!2874835 (= e!1819297 call!185936)))

(declare-fun b!2874836 () Bool)

(declare-fun res!1192296 () Bool)

(assert (=> b!2874836 (=> (not res!1192296) (not e!1819298))))

(assert (=> b!2874836 (= res!1192296 call!185936)))

(assert (=> b!2874836 (= e!1819293 e!1819298)))

(declare-fun b!2874837 () Bool)

(assert (=> b!2874837 (= e!1819294 e!1819297)))

(declare-fun res!1192299 () Bool)

(assert (=> b!2874837 (=> (not res!1192299) (not e!1819297))))

(assert (=> b!2874837 (= res!1192299 call!185935)))

(declare-fun b!2874838 () Bool)

(declare-fun e!1819292 () Bool)

(declare-fun e!1819296 () Bool)

(assert (=> b!2874838 (= e!1819292 e!1819296)))

(declare-fun res!1192298 () Bool)

(assert (=> b!2874838 (= res!1192298 (not (nullable!2691 (reg!9070 (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))))))

(assert (=> b!2874838 (=> (not res!1192298) (not e!1819296))))

(declare-fun d!830904 () Bool)

(declare-fun res!1192297 () Bool)

(declare-fun e!1819295 () Bool)

(assert (=> d!830904 (=> res!1192297 e!1819295)))

(assert (=> d!830904 (= res!1192297 ((_ is ElementMatch!8741) (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))))

(assert (=> d!830904 (= (validRegex!3519 (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))) e!1819295)))

(declare-fun b!2874839 () Bool)

(assert (=> b!2874839 (= e!1819292 e!1819293)))

(assert (=> b!2874839 (= c!465685 ((_ is Union!8741) (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))))

(declare-fun b!2874840 () Bool)

(assert (=> b!2874840 (= e!1819296 call!185937)))

(declare-fun b!2874841 () Bool)

(assert (=> b!2874841 (= e!1819295 e!1819292)))

(assert (=> b!2874841 (= c!465686 ((_ is Star!8741) (ite c!465593 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465592 (regTwo!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))))

(assert (= (and d!830904 (not res!1192297)) b!2874841))

(assert (= (and b!2874841 c!465686) b!2874838))

(assert (= (and b!2874841 (not c!465686)) b!2874839))

(assert (= (and b!2874838 res!1192298) b!2874840))

(assert (= (and b!2874839 c!465685) b!2874836))

(assert (= (and b!2874839 (not c!465685)) b!2874833))

(assert (= (and b!2874836 res!1192296) b!2874834))

(assert (= (and b!2874833 (not res!1192295)) b!2874837))

(assert (= (and b!2874837 res!1192299) b!2874835))

(assert (= (or b!2874834 b!2874837) bm!185931))

(assert (= (or b!2874836 b!2874835) bm!185932))

(assert (= (or b!2874840 bm!185931) bm!185930))

(declare-fun m!3292641 () Bool)

(assert (=> bm!185930 m!3292641))

(declare-fun m!3292643 () Bool)

(assert (=> bm!185932 m!3292643))

(declare-fun m!3292645 () Bool)

(assert (=> b!2874838 m!3292645))

(assert (=> bm!185886 d!830904))

(declare-fun d!830906 () Bool)

(declare-fun res!1192300 () Bool)

(declare-fun e!1819299 () Bool)

(assert (=> d!830906 (=> res!1192300 e!1819299)))

(assert (=> d!830906 (= res!1192300 ((_ is Nil!34391) (exprs!3201 c!7184)))))

(assert (=> d!830906 (= (forall!7085 (exprs!3201 c!7184) lambda!107231) e!1819299)))

(declare-fun b!2874842 () Bool)

(declare-fun e!1819300 () Bool)

(assert (=> b!2874842 (= e!1819299 e!1819300)))

(declare-fun res!1192301 () Bool)

(assert (=> b!2874842 (=> (not res!1192301) (not e!1819300))))

(assert (=> b!2874842 (= res!1192301 (dynLambda!14317 lambda!107231 (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2874843 () Bool)

(assert (=> b!2874843 (= e!1819300 (forall!7085 (t!233558 (exprs!3201 c!7184)) lambda!107231))))

(assert (= (and d!830906 (not res!1192300)) b!2874842))

(assert (= (and b!2874842 res!1192301) b!2874843))

(declare-fun b_lambda!86099 () Bool)

(assert (=> (not b_lambda!86099) (not b!2874842)))

(declare-fun m!3292647 () Bool)

(assert (=> b!2874842 m!3292647))

(declare-fun m!3292649 () Bool)

(assert (=> b!2874843 m!3292649))

(assert (=> d!830808 d!830906))

(declare-fun d!830908 () Bool)

(declare-fun choose!17000 ((InoxSet Context!5402) Int) (InoxSet Context!5402))

(assert (=> d!830908 (= (flatMap!222 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) lambda!107227) (choose!17000 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) lambda!107227))))

(declare-fun bs!522470 () Bool)

(assert (= bs!522470 d!830908))

(assert (=> bs!522470 m!3291973))

(declare-fun m!3292651 () Bool)

(assert (=> bs!522470 m!3292651))

(assert (=> d!830792 d!830908))

(declare-fun b!2874844 () Bool)

(declare-fun e!1819301 () Regex!8741)

(declare-fun e!1819302 () Regex!8741)

(assert (=> b!2874844 (= e!1819301 e!1819302)))

(declare-fun c!465688 () Bool)

(assert (=> b!2874844 (= c!465688 ((_ is Star!8741) (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun e!1819303 () Regex!8741)

(declare-fun b!2874845 () Bool)

(declare-fun call!185940 () Regex!8741)

(declare-fun call!185939 () Regex!8741)

(assert (=> b!2874845 (= e!1819303 (Union!8741 (Concat!14062 call!185939 (regTwo!17994 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))) call!185940))))

(declare-fun b!2874846 () Bool)

(declare-fun c!465690 () Bool)

(assert (=> b!2874846 (= c!465690 ((_ is Union!8741) (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun e!1819305 () Regex!8741)

(assert (=> b!2874846 (= e!1819305 e!1819301)))

(declare-fun b!2874847 () Bool)

(declare-fun c!465689 () Bool)

(assert (=> b!2874847 (= c!465689 (nullable!2691 (regOne!17994 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))

(assert (=> b!2874847 (= e!1819302 e!1819303)))

(declare-fun bm!185933 () Bool)

(declare-fun call!185941 () Regex!8741)

(declare-fun call!185938 () Regex!8741)

(assert (=> bm!185933 (= call!185941 call!185938)))

(declare-fun d!830910 () Bool)

(declare-fun lt!1018568 () Regex!8741)

(assert (=> d!830910 (validRegex!3519 lt!1018568)))

(declare-fun e!1819304 () Regex!8741)

(assert (=> d!830910 (= lt!1018568 e!1819304)))

(declare-fun c!465691 () Bool)

(assert (=> d!830910 (= c!465691 (or ((_ is EmptyExpr!8741) (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) ((_ is EmptyLang!8741) (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))

(assert (=> d!830910 (validRegex!3519 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))

(assert (=> d!830910 (= (derivativeStep!2324 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) (head!6346 (get!10338 lt!1018432))) lt!1018568)))

(declare-fun b!2874848 () Bool)

(assert (=> b!2874848 (= e!1819304 EmptyLang!8741)))

(declare-fun b!2874849 () Bool)

(assert (=> b!2874849 (= e!1819305 (ite (= (head!6346 (get!10338 lt!1018432)) (c!465376 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))) EmptyExpr!8741 EmptyLang!8741))))

(declare-fun b!2874850 () Bool)

(assert (=> b!2874850 (= e!1819304 e!1819305)))

(declare-fun c!465687 () Bool)

(assert (=> b!2874850 (= c!465687 ((_ is ElementMatch!8741) (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2874851 () Bool)

(assert (=> b!2874851 (= e!1819302 (Concat!14062 call!185941 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun bm!185934 () Bool)

(assert (=> bm!185934 (= call!185940 (derivativeStep!2324 (ite c!465690 (regOne!17995 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))) (head!6346 (get!10338 lt!1018432))))))

(declare-fun b!2874852 () Bool)

(assert (=> b!2874852 (= e!1819301 (Union!8741 call!185940 call!185938))))

(declare-fun b!2874853 () Bool)

(assert (=> b!2874853 (= e!1819303 (Union!8741 (Concat!14062 call!185939 (regTwo!17994 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))) EmptyLang!8741))))

(declare-fun bm!185935 () Bool)

(assert (=> bm!185935 (= call!185938 (derivativeStep!2324 (ite c!465690 (regTwo!17995 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465688 (reg!9070 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465506 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) (head!6346 (get!10338 lt!1018432))))))

(declare-fun bm!185936 () Bool)

(assert (=> bm!185936 (= call!185939 call!185941)))

(assert (= (and d!830910 c!465691) b!2874848))

(assert (= (and d!830910 (not c!465691)) b!2874850))

(assert (= (and b!2874850 c!465687) b!2874849))

(assert (= (and b!2874850 (not c!465687)) b!2874846))

(assert (= (and b!2874846 c!465690) b!2874852))

(assert (= (and b!2874846 (not c!465690)) b!2874844))

(assert (= (and b!2874844 c!465688) b!2874851))

(assert (= (and b!2874844 (not c!465688)) b!2874847))

(assert (= (and b!2874847 c!465689) b!2874845))

(assert (= (and b!2874847 (not c!465689)) b!2874853))

(assert (= (or b!2874845 b!2874853) bm!185936))

(assert (= (or b!2874851 bm!185936) bm!185933))

(assert (= (or b!2874852 b!2874845) bm!185934))

(assert (= (or b!2874852 bm!185933) bm!185935))

(declare-fun m!3292653 () Bool)

(assert (=> b!2874847 m!3292653))

(declare-fun m!3292655 () Bool)

(assert (=> d!830910 m!3292655))

(declare-fun m!3292657 () Bool)

(assert (=> d!830910 m!3292657))

(assert (=> bm!185934 m!3292069))

(declare-fun m!3292659 () Bool)

(assert (=> bm!185934 m!3292659))

(assert (=> bm!185935 m!3292069))

(declare-fun m!3292661 () Bool)

(assert (=> bm!185935 m!3292661))

(assert (=> bm!185864 d!830910))

(declare-fun d!830912 () Bool)

(declare-fun c!465694 () Bool)

(assert (=> d!830912 (= c!465694 ((_ is Nil!34390) lt!1018549))))

(declare-fun e!1819308 () (InoxSet C!17664))

(assert (=> d!830912 (= (content!4704 lt!1018549) e!1819308)))

(declare-fun b!2874858 () Bool)

(assert (=> b!2874858 (= e!1819308 ((as const (Array C!17664 Bool)) false))))

(declare-fun b!2874859 () Bool)

(assert (=> b!2874859 (= e!1819308 ((_ map or) (store ((as const (Array C!17664 Bool)) false) (h!39810 lt!1018549) true) (content!4704 (t!233557 lt!1018549))))))

(assert (= (and d!830912 c!465694) b!2874858))

(assert (= (and d!830912 (not c!465694)) b!2874859))

(declare-fun m!3292663 () Bool)

(assert (=> b!2874859 m!3292663))

(declare-fun m!3292665 () Bool)

(assert (=> b!2874859 m!3292665))

(assert (=> d!830846 d!830912))

(declare-fun d!830914 () Bool)

(declare-fun c!465695 () Bool)

(assert (=> d!830914 (= c!465695 ((_ is Nil!34390) (v!34539 lt!1018491)))))

(declare-fun e!1819309 () (InoxSet C!17664))

(assert (=> d!830914 (= (content!4704 (v!34539 lt!1018491)) e!1819309)))

(declare-fun b!2874860 () Bool)

(assert (=> b!2874860 (= e!1819309 ((as const (Array C!17664 Bool)) false))))

(declare-fun b!2874861 () Bool)

(assert (=> b!2874861 (= e!1819309 ((_ map or) (store ((as const (Array C!17664 Bool)) false) (h!39810 (v!34539 lt!1018491)) true) (content!4704 (t!233557 (v!34539 lt!1018491)))))))

(assert (= (and d!830914 c!465695) b!2874860))

(assert (= (and d!830914 (not c!465695)) b!2874861))

(declare-fun m!3292667 () Bool)

(assert (=> b!2874861 m!3292667))

(declare-fun m!3292669 () Bool)

(assert (=> b!2874861 m!3292669))

(assert (=> d!830846 d!830914))

(declare-fun d!830916 () Bool)

(declare-fun c!465696 () Bool)

(assert (=> d!830916 (= c!465696 ((_ is Nil!34390) (v!34539 lt!1018489)))))

(declare-fun e!1819310 () (InoxSet C!17664))

(assert (=> d!830916 (= (content!4704 (v!34539 lt!1018489)) e!1819310)))

(declare-fun b!2874862 () Bool)

(assert (=> b!2874862 (= e!1819310 ((as const (Array C!17664 Bool)) false))))

(declare-fun b!2874863 () Bool)

(assert (=> b!2874863 (= e!1819310 ((_ map or) (store ((as const (Array C!17664 Bool)) false) (h!39810 (v!34539 lt!1018489)) true) (content!4704 (t!233557 (v!34539 lt!1018489)))))))

(assert (= (and d!830916 c!465696) b!2874862))

(assert (= (and d!830916 (not c!465696)) b!2874863))

(declare-fun m!3292671 () Bool)

(assert (=> b!2874863 m!3292671))

(declare-fun m!3292673 () Bool)

(assert (=> b!2874863 m!3292673))

(assert (=> d!830846 d!830916))

(declare-fun d!830918 () Bool)

(declare-fun res!1192302 () Bool)

(declare-fun e!1819311 () Bool)

(assert (=> d!830918 (=> res!1192302 e!1819311)))

(assert (=> d!830918 (= res!1192302 ((_ is Nil!34391) lt!1018519))))

(assert (=> d!830918 (= (forall!7085 lt!1018519 lambda!107216) e!1819311)))

(declare-fun b!2874864 () Bool)

(declare-fun e!1819312 () Bool)

(assert (=> b!2874864 (= e!1819311 e!1819312)))

(declare-fun res!1192303 () Bool)

(assert (=> b!2874864 (=> (not res!1192303) (not e!1819312))))

(assert (=> b!2874864 (= res!1192303 (dynLambda!14317 lambda!107216 (h!39811 lt!1018519)))))

(declare-fun b!2874865 () Bool)

(assert (=> b!2874865 (= e!1819312 (forall!7085 (t!233558 lt!1018519) lambda!107216))))

(assert (= (and d!830918 (not res!1192302)) b!2874864))

(assert (= (and b!2874864 res!1192303) b!2874865))

(declare-fun b_lambda!86101 () Bool)

(assert (=> (not b_lambda!86101) (not b!2874864)))

(declare-fun m!3292675 () Bool)

(assert (=> b!2874864 m!3292675))

(declare-fun m!3292677 () Bool)

(assert (=> b!2874865 m!3292677))

(assert (=> d!830756 d!830918))

(declare-fun d!830920 () Bool)

(declare-fun res!1192304 () Bool)

(declare-fun e!1819313 () Bool)

(assert (=> d!830920 (=> res!1192304 e!1819313)))

(assert (=> d!830920 (= res!1192304 ((_ is Nil!34392) res!1192228))))

(assert (=> d!830920 (= (noDuplicate!581 res!1192228) e!1819313)))

(declare-fun b!2874866 () Bool)

(declare-fun e!1819314 () Bool)

(assert (=> b!2874866 (= e!1819313 e!1819314)))

(declare-fun res!1192305 () Bool)

(assert (=> b!2874866 (=> (not res!1192305) (not e!1819314))))

(assert (=> b!2874866 (= res!1192305 (not (contains!6127 (t!233559 res!1192228) (h!39812 res!1192228))))))

(declare-fun b!2874867 () Bool)

(assert (=> b!2874867 (= e!1819314 (noDuplicate!581 (t!233559 res!1192228)))))

(assert (= (and d!830920 (not res!1192304)) b!2874866))

(assert (= (and b!2874866 res!1192305) b!2874867))

(declare-fun m!3292679 () Bool)

(assert (=> b!2874866 m!3292679))

(declare-fun m!3292681 () Bool)

(assert (=> b!2874867 m!3292681))

(assert (=> d!830788 d!830920))

(assert (=> b!2874615 d!830784))

(declare-fun bm!185937 () Bool)

(declare-fun call!185942 () Bool)

(assert (=> bm!185937 (= call!185942 (isEmpty!18722 (tail!4571 (tail!4571 (get!10338 lt!1018432)))))))

(declare-fun d!830922 () Bool)

(declare-fun e!1819316 () Bool)

(assert (=> d!830922 e!1819316))

(declare-fun c!465699 () Bool)

(assert (=> d!830922 (= c!465699 ((_ is EmptyExpr!8741) (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432))))))))

(declare-fun lt!1018569 () Bool)

(declare-fun e!1819319 () Bool)

(assert (=> d!830922 (= lt!1018569 e!1819319)))

(declare-fun c!465698 () Bool)

(assert (=> d!830922 (= c!465698 (isEmpty!18722 (tail!4571 (tail!4571 (get!10338 lt!1018432)))))))

(assert (=> d!830922 (validRegex!3519 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432)))))))

(assert (=> d!830922 (= (matchR!3741 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432)))) (tail!4571 (tail!4571 (get!10338 lt!1018432)))) lt!1018569)))

(declare-fun b!2874868 () Bool)

(declare-fun e!1819315 () Bool)

(assert (=> b!2874868 (= e!1819315 (not (= (head!6346 (tail!4571 (tail!4571 (get!10338 lt!1018432)))) (c!465376 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432))))))))))

(declare-fun b!2874869 () Bool)

(declare-fun res!1192310 () Bool)

(declare-fun e!1819320 () Bool)

(assert (=> b!2874869 (=> (not res!1192310) (not e!1819320))))

(assert (=> b!2874869 (= res!1192310 (isEmpty!18722 (tail!4571 (tail!4571 (tail!4571 (get!10338 lt!1018432))))))))

(declare-fun b!2874870 () Bool)

(declare-fun e!1819318 () Bool)

(assert (=> b!2874870 (= e!1819318 e!1819315)))

(declare-fun res!1192311 () Bool)

(assert (=> b!2874870 (=> res!1192311 e!1819315)))

(assert (=> b!2874870 (= res!1192311 call!185942)))

(declare-fun b!2874871 () Bool)

(declare-fun e!1819321 () Bool)

(assert (=> b!2874871 (= e!1819321 (not lt!1018569))))

(declare-fun b!2874872 () Bool)

(declare-fun res!1192312 () Bool)

(assert (=> b!2874872 (=> res!1192312 e!1819315)))

(assert (=> b!2874872 (= res!1192312 (not (isEmpty!18722 (tail!4571 (tail!4571 (tail!4571 (get!10338 lt!1018432)))))))))

(declare-fun b!2874873 () Bool)

(declare-fun res!1192307 () Bool)

(declare-fun e!1819317 () Bool)

(assert (=> b!2874873 (=> res!1192307 e!1819317)))

(assert (=> b!2874873 (= res!1192307 (not ((_ is ElementMatch!8741) (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432)))))))))

(assert (=> b!2874873 (= e!1819321 e!1819317)))

(declare-fun b!2874874 () Bool)

(declare-fun res!1192306 () Bool)

(assert (=> b!2874874 (=> res!1192306 e!1819317)))

(assert (=> b!2874874 (= res!1192306 e!1819320)))

(declare-fun res!1192313 () Bool)

(assert (=> b!2874874 (=> (not res!1192313) (not e!1819320))))

(assert (=> b!2874874 (= res!1192313 lt!1018569)))

(declare-fun b!2874875 () Bool)

(assert (=> b!2874875 (= e!1819320 (= (head!6346 (tail!4571 (tail!4571 (get!10338 lt!1018432)))) (c!465376 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432)))))))))

(declare-fun b!2874876 () Bool)

(declare-fun res!1192308 () Bool)

(assert (=> b!2874876 (=> (not res!1192308) (not e!1819320))))

(assert (=> b!2874876 (= res!1192308 (not call!185942))))

(declare-fun b!2874877 () Bool)

(assert (=> b!2874877 (= e!1819319 (nullable!2691 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432))))))))

(declare-fun b!2874878 () Bool)

(assert (=> b!2874878 (= e!1819317 e!1819318)))

(declare-fun res!1192309 () Bool)

(assert (=> b!2874878 (=> (not res!1192309) (not e!1819318))))

(assert (=> b!2874878 (= res!1192309 (not lt!1018569))))

(declare-fun b!2874879 () Bool)

(assert (=> b!2874879 (= e!1819316 (= lt!1018569 call!185942))))

(declare-fun b!2874880 () Bool)

(assert (=> b!2874880 (= e!1819319 (matchR!3741 (derivativeStep!2324 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432)))) (head!6346 (tail!4571 (tail!4571 (get!10338 lt!1018432))))) (tail!4571 (tail!4571 (tail!4571 (get!10338 lt!1018432))))))))

(declare-fun b!2874881 () Bool)

(assert (=> b!2874881 (= e!1819316 e!1819321)))

(declare-fun c!465697 () Bool)

(assert (=> b!2874881 (= c!465697 ((_ is EmptyLang!8741) (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432))))))))

(assert (= (and d!830922 c!465698) b!2874877))

(assert (= (and d!830922 (not c!465698)) b!2874880))

(assert (= (and d!830922 c!465699) b!2874879))

(assert (= (and d!830922 (not c!465699)) b!2874881))

(assert (= (and b!2874881 c!465697) b!2874871))

(assert (= (and b!2874881 (not c!465697)) b!2874873))

(assert (= (and b!2874873 (not res!1192307)) b!2874874))

(assert (= (and b!2874874 res!1192313) b!2874876))

(assert (= (and b!2874876 res!1192308) b!2874869))

(assert (= (and b!2874869 res!1192310) b!2874875))

(assert (= (and b!2874874 (not res!1192306)) b!2874878))

(assert (= (and b!2874878 res!1192309) b!2874870))

(assert (= (and b!2874870 (not res!1192311)) b!2874872))

(assert (= (and b!2874872 (not res!1192312)) b!2874868))

(assert (= (or b!2874879 b!2874876 b!2874870) bm!185937))

(assert (=> bm!185937 m!3292171))

(assert (=> bm!185937 m!3292173))

(assert (=> b!2874869 m!3292171))

(declare-fun m!3292683 () Bool)

(assert (=> b!2874869 m!3292683))

(assert (=> b!2874869 m!3292683))

(declare-fun m!3292685 () Bool)

(assert (=> b!2874869 m!3292685))

(assert (=> d!830922 m!3292171))

(assert (=> d!830922 m!3292173))

(assert (=> d!830922 m!3292179))

(declare-fun m!3292687 () Bool)

(assert (=> d!830922 m!3292687))

(assert (=> b!2874875 m!3292171))

(declare-fun m!3292689 () Bool)

(assert (=> b!2874875 m!3292689))

(assert (=> b!2874880 m!3292171))

(assert (=> b!2874880 m!3292689))

(assert (=> b!2874880 m!3292179))

(assert (=> b!2874880 m!3292689))

(declare-fun m!3292691 () Bool)

(assert (=> b!2874880 m!3292691))

(assert (=> b!2874880 m!3292171))

(assert (=> b!2874880 m!3292683))

(assert (=> b!2874880 m!3292691))

(assert (=> b!2874880 m!3292683))

(declare-fun m!3292693 () Bool)

(assert (=> b!2874880 m!3292693))

(assert (=> b!2874872 m!3292171))

(assert (=> b!2874872 m!3292683))

(assert (=> b!2874872 m!3292683))

(assert (=> b!2874872 m!3292685))

(assert (=> b!2874877 m!3292179))

(declare-fun m!3292695 () Bool)

(assert (=> b!2874877 m!3292695))

(assert (=> b!2874868 m!3292171))

(assert (=> b!2874868 m!3292689))

(assert (=> b!2874272 d!830922))

(declare-fun b!2874882 () Bool)

(declare-fun e!1819322 () Regex!8741)

(declare-fun e!1819323 () Regex!8741)

(assert (=> b!2874882 (= e!1819322 e!1819323)))

(declare-fun c!465701 () Bool)

(assert (=> b!2874882 (= c!465701 ((_ is Star!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(declare-fun call!185945 () Regex!8741)

(declare-fun e!1819324 () Regex!8741)

(declare-fun call!185944 () Regex!8741)

(declare-fun b!2874883 () Bool)

(assert (=> b!2874883 (= e!1819324 (Union!8741 (Concat!14062 call!185944 (regTwo!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))) call!185945))))

(declare-fun b!2874884 () Bool)

(declare-fun c!465703 () Bool)

(assert (=> b!2874884 (= c!465703 ((_ is Union!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(declare-fun e!1819326 () Regex!8741)

(assert (=> b!2874884 (= e!1819326 e!1819322)))

(declare-fun b!2874885 () Bool)

(declare-fun c!465702 () Bool)

(assert (=> b!2874885 (= c!465702 (nullable!2691 (regOne!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))))))

(assert (=> b!2874885 (= e!1819323 e!1819324)))

(declare-fun bm!185938 () Bool)

(declare-fun call!185946 () Regex!8741)

(declare-fun call!185943 () Regex!8741)

(assert (=> bm!185938 (= call!185946 call!185943)))

(declare-fun d!830924 () Bool)

(declare-fun lt!1018570 () Regex!8741)

(assert (=> d!830924 (validRegex!3519 lt!1018570)))

(declare-fun e!1819325 () Regex!8741)

(assert (=> d!830924 (= lt!1018570 e!1819325)))

(declare-fun c!465704 () Bool)

(assert (=> d!830924 (= c!465704 (or ((_ is EmptyExpr!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))) ((_ is EmptyLang!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))))))

(assert (=> d!830924 (validRegex!3519 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))))

(assert (=> d!830924 (= (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))) (head!6346 (tail!4571 (get!10338 lt!1018432)))) lt!1018570)))

(declare-fun b!2874886 () Bool)

(assert (=> b!2874886 (= e!1819325 EmptyLang!8741)))

(declare-fun b!2874887 () Bool)

(assert (=> b!2874887 (= e!1819326 (ite (= (head!6346 (tail!4571 (get!10338 lt!1018432))) (c!465376 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))) EmptyExpr!8741 EmptyLang!8741))))

(declare-fun b!2874888 () Bool)

(assert (=> b!2874888 (= e!1819325 e!1819326)))

(declare-fun c!465700 () Bool)

(assert (=> b!2874888 (= c!465700 ((_ is ElementMatch!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(declare-fun b!2874889 () Bool)

(assert (=> b!2874889 (= e!1819323 (Concat!14062 call!185946 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(declare-fun bm!185939 () Bool)

(assert (=> bm!185939 (= call!185945 (derivativeStep!2324 (ite c!465703 (regOne!17995 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))) (regTwo!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))) (head!6346 (tail!4571 (get!10338 lt!1018432)))))))

(declare-fun b!2874890 () Bool)

(assert (=> b!2874890 (= e!1819322 (Union!8741 call!185945 call!185943))))

(declare-fun b!2874891 () Bool)

(assert (=> b!2874891 (= e!1819324 (Union!8741 (Concat!14062 call!185944 (regTwo!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432))))) EmptyLang!8741))))

(declare-fun bm!185940 () Bool)

(assert (=> bm!185940 (= call!185943 (derivativeStep!2324 (ite c!465703 (regTwo!17995 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))) (ite c!465701 (reg!9070 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))) (regOne!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))) (head!6346 (tail!4571 (get!10338 lt!1018432)))))))

(declare-fun bm!185941 () Bool)

(assert (=> bm!185941 (= call!185944 call!185946)))

(assert (= (and d!830924 c!465704) b!2874886))

(assert (= (and d!830924 (not c!465704)) b!2874888))

(assert (= (and b!2874888 c!465700) b!2874887))

(assert (= (and b!2874888 (not c!465700)) b!2874884))

(assert (= (and b!2874884 c!465703) b!2874890))

(assert (= (and b!2874884 (not c!465703)) b!2874882))

(assert (= (and b!2874882 c!465701) b!2874889))

(assert (= (and b!2874882 (not c!465701)) b!2874885))

(assert (= (and b!2874885 c!465702) b!2874883))

(assert (= (and b!2874885 (not c!465702)) b!2874891))

(assert (= (or b!2874883 b!2874891) bm!185941))

(assert (= (or b!2874889 bm!185941) bm!185938))

(assert (= (or b!2874890 b!2874883) bm!185939))

(assert (= (or b!2874890 bm!185938) bm!185940))

(declare-fun m!3292697 () Bool)

(assert (=> b!2874885 m!3292697))

(declare-fun m!3292699 () Bool)

(assert (=> d!830924 m!3292699))

(assert (=> d!830924 m!3292071))

(assert (=> d!830924 m!3292175))

(assert (=> bm!185939 m!3292177))

(declare-fun m!3292701 () Bool)

(assert (=> bm!185939 m!3292701))

(assert (=> bm!185940 m!3292177))

(declare-fun m!3292703 () Bool)

(assert (=> bm!185940 m!3292703))

(assert (=> b!2874272 d!830924))

(declare-fun d!830926 () Bool)

(assert (=> d!830926 (= (head!6346 (tail!4571 (get!10338 lt!1018432))) (h!39810 (tail!4571 (get!10338 lt!1018432))))))

(assert (=> b!2874272 d!830926))

(declare-fun d!830928 () Bool)

(assert (=> d!830928 (= (tail!4571 (tail!4571 (get!10338 lt!1018432))) (t!233557 (tail!4571 (get!10338 lt!1018432))))))

(assert (=> b!2874272 d!830928))

(declare-fun d!830930 () Bool)

(assert (=> d!830930 (= (isEmpty!18722 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))) ((_ is Nil!34390) (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))

(assert (=> b!2874307 d!830930))

(declare-fun d!830932 () Bool)

(assert (=> d!830932 (= (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))) (t!233557 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> b!2874307 d!830932))

(declare-fun d!830934 () Bool)

(assert (=> d!830934 (= (isEmpty!18722 (tail!4571 (tail!4571 (v!34539 lt!1018432)))) ((_ is Nil!34390) (tail!4571 (tail!4571 (v!34539 lt!1018432)))))))

(assert (=> b!2874644 d!830934))

(assert (=> b!2874644 d!830898))

(declare-fun d!830936 () Bool)

(declare-fun res!1192314 () Bool)

(declare-fun e!1819327 () Bool)

(assert (=> d!830936 (=> res!1192314 e!1819327)))

(assert (=> d!830936 (= res!1192314 ((_ is Nil!34391) (exprs!3201 lt!1018434)))))

(assert (=> d!830936 (= (forall!7085 (exprs!3201 lt!1018434) lambda!107233) e!1819327)))

(declare-fun b!2874892 () Bool)

(declare-fun e!1819328 () Bool)

(assert (=> b!2874892 (= e!1819327 e!1819328)))

(declare-fun res!1192315 () Bool)

(assert (=> b!2874892 (=> (not res!1192315) (not e!1819328))))

(assert (=> b!2874892 (= res!1192315 (dynLambda!14317 lambda!107233 (h!39811 (exprs!3201 lt!1018434))))))

(declare-fun b!2874893 () Bool)

(assert (=> b!2874893 (= e!1819328 (forall!7085 (t!233558 (exprs!3201 lt!1018434)) lambda!107233))))

(assert (= (and d!830936 (not res!1192314)) b!2874892))

(assert (= (and b!2874892 res!1192315) b!2874893))

(declare-fun b_lambda!86103 () Bool)

(assert (=> (not b_lambda!86103) (not b!2874892)))

(declare-fun m!3292705 () Bool)

(assert (=> b!2874892 m!3292705))

(declare-fun m!3292707 () Bool)

(assert (=> b!2874893 m!3292707))

(assert (=> d!830844 d!830936))

(assert (=> b!2874299 d!830900))

(declare-fun d!830938 () Bool)

(assert (=> d!830938 (= (isEmpty!18722 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))) ((_ is Nil!34390) (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> bm!185867 d!830938))

(declare-fun e!1819330 () Bool)

(declare-fun lt!1018571 () List!34514)

(declare-fun b!2874897 () Bool)

(assert (=> b!2874897 (= e!1819330 (or (not (= (v!34539 lt!1018503) Nil!34390)) (= lt!1018571 (t!233557 (v!34539 lt!1018502)))))))

(declare-fun d!830940 () Bool)

(assert (=> d!830940 e!1819330))

(declare-fun res!1192316 () Bool)

(assert (=> d!830940 (=> (not res!1192316) (not e!1819330))))

(assert (=> d!830940 (= res!1192316 (= (content!4704 lt!1018571) ((_ map or) (content!4704 (t!233557 (v!34539 lt!1018502))) (content!4704 (v!34539 lt!1018503)))))))

(declare-fun e!1819329 () List!34514)

(assert (=> d!830940 (= lt!1018571 e!1819329)))

(declare-fun c!465705 () Bool)

(assert (=> d!830940 (= c!465705 ((_ is Nil!34390) (t!233557 (v!34539 lt!1018502))))))

(assert (=> d!830940 (= (++!8177 (t!233557 (v!34539 lt!1018502)) (v!34539 lt!1018503)) lt!1018571)))

(declare-fun b!2874896 () Bool)

(declare-fun res!1192317 () Bool)

(assert (=> b!2874896 (=> (not res!1192317) (not e!1819330))))

(assert (=> b!2874896 (= res!1192317 (= (size!26323 lt!1018571) (+ (size!26323 (t!233557 (v!34539 lt!1018502))) (size!26323 (v!34539 lt!1018503)))))))

(declare-fun b!2874895 () Bool)

(assert (=> b!2874895 (= e!1819329 (Cons!34390 (h!39810 (t!233557 (v!34539 lt!1018502))) (++!8177 (t!233557 (t!233557 (v!34539 lt!1018502))) (v!34539 lt!1018503))))))

(declare-fun b!2874894 () Bool)

(assert (=> b!2874894 (= e!1819329 (v!34539 lt!1018503))))

(assert (= (and d!830940 c!465705) b!2874894))

(assert (= (and d!830940 (not c!465705)) b!2874895))

(assert (= (and d!830940 res!1192316) b!2874896))

(assert (= (and b!2874896 res!1192317) b!2874897))

(declare-fun m!3292709 () Bool)

(assert (=> d!830940 m!3292709))

(declare-fun m!3292711 () Bool)

(assert (=> d!830940 m!3292711))

(assert (=> d!830940 m!3292335))

(declare-fun m!3292713 () Bool)

(assert (=> b!2874896 m!3292713))

(declare-fun m!3292715 () Bool)

(assert (=> b!2874896 m!3292715))

(assert (=> b!2874896 m!3292341))

(declare-fun m!3292717 () Bool)

(assert (=> b!2874895 m!3292717))

(assert (=> b!2874505 d!830940))

(assert (=> d!830720 d!830938))

(assert (=> d!830720 d!830698))

(declare-fun bm!185942 () Bool)

(declare-fun call!185949 () Bool)

(declare-fun c!465706 () Bool)

(declare-fun c!465707 () Bool)

(assert (=> bm!185942 (= call!185949 (validRegex!3519 (ite c!465707 (reg!9070 lt!1018507) (ite c!465706 (regTwo!17995 lt!1018507) (regOne!17994 lt!1018507)))))))

(declare-fun b!2874898 () Bool)

(declare-fun res!1192318 () Bool)

(declare-fun e!1819333 () Bool)

(assert (=> b!2874898 (=> res!1192318 e!1819333)))

(assert (=> b!2874898 (= res!1192318 (not ((_ is Concat!14062) lt!1018507)))))

(declare-fun e!1819332 () Bool)

(assert (=> b!2874898 (= e!1819332 e!1819333)))

(declare-fun bm!185943 () Bool)

(declare-fun call!185947 () Bool)

(assert (=> bm!185943 (= call!185947 call!185949)))

(declare-fun bm!185944 () Bool)

(declare-fun call!185948 () Bool)

(assert (=> bm!185944 (= call!185948 (validRegex!3519 (ite c!465706 (regOne!17995 lt!1018507) (regTwo!17994 lt!1018507))))))

(declare-fun b!2874899 () Bool)

(declare-fun e!1819337 () Bool)

(assert (=> b!2874899 (= e!1819337 call!185947)))

(declare-fun b!2874900 () Bool)

(declare-fun e!1819336 () Bool)

(assert (=> b!2874900 (= e!1819336 call!185948)))

(declare-fun b!2874901 () Bool)

(declare-fun res!1192319 () Bool)

(assert (=> b!2874901 (=> (not res!1192319) (not e!1819337))))

(assert (=> b!2874901 (= res!1192319 call!185948)))

(assert (=> b!2874901 (= e!1819332 e!1819337)))

(declare-fun b!2874902 () Bool)

(assert (=> b!2874902 (= e!1819333 e!1819336)))

(declare-fun res!1192322 () Bool)

(assert (=> b!2874902 (=> (not res!1192322) (not e!1819336))))

(assert (=> b!2874902 (= res!1192322 call!185947)))

(declare-fun b!2874903 () Bool)

(declare-fun e!1819331 () Bool)

(declare-fun e!1819335 () Bool)

(assert (=> b!2874903 (= e!1819331 e!1819335)))

(declare-fun res!1192321 () Bool)

(assert (=> b!2874903 (= res!1192321 (not (nullable!2691 (reg!9070 lt!1018507))))))

(assert (=> b!2874903 (=> (not res!1192321) (not e!1819335))))

(declare-fun d!830942 () Bool)

(declare-fun res!1192320 () Bool)

(declare-fun e!1819334 () Bool)

(assert (=> d!830942 (=> res!1192320 e!1819334)))

(assert (=> d!830942 (= res!1192320 ((_ is ElementMatch!8741) lt!1018507))))

(assert (=> d!830942 (= (validRegex!3519 lt!1018507) e!1819334)))

(declare-fun b!2874904 () Bool)

(assert (=> b!2874904 (= e!1819331 e!1819332)))

(assert (=> b!2874904 (= c!465706 ((_ is Union!8741) lt!1018507))))

(declare-fun b!2874905 () Bool)

(assert (=> b!2874905 (= e!1819335 call!185949)))

(declare-fun b!2874906 () Bool)

(assert (=> b!2874906 (= e!1819334 e!1819331)))

(assert (=> b!2874906 (= c!465707 ((_ is Star!8741) lt!1018507))))

(assert (= (and d!830942 (not res!1192320)) b!2874906))

(assert (= (and b!2874906 c!465707) b!2874903))

(assert (= (and b!2874906 (not c!465707)) b!2874904))

(assert (= (and b!2874903 res!1192321) b!2874905))

(assert (= (and b!2874904 c!465706) b!2874901))

(assert (= (and b!2874904 (not c!465706)) b!2874898))

(assert (= (and b!2874901 res!1192319) b!2874899))

(assert (= (and b!2874898 (not res!1192318)) b!2874902))

(assert (= (and b!2874902 res!1192322) b!2874900))

(assert (= (or b!2874899 b!2874902) bm!185943))

(assert (= (or b!2874901 b!2874900) bm!185944))

(assert (= (or b!2874905 bm!185943) bm!185942))

(declare-fun m!3292719 () Bool)

(assert (=> bm!185942 m!3292719))

(declare-fun m!3292721 () Bool)

(assert (=> bm!185944 m!3292721))

(declare-fun m!3292723 () Bool)

(assert (=> b!2874903 m!3292723))

(assert (=> d!830708 d!830942))

(assert (=> d!830708 d!830698))

(declare-fun d!830944 () Bool)

(assert (=> d!830944 (= (head!6347 (unfocusZipperList!68 lt!1018429)) (h!39811 (unfocusZipperList!68 lt!1018429)))))

(assert (=> b!2874420 d!830944))

(assert (=> b!2874640 d!830896))

(declare-fun c!465708 () Bool)

(declare-fun c!465709 () Bool)

(declare-fun call!185952 () Bool)

(declare-fun bm!185945 () Bool)

(assert (=> bm!185945 (= call!185952 (validRegex!3519 (ite c!465709 (reg!9070 (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))) (ite c!465708 (regTwo!17995 (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))) (regOne!17994 (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))))

(declare-fun b!2874907 () Bool)

(declare-fun res!1192323 () Bool)

(declare-fun e!1819340 () Bool)

(assert (=> b!2874907 (=> res!1192323 e!1819340)))

(assert (=> b!2874907 (= res!1192323 (not ((_ is Concat!14062) (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun e!1819339 () Bool)

(assert (=> b!2874907 (= e!1819339 e!1819340)))

(declare-fun bm!185946 () Bool)

(declare-fun call!185950 () Bool)

(assert (=> bm!185946 (= call!185950 call!185952)))

(declare-fun call!185951 () Bool)

(declare-fun bm!185947 () Bool)

(assert (=> bm!185947 (= call!185951 (validRegex!3519 (ite c!465708 (regOne!17995 (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))) (regTwo!17994 (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))))))

(declare-fun b!2874908 () Bool)

(declare-fun e!1819344 () Bool)

(assert (=> b!2874908 (= e!1819344 call!185950)))

(declare-fun b!2874909 () Bool)

(declare-fun e!1819343 () Bool)

(assert (=> b!2874909 (= e!1819343 call!185951)))

(declare-fun b!2874910 () Bool)

(declare-fun res!1192324 () Bool)

(assert (=> b!2874910 (=> (not res!1192324) (not e!1819344))))

(assert (=> b!2874910 (= res!1192324 call!185951)))

(assert (=> b!2874910 (= e!1819339 e!1819344)))

(declare-fun b!2874911 () Bool)

(assert (=> b!2874911 (= e!1819340 e!1819343)))

(declare-fun res!1192327 () Bool)

(assert (=> b!2874911 (=> (not res!1192327) (not e!1819343))))

(assert (=> b!2874911 (= res!1192327 call!185950)))

(declare-fun b!2874912 () Bool)

(declare-fun e!1819338 () Bool)

(declare-fun e!1819342 () Bool)

(assert (=> b!2874912 (= e!1819338 e!1819342)))

(declare-fun res!1192326 () Bool)

(assert (=> b!2874912 (= res!1192326 (not (nullable!2691 (reg!9070 (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))))))

(assert (=> b!2874912 (=> (not res!1192326) (not e!1819342))))

(declare-fun d!830946 () Bool)

(declare-fun res!1192325 () Bool)

(declare-fun e!1819341 () Bool)

(assert (=> d!830946 (=> res!1192325 e!1819341)))

(assert (=> d!830946 (= res!1192325 ((_ is ElementMatch!8741) (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))))

(assert (=> d!830946 (= (validRegex!3519 (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))) e!1819341)))

(declare-fun b!2874913 () Bool)

(assert (=> b!2874913 (= e!1819338 e!1819339)))

(assert (=> b!2874913 (= c!465708 ((_ is Union!8741) (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))))

(declare-fun b!2874914 () Bool)

(assert (=> b!2874914 (= e!1819342 call!185952)))

(declare-fun b!2874915 () Bool)

(assert (=> b!2874915 (= e!1819341 e!1819338)))

(assert (=> b!2874915 (= c!465709 ((_ is Star!8741) (ite c!465617 (regOne!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))))

(assert (= (and d!830946 (not res!1192325)) b!2874915))

(assert (= (and b!2874915 c!465709) b!2874912))

(assert (= (and b!2874915 (not c!465709)) b!2874913))

(assert (= (and b!2874912 res!1192326) b!2874914))

(assert (= (and b!2874913 c!465708) b!2874910))

(assert (= (and b!2874913 (not c!465708)) b!2874907))

(assert (= (and b!2874910 res!1192324) b!2874908))

(assert (= (and b!2874907 (not res!1192323)) b!2874911))

(assert (= (and b!2874911 res!1192327) b!2874909))

(assert (= (or b!2874908 b!2874911) bm!185946))

(assert (= (or b!2874910 b!2874909) bm!185947))

(assert (= (or b!2874914 bm!185946) bm!185945))

(declare-fun m!3292725 () Bool)

(assert (=> bm!185945 m!3292725))

(declare-fun m!3292727 () Bool)

(assert (=> bm!185947 m!3292727))

(declare-fun m!3292729 () Bool)

(assert (=> b!2874912 m!3292729))

(assert (=> bm!185903 d!830946))

(declare-fun d!830948 () Bool)

(assert (=> d!830948 (= (nullable!2691 (reg!9070 lt!1018494)) (nullableFct!818 (reg!9070 lt!1018494)))))

(declare-fun bs!522471 () Bool)

(assert (= bs!522471 d!830948))

(declare-fun m!3292731 () Bool)

(assert (=> bs!522471 m!3292731))

(assert (=> b!2874349 d!830948))

(declare-fun d!830950 () Bool)

(assert (=> d!830950 (= (isEmpty!18725 (unfocusZipperList!68 lt!1018429)) ((_ is Nil!34391) (unfocusZipperList!68 lt!1018429)))))

(assert (=> b!2874418 d!830950))

(declare-fun b!2874916 () Bool)

(declare-fun e!1819345 () Regex!8741)

(declare-fun e!1819346 () Regex!8741)

(assert (=> b!2874916 (= e!1819345 e!1819346)))

(declare-fun c!465711 () Bool)

(assert (=> b!2874916 (= c!465711 ((_ is Star!8741) (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun call!185955 () Regex!8741)

(declare-fun call!185954 () Regex!8741)

(declare-fun e!1819347 () Regex!8741)

(declare-fun b!2874917 () Bool)

(assert (=> b!2874917 (= e!1819347 (Union!8741 (Concat!14062 call!185954 (regTwo!17994 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) call!185955))))

(declare-fun b!2874918 () Bool)

(declare-fun c!465713 () Bool)

(assert (=> b!2874918 (= c!465713 ((_ is Union!8741) (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun e!1819349 () Regex!8741)

(assert (=> b!2874918 (= e!1819349 e!1819345)))

(declare-fun b!2874919 () Bool)

(declare-fun c!465712 () Bool)

(assert (=> b!2874919 (= c!465712 (nullable!2691 (regOne!17994 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2874919 (= e!1819346 e!1819347)))

(declare-fun bm!185948 () Bool)

(declare-fun call!185956 () Regex!8741)

(declare-fun call!185953 () Regex!8741)

(assert (=> bm!185948 (= call!185956 call!185953)))

(declare-fun d!830952 () Bool)

(declare-fun lt!1018572 () Regex!8741)

(assert (=> d!830952 (validRegex!3519 lt!1018572)))

(declare-fun e!1819348 () Regex!8741)

(assert (=> d!830952 (= lt!1018572 e!1819348)))

(declare-fun c!465714 () Bool)

(assert (=> d!830952 (= c!465714 (or ((_ is EmptyExpr!8741) (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) ((_ is EmptyLang!8741) (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> d!830952 (validRegex!3519 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> d!830952 (= (derivativeStep!2324 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (head!6346 (v!34539 lt!1018432))) lt!1018572)))

(declare-fun b!2874920 () Bool)

(assert (=> b!2874920 (= e!1819348 EmptyLang!8741)))

(declare-fun b!2874921 () Bool)

(assert (=> b!2874921 (= e!1819349 (ite (= (head!6346 (v!34539 lt!1018432)) (c!465376 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) EmptyExpr!8741 EmptyLang!8741))))

(declare-fun b!2874922 () Bool)

(assert (=> b!2874922 (= e!1819348 e!1819349)))

(declare-fun c!465710 () Bool)

(assert (=> b!2874922 (= c!465710 ((_ is ElementMatch!8741) (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun b!2874923 () Bool)

(assert (=> b!2874923 (= e!1819346 (Concat!14062 call!185956 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun bm!185949 () Bool)

(assert (=> bm!185949 (= call!185955 (derivativeStep!2324 (ite c!465713 (regOne!17995 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) (head!6346 (v!34539 lt!1018432))))))

(declare-fun b!2874924 () Bool)

(assert (=> b!2874924 (= e!1819345 (Union!8741 call!185955 call!185953))))

(declare-fun b!2874925 () Bool)

(assert (=> b!2874925 (= e!1819347 (Union!8741 (Concat!14062 call!185954 (regTwo!17994 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) EmptyLang!8741))))

(declare-fun bm!185950 () Bool)

(assert (=> bm!185950 (= call!185953 (derivativeStep!2324 (ite c!465713 (regTwo!17995 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465711 (reg!9070 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465642 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465640 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))) (head!6346 (v!34539 lt!1018432))))))

(declare-fun bm!185951 () Bool)

(assert (=> bm!185951 (= call!185954 call!185956)))

(assert (= (and d!830952 c!465714) b!2874920))

(assert (= (and d!830952 (not c!465714)) b!2874922))

(assert (= (and b!2874922 c!465710) b!2874921))

(assert (= (and b!2874922 (not c!465710)) b!2874918))

(assert (= (and b!2874918 c!465713) b!2874924))

(assert (= (and b!2874918 (not c!465713)) b!2874916))

(assert (= (and b!2874916 c!465711) b!2874923))

(assert (= (and b!2874916 (not c!465711)) b!2874919))

(assert (= (and b!2874919 c!465712) b!2874917))

(assert (= (and b!2874919 (not c!465712)) b!2874925))

(assert (= (or b!2874917 b!2874925) bm!185951))

(assert (= (or b!2874923 bm!185951) bm!185948))

(assert (= (or b!2874924 b!2874917) bm!185949))

(assert (= (or b!2874924 bm!185948) bm!185950))

(declare-fun m!3292733 () Bool)

(assert (=> b!2874919 m!3292733))

(declare-fun m!3292735 () Bool)

(assert (=> d!830952 m!3292735))

(declare-fun m!3292737 () Bool)

(assert (=> d!830952 m!3292737))

(assert (=> bm!185949 m!3292047))

(declare-fun m!3292739 () Bool)

(assert (=> bm!185949 m!3292739))

(assert (=> bm!185950 m!3292047))

(declare-fun m!3292741 () Bool)

(assert (=> bm!185950 m!3292741))

(assert (=> bm!185913 d!830952))

(declare-fun d!830954 () Bool)

(assert (=> d!830954 (= (isEmpty!18722 (tail!4571 (tail!4571 (get!10338 lt!1018432)))) ((_ is Nil!34390) (tail!4571 (tail!4571 (get!10338 lt!1018432)))))))

(assert (=> b!2874264 d!830954))

(assert (=> b!2874264 d!830928))

(assert (=> bs!522434 d!830698))

(declare-fun d!830956 () Bool)

(declare-fun lt!1018575 () Int)

(assert (=> d!830956 (>= lt!1018575 0)))

(declare-fun e!1819352 () Int)

(assert (=> d!830956 (= lt!1018575 e!1819352)))

(declare-fun c!465717 () Bool)

(assert (=> d!830956 (= c!465717 ((_ is Nil!34390) lt!1018549))))

(assert (=> d!830956 (= (size!26323 lt!1018549) lt!1018575)))

(declare-fun b!2874930 () Bool)

(assert (=> b!2874930 (= e!1819352 0)))

(declare-fun b!2874931 () Bool)

(assert (=> b!2874931 (= e!1819352 (+ 1 (size!26323 (t!233557 lt!1018549))))))

(assert (= (and d!830956 c!465717) b!2874930))

(assert (= (and d!830956 (not c!465717)) b!2874931))

(declare-fun m!3292743 () Bool)

(assert (=> b!2874931 m!3292743))

(assert (=> b!2874686 d!830956))

(declare-fun d!830958 () Bool)

(declare-fun lt!1018576 () Int)

(assert (=> d!830958 (>= lt!1018576 0)))

(declare-fun e!1819353 () Int)

(assert (=> d!830958 (= lt!1018576 e!1819353)))

(declare-fun c!465718 () Bool)

(assert (=> d!830958 (= c!465718 ((_ is Nil!34390) (v!34539 lt!1018491)))))

(assert (=> d!830958 (= (size!26323 (v!34539 lt!1018491)) lt!1018576)))

(declare-fun b!2874932 () Bool)

(assert (=> b!2874932 (= e!1819353 0)))

(declare-fun b!2874933 () Bool)

(assert (=> b!2874933 (= e!1819353 (+ 1 (size!26323 (t!233557 (v!34539 lt!1018491)))))))

(assert (= (and d!830958 c!465718) b!2874932))

(assert (= (and d!830958 (not c!465718)) b!2874933))

(declare-fun m!3292745 () Bool)

(assert (=> b!2874933 m!3292745))

(assert (=> b!2874686 d!830958))

(declare-fun d!830960 () Bool)

(declare-fun lt!1018577 () Int)

(assert (=> d!830960 (>= lt!1018577 0)))

(declare-fun e!1819354 () Int)

(assert (=> d!830960 (= lt!1018577 e!1819354)))

(declare-fun c!465719 () Bool)

(assert (=> d!830960 (= c!465719 ((_ is Nil!34390) (v!34539 lt!1018489)))))

(assert (=> d!830960 (= (size!26323 (v!34539 lt!1018489)) lt!1018577)))

(declare-fun b!2874934 () Bool)

(assert (=> b!2874934 (= e!1819354 0)))

(declare-fun b!2874935 () Bool)

(assert (=> b!2874935 (= e!1819354 (+ 1 (size!26323 (t!233557 (v!34539 lt!1018489)))))))

(assert (= (and d!830960 c!465719) b!2874934))

(assert (= (and d!830960 (not c!465719)) b!2874935))

(declare-fun m!3292747 () Bool)

(assert (=> b!2874935 m!3292747))

(assert (=> b!2874686 d!830960))

(declare-fun d!830962 () Bool)

(assert (=> d!830962 (= (isUnion!153 lt!1018514) ((_ is Union!8741) lt!1018514))))

(assert (=> b!2874416 d!830962))

(assert (=> d!830818 d!830816))

(assert (=> d!830818 d!830828))

(assert (=> d!830818 d!830700))

(declare-fun c!465720 () Bool)

(declare-fun call!185959 () Bool)

(declare-fun bm!185952 () Bool)

(declare-fun c!465721 () Bool)

(assert (=> bm!185952 (= call!185959 (validRegex!3519 (ite c!465721 (reg!9070 (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))) (ite c!465720 (regTwo!17995 (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))) (regOne!17994 (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))))))))

(declare-fun b!2874936 () Bool)

(declare-fun res!1192328 () Bool)

(declare-fun e!1819357 () Bool)

(assert (=> b!2874936 (=> res!1192328 e!1819357)))

(assert (=> b!2874936 (= res!1192328 (not ((_ is Concat!14062) (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))))))

(declare-fun e!1819356 () Bool)

(assert (=> b!2874936 (= e!1819356 e!1819357)))

(declare-fun bm!185953 () Bool)

(declare-fun call!185957 () Bool)

(assert (=> bm!185953 (= call!185957 call!185959)))

(declare-fun bm!185954 () Bool)

(declare-fun call!185958 () Bool)

(assert (=> bm!185954 (= call!185958 (validRegex!3519 (ite c!465720 (regOne!17995 (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))) (regTwo!17994 (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))))

(declare-fun b!2874937 () Bool)

(declare-fun e!1819361 () Bool)

(assert (=> b!2874937 (= e!1819361 call!185957)))

(declare-fun b!2874938 () Bool)

(declare-fun e!1819360 () Bool)

(assert (=> b!2874938 (= e!1819360 call!185958)))

(declare-fun b!2874939 () Bool)

(declare-fun res!1192329 () Bool)

(assert (=> b!2874939 (=> (not res!1192329) (not e!1819361))))

(assert (=> b!2874939 (= res!1192329 call!185958)))

(assert (=> b!2874939 (= e!1819356 e!1819361)))

(declare-fun b!2874940 () Bool)

(assert (=> b!2874940 (= e!1819357 e!1819360)))

(declare-fun res!1192332 () Bool)

(assert (=> b!2874940 (=> (not res!1192332) (not e!1819360))))

(assert (=> b!2874940 (= res!1192332 call!185957)))

(declare-fun b!2874941 () Bool)

(declare-fun e!1819355 () Bool)

(declare-fun e!1819359 () Bool)

(assert (=> b!2874941 (= e!1819355 e!1819359)))

(declare-fun res!1192331 () Bool)

(assert (=> b!2874941 (= res!1192331 (not (nullable!2691 (reg!9070 (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))))

(assert (=> b!2874941 (=> (not res!1192331) (not e!1819359))))

(declare-fun d!830964 () Bool)

(declare-fun res!1192330 () Bool)

(declare-fun e!1819358 () Bool)

(assert (=> d!830964 (=> res!1192330 e!1819358)))

(assert (=> d!830964 (= res!1192330 ((_ is ElementMatch!8741) (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(assert (=> d!830964 (= (validRegex!3519 (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))) e!1819358)))

(declare-fun b!2874942 () Bool)

(assert (=> b!2874942 (= e!1819355 e!1819356)))

(assert (=> b!2874942 (= c!465720 ((_ is Union!8741) (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun b!2874943 () Bool)

(assert (=> b!2874943 (= e!1819359 call!185959)))

(declare-fun b!2874944 () Bool)

(assert (=> b!2874944 (= e!1819358 e!1819355)))

(assert (=> b!2874944 (= c!465721 ((_ is Star!8741) (ite c!465618 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465617 (regTwo!17995 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(assert (= (and d!830964 (not res!1192330)) b!2874944))

(assert (= (and b!2874944 c!465721) b!2874941))

(assert (= (and b!2874944 (not c!465721)) b!2874942))

(assert (= (and b!2874941 res!1192331) b!2874943))

(assert (= (and b!2874942 c!465720) b!2874939))

(assert (= (and b!2874942 (not c!465720)) b!2874936))

(assert (= (and b!2874939 res!1192329) b!2874937))

(assert (= (and b!2874936 (not res!1192328)) b!2874940))

(assert (= (and b!2874940 res!1192332) b!2874938))

(assert (= (or b!2874937 b!2874940) bm!185953))

(assert (= (or b!2874939 b!2874938) bm!185954))

(assert (= (or b!2874943 bm!185953) bm!185952))

(declare-fun m!3292749 () Bool)

(assert (=> bm!185952 m!3292749))

(declare-fun m!3292751 () Bool)

(assert (=> bm!185954 m!3292751))

(declare-fun m!3292753 () Bool)

(assert (=> b!2874941 m!3292753))

(assert (=> bm!185901 d!830964))

(declare-fun bs!522472 () Bool)

(declare-fun d!830966 () Bool)

(assert (= bs!522472 (and d!830966 d!830700)))

(declare-fun lambda!107242 () Int)

(assert (=> bs!522472 (not (= lambda!107242 lambda!107202))))

(declare-fun bs!522473 () Bool)

(assert (= bs!522473 (and d!830966 d!830814)))

(assert (=> bs!522473 (not (= lambda!107242 lambda!107232))))

(declare-fun bs!522474 () Bool)

(assert (= bs!522474 (and d!830966 d!830756)))

(assert (=> bs!522474 (= lambda!107242 lambda!107216)))

(declare-fun bs!522475 () Bool)

(assert (= bs!522475 (and d!830966 d!830888)))

(assert (=> bs!522475 (not (= lambda!107242 lambda!107239))))

(declare-fun bs!522476 () Bool)

(assert (= bs!522476 (and d!830966 d!830744)))

(assert (=> bs!522476 (= lambda!107242 lambda!107211)))

(declare-fun bs!522477 () Bool)

(assert (= bs!522477 (and d!830966 d!830692)))

(assert (=> bs!522477 (= lambda!107242 lambda!107199)))

(declare-fun bs!522478 () Bool)

(assert (= bs!522478 (and d!830966 d!830780)))

(assert (=> bs!522478 (not (= lambda!107242 lambda!107221))))

(declare-fun bs!522479 () Bool)

(assert (= bs!522479 (and d!830966 d!830844)))

(assert (=> bs!522479 (not (= lambda!107242 lambda!107233))))

(declare-fun bs!522480 () Bool)

(assert (= bs!522480 (and d!830966 d!830808)))

(assert (=> bs!522480 (not (= lambda!107242 lambda!107231))))

(declare-fun bs!522481 () Bool)

(assert (= bs!522481 (and d!830966 d!830676)))

(assert (=> bs!522481 (not (= lambda!107242 lambda!107196))))

(declare-fun b!2874965 () Bool)

(declare-fun e!1819375 () Bool)

(assert (=> b!2874965 (= e!1819375 (isEmpty!18725 (t!233558 (exprs!3201 (h!39812 lt!1018429)))))))

(declare-fun b!2874966 () Bool)

(declare-fun e!1819377 () Bool)

(declare-fun e!1819379 () Bool)

(assert (=> b!2874966 (= e!1819377 e!1819379)))

(declare-fun c!465731 () Bool)

(assert (=> b!2874966 (= c!465731 (isEmpty!18725 (exprs!3201 (h!39812 lt!1018429))))))

(declare-fun b!2874967 () Bool)

(declare-fun e!1819376 () Bool)

(declare-fun lt!1018580 () Regex!8741)

(assert (=> b!2874967 (= e!1819376 (= lt!1018580 (head!6347 (exprs!3201 (h!39812 lt!1018429)))))))

(declare-fun b!2874968 () Bool)

(assert (=> b!2874968 (= e!1819379 e!1819376)))

(declare-fun c!465730 () Bool)

(assert (=> b!2874968 (= c!465730 (isEmpty!18725 (tail!4572 (exprs!3201 (h!39812 lt!1018429)))))))

(declare-fun b!2874969 () Bool)

(declare-fun e!1819374 () Regex!8741)

(assert (=> b!2874969 (= e!1819374 (Concat!14062 (h!39811 (exprs!3201 (h!39812 lt!1018429))) (generalisedConcat!339 (t!233558 (exprs!3201 (h!39812 lt!1018429))))))))

(declare-fun b!2874970 () Bool)

(declare-fun e!1819378 () Regex!8741)

(assert (=> b!2874970 (= e!1819378 (h!39811 (exprs!3201 (h!39812 lt!1018429))))))

(declare-fun b!2874971 () Bool)

(declare-fun isConcat!239 (Regex!8741) Bool)

(assert (=> b!2874971 (= e!1819376 (isConcat!239 lt!1018580))))

(declare-fun b!2874972 () Bool)

(assert (=> b!2874972 (= e!1819378 e!1819374)))

(declare-fun c!465732 () Bool)

(assert (=> b!2874972 (= c!465732 ((_ is Cons!34391) (exprs!3201 (h!39812 lt!1018429))))))

(assert (=> d!830966 e!1819377))

(declare-fun res!1192338 () Bool)

(assert (=> d!830966 (=> (not res!1192338) (not e!1819377))))

(assert (=> d!830966 (= res!1192338 (validRegex!3519 lt!1018580))))

(assert (=> d!830966 (= lt!1018580 e!1819378)))

(declare-fun c!465733 () Bool)

(assert (=> d!830966 (= c!465733 e!1819375)))

(declare-fun res!1192337 () Bool)

(assert (=> d!830966 (=> (not res!1192337) (not e!1819375))))

(assert (=> d!830966 (= res!1192337 ((_ is Cons!34391) (exprs!3201 (h!39812 lt!1018429))))))

(assert (=> d!830966 (forall!7085 (exprs!3201 (h!39812 lt!1018429)) lambda!107242)))

(assert (=> d!830966 (= (generalisedConcat!339 (exprs!3201 (h!39812 lt!1018429))) lt!1018580)))

(declare-fun b!2874973 () Bool)

(assert (=> b!2874973 (= e!1819374 EmptyExpr!8741)))

(declare-fun b!2874974 () Bool)

(declare-fun isEmptyExpr!239 (Regex!8741) Bool)

(assert (=> b!2874974 (= e!1819379 (isEmptyExpr!239 lt!1018580))))

(assert (= (and d!830966 res!1192337) b!2874965))

(assert (= (and d!830966 c!465733) b!2874970))

(assert (= (and d!830966 (not c!465733)) b!2874972))

(assert (= (and b!2874972 c!465732) b!2874969))

(assert (= (and b!2874972 (not c!465732)) b!2874973))

(assert (= (and d!830966 res!1192338) b!2874966))

(assert (= (and b!2874966 c!465731) b!2874974))

(assert (= (and b!2874966 (not c!465731)) b!2874968))

(assert (= (and b!2874968 c!465730) b!2874967))

(assert (= (and b!2874968 (not c!465730)) b!2874971))

(declare-fun m!3292755 () Bool)

(assert (=> b!2874967 m!3292755))

(declare-fun m!3292757 () Bool)

(assert (=> d!830966 m!3292757))

(declare-fun m!3292759 () Bool)

(assert (=> d!830966 m!3292759))

(declare-fun m!3292761 () Bool)

(assert (=> b!2874974 m!3292761))

(declare-fun m!3292763 () Bool)

(assert (=> b!2874968 m!3292763))

(assert (=> b!2874968 m!3292763))

(declare-fun m!3292765 () Bool)

(assert (=> b!2874968 m!3292765))

(declare-fun m!3292767 () Bool)

(assert (=> b!2874965 m!3292767))

(declare-fun m!3292769 () Bool)

(assert (=> b!2874966 m!3292769))

(declare-fun m!3292771 () Bool)

(assert (=> b!2874969 m!3292771))

(declare-fun m!3292773 () Bool)

(assert (=> b!2874971 m!3292773))

(assert (=> b!2874446 d!830966))

(declare-fun bs!522482 () Bool)

(declare-fun d!830968 () Bool)

(assert (= bs!522482 (and d!830968 d!830700)))

(declare-fun lambda!107243 () Int)

(assert (=> bs!522482 (not (= lambda!107243 lambda!107202))))

(declare-fun bs!522483 () Bool)

(assert (= bs!522483 (and d!830968 d!830814)))

(assert (=> bs!522483 (not (= lambda!107243 lambda!107232))))

(declare-fun bs!522484 () Bool)

(assert (= bs!522484 (and d!830968 d!830756)))

(assert (=> bs!522484 (= lambda!107243 lambda!107216)))

(declare-fun bs!522485 () Bool)

(assert (= bs!522485 (and d!830968 d!830888)))

(assert (=> bs!522485 (not (= lambda!107243 lambda!107239))))

(declare-fun bs!522486 () Bool)

(assert (= bs!522486 (and d!830968 d!830966)))

(assert (=> bs!522486 (= lambda!107243 lambda!107242)))

(declare-fun bs!522487 () Bool)

(assert (= bs!522487 (and d!830968 d!830744)))

(assert (=> bs!522487 (= lambda!107243 lambda!107211)))

(declare-fun bs!522488 () Bool)

(assert (= bs!522488 (and d!830968 d!830692)))

(assert (=> bs!522488 (= lambda!107243 lambda!107199)))

(declare-fun bs!522489 () Bool)

(assert (= bs!522489 (and d!830968 d!830780)))

(assert (=> bs!522489 (not (= lambda!107243 lambda!107221))))

(declare-fun bs!522490 () Bool)

(assert (= bs!522490 (and d!830968 d!830844)))

(assert (=> bs!522490 (not (= lambda!107243 lambda!107233))))

(declare-fun bs!522491 () Bool)

(assert (= bs!522491 (and d!830968 d!830808)))

(assert (=> bs!522491 (not (= lambda!107243 lambda!107231))))

(declare-fun bs!522492 () Bool)

(assert (= bs!522492 (and d!830968 d!830676)))

(assert (=> bs!522492 (not (= lambda!107243 lambda!107196))))

(declare-fun lt!1018581 () List!34515)

(assert (=> d!830968 (forall!7085 lt!1018581 lambda!107243)))

(declare-fun e!1819380 () List!34515)

(assert (=> d!830968 (= lt!1018581 e!1819380)))

(declare-fun c!465734 () Bool)

(assert (=> d!830968 (= c!465734 ((_ is Cons!34392) (t!233559 lt!1018429)))))

(assert (=> d!830968 (= (unfocusZipperList!68 (t!233559 lt!1018429)) lt!1018581)))

(declare-fun b!2874975 () Bool)

(assert (=> b!2874975 (= e!1819380 (Cons!34391 (generalisedConcat!339 (exprs!3201 (h!39812 (t!233559 lt!1018429)))) (unfocusZipperList!68 (t!233559 (t!233559 lt!1018429)))))))

(declare-fun b!2874976 () Bool)

(assert (=> b!2874976 (= e!1819380 Nil!34391)))

(assert (= (and d!830968 c!465734) b!2874975))

(assert (= (and d!830968 (not c!465734)) b!2874976))

(declare-fun m!3292775 () Bool)

(assert (=> d!830968 m!3292775))

(declare-fun m!3292777 () Bool)

(assert (=> b!2874975 m!3292777))

(declare-fun m!3292779 () Bool)

(assert (=> b!2874975 m!3292779))

(assert (=> b!2874446 d!830968))

(declare-fun e!1819382 () Bool)

(declare-fun b!2874980 () Bool)

(declare-fun lt!1018582 () List!34514)

(assert (=> b!2874980 (= e!1819382 (or (not (= (v!34539 lt!1018539) Nil!34390)) (= lt!1018582 (v!34539 lt!1018538))))))

(declare-fun d!830970 () Bool)

(assert (=> d!830970 e!1819382))

(declare-fun res!1192339 () Bool)

(assert (=> d!830970 (=> (not res!1192339) (not e!1819382))))

(assert (=> d!830970 (= res!1192339 (= (content!4704 lt!1018582) ((_ map or) (content!4704 (v!34539 lt!1018538)) (content!4704 (v!34539 lt!1018539)))))))

(declare-fun e!1819381 () List!34514)

(assert (=> d!830970 (= lt!1018582 e!1819381)))

(declare-fun c!465735 () Bool)

(assert (=> d!830970 (= c!465735 ((_ is Nil!34390) (v!34539 lt!1018538)))))

(assert (=> d!830970 (= (++!8177 (v!34539 lt!1018538) (v!34539 lt!1018539)) lt!1018582)))

(declare-fun b!2874979 () Bool)

(declare-fun res!1192340 () Bool)

(assert (=> b!2874979 (=> (not res!1192340) (not e!1819382))))

(assert (=> b!2874979 (= res!1192340 (= (size!26323 lt!1018582) (+ (size!26323 (v!34539 lt!1018538)) (size!26323 (v!34539 lt!1018539)))))))

(declare-fun b!2874978 () Bool)

(assert (=> b!2874978 (= e!1819381 (Cons!34390 (h!39810 (v!34539 lt!1018538)) (++!8177 (t!233557 (v!34539 lt!1018538)) (v!34539 lt!1018539))))))

(declare-fun b!2874977 () Bool)

(assert (=> b!2874977 (= e!1819381 (v!34539 lt!1018539))))

(assert (= (and d!830970 c!465735) b!2874977))

(assert (= (and d!830970 (not c!465735)) b!2874978))

(assert (= (and d!830970 res!1192339) b!2874979))

(assert (= (and b!2874979 res!1192340) b!2874980))

(declare-fun m!3292781 () Bool)

(assert (=> d!830970 m!3292781))

(declare-fun m!3292783 () Bool)

(assert (=> d!830970 m!3292783))

(declare-fun m!3292785 () Bool)

(assert (=> d!830970 m!3292785))

(declare-fun m!3292787 () Bool)

(assert (=> b!2874979 m!3292787))

(declare-fun m!3292789 () Bool)

(assert (=> b!2874979 m!3292789))

(declare-fun m!3292791 () Bool)

(assert (=> b!2874979 m!3292791))

(declare-fun m!3292793 () Bool)

(assert (=> b!2874978 m!3292793))

(assert (=> b!2874551 d!830970))

(declare-fun d!830972 () Bool)

(declare-fun res!1192341 () Bool)

(declare-fun e!1819383 () Bool)

(assert (=> d!830972 (=> res!1192341 e!1819383)))

(assert (=> d!830972 (= res!1192341 ((_ is Nil!34392) (t!233559 lt!1018438)))))

(assert (=> d!830972 (= (noDuplicate!581 (t!233559 lt!1018438)) e!1819383)))

(declare-fun b!2874981 () Bool)

(declare-fun e!1819384 () Bool)

(assert (=> b!2874981 (= e!1819383 e!1819384)))

(declare-fun res!1192342 () Bool)

(assert (=> b!2874981 (=> (not res!1192342) (not e!1819384))))

(assert (=> b!2874981 (= res!1192342 (not (contains!6127 (t!233559 (t!233559 lt!1018438)) (h!39812 (t!233559 lt!1018438)))))))

(declare-fun b!2874982 () Bool)

(assert (=> b!2874982 (= e!1819384 (noDuplicate!581 (t!233559 (t!233559 lt!1018438))))))

(assert (= (and d!830972 (not res!1192341)) b!2874981))

(assert (= (and b!2874981 res!1192342) b!2874982))

(declare-fun m!3292795 () Bool)

(assert (=> b!2874981 m!3292795))

(declare-fun m!3292797 () Bool)

(assert (=> b!2874982 m!3292797))

(assert (=> b!2874578 d!830972))

(declare-fun d!830974 () Bool)

(declare-fun c!465736 () Bool)

(assert (=> d!830974 (= c!465736 (isEmpty!18722 (tail!4571 (tail!4571 (get!10338 lt!1018433)))))))

(declare-fun e!1819385 () Bool)

(assert (=> d!830974 (= (matchZipper!483 (derivationStepZipper!475 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433))) (head!6346 (tail!4571 (get!10338 lt!1018433)))) (tail!4571 (tail!4571 (get!10338 lt!1018433)))) e!1819385)))

(declare-fun b!2874983 () Bool)

(assert (=> b!2874983 (= e!1819385 (nullableZipper!719 (derivationStepZipper!475 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433))) (head!6346 (tail!4571 (get!10338 lt!1018433))))))))

(declare-fun b!2874984 () Bool)

(assert (=> b!2874984 (= e!1819385 (matchZipper!483 (derivationStepZipper!475 (derivationStepZipper!475 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433))) (head!6346 (tail!4571 (get!10338 lt!1018433)))) (head!6346 (tail!4571 (tail!4571 (get!10338 lt!1018433))))) (tail!4571 (tail!4571 (tail!4571 (get!10338 lt!1018433))))))))

(assert (= (and d!830974 c!465736) b!2874983))

(assert (= (and d!830974 (not c!465736)) b!2874984))

(assert (=> d!830974 m!3292403))

(declare-fun m!3292799 () Bool)

(assert (=> d!830974 m!3292799))

(assert (=> b!2874983 m!3292401))

(declare-fun m!3292801 () Bool)

(assert (=> b!2874983 m!3292801))

(assert (=> b!2874984 m!3292403))

(declare-fun m!3292803 () Bool)

(assert (=> b!2874984 m!3292803))

(assert (=> b!2874984 m!3292401))

(assert (=> b!2874984 m!3292803))

(declare-fun m!3292805 () Bool)

(assert (=> b!2874984 m!3292805))

(assert (=> b!2874984 m!3292403))

(declare-fun m!3292807 () Bool)

(assert (=> b!2874984 m!3292807))

(assert (=> b!2874984 m!3292805))

(assert (=> b!2874984 m!3292807))

(declare-fun m!3292809 () Bool)

(assert (=> b!2874984 m!3292809))

(assert (=> b!2874589 d!830974))

(declare-fun bs!522493 () Bool)

(declare-fun d!830976 () Bool)

(assert (= bs!522493 (and d!830976 d!830792)))

(declare-fun lambda!107244 () Int)

(assert (=> bs!522493 (= (= (head!6346 (tail!4571 (get!10338 lt!1018433))) (head!6346 (get!10338 lt!1018433))) (= lambda!107244 lambda!107227))))

(assert (=> d!830976 true))

(assert (=> d!830976 (= (derivationStepZipper!475 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433))) (head!6346 (tail!4571 (get!10338 lt!1018433)))) (flatMap!222 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433))) lambda!107244))))

(declare-fun bs!522494 () Bool)

(assert (= bs!522494 d!830976))

(assert (=> bs!522494 m!3292003))

(declare-fun m!3292811 () Bool)

(assert (=> bs!522494 m!3292811))

(assert (=> b!2874589 d!830976))

(declare-fun d!830978 () Bool)

(assert (=> d!830978 (= (head!6346 (tail!4571 (get!10338 lt!1018433))) (h!39810 (tail!4571 (get!10338 lt!1018433))))))

(assert (=> b!2874589 d!830978))

(declare-fun d!830980 () Bool)

(assert (=> d!830980 (= (tail!4571 (tail!4571 (get!10338 lt!1018433))) (t!233557 (tail!4571 (get!10338 lt!1018433))))))

(assert (=> b!2874589 d!830980))

(declare-fun bm!185955 () Bool)

(declare-fun call!185960 () Bool)

(assert (=> bm!185955 (= call!185960 (isEmpty!18722 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun d!830982 () Bool)

(declare-fun e!1819387 () Bool)

(assert (=> d!830982 e!1819387))

(declare-fun c!465739 () Bool)

(assert (=> d!830982 (= c!465739 ((_ is EmptyExpr!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun lt!1018583 () Bool)

(declare-fun e!1819390 () Bool)

(assert (=> d!830982 (= lt!1018583 e!1819390)))

(declare-fun c!465738 () Bool)

(assert (=> d!830982 (= c!465738 (isEmpty!18722 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))

(assert (=> d!830982 (validRegex!3519 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))

(assert (=> d!830982 (= (matchR!3741 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))) (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))) lt!1018583)))

(declare-fun b!2874985 () Bool)

(declare-fun e!1819386 () Bool)

(assert (=> b!2874985 (= e!1819386 (not (= (head!6346 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))) (c!465376 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun b!2874986 () Bool)

(declare-fun res!1192347 () Bool)

(declare-fun e!1819391 () Bool)

(assert (=> b!2874986 (=> (not res!1192347) (not e!1819391))))

(assert (=> b!2874986 (= res!1192347 (isEmpty!18722 (tail!4571 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2874987 () Bool)

(declare-fun e!1819389 () Bool)

(assert (=> b!2874987 (= e!1819389 e!1819386)))

(declare-fun res!1192348 () Bool)

(assert (=> b!2874987 (=> res!1192348 e!1819386)))

(assert (=> b!2874987 (= res!1192348 call!185960)))

(declare-fun b!2874988 () Bool)

(declare-fun e!1819392 () Bool)

(assert (=> b!2874988 (= e!1819392 (not lt!1018583))))

(declare-fun b!2874989 () Bool)

(declare-fun res!1192349 () Bool)

(assert (=> b!2874989 (=> res!1192349 e!1819386)))

(assert (=> b!2874989 (= res!1192349 (not (isEmpty!18722 (tail!4571 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))))

(declare-fun b!2874990 () Bool)

(declare-fun res!1192344 () Bool)

(declare-fun e!1819388 () Bool)

(assert (=> b!2874990 (=> res!1192344 e!1819388)))

(assert (=> b!2874990 (= res!1192344 (not ((_ is ElementMatch!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))))

(assert (=> b!2874990 (= e!1819392 e!1819388)))

(declare-fun b!2874991 () Bool)

(declare-fun res!1192343 () Bool)

(assert (=> b!2874991 (=> res!1192343 e!1819388)))

(assert (=> b!2874991 (= res!1192343 e!1819391)))

(declare-fun res!1192350 () Bool)

(assert (=> b!2874991 (=> (not res!1192350) (not e!1819391))))

(assert (=> b!2874991 (= res!1192350 lt!1018583)))

(declare-fun b!2874992 () Bool)

(assert (=> b!2874992 (= e!1819391 (= (head!6346 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))) (c!465376 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))))

(declare-fun b!2874993 () Bool)

(declare-fun res!1192345 () Bool)

(assert (=> b!2874993 (=> (not res!1192345) (not e!1819391))))

(assert (=> b!2874993 (= res!1192345 (not call!185960))))

(declare-fun b!2874994 () Bool)

(assert (=> b!2874994 (= e!1819390 (nullable!2691 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2874995 () Bool)

(assert (=> b!2874995 (= e!1819388 e!1819389)))

(declare-fun res!1192346 () Bool)

(assert (=> b!2874995 (=> (not res!1192346) (not e!1819389))))

(assert (=> b!2874995 (= res!1192346 (not lt!1018583))))

(declare-fun b!2874996 () Bool)

(assert (=> b!2874996 (= e!1819387 (= lt!1018583 call!185960))))

(declare-fun b!2874997 () Bool)

(assert (=> b!2874997 (= e!1819390 (matchR!3741 (derivativeStep!2324 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))) (head!6346 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))) (tail!4571 (tail!4571 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2874998 () Bool)

(assert (=> b!2874998 (= e!1819387 e!1819392)))

(declare-fun c!465737 () Bool)

(assert (=> b!2874998 (= c!465737 ((_ is EmptyLang!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))))))))

(assert (= (and d!830982 c!465738) b!2874994))

(assert (= (and d!830982 (not c!465738)) b!2874997))

(assert (= (and d!830982 c!465739) b!2874996))

(assert (= (and d!830982 (not c!465739)) b!2874998))

(assert (= (and b!2874998 c!465737) b!2874988))

(assert (= (and b!2874998 (not c!465737)) b!2874990))

(assert (= (and b!2874990 (not res!1192344)) b!2874991))

(assert (= (and b!2874991 res!1192350) b!2874993))

(assert (= (and b!2874993 res!1192345) b!2874986))

(assert (= (and b!2874986 res!1192347) b!2874992))

(assert (= (and b!2874991 (not res!1192343)) b!2874995))

(assert (= (and b!2874995 res!1192346) b!2874987))

(assert (= (and b!2874987 (not res!1192348)) b!2874989))

(assert (= (and b!2874989 (not res!1192349)) b!2874985))

(assert (= (or b!2874996 b!2874993 b!2874987) bm!185955))

(assert (=> bm!185955 m!3292207))

(assert (=> bm!185955 m!3292211))

(assert (=> b!2874986 m!3292207))

(declare-fun m!3292813 () Bool)

(assert (=> b!2874986 m!3292813))

(assert (=> b!2874986 m!3292813))

(declare-fun m!3292815 () Bool)

(assert (=> b!2874986 m!3292815))

(assert (=> d!830982 m!3292207))

(assert (=> d!830982 m!3292211))

(assert (=> d!830982 m!3292215))

(declare-fun m!3292817 () Bool)

(assert (=> d!830982 m!3292817))

(assert (=> b!2874992 m!3292207))

(declare-fun m!3292819 () Bool)

(assert (=> b!2874992 m!3292819))

(assert (=> b!2874997 m!3292207))

(assert (=> b!2874997 m!3292819))

(assert (=> b!2874997 m!3292215))

(assert (=> b!2874997 m!3292819))

(declare-fun m!3292821 () Bool)

(assert (=> b!2874997 m!3292821))

(assert (=> b!2874997 m!3292207))

(assert (=> b!2874997 m!3292813))

(assert (=> b!2874997 m!3292821))

(assert (=> b!2874997 m!3292813))

(declare-fun m!3292823 () Bool)

(assert (=> b!2874997 m!3292823))

(assert (=> b!2874989 m!3292207))

(assert (=> b!2874989 m!3292813))

(assert (=> b!2874989 m!3292813))

(assert (=> b!2874989 m!3292815))

(assert (=> b!2874994 m!3292215))

(declare-fun m!3292825 () Bool)

(assert (=> b!2874994 m!3292825))

(assert (=> b!2874985 m!3292207))

(assert (=> b!2874985 m!3292819))

(assert (=> b!2874318 d!830982))

(declare-fun b!2874999 () Bool)

(declare-fun e!1819393 () Regex!8741)

(declare-fun e!1819394 () Regex!8741)

(assert (=> b!2874999 (= e!1819393 e!1819394)))

(declare-fun c!465741 () Bool)

(assert (=> b!2874999 (= c!465741 ((_ is Star!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun call!185962 () Regex!8741)

(declare-fun e!1819395 () Regex!8741)

(declare-fun call!185963 () Regex!8741)

(declare-fun b!2875000 () Bool)

(assert (=> b!2875000 (= e!1819395 (Union!8741 (Concat!14062 call!185962 (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) call!185963))))

(declare-fun b!2875001 () Bool)

(declare-fun c!465743 () Bool)

(assert (=> b!2875001 (= c!465743 ((_ is Union!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun e!1819397 () Regex!8741)

(assert (=> b!2875001 (= e!1819397 e!1819393)))

(declare-fun b!2875002 () Bool)

(declare-fun c!465742 () Bool)

(assert (=> b!2875002 (= c!465742 (nullable!2691 (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))

(assert (=> b!2875002 (= e!1819394 e!1819395)))

(declare-fun bm!185956 () Bool)

(declare-fun call!185964 () Regex!8741)

(declare-fun call!185961 () Regex!8741)

(assert (=> bm!185956 (= call!185964 call!185961)))

(declare-fun d!830984 () Bool)

(declare-fun lt!1018584 () Regex!8741)

(assert (=> d!830984 (validRegex!3519 lt!1018584)))

(declare-fun e!1819396 () Regex!8741)

(assert (=> d!830984 (= lt!1018584 e!1819396)))

(declare-fun c!465744 () Bool)

(assert (=> d!830984 (= c!465744 (or ((_ is EmptyExpr!8741) (h!39811 (exprs!3201 c!7184))) ((_ is EmptyLang!8741) (h!39811 (exprs!3201 c!7184)))))))

(assert (=> d!830984 (validRegex!3519 (h!39811 (exprs!3201 c!7184)))))

(assert (=> d!830984 (= (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))) lt!1018584)))

(declare-fun b!2875003 () Bool)

(assert (=> b!2875003 (= e!1819396 EmptyLang!8741)))

(declare-fun b!2875004 () Bool)

(assert (=> b!2875004 (= e!1819397 (ite (= (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184))))) (c!465376 (h!39811 (exprs!3201 c!7184)))) EmptyExpr!8741 EmptyLang!8741))))

(declare-fun b!2875005 () Bool)

(assert (=> b!2875005 (= e!1819396 e!1819397)))

(declare-fun c!465740 () Bool)

(assert (=> b!2875005 (= c!465740 ((_ is ElementMatch!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2875006 () Bool)

(assert (=> b!2875006 (= e!1819394 (Concat!14062 call!185964 (h!39811 (exprs!3201 c!7184))))))

(declare-fun bm!185957 () Bool)

(assert (=> bm!185957 (= call!185963 (derivativeStep!2324 (ite c!465743 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun b!2875007 () Bool)

(assert (=> b!2875007 (= e!1819393 (Union!8741 call!185963 call!185961))))

(declare-fun b!2875008 () Bool)

(assert (=> b!2875008 (= e!1819395 (Union!8741 (Concat!14062 call!185962 (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) EmptyLang!8741))))

(declare-fun bm!185958 () Bool)

(assert (=> bm!185958 (= call!185961 (derivativeStep!2324 (ite c!465743 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465741 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (head!6346 (get!10338 (getLanguageWitness!433 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun bm!185959 () Bool)

(assert (=> bm!185959 (= call!185962 call!185964)))

(assert (= (and d!830984 c!465744) b!2875003))

(assert (= (and d!830984 (not c!465744)) b!2875005))

(assert (= (and b!2875005 c!465740) b!2875004))

(assert (= (and b!2875005 (not c!465740)) b!2875001))

(assert (= (and b!2875001 c!465743) b!2875007))

(assert (= (and b!2875001 (not c!465743)) b!2874999))

(assert (= (and b!2874999 c!465741) b!2875006))

(assert (= (and b!2874999 (not c!465741)) b!2875002))

(assert (= (and b!2875002 c!465742) b!2875000))

(assert (= (and b!2875002 (not c!465742)) b!2875008))

(assert (= (or b!2875000 b!2875008) bm!185959))

(assert (= (or b!2875006 bm!185959) bm!185956))

(assert (= (or b!2875007 b!2875000) bm!185957))

(assert (= (or b!2875007 bm!185956) bm!185958))

(assert (=> b!2875002 m!3292197))

(declare-fun m!3292827 () Bool)

(assert (=> d!830984 m!3292827))

(assert (=> d!830984 m!3291971))

(assert (=> bm!185957 m!3292213))

(declare-fun m!3292829 () Bool)

(assert (=> bm!185957 m!3292829))

(assert (=> bm!185958 m!3292213))

(declare-fun m!3292831 () Bool)

(assert (=> bm!185958 m!3292831))

(assert (=> b!2874318 d!830984))

(assert (=> b!2874318 d!830902))

(assert (=> b!2874318 d!830932))

(assert (=> b!2874260 d!830926))

(declare-fun bm!185960 () Bool)

(declare-fun call!185966 () Option!6416)

(declare-fun c!465750 () Bool)

(assert (=> bm!185960 (= call!185966 (getLanguageWitness!433 (ite c!465750 (regOne!17995 (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))) (regOne!17994 (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))))))))

(declare-fun bm!185961 () Bool)

(declare-fun call!185965 () Option!6416)

(assert (=> bm!185961 (= call!185965 (getLanguageWitness!433 (ite c!465750 (regTwo!17995 (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))) (regTwo!17994 (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))))))))

(declare-fun b!2875010 () Bool)

(declare-fun e!1819398 () Option!6416)

(assert (=> b!2875010 (= e!1819398 (Some!6415 (Cons!34390 (c!465376 (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))) Nil!34390)))))

(declare-fun b!2875011 () Bool)

(declare-fun e!1819402 () Option!6416)

(assert (=> b!2875011 (= e!1819402 None!6415)))

(declare-fun b!2875012 () Bool)

(declare-fun e!1819405 () Option!6416)

(assert (=> b!2875012 (= e!1819405 (Some!6415 Nil!34390))))

(declare-fun b!2875013 () Bool)

(declare-fun e!1819403 () Option!6416)

(assert (=> b!2875013 (= e!1819403 None!6415)))

(declare-fun b!2875014 () Bool)

(declare-fun e!1819399 () Option!6416)

(assert (=> b!2875014 (= e!1819399 e!1819403)))

(declare-fun lt!1018587 () Option!6416)

(assert (=> b!2875014 (= lt!1018587 call!185966)))

(declare-fun c!465752 () Bool)

(assert (=> b!2875014 (= c!465752 ((_ is Some!6415) lt!1018587))))

(declare-fun b!2875015 () Bool)

(assert (=> b!2875015 (= e!1819398 e!1819405)))

(declare-fun c!465751 () Bool)

(assert (=> b!2875015 (= c!465751 ((_ is Star!8741) (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(declare-fun b!2875009 () Bool)

(declare-fun e!1819400 () Option!6416)

(declare-fun lt!1018586 () Option!6416)

(assert (=> b!2875009 (= e!1819400 lt!1018586)))

(declare-fun d!830986 () Bool)

(declare-fun c!465745 () Bool)

(assert (=> d!830986 (= c!465745 ((_ is EmptyExpr!8741) (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(declare-fun e!1819401 () Option!6416)

(assert (=> d!830986 (= (getLanguageWitness!433 (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))) e!1819401)))

(declare-fun b!2875016 () Bool)

(declare-fun e!1819404 () Option!6416)

(assert (=> b!2875016 (= e!1819401 e!1819404)))

(declare-fun c!465747 () Bool)

(assert (=> b!2875016 (= c!465747 ((_ is EmptyLang!8741) (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(declare-fun b!2875017 () Bool)

(declare-fun c!465748 () Bool)

(declare-fun lt!1018585 () Option!6416)

(assert (=> b!2875017 (= c!465748 ((_ is Some!6415) lt!1018585))))

(assert (=> b!2875017 (= lt!1018585 call!185965)))

(assert (=> b!2875017 (= e!1819403 e!1819402)))

(declare-fun b!2875018 () Bool)

(assert (=> b!2875018 (= e!1819404 None!6415)))

(declare-fun b!2875019 () Bool)

(assert (=> b!2875019 (= c!465750 ((_ is Union!8741) (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(assert (=> b!2875019 (= e!1819405 e!1819399)))

(declare-fun b!2875020 () Bool)

(assert (=> b!2875020 (= e!1819402 (Some!6415 (++!8177 (v!34539 lt!1018587) (v!34539 lt!1018585))))))

(declare-fun b!2875021 () Bool)

(declare-fun c!465749 () Bool)

(assert (=> b!2875021 (= c!465749 ((_ is ElementMatch!8741) (ite c!465560 (regTwo!17995 (h!39811 (exprs!3201 lt!1018434))) (regTwo!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(assert (=> b!2875021 (= e!1819404 e!1819398)))

(declare-fun b!2875022 () Bool)

(assert (=> b!2875022 (= e!1819401 (Some!6415 Nil!34390))))

(declare-fun b!2875023 () Bool)

(assert (=> b!2875023 (= e!1819400 call!185965)))

(declare-fun b!2875024 () Bool)

(assert (=> b!2875024 (= e!1819399 e!1819400)))

(assert (=> b!2875024 (= lt!1018586 call!185966)))

(declare-fun c!465746 () Bool)

(assert (=> b!2875024 (= c!465746 ((_ is Some!6415) lt!1018586))))

(assert (= (and d!830986 c!465745) b!2875022))

(assert (= (and d!830986 (not c!465745)) b!2875016))

(assert (= (and b!2875016 c!465747) b!2875018))

(assert (= (and b!2875016 (not c!465747)) b!2875021))

(assert (= (and b!2875021 c!465749) b!2875010))

(assert (= (and b!2875021 (not c!465749)) b!2875015))

(assert (= (and b!2875015 c!465751) b!2875012))

(assert (= (and b!2875015 (not c!465751)) b!2875019))

(assert (= (and b!2875019 c!465750) b!2875024))

(assert (= (and b!2875019 (not c!465750)) b!2875014))

(assert (= (and b!2875024 c!465746) b!2875009))

(assert (= (and b!2875024 (not c!465746)) b!2875023))

(assert (= (and b!2875014 c!465752) b!2875017))

(assert (= (and b!2875014 (not c!465752)) b!2875013))

(assert (= (and b!2875017 c!465748) b!2875020))

(assert (= (and b!2875017 (not c!465748)) b!2875011))

(assert (= (or b!2875023 b!2875017) bm!185961))

(assert (= (or b!2875024 b!2875014) bm!185960))

(declare-fun m!3292833 () Bool)

(assert (=> bm!185960 m!3292833))

(declare-fun m!3292835 () Bool)

(assert (=> bm!185961 m!3292835))

(declare-fun m!3292837 () Bool)

(assert (=> b!2875020 m!3292837))

(assert (=> bm!185880 d!830986))

(declare-fun d!830988 () Bool)

(declare-fun lt!1018590 () Bool)

(declare-fun exists!1170 (List!34516 Int) Bool)

(assert (=> d!830988 (= lt!1018590 (exists!1170 (toList!2026 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true)) lambda!107224))))

(declare-fun choose!17001 ((InoxSet Context!5402) Int) Bool)

(assert (=> d!830988 (= lt!1018590 (choose!17001 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) lambda!107224))))

(assert (=> d!830988 (= (exists!1169 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) lambda!107224) lt!1018590)))

(declare-fun bs!522495 () Bool)

(assert (= bs!522495 d!830988))

(assert (=> bs!522495 m!3291973))

(declare-fun m!3292839 () Bool)

(assert (=> bs!522495 m!3292839))

(assert (=> bs!522495 m!3292839))

(declare-fun m!3292841 () Bool)

(assert (=> bs!522495 m!3292841))

(assert (=> bs!522495 m!3291973))

(declare-fun m!3292843 () Bool)

(assert (=> bs!522495 m!3292843))

(assert (=> d!830784 d!830988))

(declare-fun bs!522496 () Bool)

(declare-fun d!830990 () Bool)

(assert (= bs!522496 (and d!830990 d!830700)))

(declare-fun lambda!107245 () Int)

(assert (=> bs!522496 (not (= lambda!107245 lambda!107202))))

(declare-fun bs!522497 () Bool)

(assert (= bs!522497 (and d!830990 d!830814)))

(assert (=> bs!522497 (not (= lambda!107245 lambda!107232))))

(declare-fun bs!522498 () Bool)

(assert (= bs!522498 (and d!830990 d!830968)))

(assert (=> bs!522498 (= lambda!107245 lambda!107243)))

(declare-fun bs!522499 () Bool)

(assert (= bs!522499 (and d!830990 d!830756)))

(assert (=> bs!522499 (= lambda!107245 lambda!107216)))

(declare-fun bs!522500 () Bool)

(assert (= bs!522500 (and d!830990 d!830888)))

(assert (=> bs!522500 (not (= lambda!107245 lambda!107239))))

(declare-fun bs!522501 () Bool)

(assert (= bs!522501 (and d!830990 d!830966)))

(assert (=> bs!522501 (= lambda!107245 lambda!107242)))

(declare-fun bs!522502 () Bool)

(assert (= bs!522502 (and d!830990 d!830744)))

(assert (=> bs!522502 (= lambda!107245 lambda!107211)))

(declare-fun bs!522503 () Bool)

(assert (= bs!522503 (and d!830990 d!830692)))

(assert (=> bs!522503 (= lambda!107245 lambda!107199)))

(declare-fun bs!522504 () Bool)

(assert (= bs!522504 (and d!830990 d!830780)))

(assert (=> bs!522504 (not (= lambda!107245 lambda!107221))))

(declare-fun bs!522505 () Bool)

(assert (= bs!522505 (and d!830990 d!830844)))

(assert (=> bs!522505 (not (= lambda!107245 lambda!107233))))

(declare-fun bs!522506 () Bool)

(assert (= bs!522506 (and d!830990 d!830808)))

(assert (=> bs!522506 (not (= lambda!107245 lambda!107231))))

(declare-fun bs!522507 () Bool)

(assert (= bs!522507 (and d!830990 d!830676)))

(assert (=> bs!522507 (not (= lambda!107245 lambda!107196))))

(declare-fun b!2875025 () Bool)

(declare-fun e!1819411 () Regex!8741)

(assert (=> b!2875025 (= e!1819411 (Union!8741 (h!39811 (t!233558 (unfocusZipperList!68 lt!1018429))) (generalisedUnion!555 (t!233558 (t!233558 (unfocusZipperList!68 lt!1018429))))))))

(declare-fun b!2875026 () Bool)

(declare-fun e!1819410 () Regex!8741)

(assert (=> b!2875026 (= e!1819410 (h!39811 (t!233558 (unfocusZipperList!68 lt!1018429))))))

(declare-fun b!2875027 () Bool)

(assert (=> b!2875027 (= e!1819411 EmptyLang!8741)))

(declare-fun b!2875028 () Bool)

(declare-fun e!1819408 () Bool)

(declare-fun lt!1018591 () Regex!8741)

(assert (=> b!2875028 (= e!1819408 (isEmptyLang!153 lt!1018591))))

(declare-fun b!2875029 () Bool)

(declare-fun e!1819407 () Bool)

(assert (=> b!2875029 (= e!1819407 (isUnion!153 lt!1018591))))

(declare-fun b!2875030 () Bool)

(assert (=> b!2875030 (= e!1819410 e!1819411)))

(declare-fun c!465755 () Bool)

(assert (=> b!2875030 (= c!465755 ((_ is Cons!34391) (t!233558 (unfocusZipperList!68 lt!1018429))))))

(declare-fun b!2875031 () Bool)

(declare-fun e!1819409 () Bool)

(assert (=> b!2875031 (= e!1819409 e!1819408)))

(declare-fun c!465756 () Bool)

(assert (=> b!2875031 (= c!465756 (isEmpty!18725 (t!233558 (unfocusZipperList!68 lt!1018429))))))

(declare-fun b!2875032 () Bool)

(assert (=> b!2875032 (= e!1819408 e!1819407)))

(declare-fun c!465754 () Bool)

(assert (=> b!2875032 (= c!465754 (isEmpty!18725 (tail!4572 (t!233558 (unfocusZipperList!68 lt!1018429)))))))

(assert (=> d!830990 e!1819409))

(declare-fun res!1192352 () Bool)

(assert (=> d!830990 (=> (not res!1192352) (not e!1819409))))

(assert (=> d!830990 (= res!1192352 (validRegex!3519 lt!1018591))))

(assert (=> d!830990 (= lt!1018591 e!1819410)))

(declare-fun c!465753 () Bool)

(declare-fun e!1819406 () Bool)

(assert (=> d!830990 (= c!465753 e!1819406)))

(declare-fun res!1192351 () Bool)

(assert (=> d!830990 (=> (not res!1192351) (not e!1819406))))

(assert (=> d!830990 (= res!1192351 ((_ is Cons!34391) (t!233558 (unfocusZipperList!68 lt!1018429))))))

(assert (=> d!830990 (forall!7085 (t!233558 (unfocusZipperList!68 lt!1018429)) lambda!107245)))

(assert (=> d!830990 (= (generalisedUnion!555 (t!233558 (unfocusZipperList!68 lt!1018429))) lt!1018591)))

(declare-fun b!2875033 () Bool)

(assert (=> b!2875033 (= e!1819407 (= lt!1018591 (head!6347 (t!233558 (unfocusZipperList!68 lt!1018429)))))))

(declare-fun b!2875034 () Bool)

(assert (=> b!2875034 (= e!1819406 (isEmpty!18725 (t!233558 (t!233558 (unfocusZipperList!68 lt!1018429)))))))

(assert (= (and d!830990 res!1192351) b!2875034))

(assert (= (and d!830990 c!465753) b!2875026))

(assert (= (and d!830990 (not c!465753)) b!2875030))

(assert (= (and b!2875030 c!465755) b!2875025))

(assert (= (and b!2875030 (not c!465755)) b!2875027))

(assert (= (and d!830990 res!1192352) b!2875031))

(assert (= (and b!2875031 c!465756) b!2875028))

(assert (= (and b!2875031 (not c!465756)) b!2875032))

(assert (= (and b!2875032 c!465754) b!2875033))

(assert (= (and b!2875032 (not c!465754)) b!2875029))

(declare-fun m!3292845 () Bool)

(assert (=> b!2875029 m!3292845))

(declare-fun m!3292847 () Bool)

(assert (=> b!2875032 m!3292847))

(assert (=> b!2875032 m!3292847))

(declare-fun m!3292849 () Bool)

(assert (=> b!2875032 m!3292849))

(declare-fun m!3292851 () Bool)

(assert (=> b!2875028 m!3292851))

(declare-fun m!3292853 () Bool)

(assert (=> b!2875033 m!3292853))

(declare-fun m!3292855 () Bool)

(assert (=> d!830990 m!3292855))

(declare-fun m!3292857 () Bool)

(assert (=> d!830990 m!3292857))

(assert (=> b!2875031 m!3292283))

(declare-fun m!3292859 () Bool)

(assert (=> b!2875034 m!3292859))

(declare-fun m!3292861 () Bool)

(assert (=> b!2875025 m!3292861))

(assert (=> b!2874412 d!830990))

(declare-fun c!465757 () Bool)

(declare-fun call!185969 () Bool)

(declare-fun bm!185962 () Bool)

(declare-fun c!465758 () Bool)

(assert (=> bm!185962 (= call!185969 (validRegex!3519 (ite c!465758 (reg!9070 (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) (ite c!465757 (regTwo!17995 (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) (regOne!17994 (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))))))

(declare-fun b!2875035 () Bool)

(declare-fun res!1192353 () Bool)

(declare-fun e!1819414 () Bool)

(assert (=> b!2875035 (=> res!1192353 e!1819414)))

(assert (=> b!2875035 (= res!1192353 (not ((_ is Concat!14062) (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))))

(declare-fun e!1819413 () Bool)

(assert (=> b!2875035 (= e!1819413 e!1819414)))

(declare-fun bm!185963 () Bool)

(declare-fun call!185967 () Bool)

(assert (=> bm!185963 (= call!185967 call!185969)))

(declare-fun call!185968 () Bool)

(declare-fun bm!185964 () Bool)

(assert (=> bm!185964 (= call!185968 (validRegex!3519 (ite c!465757 (regOne!17995 (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) (regTwo!17994 (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun b!2875036 () Bool)

(declare-fun e!1819418 () Bool)

(assert (=> b!2875036 (= e!1819418 call!185967)))

(declare-fun b!2875037 () Bool)

(declare-fun e!1819417 () Bool)

(assert (=> b!2875037 (= e!1819417 call!185968)))

(declare-fun b!2875038 () Bool)

(declare-fun res!1192354 () Bool)

(assert (=> b!2875038 (=> (not res!1192354) (not e!1819418))))

(assert (=> b!2875038 (= res!1192354 call!185968)))

(assert (=> b!2875038 (= e!1819413 e!1819418)))

(declare-fun b!2875039 () Bool)

(assert (=> b!2875039 (= e!1819414 e!1819417)))

(declare-fun res!1192357 () Bool)

(assert (=> b!2875039 (=> (not res!1192357) (not e!1819417))))

(assert (=> b!2875039 (= res!1192357 call!185967)))

(declare-fun b!2875040 () Bool)

(declare-fun e!1819412 () Bool)

(declare-fun e!1819416 () Bool)

(assert (=> b!2875040 (= e!1819412 e!1819416)))

(declare-fun res!1192356 () Bool)

(assert (=> b!2875040 (= res!1192356 (not (nullable!2691 (reg!9070 (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(assert (=> b!2875040 (=> (not res!1192356) (not e!1819416))))

(declare-fun d!830992 () Bool)

(declare-fun res!1192355 () Bool)

(declare-fun e!1819415 () Bool)

(assert (=> d!830992 (=> res!1192355 e!1819415)))

(assert (=> d!830992 (= res!1192355 ((_ is ElementMatch!8741) (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> d!830992 (= (validRegex!3519 (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) e!1819415)))

(declare-fun b!2875041 () Bool)

(assert (=> b!2875041 (= e!1819412 e!1819413)))

(assert (=> b!2875041 (= c!465757 ((_ is Union!8741) (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2875042 () Bool)

(assert (=> b!2875042 (= e!1819416 call!185969)))

(declare-fun b!2875043 () Bool)

(assert (=> b!2875043 (= e!1819415 e!1819412)))

(assert (=> b!2875043 (= c!465758 ((_ is Star!8741) (ite c!465592 (regOne!17995 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (= (and d!830992 (not res!1192355)) b!2875043))

(assert (= (and b!2875043 c!465758) b!2875040))

(assert (= (and b!2875043 (not c!465758)) b!2875041))

(assert (= (and b!2875040 res!1192356) b!2875042))

(assert (= (and b!2875041 c!465757) b!2875038))

(assert (= (and b!2875041 (not c!465757)) b!2875035))

(assert (= (and b!2875038 res!1192354) b!2875036))

(assert (= (and b!2875035 (not res!1192353)) b!2875039))

(assert (= (and b!2875039 res!1192357) b!2875037))

(assert (= (or b!2875036 b!2875039) bm!185963))

(assert (= (or b!2875038 b!2875037) bm!185964))

(assert (= (or b!2875042 bm!185963) bm!185962))

(declare-fun m!3292863 () Bool)

(assert (=> bm!185962 m!3292863))

(declare-fun m!3292865 () Bool)

(assert (=> bm!185964 m!3292865))

(declare-fun m!3292867 () Bool)

(assert (=> b!2875040 m!3292867))

(assert (=> bm!185888 d!830992))

(declare-fun b!2875044 () Bool)

(declare-fun e!1819419 () Regex!8741)

(declare-fun e!1819420 () Regex!8741)

(assert (=> b!2875044 (= e!1819419 e!1819420)))

(declare-fun c!465760 () Bool)

(assert (=> b!2875044 (= c!465760 ((_ is Star!8741) (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun call!185971 () Regex!8741)

(declare-fun b!2875045 () Bool)

(declare-fun e!1819421 () Regex!8741)

(declare-fun call!185972 () Regex!8741)

(assert (=> b!2875045 (= e!1819421 (Union!8741 (Concat!14062 call!185971 (regTwo!17994 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) call!185972))))

(declare-fun c!465762 () Bool)

(declare-fun b!2875046 () Bool)

(assert (=> b!2875046 (= c!465762 ((_ is Union!8741) (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun e!1819423 () Regex!8741)

(assert (=> b!2875046 (= e!1819423 e!1819419)))

(declare-fun c!465761 () Bool)

(declare-fun b!2875047 () Bool)

(assert (=> b!2875047 (= c!465761 (nullable!2691 (regOne!17994 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2875047 (= e!1819420 e!1819421)))

(declare-fun bm!185965 () Bool)

(declare-fun call!185973 () Regex!8741)

(declare-fun call!185970 () Regex!8741)

(assert (=> bm!185965 (= call!185973 call!185970)))

(declare-fun d!830994 () Bool)

(declare-fun lt!1018592 () Regex!8741)

(assert (=> d!830994 (validRegex!3519 lt!1018592)))

(declare-fun e!1819422 () Regex!8741)

(assert (=> d!830994 (= lt!1018592 e!1819422)))

(declare-fun c!465763 () Bool)

(assert (=> d!830994 (= c!465763 (or ((_ is EmptyExpr!8741) (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) ((_ is EmptyLang!8741) (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> d!830994 (validRegex!3519 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))

(assert (=> d!830994 (= (derivativeStep!2324 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (head!6346 (get!10338 lt!1018432))) lt!1018592)))

(declare-fun b!2875048 () Bool)

(assert (=> b!2875048 (= e!1819422 EmptyLang!8741)))

(declare-fun b!2875049 () Bool)

(assert (=> b!2875049 (= e!1819423 (ite (= (head!6346 (get!10338 lt!1018432)) (c!465376 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) EmptyExpr!8741 EmptyLang!8741))))

(declare-fun b!2875050 () Bool)

(assert (=> b!2875050 (= e!1819422 e!1819423)))

(declare-fun c!465759 () Bool)

(assert (=> b!2875050 (= c!465759 ((_ is ElementMatch!8741) (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun b!2875051 () Bool)

(assert (=> b!2875051 (= e!1819420 (Concat!14062 call!185973 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun bm!185966 () Bool)

(assert (=> bm!185966 (= call!185972 (derivativeStep!2324 (ite c!465762 (regOne!17995 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regTwo!17994 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) (head!6346 (get!10338 lt!1018432))))))

(declare-fun b!2875052 () Bool)

(assert (=> b!2875052 (= e!1819419 (Union!8741 call!185972 call!185970))))

(declare-fun b!2875053 () Bool)

(assert (=> b!2875053 (= e!1819421 (Union!8741 (Concat!14062 call!185971 (regTwo!17994 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) EmptyLang!8741))))

(declare-fun bm!185967 () Bool)

(assert (=> bm!185967 (= call!185970 (derivativeStep!2324 (ite c!465762 (regTwo!17995 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (ite c!465760 (reg!9070 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))) (regOne!17994 (ite c!465506 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (ite c!465504 (reg!9070 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184)))))))) (head!6346 (get!10338 lt!1018432))))))

(declare-fun bm!185968 () Bool)

(assert (=> bm!185968 (= call!185971 call!185973)))

(assert (= (and d!830994 c!465763) b!2875048))

(assert (= (and d!830994 (not c!465763)) b!2875050))

(assert (= (and b!2875050 c!465759) b!2875049))

(assert (= (and b!2875050 (not c!465759)) b!2875046))

(assert (= (and b!2875046 c!465762) b!2875052))

(assert (= (and b!2875046 (not c!465762)) b!2875044))

(assert (= (and b!2875044 c!465760) b!2875051))

(assert (= (and b!2875044 (not c!465760)) b!2875047))

(assert (= (and b!2875047 c!465761) b!2875045))

(assert (= (and b!2875047 (not c!465761)) b!2875053))

(assert (= (or b!2875045 b!2875053) bm!185968))

(assert (= (or b!2875051 bm!185968) bm!185965))

(assert (= (or b!2875052 b!2875045) bm!185966))

(assert (= (or b!2875052 bm!185965) bm!185967))

(declare-fun m!3292869 () Bool)

(assert (=> b!2875047 m!3292869))

(declare-fun m!3292871 () Bool)

(assert (=> d!830994 m!3292871))

(declare-fun m!3292873 () Bool)

(assert (=> d!830994 m!3292873))

(assert (=> bm!185966 m!3292069))

(declare-fun m!3292875 () Bool)

(assert (=> bm!185966 m!3292875))

(assert (=> bm!185967 m!3292069))

(declare-fun m!3292877 () Bool)

(assert (=> bm!185967 m!3292877))

(assert (=> bm!185865 d!830994))

(declare-fun bm!185969 () Bool)

(declare-fun call!185975 () Option!6416)

(declare-fun c!465769 () Bool)

(assert (=> bm!185969 (= call!185975 (getLanguageWitness!433 (ite c!465769 (regOne!17995 (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))) (regOne!17994 (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))))))))

(declare-fun call!185974 () Option!6416)

(declare-fun bm!185970 () Bool)

(assert (=> bm!185970 (= call!185974 (getLanguageWitness!433 (ite c!465769 (regTwo!17995 (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))) (regTwo!17994 (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))))))))

(declare-fun b!2875055 () Bool)

(declare-fun e!1819424 () Option!6416)

(assert (=> b!2875055 (= e!1819424 (Some!6415 (Cons!34390 (c!465376 (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))) Nil!34390)))))

(declare-fun b!2875056 () Bool)

(declare-fun e!1819428 () Option!6416)

(assert (=> b!2875056 (= e!1819428 None!6415)))

(declare-fun b!2875057 () Bool)

(declare-fun e!1819431 () Option!6416)

(assert (=> b!2875057 (= e!1819431 (Some!6415 Nil!34390))))

(declare-fun b!2875058 () Bool)

(declare-fun e!1819429 () Option!6416)

(assert (=> b!2875058 (= e!1819429 None!6415)))

(declare-fun b!2875059 () Bool)

(declare-fun e!1819425 () Option!6416)

(assert (=> b!2875059 (= e!1819425 e!1819429)))

(declare-fun lt!1018595 () Option!6416)

(assert (=> b!2875059 (= lt!1018595 call!185975)))

(declare-fun c!465771 () Bool)

(assert (=> b!2875059 (= c!465771 ((_ is Some!6415) lt!1018595))))

(declare-fun b!2875060 () Bool)

(assert (=> b!2875060 (= e!1819424 e!1819431)))

(declare-fun c!465770 () Bool)

(assert (=> b!2875060 (= c!465770 ((_ is Star!8741) (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(declare-fun b!2875054 () Bool)

(declare-fun e!1819426 () Option!6416)

(declare-fun lt!1018594 () Option!6416)

(assert (=> b!2875054 (= e!1819426 lt!1018594)))

(declare-fun d!830996 () Bool)

(declare-fun c!465764 () Bool)

(assert (=> d!830996 (= c!465764 ((_ is EmptyExpr!8741) (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(declare-fun e!1819427 () Option!6416)

(assert (=> d!830996 (= (getLanguageWitness!433 (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))) e!1819427)))

(declare-fun b!2875061 () Bool)

(declare-fun e!1819430 () Option!6416)

(assert (=> b!2875061 (= e!1819427 e!1819430)))

(declare-fun c!465766 () Bool)

(assert (=> b!2875061 (= c!465766 ((_ is EmptyLang!8741) (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(declare-fun b!2875062 () Bool)

(declare-fun c!465767 () Bool)

(declare-fun lt!1018593 () Option!6416)

(assert (=> b!2875062 (= c!465767 ((_ is Some!6415) lt!1018593))))

(assert (=> b!2875062 (= lt!1018593 call!185974)))

(assert (=> b!2875062 (= e!1819429 e!1819428)))

(declare-fun b!2875063 () Bool)

(assert (=> b!2875063 (= e!1819430 None!6415)))

(declare-fun b!2875064 () Bool)

(assert (=> b!2875064 (= c!465769 ((_ is Union!8741) (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(assert (=> b!2875064 (= e!1819431 e!1819425)))

(declare-fun b!2875065 () Bool)

(assert (=> b!2875065 (= e!1819428 (Some!6415 (++!8177 (v!34539 lt!1018595) (v!34539 lt!1018593))))))

(declare-fun b!2875066 () Bool)

(declare-fun c!465768 () Bool)

(assert (=> b!2875066 (= c!465768 ((_ is ElementMatch!8741) (ite c!465560 (regOne!17995 (h!39811 (exprs!3201 lt!1018434))) (regOne!17994 (h!39811 (exprs!3201 lt!1018434))))))))

(assert (=> b!2875066 (= e!1819430 e!1819424)))

(declare-fun b!2875067 () Bool)

(assert (=> b!2875067 (= e!1819427 (Some!6415 Nil!34390))))

(declare-fun b!2875068 () Bool)

(assert (=> b!2875068 (= e!1819426 call!185974)))

(declare-fun b!2875069 () Bool)

(assert (=> b!2875069 (= e!1819425 e!1819426)))

(assert (=> b!2875069 (= lt!1018594 call!185975)))

(declare-fun c!465765 () Bool)

(assert (=> b!2875069 (= c!465765 ((_ is Some!6415) lt!1018594))))

(assert (= (and d!830996 c!465764) b!2875067))

(assert (= (and d!830996 (not c!465764)) b!2875061))

(assert (= (and b!2875061 c!465766) b!2875063))

(assert (= (and b!2875061 (not c!465766)) b!2875066))

(assert (= (and b!2875066 c!465768) b!2875055))

(assert (= (and b!2875066 (not c!465768)) b!2875060))

(assert (= (and b!2875060 c!465770) b!2875057))

(assert (= (and b!2875060 (not c!465770)) b!2875064))

(assert (= (and b!2875064 c!465769) b!2875069))

(assert (= (and b!2875064 (not c!465769)) b!2875059))

(assert (= (and b!2875069 c!465765) b!2875054))

(assert (= (and b!2875069 (not c!465765)) b!2875068))

(assert (= (and b!2875059 c!465771) b!2875062))

(assert (= (and b!2875059 (not c!465771)) b!2875058))

(assert (= (and b!2875062 c!465767) b!2875065))

(assert (= (and b!2875062 (not c!465767)) b!2875056))

(assert (= (or b!2875068 b!2875062) bm!185970))

(assert (= (or b!2875069 b!2875059) bm!185969))

(declare-fun m!3292879 () Bool)

(assert (=> bm!185969 m!3292879))

(declare-fun m!3292881 () Bool)

(assert (=> bm!185970 m!3292881))

(declare-fun m!3292883 () Bool)

(assert (=> b!2875065 m!3292883))

(assert (=> bm!185879 d!830996))

(declare-fun c!465772 () Bool)

(declare-fun c!465773 () Bool)

(declare-fun bm!185971 () Bool)

(declare-fun call!185978 () Bool)

(assert (=> bm!185971 (= call!185978 (validRegex!3519 (ite c!465773 (reg!9070 (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494)))) (ite c!465772 (regTwo!17995 (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494)))) (regOne!17994 (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494))))))))))

(declare-fun b!2875070 () Bool)

(declare-fun res!1192358 () Bool)

(declare-fun e!1819434 () Bool)

(assert (=> b!2875070 (=> res!1192358 e!1819434)))

(assert (=> b!2875070 (= res!1192358 (not ((_ is Concat!14062) (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494))))))))

(declare-fun e!1819433 () Bool)

(assert (=> b!2875070 (= e!1819433 e!1819434)))

(declare-fun bm!185972 () Bool)

(declare-fun call!185976 () Bool)

(assert (=> bm!185972 (= call!185976 call!185978)))

(declare-fun bm!185973 () Bool)

(declare-fun call!185977 () Bool)

(assert (=> bm!185973 (= call!185977 (validRegex!3519 (ite c!465772 (regOne!17995 (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494)))) (regTwo!17994 (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494)))))))))

(declare-fun b!2875071 () Bool)

(declare-fun e!1819438 () Bool)

(assert (=> b!2875071 (= e!1819438 call!185976)))

(declare-fun b!2875072 () Bool)

(declare-fun e!1819437 () Bool)

(assert (=> b!2875072 (= e!1819437 call!185977)))

(declare-fun b!2875073 () Bool)

(declare-fun res!1192359 () Bool)

(assert (=> b!2875073 (=> (not res!1192359) (not e!1819438))))

(assert (=> b!2875073 (= res!1192359 call!185977)))

(assert (=> b!2875073 (= e!1819433 e!1819438)))

(declare-fun b!2875074 () Bool)

(assert (=> b!2875074 (= e!1819434 e!1819437)))

(declare-fun res!1192362 () Bool)

(assert (=> b!2875074 (=> (not res!1192362) (not e!1819437))))

(assert (=> b!2875074 (= res!1192362 call!185976)))

(declare-fun b!2875075 () Bool)

(declare-fun e!1819432 () Bool)

(declare-fun e!1819436 () Bool)

(assert (=> b!2875075 (= e!1819432 e!1819436)))

(declare-fun res!1192361 () Bool)

(assert (=> b!2875075 (= res!1192361 (not (nullable!2691 (reg!9070 (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494)))))))))

(assert (=> b!2875075 (=> (not res!1192361) (not e!1819436))))

(declare-fun d!830998 () Bool)

(declare-fun res!1192360 () Bool)

(declare-fun e!1819435 () Bool)

(assert (=> d!830998 (=> res!1192360 e!1819435)))

(assert (=> d!830998 (= res!1192360 ((_ is ElementMatch!8741) (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494)))))))

(assert (=> d!830998 (= (validRegex!3519 (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494)))) e!1819435)))

(declare-fun b!2875076 () Bool)

(assert (=> b!2875076 (= e!1819432 e!1819433)))

(assert (=> b!2875076 (= c!465772 ((_ is Union!8741) (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494)))))))

(declare-fun b!2875077 () Bool)

(assert (=> b!2875077 (= e!1819436 call!185978)))

(declare-fun b!2875078 () Bool)

(assert (=> b!2875078 (= e!1819435 e!1819432)))

(assert (=> b!2875078 (= c!465773 ((_ is Star!8741) (ite c!465527 (reg!9070 lt!1018494) (ite c!465526 (regTwo!17995 lt!1018494) (regOne!17994 lt!1018494)))))))

(assert (= (and d!830998 (not res!1192360)) b!2875078))

(assert (= (and b!2875078 c!465773) b!2875075))

(assert (= (and b!2875078 (not c!465773)) b!2875076))

(assert (= (and b!2875075 res!1192361) b!2875077))

(assert (= (and b!2875076 c!465772) b!2875073))

(assert (= (and b!2875076 (not c!465772)) b!2875070))

(assert (= (and b!2875073 res!1192359) b!2875071))

(assert (= (and b!2875070 (not res!1192358)) b!2875074))

(assert (= (and b!2875074 res!1192362) b!2875072))

(assert (= (or b!2875071 b!2875074) bm!185972))

(assert (= (or b!2875073 b!2875072) bm!185973))

(assert (= (or b!2875077 bm!185972) bm!185971))

(declare-fun m!3292885 () Bool)

(assert (=> bm!185971 m!3292885))

(declare-fun m!3292887 () Bool)

(assert (=> bm!185973 m!3292887))

(declare-fun m!3292889 () Bool)

(assert (=> b!2875075 m!3292889))

(assert (=> bm!185870 d!830998))

(declare-fun d!831000 () Bool)

(declare-fun c!465774 () Bool)

(assert (=> d!831000 (= c!465774 ((_ is Nil!34390) lt!1018532))))

(declare-fun e!1819439 () (InoxSet C!17664))

(assert (=> d!831000 (= (content!4704 lt!1018532) e!1819439)))

(declare-fun b!2875079 () Bool)

(assert (=> b!2875079 (= e!1819439 ((as const (Array C!17664 Bool)) false))))

(declare-fun b!2875080 () Bool)

(assert (=> b!2875080 (= e!1819439 ((_ map or) (store ((as const (Array C!17664 Bool)) false) (h!39810 lt!1018532) true) (content!4704 (t!233557 lt!1018532))))))

(assert (= (and d!831000 c!465774) b!2875079))

(assert (= (and d!831000 (not c!465774)) b!2875080))

(declare-fun m!3292891 () Bool)

(assert (=> b!2875080 m!3292891))

(declare-fun m!3292893 () Bool)

(assert (=> b!2875080 m!3292893))

(assert (=> d!830766 d!831000))

(declare-fun d!831002 () Bool)

(declare-fun c!465775 () Bool)

(assert (=> d!831002 (= c!465775 ((_ is Nil!34390) (v!34539 lt!1018502)))))

(declare-fun e!1819440 () (InoxSet C!17664))

(assert (=> d!831002 (= (content!4704 (v!34539 lt!1018502)) e!1819440)))

(declare-fun b!2875081 () Bool)

(assert (=> b!2875081 (= e!1819440 ((as const (Array C!17664 Bool)) false))))

(declare-fun b!2875082 () Bool)

(assert (=> b!2875082 (= e!1819440 ((_ map or) (store ((as const (Array C!17664 Bool)) false) (h!39810 (v!34539 lt!1018502)) true) (content!4704 (t!233557 (v!34539 lt!1018502)))))))

(assert (= (and d!831002 c!465775) b!2875081))

(assert (= (and d!831002 (not c!465775)) b!2875082))

(declare-fun m!3292895 () Bool)

(assert (=> b!2875082 m!3292895))

(assert (=> b!2875082 m!3292711))

(assert (=> d!830766 d!831002))

(declare-fun d!831004 () Bool)

(declare-fun c!465776 () Bool)

(assert (=> d!831004 (= c!465776 ((_ is Nil!34390) (v!34539 lt!1018503)))))

(declare-fun e!1819441 () (InoxSet C!17664))

(assert (=> d!831004 (= (content!4704 (v!34539 lt!1018503)) e!1819441)))

(declare-fun b!2875083 () Bool)

(assert (=> b!2875083 (= e!1819441 ((as const (Array C!17664 Bool)) false))))

(declare-fun b!2875084 () Bool)

(assert (=> b!2875084 (= e!1819441 ((_ map or) (store ((as const (Array C!17664 Bool)) false) (h!39810 (v!34539 lt!1018503)) true) (content!4704 (t!233557 (v!34539 lt!1018503)))))))

(assert (= (and d!831004 c!465776) b!2875083))

(assert (= (and d!831004 (not c!465776)) b!2875084))

(declare-fun m!3292897 () Bool)

(assert (=> b!2875084 m!3292897))

(declare-fun m!3292899 () Bool)

(assert (=> b!2875084 m!3292899))

(assert (=> d!830766 d!831004))

(declare-fun c!465782 () Bool)

(declare-fun bm!185974 () Bool)

(declare-fun call!185980 () Option!6416)

(assert (=> bm!185974 (= call!185980 (getLanguageWitness!433 (ite c!465782 (regOne!17995 (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) (regOne!17994 (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun call!185979 () Option!6416)

(declare-fun bm!185975 () Bool)

(assert (=> bm!185975 (= call!185979 (getLanguageWitness!433 (ite c!465782 (regTwo!17995 (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) (regTwo!17994 (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun b!2875086 () Bool)

(declare-fun e!1819442 () Option!6416)

(assert (=> b!2875086 (= e!1819442 (Some!6415 (Cons!34390 (c!465376 (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) Nil!34390)))))

(declare-fun b!2875087 () Bool)

(declare-fun e!1819446 () Option!6416)

(assert (=> b!2875087 (= e!1819446 None!6415)))

(declare-fun b!2875088 () Bool)

(declare-fun e!1819449 () Option!6416)

(assert (=> b!2875088 (= e!1819449 (Some!6415 Nil!34390))))

(declare-fun b!2875089 () Bool)

(declare-fun e!1819447 () Option!6416)

(assert (=> b!2875089 (= e!1819447 None!6415)))

(declare-fun b!2875090 () Bool)

(declare-fun e!1819443 () Option!6416)

(assert (=> b!2875090 (= e!1819443 e!1819447)))

(declare-fun lt!1018598 () Option!6416)

(assert (=> b!2875090 (= lt!1018598 call!185980)))

(declare-fun c!465784 () Bool)

(assert (=> b!2875090 (= c!465784 ((_ is Some!6415) lt!1018598))))

(declare-fun b!2875091 () Bool)

(assert (=> b!2875091 (= e!1819442 e!1819449)))

(declare-fun c!465783 () Bool)

(assert (=> b!2875091 (= c!465783 ((_ is Star!8741) (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2875085 () Bool)

(declare-fun e!1819444 () Option!6416)

(declare-fun lt!1018597 () Option!6416)

(assert (=> b!2875085 (= e!1819444 lt!1018597)))

(declare-fun c!465777 () Bool)

(declare-fun d!831006 () Bool)

(assert (=> d!831006 (= c!465777 ((_ is EmptyExpr!8741) (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun e!1819445 () Option!6416)

(assert (=> d!831006 (= (getLanguageWitness!433 (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) e!1819445)))

(declare-fun b!2875092 () Bool)

(declare-fun e!1819448 () Option!6416)

(assert (=> b!2875092 (= e!1819445 e!1819448)))

(declare-fun c!465779 () Bool)

(assert (=> b!2875092 (= c!465779 ((_ is EmptyLang!8741) (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2875093 () Bool)

(declare-fun c!465780 () Bool)

(declare-fun lt!1018596 () Option!6416)

(assert (=> b!2875093 (= c!465780 ((_ is Some!6415) lt!1018596))))

(assert (=> b!2875093 (= lt!1018596 call!185979)))

(assert (=> b!2875093 (= e!1819447 e!1819446)))

(declare-fun b!2875094 () Bool)

(assert (=> b!2875094 (= e!1819448 None!6415)))

(declare-fun b!2875095 () Bool)

(assert (=> b!2875095 (= c!465782 ((_ is Union!8741) (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2875095 (= e!1819449 e!1819443)))

(declare-fun b!2875096 () Bool)

(assert (=> b!2875096 (= e!1819446 (Some!6415 (++!8177 (v!34539 lt!1018598) (v!34539 lt!1018596))))))

(declare-fun c!465781 () Bool)

(declare-fun b!2875097 () Bool)

(assert (=> b!2875097 (= c!465781 ((_ is ElementMatch!8741) (ite c!465586 (regTwo!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2875097 (= e!1819448 e!1819442)))

(declare-fun b!2875098 () Bool)

(assert (=> b!2875098 (= e!1819445 (Some!6415 Nil!34390))))

(declare-fun b!2875099 () Bool)

(assert (=> b!2875099 (= e!1819444 call!185979)))

(declare-fun b!2875100 () Bool)

(assert (=> b!2875100 (= e!1819443 e!1819444)))

(assert (=> b!2875100 (= lt!1018597 call!185980)))

(declare-fun c!465778 () Bool)

(assert (=> b!2875100 (= c!465778 ((_ is Some!6415) lt!1018597))))

(assert (= (and d!831006 c!465777) b!2875098))

(assert (= (and d!831006 (not c!465777)) b!2875092))

(assert (= (and b!2875092 c!465779) b!2875094))

(assert (= (and b!2875092 (not c!465779)) b!2875097))

(assert (= (and b!2875097 c!465781) b!2875086))

(assert (= (and b!2875097 (not c!465781)) b!2875091))

(assert (= (and b!2875091 c!465783) b!2875088))

(assert (= (and b!2875091 (not c!465783)) b!2875095))

(assert (= (and b!2875095 c!465782) b!2875100))

(assert (= (and b!2875095 (not c!465782)) b!2875090))

(assert (= (and b!2875100 c!465778) b!2875085))

(assert (= (and b!2875100 (not c!465778)) b!2875099))

(assert (= (and b!2875090 c!465784) b!2875093))

(assert (= (and b!2875090 (not c!465784)) b!2875089))

(assert (= (and b!2875093 c!465780) b!2875096))

(assert (= (and b!2875093 (not c!465780)) b!2875087))

(assert (= (or b!2875099 b!2875093) bm!185975))

(assert (= (or b!2875100 b!2875090) bm!185974))

(declare-fun m!3292901 () Bool)

(assert (=> bm!185974 m!3292901))

(declare-fun m!3292903 () Bool)

(assert (=> bm!185975 m!3292903))

(declare-fun m!3292905 () Bool)

(assert (=> b!2875096 m!3292905))

(assert (=> bm!185884 d!831006))

(declare-fun bs!522508 () Bool)

(declare-fun d!831008 () Bool)

(assert (= bs!522508 (and d!831008 d!830700)))

(declare-fun lambda!107246 () Int)

(assert (=> bs!522508 (not (= lambda!107246 lambda!107202))))

(declare-fun bs!522509 () Bool)

(assert (= bs!522509 (and d!831008 d!830814)))

(assert (=> bs!522509 (not (= lambda!107246 lambda!107232))))

(declare-fun bs!522510 () Bool)

(assert (= bs!522510 (and d!831008 d!830968)))

(assert (=> bs!522510 (not (= lambda!107246 lambda!107243))))

(declare-fun bs!522511 () Bool)

(assert (= bs!522511 (and d!831008 d!830888)))

(assert (=> bs!522511 (not (= lambda!107246 lambda!107239))))

(declare-fun bs!522512 () Bool)

(assert (= bs!522512 (and d!831008 d!830966)))

(assert (=> bs!522512 (not (= lambda!107246 lambda!107242))))

(declare-fun bs!522513 () Bool)

(assert (= bs!522513 (and d!831008 d!830744)))

(assert (=> bs!522513 (not (= lambda!107246 lambda!107211))))

(declare-fun bs!522514 () Bool)

(assert (= bs!522514 (and d!831008 d!830692)))

(assert (=> bs!522514 (not (= lambda!107246 lambda!107199))))

(declare-fun bs!522515 () Bool)

(assert (= bs!522515 (and d!831008 d!830780)))

(assert (=> bs!522515 (not (= lambda!107246 lambda!107221))))

(declare-fun bs!522516 () Bool)

(assert (= bs!522516 (and d!831008 d!830844)))

(assert (=> bs!522516 (= (= lambda!107232 lambda!107202) (= lambda!107246 lambda!107233))))

(declare-fun bs!522517 () Bool)

(assert (= bs!522517 (and d!831008 d!830756)))

(assert (=> bs!522517 (not (= lambda!107246 lambda!107216))))

(declare-fun bs!522518 () Bool)

(assert (= bs!522518 (and d!831008 d!830990)))

(assert (=> bs!522518 (not (= lambda!107246 lambda!107245))))

(declare-fun bs!522519 () Bool)

(assert (= bs!522519 (and d!831008 d!830808)))

(assert (=> bs!522519 (= (= lambda!107232 lambda!107196) (= lambda!107246 lambda!107231))))

(declare-fun bs!522520 () Bool)

(assert (= bs!522520 (and d!831008 d!830676)))

(assert (=> bs!522520 (not (= lambda!107246 lambda!107196))))

(assert (=> d!831008 true))

(assert (=> d!831008 (< (dynLambda!14315 order!18133 lambda!107232) (dynLambda!14315 order!18133 lambda!107246))))

(assert (=> d!831008 (= (exists!1167 (exprs!3201 lt!1018434) lambda!107232) (not (forall!7085 (exprs!3201 lt!1018434) lambda!107246)))))

(declare-fun bs!522521 () Bool)

(assert (= bs!522521 d!831008))

(declare-fun m!3292907 () Bool)

(assert (=> bs!522521 m!3292907))

(assert (=> d!830814 d!831008))

(declare-fun bm!185980 () Bool)

(declare-fun call!185985 () Bool)

(declare-fun c!465787 () Bool)

(assert (=> bm!185980 (= call!185985 (nullable!2691 (ite c!465787 (regOne!17995 (reg!9070 (h!39811 (exprs!3201 c!7184)))) (regOne!17994 (reg!9070 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun b!2875115 () Bool)

(declare-fun e!1819464 () Bool)

(declare-fun call!185986 () Bool)

(assert (=> b!2875115 (= e!1819464 call!185986)))

(declare-fun d!831010 () Bool)

(declare-fun res!1192374 () Bool)

(declare-fun e!1819467 () Bool)

(assert (=> d!831010 (=> res!1192374 e!1819467)))

(assert (=> d!831010 (= res!1192374 ((_ is EmptyExpr!8741) (reg!9070 (h!39811 (exprs!3201 c!7184)))))))

(assert (=> d!831010 (= (nullableFct!818 (reg!9070 (h!39811 (exprs!3201 c!7184)))) e!1819467)))

(declare-fun b!2875116 () Bool)

(declare-fun e!1819462 () Bool)

(assert (=> b!2875116 (= e!1819462 e!1819464)))

(declare-fun res!1192376 () Bool)

(assert (=> b!2875116 (= res!1192376 call!185985)))

(assert (=> b!2875116 (=> res!1192376 e!1819464)))

(declare-fun b!2875117 () Bool)

(declare-fun e!1819466 () Bool)

(assert (=> b!2875117 (= e!1819462 e!1819466)))

(declare-fun res!1192373 () Bool)

(assert (=> b!2875117 (= res!1192373 call!185985)))

(assert (=> b!2875117 (=> (not res!1192373) (not e!1819466))))

(declare-fun b!2875118 () Bool)

(declare-fun e!1819465 () Bool)

(declare-fun e!1819463 () Bool)

(assert (=> b!2875118 (= e!1819465 e!1819463)))

(declare-fun res!1192375 () Bool)

(assert (=> b!2875118 (=> res!1192375 e!1819463)))

(assert (=> b!2875118 (= res!1192375 ((_ is Star!8741) (reg!9070 (h!39811 (exprs!3201 c!7184)))))))

(declare-fun b!2875119 () Bool)

(assert (=> b!2875119 (= e!1819467 e!1819465)))

(declare-fun res!1192377 () Bool)

(assert (=> b!2875119 (=> (not res!1192377) (not e!1819465))))

(assert (=> b!2875119 (= res!1192377 (and (not ((_ is EmptyLang!8741) (reg!9070 (h!39811 (exprs!3201 c!7184))))) (not ((_ is ElementMatch!8741) (reg!9070 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun b!2875120 () Bool)

(assert (=> b!2875120 (= e!1819466 call!185986)))

(declare-fun b!2875121 () Bool)

(assert (=> b!2875121 (= e!1819463 e!1819462)))

(assert (=> b!2875121 (= c!465787 ((_ is Union!8741) (reg!9070 (h!39811 (exprs!3201 c!7184)))))))

(declare-fun bm!185981 () Bool)

(assert (=> bm!185981 (= call!185986 (nullable!2691 (ite c!465787 (regTwo!17995 (reg!9070 (h!39811 (exprs!3201 c!7184)))) (regTwo!17994 (reg!9070 (h!39811 (exprs!3201 c!7184)))))))))

(assert (= (and d!831010 (not res!1192374)) b!2875119))

(assert (= (and b!2875119 res!1192377) b!2875118))

(assert (= (and b!2875118 (not res!1192375)) b!2875121))

(assert (= (and b!2875121 c!465787) b!2875116))

(assert (= (and b!2875121 (not c!465787)) b!2875117))

(assert (= (and b!2875116 (not res!1192376)) b!2875115))

(assert (= (and b!2875117 res!1192373) b!2875120))

(assert (= (or b!2875116 b!2875117) bm!185980))

(assert (= (or b!2875115 b!2875120) bm!185981))

(declare-fun m!3292909 () Bool)

(assert (=> bm!185980 m!3292909))

(declare-fun m!3292911 () Bool)

(assert (=> bm!185981 m!3292911))

(assert (=> d!830740 d!831010))

(declare-fun d!831012 () Bool)

(assert (=> d!831012 (= (isEmpty!18722 (tail!4571 (get!10338 lt!1018433))) ((_ is Nil!34390) (tail!4571 (get!10338 lt!1018433))))))

(assert (=> d!830790 d!831012))

(declare-fun call!185988 () Option!6416)

(declare-fun bm!185982 () Bool)

(declare-fun c!465793 () Bool)

(assert (=> bm!185982 (= call!185988 (getLanguageWitness!433 (ite c!465793 (regOne!17995 (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) (regOne!17994 (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun call!185987 () Option!6416)

(declare-fun bm!185983 () Bool)

(assert (=> bm!185983 (= call!185987 (getLanguageWitness!433 (ite c!465793 (regTwo!17995 (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) (regTwo!17994 (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun b!2875123 () Bool)

(declare-fun e!1819468 () Option!6416)

(assert (=> b!2875123 (= e!1819468 (Some!6415 (Cons!34390 (c!465376 (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) Nil!34390)))))

(declare-fun b!2875124 () Bool)

(declare-fun e!1819472 () Option!6416)

(assert (=> b!2875124 (= e!1819472 None!6415)))

(declare-fun b!2875125 () Bool)

(declare-fun e!1819475 () Option!6416)

(assert (=> b!2875125 (= e!1819475 (Some!6415 Nil!34390))))

(declare-fun b!2875126 () Bool)

(declare-fun e!1819473 () Option!6416)

(assert (=> b!2875126 (= e!1819473 None!6415)))

(declare-fun b!2875127 () Bool)

(declare-fun e!1819469 () Option!6416)

(assert (=> b!2875127 (= e!1819469 e!1819473)))

(declare-fun lt!1018601 () Option!6416)

(assert (=> b!2875127 (= lt!1018601 call!185988)))

(declare-fun c!465795 () Bool)

(assert (=> b!2875127 (= c!465795 ((_ is Some!6415) lt!1018601))))

(declare-fun b!2875128 () Bool)

(assert (=> b!2875128 (= e!1819468 e!1819475)))

(declare-fun c!465794 () Bool)

(assert (=> b!2875128 (= c!465794 ((_ is Star!8741) (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2875122 () Bool)

(declare-fun e!1819470 () Option!6416)

(declare-fun lt!1018600 () Option!6416)

(assert (=> b!2875122 (= e!1819470 lt!1018600)))

(declare-fun d!831014 () Bool)

(declare-fun c!465788 () Bool)

(assert (=> d!831014 (= c!465788 ((_ is EmptyExpr!8741) (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun e!1819471 () Option!6416)

(assert (=> d!831014 (= (getLanguageWitness!433 (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) e!1819471)))

(declare-fun b!2875129 () Bool)

(declare-fun e!1819474 () Option!6416)

(assert (=> b!2875129 (= e!1819471 e!1819474)))

(declare-fun c!465790 () Bool)

(assert (=> b!2875129 (= c!465790 ((_ is EmptyLang!8741) (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2875130 () Bool)

(declare-fun c!465791 () Bool)

(declare-fun lt!1018599 () Option!6416)

(assert (=> b!2875130 (= c!465791 ((_ is Some!6415) lt!1018599))))

(assert (=> b!2875130 (= lt!1018599 call!185987)))

(assert (=> b!2875130 (= e!1819473 e!1819472)))

(declare-fun b!2875131 () Bool)

(assert (=> b!2875131 (= e!1819474 None!6415)))

(declare-fun b!2875132 () Bool)

(assert (=> b!2875132 (= c!465793 ((_ is Union!8741) (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2875132 (= e!1819475 e!1819469)))

(declare-fun b!2875133 () Bool)

(assert (=> b!2875133 (= e!1819472 (Some!6415 (++!8177 (v!34539 lt!1018601) (v!34539 lt!1018599))))))

(declare-fun c!465792 () Bool)

(declare-fun b!2875134 () Bool)

(assert (=> b!2875134 (= c!465792 ((_ is ElementMatch!8741) (ite c!465586 (regOne!17995 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2875134 (= e!1819474 e!1819468)))

(declare-fun b!2875135 () Bool)

(assert (=> b!2875135 (= e!1819471 (Some!6415 Nil!34390))))

(declare-fun b!2875136 () Bool)

(assert (=> b!2875136 (= e!1819470 call!185987)))

(declare-fun b!2875137 () Bool)

(assert (=> b!2875137 (= e!1819469 e!1819470)))

(assert (=> b!2875137 (= lt!1018600 call!185988)))

(declare-fun c!465789 () Bool)

(assert (=> b!2875137 (= c!465789 ((_ is Some!6415) lt!1018600))))

(assert (= (and d!831014 c!465788) b!2875135))

(assert (= (and d!831014 (not c!465788)) b!2875129))

(assert (= (and b!2875129 c!465790) b!2875131))

(assert (= (and b!2875129 (not c!465790)) b!2875134))

(assert (= (and b!2875134 c!465792) b!2875123))

(assert (= (and b!2875134 (not c!465792)) b!2875128))

(assert (= (and b!2875128 c!465794) b!2875125))

(assert (= (and b!2875128 (not c!465794)) b!2875132))

(assert (= (and b!2875132 c!465793) b!2875137))

(assert (= (and b!2875132 (not c!465793)) b!2875127))

(assert (= (and b!2875137 c!465789) b!2875122))

(assert (= (and b!2875137 (not c!465789)) b!2875136))

(assert (= (and b!2875127 c!465795) b!2875130))

(assert (= (and b!2875127 (not c!465795)) b!2875126))

(assert (= (and b!2875130 c!465791) b!2875133))

(assert (= (and b!2875130 (not c!465791)) b!2875124))

(assert (= (or b!2875136 b!2875130) bm!185983))

(assert (= (or b!2875137 b!2875127) bm!185982))

(declare-fun m!3292913 () Bool)

(assert (=> bm!185982 m!3292913))

(declare-fun m!3292915 () Bool)

(assert (=> bm!185983 m!3292915))

(declare-fun m!3292917 () Bool)

(assert (=> b!2875133 m!3292917))

(assert (=> bm!185883 d!831014))

(declare-fun d!831016 () Bool)

(assert (=> d!831016 (= (nullable!2691 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))) (nullableFct!818 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(declare-fun bs!522522 () Bool)

(assert (= bs!522522 d!831016))

(assert (=> bs!522522 m!3292049))

(declare-fun m!3292919 () Bool)

(assert (=> bs!522522 m!3292919))

(assert (=> b!2874649 d!831016))

(assert (=> b!2874647 d!830896))

(declare-fun bm!185984 () Bool)

(declare-fun call!185989 () Bool)

(declare-fun c!465796 () Bool)

(assert (=> bm!185984 (= call!185989 (nullable!2691 (ite c!465796 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2875138 () Bool)

(declare-fun e!1819478 () Bool)

(declare-fun call!185990 () Bool)

(assert (=> b!2875138 (= e!1819478 call!185990)))

(declare-fun d!831018 () Bool)

(declare-fun res!1192379 () Bool)

(declare-fun e!1819481 () Bool)

(assert (=> d!831018 (=> res!1192379 e!1819481)))

(assert (=> d!831018 (= res!1192379 ((_ is EmptyExpr!8741) (h!39811 (exprs!3201 c!7184))))))

(assert (=> d!831018 (= (nullableFct!818 (h!39811 (exprs!3201 c!7184))) e!1819481)))

(declare-fun b!2875139 () Bool)

(declare-fun e!1819476 () Bool)

(assert (=> b!2875139 (= e!1819476 e!1819478)))

(declare-fun res!1192381 () Bool)

(assert (=> b!2875139 (= res!1192381 call!185989)))

(assert (=> b!2875139 (=> res!1192381 e!1819478)))

(declare-fun b!2875140 () Bool)

(declare-fun e!1819480 () Bool)

(assert (=> b!2875140 (= e!1819476 e!1819480)))

(declare-fun res!1192378 () Bool)

(assert (=> b!2875140 (= res!1192378 call!185989)))

(assert (=> b!2875140 (=> (not res!1192378) (not e!1819480))))

(declare-fun b!2875141 () Bool)

(declare-fun e!1819479 () Bool)

(declare-fun e!1819477 () Bool)

(assert (=> b!2875141 (= e!1819479 e!1819477)))

(declare-fun res!1192380 () Bool)

(assert (=> b!2875141 (=> res!1192380 e!1819477)))

(assert (=> b!2875141 (= res!1192380 ((_ is Star!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun b!2875142 () Bool)

(assert (=> b!2875142 (= e!1819481 e!1819479)))

(declare-fun res!1192382 () Bool)

(assert (=> b!2875142 (=> (not res!1192382) (not e!1819479))))

(assert (=> b!2875142 (= res!1192382 (and (not ((_ is EmptyLang!8741) (h!39811 (exprs!3201 c!7184)))) (not ((_ is ElementMatch!8741) (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2875143 () Bool)

(assert (=> b!2875143 (= e!1819480 call!185990)))

(declare-fun b!2875144 () Bool)

(assert (=> b!2875144 (= e!1819477 e!1819476)))

(assert (=> b!2875144 (= c!465796 ((_ is Union!8741) (h!39811 (exprs!3201 c!7184))))))

(declare-fun bm!185985 () Bool)

(assert (=> bm!185985 (= call!185990 (nullable!2691 (ite c!465796 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(assert (= (and d!831018 (not res!1192379)) b!2875142))

(assert (= (and b!2875142 res!1192382) b!2875141))

(assert (= (and b!2875141 (not res!1192380)) b!2875144))

(assert (= (and b!2875144 c!465796) b!2875139))

(assert (= (and b!2875144 (not c!465796)) b!2875140))

(assert (= (and b!2875139 (not res!1192381)) b!2875138))

(assert (= (and b!2875140 res!1192378) b!2875143))

(assert (= (or b!2875139 b!2875140) bm!185984))

(assert (= (or b!2875138 b!2875143) bm!185985))

(declare-fun m!3292921 () Bool)

(assert (=> bm!185984 m!3292921))

(declare-fun m!3292923 () Bool)

(assert (=> bm!185985 m!3292923))

(assert (=> d!830734 d!831018))

(assert (=> b!2874310 d!830930))

(assert (=> b!2874310 d!830932))

(declare-fun d!831020 () Bool)

(assert (=> d!831020 (= (nullable!2691 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))) (nullableFct!818 (reg!9070 (ite c!465478 (reg!9070 (h!39811 (exprs!3201 c!7184))) (ite c!465477 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regOne!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun bs!522523 () Bool)

(assert (= bs!522523 d!831020))

(declare-fun m!3292925 () Bool)

(assert (=> bs!522523 m!3292925))

(assert (=> b!2874607 d!831020))

(assert (=> d!830724 d!830720))

(assert (=> d!830724 d!830718))

(assert (=> d!830724 d!830694))

(declare-fun d!831022 () Bool)

(declare-fun c!465797 () Bool)

(assert (=> d!831022 (= c!465797 (isEmpty!18722 (tail!4571 (get!10338 (getLanguageWitness!434 lt!1018434)))))))

(declare-fun e!1819482 () Bool)

(assert (=> d!831022 (= (matchZipper!483 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 (getLanguageWitness!434 lt!1018434)))) (tail!4571 (get!10338 (getLanguageWitness!434 lt!1018434)))) e!1819482)))

(declare-fun b!2875145 () Bool)

(assert (=> b!2875145 (= e!1819482 (nullableZipper!719 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 (getLanguageWitness!434 lt!1018434))))))))

(declare-fun b!2875146 () Bool)

(assert (=> b!2875146 (= e!1819482 (matchZipper!483 (derivationStepZipper!475 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 (getLanguageWitness!434 lt!1018434)))) (head!6346 (tail!4571 (get!10338 (getLanguageWitness!434 lt!1018434))))) (tail!4571 (tail!4571 (get!10338 (getLanguageWitness!434 lt!1018434))))))))

(assert (= (and d!831022 c!465797) b!2875145))

(assert (= (and d!831022 (not c!465797)) b!2875146))

(assert (=> d!831022 m!3292445))

(declare-fun m!3292927 () Bool)

(assert (=> d!831022 m!3292927))

(assert (=> b!2875145 m!3292443))

(declare-fun m!3292929 () Bool)

(assert (=> b!2875145 m!3292929))

(assert (=> b!2875146 m!3292445))

(declare-fun m!3292931 () Bool)

(assert (=> b!2875146 m!3292931))

(assert (=> b!2875146 m!3292443))

(assert (=> b!2875146 m!3292931))

(declare-fun m!3292933 () Bool)

(assert (=> b!2875146 m!3292933))

(assert (=> b!2875146 m!3292445))

(declare-fun m!3292935 () Bool)

(assert (=> b!2875146 m!3292935))

(assert (=> b!2875146 m!3292933))

(assert (=> b!2875146 m!3292935))

(declare-fun m!3292937 () Bool)

(assert (=> b!2875146 m!3292937))

(assert (=> b!2874616 d!831022))

(declare-fun bs!522524 () Bool)

(declare-fun d!831024 () Bool)

(assert (= bs!522524 (and d!831024 d!830792)))

(declare-fun lambda!107247 () Int)

(assert (=> bs!522524 (= (= (head!6346 (get!10338 (getLanguageWitness!434 lt!1018434))) (head!6346 (get!10338 lt!1018433))) (= lambda!107247 lambda!107227))))

(declare-fun bs!522525 () Bool)

(assert (= bs!522525 (and d!831024 d!830976)))

(assert (=> bs!522525 (= (= (head!6346 (get!10338 (getLanguageWitness!434 lt!1018434))) (head!6346 (tail!4571 (get!10338 lt!1018433)))) (= lambda!107247 lambda!107244))))

(assert (=> d!831024 true))

(assert (=> d!831024 (= (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 (getLanguageWitness!434 lt!1018434)))) (flatMap!222 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) lambda!107247))))

(declare-fun bs!522526 () Bool)

(assert (= bs!522526 d!831024))

(assert (=> bs!522526 m!3291973))

(declare-fun m!3292939 () Bool)

(assert (=> bs!522526 m!3292939))

(assert (=> b!2874616 d!831024))

(declare-fun d!831026 () Bool)

(assert (=> d!831026 (= (head!6346 (get!10338 (getLanguageWitness!434 lt!1018434))) (h!39810 (get!10338 (getLanguageWitness!434 lt!1018434))))))

(assert (=> b!2874616 d!831026))

(declare-fun d!831028 () Bool)

(assert (=> d!831028 (= (tail!4571 (get!10338 (getLanguageWitness!434 lt!1018434))) (t!233557 (get!10338 (getLanguageWitness!434 lt!1018434))))))

(assert (=> b!2874616 d!831028))

(declare-fun d!831030 () Bool)

(declare-fun c!465798 () Bool)

(assert (=> d!831030 (= c!465798 ((_ is Nil!34392) (t!233559 lt!1018438)))))

(declare-fun e!1819483 () (InoxSet Context!5402))

(assert (=> d!831030 (= (content!4702 (t!233559 lt!1018438)) e!1819483)))

(declare-fun b!2875147 () Bool)

(assert (=> b!2875147 (= e!1819483 ((as const (Array Context!5402 Bool)) false))))

(declare-fun b!2875148 () Bool)

(assert (=> b!2875148 (= e!1819483 ((_ map or) (store ((as const (Array Context!5402 Bool)) false) (h!39812 (t!233559 lt!1018438)) true) (content!4702 (t!233559 (t!233559 lt!1018438)))))))

(assert (= (and d!831030 c!465798) b!2875147))

(assert (= (and d!831030 (not c!465798)) b!2875148))

(declare-fun m!3292941 () Bool)

(assert (=> b!2875148 m!3292941))

(declare-fun m!3292943 () Bool)

(assert (=> b!2875148 m!3292943))

(assert (=> b!2874343 d!831030))

(declare-fun d!831032 () Bool)

(declare-fun res!1192383 () Bool)

(declare-fun e!1819484 () Bool)

(assert (=> d!831032 (=> res!1192383 e!1819484)))

(assert (=> d!831032 (= res!1192383 ((_ is Nil!34391) (t!233558 (exprs!3201 c!7184))))))

(assert (=> d!831032 (= (forall!7085 (t!233558 (exprs!3201 c!7184)) lambda!107199) e!1819484)))

(declare-fun b!2875149 () Bool)

(declare-fun e!1819485 () Bool)

(assert (=> b!2875149 (= e!1819484 e!1819485)))

(declare-fun res!1192384 () Bool)

(assert (=> b!2875149 (=> (not res!1192384) (not e!1819485))))

(assert (=> b!2875149 (= res!1192384 (dynLambda!14317 lambda!107199 (h!39811 (t!233558 (exprs!3201 c!7184)))))))

(declare-fun b!2875150 () Bool)

(assert (=> b!2875150 (= e!1819485 (forall!7085 (t!233558 (t!233558 (exprs!3201 c!7184))) lambda!107199))))

(assert (= (and d!831032 (not res!1192383)) b!2875149))

(assert (= (and b!2875149 res!1192384) b!2875150))

(declare-fun b_lambda!86105 () Bool)

(assert (=> (not b_lambda!86105) (not b!2875149)))

(declare-fun m!3292945 () Bool)

(assert (=> b!2875149 m!3292945))

(declare-fun m!3292947 () Bool)

(assert (=> b!2875150 m!3292947))

(assert (=> b!2874695 d!831032))

(declare-fun c!465799 () Bool)

(declare-fun call!185993 () Bool)

(declare-fun c!465800 () Bool)

(declare-fun bm!185986 () Bool)

(assert (=> bm!185986 (= call!185993 (validRegex!3519 (ite c!465800 (reg!9070 lt!1018514) (ite c!465799 (regTwo!17995 lt!1018514) (regOne!17994 lt!1018514)))))))

(declare-fun b!2875151 () Bool)

(declare-fun res!1192385 () Bool)

(declare-fun e!1819488 () Bool)

(assert (=> b!2875151 (=> res!1192385 e!1819488)))

(assert (=> b!2875151 (= res!1192385 (not ((_ is Concat!14062) lt!1018514)))))

(declare-fun e!1819487 () Bool)

(assert (=> b!2875151 (= e!1819487 e!1819488)))

(declare-fun bm!185987 () Bool)

(declare-fun call!185991 () Bool)

(assert (=> bm!185987 (= call!185991 call!185993)))

(declare-fun bm!185988 () Bool)

(declare-fun call!185992 () Bool)

(assert (=> bm!185988 (= call!185992 (validRegex!3519 (ite c!465799 (regOne!17995 lt!1018514) (regTwo!17994 lt!1018514))))))

(declare-fun b!2875152 () Bool)

(declare-fun e!1819492 () Bool)

(assert (=> b!2875152 (= e!1819492 call!185991)))

(declare-fun b!2875153 () Bool)

(declare-fun e!1819491 () Bool)

(assert (=> b!2875153 (= e!1819491 call!185992)))

(declare-fun b!2875154 () Bool)

(declare-fun res!1192386 () Bool)

(assert (=> b!2875154 (=> (not res!1192386) (not e!1819492))))

(assert (=> b!2875154 (= res!1192386 call!185992)))

(assert (=> b!2875154 (= e!1819487 e!1819492)))

(declare-fun b!2875155 () Bool)

(assert (=> b!2875155 (= e!1819488 e!1819491)))

(declare-fun res!1192389 () Bool)

(assert (=> b!2875155 (=> (not res!1192389) (not e!1819491))))

(assert (=> b!2875155 (= res!1192389 call!185991)))

(declare-fun b!2875156 () Bool)

(declare-fun e!1819486 () Bool)

(declare-fun e!1819490 () Bool)

(assert (=> b!2875156 (= e!1819486 e!1819490)))

(declare-fun res!1192388 () Bool)

(assert (=> b!2875156 (= res!1192388 (not (nullable!2691 (reg!9070 lt!1018514))))))

(assert (=> b!2875156 (=> (not res!1192388) (not e!1819490))))

(declare-fun d!831034 () Bool)

(declare-fun res!1192387 () Bool)

(declare-fun e!1819489 () Bool)

(assert (=> d!831034 (=> res!1192387 e!1819489)))

(assert (=> d!831034 (= res!1192387 ((_ is ElementMatch!8741) lt!1018514))))

(assert (=> d!831034 (= (validRegex!3519 lt!1018514) e!1819489)))

(declare-fun b!2875157 () Bool)

(assert (=> b!2875157 (= e!1819486 e!1819487)))

(assert (=> b!2875157 (= c!465799 ((_ is Union!8741) lt!1018514))))

(declare-fun b!2875158 () Bool)

(assert (=> b!2875158 (= e!1819490 call!185993)))

(declare-fun b!2875159 () Bool)

(assert (=> b!2875159 (= e!1819489 e!1819486)))

(assert (=> b!2875159 (= c!465800 ((_ is Star!8741) lt!1018514))))

(assert (= (and d!831034 (not res!1192387)) b!2875159))

(assert (= (and b!2875159 c!465800) b!2875156))

(assert (= (and b!2875159 (not c!465800)) b!2875157))

(assert (= (and b!2875156 res!1192388) b!2875158))

(assert (= (and b!2875157 c!465799) b!2875154))

(assert (= (and b!2875157 (not c!465799)) b!2875151))

(assert (= (and b!2875154 res!1192386) b!2875152))

(assert (= (and b!2875151 (not res!1192385)) b!2875155))

(assert (= (and b!2875155 res!1192389) b!2875153))

(assert (= (or b!2875152 b!2875155) bm!185987))

(assert (= (or b!2875154 b!2875153) bm!185988))

(assert (= (or b!2875158 bm!185987) bm!185986))

(declare-fun m!3292949 () Bool)

(assert (=> bm!185986 m!3292949))

(declare-fun m!3292951 () Bool)

(assert (=> bm!185988 m!3292951))

(declare-fun m!3292953 () Bool)

(assert (=> b!2875156 m!3292953))

(assert (=> d!830744 d!831034))

(declare-fun d!831036 () Bool)

(declare-fun res!1192390 () Bool)

(declare-fun e!1819493 () Bool)

(assert (=> d!831036 (=> res!1192390 e!1819493)))

(assert (=> d!831036 (= res!1192390 ((_ is Nil!34391) (unfocusZipperList!68 lt!1018429)))))

(assert (=> d!831036 (= (forall!7085 (unfocusZipperList!68 lt!1018429) lambda!107211) e!1819493)))

(declare-fun b!2875160 () Bool)

(declare-fun e!1819494 () Bool)

(assert (=> b!2875160 (= e!1819493 e!1819494)))

(declare-fun res!1192391 () Bool)

(assert (=> b!2875160 (=> (not res!1192391) (not e!1819494))))

(assert (=> b!2875160 (= res!1192391 (dynLambda!14317 lambda!107211 (h!39811 (unfocusZipperList!68 lt!1018429))))))

(declare-fun b!2875161 () Bool)

(assert (=> b!2875161 (= e!1819494 (forall!7085 (t!233558 (unfocusZipperList!68 lt!1018429)) lambda!107211))))

(assert (= (and d!831036 (not res!1192390)) b!2875160))

(assert (= (and b!2875160 res!1192391) b!2875161))

(declare-fun b_lambda!86107 () Bool)

(assert (=> (not b_lambda!86107) (not b!2875160)))

(declare-fun m!3292955 () Bool)

(assert (=> b!2875160 m!3292955))

(declare-fun m!3292957 () Bool)

(assert (=> b!2875161 m!3292957))

(assert (=> d!830744 d!831036))

(declare-fun e!1819496 () Bool)

(declare-fun b!2875165 () Bool)

(declare-fun lt!1018602 () List!34514)

(assert (=> b!2875165 (= e!1819496 (or (not (= (v!34539 lt!1018520) Nil!34390)) (= lt!1018602 (v!34539 lt!1018522))))))

(declare-fun d!831038 () Bool)

(assert (=> d!831038 e!1819496))

(declare-fun res!1192392 () Bool)

(assert (=> d!831038 (=> (not res!1192392) (not e!1819496))))

(assert (=> d!831038 (= res!1192392 (= (content!4704 lt!1018602) ((_ map or) (content!4704 (v!34539 lt!1018522)) (content!4704 (v!34539 lt!1018520)))))))

(declare-fun e!1819495 () List!34514)

(assert (=> d!831038 (= lt!1018602 e!1819495)))

(declare-fun c!465801 () Bool)

(assert (=> d!831038 (= c!465801 ((_ is Nil!34390) (v!34539 lt!1018522)))))

(assert (=> d!831038 (= (++!8177 (v!34539 lt!1018522) (v!34539 lt!1018520)) lt!1018602)))

(declare-fun b!2875164 () Bool)

(declare-fun res!1192393 () Bool)

(assert (=> b!2875164 (=> (not res!1192393) (not e!1819496))))

(assert (=> b!2875164 (= res!1192393 (= (size!26323 lt!1018602) (+ (size!26323 (v!34539 lt!1018522)) (size!26323 (v!34539 lt!1018520)))))))

(declare-fun b!2875163 () Bool)

(assert (=> b!2875163 (= e!1819495 (Cons!34390 (h!39810 (v!34539 lt!1018522)) (++!8177 (t!233557 (v!34539 lt!1018522)) (v!34539 lt!1018520))))))

(declare-fun b!2875162 () Bool)

(assert (=> b!2875162 (= e!1819495 (v!34539 lt!1018520))))

(assert (= (and d!831038 c!465801) b!2875162))

(assert (= (and d!831038 (not c!465801)) b!2875163))

(assert (= (and d!831038 res!1192392) b!2875164))

(assert (= (and b!2875164 res!1192393) b!2875165))

(declare-fun m!3292959 () Bool)

(assert (=> d!831038 m!3292959))

(declare-fun m!3292961 () Bool)

(assert (=> d!831038 m!3292961))

(declare-fun m!3292963 () Bool)

(assert (=> d!831038 m!3292963))

(declare-fun m!3292965 () Bool)

(assert (=> b!2875164 m!3292965))

(declare-fun m!3292967 () Bool)

(assert (=> b!2875164 m!3292967))

(declare-fun m!3292969 () Bool)

(assert (=> b!2875164 m!3292969))

(declare-fun m!3292971 () Bool)

(assert (=> b!2875163 m!3292971))

(assert (=> b!2874459 d!831038))

(declare-fun call!185995 () Option!6416)

(declare-fun c!465807 () Bool)

(declare-fun bm!185989 () Bool)

(assert (=> bm!185989 (= call!185995 (getLanguageWitness!433 (ite c!465807 (regOne!17995 (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) (regOne!17994 (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun call!185994 () Option!6416)

(declare-fun bm!185990 () Bool)

(assert (=> bm!185990 (= call!185994 (getLanguageWitness!433 (ite c!465807 (regTwo!17995 (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) (regTwo!17994 (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun e!1819497 () Option!6416)

(declare-fun b!2875167 () Bool)

(assert (=> b!2875167 (= e!1819497 (Some!6415 (Cons!34390 (c!465376 (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) Nil!34390)))))

(declare-fun b!2875168 () Bool)

(declare-fun e!1819501 () Option!6416)

(assert (=> b!2875168 (= e!1819501 None!6415)))

(declare-fun b!2875169 () Bool)

(declare-fun e!1819504 () Option!6416)

(assert (=> b!2875169 (= e!1819504 (Some!6415 Nil!34390))))

(declare-fun b!2875170 () Bool)

(declare-fun e!1819502 () Option!6416)

(assert (=> b!2875170 (= e!1819502 None!6415)))

(declare-fun b!2875171 () Bool)

(declare-fun e!1819498 () Option!6416)

(assert (=> b!2875171 (= e!1819498 e!1819502)))

(declare-fun lt!1018605 () Option!6416)

(assert (=> b!2875171 (= lt!1018605 call!185995)))

(declare-fun c!465809 () Bool)

(assert (=> b!2875171 (= c!465809 ((_ is Some!6415) lt!1018605))))

(declare-fun b!2875172 () Bool)

(assert (=> b!2875172 (= e!1819497 e!1819504)))

(declare-fun c!465808 () Bool)

(assert (=> b!2875172 (= c!465808 ((_ is Star!8741) (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2875166 () Bool)

(declare-fun e!1819499 () Option!6416)

(declare-fun lt!1018604 () Option!6416)

(assert (=> b!2875166 (= e!1819499 lt!1018604)))

(declare-fun c!465802 () Bool)

(declare-fun d!831040 () Bool)

(assert (=> d!831040 (= c!465802 ((_ is EmptyExpr!8741) (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun e!1819500 () Option!6416)

(assert (=> d!831040 (= (getLanguageWitness!433 (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) e!1819500)))

(declare-fun b!2875173 () Bool)

(declare-fun e!1819503 () Option!6416)

(assert (=> b!2875173 (= e!1819500 e!1819503)))

(declare-fun c!465804 () Bool)

(assert (=> b!2875173 (= c!465804 ((_ is EmptyLang!8741) (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2875174 () Bool)

(declare-fun c!465805 () Bool)

(declare-fun lt!1018603 () Option!6416)

(assert (=> b!2875174 (= c!465805 ((_ is Some!6415) lt!1018603))))

(assert (=> b!2875174 (= lt!1018603 call!185994)))

(assert (=> b!2875174 (= e!1819502 e!1819501)))

(declare-fun b!2875175 () Bool)

(assert (=> b!2875175 (= e!1819503 None!6415)))

(declare-fun b!2875176 () Bool)

(assert (=> b!2875176 (= c!465807 ((_ is Union!8741) (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2875176 (= e!1819504 e!1819498)))

(declare-fun b!2875177 () Bool)

(assert (=> b!2875177 (= e!1819501 (Some!6415 (++!8177 (v!34539 lt!1018605) (v!34539 lt!1018603))))))

(declare-fun c!465806 () Bool)

(declare-fun b!2875178 () Bool)

(assert (=> b!2875178 (= c!465806 ((_ is ElementMatch!8741) (ite c!465572 (regTwo!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2875178 (= e!1819503 e!1819497)))

(declare-fun b!2875179 () Bool)

(assert (=> b!2875179 (= e!1819500 (Some!6415 Nil!34390))))

(declare-fun b!2875180 () Bool)

(assert (=> b!2875180 (= e!1819499 call!185994)))

(declare-fun b!2875181 () Bool)

(assert (=> b!2875181 (= e!1819498 e!1819499)))

(assert (=> b!2875181 (= lt!1018604 call!185995)))

(declare-fun c!465803 () Bool)

(assert (=> b!2875181 (= c!465803 ((_ is Some!6415) lt!1018604))))

(assert (= (and d!831040 c!465802) b!2875179))

(assert (= (and d!831040 (not c!465802)) b!2875173))

(assert (= (and b!2875173 c!465804) b!2875175))

(assert (= (and b!2875173 (not c!465804)) b!2875178))

(assert (= (and b!2875178 c!465806) b!2875167))

(assert (= (and b!2875178 (not c!465806)) b!2875172))

(assert (= (and b!2875172 c!465808) b!2875169))

(assert (= (and b!2875172 (not c!465808)) b!2875176))

(assert (= (and b!2875176 c!465807) b!2875181))

(assert (= (and b!2875176 (not c!465807)) b!2875171))

(assert (= (and b!2875181 c!465803) b!2875166))

(assert (= (and b!2875181 (not c!465803)) b!2875180))

(assert (= (and b!2875171 c!465809) b!2875174))

(assert (= (and b!2875171 (not c!465809)) b!2875170))

(assert (= (and b!2875174 c!465805) b!2875177))

(assert (= (and b!2875174 (not c!465805)) b!2875168))

(assert (= (or b!2875180 b!2875174) bm!185990))

(assert (= (or b!2875181 b!2875171) bm!185989))

(declare-fun m!3292973 () Bool)

(assert (=> bm!185989 m!3292973))

(declare-fun m!3292975 () Bool)

(assert (=> bm!185990 m!3292975))

(declare-fun m!3292977 () Bool)

(assert (=> b!2875177 m!3292977))

(assert (=> bm!185882 d!831040))

(declare-fun d!831042 () Bool)

(declare-fun c!465810 () Bool)

(assert (=> d!831042 (= c!465810 ((_ is Nil!34392) res!1192228))))

(declare-fun e!1819505 () (InoxSet Context!5402))

(assert (=> d!831042 (= (content!4702 res!1192228) e!1819505)))

(declare-fun b!2875182 () Bool)

(assert (=> b!2875182 (= e!1819505 ((as const (Array Context!5402 Bool)) false))))

(declare-fun b!2875183 () Bool)

(assert (=> b!2875183 (= e!1819505 ((_ map or) (store ((as const (Array Context!5402 Bool)) false) (h!39812 res!1192228) true) (content!4702 (t!233559 res!1192228))))))

(assert (= (and d!831042 c!465810) b!2875182))

(assert (= (and d!831042 (not c!465810)) b!2875183))

(declare-fun m!3292979 () Bool)

(assert (=> b!2875183 m!3292979))

(declare-fun m!3292981 () Bool)

(assert (=> b!2875183 m!3292981))

(assert (=> b!2874587 d!831042))

(assert (=> b!2874306 d!830902))

(declare-fun d!831044 () Bool)

(declare-fun lt!1018606 () Int)

(assert (=> d!831044 (>= lt!1018606 0)))

(declare-fun e!1819506 () Int)

(assert (=> d!831044 (= lt!1018606 e!1819506)))

(declare-fun c!465811 () Bool)

(assert (=> d!831044 (= c!465811 ((_ is Nil!34390) lt!1018532))))

(assert (=> d!831044 (= (size!26323 lt!1018532) lt!1018606)))

(declare-fun b!2875184 () Bool)

(assert (=> b!2875184 (= e!1819506 0)))

(declare-fun b!2875185 () Bool)

(assert (=> b!2875185 (= e!1819506 (+ 1 (size!26323 (t!233557 lt!1018532))))))

(assert (= (and d!831044 c!465811) b!2875184))

(assert (= (and d!831044 (not c!465811)) b!2875185))

(declare-fun m!3292983 () Bool)

(assert (=> b!2875185 m!3292983))

(assert (=> b!2874506 d!831044))

(declare-fun d!831046 () Bool)

(declare-fun lt!1018607 () Int)

(assert (=> d!831046 (>= lt!1018607 0)))

(declare-fun e!1819507 () Int)

(assert (=> d!831046 (= lt!1018607 e!1819507)))

(declare-fun c!465812 () Bool)

(assert (=> d!831046 (= c!465812 ((_ is Nil!34390) (v!34539 lt!1018502)))))

(assert (=> d!831046 (= (size!26323 (v!34539 lt!1018502)) lt!1018607)))

(declare-fun b!2875186 () Bool)

(assert (=> b!2875186 (= e!1819507 0)))

(declare-fun b!2875187 () Bool)

(assert (=> b!2875187 (= e!1819507 (+ 1 (size!26323 (t!233557 (v!34539 lt!1018502)))))))

(assert (= (and d!831046 c!465812) b!2875186))

(assert (= (and d!831046 (not c!465812)) b!2875187))

(assert (=> b!2875187 m!3292715))

(assert (=> b!2874506 d!831046))

(declare-fun d!831048 () Bool)

(declare-fun lt!1018608 () Int)

(assert (=> d!831048 (>= lt!1018608 0)))

(declare-fun e!1819508 () Int)

(assert (=> d!831048 (= lt!1018608 e!1819508)))

(declare-fun c!465813 () Bool)

(assert (=> d!831048 (= c!465813 ((_ is Nil!34390) (v!34539 lt!1018503)))))

(assert (=> d!831048 (= (size!26323 (v!34539 lt!1018503)) lt!1018608)))

(declare-fun b!2875188 () Bool)

(assert (=> b!2875188 (= e!1819508 0)))

(declare-fun b!2875189 () Bool)

(assert (=> b!2875189 (= e!1819508 (+ 1 (size!26323 (t!233557 (v!34539 lt!1018503)))))))

(assert (= (and d!831048 c!465813) b!2875188))

(assert (= (and d!831048 (not c!465813)) b!2875189))

(declare-fun m!3292985 () Bool)

(assert (=> b!2875189 m!3292985))

(assert (=> b!2874506 d!831048))

(declare-fun d!831050 () Bool)

(assert (=> d!831050 (= (isEmpty!18725 (t!233558 (unfocusZipperList!68 lt!1018429))) ((_ is Nil!34391) (t!233558 (unfocusZipperList!68 lt!1018429))))))

(assert (=> b!2874421 d!831050))

(declare-fun b!2875193 () Bool)

(declare-fun e!1819510 () Bool)

(declare-fun lt!1018609 () List!34514)

(assert (=> b!2875193 (= e!1819510 (or (not (= (v!34539 lt!1018533) Nil!34390)) (= lt!1018609 (v!34539 lt!1018535))))))

(declare-fun d!831052 () Bool)

(assert (=> d!831052 e!1819510))

(declare-fun res!1192394 () Bool)

(assert (=> d!831052 (=> (not res!1192394) (not e!1819510))))

(assert (=> d!831052 (= res!1192394 (= (content!4704 lt!1018609) ((_ map or) (content!4704 (v!34539 lt!1018535)) (content!4704 (v!34539 lt!1018533)))))))

(declare-fun e!1819509 () List!34514)

(assert (=> d!831052 (= lt!1018609 e!1819509)))

(declare-fun c!465814 () Bool)

(assert (=> d!831052 (= c!465814 ((_ is Nil!34390) (v!34539 lt!1018535)))))

(assert (=> d!831052 (= (++!8177 (v!34539 lt!1018535) (v!34539 lt!1018533)) lt!1018609)))

(declare-fun b!2875192 () Bool)

(declare-fun res!1192395 () Bool)

(assert (=> b!2875192 (=> (not res!1192395) (not e!1819510))))

(assert (=> b!2875192 (= res!1192395 (= (size!26323 lt!1018609) (+ (size!26323 (v!34539 lt!1018535)) (size!26323 (v!34539 lt!1018533)))))))

(declare-fun b!2875191 () Bool)

(assert (=> b!2875191 (= e!1819509 (Cons!34390 (h!39810 (v!34539 lt!1018535)) (++!8177 (t!233557 (v!34539 lt!1018535)) (v!34539 lt!1018533))))))

(declare-fun b!2875190 () Bool)

(assert (=> b!2875190 (= e!1819509 (v!34539 lt!1018533))))

(assert (= (and d!831052 c!465814) b!2875190))

(assert (= (and d!831052 (not c!465814)) b!2875191))

(assert (= (and d!831052 res!1192394) b!2875192))

(assert (= (and b!2875192 res!1192395) b!2875193))

(declare-fun m!3292987 () Bool)

(assert (=> d!831052 m!3292987))

(declare-fun m!3292989 () Bool)

(assert (=> d!831052 m!3292989))

(declare-fun m!3292991 () Bool)

(assert (=> d!831052 m!3292991))

(declare-fun m!3292993 () Bool)

(assert (=> b!2875192 m!3292993))

(declare-fun m!3292995 () Bool)

(assert (=> b!2875192 m!3292995))

(declare-fun m!3292997 () Bool)

(assert (=> b!2875192 m!3292997))

(declare-fun m!3292999 () Bool)

(assert (=> b!2875191 m!3292999))

(assert (=> b!2874519 d!831052))

(declare-fun bs!522527 () Bool)

(declare-fun d!831054 () Bool)

(assert (= bs!522527 (and d!831054 d!831008)))

(declare-fun lambda!107248 () Int)

(assert (=> bs!522527 (not (= lambda!107248 lambda!107246))))

(declare-fun bs!522528 () Bool)

(assert (= bs!522528 (and d!831054 d!830700)))

(assert (=> bs!522528 (not (= lambda!107248 lambda!107202))))

(declare-fun bs!522529 () Bool)

(assert (= bs!522529 (and d!831054 d!830814)))

(assert (=> bs!522529 (not (= lambda!107248 lambda!107232))))

(declare-fun bs!522530 () Bool)

(assert (= bs!522530 (and d!831054 d!830968)))

(assert (=> bs!522530 (= lambda!107248 lambda!107243)))

(declare-fun bs!522531 () Bool)

(assert (= bs!522531 (and d!831054 d!830888)))

(assert (=> bs!522531 (not (= lambda!107248 lambda!107239))))

(declare-fun bs!522532 () Bool)

(assert (= bs!522532 (and d!831054 d!830966)))

(assert (=> bs!522532 (= lambda!107248 lambda!107242)))

(declare-fun bs!522533 () Bool)

(assert (= bs!522533 (and d!831054 d!830744)))

(assert (=> bs!522533 (= lambda!107248 lambda!107211)))

(declare-fun bs!522534 () Bool)

(assert (= bs!522534 (and d!831054 d!830692)))

(assert (=> bs!522534 (= lambda!107248 lambda!107199)))

(declare-fun bs!522535 () Bool)

(assert (= bs!522535 (and d!831054 d!830780)))

(assert (=> bs!522535 (not (= lambda!107248 lambda!107221))))

(declare-fun bs!522536 () Bool)

(assert (= bs!522536 (and d!831054 d!830844)))

(assert (=> bs!522536 (not (= lambda!107248 lambda!107233))))

(declare-fun bs!522537 () Bool)

(assert (= bs!522537 (and d!831054 d!830756)))

(assert (=> bs!522537 (= lambda!107248 lambda!107216)))

(declare-fun bs!522538 () Bool)

(assert (= bs!522538 (and d!831054 d!830990)))

(assert (=> bs!522538 (= lambda!107248 lambda!107245)))

(declare-fun bs!522539 () Bool)

(assert (= bs!522539 (and d!831054 d!830808)))

(assert (=> bs!522539 (not (= lambda!107248 lambda!107231))))

(declare-fun bs!522540 () Bool)

(assert (= bs!522540 (and d!831054 d!830676)))

(assert (=> bs!522540 (not (= lambda!107248 lambda!107196))))

(assert (=> d!831054 (= (inv!46439 (h!39812 res!1192228)) (forall!7085 (exprs!3201 (h!39812 res!1192228)) lambda!107248))))

(declare-fun bs!522541 () Bool)

(assert (= bs!522541 d!831054))

(declare-fun m!3293001 () Bool)

(assert (=> bs!522541 m!3293001))

(assert (=> b!2874585 d!831054))

(declare-fun d!831056 () Bool)

(assert (=> d!831056 (= (nullable!2691 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))) (nullableFct!818 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (get!10338 lt!1018432)))))))

(declare-fun bs!522542 () Bool)

(assert (= bs!522542 d!831056))

(assert (=> bs!522542 m!3292071))

(declare-fun m!3293003 () Bool)

(assert (=> bs!522542 m!3293003))

(assert (=> b!2874269 d!831056))

(declare-fun d!831058 () Bool)

(assert (=> d!831058 (= (isEmpty!18722 (get!10338 (getLanguageWitness!434 lt!1018434))) ((_ is Nil!34390) (get!10338 (getLanguageWitness!434 lt!1018434))))))

(assert (=> d!830816 d!831058))

(assert (=> b!2874641 d!830934))

(assert (=> b!2874641 d!830898))

(declare-fun call!185997 () Option!6416)

(declare-fun c!465820 () Bool)

(declare-fun bm!185991 () Bool)

(assert (=> bm!185991 (= call!185997 (getLanguageWitness!433 (ite c!465820 (regOne!17995 (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) (regOne!17994 (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun bm!185992 () Bool)

(declare-fun call!185996 () Option!6416)

(assert (=> bm!185992 (= call!185996 (getLanguageWitness!433 (ite c!465820 (regTwo!17995 (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) (regTwo!17994 (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))))

(declare-fun b!2875195 () Bool)

(declare-fun e!1819511 () Option!6416)

(assert (=> b!2875195 (= e!1819511 (Some!6415 (Cons!34390 (c!465376 (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) Nil!34390)))))

(declare-fun b!2875196 () Bool)

(declare-fun e!1819515 () Option!6416)

(assert (=> b!2875196 (= e!1819515 None!6415)))

(declare-fun b!2875197 () Bool)

(declare-fun e!1819518 () Option!6416)

(assert (=> b!2875197 (= e!1819518 (Some!6415 Nil!34390))))

(declare-fun b!2875198 () Bool)

(declare-fun e!1819516 () Option!6416)

(assert (=> b!2875198 (= e!1819516 None!6415)))

(declare-fun b!2875199 () Bool)

(declare-fun e!1819512 () Option!6416)

(assert (=> b!2875199 (= e!1819512 e!1819516)))

(declare-fun lt!1018612 () Option!6416)

(assert (=> b!2875199 (= lt!1018612 call!185997)))

(declare-fun c!465822 () Bool)

(assert (=> b!2875199 (= c!465822 ((_ is Some!6415) lt!1018612))))

(declare-fun b!2875200 () Bool)

(assert (=> b!2875200 (= e!1819511 e!1819518)))

(declare-fun c!465821 () Bool)

(assert (=> b!2875200 (= c!465821 ((_ is Star!8741) (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2875194 () Bool)

(declare-fun e!1819513 () Option!6416)

(declare-fun lt!1018611 () Option!6416)

(assert (=> b!2875194 (= e!1819513 lt!1018611)))

(declare-fun d!831060 () Bool)

(declare-fun c!465815 () Bool)

(assert (=> d!831060 (= c!465815 ((_ is EmptyExpr!8741) (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun e!1819514 () Option!6416)

(assert (=> d!831060 (= (getLanguageWitness!433 (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) e!1819514)))

(declare-fun b!2875201 () Bool)

(declare-fun e!1819517 () Option!6416)

(assert (=> b!2875201 (= e!1819514 e!1819517)))

(declare-fun c!465817 () Bool)

(assert (=> b!2875201 (= c!465817 ((_ is EmptyLang!8741) (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(declare-fun b!2875202 () Bool)

(declare-fun c!465818 () Bool)

(declare-fun lt!1018610 () Option!6416)

(assert (=> b!2875202 (= c!465818 ((_ is Some!6415) lt!1018610))))

(assert (=> b!2875202 (= lt!1018610 call!185996)))

(assert (=> b!2875202 (= e!1819516 e!1819515)))

(declare-fun b!2875203 () Bool)

(assert (=> b!2875203 (= e!1819517 None!6415)))

(declare-fun b!2875204 () Bool)

(assert (=> b!2875204 (= c!465820 ((_ is Union!8741) (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2875204 (= e!1819518 e!1819512)))

(declare-fun b!2875205 () Bool)

(assert (=> b!2875205 (= e!1819515 (Some!6415 (++!8177 (v!34539 lt!1018612) (v!34539 lt!1018610))))))

(declare-fun c!465819 () Bool)

(declare-fun b!2875206 () Bool)

(assert (=> b!2875206 (= c!465819 ((_ is ElementMatch!8741) (ite c!465572 (regOne!17995 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465470 (regTwo!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))))

(assert (=> b!2875206 (= e!1819517 e!1819511)))

(declare-fun b!2875207 () Bool)

(assert (=> b!2875207 (= e!1819514 (Some!6415 Nil!34390))))

(declare-fun b!2875208 () Bool)

(assert (=> b!2875208 (= e!1819513 call!185996)))

(declare-fun b!2875209 () Bool)

(assert (=> b!2875209 (= e!1819512 e!1819513)))

(assert (=> b!2875209 (= lt!1018611 call!185997)))

(declare-fun c!465816 () Bool)

(assert (=> b!2875209 (= c!465816 ((_ is Some!6415) lt!1018611))))

(assert (= (and d!831060 c!465815) b!2875207))

(assert (= (and d!831060 (not c!465815)) b!2875201))

(assert (= (and b!2875201 c!465817) b!2875203))

(assert (= (and b!2875201 (not c!465817)) b!2875206))

(assert (= (and b!2875206 c!465819) b!2875195))

(assert (= (and b!2875206 (not c!465819)) b!2875200))

(assert (= (and b!2875200 c!465821) b!2875197))

(assert (= (and b!2875200 (not c!465821)) b!2875204))

(assert (= (and b!2875204 c!465820) b!2875209))

(assert (= (and b!2875204 (not c!465820)) b!2875199))

(assert (= (and b!2875209 c!465816) b!2875194))

(assert (= (and b!2875209 (not c!465816)) b!2875208))

(assert (= (and b!2875199 c!465822) b!2875202))

(assert (= (and b!2875199 (not c!465822)) b!2875198))

(assert (= (and b!2875202 c!465818) b!2875205))

(assert (= (and b!2875202 (not c!465818)) b!2875196))

(assert (= (or b!2875208 b!2875202) bm!185992))

(assert (= (or b!2875209 b!2875199) bm!185991))

(declare-fun m!3293005 () Bool)

(assert (=> bm!185991 m!3293005))

(declare-fun m!3293007 () Bool)

(assert (=> bm!185992 m!3293007))

(declare-fun m!3293009 () Bool)

(assert (=> b!2875205 m!3293009))

(assert (=> bm!185881 d!831060))

(assert (=> d!830832 d!830702))

(declare-fun c!465823 () Bool)

(declare-fun call!186000 () Bool)

(declare-fun c!465824 () Bool)

(declare-fun bm!185993 () Bool)

(assert (=> bm!185993 (= call!186000 (validRegex!3519 (ite c!465824 (reg!9070 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))) (ite c!465823 (regTwo!17995 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))) (regOne!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))))))))

(declare-fun b!2875210 () Bool)

(declare-fun res!1192396 () Bool)

(declare-fun e!1819521 () Bool)

(assert (=> b!2875210 (=> res!1192396 e!1819521)))

(assert (=> b!2875210 (= res!1192396 (not ((_ is Concat!14062) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432))))))))

(declare-fun e!1819520 () Bool)

(assert (=> b!2875210 (= e!1819520 e!1819521)))

(declare-fun bm!185994 () Bool)

(declare-fun call!185998 () Bool)

(assert (=> bm!185994 (= call!185998 call!186000)))

(declare-fun call!185999 () Bool)

(declare-fun bm!185995 () Bool)

(assert (=> bm!185995 (= call!185999 (validRegex!3519 (ite c!465823 (regOne!17995 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))) (regTwo!17994 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))))

(declare-fun b!2875211 () Bool)

(declare-fun e!1819525 () Bool)

(assert (=> b!2875211 (= e!1819525 call!185998)))

(declare-fun b!2875212 () Bool)

(declare-fun e!1819524 () Bool)

(assert (=> b!2875212 (= e!1819524 call!185999)))

(declare-fun b!2875213 () Bool)

(declare-fun res!1192397 () Bool)

(assert (=> b!2875213 (=> (not res!1192397) (not e!1819525))))

(assert (=> b!2875213 (= res!1192397 call!185999)))

(assert (=> b!2875213 (= e!1819520 e!1819525)))

(declare-fun b!2875214 () Bool)

(assert (=> b!2875214 (= e!1819521 e!1819524)))

(declare-fun res!1192400 () Bool)

(assert (=> b!2875214 (=> (not res!1192400) (not e!1819524))))

(assert (=> b!2875214 (= res!1192400 call!185998)))

(declare-fun b!2875215 () Bool)

(declare-fun e!1819519 () Bool)

(declare-fun e!1819523 () Bool)

(assert (=> b!2875215 (= e!1819519 e!1819523)))

(declare-fun res!1192399 () Bool)

(assert (=> b!2875215 (= res!1192399 (not (nullable!2691 (reg!9070 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))))

(assert (=> b!2875215 (=> (not res!1192399) (not e!1819523))))

(declare-fun d!831062 () Bool)

(declare-fun res!1192398 () Bool)

(declare-fun e!1819522 () Bool)

(assert (=> d!831062 (=> res!1192398 e!1819522)))

(assert (=> d!831062 (= res!1192398 ((_ is ElementMatch!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(assert (=> d!831062 (= (validRegex!3519 (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))) e!1819522)))

(declare-fun b!2875216 () Bool)

(assert (=> b!2875216 (= e!1819519 e!1819520)))

(assert (=> b!2875216 (= c!465823 ((_ is Union!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(declare-fun b!2875217 () Bool)

(assert (=> b!2875217 (= e!1819523 call!186000)))

(declare-fun b!2875218 () Bool)

(assert (=> b!2875218 (= e!1819522 e!1819519)))

(assert (=> b!2875218 (= c!465824 ((_ is Star!8741) (derivativeStep!2324 (h!39811 (exprs!3201 c!7184)) (head!6346 (v!34539 lt!1018432)))))))

(assert (= (and d!831062 (not res!1192398)) b!2875218))

(assert (= (and b!2875218 c!465824) b!2875215))

(assert (= (and b!2875218 (not c!465824)) b!2875216))

(assert (= (and b!2875215 res!1192399) b!2875217))

(assert (= (and b!2875216 c!465823) b!2875213))

(assert (= (and b!2875216 (not c!465823)) b!2875210))

(assert (= (and b!2875213 res!1192397) b!2875211))

(assert (= (and b!2875210 (not res!1192396)) b!2875214))

(assert (= (and b!2875214 res!1192400) b!2875212))

(assert (= (or b!2875211 b!2875214) bm!185994))

(assert (= (or b!2875213 b!2875212) bm!185995))

(assert (= (or b!2875217 bm!185994) bm!185993))

(declare-fun m!3293011 () Bool)

(assert (=> bm!185993 m!3293011))

(declare-fun m!3293013 () Bool)

(assert (=> bm!185995 m!3293013))

(declare-fun m!3293015 () Bool)

(assert (=> b!2875215 m!3293015))

(assert (=> d!830832 d!831062))

(assert (=> bm!185908 d!830702))

(declare-fun d!831064 () Bool)

(assert (=> d!831064 (= (isEmpty!18725 (tail!4572 (unfocusZipperList!68 lt!1018429))) ((_ is Nil!34391) (tail!4572 (unfocusZipperList!68 lt!1018429))))))

(assert (=> b!2874419 d!831064))

(declare-fun d!831066 () Bool)

(assert (=> d!831066 (= (tail!4572 (unfocusZipperList!68 lt!1018429)) (t!233558 (unfocusZipperList!68 lt!1018429)))))

(assert (=> b!2874419 d!831066))

(assert (=> b!2874267 d!830926))

(declare-fun d!831068 () Bool)

(assert (=> d!831068 (= (isEmpty!18724 lt!1018537) (not ((_ is Some!6415) lt!1018537)))))

(assert (=> d!830780 d!831068))

(declare-fun bs!522543 () Bool)

(declare-fun d!831070 () Bool)

(assert (= bs!522543 (and d!831070 d!831008)))

(declare-fun lambda!107249 () Int)

(assert (=> bs!522543 (= (= lambda!107221 lambda!107232) (= lambda!107249 lambda!107246))))

(declare-fun bs!522544 () Bool)

(assert (= bs!522544 (and d!831070 d!830700)))

(assert (=> bs!522544 (not (= lambda!107249 lambda!107202))))

(declare-fun bs!522545 () Bool)

(assert (= bs!522545 (and d!831070 d!830814)))

(assert (=> bs!522545 (not (= lambda!107249 lambda!107232))))

(declare-fun bs!522546 () Bool)

(assert (= bs!522546 (and d!831070 d!830968)))

(assert (=> bs!522546 (not (= lambda!107249 lambda!107243))))

(declare-fun bs!522547 () Bool)

(assert (= bs!522547 (and d!831070 d!830888)))

(assert (=> bs!522547 (not (= lambda!107249 lambda!107239))))

(declare-fun bs!522548 () Bool)

(assert (= bs!522548 (and d!831070 d!831054)))

(assert (=> bs!522548 (not (= lambda!107249 lambda!107248))))

(declare-fun bs!522549 () Bool)

(assert (= bs!522549 (and d!831070 d!830966)))

(assert (=> bs!522549 (not (= lambda!107249 lambda!107242))))

(declare-fun bs!522550 () Bool)

(assert (= bs!522550 (and d!831070 d!830744)))

(assert (=> bs!522550 (not (= lambda!107249 lambda!107211))))

(declare-fun bs!522551 () Bool)

(assert (= bs!522551 (and d!831070 d!830692)))

(assert (=> bs!522551 (not (= lambda!107249 lambda!107199))))

(declare-fun bs!522552 () Bool)

(assert (= bs!522552 (and d!831070 d!830780)))

(assert (=> bs!522552 (not (= lambda!107249 lambda!107221))))

(declare-fun bs!522553 () Bool)

(assert (= bs!522553 (and d!831070 d!830844)))

(assert (=> bs!522553 (= (= lambda!107221 lambda!107202) (= lambda!107249 lambda!107233))))

(declare-fun bs!522554 () Bool)

(assert (= bs!522554 (and d!831070 d!830756)))

(assert (=> bs!522554 (not (= lambda!107249 lambda!107216))))

(declare-fun bs!522555 () Bool)

(assert (= bs!522555 (and d!831070 d!830990)))

(assert (=> bs!522555 (not (= lambda!107249 lambda!107245))))

(declare-fun bs!522556 () Bool)

(assert (= bs!522556 (and d!831070 d!830808)))

(assert (=> bs!522556 (= (= lambda!107221 lambda!107196) (= lambda!107249 lambda!107231))))

(declare-fun bs!522557 () Bool)

(assert (= bs!522557 (and d!831070 d!830676)))

(assert (=> bs!522557 (not (= lambda!107249 lambda!107196))))

(assert (=> d!831070 true))

(assert (=> d!831070 (< (dynLambda!14315 order!18133 lambda!107221) (dynLambda!14315 order!18133 lambda!107249))))

(assert (=> d!831070 (= (exists!1167 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))) lambda!107221) (not (forall!7085 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))) lambda!107249)))))

(declare-fun bs!522558 () Bool)

(assert (= bs!522558 d!831070))

(declare-fun m!3293017 () Bool)

(assert (=> bs!522558 m!3293017))

(assert (=> d!830780 d!831070))

(declare-fun bm!185996 () Bool)

(declare-fun call!186003 () Bool)

(declare-fun c!465826 () Bool)

(declare-fun c!465825 () Bool)

(assert (=> bm!185996 (= call!186003 (validRegex!3519 (ite c!465826 (reg!9070 lt!1018548) (ite c!465825 (regTwo!17995 lt!1018548) (regOne!17994 lt!1018548)))))))

(declare-fun b!2875219 () Bool)

(declare-fun res!1192401 () Bool)

(declare-fun e!1819528 () Bool)

(assert (=> b!2875219 (=> res!1192401 e!1819528)))

(assert (=> b!2875219 (= res!1192401 (not ((_ is Concat!14062) lt!1018548)))))

(declare-fun e!1819527 () Bool)

(assert (=> b!2875219 (= e!1819527 e!1819528)))

(declare-fun bm!185997 () Bool)

(declare-fun call!186001 () Bool)

(assert (=> bm!185997 (= call!186001 call!186003)))

(declare-fun bm!185998 () Bool)

(declare-fun call!186002 () Bool)

(assert (=> bm!185998 (= call!186002 (validRegex!3519 (ite c!465825 (regOne!17995 lt!1018548) (regTwo!17994 lt!1018548))))))

(declare-fun b!2875220 () Bool)

(declare-fun e!1819532 () Bool)

(assert (=> b!2875220 (= e!1819532 call!186001)))

(declare-fun b!2875221 () Bool)

(declare-fun e!1819531 () Bool)

(assert (=> b!2875221 (= e!1819531 call!186002)))

(declare-fun b!2875222 () Bool)

(declare-fun res!1192402 () Bool)

(assert (=> b!2875222 (=> (not res!1192402) (not e!1819532))))

(assert (=> b!2875222 (= res!1192402 call!186002)))

(assert (=> b!2875222 (= e!1819527 e!1819532)))

(declare-fun b!2875223 () Bool)

(assert (=> b!2875223 (= e!1819528 e!1819531)))

(declare-fun res!1192405 () Bool)

(assert (=> b!2875223 (=> (not res!1192405) (not e!1819531))))

(assert (=> b!2875223 (= res!1192405 call!186001)))

(declare-fun b!2875224 () Bool)

(declare-fun e!1819526 () Bool)

(declare-fun e!1819530 () Bool)

(assert (=> b!2875224 (= e!1819526 e!1819530)))

(declare-fun res!1192404 () Bool)

(assert (=> b!2875224 (= res!1192404 (not (nullable!2691 (reg!9070 lt!1018548))))))

(assert (=> b!2875224 (=> (not res!1192404) (not e!1819530))))

(declare-fun d!831072 () Bool)

(declare-fun res!1192403 () Bool)

(declare-fun e!1819529 () Bool)

(assert (=> d!831072 (=> res!1192403 e!1819529)))

(assert (=> d!831072 (= res!1192403 ((_ is ElementMatch!8741) lt!1018548))))

(assert (=> d!831072 (= (validRegex!3519 lt!1018548) e!1819529)))

(declare-fun b!2875225 () Bool)

(assert (=> b!2875225 (= e!1819526 e!1819527)))

(assert (=> b!2875225 (= c!465825 ((_ is Union!8741) lt!1018548))))

(declare-fun b!2875226 () Bool)

(assert (=> b!2875226 (= e!1819530 call!186003)))

(declare-fun b!2875227 () Bool)

(assert (=> b!2875227 (= e!1819529 e!1819526)))

(assert (=> b!2875227 (= c!465826 ((_ is Star!8741) lt!1018548))))

(assert (= (and d!831072 (not res!1192403)) b!2875227))

(assert (= (and b!2875227 c!465826) b!2875224))

(assert (= (and b!2875227 (not c!465826)) b!2875225))

(assert (= (and b!2875224 res!1192404) b!2875226))

(assert (= (and b!2875225 c!465825) b!2875222))

(assert (= (and b!2875225 (not c!465825)) b!2875219))

(assert (= (and b!2875222 res!1192402) b!2875220))

(assert (= (and b!2875219 (not res!1192401)) b!2875223))

(assert (= (and b!2875223 res!1192405) b!2875221))

(assert (= (or b!2875220 b!2875223) bm!185997))

(assert (= (or b!2875222 b!2875221) bm!185998))

(assert (= (or b!2875226 bm!185997) bm!185996))

(declare-fun m!3293019 () Bool)

(assert (=> bm!185996 m!3293019))

(declare-fun m!3293021 () Bool)

(assert (=> bm!185998 m!3293021))

(declare-fun m!3293023 () Bool)

(assert (=> b!2875224 m!3293023))

(assert (=> d!830836 d!831072))

(assert (=> d!830836 d!830698))

(declare-fun d!831074 () Bool)

(assert (=> d!831074 (= (nullable!2691 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))) (nullableFct!818 (reg!9070 (ite c!465477 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))

(declare-fun bs!522559 () Bool)

(assert (= bs!522559 d!831074))

(declare-fun m!3293025 () Bool)

(assert (=> bs!522559 m!3293025))

(assert (=> b!2874543 d!831074))

(declare-fun b!2875228 () Bool)

(declare-fun e!1819533 () Regex!8741)

(declare-fun e!1819534 () Regex!8741)

(assert (=> b!2875228 (= e!1819533 e!1819534)))

(declare-fun c!465828 () Bool)

(assert (=> b!2875228 (= c!465828 ((_ is Star!8741) (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun call!186006 () Regex!8741)

(declare-fun e!1819535 () Regex!8741)

(declare-fun b!2875229 () Bool)

(declare-fun call!186005 () Regex!8741)

(assert (=> b!2875229 (= e!1819535 (Union!8741 (Concat!14062 call!186005 (regTwo!17994 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))) call!186006))))

(declare-fun b!2875230 () Bool)

(declare-fun c!465830 () Bool)

(assert (=> b!2875230 (= c!465830 ((_ is Union!8741) (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun e!1819537 () Regex!8741)

(assert (=> b!2875230 (= e!1819537 e!1819533)))

(declare-fun b!2875231 () Bool)

(declare-fun c!465829 () Bool)

(assert (=> b!2875231 (= c!465829 (nullable!2691 (regOne!17994 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))

(assert (=> b!2875231 (= e!1819534 e!1819535)))

(declare-fun bm!185999 () Bool)

(declare-fun call!186007 () Regex!8741)

(declare-fun call!186004 () Regex!8741)

(assert (=> bm!185999 (= call!186007 call!186004)))

(declare-fun d!831076 () Bool)

(declare-fun lt!1018613 () Regex!8741)

(assert (=> d!831076 (validRegex!3519 lt!1018613)))

(declare-fun e!1819536 () Regex!8741)

(assert (=> d!831076 (= lt!1018613 e!1819536)))

(declare-fun c!465831 () Bool)

(assert (=> d!831076 (= c!465831 (or ((_ is EmptyExpr!8741) (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) ((_ is EmptyLang!8741) (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))))

(assert (=> d!831076 (validRegex!3519 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))))

(assert (=> d!831076 (= (derivativeStep!2324 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))) (head!6346 (v!34539 lt!1018432))) lt!1018613)))

(declare-fun b!2875232 () Bool)

(assert (=> b!2875232 (= e!1819536 EmptyLang!8741)))

(declare-fun b!2875233 () Bool)

(assert (=> b!2875233 (= e!1819537 (ite (= (head!6346 (v!34539 lt!1018432)) (c!465376 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))) EmptyExpr!8741 EmptyLang!8741))))

(declare-fun b!2875234 () Bool)

(assert (=> b!2875234 (= e!1819536 e!1819537)))

(declare-fun c!465827 () Bool)

(assert (=> b!2875234 (= c!465827 ((_ is ElementMatch!8741) (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun b!2875235 () Bool)

(assert (=> b!2875235 (= e!1819534 (Concat!14062 call!186007 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))))

(declare-fun bm!186000 () Bool)

(assert (=> bm!186000 (= call!186006 (derivativeStep!2324 (ite c!465830 (regOne!17995 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regTwo!17994 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))) (head!6346 (v!34539 lt!1018432))))))

(declare-fun b!2875236 () Bool)

(assert (=> b!2875236 (= e!1819533 (Union!8741 call!186006 call!186004))))

(declare-fun b!2875237 () Bool)

(assert (=> b!2875237 (= e!1819535 (Union!8741 (Concat!14062 call!186005 (regTwo!17994 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184)))))) EmptyLang!8741))))

(declare-fun bm!186001 () Bool)

(assert (=> bm!186001 (= call!186004 (derivativeStep!2324 (ite c!465830 (regTwo!17995 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (ite c!465828 (reg!9070 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) (regOne!17994 (ite c!465642 (regOne!17995 (h!39811 (exprs!3201 c!7184))) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))))) (head!6346 (v!34539 lt!1018432))))))

(declare-fun bm!186002 () Bool)

(assert (=> bm!186002 (= call!186005 call!186007)))

(assert (= (and d!831076 c!465831) b!2875232))

(assert (= (and d!831076 (not c!465831)) b!2875234))

(assert (= (and b!2875234 c!465827) b!2875233))

(assert (= (and b!2875234 (not c!465827)) b!2875230))

(assert (= (and b!2875230 c!465830) b!2875236))

(assert (= (and b!2875230 (not c!465830)) b!2875228))

(assert (= (and b!2875228 c!465828) b!2875235))

(assert (= (and b!2875228 (not c!465828)) b!2875231))

(assert (= (and b!2875231 c!465829) b!2875229))

(assert (= (and b!2875231 (not c!465829)) b!2875237))

(assert (= (or b!2875229 b!2875237) bm!186002))

(assert (= (or b!2875235 bm!186002) bm!185999))

(assert (= (or b!2875236 b!2875229) bm!186000))

(assert (= (or b!2875236 bm!185999) bm!186001))

(declare-fun m!3293027 () Bool)

(assert (=> b!2875231 m!3293027))

(declare-fun m!3293029 () Bool)

(assert (=> d!831076 m!3293029))

(declare-fun m!3293031 () Bool)

(assert (=> d!831076 m!3293031))

(assert (=> bm!186000 m!3292047))

(declare-fun m!3293033 () Bool)

(assert (=> bm!186000 m!3293033))

(assert (=> bm!186001 m!3292047))

(declare-fun m!3293035 () Bool)

(assert (=> bm!186001 m!3293035))

(assert (=> bm!185912 d!831076))

(declare-fun d!831078 () Bool)

(assert (=> d!831078 (= (isEmptyLang!153 lt!1018514) ((_ is EmptyLang!8741) lt!1018514))))

(assert (=> b!2874415 d!831078))

(declare-fun bm!186003 () Bool)

(declare-fun call!186009 () Option!6416)

(declare-fun c!465837 () Bool)

(assert (=> bm!186003 (= call!186009 (getLanguageWitness!433 (ite c!465837 (regOne!17995 (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))) (regOne!17994 (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))))))

(declare-fun bm!186004 () Bool)

(declare-fun call!186008 () Option!6416)

(assert (=> bm!186004 (= call!186008 (getLanguageWitness!433 (ite c!465837 (regTwo!17995 (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))) (regTwo!17994 (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))))))

(declare-fun b!2875239 () Bool)

(declare-fun e!1819538 () Option!6416)

(assert (=> b!2875239 (= e!1819538 (Some!6415 (Cons!34390 (c!465376 (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))) Nil!34390)))))

(declare-fun b!2875240 () Bool)

(declare-fun e!1819542 () Option!6416)

(assert (=> b!2875240 (= e!1819542 None!6415)))

(declare-fun b!2875241 () Bool)

(declare-fun e!1819545 () Option!6416)

(assert (=> b!2875241 (= e!1819545 (Some!6415 Nil!34390))))

(declare-fun b!2875242 () Bool)

(declare-fun e!1819543 () Option!6416)

(assert (=> b!2875242 (= e!1819543 None!6415)))

(declare-fun b!2875243 () Bool)

(declare-fun e!1819539 () Option!6416)

(assert (=> b!2875243 (= e!1819539 e!1819543)))

(declare-fun lt!1018616 () Option!6416)

(assert (=> b!2875243 (= lt!1018616 call!186009)))

(declare-fun c!465839 () Bool)

(assert (=> b!2875243 (= c!465839 ((_ is Some!6415) lt!1018616))))

(declare-fun b!2875244 () Bool)

(assert (=> b!2875244 (= e!1819538 e!1819545)))

(declare-fun c!465838 () Bool)

(assert (=> b!2875244 (= c!465838 ((_ is Star!8741) (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))))

(declare-fun b!2875238 () Bool)

(declare-fun e!1819540 () Option!6416)

(declare-fun lt!1018615 () Option!6416)

(assert (=> b!2875238 (= e!1819540 lt!1018615)))

(declare-fun d!831080 () Bool)

(declare-fun c!465832 () Bool)

(assert (=> d!831080 (= c!465832 ((_ is EmptyExpr!8741) (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))))

(declare-fun e!1819541 () Option!6416)

(assert (=> d!831080 (= (getLanguageWitness!433 (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))) e!1819541)))

(declare-fun b!2875245 () Bool)

(declare-fun e!1819544 () Option!6416)

(assert (=> b!2875245 (= e!1819541 e!1819544)))

(declare-fun c!465834 () Bool)

(assert (=> b!2875245 (= c!465834 ((_ is EmptyLang!8741) (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))))

(declare-fun b!2875246 () Bool)

(declare-fun c!465835 () Bool)

(declare-fun lt!1018614 () Option!6416)

(assert (=> b!2875246 (= c!465835 ((_ is Some!6415) lt!1018614))))

(assert (=> b!2875246 (= lt!1018614 call!186008)))

(assert (=> b!2875246 (= e!1819543 e!1819542)))

(declare-fun b!2875247 () Bool)

(assert (=> b!2875247 (= e!1819544 None!6415)))

(declare-fun b!2875248 () Bool)

(assert (=> b!2875248 (= c!465837 ((_ is Union!8741) (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))))

(assert (=> b!2875248 (= e!1819545 e!1819539)))

(declare-fun b!2875249 () Bool)

(assert (=> b!2875249 (= e!1819542 (Some!6415 (++!8177 (v!34539 lt!1018616) (v!34539 lt!1018614))))))

(declare-fun b!2875250 () Bool)

(declare-fun c!465836 () Bool)

(assert (=> b!2875250 (= c!465836 ((_ is ElementMatch!8741) (h!39811 (exprs!3201 (Context!5403 (t!233558 (exprs!3201 lt!1018434)))))))))

(assert (=> b!2875250 (= e!1819544 e!1819538)))

(declare-fun b!2875251 () Bool)

(assert (=> b!2875251 (= e!1819541 (Some!6415 Nil!34390))))

(declare-fun b!2875252 () Bool)

(assert (=> b!2875252 (= e!1819540 call!186008)))

(declare-fun b!2875253 () Bool)

(assert (=> b!2875253 (= e!1819539 e!1819540)))

(assert (=> b!2875253 (= lt!1018615 call!186009)))

(declare-fun c!465833 () Bool)

(assert (=> b!2875253 (= c!465833 ((_ is Some!6415) lt!1018615))))

(assert (= (and d!831080 c!465832) b!2875251))

(assert (= (and d!831080 (not c!465832)) b!2875245))

(assert (= (and b!2875245 c!465834) b!2875247))

(assert (= (and b!2875245 (not c!465834)) b!2875250))

(assert (= (and b!2875250 c!465836) b!2875239))

(assert (= (and b!2875250 (not c!465836)) b!2875244))

(assert (= (and b!2875244 c!465838) b!2875241))

(assert (= (and b!2875244 (not c!465838)) b!2875248))

(assert (= (and b!2875248 c!465837) b!2875253))

(assert (= (and b!2875248 (not c!465837)) b!2875243))

(assert (= (and b!2875253 c!465833) b!2875238))

(assert (= (and b!2875253 (not c!465833)) b!2875252))

(assert (= (and b!2875243 c!465839) b!2875246))

(assert (= (and b!2875243 (not c!465839)) b!2875242))

(assert (= (and b!2875246 c!465835) b!2875249))

(assert (= (and b!2875246 (not c!465835)) b!2875240))

(assert (= (or b!2875252 b!2875246) bm!186004))

(assert (= (or b!2875253 b!2875243) bm!186003))

(declare-fun m!3293037 () Bool)

(assert (=> bm!186003 m!3293037))

(declare-fun m!3293039 () Bool)

(assert (=> bm!186004 m!3293039))

(declare-fun m!3293041 () Bool)

(assert (=> b!2875249 m!3293041))

(assert (=> b!2874552 d!831080))

(declare-fun b!2875257 () Bool)

(declare-fun lt!1018617 () List!34514)

(declare-fun e!1819547 () Bool)

(assert (=> b!2875257 (= e!1819547 (or (not (= (v!34539 lt!1018489) Nil!34390)) (= lt!1018617 (t!233557 (v!34539 lt!1018491)))))))

(declare-fun d!831082 () Bool)

(assert (=> d!831082 e!1819547))

(declare-fun res!1192406 () Bool)

(assert (=> d!831082 (=> (not res!1192406) (not e!1819547))))

(assert (=> d!831082 (= res!1192406 (= (content!4704 lt!1018617) ((_ map or) (content!4704 (t!233557 (v!34539 lt!1018491))) (content!4704 (v!34539 lt!1018489)))))))

(declare-fun e!1819546 () List!34514)

(assert (=> d!831082 (= lt!1018617 e!1819546)))

(declare-fun c!465840 () Bool)

(assert (=> d!831082 (= c!465840 ((_ is Nil!34390) (t!233557 (v!34539 lt!1018491))))))

(assert (=> d!831082 (= (++!8177 (t!233557 (v!34539 lt!1018491)) (v!34539 lt!1018489)) lt!1018617)))

(declare-fun b!2875256 () Bool)

(declare-fun res!1192407 () Bool)

(assert (=> b!2875256 (=> (not res!1192407) (not e!1819547))))

(assert (=> b!2875256 (= res!1192407 (= (size!26323 lt!1018617) (+ (size!26323 (t!233557 (v!34539 lt!1018491))) (size!26323 (v!34539 lt!1018489)))))))

(declare-fun b!2875255 () Bool)

(assert (=> b!2875255 (= e!1819546 (Cons!34390 (h!39810 (t!233557 (v!34539 lt!1018491))) (++!8177 (t!233557 (t!233557 (v!34539 lt!1018491))) (v!34539 lt!1018489))))))

(declare-fun b!2875254 () Bool)

(assert (=> b!2875254 (= e!1819546 (v!34539 lt!1018489))))

(assert (= (and d!831082 c!465840) b!2875254))

(assert (= (and d!831082 (not c!465840)) b!2875255))

(assert (= (and d!831082 res!1192406) b!2875256))

(assert (= (and b!2875256 res!1192407) b!2875257))

(declare-fun m!3293043 () Bool)

(assert (=> d!831082 m!3293043))

(assert (=> d!831082 m!3292669))

(assert (=> d!831082 m!3292499))

(declare-fun m!3293045 () Bool)

(assert (=> b!2875256 m!3293045))

(assert (=> b!2875256 m!3292745))

(assert (=> b!2875256 m!3292505))

(declare-fun m!3293047 () Bool)

(assert (=> b!2875255 m!3293047))

(assert (=> b!2874685 d!831082))

(declare-fun bm!186005 () Bool)

(declare-fun c!465842 () Bool)

(declare-fun c!465841 () Bool)

(declare-fun call!186012 () Bool)

(assert (=> bm!186005 (= call!186012 (validRegex!3519 (ite c!465842 (reg!9070 (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494))) (ite c!465841 (regTwo!17995 (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494))) (regOne!17994 (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494)))))))))

(declare-fun b!2875258 () Bool)

(declare-fun res!1192408 () Bool)

(declare-fun e!1819550 () Bool)

(assert (=> b!2875258 (=> res!1192408 e!1819550)))

(assert (=> b!2875258 (= res!1192408 (not ((_ is Concat!14062) (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494)))))))

(declare-fun e!1819549 () Bool)

(assert (=> b!2875258 (= e!1819549 e!1819550)))

(declare-fun bm!186006 () Bool)

(declare-fun call!186010 () Bool)

(assert (=> bm!186006 (= call!186010 call!186012)))

(declare-fun bm!186007 () Bool)

(declare-fun call!186011 () Bool)

(assert (=> bm!186007 (= call!186011 (validRegex!3519 (ite c!465841 (regOne!17995 (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494))) (regTwo!17994 (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494))))))))

(declare-fun b!2875259 () Bool)

(declare-fun e!1819554 () Bool)

(assert (=> b!2875259 (= e!1819554 call!186010)))

(declare-fun b!2875260 () Bool)

(declare-fun e!1819553 () Bool)

(assert (=> b!2875260 (= e!1819553 call!186011)))

(declare-fun b!2875261 () Bool)

(declare-fun res!1192409 () Bool)

(assert (=> b!2875261 (=> (not res!1192409) (not e!1819554))))

(assert (=> b!2875261 (= res!1192409 call!186011)))

(assert (=> b!2875261 (= e!1819549 e!1819554)))

(declare-fun b!2875262 () Bool)

(assert (=> b!2875262 (= e!1819550 e!1819553)))

(declare-fun res!1192412 () Bool)

(assert (=> b!2875262 (=> (not res!1192412) (not e!1819553))))

(assert (=> b!2875262 (= res!1192412 call!186010)))

(declare-fun b!2875263 () Bool)

(declare-fun e!1819548 () Bool)

(declare-fun e!1819552 () Bool)

(assert (=> b!2875263 (= e!1819548 e!1819552)))

(declare-fun res!1192411 () Bool)

(assert (=> b!2875263 (= res!1192411 (not (nullable!2691 (reg!9070 (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494))))))))

(assert (=> b!2875263 (=> (not res!1192411) (not e!1819552))))

(declare-fun d!831084 () Bool)

(declare-fun res!1192410 () Bool)

(declare-fun e!1819551 () Bool)

(assert (=> d!831084 (=> res!1192410 e!1819551)))

(assert (=> d!831084 (= res!1192410 ((_ is ElementMatch!8741) (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494))))))

(assert (=> d!831084 (= (validRegex!3519 (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494))) e!1819551)))

(declare-fun b!2875264 () Bool)

(assert (=> b!2875264 (= e!1819548 e!1819549)))

(assert (=> b!2875264 (= c!465841 ((_ is Union!8741) (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494))))))

(declare-fun b!2875265 () Bool)

(assert (=> b!2875265 (= e!1819552 call!186012)))

(declare-fun b!2875266 () Bool)

(assert (=> b!2875266 (= e!1819551 e!1819548)))

(assert (=> b!2875266 (= c!465842 ((_ is Star!8741) (ite c!465526 (regOne!17995 lt!1018494) (regTwo!17994 lt!1018494))))))

(assert (= (and d!831084 (not res!1192410)) b!2875266))

(assert (= (and b!2875266 c!465842) b!2875263))

(assert (= (and b!2875266 (not c!465842)) b!2875264))

(assert (= (and b!2875263 res!1192411) b!2875265))

(assert (= (and b!2875264 c!465841) b!2875261))

(assert (= (and b!2875264 (not c!465841)) b!2875258))

(assert (= (and b!2875261 res!1192409) b!2875259))

(assert (= (and b!2875258 (not res!1192408)) b!2875262))

(assert (= (and b!2875262 res!1192412) b!2875260))

(assert (= (or b!2875259 b!2875262) bm!186006))

(assert (= (or b!2875261 b!2875260) bm!186007))

(assert (= (or b!2875265 bm!186006) bm!186005))

(declare-fun m!3293049 () Bool)

(assert (=> bm!186005 m!3293049))

(declare-fun m!3293051 () Bool)

(assert (=> bm!186007 m!3293051))

(declare-fun m!3293053 () Bool)

(assert (=> b!2875263 m!3293053))

(assert (=> bm!185872 d!831084))

(assert (=> b!2874261 d!830954))

(assert (=> b!2874261 d!830928))

(declare-fun bs!522560 () Bool)

(declare-fun d!831086 () Bool)

(assert (= bs!522560 (and d!831086 d!830784)))

(declare-fun lambda!107250 () Int)

(assert (=> bs!522560 (= lambda!107250 lambda!107224)))

(assert (=> d!831086 (= (nullableZipper!719 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433)))) (exists!1169 (derivationStepZipper!475 (store ((as const (Array Context!5402 Bool)) false) lt!1018434 true) (head!6346 (get!10338 lt!1018433))) lambda!107250))))

(declare-fun bs!522561 () Bool)

(assert (= bs!522561 d!831086))

(assert (=> bs!522561 m!3292003))

(declare-fun m!3293055 () Bool)

(assert (=> bs!522561 m!3293055))

(assert (=> b!2874588 d!831086))

(declare-fun d!831088 () Bool)

(declare-fun lt!1018620 () Bool)

(assert (=> d!831088 (= lt!1018620 (select (content!4702 (t!233559 lt!1018438)) (h!39812 lt!1018438)))))

(declare-fun e!1819560 () Bool)

(assert (=> d!831088 (= lt!1018620 e!1819560)))

(declare-fun res!1192418 () Bool)

(assert (=> d!831088 (=> (not res!1192418) (not e!1819560))))

(assert (=> d!831088 (= res!1192418 ((_ is Cons!34392) (t!233559 lt!1018438)))))

(assert (=> d!831088 (= (contains!6127 (t!233559 lt!1018438) (h!39812 lt!1018438)) lt!1018620)))

(declare-fun b!2875271 () Bool)

(declare-fun e!1819559 () Bool)

(assert (=> b!2875271 (= e!1819560 e!1819559)))

(declare-fun res!1192417 () Bool)

(assert (=> b!2875271 (=> res!1192417 e!1819559)))

(assert (=> b!2875271 (= res!1192417 (= (h!39812 (t!233559 lt!1018438)) (h!39812 lt!1018438)))))

(declare-fun b!2875272 () Bool)

(assert (=> b!2875272 (= e!1819559 (contains!6127 (t!233559 (t!233559 lt!1018438)) (h!39812 lt!1018438)))))

(assert (= (and d!831088 res!1192418) b!2875271))

(assert (= (and b!2875271 (not res!1192417)) b!2875272))

(assert (=> d!831088 m!3292231))

(declare-fun m!3293057 () Bool)

(assert (=> d!831088 m!3293057))

(declare-fun m!3293059 () Bool)

(assert (=> b!2875272 m!3293059))

(assert (=> b!2874577 d!831088))

(declare-fun b!2875273 () Bool)

(declare-fun e!1819561 () Bool)

(declare-fun tp!923691 () Bool)

(declare-fun tp!923692 () Bool)

(assert (=> b!2875273 (= e!1819561 (and tp!923691 tp!923692))))

(assert (=> b!2874586 (= tp!923655 e!1819561)))

(assert (= (and b!2874586 ((_ is Cons!34391) (exprs!3201 (h!39812 res!1192228)))) b!2875273))

(declare-fun e!1819562 () Bool)

(assert (=> b!2874717 (= tp!923670 e!1819562)))

(declare-fun b!2875277 () Bool)

(declare-fun tp!923696 () Bool)

(declare-fun tp!923693 () Bool)

(assert (=> b!2875277 (= e!1819562 (and tp!923696 tp!923693))))

(declare-fun b!2875276 () Bool)

(declare-fun tp!923697 () Bool)

(assert (=> b!2875276 (= e!1819562 tp!923697)))

(declare-fun b!2875275 () Bool)

(declare-fun tp!923694 () Bool)

(declare-fun tp!923695 () Bool)

(assert (=> b!2875275 (= e!1819562 (and tp!923694 tp!923695))))

(declare-fun b!2875274 () Bool)

(assert (=> b!2875274 (= e!1819562 tp_is_empty!15077)))

(assert (= (and b!2874717 ((_ is ElementMatch!8741) (regOne!17995 (h!39811 (exprs!3201 c!7184))))) b!2875274))

(assert (= (and b!2874717 ((_ is Concat!14062) (regOne!17995 (h!39811 (exprs!3201 c!7184))))) b!2875275))

(assert (= (and b!2874717 ((_ is Star!8741) (regOne!17995 (h!39811 (exprs!3201 c!7184))))) b!2875276))

(assert (= (and b!2874717 ((_ is Union!8741) (regOne!17995 (h!39811 (exprs!3201 c!7184))))) b!2875277))

(declare-fun e!1819563 () Bool)

(assert (=> b!2874717 (= tp!923667 e!1819563)))

(declare-fun b!2875281 () Bool)

(declare-fun tp!923701 () Bool)

(declare-fun tp!923698 () Bool)

(assert (=> b!2875281 (= e!1819563 (and tp!923701 tp!923698))))

(declare-fun b!2875280 () Bool)

(declare-fun tp!923702 () Bool)

(assert (=> b!2875280 (= e!1819563 tp!923702)))

(declare-fun b!2875279 () Bool)

(declare-fun tp!923699 () Bool)

(declare-fun tp!923700 () Bool)

(assert (=> b!2875279 (= e!1819563 (and tp!923699 tp!923700))))

(declare-fun b!2875278 () Bool)

(assert (=> b!2875278 (= e!1819563 tp_is_empty!15077)))

(assert (= (and b!2874717 ((_ is ElementMatch!8741) (regTwo!17995 (h!39811 (exprs!3201 c!7184))))) b!2875278))

(assert (= (and b!2874717 ((_ is Concat!14062) (regTwo!17995 (h!39811 (exprs!3201 c!7184))))) b!2875279))

(assert (= (and b!2874717 ((_ is Star!8741) (regTwo!17995 (h!39811 (exprs!3201 c!7184))))) b!2875280))

(assert (= (and b!2874717 ((_ is Union!8741) (regTwo!17995 (h!39811 (exprs!3201 c!7184))))) b!2875281))

(declare-fun b!2875289 () Bool)

(declare-fun e!1819569 () Bool)

(declare-fun tp!923707 () Bool)

(assert (=> b!2875289 (= e!1819569 tp!923707)))

(declare-fun tp!923708 () Bool)

(declare-fun e!1819568 () Bool)

(declare-fun b!2875288 () Bool)

(assert (=> b!2875288 (= e!1819568 (and (inv!46439 (h!39812 (t!233559 res!1192228))) e!1819569 tp!923708))))

(assert (=> b!2874585 (= tp!923656 e!1819568)))

(assert (= b!2875288 b!2875289))

(assert (= (and b!2874585 ((_ is Cons!34392) (t!233559 res!1192228))) b!2875288))

(declare-fun m!3293061 () Bool)

(assert (=> b!2875288 m!3293061))

(declare-fun e!1819570 () Bool)

(assert (=> b!2874715 (= tp!923668 e!1819570)))

(declare-fun b!2875293 () Bool)

(declare-fun tp!923712 () Bool)

(declare-fun tp!923709 () Bool)

(assert (=> b!2875293 (= e!1819570 (and tp!923712 tp!923709))))

(declare-fun b!2875292 () Bool)

(declare-fun tp!923713 () Bool)

(assert (=> b!2875292 (= e!1819570 tp!923713)))

(declare-fun b!2875291 () Bool)

(declare-fun tp!923710 () Bool)

(declare-fun tp!923711 () Bool)

(assert (=> b!2875291 (= e!1819570 (and tp!923710 tp!923711))))

(declare-fun b!2875290 () Bool)

(assert (=> b!2875290 (= e!1819570 tp_is_empty!15077)))

(assert (= (and b!2874715 ((_ is ElementMatch!8741) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) b!2875290))

(assert (= (and b!2874715 ((_ is Concat!14062) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) b!2875291))

(assert (= (and b!2874715 ((_ is Star!8741) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) b!2875292))

(assert (= (and b!2874715 ((_ is Union!8741) (regOne!17994 (h!39811 (exprs!3201 c!7184))))) b!2875293))

(declare-fun e!1819571 () Bool)

(assert (=> b!2874715 (= tp!923669 e!1819571)))

(declare-fun b!2875297 () Bool)

(declare-fun tp!923717 () Bool)

(declare-fun tp!923714 () Bool)

(assert (=> b!2875297 (= e!1819571 (and tp!923717 tp!923714))))

(declare-fun b!2875296 () Bool)

(declare-fun tp!923718 () Bool)

(assert (=> b!2875296 (= e!1819571 tp!923718)))

(declare-fun b!2875295 () Bool)

(declare-fun tp!923715 () Bool)

(declare-fun tp!923716 () Bool)

(assert (=> b!2875295 (= e!1819571 (and tp!923715 tp!923716))))

(declare-fun b!2875294 () Bool)

(assert (=> b!2875294 (= e!1819571 tp_is_empty!15077)))

(assert (= (and b!2874715 ((_ is ElementMatch!8741) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) b!2875294))

(assert (= (and b!2874715 ((_ is Concat!14062) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) b!2875295))

(assert (= (and b!2874715 ((_ is Star!8741) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) b!2875296))

(assert (= (and b!2874715 ((_ is Union!8741) (regTwo!17994 (h!39811 (exprs!3201 c!7184))))) b!2875297))

(declare-fun e!1819572 () Bool)

(assert (=> b!2874716 (= tp!923671 e!1819572)))

(declare-fun b!2875301 () Bool)

(declare-fun tp!923722 () Bool)

(declare-fun tp!923719 () Bool)

(assert (=> b!2875301 (= e!1819572 (and tp!923722 tp!923719))))

(declare-fun b!2875300 () Bool)

(declare-fun tp!923723 () Bool)

(assert (=> b!2875300 (= e!1819572 tp!923723)))

(declare-fun b!2875299 () Bool)

(declare-fun tp!923720 () Bool)

(declare-fun tp!923721 () Bool)

(assert (=> b!2875299 (= e!1819572 (and tp!923720 tp!923721))))

(declare-fun b!2875298 () Bool)

(assert (=> b!2875298 (= e!1819572 tp_is_empty!15077)))

(assert (= (and b!2874716 ((_ is ElementMatch!8741) (reg!9070 (h!39811 (exprs!3201 c!7184))))) b!2875298))

(assert (= (and b!2874716 ((_ is Concat!14062) (reg!9070 (h!39811 (exprs!3201 c!7184))))) b!2875299))

(assert (= (and b!2874716 ((_ is Star!8741) (reg!9070 (h!39811 (exprs!3201 c!7184))))) b!2875300))

(assert (= (and b!2874716 ((_ is Union!8741) (reg!9070 (h!39811 (exprs!3201 c!7184))))) b!2875301))

(declare-fun e!1819573 () Bool)

(assert (=> b!2874718 (= tp!923672 e!1819573)))

(declare-fun b!2875305 () Bool)

(declare-fun tp!923727 () Bool)

(declare-fun tp!923724 () Bool)

(assert (=> b!2875305 (= e!1819573 (and tp!923727 tp!923724))))

(declare-fun b!2875304 () Bool)

(declare-fun tp!923728 () Bool)

(assert (=> b!2875304 (= e!1819573 tp!923728)))

(declare-fun b!2875303 () Bool)

(declare-fun tp!923725 () Bool)

(declare-fun tp!923726 () Bool)

(assert (=> b!2875303 (= e!1819573 (and tp!923725 tp!923726))))

(declare-fun b!2875302 () Bool)

(assert (=> b!2875302 (= e!1819573 tp_is_empty!15077)))

(assert (= (and b!2874718 ((_ is ElementMatch!8741) (h!39811 (t!233558 (exprs!3201 c!7184))))) b!2875302))

(assert (= (and b!2874718 ((_ is Concat!14062) (h!39811 (t!233558 (exprs!3201 c!7184))))) b!2875303))

(assert (= (and b!2874718 ((_ is Star!8741) (h!39811 (t!233558 (exprs!3201 c!7184))))) b!2875304))

(assert (= (and b!2874718 ((_ is Union!8741) (h!39811 (t!233558 (exprs!3201 c!7184))))) b!2875305))

(declare-fun b!2875306 () Bool)

(declare-fun e!1819574 () Bool)

(declare-fun tp!923729 () Bool)

(declare-fun tp!923730 () Bool)

(assert (=> b!2875306 (= e!1819574 (and tp!923729 tp!923730))))

(assert (=> b!2874718 (= tp!923673 e!1819574)))

(assert (= (and b!2874718 ((_ is Cons!34391) (t!233558 (t!233558 (exprs!3201 c!7184))))) b!2875306))

(declare-fun b_lambda!86109 () Bool)

(assert (= b_lambda!86107 (or d!830744 b_lambda!86109)))

(declare-fun bs!522562 () Bool)

(declare-fun d!831090 () Bool)

(assert (= bs!522562 (and d!831090 d!830744)))

(assert (=> bs!522562 (= (dynLambda!14317 lambda!107211 (h!39811 (unfocusZipperList!68 lt!1018429))) (validRegex!3519 (h!39811 (unfocusZipperList!68 lt!1018429))))))

(declare-fun m!3293063 () Bool)

(assert (=> bs!522562 m!3293063))

(assert (=> b!2875160 d!831090))

(declare-fun b_lambda!86111 () Bool)

(assert (= b_lambda!86103 (or d!830844 b_lambda!86111)))

(declare-fun bs!522563 () Bool)

(declare-fun d!831092 () Bool)

(assert (= bs!522563 (and d!831092 d!830844)))

(assert (=> bs!522563 (= (dynLambda!14317 lambda!107233 (h!39811 (exprs!3201 lt!1018434))) (not (dynLambda!14317 lambda!107202 (h!39811 (exprs!3201 lt!1018434)))))))

(declare-fun b_lambda!86119 () Bool)

(assert (=> (not b_lambda!86119) (not bs!522563)))

(declare-fun m!3293065 () Bool)

(assert (=> bs!522563 m!3293065))

(assert (=> b!2874892 d!831092))

(declare-fun b_lambda!86113 () Bool)

(assert (= b_lambda!86105 (or d!830692 b_lambda!86113)))

(declare-fun bs!522564 () Bool)

(declare-fun d!831094 () Bool)

(assert (= bs!522564 (and d!831094 d!830692)))

(assert (=> bs!522564 (= (dynLambda!14317 lambda!107199 (h!39811 (t!233558 (exprs!3201 c!7184)))) (validRegex!3519 (h!39811 (t!233558 (exprs!3201 c!7184)))))))

(declare-fun m!3293067 () Bool)

(assert (=> bs!522564 m!3293067))

(assert (=> b!2875149 d!831094))

(declare-fun b_lambda!86115 () Bool)

(assert (= b_lambda!86101 (or d!830756 b_lambda!86115)))

(declare-fun bs!522565 () Bool)

(declare-fun d!831096 () Bool)

(assert (= bs!522565 (and d!831096 d!830756)))

(assert (=> bs!522565 (= (dynLambda!14317 lambda!107216 (h!39811 lt!1018519)) (validRegex!3519 (h!39811 lt!1018519)))))

(declare-fun m!3293069 () Bool)

(assert (=> bs!522565 m!3293069))

(assert (=> b!2874864 d!831096))

(declare-fun b_lambda!86117 () Bool)

(assert (= b_lambda!86099 (or d!830808 b_lambda!86117)))

(declare-fun bs!522566 () Bool)

(declare-fun d!831098 () Bool)

(assert (= bs!522566 (and d!831098 d!830808)))

(assert (=> bs!522566 (= (dynLambda!14317 lambda!107231 (h!39811 (exprs!3201 c!7184))) (not (dynLambda!14317 lambda!107196 (h!39811 (exprs!3201 c!7184)))))))

(declare-fun b_lambda!86121 () Bool)

(assert (=> (not b_lambda!86121) (not bs!522566)))

(declare-fun m!3293071 () Bool)

(assert (=> bs!522566 m!3293071))

(assert (=> b!2874842 d!831098))

(check-sat (not bm!185967) (not bm!185954) (not d!830968) (not b!2875255) (not b!2874821) (not b!2874868) (not b!2875177) (not bm!185992) (not b!2875304) (not b_lambda!86111) (not b!2875163) (not bm!185958) (not b!2875040) (not b!2874838) tp_is_empty!15077 (not bm!185952) (not b!2874989) (not b!2875025) (not bm!185925) (not b!2874810) (not b!2874818) (not b!2874941) (not b!2874982) (not b!2875133) (not b!2874896) (not bm!185960) (not d!831082) (not b!2875215) (not d!831024) (not b!2874985) (not b_lambda!86109) (not bm!185975) (not b!2875034) (not b!2875075) (not b!2875161) (not d!830994) (not b!2875276) (not d!830982) (not b!2875281) (not b!2875187) (not b!2875288) (not b!2875002) (not d!830908) (not b!2875263) (not b!2875231) (not b!2874847) (not bm!185957) (not b!2875028) (not b!2874919) (not bm!185989) (not b!2874865) (not b!2874861) (not bm!185950) (not d!830924) (not d!831074) (not b!2874992) (not d!831088) (not b!2875164) (not bm!185973) (not b!2875295) (not b!2875300) (not bm!185940) (not bm!185991) (not d!830970) (not bm!185962) (not d!830948) (not bm!186001) (not b!2874974) (not bm!185982) (not bm!185935) (not bm!185993) (not b!2874877) (not b!2874880) (not b!2875273) (not b!2875277) (not bm!185983) (not bm!185939) (not b!2875299) (not b!2874800) (not d!830894) (not b!2875275) (not bm!185984) (not b!2874807) (not b!2875146) (not b!2874869) (not b!2875224) (not b!2874863) (not b!2875156) (not bs!522564) (not bm!186007) (not b!2875031) (not bm!185924) (not bm!185990) (not b!2874893) (not b!2875020) (not bm!185970) (not b_lambda!86113) (not b!2874903) (not b!2875148) (not b!2875301) (not bm!185961) (not b!2875183) (not d!831020) (not b!2874912) (not b!2875205) (not b!2874867) (not bs!522562) (not bm!185995) (not d!830892) (not b!2875296) (not b!2874935) (not b!2875065) (not b!2875289) (not bm!185981) (not bm!185966) (not bs!522565) (not bm!185988) (not bm!185922) (not b!2875096) (not b!2875080) (not bm!185974) (not b!2875191) (not b!2874795) (not b!2874975) (not b!2874994) (not b!2874968) (not b!2875185) (not bm!185932) (not d!830952) (not b!2875249) (not d!830974) (not b_lambda!86117) (not b!2875256) (not d!831054) (not bm!185949) (not bm!185980) (not d!831076) (not d!830888) (not b!2874804) (not b!2874965) (not b!2874931) (not d!830922) (not b!2874843) (not b!2874933) (not b!2874981) (not b!2874803) (not d!830910) (not d!830984) (not d!830976) (not bm!185944) (not b!2875305) (not b!2874826) (not b!2875082) (not b!2875192) (not d!830900) (not b!2874809) (not b!2875280) (not d!830940) (not b!2874984) (not b!2875303) (not b!2875047) (not bm!185947) (not b!2875292) (not b!2875279) (not b!2874979) (not d!830990) (not d!830988) (not b!2874875) (not b!2875145) (not d!831070) (not bm!185928) (not bm!185934) (not b!2875029) (not bm!186003) (not d!831008) (not b!2874983) (not bm!185964) (not d!831052) (not bm!185942) (not b!2874966) (not b!2874986) (not b_lambda!86121) (not d!830966) (not b_lambda!86119) (not b!2875150) (not bm!185971) (not bm!185927) (not d!830890) (not b!2874978) (not d!831086) (not b!2874969) (not b!2874866) (not bm!186000) (not b!2874813) (not b!2874816) (not b!2874806) (not bm!185969) (not b!2874971) (not d!831038) (not bm!185998) (not bm!185930) (not bm!185945) (not b!2875084) (not bm!185955) (not bm!185937) (not bm!185985) (not b!2875293) (not b!2874885) (not bm!185996) (not b!2875033) (not b!2875291) (not d!831016) (not b!2875272) (not b!2875306) (not bm!186005) (not b_lambda!86095) (not b!2875032) (not b!2874967) (not bm!186004) (not b!2874895) (not b!2874997) (not bm!185986) (not b!2875297) (not d!831022) (not b!2874872) (not d!831056) (not b!2875189) (not b!2874859) (not b_lambda!86115))
(check-sat)
