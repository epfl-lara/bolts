; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1354 () Bool)

(assert start!1354)

(declare-fun b_free!419 () Bool)

(declare-fun b_next!419 () Bool)

(assert (=> start!1354 (= b_free!419 (not b_next!419))))

(declare-fun tp!1693 () Bool)

(declare-fun b_and!625 () Bool)

(assert (=> start!1354 (= tp!1693 b_and!625)))

(declare-fun b!10810 () Bool)

(declare-fun res!9114 () Bool)

(declare-fun e!6312 () Bool)

(assert (=> b!10810 (=> (not res!9114) (not e!6312))))

(declare-datatypes ((B!360 0))(
  ( (B!361 (val!275 Int)) )
))
(declare-datatypes ((tuple2!332 0))(
  ( (tuple2!333 (_1!166 (_ BitVec 64)) (_2!166 B!360)) )
))
(declare-datatypes ((List!322 0))(
  ( (Nil!319) (Cons!318 (h!884 tuple2!332) (t!2517 List!322)) )
))
(declare-fun kvs!4 () List!322)

(declare-fun p!216 () Int)

(declare-fun forall!46 (List!322 Int) Bool)

(assert (=> b!10810 (= res!9114 (forall!46 kvs!4 p!216))))

(declare-fun b!10811 () Bool)

(declare-fun e!6314 () Bool)

(declare-fun tp!1694 () Bool)

(assert (=> b!10811 (= e!6314 tp!1694)))

(declare-fun b!10812 () Bool)

(declare-fun res!9115 () Bool)

(assert (=> b!10812 (=> (not res!9115) (not e!6312))))

(declare-fun isEmpty!56 (List!322) Bool)

(assert (=> b!10812 (= res!9115 (not (isEmpty!56 kvs!4)))))

(declare-fun res!9113 () Bool)

(assert (=> start!1354 (=> (not res!9113) (not e!6312))))

(declare-datatypes ((ListLongMap!313 0))(
  ( (ListLongMap!314 (toList!172 List!322)) )
))
(declare-fun lm!227 () ListLongMap!313)

(assert (=> start!1354 (= res!9113 (forall!46 (toList!172 lm!227) p!216))))

(assert (=> start!1354 e!6312))

(declare-fun inv!520 (ListLongMap!313) Bool)

(assert (=> start!1354 (and (inv!520 lm!227) e!6314)))

(assert (=> start!1354 tp!1693))

(declare-fun e!6313 () Bool)

(assert (=> start!1354 e!6313))

(declare-fun b!10813 () Bool)

(declare-fun tp_is_empty!533 () Bool)

(declare-fun tp!1692 () Bool)

(assert (=> b!10813 (= e!6313 (and tp_is_empty!533 tp!1692))))

(declare-fun b!10814 () Bool)

(assert (=> b!10814 (= e!6312 (not (not (= kvs!4 Nil!319))))))

(declare-fun lt!2674 () ListLongMap!313)

(declare-fun lt!2676 () tuple2!332)

(declare-fun +!19 (ListLongMap!313 tuple2!332) ListLongMap!313)

(assert (=> b!10814 (= lt!2674 (+!19 lm!227 lt!2676))))

(assert (=> b!10814 (forall!46 (toList!172 (+!19 lm!227 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676)))) p!216)))

(declare-datatypes ((Unit!225 0))(
  ( (Unit!226) )
))
(declare-fun lt!2675 () Unit!225)

(declare-fun addValidProp!7 (ListLongMap!313 Int (_ BitVec 64) B!360) Unit!225)

(assert (=> b!10814 (= lt!2675 (addValidProp!7 lm!227 p!216 (_1!166 lt!2676) (_2!166 lt!2676)))))

(declare-fun head!763 (List!322) tuple2!332)

(assert (=> b!10814 (= lt!2676 (head!763 kvs!4))))

(assert (= (and start!1354 res!9113) b!10810))

(assert (= (and b!10810 res!9114) b!10812))

