; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2090 () Bool)

(assert start!2090)

(declare-fun b!14138 () Bool)

(assert (=> b!14138 true))

(declare-fun b!14132 () Bool)

(declare-fun e!8435 () Bool)

(declare-fun tp_is_empty!719 () Bool)

(declare-fun tp!2309 () Bool)

(assert (=> b!14132 (= e!8435 (and tp_is_empty!719 tp!2309))))

(declare-fun b!14133 () Bool)

(declare-fun e!8436 () Bool)

(declare-fun call!392 () Bool)

(assert (=> b!14133 (= e!8436 (not call!392))))

(declare-fun res!11005 () Bool)

(declare-fun e!8433 () Bool)

(assert (=> start!2090 (=> (not res!11005) (not e!8433))))

(declare-datatypes ((B!540 0))(
  ( (B!541 (val!368 Int)) )
))
(declare-datatypes ((tuple2!518 0))(
  ( (tuple2!519 (_1!259 (_ BitVec 64)) (_2!259 B!540)) )
))
(declare-datatypes ((List!418 0))(
  ( (Nil!415) (Cons!414 (h!980 tuple2!518) (t!2814 List!418)) )
))
(declare-fun l!522 () List!418)

(declare-fun isStrictlySorted!109 (List!418) Bool)

(assert (=> start!2090 (= res!11005 (isStrictlySorted!109 l!522))))

(assert (=> start!2090 e!8433))

(assert (=> start!2090 e!8435))

(assert (=> start!2090 tp_is_empty!719))

(declare-fun b!14134 () Bool)

(declare-fun e!8437 () Bool)

(assert (=> b!14134 (= e!8437 e!8436)))

(declare-fun c!1298 () Bool)

(declare-fun isEmpty!101 (List!418) Bool)

(assert (=> b!14134 (= c!1298 (isEmpty!101 l!522))))

(declare-fun b!14135 () Bool)

(declare-fun e!8434 () Bool)

(declare-fun lt!3582 () List!418)

(declare-fun head!790 (List!418) tuple2!518)

(assert (=> b!14135 (= e!8434 (bvslt (_1!259 (head!790 lt!3582)) (_1!259 (head!790 l!522))))))

(declare-fun b!14136 () Bool)

(declare-fun res!11002 () Bool)

(assert (=> b!14136 (=> (not res!11002) (not e!8433))))

(declare-fun value!159 () B!540)

(assert (=> b!14136 (= res!11002 (and (is-Cons!414 l!522) (= (_2!259 (h!980 l!522)) value!159)))))

(declare-fun b!14137 () Bool)

(assert (=> b!14137 (= e!8433 e!8437)))

(declare-fun res!11004 () Bool)

(assert (=> b!14137 (=> res!11004 e!8437)))

(assert (=> b!14137 (= res!11004 (not (isStrictlySorted!109 lt!3582)))))

(declare-fun $colon$colon!20 (List!418 tuple2!518) List!418)

(declare-fun filterByValue!15 (List!418 B!540) List!418)

(assert (=> b!14137 (= lt!3582 ($colon$colon!20 (filterByValue!15 (t!2814 l!522) value!159) (h!980 l!522)))))

(declare-fun res!11001 () Bool)

(assert (=> b!14138 (=> res!11001 e!8437)))

(declare-fun lambda!140 () Int)

(declare-fun forall!94 (List!418 Int) Bool)

(assert (=> b!14138 (= res!11001 (not (forall!94 lt!3582 lambda!140)))))

(declare-fun b!14139 () Bool)

(assert (=> b!14139 (= e!8436 e!8434)))

(declare-fun res!11003 () Bool)

(assert (=> b!14139 (= res!11003 (not call!392))))

(assert (=> b!14139 (=> (not res!11003) (not e!8434))))

(declare-fun bm!389 () Bool)

(assert (=> bm!389 (= call!392 (isEmpty!101 lt!3582))))

(assert (= (and start!2090 res!11005) b!14136))

