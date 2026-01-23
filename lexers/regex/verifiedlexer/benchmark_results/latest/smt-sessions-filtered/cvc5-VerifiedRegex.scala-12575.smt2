; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697334 () Bool)

(assert start!697334)

(declare-fun b!7154174 () Bool)

(declare-fun e!4297911 () Bool)

(declare-fun tp!1977574 () Bool)

(declare-fun tp!1977577 () Bool)

(assert (=> b!7154174 (= e!4297911 (and tp!1977574 tp!1977577))))

(declare-fun b!7154175 () Bool)

(declare-fun tp_is_empty!46149 () Bool)

(assert (=> b!7154175 (= e!4297911 tp_is_empty!46149)))

(declare-fun b!7154176 () Bool)

(declare-fun res!2917394 () Bool)

(declare-fun e!4297914 () Bool)

(assert (=> b!7154176 (=> (not res!2917394) (not e!4297914))))

(declare-datatypes ((C!36790 0))(
  ( (C!36791 (val!28343 Int)) )
))
(declare-datatypes ((Regex!18258 0))(
  ( (ElementMatch!18258 (c!1333381 C!36790)) (Concat!27103 (regOne!37028 Regex!18258) (regTwo!37028 Regex!18258)) (EmptyExpr!18258) (Star!18258 (reg!18587 Regex!18258)) (EmptyLang!18258) (Union!18258 (regOne!37029 Regex!18258) (regTwo!37029 Regex!18258)) )
))
(declare-datatypes ((List!69562 0))(
  ( (Nil!69438) (Cons!69438 (h!75886 Regex!18258) (t!383579 List!69562)) )
))
(declare-fun l!9132 () List!69562)

(declare-fun lambda!436251 () Int)

(declare-fun forall!17098 (List!69562 Int) Bool)

(assert (=> b!7154176 (= res!2917394 (forall!17098 (t!383579 l!9132) lambda!436251))))

(declare-fun b!7154177 () Bool)

(declare-fun res!2917390 () Bool)

(assert (=> b!7154177 (=> (not res!2917390) (not e!4297914))))

(declare-fun r!13749 () Regex!18258)

(assert (=> b!7154177 (= res!2917390 (and (is-Cons!69438 l!9132) (is-Union!18258 r!13749)))))

(declare-fun b!7154178 () Bool)

(declare-fun res!2917391 () Bool)

(assert (=> b!7154178 (=> (not res!2917391) (not e!4297914))))

(declare-fun e!4297912 () Bool)

(assert (=> b!7154178 (= res!2917391 e!4297912)))

(declare-fun res!2917389 () Bool)

(assert (=> b!7154178 (=> res!2917389 e!4297912)))

(assert (=> b!7154178 (= res!2917389 (not (is-Cons!69438 l!9132)))))

(declare-fun b!7154179 () Bool)

(declare-fun tp!1977573 () Bool)

(declare-fun tp!1977575 () Bool)

(assert (=> b!7154179 (= e!4297911 (and tp!1977573 tp!1977575))))

(declare-fun b!7154180 () Bool)

(declare-fun isEmpty!40126 (List!69562) Bool)

(assert (=> b!7154180 (= e!4297912 (not (isEmpty!40126 (t!383579 l!9132))))))

(declare-fun res!2917392 () Bool)

(assert (=> start!697334 (=> (not res!2917392) (not e!4297914))))

(assert (=> start!697334 (= res!2917392 (forall!17098 l!9132 lambda!436251))))

(assert (=> start!697334 e!4297914))

(declare-fun e!4297913 () Bool)

(assert (=> start!697334 e!4297913))

(assert (=> start!697334 e!4297911))

(declare-fun b!7154181 () Bool)

(declare-fun size!41514 (List!69562) Int)

(assert (=> b!7154181 (= e!4297914 (>= (size!41514 (t!383579 l!9132)) (size!41514 l!9132)))))

(declare-fun b!7154182 () Bool)

(declare-fun res!2917393 () Bool)

(assert (=> b!7154182 (=> (not res!2917393) (not e!4297914))))

(declare-fun generalisedUnion!2721 (List!69562) Regex!18258)

(assert (=> b!7154182 (= res!2917393 (= (regTwo!37029 r!13749) (generalisedUnion!2721 (t!383579 l!9132))))))

