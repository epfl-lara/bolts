; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1282 () Bool)

(assert start!1282)

(declare-fun b_free!401 () Bool)

(declare-fun b_next!401 () Bool)

(assert (=> start!1282 (= b_free!401 (not b_next!401))))

(declare-fun tp!1587 () Bool)

(declare-fun b_and!571 () Bool)

(assert (=> start!1282 (= tp!1587 b_and!571)))

(declare-fun res!8978 () Bool)

(declare-fun e!6145 () Bool)

(assert (=> start!1282 (=> (not res!8978) (not e!6145))))

(declare-datatypes ((B!342 0))(
  ( (B!343 (val!266 Int)) )
))
(declare-datatypes ((tuple2!314 0))(
  ( (tuple2!315 (_1!157 (_ BitVec 64)) (_2!157 B!342)) )
))
(declare-datatypes ((List!313 0))(
  ( (Nil!310) (Cons!309 (h!875 tuple2!314) (t!2472 List!313)) )
))
(declare-datatypes ((ListLongMap!295 0))(
  ( (ListLongMap!296 (toList!163 List!313)) )
))
(declare-fun lm!227 () ListLongMap!295)

(declare-fun p!216 () Int)

(declare-fun forall!40 (List!313 Int) Bool)

(assert (=> start!1282 (= res!8978 (forall!40 (toList!163 lm!227) p!216))))

(assert (=> start!1282 e!6145))

(declare-fun e!6144 () Bool)

(declare-fun inv!496 (ListLongMap!295) Bool)

(assert (=> start!1282 (and (inv!496 lm!227) e!6144)))

(assert (=> start!1282 tp!1587))

(declare-fun e!6146 () Bool)

(assert (=> start!1282 e!6146))

(declare-fun b!10582 () Bool)

(declare-fun kvs!4 () List!313)

(assert (=> b!10582 (= e!6145 (= kvs!4 Nil!310))))

(declare-fun b!10583 () Bool)

(declare-fun tp!1588 () Bool)

(assert (=> b!10583 (= e!6144 tp!1588)))

(declare-fun b!10584 () Bool)

(declare-fun res!8980 () Bool)

(assert (=> b!10584 (=> (not res!8980) (not e!6145))))

(declare-fun isEmpty!50 (List!313) Bool)

(assert (=> b!10584 (= res!8980 (not (isEmpty!50 kvs!4)))))

(declare-fun b!10585 () Bool)

(declare-fun res!8979 () Bool)

(assert (=> b!10585 (=> (not res!8979) (not e!6145))))

(assert (=> b!10585 (= res!8979 (forall!40 kvs!4 p!216))))

(declare-fun b!10586 () Bool)

(declare-fun tp_is_empty!515 () Bool)

(declare-fun tp!1589 () Bool)

(assert (=> b!10586 (= e!6146 (and tp_is_empty!515 tp!1589))))

(assert (= (and start!1282 res!8978) b!10585))

(assert (= (and b!10585 res!8979) b!10584))

(assert (= (and b!10584 res!8980) b!10582))

(assert (= start!1282 b!10583))

(assert (= (and start!1282 (is-Cons!309 kvs!4)) b!10586))

(declare-fun m!6813 () Bool)

(assert (=> start!1282 m!6813))

(declare-fun m!6815 () Bool)

(assert (=> start!1282 m!6815))

(declare-fun m!6817 () Bool)

(assert (=> b!10584 m!6817))

(declare-fun m!6819 () Bool)

(assert (=> b!10585 m!6819))

(push 1)

(assert (not b!10585))

(assert tp_is_empty!515)

(assert (not start!1282))

(assert b_and!571)

(assert (not b!10583))

(assert (not b_next!401))

(assert (not b!10586))

(assert (not b!10584))

(check-sat)

(pop 1)

(push 1)

(assert b_and!571)

(assert (not b_next!401))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1141 () Bool)

(declare-fun res!8989 () Bool)

(declare-fun e!6155 () Bool)

(assert (=> d!1141 (=> res!8989 e!6155)))

