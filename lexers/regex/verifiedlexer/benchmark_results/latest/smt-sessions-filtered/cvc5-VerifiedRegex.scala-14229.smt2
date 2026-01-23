; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744798 () Bool)

(assert start!744798)

(declare-fun res!3132521 () Bool)

(declare-fun e!4661031 () Bool)

(assert (=> start!744798 (=> (not res!3132521) (not e!4661031))))

(declare-datatypes ((C!42786 0))(
  ( (C!42787 (val!31855 Int)) )
))
(declare-datatypes ((Regex!21230 0))(
  ( (ElementMatch!21230 (c!1449437 C!42786)) (Concat!30075 (regOne!42972 Regex!21230) (regTwo!42972 Regex!21230)) (EmptyExpr!21230) (Star!21230 (reg!21559 Regex!21230)) (EmptyLang!21230) (Union!21230 (regOne!42973 Regex!21230) (regTwo!42973 Regex!21230)) )
))
(declare-datatypes ((List!74099 0))(
  ( (Nil!73975) (Cons!73975 (h!80423 Regex!21230) (t!388834 List!74099)) )
))
(declare-datatypes ((Context!17092 0))(
  ( (Context!17093 (exprs!9046 List!74099)) )
))
(declare-datatypes ((List!74100 0))(
  ( (Nil!73976) (Cons!73976 (h!80424 Context!17092) (t!388835 List!74100)) )
))
(declare-fun zl!160 () List!74100)

(assert (=> start!744798 (= res!3132521 (is-Cons!73976 zl!160))))

(assert (=> start!744798 e!4661031))

(declare-fun e!4661032 () Bool)

(assert (=> start!744798 e!4661032))

(declare-fun b!7896897 () Bool)

(declare-fun lambda!472312 () Int)

(declare-fun forall!18430 (List!74099 Int) Bool)

(declare-fun generalisedConcat!2475 (List!74099) Regex!21230)

(declare-fun unfocusZipperList!2345 (List!74100) List!74099)

(assert (=> b!7896897 (= e!4661031 (not (forall!18430 (Cons!73975 (generalisedConcat!2475 (exprs!9046 (h!80424 zl!160))) (unfocusZipperList!2345 (t!388835 zl!160))) lambda!472312)))))

(declare-fun b!7896899 () Bool)

(declare-fun e!4661033 () Bool)

(declare-fun tp!2352647 () Bool)

(assert (=> b!7896899 (= e!4661033 tp!2352647)))

(declare-fun tp!2352648 () Bool)

(declare-fun b!7896898 () Bool)

(declare-fun inv!94966 (Context!17092) Bool)

(assert (=> b!7896898 (= e!4661032 (and (inv!94966 (h!80424 zl!160)) e!4661033 tp!2352648))))

(assert (= (and start!744798 res!3132521) b!7896897))

(assert (= b!7896898 b!7896899))

(assert (= (and start!744798 (is-Cons!73976 zl!160)) b!7896898))

(declare-fun m!8272248 () Bool)

(assert (=> b!7896897 m!8272248))

(declare-fun m!8272250 () Bool)

(assert (=> b!7896897 m!8272250))

(declare-fun m!8272252 () Bool)

(assert (=> b!7896897 m!8272252))

(declare-fun m!8272254 () Bool)

(assert (=> b!7896898 m!8272254))

(push 1)

(assert (not b!7896897))

(assert (not b!7896898))

