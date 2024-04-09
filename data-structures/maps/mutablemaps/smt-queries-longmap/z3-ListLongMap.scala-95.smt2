; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1424 () Bool)

(assert start!1424)

(declare-fun b_free!435 () Bool)

(declare-fun b_next!435 () Bool)

(assert (=> start!1424 (= b_free!435 (not b_next!435))))

(declare-fun tp!1788 () Bool)

(declare-fun b_and!679 () Bool)

(assert (=> start!1424 (= tp!1788 b_and!679)))

(declare-fun b!11074 () Bool)

(declare-fun res!9273 () Bool)

(declare-fun e!6501 () Bool)

(assert (=> b!11074 (=> (not res!9273) (not e!6501))))

(declare-datatypes ((B!376 0))(
  ( (B!377 (val!283 Int)) )
))
(declare-datatypes ((tuple2!348 0))(
  ( (tuple2!349 (_1!174 (_ BitVec 64)) (_2!174 B!376)) )
))
(declare-datatypes ((List!330 0))(
  ( (Nil!327) (Cons!326 (h!892 tuple2!348) (t!2565 List!330)) )
))
(declare-fun kvs!4 () List!330)

(declare-fun p!216 () Int)

(declare-fun forall!54 (List!330 Int) Bool)

(assert (=> b!11074 (= res!9273 (forall!54 kvs!4 p!216))))

(declare-fun res!9272 () Bool)

(assert (=> start!1424 (=> (not res!9272) (not e!6501))))

(declare-datatypes ((ListLongMap!329 0))(
  ( (ListLongMap!330 (toList!180 List!330)) )
))
(declare-fun lm!227 () ListLongMap!329)

(assert (=> start!1424 (= res!9272 (forall!54 (toList!180 lm!227) p!216))))

(assert (=> start!1424 e!6501))

(declare-fun e!6502 () Bool)

(declare-fun inv!543 (ListLongMap!329) Bool)

(assert (=> start!1424 (and (inv!543 lm!227) e!6502)))

(assert (=> start!1424 tp!1788))

(declare-fun e!6503 () Bool)

(assert (=> start!1424 e!6503))

(declare-fun b!11075 () Bool)

(declare-fun tp!1789 () Bool)

(assert (=> b!11075 (= e!6502 tp!1789)))

(declare-fun b!11076 () Bool)

(declare-fun res!9274 () Bool)

(assert (=> b!11076 (=> (not res!9274) (not e!6501))))

(declare-fun isEmpty!61 (List!330) Bool)

(assert (=> b!11076 (= res!9274 (not (isEmpty!61 kvs!4)))))

(declare-fun b!11077 () Bool)

(declare-fun dynLambda!65 (Int tuple2!348) Bool)

(declare-fun head!768 (List!330) tuple2!348)

(assert (=> b!11077 (= e!6501 (not (dynLambda!65 p!216 (head!768 kvs!4))))))

(declare-fun b!11078 () Bool)

(declare-fun tp_is_empty!549 () Bool)

(declare-fun tp!1790 () Bool)

(assert (=> b!11078 (= e!6503 (and tp_is_empty!549 tp!1790))))

(assert (= (and start!1424 res!9272) b!11074))

(assert (= (and b!11074 res!9273) b!11076))

(assert (= (and b!11076 res!9274) b!11077))

(assert (= start!1424 b!11075))

(get-info :version)

(assert (= (and start!1424 ((_ is Cons!326) kvs!4)) b!11078))

(declare-fun b_lambda!529 () Bool)

(assert (=> (not b_lambda!529) (not b!11077)))

(declare-fun t!2564 () Bool)

(declare-fun tb!233 () Bool)

(assert (=> (and start!1424 (= p!216 p!216) t!2564) tb!233))

(declare-fun result!389 () Bool)

(assert (=> tb!233 (= result!389 true)))

(assert (=> b!11077 t!2564))

(declare-fun b_and!681 () Bool)

(assert (= b_and!679 (and (=> t!2564 result!389) b_and!681)))

(declare-fun m!7307 () Bool)

(assert (=> b!11074 m!7307))

(declare-fun m!7309 () Bool)

(assert (=> start!1424 m!7309))

(declare-fun m!7311 () Bool)

(assert (=> start!1424 m!7311))

(declare-fun m!7313 () Bool)

(assert (=> b!11076 m!7313))

(declare-fun m!7315 () Bool)

(assert (=> b!11077 m!7315))

(assert (=> b!11077 m!7315))

(declare-fun m!7317 () Bool)

(assert (=> b!11077 m!7317))

(check-sat tp_is_empty!549 b_and!681 (not b!11076) (not b!11077) (not b!11078) (not b_lambda!529) (not b!11074) (not b_next!435) (not start!1424) (not b!11075))
(check-sat b_and!681 (not b_next!435))
(get-model)

(declare-fun b_lambda!535 () Bool)

(assert (= b_lambda!529 (or (and start!1424 b_free!435) b_lambda!535)))

(check-sat tp_is_empty!549 (not b_lambda!535) b_and!681 (not b!11076) (not b!11077) (not b!11078) (not b!11074) (not b_next!435) (not start!1424) (not b!11075))
(check-sat b_and!681 (not b_next!435))
(get-model)

(declare-fun d!1305 () Bool)

(assert (=> d!1305 (= (isEmpty!61 kvs!4) ((_ is Nil!327) kvs!4))))

(assert (=> b!11076 d!1305))

(declare-fun d!1307 () Bool)

(assert (=> d!1307 (= (head!768 kvs!4) (h!892 kvs!4))))

