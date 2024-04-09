; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1278 () Bool)

(assert start!1278)

(declare-fun b_free!397 () Bool)

(declare-fun b_next!397 () Bool)

(assert (=> start!1278 (= b_free!397 (not b_next!397))))

(declare-fun tp!1570 () Bool)

(declare-fun b_and!567 () Bool)

(assert (=> start!1278 (= tp!1570 b_and!567)))

(declare-fun b!10552 () Bool)

(declare-fun res!8960 () Bool)

(declare-fun e!6126 () Bool)

(assert (=> b!10552 (=> (not res!8960) (not e!6126))))

(declare-datatypes ((B!338 0))(
  ( (B!339 (val!264 Int)) )
))
(declare-datatypes ((tuple2!310 0))(
  ( (tuple2!311 (_1!155 (_ BitVec 64)) (_2!155 B!338)) )
))
(declare-datatypes ((List!311 0))(
  ( (Nil!308) (Cons!307 (h!873 tuple2!310) (t!2470 List!311)) )
))
(declare-fun kvs!4 () List!311)

(declare-fun isEmpty!48 (List!311) Bool)

(assert (=> b!10552 (= res!8960 (not (isEmpty!48 kvs!4)))))

(declare-fun b!10553 () Bool)

(declare-fun e!6127 () Bool)

(declare-fun tp_is_empty!511 () Bool)

(declare-fun tp!1571 () Bool)

(assert (=> b!10553 (= e!6127 (and tp_is_empty!511 tp!1571))))

(declare-fun res!8961 () Bool)

(assert (=> start!1278 (=> (not res!8961) (not e!6126))))

(declare-datatypes ((ListLongMap!291 0))(
  ( (ListLongMap!292 (toList!161 List!311)) )
))
(declare-fun lm!227 () ListLongMap!291)

(declare-fun p!216 () Int)

(declare-fun forall!38 (List!311 Int) Bool)

(assert (=> start!1278 (= res!8961 (forall!38 (toList!161 lm!227) p!216))))

(assert (=> start!1278 e!6126))

(declare-fun e!6128 () Bool)

(declare-fun inv!494 (ListLongMap!291) Bool)

(assert (=> start!1278 (and (inv!494 lm!227) e!6128)))

(assert (=> start!1278 tp!1570))

(assert (=> start!1278 e!6127))

(declare-fun b!10554 () Bool)

(declare-fun res!8962 () Bool)

(assert (=> b!10554 (=> (not res!8962) (not e!6126))))

(assert (=> b!10554 (= res!8962 (forall!38 kvs!4 p!216))))

(declare-fun b!10555 () Bool)

(declare-fun tp!1569 () Bool)

(assert (=> b!10555 (= e!6128 tp!1569)))

(declare-fun b!10556 () Bool)

(assert (=> b!10556 (= e!6126 (= kvs!4 Nil!308))))

(assert (= (and start!1278 res!8961) b!10554))

(assert (= (and b!10554 res!8962) b!10552))

(assert (= (and b!10552 res!8960) b!10556))

(assert (= start!1278 b!10555))

(assert (= (and start!1278 (is-Cons!307 kvs!4)) b!10553))

(declare-fun m!6797 () Bool)

(assert (=> b!10552 m!6797))

(declare-fun m!6799 () Bool)

(assert (=> start!1278 m!6799))

(declare-fun m!6801 () Bool)

(assert (=> start!1278 m!6801))

(declare-fun m!6803 () Bool)

(assert (=> b!10554 m!6803))

(push 1)

(assert (not b!10553))

(assert (not b!10555))

(assert (not b_next!397))

(assert (not start!1278))

(assert b_and!567)

(assert tp_is_empty!511)

(assert (not b!10554))

(assert (not b!10552))

(check-sat)

(pop 1)

(push 1)

(assert b_and!567)

(assert (not b_next!397))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1140 () Bool)

(assert (=> d!1140 (= (isEmpty!48 kvs!4) (is-Nil!308 kvs!4))))

(assert (=> b!10552 d!1140))

(declare-fun d!1145 () Bool)

(declare-fun res!8995 () Bool)

(declare-fun e!6161 () Bool)

(assert (=> d!1145 (=> res!8995 e!6161)))

(assert (=> d!1145 (= res!8995 (is-Nil!308 (toList!161 lm!227)))))

(assert (=> d!1145 (= (forall!38 (toList!161 lm!227) p!216) e!6161)))

(declare-fun b!10601 () Bool)

(declare-fun e!6162 () Bool)

(assert (=> b!10601 (= e!6161 e!6162)))

(declare-fun res!8996 () Bool)

