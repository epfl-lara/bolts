; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88656 () Bool)

(assert start!88656)

(declare-fun res!682965 () Bool)

(declare-fun e!573039 () Bool)

(assert (=> start!88656 (=> (not res!682965) (not e!573039))))

(declare-datatypes ((B!1656 0))(
  ( (B!1657 (val!11912 Int)) )
))
(declare-datatypes ((tuple2!15460 0))(
  ( (tuple2!15461 (_1!7740 (_ BitVec 64)) (_2!7740 B!1656)) )
))
(declare-datatypes ((List!21714 0))(
  ( (Nil!21711) (Cons!21710 (h!22908 tuple2!15460) (t!30723 List!21714)) )
))
(declare-fun l!996 () List!21714)

(declare-fun isStrictlySorted!661 (List!21714) Bool)

(assert (=> start!88656 (= res!682965 (isStrictlySorted!661 l!996))))

(assert (=> start!88656 e!573039))

(declare-fun e!573040 () Bool)

(assert (=> start!88656 e!573040))

(assert (=> start!88656 true))

(declare-fun tp_is_empty!23723 () Bool)

(assert (=> start!88656 tp_is_empty!23723))

(declare-fun b!1018364 () Bool)

(declare-fun res!682964 () Bool)

(assert (=> b!1018364 (=> (not res!682964) (not e!573039))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!526 (List!21714 (_ BitVec 64)) Bool)

(assert (=> b!1018364 (= res!682964 (containsKey!526 l!996 key!261))))

(declare-fun b!1018365 () Bool)

(assert (=> b!1018365 (= e!573039 false)))

(declare-fun value!172 () B!1656)

(declare-fun lt!449532 () List!21714)

(declare-fun insertStrictlySorted!346 (List!21714 (_ BitVec 64) B!1656) List!21714)

(assert (=> b!1018365 (= lt!449532 (insertStrictlySorted!346 l!996 key!261 value!172))))

(declare-fun b!1018366 () Bool)

(declare-fun tp!71054 () Bool)

(assert (=> b!1018366 (= e!573040 (and tp_is_empty!23723 tp!71054))))

(assert (= (and start!88656 res!682965) b!1018364))

(assert (= (and b!1018364 res!682964) b!1018365))

(assert (= (and start!88656 (is-Cons!21710 l!996)) b!1018366))

(declare-fun m!939413 () Bool)

(assert (=> start!88656 m!939413))

(declare-fun m!939415 () Bool)

(assert (=> b!1018364 m!939415))

(declare-fun m!939417 () Bool)

(assert (=> b!1018365 m!939417))

(push 1)

(assert (not b!1018366))

(assert tp_is_empty!23723)

(assert (not start!88656))

(assert (not b!1018364))

(assert (not b!1018365))

(check-sat)

