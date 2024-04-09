; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138434 () Bool)

(assert start!138434)

(declare-fun res!1083326 () Bool)

(declare-fun e!885728 () Bool)

(assert (=> start!138434 (=> (not res!1083326) (not e!885728))))

(declare-datatypes ((B!3024 0))(
  ( (B!3025 (val!19874 Int)) )
))
(declare-datatypes ((tuple2!26080 0))(
  ( (tuple2!26081 (_1!13050 (_ BitVec 64)) (_2!13050 B!3024)) )
))
(declare-datatypes ((List!37155 0))(
  ( (Nil!37152) (Cons!37151 (h!38695 tuple2!26080) (t!52094 List!37155)) )
))
(declare-fun l!636 () List!37155)

(declare-fun isStrictlySorted!1214 (List!37155) Bool)

(assert (=> start!138434 (= res!1083326 (isStrictlySorted!1214 l!636))))

(assert (=> start!138434 e!885728))

(declare-fun e!885729 () Bool)

(assert (=> start!138434 e!885729))

(assert (=> start!138434 true))

(declare-fun b!1586103 () Bool)

(declare-fun res!1083325 () Bool)

(assert (=> b!1586103 (=> (not res!1083325) (not e!885728))))

(declare-fun key!185 () (_ BitVec 64))

(assert (=> b!1586103 (= res!1083325 (and (or (not (is-Cons!37151 l!636)) (not (= (_1!13050 (h!38695 l!636)) key!185))) (or (not (is-Cons!37151 l!636)) (bvsle (_1!13050 (h!38695 l!636)) key!185)) (is-Cons!37151 l!636) (bvslt (_1!13050 (h!38695 l!636)) key!185)))))

(declare-fun b!1586104 () Bool)

(assert (=> b!1586104 (= e!885728 (not (isStrictlySorted!1214 (t!52094 l!636))))))

(declare-fun b!1586105 () Bool)

(declare-fun tp_is_empty!39557 () Bool)

(declare-fun tp!115372 () Bool)

(assert (=> b!1586105 (= e!885729 (and tp_is_empty!39557 tp!115372))))

(assert (= (and start!138434 res!1083326) b!1586103))

(assert (= (and b!1586103 res!1083325) b!1586104))

(assert (= (and start!138434 (is-Cons!37151 l!636)) b!1586105))

(declare-fun m!1454663 () Bool)

(assert (=> start!138434 m!1454663))

(declare-fun m!1454665 () Bool)

(assert (=> b!1586104 m!1454665))

(push 1)

(assert (not start!138434))

(assert (not b!1586104))

(assert (not b!1586105))

(assert tp_is_empty!39557)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167867 () Bool)

(declare-fun res!1083347 () Bool)

(declare-fun e!885756 () Bool)

(assert (=> d!167867 (=> res!1083347 e!885756)))

(assert (=> d!167867 (= res!1083347 (or (is-Nil!37152 l!636) (is-Nil!37152 (t!52094 l!636))))))

(assert (=> d!167867 (= (isStrictlySorted!1214 l!636) e!885756)))

(declare-fun b!1586136 () Bool)

(declare-fun e!885757 () Bool)

(assert (=> b!1586136 (= e!885756 e!885757)))

(declare-fun res!1083348 () Bool)

(assert (=> b!1586136 (=> (not res!1083348) (not e!885757))))

(assert (=> b!1586136 (= res!1083348 (bvslt (_1!13050 (h!38695 l!636)) (_1!13050 (h!38695 (t!52094 l!636)))))))

(declare-fun b!1586137 () Bool)

(assert (=> b!1586137 (= e!885757 (isStrictlySorted!1214 (t!52094 l!636)))))

(assert (= (and d!167867 (not res!1083347)) b!1586136))

(assert (= (and b!1586136 res!1083348) b!1586137))

(assert (=> b!1586137 m!1454665))

(assert (=> start!138434 d!167867))

(declare-fun d!167869 () Bool)

(declare-fun res!1083349 () Bool)

(declare-fun e!885758 () Bool)

(assert (=> d!167869 (=> res!1083349 e!885758)))

(assert (=> d!167869 (= res!1083349 (or (is-Nil!37152 (t!52094 l!636)) (is-Nil!37152 (t!52094 (t!52094 l!636)))))))

(assert (=> d!167869 (= (isStrictlySorted!1214 (t!52094 l!636)) e!885758)))

(declare-fun b!1586138 () Bool)

(declare-fun e!885759 () Bool)

(assert (=> b!1586138 (= e!885758 e!885759)))

(declare-fun res!1083350 () Bool)

(assert (=> b!1586138 (=> (not res!1083350) (not e!885759))))

