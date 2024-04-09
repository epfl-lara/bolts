; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!376 () Bool)

(assert start!376)

(declare-fun b_free!49 () Bool)

(declare-fun b_next!49 () Bool)

(assert (=> start!376 (= b_free!49 (not b_next!49))))

(declare-fun tp!197 () Bool)

(declare-fun b_and!169 () Bool)

(assert (=> start!376 (= tp!197 b_and!169)))

(declare-fun b!2363 () Bool)

(assert (=> b!2363 true))

(assert (=> b!2363 true))

(declare-fun order!15 () Int)

(declare-fun order!13 () Int)

(declare-fun lambda!35 () Int)

(declare-fun p!318 () Int)

(declare-fun dynLambda!27 (Int Int) Int)

(declare-fun dynLambda!28 (Int Int) Int)

(assert (=> b!2363 (< (dynLambda!27 order!13 p!318) (dynLambda!28 order!15 lambda!35))))

(declare-fun res!4701 () Bool)

(declare-fun e!733 () Bool)

(assert (=> start!376 (=> (not res!4701) (not e!733))))

(declare-datatypes ((B!284 0))(
  ( (B!285 (val!24 Int)) )
))
(declare-datatypes ((tuple2!48 0))(
  ( (tuple2!49 (_1!24 (_ BitVec 64)) (_2!24 B!284)) )
))
(declare-datatypes ((List!33 0))(
  ( (Nil!30) (Cons!29 (h!595 tuple2!48) (t!2142 List!33)) )
))
(declare-datatypes ((ListLongMap!53 0))(
  ( (ListLongMap!54 (toList!42 List!33)) )
))
(declare-fun lm!258 () ListLongMap!53)

(declare-fun forall!29 (List!33 Int) Bool)

(assert (=> start!376 (= res!4701 (forall!29 (toList!42 lm!258) p!318))))

(assert (=> start!376 e!733))

(declare-fun e!735 () Bool)

(declare-fun inv!79 (ListLongMap!53) Bool)

(assert (=> start!376 (and (inv!79 lm!258) e!735)))

(assert (=> start!376 tp!197))

(assert (=> start!376 true))

(declare-fun k!394 () (_ BitVec 64))

(declare-datatypes ((Option!10 0))(
  ( (Some!9 (v!1100 B!284)) (None!8) )
))
(declare-fun forall!30 (Option!10 Int) Bool)

(declare-fun getValueByKey!4 (List!33 (_ BitVec 64)) Option!10)

(assert (=> b!2363 (= e!733 (not (forall!30 (getValueByKey!4 (toList!42 lm!258) k!394) lambda!35)))))

(declare-fun b!2361 () Bool)

(declare-fun res!4703 () Bool)

(assert (=> b!2361 (=> (not res!4703) (not e!733))))

(declare-fun e!734 () Bool)

(assert (=> b!2361 (= res!4703 e!734)))

(declare-fun res!4702 () Bool)

(assert (=> b!2361 (=> res!4702 e!734)))

(declare-fun isEmpty!37 (ListLongMap!53) Bool)

(assert (=> b!2361 (= res!4702 (isEmpty!37 lm!258))))

(declare-fun b!2362 () Bool)

(declare-fun head!755 (List!33) tuple2!48)

(assert (=> b!2362 (= e!734 (= (_1!24 (head!755 (toList!42 lm!258))) k!394))))

(declare-fun b!2364 () Bool)

(declare-fun tp!196 () Bool)

(assert (=> b!2364 (= e!735 tp!196)))

(assert (= (and start!376 res!4701) b!2361))

(assert (= (and b!2361 (not res!4702)) b!2362))

(assert (= (and b!2361 res!4703) b!2363))

(assert (= start!376 b!2364))

(declare-fun m!993 () Bool)

(assert (=> start!376 m!993))

(declare-fun m!995 () Bool)

(assert (=> start!376 m!995))

(declare-fun m!997 () Bool)

(assert (=> b!2363 m!997))

(assert (=> b!2363 m!997))

(declare-fun m!999 () Bool)

(assert (=> b!2363 m!999))

(declare-fun m!1001 () Bool)

(assert (=> b!2361 m!1001))

(declare-fun m!1003 () Bool)

(assert (=> b!2362 m!1003))

(push 1)

(assert (not start!376))

(assert (not b!2364))

(assert (not b!2362))

(assert (not b_next!49))

(assert (not b!2361))

(assert (not b!2363))

(assert b_and!169)

(check-sat)

(pop 1)

(push 1)

(assert b_and!169)

(assert (not b_next!49))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!483 () Bool)

(assert (=> d!483 (= (head!755 (toList!42 lm!258)) (h!595 (toList!42 lm!258)))))

(assert (=> b!2362 d!483))

