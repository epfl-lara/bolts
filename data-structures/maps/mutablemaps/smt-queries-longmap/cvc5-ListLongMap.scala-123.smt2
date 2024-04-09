; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2086 () Bool)

(assert start!2086)

(declare-fun b!14086 () Bool)

(assert (=> b!14086 true))

(declare-fun b!14080 () Bool)

(declare-fun e!8405 () Bool)

(declare-datatypes ((B!536 0))(
  ( (B!537 (val!366 Int)) )
))
(declare-datatypes ((tuple2!514 0))(
  ( (tuple2!515 (_1!257 (_ BitVec 64)) (_2!257 B!536)) )
))
(declare-datatypes ((List!416 0))(
  ( (Nil!413) (Cons!412 (h!978 tuple2!514) (t!2812 List!416)) )
))
(declare-fun lt!3576 () List!416)

(declare-fun l!522 () List!416)

(declare-fun head!788 (List!416) tuple2!514)

(assert (=> b!14080 (= e!8405 (bvslt (_1!257 (head!788 lt!3576)) (_1!257 (head!788 l!522))))))

(declare-fun b!14081 () Bool)

(declare-fun res!10971 () Bool)

(declare-fun e!8406 () Bool)

(assert (=> b!14081 (=> (not res!10971) (not e!8406))))

(declare-fun value!159 () B!536)

(assert (=> b!14081 (= res!10971 (and (is-Cons!412 l!522) (= (_2!257 (h!978 l!522)) value!159)))))

(declare-fun b!14082 () Bool)

(declare-fun e!8403 () Bool)

(assert (=> b!14082 (= e!8403 e!8405)))

(declare-fun res!10975 () Bool)

(declare-fun call!386 () Bool)

(assert (=> b!14082 (= res!10975 (not call!386))))

(assert (=> b!14082 (=> (not res!10975) (not e!8405))))

(declare-fun bm!383 () Bool)

(declare-fun isEmpty!99 (List!416) Bool)

(assert (=> bm!383 (= call!386 (isEmpty!99 lt!3576))))

(declare-fun b!14083 () Bool)

(declare-fun e!8404 () Bool)

(assert (=> b!14083 (= e!8404 e!8403)))

(declare-fun c!1292 () Bool)

(assert (=> b!14083 (= c!1292 (isEmpty!99 l!522))))

(declare-fun b!14085 () Bool)

(assert (=> b!14085 (= e!8403 (not call!386))))

(declare-fun res!10972 () Bool)

(assert (=> b!14086 (=> res!10972 e!8404)))

(declare-fun lambda!134 () Int)

(declare-fun forall!92 (List!416 Int) Bool)

(assert (=> b!14086 (= res!10972 (not (forall!92 lt!3576 lambda!134)))))

(declare-fun b!14087 () Bool)

(declare-fun e!8407 () Bool)

(declare-fun tp_is_empty!715 () Bool)

(declare-fun tp!2303 () Bool)

(assert (=> b!14087 (= e!8407 (and tp_is_empty!715 tp!2303))))

(declare-fun b!14084 () Bool)

(assert (=> b!14084 (= e!8406 e!8404)))

(declare-fun res!10973 () Bool)

(assert (=> b!14084 (=> res!10973 e!8404)))

(declare-fun isStrictlySorted!107 (List!416) Bool)

(assert (=> b!14084 (= res!10973 (not (isStrictlySorted!107 lt!3576)))))

(declare-fun $colon$colon!18 (List!416 tuple2!514) List!416)

(declare-fun filterByValue!13 (List!416 B!536) List!416)

(assert (=> b!14084 (= lt!3576 ($colon$colon!18 (filterByValue!13 (t!2812 l!522) value!159) (h!978 l!522)))))

(declare-fun res!10974 () Bool)

(assert (=> start!2086 (=> (not res!10974) (not e!8406))))

(assert (=> start!2086 (= res!10974 (isStrictlySorted!107 l!522))))

(assert (=> start!2086 e!8406))

