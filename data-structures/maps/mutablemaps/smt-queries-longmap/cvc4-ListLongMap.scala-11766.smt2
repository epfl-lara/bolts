; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138212 () Bool)

(assert start!138212)

(declare-fun res!1082654 () Bool)

(declare-fun e!884934 () Bool)

(assert (=> start!138212 (=> (not res!1082654) (not e!884934))))

(declare-datatypes ((B!2940 0))(
  ( (B!2941 (val!19832 Int)) )
))
(declare-datatypes ((tuple2!25996 0))(
  ( (tuple2!25997 (_1!13008 (_ BitVec 64)) (_2!13008 B!2940)) )
))
(declare-datatypes ((List!37113 0))(
  ( (Nil!37110) (Cons!37109 (h!38653 tuple2!25996) (t!52040 List!37113)) )
))
(declare-fun l!556 () List!37113)

(declare-fun isStrictlySorted!1175 (List!37113) Bool)

(assert (=> start!138212 (= res!1082654 (isStrictlySorted!1175 l!556))))

(assert (=> start!138212 e!884934))

(declare-fun e!884933 () Bool)

(assert (=> start!138212 e!884933))

(assert (=> start!138212 true))

(declare-fun b!1585032 () Bool)

(declare-fun res!1082653 () Bool)

(assert (=> b!1585032 (=> (not res!1082653) (not e!884934))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585032 (= res!1082653 (and (is-Cons!37109 l!556) (bvslt (_1!13008 (h!38653 l!556)) newKey!21)))))

(declare-fun b!1585033 () Bool)

(assert (=> b!1585033 (= e!884934 (not (isStrictlySorted!1175 (t!52040 l!556))))))

(declare-fun b!1585034 () Bool)

(declare-fun tp_is_empty!39473 () Bool)

(declare-fun tp!115171 () Bool)

(assert (=> b!1585034 (= e!884933 (and tp_is_empty!39473 tp!115171))))

(assert (= (and start!138212 res!1082654) b!1585032))

(assert (= (and b!1585032 res!1082653) b!1585033))

(assert (= (and start!138212 (is-Cons!37109 l!556)) b!1585034))

(declare-fun m!1454081 () Bool)

(assert (=> start!138212 m!1454081))

(declare-fun m!1454083 () Bool)

(assert (=> b!1585033 m!1454083))

(push 1)

(assert (not start!138212))

(assert (not b!1585033))

(assert (not b!1585034))

(assert tp_is_empty!39473)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167611 () Bool)

(declare-fun res!1082675 () Bool)

(declare-fun e!884961 () Bool)

(assert (=> d!167611 (=> res!1082675 e!884961)))

(assert (=> d!167611 (= res!1082675 (or (is-Nil!37110 l!556) (is-Nil!37110 (t!52040 l!556))))))

(assert (=> d!167611 (= (isStrictlySorted!1175 l!556) e!884961)))

(declare-fun b!1585065 () Bool)

(declare-fun e!884962 () Bool)

(assert (=> b!1585065 (= e!884961 e!884962)))

(declare-fun res!1082676 () Bool)

(assert (=> b!1585065 (=> (not res!1082676) (not e!884962))))

(assert (=> b!1585065 (= res!1082676 (bvslt (_1!13008 (h!38653 l!556)) (_1!13008 (h!38653 (t!52040 l!556)))))))

(declare-fun b!1585066 () Bool)

(assert (=> b!1585066 (= e!884962 (isStrictlySorted!1175 (t!52040 l!556)))))

(assert (= (and d!167611 (not res!1082675)) b!1585065))

(assert (= (and b!1585065 res!1082676) b!1585066))

(assert (=> b!1585066 m!1454083))

(assert (=> start!138212 d!167611))

(declare-fun d!167613 () Bool)

(declare-fun res!1082677 () Bool)

(declare-fun e!884963 () Bool)

(assert (=> d!167613 (=> res!1082677 e!884963)))

(assert (=> d!167613 (= res!1082677 (or (is-Nil!37110 (t!52040 l!556)) (is-Nil!37110 (t!52040 (t!52040 l!556)))))))

