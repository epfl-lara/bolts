; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75126 () Bool)

(assert start!75126)

(declare-fun res!601328 () Bool)

(declare-fun e!492668 () Bool)

(assert (=> start!75126 (=> (not res!601328) (not e!492668))))

(declare-datatypes ((B!1254 0))(
  ( (B!1255 (val!8933 Int)) )
))
(declare-datatypes ((tuple2!11886 0))(
  ( (tuple2!11887 (_1!5953 (_ BitVec 64)) (_2!5953 B!1254)) )
))
(declare-datatypes ((List!17733 0))(
  ( (Nil!17730) (Cons!17729 (h!18860 tuple2!11886) (t!25018 List!17733)) )
))
(declare-fun l!906 () List!17733)

(declare-fun isStrictlySorted!469 (List!17733) Bool)

(assert (=> start!75126 (= res!601328 (isStrictlySorted!469 l!906))))

(assert (=> start!75126 e!492668))

(declare-fun e!492667 () Bool)

(assert (=> start!75126 e!492667))

(assert (=> start!75126 true))

(declare-fun tp_is_empty!17765 () Bool)

(assert (=> start!75126 tp_is_empty!17765))

(declare-fun b!885178 () Bool)

(declare-fun tp!54255 () Bool)

(assert (=> b!885178 (= e!492667 (and tp_is_empty!17765 tp!54255))))

(declare-fun key1!49 () (_ BitVec 64))

(declare-fun v1!38 () B!1254)

(declare-fun b!885177 () Bool)

(declare-fun insertStrictlySorted!290 (List!17733 (_ BitVec 64) B!1254) List!17733)

(assert (=> b!885177 (= e!492668 (not (isStrictlySorted!469 (insertStrictlySorted!290 l!906 key1!49 v1!38))))))

(declare-fun v2!16 () B!1254)

(assert (=> b!885177 (= (insertStrictlySorted!290 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!290 (t!25018 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30197 0))(
  ( (Unit!30198) )
))
(declare-fun lt!400944 () Unit!30197)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!9 (List!17733 (_ BitVec 64) B!1254 B!1254) Unit!30197)

(assert (=> b!885177 (= lt!400944 (lemmaInsertStrictlySortedErasesIfSameKey!9 (t!25018 l!906) key1!49 v1!38 v2!16))))

(declare-fun b!885176 () Bool)

(declare-fun res!601326 () Bool)

(assert (=> b!885176 (=> (not res!601326) (not e!492668))))

(assert (=> b!885176 (= res!601326 (isStrictlySorted!469 (t!25018 l!906)))))

(declare-fun b!885175 () Bool)

(declare-fun res!601327 () Bool)

(assert (=> b!885175 (=> (not res!601327) (not e!492668))))

(assert (=> b!885175 (= res!601327 (and (is-Cons!17729 l!906) (bvslt (_1!5953 (h!18860 l!906)) key1!49)))))

(assert (= (and start!75126 res!601328) b!885175))

(assert (= (and b!885175 res!601327) b!885176))

(assert (= (and b!885176 res!601326) b!885177))

(assert (= (and start!75126 (is-Cons!17729 l!906)) b!885178))

(declare-fun m!825547 () Bool)

(assert (=> start!75126 m!825547))

(declare-fun m!825549 () Bool)

(assert (=> b!885177 m!825549))

(declare-fun m!825551 () Bool)

(assert (=> b!885177 m!825551))

(declare-fun m!825553 () Bool)

(assert (=> b!885177 m!825553))

(declare-fun m!825555 () Bool)

(assert (=> b!885177 m!825555))

(declare-fun m!825557 () Bool)

(assert (=> b!885177 m!825557))

(assert (=> b!885177 m!825555))

(declare-fun m!825559 () Bool)

(assert (=> b!885177 m!825559))

(assert (=> b!885177 m!825549))

(declare-fun m!825561 () Bool)

(assert (=> b!885176 m!825561))

(push 1)

(assert (not b!885177))

(assert tp_is_empty!17765)

(assert (not b!885176))

(assert (not b!885178))

(assert (not start!75126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109293 () Bool)

(assert (=> d!109293 (= (insertStrictlySorted!290 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!290 (t!25018 l!906) key1!49 v2!16))))

(declare-fun lt!400950 () Unit!30197)

(declare-fun choose!1456 (List!17733 (_ BitVec 64) B!1254 B!1254) Unit!30197)

(assert (=> d!109293 (= lt!400950 (choose!1456 (t!25018 l!906) key1!49 v1!38 v2!16))))

(assert (=> d!109293 (isStrictlySorted!469 (t!25018 l!906))))

(assert (=> d!109293 (= (lemmaInsertStrictlySortedErasesIfSameKey!9 (t!25018 l!906) key1!49 v1!38 v2!16) lt!400950)))

(declare-fun bs!24815 () Bool)

(assert (= bs!24815 d!109293))

(declare-fun m!825565 () Bool)

(assert (=> bs!24815 m!825565))

(assert (=> bs!24815 m!825561))

(assert (=> bs!24815 m!825549))

(assert (=> bs!24815 m!825559))

(assert (=> bs!24815 m!825549))

(assert (=> bs!24815 m!825551))

(assert (=> b!885177 d!109293))

(declare-fun e!492718 () List!17733)

(declare-fun b!885265 () Bool)

(assert (=> b!885265 (= e!492718 (insertStrictlySorted!290 (t!25018 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38)) key1!49 v2!16))))

(declare-fun b!885266 () Bool)

(declare-fun e!492719 () List!17733)

(declare-fun call!39092 () List!17733)

(assert (=> b!885266 (= e!492719 call!39092)))

(declare-fun b!885267 () Bool)

(declare-fun c!93196 () Bool)

(assert (=> b!885267 (= c!93196 (and (is-Cons!17729 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38)) (bvsgt (_1!5953 (h!18860 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38))) key1!49)))))

