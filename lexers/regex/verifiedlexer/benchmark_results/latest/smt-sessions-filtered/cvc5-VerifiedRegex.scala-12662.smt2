; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700920 () Bool)

(assert start!700920)

(declare-fun b!7228001 () Bool)

(assert (=> b!7228001 true))

(declare-fun res!2932620 () Bool)

(declare-fun e!4332846 () Bool)

(assert (=> start!700920 (=> (not res!2932620) (not e!4332846))))

(declare-datatypes ((C!37138 0))(
  ( (C!37139 (val!28517 Int)) )
))
(declare-datatypes ((Regex!18432 0))(
  ( (ElementMatch!18432 (c!1341039 C!37138)) (Concat!27277 (regOne!37376 Regex!18432) (regTwo!37376 Regex!18432)) (EmptyExpr!18432) (Star!18432 (reg!18761 Regex!18432)) (EmptyLang!18432) (Union!18432 (regOne!37377 Regex!18432) (regTwo!37377 Regex!18432)) )
))
(declare-datatypes ((List!69970 0))(
  ( (Nil!69846) (Cons!69846 (h!76294 Regex!18432) (t!384001 List!69970)) )
))
(declare-datatypes ((Context!14768 0))(
  ( (Context!14769 (exprs!7884 List!69970)) )
))
(declare-fun c!7037 () Context!14768)

(assert (=> start!700920 (= res!2932620 (is-Cons!69846 (exprs!7884 c!7037)))))

(assert (=> start!700920 e!4332846))

(declare-fun e!4332847 () Bool)

(declare-fun inv!89103 (Context!14768) Bool)

(assert (=> start!700920 (and (inv!89103 c!7037) e!4332847)))

(declare-fun b!7228000 () Bool)

(declare-fun e!4332848 () Bool)

(assert (=> b!7228000 (= e!4332846 e!4332848)))

(declare-fun res!2932619 () Bool)

(assert (=> b!7228000 (=> (not res!2932619) (not e!4332848))))

(declare-fun lt!2572386 () Int)

(declare-fun lt!2572387 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7228000 (= res!2932619 (>= (maxBigInt!0 lt!2572386 lt!2572387) lt!2572387))))

(declare-fun contextDepth!339 (Context!14768) Int)

(assert (=> b!7228000 (= lt!2572387 (contextDepth!339 (Context!14769 (t!384001 (exprs!7884 c!7037)))))))

(declare-fun regexDepth!421 (Regex!18432) Int)

(assert (=> b!7228000 (= lt!2572386 (regexDepth!421 (h!76294 (exprs!7884 c!7037))))))

(declare-fun lambda!438700 () Int)

(declare-fun forall!17257 (List!69970 Int) Bool)

(assert (=> b!7228001 (= e!4332848 (not (forall!17257 (t!384001 (exprs!7884 c!7037)) lambda!438700)))))

(declare-fun b!7228002 () Bool)

(declare-fun tp!2032639 () Bool)

(assert (=> b!7228002 (= e!4332847 tp!2032639)))

(assert (= (and start!700920 res!2932620) b!7228000))

(assert (= (and b!7228000 res!2932619) b!7228001))

(assert (= start!700920 b!7228002))

(declare-fun m!7896740 () Bool)

(assert (=> start!700920 m!7896740))

(declare-fun m!7896742 () Bool)

(assert (=> b!7228000 m!7896742))

(declare-fun m!7896744 () Bool)

(assert (=> b!7228000 m!7896744))

(declare-fun m!7896746 () Bool)

(assert (=> b!7228000 m!7896746))

(declare-fun m!7896748 () Bool)

(assert (=> b!7228001 m!7896748))

(push 1)

(assert (not start!700920))

(assert (not b!7228000))

(assert (not b!7228001))

