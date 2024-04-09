; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138242 () Bool)

(assert start!138242)

(declare-fun res!1082749 () Bool)

(declare-fun e!885039 () Bool)

(assert (=> start!138242 (=> (not res!1082749) (not e!885039))))

(declare-datatypes ((B!2964 0))(
  ( (B!2965 (val!19844 Int)) )
))
(declare-datatypes ((tuple2!26020 0))(
  ( (tuple2!26021 (_1!13020 (_ BitVec 64)) (_2!13020 B!2964)) )
))
(declare-datatypes ((List!37125 0))(
  ( (Nil!37122) (Cons!37121 (h!38665 tuple2!26020) (t!52052 List!37125)) )
))
(declare-fun l!556 () List!37125)

(declare-fun isStrictlySorted!1187 (List!37125) Bool)

(assert (=> start!138242 (= res!1082749 (isStrictlySorted!1187 l!556))))

(assert (=> start!138242 e!885039))

(declare-fun e!885038 () Bool)

(assert (=> start!138242 e!885038))

(assert (=> start!138242 true))

(declare-fun tp_is_empty!39497 () Bool)

(assert (=> start!138242 tp_is_empty!39497))

(declare-fun b!1585179 () Bool)

(declare-fun res!1082750 () Bool)

(assert (=> b!1585179 (=> (not res!1082750) (not e!885039))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585179 (= res!1082750 (and (or (not (is-Cons!37121 l!556)) (bvsge (_1!13020 (h!38665 l!556)) newKey!21)) (or (not (is-Cons!37121 l!556)) (not (= (_1!13020 (h!38665 l!556)) newKey!21))) (or (not (is-Cons!37121 l!556)) (bvsle (_1!13020 (h!38665 l!556)) newKey!21)) (is-Nil!37122 l!556)))))

(declare-fun b!1585180 () Bool)

(assert (=> b!1585180 (= e!885039 false)))

(declare-fun lt!677281 () Bool)

(declare-fun newValue!21 () B!2964)

(declare-fun $colon$colon!1039 (List!37125 tuple2!26020) List!37125)

(assert (=> b!1585180 (= lt!677281 (isStrictlySorted!1187 ($colon$colon!1039 Nil!37122 (tuple2!26021 newKey!21 newValue!21))))))

(declare-fun b!1585181 () Bool)

(declare-fun tp!115216 () Bool)

(assert (=> b!1585181 (= e!885038 (and tp_is_empty!39497 tp!115216))))

(assert (= (and start!138242 res!1082749) b!1585179))

(assert (= (and b!1585179 res!1082750) b!1585180))

(assert (= (and start!138242 (is-Cons!37121 l!556)) b!1585181))

(declare-fun m!1454163 () Bool)

(assert (=> start!138242 m!1454163))

(declare-fun m!1454165 () Bool)

(assert (=> b!1585180 m!1454165))

(assert (=> b!1585180 m!1454165))

(declare-fun m!1454167 () Bool)

(assert (=> b!1585180 m!1454167))

(push 1)

(assert (not start!138242))

(assert (not b!1585180))

(assert (not b!1585181))

(assert tp_is_empty!39497)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

