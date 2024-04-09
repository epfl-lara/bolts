; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!380 () Bool)

(assert start!380)

(declare-fun b_free!53 () Bool)

(declare-fun b_next!53 () Bool)

(assert (=> start!380 (= b_free!53 (not b_next!53))))

(declare-fun tp!208 () Bool)

(declare-fun b_and!173 () Bool)

(assert (=> start!380 (= tp!208 b_and!173)))

(declare-fun b!2395 () Bool)

(assert (=> b!2395 true))

(assert (=> b!2395 true))

(declare-fun order!21 () Int)

(declare-fun order!23 () Int)

(declare-fun lambda!41 () Int)

(declare-fun p!318 () Int)

(declare-fun dynLambda!31 (Int Int) Int)

(declare-fun dynLambda!32 (Int Int) Int)

(assert (=> b!2395 (< (dynLambda!31 order!21 p!318) (dynLambda!32 order!23 lambda!41))))

(declare-fun res!4719 () Bool)

(declare-fun e!753 () Bool)

(assert (=> start!380 (=> (not res!4719) (not e!753))))

(declare-datatypes ((B!288 0))(
  ( (B!289 (val!26 Int)) )
))
(declare-datatypes ((tuple2!52 0))(
  ( (tuple2!53 (_1!26 (_ BitVec 64)) (_2!26 B!288)) )
))
(declare-datatypes ((List!35 0))(
  ( (Nil!32) (Cons!31 (h!597 tuple2!52) (t!2144 List!35)) )
))
(declare-datatypes ((ListLongMap!57 0))(
  ( (ListLongMap!58 (toList!44 List!35)) )
))
(declare-fun lm!258 () ListLongMap!57)

(declare-fun forall!33 (List!35 Int) Bool)

(assert (=> start!380 (= res!4719 (forall!33 (toList!44 lm!258) p!318))))

(assert (=> start!380 e!753))

(declare-fun e!752 () Bool)

(declare-fun inv!81 (ListLongMap!57) Bool)

(assert (=> start!380 (and (inv!81 lm!258) e!752)))

(assert (=> start!380 tp!208))

(assert (=> start!380 true))

(declare-fun b!2396 () Bool)

(declare-fun tp!209 () Bool)

(assert (=> b!2396 (= e!752 tp!209)))

(declare-fun k!394 () (_ BitVec 64))

(declare-datatypes ((Option!12 0))(
  ( (Some!11 (v!1106 B!288)) (None!10) )
))
(declare-fun forall!34 (Option!12 Int) Bool)

(declare-fun getValueByKey!6 (List!35 (_ BitVec 64)) Option!12)

(assert (=> b!2395 (= e!753 (not (forall!34 (getValueByKey!6 (toList!44 lm!258) k!394) lambda!41)))))

(declare-fun b!2393 () Bool)

(declare-fun res!4721 () Bool)

(assert (=> b!2393 (=> (not res!4721) (not e!753))))

(declare-fun e!751 () Bool)

(assert (=> b!2393 (= res!4721 e!751)))

(declare-fun res!4720 () Bool)

(assert (=> b!2393 (=> res!4720 e!751)))

(declare-fun isEmpty!39 (ListLongMap!57) Bool)

(assert (=> b!2393 (= res!4720 (isEmpty!39 lm!258))))

(declare-fun b!2394 () Bool)

(declare-fun head!757 (List!35) tuple2!52)

(assert (=> b!2394 (= e!751 (= (_1!26 (head!757 (toList!44 lm!258))) k!394))))

(assert (= (and start!380 res!4719) b!2393))

(assert (= (and b!2393 (not res!4720)) b!2394))

(assert (= (and b!2393 res!4721) b!2395))

(assert (= start!380 b!2396))

(declare-fun m!1017 () Bool)

(assert (=> start!380 m!1017))

(declare-fun m!1019 () Bool)

(assert (=> start!380 m!1019))

(declare-fun m!1021 () Bool)

(assert (=> b!2395 m!1021))

(assert (=> b!2395 m!1021))

(declare-fun m!1023 () Bool)

(assert (=> b!2395 m!1023))

(declare-fun m!1025 () Bool)

(assert (=> b!2393 m!1025))

(declare-fun m!1027 () Bool)

(assert (=> b!2394 m!1027))

(push 1)

(assert (not b!2393))

(assert (not start!380))

(assert (not b!2394))

(assert (not b_next!53))

(assert b_and!173)

(assert (not b!2395))

(assert (not b!2396))

(check-sat)

(pop 1)

(push 1)

(assert b_and!173)

(assert (not b_next!53))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!485 () Bool)

(declare-fun res!4726 () Bool)

(declare-fun e!758 () Bool)

(assert (=> d!485 (=> res!4726 e!758)))

(assert (=> d!485 (= res!4726 (is-Nil!32 (toList!44 lm!258)))))

(assert (=> d!485 (= (forall!33 (toList!44 lm!258) p!318) e!758)))

(declare-fun b!2405 () Bool)

(declare-fun e!759 () Bool)

(assert (=> b!2405 (= e!758 e!759)))

