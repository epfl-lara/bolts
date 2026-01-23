; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728218 () Bool)

(assert start!728218)

(declare-fun b!7523942 () Bool)

(declare-fun res!3015671 () Bool)

(declare-fun e!4484932 () Bool)

(assert (=> b!7523942 (=> (not res!3015671) (not e!4484932))))

(declare-datatypes ((C!39922 0))(
  ( (C!39923 (val!30401 Int)) )
))
(declare-datatypes ((Regex!19798 0))(
  ( (ElementMatch!19798 (c!1390017 C!39922)) (Concat!28643 (regOne!40108 Regex!19798) (regTwo!40108 Regex!19798)) (EmptyExpr!19798) (Star!19798 (reg!20127 Regex!19798)) (EmptyLang!19798) (Union!19798 (regOne!40109 Regex!19798) (regTwo!40109 Regex!19798)) )
))
(declare-fun expr!41 () Regex!19798)

(declare-fun a!1106 () C!39922)

(assert (=> b!7523942 (= res!3015671 (and (or (not (is-ElementMatch!19798 expr!41)) (not (= (c!1390017 expr!41) a!1106))) (not (is-Union!19798 expr!41))))))

(declare-fun b!7523943 () Bool)

(declare-fun e!4484931 () Bool)

(declare-fun nullable!8632 (Regex!19798) Bool)

(assert (=> b!7523943 (= e!4484931 (not (nullable!8632 (regOne!40108 expr!41))))))

(declare-fun b!7523944 () Bool)

(declare-fun e!4484930 () Bool)

(declare-fun tp!2186009 () Bool)

(assert (=> b!7523944 (= e!4484930 tp!2186009)))

(declare-fun b!7523945 () Bool)

(declare-fun e!4484933 () Bool)

(declare-fun tp!2186005 () Bool)

(assert (=> b!7523945 (= e!4484933 tp!2186005)))

(declare-fun res!3015667 () Bool)

(assert (=> start!728218 (=> (not res!3015667) (not e!4484932))))

(declare-fun validRegex!10226 (Regex!19798) Bool)

(assert (=> start!728218 (= res!3015667 (validRegex!10226 expr!41))))

(assert (=> start!728218 e!4484932))

(assert (=> start!728218 e!4484933))

(declare-fun tp_is_empty!49951 () Bool)

(assert (=> start!728218 tp_is_empty!49951))

(declare-datatypes ((List!72687 0))(
  ( (Nil!72563) (Cons!72563 (h!79011 Regex!19798) (t!387390 List!72687)) )
))
(declare-datatypes ((Context!17056 0))(
  ( (Context!17057 (exprs!9028 List!72687)) )
))
(declare-fun context!49 () Context!17056)

(declare-fun inv!92767 (Context!17056) Bool)

(assert (=> start!728218 (and (inv!92767 context!49) e!4484930)))

(declare-fun b!7523946 () Bool)

(declare-fun $colon$colon!3360 (List!72687 Regex!19798) List!72687)

(assert (=> b!7523946 (= e!4484932 (not (inv!92767 (Context!17057 ($colon$colon!3360 (exprs!9028 context!49) (regTwo!40108 expr!41))))))))

(declare-fun b!7523947 () Bool)

(declare-fun res!3015669 () Bool)

(assert (=> b!7523947 (=> (not res!3015669) (not e!4484932))))

(assert (=> b!7523947 (= res!3015669 (validRegex!10226 (regTwo!40108 expr!41)))))

(declare-fun b!7523948 () Bool)

(assert (=> b!7523948 (= e!4484933 tp_is_empty!49951)))

(declare-fun b!7523949 () Bool)

(declare-fun tp!2186008 () Bool)

(declare-fun tp!2186007 () Bool)

(assert (=> b!7523949 (= e!4484933 (and tp!2186008 tp!2186007))))

(declare-fun b!7523950 () Bool)

(declare-fun res!3015668 () Bool)

(assert (=> b!7523950 (=> (not res!3015668) (not e!4484932))))

(assert (=> b!7523950 (= res!3015668 (is-Concat!28643 expr!41))))

(declare-fun b!7523951 () Bool)

(declare-fun res!3015670 () Bool)

(assert (=> b!7523951 (=> (not res!3015670) (not e!4484932))))

(assert (=> b!7523951 (= res!3015670 e!4484931)))

(declare-fun res!3015672 () Bool)

(assert (=> b!7523951 (=> res!3015672 e!4484931)))

(assert (=> b!7523951 (= res!3015672 (not (is-Concat!28643 expr!41)))))

(declare-fun b!7523952 () Bool)

(declare-fun tp!2186006 () Bool)

(declare-fun tp!2186004 () Bool)

(assert (=> b!7523952 (= e!4484933 (and tp!2186006 tp!2186004))))

(assert (= (and start!728218 res!3015667) b!7523942))

(assert (= (and b!7523942 res!3015671) b!7523951))

(assert (= (and b!7523951 (not res!3015672)) b!7523943))

(assert (= (and b!7523951 res!3015670) b!7523950))

(assert (= (and b!7523950 res!3015668) b!7523947))

(assert (= (and b!7523947 res!3015669) b!7523946))

(assert (= (and start!728218 (is-ElementMatch!19798 expr!41)) b!7523948))

(assert (= (and start!728218 (is-Concat!28643 expr!41)) b!7523952))

(assert (= (and start!728218 (is-Star!19798 expr!41)) b!7523945))

(assert (= (and start!728218 (is-Union!19798 expr!41)) b!7523949))

(assert (= start!728218 b!7523944))

(declare-fun m!8100962 () Bool)

(assert (=> b!7523943 m!8100962))

(declare-fun m!8100964 () Bool)

(assert (=> start!728218 m!8100964))

(declare-fun m!8100966 () Bool)

(assert (=> start!728218 m!8100966))

(declare-fun m!8100968 () Bool)

(assert (=> b!7523946 m!8100968))

(declare-fun m!8100970 () Bool)

(assert (=> b!7523946 m!8100970))

(declare-fun m!8100972 () Bool)

(assert (=> b!7523947 m!8100972))

(push 1)

(assert (not b!7523949))

(assert (not start!728218))

(assert (not b!7523952))

(assert tp_is_empty!49951)

(assert (not b!7523943))

(assert (not b!7523946))

(assert (not b!7523945))

(assert (not b!7523947))

(assert (not b!7523944))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1390024 () Bool)

(declare-fun c!1390023 () Bool)

(declare-fun bm!690174 () Bool)

(declare-fun call!690181 () Bool)

(assert (=> bm!690174 (= call!690181 (validRegex!10226 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41))))))))

(declare-fun bm!690175 () Bool)

(declare-fun call!690179 () Bool)

(assert (=> bm!690175 (= call!690179 call!690181)))

(declare-fun d!2309231 () Bool)

(declare-fun res!3015701 () Bool)

(declare-fun e!4484966 () Bool)

(assert (=> d!2309231 (=> res!3015701 e!4484966)))

(assert (=> d!2309231 (= res!3015701 (is-ElementMatch!19798 (regTwo!40108 expr!41)))))

(assert (=> d!2309231 (= (validRegex!10226 (regTwo!40108 expr!41)) e!4484966)))

(declare-fun b!7524004 () Bool)

(declare-fun e!4484965 () Bool)

(assert (=> b!7524004 (= e!4484965 call!690179)))

(declare-fun b!7524005 () Bool)

(declare-fun e!4484962 () Bool)

(assert (=> b!7524005 (= e!4484966 e!4484962)))

(assert (=> b!7524005 (= c!1390024 (is-Star!19798 (regTwo!40108 expr!41)))))

(declare-fun b!7524006 () Bool)

(declare-fun e!4484963 () Bool)

(declare-fun call!690180 () Bool)

(assert (=> b!7524006 (= e!4484963 call!690180)))

(declare-fun b!7524007 () Bool)

(declare-fun res!3015703 () Bool)

(declare-fun e!4484961 () Bool)

(assert (=> b!7524007 (=> res!3015703 e!4484961)))

(assert (=> b!7524007 (= res!3015703 (not (is-Concat!28643 (regTwo!40108 expr!41))))))

(declare-fun e!4484964 () Bool)

(assert (=> b!7524007 (= e!4484964 e!4484961)))

(declare-fun b!7524008 () Bool)

(declare-fun e!4484960 () Bool)

(assert (=> b!7524008 (= e!4484960 call!690181)))

(declare-fun b!7524009 () Bool)

(assert (=> b!7524009 (= e!4484962 e!4484964)))

(assert (=> b!7524009 (= c!1390023 (is-Union!19798 (regTwo!40108 expr!41)))))

(declare-fun b!7524010 () Bool)

(assert (=> b!7524010 (= e!4484961 e!4484965)))

(declare-fun res!3015705 () Bool)

(assert (=> b!7524010 (=> (not res!3015705) (not e!4484965))))

(assert (=> b!7524010 (= res!3015705 call!690180)))

(declare-fun b!7524011 () Bool)

(declare-fun res!3015704 () Bool)

(assert (=> b!7524011 (=> (not res!3015704) (not e!4484963))))

(assert (=> b!7524011 (= res!3015704 call!690179)))

(assert (=> b!7524011 (= e!4484964 e!4484963)))

(declare-fun b!7524012 () Bool)

(assert (=> b!7524012 (= e!4484962 e!4484960)))

(declare-fun res!3015702 () Bool)

(assert (=> b!7524012 (= res!3015702 (not (nullable!8632 (reg!20127 (regTwo!40108 expr!41)))))))

(assert (=> b!7524012 (=> (not res!3015702) (not e!4484960))))

(declare-fun bm!690176 () Bool)

(assert (=> bm!690176 (= call!690180 (validRegex!10226 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41)))))))

(assert (= (and d!2309231 (not res!3015701)) b!7524005))

(assert (= (and b!7524005 c!1390024) b!7524012))

(assert (= (and b!7524005 (not c!1390024)) b!7524009))

(assert (= (and b!7524012 res!3015702) b!7524008))

(assert (= (and b!7524009 c!1390023) b!7524011))

(assert (= (and b!7524009 (not c!1390023)) b!7524007))

(assert (= (and b!7524011 res!3015704) b!7524006))

(assert (= (and b!7524007 (not res!3015703)) b!7524010))

(assert (= (and b!7524010 res!3015705) b!7524004))

(assert (= (or b!7524006 b!7524010) bm!690176))

(assert (= (or b!7524011 b!7524004) bm!690175))

(assert (= (or b!7524008 bm!690175) bm!690174))

(declare-fun m!8100986 () Bool)

(assert (=> bm!690174 m!8100986))

(declare-fun m!8100988 () Bool)

(assert (=> b!7524012 m!8100988))

(declare-fun m!8100990 () Bool)

(assert (=> bm!690176 m!8100990))

(assert (=> b!7523947 d!2309231))

(declare-fun d!2309235 () Bool)

(declare-fun lambda!466436 () Int)

(declare-fun forall!18413 (List!72687 Int) Bool)

(assert (=> d!2309235 (= (inv!92767 (Context!17057 ($colon$colon!3360 (exprs!9028 context!49) (regTwo!40108 expr!41)))) (forall!18413 (exprs!9028 (Context!17057 ($colon$colon!3360 (exprs!9028 context!49) (regTwo!40108 expr!41)))) lambda!466436))))

(declare-fun bs!1939715 () Bool)

(assert (= bs!1939715 d!2309235))

(declare-fun m!8100992 () Bool)

(assert (=> bs!1939715 m!8100992))

(assert (=> b!7523946 d!2309235))

(declare-fun d!2309237 () Bool)

(assert (=> d!2309237 (= ($colon$colon!3360 (exprs!9028 context!49) (regTwo!40108 expr!41)) (Cons!72563 (regTwo!40108 expr!41) (exprs!9028 context!49)))))

