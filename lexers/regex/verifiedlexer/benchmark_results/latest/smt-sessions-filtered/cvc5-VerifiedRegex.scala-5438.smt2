; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276322 () Bool)

(assert start!276322)

(declare-fun res!1182021 () Bool)

(declare-fun e!1800034 () Bool)

(assert (=> start!276322 (=> (not res!1182021) (not e!1800034))))

(declare-fun i!849 () Int)

(assert (=> start!276322 (= res!1182021 (>= i!849 0))))

(assert (=> start!276322 e!1800034))

(assert (=> start!276322 true))

(declare-fun e!1800035 () Bool)

(assert (=> start!276322 e!1800035))

(declare-fun b!2841208 () Bool)

(declare-fun tp_is_empty!14633 () Bool)

(declare-fun tp!910251 () Bool)

(assert (=> b!2841208 (= e!1800035 (and tp_is_empty!14633 tp!910251))))

(declare-fun b!2841205 () Bool)

(declare-fun res!1182023 () Bool)

(assert (=> b!2841205 (=> (not res!1182023) (not e!1800034))))

(declare-datatypes ((B!2503 0))(
  ( (B!2504 (val!10555 Int)) )
))
(declare-datatypes ((List!33767 0))(
  ( (Nil!33643) (Cons!33643 (h!39063 B!2503) (t!232612 List!33767)) )
))
(declare-fun l!2988 () List!33767)

(declare-fun size!26112 (List!33767) Int)

(assert (=> b!2841205 (= res!1182023 (<= i!849 (size!26112 l!2988)))))

(declare-fun b!2841206 () Bool)

(declare-fun res!1182022 () Bool)

(assert (=> b!2841206 (=> (not res!1182022) (not e!1800034))))

(assert (=> b!2841206 (= res!1182022 (and (not (is-Nil!33643 l!2988)) (> i!849 0) (>= (- i!849 1) 0)))))

(declare-fun b!2841207 () Bool)

(assert (=> b!2841207 (= e!1800034 false)))

(declare-fun lt!1011592 () Int)

(assert (=> b!2841207 (= lt!1011592 (size!26112 (t!232612 l!2988)))))

(assert (= (and start!276322 res!1182021) b!2841205))

(assert (= (and b!2841205 res!1182023) b!2841206))

(assert (= (and b!2841206 res!1182022) b!2841207))

(assert (= (and start!276322 (is-Cons!33643 l!2988)) b!2841208))

(declare-fun m!3269339 () Bool)

(assert (=> b!2841205 m!3269339))

(declare-fun m!3269341 () Bool)

(assert (=> b!2841207 m!3269341))

(push 1)

(assert (not b!2841207))

(assert (not b!2841205))

(assert (not b!2841208))

(assert tp_is_empty!14633)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

