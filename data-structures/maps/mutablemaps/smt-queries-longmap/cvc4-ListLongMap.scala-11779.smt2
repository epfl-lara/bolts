; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138428 () Bool)

(assert start!138428)

(declare-fun b!1586073 () Bool)

(declare-fun res!1083308 () Bool)

(declare-fun e!885710 () Bool)

(assert (=> b!1586073 (=> res!1083308 e!885710)))

(declare-datatypes ((B!3018 0))(
  ( (B!3019 (val!19871 Int)) )
))
(declare-datatypes ((tuple2!26074 0))(
  ( (tuple2!26075 (_1!13047 (_ BitVec 64)) (_2!13047 B!3018)) )
))
(declare-datatypes ((List!37152 0))(
  ( (Nil!37149) (Cons!37148 (h!38692 tuple2!26074) (t!52091 List!37152)) )
))
(declare-fun lt!677428 () List!37152)

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun containsKey!1021 (List!37152 (_ BitVec 64)) Bool)

(assert (=> b!1586073 (= res!1083308 (not (containsKey!1021 lt!677428 newKey!21)))))

(declare-fun b!1586074 () Bool)

(declare-fun e!885708 () Bool)

(declare-fun tp_is_empty!39551 () Bool)

(declare-fun tp!115363 () Bool)

(assert (=> b!1586074 (= e!885708 (and tp_is_empty!39551 tp!115363))))

(declare-fun b!1586075 () Bool)

(declare-fun res!1083305 () Bool)

(declare-fun e!885709 () Bool)

(assert (=> b!1586075 (=> (not res!1083305) (not e!885709))))

(declare-fun l!556 () List!37152)

(assert (=> b!1586075 (= res!1083305 (and (or (not (is-Cons!37148 l!556)) (bvsge (_1!13047 (h!38692 l!556)) newKey!21)) (or (not (is-Cons!37148 l!556)) (not (= (_1!13047 (h!38692 l!556)) newKey!21))) (or (not (is-Cons!37148 l!556)) (bvsle (_1!13047 (h!38692 l!556)) newKey!21)) (not (is-Nil!37149 l!556))))))

(declare-fun b!1586077 () Bool)

(declare-fun e!885711 () Bool)

(declare-fun tp!115362 () Bool)

(assert (=> b!1586077 (= e!885711 (and tp_is_empty!39551 tp!115362))))

(declare-fun newValue!21 () B!3018)

(declare-fun b!1586078 () Bool)

(declare-fun contains!10563 (List!37152 tuple2!26074) Bool)

(assert (=> b!1586078 (= e!885710 (not (contains!10563 lt!677428 (tuple2!26075 newKey!21 newValue!21))))))

(declare-fun res!1083307 () Bool)

(assert (=> start!138428 (=> (not res!1083307) (not e!885709))))

(declare-fun isStrictlySorted!1211 (List!37152) Bool)

(assert (=> start!138428 (= res!1083307 (isStrictlySorted!1211 l!556))))

(assert (=> start!138428 e!885709))

(assert (=> start!138428 e!885708))

(assert (=> start!138428 true))

(assert (=> start!138428 tp_is_empty!39551))

(declare-fun b!1586076 () Bool)

(assert (=> b!1586076 (= e!885709 e!885710)))

(declare-fun res!1083306 () Bool)

(assert (=> b!1586076 (=> res!1083306 e!885710)))

(assert (=> b!1586076 (= res!1083306 (not (isStrictlySorted!1211 lt!677428)))))

(declare-fun err!233 () List!37152)

(assert (=> b!1586076 (= lt!677428 err!233)))

(assert (=> b!1586076 true))

(assert (=> b!1586076 e!885711))

(assert (= (and start!138428 res!1083307) b!1586075))

(assert (= (and b!1586075 res!1083305) b!1586076))

(assert (= (and b!1586076 (is-Cons!37148 err!233)) b!1586077))

(assert (= (and b!1586076 (not res!1083306)) b!1586073))

(assert (= (and b!1586073 (not res!1083308)) b!1586078))

(assert (= (and start!138428 (is-Cons!37148 l!556)) b!1586074))

(declare-fun m!1454647 () Bool)

(assert (=> b!1586073 m!1454647))

(declare-fun m!1454649 () Bool)

(assert (=> b!1586078 m!1454649))

(declare-fun m!1454651 () Bool)

(assert (=> start!138428 m!1454651))

(declare-fun m!1454653 () Bool)

(assert (=> b!1586076 m!1454653))

(push 1)

(assert (not b!1586078))

(assert tp_is_empty!39551)

(assert (not start!138428))

(assert (not b!1586076))

(assert (not b!1586073))

(assert (not b!1586077))

(assert (not b!1586074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