(declare-fun d!487 () Bool)

(declare-fun isEmpty!40 (List!33) Bool)

(assert (=> d!487 (= (isEmpty!37 lm!258) (isEmpty!40 (toList!42 lm!258)))))

(declare-fun bs!111 () Bool)

(assert (= bs!111 d!487))

(declare-fun m!1029 () Bool)

(assert (=> bs!111 m!1029))

(assert (=> b!2361 d!487))

(declare-fun d!489 () Bool)

(declare-fun res!4730 () Bool)

(declare-fun e!762 () Bool)

(assert (=> d!489 (=> res!4730 e!762)))

(assert (=> d!489 (= res!4730 (not (is-Some!9 (getValueByKey!4 (toList!42 lm!258) k!394))))))

(assert (=> d!489 (= (forall!30 (getValueByKey!4 (toList!42 lm!258) k!394) lambda!35) e!762)))

(declare-fun b!2409 () Bool)

(declare-fun dynLambda!33 (Int B!284) Bool)

(assert (=> b!2409 (= e!762 (dynLambda!33 lambda!35 (v!1100 (getValueByKey!4 (toList!42 lm!258) k!394))))))

(assert (= (and d!489 (not res!4730)) b!2409))

(declare-fun b_lambda!273 () Bool)

(assert (=> (not b_lambda!273) (not b!2409)))

(declare-fun m!1035 () Bool)

(assert (=> b!2409 m!1035))

(assert (=> b!2363 d!489))

(declare-fun d!495 () Bool)

(declare-fun c!154 () Bool)

(assert (=> d!495 (= c!154 (and (is-Cons!29 (toList!42 lm!258)) (= (_1!24 (h!595 (toList!42 lm!258))) k!394)))))

(declare-fun e!773 () Option!10)

(assert (=> d!495 (= (getValueByKey!4 (toList!42 lm!258) k!394) e!773)))

(declare-fun b!2427 () Bool)

(declare-fun e!774 () Option!10)

(assert (=> b!2427 (= e!774 None!8)))

(declare-fun b!2424 () Bool)

(assert (=> b!2424 (= e!773 (Some!9 (_2!24 (h!595 (toList!42 lm!258)))))))

(declare-fun b!2426 () Bool)

(assert (=> b!2426 (= e!774 (getValueByKey!4 (t!2142 (toList!42 lm!258)) k!394))))

(declare-fun b!2425 () Bool)

(assert (=> b!2425 (= e!773 e!774)))

(declare-fun c!155 () Bool)

(assert (=> b!2425 (= c!155 (and (is-Cons!29 (toList!42 lm!258)) (not (= (_1!24 (h!595 (toList!42 lm!258))) k!394))))))

(assert (= (and d!495 c!154) b!2424))

(assert (= (and d!495 (not c!154)) b!2425))

(assert (= (and b!2425 c!155) b!2426))

(assert (= (and b!2425 (not c!155)) b!2427))

(declare-fun m!1047 () Bool)

(assert (=> b!2426 m!1047))

(assert (=> b!2363 d!495))

(declare-fun d!507 () Bool)

(declare-fun res!4744 () Bool)

(declare-fun e!782 () Bool)

(assert (=> d!507 (=> res!4744 e!782)))

(assert (=> d!507 (= res!4744 (is-Nil!30 (toList!42 lm!258)))))

(assert (=> d!507 (= (forall!29 (toList!42 lm!258) p!318) e!782)))

(declare-fun b!2435 () Bool)

(declare-fun e!783 () Bool)

(assert (=> b!2435 (= e!782 e!783)))

(declare-fun res!4745 () Bool)

(assert (=> b!2435 (=> (not res!4745) (not e!783))))

(declare-fun dynLambda!36 (Int tuple2!48) Bool)

(assert (=> b!2435 (= res!4745 (dynLambda!36 p!318 (h!595 (toList!42 lm!258))))))

(declare-fun b!2436 () Bool)

(assert (=> b!2436 (= e!783 (forall!29 (t!2142 (toList!42 lm!258)) p!318))))

(assert (= (and d!507 (not res!4744)) b!2435))

(assert (= (and b!2435 res!4745) b!2436))

(declare-fun b_lambda!279 () Bool)

(assert (=> (not b_lambda!279) (not b!2435)))

(declare-fun t!2150 () Bool)

(declare-fun tb!113 () Bool)

(assert (=> (and start!376 (= p!318 p!318) t!2150) tb!113))

(declare-fun result!149 () Bool)

(assert (=> tb!113 (= result!149 true)))

(assert (=> b!2435 t!2150))

(declare-fun b_and!179 () Bool)

(assert (= b_and!169 (and (=> t!2150 result!149) b_and!179)))