(assert (=> b!11077 d!1307))

(declare-fun d!1309 () Bool)

(declare-fun res!9300 () Bool)

(declare-fun e!6529 () Bool)

(assert (=> d!1309 (=> res!9300 e!6529)))

(assert (=> d!1309 (= res!9300 ((_ is Nil!327) (toList!180 lm!227)))))

(assert (=> d!1309 (= (forall!54 (toList!180 lm!227) p!216) e!6529)))

(declare-fun b!11110 () Bool)

(declare-fun e!6530 () Bool)

(assert (=> b!11110 (= e!6529 e!6530)))

(declare-fun res!9301 () Bool)

(assert (=> b!11110 (=> (not res!9301) (not e!6530))))

(assert (=> b!11110 (= res!9301 (dynLambda!65 p!216 (h!892 (toList!180 lm!227))))))

(declare-fun b!11111 () Bool)

(assert (=> b!11111 (= e!6530 (forall!54 (t!2565 (toList!180 lm!227)) p!216))))

(assert (= (and d!1309 (not res!9300)) b!11110))

(assert (= (and b!11110 res!9301) b!11111))

(declare-fun b_lambda!543 () Bool)

(assert (=> (not b_lambda!543) (not b!11110)))

(declare-fun t!2574 () Bool)

(declare-fun tb!241 () Bool)

(assert (=> (and start!1424 (= p!216 p!216) t!2574) tb!241))

(declare-fun result!397 () Bool)

(assert (=> tb!241 (= result!397 true)))

(assert (=> b!11110 t!2574))

(declare-fun b_and!691 () Bool)

(assert (= b_and!681 (and (=> t!2574 result!397) b_and!691)))

(declare-fun m!7339 () Bool)

(assert (=> b!11110 m!7339))

(declare-fun m!7341 () Bool)

(assert (=> b!11111 m!7341))

(assert (=> start!1424 d!1309))

(declare-fun d!1317 () Bool)

(declare-fun isStrictlySorted!39 (List!330) Bool)

(assert (=> d!1317 (= (inv!543 lm!227) (isStrictlySorted!39 (toList!180 lm!227)))))

(declare-fun bs!421 () Bool)

(assert (= bs!421 d!1317))

(declare-fun m!7349 () Bool)

(assert (=> bs!421 m!7349))

(assert (=> start!1424 d!1317))

(declare-fun d!1323 () Bool)

(declare-fun res!9304 () Bool)

(declare-fun e!6533 () Bool)

(assert (=> d!1323 (=> res!9304 e!6533)))

(assert (=> d!1323 (= res!9304 ((_ is Nil!327) kvs!4))))

(assert (=> d!1323 (= (forall!54 kvs!4 p!216) e!6533)))

(declare-fun b!11114 () Bool)

(declare-fun e!6534 () Bool)

(assert (=> b!11114 (= e!6533 e!6534)))

(declare-fun res!9305 () Bool)

(assert (=> b!11114 (=> (not res!9305) (not e!6534))))

(assert (=> b!11114 (= res!9305 (dynLambda!65 p!216 (h!892 kvs!4)))))

(declare-fun b!11115 () Bool)

(assert (=> b!11115 (= e!6534 (forall!54 (t!2565 kvs!4) p!216))))

(assert (= (and d!1323 (not res!9304)) b!11114))

(assert (= (and b!11114 res!9305) b!11115))

(declare-fun b_lambda!547 () Bool)

(assert (=> (not b_lambda!547) (not b!11114)))

(declare-fun t!2578 () Bool)

(declare-fun tb!245 () Bool)

(assert (=> (and start!1424 (= p!216 p!216) t!2578) tb!245))

(declare-fun result!403 () Bool)

(assert (=> tb!245 (= result!403 true)))

(assert (=> b!11114 t!2578))

(declare-fun b_and!695 () Bool)

(assert (= b_and!691 (and (=> t!2578 result!403) b_and!695)))

(declare-fun m!7351 () Bool)

(assert (=> b!11114 m!7351))

(declare-fun m!7353 () Bool)

(assert (=> b!11115 m!7353))

(assert (=> b!11074 d!1323))

(declare-fun b!11128 () Bool)

(declare-fun e!6543 () Bool)

(declare-fun tp!1806 () Bool)

(assert (=> b!11128 (= e!6543 (and tp_is_empty!549 tp!1806))))

(assert (=> b!11078 (= tp!1790 e!6543)))

(assert (= (and b!11078 ((_ is Cons!326) (t!2565 kvs!4))) b!11128))

(declare-fun b!11129 () Bool)

(declare-fun e!6544 () Bool)

(declare-fun tp!1807 () Bool)

(assert (=> b!11129 (= e!6544 (and tp_is_empty!549 tp!1807))))

(assert (=> b!11075 (= tp!1789 e!6544)))

(assert (= (and b!11075 ((_ is Cons!326) (toList!180 lm!227))) b!11129))

(declare-fun b_lambda!555 () Bool)

(assert (= b_lambda!543 (or (and start!1424 b_free!435) b_lambda!555)))

(declare-fun b_lambda!557 () Bool)

(assert (= b_lambda!547 (or (and start!1424 b_free!435) b_lambda!557)))

(check-sat tp_is_empty!549 (not b_lambda!535) (not d!1317) (not b_lambda!555) (not b!11129) (not b!11111) (not b!11115) (not b_lambda!557) b_and!695 (not b_next!435) (not b!11128))
(check-sat b_and!695 (not b_next!435))
