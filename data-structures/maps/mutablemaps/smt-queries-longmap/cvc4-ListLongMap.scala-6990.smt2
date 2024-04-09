; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88650 () Bool)

(assert start!88650)

(declare-fun res!682947 () Bool)

(declare-fun e!573022 () Bool)

(assert (=> start!88650 (=> (not res!682947) (not e!573022))))

(declare-datatypes ((B!1650 0))(
  ( (B!1651 (val!11909 Int)) )
))
(declare-datatypes ((tuple2!15454 0))(
  ( (tuple2!15455 (_1!7737 (_ BitVec 64)) (_2!7737 B!1650)) )
))
(declare-datatypes ((List!21711 0))(
  ( (Nil!21708) (Cons!21707 (h!22905 tuple2!15454) (t!30720 List!21711)) )
))
(declare-fun l!996 () List!21711)

(declare-fun isStrictlySorted!658 (List!21711) Bool)

(assert (=> start!88650 (= res!682947 (isStrictlySorted!658 l!996))))

(assert (=> start!88650 e!573022))

(declare-fun e!573021 () Bool)

(assert (=> start!88650 e!573021))

(assert (=> start!88650 true))

(declare-fun tp_is_empty!23717 () Bool)

(assert (=> start!88650 tp_is_empty!23717))

(declare-fun b!1018337 () Bool)

(declare-fun res!682946 () Bool)

(assert (=> b!1018337 (=> (not res!682946) (not e!573022))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!523 (List!21711 (_ BitVec 64)) Bool)

(assert (=> b!1018337 (= res!682946 (containsKey!523 l!996 key!261))))

(declare-fun b!1018338 () Bool)

(assert (=> b!1018338 (= e!573022 false)))

(declare-fun value!172 () B!1650)

(declare-fun lt!449523 () List!21711)

(declare-fun insertStrictlySorted!343 (List!21711 (_ BitVec 64) B!1650) List!21711)

(assert (=> b!1018338 (= lt!449523 (insertStrictlySorted!343 l!996 key!261 value!172))))

(declare-fun b!1018339 () Bool)

(declare-fun tp!71045 () Bool)

(assert (=> b!1018339 (= e!573021 (and tp_is_empty!23717 tp!71045))))

(assert (= (and start!88650 res!682947) b!1018337))

(assert (= (and b!1018337 res!682946) b!1018338))

(assert (= (and start!88650 (is-Cons!21707 l!996)) b!1018339))

(declare-fun m!939395 () Bool)

(assert (=> start!88650 m!939395))

(declare-fun m!939397 () Bool)

(assert (=> b!1018337 m!939397))

(declare-fun m!939399 () Bool)

(assert (=> b!1018338 m!939399))

(push 1)

(assert (not b!1018337))

(assert (not start!88650))

(assert tp_is_empty!23717)

(assert (not b!1018338))

(assert (not b!1018339))

(check-sat)