(declare-fun e!492715 () List!17733)

(assert (=> b!885267 (= e!492719 e!492715)))

(declare-fun lt!400962 () List!17733)

(declare-fun b!885268 () Bool)

(declare-fun e!492717 () Bool)

(declare-fun contains!4286 (List!17733 tuple2!11886) Bool)

(assert (=> b!885268 (= e!492717 (contains!4286 lt!400962 (tuple2!11887 key1!49 v2!16)))))

(declare-fun b!885269 () Bool)

(declare-fun call!39094 () List!17733)

(assert (=> b!885269 (= e!492715 call!39094)))

(declare-fun d!109299 () Bool)

(assert (=> d!109299 e!492717))

(declare-fun res!601352 () Bool)

(assert (=> d!109299 (=> (not res!601352) (not e!492717))))

(assert (=> d!109299 (= res!601352 (isStrictlySorted!469 lt!400962))))

(declare-fun e!492716 () List!17733)

(assert (=> d!109299 (= lt!400962 e!492716)))

(declare-fun c!93198 () Bool)

(assert (=> d!109299 (= c!93198 (and (is-Cons!17729 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38)) (bvslt (_1!5953 (h!18860 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38))) key1!49)))))

(assert (=> d!109299 (isStrictlySorted!469 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38))))

(assert (=> d!109299 (= (insertStrictlySorted!290 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38) key1!49 v2!16) lt!400962)))

(declare-fun bm!39089 () Bool)

(assert (=> bm!39089 (= call!39094 call!39092)))

(declare-fun b!885270 () Bool)

(declare-fun res!601351 () Bool)

(assert (=> b!885270 (=> (not res!601351) (not e!492717))))

(declare-fun containsKey!407 (List!17733 (_ BitVec 64)) Bool)

(assert (=> b!885270 (= res!601351 (containsKey!407 lt!400962 key1!49))))