(declare-fun res!4727 () Bool)

(assert (=> b!2405 (=> (not res!4727) (not e!759))))

(declare-fun dynLambda!34 (Int tuple2!52) Bool)

(assert (=> b!2405 (= res!4727 (dynLambda!34 p!318 (h!597 (toList!44 lm!258))))))

(declare-fun b!2406 () Bool)

(assert (=> b!2406 (= e!759 (forall!33 (t!2144 (toList!44 lm!258)) p!318))))

(assert (= (and d!485 (not res!4726)) b!2405))

(assert (= (and b!2405 res!4727) b!2406))

(declare-fun b_lambda!271 () Bool)

(assert (=> (not b_lambda!271) (not b!2405)))

(declare-fun t!2146 () Bool)

(declare-fun tb!109 () Bool)

(assert (=> (and start!380 (= p!318 p!318) t!2146) tb!109))

(declare-fun result!145 () Bool)

(assert (=> tb!109 (= result!145 true)))

(assert (=> b!2405 t!2146))

(declare-fun b_and!175 () Bool)

(assert (= b_and!173 (and (=> t!2146 result!145) b_and!175)))

(declare-fun m!1031 () Bool)

(assert (=> b!2405 m!1031))

(declare-fun m!1033 () Bool)

(assert (=> b!2406 m!1033))

(assert (=> start!380 d!485))

(declare-fun d!493 () Bool)

(declare-fun isStrictlySorted!16 (List!35) Bool)

(assert (=> d!493 (= (inv!81 lm!258) (isStrictlySorted!16 (toList!44 lm!258)))))

(declare-fun bs!113 () Bool)

(assert (= bs!113 d!493))

(declare-fun m!1039 () Bool)

(assert (=> bs!113 m!1039))

(assert (=> start!380 d!493))

(declare-fun d!499 () Bool)

(assert (=> d!499 (= (head!757 (toList!44 lm!258)) (h!597 (toList!44 lm!258)))))

(assert (=> b!2394 d!499))

(declare-fun d!501 () Bool)

(declare-fun isEmpty!42 (List!35) Bool)

(assert (=> d!501 (= (isEmpty!39 lm!258) (isEmpty!42 (toList!44 lm!258)))))

(declare-fun bs!114 () Bool)

(assert (= bs!114 d!501))

(declare-fun m!1041 () Bool)

(assert (=> bs!114 m!1041))

(assert (=> b!2393 d!501))

(declare-fun d!503 () Bool)

(declare-fun res!4743 () Bool)

(declare-fun e!781 () Bool)

(assert (=> d!503 (=> res!4743 e!781)))

(assert (=> d!503 (= res!4743 (not (is-Some!11 (getValueByKey!6 (toList!44 lm!258) k!394))))))

(assert (=> d!503 (= (forall!34 (getValueByKey!6 (toList!44 lm!258) k!394) lambda!41) e!781)))

(declare-fun b!2434 () Bool)

(declare-fun dynLambda!38 (Int B!288) Bool)

(assert (=> b!2434 (= e!781 (dynLambda!38 lambda!41 (v!1106 (getValueByKey!6 (toList!44 lm!258) k!394))))))

(assert (= (and d!503 (not res!4743)) b!2434))

(declare-fun b_lambda!277 () Bool)

(assert (=> (not b_lambda!277) (not b!2434)))

(declare-fun m!1051 () Bool)

(assert (=> b!2434 m!1051))

(assert (=> b!2395 d!503))

(declare-fun b!2462 () Bool)

(declare-fun e!798 () Option!12)

(declare-fun e!799 () Option!12)

(assert (=> b!2462 (= e!798 e!799)))

(declare-fun c!165 () Bool)

(assert (=> b!2462 (= c!165 (and (is-Cons!31 (toList!44 lm!258)) (not (= (_1!26 (h!597 (toList!44 lm!258))) k!394))))))

(declare-fun b!2461 () Bool)

(assert (=> b!2461 (= e!798 (Some!11 (_2!26 (h!597 (toList!44 lm!258)))))))

(declare-fun b!2464 () Bool)

(assert (=> b!2464 (= e!799 None!10)))

(declare-fun b!2463 () Bool)

(assert (=> b!2463 (= e!799 (getValueByKey!6 (t!2144 (toList!44 lm!258)) k!394))))

(declare-fun d!513 () Bool)

(declare-fun c!164 () Bool)

(assert (=> d!513 (= c!164 (and (is-Cons!31 (toList!44 lm!258)) (= (_1!26 (h!597 (toList!44 lm!258))) k!394)))))

(assert (=> d!513 (= (getValueByKey!6 (toList!44 lm!258) k!394) e!798)))

(assert (= (and d!513 c!164) b!2461))

(assert (= (and d!513 (not c!164)) b!2462))

(assert (= (and b!2462 c!165) b!2463))

(assert (= (and b!2462 (not c!165)) b!2464))

(declare-fun m!1063 () Bool)

(assert (=> b!2463 m!1063))

(assert (=> b!2395 d!513))

(declare-fun b!2469 () Bool)