(assert (=> b!7523946 d!2309237))

(declare-fun d!2309239 () Bool)

(declare-fun nullableFct!3459 (Regex!19798) Bool)

(assert (=> d!2309239 (= (nullable!8632 (regOne!40108 expr!41)) (nullableFct!3459 (regOne!40108 expr!41)))))

(declare-fun bs!1939716 () Bool)

(assert (= bs!1939716 d!2309239))

(declare-fun m!8100994 () Bool)

(assert (=> bs!1939716 m!8100994))

(assert (=> b!7523943 d!2309239))

(declare-fun c!1390025 () Bool)

(declare-fun bm!690177 () Bool)

(declare-fun c!1390026 () Bool)

(declare-fun call!690184 () Bool)

(assert (=> bm!690177 (= call!690184 (validRegex!10226 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41)))))))

(declare-fun bm!690178 () Bool)

(declare-fun call!690182 () Bool)

(assert (=> bm!690178 (= call!690182 call!690184)))

(declare-fun d!2309241 () Bool)

(declare-fun res!3015706 () Bool)

(declare-fun e!4484973 () Bool)

(assert (=> d!2309241 (=> res!3015706 e!4484973)))

(assert (=> d!2309241 (= res!3015706 (is-ElementMatch!19798 expr!41))))

(assert (=> d!2309241 (= (validRegex!10226 expr!41) e!4484973)))

(declare-fun b!7524013 () Bool)

(declare-fun e!4484972 () Bool)

(assert (=> b!7524013 (= e!4484972 call!690182)))

(declare-fun b!7524014 () Bool)

(declare-fun e!4484969 () Bool)

(assert (=> b!7524014 (= e!4484973 e!4484969)))

(assert (=> b!7524014 (= c!1390026 (is-Star!19798 expr!41))))

(declare-fun b!7524015 () Bool)

(declare-fun e!4484970 () Bool)

(declare-fun call!690183 () Bool)

(assert (=> b!7524015 (= e!4484970 call!690183)))

(declare-fun b!7524016 () Bool)

(declare-fun res!3015708 () Bool)

(declare-fun e!4484968 () Bool)

(assert (=> b!7524016 (=> res!3015708 e!4484968)))

(assert (=> b!7524016 (= res!3015708 (not (is-Concat!28643 expr!41)))))

(declare-fun e!4484971 () Bool)

(assert (=> b!7524016 (= e!4484971 e!4484968)))

(declare-fun b!7524017 () Bool)

(declare-fun e!4484967 () Bool)

(assert (=> b!7524017 (= e!4484967 call!690184)))

(declare-fun b!7524018 () Bool)

(assert (=> b!7524018 (= e!4484969 e!4484971)))

(assert (=> b!7524018 (= c!1390025 (is-Union!19798 expr!41))))

(declare-fun b!7524019 () Bool)

(assert (=> b!7524019 (= e!4484968 e!4484972)))

(declare-fun res!3015710 () Bool)

(assert (=> b!7524019 (=> (not res!3015710) (not e!4484972))))

(assert (=> b!7524019 (= res!3015710 call!690183)))

(declare-fun b!7524020 () Bool)

(declare-fun res!3015709 () Bool)

(assert (=> b!7524020 (=> (not res!3015709) (not e!4484970))))

(assert (=> b!7524020 (= res!3015709 call!690182)))

(assert (=> b!7524020 (= e!4484971 e!4484970)))

(declare-fun b!7524021 () Bool)

(assert (=> b!7524021 (= e!4484969 e!4484967)))

(declare-fun res!3015707 () Bool)

(assert (=> b!7524021 (= res!3015707 (not (nullable!8632 (reg!20127 expr!41))))))

(assert (=> b!7524021 (=> (not res!3015707) (not e!4484967))))

(declare-fun bm!690179 () Bool)

(assert (=> bm!690179 (= call!690183 (validRegex!10226 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41))))))

(assert (= (and d!2309241 (not res!3015706)) b!7524014))

(assert (= (and b!7524014 c!1390026) b!7524021))

(assert (= (and b!7524014 (not c!1390026)) b!7524018))

(assert (= (and b!7524021 res!3015707) b!7524017))

(assert (= (and b!7524018 c!1390025) b!7524020))

(assert (= (and b!7524018 (not c!1390025)) b!7524016))

(assert (= (and b!7524020 res!3015709) b!7524015))

(assert (= (and b!7524016 (not res!3015708)) b!7524019))

(assert (= (and b!7524019 res!3015710) b!7524013))

(assert (= (or b!7524015 b!7524019) bm!690179))

(assert (= (or b!7524020 b!7524013) bm!690178))

(assert (= (or b!7524017 bm!690178) bm!690177))

(declare-fun m!8100996 () Bool)

(assert (=> bm!690177 m!8100996))

(declare-fun m!8100998 () Bool)

(assert (=> b!7524021 m!8100998))

(declare-fun m!8101000 () Bool)

(assert (=> bm!690179 m!8101000))

(assert (=> start!728218 d!2309241))

(declare-fun bs!1939717 () Bool)

(declare-fun d!2309243 () Bool)

(assert (= bs!1939717 (and d!2309243 d!2309235)))

(declare-fun lambda!466437 () Int)

(assert (=> bs!1939717 (= lambda!466437 lambda!466436)))

(assert (=> d!2309243 (= (inv!92767 context!49) (forall!18413 (exprs!9028 context!49) lambda!466437))))

(declare-fun bs!1939718 () Bool)

(assert (= bs!1939718 d!2309243))

(declare-fun m!8101002 () Bool)

(assert (=> bs!1939718 m!8101002))

(assert (=> start!728218 d!2309243))

(declare-fun b!7524034 () Bool)

(declare-fun e!4484976 () Bool)

(declare-fun tp!2186041 () Bool)

(assert (=> b!7524034 (= e!4484976 tp!2186041)))

(declare-fun b!7524035 () Bool)

(declare-fun tp!2186038 () Bool)

(declare-fun tp!2186039 () Bool)

(assert (=> b!7524035 (= e!4484976 (and tp!2186038 tp!2186039))))

(assert (=> b!7523952 (= tp!2186006 e!4484976)))

(declare-fun b!7524033 () Bool)

(declare-fun tp!2186042 () Bool)

(declare-fun tp!2186040 () Bool)

(assert (=> b!7524033 (= e!4484976 (and tp!2186042 tp!2186040))))

(declare-fun b!7524032 () Bool)

(assert (=> b!7524032 (= e!4484976 tp_is_empty!49951)))

(assert (= (and b!7523952 (is-ElementMatch!19798 (regOne!40108 expr!41))) b!7524032))

(assert (= (and b!7523952 (is-Concat!28643 (regOne!40108 expr!41))) b!7524033))

(assert (= (and b!7523952 (is-Star!19798 (regOne!40108 expr!41))) b!7524034))

(assert (= (and b!7523952 (is-Union!19798 (regOne!40108 expr!41))) b!7524035))

(declare-fun b!7524038 () Bool)

(declare-fun e!4484977 () Bool)

(declare-fun tp!2186046 () Bool)

(assert (=> b!7524038 (= e!4484977 tp!2186046)))

(declare-fun b!7524039 () Bool)

(declare-fun tp!2186043 () Bool)

(declare-fun tp!2186044 () Bool)

(assert (=> b!7524039 (= e!4484977 (and tp!2186043 tp!2186044))))

(assert (=> b!7523952 (= tp!2186004 e!4484977)))

(declare-fun b!7524037 () Bool)

(declare-fun tp!2186047 () Bool)

(declare-fun tp!2186045 () Bool)

(assert (=> b!7524037 (= e!4484977 (and tp!2186047 tp!2186045))))

(declare-fun b!7524036 () Bool)

(assert (=> b!7524036 (= e!4484977 tp_is_empty!49951)))

(assert (= (and b!7523952 (is-ElementMatch!19798 (regTwo!40108 expr!41))) b!7524036))

(assert (= (and b!7523952 (is-Concat!28643 (regTwo!40108 expr!41))) b!7524037))

(assert (= (and b!7523952 (is-Star!19798 (regTwo!40108 expr!41))) b!7524038))

(assert (= (and b!7523952 (is-Union!19798 (regTwo!40108 expr!41))) b!7524039))

(declare-fun b!7524044 () Bool)

(declare-fun e!4484980 () Bool)

(declare-fun tp!2186052 () Bool)

(declare-fun tp!2186053 () Bool)

(assert (=> b!7524044 (= e!4484980 (and tp!2186052 tp!2186053))))

(assert (=> b!7523944 (= tp!2186009 e!4484980)))

(assert (= (and b!7523944 (is-Cons!72563 (exprs!9028 context!49))) b!7524044))

(declare-fun b!7524047 () Bool)

(declare-fun e!4484981 () Bool)

(declare-fun tp!2186057 () Bool)

(assert (=> b!7524047 (= e!4484981 tp!2186057)))

(declare-fun b!7524048 () Bool)

(declare-fun tp!2186054 () Bool)

(declare-fun tp!2186055 () Bool)

(assert (=> b!7524048 (= e!4484981 (and tp!2186054 tp!2186055))))

(assert (=> b!7523945 (= tp!2186005 e!4484981)))

(declare-fun b!7524046 () Bool)

(declare-fun tp!2186058 () Bool)

(declare-fun tp!2186056 () Bool)

(assert (=> b!7524046 (= e!4484981 (and tp!2186058 tp!2186056))))

(declare-fun b!7524045 () Bool)

(assert (=> b!7524045 (= e!4484981 tp_is_empty!49951)))

(assert (= (and b!7523945 (is-ElementMatch!19798 (reg!20127 expr!41))) b!7524045))

(assert (= (and b!7523945 (is-Concat!28643 (reg!20127 expr!41))) b!7524046))

(assert (= (and b!7523945 (is-Star!19798 (reg!20127 expr!41))) b!7524047))

(assert (= (and b!7523945 (is-Union!19798 (reg!20127 expr!41))) b!7524048))

(declare-fun b!7524051 () Bool)

(declare-fun e!4484982 () Bool)

(declare-fun tp!2186062 () Bool)

(assert (=> b!7524051 (= e!4484982 tp!2186062)))

(declare-fun b!7524052 () Bool)

(declare-fun tp!2186059 () Bool)

(declare-fun tp!2186060 () Bool)

(assert (=> b!7524052 (= e!4484982 (and tp!2186059 tp!2186060))))

(assert (=> b!7523949 (= tp!2186008 e!4484982)))

(declare-fun b!7524050 () Bool)

(declare-fun tp!2186063 () Bool)

(declare-fun tp!2186061 () Bool)

(assert (=> b!7524050 (= e!4484982 (and tp!2186063 tp!2186061))))

(declare-fun b!7524049 () Bool)

(assert (=> b!7524049 (= e!4484982 tp_is_empty!49951)))

(assert (= (and b!7523949 (is-ElementMatch!19798 (regOne!40109 expr!41))) b!7524049))

(assert (= (and b!7523949 (is-Concat!28643 (regOne!40109 expr!41))) b!7524050))

(assert (= (and b!7523949 (is-Star!19798 (regOne!40109 expr!41))) b!7524051))

(assert (= (and b!7523949 (is-Union!19798 (regOne!40109 expr!41))) b!7524052))

(declare-fun b!7524055 () Bool)

(declare-fun e!4484983 () Bool)

(declare-fun tp!2186067 () Bool)

(assert (=> b!7524055 (= e!4484983 tp!2186067)))

(declare-fun b!7524056 () Bool)

(declare-fun tp!2186064 () Bool)

(declare-fun tp!2186065 () Bool)

