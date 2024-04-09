; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1312 () Bool)

(assert start!1312)

(declare-fun b_free!413 () Bool)

(declare-fun b_next!413 () Bool)

(assert (=> start!1312 (= b_free!413 (not b_next!413))))

(declare-fun tp!1653 () Bool)

(declare-fun b_and!595 () Bool)

(assert (=> start!1312 (= tp!1653 b_and!595)))

(declare-fun b!10687 () Bool)

(declare-fun e!6225 () Bool)

(declare-fun tp!1654 () Bool)

(assert (=> b!10687 (= e!6225 tp!1654)))

(declare-fun b!10688 () Bool)

(declare-fun res!9029 () Bool)

(declare-fun e!6227 () Bool)

(assert (=> b!10688 (=> (not res!9029) (not e!6227))))

(declare-datatypes ((B!354 0))(
  ( (B!355 (val!272 Int)) )
))
(declare-datatypes ((tuple2!326 0))(
  ( (tuple2!327 (_1!163 (_ BitVec 64)) (_2!163 B!354)) )
))
(declare-datatypes ((List!319 0))(
  ( (Nil!316) (Cons!315 (h!881 tuple2!326) (t!2490 List!319)) )
))
(declare-fun kvs!4 () List!319)

(declare-fun isEmpty!53 (List!319) Bool)

(assert (=> b!10688 (= res!9029 (not (isEmpty!53 kvs!4)))))

(declare-fun res!9030 () Bool)

(assert (=> start!1312 (=> (not res!9030) (not e!6227))))

(declare-datatypes ((ListLongMap!307 0))(
  ( (ListLongMap!308 (toList!169 List!319)) )
))
(declare-fun lm!227 () ListLongMap!307)

(declare-fun p!216 () Int)

(declare-fun forall!43 (List!319 Int) Bool)

(assert (=> start!1312 (= res!9030 (forall!43 (toList!169 lm!227) p!216))))

(assert (=> start!1312 e!6227))

(declare-fun inv!512 (ListLongMap!307) Bool)

(assert (=> start!1312 (and (inv!512 lm!227) e!6225)))

(assert (=> start!1312 tp!1653))

(declare-fun e!6226 () Bool)

(assert (=> start!1312 e!6226))

(declare-fun b!10689 () Bool)

(assert (=> b!10689 (= e!6227 (not (not (= kvs!4 Nil!316))))))

(declare-fun lt!2604 () tuple2!326)

(declare-fun +!16 (ListLongMap!307 tuple2!326) ListLongMap!307)

(assert (=> b!10689 (forall!43 (toList!169 (+!16 lm!227 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604)))) p!216)))

(declare-datatypes ((Unit!219 0))(
  ( (Unit!220) )
))
(declare-fun lt!2603 () Unit!219)

(declare-fun addValidProp!4 (ListLongMap!307 Int (_ BitVec 64) B!354) Unit!219)

(assert (=> b!10689 (= lt!2603 (addValidProp!4 lm!227 p!216 (_1!163 lt!2604) (_2!163 lt!2604)))))

(declare-fun head!760 (List!319) tuple2!326)

(assert (=> b!10689 (= lt!2604 (head!760 kvs!4))))

(declare-fun b!10690 () Bool)

(declare-fun tp_is_empty!527 () Bool)

(declare-fun tp!1655 () Bool)

(assert (=> b!10690 (= e!6226 (and tp_is_empty!527 tp!1655))))

(declare-fun b!10691 () Bool)

(declare-fun res!9031 () Bool)

(assert (=> b!10691 (=> (not res!9031) (not e!6227))))

(assert (=> b!10691 (= res!9031 (forall!43 kvs!4 p!216))))

(assert (= (and start!1312 res!9030) b!10691))

(assert (= (and b!10691 res!9031) b!10688))

(assert (= (and b!10688 res!9029) b!10689))

(assert (= start!1312 b!10687))

(assert (= (and start!1312 (is-Cons!315 kvs!4)) b!10690))

(declare-fun m!6889 () Bool)

(assert (=> b!10688 m!6889))

(declare-fun m!6891 () Bool)

(assert (=> start!1312 m!6891))

(declare-fun m!6893 () Bool)

