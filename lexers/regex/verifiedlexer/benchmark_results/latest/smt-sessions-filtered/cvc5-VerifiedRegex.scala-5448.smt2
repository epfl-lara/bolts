; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276418 () Bool)

(assert start!276418)

(declare-fun res!1182297 () Bool)

(declare-fun e!1800416 () Bool)

(assert (=> start!276418 (=> (not res!1182297) (not e!1800416))))

(declare-fun i!849 () Int)

(assert (=> start!276418 (= res!1182297 (>= i!849 0))))

(assert (=> start!276418 e!1800416))

(assert (=> start!276418 true))

(declare-fun e!1800417 () Bool)

(assert (=> start!276418 e!1800417))

(declare-fun b!2841865 () Bool)

(assert (=> b!2841865 (= e!1800416 false)))

(declare-fun lt!1011706 () Int)

(declare-datatypes ((B!2543 0))(
  ( (B!2544 (val!10575 Int)) )
))
(declare-datatypes ((List!33787 0))(
  ( (Nil!33663) (Cons!33663 (h!39083 B!2543) (t!232632 List!33787)) )
))
(declare-fun l!2988 () List!33787)

(declare-fun size!26132 (List!33787) Int)

(assert (=> b!2841865 (= lt!1011706 (size!26132 l!2988))))

(declare-fun b!2841866 () Bool)

(declare-fun tp_is_empty!14673 () Bool)

(declare-fun tp!910347 () Bool)

(assert (=> b!2841866 (= e!1800417 (and tp_is_empty!14673 tp!910347))))

(assert (= (and start!276418 res!1182297) b!2841865))

(assert (= (and start!276418 (is-Cons!33663 l!2988)) b!2841866))

(declare-fun m!3269591 () Bool)

(assert (=> b!2841865 m!3269591))

(push 1)

(assert (not b!2841865))

(assert (not b!2841866))

(assert tp_is_empty!14673)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

