; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88944 () Bool)

(assert start!88944)

(declare-fun res!683907 () Bool)

(declare-fun e!574267 () Bool)

(assert (=> start!88944 (=> (not res!683907) (not e!574267))))

(declare-datatypes ((B!1720 0))(
  ( (B!1721 (val!11944 Int)) )
))
(declare-datatypes ((tuple2!15524 0))(
  ( (tuple2!15525 (_1!7772 (_ BitVec 64)) (_2!7772 B!1720)) )
))
(declare-datatypes ((List!21746 0))(
  ( (Nil!21743) (Cons!21742 (h!22940 tuple2!15524) (t!30763 List!21746)) )
))
(declare-fun l!1367 () List!21746)

(declare-fun isStrictlySorted!693 (List!21746) Bool)

(assert (=> start!88944 (= res!683907 (isStrictlySorted!693 l!1367))))

(assert (=> start!88944 e!574267))

(declare-fun e!574266 () Bool)

(assert (=> start!88944 e!574266))

(assert (=> start!88944 true))

(declare-fun tp_is_empty!23787 () Bool)

(assert (=> start!88944 tp_is_empty!23787))

(declare-fun b!1020220 () Bool)

(assert (=> b!1020220 (= e!574267 false)))

(declare-fun value!188 () B!1720)

(declare-fun key!393 () (_ BitVec 64))

(declare-fun lt!449806 () Bool)

(declare-fun contains!5937 (List!21746 tuple2!15524) Bool)

(assert (=> b!1020220 (= lt!449806 (contains!5937 l!1367 (tuple2!15525 key!393 value!188)))))

(declare-fun b!1020221 () Bool)

(declare-fun tp!71231 () Bool)

(assert (=> b!1020221 (= e!574266 (and tp_is_empty!23787 tp!71231))))

(assert (= (and start!88944 res!683907) b!1020220))

(get-info :version)

(assert (= (and start!88944 ((_ is Cons!21742) l!1367)) b!1020221))

(declare-fun m!940379 () Bool)

(assert (=> start!88944 m!940379))

(declare-fun m!940381 () Bool)

(assert (=> b!1020220 m!940381))

(check-sat (not start!88944) (not b!1020220) (not b!1020221) tp_is_empty!23787)
(check-sat)