(assert (=> b!7524056 (= e!4484983 (and tp!2186064 tp!2186065))))

(assert (=> b!7523949 (= tp!2186007 e!4484983)))

(declare-fun b!7524054 () Bool)

(declare-fun tp!2186068 () Bool)

(declare-fun tp!2186066 () Bool)

(assert (=> b!7524054 (= e!4484983 (and tp!2186068 tp!2186066))))

(declare-fun b!7524053 () Bool)

(assert (=> b!7524053 (= e!4484983 tp_is_empty!49951)))

(assert (= (and b!7523949 (is-ElementMatch!19798 (regTwo!40109 expr!41))) b!7524053))

(assert (= (and b!7523949 (is-Concat!28643 (regTwo!40109 expr!41))) b!7524054))

(assert (= (and b!7523949 (is-Star!19798 (regTwo!40109 expr!41))) b!7524055))

(assert (= (and b!7523949 (is-Union!19798 (regTwo!40109 expr!41))) b!7524056))

(push 1)

(assert (not b!7524021))

(assert (not b!7524034))

(assert (not b!7524050))

(assert (not b!7524044))

(assert (not b!7524054))

(assert (not b!7524047))

(assert (not b!7524038))

(assert (not b!7524052))

(assert (not b!7524048))

(assert (not d!2309239))

(assert (not b!7524035))

(assert (not b!7524046))

(assert (not b!7524033))

(assert (not b!7524037))

(assert (not b!7524051))

(assert (not bm!690174))

(assert (not b!7524012))

(assert (not d!2309235))

(assert (not bm!690179))

(assert (not b!7524056))

(assert tp_is_empty!49951)

(assert (not bm!690176))

(assert (not bm!690177))

(assert (not b!7524055))

(assert (not d!2309243))

(assert (not b!7524039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2309255 () Bool)

(declare-fun res!3015735 () Bool)

(declare-fun e!4485026 () Bool)

(assert (=> d!2309255 (=> res!3015735 e!4485026)))

(assert (=> d!2309255 (= res!3015735 (is-Nil!72563 (exprs!9028 (Context!17057 ($colon$colon!3360 (exprs!9028 context!49) (regTwo!40108 expr!41))))))))

(assert (=> d!2309255 (= (forall!18413 (exprs!9028 (Context!17057 ($colon$colon!3360 (exprs!9028 context!49) (regTwo!40108 expr!41)))) lambda!466436) e!4485026)))

(declare-fun b!7524132 () Bool)

(declare-fun e!4485027 () Bool)

(assert (=> b!7524132 (= e!4485026 e!4485027)))

(declare-fun res!3015736 () Bool)

(assert (=> b!7524132 (=> (not res!3015736) (not e!4485027))))

(declare-fun dynLambda!29893 (Int Regex!19798) Bool)

(assert (=> b!7524132 (= res!3015736 (dynLambda!29893 lambda!466436 (h!79011 (exprs!9028 (Context!17057 ($colon$colon!3360 (exprs!9028 context!49) (regTwo!40108 expr!41)))))))))

(declare-fun b!7524133 () Bool)

(assert (=> b!7524133 (= e!4485027 (forall!18413 (t!387390 (exprs!9028 (Context!17057 ($colon$colon!3360 (exprs!9028 context!49) (regTwo!40108 expr!41))))) lambda!466436))))

(assert (= (and d!2309255 (not res!3015735)) b!7524132))

(assert (= (and b!7524132 res!3015736) b!7524133))

(declare-fun b_lambda!288875 () Bool)

(assert (=> (not b_lambda!288875) (not b!7524132)))

(declare-fun m!8101022 () Bool)

(assert (=> b!7524132 m!8101022))

(declare-fun m!8101024 () Bool)

(assert (=> b!7524133 m!8101024))

(assert (=> d!2309235 d!2309255))

(declare-fun d!2309257 () Bool)

(assert (=> d!2309257 (= (nullable!8632 (reg!20127 expr!41)) (nullableFct!3459 (reg!20127 expr!41)))))

(declare-fun bs!1939723 () Bool)

(assert (= bs!1939723 d!2309257))

(declare-fun m!8101026 () Bool)

(assert (=> bs!1939723 m!8101026))

(assert (=> b!7524021 d!2309257))

(declare-fun c!1390035 () Bool)

(declare-fun bm!690192 () Bool)

(declare-fun call!690199 () Bool)

(declare-fun c!1390036 () Bool)

(assert (=> bm!690192 (= call!690199 (validRegex!10226 (ite c!1390036 (reg!20127 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41)))) (ite c!1390035 (regOne!40109 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41)))) (regTwo!40108 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41))))))))))

(declare-fun bm!690193 () Bool)

(declare-fun call!690197 () Bool)

(assert (=> bm!690193 (= call!690197 call!690199)))

(declare-fun d!2309259 () Bool)

(declare-fun res!3015737 () Bool)

(declare-fun e!4485034 () Bool)

(assert (=> d!2309259 (=> res!3015737 e!4485034)))

(assert (=> d!2309259 (= res!3015737 (is-ElementMatch!19798 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41)))))))

(assert (=> d!2309259 (= (validRegex!10226 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41)))) e!4485034)))

(declare-fun b!7524134 () Bool)

(declare-fun e!4485033 () Bool)

(assert (=> b!7524134 (= e!4485033 call!690197)))

(declare-fun b!7524135 () Bool)

(declare-fun e!4485030 () Bool)

(assert (=> b!7524135 (= e!4485034 e!4485030)))

(assert (=> b!7524135 (= c!1390036 (is-Star!19798 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41)))))))

(declare-fun b!7524136 () Bool)

(declare-fun e!4485031 () Bool)

(declare-fun call!690198 () Bool)

(assert (=> b!7524136 (= e!4485031 call!690198)))

(declare-fun b!7524137 () Bool)

(declare-fun res!3015739 () Bool)

(declare-fun e!4485029 () Bool)

(assert (=> b!7524137 (=> res!3015739 e!4485029)))

(assert (=> b!7524137 (= res!3015739 (not (is-Concat!28643 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41))))))))

(declare-fun e!4485032 () Bool)

(assert (=> b!7524137 (= e!4485032 e!4485029)))

(declare-fun b!7524138 () Bool)

(declare-fun e!4485028 () Bool)

(assert (=> b!7524138 (= e!4485028 call!690199)))

(declare-fun b!7524139 () Bool)

(assert (=> b!7524139 (= e!4485030 e!4485032)))

(assert (=> b!7524139 (= c!1390035 (is-Union!19798 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41)))))))

(declare-fun b!7524140 () Bool)

(assert (=> b!7524140 (= e!4485029 e!4485033)))

(declare-fun res!3015741 () Bool)

(assert (=> b!7524140 (=> (not res!3015741) (not e!4485033))))

(assert (=> b!7524140 (= res!3015741 call!690198)))

(declare-fun b!7524141 () Bool)

(declare-fun res!3015740 () Bool)

(assert (=> b!7524141 (=> (not res!3015740) (not e!4485031))))

(assert (=> b!7524141 (= res!3015740 call!690197)))

(assert (=> b!7524141 (= e!4485032 e!4485031)))

(declare-fun b!7524142 () Bool)

(assert (=> b!7524142 (= e!4485030 e!4485028)))

(declare-fun res!3015738 () Bool)

(assert (=> b!7524142 (= res!3015738 (not (nullable!8632 (reg!20127 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41)))))))))

(assert (=> b!7524142 (=> (not res!3015738) (not e!4485028))))

(declare-fun bm!690194 () Bool)

(assert (=> bm!690194 (= call!690198 (validRegex!10226 (ite c!1390035 (regTwo!40109 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41)))) (regOne!40108 (ite c!1390026 (reg!20127 expr!41) (ite c!1390025 (regOne!40109 expr!41) (regTwo!40108 expr!41)))))))))

(assert (= (and d!2309259 (not res!3015737)) b!7524135))

(assert (= (and b!7524135 c!1390036) b!7524142))

(assert (= (and b!7524135 (not c!1390036)) b!7524139))

(assert (= (and b!7524142 res!3015738) b!7524138))

(assert (= (and b!7524139 c!1390035) b!7524141))

(assert (= (and b!7524139 (not c!1390035)) b!7524137))

(assert (= (and b!7524141 res!3015740) b!7524136))

(assert (= (and b!7524137 (not res!3015739)) b!7524140))

(assert (= (and b!7524140 res!3015741) b!7524134))

(assert (= (or b!7524136 b!7524140) bm!690194))

(assert (= (or b!7524141 b!7524134) bm!690193))

(assert (= (or b!7524138 bm!690193) bm!690192))

(declare-fun m!8101028 () Bool)

(assert (=> bm!690192 m!8101028))

(declare-fun m!8101030 () Bool)

(assert (=> b!7524142 m!8101030))

(declare-fun m!8101032 () Bool)

(assert (=> bm!690194 m!8101032))

(assert (=> bm!690177 d!2309259))

(declare-fun d!2309261 () Bool)

(declare-fun res!3015742 () Bool)

(declare-fun e!4485035 () Bool)

(assert (=> d!2309261 (=> res!3015742 e!4485035)))

(assert (=> d!2309261 (= res!3015742 (is-Nil!72563 (exprs!9028 context!49)))))

(assert (=> d!2309261 (= (forall!18413 (exprs!9028 context!49) lambda!466437) e!4485035)))

(declare-fun b!7524143 () Bool)

(declare-fun e!4485036 () Bool)

(assert (=> b!7524143 (= e!4485035 e!4485036)))

(declare-fun res!3015743 () Bool)

(assert (=> b!7524143 (=> (not res!3015743) (not e!4485036))))

(assert (=> b!7524143 (= res!3015743 (dynLambda!29893 lambda!466437 (h!79011 (exprs!9028 context!49))))))

(declare-fun b!7524144 () Bool)

(assert (=> b!7524144 (= e!4485036 (forall!18413 (t!387390 (exprs!9028 context!49)) lambda!466437))))

(assert (= (and d!2309261 (not res!3015742)) b!7524143))

(assert (= (and b!7524143 res!3015743) b!7524144))

(declare-fun b_lambda!288877 () Bool)

(assert (=> (not b_lambda!288877) (not b!7524143)))

(declare-fun m!8101034 () Bool)

(assert (=> b!7524143 m!8101034))

(declare-fun m!8101036 () Bool)

(assert (=> b!7524144 m!8101036))

(assert (=> d!2309243 d!2309261))

(declare-fun bm!690195 () Bool)

(declare-fun call!690202 () Bool)

(declare-fun c!1390038 () Bool)

(declare-fun c!1390037 () Bool)

(assert (=> bm!690195 (= call!690202 (validRegex!10226 (ite c!1390038 (reg!20127 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41)))) (ite c!1390037 (regOne!40109 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41)))) (regTwo!40108 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41))))))))))

(declare-fun bm!690196 () Bool)

(declare-fun call!690200 () Bool)

(assert (=> bm!690196 (= call!690200 call!690202)))

(declare-fun d!2309263 () Bool)

(declare-fun res!3015744 () Bool)

(declare-fun e!4485043 () Bool)

(assert (=> d!2309263 (=> res!3015744 e!4485043)))

(assert (=> d!2309263 (= res!3015744 (is-ElementMatch!19798 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41)))))))

(assert (=> d!2309263 (= (validRegex!10226 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41)))) e!4485043)))

(declare-fun b!7524145 () Bool)

(declare-fun e!4485042 () Bool)

(assert (=> b!7524145 (= e!4485042 call!690200)))

(declare-fun b!7524146 () Bool)

(declare-fun e!4485039 () Bool)

(assert (=> b!7524146 (= e!4485043 e!4485039)))

(assert (=> b!7524146 (= c!1390038 (is-Star!19798 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41)))))))

