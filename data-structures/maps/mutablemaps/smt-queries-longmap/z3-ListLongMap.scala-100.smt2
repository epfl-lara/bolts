; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1646 () Bool)

(assert start!1646)

(declare-fun res!9742 () Bool)

(declare-fun e!7015 () Bool)

(assert (=> start!1646 (=> (not res!9742) (not e!7015))))

(declare-datatypes ((B!406 0))(
  ( (B!407 (val!298 Int)) )
))
(declare-datatypes ((tuple2!378 0))(
  ( (tuple2!379 (_1!189 (_ BitVec 64)) (_2!189 B!406)) )
))
(declare-datatypes ((List!345 0))(
  ( (Nil!342) (Cons!341 (h!907 tuple2!378) (t!2732 List!345)) )
))
(declare-datatypes ((ListLongMap!359 0))(
  ( (ListLongMap!360 (toList!195 List!345)) )
))
(declare-fun lm!265 () ListLongMap!359)

(declare-fun a!527 () (_ BitVec 64))

(declare-fun contains!162 (ListLongMap!359 (_ BitVec 64)) Bool)

(assert (=> start!1646 (= res!9742 (contains!162 lm!265 a!527))))

(assert (=> start!1646 e!7015))

(declare-fun e!7016 () Bool)

(declare-fun inv!583 (ListLongMap!359) Bool)

(assert (=> start!1646 (and (inv!583 lm!265) e!7016)))

(assert (=> start!1646 true))

(declare-fun tp_is_empty!579 () Bool)

(assert (=> start!1646 tp_is_empty!579))

(declare-fun b!11794 () Bool)

(assert (=> b!11794 (= e!7015 false)))

(declare-fun b!11795 () Bool)

(declare-fun tp!1973 () Bool)

(assert (=> b!11795 (= e!7016 tp!1973)))

(assert (= (and start!1646 res!9742) b!11794))

(assert (= start!1646 b!11795))

(declare-fun m!8229 () Bool)

(assert (=> start!1646 m!8229))

(declare-fun m!8231 () Bool)

(assert (=> start!1646 m!8231))

(check-sat (not start!1646) (not b!11795) tp_is_empty!579)
(check-sat)
