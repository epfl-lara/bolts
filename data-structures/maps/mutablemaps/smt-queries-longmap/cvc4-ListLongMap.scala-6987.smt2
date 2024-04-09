; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88632 () Bool)

(assert start!88632)

(declare-fun res!682865 () Bool)

(declare-fun e!572958 () Bool)

(assert (=> start!88632 (=> (not res!682865) (not e!572958))))

(declare-datatypes ((B!1632 0))(
  ( (B!1633 (val!11900 Int)) )
))
(declare-datatypes ((tuple2!15436 0))(
  ( (tuple2!15437 (_1!7728 (_ BitVec 64)) (_2!7728 B!1632)) )
))
(declare-datatypes ((List!21702 0))(
  ( (Nil!21699) (Cons!21698 (h!22896 tuple2!15436) (t!30711 List!21702)) )
))
(declare-fun l!996 () List!21702)

(declare-fun isStrictlySorted!649 (List!21702) Bool)

(assert (=> start!88632 (= res!682865 (isStrictlySorted!649 l!996))))

(assert (=> start!88632 e!572958))

(declare-fun e!572959 () Bool)

(assert (=> start!88632 e!572959))

(assert (=> start!88632 true))

(declare-fun tp_is_empty!23699 () Bool)

(assert (=> start!88632 tp_is_empty!23699))

(declare-fun b!1018229 () Bool)

(declare-fun res!682866 () Bool)

(assert (=> b!1018229 (=> (not res!682866) (not e!572958))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!514 (List!21702 (_ BitVec 64)) Bool)

(assert (=> b!1018229 (= res!682866 (containsKey!514 l!996 key!261))))

(declare-fun b!1018230 () Bool)

(assert (=> b!1018230 (= e!572958 false)))

(declare-fun value!172 () B!1632)

(declare-fun lt!449487 () List!21702)

(declare-fun insertStrictlySorted!334 (List!21702 (_ BitVec 64) B!1632) List!21702)

(assert (=> b!1018230 (= lt!449487 (insertStrictlySorted!334 l!996 key!261 value!172))))

(declare-fun b!1018231 () Bool)

(declare-fun tp!71018 () Bool)

(assert (=> b!1018231 (= e!572959 (and tp_is_empty!23699 tp!71018))))

(assert (= (and start!88632 res!682865) b!1018229))

(assert (= (and b!1018229 res!682866) b!1018230))

(assert (= (and start!88632 (is-Cons!21698 l!996)) b!1018231))

(declare-fun m!939305 () Bool)

(assert (=> start!88632 m!939305))

(declare-fun m!939307 () Bool)

(assert (=> b!1018229 m!939307))

(declare-fun m!939309 () Bool)

(assert (=> b!1018230 m!939309))

(push 1)

(assert (not b!1018231))

(assert (not start!88632))

(assert (not b!1018229))

(assert tp_is_empty!23699)

(assert (not b!1018230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

