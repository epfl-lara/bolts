; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!103964 () Bool)

(assert start!103964)

(declare-fun b!1176729 () Bool)

(declare-fun e!755155 () Bool)

(declare-fun tp_is_empty!5741 () Bool)

(declare-fun tp!335099 () Bool)

(assert (=> b!1176729 (= e!755155 (and tp_is_empty!5741 tp!335099))))

(declare-fun b!1176726 () Bool)

(declare-fun res!532081 () Bool)

(declare-fun e!755154 () Bool)

(assert (=> b!1176726 (=> (not res!532081) (not e!755154))))

(declare-fun j!89 () Int)

(declare-datatypes ((B!1219 0))(
  ( (B!1220 (val!3719 Int)) )
))
(declare-datatypes ((List!11666 0))(
  ( (Nil!11642) (Cons!11642 (h!17043 B!1219) (t!111158 List!11666)) )
))
(declare-fun l!2952 () List!11666)

(declare-fun size!9206 (List!11666) Int)

(assert (=> b!1176726 (= res!532081 (<= j!89 (size!9206 l!2952)))))

(declare-fun b!1176728 () Bool)

(assert (=> b!1176728 (= e!755154 false)))

(declare-fun lt!405953 () Int)

(assert (=> b!1176728 (= lt!405953 (size!9206 (t!111158 l!2952)))))

(declare-fun res!532082 () Bool)

(assert (=> start!103964 (=> (not res!532082) (not e!755154))))

(declare-fun i!757 () Int)

(assert (=> start!103964 (= res!532082 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!103964 e!755154))

(assert (=> start!103964 true))

(assert (=> start!103964 e!755155))

(declare-fun b!1176727 () Bool)

(declare-fun res!532080 () Bool)

(assert (=> b!1176727 (=> (not res!532080) (not e!755154))))

(assert (=> b!1176727 (= res!532080 (and (not (is-Nil!11642 l!2952)) (or (not (= i!757 0)) (not (= j!89 0))) (> i!757 0) (>= (- i!757 1) 0) (>= (- j!89 1) (- i!757 1))))))

(assert (= (and start!103964 res!532082) b!1176726))

(assert (= (and b!1176726 res!532081) b!1176727))

(assert (= (and b!1176727 res!532080) b!1176728))

(assert (= (and start!103964 (is-Cons!11642 l!2952)) b!1176729))

(declare-fun m!1354219 () Bool)

(assert (=> b!1176726 m!1354219))

(declare-fun m!1354221 () Bool)

(assert (=> b!1176728 m!1354221))

(push 1)

(assert (not b!1176726))

(assert (not b!1176728))

(assert (not b!1176729))

(assert tp_is_empty!5741)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