(declare-fun b!7524147 () Bool)

(declare-fun e!4485040 () Bool)

(declare-fun call!690201 () Bool)

(assert (=> b!7524147 (= e!4485040 call!690201)))

(declare-fun b!7524148 () Bool)

(declare-fun res!3015746 () Bool)

(declare-fun e!4485038 () Bool)

(assert (=> b!7524148 (=> res!3015746 e!4485038)))

(assert (=> b!7524148 (= res!3015746 (not (is-Concat!28643 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41))))))))

(declare-fun e!4485041 () Bool)

(assert (=> b!7524148 (= e!4485041 e!4485038)))

(declare-fun b!7524149 () Bool)

(declare-fun e!4485037 () Bool)

(assert (=> b!7524149 (= e!4485037 call!690202)))

(declare-fun b!7524150 () Bool)

(assert (=> b!7524150 (= e!4485039 e!4485041)))

(assert (=> b!7524150 (= c!1390037 (is-Union!19798 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41)))))))

(declare-fun b!7524151 () Bool)

(assert (=> b!7524151 (= e!4485038 e!4485042)))

(declare-fun res!3015748 () Bool)

(assert (=> b!7524151 (=> (not res!3015748) (not e!4485042))))

(assert (=> b!7524151 (= res!3015748 call!690201)))

(declare-fun b!7524152 () Bool)

(declare-fun res!3015747 () Bool)

(assert (=> b!7524152 (=> (not res!3015747) (not e!4485040))))

(assert (=> b!7524152 (= res!3015747 call!690200)))

(assert (=> b!7524152 (= e!4485041 e!4485040)))

(declare-fun b!7524153 () Bool)

(assert (=> b!7524153 (= e!4485039 e!4485037)))

(declare-fun res!3015745 () Bool)

(assert (=> b!7524153 (= res!3015745 (not (nullable!8632 (reg!20127 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41)))))))))

(assert (=> b!7524153 (=> (not res!3015745) (not e!4485037))))

(declare-fun bm!690197 () Bool)

(assert (=> bm!690197 (= call!690201 (validRegex!10226 (ite c!1390037 (regTwo!40109 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41)))) (regOne!40108 (ite c!1390023 (regTwo!40109 (regTwo!40108 expr!41)) (regOne!40108 (regTwo!40108 expr!41)))))))))

(assert (= (and d!2309263 (not res!3015744)) b!7524146))

(assert (= (and b!7524146 c!1390038) b!7524153))

(assert (= (and b!7524146 (not c!1390038)) b!7524150))

(assert (= (and b!7524153 res!3015745) b!7524149))

(assert (= (and b!7524150 c!1390037) b!7524152))

(assert (= (and b!7524150 (not c!1390037)) b!7524148))

(assert (= (and b!7524152 res!3015747) b!7524147))

(assert (= (and b!7524148 (not res!3015746)) b!7524151))

(assert (= (and b!7524151 res!3015748) b!7524145))

(assert (= (or b!7524147 b!7524151) bm!690197))

(assert (= (or b!7524152 b!7524145) bm!690196))

(assert (= (or b!7524149 bm!690196) bm!690195))

(declare-fun m!8101038 () Bool)

(assert (=> bm!690195 m!8101038))

(declare-fun m!8101040 () Bool)

(assert (=> b!7524153 m!8101040))

(declare-fun m!8101042 () Bool)

(assert (=> bm!690197 m!8101042))

(assert (=> bm!690176 d!2309263))

(declare-fun bm!690198 () Bool)

(declare-fun c!1390040 () Bool)

(declare-fun c!1390039 () Bool)

(declare-fun call!690205 () Bool)

(assert (=> bm!690198 (= call!690205 (validRegex!10226 (ite c!1390040 (reg!20127 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41))) (ite c!1390039 (regOne!40109 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41))) (regTwo!40108 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41)))))))))

(declare-fun bm!690199 () Bool)

(declare-fun call!690203 () Bool)

(assert (=> bm!690199 (= call!690203 call!690205)))

(declare-fun d!2309265 () Bool)

(declare-fun res!3015749 () Bool)

(declare-fun e!4485050 () Bool)

(assert (=> d!2309265 (=> res!3015749 e!4485050)))

(assert (=> d!2309265 (= res!3015749 (is-ElementMatch!19798 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41))))))

(assert (=> d!2309265 (= (validRegex!10226 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41))) e!4485050)))

(declare-fun b!7524154 () Bool)

(declare-fun e!4485049 () Bool)

(assert (=> b!7524154 (= e!4485049 call!690203)))

(declare-fun b!7524155 () Bool)

(declare-fun e!4485046 () Bool)

(assert (=> b!7524155 (= e!4485050 e!4485046)))

(assert (=> b!7524155 (= c!1390040 (is-Star!19798 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41))))))

(declare-fun b!7524156 () Bool)

(declare-fun e!4485047 () Bool)

(declare-fun call!690204 () Bool)

(assert (=> b!7524156 (= e!4485047 call!690204)))

(declare-fun b!7524157 () Bool)

(declare-fun res!3015751 () Bool)

(declare-fun e!4485045 () Bool)

(assert (=> b!7524157 (=> res!3015751 e!4485045)))

(assert (=> b!7524157 (= res!3015751 (not (is-Concat!28643 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41)))))))

(declare-fun e!4485048 () Bool)

(assert (=> b!7524157 (= e!4485048 e!4485045)))

(declare-fun b!7524158 () Bool)

(declare-fun e!4485044 () Bool)

(assert (=> b!7524158 (= e!4485044 call!690205)))

(declare-fun b!7524159 () Bool)

(assert (=> b!7524159 (= e!4485046 e!4485048)))

(assert (=> b!7524159 (= c!1390039 (is-Union!19798 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41))))))

(declare-fun b!7524160 () Bool)

(assert (=> b!7524160 (= e!4485045 e!4485049)))

(declare-fun res!3015753 () Bool)

(assert (=> b!7524160 (=> (not res!3015753) (not e!4485049))))

(assert (=> b!7524160 (= res!3015753 call!690204)))

(declare-fun b!7524161 () Bool)

(declare-fun res!3015752 () Bool)

(assert (=> b!7524161 (=> (not res!3015752) (not e!4485047))))

(assert (=> b!7524161 (= res!3015752 call!690203)))

(assert (=> b!7524161 (= e!4485048 e!4485047)))

(declare-fun b!7524162 () Bool)

(assert (=> b!7524162 (= e!4485046 e!4485044)))

(declare-fun res!3015750 () Bool)

(assert (=> b!7524162 (= res!3015750 (not (nullable!8632 (reg!20127 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41))))))))

(assert (=> b!7524162 (=> (not res!3015750) (not e!4485044))))

(declare-fun bm!690200 () Bool)

(assert (=> bm!690200 (= call!690204 (validRegex!10226 (ite c!1390039 (regTwo!40109 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41))) (regOne!40108 (ite c!1390025 (regTwo!40109 expr!41) (regOne!40108 expr!41))))))))

(assert (= (and d!2309265 (not res!3015749)) b!7524155))

(assert (= (and b!7524155 c!1390040) b!7524162))

(assert (= (and b!7524155 (not c!1390040)) b!7524159))

(assert (= (and b!7524162 res!3015750) b!7524158))

(assert (= (and b!7524159 c!1390039) b!7524161))

(assert (= (and b!7524159 (not c!1390039)) b!7524157))

(assert (= (and b!7524161 res!3015752) b!7524156))

(assert (= (and b!7524157 (not res!3015751)) b!7524160))

(assert (= (and b!7524160 res!3015753) b!7524154))

(assert (= (or b!7524156 b!7524160) bm!690200))

(assert (= (or b!7524161 b!7524154) bm!690199))

(assert (= (or b!7524158 bm!690199) bm!690198))

(declare-fun m!8101044 () Bool)

(assert (=> bm!690198 m!8101044))

(declare-fun m!8101046 () Bool)

(assert (=> b!7524162 m!8101046))

(declare-fun m!8101048 () Bool)

(assert (=> bm!690200 m!8101048))

(assert (=> bm!690179 d!2309265))

(declare-fun bm!690205 () Bool)

(declare-fun call!690210 () Bool)

(declare-fun c!1390043 () Bool)

(assert (=> bm!690205 (= call!690210 (nullable!8632 (ite c!1390043 (regTwo!40109 (regOne!40108 expr!41)) (regTwo!40108 (regOne!40108 expr!41)))))))

(declare-fun b!7524177 () Bool)

(declare-fun e!4485067 () Bool)

(declare-fun e!4485064 () Bool)

(assert (=> b!7524177 (= e!4485067 e!4485064)))

(declare-fun res!3015764 () Bool)

(declare-fun call!690211 () Bool)

(assert (=> b!7524177 (= res!3015764 call!690211)))

(assert (=> b!7524177 (=> res!3015764 e!4485064)))

(declare-fun bm!690206 () Bool)

(assert (=> bm!690206 (= call!690211 (nullable!8632 (ite c!1390043 (regOne!40109 (regOne!40108 expr!41)) (regOne!40108 (regOne!40108 expr!41)))))))

(declare-fun b!7524178 () Bool)

(declare-fun e!4485066 () Bool)

(declare-fun e!4485063 () Bool)

(assert (=> b!7524178 (= e!4485066 e!4485063)))

(declare-fun res!3015766 () Bool)

(assert (=> b!7524178 (=> (not res!3015766) (not e!4485063))))

(assert (=> b!7524178 (= res!3015766 (and (not (is-EmptyLang!19798 (regOne!40108 expr!41))) (not (is-ElementMatch!19798 (regOne!40108 expr!41)))))))

(declare-fun b!7524179 () Bool)

(declare-fun e!4485065 () Bool)

(assert (=> b!7524179 (= e!4485063 e!4485065)))

(declare-fun res!3015765 () Bool)

(assert (=> b!7524179 (=> res!3015765 e!4485065)))

(assert (=> b!7524179 (= res!3015765 (is-Star!19798 (regOne!40108 expr!41)))))

(declare-fun b!7524180 () Bool)

(assert (=> b!7524180 (= e!4485064 call!690210)))

(declare-fun b!7524181 () Bool)

(declare-fun e!4485068 () Bool)

(assert (=> b!7524181 (= e!4485067 e!4485068)))

(declare-fun res!3015767 () Bool)

(assert (=> b!7524181 (= res!3015767 call!690211)))

(assert (=> b!7524181 (=> (not res!3015767) (not e!4485068))))

(declare-fun d!2309267 () Bool)

(declare-fun res!3015768 () Bool)

(assert (=> d!2309267 (=> res!3015768 e!4485066)))

(assert (=> d!2309267 (= res!3015768 (is-EmptyExpr!19798 (regOne!40108 expr!41)))))

(assert (=> d!2309267 (= (nullableFct!3459 (regOne!40108 expr!41)) e!4485066)))

(declare-fun b!7524182 () Bool)

(assert (=> b!7524182 (= e!4485068 call!690210)))

(declare-fun b!7524183 () Bool)

(assert (=> b!7524183 (= e!4485065 e!4485067)))

(assert (=> b!7524183 (= c!1390043 (is-Union!19798 (regOne!40108 expr!41)))))

(assert (= (and d!2309267 (not res!3015768)) b!7524178))

(assert (= (and b!7524178 res!3015766) b!7524179))

(assert (= (and b!7524179 (not res!3015765)) b!7524183))

(assert (= (and b!7524183 c!1390043) b!7524177))

(assert (= (and b!7524183 (not c!1390043)) b!7524181))

(assert (= (and b!7524177 (not res!3015764)) b!7524180))

(assert (= (and b!7524181 res!3015767) b!7524182))

(assert (= (or b!7524177 b!7524181) bm!690206))