(assert (not b!7228002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1902122 () Bool)

(declare-fun d!2244825 () Bool)

(assert (= bs!1902122 (and d!2244825 b!7228001)))

(declare-fun lambda!438706 () Int)

(assert (=> bs!1902122 (not (= lambda!438706 lambda!438700))))

(assert (=> d!2244825 (= (inv!89103 c!7037) (forall!17257 (exprs!7884 c!7037) lambda!438706))))

(declare-fun bs!1902123 () Bool)

(assert (= bs!1902123 d!2244825))

(declare-fun m!7896760 () Bool)

(assert (=> bs!1902123 m!7896760))

(assert (=> start!700920 d!2244825))

(declare-fun d!2244827 () Bool)

(assert (=> d!2244827 (= (maxBigInt!0 lt!2572386 lt!2572387) (ite (>= lt!2572386 lt!2572387) lt!2572386 lt!2572387))))

(assert (=> b!7228000 d!2244827))

(declare-fun bs!1902124 () Bool)

(declare-fun b!7228024 () Bool)

(assert (= bs!1902124 (and b!7228024 b!7228001)))

(declare-fun lt!2572405 () Int)

(declare-fun lambda!438711 () Int)

(assert (=> bs!1902124 (= (= lt!2572405 lt!2572387) (= lambda!438711 lambda!438700))))

(declare-fun bs!1902125 () Bool)

(assert (= bs!1902125 (and b!7228024 d!2244825)))

(assert (=> bs!1902125 (not (= lambda!438711 lambda!438706))))

(assert (=> b!7228024 true))

(declare-fun bs!1902126 () Bool)

(declare-fun b!7228026 () Bool)

(assert (= bs!1902126 (and b!7228026 b!7228001)))

(declare-fun lambda!438712 () Int)

(declare-fun lt!2572403 () Int)

(assert (=> bs!1902126 (= (= lt!2572403 lt!2572387) (= lambda!438712 lambda!438700))))

(declare-fun bs!1902127 () Bool)

(assert (= bs!1902127 (and b!7228026 d!2244825)))

(assert (=> bs!1902127 (not (= lambda!438712 lambda!438706))))

(declare-fun bs!1902128 () Bool)

(assert (= bs!1902128 (and b!7228026 b!7228024)))

(assert (=> bs!1902128 (= (= lt!2572403 lt!2572405) (= lambda!438712 lambda!438711))))

(assert (=> b!7228026 true))

(declare-fun d!2244829 () Bool)

(declare-fun e!4332863 () Bool)

(assert (=> d!2244829 e!4332863))

(declare-fun res!2932629 () Bool)

(assert (=> d!2244829 (=> (not res!2932629) (not e!4332863))))

(assert (=> d!2244829 (= res!2932629 (>= lt!2572403 0))))

(declare-fun e!4332862 () Int)

(assert (=> d!2244829 (= lt!2572403 e!4332862)))

(declare-fun c!1341044 () Bool)

(assert (=> d!2244829 (= c!1341044 (is-Cons!69846 (exprs!7884 (Context!14769 (t!384001 (exprs!7884 c!7037))))))))

(assert (=> d!2244829 (= (contextDepth!339 (Context!14769 (t!384001 (exprs!7884 c!7037)))) lt!2572403)))

(assert (=> b!7228024 (= e!4332862 lt!2572405)))

(assert (=> b!7228024 (= lt!2572405 (maxBigInt!0 (regexDepth!421 (h!76294 (exprs!7884 (Context!14769 (t!384001 (exprs!7884 c!7037)))))) (contextDepth!339 (Context!14769 (t!384001 (exprs!7884 (Context!14769 (t!384001 (exprs!7884 c!7037)))))))))))

(declare-datatypes ((Unit!163451 0))(
  ( (Unit!163452) )
))
(declare-fun lt!2572402 () Unit!163451)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!154 (List!69970 Int Int) Unit!163451)

(assert (=> b!7228024 (= lt!2572402 (lemmaForallRegexDepthBiggerThanTransitive!154 (t!384001 (exprs!7884 (Context!14769 (t!384001 (exprs!7884 c!7037))))) lt!2572405 (contextDepth!339 (Context!14769 (t!384001 (exprs!7884 (Context!14769 (t!384001 (exprs!7884 c!7037)))))))))))

(assert (=> b!7228024 (forall!17257 (t!384001 (exprs!7884 (Context!14769 (t!384001 (exprs!7884 c!7037))))) lambda!438711)))

(declare-fun lt!2572404 () Unit!163451)

(assert (=> b!7228024 (= lt!2572404 lt!2572402)))

(declare-fun b!7228025 () Bool)

(assert (=> b!7228025 (= e!4332862 0)))

(assert (=> b!7228026 (= e!4332863 (forall!17257 (exprs!7884 (Context!14769 (t!384001 (exprs!7884 c!7037)))) lambda!438712))))

(assert (= (and d!2244829 c!1341044) b!7228024))

