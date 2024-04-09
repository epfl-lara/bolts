; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7240 () Bool)

(assert start!7240)

(declare-fun res!27048 () Bool)

(declare-fun e!29522 () Bool)

(assert (=> start!7240 (=> (not res!27048) (not e!29522))))

(declare-datatypes ((B!878 0))(
  ( (B!879 (val!1026 Int)) )
))
(declare-datatypes ((tuple2!1704 0))(
  ( (tuple2!1705 (_1!862 (_ BitVec 64)) (_2!862 B!878)) )
))
(declare-datatypes ((List!1260 0))(
  ( (Nil!1257) (Cons!1256 (h!1836 tuple2!1704) (t!4293 List!1260)) )
))
(declare-fun l!812 () List!1260)

(declare-fun isStrictlySorted!231 (List!1260) Bool)

(assert (=> start!7240 (= res!27048 (isStrictlySorted!231 l!812))))

(assert (=> start!7240 e!29522))

(declare-fun e!29521 () Bool)

(assert (=> start!7240 e!29521))

(declare-fun b!46319 () Bool)

(declare-fun res!27049 () Bool)

(assert (=> b!46319 (=> (not res!27049) (not e!29522))))

(assert (=> b!46319 (= res!27049 (is-Cons!1256 l!812))))

(declare-fun b!46320 () Bool)

(assert (=> b!46320 (= e!29522 (not (isStrictlySorted!231 (t!4293 l!812))))))

(declare-fun b!46321 () Bool)

(declare-fun tp_is_empty!1975 () Bool)

(declare-fun tp!6101 () Bool)

(assert (=> b!46321 (= e!29521 (and tp_is_empty!1975 tp!6101))))

(assert (= (and start!7240 res!27048) b!46319))

(assert (= (and b!46319 res!27049) b!46320))

(assert (= (and start!7240 (is-Cons!1256 l!812)) b!46321))

(declare-fun m!40725 () Bool)

(assert (=> start!7240 m!40725))

(declare-fun m!40727 () Bool)

(assert (=> b!46320 m!40727))

(push 1)

(assert (not start!7240))

(assert (not b!46320))

(assert (not b!46321))

(assert tp_is_empty!1975)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9087 () Bool)

(declare-fun res!27074 () Bool)

(declare-fun e!29547 () Bool)

(assert (=> d!9087 (=> res!27074 e!29547)))

(assert (=> d!9087 (= res!27074 (or (is-Nil!1257 l!812) (is-Nil!1257 (t!4293 l!812))))))

(assert (=> d!9087 (= (isStrictlySorted!231 l!812) e!29547)))

(declare-fun b!46352 () Bool)

(declare-fun e!29548 () Bool)

(assert (=> b!46352 (= e!29547 e!29548)))

(declare-fun res!27075 () Bool)

(assert (=> b!46352 (=> (not res!27075) (not e!29548))))

(assert (=> b!46352 (= res!27075 (bvslt (_1!862 (h!1836 l!812)) (_1!862 (h!1836 (t!4293 l!812)))))))

(declare-fun b!46353 () Bool)

(assert (=> b!46353 (= e!29548 (isStrictlySorted!231 (t!4293 l!812)))))

(assert (= (and d!9087 (not res!27074)) b!46352))

(assert (= (and b!46352 res!27075) b!46353))

(assert (=> b!46353 m!40727))

(assert (=> start!7240 d!9087))

(declare-fun d!9094 () Bool)

(declare-fun res!27080 () Bool)

(declare-fun e!29553 () Bool)

(assert (=> d!9094 (=> res!27080 e!29553)))

(assert (=> d!9094 (= res!27080 (or (is-Nil!1257 (t!4293 l!812)) (is-Nil!1257 (t!4293 (t!4293 l!812)))))))

(assert (=> d!9094 (= (isStrictlySorted!231 (t!4293 l!812)) e!29553)))

(declare-fun b!46358 () Bool)

(declare-fun e!29555 () Bool)

(assert (=> b!46358 (= e!29553 e!29555)))

(declare-fun res!27082 () Bool)

(assert (=> b!46358 (=> (not res!27082) (not e!29555))))

(assert (=> b!46358 (= res!27082 (bvslt (_1!862 (h!1836 (t!4293 l!812))) (_1!862 (h!1836 (t!4293 (t!4293 l!812))))))))

(declare-fun b!46360 () Bool)

(assert (=> b!46360 (= e!29555 (isStrictlySorted!231 (t!4293 (t!4293 l!812))))))

(assert (= (and d!9094 (not res!27080)) b!46358))

(assert (= (and b!46358 res!27082) b!46360))

(declare-fun m!40739 () Bool)

(assert (=> b!46360 m!40739))

(assert (=> b!46320 d!9094))

(declare-fun b!46376 () Bool)

(declare-fun e!29565 () Bool)

(declare-fun tp!6114 () Bool)

(assert (=> b!46376 (= e!29565 (and tp_is_empty!1975 tp!6114))))

(assert (=> b!46321 (= tp!6101 e!29565)))

(assert (= (and b!46321 (is-Cons!1256 (t!4293 l!812))) b!46376))

(push 1)

(assert (not b!46360))

(assert (not b!46353))

(assert (not b!46376))

(assert tp_is_empty!1975)

(check-sat)