(declare-fun e!803 () Bool)

(declare-fun tp_is_empty!39 () Bool)

(declare-fun tp!215 () Bool)

(assert (=> b!2469 (= e!803 (and tp_is_empty!39 tp!215))))

(assert (=> b!2396 (= tp!209 e!803)))

(assert (= (and b!2396 (is-Cons!31 (toList!44 lm!258))) b!2469))

(declare-fun b_lambda!289 () Bool)

(assert (= b_lambda!277 (or b!2395 b_lambda!289)))

(declare-fun bs!118 () Bool)

(declare-fun d!521 () Bool)

(assert (= bs!118 (and d!521 b!2395)))

(assert (=> bs!118 (= (dynLambda!38 lambda!41 (v!1106 (getValueByKey!6 (toList!44 lm!258) k!394))) (dynLambda!34 p!318 (tuple2!53 k!394 (v!1106 (getValueByKey!6 (toList!44 lm!258) k!394)))))))

(declare-fun b_lambda!293 () Bool)

(assert (=> (not b_lambda!293) (not bs!118)))

(declare-fun t!2154 () Bool)

(declare-fun tb!117 () Bool)

(assert (=> (and start!380 (= p!318 p!318) t!2154) tb!117))

(declare-fun result!159 () Bool)

(assert (=> tb!117 (= result!159 true)))

(assert (=> bs!118 t!2154))

(declare-fun b_and!183 () Bool)

(assert (= b_and!175 (and (=> t!2154 result!159) b_and!183)))

(declare-fun m!1067 () Bool)

(assert (=> bs!118 m!1067))

(assert (=> b!2434 d!521))

(declare-fun b_lambda!291 () Bool)

(assert (= b_lambda!271 (or (and start!380 b_free!53) b_lambda!291)))

(push 1)

(assert (not b_lambda!291))

(assert tp_is_empty!39)

(assert (not b!2463))

(assert b_and!183)

(assert (not b_lambda!293))

(assert (not d!501))

(assert (not b_lambda!289))

(assert (not b_next!53))

(assert (not b!2469))

(assert (not d!493))

(assert (not b!2406))

(check-sat)

(pop 1)

(push 1)

(assert b_and!183)

(assert (not b_next!53))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!305 () Bool)

(assert (= b_lambda!293 (or (and start!380 b_free!53) b_lambda!305)))

(push 1)

(assert (not b_lambda!291))

(assert (not b_lambda!305))

(assert tp_is_empty!39)

(assert (not b!2463))

(assert b_and!183)

(assert (not d!501))

(assert (not b_lambda!289))

(assert (not b_next!53))

(assert (not b!2469))

(assert (not d!493))

(assert (not b!2406))

(check-sat)

(pop 1)

(push 1)

(assert b_and!183)

(assert (not b_next!53))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!537 () Bool)

(assert (=> d!537 (= (isEmpty!42 (toList!44 lm!258)) (is-Nil!32 (toList!44 lm!258)))))

(assert (=> d!501 d!537))

(declare-fun b!2499 () Bool)

(declare-fun e!823 () Option!12)

(declare-fun e!824 () Option!12)

(assert (=> b!2499 (= e!823 e!824)))

(declare-fun c!173 () Bool)

(assert (=> b!2499 (= c!173 (and (is-Cons!31 (t!2144 (toList!44 lm!258))) (not (= (_1!26 (h!597 (t!2144 (toList!44 lm!258)))) k!394))))))

(declare-fun b!2498 () Bool)

(assert (=> b!2498 (= e!823 (Some!11 (_2!26 (h!597 (t!2144 (toList!44 lm!258))))))))

(declare-fun b!2501 () Bool)

(assert (=> b!2501 (= e!824 None!10)))

(declare-fun b!2500 () Bool)

(assert (=> b!2500 (= e!824 (getValueByKey!6 (t!2144 (t!2144 (toList!44 lm!258))) k!394))))

(declare-fun d!543 () Bool)

(declare-fun c!172 () Bool)

(assert (=> d!543 (= c!172 (and (is-Cons!31 (t!2144 (toList!44 lm!258))) (= (_1!26 (h!597 (t!2144 (toList!44 lm!258)))) k!394)))))

(assert (=> d!543 (= (getValueByKey!6 (t!2144 (toList!44 lm!258)) k!394) e!823)))

(assert (= (and d!543 c!172) b!2498))

(assert (= (and d!543 (not c!172)) b!2499))

(assert (= (and b!2499 c!173) b!2500))

(assert (= (and b!2499 (not c!173)) b!2501))

(declare-fun m!1085 () Bool)

(assert (=> b!2500 m!1085))

(assert (=> b!2463 d!543))

(declare-fun d!545 () Bool)

(declare-fun res!4759 () Bool)

(declare-fun e!825 () Bool)

(assert (=> d!545 (=> res!4759 e!825)))

(assert (=> d!545 (= res!4759 (is-Nil!32 (t!2144 (toList!44 lm!258))))))

(assert (=> d!545 (= (forall!33 (t!2144 (toList!44 lm!258)) p!318) e!825)))

