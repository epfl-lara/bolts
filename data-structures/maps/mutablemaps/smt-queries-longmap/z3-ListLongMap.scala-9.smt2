; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378 () Bool)

(assert start!378)

(declare-fun b_free!51 () Bool)

(declare-fun b_next!51 () Bool)

(assert (=> start!378 (= b_free!51 (not b_next!51))))

(declare-fun tp!203 () Bool)

(declare-fun b_and!171 () Bool)

(assert (=> start!378 (= tp!203 b_and!171)))

(declare-fun b!2379 () Bool)

(assert (=> b!2379 true))

(assert (=> b!2379 true))

(declare-fun order!17 () Int)

(declare-fun lambda!38 () Int)

(declare-fun order!19 () Int)

(declare-fun p!318 () Int)

(declare-fun dynLambda!29 (Int Int) Int)

(declare-fun dynLambda!30 (Int Int) Int)

(assert (=> b!2379 (< (dynLambda!29 order!17 p!318) (dynLambda!30 order!19 lambda!38))))

(declare-fun b!2378 () Bool)

(declare-fun e!742 () Bool)

(declare-datatypes ((B!286 0))(
  ( (B!287 (val!25 Int)) )
))
(declare-datatypes ((tuple2!50 0))(
  ( (tuple2!51 (_1!25 (_ BitVec 64)) (_2!25 B!286)) )
))
(declare-datatypes ((List!34 0))(
  ( (Nil!31) (Cons!30 (h!596 tuple2!50) (t!2143 List!34)) )
))
(declare-datatypes ((ListLongMap!55 0))(
  ( (ListLongMap!56 (toList!43 List!34)) )
))
(declare-fun lm!258 () ListLongMap!55)

(declare-fun k0!394 () (_ BitVec 64))

(declare-fun head!756 (List!34) tuple2!50)

(assert (=> b!2378 (= e!742 (= (_1!25 (head!756 (toList!43 lm!258))) k0!394))))

(declare-fun res!4712 () Bool)

(declare-fun e!744 () Bool)

(assert (=> start!378 (=> (not res!4712) (not e!744))))

(declare-fun forall!31 (List!34 Int) Bool)

(assert (=> start!378 (= res!4712 (forall!31 (toList!43 lm!258) p!318))))

(assert (=> start!378 e!744))

(declare-fun e!743 () Bool)

(declare-fun inv!80 (ListLongMap!55) Bool)

(assert (=> start!378 (and (inv!80 lm!258) e!743)))

(assert (=> start!378 tp!203))

(assert (=> start!378 true))

(declare-fun b!2380 () Bool)

(declare-fun tp!202 () Bool)

(assert (=> b!2380 (= e!743 tp!202)))

(declare-fun b!2377 () Bool)

(declare-fun res!4711 () Bool)

(assert (=> b!2377 (=> (not res!4711) (not e!744))))

(assert (=> b!2377 (= res!4711 e!742)))

(declare-fun res!4710 () Bool)

(assert (=> b!2377 (=> res!4710 e!742)))

(declare-fun isEmpty!38 (ListLongMap!55) Bool)

(assert (=> b!2377 (= res!4710 (isEmpty!38 lm!258))))

(declare-datatypes ((Option!11 0))(
  ( (Some!10 (v!1103 B!286)) (None!9) )
))
(declare-fun forall!32 (Option!11 Int) Bool)

(declare-fun getValueByKey!5 (List!34 (_ BitVec 64)) Option!11)

(assert (=> b!2379 (= e!744 (not (forall!32 (getValueByKey!5 (toList!43 lm!258) k0!394) lambda!38)))))

(assert (= (and start!378 res!4712) b!2377))

(assert (= (and b!2377 (not res!4710)) b!2378))

(assert (= (and b!2377 res!4711) b!2379))

(assert (= start!378 b!2380))

(declare-fun m!1005 () Bool)

(assert (=> b!2378 m!1005))

(declare-fun m!1007 () Bool)

(assert (=> start!378 m!1007))

(declare-fun m!1009 () Bool)

(assert (=> start!378 m!1009))

(declare-fun m!1011 () Bool)

(assert (=> b!2377 m!1011))

(declare-fun m!1013 () Bool)

(assert (=> b!2379 m!1013))

(assert (=> b!2379 m!1013))

(declare-fun m!1015 () Bool)

(assert (=> b!2379 m!1015))

(check-sat (not b!2380) (not b!2378) b_and!171 (not b_next!51) (not start!378) (not b!2377) (not b!2379))
(check-sat b_and!171 (not b_next!51))
(get-model)

(declare-fun d!491 () Bool)

(declare-fun isEmpty!41 (List!34) Bool)

