; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692310 () Bool)

(assert start!692310)

(declare-fun b!7112331 () Bool)

(declare-fun res!2902332 () Bool)

(declare-fun e!4274189 () Bool)

(assert (=> b!7112331 (=> (not res!2902332) (not e!4274189))))

(declare-fun e!4274191 () Bool)

(assert (=> b!7112331 (= res!2902332 e!4274191)))

(declare-fun res!2902330 () Bool)

(assert (=> b!7112331 (=> res!2902330 e!4274191)))

(declare-datatypes ((C!36158 0))(
  ( (C!36159 (val!27785 Int)) )
))
(declare-datatypes ((Regex!17944 0))(
  ( (ElementMatch!17944 (c!1327359 C!36158)) (Concat!26789 (regOne!36400 Regex!17944) (regTwo!36400 Regex!17944)) (EmptyExpr!17944) (Star!17944 (reg!18273 Regex!17944)) (EmptyLang!17944) (Union!17944 (regOne!36401 Regex!17944) (regTwo!36401 Regex!17944)) )
))
(declare-fun r!11554 () Regex!17944)

(assert (=> b!7112331 (= res!2902330 (not (is-Concat!26789 r!11554)))))

(declare-fun b!7112332 () Bool)

(declare-fun res!2902328 () Bool)

(assert (=> b!7112332 (=> (not res!2902328) (not e!4274189))))

(assert (=> b!7112332 (= res!2902328 (is-Concat!26789 r!11554))))

(declare-fun b!7112333 () Bool)

(declare-fun e!4274190 () Bool)

(assert (=> b!7112333 (= e!4274189 e!4274190)))

(declare-fun res!2902331 () Bool)

(assert (=> b!7112333 (=> (not res!2902331) (not e!4274190))))

(declare-fun validRegex!9217 (Regex!17944) Bool)

(assert (=> b!7112333 (= res!2902331 (validRegex!9217 (regTwo!36400 r!11554)))))

(declare-datatypes ((List!68905 0))(
  ( (Nil!68781) (Cons!68781 (h!75229 Regex!17944) (t!382740 List!68905)) )
))
(declare-fun lt!2560217 () List!68905)

(declare-datatypes ((Context!13876 0))(
  ( (Context!13877 (exprs!7438 List!68905)) )
))
(declare-fun c!9994 () Context!13876)

(declare-fun auxCtx!45 () Context!13876)

(declare-fun ++!16096 (List!68905 List!68905) List!68905)

(assert (=> b!7112333 (= lt!2560217 (++!16096 (exprs!7438 c!9994) (exprs!7438 auxCtx!45)))))

(declare-fun lambda!432144 () Int)

(declare-datatypes ((Unit!162559 0))(
  ( (Unit!162560) )
))
(declare-fun lt!2560218 () Unit!162559)

(declare-fun lemmaConcatPreservesForall!1229 (List!68905 List!68905 Int) Unit!162559)

(assert (=> b!7112333 (= lt!2560218 (lemmaConcatPreservesForall!1229 (exprs!7438 c!9994) (exprs!7438 auxCtx!45) lambda!432144))))

(declare-fun lt!2560219 () Unit!162559)

(assert (=> b!7112333 (= lt!2560219 (lemmaConcatPreservesForall!1229 (exprs!7438 c!9994) (exprs!7438 auxCtx!45) lambda!432144))))

(declare-fun b!7112334 () Bool)

(declare-fun res!2902329 () Bool)

(assert (=> b!7112334 (=> (not res!2902329) (not e!4274189))))

(declare-fun a!1901 () C!36158)

(assert (=> b!7112334 (= res!2902329 (and (or (not (is-ElementMatch!17944 r!11554)) (not (= (c!1327359 r!11554) a!1901))) (not (is-Union!17944 r!11554))))))

(declare-fun b!7112335 () Bool)

(declare-fun e!4274193 () Bool)

(declare-fun tp!1956728 () Bool)

(assert (=> b!7112335 (= e!4274193 tp!1956728)))

(declare-fun b!7112336 () Bool)

(declare-fun tp_is_empty!45121 () Bool)

(assert (=> b!7112336 (= e!4274193 tp_is_empty!45121)))

(declare-fun b!7112337 () Bool)

(declare-fun tp!1956731 () Bool)

(declare-fun tp!1956730 () Bool)

(assert (=> b!7112337 (= e!4274193 (and tp!1956731 tp!1956730))))

(declare-fun b!7112338 () Bool)

(declare-fun nullable!7581 (Regex!17944) Bool)

(assert (=> b!7112338 (= e!4274191 (not (nullable!7581 (regOne!36400 r!11554))))))

(declare-fun b!7112339 () Bool)

(declare-fun tp!1956727 () Bool)

(declare-fun tp!1956732 () Bool)

(assert (=> b!7112339 (= e!4274193 (and tp!1956727 tp!1956732))))

(declare-fun res!2902327 () Bool)

(assert (=> start!692310 (=> (not res!2902327) (not e!4274189))))

(assert (=> start!692310 (= res!2902327 (validRegex!9217 r!11554))))

(assert (=> start!692310 e!4274189))

(assert (=> start!692310 e!4274193))

(assert (=> start!692310 tp_is_empty!45121))

(declare-fun e!4274194 () Bool)

(declare-fun inv!87724 (Context!13876) Bool)

(assert (=> start!692310 (and (inv!87724 c!9994) e!4274194)))

(declare-fun e!4274192 () Bool)

(assert (=> start!692310 (and (inv!87724 auxCtx!45) e!4274192)))

(declare-fun b!7112340 () Bool)

(declare-fun $colon$colon!2796 (List!68905 Regex!17944) List!68905)

(assert (=> b!7112340 (= e!4274190 (not (inv!87724 (Context!13877 ($colon$colon!2796 lt!2560217 (regTwo!36400 r!11554))))))))

(declare-fun b!7112341 () Bool)

(declare-fun tp!1956729 () Bool)

(assert (=> b!7112341 (= e!4274194 tp!1956729)))

(declare-fun b!7112342 () Bool)

(declare-fun tp!1956733 () Bool)

(assert (=> b!7112342 (= e!4274192 tp!1956733)))

(assert (= (and start!692310 res!2902327) b!7112334))

(assert (= (and b!7112334 res!2902329) b!7112331))

(assert (= (and b!7112331 (not res!2902330)) b!7112338))

(assert (= (and b!7112331 res!2902332) b!7112332))

(assert (= (and b!7112332 res!2902328) b!7112333))

(assert (= (and b!7112333 res!2902331) b!7112340))

(assert (= (and start!692310 (is-ElementMatch!17944 r!11554)) b!7112336))

(assert (= (and start!692310 (is-Concat!26789 r!11554)) b!7112337))

(assert (= (and start!692310 (is-Star!17944 r!11554)) b!7112335))

(assert (= (and start!692310 (is-Union!17944 r!11554)) b!7112339))

(assert (= start!692310 b!7112341))

(assert (= start!692310 b!7112342))

(declare-fun m!7833100 () Bool)

(assert (=> b!7112333 m!7833100))

(declare-fun m!7833102 () Bool)

(assert (=> b!7112333 m!7833102))

(declare-fun m!7833104 () Bool)

(assert (=> b!7112333 m!7833104))

(assert (=> b!7112333 m!7833104))

(declare-fun m!7833106 () Bool)

(assert (=> b!7112338 m!7833106))

(declare-fun m!7833108 () Bool)

(assert (=> start!692310 m!7833108))

(declare-fun m!7833110 () Bool)

(assert (=> start!692310 m!7833110))

(declare-fun m!7833112 () Bool)

(assert (=> start!692310 m!7833112))

(declare-fun m!7833114 () Bool)

(assert (=> b!7112340 m!7833114))

(declare-fun m!7833116 () Bool)

(assert (=> b!7112340 m!7833116))

(push 1)

(assert tp_is_empty!45121)

(assert (not b!7112335))

(assert (not b!7112338))

(assert (not start!692310))

(assert (not b!7112340))

(assert (not b!7112333))

(assert (not b!7112337))

(assert (not b!7112341))

(assert (not b!7112342))

(assert (not b!7112339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2220490 () Bool)

(declare-fun res!2902365 () Bool)

(declare-fun e!4274231 () Bool)

(assert (=> d!2220490 (=> res!2902365 e!4274231)))

(assert (=> d!2220490 (= res!2902365 (is-ElementMatch!17944 r!11554))))

(assert (=> d!2220490 (= (validRegex!9217 r!11554) e!4274231)))

(declare-fun b!7112397 () Bool)

(declare-fun e!4274232 () Bool)

(declare-fun call!649136 () Bool)

(assert (=> b!7112397 (= e!4274232 call!649136)))

(declare-fun bm!649131 () Bool)

(declare-fun call!649138 () Bool)

(declare-fun call!649137 () Bool)

(assert (=> bm!649131 (= call!649138 call!649137)))

(declare-fun b!7112398 () Bool)

(declare-fun res!2902363 () Bool)

(declare-fun e!4274229 () Bool)

(assert (=> b!7112398 (=> (not res!2902363) (not e!4274229))))

(assert (=> b!7112398 (= res!2902363 call!649136)))

(declare-fun e!4274230 () Bool)

(assert (=> b!7112398 (= e!4274230 e!4274229)))

(declare-fun b!7112399 () Bool)

(declare-fun e!4274233 () Bool)

(declare-fun e!4274228 () Bool)

(assert (=> b!7112399 (= e!4274233 e!4274228)))

(declare-fun res!2902364 () Bool)

(assert (=> b!7112399 (= res!2902364 (not (nullable!7581 (reg!18273 r!11554))))))

(assert (=> b!7112399 (=> (not res!2902364) (not e!4274228))))

(declare-fun b!7112400 () Bool)

(declare-fun e!4274227 () Bool)

(assert (=> b!7112400 (= e!4274227 e!4274232)))

(declare-fun res!2902361 () Bool)

(assert (=> b!7112400 (=> (not res!2902361) (not e!4274232))))

(assert (=> b!7112400 (= res!2902361 call!649138)))

(declare-fun bm!649132 () Bool)

(declare-fun c!1327365 () Bool)

(declare-fun c!1327366 () Bool)

(assert (=> bm!649132 (= call!649137 (validRegex!9217 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554)))))))

(declare-fun b!7112401 () Bool)

(assert (=> b!7112401 (= e!4274229 call!649138)))

(declare-fun b!7112402 () Bool)

(declare-fun res!2902362 () Bool)

(assert (=> b!7112402 (=> res!2902362 e!4274227)))

(assert (=> b!7112402 (= res!2902362 (not (is-Concat!26789 r!11554)))))

(assert (=> b!7112402 (= e!4274230 e!4274227)))

(declare-fun b!7112403 () Bool)

(assert (=> b!7112403 (= e!4274228 call!649137)))

(declare-fun b!7112404 () Bool)

(assert (=> b!7112404 (= e!4274231 e!4274233)))

(assert (=> b!7112404 (= c!1327365 (is-Star!17944 r!11554))))

(declare-fun b!7112405 () Bool)

(assert (=> b!7112405 (= e!4274233 e!4274230)))

(assert (=> b!7112405 (= c!1327366 (is-Union!17944 r!11554))))

(declare-fun bm!649133 () Bool)

(assert (=> bm!649133 (= call!649136 (validRegex!9217 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554))))))

(assert (= (and d!2220490 (not res!2902365)) b!7112404))

(assert (= (and b!7112404 c!1327365) b!7112399))

(assert (= (and b!7112404 (not c!1327365)) b!7112405))

(assert (= (and b!7112399 res!2902364) b!7112403))

(assert (= (and b!7112405 c!1327366) b!7112398))

(assert (= (and b!7112405 (not c!1327366)) b!7112402))

(assert (= (and b!7112398 res!2902363) b!7112401))

(assert (= (and b!7112402 (not res!2902362)) b!7112400))

(assert (= (and b!7112400 res!2902361) b!7112397))

(assert (= (or b!7112398 b!7112397) bm!649133))

(assert (= (or b!7112401 b!7112400) bm!649131))

(assert (= (or b!7112403 bm!649131) bm!649132))

(declare-fun m!7833136 () Bool)

(assert (=> b!7112399 m!7833136))

(declare-fun m!7833138 () Bool)

(assert (=> bm!649132 m!7833138))

(declare-fun m!7833140 () Bool)

(assert (=> bm!649133 m!7833140))

(assert (=> start!692310 d!2220490))

(declare-fun bs!1885307 () Bool)

(declare-fun d!2220492 () Bool)

(assert (= bs!1885307 (and d!2220492 b!7112333)))

(declare-fun lambda!432152 () Int)

(assert (=> bs!1885307 (= lambda!432152 lambda!432144)))

(declare-fun forall!16841 (List!68905 Int) Bool)

(assert (=> d!2220492 (= (inv!87724 c!9994) (forall!16841 (exprs!7438 c!9994) lambda!432152))))

(declare-fun bs!1885308 () Bool)

(assert (= bs!1885308 d!2220492))

(declare-fun m!7833142 () Bool)

(assert (=> bs!1885308 m!7833142))

(assert (=> start!692310 d!2220492))

(declare-fun bs!1885309 () Bool)

(declare-fun d!2220494 () Bool)

(assert (= bs!1885309 (and d!2220494 b!7112333)))

(declare-fun lambda!432153 () Int)

(assert (=> bs!1885309 (= lambda!432153 lambda!432144)))

(declare-fun bs!1885310 () Bool)

(assert (= bs!1885310 (and d!2220494 d!2220492)))

(assert (=> bs!1885310 (= lambda!432153 lambda!432152)))

(assert (=> d!2220494 (= (inv!87724 auxCtx!45) (forall!16841 (exprs!7438 auxCtx!45) lambda!432153))))

(declare-fun bs!1885311 () Bool)

(assert (= bs!1885311 d!2220494))

(declare-fun m!7833144 () Bool)

(assert (=> bs!1885311 m!7833144))

(assert (=> start!692310 d!2220494))

(declare-fun d!2220496 () Bool)

(declare-fun nullableFct!2933 (Regex!17944) Bool)

(assert (=> d!2220496 (= (nullable!7581 (regOne!36400 r!11554)) (nullableFct!2933 (regOne!36400 r!11554)))))

(declare-fun bs!1885312 () Bool)

(assert (= bs!1885312 d!2220496))

(declare-fun m!7833146 () Bool)

(assert (=> bs!1885312 m!7833146))

(assert (=> b!7112338 d!2220496))

(declare-fun d!2220498 () Bool)

(declare-fun res!2902370 () Bool)

(declare-fun e!4274238 () Bool)

(assert (=> d!2220498 (=> res!2902370 e!4274238)))

(assert (=> d!2220498 (= res!2902370 (is-ElementMatch!17944 (regTwo!36400 r!11554)))))

(assert (=> d!2220498 (= (validRegex!9217 (regTwo!36400 r!11554)) e!4274238)))

(declare-fun b!7112406 () Bool)

(declare-fun e!4274239 () Bool)

(declare-fun call!649139 () Bool)

(assert (=> b!7112406 (= e!4274239 call!649139)))

(declare-fun bm!649134 () Bool)