(assert (= (or b!7524180 b!7524182) bm!690205))

(declare-fun m!8101050 () Bool)

(assert (=> bm!690205 m!8101050))

(declare-fun m!8101052 () Bool)

(assert (=> bm!690206 m!8101052))

(assert (=> d!2309239 d!2309267))

(declare-fun d!2309269 () Bool)

(assert (=> d!2309269 (= (nullable!8632 (reg!20127 (regTwo!40108 expr!41))) (nullableFct!3459 (reg!20127 (regTwo!40108 expr!41))))))

(declare-fun bs!1939724 () Bool)

(assert (= bs!1939724 d!2309269))

(declare-fun m!8101054 () Bool)

(assert (=> bs!1939724 m!8101054))

(assert (=> b!7524012 d!2309269))

(declare-fun bm!690207 () Bool)

(declare-fun call!690214 () Bool)

(declare-fun c!1390044 () Bool)

(declare-fun c!1390045 () Bool)

(assert (=> bm!690207 (= call!690214 (validRegex!10226 (ite c!1390045 (reg!20127 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41))))) (ite c!1390044 (regOne!40109 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41))))) (regTwo!40108 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41)))))))))))

(declare-fun bm!690208 () Bool)

(declare-fun call!690212 () Bool)

(assert (=> bm!690208 (= call!690212 call!690214)))

(declare-fun d!2309271 () Bool)

(declare-fun res!3015769 () Bool)

(declare-fun e!4485075 () Bool)

(assert (=> d!2309271 (=> res!3015769 e!4485075)))

(assert (=> d!2309271 (= res!3015769 (is-ElementMatch!19798 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41))))))))

(assert (=> d!2309271 (= (validRegex!10226 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41))))) e!4485075)))

(declare-fun b!7524184 () Bool)

(declare-fun e!4485074 () Bool)

(assert (=> b!7524184 (= e!4485074 call!690212)))

(declare-fun b!7524185 () Bool)

(declare-fun e!4485071 () Bool)

(assert (=> b!7524185 (= e!4485075 e!4485071)))

(assert (=> b!7524185 (= c!1390045 (is-Star!19798 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41))))))))

(declare-fun b!7524186 () Bool)

(declare-fun e!4485072 () Bool)

(declare-fun call!690213 () Bool)

(assert (=> b!7524186 (= e!4485072 call!690213)))

(declare-fun b!7524187 () Bool)

(declare-fun res!3015771 () Bool)

(declare-fun e!4485070 () Bool)

(assert (=> b!7524187 (=> res!3015771 e!4485070)))

(assert (=> b!7524187 (= res!3015771 (not (is-Concat!28643 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41)))))))))

(declare-fun e!4485073 () Bool)

(assert (=> b!7524187 (= e!4485073 e!4485070)))

(declare-fun b!7524188 () Bool)

(declare-fun e!4485069 () Bool)

(assert (=> b!7524188 (= e!4485069 call!690214)))

(declare-fun b!7524189 () Bool)

(assert (=> b!7524189 (= e!4485071 e!4485073)))

(assert (=> b!7524189 (= c!1390044 (is-Union!19798 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41))))))))

(declare-fun b!7524190 () Bool)

(assert (=> b!7524190 (= e!4485070 e!4485074)))

(declare-fun res!3015773 () Bool)

(assert (=> b!7524190 (=> (not res!3015773) (not e!4485074))))

(assert (=> b!7524190 (= res!3015773 call!690213)))

(declare-fun b!7524191 () Bool)

(declare-fun res!3015772 () Bool)

(assert (=> b!7524191 (=> (not res!3015772) (not e!4485072))))

(assert (=> b!7524191 (= res!3015772 call!690212)))

(assert (=> b!7524191 (= e!4485073 e!4485072)))

(declare-fun b!7524192 () Bool)

(assert (=> b!7524192 (= e!4485071 e!4485069)))

(declare-fun res!3015770 () Bool)

(assert (=> b!7524192 (= res!3015770 (not (nullable!8632 (reg!20127 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41))))))))))

(assert (=> b!7524192 (=> (not res!3015770) (not e!4485069))))

(declare-fun bm!690209 () Bool)

(assert (=> bm!690209 (= call!690213 (validRegex!10226 (ite c!1390044 (regTwo!40109 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41))))) (regOne!40108 (ite c!1390024 (reg!20127 (regTwo!40108 expr!41)) (ite c!1390023 (regOne!40109 (regTwo!40108 expr!41)) (regTwo!40108 (regTwo!40108 expr!41))))))))))

(assert (= (and d!2309271 (not res!3015769)) b!7524185))

(assert (= (and b!7524185 c!1390045) b!7524192))

(assert (= (and b!7524185 (not c!1390045)) b!7524189))

(assert (= (and b!7524192 res!3015770) b!7524188))

(assert (= (and b!7524189 c!1390044) b!7524191))

(assert (= (and b!7524189 (not c!1390044)) b!7524187))

(assert (= (and b!7524191 res!3015772) b!7524186))

(assert (= (and b!7524187 (not res!3015771)) b!7524190))

(assert (= (and b!7524190 res!3015773) b!7524184))

(assert (= (or b!7524186 b!7524190) bm!690209))

(assert (= (or b!7524191 b!7524184) bm!690208))

(assert (= (or b!7524188 bm!690208) bm!690207))

(declare-fun m!8101056 () Bool)

(assert (=> bm!690207 m!8101056))

(declare-fun m!8101058 () Bool)

(assert (=> b!7524192 m!8101058))

(declare-fun m!8101060 () Bool)

(assert (=> bm!690209 m!8101060))

(assert (=> bm!690174 d!2309271))

(declare-fun b!7524195 () Bool)

(declare-fun e!4485076 () Bool)

(declare-fun tp!2186113 () Bool)

(assert (=> b!7524195 (= e!4485076 tp!2186113)))

(declare-fun b!7524196 () Bool)

(declare-fun tp!2186110 () Bool)

(declare-fun tp!2186111 () Bool)

(assert (=> b!7524196 (= e!4485076 (and tp!2186110 tp!2186111))))

(assert (=> b!7524033 (= tp!2186042 e!4485076)))

(declare-fun b!7524194 () Bool)

(declare-fun tp!2186114 () Bool)

(declare-fun tp!2186112 () Bool)

(assert (=> b!7524194 (= e!4485076 (and tp!2186114 tp!2186112))))

(declare-fun b!7524193 () Bool)

(assert (=> b!7524193 (= e!4485076 tp_is_empty!49951)))

(assert (= (and b!7524033 (is-ElementMatch!19798 (regOne!40108 (regOne!40108 expr!41)))) b!7524193))

(assert (= (and b!7524033 (is-Concat!28643 (regOne!40108 (regOne!40108 expr!41)))) b!7524194))

(assert (= (and b!7524033 (is-Star!19798 (regOne!40108 (regOne!40108 expr!41)))) b!7524195))

(assert (= (and b!7524033 (is-Union!19798 (regOne!40108 (regOne!40108 expr!41)))) b!7524196))

(declare-fun b!7524199 () Bool)

(declare-fun e!4485077 () Bool)

(declare-fun tp!2186118 () Bool)

(assert (=> b!7524199 (= e!4485077 tp!2186118)))

(declare-fun b!7524200 () Bool)

(declare-fun tp!2186115 () Bool)

(declare-fun tp!2186116 () Bool)

(assert (=> b!7524200 (= e!4485077 (and tp!2186115 tp!2186116))))

(assert (=> b!7524033 (= tp!2186040 e!4485077)))

(declare-fun b!7524198 () Bool)

(declare-fun tp!2186119 () Bool)

(declare-fun tp!2186117 () Bool)

(assert (=> b!7524198 (= e!4485077 (and tp!2186119 tp!2186117))))

(declare-fun b!7524197 () Bool)

(assert (=> b!7524197 (= e!4485077 tp_is_empty!49951)))

(assert (= (and b!7524033 (is-ElementMatch!19798 (regTwo!40108 (regOne!40108 expr!41)))) b!7524197))

(assert (= (and b!7524033 (is-Concat!28643 (regTwo!40108 (regOne!40108 expr!41)))) b!7524198))

(assert (= (and b!7524033 (is-Star!19798 (regTwo!40108 (regOne!40108 expr!41)))) b!7524199))

(assert (= (and b!7524033 (is-Union!19798 (regTwo!40108 (regOne!40108 expr!41)))) b!7524200))

(declare-fun b!7524203 () Bool)

(declare-fun e!4485078 () Bool)

(declare-fun tp!2186123 () Bool)

(assert (=> b!7524203 (= e!4485078 tp!2186123)))

(declare-fun b!7524204 () Bool)

(declare-fun tp!2186120 () Bool)

(declare-fun tp!2186121 () Bool)

(assert (=> b!7524204 (= e!4485078 (and tp!2186120 tp!2186121))))

(assert (=> b!7524038 (= tp!2186046 e!4485078)))

(declare-fun b!7524202 () Bool)

(declare-fun tp!2186124 () Bool)

(declare-fun tp!2186122 () Bool)

(assert (=> b!7524202 (= e!4485078 (and tp!2186124 tp!2186122))))

(declare-fun b!7524201 () Bool)

(assert (=> b!7524201 (= e!4485078 tp_is_empty!49951)))

(assert (= (and b!7524038 (is-ElementMatch!19798 (reg!20127 (regTwo!40108 expr!41)))) b!7524201))

(assert (= (and b!7524038 (is-Concat!28643 (reg!20127 (regTwo!40108 expr!41)))) b!7524202))

(assert (= (and b!7524038 (is-Star!19798 (reg!20127 (regTwo!40108 expr!41)))) b!7524203))

(assert (= (and b!7524038 (is-Union!19798 (reg!20127 (regTwo!40108 expr!41)))) b!7524204))

(declare-fun b!7524207 () Bool)

(declare-fun e!4485079 () Bool)

(declare-fun tp!2186128 () Bool)

(assert (=> b!7524207 (= e!4485079 tp!2186128)))

(declare-fun b!7524208 () Bool)

(declare-fun tp!2186125 () Bool)

(declare-fun tp!2186126 () Bool)

(assert (=> b!7524208 (= e!4485079 (and tp!2186125 tp!2186126))))

(assert (=> b!7524037 (= tp!2186047 e!4485079)))

(declare-fun b!7524206 () Bool)

(declare-fun tp!2186129 () Bool)

(declare-fun tp!2186127 () Bool)

(assert (=> b!7524206 (= e!4485079 (and tp!2186129 tp!2186127))))

(declare-fun b!7524205 () Bool)

(assert (=> b!7524205 (= e!4485079 tp_is_empty!49951)))

(assert (= (and b!7524037 (is-ElementMatch!19798 (regOne!40108 (regTwo!40108 expr!41)))) b!7524205))

(assert (= (and b!7524037 (is-Concat!28643 (regOne!40108 (regTwo!40108 expr!41)))) b!7524206))

(assert (= (and b!7524037 (is-Star!19798 (regOne!40108 (regTwo!40108 expr!41)))) b!7524207))

(assert (= (and b!7524037 (is-Union!19798 (regOne!40108 (regTwo!40108 expr!41)))) b!7524208))

(declare-fun b!7524211 () Bool)

(declare-fun e!4485080 () Bool)

(declare-fun tp!2186133 () Bool)

(assert (=> b!7524211 (= e!4485080 tp!2186133)))

(declare-fun b!7524212 () Bool)

(declare-fun tp!2186130 () Bool)

(declare-fun tp!2186131 () Bool)

(assert (=> b!7524212 (= e!4485080 (and tp!2186130 tp!2186131))))

(assert (=> b!7524037 (= tp!2186045 e!4485080)))

(declare-fun b!7524210 () Bool)