(assert (=> start!1312 m!6893))

(declare-fun m!6895 () Bool)

(assert (=> b!10689 m!6895))

(declare-fun m!6897 () Bool)

(assert (=> b!10689 m!6897))

(declare-fun m!6899 () Bool)

(assert (=> b!10689 m!6899))

(declare-fun m!6901 () Bool)

(assert (=> b!10689 m!6901))

(declare-fun m!6903 () Bool)

(assert (=> b!10691 m!6903))

(push 1)

(assert (not start!1312))

(assert tp_is_empty!527)

(assert (not b!10690))

(assert (not b!10689))

(assert (not b_next!413))

(assert b_and!595)

(assert (not b!10688))

(assert (not b!10691))

(assert (not b!10687))

(check-sat)

(pop 1)

(push 1)

(assert b_and!595)

(assert (not b_next!413))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1169 () Bool)

(declare-fun res!9042 () Bool)

(declare-fun e!6238 () Bool)

(assert (=> d!1169 (=> res!9042 e!6238)))

(assert (=> d!1169 (= res!9042 (is-Nil!316 kvs!4))))

(assert (=> d!1169 (= (forall!43 kvs!4 p!216) e!6238)))

(declare-fun b!10702 () Bool)

(declare-fun e!6239 () Bool)

(assert (=> b!10702 (= e!6238 e!6239)))

(declare-fun res!9043 () Bool)

(assert (=> b!10702 (=> (not res!9043) (not e!6239))))

(declare-fun dynLambda!56 (Int tuple2!326) Bool)

(assert (=> b!10702 (= res!9043 (dynLambda!56 p!216 (h!881 kvs!4)))))

(declare-fun b!10703 () Bool)

(assert (=> b!10703 (= e!6239 (forall!43 (t!2490 kvs!4) p!216))))

(assert (= (and d!1169 (not res!9042)) b!10702))

(assert (= (and b!10702 res!9043) b!10703))

(declare-fun b_lambda!409 () Bool)

(assert (=> (not b_lambda!409) (not b!10702)))

(declare-fun t!2494 () Bool)

(declare-fun tb!173 () Bool)

(assert (=> (and start!1312 (= p!216 p!216) t!2494) tb!173))

(declare-fun result!311 () Bool)

(assert (=> tb!173 (= result!311 true)))

(assert (=> b!10702 t!2494))

(declare-fun b_and!599 () Bool)

(assert (= b_and!595 (and (=> t!2494 result!311) b_and!599)))

(declare-fun m!6909 () Bool)

(assert (=> b!10702 m!6909))

(declare-fun m!6911 () Bool)

(assert (=> b!10703 m!6911))

(assert (=> b!10691 d!1169))

(declare-fun d!1173 () Bool)

(assert (=> d!1173 (= (isEmpty!53 kvs!4) (is-Nil!316 kvs!4))))

(assert (=> b!10688 d!1173))

(declare-fun d!1177 () Bool)

(declare-fun res!9044 () Bool)

(declare-fun e!6240 () Bool)

(assert (=> d!1177 (=> res!9044 e!6240)))

(assert (=> d!1177 (= res!9044 (is-Nil!316 (toList!169 lm!227)))))

(assert (=> d!1177 (= (forall!43 (toList!169 lm!227) p!216) e!6240)))

(declare-fun b!10704 () Bool)

(declare-fun e!6241 () Bool)

(assert (=> b!10704 (= e!6240 e!6241)))

(declare-fun res!9045 () Bool)

(assert (=> b!10704 (=> (not res!9045) (not e!6241))))

(assert (=> b!10704 (= res!9045 (dynLambda!56 p!216 (h!881 (toList!169 lm!227))))))

(declare-fun b!10705 () Bool)

(assert (=> b!10705 (= e!6241 (forall!43 (t!2490 (toList!169 lm!227)) p!216))))

(assert (= (and d!1177 (not res!9044)) b!10704))

(assert (= (and b!10704 res!9045) b!10705))

(declare-fun b_lambda!411 () Bool)

(assert (=> (not b_lambda!411) (not b!10704)))

(declare-fun t!2496 () Bool)

(declare-fun tb!175 () Bool)

(assert (=> (and start!1312 (= p!216 p!216) t!2496) tb!175))

