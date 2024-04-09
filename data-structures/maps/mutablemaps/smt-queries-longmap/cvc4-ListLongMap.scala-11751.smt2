; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137930 () Bool)

(assert start!137930)

(declare-fun res!1081655 () Bool)

(declare-fun e!883769 () Bool)

(assert (=> start!137930 (=> (not res!1081655) (not e!883769))))

(declare-datatypes ((B!2850 0))(
  ( (B!2851 (val!19787 Int)) )
))
(declare-datatypes ((tuple2!25906 0))(
  ( (tuple2!25907 (_1!12963 (_ BitVec 64)) (_2!12963 B!2850)) )
))
(declare-datatypes ((List!37068 0))(
  ( (Nil!37065) (Cons!37064 (h!38608 tuple2!25906) (t!51989 List!37068)) )
))
(declare-fun l!548 () List!37068)

(declare-fun isStrictlySorted!1139 (List!37068) Bool)

(assert (=> start!137930 (= res!1081655 (isStrictlySorted!1139 l!548))))

(assert (=> start!137930 e!883769))

(declare-fun e!883770 () Bool)

(assert (=> start!137930 e!883770))

(assert (=> start!137930 true))

(declare-fun b!1583274 () Bool)

(declare-fun res!1081654 () Bool)

(assert (=> b!1583274 (=> (not res!1081654) (not e!883769))))

(declare-fun key!159 () (_ BitVec 64))

(assert (=> b!1583274 (= res!1081654 (and (not (= (_1!12963 (h!38608 l!548)) key!159)) (is-Cons!37064 l!548)))))

(declare-fun b!1583275 () Bool)

(assert (=> b!1583275 (= e!883769 (not (isStrictlySorted!1139 (t!51989 l!548))))))

(declare-fun b!1583276 () Bool)

(declare-fun tp_is_empty!39383 () Bool)

(declare-fun tp!114940 () Bool)

(assert (=> b!1583276 (= e!883770 (and tp_is_empty!39383 tp!114940))))

(assert (= (and start!137930 res!1081655) b!1583274))

(assert (= (and b!1583274 res!1081654) b!1583275))

(assert (= (and start!137930 (is-Cons!37064 l!548)) b!1583276))

(declare-fun m!1453225 () Bool)

(assert (=> start!137930 m!1453225))

(declare-fun m!1453227 () Bool)

(assert (=> b!1583275 m!1453227))

(push 1)

(assert (not b!1583275))

(assert (not start!137930))

(assert (not b!1583276))

(assert tp_is_empty!39383)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167167 () Bool)

(declare-fun res!1081672 () Bool)

(declare-fun e!883789 () Bool)

(assert (=> d!167167 (=> res!1081672 e!883789)))

(assert (=> d!167167 (= res!1081672 (or (is-Nil!37065 (t!51989 l!548)) (is-Nil!37065 (t!51989 (t!51989 l!548)))))))

(assert (=> d!167167 (= (isStrictlySorted!1139 (t!51989 l!548)) e!883789)))

(declare-fun b!1583297 () Bool)

(declare-fun e!883790 () Bool)

(assert (=> b!1583297 (= e!883789 e!883790)))

(declare-fun res!1081673 () Bool)

(assert (=> b!1583297 (=> (not res!1081673) (not e!883790))))

(assert (=> b!1583297 (= res!1081673 (bvslt (_1!12963 (h!38608 (t!51989 l!548))) (_1!12963 (h!38608 (t!51989 (t!51989 l!548))))))))

(declare-fun b!1583298 () Bool)

(assert (=> b!1583298 (= e!883790 (isStrictlySorted!1139 (t!51989 (t!51989 l!548))))))

(assert (= (and d!167167 (not res!1081672)) b!1583297))

(assert (= (and b!1583297 res!1081673) b!1583298))

(declare-fun m!1453231 () Bool)

(assert (=> b!1583298 m!1453231))

(assert (=> b!1583275 d!167167))

(declare-fun d!167173 () Bool)

(declare-fun res!1081676 () Bool)

(declare-fun e!883793 () Bool)

(assert (=> d!167173 (=> res!1081676 e!883793)))

(assert (=> d!167173 (= res!1081676 (or (is-Nil!37065 l!548) (is-Nil!37065 (t!51989 l!548))))))

(assert (=> d!167173 (= (isStrictlySorted!1139 l!548) e!883793)))

(declare-fun b!1583301 () Bool)

(declare-fun e!883794 () Bool)

(assert (=> b!1583301 (= e!883793 e!883794)))

(declare-fun res!1081677 () Bool)

(assert (=> b!1583301 (=> (not res!1081677) (not e!883794))))

(assert (=> b!1583301 (= res!1081677 (bvslt (_1!12963 (h!38608 l!548)) (_1!12963 (h!38608 (t!51989 l!548)))))))

(declare-fun b!1583302 () Bool)

(assert (=> b!1583302 (= e!883794 (isStrictlySorted!1139 (t!51989 l!548)))))

(assert (= (and d!167173 (not res!1081676)) b!1583301))

(assert (= (and b!1583301 res!1081677) b!1583302))

(assert (=> b!1583302 m!1453227))

(assert (=> start!137930 d!167173))

(declare-fun b!1583314 () Bool)

(declare-fun e!883802 () Bool)

(declare-fun tp!114948 () Bool)

(assert (=> b!1583314 (= e!883802 (and tp_is_empty!39383 tp!114948))))

(assert (=> b!1583276 (= tp!114940 e!883802)))

(assert (= (and b!1583276 (is-Cons!37064 (t!51989 l!548))) b!1583314))

(push 1)

