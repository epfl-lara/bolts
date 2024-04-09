; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7222 () Bool)

(assert start!7222)

(declare-fun res!27019 () Bool)

(declare-fun e!29467 () Bool)

(assert (=> start!7222 (=> (not res!27019) (not e!29467))))

(declare-datatypes ((B!872 0))(
  ( (B!873 (val!1023 Int)) )
))
(declare-datatypes ((tuple2!1698 0))(
  ( (tuple2!1699 (_1!859 (_ BitVec 64)) (_2!859 B!872)) )
))
(declare-datatypes ((List!1257 0))(
  ( (Nil!1254) (Cons!1253 (h!1833 tuple2!1698) (t!4290 List!1257)) )
))
(declare-fun l!812 () List!1257)

(declare-fun isStrictlySorted!228 (List!1257) Bool)

(assert (=> start!7222 (= res!27019 (isStrictlySorted!228 l!812))))

(assert (=> start!7222 e!29467))

(declare-fun e!29468 () Bool)

(assert (=> start!7222 e!29468))

(declare-fun b!46248 () Bool)

(declare-fun ListPrimitiveSize!43 (List!1257) Int)

(assert (=> b!46248 (= e!29467 (< (ListPrimitiveSize!43 l!812) 0))))

(declare-fun b!46249 () Bool)

(declare-fun tp_is_empty!1969 () Bool)

(declare-fun tp!6083 () Bool)

(assert (=> b!46249 (= e!29468 (and tp_is_empty!1969 tp!6083))))

(assert (= (and start!7222 res!27019) b!46248))

(assert (= (and start!7222 (is-Cons!1253 l!812)) b!46249))

(declare-fun m!40701 () Bool)

(assert (=> start!7222 m!40701))

(declare-fun m!40703 () Bool)

(assert (=> b!46248 m!40703))

(push 1)

(assert (not b!46248))

(assert (not start!7222))

(assert (not b!46249))

(assert tp_is_empty!1969)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9077 () Bool)

(declare-fun lt!20297 () Int)

(assert (=> d!9077 (>= lt!20297 0)))

(declare-fun e!29489 () Int)

(assert (=> d!9077 (= lt!20297 e!29489)))

(declare-fun c!6270 () Bool)

(assert (=> d!9077 (= c!6270 (is-Nil!1254 l!812))))

(assert (=> d!9077 (= (ListPrimitiveSize!43 l!812) lt!20297)))

(declare-fun b!46278 () Bool)

(assert (=> b!46278 (= e!29489 0)))

(declare-fun b!46279 () Bool)

(assert (=> b!46279 (= e!29489 (+ 1 (ListPrimitiveSize!43 (t!4290 l!812))))))

(assert (= (and d!9077 c!6270) b!46278))

(assert (= (and d!9077 (not c!6270)) b!46279))

(declare-fun m!40717 () Bool)

(assert (=> b!46279 m!40717))

(assert (=> b!46248 d!9077))

(declare-fun d!9083 () Bool)

(declare-fun res!27042 () Bool)

(declare-fun e!29508 () Bool)

(assert (=> d!9083 (=> res!27042 e!29508)))

(assert (=> d!9083 (= res!27042 (or (is-Nil!1254 l!812) (is-Nil!1254 (t!4290 l!812))))))

(assert (=> d!9083 (= (isStrictlySorted!228 l!812) e!29508)))

(declare-fun b!46300 () Bool)

(declare-fun e!29509 () Bool)

(assert (=> b!46300 (= e!29508 e!29509)))

(declare-fun res!27043 () Bool)

(assert (=> b!46300 (=> (not res!27043) (not e!29509))))

(assert (=> b!46300 (= res!27043 (bvslt (_1!859 (h!1833 l!812)) (_1!859 (h!1833 (t!4290 l!812)))))))

(declare-fun b!46301 () Bool)

(assert (=> b!46301 (= e!29509 (isStrictlySorted!228 (t!4290 l!812)))))

(assert (= (and d!9083 (not res!27042)) b!46300))

(assert (= (and b!46300 res!27043) b!46301))

(declare-fun m!40723 () Bool)

(assert (=> b!46301 m!40723))

(assert (=> start!7222 d!9083))

(declare-fun b!46312 () Bool)

(declare-fun e!29516 () Bool)

(declare-fun tp!6098 () Bool)

(assert (=> b!46312 (= e!29516 (and tp_is_empty!1969 tp!6098))))

(assert (=> b!46249 (= tp!6083 e!29516)))

(assert (= (and b!46249 (is-Cons!1253 (t!4290 l!812))) b!46312))

(push 1)

(assert (not b!46301))

(assert (not b!46279))

(assert (not b!46312))

(assert tp_is_empty!1969)

(check-sat)

