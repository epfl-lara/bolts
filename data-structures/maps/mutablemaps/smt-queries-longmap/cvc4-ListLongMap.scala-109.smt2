; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1798 () Bool)

(assert start!1798)

(declare-fun key!303 () (_ BitVec 64))

(declare-datatypes ((B!462 0))(
  ( (B!463 (val!326 Int)) )
))
(declare-fun v!194 () B!462)

(declare-datatypes ((tuple2!434 0))(
  ( (tuple2!435 (_1!217 (_ BitVec 64)) (_2!217 B!462)) )
))
(declare-datatypes ((List!373 0))(
  ( (Nil!370) (Cons!369 (h!935 tuple2!434) (t!2760 List!373)) )
))
(declare-fun l!1094 () List!373)

(declare-fun b!12598 () Bool)

(declare-fun e!7535 () Bool)

(declare-fun contains!178 (List!373 tuple2!434) Bool)

(assert (=> b!12598 (= e!7535 (not (contains!178 l!1094 (tuple2!435 key!303 v!194))))))

(declare-fun res!10110 () Bool)

(assert (=> start!1798 (=> (not res!10110) (not e!7535))))

(declare-fun isStrictlySorted!70 (List!373) Bool)

(assert (=> start!1798 (= res!10110 (isStrictlySorted!70 l!1094))))

(assert (=> start!1798 e!7535))

(declare-fun e!7534 () Bool)

(assert (=> start!1798 e!7534))

(assert (=> start!1798 true))

(declare-fun tp_is_empty!635 () Bool)

(assert (=> start!1798 tp_is_empty!635))

(declare-fun b!12599 () Bool)

(declare-fun tp!2102 () Bool)

(assert (=> b!12599 (= e!7534 (and tp_is_empty!635 tp!2102))))

(declare-fun b!12597 () Bool)

(declare-fun res!10109 () Bool)

(assert (=> b!12597 (=> (not res!10109) (not e!7535))))

(assert (=> b!12597 (= res!10109 (or (not (is-Cons!369 l!1094)) (= (_1!217 (h!935 l!1094)) key!303)))))

(declare-fun b!12596 () Bool)

(declare-fun res!10111 () Bool)

(assert (=> b!12596 (=> (not res!10111) (not e!7535))))

(declare-datatypes ((Option!58 0))(
  ( (Some!57 (v!1378 B!462)) (None!56) )
))
(declare-fun getValueByKey!52 (List!373 (_ BitVec 64)) Option!58)

(assert (=> b!12596 (= res!10111 (= (getValueByKey!52 l!1094 key!303) (Some!57 v!194)))))

(assert (= (and start!1798 res!10110) b!12596))

(assert (= (and b!12596 res!10111) b!12597))

(assert (= (and b!12597 res!10109) b!12598))

(assert (= (and start!1798 (is-Cons!369 l!1094)) b!12599))

(declare-fun m!8561 () Bool)

(assert (=> b!12598 m!8561))

(declare-fun m!8563 () Bool)

(assert (=> start!1798 m!8563))

(declare-fun m!8565 () Bool)

(assert (=> b!12596 m!8565))

(push 1)

(assert (not b!12599))

(assert (not b!12596))

(assert (not b!12598))

(assert tp_is_empty!635)

(assert (not start!1798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1805 () Bool)

(declare-fun res!10140 () Bool)

(declare-fun e!7564 () Bool)

(assert (=> d!1805 (=> res!10140 e!7564)))

(assert (=> d!1805 (= res!10140 (or (is-Nil!370 l!1094) (is-Nil!370 (t!2760 l!1094))))))

(assert (=> d!1805 (= (isStrictlySorted!70 l!1094) e!7564)))

(declare-fun b!12628 () Bool)

(declare-fun e!7565 () Bool)

(assert (=> b!12628 (= e!7564 e!7565)))

(declare-fun res!10141 () Bool)

(assert (=> b!12628 (=> (not res!10141) (not e!7565))))

