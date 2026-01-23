; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690842 () Bool)

(assert start!690842)

(declare-fun b!7097095 () Bool)

(declare-fun res!2898091 () Bool)

(declare-fun e!4266079 () Bool)

(assert (=> b!7097095 (=> (not res!2898091) (not e!4266079))))

(declare-fun e!4266083 () Bool)

(assert (=> b!7097095 (= res!2898091 e!4266083)))

(declare-fun res!2898093 () Bool)

(assert (=> b!7097095 (=> res!2898093 e!4266083)))

(declare-datatypes ((C!35954 0))(
  ( (C!35955 (val!27683 Int)) )
))
(declare-datatypes ((Regex!17842 0))(
  ( (ElementMatch!17842 (c!1324373 C!35954)) (Concat!26687 (regOne!36196 Regex!17842) (regTwo!36196 Regex!17842)) (EmptyExpr!17842) (Star!17842 (reg!18171 Regex!17842)) (EmptyLang!17842) (Union!17842 (regOne!36197 Regex!17842) (regTwo!36197 Regex!17842)) )
))
(declare-fun r!11554 () Regex!17842)

(assert (=> b!7097095 (= res!2898093 (not (is-Concat!26687 r!11554)))))

(declare-fun b!7097096 () Bool)

(declare-fun res!2898090 () Bool)

(assert (=> b!7097096 (=> (not res!2898090) (not e!4266079))))

(declare-fun a!1901 () C!35954)

(assert (=> b!7097096 (= res!2898090 (and (or (not (is-ElementMatch!17842 r!11554)) (not (= (c!1324373 r!11554) a!1901))) (not (is-Union!17842 r!11554))))))

(declare-fun b!7097097 () Bool)

(declare-fun e!4266080 () Bool)

(declare-fun tp_is_empty!44917 () Bool)

(assert (=> b!7097097 (= e!4266080 tp_is_empty!44917)))

(declare-fun b!7097098 () Bool)

(declare-fun e!4266081 () Bool)

(declare-fun tp!1950432 () Bool)

(assert (=> b!7097098 (= e!4266081 tp!1950432)))

(declare-fun b!7097099 () Bool)

(declare-fun tp!1950431 () Bool)

(declare-fun tp!1950434 () Bool)

(assert (=> b!7097099 (= e!4266080 (and tp!1950431 tp!1950434))))

(declare-fun b!7097100 () Bool)

(declare-fun tp!1950433 () Bool)

(declare-fun tp!1950429 () Bool)

(assert (=> b!7097100 (= e!4266080 (and tp!1950433 tp!1950429))))

(declare-fun b!7097101 () Bool)

(declare-fun res!2898089 () Bool)

(assert (=> b!7097101 (=> (not res!2898089) (not e!4266079))))

(assert (=> b!7097101 (= res!2898089 (and (not (is-Concat!26687 r!11554)) (is-Star!17842 r!11554)))))

(declare-fun res!2898092 () Bool)

(assert (=> start!690842 (=> (not res!2898092) (not e!4266079))))

(declare-fun validRegex!9117 (Regex!17842) Bool)

(assert (=> start!690842 (= res!2898092 (validRegex!9117 r!11554))))

(assert (=> start!690842 e!4266079))

(assert (=> start!690842 e!4266080))

(assert (=> start!690842 tp_is_empty!44917))

(declare-datatypes ((List!68805 0))(
  ( (Nil!68681) (Cons!68681 (h!75129 Regex!17842) (t!382608 List!68805)) )
))
(declare-datatypes ((Context!13676 0))(
  ( (Context!13677 (exprs!7338 List!68805)) )
))
(declare-fun c!9994 () Context!13676)

(declare-fun e!4266082 () Bool)

(declare-fun inv!87471 (Context!13676) Bool)

(assert (=> start!690842 (and (inv!87471 c!9994) e!4266082)))

(declare-fun auxCtx!45 () Context!13676)

(assert (=> start!690842 (and (inv!87471 auxCtx!45) e!4266081)))

(declare-fun b!7097102 () Bool)

(declare-fun lambda!430576 () Int)

(declare-fun forall!16762 (List!68805 Int) Bool)

(assert (=> b!7097102 (= e!4266079 (not (forall!16762 (exprs!7338 c!9994) lambda!430576)))))

