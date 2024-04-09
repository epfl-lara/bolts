; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137974 () Bool)

(assert start!137974)

(declare-fun res!1081745 () Bool)

(declare-fun e!883919 () Bool)

(assert (=> start!137974 (=> (not res!1081745) (not e!883919))))

(declare-datatypes ((B!2864 0))(
  ( (B!2865 (val!19794 Int)) )
))
(declare-datatypes ((tuple2!25920 0))(
  ( (tuple2!25921 (_1!12970 (_ BitVec 64)) (_2!12970 B!2864)) )
))
(declare-datatypes ((List!37075 0))(
  ( (Nil!37072) (Cons!37071 (h!38615 tuple2!25920) (t!51996 List!37075)) )
))
(declare-fun l!548 () List!37075)

(declare-fun isStrictlySorted!1146 (List!37075) Bool)

(assert (=> start!137974 (= res!1081745 (isStrictlySorted!1146 l!548))))

(assert (=> start!137974 e!883919))

(declare-fun e!883920 () Bool)

(assert (=> start!137974 e!883920))

(assert (=> start!137974 true))

(declare-fun b!1583473 () Bool)

(declare-fun key!159 () (_ BitVec 64))

(assert (=> b!1583473 (= e!883919 (and (or (not (is-Cons!37071 l!548)) (not (= (_1!12970 (h!38615 l!548)) key!159))) (or (not (is-Cons!37071 l!548)) (= (_1!12970 (h!38615 l!548)) key!159)) (not (is-Nil!37072 l!548))))))

(declare-fun b!1583474 () Bool)

(declare-fun tp_is_empty!39397 () Bool)

(declare-fun tp!114988 () Bool)

(assert (=> b!1583474 (= e!883920 (and tp_is_empty!39397 tp!114988))))

(assert (= (and start!137974 res!1081745) b!1583473))

(assert (= (and start!137974 (is-Cons!37071 l!548)) b!1583474))

(declare-fun m!1453289 () Bool)

(assert (=> start!137974 m!1453289))

(push 1)

(assert (not start!137974))

(assert (not b!1583474))

(assert tp_is_empty!39397)

(check-sat)

(pop 1)