(declare-fun tp!2186134 () Bool)

(declare-fun tp!2186132 () Bool)

(assert (=> b!7524210 (= e!4485080 (and tp!2186134 tp!2186132))))

(declare-fun b!7524209 () Bool)

(assert (=> b!7524209 (= e!4485080 tp_is_empty!49951)))

(assert (= (and b!7524037 (is-ElementMatch!19798 (regTwo!40108 (regTwo!40108 expr!41)))) b!7524209))

(assert (= (and b!7524037 (is-Concat!28643 (regTwo!40108 (regTwo!40108 expr!41)))) b!7524210))

(assert (= (and b!7524037 (is-Star!19798 (regTwo!40108 (regTwo!40108 expr!41)))) b!7524211))

(assert (= (and b!7524037 (is-Union!19798 (regTwo!40108 (regTwo!40108 expr!41)))) b!7524212))

(declare-fun b!7524215 () Bool)

(declare-fun e!4485081 () Bool)

(declare-fun tp!2186138 () Bool)

(assert (=> b!7524215 (= e!4485081 tp!2186138)))

(declare-fun b!7524216 () Bool)

(declare-fun tp!2186135 () Bool)

(declare-fun tp!2186136 () Bool)

(assert (=> b!7524216 (= e!4485081 (and tp!2186135 tp!2186136))))

(assert (=> b!7524034 (= tp!2186041 e!4485081)))

(declare-fun b!7524214 () Bool)

(declare-fun tp!2186139 () Bool)

(declare-fun tp!2186137 () Bool)

(assert (=> b!7524214 (= e!4485081 (and tp!2186139 tp!2186137))))

(declare-fun b!7524213 () Bool)

(assert (=> b!7524213 (= e!4485081 tp_is_empty!49951)))

(assert (= (and b!7524034 (is-ElementMatch!19798 (reg!20127 (regOne!40108 expr!41)))) b!7524213))

(assert (= (and b!7524034 (is-Concat!28643 (reg!20127 (regOne!40108 expr!41)))) b!7524214))

(assert (= (and b!7524034 (is-Star!19798 (reg!20127 (regOne!40108 expr!41)))) b!7524215))

(assert (= (and b!7524034 (is-Union!19798 (reg!20127 (regOne!40108 expr!41)))) b!7524216))

(declare-fun b!7524219 () Bool)

(declare-fun e!4485082 () Bool)

(declare-fun tp!2186143 () Bool)

(assert (=> b!7524219 (= e!4485082 tp!2186143)))

(declare-fun b!7524220 () Bool)

(declare-fun tp!2186140 () Bool)

(declare-fun tp!2186141 () Bool)

(assert (=> b!7524220 (= e!4485082 (and tp!2186140 tp!2186141))))

(assert (=> b!7524039 (= tp!2186043 e!4485082)))

(declare-fun b!7524218 () Bool)

(declare-fun tp!2186144 () Bool)

(declare-fun tp!2186142 () Bool)

(assert (=> b!7524218 (= e!4485082 (and tp!2186144 tp!2186142))))

(declare-fun b!7524217 () Bool)

(assert (=> b!7524217 (= e!4485082 tp_is_empty!49951)))

(assert (= (and b!7524039 (is-ElementMatch!19798 (regOne!40109 (regTwo!40108 expr!41)))) b!7524217))

(assert (= (and b!7524039 (is-Concat!28643 (regOne!40109 (regTwo!40108 expr!41)))) b!7524218))

(assert (= (and b!7524039 (is-Star!19798 (regOne!40109 (regTwo!40108 expr!41)))) b!7524219))

(assert (= (and b!7524039 (is-Union!19798 (regOne!40109 (regTwo!40108 expr!41)))) b!7524220))

(declare-fun b!7524223 () Bool)

(declare-fun e!4485083 () Bool)

(declare-fun tp!2186148 () Bool)

(assert (=> b!7524223 (= e!4485083 tp!2186148)))

(declare-fun b!7524224 () Bool)

(declare-fun tp!2186145 () Bool)

(declare-fun tp!2186146 () Bool)

(assert (=> b!7524224 (= e!4485083 (and tp!2186145 tp!2186146))))

(assert (=> b!7524039 (= tp!2186044 e!4485083)))

(declare-fun b!7524222 () Bool)

(declare-fun tp!2186149 () Bool)

(declare-fun tp!2186147 () Bool)

(assert (=> b!7524222 (= e!4485083 (and tp!2186149 tp!2186147))))

(declare-fun b!7524221 () Bool)

(assert (=> b!7524221 (= e!4485083 tp_is_empty!49951)))

(assert (= (and b!7524039 (is-ElementMatch!19798 (regTwo!40109 (regTwo!40108 expr!41)))) b!7524221))

(assert (= (and b!7524039 (is-Concat!28643 (regTwo!40109 (regTwo!40108 expr!41)))) b!7524222))

(assert (= (and b!7524039 (is-Star!19798 (regTwo!40109 (regTwo!40108 expr!41)))) b!7524223))

(assert (= (and b!7524039 (is-Union!19798 (regTwo!40109 (regTwo!40108 expr!41)))) b!7524224))

(declare-fun b!7524227 () Bool)

(declare-fun e!4485084 () Bool)

(declare-fun tp!2186153 () Bool)

(assert (=> b!7524227 (= e!4485084 tp!2186153)))

(declare-fun b!7524228 () Bool)

(declare-fun tp!2186150 () Bool)

(declare-fun tp!2186151 () Bool)

(assert (=> b!7524228 (= e!4485084 (and tp!2186150 tp!2186151))))

(assert (=> b!7524035 (= tp!2186038 e!4485084)))

(declare-fun b!7524226 () Bool)

(declare-fun tp!2186154 () Bool)

(declare-fun tp!2186152 () Bool)

(assert (=> b!7524226 (= e!4485084 (and tp!2186154 tp!2186152))))

(declare-fun b!7524225 () Bool)

(assert (=> b!7524225 (= e!4485084 tp_is_empty!49951)))

(assert (= (and b!7524035 (is-ElementMatch!19798 (regOne!40109 (regOne!40108 expr!41)))) b!7524225))

(assert (= (and b!7524035 (is-Concat!28643 (regOne!40109 (regOne!40108 expr!41)))) b!7524226))

(assert (= (and b!7524035 (is-Star!19798 (regOne!40109 (regOne!40108 expr!41)))) b!7524227))

(assert (= (and b!7524035 (is-Union!19798 (regOne!40109 (regOne!40108 expr!41)))) b!7524228))

(declare-fun b!7524231 () Bool)

(declare-fun e!4485085 () Bool)

(declare-fun tp!2186158 () Bool)

(assert (=> b!7524231 (= e!4485085 tp!2186158)))

(declare-fun b!7524232 () Bool)

(declare-fun tp!2186155 () Bool)

(declare-fun tp!2186156 () Bool)

(assert (=> b!7524232 (= e!4485085 (and tp!2186155 tp!2186156))))

(assert (=> b!7524035 (= tp!2186039 e!4485085)))

(declare-fun b!7524230 () Bool)

(declare-fun tp!2186159 () Bool)

(declare-fun tp!2186157 () Bool)

(assert (=> b!7524230 (= e!4485085 (and tp!2186159 tp!2186157))))

(declare-fun b!7524229 () Bool)

(assert (=> b!7524229 (= e!4485085 tp_is_empty!49951)))

(assert (= (and b!7524035 (is-ElementMatch!19798 (regTwo!40109 (regOne!40108 expr!41)))) b!7524229))

(assert (= (and b!7524035 (is-Concat!28643 (regTwo!40109 (regOne!40108 expr!41)))) b!7524230))

(assert (= (and b!7524035 (is-Star!19798 (regTwo!40109 (regOne!40108 expr!41)))) b!7524231))

(assert (= (and b!7524035 (is-Union!19798 (regTwo!40109 (regOne!40108 expr!41)))) b!7524232))

(declare-fun b!7524235 () Bool)

(declare-fun e!4485086 () Bool)

(declare-fun tp!2186163 () Bool)

(assert (=> b!7524235 (= e!4485086 tp!2186163)))

(declare-fun b!7524236 () Bool)

(declare-fun tp!2186160 () Bool)

(declare-fun tp!2186161 () Bool)

(assert (=> b!7524236 (= e!4485086 (and tp!2186160 tp!2186161))))

(assert (=> b!7524050 (= tp!2186063 e!4485086)))

(declare-fun b!7524234 () Bool)

(declare-fun tp!2186164 () Bool)

(declare-fun tp!2186162 () Bool)

(assert (=> b!7524234 (= e!4485086 (and tp!2186164 tp!2186162))))

(declare-fun b!7524233 () Bool)

(assert (=> b!7524233 (= e!4485086 tp_is_empty!49951)))

(assert (= (and b!7524050 (is-ElementMatch!19798 (regOne!40108 (regOne!40109 expr!41)))) b!7524233))

(assert (= (and b!7524050 (is-Concat!28643 (regOne!40108 (regOne!40109 expr!41)))) b!7524234))

(assert (= (and b!7524050 (is-Star!19798 (regOne!40108 (regOne!40109 expr!41)))) b!7524235))

(assert (= (and b!7524050 (is-Union!19798 (regOne!40108 (regOne!40109 expr!41)))) b!7524236))

(declare-fun b!7524239 () Bool)

(declare-fun e!4485087 () Bool)

(declare-fun tp!2186168 () Bool)

(assert (=> b!7524239 (= e!4485087 tp!2186168)))

(declare-fun b!7524240 () Bool)

(declare-fun tp!2186165 () Bool)

(declare-fun tp!2186166 () Bool)

(assert (=> b!7524240 (= e!4485087 (and tp!2186165 tp!2186166))))

(assert (=> b!7524050 (= tp!2186061 e!4485087)))

(declare-fun b!7524238 () Bool)

(declare-fun tp!2186169 () Bool)

(declare-fun tp!2186167 () Bool)

(assert (=> b!7524238 (= e!4485087 (and tp!2186169 tp!2186167))))

(declare-fun b!7524237 () Bool)

(assert (=> b!7524237 (= e!4485087 tp_is_empty!49951)))

(assert (= (and b!7524050 (is-ElementMatch!19798 (regTwo!40108 (regOne!40109 expr!41)))) b!7524237))

(assert (= (and b!7524050 (is-Concat!28643 (regTwo!40108 (regOne!40109 expr!41)))) b!7524238))

(assert (= (and b!7524050 (is-Star!19798 (regTwo!40108 (regOne!40109 expr!41)))) b!7524239))

(assert (= (and b!7524050 (is-Union!19798 (regTwo!40108 (regOne!40109 expr!41)))) b!7524240))

(declare-fun b!7524243 () Bool)

(declare-fun e!4485088 () Bool)

(declare-fun tp!2186173 () Bool)

(assert (=> b!7524243 (= e!4485088 tp!2186173)))

(declare-fun b!7524244 () Bool)

(declare-fun tp!2186170 () Bool)

(declare-fun tp!2186171 () Bool)

(assert (=> b!7524244 (= e!4485088 (and tp!2186170 tp!2186171))))

(assert (=> b!7524055 (= tp!2186067 e!4485088)))

(declare-fun b!7524242 () Bool)

(declare-fun tp!2186174 () Bool)

(declare-fun tp!2186172 () Bool)

(assert (=> b!7524242 (= e!4485088 (and tp!2186174 tp!2186172))))

(declare-fun b!7524241 () Bool)

(assert (=> b!7524241 (= e!4485088 tp_is_empty!49951)))

(assert (= (and b!7524055 (is-ElementMatch!19798 (reg!20127 (regTwo!40109 expr!41)))) b!7524241))