(declare-fun m!1053 () Bool)

(assert (=> b!2435 m!1053))

(declare-fun m!1055 () Bool)

(assert (=> b!2436 m!1055))

(assert (=> start!376 d!507))

(declare-fun d!515 () Bool)

(declare-fun isStrictlySorted!18 (List!33) Bool)

(assert (=> d!515 (= (inv!79 lm!258) (isStrictlySorted!18 (toList!42 lm!258)))))

(declare-fun bs!116 () Bool)

(assert (= bs!116 d!515))

(declare-fun m!1059 () Bool)

(assert (=> bs!116 m!1059))

(assert (=> start!376 d!515))

(declare-fun b!2454 () Bool)

(declare-fun e!793 () Bool)

(declare-fun tp_is_empty!37 () Bool)

(declare-fun tp!212 () Bool)

(assert (=> b!2454 (= e!793 (and tp_is_empty!37 tp!212))))

(assert (=> b!2364 (= tp!196 e!793)))

(assert (= (and b!2364 (is-Cons!29 (toList!42 lm!258))) b!2454))

(declare-fun b_lambda!283 () Bool)

(assert (= b_lambda!279 (or (and start!376 b_free!49) b_lambda!283)))

(declare-fun b_lambda!285 () Bool)

(assert (= b_lambda!273 (or b!2363 b_lambda!285)))

(declare-fun bs!117 () Bool)

(declare-fun d!519 () Bool)

(assert (= bs!117 (and d!519 b!2363)))

(assert (=> bs!117 (= (dynLambda!33 lambda!35 (v!1100 (getValueByKey!4 (toList!42 lm!258) k!394))) (dynLambda!36 p!318 (tuple2!49 k!394 (v!1100 (getValueByKey!4 (toList!42 lm!258) k!394)))))))

(declare-fun b_lambda!287 () Bool)

(assert (=> (not b_lambda!287) (not bs!117)))

(declare-fun t!2152 () Bool)

(declare-fun tb!115 () Bool)

(assert (=> (and start!376 (= p!318 p!318) t!2152) tb!115))

(declare-fun result!153 () Bool)

(assert (=> tb!115 (= result!153 true)))

(assert (=> bs!117 t!2152))

(declare-fun b_and!181 () Bool)

(assert (= b_and!179 (and (=> t!2152 result!153) b_and!181)))

(declare-fun m!1061 () Bool)

(assert (=> bs!117 m!1061))

(assert (=> b!2409 d!519))

(push 1)

(assert tp_is_empty!37)

(assert (not b!2454))

(assert (not b_lambda!283))

(assert (not d!515))

(assert (not b!2426))

(assert (not d!487))

(assert (not b_next!49))

(assert (not b_lambda!287))

(assert (not b!2436))

(assert b_and!181)

(assert (not b_lambda!285))

(check-sat)

(pop 1)

(push 1)

(assert b_and!181)

(assert (not b_next!49))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!301 () Bool)

(assert (= b_lambda!287 (or (and start!376 b_free!49) b_lambda!301)))

(push 1)

(assert tp_is_empty!37)

(assert (not b!2454))

(assert (not b_lambda!283))

(assert (not d!515))

(assert (not b_lambda!301))

(assert (not b!2426))

(assert (not d!487))

(assert (not b_next!49))

(assert (not b!2436))

(assert b_and!181)

(assert (not b_lambda!285))

(check-sat)

(pop 1)

(push 1)

(assert b_and!181)

(assert (not b_next!49))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!525 () Bool)

(declare-fun res!4749 () Bool)

(declare-fun e!808 () Bool)

(assert (=> d!525 (=> res!4749 e!808)))

(assert (=> d!525 (= res!4749 (is-Nil!30 (t!2142 (toList!42 lm!258))))))

(assert (=> d!525 (= (forall!29 (t!2142 (toList!42 lm!258)) p!318) e!808)))

(declare-fun b!2479 () Bool)

(declare-fun e!809 () Bool)

(assert (=> b!2479 (= e!808 e!809)))

(declare-fun res!4750 () Bool)

(assert (=> b!2479 (=> (not res!4750) (not e!809))))

(assert (=> b!2479 (= res!4750 (dynLambda!36 p!318 (h!595 (t!2142 (toList!42 lm!258)))))))

(declare-fun b!2480 () Bool)

(assert (=> b!2480 (= e!809 (forall!29 (t!2142 (t!2142 (toList!42 lm!258))) p!318))))

(assert (= (and d!525 (not res!4749)) b!2479))

(assert (= (and b!2479 res!4750) b!2480))

(declare-fun b_lambda!307 () Bool)

(assert (=> (not b_lambda!307) (not b!2479)))

(declare-fun t!2158 () Bool)