(declare-fun result!313 () Bool)

(assert (=> tb!175 (= result!313 true)))

(assert (=> b!10704 t!2496))

(declare-fun b_and!601 () Bool)

(assert (= b_and!599 (and (=> t!2496 result!313) b_and!601)))

(declare-fun m!6913 () Bool)

(assert (=> b!10704 m!6913))

(declare-fun m!6915 () Bool)

(assert (=> b!10705 m!6915))

(assert (=> start!1312 d!1177))

(declare-fun d!1179 () Bool)

(declare-fun isStrictlySorted!31 (List!319) Bool)

(assert (=> d!1179 (= (inv!512 lm!227) (isStrictlySorted!31 (toList!169 lm!227)))))

(declare-fun bs!399 () Bool)

(assert (= bs!399 d!1179))

(declare-fun m!6919 () Bool)

(assert (=> bs!399 m!6919))

(assert (=> start!1312 d!1179))

(declare-fun d!1181 () Bool)

(declare-fun res!9052 () Bool)

(declare-fun e!6248 () Bool)

(assert (=> d!1181 (=> res!9052 e!6248)))

(assert (=> d!1181 (= res!9052 (is-Nil!316 (toList!169 (+!16 lm!227 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604))))))))

(assert (=> d!1181 (= (forall!43 (toList!169 (+!16 lm!227 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604)))) p!216) e!6248)))

(declare-fun b!10712 () Bool)

(declare-fun e!6249 () Bool)

(assert (=> b!10712 (= e!6248 e!6249)))

(declare-fun res!9053 () Bool)

(assert (=> b!10712 (=> (not res!9053) (not e!6249))))

(assert (=> b!10712 (= res!9053 (dynLambda!56 p!216 (h!881 (toList!169 (+!16 lm!227 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604)))))))))

(declare-fun b!10713 () Bool)

(assert (=> b!10713 (= e!6249 (forall!43 (t!2490 (toList!169 (+!16 lm!227 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604))))) p!216))))

(assert (= (and d!1181 (not res!9052)) b!10712))

(assert (= (and b!10712 res!9053) b!10713))

(declare-fun b_lambda!415 () Bool)

(assert (=> (not b_lambda!415) (not b!10712)))

(declare-fun t!2500 () Bool)

(declare-fun tb!179 () Bool)

(assert (=> (and start!1312 (= p!216 p!216) t!2500) tb!179))

(declare-fun result!317 () Bool)

(assert (=> tb!179 (= result!317 true)))

(assert (=> b!10712 t!2500))

(declare-fun b_and!605 () Bool)

(assert (= b_and!601 (and (=> t!2500 result!317) b_and!605)))

(declare-fun m!6923 () Bool)

(assert (=> b!10712 m!6923))

(declare-fun m!6925 () Bool)

(assert (=> b!10713 m!6925))

(assert (=> b!10689 d!1181))

(declare-fun d!1187 () Bool)

(declare-fun e!6261 () Bool)

(assert (=> d!1187 e!6261))

(declare-fun res!9073 () Bool)

(assert (=> d!1187 (=> (not res!9073) (not e!6261))))

(declare-fun lt!2638 () ListLongMap!307)

(declare-fun contains!136 (ListLongMap!307 (_ BitVec 64)) Bool)

(assert (=> d!1187 (= res!9073 (contains!136 lt!2638 (_1!163 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604)))))))

(declare-fun lt!2636 () List!319)

(assert (=> d!1187 (= lt!2638 (ListLongMap!308 lt!2636))))

(declare-fun lt!2637 () Unit!219)

(declare-fun lt!2635 () Unit!219)

(assert (=> d!1187 (= lt!2637 lt!2635)))

(declare-datatypes ((Option!25 0))(
  ( (Some!24 (v!1339 B!354)) (None!23) )
))
(declare-fun getValueByKey!19 (List!319 (_ BitVec 64)) Option!25)

(assert (=> d!1187 (= (getValueByKey!19 lt!2636 (_1!163 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604)))) (Some!24 (_2!163 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!3 (List!319 (_ BitVec 64) B!354) Unit!219)

(assert (=> d!1187 (= lt!2635 (lemmaContainsTupThenGetReturnValue!3 lt!2636 (_1!163 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604))) (_2!163 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604)))))))

