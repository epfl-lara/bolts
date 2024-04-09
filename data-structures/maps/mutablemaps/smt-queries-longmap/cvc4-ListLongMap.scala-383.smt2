; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7244 () Bool)

(assert start!7244)

(declare-fun res!27060 () Bool)

(declare-fun e!29533 () Bool)

(assert (=> start!7244 (=> (not res!27060) (not e!29533))))

(declare-datatypes ((B!882 0))(
  ( (B!883 (val!1028 Int)) )
))
(declare-datatypes ((tuple2!1708 0))(
  ( (tuple2!1709 (_1!864 (_ BitVec 64)) (_2!864 B!882)) )
))
(declare-datatypes ((List!1262 0))(
  ( (Nil!1259) (Cons!1258 (h!1838 tuple2!1708) (t!4295 List!1262)) )
))
(declare-fun l!812 () List!1262)

(declare-fun isStrictlySorted!233 (List!1262) Bool)

(assert (=> start!7244 (= res!27060 (isStrictlySorted!233 l!812))))

(assert (=> start!7244 e!29533))

(declare-fun e!29534 () Bool)

(assert (=> start!7244 e!29534))

(declare-fun b!46337 () Bool)

(declare-fun res!27061 () Bool)

(assert (=> b!46337 (=> (not res!27061) (not e!29533))))

(assert (=> b!46337 (= res!27061 (is-Cons!1258 l!812))))

(declare-fun b!46338 () Bool)

(assert (=> b!46338 (= e!29533 (not (isStrictlySorted!233 (t!4295 l!812))))))

(declare-fun b!46339 () Bool)

(declare-fun tp_is_empty!1979 () Bool)

(declare-fun tp!6107 () Bool)

(assert (=> b!46339 (= e!29534 (and tp_is_empty!1979 tp!6107))))

(assert (= (and start!7244 res!27060) b!46337))

(assert (= (and b!46337 res!27061) b!46338))

(assert (= (and start!7244 (is-Cons!1258 l!812)) b!46339))

(declare-fun m!40733 () Bool)

(assert (=> start!7244 m!40733))

(declare-fun m!40735 () Bool)

(assert (=> b!46338 m!40735))

(push 1)

(assert (not start!7244))

(assert (not b!46338))

(assert (not b!46339))

(assert tp_is_empty!1979)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9089 () Bool)

(declare-fun res!27076 () Bool)

(declare-fun e!29549 () Bool)

(assert (=> d!9089 (=> res!27076 e!29549)))

(assert (=> d!9089 (= res!27076 (or (is-Nil!1259 l!812) (is-Nil!1259 (t!4295 l!812))))))

(assert (=> d!9089 (= (isStrictlySorted!233 l!812) e!29549)))

(declare-fun b!46354 () Bool)

(declare-fun e!29550 () Bool)

(assert (=> b!46354 (= e!29549 e!29550)))

(declare-fun res!27077 () Bool)

(assert (=> b!46354 (=> (not res!27077) (not e!29550))))

(assert (=> b!46354 (= res!27077 (bvslt (_1!864 (h!1838 l!812)) (_1!864 (h!1838 (t!4295 l!812)))))))

(declare-fun b!46355 () Bool)

(assert (=> b!46355 (= e!29550 (isStrictlySorted!233 (t!4295 l!812)))))

(assert (= (and d!9089 (not res!27076)) b!46354))

(assert (= (and b!46354 res!27077) b!46355))

(assert (=> b!46355 m!40735))

(assert (=> start!7244 d!9089))

(declare-fun d!9095 () Bool)

(declare-fun res!27081 () Bool)

(declare-fun e!29554 () Bool)

(assert (=> d!9095 (=> res!27081 e!29554)))

(assert (=> d!9095 (= res!27081 (or (is-Nil!1259 (t!4295 l!812)) (is-Nil!1259 (t!4295 (t!4295 l!812)))))))

(assert (=> d!9095 (= (isStrictlySorted!233 (t!4295 l!812)) e!29554)))

(declare-fun b!46359 () Bool)

(declare-fun e!29556 () Bool)

(assert (=> b!46359 (= e!29554 e!29556)))

(declare-fun res!27083 () Bool)

(assert (=> b!46359 (=> (not res!27083) (not e!29556))))

(assert (=> b!46359 (= res!27083 (bvslt (_1!864 (h!1838 (t!4295 l!812))) (_1!864 (h!1838 (t!4295 (t!4295 l!812))))))))

(declare-fun b!46361 () Bool)

(assert (=> b!46361 (= e!29556 (isStrictlySorted!233 (t!4295 (t!4295 l!812))))))

(assert (= (and d!9095 (not res!27081)) b!46359))

(assert (= (and b!46359 res!27083) b!46361))

(declare-fun m!40741 () Bool)

(assert (=> b!46361 m!40741))

(assert (=> b!46338 d!9095))

(declare-fun b!46377 () Bool)

(declare-fun e!29566 () Bool)

(declare-fun tp!6115 () Bool)

(assert (=> b!46377 (= e!29566 (and tp_is_empty!1979 tp!6115))))

(assert (=> b!46339 (= tp!6107 e!29566)))

(assert (= (and b!46339 (is-Cons!1258 (t!4295 l!812))) b!46377))

(push 1)

