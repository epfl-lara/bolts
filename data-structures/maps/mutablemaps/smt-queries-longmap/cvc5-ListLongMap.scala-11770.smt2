; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138238 () Bool)

(assert start!138238)

(declare-fun res!1082738 () Bool)

(declare-fun e!885027 () Bool)

(assert (=> start!138238 (=> (not res!1082738) (not e!885027))))

(declare-datatypes ((B!2960 0))(
  ( (B!2961 (val!19842 Int)) )
))
(declare-datatypes ((tuple2!26016 0))(
  ( (tuple2!26017 (_1!13018 (_ BitVec 64)) (_2!13018 B!2960)) )
))
(declare-datatypes ((List!37123 0))(
  ( (Nil!37120) (Cons!37119 (h!38663 tuple2!26016) (t!52050 List!37123)) )
))
(declare-fun l!556 () List!37123)

(declare-fun isStrictlySorted!1185 (List!37123) Bool)

(assert (=> start!138238 (= res!1082738 (isStrictlySorted!1185 l!556))))

(assert (=> start!138238 e!885027))

(declare-fun e!885026 () Bool)

(assert (=> start!138238 e!885026))

(assert (=> start!138238 true))

(declare-fun tp_is_empty!39493 () Bool)

(assert (=> start!138238 tp_is_empty!39493))

(declare-fun b!1585161 () Bool)

(declare-fun res!1082737 () Bool)

(assert (=> b!1585161 (=> (not res!1082737) (not e!885027))))

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1585161 (= res!1082737 (and (or (not (is-Cons!37119 l!556)) (bvsge (_1!13018 (h!38663 l!556)) newKey!21)) (or (not (is-Cons!37119 l!556)) (not (= (_1!13018 (h!38663 l!556)) newKey!21))) (or (not (is-Cons!37119 l!556)) (bvsle (_1!13018 (h!38663 l!556)) newKey!21)) (is-Nil!37120 l!556)))))

(declare-fun b!1585162 () Bool)

(assert (=> b!1585162 (= e!885027 false)))

(declare-fun lt!677275 () Bool)

(declare-fun newValue!21 () B!2960)

(declare-fun $colon$colon!1037 (List!37123 tuple2!26016) List!37123)

(assert (=> b!1585162 (= lt!677275 (isStrictlySorted!1185 ($colon$colon!1037 Nil!37120 (tuple2!26017 newKey!21 newValue!21))))))

(declare-fun b!1585163 () Bool)

(declare-fun tp!115210 () Bool)

(assert (=> b!1585163 (= e!885026 (and tp_is_empty!39493 tp!115210))))

(assert (= (and start!138238 res!1082738) b!1585161))

(assert (= (and b!1585161 res!1082737) b!1585162))

(assert (= (and start!138238 (is-Cons!37119 l!556)) b!1585163))

(declare-fun m!1454151 () Bool)

(assert (=> start!138238 m!1454151))

(declare-fun m!1454153 () Bool)

(assert (=> b!1585162 m!1454153))

(assert (=> b!1585162 m!1454153))

(declare-fun m!1454155 () Bool)

(assert (=> b!1585162 m!1454155))

(push 1)

(assert (not start!138238))

(assert (not b!1585162))

(assert (not b!1585163))

(assert tp_is_empty!39493)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