(declare-fun b!885271 () Bool)

(assert (=> b!885271 (= e!492715 call!39094)))

(declare-fun b!885272 () Bool)

(declare-fun call!39093 () List!17733)

(assert (=> b!885272 (= e!492716 call!39093)))

(declare-fun c!93199 () Bool)

(declare-fun b!885273 () Bool)

(assert (=> b!885273 (= e!492718 (ite c!93199 (t!25018 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38)) (ite c!93196 (Cons!17729 (h!18860 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38)) (t!25018 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38))) Nil!17730)))))

(declare-fun b!885274 () Bool)

(assert (=> b!885274 (= e!492716 e!492719)))

(assert (=> b!885274 (= c!93199 (and (is-Cons!17729 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38)) (= (_1!5953 (h!18860 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38))) key1!49)))))

(declare-fun bm!39090 () Bool)

(assert (=> bm!39090 (= call!39092 call!39093)))

(declare-fun bm!39091 () Bool)

(declare-fun $colon$colon!543 (List!17733 tuple2!11886) List!17733)

(assert (=> bm!39091 (= call!39093 ($colon$colon!543 e!492718 (ite c!93198 (h!18860 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38)) (tuple2!11887 key1!49 v2!16))))))

(declare-fun c!93197 () Bool)

(assert (=> bm!39091 (= c!93197 c!93198)))

(assert (= (and d!109299 c!93198) b!885272))

(assert (= (and d!109299 (not c!93198)) b!885274))

(assert (= (and b!885274 c!93199) b!885266))

(assert (= (and b!885274 (not c!93199)) b!885267))

(assert (= (and b!885267 c!93196) b!885271))

(assert (= (and b!885267 (not c!93196)) b!885269))

(assert (= (or b!885271 b!885269) bm!39089))

(assert (= (or b!885266 bm!39089) bm!39090))

(assert (= (or b!885272 bm!39090) bm!39091))

(assert (= (and bm!39091 c!93197) b!885265))

(assert (= (and bm!39091 (not c!93197)) b!885273))

(assert (= (and d!109299 res!601352) b!885270))

(assert (= (and b!885270 res!601351) b!885268))

(declare-fun m!825591 () Bool)

(assert (=> d!109299 m!825591))

(assert (=> d!109299 m!825549))

(declare-fun m!825593 () Bool)

(assert (=> d!109299 m!825593))

(declare-fun m!825595 () Bool)

(assert (=> b!885268 m!825595))

(declare-fun m!825597 () Bool)

(assert (=> b!885270 m!825597))

(declare-fun m!825601 () Bool)

(assert (=> bm!39091 m!825601))

(declare-fun m!825605 () Bool)

(assert (=> b!885265 m!825605))

(assert (=> b!885177 d!109299))

(declare-fun b!885285 () Bool)

(declare-fun e!492728 () List!17733)

(assert (=> b!885285 (= e!492728 (insertStrictlySorted!290 (t!25018 (t!25018 l!906)) key1!49 v2!16))))

(declare-fun b!885286 () Bool)

(declare-fun e!492729 () List!17733)

(declare-fun call!39098 () List!17733)

(assert (=> b!885286 (= e!492729 call!39098)))

(declare-fun b!885287 () Bool)

(declare-fun c!93204 () Bool)

(assert (=> b!885287 (= c!93204 (and (is-Cons!17729 (t!25018 l!906)) (bvsgt (_1!5953 (h!18860 (t!25018 l!906))) key1!49)))))

(declare-fun e!492725 () List!17733)

(assert (=> b!885287 (= e!492729 e!492725)))

(declare-fun lt!400964 () List!17733)

(declare-fun e!492727 () Bool)

(declare-fun b!885288 () Bool)

(assert (=> b!885288 (= e!492727 (contains!4286 lt!400964 (tuple2!11887 key1!49 v2!16)))))

(declare-fun b!885289 () Bool)