(assert (= (and b!14136 res!11002) b!14137))

(assert (= (and b!14137 (not res!11004)) b!14138))

(assert (= (and b!14138 (not res!11001)) b!14134))

(assert (= (and b!14134 c!1298) b!14133))

(assert (= (and b!14134 (not c!1298)) b!14139))

(assert (= (and b!14139 res!11003) b!14135))

(assert (= (or b!14133 b!14139) bm!389))

(assert (= (and start!2090 (is-Cons!414 l!522)) b!14132))

(declare-fun m!9421 () Bool)

(assert (=> b!14138 m!9421))

(declare-fun m!9423 () Bool)

(assert (=> b!14134 m!9423))

(declare-fun m!9425 () Bool)

(assert (=> b!14137 m!9425))

(declare-fun m!9427 () Bool)

(assert (=> b!14137 m!9427))

(assert (=> b!14137 m!9427))

(declare-fun m!9429 () Bool)

(assert (=> b!14137 m!9429))

(declare-fun m!9431 () Bool)

(assert (=> b!14135 m!9431))

(declare-fun m!9433 () Bool)

(assert (=> b!14135 m!9433))

(declare-fun m!9435 () Bool)

(assert (=> bm!389 m!9435))

(declare-fun m!9437 () Bool)

(assert (=> start!2090 m!9437))

(push 1)

(assert (not b!14132))

(assert (not start!2090))

(assert (not b!14134))

(assert (not b!14135))

(assert (not bm!389))

(assert (not b!14137))

(assert (not b!14138))

(assert tp_is_empty!719)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2099 () Bool)

(assert (=> d!2099 (= (head!790 lt!3582) (h!980 lt!3582))))

(assert (=> b!14135 d!2099))

(declare-fun d!2105 () Bool)

(assert (=> d!2105 (= (head!790 l!522) (h!980 l!522))))

(assert (=> b!14135 d!2105))

(declare-fun d!2107 () Bool)

(assert (=> d!2107 (= (isEmpty!101 lt!3582) (is-Nil!415 lt!3582))))

(assert (=> bm!389 d!2107))

(declare-fun d!2109 () Bool)

(declare-fun res!11020 () Bool)

(declare-fun e!8452 () Bool)

(assert (=> d!2109 (=> res!11020 e!8452)))

(assert (=> d!2109 (= res!11020 (or (is-Nil!415 l!522) (is-Nil!415 (t!2814 l!522))))))

(assert (=> d!2109 (= (isStrictlySorted!109 l!522) e!8452)))

(declare-fun b!14156 () Bool)

(declare-fun e!8453 () Bool)

(assert (=> b!14156 (= e!8452 e!8453)))

(declare-fun res!11021 () Bool)

(assert (=> b!14156 (=> (not res!11021) (not e!8453))))

(assert (=> b!14156 (= res!11021 (bvslt (_1!259 (h!980 l!522)) (_1!259 (h!980 (t!2814 l!522)))))))

(declare-fun b!14157 () Bool)

(assert (=> b!14157 (= e!8453 (isStrictlySorted!109 (t!2814 l!522)))))

(assert (= (and d!2109 (not res!11020)) b!14156))

(assert (= (and b!14156 res!11021) b!14157))

(declare-fun m!9441 () Bool)

(assert (=> b!14157 m!9441))

(assert (=> start!2090 d!2109))

(declare-fun d!2113 () Bool)

(assert (=> d!2113 (= (isEmpty!101 l!522) (is-Nil!415 l!522))))

(assert (=> b!14134 d!2113))

(declare-fun d!2115 () Bool)

(declare-fun res!11028 () Bool)

(declare-fun e!8460 () Bool)

(assert (=> d!2115 (=> res!11028 e!8460)))

(assert (=> d!2115 (= res!11028 (is-Nil!415 lt!3582))))

(assert (=> d!2115 (= (forall!94 lt!3582 lambda!140) e!8460)))

(declare-fun b!14164 () Bool)

(declare-fun e!8461 () Bool)