(declare-fun call!649141 () Bool)

(declare-fun call!649140 () Bool)

(assert (=> bm!649134 (= call!649141 call!649140)))

(declare-fun b!7112407 () Bool)

(declare-fun res!2902368 () Bool)

(declare-fun e!4274236 () Bool)

(assert (=> b!7112407 (=> (not res!2902368) (not e!4274236))))

(assert (=> b!7112407 (= res!2902368 call!649139)))

(declare-fun e!4274237 () Bool)

(assert (=> b!7112407 (= e!4274237 e!4274236)))

(declare-fun b!7112408 () Bool)

(declare-fun e!4274240 () Bool)

(declare-fun e!4274235 () Bool)

(assert (=> b!7112408 (= e!4274240 e!4274235)))

(declare-fun res!2902369 () Bool)

(assert (=> b!7112408 (= res!2902369 (not (nullable!7581 (reg!18273 (regTwo!36400 r!11554)))))))

(assert (=> b!7112408 (=> (not res!2902369) (not e!4274235))))

(declare-fun b!7112409 () Bool)

(declare-fun e!4274234 () Bool)

(assert (=> b!7112409 (= e!4274234 e!4274239)))

(declare-fun res!2902366 () Bool)

(assert (=> b!7112409 (=> (not res!2902366) (not e!4274239))))

(assert (=> b!7112409 (= res!2902366 call!649141)))

(declare-fun c!1327368 () Bool)

(declare-fun bm!649135 () Bool)

(declare-fun c!1327367 () Bool)

(assert (=> bm!649135 (= call!649140 (validRegex!9217 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554))))))))

(declare-fun b!7112410 () Bool)

(assert (=> b!7112410 (= e!4274236 call!649141)))

(declare-fun b!7112411 () Bool)

(declare-fun res!2902367 () Bool)

(assert (=> b!7112411 (=> res!2902367 e!4274234)))

(assert (=> b!7112411 (= res!2902367 (not (is-Concat!26789 (regTwo!36400 r!11554))))))

(assert (=> b!7112411 (= e!4274237 e!4274234)))

(declare-fun b!7112412 () Bool)

(assert (=> b!7112412 (= e!4274235 call!649140)))

(declare-fun b!7112413 () Bool)

(assert (=> b!7112413 (= e!4274238 e!4274240)))

(assert (=> b!7112413 (= c!1327367 (is-Star!17944 (regTwo!36400 r!11554)))))

(declare-fun b!7112414 () Bool)

(assert (=> b!7112414 (= e!4274240 e!4274237)))

(assert (=> b!7112414 (= c!1327368 (is-Union!17944 (regTwo!36400 r!11554)))))

(declare-fun bm!649136 () Bool)

(assert (=> bm!649136 (= call!649139 (validRegex!9217 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554)))))))

(assert (= (and d!2220498 (not res!2902370)) b!7112413))

(assert (= (and b!7112413 c!1327367) b!7112408))

(assert (= (and b!7112413 (not c!1327367)) b!7112414))

(assert (= (and b!7112408 res!2902369) b!7112412))

(assert (= (and b!7112414 c!1327368) b!7112407))

(assert (= (and b!7112414 (not c!1327368)) b!7112411))

(assert (= (and b!7112407 res!2902368) b!7112410))

(assert (= (and b!7112411 (not res!2902367)) b!7112409))

(assert (= (and b!7112409 res!2902366) b!7112406))

(assert (= (or b!7112407 b!7112406) bm!649136))

(assert (= (or b!7112410 b!7112409) bm!649134))

(assert (= (or b!7112412 bm!649134) bm!649135))

(declare-fun m!7833148 () Bool)

(assert (=> b!7112408 m!7833148))

(declare-fun m!7833150 () Bool)

(assert (=> bm!649135 m!7833150))

(declare-fun m!7833152 () Bool)

(assert (=> bm!649136 m!7833152))

(assert (=> b!7112333 d!2220498))

(declare-fun b!7112424 () Bool)

(declare-fun e!4274245 () List!68905)

(assert (=> b!7112424 (= e!4274245 (Cons!68781 (h!75229 (exprs!7438 c!9994)) (++!16096 (t!382740 (exprs!7438 c!9994)) (exprs!7438 auxCtx!45))))))

(declare-fun lt!2560231 () List!68905)

(declare-fun b!7112426 () Bool)

(declare-fun e!4274246 () Bool)

(assert (=> b!7112426 (= e!4274246 (or (not (= (exprs!7438 auxCtx!45) Nil!68781)) (= lt!2560231 (exprs!7438 c!9994))))))

(declare-fun b!7112423 () Bool)

(assert (=> b!7112423 (= e!4274245 (exprs!7438 auxCtx!45))))

(declare-fun b!7112425 () Bool)

(declare-fun res!2902375 () Bool)

(assert (=> b!7112425 (=> (not res!2902375) (not e!4274246))))

(declare-fun size!41401 (List!68905) Int)

(assert (=> b!7112425 (= res!2902375 (= (size!41401 lt!2560231) (+ (size!41401 (exprs!7438 c!9994)) (size!41401 (exprs!7438 auxCtx!45)))))))

(declare-fun d!2220500 () Bool)

(assert (=> d!2220500 e!4274246))

(declare-fun res!2902376 () Bool)

(assert (=> d!2220500 (=> (not res!2902376) (not e!4274246))))

(declare-fun content!14026 (List!68905) (Set Regex!17944))

(assert (=> d!2220500 (= res!2902376 (= (content!14026 lt!2560231) (set.union (content!14026 (exprs!7438 c!9994)) (content!14026 (exprs!7438 auxCtx!45)))))))

(assert (=> d!2220500 (= lt!2560231 e!4274245)))

(declare-fun c!1327371 () Bool)

(assert (=> d!2220500 (= c!1327371 (is-Nil!68781 (exprs!7438 c!9994)))))

(assert (=> d!2220500 (= (++!16096 (exprs!7438 c!9994) (exprs!7438 auxCtx!45)) lt!2560231)))

(assert (= (and d!2220500 c!1327371) b!7112423))

(assert (= (and d!2220500 (not c!1327371)) b!7112424))

(assert (= (and d!2220500 res!2902376) b!7112425))

(assert (= (and b!7112425 res!2902375) b!7112426))

(declare-fun m!7833154 () Bool)

(assert (=> b!7112424 m!7833154))

(declare-fun m!7833156 () Bool)

(assert (=> b!7112425 m!7833156))

(declare-fun m!7833158 () Bool)

(assert (=> b!7112425 m!7833158))

(declare-fun m!7833160 () Bool)

(assert (=> b!7112425 m!7833160))

(declare-fun m!7833162 () Bool)

(assert (=> d!2220500 m!7833162))

(declare-fun m!7833164 () Bool)

(assert (=> d!2220500 m!7833164))

(declare-fun m!7833166 () Bool)

(assert (=> d!2220500 m!7833166))

(assert (=> b!7112333 d!2220500))

(declare-fun d!2220504 () Bool)

(assert (=> d!2220504 (forall!16841 (++!16096 (exprs!7438 c!9994) (exprs!7438 auxCtx!45)) lambda!432144)))

(declare-fun lt!2560234 () Unit!162559)

(declare-fun choose!54870 (List!68905 List!68905 Int) Unit!162559)

(assert (=> d!2220504 (= lt!2560234 (choose!54870 (exprs!7438 c!9994) (exprs!7438 auxCtx!45) lambda!432144))))

(assert (=> d!2220504 (forall!16841 (exprs!7438 c!9994) lambda!432144)))

(assert (=> d!2220504 (= (lemmaConcatPreservesForall!1229 (exprs!7438 c!9994) (exprs!7438 auxCtx!45) lambda!432144) lt!2560234)))

(declare-fun bs!1885315 () Bool)

(assert (= bs!1885315 d!2220504))

(assert (=> bs!1885315 m!7833102))

(assert (=> bs!1885315 m!7833102))

(declare-fun m!7833170 () Bool)

(assert (=> bs!1885315 m!7833170))

(declare-fun m!7833172 () Bool)

(assert (=> bs!1885315 m!7833172))

(declare-fun m!7833174 () Bool)

(assert (=> bs!1885315 m!7833174))

(assert (=> b!7112333 d!2220504))

(declare-fun bs!1885316 () Bool)

(declare-fun d!2220508 () Bool)

(assert (= bs!1885316 (and d!2220508 b!7112333)))

(declare-fun lambda!432157 () Int)

(assert (=> bs!1885316 (= lambda!432157 lambda!432144)))

(declare-fun bs!1885317 () Bool)

(assert (= bs!1885317 (and d!2220508 d!2220492)))

(assert (=> bs!1885317 (= lambda!432157 lambda!432152)))

(declare-fun bs!1885318 () Bool)

(assert (= bs!1885318 (and d!2220508 d!2220494)))

(assert (=> bs!1885318 (= lambda!432157 lambda!432153)))

(assert (=> d!2220508 (= (inv!87724 (Context!13877 ($colon$colon!2796 lt!2560217 (regTwo!36400 r!11554)))) (forall!16841 (exprs!7438 (Context!13877 ($colon$colon!2796 lt!2560217 (regTwo!36400 r!11554)))) lambda!432157))))

(declare-fun bs!1885319 () Bool)

(assert (= bs!1885319 d!2220508))

(declare-fun m!7833176 () Bool)

(assert (=> bs!1885319 m!7833176))

(assert (=> b!7112340 d!2220508))

(declare-fun d!2220510 () Bool)

(assert (=> d!2220510 (= ($colon$colon!2796 lt!2560217 (regTwo!36400 r!11554)) (Cons!68781 (regTwo!36400 r!11554) lt!2560217))))

(assert (=> b!7112340 d!2220510))

(declare-fun b!7112437 () Bool)

(declare-fun e!4274249 () Bool)

(assert (=> b!7112437 (= e!4274249 tp_is_empty!45121)))

(declare-fun b!7112440 () Bool)

(declare-fun tp!1956765 () Bool)

(declare-fun tp!1956766 () Bool)

(assert (=> b!7112440 (= e!4274249 (and tp!1956765 tp!1956766))))

(declare-fun b!7112439 () Bool)

(declare-fun tp!1956769 () Bool)

(assert (=> b!7112439 (= e!4274249 tp!1956769)))

(declare-fun b!7112438 () Bool)

(declare-fun tp!1956767 () Bool)

(declare-fun tp!1956768 () Bool)

(assert (=> b!7112438 (= e!4274249 (and tp!1956767 tp!1956768))))

(assert (=> b!7112337 (= tp!1956731 e!4274249)))

(assert (= (and b!7112337 (is-ElementMatch!17944 (regOne!36400 r!11554))) b!7112437))

(assert (= (and b!7112337 (is-Concat!26789 (regOne!36400 r!11554))) b!7112438))

(assert (= (and b!7112337 (is-Star!17944 (regOne!36400 r!11554))) b!7112439))

(assert (= (and b!7112337 (is-Union!17944 (regOne!36400 r!11554))) b!7112440))

(declare-fun b!7112441 () Bool)

(declare-fun e!4274250 () Bool)

(assert (=> b!7112441 (= e!4274250 tp_is_empty!45121)))

(declare-fun b!7112444 () Bool)

(declare-fun tp!1956770 () Bool)

(declare-fun tp!1956771 () Bool)

(assert (=> b!7112444 (= e!4274250 (and tp!1956770 tp!1956771))))

(declare-fun b!7112443 () Bool)

(declare-fun tp!1956774 () Bool)

(assert (=> b!7112443 (= e!4274250 tp!1956774)))

(declare-fun b!7112442 () Bool)

(declare-fun tp!1956772 () Bool)

(declare-fun tp!1956773 () Bool)

(assert (=> b!7112442 (= e!4274250 (and tp!1956772 tp!1956773))))

(assert (=> b!7112337 (= tp!1956730 e!4274250)))

(assert (= (and b!7112337 (is-ElementMatch!17944 (regTwo!36400 r!11554))) b!7112441))

(assert (= (and b!7112337 (is-Concat!26789 (regTwo!36400 r!11554))) b!7112442))

(assert (= (and b!7112337 (is-Star!17944 (regTwo!36400 r!11554))) b!7112443))

(assert (= (and b!7112337 (is-Union!17944 (regTwo!36400 r!11554))) b!7112444))

(declare-fun b!7112445 () Bool)

(declare-fun e!4274251 () Bool)

(assert (=> b!7112445 (= e!4274251 tp_is_empty!45121)))

(declare-fun b!7112448 () Bool)

(declare-fun tp!1956775 () Bool)

(declare-fun tp!1956776 () Bool)

(assert (=> b!7112448 (= e!4274251 (and tp!1956775 tp!1956776))))

(declare-fun b!7112447 () Bool)

(declare-fun tp!1956779 () Bool)

(assert (=> b!7112447 (= e!4274251 tp!1956779)))

(declare-fun b!7112446 () Bool)

(declare-fun tp!1956777 () Bool)

(declare-fun tp!1956778 () Bool)

(assert (=> b!7112446 (= e!4274251 (and tp!1956777 tp!1956778))))

(assert (=> b!7112339 (= tp!1956727 e!4274251)))

(assert (= (and b!7112339 (is-ElementMatch!17944 (regOne!36401 r!11554))) b!7112445))

(assert (= (and b!7112339 (is-Concat!26789 (regOne!36401 r!11554))) b!7112446))

(assert (= (and b!7112339 (is-Star!17944 (regOne!36401 r!11554))) b!7112447))

(assert (= (and b!7112339 (is-Union!17944 (regOne!36401 r!11554))) b!7112448))

(declare-fun b!7112449 () Bool)

(declare-fun e!4274252 () Bool)

(assert (=> b!7112449 (= e!4274252 tp_is_empty!45121)))

(declare-fun b!7112452 () Bool)

(declare-fun tp!1956780 () Bool)

(declare-fun tp!1956781 () Bool)

(assert (=> b!7112452 (= e!4274252 (and tp!1956780 tp!1956781))))

(declare-fun b!7112451 () Bool)

(declare-fun tp!1956784 () Bool)

(assert (=> b!7112451 (= e!4274252 tp!1956784)))

(declare-fun b!7112450 () Bool)

(declare-fun tp!1956782 () Bool)

(declare-fun tp!1956783 () Bool)

(assert (=> b!7112450 (= e!4274252 (and tp!1956782 tp!1956783))))

(assert (=> b!7112339 (= tp!1956732 e!4274252)))

(assert (= (and b!7112339 (is-ElementMatch!17944 (regTwo!36401 r!11554))) b!7112449))

(assert (= (and b!7112339 (is-Concat!26789 (regTwo!36401 r!11554))) b!7112450))

(assert (= (and b!7112339 (is-Star!17944 (regTwo!36401 r!11554))) b!7112451))

(assert (= (and b!7112339 (is-Union!17944 (regTwo!36401 r!11554))) b!7112452))

(declare-fun b!7112453 () Bool)

(declare-fun e!4274253 () Bool)

(assert (=> b!7112453 (= e!4274253 tp_is_empty!45121)))

(declare-fun b!7112456 () Bool)

(declare-fun tp!1956785 () Bool)

