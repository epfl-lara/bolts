; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!396004 () Bool)

(assert start!396004)

(declare-fun res!1702959 () Bool)

(declare-fun e!2580493 () Bool)

(assert (=> start!396004 (=> (not res!1702959) (not e!2580493))))

(declare-datatypes ((B!2623 0))(
  ( (B!2624 (val!14603 Int)) )
))
(declare-datatypes ((List!45480 0))(
  ( (Nil!45356) (Cons!45356 (h!50776 B!2623) (t!343511 List!45480)) )
))
(declare-fun l!3062 () List!45480)

(declare-fun e1!32 () B!2623)

(declare-fun contains!9214 (List!45480 B!2623) Bool)

(assert (=> start!396004 (= res!1702959 (contains!9214 l!3062 e1!32))))

(assert (=> start!396004 e!2580493))

(declare-fun e!2580494 () Bool)

(assert (=> start!396004 e!2580494))

(declare-fun tp_is_empty!21671 () Bool)

(assert (=> start!396004 tp_is_empty!21671))

(declare-fun b!4157883 () Bool)

(assert (=> b!4157883 (= e!2580493 false)))

(declare-fun lt!1481887 () Bool)

(declare-fun e2!32 () B!2623)

(assert (=> b!4157883 (= lt!1481887 (contains!9214 l!3062 e2!32))))

(declare-fun b!4157884 () Bool)

(declare-fun tp!1268849 () Bool)

(assert (=> b!4157884 (= e!2580494 (and tp_is_empty!21671 tp!1268849))))

(assert (= (and start!396004 res!1702959) b!4157883))

(assert (= (and start!396004 (is-Cons!45356 l!3062)) b!4157884))

(declare-fun m!4751757 () Bool)

(assert (=> start!396004 m!4751757))

(declare-fun m!4751759 () Bool)

(assert (=> b!4157883 m!4751759))

(push 1)

(assert (not b!4157883))

(assert (not start!396004))

(assert (not b!4157884))

(assert tp_is_empty!21671)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