(assert (=> b!10601 (=> (not res!8996) (not e!6162))))

(declare-fun dynLambda!52 (Int tuple2!310) Bool)

(assert (=> b!10601 (= res!8996 (dynLambda!52 p!216 (h!873 (toList!161 lm!227))))))

(declare-fun b!10602 () Bool)

(assert (=> b!10602 (= e!6162 (forall!38 (t!2470 (toList!161 lm!227)) p!216))))

(assert (= (and d!1145 (not res!8995)) b!10601))

(assert (= (and b!10601 res!8996) b!10602))

(declare-fun b_lambda!385 () Bool)

(assert (=> (not b_lambda!385) (not b!10601)))

(declare-fun t!2476 () Bool)

(declare-fun tb!161 () Bool)

(assert (=> (and start!1278 (= p!216 p!216) t!2476) tb!161))

(declare-fun result!293 () Bool)

(assert (=> tb!161 (= result!293 true)))

(assert (=> b!10601 t!2476))

(declare-fun b_and!575 () Bool)

(assert (= b_and!567 (and (=> t!2476 result!293) b_and!575)))

(declare-fun m!6825 () Bool)

(assert (=> b!10601 m!6825))

(declare-fun m!6827 () Bool)

(assert (=> b!10602 m!6827))

(assert (=> start!1278 d!1145))

(declare-fun d!1151 () Bool)

(declare-fun isStrictlySorted!29 (List!311) Bool)

(assert (=> d!1151 (= (inv!494 lm!227) (isStrictlySorted!29 (toList!161 lm!227)))))

(declare-fun bs!391 () Bool)

(assert (= bs!391 d!1151))

(declare-fun m!6835 () Bool)

(assert (=> bs!391 m!6835))

(assert (=> start!1278 d!1151))

(declare-fun d!1157 () Bool)

(declare-fun res!9001 () Bool)

(declare-fun e!6167 () Bool)

(assert (=> d!1157 (=> res!9001 e!6167)))

(assert (=> d!1157 (= res!9001 (is-Nil!308 kvs!4))))

(assert (=> d!1157 (= (forall!38 kvs!4 p!216) e!6167)))

(declare-fun b!10607 () Bool)

(declare-fun e!6168 () Bool)

(assert (=> b!10607 (= e!6167 e!6168)))

(declare-fun res!9002 () Bool)

(assert (=> b!10607 (=> (not res!9002) (not e!6168))))

(assert (=> b!10607 (= res!9002 (dynLambda!52 p!216 (h!873 kvs!4)))))

(declare-fun b!10608 () Bool)

(assert (=> b!10608 (= e!6168 (forall!38 (t!2470 kvs!4) p!216))))

(assert (= (and d!1157 (not res!9001)) b!10607))

(assert (= (and b!10607 res!9002) b!10608))

(declare-fun b_lambda!391 () Bool)

(assert (=> (not b_lambda!391) (not b!10607)))

(declare-fun t!2482 () Bool)

(declare-fun tb!167 () Bool)

(assert (=> (and start!1278 (= p!216 p!216) t!2482) tb!167))

(declare-fun result!299 () Bool)

(assert (=> tb!167 (= result!299 true)))

(assert (=> b!10607 t!2482))

(declare-fun b_and!581 () Bool)

(assert (= b_and!575 (and (=> t!2482 result!299) b_and!581)))

(declare-fun m!6843 () Bool)

(assert (=> b!10607 m!6843))

(declare-fun m!6845 () Bool)

(assert (=> b!10608 m!6845))

(assert (=> b!10554 d!1157))

(declare-fun b!10619 () Bool)

(declare-fun e!6175 () Bool)

(declare-fun tp!1594 () Bool)

(assert (=> b!10619 (= e!6175 (and tp_is_empty!511 tp!1594))))

(assert (=> b!10555 (= tp!1569 e!6175)))

(assert (= (and b!10555 (is-Cons!307 (toList!161 lm!227))) b!10619))

(declare-fun b!10625 () Bool)

(declare-fun e!6179 () Bool)

(declare-fun tp!1596 () Bool)

(assert (=> b!10625 (= e!6179 (and tp_is_empty!511 tp!1596))))

(assert (=> b!10553 (= tp!1571 e!6179)))

(assert (= (and b!10553 (is-Cons!307 (t!2470 kvs!4))) b!10625))

(declare-fun b_lambda!395 () Bool)

(assert (= b_lambda!391 (or (and start!1278 b_free!397) b_lambda!395)))

(declare-fun b_lambda!399 () Bool)

(assert (= b_lambda!385 (or (and start!1278 b_free!397) b_lambda!399)))

(push 1)