(assert (= (and b!10812 res!9115) b!10814))

(assert (= start!1354 b!10811))

(assert (= (and start!1354 (is-Cons!318 kvs!4)) b!10813))

(declare-fun m!7031 () Bool)

(assert (=> b!10810 m!7031))

(declare-fun m!7033 () Bool)

(assert (=> b!10812 m!7033))

(declare-fun m!7035 () Bool)

(assert (=> start!1354 m!7035))

(declare-fun m!7037 () Bool)

(assert (=> start!1354 m!7037))

(declare-fun m!7039 () Bool)

(assert (=> b!10814 m!7039))

(declare-fun m!7041 () Bool)

(assert (=> b!10814 m!7041))

(declare-fun m!7043 () Bool)

(assert (=> b!10814 m!7043))

(declare-fun m!7045 () Bool)

(assert (=> b!10814 m!7045))

(declare-fun m!7047 () Bool)

(assert (=> b!10814 m!7047))

(push 1)

(assert (not b!10814))

(assert (not b!10812))

(assert tp_is_empty!533)

(assert b_and!625)

(assert (not b!10811))

(assert (not b_next!419))

(assert (not start!1354))

(assert (not b!10813))

(assert (not b!10810))

(check-sat)

(pop 1)

(push 1)

(assert b_and!625)

(assert (not b_next!419))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1217 () Bool)

(declare-fun res!9124 () Bool)

(declare-fun e!6323 () Bool)

(assert (=> d!1217 (=> res!9124 e!6323)))

(assert (=> d!1217 (= res!9124 (is-Nil!319 kvs!4))))

(assert (=> d!1217 (= (forall!46 kvs!4 p!216) e!6323)))

(declare-fun b!10823 () Bool)

(declare-fun e!6324 () Bool)

(assert (=> b!10823 (= e!6323 e!6324)))

(declare-fun res!9125 () Bool)

(assert (=> b!10823 (=> (not res!9125) (not e!6324))))

(declare-fun dynLambda!59 (Int tuple2!332) Bool)

(assert (=> b!10823 (= res!9125 (dynLambda!59 p!216 (h!884 kvs!4)))))

(declare-fun b!10824 () Bool)

(assert (=> b!10824 (= e!6324 (forall!46 (t!2517 kvs!4) p!216))))

(assert (= (and d!1217 (not res!9124)) b!10823))

(assert (= (and b!10823 res!9125) b!10824))

(declare-fun b_lambda!455 () Bool)

(assert (=> (not b_lambda!455) (not b!10823)))

(declare-fun t!2519 () Bool)

(declare-fun tb!195 () Bool)

(assert (=> (and start!1354 (= p!216 p!216) t!2519) tb!195))

(declare-fun result!339 () Bool)

(assert (=> tb!195 (= result!339 true)))

(assert (=> b!10823 t!2519))

(declare-fun b_and!627 () Bool)

(assert (= b_and!625 (and (=> t!2519 result!339) b_and!627)))

(declare-fun m!7049 () Bool)

(assert (=> b!10823 m!7049))

(declare-fun m!7055 () Bool)

(assert (=> b!10824 m!7055))

(assert (=> b!10810 d!1217))

(declare-fun d!1227 () Bool)

(assert (=> d!1227 (= (isEmpty!56 kvs!4) (is-Nil!319 kvs!4))))

(assert (=> b!10812 d!1227))

(declare-fun d!1229 () Bool)

(declare-fun res!9128 () Bool)

(declare-fun e!6327 () Bool)

(assert (=> d!1229 (=> res!9128 e!6327)))

(assert (=> d!1229 (= res!9128 (is-Nil!319 (toList!172 lm!227)))))

(assert (=> d!1229 (= (forall!46 (toList!172 lm!227) p!216) e!6327)))

(declare-fun b!10827 () Bool)

(declare-fun e!6328 () Bool)

(assert (=> b!10827 (= e!6327 e!6328)))

