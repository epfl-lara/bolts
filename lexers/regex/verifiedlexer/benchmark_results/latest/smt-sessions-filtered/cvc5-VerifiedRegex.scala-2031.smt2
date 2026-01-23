; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!103980 () Bool)

(assert start!103980)

(declare-fun res!532160 () Bool)

(declare-fun e!755202 () Bool)

(assert (=> start!103980 (=> (not res!532160) (not e!755202))))

(declare-fun i!757 () Int)

(declare-fun j!89 () Int)

(assert (=> start!103980 (= res!532160 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!103980 e!755202))

(assert (=> start!103980 true))

(declare-fun e!755203 () Bool)

(assert (=> start!103980 e!755203))

(declare-fun b!1176830 () Bool)

(assert (=> b!1176830 (= e!755202 false)))

(declare-fun lt!405977 () Int)

(declare-datatypes ((B!1235 0))(
  ( (B!1236 (val!3727 Int)) )
))
(declare-datatypes ((List!11674 0))(
  ( (Nil!11650) (Cons!11650 (h!17051 B!1235) (t!111166 List!11674)) )
))
(declare-fun l!2952 () List!11674)

(declare-fun size!9214 (List!11674) Int)

(assert (=> b!1176830 (= lt!405977 (size!9214 l!2952))))

(declare-fun b!1176831 () Bool)

(declare-fun tp_is_empty!5757 () Bool)

(declare-fun tp!335123 () Bool)

(assert (=> b!1176831 (= e!755203 (and tp_is_empty!5757 tp!335123))))

(assert (= (and start!103980 res!532160) b!1176830))

(assert (= (and start!103980 (is-Cons!11650 l!2952)) b!1176831))

(declare-fun m!1354275 () Bool)

(assert (=> b!1176830 m!1354275))

(push 1)

(assert (not b!1176830))

(assert (not b!1176831))

(assert tp_is_empty!5757)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

