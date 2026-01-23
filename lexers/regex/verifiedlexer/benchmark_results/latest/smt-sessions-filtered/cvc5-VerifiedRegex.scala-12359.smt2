; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692602 () Bool)

(assert start!692602)

(declare-fun b!7115949 () Bool)

(declare-fun e!4276079 () Bool)

(declare-fun tp!1958223 () Bool)

(assert (=> b!7115949 (= e!4276079 tp!1958223)))

(declare-fun b!7115950 () Bool)

(declare-fun e!4276083 () Bool)

(declare-fun tp!1958226 () Bool)

(assert (=> b!7115950 (= e!4276083 tp!1958226)))

(declare-fun res!2903359 () Bool)

(declare-fun e!4276081 () Bool)

(assert (=> start!692602 (=> (not res!2903359) (not e!4276081))))

(declare-datatypes ((C!36190 0))(
  ( (C!36191 (val!27801 Int)) )
))
(declare-datatypes ((Regex!17960 0))(
  ( (ElementMatch!17960 (c!1328059 C!36190)) (Concat!26805 (regOne!36432 Regex!17960) (regTwo!36432 Regex!17960)) (EmptyExpr!17960) (Star!17960 (reg!18289 Regex!17960)) (EmptyLang!17960) (Union!17960 (regOne!36433 Regex!17960) (regTwo!36433 Regex!17960)) )
))
(declare-fun r!11554 () Regex!17960)

(declare-fun validRegex!9233 (Regex!17960) Bool)

(assert (=> start!692602 (= res!2903359 (validRegex!9233 r!11554))))

(assert (=> start!692602 e!4276081))

(assert (=> start!692602 e!4276083))

(declare-fun tp_is_empty!45153 () Bool)

(assert (=> start!692602 tp_is_empty!45153))

(declare-datatypes ((List!68921 0))(
  ( (Nil!68797) (Cons!68797 (h!75245 Regex!17960) (t!382770 List!68921)) )
))
(declare-datatypes ((Context!13908 0))(
  ( (Context!13909 (exprs!7454 List!68921)) )
))
(declare-fun c!9994 () Context!13908)

(declare-fun e!4276080 () Bool)

(declare-fun inv!87764 (Context!13908) Bool)

(assert (=> start!692602 (and (inv!87764 c!9994) e!4276080)))

(declare-fun auxCtx!45 () Context!13908)

(assert (=> start!692602 (and (inv!87764 auxCtx!45) e!4276079)))

(declare-fun b!7115951 () Bool)

(declare-fun tp!1958222 () Bool)

(declare-fun tp!1958227 () Bool)

(assert (=> b!7115951 (= e!4276083 (and tp!1958222 tp!1958227))))

(declare-fun b!7115952 () Bool)

(declare-fun res!2903360 () Bool)

(assert (=> b!7115952 (=> (not res!2903360) (not e!4276081))))

(declare-fun e!4276082 () Bool)

(assert (=> b!7115952 (= res!2903360 e!4276082)))

(declare-fun res!2903358 () Bool)

(assert (=> b!7115952 (=> res!2903358 e!4276082)))

(assert (=> b!7115952 (= res!2903358 (not (is-Concat!26805 r!11554)))))

(declare-fun b!7115953 () Bool)

(declare-fun tp!1958224 () Bool)

(declare-fun tp!1958221 () Bool)

(assert (=> b!7115953 (= e!4276083 (and tp!1958224 tp!1958221))))

(declare-fun b!7115954 () Bool)

(declare-fun ++!16112 (List!68921 List!68921) List!68921)

(assert (=> b!7115954 (= e!4276081 (not (inv!87764 (Context!13909 (++!16112 (exprs!7454 c!9994) (exprs!7454 auxCtx!45))))))))

(declare-datatypes ((Unit!162591 0))(
  ( (Unit!162592) )
))
(declare-fun lt!2560668 () Unit!162591)

(declare-fun lambda!432368 () Int)

(declare-fun lemmaConcatPreservesForall!1245 (List!68921 List!68921 Int) Unit!162591)