(assert (not b!7896899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2357510 () Bool)

(declare-fun res!3132529 () Bool)

(declare-fun e!4661047 () Bool)

(assert (=> d!2357510 (=> res!3132529 e!4661047)))

(assert (=> d!2357510 (= res!3132529 (is-Nil!73975 (Cons!73975 (generalisedConcat!2475 (exprs!9046 (h!80424 zl!160))) (unfocusZipperList!2345 (t!388835 zl!160)))))))

(assert (=> d!2357510 (= (forall!18430 (Cons!73975 (generalisedConcat!2475 (exprs!9046 (h!80424 zl!160))) (unfocusZipperList!2345 (t!388835 zl!160))) lambda!472312) e!4661047)))

(declare-fun b!7896913 () Bool)

(declare-fun e!4661048 () Bool)

(assert (=> b!7896913 (= e!4661047 e!4661048)))

(declare-fun res!3132530 () Bool)

(assert (=> b!7896913 (=> (not res!3132530) (not e!4661048))))

(declare-fun dynLambda!30007 (Int Regex!21230) Bool)

(assert (=> b!7896913 (= res!3132530 (dynLambda!30007 lambda!472312 (h!80423 (Cons!73975 (generalisedConcat!2475 (exprs!9046 (h!80424 zl!160))) (unfocusZipperList!2345 (t!388835 zl!160))))))))

(declare-fun b!7896914 () Bool)

(assert (=> b!7896914 (= e!4661048 (forall!18430 (t!388834 (Cons!73975 (generalisedConcat!2475 (exprs!9046 (h!80424 zl!160))) (unfocusZipperList!2345 (t!388835 zl!160)))) lambda!472312))))

(assert (= (and d!2357510 (not res!3132529)) b!7896913))

(assert (= (and b!7896913 res!3132530) b!7896914))

(declare-fun b_lambda!289539 () Bool)

(assert (=> (not b_lambda!289539) (not b!7896913)))

(declare-fun m!8272264 () Bool)

(assert (=> b!7896913 m!8272264))

(declare-fun m!8272266 () Bool)

(assert (=> b!7896914 m!8272266))

(assert (=> b!7896897 d!2357510))

(declare-fun bs!1967786 () Bool)

(declare-fun d!2357512 () Bool)

(assert (= bs!1967786 (and d!2357512 b!7896897)))

(declare-fun lambda!472321 () Int)

(assert (=> bs!1967786 (= lambda!472321 lambda!472312)))

(declare-fun b!7896935 () Bool)

(declare-fun e!4661064 () Regex!21230)

(assert (=> b!7896935 (= e!4661064 EmptyExpr!21230)))

(declare-fun b!7896936 () Bool)

(declare-fun e!4661065 () Bool)

(declare-fun e!4661063 () Bool)

(assert (=> b!7896936 (= e!4661065 e!4661063)))

(declare-fun c!1449449 () Bool)

(declare-fun isEmpty!42438 (List!74099) Bool)

(assert (=> b!7896936 (= c!1449449 (isEmpty!42438 (exprs!9046 (h!80424 zl!160))))))

(assert (=> d!2357512 e!4661065))

(declare-fun res!3132536 () Bool)

(assert (=> d!2357512 (=> (not res!3132536) (not e!4661065))))

(declare-fun lt!2681731 () Regex!21230)

(declare-fun validRegex!11636 (Regex!21230) Bool)

(assert (=> d!2357512 (= res!3132536 (validRegex!11636 lt!2681731))))

(declare-fun e!4661062 () Regex!21230)

(assert (=> d!2357512 (= lt!2681731 e!4661062)))

(declare-fun c!1449447 () Bool)

(declare-fun e!4661066 () Bool)

(assert (=> d!2357512 (= c!1449447 e!4661066)))

(declare-fun res!3132535 () Bool)

(assert (=> d!2357512 (=> (not res!3132535) (not e!4661066))))

(assert (=> d!2357512 (= res!3132535 (is-Cons!73975 (exprs!9046 (h!80424 zl!160))))))

(assert (=> d!2357512 (forall!18430 (exprs!9046 (h!80424 zl!160)) lambda!472321)))

(assert (=> d!2357512 (= (generalisedConcat!2475 (exprs!9046 (h!80424 zl!160))) lt!2681731)))

(declare-fun b!7896937 () Bool)

(declare-fun e!4661061 () Bool)

(assert (=> b!7896937 (= e!4661063 e!4661061)))

(declare-fun c!1449448 () Bool)

(declare-fun tail!15676 (List!74099) List!74099)

(assert (=> b!7896937 (= c!1449448 (isEmpty!42438 (tail!15676 (exprs!9046 (h!80424 zl!160)))))))

(declare-fun b!7896938 () Bool)

(declare-fun isEmptyExpr!2103 (Regex!21230) Bool)

(assert (=> b!7896938 (= e!4661063 (isEmptyExpr!2103 lt!2681731))))

(declare-fun b!7896939 () Bool)

(declare-fun isConcat!1625 (Regex!21230) Bool)

(assert (=> b!7896939 (= e!4661061 (isConcat!1625 lt!2681731))))

(declare-fun b!7896940 () Bool)

(assert (=> b!7896940 (= e!4661066 (isEmpty!42438 (t!388834 (exprs!9046 (h!80424 zl!160)))))))

(declare-fun b!7896941 () Bool)

(assert (=> b!7896941 (= e!4661062 (h!80423 (exprs!9046 (h!80424 zl!160))))))

(declare-fun b!7896942 () Bool)

(assert (=> b!7896942 (= e!4661062 e!4661064)))

(declare-fun c!1449450 () Bool)

(assert (=> b!7896942 (= c!1449450 (is-Cons!73975 (exprs!9046 (h!80424 zl!160))))))

(declare-fun b!7896943 () Bool)

(assert (=> b!7896943 (= e!4661064 (Concat!30075 (h!80423 (exprs!9046 (h!80424 zl!160))) (generalisedConcat!2475 (t!388834 (exprs!9046 (h!80424 zl!160))))))))

(declare-fun b!7896944 () Bool)

(declare-fun head!16133 (List!74099) Regex!21230)

(assert (=> b!7896944 (= e!4661061 (= lt!2681731 (head!16133 (exprs!9046 (h!80424 zl!160)))))))

(assert (= (and d!2357512 res!3132535) b!7896940))

(assert (= (and d!2357512 c!1449447) b!7896941))

(assert (= (and d!2357512 (not c!1449447)) b!7896942))

(assert (= (and b!7896942 c!1449450) b!7896943))

(assert (= (and b!7896942 (not c!1449450)) b!7896935))

(assert (= (and d!2357512 res!3132536) b!7896936))

(assert (= (and b!7896936 c!1449449) b!7896938))

(assert (= (and b!7896936 (not c!1449449)) b!7896937))

(assert (= (and b!7896937 c!1449448) b!7896944))

(assert (= (and b!7896937 (not c!1449448)) b!7896939))

(declare-fun m!8272270 () Bool)

(assert (=> d!2357512 m!8272270))

(declare-fun m!8272272 () Bool)

(assert (=> d!2357512 m!8272272))

(declare-fun m!8272274 () Bool)

(assert (=> b!7896936 m!8272274))

(declare-fun m!8272276 () Bool)

(assert (=> b!7896943 m!8272276))

(declare-fun m!8272278 () Bool)

(assert (=> b!7896944 m!8272278))

(declare-fun m!8272280 () Bool)

(assert (=> b!7896939 m!8272280))

(declare-fun m!8272282 () Bool)

(assert (=> b!7896937 m!8272282))

(assert (=> b!7896937 m!8272282))

(declare-fun m!8272284 () Bool)

(assert (=> b!7896937 m!8272284))

(declare-fun m!8272286 () Bool)

(assert (=> b!7896940 m!8272286))

(declare-fun m!8272288 () Bool)

(assert (=> b!7896938 m!8272288))

(assert (=> b!7896897 d!2357512))

(declare-fun bs!1967787 () Bool)

(declare-fun d!2357518 () Bool)

(assert (= bs!1967787 (and d!2357518 b!7896897)))

(declare-fun lambda!472324 () Int)

(assert (=> bs!1967787 (= lambda!472324 lambda!472312)))

(declare-fun bs!1967788 () Bool)

(assert (= bs!1967788 (and d!2357518 d!2357512)))

(assert (=> bs!1967788 (= lambda!472324 lambda!472321)))

(declare-fun lt!2681734 () List!74099)

(assert (=> d!2357518 (forall!18430 lt!2681734 lambda!472324)))

(declare-fun e!4661075 () List!74099)

(assert (=> d!2357518 (= lt!2681734 e!4661075)))

(declare-fun c!1449453 () Bool)

(assert (=> d!2357518 (= c!1449453 (is-Cons!73976 (t!388835 zl!160)))))

(assert (=> d!2357518 (= (unfocusZipperList!2345 (t!388835 zl!160)) lt!2681734)))

(declare-fun b!7896955 () Bool)

(assert (=> b!7896955 (= e!4661075 (Cons!73975 (generalisedConcat!2475 (exprs!9046 (h!80424 (t!388835 zl!160)))) (unfocusZipperList!2345 (t!388835 (t!388835 zl!160)))))))

(declare-fun b!7896956 () Bool)

(assert (=> b!7896956 (= e!4661075 Nil!73975)))

(assert (= (and d!2357518 c!1449453) b!7896955))

(assert (= (and d!2357518 (not c!1449453)) b!7896956))

(declare-fun m!8272294 () Bool)

(assert (=> d!2357518 m!8272294))

(declare-fun m!8272296 () Bool)

(assert (=> b!7896955 m!8272296))

(declare-fun m!8272298 () Bool)

(assert (=> b!7896955 m!8272298))

(assert (=> b!7896897 d!2357518))

(declare-fun bs!1967789 () Bool)

(declare-fun d!2357522 () Bool)

(assert (= bs!1967789 (and d!2357522 b!7896897)))

(declare-fun lambda!472327 () Int)

(assert (=> bs!1967789 (= lambda!472327 lambda!472312)))

(declare-fun bs!1967790 () Bool)

(assert (= bs!1967790 (and d!2357522 d!2357512)))

(assert (=> bs!1967790 (= lambda!472327 lambda!472321)))

(declare-fun bs!1967791 () Bool)

(assert (= bs!1967791 (and d!2357522 d!2357518)))

(assert (=> bs!1967791 (= lambda!472327 lambda!472324)))

(assert (=> d!2357522 (= (inv!94966 (h!80424 zl!160)) (forall!18430 (exprs!9046 (h!80424 zl!160)) lambda!472327))))

(declare-fun bs!1967792 () Bool)

(assert (= bs!1967792 d!2357522))

(declare-fun m!8272300 () Bool)

(assert (=> bs!1967792 m!8272300))

(assert (=> b!7896898 d!2357522))

(declare-fun b!7896961 () Bool)

(declare-fun e!4661078 () Bool)

(declare-fun tp!2352659 () Bool)

(declare-fun tp!2352660 () Bool)

(assert (=> b!7896961 (= e!4661078 (and tp!2352659 tp!2352660))))

(assert (=> b!7896899 (= tp!2352647 e!4661078)))

(assert (= (and b!7896899 (is-Cons!73975 (exprs!9046 (h!80424 zl!160)))) b!7896961))

(declare-fun b!7896969 () Bool)

(declare-fun e!4661084 () Bool)

(declare-fun tp!2352665 () Bool)

(assert (=> b!7896969 (= e!4661084 tp!2352665)))

(declare-fun tp!2352666 () Bool)

(declare-fun e!4661083 () Bool)

(declare-fun b!7896968 () Bool)

(assert (=> b!7896968 (= e!4661083 (and (inv!94966 (h!80424 (t!388835 zl!160))) e!4661084 tp!2352666))))

(assert (=> b!7896898 (= tp!2352648 e!4661083)))

(assert (= b!7896968 b!7896969))

(assert (= (and b!7896898 (is-Cons!73976 (t!388835 zl!160))) b!7896968))

(declare-fun m!8272302 () Bool)

(assert (=> b!7896968 m!8272302))

(declare-fun b_lambda!289543 () Bool)

(assert (= b_lambda!289539 (or b!7896897 b_lambda!289543)))

(declare-fun bs!1967793 () Bool)

(declare-fun d!2357524 () Bool)

(assert (= bs!1967793 (and d!2357524 b!7896897)))

(assert (=> bs!1967793 (= (dynLambda!30007 lambda!472312 (h!80423 (Cons!73975 (generalisedConcat!2475 (exprs!9046 (h!80424 zl!160))) (unfocusZipperList!2345 (t!388835 zl!160))))) (validRegex!11636 (h!80423 (Cons!73975 (generalisedConcat!2475 (exprs!9046 (h!80424 zl!160))) (unfocusZipperList!2345 (t!388835 zl!160))))))))

(declare-fun m!8272304 () Bool)

(assert (=> bs!1967793 m!8272304))

(assert (=> b!7896913 d!2357524))

(push 1)

(assert (not b!7896939))

(assert (not b!7896955))

(assert (not d!2357522))

(assert (not b!7896944))

(assert (not b!7896938))

(assert (not b!7896961))

(assert (not b!7896968))

(assert (not d!2357518))

(assert (not d!2357512))

(assert (not b!7896943))

(assert (not b!7896936))

(assert (not b_lambda!289543))

(assert (not b!7896969))

(assert (not b!7896940))

(assert (not b!7896937))

(assert (not bs!1967793))

(assert (not b!7896914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

