; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88646 () Bool)

(assert start!88646)

(declare-fun res!682935 () Bool)

(declare-fun e!573010 () Bool)

(assert (=> start!88646 (=> (not res!682935) (not e!573010))))

(declare-datatypes ((B!1646 0))(
  ( (B!1647 (val!11907 Int)) )
))
(declare-datatypes ((tuple2!15450 0))(
  ( (tuple2!15451 (_1!7735 (_ BitVec 64)) (_2!7735 B!1646)) )
))
(declare-datatypes ((List!21709 0))(
  ( (Nil!21706) (Cons!21705 (h!22903 tuple2!15450) (t!30718 List!21709)) )
))
(declare-fun l!996 () List!21709)

(declare-fun isStrictlySorted!656 (List!21709) Bool)

(assert (=> start!88646 (= res!682935 (isStrictlySorted!656 l!996))))

(assert (=> start!88646 e!573010))

(declare-fun e!573009 () Bool)

(assert (=> start!88646 e!573009))

(assert (=> start!88646 true))

(declare-fun tp_is_empty!23713 () Bool)

(assert (=> start!88646 tp_is_empty!23713))

(declare-fun b!1018319 () Bool)

(declare-fun res!682934 () Bool)

(assert (=> b!1018319 (=> (not res!682934) (not e!573010))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!521 (List!21709 (_ BitVec 64)) Bool)

(assert (=> b!1018319 (= res!682934 (containsKey!521 l!996 key!261))))

(declare-fun b!1018320 () Bool)

(assert (=> b!1018320 (= e!573010 false)))

(declare-fun value!172 () B!1646)

(declare-fun lt!449517 () List!21709)

(declare-fun insertStrictlySorted!341 (List!21709 (_ BitVec 64) B!1646) List!21709)

(assert (=> b!1018320 (= lt!449517 (insertStrictlySorted!341 l!996 key!261 value!172))))

(declare-fun b!1018321 () Bool)

(declare-fun tp!71039 () Bool)

(assert (=> b!1018321 (= e!573009 (and tp_is_empty!23713 tp!71039))))

(assert (= (and start!88646 res!682935) b!1018319))

(assert (= (and b!1018319 res!682934) b!1018320))

(assert (= (and start!88646 (is-Cons!21705 l!996)) b!1018321))

(declare-fun m!939383 () Bool)

(assert (=> start!88646 m!939383))

(declare-fun m!939385 () Bool)

(assert (=> b!1018319 m!939385))

(declare-fun m!939387 () Bool)

(assert (=> b!1018320 m!939387))

(push 1)

(assert (not b!1018319))

(assert (not start!88646))

(assert (not b!1018321))

(assert tp_is_empty!23713)

(assert (not b!1018320))

(check-sat)

(pop 1)