(assert (= (and d!2244829 (not c!1341044)) b!7228025))

(assert (= (and d!2244829 res!2932629) b!7228026))

(declare-fun m!7896762 () Bool)

(assert (=> b!7228024 m!7896762))

(declare-fun m!7896764 () Bool)

(assert (=> b!7228024 m!7896764))

(assert (=> b!7228024 m!7896764))

(declare-fun m!7896766 () Bool)

(assert (=> b!7228024 m!7896766))

(assert (=> b!7228024 m!7896762))

(assert (=> b!7228024 m!7896764))

(declare-fun m!7896768 () Bool)

(assert (=> b!7228024 m!7896768))

(declare-fun m!7896770 () Bool)

(assert (=> b!7228024 m!7896770))

(declare-fun m!7896772 () Bool)

(assert (=> b!7228026 m!7896772))

(assert (=> b!7228000 d!2244829))

(declare-fun bm!658044 () Bool)

(declare-fun call!658055 () Int)

(declare-fun c!1341063 () Bool)

(assert (=> bm!658044 (= call!658055 (regexDepth!421 (ite c!1341063 (regTwo!37377 (h!76294 (exprs!7884 c!7037))) (regTwo!37376 (h!76294 (exprs!7884 c!7037))))))))

(declare-fun b!7228065 () Bool)

(declare-fun e!4332891 () Int)

(assert (=> b!7228065 (= e!4332891 1)))

(declare-fun b!7228066 () Bool)

(declare-fun e!4332886 () Int)

(declare-fun e!4332887 () Int)

(assert (=> b!7228066 (= e!4332886 e!4332887)))

(declare-fun c!1341062 () Bool)

(assert (=> b!7228066 (= c!1341062 (is-Concat!27277 (h!76294 (exprs!7884 c!7037))))))

(declare-fun b!7228067 () Bool)

(assert (=> b!7228067 (= e!4332887 1)))

(declare-fun b!7228068 () Bool)

(declare-fun e!4332892 () Int)

(declare-fun call!658050 () Int)

(assert (=> b!7228068 (= e!4332892 (+ 1 call!658050))))

(declare-fun b!7228069 () Bool)

(declare-fun e!4332890 () Bool)

(declare-fun lt!2572416 () Int)

(declare-fun call!658051 () Int)

(assert (=> b!7228069 (= e!4332890 (> lt!2572416 call!658051))))

(declare-fun b!7228070 () Bool)

(declare-fun e!4332889 () Bool)

(declare-fun e!4332894 () Bool)

(assert (=> b!7228070 (= e!4332889 e!4332894)))

(declare-fun res!2932637 () Bool)

(declare-fun call!658049 () Int)

(assert (=> b!7228070 (= res!2932637 (> lt!2572416 call!658049))))

(assert (=> b!7228070 (=> (not res!2932637) (not e!4332894))))

(declare-fun b!7228071 () Bool)

(declare-fun e!4332888 () Bool)

(assert (=> b!7228071 (= e!4332889 e!4332888)))

(declare-fun c!1341067 () Bool)

(assert (=> b!7228071 (= c!1341067 (is-Concat!27277 (h!76294 (exprs!7884 c!7037))))))

(declare-fun bm!658045 () Bool)

(declare-fun call!658053 () Int)

(declare-fun call!658052 () Int)

(assert (=> bm!658045 (= call!658053 (maxBigInt!0 call!658052 call!658055))))

(declare-fun b!7228072 () Bool)

(declare-fun res!2932636 () Bool)

(declare-fun e!4332893 () Bool)

(assert (=> b!7228072 (=> (not res!2932636) (not e!4332893))))

(assert (=> b!7228072 (= res!2932636 (> lt!2572416 call!658051))))

(assert (=> b!7228072 (= e!4332888 e!4332893)))

(declare-fun b!7228073 () Bool)

(assert (=> b!7228073 (= e!4332887 (+ 1 call!658053))))

(declare-fun b!7228074 () Bool)

(declare-fun e!4332895 () Bool)

(assert (=> b!7228074 (= e!4332895 e!4332889)))

(declare-fun c!1341064 () Bool)

(assert (=> b!7228074 (= c!1341064 (is-Union!18432 (h!76294 (exprs!7884 c!7037))))))

(declare-fun b!7228075 () Bool)