(assert (=> b!14164 (= e!8460 e!8461)))

(declare-fun res!11029 () Bool)

(assert (=> b!14164 (=> (not res!11029) (not e!8461))))

(declare-fun dynLambda!88 (Int tuple2!518) Bool)

(assert (=> b!14164 (= res!11029 (dynLambda!88 lambda!140 (h!980 lt!3582)))))

(declare-fun b!14165 () Bool)

(assert (=> b!14165 (= e!8461 (forall!94 (t!2814 lt!3582) lambda!140))))

(assert (= (and d!2115 (not res!11028)) b!14164))

(assert (= (and b!14164 res!11029) b!14165))

(declare-fun b_lambda!887 () Bool)

(assert (=> (not b_lambda!887) (not b!14164)))

(declare-fun m!9445 () Bool)

(assert (=> b!14164 m!9445))

(declare-fun m!9447 () Bool)

(assert (=> b!14165 m!9447))

(assert (=> b!14138 d!2115))

(declare-fun d!2123 () Bool)

(declare-fun res!11030 () Bool)

(declare-fun e!8462 () Bool)

(assert (=> d!2123 (=> res!11030 e!8462)))

(assert (=> d!2123 (= res!11030 (or (is-Nil!415 lt!3582) (is-Nil!415 (t!2814 lt!3582))))))

(assert (=> d!2123 (= (isStrictlySorted!109 lt!3582) e!8462)))

(declare-fun b!14166 () Bool)

(declare-fun e!8463 () Bool)

(assert (=> b!14166 (= e!8462 e!8463)))

(declare-fun res!11031 () Bool)

(assert (=> b!14166 (=> (not res!11031) (not e!8463))))

(assert (=> b!14166 (= res!11031 (bvslt (_1!259 (h!980 lt!3582)) (_1!259 (h!980 (t!2814 lt!3582)))))))

(declare-fun b!14167 () Bool)

(assert (=> b!14167 (= e!8463 (isStrictlySorted!109 (t!2814 lt!3582)))))

(assert (= (and d!2123 (not res!11030)) b!14166))

(assert (= (and b!14166 res!11031) b!14167))

(declare-fun m!9449 () Bool)

(assert (=> b!14167 m!9449))

(assert (=> b!14137 d!2123))

(declare-fun d!2125 () Bool)

(assert (=> d!2125 (= ($colon$colon!20 (filterByValue!15 (t!2814 l!522) value!159) (h!980 l!522)) (Cons!414 (h!980 l!522) (filterByValue!15 (t!2814 l!522) value!159)))))

(assert (=> b!14137 d!2125))

(declare-fun bs!555 () Bool)

(declare-fun b!14239 () Bool)

(assert (= bs!555 (and b!14239 b!14138)))

(declare-fun lambda!148 () Int)

(assert (=> bs!555 (= lambda!148 lambda!140)))

(assert (=> b!14239 true))

(declare-fun b!14233 () Bool)

(declare-fun e!8504 () List!418)

(declare-fun call!408 () List!418)

(assert (=> b!14233 (= e!8504 ($colon$colon!20 call!408 (h!980 (t!2814 l!522))))))

(declare-fun bm!404 () Bool)

(assert (=> bm!404 (= call!408 (filterByValue!15 (t!2814 (t!2814 l!522)) value!159))))

(declare-fun bm!405 () Bool)

(declare-fun call!407 () Bool)

(declare-fun lt!3590 () List!418)

(assert (=> bm!405 (= call!407 (isEmpty!101 lt!3590))))

(declare-fun b!14234 () Bool)

(declare-fun e!8501 () List!418)

(assert (=> b!14234 (= e!8501 Nil!415)))

(declare-fun b!14235 () Bool)

(assert (=> b!14235 (= e!8501 call!408)))

(declare-fun b!14236 () Bool)

(declare-fun e!8502 () Bool)

(assert (=> b!14236 (= e!8502 call!407)))

(declare-fun b!14237 () Bool)

