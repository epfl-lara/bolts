; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216184 () Bool)

(assert start!216184)

(declare-fun res!952749 () Bool)

(declare-fun e!1416716 () Bool)

(assert (=> start!216184 (=> (not res!952749) (not e!1416716))))

(declare-datatypes ((B!1815 0))(
  ( (B!1816 (val!7433 Int)) )
))
(declare-datatypes ((List!26061 0))(
  ( (Nil!25977) (Cons!25977 (h!31378 B!1815) (t!199377 List!26061)) )
))
(declare-fun l!2924 () List!26061)

(declare-fun isEmpty!14855 (List!26061) Bool)

(assert (=> start!216184 (= res!952749 (not (isEmpty!14855 l!2924)))))

(assert (=> start!216184 e!1416716))

(declare-fun e!1416715 () Bool)

(assert (=> start!216184 e!1416715))

(declare-fun b!2218443 () Bool)

(declare-fun res!952750 () Bool)

(assert (=> b!2218443 (=> (not res!952750) (not e!1416716))))

(assert (=> b!2218443 (= res!952750 (and (or (not (is-Cons!25977 l!2924)) (not (is-Nil!25977 (t!199377 l!2924)))) (is-Cons!25977 l!2924)))))

(declare-fun b!2218444 () Bool)

(assert (=> b!2218444 (= e!1416716 false)))

(declare-fun lt!827029 () List!26061)

(declare-fun removeLast!25 (List!26061) List!26061)

(assert (=> b!2218444 (= lt!827029 (removeLast!25 (t!199377 l!2924)))))

(declare-fun b!2218445 () Bool)

(declare-fun tp_is_empty!9863 () Bool)

(declare-fun tp!691119 () Bool)

(assert (=> b!2218445 (= e!1416715 (and tp_is_empty!9863 tp!691119))))

(assert (= (and start!216184 res!952749) b!2218443))

(assert (= (and b!2218443 res!952750) b!2218444))

(assert (= (and start!216184 (is-Cons!25977 l!2924)) b!2218445))

(declare-fun m!2659279 () Bool)

(assert (=> start!216184 m!2659279))

(declare-fun m!2659281 () Bool)

(assert (=> b!2218444 m!2659281))

(push 1)

(assert (not start!216184))

(assert (not b!2218444))

(assert (not b!2218445))

(assert tp_is_empty!9863)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