(assert (=> b!7228075 (= e!4332891 e!4332892)))

(declare-fun c!1341066 () Bool)

(assert (=> b!7228075 (= c!1341066 (is-Star!18432 (h!76294 (exprs!7884 c!7037))))))

(declare-fun b!7228076 () Bool)

(assert (=> b!7228076 (= c!1341063 (is-Union!18432 (h!76294 (exprs!7884 c!7037))))))

(assert (=> b!7228076 (= e!4332892 e!4332886)))

(declare-fun b!7228077 () Bool)

(declare-fun call!658054 () Int)

(assert (=> b!7228077 (= e!4332893 (> lt!2572416 call!658054))))

(declare-fun b!7228078 () Bool)

(assert (=> b!7228078 (= e!4332894 (> lt!2572416 call!658054))))

(declare-fun bm!658046 () Bool)

(assert (=> bm!658046 (= call!658049 (regexDepth!421 (ite c!1341064 (regOne!37377 (h!76294 (exprs!7884 c!7037))) (ite c!1341067 (regOne!37376 (h!76294 (exprs!7884 c!7037))) (reg!18761 (h!76294 (exprs!7884 c!7037)))))))))

(declare-fun bm!658047 () Bool)

(assert (=> bm!658047 (= call!658052 call!658050)))

(declare-fun bm!658048 () Bool)

(assert (=> bm!658048 (= call!658051 call!658049)))

(declare-fun b!7228079 () Bool)

(assert (=> b!7228079 (= e!4332890 (= lt!2572416 1))))

(declare-fun bm!658049 () Bool)

(assert (=> bm!658049 (= call!658054 (regexDepth!421 (ite c!1341064 (regTwo!37377 (h!76294 (exprs!7884 c!7037))) (regTwo!37376 (h!76294 (exprs!7884 c!7037))))))))

(declare-fun d!2244835 () Bool)

(assert (=> d!2244835 e!4332895))

(declare-fun res!2932638 () Bool)

(assert (=> d!2244835 (=> (not res!2932638) (not e!4332895))))

(assert (=> d!2244835 (= res!2932638 (> lt!2572416 0))))

(assert (=> d!2244835 (= lt!2572416 e!4332891)))

(declare-fun c!1341065 () Bool)

(assert (=> d!2244835 (= c!1341065 (is-ElementMatch!18432 (h!76294 (exprs!7884 c!7037))))))

(assert (=> d!2244835 (= (regexDepth!421 (h!76294 (exprs!7884 c!7037))) lt!2572416)))

(declare-fun bm!658050 () Bool)

(assert (=> bm!658050 (= call!658050 (regexDepth!421 (ite c!1341066 (reg!18761 (h!76294 (exprs!7884 c!7037))) (ite c!1341063 (regOne!37377 (h!76294 (exprs!7884 c!7037))) (regOne!37376 (h!76294 (exprs!7884 c!7037)))))))))

(declare-fun b!7228080 () Bool)

(declare-fun c!1341068 () Bool)

(assert (=> b!7228080 (= c!1341068 (is-Star!18432 (h!76294 (exprs!7884 c!7037))))))

(assert (=> b!7228080 (= e!4332888 e!4332890)))

(declare-fun b!7228081 () Bool)

(assert (=> b!7228081 (= e!4332886 (+ 1 call!658053))))

(assert (= (and d!2244835 c!1341065) b!7228065))

(assert (= (and d!2244835 (not c!1341065)) b!7228075))

(assert (= (and b!7228075 c!1341066) b!7228068))

(assert (= (and b!7228075 (not c!1341066)) b!7228076))

(assert (= (and b!7228076 c!1341063) b!7228081))

(assert (= (and b!7228076 (not c!1341063)) b!7228066))

(assert (= (and b!7228066 c!1341062) b!7228073))

(assert (= (and b!7228066 (not c!1341062)) b!7228067))

(assert (= (or b!7228081 b!7228073) bm!658047))

(assert (= (or b!7228081 b!7228073) bm!658044))

(assert (= (or b!7228081 b!7228073) bm!658045))

(assert (= (or b!7228068 bm!658047) bm!658050))

(assert (= (and d!2244835 res!2932638) b!7228074))

(assert (= (and b!7228074 c!1341064) b!7228070))

(assert (= (and b!7228074 (not c!1341064)) b!7228071))

(assert (= (and b!7228070 res!2932637) b!7228078))