(declare-fun res!9129 () Bool)

(assert (=> b!10827 (=> (not res!9129) (not e!6328))))

(assert (=> b!10827 (= res!9129 (dynLambda!59 p!216 (h!884 (toList!172 lm!227))))))

(declare-fun b!10828 () Bool)

(assert (=> b!10828 (= e!6328 (forall!46 (t!2517 (toList!172 lm!227)) p!216))))

(assert (= (and d!1229 (not res!9128)) b!10827))

(assert (= (and b!10827 res!9129) b!10828))

(declare-fun b_lambda!459 () Bool)

(assert (=> (not b_lambda!459) (not b!10827)))

(declare-fun t!2523 () Bool)

(declare-fun tb!199 () Bool)

(assert (=> (and start!1354 (= p!216 p!216) t!2523) tb!199))

(declare-fun result!343 () Bool)

(assert (=> tb!199 (= result!343 true)))

(assert (=> b!10827 t!2523))

(declare-fun b_and!631 () Bool)

(assert (= b_and!627 (and (=> t!2523 result!343) b_and!631)))

(declare-fun m!7059 () Bool)

(assert (=> b!10827 m!7059))

(declare-fun m!7061 () Bool)

(assert (=> b!10828 m!7061))

(assert (=> start!1354 d!1229))

(declare-fun d!1233 () Bool)

(declare-fun isStrictlySorted!35 (List!322) Bool)

(assert (=> d!1233 (= (inv!520 lm!227) (isStrictlySorted!35 (toList!172 lm!227)))))

(declare-fun bs!406 () Bool)

(assert (= bs!406 d!1233))

(declare-fun m!7071 () Bool)

(assert (=> bs!406 m!7071))

(assert (=> start!1354 d!1233))

(declare-fun d!1239 () Bool)

(assert (=> d!1239 (forall!46 (toList!172 (+!19 lm!227 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676)))) p!216)))

(declare-fun lt!2690 () Unit!225)

(declare-fun choose!151 (ListLongMap!313 Int (_ BitVec 64) B!360) Unit!225)

(assert (=> d!1239 (= lt!2690 (choose!151 lm!227 p!216 (_1!166 lt!2676) (_2!166 lt!2676)))))

(declare-fun e!6340 () Bool)

(assert (=> d!1239 e!6340))

(declare-fun res!9143 () Bool)

(assert (=> d!1239 (=> (not res!9143) (not e!6340))))

(assert (=> d!1239 (= res!9143 (forall!46 (toList!172 lm!227) p!216))))

(assert (=> d!1239 (= (addValidProp!7 lm!227 p!216 (_1!166 lt!2676) (_2!166 lt!2676)) lt!2690)))

(declare-fun b!10844 () Bool)

(assert (=> b!10844 (= e!6340 (dynLambda!59 p!216 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676))))))

(assert (= (and d!1239 res!9143) b!10844))

(declare-fun b_lambda!467 () Bool)

(assert (=> (not b_lambda!467) (not b!10844)))

(declare-fun t!2531 () Bool)

(declare-fun tb!207 () Bool)

(assert (=> (and start!1354 (= p!216 p!216) t!2531) tb!207))

(declare-fun result!351 () Bool)

(assert (=> tb!207 (= result!351 true)))

(assert (=> b!10844 t!2531))

(declare-fun b_and!639 () Bool)

(assert (= b_and!631 (and (=> t!2531 result!351) b_and!639)))

(assert (=> d!1239 m!7047))

(assert (=> d!1239 m!7045))

(declare-fun m!7077 () Bool)

(assert (=> d!1239 m!7077))

(assert (=> d!1239 m!7035))

(declare-fun m!7079 () Bool)

(assert (=> b!10844 m!7079))

(assert (=> b!10814 d!1239))

(declare-fun d!1243 () Bool)

(assert (=> d!1243 (= (head!763 kvs!4) (h!884 kvs!4))))

(assert (=> b!10814 d!1243))

