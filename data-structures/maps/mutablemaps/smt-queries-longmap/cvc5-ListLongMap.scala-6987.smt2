; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88628 () Bool)

(assert start!88628)

(declare-fun res!682853 () Bool)

(declare-fun e!572947 () Bool)

(assert (=> start!88628 (=> (not res!682853) (not e!572947))))

(declare-datatypes ((B!1628 0))(
  ( (B!1629 (val!11898 Int)) )
))
(declare-datatypes ((tuple2!15432 0))(
  ( (tuple2!15433 (_1!7726 (_ BitVec 64)) (_2!7726 B!1628)) )
))
(declare-datatypes ((List!21700 0))(
  ( (Nil!21697) (Cons!21696 (h!22894 tuple2!15432) (t!30709 List!21700)) )
))
(declare-fun l!996 () List!21700)

(declare-fun isStrictlySorted!647 (List!21700) Bool)

(assert (=> start!88628 (= res!682853 (isStrictlySorted!647 l!996))))

(assert (=> start!88628 e!572947))

(declare-fun e!572946 () Bool)

(assert (=> start!88628 e!572946))

(assert (=> start!88628 true))

(declare-fun tp_is_empty!23695 () Bool)

(assert (=> start!88628 tp_is_empty!23695))

(declare-fun b!1018211 () Bool)

(declare-fun res!682854 () Bool)

(assert (=> b!1018211 (=> (not res!682854) (not e!572947))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!512 (List!21700 (_ BitVec 64)) Bool)

(assert (=> b!1018211 (= res!682854 (containsKey!512 l!996 key!261))))

(declare-fun b!1018212 () Bool)

(assert (=> b!1018212 (= e!572947 false)))

(declare-fun value!172 () B!1628)

(declare-fun lt!449481 () List!21700)

(declare-fun insertStrictlySorted!332 (List!21700 (_ BitVec 64) B!1628) List!21700)

(assert (=> b!1018212 (= lt!449481 (insertStrictlySorted!332 l!996 key!261 value!172))))

(declare-fun b!1018213 () Bool)

(declare-fun tp!71012 () Bool)

(assert (=> b!1018213 (= e!572946 (and tp_is_empty!23695 tp!71012))))

(assert (= (and start!88628 res!682853) b!1018211))

(assert (= (and b!1018211 res!682854) b!1018212))

(assert (= (and start!88628 (is-Cons!21696 l!996)) b!1018213))

(declare-fun m!939293 () Bool)

(assert (=> start!88628 m!939293))

(declare-fun m!939295 () Bool)

(assert (=> b!1018211 m!939295))

(declare-fun m!939297 () Bool)

(assert (=> b!1018212 m!939297))

(push 1)

(assert tp_is_empty!23695)

(assert (not b!1018211))

(assert (not start!88628))

(assert (not b!1018212))

(assert (not b!1018213))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