(assert (=> start!2086 e!8407))

(assert (=> start!2086 tp_is_empty!715))

(assert (= (and start!2086 res!10974) b!14081))

(assert (= (and b!14081 res!10971) b!14084))

(assert (= (and b!14084 (not res!10973)) b!14086))

(assert (= (and b!14086 (not res!10972)) b!14083))

(assert (= (and b!14083 c!1292) b!14085))

(assert (= (and b!14083 (not c!1292)) b!14082))

(assert (= (and b!14082 res!10975) b!14080))

(assert (= (or b!14085 b!14082) bm!383))

(assert (= (and start!2086 (is-Cons!412 l!522)) b!14087))

(declare-fun m!9385 () Bool)

(assert (=> b!14083 m!9385))

(declare-fun m!9387 () Bool)

(assert (=> start!2086 m!9387))

(declare-fun m!9389 () Bool)

(assert (=> b!14084 m!9389))

(declare-fun m!9391 () Bool)

(assert (=> b!14084 m!9391))

(assert (=> b!14084 m!9391))

(declare-fun m!9393 () Bool)

(assert (=> b!14084 m!9393))

(declare-fun m!9395 () Bool)

(assert (=> bm!383 m!9395))

(declare-fun m!9397 () Bool)

(assert (=> b!14080 m!9397))

(declare-fun m!9399 () Bool)

(assert (=> b!14080 m!9399))

(declare-fun m!9401 () Bool)

(assert (=> b!14086 m!9401))

(push 1)

(assert tp_is_empty!715)

(assert (not b!14080))

(assert (not b!14086))

(assert (not b!14084))

(assert (not start!2086))

(assert (not b!14083))

(assert (not b!14087))

