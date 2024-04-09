; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138430 () Bool)

(assert start!138430)

(declare-fun res!1083313 () Bool)

(declare-fun e!885717 () Bool)

(assert (=> start!138430 (=> (not res!1083313) (not e!885717))))

(declare-datatypes ((B!3020 0))(
  ( (B!3021 (val!19872 Int)) )
))
(declare-datatypes ((tuple2!26076 0))(
  ( (tuple2!26077 (_1!13048 (_ BitVec 64)) (_2!13048 B!3020)) )
))
(declare-datatypes ((List!37153 0))(
  ( (Nil!37150) (Cons!37149 (h!38693 tuple2!26076) (t!52092 List!37153)) )
))
(declare-fun l!636 () List!37153)

(declare-fun isStrictlySorted!1212 (List!37153) Bool)

(assert (=> start!138430 (= res!1083313 (isStrictlySorted!1212 l!636))))

(assert (=> start!138430 e!885717))

(declare-fun e!885716 () Bool)

(assert (=> start!138430 e!885716))

(assert (=> start!138430 true))

(declare-fun b!1586085 () Bool)

(declare-fun res!1083314 () Bool)

(assert (=> b!1586085 (=> (not res!1083314) (not e!885717))))

(declare-fun key!185 () (_ BitVec 64))

(assert (=> b!1586085 (= res!1083314 (and (or (not (is-Cons!37149 l!636)) (not (= (_1!13048 (h!38693 l!636)) key!185))) (or (not (is-Cons!37149 l!636)) (bvsle (_1!13048 (h!38693 l!636)) key!185)) (is-Cons!37149 l!636) (bvslt (_1!13048 (h!38693 l!636)) key!185)))))

(declare-fun b!1586086 () Bool)

(assert (=> b!1586086 (= e!885717 (not (isStrictlySorted!1212 (t!52092 l!636))))))

(declare-fun b!1586087 () Bool)

(declare-fun tp_is_empty!39553 () Bool)

(declare-fun tp!115366 () Bool)

(assert (=> b!1586087 (= e!885716 (and tp_is_empty!39553 tp!115366))))

(assert (= (and start!138430 res!1083313) b!1586085))

(assert (= (and b!1586085 res!1083314) b!1586086))

(assert (= (and start!138430 (is-Cons!37149 l!636)) b!1586087))

(declare-fun m!1454655 () Bool)

(assert (=> start!138430 m!1454655))

(declare-fun m!1454657 () Bool)

(assert (=> b!1586086 m!1454657))

(push 1)

(assert (not start!138430))

(assert (not b!1586086))

(assert (not b!1586087))

(assert tp_is_empty!39553)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167859 () Bool)

(declare-fun res!1083336 () Bool)

(declare-fun e!885739 () Bool)

(assert (=> d!167859 (=> res!1083336 e!885739)))

(assert (=> d!167859 (= res!1083336 (or (is-Nil!37150 l!636) (is-Nil!37150 (t!52092 l!636))))))

(assert (=> d!167859 (= (isStrictlySorted!1212 l!636) e!885739)))

(declare-fun b!1586115 () Bool)

(declare-fun e!885741 () Bool)

(assert (=> b!1586115 (= e!885739 e!885741)))

(declare-fun res!1083338 () Bool)

(assert (=> b!1586115 (=> (not res!1083338) (not e!885741))))

(assert (=> b!1586115 (= res!1083338 (bvslt (_1!13048 (h!38693 l!636)) (_1!13048 (h!38693 (t!52092 l!636)))))))

(declare-fun b!1586117 () Bool)

(assert (=> b!1586117 (= e!885741 (isStrictlySorted!1212 (t!52092 l!636)))))

(assert (= (and d!167859 (not res!1083336)) b!1586115))

(assert (= (and b!1586115 res!1083338) b!1586117))

(assert (=> b!1586117 m!1454657))

(assert (=> start!138430 d!167859))

(declare-fun d!167865 () Bool)

(declare-fun res!1083340 () Bool)

(declare-fun e!885743 () Bool)

(assert (=> d!167865 (=> res!1083340 e!885743)))

(assert (=> d!167865 (= res!1083340 (or (is-Nil!37150 (t!52092 l!636)) (is-Nil!37150 (t!52092 (t!52092 l!636)))))))

(assert (=> d!167865 (= (isStrictlySorted!1212 (t!52092 l!636)) e!885743)))

(declare-fun b!1586119 () Bool)

(declare-fun e!885745 () Bool)

(assert (=> b!1586119 (= e!885743 e!885745)))

(declare-fun res!1083342 () Bool)

(assert (=> b!1586119 (=> (not res!1083342) (not e!885745))))

(assert (=> b!1586119 (= res!1083342 (bvslt (_1!13048 (h!38693 (t!52092 l!636))) (_1!13048 (h!38693 (t!52092 (t!52092 l!636))))))))

(declare-fun b!1586121 () Bool)

(assert (=> b!1586121 (= e!885745 (isStrictlySorted!1212 (t!52092 (t!52092 l!636))))))

(assert (= (and d!167865 (not res!1083340)) b!1586119))

(assert (= (and b!1586119 res!1083342) b!1586121))

(declare-fun m!1454669 () Bool)

(assert (=> b!1586121 m!1454669))

(assert (=> b!1586086 d!167865))

(declare-fun b!1586130 () Bool)

(declare-fun e!885750 () Bool)

(declare-fun tp!115377 () Bool)

(assert (=> b!1586130 (= e!885750 (and tp_is_empty!39553 tp!115377))))

(assert (=> b!1586087 (= tp!115366 e!885750)))

(assert (= (and b!1586087 (is-Cons!37149 (t!52092 l!636))) b!1586130))

(push 1)

(assert (not b!1586117))

(assert (not b!1586121))

(assert (not b!1586130))

(assert tp_is_empty!39553)

(check-sat)