(declare-fun tp!1956786 () Bool)

(assert (=> b!7112456 (= e!4274253 (and tp!1956785 tp!1956786))))

(declare-fun b!7112455 () Bool)

(declare-fun tp!1956789 () Bool)

(assert (=> b!7112455 (= e!4274253 tp!1956789)))

(declare-fun b!7112454 () Bool)

(declare-fun tp!1956787 () Bool)

(declare-fun tp!1956788 () Bool)

(assert (=> b!7112454 (= e!4274253 (and tp!1956787 tp!1956788))))

(assert (=> b!7112335 (= tp!1956728 e!4274253)))

(assert (= (and b!7112335 (is-ElementMatch!17944 (reg!18273 r!11554))) b!7112453))

(assert (= (and b!7112335 (is-Concat!26789 (reg!18273 r!11554))) b!7112454))

(assert (= (and b!7112335 (is-Star!17944 (reg!18273 r!11554))) b!7112455))

(assert (= (and b!7112335 (is-Union!17944 (reg!18273 r!11554))) b!7112456))

(declare-fun b!7112461 () Bool)

(declare-fun e!4274256 () Bool)

(declare-fun tp!1956794 () Bool)

(declare-fun tp!1956795 () Bool)

(assert (=> b!7112461 (= e!4274256 (and tp!1956794 tp!1956795))))

(assert (=> b!7112341 (= tp!1956729 e!4274256)))

(assert (= (and b!7112341 (is-Cons!68781 (exprs!7438 c!9994))) b!7112461))

(declare-fun b!7112462 () Bool)

(declare-fun e!4274257 () Bool)

(declare-fun tp!1956796 () Bool)

(declare-fun tp!1956797 () Bool)

(assert (=> b!7112462 (= e!4274257 (and tp!1956796 tp!1956797))))

(assert (=> b!7112342 (= tp!1956733 e!4274257)))

(assert (= (and b!7112342 (is-Cons!68781 (exprs!7438 auxCtx!45))) b!7112462))

(push 1)

(assert (not b!7112425))

(assert (not b!7112442))

(assert (not b!7112448))

(assert (not bm!649135))

(assert (not b!7112451))

(assert (not b!7112462))

(assert tp_is_empty!45121)

(assert (not b!7112452))

(assert (not b!7112447))

(assert (not b!7112399))

(assert (not d!2220494))

(assert (not d!2220500))

(assert (not d!2220496))

(assert (not b!7112443))

(assert (not b!7112446))

(assert (not b!7112440))

(assert (not d!2220492))

(assert (not bm!649136))

(assert (not d!2220508))

(assert (not b!7112424))

(assert (not b!7112444))

(assert (not bm!649133))

(assert (not b!7112454))

(assert (not b!7112408))

(assert (not b!7112439))

(assert (not b!7112455))

(assert (not d!2220504))

(assert (not b!7112450))

(assert (not b!7112456))

(assert (not b!7112438))

(assert (not b!7112461))

(assert (not bm!649132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2220526 () Bool)

(declare-fun res!2902407 () Bool)

(declare-fun e!4274307 () Bool)

(assert (=> d!2220526 (=> res!2902407 e!4274307)))

(assert (=> d!2220526 (= res!2902407 (is-Nil!68781 (exprs!7438 auxCtx!45)))))

(assert (=> d!2220526 (= (forall!16841 (exprs!7438 auxCtx!45) lambda!432153) e!4274307)))

(declare-fun b!7112551 () Bool)

(declare-fun e!4274308 () Bool)

(assert (=> b!7112551 (= e!4274307 e!4274308)))

(declare-fun res!2902408 () Bool)

(assert (=> b!7112551 (=> (not res!2902408) (not e!4274308))))

(declare-fun dynLambda!28056 (Int Regex!17944) Bool)

(assert (=> b!7112551 (= res!2902408 (dynLambda!28056 lambda!432153 (h!75229 (exprs!7438 auxCtx!45))))))

(declare-fun b!7112552 () Bool)

(assert (=> b!7112552 (= e!4274308 (forall!16841 (t!382740 (exprs!7438 auxCtx!45)) lambda!432153))))

(assert (= (and d!2220526 (not res!2902407)) b!7112551))

(assert (= (and b!7112551 res!2902408) b!7112552))

(declare-fun b_lambda!271417 () Bool)

(assert (=> (not b_lambda!271417) (not b!7112551)))

(declare-fun m!7833216 () Bool)

(assert (=> b!7112551 m!7833216))

(declare-fun m!7833218 () Bool)

(assert (=> b!7112552 m!7833218))

(assert (=> d!2220494 d!2220526))

(declare-fun b!7112554 () Bool)

(declare-fun e!4274309 () List!68905)

(assert (=> b!7112554 (= e!4274309 (Cons!68781 (h!75229 (t!382740 (exprs!7438 c!9994))) (++!16096 (t!382740 (t!382740 (exprs!7438 c!9994))) (exprs!7438 auxCtx!45))))))

(declare-fun b!7112556 () Bool)

(declare-fun lt!2560241 () List!68905)

(declare-fun e!4274310 () Bool)

(assert (=> b!7112556 (= e!4274310 (or (not (= (exprs!7438 auxCtx!45) Nil!68781)) (= lt!2560241 (t!382740 (exprs!7438 c!9994)))))))

(declare-fun b!7112553 () Bool)

(assert (=> b!7112553 (= e!4274309 (exprs!7438 auxCtx!45))))

(declare-fun b!7112555 () Bool)

(declare-fun res!2902409 () Bool)

(assert (=> b!7112555 (=> (not res!2902409) (not e!4274310))))

(assert (=> b!7112555 (= res!2902409 (= (size!41401 lt!2560241) (+ (size!41401 (t!382740 (exprs!7438 c!9994))) (size!41401 (exprs!7438 auxCtx!45)))))))

(declare-fun d!2220528 () Bool)

(assert (=> d!2220528 e!4274310))

(declare-fun res!2902410 () Bool)

(assert (=> d!2220528 (=> (not res!2902410) (not e!4274310))))

(assert (=> d!2220528 (= res!2902410 (= (content!14026 lt!2560241) (set.union (content!14026 (t!382740 (exprs!7438 c!9994))) (content!14026 (exprs!7438 auxCtx!45)))))))

(assert (=> d!2220528 (= lt!2560241 e!4274309)))

(declare-fun c!1327383 () Bool)

(assert (=> d!2220528 (= c!1327383 (is-Nil!68781 (t!382740 (exprs!7438 c!9994))))))

(assert (=> d!2220528 (= (++!16096 (t!382740 (exprs!7438 c!9994)) (exprs!7438 auxCtx!45)) lt!2560241)))

(assert (= (and d!2220528 c!1327383) b!7112553))

(assert (= (and d!2220528 (not c!1327383)) b!7112554))

(assert (= (and d!2220528 res!2902410) b!7112555))

(assert (= (and b!7112555 res!2902409) b!7112556))

(declare-fun m!7833220 () Bool)

(assert (=> b!7112554 m!7833220))

(declare-fun m!7833222 () Bool)

(assert (=> b!7112555 m!7833222))

(declare-fun m!7833224 () Bool)

(assert (=> b!7112555 m!7833224))

(assert (=> b!7112555 m!7833160))

(declare-fun m!7833226 () Bool)

(assert (=> d!2220528 m!7833226))

(declare-fun m!7833228 () Bool)

(assert (=> d!2220528 m!7833228))

(assert (=> d!2220528 m!7833166))

(assert (=> b!7112424 d!2220528))

(declare-fun d!2220530 () Bool)

(declare-fun lt!2560244 () Int)

(assert (=> d!2220530 (>= lt!2560244 0)))

(declare-fun e!4274313 () Int)

(assert (=> d!2220530 (= lt!2560244 e!4274313)))

(declare-fun c!1327386 () Bool)

(assert (=> d!2220530 (= c!1327386 (is-Nil!68781 lt!2560231))))

(assert (=> d!2220530 (= (size!41401 lt!2560231) lt!2560244)))

(declare-fun b!7112561 () Bool)

(assert (=> b!7112561 (= e!4274313 0)))

(declare-fun b!7112562 () Bool)

(assert (=> b!7112562 (= e!4274313 (+ 1 (size!41401 (t!382740 lt!2560231))))))

(assert (= (and d!2220530 c!1327386) b!7112561))

(assert (= (and d!2220530 (not c!1327386)) b!7112562))

(declare-fun m!7833230 () Bool)

(assert (=> b!7112562 m!7833230))

(assert (=> b!7112425 d!2220530))

(declare-fun d!2220532 () Bool)

(declare-fun lt!2560245 () Int)

(assert (=> d!2220532 (>= lt!2560245 0)))

(declare-fun e!4274314 () Int)

(assert (=> d!2220532 (= lt!2560245 e!4274314)))

(declare-fun c!1327387 () Bool)

(assert (=> d!2220532 (= c!1327387 (is-Nil!68781 (exprs!7438 c!9994)))))

(assert (=> d!2220532 (= (size!41401 (exprs!7438 c!9994)) lt!2560245)))

(declare-fun b!7112563 () Bool)

(assert (=> b!7112563 (= e!4274314 0)))

(declare-fun b!7112564 () Bool)

(assert (=> b!7112564 (= e!4274314 (+ 1 (size!41401 (t!382740 (exprs!7438 c!9994)))))))

(assert (= (and d!2220532 c!1327387) b!7112563))

(assert (= (and d!2220532 (not c!1327387)) b!7112564))

(assert (=> b!7112564 m!7833224))

(assert (=> b!7112425 d!2220532))

(declare-fun d!2220534 () Bool)

(declare-fun lt!2560246 () Int)

(assert (=> d!2220534 (>= lt!2560246 0)))

(declare-fun e!4274315 () Int)

(assert (=> d!2220534 (= lt!2560246 e!4274315)))

(declare-fun c!1327388 () Bool)

(assert (=> d!2220534 (= c!1327388 (is-Nil!68781 (exprs!7438 auxCtx!45)))))

(assert (=> d!2220534 (= (size!41401 (exprs!7438 auxCtx!45)) lt!2560246)))

(declare-fun b!7112565 () Bool)

(assert (=> b!7112565 (= e!4274315 0)))

(declare-fun b!7112566 () Bool)

(assert (=> b!7112566 (= e!4274315 (+ 1 (size!41401 (t!382740 (exprs!7438 auxCtx!45)))))))

(assert (= (and d!2220534 c!1327388) b!7112565))

(assert (= (and d!2220534 (not c!1327388)) b!7112566))

(declare-fun m!7833232 () Bool)

(assert (=> b!7112566 m!7833232))

(assert (=> b!7112425 d!2220534))

(declare-fun d!2220536 () Bool)

(declare-fun res!2902411 () Bool)

(declare-fun e!4274316 () Bool)

(assert (=> d!2220536 (=> res!2902411 e!4274316)))

(assert (=> d!2220536 (= res!2902411 (is-Nil!68781 (exprs!7438 (Context!13877 ($colon$colon!2796 lt!2560217 (regTwo!36400 r!11554))))))))

(assert (=> d!2220536 (= (forall!16841 (exprs!7438 (Context!13877 ($colon$colon!2796 lt!2560217 (regTwo!36400 r!11554)))) lambda!432157) e!4274316)))

(declare-fun b!7112567 () Bool)

(declare-fun e!4274317 () Bool)

(assert (=> b!7112567 (= e!4274316 e!4274317)))

(declare-fun res!2902412 () Bool)

(assert (=> b!7112567 (=> (not res!2902412) (not e!4274317))))

(assert (=> b!7112567 (= res!2902412 (dynLambda!28056 lambda!432157 (h!75229 (exprs!7438 (Context!13877 ($colon$colon!2796 lt!2560217 (regTwo!36400 r!11554)))))))))

(declare-fun b!7112568 () Bool)

(assert (=> b!7112568 (= e!4274317 (forall!16841 (t!382740 (exprs!7438 (Context!13877 ($colon$colon!2796 lt!2560217 (regTwo!36400 r!11554))))) lambda!432157))))

(assert (= (and d!2220536 (not res!2902411)) b!7112567))

(assert (= (and b!7112567 res!2902412) b!7112568))

(declare-fun b_lambda!271419 () Bool)

(assert (=> (not b_lambda!271419) (not b!7112567)))

(declare-fun m!7833234 () Bool)

(assert (=> b!7112567 m!7833234))

(declare-fun m!7833236 () Bool)

(assert (=> b!7112568 m!7833236))

(assert (=> d!2220508 d!2220536))

(declare-fun d!2220538 () Bool)

(assert (=> d!2220538 (= (nullable!7581 (reg!18273 r!11554)) (nullableFct!2933 (reg!18273 r!11554)))))

(declare-fun bs!1885329 () Bool)

(assert (= bs!1885329 d!2220538))

(declare-fun m!7833238 () Bool)

(assert (=> bs!1885329 m!7833238))

(assert (=> b!7112399 d!2220538))

(declare-fun d!2220540 () Bool)

(declare-fun res!2902417 () Bool)

(declare-fun e!4274322 () Bool)

(assert (=> d!2220540 (=> res!2902417 e!4274322)))

(assert (=> d!2220540 (= res!2902417 (is-ElementMatch!17944 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554)))))))

(assert (=> d!2220540 (= (validRegex!9217 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554)))) e!4274322)))

(declare-fun b!7112569 () Bool)

(declare-fun e!4274323 () Bool)

(declare-fun call!649154 () Bool)

(assert (=> b!7112569 (= e!4274323 call!649154)))

(declare-fun bm!649149 () Bool)

(declare-fun call!649156 () Bool)

(declare-fun call!649155 () Bool)

(assert (=> bm!649149 (= call!649156 call!649155)))

(declare-fun b!7112570 () Bool)

(declare-fun res!2902415 () Bool)

(declare-fun e!4274320 () Bool)

(assert (=> b!7112570 (=> (not res!2902415) (not e!4274320))))

(assert (=> b!7112570 (= res!2902415 call!649154)))

(declare-fun e!4274321 () Bool)

(assert (=> b!7112570 (= e!4274321 e!4274320)))

(declare-fun b!7112571 () Bool)

(declare-fun e!4274324 () Bool)

(declare-fun e!4274319 () Bool)

(assert (=> b!7112571 (= e!4274324 e!4274319)))

(declare-fun res!2902416 () Bool)

(assert (=> b!7112571 (= res!2902416 (not (nullable!7581 (reg!18273 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554)))))))))

(assert (=> b!7112571 (=> (not res!2902416) (not e!4274319))))

(declare-fun b!7112572 () Bool)

(declare-fun e!4274318 () Bool)

(assert (=> b!7112572 (= e!4274318 e!4274323)))

(declare-fun res!2902413 () Bool)

(assert (=> b!7112572 (=> (not res!2902413) (not e!4274323))))

(assert (=> b!7112572 (= res!2902413 call!649156)))

(declare-fun c!1327390 () Bool)

(declare-fun c!1327389 () Bool)

(declare-fun bm!649150 () Bool)

(assert (=> bm!649150 (= call!649155 (validRegex!9217 (ite c!1327389 (reg!18273 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554)))) (ite c!1327390 (regTwo!36401 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554)))) (regOne!36400 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554))))))))))

