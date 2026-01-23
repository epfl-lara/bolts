; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!103956 () Bool)

(assert start!103956)

(declare-fun res!532054 () Bool)

(declare-fun e!755131 () Bool)

(assert (=> start!103956 (=> (not res!532054) (not e!755131))))

(declare-fun i!757 () Int)

(declare-fun j!89 () Int)

(assert (=> start!103956 (= res!532054 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!103956 e!755131))

(assert (=> start!103956 true))

(declare-fun e!755130 () Bool)

(assert (=> start!103956 e!755130))

(declare-fun b!1176688 () Bool)

(declare-fun res!532055 () Bool)

(assert (=> b!1176688 (=> (not res!532055) (not e!755131))))

(declare-datatypes ((B!1211 0))(
  ( (B!1212 (val!3715 Int)) )
))
(declare-datatypes ((List!11662 0))(
  ( (Nil!11638) (Cons!11638 (h!17039 B!1211) (t!111154 List!11662)) )
))
(declare-fun l!2952 () List!11662)

(declare-fun size!9202 (List!11662) Int)

(assert (=> b!1176688 (= res!532055 (<= j!89 (size!9202 l!2952)))))

(declare-fun b!1176689 () Bool)

(assert (=> b!1176689 (= e!755131 (and (is-Nil!11638 l!2952) (or (> 0 i!757) (> i!757 j!89))))))

(declare-fun b!1176690 () Bool)

(declare-fun tp_is_empty!5733 () Bool)

(declare-fun tp!335087 () Bool)

(assert (=> b!1176690 (= e!755130 (and tp_is_empty!5733 tp!335087))))

(assert (= (and start!103956 res!532054) b!1176688))

(assert (= (and b!1176688 res!532055) b!1176689))

(assert (= (and start!103956 (is-Cons!11638 l!2952)) b!1176690))

(declare-fun m!1354211 () Bool)

(assert (=> b!1176688 m!1354211))

(push 1)

(assert (not b!1176688))

(assert (not b!1176690))

(assert tp_is_empty!5733)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