(assert (=> d!491 (= (isEmpty!38 lm!258) (isEmpty!41 (toList!43 lm!258)))))

(declare-fun bs!112 () Bool)

(assert (= bs!112 d!491))

(declare-fun m!1037 () Bool)

(assert (=> bs!112 m!1037))

(assert (=> b!2377 d!491))

(declare-fun d!497 () Bool)

(declare-fun res!4735 () Bool)

(declare-fun e!771 () Bool)

(assert (=> d!497 (=> res!4735 e!771)))

(get-info :version)

(assert (=> d!497 (= res!4735 ((_ is Nil!31) (toList!43 lm!258)))))

(assert (=> d!497 (= (forall!31 (toList!43 lm!258) p!318) e!771)))

(declare-fun b!2422 () Bool)

(declare-fun e!772 () Bool)

(assert (=> b!2422 (= e!771 e!772)))

(declare-fun res!4736 () Bool)

(assert (=> b!2422 (=> (not res!4736) (not e!772))))

(declare-fun dynLambda!35 (Int tuple2!50) Bool)

(assert (=> b!2422 (= res!4736 (dynLambda!35 p!318 (h!596 (toList!43 lm!258))))))

(declare-fun b!2423 () Bool)

(assert (=> b!2423 (= e!772 (forall!31 (t!2143 (toList!43 lm!258)) p!318))))

(assert (= (and d!497 (not res!4735)) b!2422))

(assert (= (and b!2422 res!4736) b!2423))

(declare-fun b_lambda!275 () Bool)

(assert (=> (not b_lambda!275) (not b!2422)))

(declare-fun t!2148 () Bool)

(declare-fun tb!111 () Bool)

(assert (=> (and start!378 (= p!318 p!318) t!2148) tb!111))

(declare-fun result!147 () Bool)

(assert (=> tb!111 (= result!147 true)))

(assert (=> b!2422 t!2148))

(declare-fun b_and!177 () Bool)

(assert (= b_and!171 (and (=> t!2148 result!147) b_and!177)))

(declare-fun m!1043 () Bool)

(assert (=> b!2422 m!1043))

(declare-fun m!1045 () Bool)

(assert (=> b!2423 m!1045))

(assert (=> start!378 d!497))

(declare-fun d!505 () Bool)

(declare-fun isStrictlySorted!17 (List!34) Bool)

(assert (=> d!505 (= (inv!80 lm!258) (isStrictlySorted!17 (toList!43 lm!258)))))

(declare-fun bs!115 () Bool)

(assert (= bs!115 d!505))

(declare-fun m!1049 () Bool)

(assert (=> bs!115 m!1049))

(assert (=> start!378 d!505))

(declare-fun d!509 () Bool)

(assert (=> d!509 (= (head!756 (toList!43 lm!258)) (h!596 (toList!43 lm!258)))))

(assert (=> b!2378 d!509))

(declare-fun d!511 () Bool)

(declare-fun res!4748 () Bool)

(declare-fun e!786 () Bool)

(assert (=> d!511 (=> res!4748 e!786)))

(assert (=> d!511 (= res!4748 (not ((_ is Some!10) (getValueByKey!5 (toList!43 lm!258) k0!394))))))

(assert (=> d!511 (= (forall!32 (getValueByKey!5 (toList!43 lm!258) k0!394) lambda!38) e!786)))

(declare-fun b!2439 () Bool)

(declare-fun dynLambda!37 (Int B!286) Bool)

(assert (=> b!2439 (= e!786 (dynLambda!37 lambda!38 (v!1103 (getValueByKey!5 (toList!43 lm!258) k0!394))))))

(assert (= (and d!511 (not res!4748)) b!2439))

(declare-fun b_lambda!281 () Bool)

(assert (=> (not b_lambda!281) (not b!2439)))

(declare-fun m!1057 () Bool)

(assert (=> b!2439 m!1057))

(assert (=> b!2379 d!511))

(declare-fun b!2473 () Bool)

(declare-fun e!804 () Option!11)

(assert (=> b!2473 (= e!804 None!9)))

(declare-fun b!2470 () Bool)

(declare-fun e!802 () Option!11)

(assert (=> b!2470 (= e!802 (Some!10 (_2!25 (h!596 (toList!43 lm!258)))))))

(declare-fun b!2471 () Bool)

(assert (=> b!2471 (= e!802 e!804)))

(declare-fun c!167 () Bool)

(assert (=> b!2471 (= c!167 (and ((_ is Cons!30) (toList!43 lm!258)) (not (= (_1!25 (h!596 (toList!43 lm!258))) k0!394))))))

(declare-fun b!2472 () Bool)