(declare-fun b!7112573 () Bool)

(assert (=> b!7112573 (= e!4274320 call!649156)))

(declare-fun b!7112574 () Bool)

(declare-fun res!2902414 () Bool)

(assert (=> b!7112574 (=> res!2902414 e!4274318)))

(assert (=> b!7112574 (= res!2902414 (not (is-Concat!26789 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554))))))))

(assert (=> b!7112574 (= e!4274321 e!4274318)))

(declare-fun b!7112575 () Bool)

(assert (=> b!7112575 (= e!4274319 call!649155)))

(declare-fun b!7112576 () Bool)

(assert (=> b!7112576 (= e!4274322 e!4274324)))

(assert (=> b!7112576 (= c!1327389 (is-Star!17944 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554)))))))

(declare-fun b!7112577 () Bool)

(assert (=> b!7112577 (= e!4274324 e!4274321)))

(assert (=> b!7112577 (= c!1327390 (is-Union!17944 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554)))))))

(declare-fun bm!649151 () Bool)

(assert (=> bm!649151 (= call!649154 (validRegex!9217 (ite c!1327390 (regOne!36401 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554)))) (regTwo!36400 (ite c!1327365 (reg!18273 r!11554) (ite c!1327366 (regTwo!36401 r!11554) (regOne!36400 r!11554)))))))))

(assert (= (and d!2220540 (not res!2902417)) b!7112576))

(assert (= (and b!7112576 c!1327389) b!7112571))

(assert (= (and b!7112576 (not c!1327389)) b!7112577))

(assert (= (and b!7112571 res!2902416) b!7112575))

(assert (= (and b!7112577 c!1327390) b!7112570))

(assert (= (and b!7112577 (not c!1327390)) b!7112574))

(assert (= (and b!7112570 res!2902415) b!7112573))

(assert (= (and b!7112574 (not res!2902414)) b!7112572))

(assert (= (and b!7112572 res!2902413) b!7112569))

(assert (= (or b!7112570 b!7112569) bm!649151))

(assert (= (or b!7112573 b!7112572) bm!649149))

(assert (= (or b!7112575 bm!649149) bm!649150))

(declare-fun m!7833240 () Bool)

(assert (=> b!7112571 m!7833240))

(declare-fun m!7833242 () Bool)

(assert (=> bm!649150 m!7833242))

(declare-fun m!7833244 () Bool)

(assert (=> bm!649151 m!7833244))

(assert (=> bm!649132 d!2220540))

(declare-fun d!2220542 () Bool)

(declare-fun c!1327393 () Bool)

(assert (=> d!2220542 (= c!1327393 (is-Nil!68781 lt!2560231))))

(declare-fun e!4274327 () (Set Regex!17944))

(assert (=> d!2220542 (= (content!14026 lt!2560231) e!4274327)))

(declare-fun b!7112582 () Bool)

(assert (=> b!7112582 (= e!4274327 (as set.empty (Set Regex!17944)))))

(declare-fun b!7112583 () Bool)

(assert (=> b!7112583 (= e!4274327 (set.union (set.insert (h!75229 lt!2560231) (as set.empty (Set Regex!17944))) (content!14026 (t!382740 lt!2560231))))))

(assert (= (and d!2220542 c!1327393) b!7112582))

(assert (= (and d!2220542 (not c!1327393)) b!7112583))

(declare-fun m!7833246 () Bool)

(assert (=> b!7112583 m!7833246))

(declare-fun m!7833248 () Bool)

(assert (=> b!7112583 m!7833248))

(assert (=> d!2220500 d!2220542))

(declare-fun d!2220544 () Bool)

(declare-fun c!1327394 () Bool)

(assert (=> d!2220544 (= c!1327394 (is-Nil!68781 (exprs!7438 c!9994)))))

(declare-fun e!4274328 () (Set Regex!17944))

(assert (=> d!2220544 (= (content!14026 (exprs!7438 c!9994)) e!4274328)))

(declare-fun b!7112584 () Bool)

(assert (=> b!7112584 (= e!4274328 (as set.empty (Set Regex!17944)))))

(declare-fun b!7112585 () Bool)

(assert (=> b!7112585 (= e!4274328 (set.union (set.insert (h!75229 (exprs!7438 c!9994)) (as set.empty (Set Regex!17944))) (content!14026 (t!382740 (exprs!7438 c!9994)))))))

(assert (= (and d!2220544 c!1327394) b!7112584))

(assert (= (and d!2220544 (not c!1327394)) b!7112585))

(declare-fun m!7833250 () Bool)

(assert (=> b!7112585 m!7833250))

(assert (=> b!7112585 m!7833228))

(assert (=> d!2220500 d!2220544))

(declare-fun d!2220546 () Bool)

(declare-fun c!1327395 () Bool)

(assert (=> d!2220546 (= c!1327395 (is-Nil!68781 (exprs!7438 auxCtx!45)))))

(declare-fun e!4274329 () (Set Regex!17944))

(assert (=> d!2220546 (= (content!14026 (exprs!7438 auxCtx!45)) e!4274329)))

(declare-fun b!7112586 () Bool)

(assert (=> b!7112586 (= e!4274329 (as set.empty (Set Regex!17944)))))

(declare-fun b!7112587 () Bool)

(assert (=> b!7112587 (= e!4274329 (set.union (set.insert (h!75229 (exprs!7438 auxCtx!45)) (as set.empty (Set Regex!17944))) (content!14026 (t!382740 (exprs!7438 auxCtx!45)))))))

(assert (= (and d!2220546 c!1327395) b!7112586))

(assert (= (and d!2220546 (not c!1327395)) b!7112587))

(declare-fun m!7833252 () Bool)

(assert (=> b!7112587 m!7833252))

(declare-fun m!7833254 () Bool)

(assert (=> b!7112587 m!7833254))

(assert (=> d!2220500 d!2220546))

(declare-fun d!2220548 () Bool)

(declare-fun res!2902422 () Bool)

(declare-fun e!4274334 () Bool)

(assert (=> d!2220548 (=> res!2902422 e!4274334)))

(assert (=> d!2220548 (= res!2902422 (is-ElementMatch!17944 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554)))))))

(assert (=> d!2220548 (= (validRegex!9217 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554)))) e!4274334)))

(declare-fun b!7112588 () Bool)

(declare-fun e!4274335 () Bool)

(declare-fun call!649157 () Bool)

(assert (=> b!7112588 (= e!4274335 call!649157)))

(declare-fun bm!649152 () Bool)

(declare-fun call!649159 () Bool)

(declare-fun call!649158 () Bool)

(assert (=> bm!649152 (= call!649159 call!649158)))

(declare-fun b!7112589 () Bool)

(declare-fun res!2902420 () Bool)

(declare-fun e!4274332 () Bool)

(assert (=> b!7112589 (=> (not res!2902420) (not e!4274332))))

(assert (=> b!7112589 (= res!2902420 call!649157)))

(declare-fun e!4274333 () Bool)

(assert (=> b!7112589 (= e!4274333 e!4274332)))

(declare-fun b!7112590 () Bool)

(declare-fun e!4274336 () Bool)

(declare-fun e!4274331 () Bool)

(assert (=> b!7112590 (= e!4274336 e!4274331)))

(declare-fun res!2902421 () Bool)

(assert (=> b!7112590 (= res!2902421 (not (nullable!7581 (reg!18273 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554)))))))))

(assert (=> b!7112590 (=> (not res!2902421) (not e!4274331))))

(declare-fun b!7112591 () Bool)

(declare-fun e!4274330 () Bool)

(assert (=> b!7112591 (= e!4274330 e!4274335)))

(declare-fun res!2902418 () Bool)

(assert (=> b!7112591 (=> (not res!2902418) (not e!4274335))))

(assert (=> b!7112591 (= res!2902418 call!649159)))

(declare-fun bm!649153 () Bool)

(declare-fun c!1327396 () Bool)

(declare-fun c!1327397 () Bool)

(assert (=> bm!649153 (= call!649158 (validRegex!9217 (ite c!1327396 (reg!18273 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554)))) (ite c!1327397 (regTwo!36401 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554)))) (regOne!36400 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554))))))))))

(declare-fun b!7112592 () Bool)

(assert (=> b!7112592 (= e!4274332 call!649159)))

(declare-fun b!7112593 () Bool)

(declare-fun res!2902419 () Bool)

(assert (=> b!7112593 (=> res!2902419 e!4274330)))

(assert (=> b!7112593 (= res!2902419 (not (is-Concat!26789 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554))))))))

(assert (=> b!7112593 (= e!4274333 e!4274330)))

(declare-fun b!7112594 () Bool)

(assert (=> b!7112594 (= e!4274331 call!649158)))

(declare-fun b!7112595 () Bool)

(assert (=> b!7112595 (= e!4274334 e!4274336)))

(assert (=> b!7112595 (= c!1327396 (is-Star!17944 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554)))))))

(declare-fun b!7112596 () Bool)

(assert (=> b!7112596 (= e!4274336 e!4274333)))

(assert (=> b!7112596 (= c!1327397 (is-Union!17944 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554)))))))

(declare-fun bm!649154 () Bool)

(assert (=> bm!649154 (= call!649157 (validRegex!9217 (ite c!1327397 (regOne!36401 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554)))) (regTwo!36400 (ite c!1327368 (regOne!36401 (regTwo!36400 r!11554)) (regTwo!36400 (regTwo!36400 r!11554)))))))))

(assert (= (and d!2220548 (not res!2902422)) b!7112595))

(assert (= (and b!7112595 c!1327396) b!7112590))

(assert (= (and b!7112595 (not c!1327396)) b!7112596))

(assert (= (and b!7112590 res!2902421) b!7112594))

(assert (= (and b!7112596 c!1327397) b!7112589))

(assert (= (and b!7112596 (not c!1327397)) b!7112593))

(assert (= (and b!7112589 res!2902420) b!7112592))

(assert (= (and b!7112593 (not res!2902419)) b!7112591))

(assert (= (and b!7112591 res!2902418) b!7112588))

(assert (= (or b!7112589 b!7112588) bm!649154))

(assert (= (or b!7112592 b!7112591) bm!649152))

(assert (= (or b!7112594 bm!649152) bm!649153))

(declare-fun m!7833256 () Bool)

(assert (=> b!7112590 m!7833256))

(declare-fun m!7833258 () Bool)

(assert (=> bm!649153 m!7833258))

(declare-fun m!7833260 () Bool)

(assert (=> bm!649154 m!7833260))

(assert (=> bm!649136 d!2220548))

(declare-fun d!2220550 () Bool)

(declare-fun res!2902423 () Bool)

(declare-fun e!4274337 () Bool)

(assert (=> d!2220550 (=> res!2902423 e!4274337)))

(assert (=> d!2220550 (= res!2902423 (is-Nil!68781 (exprs!7438 c!9994)))))

(assert (=> d!2220550 (= (forall!16841 (exprs!7438 c!9994) lambda!432152) e!4274337)))

(declare-fun b!7112597 () Bool)

(declare-fun e!4274338 () Bool)

(assert (=> b!7112597 (= e!4274337 e!4274338)))

(declare-fun res!2902424 () Bool)

(assert (=> b!7112597 (=> (not res!2902424) (not e!4274338))))

(assert (=> b!7112597 (= res!2902424 (dynLambda!28056 lambda!432152 (h!75229 (exprs!7438 c!9994))))))

(declare-fun b!7112598 () Bool)

(assert (=> b!7112598 (= e!4274338 (forall!16841 (t!382740 (exprs!7438 c!9994)) lambda!432152))))

(assert (= (and d!2220550 (not res!2902423)) b!7112597))

(assert (= (and b!7112597 res!2902424) b!7112598))

(declare-fun b_lambda!271421 () Bool)

(assert (=> (not b_lambda!271421) (not b!7112597)))

(declare-fun m!7833262 () Bool)

(assert (=> b!7112597 m!7833262))

(declare-fun m!7833264 () Bool)

(assert (=> b!7112598 m!7833264))

(assert (=> d!2220492 d!2220550))

(declare-fun d!2220552 () Bool)

(assert (=> d!2220552 (= (nullable!7581 (reg!18273 (regTwo!36400 r!11554))) (nullableFct!2933 (reg!18273 (regTwo!36400 r!11554))))))

(declare-fun bs!1885330 () Bool)

(assert (= bs!1885330 d!2220552))

(declare-fun m!7833266 () Bool)

(assert (=> bs!1885330 m!7833266))

(assert (=> b!7112408 d!2220552))

(declare-fun b!7112613 () Bool)

(declare-fun e!4274353 () Bool)

(declare-fun e!4274352 () Bool)

(assert (=> b!7112613 (= e!4274353 e!4274352)))

(declare-fun res!2902436 () Bool)

(assert (=> b!7112613 (=> (not res!2902436) (not e!4274352))))

(assert (=> b!7112613 (= res!2902436 (and (not (is-EmptyLang!17944 (regOne!36400 r!11554))) (not (is-ElementMatch!17944 (regOne!36400 r!11554)))))))

(declare-fun bm!649159 () Bool)

(declare-fun call!649164 () Bool)

(declare-fun c!1327400 () Bool)

(assert (=> bm!649159 (= call!649164 (nullable!7581 (ite c!1327400 (regOne!36401 (regOne!36400 r!11554)) (regTwo!36400 (regOne!36400 r!11554)))))))

(declare-fun b!7112614 () Bool)

(declare-fun e!4274351 () Bool)

(assert (=> b!7112614 (= e!4274352 e!4274351)))

(declare-fun res!2902439 () Bool)

(assert (=> b!7112614 (=> res!2902439 e!4274351)))

(assert (=> b!7112614 (= res!2902439 (is-Star!17944 (regOne!36400 r!11554)))))

(declare-fun bm!649160 () Bool)

(declare-fun call!649165 () Bool)

(assert (=> bm!649160 (= call!649165 (nullable!7581 (ite c!1327400 (regTwo!36401 (regOne!36400 r!11554)) (regOne!36400 (regOne!36400 r!11554)))))))

(declare-fun b!7112615 () Bool)

(declare-fun e!4274354 () Bool)

(assert (=> b!7112615 (= e!4274351 e!4274354)))

(assert (=> b!7112615 (= c!1327400 (is-Union!17944 (regOne!36400 r!11554)))))

(declare-fun d!2220554 () Bool)

(declare-fun res!2902438 () Bool)

(assert (=> d!2220554 (=> res!2902438 e!4274353)))

(assert (=> d!2220554 (= res!2902438 (is-EmptyExpr!17944 (regOne!36400 r!11554)))))

(assert (=> d!2220554 (= (nullableFct!2933 (regOne!36400 r!11554)) e!4274353)))

(declare-fun b!7112616 () Bool)

(declare-fun e!4274355 () Bool)

(assert (=> b!7112616 (= e!4274354 e!4274355)))

(declare-fun res!2902435 () Bool)

(assert (=> b!7112616 (= res!2902435 call!649164)))

(assert (=> b!7112616 (=> res!2902435 e!4274355)))

(declare-fun b!7112617 () Bool)

