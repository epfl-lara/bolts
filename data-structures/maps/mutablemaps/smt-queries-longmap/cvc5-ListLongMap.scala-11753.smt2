; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137956 () Bool)

(assert start!137956)

(declare-fun res!1081711 () Bool)

(declare-fun e!883863 () Bool)

(assert (=> start!137956 (=> (not res!1081711) (not e!883863))))

(declare-datatypes ((B!2858 0))(
  ( (B!2859 (val!19791 Int)) )
))
(declare-datatypes ((tuple2!25914 0))(
  ( (tuple2!25915 (_1!12967 (_ BitVec 64)) (_2!12967 B!2858)) )
))
(declare-datatypes ((List!37072 0))(
  ( (Nil!37069) (Cons!37068 (h!38612 tuple2!25914) (t!51993 List!37072)) )
))
(declare-fun l!548 () List!37072)

(declare-fun isStrictlySorted!1143 (List!37072) Bool)

(assert (=> start!137956 (= res!1081711 (isStrictlySorted!1143 l!548))))

(assert (=> start!137956 e!883863))

(declare-fun e!883862 () Bool)

(assert (=> start!137956 e!883862))

(assert (=> start!137956 true))

(declare-fun b!1583391 () Bool)

(declare-fun res!1081712 () Bool)

(assert (=> b!1583391 (=> (not res!1081712) (not e!883863))))

(declare-fun key!159 () (_ BitVec 64))

(assert (=> b!1583391 (= res!1081712 (and (not (= (_1!12967 (h!38612 l!548)) key!159)) (is-Cons!37068 l!548)))))

(declare-fun b!1583392 () Bool)

(declare-fun ListPrimitiveSize!214 (List!37072) Int)

(assert (=> b!1583392 (= e!883863 (>= (ListPrimitiveSize!214 (t!51993 l!548)) (ListPrimitiveSize!214 l!548)))))

(declare-fun b!1583393 () Bool)

(declare-fun tp_is_empty!39391 () Bool)

(declare-fun tp!114970 () Bool)

(assert (=> b!1583393 (= e!883862 (and tp_is_empty!39391 tp!114970))))

(assert (= (and start!137956 res!1081711) b!1583391))

(assert (= (and b!1583391 res!1081712) b!1583392))

(assert (= (and start!137956 (is-Cons!37068 l!548)) b!1583393))

(declare-fun m!1453259 () Bool)

(assert (=> start!137956 m!1453259))

(declare-fun m!1453261 () Bool)

(assert (=> b!1583392 m!1453261))

(declare-fun m!1453263 () Bool)

(assert (=> b!1583392 m!1453263))

(push 1)

(assert (not start!137956))

(assert (not b!1583392))

(assert (not b!1583393))

(assert tp_is_empty!39391)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167197 () Bool)

(declare-fun res!1081741 () Bool)

(declare-fun e!883894 () Bool)

(assert (=> d!167197 (=> res!1081741 e!883894)))

(assert (=> d!167197 (= res!1081741 (or (is-Nil!37069 l!548) (is-Nil!37069 (t!51993 l!548))))))

(assert (=> d!167197 (= (isStrictlySorted!1143 l!548) e!883894)))

(declare-fun b!1583432 () Bool)

(declare-fun e!883895 () Bool)

(assert (=> b!1583432 (= e!883894 e!883895)))

(declare-fun res!1081742 () Bool)

(assert (=> b!1583432 (=> (not res!1081742) (not e!883895))))

(assert (=> b!1583432 (= res!1081742 (bvslt (_1!12967 (h!38612 l!548)) (_1!12967 (h!38612 (t!51993 l!548)))))))

(declare-fun b!1583433 () Bool)

(assert (=> b!1583433 (= e!883895 (isStrictlySorted!1143 (t!51993 l!548)))))

(assert (= (and d!167197 (not res!1081741)) b!1583432))

(assert (= (and b!1583432 res!1081742) b!1583433))

(declare-fun m!1453281 () Bool)

(assert (=> b!1583433 m!1453281))

(assert (=> start!137956 d!167197))

(declare-fun d!167203 () Bool)

(declare-fun lt!677108 () Int)

(assert (=> d!167203 (>= lt!677108 0)))

(declare-fun e!883906 () Int)

(assert (=> d!167203 (= lt!677108 e!883906)))

(declare-fun c!146689 () Bool)

(assert (=> d!167203 (= c!146689 (is-Nil!37069 (t!51993 l!548)))))

(assert (=> d!167203 (= (ListPrimitiveSize!214 (t!51993 l!548)) lt!677108)))

(declare-fun b!1583453 () Bool)

(assert (=> b!1583453 (= e!883906 0)))

(declare-fun b!1583454 () Bool)

(assert (=> b!1583454 (= e!883906 (+ 1 (ListPrimitiveSize!214 (t!51993 (t!51993 l!548)))))))

(assert (= (and d!167203 c!146689) b!1583453))

(assert (= (and d!167203 (not c!146689)) b!1583454))

(declare-fun m!1453287 () Bool)

(assert (=> b!1583454 m!1453287))

(assert (=> b!1583392 d!167203))

(declare-fun d!167209 () Bool)

(declare-fun lt!677110 () Int)

(assert (=> d!167209 (>= lt!677110 0)))

(declare-fun e!883908 () Int)

(assert (=> d!167209 (= lt!677110 e!883908)))

(declare-fun c!146691 () Bool)

(assert (=> d!167209 (= c!146691 (is-Nil!37069 l!548))))

(assert (=> d!167209 (= (ListPrimitiveSize!214 l!548) lt!677110)))

(declare-fun b!1583457 () Bool)

(assert (=> b!1583457 (= e!883908 0)))

(declare-fun b!1583458 () Bool)

(assert (=> b!1583458 (= e!883908 (+ 1 (ListPrimitiveSize!214 (t!51993 l!548))))))

(assert (= (and d!167209 c!146691) b!1583457))

(assert (= (and d!167209 (not c!146691)) b!1583458))

(assert (=> b!1583458 m!1453261))

(assert (=> b!1583392 d!167209))

(declare-fun b!1583468 () Bool)

(declare-fun e!883914 () Bool)

(declare-fun tp!114985 () Bool)

(assert (=> b!1583468 (= e!883914 (and tp_is_empty!39391 tp!114985))))

(assert (=> b!1583393 (= tp!114970 e!883914)))

(assert (= (and b!1583393 (is-Cons!37068 (t!51993 l!548))) b!1583468))

(push 1)