(assert (= (and b!7228071 c!1341067) b!7228072))

(assert (= (and b!7228071 (not c!1341067)) b!7228080))

(assert (= (and b!7228072 res!2932636) b!7228077))

(assert (= (and b!7228080 c!1341068) b!7228069))

(assert (= (and b!7228080 (not c!1341068)) b!7228079))

(assert (= (or b!7228072 b!7228069) bm!658048))

(assert (= (or b!7228070 bm!658048) bm!658046))

(assert (= (or b!7228078 b!7228077) bm!658049))

(declare-fun m!7896774 () Bool)

(assert (=> bm!658049 m!7896774))

(declare-fun m!7896776 () Bool)

(assert (=> bm!658046 m!7896776))

(declare-fun m!7896778 () Bool)

(assert (=> bm!658045 m!7896778))

(declare-fun m!7896780 () Bool)

(assert (=> bm!658050 m!7896780))

(declare-fun m!7896782 () Bool)

(assert (=> bm!658044 m!7896782))

(assert (=> b!7228000 d!2244835))

(declare-fun d!2244837 () Bool)

(declare-fun res!2932645 () Bool)

(declare-fun e!4332902 () Bool)

(assert (=> d!2244837 (=> res!2932645 e!4332902)))

(assert (=> d!2244837 (= res!2932645 (is-Nil!69846 (t!384001 (exprs!7884 c!7037))))))

(assert (=> d!2244837 (= (forall!17257 (t!384001 (exprs!7884 c!7037)) lambda!438700) e!4332902)))

(declare-fun b!7228088 () Bool)

(declare-fun e!4332903 () Bool)

(assert (=> b!7228088 (= e!4332902 e!4332903)))

(declare-fun res!2932646 () Bool)

(assert (=> b!7228088 (=> (not res!2932646) (not e!4332903))))

(declare-fun dynLambda!28444 (Int Regex!18432) Bool)

(assert (=> b!7228088 (= res!2932646 (dynLambda!28444 lambda!438700 (h!76294 (t!384001 (exprs!7884 c!7037)))))))

(declare-fun b!7228089 () Bool)

(assert (=> b!7228089 (= e!4332903 (forall!17257 (t!384001 (t!384001 (exprs!7884 c!7037))) lambda!438700))))

(assert (= (and d!2244837 (not res!2932645)) b!7228088))

(assert (= (and b!7228088 res!2932646) b!7228089))

(declare-fun b_lambda!276751 () Bool)

(assert (=> (not b_lambda!276751) (not b!7228088)))

(declare-fun m!7896784 () Bool)

(assert (=> b!7228088 m!7896784))

(declare-fun m!7896786 () Bool)

(assert (=> b!7228089 m!7896786))

(assert (=> b!7228001 d!2244837))

(declare-fun b!7228094 () Bool)

(declare-fun e!4332906 () Bool)

(declare-fun tp!2032647 () Bool)

(declare-fun tp!2032648 () Bool)

(assert (=> b!7228094 (= e!4332906 (and tp!2032647 tp!2032648))))

(assert (=> b!7228002 (= tp!2032639 e!4332906)))

(assert (= (and b!7228002 (is-Cons!69846 (exprs!7884 c!7037))) b!7228094))

(declare-fun b_lambda!276753 () Bool)

(assert (= b_lambda!276751 (or b!7228001 b_lambda!276753)))

(declare-fun bs!1902129 () Bool)

(declare-fun d!2244839 () Bool)

(assert (= bs!1902129 (and d!2244839 b!7228001)))

(assert (=> bs!1902129 (= (dynLambda!28444 lambda!438700 (h!76294 (t!384001 (exprs!7884 c!7037)))) (>= lt!2572387 (regexDepth!421 (h!76294 (t!384001 (exprs!7884 c!7037))))))))

(declare-fun m!7896788 () Bool)

(assert (=> bs!1902129 m!7896788))

(assert (=> b!7228088 d!2244839))

(push 1)

(assert (not b!7228094))

(assert (not b!7228024))

(assert (not bm!658050))

(assert (not b!7228089))

(assert (not b_lambda!276753))

(assert (not d!2244825))

(assert (not bm!658049))

(assert (not bm!658044))

(assert (not bs!1902129))

(assert (not bm!658045))

(assert (not b!7228026))

(assert (not bm!658046))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

