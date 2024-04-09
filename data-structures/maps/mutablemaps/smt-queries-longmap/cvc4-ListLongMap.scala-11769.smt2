; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138236 () Bool)

(assert start!138236)

(declare-fun res!1082732 () Bool)

(declare-fun e!885020 () Bool)

(assert (=> start!138236 (=> (not res!1082732) (not e!885020))))

(declare-datatypes ((B!2958 0))(
  ( (B!2959 (val!19841 Int)) )
))
(declare-datatypes ((tuple2!26014 0))(
  ( (tuple2!26015 (_1!13017 (_ BitVec 64)) (_2!13017 B!2958)) )
))
(declare-datatypes ((List!37122 0))(
  ( (Nil!37119) (Cons!37118 (h!38662 tuple2!26014) (t!52049 List!37122)) )
))
(declare-fun l!556 () List!37122)

(declare-fun isStrictlySorted!1184 (List!37122) Bool)

(assert (=> start!138236 (= res!1082732 (isStrictlySorted!1184 l!556))))

(assert (=> start!138236 e!885020))

(declare-fun e!885021 () Bool)

(assert (=> start!138236 e!885021))

(assert (=> start!138236 true))

(declare-fun tp_is_empty!39491 () Bool)

(assert (=> start!138236 tp_is_empty!39491))

(declare-fun b!1585152 () Bool)

(declare-fun res!1082731 () Bool)

(assert (=> b!1585152 (=> (not res!1082731) (not e!885020))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585152 (= res!1082731 (and (or (not (is-Cons!37118 l!556)) (bvsge (_1!13017 (h!38662 l!556)) newKey!21)) (not (= (_1!13017 (h!38662 l!556)) newKey!21)) (is-Cons!37118 l!556) (bvsgt (_1!13017 (h!38662 l!556)) newKey!21)))))

(declare-fun b!1585153 () Bool)

(assert (=> b!1585153 (= e!885020 false)))

(declare-fun newValue!21 () B!2958)

(declare-fun lt!677272 () Bool)

(declare-fun $colon$colon!1036 (List!37122 tuple2!26014) List!37122)

(assert (=> b!1585153 (= lt!677272 (isStrictlySorted!1184 ($colon$colon!1036 l!556 (tuple2!26015 newKey!21 newValue!21))))))

(declare-fun b!1585154 () Bool)

(declare-fun tp!115207 () Bool)

(assert (=> b!1585154 (= e!885021 (and tp_is_empty!39491 tp!115207))))

(assert (= (and start!138236 res!1082732) b!1585152))

(assert (= (and b!1585152 res!1082731) b!1585153))

(assert (= (and start!138236 (is-Cons!37118 l!556)) b!1585154))

(declare-fun m!1454145 () Bool)

(assert (=> start!138236 m!1454145))

(declare-fun m!1454147 () Bool)

(assert (=> b!1585153 m!1454147))

(assert (=> b!1585153 m!1454147))

(declare-fun m!1454149 () Bool)

(assert (=> b!1585153 m!1454149))

(push 1)

(assert (not b!1585153))

(assert (not start!138236))

(assert (not b!1585154))

(assert tp_is_empty!39491)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

