; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136882 () Bool)

(assert start!136882)

(declare-fun res!1078778 () Bool)

(declare-fun e!880628 () Bool)

(assert (=> start!136882 (=> (not res!1078778) (not e!880628))))

(declare-datatypes ((B!2558 0))(
  ( (B!2559 (val!19641 Int)) )
))
(declare-datatypes ((tuple2!25548 0))(
  ( (tuple2!25549 (_1!12784 (_ BitVec 64)) (_2!12784 B!2558)) )
))
(declare-datatypes ((List!36922 0))(
  ( (Nil!36919) (Cons!36918 (h!38462 tuple2!25548) (t!51843 List!36922)) )
))
(declare-datatypes ((ListLongMap!22899 0))(
  ( (ListLongMap!22900 (toList!11465 List!36922)) )
))
(declare-fun lm!251 () ListLongMap!22899)

(declare-fun a0!51 () (_ BitVec 64))

(declare-fun contains!10450 (ListLongMap!22899 (_ BitVec 64)) Bool)

(assert (=> start!136882 (= res!1078778 (not (contains!10450 lm!251 a0!51)))))

(assert (=> start!136882 e!880628))

(declare-fun e!880629 () Bool)

(declare-fun inv!58912 (ListLongMap!22899) Bool)

(assert (=> start!136882 (and (inv!58912 lm!251) e!880629)))

(assert (=> start!136882 true))

(declare-fun b!1578703 () Bool)

(assert (=> b!1578703 (= e!880628 false)))

(declare-fun b!1578704 () Bool)

(declare-fun tp!114253 () Bool)

(assert (=> b!1578704 (= e!880629 tp!114253)))

(assert (= (and start!136882 res!1078778) b!1578703))

(assert (= start!136882 b!1578704))

(declare-fun m!1450787 () Bool)

(assert (=> start!136882 m!1450787))

(declare-fun m!1450789 () Bool)

(assert (=> start!136882 m!1450789))

(push 1)

(assert (not start!136882))

(assert (not b!1578704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