(declare-fun e!8503 () Bool)

(assert (=> b!14237 (= e!8502 e!8503)))

(declare-fun res!11057 () Bool)

(assert (=> b!14237 (= res!11057 call!407)))

(assert (=> b!14237 (=> res!11057 e!8503)))

(declare-fun b!14238 () Bool)

(assert (=> b!14238 (= e!8503 (bvsge (_1!259 (head!790 lt!3590)) (_1!259 (head!790 (t!2814 l!522)))))))

(declare-fun res!11055 () Bool)

(declare-fun e!8505 () Bool)

(assert (=> b!14239 (=> (not res!11055) (not e!8505))))

(assert (=> b!14239 (= res!11055 (forall!94 lt!3590 lambda!148))))

(declare-fun b!14240 () Bool)

(assert (=> b!14240 (= e!8505 e!8502)))

(declare-fun c!1320 () Bool)

(assert (=> b!14240 (= c!1320 (isEmpty!101 (t!2814 l!522)))))

(declare-fun b!14241 () Bool)

(assert (=> b!14241 (= e!8504 e!8501)))

(declare-fun c!1322 () Bool)

(assert (=> b!14241 (= c!1322 (and (is-Cons!414 (t!2814 l!522)) (not (= (_2!259 (h!980 (t!2814 l!522))) value!159))))))

(declare-fun d!2127 () Bool)

(assert (=> d!2127 e!8505))

(declare-fun res!11056 () Bool)

(assert (=> d!2127 (=> (not res!11056) (not e!8505))))

(assert (=> d!2127 (= res!11056 (isStrictlySorted!109 lt!3590))))

(assert (=> d!2127 (= lt!3590 e!8504)))

(declare-fun c!1321 () Bool)

(assert (=> d!2127 (= c!1321 (and (is-Cons!414 (t!2814 l!522)) (= (_2!259 (h!980 (t!2814 l!522))) value!159)))))

(assert (=> d!2127 (isStrictlySorted!109 (t!2814 l!522))))

(assert (=> d!2127 (= (filterByValue!15 (t!2814 l!522) value!159) lt!3590)))

(assert (= (and d!2127 c!1321) b!14233))

(assert (= (and d!2127 (not c!1321)) b!14241))

(assert (= (and b!14241 c!1322) b!14235))

(assert (= (and b!14241 (not c!1322)) b!14234))

(assert (= (or b!14233 b!14235) bm!404))

(assert (= (and d!2127 res!11056) b!14239))

(assert (= (and b!14239 res!11055) b!14240))

(assert (= (and b!14240 c!1320) b!14236))

(assert (= (and b!14240 (not c!1320)) b!14237))

(assert (= (and b!14237 (not res!11057)) b!14238))

(assert (= (or b!14236 b!14237) bm!405))

(declare-fun m!9469 () Bool)

(assert (=> d!2127 m!9469))

(assert (=> d!2127 m!9441))

(declare-fun m!9471 () Bool)

(assert (=> b!14239 m!9471))

(declare-fun m!9473 () Bool)

(assert (=> bm!405 m!9473))

(declare-fun m!9475 () Bool)

(assert (=> b!14233 m!9475))

(declare-fun m!9477 () Bool)

(assert (=> b!14240 m!9477))

(declare-fun m!9479 () Bool)

(assert (=> bm!404 m!9479))

(declare-fun m!9481 () Bool)

(assert (=> b!14238 m!9481))

(declare-fun m!9483 () Bool)

(assert (=> b!14238 m!9483))

(assert (=> b!14137 d!2127))

(declare-fun b!14261 () Bool)

(declare-fun e!8519 () Bool)

(declare-fun tp!2312 () Bool)

(assert (=> b!14261 (= e!8519 (and tp_is_empty!719 tp!2312))))

(assert (=> b!14132 (= tp!2309 e!8519)))

(assert (= (and b!14132 (is-Cons!414 (t!2814 l!522))) b!14261))

(declare-fun b_lambda!891 () Bool)