(assert (=> b!2472 (= e!804 (getValueByKey!5 (t!2143 (toList!43 lm!258)) k0!394))))

(declare-fun d!517 () Bool)

(declare-fun c!166 () Bool)

(assert (=> d!517 (= c!166 (and ((_ is Cons!30) (toList!43 lm!258)) (= (_1!25 (h!596 (toList!43 lm!258))) k0!394)))))

(assert (=> d!517 (= (getValueByKey!5 (toList!43 lm!258) k0!394) e!802)))

(assert (= (and d!517 c!166) b!2470))

(assert (= (and d!517 (not c!166)) b!2471))

(assert (= (and b!2471 c!167) b!2472))

(assert (= (and b!2471 (not c!167)) b!2473))

(declare-fun m!1065 () Bool)

(assert (=> b!2472 m!1065))

(assert (=> b!2379 d!517))

(declare-fun b!2478 () Bool)

(declare-fun e!807 () Bool)

(declare-fun tp_is_empty!41 () Bool)

(declare-fun tp!218 () Bool)

(assert (=> b!2478 (= e!807 (and tp_is_empty!41 tp!218))))

(assert (=> b!2380 (= tp!202 e!807)))

(assert (= (and b!2380 ((_ is Cons!30) (toList!43 lm!258))) b!2478))

(declare-fun b_lambda!295 () Bool)

(assert (= b_lambda!275 (or (and start!378 b_free!51) b_lambda!295)))

(declare-fun b_lambda!297 () Bool)

(assert (= b_lambda!281 (or b!2379 b_lambda!297)))

(declare-fun bs!119 () Bool)

(declare-fun d!523 () Bool)

(assert (= bs!119 (and d!523 b!2379)))

(assert (=> bs!119 (= (dynLambda!37 lambda!38 (v!1103 (getValueByKey!5 (toList!43 lm!258) k0!394))) (dynLambda!35 p!318 (tuple2!51 k0!394 (v!1103 (getValueByKey!5 (toList!43 lm!258) k0!394)))))))

(declare-fun b_lambda!299 () Bool)

(assert (=> (not b_lambda!299) (not bs!119)))

(declare-fun t!2156 () Bool)

(declare-fun tb!119 () Bool)

(assert (=> (and start!378 (= p!318 p!318) t!2156) tb!119))

(declare-fun result!161 () Bool)

(assert (=> tb!119 (= result!161 true)))

(assert (=> bs!119 t!2156))

(declare-fun b_and!185 () Bool)

(assert (= b_and!177 (and (=> t!2156 result!161) b_and!185)))

(declare-fun m!1069 () Bool)

(assert (=> bs!119 m!1069))

(assert (=> b!2439 d!523))

(check-sat (not b!2478) (not b_lambda!295) tp_is_empty!41 (not b_lambda!299) b_and!185 (not d!505) (not b_next!51) (not b!2472) (not b!2423) (not b_lambda!297) (not d!491))
(check-sat b_and!185 (not b_next!51))
(get-model)

(declare-fun b_lambda!303 () Bool)

(assert (= b_lambda!299 (or (and start!378 b_free!51) b_lambda!303)))

(check-sat (not b!2478) (not b_lambda!295) tp_is_empty!41 (not b_lambda!303) b_and!185 (not d!505) (not b_next!51) (not b!2472) (not b!2423) (not b_lambda!297) (not d!491))
(check-sat b_and!185 (not b_next!51))
(get-model)

(declare-fun d!533 () Bool)

(assert (=> d!533 (= (isEmpty!41 (toList!43 lm!258)) ((_ is Nil!31) (toList!43 lm!258)))))

(assert (=> d!491 d!533))

(declare-fun b!2494 () Bool)

(declare-fun e!819 () Option!11)

(assert (=> b!2494 (= e!819 None!9)))

(declare-fun b!2491 () Bool)

(declare-fun e!818 () Option!11)

(assert (=> b!2491 (= e!818 (Some!10 (_2!25 (h!596 (t!2143 (toList!43 lm!258))))))))

(declare-fun b!2492 () Bool)

(assert (=> b!2492 (= e!818 e!819)))

(declare-fun c!171 () Bool)

(assert (=> b!2492 (= c!171 (and ((_ is Cons!30) (t!2143 (toList!43 lm!258))) (not (= (_1!25 (h!596 (t!2143 (toList!43 lm!258)))) k0!394))))))

(declare-fun b!2493 () Bool)

(assert (=> b!2493 (= e!819 (getValueByKey!5 (t!2143 (t!2143 (toList!43 lm!258))) k0!394))))

(declare-fun d!535 () Bool)

(declare-fun c!170 () Bool)