(assert (=> d!1141 (= res!8989 (is-Nil!310 (toList!163 lm!227)))))

(assert (=> d!1141 (= (forall!40 (toList!163 lm!227) p!216) e!6155)))

(declare-fun b!10595 () Bool)

(declare-fun e!6156 () Bool)

(assert (=> b!10595 (= e!6155 e!6156)))

(declare-fun res!8990 () Bool)

(assert (=> b!10595 (=> (not res!8990) (not e!6156))))

(declare-fun dynLambda!53 (Int tuple2!314) Bool)

(assert (=> b!10595 (= res!8990 (dynLambda!53 p!216 (h!875 (toList!163 lm!227))))))

(declare-fun b!10596 () Bool)

(assert (=> b!10596 (= e!6156 (forall!40 (t!2472 (toList!163 lm!227)) p!216))))

(assert (= (and d!1141 (not res!8989)) b!10595))

(assert (= (and b!10595 res!8990) b!10596))

(declare-fun b_lambda!383 () Bool)

(assert (=> (not b_lambda!383) (not b!10595)))

(declare-fun t!2474 () Bool)

(declare-fun tb!159 () Bool)

(assert (=> (and start!1282 (= p!216 p!216) t!2474) tb!159))

(declare-fun result!291 () Bool)

(assert (=> tb!159 (= result!291 true)))

(assert (=> b!10595 t!2474))

(declare-fun b_and!573 () Bool)

(assert (= b_and!571 (and (=> t!2474 result!291) b_and!573)))

(declare-fun m!6821 () Bool)

(assert (=> b!10595 m!6821))

(declare-fun m!6823 () Bool)

(assert (=> b!10596 m!6823))

(assert (=> start!1282 d!1141))

(declare-fun d!1149 () Bool)

(declare-fun isStrictlySorted!30 (List!313) Bool)

(assert (=> d!1149 (= (inv!496 lm!227) (isStrictlySorted!30 (toList!163 lm!227)))))

(declare-fun bs!390 () Bool)

(assert (= bs!390 d!1149))

(declare-fun m!6833 () Bool)

(assert (=> bs!390 m!6833))

(assert (=> start!1282 d!1149))

(declare-fun d!1155 () Bool)

(declare-fun res!8999 () Bool)

(declare-fun e!6165 () Bool)

(assert (=> d!1155 (=> res!8999 e!6165)))

(assert (=> d!1155 (= res!8999 (is-Nil!310 kvs!4))))

(assert (=> d!1155 (= (forall!40 kvs!4 p!216) e!6165)))

(declare-fun b!10605 () Bool)

(declare-fun e!6166 () Bool)

(assert (=> b!10605 (= e!6165 e!6166)))

(declare-fun res!9000 () Bool)

(assert (=> b!10605 (=> (not res!9000) (not e!6166))))

(assert (=> b!10605 (= res!9000 (dynLambda!53 p!216 (h!875 kvs!4)))))

(declare-fun b!10606 () Bool)

(assert (=> b!10606 (= e!6166 (forall!40 (t!2472 kvs!4) p!216))))

(assert (= (and d!1155 (not res!8999)) b!10605))

(assert (= (and b!10605 res!9000) b!10606))

(declare-fun b_lambda!389 () Bool)

(assert (=> (not b_lambda!389) (not b!10605)))

(declare-fun t!2480 () Bool)

(declare-fun tb!165 () Bool)

(assert (=> (and start!1282 (= p!216 p!216) t!2480) tb!165))

(declare-fun result!297 () Bool)

(assert (=> tb!165 (= result!297 true)))

(assert (=> b!10605 t!2480))

(declare-fun b_and!579 () Bool)

(assert (= b_and!573 (and (=> t!2480 result!297) b_and!579)))

(declare-fun m!6837 () Bool)

(assert (=> b!10605 m!6837))

(declare-fun m!6839 () Bool)

(assert (=> b!10606 m!6839))

(assert (=> b!10585 d!1155))

(declare-fun d!1159 () Bool)

