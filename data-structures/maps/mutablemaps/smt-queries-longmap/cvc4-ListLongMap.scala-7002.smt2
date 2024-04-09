; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88946 () Bool)

(assert start!88946)

(declare-fun res!683910 () Bool)

(declare-fun e!574273 () Bool)

(assert (=> start!88946 (=> (not res!683910) (not e!574273))))

(declare-datatypes ((B!1722 0))(
  ( (B!1723 (val!11945 Int)) )
))
(declare-datatypes ((tuple2!15526 0))(
  ( (tuple2!15527 (_1!7773 (_ BitVec 64)) (_2!7773 B!1722)) )
))
(declare-datatypes ((List!21747 0))(
  ( (Nil!21744) (Cons!21743 (h!22941 tuple2!15526) (t!30764 List!21747)) )
))
(declare-fun l!1367 () List!21747)

(declare-fun isStrictlySorted!694 (List!21747) Bool)

(assert (=> start!88946 (= res!683910 (isStrictlySorted!694 l!1367))))

(assert (=> start!88946 e!574273))

(declare-fun e!574272 () Bool)

(assert (=> start!88946 e!574272))

(assert (=> start!88946 true))

(declare-fun tp_is_empty!23789 () Bool)

(assert (=> start!88946 tp_is_empty!23789))

(declare-fun b!1020226 () Bool)

(assert (=> b!1020226 (= e!574273 false)))

(declare-fun value!188 () B!1722)

(declare-fun key!393 () (_ BitVec 64))

(declare-fun lt!449809 () Bool)

(declare-fun contains!5938 (List!21747 tuple2!15526) Bool)

(assert (=> b!1020226 (= lt!449809 (contains!5938 l!1367 (tuple2!15527 key!393 value!188)))))

(declare-fun b!1020227 () Bool)

(declare-fun tp!71234 () Bool)

(assert (=> b!1020227 (= e!574272 (and tp_is_empty!23789 tp!71234))))

(assert (= (and start!88946 res!683910) b!1020226))

(assert (= (and start!88946 (is-Cons!21743 l!1367)) b!1020227))

(declare-fun m!940383 () Bool)

(assert (=> start!88946 m!940383))

(declare-fun m!940385 () Bool)

(assert (=> b!1020226 m!940385))

(push 1)

(assert (not start!88946))

(assert (not b!1020226))

(assert (not b!1020227))

(assert tp_is_empty!23789)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

