; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137568 () Bool)

(assert start!137568)

(declare-fun res!1080733 () Bool)

(declare-fun e!882684 () Bool)

(assert (=> start!137568 (=> (not res!1080733) (not e!882684))))

(declare-datatypes ((B!2716 0))(
  ( (B!2717 (val!19720 Int)) )
))
(declare-datatypes ((tuple2!25772 0))(
  ( (tuple2!25773 (_1!12896 (_ BitVec 64)) (_2!12896 B!2716)) )
))
(declare-datatypes ((List!37001 0))(
  ( (Nil!36998) (Cons!36997 (h!38541 tuple2!25772) (t!51922 List!37001)) )
))
(declare-fun l!1390 () List!37001)

(declare-fun isStrictlySorted!1096 (List!37001) Bool)

(assert (=> start!137568 (= res!1080733 (isStrictlySorted!1096 l!1390))))

(assert (=> start!137568 e!882684))

(declare-fun e!882683 () Bool)

(assert (=> start!137568 e!882683))

(assert (=> start!137568 true))

(declare-fun tp_is_empty!39261 () Bool)

(assert (=> start!137568 tp_is_empty!39261))

(declare-fun b!1581771 () Bool)

(declare-fun res!1080734 () Bool)

(assert (=> b!1581771 (=> (not res!1080734) (not e!882684))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!942 (List!37001 (_ BitVec 64)) Bool)

(assert (=> b!1581771 (= res!1080734 (containsKey!942 l!1390 key!405))))

(declare-fun b!1581772 () Bool)

(assert (=> b!1581772 (= e!882684 false)))

(declare-fun lt!676954 () Bool)

(declare-fun value!194 () B!2716)

(declare-fun contains!10529 (List!37001 tuple2!25772) Bool)

(assert (=> b!1581772 (= lt!676954 (contains!10529 l!1390 (tuple2!25773 key!405 value!194)))))

(declare-fun b!1581773 () Bool)

(declare-fun tp!114628 () Bool)

(assert (=> b!1581773 (= e!882683 (and tp_is_empty!39261 tp!114628))))

(assert (= (and start!137568 res!1080733) b!1581771))

(assert (= (and b!1581771 res!1080734) b!1581772))

(get-info :version)

(assert (= (and start!137568 ((_ is Cons!36997) l!1390)) b!1581773))

(declare-fun m!1452575 () Bool)

(assert (=> start!137568 m!1452575))

(declare-fun m!1452577 () Bool)

(assert (=> b!1581771 m!1452577))

(declare-fun m!1452579 () Bool)

(assert (=> b!1581772 m!1452579))

(check-sat (not start!137568) tp_is_empty!39261 (not b!1581772) (not b!1581773) (not b!1581771))
(check-sat)
