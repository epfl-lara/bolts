; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137152 () Bool)

(assert start!137152)

(declare-fun b!1579919 () Bool)

(declare-fun e!881415 () Bool)

(declare-fun tp_is_empty!39169 () Bool)

(declare-fun tp!114415 () Bool)

(assert (=> b!1579919 (= e!881415 (and tp_is_empty!39169 tp!114415))))

(declare-fun b!1579917 () Bool)

(declare-fun res!1079369 () Bool)

(declare-fun e!881414 () Bool)

(assert (=> b!1579917 (=> (not res!1079369) (not e!881414))))

(declare-fun key!405 () (_ BitVec 64))

(declare-datatypes ((B!2624 0))(
  ( (B!2625 (val!19674 Int)) )
))
(declare-datatypes ((tuple2!25620 0))(
  ( (tuple2!25621 (_1!12820 (_ BitVec 64)) (_2!12820 B!2624)) )
))
(declare-datatypes ((List!36955 0))(
  ( (Nil!36952) (Cons!36951 (h!38495 tuple2!25620) (t!51876 List!36955)) )
))
(declare-fun l!1390 () List!36955)

(declare-fun value!194 () B!2624)

(declare-fun contains!10483 (List!36955 tuple2!25620) Bool)

(assert (=> b!1579917 (= res!1079369 (contains!10483 l!1390 (tuple2!25621 key!405 value!194)))))

(declare-fun res!1079368 () Bool)

(assert (=> start!137152 (=> (not res!1079368) (not e!881414))))

(declare-fun isStrictlySorted!1050 (List!36955) Bool)

(assert (=> start!137152 (= res!1079368 (isStrictlySorted!1050 l!1390))))

(assert (=> start!137152 e!881414))

(assert (=> start!137152 e!881415))

(assert (=> start!137152 true))

(assert (=> start!137152 tp_is_empty!39169))

(declare-fun b!1579916 () Bool)

(declare-fun res!1079367 () Bool)

(assert (=> b!1579916 (=> (not res!1079367) (not e!881414))))

(declare-fun containsKey!896 (List!36955 (_ BitVec 64)) Bool)

(assert (=> b!1579916 (= res!1079367 (containsKey!896 l!1390 key!405))))

(declare-fun b!1579918 () Bool)

(assert (=> b!1579918 (= e!881414 false)))

(assert (= (and start!137152 res!1079368) b!1579916))

(assert (= (and b!1579916 res!1079367) b!1579917))

(assert (= (and b!1579917 res!1079369) b!1579918))

(assert (= (and start!137152 (is-Cons!36951 l!1390)) b!1579919))

(declare-fun m!1451513 () Bool)

(assert (=> b!1579917 m!1451513))

(declare-fun m!1451515 () Bool)

(assert (=> start!137152 m!1451515))

(declare-fun m!1451517 () Bool)

(assert (=> b!1579916 m!1451517))

(push 1)

(assert tp_is_empty!39169)

(assert (not b!1579917))

(assert (not b!1579916))

(assert (not b!1579919))

(assert (not start!137152))

(check-sat)