(assert (=> b!7112617 (= e!4274355 call!649165)))

(declare-fun b!7112618 () Bool)

(declare-fun e!4274356 () Bool)

(assert (=> b!7112618 (= e!4274356 call!649164)))

(declare-fun b!7112619 () Bool)

(assert (=> b!7112619 (= e!4274354 e!4274356)))

(declare-fun res!2902437 () Bool)

(assert (=> b!7112619 (= res!2902437 call!649165)))

(assert (=> b!7112619 (=> (not res!2902437) (not e!4274356))))

(assert (= (and d!2220554 (not res!2902438)) b!7112613))

(assert (= (and b!7112613 res!2902436) b!7112614))

(assert (= (and b!7112614 (not res!2902439)) b!7112615))

(assert (= (and b!7112615 c!1327400) b!7112616))

(assert (= (and b!7112615 (not c!1327400)) b!7112619))

(assert (= (and b!7112616 (not res!2902435)) b!7112617))

(assert (= (and b!7112619 res!2902437) b!7112618))

(assert (= (or b!7112616 b!7112618) bm!649159))

(assert (= (or b!7112617 b!7112619) bm!649160))

(declare-fun m!7833268 () Bool)

(assert (=> bm!649159 m!7833268))

(declare-fun m!7833270 () Bool)

(assert (=> bm!649160 m!7833270))

(assert (=> d!2220496 d!2220554))

(declare-fun d!2220556 () Bool)

(declare-fun res!2902444 () Bool)

(declare-fun e!4274361 () Bool)

(assert (=> d!2220556 (=> res!2902444 e!4274361)))

(assert (=> d!2220556 (= res!2902444 (is-ElementMatch!17944 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554))))))))

(assert (=> d!2220556 (= (validRegex!9217 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554))))) e!4274361)))

(declare-fun b!7112620 () Bool)

(declare-fun e!4274362 () Bool)

(declare-fun call!649166 () Bool)

(assert (=> b!7112620 (= e!4274362 call!649166)))

(declare-fun bm!649161 () Bool)

(declare-fun call!649168 () Bool)

(declare-fun call!649167 () Bool)

(assert (=> bm!649161 (= call!649168 call!649167)))

(declare-fun b!7112621 () Bool)

(declare-fun res!2902442 () Bool)

(declare-fun e!4274359 () Bool)

(assert (=> b!7112621 (=> (not res!2902442) (not e!4274359))))

(assert (=> b!7112621 (= res!2902442 call!649166)))

(declare-fun e!4274360 () Bool)

(assert (=> b!7112621 (= e!4274360 e!4274359)))

(declare-fun b!7112622 () Bool)

(declare-fun e!4274363 () Bool)

(declare-fun e!4274358 () Bool)

(assert (=> b!7112622 (= e!4274363 e!4274358)))

(declare-fun res!2902443 () Bool)

(assert (=> b!7112622 (= res!2902443 (not (nullable!7581 (reg!18273 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554))))))))))

(assert (=> b!7112622 (=> (not res!2902443) (not e!4274358))))

(declare-fun b!7112623 () Bool)

(declare-fun e!4274357 () Bool)

(assert (=> b!7112623 (= e!4274357 e!4274362)))

(declare-fun res!2902440 () Bool)

(assert (=> b!7112623 (=> (not res!2902440) (not e!4274362))))

(assert (=> b!7112623 (= res!2902440 call!649168)))

(declare-fun c!1327401 () Bool)

(declare-fun bm!649162 () Bool)

(declare-fun c!1327402 () Bool)

(assert (=> bm!649162 (= call!649167 (validRegex!9217 (ite c!1327401 (reg!18273 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554))))) (ite c!1327402 (regTwo!36401 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554))))) (regOne!36400 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554)))))))))))

(declare-fun b!7112624 () Bool)

(assert (=> b!7112624 (= e!4274359 call!649168)))

(declare-fun b!7112625 () Bool)

(declare-fun res!2902441 () Bool)

(assert (=> b!7112625 (=> res!2902441 e!4274357)))

(assert (=> b!7112625 (= res!2902441 (not (is-Concat!26789 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554)))))))))

(assert (=> b!7112625 (= e!4274360 e!4274357)))

(declare-fun b!7112626 () Bool)

(assert (=> b!7112626 (= e!4274358 call!649167)))

(declare-fun b!7112627 () Bool)

(assert (=> b!7112627 (= e!4274361 e!4274363)))

(assert (=> b!7112627 (= c!1327401 (is-Star!17944 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554))))))))

(declare-fun b!7112628 () Bool)

(assert (=> b!7112628 (= e!4274363 e!4274360)))

(assert (=> b!7112628 (= c!1327402 (is-Union!17944 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554))))))))

(declare-fun bm!649163 () Bool)

(assert (=> bm!649163 (= call!649166 (validRegex!9217 (ite c!1327402 (regOne!36401 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554))))) (regTwo!36400 (ite c!1327367 (reg!18273 (regTwo!36400 r!11554)) (ite c!1327368 (regTwo!36401 (regTwo!36400 r!11554)) (regOne!36400 (regTwo!36400 r!11554))))))))))

(assert (= (and d!2220556 (not res!2902444)) b!7112627))

(assert (= (and b!7112627 c!1327401) b!7112622))

(assert (= (and b!7112627 (not c!1327401)) b!7112628))

(assert (= (and b!7112622 res!2902443) b!7112626))

(assert (= (and b!7112628 c!1327402) b!7112621))

(assert (= (and b!7112628 (not c!1327402)) b!7112625))

(assert (= (and b!7112621 res!2902442) b!7112624))

(assert (= (and b!7112625 (not res!2902441)) b!7112623))

(assert (= (and b!7112623 res!2902440) b!7112620))

(assert (= (or b!7112621 b!7112620) bm!649163))

(assert (= (or b!7112624 b!7112623) bm!649161))

(assert (= (or b!7112626 bm!649161) bm!649162))

(declare-fun m!7833272 () Bool)

(assert (=> b!7112622 m!7833272))

(declare-fun m!7833274 () Bool)

(assert (=> bm!649162 m!7833274))

(declare-fun m!7833276 () Bool)

(assert (=> bm!649163 m!7833276))

(assert (=> bm!649135 d!2220556))

(declare-fun d!2220558 () Bool)

(declare-fun res!2902445 () Bool)

(declare-fun e!4274364 () Bool)

(assert (=> d!2220558 (=> res!2902445 e!4274364)))

(assert (=> d!2220558 (= res!2902445 (is-Nil!68781 (++!16096 (exprs!7438 c!9994) (exprs!7438 auxCtx!45))))))

(assert (=> d!2220558 (= (forall!16841 (++!16096 (exprs!7438 c!9994) (exprs!7438 auxCtx!45)) lambda!432144) e!4274364)))

(declare-fun b!7112629 () Bool)

(declare-fun e!4274365 () Bool)

(assert (=> b!7112629 (= e!4274364 e!4274365)))

(declare-fun res!2902446 () Bool)

(assert (=> b!7112629 (=> (not res!2902446) (not e!4274365))))

(assert (=> b!7112629 (= res!2902446 (dynLambda!28056 lambda!432144 (h!75229 (++!16096 (exprs!7438 c!9994) (exprs!7438 auxCtx!45)))))))

(declare-fun b!7112630 () Bool)

(assert (=> b!7112630 (= e!4274365 (forall!16841 (t!382740 (++!16096 (exprs!7438 c!9994) (exprs!7438 auxCtx!45))) lambda!432144))))

(assert (= (and d!2220558 (not res!2902445)) b!7112629))

(assert (= (and b!7112629 res!2902446) b!7112630))

(declare-fun b_lambda!271423 () Bool)

(assert (=> (not b_lambda!271423) (not b!7112629)))

(declare-fun m!7833278 () Bool)

(assert (=> b!7112629 m!7833278))

(declare-fun m!7833280 () Bool)

(assert (=> b!7112630 m!7833280))

(assert (=> d!2220504 d!2220558))

(assert (=> d!2220504 d!2220500))

(declare-fun d!2220560 () Bool)

(assert (=> d!2220560 (forall!16841 (++!16096 (exprs!7438 c!9994) (exprs!7438 auxCtx!45)) lambda!432144)))

(assert (=> d!2220560 true))

(declare-fun _$78!695 () Unit!162559)

(assert (=> d!2220560 (= (choose!54870 (exprs!7438 c!9994) (exprs!7438 auxCtx!45) lambda!432144) _$78!695)))

(declare-fun bs!1885331 () Bool)

(assert (= bs!1885331 d!2220560))

(assert (=> bs!1885331 m!7833102))

(assert (=> bs!1885331 m!7833102))

(assert (=> bs!1885331 m!7833170))

(assert (=> d!2220504 d!2220560))

(declare-fun d!2220562 () Bool)

(declare-fun res!2902447 () Bool)

(declare-fun e!4274366 () Bool)

(assert (=> d!2220562 (=> res!2902447 e!4274366)))

(assert (=> d!2220562 (= res!2902447 (is-Nil!68781 (exprs!7438 c!9994)))))

(assert (=> d!2220562 (= (forall!16841 (exprs!7438 c!9994) lambda!432144) e!4274366)))

(declare-fun b!7112631 () Bool)

(declare-fun e!4274367 () Bool)

(assert (=> b!7112631 (= e!4274366 e!4274367)))

(declare-fun res!2902448 () Bool)

(assert (=> b!7112631 (=> (not res!2902448) (not e!4274367))))

(assert (=> b!7112631 (= res!2902448 (dynLambda!28056 lambda!432144 (h!75229 (exprs!7438 c!9994))))))

(declare-fun b!7112632 () Bool)

(assert (=> b!7112632 (= e!4274367 (forall!16841 (t!382740 (exprs!7438 c!9994)) lambda!432144))))

(assert (= (and d!2220562 (not res!2902447)) b!7112631))

(assert (= (and b!7112631 res!2902448) b!7112632))

(declare-fun b_lambda!271425 () Bool)

(assert (=> (not b_lambda!271425) (not b!7112631)))

(declare-fun m!7833282 () Bool)

(assert (=> b!7112631 m!7833282))

(declare-fun m!7833284 () Bool)

(assert (=> b!7112632 m!7833284))

(assert (=> d!2220504 d!2220562))

(declare-fun d!2220564 () Bool)

(declare-fun res!2902453 () Bool)

(declare-fun e!4274372 () Bool)

(assert (=> d!2220564 (=> res!2902453 e!4274372)))

(assert (=> d!2220564 (= res!2902453 (is-ElementMatch!17944 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554))))))

(assert (=> d!2220564 (= (validRegex!9217 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554))) e!4274372)))

(declare-fun b!7112633 () Bool)

(declare-fun e!4274373 () Bool)

(declare-fun call!649169 () Bool)

(assert (=> b!7112633 (= e!4274373 call!649169)))

(declare-fun bm!649164 () Bool)

(declare-fun call!649171 () Bool)

(declare-fun call!649170 () Bool)

(assert (=> bm!649164 (= call!649171 call!649170)))

(declare-fun b!7112634 () Bool)

(declare-fun res!2902451 () Bool)

(declare-fun e!4274370 () Bool)

(assert (=> b!7112634 (=> (not res!2902451) (not e!4274370))))

(assert (=> b!7112634 (= res!2902451 call!649169)))

(declare-fun e!4274371 () Bool)

(assert (=> b!7112634 (= e!4274371 e!4274370)))

(declare-fun b!7112635 () Bool)

(declare-fun e!4274374 () Bool)

(declare-fun e!4274369 () Bool)

(assert (=> b!7112635 (= e!4274374 e!4274369)))

(declare-fun res!2902452 () Bool)

(assert (=> b!7112635 (= res!2902452 (not (nullable!7581 (reg!18273 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554))))))))

(assert (=> b!7112635 (=> (not res!2902452) (not e!4274369))))

(declare-fun b!7112636 () Bool)

(declare-fun e!4274368 () Bool)

(assert (=> b!7112636 (= e!4274368 e!4274373)))

(declare-fun res!2902449 () Bool)

(assert (=> b!7112636 (=> (not res!2902449) (not e!4274373))))

(assert (=> b!7112636 (= res!2902449 call!649171)))

(declare-fun c!1327403 () Bool)

(declare-fun c!1327404 () Bool)

(declare-fun bm!649165 () Bool)

(assert (=> bm!649165 (= call!649170 (validRegex!9217 (ite c!1327403 (reg!18273 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554))) (ite c!1327404 (regTwo!36401 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554))) (regOne!36400 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554)))))))))

(declare-fun b!7112637 () Bool)

(assert (=> b!7112637 (= e!4274370 call!649171)))

(declare-fun b!7112638 () Bool)

(declare-fun res!2902450 () Bool)

(assert (=> b!7112638 (=> res!2902450 e!4274368)))

(assert (=> b!7112638 (= res!2902450 (not (is-Concat!26789 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554)))))))

(assert (=> b!7112638 (= e!4274371 e!4274368)))

(declare-fun b!7112639 () Bool)

(assert (=> b!7112639 (= e!4274369 call!649170)))

(declare-fun b!7112640 () Bool)

(assert (=> b!7112640 (= e!4274372 e!4274374)))

(assert (=> b!7112640 (= c!1327403 (is-Star!17944 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554))))))

(declare-fun b!7112641 () Bool)

(assert (=> b!7112641 (= e!4274374 e!4274371)))

(assert (=> b!7112641 (= c!1327404 (is-Union!17944 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554))))))

(declare-fun bm!649166 () Bool)

(assert (=> bm!649166 (= call!649169 (validRegex!9217 (ite c!1327404 (regOne!36401 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554))) (regTwo!36400 (ite c!1327366 (regOne!36401 r!11554) (regTwo!36400 r!11554))))))))

(assert (= (and d!2220564 (not res!2902453)) b!7112640))

(assert (= (and b!7112640 c!1327403) b!7112635))

(assert (= (and b!7112640 (not c!1327403)) b!7112641))

(assert (= (and b!7112635 res!2902452) b!7112639))

(assert (= (and b!7112641 c!1327404) b!7112634))

(assert (= (and b!7112641 (not c!1327404)) b!7112638))

(assert (= (and b!7112634 res!2902451) b!7112637))

(assert (= (and b!7112638 (not res!2902450)) b!7112636))

(assert (= (and b!7112636 res!2902449) b!7112633))

(assert (= (or b!7112634 b!7112633) bm!649166))

(assert (= (or b!7112637 b!7112636) bm!649164))

(assert (= (or b!7112639 bm!649164) bm!649165))

(declare-fun m!7833286 () Bool)

(assert (=> b!7112635 m!7833286))

(declare-fun m!7833288 () Bool)

(assert (=> bm!649165 m!7833288))

(declare-fun m!7833290 () Bool)

(assert (=> bm!649166 m!7833290))

(assert (=> bm!649133 d!2220564))

(declare-fun b!7112642 () Bool)

(declare-fun e!4274375 () Bool)

(assert (=> b!7112642 (= e!4274375 tp_is_empty!45121)))

(declare-fun b!7112645 () Bool)

(declare-fun tp!1956841 () Bool)

(declare-fun tp!1956842 () Bool)