(declare-fun call!39100 () List!17733)

(assert (=> b!885289 (= e!492725 call!39100)))

(declare-fun d!109307 () Bool)

(assert (=> d!109307 e!492727))

(declare-fun res!601356 () Bool)

(assert (=> d!109307 (=> (not res!601356) (not e!492727))))

(assert (=> d!109307 (= res!601356 (isStrictlySorted!469 lt!400964))))

(declare-fun e!492726 () List!17733)

(assert (=> d!109307 (= lt!400964 e!492726)))

(declare-fun c!93206 () Bool)

(assert (=> d!109307 (= c!93206 (and (is-Cons!17729 (t!25018 l!906)) (bvslt (_1!5953 (h!18860 (t!25018 l!906))) key1!49)))))

(assert (=> d!109307 (isStrictlySorted!469 (t!25018 l!906))))

(assert (=> d!109307 (= (insertStrictlySorted!290 (t!25018 l!906) key1!49 v2!16) lt!400964)))

(declare-fun bm!39095 () Bool)

(assert (=> bm!39095 (= call!39100 call!39098)))

(declare-fun b!885290 () Bool)

(declare-fun res!601355 () Bool)

(assert (=> b!885290 (=> (not res!601355) (not e!492727))))

(assert (=> b!885290 (= res!601355 (containsKey!407 lt!400964 key1!49))))

(declare-fun b!885291 () Bool)

(assert (=> b!885291 (= e!492725 call!39100)))

(declare-fun b!885292 () Bool)

(declare-fun call!39099 () List!17733)

(assert (=> b!885292 (= e!492726 call!39099)))

(declare-fun b!885293 () Bool)

(declare-fun c!93207 () Bool)

(assert (=> b!885293 (= e!492728 (ite c!93207 (t!25018 (t!25018 l!906)) (ite c!93204 (Cons!17729 (h!18860 (t!25018 l!906)) (t!25018 (t!25018 l!906))) Nil!17730)))))

(declare-fun b!885294 () Bool)

(assert (=> b!885294 (= e!492726 e!492729)))

(assert (=> b!885294 (= c!93207 (and (is-Cons!17729 (t!25018 l!906)) (= (_1!5953 (h!18860 (t!25018 l!906))) key1!49)))))

(declare-fun bm!39096 () Bool)

(assert (=> bm!39096 (= call!39098 call!39099)))

(declare-fun bm!39097 () Bool)

(assert (=> bm!39097 (= call!39099 ($colon$colon!543 e!492728 (ite c!93206 (h!18860 (t!25018 l!906)) (tuple2!11887 key1!49 v2!16))))))

(declare-fun c!93205 () Bool)

(assert (=> bm!39097 (= c!93205 c!93206)))

(assert (= (and d!109307 c!93206) b!885292))

(assert (= (and d!109307 (not c!93206)) b!885294))

(assert (= (and b!885294 c!93207) b!885286))

(assert (= (and b!885294 (not c!93207)) b!885287))

(assert (= (and b!885287 c!93204) b!885291))

(assert (= (and b!885287 (not c!93204)) b!885289))

(assert (= (or b!885291 b!885289) bm!39095))

(assert (= (or b!885286 bm!39095) bm!39096))

(assert (= (or b!885292 bm!39096) bm!39097))

(assert (= (and bm!39097 c!93205) b!885285))

(assert (= (and bm!39097 (not c!93205)) b!885293))

(assert (= (and d!109307 res!601356) b!885290))

(assert (= (and b!885290 res!601355) b!885288))

(declare-fun m!825613 () Bool)

(assert (=> d!109307 m!825613))

(assert (=> d!109307 m!825561))

(declare-fun m!825615 () Bool)

(assert (=> b!885288 m!825615))

(declare-fun m!825617 () Bool)

(assert (=> b!885290 m!825617))

(declare-fun m!825621 () Bool)

(assert (=> bm!39097 m!825621))

