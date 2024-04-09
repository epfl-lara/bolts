; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137942 () Bool)

(assert start!137942)

(declare-fun res!1081688 () Bool)

(declare-fun e!883820 () Bool)

(assert (=> start!137942 (=> (not res!1081688) (not e!883820))))

(declare-datatypes ((B!2856 0))(
  ( (B!2857 (val!19790 Int)) )
))
(declare-datatypes ((tuple2!25912 0))(
  ( (tuple2!25913 (_1!12966 (_ BitVec 64)) (_2!12966 B!2856)) )
))
(declare-datatypes ((List!37071 0))(
  ( (Nil!37068) (Cons!37067 (h!38611 tuple2!25912) (t!51992 List!37071)) )
))
(declare-fun l!548 () List!37071)

(declare-fun isStrictlySorted!1142 (List!37071) Bool)

(assert (=> start!137942 (= res!1081688 (isStrictlySorted!1142 l!548))))

(assert (=> start!137942 e!883820))

(declare-fun e!883821 () Bool)

(assert (=> start!137942 e!883821))

(declare-fun b!1583332 () Bool)

(declare-fun ListPrimitiveSize!213 (List!37071) Int)

(assert (=> b!1583332 (= e!883820 (< (ListPrimitiveSize!213 l!548) 0))))

(declare-fun b!1583333 () Bool)

(declare-fun tp_is_empty!39389 () Bool)

(declare-fun tp!114958 () Bool)

(assert (=> b!1583333 (= e!883821 (and tp_is_empty!39389 tp!114958))))

(assert (= (and start!137942 res!1081688) b!1583332))

(assert (= (and start!137942 (is-Cons!37067 l!548)) b!1583333))

(declare-fun m!1453243 () Bool)

(assert (=> start!137942 m!1453243))

(declare-fun m!1453245 () Bool)

(assert (=> b!1583332 m!1453245))

(push 1)

(assert (not b!1583332))

(assert (not start!137942))

(assert (not b!1583333))

(assert tp_is_empty!39389)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167183 () Bool)

(declare-fun lt!677095 () Int)

(assert (=> d!167183 (>= lt!677095 0)))

(declare-fun e!883833 () Int)

(assert (=> d!167183 (= lt!677095 e!883833)))

(declare-fun c!146676 () Bool)

(assert (=> d!167183 (= c!146676 (is-Nil!37068 l!548))))

(assert (=> d!167183 (= (ListPrimitiveSize!213 l!548) lt!677095)))

(declare-fun b!1583350 () Bool)

(assert (=> b!1583350 (= e!883833 0)))

(declare-fun b!1583351 () Bool)

(assert (=> b!1583351 (= e!883833 (+ 1 (ListPrimitiveSize!213 (t!51992 l!548))))))

(assert (= (and d!167183 c!146676) b!1583350))

(assert (= (and d!167183 (not c!146676)) b!1583351))

(declare-fun m!1453251 () Bool)

(assert (=> b!1583351 m!1453251))

(assert (=> b!1583332 d!167183))

(declare-fun d!167189 () Bool)

(declare-fun res!1081705 () Bool)

(declare-fun e!883853 () Bool)

(assert (=> d!167189 (=> res!1081705 e!883853)))

(assert (=> d!167189 (= res!1081705 (or (is-Nil!37068 l!548) (is-Nil!37068 (t!51992 l!548))))))

(assert (=> d!167189 (= (isStrictlySorted!1142 l!548) e!883853)))

(declare-fun b!1583378 () Bool)

(declare-fun e!883854 () Bool)

(assert (=> b!1583378 (= e!883853 e!883854)))

(declare-fun res!1081706 () Bool)

(assert (=> b!1583378 (=> (not res!1081706) (not e!883854))))

(assert (=> b!1583378 (= res!1081706 (bvslt (_1!12966 (h!38611 l!548)) (_1!12966 (h!38611 (t!51992 l!548)))))))

(declare-fun b!1583379 () Bool)

(assert (=> b!1583379 (= e!883854 (isStrictlySorted!1142 (t!51992 l!548)))))

(assert (= (and d!167189 (not res!1081705)) b!1583378))

