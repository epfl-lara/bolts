; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229532 () Bool)

(assert start!229532)

(declare-fun b!2325749 () Bool)

(declare-fun e!1490206 () Bool)

(declare-fun tp_is_empty!10851 () Bool)

(declare-fun tp!737108 () Bool)

(assert (=> b!2325749 (= e!1490206 (and tp_is_empty!10851 tp!737108))))

(declare-fun res!993374 () Bool)

(declare-fun e!1490207 () Bool)

(assert (=> start!229532 (=> (not res!993374) (not e!1490207))))

(declare-fun i!741 () Int)

(assert (=> start!229532 (= res!993374 (<= 0 i!741))))

(assert (=> start!229532 e!1490207))

(assert (=> start!229532 true))

(assert (=> start!229532 e!1490206))

(declare-fun b!2325746 () Bool)

(declare-fun res!993373 () Bool)

(assert (=> b!2325746 (=> (not res!993373) (not e!1490207))))

(declare-datatypes ((T!44004 0))(
  ( (T!44005 (val!7993 Int)) )
))
(declare-datatypes ((List!27779 0))(
  ( (Nil!27681) (Cons!27681 (h!33082 T!44004) (t!207481 List!27779)) )
))
(declare-fun l!2797 () List!27779)

(declare-fun size!21957 (List!27779) Int)

(assert (=> b!2325746 (= res!993373 (<= i!741 (size!21957 l!2797)))))

(declare-fun b!2325747 () Bool)

(declare-fun res!993375 () Bool)

(assert (=> b!2325747 (=> (not res!993375) (not e!1490207))))

(assert (=> b!2325747 (= res!993375 (and (not (is-Nil!27681 l!2797)) (not (= i!741 0)) (> i!741 0) (<= 0 (- i!741 1))))))

(declare-fun b!2325748 () Bool)

(assert (=> b!2325748 (= e!1490207 false)))

(declare-fun lt!861488 () Int)

(assert (=> b!2325748 (= lt!861488 (size!21957 (t!207481 l!2797)))))

(assert (= (and start!229532 res!993374) b!2325746))

(assert (= (and b!2325746 res!993373) b!2325747))

(assert (= (and b!2325747 res!993375) b!2325748))

(assert (= (and start!229532 (is-Cons!27681 l!2797)) b!2325749))

(declare-fun m!2756971 () Bool)

(assert (=> b!2325746 m!2756971))

(declare-fun m!2756973 () Bool)

(assert (=> b!2325748 m!2756973))

(push 1)

(assert (not b!2325746))

(assert (not b!2325748))

(assert (not b!2325749))

(assert tp_is_empty!10851)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