(declare-fun m!825625 () Bool)

(assert (=> b!885285 m!825625))

(assert (=> b!885177 d!109307))

(declare-fun e!492738 () List!17733)

(declare-fun b!885305 () Bool)

(assert (=> b!885305 (= e!492738 (insertStrictlySorted!290 (t!25018 (t!25018 l!906)) key1!49 v1!38))))

(declare-fun b!885306 () Bool)

(declare-fun e!492739 () List!17733)

(declare-fun call!39104 () List!17733)

(assert (=> b!885306 (= e!492739 call!39104)))

(declare-fun b!885307 () Bool)

(declare-fun c!93212 () Bool)

(assert (=> b!885307 (= c!93212 (and (is-Cons!17729 (t!25018 l!906)) (bvsgt (_1!5953 (h!18860 (t!25018 l!906))) key1!49)))))

(declare-fun e!492735 () List!17733)

(assert (=> b!885307 (= e!492739 e!492735)))

(declare-fun lt!400966 () List!17733)

(declare-fun b!885308 () Bool)

(declare-fun e!492737 () Bool)

(assert (=> b!885308 (= e!492737 (contains!4286 lt!400966 (tuple2!11887 key1!49 v1!38)))))

(declare-fun b!885309 () Bool)

(declare-fun call!39106 () List!17733)

(assert (=> b!885309 (= e!492735 call!39106)))

(declare-fun d!109311 () Bool)

(assert (=> d!109311 e!492737))

(declare-fun res!601360 () Bool)

(assert (=> d!109311 (=> (not res!601360) (not e!492737))))

(assert (=> d!109311 (= res!601360 (isStrictlySorted!469 lt!400966))))

(declare-fun e!492736 () List!17733)

(assert (=> d!109311 (= lt!400966 e!492736)))

(declare-fun c!93214 () Bool)

(assert (=> d!109311 (= c!93214 (and (is-Cons!17729 (t!25018 l!906)) (bvslt (_1!5953 (h!18860 (t!25018 l!906))) key1!49)))))

(assert (=> d!109311 (isStrictlySorted!469 (t!25018 l!906))))

(assert (=> d!109311 (= (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38) lt!400966)))

(declare-fun bm!39101 () Bool)

(assert (=> bm!39101 (= call!39106 call!39104)))

(declare-fun b!885310 () Bool)

(declare-fun res!601359 () Bool)

(assert (=> b!885310 (=> (not res!601359) (not e!492737))))

(assert (=> b!885310 (= res!601359 (containsKey!407 lt!400966 key1!49))))

(declare-fun b!885311 () Bool)

(assert (=> b!885311 (= e!492735 call!39106)))

(declare-fun b!885312 () Bool)

(declare-fun call!39105 () List!17733)

(assert (=> b!885312 (= e!492736 call!39105)))

(declare-fun b!885313 () Bool)

(declare-fun c!93215 () Bool)

(assert (=> b!885313 (= e!492738 (ite c!93215 (t!25018 (t!25018 l!906)) (ite c!93212 (Cons!17729 (h!18860 (t!25018 l!906)) (t!25018 (t!25018 l!906))) Nil!17730)))))

(declare-fun b!885314 () Bool)

(assert (=> b!885314 (= e!492736 e!492739)))

(assert (=> b!885314 (= c!93215 (and (is-Cons!17729 (t!25018 l!906)) (= (_1!5953 (h!18860 (t!25018 l!906))) key1!49)))))

(declare-fun bm!39102 () Bool)

(assert (=> bm!39102 (= call!39104 call!39105)))

(declare-fun bm!39103 () Bool)

(assert (=> bm!39103 (= call!39105 ($colon$colon!543 e!492738 (ite c!93214 (h!18860 (t!25018 l!906)) (tuple2!11887 key1!49 v1!38))))))

(declare-fun c!93213 () Bool)

(assert (=> bm!39103 (= c!93213 c!93214)))