(assert (=> b!7112645 (= e!4274375 (and tp!1956841 tp!1956842))))

(declare-fun b!7112644 () Bool)

(declare-fun tp!1956845 () Bool)

(assert (=> b!7112644 (= e!4274375 tp!1956845)))

(declare-fun b!7112643 () Bool)

(declare-fun tp!1956843 () Bool)

(declare-fun tp!1956844 () Bool)

(assert (=> b!7112643 (= e!4274375 (and tp!1956843 tp!1956844))))

(assert (=> b!7112444 (= tp!1956770 e!4274375)))

(assert (= (and b!7112444 (is-ElementMatch!17944 (regOne!36401 (regTwo!36400 r!11554)))) b!7112642))

(assert (= (and b!7112444 (is-Concat!26789 (regOne!36401 (regTwo!36400 r!11554)))) b!7112643))

(assert (= (and b!7112444 (is-Star!17944 (regOne!36401 (regTwo!36400 r!11554)))) b!7112644))

(assert (= (and b!7112444 (is-Union!17944 (regOne!36401 (regTwo!36400 r!11554)))) b!7112645))

(declare-fun b!7112646 () Bool)

(declare-fun e!4274376 () Bool)

(assert (=> b!7112646 (= e!4274376 tp_is_empty!45121)))

(declare-fun b!7112649 () Bool)

(declare-fun tp!1956846 () Bool)

(declare-fun tp!1956847 () Bool)

(assert (=> b!7112649 (= e!4274376 (and tp!1956846 tp!1956847))))

(declare-fun b!7112648 () Bool)

(declare-fun tp!1956850 () Bool)

(assert (=> b!7112648 (= e!4274376 tp!1956850)))

(declare-fun b!7112647 () Bool)

(declare-fun tp!1956848 () Bool)

(declare-fun tp!1956849 () Bool)

(assert (=> b!7112647 (= e!4274376 (and tp!1956848 tp!1956849))))

(assert (=> b!7112444 (= tp!1956771 e!4274376)))

(assert (= (and b!7112444 (is-ElementMatch!17944 (regTwo!36401 (regTwo!36400 r!11554)))) b!7112646))

(assert (= (and b!7112444 (is-Concat!26789 (regTwo!36401 (regTwo!36400 r!11554)))) b!7112647))

(assert (= (and b!7112444 (is-Star!17944 (regTwo!36401 (regTwo!36400 r!11554)))) b!7112648))

(assert (= (and b!7112444 (is-Union!17944 (regTwo!36401 (regTwo!36400 r!11554)))) b!7112649))

(declare-fun b!7112650 () Bool)

(declare-fun e!4274377 () Bool)

(assert (=> b!7112650 (= e!4274377 tp_is_empty!45121)))

(declare-fun b!7112653 () Bool)

(declare-fun tp!1956851 () Bool)

(declare-fun tp!1956852 () Bool)

(assert (=> b!7112653 (= e!4274377 (and tp!1956851 tp!1956852))))

(declare-fun b!7112652 () Bool)

(declare-fun tp!1956855 () Bool)

(assert (=> b!7112652 (= e!4274377 tp!1956855)))

(declare-fun b!7112651 () Bool)

(declare-fun tp!1956853 () Bool)

(declare-fun tp!1956854 () Bool)

(assert (=> b!7112651 (= e!4274377 (and tp!1956853 tp!1956854))))

(assert (=> b!7112461 (= tp!1956794 e!4274377)))

(assert (= (and b!7112461 (is-ElementMatch!17944 (h!75229 (exprs!7438 c!9994)))) b!7112650))

(assert (= (and b!7112461 (is-Concat!26789 (h!75229 (exprs!7438 c!9994)))) b!7112651))

(assert (= (and b!7112461 (is-Star!17944 (h!75229 (exprs!7438 c!9994)))) b!7112652))

(assert (= (and b!7112461 (is-Union!17944 (h!75229 (exprs!7438 c!9994)))) b!7112653))

(declare-fun b!7112654 () Bool)

(declare-fun e!4274378 () Bool)

(declare-fun tp!1956856 () Bool)

(declare-fun tp!1956857 () Bool)

(assert (=> b!7112654 (= e!4274378 (and tp!1956856 tp!1956857))))

(assert (=> b!7112461 (= tp!1956795 e!4274378)))

(assert (= (and b!7112461 (is-Cons!68781 (t!382740 (exprs!7438 c!9994)))) b!7112654))

(declare-fun b!7112655 () Bool)

(declare-fun e!4274379 () Bool)

(assert (=> b!7112655 (= e!4274379 tp_is_empty!45121)))

(declare-fun b!7112658 () Bool)

(declare-fun tp!1956858 () Bool)

(declare-fun tp!1956859 () Bool)

(assert (=> b!7112658 (= e!4274379 (and tp!1956858 tp!1956859))))

(declare-fun b!7112657 () Bool)

(declare-fun tp!1956862 () Bool)

(assert (=> b!7112657 (= e!4274379 tp!1956862)))

(declare-fun b!7112656 () Bool)

(declare-fun tp!1956860 () Bool)

(declare-fun tp!1956861 () Bool)

(assert (=> b!7112656 (= e!4274379 (and tp!1956860 tp!1956861))))

(assert (=> b!7112438 (= tp!1956767 e!4274379)))

(assert (= (and b!7112438 (is-ElementMatch!17944 (regOne!36400 (regOne!36400 r!11554)))) b!7112655))

(assert (= (and b!7112438 (is-Concat!26789 (regOne!36400 (regOne!36400 r!11554)))) b!7112656))

(assert (= (and b!7112438 (is-Star!17944 (regOne!36400 (regOne!36400 r!11554)))) b!7112657))

(assert (= (and b!7112438 (is-Union!17944 (regOne!36400 (regOne!36400 r!11554)))) b!7112658))

(declare-fun b!7112659 () Bool)

(declare-fun e!4274380 () Bool)

(assert (=> b!7112659 (= e!4274380 tp_is_empty!45121)))

(declare-fun b!7112662 () Bool)

(declare-fun tp!1956863 () Bool)

(declare-fun tp!1956864 () Bool)

(assert (=> b!7112662 (= e!4274380 (and tp!1956863 tp!1956864))))

(declare-fun b!7112661 () Bool)

(declare-fun tp!1956867 () Bool)

(assert (=> b!7112661 (= e!4274380 tp!1956867)))

(declare-fun b!7112660 () Bool)

(declare-fun tp!1956865 () Bool)

(declare-fun tp!1956866 () Bool)

(assert (=> b!7112660 (= e!4274380 (and tp!1956865 tp!1956866))))

(assert (=> b!7112438 (= tp!1956768 e!4274380)))

(assert (= (and b!7112438 (is-ElementMatch!17944 (regTwo!36400 (regOne!36400 r!11554)))) b!7112659))

(assert (= (and b!7112438 (is-Concat!26789 (regTwo!36400 (regOne!36400 r!11554)))) b!7112660))

(assert (= (and b!7112438 (is-Star!17944 (regTwo!36400 (regOne!36400 r!11554)))) b!7112661))

(assert (= (and b!7112438 (is-Union!17944 (regTwo!36400 (regOne!36400 r!11554)))) b!7112662))

(declare-fun b!7112663 () Bool)

(declare-fun e!4274381 () Bool)

(assert (=> b!7112663 (= e!4274381 tp_is_empty!45121)))

(declare-fun b!7112666 () Bool)

(declare-fun tp!1956868 () Bool)

(declare-fun tp!1956869 () Bool)

(assert (=> b!7112666 (= e!4274381 (and tp!1956868 tp!1956869))))

(declare-fun b!7112665 () Bool)

(declare-fun tp!1956872 () Bool)

(assert (=> b!7112665 (= e!4274381 tp!1956872)))

(declare-fun b!7112664 () Bool)

(declare-fun tp!1956870 () Bool)

(declare-fun tp!1956871 () Bool)

(assert (=> b!7112664 (= e!4274381 (and tp!1956870 tp!1956871))))

(assert (=> b!7112454 (= tp!1956787 e!4274381)))

(assert (= (and b!7112454 (is-ElementMatch!17944 (regOne!36400 (reg!18273 r!11554)))) b!7112663))

(assert (= (and b!7112454 (is-Concat!26789 (regOne!36400 (reg!18273 r!11554)))) b!7112664))

(assert (= (and b!7112454 (is-Star!17944 (regOne!36400 (reg!18273 r!11554)))) b!7112665))

(assert (= (and b!7112454 (is-Union!17944 (regOne!36400 (reg!18273 r!11554)))) b!7112666))

(declare-fun b!7112667 () Bool)

(declare-fun e!4274382 () Bool)

(assert (=> b!7112667 (= e!4274382 tp_is_empty!45121)))

(declare-fun b!7112670 () Bool)

(declare-fun tp!1956873 () Bool)

(declare-fun tp!1956874 () Bool)

(assert (=> b!7112670 (= e!4274382 (and tp!1956873 tp!1956874))))

(declare-fun b!7112669 () Bool)

(declare-fun tp!1956877 () Bool)

(assert (=> b!7112669 (= e!4274382 tp!1956877)))

(declare-fun b!7112668 () Bool)

(declare-fun tp!1956875 () Bool)

(declare-fun tp!1956876 () Bool)

(assert (=> b!7112668 (= e!4274382 (and tp!1956875 tp!1956876))))

(assert (=> b!7112454 (= tp!1956788 e!4274382)))

(assert (= (and b!7112454 (is-ElementMatch!17944 (regTwo!36400 (reg!18273 r!11554)))) b!7112667))

(assert (= (and b!7112454 (is-Concat!26789 (regTwo!36400 (reg!18273 r!11554)))) b!7112668))

(assert (= (and b!7112454 (is-Star!17944 (regTwo!36400 (reg!18273 r!11554)))) b!7112669))

(assert (= (and b!7112454 (is-Union!17944 (regTwo!36400 (reg!18273 r!11554)))) b!7112670))

(declare-fun b!7112671 () Bool)

(declare-fun e!4274383 () Bool)

(assert (=> b!7112671 (= e!4274383 tp_is_empty!45121)))

(declare-fun b!7112674 () Bool)

(declare-fun tp!1956878 () Bool)

(declare-fun tp!1956879 () Bool)

(assert (=> b!7112674 (= e!4274383 (and tp!1956878 tp!1956879))))

(declare-fun b!7112673 () Bool)

(declare-fun tp!1956882 () Bool)

(assert (=> b!7112673 (= e!4274383 tp!1956882)))

(declare-fun b!7112672 () Bool)

(declare-fun tp!1956880 () Bool)

(declare-fun tp!1956881 () Bool)

(assert (=> b!7112672 (= e!4274383 (and tp!1956880 tp!1956881))))

(assert (=> b!7112450 (= tp!1956782 e!4274383)))

(assert (= (and b!7112450 (is-ElementMatch!17944 (regOne!36400 (regTwo!36401 r!11554)))) b!7112671))

(assert (= (and b!7112450 (is-Concat!26789 (regOne!36400 (regTwo!36401 r!11554)))) b!7112672))

(assert (= (and b!7112450 (is-Star!17944 (regOne!36400 (regTwo!36401 r!11554)))) b!7112673))

(assert (= (and b!7112450 (is-Union!17944 (regOne!36400 (regTwo!36401 r!11554)))) b!7112674))

(declare-fun b!7112675 () Bool)

(declare-fun e!4274384 () Bool)

(assert (=> b!7112675 (= e!4274384 tp_is_empty!45121)))

(declare-fun b!7112678 () Bool)

(declare-fun tp!1956883 () Bool)

(declare-fun tp!1956884 () Bool)

(assert (=> b!7112678 (= e!4274384 (and tp!1956883 tp!1956884))))

(declare-fun b!7112677 () Bool)

(declare-fun tp!1956887 () Bool)

(assert (=> b!7112677 (= e!4274384 tp!1956887)))

(declare-fun b!7112676 () Bool)

(declare-fun tp!1956885 () Bool)

(declare-fun tp!1956886 () Bool)

(assert (=> b!7112676 (= e!4274384 (and tp!1956885 tp!1956886))))

(assert (=> b!7112450 (= tp!1956783 e!4274384)))

(assert (= (and b!7112450 (is-ElementMatch!17944 (regTwo!36400 (regTwo!36401 r!11554)))) b!7112675))

(assert (= (and b!7112450 (is-Concat!26789 (regTwo!36400 (regTwo!36401 r!11554)))) b!7112676))

(assert (= (and b!7112450 (is-Star!17944 (regTwo!36400 (regTwo!36401 r!11554)))) b!7112677))

(assert (= (and b!7112450 (is-Union!17944 (regTwo!36400 (regTwo!36401 r!11554)))) b!7112678))

(declare-fun b!7112679 () Bool)

(declare-fun e!4274385 () Bool)

(assert (=> b!7112679 (= e!4274385 tp_is_empty!45121)))

(declare-fun b!7112682 () Bool)

(declare-fun tp!1956888 () Bool)

(declare-fun tp!1956889 () Bool)

(assert (=> b!7112682 (= e!4274385 (and tp!1956888 tp!1956889))))

(declare-fun b!7112681 () Bool)

(declare-fun tp!1956892 () Bool)

(assert (=> b!7112681 (= e!4274385 tp!1956892)))

(declare-fun b!7112680 () Bool)

(declare-fun tp!1956890 () Bool)

(declare-fun tp!1956891 () Bool)

(assert (=> b!7112680 (= e!4274385 (and tp!1956890 tp!1956891))))

(assert (=> b!7112439 (= tp!1956769 e!4274385)))

(assert (= (and b!7112439 (is-ElementMatch!17944 (reg!18273 (regOne!36400 r!11554)))) b!7112679))

(assert (= (and b!7112439 (is-Concat!26789 (reg!18273 (regOne!36400 r!11554)))) b!7112680))

(assert (= (and b!7112439 (is-Star!17944 (reg!18273 (regOne!36400 r!11554)))) b!7112681))

(assert (= (and b!7112439 (is-Union!17944 (reg!18273 (regOne!36400 r!11554)))) b!7112682))

(declare-fun b!7112683 () Bool)

(declare-fun e!4274386 () Bool)

(assert (=> b!7112683 (= e!4274386 tp_is_empty!45121)))

(declare-fun b!7112686 () Bool)

(declare-fun tp!1956893 () Bool)

(declare-fun tp!1956894 () Bool)

(assert (=> b!7112686 (= e!4274386 (and tp!1956893 tp!1956894))))

(declare-fun b!7112685 () Bool)

(declare-fun tp!1956897 () Bool)

(assert (=> b!7112685 (= e!4274386 tp!1956897)))

(declare-fun b!7112684 () Bool)

(declare-fun tp!1956895 () Bool)

(declare-fun tp!1956896 () Bool)

(assert (=> b!7112684 (= e!4274386 (and tp!1956895 tp!1956896))))

(assert (=> b!7112455 (= tp!1956789 e!4274386)))

(assert (= (and b!7112455 (is-ElementMatch!17944 (reg!18273 (reg!18273 r!11554)))) b!7112683))

