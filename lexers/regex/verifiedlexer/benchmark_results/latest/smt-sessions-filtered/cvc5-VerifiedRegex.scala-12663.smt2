; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700944 () Bool)

(assert start!700944)

(declare-fun b!7228166 () Bool)

(assert (=> b!7228166 true))

(declare-fun res!2932667 () Bool)

(declare-fun e!4332956 () Bool)

(assert (=> start!700944 (=> (not res!2932667) (not e!4332956))))

(declare-datatypes ((C!37142 0))(
  ( (C!37143 (val!28519 Int)) )
))
(declare-datatypes ((Regex!18434 0))(
  ( (ElementMatch!18434 (c!1341091 C!37142)) (Concat!27279 (regOne!37380 Regex!18434) (regTwo!37380 Regex!18434)) (EmptyExpr!18434) (Star!18434 (reg!18763 Regex!18434)) (EmptyLang!18434) (Union!18434 (regOne!37381 Regex!18434) (regTwo!37381 Regex!18434)) )
))
(declare-datatypes ((List!69972 0))(
  ( (Nil!69848) (Cons!69848 (h!76296 Regex!18434) (t!384003 List!69972)) )
))
(declare-datatypes ((Context!14772 0))(
  ( (Context!14773 (exprs!7886 List!69972)) )
))
(declare-fun c!7037 () Context!14772)

(assert (=> start!700944 (= res!2932667 (is-Cons!69848 (exprs!7886 c!7037)))))

(assert (=> start!700944 e!4332956))

(declare-fun e!4332954 () Bool)

(declare-fun inv!89108 (Context!14772) Bool)

(assert (=> start!700944 (and (inv!89108 c!7037) e!4332954)))

(declare-fun e!4332955 () Bool)

(assert (=> b!7228166 (= e!4332956 (not e!4332955))))

(declare-fun res!2932668 () Bool)

(assert (=> b!7228166 (=> (not res!2932668) (not e!4332955))))

(declare-fun lt!2572432 () Int)

(assert (=> b!7228166 (= res!2932668 (>= lt!2572432 0))))

(declare-fun lambda!438726 () Int)

(declare-fun forall!17259 (List!69972 Int) Bool)

(assert (=> b!7228166 (forall!17259 (t!384003 (exprs!7886 c!7037)) lambda!438726)))

(declare-datatypes ((Unit!163455 0))(
  ( (Unit!163456) )
))
(declare-fun lt!2572434 () Unit!163455)

(declare-fun lt!2572433 () Int)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!156 (List!69972 Int Int) Unit!163455)

(assert (=> b!7228166 (= lt!2572434 (lemmaForallRegexDepthBiggerThanTransitive!156 (t!384003 (exprs!7886 c!7037)) lt!2572432 lt!2572433))))

(declare-fun lt!2572435 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7228166 (= lt!2572432 (maxBigInt!0 lt!2572435 lt!2572433))))

(declare-fun contextDepth!341 (Context!14772) Int)

(assert (=> b!7228166 (= lt!2572433 (contextDepth!341 (Context!14773 (t!384003 (exprs!7886 c!7037)))))))

(declare-fun regexDepth!423 (Regex!18434) Int)

(assert (=> b!7228166 (= lt!2572435 (regexDepth!423 (h!76296 (exprs!7886 c!7037))))))

(declare-fun b!7228167 () Bool)

(assert (=> b!7228167 (= e!4332955 (forall!17259 (exprs!7886 c!7037) lambda!438726))))

(declare-fun b!7228168 () Bool)

(declare-fun tp!2032657 () Bool)

(assert (=> b!7228168 (= e!4332954 tp!2032657)))

(assert (= (and start!700944 res!2932667) b!7228166))

(assert (= (and b!7228166 res!2932668) b!7228167))

(assert (= start!700944 b!7228168))

(declare-fun m!7896820 () Bool)

(assert (=> start!700944 m!7896820))

(declare-fun m!7896822 () Bool)

(assert (=> b!7228166 m!7896822))

(declare-fun m!7896824 () Bool)

(assert (=> b!7228166 m!7896824))

(declare-fun m!7896826 () Bool)

(assert (=> b!7228166 m!7896826))

(declare-fun m!7896828 () Bool)

(assert (=> b!7228166 m!7896828))

(declare-fun m!7896830 () Bool)

(assert (=> b!7228166 m!7896830))

(declare-fun m!7896832 () Bool)

(assert (=> b!7228167 m!7896832))