(declare-fun tb!121 () Bool)

(assert (=> (and start!376 (= p!318 p!318) t!2158) tb!121))

(declare-fun result!163 () Bool)

(assert (=> tb!121 (= result!163 true)))

(assert (=> b!2479 t!2158))

(declare-fun b_and!187 () Bool)

(assert (= b_and!181 (and (=> t!2158 result!163) b_and!187)))

(declare-fun m!1071 () Bool)

(assert (=> b!2479 m!1071))

(declare-fun m!1073 () Bool)

(assert (=> b!2480 m!1073))

(assert (=> b!2436 d!525))

(declare-fun d!527 () Bool)

(assert (=> d!527 (= (isEmpty!40 (toList!42 lm!258)) (is-Nil!30 (toList!42 lm!258)))))

(assert (=> d!487 d!527))

(declare-fun d!529 () Bool)

(declare-fun c!168 () Bool)

(assert (=> d!529 (= c!168 (and (is-Cons!29 (t!2142 (toList!42 lm!258))) (= (_1!24 (h!595 (t!2142 (toList!42 lm!258)))) k!394)))))

(declare-fun e!810 () Option!10)

(assert (=> d!529 (= (getValueByKey!4 (t!2142 (toList!42 lm!258)) k!394) e!810)))

(declare-fun b!2484 () Bool)

(declare-fun e!811 () Option!10)

(assert (=> b!2484 (= e!811 None!8)))

(declare-fun b!2481 () Bool)

(assert (=> b!2481 (= e!810 (Some!9 (_2!24 (h!595 (t!2142 (toList!42 lm!258))))))))

(declare-fun b!2483 () Bool)

(assert (=> b!2483 (= e!811 (getValueByKey!4 (t!2142 (t!2142 (toList!42 lm!258))) k!394))))

(declare-fun b!2482 () Bool)

(assert (=> b!2482 (= e!810 e!811)))

(declare-fun c!169 () Bool)

(assert (=> b!2482 (= c!169 (and (is-Cons!29 (t!2142 (toList!42 lm!258))) (not (= (_1!24 (h!595 (t!2142 (toList!42 lm!258)))) k!394))))))

(assert (= (and d!529 c!168) b!2481))

(assert (= (and d!529 (not c!168)) b!2482))

(assert (= (and b!2482 c!169) b!2483))

(assert (= (and b!2482 (not c!169)) b!2484))

(declare-fun m!1075 () Bool)

(assert (=> b!2483 m!1075))

(assert (=> b!2426 d!529))

(declare-fun d!531 () Bool)

(declare-fun res!4755 () Bool)

(declare-fun e!816 () Bool)

(assert (=> d!531 (=> res!4755 e!816)))

(assert (=> d!531 (= res!4755 (or (is-Nil!30 (toList!42 lm!258)) (is-Nil!30 (t!2142 (toList!42 lm!258)))))))

(assert (=> d!531 (= (isStrictlySorted!18 (toList!42 lm!258)) e!816)))

(declare-fun b!2489 () Bool)

(declare-fun e!817 () Bool)

(assert (=> b!2489 (= e!816 e!817)))

(declare-fun res!4756 () Bool)

(assert (=> b!2489 (=> (not res!4756) (not e!817))))

(assert (=> b!2489 (= res!4756 (bvslt (_1!24 (h!595 (toList!42 lm!258))) (_1!24 (h!595 (t!2142 (toList!42 lm!258))))))))

(declare-fun b!2490 () Bool)

(assert (=> b!2490 (= e!817 (isStrictlySorted!18 (t!2142 (toList!42 lm!258))))))

(assert (= (and d!531 (not res!4755)) b!2489))

(assert (= (and b!2489 res!4756) b!2490))

(declare-fun m!1077 () Bool)

(assert (=> b!2490 m!1077))

(assert (=> d!515 d!531))

(declare-fun b!2495 () Bool)

(declare-fun e!820 () Bool)

(declare-fun tp!219 () Bool)

(assert (=> b!2495 (= e!820 (and tp_is_empty!37 tp!219))))

(assert (=> b!2454 (= tp!212 e!820)))

(assert (= (and b!2454 (is-Cons!29 (t!2142 (toList!42 lm!258)))) b!2495))

(declare-fun b_lambda!309 () Bool)

(assert (= b_lambda!307 (or (and start!376 b_free!49) b_lambda!309)))

(push 1)

(assert (not b!2483))

(assert tp_is_empty!37)

(assert (not b_lambda!283))

(assert (not b!2480))

(assert (not b_lambda!301))

(assert (not b_next!49))

(assert (not b_lambda!309))

(assert (not b!2490))

(assert b_and!187)

(assert (not b_lambda!285))

(assert (not b!2495))

(check-sat)