(assert (=> b!7115954 (= lt!2560668 (lemmaConcatPreservesForall!1245 (exprs!7454 c!9994) (exprs!7454 auxCtx!45) lambda!432368))))

(declare-fun lt!2560667 () Unit!162591)

(assert (=> b!7115954 (= lt!2560667 (lemmaConcatPreservesForall!1245 (exprs!7454 c!9994) (exprs!7454 auxCtx!45) lambda!432368))))

(declare-fun b!7115955 () Bool)

(declare-fun res!2903361 () Bool)

(assert (=> b!7115955 (=> (not res!2903361) (not e!4276081))))

(assert (=> b!7115955 (= res!2903361 (and (not (is-Concat!26805 r!11554)) (is-Star!17960 r!11554)))))

(declare-fun b!7115956 () Bool)

(assert (=> b!7115956 (= e!4276083 tp_is_empty!45153)))

(declare-fun b!7115957 () Bool)

(declare-fun res!2903357 () Bool)

(assert (=> b!7115957 (=> (not res!2903357) (not e!4276081))))

(declare-fun a!1901 () C!36190)

(assert (=> b!7115957 (= res!2903357 (and (or (not (is-ElementMatch!17960 r!11554)) (not (= (c!1328059 r!11554) a!1901))) (not (is-Union!17960 r!11554))))))

(declare-fun b!7115958 () Bool)

(declare-fun tp!1958225 () Bool)

(assert (=> b!7115958 (= e!4276080 tp!1958225)))

(declare-fun b!7115959 () Bool)

(declare-fun nullable!7597 (Regex!17960) Bool)

(assert (=> b!7115959 (= e!4276082 (not (nullable!7597 (regOne!36432 r!11554))))))

(assert (= (and start!692602 res!2903359) b!7115957))

(assert (= (and b!7115957 res!2903357) b!7115952))

(assert (= (and b!7115952 (not res!2903358)) b!7115959))

(assert (= (and b!7115952 res!2903360) b!7115955))

(assert (= (and b!7115955 res!2903361) b!7115954))

(assert (= (and start!692602 (is-ElementMatch!17960 r!11554)) b!7115956))

(assert (= (and start!692602 (is-Concat!26805 r!11554)) b!7115951))

(assert (= (and start!692602 (is-Star!17960 r!11554)) b!7115950))

(assert (= (and start!692602 (is-Union!17960 r!11554)) b!7115953))

(assert (= start!692602 b!7115958))

(assert (= start!692602 b!7115949))

(declare-fun m!7835100 () Bool)

(assert (=> start!692602 m!7835100))

(declare-fun m!7835102 () Bool)

(assert (=> start!692602 m!7835102))

(declare-fun m!7835104 () Bool)

(assert (=> start!692602 m!7835104))

(declare-fun m!7835106 () Bool)

(assert (=> b!7115954 m!7835106))

(declare-fun m!7835108 () Bool)

(assert (=> b!7115954 m!7835108))

(declare-fun m!7835110 () Bool)

(assert (=> b!7115954 m!7835110))

(assert (=> b!7115954 m!7835110))

(declare-fun m!7835112 () Bool)

(assert (=> b!7115959 m!7835112))

(push 1)

(assert (not b!7115959))

(assert tp_is_empty!45153)

(assert (not start!692602))

(assert (not b!7115951))

(assert (not b!7115954))

(assert (not b!7115950))

(assert (not b!7115949))

(assert (not b!7115958))

(assert (not b!7115953))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7116011 () Bool)

(declare-fun res!2903387 () Bool)

(declare-fun e!4276115 () Bool)

(assert (=> b!7116011 (=> (not res!2903387) (not e!4276115))))

(declare-fun call!649876 () Bool)

(assert (=> b!7116011 (= res!2903387 call!649876)))

(declare-fun e!4276117 () Bool)

(assert (=> b!7116011 (= e!4276117 e!4276115)))

(declare-fun b!7116012 () Bool)

(declare-fun e!4276114 () Bool)

(declare-fun call!649878 () Bool)

(assert (=> b!7116012 (= e!4276114 call!649878)))

