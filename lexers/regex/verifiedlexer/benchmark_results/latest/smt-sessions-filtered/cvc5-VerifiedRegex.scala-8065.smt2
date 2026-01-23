; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!416868 () Bool)

(assert start!416868)

(declare-fun res!1773630 () Bool)

(declare-fun e!2693253 () Bool)

(assert (=> start!416868 (=> (not res!1773630) (not e!2693253))))

(declare-datatypes ((K!9728 0))(
  ( (K!9729 (val!16053 Int)) )
))
(declare-datatypes ((V!9974 0))(
  ( (V!9975 (val!16054 Int)) )
))
(declare-datatypes ((tuple2!47518 0))(
  ( (tuple2!47519 (_1!27053 K!9728) (_2!27053 V!9974)) )
))
(declare-datatypes ((List!48587 0))(
  ( (Nil!48463) (Cons!48463 (h!53932 tuple2!47518) (t!355499 List!48587)) )
))
(declare-fun l!13867 () List!48587)

(declare-fun noDuplicateKeys!276 (List!48587) Bool)

(assert (=> start!416868 (= res!1773630 (noDuplicateKeys!276 l!13867))))

(assert (=> start!416868 e!2693253))

(declare-fun e!2693252 () Bool)

(assert (=> start!416868 e!2693252))

(declare-fun tp_is_empty!24293 () Bool)

(assert (=> start!416868 tp_is_empty!24293))

(declare-fun b!4328263 () Bool)

(declare-fun res!1773631 () Bool)

(assert (=> b!4328263 (=> (not res!1773631) (not e!2693253))))

(declare-fun key!5269 () K!9728)

(assert (=> b!4328263 (= res!1773631 (and (or (not (is-Cons!48463 l!13867)) (not (= (_1!27053 (h!53932 l!13867)) key!5269))) (is-Cons!48463 l!13867)))))

(declare-fun b!4328264 () Bool)

(assert (=> b!4328264 (= e!2693253 false)))

(declare-fun lt!1545142 () Bool)

(assert (=> b!4328264 (= lt!1545142 (noDuplicateKeys!276 (t!355499 l!13867)))))

(declare-fun tp_is_empty!24295 () Bool)

(declare-fun b!4328265 () Bool)

(declare-fun tp!1327971 () Bool)

(assert (=> b!4328265 (= e!2693252 (and tp_is_empty!24293 tp_is_empty!24295 tp!1327971))))

(assert (= (and start!416868 res!1773630) b!4328263))

(assert (= (and b!4328263 res!1773631) b!4328264))

(assert (= (and start!416868 (is-Cons!48463 l!13867)) b!4328265))

(declare-fun m!4923109 () Bool)

(assert (=> start!416868 m!4923109))

(declare-fun m!4923111 () Bool)

(assert (=> b!4328264 m!4923111))

(push 1)

(assert tp_is_empty!24295)

(assert (not b!4328264))

(assert tp_is_empty!24293)

(assert (not start!416868))

(assert (not b!4328265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

