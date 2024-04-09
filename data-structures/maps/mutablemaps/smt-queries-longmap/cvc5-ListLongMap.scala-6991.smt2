; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88652 () Bool)

(assert start!88652)

(declare-fun res!682953 () Bool)

(declare-fun e!573028 () Bool)

(assert (=> start!88652 (=> (not res!682953) (not e!573028))))

(declare-datatypes ((B!1652 0))(
  ( (B!1653 (val!11910 Int)) )
))
(declare-datatypes ((tuple2!15456 0))(
  ( (tuple2!15457 (_1!7738 (_ BitVec 64)) (_2!7738 B!1652)) )
))
(declare-datatypes ((List!21712 0))(
  ( (Nil!21709) (Cons!21708 (h!22906 tuple2!15456) (t!30721 List!21712)) )
))
(declare-fun l!996 () List!21712)

(declare-fun isStrictlySorted!659 (List!21712) Bool)

(assert (=> start!88652 (= res!682953 (isStrictlySorted!659 l!996))))

(assert (=> start!88652 e!573028))

(declare-fun e!573027 () Bool)

(assert (=> start!88652 e!573027))

(assert (=> start!88652 true))

(declare-fun tp_is_empty!23719 () Bool)

(assert (=> start!88652 tp_is_empty!23719))

(declare-fun b!1018346 () Bool)

(declare-fun res!682952 () Bool)

(assert (=> b!1018346 (=> (not res!682952) (not e!573028))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!524 (List!21712 (_ BitVec 64)) Bool)

(assert (=> b!1018346 (= res!682952 (containsKey!524 l!996 key!261))))

(declare-fun b!1018347 () Bool)

(assert (=> b!1018347 (= e!573028 false)))

(declare-fun value!172 () B!1652)

(declare-fun lt!449526 () List!21712)

(declare-fun insertStrictlySorted!344 (List!21712 (_ BitVec 64) B!1652) List!21712)

(assert (=> b!1018347 (= lt!449526 (insertStrictlySorted!344 l!996 key!261 value!172))))

(declare-fun b!1018348 () Bool)

(declare-fun tp!71048 () Bool)

(assert (=> b!1018348 (= e!573027 (and tp_is_empty!23719 tp!71048))))

(assert (= (and start!88652 res!682953) b!1018346))

(assert (= (and b!1018346 res!682952) b!1018347))

(assert (= (and start!88652 (is-Cons!21708 l!996)) b!1018348))

(declare-fun m!939401 () Bool)

(assert (=> start!88652 m!939401))

(declare-fun m!939403 () Bool)

(assert (=> b!1018346 m!939403))

(declare-fun m!939405 () Bool)

(assert (=> b!1018347 m!939405))

(push 1)

(assert (not b!1018347))

(assert (not start!88652))

(assert (not b!1018346))

(assert tp_is_empty!23719)

(assert (not b!1018348))

(check-sat)

(pop 1)