(declare-fun b!7116013 () Bool)

(declare-fun e!4276113 () Bool)

(assert (=> b!7116013 (= e!4276113 e!4276114)))

(declare-fun res!2903390 () Bool)

(assert (=> b!7116013 (= res!2903390 (not (nullable!7597 (reg!18289 r!11554))))))

(assert (=> b!7116013 (=> (not res!2903390) (not e!4276114))))

(declare-fun b!7116014 () Bool)

(assert (=> b!7116014 (= e!4276113 e!4276117)))

(declare-fun c!1328065 () Bool)

(assert (=> b!7116014 (= c!1328065 (is-Union!17960 r!11554))))

(declare-fun bm!649871 () Bool)

(assert (=> bm!649871 (= call!649876 (validRegex!9233 (ite c!1328065 (regOne!36433 r!11554) (regTwo!36432 r!11554))))))

(declare-fun bm!649872 () Bool)

(declare-fun c!1328066 () Bool)

(assert (=> bm!649872 (= call!649878 (validRegex!9233 (ite c!1328066 (reg!18289 r!11554) (ite c!1328065 (regTwo!36433 r!11554) (regOne!36432 r!11554)))))))

(declare-fun b!7116016 () Bool)

(declare-fun e!4276118 () Bool)

(declare-fun e!4276116 () Bool)

(assert (=> b!7116016 (= e!4276118 e!4276116)))

(declare-fun res!2903391 () Bool)

(assert (=> b!7116016 (=> (not res!2903391) (not e!4276116))))

(declare-fun call!649877 () Bool)

(assert (=> b!7116016 (= res!2903391 call!649877)))

(declare-fun b!7116017 () Bool)

(assert (=> b!7116017 (= e!4276115 call!649877)))

(declare-fun b!7116018 () Bool)

(declare-fun e!4276119 () Bool)

(assert (=> b!7116018 (= e!4276119 e!4276113)))

(assert (=> b!7116018 (= c!1328066 (is-Star!17960 r!11554))))

(declare-fun b!7116019 () Bool)

(assert (=> b!7116019 (= e!4276116 call!649876)))

(declare-fun bm!649873 () Bool)

(assert (=> bm!649873 (= call!649877 call!649878)))

(declare-fun b!7116015 () Bool)

(declare-fun res!2903388 () Bool)

(assert (=> b!7116015 (=> res!2903388 e!4276118)))

(assert (=> b!7116015 (= res!2903388 (not (is-Concat!26805 r!11554)))))

(assert (=> b!7116015 (= e!4276117 e!4276118)))

(declare-fun d!2221134 () Bool)

(declare-fun res!2903389 () Bool)

(assert (=> d!2221134 (=> res!2903389 e!4276119)))

(assert (=> d!2221134 (= res!2903389 (is-ElementMatch!17960 r!11554))))

(assert (=> d!2221134 (= (validRegex!9233 r!11554) e!4276119)))

(assert (= (and d!2221134 (not res!2903389)) b!7116018))

(assert (= (and b!7116018 c!1328066) b!7116013))

(assert (= (and b!7116018 (not c!1328066)) b!7116014))

(assert (= (and b!7116013 res!2903390) b!7116012))

(assert (= (and b!7116014 c!1328065) b!7116011))

(assert (= (and b!7116014 (not c!1328065)) b!7116015))

(assert (= (and b!7116011 res!2903387) b!7116017))

(assert (= (and b!7116015 (not res!2903388)) b!7116016))

(assert (= (and b!7116016 res!2903391) b!7116019))

(assert (= (or b!7116011 b!7116019) bm!649871))

(assert (= (or b!7116017 b!7116016) bm!649873))

(assert (= (or b!7116012 bm!649873) bm!649872))

(declare-fun m!7835130 () Bool)

(assert (=> b!7116013 m!7835130))

(declare-fun m!7835132 () Bool)

(assert (=> bm!649871 m!7835132))

(declare-fun m!7835134 () Bool)

(assert (=> bm!649872 m!7835134))

(assert (=> start!692602 d!2221134))