(declare-fun b!7154183 () Bool)

(declare-fun tp!1977578 () Bool)

(declare-fun tp!1977576 () Bool)

(assert (=> b!7154183 (= e!4297913 (and tp!1977578 tp!1977576))))

(declare-fun b!7154184 () Bool)

(declare-fun tp!1977572 () Bool)

(assert (=> b!7154184 (= e!4297911 tp!1977572)))

(declare-fun b!7154185 () Bool)

(declare-fun res!2917388 () Bool)

(assert (=> b!7154185 (=> (not res!2917388) (not e!4297914))))

(assert (=> b!7154185 (= res!2917388 (= r!13749 (generalisedUnion!2721 l!9132)))))

(assert (= (and start!697334 res!2917392) b!7154185))

(assert (= (and b!7154185 res!2917388) b!7154178))

(assert (= (and b!7154178 (not res!2917389)) b!7154180))

(assert (= (and b!7154178 res!2917391) b!7154177))

(assert (= (and b!7154177 res!2917390) b!7154176))

(assert (= (and b!7154176 res!2917394) b!7154182))

(assert (= (and b!7154182 res!2917393) b!7154181))

(assert (= (and start!697334 (is-Cons!69438 l!9132)) b!7154183))

(assert (= (and start!697334 (is-ElementMatch!18258 r!13749)) b!7154175))

(assert (= (and start!697334 (is-Concat!27103 r!13749)) b!7154179))

(assert (= (and start!697334 (is-Star!18258 r!13749)) b!7154184))

(assert (= (and start!697334 (is-Union!18258 r!13749)) b!7154174))

(declare-fun m!7862028 () Bool)

(assert (=> start!697334 m!7862028))

(declare-fun m!7862030 () Bool)

(assert (=> b!7154182 m!7862030))

(declare-fun m!7862032 () Bool)

(assert (=> b!7154180 m!7862032))

(declare-fun m!7862034 () Bool)

(assert (=> b!7154176 m!7862034))

(declare-fun m!7862036 () Bool)

(assert (=> b!7154181 m!7862036))

(declare-fun m!7862038 () Bool)

(assert (=> b!7154181 m!7862038))

(declare-fun m!7862040 () Bool)

(assert (=> b!7154185 m!7862040))

(push 1)

(assert (not b!7154179))

(assert (not b!7154174))

(assert (not b!7154184))

(assert (not start!697334))

(assert (not b!7154185))

(assert (not b!7154183))

(assert (not b!7154176))

(assert tp_is_empty!46149)

(assert (not b!7154182))

(assert (not b!7154180))