(push 1)

(assert (not start!700944))

(assert (not b!7228166))

(assert (not b!7228167))

(assert (not b!7228168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1902140 () Bool)

(declare-fun d!2244850 () Bool)

(assert (= bs!1902140 (and d!2244850 b!7228166)))

(declare-fun lambda!438734 () Int)

(assert (=> bs!1902140 (not (= lambda!438734 lambda!438726))))

(assert (=> d!2244850 (= (inv!89108 c!7037) (forall!17259 (exprs!7886 c!7037) lambda!438734))))

(declare-fun bs!1902141 () Bool)

(assert (= bs!1902141 d!2244850))

(declare-fun m!7896848 () Bool)

(assert (=> bs!1902141 m!7896848))

(assert (=> start!700944 d!2244850))

(declare-fun d!2244852 () Bool)

(declare-fun res!2932679 () Bool)

(declare-fun e!4332970 () Bool)

(assert (=> d!2244852 (=> res!2932679 e!4332970)))

(assert (=> d!2244852 (= res!2932679 (is-Nil!69848 (t!384003 (exprs!7886 c!7037))))))

(assert (=> d!2244852 (= (forall!17259 (t!384003 (exprs!7886 c!7037)) lambda!438726) e!4332970)))

(declare-fun b!7228186 () Bool)

(declare-fun e!4332971 () Bool)

(assert (=> b!7228186 (= e!4332970 e!4332971)))

(declare-fun res!2932680 () Bool)

(assert (=> b!7228186 (=> (not res!2932680) (not e!4332971))))

(declare-fun dynLambda!28445 (Int Regex!18434) Bool)

(assert (=> b!7228186 (= res!2932680 (dynLambda!28445 lambda!438726 (h!76296 (t!384003 (exprs!7886 c!7037)))))))

(declare-fun b!7228187 () Bool)

(assert (=> b!7228187 (= e!4332971 (forall!17259 (t!384003 (t!384003 (exprs!7886 c!7037))) lambda!438726))))

(assert (= (and d!2244852 (not res!2932679)) b!7228186))

(assert (= (and b!7228186 res!2932680) b!7228187))

(declare-fun b_lambda!276759 () Bool)

(assert (=> (not b_lambda!276759) (not b!7228186)))

(declare-fun m!7896850 () Bool)

(assert (=> b!7228186 m!7896850))

(declare-fun m!7896852 () Bool)

(assert (=> b!7228187 m!7896852))

(assert (=> b!7228166 d!2244852))

(declare-fun bs!1902144 () Bool)

(declare-fun b!7228194 () Bool)

(assert (= bs!1902144 (and b!7228194 b!7228166)))

(declare-fun lambda!438742 () Int)

(declare-fun lt!2572458 () Int)

(assert (=> bs!1902144 (= (= lt!2572458 lt!2572432) (= lambda!438742 lambda!438726))))

(declare-fun bs!1902145 () Bool)

(assert (= bs!1902145 (and b!7228194 d!2244850)))

(assert (=> bs!1902145 (not (= lambda!438742 lambda!438734))))

(assert (=> b!7228194 true))

(declare-fun bs!1902146 () Bool)

(declare-fun b!7228196 () Bool)

(assert (= bs!1902146 (and b!7228196 b!7228166)))

(declare-fun lambda!438743 () Int)

(declare-fun lt!2572457 () Int)

(assert (=> bs!1902146 (= (= lt!2572457 lt!2572432) (= lambda!438743 lambda!438726))))

(declare-fun bs!1902147 () Bool)

(assert (= bs!1902147 (and b!7228196 d!2244850)))

(assert (=> bs!1902147 (not (= lambda!438743 lambda!438734))))

(declare-fun bs!1902148 () Bool)

(assert (= bs!1902148 (and b!7228196 b!7228194)))

(assert (=> bs!1902148 (= (= lt!2572457 lt!2572458) (= lambda!438743 lambda!438742))))

(assert (=> b!7228196 true))

(declare-fun d!2244856 () Bool)

(declare-fun e!4332977 () Bool)

(assert (=> d!2244856 e!4332977))

(declare-fun res!2932683 () Bool)

(assert (=> d!2244856 (=> (not res!2932683) (not e!4332977))))

(assert (=> d!2244856 (= res!2932683 (>= lt!2572457 0))))

(declare-fun e!4332976 () Int)

(assert (=> d!2244856 (= lt!2572457 e!4332976)))

(declare-fun c!1341096 () Bool)

(assert (=> d!2244856 (= c!1341096 (is-Cons!69848 (exprs!7886 (Context!14773 (t!384003 (exprs!7886 c!7037))))))))

(assert (=> d!2244856 (= (contextDepth!341 (Context!14773 (t!384003 (exprs!7886 c!7037)))) lt!2572457)))

(assert (=> b!7228194 (= e!4332976 lt!2572458)))

(assert (=> b!7228194 (= lt!2572458 (maxBigInt!0 (regexDepth!423 (h!76296 (exprs!7886 (Context!14773 (t!384003 (exprs!7886 c!7037)))))) (contextDepth!341 (Context!14773 (t!384003 (exprs!7886 (Context!14773 (t!384003 (exprs!7886 c!7037)))))))))))

(declare-fun lt!2572456 () Unit!163455)

(assert (=> b!7228194 (= lt!2572456 (lemmaForallRegexDepthBiggerThanTransitive!156 (t!384003 (exprs!7886 (Context!14773 (t!384003 (exprs!7886 c!7037))))) lt!2572458 (contextDepth!341 (Context!14773 (t!384003 (exprs!7886 (Context!14773 (t!384003 (exprs!7886 c!7037)))))))))))

(assert (=> b!7228194 (forall!17259 (t!384003 (exprs!7886 (Context!14773 (t!384003 (exprs!7886 c!7037))))) lambda!438742)))

(declare-fun lt!2572459 () Unit!163455)

(assert (=> b!7228194 (= lt!2572459 lt!2572456)))

(declare-fun b!7228195 () Bool)

(assert (=> b!7228195 (= e!4332976 0)))

(assert (=> b!7228196 (= e!4332977 (forall!17259 (exprs!7886 (Context!14773 (t!384003 (exprs!7886 c!7037)))) lambda!438743))))

(assert (= (and d!2244856 c!1341096) b!7228194))

(assert (= (and d!2244856 (not c!1341096)) b!7228195))

(assert (= (and d!2244856 res!2932683) b!7228196))

(declare-fun m!7896856 () Bool)

(assert (=> b!7228194 m!7896856))

(declare-fun m!7896858 () Bool)

(assert (=> b!7228194 m!7896858))

(declare-fun m!7896860 () Bool)

(assert (=> b!7228194 m!7896860))

(assert (=> b!7228194 m!7896856))

(assert (=> b!7228194 m!7896858))

(declare-fun m!7896862 () Bool)

(assert (=> b!7228194 m!7896862))

(declare-fun m!7896864 () Bool)

(assert (=> b!7228194 m!7896864))

(assert (=> b!7228194 m!7896858))

(declare-fun m!7896866 () Bool)

(assert (=> b!7228196 m!7896866))

(assert (=> b!7228166 d!2244856))

(declare-fun b!7228231 () Bool)

(declare-fun e!4332999 () Int)

(assert (=> b!7228231 (= e!4332999 1)))

(declare-fun bm!658086 () Bool)

(declare-fun call!658093 () Int)

(declare-fun c!1341112 () Bool)

(assert (=> bm!658086 (= call!658093 (regexDepth!423 (ite c!1341112 (regTwo!37381 (h!76296 (exprs!7886 c!7037))) (regTwo!37380 (h!76296 (exprs!7886 c!7037))))))))

(declare-fun bm!658087 () Bool)

(declare-fun call!658095 () Int)

(declare-fun call!658092 () Int)

(assert (=> bm!658087 (= call!658095 call!658092)))

(declare-fun b!7228232 () Bool)

(declare-fun e!4333003 () Bool)

(declare-fun e!4333007 () Bool)

(assert (=> b!7228232 (= e!4333003 e!4333007)))

(assert (=> b!7228232 (= c!1341112 (is-Union!18434 (h!76296 (exprs!7886 c!7037))))))

(declare-fun d!2244860 () Bool)

(assert (=> d!2244860 e!4333003))

(declare-fun res!2932692 () Bool)

(assert (=> d!2244860 (=> (not res!2932692) (not e!4333003))))

(declare-fun lt!2572462 () Int)

(assert (=> d!2244860 (= res!2932692 (> lt!2572462 0))))

(assert (=> d!2244860 (= lt!2572462 e!4332999)))

(declare-fun c!1341114 () Bool)

(assert (=> d!2244860 (= c!1341114 (is-ElementMatch!18434 (h!76296 (exprs!7886 c!7037))))))

(assert (=> d!2244860 (= (regexDepth!423 (h!76296 (exprs!7886 c!7037))) lt!2572462)))

(declare-fun b!7228233 () Bool)

(declare-fun e!4333001 () Int)

(assert (=> b!7228233 (= e!4333001 1)))

(declare-fun b!7228234 () Bool)

(declare-fun call!658091 () Int)

(assert (=> b!7228234 (= e!4333001 (+ 1 call!658091))))

(declare-fun b!7228235 () Bool)

(declare-fun e!4333000 () Int)

(assert (=> b!7228235 (= e!4333000 (+ 1 call!658092))))

(declare-fun b!7228236 () Bool)

(declare-fun e!4333005 () Int)

(assert (=> b!7228236 (= e!4333005 (+ 1 call!658091))))

(declare-fun b!7228237 () Bool)

(declare-fun c!1341117 () Bool)

(assert (=> b!7228237 (= c!1341117 (is-Star!18434 (h!76296 (exprs!7886 c!7037))))))

(declare-fun e!4333004 () Bool)

(declare-fun e!4333002 () Bool)

(assert (=> b!7228237 (= e!4333004 e!4333002)))

(declare-fun b!7228238 () Bool)

(assert (=> b!7228238 (= e!4333005 e!4333001)))

(declare-fun c!1341115 () Bool)

(assert (=> b!7228238 (= c!1341115 (is-Concat!27279 (h!76296 (exprs!7886 c!7037))))))

(declare-fun b!7228239 () Bool)

(assert (=> b!7228239 (= e!4332999 e!4333000)))

(declare-fun c!1341113 () Bool)

(assert (=> b!7228239 (= c!1341113 (is-Star!18434 (h!76296 (exprs!7886 c!7037))))))

(declare-fun b!7228240 () Bool)

(declare-fun call!658097 () Int)

(assert (=> b!7228240 (= e!4333002 (> lt!2572462 call!658097))))

(declare-fun b!7228241 () Bool)

(assert (=> b!7228241 (= e!4333007 e!4333004)))

(declare-fun c!1341111 () Bool)

(assert (=> b!7228241 (= c!1341111 (is-Concat!27279 (h!76296 (exprs!7886 c!7037))))))

(declare-fun b!7228242 () Bool)

(declare-fun e!4333006 () Bool)

(assert (=> b!7228242 (= e!4333006 (> lt!2572462 call!658093))))

(declare-fun bm!658088 () Bool)

(declare-fun call!658094 () Int)

(assert (=> bm!658088 (= call!658091 (maxBigInt!0 call!658095 call!658094))))

(declare-fun b!7228243 () Bool)

(declare-fun e!4332998 () Bool)

(assert (=> b!7228243 (= e!4333007 e!4332998)))

(declare-fun res!2932690 () Bool)

(declare-fun call!658096 () Int)

(assert (=> b!7228243 (= res!2932690 (> lt!2572462 call!658096))))

(assert (=> b!7228243 (=> (not res!2932690) (not e!4332998))))

(declare-fun bm!658089 () Bool)

(assert (=> bm!658089 (= call!658097 call!658096)))

(declare-fun bm!658090 () Bool)

(declare-fun c!1341116 () Bool)

(assert (=> bm!658090 (= call!658094 (regexDepth!423 (ite c!1341116 (regTwo!37381 (h!76296 (exprs!7886 c!7037))) (regTwo!37380 (h!76296 (exprs!7886 c!7037))))))))

(declare-fun bm!658091 () Bool)

(assert (=> bm!658091 (= call!658092 (regexDepth!423 (ite c!1341113 (reg!18763 (h!76296 (exprs!7886 c!7037))) (ite c!1341116 (regOne!37381 (h!76296 (exprs!7886 c!7037))) (regOne!37380 (h!76296 (exprs!7886 c!7037)))))))))

(declare-fun b!7228244 () Bool)

(declare-fun res!2932691 () Bool)

(assert (=> b!7228244 (=> (not res!2932691) (not e!4333006))))

(assert (=> b!7228244 (= res!2932691 (> lt!2572462 call!658097))))

(assert (=> b!7228244 (= e!4333004 e!4333006)))

(declare-fun bm!658092 () Bool)

(assert (=> bm!658092 (= call!658096 (regexDepth!423 (ite c!1341112 (regOne!37381 (h!76296 (exprs!7886 c!7037))) (ite c!1341111 (regOne!37380 (h!76296 (exprs!7886 c!7037))) (reg!18763 (h!76296 (exprs!7886 c!7037)))))))))

(declare-fun b!7228245 () Bool)

(assert (=> b!7228245 (= e!4332998 (> lt!2572462 call!658093))))

(declare-fun b!7228246 () Bool)

(assert (=> b!7228246 (= e!4333002 (= lt!2572462 1))))

(declare-fun b!7228247 () Bool)

(assert (=> b!7228247 (= c!1341116 (is-Union!18434 (h!76296 (exprs!7886 c!7037))))))

(assert (=> b!7228247 (= e!4333000 e!4333005)))

(assert (= (and d!2244860 c!1341114) b!7228231))

(assert (= (and d!2244860 (not c!1341114)) b!7228239))

(assert (= (and b!7228239 c!1341113) b!7228235))

(assert (= (and b!7228239 (not c!1341113)) b!7228247))

(assert (= (and b!7228247 c!1341116) b!7228236))

(assert (= (and b!7228247 (not c!1341116)) b!7228238))

(assert (= (and b!7228238 c!1341115) b!7228234))

(assert (= (and b!7228238 (not c!1341115)) b!7228233))

(assert (= (or b!7228236 b!7228234) bm!658087))

(assert (= (or b!7228236 b!7228234) bm!658090))

(assert (= (or b!7228236 b!7228234) bm!658088))

(assert (= (or b!7228235 bm!658087) bm!658091))

(assert (= (and d!2244860 res!2932692) b!7228232))

(assert (= (and b!7228232 c!1341112) b!7228243))

(assert (= (and b!7228232 (not c!1341112)) b!7228241))

(assert (= (and b!7228243 res!2932690) b!7228245))

(assert (= (and b!7228241 c!1341111) b!7228244))

(assert (= (and b!7228241 (not c!1341111)) b!7228237))

(assert (= (and b!7228244 res!2932691) b!7228242))

(assert (= (and b!7228237 c!1341117) b!7228240))

(assert (= (and b!7228237 (not c!1341117)) b!7228246))

(assert (= (or b!7228244 b!7228240) bm!658089))

(assert (= (or b!7228243 bm!658089) bm!658092))

(assert (= (or b!7228245 b!7228242) bm!658086))

(declare-fun m!7896868 () Bool)

(assert (=> bm!658092 m!7896868))

(declare-fun m!7896870 () Bool)

(assert (=> bm!658088 m!7896870))

(declare-fun m!7896872 () Bool)

(assert (=> bm!658086 m!7896872))

(declare-fun m!7896874 () Bool)

(assert (=> bm!658090 m!7896874))

(declare-fun m!7896876 () Bool)

(assert (=> bm!658091 m!7896876))

(assert (=> b!7228166 d!2244860))

(declare-fun bs!1902149 () Bool)

(declare-fun d!2244862 () Bool)

(assert (= bs!1902149 (and d!2244862 b!7228166)))

(declare-fun lambda!438746 () Int)

(assert (=> bs!1902149 (= lambda!438746 lambda!438726)))

(declare-fun bs!1902150 () Bool)

(assert (= bs!1902150 (and d!2244862 d!2244850)))

(assert (=> bs!1902150 (not (= lambda!438746 lambda!438734))))

(declare-fun bs!1902151 () Bool)

(assert (= bs!1902151 (and d!2244862 b!7228194)))

(assert (=> bs!1902151 (= (= lt!2572432 lt!2572458) (= lambda!438746 lambda!438742))))

(declare-fun bs!1902152 () Bool)

(assert (= bs!1902152 (and d!2244862 b!7228196)))

(assert (=> bs!1902152 (= (= lt!2572432 lt!2572457) (= lambda!438746 lambda!438743))))

(assert (=> d!2244862 true))

(assert (=> d!2244862 (forall!17259 (t!384003 (exprs!7886 c!7037)) lambda!438746)))

(declare-fun lt!2572465 () Unit!163455)

(declare-fun choose!55466 (List!69972 Int Int) Unit!163455)

(assert (=> d!2244862 (= lt!2572465 (choose!55466 (t!384003 (exprs!7886 c!7037)) lt!2572432 lt!2572433))))

(assert (=> d!2244862 (>= lt!2572432 lt!2572433)))

(assert (=> d!2244862 (= (lemmaForallRegexDepthBiggerThanTransitive!156 (t!384003 (exprs!7886 c!7037)) lt!2572432 lt!2572433) lt!2572465)))

(declare-fun bs!1902153 () Bool)

(assert (= bs!1902153 d!2244862))

(declare-fun m!7896878 () Bool)

(assert (=> bs!1902153 m!7896878))

(declare-fun m!7896880 () Bool)

(assert (=> bs!1902153 m!7896880))

(assert (=> b!7228166 d!2244862))

(declare-fun d!2244864 () Bool)

(assert (=> d!2244864 (= (maxBigInt!0 lt!2572435 lt!2572433) (ite (>= lt!2572435 lt!2572433) lt!2572435 lt!2572433))))

(assert (=> b!7228166 d!2244864))

(declare-fun d!2244866 () Bool)

(declare-fun res!2932693 () Bool)

(declare-fun e!4333010 () Bool)

(assert (=> d!2244866 (=> res!2932693 e!4333010)))

(assert (=> d!2244866 (= res!2932693 (is-Nil!69848 (exprs!7886 c!7037)))))

(assert (=> d!2244866 (= (forall!17259 (exprs!7886 c!7037) lambda!438726) e!4333010)))

(declare-fun b!7228254 () Bool)

(declare-fun e!4333011 () Bool)

(assert (=> b!7228254 (= e!4333010 e!4333011)))

(declare-fun res!2932694 () Bool)

(assert (=> b!7228254 (=> (not res!2932694) (not e!4333011))))

(assert (=> b!7228254 (= res!2932694 (dynLambda!28445 lambda!438726 (h!76296 (exprs!7886 c!7037))))))

(declare-fun b!7228255 () Bool)

(assert (=> b!7228255 (= e!4333011 (forall!17259 (t!384003 (exprs!7886 c!7037)) lambda!438726))))

(assert (= (and d!2244866 (not res!2932693)) b!7228254))

(assert (= (and b!7228254 res!2932694) b!7228255))

(declare-fun b_lambda!276761 () Bool)

(assert (=> (not b_lambda!276761) (not b!7228254)))

(declare-fun m!7896882 () Bool)

(assert (=> b!7228254 m!7896882))

(assert (=> b!7228255 m!7896830))

(assert (=> b!7228167 d!2244866))

(declare-fun b!7228260 () Bool)

(declare-fun e!4333014 () Bool)

(declare-fun tp!2032665 () Bool)

(declare-fun tp!2032666 () Bool)

(assert (=> b!7228260 (= e!4333014 (and tp!2032665 tp!2032666))))

(assert (=> b!7228168 (= tp!2032657 e!4333014)))

(assert (= (and b!7228168 (is-Cons!69848 (exprs!7886 c!7037))) b!7228260))

(declare-fun b_lambda!276763 () Bool)

(assert (= b_lambda!276759 (or b!7228166 b_lambda!276763)))

(declare-fun bs!1902154 () Bool)

(declare-fun d!2244868 () Bool)

(assert (= bs!1902154 (and d!2244868 b!7228166)))

(assert (=> bs!1902154 (= (dynLambda!28445 lambda!438726 (h!76296 (t!384003 (exprs!7886 c!7037)))) (>= lt!2572432 (regexDepth!423 (h!76296 (t!384003 (exprs!7886 c!7037))))))))

(declare-fun m!7896884 () Bool)

(assert (=> bs!1902154 m!7896884))

(assert (=> b!7228186 d!2244868))

(declare-fun b_lambda!276765 () Bool)

(assert (= b_lambda!276761 (or b!7228166 b_lambda!276765)))

(declare-fun bs!1902155 () Bool)

(declare-fun d!2244870 () Bool)

(assert (= bs!1902155 (and d!2244870 b!7228166)))

(assert (=> bs!1902155 (= (dynLambda!28445 lambda!438726 (h!76296 (exprs!7886 c!7037))) (>= lt!2572432 (regexDepth!423 (h!76296 (exprs!7886 c!7037)))))))

(assert (=> bs!1902155 m!7896824))

(assert (=> b!7228254 d!2244870))

(push 1)

(assert (not d!2244850))

(assert (not bs!1902154))

(assert (not b!7228196))

(assert (not bm!658091))

(assert (not bm!658086))

(assert (not bm!658088))

(assert (not b!7228255))

(assert (not b!7228187))

(assert (not bm!658092))

(assert (not b!7228194))

(assert (not bs!1902155))

(assert (not d!2244862))

(assert (not b_lambda!276763))

(assert (not b!7228260))

(assert (not b_lambda!276765))

(assert (not bm!658090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