(declare-fun bs!1885538 () Bool)

(declare-fun d!2221140 () Bool)

(assert (= bs!1885538 (and d!2221140 b!7115954)))

(declare-fun lambda!432379 () Int)

(assert (=> bs!1885538 (= lambda!432379 lambda!432368)))

(declare-fun forall!16855 (List!68921 Int) Bool)

(assert (=> d!2221140 (= (inv!87764 c!9994) (forall!16855 (exprs!7454 c!9994) lambda!432379))))

(declare-fun bs!1885539 () Bool)

(assert (= bs!1885539 d!2221140))

(declare-fun m!7835138 () Bool)

(assert (=> bs!1885539 m!7835138))

(assert (=> start!692602 d!2221140))

(declare-fun bs!1885540 () Bool)

(declare-fun d!2221144 () Bool)

(assert (= bs!1885540 (and d!2221144 b!7115954)))

(declare-fun lambda!432380 () Int)

(assert (=> bs!1885540 (= lambda!432380 lambda!432368)))

(declare-fun bs!1885541 () Bool)

(assert (= bs!1885541 (and d!2221144 d!2221140)))

(assert (=> bs!1885541 (= lambda!432380 lambda!432379)))

(assert (=> d!2221144 (= (inv!87764 auxCtx!45) (forall!16855 (exprs!7454 auxCtx!45) lambda!432380))))

(declare-fun bs!1885542 () Bool)

(assert (= bs!1885542 d!2221144))

(declare-fun m!7835140 () Bool)

(assert (=> bs!1885542 m!7835140))

(assert (=> start!692602 d!2221144))

(declare-fun d!2221146 () Bool)

(declare-fun nullableFct!2946 (Regex!17960) Bool)

(assert (=> d!2221146 (= (nullable!7597 (regOne!36432 r!11554)) (nullableFct!2946 (regOne!36432 r!11554)))))

(declare-fun bs!1885543 () Bool)

(assert (= bs!1885543 d!2221146))

(declare-fun m!7835142 () Bool)

(assert (=> bs!1885543 m!7835142))

(assert (=> b!7115959 d!2221146))

(declare-fun bs!1885544 () Bool)

(declare-fun d!2221148 () Bool)

(assert (= bs!1885544 (and d!2221148 b!7115954)))

(declare-fun lambda!432381 () Int)

(assert (=> bs!1885544 (= lambda!432381 lambda!432368)))

(declare-fun bs!1885545 () Bool)

(assert (= bs!1885545 (and d!2221148 d!2221140)))

(assert (=> bs!1885545 (= lambda!432381 lambda!432379)))

(declare-fun bs!1885546 () Bool)

(assert (= bs!1885546 (and d!2221148 d!2221144)))

(assert (=> bs!1885546 (= lambda!432381 lambda!432380)))

(assert (=> d!2221148 (= (inv!87764 (Context!13909 (++!16112 (exprs!7454 c!9994) (exprs!7454 auxCtx!45)))) (forall!16855 (exprs!7454 (Context!13909 (++!16112 (exprs!7454 c!9994) (exprs!7454 auxCtx!45)))) lambda!432381))))

(declare-fun bs!1885547 () Bool)

(assert (= bs!1885547 d!2221148))

(declare-fun m!7835144 () Bool)

(assert (=> bs!1885547 m!7835144))

(assert (=> b!7115954 d!2221148))

(declare-fun lt!2560679 () List!68921)

(declare-fun e!4276127 () Bool)

(declare-fun b!7116035 () Bool)

(assert (=> b!7116035 (= e!4276127 (or (not (= (exprs!7454 auxCtx!45) Nil!68797)) (= lt!2560679 (exprs!7454 c!9994))))))

(declare-fun b!7116032 () Bool)

(declare-fun e!4276126 () List!68921)

(assert (=> b!7116032 (= e!4276126 (exprs!7454 auxCtx!45))))

(declare-fun d!2221150 () Bool)

(assert (=> d!2221150 e!4276127))

(declare-fun res!2903396 () Bool)

(assert (=> d!2221150 (=> (not res!2903396) (not e!4276127))))