(assert (= (and b!7524055 (is-Concat!28643 (reg!20127 (regTwo!40109 expr!41)))) b!7524242))

(assert (= (and b!7524055 (is-Star!19798 (reg!20127 (regTwo!40109 expr!41)))) b!7524243))

(assert (= (and b!7524055 (is-Union!19798 (reg!20127 (regTwo!40109 expr!41)))) b!7524244))

(declare-fun b!7524247 () Bool)

(declare-fun e!4485089 () Bool)

(declare-fun tp!2186178 () Bool)

(assert (=> b!7524247 (= e!4485089 tp!2186178)))

(declare-fun b!7524248 () Bool)

(declare-fun tp!2186175 () Bool)

(declare-fun tp!2186176 () Bool)

(assert (=> b!7524248 (= e!4485089 (and tp!2186175 tp!2186176))))

(assert (=> b!7524046 (= tp!2186058 e!4485089)))

(declare-fun b!7524246 () Bool)

(declare-fun tp!2186179 () Bool)

(declare-fun tp!2186177 () Bool)

(assert (=> b!7524246 (= e!4485089 (and tp!2186179 tp!2186177))))

(declare-fun b!7524245 () Bool)

(assert (=> b!7524245 (= e!4485089 tp_is_empty!49951)))

(assert (= (and b!7524046 (is-ElementMatch!19798 (regOne!40108 (reg!20127 expr!41)))) b!7524245))

(assert (= (and b!7524046 (is-Concat!28643 (regOne!40108 (reg!20127 expr!41)))) b!7524246))

(assert (= (and b!7524046 (is-Star!19798 (regOne!40108 (reg!20127 expr!41)))) b!7524247))

(assert (= (and b!7524046 (is-Union!19798 (regOne!40108 (reg!20127 expr!41)))) b!7524248))

(declare-fun b!7524251 () Bool)

(declare-fun e!4485090 () Bool)

(declare-fun tp!2186183 () Bool)

(assert (=> b!7524251 (= e!4485090 tp!2186183)))

(declare-fun b!7524252 () Bool)

(declare-fun tp!2186180 () Bool)

(declare-fun tp!2186181 () Bool)

(assert (=> b!7524252 (= e!4485090 (and tp!2186180 tp!2186181))))

(assert (=> b!7524046 (= tp!2186056 e!4485090)))

(declare-fun b!7524250 () Bool)

(declare-fun tp!2186184 () Bool)

(declare-fun tp!2186182 () Bool)

(assert (=> b!7524250 (= e!4485090 (and tp!2186184 tp!2186182))))

(declare-fun b!7524249 () Bool)

(assert (=> b!7524249 (= e!4485090 tp_is_empty!49951)))

(assert (= (and b!7524046 (is-ElementMatch!19798 (regTwo!40108 (reg!20127 expr!41)))) b!7524249))

(assert (= (and b!7524046 (is-Concat!28643 (regTwo!40108 (reg!20127 expr!41)))) b!7524250))

(assert (= (and b!7524046 (is-Star!19798 (regTwo!40108 (reg!20127 expr!41)))) b!7524251))

(assert (= (and b!7524046 (is-Union!19798 (regTwo!40108 (reg!20127 expr!41)))) b!7524252))

(declare-fun b!7524255 () Bool)

(declare-fun e!4485091 () Bool)

(declare-fun tp!2186188 () Bool)

(assert (=> b!7524255 (= e!4485091 tp!2186188)))

(declare-fun b!7524256 () Bool)

(declare-fun tp!2186185 () Bool)

(declare-fun tp!2186186 () Bool)

(assert (=> b!7524256 (= e!4485091 (and tp!2186185 tp!2186186))))

(assert (=> b!7524054 (= tp!2186068 e!4485091)))

(declare-fun b!7524254 () Bool)

(declare-fun tp!2186189 () Bool)

(declare-fun tp!2186187 () Bool)

(assert (=> b!7524254 (= e!4485091 (and tp!2186189 tp!2186187))))

(declare-fun b!7524253 () Bool)

(assert (=> b!7524253 (= e!4485091 tp_is_empty!49951)))

(assert (= (and b!7524054 (is-ElementMatch!19798 (regOne!40108 (regTwo!40109 expr!41)))) b!7524253))

(assert (= (and b!7524054 (is-Concat!28643 (regOne!40108 (regTwo!40109 expr!41)))) b!7524254))

(assert (= (and b!7524054 (is-Star!19798 (regOne!40108 (regTwo!40109 expr!41)))) b!7524255))

(assert (= (and b!7524054 (is-Union!19798 (regOne!40108 (regTwo!40109 expr!41)))) b!7524256))

(declare-fun b!7524259 () Bool)

(declare-fun e!4485092 () Bool)

(declare-fun tp!2186193 () Bool)

(assert (=> b!7524259 (= e!4485092 tp!2186193)))

(declare-fun b!7524260 () Bool)

(declare-fun tp!2186190 () Bool)

(declare-fun tp!2186191 () Bool)

(assert (=> b!7524260 (= e!4485092 (and tp!2186190 tp!2186191))))

(assert (=> b!7524054 (= tp!2186066 e!4485092)))

(declare-fun b!7524258 () Bool)

(declare-fun tp!2186194 () Bool)

(declare-fun tp!2186192 () Bool)

(assert (=> b!7524258 (= e!4485092 (and tp!2186194 tp!2186192))))

(declare-fun b!7524257 () Bool)

(assert (=> b!7524257 (= e!4485092 tp_is_empty!49951)))

(assert (= (and b!7524054 (is-ElementMatch!19798 (regTwo!40108 (regTwo!40109 expr!41)))) b!7524257))

(assert (= (and b!7524054 (is-Concat!28643 (regTwo!40108 (regTwo!40109 expr!41)))) b!7524258))

(assert (= (and b!7524054 (is-Star!19798 (regTwo!40108 (regTwo!40109 expr!41)))) b!7524259))

(assert (= (and b!7524054 (is-Union!19798 (regTwo!40108 (regTwo!40109 expr!41)))) b!7524260))

(declare-fun b!7524263 () Bool)

(declare-fun e!4485093 () Bool)

(declare-fun tp!2186198 () Bool)

(assert (=> b!7524263 (= e!4485093 tp!2186198)))

(declare-fun b!7524264 () Bool)

(declare-fun tp!2186195 () Bool)

(declare-fun tp!2186196 () Bool)

(assert (=> b!7524264 (= e!4485093 (and tp!2186195 tp!2186196))))

(assert (=> b!7524048 (= tp!2186054 e!4485093)))

(declare-fun b!7524262 () Bool)

(declare-fun tp!2186199 () Bool)

(declare-fun tp!2186197 () Bool)

(assert (=> b!7524262 (= e!4485093 (and tp!2186199 tp!2186197))))

(declare-fun b!7524261 () Bool)

(assert (=> b!7524261 (= e!4485093 tp_is_empty!49951)))

(assert (= (and b!7524048 (is-ElementMatch!19798 (regOne!40109 (reg!20127 expr!41)))) b!7524261))

(assert (= (and b!7524048 (is-Concat!28643 (regOne!40109 (reg!20127 expr!41)))) b!7524262))

(assert (= (and b!7524048 (is-Star!19798 (regOne!40109 (reg!20127 expr!41)))) b!7524263))

(assert (= (and b!7524048 (is-Union!19798 (regOne!40109 (reg!20127 expr!41)))) b!7524264))

(declare-fun b!7524267 () Bool)

(declare-fun e!4485094 () Bool)

(declare-fun tp!2186203 () Bool)

(assert (=> b!7524267 (= e!4485094 tp!2186203)))

(declare-fun b!7524268 () Bool)

(declare-fun tp!2186200 () Bool)

(declare-fun tp!2186201 () Bool)

(assert (=> b!7524268 (= e!4485094 (and tp!2186200 tp!2186201))))

(assert (=> b!7524048 (= tp!2186055 e!4485094)))

(declare-fun b!7524266 () Bool)

(declare-fun tp!2186204 () Bool)

(declare-fun tp!2186202 () Bool)

(assert (=> b!7524266 (= e!4485094 (and tp!2186204 tp!2186202))))

(declare-fun b!7524265 () Bool)

(assert (=> b!7524265 (= e!4485094 tp_is_empty!49951)))

(assert (= (and b!7524048 (is-ElementMatch!19798 (regTwo!40109 (reg!20127 expr!41)))) b!7524265))

(assert (= (and b!7524048 (is-Concat!28643 (regTwo!40109 (reg!20127 expr!41)))) b!7524266))

(assert (= (and b!7524048 (is-Star!19798 (regTwo!40109 (reg!20127 expr!41)))) b!7524267))

(assert (= (and b!7524048 (is-Union!19798 (regTwo!40109 (reg!20127 expr!41)))) b!7524268))

(declare-fun b!7524271 () Bool)

(declare-fun e!4485095 () Bool)

(declare-fun tp!2186208 () Bool)

(assert (=> b!7524271 (= e!4485095 tp!2186208)))

(declare-fun b!7524272 () Bool)

(declare-fun tp!2186205 () Bool)

(declare-fun tp!2186206 () Bool)

(assert (=> b!7524272 (= e!4485095 (and tp!2186205 tp!2186206))))

(assert (=> b!7524044 (= tp!2186052 e!4485095)))

(declare-fun b!7524270 () Bool)

(declare-fun tp!2186209 () Bool)

(declare-fun tp!2186207 () Bool)

(assert (=> b!7524270 (= e!4485095 (and tp!2186209 tp!2186207))))

(declare-fun b!7524269 () Bool)

(assert (=> b!7524269 (= e!4485095 tp_is_empty!49951)))

(assert (= (and b!7524044 (is-ElementMatch!19798 (h!79011 (exprs!9028 context!49)))) b!7524269))

(assert (= (and b!7524044 (is-Concat!28643 (h!79011 (exprs!9028 context!49)))) b!7524270))

(assert (= (and b!7524044 (is-Star!19798 (h!79011 (exprs!9028 context!49)))) b!7524271))

(assert (= (and b!7524044 (is-Union!19798 (h!79011 (exprs!9028 context!49)))) b!7524272))

(declare-fun b!7524273 () Bool)

(declare-fun e!4485096 () Bool)

(declare-fun tp!2186210 () Bool)

(declare-fun tp!2186211 () Bool)

(assert (=> b!7524273 (= e!4485096 (and tp!2186210 tp!2186211))))

(assert (=> b!7524044 (= tp!2186053 e!4485096)))

(assert (= (and b!7524044 (is-Cons!72563 (t!387390 (exprs!9028 context!49)))) b!7524273))

(declare-fun b!7524276 () Bool)

(declare-fun e!4485097 () Bool)

(declare-fun tp!2186215 () Bool)

(assert (=> b!7524276 (= e!4485097 tp!2186215)))

(declare-fun b!7524277 () Bool)

(declare-fun tp!2186212 () Bool)

(declare-fun tp!2186213 () Bool)

(assert (=> b!7524277 (= e!4485097 (and tp!2186212 tp!2186213))))

(assert (=> b!7524051 (= tp!2186062 e!4485097)))

(declare-fun b!7524275 () Bool)

(declare-fun tp!2186216 () Bool)

(declare-fun tp!2186214 () Bool)

(assert (=> b!7524275 (= e!4485097 (and tp!2186216 tp!2186214))))

(declare-fun b!7524274 () Bool)

(assert (=> b!7524274 (= e!4485097 tp_is_empty!49951)))

(assert (= (and b!7524051 (is-ElementMatch!19798 (reg!20127 (regOne!40109 expr!41)))) b!7524274))

(assert (= (and b!7524051 (is-Concat!28643 (reg!20127 (regOne!40109 expr!41)))) b!7524275))