(assert (= b_lambda!887 (or b!14138 b_lambda!891)))

(declare-fun bs!557 () Bool)

(declare-fun d!2141 () Bool)

(assert (= bs!557 (and d!2141 b!14138)))

(assert (=> bs!557 (= (dynLambda!88 lambda!140 (h!980 lt!3582)) (= (_2!259 (h!980 lt!3582)) value!159))))

(assert (=> b!14164 d!2141))

(push 1)

(assert (not b!14239))

(assert tp_is_empty!719)

(assert (not b_lambda!891))

(assert (not b!14238))

(assert (not bm!404))

(assert (not b!14157))

(assert (not b!14240))

(assert (not b!14167))

(assert (not b!14165))

(assert (not b!14233))

(assert (not bm!405))

(assert (not d!2127))

(assert (not b!14261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!568 () Bool)

(declare-fun b!14326 () Bool)

(assert (= bs!568 (and b!14326 b!14138)))

(declare-fun lambda!152 () Int)

(assert (=> bs!568 (= lambda!152 lambda!140)))

(declare-fun bs!569 () Bool)

(assert (= bs!569 (and b!14326 b!14239)))

(assert (=> bs!569 (= lambda!152 lambda!148)))

(assert (=> b!14326 true))

(declare-fun b!14320 () Bool)

(declare-fun e!8569 () List!418)

(declare-fun call!416 () List!418)

(assert (=> b!14320 (= e!8569 ($colon$colon!20 call!416 (h!980 (t!2814 (t!2814 l!522)))))))

(declare-fun bm!412 () Bool)

(assert (=> bm!412 (= call!416 (filterByValue!15 (t!2814 (t!2814 (t!2814 l!522))) value!159))))

(declare-fun bm!413 () Bool)

(declare-fun call!415 () Bool)

(declare-fun lt!3594 () List!418)

(assert (=> bm!413 (= call!415 (isEmpty!101 lt!3594))))

(declare-fun b!14321 () Bool)

(declare-fun e!8566 () List!418)

(assert (=> b!14321 (= e!8566 Nil!415)))

(declare-fun b!14322 () Bool)

(assert (=> b!14322 (= e!8566 call!416)))

(declare-fun b!14323 () Bool)

(declare-fun e!8567 () Bool)

(assert (=> b!14323 (= e!8567 call!415)))

(declare-fun b!14324 () Bool)

(declare-fun e!8568 () Bool)

(assert (=> b!14324 (= e!8567 e!8568)))

(declare-fun res!11103 () Bool)

(assert (=> b!14324 (= res!11103 call!415)))

(assert (=> b!14324 (=> res!11103 e!8568)))

(declare-fun b!14325 () Bool)

(assert (=> b!14325 (= e!8568 (bvsge (_1!259 (head!790 lt!3594)) (_1!259 (head!790 (t!2814 (t!2814 l!522))))))))

(declare-fun res!11101 () Bool)

(declare-fun e!8570 () Bool)

(assert (=> b!14326 (=> (not res!11101) (not e!8570))))

(assert (=> b!14326 (= res!11101 (forall!94 lt!3594 lambda!152))))

(declare-fun b!14327 () Bool)

(assert (=> b!14327 (= e!8570 e!8567)))

(declare-fun c!1332 () Bool)

(assert (=> b!14327 (= c!1332 (isEmpty!101 (t!2814 (t!2814 l!522))))))

(declare-fun b!14328 () Bool)

(assert (=> b!14328 (= e!8569 e!8566)))

(declare-fun c!1334 () Bool)

(assert (=> b!14328 (= c!1334 (and (is-Cons!414 (t!2814 (t!2814 l!522))) (not (= (_2!259 (h!980 (t!2814 (t!2814 l!522)))) value!159))))))

(declare-fun d!2209 () Bool)

(assert (=> d!2209 e!8570))

(declare-fun res!11102 () Bool)

(assert (=> d!2209 (=> (not res!11102) (not e!8570))))

(assert (=> d!2209 (= res!11102 (isStrictlySorted!109 lt!3594))))

(assert (=> d!2209 (= lt!3594 e!8569)))

(declare-fun c!1333 () Bool)

(assert (=> d!2209 (= c!1333 (and (is-Cons!414 (t!2814 (t!2814 l!522))) (= (_2!259 (h!980 (t!2814 (t!2814 l!522)))) value!159)))))

(assert (=> d!2209 (isStrictlySorted!109 (t!2814 (t!2814 l!522)))))

(assert (=> d!2209 (= (filterByValue!15 (t!2814 (t!2814 l!522)) value!159) lt!3594)))

(assert (= (and d!2209 c!1333) b!14320))

(assert (= (and d!2209 (not c!1333)) b!14328))

(assert (= (and b!14328 c!1334) b!14322))

(assert (= (and b!14328 (not c!1334)) b!14321))

(assert (= (or b!14320 b!14322) bm!412))

(assert (= (and d!2209 res!11102) b!14326))

(assert (= (and b!14326 res!11101) b!14327))

(assert (= (and b!14327 c!1332) b!14323))

(assert (= (and b!14327 (not c!1332)) b!14324))

(assert (= (and b!14324 (not res!11103)) b!14325))

(assert (= (or b!14323 b!14324) bm!413))

(declare-fun m!9571 () Bool)

(assert (=> d!2209 m!9571))

(declare-fun m!9573 () Bool)

(assert (=> d!2209 m!9573))

(declare-fun m!9575 () Bool)

(assert (=> b!14326 m!9575))

(declare-fun m!9577 () Bool)

(assert (=> bm!413 m!9577))

(declare-fun m!9579 () Bool)

(assert (=> b!14320 m!9579))

(declare-fun m!9581 () Bool)

(assert (=> b!14327 m!9581))

(declare-fun m!9583 () Bool)

(assert (=> bm!412 m!9583))

(declare-fun m!9585 () Bool)

(assert (=> b!14325 m!9585))

(declare-fun m!9587 () Bool)

(assert (=> b!14325 m!9587))

(assert (=> bm!404 d!2209))

(declare-fun d!2211 () Bool)

(assert (=> d!2211 (= (isEmpty!101 lt!3590) (is-Nil!415 lt!3590))))

(assert (=> bm!405 d!2211))

(declare-fun d!2213 () Bool)

(assert (=> d!2213 (= (head!790 lt!3590) (h!980 lt!3590))))

(assert (=> b!14238 d!2213))

(declare-fun d!2215 () Bool)

(assert (=> d!2215 (= (head!790 (t!2814 l!522)) (h!980 (t!2814 l!522)))))

(assert (=> b!14238 d!2215))

(declare-fun d!2217 () Bool)

(assert (=> d!2217 (= ($colon$colon!20 call!408 (h!980 (t!2814 l!522))) (Cons!414 (h!980 (t!2814 l!522)) call!408))))

(assert (=> b!14233 d!2217))

(declare-fun d!2219 () Bool)

(declare-fun res!11104 () Bool)

(declare-fun e!8571 () Bool)

(assert (=> d!2219 (=> res!11104 e!8571)))

(assert (=> d!2219 (= res!11104 (is-Nil!415 (t!2814 lt!3582)))))

(assert (=> d!2219 (= (forall!94 (t!2814 lt!3582) lambda!140) e!8571)))

(declare-fun b!14329 () Bool)

(declare-fun e!8572 () Bool)

(assert (=> b!14329 (= e!8571 e!8572)))

(declare-fun res!11105 () Bool)

(assert (=> b!14329 (=> (not res!11105) (not e!8572))))

(assert (=> b!14329 (= res!11105 (dynLambda!88 lambda!140 (h!980 (t!2814 lt!3582))))))

(declare-fun b!14330 () Bool)

(assert (=> b!14330 (= e!8572 (forall!94 (t!2814 (t!2814 lt!3582)) lambda!140))))

(assert (= (and d!2219 (not res!11104)) b!14329))

(assert (= (and b!14329 res!11105) b!14330))

(declare-fun b_lambda!915 () Bool)

(assert (=> (not b_lambda!915) (not b!14329)))

(declare-fun m!9589 () Bool)

(assert (=> b!14329 m!9589))

(declare-fun m!9591 () Bool)

(assert (=> b!14330 m!9591))

(assert (=> b!14165 d!2219))

(declare-fun d!2221 () Bool)

(assert (=> d!2221 (= (isEmpty!101 (t!2814 l!522)) (is-Nil!415 (t!2814 l!522)))))

(assert (=> b!14240 d!2221))

(declare-fun d!2223 () Bool)

(declare-fun res!11106 () Bool)

(declare-fun e!8573 () Bool)

(assert (=> d!2223 (=> res!11106 e!8573)))

(assert (=> d!2223 (= res!11106 (is-Nil!415 lt!3590))))

(assert (=> d!2223 (= (forall!94 lt!3590 lambda!148) e!8573)))

(declare-fun b!14331 () Bool)

(declare-fun e!8574 () Bool)

(assert (=> b!14331 (= e!8573 e!8574)))

(declare-fun res!11107 () Bool)

(assert (=> b!14331 (=> (not res!11107) (not e!8574))))

(assert (=> b!14331 (= res!11107 (dynLambda!88 lambda!148 (h!980 lt!3590)))))

(declare-fun b!14332 () Bool)

(assert (=> b!14332 (= e!8574 (forall!94 (t!2814 lt!3590) lambda!148))))

(assert (= (and d!2223 (not res!11106)) b!14331))

(assert (= (and b!14331 res!11107) b!14332))

(declare-fun b_lambda!917 () Bool)

(assert (=> (not b_lambda!917) (not b!14331)))

(declare-fun m!9593 () Bool)

(assert (=> b!14331 m!9593))

(declare-fun m!9595 () Bool)

(assert (=> b!14332 m!9595))

(assert (=> b!14239 d!2223))

(declare-fun d!2225 () Bool)

(declare-fun res!11108 () Bool)

(declare-fun e!8575 () Bool)

(assert (=> d!2225 (=> res!11108 e!8575)))

(assert (=> d!2225 (= res!11108 (or (is-Nil!415 lt!3590) (is-Nil!415 (t!2814 lt!3590))))))

(assert (=> d!2225 (= (isStrictlySorted!109 lt!3590) e!8575)))

(declare-fun b!14333 () Bool)

(declare-fun e!8576 () Bool)

(assert (=> b!14333 (= e!8575 e!8576)))

(declare-fun res!11109 () Bool)

(assert (=> b!14333 (=> (not res!11109) (not e!8576))))

(assert (=> b!14333 (= res!11109 (bvslt (_1!259 (h!980 lt!3590)) (_1!259 (h!980 (t!2814 lt!3590)))))))

(declare-fun b!14334 () Bool)

(assert (=> b!14334 (= e!8576 (isStrictlySorted!109 (t!2814 lt!3590)))))

(assert (= (and d!2225 (not res!11108)) b!14333))

(assert (= (and b!14333 res!11109) b!14334))

(declare-fun m!9597 () Bool)

(assert (=> b!14334 m!9597))

(assert (=> d!2127 d!2225))

(declare-fun d!2227 () Bool)

(declare-fun res!11110 () Bool)

(declare-fun e!8577 () Bool)

(assert (=> d!2227 (=> res!11110 e!8577)))

(assert (=> d!2227 (= res!11110 (or (is-Nil!415 (t!2814 l!522)) (is-Nil!415 (t!2814 (t!2814 l!522)))))))

(assert (=> d!2227 (= (isStrictlySorted!109 (t!2814 l!522)) e!8577)))

(declare-fun b!14335 () Bool)

(declare-fun e!8578 () Bool)

(assert (=> b!14335 (= e!8577 e!8578)))

(declare-fun res!11111 () Bool)

(assert (=> b!14335 (=> (not res!11111) (not e!8578))))

(assert (=> b!14335 (= res!11111 (bvslt (_1!259 (h!980 (t!2814 l!522))) (_1!259 (h!980 (t!2814 (t!2814 l!522))))))))

(declare-fun b!14336 () Bool)

(assert (=> b!14336 (= e!8578 (isStrictlySorted!109 (t!2814 (t!2814 l!522))))))

(assert (= (and d!2227 (not res!11110)) b!14335))

(assert (= (and b!14335 res!11111) b!14336))

(assert (=> b!14336 m!9573))

(assert (=> d!2127 d!2227))

(declare-fun d!2229 () Bool)

(declare-fun res!11112 () Bool)

(declare-fun e!8579 () Bool)

(assert (=> d!2229 (=> res!11112 e!8579)))

(assert (=> d!2229 (= res!11112 (or (is-Nil!415 (t!2814 lt!3582)) (is-Nil!415 (t!2814 (t!2814 lt!3582)))))))

(assert (=> d!2229 (= (isStrictlySorted!109 (t!2814 lt!3582)) e!8579)))

(declare-fun b!14337 () Bool)

(declare-fun e!8580 () Bool)

(assert (=> b!14337 (= e!8579 e!8580)))

(declare-fun res!11113 () Bool)

(assert (=> b!14337 (=> (not res!11113) (not e!8580))))

(assert (=> b!14337 (= res!11113 (bvslt (_1!259 (h!980 (t!2814 lt!3582))) (_1!259 (h!980 (t!2814 (t!2814 lt!3582))))))))

(declare-fun b!14338 () Bool)

(assert (=> b!14338 (= e!8580 (isStrictlySorted!109 (t!2814 (t!2814 lt!3582))))))

(assert (= (and d!2229 (not res!11112)) b!14337))

(assert (= (and b!14337 res!11113) b!14338))

(declare-fun m!9599 () Bool)

(assert (=> b!14338 m!9599))

(assert (=> b!14167 d!2229))

(assert (=> b!14157 d!2227))

(declare-fun b!14339 () Bool)

(declare-fun e!8581 () Bool)

(declare-fun tp!2321 () Bool)

(assert (=> b!14339 (= e!8581 (and tp_is_empty!719 tp!2321))))

(assert (=> b!14261 (= tp!2312 e!8581)))

(assert (= (and b!14261 (is-Cons!414 (t!2814 (t!2814 l!522)))) b!14339))

(declare-fun b_lambda!919 () Bool)

(assert (= b_lambda!917 (or b!14239 b_lambda!919)))

(declare-fun bs!570 () Bool)

(declare-fun d!2231 () Bool)

(assert (= bs!570 (and d!2231 b!14239)))

(assert (=> bs!570 (= (dynLambda!88 lambda!148 (h!980 lt!3590)) (= (_2!259 (h!980 lt!3590)) value!159))))

(assert (=> b!14331 d!2231))

(declare-fun b_lambda!921 () Bool)

(assert (= b_lambda!915 (or b!14138 b_lambda!921)))

(declare-fun bs!571 () Bool)

(declare-fun d!2233 () Bool)

(assert (= bs!571 (and d!2233 b!14138)))

(assert (=> bs!571 (= (dynLambda!88 lambda!140 (h!980 (t!2814 lt!3582))) (= (_2!259 (h!980 (t!2814 lt!3582))) value!159))))

(assert (=> b!14329 d!2233))

(push 1)

(assert tp_is_empty!719)

(assert (not b!14327))

(assert (not b!14338))

(assert (not b!14339))

(assert (not b!14336))

(assert (not b!14320))

(assert (not b!14334))

(assert (not b!14326))

(assert (not bm!413))

(assert (not b_lambda!891))

(assert (not b_lambda!919))

(assert (not d!2209))

(assert (not b_lambda!921))

(assert (not b!14332))

(assert (not b!14325))

(assert (not bm!412))

(assert (not b!14330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