(declare-fun content!14040 (List!68921) (Set Regex!17960))

(assert (=> d!2221150 (= res!2903396 (= (content!14040 lt!2560679) (set.union (content!14040 (exprs!7454 c!9994)) (content!14040 (exprs!7454 auxCtx!45)))))))

(assert (=> d!2221150 (= lt!2560679 e!4276126)))

(declare-fun c!1328071 () Bool)

(assert (=> d!2221150 (= c!1328071 (is-Nil!68797 (exprs!7454 c!9994)))))

(assert (=> d!2221150 (= (++!16112 (exprs!7454 c!9994) (exprs!7454 auxCtx!45)) lt!2560679)))

(declare-fun b!7116033 () Bool)

(assert (=> b!7116033 (= e!4276126 (Cons!68797 (h!75245 (exprs!7454 c!9994)) (++!16112 (t!382770 (exprs!7454 c!9994)) (exprs!7454 auxCtx!45))))))

(declare-fun b!7116034 () Bool)

(declare-fun res!2903397 () Bool)

(assert (=> b!7116034 (=> (not res!2903397) (not e!4276127))))

(declare-fun size!41415 (List!68921) Int)

(assert (=> b!7116034 (= res!2903397 (= (size!41415 lt!2560679) (+ (size!41415 (exprs!7454 c!9994)) (size!41415 (exprs!7454 auxCtx!45)))))))

(assert (= (and d!2221150 c!1328071) b!7116032))

(assert (= (and d!2221150 (not c!1328071)) b!7116033))

(assert (= (and d!2221150 res!2903396) b!7116034))

(assert (= (and b!7116034 res!2903397) b!7116035))

(declare-fun m!7835146 () Bool)

(assert (=> d!2221150 m!7835146))

(declare-fun m!7835148 () Bool)

(assert (=> d!2221150 m!7835148))

(declare-fun m!7835150 () Bool)

(assert (=> d!2221150 m!7835150))

(declare-fun m!7835152 () Bool)

(assert (=> b!7116033 m!7835152))

(declare-fun m!7835154 () Bool)

(assert (=> b!7116034 m!7835154))

(declare-fun m!7835156 () Bool)

(assert (=> b!7116034 m!7835156))

(declare-fun m!7835158 () Bool)

(assert (=> b!7116034 m!7835158))

(assert (=> b!7115954 d!2221150))

(declare-fun d!2221152 () Bool)

(assert (=> d!2221152 (forall!16855 (++!16112 (exprs!7454 c!9994) (exprs!7454 auxCtx!45)) lambda!432368)))

(declare-fun lt!2560682 () Unit!162591)

(declare-fun choose!54890 (List!68921 List!68921 Int) Unit!162591)

(assert (=> d!2221152 (= lt!2560682 (choose!54890 (exprs!7454 c!9994) (exprs!7454 auxCtx!45) lambda!432368))))

(assert (=> d!2221152 (forall!16855 (exprs!7454 c!9994) lambda!432368)))

(assert (=> d!2221152 (= (lemmaConcatPreservesForall!1245 (exprs!7454 c!9994) (exprs!7454 auxCtx!45) lambda!432368) lt!2560682)))

(declare-fun bs!1885548 () Bool)

(assert (= bs!1885548 d!2221152))

(assert (=> bs!1885548 m!7835106))

(assert (=> bs!1885548 m!7835106))

(declare-fun m!7835160 () Bool)

(assert (=> bs!1885548 m!7835160))

(declare-fun m!7835162 () Bool)

(assert (=> bs!1885548 m!7835162))

(declare-fun m!7835164 () Bool)

(assert (=> bs!1885548 m!7835164))

(assert (=> b!7115954 d!2221152))

(declare-fun b!7116050 () Bool)

(declare-fun e!4276132 () Bool)

(assert (=> b!7116050 (= e!4276132 tp_is_empty!45153)))

(declare-fun b!7116051 () Bool)

(declare-fun tp!1958261 () Bool)

(declare-fun tp!1958260 () Bool)