(assert (= (and d!109311 c!93214) b!885312))

(assert (= (and d!109311 (not c!93214)) b!885314))

(assert (= (and b!885314 c!93215) b!885306))

(assert (= (and b!885314 (not c!93215)) b!885307))

(assert (= (and b!885307 c!93212) b!885311))

(assert (= (and b!885307 (not c!93212)) b!885309))

(assert (= (or b!885311 b!885309) bm!39101))

(assert (= (or b!885306 bm!39101) bm!39102))

(assert (= (or b!885312 bm!39102) bm!39103))

(assert (= (and bm!39103 c!93213) b!885305))

(assert (= (and bm!39103 (not c!93213)) b!885313))

(assert (= (and d!109311 res!601360) b!885310))

(assert (= (and b!885310 res!601359) b!885308))

(declare-fun m!825631 () Bool)

(assert (=> d!109311 m!825631))

(assert (=> d!109311 m!825561))

(declare-fun m!825633 () Bool)

(assert (=> b!885308 m!825633))

(declare-fun m!825635 () Bool)

(assert (=> b!885310 m!825635))

(declare-fun m!825637 () Bool)

(assert (=> bm!39103 m!825637))

(declare-fun m!825639 () Bool)

(assert (=> b!885305 m!825639))

(assert (=> b!885177 d!109311))

(declare-fun b!885325 () Bool)

(declare-fun e!492748 () List!17733)

(assert (=> b!885325 (= e!492748 (insertStrictlySorted!290 (t!25018 l!906) key1!49 v1!38))))

(declare-fun b!885326 () Bool)

(declare-fun e!492749 () List!17733)

(declare-fun call!39110 () List!17733)

(assert (=> b!885326 (= e!492749 call!39110)))

(declare-fun b!885327 () Bool)

(declare-fun c!93220 () Bool)

(assert (=> b!885327 (= c!93220 (and (is-Cons!17729 l!906) (bvsgt (_1!5953 (h!18860 l!906)) key1!49)))))

(declare-fun e!492745 () List!17733)

(assert (=> b!885327 (= e!492749 e!492745)))

(declare-fun b!885328 () Bool)

(declare-fun e!492747 () Bool)

(declare-fun lt!400968 () List!17733)

(assert (=> b!885328 (= e!492747 (contains!4286 lt!400968 (tuple2!11887 key1!49 v1!38)))))

(declare-fun b!885329 () Bool)

(declare-fun call!39112 () List!17733)

(assert (=> b!885329 (= e!492745 call!39112)))

(declare-fun d!109315 () Bool)

(assert (=> d!109315 e!492747))

(declare-fun res!601364 () Bool)

(assert (=> d!109315 (=> (not res!601364) (not e!492747))))

(assert (=> d!109315 (= res!601364 (isStrictlySorted!469 lt!400968))))

(declare-fun e!492746 () List!17733)

(assert (=> d!109315 (= lt!400968 e!492746)))

(declare-fun c!93222 () Bool)

(assert (=> d!109315 (= c!93222 (and (is-Cons!17729 l!906) (bvslt (_1!5953 (h!18860 l!906)) key1!49)))))

(assert (=> d!109315 (isStrictlySorted!469 l!906)))

(assert (=> d!109315 (= (insertStrictlySorted!290 l!906 key1!49 v1!38) lt!400968)))

(declare-fun bm!39107 () Bool)

(assert (=> bm!39107 (= call!39112 call!39110)))

(declare-fun b!885330 () Bool)

(declare-fun res!601363 () Bool)

(assert (=> b!885330 (=> (not res!601363) (not e!492747))))

(assert (=> b!885330 (= res!601363 (containsKey!407 lt!400968 key1!49))))

(declare-fun b!885331 () Bool)

(assert (=> b!885331 (= e!492745 call!39112)))

(declare-fun b!885332 () Bool)

(declare-fun call!39111 () List!17733)

