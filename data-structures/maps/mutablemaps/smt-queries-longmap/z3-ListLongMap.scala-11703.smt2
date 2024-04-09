; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136884 () Bool)

(assert start!136884)

(declare-fun res!1078781 () Bool)

(declare-fun e!880634 () Bool)

(assert (=> start!136884 (=> (not res!1078781) (not e!880634))))

(declare-datatypes ((B!2560 0))(
  ( (B!2561 (val!19642 Int)) )
))
(declare-datatypes ((tuple2!25550 0))(
  ( (tuple2!25551 (_1!12785 (_ BitVec 64)) (_2!12785 B!2560)) )
))
(declare-datatypes ((List!36923 0))(
  ( (Nil!36920) (Cons!36919 (h!38463 tuple2!25550) (t!51844 List!36923)) )
))
(declare-datatypes ((ListLongMap!22901 0))(
  ( (ListLongMap!22902 (toList!11466 List!36923)) )
))
(declare-fun lm!251 () ListLongMap!22901)

(declare-fun a0!51 () (_ BitVec 64))

(declare-fun contains!10451 (ListLongMap!22901 (_ BitVec 64)) Bool)

(assert (=> start!136884 (= res!1078781 (not (contains!10451 lm!251 a0!51)))))

(assert (=> start!136884 e!880634))

(declare-fun e!880635 () Bool)

(declare-fun inv!58913 (ListLongMap!22901) Bool)

(assert (=> start!136884 (and (inv!58913 lm!251) e!880635)))

(assert (=> start!136884 true))

(declare-fun b!1578709 () Bool)

(assert (=> b!1578709 (= e!880634 false)))

(declare-fun b!1578710 () Bool)

(declare-fun tp!114256 () Bool)

(assert (=> b!1578710 (= e!880635 tp!114256)))

(assert (= (and start!136884 res!1078781) b!1578709))

(assert (= start!136884 b!1578710))

(declare-fun m!1450791 () Bool)

(assert (=> start!136884 m!1450791))

(declare-fun m!1450793 () Bool)

(assert (=> start!136884 m!1450793))

(check-sat (not start!136884) (not b!1578710))
(check-sat)