(assert (= (and b!7112455 (is-Concat!26789 (reg!18273 (reg!18273 r!11554)))) b!7112684))

(assert (= (and b!7112455 (is-Star!17944 (reg!18273 (reg!18273 r!11554)))) b!7112685))

(assert (= (and b!7112455 (is-Union!17944 (reg!18273 (reg!18273 r!11554)))) b!7112686))

(declare-fun b!7112687 () Bool)

(declare-fun e!4274387 () Bool)

(assert (=> b!7112687 (= e!4274387 tp_is_empty!45121)))

(declare-fun b!7112690 () Bool)

(declare-fun tp!1956898 () Bool)

(declare-fun tp!1956899 () Bool)

(assert (=> b!7112690 (= e!4274387 (and tp!1956898 tp!1956899))))

(declare-fun b!7112689 () Bool)

(declare-fun tp!1956902 () Bool)

(assert (=> b!7112689 (= e!4274387 tp!1956902)))

(declare-fun b!7112688 () Bool)

(declare-fun tp!1956900 () Bool)

(declare-fun tp!1956901 () Bool)

(assert (=> b!7112688 (= e!4274387 (and tp!1956900 tp!1956901))))

(assert (=> b!7112446 (= tp!1956777 e!4274387)))

(assert (= (and b!7112446 (is-ElementMatch!17944 (regOne!36400 (regOne!36401 r!11554)))) b!7112687))

(assert (= (and b!7112446 (is-Concat!26789 (regOne!36400 (regOne!36401 r!11554)))) b!7112688))

(assert (= (and b!7112446 (is-Star!17944 (regOne!36400 (regOne!36401 r!11554)))) b!7112689))

(assert (= (and b!7112446 (is-Union!17944 (regOne!36400 (regOne!36401 r!11554)))) b!7112690))

(declare-fun b!7112691 () Bool)

(declare-fun e!4274388 () Bool)

(assert (=> b!7112691 (= e!4274388 tp_is_empty!45121)))

(declare-fun b!7112694 () Bool)

(declare-fun tp!1956903 () Bool)

(declare-fun tp!1956904 () Bool)

(assert (=> b!7112694 (= e!4274388 (and tp!1956903 tp!1956904))))

(declare-fun b!7112693 () Bool)

(declare-fun tp!1956907 () Bool)

(assert (=> b!7112693 (= e!4274388 tp!1956907)))

(declare-fun b!7112692 () Bool)

(declare-fun tp!1956905 () Bool)

(declare-fun tp!1956906 () Bool)

(assert (=> b!7112692 (= e!4274388 (and tp!1956905 tp!1956906))))

(assert (=> b!7112446 (= tp!1956778 e!4274388)))

(assert (= (and b!7112446 (is-ElementMatch!17944 (regTwo!36400 (regOne!36401 r!11554)))) b!7112691))

(assert (= (and b!7112446 (is-Concat!26789 (regTwo!36400 (regOne!36401 r!11554)))) b!7112692))

(assert (= (and b!7112446 (is-Star!17944 (regTwo!36400 (regOne!36401 r!11554)))) b!7112693))

(assert (= (and b!7112446 (is-Union!17944 (regTwo!36400 (regOne!36401 r!11554)))) b!7112694))

(declare-fun b!7112695 () Bool)

(declare-fun e!4274389 () Bool)

(assert (=> b!7112695 (= e!4274389 tp_is_empty!45121)))

(declare-fun b!7112698 () Bool)

(declare-fun tp!1956908 () Bool)

(declare-fun tp!1956909 () Bool)

(assert (=> b!7112698 (= e!4274389 (and tp!1956908 tp!1956909))))

(declare-fun b!7112697 () Bool)

(declare-fun tp!1956912 () Bool)

(assert (=> b!7112697 (= e!4274389 tp!1956912)))

(declare-fun b!7112696 () Bool)

(declare-fun tp!1956910 () Bool)

(declare-fun tp!1956911 () Bool)

(assert (=> b!7112696 (= e!4274389 (and tp!1956910 tp!1956911))))

(assert (=> b!7112451 (= tp!1956784 e!4274389)))

(assert (= (and b!7112451 (is-ElementMatch!17944 (reg!18273 (regTwo!36401 r!11554)))) b!7112695))

(assert (= (and b!7112451 (is-Concat!26789 (reg!18273 (regTwo!36401 r!11554)))) b!7112696))

(assert (= (and b!7112451 (is-Star!17944 (reg!18273 (regTwo!36401 r!11554)))) b!7112697))

(assert (= (and b!7112451 (is-Union!17944 (reg!18273 (regTwo!36401 r!11554)))) b!7112698))

(declare-fun b!7112699 () Bool)

(declare-fun e!4274390 () Bool)

(assert (=> b!7112699 (= e!4274390 tp_is_empty!45121)))

(declare-fun b!7112702 () Bool)

(declare-fun tp!1956913 () Bool)

(declare-fun tp!1956914 () Bool)

(assert (=> b!7112702 (= e!4274390 (and tp!1956913 tp!1956914))))

(declare-fun b!7112701 () Bool)

(declare-fun tp!1956917 () Bool)

(assert (=> b!7112701 (= e!4274390 tp!1956917)))

(declare-fun b!7112700 () Bool)

(declare-fun tp!1956915 () Bool)

(declare-fun tp!1956916 () Bool)

(assert (=> b!7112700 (= e!4274390 (and tp!1956915 tp!1956916))))

(assert (=> b!7112440 (= tp!1956765 e!4274390)))

(assert (= (and b!7112440 (is-ElementMatch!17944 (regOne!36401 (regOne!36400 r!11554)))) b!7112699))

(assert (= (and b!7112440 (is-Concat!26789 (regOne!36401 (regOne!36400 r!11554)))) b!7112700))

(assert (= (and b!7112440 (is-Star!17944 (regOne!36401 (regOne!36400 r!11554)))) b!7112701))

(assert (= (and b!7112440 (is-Union!17944 (regOne!36401 (regOne!36400 r!11554)))) b!7112702))

(declare-fun b!7112703 () Bool)

(declare-fun e!4274391 () Bool)

(assert (=> b!7112703 (= e!4274391 tp_is_empty!45121)))

(declare-fun b!7112706 () Bool)

(declare-fun tp!1956918 () Bool)

(declare-fun tp!1956919 () Bool)

(assert (=> b!7112706 (= e!4274391 (and tp!1956918 tp!1956919))))

(declare-fun b!7112705 () Bool)

(declare-fun tp!1956922 () Bool)

(assert (=> b!7112705 (= e!4274391 tp!1956922)))

(declare-fun b!7112704 () Bool)

(declare-fun tp!1956920 () Bool)

(declare-fun tp!1956921 () Bool)

(assert (=> b!7112704 (= e!4274391 (and tp!1956920 tp!1956921))))

(assert (=> b!7112440 (= tp!1956766 e!4274391)))

(assert (= (and b!7112440 (is-ElementMatch!17944 (regTwo!36401 (regOne!36400 r!11554)))) b!7112703))

(assert (= (and b!7112440 (is-Concat!26789 (regTwo!36401 (regOne!36400 r!11554)))) b!7112704))

(assert (= (and b!7112440 (is-Star!17944 (regTwo!36401 (regOne!36400 r!11554)))) b!7112705))

(assert (= (and b!7112440 (is-Union!17944 (regTwo!36401 (regOne!36400 r!11554)))) b!7112706))

(declare-fun b!7112707 () Bool)

(declare-fun e!4274392 () Bool)

(assert (=> b!7112707 (= e!4274392 tp_is_empty!45121)))

(declare-fun b!7112710 () Bool)

(declare-fun tp!1956923 () Bool)

(declare-fun tp!1956924 () Bool)

(assert (=> b!7112710 (= e!4274392 (and tp!1956923 tp!1956924))))

(declare-fun b!7112709 () Bool)

(declare-fun tp!1956927 () Bool)

(assert (=> b!7112709 (= e!4274392 tp!1956927)))

(declare-fun b!7112708 () Bool)

(declare-fun tp!1956925 () Bool)

(declare-fun tp!1956926 () Bool)

(assert (=> b!7112708 (= e!4274392 (and tp!1956925 tp!1956926))))

(assert (=> b!7112456 (= tp!1956785 e!4274392)))

(assert (= (and b!7112456 (is-ElementMatch!17944 (regOne!36401 (reg!18273 r!11554)))) b!7112707))

(assert (= (and b!7112456 (is-Concat!26789 (regOne!36401 (reg!18273 r!11554)))) b!7112708))

(assert (= (and b!7112456 (is-Star!17944 (regOne!36401 (reg!18273 r!11554)))) b!7112709))

(assert (= (and b!7112456 (is-Union!17944 (regOne!36401 (reg!18273 r!11554)))) b!7112710))

(declare-fun b!7112711 () Bool)

(declare-fun e!4274393 () Bool)

(assert (=> b!7112711 (= e!4274393 tp_is_empty!45121)))

(declare-fun b!7112714 () Bool)

(declare-fun tp!1956928 () Bool)

(declare-fun tp!1956929 () Bool)

(assert (=> b!7112714 (= e!4274393 (and tp!1956928 tp!1956929))))

(declare-fun b!7112713 () Bool)

(declare-fun tp!1956932 () Bool)

(assert (=> b!7112713 (= e!4274393 tp!1956932)))

(declare-fun b!7112712 () Bool)

(declare-fun tp!1956930 () Bool)

(declare-fun tp!1956931 () Bool)

(assert (=> b!7112712 (= e!4274393 (and tp!1956930 tp!1956931))))

(assert (=> b!7112456 (= tp!1956786 e!4274393)))

(assert (= (and b!7112456 (is-ElementMatch!17944 (regTwo!36401 (reg!18273 r!11554)))) b!7112711))

(assert (= (and b!7112456 (is-Concat!26789 (regTwo!36401 (reg!18273 r!11554)))) b!7112712))

(assert (= (and b!7112456 (is-Star!17944 (regTwo!36401 (reg!18273 r!11554)))) b!7112713))

(assert (= (and b!7112456 (is-Union!17944 (regTwo!36401 (reg!18273 r!11554)))) b!7112714))

(declare-fun b!7112715 () Bool)

(declare-fun e!4274394 () Bool)

(assert (=> b!7112715 (= e!4274394 tp_is_empty!45121)))

(declare-fun b!7112718 () Bool)

(declare-fun tp!1956933 () Bool)

(declare-fun tp!1956934 () Bool)

(assert (=> b!7112718 (= e!4274394 (and tp!1956933 tp!1956934))))

(declare-fun b!7112717 () Bool)

(declare-fun tp!1956937 () Bool)

(assert (=> b!7112717 (= e!4274394 tp!1956937)))

(declare-fun b!7112716 () Bool)

(declare-fun tp!1956935 () Bool)

(declare-fun tp!1956936 () Bool)

(assert (=> b!7112716 (= e!4274394 (and tp!1956935 tp!1956936))))

(assert (=> b!7112442 (= tp!1956772 e!4274394)))

(assert (= (and b!7112442 (is-ElementMatch!17944 (regOne!36400 (regTwo!36400 r!11554)))) b!7112715))

(assert (= (and b!7112442 (is-Concat!26789 (regOne!36400 (regTwo!36400 r!11554)))) b!7112716))

(assert (= (and b!7112442 (is-Star!17944 (regOne!36400 (regTwo!36400 r!11554)))) b!7112717))

(assert (= (and b!7112442 (is-Union!17944 (regOne!36400 (regTwo!36400 r!11554)))) b!7112718))

(declare-fun b!7112719 () Bool)

(declare-fun e!4274395 () Bool)

(assert (=> b!7112719 (= e!4274395 tp_is_empty!45121)))

(declare-fun b!7112722 () Bool)

(declare-fun tp!1956938 () Bool)

(declare-fun tp!1956939 () Bool)

(assert (=> b!7112722 (= e!4274395 (and tp!1956938 tp!1956939))))

(declare-fun b!7112721 () Bool)

(declare-fun tp!1956942 () Bool)

(assert (=> b!7112721 (= e!4274395 tp!1956942)))

(declare-fun b!7112720 () Bool)

(declare-fun tp!1956940 () Bool)

(declare-fun tp!1956941 () Bool)

(assert (=> b!7112720 (= e!4274395 (and tp!1956940 tp!1956941))))

(assert (=> b!7112442 (= tp!1956773 e!4274395)))

(assert (= (and b!7112442 (is-ElementMatch!17944 (regTwo!36400 (regTwo!36400 r!11554)))) b!7112719))

(assert (= (and b!7112442 (is-Concat!26789 (regTwo!36400 (regTwo!36400 r!11554)))) b!7112720))

(assert (= (and b!7112442 (is-Star!17944 (regTwo!36400 (regTwo!36400 r!11554)))) b!7112721))

(assert (= (and b!7112442 (is-Union!17944 (regTwo!36400 (regTwo!36400 r!11554)))) b!7112722))

(declare-fun b!7112723 () Bool)

(declare-fun e!4274396 () Bool)

(assert (=> b!7112723 (= e!4274396 tp_is_empty!45121)))

(declare-fun b!7112726 () Bool)

(declare-fun tp!1956943 () Bool)

(declare-fun tp!1956944 () Bool)

(assert (=> b!7112726 (= e!4274396 (and tp!1956943 tp!1956944))))

(declare-fun b!7112725 () Bool)

(declare-fun tp!1956947 () Bool)

(assert (=> b!7112725 (= e!4274396 tp!1956947)))

(declare-fun b!7112724 () Bool)

(declare-fun tp!1956945 () Bool)

(declare-fun tp!1956946 () Bool)

(assert (=> b!7112724 (= e!4274396 (and tp!1956945 tp!1956946))))

(assert (=> b!7112447 (= tp!1956779 e!4274396)))

(assert (= (and b!7112447 (is-ElementMatch!17944 (reg!18273 (regOne!36401 r!11554)))) b!7112723))

(assert (= (and b!7112447 (is-Concat!26789 (reg!18273 (regOne!36401 r!11554)))) b!7112724))

(assert (= (and b!7112447 (is-Star!17944 (reg!18273 (regOne!36401 r!11554)))) b!7112725))

(assert (= (and b!7112447 (is-Union!17944 (reg!18273 (regOne!36401 r!11554)))) b!7112726))

(declare-fun b!7112727 () Bool)

(declare-fun e!4274397 () Bool)

(assert (=> b!7112727 (= e!4274397 tp_is_empty!45121)))

(declare-fun b!7112730 () Bool)

(declare-fun tp!1956948 () Bool)

(declare-fun tp!1956949 () Bool)

(assert (=> b!7112730 (= e!4274397 (and tp!1956948 tp!1956949))))

(declare-fun b!7112729 () Bool)

(declare-fun tp!1956952 () Bool)

(assert (=> b!7112729 (= e!4274397 tp!1956952)))

(declare-fun b!7112728 () Bool)

(declare-fun tp!1956950 () Bool)

(declare-fun tp!1956951 () Bool)

(assert (=> b!7112728 (= e!4274397 (and tp!1956950 tp!1956951))))

(assert (=> b!7112452 (= tp!1956780 e!4274397)))