(assert (=> b!885332 (= e!492746 call!39111)))

(declare-fun b!885333 () Bool)

(declare-fun c!93223 () Bool)

(assert (=> b!885333 (= e!492748 (ite c!93223 (t!25018 l!906) (ite c!93220 (Cons!17729 (h!18860 l!906) (t!25018 l!906)) Nil!17730)))))

(declare-fun b!885334 () Bool)

(assert (=> b!885334 (= e!492746 e!492749)))

(assert (=> b!885334 (= c!93223 (and (is-Cons!17729 l!906) (= (_1!5953 (h!18860 l!906)) key1!49)))))

(declare-fun bm!39108 () Bool)

(assert (=> bm!39108 (= call!39110 call!39111)))

(declare-fun bm!39109 () Bool)

(assert (=> bm!39109 (= call!39111 ($colon$colon!543 e!492748 (ite c!93222 (h!18860 l!906) (tuple2!11887 key1!49 v1!38))))))

(declare-fun c!93221 () Bool)

(assert (=> bm!39109 (= c!93221 c!93222)))

(assert (= (and d!109315 c!93222) b!885332))

(assert (= (and d!109315 (not c!93222)) b!885334))

(assert (= (and b!885334 c!93223) b!885326))

(assert (= (and b!885334 (not c!93223)) b!885327))

(assert (= (and b!885327 c!93220) b!885331))

(assert (= (and b!885327 (not c!93220)) b!885329))

(assert (= (or b!885331 b!885329) bm!39107))

(assert (= (or b!885326 bm!39107) bm!39108))

(assert (= (or b!885332 bm!39108) bm!39109))

(assert (= (and bm!39109 c!93221) b!885325))

(assert (= (and bm!39109 (not c!93221)) b!885333))

(assert (= (and d!109315 res!601364) b!885330))

(assert (= (and b!885330 res!601363) b!885328))

(declare-fun m!825653 () Bool)

(assert (=> d!109315 m!825653))

(assert (=> d!109315 m!825547))

(declare-fun m!825655 () Bool)

(assert (=> b!885328 m!825655))

(declare-fun m!825657 () Bool)

(assert (=> b!885330 m!825657))

(declare-fun m!825659 () Bool)

(assert (=> bm!39109 m!825659))

(assert (=> b!885325 m!825549))

(assert (=> b!885177 d!109315))

(declare-fun d!109319 () Bool)

(declare-fun res!601385 () Bool)

(declare-fun e!492782 () Bool)

(assert (=> d!109319 (=> res!601385 e!492782)))

(assert (=> d!109319 (= res!601385 (or (is-Nil!17730 (insertStrictlySorted!290 l!906 key1!49 v1!38)) (is-Nil!17730 (t!25018 (insertStrictlySorted!290 l!906 key1!49 v1!38)))))))

(assert (=> d!109319 (= (isStrictlySorted!469 (insertStrictlySorted!290 l!906 key1!49 v1!38)) e!492782)))

(declare-fun b!885384 () Bool)

(declare-fun e!492783 () Bool)

(assert (=> b!885384 (= e!492782 e!492783)))

(declare-fun res!601386 () Bool)

(assert (=> b!885384 (=> (not res!601386) (not e!492783))))

(assert (=> b!885384 (= res!601386 (bvslt (_1!5953 (h!18860 (insertStrictlySorted!290 l!906 key1!49 v1!38))) (_1!5953 (h!18860 (t!25018 (insertStrictlySorted!290 l!906 key1!49 v1!38))))))))

(declare-fun b!885385 () Bool)

(assert (=> b!885385 (= e!492783 (isStrictlySorted!469 (t!25018 (insertStrictlySorted!290 l!906 key1!49 v1!38))))))

(assert (= (and d!109319 (not res!601385)) b!885384))

(assert (= (and b!885384 res!601386) b!885385))

(declare-fun m!825687 () Bool)

(assert (=> b!885385 m!825687))