(declare-datatypes ((Unit!162359 0))(
  ( (Unit!162360) )
))
(declare-fun lt!2557443 () Unit!162359)

(declare-fun lemmaConcatPreservesForall!1133 (List!68805 List!68805 Int) Unit!162359)

(assert (=> b!7097102 (= lt!2557443 (lemmaConcatPreservesForall!1133 (exprs!7338 c!9994) (exprs!7338 auxCtx!45) lambda!430576))))

(declare-fun b!7097103 () Bool)

(declare-fun tp!1950435 () Bool)

(assert (=> b!7097103 (= e!4266080 tp!1950435)))

(declare-fun b!7097104 () Bool)

(declare-fun tp!1950430 () Bool)

(assert (=> b!7097104 (= e!4266082 tp!1950430)))

(declare-fun b!7097105 () Bool)

(declare-fun nullable!7482 (Regex!17842) Bool)

(assert (=> b!7097105 (= e!4266083 (not (nullable!7482 (regOne!36196 r!11554))))))

(assert (= (and start!690842 res!2898092) b!7097096))

(assert (= (and b!7097096 res!2898090) b!7097095))

(assert (= (and b!7097095 (not res!2898093)) b!7097105))

(assert (= (and b!7097095 res!2898091) b!7097101))

(assert (= (and b!7097101 res!2898089) b!7097102))

(assert (= (and start!690842 (is-ElementMatch!17842 r!11554)) b!7097097))

(assert (= (and start!690842 (is-Concat!26687 r!11554)) b!7097100))

(assert (= (and start!690842 (is-Star!17842 r!11554)) b!7097103))

(assert (= (and start!690842 (is-Union!17842 r!11554)) b!7097099))

(assert (= start!690842 b!7097104))

(assert (= start!690842 b!7097098))

(declare-fun m!7824216 () Bool)

(assert (=> start!690842 m!7824216))

(declare-fun m!7824218 () Bool)

(assert (=> start!690842 m!7824218))

(declare-fun m!7824220 () Bool)

(assert (=> start!690842 m!7824220))

(declare-fun m!7824222 () Bool)

(assert (=> b!7097102 m!7824222))

(declare-fun m!7824224 () Bool)

(assert (=> b!7097102 m!7824224))

(declare-fun m!7824226 () Bool)

(assert (=> b!7097105 m!7824226))

(push 1)

(assert (not start!690842))

(assert tp_is_empty!44917)

(assert (not b!7097102))

(assert (not b!7097099))

(assert (not b!7097105))

(assert (not b!7097103))

(assert (not b!7097100))

(assert (not b!7097104))

