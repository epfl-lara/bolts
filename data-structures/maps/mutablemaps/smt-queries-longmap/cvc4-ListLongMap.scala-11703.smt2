; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136886 () Bool)

(assert start!136886)

(declare-fun res!1078784 () Bool)

(declare-fun e!880640 () Bool)

(assert (=> start!136886 (=> (not res!1078784) (not e!880640))))

(declare-datatypes ((B!2562 0))(
  ( (B!2563 (val!19643 Int)) )
))
(declare-datatypes ((tuple2!25552 0))(
  ( (tuple2!25553 (_1!12786 (_ BitVec 64)) (_2!12786 B!2562)) )
))
(declare-datatypes ((List!36924 0))(
  ( (Nil!36921) (Cons!36920 (h!38464 tuple2!25552) (t!51845 List!36924)) )
))
(declare-datatypes ((ListLongMap!22903 0))(
  ( (ListLongMap!22904 (toList!11467 List!36924)) )
))
(declare-fun lm!251 () ListLongMap!22903)

(declare-fun a0!51 () (_ BitVec 64))

(declare-fun contains!10452 (ListLongMap!22903 (_ BitVec 64)) Bool)

(assert (=> start!136886 (= res!1078784 (not (contains!10452 lm!251 a0!51)))))

(assert (=> start!136886 e!880640))

(declare-fun e!880641 () Bool)

(declare-fun inv!58914 (ListLongMap!22903) Bool)

(assert (=> start!136886 (and (inv!58914 lm!251) e!880641)))

(assert (=> start!136886 true))

(declare-fun b!1578715 () Bool)

(assert (=> b!1578715 (= e!880640 false)))

(declare-fun b!1578716 () Bool)

(declare-fun tp!114259 () Bool)

(assert (=> b!1578716 (= e!880641 tp!114259)))

(assert (= (and start!136886 res!1078784) b!1578715))

(assert (= start!136886 b!1578716))

(declare-fun m!1450795 () Bool)

(assert (=> start!136886 m!1450795))

(declare-fun m!1450797 () Bool)

(assert (=> start!136886 m!1450797))

(push 1)

(assert (not start!136886))

(assert (not b!1578716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

