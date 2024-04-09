; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88634 () Bool)

(assert start!88634)

(declare-fun res!682871 () Bool)

(declare-fun e!572964 () Bool)

(assert (=> start!88634 (=> (not res!682871) (not e!572964))))

(declare-datatypes ((B!1634 0))(
  ( (B!1635 (val!11901 Int)) )
))
(declare-datatypes ((tuple2!15438 0))(
  ( (tuple2!15439 (_1!7729 (_ BitVec 64)) (_2!7729 B!1634)) )
))
(declare-datatypes ((List!21703 0))(
  ( (Nil!21700) (Cons!21699 (h!22897 tuple2!15438) (t!30712 List!21703)) )
))
(declare-fun l!996 () List!21703)

(declare-fun isStrictlySorted!650 (List!21703) Bool)

(assert (=> start!88634 (= res!682871 (isStrictlySorted!650 l!996))))

(assert (=> start!88634 e!572964))

(declare-fun e!572965 () Bool)

(assert (=> start!88634 e!572965))

(assert (=> start!88634 true))

(declare-fun tp_is_empty!23701 () Bool)

(assert (=> start!88634 tp_is_empty!23701))

(declare-fun b!1018238 () Bool)

(declare-fun res!682872 () Bool)

(assert (=> b!1018238 (=> (not res!682872) (not e!572964))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!515 (List!21703 (_ BitVec 64)) Bool)

(assert (=> b!1018238 (= res!682872 (containsKey!515 l!996 key!261))))

(declare-fun b!1018239 () Bool)

(assert (=> b!1018239 (= e!572964 false)))

(declare-fun value!172 () B!1634)

(declare-fun lt!449490 () List!21703)

(declare-fun insertStrictlySorted!335 (List!21703 (_ BitVec 64) B!1634) List!21703)

(assert (=> b!1018239 (= lt!449490 (insertStrictlySorted!335 l!996 key!261 value!172))))

(declare-fun b!1018240 () Bool)

(declare-fun tp!71021 () Bool)

(assert (=> b!1018240 (= e!572965 (and tp_is_empty!23701 tp!71021))))

(assert (= (and start!88634 res!682871) b!1018238))

(assert (= (and b!1018238 res!682872) b!1018239))

(assert (= (and start!88634 (is-Cons!21699 l!996)) b!1018240))

(declare-fun m!939311 () Bool)

(assert (=> start!88634 m!939311))

(declare-fun m!939313 () Bool)

(assert (=> b!1018238 m!939313))

(declare-fun m!939315 () Bool)

(assert (=> b!1018239 m!939315))

(push 1)

(assert tp_is_empty!23701)

(assert (not b!1018240))

(assert (not b!1018239))

(assert (not start!88634))

(assert (not b!1018238))

(check-sat)

(pop 1)