(assert (not b!7154181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229278 () Bool)

(assert (=> d!2229278 (= (isEmpty!40126 (t!383579 l!9132)) (is-Nil!69438 (t!383579 l!9132)))))

(assert (=> b!7154180 d!2229278))

(declare-fun bs!1889674 () Bool)

(declare-fun d!2229280 () Bool)

(assert (= bs!1889674 (and d!2229280 start!697334)))

(declare-fun lambda!436259 () Int)

(assert (=> bs!1889674 (= lambda!436259 lambda!436251)))

(declare-fun b!7154244 () Bool)

(declare-fun e!4297941 () Regex!18258)

(assert (=> b!7154244 (= e!4297941 (Union!18258 (h!75886 l!9132) (generalisedUnion!2721 (t!383579 l!9132))))))

(declare-fun b!7154245 () Bool)

(declare-fun e!4297942 () Regex!18258)

(assert (=> b!7154245 (= e!4297942 (h!75886 l!9132))))

(declare-fun b!7154246 () Bool)

(declare-fun e!4297946 () Bool)

(declare-fun e!4297944 () Bool)

(assert (=> b!7154246 (= e!4297946 e!4297944)))

(declare-fun c!1333393 () Bool)

(declare-fun tail!14027 (List!69562) List!69562)

(assert (=> b!7154246 (= c!1333393 (isEmpty!40126 (tail!14027 l!9132)))))

(declare-fun b!7154247 () Bool)

(assert (=> b!7154247 (= e!4297941 EmptyLang!18258)))

(declare-fun e!4297943 () Bool)

(assert (=> d!2229280 e!4297943))

(declare-fun res!2917423 () Bool)

(assert (=> d!2229280 (=> (not res!2917423) (not e!4297943))))

(declare-fun lt!2569135 () Regex!18258)

(declare-fun validRegex!9406 (Regex!18258) Bool)

(assert (=> d!2229280 (= res!2917423 (validRegex!9406 lt!2569135))))

(assert (=> d!2229280 (= lt!2569135 e!4297942)))

(declare-fun c!1333394 () Bool)

(declare-fun e!4297945 () Bool)

(assert (=> d!2229280 (= c!1333394 e!4297945)))

(declare-fun res!2917422 () Bool)

(assert (=> d!2229280 (=> (not res!2917422) (not e!4297945))))

(assert (=> d!2229280 (= res!2917422 (is-Cons!69438 l!9132))))

(assert (=> d!2229280 (forall!17098 l!9132 lambda!436259)))

(assert (=> d!2229280 (= (generalisedUnion!2721 l!9132) lt!2569135)))

(declare-fun b!7154248 () Bool)

(declare-fun isEmptyLang!2122 (Regex!18258) Bool)

(assert (=> b!7154248 (= e!4297946 (isEmptyLang!2122 lt!2569135))))

(declare-fun b!7154249 () Bool)

(declare-fun isUnion!1550 (Regex!18258) Bool)

(assert (=> b!7154249 (= e!4297944 (isUnion!1550 lt!2569135))))

(declare-fun b!7154250 () Bool)

(assert (=> b!7154250 (= e!4297945 (isEmpty!40126 (t!383579 l!9132)))))

(declare-fun b!7154251 () Bool)

(assert (=> b!7154251 (= e!4297942 e!4297941)))

(declare-fun c!1333392 () Bool)

(assert (=> b!7154251 (= c!1333392 (is-Cons!69438 l!9132))))

(declare-fun b!7154252 () Bool)

(declare-fun head!14558 (List!69562) Regex!18258)

(assert (=> b!7154252 (= e!4297944 (= lt!2569135 (head!14558 l!9132)))))

(declare-fun b!7154253 () Bool)

(assert (=> b!7154253 (= e!4297943 e!4297946)))

(declare-fun c!1333391 () Bool)

(assert (=> b!7154253 (= c!1333391 (isEmpty!40126 l!9132))))

(assert (= (and d!2229280 res!2917422) b!7154250))

(assert (= (and d!2229280 c!1333394) b!7154245))

(assert (= (and d!2229280 (not c!1333394)) b!7154251))

(assert (= (and b!7154251 c!1333392) b!7154244))

(assert (= (and b!7154251 (not c!1333392)) b!7154247))

(assert (= (and d!2229280 res!2917423) b!7154253))

(assert (= (and b!7154253 c!1333391) b!7154248))

(assert (= (and b!7154253 (not c!1333391)) b!7154246))

(assert (= (and b!7154246 c!1333393) b!7154252))

(assert (= (and b!7154246 (not c!1333393)) b!7154249))

(declare-fun m!7862056 () Bool)

(assert (=> b!7154253 m!7862056))

(declare-fun m!7862058 () Bool)

(assert (=> d!2229280 m!7862058))

(declare-fun m!7862060 () Bool)

(assert (=> d!2229280 m!7862060))

(assert (=> b!7154244 m!7862030))

(declare-fun m!7862062 () Bool)

(assert (=> b!7154252 m!7862062))

(declare-fun m!7862064 () Bool)

(assert (=> b!7154249 m!7862064))

(declare-fun m!7862066 () Bool)

(assert (=> b!7154246 m!7862066))

(assert (=> b!7154246 m!7862066))

(declare-fun m!7862068 () Bool)

(assert (=> b!7154246 m!7862068))

(assert (=> b!7154250 m!7862032))

(declare-fun m!7862070 () Bool)

(assert (=> b!7154248 m!7862070))

(assert (=> b!7154185 d!2229280))

(declare-fun bs!1889675 () Bool)

(declare-fun d!2229284 () Bool)

(assert (= bs!1889675 (and d!2229284 start!697334)))

(declare-fun lambda!436260 () Int)

(assert (=> bs!1889675 (= lambda!436260 lambda!436251)))

(declare-fun bs!1889676 () Bool)

(assert (= bs!1889676 (and d!2229284 d!2229280)))

(assert (=> bs!1889676 (= lambda!436260 lambda!436259)))

(declare-fun b!7154256 () Bool)

(declare-fun e!4297949 () Regex!18258)

(assert (=> b!7154256 (= e!4297949 (Union!18258 (h!75886 (t!383579 l!9132)) (generalisedUnion!2721 (t!383579 (t!383579 l!9132)))))))

(declare-fun b!7154257 () Bool)

(declare-fun e!4297950 () Regex!18258)

(assert (=> b!7154257 (= e!4297950 (h!75886 (t!383579 l!9132)))))

(declare-fun b!7154258 () Bool)

(declare-fun e!4297954 () Bool)

(declare-fun e!4297952 () Bool)

(assert (=> b!7154258 (= e!4297954 e!4297952)))

(declare-fun c!1333397 () Bool)

(assert (=> b!7154258 (= c!1333397 (isEmpty!40126 (tail!14027 (t!383579 l!9132))))))

(declare-fun b!7154259 () Bool)

(assert (=> b!7154259 (= e!4297949 EmptyLang!18258)))

(declare-fun e!4297951 () Bool)

(assert (=> d!2229284 e!4297951))

(declare-fun res!2917427 () Bool)

(assert (=> d!2229284 (=> (not res!2917427) (not e!4297951))))

(declare-fun lt!2569136 () Regex!18258)

(assert (=> d!2229284 (= res!2917427 (validRegex!9406 lt!2569136))))

(assert (=> d!2229284 (= lt!2569136 e!4297950)))

(declare-fun c!1333398 () Bool)

(declare-fun e!4297953 () Bool)

(assert (=> d!2229284 (= c!1333398 e!4297953)))

(declare-fun res!2917426 () Bool)

(assert (=> d!2229284 (=> (not res!2917426) (not e!4297953))))

(assert (=> d!2229284 (= res!2917426 (is-Cons!69438 (t!383579 l!9132)))))

(assert (=> d!2229284 (forall!17098 (t!383579 l!9132) lambda!436260)))

(assert (=> d!2229284 (= (generalisedUnion!2721 (t!383579 l!9132)) lt!2569136)))

(declare-fun b!7154260 () Bool)

(assert (=> b!7154260 (= e!4297954 (isEmptyLang!2122 lt!2569136))))

(declare-fun b!7154261 () Bool)

(assert (=> b!7154261 (= e!4297952 (isUnion!1550 lt!2569136))))

(declare-fun b!7154262 () Bool)

(assert (=> b!7154262 (= e!4297953 (isEmpty!40126 (t!383579 (t!383579 l!9132))))))

(declare-fun b!7154263 () Bool)

(assert (=> b!7154263 (= e!4297950 e!4297949)))

(declare-fun c!1333396 () Bool)

(assert (=> b!7154263 (= c!1333396 (is-Cons!69438 (t!383579 l!9132)))))

(declare-fun b!7154264 () Bool)

(assert (=> b!7154264 (= e!4297952 (= lt!2569136 (head!14558 (t!383579 l!9132))))))

(declare-fun b!7154265 () Bool)

(assert (=> b!7154265 (= e!4297951 e!4297954)))

(declare-fun c!1333395 () Bool)

(assert (=> b!7154265 (= c!1333395 (isEmpty!40126 (t!383579 l!9132)))))

(assert (= (and d!2229284 res!2917426) b!7154262))

(assert (= (and d!2229284 c!1333398) b!7154257))

(assert (= (and d!2229284 (not c!1333398)) b!7154263))

(assert (= (and b!7154263 c!1333396) b!7154256))

(assert (= (and b!7154263 (not c!1333396)) b!7154259))

(assert (= (and d!2229284 res!2917427) b!7154265))

(assert (= (and b!7154265 c!1333395) b!7154260))

(assert (= (and b!7154265 (not c!1333395)) b!7154258))

(assert (= (and b!7154258 c!1333397) b!7154264))

(assert (= (and b!7154258 (not c!1333397)) b!7154261))

(assert (=> b!7154265 m!7862032))

(declare-fun m!7862072 () Bool)

(assert (=> d!2229284 m!7862072))

(declare-fun m!7862074 () Bool)

(assert (=> d!2229284 m!7862074))

(declare-fun m!7862076 () Bool)

(assert (=> b!7154256 m!7862076))

(declare-fun m!7862078 () Bool)

(assert (=> b!7154264 m!7862078))

(declare-fun m!7862080 () Bool)

(assert (=> b!7154261 m!7862080))

(declare-fun m!7862082 () Bool)

(assert (=> b!7154258 m!7862082))

(assert (=> b!7154258 m!7862082))

(declare-fun m!7862084 () Bool)

(assert (=> b!7154258 m!7862084))

(declare-fun m!7862086 () Bool)

(assert (=> b!7154262 m!7862086))

(declare-fun m!7862088 () Bool)

(assert (=> b!7154260 m!7862088))

(assert (=> b!7154182 d!2229284))

(declare-fun d!2229286 () Bool)

(declare-fun res!2917434 () Bool)

(declare-fun e!4297961 () Bool)

(assert (=> d!2229286 (=> res!2917434 e!4297961)))

(assert (=> d!2229286 (= res!2917434 (is-Nil!69438 l!9132))))

(assert (=> d!2229286 (= (forall!17098 l!9132 lambda!436251) e!4297961)))

(declare-fun b!7154272 () Bool)

(declare-fun e!4297962 () Bool)

(assert (=> b!7154272 (= e!4297961 e!4297962)))

(declare-fun res!2917435 () Bool)

(assert (=> b!7154272 (=> (not res!2917435) (not e!4297962))))

(declare-fun dynLambda!28293 (Int Regex!18258) Bool)

(assert (=> b!7154272 (= res!2917435 (dynLambda!28293 lambda!436251 (h!75886 l!9132)))))

(declare-fun b!7154273 () Bool)

(assert (=> b!7154273 (= e!4297962 (forall!17098 (t!383579 l!9132) lambda!436251))))

(assert (= (and d!2229286 (not res!2917434)) b!7154272))

(assert (= (and b!7154272 res!2917435) b!7154273))

(declare-fun b_lambda!273201 () Bool)

(assert (=> (not b_lambda!273201) (not b!7154272)))

(declare-fun m!7862092 () Bool)

(assert (=> b!7154272 m!7862092))

(assert (=> b!7154273 m!7862034))

(assert (=> start!697334 d!2229286))

(declare-fun d!2229290 () Bool)

(declare-fun res!2917436 () Bool)

(declare-fun e!4297963 () Bool)

(assert (=> d!2229290 (=> res!2917436 e!4297963)))

(assert (=> d!2229290 (= res!2917436 (is-Nil!69438 (t!383579 l!9132)))))

(assert (=> d!2229290 (= (forall!17098 (t!383579 l!9132) lambda!436251) e!4297963)))

(declare-fun b!7154274 () Bool)

(declare-fun e!4297964 () Bool)

(assert (=> b!7154274 (= e!4297963 e!4297964)))

(declare-fun res!2917437 () Bool)

(assert (=> b!7154274 (=> (not res!2917437) (not e!4297964))))

(assert (=> b!7154274 (= res!2917437 (dynLambda!28293 lambda!436251 (h!75886 (t!383579 l!9132))))))

(declare-fun b!7154275 () Bool)

(assert (=> b!7154275 (= e!4297964 (forall!17098 (t!383579 (t!383579 l!9132)) lambda!436251))))

(assert (= (and d!2229290 (not res!2917436)) b!7154274))

(assert (= (and b!7154274 res!2917437) b!7154275))

(declare-fun b_lambda!273203 () Bool)

(assert (=> (not b_lambda!273203) (not b!7154274)))

(declare-fun m!7862094 () Bool)

(assert (=> b!7154274 m!7862094))

(declare-fun m!7862096 () Bool)

(assert (=> b!7154275 m!7862096))

(assert (=> b!7154176 d!2229290))

(declare-fun d!2229292 () Bool)

(declare-fun lt!2569139 () Int)

(assert (=> d!2229292 (>= lt!2569139 0)))

(declare-fun e!4297967 () Int)

(assert (=> d!2229292 (= lt!2569139 e!4297967)))

(declare-fun c!1333401 () Bool)

(assert (=> d!2229292 (= c!1333401 (is-Nil!69438 (t!383579 l!9132)))))

(assert (=> d!2229292 (= (size!41514 (t!383579 l!9132)) lt!2569139)))

(declare-fun b!7154280 () Bool)

(assert (=> b!7154280 (= e!4297967 0)))

(declare-fun b!7154281 () Bool)

(assert (=> b!7154281 (= e!4297967 (+ 1 (size!41514 (t!383579 (t!383579 l!9132)))))))

(assert (= (and d!2229292 c!1333401) b!7154280))

(assert (= (and d!2229292 (not c!1333401)) b!7154281))

(declare-fun m!7862098 () Bool)

(assert (=> b!7154281 m!7862098))

(assert (=> b!7154181 d!2229292))

(declare-fun d!2229294 () Bool)

(declare-fun lt!2569140 () Int)

(assert (=> d!2229294 (>= lt!2569140 0)))

(declare-fun e!4297968 () Int)

(assert (=> d!2229294 (= lt!2569140 e!4297968)))

(declare-fun c!1333402 () Bool)

(assert (=> d!2229294 (= c!1333402 (is-Nil!69438 l!9132))))

(assert (=> d!2229294 (= (size!41514 l!9132) lt!2569140)))

(declare-fun b!7154282 () Bool)

(assert (=> b!7154282 (= e!4297968 0)))

(declare-fun b!7154283 () Bool)

(assert (=> b!7154283 (= e!4297968 (+ 1 (size!41514 (t!383579 l!9132))))))

(assert (= (and d!2229294 c!1333402) b!7154282))

(assert (= (and d!2229294 (not c!1333402)) b!7154283))

(assert (=> b!7154283 m!7862036))

(assert (=> b!7154181 d!2229294))

(declare-fun b!7154297 () Bool)

(declare-fun e!4297971 () Bool)

(declare-fun tp!1977613 () Bool)

(declare-fun tp!1977612 () Bool)

(assert (=> b!7154297 (= e!4297971 (and tp!1977613 tp!1977612))))

(declare-fun b!7154296 () Bool)

(declare-fun tp!1977610 () Bool)

(assert (=> b!7154296 (= e!4297971 tp!1977610)))

(declare-fun b!7154295 () Bool)

(declare-fun tp!1977611 () Bool)

(declare-fun tp!1977614 () Bool)

(assert (=> b!7154295 (= e!4297971 (and tp!1977611 tp!1977614))))

(assert (=> b!7154174 (= tp!1977574 e!4297971)))

(declare-fun b!7154294 () Bool)

(assert (=> b!7154294 (= e!4297971 tp_is_empty!46149)))

(assert (= (and b!7154174 (is-ElementMatch!18258 (regOne!37029 r!13749))) b!7154294))

(assert (= (and b!7154174 (is-Concat!27103 (regOne!37029 r!13749))) b!7154295))

(assert (= (and b!7154174 (is-Star!18258 (regOne!37029 r!13749))) b!7154296))

(assert (= (and b!7154174 (is-Union!18258 (regOne!37029 r!13749))) b!7154297))

(declare-fun b!7154301 () Bool)

(declare-fun e!4297972 () Bool)

(declare-fun tp!1977618 () Bool)

(declare-fun tp!1977617 () Bool)

(assert (=> b!7154301 (= e!4297972 (and tp!1977618 tp!1977617))))

(declare-fun b!7154300 () Bool)

(declare-fun tp!1977615 () Bool)

(assert (=> b!7154300 (= e!4297972 tp!1977615)))

(declare-fun b!7154299 () Bool)

(declare-fun tp!1977616 () Bool)

(declare-fun tp!1977619 () Bool)

(assert (=> b!7154299 (= e!4297972 (and tp!1977616 tp!1977619))))

(assert (=> b!7154174 (= tp!1977577 e!4297972)))

(declare-fun b!7154298 () Bool)

(assert (=> b!7154298 (= e!4297972 tp_is_empty!46149)))

(assert (= (and b!7154174 (is-ElementMatch!18258 (regTwo!37029 r!13749))) b!7154298))

(assert (= (and b!7154174 (is-Concat!27103 (regTwo!37029 r!13749))) b!7154299))

(assert (= (and b!7154174 (is-Star!18258 (regTwo!37029 r!13749))) b!7154300))

(assert (= (and b!7154174 (is-Union!18258 (regTwo!37029 r!13749))) b!7154301))

(declare-fun b!7154305 () Bool)

(declare-fun e!4297973 () Bool)

(declare-fun tp!1977623 () Bool)

(declare-fun tp!1977622 () Bool)

(assert (=> b!7154305 (= e!4297973 (and tp!1977623 tp!1977622))))

(declare-fun b!7154304 () Bool)

(declare-fun tp!1977620 () Bool)

(assert (=> b!7154304 (= e!4297973 tp!1977620)))

(declare-fun b!7154303 () Bool)

(declare-fun tp!1977621 () Bool)

(declare-fun tp!1977624 () Bool)

(assert (=> b!7154303 (= e!4297973 (and tp!1977621 tp!1977624))))

(assert (=> b!7154179 (= tp!1977573 e!4297973)))

(declare-fun b!7154302 () Bool)

(assert (=> b!7154302 (= e!4297973 tp_is_empty!46149)))

(assert (= (and b!7154179 (is-ElementMatch!18258 (regOne!37028 r!13749))) b!7154302))

(assert (= (and b!7154179 (is-Concat!27103 (regOne!37028 r!13749))) b!7154303))

(assert (= (and b!7154179 (is-Star!18258 (regOne!37028 r!13749))) b!7154304))

(assert (= (and b!7154179 (is-Union!18258 (regOne!37028 r!13749))) b!7154305))

(declare-fun b!7154309 () Bool)

(declare-fun e!4297974 () Bool)

(declare-fun tp!1977628 () Bool)

(declare-fun tp!1977627 () Bool)

(assert (=> b!7154309 (= e!4297974 (and tp!1977628 tp!1977627))))

(declare-fun b!7154308 () Bool)

(declare-fun tp!1977625 () Bool)

(assert (=> b!7154308 (= e!4297974 tp!1977625)))

(declare-fun b!7154307 () Bool)

(declare-fun tp!1977626 () Bool)

(declare-fun tp!1977629 () Bool)

(assert (=> b!7154307 (= e!4297974 (and tp!1977626 tp!1977629))))

(assert (=> b!7154179 (= tp!1977575 e!4297974)))

(declare-fun b!7154306 () Bool)

(assert (=> b!7154306 (= e!4297974 tp_is_empty!46149)))

(assert (= (and b!7154179 (is-ElementMatch!18258 (regTwo!37028 r!13749))) b!7154306))

(assert (= (and b!7154179 (is-Concat!27103 (regTwo!37028 r!13749))) b!7154307))

(assert (= (and b!7154179 (is-Star!18258 (regTwo!37028 r!13749))) b!7154308))

(assert (= (and b!7154179 (is-Union!18258 (regTwo!37028 r!13749))) b!7154309))

(declare-fun b!7154313 () Bool)

(declare-fun e!4297975 () Bool)

(declare-fun tp!1977633 () Bool)

(declare-fun tp!1977632 () Bool)

(assert (=> b!7154313 (= e!4297975 (and tp!1977633 tp!1977632))))

(declare-fun b!7154312 () Bool)

(declare-fun tp!1977630 () Bool)

(assert (=> b!7154312 (= e!4297975 tp!1977630)))

(declare-fun b!7154311 () Bool)

(declare-fun tp!1977631 () Bool)

(declare-fun tp!1977634 () Bool)

(assert (=> b!7154311 (= e!4297975 (and tp!1977631 tp!1977634))))

(assert (=> b!7154183 (= tp!1977578 e!4297975)))

(declare-fun b!7154310 () Bool)

(assert (=> b!7154310 (= e!4297975 tp_is_empty!46149)))

(assert (= (and b!7154183 (is-ElementMatch!18258 (h!75886 l!9132))) b!7154310))

(assert (= (and b!7154183 (is-Concat!27103 (h!75886 l!9132))) b!7154311))

(assert (= (and b!7154183 (is-Star!18258 (h!75886 l!9132))) b!7154312))

(assert (= (and b!7154183 (is-Union!18258 (h!75886 l!9132))) b!7154313))

(declare-fun b!7154318 () Bool)

(declare-fun e!4297978 () Bool)

(declare-fun tp!1977639 () Bool)

(declare-fun tp!1977640 () Bool)

(assert (=> b!7154318 (= e!4297978 (and tp!1977639 tp!1977640))))

(assert (=> b!7154183 (= tp!1977576 e!4297978)))

(assert (= (and b!7154183 (is-Cons!69438 (t!383579 l!9132))) b!7154318))

(declare-fun b!7154322 () Bool)

(declare-fun e!4297979 () Bool)

(declare-fun tp!1977644 () Bool)

(declare-fun tp!1977643 () Bool)

(assert (=> b!7154322 (= e!4297979 (and tp!1977644 tp!1977643))))

(declare-fun b!7154321 () Bool)

(declare-fun tp!1977641 () Bool)

(assert (=> b!7154321 (= e!4297979 tp!1977641)))

(declare-fun b!7154320 () Bool)

(declare-fun tp!1977642 () Bool)

(declare-fun tp!1977645 () Bool)

(assert (=> b!7154320 (= e!4297979 (and tp!1977642 tp!1977645))))

(assert (=> b!7154184 (= tp!1977572 e!4297979)))

(declare-fun b!7154319 () Bool)

(assert (=> b!7154319 (= e!4297979 tp_is_empty!46149)))

(assert (= (and b!7154184 (is-ElementMatch!18258 (reg!18587 r!13749))) b!7154319))

(assert (= (and b!7154184 (is-Concat!27103 (reg!18587 r!13749))) b!7154320))

(assert (= (and b!7154184 (is-Star!18258 (reg!18587 r!13749))) b!7154321))

(assert (= (and b!7154184 (is-Union!18258 (reg!18587 r!13749))) b!7154322))

(declare-fun b_lambda!273205 () Bool)

(assert (= b_lambda!273201 (or start!697334 b_lambda!273205)))

(declare-fun bs!1889677 () Bool)

(declare-fun d!2229296 () Bool)

(assert (= bs!1889677 (and d!2229296 start!697334)))

(assert (=> bs!1889677 (= (dynLambda!28293 lambda!436251 (h!75886 l!9132)) (validRegex!9406 (h!75886 l!9132)))))

(declare-fun m!7862100 () Bool)

(assert (=> bs!1889677 m!7862100))

(assert (=> b!7154272 d!2229296))

(declare-fun b_lambda!273207 () Bool)

(assert (= b_lambda!273203 (or start!697334 b_lambda!273207)))

(declare-fun bs!1889678 () Bool)

(declare-fun d!2229298 () Bool)

(assert (= bs!1889678 (and d!2229298 start!697334)))

(assert (=> bs!1889678 (= (dynLambda!28293 lambda!436251 (h!75886 (t!383579 l!9132))) (validRegex!9406 (h!75886 (t!383579 l!9132))))))

(declare-fun m!7862102 () Bool)

(assert (=> bs!1889678 m!7862102))

(assert (=> b!7154274 d!2229298))

(push 1)

(assert (not b!7154303))

(assert (not b!7154258))

(assert (not b!7154249))

(assert (not b!7154283))

(assert (not b!7154297))

(assert (not b!7154301))

(assert (not b!7154244))

(assert (not b!7154309))

(assert (not bs!1889677))

(assert (not b!7154313))

(assert (not b!7154295))

(assert (not d!2229284))

(assert (not b!7154304))

(assert (not b!7154307))

(assert (not b!7154256))

(assert (not b!7154308))

(assert (not b!7154281))

(assert (not b!7154321))

(assert (not b!7154275))

(assert (not b!7154312))

(assert (not b!7154300))

(assert (not b!7154305))

(assert (not b!7154265))

(assert (not b!7154322))

(assert (not b!7154299))

(assert (not b!7154296))

(assert (not d!2229280))

(assert (not b!7154246))

(assert (not b!7154260))

(assert (not b!7154262))

(assert (not b!7154261))

(assert (not b!7154252))

(assert (not b!7154273))

(assert (not b!7154248))

(assert (not b!7154311))

(assert tp_is_empty!46149)

(assert (not b!7154253))

(assert (not b!7154264))

(assert (not bs!1889678))

(assert (not b_lambda!273205))

(assert (not b!7154250))

(assert (not b!7154318))

(assert (not b!7154320))

(assert (not b_lambda!273207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

