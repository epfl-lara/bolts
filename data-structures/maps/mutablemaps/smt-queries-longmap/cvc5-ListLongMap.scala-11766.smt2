; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138208 () Bool)

(assert start!138208)

(declare-fun res!1082641 () Bool)

(declare-fun e!884921 () Bool)

(assert (=> start!138208 (=> (not res!1082641) (not e!884921))))

(declare-datatypes ((B!2936 0))(
  ( (B!2937 (val!19830 Int)) )
))
(declare-datatypes ((tuple2!25992 0))(
  ( (tuple2!25993 (_1!13006 (_ BitVec 64)) (_2!13006 B!2936)) )
))
(declare-datatypes ((List!37111 0))(
  ( (Nil!37108) (Cons!37107 (h!38651 tuple2!25992) (t!52038 List!37111)) )
))
(declare-fun l!556 () List!37111)

(declare-fun isStrictlySorted!1173 (List!37111) Bool)

(assert (=> start!138208 (= res!1082641 (isStrictlySorted!1173 l!556))))

(assert (=> start!138208 e!884921))

(declare-fun e!884922 () Bool)

(assert (=> start!138208 e!884922))

(assert (=> start!138208 true))

(declare-fun b!1585014 () Bool)

(declare-fun res!1082642 () Bool)

(assert (=> b!1585014 (=> (not res!1082642) (not e!884921))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585014 (= res!1082642 (and (is-Cons!37107 l!556) (bvslt (_1!13006 (h!38651 l!556)) newKey!21)))))

(declare-fun b!1585015 () Bool)

(assert (=> b!1585015 (= e!884921 (not (isStrictlySorted!1173 (t!52038 l!556))))))

(declare-fun b!1585016 () Bool)

(declare-fun tp_is_empty!39469 () Bool)

(declare-fun tp!115165 () Bool)

(assert (=> b!1585016 (= e!884922 (and tp_is_empty!39469 tp!115165))))

(assert (= (and start!138208 res!1082641) b!1585014))

(assert (= (and b!1585014 res!1082642) b!1585015))

(assert (= (and start!138208 (is-Cons!37107 l!556)) b!1585016))

(declare-fun m!1454073 () Bool)

(assert (=> start!138208 m!1454073))

(declare-fun m!1454075 () Bool)

(assert (=> b!1585015 m!1454075))

(push 1)

(assert (not start!138208))

(assert (not b!1585015))

(assert (not b!1585016))

(assert tp_is_empty!39469)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167605 () Bool)

(declare-fun res!1082667 () Bool)

(declare-fun e!884950 () Bool)

(assert (=> d!167605 (=> res!1082667 e!884950)))

(assert (=> d!167605 (= res!1082667 (or (is-Nil!37108 l!556) (is-Nil!37108 (t!52038 l!556))))))

(assert (=> d!167605 (= (isStrictlySorted!1173 l!556) e!884950)))

(declare-fun b!1585052 () Bool)

(declare-fun e!884951 () Bool)

(assert (=> b!1585052 (= e!884950 e!884951)))

(declare-fun res!1082668 () Bool)

(assert (=> b!1585052 (=> (not res!1082668) (not e!884951))))

(assert (=> b!1585052 (= res!1082668 (bvslt (_1!13006 (h!38651 l!556)) (_1!13006 (h!38651 (t!52038 l!556)))))))

(declare-fun b!1585053 () Bool)

(assert (=> b!1585053 (= e!884951 (isStrictlySorted!1173 (t!52038 l!556)))))

(assert (= (and d!167605 (not res!1082667)) b!1585052))

(assert (= (and b!1585052 res!1082668) b!1585053))

(assert (=> b!1585053 m!1454075))

(assert (=> start!138208 d!167605))

(declare-fun d!167609 () Bool)

(declare-fun res!1082669 () Bool)

(declare-fun e!884952 () Bool)

(assert (=> d!167609 (=> res!1082669 e!884952)))

(assert (=> d!167609 (= res!1082669 (or (is-Nil!37108 (t!52038 l!556)) (is-Nil!37108 (t!52038 (t!52038 l!556)))))))

(assert (=> d!167609 (= (isStrictlySorted!1173 (t!52038 l!556)) e!884952)))

(declare-fun b!1585054 () Bool)

(declare-fun e!884953 () Bool)

(assert (=> b!1585054 (= e!884952 e!884953)))

(declare-fun res!1082670 () Bool)

(assert (=> b!1585054 (=> (not res!1082670) (not e!884953))))

(assert (=> b!1585054 (= res!1082670 (bvslt (_1!13006 (h!38651 (t!52038 l!556))) (_1!13006 (h!38651 (t!52038 (t!52038 l!556))))))))

(declare-fun b!1585055 () Bool)

(assert (=> b!1585055 (= e!884953 (isStrictlySorted!1173 (t!52038 (t!52038 l!556))))))

(assert (= (and d!167609 (not res!1082669)) b!1585054))

(assert (= (and b!1585054 res!1082670) b!1585055))

(declare-fun m!1454087 () Bool)

(assert (=> b!1585055 m!1454087))

(assert (=> b!1585015 d!167609))

(declare-fun b!1585060 () Bool)

(declare-fun e!884956 () Bool)

(declare-fun tp!115177 () Bool)

(assert (=> b!1585060 (= e!884956 (and tp_is_empty!39469 tp!115177))))

(assert (=> b!1585016 (= tp!115165 e!884956)))

(assert (= (and b!1585016 (is-Cons!37107 (t!52038 l!556))) b!1585060))

(push 1)