(assert (= (and b!7524051 (is-Star!19798 (reg!20127 (regOne!40109 expr!41)))) b!7524276))

(assert (= (and b!7524051 (is-Union!19798 (reg!20127 (regOne!40109 expr!41)))) b!7524277))

(declare-fun b!7524280 () Bool)

(declare-fun e!4485098 () Bool)

(declare-fun tp!2186220 () Bool)

(assert (=> b!7524280 (= e!4485098 tp!2186220)))

(declare-fun b!7524281 () Bool)

(declare-fun tp!2186217 () Bool)

(declare-fun tp!2186218 () Bool)

(assert (=> b!7524281 (= e!4485098 (and tp!2186217 tp!2186218))))

(assert (=> b!7524056 (= tp!2186064 e!4485098)))

(declare-fun b!7524279 () Bool)

(declare-fun tp!2186221 () Bool)

(declare-fun tp!2186219 () Bool)

(assert (=> b!7524279 (= e!4485098 (and tp!2186221 tp!2186219))))

(declare-fun b!7524278 () Bool)

(assert (=> b!7524278 (= e!4485098 tp_is_empty!49951)))

(assert (= (and b!7524056 (is-ElementMatch!19798 (regOne!40109 (regTwo!40109 expr!41)))) b!7524278))

(assert (= (and b!7524056 (is-Concat!28643 (regOne!40109 (regTwo!40109 expr!41)))) b!7524279))

(assert (= (and b!7524056 (is-Star!19798 (regOne!40109 (regTwo!40109 expr!41)))) b!7524280))

(assert (= (and b!7524056 (is-Union!19798 (regOne!40109 (regTwo!40109 expr!41)))) b!7524281))

(declare-fun b!7524284 () Bool)

(declare-fun e!4485099 () Bool)

(declare-fun tp!2186225 () Bool)

(assert (=> b!7524284 (= e!4485099 tp!2186225)))

(declare-fun b!7524285 () Bool)

(declare-fun tp!2186222 () Bool)

(declare-fun tp!2186223 () Bool)

(assert (=> b!7524285 (= e!4485099 (and tp!2186222 tp!2186223))))

(assert (=> b!7524056 (= tp!2186065 e!4485099)))

(declare-fun b!7524283 () Bool)

(declare-fun tp!2186226 () Bool)

(declare-fun tp!2186224 () Bool)

(assert (=> b!7524283 (= e!4485099 (and tp!2186226 tp!2186224))))

(declare-fun b!7524282 () Bool)

(assert (=> b!7524282 (= e!4485099 tp_is_empty!49951)))

(assert (= (and b!7524056 (is-ElementMatch!19798 (regTwo!40109 (regTwo!40109 expr!41)))) b!7524282))

(assert (= (and b!7524056 (is-Concat!28643 (regTwo!40109 (regTwo!40109 expr!41)))) b!7524283))

(assert (= (and b!7524056 (is-Star!19798 (regTwo!40109 (regTwo!40109 expr!41)))) b!7524284))

(assert (= (and b!7524056 (is-Union!19798 (regTwo!40109 (regTwo!40109 expr!41)))) b!7524285))

(declare-fun b!7524288 () Bool)

(declare-fun e!4485100 () Bool)

(declare-fun tp!2186230 () Bool)

(assert (=> b!7524288 (= e!4485100 tp!2186230)))

(declare-fun b!7524289 () Bool)

(declare-fun tp!2186227 () Bool)

(declare-fun tp!2186228 () Bool)

(assert (=> b!7524289 (= e!4485100 (and tp!2186227 tp!2186228))))

(assert (=> b!7524047 (= tp!2186057 e!4485100)))

(declare-fun b!7524287 () Bool)

(declare-fun tp!2186231 () Bool)

(declare-fun tp!2186229 () Bool)

(assert (=> b!7524287 (= e!4485100 (and tp!2186231 tp!2186229))))

(declare-fun b!7524286 () Bool)

(assert (=> b!7524286 (= e!4485100 tp_is_empty!49951)))

(assert (= (and b!7524047 (is-ElementMatch!19798 (reg!20127 (reg!20127 expr!41)))) b!7524286))

(assert (= (and b!7524047 (is-Concat!28643 (reg!20127 (reg!20127 expr!41)))) b!7524287))

(assert (= (and b!7524047 (is-Star!19798 (reg!20127 (reg!20127 expr!41)))) b!7524288))

(assert (= (and b!7524047 (is-Union!19798 (reg!20127 (reg!20127 expr!41)))) b!7524289))

(declare-fun b!7524292 () Bool)

(declare-fun e!4485101 () Bool)

(declare-fun tp!2186235 () Bool)

(assert (=> b!7524292 (= e!4485101 tp!2186235)))

(declare-fun b!7524293 () Bool)

(declare-fun tp!2186232 () Bool)

(declare-fun tp!2186233 () Bool)

(assert (=> b!7524293 (= e!4485101 (and tp!2186232 tp!2186233))))

(assert (=> b!7524052 (= tp!2186059 e!4485101)))

(declare-fun b!7524291 () Bool)

(declare-fun tp!2186236 () Bool)

(declare-fun tp!2186234 () Bool)

(assert (=> b!7524291 (= e!4485101 (and tp!2186236 tp!2186234))))

(declare-fun b!7524290 () Bool)

(assert (=> b!7524290 (= e!4485101 tp_is_empty!49951)))

(assert (= (and b!7524052 (is-ElementMatch!19798 (regOne!40109 (regOne!40109 expr!41)))) b!7524290))

(assert (= (and b!7524052 (is-Concat!28643 (regOne!40109 (regOne!40109 expr!41)))) b!7524291))

(assert (= (and b!7524052 (is-Star!19798 (regOne!40109 (regOne!40109 expr!41)))) b!7524292))

(assert (= (and b!7524052 (is-Union!19798 (regOne!40109 (regOne!40109 expr!41)))) b!7524293))

(declare-fun b!7524296 () Bool)

(declare-fun e!4485102 () Bool)

(declare-fun tp!2186240 () Bool)

(assert (=> b!7524296 (= e!4485102 tp!2186240)))

(declare-fun b!7524297 () Bool)

(declare-fun tp!2186237 () Bool)

(declare-fun tp!2186238 () Bool)

(assert (=> b!7524297 (= e!4485102 (and tp!2186237 tp!2186238))))

(assert (=> b!7524052 (= tp!2186060 e!4485102)))

(declare-fun b!7524295 () Bool)

(declare-fun tp!2186241 () Bool)

(declare-fun tp!2186239 () Bool)

(assert (=> b!7524295 (= e!4485102 (and tp!2186241 tp!2186239))))

(declare-fun b!7524294 () Bool)

(assert (=> b!7524294 (= e!4485102 tp_is_empty!49951)))

(assert (= (and b!7524052 (is-ElementMatch!19798 (regTwo!40109 (regOne!40109 expr!41)))) b!7524294))

(assert (= (and b!7524052 (is-Concat!28643 (regTwo!40109 (regOne!40109 expr!41)))) b!7524295))

(assert (= (and b!7524052 (is-Star!19798 (regTwo!40109 (regOne!40109 expr!41)))) b!7524296))

(assert (= (and b!7524052 (is-Union!19798 (regTwo!40109 (regOne!40109 expr!41)))) b!7524297))

(declare-fun b_lambda!288879 () Bool)

(assert (= b_lambda!288875 (or d!2309235 b_lambda!288879)))

(declare-fun bs!1939725 () Bool)

(declare-fun d!2309273 () Bool)

(assert (= bs!1939725 (and d!2309273 d!2309235)))

(assert (=> bs!1939725 (= (dynLambda!29893 lambda!466436 (h!79011 (exprs!9028 (Context!17057 ($colon$colon!3360 (exprs!9028 context!49) (regTwo!40108 expr!41)))))) (validRegex!10226 (h!79011 (exprs!9028 (Context!17057 ($colon$colon!3360 (exprs!9028 context!49) (regTwo!40108 expr!41)))))))))

(declare-fun m!8101062 () Bool)

(assert (=> bs!1939725 m!8101062))

(assert (=> b!7524132 d!2309273))

(declare-fun b_lambda!288881 () Bool)

(assert (= b_lambda!288877 (or d!2309243 b_lambda!288881)))

(declare-fun bs!1939726 () Bool)

(declare-fun d!2309275 () Bool)

(assert (= bs!1939726 (and d!2309275 d!2309243)))

(assert (=> bs!1939726 (= (dynLambda!29893 lambda!466437 (h!79011 (exprs!9028 context!49))) (validRegex!10226 (h!79011 (exprs!9028 context!49))))))

(declare-fun m!8101064 () Bool)

(assert (=> bs!1939726 m!8101064))

(assert (=> b!7524143 d!2309275))

(push 1)

(assert (not b!7524232))

(assert (not b!7524238))

(assert (not b!7524270))

(assert (not b!7524262))

(assert (not d!2309257))

(assert (not b!7524254))

(assert (not bm!690209))

(assert (not b!7524263))

(assert (not b!7524289))

(assert (not b!7524224))

(assert (not b!7524203))

(assert (not b_lambda!288879))

(assert (not b!7524293))

(assert (not b!7524242))

(assert (not bm!690198))

(assert (not b!7524208))

(assert (not b!7524144))

(assert (not b!7524212))

(assert (not b!7524271))

(assert (not b!7524228))

(assert (not b!7524281))

(assert (not b!7524252))

(assert (not b!7524285))

(assert (not b!7524276))

(assert (not bm!690207))

(assert (not b!7524220))

(assert (not b!7524243))

(assert (not b!7524218))

(assert (not b!7524227))

(assert (not bm!690192))

(assert (not b!7524268))

(assert (not b!7524230))

(assert (not b!7524198))

(assert (not b!7524206))

(assert (not b!7524231))

(assert (not b!7524297))

(assert (not b!7524260))

(assert (not b!7524250))

(assert (not b!7524194))

(assert (not b!7524222))

(assert (not b!7524133))

(assert (not b!7524207))

(assert (not bs!1939726))

(assert (not b!7524288))

(assert (not b!7524295))

(assert (not d!2309269))

(assert (not b!7524291))

(assert (not b!7524267))

(assert (not b!7524236))

(assert (not b!7524258))

(assert (not b!7524210))

(assert (not b!7524239))

(assert (not b!7524292))

(assert (not b!7524296))

(assert (not bm!690194))

(assert (not b!7524284))

(assert (not bm!690197))

(assert (not b!7524192))

(assert (not b!7524275))

(assert (not b!7524255))

(assert (not b!7524256))

(assert (not b!7524216))

(assert (not b!7524211))

(assert (not b!7524248))

(assert (not b!7524199))

(assert (not b!7524247))

(assert (not b!7524277))

(assert (not b_lambda!288881))

(assert (not bs!1939725))

(assert (not b!7524287))

(assert (not b!7524196))

(assert (not b!7524272))

(assert (not b!7524279))

(assert (not bm!690200))

(assert (not b!7524235))

(assert (not bm!690205))

(assert (not bm!690206))

(assert (not b!7524215))

(assert tp_is_empty!49951)

(assert (not b!7524280))

(assert (not b!7524202))

(assert (not b!7524234))

(assert (not b!7524162))

(assert (not b!7524195))

(assert (not b!7524244))

(assert (not b!7524246))

(assert (not b!7524142))

(assert (not bm!690195))

(assert (not b!7524240))

(assert (not b!7524200))

(assert (not b!7524153))

(assert (not b!7524226))

(assert (not b!7524219))

(assert (not b!7524214))

(assert (not b!7524264))

(assert (not b!7524259))

(assert (not b!7524283))

(assert (not b!7524251))

(assert (not b!7524273))

(assert (not b!7524204))

(assert (not b!7524223))

(assert (not b!7524266))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