(assert (not b!7097098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7097157 () Bool)

(declare-fun e!4266113 () Bool)

(declare-fun e!4266114 () Bool)

(assert (=> b!7097157 (= e!4266113 e!4266114)))

(declare-fun res!2898121 () Bool)

(assert (=> b!7097157 (=> (not res!2898121) (not e!4266114))))

(declare-fun call!645950 () Bool)

(assert (=> b!7097157 (= res!2898121 call!645950)))

(declare-fun b!7097158 () Bool)

(declare-fun e!4266115 () Bool)

(declare-fun e!4266116 () Bool)

(assert (=> b!7097158 (= e!4266115 e!4266116)))

(declare-fun res!2898123 () Bool)

(assert (=> b!7097158 (= res!2898123 (not (nullable!7482 (reg!18171 r!11554))))))

(assert (=> b!7097158 (=> (not res!2898123) (not e!4266116))))

(declare-fun bm!645943 () Bool)

(declare-fun c!1324379 () Bool)

(assert (=> bm!645943 (= call!645950 (validRegex!9117 (ite c!1324379 (regTwo!36197 r!11554) (regOne!36196 r!11554))))))

(declare-fun b!7097159 () Bool)

(declare-fun e!4266119 () Bool)

(assert (=> b!7097159 (= e!4266119 call!645950)))

(declare-fun b!7097160 () Bool)

(declare-fun res!2898120 () Bool)

(assert (=> b!7097160 (=> (not res!2898120) (not e!4266119))))

(declare-fun call!645948 () Bool)

(assert (=> b!7097160 (= res!2898120 call!645948)))

(declare-fun e!4266118 () Bool)

(assert (=> b!7097160 (= e!4266118 e!4266119)))

(declare-fun bm!645944 () Bool)

(declare-fun call!645949 () Bool)

(assert (=> bm!645944 (= call!645948 call!645949)))

(declare-fun b!7097162 () Bool)

(assert (=> b!7097162 (= e!4266114 call!645948)))

(declare-fun b!7097163 () Bool)

(declare-fun e!4266117 () Bool)

(assert (=> b!7097163 (= e!4266117 e!4266115)))

(declare-fun c!1324380 () Bool)

(assert (=> b!7097163 (= c!1324380 (is-Star!17842 r!11554))))

(declare-fun b!7097164 () Bool)

(assert (=> b!7097164 (= e!4266115 e!4266118)))

(assert (=> b!7097164 (= c!1324379 (is-Union!17842 r!11554))))

(declare-fun bm!645945 () Bool)

(assert (=> bm!645945 (= call!645949 (validRegex!9117 (ite c!1324380 (reg!18171 r!11554) (ite c!1324379 (regOne!36197 r!11554) (regTwo!36196 r!11554)))))))

(declare-fun b!7097165 () Bool)

(assert (=> b!7097165 (= e!4266116 call!645949)))

(declare-fun d!2217987 () Bool)

(declare-fun res!2898122 () Bool)

(assert (=> d!2217987 (=> res!2898122 e!4266117)))

(assert (=> d!2217987 (= res!2898122 (is-ElementMatch!17842 r!11554))))

(assert (=> d!2217987 (= (validRegex!9117 r!11554) e!4266117)))

(declare-fun b!7097161 () Bool)

(declare-fun res!2898119 () Bool)

(assert (=> b!7097161 (=> res!2898119 e!4266113)))

(assert (=> b!7097161 (= res!2898119 (not (is-Concat!26687 r!11554)))))

(assert (=> b!7097161 (= e!4266118 e!4266113)))

(assert (= (and d!2217987 (not res!2898122)) b!7097163))

(assert (= (and b!7097163 c!1324380) b!7097158))

(assert (= (and b!7097163 (not c!1324380)) b!7097164))

(assert (= (and b!7097158 res!2898123) b!7097165))

(assert (= (and b!7097164 c!1324379) b!7097160))

(assert (= (and b!7097164 (not c!1324379)) b!7097161))

(assert (= (and b!7097160 res!2898120) b!7097159))

(assert (= (and b!7097161 (not res!2898119)) b!7097157))

(assert (= (and b!7097157 res!2898121) b!7097162))

(assert (= (or b!7097160 b!7097162) bm!645944))

(assert (= (or b!7097159 b!7097157) bm!645943))

(assert (= (or b!7097165 bm!645944) bm!645945))

(declare-fun m!7824240 () Bool)

(assert (=> b!7097158 m!7824240))

(declare-fun m!7824242 () Bool)

(assert (=> bm!645943 m!7824242))

(declare-fun m!7824244 () Bool)

(assert (=> bm!645945 m!7824244))

(assert (=> start!690842 d!2217987))

(declare-fun bs!1884001 () Bool)

(declare-fun d!2217989 () Bool)

(assert (= bs!1884001 (and d!2217989 b!7097102)))

(declare-fun lambda!430584 () Int)

(assert (=> bs!1884001 (= lambda!430584 lambda!430576)))

(assert (=> d!2217989 (= (inv!87471 c!9994) (forall!16762 (exprs!7338 c!9994) lambda!430584))))

(declare-fun bs!1884002 () Bool)

(assert (= bs!1884002 d!2217989))

(declare-fun m!7824246 () Bool)

(assert (=> bs!1884002 m!7824246))

(assert (=> start!690842 d!2217989))

(declare-fun bs!1884003 () Bool)

(declare-fun d!2217993 () Bool)

(assert (= bs!1884003 (and d!2217993 b!7097102)))

(declare-fun lambda!430585 () Int)

(assert (=> bs!1884003 (= lambda!430585 lambda!430576)))

(declare-fun bs!1884004 () Bool)

(assert (= bs!1884004 (and d!2217993 d!2217989)))

(assert (=> bs!1884004 (= lambda!430585 lambda!430584)))

(assert (=> d!2217993 (= (inv!87471 auxCtx!45) (forall!16762 (exprs!7338 auxCtx!45) lambda!430585))))

(declare-fun bs!1884006 () Bool)

(assert (= bs!1884006 d!2217993))

(declare-fun m!7824250 () Bool)

(assert (=> bs!1884006 m!7824250))

(assert (=> start!690842 d!2217993))

(declare-fun d!2217997 () Bool)

(declare-fun nullableFct!2879 (Regex!17842) Bool)

(assert (=> d!2217997 (= (nullable!7482 (regOne!36196 r!11554)) (nullableFct!2879 (regOne!36196 r!11554)))))

(declare-fun bs!1884007 () Bool)

(assert (= bs!1884007 d!2217997))

(declare-fun m!7824252 () Bool)

(assert (=> bs!1884007 m!7824252))

(assert (=> b!7097105 d!2217997))

(declare-fun d!2217999 () Bool)

(declare-fun res!2898128 () Bool)

(declare-fun e!4266124 () Bool)

(assert (=> d!2217999 (=> res!2898128 e!4266124)))

(assert (=> d!2217999 (= res!2898128 (is-Nil!68681 (exprs!7338 c!9994)))))

(assert (=> d!2217999 (= (forall!16762 (exprs!7338 c!9994) lambda!430576) e!4266124)))

(declare-fun b!7097170 () Bool)

(declare-fun e!4266125 () Bool)

(assert (=> b!7097170 (= e!4266124 e!4266125)))

(declare-fun res!2898129 () Bool)

(assert (=> b!7097170 (=> (not res!2898129) (not e!4266125))))

(declare-fun dynLambda!28027 (Int Regex!17842) Bool)

(assert (=> b!7097170 (= res!2898129 (dynLambda!28027 lambda!430576 (h!75129 (exprs!7338 c!9994))))))

(declare-fun b!7097171 () Bool)

(assert (=> b!7097171 (= e!4266125 (forall!16762 (t!382608 (exprs!7338 c!9994)) lambda!430576))))

(assert (= (and d!2217999 (not res!2898128)) b!7097170))

(assert (= (and b!7097170 res!2898129) b!7097171))

(declare-fun b_lambda!271193 () Bool)

(assert (=> (not b_lambda!271193) (not b!7097170)))

(declare-fun m!7824254 () Bool)

(assert (=> b!7097170 m!7824254))

(declare-fun m!7824256 () Bool)

(assert (=> b!7097171 m!7824256))

(assert (=> b!7097102 d!2217999))

(declare-fun d!2218001 () Bool)

(declare-fun ++!16002 (List!68805 List!68805) List!68805)

(assert (=> d!2218001 (forall!16762 (++!16002 (exprs!7338 c!9994) (exprs!7338 auxCtx!45)) lambda!430576)))

(declare-fun lt!2557449 () Unit!162359)

(declare-fun choose!54720 (List!68805 List!68805 Int) Unit!162359)

(assert (=> d!2218001 (= lt!2557449 (choose!54720 (exprs!7338 c!9994) (exprs!7338 auxCtx!45) lambda!430576))))

(assert (=> d!2218001 (forall!16762 (exprs!7338 c!9994) lambda!430576)))

(assert (=> d!2218001 (= (lemmaConcatPreservesForall!1133 (exprs!7338 c!9994) (exprs!7338 auxCtx!45) lambda!430576) lt!2557449)))

(declare-fun bs!1884008 () Bool)

(assert (= bs!1884008 d!2218001))

(declare-fun m!7824258 () Bool)

(assert (=> bs!1884008 m!7824258))

(assert (=> bs!1884008 m!7824258))

(declare-fun m!7824260 () Bool)

(assert (=> bs!1884008 m!7824260))

(declare-fun m!7824262 () Bool)

(assert (=> bs!1884008 m!7824262))

(assert (=> bs!1884008 m!7824222))

(assert (=> b!7097102 d!2218001))

(declare-fun b!7097203 () Bool)

(declare-fun e!4266142 () Bool)

(declare-fun tp!1950470 () Bool)

(declare-fun tp!1950467 () Bool)

(assert (=> b!7097203 (= e!4266142 (and tp!1950470 tp!1950467))))

(declare-fun b!7097201 () Bool)

(declare-fun tp!1950468 () Bool)

(declare-fun tp!1950469 () Bool)

(assert (=> b!7097201 (= e!4266142 (and tp!1950468 tp!1950469))))

(declare-fun b!7097200 () Bool)

(assert (=> b!7097200 (= e!4266142 tp_is_empty!44917)))

(assert (=> b!7097100 (= tp!1950433 e!4266142)))

(declare-fun b!7097202 () Bool)

(declare-fun tp!1950471 () Bool)

(assert (=> b!7097202 (= e!4266142 tp!1950471)))

(assert (= (and b!7097100 (is-ElementMatch!17842 (regOne!36196 r!11554))) b!7097200))

(assert (= (and b!7097100 (is-Concat!26687 (regOne!36196 r!11554))) b!7097201))

(assert (= (and b!7097100 (is-Star!17842 (regOne!36196 r!11554))) b!7097202))

(assert (= (and b!7097100 (is-Union!17842 (regOne!36196 r!11554))) b!7097203))

(declare-fun b!7097207 () Bool)

(declare-fun e!4266143 () Bool)

(declare-fun tp!1950475 () Bool)

(declare-fun tp!1950472 () Bool)

(assert (=> b!7097207 (= e!4266143 (and tp!1950475 tp!1950472))))

(declare-fun b!7097205 () Bool)

(declare-fun tp!1950473 () Bool)

(declare-fun tp!1950474 () Bool)

(assert (=> b!7097205 (= e!4266143 (and tp!1950473 tp!1950474))))

(declare-fun b!7097204 () Bool)

(assert (=> b!7097204 (= e!4266143 tp_is_empty!44917)))

(assert (=> b!7097100 (= tp!1950429 e!4266143)))

(declare-fun b!7097206 () Bool)

(declare-fun tp!1950476 () Bool)

(assert (=> b!7097206 (= e!4266143 tp!1950476)))

(assert (= (and b!7097100 (is-ElementMatch!17842 (regTwo!36196 r!11554))) b!7097204))

(assert (= (and b!7097100 (is-Concat!26687 (regTwo!36196 r!11554))) b!7097205))

(assert (= (and b!7097100 (is-Star!17842 (regTwo!36196 r!11554))) b!7097206))

(assert (= (and b!7097100 (is-Union!17842 (regTwo!36196 r!11554))) b!7097207))

(declare-fun b!7097211 () Bool)

(declare-fun e!4266144 () Bool)

(declare-fun tp!1950480 () Bool)

(declare-fun tp!1950477 () Bool)

(assert (=> b!7097211 (= e!4266144 (and tp!1950480 tp!1950477))))

(declare-fun b!7097209 () Bool)

(declare-fun tp!1950478 () Bool)

(declare-fun tp!1950479 () Bool)

(assert (=> b!7097209 (= e!4266144 (and tp!1950478 tp!1950479))))

(declare-fun b!7097208 () Bool)

(assert (=> b!7097208 (= e!4266144 tp_is_empty!44917)))

(assert (=> b!7097099 (= tp!1950431 e!4266144)))

(declare-fun b!7097210 () Bool)

(declare-fun tp!1950481 () Bool)

(assert (=> b!7097210 (= e!4266144 tp!1950481)))

(assert (= (and b!7097099 (is-ElementMatch!17842 (regOne!36197 r!11554))) b!7097208))

(assert (= (and b!7097099 (is-Concat!26687 (regOne!36197 r!11554))) b!7097209))

(assert (= (and b!7097099 (is-Star!17842 (regOne!36197 r!11554))) b!7097210))

(assert (= (and b!7097099 (is-Union!17842 (regOne!36197 r!11554))) b!7097211))

(declare-fun b!7097215 () Bool)

(declare-fun e!4266145 () Bool)

(declare-fun tp!1950485 () Bool)

(declare-fun tp!1950482 () Bool)

(assert (=> b!7097215 (= e!4266145 (and tp!1950485 tp!1950482))))

(declare-fun b!7097213 () Bool)

(declare-fun tp!1950483 () Bool)

(declare-fun tp!1950484 () Bool)

(assert (=> b!7097213 (= e!4266145 (and tp!1950483 tp!1950484))))

(declare-fun b!7097212 () Bool)

(assert (=> b!7097212 (= e!4266145 tp_is_empty!44917)))

(assert (=> b!7097099 (= tp!1950434 e!4266145)))

(declare-fun b!7097214 () Bool)

(declare-fun tp!1950486 () Bool)

(assert (=> b!7097214 (= e!4266145 tp!1950486)))

(assert (= (and b!7097099 (is-ElementMatch!17842 (regTwo!36197 r!11554))) b!7097212))

(assert (= (and b!7097099 (is-Concat!26687 (regTwo!36197 r!11554))) b!7097213))

(assert (= (and b!7097099 (is-Star!17842 (regTwo!36197 r!11554))) b!7097214))

(assert (= (and b!7097099 (is-Union!17842 (regTwo!36197 r!11554))) b!7097215))

(declare-fun b!7097220 () Bool)

(declare-fun e!4266148 () Bool)

(declare-fun tp!1950491 () Bool)

(declare-fun tp!1950492 () Bool)

(assert (=> b!7097220 (= e!4266148 (and tp!1950491 tp!1950492))))

(assert (=> b!7097104 (= tp!1950430 e!4266148)))

(assert (= (and b!7097104 (is-Cons!68681 (exprs!7338 c!9994))) b!7097220))

(declare-fun b!7097221 () Bool)

(declare-fun e!4266149 () Bool)

(declare-fun tp!1950493 () Bool)

(declare-fun tp!1950494 () Bool)

(assert (=> b!7097221 (= e!4266149 (and tp!1950493 tp!1950494))))

(assert (=> b!7097098 (= tp!1950432 e!4266149)))

(assert (= (and b!7097098 (is-Cons!68681 (exprs!7338 auxCtx!45))) b!7097221))

(declare-fun b!7097225 () Bool)

(declare-fun e!4266150 () Bool)

(declare-fun tp!1950498 () Bool)

(declare-fun tp!1950495 () Bool)

(assert (=> b!7097225 (= e!4266150 (and tp!1950498 tp!1950495))))

(declare-fun b!7097223 () Bool)

(declare-fun tp!1950496 () Bool)

(declare-fun tp!1950497 () Bool)

(assert (=> b!7097223 (= e!4266150 (and tp!1950496 tp!1950497))))

(declare-fun b!7097222 () Bool)

(assert (=> b!7097222 (= e!4266150 tp_is_empty!44917)))

(assert (=> b!7097103 (= tp!1950435 e!4266150)))

(declare-fun b!7097224 () Bool)

(declare-fun tp!1950499 () Bool)

(assert (=> b!7097224 (= e!4266150 tp!1950499)))

(assert (= (and b!7097103 (is-ElementMatch!17842 (reg!18171 r!11554))) b!7097222))

(assert (= (and b!7097103 (is-Concat!26687 (reg!18171 r!11554))) b!7097223))

(assert (= (and b!7097103 (is-Star!17842 (reg!18171 r!11554))) b!7097224))

(assert (= (and b!7097103 (is-Union!17842 (reg!18171 r!11554))) b!7097225))

(declare-fun b_lambda!271195 () Bool)

(assert (= b_lambda!271193 (or b!7097102 b_lambda!271195)))

(declare-fun bs!1884009 () Bool)

(declare-fun d!2218003 () Bool)

(assert (= bs!1884009 (and d!2218003 b!7097102)))

(assert (=> bs!1884009 (= (dynLambda!28027 lambda!430576 (h!75129 (exprs!7338 c!9994))) (validRegex!9117 (h!75129 (exprs!7338 c!9994))))))

(declare-fun m!7824264 () Bool)

(assert (=> bs!1884009 m!7824264))

(assert (=> b!7097170 d!2218003))

(push 1)

(assert (not b!7097209))

(assert (not b!7097215))

(assert (not d!2217993))

(assert (not b!7097206))

(assert (not b!7097205))

(assert (not b!7097201))

(assert (not b_lambda!271195))

(assert (not b!7097214))

(assert (not b!7097202))

(assert (not bs!1884009))

(assert (not b!7097211))

(assert (not b!7097158))

(assert (not b!7097171))

(assert (not d!2217989))

(assert (not d!2217997))

(assert tp_is_empty!44917)

(assert (not b!7097213))

(assert (not b!7097220))

(assert (not b!7097207))

(assert (not b!7097224))

(assert (not b!7097203))

(assert (not bm!645945))

(assert (not bm!645943))

(assert (not b!7097221))

(assert (not b!7097210))

(assert (not b!7097223))

(assert (not b!7097225))

(assert (not d!2218001))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