(assert (=> b!7116051 (= e!4276132 (and tp!1958261 tp!1958260))))

(assert (=> b!7115951 (= tp!1958222 e!4276132)))

(declare-fun b!7116052 () Bool)

(declare-fun tp!1958259 () Bool)

(assert (=> b!7116052 (= e!4276132 tp!1958259)))

(declare-fun b!7116053 () Bool)

(declare-fun tp!1958263 () Bool)

(declare-fun tp!1958262 () Bool)

(assert (=> b!7116053 (= e!4276132 (and tp!1958263 tp!1958262))))

(assert (= (and b!7115951 (is-ElementMatch!17960 (regOne!36432 r!11554))) b!7116050))

(assert (= (and b!7115951 (is-Concat!26805 (regOne!36432 r!11554))) b!7116051))

(assert (= (and b!7115951 (is-Star!17960 (regOne!36432 r!11554))) b!7116052))

(assert (= (and b!7115951 (is-Union!17960 (regOne!36432 r!11554))) b!7116053))

(declare-fun b!7116058 () Bool)

(declare-fun e!4276135 () Bool)

(assert (=> b!7116058 (= e!4276135 tp_is_empty!45153)))

(declare-fun b!7116059 () Bool)

(declare-fun tp!1958266 () Bool)

(declare-fun tp!1958265 () Bool)

(assert (=> b!7116059 (= e!4276135 (and tp!1958266 tp!1958265))))

(assert (=> b!7115951 (= tp!1958227 e!4276135)))

(declare-fun b!7116060 () Bool)

(declare-fun tp!1958264 () Bool)

(assert (=> b!7116060 (= e!4276135 tp!1958264)))

(declare-fun b!7116061 () Bool)

(declare-fun tp!1958268 () Bool)

(declare-fun tp!1958267 () Bool)

(assert (=> b!7116061 (= e!4276135 (and tp!1958268 tp!1958267))))

(assert (= (and b!7115951 (is-ElementMatch!17960 (regTwo!36432 r!11554))) b!7116058))

(assert (= (and b!7115951 (is-Concat!26805 (regTwo!36432 r!11554))) b!7116059))

(assert (= (and b!7115951 (is-Star!17960 (regTwo!36432 r!11554))) b!7116060))

(assert (= (and b!7115951 (is-Union!17960 (regTwo!36432 r!11554))) b!7116061))

(declare-fun b!7116062 () Bool)

(declare-fun e!4276136 () Bool)

(assert (=> b!7116062 (= e!4276136 tp_is_empty!45153)))

(declare-fun b!7116063 () Bool)

(declare-fun tp!1958271 () Bool)

(declare-fun tp!1958270 () Bool)

(assert (=> b!7116063 (= e!4276136 (and tp!1958271 tp!1958270))))

(assert (=> b!7115950 (= tp!1958226 e!4276136)))

(declare-fun b!7116064 () Bool)

(declare-fun tp!1958269 () Bool)

(assert (=> b!7116064 (= e!4276136 tp!1958269)))

(declare-fun b!7116065 () Bool)

(declare-fun tp!1958273 () Bool)

(declare-fun tp!1958272 () Bool)

(assert (=> b!7116065 (= e!4276136 (and tp!1958273 tp!1958272))))

(assert (= (and b!7115950 (is-ElementMatch!17960 (reg!18289 r!11554))) b!7116062))

(assert (= (and b!7115950 (is-Concat!26805 (reg!18289 r!11554))) b!7116063))

(assert (= (and b!7115950 (is-Star!17960 (reg!18289 r!11554))) b!7116064))

(assert (= (and b!7115950 (is-Union!17960 (reg!18289 r!11554))) b!7116065))

(declare-fun b!7116070 () Bool)

(declare-fun e!4276139 () Bool)

(declare-fun tp!1958278 () Bool)

(declare-fun tp!1958279 () Bool)

(assert (=> b!7116070 (= e!4276139 (and tp!1958278 tp!1958279))))

(assert (=> b!7115958 (= tp!1958225 e!4276139)))

(assert (= (and b!7115958 (is-Cons!68797 (exprs!7454 c!9994))) b!7116070))