(assert (not bm!383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2103 () Bool)

(declare-fun res!11018 () Bool)

(declare-fun e!8450 () Bool)

(assert (=> d!2103 (=> res!11018 e!8450)))

(assert (=> d!2103 (= res!11018 (or (is-Nil!413 lt!3576) (is-Nil!413 (t!2812 lt!3576))))))

(assert (=> d!2103 (= (isStrictlySorted!107 lt!3576) e!8450)))

(declare-fun b!14154 () Bool)

(declare-fun e!8451 () Bool)

(assert (=> b!14154 (= e!8450 e!8451)))

(declare-fun res!11019 () Bool)

(assert (=> b!14154 (=> (not res!11019) (not e!8451))))

(assert (=> b!14154 (= res!11019 (bvslt (_1!257 (h!978 lt!3576)) (_1!257 (h!978 (t!2812 lt!3576)))))))

(declare-fun b!14155 () Bool)

(assert (=> b!14155 (= e!8451 (isStrictlySorted!107 (t!2812 lt!3576)))))

(assert (= (and d!2103 (not res!11018)) b!14154))

(assert (= (and b!14154 res!11019) b!14155))

(declare-fun m!9439 () Bool)

(assert (=> b!14155 m!9439))

(assert (=> b!14084 d!2103))

(declare-fun d!2111 () Bool)

(assert (=> d!2111 (= ($colon$colon!18 (filterByValue!13 (t!2812 l!522) value!159) (h!978 l!522)) (Cons!412 (h!978 l!522) (filterByValue!13 (t!2812 l!522) value!159)))))

(assert (=> b!14084 d!2111))

(declare-fun bs!554 () Bool)

(declare-fun b!14212 () Bool)

(assert (= bs!554 (and b!14212 b!14086)))

(declare-fun lambda!147 () Int)

(assert (=> bs!554 (= lambda!147 lambda!134)))

(assert (=> b!14212 true))

(declare-fun b!14206 () Bool)

(declare-fun e!8489 () List!416)

(declare-fun e!8486 () List!416)

(assert (=> b!14206 (= e!8489 e!8486)))

(declare-fun c!1313 () Bool)

(assert (=> b!14206 (= c!1313 (and (is-Cons!412 (t!2812 l!522)) (not (= (_2!257 (h!978 (t!2812 l!522))) value!159))))))

(declare-fun b!14207 () Bool)

(assert (=> b!14207 (= e!8486 Nil!413)))

(declare-fun b!14208 () Bool)

(declare-fun e!8488 () Bool)

(declare-fun e!8490 () Bool)

(assert (=> b!14208 (= e!8488 e!8490)))

(declare-fun c!1314 () Bool)

(assert (=> b!14208 (= c!1314 (isEmpty!99 (t!2812 l!522)))))

(declare-fun bm!398 () Bool)

(declare-fun call!401 () List!416)

(assert (=> bm!398 (= call!401 (filterByValue!13 (t!2812 (t!2812 l!522)) value!159))))

(declare-fun b!14209 () Bool)

(assert (=> b!14209 (= e!8486 call!401)))

(declare-fun bm!399 () Bool)

(declare-fun call!402 () Bool)

(declare-fun lt!3589 () List!416)

(assert (=> bm!399 (= call!402 (isEmpty!99 lt!3589))))

(declare-fun b!14210 () Bool)

(assert (=> b!14210 (= e!8489 ($colon$colon!18 call!401 (h!978 (t!2812 l!522))))))

(declare-fun d!2117 () Bool)

(assert (=> d!2117 e!8488))

(declare-fun res!11046 () Bool)

(assert (=> d!2117 (=> (not res!11046) (not e!8488))))

(assert (=> d!2117 (= res!11046 (isStrictlySorted!107 lt!3589))))

(assert (=> d!2117 (= lt!3589 e!8489)))

(declare-fun c!1315 () Bool)

(assert (=> d!2117 (= c!1315 (and (is-Cons!412 (t!2812 l!522)) (= (_2!257 (h!978 (t!2812 l!522))) value!159)))))

(assert (=> d!2117 (isStrictlySorted!107 (t!2812 l!522))))

(assert (=> d!2117 (= (filterByValue!13 (t!2812 l!522) value!159) lt!3589)))

(declare-fun b!14211 () Bool)

(declare-fun e!8487 () Bool)

(assert (=> b!14211 (= e!8490 e!8487)))

(declare-fun res!11047 () Bool)

(assert (=> b!14211 (= res!11047 call!402)))

(assert (=> b!14211 (=> res!11047 e!8487)))

(declare-fun res!11048 () Bool)

(assert (=> b!14212 (=> (not res!11048) (not e!8488))))

(assert (=> b!14212 (= res!11048 (forall!92 lt!3589 lambda!147))))

(declare-fun b!14213 () Bool)

(assert (=> b!14213 (= e!8490 call!402)))

(declare-fun b!14214 () Bool)

(assert (=> b!14214 (= e!8487 (bvsge (_1!257 (head!788 lt!3589)) (_1!257 (head!788 (t!2812 l!522)))))))

(assert (= (and d!2117 c!1315) b!14210))

(assert (= (and d!2117 (not c!1315)) b!14206))

(assert (= (and b!14206 c!1313) b!14209))

(assert (= (and b!14206 (not c!1313)) b!14207))

(assert (= (or b!14210 b!14209) bm!398))

(assert (= (and d!2117 res!11046) b!14212))

(assert (= (and b!14212 res!11048) b!14208))

(assert (= (and b!14208 c!1314) b!14213))

(assert (= (and b!14208 (not c!1314)) b!14211))

(assert (= (and b!14211 (not res!11047)) b!14214))

(assert (= (or b!14213 b!14211) bm!399))

(declare-fun m!9451 () Bool)

(assert (=> b!14210 m!9451))

(declare-fun m!9453 () Bool)

(assert (=> d!2117 m!9453))

(declare-fun m!9455 () Bool)

(assert (=> d!2117 m!9455))

(declare-fun m!9457 () Bool)

(assert (=> bm!399 m!9457))

(declare-fun m!9459 () Bool)

(assert (=> bm!398 m!9459))

(declare-fun m!9461 () Bool)

(assert (=> b!14212 m!9461))

(declare-fun m!9463 () Bool)

(assert (=> b!14208 m!9463))

(declare-fun m!9465 () Bool)

(assert (=> b!14214 m!9465))

(declare-fun m!9467 () Bool)

(assert (=> b!14214 m!9467))

(assert (=> b!14084 d!2117))

(declare-fun d!2129 () Bool)

(assert (=> d!2129 (= (head!788 lt!3576) (h!978 lt!3576))))

(assert (=> b!14080 d!2129))

(declare-fun d!2131 () Bool)

(assert (=> d!2131 (= (head!788 l!522) (h!978 l!522))))

(assert (=> b!14080 d!2131))

(declare-fun d!2133 () Bool)

(assert (=> d!2133 (= (isEmpty!99 l!522) (is-Nil!413 l!522))))

(assert (=> b!14083 d!2133))

(declare-fun d!2135 () Bool)

(assert (=> d!2135 (= (isEmpty!99 lt!3576) (is-Nil!413 lt!3576))))

(assert (=> bm!383 d!2135))

(declare-fun d!2137 () Bool)

(declare-fun res!11053 () Bool)

(declare-fun e!8499 () Bool)

(assert (=> d!2137 (=> res!11053 e!8499)))

(assert (=> d!2137 (= res!11053 (or (is-Nil!413 l!522) (is-Nil!413 (t!2812 l!522))))))

(assert (=> d!2137 (= (isStrictlySorted!107 l!522) e!8499)))

(declare-fun b!14231 () Bool)

(declare-fun e!8500 () Bool)

(assert (=> b!14231 (= e!8499 e!8500)))

(declare-fun res!11054 () Bool)

(assert (=> b!14231 (=> (not res!11054) (not e!8500))))

(assert (=> b!14231 (= res!11054 (bvslt (_1!257 (h!978 l!522)) (_1!257 (h!978 (t!2812 l!522)))))))

(declare-fun b!14232 () Bool)

(assert (=> b!14232 (= e!8500 (isStrictlySorted!107 (t!2812 l!522)))))

(assert (= (and d!2137 (not res!11053)) b!14231))

(assert (= (and b!14231 res!11054) b!14232))

(assert (=> b!14232 m!9455))

(assert (=> start!2086 d!2137))

(declare-fun d!2139 () Bool)

(declare-fun res!11065 () Bool)

(declare-fun e!8517 () Bool)

(assert (=> d!2139 (=> res!11065 e!8517)))

(assert (=> d!2139 (= res!11065 (is-Nil!413 lt!3576))))

(assert (=> d!2139 (= (forall!92 lt!3576 lambda!134) e!8517)))

(declare-fun b!14259 () Bool)

(declare-fun e!8518 () Bool)

(assert (=> b!14259 (= e!8517 e!8518)))

(declare-fun res!11066 () Bool)

(assert (=> b!14259 (=> (not res!11066) (not e!8518))))

(declare-fun dynLambda!89 (Int tuple2!514) Bool)

(assert (=> b!14259 (= res!11066 (dynLambda!89 lambda!134 (h!978 lt!3576)))))

(declare-fun b!14260 () Bool)

(assert (=> b!14260 (= e!8518 (forall!92 (t!2812 lt!3576) lambda!134))))

(assert (= (and d!2139 (not res!11065)) b!14259))

(assert (= (and b!14259 res!11066) b!14260))

(declare-fun b_lambda!889 () Bool)

(assert (=> (not b_lambda!889) (not b!14259)))

(declare-fun m!9485 () Bool)

(assert (=> b!14259 m!9485))

(declare-fun m!9487 () Bool)

(assert (=> b!14260 m!9487))

(assert (=> b!14086 d!2139))

(declare-fun b!14266 () Bool)

(declare-fun e!8522 () Bool)

(declare-fun tp!2315 () Bool)

(assert (=> b!14266 (= e!8522 (and tp_is_empty!715 tp!2315))))

(assert (=> b!14087 (= tp!2303 e!8522)))

(assert (= (and b!14087 (is-Cons!412 (t!2812 l!522))) b!14266))

(declare-fun b_lambda!893 () Bool)

(assert (= b_lambda!889 (or b!14086 b_lambda!893)))

(declare-fun bs!558 () Bool)

(declare-fun d!2145 () Bool)

(assert (= bs!558 (and d!2145 b!14086)))

(assert (=> bs!558 (= (dynLambda!89 lambda!134 (h!978 lt!3576)) (= (_2!257 (h!978 lt!3576)) value!159))))

(assert (=> b!14259 d!2145))

(push 1)

(assert (not b!14260))

(assert tp_is_empty!715)

(assert (not b!14232))

(assert (not bm!399))

(assert (not b!14208))

(assert (not bm!398))

(assert (not b!14212))

(assert (not d!2117))

(assert (not b!14266))

(assert (not b!14214))

(assert (not b!14155))

(assert (not b_lambda!893))

(assert (not b!14210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2183 () Bool)

(assert (=> d!2183 (= (head!788 lt!3589) (h!978 lt!3589))))

(assert (=> b!14214 d!2183))

(declare-fun d!2185 () Bool)

(assert (=> d!2185 (= (head!788 (t!2812 l!522)) (h!978 (t!2812 l!522)))))

(assert (=> b!14214 d!2185))

(declare-fun d!2187 () Bool)

(declare-fun res!11088 () Bool)

(declare-fun e!8550 () Bool)

(assert (=> d!2187 (=> res!11088 e!8550)))

(assert (=> d!2187 (= res!11088 (or (is-Nil!413 (t!2812 l!522)) (is-Nil!413 (t!2812 (t!2812 l!522)))))))

(assert (=> d!2187 (= (isStrictlySorted!107 (t!2812 l!522)) e!8550)))

(declare-fun b!14300 () Bool)

(declare-fun e!8551 () Bool)

(assert (=> b!14300 (= e!8550 e!8551)))

(declare-fun res!11089 () Bool)

(assert (=> b!14300 (=> (not res!11089) (not e!8551))))

(assert (=> b!14300 (= res!11089 (bvslt (_1!257 (h!978 (t!2812 l!522))) (_1!257 (h!978 (t!2812 (t!2812 l!522))))))))

(declare-fun b!14301 () Bool)

(assert (=> b!14301 (= e!8551 (isStrictlySorted!107 (t!2812 (t!2812 l!522))))))

(assert (= (and d!2187 (not res!11088)) b!14300))

(assert (= (and b!14300 res!11089) b!14301))

(declare-fun m!9541 () Bool)

(assert (=> b!14301 m!9541))

(assert (=> b!14232 d!2187))

(declare-fun d!2189 () Bool)

(assert (=> d!2189 (= (isEmpty!99 lt!3589) (is-Nil!413 lt!3589))))

(assert (=> bm!399 d!2189))

(declare-fun bs!564 () Bool)

(declare-fun b!14308 () Bool)

(assert (= bs!564 (and b!14308 b!14086)))

(declare-fun lambda!151 () Int)

(assert (=> bs!564 (= lambda!151 lambda!134)))

(declare-fun bs!565 () Bool)

(assert (= bs!565 (and b!14308 b!14212)))

(assert (=> bs!565 (= lambda!151 lambda!147)))

(assert (=> b!14308 true))

(declare-fun b!14302 () Bool)

(declare-fun e!8555 () List!416)

(declare-fun e!8552 () List!416)

(assert (=> b!14302 (= e!8555 e!8552)))

(declare-fun c!1329 () Bool)

(assert (=> b!14302 (= c!1329 (and (is-Cons!412 (t!2812 (t!2812 l!522))) (not (= (_2!257 (h!978 (t!2812 (t!2812 l!522)))) value!159))))))

(declare-fun b!14303 () Bool)

(assert (=> b!14303 (= e!8552 Nil!413)))

(declare-fun b!14304 () Bool)

(declare-fun e!8554 () Bool)

(declare-fun e!8556 () Bool)

(assert (=> b!14304 (= e!8554 e!8556)))

(declare-fun c!1330 () Bool)

(assert (=> b!14304 (= c!1330 (isEmpty!99 (t!2812 (t!2812 l!522))))))

(declare-fun bm!410 () Bool)

(declare-fun call!413 () List!416)

(assert (=> bm!410 (= call!413 (filterByValue!13 (t!2812 (t!2812 (t!2812 l!522))) value!159))))

(declare-fun b!14305 () Bool)

(assert (=> b!14305 (= e!8552 call!413)))

(declare-fun bm!411 () Bool)

(declare-fun call!414 () Bool)

(declare-fun lt!3593 () List!416)

(assert (=> bm!411 (= call!414 (isEmpty!99 lt!3593))))

(declare-fun b!14306 () Bool)

(assert (=> b!14306 (= e!8555 ($colon$colon!18 call!413 (h!978 (t!2812 (t!2812 l!522)))))))

(declare-fun d!2191 () Bool)

(assert (=> d!2191 e!8554))

(declare-fun res!11090 () Bool)

(assert (=> d!2191 (=> (not res!11090) (not e!8554))))

(assert (=> d!2191 (= res!11090 (isStrictlySorted!107 lt!3593))))

(assert (=> d!2191 (= lt!3593 e!8555)))

(declare-fun c!1331 () Bool)

(assert (=> d!2191 (= c!1331 (and (is-Cons!412 (t!2812 (t!2812 l!522))) (= (_2!257 (h!978 (t!2812 (t!2812 l!522)))) value!159)))))

(assert (=> d!2191 (isStrictlySorted!107 (t!2812 (t!2812 l!522)))))

(assert (=> d!2191 (= (filterByValue!13 (t!2812 (t!2812 l!522)) value!159) lt!3593)))

(declare-fun b!14307 () Bool)

(declare-fun e!8553 () Bool)

(assert (=> b!14307 (= e!8556 e!8553)))

(declare-fun res!11091 () Bool)

(assert (=> b!14307 (= res!11091 call!414)))

(assert (=> b!14307 (=> res!11091 e!8553)))

(declare-fun res!11092 () Bool)

(assert (=> b!14308 (=> (not res!11092) (not e!8554))))

(assert (=> b!14308 (= res!11092 (forall!92 lt!3593 lambda!151))))

(declare-fun b!14309 () Bool)

(assert (=> b!14309 (= e!8556 call!414)))

(declare-fun b!14310 () Bool)

(assert (=> b!14310 (= e!8553 (bvsge (_1!257 (head!788 lt!3593)) (_1!257 (head!788 (t!2812 (t!2812 l!522))))))))

(assert (= (and d!2191 c!1331) b!14306))

(assert (= (and d!2191 (not c!1331)) b!14302))

(assert (= (and b!14302 c!1329) b!14305))

(assert (= (and b!14302 (not c!1329)) b!14303))

(assert (= (or b!14306 b!14305) bm!410))

(assert (= (and d!2191 res!11090) b!14308))

(assert (= (and b!14308 res!11092) b!14304))

(assert (= (and b!14304 c!1330) b!14309))

(assert (= (and b!14304 (not c!1330)) b!14307))

(assert (= (and b!14307 (not res!11091)) b!14310))

(assert (= (or b!14309 b!14307) bm!411))

(declare-fun m!9543 () Bool)

(assert (=> b!14306 m!9543))

(declare-fun m!9545 () Bool)

(assert (=> d!2191 m!9545))

(assert (=> d!2191 m!9541))

(declare-fun m!9547 () Bool)

(assert (=> bm!411 m!9547))

(declare-fun m!9549 () Bool)

(assert (=> bm!410 m!9549))

(declare-fun m!9551 () Bool)

(assert (=> b!14308 m!9551))

(declare-fun m!9553 () Bool)

(assert (=> b!14304 m!9553))

(declare-fun m!9555 () Bool)

(assert (=> b!14310 m!9555))

(declare-fun m!9557 () Bool)

(assert (=> b!14310 m!9557))

(assert (=> bm!398 d!2191))

(declare-fun d!2193 () Bool)

(declare-fun res!11093 () Bool)

(declare-fun e!8557 () Bool)

(assert (=> d!2193 (=> res!11093 e!8557)))

(assert (=> d!2193 (= res!11093 (is-Nil!413 (t!2812 lt!3576)))))

(assert (=> d!2193 (= (forall!92 (t!2812 lt!3576) lambda!134) e!8557)))

(declare-fun b!14311 () Bool)

(declare-fun e!8558 () Bool)

(assert (=> b!14311 (= e!8557 e!8558)))

(declare-fun res!11094 () Bool)

(assert (=> b!14311 (=> (not res!11094) (not e!8558))))

(assert (=> b!14311 (= res!11094 (dynLambda!89 lambda!134 (h!978 (t!2812 lt!3576))))))

(declare-fun b!14312 () Bool)

(assert (=> b!14312 (= e!8558 (forall!92 (t!2812 (t!2812 lt!3576)) lambda!134))))

(assert (= (and d!2193 (not res!11093)) b!14311))

(assert (= (and b!14311 res!11094) b!14312))

(declare-fun b_lambda!907 () Bool)

(assert (=> (not b_lambda!907) (not b!14311)))

(declare-fun m!9559 () Bool)

(assert (=> b!14311 m!9559))

(declare-fun m!9561 () Bool)

(assert (=> b!14312 m!9561))

(assert (=> b!14260 d!2193))

(declare-fun d!2195 () Bool)

(assert (=> d!2195 (= (isEmpty!99 (t!2812 l!522)) (is-Nil!413 (t!2812 l!522)))))

(assert (=> b!14208 d!2195))

(declare-fun d!2197 () Bool)

(declare-fun res!11095 () Bool)

(declare-fun e!8559 () Bool)

(assert (=> d!2197 (=> res!11095 e!8559)))

(assert (=> d!2197 (= res!11095 (or (is-Nil!413 (t!2812 lt!3576)) (is-Nil!413 (t!2812 (t!2812 lt!3576)))))))

(assert (=> d!2197 (= (isStrictlySorted!107 (t!2812 lt!3576)) e!8559)))

(declare-fun b!14313 () Bool)

(declare-fun e!8560 () Bool)

(assert (=> b!14313 (= e!8559 e!8560)))

(declare-fun res!11096 () Bool)

(assert (=> b!14313 (=> (not res!11096) (not e!8560))))

(assert (=> b!14313 (= res!11096 (bvslt (_1!257 (h!978 (t!2812 lt!3576))) (_1!257 (h!978 (t!2812 (t!2812 lt!3576))))))))

(declare-fun b!14314 () Bool)

(assert (=> b!14314 (= e!8560 (isStrictlySorted!107 (t!2812 (t!2812 lt!3576))))))

(assert (= (and d!2197 (not res!11095)) b!14313))

(assert (= (and b!14313 res!11096) b!14314))

(declare-fun m!9563 () Bool)

(assert (=> b!14314 m!9563))

(assert (=> b!14155 d!2197))

(declare-fun d!2199 () Bool)

(declare-fun res!11097 () Bool)

(declare-fun e!8561 () Bool)

(assert (=> d!2199 (=> res!11097 e!8561)))

(assert (=> d!2199 (= res!11097 (is-Nil!413 lt!3589))))

(assert (=> d!2199 (= (forall!92 lt!3589 lambda!147) e!8561)))

(declare-fun b!14315 () Bool)

(declare-fun e!8562 () Bool)

(assert (=> b!14315 (= e!8561 e!8562)))

(declare-fun res!11098 () Bool)

(assert (=> b!14315 (=> (not res!11098) (not e!8562))))

(assert (=> b!14315 (= res!11098 (dynLambda!89 lambda!147 (h!978 lt!3589)))))

(declare-fun b!14316 () Bool)

(assert (=> b!14316 (= e!8562 (forall!92 (t!2812 lt!3589) lambda!147))))

(assert (= (and d!2199 (not res!11097)) b!14315))

(assert (= (and b!14315 res!11098) b!14316))

(declare-fun b_lambda!909 () Bool)

(assert (=> (not b_lambda!909) (not b!14315)))

(declare-fun m!9565 () Bool)

(assert (=> b!14315 m!9565))

(declare-fun m!9567 () Bool)

(assert (=> b!14316 m!9567))

(assert (=> b!14212 d!2199))

(declare-fun d!2201 () Bool)

(declare-fun res!11099 () Bool)

(declare-fun e!8563 () Bool)

(assert (=> d!2201 (=> res!11099 e!8563)))

(assert (=> d!2201 (= res!11099 (or (is-Nil!413 lt!3589) (is-Nil!413 (t!2812 lt!3589))))))

(assert (=> d!2201 (= (isStrictlySorted!107 lt!3589) e!8563)))

(declare-fun b!14317 () Bool)

(declare-fun e!8564 () Bool)

(assert (=> b!14317 (= e!8563 e!8564)))

(declare-fun res!11100 () Bool)

(assert (=> b!14317 (=> (not res!11100) (not e!8564))))

(assert (=> b!14317 (= res!11100 (bvslt (_1!257 (h!978 lt!3589)) (_1!257 (h!978 (t!2812 lt!3589)))))))

(declare-fun b!14318 () Bool)

(assert (=> b!14318 (= e!8564 (isStrictlySorted!107 (t!2812 lt!3589)))))

(assert (= (and d!2201 (not res!11099)) b!14317))

(assert (= (and b!14317 res!11100) b!14318))

(declare-fun m!9569 () Bool)

(assert (=> b!14318 m!9569))

(assert (=> d!2117 d!2201))

(assert (=> d!2117 d!2187))

(declare-fun d!2203 () Bool)

(assert (=> d!2203 (= ($colon$colon!18 call!401 (h!978 (t!2812 l!522))) (Cons!412 (h!978 (t!2812 l!522)) call!401))))

(assert (=> b!14210 d!2203))

(declare-fun b!14319 () Bool)

(declare-fun e!8565 () Bool)

(declare-fun tp!2320 () Bool)

(assert (=> b!14319 (= e!8565 (and tp_is_empty!715 tp!2320))))

(assert (=> b!14266 (= tp!2315 e!8565)))

(assert (= (and b!14266 (is-Cons!412 (t!2812 (t!2812 l!522)))) b!14319))

(declare-fun b_lambda!911 () Bool)

(assert (= b_lambda!907 (or b!14086 b_lambda!911)))

(declare-fun bs!566 () Bool)

(declare-fun d!2205 () Bool)

(assert (= bs!566 (and d!2205 b!14086)))

(assert (=> bs!566 (= (dynLambda!89 lambda!134 (h!978 (t!2812 lt!3576))) (= (_2!257 (h!978 (t!2812 lt!3576))) value!159))))

(assert (=> b!14311 d!2205))

(declare-fun b_lambda!913 () Bool)

(assert (= b_lambda!909 (or b!14212 b_lambda!913)))

(declare-fun bs!567 () Bool)

(declare-fun d!2207 () Bool)

(assert (= bs!567 (and d!2207 b!14212)))

(assert (=> bs!567 (= (dynLambda!89 lambda!147 (h!978 lt!3589)) (= (_2!257 (h!978 lt!3589)) value!159))))

(assert (=> b!14315 d!2207))

(push 1)

(assert (not b!14310))

(assert (not b!14314))

(assert (not b!14319))

(assert tp_is_empty!715)

(assert (not bm!411))

(assert (not b!14304))

(assert (not b_lambda!893))

(assert (not b!14316))

(assert (not d!2191))

(assert (not b_lambda!911))

(assert (not b!14308))

(assert (not b!14306))

(assert (not b!14312))

(assert (not b!14301))

(assert (not b!14318))

(assert (not bm!410))

(assert (not b_lambda!913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