(assert (= (and b!7112452 (is-ElementMatch!17944 (regOne!36401 (regTwo!36401 r!11554)))) b!7112727))

(assert (= (and b!7112452 (is-Concat!26789 (regOne!36401 (regTwo!36401 r!11554)))) b!7112728))

(assert (= (and b!7112452 (is-Star!17944 (regOne!36401 (regTwo!36401 r!11554)))) b!7112729))

(assert (= (and b!7112452 (is-Union!17944 (regOne!36401 (regTwo!36401 r!11554)))) b!7112730))

(declare-fun b!7112731 () Bool)

(declare-fun e!4274398 () Bool)

(assert (=> b!7112731 (= e!4274398 tp_is_empty!45121)))

(declare-fun b!7112734 () Bool)

(declare-fun tp!1956953 () Bool)

(declare-fun tp!1956954 () Bool)

(assert (=> b!7112734 (= e!4274398 (and tp!1956953 tp!1956954))))

(declare-fun b!7112733 () Bool)

(declare-fun tp!1956957 () Bool)

(assert (=> b!7112733 (= e!4274398 tp!1956957)))

(declare-fun b!7112732 () Bool)

(declare-fun tp!1956955 () Bool)

(declare-fun tp!1956956 () Bool)

(assert (=> b!7112732 (= e!4274398 (and tp!1956955 tp!1956956))))

(assert (=> b!7112452 (= tp!1956781 e!4274398)))

(assert (= (and b!7112452 (is-ElementMatch!17944 (regTwo!36401 (regTwo!36401 r!11554)))) b!7112731))

(assert (= (and b!7112452 (is-Concat!26789 (regTwo!36401 (regTwo!36401 r!11554)))) b!7112732))

(assert (= (and b!7112452 (is-Star!17944 (regTwo!36401 (regTwo!36401 r!11554)))) b!7112733))

(assert (= (and b!7112452 (is-Union!17944 (regTwo!36401 (regTwo!36401 r!11554)))) b!7112734))

(declare-fun b!7112735 () Bool)

(declare-fun e!4274399 () Bool)

(assert (=> b!7112735 (= e!4274399 tp_is_empty!45121)))

(declare-fun b!7112738 () Bool)

(declare-fun tp!1956958 () Bool)

(declare-fun tp!1956959 () Bool)

(assert (=> b!7112738 (= e!4274399 (and tp!1956958 tp!1956959))))

(declare-fun b!7112737 () Bool)

(declare-fun tp!1956962 () Bool)

(assert (=> b!7112737 (= e!4274399 tp!1956962)))

(declare-fun b!7112736 () Bool)

(declare-fun tp!1956960 () Bool)

(declare-fun tp!1956961 () Bool)

(assert (=> b!7112736 (= e!4274399 (and tp!1956960 tp!1956961))))

(assert (=> b!7112462 (= tp!1956796 e!4274399)))

(assert (= (and b!7112462 (is-ElementMatch!17944 (h!75229 (exprs!7438 auxCtx!45)))) b!7112735))

(assert (= (and b!7112462 (is-Concat!26789 (h!75229 (exprs!7438 auxCtx!45)))) b!7112736))

(assert (= (and b!7112462 (is-Star!17944 (h!75229 (exprs!7438 auxCtx!45)))) b!7112737))

(assert (= (and b!7112462 (is-Union!17944 (h!75229 (exprs!7438 auxCtx!45)))) b!7112738))

(declare-fun b!7112739 () Bool)

(declare-fun e!4274400 () Bool)

(declare-fun tp!1956963 () Bool)

(declare-fun tp!1956964 () Bool)

(assert (=> b!7112739 (= e!4274400 (and tp!1956963 tp!1956964))))

(assert (=> b!7112462 (= tp!1956797 e!4274400)))

(assert (= (and b!7112462 (is-Cons!68781 (t!382740 (exprs!7438 auxCtx!45)))) b!7112739))

(declare-fun b!7112740 () Bool)

(declare-fun e!4274401 () Bool)

(assert (=> b!7112740 (= e!4274401 tp_is_empty!45121)))

(declare-fun b!7112743 () Bool)

(declare-fun tp!1956965 () Bool)

(declare-fun tp!1956966 () Bool)

(assert (=> b!7112743 (= e!4274401 (and tp!1956965 tp!1956966))))

(declare-fun b!7112742 () Bool)

(declare-fun tp!1956969 () Bool)

(assert (=> b!7112742 (= e!4274401 tp!1956969)))

(declare-fun b!7112741 () Bool)

(declare-fun tp!1956967 () Bool)

(declare-fun tp!1956968 () Bool)

(assert (=> b!7112741 (= e!4274401 (and tp!1956967 tp!1956968))))

(assert (=> b!7112443 (= tp!1956774 e!4274401)))

(assert (= (and b!7112443 (is-ElementMatch!17944 (reg!18273 (regTwo!36400 r!11554)))) b!7112740))

(assert (= (and b!7112443 (is-Concat!26789 (reg!18273 (regTwo!36400 r!11554)))) b!7112741))

(assert (= (and b!7112443 (is-Star!17944 (reg!18273 (regTwo!36400 r!11554)))) b!7112742))

(assert (= (and b!7112443 (is-Union!17944 (reg!18273 (regTwo!36400 r!11554)))) b!7112743))

(declare-fun b!7112744 () Bool)

(declare-fun e!4274402 () Bool)

(assert (=> b!7112744 (= e!4274402 tp_is_empty!45121)))

(declare-fun b!7112747 () Bool)

(declare-fun tp!1956970 () Bool)

(declare-fun tp!1956971 () Bool)

(assert (=> b!7112747 (= e!4274402 (and tp!1956970 tp!1956971))))

(declare-fun b!7112746 () Bool)

(declare-fun tp!1956974 () Bool)

(assert (=> b!7112746 (= e!4274402 tp!1956974)))

(declare-fun b!7112745 () Bool)

(declare-fun tp!1956972 () Bool)

(declare-fun tp!1956973 () Bool)

(assert (=> b!7112745 (= e!4274402 (and tp!1956972 tp!1956973))))

(assert (=> b!7112448 (= tp!1956775 e!4274402)))

(assert (= (and b!7112448 (is-ElementMatch!17944 (regOne!36401 (regOne!36401 r!11554)))) b!7112744))

(assert (= (and b!7112448 (is-Concat!26789 (regOne!36401 (regOne!36401 r!11554)))) b!7112745))

(assert (= (and b!7112448 (is-Star!17944 (regOne!36401 (regOne!36401 r!11554)))) b!7112746))

(assert (= (and b!7112448 (is-Union!17944 (regOne!36401 (regOne!36401 r!11554)))) b!7112747))

(declare-fun b!7112748 () Bool)

(declare-fun e!4274403 () Bool)

(assert (=> b!7112748 (= e!4274403 tp_is_empty!45121)))

(declare-fun b!7112751 () Bool)

(declare-fun tp!1956975 () Bool)

(declare-fun tp!1956976 () Bool)

(assert (=> b!7112751 (= e!4274403 (and tp!1956975 tp!1956976))))

(declare-fun b!7112750 () Bool)

(declare-fun tp!1956979 () Bool)

(assert (=> b!7112750 (= e!4274403 tp!1956979)))

(declare-fun b!7112749 () Bool)

(declare-fun tp!1956977 () Bool)

(declare-fun tp!1956978 () Bool)

(assert (=> b!7112749 (= e!4274403 (and tp!1956977 tp!1956978))))

(assert (=> b!7112448 (= tp!1956776 e!4274403)))

(assert (= (and b!7112448 (is-ElementMatch!17944 (regTwo!36401 (regOne!36401 r!11554)))) b!7112748))

(assert (= (and b!7112448 (is-Concat!26789 (regTwo!36401 (regOne!36401 r!11554)))) b!7112749))

(assert (= (and b!7112448 (is-Star!17944 (regTwo!36401 (regOne!36401 r!11554)))) b!7112750))

(assert (= (and b!7112448 (is-Union!17944 (regTwo!36401 (regOne!36401 r!11554)))) b!7112751))

(declare-fun b_lambda!271427 () Bool)

(assert (= b_lambda!271425 (or b!7112333 b_lambda!271427)))

(declare-fun bs!1885332 () Bool)

(declare-fun d!2220566 () Bool)

(assert (= bs!1885332 (and d!2220566 b!7112333)))

(assert (=> bs!1885332 (= (dynLambda!28056 lambda!432144 (h!75229 (exprs!7438 c!9994))) (validRegex!9217 (h!75229 (exprs!7438 c!9994))))))

(declare-fun m!7833292 () Bool)

(assert (=> bs!1885332 m!7833292))

(assert (=> b!7112631 d!2220566))

(declare-fun b_lambda!271429 () Bool)

(assert (= b_lambda!271419 (or d!2220508 b_lambda!271429)))

(declare-fun bs!1885333 () Bool)

(declare-fun d!2220568 () Bool)

(assert (= bs!1885333 (and d!2220568 d!2220508)))

(assert (=> bs!1885333 (= (dynLambda!28056 lambda!432157 (h!75229 (exprs!7438 (Context!13877 ($colon$colon!2796 lt!2560217 (regTwo!36400 r!11554)))))) (validRegex!9217 (h!75229 (exprs!7438 (Context!13877 ($colon$colon!2796 lt!2560217 (regTwo!36400 r!11554)))))))))

(declare-fun m!7833294 () Bool)

(assert (=> bs!1885333 m!7833294))

(assert (=> b!7112567 d!2220568))

(declare-fun b_lambda!271431 () Bool)

(assert (= b_lambda!271421 (or d!2220492 b_lambda!271431)))

(declare-fun bs!1885334 () Bool)

(declare-fun d!2220570 () Bool)

(assert (= bs!1885334 (and d!2220570 d!2220492)))

(assert (=> bs!1885334 (= (dynLambda!28056 lambda!432152 (h!75229 (exprs!7438 c!9994))) (validRegex!9217 (h!75229 (exprs!7438 c!9994))))))

(assert (=> bs!1885334 m!7833292))

(assert (=> b!7112597 d!2220570))

(declare-fun b_lambda!271433 () Bool)

(assert (= b_lambda!271417 (or d!2220494 b_lambda!271433)))

(declare-fun bs!1885335 () Bool)

(declare-fun d!2220572 () Bool)

(assert (= bs!1885335 (and d!2220572 d!2220494)))

(assert (=> bs!1885335 (= (dynLambda!28056 lambda!432153 (h!75229 (exprs!7438 auxCtx!45))) (validRegex!9217 (h!75229 (exprs!7438 auxCtx!45))))))

(declare-fun m!7833296 () Bool)

(assert (=> bs!1885335 m!7833296))

(assert (=> b!7112551 d!2220572))

(declare-fun b_lambda!271435 () Bool)

(assert (= b_lambda!271423 (or b!7112333 b_lambda!271435)))

(declare-fun bs!1885336 () Bool)

(declare-fun d!2220574 () Bool)

(assert (= bs!1885336 (and d!2220574 b!7112333)))

(assert (=> bs!1885336 (= (dynLambda!28056 lambda!432144 (h!75229 (++!16096 (exprs!7438 c!9994) (exprs!7438 auxCtx!45)))) (validRegex!9217 (h!75229 (++!16096 (exprs!7438 c!9994) (exprs!7438 auxCtx!45)))))))

(declare-fun m!7833298 () Bool)

(assert (=> bs!1885336 m!7833298))

(assert (=> b!7112629 d!2220574))

(push 1)

(assert (not b!7112689))

(assert (not b!7112630))

(assert (not b!7112700))

(assert (not b!7112688))

(assert (not b!7112710))

(assert (not b!7112562))

(assert tp_is_empty!45121)

(assert (not b!7112658))

(assert (not b!7112587))

(assert (not b!7112694))

(assert (not b!7112738))

(assert (not b!7112590))

(assert (not b!7112566))

(assert (not bs!1885335))

(assert (not b!7112653))

(assert (not bm!649166))

(assert (not b!7112736))

(assert (not b!7112673))

(assert (not b!7112656))

(assert (not b!7112598))

(assert (not b!7112702))

(assert (not b!7112666))

(assert (not d!2220528))

(assert (not b!7112698))

(assert (not b!7112648))

(assert (not b!7112712))

(assert (not b!7112734))

(assert (not b!7112678))

(assert (not b!7112632))

(assert (not b!7112692))

(assert (not b!7112682))

(assert (not b!7112733))

(assert (not b!7112706))

(assert (not b!7112728))

(assert (not d!2220552))

(assert (not b!7112685))

(assert (not b!7112554))

(assert (not b!7112746))

(assert (not b!7112751))

(assert (not bs!1885333))

(assert (not bm!649165))

(assert (not bs!1885332))

(assert (not b!7112657))

(assert (not d!2220538))

(assert (not b!7112568))

(assert (not b!7112737))

(assert (not b!7112714))

(assert (not b!7112649))

(assert (not bs!1885334))

(assert (not b!7112722))

(assert (not b_lambda!271435))

(assert (not d!2220560))

(assert (not b!7112583))

(assert (not b!7112622))

(assert (not b!7112665))

(assert (not b!7112693))

(assert (not b!7112651))

(assert (not b!7112743))

(assert (not b!7112729))

(assert (not b_lambda!271429))

(assert (not b!7112742))

(assert (not b!7112732))

(assert (not b!7112552))

(assert (not b!7112726))

(assert (not b!7112680))

(assert (not b!7112669))

(assert (not b!7112730))

(assert (not b!7112717))

(assert (not b!7112747))

(assert (not bm!649160))

(assert (not b!7112705))

(assert (not bm!649153))

(assert (not b!7112741))

(assert (not b!7112635))

(assert (not b!7112696))

(assert (not b_lambda!271431))

(assert (not b!7112721))

(assert (not b!7112750))

(assert (not b!7112701))

(assert (not b!7112670))

(assert (not b!7112704))

(assert (not b!7112725))

(assert (not bs!1885336))

(assert (not b!7112647))

(assert (not b!7112697))

(assert (not b!7112564))

(assert (not b!7112674))

(assert (not b!7112745))

(assert (not b!7112708))

(assert (not b!7112555))

(assert (not b!7112660))

(assert (not b!7112643))

(assert (not b_lambda!271427))

(assert (not b!7112645))

(assert (not b!7112571))

(assert (not b!7112668))

(assert (not b_lambda!271433))

(assert (not b!7112684))

(assert (not b!7112662))

(assert (not b!7112713))

(assert (not b!7112654))

(assert (not bm!649154))

(assert (not bm!649159))

(assert (not b!7112681))

(assert (not bm!649163))

(assert (not b!7112749))

(assert (not b!7112672))

(assert (not b!7112644))

(assert (not b!7112677))

(assert (not b!7112724))

(assert (not b!7112664))

(assert (not b!7112652))

(assert (not bm!649162))

(assert (not b!7112690))

(assert (not b!7112661))

(assert (not b!7112720))

(assert (not b!7112718))

(assert (not b!7112739))

(assert (not b!7112716))

(assert (not b!7112585))

(assert (not bm!649150))

(assert (not b!7112686))

(assert (not b!7112676))

(assert (not b!7112709))

(assert (not bm!649151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