(declare-fun b!7116071 () Bool)

(declare-fun e!4276140 () Bool)

(assert (=> b!7116071 (= e!4276140 tp_is_empty!45153)))

(declare-fun b!7116072 () Bool)

(declare-fun tp!1958282 () Bool)

(declare-fun tp!1958281 () Bool)

(assert (=> b!7116072 (= e!4276140 (and tp!1958282 tp!1958281))))

(assert (=> b!7115953 (= tp!1958224 e!4276140)))

(declare-fun b!7116073 () Bool)

(declare-fun tp!1958280 () Bool)

(assert (=> b!7116073 (= e!4276140 tp!1958280)))

(declare-fun b!7116074 () Bool)

(declare-fun tp!1958284 () Bool)

(declare-fun tp!1958283 () Bool)

(assert (=> b!7116074 (= e!4276140 (and tp!1958284 tp!1958283))))

(assert (= (and b!7115953 (is-ElementMatch!17960 (regOne!36433 r!11554))) b!7116071))

(assert (= (and b!7115953 (is-Concat!26805 (regOne!36433 r!11554))) b!7116072))

(assert (= (and b!7115953 (is-Star!17960 (regOne!36433 r!11554))) b!7116073))

(assert (= (and b!7115953 (is-Union!17960 (regOne!36433 r!11554))) b!7116074))

(declare-fun b!7116075 () Bool)

(declare-fun e!4276141 () Bool)

(assert (=> b!7116075 (= e!4276141 tp_is_empty!45153)))

(declare-fun b!7116076 () Bool)

(declare-fun tp!1958287 () Bool)

(declare-fun tp!1958286 () Bool)

(assert (=> b!7116076 (= e!4276141 (and tp!1958287 tp!1958286))))

(assert (=> b!7115953 (= tp!1958221 e!4276141)))

(declare-fun b!7116077 () Bool)

(declare-fun tp!1958285 () Bool)

(assert (=> b!7116077 (= e!4276141 tp!1958285)))

(declare-fun b!7116078 () Bool)

(declare-fun tp!1958289 () Bool)

(declare-fun tp!1958288 () Bool)

(assert (=> b!7116078 (= e!4276141 (and tp!1958289 tp!1958288))))

(assert (= (and b!7115953 (is-ElementMatch!17960 (regTwo!36433 r!11554))) b!7116075))

(assert (= (and b!7115953 (is-Concat!26805 (regTwo!36433 r!11554))) b!7116076))

(assert (= (and b!7115953 (is-Star!17960 (regTwo!36433 r!11554))) b!7116077))

(assert (= (and b!7115953 (is-Union!17960 (regTwo!36433 r!11554))) b!7116078))

(declare-fun b!7116079 () Bool)

(declare-fun e!4276142 () Bool)

(declare-fun tp!1958290 () Bool)

(declare-fun tp!1958291 () Bool)

(assert (=> b!7116079 (= e!4276142 (and tp!1958290 tp!1958291))))

(assert (=> b!7115949 (= tp!1958223 e!4276142)))

(assert (= (and b!7115949 (is-Cons!68797 (exprs!7454 auxCtx!45))) b!7116079))

(push 1)

(assert (not b!7116060))

(assert (not d!2221144))

(assert (not b!7116059))

(assert (not bm!649871))

(assert tp_is_empty!45153)

(assert (not b!7116073))

(assert (not d!2221140))

(assert (not d!2221150))

(assert (not b!7116064))

(assert (not b!7116013))

(assert (not b!7116034))

(assert (not b!7116065))

(assert (not b!7116063))

(assert (not bm!649872))

(assert (not b!7116053))

(assert (not b!7116072))

(assert (not b!7116052))

(assert (not b!7116078))

(assert (not b!7116074))

(assert (not b!7116033))

(assert (not b!7116076))

(assert (not d!2221146))

(assert (not b!7116061))

(assert (not b!7116077))

(assert (not b!7116070))

(assert (not b!7116079))

(assert (not d!2221152))

(assert (not d!2221148))

(assert (not b!7116051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