(declare-fun insertStrictlySorted!3 (List!319 (_ BitVec 64) B!354) List!319)

(assert (=> d!1187 (= lt!2636 (insertStrictlySorted!3 (toList!169 lm!227) (_1!163 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604))) (_2!163 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604)))))))

(assert (=> d!1187 (= (+!16 lm!227 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604))) lt!2638)))

(declare-fun b!10733 () Bool)

(declare-fun res!9072 () Bool)

(assert (=> b!10733 (=> (not res!9072) (not e!6261))))

(assert (=> b!10733 (= res!9072 (= (getValueByKey!19 (toList!169 lt!2638) (_1!163 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604)))) (Some!24 (_2!163 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604))))))))

(declare-fun b!10734 () Bool)

(declare-fun contains!137 (List!319 tuple2!326) Bool)

(assert (=> b!10734 (= e!6261 (contains!137 (toList!169 lt!2638) (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604))))))

(assert (= (and d!1187 res!9073) b!10733))

(assert (= (and b!10733 res!9072) b!10734))

(declare-fun m!6943 () Bool)

(assert (=> d!1187 m!6943))

(declare-fun m!6945 () Bool)

(assert (=> d!1187 m!6945))

(declare-fun m!6947 () Bool)

(assert (=> d!1187 m!6947))

(declare-fun m!6949 () Bool)

(assert (=> d!1187 m!6949))

(declare-fun m!6951 () Bool)

(assert (=> b!10733 m!6951))

(declare-fun m!6953 () Bool)

(assert (=> b!10734 m!6953))

(assert (=> b!10689 d!1187))

(declare-fun d!1193 () Bool)

(assert (=> d!1193 (forall!43 (toList!169 (+!16 lm!227 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604)))) p!216)))

(declare-fun lt!2646 () Unit!219)

(declare-fun choose!150 (ListLongMap!307 Int (_ BitVec 64) B!354) Unit!219)

(assert (=> d!1193 (= lt!2646 (choose!150 lm!227 p!216 (_1!163 lt!2604) (_2!163 lt!2604)))))

(declare-fun e!6272 () Bool)

(assert (=> d!1193 e!6272))

(declare-fun res!9083 () Bool)

(assert (=> d!1193 (=> (not res!9083) (not e!6272))))

(assert (=> d!1193 (= res!9083 (forall!43 (toList!169 lm!227) p!216))))

(assert (=> d!1193 (= (addValidProp!4 lm!227 p!216 (_1!163 lt!2604) (_2!163 lt!2604)) lt!2646)))

(declare-fun b!10749 () Bool)

(assert (=> b!10749 (= e!6272 (dynLambda!56 p!216 (tuple2!327 (_1!163 lt!2604) (_2!163 lt!2604))))))

(assert (= (and d!1193 res!9083) b!10749))

(declare-fun b_lambda!425 () Bool)

(assert (=> (not b_lambda!425) (not b!10749)))

(declare-fun t!2510 () Bool)

(declare-fun tb!189 () Bool)

(assert (=> (and start!1312 (= p!216 p!216) t!2510) tb!189))

(declare-fun result!329 () Bool)

(assert (=> tb!189 (= result!329 true)))

(assert (=> b!10749 t!2510))

(declare-fun b_and!615 () Bool)

(assert (= b_and!605 (and (=> t!2510 result!329) b_and!615)))

(assert (=> d!1193 m!6895))

(assert (=> d!1193 m!6897))

(declare-fun m!6981 () Bool)

(assert (=> d!1193 m!6981))

(assert (=> d!1193 m!6891))

(declare-fun m!6983 () Bool)

(assert (=> b!10749 m!6983))

(assert (=> b!10689 d!1193))

(declare-fun d!1207 () Bool)

(assert (=> d!1207 (= (head!760 kvs!4) (h!881 kvs!4))))

(assert (=> b!10689 d!1207))

(declare-fun b!10760 () Bool)

(declare-fun e!6280 () Bool)

(declare-fun tp!1662 () Bool)

(assert (=> b!10760 (= e!6280 (and tp_is_empty!527 tp!1662))))