(declare-fun d!1245 () Bool)

(declare-fun e!6350 () Bool)

(assert (=> d!1245 e!6350))

(declare-fun res!9159 () Bool)

(assert (=> d!1245 (=> (not res!9159) (not e!6350))))

(declare-fun lt!2721 () ListLongMap!313)

(declare-fun contains!140 (ListLongMap!313 (_ BitVec 64)) Bool)

(assert (=> d!1245 (= res!9159 (contains!140 lt!2721 (_1!166 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676)))))))

(declare-fun lt!2720 () List!322)

(assert (=> d!1245 (= lt!2721 (ListLongMap!314 lt!2720))))

(declare-fun lt!2719 () Unit!225)

(declare-fun lt!2718 () Unit!225)

(assert (=> d!1245 (= lt!2719 lt!2718)))

(declare-datatypes ((Option!27 0))(
  ( (Some!26 (v!1341 B!360)) (None!25) )
))
(declare-fun getValueByKey!21 (List!322 (_ BitVec 64)) Option!27)

(assert (=> d!1245 (= (getValueByKey!21 lt!2720 (_1!166 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676)))) (Some!26 (_2!166 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!5 (List!322 (_ BitVec 64) B!360) Unit!225)

(assert (=> d!1245 (= lt!2718 (lemmaContainsTupThenGetReturnValue!5 lt!2720 (_1!166 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676))) (_2!166 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676)))))))

(declare-fun insertStrictlySorted!5 (List!322 (_ BitVec 64) B!360) List!322)

(assert (=> d!1245 (= lt!2720 (insertStrictlySorted!5 (toList!172 lm!227) (_1!166 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676))) (_2!166 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676)))))))

(assert (=> d!1245 (= (+!19 lm!227 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676))) lt!2721)))

(declare-fun b!10861 () Bool)

(declare-fun res!9160 () Bool)

(assert (=> b!10861 (=> (not res!9160) (not e!6350))))

(assert (=> b!10861 (= res!9160 (= (getValueByKey!21 (toList!172 lt!2721) (_1!166 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676)))) (Some!26 (_2!166 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676))))))))

(declare-fun b!10862 () Bool)

(declare-fun contains!141 (List!322 tuple2!332) Bool)

(assert (=> b!10862 (= e!6350 (contains!141 (toList!172 lt!2721) (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676))))))

(assert (= (and d!1245 res!9159) b!10861))

(assert (= (and b!10861 res!9160) b!10862))

(declare-fun m!7109 () Bool)

(assert (=> d!1245 m!7109))

(declare-fun m!7111 () Bool)

(assert (=> d!1245 m!7111))

(declare-fun m!7113 () Bool)

(assert (=> d!1245 m!7113))

(declare-fun m!7115 () Bool)

(assert (=> d!1245 m!7115))

(declare-fun m!7117 () Bool)

(assert (=> b!10861 m!7117))

(declare-fun m!7119 () Bool)

(assert (=> b!10862 m!7119))

(assert (=> b!10814 d!1245))

(declare-fun d!1253 () Bool)

(declare-fun res!9161 () Bool)

(declare-fun e!6354 () Bool)

(assert (=> d!1253 (=> res!9161 e!6354)))

(assert (=> d!1253 (= res!9161 (is-Nil!319 (toList!172 (+!19 lm!227 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676))))))))

(assert (=> d!1253 (= (forall!46 (toList!172 (+!19 lm!227 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676)))) p!216) e!6354)))

(declare-fun b!10868 () Bool)

(declare-fun e!6355 () Bool)

(assert (=> b!10868 (= e!6354 e!6355)))

(declare-fun res!9162 () Bool)

(assert (=> b!10868 (=> (not res!9162) (not e!6355))))

(assert (=> b!10868 (= res!9162 (dynLambda!59 p!216 (h!884 (toList!172 (+!19 lm!227 (tuple2!333 (_1!166 lt!2676) (_2!166 lt!2676)))))))))