(assert (=> d!535 (= c!170 (and ((_ is Cons!30) (t!2143 (toList!43 lm!258))) (= (_1!25 (h!596 (t!2143 (toList!43 lm!258)))) k0!394)))))

(assert (=> d!535 (= (getValueByKey!5 (t!2143 (toList!43 lm!258)) k0!394) e!818)))

(assert (= (and d!535 c!170) b!2491))

(assert (= (and d!535 (not c!170)) b!2492))

(assert (= (and b!2492 c!171) b!2493))

(assert (= (and b!2492 (not c!171)) b!2494))

(declare-fun m!1079 () Bool)

(assert (=> b!2493 m!1079))

(assert (=> b!2472 d!535))

(declare-fun d!539 () Bool)

(declare-fun res!4757 () Bool)

(declare-fun e!821 () Bool)

(assert (=> d!539 (=> res!4757 e!821)))

(assert (=> d!539 (= res!4757 ((_ is Nil!31) (t!2143 (toList!43 lm!258))))))

(assert (=> d!539 (= (forall!31 (t!2143 (toList!43 lm!258)) p!318) e!821)))

(declare-fun b!2496 () Bool)

(declare-fun e!822 () Bool)

(assert (=> b!2496 (= e!821 e!822)))

(declare-fun res!4758 () Bool)

(assert (=> b!2496 (=> (not res!4758) (not e!822))))

(assert (=> b!2496 (= res!4758 (dynLambda!35 p!318 (h!596 (t!2143 (toList!43 lm!258)))))))

(declare-fun b!2497 () Bool)

(assert (=> b!2497 (= e!822 (forall!31 (t!2143 (t!2143 (toList!43 lm!258))) p!318))))

(assert (= (and d!539 (not res!4757)) b!2496))

(assert (= (and b!2496 res!4758) b!2497))

(declare-fun b_lambda!311 () Bool)

(assert (=> (not b_lambda!311) (not b!2496)))

(declare-fun t!2160 () Bool)

(declare-fun tb!123 () Bool)

(assert (=> (and start!378 (= p!318 p!318) t!2160) tb!123))

(declare-fun result!165 () Bool)

(assert (=> tb!123 (= result!165 true)))

(assert (=> b!2496 t!2160))

(declare-fun b_and!189 () Bool)

(assert (= b_and!185 (and (=> t!2160 result!165) b_and!189)))

(declare-fun m!1081 () Bool)

(assert (=> b!2496 m!1081))

(declare-fun m!1083 () Bool)

(assert (=> b!2497 m!1083))

(assert (=> b!2423 d!539))

(declare-fun d!541 () Bool)

(declare-fun res!4765 () Bool)

(declare-fun e!831 () Bool)

(assert (=> d!541 (=> res!4765 e!831)))

(assert (=> d!541 (= res!4765 (or ((_ is Nil!31) (toList!43 lm!258)) ((_ is Nil!31) (t!2143 (toList!43 lm!258)))))))

(assert (=> d!541 (= (isStrictlySorted!17 (toList!43 lm!258)) e!831)))

(declare-fun b!2508 () Bool)

(declare-fun e!832 () Bool)

(assert (=> b!2508 (= e!831 e!832)))

(declare-fun res!4766 () Bool)

(assert (=> b!2508 (=> (not res!4766) (not e!832))))

(assert (=> b!2508 (= res!4766 (bvslt (_1!25 (h!596 (toList!43 lm!258))) (_1!25 (h!596 (t!2143 (toList!43 lm!258))))))))

(declare-fun b!2509 () Bool)

(assert (=> b!2509 (= e!832 (isStrictlySorted!17 (t!2143 (toList!43 lm!258))))))

(assert (= (and d!541 (not res!4765)) b!2508))

(assert (= (and b!2508 res!4766) b!2509))

(declare-fun m!1091 () Bool)

(assert (=> b!2509 m!1091))

(assert (=> d!505 d!541))

(declare-fun b!2510 () Bool)

(declare-fun e!833 () Bool)

(declare-fun tp!220 () Bool)

(assert (=> b!2510 (= e!833 (and tp_is_empty!41 tp!220))))

(assert (=> b!2478 (= tp!218 e!833)))

(assert (= (and b!2478 ((_ is Cons!30) (t!2143 (toList!43 lm!258)))) b!2510))

(declare-fun b_lambda!315 () Bool)

(assert (= b_lambda!311 (or (and start!378 b_free!51) b_lambda!315)))

(check-sat (not b!2497) (not b!2509) (not b_lambda!295) tp_is_empty!41 (not b_lambda!303) (not b!2493) (not b_lambda!297) (not b!2510) (not b_lambda!315) b_and!189 (not b_next!51))
(check-sat b_and!189 (not b_next!51))
