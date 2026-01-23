; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!408624 () Bool)

(assert start!408624)

(declare-fun res!1752536 () Bool)

(declare-fun e!2647870 () Bool)

(assert (=> start!408624 (=> (not res!1752536) (not e!2647870))))

(declare-datatypes ((B!2847 0))(
  ( (B!2848 (val!15253 Int)) )
))
(declare-datatypes ((List!47382 0))(
  ( (Nil!47258) (Cons!47258 (h!52678 B!2847) (t!353449 List!47382)) )
))
(declare-fun l1!1529 () List!47382)

(declare-fun b!25415 () B!2847)

(declare-fun contains!9779 (List!47382 B!2847) Bool)

(assert (=> start!408624 (= res!1752536 (not (contains!9779 l1!1529 b!25415)))))

(assert (=> start!408624 e!2647870))

(declare-fun e!2647871 () Bool)

(assert (=> start!408624 e!2647871))

(declare-fun tp_is_empty!22915 () Bool)

(assert (=> start!408624 tp_is_empty!22915))

(declare-fun e!2647869 () Bool)

(assert (=> start!408624 e!2647869))

(declare-fun b!4264419 () Bool)

(assert (=> b!4264419 (= e!2647870 false)))

(declare-fun lt!1511401 () Bool)

(declare-fun l2!1498 () List!47382)

(assert (=> b!4264419 (= lt!1511401 (contains!9779 l2!1498 b!25415))))

(declare-fun b!4264420 () Bool)

(declare-fun tp!1307355 () Bool)

(assert (=> b!4264420 (= e!2647871 (and tp_is_empty!22915 tp!1307355))))

(declare-fun b!4264421 () Bool)

(declare-fun tp!1307356 () Bool)

(assert (=> b!4264421 (= e!2647869 (and tp_is_empty!22915 tp!1307356))))

(assert (= (and start!408624 res!1752536) b!4264419))

(assert (= (and start!408624 (is-Cons!47258 l1!1529)) b!4264420))

(assert (= (and start!408624 (is-Cons!47258 l2!1498)) b!4264421))

(declare-fun m!4854743 () Bool)

(assert (=> start!408624 m!4854743))

(declare-fun m!4854745 () Bool)

(assert (=> b!4264419 m!4854745))

(push 1)

(assert (not b!4264419))

(assert (not b!4264421))

(assert tp_is_empty!22915)

(assert (not start!408624))

(assert (not b!4264420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

